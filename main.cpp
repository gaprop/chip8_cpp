#include <iostream>
#include <cstring>
#include <cstdlib>

static const short fontSet[80] = {
  0xf0, 0x90, 0x90, 0x90, 0xf0,
  0x20, 0x60, 0x20, 0x20, 0x70,
  0xf0, 0x10, 0xf0, 0x80, 0xf0,
  0xf0, 0x10, 0xf0, 0x10, 0xf0,
  0x90, 0x90, 0xf0, 0x10, 0x10,
  0xf0, 0x80, 0xf0, 0x10, 0xf0,
  0xf0, 0x80, 0xf0, 0x90, 0xf0,
  0xf0, 0x10, 0x20, 0x40, 0x40,
  0xf0, 0x90, 0xf0, 0x90, 0xf0,
  0xf0, 0x90, 0xf0, 0x10, 0xf0,
  0xf0, 0x90, 0xf0, 0x90, 0x90,
  0xe0, 0x90, 0xe0, 0x90, 0xe0,
  0xf0, 0x80, 0x80, 0x80, 0xf0,
  0xe0, 0x90, 0x90, 0x90, 0xe0,
  0xf0, 0x80, 0xf0, 0x80, 0xf0,
  0xf0, 0x80, 0xf0, 0x80, 0x80,
};

class Memory {
  public:
    virtual unsigned short read8(size_t index) = 0;
    virtual unsigned int read16(size_t index) = 0;

    virtual void write8(size_t index, unsigned short data) = 0;
    virtual void write16(size_t index, unsigned int data) = 0;
};

class Display {
  public:
    virtual bool setDisplay(size_t x, size_t y, short data) = 0;
    virtual void clearDisplay() = 0;
    virtual void render() = 0;
};

class Chip8Display : public Display {
  public:
    size_t width;
    size_t height;
    unsigned short* display;

  private:
    size_t getPos(size_t x, size_t y) {
      return (x % width) + ((y % height) * width);
    }

  public:

    Chip8Display(size_t w, size_t h) {
      width = w;
      height = h;
      display = new unsigned short[width * height];
    }

    void clearDisplay() override {
      delete[] display;
      display = new unsigned short[width * height];
    }

    bool setDisplay(size_t x, size_t y, short data) override {
      short pixel = display[getPos(x, y)];
      short newPixel = (pixel & 0x01) ^ data;

      display[getPos(x, y)] = newPixel;
      return newPixel == 1;
    }
};

class Chip8Memory : public Memory {
  private:
    size_t size;
    unsigned short* mem;

  public:
    Chip8Memory(size_t s) {
      size = s;
      mem = new unsigned short[size];
      memcpy(mem, &fontSet, 80);
    }

    ~Chip8Memory() {
      printf("Memory dead\n");
      delete[] mem;
    }

    unsigned short read8(size_t index) override {
      return mem[index];
    }

    unsigned int read16(size_t index) override {
      int hi = mem[index];
      int lo = mem[index + 1];
      return hi | lo;
    }

    void write8(size_t index, unsigned short data) override {
      mem[index] = data;
    }

    void write16(size_t index, unsigned int data) override {
      int hi = data & 0xff00;
      int lo = data & 0x00ff;

      mem[index] = hi;
      mem[index + 1] = lo;
    }
};

class CPU {
  private:
    unsigned short v[16];
    unsigned int I;
    unsigned int DT;
    unsigned int ST;
    size_t pc;
    size_t sp;
    unsigned int stack[16];

  public:
    CPU() {
      pc = 0x200;
    }

    void run_op(Memory* mem, Display* dis) {
      unsigned int op = mem->read16(pc);
      int op_f = op & 0xf000;
      size_t nnn = op & 0x0fff;
      size_t n = op & 0x000f;
      size_t x = op & 0x0f00;
      size_t y = op & 0x00f0;
      unsigned short kk = op & 0x00ff;

      pc += 2;

      switch(op_f) {
        case 0x0000: 
          if (op == 0x00e0) {
            dis->clearDisplay();
            break;
          }
          if (op == 0x00ee) {
            pc = stack[sp];
            sp--;
            break;
          }
          pc = nnn;
          break;
        case 0x1000:
          pc = nnn;
          break;
        case 0x2000:
          sp++;
          stack[sp] = pc;
          pc = nnn;
          break;
        case 0x3000:
          if (v[x] == kk) {
            pc += 2;
          }
          break;
        case 0x4000:
          if (v[x] != kk) {
            pc += 2;
          }
          break;
        case 0x5000:
          if (v[x] == v[y]) {
            pc += 2;
          }
          break;
        case 0x6000:
          v[x] = kk;
          break;
        case 0x7000:
          v[x] += kk;
          break;
        case 0x8000:
          if (n == 0x0) {
            v[x] = v[y];
          }
          if (n == 0x1) {
            v[x] |= v[y];
          }
          if (n == 0x2) {
            v[x] &= v[y];
          }
          if (n == 0x3) {
            v[x] ^= v[y];
          }
          if (n == 0x4) {
            int ret = v[x] + v[y];
            int carry = (ret & 0x100) >> 8;
            v[0xf] = carry;
            v[x] = ret;
          }
          if (n == 0x5) {
            if (v[x] > v[y]) {
              v[0xf] = 1;
            } else {
              v[0xf] = 0;
            }
            v[x] = v[x] - v[y];
          }
          if (n == 0x6) {
            unsigned short lo = v[x] & 0x1;
            v[0xf] = lo;
            v[x] >>= 1;
          }
          if (n == 0x7) {
            if (v[y] > v[x]) {
              v[0xf] = 1;
            } else {
              v[0xf] = 0;
            }
            v[x] = v[y] - v[x];
          }
          if (n == 0xe) {
            unsigned short hi = v[x] & 0x80;
            v[0xf] = hi;
            v[x] <<= 2;
          }
          break;
        case 0x9000:
          if (v[x] != v[y]) {
            pc += 2;
          }
          break;
        case 0xa000:
          I = nnn;
          break;
        case 0xb000:
          pc = nnn + v[0];
          break;
        case 0xc000: 
          {
            int r = rand();
            v[x] = r & kk;
            break;
          }
        case 0xd000:
          for (size_t i = 0; i < n; i++) {
            short byte = mem->read8(I + i);
            for (size_t j = 0; j < 8; j++) {
              int bit = (byte >> (7 - j) & 0x01);
              bool collision = dis->setDisplay(v[x] + j, v[y] + i, bit);
              if (collision) {
                v[0xf] = 1;
              }
            }
          }
          break;
        case 0xe000:
          if ((0xe000 | x | 0x009e) == op) {
            // FIXME: Keyboard
            break;
          }
          if ((0xe000 | x | 0x00a1) == op) {
            // FIXME: Keyboard
            break;
          }
          break;
        case 0xf000:
          if (kk == 0x07) {
            v[x] = DT;
          }
          if (kk == 0x0a) {
            // FIXME: Keyboard
          }
          if (kk == 0x15) {
            DT = v[x];
          }
          if (kk == 0x18) {
            ST = v[x];
          }
          if (kk == 0x1e) {
            I += v[x];
          }
          if (kk == 0x29) {
            if (v[x] > 0x0f) {
              // throw exception..
              break;
            }
            I = v[x];
          }
          if (kk == 0x33) {
            int hundreds = v[x] / 100;
            int tens     = (v[x] / 10) % 10;
            int ones     = (v[x] % 100) % 10;
            mem->write8(I, hundreds);
            mem->write8(I + 1, tens);
            mem->write8(I + 2, ones);
          }
          if (kk == 0x55) {
            for (size_t i = 0; i < x; i++) {
              mem->write8(I + i, v[i]);
            }
          }
          if (kk == 0x65) {
            for (size_t i = 0; i < x; i++) {
              v[i] = mem->read8(I + i);
            }
          }
          break;
      }
    }
};

int main() {
  Chip8Memory mem = Chip8Memory(4096);
  CPU cpu = CPU();
  return 0;
}

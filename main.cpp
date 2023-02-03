#include <iostream>
#include <cstring>
#include <cstdlib>
#include <MiniFB.h>

static const uint8_t fontSet[80] = {
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
    virtual uint8_t read8(size_t index) = 0;
    virtual uint32_t read16(size_t index) = 0;

    virtual void write8(size_t index, uint8_t data) = 0;
    virtual void write16(size_t index, uint32_t data) = 0;
};

class Display {
  public:
    virtual bool setDisplay(size_t x, size_t y, uint8_t data) = 0;
    virtual void clearDisplay() = 0;
    virtual int render() = 0;
};



class Chip8Display : public Display {
  public:
    size_t width;
    size_t height;
    uint32_t* display; // FIXME: Needs to be 32bit
    struct mfb_window* window;

  private:
    size_t getPos(size_t x, size_t y) {
      return (x % width) + ((y % height) * width);
    }

  public:

    Chip8Display(size_t w, size_t h) {
      width = w;
      height = h;
      display = new uint32_t[width * height];
      window = mfb_open_ex("Chip8", width, height, WF_RESIZABLE); // FIXME: Handle error
    }

    int render() override {
      return mfb_update_ex(window, display, width, height);
    }

    void clearDisplay() override {
      delete[] display;
      display = new uint32_t[width * height];
    }

    bool setDisplay(size_t x, size_t y, uint8_t data) override {
      uint32_t pixel = display[getPos(x, y)];
      uint32_t newPixel = (pixel & 0x01) ^ data;

      if (newPixel) display[getPos(x, y)] = 0x00ffffff;
      else display[getPos(x, y)] = 0x00000000;

      return newPixel == 1;
    }
};



class Chip8Memory : public Memory {
  private:
    size_t size;
    uint8_t* mem;

  public:
    Chip8Memory(size_t s) {
      size = s;
      mem = new uint8_t[size];
      memcpy(mem, &fontSet, 80);
    }

    ~Chip8Memory() {
      printf("Memory dead\n");
      delete[] mem;
    }

    uint8_t read8(size_t index) override {
      return mem[index];
    }

    uint32_t read16(size_t index) override {
      int hi = mem[index];
      int lo = mem[index + 1];
      return (hi << 8) | lo;
    }

    void write8(size_t index, uint8_t data) override {
      mem[index] = data;
    }

    void write16(size_t index, uint32_t data) override {
      int hi = data & 0xff00;
      int lo = data & 0x00ff;

      mem[index] = hi;
      mem[index + 1] = lo;
    }

    void loadProgram(char* data, size_t size) {
      for (int i = 0; i < size; i++) {
        mem[i + 0x200] = (uint8_t) data[i];
      }
    }
};



class CPU {
  private:
    uint8_t v[16];
    uint32_t I;
    uint32_t DT;
    uint32_t ST;
    size_t pc;
    size_t sp;
    uint32_t stack[16];

  public:
    CPU() {
      pc = 0x200;
      sp = 0;
      I = 0;
      DT = 0;
      ST = 0;
      for (int i = 0; i < 16; i++) {
        v[i] = 0;
      }
    }

    void run_op(Memory* mem, Display* dis) {
      uint32_t op = mem->read16(pc);
      int op_f = op & 0xf000;
      size_t nnn = op & 0x0fff;
      size_t n = op & 0x000f;
      size_t x = (op & 0x0f00) >> 8;
      size_t y = (op & 0x00f0) >> 4;
      uint8_t kk = op & 0x00ff;

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
            v[0xf] = v[x] & 0x01;
            v[x] = v[x] >> 1;
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
            v[0xf] = v[x] & 0x80;
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
            uint8_t byte = mem->read8(I + i);
            for (size_t j = 0; j < 8; j++) {
              int bit = ((byte >> (7 - j)) & 0x01);
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
            for (size_t i = 0; i <= x; i++) {
              mem->write8(I + i, v[i]);
            }
          }
          if (kk == 0x65) {
            for (size_t i = 0; i <= x; i++) {
              v[i] = mem->read8(I + i);
            }
          }
          break;
      }
    }
};



class Machine {
  private:
    CPU cpu;
    Memory* mem;
    Display* dis;

  public:
    Machine(CPU c, Memory* m, Display* d) {
      cpu = c;
      mem = m;
      dis = d;
    }

    void step() {
      cpu.run_op(mem, dis);
      dis->render();
    }

    void run() {
      while (1) {
        step();
      }
    }
};



int main(int argc, char** argv) {
  CPU cpu = CPU();
  Chip8Display dis = Chip8Display(64, 32);
  Chip8Memory mem = Chip8Memory(4096);

  // FIXME: Perpahs throw this into a function
  FILE* fp = fopen(argv[1], "rb");
  if (fp == NULL) {
    std::cerr << "Failed to open rom" << std::endl;
    return 1;
  }

  fseek(fp, 0, SEEK_END);
  size_t rom_size = ftell(fp);
  rewind(fp);

  char* buf = (char*) malloc(sizeof(char) * rom_size);
  if (buf == NULL) {
    std::cerr << "Failed to allocate memory for rom" << std::endl;
    return 1;
  }

  size_t result = fread(buf, sizeof(char), (size_t)rom_size, fp);
  if (result != rom_size) {
    std::cerr << "Failed to read rom" << std::endl;
    return 1;
  }

  // char buf[14];
  // size_t rom_size = 14;
  // buf[0] = 0x60; // load v[0] = 0x10
  // buf[1] = 0x10;
  // buf[2] = 0x61; // load v[1] = 0x10
  // buf[3] = 0x10;
  // buf[4] = 0x62; // load v[2] = 0x80
  // buf[5] = 0x01;
  // buf[6] = 0xaf; // load I = 0xf00;
  // buf[7] = 0x00;
  // buf[8] = 0xf2; // load mem[I..I+2] = v[0]..v[2]
  // buf[9] = 0x55;
  // buf[10] = 0xaf; // load I = 0xf02;
  // buf[11] = 0x01;
  // buf[12] = 0xd0; // draw
  // buf[13] = 0x11;
  mem.loadProgram(buf, rom_size);

  fclose(fp);
  free(buf);

  Machine m = Machine(cpu, &mem, &dis);
  m.run();
  // for (int i = 0; i < 14; i++) {
    // m.step();
  // }

  std::cin.get();

  return 0;
}

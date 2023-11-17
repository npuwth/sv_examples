#ifndef EXAMPLE_H_
#define EXAMPLE_H_

#include <array>
#include <cstdint>
#include <cstdlib>
#include <uint.h>
#include <sint.h>
#define UNLIKELY(condition) __builtin_expect(static_cast<bool>(condition), 0)

typedef struct example {
  UInt<8> LED;
  UInt<1> CLK;

  example() {
    LED.rand_init();
    CLK.rand_init();
  }

  std::array<bool,1> PARTflags;
  bool sim_cached = false;
  bool regs_set = false;
  bool update_registers;
  bool done_reset;
  bool verbose;

  void EVAL_0() {
    PARTflags[0] = false;
    LED = UInt<8>(0x0);
  }

  void eval(bool update_registers, bool verbose, bool done_reset) {
    if (reset || !done_reset) {
      sim_cached = false;
      regs_set = false;
    }
    if (!sim_cached) {
      PARTflags.fill(true);
    }
    sim_cached = regs_set;
    this->update_registers = update_registers;
    this->done_reset = done_reset;
    this->verbose = verbose;
    if (UNLIKELY(PARTflags[0])) EVAL_0();
    regs_set = true;

    
  }


} example;

#endif  // EXAMPLE_H_

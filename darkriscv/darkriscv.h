#ifndef DARKRISCV_H_
#define DARKRISCV_H_

#include <array>
#include <cstdint>
#include <cstdlib>
#include <uint.h>
#include <sint.h>
#define UNLIKELY(condition) __builtin_expect(static_cast<bool>(condition), 0)

typedef struct darkriscv {
  UInt<32> REGS[16];
  UInt<4> DEBUG;
  UInt<1> IDLE;
  UInt<1> RD;
  UInt<1> WR;
  UInt<4> BE;
  UInt<32> DADDR;
  UInt<32> DATAO;
  UInt<32> DATAI;
  UInt<32> IADDR;
  UInt<32> IDATA;
  UInt<1> HLT;
  UInt<1> RES;
  UInt<1> CLK;

  darkriscv() {
    for (size_t a=0; a < 16; a++) REGS[a].rand_init();
    DEBUG.rand_init();
    IDLE.rand_init();
    RD.rand_init();
    WR.rand_init();
    BE.rand_init();
    DADDR.rand_init();
    DATAO.rand_init();
    DATAI.rand_init();
    IADDR.rand_init();
    IDATA.rand_init();
    HLT.rand_init();
    RES.rand_init();
    CLK.rand_init();
  }

  std::array<bool,2> PARTflags;
  bool sim_cached = false;
  bool regs_set = false;
  bool update_registers;
  bool done_reset;
  bool verbose;

  void EVAL_0() {
    PARTflags[0] = false;
    UInt<32> REGS$r0 = REGS[UInt<4>(0x0).as_single_word()];
    UInt<32> U1REG = REGS$r0;
    UInt<33> _GEN_8 = U1REG.pad<33>();
    DADDR = _GEN_8.bits<31,0>();
    UInt<2> _GEN_0 = DADDR.bits<1,0>();
    UInt<32> _GEN_1 = _GEN_0.pad<32>();
    UInt<1> _eq____darkriscv_rtl_darkriscv_v_562_260 = _GEN_1 == UInt<32>(0x2);
    UInt<1> _eq____darkriscv_rtl_darkriscv_v_561_259 = _GEN_1 == UInt<32>(0x3);
    UInt<1> _eq____darkriscv_rtl_darkriscv_v_563_261 = _GEN_1 == UInt<32>(0x1);
    if (UNLIKELY(_eq____darkriscv_rtl_darkriscv_v_561_259)) {
      BE = UInt<4>(0x8);
    } else {
      UInt<4> _ternary____darkriscv_rtl_darkriscv_v_562_263;
      if (UNLIKELY(_eq____darkriscv_rtl_darkriscv_v_562_260)) {
        _ternary____darkriscv_rtl_darkriscv_v_562_263 = UInt<4>(0x4);
      } else {
        UInt<4> _ternary____darkriscv_rtl_darkriscv_v_563_262 = _eq____darkriscv_rtl_darkriscv_v_563_261 ? UInt<4>(0x2) : UInt<4>(0x1);
        _ternary____darkriscv_rtl_darkriscv_v_562_263 = _ternary____darkriscv_rtl_darkriscv_v_563_262;
      }
      BE = _ternary____darkriscv_rtl_darkriscv_v_562_263;
    }
    UInt<32> REGS$r1 = REGS[UInt<4>(0x0).as_single_word()];
    UInt<32> U2REG = REGS$r1;
    UInt<8> _GEN_45 = U2REG.bits<7,0>();
    if (UNLIKELY(_eq____darkriscv_rtl_darkriscv_v_561_259)) {
      DATAO = _GEN_45.cat(UInt<24>(0x0));
    } else {
      UInt<32> _ternary____darkriscv_rtl_darkriscv_v_327_156;
      if (UNLIKELY(_eq____darkriscv_rtl_darkriscv_v_562_260)) {
        UInt<24> _GEN_49 = _GEN_45.cat(UInt<16>(0x0));
        _ternary____darkriscv_rtl_darkriscv_v_327_156 = UInt<8>(0x0).cat(_GEN_49);
      } else {
        UInt<32> _ternary____darkriscv_rtl_darkriscv_v_328_155;
        if (UNLIKELY(_eq____darkriscv_rtl_darkriscv_v_563_261)) {
          UInt<16> _GEN_46 = _GEN_45.cat(UInt<8>(0x0));
          _ternary____darkriscv_rtl_darkriscv_v_328_155 = UInt<16>(0x0).cat(_GEN_46);
        } else {
          _ternary____darkriscv_rtl_darkriscv_v_328_155 = UInt<24>(0x0).cat(_GEN_45);
        }
        _ternary____darkriscv_rtl_darkriscv_v_327_156 = _ternary____darkriscv_rtl_darkriscv_v_328_155;
      }
      DATAO = _ternary____darkriscv_rtl_darkriscv_v_327_156;
    }
    UInt<32> REGS$r3 = REGS[UInt<4>(0x0).as_single_word()];
    UInt<32> REGS$r2 = REGS[UInt<4>(0x0).as_single_word()];
  }
  void EVAL_1() {
    PARTflags[1] = false;
    WR = UInt<1>(0x0);
    IADDR = UInt<32>(0x0);
    RD = UInt<1>(0x0);
    IDLE = UInt<1>(0x0);
    UInt<3> _GEN_129 = IDLE.cat(UInt<2>(0x0));
    DEBUG = UInt<1>(0x0).cat(_GEN_129);
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
    if (UNLIKELY(PARTflags[1])) EVAL_1();
    regs_set = true;

    
  }


} darkriscv;

#endif  // DARKRISCV_H_

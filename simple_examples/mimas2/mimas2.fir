circuit example:
  module example:
    output LED: UInt<8>
    input CLK: UInt<1>

    wire _1_ctr_27_0_: UInt<28>
    wire _add_mimas2_v_10_2_Y: UInt<32>
    wire _0_ctr_27_0_: UInt<28>
    wire ctr: UInt<28>
    wire _add_mimas2_v_10_2: UInt<32>
    wire _0: UInt<8>
    _1_ctr_27_0_ is invalid
    _0_ctr_27_0_ is invalid
    ctr is invalid


    _add_mimas2_v_10_2 <= add(ctr, asUInt(UInt<32>("h00000001")))
    _0 <= bits(ctr, 27, 20)

    _add_mimas2_v_10_2_Y <= bits(_add_mimas2_v_10_2, 31, 0)
    LED <= bits(_0, 7, 0)

circuit example:
  module seg7enc:
    output seg: UInt<7>
    input dat: UInt<4>

    wire _not_igloo2_v_63_11_Y: UInt<7>
    wire _1_seg_inv_6_0_: UInt<7>
    wire _0_seg_inv_6_0_: UInt<7>
    wire seg_inv: UInt<7>
    wire _not_igloo2_v_63_11: UInt<7>
    wire _0: UInt<7>
    _1_seg_inv_6_0_ is invalid
    _0_seg_inv_6_0_ is invalid
    seg_inv is invalid


    _not_igloo2_v_63_11 <= not(pad(seg_inv, 7))
    _0 <= _not_igloo2_v_63_11_Y

    _not_igloo2_v_63_11_Y <= bits(_not_igloo2_v_63_11, 6, 0)
    seg <= bits(_0, 6, 0)
  module example:
    output CA: UInt<1>
    output AG: UInt<1>
    output AF: UInt<1>
    output AE: UInt<1>
    output AD: UInt<1>
    output AC: UInt<1>
    output AB: UInt<1>
    output AA: UInt<1>
    output LED4: UInt<1>
    output LED3: UInt<1>
    output LED2: UInt<1>
    output LED1: UInt<1>
    input SW2: UInt<1>
    input SW1: UInt<1>
    input clk: UInt<1>

    wire _1_counter_29_0_: UInt<30>
    wire _ternary_igloo2_v_30_8_Y: UInt<4>
    wire _xor_igloo2_v_25_7_Y: UInt<8>
    wire _shr_igloo2_v_25_6_Y: UInt<8>
    wire _shr_igloo2_v_22_5_Y: UInt<30>
    wire _add_igloo2_v_21_4_Y: UInt<32>
    wire _add_igloo2_v_21_3_Y: UInt<32>
    wire _add_igloo2_v_21_2_Y: UInt<32>
    wire _0_outcnt_7_0_: UInt<8>
    wire _0_counter_29_0_: UInt<30>
    wire outcnt: UInt<8>
    wire counter: UInt<30>
    wire _ternary_igloo2_v_30_8: UInt<4>
    wire _xor_igloo2_v_25_7: UInt<8>
    wire _shr_igloo2_v_25_6: UInt<8>
    wire _shr_igloo2_v_22_5: UInt<30>
    wire _add_igloo2_v_21_4: UInt<32>
    wire _add_igloo2_v_21_3: UInt<32>
    wire _add_igloo2_v_21_2: UInt<32>
    wire _4: UInt<4>
    wire _5: UInt<1>
    _1_counter_29_0_ is invalid
    _0_outcnt_7_0_ is invalid
    _0_counter_29_0_ is invalid
    outcnt is invalid
    counter is invalid
    AG is invalid
    AF is invalid
    AE is invalid
    AD is invalid
    AC is invalid
    AB is invalid
    AA is invalid


    _ternary_igloo2_v_30_8 <= mux(CA, bits(outcnt, 3, 0), bits(outcnt, 7, 4))
    _xor_igloo2_v_25_7 <= xor(outcnt, asUInt(_shr_igloo2_v_25_6_Y))
    _shr_igloo2_v_25_6 <= shr(outcnt, 1)
    _shr_igloo2_v_22_5 <= shr(counter, 22)
    _add_igloo2_v_21_4 <= add(_add_igloo2_v_21_3_Y, asUInt(UInt<32>("h00000001")))
    _add_igloo2_v_21_3 <= add(_add_igloo2_v_21_2_Y, asUInt(SW2))
    _add_igloo2_v_21_2 <= add(counter, asUInt(SW1))
    _4 <= bits(_xor_igloo2_v_25_7_Y, 3, 0)
    _5 <= bits(counter, 10, 10)

    inst seg7encinst of seg7enc
    seg7encinst.dat <= _ternary_igloo2_v_30_8_Y
    cat(AA, cat(AB, cat(AC, cat(AD, cat(AE, cat(AF, AG)))))) <= seg7encinst.seg
    _ternary_igloo2_v_30_8_Y <= bits(_ternary_igloo2_v_30_8, 3, 0)
    _xor_igloo2_v_25_7_Y <= bits(_xor_igloo2_v_25_7, 7, 0)
    _shr_igloo2_v_25_6_Y <= bits(_shr_igloo2_v_25_6, 7, 0)
    _shr_igloo2_v_22_5_Y <= bits(_shr_igloo2_v_22_5, 29, 0)
    _add_igloo2_v_21_4_Y <= bits(_add_igloo2_v_21_4, 31, 0)
    _add_igloo2_v_21_3_Y <= bits(_add_igloo2_v_21_3, 31, 0)
    _add_igloo2_v_21_2_Y <= bits(_add_igloo2_v_21_2, 31, 0)
    CA <= bits(_5, 0, 0)
    LED4 <= bits(_4, 0, 0)
    LED3 <= bits(_4, 1, 1)
    LED2 <= bits(_4, 2, 2)
    LED1 <= bits(_4, 3, 3)

circuit demo:
  module demo:
    output R_LED: UInt<1>
    input CLK_IN: UInt<1>

    wire _add_anlogic_v_15_4_Y: UInt<30>
    wire _not_anlogic_v_12_3_Y: UInt<1>
    wire _eq_anlogic_v_10_2_Y: UInt<1>
    wire _0_count_29_0_: UInt<30>
    wire _0_led_state_0_0_: UInt<1>
    wire count: UInt<30>
    wire led_state: UInt<1>
    wire _add_anlogic_v_15_4: UInt<30>
    wire _not_anlogic_v_12_3: UInt<1>
    wire _eq_anlogic_v_10_2: UInt<1>
    wire _0: UInt<1>
    _0_count_29_0_ is invalid
    _0_led_state_0_0_ is invalid
    count is invalid
    led_state is invalid


    _add_anlogic_v_15_4 <= add(count, asUInt(UInt<1>("h1")))
    _not_anlogic_v_12_3 <= not(pad(led_state, 1))
    _eq_anlogic_v_10_2 <= eq(count, asUInt(UInt<30>("h00b71b00")))
    _0 <= led_state

    _add_anlogic_v_15_4_Y <= bits(_add_anlogic_v_15_4, 29, 0)
    _not_anlogic_v_12_3_Y <= bits(_not_anlogic_v_12_3, 0, 0)
    _eq_anlogic_v_10_2_Y <= bits(_eq_anlogic_v_10_2, 0, 0)
    R_LED <= bits(_0, 0, 0)

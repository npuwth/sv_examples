## SV_EXAMPLE: simple examples written in SystemVerilog

1. anlogic, basys3, igloo2, mimas2 are from Yosys.

2. darkriscv is an open-source risc-v cpu with soc.

3. serv is an open-source bit-serial risc-v core.

4. riscv-mini is an open-source core written in Chisel.

(Can convert to SystemVerilog or FIRRTL)

### sv to firrtl
Yosys Version: 0.35

```shell
read_verilog XXX.v
write_firrtl XXX.firrtl
```

'BUFG' in basys3 not supported, so removed.

### run ESSENT

darkriscv, anlogic, mimas2, riscv-mini can generate StatementGraph.

igloo2 and serv are not supported:

```
firrtl.passes.CheckHighFormLike$IncorrectNumArgsException: : [module serv_rf_ram] Primop pad requires 1 expression arguments.
```
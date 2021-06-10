glabel func_8005DE30
/* 5EA30 8005DE30 3C058018 */  lui        $a1, %hi(D_801783F0)
/* 5EA34 8005DE34 24A583F0 */  addiu      $a1, $a1, %lo(D_801783F0)
/* 5EA38 8005DE38 A4A00000 */  sh         $zero, ($a1)
/* 5EA3C 8005DE3C 84A20000 */  lh         $v0, ($a1)
/* 5EA40 8005DE40 24080002 */  addiu      $t0, $zero, 2
/* 5EA44 8005DE44 28410010 */  slti       $at, $v0, 0x10
/* 5EA48 8005DE48 10200012 */  beqz       $at, .L8005DE94
/* 5EA4C 8005DE4C 240CFFFD */   addiu     $t4, $zero, -3
/* 5EA50 8005DE50 3C078018 */  lui        $a3, %hi(D_801783F8)
/* 5EA54 8005DE54 3C068018 */  lui        $a2, %hi(D_80178418)
/* 5EA58 8005DE58 24C68418 */  addiu      $a2, $a2, %lo(D_80178418)
/* 5EA5C 8005DE5C 24E783F8 */  addiu      $a3, $a3, %lo(D_801783F8)
/* 5EA60 8005DE60 00021840 */  sll        $v1, $v0, 1
.L8005DE64:
/* 5EA64 8005DE64 00C32021 */  addu       $a0, $a2, $v1
/* 5EA68 8005DE68 A4800000 */  sh         $zero, ($a0)
/* 5EA6C 8005DE6C 848E0000 */  lh         $t6, ($a0)
/* 5EA70 8005DE70 00E37821 */  addu       $t7, $a3, $v1
/* 5EA74 8005DE74 24580001 */  addiu      $t8, $v0, 1
/* 5EA78 8005DE78 A5EE0000 */  sh         $t6, ($t7)
/* 5EA7C 8005DE7C A4B80000 */  sh         $t8, ($a1)
/* 5EA80 8005DE80 84A20000 */  lh         $v0, ($a1)
/* 5EA84 8005DE84 00000000 */  nop
/* 5EA88 8005DE88 28410010 */  slti       $at, $v0, 0x10
/* 5EA8C 8005DE8C 1420FFF5 */  bnez       $at, .L8005DE64
/* 5EA90 8005DE90 00021840 */   sll       $v1, $v0, 1
.L8005DE94:
/* 5EA94 8005DE94 3C028018 */  lui        $v0, %hi(D_801783F2)
/* 5EA98 8005DE98 244283F2 */  addiu      $v0, $v0, %lo(D_801783F2)
/* 5EA9C 8005DE9C A4400000 */  sh         $zero, ($v0)
/* 5EAA0 8005DEA0 84590000 */  lh         $t9, ($v0)
/* 5EAA4 8005DEA4 3C018018 */  lui        $at, %hi(D_801782DC)
/* 5EAA8 8005DEA8 A4B90000 */  sh         $t9, ($a1)
/* 5EAAC 8005DEAC A02082DC */  sb         $zero, %lo(D_801782DC)($at)
/* 5EAB0 8005DEB0 3C018018 */  lui        $at, %hi(D_801783EE)
/* 5EAB4 8005DEB4 A42883EE */  sh         $t0, %lo(D_801783EE)($at)
/* 5EAB8 8005DEB8 3C038018 */  lui        $v1, %hi(D_8017843E)
/* 5EABC 8005DEBC 3C048018 */  lui        $a0, %hi(D_8017843C)
/* 5EAC0 8005DEC0 3C068018 */  lui        $a2, %hi(D_8017843A)
/* 5EAC4 8005DEC4 24C6843A */  addiu      $a2, $a2, %lo(D_8017843A)
/* 5EAC8 8005DEC8 2484843C */  addiu      $a0, $a0, %lo(D_8017843C)
/* 5EACC 8005DECC 2463843E */  addiu      $v1, $v1, %lo(D_8017843E)
/* 5EAD0 8005DED0 A4600000 */  sh         $zero, ($v1)
/* 5EAD4 8005DED4 A4800000 */  sh         $zero, ($a0)
/* 5EAD8 8005DED8 A4C00000 */  sh         $zero, ($a2)
/* 5EADC 8005DEDC 3C018018 */  lui        $at, %hi(D_80178438)
/* 5EAE0 8005DEE0 A4208438 */  sh         $zero, %lo(D_80178438)($at)
/* 5EAE4 8005DEE4 3C018018 */  lui        $at, %hi(D_801783F4)
/* 5EAE8 8005DEE8 A42C83F4 */  sh         $t4, %lo(D_801783F4)($at)
/* 5EAEC 8005DEEC 3C018018 */  lui        $at, %hi(D_801783F6)
/* 5EAF0 8005DEF0 240D000C */  addiu      $t5, $zero, 0xc
/* 5EAF4 8005DEF4 03E00008 */  jr         $ra
/* 5EAF8 8005DEF8 A42D83F6 */   sh        $t5, %lo(D_801783F6)($at)

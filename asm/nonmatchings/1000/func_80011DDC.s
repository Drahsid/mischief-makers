glabel func_80011DDC
/* 129DC 80011DDC 00047400 */  sll        $t6, $a0, 0x10
/* 129E0 80011DE0 000E7C03 */  sra        $t7, $t6, 0x10
/* 129E4 80011DE4 3C0D800C */  lui        $t5, %hi(D_800BE648)
/* 129E8 80011DE8 95ADE648 */  lhu        $t5, %lo(D_800BE648)($t5)
/* 129EC 80011DEC 0005C400 */  sll        $t8, $a1, 0x10
/* 129F0 80011DF0 0018CC03 */  sra        $t9, $t8, 0x10
/* 129F4 80011DF4 000F5103 */  sra        $t2, $t7, 4
/* 129F8 80011DF8 3C0F800C */  lui        $t7, %hi(D_800BE660)
/* 129FC 80011DFC 01B97023 */  subu       $t6, $t5, $t9
/* 12A00 80011E00 95EFE660 */  lhu        $t7, %lo(D_800BE660)($t7)
/* 12A04 80011E04 3C19800C */  lui        $t9, %hi(D_800BE65C)
/* 12A08 80011E08 3C0B800C */  lui        $t3, %hi(D_800BE658)
/* 12A0C 80011E0C 956BE658 */  lhu        $t3, %lo(D_800BE658)($t3)
/* 12A10 80011E10 9739E65C */  lhu        $t9, %lo(D_800BE65C)($t9)
/* 12A14 80011E14 AFA60008 */  sw         $a2, 8($sp)
/* 12A18 80011E18 00C04025 */  or         $t0, $a2, $zero
/* 12A1C 80011E1C 01003025 */  or         $a2, $t0, $zero
/* 12A20 80011E20 01EEC004 */  sllv       $t8, $t6, $t7
/* 12A24 80011E24 014B6024 */  and        $t4, $t2, $t3
/* 12A28 80011E28 03194024 */  and        $t0, $t8, $t9
/* 12A2C 80011E2C 01884821 */  addu       $t1, $t4, $t0
/* 12A30 80011E30 3C018011 */  lui        $at, %hi(D_8010CDF0)
/* 12A34 80011E34 00290821 */  addu       $at, $at, $t1
/* 12A38 80011E38 AFA40000 */  sw         $a0, ($sp)
/* 12A3C 80011E3C AFA50004 */  sw         $a1, 4($sp)
/* 12A40 80011E40 03E00008 */  jr         $ra
/* 12A44 80011E44 A026CDF0 */   sb        $a2, %lo(D_8010CDF0)($at)

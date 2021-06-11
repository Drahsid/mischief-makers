glabel func_8003D794
/* 3E394 8003D794 308EFFFF */  andi       $t6, $a0, 0xffff
/* 3E398 8003D798 000E7880 */  sll        $t7, $t6, 2
/* 3E39C 8003D79C 01EE7823 */  subu       $t7, $t7, $t6
/* 3E3A0 8003D7A0 000F7880 */  sll        $t7, $t7, 2
/* 3E3A4 8003D7A4 01EE7821 */  addu       $t7, $t7, $t6
/* 3E3A8 8003D7A8 000F7880 */  sll        $t7, $t7, 2
/* 3E3AC 8003D7AC 01EE7823 */  subu       $t7, $t7, $t6
/* 3E3B0 8003D7B0 000F78C0 */  sll        $t7, $t7, 3
/* 3E3B4 8003D7B4 3C01800F */  lui        $at, %hi(D_800EF620)
/* 3E3B8 8003D7B8 002F0821 */  addu       $at, $at, $t7
/* 3E3BC 8003D7BC 4458F800 */  cfc1       $t8, $31
/* 3E3C0 8003D7C0 24020001 */  addiu      $v0, $zero, 1
/* 3E3C4 8003D7C4 44C2F800 */  ctc1       $v0, $31
/* 3E3C8 8003D7C8 C424F620 */  lwc1       $f4, %lo(D_800EF620)($at)
/* 3E3CC 8003D7CC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3E3D0 8003D7D0 460021A4 */  cvt.w.s    $f6, $f4
/* 3E3D4 8003D7D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E3D8 8003D7D8 4442F800 */  cfc1       $v0, $31
/* 3E3DC 8003D7DC AFA40028 */  sw         $a0, 0x28($sp)
/* 3E3E0 8003D7E0 30420078 */  andi       $v0, $v0, 0x78
/* 3E3E4 8003D7E4 10400012 */  beqz       $v0, .L8003D830
/* 3E3E8 8003D7E8 3C014F00 */   lui       $at, 0x4f00
/* 3E3EC 8003D7EC 44813000 */  mtc1       $at, $f6
/* 3E3F0 8003D7F0 24020001 */  addiu      $v0, $zero, 1
/* 3E3F4 8003D7F4 46062181 */  sub.s      $f6, $f4, $f6
/* 3E3F8 8003D7F8 3C018000 */  lui        $at, 0x8000
/* 3E3FC 8003D7FC 44C2F800 */  ctc1       $v0, $31
/* 3E400 8003D800 00000000 */  nop
/* 3E404 8003D804 460031A4 */  cvt.w.s    $f6, $f6
/* 3E408 8003D808 4442F800 */  cfc1       $v0, $31
/* 3E40C 8003D80C 00000000 */  nop
/* 3E410 8003D810 30420078 */  andi       $v0, $v0, 0x78
/* 3E414 8003D814 14400004 */  bnez       $v0, .L8003D828
/* 3E418 8003D818 00000000 */   nop
/* 3E41C 8003D81C 44023000 */  mfc1       $v0, $f6
/* 3E420 8003D820 10000007 */  b          .L8003D840
/* 3E424 8003D824 00411025 */   or        $v0, $v0, $at
.L8003D828:
/* 3E428 8003D828 10000005 */  b          .L8003D840
/* 3E42C 8003D82C 2402FFFF */   addiu     $v0, $zero, -1
.L8003D830:
/* 3E430 8003D830 44023000 */  mfc1       $v0, $f6
/* 3E434 8003D834 00000000 */  nop
/* 3E438 8003D838 0440FFFB */  bltz       $v0, .L8003D828
/* 3E43C 8003D83C 00000000 */   nop
.L8003D840:
/* 3E440 8003D840 44D8F800 */  ctc1       $t8, $31
/* 3E444 8003D844 3059FFFF */  andi       $t9, $v0, 0xffff
/* 3E448 8003D848 2401008C */  addiu      $at, $zero, 0x8c
/* 3E44C 8003D84C 132100A8 */  beq        $t9, $at, .L8003DAF0
/* 3E450 8003D850 240100AA */   addiu     $at, $zero, 0xaa
/* 3E454 8003D854 13210063 */  beq        $t9, $at, .L8003D9E4
/* 3E458 8003D858 240100B3 */   addiu     $at, $zero, 0xb3
/* 3E45C 8003D85C 13210035 */  beq        $t9, $at, .L8003D934
/* 3E460 8003D860 240100B4 */   addiu     $at, $zero, 0xb4
/* 3E464 8003D864 172100D7 */  bne        $t9, $at, .L8003DBC4
/* 3E468 8003D868 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3E46C 8003D86C 0C000CD3 */  jal        func_8000334C
/* 3E470 8003D870 24040026 */   addiu     $a0, $zero, 0x26
/* 3E474 8003D874 3C014000 */  lui        $at, 0x4000
/* 3E478 8003D878 44816000 */  mtc1       $at, $f12
/* 3E47C 8003D87C 4448F800 */  cfc1       $t0, $31
/* 3E480 8003D880 3C01800C */  lui        $at, %hi(D_800BE5A8)
/* 3E484 8003D884 C428E5A8 */  lwc1       $f8, %lo(D_800BE5A8)($at)
/* 3E488 8003D888 35010003 */  ori        $at, $t0, 3
/* 3E48C 8003D88C 38210002 */  xori       $at, $at, 2
/* 3E490 8003D890 44C1F800 */  ctc1       $at, $31
/* 3E494 8003D894 3C01800C */  lui        $at, %hi(D_800BE5AC)
/* 3E498 8003D898 460042A4 */  cvt.w.s    $f10, $f8
/* 3E49C 8003D89C C430E5AC */  lwc1       $f16, %lo(D_800BE5AC)($at)
/* 3E4A0 8003D8A0 44C8F800 */  ctc1       $t0, $31
/* 3E4A4 8003D8A4 44055000 */  mfc1       $a1, $f10
/* 3E4A8 8003D8A8 240700F2 */  addiu      $a3, $zero, 0xf2
/* 3E4AC 8003D8AC 444BF800 */  cfc1       $t3, $31
/* 3E4B0 8003D8B0 00054C00 */  sll        $t1, $a1, 0x10
/* 3E4B4 8003D8B4 35610003 */  ori        $at, $t3, 3
/* 3E4B8 8003D8B8 38210002 */  xori       $at, $at, 2
/* 3E4BC 8003D8BC 44C1F800 */  ctc1       $at, $31
/* 3E4C0 8003D8C0 00092C03 */  sra        $a1, $t1, 0x10
/* 3E4C4 8003D8C4 460084A4 */  cvt.w.s    $f18, $f16
/* 3E4C8 8003D8C8 44069000 */  mfc1       $a2, $f18
/* 3E4CC 8003D8CC 44CBF800 */  ctc1       $t3, $31
/* 3E4D0 8003D8D0 00066400 */  sll        $t4, $a2, 0x10
/* 3E4D4 8003D8D4 0C00FBB0 */  jal        func_8003EEC0
/* 3E4D8 8003D8D8 000C3403 */   sra       $a2, $t4, 0x10
/* 3E4DC 8003D8DC 104000B8 */  beqz       $v0, .L8003DBC0
/* 3E4E0 8003D8E0 3C01800F */   lui       $at, 0x800f
/* 3E4E4 8003D8E4 00027080 */  sll        $t6, $v0, 2
/* 3E4E8 8003D8E8 01C27023 */  subu       $t6, $t6, $v0
/* 3E4EC 8003D8EC 000E7080 */  sll        $t6, $t6, 2
/* 3E4F0 8003D8F0 01C27021 */  addu       $t6, $t6, $v0
/* 3E4F4 8003D8F4 000E7080 */  sll        $t6, $t6, 2
/* 3E4F8 8003D8F8 01C27023 */  subu       $t6, $t6, $v0
/* 3E4FC 8003D8FC 3C0F800F */  lui        $t7, %hi(gActors)
/* 3E500 8003D900 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 3E504 8003D904 000E70C0 */  sll        $t6, $t6, 3
/* 3E508 8003D908 01CF1821 */  addu       $v1, $t6, $t7
/* 3E50C 8003D90C C420BBC0 */  lwc1       $f0, -0x4440($at)
/* 3E510 8003D910 94780094 */  lhu        $t8, 0x94($v1)
/* 3E514 8003D914 8C680080 */  lw         $t0, 0x80($v1)
/* 3E518 8003D918 37190100 */  ori        $t9, $t8, 0x100
/* 3E51C 8003D91C 35090008 */  ori        $t1, $t0, 8
/* 3E520 8003D920 A4790094 */  sh         $t9, 0x94($v1)
/* 3E524 8003D924 AC690080 */  sw         $t1, 0x80($v1)
/* 3E528 8003D928 E4600118 */  swc1       $f0, 0x118($v1)
/* 3E52C 8003D92C 100000A4 */  b          .L8003DBC0
/* 3E530 8003D930 E460011C */   swc1      $f0, 0x11c($v1)
.L8003D934:
/* 3E534 8003D934 3C013FC0 */  lui        $at, 0x3fc0
/* 3E538 8003D938 44816000 */  mtc1       $at, $f12
/* 3E53C 8003D93C 444AF800 */  cfc1       $t2, $31
/* 3E540 8003D940 3C01800C */  lui        $at, %hi(D_800BE5A8)
/* 3E544 8003D944 C424E5A8 */  lwc1       $f4, %lo(D_800BE5A8)($at)
/* 3E548 8003D948 35410003 */  ori        $at, $t2, 3
/* 3E54C 8003D94C 38210002 */  xori       $at, $at, 2
/* 3E550 8003D950 44C1F800 */  ctc1       $at, $31
/* 3E554 8003D954 3C01800C */  lui        $at, %hi(D_800BE5AC)
/* 3E558 8003D958 460021A4 */  cvt.w.s    $f6, $f4
/* 3E55C 8003D95C C428E5AC */  lwc1       $f8, %lo(D_800BE5AC)($at)
/* 3E560 8003D960 44CAF800 */  ctc1       $t2, $31
/* 3E564 8003D964 44053000 */  mfc1       $a1, $f6
/* 3E568 8003D968 240700F2 */  addiu      $a3, $zero, 0xf2
/* 3E56C 8003D96C 444DF800 */  cfc1       $t5, $31
/* 3E570 8003D970 00055C00 */  sll        $t3, $a1, 0x10
/* 3E574 8003D974 35A10003 */  ori        $at, $t5, 3
/* 3E578 8003D978 38210002 */  xori       $at, $at, 2
/* 3E57C 8003D97C 44C1F800 */  ctc1       $at, $31
/* 3E580 8003D980 000B2C03 */  sra        $a1, $t3, 0x10
/* 3E584 8003D984 460042A4 */  cvt.w.s    $f10, $f8
/* 3E588 8003D988 44065000 */  mfc1       $a2, $f10
/* 3E58C 8003D98C 44CDF800 */  ctc1       $t5, $31
/* 3E590 8003D990 00067400 */  sll        $t6, $a2, 0x10
/* 3E594 8003D994 0C00FFC8 */  jal        func_8003FF20
/* 3E598 8003D998 000E3403 */   sra       $a2, $t6, 0x10
/* 3E59C 8003D99C 10400088 */  beqz       $v0, .L8003DBC0
/* 3E5A0 8003D9A0 0002C080 */   sll       $t8, $v0, 2
/* 3E5A4 8003D9A4 0302C023 */  subu       $t8, $t8, $v0
/* 3E5A8 8003D9A8 0018C080 */  sll        $t8, $t8, 2
/* 3E5AC 8003D9AC 0302C021 */  addu       $t8, $t8, $v0
/* 3E5B0 8003D9B0 0018C080 */  sll        $t8, $t8, 2
/* 3E5B4 8003D9B4 0302C023 */  subu       $t8, $t8, $v0
/* 3E5B8 8003D9B8 3C19800F */  lui        $t9, %hi(gActors)
/* 3E5BC 8003D9BC 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 3E5C0 8003D9C0 0018C0C0 */  sll        $t8, $t8, 3
/* 3E5C4 8003D9C4 03191821 */  addu       $v1, $t8, $t9
/* 3E5C8 8003D9C8 94680094 */  lhu        $t0, 0x94($v1)
/* 3E5CC 8003D9CC 8C6A0080 */  lw         $t2, 0x80($v1)
/* 3E5D0 8003D9D0 35090100 */  ori        $t1, $t0, 0x100
/* 3E5D4 8003D9D4 354B0008 */  ori        $t3, $t2, 8
/* 3E5D8 8003D9D8 A4690094 */  sh         $t1, 0x94($v1)
/* 3E5DC 8003D9DC 10000078 */  b          .L8003DBC0
/* 3E5E0 8003D9E0 AC6B0080 */   sw        $t3, 0x80($v1)
.L8003D9E4:
/* 3E5E4 8003D9E4 444CF800 */  cfc1       $t4, $31
/* 3E5E8 8003D9E8 3C01800C */  lui        $at, %hi(D_800BE5A8)
/* 3E5EC 8003D9EC C430E5A8 */  lwc1       $f16, %lo(D_800BE5A8)($at)
/* 3E5F0 8003D9F0 35810003 */  ori        $at, $t4, 3
/* 3E5F4 8003D9F4 38210002 */  xori       $at, $at, 2
/* 3E5F8 8003D9F8 44C1F800 */  ctc1       $at, $31
/* 3E5FC 8003D9FC 3C01800C */  lui        $at, %hi(D_800BE5AC)
/* 3E600 8003DA00 460084A4 */  cvt.w.s    $f18, $f16
/* 3E604 8003DA04 C424E5AC */  lwc1       $f4, %lo(D_800BE5AC)($at)
/* 3E608 8003DA08 44CCF800 */  ctc1       $t4, $31
/* 3E60C 8003DA0C 44059000 */  mfc1       $a1, $f18
/* 3E610 8003DA10 3C04800D */  lui        $a0, %hi(D_800D271C)
/* 3E614 8003DA14 444DF800 */  cfc1       $t5, $31
/* 3E618 8003DA18 2484271C */  addiu      $a0, $a0, %lo(D_800D271C)
/* 3E61C 8003DA1C 35A10003 */  ori        $at, $t5, 3
/* 3E620 8003DA20 38210002 */  xori       $at, $at, 2
/* 3E624 8003DA24 44C1F800 */  ctc1       $at, $31
/* 3E628 8003DA28 240700F1 */  addiu      $a3, $zero, 0xf1
/* 3E62C 8003DA2C 460021A4 */  cvt.w.s    $f6, $f4
/* 3E630 8003DA30 44063000 */  mfc1       $a2, $f6
/* 3E634 8003DA34 44CDF800 */  ctc1       $t5, $31
/* 3E638 8003DA38 0C00C48F */  jal        func_8003123C
/* 3E63C 8003DA3C 00000000 */   nop
/* 3E640 8003DA40 1040005F */  beqz       $v0, .L8003DBC0
/* 3E644 8003DA44 3044FFFF */   andi      $a0, $v0, 0xffff
/* 3E648 8003DA48 00047080 */  sll        $t6, $a0, 2
/* 3E64C 8003DA4C 01C47023 */  subu       $t6, $t6, $a0
/* 3E650 8003DA50 000E7080 */  sll        $t6, $t6, 2
/* 3E654 8003DA54 01C47021 */  addu       $t6, $t6, $a0
/* 3E658 8003DA58 000E7080 */  sll        $t6, $t6, 2
/* 3E65C 8003DA5C 01C47023 */  subu       $t6, $t6, $a0
/* 3E660 8003DA60 3C0F800F */  lui        $t7, %hi(gActors)
/* 3E664 8003DA64 3C013F00 */  lui        $at, 0x3f00
/* 3E668 8003DA68 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 3E66C 8003DA6C 000E70C0 */  sll        $t6, $t6, 3
/* 3E670 8003DA70 44810000 */  mtc1       $at, $f0
/* 3E674 8003DA74 01CF1021 */  addu       $v0, $t6, $t7
/* 3E678 8003DA78 3C014000 */  lui        $at, 0x4000
/* 3E67C 8003DA7C 44816000 */  mtc1       $at, $f12
/* 3E680 8003DA80 3C014040 */  lui        $at, 0x4040
/* 3E684 8003DA84 44814000 */  mtc1       $at, $f8
/* 3E688 8003DA88 3C088003 */  lui        $t0, %hi(func_80030B0C)
/* 3E68C 8003DA8C 46086282 */  mul.s      $f10, $f12, $f8
/* 3E690 8003DA90 24180101 */  addiu      $t8, $zero, 0x101
/* 3E694 8003DA94 2419000B */  addiu      $t9, $zero, 0xb
/* 3E698 8003DA98 25080B0C */  addiu      $t0, $t0, %lo(func_80030B0C)
/* 3E69C 8003DA9C 24090064 */  addiu      $t1, $zero, 0x64
/* 3E6A0 8003DAA0 240AFFFE */  addiu      $t2, $zero, -2
/* 3E6A4 8003DAA4 A4580094 */  sh         $t8, 0x94($v0)
/* 3E6A8 8003DAA8 AC590080 */  sw         $t9, 0x80($v0)
/* 3E6AC 8003DAAC AC48017C */  sw         $t0, 0x17c($v0)
/* 3E6B0 8003DAB0 AC490104 */  sw         $t1, 0x104($v0)
/* 3E6B4 8003DAB4 AC4A0108 */  sw         $t2, 0x108($v0)
/* 3E6B8 8003DAB8 E44A00B4 */  swc1       $f10, 0xb4($v0)
/* 3E6BC 8003DABC AFA2001C */  sw         $v0, 0x1c($sp)
/* 3E6C0 8003DAC0 24050040 */  addiu      $a1, $zero, 0x40
/* 3E6C4 8003DAC4 E4400110 */  swc1       $f0, 0x110($v0)
/* 3E6C8 8003DAC8 E4400114 */  swc1       $f0, 0x114($v0)
/* 3E6CC 8003DACC 0C00ABAD */  jal        func_8002AEB4
/* 3E6D0 8003DAD0 E44C00B8 */   swc1      $f12, 0xb8($v0)
/* 3E6D4 8003DAD4 8FA2001C */  lw         $v0, 0x1c($sp)
/* 3E6D8 8003DAD8 3C014360 */  lui        $at, 0x4360
/* 3E6DC 8003DADC 44818000 */  mtc1       $at, $f16
/* 3E6E0 8003DAE0 240B007F */  addiu      $t3, $zero, 0x7f
/* 3E6E4 8003DAE4 A04B009D */  sb         $t3, 0x9d($v0)
/* 3E6E8 8003DAE8 10000035 */  b          .L8003DBC0
/* 3E6EC 8003DAEC E4500148 */   swc1      $f16, 0x148($v0)
.L8003DAF0:
/* 3E6F0 8003DAF0 444CF800 */  cfc1       $t4, $31
/* 3E6F4 8003DAF4 3C01800C */  lui        $at, %hi(D_800BE5A8)
/* 3E6F8 8003DAF8 C432E5A8 */  lwc1       $f18, %lo(D_800BE5A8)($at)
/* 3E6FC 8003DAFC 35810003 */  ori        $at, $t4, 3
/* 3E700 8003DB00 38210002 */  xori       $at, $at, 2
/* 3E704 8003DB04 44C1F800 */  ctc1       $at, $31
/* 3E708 8003DB08 3C01800C */  lui        $at, %hi(D_800BE5AC)
/* 3E70C 8003DB0C 46009124 */  cvt.w.s    $f4, $f18
/* 3E710 8003DB10 C426E5AC */  lwc1       $f6, %lo(D_800BE5AC)($at)
/* 3E714 8003DB14 44CCF800 */  ctc1       $t4, $31
/* 3E718 8003DB18 44052000 */  mfc1       $a1, $f4
/* 3E71C 8003DB1C 3C04800D */  lui        $a0, %hi(D_800D271C)
/* 3E720 8003DB20 444DF800 */  cfc1       $t5, $31
/* 3E724 8003DB24 2484271C */  addiu      $a0, $a0, %lo(D_800D271C)
/* 3E728 8003DB28 35A10003 */  ori        $at, $t5, 3
/* 3E72C 8003DB2C 38210002 */  xori       $at, $at, 2
/* 3E730 8003DB30 44C1F800 */  ctc1       $at, $31
/* 3E734 8003DB34 240700F4 */  addiu      $a3, $zero, 0xf4
/* 3E738 8003DB38 46003224 */  cvt.w.s    $f8, $f6
/* 3E73C 8003DB3C 44064000 */  mfc1       $a2, $f8
/* 3E740 8003DB40 44CDF800 */  ctc1       $t5, $31
/* 3E744 8003DB44 0C00C48F */  jal        func_8003123C
/* 3E748 8003DB48 00000000 */   nop
/* 3E74C 8003DB4C 1040001C */  beqz       $v0, .L8003DBC0
/* 3E750 8003DB50 3C014158 */   lui       $at, 0x4158
/* 3E754 8003DB54 00027080 */  sll        $t6, $v0, 2
/* 3E758 8003DB58 01C27023 */  subu       $t6, $t6, $v0
/* 3E75C 8003DB5C 000E7080 */  sll        $t6, $t6, 2
/* 3E760 8003DB60 01C27021 */  addu       $t6, $t6, $v0
/* 3E764 8003DB64 000E7080 */  sll        $t6, $t6, 2
/* 3E768 8003DB68 44810000 */  mtc1       $at, $f0
/* 3E76C 8003DB6C 01C27023 */  subu       $t6, $t6, $v0
/* 3E770 8003DB70 3C0F800F */  lui        $t7, %hi(gActors)
/* 3E774 8003DB74 3C01800F */  lui        $at, %hi(D_800EBBC4)
/* 3E778 8003DB78 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 3E77C 8003DB7C 000E70C0 */  sll        $t6, $t6, 3
/* 3E780 8003DB80 C422BBC4 */  lwc1       $f2, %lo(D_800EBBC4)($at)
/* 3E784 8003DB84 01CF1821 */  addu       $v1, $t6, $t7
/* 3E788 8003DB88 8C790080 */  lw         $t9, 0x80($v1)
/* 3E78C 8003DB8C 3C0143F0 */  lui        $at, 0x43f0
/* 3E790 8003DB90 44815000 */  mtc1       $at, $f10
/* 3E794 8003DB94 24180101 */  addiu      $t8, $zero, 0x101
/* 3E798 8003DB98 2409FFF0 */  addiu      $t1, $zero, -0x10
/* 3E79C 8003DB9C 37280008 */  ori        $t0, $t9, 8
/* 3E7A0 8003DBA0 A4780094 */  sh         $t8, 0x94($v1)
/* 3E7A4 8003DBA4 AC680080 */  sw         $t0, 0x80($v1)
/* 3E7A8 8003DBA8 AC690154 */  sw         $t1, 0x154($v1)
/* 3E7AC 8003DBAC E46000B4 */  swc1       $f0, 0xb4($v1)
/* 3E7B0 8003DBB0 E46000B8 */  swc1       $f0, 0xb8($v1)
/* 3E7B4 8003DBB4 E4620110 */  swc1       $f2, 0x110($v1)
/* 3E7B8 8003DBB8 E4620114 */  swc1       $f2, 0x114($v1)
/* 3E7BC 8003DBBC E46A0148 */  swc1       $f10, 0x148($v1)
.L8003DBC0:
/* 3E7C0 8003DBC0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8003DBC4:
/* 3E7C4 8003DBC4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3E7C8 8003DBC8 03E00008 */  jr         $ra
/* 3E7CC 8003DBCC 00000000 */   nop

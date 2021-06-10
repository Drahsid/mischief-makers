glabel func_8006FCC0
/* 708C0 8006FCC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 708C4 8006FCC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 708C8 8006FCC8 AFA40018 */  sw         $a0, 0x18($sp)
/* 708CC 8006FCCC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 708D0 8006FCD0 01C02025 */  or         $a0, $t6, $zero
/* 708D4 8006FCD4 0C01B22E */  jal        func_8006C8B8
/* 708D8 8006FCD8 A7AE001A */   sh        $t6, 0x1a($sp)
/* 708DC 8006FCDC 97A4001A */  lhu        $a0, 0x1a($sp)
/* 708E0 8006FCE0 14400020 */  bnez       $v0, .L8006FD64
/* 708E4 8006FCE4 00047880 */   sll       $t7, $a0, 2
/* 708E8 8006FCE8 01E47823 */  subu       $t7, $t7, $a0
/* 708EC 8006FCEC 000F7880 */  sll        $t7, $t7, 2
/* 708F0 8006FCF0 01E47821 */  addu       $t7, $t7, $a0
/* 708F4 8006FCF4 000F7880 */  sll        $t7, $t7, 2
/* 708F8 8006FCF8 01E47823 */  subu       $t7, $t7, $a0
/* 708FC 8006FCFC 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 70900 8006FD00 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 70904 8006FD04 000F78C0 */  sll        $t7, $t7, 3
/* 70908 8006FD08 01F81021 */  addu       $v0, $t7, $t8
/* 7090C 8006FD0C 944300D0 */  lhu        $v1, 0xd0($v0)
/* 70910 8006FD10 24010220 */  addiu      $at, $zero, 0x220
/* 70914 8006FD14 1461000A */  bne        $v1, $at, .L8006FD40
/* 70918 8006FD18 24790001 */   addiu     $t9, $v1, 1
/* 7091C 8006FD1C 3C0140C0 */  lui        $at, 0x40c0
/* 70920 8006FD20 44812000 */  mtc1       $at, $f4
/* 70924 8006FD24 3C08800E */  lui        $t0, %hi(D_800E19E8)
/* 70928 8006FD28 250819E8 */  addiu      $t0, $t0, %lo(D_800E19E8)
/* 7092C 8006FD2C 24090001 */  addiu      $t1, $zero, 1
/* 70930 8006FD30 A45900D0 */  sh         $t9, 0xd0($v0)
/* 70934 8006FD34 A44900E6 */  sh         $t1, 0xe6($v0)
/* 70938 8006FD38 AC4800E8 */  sw         $t0, 0xe8($v0)
/* 7093C 8006FD3C E4440118 */  swc1       $f4, 0x118($v0)
.L8006FD40:
/* 70940 8006FD40 844A00E6 */  lh         $t2, 0xe6($v0)
/* 70944 8006FD44 240B0200 */  addiu      $t3, $zero, 0x200
/* 70948 8006FD48 15400004 */  bnez       $t2, .L8006FD5C
/* 7094C 8006FD4C 3C014120 */   lui       $at, 0x4120
/* 70950 8006FD50 44813000 */  mtc1       $at, $f6
/* 70954 8006FD54 A44B00D0 */  sh         $t3, 0xd0($v0)
/* 70958 8006FD58 E446013C */  swc1       $f6, 0x13c($v0)
.L8006FD5C:
/* 7095C 8006FD5C 0C01A786 */  jal        func_80069E18
/* 70960 8006FD60 00000000 */   nop
.L8006FD64:
/* 70964 8006FD64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70968 8006FD68 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7096C 8006FD6C 03E00008 */  jr         $ra
/* 70970 8006FD70 00000000 */   nop

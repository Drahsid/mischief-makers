glabel func_8003F138
/* 3FD38 8003F138 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3FD3C 8003F13C E7AC0018 */  swc1       $f12, 0x18($sp)
/* 3FD40 8003F140 AFA5001C */  sw         $a1, 0x1c($sp)
/* 3FD44 8003F144 AFA60020 */  sw         $a2, 0x20($sp)
/* 3FD48 8003F148 AFA70024 */  sw         $a3, 0x24($sp)
/* 3FD4C 8003F14C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3FD50 8003F150 87A70026 */  lh         $a3, 0x26($sp)
/* 3FD54 8003F154 87A60022 */  lh         $a2, 0x22($sp)
/* 3FD58 8003F158 87A5001E */  lh         $a1, 0x1e($sp)
/* 3FD5C 8003F15C C7AC0018 */  lwc1       $f12, 0x18($sp)
/* 3FD60 8003F160 0C00FC17 */  jal        func_8003F05C
/* 3FD64 8003F164 00000000 */   nop
/* 3FD68 8003F168 1040000B */  beqz       $v0, .L8003F198
/* 3FD6C 8003F16C 3C0E0001 */   lui       $t6, 1
/* 3FD70 8003F170 00027880 */  sll        $t7, $v0, 2
/* 3FD74 8003F174 01E27823 */  subu       $t7, $t7, $v0
/* 3FD78 8003F178 000F7880 */  sll        $t7, $t7, 2
/* 3FD7C 8003F17C 01E27821 */  addu       $t7, $t7, $v0
/* 3FD80 8003F180 000F7880 */  sll        $t7, $t7, 2
/* 3FD84 8003F184 01E27823 */  subu       $t7, $t7, $v0
/* 3FD88 8003F188 000F78C0 */  sll        $t7, $t7, 3
/* 3FD8C 8003F18C 3C01800F */  lui        $at, %hi(D_800EF604)
/* 3FD90 8003F190 002F0821 */  addu       $at, $at, $t7
/* 3FD94 8003F194 AC2EF604 */  sw         $t6, %lo(D_800EF604)($at)
.L8003F198:
/* 3FD98 8003F198 87A70026 */  lh         $a3, 0x26($sp)
/* 3FD9C 8003F19C C7AC0018 */  lwc1       $f12, 0x18($sp)
/* 3FDA0 8003F1A0 24E70001 */  addiu      $a3, $a3, 1
/* 3FDA4 8003F1A4 0007C400 */  sll        $t8, $a3, 0x10
/* 3FDA8 8003F1A8 87A5001E */  lh         $a1, 0x1e($sp)
/* 3FDAC 8003F1AC 87A60022 */  lh         $a2, 0x22($sp)
/* 3FDB0 8003F1B0 0C00FBE6 */  jal        func_8003EF98
/* 3FDB4 8003F1B4 00183C03 */   sra       $a3, $t8, 0x10
/* 3FDB8 8003F1B8 1040000B */  beqz       $v0, .L8003F1E8
/* 3FDBC 8003F1BC 3C080002 */   lui       $t0, 2
/* 3FDC0 8003F1C0 00024880 */  sll        $t1, $v0, 2
/* 3FDC4 8003F1C4 01224823 */  subu       $t1, $t1, $v0
/* 3FDC8 8003F1C8 00094880 */  sll        $t1, $t1, 2
/* 3FDCC 8003F1CC 01224821 */  addu       $t1, $t1, $v0
/* 3FDD0 8003F1D0 00094880 */  sll        $t1, $t1, 2
/* 3FDD4 8003F1D4 01224823 */  subu       $t1, $t1, $v0
/* 3FDD8 8003F1D8 000948C0 */  sll        $t1, $t1, 3
/* 3FDDC 8003F1DC 3C01800F */  lui        $at, %hi(D_800EF604)
/* 3FDE0 8003F1E0 00290821 */  addu       $at, $at, $t1
/* 3FDE4 8003F1E4 AC28F604 */  sw         $t0, %lo(D_800EF604)($at)
.L8003F1E8:
/* 3FDE8 8003F1E8 87A70026 */  lh         $a3, 0x26($sp)
/* 3FDEC 8003F1EC C7AC0018 */  lwc1       $f12, 0x18($sp)
/* 3FDF0 8003F1F0 24E70002 */  addiu      $a3, $a3, 2
/* 3FDF4 8003F1F4 00075400 */  sll        $t2, $a3, 0x10
/* 3FDF8 8003F1F8 87A5001E */  lh         $a1, 0x1e($sp)
/* 3FDFC 8003F1FC 87A60022 */  lh         $a2, 0x22($sp)
/* 3FE00 8003F200 0C00FBB0 */  jal        func_8003EEC0
/* 3FE04 8003F204 000A3C03 */   sra       $a3, $t2, 0x10
/* 3FE08 8003F208 1040000B */  beqz       $v0, .L8003F238
/* 3FE0C 8003F20C 3C0C0003 */   lui       $t4, 3
/* 3FE10 8003F210 00026880 */  sll        $t5, $v0, 2
/* 3FE14 8003F214 01A26823 */  subu       $t5, $t5, $v0
/* 3FE18 8003F218 000D6880 */  sll        $t5, $t5, 2
/* 3FE1C 8003F21C 01A26821 */  addu       $t5, $t5, $v0
/* 3FE20 8003F220 000D6880 */  sll        $t5, $t5, 2
/* 3FE24 8003F224 01A26823 */  subu       $t5, $t5, $v0
/* 3FE28 8003F228 000D68C0 */  sll        $t5, $t5, 3
/* 3FE2C 8003F22C 3C01800F */  lui        $at, %hi(D_800EF604)
/* 3FE30 8003F230 002D0821 */  addu       $at, $at, $t5
/* 3FE34 8003F234 AC2CF604 */  sw         $t4, %lo(D_800EF604)($at)
.L8003F238:
/* 3FE38 8003F238 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3FE3C 8003F23C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3FE40 8003F240 03E00008 */  jr         $ra
/* 3FE44 8003F244 00000000 */   nop

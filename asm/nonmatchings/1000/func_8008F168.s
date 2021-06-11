glabel func_8008F168
/* 8FD68 8008F168 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8FD6C 8008F16C AFA40018 */  sw         $a0, 0x18($sp)
/* 8FD70 8008F170 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8FD74 8008F174 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8FD78 8008F178 0C023BEA */  jal        func_8008EFA8
/* 8FD7C 8008F17C 00000000 */   nop
/* 8FD80 8008F180 10400004 */  beqz       $v0, .L8008F194
/* 8FD84 8008F184 97A4001A */   lhu       $a0, 0x1a($sp)
/* 8FD88 8008F188 10000021 */  b          .L8008F210
/* 8FD8C 8008F18C 24020004 */   addiu     $v0, $zero, 4
/* 8FD90 8008F190 97A4001A */  lhu        $a0, 0x1a($sp)
.L8008F194:
/* 8FD94 8008F194 0C023BBE */  jal        func_8008EEF8
/* 8FD98 8008F198 00000000 */   nop
/* 8FD9C 8008F19C 10400004 */  beqz       $v0, .L8008F1B0
/* 8FDA0 8008F1A0 97A4001A */   lhu       $a0, 0x1a($sp)
/* 8FDA4 8008F1A4 1000001A */  b          .L8008F210
/* 8FDA8 8008F1A8 24020001 */   addiu     $v0, $zero, 1
/* 8FDAC 8008F1AC 97A4001A */  lhu        $a0, 0x1a($sp)
.L8008F1B0:
/* 8FDB0 8008F1B0 0C023B6C */  jal        func_8008EDB0
/* 8FDB4 8008F1B4 00000000 */   nop
/* 8FDB8 8008F1B8 10400003 */  beqz       $v0, .L8008F1C8
/* 8FDBC 8008F1BC 3C18800F */   lui       $t8, %hi(gActors)
/* 8FDC0 8008F1C0 10000013 */  b          .L8008F210
/* 8FDC4 8008F1C4 24020002 */   addiu     $v0, $zero, 2
.L8008F1C8:
/* 8FDC8 8008F1C8 97AE001A */  lhu        $t6, 0x1a($sp)
/* 8FDCC 8008F1CC 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8FDD0 8008F1D0 000E7880 */  sll        $t7, $t6, 2
/* 8FDD4 8008F1D4 01EE7823 */  subu       $t7, $t7, $t6
/* 8FDD8 8008F1D8 000F7880 */  sll        $t7, $t7, 2
/* 8FDDC 8008F1DC 01EE7821 */  addu       $t7, $t7, $t6
/* 8FDE0 8008F1E0 000F7880 */  sll        $t7, $t7, 2
/* 8FDE4 8008F1E4 01EE7823 */  subu       $t7, $t7, $t6
/* 8FDE8 8008F1E8 000F78C0 */  sll        $t7, $t7, 3
/* 8FDEC 8008F1EC 01F81821 */  addu       $v1, $t7, $t8
/* 8FDF0 8008F1F0 8C790098 */  lw         $t9, 0x98($v1)
/* 8FDF4 8008F1F4 24090150 */  addiu      $t1, $zero, 0x150
/* 8FDF8 8008F1F8 33280040 */  andi       $t0, $t9, 0x40
/* 8FDFC 8008F1FC 11000003 */  beqz       $t0, .L8008F20C
/* 8FE00 8008F200 24020003 */   addiu     $v0, $zero, 3
/* 8FE04 8008F204 10000002 */  b          .L8008F210
/* 8FE08 8008F208 A46900D0 */   sh        $t1, 0xd0($v1)
.L8008F20C:
/* 8FE0C 8008F20C 00001025 */  or         $v0, $zero, $zero
.L8008F210:
/* 8FE10 8008F210 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8FE14 8008F214 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8FE18 8008F218 03E00008 */  jr         $ra
/* 8FE1C 8008F21C 00000000 */   nop

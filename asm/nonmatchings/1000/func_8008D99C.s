glabel func_8008D99C
/* 8E59C 8008D99C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8E5A0 8008D9A0 AFA40018 */  sw         $a0, 0x18($sp)
/* 8E5A4 8008D9A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8E5A8 8008D9A8 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8E5AC 8008D9AC 0C023506 */  jal        func_8008D418
/* 8E5B0 8008D9B0 00000000 */   nop
/* 8E5B4 8008D9B4 14400018 */  bnez       $v0, .L8008DA18
/* 8E5B8 8008D9B8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8E5BC 8008D9BC 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8E5C0 8008D9C0 0C0233C4 */  jal        func_8008CF10
/* 8E5C4 8008D9C4 00000000 */   nop
/* 8E5C8 8008D9C8 97AE001A */  lhu        $t6, 0x1a($sp)
/* 8E5CC 8008D9CC 3C01800F */  lui        $at, 0x800f
/* 8E5D0 8008D9D0 000E7880 */  sll        $t7, $t6, 2
/* 8E5D4 8008D9D4 01EE7823 */  subu       $t7, $t7, $t6
/* 8E5D8 8008D9D8 000F7880 */  sll        $t7, $t7, 2
/* 8E5DC 8008D9DC 01EE7821 */  addu       $t7, $t7, $t6
/* 8E5E0 8008D9E0 000F7880 */  sll        $t7, $t7, 2
/* 8E5E4 8008D9E4 01EE7823 */  subu       $t7, $t7, $t6
/* 8E5E8 8008D9E8 000F78C0 */  sll        $t7, $t7, 3
/* 8E5EC 8008D9EC 002F0821 */  addu       $at, $at, $t7
/* 8E5F0 8008D9F0 C426F628 */  lwc1       $f6, -0x9d8($at)
/* 8E5F4 8008D9F4 44802000 */  mtc1       $zero, $f4
/* 8E5F8 8008D9F8 00000000 */  nop
/* 8E5FC 8008D9FC 46062032 */  c.eq.s     $f4, $f6
/* 8E600 8008DA00 00000000 */  nop
/* 8E604 8008DA04 45000004 */  bc1f       .L8008DA18
/* 8E608 8008DA08 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8E60C 8008DA0C 0C0233D8 */  jal        func_8008CF60
/* 8E610 8008DA10 01C02025 */   or        $a0, $t6, $zero
/* 8E614 8008DA14 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008DA18:
/* 8E618 8008DA18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8E61C 8008DA1C 03E00008 */  jr         $ra
/* 8E620 8008DA20 00000000 */   nop

glabel func_80033B54
/* 34754 80033B54 3086FFFF */  andi       $a2, $a0, 0xffff
/* 34758 80033B58 00067080 */  sll        $t6, $a2, 2
/* 3475C 80033B5C 01C67023 */  subu       $t6, $t6, $a2
/* 34760 80033B60 000E7080 */  sll        $t6, $t6, 2
/* 34764 80033B64 01C67021 */  addu       $t6, $t6, $a2
/* 34768 80033B68 000E7080 */  sll        $t6, $t6, 2
/* 3476C 80033B6C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 34770 80033B70 01C67023 */  subu       $t6, $t6, $a2
/* 34774 80033B74 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 34778 80033B78 AFB00018 */  sw         $s0, 0x18($sp)
/* 3477C 80033B7C 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 34780 80033B80 000E70C0 */  sll        $t6, $t6, 3
/* 34784 80033B84 01CF8021 */  addu       $s0, $t6, $t7
/* 34788 80033B88 961800D0 */  lhu        $t8, 0xd0($s0)
/* 3478C 80033B8C AFBF001C */  sw         $ra, 0x1c($sp)
/* 34790 80033B90 1700003C */  bnez       $t8, .L80033C84
/* 34794 80033B94 AFA40020 */   sw        $a0, 0x20($sp)
/* 34798 80033B98 3C013F80 */  lui        $at, 0x3f80
/* 3479C 80033B9C 44813000 */  mtc1       $at, $f6
/* 347A0 80033BA0 C6040110 */  lwc1       $f4, 0x110($s0)
/* 347A4 80033BA4 44808000 */  mtc1       $zero, $f16
/* 347A8 80033BA8 46062201 */  sub.s      $f8, $f4, $f6
/* 347AC 80033BAC E6080110 */  swc1       $f8, 0x110($s0)
/* 347B0 80033BB0 C60A0110 */  lwc1       $f10, 0x110($s0)
/* 347B4 80033BB4 00000000 */  nop
/* 347B8 80033BB8 4610503C */  c.lt.s     $f10, $f16
/* 347BC 80033BBC 00000000 */  nop
/* 347C0 80033BC0 45000003 */  bc1f       .L80033BD0
/* 347C4 80033BC4 00000000 */   nop
/* 347C8 80033BC8 10000035 */  b          .L80033CA0
/* 347CC 80033BCC AE000080 */   sw        $zero, 0x80($s0)
.L80033BD0:
/* 347D0 80033BD0 86040088 */  lh         $a0, 0x88($s0)
/* 347D4 80033BD4 8605008C */  lh         $a1, 0x8c($s0)
/* 347D8 80033BD8 0C004B01 */  jal        func_80012C04
/* 347DC 80033BDC A7A60022 */   sh        $a2, 0x22($sp)
/* 347E0 80033BE0 97A60022 */  lhu        $a2, 0x22($sp)
/* 347E4 80033BE4 3059007F */  andi       $t9, $v0, 0x7f
/* 347E8 80033BE8 13200015 */  beqz       $t9, .L80033C40
/* 347EC 80033BEC 3C01800F */   lui       $at, 0x800f
/* 347F0 80033BF0 960800D0 */  lhu        $t0, 0xd0($s0)
/* 347F4 80033BF4 860A008C */  lh         $t2, 0x8c($s0)
/* 347F8 80033BF8 25090001 */  addiu      $t1, $t0, 1
/* 347FC 80033BFC 254BFFFE */  addiu      $t3, $t2, -2
/* 34800 80033C00 A60900D0 */  sh         $t1, 0xd0($s0)
/* 34804 80033C04 A60B008C */  sh         $t3, 0x8c($s0)
/* 34808 80033C08 AE0000F0 */  sw         $zero, 0xf0($s0)
/* 3480C 80033C0C 3C01800F */  lui        $at, %hi(D_800EB96C)
/* 34810 80033C10 C432B96C */  lwc1       $f18, %lo(D_800EB96C)($at)
/* 34814 80033C14 3C01800F */  lui        $at, %hi(D_800EB970)
/* 34818 80033C18 E61200B4 */  swc1       $f18, 0xb4($s0)
/* 3481C 80033C1C C424B970 */  lwc1       $f4, %lo(D_800EB970)($at)
/* 34820 80033C20 240C0080 */  addiu      $t4, $zero, 0x80
/* 34824 80033C24 A20C009F */  sb         $t4, 0x9f($s0)
/* 34828 80033C28 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 3482C 80033C2C 00002825 */  or         $a1, $zero, $zero
/* 34830 80033C30 0C00ABAD */  jal        func_8002AEB4
/* 34834 80033C34 E60400B8 */   swc1      $f4, 0xb8($s0)
/* 34838 80033C38 1000001A */  b          .L80033CA4
/* 3483C 80033C3C 8FBF001C */   lw        $ra, 0x1c($sp)
.L80033C40:
/* 34840 80033C40 8E0D00F0 */  lw         $t5, 0xf0($s0)
/* 34844 80033C44 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 34848 80033C48 25AEE800 */  addiu      $t6, $t5, -0x1800
/* 3484C 80033C4C AE0E00F0 */  sw         $t6, 0xf0($s0)
/* 34850 80033C50 C42EB974 */  lwc1       $f14, -0x468c($at)
/* 34854 80033C54 3C063C23 */  lui        $a2, 0x3c23
/* 34858 80033C58 0C00A618 */  jal        func_80029860
/* 3485C 80033C5C 34C6D70A */   ori       $a2, $a2, 0xd70a
/* 34860 80033C60 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 34864 80033C64 3C01800F */  lui        $at, %hi(D_800EB978)
/* 34868 80033C68 C42EB978 */  lwc1       $f14, %lo(D_800EB978)($at)
/* 3486C 80033C6C C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 34870 80033C70 3C063C23 */  lui        $a2, 0x3c23
/* 34874 80033C74 0C00A618 */  jal        func_80029860
/* 34878 80033C78 34C6D70A */   ori       $a2, $a2, 0xd70a
/* 3487C 80033C7C 10000008 */  b          .L80033CA0
/* 34880 80033C80 E60000B8 */   swc1      $f0, 0xb8($s0)
.L80033C84:
/* 34884 80033C84 920F009F */  lbu        $t7, 0x9f($s0)
/* 34888 80033C88 00000000 */  nop
/* 3488C 80033C8C 25F8FFFC */  addiu      $t8, $t7, -4
/* 34890 80033C90 331900FF */  andi       $t9, $t8, 0xff
/* 34894 80033C94 17200002 */  bnez       $t9, .L80033CA0
/* 34898 80033C98 A218009F */   sb        $t8, 0x9f($s0)
/* 3489C 80033C9C AE000080 */  sw         $zero, 0x80($s0)
.L80033CA0:
/* 348A0 80033CA0 8FBF001C */  lw         $ra, 0x1c($sp)
.L80033CA4:
/* 348A4 80033CA4 8FB00018 */  lw         $s0, 0x18($sp)
/* 348A8 80033CA8 03E00008 */  jr         $ra
/* 348AC 80033CAC 27BD0020 */   addiu     $sp, $sp, 0x20

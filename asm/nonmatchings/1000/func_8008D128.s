glabel func_8008D128
/* 8DD28 8008D128 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8DD2C 8008D12C AFA40018 */  sw         $a0, 0x18($sp)
/* 8DD30 8008D130 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DD34 8008D134 97A4001A */  lhu        $a0, 0x1a($sp)
/* 8DD38 8008D138 0C00ABAD */  jal        func_8002AEB4
/* 8DD3C 8008D13C 2405007F */   addiu     $a1, $zero, 0x7f
/* 8DD40 8008D140 97AE001A */  lhu        $t6, 0x1a($sp)
/* 8DD44 8008D144 3C03800F */  lui        $v1, 0x800f
/* 8DD48 8008D148 000E7880 */  sll        $t7, $t6, 2
/* 8DD4C 8008D14C 01EE7823 */  subu       $t7, $t7, $t6
/* 8DD50 8008D150 000F7880 */  sll        $t7, $t7, 2
/* 8DD54 8008D154 01EE7821 */  addu       $t7, $t7, $t6
/* 8DD58 8008D158 000F7880 */  sll        $t7, $t7, 2
/* 8DD5C 8008D15C 01EE7823 */  subu       $t7, $t7, $t6
/* 8DD60 8008D160 2463F510 */  addiu      $v1, $v1, -0xaf0
/* 8DD64 8008D164 000F78C0 */  sll        $t7, $t7, 3
/* 8DD68 8008D168 006F1021 */  addu       $v0, $v1, $t7
/* 8DD6C 8008D16C 8C590080 */  lw         $t9, 0x80($v0)
/* 8DD70 8008D170 3C01FFFE */  lui        $at, 0xfffe
/* 8DD74 8008D174 3421FEFF */  ori        $at, $at, 0xfeff
/* 8DD78 8008D178 03214024 */  and        $t0, $t9, $at
/* 8DD7C 8008D17C 3C010002 */  lui        $at, 2
/* 8DD80 8008D180 01015025 */  or         $t2, $t0, $at
/* 8DD84 8008D184 3C013F80 */  lui        $at, 0x3f80
/* 8DD88 8008D188 44812000 */  mtc1       $at, $f4
/* 8DD8C 8008D18C 2418003C */  addiu      $t8, $zero, 0x3c
/* 8DD90 8008D190 AC480080 */  sw         $t0, 0x80($v0)
/* 8DD94 8008D194 A45800D4 */  sh         $t8, 0xd4($v0)
/* 8DD98 8008D198 AC4A0080 */  sw         $t2, 0x80($v0)
/* 8DD9C 8008D19C E4440118 */  swc1       $f4, 0x118($v0)
/* 8DDA0 8008D1A0 8C6400F8 */  lw         $a0, 0xf8($v1)
/* 8DDA4 8008D1A4 354E0020 */  ori        $t6, $t2, 0x20
/* 8DDA8 8008D1A8 AC440184 */  sw         $a0, 0x184($v0)
/* 8DDAC 8008D1AC 8C6C00FC */  lw         $t4, 0xfc($v1)
/* 8DDB0 8008D1B0 18800003 */  blez       $a0, .L8008D1C0
/* 8DDB4 8008D1B4 AC4C0188 */   sw        $t4, 0x188($v0)
/* 8DDB8 8008D1B8 10000007 */  b          .L8008D1D8
/* 8DDBC 8008D1BC AC4E0080 */   sw        $t6, 0x80($v0)
.L8008D1C0:
/* 8DDC0 8008D1C0 04810006 */  bgez       $a0, .L8008D1DC
/* 8DDC4 8008D1C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8DDC8 8008D1C8 8C4F0080 */  lw         $t7, 0x80($v0)
/* 8DDCC 8008D1CC 2401FFDF */  addiu      $at, $zero, -0x21
/* 8DDD0 8008D1D0 01E1C024 */  and        $t8, $t7, $at
/* 8DDD4 8008D1D4 AC580080 */  sw         $t8, 0x80($v0)
.L8008D1D8:
/* 8DDD8 8008D1D8 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008D1DC:
/* 8DDDC 8008D1DC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8DDE0 8008D1E0 03E00008 */  jr         $ra
/* 8DDE4 8008D1E4 00000000 */   nop

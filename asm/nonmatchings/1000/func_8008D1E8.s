glabel func_8008D1E8
/* 8DDE8 8008D1E8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DDEC 8008D1EC 000E7880 */  sll        $t7, $t6, 2
/* 8DDF0 8008D1F0 01EE7823 */  subu       $t7, $t7, $t6
/* 8DDF4 8008D1F4 000F7880 */  sll        $t7, $t7, 2
/* 8DDF8 8008D1F8 01EE7821 */  addu       $t7, $t7, $t6
/* 8DDFC 8008D1FC 000F7880 */  sll        $t7, $t7, 2
/* 8DE00 8008D200 3C03800F */  lui        $v1, %hi(D_800EF510)
/* 8DE04 8008D204 01EE7823 */  subu       $t7, $t7, $t6
/* 8DE08 8008D208 2463F510 */  addiu      $v1, $v1, %lo(D_800EF510)
/* 8DE0C 8008D20C 000F78C0 */  sll        $t7, $t7, 3
/* 8DE10 8008D210 006F1021 */  addu       $v0, $v1, $t7
/* 8DE14 8008D214 8C590080 */  lw         $t9, 0x80($v0)
/* 8DE18 8008D218 3C01FFFE */  lui        $at, 0xfffe
/* 8DE1C 8008D21C 3421FFFF */  ori        $at, $at, 0xffff
/* 8DE20 8008D220 03214024 */  and        $t0, $t9, $at
/* 8DE24 8008D224 3C010002 */  lui        $at, 2
/* 8DE28 8008D228 01015025 */  or         $t2, $t0, $at
/* 8DE2C 8008D22C 3C013F80 */  lui        $at, 0x3f80
/* 8DE30 8008D230 44812000 */  mtc1       $at, $f4
/* 8DE34 8008D234 3C0B800D */  lui        $t3, %hi(D_800D4958)
/* 8DE38 8008D238 241800A0 */  addiu      $t8, $zero, 0xa0
/* 8DE3C 8008D23C AC480080 */  sw         $t0, 0x80($v0)
/* 8DE40 8008D240 256B4958 */  addiu      $t3, $t3, %lo(D_800D4958)
/* 8DE44 8008D244 A45800D0 */  sh         $t8, 0xd0($v0)
/* 8DE48 8008D248 AC4A0080 */  sw         $t2, 0x80($v0)
/* 8DE4C 8008D24C AC4B018C */  sw         $t3, 0x18c($v0)
/* 8DE50 8008D250 E4440118 */  swc1       $f4, 0x118($v0)
/* 8DE54 8008D254 8C6500F8 */  lw         $a1, 0xf8($v1)
/* 8DE58 8008D258 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8DE5C 8008D25C AC450184 */  sw         $a1, 0x184($v0)
/* 8DE60 8008D260 8C6D00FC */  lw         $t5, 0xfc($v1)
/* 8DE64 8008D264 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DE68 8008D268 AFA40018 */  sw         $a0, 0x18($sp)
/* 8DE6C 8008D26C 18A00004 */  blez       $a1, .L8008D280
/* 8DE70 8008D270 AC4D0188 */   sw        $t5, 0x188($v0)
/* 8DE74 8008D274 354F0020 */  ori        $t7, $t2, 0x20
/* 8DE78 8008D278 10000007 */  b          .L8008D298
/* 8DE7C 8008D27C AC4F0080 */   sw        $t7, 0x80($v0)
.L8008D280:
/* 8DE80 8008D280 04A10005 */  bgez       $a1, .L8008D298
/* 8DE84 8008D284 00000000 */   nop
/* 8DE88 8008D288 8C580080 */  lw         $t8, 0x80($v0)
/* 8DE8C 8008D28C 2401FFDF */  addiu      $at, $zero, -0x21
/* 8DE90 8008D290 0301C824 */  and        $t9, $t8, $at
/* 8DE94 8008D294 AC590080 */  sw         $t9, 0x80($v0)
.L8008D298:
/* 8DE98 8008D298 0C000CD3 */  jal        func_8000334C
/* 8DE9C 8008D29C 24040063 */   addiu     $a0, $zero, 0x63
/* 8DEA0 8008D2A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8DEA4 8008D2A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8DEA8 8008D2A8 03E00008 */  jr         $ra
/* 8DEAC 8008D2AC 00000000 */   nop

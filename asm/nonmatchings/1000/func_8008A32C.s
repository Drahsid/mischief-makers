glabel func_8008A32C
/* 8AF2C 8008A32C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8AF30 8008A330 AFA40018 */  sw         $a0, 0x18($sp)
/* 8AF34 8008A334 97AE001A */  lhu        $t6, 0x1a($sp)
/* 8AF38 8008A338 3C18800F */  lui        $t8, 0x800f
/* 8AF3C 8008A33C 000E7880 */  sll        $t7, $t6, 2
/* 8AF40 8008A340 01EE7823 */  subu       $t7, $t7, $t6
/* 8AF44 8008A344 000F7880 */  sll        $t7, $t7, 2
/* 8AF48 8008A348 01EE7821 */  addu       $t7, $t7, $t6
/* 8AF4C 8008A34C 000F7880 */  sll        $t7, $t7, 2
/* 8AF50 8008A350 01EE7823 */  subu       $t7, $t7, $t6
/* 8AF54 8008A354 000F78C0 */  sll        $t7, $t7, 3
/* 8AF58 8008A358 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8AF5C 8008A35C 01F81021 */  addu       $v0, $t7, $t8
/* 8AF60 8008A360 8446008C */  lh         $a2, 0x8c($v0)
/* 8AF64 8008A364 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8AF68 8008A368 84450088 */  lh         $a1, 0x88($v0)
/* 8AF6C 8008A36C 3C04800E */  lui        $a0, %hi(D_800E1380)
/* 8AF70 8008A370 24841380 */  addiu      $a0, $a0, %lo(D_800E1380)
/* 8AF74 8008A374 24070002 */  addiu      $a3, $zero, 2
/* 8AF78 8008A378 0C00C48F */  jal        func_8003123C
/* 8AF7C 8008A37C 24C60018 */   addiu     $a2, $a2, 0x18
/* 8AF80 8008A380 10400022 */  beqz       $v0, .L8008A40C
/* 8AF84 8008A384 3C013F80 */   lui       $at, 0x3f80
/* 8AF88 8008A388 0002C880 */  sll        $t9, $v0, 2
/* 8AF8C 8008A38C 0322C823 */  subu       $t9, $t9, $v0
/* 8AF90 8008A390 0019C880 */  sll        $t9, $t9, 2
/* 8AF94 8008A394 0322C821 */  addu       $t9, $t9, $v0
/* 8AF98 8008A398 0019C880 */  sll        $t9, $t9, 2
/* 8AF9C 8008A39C 44810000 */  mtc1       $at, $f0
/* 8AFA0 8008A3A0 0322C823 */  subu       $t9, $t9, $v0
/* 8AFA4 8008A3A4 3C08800F */  lui        $t0, %hi(D_800EF510)
/* 8AFA8 8008A3A8 3C01800F */  lui        $at, %hi(D_800ED234)
/* 8AFAC 8008A3AC 2508F510 */  addiu      $t0, $t0, %lo(D_800EF510)
/* 8AFB0 8008A3B0 0019C8C0 */  sll        $t9, $t9, 3
/* 8AFB4 8008A3B4 C422D234 */  lwc1       $f2, %lo(D_800ED234)($at)
/* 8AFB8 8008A3B8 03281821 */  addu       $v1, $t9, $t0
/* 8AFBC 8008A3BC 44806000 */  mtc1       $zero, $f12
/* 8AFC0 8008A3C0 3C0B0001 */  lui        $t3, 1
/* 8AFC4 8008A3C4 24090011 */  addiu      $t1, $zero, 0x11
/* 8AFC8 8008A3C8 240A0170 */  addiu      $t2, $zero, 0x170
/* 8AFCC 8008A3CC 356B8000 */  ori        $t3, $t3, 0x8000
/* 8AFD0 8008A3D0 240CFF00 */  addiu      $t4, $zero, -0x100
/* 8AFD4 8008A3D4 240DFFF0 */  addiu      $t5, $zero, -0x10
/* 8AFD8 8008A3D8 A4690094 */  sh         $t1, 0x94($v1)
/* 8AFDC 8008A3DC A46A0084 */  sh         $t2, 0x84($v1)
/* 8AFE0 8008A3E0 AC6B00F0 */  sw         $t3, 0xf0($v1)
/* 8AFE4 8008A3E4 AC6C015C */  sw         $t4, 0x15c($v1)
/* 8AFE8 8008A3E8 AC60016C */  sw         $zero, 0x16c($v1)
/* 8AFEC 8008A3EC AC6D0154 */  sw         $t5, 0x154($v1)
/* 8AFF0 8008A3F0 AC600164 */  sw         $zero, 0x164($v1)
/* 8AFF4 8008A3F4 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 8AFF8 8008A3F8 E46000B8 */  swc1       $f0, 0xb8($v1)
/* 8AFFC 8008A3FC E4620110 */  swc1       $f2, 0x110($v1)
/* 8B000 8008A400 E4620114 */  swc1       $f2, 0x114($v1)
/* 8B004 8008A404 E46C0118 */  swc1       $f12, 0x118($v1)
/* 8B008 8008A408 E46C011C */  swc1       $f12, 0x11c($v1)
.L8008A40C:
/* 8B00C 8008A40C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8B010 8008A410 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8B014 8008A414 03E00008 */  jr         $ra
/* 8B018 8008A418 00000000 */   nop

glabel func_8008A41C
/* 8B01C 8008A41C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8B020 8008A420 AFA40018 */  sw         $a0, 0x18($sp)
/* 8B024 8008A424 97AE001A */  lhu        $t6, 0x1a($sp)
/* 8B028 8008A428 3C18800F */  lui        $t8, 0x800f
/* 8B02C 8008A42C 000E7880 */  sll        $t7, $t6, 2
/* 8B030 8008A430 01EE7823 */  subu       $t7, $t7, $t6
/* 8B034 8008A434 000F7880 */  sll        $t7, $t7, 2
/* 8B038 8008A438 01EE7821 */  addu       $t7, $t7, $t6
/* 8B03C 8008A43C 000F7880 */  sll        $t7, $t7, 2
/* 8B040 8008A440 01EE7823 */  subu       $t7, $t7, $t6
/* 8B044 8008A444 000F78C0 */  sll        $t7, $t7, 3
/* 8B048 8008A448 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 8B04C 8008A44C 01F81021 */  addu       $v0, $t7, $t8
/* 8B050 8008A450 8446008C */  lh         $a2, 0x8c($v0)
/* 8B054 8008A454 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8B058 8008A458 84450088 */  lh         $a1, 0x88($v0)
/* 8B05C 8008A45C 3C04800E */  lui        $a0, %hi(D_800E1380)
/* 8B060 8008A460 24841380 */  addiu      $a0, $a0, %lo(D_800E1380)
/* 8B064 8008A464 24070002 */  addiu      $a3, $zero, 2
/* 8B068 8008A468 0C00C48F */  jal        func_8003123C
/* 8B06C 8008A46C 24C60008 */   addiu     $a2, $a2, 8
/* 8B070 8008A470 10400022 */  beqz       $v0, .L8008A4FC
/* 8B074 8008A474 3C013F00 */   lui       $at, 0x3f00
/* 8B078 8008A478 0002C880 */  sll        $t9, $v0, 2
/* 8B07C 8008A47C 0322C823 */  subu       $t9, $t9, $v0
/* 8B080 8008A480 0019C880 */  sll        $t9, $t9, 2
/* 8B084 8008A484 0322C821 */  addu       $t9, $t9, $v0
/* 8B088 8008A488 0019C880 */  sll        $t9, $t9, 2
/* 8B08C 8008A48C 44810000 */  mtc1       $at, $f0
/* 8B090 8008A490 0322C823 */  subu       $t9, $t9, $v0
/* 8B094 8008A494 3C08800F */  lui        $t0, %hi(gActors)
/* 8B098 8008A498 3C01800F */  lui        $at, %hi(D_800ED238)
/* 8B09C 8008A49C 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 8B0A0 8008A4A0 0019C8C0 */  sll        $t9, $t9, 3
/* 8B0A4 8008A4A4 C422D238 */  lwc1       $f2, %lo(D_800ED238)($at)
/* 8B0A8 8008A4A8 03281821 */  addu       $v1, $t9, $t0
/* 8B0AC 8008A4AC 44806000 */  mtc1       $zero, $f12
/* 8B0B0 8008A4B0 3C0B0001 */  lui        $t3, 1
/* 8B0B4 8008A4B4 24090011 */  addiu      $t1, $zero, 0x11
/* 8B0B8 8008A4B8 240A0170 */  addiu      $t2, $zero, 0x170
/* 8B0BC 8008A4BC 356B8000 */  ori        $t3, $t3, 0x8000
/* 8B0C0 8008A4C0 240CFF00 */  addiu      $t4, $zero, -0x100
/* 8B0C4 8008A4C4 240DFFF0 */  addiu      $t5, $zero, -0x10
/* 8B0C8 8008A4C8 A4690094 */  sh         $t1, 0x94($v1)
/* 8B0CC 8008A4CC A46A0084 */  sh         $t2, 0x84($v1)
/* 8B0D0 8008A4D0 AC6B00F0 */  sw         $t3, 0xf0($v1)
/* 8B0D4 8008A4D4 AC6C015C */  sw         $t4, 0x15c($v1)
/* 8B0D8 8008A4D8 AC60016C */  sw         $zero, 0x16c($v1)
/* 8B0DC 8008A4DC AC6D0154 */  sw         $t5, 0x154($v1)
/* 8B0E0 8008A4E0 AC600164 */  sw         $zero, 0x164($v1)
/* 8B0E4 8008A4E4 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 8B0E8 8008A4E8 E46000B8 */  swc1       $f0, 0xb8($v1)
/* 8B0EC 8008A4EC E4620110 */  swc1       $f2, 0x110($v1)
/* 8B0F0 8008A4F0 E4620114 */  swc1       $f2, 0x114($v1)
/* 8B0F4 8008A4F4 E46C0118 */  swc1       $f12, 0x118($v1)
/* 8B0F8 8008A4F8 E46C011C */  swc1       $f12, 0x11c($v1)
.L8008A4FC:
/* 8B0FC 8008A4FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8B100 8008A500 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8B104 8008A504 03E00008 */  jr         $ra
/* 8B108 8008A508 00000000 */   nop

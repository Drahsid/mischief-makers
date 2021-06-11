glabel func_8007A3CC
/* 7AFCC 8007A3CC 3086FFFF */  andi       $a2, $a0, 0xffff
/* 7AFD0 8007A3D0 00067080 */  sll        $t6, $a2, 2
/* 7AFD4 8007A3D4 01C67023 */  subu       $t6, $t6, $a2
/* 7AFD8 8007A3D8 000E7080 */  sll        $t6, $t6, 2
/* 7AFDC 8007A3DC 01C67021 */  addu       $t6, $t6, $a2
/* 7AFE0 8007A3E0 000E7080 */  sll        $t6, $t6, 2
/* 7AFE4 8007A3E4 01C67023 */  subu       $t6, $t6, $a2
/* 7AFE8 8007A3E8 3C0F800F */  lui        $t7, %hi(gActors)
/* 7AFEC 8007A3EC 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 7AFF0 8007A3F0 000E70C0 */  sll        $t6, $t6, 3
/* 7AFF4 8007A3F4 01CF1821 */  addu       $v1, $t6, $t7
/* 7AFF8 8007A3F8 3C013F80 */  lui        $at, 0x3f80
/* 7AFFC 8007A3FC 44813000 */  mtc1       $at, $f6
/* 7B000 8007A400 C4640128 */  lwc1       $f4, 0x128($v1)
/* 7B004 8007A404 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7B008 8007A408 46062201 */  sub.s      $f8, $f4, $f6
/* 7B00C 8007A40C AFBF0014 */  sw         $ra, 0x14($sp)
/* 7B010 8007A410 AFA40028 */  sw         $a0, 0x28($sp)
/* 7B014 8007A414 E4680128 */  swc1       $f8, 0x128($v1)
/* 7B018 8007A418 24040070 */  addiu      $a0, $zero, 0x70
/* 7B01C 8007A41C AFA30020 */  sw         $v1, 0x20($sp)
/* 7B020 8007A420 0C00A12E */  jal        func_800284B8
/* 7B024 8007A424 2405007A */   addiu     $a1, $zero, 0x7a
/* 7B028 8007A428 8FA30020 */  lw         $v1, 0x20($sp)
/* 7B02C 8007A42C 1040001C */  beqz       $v0, .L8007A4A0
/* 7B030 8007A430 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7B034 8007A434 0004C080 */  sll        $t8, $a0, 2
/* 7B038 8007A438 0304C023 */  subu       $t8, $t8, $a0
/* 7B03C 8007A43C 0018C080 */  sll        $t8, $t8, 2
/* 7B040 8007A440 0304C021 */  addu       $t8, $t8, $a0
/* 7B044 8007A444 0018C080 */  sll        $t8, $t8, 2
/* 7B048 8007A448 0304C023 */  subu       $t8, $t8, $a0
/* 7B04C 8007A44C 3C19800F */  lui        $t9, %hi(gActors)
/* 7B050 8007A450 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 7B054 8007A454 0018C0C0 */  sll        $t8, $t8, 3
/* 7B058 8007A458 03192821 */  addu       $a1, $t8, $t9
/* 7B05C 8007A45C A4A000D2 */  sh         $zero, 0xd2($a1)
/* 7B060 8007A460 AFA5001C */  sw         $a1, 0x1c($sp)
/* 7B064 8007A464 AFA30020 */  sw         $v1, 0x20($sp)
/* 7B068 8007A468 0C0078B4 */  jal        func_8001E2D0
/* 7B06C 8007A46C A7A40026 */   sh        $a0, 0x26($sp)
/* 7B070 8007A470 8FA30020 */  lw         $v1, 0x20($sp)
/* 7B074 8007A474 8FA5001C */  lw         $a1, 0x1c($sp)
/* 7B078 8007A478 84680088 */  lh         $t0, 0x88($v1)
/* 7B07C 8007A47C 97A40026 */  lhu        $a0, 0x26($sp)
/* 7B080 8007A480 A4A80088 */  sh         $t0, 0x88($a1)
/* 7B084 8007A484 8469008C */  lh         $t1, 0x8c($v1)
/* 7B088 8007A488 00000000 */  nop
/* 7B08C 8007A48C A4A9008C */  sh         $t1, 0x8c($a1)
/* 7B090 8007A490 846A0090 */  lh         $t2, 0x90($v1)
/* 7B094 8007A494 00000000 */  nop
/* 7B098 8007A498 254BFFFF */  addiu      $t3, $t2, -1
/* 7B09C 8007A49C A4AB0090 */  sh         $t3, 0x90($a1)
.L8007A4A0:
/* 7B0A0 8007A4A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7B0A4 8007A4A4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7B0A8 8007A4A8 03E00008 */  jr         $ra
/* 7B0AC 8007A4AC 00801025 */   or        $v0, $a0, $zero

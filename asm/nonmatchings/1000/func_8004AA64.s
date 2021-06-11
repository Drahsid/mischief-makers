glabel func_8004AA64
/* 4B664 8004AA64 308EFFFF */  andi       $t6, $a0, 0xffff
/* 4B668 8004AA68 000E7880 */  sll        $t7, $t6, 2
/* 4B66C 8004AA6C 01EE7823 */  subu       $t7, $t7, $t6
/* 4B670 8004AA70 000F7880 */  sll        $t7, $t7, 2
/* 4B674 8004AA74 01EE7821 */  addu       $t7, $t7, $t6
/* 4B678 8004AA78 000F7880 */  sll        $t7, $t7, 2
/* 4B67C 8004AA7C 01EE7823 */  subu       $t7, $t7, $t6
/* 4B680 8004AA80 3C18800F */  lui        $t8, %hi(gActors)
/* 4B684 8004AA84 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 4B688 8004AA88 000F78C0 */  sll        $t7, $t7, 3
/* 4B68C 8004AA8C 01F81021 */  addu       $v0, $t7, $t8
/* 4B690 8004AA90 9059012E */  lbu        $t9, 0x12e($v0)
/* 4B694 8004AA94 904900D0 */  lbu        $t1, 0xd0($v0)
/* 4B698 8004AA98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4B69C 8004AA9C AFA40020 */  sw         $a0, 0x20($sp)
/* 4B6A0 8004AAA0 37280041 */  ori        $t0, $t9, 0x41
/* 4B6A4 8004AAA4 01C02025 */  or         $a0, $t6, $zero
/* 4B6A8 8004AAA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4B6AC 8004AAAC 15200019 */  bnez       $t1, .L8004AB14
/* 4B6B0 8004AAB0 A048012E */   sb        $t0, 0x12e($v0)
/* 4B6B4 8004AAB4 8C4B0080 */  lw         $t3, 0x80($v0)
/* 4B6B8 8004AAB8 3C013F80 */  lui        $at, 0x3f80
/* 4B6BC 8004AABC 44810000 */  mtc1       $at, $f0
/* 4B6C0 8004AAC0 3C038013 */  lui        $v1, %hi(D_801373E0)
/* 4B6C4 8004AAC4 3C010801 */  lui        $at, 0x801
/* 4B6C8 8004AAC8 316C0020 */  andi       $t4, $t3, 0x20
/* 4B6CC 8004AACC 246373E0 */  addiu      $v1, $v1, %lo(D_801373E0)
/* 4B6D0 8004AAD0 34211103 */  ori        $at, $at, 0x1103
/* 4B6D4 8004AAD4 240A0064 */  addiu      $t2, $zero, 0x64
/* 4B6D8 8004AAD8 AC4C0080 */  sw         $t4, 0x80($v0)
/* 4B6DC 8004AADC 01817025 */  or         $t6, $t4, $at
/* 4B6E0 8004AAE0 240F0001 */  addiu      $t7, $zero, 1
/* 4B6E4 8004AAE4 A4400142 */  sh         $zero, 0x142($v0)
/* 4B6E8 8004AAE8 A0400141 */  sb         $zero, 0x141($v0)
/* 4B6EC 8004AAEC AC400180 */  sw         $zero, 0x180($v0)
/* 4B6F0 8004AAF0 A0600013 */  sb         $zero, 0x13($v1)
/* 4B6F4 8004AAF4 A06A0012 */  sb         $t2, 0x12($v1)
/* 4B6F8 8004AAF8 A040012F */  sb         $zero, 0x12f($v0)
/* 4B6FC 8004AAFC AC4000F0 */  sw         $zero, 0xf0($v0)
/* 4B700 8004AB00 AC4000EC */  sw         $zero, 0xec($v0)
/* 4B704 8004AB04 AC4E0080 */  sw         $t6, 0x80($v0)
/* 4B708 8004AB08 A04F00D0 */  sb         $t7, 0xd0($v0)
/* 4B70C 8004AB0C E4400128 */  swc1       $f0, 0x128($v0)
/* 4B710 8004AB10 E4400124 */  swc1       $f0, 0x124($v0)
.L8004AB14:
/* 4B714 8004AB14 AC40017C */  sw         $zero, 0x17c($v0)
/* 4B718 8004AB18 24050001 */  addiu      $a1, $zero, 1
/* 4B71C 8004AB1C 0C0174DC */  jal        func_8005D370
/* 4B720 8004AB20 AFA2001C */   sw        $v0, 0x1c($sp)
/* 4B724 8004AB24 8FA2001C */  lw         $v0, 0x1c($sp)
/* 4B728 8004AB28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4B72C 8004AB2C 24180003 */  addiu      $t8, $zero, 3
/* 4B730 8004AB30 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4B734 8004AB34 03E00008 */  jr         $ra
/* 4B738 8004AB38 A45800D0 */   sh        $t8, 0xd0($v0)

glabel func_8001DBA0
/* 1E7A0 8001DBA0 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 1E7A4 8001DBA4 000E7880 */  sll        $t7, $t6, 2
/* 1E7A8 8001DBA8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1E7AC 8001DBAC 01EE7823 */  subu       $t7, $t7, $t6
/* 1E7B0 8001DBB0 000F7880 */  sll        $t7, $t7, 2
/* 1E7B4 8001DBB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E7B8 8001DBB8 AFA50024 */  sw         $a1, 0x24($sp)
/* 1E7BC 8001DBBC 01EE7821 */  addu       $t7, $t7, $t6
/* 1E7C0 8001DBC0 9499000A */  lhu        $t9, 0xa($a0)
/* 1E7C4 8001DBC4 000F7880 */  sll        $t7, $t7, 2
/* 1E7C8 8001DBC8 01EE7823 */  subu       $t7, $t7, $t6
/* 1E7CC 8001DBCC 3C18800F */  lui        $t8, %hi(gActors)
/* 1E7D0 8001DBD0 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 1E7D4 8001DBD4 000F78C0 */  sll        $t7, $t7, 3
/* 1E7D8 8001DBD8 00803025 */  or         $a2, $a0, $zero
/* 1E7DC 8001DBDC 01F81021 */  addu       $v0, $t7, $t8
/* 1E7E0 8001DBE0 AFA2001C */  sw         $v0, 0x1c($sp)
/* 1E7E4 8001DBE4 AFA60020 */  sw         $a2, 0x20($sp)
/* 1E7E8 8001DBE8 31C4FFFF */  andi       $a0, $t6, 0xffff
/* 1E7EC 8001DBEC 0C0078B4 */  jal        func_8001E2D0
/* 1E7F0 8001DBF0 A45900D2 */   sh        $t9, 0xd2($v0)
/* 1E7F4 8001DBF4 8FA60020 */  lw         $a2, 0x20($sp)
/* 1E7F8 8001DBF8 3C09800C */  lui        $t1, %hi(D_800BE558)
/* 1E7FC 8001DBFC 8529E558 */  lh         $t1, %lo(D_800BE558)($t1)
/* 1E800 8001DC00 94C80002 */  lhu        $t0, 2($a2)
/* 1E804 8001DC04 8FA2001C */  lw         $v0, 0x1c($sp)
/* 1E808 8001DC08 01095023 */  subu       $t2, $t0, $t1
/* 1E80C 8001DC0C A44A0088 */  sh         $t2, 0x88($v0)
/* 1E810 8001DC10 3C0C800C */  lui        $t4, %hi(D_800BE55C)
/* 1E814 8001DC14 858CE55C */  lh         $t4, %lo(D_800BE55C)($t4)
/* 1E818 8001DC18 94CB0004 */  lhu        $t3, 4($a2)
/* 1E81C 8001DC1C 3C014F80 */  lui        $at, 0x4f80
/* 1E820 8001DC20 016C6823 */  subu       $t5, $t3, $t4
/* 1E824 8001DC24 A44D008C */  sh         $t5, 0x8c($v0)
/* 1E828 8001DC28 94CE0006 */  lhu        $t6, 6($a2)
/* 1E82C 8001DC2C 00000000 */  nop
/* 1E830 8001DC30 448E2000 */  mtc1       $t6, $f4
/* 1E834 8001DC34 05C10004 */  bgez       $t6, .L8001DC48
/* 1E838 8001DC38 468021A0 */   cvt.s.w   $f6, $f4
/* 1E83C 8001DC3C 44814000 */  mtc1       $at, $f8
/* 1E840 8001DC40 00000000 */  nop
/* 1E844 8001DC44 46083180 */  add.s      $f6, $f6, $f8
.L8001DC48:
/* 1E848 8001DC48 E4460110 */  swc1       $f6, 0x110($v0)
/* 1E84C 8001DC4C 94CF0008 */  lhu        $t7, 8($a2)
/* 1E850 8001DC50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E854 8001DC54 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1E858 8001DC58 03E00008 */  jr         $ra
/* 1E85C 8001DC5C A44F00D8 */   sh        $t7, 0xd8($v0)

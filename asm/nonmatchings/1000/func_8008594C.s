glabel func_8008594C
/* 8654C 8008594C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 86550 80085950 000EC080 */  sll        $t8, $t6, 2
/* 86554 80085954 030EC023 */  subu       $t8, $t8, $t6
/* 86558 80085958 0018C080 */  sll        $t8, $t8, 2
/* 8655C 8008595C 030EC021 */  addu       $t8, $t8, $t6
/* 86560 80085960 0018C080 */  sll        $t8, $t8, 2
/* 86564 80085964 030EC023 */  subu       $t8, $t8, $t6
/* 86568 80085968 3C19800F */  lui        $t9, %hi(gActors)
/* 8656C 8008596C 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 86570 80085970 0018C0C0 */  sll        $t8, $t8, 3
/* 86574 80085974 03191021 */  addu       $v0, $t8, $t9
/* 86578 80085978 8C480168 */  lw         $t0, 0x168($v0)
/* 8657C 8008597C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 86580 80085980 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 86584 80085984 AFA40018 */  sw         $a0, 0x18($sp)
/* 86588 80085988 010F4823 */  subu       $t1, $t0, $t7
/* 8658C 8008598C 01C02025 */  or         $a0, $t6, $zero
/* 86590 80085990 AFBF0014 */  sw         $ra, 0x14($sp)
/* 86594 80085994 AFA5001C */  sw         $a1, 0x1c($sp)
/* 86598 80085998 1D200005 */  bgtz       $t1, .L800859B0
/* 8659C 8008599C AC490168 */   sw        $t1, 0x168($v0)
/* 865A0 800859A0 0C021671 */  jal        func_800859C4
/* 865A4 800859A4 00000000 */   nop
/* 865A8 800859A8 10000002 */  b          .L800859B4
/* 865AC 800859AC 24020001 */   addiu     $v0, $zero, 1
.L800859B0:
/* 865B0 800859B0 00001025 */  or         $v0, $zero, $zero
.L800859B4:
/* 865B4 800859B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 865B8 800859B8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 865BC 800859BC 03E00008 */  jr         $ra
/* 865C0 800859C0 00000000 */   nop

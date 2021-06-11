glabel func_80089984
/* 8A584 80089984 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8A588 80089988 000EC080 */  sll        $t8, $t6, 2
/* 8A58C 8008998C 030EC023 */  subu       $t8, $t8, $t6
/* 8A590 80089990 0018C080 */  sll        $t8, $t8, 2
/* 8A594 80089994 030EC021 */  addu       $t8, $t8, $t6
/* 8A598 80089998 0018C080 */  sll        $t8, $t8, 2
/* 8A59C 8008999C 030EC023 */  subu       $t8, $t8, $t6
/* 8A5A0 800899A0 3C19800F */  lui        $t9, %hi(gActors)
/* 8A5A4 800899A4 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 8A5A8 800899A8 0018C0C0 */  sll        $t8, $t8, 3
/* 8A5AC 800899AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8A5B0 800899B0 03191021 */  addu       $v0, $t8, $t9
/* 8A5B4 800899B4 8C430190 */  lw         $v1, 0x190($v0)
/* 8A5B8 800899B8 AFA40018 */  sw         $a0, 0x18($sp)
/* 8A5BC 800899BC AFA5001C */  sw         $a1, 0x1c($sp)
/* 8A5C0 800899C0 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 8A5C4 800899C4 01E02825 */  or         $a1, $t7, $zero
/* 8A5C8 800899C8 01C02025 */  or         $a0, $t6, $zero
/* 8A5CC 800899CC 1460000A */  bnez       $v1, .L800899F8
/* 8A5D0 800899D0 AFBF0014 */   sw        $ra, 0x14($sp)
/* 8A5D4 800899D4 944800D8 */  lhu        $t0, 0xd8($v0)
/* 8A5D8 800899D8 3C06800E */  lui        $a2, %hi(D_800E4440)
/* 8A5DC 800899DC 00084880 */  sll        $t1, $t0, 2
/* 8A5E0 800899E0 00C93021 */  addu       $a2, $a2, $t1
/* 8A5E4 800899E4 8CC64440 */  lw         $a2, %lo(D_800E4440)($a2)
/* 8A5E8 800899E8 0C022605 */  jal        func_80089814
/* 8A5EC 800899EC 00000000 */   nop
/* 8A5F0 800899F0 10000004 */  b          .L80089A04
/* 8A5F4 800899F4 8FBF0014 */   lw        $ra, 0x14($sp)
.L800899F8:
/* 8A5F8 800899F8 0C022605 */  jal        func_80089814
/* 8A5FC 800899FC 00603025 */   or        $a2, $v1, $zero
/* 8A600 80089A00 8FBF0014 */  lw         $ra, 0x14($sp)
.L80089A04:
/* 8A604 80089A04 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8A608 80089A08 03E00008 */  jr         $ra
/* 8A60C 80089A0C 00000000 */   nop

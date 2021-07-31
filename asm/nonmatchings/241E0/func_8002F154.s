glabel func_8002F154
/* 2FD54 8002F154 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FD58 8002F158 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FD5C 8002F15C AFA40018 */  sw         $a0, 0x18($sp)
/* 2FD60 8002F160 AFA5001C */  sw         $a1, 0x1c($sp)
/* 2FD64 8002F164 AFA60020 */  sw         $a2, 0x20($sp)
/* 2FD68 8002F168 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2FD6C 8002F16C 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 2FD70 8002F170 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 2FD74 8002F174 03003025 */  or         $a2, $t8, $zero
/* 2FD78 8002F178 01E02825 */  or         $a1, $t7, $zero
/* 2FD7C 8002F17C 0C00BBF9 */  jal        func_8002EFE4
/* 2FD80 8002F180 01C02025 */   or        $a0, $t6, $zero
/* 2FD84 8002F184 1040000C */  beqz       $v0, .L8002F1B8
/* 2FD88 8002F188 3043FFFF */   andi      $v1, $v0, 0xffff
/* 2FD8C 8002F18C 00024080 */  sll        $t0, $v0, 2
/* 2FD90 8002F190 01024023 */  subu       $t0, $t0, $v0
/* 2FD94 8002F194 00084080 */  sll        $t0, $t0, 2
/* 2FD98 8002F198 01024021 */  addu       $t0, $t0, $v0
/* 2FD9C 8002F19C 00084080 */  sll        $t0, $t0, 2
/* 2FDA0 8002F1A0 01024023 */  subu       $t0, $t0, $v0
/* 2FDA4 8002F1A4 000840C0 */  sll        $t0, $t0, 3
/* 2FDA8 8002F1A8 3C01800F */  lui        $at, %hi(gActors+0xD2)
/* 2FDAC 8002F1AC 00280821 */  addu       $at, $at, $t0
/* 2FDB0 8002F1B0 2419003D */  addiu      $t9, $zero, 0x3d
/* 2FDB4 8002F1B4 A439F5E2 */  sh         $t9, %lo(gActors+0xD2)($at)
.L8002F1B8:
/* 2FDB8 8002F1B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FDBC 8002F1BC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2FDC0 8002F1C0 03E00008 */  jr         $ra
/* 2FDC4 8002F1C4 00601025 */   or        $v0, $v1, $zero

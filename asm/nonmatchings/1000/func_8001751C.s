glabel func_8001751C
/* 1811C 8001751C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 18120 80017520 3C0E800C */  lui        $t6, %hi(D_800BE670)
/* 18124 80017524 95CEE670 */  lhu        $t6, %lo(D_800BE670)($t6)
/* 18128 80017528 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1812C 8001752C AFB40028 */  sw         $s4, 0x28($sp)
/* 18130 80017530 AFB30024 */  sw         $s3, 0x24($sp)
/* 18134 80017534 AFB20020 */  sw         $s2, 0x20($sp)
/* 18138 80017538 AFB1001C */  sw         $s1, 0x1c($sp)
/* 1813C 8001753C 11C00027 */  beqz       $t6, .L800175DC
/* 18140 80017540 AFB00018 */   sw        $s0, 0x18($sp)
/* 18144 80017544 3C13800C */  lui        $s3, %hi(D_800C7FE0)
/* 18148 80017548 3C11800F */  lui        $s1, %hi(D_800EF510)
/* 1814C 8001754C 2631F510 */  addiu      $s1, $s1, %lo(D_800EF510)
/* 18150 80017550 26737FE0 */  addiu      $s3, $s3, %lo(D_800C7FE0)
/* 18154 80017554 24100001 */  addiu      $s0, $zero, 1
/* 18158 80017558 3C140400 */  lui        $s4, 0x400
/* 1815C 8001755C 24120198 */  addiu      $s2, $zero, 0x198
.L80017560:
/* 18160 80017560 02120019 */  multu      $s0, $s2
/* 18164 80017564 00007812 */  mflo       $t7
/* 18168 80017568 022F1021 */  addu       $v0, $s1, $t7
/* 1816C 8001756C 8C430080 */  lw         $v1, 0x80($v0)
/* 18170 80017570 00000000 */  nop
/* 18174 80017574 30780002 */  andi       $t8, $v1, 2
/* 18178 80017578 13000011 */  beqz       $t8, .L800175C0
/* 1817C 8001757C 0074C824 */   and       $t9, $v1, $s4
/* 18180 80017580 1320000F */  beqz       $t9, .L800175C0
/* 18184 80017584 00000000 */   nop
/* 18188 80017588 944300D2 */  lhu        $v1, 0xd2($v0)
/* 1818C 8001758C 00000000 */  nop
/* 18190 80017590 28610100 */  slti       $at, $v1, 0x100
/* 18194 80017594 10200008 */  beqz       $at, .L800175B8
/* 18198 80017598 00034080 */   sll       $t0, $v1, 2
/* 1819C 8001759C 02684821 */  addu       $t1, $s3, $t0
/* 181A0 800175A0 8D390000 */  lw         $t9, ($t1)
/* 181A4 800175A4 3204FFFF */  andi       $a0, $s0, 0xffff
/* 181A8 800175A8 0320F809 */  jalr       $t9
/* 181AC 800175AC 00000000 */   nop
/* 181B0 800175B0 10000004 */  b          .L800175C4
/* 181B4 800175B4 26100001 */   addiu     $s0, $s0, 1
.L800175B8:
/* 181B8 800175B8 0C005B9C */  jal        func_80016E70
/* 181BC 800175BC 3204FFFF */   andi      $a0, $s0, 0xffff
.L800175C0:
/* 181C0 800175C0 26100001 */  addiu      $s0, $s0, 1
.L800175C4:
/* 181C4 800175C4 320AFFFF */  andi       $t2, $s0, 0xffff
/* 181C8 800175C8 294100D0 */  slti       $at, $t2, 0xd0
/* 181CC 800175CC 1420FFE4 */  bnez       $at, .L80017560
/* 181D0 800175D0 01408025 */   or        $s0, $t2, $zero
/* 181D4 800175D4 10000023 */  b          .L80017664
/* 181D8 800175D8 8FBF002C */   lw        $ra, 0x2c($sp)
.L800175DC:
/* 181DC 800175DC 3C13800C */  lui        $s3, %hi(D_800C7FE0)
/* 181E0 800175E0 3C11800F */  lui        $s1, %hi(D_800EF510)
/* 181E4 800175E4 2631F510 */  addiu      $s1, $s1, %lo(D_800EF510)
/* 181E8 800175E8 26737FE0 */  addiu      $s3, $s3, %lo(D_800C7FE0)
/* 181EC 800175EC 24100001 */  addiu      $s0, $zero, 1
/* 181F0 800175F0 24120198 */  addiu      $s2, $zero, 0x198
.L800175F4:
/* 181F4 800175F4 02120019 */  multu      $s0, $s2
/* 181F8 800175F8 00005812 */  mflo       $t3
/* 181FC 800175FC 022B1021 */  addu       $v0, $s1, $t3
/* 18200 80017600 8C4C0080 */  lw         $t4, 0x80($v0)
/* 18204 80017604 00000000 */  nop
/* 18208 80017608 318D0002 */  andi       $t5, $t4, 2
/* 1820C 8001760C 11A0000F */  beqz       $t5, .L8001764C
/* 18210 80017610 00000000 */   nop
/* 18214 80017614 944300D2 */  lhu        $v1, 0xd2($v0)
/* 18218 80017618 00000000 */  nop
/* 1821C 8001761C 28610100 */  slti       $at, $v1, 0x100
/* 18220 80017620 10200008 */  beqz       $at, .L80017644
/* 18224 80017624 00037080 */   sll       $t6, $v1, 2
/* 18228 80017628 026E7821 */  addu       $t7, $s3, $t6
/* 1822C 8001762C 8DF90000 */  lw         $t9, ($t7)
/* 18230 80017630 3204FFFF */  andi       $a0, $s0, 0xffff
/* 18234 80017634 0320F809 */  jalr       $t9
/* 18238 80017638 00000000 */   nop
/* 1823C 8001763C 10000004 */  b          .L80017650
/* 18240 80017640 26100001 */   addiu     $s0, $s0, 1
.L80017644:
/* 18244 80017644 0C005B9C */  jal        func_80016E70
/* 18248 80017648 3204FFFF */   andi      $a0, $s0, 0xffff
.L8001764C:
/* 1824C 8001764C 26100001 */  addiu      $s0, $s0, 1
.L80017650:
/* 18250 80017650 3218FFFF */  andi       $t8, $s0, 0xffff
/* 18254 80017654 2B0100D0 */  slti       $at, $t8, 0xd0
/* 18258 80017658 1420FFE6 */  bnez       $at, .L800175F4
/* 1825C 8001765C 03008025 */   or        $s0, $t8, $zero
/* 18260 80017660 8FBF002C */  lw         $ra, 0x2c($sp)
.L80017664:
/* 18264 80017664 8FB00018 */  lw         $s0, 0x18($sp)
/* 18268 80017668 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1826C 8001766C 8FB20020 */  lw         $s2, 0x20($sp)
/* 18270 80017670 8FB30024 */  lw         $s3, 0x24($sp)
/* 18274 80017674 8FB40028 */  lw         $s4, 0x28($sp)
/* 18278 80017678 03E00008 */  jr         $ra
/* 1827C 8001767C 27BD0030 */   addiu     $sp, $sp, 0x30

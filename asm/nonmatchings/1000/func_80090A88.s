glabel func_80090A88
/* 91688 80090A88 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9168C 80090A8C AFB00018 */  sw         $s0, 0x18($sp)
/* 91690 80090A90 3090FFFF */  andi       $s0, $a0, 0xffff
/* 91694 80090A94 AFBF001C */  sw         $ra, 0x1c($sp)
/* 91698 80090A98 AFA40030 */  sw         $a0, 0x30($sp)
/* 9169C 80090A9C 0C023C5A */  jal        func_8008F168
/* 916A0 80090AA0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 916A4 80090AA4 14400051 */  bnez       $v0, .L80090BEC
/* 916A8 80090AA8 3C07800F */   lui       $a3, 0x800f
/* 916AC 80090AAC 00107080 */  sll        $t6, $s0, 2
/* 916B0 80090AB0 01D07023 */  subu       $t6, $t6, $s0
/* 916B4 80090AB4 000E7080 */  sll        $t6, $t6, 2
/* 916B8 80090AB8 01D07021 */  addu       $t6, $t6, $s0
/* 916BC 80090ABC 000E7080 */  sll        $t6, $t6, 2
/* 916C0 80090AC0 01D07023 */  subu       $t6, $t6, $s0
/* 916C4 80090AC4 24E7F510 */  addiu      $a3, $a3, -0xaf0
/* 916C8 80090AC8 000E70C0 */  sll        $t6, $t6, 3
/* 916CC 80090ACC 00EE1821 */  addu       $v1, $a3, $t6
/* 916D0 80090AD0 946400D0 */  lhu        $a0, 0xd0($v1)
/* 916D4 80090AD4 24010110 */  addiu      $at, $zero, 0x110
/* 916D8 80090AD8 10810006 */  beq        $a0, $at, .L80090AF4
/* 916DC 80090ADC 00801025 */   or        $v0, $a0, $zero
/* 916E0 80090AE0 24010111 */  addiu      $at, $zero, 0x111
/* 916E4 80090AE4 10410032 */  beq        $v0, $at, .L80090BB0
/* 916E8 80090AE8 00104880 */   sll       $t1, $s0, 2
/* 916EC 80090AEC 10000040 */  b          .L80090BF0
/* 916F0 80090AF0 8FBF001C */   lw        $ra, 0x1c($sp)
.L80090AF4:
/* 916F4 80090AF4 00104080 */  sll        $t0, $s0, 2
/* 916F8 80090AF8 01104023 */  subu       $t0, $t0, $s0
/* 916FC 80090AFC 00084080 */  sll        $t0, $t0, 2
/* 91700 80090B00 01104021 */  addu       $t0, $t0, $s0
/* 91704 80090B04 8C780080 */  lw         $t8, 0x80($v1)
/* 91708 80090B08 00084080 */  sll        $t0, $t0, 2
/* 9170C 80090B0C 01104023 */  subu       $t0, $t0, $s0
/* 91710 80090B10 248F0001 */  addiu      $t7, $a0, 1
/* 91714 80090B14 000840C0 */  sll        $t0, $t0, 3
/* 91718 80090B18 37191000 */  ori        $t9, $t8, 0x1000
/* 9171C 80090B1C A46F00D0 */  sh         $t7, 0xd0($v1)
/* 91720 80090B20 AC790080 */  sw         $t9, 0x80($v1)
/* 91724 80090B24 00E83021 */  addu       $a2, $a3, $t0
/* 91728 80090B28 94C20270 */  lhu        $v0, 0x270($a2)
/* 9172C 80090B2C 24010002 */  addiu      $at, $zero, 2
/* 91730 80090B30 1041000E */  beq        $v0, $at, .L80090B6C
/* 91734 80090B34 3204FFFF */   andi      $a0, $s0, 0xffff
/* 91738 80090B38 24010003 */  addiu      $at, $zero, 3
/* 9173C 80090B3C 10410004 */  beq        $v0, $at, .L80090B50
/* 91740 80090B40 3204FFFF */   andi      $a0, $s0, 0xffff
/* 91744 80090B44 24010005 */  addiu      $at, $zero, 5
/* 91748 80090B48 1441000F */  bne        $v0, $at, .L80090B88
/* 9174C 80090B4C 3C05800F */   lui       $a1, 0x800f
.L80090B50:
/* 91750 80090B50 3C05800F */  lui        $a1, %hi(D_800E8EAC)
/* 91754 80090B54 24A58EAC */  addiu      $a1, $a1, %lo(D_800E8EAC)
/* 91758 80090B58 0C0205E4 */  jal        func_80081790
/* 9175C 80090B5C AFA60020 */   sw        $a2, 0x20($sp)
/* 91760 80090B60 8FA60020 */  lw         $a2, 0x20($sp)
/* 91764 80090B64 1000000E */  b          .L80090BA0
/* 91768 80090B68 00000000 */   nop
.L80090B6C:
/* 9176C 80090B6C 3C05800F */  lui        $a1, %hi(D_800E8F4C)
/* 91770 80090B70 24A58F4C */  addiu      $a1, $a1, %lo(D_800E8F4C)
/* 91774 80090B74 0C0205E4 */  jal        func_80081790
/* 91778 80090B78 AFA60020 */   sw        $a2, 0x20($sp)
/* 9177C 80090B7C 8FA60020 */  lw         $a2, 0x20($sp)
/* 91780 80090B80 10000007 */  b          .L80090BA0
/* 91784 80090B84 00000000 */   nop
.L80090B88:
/* 91788 80090B88 3204FFFF */  andi       $a0, $s0, 0xffff
/* 9178C 80090B8C 24A589D4 */  addiu      $a1, $a1, -0x762c
/* 91790 80090B90 0C0205E4 */  jal        func_80081790
/* 91794 80090B94 AFA60020 */   sw        $a2, 0x20($sp)
/* 91798 80090B98 8FA60020 */  lw         $a2, 0x20($sp)
/* 9179C 80090B9C 00000000 */  nop
.L80090BA0:
/* 917A0 80090BA0 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 917A4 80090BA4 ACC004B0 */  sw         $zero, 0x4b0($a2)
/* 917A8 80090BA8 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 917AC 80090BAC 00104880 */  sll        $t1, $s0, 2
.L80090BB0:
/* 917B0 80090BB0 01304823 */  subu       $t1, $t1, $s0
/* 917B4 80090BB4 00094880 */  sll        $t1, $t1, 2
/* 917B8 80090BB8 01304821 */  addu       $t1, $t1, $s0
/* 917BC 80090BBC 00094880 */  sll        $t1, $t1, 2
/* 917C0 80090BC0 01304823 */  subu       $t1, $t1, $s0
/* 917C4 80090BC4 000948C0 */  sll        $t1, $t1, 3
/* 917C8 80090BC8 00E93021 */  addu       $a2, $a3, $t1
/* 917CC 80090BCC 8CC204B0 */  lw         $v0, 0x4b0($a2)
/* 917D0 80090BD0 00000000 */  nop
/* 917D4 80090BD4 28417FFF */  slti       $at, $v0, 0x7fff
/* 917D8 80090BD8 10200002 */  beqz       $at, .L80090BE4
/* 917DC 80090BDC 244A0001 */   addiu     $t2, $v0, 1
/* 917E0 80090BE0 ACCA04B0 */  sw         $t2, 0x4b0($a2)
.L80090BE4:
/* 917E4 80090BE4 0C023C42 */  jal        func_8008F108
/* 917E8 80090BE8 3204FFFF */   andi      $a0, $s0, 0xffff
.L80090BEC:
/* 917EC 80090BEC 8FBF001C */  lw         $ra, 0x1c($sp)
.L80090BF0:
/* 917F0 80090BF0 8FB00018 */  lw         $s0, 0x18($sp)
/* 917F4 80090BF4 03E00008 */  jr         $ra
/* 917F8 80090BF8 27BD0030 */   addiu     $sp, $sp, 0x30

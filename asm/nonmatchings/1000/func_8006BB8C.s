glabel func_8006BB8C
/* 6C78C 8006BB8C 3C0E800E */  lui        $t6, %hi(D_800E3580)
/* 6C790 8006BB90 95CE3580 */  lhu        $t6, %lo(D_800E3580)($t6)
/* 6C794 8006BB94 24080198 */  addiu      $t0, $zero, 0x198
/* 6C798 8006BB98 01C80019 */  multu      $t6, $t0
/* 6C79C 8006BB9C 3086FFFF */  andi       $a2, $a0, 0xffff
/* 6C7A0 8006BBA0 3C07800F */  lui        $a3, %hi(D_800EF510)
/* 6C7A4 8006BBA4 24E7F510 */  addiu      $a3, $a3, %lo(D_800EF510)
/* 6C7A8 8006BBA8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6C7AC 8006BBAC AFBF001C */  sw         $ra, 0x1c($sp)
/* 6C7B0 8006BBB0 AFA40028 */  sw         $a0, 0x28($sp)
/* 6C7B4 8006BBB4 AFA5002C */  sw         $a1, 0x2c($sp)
/* 6C7B8 8006BBB8 00007812 */  mflo       $t7
/* 6C7BC 8006BBBC 00EF1021 */  addu       $v0, $a3, $t7
/* 6C7C0 8006BBC0 84590088 */  lh         $t9, 0x88($v0)
/* 6C7C4 8006BBC4 00C80019 */  multu      $a2, $t0
/* 6C7C8 8006BBC8 844A008C */  lh         $t2, 0x8c($v0)
/* 6C7CC 8006BBCC 0000C012 */  mflo       $t8
/* 6C7D0 8006BBD0 00F81821 */  addu       $v1, $a3, $t8
/* 6C7D4 8006BBD4 84690088 */  lh         $t1, 0x88($v1)
/* 6C7D8 8006BBD8 846B008C */  lh         $t3, 0x8c($v1)
/* 6C7DC 8006BBDC AFA30020 */  sw         $v1, 0x20($sp)
/* 6C7E0 8006BBE0 03292023 */  subu       $a0, $t9, $t1
/* 6C7E4 8006BBE4 0C00A580 */  jal        func_80029600
/* 6C7E8 8006BBE8 014B2823 */   subu      $a1, $t2, $t3
/* 6C7EC 8006BBEC 3C08800C */  lui        $t0, %hi(D_800BCCD0)
/* 6C7F0 8006BBF0 304C03FF */  andi       $t4, $v0, 0x3ff
/* 6C7F4 8006BBF4 2508CCD0 */  addiu      $t0, $t0, %lo(D_800BCCD0)
/* 6C7F8 8006BBF8 000C6880 */  sll        $t5, $t4, 2
/* 6C7FC 8006BBFC 3C014838 */  lui        $at, 0x4838
/* 6C800 8006BC00 010D7021 */  addu       $t6, $t0, $t5
/* 6C804 8006BC04 44810000 */  mtc1       $at, $f0
/* 6C808 8006BC08 C5C40000 */  lwc1       $f4, ($t6)
/* 6C80C 8006BC0C 2458FF00 */  addiu      $t8, $v0, -0x100
/* 6C810 8006BC10 46002182 */  mul.s      $f6, $f4, $f0
/* 6C814 8006BC14 331903FF */  andi       $t9, $t8, 0x3ff
/* 6C818 8006BC18 00194880 */  sll        $t1, $t9, 2
/* 6C81C 8006BC1C 01095021 */  addu       $t2, $t0, $t1
/* 6C820 8006BC20 444FF800 */  cfc1       $t7, $31
/* 6C824 8006BC24 C54A0000 */  lwc1       $f10, ($t2)
/* 6C828 8006BC28 35E10003 */  ori        $at, $t7, 3
/* 6C82C 8006BC2C 38210002 */  xori       $at, $at, 2
/* 6C830 8006BC30 44C1F800 */  ctc1       $at, $31
/* 6C834 8006BC34 8FA30020 */  lw         $v1, 0x20($sp)
/* 6C838 8006BC38 46003224 */  cvt.w.s    $f8, $f6
/* 6C83C 8006BC3C 97A4002E */  lhu        $a0, 0x2e($sp)
/* 6C840 8006BC40 44CFF800 */  ctc1       $t7, $31
/* 6C844 8006BC44 44074000 */  mfc1       $a3, $f8
/* 6C848 8006BC48 46005402 */  mul.s      $f16, $f10, $f0
/* 6C84C 8006BC4C 84650088 */  lh         $a1, 0x88($v1)
/* 6C850 8006BC50 8466008C */  lh         $a2, 0x8c($v1)
/* 6C854 8006BC54 444BF800 */  cfc1       $t3, $31
/* 6C858 8006BC58 00000000 */  nop
/* 6C85C 8006BC5C 35610003 */  ori        $at, $t3, 3
/* 6C860 8006BC60 38210002 */  xori       $at, $at, 2
/* 6C864 8006BC64 44C1F800 */  ctc1       $at, $31
/* 6C868 8006BC68 00000000 */  nop
/* 6C86C 8006BC6C 460084A4 */  cvt.w.s    $f18, $f16
/* 6C870 8006BC70 440C9000 */  mfc1       $t4, $f18
/* 6C874 8006BC74 44CBF800 */  ctc1       $t3, $31
/* 6C878 8006BC78 0C00BAEE */  jal        func_8002EBB8
/* 6C87C 8006BC7C AFAC0010 */   sw        $t4, 0x10($sp)
/* 6C880 8006BC80 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6C884 8006BC84 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6C888 8006BC88 03E00008 */  jr         $ra
/* 6C88C 8006BC8C 00000000 */   nop

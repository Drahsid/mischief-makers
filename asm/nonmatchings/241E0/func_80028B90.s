glabel func_80028B90
/* 29790 80028B90 308EFFFF */  andi       $t6, $a0, 0xffff
/* 29794 80028B94 24070198 */  addiu      $a3, $zero, 0x198
/* 29798 80028B98 01C70019 */  multu      $t6, $a3
/* 2979C 80028B9C 3C06800F */  lui        $a2, %hi(gActors)
/* 297A0 80028BA0 24C6F510 */  addiu      $a2, $a2, %lo(gActors)
/* 297A4 80028BA4 AFA40000 */  sw         $a0, ($sp)
/* 297A8 80028BA8 00007812 */  mflo       $t7
/* 297AC 80028BAC 00CF1821 */  addu       $v1, $a2, $t7
/* 297B0 80028BB0 946200D6 */  lhu        $v0, 0xd6($v1)
/* 297B4 80028BB4 84790088 */  lh         $t9, 0x88($v1)
/* 297B8 80028BB8 00470019 */  multu      $v0, $a3
/* 297BC 80028BBC 0000C012 */  mflo       $t8
/* 297C0 80028BC0 00D82821 */  addu       $a1, $a2, $t8
/* 297C4 80028BC4 84A80088 */  lh         $t0, 0x88($a1)
/* 297C8 80028BC8 00000000 */  nop
/* 297CC 80028BCC 0328082A */  slt        $at, $t9, $t0
/* 297D0 80028BD0 10200006 */  beqz       $at, .L80028BEC
/* 297D4 80028BD4 00000000 */   nop
/* 297D8 80028BD8 8CA900F8 */  lw         $t1, 0xf8($a1)
/* 297DC 80028BDC 00000000 */  nop
/* 297E0 80028BE0 00095023 */  negu       $t2, $t1
/* 297E4 80028BE4 03E00008 */  jr         $ra
/* 297E8 80028BE8 AC6A00F8 */   sw        $t2, 0xf8($v1)
.L80028BEC:
/* 297EC 80028BEC 8CAB00F8 */  lw         $t3, 0xf8($a1)
/* 297F0 80028BF0 00000000 */  nop
/* 297F4 80028BF4 AC6B00F8 */  sw         $t3, 0xf8($v1)
/* 297F8 80028BF8 03E00008 */  jr         $ra
/* 297FC 80028BFC 00000000 */   nop
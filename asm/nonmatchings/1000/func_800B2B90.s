glabel func_800B2B90
/* B3790 800B2B90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B3794 800B2B94 AFA5000C */  sw         $a1, 0xc($sp)
/* B3798 800B2B98 24AE0020 */  addiu      $t6, $a1, 0x20
/* B379C 800B2B9C AFAE0008 */  sw         $t6, 8($sp)
/* B37A0 800B2BA0 AFA0001C */  sw         $zero, 0x1c($sp)
.L800B2BA4:
/* B37A4 800B2BA4 AFA00018 */  sw         $zero, 0x18($sp)
.L800B2BA8:
/* B37A8 800B2BA8 8FAF0008 */  lw         $t7, 8($sp)
/* B37AC 800B2BAC 8FA9000C */  lw         $t1, 0xc($sp)
/* B37B0 800B2BB0 3C01FFFF */  lui        $at, 0xffff
/* B37B4 800B2BB4 8DF80000 */  lw         $t8, ($t7)
/* B37B8 800B2BB8 8D2A0000 */  lw         $t2, ($t1)
/* B37BC 800B2BBC 0018CC02 */  srl        $t9, $t8, 0x10
/* B37C0 800B2BC0 3328FFFF */  andi       $t0, $t9, 0xffff
/* B37C4 800B2BC4 01415824 */  and        $t3, $t2, $at
/* B37C8 800B2BC8 010B6025 */  or         $t4, $t0, $t3
/* B37CC 800B2BCC AFAC0014 */  sw         $t4, 0x14($sp)
/* B37D0 800B2BD0 8FB8000C */  lw         $t8, 0xc($sp)
/* B37D4 800B2BD4 8FAD0008 */  lw         $t5, 8($sp)
/* B37D8 800B2BD8 3C01FFFF */  lui        $at, 0xffff
/* B37DC 800B2BDC 8F190000 */  lw         $t9, ($t8)
/* B37E0 800B2BE0 8DAE0000 */  lw         $t6, ($t5)
/* B37E4 800B2BE4 270B0004 */  addiu      $t3, $t8, 4
/* B37E8 800B2BE8 00194C00 */  sll        $t1, $t9, 0x10
/* B37EC 800B2BEC 01215024 */  and        $t2, $t1, $at
/* B37F0 800B2BF0 31CFFFFF */  andi       $t7, $t6, 0xffff
/* B37F4 800B2BF4 01EA4025 */  or         $t0, $t7, $t2
/* B37F8 800B2BF8 25AC0004 */  addiu      $t4, $t5, 4
/* B37FC 800B2BFC AFAC0008 */  sw         $t4, 8($sp)
/* B3800 800B2C00 AFA80010 */  sw         $t0, 0x10($sp)
/* B3804 800B2C04 AFAB000C */  sw         $t3, 0xc($sp)
/* B3808 800B2C08 27AE0014 */  addiu      $t6, $sp, 0x14
/* B380C 800B2C0C 8DD90000 */  lw         $t9, ($t6)
/* B3810 800B2C10 AFB90004 */  sw         $t9, 4($sp)
/* B3814 800B2C14 27A90010 */  addiu      $t1, $sp, 0x10
/* B3818 800B2C18 8D2F0000 */  lw         $t7, ($t1)
/* B381C 800B2C1C AFAF0000 */  sw         $t7, ($sp)
/* B3820 800B2C20 8FAA0004 */  lw         $t2, 4($sp)
/* B3824 800B2C24 3C014780 */  lui        $at, 0x4780
/* B3828 800B2C28 44814000 */  mtc1       $at, $f8
/* B382C 800B2C2C 448A2000 */  mtc1       $t2, $f4
/* B3830 800B2C30 8FA8001C */  lw         $t0, 0x1c($sp)
/* B3834 800B2C34 8FAD0018 */  lw         $t5, 0x18($sp)
/* B3838 800B2C38 468021A0 */  cvt.s.w    $f6, $f4
/* B383C 800B2C3C 0008C100 */  sll        $t8, $t0, 4
/* B3840 800B2C40 000D6040 */  sll        $t4, $t5, 1
/* B3844 800B2C44 000C7080 */  sll        $t6, $t4, 2
/* B3848 800B2C48 00985821 */  addu       $t3, $a0, $t8
/* B384C 800B2C4C 016EC821 */  addu       $t9, $t3, $t6
/* B3850 800B2C50 46083283 */  div.s      $f10, $f6, $f8
/* B3854 800B2C54 E72A0000 */  swc1       $f10, ($t9)
/* B3858 800B2C58 8FA90000 */  lw         $t1, ($sp)
/* B385C 800B2C5C 3C014780 */  lui        $at, 0x4780
/* B3860 800B2C60 44812000 */  mtc1       $at, $f4
/* B3864 800B2C64 44898000 */  mtc1       $t1, $f16
/* B3868 800B2C68 8FAF001C */  lw         $t7, 0x1c($sp)
/* B386C 800B2C6C 8FB80018 */  lw         $t8, 0x18($sp)
/* B3870 800B2C70 468084A0 */  cvt.s.w    $f18, $f16
/* B3874 800B2C74 000F5100 */  sll        $t2, $t7, 4
/* B3878 800B2C78 00186840 */  sll        $t5, $t8, 1
/* B387C 800B2C7C 000D6080 */  sll        $t4, $t5, 2
/* B3880 800B2C80 008A4021 */  addu       $t0, $a0, $t2
/* B3884 800B2C84 010C5821 */  addu       $t3, $t0, $t4
/* B3888 800B2C88 46049183 */  div.s      $f6, $f18, $f4
/* B388C 800B2C8C E5660004 */  swc1       $f6, 4($t3)
/* B3890 800B2C90 8FAE0018 */  lw         $t6, 0x18($sp)
/* B3894 800B2C94 25D90001 */  addiu      $t9, $t6, 1
/* B3898 800B2C98 2B210002 */  slti       $at, $t9, 2
/* B389C 800B2C9C 1420FFC2 */  bnez       $at, .L800B2BA8
/* B38A0 800B2CA0 AFB90018 */   sw        $t9, 0x18($sp)
/* B38A4 800B2CA4 8FA9001C */  lw         $t1, 0x1c($sp)
/* B38A8 800B2CA8 252F0001 */  addiu      $t7, $t1, 1
/* B38AC 800B2CAC 29E10004 */  slti       $at, $t7, 4
/* B38B0 800B2CB0 1420FFBC */  bnez       $at, .L800B2BA4
/* B38B4 800B2CB4 AFAF001C */   sw        $t7, 0x1c($sp)
/* B38B8 800B2CB8 10000001 */  b          .L800B2CC0
/* B38BC 800B2CBC 00000000 */   nop
.L800B2CC0:
/* B38C0 800B2CC0 03E00008 */  jr         $ra
/* B38C4 800B2CC4 27BD0020 */   addiu     $sp, $sp, 0x20

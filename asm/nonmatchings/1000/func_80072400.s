glabel func_80072400
/* 73000 80072400 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 73004 80072404 AFA40020 */  sw         $a0, 0x20($sp)
/* 73008 80072408 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7300C 8007240C 97A40022 */  lhu        $a0, 0x22($sp)
/* 73010 80072410 0C01B2D3 */  jal        func_8006CB4C
/* 73014 80072414 00000000 */   nop
/* 73018 80072418 1440007D */  bnez       $v0, .L80072610
/* 7301C 8007241C 3C0F800F */   lui       $t7, %hi(gActors)
/* 73020 80072420 97A70022 */  lhu        $a3, 0x22($sp)
/* 73024 80072424 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 73028 80072428 00077080 */  sll        $t6, $a3, 2
/* 7302C 8007242C 01C77023 */  subu       $t6, $t6, $a3
/* 73030 80072430 000E7080 */  sll        $t6, $t6, 2
/* 73034 80072434 01C77021 */  addu       $t6, $t6, $a3
/* 73038 80072438 000E7080 */  sll        $t6, $t6, 2
/* 7303C 8007243C 01C77023 */  subu       $t6, $t6, $a3
/* 73040 80072440 000E70C0 */  sll        $t6, $t6, 3
/* 73044 80072444 01CF1821 */  addu       $v1, $t6, $t7
/* 73048 80072448 946400D0 */  lhu        $a0, 0xd0($v1)
/* 7304C 8007244C 24010420 */  addiu      $at, $zero, 0x420
/* 73050 80072450 1081000B */  beq        $a0, $at, .L80072480
/* 73054 80072454 00801025 */   or        $v0, $a0, $zero
/* 73058 80072458 24010421 */  addiu      $at, $zero, 0x421
/* 7305C 8007245C 10410024 */  beq        $v0, $at, .L800724F0
/* 73060 80072460 24010422 */   addiu     $at, $zero, 0x422
/* 73064 80072464 10410044 */  beq        $v0, $at, .L80072578
/* 73068 80072468 248E0001 */   addiu     $t6, $a0, 1
/* 7306C 8007246C 24010423 */  addiu      $at, $zero, 0x423
/* 73070 80072470 10410058 */  beq        $v0, $at, .L800725D4
/* 73074 80072474 3C013F80 */   lui       $at, 0x3f80
/* 73078 80072478 10000066 */  b          .L80072614
/* 7307C 8007247C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80072480:
/* 73080 80072480 8C790080 */  lw         $t9, 0x80($v1)
/* 73084 80072484 3C010002 */  lui        $at, 2
/* 73088 80072488 03214025 */  or         $t0, $t9, $at
/* 7308C 8007248C 3C01FFFE */  lui        $at, 0xfffe
/* 73090 80072490 3421FFFF */  ori        $at, $at, 0xffff
/* 73094 80072494 8C6B0098 */  lw         $t3, 0x98($v1)
/* 73098 80072498 01015024 */  and        $t2, $t0, $at
/* 7309C 8007249C 444FF800 */  cfc1       $t7, $31
/* 730A0 800724A0 2401FFDF */  addiu      $at, $zero, -0x21
/* 730A4 800724A4 01616024 */  and        $t4, $t3, $at
/* 730A8 800724A8 35E10003 */  ori        $at, $t7, 3
/* 730AC 800724AC 38210002 */  xori       $at, $at, 2
/* 730B0 800724B0 44C1F800 */  ctc1       $at, $31
/* 730B4 800724B4 C4640118 */  lwc1       $f4, 0x118($v1)
/* 730B8 800724B8 24980001 */  addiu      $t8, $a0, 1
/* 730BC 800724BC 460021A4 */  cvt.w.s    $f6, $f4
/* 730C0 800724C0 A47800D0 */  sh         $t8, 0xd0($v1)
/* 730C4 800724C4 44183000 */  mfc1       $t8, $f6
/* 730C8 800724C8 3C0D800E */  lui        $t5, %hi(D_800E22A8)
/* 730CC 800724CC 44CFF800 */  ctc1       $t7, $31
/* 730D0 800724D0 AC680080 */  sw         $t0, 0x80($v1)
/* 730D4 800724D4 25AD22A8 */  addiu      $t5, $t5, %lo(D_800E22A8)
/* 730D8 800724D8 240E0001 */  addiu      $t6, $zero, 1
/* 730DC 800724DC AC6A0080 */  sw         $t2, 0x80($v1)
/* 730E0 800724E0 AC6C0098 */  sw         $t4, 0x98($v1)
/* 730E4 800724E4 A46E00E6 */  sh         $t6, 0xe6($v1)
/* 730E8 800724E8 AC6D00E8 */  sw         $t5, 0xe8($v1)
/* 730EC 800724EC AC7800F0 */  sw         $t8, 0xf0($v1)
.L800724F0:
/* 730F0 800724F0 8C6400EC */  lw         $a0, 0xec($v1)
/* 730F4 800724F4 00002825 */  or         $a1, $zero, $zero
/* 730F8 800724F8 24060800 */  addiu      $a2, $zero, 0x800
/* 730FC 800724FC 0C00A607 */  jal        func_8002981C
/* 73100 80072500 AFA30018 */   sw        $v1, 0x18($sp)
/* 73104 80072504 8FA30018 */  lw         $v1, 0x18($sp)
/* 73108 80072508 00000000 */  nop
/* 7310C 8007250C 8C7900F0 */  lw         $t9, 0xf0($v1)
/* 73110 80072510 AC6200EC */  sw         $v0, 0xec($v1)
/* 73114 80072514 0721000D */  bgez       $t9, .L8007254C
/* 73118 80072518 00000000 */   nop
/* 7311C 8007251C 8C680098 */  lw         $t0, 0x98($v1)
/* 73120 80072520 24040094 */  addiu      $a0, $zero, 0x94
/* 73124 80072524 31090020 */  andi       $t1, $t0, 0x20
/* 73128 80072528 1120000E */  beqz       $t1, .L80072564
/* 7312C 8007252C 00000000 */   nop
/* 73130 80072530 946A00D0 */  lhu        $t2, 0xd0($v1)
/* 73134 80072534 97A50022 */  lhu        $a1, 0x22($sp)
/* 73138 80072538 254B0001 */  addiu      $t3, $t2, 1
/* 7313C 8007253C 0C000DB2 */  jal        func_800036C8
/* 73140 80072540 A46B00D0 */   sh        $t3, 0xd0($v1)
/* 73144 80072544 10000008 */  b          .L80072568
/* 73148 80072548 97A40022 */   lhu       $a0, 0x22($sp)
.L8007254C:
/* 7314C 8007254C 8C6C0098 */  lw         $t4, 0x98($v1)
/* 73150 80072550 00000000 */  nop
/* 73154 80072554 318D0010 */  andi       $t5, $t4, 0x10
/* 73158 80072558 11A00003 */  beqz       $t5, .L80072568
/* 7315C 8007255C 97A40022 */   lhu       $a0, 0x22($sp)
/* 73160 80072560 AC6000F0 */  sw         $zero, 0xf0($v1)
.L80072564:
/* 73164 80072564 97A40022 */  lhu        $a0, 0x22($sp)
.L80072568:
/* 73168 80072568 0C01A76A */  jal        func_80069DA8
/* 7316C 8007256C 00000000 */   nop
/* 73170 80072570 10000028 */  b          .L80072614
/* 73174 80072574 8FBF0014 */   lw        $ra, 0x14($sp)
.L80072578:
/* 73178 80072578 8C790080 */  lw         $t9, 0x80($v1)
/* 7317C 8007257C 3C010001 */  lui        $at, 1
/* 73180 80072580 03214025 */  or         $t0, $t9, $at
/* 73184 80072584 3C01FFFD */  lui        $at, 0xfffd
/* 73188 80072588 3421FFFF */  ori        $at, $at, 0xffff
/* 7318C 8007258C 8C6B0098 */  lw         $t3, 0x98($v1)
/* 73190 80072590 01015024 */  and        $t2, $t0, $at
/* 73194 80072594 2401FFBF */  addiu      $at, $zero, -0x41
/* 73198 80072598 01616024 */  and        $t4, $t3, $at
/* 7319C 8007259C 3C014080 */  lui        $at, 0x4080
/* 731A0 800725A0 44814000 */  mtc1       $at, $f8
/* 731A4 800725A4 3C0F800E */  lui        $t7, %hi(D_800E22B4)
/* 731A8 800725A8 25EF22B4 */  addiu      $t7, $t7, %lo(D_800E22B4)
/* 731AC 800725AC 24180001 */  addiu      $t8, $zero, 1
/* 731B0 800725B0 AC680080 */  sw         $t0, 0x80($v1)
/* 731B4 800725B4 A46E00D0 */  sh         $t6, 0xd0($v1)
/* 731B8 800725B8 A47800E6 */  sh         $t8, 0xe6($v1)
/* 731BC 800725BC AC6F00E8 */  sw         $t7, 0xe8($v1)
/* 731C0 800725C0 AC6A0080 */  sw         $t2, 0x80($v1)
/* 731C4 800725C4 AC6C0098 */  sw         $t4, 0x98($v1)
/* 731C8 800725C8 AC6000F0 */  sw         $zero, 0xf0($v1)
/* 731CC 800725CC E4680144 */  swc1       $f8, 0x144($v1)
/* 731D0 800725D0 3C013F80 */  lui        $at, 0x3f80
.L800725D4:
/* 731D4 800725D4 44818000 */  mtc1       $at, $f16
/* 731D8 800725D8 C46A0120 */  lwc1       $f10, 0x120($v1)
/* 731DC 800725DC 44803000 */  mtc1       $zero, $f6
/* 731E0 800725E0 46105481 */  sub.s      $f18, $f10, $f16
/* 731E4 800725E4 240D0210 */  addiu      $t5, $zero, 0x210
/* 731E8 800725E8 E4720120 */  swc1       $f18, 0x120($v1)
/* 731EC 800725EC C4640120 */  lwc1       $f4, 0x120($v1)
/* 731F0 800725F0 00000000 */  nop
/* 731F4 800725F4 4606203C */  c.lt.s     $f4, $f6
/* 731F8 800725F8 00000000 */  nop
/* 731FC 800725FC 45000002 */  bc1f       .L80072608
/* 73200 80072600 00000000 */   nop
/* 73204 80072604 A46D00D0 */  sh         $t5, 0xd0($v1)
.L80072608:
/* 73208 80072608 0C01A6E5 */  jal        func_80069B94
/* 7320C 8007260C 30E4FFFF */   andi      $a0, $a3, 0xffff
.L80072610:
/* 73210 80072610 8FBF0014 */  lw         $ra, 0x14($sp)
.L80072614:
/* 73214 80072614 27BD0020 */  addiu      $sp, $sp, 0x20
/* 73218 80072618 03E00008 */  jr         $ra
/* 7321C 8007261C 00000000 */   nop

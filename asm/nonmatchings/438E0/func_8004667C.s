glabel func_8004667C
/* 4727C 8004667C 3C02800F */  lui        $v0, %hi(D_800EF600)
/* 47280 80046680 8C42F600 */  lw         $v0, %lo(D_800EF600)($v0)
/* 47284 80046684 3C01FFFD */  lui        $at, 0xfffd
/* 47288 80046688 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4728C 8004668C 0041082A */  slt        $at, $v0, $at
/* 47290 80046690 10200009 */  beqz       $at, .L800466B8
/* 47294 80046694 AFBF0014 */   sw        $ra, 0x14($sp)
/* 47298 80046698 3C048018 */  lui        $a0, %hi(D_801782B4)
/* 4729C 8004669C 8C8482B4 */  lw         $a0, %lo(D_801782B4)($a0)
/* 472A0 800466A0 3C05FFC0 */  lui        $a1, 0xffc0
/* 472A4 800466A4 0C00A607 */  jal        func_8002981C
/* 472A8 800466A8 3C060002 */   lui       $a2, 2
/* 472AC 800466AC 3C018018 */  lui        $at, %hi(D_801782B4)
/* 472B0 800466B0 10000030 */  b          .L80046774
/* 472B4 800466B4 AC2282B4 */   sw        $v0, %lo(D_801782B4)($at)
.L800466B8:
/* 472B8 800466B8 3C010003 */  lui        $at, 3
/* 472BC 800466BC 34210001 */  ori        $at, $at, 1
/* 472C0 800466C0 0041082A */  slt        $at, $v0, $at
/* 472C4 800466C4 14200008 */  bnez       $at, .L800466E8
/* 472C8 800466C8 3C048018 */   lui       $a0, %hi(D_801782B4)
/* 472CC 800466CC 8C8482B4 */  lw         $a0, %lo(D_801782B4)($a0)
/* 472D0 800466D0 00002825 */  or         $a1, $zero, $zero
/* 472D4 800466D4 0C00A607 */  jal        func_8002981C
/* 472D8 800466D8 3C060002 */   lui       $a2, 2
/* 472DC 800466DC 3C018018 */  lui        $at, %hi(D_801782B4)
/* 472E0 800466E0 10000024 */  b          .L80046774
/* 472E4 800466E4 AC2282B4 */   sw        $v0, %lo(D_801782B4)($at)
.L800466E8:
/* 472E8 800466E8 0C01197D */  jal        func_800465F4
/* 472EC 800466EC 00000000 */   nop
/* 472F0 800466F0 10400005 */  beqz       $v0, .L80046708
/* 472F4 800466F4 3C0E800C */   lui       $t6, 0x800c
/* 472F8 800466F8 0C011993 */  jal        func_8004664C
/* 472FC 800466FC 00000000 */   nop
/* 47300 80046700 1000001C */  b          .L80046774
/* 47304 80046704 00000000 */   nop
.L80046708:
/* 47308 80046708 3C02800C */  lui        $v0, %hi(gButtonHold)
/* 4730C 8004670C 9442E4F8 */  lhu        $v0, %lo(gButtonHold)($v0)
/* 47310 80046710 95CEE504 */  lhu        $t6, -0x1afc($t6)
/* 47314 80046714 3C048018 */  lui        $a0, %hi(D_801782B4)
/* 47318 80046718 004E7824 */  and        $t7, $v0, $t6
/* 4731C 8004671C 11E00008 */  beqz       $t7, .L80046740
/* 47320 80046720 3C18800C */   lui       $t8, 0x800c
/* 47324 80046724 8C8482B4 */  lw         $a0, %lo(D_801782B4)($a0)
/* 47328 80046728 3C050020 */  lui        $a1, 0x20
/* 4732C 8004672C 0C00A607 */  jal        func_8002981C
/* 47330 80046730 3C060002 */   lui       $a2, 2
/* 47334 80046734 3C018018 */  lui        $at, %hi(D_801782B4)
/* 47338 80046738 1000000E */  b          .L80046774
/* 4733C 8004673C AC2282B4 */   sw        $v0, %lo(D_801782B4)($at)
.L80046740:
/* 47340 80046740 9718E508 */  lhu        $t8, -0x1af8($t8)
/* 47344 80046744 3C048018 */  lui        $a0, %hi(D_801782B4)
/* 47348 80046748 0058C824 */  and        $t9, $v0, $t8
/* 4734C 8004674C 13200007 */  beqz       $t9, .L8004676C
/* 47350 80046750 3C05FFE0 */   lui       $a1, 0xffe0
/* 47354 80046754 8C8482B4 */  lw         $a0, %lo(D_801782B4)($a0)
/* 47358 80046758 0C00A607 */  jal        func_8002981C
/* 4735C 8004675C 3C060002 */   lui       $a2, 2
/* 47360 80046760 3C018018 */  lui        $at, %hi(D_801782B4)
/* 47364 80046764 10000003 */  b          .L80046774
/* 47368 80046768 AC2282B4 */   sw        $v0, %lo(D_801782B4)($at)
.L8004676C:
/* 4736C 8004676C 0C011993 */  jal        func_8004664C
/* 47370 80046770 00000000 */   nop
.L80046774:
/* 47374 80046774 3C08800C */  lui        $t0, %hi(D_800BE5DC)
/* 47378 80046778 3C098018 */  lui        $t1, %hi(D_801782B4)
/* 4737C 8004677C 8D2982B4 */  lw         $t1, %lo(D_801782B4)($t1)
/* 47380 80046780 8D08E5DC */  lw         $t0, %lo(D_800BE5DC)($t0)
/* 47384 80046784 3C04800C */  lui        $a0, %hi(D_800BE554)
/* 47388 80046788 2484E554 */  addiu      $a0, $a0, %lo(D_800BE554)
/* 4738C 8004678C 01095021 */  addu       $t2, $t0, $t1
/* 47390 80046790 AC8A0000 */  sw         $t2, ($a0)
/* 47394 80046794 3C03800D */  lui        $v1, %hi(D_800D291C)
/* 47398 80046798 8463291C */  lh         $v1, %lo(D_800D291C)($v1)
/* 4739C 8004679C 84820000 */  lh         $v0, ($a0)
/* 473A0 800467A0 24630070 */  addiu      $v1, $v1, 0x70
/* 473A4 800467A4 0043082A */  slt        $at, $v0, $v1
/* 473A8 800467A8 10200004 */  beqz       $at, .L800467BC
/* 473AC 800467AC 00000000 */   nop
/* 473B0 800467B0 A4830000 */  sh         $v1, ($a0)
/* 473B4 800467B4 84820000 */  lh         $v0, ($a0)
/* 473B8 800467B8 00000000 */  nop
.L800467BC:
/* 473BC 800467BC 3C03800D */  lui        $v1, %hi(D_800D2918)
/* 473C0 800467C0 84632918 */  lh         $v1, %lo(D_800D2918)($v1)
/* 473C4 800467C4 00000000 */  nop
/* 473C8 800467C8 2463FF90 */  addiu      $v1, $v1, -0x70
/* 473CC 800467CC 0062082A */  slt        $at, $v1, $v0
/* 473D0 800467D0 10200003 */  beqz       $at, .L800467E0
/* 473D4 800467D4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 473D8 800467D8 A4830000 */  sh         $v1, ($a0)
/* 473DC 800467DC 8FBF0014 */  lw         $ra, 0x14($sp)
.L800467E0:
/* 473E0 800467E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 473E4 800467E4 03E00008 */  jr         $ra
/* 473E8 800467E8 00000000 */   nop

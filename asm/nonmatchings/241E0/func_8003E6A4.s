glabel func_8003E6A4
/* 3F2A4 8003E6A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F2A8 8003E6A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F2AC 8003E6AC AFA40020 */  sw         $a0, 0x20($sp)
/* 3F2B0 8003E6B0 00803025 */  or         $a2, $a0, $zero
/* 3F2B4 8003E6B4 AFA50024 */  sw         $a1, 0x24($sp)
/* 3F2B8 8003E6B8 A7A60022 */  sh         $a2, 0x22($sp)
/* 3F2BC 8003E6BC 0C000CD3 */  jal        func_8000334C
/* 3F2C0 8003E6C0 240400C7 */   addiu     $a0, $zero, 0xc7
/* 3F2C4 8003E6C4 97A60022 */  lhu        $a2, 0x22($sp)
/* 3F2C8 8003E6C8 3C018010 */  lui        $at, 0x8010
/* 3F2CC 8003E6CC 30CE0010 */  andi       $t6, $a2, 0x10
/* 3F2D0 8003E6D0 11C00019 */  beqz       $t6, .L8003E738
/* 3F2D4 8003E6D4 00C01825 */   or        $v1, $a2, $zero
/* 3F2D8 8003E6D8 97AF0026 */  lhu        $t7, 0x26($sp)
/* 3F2DC 8003E6DC 3C19800F */  lui        $t9, 0x800f
/* 3F2E0 8003E6E0 000FC080 */  sll        $t8, $t7, 2
/* 3F2E4 8003E6E4 030FC023 */  subu       $t8, $t8, $t7
/* 3F2E8 8003E6E8 0018C080 */  sll        $t8, $t8, 2
/* 3F2EC 8003E6EC 030FC021 */  addu       $t8, $t8, $t7
/* 3F2F0 8003E6F0 0018C080 */  sll        $t8, $t8, 2
/* 3F2F4 8003E6F4 030FC023 */  subu       $t8, $t8, $t7
/* 3F2F8 8003E6F8 0018C0C0 */  sll        $t8, $t8, 3
/* 3F2FC 8003E6FC 0338C821 */  addu       $t9, $t9, $t8
/* 3F300 8003E700 8F39F590 */  lw         $t9, -0xa70($t9)
/* 3F304 8003E704 30C90001 */  andi       $t1, $a2, 1
/* 3F308 8003E708 33280020 */  andi       $t0, $t9, 0x20
/* 3F30C 8003E70C 1100000A */  beqz       $t0, .L8003E738
/* 3F310 8003E710 306A0004 */   andi      $t2, $v1, 4
/* 3F314 8003E714 11200002 */  beqz       $t1, .L8003E720
/* 3F318 8003E718 00001025 */   or        $v0, $zero, $zero
/* 3F31C 8003E71C 24020004 */  addiu      $v0, $zero, 4
.L8003E720:
/* 3F320 8003E720 11400003 */  beqz       $t2, .L8003E730
/* 3F324 8003E724 306DFFFA */   andi      $t5, $v1, 0xfffa
/* 3F328 8003E728 344B0001 */  ori        $t3, $v0, 1
/* 3F32C 8003E72C 3162FFFF */  andi       $v0, $t3, 0xffff
.L8003E730:
/* 3F330 8003E730 01A23025 */  or         $a2, $t5, $v0
/* 3F334 8003E734 30C3FFFF */  andi       $v1, $a2, 0xffff
.L8003E738:
/* 3F338 8003E738 3C02800D */  lui        $v0, %hi(D_800D27F8)
/* 3F33C 8003E73C 244227F8 */  addiu      $v0, $v0, %lo(D_800D27F8)
/* 3F340 8003E740 306F0001 */  andi       $t7, $v1, 1
/* 3F344 8003E744 A4400006 */  sh         $zero, 6($v0)
/* 3F348 8003E748 A4400008 */  sh         $zero, 8($v0)
/* 3F34C 8003E74C A4400016 */  sh         $zero, 0x16($v0)
/* 3F350 8003E750 11E00006 */  beqz       $t7, .L8003E76C
/* 3F354 8003E754 A4400018 */   sh        $zero, 0x18($v0)
/* 3F358 8003E758 3404FFFF */  ori        $a0, $zero, 0xffff
/* 3F35C 8003E75C 3405FC09 */  ori        $a1, $zero, 0xfc09
/* 3F360 8003E760 A444000C */  sh         $a0, 0xc($v0)
/* 3F364 8003E764 10000005 */  b          .L8003E77C
/* 3F368 8003E768 A4450010 */   sh        $a1, 0x10($v0)
.L8003E76C:
/* 3F36C 8003E76C A440000C */  sh         $zero, 0xc($v0)
/* 3F370 8003E770 A4400010 */  sh         $zero, 0x10($v0)
/* 3F374 8003E774 3405FC09 */  ori        $a1, $zero, 0xfc09
/* 3F378 8003E778 3404FFFF */  ori        $a0, $zero, 0xffff
.L8003E77C:
/* 3F37C 8003E77C 30780002 */  andi       $t8, $v1, 2
/* 3F380 8003E780 13000004 */  beqz       $t8, .L8003E794
/* 3F384 8003E784 30790004 */   andi      $t9, $v1, 4
/* 3F388 8003E788 A4440002 */  sh         $a0, 2($v0)
/* 3F38C 8003E78C 10000003 */  b          .L8003E79C
/* 3F390 8003E790 A4450004 */   sh        $a1, 4($v0)
.L8003E794:
/* 3F394 8003E794 A4400002 */  sh         $zero, 2($v0)
/* 3F398 8003E798 A4400004 */  sh         $zero, 4($v0)
.L8003E79C:
/* 3F39C 8003E79C 13200004 */  beqz       $t9, .L8003E7B0
/* 3F3A0 8003E7A0 30680008 */   andi      $t0, $v1, 8
/* 3F3A4 8003E7A4 A444000A */  sh         $a0, 0xa($v0)
/* 3F3A8 8003E7A8 10000003 */  b          .L8003E7B8
/* 3F3AC 8003E7AC A445000E */   sh        $a1, 0xe($v0)
.L8003E7B0:
/* 3F3B0 8003E7B0 A440000A */  sh         $zero, 0xa($v0)
/* 3F3B4 8003E7B4 A440000E */  sh         $zero, 0xe($v0)
.L8003E7B8:
/* 3F3B8 8003E7B8 11000004 */  beqz       $t0, .L8003E7CC
/* 3F3BC 8003E7BC 24090071 */   addiu     $t1, $zero, 0x71
/* 3F3C0 8003E7C0 A4440012 */  sh         $a0, 0x12($v0)
/* 3F3C4 8003E7C4 10000003 */  b          .L8003E7D4
/* 3F3C8 8003E7C8 A4450014 */   sh        $a1, 0x14($v0)
.L8003E7CC:
/* 3F3CC 8003E7CC A4400012 */  sh         $zero, 0x12($v0)
/* 3F3D0 8003E7D0 A4400014 */  sh         $zero, 0x14($v0)
.L8003E7D4:
/* 3F3D4 8003E7D4 A42927E2 */  sh         $t1, 0x27e2($at)
/* 3F3D8 8003E7D8 240400C0 */  addiu      $a0, $zero, 0xc0
/* 3F3DC 8003E7DC 0C0078B4 */  jal        func_8001E2D0
/* 3F3E0 8003E7E0 AFA30018 */   sw        $v1, 0x18($sp)
/* 3F3E4 8003E7E4 240A0310 */  addiu      $t2, $zero, 0x310
/* 3F3E8 8003E7E8 3C018010 */  lui        $at, %hi(D_801027A4)
/* 3F3EC 8003E7EC A42A27A4 */  sh         $t2, %lo(D_801027A4)($at)
/* 3F3F0 8003E7F0 3C018010 */  lui        $at, %hi(D_80102790)
/* 3F3F4 8003E7F4 240B000B */  addiu      $t3, $zero, 0xb
/* 3F3F8 8003E7F8 AC2B2790 */  sw         $t3, %lo(D_80102790)($at)
/* 3F3FC 8003E7FC 3C018010 */  lui        $at, %hi(D_80102794)
/* 3F400 8003E800 240C014A */  addiu      $t4, $zero, 0x14a
/* 3F404 8003E804 3C02800D */  lui        $v0, %hi(D_800D27F8)
/* 3F408 8003E808 A42C2794 */  sh         $t4, %lo(D_80102794)($at)
/* 3F40C 8003E80C 244227F8 */  addiu      $v0, $v0, %lo(D_800D27F8)
/* 3F410 8003E810 3C018010 */  lui        $at, %hi(D_8010289C)
/* 3F414 8003E814 AC22289C */  sw         $v0, %lo(D_8010289C)($at)
/* 3F418 8003E818 3C0141F8 */  lui        $at, 0x41f8
/* 3F41C 8003E81C 44812000 */  mtc1       $at, $f4
/* 3F420 8003E820 3C018010 */  lui        $at, %hi(D_80102820)
/* 3F424 8003E824 97AD0026 */  lhu        $t5, 0x26($sp)
/* 3F428 8003E828 E4242820 */  swc1       $f4, %lo(D_80102820)($at)
/* 3F42C 8003E82C 3C018010 */  lui        $at, %hi(D_80102860)
/* 3F430 8003E830 240400C0 */  addiu      $a0, $zero, 0xc0
/* 3F434 8003E834 0C00F990 */  jal        func_8003E640
/* 3F438 8003E838 AC2D2860 */   sw        $t5, %lo(D_80102860)($at)
/* 3F43C 8003E83C 8FA30018 */  lw         $v1, 0x18($sp)
/* 3F440 8003E840 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F444 8003E844 3C018010 */  lui        $at, %hi(D_80102880)
/* 3F448 8003E848 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3F44C 8003E84C 03E00008 */  jr         $ra
/* 3F450 8003E850 AC232880 */   sw        $v1, %lo(D_80102880)($at)

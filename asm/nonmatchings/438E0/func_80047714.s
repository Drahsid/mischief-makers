glabel func_80047714
/* 48314 80047714 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 48318 80047718 3C18800D */  lui        $t8, %hi(D_800D28F8)
/* 4831C 8004771C 871828F8 */  lh         $t8, %lo(D_800D28F8)($t8)
/* 48320 80047720 AFBF0014 */  sw         $ra, 0x14($sp)
/* 48324 80047724 AFA40018 */  sw         $a0, 0x18($sp)
/* 48328 80047728 AFA5001C */  sw         $a1, 0x1c($sp)
/* 4832C 8004772C AFA60020 */  sw         $a2, 0x20($sp)
/* 48330 80047730 AFA70024 */  sw         $a3, 0x24($sp)
/* 48334 80047734 30CEFFFF */  andi       $t6, $a2, 0xffff
/* 48338 80047738 0701000C */  bgez       $t8, .L8004776C
/* 4833C 8004773C 30EFFFFF */   andi      $t7, $a3, 0xffff
/* 48340 80047740 3C02800D */  lui        $v0, %hi(D_800D3B74)
/* 48344 80047744 24423B74 */  addiu      $v0, $v0, %lo(D_800D3B74)
/* 48348 80047748 94590000 */  lhu        $t9, ($v0)
/* 4834C 8004774C 3C01800D */  lui        $at, %hi(D_800D28E8)
/* 48350 80047750 032E4025 */  or         $t0, $t9, $t6
/* 48354 80047754 A4480000 */  sh         $t0, ($v0)
/* 48358 80047758 A42F28E8 */  sh         $t7, %lo(D_800D28E8)($at)
/* 4835C 8004775C 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 48360 80047760 24090005 */  addiu      $t1, $zero, 5
/* 48364 80047764 10000078 */  b          .L80047948
/* 48368 80047768 AC29E5F4 */   sw        $t1, %lo(D_800BE5F4)($at)
.L8004776C:
/* 4836C 8004776C 0C0177BF */  jal        func_8005DEFC
/* 48370 80047770 00000000 */   nop
/* 48374 80047774 97A5001A */  lhu        $a1, 0x1a($sp)
/* 48378 80047778 14400006 */  bnez       $v0, .L80047794
/* 4837C 8004777C 3C06800D */   lui       $a2, %hi(D_800D28F8)
/* 48380 80047780 24C628F8 */  addiu      $a2, $a2, %lo(D_800D28F8)
/* 48384 80047784 84CA0000 */  lh         $t2, ($a2)
/* 48388 80047788 00000000 */  nop
/* 4838C 8004778C 254BFFFF */  addiu      $t3, $t2, -1
/* 48390 80047790 A4CB0000 */  sh         $t3, ($a2)
.L80047794:
/* 48394 80047794 3C06800D */  lui        $a2, %hi(D_800D28F8)
/* 48398 80047798 24C628F8 */  addiu      $a2, $a2, %lo(D_800D28F8)
/* 4839C 8004779C 84C30000 */  lh         $v1, ($a2)
/* 483A0 800477A0 00000000 */  nop
/* 483A4 800477A4 306C0001 */  andi       $t4, $v1, 1
/* 483A8 800477A8 15800068 */  bnez       $t4, .L8004794C
/* 483AC 800477AC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 483B0 800477B0 97A2001E */  lhu        $v0, 0x1e($sp)
/* 483B4 800477B4 246F0002 */  addiu      $t7, $v1, 2
/* 483B8 800477B8 00026840 */  sll        $t5, $v0, 1
/* 483BC 800477BC 25A20002 */  addiu      $v0, $t5, 2
/* 483C0 800477C0 304EFFFF */  andi       $t6, $v0, 0xffff
/* 483C4 800477C4 29C10003 */  slti       $at, $t6, 3
/* 483C8 800477C8 1420000A */  bnez       $at, .L800477F4
/* 483CC 800477CC 01C01025 */   or        $v0, $t6, $zero
/* 483D0 800477D0 15CF0009 */  bne        $t6, $t7, .L800477F8
/* 483D4 800477D4 28410005 */   slti      $at, $v0, 5
/* 483D8 800477D8 0C0177D7 */  jal        func_8005DF5C
/* 483DC 800477DC 00A02025 */   or        $a0, $a1, $zero
/* 483E0 800477E0 3C03800D */  lui        $v1, %hi(D_800D28F8)
/* 483E4 800477E4 846328F8 */  lh         $v1, %lo(D_800D28F8)($v1)
/* 483E8 800477E8 3C06800D */  lui        $a2, %hi(D_800D28F8)
/* 483EC 800477EC 10000054 */  b          .L80047940
/* 483F0 800477F0 24C628F8 */   addiu     $a2, $a2, %lo(D_800D28F8)
.L800477F4:
/* 483F4 800477F4 28410005 */  slti       $at, $v0, 5
.L800477F8:
/* 483F8 800477F8 1420000A */  bnez       $at, .L80047824
/* 483FC 800477FC 24780004 */   addiu     $t8, $v1, 4
/* 48400 80047800 14580009 */  bne        $v0, $t8, .L80047828
/* 48404 80047804 28410007 */   slti      $at, $v0, 7
/* 48408 80047808 0C0177D7 */  jal        func_8005DF5C
/* 4840C 8004780C 24A40001 */   addiu     $a0, $a1, 1
/* 48410 80047810 3C03800D */  lui        $v1, %hi(D_800D28F8)
/* 48414 80047814 846328F8 */  lh         $v1, %lo(D_800D28F8)($v1)
/* 48418 80047818 3C06800D */  lui        $a2, %hi(D_800D28F8)
/* 4841C 8004781C 10000048 */  b          .L80047940
/* 48420 80047820 24C628F8 */   addiu     $a2, $a2, %lo(D_800D28F8)
.L80047824:
/* 48424 80047824 28410007 */  slti       $at, $v0, 7
.L80047828:
/* 48428 80047828 1420000A */  bnez       $at, .L80047854
/* 4842C 8004782C 24790006 */   addiu     $t9, $v1, 6
/* 48430 80047830 14590009 */  bne        $v0, $t9, .L80047858
/* 48434 80047834 28410009 */   slti      $at, $v0, 9
/* 48438 80047838 0C0177D7 */  jal        func_8005DF5C
/* 4843C 8004783C 24A40002 */   addiu     $a0, $a1, 2
/* 48440 80047840 3C03800D */  lui        $v1, %hi(D_800D28F8)
/* 48444 80047844 846328F8 */  lh         $v1, %lo(D_800D28F8)($v1)
/* 48448 80047848 3C06800D */  lui        $a2, %hi(D_800D28F8)
/* 4844C 8004784C 1000003C */  b          .L80047940
/* 48450 80047850 24C628F8 */   addiu     $a2, $a2, %lo(D_800D28F8)
.L80047854:
/* 48454 80047854 28410009 */  slti       $at, $v0, 9
.L80047858:
/* 48458 80047858 1420000A */  bnez       $at, .L80047884
/* 4845C 8004785C 24680008 */   addiu     $t0, $v1, 8
/* 48460 80047860 14480009 */  bne        $v0, $t0, .L80047888
/* 48464 80047864 2841000B */   slti      $at, $v0, 0xb
/* 48468 80047868 0C0177D7 */  jal        func_8005DF5C
/* 4846C 8004786C 24A40003 */   addiu     $a0, $a1, 3
/* 48470 80047870 3C03800D */  lui        $v1, %hi(D_800D28F8)
/* 48474 80047874 846328F8 */  lh         $v1, %lo(D_800D28F8)($v1)
/* 48478 80047878 3C06800D */  lui        $a2, %hi(D_800D28F8)
/* 4847C 8004787C 10000030 */  b          .L80047940
/* 48480 80047880 24C628F8 */   addiu     $a2, $a2, %lo(D_800D28F8)
.L80047884:
/* 48484 80047884 2841000B */  slti       $at, $v0, 0xb
.L80047888:
/* 48488 80047888 1420000A */  bnez       $at, .L800478B4
/* 4848C 8004788C 2469000A */   addiu     $t1, $v1, 0xa
/* 48490 80047890 14490009 */  bne        $v0, $t1, .L800478B8
/* 48494 80047894 2841000D */   slti      $at, $v0, 0xd
/* 48498 80047898 0C0177D7 */  jal        func_8005DF5C
/* 4849C 8004789C 24A40004 */   addiu     $a0, $a1, 4
/* 484A0 800478A0 3C03800D */  lui        $v1, %hi(D_800D28F8)
/* 484A4 800478A4 846328F8 */  lh         $v1, %lo(D_800D28F8)($v1)
/* 484A8 800478A8 3C06800D */  lui        $a2, %hi(D_800D28F8)
/* 484AC 800478AC 10000024 */  b          .L80047940
/* 484B0 800478B0 24C628F8 */   addiu     $a2, $a2, %lo(D_800D28F8)
.L800478B4:
/* 484B4 800478B4 2841000D */  slti       $at, $v0, 0xd
.L800478B8:
/* 484B8 800478B8 1420000A */  bnez       $at, .L800478E4
/* 484BC 800478BC 246A000C */   addiu     $t2, $v1, 0xc
/* 484C0 800478C0 144A0009 */  bne        $v0, $t2, .L800478E8
/* 484C4 800478C4 2841000F */   slti      $at, $v0, 0xf
/* 484C8 800478C8 0C0177D7 */  jal        func_8005DF5C
/* 484CC 800478CC 24A40005 */   addiu     $a0, $a1, 5
/* 484D0 800478D0 3C03800D */  lui        $v1, %hi(D_800D28F8)
/* 484D4 800478D4 846328F8 */  lh         $v1, %lo(D_800D28F8)($v1)
/* 484D8 800478D8 3C06800D */  lui        $a2, %hi(D_800D28F8)
/* 484DC 800478DC 10000018 */  b          .L80047940
/* 484E0 800478E0 24C628F8 */   addiu     $a2, $a2, %lo(D_800D28F8)
.L800478E4:
/* 484E4 800478E4 2841000F */  slti       $at, $v0, 0xf
.L800478E8:
/* 484E8 800478E8 1420000A */  bnez       $at, .L80047914
/* 484EC 800478EC 246B000E */   addiu     $t3, $v1, 0xe
/* 484F0 800478F0 144B0009 */  bne        $v0, $t3, .L80047918
/* 484F4 800478F4 28410011 */   slti      $at, $v0, 0x11
/* 484F8 800478F8 0C0177D7 */  jal        func_8005DF5C
/* 484FC 800478FC 24A40006 */   addiu     $a0, $a1, 6
/* 48500 80047900 3C03800D */  lui        $v1, %hi(D_800D28F8)
/* 48504 80047904 846328F8 */  lh         $v1, %lo(D_800D28F8)($v1)
/* 48508 80047908 3C06800D */  lui        $a2, %hi(D_800D28F8)
/* 4850C 8004790C 1000000C */  b          .L80047940
/* 48510 80047910 24C628F8 */   addiu     $a2, $a2, %lo(D_800D28F8)
.L80047914:
/* 48514 80047914 28410011 */  slti       $at, $v0, 0x11
.L80047918:
/* 48518 80047918 14200009 */  bnez       $at, .L80047940
/* 4851C 8004791C 246C0010 */   addiu     $t4, $v1, 0x10
/* 48520 80047920 144C0008 */  bne        $v0, $t4, .L80047944
/* 48524 80047924 246DFFFF */   addiu     $t5, $v1, -1
/* 48528 80047928 0C0177D7 */  jal        func_8005DF5C
/* 4852C 8004792C 24A40007 */   addiu     $a0, $a1, 7
/* 48530 80047930 3C03800D */  lui        $v1, %hi(D_800D28F8)
/* 48534 80047934 3C06800D */  lui        $a2, %hi(D_800D28F8)
/* 48538 80047938 846328F8 */  lh         $v1, %lo(D_800D28F8)($v1)
/* 4853C 8004793C 24C628F8 */  addiu      $a2, $a2, %lo(D_800D28F8)
.L80047940:
/* 48540 80047940 246DFFFF */  addiu      $t5, $v1, -1
.L80047944:
/* 48544 80047944 A4CD0000 */  sh         $t5, ($a2)
.L80047948:
/* 48548 80047948 8FBF0014 */  lw         $ra, 0x14($sp)
.L8004794C:
/* 4854C 8004794C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 48550 80047950 03E00008 */  jr         $ra
/* 48554 80047954 00000000 */   nop

glabel func_800337F4
/* 343F4 800337F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 343F8 800337F8 AFA40020 */  sw         $a0, 0x20($sp)
/* 343FC 800337FC AFA50024 */  sw         $a1, 0x24($sp)
/* 34400 80033800 AFA60028 */  sw         $a2, 0x28($sp)
/* 34404 80033804 AFA7002C */  sw         $a3, 0x2c($sp)
/* 34408 80033808 87A7002A */  lh         $a3, 0x2a($sp)
/* 3440C 8003380C 87A60026 */  lh         $a2, 0x26($sp)
/* 34410 80033810 87A50022 */  lh         $a1, 0x22($sp)
/* 34414 80033814 AFBF0014 */  sw         $ra, 0x14($sp)
/* 34418 80033818 3C04800E */  lui        $a0, %hi(D_800E1380)
/* 3441C 8003381C 0C00C48F */  jal        func_8003123C
/* 34420 80033820 24841380 */   addiu     $a0, $a0, %lo(D_800E1380)
/* 34424 80033824 1040002F */  beqz       $v0, .L800338E4
/* 34428 80033828 3044FFFF */   andi      $a0, $v0, 0xffff
/* 3442C 8003382C 00047080 */  sll        $t6, $a0, 2
/* 34430 80033830 01C47023 */  subu       $t6, $t6, $a0
/* 34434 80033834 000E7080 */  sll        $t6, $t6, 2
/* 34438 80033838 01C47021 */  addu       $t6, $t6, $a0
/* 3443C 8003383C 3C01800F */  lui        $at, %hi(D_800EB950)
/* 34440 80033840 000E7080 */  sll        $t6, $t6, 2
/* 34444 80033844 C420B950 */  lwc1       $f0, %lo(D_800EB950)($at)
/* 34448 80033848 01C47023 */  subu       $t6, $t6, $a0
/* 3444C 8003384C 3C0F800F */  lui        $t7, %hi(gActors)
/* 34450 80033850 3C01800F */  lui        $at, %hi(D_800EB954)
/* 34454 80033854 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 34458 80033858 000E70C0 */  sll        $t6, $t6, 3
/* 3445C 8003385C C422B954 */  lwc1       $f2, %lo(D_800EB954)($at)
/* 34460 80033860 01CF1821 */  addu       $v1, $t6, $t7
/* 34464 80033864 97B9002E */  lhu        $t9, 0x2e($sp)
/* 34468 80033868 3C080001 */  lui        $t0, 1
/* 3446C 8003386C 24180001 */  addiu      $t8, $zero, 1
/* 34470 80033870 35088000 */  ori        $t0, $t0, 0x8000
/* 34474 80033874 24090008 */  addiu      $t1, $zero, 8
/* 34478 80033878 240AFFFF */  addiu      $t2, $zero, -1
/* 3447C 8003387C A4780094 */  sh         $t8, 0x94($v1)
/* 34480 80033880 AC6800F0 */  sw         $t0, 0xf0($v1)
/* 34484 80033884 AC690154 */  sw         $t1, 0x154($v1)
/* 34488 80033888 AC6A0164 */  sw         $t2, 0x164($v1)
/* 3448C 8003388C AFA30018 */  sw         $v1, 0x18($sp)
/* 34490 80033890 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 34494 80033894 E46000B8 */  swc1       $f0, 0xb8($v1)
/* 34498 80033898 E4620110 */  swc1       $f2, 0x110($v1)
/* 3449C 8003389C E4620114 */  swc1       $f2, 0x114($v1)
/* 344A0 800338A0 0C0005E3 */  jal        func_8000178C
/* 344A4 800338A4 A4790084 */   sh        $t9, 0x84($v1)
/* 344A8 800338A8 304B000F */  andi       $t3, $v0, 0xf
/* 344AC 800338AC 3C0D0001 */  lui        $t5, 1
/* 344B0 800338B0 35ADE000 */  ori        $t5, $t5, 0xe000
/* 344B4 800338B4 000B6380 */  sll        $t4, $t3, 0xe
/* 344B8 800338B8 01AC2023 */  subu       $a0, $t5, $t4
/* 344BC 800338BC 8FA30018 */  lw         $v1, 0x18($sp)
/* 344C0 800338C0 00047023 */  negu       $t6, $a0
/* 344C4 800338C4 2418F800 */  addiu      $t8, $zero, -0x800
/* 344C8 800338C8 AC6400EC */  sw         $a0, 0xec($v1)
/* 344CC 800338CC 05C10003 */  bgez       $t6, .L800338DC
/* 344D0 800338D0 000E7903 */   sra       $t7, $t6, 4
/* 344D4 800338D4 25C1000F */  addiu      $at, $t6, 0xf
/* 344D8 800338D8 00017903 */  sra        $t7, $at, 4
.L800338DC:
/* 344DC 800338DC AC6F0158 */  sw         $t7, 0x158($v1)
/* 344E0 800338E0 AC78015C */  sw         $t8, 0x15c($v1)
.L800338E4:
/* 344E4 800338E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 344E8 800338E8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 344EC 800338EC 03E00008 */  jr         $ra
/* 344F0 800338F0 00000000 */   nop

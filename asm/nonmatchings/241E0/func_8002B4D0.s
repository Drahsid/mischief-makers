glabel func_8002B4D0
/* 2C0D0 8002B4D0 3C0F800C */  lui        $t7, %hi(D_800BE4E0)
/* 2C0D4 8002B4D4 95EFE4E0 */  lhu        $t7, %lo(D_800BE4E0)($t7)
/* 2C0D8 8002B4D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2C0DC 8002B4DC AFA40020 */  sw         $a0, 0x20($sp)
/* 2C0E0 8002B4E0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2C0E4 8002B4E4 31F80004 */  andi       $t8, $t7, 4
/* 2C0E8 8002B4E8 01C02025 */  or         $a0, $t6, $zero
/* 2C0EC 8002B4EC AFBF001C */  sw         $ra, 0x1c($sp)
/* 2C0F0 8002B4F0 13000012 */  beqz       $t8, .L8002B53C
/* 2C0F4 8002B4F4 AFB00018 */   sw        $s0, 0x18($sp)
/* 2C0F8 8002B4F8 000EC880 */  sll        $t9, $t6, 2
/* 2C0FC 8002B4FC 032EC823 */  subu       $t9, $t9, $t6
/* 2C100 8002B500 0019C880 */  sll        $t9, $t9, 2
/* 2C104 8002B504 032EC821 */  addu       $t9, $t9, $t6
/* 2C108 8002B508 0019C880 */  sll        $t9, $t9, 2
/* 2C10C 8002B50C 032EC823 */  subu       $t9, $t9, $t6
/* 2C110 8002B510 3C08800F */  lui        $t0, %hi(gActors)
/* 2C114 8002B514 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 2C118 8002B518 0019C8C0 */  sll        $t9, $t9, 3
/* 2C11C 8002B51C 03288021 */  addu       $s0, $t9, $t0
/* 2C120 8002B520 9205009E */  lbu        $a1, 0x9e($s0)
/* 2C124 8002B524 A200009C */  sb         $zero, 0x9c($s0)
/* 2C128 8002B528 A200009D */  sb         $zero, 0x9d($s0)
/* 2C12C 8002B52C 0C00AC04 */  jal        func_8002B010
/* 2C130 8002B530 24060040 */   addiu     $a2, $zero, 0x40
/* 2C134 8002B534 10000016 */  b          .L8002B590
/* 2C138 8002B538 A202009E */   sb        $v0, 0x9e($s0)
.L8002B53C:
/* 2C13C 8002B53C 00044880 */  sll        $t1, $a0, 2
/* 2C140 8002B540 01244823 */  subu       $t1, $t1, $a0
/* 2C144 8002B544 00094880 */  sll        $t1, $t1, 2
/* 2C148 8002B548 01244821 */  addu       $t1, $t1, $a0
/* 2C14C 8002B54C 00094880 */  sll        $t1, $t1, 2
/* 2C150 8002B550 01244823 */  subu       $t1, $t1, $a0
/* 2C154 8002B554 3C0A800F */  lui        $t2, %hi(gActors)
/* 2C158 8002B558 254AF510 */  addiu      $t2, $t2, %lo(gActors)
/* 2C15C 8002B55C 000948C0 */  sll        $t1, $t1, 3
/* 2C160 8002B560 012A8021 */  addu       $s0, $t1, $t2
/* 2C164 8002B564 9205009C */  lbu        $a1, 0x9c($s0)
/* 2C168 8002B568 2406FFC0 */  addiu      $a2, $zero, -0x40
/* 2C16C 8002B56C 0C00AC04 */  jal        func_8002B010
/* 2C170 8002B570 A7A40022 */   sh        $a0, 0x22($sp)
/* 2C174 8002B574 97A40022 */  lhu        $a0, 0x22($sp)
/* 2C178 8002B578 9205009E */  lbu        $a1, 0x9e($s0)
/* 2C17C 8002B57C A202009C */  sb         $v0, 0x9c($s0)
/* 2C180 8002B580 A200009D */  sb         $zero, 0x9d($s0)
/* 2C184 8002B584 0C00AC04 */  jal        func_8002B010
/* 2C188 8002B588 2406FFC0 */   addiu     $a2, $zero, -0x40
/* 2C18C 8002B58C A202009E */  sb         $v0, 0x9e($s0)
.L8002B590:
/* 2C190 8002B590 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2C194 8002B594 8FB00018 */  lw         $s0, 0x18($sp)
/* 2C198 8002B598 03E00008 */  jr         $ra
/* 2C19C 8002B59C 27BD0020 */   addiu     $sp, $sp, 0x20

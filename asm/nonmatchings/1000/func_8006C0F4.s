glabel func_8006C0F4
/* 6CCF4 8006C0F4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6CCF8 8006C0F8 000E7880 */  sll        $t7, $t6, 2
/* 6CCFC 8006C0FC 01EE7823 */  subu       $t7, $t7, $t6
/* 6CD00 8006C100 000F7880 */  sll        $t7, $t7, 2
/* 6CD04 8006C104 01EE7821 */  addu       $t7, $t7, $t6
/* 6CD08 8006C108 000F7880 */  sll        $t7, $t7, 2
/* 6CD0C 8006C10C 01EE7823 */  subu       $t7, $t7, $t6
/* 6CD10 8006C110 3C18800F */  lui        $t8, %hi(gActors)
/* 6CD14 8006C114 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6CD18 8006C118 000F78C0 */  sll        $t7, $t7, 3
/* 6CD1C 8006C11C 01F81021 */  addu       $v0, $t7, $t8
/* 6CD20 8006C120 8C480080 */  lw         $t0, 0x80($v0)
/* 6CD24 8006C124 3C010001 */  lui        $at, 1
/* 6CD28 8006C128 01014825 */  or         $t1, $t0, $at
/* 6CD2C 8006C12C 3C01FFFD */  lui        $at, 0xfffd
/* 6CD30 8006C130 3421FFFF */  ori        $at, $at, 0xffff
/* 6CD34 8006C134 8C4C0098 */  lw         $t4, 0x98($v0)
/* 6CD38 8006C138 01215824 */  and        $t3, $t1, $at
/* 6CD3C 8006C13C 2401FFBF */  addiu      $at, $zero, -0x41
/* 6CD40 8006C140 01816824 */  and        $t5, $t4, $at
/* 6CD44 8006C144 3C014080 */  lui        $at, 0x4080
/* 6CD48 8006C148 44812000 */  mtc1       $at, $f4
/* 6CD4C 8006C14C 8C5800EC */  lw         $t8, 0xec($v0)
/* 6CD50 8006C150 AFA40000 */  sw         $a0, ($sp)
/* 6CD54 8006C154 24190470 */  addiu      $t9, $zero, 0x470
/* 6CD58 8006C158 01C02025 */  or         $a0, $t6, $zero
/* 6CD5C 8006C15C A45900D0 */  sh         $t9, 0xd0($v0)
/* 6CD60 8006C160 3C0E800E */  lui        $t6, %hi(D_800E2268)
/* 6CD64 8006C164 AC490080 */  sw         $t1, 0x80($v0)
/* 6CD68 8006C168 25CE2268 */  addiu      $t6, $t6, %lo(D_800E2268)
/* 6CD6C 8006C16C 240F0001 */  addiu      $t7, $zero, 1
/* 6CD70 8006C170 AC4B0080 */  sw         $t3, 0x80($v0)
/* 6CD74 8006C174 AC4D0098 */  sw         $t5, 0x98($v0)
/* 6CD78 8006C178 01205025 */  or         $t2, $t1, $zero
/* 6CD7C 8006C17C A44F00E6 */  sh         $t7, 0xe6($v0)
/* 6CD80 8006C180 AC4E00E8 */  sw         $t6, 0xe8($v0)
/* 6CD84 8006C184 AC4000F0 */  sw         $zero, 0xf0($v0)
/* 6CD88 8006C188 E4440144 */  swc1       $f4, 0x144($v0)
/* 6CD8C 8006C18C 07010003 */  bgez       $t8, .L8006C19C
/* 6CD90 8006C190 0018C843 */   sra       $t9, $t8, 1
/* 6CD94 8006C194 27010001 */  addiu      $at, $t8, 1
/* 6CD98 8006C198 0001C843 */  sra        $t9, $at, 1
.L8006C19C:
/* 6CD9C 8006C19C 03E00008 */  jr         $ra
/* 6CDA0 8006C1A0 AC5900EC */   sw        $t9, 0xec($v0)

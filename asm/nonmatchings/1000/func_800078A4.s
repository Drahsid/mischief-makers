glabel func_800078A4
/* 84A4 800078A4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 84A8 800078A8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 84AC 800078AC AFB00030 */  sw         $s0, 0x30($sp)
/* 84B0 800078B0 3090FFFF */  andi       $s0, $a0, 0xffff
/* 84B4 800078B4 0C008C2E */  jal        func_800230B8
/* 84B8 800078B8 AFA40038 */   sw        $a0, 0x38($sp)
/* 84BC 800078BC 0C001AE7 */  jal        func_80006B9C
/* 84C0 800078C0 3204FFFF */   andi      $a0, $s0, 0xffff
/* 84C4 800078C4 24500001 */  addiu      $s0, $v0, 1
/* 84C8 800078C8 320EFFFF */  andi       $t6, $s0, 0xffff
/* 84CC 800078CC 3C05800E */  lui        $a1, %hi(D_800E13FC)
/* 84D0 800078D0 24A513FC */  addiu      $a1, $a1, %lo(D_800E13FC)
/* 84D4 800078D4 01C08025 */  or         $s0, $t6, $zero
/* 84D8 800078D8 3044FFFF */  andi       $a0, $v0, 0xffff
/* 84DC 800078DC 3406FFC4 */  ori        $a2, $zero, 0xffc4
/* 84E0 800078E0 24070058 */  addiu      $a3, $zero, 0x58
/* 84E4 800078E4 0C009D44 */  jal        func_80027510
/* 84E8 800078E8 AFA00010 */   sw        $zero, 0x10($sp)
/* 84EC 800078EC 3C05800C */  lui        $a1, %hi(D_800C5078)
/* 84F0 800078F0 240F0080 */  addiu      $t7, $zero, 0x80
/* 84F4 800078F4 24180080 */  addiu      $t8, $zero, 0x80
/* 84F8 800078F8 AFB8001C */  sw         $t8, 0x1c($sp)
/* 84FC 800078FC AFAF0014 */  sw         $t7, 0x14($sp)
/* 8500 80007900 24A55078 */  addiu      $a1, $a1, %lo(D_800C5078)
/* 8504 80007904 3204FFFF */  andi       $a0, $s0, 0xffff
/* 8508 80007908 3406FFDC */  ori        $a2, $zero, 0xffdc
/* 850C 8000790C 24070058 */  addiu      $a3, $zero, 0x58
/* 8510 80007910 AFA00010 */  sw         $zero, 0x10($sp)
/* 8514 80007914 0C009F10 */  jal        func_80027C40
/* 8518 80007918 AFA00018 */   sw        $zero, 0x18($sp)
/* 851C 8000791C 24440003 */  addiu      $a0, $v0, 3
/* 8520 80007920 3099FFFF */  andi       $t9, $a0, 0xffff
/* 8524 80007924 0C001CF3 */  jal        func_800073CC
/* 8528 80007928 03202025 */   or        $a0, $t9, $zero
/* 852C 8000792C 3C05800C */  lui        $a1, %hi(D_800C5138)
/* 8530 80007930 24080080 */  addiu      $t0, $zero, 0x80
/* 8534 80007934 AFA80014 */  sw         $t0, 0x14($sp)
/* 8538 80007938 24A55138 */  addiu      $a1, $a1, %lo(D_800C5138)
/* 853C 8000793C 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8540 80007940 24060038 */  addiu      $a2, $zero, 0x38
/* 8544 80007944 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 8548 80007948 AFA00010 */  sw         $zero, 0x10($sp)
/* 854C 8000794C AFA00018 */  sw         $zero, 0x18($sp)
/* 8550 80007950 0C009F10 */  jal        func_80027C40
/* 8554 80007954 AFA0001C */   sw        $zero, 0x1c($sp)
/* 8558 80007958 3C05800C */  lui        $a1, %hi(D_800C513C)
/* 855C 8000795C 24090080 */  addiu      $t1, $zero, 0x80
/* 8560 80007960 AFA90014 */  sw         $t1, 0x14($sp)
/* 8564 80007964 24A5513C */  addiu      $a1, $a1, %lo(D_800C513C)
/* 8568 80007968 3044FFFF */  andi       $a0, $v0, 0xffff
/* 856C 8000796C 24060058 */  addiu      $a2, $zero, 0x58
/* 8570 80007970 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 8574 80007974 AFA00010 */  sw         $zero, 0x10($sp)
/* 8578 80007978 AFA00018 */  sw         $zero, 0x18($sp)
/* 857C 8000797C 0C009F10 */  jal        func_80027C40
/* 8580 80007980 AFA0001C */   sw        $zero, 0x1c($sp)
/* 8584 80007984 3C05800C */  lui        $a1, %hi(D_800C5140)
/* 8588 80007988 240A0080 */  addiu      $t2, $zero, 0x80
/* 858C 8000798C AFAA0014 */  sw         $t2, 0x14($sp)
/* 8590 80007990 24A55140 */  addiu      $a1, $a1, %lo(D_800C5140)
/* 8594 80007994 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8598 80007998 24060078 */  addiu      $a2, $zero, 0x78
/* 859C 8000799C 3407FFE0 */  ori        $a3, $zero, 0xffe0
/* 85A0 800079A0 AFA00010 */  sw         $zero, 0x10($sp)
/* 85A4 800079A4 AFA00018 */  sw         $zero, 0x18($sp)
/* 85A8 800079A8 0C009F10 */  jal        func_80027C40
/* 85AC 800079AC AFA0001C */   sw        $zero, 0x1c($sp)
/* 85B0 800079B0 3C013F80 */  lui        $at, 0x3f80
/* 85B4 800079B4 44810000 */  mtc1       $at, $f0
/* 85B8 800079B8 3C05800C */  lui        $a1, %hi(D_800C5144)
/* 85BC 800079BC 240B0060 */  addiu      $t3, $zero, 0x60
/* 85C0 800079C0 AFAB0018 */  sw         $t3, 0x18($sp)
/* 85C4 800079C4 24A55144 */  addiu      $a1, $a1, %lo(D_800C5144)
/* 85C8 800079C8 3044FFFF */  andi       $a0, $v0, 0xffff
/* 85CC 800079CC 3406FFB8 */  ori        $a2, $zero, 0xffb8
/* 85D0 800079D0 3407FFC4 */  ori        $a3, $zero, 0xffc4
/* 85D4 800079D4 AFA00010 */  sw         $zero, 0x10($sp)
/* 85D8 800079D8 AFA00014 */  sw         $zero, 0x14($sp)
/* 85DC 800079DC AFA0001C */  sw         $zero, 0x1c($sp)
/* 85E0 800079E0 E7A00020 */  swc1       $f0, 0x20($sp)
/* 85E4 800079E4 0C009F65 */  jal        func_80027D94
/* 85E8 800079E8 E7A00024 */   swc1      $f0, 0x24($sp)
/* 85EC 800079EC 24500001 */  addiu      $s0, $v0, 1
/* 85F0 800079F0 320EFFFF */  andi       $t6, $s0, 0xffff
/* 85F4 800079F4 240C0060 */  addiu      $t4, $zero, 0x60
/* 85F8 800079F8 240D00C0 */  addiu      $t5, $zero, 0xc0
/* 85FC 800079FC AFAD0018 */  sw         $t5, 0x18($sp)
/* 8600 80007A00 AFAC0014 */  sw         $t4, 0x14($sp)
/* 8604 80007A04 01C08025 */  or         $s0, $t6, $zero
/* 8608 80007A08 3044FFFF */  andi       $a0, $v0, 0xffff
/* 860C 80007A0C 24050464 */  addiu      $a1, $zero, 0x464
/* 8610 80007A10 3406FFB8 */  ori        $a2, $zero, 0xffb8
/* 8614 80007A14 3407FFBC */  ori        $a3, $zero, 0xffbc
/* 8618 80007A18 AFA00010 */  sw         $zero, 0x10($sp)
/* 861C 80007A1C 0C009D1A */  jal        func_80027468
/* 8620 80007A20 AFA0001C */   sw        $zero, 0x1c($sp)
/* 8624 80007A24 3C048010 */  lui        $a0, %hi(D_800FF510)
/* 8628 80007A28 2484F510 */  addiu      $a0, $a0, %lo(D_800FF510)
/* 862C 80007A2C A0902448 */  sb         $s0, 0x2448($a0)
/* 8630 80007A30 A0801AB8 */  sb         $zero, 0x1ab8($a0)
/* 8634 80007A34 A0801C50 */  sb         $zero, 0x1c50($a0)
/* 8638 80007A38 0C001DBC */  jal        func_800076F0
/* 863C 80007A3C A0802778 */   sb        $zero, 0x2778($a0)
/* 8640 80007A40 3C048010 */  lui        $a0, %hi(D_800FF510)
/* 8644 80007A44 2484F510 */  addiu      $a0, $a0, %lo(D_800FF510)
/* 8648 80007A48 240F0002 */  addiu      $t7, $zero, 2
/* 864C 80007A4C 3C03800C */  lui        $v1, %hi(D_800C4FE8)
/* 8650 80007A50 A08F2778 */  sb         $t7, 0x2778($a0)
/* 8654 80007A54 24634FE8 */  addiu      $v1, $v1, %lo(D_800C4FE8)
/* 8658 80007A58 00001025 */  or         $v0, $zero, $zero
.L80007A5C:
/* 865C 80007A5C 0002C040 */  sll        $t8, $v0, 1
/* 8660 80007A60 24420001 */  addiu      $v0, $v0, 1
/* 8664 80007A64 3048FFFF */  andi       $t0, $v0, 0xffff
/* 8668 80007A68 2901000A */  slti       $at, $t0, 0xa
/* 866C 80007A6C 0078C821 */  addu       $t9, $v1, $t8
/* 8670 80007A70 A7200000 */  sh         $zero, ($t9)
/* 8674 80007A74 1420FFF9 */  bnez       $at, .L80007A5C
/* 8678 80007A78 01001025 */   or        $v0, $t0, $zero
/* 867C 80007A7C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 8680 80007A80 8FB00030 */  lw         $s0, 0x30($sp)
/* 8684 80007A84 A08025E0 */  sb         $zero, 0x25e0($a0)
/* 8688 80007A88 03E00008 */  jr         $ra
/* 868C 80007A8C 27BD0038 */   addiu     $sp, $sp, 0x38

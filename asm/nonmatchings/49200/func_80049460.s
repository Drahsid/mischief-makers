glabel func_80049460
/* 4A060 80049460 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4A064 80049464 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4A068 80049468 AFA40018 */  sw         $a0, 0x18($sp)
/* 4A06C 8004946C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 4A070 80049470 01C02025 */  or         $a0, $t6, $zero
/* 4A074 80049474 0C0124C0 */  jal        func_80049300
/* 4A078 80049478 A7AE001A */   sh        $t6, 0x1a($sp)
/* 4A07C 8004947C 97A4001A */  lhu        $a0, 0x1a($sp)
/* 4A080 80049480 24010001 */  addiu      $at, $zero, 1
/* 4A084 80049484 10410009 */  beq        $v0, $at, .L800494AC
/* 4A088 80049488 00047880 */   sll       $t7, $a0, 2
/* 4A08C 8004948C 24010002 */  addiu      $at, $zero, 2
/* 4A090 80049490 1041002B */  beq        $v0, $at, .L80049540
/* 4A094 80049494 0004C880 */   sll       $t9, $a0, 2
/* 4A098 80049498 24010003 */  addiu      $at, $zero, 3
/* 4A09C 8004949C 1041004D */  beq        $v0, $at, .L800495D4
/* 4A0A0 800494A0 00000000 */   nop
/* 4A0A4 800494A4 1000006A */  b          .L80049650
/* 4A0A8 800494A8 00001025 */   or        $v0, $zero, $zero
.L800494AC:
/* 4A0AC 800494AC 01E47823 */  subu       $t7, $t7, $a0
/* 4A0B0 800494B0 000F7880 */  sll        $t7, $t7, 2
/* 4A0B4 800494B4 01E47821 */  addu       $t7, $t7, $a0
/* 4A0B8 800494B8 000F7880 */  sll        $t7, $t7, 2
/* 4A0BC 800494BC 01E47823 */  subu       $t7, $t7, $a0
/* 4A0C0 800494C0 3C18800F */  lui        $t8, %hi(gActors)
/* 4A0C4 800494C4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 4A0C8 800494C8 000F78C0 */  sll        $t7, $t7, 3
/* 4A0CC 800494CC 01F81821 */  addu       $v1, $t7, $t8
/* 4A0D0 800494D0 8C790098 */  lw         $t9, 0x98($v1)
/* 4A0D4 800494D4 3C028013 */  lui        $v0, %hi(D_801373D8)
/* 4A0D8 800494D8 33280080 */  andi       $t0, $t9, 0x80
/* 4A0DC 800494DC 11000002 */  beqz       $t0, .L800494E8
/* 4A0E0 800494E0 2418001F */   addiu     $t8, $zero, 0x1f
/* 4A0E4 800494E4 A0600140 */  sb         $zero, 0x140($v1)
.L800494E8:
/* 4A0E8 800494E8 944273D8 */  lhu        $v0, %lo(D_801373D8)($v0)
/* 4A0EC 800494EC 00000000 */  nop
/* 4A0F0 800494F0 30490002 */  andi       $t1, $v0, 2
/* 4A0F4 800494F4 11200005 */  beqz       $t1, .L8004950C
/* 4A0F8 800494F8 304C0001 */   andi      $t4, $v0, 1
/* 4A0FC 800494FC 8C6A0080 */  lw         $t2, 0x80($v1)
/* 4A100 80049500 2401FFDF */  addiu      $at, $zero, -0x21
/* 4A104 80049504 01415824 */  and        $t3, $t2, $at
/* 4A108 80049508 AC6B0080 */  sw         $t3, 0x80($v1)
.L8004950C:
/* 4A10C 8004950C 11800005 */  beqz       $t4, .L80049524
/* 4A110 80049510 24020001 */   addiu     $v0, $zero, 1
/* 4A114 80049514 8C6D0080 */  lw         $t5, 0x80($v1)
/* 4A118 80049518 00000000 */  nop
/* 4A11C 8004951C 35AE0020 */  ori        $t6, $t5, 0x20
/* 4A120 80049520 AC6E0080 */  sw         $t6, 0x80($v1)
.L80049524:
/* 4A124 80049524 906F00D1 */  lbu        $t7, 0xd1($v1)
/* 4A128 80049528 24010016 */  addiu      $at, $zero, 0x16
/* 4A12C 8004952C 11E10002 */  beq        $t7, $at, .L80049538
/* 4A130 80049530 00000000 */   nop
/* 4A134 80049534 AC600150 */  sw         $zero, 0x150($v1)
.L80049538:
/* 4A138 80049538 10000045 */  b          .L80049650
/* 4A13C 8004953C A47800D0 */   sh        $t8, 0xd0($v1)
.L80049540:
/* 4A140 80049540 0324C823 */  subu       $t9, $t9, $a0
/* 4A144 80049544 0019C880 */  sll        $t9, $t9, 2
/* 4A148 80049548 0324C821 */  addu       $t9, $t9, $a0
/* 4A14C 8004954C 0019C880 */  sll        $t9, $t9, 2
/* 4A150 80049550 0324C823 */  subu       $t9, $t9, $a0
/* 4A154 80049554 3C08800F */  lui        $t0, %hi(gActors)
/* 4A158 80049558 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 4A15C 8004955C 0019C8C0 */  sll        $t9, $t9, 3
/* 4A160 80049560 03281821 */  addu       $v1, $t9, $t0
/* 4A164 80049564 8C690098 */  lw         $t1, 0x98($v1)
/* 4A168 80049568 3C028013 */  lui        $v0, %hi(D_801373D8)
/* 4A16C 8004956C 312A0080 */  andi       $t2, $t1, 0x80
/* 4A170 80049570 11400002 */  beqz       $t2, .L8004957C
/* 4A174 80049574 2408001F */   addiu     $t0, $zero, 0x1f
/* 4A178 80049578 A0600140 */  sb         $zero, 0x140($v1)
.L8004957C:
/* 4A17C 8004957C 944273D8 */  lhu        $v0, %lo(D_801373D8)($v0)
/* 4A180 80049580 00000000 */  nop
/* 4A184 80049584 304B0002 */  andi       $t3, $v0, 2
/* 4A188 80049588 11600005 */  beqz       $t3, .L800495A0
/* 4A18C 8004958C 304E0001 */   andi      $t6, $v0, 1
/* 4A190 80049590 8C6C0080 */  lw         $t4, 0x80($v1)
/* 4A194 80049594 2401FFDF */  addiu      $at, $zero, -0x21
/* 4A198 80049598 01816824 */  and        $t5, $t4, $at
/* 4A19C 8004959C AC6D0080 */  sw         $t5, 0x80($v1)
.L800495A0:
/* 4A1A0 800495A0 11C00005 */  beqz       $t6, .L800495B8
/* 4A1A4 800495A4 24020002 */   addiu     $v0, $zero, 2
/* 4A1A8 800495A8 8C6F0080 */  lw         $t7, 0x80($v1)
/* 4A1AC 800495AC 00000000 */  nop
/* 4A1B0 800495B0 35F80020 */  ori        $t8, $t7, 0x20
/* 4A1B4 800495B4 AC780080 */  sw         $t8, 0x80($v1)
.L800495B8:
/* 4A1B8 800495B8 907900D1 */  lbu        $t9, 0xd1($v1)
/* 4A1BC 800495BC 24010016 */  addiu      $at, $zero, 0x16
/* 4A1C0 800495C0 13210002 */  beq        $t9, $at, .L800495CC
/* 4A1C4 800495C4 00000000 */   nop
/* 4A1C8 800495C8 AC600150 */  sw         $zero, 0x150($v1)
.L800495CC:
/* 4A1CC 800495CC 10000020 */  b          .L80049650
/* 4A1D0 800495D0 A46800D0 */   sh        $t0, 0xd0($v1)
.L800495D4:
/* 4A1D4 800495D4 3C098013 */  lui        $t1, %hi(D_801373D8)
/* 4A1D8 800495D8 952973D8 */  lhu        $t1, %lo(D_801373D8)($t1)
/* 4A1DC 800495DC 00000000 */  nop
/* 4A1E0 800495E0 312A0020 */  andi       $t2, $t1, 0x20
/* 4A1E4 800495E4 1140000D */  beqz       $t2, .L8004961C
/* 4A1E8 800495E8 00046080 */   sll       $t4, $a0, 2
/* 4A1EC 800495EC 01846023 */  subu       $t4, $t4, $a0
/* 4A1F0 800495F0 000C6080 */  sll        $t4, $t4, 2
/* 4A1F4 800495F4 01846021 */  addu       $t4, $t4, $a0
/* 4A1F8 800495F8 000C6080 */  sll        $t4, $t4, 2
/* 4A1FC 800495FC 01846023 */  subu       $t4, $t4, $a0
/* 4A200 80049600 000C60C0 */  sll        $t4, $t4, 3
/* 4A204 80049604 3C01800F */  lui        $at, %hi(D_800EF5E0)
/* 4A208 80049608 002C0821 */  addu       $at, $at, $t4
/* 4A20C 8004960C 240B002D */  addiu      $t3, $zero, 0x2d
/* 4A210 80049610 A42BF5E0 */  sh         $t3, %lo(D_800EF5E0)($at)
/* 4A214 80049614 1000000E */  b          .L80049650
/* 4A218 80049618 24020003 */   addiu     $v0, $zero, 3
.L8004961C:
/* 4A21C 8004961C 00047080 */  sll        $t6, $a0, 2
/* 4A220 80049620 01C47023 */  subu       $t6, $t6, $a0
/* 4A224 80049624 000E7080 */  sll        $t6, $t6, 2
/* 4A228 80049628 01C47021 */  addu       $t6, $t6, $a0
/* 4A22C 8004962C 000E7080 */  sll        $t6, $t6, 2
/* 4A230 80049630 01C47023 */  subu       $t6, $t6, $a0
/* 4A234 80049634 000E70C0 */  sll        $t6, $t6, 3
/* 4A238 80049638 3C01800F */  lui        $at, %hi(D_800EF5E0)
/* 4A23C 8004963C 002E0821 */  addu       $at, $at, $t6
/* 4A240 80049640 240D002C */  addiu      $t5, $zero, 0x2c
/* 4A244 80049644 A42DF5E0 */  sh         $t5, %lo(D_800EF5E0)($at)
/* 4A248 80049648 10000001 */  b          .L80049650
/* 4A24C 8004964C 24020003 */   addiu     $v0, $zero, 3
.L80049650:
/* 4A250 80049650 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4A254 80049654 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4A258 80049658 03E00008 */  jr         $ra
/* 4A25C 8004965C 00000000 */   nop
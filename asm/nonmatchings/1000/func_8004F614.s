glabel func_8004F614
/* 50214 8004F614 308EFFFF */  andi       $t6, $a0, 0xffff
/* 50218 8004F618 000E7880 */  sll        $t7, $t6, 2
/* 5021C 8004F61C 01EE7823 */  subu       $t7, $t7, $t6
/* 50220 8004F620 000F7880 */  sll        $t7, $t7, 2
/* 50224 8004F624 01EE7821 */  addu       $t7, $t7, $t6
/* 50228 8004F628 000F7880 */  sll        $t7, $t7, 2
/* 5022C 8004F62C 01EE7823 */  subu       $t7, $t7, $t6
/* 50230 8004F630 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 50234 8004F634 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 50238 8004F638 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 5023C 8004F63C 000F78C0 */  sll        $t7, $t7, 3
/* 50240 8004F640 01F81821 */  addu       $v1, $t7, $t8
/* 50244 8004F644 94620142 */  lhu        $v0, 0x142($v1)
/* 50248 8004F648 AFB00018 */  sw         $s0, 0x18($sp)
/* 5024C 8004F64C AFA40048 */  sw         $a0, 0x48($sp)
/* 50250 8004F650 947000D6 */  lhu        $s0, 0xd6($v1)
/* 50254 8004F654 28410003 */  slti       $at, $v0, 3
/* 50258 8004F658 01C02025 */  or         $a0, $t6, $zero
/* 5025C 8004F65C AFBF001C */  sw         $ra, 0x1c($sp)
/* 50260 8004F660 AFA5004C */  sw         $a1, 0x4c($sp)
/* 50264 8004F664 AFA60050 */  sw         $a2, 0x50($sp)
/* 50268 8004F668 14200002 */  bnez       $at, .L8004F674
/* 5026C 8004F66C AFA70054 */   sw        $a3, 0x54($sp)
/* 50270 8004F670 00001025 */  or         $v0, $zero, $zero
.L8004F674:
/* 50274 8004F674 00025080 */  sll        $t2, $v0, 2
/* 50278 8004F678 3C0B800D */  lui        $t3, %hi(D_800D413C)
/* 5027C 8004F67C 016A5821 */  addu       $t3, $t3, $t2
/* 50280 8004F680 856B413C */  lh         $t3, %lo(D_800D413C)($t3)
/* 50284 8004F684 3C0D8022 */  lui        $t5, 0x8022
/* 50288 8004F688 24190012 */  addiu      $t9, $zero, 0x12
/* 5028C 8004F68C 240C0001 */  addiu      $t4, $zero, 1
/* 50290 8004F690 35ADD4E8 */  ori        $t5, $t5, 0xd4e8
/* 50294 8004F694 AFB90034 */  sw         $t9, 0x34($sp)
/* 50298 8004F698 AFAC003C */  sw         $t4, 0x3c($sp)
/* 5029C 8004F69C AFAD0044 */  sw         $t5, 0x44($sp)
/* 502A0 8004F6A0 27A50034 */  addiu      $a1, $sp, 0x34
/* 502A4 8004F6A4 00003025 */  or         $a2, $zero, $zero
/* 502A8 8004F6A8 3C074040 */  lui        $a3, 0x4040
/* 502AC 8004F6AC AFA30028 */  sw         $v1, 0x28($sp)
/* 502B0 8004F6B0 A7A4004A */  sh         $a0, 0x4a($sp)
/* 502B4 8004F6B4 0C016762 */  jal        func_80059D88
/* 502B8 8004F6B8 AFAB0038 */   sw        $t3, 0x38($sp)
/* 502BC 8004F6BC 8FA30028 */  lw         $v1, 0x28($sp)
/* 502C0 8004F6C0 3C01FDFF */  lui        $at, 0xfdff
/* 502C4 8004F6C4 8C6E0080 */  lw         $t6, 0x80($v1)
/* 502C8 8004F6C8 3421FFFF */  ori        $at, $at, 0xffff
/* 502CC 8004F6CC 01C17824 */  and        $t7, $t6, $at
/* 502D0 8004F6D0 97A4004A */  lhu        $a0, 0x4a($sp)
/* 502D4 8004F6D4 3401FFFF */  ori        $at, $zero, 0xffff
/* 502D8 8004F6D8 02003025 */  or         $a2, $s0, $zero
/* 502DC 8004F6DC 16010003 */  bne        $s0, $at, .L8004F6EC
/* 502E0 8004F6E0 AC6F0080 */   sw        $t7, 0x80($v1)
/* 502E4 8004F6E4 10000038 */  b          .L8004F7C8
/* 502E8 8004F6E8 02001025 */   or        $v0, $s0, $zero
.L8004F6EC:
/* 502EC 8004F6EC 0010C080 */  sll        $t8, $s0, 2
/* 502F0 8004F6F0 0310C023 */  subu       $t8, $t8, $s0
/* 502F4 8004F6F4 0018C080 */  sll        $t8, $t8, 2
/* 502F8 8004F6F8 0310C021 */  addu       $t8, $t8, $s0
/* 502FC 8004F6FC 0018C080 */  sll        $t8, $t8, 2
/* 50300 8004F700 0310C023 */  subu       $t8, $t8, $s0
/* 50304 8004F704 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 50308 8004F708 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 5030C 8004F70C 0018C0C0 */  sll        $t8, $t8, 3
/* 50310 8004F710 03191021 */  addu       $v0, $t8, $t9
/* 50314 8004F714 8C490080 */  lw         $t1, 0x80($v0)
/* 50318 8004F718 3205FFFF */  andi       $a1, $s0, 0xffff
/* 5031C 8004F71C 312A0002 */  andi       $t2, $t1, 2
/* 50320 8004F720 15400003 */  bnez       $t2, .L8004F730
/* 50324 8004F724 00000000 */   nop
/* 50328 8004F728 10000027 */  b          .L8004F7C8
/* 5032C 8004F72C 3402FFFF */   ori       $v0, $zero, 0xffff
.L8004F730:
/* 50330 8004F730 AFA20020 */  sw         $v0, 0x20($sp)
/* 50334 8004F734 AFA30028 */  sw         $v1, 0x28($sp)
/* 50338 8004F738 0C013D45 */  jal        func_8004F514
/* 5033C 8004F73C AFA60024 */   sw        $a2, 0x24($sp)
/* 50340 8004F740 8FA20020 */  lw         $v0, 0x20($sp)
/* 50344 8004F744 87A50056 */  lh         $a1, 0x56($sp)
/* 50348 8004F748 8C4B0098 */  lw         $t3, 0x98($v0)
/* 5034C 8004F74C 8FA30028 */  lw         $v1, 0x28($sp)
/* 50350 8004F750 240D00C0 */  addiu      $t5, $zero, 0xc0
/* 50354 8004F754 240E0019 */  addiu      $t6, $zero, 0x19
/* 50358 8004F758 356C0400 */  ori        $t4, $t3, 0x400
/* 5035C 8004F75C AC4C0098 */  sw         $t4, 0x98($v0)
/* 50360 8004F760 A04D00DC */  sb         $t5, 0xdc($v0)
/* 50364 8004F764 A04E00DD */  sb         $t6, 0xdd($v0)
/* 50368 8004F768 A44500E2 */  sh         $a1, 0xe2($v0)
/* 5036C 8004F76C 8C6F0080 */  lw         $t7, 0x80($v1)
/* 50370 8004F770 8FA60024 */  lw         $a2, 0x24($sp)
/* 50374 8004F774 31F80020 */  andi       $t8, $t7, 0x20
/* 50378 8004F778 17000004 */  bnez       $t8, .L8004F78C
/* 5037C 8004F77C 24040002 */   addiu     $a0, $zero, 2
/* 50380 8004F780 8FB9004C */  lw         $t9, 0x4c($sp)
/* 50384 8004F784 10000005 */  b          .L8004F79C
/* 50388 8004F788 AC5900F8 */   sw        $t9, 0xf8($v0)
.L8004F78C:
/* 5038C 8004F78C 8FA9004C */  lw         $t1, 0x4c($sp)
/* 50390 8004F790 00000000 */  nop
/* 50394 8004F794 00095023 */  negu       $t2, $t1
/* 50398 8004F798 AC4A00F8 */  sw         $t2, 0xf8($v0)
.L8004F79C:
/* 5039C 8004F79C 8FAB0050 */  lw         $t3, 0x50($sp)
/* 503A0 8004F7A0 14C00008 */  bnez       $a2, .L8004F7C4
/* 503A4 8004F7A4 AC4B00FC */   sw        $t3, 0xfc($v0)
/* 503A8 8004F7A8 0C0171DD */  jal        func_8005C774
/* 503AC 8004F7AC A445013E */   sh        $a1, 0x13e($v0)
/* 503B0 8004F7B0 24440001 */  addiu      $a0, $v0, 1
/* 503B4 8004F7B4 00046600 */  sll        $t4, $a0, 0x18
/* 503B8 8004F7B8 000C2603 */  sra        $a0, $t4, 0x18
/* 503BC 8004F7BC 0C017148 */  jal        func_8005C520
/* 503C0 8004F7C0 24050006 */   addiu     $a1, $zero, 6
.L8004F7C4:
/* 503C4 8004F7C4 02001025 */  or         $v0, $s0, $zero
.L8004F7C8:
/* 503C8 8004F7C8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 503CC 8004F7CC 8FB00018 */  lw         $s0, 0x18($sp)
/* 503D0 8004F7D0 03E00008 */  jr         $ra
/* 503D4 8004F7D4 27BD0048 */   addiu     $sp, $sp, 0x48

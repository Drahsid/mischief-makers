glabel func_80060F88
/* 61B88 80060F88 308EFFFF */  andi       $t6, $a0, 0xffff
/* 61B8C 80060F8C 000E7880 */  sll        $t7, $t6, 2
/* 61B90 80060F90 01EE7823 */  subu       $t7, $t7, $t6
/* 61B94 80060F94 000F7880 */  sll        $t7, $t7, 2
/* 61B98 80060F98 01EE7821 */  addu       $t7, $t7, $t6
/* 61B9C 80060F9C 000F7880 */  sll        $t7, $t7, 2
/* 61BA0 80060FA0 01EE7823 */  subu       $t7, $t7, $t6
/* 61BA4 80060FA4 3C18800F */  lui        $t8, %hi(gActors)
/* 61BA8 80060FA8 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 61BAC 80060FAC 000F78C0 */  sll        $t7, $t7, 3
/* 61BB0 80060FB0 01F81021 */  addu       $v0, $t7, $t8
/* 61BB4 80060FB4 944500D0 */  lhu        $a1, 0xd0($v0)
/* 61BB8 80060FB8 AFA40000 */  sw         $a0, ($sp)
/* 61BBC 80060FBC 10A0000B */  beqz       $a1, .L80060FEC
/* 61BC0 80060FC0 00A01825 */   or        $v1, $a1, $zero
/* 61BC4 80060FC4 24010001 */  addiu      $at, $zero, 1
/* 61BC8 80060FC8 1061002B */  beq        $v1, $at, .L80061078
/* 61BCC 80060FCC 3C0F800C */   lui       $t7, 0x800c
/* 61BD0 80060FD0 24010002 */  addiu      $at, $zero, 2
/* 61BD4 80060FD4 10610099 */  beq        $v1, $at, .L8006123C
/* 61BD8 80060FD8 24010003 */   addiu     $at, $zero, 3
/* 61BDC 80060FDC 106100AA */  beq        $v1, $at, .L80061288
/* 61BE0 80060FE0 00000000 */   nop
/* 61BE4 80060FE4 03E00008 */  jr         $ra
/* 61BE8 80060FE8 00000000 */   nop
.L80060FEC:
/* 61BEC 80060FEC 4449F800 */  cfc1       $t1, $31
/* 61BF0 80060FF0 3C013F80 */  lui        $at, 0x3f80
/* 61BF4 80060FF4 44810000 */  mtc1       $at, $f0
/* 61BF8 80060FF8 35210003 */  ori        $at, $t1, 3
/* 61BFC 80060FFC 38210002 */  xori       $at, $at, 2
/* 61C00 80061000 44C1F800 */  ctc1       $at, $31
/* 61C04 80061004 C4440110 */  lwc1       $f4, 0x110($v0)
/* 61C08 80061008 94590094 */  lhu        $t9, 0x94($v0)
/* 61C0C 8006100C 460021A4 */  cvt.w.s    $f6, $f4
/* 61C10 80061010 944B00D8 */  lhu        $t3, 0xd8($v0)
/* 61C14 80061014 440A3000 */  mfc1       $t2, $f6
/* 61C18 80061018 3C0D800D */  lui        $t5, 0x800d
/* 61C1C 8006101C 3728300F */  ori        $t0, $t9, 0x300f
/* 61C20 80061020 000B6080 */  sll        $t4, $t3, 2
/* 61C24 80061024 A4480094 */  sh         $t0, 0x94($v0)
/* 61C28 80061028 A4400084 */  sh         $zero, 0x84($v0)
/* 61C2C 8006102C 01AC6821 */  addu       $t5, $t5, $t4
/* 61C30 80061030 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 61C34 80061034 E44000B8 */  swc1       $f0, 0xb8($v0)
/* 61C38 80061038 E440012C */  swc1       $f0, 0x12c($v0)
/* 61C3C 8006103C A44A0090 */  sh         $t2, 0x90($v0)
/* 61C40 80061040 8DAD74A0 */  lw         $t5, 0x74a0($t5)
/* 61C44 80061044 8C430154 */  lw         $v1, 0x154($v0)
/* 61C48 80061048 24AE0001 */  addiu      $t6, $a1, 1
/* 61C4C 8006104C 44C9F800 */  ctc1       $t1, $31
/* 61C50 80061050 A44E00D0 */  sh         $t6, 0xd0($v0)
/* 61C54 80061054 1060009E */  beqz       $v1, .L800612D0
/* 61C58 80061058 AC4D017C */   sw        $t5, 0x17c($v0)
/* 61C5C 8006105C 3C01800F */  lui        $at, %hi(D_800EC180)
/* 61C60 80061060 C420C180 */  lwc1       $f0, %lo(D_800EC180)($at)
/* 61C64 80061064 A44300D0 */  sh         $v1, 0xd0($v0)
/* 61C68 80061068 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 61C6C 8006106C E44000B8 */  swc1       $f0, 0xb8($v0)
/* 61C70 80061070 03E00008 */  jr         $ra
/* 61C74 80061074 E440012C */   swc1      $f0, 0x12c($v0)
.L80061078:
/* 61C78 80061078 95EFE4F0 */  lhu        $t7, -0x1b10($t7)
/* 61C7C 8006107C 24010006 */  addiu      $at, $zero, 6
/* 61C80 80061080 15E10024 */  bne        $t7, $at, .L80061114
/* 61C84 80061084 3C04800C */   lui       $a0, %hi(D_800BE4FC)
/* 61C88 80061088 3C18800C */  lui        $t8, %hi(D_800BE520)
/* 61C8C 8006108C 9718E520 */  lhu        $t8, %lo(D_800BE520)($t8)
/* 61C90 80061090 9484E4FC */  lhu        $a0, %lo(D_800BE4FC)($a0)
/* 61C94 80061094 3C0C800C */  lui        $t4, 0x800c
/* 61C98 80061098 0098C824 */  and        $t9, $a0, $t8
/* 61C9C 8006109C 1320000C */  beqz       $t9, .L800610D0
/* 61CA0 800610A0 00000000 */   nop
/* 61CA4 800610A4 944300D8 */  lhu        $v1, 0xd8($v0)
/* 61CA8 800610A8 3C0B800D */  lui        $t3, 0x800d
/* 61CAC 800610AC 18600008 */  blez       $v1, .L800610D0
/* 61CB0 800610B0 2468FFFF */   addiu     $t0, $v1, -1
/* 61CB4 800610B4 3109FFFF */  andi       $t1, $t0, 0xffff
/* 61CB8 800610B8 00095080 */  sll        $t2, $t1, 2
/* 61CBC 800610BC A44800D8 */  sh         $t0, 0xd8($v0)
/* 61CC0 800610C0 016A5821 */  addu       $t3, $t3, $t2
/* 61CC4 800610C4 8D6B74A0 */  lw         $t3, 0x74a0($t3)
/* 61CC8 800610C8 00000000 */  nop
/* 61CCC 800610CC AC4B017C */  sw         $t3, 0x17c($v0)
.L800610D0:
/* 61CD0 800610D0 958CE524 */  lhu        $t4, -0x1adc($t4)
/* 61CD4 800610D4 00000000 */  nop
/* 61CD8 800610D8 008C6824 */  and        $t5, $a0, $t4
/* 61CDC 800610DC 11A0000D */  beqz       $t5, .L80061114
/* 61CE0 800610E0 00000000 */   nop
/* 61CE4 800610E4 944300D8 */  lhu        $v1, 0xd8($v0)
/* 61CE8 800610E8 3C19800D */  lui        $t9, 0x800d
/* 61CEC 800610EC 28610019 */  slti       $at, $v1, 0x19
/* 61CF0 800610F0 10200008 */  beqz       $at, .L80061114
/* 61CF4 800610F4 246E0001 */   addiu     $t6, $v1, 1
/* 61CF8 800610F8 31CFFFFF */  andi       $t7, $t6, 0xffff
/* 61CFC 800610FC 000FC080 */  sll        $t8, $t7, 2
/* 61D00 80061100 A44E00D8 */  sh         $t6, 0xd8($v0)
/* 61D04 80061104 0338C821 */  addu       $t9, $t9, $t8
/* 61D08 80061108 8F3974A0 */  lw         $t9, 0x74a0($t9)
/* 61D0C 8006110C 00000000 */  nop
/* 61D10 80061110 AC59017C */  sw         $t9, 0x17c($v0)
.L80061114:
/* 61D14 80061114 3C03800C */  lui        $v1, %hi(D_800BE4F8)
/* 61D18 80061118 3C08800C */  lui        $t0, %hi(D_800BE50C)
/* 61D1C 8006111C 9508E50C */  lhu        $t0, %lo(D_800BE50C)($t0)
/* 61D20 80061120 9463E4F8 */  lhu        $v1, %lo(D_800BE4F8)($v1)
/* 61D24 80061124 3C0A800C */  lui        $t2, 0x800c
/* 61D28 80061128 00684824 */  and        $t1, $v1, $t0
/* 61D2C 8006112C 11200009 */  beqz       $t1, .L80061154
/* 61D30 80061130 3C0C800C */   lui       $t4, 0x800c
/* 61D34 80061134 C44800C0 */  lwc1       $f8, 0xc0($v0)
/* 61D38 80061138 3C014010 */  lui        $at, 0x4010
/* 61D3C 8006113C 44810800 */  mtc1       $at, $f1
/* 61D40 80061140 44800000 */  mtc1       $zero, $f0
/* 61D44 80061144 460042A1 */  cvt.d.s    $f10, $f8
/* 61D48 80061148 46205400 */  add.d      $f16, $f10, $f0
/* 61D4C 8006114C 462084A0 */  cvt.s.d    $f18, $f16
/* 61D50 80061150 E45200C0 */  swc1       $f18, 0xc0($v0)
.L80061154:
/* 61D54 80061154 954AE510 */  lhu        $t2, -0x1af0($t2)
/* 61D58 80061158 3C014010 */  lui        $at, 0x4010
/* 61D5C 8006115C 44810800 */  mtc1       $at, $f1
/* 61D60 80061160 44800000 */  mtc1       $zero, $f0
/* 61D64 80061164 006A5824 */  and        $t3, $v1, $t2
/* 61D68 80061168 11600007 */  beqz       $t3, .L80061188
/* 61D6C 8006116C 3C0E800C */   lui       $t6, 0x800c
/* 61D70 80061170 C44400C0 */  lwc1       $f4, 0xc0($v0)
/* 61D74 80061174 00000000 */  nop
/* 61D78 80061178 460021A1 */  cvt.d.s    $f6, $f4
/* 61D7C 8006117C 46203201 */  sub.d      $f8, $f6, $f0
/* 61D80 80061180 462042A0 */  cvt.s.d    $f10, $f8
/* 61D84 80061184 E44A00C0 */  swc1       $f10, 0xc0($v0)
.L80061188:
/* 61D88 80061188 958CE508 */  lhu        $t4, -0x1af8($t4)
/* 61D8C 8006118C 3C18800C */  lui        $t8, 0x800c
/* 61D90 80061190 006C6824 */  and        $t5, $v1, $t4
/* 61D94 80061194 11A00007 */  beqz       $t5, .L800611B4
/* 61D98 80061198 3C08800C */   lui       $t0, 0x800c
/* 61D9C 8006119C C45000BC */  lwc1       $f16, 0xbc($v0)
/* 61DA0 800611A0 00000000 */  nop
/* 61DA4 800611A4 460084A1 */  cvt.d.s    $f18, $f16
/* 61DA8 800611A8 46209100 */  add.d      $f4, $f18, $f0
/* 61DAC 800611AC 462021A0 */  cvt.s.d    $f6, $f4
/* 61DB0 800611B0 E44600BC */  swc1       $f6, 0xbc($v0)
.L800611B4:
/* 61DB4 800611B4 95CEE504 */  lhu        $t6, -0x1afc($t6)
/* 61DB8 800611B8 00000000 */  nop
/* 61DBC 800611BC 006E7824 */  and        $t7, $v1, $t6
/* 61DC0 800611C0 11E00007 */  beqz       $t7, .L800611E0
/* 61DC4 800611C4 00000000 */   nop
/* 61DC8 800611C8 C44800BC */  lwc1       $f8, 0xbc($v0)
/* 61DCC 800611CC 00000000 */  nop
/* 61DD0 800611D0 460042A1 */  cvt.d.s    $f10, $f8
/* 61DD4 800611D4 46205401 */  sub.d      $f16, $f10, $f0
/* 61DD8 800611D8 462084A0 */  cvt.s.d    $f18, $f16
/* 61DDC 800611DC E45200BC */  swc1       $f18, 0xbc($v0)
.L800611E0:
/* 61DE0 800611E0 9718E530 */  lhu        $t8, -0x1ad0($t8)
/* 61DE4 800611E4 00000000 */  nop
/* 61DE8 800611E8 0078C824 */  and        $t9, $v1, $t8
/* 61DEC 800611EC 13200007 */  beqz       $t9, .L8006120C
/* 61DF0 800611F0 00000000 */   nop
/* 61DF4 800611F4 C44400C4 */  lwc1       $f4, 0xc4($v0)
/* 61DF8 800611F8 00000000 */  nop
/* 61DFC 800611FC 460021A1 */  cvt.d.s    $f6, $f4
/* 61E00 80061200 46203200 */  add.d      $f8, $f6, $f0
/* 61E04 80061204 462042A0 */  cvt.s.d    $f10, $f8
/* 61E08 80061208 E44A00C4 */  swc1       $f10, 0xc4($v0)
.L8006120C:
/* 61E0C 8006120C 9508E534 */  lhu        $t0, -0x1acc($t0)
/* 61E10 80061210 00000000 */  nop
/* 61E14 80061214 00684824 */  and        $t1, $v1, $t0
/* 61E18 80061218 1120002D */  beqz       $t1, .L800612D0
/* 61E1C 8006121C 00000000 */   nop
/* 61E20 80061220 C45000C4 */  lwc1       $f16, 0xc4($v0)
/* 61E24 80061224 00000000 */  nop
/* 61E28 80061228 460084A1 */  cvt.d.s    $f18, $f16
/* 61E2C 8006122C 46209101 */  sub.d      $f4, $f18, $f0
/* 61E30 80061230 462021A0 */  cvt.s.d    $f6, $f4
/* 61E34 80061234 03E00008 */  jr         $ra
/* 61E38 80061238 E44600C4 */   swc1      $f6, 0xc4($v0)
.L8006123C:
/* 61E3C 8006123C C44800BC */  lwc1       $f8, 0xbc($v0)
/* 61E40 80061240 3C014010 */  lui        $at, 0x4010
/* 61E44 80061244 44810800 */  mtc1       $at, $f1
/* 61E48 80061248 44800000 */  mtc1       $zero, $f0
/* 61E4C 8006124C 460042A1 */  cvt.d.s    $f10, $f8
/* 61E50 80061250 46205400 */  add.d      $f16, $f10, $f0
/* 61E54 80061254 C44400C0 */  lwc1       $f4, 0xc0($v0)
/* 61E58 80061258 462084A0 */  cvt.s.d    $f18, $f16
/* 61E5C 8006125C C45000C4 */  lwc1       $f16, 0xc4($v0)
/* 61E60 80061260 E45200BC */  swc1       $f18, 0xbc($v0)
/* 61E64 80061264 460021A1 */  cvt.d.s    $f6, $f4
/* 61E68 80061268 460084A1 */  cvt.d.s    $f18, $f16
/* 61E6C 8006126C 46203201 */  sub.d      $f8, $f6, $f0
/* 61E70 80061270 46209101 */  sub.d      $f4, $f18, $f0
/* 61E74 80061274 462042A0 */  cvt.s.d    $f10, $f8
/* 61E78 80061278 462021A0 */  cvt.s.d    $f6, $f4
/* 61E7C 8006127C E44A00C0 */  swc1       $f10, 0xc0($v0)
/* 61E80 80061280 03E00008 */  jr         $ra
/* 61E84 80061284 E44600C4 */   swc1      $f6, 0xc4($v0)
.L80061288:
/* 61E88 80061288 C44800BC */  lwc1       $f8, 0xbc($v0)
/* 61E8C 8006128C 3C014010 */  lui        $at, 0x4010
/* 61E90 80061290 44810800 */  mtc1       $at, $f1
/* 61E94 80061294 44800000 */  mtc1       $zero, $f0
/* 61E98 80061298 460042A1 */  cvt.d.s    $f10, $f8
/* 61E9C 8006129C 46205400 */  add.d      $f16, $f10, $f0
/* 61EA0 800612A0 C44400C0 */  lwc1       $f4, 0xc0($v0)
/* 61EA4 800612A4 462084A0 */  cvt.s.d    $f18, $f16
/* 61EA8 800612A8 C45000C4 */  lwc1       $f16, 0xc4($v0)
/* 61EAC 800612AC E45200BC */  swc1       $f18, 0xbc($v0)
/* 61EB0 800612B0 460021A1 */  cvt.d.s    $f6, $f4
/* 61EB4 800612B4 460084A1 */  cvt.d.s    $f18, $f16
/* 61EB8 800612B8 46203201 */  sub.d      $f8, $f6, $f0
/* 61EBC 800612BC 46209100 */  add.d      $f4, $f18, $f0
/* 61EC0 800612C0 462042A0 */  cvt.s.d    $f10, $f8
/* 61EC4 800612C4 462021A0 */  cvt.s.d    $f6, $f4
/* 61EC8 800612C8 E44A00C0 */  swc1       $f10, 0xc0($v0)
/* 61ECC 800612CC E44600C4 */  swc1       $f6, 0xc4($v0)
.L800612D0:
/* 61ED0 800612D0 03E00008 */  jr         $ra
/* 61ED4 800612D4 00000000 */   nop

glabel func_800740C8
/* 74CC8 800740C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 74CCC 800740CC AFA40020 */  sw         $a0, 0x20($sp)
/* 74CD0 800740D0 97AE0022 */  lhu        $t6, 0x22($sp)
/* 74CD4 800740D4 3C18800F */  lui        $t8, 0x800f
/* 74CD8 800740D8 000E7880 */  sll        $t7, $t6, 2
/* 74CDC 800740DC 01EE7823 */  subu       $t7, $t7, $t6
/* 74CE0 800740E0 000F7880 */  sll        $t7, $t7, 2
/* 74CE4 800740E4 01EE7821 */  addu       $t7, $t7, $t6
/* 74CE8 800740E8 000F7880 */  sll        $t7, $t7, 2
/* 74CEC 800740EC 01EE7823 */  subu       $t7, $t7, $t6
/* 74CF0 800740F0 000F78C0 */  sll        $t7, $t7, 3
/* 74CF4 800740F4 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 74CF8 800740F8 01F81821 */  addu       $v1, $t7, $t8
/* 74CFC 800740FC 946500D0 */  lhu        $a1, 0xd0($v1)
/* 74D00 80074100 3401FFFD */  ori        $at, $zero, 0xfffd
/* 74D04 80074104 10A10057 */  beq        $a1, $at, .L80074264
/* 74D08 80074108 AFBF0014 */   sw        $ra, 0x14($sp)
/* 74D0C 8007410C 3401FFFE */  ori        $at, $zero, 0xfffe
/* 74D10 80074110 10A1000F */  beq        $a1, $at, .L80074150
/* 74D14 80074114 3401FFFF */   ori       $at, $zero, 0xffff
/* 74D18 80074118 10A10004 */  beq        $a1, $at, .L8007412C
/* 74D1C 8007411C 24B9FFFF */   addiu     $t9, $a1, -1
/* 74D20 80074120 8C640098 */  lw         $a0, 0x98($v1)
/* 74D24 80074124 1000005E */  b          .L800742A0
/* 74D28 80074128 3C01FFDF */   lui       $at, 0xffdf
.L8007412C:
/* 74D2C 8007412C 8C680080 */  lw         $t0, 0x80($v1)
/* 74D30 80074130 97A40022 */  lhu        $a0, 0x22($sp)
/* 74D34 80074134 35090001 */  ori        $t1, $t0, 1
/* 74D38 80074138 A47900D0 */  sh         $t9, 0xd0($v1)
/* 74D3C 8007413C AC690080 */  sw         $t1, 0x80($v1)
/* 74D40 80074140 0C01B357 */  jal        func_8006CD5C
/* 74D44 80074144 AFA30018 */   sw        $v1, 0x18($sp)
/* 74D48 80074148 8FA30018 */  lw         $v1, 0x18($sp)
/* 74D4C 8007414C 00000000 */  nop
.L80074150:
/* 74D50 80074150 97A40022 */  lhu        $a0, 0x22($sp)
/* 74D54 80074154 24050800 */  addiu      $a1, $zero, 0x800
/* 74D58 80074158 0C00A901 */  jal        func_8002A404
/* 74D5C 8007415C AFA30018 */   sw        $v1, 0x18($sp)
/* 74D60 80074160 8FA30018 */  lw         $v1, 0x18($sp)
/* 74D64 80074164 3C01FFF8 */  lui        $at, 0xfff8
/* 74D68 80074168 8C6200F0 */  lw         $v0, 0xf0($v1)
/* 74D6C 8007416C 34218001 */  ori        $at, $at, 0x8001
/* 74D70 80074170 0041082A */  slt        $at, $v0, $at
/* 74D74 80074174 14200002 */  bnez       $at, .L80074180
/* 74D78 80074178 244ABC00 */   addiu     $t2, $v0, -0x4400
/* 74D7C 8007417C AC6A00F0 */  sw         $t2, 0xf0($v1)
.L80074180:
/* 74D80 80074180 8C6200EC */  lw         $v0, 0xec($v1)
/* 74D84 80074184 00000000 */  nop
/* 74D88 80074188 18400006 */  blez       $v0, .L800741A4
/* 74D8C 8007418C 00000000 */   nop
/* 74D90 80074190 8C6B0098 */  lw         $t3, 0x98($v1)
/* 74D94 80074194 00000000 */  nop
/* 74D98 80074198 316C0008 */  andi       $t4, $t3, 8
/* 74D9C 8007419C 15800006 */  bnez       $t4, .L800741B8
/* 74DA0 800741A0 00027023 */   negu      $t6, $v0
.L800741A4:
/* 74DA4 800741A4 8C640098 */  lw         $a0, 0x98($v1)
/* 74DA8 800741A8 04410005 */  bgez       $v0, .L800741C0
/* 74DAC 800741AC 308D0004 */   andi      $t5, $a0, 4
/* 74DB0 800741B0 11A00003 */  beqz       $t5, .L800741C0
/* 74DB4 800741B4 00027023 */   negu      $t6, $v0
.L800741B8:
/* 74DB8 800741B8 8C640098 */  lw         $a0, 0x98($v1)
/* 74DBC 800741BC AC6E00EC */  sw         $t6, 0xec($v1)
.L800741C0:
/* 74DC0 800741C0 8C6200F0 */  lw         $v0, 0xf0($v1)
/* 74DC4 800741C4 308F0010 */  andi       $t7, $a0, 0x10
/* 74DC8 800741C8 18400006 */  blez       $v0, .L800741E4
/* 74DCC 800741CC 00000000 */   nop
/* 74DD0 800741D0 11E00004 */  beqz       $t7, .L800741E4
/* 74DD4 800741D4 00000000 */   nop
/* 74DD8 800741D8 8C640098 */  lw         $a0, 0x98($v1)
/* 74DDC 800741DC AC6000F0 */  sw         $zero, 0xf0($v1)
/* 74DE0 800741E0 00001025 */  or         $v0, $zero, $zero
.L800741E4:
/* 74DE4 800741E4 0441002D */  bgez       $v0, .L8007429C
/* 74DE8 800741E8 30980020 */   andi      $t8, $a0, 0x20
/* 74DEC 800741EC 1300002C */  beqz       $t8, .L800742A0
/* 74DF0 800741F0 3C01FFDF */   lui       $at, 0xffdf
/* 74DF4 800741F4 97A50022 */  lhu        $a1, 0x22($sp)
/* 74DF8 800741F8 24040036 */  addiu      $a0, $zero, 0x36
/* 74DFC 800741FC 0C000DB2 */  jal        func_800036C8
/* 74E00 80074200 AFA30018 */   sw        $v1, 0x18($sp)
/* 74E04 80074204 8FA30018 */  lw         $v1, 0x18($sp)
/* 74E08 80074208 3C010001 */  lui        $at, 1
/* 74E0C 8007420C 8C690080 */  lw         $t1, 0x80($v1)
/* 74E10 80074210 947900D0 */  lhu        $t9, 0xd0($v1)
/* 74E14 80074214 01215025 */  or         $t2, $t1, $at
/* 74E18 80074218 3C01FFFD */  lui        $at, 0xfffd
/* 74E1C 8007421C 3421FFFF */  ori        $at, $at, 0xffff
/* 74E20 80074220 8C6D0098 */  lw         $t5, 0x98($v1)
/* 74E24 80074224 01416024 */  and        $t4, $t2, $at
/* 74E28 80074228 2401FFBF */  addiu      $at, $zero, -0x41
/* 74E2C 8007422C 3C0F800E */  lui        $t7, %hi(D_800E20E0)
/* 74E30 80074230 25EF20E0 */  addiu      $t7, $t7, %lo(D_800E20E0)
/* 74E34 80074234 24180001 */  addiu      $t8, $zero, 1
/* 74E38 80074238 AC6A0080 */  sw         $t2, 0x80($v1)
/* 74E3C 8007423C 2728FFFF */  addiu      $t0, $t9, -1
/* 74E40 80074240 01A12024 */  and        $a0, $t5, $at
/* 74E44 80074244 A46800D0 */  sh         $t0, 0xd0($v1)
/* 74E48 80074248 AC640098 */  sw         $a0, 0x98($v1)
/* 74E4C 8007424C AC6C0080 */  sw         $t4, 0x80($v1)
/* 74E50 80074250 AC6000EC */  sw         $zero, 0xec($v1)
/* 74E54 80074254 AC6000F0 */  sw         $zero, 0xf0($v1)
/* 74E58 80074258 A47800E6 */  sh         $t8, 0xe6($v1)
/* 74E5C 8007425C 1000000F */  b          .L8007429C
/* 74E60 80074260 AC6F00E8 */   sw        $t7, 0xe8($v1)
.L80074264:
/* 74E64 80074264 9064009F */  lbu        $a0, 0x9f($v1)
/* 74E68 80074268 00002825 */  or         $a1, $zero, $zero
/* 74E6C 8007426C 24060004 */  addiu      $a2, $zero, 4
/* 74E70 80074270 0C00A607 */  jal        func_8002981C
/* 74E74 80074274 AFA30018 */   sw        $v1, 0x18($sp)
/* 74E78 80074278 8FA30018 */  lw         $v1, 0x18($sp)
/* 74E7C 8007427C 00000000 */  nop
/* 74E80 80074280 847900E6 */  lh         $t9, 0xe6($v1)
/* 74E84 80074284 A062009F */  sb         $v0, 0x9f($v1)
/* 74E88 80074288 17200002 */  bnez       $t9, .L80074294
/* 74E8C 8007428C 00000000 */   nop
/* 74E90 80074290 AC600080 */  sw         $zero, 0x80($v1)
.L80074294:
/* 74E94 80074294 8C640098 */  lw         $a0, 0x98($v1)
/* 74E98 80074298 00000000 */  nop
.L8007429C:
/* 74E9C 8007429C 3C01FFDF */  lui        $at, 0xffdf
.L800742A0:
/* 74EA0 800742A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74EA4 800742A4 3421F9FF */  ori        $at, $at, 0xf9ff
/* 74EA8 800742A8 00814024 */  and        $t0, $a0, $at
/* 74EAC 800742AC AC680098 */  sw         $t0, 0x98($v1)
/* 74EB0 800742B0 03E00008 */  jr         $ra
/* 74EB4 800742B4 27BD0020 */   addiu     $sp, $sp, 0x20

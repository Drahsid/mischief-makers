glabel func_8006605C
/* 66C5C 8006605C 3C0E800C */  lui        $t6, %hi(D_800BE4E0)
/* 66C60 80066060 95CEE4E0 */  lhu        $t6, %lo(D_800BE4E0)($t6)
/* 66C64 80066064 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 66C68 80066068 31CF0003 */  andi       $t7, $t6, 3
/* 66C6C 8006606C AFBF0014 */  sw         $ra, 0x14($sp)
/* 66C70 80066070 15E0009B */  bnez       $t7, .L800662E0
/* 66C74 80066074 AFA40018 */   sw        $a0, 0x18($sp)
/* 66C78 80066078 24040168 */  addiu      $a0, $zero, 0x168
/* 66C7C 8006607C 00002825 */  or         $a1, $zero, $zero
/* 66C80 80066080 00003025 */  or         $a2, $zero, $zero
/* 66C84 80066084 0C00C4A1 */  jal        func_80031284
/* 66C88 80066088 00003825 */   or        $a3, $zero, $zero
/* 66C8C 8006608C 97A8001A */  lhu        $t0, 0x1a($sp)
/* 66C90 80066090 10400041 */  beqz       $v0, .L80066198
/* 66C94 80066094 00002825 */   or        $a1, $zero, $zero
/* 66C98 80066098 0002C080 */  sll        $t8, $v0, 2
/* 66C9C 8006609C 0302C023 */  subu       $t8, $t8, $v0
/* 66CA0 800660A0 0018C080 */  sll        $t8, $t8, 2
/* 66CA4 800660A4 00085080 */  sll        $t2, $t0, 2
/* 66CA8 800660A8 0302C021 */  addu       $t8, $t8, $v0
/* 66CAC 800660AC 01485023 */  subu       $t2, $t2, $t0
/* 66CB0 800660B0 0018C080 */  sll        $t8, $t8, 2
/* 66CB4 800660B4 000A5080 */  sll        $t2, $t2, 2
/* 66CB8 800660B8 0302C023 */  subu       $t8, $t8, $v0
/* 66CBC 800660BC 3C19800F */  lui        $t9, %hi(gActors)
/* 66CC0 800660C0 01485021 */  addu       $t2, $t2, $t0
/* 66CC4 800660C4 3C01800F */  lui        $at, %hi(D_800EC510)
/* 66CC8 800660C8 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 66CCC 800660CC 0018C0C0 */  sll        $t8, $t8, 3
/* 66CD0 800660D0 000A5080 */  sll        $t2, $t2, 2
/* 66CD4 800660D4 C420C510 */  lwc1       $f0, %lo(D_800EC510)($at)
/* 66CD8 800660D8 03191821 */  addu       $v1, $t8, $t9
/* 66CDC 800660DC 24090201 */  addiu      $t1, $zero, 0x201
/* 66CE0 800660E0 01485023 */  subu       $t2, $t2, $t0
/* 66CE4 800660E4 3C0B800F */  lui        $t3, %hi(gActors)
/* 66CE8 800660E8 A4690094 */  sh         $t1, 0x94($v1)
/* 66CEC 800660EC 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 66CF0 800660F0 000A50C0 */  sll        $t2, $t2, 3
/* 66CF4 800660F4 014B2021 */  addu       $a0, $t2, $t3
/* 66CF8 800660F8 3C01800F */  lui        $at, %hi(D_800EC518)
/* 66CFC 800660FC C48400B4 */  lwc1       $f4, 0xb4($a0)
/* 66D00 80066100 C429C518 */  lwc1       $f9, %lo(D_800EC518)($at)
/* 66D04 80066104 C428C51C */  lwc1       $f8, -0x3ae4($at)
/* 66D08 80066108 460021A1 */  cvt.d.s    $f6, $f4
/* 66D0C 8006610C 46283282 */  mul.d      $f10, $f6, $f8
/* 66D10 80066110 44882000 */  mtc1       $t0, $f4
/* 66D14 80066114 3C0E800E */  lui        $t6, %hi(D_800D84E8)
/* 66D18 80066118 3C014F80 */  lui        $at, 0x4f80
/* 66D1C 8006611C 240D0040 */  addiu      $t5, $zero, 0x40
/* 66D20 80066120 46205420 */  cvt.s.d    $f16, $f10
/* 66D24 80066124 25CE84E8 */  addiu      $t6, $t6, %lo(D_800D84E8)
/* 66D28 80066128 E47000B4 */  swc1       $f16, 0xb4($v1)
/* 66D2C 8006612C C47200B4 */  lwc1       $f18, 0xb4($v1)
/* 66D30 80066130 468021A0 */  cvt.s.w    $f6, $f4
/* 66D34 80066134 05010004 */  bgez       $t0, .L80066148
/* 66D38 80066138 E47200B8 */   swc1      $f18, 0xb8($v1)
/* 66D3C 8006613C 44814000 */  mtc1       $at, $f8
/* 66D40 80066140 00000000 */  nop
/* 66D44 80066144 46083180 */  add.s      $f6, $f6, $f8
.L80066148:
/* 66D48 80066148 E4660130 */  swc1       $f6, 0x130($v1)
/* 66D4C 8006614C 948C00D2 */  lhu        $t4, 0xd2($a0)
/* 66D50 80066150 3C014F80 */  lui        $at, 0x4f80
/* 66D54 80066154 448C5000 */  mtc1       $t4, $f10
/* 66D58 80066158 05810004 */  bgez       $t4, .L8006616C
/* 66D5C 8006615C 46805420 */   cvt.s.w   $f16, $f10
/* 66D60 80066160 44819000 */  mtc1       $at, $f18
/* 66D64 80066164 00000000 */  nop
/* 66D68 80066168 46128400 */  add.s      $f16, $f16, $f18
.L8006616C:
/* 66D6C 8006616C 3C013F80 */  lui        $at, 0x3f80
/* 66D70 80066170 44812000 */  mtc1       $at, $f4
/* 66D74 80066174 3C0140E0 */  lui        $at, 0x40e0
/* 66D78 80066178 44814000 */  mtc1       $at, $f8
/* 66D7C 8006617C E470014C */  swc1       $f16, 0x14c($v1)
/* 66D80 80066180 A06D009F */  sb         $t5, 0x9f($v1)
/* 66D84 80066184 AC6E018C */  sw         $t6, 0x18c($v1)
/* 66D88 80066188 E4600110 */  swc1       $f0, 0x110($v1)
/* 66D8C 8006618C E4600114 */  swc1       $f0, 0x114($v1)
/* 66D90 80066190 E464013C */  swc1       $f4, 0x13c($v1)
/* 66D94 80066194 E4680148 */  swc1       $f8, 0x148($v1)
.L80066198:
/* 66D98 80066198 2404018A */  addiu      $a0, $zero, 0x18a
/* 66D9C 8006619C 00003025 */  or         $a2, $zero, $zero
/* 66DA0 800661A0 0C00C4A1 */  jal        func_80031284
/* 66DA4 800661A4 00003825 */   or        $a3, $zero, $zero
/* 66DA8 800661A8 3C05800F */  lui        $a1, %hi(gActors)
/* 66DAC 800661AC 97A8001A */  lhu        $t0, 0x1a($sp)
/* 66DB0 800661B0 24A5F510 */  addiu      $a1, $a1, %lo(gActors)
/* 66DB4 800661B4 1040004A */  beqz       $v0, .L800662E0
/* 66DB8 800661B8 24060198 */   addiu     $a2, $zero, 0x198
/* 66DBC 800661BC 00460019 */  multu      $v0, $a2
/* 66DC0 800661C0 24180209 */  addiu      $t8, $zero, 0x209
/* 66DC4 800661C4 3C01800F */  lui        $at, 0x800f
/* 66DC8 800661C8 3C0A800E */  lui        $t2, %hi(D_800D8508)
/* 66DCC 800661CC 3C0B8003 */  lui        $t3, %hi(func_80030A24)
/* 66DD0 800661D0 254A8508 */  addiu      $t2, $t2, %lo(D_800D8508)
/* 66DD4 800661D4 256B0A24 */  addiu      $t3, $t3, %lo(func_80030A24)
/* 66DD8 800661D8 240CFFF0 */  addiu      $t4, $zero, -0x10
/* 66DDC 800661DC 00007812 */  mflo       $t7
/* 66DE0 800661E0 00AF1821 */  addu       $v1, $a1, $t7
/* 66DE4 800661E4 A4780094 */  sh         $t8, 0x94($v1)
/* 66DE8 800661E8 01060019 */  multu      $t0, $a2
/* 66DEC 800661EC C432C524 */  lwc1       $f18, -0x3adc($at)
/* 66DF0 800661F0 C433C520 */  lwc1       $f19, -0x3ae0($at)
/* 66DF4 800661F4 3C014F80 */  lui        $at, 0x4f80
/* 66DF8 800661F8 3C0F800C */  lui        $t7, 0x800c
/* 66DFC 800661FC 3C18FFE0 */  lui        $t8, 0xffe0
/* 66E00 80066200 0000C812 */  mflo       $t9
/* 66E04 80066204 00B92021 */  addu       $a0, $a1, $t9
/* 66E08 80066208 C48600B4 */  lwc1       $f6, 0xb4($a0)
/* 66E0C 8006620C 00000000 */  nop
/* 66E10 80066210 460032A1 */  cvt.d.s    $f10, $f6
/* 66E14 80066214 46325402 */  mul.d      $f16, $f10, $f18
/* 66E18 80066218 44883000 */  mtc1       $t0, $f6
/* 66E1C 8006621C 46208120 */  cvt.s.d    $f4, $f16
/* 66E20 80066220 E46400B4 */  swc1       $f4, 0xb4($v1)
/* 66E24 80066224 C46800B4 */  lwc1       $f8, 0xb4($v1)
/* 66E28 80066228 468032A0 */  cvt.s.w    $f10, $f6
/* 66E2C 8006622C 05010004 */  bgez       $t0, .L80066240
/* 66E30 80066230 E46800B8 */   swc1      $f8, 0xb8($v1)
/* 66E34 80066234 44819000 */  mtc1       $at, $f18
/* 66E38 80066238 00000000 */  nop
/* 66E3C 8006623C 46125280 */  add.s      $f10, $f10, $f18
.L80066240:
/* 66E40 80066240 E46A0130 */  swc1       $f10, 0x130($v1)
/* 66E44 80066244 948900D2 */  lhu        $t1, 0xd2($a0)
/* 66E48 80066248 3C014F80 */  lui        $at, 0x4f80
/* 66E4C 8006624C 44898000 */  mtc1       $t1, $f16
/* 66E50 80066250 05210004 */  bgez       $t1, .L80066264
/* 66E54 80066254 46808120 */   cvt.s.w   $f4, $f16
/* 66E58 80066258 44814000 */  mtc1       $at, $f8
/* 66E5C 8006625C 00000000 */  nop
/* 66E60 80066260 46082100 */  add.s      $f4, $f4, $f8
.L80066264:
/* 66E64 80066264 3C01BF80 */  lui        $at, 0xbf80
/* 66E68 80066268 44813000 */  mtc1       $at, $f6
/* 66E6C 8006626C 3C0140E0 */  lui        $at, 0x40e0
/* 66E70 80066270 44819000 */  mtc1       $at, $f18
/* 66E74 80066274 E464014C */  swc1       $f4, 0x14c($v1)
/* 66E78 80066278 AC6A018C */  sw         $t2, 0x18c($v1)
/* 66E7C 8006627C AC6B017C */  sw         $t3, 0x17c($v1)
/* 66E80 80066280 AC6C0104 */  sw         $t4, 0x104($v1)
/* 66E84 80066284 E466013C */  swc1       $f6, 0x13c($v1)
/* 66E88 80066288 E4720148 */  swc1       $f18, 0x148($v1)
/* 66E8C 8006628C 8C8D0080 */  lw         $t5, 0x80($a0)
/* 66E90 80066290 3C090020 */  lui        $t1, 0x20
/* 66E94 80066294 31AE0020 */  andi       $t6, $t5, 0x20
/* 66E98 80066298 11C00007 */  beqz       $t6, .L800662B8
/* 66E9C 8006629C 00000000 */   nop
/* 66EA0 800662A0 95EFE4E0 */  lhu        $t7, -0x1b20($t7)
/* 66EA4 800662A4 AC690150 */  sw         $t1, 0x150($v1)
/* 66EA8 800662A8 31F8000C */  andi       $t8, $t7, 0xc
/* 66EAC 800662AC 0018CD80 */  sll        $t9, $t8, 0x16
/* 66EB0 800662B0 1000000B */  b          .L800662E0
/* 66EB4 800662B4 AC790160 */   sw        $t9, 0x160($v1)
.L800662B8:
/* 66EB8 800662B8 8C6A0080 */  lw         $t2, 0x80($v1)
/* 66EBC 800662BC 3C0C800C */  lui        $t4, %hi(D_800BE4E0)
/* 66EC0 800662C0 354B0020 */  ori        $t3, $t2, 0x20
/* 66EC4 800662C4 AC6B0080 */  sw         $t3, 0x80($v1)
/* 66EC8 800662C8 958CE4E0 */  lhu        $t4, %lo(D_800BE4E0)($t4)
/* 66ECC 800662CC AC780150 */  sw         $t8, 0x150($v1)
/* 66ED0 800662D0 000C6823 */  negu       $t5, $t4
/* 66ED4 800662D4 31AE000C */  andi       $t6, $t5, 0xc
/* 66ED8 800662D8 000E7D80 */  sll        $t7, $t6, 0x16
/* 66EDC 800662DC AC6F0160 */  sw         $t7, 0x160($v1)
.L800662E0:
/* 66EE0 800662E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 66EE4 800662E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 66EE8 800662E8 03E00008 */  jr         $ra
/* 66EEC 800662EC 00000000 */   nop

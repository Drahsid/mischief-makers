glabel func_800B0504
/* B1104 800B0504 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B1108 800B0508 AFBF0014 */  sw         $ra, 0x14($sp)
/* B110C 800B050C AFA40038 */  sw         $a0, 0x38($sp)
/* B1110 800B0510 AFA5003C */  sw         $a1, 0x3c($sp)
/* B1114 800B0514 AFA60040 */  sw         $a2, 0x40($sp)
/* B1118 800B0518 AFA70044 */  sw         $a3, 0x44($sp)
/* B111C 800B051C 8FAE0044 */  lw         $t6, 0x44($sp)
/* B1120 800B0520 19C0002F */  blez       $t6, .L800B05E0
/* B1124 800B0524 00000000 */   nop
/* B1128 800B0528 8FAF003C */  lw         $t7, 0x3c($sp)
/* B112C 800B052C 8FA50044 */  lw         $a1, 0x44($sp)
/* B1130 800B0530 8DF90030 */  lw         $t9, 0x30($t7)
/* B1134 800B0534 8DE40044 */  lw         $a0, 0x44($t7)
/* B1138 800B0538 8DE60034 */  lw         $a2, 0x34($t7)
/* B113C 800B053C 0320F809 */  jalr       $t9
/* B1140 800B0540 00000000 */   nop
/* B1144 800B0544 AFA20030 */  sw         $v0, 0x30($sp)
/* B1148 800B0548 8FB80030 */  lw         $t8, 0x30($sp)
/* B114C 800B054C 33080007 */  andi       $t0, $t8, 7
/* B1150 800B0550 AFA80034 */  sw         $t0, 0x34($sp)
/* B1154 800B0554 8FA90044 */  lw         $t1, 0x44($sp)
/* B1158 800B0558 8FAA0034 */  lw         $t2, 0x34($sp)
/* B115C 800B055C 012A5821 */  addu       $t3, $t1, $t2
/* B1160 800B0560 AFAB0044 */  sw         $t3, 0x44($sp)
/* B1164 800B0564 8FAC0038 */  lw         $t4, 0x38($sp)
/* B1168 800B0568 258D0008 */  addiu      $t5, $t4, 8
/* B116C 800B056C AFAD0038 */  sw         $t5, 0x38($sp)
/* B1170 800B0570 AFAC002C */  sw         $t4, 0x2c($sp)
/* B1174 800B0574 87AE004E */  lh         $t6, 0x4e($sp)
/* B1178 800B0578 8FB8002C */  lw         $t8, 0x2c($sp)
/* B117C 800B057C 3C010800 */  lui        $at, 0x800
/* B1180 800B0580 31CFFFFF */  andi       $t7, $t6, 0xffff
/* B1184 800B0584 01E1C825 */  or         $t9, $t7, $at
/* B1188 800B0588 AF190000 */  sw         $t9, ($t8)
/* B118C 800B058C 8FA80044 */  lw         $t0, 0x44($sp)
/* B1190 800B0590 8FAD002C */  lw         $t5, 0x2c($sp)
/* B1194 800B0594 31090007 */  andi       $t1, $t0, 7
/* B1198 800B0598 01095023 */  subu       $t2, $t0, $t1
/* B119C 800B059C 254B0008 */  addiu      $t3, $t2, 8
/* B11A0 800B05A0 316CFFFF */  andi       $t4, $t3, 0xffff
/* B11A4 800B05A4 ADAC0004 */  sw         $t4, 4($t5)
/* B11A8 800B05A8 8FAE0038 */  lw         $t6, 0x38($sp)
/* B11AC 800B05AC 25CF0008 */  addiu      $t7, $t6, 8
/* B11B0 800B05B0 AFAF0038 */  sw         $t7, 0x38($sp)
/* B11B4 800B05B4 AFAE0028 */  sw         $t6, 0x28($sp)
/* B11B8 800B05B8 8FB80028 */  lw         $t8, 0x28($sp)
/* B11BC 800B05BC 3C190400 */  lui        $t9, 0x400
/* B11C0 800B05C0 AF190000 */  sw         $t9, ($t8)
/* B11C4 800B05C4 8FA80030 */  lw         $t0, 0x30($sp)
/* B11C8 800B05C8 8FA90034 */  lw         $t1, 0x34($sp)
/* B11CC 800B05CC 8FAB0028 */  lw         $t3, 0x28($sp)
/* B11D0 800B05D0 01095023 */  subu       $t2, $t0, $t1
/* B11D4 800B05D4 AD6A0004 */  sw         $t2, 4($t3)
/* B11D8 800B05D8 10000002 */  b          .L800B05E4
/* B11DC 800B05DC 00000000 */   nop
.L800B05E0:
/* B11E0 800B05E0 AFA00034 */  sw         $zero, 0x34($sp)
.L800B05E4:
/* B11E4 800B05E4 8FAC0050 */  lw         $t4, 0x50($sp)
/* B11E8 800B05E8 318D0002 */  andi       $t5, $t4, 2
/* B11EC 800B05EC 11A0000F */  beqz       $t5, .L800B062C
/* B11F0 800B05F0 00000000 */   nop
/* B11F4 800B05F4 8FAE0038 */  lw         $t6, 0x38($sp)
/* B11F8 800B05F8 25CF0008 */  addiu      $t7, $t6, 8
/* B11FC 800B05FC AFAF0038 */  sw         $t7, 0x38($sp)
/* B1200 800B0600 AFAE0024 */  sw         $t6, 0x24($sp)
/* B1204 800B0604 8FB80024 */  lw         $t8, 0x24($sp)
/* B1208 800B0608 3C190F00 */  lui        $t9, 0xf00
/* B120C 800B060C AF190000 */  sw         $t9, ($t8)
/* B1210 800B0610 8FA8003C */  lw         $t0, 0x3c($sp)
/* B1214 800B0614 8FAB0024 */  lw         $t3, 0x24($sp)
/* B1218 800B0618 3C011FFF */  lui        $at, 0x1fff
/* B121C 800B061C 8D090018 */  lw         $t1, 0x18($t0)
/* B1220 800B0620 3421FFFF */  ori        $at, $at, 0xffff
/* B1224 800B0624 01215024 */  and        $t2, $t1, $at
/* B1228 800B0628 AD6A0004 */  sw         $t2, 4($t3)
.L800B062C:
/* B122C 800B062C 8FAC0038 */  lw         $t4, 0x38($sp)
/* B1230 800B0630 258D0008 */  addiu      $t5, $t4, 8
/* B1234 800B0634 AFAD0038 */  sw         $t5, 0x38($sp)
/* B1238 800B0638 AFAC0020 */  sw         $t4, 0x20($sp)
/* B123C 800B063C 87AE004E */  lh         $t6, 0x4e($sp)
/* B1240 800B0640 8FAF0034 */  lw         $t7, 0x34($sp)
/* B1244 800B0644 8FA90020 */  lw         $t1, 0x20($sp)
/* B1248 800B0648 3C010800 */  lui        $at, 0x800
/* B124C 800B064C 01CFC821 */  addu       $t9, $t6, $t7
/* B1250 800B0650 3338FFFF */  andi       $t8, $t9, 0xffff
/* B1254 800B0654 03014025 */  or         $t0, $t8, $at
/* B1258 800B0658 AD280000 */  sw         $t0, ($t1)
/* B125C 800B065C 87AA004A */  lh         $t2, 0x4a($sp)
/* B1260 800B0660 8FAD0040 */  lw         $t5, 0x40($sp)
/* B1264 800B0664 8FB80020 */  lw         $t8, 0x20($sp)
/* B1268 800B0668 314BFFFF */  andi       $t3, $t2, 0xffff
/* B126C 800B066C 000D7040 */  sll        $t6, $t5, 1
/* B1270 800B0670 31CFFFFF */  andi       $t7, $t6, 0xffff
/* B1274 800B0674 000B6400 */  sll        $t4, $t3, 0x10
/* B1278 800B0678 018FC825 */  or         $t9, $t4, $t7
/* B127C 800B067C AF190004 */  sw         $t9, 4($t8)
/* B1280 800B0680 8FA80038 */  lw         $t0, 0x38($sp)
/* B1284 800B0684 25090008 */  addiu      $t1, $t0, 8
/* B1288 800B0688 AFA90038 */  sw         $t1, 0x38($sp)
/* B128C 800B068C AFA8001C */  sw         $t0, 0x1c($sp)
/* B1290 800B0690 8FAA0050 */  lw         $t2, 0x50($sp)
/* B1294 800B0694 8FAC001C */  lw         $t4, 0x1c($sp)
/* B1298 800B0698 3C010100 */  lui        $at, 0x100
/* B129C 800B069C 314B00FF */  andi       $t3, $t2, 0xff
/* B12A0 800B06A0 000B6C00 */  sll        $t5, $t3, 0x10
/* B12A4 800B06A4 01A17025 */  or         $t6, $t5, $at
/* B12A8 800B06A8 AD8E0000 */  sw         $t6, ($t4)
/* B12AC 800B06AC 8FAF003C */  lw         $t7, 0x3c($sp)
/* B12B0 800B06B0 8FA8001C */  lw         $t0, 0x1c($sp)
/* B12B4 800B06B4 3C011FFF */  lui        $at, 0x1fff
/* B12B8 800B06B8 8DF90014 */  lw         $t9, 0x14($t7)
/* B12BC 800B06BC 3421FFFF */  ori        $at, $at, 0xffff
/* B12C0 800B06C0 0321C024 */  and        $t8, $t9, $at
/* B12C4 800B06C4 AD180004 */  sw         $t8, 4($t0)
/* B12C8 800B06C8 8FA9003C */  lw         $t1, 0x3c($sp)
/* B12CC 800B06CC AD200040 */  sw         $zero, 0x40($t1)
/* B12D0 800B06D0 10000003 */  b          .L800B06E0
/* B12D4 800B06D4 8FA20038 */   lw        $v0, 0x38($sp)
/* B12D8 800B06D8 10000001 */  b          .L800B06E0
/* B12DC 800B06DC 00000000 */   nop
.L800B06E0:
/* B12E0 800B06E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* B12E4 800B06E4 27BD0038 */  addiu      $sp, $sp, 0x38
/* B12E8 800B06E8 03E00008 */  jr         $ra
/* B12EC 800B06EC 00000000 */   nop

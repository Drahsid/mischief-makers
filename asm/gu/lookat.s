.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel guLookAtF
/* A5DD0 800A51D0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A5DD4 800A51D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5DD8 800A51D8 AFA40038 */  sw         $a0, 0x38($sp)
/* A5DDC 800A51DC AFA5003C */  sw         $a1, 0x3c($sp)
/* A5DE0 800A51E0 AFA60040 */  sw         $a2, 0x40($sp)
/* A5DE4 800A51E4 AFA70044 */  sw         $a3, 0x44($sp)
/* A5DE8 800A51E8 0C02CB32 */  jal        guMtxIdentF
/* A5DEC 800A51EC 8FA40038 */   lw        $a0, 0x38($sp)
/* A5DF0 800A51F0 C7A40048 */  lwc1       $f4, 0x48($sp)
/* A5DF4 800A51F4 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* A5DF8 800A51F8 46062201 */  sub.s      $f8, $f4, $f6
/* A5DFC 800A51FC E7A80030 */  swc1       $f8, 0x30($sp)
/* A5E00 800A5200 C7AA004C */  lwc1       $f10, 0x4c($sp)
/* A5E04 800A5204 C7B00040 */  lwc1       $f16, 0x40($sp)
/* A5E08 800A5208 46105481 */  sub.s      $f18, $f10, $f16
/* A5E0C 800A520C E7B2002C */  swc1       $f18, 0x2c($sp)
/* A5E10 800A5210 C7A40050 */  lwc1       $f4, 0x50($sp)
/* A5E14 800A5214 C7A60044 */  lwc1       $f6, 0x44($sp)
/* A5E18 800A5218 46062201 */  sub.s      $f8, $f4, $f6
/* A5E1C 800A521C E7A80028 */  swc1       $f8, 0x28($sp)
/* A5E20 800A5220 C7AA0030 */  lwc1       $f10, 0x30($sp)
/* A5E24 800A5224 C7B2002C */  lwc1       $f18, 0x2c($sp)
/* A5E28 800A5228 C7A80028 */  lwc1       $f8, 0x28($sp)
/* A5E2C 800A522C 460A5402 */  mul.s      $f16, $f10, $f10
/* A5E30 800A5230 00000000 */  nop
/* A5E34 800A5234 46129102 */  mul.s      $f4, $f18, $f18
/* A5E38 800A5238 46048180 */  add.s      $f6, $f16, $f4
/* A5E3C 800A523C 46084282 */  mul.s      $f10, $f8, $f8
/* A5E40 800A5240 0C0295C4 */  jal        sqrtf
/* A5E44 800A5244 460A3300 */   add.s     $f12, $f6, $f10
/* A5E48 800A5248 3C01BFF0 */  lui        $at, 0xbff0
/* A5E4C 800A524C 44819800 */  mtc1       $at, $f19
/* A5E50 800A5250 44809000 */  mtc1       $zero, $f18
/* A5E54 800A5254 46000421 */  cvt.d.s    $f16, $f0
/* A5E58 800A5258 46309103 */  div.d      $f4, $f18, $f16
/* A5E5C 800A525C 46202220 */  cvt.s.d    $f8, $f4
/* A5E60 800A5260 E7A80034 */  swc1       $f8, 0x34($sp)
/* A5E64 800A5264 C7A60030 */  lwc1       $f6, 0x30($sp)
/* A5E68 800A5268 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* A5E6C 800A526C 460A3482 */  mul.s      $f18, $f6, $f10
/* A5E70 800A5270 E7B20030 */  swc1       $f18, 0x30($sp)
/* A5E74 800A5274 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* A5E78 800A5278 C7A40034 */  lwc1       $f4, 0x34($sp)
/* A5E7C 800A527C 46048202 */  mul.s      $f8, $f16, $f4
/* A5E80 800A5280 E7A8002C */  swc1       $f8, 0x2c($sp)
/* A5E84 800A5284 C7A60028 */  lwc1       $f6, 0x28($sp)
/* A5E88 800A5288 C7AA0034 */  lwc1       $f10, 0x34($sp)
/* A5E8C 800A528C 460A3482 */  mul.s      $f18, $f6, $f10
/* A5E90 800A5290 E7B20028 */  swc1       $f18, 0x28($sp)
/* A5E94 800A5294 C7B00058 */  lwc1       $f16, 0x58($sp)
/* A5E98 800A5298 C7A40028 */  lwc1       $f4, 0x28($sp)
/* A5E9C 800A529C C7A6005C */  lwc1       $f6, 0x5c($sp)
/* A5EA0 800A52A0 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* A5EA4 800A52A4 46048202 */  mul.s      $f8, $f16, $f4
/* A5EA8 800A52A8 00000000 */  nop
/* A5EAC 800A52AC 460A3482 */  mul.s      $f18, $f6, $f10
/* A5EB0 800A52B0 46124401 */  sub.s      $f16, $f8, $f18
/* A5EB4 800A52B4 E7B00024 */  swc1       $f16, 0x24($sp)
/* A5EB8 800A52B8 C7A4005C */  lwc1       $f4, 0x5c($sp)
/* A5EBC 800A52BC C7A60030 */  lwc1       $f6, 0x30($sp)
/* A5EC0 800A52C0 C7A80054 */  lwc1       $f8, 0x54($sp)
/* A5EC4 800A52C4 C7B20028 */  lwc1       $f18, 0x28($sp)
/* A5EC8 800A52C8 46062282 */  mul.s      $f10, $f4, $f6
/* A5ECC 800A52CC 00000000 */  nop
/* A5ED0 800A52D0 46124402 */  mul.s      $f16, $f8, $f18
/* A5ED4 800A52D4 46105101 */  sub.s      $f4, $f10, $f16
/* A5ED8 800A52D8 E7A40020 */  swc1       $f4, 0x20($sp)
/* A5EDC 800A52DC C7A60054 */  lwc1       $f6, 0x54($sp)
/* A5EE0 800A52E0 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* A5EE4 800A52E4 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* A5EE8 800A52E8 C7B00030 */  lwc1       $f16, 0x30($sp)
/* A5EEC 800A52EC 46083482 */  mul.s      $f18, $f6, $f8
/* A5EF0 800A52F0 00000000 */  nop
/* A5EF4 800A52F4 46105102 */  mul.s      $f4, $f10, $f16
/* A5EF8 800A52F8 46049181 */  sub.s      $f6, $f18, $f4
/* A5EFC 800A52FC E7A6001C */  swc1       $f6, 0x1c($sp)
/* A5F00 800A5300 C7A80024 */  lwc1       $f8, 0x24($sp)
/* A5F04 800A5304 C7B00020 */  lwc1       $f16, 0x20($sp)
/* A5F08 800A5308 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* A5F0C 800A530C 46084282 */  mul.s      $f10, $f8, $f8
/* A5F10 800A5310 00000000 */  nop
/* A5F14 800A5314 46108482 */  mul.s      $f18, $f16, $f16
/* A5F18 800A5318 46125100 */  add.s      $f4, $f10, $f18
/* A5F1C 800A531C 46063202 */  mul.s      $f8, $f6, $f6
/* A5F20 800A5320 0C0295C4 */  jal        sqrtf
/* A5F24 800A5324 46082300 */   add.s     $f12, $f4, $f8
/* A5F28 800A5328 3C013FF0 */  lui        $at, 0x3ff0
/* A5F2C 800A532C 44818800 */  mtc1       $at, $f17
/* A5F30 800A5330 44808000 */  mtc1       $zero, $f16
/* A5F34 800A5334 460002A1 */  cvt.d.s    $f10, $f0
/* A5F38 800A5338 462A8483 */  div.d      $f18, $f16, $f10
/* A5F3C 800A533C 462091A0 */  cvt.s.d    $f6, $f18
/* A5F40 800A5340 E7A60034 */  swc1       $f6, 0x34($sp)
/* A5F44 800A5344 C7A40024 */  lwc1       $f4, 0x24($sp)
/* A5F48 800A5348 C7A80034 */  lwc1       $f8, 0x34($sp)
/* A5F4C 800A534C 46082402 */  mul.s      $f16, $f4, $f8
/* A5F50 800A5350 E7B00024 */  swc1       $f16, 0x24($sp)
/* A5F54 800A5354 C7AA0020 */  lwc1       $f10, 0x20($sp)
/* A5F58 800A5358 C7B20034 */  lwc1       $f18, 0x34($sp)
/* A5F5C 800A535C 46125182 */  mul.s      $f6, $f10, $f18
/* A5F60 800A5360 E7A60020 */  swc1       $f6, 0x20($sp)
/* A5F64 800A5364 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* A5F68 800A5368 C7A80034 */  lwc1       $f8, 0x34($sp)
/* A5F6C 800A536C 46082402 */  mul.s      $f16, $f4, $f8
/* A5F70 800A5370 E7B0001C */  swc1       $f16, 0x1c($sp)
/* A5F74 800A5374 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* A5F78 800A5378 C7B2001C */  lwc1       $f18, 0x1c($sp)
/* A5F7C 800A537C C7A40028 */  lwc1       $f4, 0x28($sp)
/* A5F80 800A5380 C7A80020 */  lwc1       $f8, 0x20($sp)
/* A5F84 800A5384 46125182 */  mul.s      $f6, $f10, $f18
/* A5F88 800A5388 00000000 */  nop
/* A5F8C 800A538C 46082402 */  mul.s      $f16, $f4, $f8
/* A5F90 800A5390 46103281 */  sub.s      $f10, $f6, $f16
/* A5F94 800A5394 E7AA0054 */  swc1       $f10, 0x54($sp)
/* A5F98 800A5398 C7B20028 */  lwc1       $f18, 0x28($sp)
/* A5F9C 800A539C C7A40024 */  lwc1       $f4, 0x24($sp)
/* A5FA0 800A53A0 C7A60030 */  lwc1       $f6, 0x30($sp)
/* A5FA4 800A53A4 C7B0001C */  lwc1       $f16, 0x1c($sp)
/* A5FA8 800A53A8 46049202 */  mul.s      $f8, $f18, $f4
/* A5FAC 800A53AC 00000000 */  nop
/* A5FB0 800A53B0 46103282 */  mul.s      $f10, $f6, $f16
/* A5FB4 800A53B4 460A4481 */  sub.s      $f18, $f8, $f10
/* A5FB8 800A53B8 E7B20058 */  swc1       $f18, 0x58($sp)
/* A5FBC 800A53BC C7A40030 */  lwc1       $f4, 0x30($sp)
/* A5FC0 800A53C0 C7A60020 */  lwc1       $f6, 0x20($sp)
/* A5FC4 800A53C4 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* A5FC8 800A53C8 C7AA0024 */  lwc1       $f10, 0x24($sp)
/* A5FCC 800A53CC 46062402 */  mul.s      $f16, $f4, $f6
/* A5FD0 800A53D0 00000000 */  nop
/* A5FD4 800A53D4 460A4482 */  mul.s      $f18, $f8, $f10
/* A5FD8 800A53D8 46128101 */  sub.s      $f4, $f16, $f18
/* A5FDC 800A53DC E7A4005C */  swc1       $f4, 0x5c($sp)
/* A5FE0 800A53E0 C7A60054 */  lwc1       $f6, 0x54($sp)
/* A5FE4 800A53E4 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* A5FE8 800A53E8 C7A4005C */  lwc1       $f4, 0x5c($sp)
/* A5FEC 800A53EC 46063202 */  mul.s      $f8, $f6, $f6
/* A5FF0 800A53F0 00000000 */  nop
/* A5FF4 800A53F4 460A5402 */  mul.s      $f16, $f10, $f10
/* A5FF8 800A53F8 46104480 */  add.s      $f18, $f8, $f16
/* A5FFC 800A53FC 46042182 */  mul.s      $f6, $f4, $f4
/* A6000 800A5400 0C0295C4 */  jal        sqrtf
/* A6004 800A5404 46069300 */   add.s     $f12, $f18, $f6
/* A6008 800A5408 3C013FF0 */  lui        $at, 0x3ff0
/* A600C 800A540C 44815800 */  mtc1       $at, $f11
/* A6010 800A5410 44805000 */  mtc1       $zero, $f10
/* A6014 800A5414 46000221 */  cvt.d.s    $f8, $f0
/* A6018 800A5418 46285403 */  div.d      $f16, $f10, $f8
/* A601C 800A541C 46208120 */  cvt.s.d    $f4, $f16
/* A6020 800A5420 E7A40034 */  swc1       $f4, 0x34($sp)
/* A6024 800A5424 C7B20054 */  lwc1       $f18, 0x54($sp)
/* A6028 800A5428 C7A60034 */  lwc1       $f6, 0x34($sp)
/* A602C 800A542C 46069282 */  mul.s      $f10, $f18, $f6
/* A6030 800A5430 E7AA0054 */  swc1       $f10, 0x54($sp)
/* A6034 800A5434 C7A80058 */  lwc1       $f8, 0x58($sp)
/* A6038 800A5438 C7B00034 */  lwc1       $f16, 0x34($sp)
/* A603C 800A543C 46104102 */  mul.s      $f4, $f8, $f16
/* A6040 800A5440 E7A40058 */  swc1       $f4, 0x58($sp)
/* A6044 800A5444 C7B2005C */  lwc1       $f18, 0x5c($sp)
/* A6048 800A5448 C7A60034 */  lwc1       $f6, 0x34($sp)
/* A604C 800A544C 46069282 */  mul.s      $f10, $f18, $f6
/* A6050 800A5450 E7AA005C */  swc1       $f10, 0x5c($sp)
/* A6054 800A5454 C7A80024 */  lwc1       $f8, 0x24($sp)
/* A6058 800A5458 8FAE0038 */  lw         $t6, 0x38($sp)
/* A605C 800A545C E5C80000 */  swc1       $f8, ($t6)
/* A6060 800A5460 C7B00020 */  lwc1       $f16, 0x20($sp)
/* A6064 800A5464 8FAF0038 */  lw         $t7, 0x38($sp)
/* A6068 800A5468 E5F00010 */  swc1       $f16, 0x10($t7)
/* A606C 800A546C C7A4001C */  lwc1       $f4, 0x1c($sp)
/* A6070 800A5470 8FB80038 */  lw         $t8, 0x38($sp)
/* A6074 800A5474 E7040020 */  swc1       $f4, 0x20($t8)
/* A6078 800A5478 C7B2003C */  lwc1       $f18, 0x3c($sp)
/* A607C 800A547C C7A60024 */  lwc1       $f6, 0x24($sp)
/* A6080 800A5480 C7A80040 */  lwc1       $f8, 0x40($sp)
/* A6084 800A5484 C7B00020 */  lwc1       $f16, 0x20($sp)
/* A6088 800A5488 46069282 */  mul.s      $f10, $f18, $f6
/* A608C 800A548C C7A60044 */  lwc1       $f6, 0x44($sp)
/* A6090 800A5490 8FB90038 */  lw         $t9, 0x38($sp)
/* A6094 800A5494 46104102 */  mul.s      $f4, $f8, $f16
/* A6098 800A5498 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* A609C 800A549C 46083402 */  mul.s      $f16, $f6, $f8
/* A60A0 800A54A0 46045480 */  add.s      $f18, $f10, $f4
/* A60A4 800A54A4 46109280 */  add.s      $f10, $f18, $f16
/* A60A8 800A54A8 46005107 */  neg.s      $f4, $f10
/* A60AC 800A54AC E7240030 */  swc1       $f4, 0x30($t9)
/* A60B0 800A54B0 C7A60054 */  lwc1       $f6, 0x54($sp)
/* A60B4 800A54B4 8FA80038 */  lw         $t0, 0x38($sp)
/* A60B8 800A54B8 E5060004 */  swc1       $f6, 4($t0)
/* A60BC 800A54BC C7A80058 */  lwc1       $f8, 0x58($sp)
/* A60C0 800A54C0 8FA90038 */  lw         $t1, 0x38($sp)
/* A60C4 800A54C4 E5280014 */  swc1       $f8, 0x14($t1)
/* A60C8 800A54C8 C7B2005C */  lwc1       $f18, 0x5c($sp)
/* A60CC 800A54CC 8FAA0038 */  lw         $t2, 0x38($sp)
/* A60D0 800A54D0 E5520024 */  swc1       $f18, 0x24($t2)
/* A60D4 800A54D4 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* A60D8 800A54D8 C7AA0054 */  lwc1       $f10, 0x54($sp)
/* A60DC 800A54DC C7A60040 */  lwc1       $f6, 0x40($sp)
/* A60E0 800A54E0 C7A80058 */  lwc1       $f8, 0x58($sp)
/* A60E4 800A54E4 460A8102 */  mul.s      $f4, $f16, $f10
/* A60E8 800A54E8 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* A60EC 800A54EC 8FAB0038 */  lw         $t3, 0x38($sp)
/* A60F0 800A54F0 46083482 */  mul.s      $f18, $f6, $f8
/* A60F4 800A54F4 C7A6005C */  lwc1       $f6, 0x5c($sp)
/* A60F8 800A54F8 46065202 */  mul.s      $f8, $f10, $f6
/* A60FC 800A54FC 46122400 */  add.s      $f16, $f4, $f18
/* A6100 800A5500 46088100 */  add.s      $f4, $f16, $f8
/* A6104 800A5504 46002487 */  neg.s      $f18, $f4
/* A6108 800A5508 E5720034 */  swc1       $f18, 0x34($t3)
/* A610C 800A550C C7AA0030 */  lwc1       $f10, 0x30($sp)
/* A6110 800A5510 8FAC0038 */  lw         $t4, 0x38($sp)
/* A6114 800A5514 E58A0008 */  swc1       $f10, 8($t4)
/* A6118 800A5518 C7A6002C */  lwc1       $f6, 0x2c($sp)
/* A611C 800A551C 8FAD0038 */  lw         $t5, 0x38($sp)
/* A6120 800A5520 E5A60018 */  swc1       $f6, 0x18($t5)
/* A6124 800A5524 C7B00028 */  lwc1       $f16, 0x28($sp)
/* A6128 800A5528 8FAE0038 */  lw         $t6, 0x38($sp)
/* A612C 800A552C E5D00028 */  swc1       $f16, 0x28($t6)
/* A6130 800A5530 C7A8003C */  lwc1       $f8, 0x3c($sp)
/* A6134 800A5534 C7A40030 */  lwc1       $f4, 0x30($sp)
/* A6138 800A5538 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* A613C 800A553C C7A6002C */  lwc1       $f6, 0x2c($sp)
/* A6140 800A5540 46044482 */  mul.s      $f18, $f8, $f4
/* A6144 800A5544 C7A40044 */  lwc1       $f4, 0x44($sp)
/* A6148 800A5548 8FAF0038 */  lw         $t7, 0x38($sp)
/* A614C 800A554C 46065402 */  mul.s      $f16, $f10, $f6
/* A6150 800A5550 C7AA0028 */  lwc1       $f10, 0x28($sp)
/* A6154 800A5554 460A2182 */  mul.s      $f6, $f4, $f10
/* A6158 800A5558 46109200 */  add.s      $f8, $f18, $f16
/* A615C 800A555C 46064480 */  add.s      $f18, $f8, $f6
/* A6160 800A5560 46009407 */  neg.s      $f16, $f18
/* A6164 800A5564 E5F00038 */  swc1       $f16, 0x38($t7)
/* A6168 800A5568 44802000 */  mtc1       $zero, $f4
/* A616C 800A556C 8FB80038 */  lw         $t8, 0x38($sp)
/* A6170 800A5570 E704000C */  swc1       $f4, 0xc($t8)
/* A6174 800A5574 44805000 */  mtc1       $zero, $f10
/* A6178 800A5578 8FB90038 */  lw         $t9, 0x38($sp)
/* A617C 800A557C E72A001C */  swc1       $f10, 0x1c($t9)
/* A6180 800A5580 44804000 */  mtc1       $zero, $f8
/* A6184 800A5584 8FA80038 */  lw         $t0, 0x38($sp)
/* A6188 800A5588 E508002C */  swc1       $f8, 0x2c($t0)
/* A618C 800A558C 3C013F80 */  lui        $at, 0x3f80
/* A6190 800A5590 44813000 */  mtc1       $at, $f6
/* A6194 800A5594 8FA90038 */  lw         $t1, 0x38($sp)
/* A6198 800A5598 E526003C */  swc1       $f6, 0x3c($t1)
/* A619C 800A559C 10000001 */  b          .L800A55A4
/* A61A0 800A55A0 00000000 */   nop
.L800A55A4:
/* A61A4 800A55A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* A61A8 800A55A8 27BD0038 */  addiu      $sp, $sp, 0x38
/* A61AC 800A55AC 03E00008 */  jr         $ra
/* A61B0 800A55B0 00000000 */   nop

glabel guLookAt
/* A61B4 800A55B4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* A61B8 800A55B8 AFBF002C */  sw         $ra, 0x2c($sp)
/* A61BC 800A55BC AFA40070 */  sw         $a0, 0x70($sp)
/* A61C0 800A55C0 AFA50074 */  sw         $a1, 0x74($sp)
/* A61C4 800A55C4 AFA60078 */  sw         $a2, 0x78($sp)
/* A61C8 800A55C8 AFA7007C */  sw         $a3, 0x7c($sp)
/* A61CC 800A55CC C7A40080 */  lwc1       $f4, 0x80($sp)
/* A61D0 800A55D0 C7A60084 */  lwc1       $f6, 0x84($sp)
/* A61D4 800A55D4 C7A80088 */  lwc1       $f8, 0x88($sp)
/* A61D8 800A55D8 C7AA008C */  lwc1       $f10, 0x8c($sp)
/* A61DC 800A55DC C7B00090 */  lwc1       $f16, 0x90($sp)
/* A61E0 800A55E0 C7B20094 */  lwc1       $f18, 0x94($sp)
/* A61E4 800A55E4 27A40030 */  addiu      $a0, $sp, 0x30
/* A61E8 800A55E8 8FA50074 */  lw         $a1, 0x74($sp)
/* A61EC 800A55EC 8FA60078 */  lw         $a2, 0x78($sp)
/* A61F0 800A55F0 8FA7007C */  lw         $a3, 0x7c($sp)
/* A61F4 800A55F4 E7A40010 */  swc1       $f4, 0x10($sp)
/* A61F8 800A55F8 E7A60014 */  swc1       $f6, 0x14($sp)
/* A61FC 800A55FC E7A80018 */  swc1       $f8, 0x18($sp)
/* A6200 800A5600 E7AA001C */  swc1       $f10, 0x1c($sp)
/* A6204 800A5604 E7B00020 */  swc1       $f16, 0x20($sp)
/* A6208 800A5608 0C029474 */  jal        guLookAtF
/* A620C 800A560C E7B20024 */   swc1      $f18, 0x24($sp)
/* A6210 800A5610 27A40030 */  addiu      $a0, $sp, 0x30
/* A6214 800A5614 0C02CA98 */  jal        guMtxF2L
/* A6218 800A5618 8FA50070 */   lw        $a1, 0x70($sp)
/* A621C 800A561C 10000001 */  b          .L800A5624
/* A6220 800A5620 00000000 */   nop
.L800A5624:
/* A6224 800A5624 8FBF002C */  lw         $ra, 0x2c($sp)
/* A6228 800A5628 27BD0070 */  addiu      $sp, $sp, 0x70
/* A622C 800A562C 03E00008 */  jr         $ra
/* A6230 800A5630 00000000 */   nop
/* A6234 800A5634 00000000 */  nop
/* A6238 800A5638 00000000 */  nop
/* A623C 800A563C 00000000 */  nop
glabel func_8003D68C
/* 3E28C 8003D68C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3E290 8003D690 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E294 8003D694 AFA40020 */  sw         $a0, 0x20($sp)
/* 3E298 8003D698 AFA50024 */  sw         $a1, 0x24($sp)
/* 3E29C 8003D69C AFA60028 */  sw         $a2, 0x28($sp)
/* 3E2A0 8003D6A0 0C00A14A */  jal        func_80028528
/* 3E2A4 8003D6A4 AFA7002C */   sw        $a3, 0x2c($sp)
/* 3E2A8 8003D6A8 10400036 */  beqz       $v0, .L8003D784
/* 3E2AC 8003D6AC 3044FFFF */   andi      $a0, $v0, 0xffff
/* 3E2B0 8003D6B0 00047080 */  sll        $t6, $a0, 2
/* 3E2B4 8003D6B4 01C47023 */  subu       $t6, $t6, $a0
/* 3E2B8 8003D6B8 000E7080 */  sll        $t6, $t6, 2
/* 3E2BC 8003D6BC 01C47021 */  addu       $t6, $t6, $a0
/* 3E2C0 8003D6C0 000E7080 */  sll        $t6, $t6, 2
/* 3E2C4 8003D6C4 01C47023 */  subu       $t6, $t6, $a0
/* 3E2C8 8003D6C8 3C0F800F */  lui        $t7, %hi(gActors)
/* 3E2CC 8003D6CC 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 3E2D0 8003D6D0 000E70C0 */  sll        $t6, $t6, 3
/* 3E2D4 8003D6D4 01CF1021 */  addu       $v0, $t6, $t7
/* 3E2D8 8003D6D8 24180034 */  addiu      $t8, $zero, 0x34
/* 3E2DC 8003D6DC A45800D2 */  sh         $t8, 0xd2($v0)
/* 3E2E0 8003D6E0 AFA20018 */  sw         $v0, 0x18($sp)
/* 3E2E4 8003D6E4 0C0078B4 */  jal        func_8001E2D0
/* 3E2E8 8003D6E8 A7A4001E */   sh        $a0, 0x1e($sp)
/* 3E2EC 8003D6EC 8FA20018 */  lw         $v0, 0x18($sp)
/* 3E2F0 8003D6F0 8FA30020 */  lw         $v1, 0x20($sp)
/* 3E2F4 8003D6F4 8FAA0034 */  lw         $t2, 0x34($sp)
/* 3E2F8 8003D6F8 2408000B */  addiu      $t0, $zero, 0xb
/* 3E2FC 8003D6FC 34098000 */  ori        $t1, $zero, 0x8000
/* 3E300 8003D700 3079DFFF */  andi       $t9, $v1, 0xdfff
/* 3E304 8003D704 A4590094 */  sh         $t9, 0x94($v0)
/* 3E308 8003D708 AC480080 */  sw         $t0, 0x80($v0)
/* 3E30C 8003D70C A4490084 */  sh         $t1, 0x84($v0)
/* 3E310 8003D710 8FAB0038 */  lw         $t3, 0x38($sp)
/* 3E314 8003D714 8FAC003C */  lw         $t4, 0x3c($sp)
/* 3E318 8003D718 87AD0026 */  lh         $t5, 0x26($sp)
/* 3E31C 8003D71C 87AE002A */  lh         $t6, 0x2a($sp)
/* 3E320 8003D720 87AF002E */  lh         $t7, 0x2e($sp)
/* 3E324 8003D724 87B80032 */  lh         $t8, 0x32($sp)
/* 3E328 8003D728 97B90042 */  lhu        $t9, 0x42($sp)
/* 3E32C 8003D72C 97A80046 */  lhu        $t0, 0x46($sp)
/* 3E330 8003D730 97A9004A */  lhu        $t1, 0x4a($sp)
/* 3E334 8003D734 AC4A0088 */  sw         $t2, 0x88($v0)
/* 3E338 8003D738 97A4001E */  lhu        $a0, 0x1e($sp)
/* 3E33C 8003D73C 306A2000 */  andi       $t2, $v1, 0x2000
/* 3E340 8003D740 AC4B008C */  sw         $t3, 0x8c($v0)
/* 3E344 8003D744 AC4C0090 */  sw         $t4, 0x90($v0)
/* 3E348 8003D748 A44D00AE */  sh         $t5, 0xae($v0)
/* 3E34C 8003D74C A44E00B0 */  sh         $t6, 0xb0($v0)
/* 3E350 8003D750 A44F00AA */  sh         $t7, 0xaa($v0)
/* 3E354 8003D754 A45800AC */  sh         $t8, 0xac($v0)
/* 3E358 8003D758 A059009C */  sb         $t9, 0x9c($v0)
/* 3E35C 8003D75C A048009D */  sb         $t0, 0x9d($v0)
/* 3E360 8003D760 11400005 */  beqz       $t2, .L8003D778
/* 3E364 8003D764 A049009E */   sb        $t1, 0x9e($v0)
/* 3E368 8003D768 3C013F80 */  lui        $at, 0x3f80
/* 3E36C 8003D76C 44812000 */  mtc1       $at, $f4
/* 3E370 8003D770 10000004 */  b          .L8003D784
/* 3E374 8003D774 E4440148 */   swc1      $f4, 0x148($v0)
.L8003D778:
/* 3E378 8003D778 44803000 */  mtc1       $zero, $f6
/* 3E37C 8003D77C 00000000 */  nop
/* 3E380 8003D780 E4460148 */  swc1       $f6, 0x148($v0)
.L8003D784:
/* 3E384 8003D784 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E388 8003D788 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3E38C 8003D78C 03E00008 */  jr         $ra
/* 3E390 8003D790 00801025 */   or        $v0, $a0, $zero

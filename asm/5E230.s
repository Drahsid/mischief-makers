.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005D630
/* 5E230 8005D630 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E234 8005D634 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E238 8005D638 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E23C 8005D63C 3C0F801A */  lui        $t7, %hi(D_8019B00C)
/* 5E240 8005D640 8DF9B00C */  lw         $t9, %lo(D_8019B00C)($t7)
/* 5E244 8005D644 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E248 8005D648 01C02025 */  or         $a0, $t6, $zero
/* 5E24C 8005D64C 0320F809 */  jalr       $t9
/* 5E250 8005D650 00002825 */   or        $a1, $zero, $zero
/* 5E254 8005D654 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E258 8005D658 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E25C 8005D65C 03E00008 */  jr         $ra
/* 5E260 8005D660 00000000 */   nop

glabel func_8005D664
/* 5E264 8005D664 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E268 8005D668 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E26C 8005D66C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E270 8005D670 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E274 8005D674 3C18801A */  lui        $t8, %hi(D_8019B010)
/* 5E278 8005D678 8F19B010 */  lw         $t9, %lo(D_8019B010)($t8)
/* 5E27C 8005D67C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E280 8005D680 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E284 8005D684 01E02825 */  or         $a1, $t7, $zero
/* 5E288 8005D688 0320F809 */  jalr       $t9
/* 5E28C 8005D68C 01C02025 */   or        $a0, $t6, $zero
/* 5E290 8005D690 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E294 8005D694 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E298 8005D698 03E00008 */  jr         $ra
/* 5E29C 8005D69C 00000000 */   nop

glabel func_8005D6A0
/* 5E2A0 8005D6A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E2A4 8005D6A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E2A8 8005D6A8 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E2AC 8005D6AC AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E2B0 8005D6B0 3C18801A */  lui        $t8, %hi(D_8019B014)
/* 5E2B4 8005D6B4 8F19B014 */  lw         $t9, %lo(D_8019B014)($t8)
/* 5E2B8 8005D6B8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E2BC 8005D6BC 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E2C0 8005D6C0 01E02825 */  or         $a1, $t7, $zero
/* 5E2C4 8005D6C4 0320F809 */  jalr       $t9
/* 5E2C8 8005D6C8 01C02025 */   or        $a0, $t6, $zero
/* 5E2CC 8005D6CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E2D0 8005D6D0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E2D4 8005D6D4 03E00008 */  jr         $ra
/* 5E2D8 8005D6D8 00000000 */   nop

glabel func_8005D6DC
/* 5E2DC 8005D6DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E2E0 8005D6E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E2E4 8005D6E4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E2E8 8005D6E8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E2EC 8005D6EC 3C18801A */  lui        $t8, %hi(D_8019B018)
/* 5E2F0 8005D6F0 8F19B018 */  lw         $t9, %lo(D_8019B018)($t8)
/* 5E2F4 8005D6F4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E2F8 8005D6F8 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E2FC 8005D6FC 01E02825 */  or         $a1, $t7, $zero
/* 5E300 8005D700 0320F809 */  jalr       $t9
/* 5E304 8005D704 01C02025 */   or        $a0, $t6, $zero
/* 5E308 8005D708 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E30C 8005D70C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E310 8005D710 03E00008 */  jr         $ra
/* 5E314 8005D714 00000000 */   nop

glabel func_8005D718
/* 5E318 8005D718 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E31C 8005D71C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E320 8005D720 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E324 8005D724 3C0F8019 */  lui        $t7, %hi(D_8019202C)
/* 5E328 8005D728 8DF9202C */  lw         $t9, %lo(D_8019202C)($t7)
/* 5E32C 8005D72C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E330 8005D730 01C02025 */  or         $a0, $t6, $zero
/* 5E334 8005D734 0320F809 */  jalr       $t9
/* 5E338 8005D738 00002825 */   or        $a1, $zero, $zero
/* 5E33C 8005D73C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E340 8005D740 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E344 8005D744 03E00008 */  jr         $ra
/* 5E348 8005D748 00000000 */   nop

glabel func_8005D74C
/* 5E34C 8005D74C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E350 8005D750 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E354 8005D754 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E358 8005D758 3C0F8019 */  lui        $t7, %hi(D_80192030)
/* 5E35C 8005D75C 8DF92030 */  lw         $t9, %lo(D_80192030)($t7)
/* 5E360 8005D760 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E364 8005D764 01C02025 */  or         $a0, $t6, $zero
/* 5E368 8005D768 0320F809 */  jalr       $t9
/* 5E36C 8005D76C 00002825 */   or        $a1, $zero, $zero
/* 5E370 8005D770 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E374 8005D774 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E378 8005D778 03E00008 */  jr         $ra
/* 5E37C 8005D77C 00000000 */   nop

glabel func_8005D780
/* 5E380 8005D780 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E384 8005D784 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E388 8005D788 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E38C 8005D78C AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E390 8005D790 3C18801A */  lui        $t8, %hi(D_8019B014)
/* 5E394 8005D794 8F19B014 */  lw         $t9, %lo(D_8019B014)($t8)
/* 5E398 8005D798 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E39C 8005D79C 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E3A0 8005D7A0 01E02825 */  or         $a1, $t7, $zero
/* 5E3A4 8005D7A4 0320F809 */  jalr       $t9
/* 5E3A8 8005D7A8 01C02025 */   or        $a0, $t6, $zero
/* 5E3AC 8005D7AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E3B0 8005D7B0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E3B4 8005D7B4 03E00008 */  jr         $ra
/* 5E3B8 8005D7B8 00000000 */   nop

glabel func_8005D7BC
/* 5E3BC 8005D7BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E3C0 8005D7C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E3C4 8005D7C4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E3C8 8005D7C8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E3CC 8005D7CC 3C18801A */  lui        $t8, %hi(D_8019B018)
/* 5E3D0 8005D7D0 8F19B018 */  lw         $t9, %lo(D_8019B018)($t8)
/* 5E3D4 8005D7D4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E3D8 8005D7D8 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E3DC 8005D7DC 01E02825 */  or         $a1, $t7, $zero
/* 5E3E0 8005D7E0 0320F809 */  jalr       $t9
/* 5E3E4 8005D7E4 01C02025 */   or        $a0, $t6, $zero
/* 5E3E8 8005D7E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E3EC 8005D7EC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E3F0 8005D7F0 03E00008 */  jr         $ra
/* 5E3F4 8005D7F4 00000000 */   nop

glabel func_8005D7F8
/* 5E3F8 8005D7F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E3FC 8005D7FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E400 8005D800 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E404 8005D804 3C0F801A */  lui        $t7, %hi(D_8019B01C)
/* 5E408 8005D808 8DF9B01C */  lw         $t9, %lo(D_8019B01C)($t7)
/* 5E40C 8005D80C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E410 8005D810 01C02025 */  or         $a0, $t6, $zero
/* 5E414 8005D814 0320F809 */  jalr       $t9
/* 5E418 8005D818 00002825 */   or        $a1, $zero, $zero
/* 5E41C 8005D81C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E420 8005D820 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E424 8005D824 03E00008 */  jr         $ra
/* 5E428 8005D828 00000000 */   nop

glabel func_8005D82C
/* 5E42C 8005D82C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E430 8005D830 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E434 8005D834 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E438 8005D838 3C0F801A */  lui        $t7, %hi(D_8019B01C)
/* 5E43C 8005D83C 8DF9B01C */  lw         $t9, %lo(D_8019B01C)($t7)
/* 5E440 8005D840 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E444 8005D844 01C02025 */  or         $a0, $t6, $zero
/* 5E448 8005D848 0320F809 */  jalr       $t9
/* 5E44C 8005D84C 00002825 */   or        $a1, $zero, $zero
/* 5E450 8005D850 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E454 8005D854 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E458 8005D858 03E00008 */  jr         $ra
/* 5E45C 8005D85C 00000000 */   nop

glabel func_8005D860
/* 5E460 8005D860 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E464 8005D864 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E468 8005D868 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E46C 8005D86C 3C0F801A */  lui        $t7, %hi(D_8019B014)
/* 5E470 8005D870 8DF9B014 */  lw         $t9, %lo(D_8019B014)($t7)
/* 5E474 8005D874 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E478 8005D878 01C02025 */  or         $a0, $t6, $zero
/* 5E47C 8005D87C 0320F809 */  jalr       $t9
/* 5E480 8005D880 00002825 */   or        $a1, $zero, $zero
/* 5E484 8005D884 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E488 8005D888 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E48C 8005D88C 03E00008 */  jr         $ra
/* 5E490 8005D890 00000000 */   nop

glabel func_8005D894
/* 5E494 8005D894 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E498 8005D898 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E49C 8005D89C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E4A0 8005D8A0 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E4A4 8005D8A4 3C18801A */  lui        $t8, %hi(D_8019B00C)
/* 5E4A8 8005D8A8 8F19B00C */  lw         $t9, %lo(D_8019B00C)($t8)
/* 5E4AC 8005D8AC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E4B0 8005D8B0 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E4B4 8005D8B4 01E02825 */  or         $a1, $t7, $zero
/* 5E4B8 8005D8B8 0320F809 */  jalr       $t9
/* 5E4BC 8005D8BC 01C02025 */   or        $a0, $t6, $zero
/* 5E4C0 8005D8C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E4C4 8005D8C4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E4C8 8005D8C8 03E00008 */  jr         $ra
/* 5E4CC 8005D8CC 00000000 */   nop

glabel func_8005D8D0
/* 5E4D0 8005D8D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E4D4 8005D8D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E4D8 8005D8D8 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E4DC 8005D8DC AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E4E0 8005D8E0 3C18801A */  lui        $t8, %hi(D_8019B010)
/* 5E4E4 8005D8E4 8F19B010 */  lw         $t9, %lo(D_8019B010)($t8)
/* 5E4E8 8005D8E8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E4EC 8005D8EC 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E4F0 8005D8F0 01E02825 */  or         $a1, $t7, $zero
/* 5E4F4 8005D8F4 0320F809 */  jalr       $t9
/* 5E4F8 8005D8F8 01C02025 */   or        $a0, $t6, $zero
/* 5E4FC 8005D8FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E500 8005D900 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E504 8005D904 03E00008 */  jr         $ra
/* 5E508 8005D908 00000000 */   nop

glabel func_8005D90C
/* 5E50C 8005D90C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E510 8005D910 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E514 8005D914 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E518 8005D918 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E51C 8005D91C 3C188019 */  lui        $t8, %hi(D_80192060)
/* 5E520 8005D920 8F192060 */  lw         $t9, %lo(D_80192060)($t8)
/* 5E524 8005D924 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E528 8005D928 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E52C 8005D92C 01E02825 */  or         $a1, $t7, $zero
/* 5E530 8005D930 0320F809 */  jalr       $t9
/* 5E534 8005D934 01C02025 */   or        $a0, $t6, $zero
/* 5E538 8005D938 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E53C 8005D93C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E540 8005D940 03E00008 */  jr         $ra
/* 5E544 8005D944 00000000 */   nop

glabel func_8005D948
/* 5E548 8005D948 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E54C 8005D94C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E550 8005D950 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E554 8005D954 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E558 8005D958 3C188019 */  lui        $t8, %hi(D_80192064)
/* 5E55C 8005D95C 8F192064 */  lw         $t9, %lo(D_80192064)($t8)
/* 5E560 8005D960 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E564 8005D964 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E568 8005D968 01E02825 */  or         $a1, $t7, $zero
/* 5E56C 8005D96C 0320F809 */  jalr       $t9
/* 5E570 8005D970 01C02025 */   or        $a0, $t6, $zero
/* 5E574 8005D974 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E578 8005D978 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E57C 8005D97C 03E00008 */  jr         $ra
/* 5E580 8005D980 00000000 */   nop

glabel func_8005D984
/* 5E584 8005D984 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E588 8005D988 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E58C 8005D98C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E590 8005D990 3C0F8019 */  lui        $t7, %hi(D_80192068)
/* 5E594 8005D994 8DF92068 */  lw         $t9, %lo(D_80192068)($t7)
/* 5E598 8005D998 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E59C 8005D99C 01C02025 */  or         $a0, $t6, $zero
/* 5E5A0 8005D9A0 0320F809 */  jalr       $t9
/* 5E5A4 8005D9A4 00002825 */   or        $a1, $zero, $zero
/* 5E5A8 8005D9A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E5AC 8005D9AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E5B0 8005D9B0 03E00008 */  jr         $ra
/* 5E5B4 8005D9B4 00000000 */   nop

glabel func_8005D9B8
/* 5E5B8 8005D9B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E5BC 8005D9BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E5C0 8005D9C0 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E5C4 8005D9C4 3C0F8019 */  lui        $t7, %hi(D_8019206C)
/* 5E5C8 8005D9C8 8DF9206C */  lw         $t9, %lo(D_8019206C)($t7)
/* 5E5CC 8005D9CC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E5D0 8005D9D0 01C02025 */  or         $a0, $t6, $zero
/* 5E5D4 8005D9D4 0320F809 */  jalr       $t9
/* 5E5D8 8005D9D8 00002825 */   or        $a1, $zero, $zero
/* 5E5DC 8005D9DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E5E0 8005D9E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E5E4 8005D9E4 03E00008 */  jr         $ra
/* 5E5E8 8005D9E8 00000000 */   nop

glabel func_8005D9EC
/* 5E5EC 8005D9EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E5F0 8005D9F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E5F4 8005D9F4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E5F8 8005D9F8 3C0F8019 */  lui        $t7, %hi(D_80192070)
/* 5E5FC 8005D9FC 8DF92070 */  lw         $t9, %lo(D_80192070)($t7)
/* 5E600 8005DA00 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E604 8005DA04 01C02025 */  or         $a0, $t6, $zero
/* 5E608 8005DA08 0320F809 */  jalr       $t9
/* 5E60C 8005DA0C 00002825 */   or        $a1, $zero, $zero
/* 5E610 8005DA10 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E614 8005DA14 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E618 8005DA18 03E00008 */  jr         $ra
/* 5E61C 8005DA1C 00000000 */   nop

glabel func_8005DA20
/* 5E620 8005DA20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E624 8005DA24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E628 8005DA28 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E62C 8005DA2C AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E630 8005DA30 3C188019 */  lui        $t8, %hi(D_8019203C)
/* 5E634 8005DA34 8F19203C */  lw         $t9, %lo(D_8019203C)($t8)
/* 5E638 8005DA38 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E63C 8005DA3C 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E640 8005DA40 01E02825 */  or         $a1, $t7, $zero
/* 5E644 8005DA44 0320F809 */  jalr       $t9
/* 5E648 8005DA48 01C02025 */   or        $a0, $t6, $zero
/* 5E64C 8005DA4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E650 8005DA50 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E654 8005DA54 03E00008 */  jr         $ra
/* 5E658 8005DA58 00000000 */   nop

glabel func_8005DA5C
/* 5E65C 8005DA5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E660 8005DA60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E664 8005DA64 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E668 8005DA68 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5E66C 8005DA6C 3C188019 */  lui        $t8, %hi(D_80192064)
/* 5E670 8005DA70 8F192064 */  lw         $t9, %lo(D_80192064)($t8)
/* 5E674 8005DA74 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E678 8005DA78 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 5E67C 8005DA7C 01E02825 */  or         $a1, $t7, $zero
/* 5E680 8005DA80 0320F809 */  jalr       $t9
/* 5E684 8005DA84 01C02025 */   or        $a0, $t6, $zero
/* 5E688 8005DA88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E68C 8005DA8C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E690 8005DA90 03E00008 */  jr         $ra
/* 5E694 8005DA94 00000000 */   nop

glabel func_8005DA98
/* 5E698 8005DA98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E69C 8005DA9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E6A0 8005DAA0 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E6A4 8005DAA4 3C0F801A */  lui        $t7, %hi(D_801A6844)
/* 5E6A8 8005DAA8 8DF96844 */  lw         $t9, %lo(D_801A6844)($t7)
/* 5E6AC 8005DAAC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E6B0 8005DAB0 01C02025 */  or         $a0, $t6, $zero
/* 5E6B4 8005DAB4 0320F809 */  jalr       $t9
/* 5E6B8 8005DAB8 00002825 */   or        $a1, $zero, $zero
/* 5E6BC 8005DABC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E6C0 8005DAC0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E6C4 8005DAC4 03E00008 */  jr         $ra
/* 5E6C8 8005DAC8 00000000 */   nop

glabel func_8005DACC
/* 5E6CC 8005DACC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E6D0 8005DAD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E6D4 8005DAD4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E6D8 8005DAD8 3C0F801A */  lui        $t7, %hi(D_801A6848)
/* 5E6DC 8005DADC 8DF96848 */  lw         $t9, %lo(D_801A6848)($t7)
/* 5E6E0 8005DAE0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E6E4 8005DAE4 01C02025 */  or         $a0, $t6, $zero
/* 5E6E8 8005DAE8 0320F809 */  jalr       $t9
/* 5E6EC 8005DAEC 00002825 */   or        $a1, $zero, $zero
/* 5E6F0 8005DAF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E6F4 8005DAF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E6F8 8005DAF8 03E00008 */  jr         $ra
/* 5E6FC 8005DAFC 00000000 */   nop

glabel func_8005DB00
/* 5E700 8005DB00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E704 8005DB04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E708 8005DB08 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E70C 8005DB0C 3C0F801A */  lui        $t7, %hi(D_801A684C)
/* 5E710 8005DB10 8DF9684C */  lw         $t9, %lo(D_801A684C)($t7)
/* 5E714 8005DB14 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E718 8005DB18 01C02025 */  or         $a0, $t6, $zero
/* 5E71C 8005DB1C 0320F809 */  jalr       $t9
/* 5E720 8005DB20 00002825 */   or        $a1, $zero, $zero
/* 5E724 8005DB24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E728 8005DB28 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E72C 8005DB2C 03E00008 */  jr         $ra
/* 5E730 8005DB30 00000000 */   nop

glabel func_8005DB34
/* 5E734 8005DB34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E738 8005DB38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E73C 8005DB3C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E740 8005DB40 3C0F801A */  lui        $t7, %hi(D_801A6850)
/* 5E744 8005DB44 8DF96850 */  lw         $t9, %lo(D_801A6850)($t7)
/* 5E748 8005DB48 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E74C 8005DB4C 01C02025 */  or         $a0, $t6, $zero
/* 5E750 8005DB50 0320F809 */  jalr       $t9
/* 5E754 8005DB54 00002825 */   or        $a1, $zero, $zero
/* 5E758 8005DB58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E75C 8005DB5C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E760 8005DB60 03E00008 */  jr         $ra
/* 5E764 8005DB64 00000000 */   nop

glabel func_8005DB68
/* 5E768 8005DB68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E76C 8005DB6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E770 8005DB70 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E774 8005DB74 3C0F801A */  lui        $t7, %hi(D_801A6854)
/* 5E778 8005DB78 8DF96854 */  lw         $t9, %lo(D_801A6854)($t7)
/* 5E77C 8005DB7C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E780 8005DB80 01C02025 */  or         $a0, $t6, $zero
/* 5E784 8005DB84 0320F809 */  jalr       $t9
/* 5E788 8005DB88 00002825 */   or        $a1, $zero, $zero
/* 5E78C 8005DB8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E790 8005DB90 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E794 8005DB94 03E00008 */  jr         $ra
/* 5E798 8005DB98 00000000 */   nop

glabel func_8005DB9C
/* 5E79C 8005DB9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E7A0 8005DBA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E7A4 8005DBA4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E7A8 8005DBA8 3C0F801A */  lui        $t7, %hi(D_801A6858)
/* 5E7AC 8005DBAC 8DF96858 */  lw         $t9, %lo(D_801A6858)($t7)
/* 5E7B0 8005DBB0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E7B4 8005DBB4 01C02025 */  or         $a0, $t6, $zero
/* 5E7B8 8005DBB8 0320F809 */  jalr       $t9
/* 5E7BC 8005DBBC 00002825 */   or        $a1, $zero, $zero
/* 5E7C0 8005DBC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E7C4 8005DBC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E7C8 8005DBC8 03E00008 */  jr         $ra
/* 5E7CC 8005DBCC 00000000 */   nop

glabel func_8005DBD0
/* 5E7D0 8005DBD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E7D4 8005DBD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E7D8 8005DBD8 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E7DC 8005DBDC 3C0F801A */  lui        $t7, %hi(D_801A685C)
/* 5E7E0 8005DBE0 8DF9685C */  lw         $t9, %lo(D_801A685C)($t7)
/* 5E7E4 8005DBE4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E7E8 8005DBE8 01C02025 */  or         $a0, $t6, $zero
/* 5E7EC 8005DBEC 0320F809 */  jalr       $t9
/* 5E7F0 8005DBF0 00002825 */   or        $a1, $zero, $zero
/* 5E7F4 8005DBF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E7F8 8005DBF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E7FC 8005DBFC 03E00008 */  jr         $ra
/* 5E800 8005DC00 00000000 */   nop

glabel func_8005DC04
/* 5E804 8005DC04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E808 8005DC08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E80C 8005DC0C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E810 8005DC10 3C0F801A */  lui        $t7, %hi(D_801A6860)
/* 5E814 8005DC14 8DF96860 */  lw         $t9, %lo(D_801A6860)($t7)
/* 5E818 8005DC18 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E81C 8005DC1C 01C02025 */  or         $a0, $t6, $zero
/* 5E820 8005DC20 0320F809 */  jalr       $t9
/* 5E824 8005DC24 00002825 */   or        $a1, $zero, $zero
/* 5E828 8005DC28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E82C 8005DC2C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E830 8005DC30 03E00008 */  jr         $ra
/* 5E834 8005DC34 00000000 */   nop

glabel func_8005DC38
/* 5E838 8005DC38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E83C 8005DC3C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E840 8005DC40 3C0E801A */  lui        $t6, %hi(D_801A6864)
/* 5E844 8005DC44 8DD96864 */  lw         $t9, %lo(D_801A6864)($t6)
/* 5E848 8005DC48 00002025 */  or         $a0, $zero, $zero
/* 5E84C 8005DC4C 0320F809 */  jalr       $t9
/* 5E850 8005DC50 00002825 */   or        $a1, $zero, $zero
/* 5E854 8005DC54 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E858 8005DC58 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E85C 8005DC5C 03E00008 */  jr         $ra
/* 5E860 8005DC60 00000000 */   nop

glabel func_8005DC64
/* 5E864 8005DC64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E868 8005DC68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E86C 8005DC6C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E870 8005DC70 3C0F801A */  lui        $t7, %hi(D_801A6868)
/* 5E874 8005DC74 8DF96868 */  lw         $t9, %lo(D_801A6868)($t7)
/* 5E878 8005DC78 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E87C 8005DC7C 01C02025 */  or         $a0, $t6, $zero
/* 5E880 8005DC80 0320F809 */  jalr       $t9
/* 5E884 8005DC84 00002825 */   or        $a1, $zero, $zero
/* 5E888 8005DC88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E88C 8005DC8C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E890 8005DC90 03E00008 */  jr         $ra
/* 5E894 8005DC94 00000000 */   nop

glabel func_8005DC98
/* 5E898 8005DC98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E89C 8005DC9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E8A0 8005DCA0 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E8A4 8005DCA4 3C0F801A */  lui        $t7, %hi(D_801A686C)
/* 5E8A8 8005DCA8 8DF9686C */  lw         $t9, %lo(D_801A686C)($t7)
/* 5E8AC 8005DCAC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E8B0 8005DCB0 01C02025 */  or         $a0, $t6, $zero
/* 5E8B4 8005DCB4 0320F809 */  jalr       $t9
/* 5E8B8 8005DCB8 00002825 */   or        $a1, $zero, $zero
/* 5E8BC 8005DCBC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E8C0 8005DCC0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E8C4 8005DCC4 03E00008 */  jr         $ra
/* 5E8C8 8005DCC8 00000000 */   nop

glabel func_8005DCCC
/* 5E8CC 8005DCCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E8D0 8005DCD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E8D4 8005DCD4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E8D8 8005DCD8 3C0F801A */  lui        $t7, %hi(D_801A6870)
/* 5E8DC 8005DCDC 8DF96870 */  lw         $t9, %lo(D_801A6870)($t7)
/* 5E8E0 8005DCE0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E8E4 8005DCE4 01C02025 */  or         $a0, $t6, $zero
/* 5E8E8 8005DCE8 0320F809 */  jalr       $t9
/* 5E8EC 8005DCEC 00002825 */   or        $a1, $zero, $zero
/* 5E8F0 8005DCF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E8F4 8005DCF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E8F8 8005DCF8 03E00008 */  jr         $ra
/* 5E8FC 8005DCFC 00000000 */   nop

glabel func_8005DD00
/* 5E900 8005DD00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E904 8005DD04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E908 8005DD08 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E90C 8005DD0C 3C0F801A */  lui        $t7, %hi(D_801A6874)
/* 5E910 8005DD10 8DF96874 */  lw         $t9, %lo(D_801A6874)($t7)
/* 5E914 8005DD14 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E918 8005DD18 01C02025 */  or         $a0, $t6, $zero
/* 5E91C 8005DD1C 0320F809 */  jalr       $t9
/* 5E920 8005DD20 00002825 */   or        $a1, $zero, $zero
/* 5E924 8005DD24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E928 8005DD28 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E92C 8005DD2C 03E00008 */  jr         $ra
/* 5E930 8005DD30 00000000 */   nop

glabel func_8005DD34
/* 5E934 8005DD34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E938 8005DD38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E93C 8005DD3C AFA40018 */  sw         $a0, 0x18($sp)
/* 5E940 8005DD40 3C0F801A */  lui        $t7, %hi(D_801A6878)
/* 5E944 8005DD44 8DF96878 */  lw         $t9, %lo(D_801A6878)($t7)
/* 5E948 8005DD48 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E94C 8005DD4C 01C02025 */  or         $a0, $t6, $zero
/* 5E950 8005DD50 0320F809 */  jalr       $t9
/* 5E954 8005DD54 00002825 */   or        $a1, $zero, $zero
/* 5E958 8005DD58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E95C 8005DD5C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E960 8005DD60 03E00008 */  jr         $ra
/* 5E964 8005DD64 00000000 */   nop

glabel func_8005DD68
/* 5E968 8005DD68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E96C 8005DD6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E970 8005DD70 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E974 8005DD74 3C0F801A */  lui        $t7, %hi(D_801A687C)
/* 5E978 8005DD78 8DF9687C */  lw         $t9, %lo(D_801A687C)($t7)
/* 5E97C 8005DD7C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E980 8005DD80 01C02025 */  or         $a0, $t6, $zero
/* 5E984 8005DD84 0320F809 */  jalr       $t9
/* 5E988 8005DD88 00002825 */   or        $a1, $zero, $zero
/* 5E98C 8005DD8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E990 8005DD90 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E994 8005DD94 03E00008 */  jr         $ra
/* 5E998 8005DD98 00000000 */   nop

glabel func_8005DD9C
/* 5E99C 8005DD9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E9A0 8005DDA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E9A4 8005DDA4 3C0E801A */  lui        $t6, %hi(D_801A6880)
/* 5E9A8 8005DDA8 8DD96880 */  lw         $t9, %lo(D_801A6880)($t6)
/* 5E9AC 8005DDAC 00002025 */  or         $a0, $zero, $zero
/* 5E9B0 8005DDB0 0320F809 */  jalr       $t9
/* 5E9B4 8005DDB4 00002825 */   or        $a1, $zero, $zero
/* 5E9B8 8005DDB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E9BC 8005DDBC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E9C0 8005DDC0 03E00008 */  jr         $ra
/* 5E9C4 8005DDC4 00000000 */   nop

glabel func_8005DDC8
/* 5E9C8 8005DDC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E9CC 8005DDCC AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E9D0 8005DDD0 AFA40018 */  sw         $a0, 0x18($sp)
/* 5E9D4 8005DDD4 3C0F8019 */  lui        $t7, %hi(D_80192020)
/* 5E9D8 8005DDD8 8DF92020 */  lw         $t9, %lo(D_80192020)($t7)
/* 5E9DC 8005DDDC 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5E9E0 8005DDE0 01C02025 */  or         $a0, $t6, $zero
/* 5E9E4 8005DDE4 0320F809 */  jalr       $t9
/* 5E9E8 8005DDE8 00002825 */   or        $a1, $zero, $zero
/* 5E9EC 8005DDEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5E9F0 8005DDF0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E9F4 8005DDF4 03E00008 */  jr         $ra
/* 5E9F8 8005DDF8 00000000 */   nop

glabel func_8005DDFC
/* 5E9FC 8005DDFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5EA00 8005DE00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5EA04 8005DE04 AFA40018 */  sw         $a0, 0x18($sp)
/* 5EA08 8005DE08 3C0F8019 */  lui        $t7, %hi(D_80192028)
/* 5EA0C 8005DE0C 8DF92028 */  lw         $t9, %lo(D_80192028)($t7)
/* 5EA10 8005DE10 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5EA14 8005DE14 01C02025 */  or         $a0, $t6, $zero
/* 5EA18 8005DE18 0320F809 */  jalr       $t9
/* 5EA1C 8005DE1C 00002825 */   or        $a1, $zero, $zero
/* 5EA20 8005DE20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5EA24 8005DE24 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5EA28 8005DE28 03E00008 */  jr         $ra
/* 5EA2C 8005DE2C 00000000 */   nop

glabel func_8005DE30
/* 5EA30 8005DE30 3C058018 */  lui        $a1, %hi(D_801783F0)
/* 5EA34 8005DE34 24A583F0 */  addiu      $a1, $a1, %lo(D_801783F0)
/* 5EA38 8005DE38 A4A00000 */  sh         $zero, ($a1)
/* 5EA3C 8005DE3C 84A20000 */  lh         $v0, ($a1)
/* 5EA40 8005DE40 24080002 */  addiu      $t0, $zero, 2
/* 5EA44 8005DE44 28410010 */  slti       $at, $v0, 0x10
/* 5EA48 8005DE48 10200012 */  beqz       $at, .L8005DE94
/* 5EA4C 8005DE4C 240CFFFD */   addiu     $t4, $zero, -3
/* 5EA50 8005DE50 3C078018 */  lui        $a3, %hi(D_801783F8)
/* 5EA54 8005DE54 3C068018 */  lui        $a2, %hi(D_80178418)
/* 5EA58 8005DE58 24C68418 */  addiu      $a2, $a2, %lo(D_80178418)
/* 5EA5C 8005DE5C 24E783F8 */  addiu      $a3, $a3, %lo(D_801783F8)
/* 5EA60 8005DE60 00021840 */  sll        $v1, $v0, 1
.L8005DE64:
/* 5EA64 8005DE64 00C32021 */  addu       $a0, $a2, $v1
/* 5EA68 8005DE68 A4800000 */  sh         $zero, ($a0)
/* 5EA6C 8005DE6C 848E0000 */  lh         $t6, ($a0)
/* 5EA70 8005DE70 00E37821 */  addu       $t7, $a3, $v1
/* 5EA74 8005DE74 24580001 */  addiu      $t8, $v0, 1
/* 5EA78 8005DE78 A5EE0000 */  sh         $t6, ($t7)
/* 5EA7C 8005DE7C A4B80000 */  sh         $t8, ($a1)
/* 5EA80 8005DE80 84A20000 */  lh         $v0, ($a1)
/* 5EA84 8005DE84 00000000 */  nop
/* 5EA88 8005DE88 28410010 */  slti       $at, $v0, 0x10
/* 5EA8C 8005DE8C 1420FFF5 */  bnez       $at, .L8005DE64
/* 5EA90 8005DE90 00021840 */   sll       $v1, $v0, 1
.L8005DE94:
/* 5EA94 8005DE94 3C028018 */  lui        $v0, %hi(D_801783F2)
/* 5EA98 8005DE98 244283F2 */  addiu      $v0, $v0, %lo(D_801783F2)
/* 5EA9C 8005DE9C A4400000 */  sh         $zero, ($v0)
/* 5EAA0 8005DEA0 84590000 */  lh         $t9, ($v0)
/* 5EAA4 8005DEA4 3C018018 */  lui        $at, %hi(D_801782DC)
/* 5EAA8 8005DEA8 A4B90000 */  sh         $t9, ($a1)
/* 5EAAC 8005DEAC A02082DC */  sb         $zero, %lo(D_801782DC)($at)
/* 5EAB0 8005DEB0 3C018018 */  lui        $at, %hi(D_801783EE)
/* 5EAB4 8005DEB4 A42883EE */  sh         $t0, %lo(D_801783EE)($at)
/* 5EAB8 8005DEB8 3C038018 */  lui        $v1, %hi(D_8017843E)
/* 5EABC 8005DEBC 3C048018 */  lui        $a0, %hi(D_8017843C)
/* 5EAC0 8005DEC0 3C068018 */  lui        $a2, %hi(D_8017843A)
/* 5EAC4 8005DEC4 24C6843A */  addiu      $a2, $a2, %lo(D_8017843A)
/* 5EAC8 8005DEC8 2484843C */  addiu      $a0, $a0, %lo(D_8017843C)
/* 5EACC 8005DECC 2463843E */  addiu      $v1, $v1, %lo(D_8017843E)
/* 5EAD0 8005DED0 A4600000 */  sh         $zero, ($v1)
/* 5EAD4 8005DED4 A4800000 */  sh         $zero, ($a0)
/* 5EAD8 8005DED8 A4C00000 */  sh         $zero, ($a2)
/* 5EADC 8005DEDC 3C018018 */  lui        $at, %hi(D_80178438)
/* 5EAE0 8005DEE0 A4208438 */  sh         $zero, %lo(D_80178438)($at)
/* 5EAE4 8005DEE4 3C018018 */  lui        $at, %hi(D_801783F4)
/* 5EAE8 8005DEE8 A42C83F4 */  sh         $t4, %lo(D_801783F4)($at)
/* 5EAEC 8005DEEC 3C018018 */  lui        $at, %hi(D_801783F6)
/* 5EAF0 8005DEF0 240D000C */  addiu      $t5, $zero, 0xc
/* 5EAF4 8005DEF4 03E00008 */  jr         $ra
/* 5EAF8 8005DEF8 A42D83F6 */   sh        $t5, %lo(D_801783F6)($at)

glabel func_8005DEFC
/* 5EAFC 8005DEFC 3C038018 */  lui        $v1, %hi(D_80178418)
/* 5EB00 8005DF00 84638418 */  lh         $v1, %lo(D_80178418)($v1)
/* 5EB04 8005DF04 3C0E8018 */  lui        $t6, %hi(D_801783F8)
/* 5EB08 8005DF08 10600007 */  beqz       $v1, .L8005DF28
/* 5EB0C 8005DF0C 00000000 */   nop
/* 5EB10 8005DF10 85CE83F8 */  lh         $t6, %lo(D_801783F8)($t6)
/* 5EB14 8005DF14 00000000 */  nop
/* 5EB18 8005DF18 31CF8000 */  andi       $t7, $t6, 0x8000
/* 5EB1C 8005DF1C 006F1825 */  or         $v1, $v1, $t7
/* 5EB20 8005DF20 0003C400 */  sll        $t8, $v1, 0x10
/* 5EB24 8005DF24 00181C03 */  sra        $v1, $t8, 0x10
.L8005DF28:
/* 5EB28 8005DF28 03E00008 */  jr         $ra
/* 5EB2C 8005DF2C 00601025 */   or        $v0, $v1, $zero

glabel func_8005DF30
/* 5EB30 8005DF30 3C028018 */  lui        $v0, %hi(D_801783F8)
/* 5EB34 8005DF34 844283F8 */  lh         $v0, %lo(D_801783F8)($v0)
/* 5EB38 8005DF38 03E00008 */  jr         $ra
/* 5EB3C 8005DF3C 00000000 */   nop

glabel func_8005DF40
/* 5EB40 8005DF40 3C018018 */  lui        $at, %hi(D_801783F4)
/* 5EB44 8005DF44 A42483F4 */  sh         $a0, %lo(D_801783F4)($at)
/* 5EB48 8005DF48 3C018018 */  lui        $at, %hi(D_801783F6)
/* 5EB4C 8005DF4C AFA40000 */  sw         $a0, ($sp)
/* 5EB50 8005DF50 AFA50004 */  sw         $a1, 4($sp)
/* 5EB54 8005DF54 03E00008 */  jr         $ra
/* 5EB58 8005DF58 A42583F6 */   sh        $a1, %lo(D_801783F6)($at)

glabel func_8005DF5C
/* 5EB5C 8005DF5C 3C01800D */  lui        $at, %hi(D_800D5820)
/* 5EB60 8005DF60 A4205820 */  sh         $zero, %lo(D_800D5820)($at)
/* 5EB64 8005DF64 3C01800D */  lui        $at, %hi(D_800D5830)
/* 5EB68 8005DF68 A4205830 */  sh         $zero, %lo(D_800D5830)($at)
/* 5EB6C 8005DF6C 3C01800D */  lui        $at, %hi(D_800D5834)
/* 5EB70 8005DF70 240E0046 */  addiu      $t6, $zero, 0x46
/* 5EB74 8005DF74 3C058018 */  lui        $a1, %hi(D_80178418)
/* 5EB78 8005DF78 A42E5834 */  sh         $t6, %lo(D_800D5834)($at)
/* 5EB7C 8005DF7C 24A58418 */  addiu      $a1, $a1, %lo(D_80178418)
/* 5EB80 8005DF80 00001825 */  or         $v1, $zero, $zero
/* 5EB84 8005DF84 00001025 */  or         $v0, $zero, $zero
/* 5EB88 8005DF88 24060010 */  addiu      $a2, $zero, 0x10
.L8005DF8C:
/* 5EB8C 8005DF8C 84AF0000 */  lh         $t7, ($a1)
/* 5EB90 8005DF90 00000000 */  nop
/* 5EB94 8005DF94 15E00006 */  bnez       $t7, .L8005DFB0
/* 5EB98 8005DF98 3C018018 */   lui       $at, %hi(D_801783F8)
/* 5EB9C 8005DF9C 00220821 */  addu       $at, $at, $v0
/* 5EBA0 8005DFA0 A42083F8 */  sh         $zero, %lo(D_801783F8)($at)
/* 5EBA4 8005DFA4 A4A40000 */  sh         $a0, ($a1)
/* 5EBA8 8005DFA8 03E00008 */  jr         $ra
/* 5EBAC 8005DFAC 00601025 */   or        $v0, $v1, $zero
.L8005DFB0:
/* 5EBB0 8005DFB0 24630001 */  addiu      $v1, $v1, 1
/* 5EBB4 8005DFB4 24420002 */  addiu      $v0, $v0, 2
/* 5EBB8 8005DFB8 1466FFF4 */  bne        $v1, $a2, .L8005DF8C
/* 5EBBC 8005DFBC 24A50002 */   addiu     $a1, $a1, 2
/* 5EBC0 8005DFC0 03E00008 */  jr         $ra
/* 5EBC4 8005DFC4 00601025 */   or        $v0, $v1, $zero

glabel func_8005DFC8
/* 5EBC8 8005DFC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5EBCC 8005DFCC AFBF0014 */  sw         $ra, 0x14($sp)
/* 5EBD0 8005DFD0 0C0177BF */  jal        func_8005DEFC
/* 5EBD4 8005DFD4 AFA40018 */   sw        $a0, 0x18($sp)
/* 5EBD8 8005DFD8 8FA50018 */  lw         $a1, 0x18($sp)
/* 5EBDC 8005DFDC 14400005 */  bnez       $v0, .L8005DFF4
/* 5EBE0 8005DFE0 24010001 */   addiu     $at, $zero, 1
/* 5EBE4 8005DFE4 0C0177D7 */  jal        func_8005DF5C
/* 5EBE8 8005DFE8 00A02025 */   or        $a0, $a1, $zero
/* 5EBEC 8005DFEC 10000028 */  b          .L8005E090
/* 5EBF0 8005DFF0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005DFF4:
/* 5EBF4 8005DFF4 3C028018 */  lui        $v0, %hi(D_801783F0)
/* 5EBF8 8005DFF8 244283F0 */  addiu      $v0, $v0, %lo(D_801783F0)
/* 5EBFC 8005DFFC 84460000 */  lh         $a2, ($v0)
/* 5EC00 8005E000 24070001 */  addiu      $a3, $zero, 1
/* 5EC04 8005E004 14C00002 */  bnez       $a2, .L8005E010
/* 5EC08 8005E008 240E0002 */   addiu     $t6, $zero, 2
/* 5EC0C 8005E00C 00003825 */  or         $a3, $zero, $zero
.L8005E010:
/* 5EC10 8005E010 14C10004 */  bne        $a2, $at, .L8005E024
/* 5EC14 8005E014 240FFFFF */   addiu     $t7, $zero, -1
/* 5EC18 8005E018 A44E0000 */  sh         $t6, ($v0)
/* 5EC1C 8005E01C 84460000 */  lh         $a2, ($v0)
/* 5EC20 8005E020 00000000 */  nop
.L8005E024:
/* 5EC24 8005E024 24010002 */  addiu      $at, $zero, 2
/* 5EC28 8005E028 14C10003 */  bne        $a2, $at, .L8005E038
/* 5EC2C 8005E02C 00072040 */   sll       $a0, $a3, 1
/* 5EC30 8005E030 3C018018 */  lui        $at, %hi(D_801783F2)
/* 5EC34 8005E034 A42F83F2 */  sh         $t7, %lo(D_801783F2)($at)
.L8005E038:
/* 5EC38 8005E038 28E10010 */  slti       $at, $a3, 0x10
/* 5EC3C 8005E03C 1020000F */  beqz       $at, .L8005E07C
/* 5EC40 8005E040 3C188018 */   lui       $t8, %hi(D_801783F8)
/* 5EC44 8005E044 3C198018 */  lui        $t9, %hi(D_80178418)
/* 5EC48 8005E048 27398418 */  addiu      $t9, $t9, %lo(D_80178418)
/* 5EC4C 8005E04C 271883F8 */  addiu      $t8, $t8, %lo(D_801783F8)
/* 5EC50 8005E050 00981821 */  addu       $v1, $a0, $t8
/* 5EC54 8005E054 00991021 */  addu       $v0, $a0, $t9
/* 5EC58 8005E058 3C048018 */  lui        $a0, %hi(D_80178438)
/* 5EC5C 8005E05C 24848438 */  addiu      $a0, $a0, %lo(D_80178438)
.L8005E060:
/* 5EC60 8005E060 24420002 */  addiu      $v0, $v0, 2
/* 5EC64 8005E064 0044082B */  sltu       $at, $v0, $a0
/* 5EC68 8005E068 A445FFFE */  sh         $a1, -2($v0)
/* 5EC6C 8005E06C 24630002 */  addiu      $v1, $v1, 2
/* 5EC70 8005E070 A460FFFE */  sh         $zero, -2($v1)
/* 5EC74 8005E074 1420FFFA */  bnez       $at, .L8005E060
/* 5EC78 8005E078 00002825 */   or        $a1, $zero, $zero
.L8005E07C:
/* 5EC7C 8005E07C 14C00003 */  bnez       $a2, .L8005E08C
/* 5EC80 8005E080 24020001 */   addiu     $v0, $zero, 1
/* 5EC84 8005E084 10000001 */  b          .L8005E08C
/* 5EC88 8005E088 00001025 */   or        $v0, $zero, $zero
.L8005E08C:
/* 5EC8C 8005E08C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005E090:
/* 5EC90 8005E090 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5EC94 8005E094 03E00008 */  jr         $ra
/* 5EC98 8005E098 00000000 */   nop

glabel func_8005E09C
/* 5EC9C 8005E09C 00047040 */  sll        $t6, $a0, 1
/* 5ECA0 8005E0A0 3C018018 */  lui        $at, %hi(D_801783F8)
/* 5ECA4 8005E0A4 002E0821 */  addu       $at, $at, $t6
/* 5ECA8 8005E0A8 03E00008 */  jr         $ra
/* 5ECAC 8005E0AC A42583F8 */   sh        $a1, %lo(D_801783F8)($at)

glabel func_8005E0B0
/* 5ECB0 8005E0B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5ECB4 8005E0B4 AFB00018 */  sw         $s0, 0x18($sp)
/* 5ECB8 8005E0B8 00048400 */  sll        $s0, $a0, 0x10
/* 5ECBC 8005E0BC 00107403 */  sra        $t6, $s0, 0x10
/* 5ECC0 8005E0C0 24030002 */  addiu      $v1, $zero, 2
/* 5ECC4 8005E0C4 01C08025 */  or         $s0, $t6, $zero
/* 5ECC8 8005E0C8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5ECCC 8005E0CC AFA40020 */  sw         $a0, 0x20($sp)
/* 5ECD0 8005E0D0 14C30008 */  bne        $a2, $v1, .L8005E0F4
/* 5ECD4 8005E0D4 AFA50024 */   sw        $a1, 0x24($sp)
/* 5ECD8 8005E0D8 000E2400 */  sll        $a0, $t6, 0x10
/* 5ECDC 8005E0DC 00047C03 */  sra        $t7, $a0, 0x10
/* 5ECE0 8005E0E0 87A50026 */  lh         $a1, 0x26($sp)
/* 5ECE4 8005E0E4 0C017B08 */  jal        func_8005EC20
/* 5ECE8 8005E0E8 01E02025 */   or        $a0, $t7, $zero
/* 5ECEC 8005E0EC 10000034 */  b          .L8005E1C0
/* 5ECF0 8005E0F0 8FBF001C */   lw        $ra, 0x1c($sp)
.L8005E0F4:
/* 5ECF4 8005E0F4 1A000031 */  blez       $s0, .L8005E1BC
/* 5ECF8 8005E0F8 2A010081 */   slti      $at, $s0, 0x81
/* 5ECFC 8005E0FC 10200012 */  beqz       $at, .L8005E148
/* 5ED00 8005E100 3C028018 */   lui       $v0, %hi(D_801782E0)
/* 5ED04 8005E104 844282E0 */  lh         $v0, %lo(D_801782E0)($v0)
/* 5ED08 8005E108 24010001 */  addiu      $at, $zero, 1
/* 5ED0C 8005E10C 1041000E */  beq        $v0, $at, .L8005E148
/* 5ED10 8005E110 00000000 */   nop
/* 5ED14 8005E114 10430005 */  beq        $v0, $v1, .L8005E12C
/* 5ED18 8005E118 24010003 */   addiu     $at, $zero, 3
/* 5ED1C 8005E11C 10410007 */  beq        $v0, $at, .L8005E13C
/* 5ED20 8005E120 00000000 */   nop
/* 5ED24 8005E124 10000008 */  b          .L8005E148
/* 5ED28 8005E128 00000000 */   nop
.L8005E12C:
/* 5ED2C 8005E12C 2610007C */  addiu      $s0, $s0, 0x7c
/* 5ED30 8005E130 0010C400 */  sll        $t8, $s0, 0x10
/* 5ED34 8005E134 10000004 */  b          .L8005E148
/* 5ED38 8005E138 00188403 */   sra       $s0, $t8, 0x10
.L8005E13C:
/* 5ED3C 8005E13C 261000CD */  addiu      $s0, $s0, 0xcd
/* 5ED40 8005E140 00104400 */  sll        $t0, $s0, 0x10
/* 5ED44 8005E144 00088403 */  sra        $s0, $t0, 0x10
.L8005E148:
/* 5ED48 8005E148 10C00008 */  beqz       $a2, .L8005E16C
/* 5ED4C 8005E14C 3C078018 */   lui       $a3, 0x8018
/* 5ED50 8005E150 00102400 */  sll        $a0, $s0, 0x10
/* 5ED54 8005E154 00045403 */  sra        $t2, $a0, 0x10
/* 5ED58 8005E158 87A50026 */  lh         $a1, 0x26($sp)
/* 5ED5C 8005E15C 0C017B08 */  jal        func_8005EC20
/* 5ED60 8005E160 01402025 */   or        $a0, $t2, $zero
/* 5ED64 8005E164 10000016 */  b          .L8005E1C0
/* 5ED68 8005E168 8FBF001C */   lw        $ra, 0x1c($sp)
.L8005E16C:
/* 5ED6C 8005E16C 87AB0026 */  lh         $t3, 0x26($sp)
/* 5ED70 8005E170 00103400 */  sll        $a2, $s0, 0x10
/* 5ED74 8005E174 05610004 */  bgez       $t3, .L8005E188
/* 5ED78 8005E178 3164001F */   andi      $a0, $t3, 0x1f
/* 5ED7C 8005E17C 10800002 */  beqz       $a0, .L8005E188
/* 5ED80 8005E180 00000000 */   nop
/* 5ED84 8005E184 2484FFE0 */  addiu      $a0, $a0, -0x20
.L8005E188:
/* 5ED88 8005E188 00046400 */  sll        $t4, $a0, 0x10
/* 5ED8C 8005E18C 000C6C03 */  sra        $t5, $t4, 0x10
/* 5ED90 8005E190 0006C403 */  sra        $t8, $a2, 0x10
/* 5ED94 8005E194 84E782E2 */  lh         $a3, -0x7d1e($a3)
/* 5ED98 8005E198 03003025 */  or         $a2, $t8, $zero
/* 5ED9C 8005E19C 01A02025 */  or         $a0, $t5, $zero
/* 5EDA0 8005E1A0 05610003 */  bgez       $t3, .L8005E1B0
/* 5EDA4 8005E1A4 000B2943 */   sra       $a1, $t3, 5
/* 5EDA8 8005E1A8 2561001F */  addiu      $at, $t3, 0x1f
/* 5EDAC 8005E1AC 00012943 */  sra        $a1, $at, 5
.L8005E1B0:
/* 5EDB0 8005E1B0 00057400 */  sll        $t6, $a1, 0x10
/* 5EDB4 8005E1B4 0C020C74 */  jal        func_800831D0
/* 5EDB8 8005E1B8 000E2C03 */   sra       $a1, $t6, 0x10
.L8005E1BC:
/* 5EDBC 8005E1BC 8FBF001C */  lw         $ra, 0x1c($sp)
.L8005E1C0:
/* 5EDC0 8005E1C0 8FB00018 */  lw         $s0, 0x18($sp)
/* 5EDC4 8005E1C4 03E00008 */  jr         $ra
/* 5EDC8 8005E1C8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8005E1CC
/* 5EDCC 8005E1CC 3C0140A0 */  lui        $at, 0x40a0
/* 5EDD0 8005E1D0 44856000 */  mtc1       $a1, $f12
/* 5EDD4 8005E1D4 44812000 */  mtc1       $at, $f4
/* 5EDD8 8005E1D8 3C03800C */  lui        $v1, %hi(D_800BE4E0)
/* 5EDDC 8005E1DC 46046003 */  div.s      $f0, $f12, $f4
/* 5EDE0 8005E1E0 9463E4E0 */  lhu        $v1, %lo(D_800BE4E0)($v1)
/* 5EDE4 8005E1E4 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5EDE8 8005E1E8 000E7880 */  sll        $t7, $t6, 2
/* 5EDEC 8005E1EC 0003C940 */  sll        $t9, $v1, 5
/* 5EDF0 8005E1F0 3C05800C */  lui        $a1, %hi(D_800BCCD0)
/* 5EDF4 8005E1F4 332803FF */  andi       $t0, $t9, 0x3ff
/* 5EDF8 8005E1F8 01EE7823 */  subu       $t7, $t7, $t6
/* 5EDFC 8005E1FC 24A5CCD0 */  addiu      $a1, $a1, %lo(D_800BCCD0)
/* 5EE00 8005E200 000F7880 */  sll        $t7, $t7, 2
/* 5EE04 8005E204 00084880 */  sll        $t1, $t0, 2
/* 5EE08 8005E208 00A95021 */  addu       $t2, $a1, $t1
/* 5EE0C 8005E20C 01EE7821 */  addu       $t7, $t7, $t6
/* 5EE10 8005E210 272BFF00 */  addiu      $t3, $t9, -0x100
/* 5EE14 8005E214 C5460000 */  lwc1       $f6, ($t2)
/* 5EE18 8005E218 000F7880 */  sll        $t7, $t7, 2
/* 5EE1C 8005E21C 316C03FF */  andi       $t4, $t3, 0x3ff
/* 5EE20 8005E220 01EE7823 */  subu       $t7, $t7, $t6
/* 5EE24 8005E224 000C6880 */  sll        $t5, $t4, 2
/* 5EE28 8005E228 46003202 */  mul.s      $f8, $f6, $f0
/* 5EE2C 8005E22C 00AD7021 */  addu       $t6, $a1, $t5
/* 5EE30 8005E230 C5D00000 */  lwc1       $f16, ($t6)
/* 5EE34 8005E234 3C18800F */  lui        $t8, %hi(gActors)
/* 5EE38 8005E238 46008482 */  mul.s      $f18, $f16, $f0
/* 5EE3C 8005E23C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 5EE40 8005E240 000F78C0 */  sll        $t7, $t7, 3
/* 5EE44 8005E244 01F81021 */  addu       $v0, $t7, $t8
/* 5EE48 8005E248 460C4280 */  add.s      $f10, $f8, $f12
/* 5EE4C 8005E24C AFA40000 */  sw         $a0, ($sp)
/* 5EE50 8005E250 460C9100 */  add.s      $f4, $f18, $f12
/* 5EE54 8005E254 E44A00B4 */  swc1       $f10, 0xb4($v0)
/* 5EE58 8005E258 03E00008 */  jr         $ra
/* 5EE5C 8005E25C E44400B8 */   swc1      $f4, 0xb8($v0)

glabel func_8005E260
/* 5EE60 8005E260 3086FFFF */  andi       $a2, $a0, 0xffff
/* 5EE64 8005E264 24080198 */  addiu      $t0, $zero, 0x198
/* 5EE68 8005E268 00C80019 */  multu      $a2, $t0
/* 5EE6C 8005E26C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5EE70 8005E270 3C07800F */  lui        $a3, %hi(gActors)
/* 5EE74 8005E274 24E7F510 */  addiu      $a3, $a3, %lo(gActors)
/* 5EE78 8005E278 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5EE7C 8005E27C AFBF0024 */  sw         $ra, 0x24($sp)
/* 5EE80 8005E280 AFB20020 */  sw         $s2, 0x20($sp)
/* 5EE84 8005E284 AFB00018 */  sw         $s0, 0x18($sp)
/* 5EE88 8005E288 AFA40028 */  sw         $a0, 0x28($sp)
/* 5EE8C 8005E28C 240D0134 */  addiu      $t5, $zero, 0x134
/* 5EE90 8005E290 00007012 */  mflo       $t6
/* 5EE94 8005E294 00EE8821 */  addu       $s1, $a3, $t6
/* 5EE98 8005E298 922300D1 */  lbu        $v1, 0xd1($s1)
/* 5EE9C 8005E29C 962500D6 */  lhu        $a1, 0xd6($s1)
/* 5EEA0 8005E2A0 28610002 */  slti       $at, $v1, 2
/* 5EEA4 8005E2A4 1020000B */  beqz       $at, .L8005E2D4
/* 5EEA8 8005E2A8 240E000D */   addiu     $t6, $zero, 0xd
/* 5EEAC 8005E2AC 8E2F0098 */  lw         $t7, 0x98($s1)
/* 5EEB0 8005E2B0 2401EFFF */  addiu      $at, $zero, -0x1001
/* 5EEB4 8005E2B4 31F80200 */  andi       $t8, $t7, 0x200
/* 5EEB8 8005E2B8 13000006 */  beqz       $t8, .L8005E2D4
/* 5EEBC 8005E2BC 240A0002 */   addiu     $t2, $zero, 2
/* 5EEC0 8005E2C0 8E390080 */  lw         $t9, 0x80($s1)
/* 5EEC4 8005E2C4 A62A00D0 */  sh         $t2, 0xd0($s1)
/* 5EEC8 8005E2C8 03214824 */  and        $t1, $t9, $at
/* 5EECC 8005E2CC 922300D1 */  lbu        $v1, 0xd1($s1)
/* 5EED0 8005E2D0 AE290080 */  sw         $t1, 0x80($s1)
.L8005E2D4:
/* 5EED4 8005E2D4 1060000A */  beqz       $v1, .L8005E300
/* 5EED8 8005E2D8 24010001 */   addiu     $at, $zero, 1
/* 5EEDC 8005E2DC 1061001D */  beq        $v1, $at, .L8005E354
/* 5EEE0 8005E2E0 24010002 */   addiu     $at, $zero, 2
/* 5EEE4 8005E2E4 1061006D */  beq        $v1, $at, .L8005E49C
/* 5EEE8 8005E2E8 00067080 */   sll       $t6, $a2, 2
/* 5EEEC 8005E2EC 24010003 */  addiu      $at, $zero, 3
/* 5EEF0 8005E2F0 10610085 */  beq        $v1, $at, .L8005E508
/* 5EEF4 8005E2F4 00000000 */   nop
/* 5EEF8 8005E2F8 10000097 */  b          .L8005E558
/* 5EEFC 8005E2FC 8FBF0024 */   lw        $ra, 0x24($sp)
.L8005E300:
/* 5EF00 8005E300 962B0094 */  lhu        $t3, 0x94($s1)
/* 5EF04 8005E304 44802000 */  mtc1       $zero, $f4
/* 5EF08 8005E308 8E2F0104 */  lw         $t7, 0x104($s1)
/* 5EF0C 8005E30C 356C0001 */  ori        $t4, $t3, 1
/* 5EF10 8005E310 A62C0094 */  sh         $t4, 0x94($s1)
/* 5EF14 8005E314 A62D0084 */  sh         $t5, 0x84($s1)
/* 5EF18 8005E318 A22000DF */  sb         $zero, 0xdf($s1)
/* 5EF1C 8005E31C A22E00DE */  sb         $t6, 0xde($s1)
/* 5EF20 8005E320 05E10006 */  bgez       $t7, .L8005E33C
/* 5EF24 8005E324 E6240110 */   swc1      $f4, 0x110($s1)
/* 5EF28 8005E328 8E380080 */  lw         $t8, 0x80($s1)
/* 5EF2C 8005E32C 00000000 */  nop
/* 5EF30 8005E330 37190020 */  ori        $t9, $t8, 0x20
/* 5EF34 8005E334 10000005 */  b          .L8005E34C
/* 5EF38 8005E338 AE390080 */   sw        $t9, 0x80($s1)
.L8005E33C:
/* 5EF3C 8005E33C 8E290080 */  lw         $t1, 0x80($s1)
/* 5EF40 8005E340 2401FFDF */  addiu      $at, $zero, -0x21
/* 5EF44 8005E344 01215024 */  and        $t2, $t1, $at
/* 5EF48 8005E348 AE2A0080 */  sw         $t2, 0x80($s1)
.L8005E34C:
/* 5EF4C 8005E34C 240B0001 */  addiu      $t3, $zero, 1
/* 5EF50 8005E350 A62B00D0 */  sh         $t3, 0xd0($s1)
.L8005E354:
/* 5EF54 8005E354 00A80019 */  multu      $a1, $t0
/* 5EF58 8005E358 8E2B0108 */  lw         $t3, 0x108($s1)
/* 5EF5C 8005E35C 8E390104 */  lw         $t9, 0x104($s1)
/* 5EF60 8005E360 3C01800F */  lui        $at, 0x800f
/* 5EF64 8005E364 C6260110 */  lwc1       $f6, 0x110($s1)
/* 5EF68 8005E368 00000000 */  nop
/* 5EF6C 8005E36C 46003221 */  cvt.d.s    $f8, $f6
/* 5EF70 8005E370 44803000 */  mtc1       $zero, $f6
/* 5EF74 8005E374 00006012 */  mflo       $t4
/* 5EF78 8005E378 00EC8021 */  addu       $s0, $a3, $t4
/* 5EF7C 8005E37C 8E0D0088 */  lw         $t5, 0x88($s0)
/* 5EF80 8005E380 00000000 */  nop
/* 5EF84 8005E384 AE2D0088 */  sw         $t5, 0x88($s1)
/* 5EF88 8005E388 8E0E008C */  lw         $t6, 0x8c($s0)
/* 5EF8C 8005E38C 01B94821 */  addu       $t1, $t5, $t9
/* 5EF90 8005E390 AE2E008C */  sw         $t6, 0x8c($s1)
/* 5EF94 8005E394 8E0F0090 */  lw         $t7, 0x90($s0)
/* 5EF98 8005E398 01CB6021 */  addu       $t4, $t6, $t3
/* 5EF9C 8005E39C 8E2E010C */  lw         $t6, 0x10c($s1)
/* 5EFA0 8005E3A0 AE2F0090 */  sw         $t7, 0x90($s1)
/* 5EFA4 8005E3A4 AE290088 */  sw         $t1, 0x88($s1)
/* 5EFA8 8005E3A8 01EE7821 */  addu       $t7, $t7, $t6
/* 5EFAC 8005E3AC AE2C008C */  sw         $t4, 0x8c($s1)
/* 5EFB0 8005E3B0 AE2F0090 */  sw         $t7, 0x90($s1)
/* 5EFB4 8005E3B4 86180088 */  lh         $t8, 0x88($s0)
/* 5EFB8 8005E3B8 86390088 */  lh         $t9, 0x88($s1)
/* 5EFBC 8005E3BC 862C008C */  lh         $t4, 0x8c($s1)
/* 5EFC0 8005E3C0 03195023 */  subu       $t2, $t8, $t9
/* 5EFC4 8005E3C4 A62A00AC */  sh         $t2, 0xac($s1)
/* 5EFC8 8005E3C8 A62A00AA */  sh         $t2, 0xaa($s1)
/* 5EFCC 8005E3CC 860B008C */  lh         $t3, 0x8c($s0)
/* 5EFD0 8005E3D0 862F00AA */  lh         $t7, 0xaa($s1)
/* 5EFD4 8005E3D4 016C7023 */  subu       $t6, $t3, $t4
/* 5EFD8 8005E3D8 A62E00B0 */  sh         $t6, 0xb0($s1)
/* 5EFDC 8005E3DC A62E00AE */  sh         $t6, 0xae($s1)
/* 5EFE0 8005E3E0 861800AA */  lh         $t8, 0xaa($s0)
/* 5EFE4 8005E3E4 862900AC */  lh         $t1, 0xac($s1)
/* 5EFE8 8005E3E8 01F8C821 */  addu       $t9, $t7, $t8
/* 5EFEC 8005E3EC A63900AA */  sh         $t9, 0xaa($s1)
/* 5EFF0 8005E3F0 860A00AC */  lh         $t2, 0xac($s0)
/* 5EFF4 8005E3F4 862C00AE */  lh         $t4, 0xae($s1)
/* 5EFF8 8005E3F8 012A5821 */  addu       $t3, $t1, $t2
/* 5EFFC 8005E3FC A62B00AC */  sh         $t3, 0xac($s1)
/* 5F000 8005E400 860D00AE */  lh         $t5, 0xae($s0)
/* 5F004 8005E404 862F00B0 */  lh         $t7, 0xb0($s1)
/* 5F008 8005E408 018D7021 */  addu       $t6, $t4, $t5
/* 5F00C 8005E40C A62E00AE */  sh         $t6, 0xae($s1)
/* 5F010 8005E410 861800B0 */  lh         $t8, 0xb0($s0)
/* 5F014 8005E414 00000000 */  nop
/* 5F018 8005E418 01F8C821 */  addu       $t9, $t7, $t8
/* 5F01C 8005E41C A63900B0 */  sh         $t9, 0xb0($s1)
/* 5F020 8005E420 C42ABF94 */  lwc1       $f10, -0x406c($at)
/* 5F024 8005E424 C42BBF90 */  lwc1       $f11, -0x4070($at)
/* 5F028 8005E428 3C013FF0 */  lui        $at, 0x3ff0
/* 5F02C 8005E42C 462A4400 */  add.d      $f16, $f8, $f10
/* 5F030 8005E430 44813800 */  mtc1       $at, $f7
/* 5F034 8005E434 462084A0 */  cvt.s.d    $f18, $f16
/* 5F038 8005E438 3C013F80 */  lui        $at, 0x3f80
/* 5F03C 8005E43C E6320110 */  swc1       $f18, 0x110($s1)
/* 5F040 8005E440 C6200110 */  lwc1       $f0, 0x110($s1)
/* 5F044 8005E444 00000000 */  nop
/* 5F048 8005E448 46000121 */  cvt.d.s    $f4, $f0
/* 5F04C 8005E44C 4624303E */  c.le.d     $f6, $f4
/* 5F050 8005E450 00000000 */  nop
/* 5F054 8005E454 45000007 */  bc1f       .L8005E474
/* 5F058 8005E458 00000000 */   nop
/* 5F05C 8005E45C 44814000 */  mtc1       $at, $f8
/* 5F060 8005E460 8E290080 */  lw         $t1, 0x80($s1)
/* 5F064 8005E464 E6280110 */  swc1       $f8, 0x110($s1)
/* 5F068 8005E468 352A1000 */  ori        $t2, $t1, 0x1000
/* 5F06C 8005E46C C6200110 */  lwc1       $f0, 0x110($s1)
/* 5F070 8005E470 AE2A0080 */  sw         $t2, 0x80($s1)
.L8005E474:
/* 5F074 8005E474 44050000 */  mfc1       $a1, $f0
/* 5F078 8005E478 0C017873 */  jal        func_8005E1CC
/* 5F07C 8005E47C 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 5F080 8005E480 8E0B0098 */  lw         $t3, 0x98($s0)
/* 5F084 8005E484 240D0003 */  addiu      $t5, $zero, 3
/* 5F088 8005E488 000B6340 */  sll        $t4, $t3, 0xd
/* 5F08C 8005E48C 05800032 */  bltz       $t4, .L8005E558
/* 5F090 8005E490 8FBF0024 */   lw        $ra, 0x24($sp)
/* 5F094 8005E494 1000002F */  b          .L8005E554
/* 5F098 8005E498 A62D00D0 */   sh        $t5, 0xd0($s1)
.L8005E49C:
/* 5F09C 8005E49C 01C67023 */  subu       $t6, $t6, $a2
/* 5F0A0 8005E4A0 000E7080 */  sll        $t6, $t6, 2
/* 5F0A4 8005E4A4 01C67021 */  addu       $t6, $t6, $a2
/* 5F0A8 8005E4A8 000E7080 */  sll        $t6, $t6, 2
/* 5F0AC 8005E4AC 01C67023 */  subu       $t6, $t6, $a2
/* 5F0B0 8005E4B0 000E70C0 */  sll        $t6, $t6, 3
/* 5F0B4 8005E4B4 00EE9021 */  addu       $s2, $a3, $t6
/* 5F0B8 8005E4B8 86440152 */  lh         $a0, 0x152($s2)
/* 5F0BC 8005E4BC 0C0177F2 */  jal        func_8005DFC8
/* 5F0C0 8005E4C0 00000000 */   nop
/* 5F0C4 8005E4C4 24100001 */  addiu      $s0, $zero, 1
/* 5F0C8 8005E4C8 2A010010 */  slti       $at, $s0, 0x10
/* 5F0CC 8005E4CC 1020000B */  beqz       $at, .L8005E4FC
/* 5F0D0 8005E4D0 00107880 */   sll       $t7, $s0, 2
.L8005E4D4:
/* 5F0D4 8005E4D4 024FC021 */  addu       $t8, $s2, $t7
/* 5F0D8 8005E4D8 87040152 */  lh         $a0, 0x152($t8)
/* 5F0DC 8005E4DC 0C0177D7 */  jal        func_8005DF5C
/* 5F0E0 8005E4E0 00000000 */   nop
/* 5F0E4 8005E4E4 26100001 */  addiu      $s0, $s0, 1
/* 5F0E8 8005E4E8 0010CC00 */  sll        $t9, $s0, 0x10
/* 5F0EC 8005E4EC 00198403 */  sra        $s0, $t9, 0x10
/* 5F0F0 8005E4F0 2A010010 */  slti       $at, $s0, 0x10
/* 5F0F4 8005E4F4 1420FFF7 */  bnez       $at, .L8005E4D4
/* 5F0F8 8005E4F8 00107880 */   sll       $t7, $s0, 2
.L8005E4FC:
/* 5F0FC 8005E4FC 240A0003 */  addiu      $t2, $zero, 3
/* 5F100 8005E500 10000014 */  b          .L8005E554
/* 5F104 8005E504 A62A00D0 */   sh        $t2, 0xd0($s1)
.L8005E508:
/* 5F108 8005E508 8E250110 */  lw         $a1, 0x110($s1)
/* 5F10C 8005E50C 0C017873 */  jal        func_8005E1CC
/* 5F110 8005E510 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 5F114 8005E514 C6200110 */  lwc1       $f0, 0x110($s1)
/* 5F118 8005E518 44805000 */  mtc1       $zero, $f10
/* 5F11C 8005E51C 3C01800F */  lui        $at, %hi(D_800EBF98)
/* 5F120 8005E520 4600503C */  c.lt.s     $f10, $f0
/* 5F124 8005E524 240B0004 */  addiu      $t3, $zero, 4
/* 5F128 8005E528 45000008 */  bc1f       .L8005E54C
/* 5F12C 8005E52C 00000000 */   nop
/* 5F130 8005E530 C433BF98 */  lwc1       $f19, %lo(D_800EBF98)($at)
/* 5F134 8005E534 C432BF9C */  lwc1       $f18, -0x4064($at)
/* 5F138 8005E538 46000421 */  cvt.d.s    $f16, $f0
/* 5F13C 8005E53C 46328101 */  sub.d      $f4, $f16, $f18
/* 5F140 8005E540 462021A0 */  cvt.s.d    $f6, $f4
/* 5F144 8005E544 10000003 */  b          .L8005E554
/* 5F148 8005E548 E6260110 */   swc1      $f6, 0x110($s1)
.L8005E54C:
/* 5F14C 8005E54C AE200080 */  sw         $zero, 0x80($s1)
/* 5F150 8005E550 A62B00D0 */  sh         $t3, 0xd0($s1)
.L8005E554:
/* 5F154 8005E554 8FBF0024 */  lw         $ra, 0x24($sp)
.L8005E558:
/* 5F158 8005E558 8FB00018 */  lw         $s0, 0x18($sp)
/* 5F15C 8005E55C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5F160 8005E560 8FB20020 */  lw         $s2, 0x20($sp)
/* 5F164 8005E564 03E00008 */  jr         $ra
/* 5F168 8005E568 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8005E56C
/* 5F16C 8005E56C 3086FFFF */  andi       $a2, $a0, 0xffff
/* 5F170 8005E570 24070198 */  addiu      $a3, $zero, 0x198
/* 5F174 8005E574 00C70019 */  multu      $a2, $a3
/* 5F178 8005E578 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5F17C 8005E57C 3C03800F */  lui        $v1, %hi(gActors)
/* 5F180 8005E580 2463F510 */  addiu      $v1, $v1, %lo(gActors)
/* 5F184 8005E584 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5F188 8005E588 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5F18C 8005E58C AFB20020 */  sw         $s2, 0x20($sp)
/* 5F190 8005E590 AFB00018 */  sw         $s0, 0x18($sp)
/* 5F194 8005E594 AFA40030 */  sw         $a0, 0x30($sp)
/* 5F198 8005E598 24190134 */  addiu      $t9, $zero, 0x134
/* 5F19C 8005E59C 240800D8 */  addiu      $t0, $zero, 0xd8
/* 5F1A0 8005E5A0 24090017 */  addiu      $t1, $zero, 0x17
/* 5F1A4 8005E5A4 00007012 */  mflo       $t6
/* 5F1A8 8005E5A8 006E8821 */  addu       $s1, $v1, $t6
/* 5F1AC 8005E5AC 922200D1 */  lbu        $v0, 0xd1($s1)
/* 5F1B0 8005E5B0 962500D6 */  lhu        $a1, 0xd6($s1)
/* 5F1B4 8005E5B4 1040000B */  beqz       $v0, .L8005E5E4
/* 5F1B8 8005E5B8 240A0001 */   addiu     $t2, $zero, 1
/* 5F1BC 8005E5BC 24010001 */  addiu      $at, $zero, 1
/* 5F1C0 8005E5C0 1041002B */  beq        $v0, $at, .L8005E670
/* 5F1C4 8005E5C4 24010002 */   addiu     $at, $zero, 2
/* 5F1C8 8005E5C8 10410094 */  beq        $v0, $at, .L8005E81C
/* 5F1CC 8005E5CC 0006C880 */   sll       $t9, $a2, 2
/* 5F1D0 8005E5D0 24010003 */  addiu      $at, $zero, 3
/* 5F1D4 8005E5D4 104100AF */  beq        $v0, $at, .L8005E894
/* 5F1D8 8005E5D8 00000000 */   nop
/* 5F1DC 8005E5DC 100000C1 */  b          .L8005E8E4
/* 5F1E0 8005E5E0 8FBF0024 */   lw        $ra, 0x24($sp)
.L8005E5E4:
/* 5F1E4 8005E5E4 962F0094 */  lhu        $t7, 0x94($s1)
/* 5F1E8 8005E5E8 44802000 */  mtc1       $zero, $f4
/* 5F1EC 8005E5EC 8E2D0104 */  lw         $t5, 0x104($s1)
/* 5F1F0 8005E5F0 240B000C */  addiu      $t3, $zero, 0xc
/* 5F1F4 8005E5F4 240CFFF4 */  addiu      $t4, $zero, -0xc
/* 5F1F8 8005E5F8 35F80011 */  ori        $t8, $t7, 0x11
/* 5F1FC 8005E5FC A6380094 */  sh         $t8, 0x94($s1)
/* 5F200 8005E600 A6390084 */  sh         $t9, 0x84($s1)
/* 5F204 8005E604 A228009F */  sb         $t0, 0x9f($s1)
/* 5F208 8005E608 A22900DB */  sb         $t1, 0xdb($s1)
/* 5F20C 8005E60C A62A00E0 */  sh         $t2, 0xe0($s1)
/* 5F210 8005E610 A62000E4 */  sh         $zero, 0xe4($s1)
/* 5F214 8005E614 A62C00A8 */  sh         $t4, 0xa8($s1)
/* 5F218 8005E618 A62B00A6 */  sh         $t3, 0xa6($s1)
/* 5F21C 8005E61C A22000DF */  sb         $zero, 0xdf($s1)
/* 5F220 8005E620 05A10009 */  bgez       $t5, .L8005E648
/* 5F224 8005E624 E6240110 */   swc1      $f4, 0x110($s1)
/* 5F228 8005E628 8E2E0080 */  lw         $t6, 0x80($s1)
/* 5F22C 8005E62C 2418FFEC */  addiu      $t8, $zero, -0x14
/* 5F230 8005E630 24190008 */  addiu      $t9, $zero, 8
/* 5F234 8005E634 35CF0020 */  ori        $t7, $t6, 0x20
/* 5F238 8005E638 AE2F0080 */  sw         $t7, 0x80($s1)
/* 5F23C 8005E63C A63900A4 */  sh         $t9, 0xa4($s1)
/* 5F240 8005E640 10000009 */  b          .L8005E668
/* 5F244 8005E644 A63800A2 */   sh        $t8, 0xa2($s1)
.L8005E648:
/* 5F248 8005E648 8E280080 */  lw         $t0, 0x80($s1)
/* 5F24C 8005E64C 2401FFDF */  addiu      $at, $zero, -0x21
/* 5F250 8005E650 240AFFF8 */  addiu      $t2, $zero, -8
/* 5F254 8005E654 240B0014 */  addiu      $t3, $zero, 0x14
/* 5F258 8005E658 01014824 */  and        $t1, $t0, $at
/* 5F25C 8005E65C AE290080 */  sw         $t1, 0x80($s1)
/* 5F260 8005E660 A62B00A4 */  sh         $t3, 0xa4($s1)
/* 5F264 8005E664 A62A00A2 */  sh         $t2, 0xa2($s1)
.L8005E668:
/* 5F268 8005E668 240C0001 */  addiu      $t4, $zero, 1
/* 5F26C 8005E66C A62C00D0 */  sh         $t4, 0xd0($s1)
.L8005E670:
/* 5F270 8005E670 00A70019 */  multu      $a1, $a3
/* 5F274 8005E674 8E280104 */  lw         $t0, 0x104($s1)
/* 5F278 8005E678 8E2B0108 */  lw         $t3, 0x108($s1)
/* 5F27C 8005E67C 3C01800F */  lui        $at, 0x800f
/* 5F280 8005E680 C6260110 */  lwc1       $f6, 0x110($s1)
/* 5F284 8005E684 00000000 */  nop
/* 5F288 8005E688 46003221 */  cvt.d.s    $f8, $f6
/* 5F28C 8005E68C 44803000 */  mtc1       $zero, $f6
/* 5F290 8005E690 00006812 */  mflo       $t5
/* 5F294 8005E694 006D8021 */  addu       $s0, $v1, $t5
/* 5F298 8005E698 8E0E0088 */  lw         $t6, 0x88($s0)
/* 5F29C 8005E69C 00000000 */  nop
/* 5F2A0 8005E6A0 AE2E0088 */  sw         $t6, 0x88($s1)
/* 5F2A4 8005E6A4 8E0F008C */  lw         $t7, 0x8c($s0)
/* 5F2A8 8005E6A8 01C84821 */  addu       $t1, $t6, $t0
/* 5F2AC 8005E6AC AE2F008C */  sw         $t7, 0x8c($s1)
/* 5F2B0 8005E6B0 8E180090 */  lw         $t8, 0x90($s0)
/* 5F2B4 8005E6B4 8E2E010C */  lw         $t6, 0x10c($s1)
/* 5F2B8 8005E6B8 01EB6021 */  addu       $t4, $t7, $t3
/* 5F2BC 8005E6BC AE380090 */  sw         $t8, 0x90($s1)
/* 5F2C0 8005E6C0 030E7821 */  addu       $t7, $t8, $t6
/* 5F2C4 8005E6C4 AE290088 */  sw         $t1, 0x88($s1)
/* 5F2C8 8005E6C8 AE2C008C */  sw         $t4, 0x8c($s1)
/* 5F2CC 8005E6CC AE2F0090 */  sw         $t7, 0x90($s1)
/* 5F2D0 8005E6D0 C42ABFA4 */  lwc1       $f10, -0x405c($at)
/* 5F2D4 8005E6D4 C42BBFA0 */  lwc1       $f11, -0x4060($at)
/* 5F2D8 8005E6D8 3C013FF0 */  lui        $at, 0x3ff0
/* 5F2DC 8005E6DC 462A4400 */  add.d      $f16, $f8, $f10
/* 5F2E0 8005E6E0 44813800 */  mtc1       $at, $f7
/* 5F2E4 8005E6E4 462084A0 */  cvt.s.d    $f18, $f16
/* 5F2E8 8005E6E8 3C013F80 */  lui        $at, 0x3f80
/* 5F2EC 8005E6EC E6320110 */  swc1       $f18, 0x110($s1)
/* 5F2F0 8005E6F0 C6200110 */  lwc1       $f0, 0x110($s1)
/* 5F2F4 8005E6F4 00000000 */  nop
/* 5F2F8 8005E6F8 46000121 */  cvt.d.s    $f4, $f0
/* 5F2FC 8005E6FC 4624303E */  c.le.d     $f6, $f4
/* 5F300 8005E700 00000000 */  nop
/* 5F304 8005E704 45000007 */  bc1f       .L8005E724
/* 5F308 8005E708 00000000 */   nop
/* 5F30C 8005E70C 44814000 */  mtc1       $at, $f8
/* 5F310 8005E710 8E380080 */  lw         $t8, 0x80($s1)
/* 5F314 8005E714 E6280110 */  swc1       $f8, 0x110($s1)
/* 5F318 8005E718 37190200 */  ori        $t9, $t8, 0x200
/* 5F31C 8005E71C C6200110 */  lwc1       $f0, 0x110($s1)
/* 5F320 8005E720 AE390080 */  sw         $t9, 0x80($s1)
.L8005E724:
/* 5F324 8005E724 44050000 */  mfc1       $a1, $f0
/* 5F328 8005E728 0C017873 */  jal        func_8005E1CC
/* 5F32C 8005E72C 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 5F330 8005E730 8E020098 */  lw         $v0, 0x98($s0)
/* 5F334 8005E734 3C01FFEF */  lui        $at, 0xffef
/* 5F338 8005E738 00024340 */  sll        $t0, $v0, 0xd
/* 5F33C 8005E73C 05010032 */  bgez       $t0, .L8005E808
/* 5F340 8005E740 3421FFFF */   ori       $at, $at, 0xffff
/* 5F344 8005E744 3C010010 */  lui        $at, 0x10
/* 5F348 8005E748 00414825 */  or         $t1, $v0, $at
/* 5F34C 8005E74C AE090098 */  sw         $t1, 0x98($s0)
/* 5F350 8005E750 922A00D1 */  lbu        $t2, 0xd1($s1)
/* 5F354 8005E754 3C0B800D */  lui        $t3, %hi(D_800D5820)
/* 5F358 8005E758 29410002 */  slti       $at, $t2, 2
/* 5F35C 8005E75C 10200061 */  beqz       $at, .L8005E8E4
/* 5F360 8005E760 8FBF0024 */   lw        $ra, 0x24($sp)
/* 5F364 8005E764 956B5820 */  lhu        $t3, %lo(D_800D5820)($t3)
/* 5F368 8005E768 00000000 */  nop
/* 5F36C 8005E76C 1560005D */  bnez       $t3, .L8005E8E4
/* 5F370 8005E770 8FBF0024 */   lw        $ra, 0x24($sp)
/* 5F374 8005E774 8E2C0098 */  lw         $t4, 0x98($s1)
/* 5F378 8005E778 3C02800C */  lui        $v0, %hi(gButtonPress)
/* 5F37C 8005E77C 318D0001 */  andi       $t5, $t4, 1
/* 5F380 8005E780 11A00057 */  beqz       $t5, .L8005E8E0
/* 5F384 8005E784 3C0E800C */   lui       $t6, %hi(gButton_LTrig)
/* 5F388 8005E788 9442E4FC */  lhu        $v0, %lo(gButtonPress)($v0)
/* 5F38C 8005E78C 95CEE530 */  lhu        $t6, %lo(gButton_LTrig)($t6)
/* 5F390 8005E790 3C18800C */  lui        $t8, %hi(gButton_RTrig)
/* 5F394 8005E794 004E7824 */  and        $t7, $v0, $t6
/* 5F398 8005E798 15E00006 */  bnez       $t7, .L8005E7B4
/* 5F39C 8005E79C 2401FDFF */   addiu     $at, $zero, -0x201
/* 5F3A0 8005E7A0 9718E534 */  lhu        $t8, %lo(gButton_RTrig)($t8)
/* 5F3A4 8005E7A4 00000000 */  nop
/* 5F3A8 8005E7A8 0058C824 */  and        $t9, $v0, $t8
/* 5F3AC 8005E7AC 1320004D */  beqz       $t9, .L8005E8E4
/* 5F3B0 8005E7B0 8FBF0024 */   lw        $ra, 0x24($sp)
.L8005E7B4:
/* 5F3B4 8005E7B4 8E280080 */  lw         $t0, 0x80($s1)
/* 5F3B8 8005E7B8 240A0002 */  addiu      $t2, $zero, 2
/* 5F3BC 8005E7BC 01014824 */  and        $t1, $t0, $at
/* 5F3C0 8005E7C0 AE290080 */  sw         $t1, 0x80($s1)
/* 5F3C4 8005E7C4 A62A00D0 */  sh         $t2, 0xd0($s1)
/* 5F3C8 8005E7C8 0C000CD3 */  jal        func_8000334C
/* 5F3CC 8005E7CC 2404010D */   addiu     $a0, $zero, 0x10d
/* 5F3D0 8005E7D0 3C0B800C */  lui        $t3, %hi(D_800BE5D8)
/* 5F3D4 8005E7D4 856BE5D8 */  lh         $t3, %lo(D_800BE5D8)($t3)
/* 5F3D8 8005E7D8 3C018018 */  lui        $at, %hi(D_80178440)
/* 5F3DC 8005E7DC 3C0C800C */  lui        $t4, %hi(D_800BE5DC)
/* 5F3E0 8005E7E0 858CE5DC */  lh         $t4, %lo(D_800BE5DC)($t4)
/* 5F3E4 8005E7E4 A42B8440 */  sh         $t3, %lo(D_80178440)($at)
/* 5F3E8 8005E7E8 3C018018 */  lui        $at, %hi(D_80178442)
/* 5F3EC 8005E7EC A42C8442 */  sh         $t4, %lo(D_80178442)($at)
/* 5F3F0 8005E7F0 8E0D0098 */  lw         $t5, 0x98($s0)
/* 5F3F4 8005E7F4 3C01FFEF */  lui        $at, 0xffef
/* 5F3F8 8005E7F8 3421FFFF */  ori        $at, $at, 0xffff
/* 5F3FC 8005E7FC 01A17024 */  and        $t6, $t5, $at
/* 5F400 8005E800 10000037 */  b          .L8005E8E0
/* 5F404 8005E804 AE0E0098 */   sw        $t6, 0x98($s0)
.L8005E808:
/* 5F408 8005E808 00417824 */  and        $t7, $v0, $at
/* 5F40C 8005E80C AE0F0098 */  sw         $t7, 0x98($s0)
/* 5F410 8005E810 24180003 */  addiu      $t8, $zero, 3
/* 5F414 8005E814 10000032 */  b          .L8005E8E0
/* 5F418 8005E818 A63800D0 */   sh        $t8, 0xd0($s1)
.L8005E81C:
/* 5F41C 8005E81C 0326C823 */  subu       $t9, $t9, $a2
/* 5F420 8005E820 0019C880 */  sll        $t9, $t9, 2
/* 5F424 8005E824 0326C821 */  addu       $t9, $t9, $a2
/* 5F428 8005E828 0019C880 */  sll        $t9, $t9, 2
/* 5F42C 8005E82C 0326C823 */  subu       $t9, $t9, $a2
/* 5F430 8005E830 0019C8C0 */  sll        $t9, $t9, 3
/* 5F434 8005E834 00799021 */  addu       $s2, $v1, $t9
/* 5F438 8005E838 86440152 */  lh         $a0, 0x152($s2)
/* 5F43C 8005E83C 0C0177F2 */  jal        func_8005DFC8
/* 5F440 8005E840 A7A5002C */   sh        $a1, 0x2c($sp)
/* 5F444 8005E844 24100001 */  addiu      $s0, $zero, 1
/* 5F448 8005E848 2A010010 */  slti       $at, $s0, 0x10
/* 5F44C 8005E84C 1020000B */  beqz       $at, .L8005E87C
/* 5F450 8005E850 00104080 */   sll       $t0, $s0, 2
.L8005E854:
/* 5F454 8005E854 02484821 */  addu       $t1, $s2, $t0
/* 5F458 8005E858 85240152 */  lh         $a0, 0x152($t1)
/* 5F45C 8005E85C 0C0177D7 */  jal        func_8005DF5C
/* 5F460 8005E860 00000000 */   nop
/* 5F464 8005E864 26100001 */  addiu      $s0, $s0, 1
/* 5F468 8005E868 00105400 */  sll        $t2, $s0, 0x10
/* 5F46C 8005E86C 000A8403 */  sra        $s0, $t2, 0x10
/* 5F470 8005E870 2A010010 */  slti       $at, $s0, 0x10
/* 5F474 8005E874 1420FFF7 */  bnez       $at, .L8005E854
/* 5F478 8005E878 00104080 */   sll       $t0, $s0, 2
.L8005E87C:
/* 5F47C 8005E87C 97AC002C */  lhu        $t4, 0x2c($sp)
/* 5F480 8005E880 3C01800D */  lui        $at, %hi(D_800D5820)
/* 5F484 8005E884 240D0003 */  addiu      $t5, $zero, 3
/* 5F488 8005E888 A42C5820 */  sh         $t4, %lo(D_800D5820)($at)
/* 5F48C 8005E88C 10000014 */  b          .L8005E8E0
/* 5F490 8005E890 A62D00D0 */   sh        $t5, 0xd0($s1)
.L8005E894:
/* 5F494 8005E894 8E250110 */  lw         $a1, 0x110($s1)
/* 5F498 8005E898 0C017873 */  jal        func_8005E1CC
/* 5F49C 8005E89C 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 5F4A0 8005E8A0 C6200110 */  lwc1       $f0, 0x110($s1)
/* 5F4A4 8005E8A4 44805000 */  mtc1       $zero, $f10
/* 5F4A8 8005E8A8 3C01800F */  lui        $at, %hi(D_800EBFA8)
/* 5F4AC 8005E8AC 4600503C */  c.lt.s     $f10, $f0
/* 5F4B0 8005E8B0 240E0004 */  addiu      $t6, $zero, 4
/* 5F4B4 8005E8B4 45000008 */  bc1f       .L8005E8D8
/* 5F4B8 8005E8B8 00000000 */   nop
/* 5F4BC 8005E8BC C433BFA8 */  lwc1       $f19, %lo(D_800EBFA8)($at)
/* 5F4C0 8005E8C0 C432BFAC */  lwc1       $f18, -0x4054($at)
/* 5F4C4 8005E8C4 46000421 */  cvt.d.s    $f16, $f0
/* 5F4C8 8005E8C8 46328101 */  sub.d      $f4, $f16, $f18
/* 5F4CC 8005E8CC 462021A0 */  cvt.s.d    $f6, $f4
/* 5F4D0 8005E8D0 10000003 */  b          .L8005E8E0
/* 5F4D4 8005E8D4 E6260110 */   swc1      $f6, 0x110($s1)
.L8005E8D8:
/* 5F4D8 8005E8D8 AE200080 */  sw         $zero, 0x80($s1)
/* 5F4DC 8005E8DC A62E00D0 */  sh         $t6, 0xd0($s1)
.L8005E8E0:
/* 5F4E0 8005E8E0 8FBF0024 */  lw         $ra, 0x24($sp)
.L8005E8E4:
/* 5F4E4 8005E8E4 8FB00018 */  lw         $s0, 0x18($sp)
/* 5F4E8 8005E8E8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5F4EC 8005E8EC 8FB20020 */  lw         $s2, 0x20($sp)
/* 5F4F0 8005E8F0 03E00008 */  jr         $ra
/* 5F4F4 8005E8F4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8005E8F8
/* 5F4F8 8005E8F8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5F4FC 8005E8FC 000E7880 */  sll        $t7, $t6, 2
/* 5F500 8005E900 01EE7823 */  subu       $t7, $t7, $t6
/* 5F504 8005E904 000F7880 */  sll        $t7, $t7, 2
/* 5F508 8005E908 01EE7821 */  addu       $t7, $t7, $t6
/* 5F50C 8005E90C 000F7880 */  sll        $t7, $t7, 2
/* 5F510 8005E910 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5F514 8005E914 01EE7823 */  subu       $t7, $t7, $t6
/* 5F518 8005E918 3C18800F */  lui        $t8, %hi(gActors)
/* 5F51C 8005E91C AFB00018 */  sw         $s0, 0x18($sp)
/* 5F520 8005E920 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 5F524 8005E924 000F78C0 */  sll        $t7, $t7, 3
/* 5F528 8005E928 01F88021 */  addu       $s0, $t7, $t8
/* 5F52C 8005E92C 921900D1 */  lbu        $t9, 0xd1($s0)
/* 5F530 8005E930 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5F534 8005E934 2F210007 */  sltiu      $at, $t9, 7
/* 5F538 8005E938 102000B5 */  beqz       $at, .L8005EC10
/* 5F53C 8005E93C AFA40020 */   sw        $a0, 0x20($sp)
/* 5F540 8005E940 0019C880 */  sll        $t9, $t9, 2
/* 5F544 8005E944 3C01800F */  lui        $at, %hi(D_800EBFB0)
/* 5F548 8005E948 00390821 */  addu       $at, $at, $t9
/* 5F54C 8005E94C 8C39BFB0 */  lw         $t9, %lo(D_800EBFB0)($at)
/* 5F550 8005E950 00000000 */  nop
/* 5F554 8005E954 03200008 */  jr         $t9
/* 5F558 8005E958 00000000 */   nop
/* 5F55C 8005E95C 3C0141A0 */  lui        $at, 0x41a0
/* 5F560 8005E960 44812000 */  mtc1       $at, $f4
/* 5F564 8005E964 C60E0114 */  lwc1       $f14, 0x114($s0)
/* 5F568 8005E968 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 5F56C 8005E96C 46047183 */  div.s      $f6, $f14, $f4
/* 5F570 8005E970 44063000 */  mfc1       $a2, $f6
/* 5F574 8005E974 0C00A618 */  jal        func_80029860
/* 5F578 8005E978 00000000 */   nop
/* 5F57C 8005E97C C6080114 */  lwc1       $f8, 0x114($s0)
/* 5F580 8005E980 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 5F584 8005E984 46080032 */  c.eq.s     $f0, $f8
/* 5F588 8005E988 240B0001 */  addiu      $t3, $zero, 1
/* 5F58C 8005E98C 450000A1 */  bc1f       .L8005EC14
/* 5F590 8005E990 8FBF001C */   lw        $ra, 0x1c($sp)
/* 5F594 8005E994 96080084 */  lhu        $t0, 0x84($s0)
/* 5F598 8005E998 240102CE */  addiu      $at, $zero, 0x2ce
/* 5F59C 8005E99C 15010005 */  bne        $t0, $at, .L8005E9B4
/* 5F5A0 8005E9A0 00000000 */   nop
/* 5F5A4 8005E9A4 8E090080 */  lw         $t1, 0x80($s0)
/* 5F5A8 8005E9A8 3C015000 */  lui        $at, 0x5000
/* 5F5AC 8005E9AC 01215025 */  or         $t2, $t1, $at
/* 5F5B0 8005E9B0 AE0A0080 */  sw         $t2, 0x80($s0)
.L8005E9B4:
/* 5F5B4 8005E9B4 10000096 */  b          .L8005EC10
/* 5F5B8 8005E9B8 A60B00D0 */   sh        $t3, 0xd0($s0)
/* 5F5BC 8005E9BC 3C0141A0 */  lui        $at, 0x41a0
/* 5F5C0 8005E9C0 44815000 */  mtc1       $at, $f10
/* 5F5C4 8005E9C4 C60E0110 */  lwc1       $f14, 0x110($s0)
/* 5F5C8 8005E9C8 C60C00B4 */  lwc1       $f12, 0xb4($s0)
/* 5F5CC 8005E9CC 460A7403 */  div.s      $f16, $f14, $f10
/* 5F5D0 8005E9D0 44068000 */  mfc1       $a2, $f16
/* 5F5D4 8005E9D4 0C00A618 */  jal        func_80029860
/* 5F5D8 8005E9D8 00000000 */   nop
/* 5F5DC 8005E9DC C6120110 */  lwc1       $f18, 0x110($s0)
/* 5F5E0 8005E9E0 3C0141A0 */  lui        $at, 0x41a0
/* 5F5E4 8005E9E4 46120032 */  c.eq.s     $f0, $f18
/* 5F5E8 8005E9E8 44812000 */  mtc1       $at, $f4
/* 5F5EC 8005E9EC 45000003 */  bc1f       .L8005E9FC
/* 5F5F0 8005E9F0 E60000B4 */   swc1      $f0, 0xb4($s0)
/* 5F5F4 8005E9F4 240C0001 */  addiu      $t4, $zero, 1
/* 5F5F8 8005E9F8 A20C00D0 */  sb         $t4, 0xd0($s0)
.L8005E9FC:
/* 5F5FC 8005E9FC C60E0114 */  lwc1       $f14, 0x114($s0)
/* 5F600 8005EA00 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 5F604 8005EA04 46047183 */  div.s      $f6, $f14, $f4
/* 5F608 8005EA08 44063000 */  mfc1       $a2, $f6
/* 5F60C 8005EA0C 0C00A618 */  jal        func_80029860
/* 5F610 8005EA10 00000000 */   nop
/* 5F614 8005EA14 C6080114 */  lwc1       $f8, 0x114($s0)
/* 5F618 8005EA18 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 5F61C 8005EA1C 46080032 */  c.eq.s     $f0, $f8
/* 5F620 8005EA20 00000000 */  nop
/* 5F624 8005EA24 45000006 */  bc1f       .L8005EA40
/* 5F628 8005EA28 00000000 */   nop
/* 5F62C 8005EA2C 920D00D0 */  lbu        $t5, 0xd0($s0)
/* 5F630 8005EA30 24010001 */  addiu      $at, $zero, 1
/* 5F634 8005EA34 15A10002 */  bne        $t5, $at, .L8005EA40
/* 5F638 8005EA38 240E0002 */   addiu     $t6, $zero, 2
/* 5F63C 8005EA3C A20E00D0 */  sb         $t6, 0xd0($s0)
.L8005EA40:
/* 5F640 8005EA40 9202009C */  lbu        $v0, 0x9c($s0)
/* 5F644 8005EA44 00000000 */  nop
/* 5F648 8005EA48 28410009 */  slti       $at, $v0, 9
/* 5F64C 8005EA4C 14200003 */  bnez       $at, .L8005EA5C
/* 5F650 8005EA50 244FFFFA */   addiu     $t7, $v0, -6
/* 5F654 8005EA54 1000001D */  b          .L8005EACC
/* 5F658 8005EA58 A20F009C */   sb        $t7, 0x9c($s0)
.L8005EA5C:
/* 5F65C 8005EA5C 921800D0 */  lbu        $t8, 0xd0($s0)
/* 5F660 8005EA60 24020002 */  addiu      $v0, $zero, 2
/* 5F664 8005EA64 14580019 */  bne        $v0, $t8, .L8005EACC
/* 5F668 8005EA68 A200009C */   sb        $zero, 0x9c($s0)
/* 5F66C 8005EA6C 8E090080 */  lw         $t1, 0x80($s0)
/* 5F670 8005EA70 960E0084 */  lhu        $t6, 0x84($s0)
/* 5F674 8005EA74 3C013000 */  lui        $at, 0x3000
/* 5F678 8005EA78 96190094 */  lhu        $t9, 0x94($s0)
/* 5F67C 8005EA7C 01215025 */  or         $t2, $t1, $at
/* 5F680 8005EA80 000E78C0 */  sll        $t7, $t6, 3
/* 5F684 8005EA84 3C01801A */  lui        $at, 0x801a
/* 5F688 8005EA88 01EE7821 */  addu       $t7, $t7, $t6
/* 5F68C 8005EA8C 000F79C0 */  sll        $t7, $t7, 7
/* 5F690 8005EA90 34210BA8 */  ori        $at, $at, 0xba8
/* 5F694 8005EA94 37280010 */  ori        $t0, $t9, 0x10
/* 5F698 8005EA98 240B0030 */  addiu      $t3, $zero, 0x30
/* 5F69C 8005EA9C 240C0001 */  addiu      $t4, $zero, 1
/* 5F6A0 8005EAA0 240D0018 */  addiu      $t5, $zero, 0x18
/* 5F6A4 8005EAA4 01E1C021 */  addu       $t8, $t7, $at
/* 5F6A8 8005EAA8 24190004 */  addiu      $t9, $zero, 4
/* 5F6AC 8005EAAC A6080094 */  sh         $t0, 0x94($s0)
/* 5F6B0 8005EAB0 AE0A0080 */  sw         $t2, 0x80($s0)
/* 5F6B4 8005EAB4 A60B00AA */  sh         $t3, 0xaa($s0)
/* 5F6B8 8005EAB8 A60C00AC */  sh         $t4, 0xac($s0)
/* 5F6BC 8005EABC A60D00AE */  sh         $t5, 0xae($s0)
/* 5F6C0 8005EAC0 A60200B0 */  sh         $v0, 0xb0($s0)
/* 5F6C4 8005EAC4 AE18017C */  sw         $t8, 0x17c($s0)
/* 5F6C8 8005EAC8 A61900D0 */  sh         $t9, 0xd0($s0)
.L8005EACC:
/* 5F6CC 8005EACC 9202009C */  lbu        $v0, 0x9c($s0)
/* 5F6D0 8005EAD0 00000000 */  nop
/* 5F6D4 8005EAD4 A202009E */  sb         $v0, 0x9e($s0)
/* 5F6D8 8005EAD8 1000004D */  b          .L8005EC10
/* 5F6DC 8005EADC A202009D */   sb        $v0, 0x9d($s0)
/* 5F6E0 8005EAE0 96080084 */  lhu        $t0, 0x84($s0)
/* 5F6E4 8005EAE4 240102CE */  addiu      $at, $zero, 0x2ce
/* 5F6E8 8005EAE8 15010007 */  bne        $t0, $at, .L8005EB08
/* 5F6EC 8005EAEC 3C0141A0 */   lui       $at, 0x41a0
/* 5F6F0 8005EAF0 8E090080 */  lw         $t1, 0x80($s0)
/* 5F6F4 8005EAF4 3C01AFFF */  lui        $at, 0xafff
/* 5F6F8 8005EAF8 3421FFFF */  ori        $at, $at, 0xffff
/* 5F6FC 8005EAFC 01215024 */  and        $t2, $t1, $at
/* 5F700 8005EB00 AE0A0080 */  sw         $t2, 0x80($s0)
/* 5F704 8005EB04 3C0141A0 */  lui        $at, 0x41a0
.L8005EB08:
/* 5F708 8005EB08 44818000 */  mtc1       $at, $f16
/* 5F70C 8005EB0C C60A0114 */  lwc1       $f10, 0x114($s0)
/* 5F710 8005EB10 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 5F714 8005EB14 46105483 */  div.s      $f18, $f10, $f16
/* 5F718 8005EB18 44807000 */  mtc1       $zero, $f14
/* 5F71C 8005EB1C 44069000 */  mfc1       $a2, $f18
/* 5F720 8005EB20 0C00A618 */  jal        func_80029860
/* 5F724 8005EB24 00000000 */   nop
/* 5F728 8005EB28 44802000 */  mtc1       $zero, $f4
/* 5F72C 8005EB2C E60000B8 */  swc1       $f0, 0xb8($s0)
/* 5F730 8005EB30 46040032 */  c.eq.s     $f0, $f4
/* 5F734 8005EB34 00000000 */  nop
/* 5F738 8005EB38 45000036 */  bc1f       .L8005EC14
/* 5F73C 8005EB3C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 5F740 8005EB40 10000033 */  b          .L8005EC10
/* 5F744 8005EB44 AE000080 */   sw        $zero, 0x80($s0)
/* 5F748 8005EB48 8E0B0080 */  lw         $t3, 0x80($s0)
/* 5F74C 8005EB4C 3C01CFFF */  lui        $at, 0xcfff
/* 5F750 8005EB50 9202009C */  lbu        $v0, 0x9c($s0)
/* 5F754 8005EB54 3421FFFF */  ori        $at, $at, 0xffff
/* 5F758 8005EB58 01616024 */  and        $t4, $t3, $at
/* 5F75C 8005EB5C 28410078 */  slti       $at, $v0, 0x78
/* 5F760 8005EB60 10200004 */  beqz       $at, .L8005EB74
/* 5F764 8005EB64 AE0C0080 */   sw        $t4, 0x80($s0)
/* 5F768 8005EB68 244D0006 */  addiu      $t5, $v0, 6
/* 5F76C 8005EB6C 10000003 */  b          .L8005EB7C
/* 5F770 8005EB70 A20D009C */   sb        $t5, 0x9c($s0)
.L8005EB74:
/* 5F774 8005EB74 240E007F */  addiu      $t6, $zero, 0x7f
/* 5F778 8005EB78 A20E009C */  sb         $t6, 0x9c($s0)
.L8005EB7C:
/* 5F77C 8005EB7C 3C0141A0 */  lui        $at, 0x41a0
/* 5F780 8005EB80 44810000 */  mtc1       $at, $f0
/* 5F784 8005EB84 C6080110 */  lwc1       $f8, 0x110($s0)
/* 5F788 8005EB88 C6120114 */  lwc1       $f18, 0x114($s0)
/* 5F78C 8005EB8C 46004283 */  div.s      $f10, $f8, $f0
/* 5F790 8005EB90 9202009C */  lbu        $v0, 0x9c($s0)
/* 5F794 8005EB94 C60600B4 */  lwc1       $f6, 0xb4($s0)
/* 5F798 8005EB98 C60C00B8 */  lwc1       $f12, 0xb8($s0)
/* 5F79C 8005EB9C 44807000 */  mtc1       $zero, $f14
/* 5F7A0 8005EBA0 A202009E */  sb         $v0, 0x9e($s0)
/* 5F7A4 8005EBA4 A202009D */  sb         $v0, 0x9d($s0)
/* 5F7A8 8005EBA8 46009103 */  div.s      $f4, $f18, $f0
/* 5F7AC 8005EBAC 460A3400 */  add.s      $f16, $f6, $f10
/* 5F7B0 8005EBB0 E61000B4 */  swc1       $f16, 0xb4($s0)
/* 5F7B4 8005EBB4 44062000 */  mfc1       $a2, $f4
/* 5F7B8 8005EBB8 0C00A618 */  jal        func_80029860
/* 5F7BC 8005EBBC 00000000 */   nop
/* 5F7C0 8005EBC0 44804000 */  mtc1       $zero, $f8
/* 5F7C4 8005EBC4 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 5F7C8 8005EBC8 46080032 */  c.eq.s     $f0, $f8
/* 5F7CC 8005EBCC 00000000 */  nop
/* 5F7D0 8005EBD0 45000010 */  bc1f       .L8005EC14
/* 5F7D4 8005EBD4 8FBF001C */   lw        $ra, 0x1c($sp)
/* 5F7D8 8005EBD8 1000000D */  b          .L8005EC10
/* 5F7DC 8005EBDC AE000080 */   sw        $zero, 0x80($s0)
/* 5F7E0 8005EBE0 3C18800C */  lui        $t8, %hi(D_800BE4E0)
/* 5F7E4 8005EBE4 9718E4E0 */  lhu        $t8, %lo(D_800BE4E0)($t8)
/* 5F7E8 8005EBE8 3C0F8018 */  lui        $t7, %hi(D_801783F6)
/* 5F7EC 8005EBEC 85EF83F6 */  lh         $t7, %lo(D_801783F6)($t7)
/* 5F7F0 8005EBF0 3319000F */  andi       $t9, $t8, 0xf
/* 5F7F4 8005EBF4 07210003 */  bgez       $t9, .L8005EC04
/* 5F7F8 8005EBF8 00194083 */   sra       $t0, $t9, 2
/* 5F7FC 8005EBFC 27210003 */  addiu      $at, $t9, 3
/* 5F800 8005EC00 00014083 */  sra        $t0, $at, 2
.L8005EC04:
/* 5F804 8005EC04 01E84823 */  subu       $t1, $t7, $t0
/* 5F808 8005EC08 252AFFDA */  addiu      $t2, $t1, -0x26
/* 5F80C 8005EC0C A60A008C */  sh         $t2, 0x8c($s0)
.L8005EC10:
/* 5F810 8005EC10 8FBF001C */  lw         $ra, 0x1c($sp)
.L8005EC14:
/* 5F814 8005EC14 8FB00018 */  lw         $s0, 0x18($sp)
/* 5F818 8005EC18 03E00008 */  jr         $ra
/* 5F81C 8005EC1C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8005EC20
/* 5F820 8005EC20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5F824 8005EC24 AFB00018 */  sw         $s0, 0x18($sp)
/* 5F828 8005EC28 00048400 */  sll        $s0, $a0, 0x10
/* 5F82C 8005EC2C 00107403 */  sra        $t6, $s0, 0x10
/* 5F830 8005EC30 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5F834 8005EC34 AFA40030 */  sw         $a0, 0x30($sp)
/* 5F838 8005EC38 AFA50034 */  sw         $a1, 0x34($sp)
/* 5F83C 8005EC3C 01C08025 */  or         $s0, $t6, $zero
/* 5F840 8005EC40 AFA60038 */  sw         $a2, 0x38($sp)
/* 5F844 8005EC44 240500D0 */  addiu      $a1, $zero, 0xd0
/* 5F848 8005EC48 0C00A12E */  jal        func_800284B8
/* 5F84C 8005EC4C 24040030 */   addiu     $a0, $zero, 0x30
/* 5F850 8005EC50 14400003 */  bnez       $v0, .L8005EC60
/* 5F854 8005EC54 3044FFFF */   andi      $a0, $v0, 0xffff
/* 5F858 8005EC58 1000006E */  b          .L8005EE14
/* 5F85C 8005EC5C 00801025 */   or        $v0, $a0, $zero
.L8005EC60:
/* 5F860 8005EC60 00047880 */  sll        $t7, $a0, 2
/* 5F864 8005EC64 01E47823 */  subu       $t7, $t7, $a0
/* 5F868 8005EC68 000F7880 */  sll        $t7, $t7, 2
/* 5F86C 8005EC6C 01E47821 */  addu       $t7, $t7, $a0
/* 5F870 8005EC70 000F7880 */  sll        $t7, $t7, 2
/* 5F874 8005EC74 01E47823 */  subu       $t7, $t7, $a0
/* 5F878 8005EC78 3C18800F */  lui        $t8, %hi(gActors)
/* 5F87C 8005EC7C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 5F880 8005EC80 000F78C0 */  sll        $t7, $t7, 3
/* 5F884 8005EC84 01F81821 */  addu       $v1, $t7, $t8
/* 5F888 8005EC88 2419003A */  addiu      $t9, $zero, 0x3a
/* 5F88C 8005EC8C A47900D2 */  sh         $t9, 0xd2($v1)
/* 5F890 8005EC90 0C0078B4 */  jal        func_8001E2D0
/* 5F894 8005EC94 AFA30024 */   sw        $v1, 0x24($sp)
/* 5F898 8005EC98 8FA30024 */  lw         $v1, 0x24($sp)
/* 5F89C 8005EC9C 3C048018 */  lui        $a0, 0x8018
/* 5F8A0 8005ECA0 94680094 */  lhu        $t0, 0x94($v1)
/* 5F8A4 8005ECA4 8C6A0080 */  lw         $t2, 0x80($v1)
/* 5F8A8 8005ECA8 35090B41 */  ori        $t1, $t0, 0xb41
/* 5F8AC 8005ECAC 354B0009 */  ori        $t3, $t2, 9
/* 5F8B0 8005ECB0 A4690094 */  sh         $t1, 0x94($v1)
/* 5F8B4 8005ECB4 AC6B0080 */  sw         $t3, 0x80($v1)
/* 5F8B8 8005ECB8 848482E2 */  lh         $a0, -0x7d1e($a0)
/* 5F8BC 8005ECBC 3C018026 */  lui        $at, 0x8026
/* 5F8C0 8005ECC0 342151F8 */  ori        $at, $at, 0x51f8
/* 5F8C4 8005ECC4 000460C0 */  sll        $t4, $a0, 3
/* 5F8C8 8005ECC8 8FAE0038 */  lw         $t6, 0x38($sp)
/* 5F8CC 8005ECCC 01816821 */  addu       $t5, $t4, $at
/* 5F8D0 8005ECD0 24010002 */  addiu      $at, $zero, 2
/* 5F8D4 8005ECD4 15C1001B */  bne        $t6, $at, .L8005ED44
/* 5F8D8 8005ECD8 AC6D018C */   sw        $t5, 0x18c($v1)
/* 5F8DC 8005ECDC 06010012 */  bgez       $s0, .L8005ED28
/* 5F8E0 8005ECE0 3C0F800E */   lui       $t7, %hi(D_800E164C)
/* 5F8E4 8005ECE4 25EF164C */  addiu      $t7, $t7, %lo(D_800E164C)
/* 5F8E8 8005ECE8 24180001 */  addiu      $t8, $zero, 1
/* 5F8EC 8005ECEC AC6F00E8 */  sw         $t7, 0xe8($v1)
/* 5F8F0 8005ECF0 A47800E6 */  sh         $t8, 0xe6($v1)
/* 5F8F4 8005ECF4 02002025 */  or         $a0, $s0, $zero
/* 5F8F8 8005ECF8 0C0171B4 */  jal        func_8005C6D0
/* 5F8FC 8005ECFC AFA30024 */   sw        $v1, 0x24($sp)
/* 5F900 8005ED00 0002C880 */  sll        $t9, $v0, 2
/* 5F904 8005ED04 3C08800D */  lui        $t0, %hi(D_800D1954)
/* 5F908 8005ED08 01194021 */  addu       $t0, $t0, $t9
/* 5F90C 8005ED0C 8D081954 */  lw         $t0, %lo(D_800D1954)($t0)
/* 5F910 8005ED10 8FA30024 */  lw         $v1, 0x24($sp)
/* 5F914 8005ED14 3C048018 */  lui        $a0, %hi(D_801782E2)
/* 5F918 8005ED18 AC68018C */  sw         $t0, 0x18c($v1)
/* 5F91C 8005ED1C 848482E2 */  lh         $a0, %lo(D_801782E2)($a0)
/* 5F920 8005ED20 10000006 */  b          .L8005ED3C
/* 5F924 8005ED24 240B000A */   addiu     $t3, $zero, 0xa
.L8005ED28:
/* 5F928 8005ED28 94690094 */  lhu        $t1, 0x94($v1)
/* 5F92C 8005ED2C A4700084 */  sh         $s0, 0x84($v1)
/* 5F930 8005ED30 312AFDFF */  andi       $t2, $t1, 0xfdff
/* 5F934 8005ED34 A46A0094 */  sh         $t2, 0x94($v1)
/* 5F938 8005ED38 240B000A */  addiu      $t3, $zero, 0xa
.L8005ED3C:
/* 5F93C 8005ED3C 10000004 */  b          .L8005ED50
/* 5F940 8005ED40 A46B00D0 */   sh        $t3, 0xd0($v1)
.L8005ED44:
/* 5F944 8005ED44 00106040 */  sll        $t4, $s0, 1
/* 5F948 8005ED48 258D0372 */  addiu      $t5, $t4, 0x372
/* 5F94C 8005ED4C A46D0084 */  sh         $t5, 0x84($v1)
.L8005ED50:
/* 5F950 8005ED50 3C013F80 */  lui        $at, 0x3f80
/* 5F954 8005ED54 44810000 */  mtc1       $at, $f0
/* 5F958 8005ED58 87A20036 */  lh         $v0, 0x36($sp)
/* 5F95C 8005ED5C 240EFF85 */  addiu      $t6, $zero, -0x7b
/* 5F960 8005ED60 A46E0088 */  sh         $t6, 0x88($v1)
/* 5F964 8005ED64 3C0F8018 */  lui        $t7, %hi(D_801783F6)
/* 5F968 8005ED68 E46000B8 */  swc1       $f0, 0xb8($v1)
/* 5F96C 8005ED6C E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5F970 8005ED70 85EF83F6 */  lh         $t7, %lo(D_801783F6)($t7)
/* 5F974 8005ED74 84790088 */  lh         $t9, 0x88($v1)
/* 5F978 8005ED78 25F80013 */  addiu      $t8, $t7, 0x13
/* 5F97C 8005ED7C A478008C */  sh         $t8, 0x8c($v1)
/* 5F980 8005ED80 846B008C */  lh         $t3, 0x8c($v1)
/* 5F984 8005ED84 04410004 */  bgez       $v0, .L8005ED98
/* 5F988 8005ED88 3048001F */   andi      $t0, $v0, 0x1f
/* 5F98C 8005ED8C 11000002 */  beqz       $t0, .L8005ED98
/* 5F990 8005ED90 00000000 */   nop
/* 5F994 8005ED94 2508FFE0 */  addiu      $t0, $t0, -0x20
.L8005ED98:
/* 5F998 8005ED98 000848C0 */  sll        $t1, $t0, 3
/* 5F99C 8005ED9C 240F0400 */  addiu      $t7, $zero, 0x400
/* 5F9A0 8005EDA0 03295021 */  addu       $t2, $t9, $t1
/* 5F9A4 8005EDA4 A46A0088 */  sh         $t2, 0x88($v1)
/* 5F9A8 8005EDA8 04410003 */  bgez       $v0, .L8005EDB8
/* 5F9AC 8005EDAC 00026143 */   sra       $t4, $v0, 5
/* 5F9B0 8005EDB0 2441001F */  addiu      $at, $v0, 0x1f
/* 5F9B4 8005EDB4 00016143 */  sra        $t4, $at, 5
.L8005EDB8:
/* 5F9B8 8005EDB8 000C6880 */  sll        $t5, $t4, 2
/* 5F9BC 8005EDBC 01AC6821 */  addu       $t5, $t5, $t4
/* 5F9C0 8005EDC0 3C013F00 */  lui        $at, 0x3f00
/* 5F9C4 8005EDC4 44812000 */  mtc1       $at, $f4
/* 5F9C8 8005EDC8 000D6880 */  sll        $t5, $t5, 2
/* 5F9CC 8005EDCC 016D7023 */  subu       $t6, $t3, $t5
/* 5F9D0 8005EDD0 A46E008C */  sh         $t6, 0x8c($v1)
/* 5F9D4 8005EDD4 A46F0090 */  sh         $t7, 0x90($v1)
/* 5F9D8 8005EDD8 AC600188 */  sw         $zero, 0x188($v1)
/* 5F9DC 8005EDDC 3C01800F */  lui        $at, %hi(D_800EBFCC)
/* 5F9E0 8005EDE0 E4640110 */  swc1       $f4, 0x110($v1)
/* 5F9E4 8005EDE4 C426BFCC */  lwc1       $f6, %lo(D_800EBFCC)($at)
/* 5F9E8 8005EDE8 AC640154 */  sw         $a0, 0x154($v1)
/* 5F9EC 8005EDEC AC700158 */  sw         $s0, 0x158($v1)
/* 5F9F0 8005EDF0 3C188018 */  lui        $t8, %hi(D_80178418)
/* 5F9F4 8005EDF4 AC62015C */  sw         $v0, 0x15c($v1)
/* 5F9F8 8005EDF8 E4660114 */  swc1       $f6, 0x114($v1)
/* 5F9FC 8005EDFC 87188418 */  lh         $t8, %lo(D_80178418)($t8)
/* 5FA00 8005EE00 00000000 */  nop
/* 5FA04 8005EE04 44984000 */  mtc1       $t8, $f8
/* 5FA08 8005EE08 00000000 */  nop
/* 5FA0C 8005EE0C 468042A0 */  cvt.s.w    $f10, $f8
/* 5FA10 8005EE10 E46A014C */  swc1       $f10, 0x14c($v1)
.L8005EE14:
/* 5FA14 8005EE14 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5FA18 8005EE18 8FB00018 */  lw         $s0, 0x18($sp)
/* 5FA1C 8005EE1C 03E00008 */  jr         $ra
/* 5FA20 8005EE20 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8005EE24
/* 5FA24 8005EE24 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5FA28 8005EE28 000E7880 */  sll        $t7, $t6, 2
/* 5FA2C 8005EE2C 01EE7823 */  subu       $t7, $t7, $t6
/* 5FA30 8005EE30 000F7880 */  sll        $t7, $t7, 2
/* 5FA34 8005EE34 3C198018 */  lui        $t9, %hi(D_80178418)
/* 5FA38 8005EE38 87398418 */  lh         $t9, %lo(D_80178418)($t9)
/* 5FA3C 8005EE3C 01EE7821 */  addu       $t7, $t7, $t6
/* 5FA40 8005EE40 000F7880 */  sll        $t7, $t7, 2
/* 5FA44 8005EE44 44993000 */  mtc1       $t9, $f6
/* 5FA48 8005EE48 01EE7823 */  subu       $t7, $t7, $t6
/* 5FA4C 8005EE4C 3C18800F */  lui        $t8, %hi(gActors)
/* 5FA50 8005EE50 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 5FA54 8005EE54 000F78C0 */  sll        $t7, $t7, 3
/* 5FA58 8005EE58 46803220 */  cvt.s.w    $f8, $f6
/* 5FA5C 8005EE5C 01F81021 */  addu       $v0, $t7, $t8
/* 5FA60 8005EE60 C444014C */  lwc1       $f4, 0x14c($v0)
/* 5FA64 8005EE64 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5FA68 8005EE68 46082032 */  c.eq.s     $f4, $f8
/* 5FA6C 8005EE6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5FA70 8005EE70 45010003 */  bc1t       .L8005EE80
/* 5FA74 8005EE74 AFA40020 */   sw        $a0, 0x20($sp)
/* 5FA78 8005EE78 1000007F */  b          .L8005F078
/* 5FA7C 8005EE7C AC400080 */   sw        $zero, 0x80($v0)
.L8005EE80:
/* 5FA80 8005EE80 904300D1 */  lbu        $v1, 0xd1($v0)
/* 5FA84 8005EE84 24050001 */  addiu      $a1, $zero, 1
/* 5FA88 8005EE88 1060000B */  beqz       $v1, .L8005EEB8
/* 5FA8C 8005EE8C 3C088018 */   lui       $t0, 0x8018
/* 5FA90 8005EE90 10650011 */  beq        $v1, $a1, .L8005EED8
/* 5FA94 8005EE94 2401000A */   addiu     $at, $zero, 0xa
/* 5FA98 8005EE98 1061001F */  beq        $v1, $at, .L8005EF18
/* 5FA9C 8005EE9C 3C0D8018 */   lui       $t5, 0x8018
/* 5FAA0 8005EEA0 2401000B */  addiu      $at, $zero, 0xb
/* 5FAA4 8005EEA4 1061002A */  beq        $v1, $at, .L8005EF50
/* 5FAA8 8005EEA8 3C0F8018 */   lui       $t7, 0x8018
/* 5FAAC 8005EEAC 904400D0 */  lbu        $a0, 0xd0($v0)
/* 5FAB0 8005EEB0 1000002E */  b          .L8005EF6C
/* 5FAB4 8005EEB4 00000000 */   nop
.L8005EEB8:
/* 5FAB8 8005EEB8 850883F0 */  lh         $t0, -0x7c10($t0)
/* 5FABC 8005EEBC 24010002 */  addiu      $at, $zero, 2
/* 5FAC0 8005EEC0 15010002 */  bne        $t0, $at, .L8005EECC
/* 5FAC4 8005EEC4 24090001 */   addiu     $t1, $zero, 1
/* 5FAC8 8005EEC8 A04900D1 */  sb         $t1, 0xd1($v0)
.L8005EECC:
/* 5FACC 8005EECC 904400D0 */  lbu        $a0, 0xd0($v0)
/* 5FAD0 8005EED0 10000026 */  b          .L8005EF6C
/* 5FAD4 8005EED4 24050001 */   addiu     $a1, $zero, 1
.L8005EED8:
/* 5FAD8 8005EED8 3C038018 */  lui        $v1, %hi(D_801783F0)
/* 5FADC 8005EEDC 846383F0 */  lh         $v1, %lo(D_801783F0)($v1)
/* 5FAE0 8005EEE0 24010003 */  addiu      $at, $zero, 3
/* 5FAE4 8005EEE4 14610006 */  bne        $v1, $at, .L8005EF00
/* 5FAE8 8005EEE8 240A0001 */   addiu     $t2, $zero, 1
/* 5FAEC 8005EEEC 3C013F80 */  lui        $at, 0x3f80
/* 5FAF0 8005EEF0 44815000 */  mtc1       $at, $f10
/* 5FAF4 8005EEF4 AC400150 */  sw         $zero, 0x150($v0)
/* 5FAF8 8005EEF8 A04A00D0 */  sb         $t2, 0xd0($v0)
/* 5FAFC 8005EEFC E44A00B4 */  swc1       $f10, 0xb4($v0)
.L8005EF00:
/* 5FB00 8005EF00 14A30002 */  bne        $a1, $v1, .L8005EF0C
/* 5FB04 8005EF04 00000000 */   nop
/* 5FB08 8005EF08 AC400080 */  sw         $zero, 0x80($v0)
.L8005EF0C:
/* 5FB0C 8005EF0C 904400D0 */  lbu        $a0, 0xd0($v0)
/* 5FB10 8005EF10 10000016 */  b          .L8005EF6C
/* 5FB14 8005EF14 00000000 */   nop
.L8005EF18:
/* 5FB18 8005EF18 904B00D0 */  lbu        $t3, 0xd0($v0)
/* 5FB1C 8005EF1C 240C000A */  addiu      $t4, $zero, 0xa
/* 5FB20 8005EF20 15600002 */  bnez       $t3, .L8005EF2C
/* 5FB24 8005EF24 240E000B */   addiu     $t6, $zero, 0xb
/* 5FB28 8005EF28 A04C00D0 */  sb         $t4, 0xd0($v0)
.L8005EF2C:
/* 5FB2C 8005EF2C 85AD83F0 */  lh         $t5, -0x7c10($t5)
/* 5FB30 8005EF30 00000000 */  nop
/* 5FB34 8005EF34 29A10002 */  slti       $at, $t5, 2
/* 5FB38 8005EF38 14200002 */  bnez       $at, .L8005EF44
/* 5FB3C 8005EF3C 00000000 */   nop
/* 5FB40 8005EF40 A04E00D1 */  sb         $t6, 0xd1($v0)
.L8005EF44:
/* 5FB44 8005EF44 904400D0 */  lbu        $a0, 0xd0($v0)
/* 5FB48 8005EF48 10000008 */  b          .L8005EF6C
/* 5FB4C 8005EF4C 00000000 */   nop
.L8005EF50:
/* 5FB50 8005EF50 85EF83F0 */  lh         $t7, -0x7c10($t7)
/* 5FB54 8005EF54 24010002 */  addiu      $at, $zero, 2
/* 5FB58 8005EF58 11E10002 */  beq        $t7, $at, .L8005EF64
/* 5FB5C 8005EF5C 00000000 */   nop
/* 5FB60 8005EF60 AC400080 */  sw         $zero, 0x80($v0)
.L8005EF64:
/* 5FB64 8005EF64 904400D0 */  lbu        $a0, 0xd0($v0)
/* 5FB68 8005EF68 00000000 */  nop
.L8005EF6C:
/* 5FB6C 8005EF6C 10800006 */  beqz       $a0, .L8005EF88
/* 5FB70 8005EF70 00000000 */   nop
/* 5FB74 8005EF74 10850018 */  beq        $a0, $a1, .L8005EFD8
/* 5FB78 8005EF78 00000000 */   nop
/* 5FB7C 8005EF7C C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 5FB80 8005EF80 1000003D */  b          .L8005F078
/* 5FB84 8005EF84 E44000B8 */   swc1      $f0, 0xb8($v0)
.L8005EF88:
/* 5FB88 8005EF88 C45000B4 */  lwc1       $f16, 0xb4($v0)
/* 5FB8C 8005EF8C C4520110 */  lwc1       $f18, 0x110($v0)
/* 5FB90 8005EF90 3C013FF8 */  lui        $at, 0x3ff8
/* 5FB94 8005EF94 46128180 */  add.s      $f6, $f16, $f18
/* 5FB98 8005EF98 44814800 */  mtc1       $at, $f9
/* 5FB9C 8005EF9C E44600B4 */  swc1       $f6, 0xb4($v0)
/* 5FBA0 8005EFA0 C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 5FBA4 8005EFA4 44804000 */  mtc1       $zero, $f8
/* 5FBA8 8005EFA8 46000121 */  cvt.d.s    $f4, $f0
/* 5FBAC 8005EFAC 4624403E */  c.le.d     $f8, $f4
/* 5FBB0 8005EFB0 3C013FC0 */  lui        $at, 0x3fc0
/* 5FBB4 8005EFB4 4500002F */  bc1f       .L8005F074
/* 5FBB8 8005EFB8 2418000F */   addiu     $t8, $zero, 0xf
/* 5FBBC 8005EFBC 44815000 */  mtc1       $at, $f10
/* 5FBC0 8005EFC0 24190001 */  addiu      $t9, $zero, 1
/* 5FBC4 8005EFC4 E44A00B4 */  swc1       $f10, 0xb4($v0)
/* 5FBC8 8005EFC8 C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 5FBCC 8005EFCC AC580150 */  sw         $t8, 0x150($v0)
/* 5FBD0 8005EFD0 10000028 */  b          .L8005F074
/* 5FBD4 8005EFD4 A05900D0 */   sb        $t9, 0xd0($v0)
.L8005EFD8:
/* 5FBD8 8005EFD8 8C430150 */  lw         $v1, 0x150($v0)
/* 5FBDC 8005EFDC 00000000 */  nop
/* 5FBE0 8005EFE0 10600004 */  beqz       $v1, .L8005EFF4
/* 5FBE4 8005EFE4 2468FFFF */   addiu     $t0, $v1, -1
/* 5FBE8 8005EFE8 C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 5FBEC 8005EFEC 10000021 */  b          .L8005F074
/* 5FBF0 8005EFF0 AC480150 */   sw        $t0, 0x150($v0)
.L8005EFF4:
/* 5FBF4 8005EFF4 C45000B4 */  lwc1       $f16, 0xb4($v0)
/* 5FBF8 8005EFF8 C4520114 */  lwc1       $f18, 0x114($v0)
/* 5FBFC 8005EFFC 3C013FF0 */  lui        $at, 0x3ff0
/* 5FC00 8005F000 46128180 */  add.s      $f6, $f16, $f18
/* 5FC04 8005F004 44812800 */  mtc1       $at, $f5
/* 5FC08 8005F008 E44600B4 */  swc1       $f6, 0xb4($v0)
/* 5FC0C 8005F00C C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 5FC10 8005F010 44802000 */  mtc1       $zero, $f4
/* 5FC14 8005F014 46000221 */  cvt.d.s    $f8, $f0
/* 5FC18 8005F018 4624403E */  c.le.d     $f8, $f4
/* 5FC1C 8005F01C 3C038018 */  lui        $v1, %hi(D_801782E2)
/* 5FC20 8005F020 45000014 */  bc1f       .L8005F074
/* 5FC24 8005F024 246382E2 */   addiu     $v1, $v1, %lo(D_801782E2)
/* 5FC28 8005F028 3C013F80 */  lui        $at, 0x3f80
/* 5FC2C 8005F02C 44815000 */  mtc1       $at, $f10
/* 5FC30 8005F030 84690000 */  lh         $t1, ($v1)
/* 5FC34 8005F034 8C4A0154 */  lw         $t2, 0x154($v0)
/* 5FC38 8005F038 8444015A */  lh         $a0, 0x15a($v0)
/* 5FC3C 8005F03C 8445015E */  lh         $a1, 0x15e($v0)
/* 5FC40 8005F040 00003025 */  or         $a2, $zero, $zero
/* 5FC44 8005F044 AFA20018 */  sw         $v0, 0x18($sp)
/* 5FC48 8005F048 E44A00B4 */  swc1       $f10, 0xb4($v0)
/* 5FC4C 8005F04C AC490150 */  sw         $t1, 0x150($v0)
/* 5FC50 8005F050 0C01782C */  jal        func_8005E0B0
/* 5FC54 8005F054 A46A0000 */   sh        $t2, ($v1)
/* 5FC58 8005F058 8FA20018 */  lw         $v0, 0x18($sp)
/* 5FC5C 8005F05C 3C018018 */  lui        $at, %hi(D_801782E2)
/* 5FC60 8005F060 8C4B0150 */  lw         $t3, 0x150($v0)
/* 5FC64 8005F064 00000000 */  nop
/* 5FC68 8005F068 A42B82E2 */  sh         $t3, %lo(D_801782E2)($at)
/* 5FC6C 8005F06C C44000B4 */  lwc1       $f0, 0xb4($v0)
/* 5FC70 8005F070 AC400080 */  sw         $zero, 0x80($v0)
.L8005F074:
/* 5FC74 8005F074 E44000B8 */  swc1       $f0, 0xb8($v0)
.L8005F078:
/* 5FC78 8005F078 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5FC7C 8005F07C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5FC80 8005F080 03E00008 */  jr         $ra
/* 5FC84 8005F084 00000000 */   nop

glabel func_8005F088
/* 5FC88 8005F088 3C068018 */  lui        $a2, %hi(D_8017843A)
/* 5FC8C 8005F08C 24C6843A */  addiu      $a2, $a2, %lo(D_8017843A)
/* 5FC90 8005F090 94C20000 */  lhu        $v0, ($a2)
/* 5FC94 8005F094 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5FC98 8005F098 14400044 */  bnez       $v0, .L8005F1AC
/* 5FC9C 8005F09C AFBF0014 */   sw        $ra, 0x14($sp)
/* 5FCA0 8005F0A0 3C0E8018 */  lui        $t6, %hi(D_801783F0)
/* 5FCA4 8005F0A4 85CE83F0 */  lh         $t6, %lo(D_801783F0)($t6)
/* 5FCA8 8005F0A8 24010003 */  addiu      $at, $zero, 3
/* 5FCAC 8005F0AC 11C1003D */  beq        $t6, $at, .L8005F1A4
/* 5FCB0 8005F0B0 3C078018 */   lui       $a3, %hi(D_80178418)
/* 5FCB4 8005F0B4 24E78418 */  addiu      $a3, $a3, %lo(D_80178418)
/* 5FCB8 8005F0B8 84EF0000 */  lh         $t7, ($a3)
/* 5FCBC 8005F0BC 240400C0 */  addiu      $a0, $zero, 0xc0
/* 5FCC0 8005F0C0 11E00038 */  beqz       $t7, .L8005F1A4
/* 5FCC4 8005F0C4 00000000 */   nop
/* 5FCC8 8005F0C8 0C00A12E */  jal        func_800284B8
/* 5FCCC 8005F0CC 240500C7 */   addiu     $a1, $zero, 0xc7
/* 5FCD0 8005F0D0 10400034 */  beqz       $v0, .L8005F1A4
/* 5FCD4 8005F0D4 3044FFFF */   andi      $a0, $v0, 0xffff
/* 5FCD8 8005F0D8 0004C080 */  sll        $t8, $a0, 2
/* 5FCDC 8005F0DC 0304C023 */  subu       $t8, $t8, $a0
/* 5FCE0 8005F0E0 0018C080 */  sll        $t8, $t8, 2
/* 5FCE4 8005F0E4 0304C021 */  addu       $t8, $t8, $a0
/* 5FCE8 8005F0E8 0018C080 */  sll        $t8, $t8, 2
/* 5FCEC 8005F0EC 0304C023 */  subu       $t8, $t8, $a0
/* 5FCF0 8005F0F0 3C19800F */  lui        $t9, %hi(gActors)
/* 5FCF4 8005F0F4 2739F510 */  addiu      $t9, $t9, %lo(gActors)
/* 5FCF8 8005F0F8 0018C0C0 */  sll        $t8, $t8, 3
/* 5FCFC 8005F0FC 03191821 */  addu       $v1, $t8, $t9
/* 5FD00 8005F100 24080039 */  addiu      $t0, $zero, 0x39
/* 5FD04 8005F104 A46800D2 */  sh         $t0, 0xd2($v1)
/* 5FD08 8005F108 AFA3001C */  sw         $v1, 0x1c($sp)
/* 5FD0C 8005F10C 0C0078B4 */  jal        func_8001E2D0
/* 5FD10 8005F110 A7A40026 */   sh        $a0, 0x26($sp)
/* 5FD14 8005F114 8FA3001C */  lw         $v1, 0x1c($sp)
/* 5FD18 8005F118 3C014184 */  lui        $at, 0x4184
/* 5FD1C 8005F11C 44810000 */  mtc1       $at, $f0
/* 5FD20 8005F120 94690094 */  lhu        $t1, 0x94($v1)
/* 5FD24 8005F124 8C6D0080 */  lw         $t5, 0x80($v1)
/* 5FD28 8005F128 3C014080 */  lui        $at, 0x4080
/* 5FD2C 8005F12C 44802000 */  mtc1       $zero, $f4
/* 5FD30 8005F130 44813000 */  mtc1       $at, $f6
/* 5FD34 8005F134 240B007F */  addiu      $t3, $zero, 0x7f
/* 5FD38 8005F138 240C007F */  addiu      $t4, $zero, 0x7f
/* 5FD3C 8005F13C 240F02D0 */  addiu      $t7, $zero, 0x2d0
/* 5FD40 8005F140 241800A0 */  addiu      $t8, $zero, 0xa0
/* 5FD44 8005F144 2419FFFD */  addiu      $t9, $zero, -3
/* 5FD48 8005F148 352A0951 */  ori        $t2, $t1, 0x951
/* 5FD4C 8005F14C 35AE0008 */  ori        $t6, $t5, 8
/* 5FD50 8005F150 3C088018 */  lui        $t0, 0x8018
/* 5FD54 8005F154 A46A0094 */  sh         $t2, 0x94($v1)
/* 5FD58 8005F158 A06B009C */  sb         $t3, 0x9c($v1)
/* 5FD5C 8005F15C A06C009D */  sb         $t4, 0x9d($v1)
/* 5FD60 8005F160 AC6E0080 */  sw         $t6, 0x80($v1)
/* 5FD64 8005F164 A46F0084 */  sh         $t7, 0x84($v1)
/* 5FD68 8005F168 A078009F */  sb         $t8, 0x9f($v1)
/* 5FD6C 8005F16C A4790088 */  sh         $t9, 0x88($v1)
/* 5FD70 8005F170 E46000B4 */  swc1       $f0, 0xb4($v1)
/* 5FD74 8005F174 E4600110 */  swc1       $f0, 0x110($v1)
/* 5FD78 8005F178 E46400B8 */  swc1       $f4, 0xb8($v1)
/* 5FD7C 8005F17C E4660114 */  swc1       $f6, 0x114($v1)
/* 5FD80 8005F180 850883F6 */  lh         $t0, -0x7c0a($t0)
/* 5FD84 8005F184 97A40026 */  lhu        $a0, 0x26($sp)
/* 5FD88 8005F188 240903FF */  addiu      $t1, $zero, 0x3ff
/* 5FD8C 8005F18C 3C018018 */  lui        $at, %hi(D_8017843A)
/* 5FD90 8005F190 A4690090 */  sh         $t1, 0x90($v1)
/* 5FD94 8005F194 AC600188 */  sw         $zero, 0x188($v1)
/* 5FD98 8005F198 A46000D0 */  sh         $zero, 0xd0($v1)
/* 5FD9C 8005F19C A468008C */  sh         $t0, 0x8c($v1)
/* 5FDA0 8005F1A0 A424843A */  sh         $a0, %lo(D_8017843A)($at)
.L8005F1A4:
/* 5FDA4 8005F1A4 1000001D */  b          .L8005F21C
/* 5FDA8 8005F1A8 00000000 */   nop
.L8005F1AC:
/* 5FDAC 8005F1AC 3044FFFF */  andi       $a0, $v0, 0xffff
/* 5FDB0 8005F1B0 00045080 */  sll        $t2, $a0, 2
/* 5FDB4 8005F1B4 01445023 */  subu       $t2, $t2, $a0
/* 5FDB8 8005F1B8 000A5080 */  sll        $t2, $t2, 2
/* 5FDBC 8005F1BC 01445021 */  addu       $t2, $t2, $a0
/* 5FDC0 8005F1C0 000A5080 */  sll        $t2, $t2, 2
/* 5FDC4 8005F1C4 01445023 */  subu       $t2, $t2, $a0
/* 5FDC8 8005F1C8 3C0B800F */  lui        $t3, %hi(gActors)
/* 5FDCC 8005F1CC 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 5FDD0 8005F1D0 000A50C0 */  sll        $t2, $t2, 3
/* 5FDD4 8005F1D4 014B1821 */  addu       $v1, $t2, $t3
/* 5FDD8 8005F1D8 8C6C0080 */  lw         $t4, 0x80($v1)
/* 5FDDC 8005F1DC 00000000 */  nop
/* 5FDE0 8005F1E0 15800003 */  bnez       $t4, .L8005F1F0
/* 5FDE4 8005F1E4 00000000 */   nop
/* 5FDE8 8005F1E8 1000000C */  b          .L8005F21C
/* 5FDEC 8005F1EC A4C00000 */   sh        $zero, ($a2)
.L8005F1F0:
/* 5FDF0 8005F1F0 3C0D8018 */  lui        $t5, %hi(D_80178418)
/* 5FDF4 8005F1F4 85AD8418 */  lh         $t5, %lo(D_80178418)($t5)
/* 5FDF8 8005F1F8 00000000 */  nop
/* 5FDFC 8005F1FC 15A00007 */  bnez       $t5, .L8005F21C
/* 5FE00 8005F200 00000000 */   nop
/* 5FE04 8005F204 906E00D1 */  lbu        $t6, 0xd1($v1)
/* 5FE08 8005F208 240F0002 */  addiu      $t7, $zero, 2
/* 5FE0C 8005F20C 29C10002 */  slti       $at, $t6, 2
/* 5FE10 8005F210 10200002 */  beqz       $at, .L8005F21C
/* 5FE14 8005F214 00000000 */   nop
/* 5FE18 8005F218 A46F00D0 */  sh         $t7, 0xd0($v1)
.L8005F21C:
/* 5FE1C 8005F21C 3C068018 */  lui        $a2, %hi(D_80178438)
/* 5FE20 8005F220 24C68438 */  addiu      $a2, $a2, %lo(D_80178438)
/* 5FE24 8005F224 94C20000 */  lhu        $v0, ($a2)
/* 5FE28 8005F228 3C078018 */  lui        $a3, %hi(D_80178418)
/* 5FE2C 8005F22C 1440003E */  bnez       $v0, .L8005F328
/* 5FE30 8005F230 24E78418 */   addiu     $a3, $a3, %lo(D_80178418)
/* 5FE34 8005F234 3C188018 */  lui        $t8, %hi(D_801783F0)
/* 5FE38 8005F238 871883F0 */  lh         $t8, %lo(D_801783F0)($t8)
/* 5FE3C 8005F23C 24010003 */  addiu      $at, $zero, 3
/* 5FE40 8005F240 13010036 */  beq        $t8, $at, .L8005F31C
/* 5FE44 8005F244 00000000 */   nop
/* 5FE48 8005F248 84F90000 */  lh         $t9, ($a3)
/* 5FE4C 8005F24C 240400C0 */  addiu      $a0, $zero, 0xc0
/* 5FE50 8005F250 13200032 */  beqz       $t9, .L8005F31C
/* 5FE54 8005F254 00000000 */   nop
/* 5FE58 8005F258 0C00A12E */  jal        func_800284B8
/* 5FE5C 8005F25C 240500C7 */   addiu     $a1, $zero, 0xc7
/* 5FE60 8005F260 1040002E */  beqz       $v0, .L8005F31C
/* 5FE64 8005F264 3044FFFF */   andi      $a0, $v0, 0xffff
/* 5FE68 8005F268 00044080 */  sll        $t0, $a0, 2
/* 5FE6C 8005F26C 01044023 */  subu       $t0, $t0, $a0
/* 5FE70 8005F270 00084080 */  sll        $t0, $t0, 2
/* 5FE74 8005F274 01044021 */  addu       $t0, $t0, $a0
/* 5FE78 8005F278 00084080 */  sll        $t0, $t0, 2
/* 5FE7C 8005F27C 01044023 */  subu       $t0, $t0, $a0
/* 5FE80 8005F280 3C09800F */  lui        $t1, %hi(gActors)
/* 5FE84 8005F284 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 5FE88 8005F288 000840C0 */  sll        $t0, $t0, 3
/* 5FE8C 8005F28C 01091821 */  addu       $v1, $t0, $t1
/* 5FE90 8005F290 240A0039 */  addiu      $t2, $zero, 0x39
/* 5FE94 8005F294 A46A00D2 */  sh         $t2, 0xd2($v1)
/* 5FE98 8005F298 AFA3001C */  sw         $v1, 0x1c($sp)
/* 5FE9C 8005F29C 0C0078B4 */  jal        func_8001E2D0
/* 5FEA0 8005F2A0 A7A40026 */   sh        $a0, 0x26($sp)
/* 5FEA4 8005F2A4 8FA3001C */  lw         $v1, 0x1c($sp)
/* 5FEA8 8005F2A8 3C013F80 */  lui        $at, 0x3f80
/* 5FEAC 8005F2AC 946B0094 */  lhu        $t3, 0x94($v1)
/* 5FEB0 8005F2B0 8C6D0080 */  lw         $t5, 0x80($v1)
/* 5FEB4 8005F2B4 44814000 */  mtc1       $at, $f8
/* 5FEB8 8005F2B8 44805000 */  mtc1       $zero, $f10
/* 5FEBC 8005F2BC 44818000 */  mtc1       $at, $f16
/* 5FEC0 8005F2C0 44819000 */  mtc1       $at, $f18
/* 5FEC4 8005F2C4 240F02CE */  addiu      $t7, $zero, 0x2ce
/* 5FEC8 8005F2C8 2418FFFD */  addiu      $t8, $zero, -3
/* 5FECC 8005F2CC 356C0941 */  ori        $t4, $t3, 0x941
/* 5FED0 8005F2D0 35AE0008 */  ori        $t6, $t5, 8
/* 5FED4 8005F2D4 3C198018 */  lui        $t9, 0x8018
/* 5FED8 8005F2D8 A46C0094 */  sh         $t4, 0x94($v1)
/* 5FEDC 8005F2DC AC6E0080 */  sw         $t6, 0x80($v1)
/* 5FEE0 8005F2E0 A46F0084 */  sh         $t7, 0x84($v1)
/* 5FEE4 8005F2E4 A4780088 */  sh         $t8, 0x88($v1)
/* 5FEE8 8005F2E8 E46800B4 */  swc1       $f8, 0xb4($v1)
/* 5FEEC 8005F2EC E46A00B8 */  swc1       $f10, 0xb8($v1)
/* 5FEF0 8005F2F0 E4700110 */  swc1       $f16, 0x110($v1)
/* 5FEF4 8005F2F4 E4720114 */  swc1       $f18, 0x114($v1)
/* 5FEF8 8005F2F8 873983F6 */  lh         $t9, -0x7c0a($t9)
/* 5FEFC 8005F2FC 97A40026 */  lhu        $a0, 0x26($sp)
/* 5FF00 8005F300 24080400 */  addiu      $t0, $zero, 0x400
/* 5FF04 8005F304 3C018018 */  lui        $at, %hi(D_80178438)
/* 5FF08 8005F308 A4680090 */  sh         $t0, 0x90($v1)
/* 5FF0C 8005F30C AC600188 */  sw         $zero, 0x188($v1)
/* 5FF10 8005F310 A46000D0 */  sh         $zero, 0xd0($v1)
/* 5FF14 8005F314 A479008C */  sh         $t9, 0x8c($v1)
/* 5FF18 8005F318 A4248438 */  sh         $a0, %lo(D_80178438)($at)
.L8005F31C:
/* 5FF1C 8005F31C 3C078018 */  lui        $a3, %hi(D_80178418)
/* 5FF20 8005F320 1000001C */  b          .L8005F394
/* 5FF24 8005F324 24E78418 */   addiu     $a3, $a3, %lo(D_80178418)
.L8005F328:
/* 5FF28 8005F328 3044FFFF */  andi       $a0, $v0, 0xffff
/* 5FF2C 8005F32C 00044880 */  sll        $t1, $a0, 2
/* 5FF30 8005F330 01244823 */  subu       $t1, $t1, $a0
/* 5FF34 8005F334 00094880 */  sll        $t1, $t1, 2
/* 5FF38 8005F338 01244821 */  addu       $t1, $t1, $a0
/* 5FF3C 8005F33C 00094880 */  sll        $t1, $t1, 2
/* 5FF40 8005F340 01244823 */  subu       $t1, $t1, $a0
/* 5FF44 8005F344 3C0A800F */  lui        $t2, %hi(gActors)
/* 5FF48 8005F348 254AF510 */  addiu      $t2, $t2, %lo(gActors)
/* 5FF4C 8005F34C 000948C0 */  sll        $t1, $t1, 3
/* 5FF50 8005F350 012A1821 */  addu       $v1, $t1, $t2
/* 5FF54 8005F354 8C6B0080 */  lw         $t3, 0x80($v1)
/* 5FF58 8005F358 00000000 */  nop
/* 5FF5C 8005F35C 15600003 */  bnez       $t3, .L8005F36C
/* 5FF60 8005F360 00000000 */   nop
/* 5FF64 8005F364 1000000B */  b          .L8005F394
/* 5FF68 8005F368 A4C00000 */   sh        $zero, ($a2)
.L8005F36C:
/* 5FF6C 8005F36C 84EC0000 */  lh         $t4, ($a3)
/* 5FF70 8005F370 00000000 */  nop
/* 5FF74 8005F374 15800007 */  bnez       $t4, .L8005F394
/* 5FF78 8005F378 00000000 */   nop
/* 5FF7C 8005F37C 906D00D1 */  lbu        $t5, 0xd1($v1)
/* 5FF80 8005F380 240E0002 */  addiu      $t6, $zero, 2
/* 5FF84 8005F384 29A10002 */  slti       $at, $t5, 2
/* 5FF88 8005F388 10200002 */  beqz       $at, .L8005F394
/* 5FF8C 8005F38C 00000000 */   nop
/* 5FF90 8005F390 A46E00D0 */  sh         $t6, 0xd0($v1)
.L8005F394:
/* 5FF94 8005F394 3C068018 */  lui        $a2, %hi(D_8017843C)
/* 5FF98 8005F398 24C6843C */  addiu      $a2, $a2, %lo(D_8017843C)
/* 5FF9C 8005F39C 94C20000 */  lhu        $v0, ($a2)
/* 5FFA0 8005F3A0 00000000 */  nop
/* 5FFA4 8005F3A4 1440004D */  bnez       $v0, .L8005F4DC
/* 5FFA8 8005F3A8 3C0F8018 */   lui       $t7, %hi(D_801783F0)
/* 5FFAC 8005F3AC 85EF83F0 */  lh         $t7, %lo(D_801783F0)($t7)
/* 5FFB0 8005F3B0 24010003 */  addiu      $at, $zero, 3
/* 5FFB4 8005F3B4 11E1006F */  beq        $t7, $at, .L8005F574
/* 5FFB8 8005F3B8 00000000 */   nop
/* 5FFBC 8005F3BC 84F80000 */  lh         $t8, ($a3)
/* 5FFC0 8005F3C0 3C198018 */  lui        $t9, %hi(D_801782DE)
/* 5FFC4 8005F3C4 1300006B */  beqz       $t8, .L8005F574
/* 5FFC8 8005F3C8 00000000 */   nop
/* 5FFCC 8005F3CC 873982DE */  lh         $t9, %lo(D_801782DE)($t9)
/* 5FFD0 8005F3D0 240400C0 */  addiu      $a0, $zero, 0xc0
/* 5FFD4 8005F3D4 13200067 */  beqz       $t9, .L8005F574
/* 5FFD8 8005F3D8 00000000 */   nop
/* 5FFDC 8005F3DC 0C00A12E */  jal        func_800284B8
/* 5FFE0 8005F3E0 240500C7 */   addiu     $a1, $zero, 0xc7
/* 5FFE4 8005F3E4 10400063 */  beqz       $v0, .L8005F574
/* 5FFE8 8005F3E8 3044FFFF */   andi      $a0, $v0, 0xffff
/* 5FFEC 8005F3EC 00044080 */  sll        $t0, $a0, 2
/* 5FFF0 8005F3F0 01044023 */  subu       $t0, $t0, $a0
/* 5FFF4 8005F3F4 00084080 */  sll        $t0, $t0, 2
/* 5FFF8 8005F3F8 01044021 */  addu       $t0, $t0, $a0
/* 5FFFC 8005F3FC 00084080 */  sll        $t0, $t0, 2
/* 60000 8005F400 01044023 */  subu       $t0, $t0, $a0
/* 60004 8005F404 3C09800F */  lui        $t1, %hi(gActors)
/* 60008 8005F408 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 6000C 8005F40C 000840C0 */  sll        $t0, $t0, 3
/* 60010 8005F410 01091821 */  addu       $v1, $t0, $t1
/* 60014 8005F414 240A0039 */  addiu      $t2, $zero, 0x39
/* 60018 8005F418 A46A00D2 */  sh         $t2, 0xd2($v1)
/* 6001C 8005F41C AFA3001C */  sw         $v1, 0x1c($sp)
/* 60020 8005F420 0C0078B4 */  jal        func_8001E2D0
/* 60024 8005F424 A7A40026 */   sh        $a0, 0x26($sp)
/* 60028 8005F428 8FA3001C */  lw         $v1, 0x1c($sp)
/* 6002C 8005F42C 3C0D800D */  lui        $t5, %hi(D_800D5820)
/* 60030 8005F430 946B0094 */  lhu        $t3, 0x94($v1)
/* 60034 8005F434 97A40026 */  lhu        $a0, 0x26($sp)
/* 60038 8005F438 356C0941 */  ori        $t4, $t3, 0x941
/* 6003C 8005F43C A46C0094 */  sh         $t4, 0x94($v1)
/* 60040 8005F440 95AD5820 */  lhu        $t5, %lo(D_800D5820)($t5)
/* 60044 8005F444 2402007F */  addiu      $v0, $zero, 0x7f
/* 60048 8005F448 11A00004 */  beqz       $t5, .L8005F45C
/* 6004C 8005F44C 3C013F80 */   lui       $at, 0x3f80
/* 60050 8005F450 240E000A */  addiu      $t6, $zero, 0xa
/* 60054 8005F454 10000005 */  b          .L8005F46C
/* 60058 8005F458 AC6E0080 */   sw        $t6, 0x80($v1)
.L8005F45C:
/* 6005C 8005F45C 8C6F0080 */  lw         $t7, 0x80($v1)
/* 60060 8005F460 00000000 */  nop
/* 60064 8005F464 35F80008 */  ori        $t8, $t7, 8
/* 60068 8005F468 AC780080 */  sw         $t8, 0x80($v1)
.L8005F46C:
/* 6006C 8005F46C A062009C */  sb         $v0, 0x9c($v1)
/* 60070 8005F470 A062009D */  sb         $v0, 0x9d($v1)
/* 60074 8005F474 A062009E */  sb         $v0, 0x9e($v1)
/* 60078 8005F478 3C198018 */  lui        $t9, %hi(D_801782DE)
/* 6007C 8005F47C 873982DE */  lh         $t9, %lo(D_801782DE)($t9)
/* 60080 8005F480 44810000 */  mtc1       $at, $f0
/* 60084 8005F484 3C013FC0 */  lui        $at, 0x3fc0
/* 60088 8005F488 44802000 */  mtc1       $zero, $f4
/* 6008C 8005F48C 44813000 */  mtc1       $at, $f6
/* 60090 8005F490 3C08800D */  lui        $t0, 0x800d
/* 60094 8005F494 A4790084 */  sh         $t9, 0x84($v1)
/* 60098 8005F498 E4600110 */  swc1       $f0, 0x110($v1)
/* 6009C 8005F49C E4600114 */  swc1       $f0, 0x114($v1)
/* 600A0 8005F4A0 E46400B4 */  swc1       $f4, 0xb4($v1)
/* 600A4 8005F4A4 E46600B8 */  swc1       $f6, 0xb8($v1)
/* 600A8 8005F4A8 85085830 */  lh         $t0, 0x5830($t0)
/* 600AC 8005F4AC 3C09800D */  lui        $t1, %hi(D_800D5834)
/* 600B0 8005F4B0 A4680088 */  sh         $t0, 0x88($v1)
/* 600B4 8005F4B4 85295834 */  lh         $t1, %lo(D_800D5834)($t1)
/* 600B8 8005F4B8 240A0400 */  addiu      $t2, $zero, 0x400
/* 600BC 8005F4BC 240B0003 */  addiu      $t3, $zero, 3
/* 600C0 8005F4C0 A46A0090 */  sh         $t2, 0x90($v1)
/* 600C4 8005F4C4 AC600188 */  sw         $zero, 0x188($v1)
/* 600C8 8005F4C8 A46B00D0 */  sh         $t3, 0xd0($v1)
/* 600CC 8005F4CC 3C018018 */  lui        $at, %hi(D_8017843C)
/* 600D0 8005F4D0 A469008C */  sh         $t1, 0x8c($v1)
/* 600D4 8005F4D4 10000027 */  b          .L8005F574
/* 600D8 8005F4D8 A424843C */   sh        $a0, %lo(D_8017843C)($at)
.L8005F4DC:
/* 600DC 8005F4DC 3044FFFF */  andi       $a0, $v0, 0xffff
/* 600E0 8005F4E0 00046080 */  sll        $t4, $a0, 2
/* 600E4 8005F4E4 01846023 */  subu       $t4, $t4, $a0
/* 600E8 8005F4E8 000C6080 */  sll        $t4, $t4, 2
/* 600EC 8005F4EC 01846021 */  addu       $t4, $t4, $a0
/* 600F0 8005F4F0 000C6080 */  sll        $t4, $t4, 2
/* 600F4 8005F4F4 01846023 */  subu       $t4, $t4, $a0
/* 600F8 8005F4F8 3C0D800F */  lui        $t5, %hi(gActors)
/* 600FC 8005F4FC 25ADF510 */  addiu      $t5, $t5, %lo(gActors)
/* 60100 8005F500 000C60C0 */  sll        $t4, $t4, 3
/* 60104 8005F504 018D1821 */  addu       $v1, $t4, $t5
/* 60108 8005F508 8C6E0080 */  lw         $t6, 0x80($v1)
/* 6010C 8005F50C 00000000 */  nop
/* 60110 8005F510 15C00003 */  bnez       $t6, .L8005F520
/* 60114 8005F514 00000000 */   nop
/* 60118 8005F518 10000016 */  b          .L8005F574
/* 6011C 8005F51C A4C00000 */   sh        $zero, ($a2)
.L8005F520:
/* 60120 8005F520 84EF0000 */  lh         $t7, ($a3)
/* 60124 8005F524 00000000 */  nop
/* 60128 8005F528 11E00005 */  beqz       $t7, .L8005F540
/* 6012C 8005F52C 3C028018 */   lui       $v0, %hi(D_801782DE)
/* 60130 8005F530 844282DE */  lh         $v0, %lo(D_801782DE)($v0)
/* 60134 8005F534 3C01801A */  lui        $at, 0x801a
/* 60138 8005F538 14400008 */  bnez       $v0, .L8005F55C
/* 6013C 8005F53C 000240C0 */   sll       $t0, $v0, 3
.L8005F540:
/* 60140 8005F540 907800D1 */  lbu        $t8, 0xd1($v1)
/* 60144 8005F544 24190005 */  addiu      $t9, $zero, 5
/* 60148 8005F548 2B010005 */  slti       $at, $t8, 5
/* 6014C 8005F54C 10200009 */  beqz       $at, .L8005F574
/* 60150 8005F550 00000000 */   nop
/* 60154 8005F554 10000007 */  b          .L8005F574
/* 60158 8005F558 A47900D0 */   sh        $t9, 0xd0($v1)
.L8005F55C:
/* 6015C 8005F55C 01024021 */  addu       $t0, $t0, $v0
/* 60160 8005F560 000841C0 */  sll        $t0, $t0, 7
/* 60164 8005F564 34210BA8 */  ori        $at, $at, 0xba8
/* 60168 8005F568 01014821 */  addu       $t1, $t0, $at
/* 6016C 8005F56C AC69017C */  sw         $t1, 0x17c($v1)
/* 60170 8005F570 A4620084 */  sh         $v0, 0x84($v1)
.L8005F574:
/* 60174 8005F574 3C038018 */  lui        $v1, %hi(D_8017843E)
/* 60178 8005F578 2463843E */  addiu      $v1, $v1, %lo(D_8017843E)
/* 6017C 8005F57C 94620000 */  lhu        $v0, ($v1)
/* 60180 8005F580 00000000 */  nop
/* 60184 8005F584 1440003F */  bnez       $v0, .L8005F684
/* 60188 8005F588 3C0A8018 */   lui       $t2, %hi(D_801782DC)
/* 6018C 8005F58C 814A82DC */  lb         $t2, %lo(D_801782DC)($t2)
/* 60190 8005F590 3C0C8018 */  lui        $t4, %hi(D_801783F0)
/* 60194 8005F594 314B000F */  andi       $t3, $t2, 0xf
/* 60198 8005F598 1560004B */  bnez       $t3, .L8005F6C8
/* 6019C 8005F59C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 601A0 8005F5A0 858C83F0 */  lh         $t4, %lo(D_801783F0)($t4)
/* 601A4 8005F5A4 24010002 */  addiu      $at, $zero, 2
/* 601A8 8005F5A8 15810046 */  bne        $t4, $at, .L8005F6C4
/* 601AC 8005F5AC 240400C0 */   addiu     $a0, $zero, 0xc0
/* 601B0 8005F5B0 0C00A12E */  jal        func_800284B8
/* 601B4 8005F5B4 240500C7 */   addiu     $a1, $zero, 0xc7
/* 601B8 8005F5B8 10400042 */  beqz       $v0, .L8005F6C4
/* 601BC 8005F5BC 3044FFFF */   andi      $a0, $v0, 0xffff
/* 601C0 8005F5C0 00046880 */  sll        $t5, $a0, 2
/* 601C4 8005F5C4 01A46823 */  subu       $t5, $t5, $a0
/* 601C8 8005F5C8 000D6880 */  sll        $t5, $t5, 2
/* 601CC 8005F5CC 01A46821 */  addu       $t5, $t5, $a0
/* 601D0 8005F5D0 000D6880 */  sll        $t5, $t5, 2
/* 601D4 8005F5D4 01A46823 */  subu       $t5, $t5, $a0
/* 601D8 8005F5D8 3C0E800F */  lui        $t6, %hi(gActors)
/* 601DC 8005F5DC 25CEF510 */  addiu      $t6, $t6, %lo(gActors)
/* 601E0 8005F5E0 000D68C0 */  sll        $t5, $t5, 3
/* 601E4 8005F5E4 01AE1821 */  addu       $v1, $t5, $t6
/* 601E8 8005F5E8 240F0039 */  addiu      $t7, $zero, 0x39
/* 601EC 8005F5EC A46F00D2 */  sh         $t7, 0xd2($v1)
/* 601F0 8005F5F0 AFA3001C */  sw         $v1, 0x1c($sp)
/* 601F4 8005F5F4 0C0078B4 */  jal        func_8001E2D0
/* 601F8 8005F5F8 A7A40026 */   sh        $a0, 0x26($sp)
/* 601FC 8005F5FC 8FA3001C */  lw         $v1, 0x1c($sp)
/* 60200 8005F600 3C09800E */  lui        $t1, %hi(D_800E1474)
/* 60204 8005F604 94780094 */  lhu        $t8, 0x94($v1)
/* 60208 8005F608 2408000B */  addiu      $t0, $zero, 0xb
/* 6020C 8005F60C 25291474 */  addiu      $t1, $t1, %lo(D_800E1474)
/* 60210 8005F610 240A0001 */  addiu      $t2, $zero, 1
/* 60214 8005F614 240BFFFD */  addiu      $t3, $zero, -3
/* 60218 8005F618 37190940 */  ori        $t9, $t8, 0x940
/* 6021C 8005F61C 3C0D800C */  lui        $t5, 0x800c
/* 60220 8005F620 A4790094 */  sh         $t9, 0x94($v1)
/* 60224 8005F624 AC680080 */  sw         $t0, 0x80($v1)
/* 60228 8005F628 A46A00E6 */  sh         $t2, 0xe6($v1)
/* 6022C 8005F62C AC6900E8 */  sw         $t1, 0xe8($v1)
/* 60230 8005F630 A46B0088 */  sh         $t3, 0x88($v1)
/* 60234 8005F634 95ADE4E0 */  lhu        $t5, -0x1b20($t5)
/* 60238 8005F638 3C0C8018 */  lui        $t4, %hi(D_801783F6)
/* 6023C 8005F63C 858C83F6 */  lh         $t4, %lo(D_801783F6)($t4)
/* 60240 8005F640 31AE000F */  andi       $t6, $t5, 0xf
/* 60244 8005F644 97A40026 */  lhu        $a0, 0x26($sp)
/* 60248 8005F648 05C10003 */  bgez       $t6, .L8005F658
/* 6024C 8005F64C 000E7883 */   sra       $t7, $t6, 2
/* 60250 8005F650 25C10003 */  addiu      $at, $t6, 3
/* 60254 8005F654 00017883 */  sra        $t7, $at, 2
.L8005F658:
/* 60258 8005F658 018FC023 */  subu       $t8, $t4, $t7
/* 6025C 8005F65C 2719FFDA */  addiu      $t9, $t8, -0x26
/* 60260 8005F660 24080400 */  addiu      $t0, $zero, 0x400
/* 60264 8005F664 24090006 */  addiu      $t1, $zero, 6
/* 60268 8005F668 3C018018 */  lui        $at, 0x8018
/* 6026C 8005F66C A479008C */  sh         $t9, 0x8c($v1)
/* 60270 8005F670 A4680090 */  sh         $t0, 0x90($v1)
/* 60274 8005F674 AC600188 */  sw         $zero, 0x188($v1)
/* 60278 8005F678 A46900D0 */  sh         $t1, 0xd0($v1)
/* 6027C 8005F67C 10000011 */  b          .L8005F6C4
/* 60280 8005F680 A424843E */   sh        $a0, -0x7bc2($at)
.L8005F684:
/* 60284 8005F684 3C0A8018 */  lui        $t2, %hi(D_801783F0)
/* 60288 8005F688 854A83F0 */  lh         $t2, %lo(D_801783F0)($t2)
/* 6028C 8005F68C 24010002 */  addiu      $at, $zero, 2
/* 60290 8005F690 1141000C */  beq        $t2, $at, .L8005F6C4
/* 60294 8005F694 3044FFFF */   andi      $a0, $v0, 0xffff
/* 60298 8005F698 00045880 */  sll        $t3, $a0, 2
/* 6029C 8005F69C 01645823 */  subu       $t3, $t3, $a0
/* 602A0 8005F6A0 000B5880 */  sll        $t3, $t3, 2
/* 602A4 8005F6A4 01645821 */  addu       $t3, $t3, $a0
/* 602A8 8005F6A8 000B5880 */  sll        $t3, $t3, 2
/* 602AC 8005F6AC 01645823 */  subu       $t3, $t3, $a0
/* 602B0 8005F6B0 000B58C0 */  sll        $t3, $t3, 3
/* 602B4 8005F6B4 3C01800F */  lui        $at, %hi(D_800EF590)
/* 602B8 8005F6B8 002B0821 */  addu       $at, $at, $t3
/* 602BC 8005F6BC AC20F590 */  sw         $zero, %lo(D_800EF590)($at)
/* 602C0 8005F6C0 A4600000 */  sh         $zero, ($v1)
.L8005F6C4:
/* 602C4 8005F6C4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005F6C8:
/* 602C8 8005F6C8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 602CC 8005F6CC 03E00008 */  jr         $ra
/* 602D0 8005F6D0 00000000 */   nop

glabel func_8005F6D4
/* 602D4 8005F6D4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 602D8 8005F6D8 AFB00018 */  sw         $s0, 0x18($sp)
/* 602DC 8005F6DC 3C10800D */  lui        $s0, %hi(D_800D5820)
/* 602E0 8005F6E0 26105820 */  addiu      $s0, $s0, %lo(D_800D5820)
/* 602E4 8005F6E4 960E0000 */  lhu        $t6, ($s0)
/* 602E8 8005F6E8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 602EC 8005F6EC AFB60030 */  sw         $s6, 0x30($sp)
/* 602F0 8005F6F0 AFB5002C */  sw         $s5, 0x2c($sp)
/* 602F4 8005F6F4 AFB40028 */  sw         $s4, 0x28($sp)
/* 602F8 8005F6F8 AFB30024 */  sw         $s3, 0x24($sp)
/* 602FC 8005F6FC AFB20020 */  sw         $s2, 0x20($sp)
/* 60300 8005F700 11C00021 */  beqz       $t6, .L8005F788
/* 60304 8005F704 AFB1001C */   sw        $s1, 0x1c($sp)
/* 60308 8005F708 3C05800D */  lui        $a1, %hi(D_800D5824)
/* 6030C 8005F70C 24A55824 */  addiu      $a1, $a1, %lo(D_800D5824)
/* 60310 8005F710 94AF0000 */  lhu        $t7, ($a1)
/* 60314 8005F714 3C028018 */  lui        $v0, %hi(D_80178440)
/* 60318 8005F718 31F87000 */  andi       $t8, $t7, 0x7000
/* 6031C 8005F71C 1300001A */  beqz       $t8, .L8005F788
/* 60320 8005F720 3C03800C */   lui       $v1, %hi(D_800BE5D8)
/* 60324 8005F724 84428440 */  lh         $v0, %lo(D_80178440)($v0)
/* 60328 8005F728 8463E5D8 */  lh         $v1, %lo(D_800BE5D8)($v1)
/* 6032C 8005F72C 24590020 */  addiu      $t9, $v0, 0x20
/* 60330 8005F730 0323082A */  slt        $at, $t9, $v1
/* 60334 8005F734 14200012 */  bnez       $at, .L8005F780
/* 60338 8005F738 2448FFE0 */   addiu     $t0, $v0, -0x20
/* 6033C 8005F73C 0068082A */  slt        $at, $v1, $t0
/* 60340 8005F740 1420000F */  bnez       $at, .L8005F780
/* 60344 8005F744 3C028018 */   lui       $v0, %hi(D_80178442)
/* 60348 8005F748 84428442 */  lh         $v0, %lo(D_80178442)($v0)
/* 6034C 8005F74C 3C03800C */  lui        $v1, %hi(D_800BE5DC)
/* 60350 8005F750 8463E5DC */  lh         $v1, %lo(D_800BE5DC)($v1)
/* 60354 8005F754 24490020 */  addiu      $t1, $v0, 0x20
/* 60358 8005F758 0123082A */  slt        $at, $t1, $v1
/* 6035C 8005F75C 14200008 */  bnez       $at, .L8005F780
/* 60360 8005F760 244AFFE0 */   addiu     $t2, $v0, -0x20
/* 60364 8005F764 006A082A */  slt        $at, $v1, $t2
/* 60368 8005F768 14200005 */  bnez       $at, .L8005F780
/* 6036C 8005F76C 00000000 */   nop
/* 60370 8005F770 0C010299 */  jal        func_80040A64
/* 60374 8005F774 00000000 */   nop
/* 60378 8005F778 10400003 */  beqz       $v0, .L8005F788
/* 6037C 8005F77C 00000000 */   nop
.L8005F780:
/* 60380 8005F780 0C0177F2 */  jal        func_8005DFC8
/* 60384 8005F784 00002025 */   or        $a0, $zero, $zero
.L8005F788:
/* 60388 8005F788 3C168018 */  lui        $s6, %hi(D_801783F0)
/* 6038C 8005F78C 26D683F0 */  addiu      $s6, $s6, %lo(D_801783F0)
/* 60390 8005F790 86C70000 */  lh         $a3, ($s6)
/* 60394 8005F794 3C05800D */  lui        $a1, %hi(D_800D5824)
/* 60398 8005F798 24A55824 */  addiu      $a1, $a1, %lo(D_800D5824)
/* 6039C 8005F79C A4A00000 */  sh         $zero, ($a1)
/* 603A0 8005F7A0 10E0000B */  beqz       $a3, .L8005F7D0
/* 603A4 8005F7A4 00E01025 */   or        $v0, $a3, $zero
/* 603A8 8005F7A8 24040001 */  addiu      $a0, $zero, 1
/* 603AC 8005F7AC 1044005B */  beq        $v0, $a0, .L8005F91C
/* 603B0 8005F7B0 24010002 */   addiu     $at, $zero, 2
/* 603B4 8005F7B4 104101A4 */  beq        $v0, $at, .L8005FE48
/* 603B8 8005F7B8 3C0A8018 */   lui       $t2, 0x8018
/* 603BC 8005F7BC 24010003 */  addiu      $at, $zero, 3
/* 603C0 8005F7C0 10410210 */  beq        $v0, $at, .L80060004
/* 603C4 8005F7C4 3C0D8018 */   lui       $t5, 0x8018
/* 603C8 8005F7C8 10000238 */  b          .L800600AC
/* 603CC 8005F7CC 00000000 */   nop
.L8005F7D0:
/* 603D0 8005F7D0 3C068018 */  lui        $a2, %hi(D_80178418)
/* 603D4 8005F7D4 24C68418 */  addiu      $a2, $a2, %lo(D_80178418)
/* 603D8 8005F7D8 84C20000 */  lh         $v0, ($a2)
/* 603DC 8005F7DC 3C03800D */  lui        $v1, %hi(D_800D582C)
/* 603E0 8005F7E0 10400232 */  beqz       $v0, .L800600AC
/* 603E4 8005F7E4 2463582C */   addiu     $v1, $v1, %lo(D_800D582C)
/* 603E8 8005F7E8 960B0000 */  lhu        $t3, ($s0)
/* 603EC 8005F7EC 3C108018 */  lui        $s0, %hi(D_801783E8)
/* 603F0 8005F7F0 1160000C */  beqz       $t3, .L8005F824
/* 603F4 8005F7F4 261083E8 */   addiu     $s0, $s0, %lo(D_801783E8)
/* 603F8 8005F7F8 3C0C800F */  lui        $t4, %hi(D_800EF59C)
/* 603FC 8005F7FC 858CF59C */  lh         $t4, %lo(D_800EF59C)($t4)
/* 60400 8005F800 240DFFD0 */  addiu      $t5, $zero, -0x30
/* 60404 8005F804 29810009 */  slti       $at, $t4, 9
/* 60408 8005F808 14200004 */  bnez       $at, .L8005F81C
/* 6040C 8005F80C 240E0034 */   addiu     $t6, $zero, 0x34
/* 60410 8005F810 3C018018 */  lui        $at, %hi(D_801783F6)
/* 60414 8005F814 10000003 */  b          .L8005F824
/* 60418 8005F818 A42D83F6 */   sh        $t5, %lo(D_801783F6)($at)
.L8005F81C:
/* 6041C 8005F81C 3C018018 */  lui        $at, %hi(D_801783F6)
/* 60420 8005F820 A42E83F6 */  sh         $t6, %lo(D_801783F6)($at)
.L8005F824:
/* 60424 8005F824 A4600000 */  sh         $zero, ($v1)
/* 60428 8005F828 3C01800D */  lui        $at, %hi(D_800D5828)
/* 6042C 8005F82C A4205828 */  sh         $zero, %lo(D_800D5828)($at)
/* 60430 8005F830 3C138018 */  lui        $s3, %hi(D_801783EA)
/* 60434 8005F834 267383EA */  addiu      $s3, $s3, %lo(D_801783EA)
/* 60438 8005F838 240F4000 */  addiu      $t7, $zero, 0x4000
/* 6043C 8005F83C A4AF0000 */  sh         $t7, ($a1)
/* 60440 8005F840 A6600000 */  sh         $zero, ($s3)
/* 60444 8005F844 A6000000 */  sh         $zero, ($s0)
/* 60448 8005F848 3C018018 */  lui        $at, %hi(D_801783EC)
/* 6044C 8005F84C A42083EC */  sh         $zero, %lo(D_801783EC)($at)
/* 60450 8005F850 3C148018 */  lui        $s4, %hi(D_801783F8)
/* 60454 8005F854 3C018018 */  lui        $at, %hi(D_801783EE)
/* 60458 8005F858 24180002 */  addiu      $t8, $zero, 2
/* 6045C 8005F85C 269483F8 */  addiu      $s4, $s4, %lo(D_801783F8)
/* 60460 8005F860 A43883EE */  sh         $t8, %lo(D_801783EE)($at)
/* 60464 8005F864 86990000 */  lh         $t9, ($s4)
/* 60468 8005F868 3C158018 */  lui        $s5, %hi(D_801782DE)
/* 6046C 8005F86C 33282000 */  andi       $t0, $t9, 0x2000
/* 60470 8005F870 11000008 */  beqz       $t0, .L8005F894
/* 60474 8005F874 26B582DE */   addiu     $s5, $s5, %lo(D_801782DE)
/* 60478 8005F878 00024880 */  sll        $t1, $v0, 2
/* 6047C 8005F87C 3C0A800D */  lui        $t2, %hi(D_800D73C0)
/* 60480 8005F880 01495021 */  addu       $t2, $t2, $t1
/* 60484 8005F884 8D4A73C0 */  lw         $t2, %lo(D_800D73C0)($t2)
/* 60488 8005F888 3C018018 */  lui        $at, %hi(D_801782D8)
/* 6048C 8005F88C 1000000B */  b          .L8005F8BC
/* 60490 8005F890 AC2A82D8 */   sw        $t2, %lo(D_801782D8)($at)
.L8005F894:
/* 60494 8005F894 3C03801C */  lui        $v1, 0x801c
/* 60498 8005F898 34631000 */  ori        $v1, $v1, 0x1000
/* 6049C 8005F89C 00025880 */  sll        $t3, $v0, 2
/* 604A0 8005F8A0 006B6021 */  addu       $t4, $v1, $t3
/* 604A4 8005F8A4 8D8D0000 */  lw         $t5, ($t4)
/* 604A8 8005F8A8 8C6E0000 */  lw         $t6, ($v1)
/* 604AC 8005F8AC 3C018018 */  lui        $at, %hi(D_801782D8)
/* 604B0 8005F8B0 01AE7823 */  subu       $t7, $t5, $t6
/* 604B4 8005F8B4 01E3C021 */  addu       $t8, $t7, $v1
/* 604B8 8005F8B8 AC3882D8 */  sw         $t8, %lo(D_801782D8)($at)
.L8005F8BC:
/* 604BC 8005F8BC 3C198018 */  lui        $t9, %hi(D_801782D8)
/* 604C0 8005F8C0 8F3982D8 */  lw         $t9, %lo(D_801782D8)($t9)
/* 604C4 8005F8C4 86020000 */  lh         $v0, ($s0)
/* 604C8 8005F8C8 3C018018 */  lui        $at, 0x8018
/* 604CC 8005F8CC 00594021 */  addu       $t0, $v0, $t9
/* 604D0 8005F8D0 81120000 */  lb         $s2, ($t0)
/* 604D4 8005F8D4 24490001 */  addiu      $t1, $v0, 1
/* 604D8 8005F8D8 A6090000 */  sh         $t1, ($s0)
/* 604DC 8005F8DC 324C000F */  andi       $t4, $s2, 0xf
/* 604E0 8005F8E0 A02C82DC */  sb         $t4, -0x7d24($at)
/* 604E4 8005F8E4 A6A00000 */  sh         $zero, ($s5)
/* 604E8 8005F8E8 3C018018 */  lui        $at, %hi(D_801782E0)
/* 604EC 8005F8EC 240D0001 */  addiu      $t5, $zero, 1
/* 604F0 8005F8F0 A42D82E0 */  sh         $t5, %lo(D_801782E0)($at)
/* 604F4 8005F8F4 3C018018 */  lui        $at, %hi(D_801782E2)
/* 604F8 8005F8F8 0C020C43 */  jal        func_8008310C
/* 604FC 8005F8FC A42082E2 */   sh        $zero, %lo(D_801782E2)($at)
/* 60500 8005F900 240E0001 */  addiu      $t6, $zero, 1
/* 60504 8005F904 A6CE0000 */  sh         $t6, ($s6)
/* 60508 8005F908 3C018018 */  lui        $at, %hi(D_801783F2)
/* 6050C 8005F90C A42083F2 */  sh         $zero, %lo(D_801783F2)($at)
/* 60510 8005F910 86C70000 */  lh         $a3, ($s6)
/* 60514 8005F914 100001E5 */  b          .L800600AC
/* 60518 8005F918 00000000 */   nop
.L8005F91C:
/* 6051C 8005F91C 240F1000 */  addiu      $t7, $zero, 0x1000
/* 60520 8005F920 A4AF0000 */  sh         $t7, ($a1)
/* 60524 8005F924 3C028018 */  lui        $v0, %hi(D_801782DC)
/* 60528 8005F928 804282DC */  lb         $v0, %lo(D_801782DC)($v0)
/* 6052C 8005F92C 3C09800D */  lui        $t1, 0x800d
/* 60530 8005F930 30580040 */  andi       $t8, $v0, 0x40
/* 60534 8005F934 17000012 */  bnez       $t8, .L8005F980
/* 60538 8005F938 3C038018 */   lui       $v1, %hi(D_80178438)
/* 6053C 8005F93C 94638438 */  lhu        $v1, %lo(D_80178438)($v1)
/* 60540 8005F940 3C08800F */  lui        $t0, 0x800f
/* 60544 8005F944 106001D9 */  beqz       $v1, .L800600AC
/* 60548 8005F948 0003C880 */   sll       $t9, $v1, 2
/* 6054C 8005F94C 0323C823 */  subu       $t9, $t9, $v1
/* 60550 8005F950 0019C880 */  sll        $t9, $t9, 2
/* 60554 8005F954 0323C821 */  addu       $t9, $t9, $v1
/* 60558 8005F958 0019C880 */  sll        $t9, $t9, 2
/* 6055C 8005F95C 0323C823 */  subu       $t9, $t9, $v1
/* 60560 8005F960 0019C8C0 */  sll        $t9, $t9, 3
/* 60564 8005F964 01194021 */  addu       $t0, $t0, $t9
/* 60568 8005F968 9108F5E1 */  lbu        $t0, -0xa1f($t0)
/* 6056C 8005F96C 00000000 */  nop
/* 60570 8005F970 10880005 */  beq        $a0, $t0, .L8005F988
/* 60574 8005F974 00000000 */   nop
/* 60578 8005F978 100001CC */  b          .L800600AC
/* 6057C 8005F97C 00000000 */   nop
.L8005F980:
/* 60580 8005F980 3C018018 */  lui        $at, %hi(D_801783EC)
/* 60584 8005F984 A42083EC */  sh         $zero, %lo(D_801783EC)($at)
.L8005F988:
/* 60588 8005F988 95295828 */  lhu        $t1, 0x5828($t1)
/* 6058C 8005F98C 00009025 */  or         $s2, $zero, $zero
/* 60590 8005F990 29210002 */  slti       $at, $t1, 2
/* 60594 8005F994 14200019 */  bnez       $at, .L8005F9FC
/* 60598 8005F998 3C0A8018 */   lui       $t2, %hi(D_801783F2)
/* 6059C 8005F99C 854A83F2 */  lh         $t2, %lo(D_801783F2)($t2)
/* 605A0 8005F9A0 3C19800C */  lui        $t9, 0x800c
/* 605A4 8005F9A4 1140000C */  beqz       $t2, .L8005F9D8
/* 605A8 8005F9A8 3C08800C */   lui       $t0, 0x800c
/* 605AC 8005F9AC 3C0B800C */  lui        $t3, %hi(gButton_LTrig)
/* 605B0 8005F9B0 3C0C800C */  lui        $t4, %hi(gButton_RTrig)
/* 605B4 8005F9B4 958CE534 */  lhu        $t4, %lo(gButton_RTrig)($t4)
/* 605B8 8005F9B8 956BE530 */  lhu        $t3, %lo(gButton_LTrig)($t3)
/* 605BC 8005F9BC 3C0E800C */  lui        $t6, %hi(gButtonHold)
/* 605C0 8005F9C0 95CEE4F8 */  lhu        $t6, %lo(gButtonHold)($t6)
/* 605C4 8005F9C4 016C6825 */  or         $t5, $t3, $t4
/* 605C8 8005F9C8 01CD9024 */  and        $s2, $t6, $t5
/* 605CC 8005F9CC 00127C00 */  sll        $t7, $s2, 0x10
/* 605D0 8005F9D0 1000000A */  b          .L8005F9FC
/* 605D4 8005F9D4 000F9403 */   sra       $s2, $t7, 0x10
.L8005F9D8:
/* 605D8 8005F9D8 9739E530 */  lhu        $t9, -0x1ad0($t9)
/* 605DC 8005F9DC 9508E534 */  lhu        $t0, -0x1acc($t0)
/* 605E0 8005F9E0 3C0A800C */  lui        $t2, %hi(gButtonHold)
/* 605E4 8005F9E4 954AE4F8 */  lhu        $t2, %lo(gButtonHold)($t2)
/* 605E8 8005F9E8 03284825 */  or         $t1, $t9, $t0
/* 605EC 8005F9EC 01495824 */  and        $t3, $t2, $t1
/* 605F0 8005F9F0 11600002 */  beqz       $t3, .L8005F9FC
/* 605F4 8005F9F4 3C018018 */   lui       $at, %hi(D_801783F2)
/* 605F8 8005F9F8 A42483F2 */  sh         $a0, %lo(D_801783F2)($at)
.L8005F9FC:
/* 605FC 8005F9FC 304C000F */  andi       $t4, $v0, 0xf
/* 60600 8005FA00 148C0002 */  bne        $a0, $t4, .L8005FA0C
/* 60604 8005FA04 00000000 */   nop
/* 60608 8005FA08 00009025 */  or         $s2, $zero, $zero
.L8005FA0C:
/* 6060C 8005FA0C 12400003 */  beqz       $s2, .L8005FA1C
/* 60610 8005FA10 3C038018 */   lui       $v1, %hi(D_801783EC)
/* 60614 8005FA14 246383EC */  addiu      $v1, $v1, %lo(D_801783EC)
/* 60618 8005FA18 A4600000 */  sh         $zero, ($v1)
.L8005FA1C:
/* 6061C 8005FA1C 3C038018 */  lui        $v1, %hi(D_801783EC)
/* 60620 8005FA20 246383EC */  addiu      $v1, $v1, %lo(D_801783EC)
/* 60624 8005FA24 84620000 */  lh         $v0, ($v1)
/* 60628 8005FA28 00000000 */  nop
/* 6062C 8005FA2C 10400003 */  beqz       $v0, .L8005FA3C
/* 60630 8005FA30 244EFFFF */   addiu     $t6, $v0, -1
/* 60634 8005FA34 1000019D */  b          .L800600AC
/* 60638 8005FA38 A46E0000 */   sh        $t6, ($v1)
.L8005FA3C:
/* 6063C 8005FA3C 3C0D8018 */  lui        $t5, %hi(D_801783EE)
/* 60640 8005FA40 85AD83EE */  lh         $t5, %lo(D_801783EE)($t5)
/* 60644 8005FA44 3C158018 */  lui        $s5, 0x8018
/* 60648 8005FA48 3C148018 */  lui        $s4, 0x8018
/* 6064C 8005FA4C 3C138018 */  lui        $s3, %hi(D_801783EA)
/* 60650 8005FA50 3C108018 */  lui        $s0, %hi(D_801783E8)
/* 60654 8005FA54 0000B025 */  or         $s6, $zero, $zero
/* 60658 8005FA58 261083E8 */  addiu      $s0, $s0, %lo(D_801783E8)
/* 6065C 8005FA5C 267383EA */  addiu      $s3, $s3, %lo(D_801783EA)
/* 60660 8005FA60 269483F8 */  addiu      $s4, $s4, -0x7c08
/* 60664 8005FA64 26B582DE */  addiu      $s5, $s5, -0x7d22
/* 60668 8005FA68 A46D0000 */  sh         $t5, ($v1)
.L8005FA6C:
/* 6066C 8005FA6C 3C038018 */  lui        $v1, %hi(D_801782D8)
/* 60670 8005FA70 8C6382D8 */  lw         $v1, %lo(D_801782D8)($v1)
/* 60674 8005FA74 86020000 */  lh         $v0, ($s0)
/* 60678 8005FA78 00009025 */  or         $s2, $zero, $zero
/* 6067C 8005FA7C 00437821 */  addu       $t7, $v0, $v1
/* 60680 8005FA80 81F10000 */  lb         $s1, ($t7)
/* 60684 8005FA84 24580001 */  addiu      $t8, $v0, 1
/* 60688 8005FA88 06210085 */  bgez       $s1, .L8005FCA0
/* 6068C 8005FA8C A6180000 */   sh        $t8, ($s0)
/* 60690 8005FA90 26390009 */  addiu      $t9, $s1, 9
/* 60694 8005FA94 2F210009 */  sltiu      $at, $t9, 9
/* 60698 8005FA98 10200075 */  beqz       $at, .L8005FC70
/* 6069C 8005FA9C 24120001 */   addiu     $s2, $zero, 1
/* 606A0 8005FAA0 0019C880 */  sll        $t9, $t9, 2
/* 606A4 8005FAA4 3C01800F */  lui        $at, %hi(D_800EBFD0)
/* 606A8 8005FAA8 00390821 */  addu       $at, $at, $t9
/* 606AC 8005FAAC 8C39BFD0 */  lw         $t9, %lo(D_800EBFD0)($at)
/* 606B0 8005FAB0 00000000 */  nop
/* 606B4 8005FAB4 03200008 */  jr         $t9
/* 606B8 8005FAB8 00000000 */   nop
/* 606BC 8005FABC 3C088018 */  lui        $t0, %hi(D_801782DC)
/* 606C0 8005FAC0 810882DC */  lb         $t0, %lo(D_801782DC)($t0)
/* 606C4 8005FAC4 24010001 */  addiu      $at, $zero, 1
/* 606C8 8005FAC8 310A000F */  andi       $t2, $t0, 0xf
/* 606CC 8005FACC 15410004 */  bne        $t2, $at, .L8005FAE0
/* 606D0 8005FAD0 24180002 */   addiu     $t8, $zero, 2
/* 606D4 8005FAD4 24090078 */  addiu      $t1, $zero, 0x78
/* 606D8 8005FAD8 3C018018 */  lui        $at, %hi(D_801783EC)
/* 606DC 8005FADC A42983EC */  sh         $t1, %lo(D_801783EC)($at)
.L8005FAE0:
/* 606E0 8005FAE0 868B0000 */  lh         $t3, ($s4)
/* 606E4 8005FAE4 860E0000 */  lh         $t6, ($s0)
/* 606E8 8005FAE8 356C4000 */  ori        $t4, $t3, 0x4000
/* 606EC 8005FAEC A68C0000 */  sh         $t4, ($s4)
/* 606F0 8005FAF0 01C36821 */  addu       $t5, $t6, $v1
/* 606F4 8005FAF4 81A20000 */  lb         $v0, ($t5)
/* 606F8 8005FAF8 3C018018 */  lui        $at, %hi(D_801783F0)
/* 606FC 8005FAFC 244F0001 */  addiu      $t7, $v0, 1
/* 60700 8005FB00 15E00007 */  bnez       $t7, .L8005FB20
/* 60704 8005FB04 A43883F0 */   sh        $t8, %lo(D_801783F0)($at)
/* 60708 8005FB08 86990000 */  lh         $t9, ($s4)
/* 6070C 8005FB0C 240A0800 */  addiu      $t2, $zero, 0x800
/* 60710 8005FB10 37288000 */  ori        $t0, $t9, 0x8000
/* 60714 8005FB14 A6880000 */  sh         $t0, ($s4)
/* 60718 8005FB18 3C01800D */  lui        $at, %hi(D_800D5824)
/* 6071C 8005FB1C A42A5824 */  sh         $t2, %lo(D_800D5824)($at)
.L8005FB20:
/* 60720 8005FB20 1000005F */  b          .L8005FCA0
/* 60724 8005FB24 00009025 */   or        $s2, $zero, $zero
/* 60728 8005FB28 86690000 */  lh         $t1, ($s3)
/* 6072C 8005FB2C 00000000 */  nop
/* 60730 8005FB30 05210003 */  bgez       $t1, .L8005FB40
/* 60734 8005FB34 00095943 */   sra       $t3, $t1, 5
/* 60738 8005FB38 2521001F */  addiu      $at, $t1, 0x1f
/* 6073C 8005FB3C 00015943 */  sra        $t3, $at, 5
.L8005FB40:
/* 60740 8005FB40 A66B0000 */  sh         $t3, ($s3)
/* 60744 8005FB44 866C0000 */  lh         $t4, ($s3)
/* 60748 8005FB48 00000000 */  nop
/* 6074C 8005FB4C 258E0001 */  addiu      $t6, $t4, 1
/* 60750 8005FB50 A66E0000 */  sh         $t6, ($s3)
/* 60754 8005FB54 866D0000 */  lh         $t5, ($s3)
/* 60758 8005FB58 00000000 */  nop
/* 6075C 8005FB5C 000D7940 */  sll        $t7, $t5, 5
/* 60760 8005FB60 1000004F */  b          .L8005FCA0
/* 60764 8005FB64 A66F0000 */   sh        $t7, ($s3)
/* 60768 8005FB68 86020000 */  lh         $v0, ($s0)
/* 6076C 8005FB6C 3C048018 */  lui        $a0, %hi(D_801783EE)
/* 60770 8005FB70 0043C021 */  addu       $t8, $v0, $v1
/* 60774 8005FB74 83190000 */  lb         $t9, ($t8)
/* 60778 8005FB78 248483EE */  addiu      $a0, $a0, %lo(D_801783EE)
/* 6077C 8005FB7C A4990000 */  sh         $t9, ($a0)
/* 60780 8005FB80 84880000 */  lh         $t0, ($a0)
/* 60784 8005FB84 3C018018 */  lui        $at, %hi(D_801783EC)
/* 60788 8005FB88 244A0001 */  addiu      $t2, $v0, 1
/* 6078C 8005FB8C A42883EC */  sh         $t0, %lo(D_801783EC)($at)
/* 60790 8005FB90 10000043 */  b          .L8005FCA0
/* 60794 8005FB94 A60A0000 */   sh        $t2, ($s0)
/* 60798 8005FB98 86020000 */  lh         $v0, ($s0)
/* 6079C 8005FB9C 240901F4 */  addiu      $t1, $zero, 0x1f4
/* 607A0 8005FBA0 A6A90000 */  sh         $t1, ($s5)
/* 607A4 8005FBA4 00626021 */  addu       $t4, $v1, $v0
/* 607A8 8005FBA8 818E0000 */  lb         $t6, ($t4)
/* 607AC 8005FBAC 86AB0000 */  lh         $t3, ($s5)
/* 607B0 8005FBB0 244F0001 */  addiu      $t7, $v0, 1
/* 607B4 8005FBB4 016E6821 */  addu       $t5, $t3, $t6
/* 607B8 8005FBB8 A6AD0000 */  sh         $t5, ($s5)
/* 607BC 8005FBBC 86B80000 */  lh         $t8, ($s5)
/* 607C0 8005FBC0 A60F0000 */  sh         $t7, ($s0)
/* 607C4 8005FBC4 2B0101F4 */  slti       $at, $t8, 0x1f4
/* 607C8 8005FBC8 10200035 */  beqz       $at, .L8005FCA0
/* 607CC 8005FBCC 00000000 */   nop
/* 607D0 8005FBD0 10000033 */  b          .L8005FCA0
/* 607D4 8005FBD4 A6A00000 */   sh        $zero, ($s5)
/* 607D8 8005FBD8 86020000 */  lh         $v0, ($s0)
/* 607DC 8005FBDC 3C018018 */  lui        $at, %hi(D_801782E0)
/* 607E0 8005FBE0 0043C821 */  addu       $t9, $v0, $v1
/* 607E4 8005FBE4 83280000 */  lb         $t0, ($t9)
/* 607E8 8005FBE8 244A0001 */  addiu      $t2, $v0, 1
/* 607EC 8005FBEC A42882E0 */  sh         $t0, %lo(D_801782E0)($at)
/* 607F0 8005FBF0 1000002B */  b          .L8005FCA0
/* 607F4 8005FBF4 A60A0000 */   sh        $t2, ($s0)
/* 607F8 8005FBF8 86020000 */  lh         $v0, ($s0)
/* 607FC 8005FBFC 3C018018 */  lui        $at, %hi(D_801782E2)
/* 60800 8005FC00 00434821 */  addu       $t1, $v0, $v1
/* 60804 8005FC04 812C0000 */  lb         $t4, ($t1)
/* 60808 8005FC08 244B0001 */  addiu      $t3, $v0, 1
/* 6080C 8005FC0C A42C82E2 */  sh         $t4, %lo(D_801782E2)($at)
/* 60810 8005FC10 10000023 */  b          .L8005FCA0
/* 60814 8005FC14 A60B0000 */   sh        $t3, ($s0)
/* 60818 8005FC18 10000021 */  b          .L8005FCA0
/* 6081C 8005FC1C 24160001 */   addiu     $s6, $zero, 1
/* 60820 8005FC20 86020000 */  lh         $v0, ($s0)
/* 60824 8005FC24 00000000 */  nop
/* 60828 8005FC28 00437021 */  addu       $t6, $v0, $v1
/* 6082C 8005FC2C 81CD0000 */  lb         $t5, ($t6)
/* 60830 8005FC30 244F0001 */  addiu      $t7, $v0, 1
/* 60834 8005FC34 A60F0000 */  sh         $t7, ($s0)
/* 60838 8005FC38 10000019 */  b          .L8005FCA0
/* 6083C 8005FC3C A68D0000 */   sh        $t5, ($s4)
/* 60840 8005FC40 86020000 */  lh         $v0, ($s0)
/* 60844 8005FC44 3C11800D */  lui        $s1, 0x800d
/* 60848 8005FC48 0043C021 */  addu       $t8, $v0, $v1
/* 6084C 8005FC4C 83120000 */  lb         $s2, ($t8)
/* 60850 8005FC50 24590001 */  addiu      $t9, $v0, 1
/* 60854 8005FC54 00124040 */  sll        $t0, $s2, 1
/* 60858 8005FC58 A6190000 */  sh         $t9, ($s0)
/* 6085C 8005FC5C 02288821 */  addu       $s1, $s1, $t0
/* 60860 8005FC60 86315838 */  lh         $s1, 0x5838($s1)
/* 60864 8005FC64 24160002 */  addiu      $s6, $zero, 2
/* 60868 8005FC68 1000000D */  b          .L8005FCA0
/* 6086C 8005FC6C 00009025 */   or        $s2, $zero, $zero
.L8005FC70:
/* 60870 8005FC70 86020000 */  lh         $v0, ($s0)
/* 60874 8005FC74 322C007F */  andi       $t4, $s1, 0x7f
/* 60878 8005FC78 00627821 */  addu       $t7, $v1, $v0
/* 6087C 8005FC7C 91F80000 */  lbu        $t8, ($t7)
/* 60880 8005FC80 000C6A00 */  sll        $t5, $t4, 8
/* 60884 8005FC84 01B84021 */  addu       $t0, $t5, $t8
/* 60888 8005FC88 25110102 */  addiu      $s1, $t0, 0x102
/* 6088C 8005FC8C 00114C00 */  sll        $t1, $s1, 0x10
/* 60890 8005FC90 244A0001 */  addiu      $t2, $v0, 1
/* 60894 8005FC94 A60A0000 */  sh         $t2, ($s0)
/* 60898 8005FC98 00098C03 */  sra        $s1, $t1, 0x10
/* 6089C 8005FC9C 00009025 */  or         $s2, $zero, $zero
.L8005FCA0:
/* 608A0 8005FCA0 1640005D */  bnez       $s2, .L8005FE18
/* 608A4 8005FCA4 00000000 */   nop
/* 608A8 8005FCA8 1220004D */  beqz       $s1, .L8005FDE0
/* 608AC 8005FCAC 3C02800D */   lui       $v0, %hi(D_800D5828)
/* 608B0 8005FCB0 24425828 */  addiu      $v0, $v0, %lo(D_800D5828)
/* 608B4 8005FCB4 944B0000 */  lhu        $t3, ($v0)
/* 608B8 8005FCB8 3C038018 */  lui        $v1, %hi(D_8017843C)
/* 608BC 8005FCBC 256E0001 */  addiu      $t6, $t3, 1
/* 608C0 8005FCC0 A44E0000 */  sh         $t6, ($v0)
/* 608C4 8005FCC4 9463843C */  lhu        $v1, %lo(D_8017843C)($v1)
/* 608C8 8005FCC8 3C0D8018 */  lui        $t5, %hi(D_801783F2)
/* 608CC 8005FCCC 10600045 */  beqz       $v1, .L8005FDE4
/* 608D0 8005FCD0 00112400 */   sll       $a0, $s1, 0x10
/* 608D4 8005FCD4 85AD83F2 */  lh         $t5, %lo(D_801783F2)($t5)
/* 608D8 8005FCD8 24010001 */  addiu      $at, $zero, 1
/* 608DC 8005FCDC 15A10011 */  bne        $t5, $at, .L8005FD24
/* 608E0 8005FCE0 3C02800C */   lui       $v0, %hi(gButtonHold)
/* 608E4 8005FCE4 3C0F800C */  lui        $t7, %hi(gButton_LTrig)
/* 608E8 8005FCE8 95EFE530 */  lhu        $t7, %lo(gButton_LTrig)($t7)
/* 608EC 8005FCEC 9442E4F8 */  lhu        $v0, %lo(gButtonHold)($v0)
/* 608F0 8005FCF0 3C19800C */  lui        $t9, %hi(gButton_RTrig)
/* 608F4 8005FCF4 004FC024 */  and        $t8, $v0, $t7
/* 608F8 8005FCF8 17000006 */  bnez       $t8, .L8005FD14
/* 608FC 8005FCFC 3C0A800D */   lui       $t2, 0x800d
/* 60900 8005FD00 9739E534 */  lhu        $t9, %lo(gButton_RTrig)($t9)
/* 60904 8005FD04 00000000 */  nop
/* 60908 8005FD08 00594024 */  and        $t0, $v0, $t9
/* 6090C 8005FD0C 11000006 */  beqz       $t0, .L8005FD28
/* 60910 8005FD10 00036080 */   sll       $t4, $v1, 2
.L8005FD14:
/* 60914 8005FD14 954A5828 */  lhu        $t2, 0x5828($t2)
/* 60918 8005FD18 00000000 */  nop
/* 6091C 8005FD1C 31490003 */  andi       $t1, $t2, 3
/* 60920 8005FD20 1520002F */  bnez       $t1, .L8005FDE0
.L8005FD24:
/* 60924 8005FD24 00036080 */   sll       $t4, $v1, 2
.L8005FD28:
/* 60928 8005FD28 01836023 */  subu       $t4, $t4, $v1
/* 6092C 8005FD2C 000C6080 */  sll        $t4, $t4, 2
/* 60930 8005FD30 01836021 */  addu       $t4, $t4, $v1
/* 60934 8005FD34 000C6080 */  sll        $t4, $t4, 2
/* 60938 8005FD38 01836023 */  subu       $t4, $t4, $v1
/* 6093C 8005FD3C 000C60C0 */  sll        $t4, $t4, 3
/* 60940 8005FD40 3C0B800F */  lui        $t3, %hi(D_800EF594)
/* 60944 8005FD44 016C5821 */  addu       $t3, $t3, $t4
/* 60948 8005FD48 956BF594 */  lhu        $t3, %lo(D_800EF594)($t3)
/* 6094C 8005FD4C 00000000 */  nop
/* 60950 8005FD50 256EFE0C */  addiu      $t6, $t3, -0x1f4
/* 60954 8005FD54 2DC1003F */  sltiu      $at, $t6, 0x3f
/* 60958 8005FD58 10200007 */  beqz       $at, .L8005FD78
/* 6095C 8005FD5C 000E7080 */   sll       $t6, $t6, 2
/* 60960 8005FD60 3C01800F */  lui        $at, %hi(D_800EBFF4)
/* 60964 8005FD64 002E0821 */  addu       $at, $at, $t6
/* 60968 8005FD68 8C2EBFF4 */  lw         $t6, %lo(D_800EBFF4)($at)
/* 6096C 8005FD6C 00000000 */  nop
/* 60970 8005FD70 01C00008 */  jr         $t6
/* 60974 8005FD74 00000000 */   nop
.L8005FD78:
/* 60978 8005FD78 0C000CE0 */  jal        func_80003380
/* 6097C 8005FD7C 24040077 */   addiu     $a0, $zero, 0x77
/* 60980 8005FD80 10000018 */  b          .L8005FDE4
/* 60984 8005FD84 00112400 */   sll       $a0, $s1, 0x10
/* 60988 8005FD88 0C000CE0 */  jal        func_80003380
/* 6098C 8005FD8C 24040079 */   addiu     $a0, $zero, 0x79
/* 60990 8005FD90 10000014 */  b          .L8005FDE4
/* 60994 8005FD94 00112400 */   sll       $a0, $s1, 0x10
/* 60998 8005FD98 0C000CE0 */  jal        func_80003380
/* 6099C 8005FD9C 2404010F */   addiu     $a0, $zero, 0x10f
/* 609A0 8005FDA0 10000010 */  b          .L8005FDE4
/* 609A4 8005FDA4 00112400 */   sll       $a0, $s1, 0x10
/* 609A8 8005FDA8 0C000CE0 */  jal        func_80003380
/* 609AC 8005FDAC 24040110 */   addiu     $a0, $zero, 0x110
/* 609B0 8005FDB0 1000000C */  b          .L8005FDE4
/* 609B4 8005FDB4 00112400 */   sll       $a0, $s1, 0x10
/* 609B8 8005FDB8 0C000CE0 */  jal        func_80003380
/* 609BC 8005FDBC 24040112 */   addiu     $a0, $zero, 0x112
/* 609C0 8005FDC0 10000008 */  b          .L8005FDE4
/* 609C4 8005FDC4 00112400 */   sll       $a0, $s1, 0x10
/* 609C8 8005FDC8 0C000CE0 */  jal        func_80003380
/* 609CC 8005FDCC 24040111 */   addiu     $a0, $zero, 0x111
/* 609D0 8005FDD0 10000004 */  b          .L8005FDE4
/* 609D4 8005FDD4 00112400 */   sll       $a0, $s1, 0x10
/* 609D8 8005FDD8 0C000CE0 */  jal        func_80003380
/* 609DC 8005FDDC 24040113 */   addiu     $a0, $zero, 0x113
.L8005FDE0:
/* 609E0 8005FDE0 00112400 */  sll        $a0, $s1, 0x10
.L8005FDE4:
/* 609E4 8005FDE4 00046C03 */  sra        $t5, $a0, 0x10
/* 609E8 8005FDE8 86650000 */  lh         $a1, ($s3)
/* 609EC 8005FDEC 02C03025 */  or         $a2, $s6, $zero
/* 609F0 8005FDF0 0000B025 */  or         $s6, $zero, $zero
/* 609F4 8005FDF4 0C01782C */  jal        func_8005E0B0
/* 609F8 8005FDF8 01A02025 */   or        $a0, $t5, $zero
/* 609FC 8005FDFC 86620000 */  lh         $v0, ($s3)
/* 60A00 8005FE00 3C018018 */  lui        $at, %hi(D_801782E8)
/* 60A04 8005FE04 00027840 */  sll        $t7, $v0, 1
/* 60A08 8005FE08 002F0821 */  addu       $at, $at, $t7
/* 60A0C 8005FE0C A43182E8 */  sh         $s1, %lo(D_801782E8)($at)
/* 60A10 8005FE10 24580001 */  addiu      $t8, $v0, 1
/* 60A14 8005FE14 A6780000 */  sh         $t8, ($s3)
.L8005FE18:
/* 60A18 8005FE18 1640FF14 */  bnez       $s2, .L8005FA6C
/* 60A1C 8005FE1C 3C078018 */   lui       $a3, %hi(D_801783F0)
/* 60A20 8005FE20 3C198018 */  lui        $t9, %hi(D_801782DC)
/* 60A24 8005FE24 833982DC */  lb         $t9, %lo(D_801782DC)($t9)
/* 60A28 8005FE28 84E783F0 */  lh         $a3, %lo(D_801783F0)($a3)
/* 60A2C 8005FE2C 33280040 */  andi       $t0, $t9, 0x40
/* 60A30 8005FE30 1100009E */  beqz       $t0, .L800600AC
/* 60A34 8005FE34 24010002 */   addiu     $at, $zero, 2
/* 60A38 8005FE38 14E1FF0C */  bne        $a3, $at, .L8005FA6C
/* 60A3C 8005FE3C 00000000 */   nop
/* 60A40 8005FE40 1000009A */  b          .L800600AC
/* 60A44 8005FE44 00000000 */   nop
.L8005FE48:
/* 60A48 8005FE48 814A82DC */  lb         $t2, -0x7d24($t2)
/* 60A4C 8005FE4C 3C028018 */  lui        $v0, %hi(D_801783EC)
/* 60A50 8005FE50 3149000F */  andi       $t1, $t2, 0xf
/* 60A54 8005FE54 15200013 */  bnez       $t1, .L8005FEA4
/* 60A58 8005FE58 244283EC */   addiu     $v0, $v0, %lo(D_801783EC)
/* 60A5C 8005FE5C 3C0C800C */  lui        $t4, %hi(gButton_LTrig)
/* 60A60 8005FE60 3C0B800C */  lui        $t3, %hi(gButton_RTrig)
/* 60A64 8005FE64 956BE534 */  lhu        $t3, %lo(gButton_RTrig)($t3)
/* 60A68 8005FE68 958CE530 */  lhu        $t4, %lo(gButton_LTrig)($t4)
/* 60A6C 8005FE6C 3C0D800C */  lui        $t5, %hi(gButtonPress)
/* 60A70 8005FE70 95ADE4FC */  lhu        $t5, %lo(gButtonPress)($t5)
/* 60A74 8005FE74 018B7025 */  or         $t6, $t4, $t3
/* 60A78 8005FE78 01AE7824 */  and        $t7, $t5, $t6
/* 60A7C 8005FE7C 15E00010 */  bnez       $t7, .L8005FEC0
/* 60A80 8005FE80 3C188018 */   lui       $t8, %hi(D_801783F2)
/* 60A84 8005FE84 871883F2 */  lh         $t8, %lo(D_801783F2)($t8)
/* 60A88 8005FE88 2401FFFF */  addiu      $at, $zero, -1
/* 60A8C 8005FE8C 1301000C */  beq        $t8, $at, .L8005FEC0
/* 60A90 8005FE90 24192000 */   addiu     $t9, $zero, 0x2000
/* 60A94 8005FE94 A4B90000 */  sh         $t9, ($a1)
/* 60A98 8005FE98 3C018018 */  lui        $at, %hi(D_801783F2)
/* 60A9C 8005FE9C 10000083 */  b          .L800600AC
/* 60AA0 8005FEA0 A42083F2 */   sh        $zero, %lo(D_801783F2)($at)
.L8005FEA4:
/* 60AA4 8005FEA4 84480000 */  lh         $t0, ($v0)
/* 60AA8 8005FEA8 00000000 */  nop
/* 60AAC 8005FEAC 250AFFFF */  addiu      $t2, $t0, -1
/* 60AB0 8005FEB0 A44A0000 */  sh         $t2, ($v0)
/* 60AB4 8005FEB4 84490000 */  lh         $t1, ($v0)
/* 60AB8 8005FEB8 00000000 */  nop
/* 60ABC 8005FEBC 1D20007B */  bgtz       $t1, .L800600AC
.L8005FEC0:
/* 60AC0 8005FEC0 3C108018 */   lui       $s0, %hi(D_801783E8)
/* 60AC4 8005FEC4 261083E8 */  addiu      $s0, $s0, %lo(D_801783E8)
/* 60AC8 8005FEC8 3C0B8018 */  lui        $t3, %hi(D_801782D8)
/* 60ACC 8005FECC 8D6B82D8 */  lw         $t3, %lo(D_801782D8)($t3)
/* 60AD0 8005FED0 860C0000 */  lh         $t4, ($s0)
/* 60AD4 8005FED4 3C018018 */  lui        $at, %hi(D_801783EC)
/* 60AD8 8005FED8 018B6821 */  addu       $t5, $t4, $t3
/* 60ADC 8005FEDC 81B10000 */  lb         $s1, ($t5)
/* 60AE0 8005FEE0 A42083EC */  sh         $zero, %lo(D_801783EC)($at)
/* 60AE4 8005FEE4 2401FFFF */  addiu      $at, $zero, -1
/* 60AE8 8005FEE8 12210004 */  beq        $s1, $at, .L8005FEFC
/* 60AEC 8005FEEC 3C0E8018 */   lui       $t6, %hi(D_801783F2)
/* 60AF0 8005FEF0 85CE83F2 */  lh         $t6, %lo(D_801783F2)($t6)
/* 60AF4 8005FEF4 2401FFFF */  addiu      $at, $zero, -1
/* 60AF8 8005FEF8 15C10028 */  bne        $t6, $at, .L8005FF9C
.L8005FEFC:
/* 60AFC 8005FEFC 340F8000 */   ori       $t7, $zero, 0x8000
/* 60B00 8005FF00 3C01800D */  lui        $at, %hi(D_800D5824)
/* 60B04 8005FF04 A42F5824 */  sh         $t7, %lo(D_800D5824)($at)
/* 60B08 8005FF08 0C000CD3 */  jal        func_8000334C
/* 60B0C 8005FF0C 2404010E */   addiu     $a0, $zero, 0x10e
/* 60B10 8005FF10 3C038018 */  lui        $v1, %hi(D_80178438)
/* 60B14 8005FF14 94638438 */  lhu        $v1, %lo(D_80178438)($v1)
/* 60B18 8005FF18 3C028018 */  lui        $v0, 0x8018
/* 60B1C 8005FF1C 10600009 */  beqz       $v1, .L8005FF44
/* 60B20 8005FF20 240F0003 */   addiu     $t7, $zero, 3
/* 60B24 8005FF24 24050198 */  addiu      $a1, $zero, 0x198
/* 60B28 8005FF28 00650019 */  multu      $v1, $a1
/* 60B2C 8005FF2C 3C04800F */  lui        $a0, %hi(gActors)
/* 60B30 8005FF30 2484F510 */  addiu      $a0, $a0, %lo(gActors)
/* 60B34 8005FF34 24180002 */  addiu      $t8, $zero, 2
/* 60B38 8005FF38 0000C812 */  mflo       $t9
/* 60B3C 8005FF3C 00994021 */  addu       $t0, $a0, $t9
/* 60B40 8005FF40 A51800D0 */  sh         $t8, 0xd0($t0)
.L8005FF44:
/* 60B44 8005FF44 9442843A */  lhu        $v0, -0x7bc6($v0)
/* 60B48 8005FF48 3C04800F */  lui        $a0, %hi(gActors)
/* 60B4C 8005FF4C 2484F510 */  addiu      $a0, $a0, %lo(gActors)
/* 60B50 8005FF50 10400006 */  beqz       $v0, .L8005FF6C
/* 60B54 8005FF54 24050198 */   addiu     $a1, $zero, 0x198
/* 60B58 8005FF58 00450019 */  multu      $v0, $a1
/* 60B5C 8005FF5C 240A0002 */  addiu      $t2, $zero, 2
/* 60B60 8005FF60 00004812 */  mflo       $t1
/* 60B64 8005FF64 00896021 */  addu       $t4, $a0, $t1
/* 60B68 8005FF68 A58A00D0 */  sh         $t2, 0xd0($t4)
.L8005FF6C:
/* 60B6C 8005FF6C 3C038018 */  lui        $v1, %hi(D_8017843C)
/* 60B70 8005FF70 9463843C */  lhu        $v1, %lo(D_8017843C)($v1)
/* 60B74 8005FF74 00000000 */  nop
/* 60B78 8005FF78 10600006 */  beqz       $v1, .L8005FF94
/* 60B7C 8005FF7C 00000000 */   nop
/* 60B80 8005FF80 00650019 */  multu      $v1, $a1
/* 60B84 8005FF84 240B0005 */  addiu      $t3, $zero, 5
/* 60B88 8005FF88 00006812 */  mflo       $t5
/* 60B8C 8005FF8C 008D7021 */  addu       $t6, $a0, $t5
/* 60B90 8005FF90 A5CB00D0 */  sh         $t3, 0xd0($t6)
.L8005FF94:
/* 60B94 8005FF94 10000017 */  b          .L8005FFF4
/* 60B98 8005FF98 A6CF0000 */   sh        $t7, ($s6)
.L8005FF9C:
/* 60B9C 8005FF9C 0C020C43 */  jal        func_8008310C
/* 60BA0 8005FFA0 00000000 */   nop
/* 60BA4 8005FFA4 3C03800D */  lui        $v1, %hi(D_800D582C)
/* 60BA8 8005FFA8 2463582C */  addiu      $v1, $v1, %lo(D_800D582C)
/* 60BAC 8005FFAC 94790000 */  lhu        $t9, ($v1)
/* 60BB0 8005FFB0 3C01800D */  lui        $at, %hi(D_800D5828)
/* 60BB4 8005FFB4 27380001 */  addiu      $t8, $t9, 1
/* 60BB8 8005FFB8 A4780000 */  sh         $t8, ($v1)
/* 60BBC 8005FFBC A4205828 */  sh         $zero, %lo(D_800D5828)($at)
/* 60BC0 8005FFC0 3C148018 */  lui        $s4, %hi(D_801783F8)
/* 60BC4 8005FFC4 3C01800D */  lui        $at, %hi(D_800D5824)
/* 60BC8 8005FFC8 24084000 */  addiu      $t0, $zero, 0x4000
/* 60BCC 8005FFCC 269483F8 */  addiu      $s4, $s4, %lo(D_801783F8)
/* 60BD0 8005FFD0 A4285824 */  sh         $t0, %lo(D_800D5824)($at)
/* 60BD4 8005FFD4 86890000 */  lh         $t1, ($s4)
/* 60BD8 8005FFD8 3C138018 */  lui        $s3, %hi(D_801783EA)
/* 60BDC 8005FFDC 267383EA */  addiu      $s3, $s3, %lo(D_801783EA)
/* 60BE0 8005FFE0 240C0001 */  addiu      $t4, $zero, 1
/* 60BE4 8005FFE4 312ABFFF */  andi       $t2, $t1, 0xbfff
/* 60BE8 8005FFE8 A68A0000 */  sh         $t2, ($s4)
/* 60BEC 8005FFEC A6CC0000 */  sh         $t4, ($s6)
/* 60BF0 8005FFF0 A6600000 */  sh         $zero, ($s3)
.L8005FFF4:
/* 60BF4 8005FFF4 3C078018 */  lui        $a3, %hi(D_801783F0)
/* 60BF8 8005FFF8 84E783F0 */  lh         $a3, %lo(D_801783F0)($a3)
/* 60BFC 8005FFFC 1000002B */  b          .L800600AC
/* 60C00 80060000 00000000 */   nop
.L80060004:
/* 60C04 80060004 95AD8438 */  lhu        $t5, -0x7bc8($t5)
/* 60C08 80060008 3C0B8018 */  lui        $t3, %hi(D_8017843A)
/* 60C0C 8006000C 15A00027 */  bnez       $t5, .L800600AC
/* 60C10 80060010 00000000 */   nop
/* 60C14 80060014 956B843A */  lhu        $t3, %lo(D_8017843A)($t3)
/* 60C18 80060018 3C0E8018 */  lui        $t6, %hi(D_8017843C)
/* 60C1C 8006001C 15600023 */  bnez       $t3, .L800600AC
/* 60C20 80060020 00000000 */   nop
/* 60C24 80060024 95CE843C */  lhu        $t6, %lo(D_8017843C)($t6)
/* 60C28 80060028 3C068018 */  lui        $a2, %hi(D_80178418)
/* 60C2C 8006002C 15C0001F */  bnez       $t6, .L800600AC
/* 60C30 80060030 24C68418 */   addiu     $a2, $a2, %lo(D_80178418)
/* 60C34 80060034 84CF0002 */  lh         $t7, 2($a2)
/* 60C38 80060038 00002825 */  or         $a1, $zero, $zero
/* 60C3C 8006003C 11E0000F */  beqz       $t7, .L8006007C
/* 60C40 80060040 3C138018 */   lui       $s3, 0x8018
/* 60C44 80060044 3C148018 */  lui        $s4, %hi(D_801783F8)
/* 60C48 80060048 269483F8 */  addiu      $s4, $s4, %lo(D_801783F8)
.L8006004C:
/* 60C4C 8006004C 00052040 */  sll        $a0, $a1, 1
/* 60C50 80060050 24A50001 */  addiu      $a1, $a1, 1
/* 60C54 80060054 00054400 */  sll        $t0, $a1, 0x10
/* 60C58 80060058 02841021 */  addu       $v0, $s4, $a0
/* 60C5C 8006005C 00C41821 */  addu       $v1, $a2, $a0
/* 60C60 80060060 84590002 */  lh         $t9, 2($v0)
/* 60C64 80060064 84780002 */  lh         $t8, 2($v1)
/* 60C68 80060068 00082C03 */  sra        $a1, $t0, 0x10
/* 60C6C 8006006C 28A1000F */  slti       $at, $a1, 0xf
/* 60C70 80060070 A4590000 */  sh         $t9, ($v0)
/* 60C74 80060074 1420FFF5 */  bnez       $at, .L8006004C
/* 60C78 80060078 A4780000 */   sh        $t8, ($v1)
.L8006007C:
/* 60C7C 8006007C 3C148018 */  lui        $s4, %hi(D_801783F8)
/* 60C80 80060080 269483F8 */  addiu      $s4, $s4, %lo(D_801783F8)
/* 60C84 80060084 00052040 */  sll        $a0, $a1, 1
/* 60C88 80060088 02845021 */  addu       $t2, $s4, $a0
/* 60C8C 8006008C A5400000 */  sh         $zero, ($t2)
/* 60C90 80060090 00C46021 */  addu       $t4, $a2, $a0
/* 60C94 80060094 A5800000 */  sh         $zero, ($t4)
/* 60C98 80060098 A6C00000 */  sh         $zero, ($s6)
/* 60C9C 8006009C 267383EA */  addiu      $s3, $s3, -0x7c16
/* 60CA0 800600A0 86C70000 */  lh         $a3, ($s6)
/* 60CA4 800600A4 A6600000 */  sh         $zero, ($s3)
/* 60CA8 800600A8 A6000000 */  sh         $zero, ($s0)
.L800600AC:
/* 60CAC 800600AC 18E00004 */  blez       $a3, .L800600C0
/* 60CB0 800600B0 8FBF0034 */   lw        $ra, 0x34($sp)
/* 60CB4 800600B4 0C017C22 */  jal        func_8005F088
/* 60CB8 800600B8 00000000 */   nop
/* 60CBC 800600BC 8FBF0034 */  lw         $ra, 0x34($sp)
.L800600C0:
/* 60CC0 800600C0 8FB00018 */  lw         $s0, 0x18($sp)
/* 60CC4 800600C4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 60CC8 800600C8 8FB20020 */  lw         $s2, 0x20($sp)
/* 60CCC 800600CC 8FB30024 */  lw         $s3, 0x24($sp)
/* 60CD0 800600D0 8FB40028 */  lw         $s4, 0x28($sp)
/* 60CD4 800600D4 8FB5002C */  lw         $s5, 0x2c($sp)
/* 60CD8 800600D8 8FB60030 */  lw         $s6, 0x30($sp)
/* 60CDC 800600DC 03E00008 */  jr         $ra
/* 60CE0 800600E0 27BD0038 */   addiu     $sp, $sp, 0x38
/* 60CE4 800600E4 00000000 */  nop
/* 60CE8 800600E8 00000000 */  nop
/* 60CEC 800600EC 00000000 */  nop

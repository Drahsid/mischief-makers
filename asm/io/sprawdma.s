.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSpRawStartDma
/* AB9D0 800AADD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB9D4 800AADD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB9D8 800AADD8 AFA40018 */  sw         $a0, 0x18($sp)
/* AB9DC 800AADDC AFA5001C */  sw         $a1, 0x1c($sp)
/* AB9E0 800AADE0 AFA60020 */  sw         $a2, 0x20($sp)
/* AB9E4 800AADE4 AFA70024 */  sw         $a3, 0x24($sp)
/* AB9E8 800AADE8 8FAE001C */  lw         $t6, 0x1c($sp)
/* AB9EC 800AADEC 31CF0007 */  andi       $t7, $t6, 7
/* AB9F0 800AADF0 15E00003 */  bnez       $t7, .L800AAE00
/* AB9F4 800AADF4 00000000 */   nop
/* AB9F8 800AADF8 10000007 */  b          .L800AAE18
/* AB9FC 800AADFC 00000000 */   nop
.L800AAE00:
/* ABA00 800AAE00 3C04800F */  lui        $a0, %hi(sprawdma_rodata_0000)
/* ABA04 800AAE04 3C05800F */  lui        $a1, %hi(sprawdma_rodata_0018)
/* ABA08 800AAE08 24A5DF28 */  addiu      $a1, $a1, %lo(sprawdma_rodata_0018)
/* ABA0C 800AAE0C 2484DF10 */  addiu      $a0, $a0, %lo(sprawdma_rodata_0000)
/* ABA10 800AAE10 0C026E74 */  jal        __assert
/* ABA14 800AAE14 2406003A */   addiu     $a2, $zero, 0x3a
.L800AAE18:
/* ABA18 800AAE18 8FB80020 */  lw         $t8, 0x20($sp)
/* ABA1C 800AAE1C 33190007 */  andi       $t9, $t8, 7
/* ABA20 800AAE20 17200003 */  bnez       $t9, .L800AAE30
/* ABA24 800AAE24 00000000 */   nop
/* ABA28 800AAE28 10000007 */  b          .L800AAE48
/* ABA2C 800AAE2C 00000000 */   nop
.L800AAE30:
/* ABA30 800AAE30 3C04800F */  lui        $a0, %hi(sprawdma_rodata_002C)
/* ABA34 800AAE34 3C05800F */  lui        $a1, %hi(sprawdma_rodata_0048)
/* ABA38 800AAE38 24A5DF58 */  addiu      $a1, $a1, %lo(sprawdma_rodata_0048)
/* ABA3C 800AAE3C 2484DF3C */  addiu      $a0, $a0, %lo(sprawdma_rodata_002C)
/* ABA40 800AAE40 0C026E74 */  jal        __assert
/* ABA44 800AAE44 2406003B */   addiu     $a2, $zero, 0x3b
.L800AAE48:
/* ABA48 800AAE48 8FA80024 */  lw         $t0, 0x24($sp)
/* ABA4C 800AAE4C 31090007 */  andi       $t1, $t0, 7
/* ABA50 800AAE50 15200003 */  bnez       $t1, .L800AAE60
/* ABA54 800AAE54 00000000 */   nop
/* ABA58 800AAE58 10000007 */  b          .L800AAE78
/* ABA5C 800AAE5C 00000000 */   nop
.L800AAE60:
/* ABA60 800AAE60 3C04800F */  lui        $a0, %hi(sprawdma_rodata_005C)
/* ABA64 800AAE64 3C05800F */  lui        $a1, %hi(sprawdma_rodata_0070)
/* ABA68 800AAE68 24A5DF80 */  addiu      $a1, $a1, %lo(sprawdma_rodata_0070)
/* ABA6C 800AAE6C 2484DF6C */  addiu      $a0, $a0, %lo(sprawdma_rodata_005C)
/* ABA70 800AAE70 0C026E74 */  jal        __assert
/* ABA74 800AAE74 2406003C */   addiu     $a2, $zero, 0x3c
.L800AAE78:
/* ABA78 800AAE78 0C02ABC0 */  jal        __osSpDeviceBusy
/* ABA7C 800AAE7C 00000000 */   nop
/* ABA80 800AAE80 10400003 */  beqz       $v0, .L800AAE90
/* ABA84 800AAE84 00000000 */   nop
/* ABA88 800AAE88 10000018 */  b          .L800AAEEC
/* ABA8C 800AAE8C 2402FFFF */   addiu     $v0, $zero, -1
.L800AAE90:
/* ABA90 800AAE90 8FAA001C */  lw         $t2, 0x1c($sp)
/* ABA94 800AAE94 3C0BA404 */  lui        $t3, 0xa404
/* ABA98 800AAE98 AD6A0000 */  sw         $t2, ($t3)
/* ABA9C 800AAE9C 0C026964 */  jal        osVirtualToPhysical
/* ABAA0 800AAEA0 8FA40020 */   lw        $a0, 0x20($sp)
/* ABAA4 800AAEA4 3C0CA404 */  lui        $t4, %hi(D_A4040004)
/* ABAA8 800AAEA8 AD820004 */  sw         $v0, %lo(D_A4040004)($t4)
/* ABAAC 800AAEAC 8FAD0018 */  lw         $t5, 0x18($sp)
/* ABAB0 800AAEB0 15A00006 */  bnez       $t5, .L800AAECC
/* ABAB4 800AAEB4 00000000 */   nop
/* ABAB8 800AAEB8 8FAE0024 */  lw         $t6, 0x24($sp)
/* ABABC 800AAEBC 3C18A404 */  lui        $t8, %hi(D_A404000C)
/* ABAC0 800AAEC0 25CFFFFF */  addiu      $t7, $t6, -1
/* ABAC4 800AAEC4 10000005 */  b          .L800AAEDC
/* ABAC8 800AAEC8 AF0F000C */   sw        $t7, %lo(D_A404000C)($t8)
.L800AAECC:
/* ABACC 800AAECC 8FB90024 */  lw         $t9, 0x24($sp)
/* ABAD0 800AAED0 3C09A404 */  lui        $t1, %hi(D_A4040008)
/* ABAD4 800AAED4 2728FFFF */  addiu      $t0, $t9, -1
/* ABAD8 800AAED8 AD280008 */  sw         $t0, %lo(D_A4040008)($t1)
.L800AAEDC:
/* ABADC 800AAEDC 10000003 */  b          .L800AAEEC
/* ABAE0 800AAEE0 00001025 */   or        $v0, $zero, $zero
/* ABAE4 800AAEE4 10000001 */  b          .L800AAEEC
/* ABAE8 800AAEE8 00000000 */   nop
.L800AAEEC:
/* ABAEC 800AAEEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* ABAF0 800AAEF0 27BD0018 */  addiu      $sp, $sp, 0x18
/* ABAF4 800AAEF4 03E00008 */  jr         $ra
/* ABAF8 800AAEF8 00000000 */   nop
/* ABAFC 800AAEFC 00000000 */  nop

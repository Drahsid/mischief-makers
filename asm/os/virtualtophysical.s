.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osVirtualToPhysical
/* 9B190 8009A590 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9B194 8009A594 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B198 8009A598 AFA40018 */  sw         $a0, 0x18($sp)
/* 9B19C 8009A59C 8FAE0018 */  lw         $t6, 0x18($sp)
/* 9B1A0 8009A5A0 3C018000 */  lui        $at, 0x8000
/* 9B1A4 8009A5A4 01C1082B */  sltu       $at, $t6, $at
/* 9B1A8 8009A5A8 1420000D */  bnez       $at, .L8009A5E0
/* 9B1AC 8009A5AC 00000000 */   nop
/* 9B1B0 8009A5B0 3C01A000 */  lui        $at, 0xa000
/* 9B1B4 8009A5B4 01C1082B */  sltu       $at, $t6, $at
/* 9B1B8 8009A5B8 10200009 */  beqz       $at, .L8009A5E0
/* 9B1BC 8009A5BC 00000000 */   nop
/* 9B1C0 8009A5C0 8FA20018 */  lw         $v0, 0x18($sp)
/* 9B1C4 8009A5C4 3C011FFF */  lui        $at, 0x1fff
/* 9B1C8 8009A5C8 3421FFFF */  ori        $at, $at, 0xffff
/* 9B1CC 8009A5CC 00417824 */  and        $t7, $v0, $at
/* 9B1D0 8009A5D0 1000001A */  b          .L8009A63C
/* 9B1D4 8009A5D4 01E01025 */   or        $v0, $t7, $zero
/* 9B1D8 8009A5D8 10000016 */  b          .L8009A634
/* 9B1DC 8009A5DC 00000000 */   nop
.L8009A5E0:
/* 9B1E0 8009A5E0 8FB80018 */  lw         $t8, 0x18($sp)
/* 9B1E4 8009A5E4 3C01A000 */  lui        $at, 0xa000
/* 9B1E8 8009A5E8 0301082B */  sltu       $at, $t8, $at
/* 9B1EC 8009A5EC 1420000D */  bnez       $at, .L8009A624
/* 9B1F0 8009A5F0 00000000 */   nop
/* 9B1F4 8009A5F4 3C01C000 */  lui        $at, 0xc000
/* 9B1F8 8009A5F8 0301082B */  sltu       $at, $t8, $at
/* 9B1FC 8009A5FC 10200009 */  beqz       $at, .L8009A624
/* 9B200 8009A600 00000000 */   nop
/* 9B204 8009A604 8FA20018 */  lw         $v0, 0x18($sp)
/* 9B208 8009A608 3C011FFF */  lui        $at, 0x1fff
/* 9B20C 8009A60C 3421FFFF */  ori        $at, $at, 0xffff
/* 9B210 8009A610 0041C824 */  and        $t9, $v0, $at
/* 9B214 8009A614 10000009 */  b          .L8009A63C
/* 9B218 8009A618 03201025 */   or        $v0, $t9, $zero
/* 9B21C 8009A61C 10000005 */  b          .L8009A634
/* 9B220 8009A620 00000000 */   nop
.L8009A624:
/* 9B224 8009A624 0C02A9E0 */  jal        __osProbeTLB
/* 9B228 8009A628 8FA40018 */   lw        $a0, 0x18($sp)
/* 9B22C 8009A62C 10000003 */  b          .L8009A63C
/* 9B230 8009A630 00000000 */   nop
.L8009A634:
/* 9B234 8009A634 10000001 */  b          .L8009A63C
/* 9B238 8009A638 00000000 */   nop
.L8009A63C:
/* 9B23C 8009A63C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B240 8009A640 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9B244 8009A644 03E00008 */  jr         $ra
/* 9B248 8009A648 00000000 */   nop
/* 9B24C 8009A64C 00000000 */  nop

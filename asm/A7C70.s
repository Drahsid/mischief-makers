.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osPiRawReadIo
/* A7C70 800A7070 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A7C74 800A7074 AFBF001C */  sw         $ra, 0x1c($sp)
/* A7C78 800A7078 AFA40028 */  sw         $a0, 0x28($sp)
/* A7C7C 800A707C AFA5002C */  sw         $a1, 0x2c($sp)
/* A7C80 800A7080 AFB00018 */  sw         $s0, 0x18($sp)
/* A7C84 800A7084 8FAE0028 */  lw         $t6, 0x28($sp)
/* A7C88 800A7088 31CF0003 */  andi       $t7, $t6, 3
/* A7C8C 800A708C 11E00007 */  beqz       $t7, .L800A70AC
/* A7C90 800A7090 00000000 */   nop
/* A7C94 800A7094 24040013 */  addiu      $a0, $zero, 0x13
/* A7C98 800A7098 24050001 */  addiu      $a1, $zero, 1
/* A7C9C 800A709C 0C0297B4 */  jal        __osError
/* A7CA0 800A70A0 8FA60028 */   lw        $a2, 0x28($sp)
/* A7CA4 800A70A4 10000023 */  b          .L800A7134
/* A7CA8 800A70A8 2402FFFF */   addiu     $v0, $zero, -1
.L800A70AC:
/* A7CAC 800A70AC 8FB8002C */  lw         $t8, 0x2c($sp)
/* A7CB0 800A70B0 13000003 */  beqz       $t8, .L800A70C0
/* A7CB4 800A70B4 00000000 */   nop
/* A7CB8 800A70B8 10000007 */  b          .L800A70D8
/* A7CBC 800A70BC 00000000 */   nop
.L800A70C0:
/* A7CC0 800A70C0 3C04800F */  lui        $a0, %hi(D_800EDB70)
/* A7CC4 800A70C4 3C05800F */  lui        $a1, %hi(D_800EDB80)
/* A7CC8 800A70C8 24A5DB80 */  addiu      $a1, $a1, %lo(D_800EDB80)
/* A7CCC 800A70CC 2484DB70 */  addiu      $a0, $a0, %lo(D_800EDB70)
/* A7CD0 800A70D0 0C026E74 */  jal        __assert
/* A7CD4 800A70D4 2406003D */   addiu     $a2, $zero, 0x3d
.L800A70D8:
/* A7CD8 800A70D8 3C19A460 */  lui        $t9, %hi(D_A4600010)
/* A7CDC 800A70DC 8F300010 */  lw         $s0, %lo(D_A4600010)($t9)
/* A7CE0 800A70E0 32080003 */  andi       $t0, $s0, 3
/* A7CE4 800A70E4 11000006 */  beqz       $t0, .L800A7100
/* A7CE8 800A70E8 00000000 */   nop
.L800A70EC:
/* A7CEC 800A70EC 3C09A460 */  lui        $t1, %hi(D_A4600010)
/* A7CF0 800A70F0 8D300010 */  lw         $s0, %lo(D_A4600010)($t1)
/* A7CF4 800A70F4 320A0003 */  andi       $t2, $s0, 3
/* A7CF8 800A70F8 1540FFFC */  bnez       $t2, .L800A70EC
/* A7CFC 800A70FC 00000000 */   nop
.L800A7100:
/* A7D00 800A7100 3C0B8000 */  lui        $t3, %hi(osRomBase)
/* A7D04 800A7104 8D6B0308 */  lw         $t3, %lo(osRomBase)($t3)
/* A7D08 800A7108 8FAC0028 */  lw         $t4, 0x28($sp)
/* A7D0C 800A710C 3C01A000 */  lui        $at, 0xa000
/* A7D10 800A7110 8FB8002C */  lw         $t8, 0x2c($sp)
/* A7D14 800A7114 016C6825 */  or         $t5, $t3, $t4
/* A7D18 800A7118 01A17025 */  or         $t6, $t5, $at
/* A7D1C 800A711C 8DCF0000 */  lw         $t7, ($t6)
/* A7D20 800A7120 AF0F0000 */  sw         $t7, ($t8)
/* A7D24 800A7124 10000003 */  b          .L800A7134
/* A7D28 800A7128 00001025 */   or        $v0, $zero, $zero
/* A7D2C 800A712C 10000001 */  b          .L800A7134
/* A7D30 800A7130 00000000 */   nop
.L800A7134:
/* A7D34 800A7134 8FBF001C */  lw         $ra, 0x1c($sp)
/* A7D38 800A7138 8FB00018 */  lw         $s0, 0x18($sp)
/* A7D3C 800A713C 27BD0028 */  addiu      $sp, $sp, 0x28
/* A7D40 800A7140 03E00008 */  jr         $ra
/* A7D44 800A7144 00000000 */   nop
/* A7D48 800A7148 00000000 */  nop
/* A7D4C 800A714C 00000000 */  nop

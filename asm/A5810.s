.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A4C10
/* A5810 800A4C10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A5814 800A4C14 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5818 800A4C18 AFA40020 */  sw         $a0, 0x20($sp)
/* A581C 800A4C1C AFA50024 */  sw         $a1, 0x24($sp)
/* A5820 800A4C20 AFA60028 */  sw         $a2, 0x28($sp)
/* A5824 800A4C24 AFA7002C */  sw         $a3, 0x2c($sp)
/* A5828 800A4C28 0C02CB32 */  jal        func_800B2CC8
/* A582C 800A4C2C 8FA40020 */   lw        $a0, 0x20($sp)
/* A5830 800A4C30 C7A40028 */  lwc1       $f4, 0x28($sp)
/* A5834 800A4C34 C7A60024 */  lwc1       $f6, 0x24($sp)
/* A5838 800A4C38 3C014000 */  lui        $at, 0x4000
/* A583C 800A4C3C 44815000 */  mtc1       $at, $f10
/* A5840 800A4C40 46062201 */  sub.s      $f8, $f4, $f6
/* A5844 800A4C44 8FAE0020 */  lw         $t6, 0x20($sp)
/* A5848 800A4C48 46085403 */  div.s      $f16, $f10, $f8
/* A584C 800A4C4C E5D00000 */  swc1       $f16, ($t6)
/* A5850 800A4C50 C7B20030 */  lwc1       $f18, 0x30($sp)
/* A5854 800A4C54 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* A5858 800A4C58 3C014000 */  lui        $at, 0x4000
/* A585C 800A4C5C 44815000 */  mtc1       $at, $f10
/* A5860 800A4C60 46049181 */  sub.s      $f6, $f18, $f4
/* A5864 800A4C64 8FAF0020 */  lw         $t7, 0x20($sp)
/* A5868 800A4C68 46065203 */  div.s      $f8, $f10, $f6
/* A586C 800A4C6C E5E80014 */  swc1       $f8, 0x14($t7)
/* A5870 800A4C70 C7B00038 */  lwc1       $f16, 0x38($sp)
/* A5874 800A4C74 C7B20034 */  lwc1       $f18, 0x34($sp)
/* A5878 800A4C78 3C01C000 */  lui        $at, 0xc000
/* A587C 800A4C7C 44815000 */  mtc1       $at, $f10
/* A5880 800A4C80 46128101 */  sub.s      $f4, $f16, $f18
/* A5884 800A4C84 8FB80020 */  lw         $t8, 0x20($sp)
/* A5888 800A4C88 46045183 */  div.s      $f6, $f10, $f4
/* A588C 800A4C8C E7060028 */  swc1       $f6, 0x28($t8)
/* A5890 800A4C90 C7A80028 */  lwc1       $f8, 0x28($sp)
/* A5894 800A4C94 C7B00024 */  lwc1       $f16, 0x24($sp)
/* A5898 800A4C98 8FB90020 */  lw         $t9, 0x20($sp)
/* A589C 800A4C9C 46104480 */  add.s      $f18, $f8, $f16
/* A58A0 800A4CA0 46104101 */  sub.s      $f4, $f8, $f16
/* A58A4 800A4CA4 46009287 */  neg.s      $f10, $f18
/* A58A8 800A4CA8 46045183 */  div.s      $f6, $f10, $f4
/* A58AC 800A4CAC E7260030 */  swc1       $f6, 0x30($t9)
/* A58B0 800A4CB0 C7B20030 */  lwc1       $f18, 0x30($sp)
/* A58B4 800A4CB4 C7A8002C */  lwc1       $f8, 0x2c($sp)
/* A58B8 800A4CB8 8FA80020 */  lw         $t0, 0x20($sp)
/* A58BC 800A4CBC 46089400 */  add.s      $f16, $f18, $f8
/* A58C0 800A4CC0 46089101 */  sub.s      $f4, $f18, $f8
/* A58C4 800A4CC4 46008287 */  neg.s      $f10, $f16
/* A58C8 800A4CC8 46045183 */  div.s      $f6, $f10, $f4
/* A58CC 800A4CCC E5060034 */  swc1       $f6, 0x34($t0)
/* A58D0 800A4CD0 C7B00038 */  lwc1       $f16, 0x38($sp)
/* A58D4 800A4CD4 C7B20034 */  lwc1       $f18, 0x34($sp)
/* A58D8 800A4CD8 8FA90020 */  lw         $t1, 0x20($sp)
/* A58DC 800A4CDC 46128200 */  add.s      $f8, $f16, $f18
/* A58E0 800A4CE0 46128101 */  sub.s      $f4, $f16, $f18
/* A58E4 800A4CE4 46004287 */  neg.s      $f10, $f8
/* A58E8 800A4CE8 46045183 */  div.s      $f6, $f10, $f4
/* A58EC 800A4CEC E5260038 */  swc1       $f6, 0x38($t1)
/* A58F0 800A4CF0 3C013F80 */  lui        $at, 0x3f80
/* A58F4 800A4CF4 44814000 */  mtc1       $at, $f8
/* A58F8 800A4CF8 8FAA0020 */  lw         $t2, 0x20($sp)
/* A58FC 800A4CFC E548003C */  swc1       $f8, 0x3c($t2)
/* A5900 800A4D00 AFA0001C */  sw         $zero, 0x1c($sp)
.L800A4D04:
/* A5904 800A4D04 AFA00018 */  sw         $zero, 0x18($sp)
.L800A4D08:
/* A5908 800A4D08 8FAC001C */  lw         $t4, 0x1c($sp)
/* A590C 800A4D0C 8FAB0020 */  lw         $t3, 0x20($sp)
/* A5910 800A4D10 8FAF0018 */  lw         $t7, 0x18($sp)
/* A5914 800A4D14 000C6900 */  sll        $t5, $t4, 4
/* A5918 800A4D18 016D7021 */  addu       $t6, $t3, $t5
/* A591C 800A4D1C 000FC080 */  sll        $t8, $t7, 2
/* A5920 800A4D20 01D8C821 */  addu       $t9, $t6, $t8
/* A5924 800A4D24 C7300000 */  lwc1       $f16, ($t9)
/* A5928 800A4D28 C7B2003C */  lwc1       $f18, 0x3c($sp)
/* A592C 800A4D2C 46128282 */  mul.s      $f10, $f16, $f18
/* A5930 800A4D30 E72A0000 */  swc1       $f10, ($t9)
/* A5934 800A4D34 8FA80018 */  lw         $t0, 0x18($sp)
/* A5938 800A4D38 25090001 */  addiu      $t1, $t0, 1
/* A593C 800A4D3C 29210004 */  slti       $at, $t1, 4
/* A5940 800A4D40 1420FFF1 */  bnez       $at, .L800A4D08
/* A5944 800A4D44 AFA90018 */   sw        $t1, 0x18($sp)
/* A5948 800A4D48 8FAA001C */  lw         $t2, 0x1c($sp)
/* A594C 800A4D4C 254C0001 */  addiu      $t4, $t2, 1
/* A5950 800A4D50 29810004 */  slti       $at, $t4, 4
/* A5954 800A4D54 1420FFEB */  bnez       $at, .L800A4D04
/* A5958 800A4D58 AFAC001C */   sw        $t4, 0x1c($sp)
/* A595C 800A4D5C 10000001 */  b          .L800A4D64
/* A5960 800A4D60 00000000 */   nop
.L800A4D64:
/* A5964 800A4D64 8FBF0014 */  lw         $ra, 0x14($sp)
/* A5968 800A4D68 27BD0020 */  addiu      $sp, $sp, 0x20
/* A596C 800A4D6C 03E00008 */  jr         $ra
/* A5970 800A4D70 00000000 */   nop

glabel func_800A4D74
/* A5974 800A4D74 27BDFF98 */  addiu      $sp, $sp, -0x68
/* A5978 800A4D78 AFBF0024 */  sw         $ra, 0x24($sp)
/* A597C 800A4D7C AFA40068 */  sw         $a0, 0x68($sp)
/* A5980 800A4D80 AFA5006C */  sw         $a1, 0x6c($sp)
/* A5984 800A4D84 AFA60070 */  sw         $a2, 0x70($sp)
/* A5988 800A4D88 AFA70074 */  sw         $a3, 0x74($sp)
/* A598C 800A4D8C C7A40078 */  lwc1       $f4, 0x78($sp)
/* A5990 800A4D90 C7A6007C */  lwc1       $f6, 0x7c($sp)
/* A5994 800A4D94 C7A80080 */  lwc1       $f8, 0x80($sp)
/* A5998 800A4D98 C7AA0084 */  lwc1       $f10, 0x84($sp)
/* A599C 800A4D9C 27A40028 */  addiu      $a0, $sp, 0x28
/* A59A0 800A4DA0 8FA5006C */  lw         $a1, 0x6c($sp)
/* A59A4 800A4DA4 8FA60070 */  lw         $a2, 0x70($sp)
/* A59A8 800A4DA8 8FA70074 */  lw         $a3, 0x74($sp)
/* A59AC 800A4DAC E7A40010 */  swc1       $f4, 0x10($sp)
/* A59B0 800A4DB0 E7A60014 */  swc1       $f6, 0x14($sp)
/* A59B4 800A4DB4 E7A80018 */  swc1       $f8, 0x18($sp)
/* A59B8 800A4DB8 0C029304 */  jal        func_800A4C10
/* A59BC 800A4DBC E7AA001C */   swc1      $f10, 0x1c($sp)
/* A59C0 800A4DC0 27A40028 */  addiu      $a0, $sp, 0x28
/* A59C4 800A4DC4 0C02CA98 */  jal        func_800B2A60
/* A59C8 800A4DC8 8FA50068 */   lw        $a1, 0x68($sp)
/* A59CC 800A4DCC 10000001 */  b          .L800A4DD4
/* A59D0 800A4DD0 00000000 */   nop
.L800A4DD4:
/* A59D4 800A4DD4 8FBF0024 */  lw         $ra, 0x24($sp)
/* A59D8 800A4DD8 27BD0068 */  addiu      $sp, $sp, 0x68
/* A59DC 800A4DDC 03E00008 */  jr         $ra
/* A59E0 800A4DE0 00000000 */   nop
/* A59E4 800A4DE4 00000000 */  nop
/* A59E8 800A4DE8 00000000 */  nop
/* A59EC 800A4DEC 00000000 */  nop

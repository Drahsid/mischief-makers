glabel func_8008E1A0
/* 8EDA0 8008E1A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8EDA4 8008E1A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8EDA8 8008E1A8 AFA40020 */  sw         $a0, 0x20($sp)
/* 8EDAC 8008E1AC 00803825 */  or         $a3, $a0, $zero
/* 8EDB0 8008E1B0 30E4FFFF */  andi       $a0, $a3, 0xffff
/* 8EDB4 8008E1B4 0C0237C8 */  jal        func_8008DF20
/* 8EDB8 8008E1B8 A7A70022 */   sh        $a3, 0x22($sp)
/* 8EDBC 8008E1BC 97A70022 */  lhu        $a3, 0x22($sp)
/* 8EDC0 8008E1C0 3C0F800F */  lui        $t7, 0x800f
/* 8EDC4 8008E1C4 00077080 */  sll        $t6, $a3, 2
/* 8EDC8 8008E1C8 01C77023 */  subu       $t6, $t6, $a3
/* 8EDCC 8008E1CC 000E7080 */  sll        $t6, $t6, 2
/* 8EDD0 8008E1D0 01C77021 */  addu       $t6, $t6, $a3
/* 8EDD4 8008E1D4 000E7080 */  sll        $t6, $t6, 2
/* 8EDD8 8008E1D8 01C77023 */  subu       $t6, $t6, $a3
/* 8EDDC 8008E1DC 000E70C0 */  sll        $t6, $t6, 3
/* 8EDE0 8008E1E0 25EFF510 */  addiu      $t7, $t7, -0xaf0
/* 8EDE4 8008E1E4 01CF1821 */  addu       $v1, $t6, $t7
/* 8EDE8 8008E1E8 946200D0 */  lhu        $v0, 0xd0($v1)
/* 8EDEC 8008E1EC 24010010 */  addiu      $at, $zero, 0x10
/* 8EDF0 8008E1F0 10410005 */  beq        $v0, $at, .L8008E208
/* 8EDF4 8008E1F4 24010070 */   addiu     $at, $zero, 0x70
/* 8EDF8 8008E1F8 1041001E */  beq        $v0, $at, .L8008E274
/* 8EDFC 8008E1FC 00002825 */   or        $a1, $zero, $zero
/* 8EE00 8008E200 10000040 */  b          .L8008E304
/* 8EE04 8008E204 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008E208:
/* 8EE08 8008E208 24010001 */  addiu      $at, $zero, 1
/* 8EE0C 8008E20C 10410009 */  beq        $v0, $at, .L8008E234
/* 8EE10 8008E210 24010002 */   addiu     $at, $zero, 2
/* 8EE14 8008E214 1041000B */  beq        $v0, $at, .L8008E244
/* 8EE18 8008E218 24010003 */   addiu     $at, $zero, 3
/* 8EE1C 8008E21C 1041000D */  beq        $v0, $at, .L8008E254
/* 8EE20 8008E220 24010004 */   addiu     $at, $zero, 4
/* 8EE24 8008E224 1041000F */  beq        $v0, $at, .L8008E264
/* 8EE28 8008E228 00000000 */   nop
/* 8EE2C 8008E22C 10000035 */  b          .L8008E304
/* 8EE30 8008E230 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008E234:
/* 8EE34 8008E234 0C0233D8 */  jal        func_8008CF60
/* 8EE38 8008E238 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 8EE3C 8008E23C 10000031 */  b          .L8008E304
/* 8EE40 8008E240 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008E244:
/* 8EE44 8008E244 0C02347A */  jal        func_8008D1E8
/* 8EE48 8008E248 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 8EE4C 8008E24C 1000002D */  b          .L8008E304
/* 8EE50 8008E250 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008E254:
/* 8EE54 8008E254 0C0234AC */  jal        func_8008D2B0
/* 8EE58 8008E258 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 8EE5C 8008E25C 10000029 */  b          .L8008E304
/* 8EE60 8008E260 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008E264:
/* 8EE64 8008E264 0C0234C8 */  jal        func_8008D320
/* 8EE68 8008E268 30E4FFFF */   andi      $a0, $a3, 0xffff
/* 8EE6C 8008E26C 10000025 */  b          .L8008E304
/* 8EE70 8008E270 8FBF0014 */   lw        $ra, 0x14($sp)
.L8008E274:
/* 8EE74 8008E274 8C640184 */  lw         $a0, 0x184($v1)
/* 8EE78 8008E278 24062000 */  addiu      $a2, $zero, 0x2000
/* 8EE7C 8008E27C AFA30018 */  sw         $v1, 0x18($sp)
/* 8EE80 8008E280 0C00A607 */  jal        func_8002981C
/* 8EE84 8008E284 A7A70022 */   sh        $a3, 0x22($sp)
/* 8EE88 8008E288 8FA30018 */  lw         $v1, 0x18($sp)
/* 8EE8C 8008E28C 3C04800C */  lui        $a0, %hi(D_800BE4F8)
/* 8EE90 8008E290 AC620184 */  sw         $v0, 0x184($v1)
/* 8EE94 8008E294 3C18800C */  lui        $t8, %hi(D_800BE50C)
/* 8EE98 8008E298 9718E50C */  lhu        $t8, %lo(D_800BE50C)($t8)
/* 8EE9C 8008E29C 9484E4F8 */  lhu        $a0, %lo(D_800BE4F8)($a0)
/* 8EEA0 8008E2A0 97A70022 */  lhu        $a3, 0x22($sp)
/* 8EEA4 8008E2A4 0098C824 */  and        $t9, $a0, $t8
/* 8EEA8 8008E2A8 13200003 */  beqz       $t9, .L8008E2B8
/* 8EEAC 8008E2AC 3C09800C */   lui       $t1, %hi(D_800BE510)
/* 8EEB0 8008E2B0 3C08FFFE */  lui        $t0, 0xfffe
/* 8EEB4 8008E2B4 AC680184 */  sw         $t0, 0x184($v1)
.L8008E2B8:
/* 8EEB8 8008E2B8 9529E510 */  lhu        $t1, %lo(D_800BE510)($t1)
/* 8EEBC 8008E2BC 3C0C800C */  lui        $t4, 0x800c
/* 8EEC0 8008E2C0 00895024 */  and        $t2, $a0, $t1
/* 8EEC4 8008E2C4 11400003 */  beqz       $t2, .L8008E2D4
/* 8EEC8 8008E2C8 3C0D800C */   lui       $t5, %hi(D_800BE518)
/* 8EECC 8008E2CC 3C0B0002 */  lui        $t3, 2
/* 8EED0 8008E2D0 AC6B0184 */  sw         $t3, 0x184($v1)
.L8008E2D4:
/* 8EED4 8008E2D4 958CE4FC */  lhu        $t4, -0x1b04($t4)
/* 8EED8 8008E2D8 95ADE518 */  lhu        $t5, %lo(D_800BE518)($t5)
/* 8EEDC 8008E2DC 30E4FFFF */  andi       $a0, $a3, 0xffff
/* 8EEE0 8008E2E0 018D7024 */  and        $t6, $t4, $t5
/* 8EEE4 8008E2E4 11C00007 */  beqz       $t6, .L8008E304
/* 8EEE8 8008E2E8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 8EEEC 8008E2EC 0C02342A */  jal        func_8008D0A8
/* 8EEF0 8008E2F0 AFA30018 */   sw        $v1, 0x18($sp)
/* 8EEF4 8008E2F4 8FA30018 */  lw         $v1, 0x18($sp)
/* 8EEF8 8008E2F8 3C0F0004 */  lui        $t7, 4
/* 8EEFC 8008E2FC AC6F0188 */  sw         $t7, 0x188($v1)
/* 8EF00 8008E300 8FBF0014 */  lw         $ra, 0x14($sp)
.L8008E304:
/* 8EF04 8008E304 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8EF08 8008E308 03E00008 */  jr         $ra
/* 8EF0C 8008E30C 00000000 */   nop

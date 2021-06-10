glabel func_800A41E0
/* A4DE0 800A41E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A4DE4 800A41E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A4DE8 800A41E8 AFA40018 */  sw         $a0, 0x18($sp)
/* A4DEC 800A41EC AFA5001C */  sw         $a1, 0x1c($sp)
/* A4DF0 800A41F0 AFA60020 */  sw         $a2, 0x20($sp)
/* A4DF4 800A41F4 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* A4DF8 800A41F8 8FAE0018 */  lw         $t6, 0x18($sp)
/* A4DFC 800A41FC E5C40008 */  swc1       $f4, 8($t6)
/* A4E00 800A4200 C7A60020 */  lwc1       $f6, 0x20($sp)
/* A4E04 800A4204 8FAF0018 */  lw         $t7, 0x18($sp)
/* A4E08 800A4208 E5E6000C */  swc1       $f6, 0xc($t7)
/* A4E0C 800A420C 3C013F80 */  lui        $at, 0x3f80
/* A4E10 800A4210 44815000 */  mtc1       $at, $f10
/* A4E14 800A4214 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* A4E18 800A4218 460A4032 */  c.eq.s     $f8, $f10
/* A4E1C 800A421C 00000000 */  nop
/* A4E20 800A4220 4500000D */  bc1f       .L800A4258
/* A4E24 800A4224 00000000 */   nop
/* A4E28 800A4228 3C013F80 */  lui        $at, 0x3f80
/* A4E2C 800A422C 44819000 */  mtc1       $at, $f18
/* A4E30 800A4230 C7B00020 */  lwc1       $f16, 0x20($sp)
/* A4E34 800A4234 46128032 */  c.eq.s     $f16, $f18
/* A4E38 800A4238 00000000 */  nop
/* A4E3C 800A423C 45000006 */  bc1f       .L800A4258
/* A4E40 800A4240 00000000 */   nop
/* A4E44 800A4244 8FA40018 */  lw         $a0, 0x18($sp)
/* A4E48 800A4248 0C02905C */  jal        func_800A4170
/* A4E4C 800A424C 24050010 */   addiu     $a1, $zero, 0x10
/* A4E50 800A4250 10000004 */  b          .L800A4264
/* A4E54 800A4254 00000000 */   nop
.L800A4258:
/* A4E58 800A4258 8FA40018 */  lw         $a0, 0x18($sp)
/* A4E5C 800A425C 0C029064 */  jal        func_800A4190
/* A4E60 800A4260 24050010 */   addiu     $a1, $zero, 0x10
.L800A4264:
/* A4E64 800A4264 10000001 */  b          .L800A426C
/* A4E68 800A4268 00000000 */   nop
.L800A426C:
/* A4E6C 800A426C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A4E70 800A4270 27BD0018 */  addiu      $sp, $sp, 0x18
/* A4E74 800A4274 03E00008 */  jr         $ra
/* A4E78 800A4278 00000000 */   nop
/* A4E7C 800A427C 00000000 */  nop

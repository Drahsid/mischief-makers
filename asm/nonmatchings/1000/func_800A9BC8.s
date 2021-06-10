glabel func_800A9BC8
/* AA7C8 800A9BC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AA7CC 800A9BCC AFBF0014 */  sw         $ra, 0x14($sp)
/* AA7D0 800A9BD0 3C0E8019 */  lui        $t6, %hi(D_8018A398)
/* AA7D4 800A9BD4 25CEA398 */  addiu      $t6, $t6, %lo(D_8018A398)
/* AA7D8 800A9BD8 8DCF0000 */  lw         $t7, ($t6)
/* AA7DC 800A9BDC 11E0001F */  beqz       $t7, .L800A9C5C
/* AA7E0 800A9BE0 00000000 */   nop
/* AA7E4 800A9BE4 3C188019 */  lui        $t8, %hi(D_8018A398)
/* AA7E8 800A9BE8 2718A398 */  addiu      $t8, $t8, %lo(D_8018A398)
/* AA7EC 800A9BEC 8F190000 */  lw         $t9, ($t8)
/* AA7F0 800A9BF0 8F280000 */  lw         $t0, ($t9)
/* AA7F4 800A9BF4 AFA8001C */  sw         $t0, 0x1c($sp)
/* AA7F8 800A9BF8 8FA9001C */  lw         $t1, 0x1c($sp)
/* AA7FC 800A9BFC 3C01FC00 */  lui        $at, 0xfc00
/* AA800 800A9C00 3421003F */  ori        $at, $at, 0x3f
/* AA804 800A9C04 01215024 */  and        $t2, $t1, $at
/* AA808 800A9C08 2401000D */  addiu      $at, $zero, 0xd
/* AA80C 800A9C0C 15410010 */  bne        $t2, $at, .L800A9C50
/* AA810 800A9C10 00000000 */   nop
/* AA814 800A9C14 3C0B8019 */  lui        $t3, %hi(D_8018A398)
/* AA818 800A9C18 256BA398 */  addiu      $t3, $t3, %lo(D_8018A398)
/* AA81C 800A9C1C 8D6C0004 */  lw         $t4, 4($t3)
/* AA820 800A9C20 8D6D0000 */  lw         $t5, ($t3)
/* AA824 800A9C24 ADAC0000 */  sw         $t4, ($t5)
/* AA828 800A9C28 3C0E8019 */  lui        $t6, %hi(D_8018A398)
/* AA82C 800A9C2C 25CEA398 */  addiu      $t6, $t6, %lo(D_8018A398)
/* AA830 800A9C30 8DC40000 */  lw         $a0, ($t6)
/* AA834 800A9C34 0C029BC4 */  jal        func_800A6F10
/* AA838 800A9C38 24050004 */   addiu     $a1, $zero, 4
/* AA83C 800A9C3C 3C0F8019 */  lui        $t7, %hi(D_8018A398)
/* AA840 800A9C40 25EFA398 */  addiu      $t7, $t7, %lo(D_8018A398)
/* AA844 800A9C44 8DE40000 */  lw         $a0, ($t7)
/* AA848 800A9C48 0C029BE4 */  jal        func_800A6F90
/* AA84C 800A9C4C 24050004 */   addiu     $a1, $zero, 4
.L800A9C50:
/* AA850 800A9C50 3C188019 */  lui        $t8, %hi(D_8018A398)
/* AA854 800A9C54 2718A398 */  addiu      $t8, $t8, %lo(D_8018A398)
/* AA858 800A9C58 AF000000 */  sw         $zero, ($t8)
.L800A9C5C:
/* AA85C 800A9C5C 3C198019 */  lui        $t9, %hi(D_8018A418)
/* AA860 800A9C60 8F39A418 */  lw         $t9, %lo(D_8018A418)($t9)
/* AA864 800A9C64 1320001B */  beqz       $t9, .L800A9CD4
/* AA868 800A9C68 00000000 */   nop
/* AA86C 800A9C6C 3C088019 */  lui        $t0, %hi(D_8018A418)
/* AA870 800A9C70 8D08A418 */  lw         $t0, %lo(D_8018A418)($t0)
/* AA874 800A9C74 8D090000 */  lw         $t1, ($t0)
/* AA878 800A9C78 AFA9001C */  sw         $t1, 0x1c($sp)
/* AA87C 800A9C7C 8FAA001C */  lw         $t2, 0x1c($sp)
/* AA880 800A9C80 3C01FC00 */  lui        $at, 0xfc00
/* AA884 800A9C84 3421003F */  ori        $at, $at, 0x3f
/* AA888 800A9C88 01415824 */  and        $t3, $t2, $at
/* AA88C 800A9C8C 2401000D */  addiu      $at, $zero, 0xd
/* AA890 800A9C90 1561000E */  bne        $t3, $at, .L800A9CCC
/* AA894 800A9C94 00000000 */   nop
/* AA898 800A9C98 3C0C8019 */  lui        $t4, %hi(D_8018A41C)
/* AA89C 800A9C9C 3C0D8019 */  lui        $t5, %hi(D_8018A418)
/* AA8A0 800A9CA0 8DADA418 */  lw         $t5, %lo(D_8018A418)($t5)
/* AA8A4 800A9CA4 8D8CA41C */  lw         $t4, %lo(D_8018A41C)($t4)
/* AA8A8 800A9CA8 ADAC0000 */  sw         $t4, ($t5)
/* AA8AC 800A9CAC 3C048019 */  lui        $a0, %hi(D_8018A418)
/* AA8B0 800A9CB0 8C84A418 */  lw         $a0, %lo(D_8018A418)($a0)
/* AA8B4 800A9CB4 0C029BC4 */  jal        func_800A6F10
/* AA8B8 800A9CB8 24050004 */   addiu     $a1, $zero, 4
/* AA8BC 800A9CBC 3C048019 */  lui        $a0, %hi(D_8018A418)
/* AA8C0 800A9CC0 8C84A418 */  lw         $a0, %lo(D_8018A418)($a0)
/* AA8C4 800A9CC4 0C029BE4 */  jal        func_800A6F90
/* AA8C8 800A9CC8 24050004 */   addiu     $a1, $zero, 4
.L800A9CCC:
/* AA8CC 800A9CCC 3C018019 */  lui        $at, %hi(D_8018A418)
/* AA8D0 800A9CD0 AC20A418 */  sw         $zero, %lo(D_8018A418)($at)
.L800A9CD4:
/* AA8D4 800A9CD4 10000001 */  b          .L800A9CDC
/* AA8D8 800A9CD8 00000000 */   nop
.L800A9CDC:
/* AA8DC 800A9CDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* AA8E0 800A9CE0 27BD0020 */  addiu      $sp, $sp, 0x20
/* AA8E4 800A9CE4 03E00008 */  jr         $ra
/* AA8E8 800A9CE8 00000000 */   nop

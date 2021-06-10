glabel func_800A7BF0
/* A87F0 800A7BF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A87F4 800A7BF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* A87F8 800A7BF8 AFA0001C */  sw         $zero, 0x1c($sp)
/* A87FC 800A7BFC 3C0E8018 */  lui        $t6, %hi(D_8018573C)
/* A8800 800A7C00 8DCE573C */  lw         $t6, %lo(D_8018573C)($t6)
/* A8804 800A7C04 3C01B000 */  lui        $at, 0xb000
/* A8808 800A7C08 15C10004 */  bne        $t6, $at, .L800A7C1C
/* A880C 800A7C0C 00000000 */   nop
/* A8810 800A7C10 3C028018 */  lui        $v0, %hi(D_80185730)
/* A8814 800A7C14 10000035 */  b          .L800A7CEC
/* A8818 800A7C18 24425730 */   addiu     $v0, $v0, %lo(D_80185730)
.L800A7C1C:
/* A881C 800A7C1C 3C018018 */  lui        $at, %hi(D_80185734)
/* A8820 800A7C20 A0205734 */  sb         $zero, %lo(D_80185734)($at)
/* A8824 800A7C24 3C0FB000 */  lui        $t7, 0xb000
/* A8828 800A7C28 3C018018 */  lui        $at, %hi(D_8018573C)
/* A882C 800A7C2C AC2F573C */  sw         $t7, %lo(D_8018573C)($at)
/* A8830 800A7C30 00002025 */  or         $a0, $zero, $zero
/* A8834 800A7C34 0C029C1C */  jal        func_800A7070
/* A8838 800A7C38 27A5001C */   addiu     $a1, $sp, 0x1c
/* A883C 800A7C3C 8FB8001C */  lw         $t8, 0x1c($sp)
/* A8840 800A7C40 3C018018 */  lui        $at, %hi(D_80185735)
/* A8844 800A7C44 331900FF */  andi       $t9, $t8, 0xff
/* A8848 800A7C48 A0395735 */  sb         $t9, %lo(D_80185735)($at)
/* A884C 800A7C4C 8FA8001C */  lw         $t0, 0x1c($sp)
/* A8850 800A7C50 3C018018 */  lui        $at, %hi(D_80185738)
/* A8854 800A7C54 00084A02 */  srl        $t1, $t0, 8
/* A8858 800A7C58 312A00FF */  andi       $t2, $t1, 0xff
/* A885C 800A7C5C A02A5738 */  sb         $t2, %lo(D_80185738)($at)
/* A8860 800A7C60 8FAB001C */  lw         $t3, 0x1c($sp)
/* A8864 800A7C64 3C018018 */  lui        $at, %hi(D_80185736)
/* A8868 800A7C68 000B6402 */  srl        $t4, $t3, 0x10
/* A886C 800A7C6C 318D000F */  andi       $t5, $t4, 0xf
/* A8870 800A7C70 A02D5736 */  sb         $t5, %lo(D_80185736)($at)
/* A8874 800A7C74 8FAE001C */  lw         $t6, 0x1c($sp)
/* A8878 800A7C78 3C018018 */  lui        $at, %hi(D_80185737)
/* A887C 800A7C7C 000E7D02 */  srl        $t7, $t6, 0x14
/* A8880 800A7C80 31F8000F */  andi       $t8, $t7, 0xf
/* A8884 800A7C84 A0385737 */  sb         $t8, %lo(D_80185737)($at)
/* A8888 800A7C88 3C018018 */  lui        $at, %hi(D_80185739)
/* A888C 800A7C8C A0205739 */  sb         $zero, %lo(D_80185739)($at)
/* A8890 800A7C90 3C048018 */  lui        $a0, %hi(D_80185730)
/* A8894 800A7C94 24845730 */  addiu      $a0, $a0, %lo(D_80185730)
/* A8898 800A7C98 24840014 */  addiu      $a0, $a0, 0x14
/* A889C 800A7C9C 0C029C54 */  jal        func_800A7150
/* A88A0 800A7CA0 24050060 */   addiu     $a1, $zero, 0x60
/* A88A4 800A7CA4 0C0297A4 */  jal        func_800A5E90
/* A88A8 800A7CA8 00000000 */   nop
/* A88AC 800A7CAC AFA20018 */  sw         $v0, 0x18($sp)
/* A88B0 800A7CB0 3C19800F */  lui        $t9, %hi(D_800EA4EC)
/* A88B4 800A7CB4 8F39A4EC */  lw         $t9, %lo(D_800EA4EC)($t9)
/* A88B8 800A7CB8 3C018018 */  lui        $at, %hi(D_80185730)
/* A88BC 800A7CBC AC395730 */  sw         $t9, %lo(D_80185730)($at)
/* A88C0 800A7CC0 3C088018 */  lui        $t0, %hi(D_80185730)
/* A88C4 800A7CC4 25085730 */  addiu      $t0, $t0, %lo(D_80185730)
/* A88C8 800A7CC8 3C01800F */  lui        $at, %hi(D_800EA4EC)
/* A88CC 800A7CCC AC28A4EC */  sw         $t0, %lo(D_800EA4EC)($at)
/* A88D0 800A7CD0 0C0297AC */  jal        func_800A5EB0
/* A88D4 800A7CD4 8FA40018 */   lw        $a0, 0x18($sp)
/* A88D8 800A7CD8 3C028018 */  lui        $v0, %hi(D_80185730)
/* A88DC 800A7CDC 10000003 */  b          .L800A7CEC
/* A88E0 800A7CE0 24425730 */   addiu     $v0, $v0, %lo(D_80185730)
/* A88E4 800A7CE4 10000001 */  b          .L800A7CEC
/* A88E8 800A7CE8 00000000 */   nop
.L800A7CEC:
/* A88EC 800A7CEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A88F0 800A7CF0 27BD0020 */  addiu      $sp, $sp, 0x20
/* A88F4 800A7CF4 03E00008 */  jr         $ra
/* A88F8 800A7CF8 00000000 */   nop
/* A88FC 800A7CFC 00000000 */  nop

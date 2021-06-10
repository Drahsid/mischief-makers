glabel func_800A5884
/* A6484 800A5884 308400FF */  andi       $a0, $a0, 0xff
/* A6488 800A5888 3C0E800F */  lui        $t6, %hi(D_800EA568)
/* A648C 800A588C 8DCEA568 */  lw         $t6, %lo(D_800EA568)($t6)
/* A6490 800A5890 8DCF0000 */  lw         $t7, ($t6)
/* A6494 800A5894 31F80003 */  andi       $t8, $t7, 3
/* A6498 800A5898 13000007 */  beqz       $t8, .L800A58B8
/* A649C 800A589C 00000000 */   nop
.L800A58A0:
/* A64A0 800A58A0 3C19800F */  lui        $t9, %hi(D_800EA568)
/* A64A4 800A58A4 8F39A568 */  lw         $t9, %lo(D_800EA568)($t9)
/* A64A8 800A58A8 8F280000 */  lw         $t0, ($t9)
/* A64AC 800A58AC 31090003 */  andi       $t1, $t0, 3
/* A64B0 800A58B0 1520FFFB */  bnez       $t1, .L800A58A0
/* A64B4 800A58B4 00000000 */   nop
.L800A58B8:
/* A64B8 800A58B8 3C0A800F */  lui        $t2, %hi(D_800EA560)
/* A64BC 800A58BC 8D4AA560 */  lw         $t2, %lo(D_800EA560)($t2)
/* A64C0 800A58C0 8D4B0000 */  lw         $t3, ($t2)
/* A64C4 800A58C4 316C0004 */  andi       $t4, $t3, 4
/* A64C8 800A58C8 15800007 */  bnez       $t4, .L800A58E8
/* A64CC 800A58CC 00000000 */   nop
.L800A58D0:
/* A64D0 800A58D0 3C0D800F */  lui        $t5, %hi(D_800EA560)
/* A64D4 800A58D4 8DADA560 */  lw         $t5, %lo(D_800EA560)($t5)
/* A64D8 800A58D8 8DAE0000 */  lw         $t6, ($t5)
/* A64DC 800A58DC 31CF0004 */  andi       $t7, $t6, 4
/* A64E0 800A58E0 11E0FFFB */  beqz       $t7, .L800A58D0
/* A64E4 800A58E4 00000000 */   nop
.L800A58E8:
/* A64E8 800A58E8 3C18800F */  lui        $t8, %hi(D_800EA564)
/* A64EC 800A58EC 8F18A564 */  lw         $t8, %lo(D_800EA564)($t8)
/* A64F0 800A58F0 AF040000 */  sw         $a0, ($t8)
/* A64F4 800A58F4 03E00008 */  jr         $ra
/* A64F8 800A58F8 00000000 */   nop

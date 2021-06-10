glabel func_800ACCF4
/* AD8F4 800ACCF4 27BDFFF8 */  addiu      $sp, $sp, -8
/* AD8F8 800ACCF8 30A500FF */  andi       $a1, $a1, 0xff
/* AD8FC 800ACCFC 30C600FF */  andi       $a2, $a2, 0xff
/* AD900 800ACD00 8C8E0064 */  lw         $t6, 0x64($a0)
/* AD904 800ACD04 AFAE0004 */  sw         $t6, 4($sp)
/* AD908 800ACD08 8FAF0004 */  lw         $t7, 4($sp)
/* AD90C 800ACD0C 11E00015 */  beqz       $t7, .L800ACD64
/* AD910 800ACD10 00000000 */   nop
.L800ACD14:
/* AD914 800ACD14 8FB80004 */  lw         $t8, 4($sp)
/* AD918 800ACD18 93190032 */  lbu        $t9, 0x32($t8)
/* AD91C 800ACD1C 1725000D */  bne        $t9, $a1, .L800ACD54
/* AD920 800ACD20 00000000 */   nop
/* AD924 800ACD24 93080031 */  lbu        $t0, 0x31($t8)
/* AD928 800ACD28 1506000A */  bne        $t0, $a2, .L800ACD54
/* AD92C 800ACD2C 00000000 */   nop
/* AD930 800ACD30 93090035 */  lbu        $t1, 0x35($t8)
/* AD934 800ACD34 24010003 */  addiu      $at, $zero, 3
/* AD938 800ACD38 11210006 */  beq        $t1, $at, .L800ACD54
/* AD93C 800ACD3C 00000000 */   nop
/* AD940 800ACD40 24010004 */  addiu      $at, $zero, 4
/* AD944 800ACD44 11210003 */  beq        $t1, $at, .L800ACD54
/* AD948 800ACD48 00000000 */   nop
/* AD94C 800ACD4C 10000009 */  b          .L800ACD74
/* AD950 800ACD50 8FA20004 */   lw        $v0, 4($sp)
.L800ACD54:
/* AD954 800ACD54 8FAA0004 */  lw         $t2, 4($sp)
/* AD958 800ACD58 8D4B0000 */  lw         $t3, ($t2)
/* AD95C 800ACD5C 1560FFED */  bnez       $t3, .L800ACD14
/* AD960 800ACD60 AFAB0004 */   sw        $t3, 4($sp)
.L800ACD64:
/* AD964 800ACD64 10000003 */  b          .L800ACD74
/* AD968 800ACD68 00001025 */   or        $v0, $zero, $zero
/* AD96C 800ACD6C 10000001 */  b          .L800ACD74
/* AD970 800ACD70 00000000 */   nop
.L800ACD74:
/* AD974 800ACD74 03E00008 */  jr         $ra
/* AD978 800ACD78 27BD0008 */   addiu     $sp, $sp, 8

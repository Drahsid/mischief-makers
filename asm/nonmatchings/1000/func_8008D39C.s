glabel func_8008D39C
/* 8DF9C 8008D39C 3087FFFF */  andi       $a3, $a0, 0xffff
/* 8DFA0 8008D3A0 00077080 */  sll        $t6, $a3, 2
/* 8DFA4 8008D3A4 01C77023 */  subu       $t6, $t6, $a3
/* 8DFA8 8008D3A8 000E7080 */  sll        $t6, $t6, 2
/* 8DFAC 8008D3AC 01C77021 */  addu       $t6, $t6, $a3
/* 8DFB0 8008D3B0 000E7080 */  sll        $t6, $t6, 2
/* 8DFB4 8008D3B4 01C77023 */  subu       $t6, $t6, $a3
/* 8DFB8 8008D3B8 3C0F800F */  lui        $t7, %hi(gActors)
/* 8DFBC 8008D3BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8DFC0 8008D3C0 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 8DFC4 8008D3C4 000E70C0 */  sll        $t6, $t6, 3
/* 8DFC8 8008D3C8 AFA40020 */  sw         $a0, 0x20($sp)
/* 8DFCC 8008D3CC 01CF1821 */  addu       $v1, $t6, $t7
/* 8DFD0 8008D3D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DFD4 8008D3D4 8C640184 */  lw         $a0, 0x184($v1)
/* 8DFD8 8008D3D8 AFA3001C */  sw         $v1, 0x1c($sp)
/* 8DFDC 8008D3DC 00002825 */  or         $a1, $zero, $zero
/* 8DFE0 8008D3E0 0C00A607 */  jal        func_8002981C
/* 8DFE4 8008D3E4 24061000 */   addiu     $a2, $zero, 0x1000
/* 8DFE8 8008D3E8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8DFEC 8008D3EC 3C05FFF9 */  lui        $a1, 0xfff9
/* 8DFF0 8008D3F0 8C640188 */  lw         $a0, 0x188($v1)
/* 8DFF4 8008D3F4 34A58000 */  ori        $a1, $a1, 0x8000
/* 8DFF8 8008D3F8 24063800 */  addiu      $a2, $zero, 0x3800
/* 8DFFC 8008D3FC 0C00A607 */  jal        func_8002981C
/* 8E000 8008D400 AC620184 */   sw        $v0, 0x184($v1)
/* 8E004 8008D404 8FA3001C */  lw         $v1, 0x1c($sp)
/* 8E008 8008D408 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8E00C 8008D40C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8E010 8008D410 03E00008 */  jr         $ra
/* 8E014 8008D414 AC620188 */   sw        $v0, 0x188($v1)

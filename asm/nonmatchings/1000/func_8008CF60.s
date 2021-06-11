glabel func_8008CF60
/* 8DB60 8008CF60 308EFFFF */  andi       $t6, $a0, 0xffff
/* 8DB64 8008CF64 000E7880 */  sll        $t7, $t6, 2
/* 8DB68 8008CF68 01EE7823 */  subu       $t7, $t7, $t6
/* 8DB6C 8008CF6C 000F7880 */  sll        $t7, $t7, 2
/* 8DB70 8008CF70 01EE7821 */  addu       $t7, $t7, $t6
/* 8DB74 8008CF74 000F7880 */  sll        $t7, $t7, 2
/* 8DB78 8008CF78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8DB7C 8008CF7C 01EE7823 */  subu       $t7, $t7, $t6
/* 8DB80 8008CF80 3C18800F */  lui        $t8, %hi(gActors)
/* 8DB84 8008CF84 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 8DB88 8008CF88 000F78C0 */  sll        $t7, $t7, 3
/* 8DB8C 8008CF8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8DB90 8008CF90 AFA40020 */  sw         $a0, 0x20($sp)
/* 8DB94 8008CF94 01F81021 */  addu       $v0, $t7, $t8
/* 8DB98 8008CF98 24190070 */  addiu      $t9, $zero, 0x70
/* 8DB9C 8008CF9C 01C02025 */  or         $a0, $t6, $zero
/* 8DBA0 8008CFA0 A45900D0 */  sh         $t9, 0xd0($v0)
/* 8DBA4 8008CFA4 AFA2001C */  sw         $v0, 0x1c($sp)
/* 8DBA8 8008CFA8 0C023371 */  jal        func_8008CDC4
/* 8DBAC 8008CFAC 00002825 */   or        $a1, $zero, $zero
/* 8DBB0 8008CFB0 8FA2001C */  lw         $v0, 0x1c($sp)
/* 8DBB4 8008CFB4 3C01FFFD */  lui        $at, 0xfffd
/* 8DBB8 8008CFB8 8C480080 */  lw         $t0, 0x80($v0)
/* 8DBBC 8008CFBC 3421FFFF */  ori        $at, $at, 0xffff
/* 8DBC0 8008CFC0 01014824 */  and        $t1, $t0, $at
/* 8DBC4 8008CFC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8DBC8 8008CFC8 3C010001 */  lui        $at, 1
/* 8DBCC 8008CFCC 01215825 */  or         $t3, $t1, $at
/* 8DBD0 8008CFD0 AC490080 */  sw         $t1, 0x80($v0)
/* 8DBD4 8008CFD4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 8DBD8 8008CFD8 AC4B0080 */  sw         $t3, 0x80($v0)
/* 8DBDC 8008CFDC 03E00008 */  jr         $ra
/* 8DBE0 8008CFE0 AC400188 */   sw        $zero, 0x188($v0)

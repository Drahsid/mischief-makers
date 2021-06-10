glabel func_8001C7F0
/* 1D3F0 8001C7F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D3F4 8001C7F4 AFA40018 */  sw         $a0, 0x18($sp)
/* 1D3F8 8001C7F8 97A7001A */  lhu        $a3, 0x1a($sp)
/* 1D3FC 8001C7FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D400 8001C800 24040000 */  addiu      $a0, $zero, 0
/* 1D404 8001C804 24050001 */  addiu      $a1, $zero, 1
/* 1D408 8001C808 0C0290D5 */  jal        func_800A4354
/* 1D40C 8001C80C 000737C3 */   sra       $a2, $a3, 0x1f
/* 1D410 8001C810 3C188017 */  lui        $t8, %hi(D_80171B10)
/* 1D414 8001C814 3C198017 */  lui        $t9, %hi(D_80171B14)
/* 1D418 8001C818 8F391B14 */  lw         $t9, %lo(D_80171B14)($t9)
/* 1D41C 8001C81C 8F181B10 */  lw         $t8, %lo(D_80171B10)($t8)
/* 1D420 8001C820 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D424 8001C824 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D428 8001C828 03231824 */  and        $v1, $t9, $v1
/* 1D42C 8001C82C 03E00008 */  jr         $ra
/* 1D430 8001C830 03021024 */   and       $v0, $t8, $v0

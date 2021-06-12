glabel func_8002D3C0
/* 2DFC0 8002D3C0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2DFC4 8002D3C4 000E7880 */  sll        $t7, $t6, 2
/* 2DFC8 8002D3C8 01EE7823 */  subu       $t7, $t7, $t6
/* 2DFCC 8002D3CC 000F7880 */  sll        $t7, $t7, 2
/* 2DFD0 8002D3D0 01EE7821 */  addu       $t7, $t7, $t6
/* 2DFD4 8002D3D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2DFD8 8002D3D8 000F7880 */  sll        $t7, $t7, 2
/* 2DFDC 8002D3DC 01EE7823 */  subu       $t7, $t7, $t6
/* 2DFE0 8002D3E0 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 2DFE4 8002D3E4 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 2DFE8 8002D3E8 000F78C0 */  sll        $t7, $t7, 3
/* 2DFEC 8002D3EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 2DFF0 8002D3F0 AFA40020 */  sw         $a0, 0x20($sp)
/* 2DFF4 8002D3F4 01F81021 */  addu       $v0, $t7, $t8
/* 2DFF8 8002D3F8 2419005E */  addiu      $t9, $zero, 0x5e
/* 2DFFC 8002D3FC 01C02025 */  or         $a0, $t6, $zero
/* 2E000 8002D400 AFA50024 */  sw         $a1, 0x24($sp)
/* 2E004 8002D404 A45900D2 */  sh         $t9, 0xd2($v0)
/* 2E008 8002D408 AFA2001C */  sw         $v0, 0x1c($sp)
/* 2E00C 8002D40C 0C0078B4 */  jal        func_8001E2D0
/* 2E010 8002D410 A7AE0022 */   sh        $t6, 0x22($sp)
/* 2E014 8002D414 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2E018 8002D418 3C0141A0 */  lui        $at, 0x41a0
/* 2E01C 8002D41C 44810000 */  mtc1       $at, $f0
/* 2E020 8002D420 97A40022 */  lhu        $a0, 0x22($sp)
/* 2E024 8002D424 24080B11 */  addiu      $t0, $zero, 0xb11
/* 2E028 8002D428 2409000B */  addiu      $t1, $zero, 0xb
/* 2E02C 8002D42C 240A0002 */  addiu      $t2, $zero, 2
/* 2E030 8002D430 240B02D0 */  addiu      $t3, $zero, 0x2d0
/* 2E034 8002D434 240C00E0 */  addiu      $t4, $zero, 0xe0
/* 2E038 8002D438 00002825 */  or         $a1, $zero, $zero
/* 2E03C 8002D43C A4480094 */  sh         $t0, 0x94($v0)
/* 2E040 8002D440 AC490080 */  sw         $t1, 0x80($v0)
/* 2E044 8002D444 A44A00D0 */  sh         $t2, 0xd0($v0)
/* 2E048 8002D448 A44B0084 */  sh         $t3, 0x84($v0)
/* 2E04C 8002D44C A44C0090 */  sh         $t4, 0x90($v0)
/* 2E050 8002D450 E44000B4 */  swc1       $f0, 0xb4($v0)
/* 2E054 8002D454 0C00ABAD */  jal        func_8002AEB4
/* 2E058 8002D458 E44000B8 */   swc1      $f0, 0xb8($v0)
/* 2E05C 8002D45C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2E060 8002D460 97AE0026 */  lhu        $t6, 0x26($sp)
/* 2E064 8002D464 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2E068 8002D468 3C0D800E */  lui        $t5, %hi(D_800D8588)
/* 2E06C 8002D46C 25AD8588 */  addiu      $t5, $t5, %lo(D_800D8588)
/* 2E070 8002D470 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2E074 8002D474 AC4D018C */  sw         $t5, 0x18c($v0)
/* 2E078 8002D478 A040009F */  sb         $zero, 0x9f($v0)
/* 2E07C 8002D47C AC400150 */  sw         $zero, 0x150($v0)
/* 2E080 8002D480 03E00008 */  jr         $ra
/* 2E084 8002D484 AC4E0154 */   sw        $t6, 0x154($v0)

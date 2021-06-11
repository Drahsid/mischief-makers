glabel func_8002C3C8
/* 2CFC8 8002C3C8 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2CFCC 8002C3CC 000E7880 */  sll        $t7, $t6, 2
/* 2CFD0 8002C3D0 01EE7823 */  subu       $t7, $t7, $t6
/* 2CFD4 8002C3D4 000F7880 */  sll        $t7, $t7, 2
/* 2CFD8 8002C3D8 01EE7821 */  addu       $t7, $t7, $t6
/* 2CFDC 8002C3DC 000F7880 */  sll        $t7, $t7, 2
/* 2CFE0 8002C3E0 01EE7823 */  subu       $t7, $t7, $t6
/* 2CFE4 8002C3E4 3C18800F */  lui        $t8, %hi(gActors)
/* 2CFE8 8002C3E8 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 2CFEC 8002C3EC 000F78C0 */  sll        $t7, $t7, 3
/* 2CFF0 8002C3F0 01F81821 */  addu       $v1, $t7, $t8
/* 2CFF4 8002C3F4 8C620098 */  lw         $v0, 0x98($v1)
/* 2CFF8 8002C3F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CFFC 8002C3FC AFA40018 */  sw         $a0, 0x18($sp)
/* 2D000 8002C400 30590200 */  andi       $t9, $v0, 0x200
/* 2D004 8002C404 01C02025 */  or         $a0, $t6, $zero
/* 2D008 8002C408 1320001A */  beqz       $t9, .L8002C474
/* 2D00C 8002C40C AFBF0014 */   sw        $ra, 0x14($sp)
/* 2D010 8002C410 8C690080 */  lw         $t1, 0x80($v1)
/* 2D014 8002C414 946B00D6 */  lhu        $t3, 0xd6($v1)
/* 2D018 8002C418 2401FD7F */  addiu      $at, $zero, -0x281
/* 2D01C 8002C41C 24080030 */  addiu      $t0, $zero, 0x30
/* 2D020 8002C420 01215024 */  and        $t2, $t1, $at
/* 2D024 8002C424 A46800D0 */  sh         $t0, 0xd0($v1)
/* 2D028 8002C428 15600006 */  bnez       $t3, .L8002C444
/* 2D02C 8002C42C AC6A0080 */   sw        $t2, 0x80($v1)
/* 2D030 8002C430 8C6C0150 */  lw         $t4, 0x150($v1)
/* 2D034 8002C434 3C018000 */  lui        $at, 0x8000
/* 2D038 8002C438 01816825 */  or         $t5, $t4, $at
/* 2D03C 8002C43C 10000006 */  b          .L8002C458
/* 2D040 8002C440 AC6D0150 */   sw        $t5, 0x150($v1)
.L8002C444:
/* 2D044 8002C444 8C6E0150 */  lw         $t6, 0x150($v1)
/* 2D048 8002C448 3C017FFF */  lui        $at, 0x7fff
/* 2D04C 8002C44C 3421FFFF */  ori        $at, $at, 0xffff
/* 2D050 8002C450 01C17824 */  and        $t7, $t6, $at
/* 2D054 8002C454 AC6F0150 */  sw         $t7, 0x150($v1)
.L8002C458:
/* 2D058 8002C458 8C780150 */  lw         $t8, 0x150($v1)
/* 2D05C 8002C45C 3C010010 */  lui        $at, 0x10
/* 2D060 8002C460 0301C825 */  or         $t9, $t8, $at
/* 2D064 8002C464 0C00A44D */  jal        func_80029134
/* 2D068 8002C468 AC790150 */   sw        $t9, 0x150($v1)
/* 2D06C 8002C46C 10000024 */  b          .L8002C500
/* 2D070 8002C470 24020001 */   addiu     $v0, $zero, 1
.L8002C474:
/* 2D074 8002C474 30480002 */  andi       $t0, $v0, 2
/* 2D078 8002C478 11000021 */  beqz       $t0, .L8002C500
/* 2D07C 8002C47C 00001025 */   or        $v0, $zero, $zero
/* 2D080 8002C480 906200DD */  lbu        $v0, 0xdd($v1)
/* 2D084 8002C484 24010013 */  addiu      $at, $zero, 0x13
/* 2D088 8002C488 10410018 */  beq        $v0, $at, .L8002C4EC
/* 2D08C 8002C48C 24010017 */   addiu     $at, $zero, 0x17
/* 2D090 8002C490 1041001A */  beq        $v0, $at, .L8002C4FC
/* 2D094 8002C494 3C040002 */   lui       $a0, 2
/* 2D098 8002C498 8C6B0080 */  lw         $t3, 0x80($v1)
/* 2D09C 8002C49C 3C010002 */  lui        $at, 2
/* 2D0A0 8002C4A0 01616025 */  or         $t4, $t3, $at
/* 2D0A4 8002C4A4 3C01FFFE */  lui        $at, 0xfffe
/* 2D0A8 8002C4A8 8C6200FC */  lw         $v0, 0xfc($v1)
/* 2D0AC 8002C4AC 3421FD7F */  ori        $at, $at, 0xfd7f
/* 2D0B0 8002C4B0 8C6F00F8 */  lw         $t7, 0xf8($v1)
/* 2D0B4 8002C4B4 01817024 */  and        $t6, $t4, $at
/* 2D0B8 8002C4B8 24090020 */  addiu      $t1, $zero, 0x20
/* 2D0BC 8002C4BC 240A0004 */  addiu      $t2, $zero, 4
/* 2D0C0 8002C4C0 AC6C0080 */  sw         $t4, 0x80($v1)
/* 2D0C4 8002C4C4 0044082A */  slt        $at, $v0, $a0
/* 2D0C8 8002C4C8 A46900D0 */  sh         $t1, 0xd0($v1)
/* 2D0CC 8002C4CC A46A00D4 */  sh         $t2, 0xd4($v1)
/* 2D0D0 8002C4D0 AC6E0080 */  sw         $t6, 0x80($v1)
/* 2D0D4 8002C4D4 AC6200F0 */  sw         $v0, 0xf0($v1)
/* 2D0D8 8002C4D8 10200002 */  beqz       $at, .L8002C4E4
/* 2D0DC 8002C4DC AC6F00EC */   sw        $t7, 0xec($v1)
/* 2D0E0 8002C4E0 AC6400F0 */  sw         $a0, 0xf0($v1)
.L8002C4E4:
/* 2D0E4 8002C4E4 10000006 */  b          .L8002C500
/* 2D0E8 8002C4E8 24020001 */   addiu     $v0, $zero, 1
.L8002C4EC:
/* 2D0EC 8002C4EC AC600080 */  sw         $zero, 0x80($v1)
/* 2D0F0 8002C4F0 A46000E0 */  sh         $zero, 0xe0($v1)
/* 2D0F4 8002C4F4 10000002 */  b          .L8002C500
/* 2D0F8 8002C4F8 24020001 */   addiu     $v0, $zero, 1
.L8002C4FC:
/* 2D0FC 8002C4FC 00001025 */  or         $v0, $zero, $zero
.L8002C500:
/* 2D100 8002C500 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D104 8002C504 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2D108 8002C508 03E00008 */  jr         $ra
/* 2D10C 8002C50C 00000000 */   nop

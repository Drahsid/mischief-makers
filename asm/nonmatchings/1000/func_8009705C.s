glabel func_8009705C
/* 97C5C 8009705C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 97C60 80097060 000E7880 */  sll        $t7, $t6, 2
/* 97C64 80097064 01EE7823 */  subu       $t7, $t7, $t6
/* 97C68 80097068 000F7880 */  sll        $t7, $t7, 2
/* 97C6C 8009706C 01EE7821 */  addu       $t7, $t7, $t6
/* 97C70 80097070 000F7880 */  sll        $t7, $t7, 2
/* 97C74 80097074 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 97C78 80097078 01EE7823 */  subu       $t7, $t7, $t6
/* 97C7C 8009707C 3C18800F */  lui        $t8, %hi(gActors)
/* 97C80 80097080 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 97C84 80097084 000F78C0 */  sll        $t7, $t7, 3
/* 97C88 80097088 AFBF0014 */  sw         $ra, 0x14($sp)
/* 97C8C 8009708C AFA40020 */  sw         $a0, 0x20($sp)
/* 97C90 80097090 01F81021 */  addu       $v0, $t7, $t8
/* 97C94 80097094 24190075 */  addiu      $t9, $zero, 0x75
/* 97C98 80097098 01C02025 */  or         $a0, $t6, $zero
/* 97C9C 8009709C A45900D2 */  sh         $t9, 0xd2($v0)
/* 97CA0 800970A0 0C0078B4 */  jal        func_8001E2D0
/* 97CA4 800970A4 AFA2001C */   sw        $v0, 0x1c($sp)
/* 97CA8 800970A8 8FA2001C */  lw         $v0, 0x1c($sp)
/* 97CAC 800970AC 24081000 */  addiu      $t0, $zero, 0x1000
/* 97CB0 800970B0 24090100 */  addiu      $t1, $zero, 0x100
/* 97CB4 800970B4 240A000B */  addiu      $t2, $zero, 0xb
/* 97CB8 800970B8 240B0800 */  addiu      $t3, $zero, 0x800
/* 97CBC 800970BC 240CFFDF */  addiu      $t4, $zero, -0x21
/* 97CC0 800970C0 240DFFFC */  addiu      $t5, $zero, -4
/* 97CC4 800970C4 240E0080 */  addiu      $t6, $zero, 0x80
/* 97CC8 800970C8 3C01800F */  lui        $at, 0x800f
/* 97CCC 800970CC A44800D0 */  sh         $t0, 0xd0($v0)
/* 97CD0 800970D0 A4490094 */  sh         $t1, 0x94($v0)
/* 97CD4 800970D4 AC4A0080 */  sw         $t2, 0x80($v0)
/* 97CD8 800970D8 A44B0084 */  sh         $t3, 0x84($v0)
/* 97CDC 800970DC A040009F */  sb         $zero, 0x9f($v0)
/* 97CE0 800970E0 A44C0088 */  sh         $t4, 0x88($v0)
/* 97CE4 800970E4 A44D008C */  sh         $t5, 0x8c($v0)
/* 97CE8 800970E8 A44E0090 */  sh         $t6, 0x90($v0)
/* 97CEC 800970EC C424D508 */  lwc1       $f4, -0x2af8($at)
/* 97CF0 800970F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 97CF4 800970F4 3C0F0006 */  lui        $t7, 6
/* 97CF8 800970F8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 97CFC 800970FC AC4F0154 */  sw         $t7, 0x154($v0)
/* 97D00 80097100 03E00008 */  jr         $ra
/* 97D04 80097104 E4440114 */   swc1      $f4, 0x114($v0)

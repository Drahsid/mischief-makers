glabel func_800971A0
/* 97DA0 800971A0 308EFFFF */  andi       $t6, $a0, 0xffff
/* 97DA4 800971A4 000E7880 */  sll        $t7, $t6, 2
/* 97DA8 800971A8 01EE7823 */  subu       $t7, $t7, $t6
/* 97DAC 800971AC 000F7880 */  sll        $t7, $t7, 2
/* 97DB0 800971B0 01EE7821 */  addu       $t7, $t7, $t6
/* 97DB4 800971B4 000F7880 */  sll        $t7, $t7, 2
/* 97DB8 800971B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 97DBC 800971BC 01EE7823 */  subu       $t7, $t7, $t6
/* 97DC0 800971C0 3C18800F */  lui        $t8, %hi(gActors)
/* 97DC4 800971C4 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 97DC8 800971C8 000F78C0 */  sll        $t7, $t7, 3
/* 97DCC 800971CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 97DD0 800971D0 AFA40020 */  sw         $a0, 0x20($sp)
/* 97DD4 800971D4 01F81021 */  addu       $v0, $t7, $t8
/* 97DD8 800971D8 24190075 */  addiu      $t9, $zero, 0x75
/* 97DDC 800971DC 01C02025 */  or         $a0, $t6, $zero
/* 97DE0 800971E0 A45900D2 */  sh         $t9, 0xd2($v0)
/* 97DE4 800971E4 0C0078B4 */  jal        func_8001E2D0
/* 97DE8 800971E8 AFA2001C */   sw        $v0, 0x1c($sp)
/* 97DEC 800971EC 8FA2001C */  lw         $v0, 0x1c($sp)
/* 97DF0 800971F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 97DF4 800971F4 24080100 */  addiu      $t0, $zero, 0x100
/* 97DF8 800971F8 24090900 */  addiu      $t1, $zero, 0x900
/* 97DFC 800971FC 240A000B */  addiu      $t2, $zero, 0xb
/* 97E00 80097200 240B2800 */  addiu      $t3, $zero, 0x2800
/* 97E04 80097204 240C0080 */  addiu      $t4, $zero, 0x80
/* 97E08 80097208 240D0050 */  addiu      $t5, $zero, 0x50
/* 97E0C 8009720C 240E0070 */  addiu      $t6, $zero, 0x70
/* 97E10 80097210 27BD0020 */  addiu      $sp, $sp, 0x20
/* 97E14 80097214 A44800D0 */  sh         $t0, 0xd0($v0)
/* 97E18 80097218 A4490094 */  sh         $t1, 0x94($v0)
/* 97E1C 8009721C AC4A0080 */  sw         $t2, 0x80($v0)
/* 97E20 80097220 A44B0084 */  sh         $t3, 0x84($v0)
/* 97E24 80097224 A040009F */  sb         $zero, 0x9f($v0)
/* 97E28 80097228 A4400088 */  sh         $zero, 0x88($v0)
/* 97E2C 8009722C A44C0090 */  sh         $t4, 0x90($v0)
/* 97E30 80097230 A04D009D */  sb         $t5, 0x9d($v0)
/* 97E34 80097234 03E00008 */  jr         $ra
/* 97E38 80097238 A04E009E */   sb        $t6, 0x9e($v0)

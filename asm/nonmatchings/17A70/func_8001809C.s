glabel func_8001809C
/* 18C9C 8001809C 3C04800F */  lui        $a0, %hi(gActors)
/* 18CA0 800180A0 2484F510 */  addiu      $a0, $a0, %lo(gActors)
/* 18CA4 800180A4 848E5368 */  lh         $t6, 0x5368($a0)
/* 18CA8 800180A8 2401FFE8 */  addiu      $at, $zero, -0x18
/* 18CAC 800180AC 11C10011 */  beq        $t6, $at, .L800180F4
/* 18CB0 800180B0 3C05FFE0 */   lui       $a1, 0xffe0
/* 18CB4 800180B4 8C825368 */  lw         $v0, 0x5368($a0)
/* 18CB8 800180B8 3C0FFFE8 */  lui        $t7, 0xffe8
/* 18CBC 800180BC 01E2C023 */  subu       $t8, $t7, $v0
/* 18CC0 800180C0 07010003 */  bgez       $t8, .L800180D0
/* 18CC4 800180C4 0018C883 */   sra       $t9, $t8, 2
/* 18CC8 800180C8 27010003 */  addiu      $at, $t8, 3
/* 18CCC 800180CC 0001C883 */  sra        $t9, $at, 2
.L800180D0:
/* 18CD0 800180D0 0325082A */  slt        $at, $t9, $a1
/* 18CD4 800180D4 AC9953CC */  sw         $t9, 0x53cc($a0)
/* 18CD8 800180D8 10200004 */  beqz       $at, .L800180EC
/* 18CDC 800180DC 03201825 */   or        $v1, $t9, $zero
/* 18CE0 800180E0 00454021 */  addu       $t0, $v0, $a1
/* 18CE4 800180E4 03E00008 */  jr         $ra
/* 18CE8 800180E8 AC885368 */   sw        $t0, 0x5368($a0)
.L800180EC:
/* 18CEC 800180EC 00434821 */  addu       $t1, $v0, $v1
/* 18CF0 800180F0 AC895368 */  sw         $t1, 0x5368($a0)
.L800180F4:
/* 18CF4 800180F4 03E00008 */  jr         $ra
/* 18CF8 800180F8 00000000 */   nop
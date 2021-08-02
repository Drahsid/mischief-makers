glabel func_8004767C
/* 4827C 8004767C 3C03800C */  lui        $v1, %hi(gPlayerPosXMirror)
/* 48280 80047680 8463E5D8 */  lh         $v1, %lo(gPlayerPosXMirror)($v1)
/* 48284 80047684 308EFFFF */  andi       $t6, $a0, 0xffff
/* 48288 80047688 01C3082A */  slt        $at, $t6, $v1
/* 4828C 8004768C AFA40000 */  sw         $a0, ($sp)
/* 48290 80047690 AFA50004 */  sw         $a1, 4($sp)
/* 48294 80047694 30AFFFFF */  andi       $t7, $a1, 0xffff
/* 48298 80047698 AFA60008 */  sw         $a2, 8($sp)
/* 4829C 8004769C 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 482A0 800476A0 AFA7000C */  sw         $a3, 0xc($sp)
/* 482A4 800476A4 10200019 */  beqz       $at, .L8004770C
/* 482A8 800476A8 30F9FFFF */   andi      $t9, $a3, 0xffff
/* 482AC 800476AC 25C80020 */  addiu      $t0, $t6, 0x20
/* 482B0 800476B0 0068082A */  slt        $at, $v1, $t0
/* 482B4 800476B4 10200015 */  beqz       $at, .L8004770C
/* 482B8 800476B8 3C03800C */   lui       $v1, %hi(gPlayerPosYMirror)
/* 482BC 800476BC 8463E5DC */  lh         $v1, %lo(gPlayerPosYMirror)($v1)
/* 482C0 800476C0 25E90020 */  addiu      $t1, $t7, 0x20
/* 482C4 800476C4 01E3082A */  slt        $at, $t7, $v1
/* 482C8 800476C8 10200010 */  beqz       $at, .L8004770C
/* 482CC 800476CC 0069082A */   slt       $at, $v1, $t1
/* 482D0 800476D0 1020000E */  beqz       $at, .L8004770C
/* 482D4 800476D4 3C0A800D */   lui       $t2, %hi(D_800D3B74)
/* 482D8 800476D8 954A3B74 */  lhu        $t2, %lo(D_800D3B74)($t2)
/* 482DC 800476DC 00186040 */  sll        $t4, $t8, 1
/* 482E0 800476E0 01595824 */  and        $t3, $t2, $t9
/* 482E4 800476E4 15600009 */  bnez       $t3, .L8004770C
/* 482E8 800476E8 258D0002 */   addiu     $t5, $t4, 2
/* 482EC 800476EC 3C01800D */  lui        $at, %hi(D_800D28F8)
/* 482F0 800476F0 A42D28F8 */  sh         $t5, %lo(D_800D28F8)($at)
/* 482F4 800476F4 3C01800C */  lui        $at, %hi(D_800BE5F4)
/* 482F8 800476F8 240E0007 */  addiu      $t6, $zero, 7
/* 482FC 800476FC 97AF0012 */  lhu        $t7, 0x12($sp)
/* 48300 80047700 AC2EE5F4 */  sw         $t6, %lo(D_800BE5F4)($at)
/* 48304 80047704 3C01800D */  lui        $at, %hi(D_800D28E8)
/* 48308 80047708 A42F28E8 */  sh         $t7, %lo(D_800D28E8)($at)
.L8004770C:
/* 4830C 8004770C 03E00008 */  jr         $ra
/* 48310 80047710 00000000 */   nop

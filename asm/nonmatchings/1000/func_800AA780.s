glabel func_800AA780
/* AB380 800AA780 40085000 */  mfc0       $t0, $10
/* AB384 800AA784 310900FF */  andi       $t1, $t0, 0xff
/* AB388 800AA788 2401E000 */  addiu      $at, $zero, -0x2000
/* AB38C 800AA78C 00815024 */  and        $t2, $a0, $at
/* AB390 800AA790 012A4825 */  or         $t1, $t1, $t2
/* AB394 800AA794 40895000 */  mtc0       $t1, $10
/* AB398 800AA798 00000000 */  nop
/* AB39C 800AA79C 00000000 */  nop
/* AB3A0 800AA7A0 00000000 */  nop
/* AB3A4 800AA7A4 42000008 */  tlbp
/* AB3A8 800AA7A8 00000000 */  nop
/* AB3AC 800AA7AC 00000000 */  nop
/* AB3B0 800AA7B0 400B0000 */  mfc0       $t3, $0
/* AB3B4 800AA7B4 3C018000 */  lui        $at, 0x8000
/* AB3B8 800AA7B8 01615824 */  and        $t3, $t3, $at
/* AB3BC 800AA7BC 1560001A */  bnez       $t3, .L800AA828
/* AB3C0 800AA7C0 00000000 */   nop
/* AB3C4 800AA7C4 42000001 */  tlbr
/* AB3C8 800AA7C8 00000000 */  nop
/* AB3CC 800AA7CC 00000000 */  nop
/* AB3D0 800AA7D0 00000000 */  nop
/* AB3D4 800AA7D4 400B2800 */  mfc0       $t3, $5
/* AB3D8 800AA7D8 216B2000 */  addi       $t3, $t3, 0x2000
/* AB3DC 800AA7DC 000B5842 */  srl        $t3, $t3, 1
/* AB3E0 800AA7E0 01646024 */  and        $t4, $t3, $a0
/* AB3E4 800AA7E4 15800004 */  bnez       $t4, .L800AA7F8
/* AB3E8 800AA7E8 216BFFFF */   addi      $t3, $t3, -1
/* AB3EC 800AA7EC 40021000 */  mfc0       $v0, $2
/* AB3F0 800AA7F0 10000002 */  b          .L800AA7FC
/* AB3F4 800AA7F4 00000000 */   nop
.L800AA7F8:
/* AB3F8 800AA7F8 40021800 */  mfc0       $v0, $3
.L800AA7FC:
/* AB3FC 800AA7FC 304D0002 */  andi       $t5, $v0, 2
/* AB400 800AA800 11A00009 */  beqz       $t5, .L800AA828
/* AB404 800AA804 00000000 */   nop
/* AB408 800AA808 3C013FFF */  lui        $at, 0x3fff
/* AB40C 800AA80C 3421FFC0 */  ori        $at, $at, 0xffc0
/* AB410 800AA810 00411024 */  and        $v0, $v0, $at
/* AB414 800AA814 00021180 */  sll        $v0, $v0, 6
/* AB418 800AA818 008B6824 */  and        $t5, $a0, $t3
/* AB41C 800AA81C 004D1020 */  add        $v0, $v0, $t5
/* AB420 800AA820 10000002 */  b          .L800AA82C
/* AB424 800AA824 00000000 */   nop
.L800AA828:
/* AB428 800AA828 2402FFFF */  addiu      $v0, $zero, -1
.L800AA82C:
/* AB42C 800AA82C 40885000 */  mtc0       $t0, $10
/* AB430 800AA830 03E00008 */  jr         $ra
/* AB434 800AA834 00000000 */   nop
/* AB438 800AA838 00000000 */  nop
/* AB43C 800AA83C 00000000 */  nop

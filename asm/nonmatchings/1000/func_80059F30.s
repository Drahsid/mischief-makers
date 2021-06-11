glabel func_80059F30
/* 5AB30 80059F30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5AB34 80059F34 44867000 */  mtc1       $a2, $f14
/* 5AB38 80059F38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5AB3C 80059F3C AFA40018 */  sw         $a0, 0x18($sp)
/* 5AB40 80059F40 308EFFFF */  andi       $t6, $a0, 0xffff
/* 5AB44 80059F44 01C02025 */  or         $a0, $t6, $zero
/* 5AB48 80059F48 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5AB4C 80059F4C AFA70024 */  sw         $a3, 0x24($sp)
/* 5AB50 80059F50 0C0164A8 */  jal        func_800592A0
/* 5AB54 80059F54 E7AE0020 */   swc1      $f14, 0x20($sp)
/* 5AB58 80059F58 8FA5001C */  lw         $a1, 0x1c($sp)
/* 5AB5C 80059F5C 8FA70024 */  lw         $a3, 0x24($sp)
/* 5AB60 80059F60 C7AE0020 */  lwc1       $f14, 0x20($sp)
/* 5AB64 80059F64 14400003 */  bnez       $v0, .L80059F74
/* 5AB68 80059F68 3044FFFF */   andi      $a0, $v0, 0xffff
/* 5AB6C 80059F6C 1000003A */  b          .L8005A058
/* 5AB70 80059F70 00801025 */   or        $v0, $a0, $zero
.L80059F74:
/* 5AB74 80059F74 24090198 */  addiu      $t1, $zero, 0x198
/* 5AB78 80059F78 00490019 */  multu      $v0, $t1
/* 5AB7C 80059F7C 3C08800F */  lui        $t0, %hi(gActors)
/* 5AB80 80059F80 2508F510 */  addiu      $t0, $t0, %lo(gActors)
/* 5AB84 80059F84 44872000 */  mtc1       $a3, $f4
/* 5AB88 80059F88 00000000 */  nop
/* 5AB8C 80059F8C 46802320 */  cvt.s.w    $f12, $f4
/* 5AB90 80059F90 00007812 */  mflo       $t7
/* 5AB94 80059F94 010F1821 */  addu       $v1, $t0, $t7
/* 5AB98 80059F98 94780094 */  lhu        $t8, 0x94($v1)
/* 5AB9C 80059F9C 00000000 */  nop
/* 5ABA0 80059FA0 37190201 */  ori        $t9, $t8, 0x201
/* 5ABA4 80059FA4 A4790094 */  sh         $t9, 0x94($v1)
/* 5ABA8 80059FA8 8CAA000C */  lw         $t2, 0xc($a1)
/* 5ABAC 80059FAC 00000000 */  nop
/* 5ABB0 80059FB0 A46A0084 */  sh         $t2, 0x84($v1)
/* 5ABB4 80059FB4 8CA60010 */  lw         $a2, 0x10($a1)
/* 5ABB8 80059FB8 00000000 */  nop
/* 5ABBC 80059FBC 14C00006 */  bnez       $a2, .L80059FD8
/* 5ABC0 80059FC0 00000000 */   nop
/* 5ABC4 80059FC4 332BFFFF */  andi       $t3, $t9, 0xffff
/* 5ABC8 80059FC8 2401FDFF */  addiu      $at, $zero, -0x201
/* 5ABCC 80059FCC 01616024 */  and        $t4, $t3, $at
/* 5ABD0 80059FD0 10000002 */  b          .L80059FDC
/* 5ABD4 80059FD4 A46C0094 */   sh        $t4, 0x94($v1)
.L80059FD8:
/* 5ABD8 80059FD8 AC66018C */  sw         $a2, 0x18c($v1)
.L80059FDC:
/* 5ABDC 80059FDC E46E00B4 */  swc1       $f14, 0xb4($v1)
/* 5ABE0 80059FE0 E46E00B8 */  swc1       $f14, 0xb8($v1)
/* 5ABE4 80059FE4 14E00003 */  bnez       $a3, .L80059FF4
/* 5ABE8 80059FE8 E46C0148 */   swc1      $f12, 0x148($v1)
/* 5ABEC 80059FEC 1000001A */  b          .L8005A058
/* 5ABF0 80059FF0 00801025 */   or        $v0, $a0, $zero
.L80059FF4:
/* 5ABF4 80059FF4 00890019 */  multu      $a0, $t1
/* 5ABF8 80059FF8 240E00C8 */  addiu      $t6, $zero, 0xc8
/* 5ABFC 80059FFC 460C7003 */  div.s      $f0, $f14, $f12
/* 5AC00 8005A000 00801025 */  or         $v0, $a0, $zero
/* 5AC04 8005A004 00006812 */  mflo       $t5
/* 5AC08 8005A008 010D1821 */  addu       $v1, $t0, $t5
/* 5AC0C 8005A00C 46000187 */  neg.s      $f6, $f0
/* 5AC10 8005A010 01C7001A */  div        $zero, $t6, $a3
/* 5AC14 8005A014 460C3083 */  div.s      $f2, $f6, $f12
/* 5AC18 8005A018 14E00002 */  bnez       $a3, .L8005A024
/* 5AC1C 8005A01C 00000000 */   nop
/* 5AC20 8005A020 0007000D */  break      7
.L8005A024:
/* 5AC24 8005A024 2401FFFF */   addiu     $at, $zero, -1
/* 5AC28 8005A028 14E10004 */  bne        $a3, $at, .L8005A03C
/* 5AC2C 8005A02C 3C018000 */   lui       $at, 0x8000
/* 5AC30 8005A030 15C10002 */  bne        $t6, $at, .L8005A03C
/* 5AC34 8005A034 00000000 */   nop
/* 5AC38 8005A038 0006000D */  break      6
.L8005A03C:
/* 5AC3C 8005A03C E4600110 */   swc1      $f0, 0x110($v1)
/* 5AC40 8005A040 E4600114 */  swc1       $f0, 0x114($v1)
/* 5AC44 8005A044 E4620118 */  swc1       $f2, 0x118($v1)
/* 5AC48 8005A048 E462011C */  swc1       $f2, 0x11c($v1)
/* 5AC4C 8005A04C 00007812 */  mflo       $t7
/* 5AC50 8005A050 000FC023 */  negu       $t8, $t7
/* 5AC54 8005A054 AC780154 */  sw         $t8, 0x154($v1)
.L8005A058:
/* 5AC58 8005A058 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5AC5C 8005A05C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5AC60 8005A060 03E00008 */  jr         $ra
/* 5AC64 8005A064 00000000 */   nop

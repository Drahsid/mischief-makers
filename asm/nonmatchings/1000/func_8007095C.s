glabel func_8007095C
/* 7155C 8007095C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 71560 80070960 AFBF0014 */  sw         $ra, 0x14($sp)
/* 71564 80070964 AFA40018 */  sw         $a0, 0x18($sp)
/* 71568 80070968 00802825 */  or         $a1, $a0, $zero
/* 7156C 8007096C 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 71570 80070970 0C01B22E */  jal        func_8006C8B8
/* 71574 80070974 A7A5001A */   sh        $a1, 0x1a($sp)
/* 71578 80070978 97A5001A */  lhu        $a1, 0x1a($sp)
/* 7157C 8007097C 14400021 */  bnez       $v0, .L80070A04
/* 71580 80070980 00057080 */   sll       $t6, $a1, 2
/* 71584 80070984 01C57023 */  subu       $t6, $t6, $a1
/* 71588 80070988 000E7080 */  sll        $t6, $t6, 2
/* 7158C 8007098C 01C57021 */  addu       $t6, $t6, $a1
/* 71590 80070990 000E7080 */  sll        $t6, $t6, 2
/* 71594 80070994 01C57023 */  subu       $t6, $t6, $a1
/* 71598 80070998 3C0F800F */  lui        $t7, %hi(gActors)
/* 7159C 8007099C 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 715A0 800709A0 000E70C0 */  sll        $t6, $t6, 3
/* 715A4 800709A4 01CF1021 */  addu       $v0, $t6, $t7
/* 715A8 800709A8 944400D0 */  lhu        $a0, 0xd0($v0)
/* 715AC 800709AC 240102B0 */  addiu      $at, $zero, 0x2b0
/* 715B0 800709B0 10810006 */  beq        $a0, $at, .L800709CC
/* 715B4 800709B4 00801825 */   or        $v1, $a0, $zero
/* 715B8 800709B8 240102B1 */  addiu      $at, $zero, 0x2b1
/* 715BC 800709BC 1061000B */  beq        $v1, $at, .L800709EC
/* 715C0 800709C0 3C013F80 */   lui       $at, 0x3f80
/* 715C4 800709C4 10000010 */  b          .L80070A08
/* 715C8 800709C8 8FBF0014 */   lw        $ra, 0x14($sp)
.L800709CC:
/* 715CC 800709CC 845800E6 */  lh         $t8, 0xe6($v0)
/* 715D0 800709D0 24990001 */  addiu      $t9, $a0, 1
/* 715D4 800709D4 17000004 */  bnez       $t8, .L800709E8
/* 715D8 800709D8 3C013F80 */   lui       $at, 0x3f80
/* 715DC 800709DC 44812000 */  mtc1       $at, $f4
/* 715E0 800709E0 A45900D0 */  sh         $t9, 0xd0($v0)
/* 715E4 800709E4 E4440124 */  swc1       $f4, 0x124($v0)
.L800709E8:
/* 715E8 800709E8 3C013F80 */  lui        $at, 0x3f80
.L800709EC:
/* 715EC 800709EC 44814000 */  mtc1       $at, $f8
/* 715F0 800709F0 C446011C */  lwc1       $f6, 0x11c($v0)
/* 715F4 800709F4 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 715F8 800709F8 46083280 */  add.s      $f10, $f6, $f8
/* 715FC 800709FC 0C01C20C */  jal        func_80070830
/* 71600 80070A00 E44A011C */   swc1      $f10, 0x11c($v0)
.L80070A04:
/* 71604 80070A04 8FBF0014 */  lw         $ra, 0x14($sp)
.L80070A08:
/* 71608 80070A08 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7160C 80070A0C 03E00008 */  jr         $ra
/* 71610 80070A10 00000000 */   nop

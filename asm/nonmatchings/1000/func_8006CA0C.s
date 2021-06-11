glabel func_8006CA0C
/* 6D60C 8006CA0C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6D610 8006CA10 000E7880 */  sll        $t7, $t6, 2
/* 6D614 8006CA14 01EE7823 */  subu       $t7, $t7, $t6
/* 6D618 8006CA18 000F7880 */  sll        $t7, $t7, 2
/* 6D61C 8006CA1C 01EE7821 */  addu       $t7, $t7, $t6
/* 6D620 8006CA20 000F7880 */  sll        $t7, $t7, 2
/* 6D624 8006CA24 01EE7823 */  subu       $t7, $t7, $t6
/* 6D628 8006CA28 3C18800F */  lui        $t8, %hi(gActors)
/* 6D62C 8006CA2C 2718F510 */  addiu      $t8, $t8, %lo(gActors)
/* 6D630 8006CA30 000F78C0 */  sll        $t7, $t7, 3
/* 6D634 8006CA34 01F81021 */  addu       $v0, $t7, $t8
/* 6D638 8006CA38 8C590098 */  lw         $t9, 0x98($v0)
/* 6D63C 8006CA3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D640 8006CA40 AFA40020 */  sw         $a0, 0x20($sp)
/* 6D644 8006CA44 33280040 */  andi       $t0, $t9, 0x40
/* 6D648 8006CA48 01C02025 */  or         $a0, $t6, $zero
/* 6D64C 8006CA4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6D650 8006CA50 11000012 */  beqz       $t0, .L8006CA9C
/* 6D654 8006CA54 00001825 */   or        $v1, $zero, $zero
/* 6D658 8006CA58 8C4A0080 */  lw         $t2, 0x80($v0)
/* 6D65C 8006CA5C 24090250 */  addiu      $t1, $zero, 0x250
/* 6D660 8006CA60 314B0020 */  andi       $t3, $t2, 0x20
/* 6D664 8006CA64 11600005 */  beqz       $t3, .L8006CA7C
/* 6D668 8006CA68 A44900D0 */   sh        $t1, 0xd0($v0)
/* 6D66C 8006CA6C 3C01C700 */  lui        $at, 0xc700
/* 6D670 8006CA70 44812000 */  mtc1       $at, $f4
/* 6D674 8006CA74 10000005 */  b          .L8006CA8C
/* 6D678 8006CA78 E4440118 */   swc1      $f4, 0x118($v0)
.L8006CA7C:
/* 6D67C 8006CA7C 3C014700 */  lui        $at, 0x4700
/* 6D680 8006CA80 44813000 */  mtc1       $at, $f6
/* 6D684 8006CA84 00000000 */  nop
/* 6D688 8006CA88 E4460118 */  swc1       $f6, 0x118($v0)
.L8006CA8C:
/* 6D68C 8006CA8C 3C014600 */  lui        $at, 0x4600
/* 6D690 8006CA90 44814000 */  mtc1       $at, $f8
/* 6D694 8006CA94 24030001 */  addiu      $v1, $zero, 1
/* 6D698 8006CA98 E448011C */  swc1       $f8, 0x11c($v0)
.L8006CA9C:
/* 6D69C 8006CA9C A7A3001E */  sh         $v1, 0x1e($sp)
/* 6D6A0 8006CAA0 0C01B1EE */  jal        func_8006C7B8
/* 6D6A4 8006CAA4 A7A40022 */   sh        $a0, 0x22($sp)
/* 6D6A8 8006CAA8 97A3001E */  lhu        $v1, 0x1e($sp)
/* 6D6AC 8006CAAC 97A40022 */  lhu        $a0, 0x22($sp)
/* 6D6B0 8006CAB0 00626025 */  or         $t4, $v1, $v0
/* 6D6B4 8006CAB4 0C01A621 */  jal        func_80069884
/* 6D6B8 8006CAB8 A7AC001E */   sh        $t4, 0x1e($sp)
/* 6D6BC 8006CABC 97A3001E */  lhu        $v1, 0x1e($sp)
/* 6D6C0 8006CAC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6D6C4 8006CAC4 00621825 */  or         $v1, $v1, $v0
/* 6D6C8 8006CAC8 3062FFFF */  andi       $v0, $v1, 0xffff
/* 6D6CC 8006CACC 03E00008 */  jr         $ra
/* 6D6D0 8006CAD0 27BD0020 */   addiu     $sp, $sp, 0x20

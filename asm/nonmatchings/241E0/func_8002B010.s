glabel func_8002B010
/* 2BC10 8002B010 00057C00 */  sll        $t7, $a1, 0x10
/* 2BC14 8002B014 0006CC00 */  sll        $t9, $a2, 0x10
/* 2BC18 8002B018 00194403 */  sra        $t0, $t9, 0x10
/* 2BC1C 8002B01C 000FC403 */  sra        $t8, $t7, 0x10
/* 2BC20 8002B020 AFA40000 */  sw         $a0, ($sp)
/* 2BC24 8002B024 308EFFFF */  andi       $t6, $a0, 0xffff
/* 2BC28 8002B028 AFA50004 */  sw         $a1, 4($sp)
/* 2BC2C 8002B02C AFA60008 */  sw         $a2, 8($sp)
/* 2BC30 8002B030 01003025 */  or         $a2, $t0, $zero
/* 2BC34 8002B034 03002825 */  or         $a1, $t8, $zero
/* 2BC38 8002B038 1900001D */  blez       $t0, .L8002B0B0
/* 2BC3C 8002B03C 01C02025 */   or        $a0, $t6, $zero
/* 2BC40 8002B040 000E4880 */  sll        $t1, $t6, 2
/* 2BC44 8002B044 012E4823 */  subu       $t1, $t1, $t6
/* 2BC48 8002B048 00094880 */  sll        $t1, $t1, 2
/* 2BC4C 8002B04C 012E4821 */  addu       $t1, $t1, $t6
/* 2BC50 8002B050 00094880 */  sll        $t1, $t1, 2
/* 2BC54 8002B054 012E4823 */  subu       $t1, $t1, $t6
/* 2BC58 8002B058 3C0A800F */  lui        $t2, %hi(gActors)
/* 2BC5C 8002B05C 254AF510 */  addiu      $t2, $t2, %lo(gActors)
/* 2BC60 8002B060 000948C0 */  sll        $t1, $t1, 3
/* 2BC64 8002B064 012A1021 */  addu       $v0, $t1, $t2
/* 2BC68 8002B068 94430094 */  lhu        $v1, 0x94($v0)
/* 2BC6C 8002B06C 00A62821 */  addu       $a1, $a1, $a2
/* 2BC70 8002B070 306B0010 */  andi       $t3, $v1, 0x10
/* 2BC74 8002B074 1160000C */  beqz       $t3, .L8002B0A8
/* 2BC78 8002B078 0005CC00 */   sll       $t9, $a1, 0x10
/* 2BC7C 8002B07C 03082823 */  subu       $a1, $t8, $t0
/* 2BC80 8002B080 00056400 */  sll        $t4, $a1, 0x10
/* 2BC84 8002B084 000C6C03 */  sra        $t5, $t4, 0x10
/* 2BC88 8002B088 05A10026 */  bgez       $t5, .L8002B124
/* 2BC8C 8002B08C 01A02825 */   or        $a1, $t5, $zero
/* 2BC90 8002B090 000D2823 */  negu       $a1, $t5
/* 2BC94 8002B094 306EFFEF */  andi       $t6, $v1, 0xffef
/* 2BC98 8002B098 00057C00 */  sll        $t7, $a1, 0x10
/* 2BC9C 8002B09C A44E0094 */  sh         $t6, 0x94($v0)
/* 2BCA0 8002B0A0 10000020 */  b          .L8002B124
/* 2BCA4 8002B0A4 000F2C03 */   sra       $a1, $t7, 0x10
.L8002B0A8:
/* 2BCA8 8002B0A8 1000001E */  b          .L8002B124
/* 2BCAC 8002B0AC 00192C03 */   sra       $a1, $t9, 0x10
.L8002B0B0:
/* 2BCB0 8002B0B0 00044880 */  sll        $t1, $a0, 2
/* 2BCB4 8002B0B4 01244823 */  subu       $t1, $t1, $a0
/* 2BCB8 8002B0B8 00094880 */  sll        $t1, $t1, 2
/* 2BCBC 8002B0BC 01244821 */  addu       $t1, $t1, $a0
/* 2BCC0 8002B0C0 00094880 */  sll        $t1, $t1, 2
/* 2BCC4 8002B0C4 01244823 */  subu       $t1, $t1, $a0
/* 2BCC8 8002B0C8 3C0A800F */  lui        $t2, %hi(gActors)
/* 2BCCC 8002B0CC 254AF510 */  addiu      $t2, $t2, %lo(gActors)
/* 2BCD0 8002B0D0 000948C0 */  sll        $t1, $t1, 3
/* 2BCD4 8002B0D4 012A1021 */  addu       $v0, $t1, $t2
/* 2BCD8 8002B0D8 94430094 */  lhu        $v1, 0x94($v0)
/* 2BCDC 8002B0DC 00000000 */  nop
/* 2BCE0 8002B0E0 306B0010 */  andi       $t3, $v1, 0x10
/* 2BCE4 8002B0E4 11600005 */  beqz       $t3, .L8002B0FC
/* 2BCE8 8002B0E8 00000000 */   nop
/* 2BCEC 8002B0EC 00A62823 */  subu       $a1, $a1, $a2
/* 2BCF0 8002B0F0 00056400 */  sll        $t4, $a1, 0x10
/* 2BCF4 8002B0F4 1000000B */  b          .L8002B124
/* 2BCF8 8002B0F8 000C2C03 */   sra       $a1, $t4, 0x10
.L8002B0FC:
/* 2BCFC 8002B0FC 00A62821 */  addu       $a1, $a1, $a2
/* 2BD00 8002B100 00057400 */  sll        $t6, $a1, 0x10
/* 2BD04 8002B104 000E7C03 */  sra        $t7, $t6, 0x10
/* 2BD08 8002B108 05E10006 */  bgez       $t7, .L8002B124
/* 2BD0C 8002B10C 01E02825 */   or        $a1, $t7, $zero
/* 2BD10 8002B110 000F2823 */  negu       $a1, $t7
/* 2BD14 8002B114 34780010 */  ori        $t8, $v1, 0x10
/* 2BD18 8002B118 0005CC00 */  sll        $t9, $a1, 0x10
/* 2BD1C 8002B11C A4580094 */  sh         $t8, 0x94($v0)
/* 2BD20 8002B120 00192C03 */  sra        $a1, $t9, 0x10
.L8002B124:
/* 2BD24 8002B124 28A10080 */  slti       $at, $a1, 0x80
/* 2BD28 8002B128 14200003 */  bnez       $at, .L8002B138
/* 2BD2C 8002B12C 30A200FF */   andi      $v0, $a1, 0xff
/* 2BD30 8002B130 03E00008 */  jr         $ra
/* 2BD34 8002B134 2402007F */   addiu     $v0, $zero, 0x7f
.L8002B138:
/* 2BD38 8002B138 03E00008 */  jr         $ra
/* 2BD3C 8002B13C 00000000 */   nop
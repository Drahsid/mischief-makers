glabel func_8009FA60
/* A0660 8009FA60 27BDFFF8 */  addiu      $sp, $sp, -8
/* A0664 8009FA64 8C8E0004 */  lw         $t6, 4($a0)
/* A0668 8009FA68 ACAE0000 */  sw         $t6, ($a1)
/* A066C 8009FA6C 8C8F000C */  lw         $t7, 0xc($a0)
/* A0670 8009FA70 ACAF0004 */  sw         $t7, 4($a1)
/* A0674 8009FA74 8C980010 */  lw         $t8, 0x10($a0)
/* A0678 8009FA78 ACB80008 */  sw         $t8, 8($a1)
/* A067C 8009FA7C AFA00004 */  sw         $zero, 4($sp)
.L8009FA80:
/* A0680 8009FA80 8FB90004 */  lw         $t9, 4($sp)
/* A0684 8009FA84 00194080 */  sll        $t0, $t9, 2
/* A0688 8009FA88 00884821 */  addu       $t1, $a0, $t0
/* A068C 8009FA8C 8D2A0018 */  lw         $t2, 0x18($t1)
/* A0690 8009FA90 00A85821 */  addu       $t3, $a1, $t0
/* A0694 8009FA94 AD6A000C */  sw         $t2, 0xc($t3)
/* A0698 8009FA98 8FAC0004 */  lw         $t4, 4($sp)
/* A069C 8009FA9C 000C6880 */  sll        $t5, $t4, 2
/* A06A0 8009FAA0 008D7021 */  addu       $t6, $a0, $t5
/* A06A4 8009FAA4 8DCF0058 */  lw         $t7, 0x58($t6)
/* A06A8 8009FAA8 00ADC021 */  addu       $t8, $a1, $t5
/* A06AC 8009FAAC AF0F004C */  sw         $t7, 0x4c($t8)
/* A06B0 8009FAB0 8FB90004 */  lw         $t9, 4($sp)
/* A06B4 8009FAB4 00994821 */  addu       $t1, $a0, $t9
/* A06B8 8009FAB8 91280098 */  lbu        $t0, 0x98($t1)
/* A06BC 8009FABC 00B95021 */  addu       $t2, $a1, $t9
/* A06C0 8009FAC0 A148008C */  sb         $t0, 0x8c($t2)
/* A06C4 8009FAC4 8FAB0004 */  lw         $t3, 4($sp)
/* A06C8 8009FAC8 008B6021 */  addu       $t4, $a0, $t3
/* A06CC 8009FACC 918E00A8 */  lbu        $t6, 0xa8($t4)
/* A06D0 8009FAD0 00AB6821 */  addu       $t5, $a1, $t3
/* A06D4 8009FAD4 A1AE009C */  sb         $t6, 0x9c($t5)
/* A06D8 8009FAD8 8FAF0004 */  lw         $t7, 4($sp)
/* A06DC 8009FADC 000FC080 */  sll        $t8, $t7, 2
/* A06E0 8009FAE0 00984821 */  addu       $t1, $a0, $t8
/* A06E4 8009FAE4 8D3900B8 */  lw         $t9, 0xb8($t1)
/* A06E8 8009FAE8 00B84021 */  addu       $t0, $a1, $t8
/* A06EC 8009FAEC AD1900AC */  sw         $t9, 0xac($t0)
/* A06F0 8009FAF0 8FAA0004 */  lw         $t2, 4($sp)
/* A06F4 8009FAF4 254C0001 */  addiu      $t4, $t2, 1
/* A06F8 8009FAF8 29810010 */  slti       $at, $t4, 0x10
/* A06FC 8009FAFC 1420FFE0 */  bnez       $at, .L8009FA80
/* A0700 8009FB00 AFAC0004 */   sw        $t4, 4($sp)
/* A0704 8009FB04 10000001 */  b          .L8009FB0C
/* A0708 8009FB08 00000000 */   nop
.L8009FB0C:
/* A070C 8009FB0C 03E00008 */  jr         $ra
/* A0710 8009FB10 27BD0008 */   addiu     $sp, $sp, 8

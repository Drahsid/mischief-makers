glabel func_8009FB14
/* A0714 8009FB14 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* A0718 8009FB18 00857021 */  addu       $t6, $a0, $a1
/* A071C 8009FB1C 91CF0098 */  lbu        $t7, 0x98($t6)
/* A0720 8009FB20 11E00013 */  beqz       $t7, .L8009FB70
/* A0724 8009FB24 00000000 */   nop
/* A0728 8009FB28 0005C080 */  sll        $t8, $a1, 2
/* A072C 8009FB2C 0098C821 */  addu       $t9, $a0, $t8
/* A0730 8009FB30 8F280058 */  lw         $t0, 0x58($t9)
/* A0734 8009FB34 91090000 */  lbu        $t1, ($t0)
/* A0738 8009FB38 A3A9000F */  sb         $t1, 0xf($sp)
/* A073C 8009FB3C 00055080 */  sll        $t2, $a1, 2
/* A0740 8009FB40 008A5821 */  addu       $t3, $a0, $t2
/* A0744 8009FB44 8D6C0058 */  lw         $t4, 0x58($t3)
/* A0748 8009FB48 00057080 */  sll        $t6, $a1, 2
/* A074C 8009FB4C 008E7821 */  addu       $t7, $a0, $t6
/* A0750 8009FB50 258D0001 */  addiu      $t5, $t4, 1
/* A0754 8009FB54 ADED0058 */  sw         $t5, 0x58($t7)
/* A0758 8009FB58 0085C021 */  addu       $t8, $a0, $a1
/* A075C 8009FB5C 93190098 */  lbu        $t9, 0x98($t8)
/* A0760 8009FB60 00854821 */  addu       $t1, $a0, $a1
/* A0764 8009FB64 2728FFFF */  addiu      $t0, $t9, -1
/* A0768 8009FB68 10000061 */  b          .L8009FCF0
/* A076C 8009FB6C A1280098 */   sb        $t0, 0x98($t1)
.L8009FB70:
/* A0770 8009FB70 00055080 */  sll        $t2, $a1, 2
/* A0774 8009FB74 008A5821 */  addu       $t3, $a0, $t2
/* A0778 8009FB78 8D6C0018 */  lw         $t4, 0x18($t3)
/* A077C 8009FB7C 918E0000 */  lbu        $t6, ($t4)
/* A0780 8009FB80 A3AE000F */  sb         $t6, 0xf($sp)
/* A0784 8009FB84 00056880 */  sll        $t5, $a1, 2
/* A0788 8009FB88 008D7821 */  addu       $t7, $a0, $t5
/* A078C 8009FB8C 8DF80018 */  lw         $t8, 0x18($t7)
/* A0790 8009FB90 00054080 */  sll        $t0, $a1, 2
/* A0794 8009FB94 00884821 */  addu       $t1, $a0, $t0
/* A0798 8009FB98 27190001 */  addiu      $t9, $t8, 1
/* A079C 8009FB9C AD390018 */  sw         $t9, 0x18($t1)
/* A07A0 8009FBA0 93AA000F */  lbu        $t2, 0xf($sp)
/* A07A4 8009FBA4 240100FE */  addiu      $at, $zero, 0xfe
/* A07A8 8009FBA8 15410051 */  bne        $t2, $at, .L8009FCF0
/* A07AC 8009FBAC 00000000 */   nop
/* A07B0 8009FBB0 00055880 */  sll        $t3, $a1, 2
/* A07B4 8009FBB4 008B6021 */  addu       $t4, $a0, $t3
/* A07B8 8009FBB8 8D8E0018 */  lw         $t6, 0x18($t4)
/* A07BC 8009FBBC 91CD0000 */  lbu        $t5, ($t6)
/* A07C0 8009FBC0 A3AD000B */  sb         $t5, 0xb($sp)
/* A07C4 8009FBC4 00057880 */  sll        $t7, $a1, 2
/* A07C8 8009FBC8 008FC021 */  addu       $t8, $a0, $t7
/* A07CC 8009FBCC 8F080018 */  lw         $t0, 0x18($t8)
/* A07D0 8009FBD0 00054880 */  sll        $t1, $a1, 2
/* A07D4 8009FBD4 00895021 */  addu       $t2, $a0, $t1
/* A07D8 8009FBD8 25190001 */  addiu      $t9, $t0, 1
/* A07DC 8009FBDC AD590018 */  sw         $t9, 0x18($t2)
/* A07E0 8009FBE0 93AB000B */  lbu        $t3, 0xb($sp)
/* A07E4 8009FBE4 240100FE */  addiu      $at, $zero, 0xfe
/* A07E8 8009FBE8 11610041 */  beq        $t3, $at, .L8009FCF0
/* A07EC 8009FBEC 00000000 */   nop
/* A07F0 8009FBF0 93AC000B */  lbu        $t4, 0xb($sp)
/* A07F4 8009FBF4 A3AC000D */  sb         $t4, 0xd($sp)
/* A07F8 8009FBF8 00057080 */  sll        $t6, $a1, 2
/* A07FC 8009FBFC 008E6821 */  addu       $t5, $a0, $t6
/* A0800 8009FC00 8DAF0018 */  lw         $t7, 0x18($t5)
/* A0804 8009FC04 91F80000 */  lbu        $t8, ($t7)
/* A0808 8009FC08 A3B8000E */  sb         $t8, 0xe($sp)
/* A080C 8009FC0C 00054080 */  sll        $t0, $a1, 2
/* A0810 8009FC10 00884821 */  addu       $t1, $a0, $t0
/* A0814 8009FC14 8D390018 */  lw         $t9, 0x18($t1)
/* A0818 8009FC18 00055880 */  sll        $t3, $a1, 2
/* A081C 8009FC1C 008B6021 */  addu       $t4, $a0, $t3
/* A0820 8009FC20 272A0001 */  addiu      $t2, $t9, 1
/* A0824 8009FC24 AD8A0018 */  sw         $t2, 0x18($t4)
/* A0828 8009FC28 00057080 */  sll        $t6, $a1, 2
/* A082C 8009FC2C 008E6821 */  addu       $t5, $a0, $t6
/* A0830 8009FC30 8DAF0018 */  lw         $t7, 0x18($t5)
/* A0834 8009FC34 91F80000 */  lbu        $t8, ($t7)
/* A0838 8009FC38 A3B8000C */  sb         $t8, 0xc($sp)
/* A083C 8009FC3C 00054080 */  sll        $t0, $a1, 2
/* A0840 8009FC40 00884821 */  addu       $t1, $a0, $t0
/* A0844 8009FC44 8D390018 */  lw         $t9, 0x18($t1)
/* A0848 8009FC48 00055080 */  sll        $t2, $a1, 2
/* A084C 8009FC4C 008A6021 */  addu       $t4, $a0, $t2
/* A0850 8009FC50 272B0001 */  addiu      $t3, $t9, 1
/* A0854 8009FC54 AD8B0018 */  sw         $t3, 0x18($t4)
/* A0858 8009FC58 93AE000D */  lbu        $t6, 0xd($sp)
/* A085C 8009FC5C AFAE0004 */  sw         $t6, 4($sp)
/* A0860 8009FC60 8FAD0004 */  lw         $t5, 4($sp)
/* A0864 8009FC64 000D7A00 */  sll        $t7, $t5, 8
/* A0868 8009FC68 AFAF0004 */  sw         $t7, 4($sp)
/* A086C 8009FC6C 8FB80004 */  lw         $t8, 4($sp)
/* A0870 8009FC70 93A8000E */  lbu        $t0, 0xe($sp)
/* A0874 8009FC74 03084821 */  addu       $t1, $t8, $t0
/* A0878 8009FC78 AFA90004 */  sw         $t1, 4($sp)
/* A087C 8009FC7C 0005C880 */  sll        $t9, $a1, 2
/* A0880 8009FC80 00995021 */  addu       $t2, $a0, $t9
/* A0884 8009FC84 8D4B0018 */  lw         $t3, 0x18($t2)
/* A0888 8009FC88 8FAC0004 */  lw         $t4, 4($sp)
/* A088C 8009FC8C 00057880 */  sll        $t7, $a1, 2
/* A0890 8009FC90 008FC021 */  addu       $t8, $a0, $t7
/* A0894 8009FC94 016C7023 */  subu       $t6, $t3, $t4
/* A0898 8009FC98 25CDFFFC */  addiu      $t5, $t6, -4
/* A089C 8009FC9C AF0D0058 */  sw         $t5, 0x58($t8)
/* A08A0 8009FCA0 93A8000C */  lbu        $t0, 0xc($sp)
/* A08A4 8009FCA4 00854821 */  addu       $t1, $a0, $a1
/* A08A8 8009FCA8 A1280098 */  sb         $t0, 0x98($t1)
/* A08AC 8009FCAC 0005C880 */  sll        $t9, $a1, 2
/* A08B0 8009FCB0 00995021 */  addu       $t2, $a0, $t9
/* A08B4 8009FCB4 8D4B0058 */  lw         $t3, 0x58($t2)
/* A08B8 8009FCB8 916C0000 */  lbu        $t4, ($t3)
/* A08BC 8009FCBC A3AC000F */  sb         $t4, 0xf($sp)
/* A08C0 8009FCC0 00057080 */  sll        $t6, $a1, 2
/* A08C4 8009FCC4 008E7821 */  addu       $t7, $a0, $t6
/* A08C8 8009FCC8 8DED0058 */  lw         $t5, 0x58($t7)
/* A08CC 8009FCCC 00054080 */  sll        $t0, $a1, 2
/* A08D0 8009FCD0 00884821 */  addu       $t1, $a0, $t0
/* A08D4 8009FCD4 25B80001 */  addiu      $t8, $t5, 1
/* A08D8 8009FCD8 AD380058 */  sw         $t8, 0x58($t1)
/* A08DC 8009FCDC 0085C821 */  addu       $t9, $a0, $a1
/* A08E0 8009FCE0 932A0098 */  lbu        $t2, 0x98($t9)
/* A08E4 8009FCE4 00856021 */  addu       $t4, $a0, $a1
/* A08E8 8009FCE8 254BFFFF */  addiu      $t3, $t2, -1
/* A08EC 8009FCEC A18B0098 */  sb         $t3, 0x98($t4)
.L8009FCF0:
/* A08F0 8009FCF0 10000003 */  b          .L8009FD00
/* A08F4 8009FCF4 93A2000F */   lbu       $v0, 0xf($sp)
/* A08F8 8009FCF8 10000001 */  b          .L8009FD00
/* A08FC 8009FCFC 00000000 */   nop
.L8009FD00:
/* A0900 8009FD00 03E00008 */  jr         $ra
/* A0904 8009FD04 27BD0010 */   addiu     $sp, $sp, 0x10

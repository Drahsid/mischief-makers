glabel func_80009940
/* A540 80009940 3C018018 */  lui        $at, %hi(D_801780F8)
/* A544 80009944 A42080F8 */  sh         $zero, %lo(D_801780F8)($at)
/* A548 80009948 3C018018 */  lui        $at, %hi(D_801780FA)
/* A54C 8000994C A42080FA */  sh         $zero, %lo(D_801780FA)($at)
/* A550 80009950 3C018018 */  lui        $at, %hi(D_801780FC)
/* A554 80009954 A42080FC */  sh         $zero, %lo(D_801780FC)($at)
/* A558 80009958 3C018018 */  lui        $at, %hi(D_801780FE)
/* A55C 8000995C A42080FE */  sh         $zero, %lo(D_801780FE)($at)
/* A560 80009960 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A564 80009964 3C018018 */  lui        $at, %hi(D_80178100)
/* A568 80009968 3C0E800C */  lui        $t6, %hi(D_800BE674)
/* A56C 8000996C 95CEE674 */  lhu        $t6, %lo(D_800BE674)($t6)
/* A570 80009970 A4208100 */  sh         $zero, %lo(D_80178100)($at)
/* A574 80009974 3C018018 */  lui        $at, %hi(D_80178102)
/* A578 80009978 AFB30014 */  sw         $s3, 0x14($sp)
/* A57C 8000997C AFB20010 */  sw         $s2, 0x10($sp)
/* A580 80009980 AFB1000C */  sw         $s1, 0xc($sp)
/* A584 80009984 AFB00008 */  sw         $s0, 8($sp)
/* A588 80009988 A4208102 */  sh         $zero, %lo(D_80178102)($at)
/* A58C 8000998C 00001025 */  or         $v0, $zero, $zero
/* A590 80009990 00002825 */  or         $a1, $zero, $zero
/* A594 80009994 00001825 */  or         $v1, $zero, $zero
/* A598 80009998 11C0003A */  beqz       $t6, .L80009A84
/* A59C 8000999C 00002025 */   or        $a0, $zero, $zero
/* A5A0 800099A0 3C12800C */  lui        $s2, 0x800c
/* A5A4 800099A4 3C118017 */  lui        $s1, 0x8017
/* A5A8 800099A8 3C108017 */  lui        $s0, 0x8017
/* A5AC 800099AC 3C0C8017 */  lui        $t4, %hi(D_80171B30)
/* A5B0 800099B0 3C0B800C */  lui        $t3, %hi(D_800BE6D8)
/* A5B4 800099B4 3C09800F */  lui        $t1, %hi(gActors)
/* A5B8 800099B8 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* A5BC 800099BC 256BE6D8 */  addiu      $t3, $t3, %lo(D_800BE6D8)
/* A5C0 800099C0 258C1B30 */  addiu      $t4, $t4, %lo(D_80171B30)
/* A5C4 800099C4 26101D30 */  addiu      $s0, $s0, 0x1d30
/* A5C8 800099C8 26311F10 */  addiu      $s1, $s1, 0x1f10
/* A5CC 800099CC 2652E6CC */  addiu      $s2, $s2, -0x1934
/* A5D0 800099D0 240600CF */  addiu      $a2, $zero, 0xcf
/* A5D4 800099D4 240A0198 */  addiu      $t2, $zero, 0x198
.L800099D8:
/* A5D8 800099D8 00CA0019 */  multu      $a2, $t2
/* A5DC 800099DC 00007812 */  mflo       $t7
/* A5E0 800099E0 012F3821 */  addu       $a3, $t1, $t7
/* A5E4 800099E4 8CF80080 */  lw         $t8, 0x80($a3)
/* A5E8 800099E8 00000000 */  nop
/* A5EC 800099EC 33190001 */  andi       $t9, $t8, 1
/* A5F0 800099F0 1320001C */  beqz       $t9, .L80009A64
/* A5F4 800099F4 00000000 */   nop
/* A5F8 800099F8 84E80090 */  lh         $t0, 0x90($a3)
/* A5FC 800099FC 8D6E0000 */  lw         $t6, ($t3)
/* A600 80009A00 00027840 */  sll        $t7, $v0, 1
/* A604 80009A04 010E082A */  slt        $at, $t0, $t6
/* A608 80009A08 10200006 */  beqz       $at, .L80009A24
/* A60C 80009A0C 018FC021 */   addu      $t8, $t4, $t7
/* A610 80009A10 24420001 */  addiu      $v0, $v0, 1
/* A614 80009A14 3059FFFF */  andi       $t9, $v0, 0xffff
/* A618 80009A18 03201025 */  or         $v0, $t9, $zero
/* A61C 80009A1C 10000011 */  b          .L80009A64
/* A620 80009A20 A7060000 */   sh        $a2, ($t8)
.L80009A24:
/* A624 80009A24 8E4E0000 */  lw         $t6, ($s2)
/* A628 80009A28 00037840 */  sll        $t7, $v1, 1
/* A62C 80009A2C 010E082A */  slt        $at, $t0, $t6
/* A630 80009A30 10200007 */  beqz       $at, .L80009A50
/* A634 80009A34 00047040 */   sll       $t6, $a0, 1
/* A638 80009A38 24630001 */  addiu      $v1, $v1, 1
/* A63C 80009A3C 3079FFFF */  andi       $t9, $v1, 0xffff
/* A640 80009A40 020FC021 */  addu       $t8, $s0, $t7
/* A644 80009A44 A7060000 */  sh         $a2, ($t8)
/* A648 80009A48 10000006 */  b          .L80009A64
/* A64C 80009A4C 03201825 */   or        $v1, $t9, $zero
.L80009A50:
/* A650 80009A50 24840001 */  addiu      $a0, $a0, 1
/* A654 80009A54 3098FFFF */  andi       $t8, $a0, 0xffff
/* A658 80009A58 022E7821 */  addu       $t7, $s1, $t6
/* A65C 80009A5C A5E60000 */  sh         $a2, ($t7)
/* A660 80009A60 03002025 */  or         $a0, $t8, $zero
.L80009A64:
/* A664 80009A64 24C6FFFF */  addiu      $a2, $a2, -1
/* A668 80009A68 0006CC00 */  sll        $t9, $a2, 0x10
/* A66C 80009A6C 00193403 */  sra        $a2, $t9, 0x10
/* A670 80009A70 04C1FFD9 */  bgez       $a2, .L800099D8
/* A674 80009A74 00000000 */   nop
/* A678 80009A78 3C0D8017 */  lui        $t5, %hi(D_80171C30)
/* A67C 80009A7C 10000045 */  b          .L80009B94
/* A680 80009A80 25AD1C30 */   addiu     $t5, $t5, %lo(D_80171C30)
.L80009A84:
/* A684 80009A84 3C13800C */  lui        $s3, 0x800c
/* A688 80009A88 3C12800C */  lui        $s2, 0x800c
/* A68C 80009A8C 3C118017 */  lui        $s1, 0x8017
/* A690 80009A90 3C108017 */  lui        $s0, 0x8017
/* A694 80009A94 3C0D8017 */  lui        $t5, 0x8017
/* A698 80009A98 3C0C8017 */  lui        $t4, %hi(D_80171B30)
/* A69C 80009A9C 3C0B800C */  lui        $t3, %hi(D_800BE6D8)
/* A6A0 80009AA0 3C09800F */  lui        $t1, %hi(gActors)
/* A6A4 80009AA4 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* A6A8 80009AA8 256BE6D8 */  addiu      $t3, $t3, %lo(D_800BE6D8)
/* A6AC 80009AAC 258C1B30 */  addiu      $t4, $t4, %lo(D_80171B30)
/* A6B0 80009AB0 25AD1C30 */  addiu      $t5, $t5, 0x1c30
/* A6B4 80009AB4 26101D30 */  addiu      $s0, $s0, 0x1d30
/* A6B8 80009AB8 26311F10 */  addiu      $s1, $s1, 0x1f10
/* A6BC 80009ABC 2652E6CC */  addiu      $s2, $s2, -0x1934
/* A6C0 80009AC0 2673E6C0 */  addiu      $s3, $s3, -0x1940
/* A6C4 80009AC4 240600CF */  addiu      $a2, $zero, 0xcf
/* A6C8 80009AC8 240A0198 */  addiu      $t2, $zero, 0x198
.L80009ACC:
/* A6CC 80009ACC 00CA0019 */  multu      $a2, $t2
/* A6D0 80009AD0 00007812 */  mflo       $t7
/* A6D4 80009AD4 012F3821 */  addu       $a3, $t1, $t7
/* A6D8 80009AD8 8CF80080 */  lw         $t8, 0x80($a3)
/* A6DC 80009ADC 00000000 */  nop
/* A6E0 80009AE0 33190001 */  andi       $t9, $t8, 1
/* A6E4 80009AE4 13200026 */  beqz       $t9, .L80009B80
/* A6E8 80009AE8 00000000 */   nop
/* A6EC 80009AEC 84E80090 */  lh         $t0, 0x90($a3)
/* A6F0 80009AF0 8D6E0000 */  lw         $t6, ($t3)
/* A6F4 80009AF4 00027840 */  sll        $t7, $v0, 1
/* A6F8 80009AF8 010E082A */  slt        $at, $t0, $t6
/* A6FC 80009AFC 10200006 */  beqz       $at, .L80009B18
/* A700 80009B00 018FC021 */   addu      $t8, $t4, $t7
/* A704 80009B04 24420001 */  addiu      $v0, $v0, 1
/* A708 80009B08 3059FFFF */  andi       $t9, $v0, 0xffff
/* A70C 80009B0C 03201025 */  or         $v0, $t9, $zero
/* A710 80009B10 1000001B */  b          .L80009B80
/* A714 80009B14 A7060000 */   sh        $a2, ($t8)
.L80009B18:
/* A718 80009B18 8E4E0000 */  lw         $t6, ($s2)
/* A71C 80009B1C 00057840 */  sll        $t7, $a1, 1
/* A720 80009B20 010E082A */  slt        $at, $t0, $t6
/* A724 80009B24 10200006 */  beqz       $at, .L80009B40
/* A728 80009B28 01AFC021 */   addu      $t8, $t5, $t7
/* A72C 80009B2C 24A50001 */  addiu      $a1, $a1, 1
/* A730 80009B30 30B9FFFF */  andi       $t9, $a1, 0xffff
/* A734 80009B34 03202825 */  or         $a1, $t9, $zero
/* A738 80009B38 10000011 */  b          .L80009B80
/* A73C 80009B3C A7060000 */   sh        $a2, ($t8)
.L80009B40:
/* A740 80009B40 8E6E0000 */  lw         $t6, ($s3)
/* A744 80009B44 00037840 */  sll        $t7, $v1, 1
/* A748 80009B48 010E082A */  slt        $at, $t0, $t6
/* A74C 80009B4C 10200007 */  beqz       $at, .L80009B6C
/* A750 80009B50 00047040 */   sll       $t6, $a0, 1
/* A754 80009B54 24630001 */  addiu      $v1, $v1, 1
/* A758 80009B58 3079FFFF */  andi       $t9, $v1, 0xffff
/* A75C 80009B5C 020FC021 */  addu       $t8, $s0, $t7
/* A760 80009B60 A7060000 */  sh         $a2, ($t8)
/* A764 80009B64 10000006 */  b          .L80009B80
/* A768 80009B68 03201825 */   or        $v1, $t9, $zero
.L80009B6C:
/* A76C 80009B6C 24840001 */  addiu      $a0, $a0, 1
/* A770 80009B70 3098FFFF */  andi       $t8, $a0, 0xffff
/* A774 80009B74 022E7821 */  addu       $t7, $s1, $t6
/* A778 80009B78 A5E60000 */  sh         $a2, ($t7)
/* A77C 80009B7C 03002025 */  or         $a0, $t8, $zero
.L80009B80:
/* A780 80009B80 24C6FFFF */  addiu      $a2, $a2, -1
/* A784 80009B84 0006CC00 */  sll        $t9, $a2, 0x10
/* A788 80009B88 00193403 */  sra        $a2, $t9, 0x10
/* A78C 80009B8C 04C1FFCF */  bgez       $a2, .L80009ACC
/* A790 80009B90 00000000 */   nop
.L80009B94:
/* A794 80009B94 00027840 */  sll        $t7, $v0, 1
/* A798 80009B98 2406FFFF */  addiu      $a2, $zero, -1
/* A79C 80009B9C 018FC021 */  addu       $t8, $t4, $t7
/* A7A0 80009BA0 0005C840 */  sll        $t9, $a1, 1
/* A7A4 80009BA4 A7060000 */  sh         $a2, ($t8)
/* A7A8 80009BA8 01B97021 */  addu       $t6, $t5, $t9
/* A7AC 80009BAC A5C60000 */  sh         $a2, ($t6)
/* A7B0 80009BB0 00037840 */  sll        $t7, $v1, 1
/* A7B4 80009BB4 020FC021 */  addu       $t8, $s0, $t7
/* A7B8 80009BB8 0004C840 */  sll        $t9, $a0, 1
/* A7BC 80009BBC A7060000 */  sh         $a2, ($t8)
/* A7C0 80009BC0 02397021 */  addu       $t6, $s1, $t9
/* A7C4 80009BC4 A5C60000 */  sh         $a2, ($t6)
/* A7C8 80009BC8 8FB30014 */  lw         $s3, 0x14($sp)
/* A7CC 80009BCC 8FB20010 */  lw         $s2, 0x10($sp)
/* A7D0 80009BD0 8FB1000C */  lw         $s1, 0xc($sp)
/* A7D4 80009BD4 8FB00008 */  lw         $s0, 8($sp)
/* A7D8 80009BD8 03E00008 */  jr         $ra
/* A7DC 80009BDC 27BD0018 */   addiu     $sp, $sp, 0x18
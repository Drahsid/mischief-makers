glabel func_800156C4
/* 162C4 800156C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 162C8 800156C8 30A6FFFF */  andi       $a2, $a1, 0xffff
/* 162CC 800156CC 00067080 */  sll        $t6, $a2, 2
/* 162D0 800156D0 01C67023 */  subu       $t6, $t6, $a2
/* 162D4 800156D4 AFB00014 */  sw         $s0, 0x14($sp)
/* 162D8 800156D8 000E7080 */  sll        $t6, $t6, 2
/* 162DC 800156DC AFBF001C */  sw         $ra, 0x1c($sp)
/* 162E0 800156E0 AFB10018 */  sw         $s1, 0x18($sp)
/* 162E4 800156E4 AFA50024 */  sw         $a1, 0x24($sp)
/* 162E8 800156E8 01C67021 */  addu       $t6, $t6, $a2
/* 162EC 800156EC 00001025 */  or         $v0, $zero, $zero
/* 162F0 800156F0 000E7080 */  sll        $t6, $t6, 2
/* 162F4 800156F4 01C67023 */  subu       $t6, $t6, $a2
/* 162F8 800156F8 3C0F800F */  lui        $t7, %hi(gActors)
/* 162FC 800156FC 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 16300 80015700 000E70C0 */  sll        $t6, $t6, 3
/* 16304 80015704 A0820026 */  sb         $v0, 0x26($a0)
/* 16308 80015708 A0820025 */  sb         $v0, 0x25($a0)
/* 1630C 8001570C A0820024 */  sb         $v0, 0x24($a0)
/* 16310 80015710 A0800027 */  sb         $zero, 0x27($a0)
/* 16314 80015714 01CF8021 */  addu       $s0, $t6, $t7
/* 16318 80015718 861800AA */  lh         $t8, 0xaa($s0)
/* 1631C 8001571C 86190088 */  lh         $t9, 0x88($s0)
/* 16320 80015720 860A00AE */  lh         $t2, 0xae($s0)
/* 16324 80015724 860B008C */  lh         $t3, 0x8c($s0)
/* 16328 80015728 00808825 */  or         $s1, $a0, $zero
/* 1632C 8001572C 03192021 */  addu       $a0, $t8, $t9
/* 16330 80015730 24840001 */  addiu      $a0, $a0, 1
/* 16334 80015734 014B2821 */  addu       $a1, $t2, $t3
/* 16338 80015738 00056400 */  sll        $t4, $a1, 0x10
/* 1633C 8001573C 00044400 */  sll        $t0, $a0, 0x10
/* 16340 80015740 00082403 */  sra        $a0, $t0, 0x10
/* 16344 80015744 0C004AAD */  jal        func_80012AB4
/* 16348 80015748 000C2C03 */   sra       $a1, $t4, 0x10
/* 1634C 8001574C 304E0080 */  andi       $t6, $v0, 0x80
/* 16350 80015750 11C00005 */  beqz       $t6, .L80015768
/* 16354 80015754 A2220000 */   sb        $v0, ($s1)
/* 16358 80015758 922F0024 */  lbu        $t7, 0x24($s1)
/* 1635C 8001575C 00000000 */  nop
/* 16360 80015760 25F80001 */  addiu      $t8, $t7, 1
/* 16364 80015764 A2380024 */  sb         $t8, 0x24($s1)
.L80015768:
/* 16368 80015768 861900AC */  lh         $t9, 0xac($s0)
/* 1636C 8001576C 860800AA */  lh         $t0, 0xaa($s0)
/* 16370 80015770 860B0088 */  lh         $t3, 0x88($s0)
/* 16374 80015774 860E00AE */  lh         $t6, 0xae($s0)
/* 16378 80015778 860F008C */  lh         $t7, 0x8c($s0)
/* 1637C 8001577C 03284821 */  addu       $t1, $t9, $t0
/* 16380 80015780 05210003 */  bgez       $t1, .L80015790
/* 16384 80015784 00095043 */   sra       $t2, $t1, 1
/* 16388 80015788 25210001 */  addiu      $at, $t1, 1
/* 1638C 8001578C 00015043 */  sra        $t2, $at, 1
.L80015790:
/* 16390 80015790 014B2021 */  addu       $a0, $t2, $t3
/* 16394 80015794 01CF2821 */  addu       $a1, $t6, $t7
/* 16398 80015798 0005C400 */  sll        $t8, $a1, 0x10
/* 1639C 8001579C 00046400 */  sll        $t4, $a0, 0x10
/* 163A0 800157A0 000C2403 */  sra        $a0, $t4, 0x10
/* 163A4 800157A4 0C004AAD */  jal        func_80012AB4
/* 163A8 800157A8 00182C03 */   sra       $a1, $t8, 0x10
/* 163AC 800157AC 30480080 */  andi       $t0, $v0, 0x80
/* 163B0 800157B0 11000005 */  beqz       $t0, .L800157C8
/* 163B4 800157B4 A2220001 */   sb        $v0, 1($s1)
/* 163B8 800157B8 92290024 */  lbu        $t1, 0x24($s1)
/* 163BC 800157BC 00000000 */  nop
/* 163C0 800157C0 252A0001 */  addiu      $t2, $t1, 1
/* 163C4 800157C4 A22A0024 */  sb         $t2, 0x24($s1)
.L800157C8:
/* 163C8 800157C8 860B00AC */  lh         $t3, 0xac($s0)
/* 163CC 800157CC 860C0088 */  lh         $t4, 0x88($s0)
/* 163D0 800157D0 860F00AE */  lh         $t7, 0xae($s0)
/* 163D4 800157D4 8618008C */  lh         $t8, 0x8c($s0)
/* 163D8 800157D8 016C2021 */  addu       $a0, $t3, $t4
/* 163DC 800157DC 2484FFFF */  addiu      $a0, $a0, -1
/* 163E0 800157E0 01F82821 */  addu       $a1, $t7, $t8
/* 163E4 800157E4 0005CC00 */  sll        $t9, $a1, 0x10
/* 163E8 800157E8 00046C00 */  sll        $t5, $a0, 0x10
/* 163EC 800157EC 000D2403 */  sra        $a0, $t5, 0x10
/* 163F0 800157F0 0C004AAD */  jal        func_80012AB4
/* 163F4 800157F4 00192C03 */   sra       $a1, $t9, 0x10
/* 163F8 800157F8 30490080 */  andi       $t1, $v0, 0x80
/* 163FC 800157FC 11200005 */  beqz       $t1, .L80015814
/* 16400 80015800 A2220002 */   sb        $v0, 2($s1)
/* 16404 80015804 922A0024 */  lbu        $t2, 0x24($s1)
/* 16408 80015808 00000000 */  nop
/* 1640C 8001580C 254B0001 */  addiu      $t3, $t2, 1
/* 16410 80015810 A22B0024 */  sb         $t3, 0x24($s1)
.L80015814:
/* 16414 80015814 861800AE */  lh         $t8, 0xae($s0)
/* 16418 80015818 8619008C */  lh         $t9, 0x8c($s0)
/* 1641C 8001581C 860C00AA */  lh         $t4, 0xaa($s0)
/* 16420 80015820 860D0088 */  lh         $t5, 0x88($s0)
/* 16424 80015824 03192821 */  addu       $a1, $t8, $t9
/* 16428 80015828 24A5FFFF */  addiu      $a1, $a1, -1
/* 1642C 8001582C 018D2021 */  addu       $a0, $t4, $t5
/* 16430 80015830 00047400 */  sll        $t6, $a0, 0x10
/* 16434 80015834 00054400 */  sll        $t0, $a1, 0x10
/* 16438 80015838 00082C03 */  sra        $a1, $t0, 0x10
/* 1643C 8001583C 0C004AAD */  jal        func_80012AB4
/* 16440 80015840 000E2403 */   sra       $a0, $t6, 0x10
/* 16444 80015844 304A0080 */  andi       $t2, $v0, 0x80
/* 16448 80015848 11400005 */  beqz       $t2, .L80015860
/* 1644C 8001584C A2220003 */   sb        $v0, 3($s1)
/* 16450 80015850 922B0026 */  lbu        $t3, 0x26($s1)
/* 16454 80015854 00000000 */  nop
/* 16458 80015858 256C0001 */  addiu      $t4, $t3, 1
/* 1645C 8001585C A22C0026 */  sb         $t4, 0x26($s1)
.L80015860:
/* 16460 80015860 861900B0 */  lh         $t9, 0xb0($s0)
/* 16464 80015864 860800AE */  lh         $t0, 0xae($s0)
/* 16468 80015868 860D00AA */  lh         $t5, 0xaa($s0)
/* 1646C 8001586C 860E0088 */  lh         $t6, 0x88($s0)
/* 16470 80015870 860B008C */  lh         $t3, 0x8c($s0)
/* 16474 80015874 03284821 */  addu       $t1, $t9, $t0
/* 16478 80015878 01AE2021 */  addu       $a0, $t5, $t6
/* 1647C 8001587C 00047C00 */  sll        $t7, $a0, 0x10
/* 16480 80015880 000FC403 */  sra        $t8, $t7, 0x10
/* 16484 80015884 03002025 */  or         $a0, $t8, $zero
/* 16488 80015888 05210003 */  bgez       $t1, .L80015898
/* 1648C 8001588C 00095043 */   sra       $t2, $t1, 1
/* 16490 80015890 25210001 */  addiu      $at, $t1, 1
/* 16494 80015894 00015043 */  sra        $t2, $at, 1
.L80015898:
/* 16498 80015898 014B2821 */  addu       $a1, $t2, $t3
/* 1649C 8001589C 00056400 */  sll        $t4, $a1, 0x10
/* 164A0 800158A0 0C004AAD */  jal        func_80012AB4
/* 164A4 800158A4 000C2C03 */   sra       $a1, $t4, 0x10
/* 164A8 800158A8 304E0080 */  andi       $t6, $v0, 0x80
/* 164AC 800158AC 11C00005 */  beqz       $t6, .L800158C4
/* 164B0 800158B0 A2220004 */   sb        $v0, 4($s1)
/* 164B4 800158B4 922F0026 */  lbu        $t7, 0x26($s1)
/* 164B8 800158B8 00000000 */  nop
/* 164BC 800158BC 25F80001 */  addiu      $t8, $t7, 1
/* 164C0 800158C0 A2380026 */  sb         $t8, 0x26($s1)
.L800158C4:
/* 164C4 800158C4 860B00B0 */  lh         $t3, 0xb0($s0)
/* 164C8 800158C8 860C008C */  lh         $t4, 0x8c($s0)
/* 164CC 800158CC 861900AA */  lh         $t9, 0xaa($s0)
/* 164D0 800158D0 86080088 */  lh         $t0, 0x88($s0)
/* 164D4 800158D4 016C2821 */  addu       $a1, $t3, $t4
/* 164D8 800158D8 24A50001 */  addiu      $a1, $a1, 1
/* 164DC 800158DC 03282021 */  addu       $a0, $t9, $t0
/* 164E0 800158E0 00044C00 */  sll        $t1, $a0, 0x10
/* 164E4 800158E4 00056C00 */  sll        $t5, $a1, 0x10
/* 164E8 800158E8 000D2C03 */  sra        $a1, $t5, 0x10
/* 164EC 800158EC 0C004AAD */  jal        func_80012AB4
/* 164F0 800158F0 00092403 */   sra       $a0, $t1, 0x10
/* 164F4 800158F4 304F0080 */  andi       $t7, $v0, 0x80
/* 164F8 800158F8 11E00005 */  beqz       $t7, .L80015910
/* 164FC 800158FC A2220005 */   sb        $v0, 5($s1)
/* 16500 80015900 92380026 */  lbu        $t8, 0x26($s1)
/* 16504 80015904 00000000 */  nop
/* 16508 80015908 27190001 */  addiu      $t9, $t8, 1
/* 1650C 8001590C A2390026 */  sb         $t9, 0x26($s1)
.L80015910:
/* 16510 80015910 860C00AE */  lh         $t4, 0xae($s0)
/* 16514 80015914 860D008C */  lh         $t5, 0x8c($s0)
/* 16518 80015918 860800AC */  lh         $t0, 0xac($s0)
/* 1651C 8001591C 86090088 */  lh         $t1, 0x88($s0)
/* 16520 80015920 018D2821 */  addu       $a1, $t4, $t5
/* 16524 80015924 24A5FFFF */  addiu      $a1, $a1, -1
/* 16528 80015928 01092021 */  addu       $a0, $t0, $t1
/* 1652C 8001592C 00045400 */  sll        $t2, $a0, 0x10
/* 16530 80015930 00057400 */  sll        $t6, $a1, 0x10
/* 16534 80015934 000E2C03 */  sra        $a1, $t6, 0x10
/* 16538 80015938 0C004AAD */  jal        func_80012AB4
/* 1653C 8001593C 000A2403 */   sra       $a0, $t2, 0x10
/* 16540 80015940 30580080 */  andi       $t8, $v0, 0x80
/* 16544 80015944 13000005 */  beqz       $t8, .L8001595C
/* 16548 80015948 A2220006 */   sb        $v0, 6($s1)
/* 1654C 8001594C 92390027 */  lbu        $t9, 0x27($s1)
/* 16550 80015950 00000000 */  nop
/* 16554 80015954 27280001 */  addiu      $t0, $t9, 1
/* 16558 80015958 A2280027 */  sb         $t0, 0x27($s1)
.L8001595C:
/* 1655C 8001595C 860D00B0 */  lh         $t5, 0xb0($s0)
/* 16560 80015960 860E00AE */  lh         $t6, 0xae($s0)
/* 16564 80015964 860900AC */  lh         $t1, 0xac($s0)
/* 16568 80015968 860A0088 */  lh         $t2, 0x88($s0)
/* 1656C 8001596C 8619008C */  lh         $t9, 0x8c($s0)
/* 16570 80015970 01AE7821 */  addu       $t7, $t5, $t6
/* 16574 80015974 012A2021 */  addu       $a0, $t1, $t2
/* 16578 80015978 00045C00 */  sll        $t3, $a0, 0x10
/* 1657C 8001597C 000B6403 */  sra        $t4, $t3, 0x10
/* 16580 80015980 01802025 */  or         $a0, $t4, $zero
/* 16584 80015984 05E10003 */  bgez       $t7, .L80015994
/* 16588 80015988 000FC043 */   sra       $t8, $t7, 1
/* 1658C 8001598C 25E10001 */  addiu      $at, $t7, 1
/* 16590 80015990 0001C043 */  sra        $t8, $at, 1
.L80015994:
/* 16594 80015994 03192821 */  addu       $a1, $t8, $t9
/* 16598 80015998 00054400 */  sll        $t0, $a1, 0x10
/* 1659C 8001599C 0C004AAD */  jal        func_80012AB4
/* 165A0 800159A0 00082C03 */   sra       $a1, $t0, 0x10
/* 165A4 800159A4 304A0080 */  andi       $t2, $v0, 0x80
/* 165A8 800159A8 11400005 */  beqz       $t2, .L800159C0
/* 165AC 800159AC A2220007 */   sb        $v0, 7($s1)
/* 165B0 800159B0 922B0027 */  lbu        $t3, 0x27($s1)
/* 165B4 800159B4 00000000 */  nop
/* 165B8 800159B8 256C0001 */  addiu      $t4, $t3, 1
/* 165BC 800159BC A22C0027 */  sb         $t4, 0x27($s1)
.L800159C0:
/* 165C0 800159C0 861900B0 */  lh         $t9, 0xb0($s0)
/* 165C4 800159C4 8608008C */  lh         $t0, 0x8c($s0)
/* 165C8 800159C8 860D00AC */  lh         $t5, 0xac($s0)
/* 165CC 800159CC 860E0088 */  lh         $t6, 0x88($s0)
/* 165D0 800159D0 03282821 */  addu       $a1, $t9, $t0
/* 165D4 800159D4 24A50001 */  addiu      $a1, $a1, 1
/* 165D8 800159D8 01AE2021 */  addu       $a0, $t5, $t6
/* 165DC 800159DC 00047C00 */  sll        $t7, $a0, 0x10
/* 165E0 800159E0 00054C00 */  sll        $t1, $a1, 0x10
/* 165E4 800159E4 00092C03 */  sra        $a1, $t1, 0x10
/* 165E8 800159E8 0C004AAD */  jal        func_80012AB4
/* 165EC 800159EC 000F2403 */   sra       $a0, $t7, 0x10
/* 165F0 800159F0 304B0080 */  andi       $t3, $v0, 0x80
/* 165F4 800159F4 11600005 */  beqz       $t3, .L80015A0C
/* 165F8 800159F8 A2220008 */   sb        $v0, 8($s1)
/* 165FC 800159FC 922C0027 */  lbu        $t4, 0x27($s1)
/* 16600 80015A00 00000000 */  nop
/* 16604 80015A04 258D0001 */  addiu      $t5, $t4, 1
/* 16608 80015A08 A22D0027 */  sb         $t5, 0x27($s1)
.L80015A0C:
/* 1660C 80015A0C 860E00AA */  lh         $t6, 0xaa($s0)
/* 16610 80015A10 860F0088 */  lh         $t7, 0x88($s0)
/* 16614 80015A14 860800B0 */  lh         $t0, 0xb0($s0)
/* 16618 80015A18 8609008C */  lh         $t1, 0x8c($s0)
/* 1661C 80015A1C 01CF2021 */  addu       $a0, $t6, $t7
/* 16620 80015A20 01092821 */  addu       $a1, $t0, $t1
/* 16624 80015A24 24A5FFFF */  addiu      $a1, $a1, -1
/* 16628 80015A28 24840001 */  addiu      $a0, $a0, 1
/* 1662C 80015A2C 0004C400 */  sll        $t8, $a0, 0x10
/* 16630 80015A30 00055400 */  sll        $t2, $a1, 0x10
/* 16634 80015A34 000A2C03 */  sra        $a1, $t2, 0x10
/* 16638 80015A38 0C004AAD */  jal        func_80012AB4
/* 1663C 80015A3C 00182403 */   sra       $a0, $t8, 0x10
/* 16640 80015A40 304C00C0 */  andi       $t4, $v0, 0xc0
/* 16644 80015A44 11800005 */  beqz       $t4, .L80015A5C
/* 16648 80015A48 A2220009 */   sb        $v0, 9($s1)
/* 1664C 80015A4C 922D0025 */  lbu        $t5, 0x25($s1)
/* 16650 80015A50 00000000 */  nop
/* 16654 80015A54 25AE0001 */  addiu      $t6, $t5, 1
/* 16658 80015A58 A22E0025 */  sb         $t6, 0x25($s1)
.L80015A5C:
/* 1665C 80015A5C 860F00AC */  lh         $t7, 0xac($s0)
/* 16660 80015A60 861800AA */  lh         $t8, 0xaa($s0)
/* 16664 80015A64 860C00B0 */  lh         $t4, 0xb0($s0)
/* 16668 80015A68 860D008C */  lh         $t5, 0x8c($s0)
/* 1666C 80015A6C 86090088 */  lh         $t1, 0x88($s0)
/* 16670 80015A70 01F8C821 */  addu       $t9, $t7, $t8
/* 16674 80015A74 07210003 */  bgez       $t9, .L80015A84
/* 16678 80015A78 00194043 */   sra       $t0, $t9, 1
/* 1667C 80015A7C 27210001 */  addiu      $at, $t9, 1
/* 16680 80015A80 00014043 */  sra        $t0, $at, 1
.L80015A84:
/* 16684 80015A84 018D2821 */  addu       $a1, $t4, $t5
/* 16688 80015A88 24A5FFFC */  addiu      $a1, $a1, -4
/* 1668C 80015A8C 01092021 */  addu       $a0, $t0, $t1
/* 16690 80015A90 00045400 */  sll        $t2, $a0, 0x10
/* 16694 80015A94 00057400 */  sll        $t6, $a1, 0x10
/* 16698 80015A98 000E2C03 */  sra        $a1, $t6, 0x10
/* 1669C 80015A9C 0C004AAD */  jal        func_80012AB4
/* 166A0 80015AA0 000A2403 */   sra       $a0, $t2, 0x10
/* 166A4 80015AA4 305800C0 */  andi       $t8, $v0, 0xc0
/* 166A8 80015AA8 13000005 */  beqz       $t8, .L80015AC0
/* 166AC 80015AAC A222000A */   sb        $v0, 0xa($s1)
/* 166B0 80015AB0 92390025 */  lbu        $t9, 0x25($s1)
/* 166B4 80015AB4 00000000 */  nop
/* 166B8 80015AB8 27280001 */  addiu      $t0, $t9, 1
/* 166BC 80015ABC A2280025 */  sb         $t0, 0x25($s1)
.L80015AC0:
/* 166C0 80015AC0 860900AC */  lh         $t1, 0xac($s0)
/* 166C4 80015AC4 860A0088 */  lh         $t2, 0x88($s0)
/* 166C8 80015AC8 860D00B0 */  lh         $t5, 0xb0($s0)
/* 166CC 80015ACC 860E008C */  lh         $t6, 0x8c($s0)
/* 166D0 80015AD0 012A2021 */  addu       $a0, $t1, $t2
/* 166D4 80015AD4 01AE2821 */  addu       $a1, $t5, $t6
/* 166D8 80015AD8 24A5FFFF */  addiu      $a1, $a1, -1
/* 166DC 80015ADC 2484FFFF */  addiu      $a0, $a0, -1
/* 166E0 80015AE0 00045C00 */  sll        $t3, $a0, 0x10
/* 166E4 80015AE4 00057C00 */  sll        $t7, $a1, 0x10
/* 166E8 80015AE8 000F2C03 */  sra        $a1, $t7, 0x10
/* 166EC 80015AEC 0C004AAD */  jal        func_80012AB4
/* 166F0 80015AF0 000B2403 */   sra       $a0, $t3, 0x10
/* 166F4 80015AF4 305900C0 */  andi       $t9, $v0, 0xc0
/* 166F8 80015AF8 13200005 */  beqz       $t9, .L80015B10
/* 166FC 80015AFC A222000B */   sb        $v0, 0xb($s1)
/* 16700 80015B00 92280025 */  lbu        $t0, 0x25($s1)
/* 16704 80015B04 00000000 */  nop
/* 16708 80015B08 25090001 */  addiu      $t1, $t0, 1
/* 1670C 80015B0C A2290025 */  sb         $t1, 0x25($s1)
.L80015B10:
/* 16710 80015B10 8FBF001C */  lw         $ra, 0x1c($sp)
/* 16714 80015B14 02201025 */  or         $v0, $s1, $zero
/* 16718 80015B18 8FB10018 */  lw         $s1, 0x18($sp)
/* 1671C 80015B1C 8FB00014 */  lw         $s0, 0x14($sp)
/* 16720 80015B20 03E00008 */  jr         $ra
/* 16724 80015B24 27BD0020 */   addiu     $sp, $sp, 0x20
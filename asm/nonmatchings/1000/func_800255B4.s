glabel func_800255B4
/* 261B4 800255B4 3C01800D */  lui        $at, %hi(D_800D16C4)
/* 261B8 800255B8 A42016C4 */  sh         $zero, %lo(D_800D16C4)($at)
/* 261BC 800255BC 3C01800C */  lui        $at, %hi(D_800BE6A8)
/* 261C0 800255C0 A420E6A8 */  sh         $zero, %lo(D_800BE6A8)($at)
/* 261C4 800255C4 3C01800C */  lui        $at, %hi(D_800BE710)
/* 261C8 800255C8 3088FFFF */  andi       $t0, $a0, 0xffff
/* 261CC 800255CC A020E710 */  sb         $zero, %lo(D_800BE710)($at)
/* 261D0 800255D0 3C19800D */  lui        $t9, %hi(D_800CC6EC)
/* 261D4 800255D4 2739C6EC */  addiu      $t9, $t9, %lo(D_800CC6EC)
/* 261D8 800255D8 0008C100 */  sll        $t8, $t0, 4
/* 261DC 800255DC 3C0B800C */  lui        $t3, %hi(D_800BE558)
/* 261E0 800255E0 3C0C800C */  lui        $t4, %hi(D_800BE550)
/* 261E4 800255E4 03191021 */  addu       $v0, $t8, $t9
/* 261E8 800255E8 844E0000 */  lh         $t6, ($v0)
/* 261EC 800255EC 258CE550 */  addiu      $t4, $t4, %lo(D_800BE550)
/* 261F0 800255F0 256BE558 */  addiu      $t3, $t3, %lo(D_800BE558)
/* 261F4 800255F4 AD800000 */  sw         $zero, ($t4)
/* 261F8 800255F8 AD600000 */  sw         $zero, ($t3)
/* 261FC 800255FC 3C01800C */  lui        $at, %hi(D_800BE568)
/* 26200 80025600 A42EE568 */  sh         $t6, %lo(D_800BE568)($at)
/* 26204 80025604 844F0002 */  lh         $t7, 2($v0)
/* 26208 80025608 3C01800C */  lui        $at, %hi(D_800BE56C)
/* 2620C 8002560C A42FE56C */  sh         $t7, %lo(D_800BE56C)($at)
/* 26210 80025610 84580004 */  lh         $t8, 4($v0)
/* 26214 80025614 3C01800C */  lui        $at, %hi(D_800BE574)
/* 26218 80025618 A438E574 */  sh         $t8, %lo(D_800BE574)($at)
/* 2621C 8002561C 84590006 */  lh         $t9, 6($v0)
/* 26220 80025620 3C01800C */  lui        $at, %hi(D_800BE570)
/* 26224 80025624 A439E570 */  sh         $t9, %lo(D_800BE570)($at)
/* 26228 80025628 844E0008 */  lh         $t6, 8($v0)
/* 2622C 8002562C 844F000A */  lh         $t7, 0xa($v0)
/* 26230 80025630 3C0A800F */  lui        $t2, %hi(D_800EF510)
/* 26234 80025634 A56E0000 */  sh         $t6, ($t3)
/* 26238 80025638 85660000 */  lh         $a2, ($t3)
/* 2623C 8002563C 254AF510 */  addiu      $t2, $t2, %lo(D_800EF510)
/* 26240 80025640 3C01800C */  lui        $at, %hi(D_800BE560)
/* 26244 80025644 A54F0088 */  sh         $t7, 0x88($t2)
/* 26248 80025648 A426E560 */  sh         $a2, %lo(D_800BE560)($at)
/* 2624C 8002564C 85580088 */  lh         $t8, 0x88($t2)
/* 26250 80025650 3C01800C */  lui        $at, %hi(D_800BE5D8)
/* 26254 80025654 A5860000 */  sh         $a2, ($t4)
/* 26258 80025658 00D8C821 */  addu       $t9, $a2, $t8
/* 2625C 8002565C A439E5D8 */  sh         $t9, %lo(D_800BE5D8)($at)
/* 26260 80025660 844E000C */  lh         $t6, 0xc($v0)
/* 26264 80025664 3C0D800C */  lui        $t5, %hi(D_800BE55C)
/* 26268 80025668 25ADE55C */  addiu      $t5, $t5, %lo(D_800BE55C)
/* 2626C 8002566C 844F000E */  lh         $t7, 0xe($v0)
/* 26270 80025670 A5AE0000 */  sh         $t6, ($t5)
/* 26274 80025674 85A70000 */  lh         $a3, ($t5)
/* 26278 80025678 3C01800C */  lui        $at, %hi(D_800BE564)
/* 2627C 8002567C A54F008C */  sh         $t7, 0x8c($t2)
/* 26280 80025680 A427E564 */  sh         $a3, %lo(D_800BE564)($at)
/* 26284 80025684 3C01800C */  lui        $at, %hi(D_800BE554)
/* 26288 80025688 A427E554 */  sh         $a3, %lo(D_800BE554)($at)
/* 2628C 8002568C 8558008C */  lh         $t8, 0x8c($t2)
/* 26290 80025690 3C01800C */  lui        $at, %hi(D_800BE5DC)
/* 26294 80025694 00F8C821 */  addu       $t9, $a3, $t8
/* 26298 80025698 A439E5DC */  sh         $t9, %lo(D_800BE5DC)($at)
/* 2629C 8002569C 3C01800C */  lui        $at, %hi(D_800BE61C)
/* 262A0 800256A0 AC20E61C */  sw         $zero, %lo(D_800BE61C)($at)
/* 262A4 800256A4 3C01800C */  lui        $at, %hi(D_800BE620)
/* 262A8 800256A8 AC20E620 */  sw         $zero, %lo(D_800BE620)($at)
/* 262AC 800256AC 3C01800C */  lui        $at, %hi(D_800BE62C)
/* 262B0 800256B0 A420E62C */  sh         $zero, %lo(D_800BE62C)($at)
/* 262B4 800256B4 3C01800C */  lui        $at, %hi(D_800BE630)
/* 262B8 800256B8 A420E630 */  sh         $zero, %lo(D_800BE630)($at)
/* 262BC 800256BC 3C01800C */  lui        $at, %hi(D_800BE704)
/* 262C0 800256C0 240E0010 */  addiu      $t6, $zero, 0x10
/* 262C4 800256C4 A42EE704 */  sh         $t6, %lo(D_800BE704)($at)
/* 262C8 800256C8 3C01800C */  lui        $at, %hi(D_800BE708)
/* 262CC 800256CC 240F0004 */  addiu      $t7, $zero, 4
/* 262D0 800256D0 A42FE708 */  sh         $t7, %lo(D_800BE708)($at)
/* 262D4 800256D4 3C01800C */  lui        $at, %hi(D_800BE588)
/* 262D8 800256D8 A420E588 */  sh         $zero, %lo(D_800BE588)($at)
/* 262DC 800256DC 3C01800C */  lui        $at, %hi(D_800BE58C)
/* 262E0 800256E0 A420E58C */  sh         $zero, %lo(D_800BE58C)($at)
/* 262E4 800256E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 262E8 800256E8 3C01800C */  lui        $at, %hi(D_800BE544)
/* 262EC 800256EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 262F0 800256F0 A420E544 */  sh         $zero, %lo(D_800BE544)($at)
/* 262F4 800256F4 3C1F0010 */  lui        $ra, 0x10
/* 262F8 800256F8 3C01800C */  lui        $at, %hi(D_800BE548)
/* 262FC 800256FC AC3FE548 */  sw         $ra, %lo(D_800BE548)($at)
/* 26300 80025700 3C01800C */  lui        $at, %hi(D_800BE54C)
/* 26304 80025704 AC3FE54C */  sw         $ra, %lo(D_800BE54C)($at)
/* 26308 80025708 3C01800C */  lui        $at, %hi(D_800BE734)
/* 2630C 8002570C AC20E734 */  sw         $zero, %lo(D_800BE734)($at)
/* 26310 80025710 3C01800C */  lui        $at, %hi(D_800BE738)
/* 26314 80025714 0008C080 */  sll        $t8, $t0, 2
/* 26318 80025718 AC20E738 */  sw         $zero, %lo(D_800BE738)($at)
/* 2631C 8002571C 0308C021 */  addu       $t8, $t8, $t0
/* 26320 80025720 3C0E800D */  lui        $t6, %hi(D_800CCC6C)
/* 26324 80025724 3C01800C */  lui        $at, %hi(D_800BE73C)
/* 26328 80025728 25CECC6C */  addiu      $t6, $t6, %lo(D_800CCC6C)
/* 2632C 8002572C 0018C840 */  sll        $t9, $t8, 1
/* 26330 80025730 AC20E73C */  sw         $zero, %lo(D_800BE73C)($at)
/* 26334 80025734 032E1821 */  addu       $v1, $t9, $t6
/* 26338 80025738 846F0000 */  lh         $t7, ($v1)
/* 2633C 8002573C 3C01800C */  lui        $at, %hi(D_800BE654)
/* 26340 80025740 3C05800C */  lui        $a1, %hi(D_800BE654)
/* 26344 80025744 A42FE654 */  sh         $t7, %lo(D_800BE654)($at)
/* 26348 80025748 94A5E654 */  lhu        $a1, %lo(D_800BE654)($a1)
/* 2634C 8002574C 24180004 */  addiu      $t8, $zero, 4
/* 26350 80025750 3C01800C */  lui        $at, %hi(D_800BE644)
/* 26354 80025754 00B8C804 */  sllv       $t9, $t8, $a1
/* 26358 80025758 A439E644 */  sh         $t9, %lo(D_800BE644)($at)
/* 2635C 8002575C 240E4000 */  addiu      $t6, $zero, 0x4000
/* 26360 80025760 3C01800C */  lui        $at, %hi(D_800BE648)
/* 26364 80025764 24180006 */  addiu      $t8, $zero, 6
/* 26368 80025768 00AE7807 */  srav       $t7, $t6, $a1
/* 2636C 8002576C A42FE648 */  sh         $t7, %lo(D_800BE648)($at)
/* 26370 80025770 241907FF */  addiu      $t9, $zero, 0x7ff
/* 26374 80025774 03054823 */  subu       $t1, $t8, $a1
/* 26378 80025778 01397007 */  srav       $t6, $t9, $t1
/* 2637C 8002577C 3C01800C */  lui        $at, %hi(D_800BE64C)
/* 26380 80025780 A42EE64C */  sh         $t6, %lo(D_800BE64C)($at)
/* 26384 80025784 3C0F800C */  lui        $t7, %hi(D_800BE64C)
/* 26388 80025788 95EFE64C */  lhu        $t7, %lo(D_800BE64C)($t7)
/* 2638C 8002578C 24183FFF */  addiu      $t8, $zero, 0x3fff
/* 26390 80025790 3C01800C */  lui        $at, %hi(D_800BE650)
/* 26394 80025794 030FC823 */  subu       $t9, $t8, $t7
/* 26398 80025798 A439E650 */  sh         $t9, %lo(D_800BE650)($at)
/* 2639C 8002579C 3C01800C */  lui        $at, %hi(D_800BE660)
/* 263A0 800257A0 24AE0002 */  addiu      $t6, $a1, 2
/* 263A4 800257A4 A42EE660 */  sh         $t6, %lo(D_800BE660)($at)
/* 263A8 800257A8 24180FFF */  addiu      $t8, $zero, 0xfff
/* 263AC 800257AC 01387807 */  srav       $t7, $t8, $t1
/* 263B0 800257B0 3C01800C */  lui        $at, %hi(D_800BE658)
/* 263B4 800257B4 A42FE658 */  sh         $t7, %lo(D_800BE658)($at)
/* 263B8 800257B8 3C19800C */  lui        $t9, %hi(D_800BE658)
/* 263BC 800257BC 9739E658 */  lhu        $t9, %lo(D_800BE658)($t9)
/* 263C0 800257C0 340EFFFF */  ori        $t6, $zero, 0xffff
/* 263C4 800257C4 3C01800C */  lui        $at, %hi(D_800BE65C)
/* 263C8 800257C8 01D9C023 */  subu       $t8, $t6, $t9
/* 263CC 800257CC A438E65C */  sh         $t8, %lo(D_800BE65C)($at)
/* 263D0 800257D0 3C01800C */  lui        $at, %hi(D_800BE6DC)
/* 263D4 800257D4 AC20E6DC */  sw         $zero, %lo(D_800BE6DC)($at)
/* 263D8 800257D8 3C01800C */  lui        $at, %hi(D_800BE6E0)
/* 263DC 800257DC AC20E6E0 */  sw         $zero, %lo(D_800BE6E0)($at)
/* 263E0 800257E0 846F0002 */  lh         $t7, 2($v1)
/* 263E4 800257E4 3C01800C */  lui        $at, %hi(D_800BE664)
/* 263E8 800257E8 A42FE664 */  sh         $t7, %lo(D_800BE664)($at)
/* 263EC 800257EC 3C01800C */  lui        $at, %hi(D_800BE6C0)
/* 263F0 800257F0 240EFFF8 */  addiu      $t6, $zero, -8
/* 263F4 800257F4 AC2EE6C0 */  sw         $t6, %lo(D_800BE6C0)($at)
/* 263F8 800257F8 84790004 */  lh         $t9, 4($v1)
/* 263FC 800257FC 3C01800C */  lui        $at, %hi(D_800BE6CC)
/* 26400 80025800 AC39E6CC */  sw         $t9, %lo(D_800BE6CC)($at)
/* 26404 80025804 84780006 */  lh         $t8, 6($v1)
/* 26408 80025808 3C01800C */  lui        $at, %hi(D_800BE6D8)
/* 2640C 8002580C AC38E6D8 */  sw         $t8, %lo(D_800BE6D8)($at)
/* 26410 80025810 3C018013 */  lui        $at, %hi(D_801373DC)
/* 26414 80025814 240F0010 */  addiu      $t7, $zero, 0x10
/* 26418 80025818 A42F73DC */  sh         $t7, %lo(D_801373DC)($at)
/* 2641C 8002581C AFA40020 */  sw         $a0, 0x20($sp)
/* 26420 80025820 3C018013 */  lui        $at, %hi(D_801373DE)
/* 26424 80025824 A42073DE */  sh         $zero, %lo(D_801373DE)($at)
/* 26428 80025828 0C022FEC */  jal        func_8008BFB0
/* 2642C 8002582C A7A80022 */   sh        $t0, 0x22($sp)
/* 26430 80025830 3C028010 */  lui        $v0, %hi(D_80104098)
/* 26434 80025834 24424098 */  addiu      $v0, $v0, %lo(D_80104098)
/* 26438 80025838 240E00F0 */  addiu      $t6, $zero, 0xf0
/* 2643C 8002583C 2419FFB4 */  addiu      $t9, $zero, -0x4c
/* 26440 80025840 241800A0 */  addiu      $t8, $zero, 0xa0
/* 26444 80025844 24030002 */  addiu      $v1, $zero, 2
/* 26448 80025848 A44E2882 */  sh         $t6, 0x2882($v0)
/* 2644C 8002584C A4592884 */  sh         $t9, 0x2884($v0)
/* 26450 80025850 A4582888 */  sh         $t8, 0x2888($v0)
/* 26454 80025854 240F00FF */  addiu      $t7, $zero, 0xff
/* 26458 80025858 240E00F4 */  addiu      $t6, $zero, 0xf4
/* 2645C 8002585C 2419FF84 */  addiu      $t9, $zero, -0x7c
/* 26460 80025860 24180080 */  addiu      $t8, $zero, 0x80
/* 26464 80025864 A4432880 */  sh         $v1, 0x2880($v0)
/* 26468 80025868 A04F2894 */  sb         $t7, 0x2894($v0)
/* 2646C 8002586C A4432920 */  sh         $v1, 0x2920($v0)
/* 26470 80025870 A44E2922 */  sh         $t6, 0x2922($v0)
/* 26474 80025874 A4592924 */  sh         $t9, 0x2924($v0)
/* 26478 80025878 A4582928 */  sh         $t8, 0x2928($v0)
/* 2647C 8002587C 3C01800D */  lui        $at, %hi(D_800CA230)
/* 26480 80025880 97A40022 */  lhu        $a0, 0x22($sp)
/* 26484 80025884 A420A230 */  sh         $zero, %lo(D_800CA230)($at)
/* 26488 80025888 3C01800D */  lui        $at, %hi(D_800CBF58)
/* 2648C 8002588C 3C0F800D */  lui        $t7, %hi(D_800CD034)
/* 26490 80025890 A420BF58 */  sh         $zero, %lo(D_800CBF58)($at)
/* 26494 80025894 01E47821 */  addu       $t7, $t7, $a0
/* 26498 80025898 91EFD034 */  lbu        $t7, %lo(D_800CD034)($t7)
/* 2649C 8002589C 3C01800C */  lui        $at, %hi(D_800BE70C)
/* 264A0 800258A0 A020E70C */  sb         $zero, %lo(D_800BE70C)($at)
/* 264A4 800258A4 2DE1000B */  sltiu      $at, $t7, 0xb
/* 264A8 800258A8 102000A1 */  beqz       $at, .L80025B30
/* 264AC 800258AC 000F7880 */   sll       $t7, $t7, 2
/* 264B0 800258B0 3C01800F */  lui        $at, %hi(D_800EB650)
/* 264B4 800258B4 002F0821 */  addu       $at, $at, $t7
/* 264B8 800258B8 8C2FB650 */  lw         $t7, %lo(D_800EB650)($at)
/* 264BC 800258BC 00000000 */  nop
/* 264C0 800258C0 01E00008 */  jr         $t7
/* 264C4 800258C4 00000000 */   nop
/* 264C8 800258C8 3C038038 */  lui        $v1, 0x8038
/* 264CC 800258CC 3C018013 */  lui        $at, %hi(D_8013769C)
/* 264D0 800258D0 AC23769C */  sw         $v1, %lo(D_8013769C)($at)
/* 264D4 800258D4 3C0E8038 */  lui        $t6, 0x8038
/* 264D8 800258D8 35CE0200 */  ori        $t6, $t6, 0x200
/* 264DC 800258DC 3C018013 */  lui        $at, %hi(D_801376A0)
/* 264E0 800258E0 3C058038 */  lui        $a1, 0x8038
/* 264E4 800258E4 AC2E76A0 */  sw         $t6, %lo(D_801376A0)($at)
/* 264E8 800258E8 34A50400 */  ori        $a1, $a1, 0x400
/* 264EC 800258EC 3C018013 */  lui        $at, %hi(D_801376A4)
/* 264F0 800258F0 AC2576A4 */  sw         $a1, %lo(D_801376A4)($at)
/* 264F4 800258F4 24020001 */  addiu      $v0, $zero, 1
/* 264F8 800258F8 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 264FC 800258FC A022E6E4 */  sb         $v0, %lo(D_800BE6E4)($at)
/* 26500 80025900 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 26504 80025904 A022E6E8 */  sb         $v0, %lo(D_800BE6E8)($at)
/* 26508 80025908 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 2650C 8002590C 10000088 */  b          .L80025B30
/* 26510 80025910 A022E6EC */   sb        $v0, %lo(D_800BE6EC)($at)
/* 26514 80025914 3C038038 */  lui        $v1, 0x8038
/* 26518 80025918 3C018013 */  lui        $at, %hi(D_8013769C)
/* 2651C 8002591C 3C058038 */  lui        $a1, 0x8038
/* 26520 80025920 AC23769C */  sw         $v1, %lo(D_8013769C)($at)
/* 26524 80025924 34A50400 */  ori        $a1, $a1, 0x400
/* 26528 80025928 3C018013 */  lui        $at, %hi(D_801376A0)
/* 2652C 8002592C AC2576A0 */  sw         $a1, %lo(D_801376A0)($at)
/* 26530 80025930 24020001 */  addiu      $v0, $zero, 1
/* 26534 80025934 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 26538 80025938 A022E6E4 */  sb         $v0, %lo(D_800BE6E4)($at)
/* 2653C 8002593C 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 26540 80025940 A022E6E8 */  sb         $v0, %lo(D_800BE6E8)($at)
/* 26544 80025944 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 26548 80025948 10000079 */  b          .L80025B30
/* 2654C 8002594C A020E6EC */   sb        $zero, %lo(D_800BE6EC)($at)
/* 26550 80025950 3C058038 */  lui        $a1, 0x8038
/* 26554 80025954 34A50400 */  ori        $a1, $a1, 0x400
/* 26558 80025958 3C018013 */  lui        $at, %hi(D_8013769C)
/* 2655C 8002595C AC25769C */  sw         $a1, %lo(D_8013769C)($at)
/* 26560 80025960 3C038038 */  lui        $v1, 0x8038
/* 26564 80025964 3C018013 */  lui        $at, %hi(D_801376A0)
/* 26568 80025968 AC2376A0 */  sw         $v1, %lo(D_801376A0)($at)
/* 2656C 8002596C 3C018013 */  lui        $at, %hi(D_801376A4)
/* 26570 80025970 AC2576A4 */  sw         $a1, %lo(D_801376A4)($at)
/* 26574 80025974 24020001 */  addiu      $v0, $zero, 1
/* 26578 80025978 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 2657C 8002597C A022E6E4 */  sb         $v0, %lo(D_800BE6E4)($at)
/* 26580 80025980 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 26584 80025984 A022E6E8 */  sb         $v0, %lo(D_800BE6E8)($at)
/* 26588 80025988 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 2658C 8002598C 10000068 */  b          .L80025B30
/* 26590 80025990 A022E6EC */   sb        $v0, %lo(D_800BE6EC)($at)
/* 26594 80025994 3C038038 */  lui        $v1, 0x8038
/* 26598 80025998 3C018013 */  lui        $at, %hi(D_8013769C)
/* 2659C 8002599C AC23769C */  sw         $v1, %lo(D_8013769C)($at)
/* 265A0 800259A0 3C018013 */  lui        $at, %hi(D_801376A0)
/* 265A4 800259A4 AC2376A0 */  sw         $v1, %lo(D_801376A0)($at)
/* 265A8 800259A8 3C018013 */  lui        $at, %hi(D_801376A4)
/* 265AC 800259AC AC2376A4 */  sw         $v1, %lo(D_801376A4)($at)
/* 265B0 800259B0 24020001 */  addiu      $v0, $zero, 1
/* 265B4 800259B4 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 265B8 800259B8 A022E6E4 */  sb         $v0, %lo(D_800BE6E4)($at)
/* 265BC 800259BC 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 265C0 800259C0 A022E6E8 */  sb         $v0, %lo(D_800BE6E8)($at)
/* 265C4 800259C4 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 265C8 800259C8 10000059 */  b          .L80025B30
/* 265CC 800259CC A022E6EC */   sb        $v0, %lo(D_800BE6EC)($at)
/* 265D0 800259D0 3C038038 */  lui        $v1, 0x8038
/* 265D4 800259D4 3C018013 */  lui        $at, %hi(D_8013769C)
/* 265D8 800259D8 AC23769C */  sw         $v1, %lo(D_8013769C)($at)
/* 265DC 800259DC 3C198038 */  lui        $t9, 0x8038
/* 265E0 800259E0 37390200 */  ori        $t9, $t9, 0x200
/* 265E4 800259E4 3C018013 */  lui        $at, %hi(D_801376A0)
/* 265E8 800259E8 AC3976A0 */  sw         $t9, %lo(D_801376A0)($at)
/* 265EC 800259EC 24020001 */  addiu      $v0, $zero, 1
/* 265F0 800259F0 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 265F4 800259F4 A022E6E4 */  sb         $v0, %lo(D_800BE6E4)($at)
/* 265F8 800259F8 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 265FC 800259FC A022E6E8 */  sb         $v0, %lo(D_800BE6E8)($at)
/* 26600 80025A00 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 26604 80025A04 1000004A */  b          .L80025B30
/* 26608 80025A08 A020E6EC */   sb        $zero, %lo(D_800BE6EC)($at)
/* 2660C 80025A0C 3C188038 */  lui        $t8, 0x8038
/* 26610 80025A10 37180200 */  ori        $t8, $t8, 0x200
/* 26614 80025A14 3C018013 */  lui        $at, %hi(D_801376A0)
/* 26618 80025A18 AC3876A0 */  sw         $t8, %lo(D_801376A0)($at)
/* 2661C 80025A1C 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 26620 80025A20 A020E6E4 */  sb         $zero, %lo(D_800BE6E4)($at)
/* 26624 80025A24 24020001 */  addiu      $v0, $zero, 1
/* 26628 80025A28 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 2662C 80025A2C A022E6E8 */  sb         $v0, %lo(D_800BE6E8)($at)
/* 26630 80025A30 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 26634 80025A34 1000003E */  b          .L80025B30
/* 26638 80025A38 A020E6EC */   sb        $zero, %lo(D_800BE6EC)($at)
/* 2663C 80025A3C 3C0F8038 */  lui        $t7, 0x8038
/* 26640 80025A40 35EF0200 */  ori        $t7, $t7, 0x200
/* 26644 80025A44 3C018013 */  lui        $at, %hi(D_8013769C)
/* 26648 80025A48 AC2F769C */  sw         $t7, %lo(D_8013769C)($at)
/* 2664C 80025A4C 24020001 */  addiu      $v0, $zero, 1
/* 26650 80025A50 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 26654 80025A54 A022E6E4 */  sb         $v0, %lo(D_800BE6E4)($at)
/* 26658 80025A58 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 2665C 80025A5C A020E6E8 */  sb         $zero, %lo(D_800BE6E8)($at)
/* 26660 80025A60 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 26664 80025A64 10000032 */  b          .L80025B30
/* 26668 80025A68 A020E6EC */   sb        $zero, %lo(D_800BE6EC)($at)
/* 2666C 80025A6C 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 26670 80025A70 A020E6E4 */  sb         $zero, %lo(D_800BE6E4)($at)
/* 26674 80025A74 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 26678 80025A78 A020E6E8 */  sb         $zero, %lo(D_800BE6E8)($at)
/* 2667C 80025A7C 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 26680 80025A80 1000002B */  b          .L80025B30
/* 26684 80025A84 A020E6EC */   sb        $zero, %lo(D_800BE6EC)($at)
/* 26688 80025A88 3C038038 */  lui        $v1, 0x8038
/* 2668C 80025A8C 3C018013 */  lui        $at, %hi(D_8013769C)
/* 26690 80025A90 3C058038 */  lui        $a1, 0x8038
/* 26694 80025A94 AC23769C */  sw         $v1, %lo(D_8013769C)($at)
/* 26698 80025A98 34A50400 */  ori        $a1, $a1, 0x400
/* 2669C 80025A9C 3C018013 */  lui        $at, %hi(D_801376A4)
/* 266A0 80025AA0 AC2576A4 */  sw         $a1, %lo(D_801376A4)($at)
/* 266A4 80025AA4 24020001 */  addiu      $v0, $zero, 1
/* 266A8 80025AA8 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 266AC 80025AAC A022E6E4 */  sb         $v0, %lo(D_800BE6E4)($at)
/* 266B0 80025AB0 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 266B4 80025AB4 A020E6E8 */  sb         $zero, %lo(D_800BE6E8)($at)
/* 266B8 80025AB8 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 266BC 80025ABC 1000001C */  b          .L80025B30
/* 266C0 80025AC0 A022E6EC */   sb        $v0, %lo(D_800BE6EC)($at)
/* 266C4 80025AC4 3C0E8038 */  lui        $t6, 0x8038
/* 266C8 80025AC8 35CE0200 */  ori        $t6, $t6, 0x200
/* 266CC 80025ACC 3C018013 */  lui        $at, %hi(D_801376A0)
/* 266D0 80025AD0 3C058038 */  lui        $a1, 0x8038
/* 266D4 80025AD4 AC2E76A0 */  sw         $t6, %lo(D_801376A0)($at)
/* 266D8 80025AD8 34A50400 */  ori        $a1, $a1, 0x400
/* 266DC 80025ADC 3C018013 */  lui        $at, %hi(D_801376A4)
/* 266E0 80025AE0 AC2576A4 */  sw         $a1, %lo(D_801376A4)($at)
/* 266E4 80025AE4 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 266E8 80025AE8 A020E6E4 */  sb         $zero, %lo(D_800BE6E4)($at)
/* 266EC 80025AEC 24020001 */  addiu      $v0, $zero, 1
/* 266F0 80025AF0 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 266F4 80025AF4 A022E6E8 */  sb         $v0, %lo(D_800BE6E8)($at)
/* 266F8 80025AF8 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 266FC 80025AFC 1000000C */  b          .L80025B30
/* 26700 80025B00 A022E6EC */   sb        $v0, %lo(D_800BE6EC)($at)
/* 26704 80025B04 3C058038 */  lui        $a1, 0x8038
/* 26708 80025B08 34A50400 */  ori        $a1, $a1, 0x400
/* 2670C 80025B0C 3C018013 */  lui        $at, %hi(D_801376A4)
/* 26710 80025B10 AC2576A4 */  sw         $a1, %lo(D_801376A4)($at)
/* 26714 80025B14 3C01800C */  lui        $at, %hi(D_800BE6E4)
/* 26718 80025B18 A020E6E4 */  sb         $zero, %lo(D_800BE6E4)($at)
/* 2671C 80025B1C 3C01800C */  lui        $at, %hi(D_800BE6E8)
/* 26720 80025B20 A020E6E8 */  sb         $zero, %lo(D_800BE6E8)($at)
/* 26724 80025B24 24020001 */  addiu      $v0, $zero, 1
/* 26728 80025B28 3C01800C */  lui        $at, %hi(D_800BE6EC)
/* 2672C 80025B2C A022E6EC */  sb         $v0, %lo(D_800BE6EC)($at)
.L80025B30:
/* 26730 80025B30 00041080 */  sll        $v0, $a0, 2
/* 26734 80025B34 3C19800D */  lui        $t9, %hi(D_800CC42C)
/* 26738 80025B38 0322C821 */  addu       $t9, $t9, $v0
/* 2673C 80025B3C 8F39C42C */  lw         $t9, %lo(D_800CC42C)($t9)
/* 26740 80025B40 3C01800C */  lui        $at, %hi(D_800BE634)
/* 26744 80025B44 A420E634 */  sh         $zero, %lo(D_800BE634)($at)
/* 26748 80025B48 0320F809 */  jalr       $t9
/* 2674C 80025B4C AFA2001C */   sw        $v0, 0x1c($sp)
/* 26750 80025B50 8FA2001C */  lw         $v0, 0x1c($sp)
/* 26754 80025B54 3C19800D */  lui        $t9, %hi(D_800CC58C)
/* 26758 80025B58 0322C821 */  addu       $t9, $t9, $v0
/* 2675C 80025B5C 8F39C58C */  lw         $t9, %lo(D_800CC58C)($t9)
/* 26760 80025B60 00000000 */  nop
/* 26764 80025B64 0320F809 */  jalr       $t9
/* 26768 80025B68 00000000 */   nop
/* 2676C 80025B6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 26770 80025B70 27BD0020 */  addiu      $sp, $sp, 0x20
/* 26774 80025B74 03E00008 */  jr         $ra
/* 26778 80025B78 00000000 */   nop

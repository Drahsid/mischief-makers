glabel func_8004586C
/* 4646C 8004586C 00103C00 */  sll        $a3, $s0, 0x10
/* 46470 80045870 0007C403 */  sra        $t8, $a3, 0x10
/* 46474 80045874 3C04800E */  lui        $a0, %hi(D_800D8D68)
/* 46478 80045878 3C05800E */  lui        $a1, %hi(D_800D8C78)
/* 4647C 8004587C 24A58C78 */  addiu      $a1, $a1, %lo(D_800D8C78)
/* 46480 80045880 24848D68 */  addiu      $a0, $a0, %lo(D_800D8D68)
/* 46484 80045884 03003825 */  or         $a3, $t8, $zero
/* 46488 80045888 2406003C */  addiu      $a2, $zero, 0x3c
/* 4648C 8004588C AFB00010 */  sw         $s0, 0x10($sp)
/* 46490 80045890 0C00AE0B */  jal        func_8002B82C
/* 46494 80045894 AFB00014 */   sw        $s0, 0x14($sp)
/* 46498 80045898 3C04800E */  lui        $a0, %hi(D_800DE508)
/* 4649C 8004589C 3C05800E */  lui        $a1, %hi(D_800DE188)
/* 464A0 800458A0 24A5E188 */  addiu      $a1, $a1, %lo(D_800DE188)
/* 464A4 800458A4 2484E508 */  addiu      $a0, $a0, %lo(D_800DE508)
/* 464A8 800458A8 2406001C */  addiu      $a2, $zero, 0x1c
/* 464AC 800458AC 00003825 */  or         $a3, $zero, $zero
/* 464B0 800458B0 AFA00010 */  sw         $zero, 0x10($sp)
/* 464B4 800458B4 0C00AE0B */  jal        func_8002B82C
/* 464B8 800458B8 AFB00014 */   sw        $s0, 0x14($sp)
/* 464BC 800458BC 10000091 */  b          .L80045B04
/* 464C0 800458C0 00000000 */   nop
/* 464C4 800458C4 00103C00 */  sll        $a3, $s0, 0x10
/* 464C8 800458C8 0007CC03 */  sra        $t9, $a3, 0x10
/* 464CC 800458CC 3C04800E */  lui        $a0, %hi(D_800D8DE0)
/* 464D0 800458D0 3C05800E */  lui        $a1, %hi(D_800D8CF0)
/* 464D4 800458D4 24A58CF0 */  addiu      $a1, $a1, %lo(D_800D8CF0)
/* 464D8 800458D8 24848DE0 */  addiu      $a0, $a0, %lo(D_800D8DE0)
/* 464DC 800458DC 03203825 */  or         $a3, $t9, $zero
/* 464E0 800458E0 2406003B */  addiu      $a2, $zero, 0x3b
/* 464E4 800458E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 464E8 800458E8 0C00AE0B */  jal        func_8002B82C
/* 464EC 800458EC AFB00014 */   sw        $s0, 0x14($sp)
/* 464F0 800458F0 3C04800E */  lui        $a0, %hi(D_800DE540)
/* 464F4 800458F4 3C05800E */  lui        $a1, %hi(D_800DE1C0)
/* 464F8 800458F8 24A5E1C0 */  addiu      $a1, $a1, %lo(D_800DE1C0)
/* 464FC 800458FC 2484E540 */  addiu      $a0, $a0, %lo(D_800DE540)
/* 46500 80045900 2406001C */  addiu      $a2, $zero, 0x1c
/* 46504 80045904 00003825 */  or         $a3, $zero, $zero
/* 46508 80045908 AFA00010 */  sw         $zero, 0x10($sp)
/* 4650C 8004590C 0C00AE0B */  jal        func_8002B82C
/* 46510 80045910 AFB00014 */   sw        $s0, 0x14($sp)
/* 46514 80045914 1000007B */  b          .L80045B04
/* 46518 80045918 00000000 */   nop
/* 4651C 8004591C 3C04800E */  lui        $a0, %hi(D_800D89A8)
/* 46520 80045920 3C05800E */  lui        $a1, %hi(D_800D88B8)
/* 46524 80045924 24A588B8 */  addiu      $a1, $a1, %lo(D_800D88B8)
/* 46528 80045928 248489A8 */  addiu      $a0, $a0, %lo(D_800D89A8)
/* 4652C 8004592C 2406003C */  addiu      $a2, $zero, 0x3c
/* 46530 80045930 00003825 */  or         $a3, $zero, $zero
/* 46534 80045934 AFA00010 */  sw         $zero, 0x10($sp)
/* 46538 80045938 0C00AE0B */  jal        func_8002B82C
/* 4653C 8004593C AFB00014 */   sw        $s0, 0x14($sp)
/* 46540 80045940 3C04800E */  lui        $a0, %hi(D_800DE578)
/* 46544 80045944 3C05800E */  lui        $a1, %hi(D_800DE1F8)
/* 46548 80045948 24A5E1F8 */  addiu      $a1, $a1, %lo(D_800DE1F8)
/* 4654C 8004594C 2484E578 */  addiu      $a0, $a0, %lo(D_800DE578)
/* 46550 80045950 2406001C */  addiu      $a2, $zero, 0x1c
/* 46554 80045954 00003825 */  or         $a3, $zero, $zero
/* 46558 80045958 AFA00010 */  sw         $zero, 0x10($sp)
/* 4655C 8004595C 0C00AE0B */  jal        func_8002B82C
/* 46560 80045960 AFB00014 */   sw        $s0, 0x14($sp)
/* 46564 80045964 10000067 */  b          .L80045B04
/* 46568 80045968 00000000 */   nop
/* 4656C 8004596C 3C04800E */  lui        $a0, %hi(D_800D8A20)
/* 46570 80045970 3C05800E */  lui        $a1, %hi(D_800D8930)
/* 46574 80045974 24A58930 */  addiu      $a1, $a1, %lo(D_800D8930)
/* 46578 80045978 24848A20 */  addiu      $a0, $a0, %lo(D_800D8A20)
/* 4657C 8004597C 2406003B */  addiu      $a2, $zero, 0x3b
/* 46580 80045980 00003825 */  or         $a3, $zero, $zero
/* 46584 80045984 AFA00010 */  sw         $zero, 0x10($sp)
/* 46588 80045988 0C00AE0B */  jal        func_8002B82C
/* 4658C 8004598C AFB00014 */   sw        $s0, 0x14($sp)
/* 46590 80045990 3C04800E */  lui        $a0, %hi(D_800DE5B0)
/* 46594 80045994 3C05800E */  lui        $a1, %hi(D_800DE230)
/* 46598 80045998 24A5E230 */  addiu      $a1, $a1, %lo(D_800DE230)
/* 4659C 8004599C 2484E5B0 */  addiu      $a0, $a0, %lo(D_800DE5B0)
/* 465A0 800459A0 2406001C */  addiu      $a2, $zero, 0x1c
/* 465A4 800459A4 00003825 */  or         $a3, $zero, $zero
/* 465A8 800459A8 AFA00010 */  sw         $zero, 0x10($sp)
/* 465AC 800459AC 0C00AE0B */  jal        func_8002B82C
/* 465B0 800459B0 AFB00014 */   sw        $s0, 0x14($sp)
/* 465B4 800459B4 10000053 */  b          .L80045B04
/* 465B8 800459B8 00000000 */   nop
/* 465BC 800459BC 3C04800E */  lui        $a0, %hi(D_800D8B88)
/* 465C0 800459C0 3C05800E */  lui        $a1, %hi(D_800D8A98)
/* 465C4 800459C4 24A58A98 */  addiu      $a1, $a1, %lo(D_800D8A98)
/* 465C8 800459C8 24848B88 */  addiu      $a0, $a0, %lo(D_800D8B88)
/* 465CC 800459CC 2406003C */  addiu      $a2, $zero, 0x3c
/* 465D0 800459D0 00003825 */  or         $a3, $zero, $zero
/* 465D4 800459D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 465D8 800459D8 0C00AE0B */  jal        func_8002B82C
/* 465DC 800459DC AFA00014 */   sw        $zero, 0x14($sp)
/* 465E0 800459E0 3C04800E */  lui        $a0, %hi(D_800DE5E8)
/* 465E4 800459E4 3C05800E */  lui        $a1, %hi(D_800DE268)
/* 465E8 800459E8 24A5E268 */  addiu      $a1, $a1, %lo(D_800DE268)
/* 465EC 800459EC 2484E5E8 */  addiu      $a0, $a0, %lo(D_800DE5E8)
/* 465F0 800459F0 2406001C */  addiu      $a2, $zero, 0x1c
/* 465F4 800459F4 00003825 */  or         $a3, $zero, $zero
/* 465F8 800459F8 AFA00010 */  sw         $zero, 0x10($sp)
/* 465FC 800459FC 0C00AE0B */  jal        func_8002B82C
/* 46600 80045A00 AFB00014 */   sw        $s0, 0x14($sp)
/* 46604 80045A04 1000003F */  b          .L80045B04
/* 46608 80045A08 00000000 */   nop
/* 4660C 80045A0C 3C04800E */  lui        $a0, %hi(D_800D8C00)
/* 46610 80045A10 3C05800E */  lui        $a1, %hi(D_800D8B10)
/* 46614 80045A14 24A58B10 */  addiu      $a1, $a1, %lo(D_800D8B10)
/* 46618 80045A18 24848C00 */  addiu      $a0, $a0, %lo(D_800D8C00)
/* 4661C 80045A1C 2406003B */  addiu      $a2, $zero, 0x3b
/* 46620 80045A20 00003825 */  or         $a3, $zero, $zero
/* 46624 80045A24 AFB00010 */  sw         $s0, 0x10($sp)
/* 46628 80045A28 0C00AE0B */  jal        func_8002B82C
/* 4662C 80045A2C AFA00014 */   sw        $zero, 0x14($sp)
/* 46630 80045A30 3C04800E */  lui        $a0, %hi(D_800DE620)
/* 46634 80045A34 3C05800E */  lui        $a1, %hi(D_800DE2A0)
/* 46638 80045A38 24A5E2A0 */  addiu      $a1, $a1, %lo(D_800DE2A0)
/* 4663C 80045A3C 2484E620 */  addiu      $a0, $a0, %lo(D_800DE620)
/* 46640 80045A40 2406001C */  addiu      $a2, $zero, 0x1c
/* 46644 80045A44 00003825 */  or         $a3, $zero, $zero
/* 46648 80045A48 AFA00010 */  sw         $zero, 0x10($sp)
/* 4664C 80045A4C 0C00AE0B */  jal        func_8002B82C
/* 46650 80045A50 AFB00014 */   sw        $s0, 0x14($sp)
/* 46654 80045A54 1000002B */  b          .L80045B04
/* 46658 80045A58 00000000 */   nop
/* 4665C 80045A5C 00103C00 */  sll        $a3, $s0, 0x10
/* 46660 80045A60 00074403 */  sra        $t0, $a3, 0x10
/* 46664 80045A64 3C04800E */  lui        $a0, %hi(D_800D87C8)
/* 46668 80045A68 3C05800E */  lui        $a1, %hi(D_800D86D8)
/* 4666C 80045A6C 24A586D8 */  addiu      $a1, $a1, %lo(D_800D86D8)
/* 46670 80045A70 248487C8 */  addiu      $a0, $a0, %lo(D_800D87C8)
/* 46674 80045A74 01003825 */  or         $a3, $t0, $zero
/* 46678 80045A78 2406003C */  addiu      $a2, $zero, 0x3c
/* 4667C 80045A7C AFA00010 */  sw         $zero, 0x10($sp)
/* 46680 80045A80 0C00AE0B */  jal        func_8002B82C
/* 46684 80045A84 AFA00014 */   sw        $zero, 0x14($sp)
/* 46688 80045A88 3C04800E */  lui        $a0, %hi(D_800DE658)
/* 4668C 80045A8C 3C05800E */  lui        $a1, %hi(D_800DE2D8)
/* 46690 80045A90 24A5E2D8 */  addiu      $a1, $a1, %lo(D_800DE2D8)
/* 46694 80045A94 2484E658 */  addiu      $a0, $a0, %lo(D_800DE658)
/* 46698 80045A98 2406001C */  addiu      $a2, $zero, 0x1c
/* 4669C 80045A9C 00003825 */  or         $a3, $zero, $zero
/* 466A0 80045AA0 AFA00010 */  sw         $zero, 0x10($sp)
/* 466A4 80045AA4 0C00AE0B */  jal        func_8002B82C
/* 466A8 80045AA8 AFB00014 */   sw        $s0, 0x14($sp)
/* 466AC 80045AAC 10000015 */  b          .L80045B04
/* 466B0 80045AB0 00000000 */   nop
/* 466B4 80045AB4 00103C00 */  sll        $a3, $s0, 0x10
/* 466B8 80045AB8 00074C03 */  sra        $t1, $a3, 0x10
/* 466BC 80045ABC 3C04800E */  lui        $a0, %hi(D_800D8840)
/* 466C0 80045AC0 3C05800E */  lui        $a1, %hi(D_800D8750)
/* 466C4 80045AC4 24A58750 */  addiu      $a1, $a1, %lo(D_800D8750)
/* 466C8 80045AC8 24848840 */  addiu      $a0, $a0, %lo(D_800D8840)
/* 466CC 80045ACC 01203825 */  or         $a3, $t1, $zero
/* 466D0 80045AD0 2406003B */  addiu      $a2, $zero, 0x3b
/* 466D4 80045AD4 AFA00010 */  sw         $zero, 0x10($sp)
/* 466D8 80045AD8 0C00AE0B */  jal        func_8002B82C
/* 466DC 80045ADC AFA00014 */   sw        $zero, 0x14($sp)
/* 466E0 80045AE0 3C04800E */  lui        $a0, %hi(D_800DE690)
/* 466E4 80045AE4 3C05800E */  lui        $a1, %hi(D_800DE310)
/* 466E8 80045AE8 24A5E310 */  addiu      $a1, $a1, %lo(D_800DE310)
/* 466EC 80045AEC 2484E690 */  addiu      $a0, $a0, %lo(D_800DE690)
/* 466F0 80045AF0 2406001C */  addiu      $a2, $zero, 0x1c
/* 466F4 80045AF4 00003825 */  or         $a3, $zero, $zero
/* 466F8 80045AF8 AFA00010 */  sw         $zero, 0x10($sp)
/* 466FC 80045AFC 0C00AE0B */  jal        func_8002B82C
/* 46700 80045B00 AFB00014 */   sw        $s0, 0x14($sp)
.L80045B04:
/* 46704 80045B04 0C0115B7 */  jal        func_800456DC
/* 46708 80045B08 00000000 */   nop
/* 4670C 80045B0C 00028400 */  sll        $s0, $v0, 0x10
/* 46710 80045B10 00023400 */  sll        $a2, $v0, 0x10
/* 46714 80045B14 00105403 */  sra        $t2, $s0, 0x10
/* 46718 80045B18 00065C03 */  sra        $t3, $a2, 0x10
/* 4671C 80045B1C 01408025 */  or         $s0, $t2, $zero
/* 46720 80045B20 01603025 */  or         $a2, $t3, $zero
/* 46724 80045B24 24046001 */  addiu      $a0, $zero, 0x6001
/* 46728 80045B28 00002825 */  or         $a1, $zero, $zero
/* 4672C 80045B2C 0C00AD68 */  jal        func_8002B5A0
/* 46730 80045B30 00003825 */   or        $a3, $zero, $zero
/* 46734 80045B34 A7A2002A */  sh         $v0, 0x2a($sp)
/* 46738 80045B38 24046001 */  addiu      $a0, $zero, 0x6001
/* 4673C 80045B3C 00002825 */  or         $a1, $zero, $zero
/* 46740 80045B40 00003025 */  or         $a2, $zero, $zero
/* 46744 80045B44 06010003 */  bgez       $s0, .L80045B54
/* 46748 80045B48 00103843 */   sra       $a3, $s0, 1
/* 4674C 80045B4C 26010001 */  addiu      $at, $s0, 1
/* 46750 80045B50 00013843 */  sra        $a3, $at, 1
.L80045B54:
/* 46754 80045B54 00076400 */  sll        $t4, $a3, 0x10
/* 46758 80045B58 0C00AD68 */  jal        func_8002B5A0
/* 4675C 80045B5C 000C3C03 */   sra       $a3, $t4, 0x10
/* 46760 80045B60 00103C00 */  sll        $a3, $s0, 0x10
/* 46764 80045B64 00077403 */  sra        $t6, $a3, 0x10
/* 46768 80045B68 A7A2002C */  sh         $v0, 0x2c($sp)
/* 4676C 80045B6C 01C03825 */  or         $a3, $t6, $zero
/* 46770 80045B70 34048001 */  ori        $a0, $zero, 0x8001
/* 46774 80045B74 00002825 */  or         $a1, $zero, $zero
/* 46778 80045B78 0C00AD68 */  jal        func_8002B5A0
/* 4677C 80045B7C 00003025 */   or        $a2, $zero, $zero
/* 46780 80045B80 00021C00 */  sll        $v1, $v0, 0x10
/* 46784 80045B84 00037C03 */  sra        $t7, $v1, 0x10
/* 46788 80045B88 3C01800E */  lui        $at, %hi(D_800DE1D6)
/* 4678C 80045B8C A42FE1D6 */  sh         $t7, %lo(D_800DE1D6)($at)
/* 46790 80045B90 3C01800E */  lui        $at, %hi(D_800D9FC4)
/* 46794 80045B94 A42F9FC4 */  sh         $t7, %lo(D_800D9FC4)($at)
/* 46798 80045B98 3C01800E */  lui        $at, %hi(D_800D9CC4)
/* 4679C 80045B9C A42F9CC4 */  sh         $t7, %lo(D_800D9CC4)($at)
/* 467A0 80045BA0 3C01800E */  lui        $at, %hi(D_800D9DC4)
/* 467A4 80045BA4 A42F9DC4 */  sh         $t7, %lo(D_800D9DC4)($at)
/* 467A8 80045BA8 3C01800E */  lui        $at, %hi(D_800D9EC4)
/* 467AC 80045BAC A42F9EC4 */  sh         $t7, %lo(D_800D9EC4)($at)
/* 467B0 80045BB0 3C01800E */  lui        $at, %hi(D_800D9BC4)
/* 467B4 80045BB4 A42F9BC4 */  sh         $t7, %lo(D_800D9BC4)($at)
/* 467B8 80045BB8 3C188021 */  lui        $t8, %hi(D_80211A00)
/* 467BC 80045BBC A70F1A00 */  sh         $t7, %lo(D_80211A00)($t8)
/* 467C0 80045BC0 3C198024 */  lui        $t9, %hi(D_80247AB8)
/* 467C4 80045BC4 A72F7AB8 */  sh         $t7, %lo(D_80247AB8)($t9)
/* 467C8 80045BC8 3C088024 */  lui        $t0, %hi(D_802450B2)
/* 467CC 80045BCC A50F50B2 */  sh         $t7, %lo(D_802450B2)($t0)
/* 467D0 80045BD0 3C01800E */  lui        $at, %hi(D_800E00A2)
/* 467D4 80045BD4 A42F00A2 */  sh         $t7, %lo(D_800E00A2)($at)
/* 467D8 80045BD8 3C01800E */  lui        $at, %hi(D_800E04A2)
/* 467DC 80045BDC A42F04A2 */  sh         $t7, %lo(D_800E04A2)($at)
/* 467E0 80045BE0 3C01800E */  lui        $at, %hi(D_800E02A2)
/* 467E4 80045BE4 A42F02A2 */  sh         $t7, %lo(D_800E02A2)($at)
/* 467E8 80045BE8 3C01800E */  lui        $at, %hi(D_800DFEA2)
/* 467EC 80045BEC A42FFEA2 */  sh         $t7, %lo(D_800DFEA2)($at)
/* 467F0 80045BF0 3C098024 */  lui        $t1, %hi(D_80245EA2)
/* 467F4 80045BF4 A52F5EA2 */  sh         $t7, %lo(D_80245EA2)($t1)
/* 467F8 80045BF8 3C01800E */  lui        $at, %hi(D_800DFCDE)
/* 467FC 80045BFC A42FFCDE */  sh         $t7, %lo(D_800DFCDE)($at)
/* 46800 80045C00 3C01800E */  lui        $at, %hi(D_800DFADE)
/* 46804 80045C04 A42FFADE */  sh         $t7, %lo(D_800DFADE)($at)
/* 46808 80045C08 3C01800E */  lui        $at, %hi(D_800DF8DE)
/* 4680C 80045C0C A42FF8DE */  sh         $t7, %lo(D_800DF8DE)($at)
/* 46810 80045C10 3C0A8024 */  lui        $t2, %hi(D_80246CDE)
/* 46814 80045C14 A54F6CDE */  sh         $t7, %lo(D_80246CDE)($t2)
/* 46818 80045C18 3C01800E */  lui        $at, %hi(D_800DF356)
/* 4681C 80045C1C A42FF356 */  sh         $t7, %lo(D_800DF356)($at)
/* 46820 80045C20 3C01800E */  lui        $at, %hi(D_800DF196)
/* 46824 80045C24 A42FF196 */  sh         $t7, %lo(D_800DF196)($at)
/* 46828 80045C28 3C01800E */  lui        $at, %hi(D_800DF516)
/* 4682C 80045C2C A42FF516 */  sh         $t7, %lo(D_800DF516)($at)
/* 46830 80045C30 3C01800E */  lui        $at, %hi(D_800DF6D6)
/* 46834 80045C34 A42FF6D6 */  sh         $t7, %lo(D_800DF6D6)($at)
/* 46838 80045C38 3C01800E */  lui        $at, %hi(D_800DEE16)
/* 4683C 80045C3C A42FEE16 */  sh         $t7, %lo(D_800DEE16)($at)
/* 46840 80045C40 3C01800E */  lui        $at, %hi(D_800DEFD6)
/* 46844 80045C44 A42FEFD6 */  sh         $t7, %lo(D_800DEFD6)($at)
/* 46848 80045C48 3C01800E */  lui        $at, %hi(D_800DEC56)
/* 4684C 80045C4C A42FEC56 */  sh         $t7, %lo(D_800DEC56)($at)
/* 46850 80045C50 3C01800E */  lui        $at, %hi(D_800DEA96)
/* 46854 80045C54 A42FEA96 */  sh         $t7, %lo(D_800DEA96)($at)
/* 46858 80045C58 3C01800E */  lui        $at, %hi(D_800DE396)
/* 4685C 80045C5C A42FE396 */  sh         $t7, %lo(D_800DE396)($at)
/* 46860 80045C60 3C01800E */  lui        $at, %hi(D_800DE8D6)
/* 46864 80045C64 A42FE8D6 */  sh         $t7, %lo(D_800DE8D6)($at)
/* 46868 80045C68 3C01800E */  lui        $at, %hi(D_800DE716)
/* 4686C 80045C6C A42FE716 */  sh         $t7, %lo(D_800DE716)($at)
/* 46870 80045C70 3C0B8020 */  lui        $t3, %hi(D_80202EDE)
/* 46874 80045C74 A56F2EDE */  sh         $t7, %lo(D_80202EDE)($t3)
/* 46878 80045C78 3C01800E */  lui        $at, %hi(D_800DBEBA)
/* 4687C 80045C7C A42FBEBA */  sh         $t7, %lo(D_800DBEBA)($at)
/* 46880 80045C80 3C01800E */  lui        $at, %hi(D_800DBCBA)
/* 46884 80045C84 A42FBCBA */  sh         $t7, %lo(D_800DBCBA)($at)
/* 46888 80045C88 3C01800E */  lui        $at, %hi(D_800DBABA)
/* 4688C 80045C8C A42FBABA */  sh         $t7, %lo(D_800DBABA)($at)
/* 46890 80045C90 3C01800E */  lui        $at, %hi(D_800DB8BA)
/* 46894 80045C94 A42FB8BA */  sh         $t7, %lo(D_800DB8BA)($at)
/* 46898 80045C98 3C01800E */  lui        $at, %hi(D_800DB6BA)
/* 4689C 80045C9C A42FB6BA */  sh         $t7, %lo(D_800DB6BA)($at)
/* 468A0 80045CA0 3C01800E */  lui        $at, %hi(D_800DB4BA)
/* 468A4 80045CA4 A42FB4BA */  sh         $t7, %lo(D_800DB4BA)($at)
/* 468A8 80045CA8 3C01800E */  lui        $at, %hi(D_800DB2BA)
/* 468AC 80045CAC A42FB2BA */  sh         $t7, %lo(D_800DB2BA)($at)
/* 468B0 80045CB0 3C01800E */  lui        $at, %hi(D_800DB0BA)
/* 468B4 80045CB4 A42FB0BA */  sh         $t7, %lo(D_800DB0BA)($at)
/* 468B8 80045CB8 3C0C8020 */  lui        $t4, %hi(D_80202CCE)
/* 468BC 80045CBC A58F2CCE */  sh         $t7, %lo(D_80202CCE)($t4)
/* 468C0 80045CC0 3C0D800D */  lui        $t5, %hi(D_800CBF50)
/* 468C4 80045CC4 95ADBF50 */  lhu        $t5, %lo(D_800CBF50)($t5)
/* 468C8 80045CC8 01E01825 */  or         $v1, $t7, $zero
/* 468CC 80045CCC 11A00019 */  beqz       $t5, .L80045D34
/* 468D0 80045CD0 3C18800D */   lui       $t8, 0x800d
/* 468D4 80045CD4 3C01800E */  lui        $at, %hi(D_800DC0DE)
/* 468D8 80045CD8 A42FC0DE */  sh         $t7, %lo(D_800DC0DE)($at)
/* 468DC 80045CDC 3C01800E */  lui        $at, %hi(D_800DCCDE)
/* 468E0 80045CE0 A42FCCDE */  sh         $t7, %lo(D_800DCCDE)($at)
/* 468E4 80045CE4 3C01800E */  lui        $at, %hi(D_800DCADE)
/* 468E8 80045CE8 A42FCADE */  sh         $t7, %lo(D_800DCADE)($at)
/* 468EC 80045CEC 3C01800E */  lui        $at, %hi(D_800DC8DE)
/* 468F0 80045CF0 A42FC8DE */  sh         $t7, %lo(D_800DC8DE)($at)
/* 468F4 80045CF4 3C01800E */  lui        $at, %hi(D_800DC4DE)
/* 468F8 80045CF8 A42FC4DE */  sh         $t7, %lo(D_800DC4DE)($at)
/* 468FC 80045CFC 3C01800E */  lui        $at, %hi(D_800DC2DE)
/* 46900 80045D00 A42FC2DE */  sh         $t7, %lo(D_800DC2DE)($at)
/* 46904 80045D04 3C01800E */  lui        $at, %hi(D_800DC6DE)
/* 46908 80045D08 A42FC6DE */  sh         $t7, %lo(D_800DC6DE)($at)
/* 4690C 80045D0C 3C0E8036 */  lui        $t6, %hi(D_80362762)
/* 46910 80045D10 A5CF2762 */  sh         $t7, %lo(D_80362762)($t6)
/* 46914 80045D14 3C01800E */  lui        $at, %hi(D_800DD8DC)
/* 46918 80045D18 A42FD8DC */  sh         $t7, %lo(D_800DD8DC)($at)
/* 4691C 80045D1C 3C01800E */  lui        $at, %hi(D_800DD6DC)
/* 46920 80045D20 A42FD6DC */  sh         $t7, %lo(D_800DD6DC)($at)
/* 46924 80045D24 3C01800E */  lui        $at, %hi(D_800DD4DC)
/* 46928 80045D28 A42FD4DC */  sh         $t7, %lo(D_800DD4DC)($at)
/* 4692C 80045D2C 3C0F8037 */  lui        $t7, %hi(D_80372560)
/* 46930 80045D30 A5E32560 */  sh         $v1, %lo(D_80372560)($t7)
.L80045D34:
/* 46934 80045D34 9718BF54 */  lhu        $t8, -0x40ac($t8)
/* 46938 80045D38 3C01800E */  lui        $at, 0x800e
/* 4693C 80045D3C 13000003 */  beqz       $t8, .L80045D4C
/* 46940 80045D40 3C098025 */   lui       $t1, 0x8025
/* 46944 80045D44 3C198030 */  lui        $t9, %hi(D_803023B4)
/* 46948 80045D48 A72323B4 */  sh         $v1, %lo(D_803023B4)($t9)
.L80045D4C:
/* 4694C 80045D4C 87A2002C */  lh         $v0, 0x2c($sp)
/* 46950 80045D50 87A8002A */  lh         $t0, 0x2a($sp)
/* 46954 80045D54 A422DE56 */  sh         $v0, -0x21aa($at)
/* 46958 80045D58 3C01800E */  lui        $at, %hi(D_800DDC96)
/* 4695C 80045D5C A422DC96 */  sh         $v0, %lo(D_800DDC96)($at)
/* 46960 80045D60 3C01800E */  lui        $at, %hi(D_800DDAD6)
/* 46964 80045D64 A422DAD6 */  sh         $v0, %lo(D_800DDAD6)($at)
/* 46968 80045D68 3C01800E */  lui        $at, %hi(D_800DE016)
/* 4696C 80045D6C A422E016 */  sh         $v0, %lo(D_800DE016)($at)
/* 46970 80045D70 A5281020 */  sh         $t0, 0x1020($t1)
/* 46974 80045D74 8FBF0024 */  lw         $ra, 0x24($sp)
/* 46978 80045D78 8FB00020 */  lw         $s0, 0x20($sp)
/* 4697C 80045D7C 03E00008 */  jr         $ra
/* 46980 80045D80 27BD0030 */   addiu     $sp, $sp, 0x30

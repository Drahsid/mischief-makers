glabel func_80067B18
/* 68718 80067B18 3C0101C0 */  lui        $at, 0x1c0
/* 6871C 80067B1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 68720 80067B20 34210001 */  ori        $at, $at, 1
/* 68724 80067B24 AFA40018 */  sw         $a0, 0x18($sp)
/* 68728 80067B28 308EFFFF */  andi       $t6, $a0, 0xffff
/* 6872C 80067B2C 00A1082A */  slt        $at, $a1, $at
/* 68730 80067B30 01C02025 */  or         $a0, $t6, $zero
/* 68734 80067B34 1420001D */  bnez       $at, .L80067BAC
/* 68738 80067B38 AFBF0014 */   sw        $ra, 0x14($sp)
/* 6873C 80067B3C 3C010200 */  lui        $at, 0x200
/* 68740 80067B40 10A10070 */  beq        $a1, $at, .L80067D04
/* 68744 80067B44 3C010240 */   lui       $at, 0x240
/* 68748 80067B48 10A1007D */  beq        $a1, $at, .L80067D40
/* 6874C 80067B4C 3C010280 */   lui       $at, 0x280
/* 68750 80067B50 10A1008A */  beq        $a1, $at, .L80067D7C
/* 68754 80067B54 3C0102C0 */   lui       $at, 0x2c0
/* 68758 80067B58 10A10097 */  beq        $a1, $at, .L80067DB8
/* 6875C 80067B5C 3C010300 */   lui       $at, 0x300
/* 68760 80067B60 10A100A4 */  beq        $a1, $at, .L80067DF4
/* 68764 80067B64 00046880 */   sll       $t5, $a0, 2
/* 68768 80067B68 3C010340 */  lui        $at, 0x340
/* 6876C 80067B6C 10A10092 */  beq        $a1, $at, .L80067DB8
/* 68770 80067B70 3C010380 */   lui       $at, 0x380
/* 68774 80067B74 10A10081 */  beq        $a1, $at, .L80067D7C
/* 68778 80067B78 3C0103C0 */   lui       $at, 0x3c0
/* 6877C 80067B7C 10A10070 */  beq        $a1, $at, .L80067D40
/* 68780 80067B80 000E7880 */   sll       $t7, $t6, 2
/* 68784 80067B84 01EE7823 */  subu       $t7, $t7, $t6
/* 68788 80067B88 000F7880 */  sll        $t7, $t7, 2
/* 6878C 80067B8C 01EE7821 */  addu       $t7, $t7, $t6
/* 68790 80067B90 000F7880 */  sll        $t7, $t7, 2
/* 68794 80067B94 01EE7823 */  subu       $t7, $t7, $t6
/* 68798 80067B98 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 6879C 80067B9C 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 687A0 80067BA0 000F78C0 */  sll        $t7, $t7, 3
/* 687A4 80067BA4 100000A0 */  b          .L80067E28
/* 687A8 80067BA8 01F81021 */   addu      $v0, $t7, $t8
.L80067BAC:
/* 687AC 80067BAC 10A00055 */  beqz       $a1, .L80067D04
/* 687B0 80067BB0 3C010040 */   lui       $at, 0x40
/* 687B4 80067BB4 10A10044 */  beq        $a1, $at, .L80067CC8
/* 687B8 80067BB8 3C010080 */   lui       $at, 0x80
/* 687BC 80067BBC 10A10033 */  beq        $a1, $at, .L80067C8C
/* 687C0 80067BC0 3C0100C0 */   lui       $at, 0xc0
/* 687C4 80067BC4 10A10022 */  beq        $a1, $at, .L80067C50
/* 687C8 80067BC8 3C010100 */   lui       $at, 0x100
/* 687CC 80067BCC 10A10012 */  beq        $a1, $at, .L80067C18
/* 687D0 80067BD0 00044880 */   sll       $t1, $a0, 2
/* 687D4 80067BD4 3C010140 */  lui        $at, 0x140
/* 687D8 80067BD8 10A1001D */  beq        $a1, $at, .L80067C50
/* 687DC 80067BDC 3C010180 */   lui       $at, 0x180
/* 687E0 80067BE0 10A1002A */  beq        $a1, $at, .L80067C8C
/* 687E4 80067BE4 3C0101C0 */   lui       $at, 0x1c0
/* 687E8 80067BE8 10A10037 */  beq        $a1, $at, .L80067CC8
/* 687EC 80067BEC 0004C880 */   sll       $t9, $a0, 2
/* 687F0 80067BF0 0324C823 */  subu       $t9, $t9, $a0
/* 687F4 80067BF4 0019C880 */  sll        $t9, $t9, 2
/* 687F8 80067BF8 0324C821 */  addu       $t9, $t9, $a0
/* 687FC 80067BFC 0019C880 */  sll        $t9, $t9, 2
/* 68800 80067C00 0324C823 */  subu       $t9, $t9, $a0
/* 68804 80067C04 3C08800F */  lui        $t0, %hi(D_800EF510)
/* 68808 80067C08 2508F510 */  addiu      $t0, $t0, %lo(D_800EF510)
/* 6880C 80067C0C 0019C8C0 */  sll        $t9, $t9, 3
/* 68810 80067C10 10000085 */  b          .L80067E28
/* 68814 80067C14 03281021 */   addu      $v0, $t9, $t0
.L80067C18:
/* 68818 80067C18 01244823 */  subu       $t1, $t1, $a0
/* 6881C 80067C1C 00094880 */  sll        $t1, $t1, 2
/* 68820 80067C20 01244821 */  addu       $t1, $t1, $a0
/* 68824 80067C24 00094880 */  sll        $t1, $t1, 2
/* 68828 80067C28 01244823 */  subu       $t1, $t1, $a0
/* 6882C 80067C2C 3C0A800F */  lui        $t2, %hi(D_800EF510)
/* 68830 80067C30 254AF510 */  addiu      $t2, $t2, %lo(D_800EF510)
/* 68834 80067C34 000948C0 */  sll        $t1, $t1, 3
/* 68838 80067C38 3C0B800D */  lui        $t3, %hi(D_800D7C78)
/* 6883C 80067C3C 256B7C78 */  addiu      $t3, $t3, %lo(D_800D7C78)
/* 68840 80067C40 012A1021 */  addu       $v0, $t1, $t2
/* 68844 80067C44 AC4B0160 */  sw         $t3, 0x160($v0)
/* 68848 80067C48 10000077 */  b          .L80067E28
/* 6884C 80067C4C 24050100 */   addiu     $a1, $zero, 0x100
.L80067C50:
/* 68850 80067C50 00046080 */  sll        $t4, $a0, 2
/* 68854 80067C54 01846023 */  subu       $t4, $t4, $a0
/* 68858 80067C58 000C6080 */  sll        $t4, $t4, 2
/* 6885C 80067C5C 01846021 */  addu       $t4, $t4, $a0
/* 68860 80067C60 000C6080 */  sll        $t4, $t4, 2
/* 68864 80067C64 01846023 */  subu       $t4, $t4, $a0
/* 68868 80067C68 3C0D800F */  lui        $t5, %hi(D_800EF510)
/* 6886C 80067C6C 25ADF510 */  addiu      $t5, $t5, %lo(D_800EF510)
/* 68870 80067C70 000C60C0 */  sll        $t4, $t4, 3
/* 68874 80067C74 3C0E800D */  lui        $t6, %hi(D_800D7C80)
/* 68878 80067C78 25CE7C80 */  addiu      $t6, $t6, %lo(D_800D7C80)
/* 6887C 80067C7C 018D1021 */  addu       $v0, $t4, $t5
/* 68880 80067C80 AC4E0160 */  sw         $t6, 0x160($v0)
/* 68884 80067C84 10000068 */  b          .L80067E28
/* 68888 80067C88 24050100 */   addiu     $a1, $zero, 0x100
.L80067C8C:
/* 6888C 80067C8C 00047880 */  sll        $t7, $a0, 2
/* 68890 80067C90 01E47823 */  subu       $t7, $t7, $a0
/* 68894 80067C94 000F7880 */  sll        $t7, $t7, 2
/* 68898 80067C98 01E47821 */  addu       $t7, $t7, $a0
/* 6889C 80067C9C 000F7880 */  sll        $t7, $t7, 2
/* 688A0 80067CA0 01E47823 */  subu       $t7, $t7, $a0
/* 688A4 80067CA4 3C18800F */  lui        $t8, %hi(D_800EF510)
/* 688A8 80067CA8 2718F510 */  addiu      $t8, $t8, %lo(D_800EF510)
/* 688AC 80067CAC 000F78C0 */  sll        $t7, $t7, 3
/* 688B0 80067CB0 3C19800D */  lui        $t9, %hi(D_800D7C88)
/* 688B4 80067CB4 27397C88 */  addiu      $t9, $t9, %lo(D_800D7C88)
/* 688B8 80067CB8 01F81021 */  addu       $v0, $t7, $t8
/* 688BC 80067CBC AC590160 */  sw         $t9, 0x160($v0)
/* 688C0 80067CC0 10000059 */  b          .L80067E28
/* 688C4 80067CC4 24050080 */   addiu     $a1, $zero, 0x80
.L80067CC8:
/* 688C8 80067CC8 00044080 */  sll        $t0, $a0, 2
/* 688CC 80067CCC 01044023 */  subu       $t0, $t0, $a0
/* 688D0 80067CD0 00084080 */  sll        $t0, $t0, 2
/* 688D4 80067CD4 01044021 */  addu       $t0, $t0, $a0
/* 688D8 80067CD8 00084080 */  sll        $t0, $t0, 2
/* 688DC 80067CDC 01044023 */  subu       $t0, $t0, $a0
/* 688E0 80067CE0 3C09800F */  lui        $t1, %hi(D_800EF510)
/* 688E4 80067CE4 2529F510 */  addiu      $t1, $t1, %lo(D_800EF510)
/* 688E8 80067CE8 000840C0 */  sll        $t0, $t0, 3
/* 688EC 80067CEC 3C0A800D */  lui        $t2, %hi(D_800D7C90)
/* 688F0 80067CF0 254A7C90 */  addiu      $t2, $t2, %lo(D_800D7C90)
/* 688F4 80067CF4 01091021 */  addu       $v0, $t0, $t1
/* 688F8 80067CF8 AC4A0160 */  sw         $t2, 0x160($v0)
/* 688FC 80067CFC 1000004A */  b          .L80067E28
/* 68900 80067D00 00002825 */   or        $a1, $zero, $zero
.L80067D04:
/* 68904 80067D04 00045880 */  sll        $t3, $a0, 2
/* 68908 80067D08 01645823 */  subu       $t3, $t3, $a0
/* 6890C 80067D0C 000B5880 */  sll        $t3, $t3, 2
/* 68910 80067D10 01645821 */  addu       $t3, $t3, $a0
/* 68914 80067D14 000B5880 */  sll        $t3, $t3, 2
/* 68918 80067D18 01645823 */  subu       $t3, $t3, $a0
/* 6891C 80067D1C 3C0C800F */  lui        $t4, %hi(D_800EF510)
/* 68920 80067D20 258CF510 */  addiu      $t4, $t4, %lo(D_800EF510)
/* 68924 80067D24 000B58C0 */  sll        $t3, $t3, 3
/* 68928 80067D28 3C0D800D */  lui        $t5, %hi(D_800D7C98)
/* 6892C 80067D2C 25AD7C98 */  addiu      $t5, $t5, %lo(D_800D7C98)
/* 68930 80067D30 016C1021 */  addu       $v0, $t3, $t4
/* 68934 80067D34 AC4D0160 */  sw         $t5, 0x160($v0)
/* 68938 80067D38 1000003B */  b          .L80067E28
/* 6893C 80067D3C 00002825 */   or        $a1, $zero, $zero
.L80067D40:
/* 68940 80067D40 00047080 */  sll        $t6, $a0, 2
/* 68944 80067D44 01C47023 */  subu       $t6, $t6, $a0
/* 68948 80067D48 000E7080 */  sll        $t6, $t6, 2
/* 6894C 80067D4C 01C47021 */  addu       $t6, $t6, $a0
/* 68950 80067D50 000E7080 */  sll        $t6, $t6, 2
/* 68954 80067D54 01C47023 */  subu       $t6, $t6, $a0
/* 68958 80067D58 3C0F800F */  lui        $t7, %hi(D_800EF510)
/* 6895C 80067D5C 25EFF510 */  addiu      $t7, $t7, %lo(D_800EF510)
/* 68960 80067D60 000E70C0 */  sll        $t6, $t6, 3
/* 68964 80067D64 3C18800D */  lui        $t8, %hi(D_800D7CA0)
/* 68968 80067D68 27187CA0 */  addiu      $t8, $t8, %lo(D_800D7CA0)
/* 6896C 80067D6C 01CF1021 */  addu       $v0, $t6, $t7
/* 68970 80067D70 AC580160 */  sw         $t8, 0x160($v0)
/* 68974 80067D74 1000002C */  b          .L80067E28
/* 68978 80067D78 00002825 */   or        $a1, $zero, $zero
.L80067D7C:
/* 6897C 80067D7C 0004C880 */  sll        $t9, $a0, 2
/* 68980 80067D80 0324C823 */  subu       $t9, $t9, $a0
/* 68984 80067D84 0019C880 */  sll        $t9, $t9, 2
/* 68988 80067D88 0324C821 */  addu       $t9, $t9, $a0
/* 6898C 80067D8C 0019C880 */  sll        $t9, $t9, 2
/* 68990 80067D90 0324C823 */  subu       $t9, $t9, $a0
/* 68994 80067D94 3C08800F */  lui        $t0, %hi(D_800EF510)
/* 68998 80067D98 2508F510 */  addiu      $t0, $t0, %lo(D_800EF510)
/* 6899C 80067D9C 0019C8C0 */  sll        $t9, $t9, 3
/* 689A0 80067DA0 3C09800D */  lui        $t1, %hi(D_800D7CA8)
/* 689A4 80067DA4 25297CA8 */  addiu      $t1, $t1, %lo(D_800D7CA8)
/* 689A8 80067DA8 03281021 */  addu       $v0, $t9, $t0
/* 689AC 80067DAC AC490160 */  sw         $t1, 0x160($v0)
/* 689B0 80067DB0 1000001D */  b          .L80067E28
/* 689B4 80067DB4 24050380 */   addiu     $a1, $zero, 0x380
.L80067DB8:
/* 689B8 80067DB8 00045080 */  sll        $t2, $a0, 2
/* 689BC 80067DBC 01445023 */  subu       $t2, $t2, $a0
/* 689C0 80067DC0 000A5080 */  sll        $t2, $t2, 2
/* 689C4 80067DC4 01445021 */  addu       $t2, $t2, $a0
/* 689C8 80067DC8 000A5080 */  sll        $t2, $t2, 2
/* 689CC 80067DCC 01445023 */  subu       $t2, $t2, $a0
/* 689D0 80067DD0 3C0B800F */  lui        $t3, %hi(D_800EF510)
/* 689D4 80067DD4 256BF510 */  addiu      $t3, $t3, %lo(D_800EF510)
/* 689D8 80067DD8 000A50C0 */  sll        $t2, $t2, 3
/* 689DC 80067DDC 3C0C800D */  lui        $t4, %hi(D_800D7CB0)
/* 689E0 80067DE0 258C7CB0 */  addiu      $t4, $t4, %lo(D_800D7CB0)
/* 689E4 80067DE4 014B1021 */  addu       $v0, $t2, $t3
/* 689E8 80067DE8 AC4C0160 */  sw         $t4, 0x160($v0)
/* 689EC 80067DEC 1000000E */  b          .L80067E28
/* 689F0 80067DF0 24050300 */   addiu     $a1, $zero, 0x300
.L80067DF4:
/* 689F4 80067DF4 01A46823 */  subu       $t5, $t5, $a0
/* 689F8 80067DF8 000D6880 */  sll        $t5, $t5, 2
/* 689FC 80067DFC 01A46821 */  addu       $t5, $t5, $a0
/* 68A00 80067E00 000D6880 */  sll        $t5, $t5, 2
/* 68A04 80067E04 01A46823 */  subu       $t5, $t5, $a0
/* 68A08 80067E08 3C0E800F */  lui        $t6, %hi(D_800EF510)
/* 68A0C 80067E0C 25CEF510 */  addiu      $t6, $t6, %lo(D_800EF510)
/* 68A10 80067E10 000D68C0 */  sll        $t5, $t5, 3
/* 68A14 80067E14 3C0F800D */  lui        $t7, %hi(D_800D7CB8)
/* 68A18 80067E18 25EF7CB8 */  addiu      $t7, $t7, %lo(D_800D7CB8)
/* 68A1C 80067E1C 01AE1021 */  addu       $v0, $t5, $t6
/* 68A20 80067E20 AC4F0160 */  sw         $t7, 0x160($v0)
/* 68A24 80067E24 24050300 */  addiu      $a1, $zero, 0x300
.L80067E28:
/* 68A28 80067E28 3C013F80 */  lui        $at, 0x3f80
/* 68A2C 80067E2C 44812000 */  mtc1       $at, $f4
/* 68A30 80067E30 AFA5001C */  sw         $a1, 0x1c($sp)
/* 68A34 80067E34 0C019D5B */  jal        func_8006756C
/* 68A38 80067E38 E4440120 */   swc1      $f4, 0x120($v0)
/* 68A3C 80067E3C 8FA5001C */  lw         $a1, 0x1c($sp)
/* 68A40 80067E40 8FBF0014 */  lw         $ra, 0x14($sp)
/* 68A44 80067E44 27BD0018 */  addiu      $sp, $sp, 0x18
/* 68A48 80067E48 03E00008 */  jr         $ra
/* 68A4C 80067E4C 30A2FFFF */   andi      $v0, $a1, 0xffff

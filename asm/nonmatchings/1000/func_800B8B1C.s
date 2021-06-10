glabel func_800B8B1C
/* B971C 800B8B1C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B9720 800B8B20 AFBF0014 */  sw         $ra, 0x14($sp)
/* B9724 800B8B24 AFA40048 */  sw         $a0, 0x48($sp)
/* B9728 800B8B28 AFA5004C */  sw         $a1, 0x4c($sp)
/* B972C 800B8B2C AFA60050 */  sw         $a2, 0x50($sp)
/* B9730 800B8B30 AFA70054 */  sw         $a3, 0x54($sp)
/* B9734 800B8B34 8FAE0058 */  lw         $t6, 0x58($sp)
/* B9738 800B8B38 AFAE0044 */  sw         $t6, 0x44($sp)
/* B973C 800B8B3C 8FAF0048 */  lw         $t7, 0x48($sp)
/* B9740 800B8B40 8DF9001C */  lw         $t9, 0x1c($t7)
/* B9744 800B8B44 8DF80014 */  lw         $t8, 0x14($t7)
/* B9748 800B8B48 00194040 */  sll        $t0, $t9, 1
/* B974C 800B8B4C 03084821 */  addu       $t1, $t8, $t0
/* B9750 800B8B50 AFA90034 */  sw         $t1, 0x34($sp)
/* B9754 800B8B54 8FAB0048 */  lw         $t3, 0x48($sp)
/* B9758 800B8B58 8FAA004C */  lw         $t2, 0x4c($sp)
/* B975C 800B8B5C 8D6C0014 */  lw         $t4, 0x14($t3)
/* B9760 800B8B60 014C082B */  sltu       $at, $t2, $t4
/* B9764 800B8B64 10200007 */  beqz       $at, .L800B8B84
/* B9768 800B8B68 00000000 */   nop
/* B976C 800B8B6C 8FAE0048 */  lw         $t6, 0x48($sp)
/* B9770 800B8B70 8FAD004C */  lw         $t5, 0x4c($sp)
/* B9774 800B8B74 8DCF001C */  lw         $t7, 0x1c($t6)
/* B9778 800B8B78 000FC840 */  sll        $t9, $t7, 1
/* B977C 800B8B7C 01B9C021 */  addu       $t8, $t5, $t9
/* B9780 800B8B80 AFB8004C */  sw         $t8, 0x4c($sp)
.L800B8B84:
/* B9784 800B8B84 8FA80054 */  lw         $t0, 0x54($sp)
/* B9788 800B8B88 8FAB004C */  lw         $t3, 0x4c($sp)
/* B978C 800B8B8C 00084840 */  sll        $t1, $t0, 1
/* B9790 800B8B90 012B5021 */  addu       $t2, $t1, $t3
/* B9794 800B8B94 AFAA0038 */  sw         $t2, 0x38($sp)
/* B9798 800B8B98 8FAC0038 */  lw         $t4, 0x38($sp)
/* B979C 800B8B9C 8FAE0034 */  lw         $t6, 0x34($sp)
/* B97A0 800B8BA0 01CC082B */  sltu       $at, $t6, $t4
/* B97A4 800B8BA4 10200053 */  beqz       $at, .L800B8CF4
/* B97A8 800B8BA8 00000000 */   nop
/* B97AC 800B8BAC 8FAF0038 */  lw         $t7, 0x38($sp)
/* B97B0 800B8BB0 8FAD0034 */  lw         $t5, 0x34($sp)
/* B97B4 800B8BB4 01EDC823 */  subu       $t9, $t7, $t5
/* B97B8 800B8BB8 0019C043 */  sra        $t8, $t9, 1
/* B97BC 800B8BBC AFB80040 */  sw         $t8, 0x40($sp)
/* B97C0 800B8BC0 8FA80034 */  lw         $t0, 0x34($sp)
/* B97C4 800B8BC4 8FA9004C */  lw         $t1, 0x4c($sp)
/* B97C8 800B8BC8 01095823 */  subu       $t3, $t0, $t1
/* B97CC 800B8BCC 000B5043 */  sra        $t2, $t3, 1
/* B97D0 800B8BD0 AFAA003C */  sw         $t2, 0x3c($sp)
/* B97D4 800B8BD4 8FAC0044 */  lw         $t4, 0x44($sp)
/* B97D8 800B8BD8 258E0008 */  addiu      $t6, $t4, 8
/* B97DC 800B8BDC AFAE0044 */  sw         $t6, 0x44($sp)
/* B97E0 800B8BE0 AFAC0030 */  sw         $t4, 0x30($sp)
/* B97E4 800B8BE4 8FAD0030 */  lw         $t5, 0x30($sp)
/* B97E8 800B8BE8 3C0F0800 */  lui        $t7, 0x800
/* B97EC 800B8BEC ADAF0000 */  sw         $t7, ($t5)
/* B97F0 800B8BF0 8FB90050 */  lw         $t9, 0x50($sp)
/* B97F4 800B8BF4 8FA9003C */  lw         $t1, 0x3c($sp)
/* B97F8 800B8BF8 8FAE0030 */  lw         $t6, 0x30($sp)
/* B97FC 800B8BFC 3338FFFF */  andi       $t8, $t9, 0xffff
/* B9800 800B8C00 00095840 */  sll        $t3, $t1, 1
/* B9804 800B8C04 316AFFFF */  andi       $t2, $t3, 0xffff
/* B9808 800B8C08 00184400 */  sll        $t0, $t8, 0x10
/* B980C 800B8C0C 010A6025 */  or         $t4, $t0, $t2
/* B9810 800B8C10 ADCC0004 */  sw         $t4, 4($t6)
/* B9814 800B8C14 8FAF0044 */  lw         $t7, 0x44($sp)
/* B9818 800B8C18 25ED0008 */  addiu      $t5, $t7, 8
/* B981C 800B8C1C AFAD0044 */  sw         $t5, 0x44($sp)
/* B9820 800B8C20 AFAF002C */  sw         $t7, 0x2c($sp)
/* B9824 800B8C24 8FB8002C */  lw         $t8, 0x2c($sp)
/* B9828 800B8C28 3C190600 */  lui        $t9, 0x600
/* B982C 800B8C2C AF190000 */  sw         $t9, ($t8)
/* B9830 800B8C30 0C026964 */  jal        func_8009A590
/* B9834 800B8C34 8FA4004C */   lw        $a0, 0x4c($sp)
/* B9838 800B8C38 8FA9002C */  lw         $t1, 0x2c($sp)
/* B983C 800B8C3C AD220004 */  sw         $v0, 4($t1)
/* B9840 800B8C40 8FAB0044 */  lw         $t3, 0x44($sp)
/* B9844 800B8C44 25680008 */  addiu      $t0, $t3, 8
/* B9848 800B8C48 AFA80044 */  sw         $t0, 0x44($sp)
/* B984C 800B8C4C AFAB0028 */  sw         $t3, 0x28($sp)
/* B9850 800B8C50 8FAC0028 */  lw         $t4, 0x28($sp)
/* B9854 800B8C54 3C0A0800 */  lui        $t2, 0x800
/* B9858 800B8C58 AD8A0000 */  sw         $t2, ($t4)
/* B985C 800B8C5C 8FAE003C */  lw         $t6, 0x3c($sp)
/* B9860 800B8C60 8FAD0050 */  lw         $t5, 0x50($sp)
/* B9864 800B8C64 8FAB0040 */  lw         $t3, 0x40($sp)
/* B9868 800B8C68 000E7840 */  sll        $t7, $t6, 1
/* B986C 800B8C6C 01EDC821 */  addu       $t9, $t7, $t5
/* B9870 800B8C70 8FAE0028 */  lw         $t6, 0x28($sp)
/* B9874 800B8C74 3338FFFF */  andi       $t8, $t9, 0xffff
/* B9878 800B8C78 000B4040 */  sll        $t0, $t3, 1
/* B987C 800B8C7C 310AFFFF */  andi       $t2, $t0, 0xffff
/* B9880 800B8C80 00184C00 */  sll        $t1, $t8, 0x10
/* B9884 800B8C84 012A6025 */  or         $t4, $t1, $t2
/* B9888 800B8C88 ADCC0004 */  sw         $t4, 4($t6)
/* B988C 800B8C8C 8FAF0044 */  lw         $t7, 0x44($sp)
/* B9890 800B8C90 25ED0008 */  addiu      $t5, $t7, 8
/* B9894 800B8C94 AFAD0044 */  sw         $t5, 0x44($sp)
/* B9898 800B8C98 AFAF0024 */  sw         $t7, 0x24($sp)
/* B989C 800B8C9C 8FB80024 */  lw         $t8, 0x24($sp)
/* B98A0 800B8CA0 3C190600 */  lui        $t9, 0x600
/* B98A4 800B8CA4 AF190000 */  sw         $t9, ($t8)
/* B98A8 800B8CA8 8FAB0048 */  lw         $t3, 0x48($sp)
/* B98AC 800B8CAC 0C026964 */  jal        func_8009A590
/* B98B0 800B8CB0 8D640014 */   lw        $a0, 0x14($t3)
/* B98B4 800B8CB4 8FA80024 */  lw         $t0, 0x24($sp)
/* B98B8 800B8CB8 AD020004 */  sw         $v0, 4($t0)
/* B98BC 800B8CBC 8FA90044 */  lw         $t1, 0x44($sp)
/* B98C0 800B8CC0 252A0008 */  addiu      $t2, $t1, 8
/* B98C4 800B8CC4 AFAA0044 */  sw         $t2, 0x44($sp)
/* B98C8 800B8CC8 AFA90020 */  sw         $t1, 0x20($sp)
/* B98CC 800B8CCC 8FAE0020 */  lw         $t6, 0x20($sp)
/* B98D0 800B8CD0 3C0C0800 */  lui        $t4, 0x800
/* B98D4 800B8CD4 ADCC0000 */  sw         $t4, ($t6)
/* B98D8 800B8CD8 8FAF0054 */  lw         $t7, 0x54($sp)
/* B98DC 800B8CDC 8FB80020 */  lw         $t8, 0x20($sp)
/* B98E0 800B8CE0 000F6840 */  sll        $t5, $t7, 1
/* B98E4 800B8CE4 31B9FFFF */  andi       $t9, $t5, 0xffff
/* B98E8 800B8CE8 AF190004 */  sw         $t9, 4($t8)
/* B98EC 800B8CEC 1000001C */  b          .L800B8D60
/* B98F0 800B8CF0 00000000 */   nop
.L800B8CF4:
/* B98F4 800B8CF4 8FAB0044 */  lw         $t3, 0x44($sp)
/* B98F8 800B8CF8 25680008 */  addiu      $t0, $t3, 8
/* B98FC 800B8CFC AFA80044 */  sw         $t0, 0x44($sp)
/* B9900 800B8D00 AFAB001C */  sw         $t3, 0x1c($sp)
/* B9904 800B8D04 8FAA001C */  lw         $t2, 0x1c($sp)
/* B9908 800B8D08 3C090800 */  lui        $t1, 0x800
/* B990C 800B8D0C AD490000 */  sw         $t1, ($t2)
/* B9910 800B8D10 8FAC0050 */  lw         $t4, 0x50($sp)
/* B9914 800B8D14 8FAD0054 */  lw         $t5, 0x54($sp)
/* B9918 800B8D18 8FA8001C */  lw         $t0, 0x1c($sp)
/* B991C 800B8D1C 318EFFFF */  andi       $t6, $t4, 0xffff
/* B9920 800B8D20 000DC840 */  sll        $t9, $t5, 1
/* B9924 800B8D24 3338FFFF */  andi       $t8, $t9, 0xffff
/* B9928 800B8D28 000E7C00 */  sll        $t7, $t6, 0x10
/* B992C 800B8D2C 01F85825 */  or         $t3, $t7, $t8
/* B9930 800B8D30 AD0B0004 */  sw         $t3, 4($t0)
/* B9934 800B8D34 8FA90044 */  lw         $t1, 0x44($sp)
/* B9938 800B8D38 252A0008 */  addiu      $t2, $t1, 8
/* B993C 800B8D3C AFAA0044 */  sw         $t2, 0x44($sp)
/* B9940 800B8D40 AFA90018 */  sw         $t1, 0x18($sp)
/* B9944 800B8D44 8FAE0018 */  lw         $t6, 0x18($sp)
/* B9948 800B8D48 3C0C0600 */  lui        $t4, 0x600
/* B994C 800B8D4C ADCC0000 */  sw         $t4, ($t6)
/* B9950 800B8D50 0C026964 */  jal        func_8009A590
/* B9954 800B8D54 8FA4004C */   lw        $a0, 0x4c($sp)
/* B9958 800B8D58 8FAD0018 */  lw         $t5, 0x18($sp)
/* B995C 800B8D5C ADA20004 */  sw         $v0, 4($t5)
.L800B8D60:
/* B9960 800B8D60 10000003 */  b          .L800B8D70
/* B9964 800B8D64 8FA20044 */   lw        $v0, 0x44($sp)
/* B9968 800B8D68 10000001 */  b          .L800B8D70
/* B996C 800B8D6C 00000000 */   nop
.L800B8D70:
/* B9970 800B8D70 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9974 800B8D74 27BD0048 */  addiu      $sp, $sp, 0x48
/* B9978 800B8D78 03E00008 */  jr         $ra
/* B997C 800B8D7C 00000000 */   nop

glabel func_8007D1E8
/* 7DDE8 8007D1E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7DDEC 8007D1EC 97A90032 */  lhu        $t1, 0x32($sp)
/* 7DDF0 8007D1F0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 7DDF4 8007D1F4 AFA40020 */  sw         $a0, 0x20($sp)
/* 7DDF8 8007D1F8 AFA60028 */  sw         $a2, 0x28($sp)
/* 7DDFC 8007D1FC AFA7002C */  sw         $a3, 0x2c($sp)
/* 7DE00 8007D200 308EFFFF */  andi       $t6, $a0, 0xffff
/* 7DE04 8007D204 00067C00 */  sll        $t7, $a2, 0x10
/* 7DE08 8007D208 0007CC00 */  sll        $t9, $a3, 0x10
/* 7DE0C 8007D20C 00193C03 */  sra        $a3, $t9, 0x10
/* 7DE10 8007D210 000F3403 */  sra        $a2, $t7, 0x10
/* 7DE14 8007D214 01C02025 */  or         $a0, $t6, $zero
/* 7DE18 8007D218 0C01F437 */  jal        func_8007D0DC
/* 7DE1C 8007D21C AFA90010 */   sw        $t1, 0x10($sp)
/* 7DE20 8007D220 10400017 */  beqz       $v0, .L8007D280
/* 7DE24 8007D224 3044FFFF */   andi      $a0, $v0, 0xffff
/* 7DE28 8007D228 00025080 */  sll        $t2, $v0, 2
/* 7DE2C 8007D22C 01425023 */  subu       $t2, $t2, $v0
/* 7DE30 8007D230 000A5080 */  sll        $t2, $t2, 2
/* 7DE34 8007D234 01425021 */  addu       $t2, $t2, $v0
/* 7DE38 8007D238 000A5080 */  sll        $t2, $t2, 2
/* 7DE3C 8007D23C 01425023 */  subu       $t2, $t2, $v0
/* 7DE40 8007D240 3C0B800F */  lui        $t3, %hi(gActors)
/* 7DE44 8007D244 256BF510 */  addiu      $t3, $t3, %lo(gActors)
/* 7DE48 8007D248 000A50C0 */  sll        $t2, $t2, 3
/* 7DE4C 8007D24C 014B1821 */  addu       $v1, $t2, $t3
/* 7DE50 8007D250 946C0094 */  lhu        $t4, 0x94($v1)
/* 7DE54 8007D254 8FA50034 */  lw         $a1, 0x34($sp)
/* 7DE58 8007D258 358E0200 */  ori        $t6, $t4, 0x200
/* 7DE5C 8007D25C A46E0094 */  sh         $t6, 0x94($v1)
/* 7DE60 8007D260 31CFFEFF */  andi       $t7, $t6, 0xfeff
/* 7DE64 8007D264 10A00003 */  beqz       $a1, .L8007D274
/* 7DE68 8007D268 A46F0094 */   sh        $t7, 0x94($v1)
/* 7DE6C 8007D26C 10000004 */  b          .L8007D280
/* 7DE70 8007D270 AC65018C */   sw        $a1, 0x18c($v1)
.L8007D274:
/* 7DE74 8007D274 3C18800E */  lui        $t8, %hi(D_800D9AE4)
/* 7DE78 8007D278 27189AE4 */  addiu      $t8, $t8, %lo(D_800D9AE4)
/* 7DE7C 8007D27C AC78018C */  sw         $t8, 0x18c($v1)
.L8007D280:
/* 7DE80 8007D280 8FBF001C */  lw         $ra, 0x1c($sp)
/* 7DE84 8007D284 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7DE88 8007D288 03E00008 */  jr         $ra
/* 7DE8C 8007D28C 00801025 */   or        $v0, $a0, $zero

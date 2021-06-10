glabel func_8008E790
/* 8F390 8008E790 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 8F394 8008E794 AFA70044 */  sw         $a3, 0x44($sp)
/* 8F398 8008E798 87AE0052 */  lh         $t6, 0x52($sp)
/* 8F39C 8008E79C AFA40038 */  sw         $a0, 0x38($sp)
/* 8F3A0 8008E7A0 AFA5003C */  sw         $a1, 0x3c($sp)
/* 8F3A4 8008E7A4 AFA60040 */  sw         $a2, 0x40($sp)
/* 8F3A8 8008E7A8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 8F3AC 8008E7AC 87A6004A */  lh         $a2, 0x4a($sp)
/* 8F3B0 8008E7B0 87A50046 */  lh         $a1, 0x46($sp)
/* 8F3B4 8008E7B4 97A4003A */  lhu        $a0, 0x3a($sp)
/* 8F3B8 8008E7B8 87A7004E */  lh         $a3, 0x4e($sp)
/* 8F3BC 8008E7BC 0C00A7EE */  jal        func_80029FB8
/* 8F3C0 8008E7C0 AFAE0010 */   sw        $t6, 0x10($sp)
/* 8F3C4 8008E7C4 97A6003E */  lhu        $a2, 0x3e($sp)
/* 8F3C8 8008E7C8 97A7003A */  lhu        $a3, 0x3a($sp)
/* 8F3CC 8008E7CC 97A90042 */  lhu        $t1, 0x42($sp)
/* 8F3D0 8008E7D0 304F8000 */  andi       $t7, $v0, 0x8000
/* 8F3D4 8008E7D4 3048FFFF */  andi       $t0, $v0, 0xffff
/* 8F3D8 8008E7D8 11E00039 */  beqz       $t7, .L8008E8C0
/* 8F3DC 8008E7DC 00402025 */   or        $a0, $v0, $zero
/* 8F3E0 8008E7E0 0007C080 */  sll        $t8, $a3, 2
/* 8F3E4 8008E7E4 0307C023 */  subu       $t8, $t8, $a3
/* 8F3E8 8008E7E8 0018C080 */  sll        $t8, $t8, 2
/* 8F3EC 8008E7EC 0307C021 */  addu       $t8, $t8, $a3
/* 8F3F0 8008E7F0 0018C080 */  sll        $t8, $t8, 2
/* 8F3F4 8008E7F4 0307C023 */  subu       $t8, $t8, $a3
/* 8F3F8 8008E7F8 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 8F3FC 8008E7FC 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 8F400 8008E800 0018C0C0 */  sll        $t8, $t8, 3
/* 8F404 8008E804 03192821 */  addu       $a1, $t8, $t9
/* 8F408 8008E808 8CA30080 */  lw         $v1, 0x80($a1)
/* 8F40C 8008E80C 304B0001 */  andi       $t3, $v0, 1
/* 8F410 8008E810 306A0020 */  andi       $t2, $v1, 0x20
/* 8F414 8008E814 15400003 */  bnez       $t2, .L8008E824
/* 8F418 8008E818 01401825 */   or        $v1, $t2, $zero
/* 8F41C 8008E81C 15600005 */  bnez       $t3, .L8008E834
/* 8F420 8008E820 00000000 */   nop
.L8008E824:
/* 8F424 8008E824 10600004 */  beqz       $v1, .L8008E838
/* 8F428 8008E828 308C0001 */   andi      $t4, $a0, 1
/* 8F42C 8008E82C 15800002 */  bnez       $t4, .L8008E838
/* 8F430 8008E830 00000000 */   nop
.L8008E834:
/* 8F434 8008E834 3126FFFF */  andi       $a2, $t1, 0xffff
.L8008E838:
/* 8F438 8008E838 94A400D0 */  lhu        $a0, 0xd0($a1)
/* 8F43C 8008E83C 24010111 */  addiu      $at, $zero, 0x111
/* 8F440 8008E840 10810006 */  beq        $a0, $at, .L8008E85C
/* 8F444 8008E844 00801025 */   or        $v0, $a0, $zero
/* 8F448 8008E848 24010131 */  addiu      $at, $zero, 0x131
/* 8F44C 8008E84C 10410003 */  beq        $v0, $at, .L8008E85C
/* 8F450 8008E850 24010141 */   addiu     $at, $zero, 0x141
/* 8F454 8008E854 1441002D */  bne        $v0, $at, .L8008E90C
/* 8F458 8008E858 8FBF001C */   lw        $ra, 0x1c($sp)
.L8008E85C:
/* 8F45C 8008E85C 11260013 */  beq        $t1, $a2, .L8008E8AC
/* 8F460 8008E860 00C01825 */   or        $v1, $a2, $zero
/* 8F464 8008E864 30E4FFFF */  andi       $a0, $a3, 0xffff
/* 8F468 8008E868 AFA30024 */  sw         $v1, 0x24($sp)
/* 8F46C 8008E86C AFA50028 */  sw         $a1, 0x28($sp)
/* 8F470 8008E870 A7A6003E */  sh         $a2, 0x3e($sp)
/* 8F474 8008E874 0C023920 */  jal        func_8008E480
/* 8F478 8008E878 A7A80036 */   sh        $t0, 0x36($sp)
/* 8F47C 8008E87C 8FA30024 */  lw         $v1, 0x24($sp)
/* 8F480 8008E880 8FA50028 */  lw         $a1, 0x28($sp)
/* 8F484 8008E884 97A6003E */  lhu        $a2, 0x3e($sp)
/* 8F488 8008E888 97A80036 */  lhu        $t0, 0x36($sp)
/* 8F48C 8008E88C 1040001F */  beqz       $v0, .L8008E90C
/* 8F490 8008E890 8FBF001C */   lw        $ra, 0x1c($sp)
/* 8F494 8008E894 94AE00D0 */  lhu        $t6, 0xd0($a1)
/* 8F498 8008E898 246D0001 */  addiu      $t5, $v1, 1
/* 8F49C 8008E89C 11AE001B */  beq        $t5, $t6, .L8008E90C
/* 8F4A0 8008E8A0 8FBF001C */   lw        $ra, 0x1c($sp)
/* 8F4A4 8008E8A4 10000018 */  b          .L8008E908
/* 8F4A8 8008E8A8 A4A600D0 */   sh        $a2, 0xd0($a1)
.L8008E8AC:
/* 8F4AC 8008E8AC 246F0001 */  addiu      $t7, $v1, 1
/* 8F4B0 8008E8B0 11E40016 */  beq        $t7, $a0, .L8008E90C
/* 8F4B4 8008E8B4 8FBF001C */   lw        $ra, 0x1c($sp)
/* 8F4B8 8008E8B8 10000013 */  b          .L8008E908
/* 8F4BC 8008E8BC A4A600D0 */   sh        $a2, 0xd0($a1)
.L8008E8C0:
/* 8F4C0 8008E8C0 0007C080 */  sll        $t8, $a3, 2
/* 8F4C4 8008E8C4 0307C023 */  subu       $t8, $t8, $a3
/* 8F4C8 8008E8C8 0018C080 */  sll        $t8, $t8, 2
/* 8F4CC 8008E8CC 0307C021 */  addu       $t8, $t8, $a3
/* 8F4D0 8008E8D0 0018C080 */  sll        $t8, $t8, 2
/* 8F4D4 8008E8D4 0307C023 */  subu       $t8, $t8, $a3
/* 8F4D8 8008E8D8 3C19800F */  lui        $t9, %hi(D_800EF510)
/* 8F4DC 8008E8DC 2739F510 */  addiu      $t9, $t9, %lo(D_800EF510)
/* 8F4E0 8008E8E0 0018C0C0 */  sll        $t8, $t8, 3
/* 8F4E4 8008E8E4 03192821 */  addu       $a1, $t8, $t9
/* 8F4E8 8008E8E8 94A200D0 */  lhu        $v0, 0xd0($a1)
/* 8F4EC 8008E8EC 24010131 */  addiu      $at, $zero, 0x131
/* 8F4F0 8008E8F0 10410004 */  beq        $v0, $at, .L8008E904
/* 8F4F4 8008E8F4 240A0110 */   addiu     $t2, $zero, 0x110
/* 8F4F8 8008E8F8 24010141 */  addiu      $at, $zero, 0x141
/* 8F4FC 8008E8FC 14410003 */  bne        $v0, $at, .L8008E90C
/* 8F500 8008E900 8FBF001C */   lw        $ra, 0x1c($sp)
.L8008E904:
/* 8F504 8008E904 A4AA00D0 */  sh         $t2, 0xd0($a1)
.L8008E908:
/* 8F508 8008E908 8FBF001C */  lw         $ra, 0x1c($sp)
.L8008E90C:
/* 8F50C 8008E90C 27BD0038 */  addiu      $sp, $sp, 0x38
/* 8F510 8008E910 03E00008 */  jr         $ra
/* 8F514 8008E914 01001025 */   or        $v0, $t0, $zero

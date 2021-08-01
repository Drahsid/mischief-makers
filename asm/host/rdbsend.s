.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osRdbSend
/* A9550 800A8950 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A9554 800A8954 AFBF0014 */  sw         $ra, 0x14($sp)
/* A9558 800A8958 AFA40038 */  sw         $a0, 0x38($sp)
/* A955C 800A895C AFA5003C */  sw         $a1, 0x3c($sp)
/* A9560 800A8960 AFA60040 */  sw         $a2, 0x40($sp)
/* A9564 800A8964 AFA00024 */  sw         $zero, 0x24($sp)
/* A9568 800A8968 AFA00020 */  sw         $zero, 0x20($sp)
/* A956C 800A896C AFA00018 */  sw         $zero, 0x18($sp)
/* A9570 800A8970 0C0297A4 */  jal        __osDisableInt
/* A9574 800A8974 00000000 */   nop
/* A9578 800A8978 AFA2001C */  sw         $v0, 0x1c($sp)
/* A957C 800A897C 3C0E800F */  lui        $t6, %hi(__osRdb_IP6_Empty)
/* A9580 800A8980 8DCEA640 */  lw         $t6, %lo(__osRdb_IP6_Empty)($t6)
/* A9584 800A8984 11C0003A */  beqz       $t6, .L800A8A70
/* A9588 800A8988 00000000 */   nop
/* A958C 800A898C 3C01800F */  lui        $at, %hi(__osRdb_IP6_Empty)
/* A9590 800A8990 AC20A640 */  sw         $zero, %lo(__osRdb_IP6_Empty)($at)
/* A9594 800A8994 8FAF0040 */  lw         $t7, 0x40($sp)
/* A9598 800A8998 93A90030 */  lbu        $t1, 0x30($sp)
/* A959C 800A899C 31F8003F */  andi       $t8, $t7, 0x3f
/* A95A0 800A89A0 0018C880 */  sll        $t9, $t8, 2
/* A95A4 800A89A4 332800FC */  andi       $t0, $t9, 0xfc
/* A95A8 800A89A8 312AFF03 */  andi       $t2, $t1, 0xff03
/* A95AC 800A89AC 010A5825 */  or         $t3, $t0, $t2
/* A95B0 800A89B0 A3AB0030 */  sb         $t3, 0x30($sp)
/* A95B4 800A89B4 8FAC003C */  lw         $t4, 0x3c($sp)
/* A95B8 800A89B8 2D810003 */  sltiu      $at, $t4, 3
/* A95BC 800A89BC 10200003 */  beqz       $at, .L800A89CC
/* A95C0 800A89C0 00000000 */   nop
/* A95C4 800A89C4 10000003 */  b          .L800A89D4
/* A95C8 800A89C8 AFAC002C */   sw        $t4, 0x2c($sp)
.L800A89CC:
/* A95CC 800A89CC 240D0003 */  addiu      $t5, $zero, 3
/* A95D0 800A89D0 AFAD002C */  sw         $t5, 0x2c($sp)
.L800A89D4:
/* A95D4 800A89D4 8FAE002C */  lw         $t6, 0x2c($sp)
/* A95D8 800A89D8 93B90030 */  lbu        $t9, 0x30($sp)
/* A95DC 800A89DC 31CF0003 */  andi       $t7, $t6, 3
/* A95E0 800A89E0 31F80003 */  andi       $t8, $t7, 3
/* A95E4 800A89E4 3329FFFC */  andi       $t1, $t9, 0xfffc
/* A95E8 800A89E8 03094025 */  or         $t0, $t8, $t1
/* A95EC 800A89EC A3A80030 */  sb         $t0, 0x30($sp)
/* A95F0 800A89F0 AFA00028 */  sw         $zero, 0x28($sp)
/* A95F4 800A89F4 8FAA0028 */  lw         $t2, 0x28($sp)
/* A95F8 800A89F8 8FAB002C */  lw         $t3, 0x2c($sp)
/* A95FC 800A89FC 014B082B */  sltu       $at, $t2, $t3
/* A9600 800A8A00 10200013 */  beqz       $at, .L800A8A50
/* A9604 800A8A04 00000000 */   nop
.L800A8A08:
/* A9608 800A8A08 8FAC0024 */  lw         $t4, 0x24($sp)
/* A960C 800A8A0C 8FAD0038 */  lw         $t5, 0x38($sp)
/* A9610 800A8A10 8FB90028 */  lw         $t9, 0x28($sp)
/* A9614 800A8A14 018D7021 */  addu       $t6, $t4, $t5
/* A9618 800A8A18 91CF0000 */  lbu        $t7, ($t6)
/* A961C 800A8A1C 03B9C021 */  addu       $t8, $sp, $t9
/* A9620 800A8A20 A30F0031 */  sb         $t7, 0x31($t8)
/* A9624 800A8A24 8FAA0024 */  lw         $t2, 0x24($sp)
/* A9628 800A8A28 8FA90028 */  lw         $t1, 0x28($sp)
/* A962C 800A8A2C 254B0001 */  addiu      $t3, $t2, 1
/* A9630 800A8A30 25280001 */  addiu      $t0, $t1, 1
/* A9634 800A8A34 AFA80028 */  sw         $t0, 0x28($sp)
/* A9638 800A8A38 AFAB0024 */  sw         $t3, 0x24($sp)
/* A963C 800A8A3C 8FAC0028 */  lw         $t4, 0x28($sp)
/* A9640 800A8A40 8FAD002C */  lw         $t5, 0x2c($sp)
/* A9644 800A8A44 018D082B */  sltu       $at, $t4, $t5
/* A9648 800A8A48 1420FFEF */  bnez       $at, .L800A8A08
/* A964C 800A8A4C 00000000 */   nop
.L800A8A50:
/* A9650 800A8A50 8FAE003C */  lw         $t6, 0x3c($sp)
/* A9654 800A8A54 8FAF002C */  lw         $t7, 0x2c($sp)
/* A9658 800A8A58 01CFC823 */  subu       $t9, $t6, $t7
/* A965C 800A8A5C AFB9003C */  sw         $t9, 0x3c($sp)
/* A9660 800A8A60 8FB8002C */  lw         $t8, 0x2c($sp)
/* A9664 800A8A64 AFB80018 */  sw         $t8, 0x18($sp)
/* A9668 800A8A68 24090001 */  addiu      $t1, $zero, 1
/* A966C 800A8A6C AFA90020 */  sw         $t1, 0x20($sp)
.L800A8A70:
/* A9670 800A8A70 8FA8003C */  lw         $t0, 0x3c($sp)
/* A9674 800A8A74 11000066 */  beqz       $t0, .L800A8C10
/* A9678 800A8A78 00000000 */   nop
/* A967C 800A8A7C 3C0A8019 */  lui        $t2, %hi(__osRdb_IP6_Ct)
/* A9680 800A8A80 3C0B8019 */  lui        $t3, %hi(__osRdb_IP6_Size)
/* A9684 800A8A84 8D6BA744 */  lw         $t3, %lo(__osRdb_IP6_Size)($t3)
/* A9688 800A8A88 8D4AA748 */  lw         $t2, %lo(__osRdb_IP6_Ct)($t2)
/* A968C 800A8A8C 014B082B */  sltu       $at, $t2, $t3
/* A9690 800A8A90 1020005F */  beqz       $at, .L800A8C10
/* A9694 800A8A94 00000000 */   nop
.L800A8A98:
/* A9698 800A8A98 8FAC003C */  lw         $t4, 0x3c($sp)
/* A969C 800A8A9C 2D810003 */  sltiu      $at, $t4, 3
/* A96A0 800A8AA0 10200003 */  beqz       $at, .L800A8AB0
/* A96A4 800A8AA4 00000000 */   nop
/* A96A8 800A8AA8 10000003 */  b          .L800A8AB8
/* A96AC 800A8AAC AFAC002C */   sw        $t4, 0x2c($sp)
.L800A8AB0:
/* A96B0 800A8AB0 240D0003 */  addiu      $t5, $zero, 3
/* A96B4 800A8AB4 AFAD002C */  sw         $t5, 0x2c($sp)
.L800A8AB8:
/* A96B8 800A8AB8 3C0E8019 */  lui        $t6, %hi(__osRdb_IP6_CurWrite)
/* A96BC 800A8ABC 8DCEA74C */  lw         $t6, %lo(__osRdb_IP6_CurWrite)($t6)
/* A96C0 800A8AC0 3C198019 */  lui        $t9, %hi(__osRdb_IP6_Data)
/* A96C4 800A8AC4 8F39A740 */  lw         $t9, %lo(__osRdb_IP6_Data)($t9)
/* A96C8 800A8AC8 000E7880 */  sll        $t7, $t6, 2
/* A96CC 800A8ACC 01F9C021 */  addu       $t8, $t7, $t9
/* A96D0 800A8AD0 AFB80034 */  sw         $t8, 0x34($sp)
/* A96D4 800A8AD4 8FAC0034 */  lw         $t4, 0x34($sp)
/* A96D8 800A8AD8 8FA90040 */  lw         $t1, 0x40($sp)
/* A96DC 800A8ADC 918D0000 */  lbu        $t5, ($t4)
/* A96E0 800A8AE0 3128003F */  andi       $t0, $t1, 0x3f
/* A96E4 800A8AE4 00085080 */  sll        $t2, $t0, 2
/* A96E8 800A8AE8 314B00FC */  andi       $t3, $t2, 0xfc
/* A96EC 800A8AEC 31AEFF03 */  andi       $t6, $t5, 0xff03
/* A96F0 800A8AF0 016E7825 */  or         $t7, $t3, $t6
/* A96F4 800A8AF4 A18F0000 */  sb         $t7, ($t4)
/* A96F8 800A8AF8 8FA80034 */  lw         $t0, 0x34($sp)
/* A96FC 800A8AFC 8FB9002C */  lw         $t9, 0x2c($sp)
/* A9700 800A8B00 910A0000 */  lbu        $t2, ($t0)
/* A9704 800A8B04 33380003 */  andi       $t8, $t9, 3
/* A9708 800A8B08 33090003 */  andi       $t1, $t8, 3
/* A970C 800A8B0C 314DFFFC */  andi       $t5, $t2, 0xfffc
/* A9710 800A8B10 012D5825 */  or         $t3, $t1, $t5
/* A9714 800A8B14 A10B0000 */  sb         $t3, ($t0)
/* A9718 800A8B18 AFA00028 */  sw         $zero, 0x28($sp)
/* A971C 800A8B1C 8FAE0028 */  lw         $t6, 0x28($sp)
/* A9720 800A8B20 8FAF002C */  lw         $t7, 0x2c($sp)
/* A9724 800A8B24 01CF082B */  sltu       $at, $t6, $t7
/* A9728 800A8B28 10200014 */  beqz       $at, .L800A8B7C
/* A972C 800A8B2C 00000000 */   nop
.L800A8B30:
/* A9730 800A8B30 8FAC0024 */  lw         $t4, 0x24($sp)
/* A9734 800A8B34 8FB90038 */  lw         $t9, 0x38($sp)
/* A9738 800A8B38 8FA90034 */  lw         $t1, 0x34($sp)
/* A973C 800A8B3C 8FAD0028 */  lw         $t5, 0x28($sp)
/* A9740 800A8B40 0199C021 */  addu       $t8, $t4, $t9
/* A9744 800A8B44 930A0000 */  lbu        $t2, ($t8)
/* A9748 800A8B48 012D5821 */  addu       $t3, $t1, $t5
/* A974C 800A8B4C A16A0001 */  sb         $t2, 1($t3)
/* A9750 800A8B50 8FAF0024 */  lw         $t7, 0x24($sp)
/* A9754 800A8B54 8FA80028 */  lw         $t0, 0x28($sp)
/* A9758 800A8B58 25EC0001 */  addiu      $t4, $t7, 1
/* A975C 800A8B5C 250E0001 */  addiu      $t6, $t0, 1
/* A9760 800A8B60 AFAE0028 */  sw         $t6, 0x28($sp)
/* A9764 800A8B64 AFAC0024 */  sw         $t4, 0x24($sp)
/* A9768 800A8B68 8FB90028 */  lw         $t9, 0x28($sp)
/* A976C 800A8B6C 8FB8002C */  lw         $t8, 0x2c($sp)
/* A9770 800A8B70 0338082B */  sltu       $at, $t9, $t8
/* A9774 800A8B74 1420FFEE */  bnez       $at, .L800A8B30
/* A9778 800A8B78 00000000 */   nop
.L800A8B7C:
/* A977C 800A8B7C 3C098019 */  lui        $t1, %hi(__osRdb_IP6_CurWrite)
/* A9780 800A8B80 8D29A74C */  lw         $t1, %lo(__osRdb_IP6_CurWrite)($t1)
/* A9784 800A8B84 3C018019 */  lui        $at, %hi(__osRdb_IP6_CurWrite)
/* A9788 800A8B88 252D0001 */  addiu      $t5, $t1, 1
/* A978C 800A8B8C AC2DA74C */  sw         $t5, %lo(__osRdb_IP6_CurWrite)($at)
/* A9790 800A8B90 3C0A8019 */  lui        $t2, %hi(__osRdb_IP6_CurWrite)
/* A9794 800A8B94 3C0B8019 */  lui        $t3, %hi(__osRdb_IP6_Size)
/* A9798 800A8B98 8D6BA744 */  lw         $t3, %lo(__osRdb_IP6_Size)($t3)
/* A979C 800A8B9C 8D4AA74C */  lw         $t2, %lo(__osRdb_IP6_CurWrite)($t2)
/* A97A0 800A8BA0 014B082B */  sltu       $at, $t2, $t3
/* A97A4 800A8BA4 14200003 */  bnez       $at, .L800A8BB4
/* A97A8 800A8BA8 00000000 */   nop
/* A97AC 800A8BAC 3C018019 */  lui        $at, %hi(__osRdb_IP6_CurWrite)
/* A97B0 800A8BB0 AC20A74C */  sw         $zero, %lo(__osRdb_IP6_CurWrite)($at)
.L800A8BB4:
/* A97B4 800A8BB4 3C088019 */  lui        $t0, %hi(__osRdb_IP6_Ct)
/* A97B8 800A8BB8 8D08A748 */  lw         $t0, %lo(__osRdb_IP6_Ct)($t0)
/* A97BC 800A8BBC 3C018019 */  lui        $at, %hi(__osRdb_IP6_Ct)
/* A97C0 800A8BC0 250E0001 */  addiu      $t6, $t0, 1
/* A97C4 800A8BC4 AC2EA748 */  sw         $t6, %lo(__osRdb_IP6_Ct)($at)
/* A97C8 800A8BC8 8FAF003C */  lw         $t7, 0x3c($sp)
/* A97CC 800A8BCC 8FAC002C */  lw         $t4, 0x2c($sp)
/* A97D0 800A8BD0 01ECC823 */  subu       $t9, $t7, $t4
/* A97D4 800A8BD4 AFB9003C */  sw         $t9, 0x3c($sp)
/* A97D8 800A8BD8 8FB80018 */  lw         $t8, 0x18($sp)
/* A97DC 800A8BDC 8FA9002C */  lw         $t1, 0x2c($sp)
/* A97E0 800A8BE0 03096821 */  addu       $t5, $t8, $t1
/* A97E4 800A8BE4 AFAD0018 */  sw         $t5, 0x18($sp)
/* A97E8 800A8BE8 8FAA003C */  lw         $t2, 0x3c($sp)
/* A97EC 800A8BEC 11400008 */  beqz       $t2, .L800A8C10
/* A97F0 800A8BF0 00000000 */   nop
/* A97F4 800A8BF4 3C0B8019 */  lui        $t3, %hi(__osRdb_IP6_Ct)
/* A97F8 800A8BF8 3C088019 */  lui        $t0, %hi(__osRdb_IP6_Size)
/* A97FC 800A8BFC 8D08A744 */  lw         $t0, %lo(__osRdb_IP6_Size)($t0)
/* A9800 800A8C00 8D6BA748 */  lw         $t3, %lo(__osRdb_IP6_Ct)($t3)
/* A9804 800A8C04 0168082B */  sltu       $at, $t3, $t0
/* A9808 800A8C08 1420FFA3 */  bnez       $at, .L800A8A98
/* A980C 800A8C0C 00000000 */   nop
.L800A8C10:
/* A9810 800A8C10 8FAE0020 */  lw         $t6, 0x20($sp)
/* A9814 800A8C14 11C00005 */  beqz       $t6, .L800A8C2C
/* A9818 800A8C18 00000000 */   nop
/* A981C 800A8C1C 27AF0030 */  addiu      $t7, $sp, 0x30
/* A9820 800A8C20 8DEC0000 */  lw         $t4, ($t7)
/* A9824 800A8C24 3C19C000 */  lui        $t9, 0xc000
/* A9828 800A8C28 AF2C0000 */  sw         $t4, ($t9)
.L800A8C2C:
/* A982C 800A8C2C 0C0297AC */  jal        __osRestoreInt
/* A9830 800A8C30 8FA4001C */   lw        $a0, 0x1c($sp)
/* A9834 800A8C34 10000003 */  b          .L800A8C44
/* A9838 800A8C38 8FA20018 */   lw        $v0, 0x18($sp)
/* A983C 800A8C3C 10000001 */  b          .L800A8C44
/* A9840 800A8C40 00000000 */   nop
.L800A8C44:
/* A9844 800A8C44 8FBF0014 */  lw         $ra, 0x14($sp)
/* A9848 800A8C48 27BD0038 */  addiu      $sp, $sp, 0x38
/* A984C 800A8C4C 03E00008 */  jr         $ra
/* A9850 800A8C50 00000000 */   nop
/* A9854 800A8C54 00000000 */  nop
/* A9858 800A8C58 00000000 */  nop
/* A985C 800A8C5C 00000000 */  nop

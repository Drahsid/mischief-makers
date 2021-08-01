.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel LoadStoreSU
/* B6590 800B5990 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B6594 800B5994 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6598 800B5998 AFA40020 */  sw         $a0, 0x20($sp)
/* B659C 800B599C AFA50024 */  sw         $a1, 0x24($sp)
/* B65A0 800B59A0 AFA0001C */  sw         $zero, 0x1c($sp)
/* B65A4 800B59A4 8FAE0020 */  lw         $t6, 0x20($sp)
/* B65A8 800B59A8 83A9001C */  lb         $t1, 0x1c($sp)
/* B65AC 800B59AC 000E7E80 */  sll        $t7, $t6, 0x1a
/* B65B0 800B59B0 000FC683 */  sra        $t8, $t7, 0x1a
/* B65B4 800B59B4 0018C880 */  sll        $t9, $t8, 2
/* B65B8 800B59B8 332800FC */  andi       $t0, $t9, 0xfc
/* B65BC 800B59BC 312AFF03 */  andi       $t2, $t1, 0xff03
/* B65C0 800B59C0 010A5825 */  or         $t3, $t0, $t2
/* B65C4 800B59C4 A3AB001C */  sb         $t3, 0x1c($sp)
/* B65C8 800B59C8 8FAC0024 */  lw         $t4, 0x24($sp)
/* B65CC 800B59CC 83B8001D */  lb         $t8, 0x1d($sp)
/* B65D0 800B59D0 000C6EC0 */  sll        $t5, $t4, 0x1b
/* B65D4 800B59D4 000D76C3 */  sra        $t6, $t5, 0x1b
/* B65D8 800B59D8 31CF001F */  andi       $t7, $t6, 0x1f
/* B65DC 800B59DC 3319FFE0 */  andi       $t9, $t8, 0xffe0
/* B65E0 800B59E0 01F94825 */  or         $t1, $t7, $t9
/* B65E4 800B59E4 A3A9001D */  sb         $t1, 0x1d($sp)
/* B65E8 800B59E8 3C040400 */  lui        $a0, 0x400
/* B65EC 800B59EC 34841000 */  ori        $a0, $a0, 0x1000
/* B65F0 800B59F0 0C02A448 */  jal        __rmonWriteWordTo
/* B65F4 800B59F4 8FA5001C */   lw        $a1, 0x1c($sp)
/* B65F8 800B59F8 3C040408 */  lui        $a0, 0x408
/* B65FC 800B59FC 0C02A448 */  jal        __rmonWriteWordTo
/* B6600 800B5A00 00002825 */   or        $a1, $zero, $zero
/* B6604 800B5A04 10000001 */  b          .L800B5A0C
/* B6608 800B5A08 00000000 */   nop
.L800B5A0C:
/* B660C 800B5A0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6610 800B5A10 27BD0020 */  addiu      $sp, $sp, 0x20
/* B6614 800B5A14 03E00008 */  jr         $ra
/* B6618 800B5A18 00000000 */   nop

glabel LoadStoreVU
/* B661C 800B5A1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B6620 800B5A20 AFBF0014 */  sw         $ra, 0x14($sp)
/* B6624 800B5A24 AFA40020 */  sw         $a0, 0x20($sp)
/* B6628 800B5A28 AFA50024 */  sw         $a1, 0x24($sp)
/* B662C 800B5A2C AFA0001C */  sw         $zero, 0x1c($sp)
/* B6630 800B5A30 8FAE0020 */  lw         $t6, 0x20($sp)
/* B6634 800B5A34 83A9001C */  lb         $t1, 0x1c($sp)
/* B6638 800B5A38 000E7E80 */  sll        $t7, $t6, 0x1a
/* B663C 800B5A3C 000FC683 */  sra        $t8, $t7, 0x1a
/* B6640 800B5A40 0018C880 */  sll        $t9, $t8, 2
/* B6644 800B5A44 332800FC */  andi       $t0, $t9, 0xfc
/* B6648 800B5A48 312AFF03 */  andi       $t2, $t1, 0xff03
/* B664C 800B5A4C 010A5825 */  or         $t3, $t0, $t2
/* B6650 800B5A50 A3AB001C */  sb         $t3, 0x1c($sp)
/* B6654 800B5A54 8FAC0024 */  lw         $t4, 0x24($sp)
/* B6658 800B5A58 83B8001D */  lb         $t8, 0x1d($sp)
/* B665C 800B5A5C 000C6EC0 */  sll        $t5, $t4, 0x1b
/* B6660 800B5A60 000D76C3 */  sra        $t6, $t5, 0x1b
/* B6664 800B5A64 31CF001F */  andi       $t7, $t6, 0x1f
/* B6668 800B5A68 3319FFE0 */  andi       $t9, $t8, 0xffe0
/* B666C 800B5A6C 01F94825 */  or         $t1, $t7, $t9
/* B6670 800B5A70 A3A9001D */  sb         $t1, 0x1d($sp)
/* B6674 800B5A74 83A8001E */  lb         $t0, 0x1e($sp)
/* B6678 800B5A78 310AFF07 */  andi       $t2, $t0, 0xff07
/* B667C 800B5A7C 354B0020 */  ori        $t3, $t2, 0x20
/* B6680 800B5A80 A3AB001E */  sb         $t3, 0x1e($sp)
/* B6684 800B5A84 3C040400 */  lui        $a0, 0x400
/* B6688 800B5A88 34841000 */  ori        $a0, $a0, 0x1000
/* B668C 800B5A8C 0C02A448 */  jal        __rmonWriteWordTo
/* B6690 800B5A90 8FA5001C */   lw        $a1, 0x1c($sp)
/* B6694 800B5A94 3C040408 */  lui        $a0, 0x408
/* B6698 800B5A98 0C02A448 */  jal        __rmonWriteWordTo
/* B669C 800B5A9C 00002825 */   or        $a1, $zero, $zero
/* B66A0 800B5AA0 10000001 */  b          .L800B5AA8
/* B66A4 800B5AA4 00000000 */   nop
.L800B5AA8:
/* B66A8 800B5AA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B66AC 800B5AAC 27BD0020 */  addiu      $sp, $sp, 0x20
/* B66B0 800B5AB0 03E00008 */  jr         $ra
/* B66B4 800B5AB4 00000000 */   nop

glabel SetUpForRCPop
/* B66B8 800B5AB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B66BC 800B5ABC AFBF0014 */  sw         $ra, 0x14($sp)
/* B66C0 800B5AC0 AFA40018 */  sw         $a0, 0x18($sp)
/* B66C4 800B5AC4 0C02A45C */  jal        __rmonReadWordAt
/* B66C8 800B5AC8 3C040408 */   lui       $a0, 0x408
/* B66CC 800B5ACC 3C018019 */  lui        $at, %hi(RCPpc)
/* B66D0 800B5AD0 AC22B760 */  sw         $v0, %lo(RCPpc)($at)
/* B66D4 800B5AD4 3C040400 */  lui        $a0, 0x400
/* B66D8 800B5AD8 0C02A45C */  jal        __rmonReadWordAt
/* B66DC 800B5ADC 34841000 */   ori       $a0, $a0, 0x1000
/* B66E0 800B5AE0 3C018019 */  lui        $at, %hi(oldIMEMvalue)
/* B66E4 800B5AE4 AC22B764 */  sw         $v0, %lo(oldIMEMvalue)($at)
/* B66E8 800B5AE8 0C02A45C */  jal        __rmonReadWordAt
/* B66EC 800B5AEC 3C040400 */   lui       $a0, 0x400
/* B66F0 800B5AF0 3C0E8019 */  lui        $t6, %hi(DMEMbuffer)
/* B66F4 800B5AF4 25CEB768 */  addiu      $t6, $t6, %lo(DMEMbuffer)
/* B66F8 800B5AF8 ADC20000 */  sw         $v0, ($t6)
/* B66FC 800B5AFC 8FAF0018 */  lw         $t7, 0x18($sp)
/* B6700 800B5B00 11E00013 */  beqz       $t7, .L800B5B50
/* B6704 800B5B04 00000000 */   nop
/* B6708 800B5B08 3C040400 */  lui        $a0, 0x400
/* B670C 800B5B0C 0C02A45C */  jal        __rmonReadWordAt
/* B6710 800B5B10 34840004 */   ori       $a0, $a0, 4
/* B6714 800B5B14 3C188019 */  lui        $t8, %hi(DMEMbuffer)
/* B6718 800B5B18 2718B768 */  addiu      $t8, $t8, %lo(DMEMbuffer)
/* B671C 800B5B1C AF020004 */  sw         $v0, 4($t8)
/* B6720 800B5B20 3C040400 */  lui        $a0, 0x400
/* B6724 800B5B24 0C02A45C */  jal        __rmonReadWordAt
/* B6728 800B5B28 34840008 */   ori       $a0, $a0, 8
/* B672C 800B5B2C 3C198019 */  lui        $t9, %hi(DMEMbuffer)
/* B6730 800B5B30 2739B768 */  addiu      $t9, $t9, %lo(DMEMbuffer)
/* B6734 800B5B34 AF220008 */  sw         $v0, 8($t9)
/* B6738 800B5B38 3C040400 */  lui        $a0, 0x400
/* B673C 800B5B3C 0C02A45C */  jal        __rmonReadWordAt
/* B6740 800B5B40 3484000C */   ori       $a0, $a0, 0xc
/* B6744 800B5B44 3C088019 */  lui        $t0, %hi(DMEMbuffer)
/* B6748 800B5B48 2508B768 */  addiu      $t0, $t0, %lo(DMEMbuffer)
/* B674C 800B5B4C AD02000C */  sw         $v0, 0xc($t0)
.L800B5B50:
/* B6750 800B5B50 10000001 */  b          .L800B5B58
/* B6754 800B5B54 00000000 */   nop
.L800B5B58:
/* B6758 800B5B58 8FBF0014 */  lw         $ra, 0x14($sp)
/* B675C 800B5B5C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B6760 800B5B60 03E00008 */  jr         $ra
/* B6764 800B5B64 00000000 */   nop

glabel CleanupFromRCPop
/* B6768 800B5B68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B676C 800B5B6C AFBF0014 */  sw         $ra, 0x14($sp)
/* B6770 800B5B70 AFA40018 */  sw         $a0, 0x18($sp)
/* B6774 800B5B74 3C0E8019 */  lui        $t6, %hi(DMEMbuffer)
/* B6778 800B5B78 25CEB768 */  addiu      $t6, $t6, %lo(DMEMbuffer)
/* B677C 800B5B7C 8DC50000 */  lw         $a1, ($t6)
/* B6780 800B5B80 0C02A448 */  jal        __rmonWriteWordTo
/* B6784 800B5B84 3C040400 */   lui       $a0, 0x400
/* B6788 800B5B88 8FAF0018 */  lw         $t7, 0x18($sp)
/* B678C 800B5B8C 11E00013 */  beqz       $t7, .L800B5BDC
/* B6790 800B5B90 00000000 */   nop
/* B6794 800B5B94 3C188019 */  lui        $t8, %hi(DMEMbuffer)
/* B6798 800B5B98 2718B768 */  addiu      $t8, $t8, %lo(DMEMbuffer)
/* B679C 800B5B9C 3C040400 */  lui        $a0, 0x400
/* B67A0 800B5BA0 34840004 */  ori        $a0, $a0, 4
/* B67A4 800B5BA4 0C02A448 */  jal        __rmonWriteWordTo
/* B67A8 800B5BA8 8F050004 */   lw        $a1, 4($t8)
/* B67AC 800B5BAC 3C198019 */  lui        $t9, %hi(DMEMbuffer)
/* B67B0 800B5BB0 2739B768 */  addiu      $t9, $t9, %lo(DMEMbuffer)
/* B67B4 800B5BB4 3C040400 */  lui        $a0, 0x400
/* B67B8 800B5BB8 34840008 */  ori        $a0, $a0, 8
/* B67BC 800B5BBC 0C02A448 */  jal        __rmonWriteWordTo
/* B67C0 800B5BC0 8F250008 */   lw        $a1, 8($t9)
/* B67C4 800B5BC4 3C088019 */  lui        $t0, %hi(DMEMbuffer)
/* B67C8 800B5BC8 2508B768 */  addiu      $t0, $t0, %lo(DMEMbuffer)
/* B67CC 800B5BCC 3C040400 */  lui        $a0, 0x400
/* B67D0 800B5BD0 3484000C */  ori        $a0, $a0, 0xc
/* B67D4 800B5BD4 0C02A448 */  jal        __rmonWriteWordTo
/* B67D8 800B5BD8 8D050008 */   lw        $a1, 8($t0)
.L800B5BDC:
/* B67DC 800B5BDC 3C040400 */  lui        $a0, 0x400
/* B67E0 800B5BE0 3C058019 */  lui        $a1, %hi(oldIMEMvalue)
/* B67E4 800B5BE4 8CA5B764 */  lw         $a1, %lo(oldIMEMvalue)($a1)
/* B67E8 800B5BE8 0C02A448 */  jal        __rmonWriteWordTo
/* B67EC 800B5BEC 34841000 */   ori       $a0, $a0, 0x1000
/* B67F0 800B5BF0 3C058019 */  lui        $a1, %hi(RCPpc)
/* B67F4 800B5BF4 8CA5B760 */  lw         $a1, %lo(RCPpc)($a1)
/* B67F8 800B5BF8 0C02A448 */  jal        __rmonWriteWordTo
/* B67FC 800B5BFC 3C040408 */   lui       $a0, 0x408
/* B6800 800B5C00 10000001 */  b          .L800B5C08
/* B6804 800B5C04 00000000 */   nop
.L800B5C08:
/* B6808 800B5C08 8FBF0014 */  lw         $ra, 0x14($sp)
/* B680C 800B5C0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B6810 800B5C10 03E00008 */  jr         $ra
/* B6814 800B5C14 00000000 */   nop

glabel __rmonGetGRegisters
/* B6818 800B5C18 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* B681C 800B5C1C AFBF001C */  sw         $ra, 0x1c($sp)
/* B6820 800B5C20 AFA400D8 */  sw         $a0, 0xd8($sp)
/* B6824 800B5C24 AFB10018 */  sw         $s1, 0x18($sp)
/* B6828 800B5C28 AFB00014 */  sw         $s0, 0x14($sp)
/* B682C 800B5C2C 8FB000D8 */  lw         $s0, 0xd8($sp)
/* B6830 800B5C30 8E0E000C */  lw         $t6, 0xc($s0)
/* B6834 800B5C34 AFAE003C */  sw         $t6, 0x3c($sp)
/* B6838 800B5C38 920F0004 */  lbu        $t7, 4($s0)
/* B683C 800B5C3C A3AF0034 */  sb         $t7, 0x34($sp)
/* B6840 800B5C40 A7A00036 */  sh         $zero, 0x36($sp)
/* B6844 800B5C44 92180009 */  lbu        $t8, 9($s0)
/* B6848 800B5C48 1700003F */  bnez       $t8, .L800B5D48
/* B684C 800B5C4C 00000000 */   nop
/* B6850 800B5C50 0C02D9C3 */  jal        __rmonGetTCB
/* B6854 800B5C54 8E04000C */   lw        $a0, 0xc($s0)
/* B6858 800B5C58 AFA2002C */  sw         $v0, 0x2c($sp)
/* B685C 800B5C5C 8FB9002C */  lw         $t9, 0x2c($sp)
/* B6860 800B5C60 17200003 */  bnez       $t9, .L800B5C70
/* B6864 800B5C64 00000000 */   nop
/* B6868 800B5C68 10000041 */  b          .L800B5D70
/* B686C 800B5C6C 2402FFFE */   addiu     $v0, $zero, -2
.L800B5C70:
/* B6870 800B5C70 8FA8002C */  lw         $t0, 0x2c($sp)
/* B6874 800B5C74 24110001 */  addiu      $s1, $zero, 1
/* B6878 800B5C78 2A21001A */  slti       $at, $s1, 0x1a
/* B687C 800B5C7C 25090020 */  addiu      $t1, $t0, 0x20
/* B6880 800B5C80 1020000E */  beqz       $at, .L800B5CBC
/* B6884 800B5C84 AFA90028 */   sw        $t1, 0x28($sp)
.L800B5C88:
/* B6888 800B5C88 8FAA0028 */  lw         $t2, 0x28($sp)
/* B688C 800B5C8C 00117080 */  sll        $t6, $s1, 2
/* B6890 800B5C90 03AE7821 */  addu       $t7, $sp, $t6
/* B6894 800B5C94 8D4D0004 */  lw         $t5, 4($t2)
/* B6898 800B5C98 8D4C0000 */  lw         $t4, ($t2)
/* B689C 800B5C9C 01A05825 */  or         $t3, $t5, $zero
/* B68A0 800B5CA0 ADEB0040 */  sw         $t3, 0x40($t7)
/* B68A4 800B5CA4 8FB80028 */  lw         $t8, 0x28($sp)
/* B68A8 800B5CA8 26310001 */  addiu      $s1, $s1, 1
/* B68AC 800B5CAC 2A21001A */  slti       $at, $s1, 0x1a
/* B68B0 800B5CB0 27190008 */  addiu      $t9, $t8, 8
/* B68B4 800B5CB4 1420FFF4 */  bnez       $at, .L800B5C88
/* B68B8 800B5CB8 AFB90028 */   sw        $t9, 0x28($sp)
.L800B5CBC:
/* B68BC 800B5CBC 8FA8002C */  lw         $t0, 0x2c($sp)
/* B68C0 800B5CC0 2411001C */  addiu      $s1, $zero, 0x1c
/* B68C4 800B5CC4 2A210022 */  slti       $at, $s1, 0x22
/* B68C8 800B5CC8 250900E8 */  addiu      $t1, $t0, 0xe8
/* B68CC 800B5CCC 1020000E */  beqz       $at, .L800B5D08
/* B68D0 800B5CD0 AFA90028 */   sw        $t1, 0x28($sp)
.L800B5CD4:
/* B68D4 800B5CD4 8FAA0028 */  lw         $t2, 0x28($sp)
/* B68D8 800B5CD8 00117080 */  sll        $t6, $s1, 2
/* B68DC 800B5CDC 03AE7821 */  addu       $t7, $sp, $t6
/* B68E0 800B5CE0 8D4D0004 */  lw         $t5, 4($t2)
/* B68E4 800B5CE4 8D4C0000 */  lw         $t4, ($t2)
/* B68E8 800B5CE8 01A05825 */  or         $t3, $t5, $zero
/* B68EC 800B5CEC ADEB0040 */  sw         $t3, 0x40($t7)
/* B68F0 800B5CF0 8FB80028 */  lw         $t8, 0x28($sp)
/* B68F4 800B5CF4 26310001 */  addiu      $s1, $s1, 1
/* B68F8 800B5CF8 2A210022 */  slti       $at, $s1, 0x22
/* B68FC 800B5CFC 27190008 */  addiu      $t9, $t8, 8
/* B6900 800B5D00 1420FFF4 */  bnez       $at, .L800B5CD4
/* B6904 800B5D04 AFB90028 */   sw        $t9, 0x28($sp)
.L800B5D08:
/* B6908 800B5D08 8FA8002C */  lw         $t0, 0x2c($sp)
/* B690C 800B5D0C 27AA0030 */  addiu      $t2, $sp, 0x30
/* B6910 800B5D10 8D090120 */  lw         $t1, 0x120($t0)
/* B6914 800B5D14 AD490098 */  sw         $t1, 0x98($t2)
/* B6918 800B5D18 8FAC002C */  lw         $t4, 0x2c($sp)
/* B691C 800B5D1C 27AB0030 */  addiu      $t3, $sp, 0x30
/* B6920 800B5D20 8D8D011C */  lw         $t5, 0x11c($t4)
/* B6924 800B5D24 AD6D009C */  sw         $t5, 0x9c($t3)
/* B6928 800B5D28 8FAE002C */  lw         $t6, 0x2c($sp)
/* B692C 800B5D2C 27B80030 */  addiu      $t8, $sp, 0x30
/* B6930 800B5D30 8DCF0118 */  lw         $t7, 0x118($t6)
/* B6934 800B5D34 AF0F00A0 */  sw         $t7, 0xa0($t8)
/* B6938 800B5D38 27B90030 */  addiu      $t9, $sp, 0x30
/* B693C 800B5D3C AF200010 */  sw         $zero, 0x10($t9)
/* B6940 800B5D40 10000003 */  b          .L800B5D50
/* B6944 800B5D44 00000000 */   nop
.L800B5D48:
/* B6948 800B5D48 10000009 */  b          .L800B5D70
/* B694C 800B5D4C 2402FFFE */   addiu     $v0, $zero, -2
.L800B5D50:
/* B6950 800B5D50 27A40030 */  addiu      $a0, $sp, 0x30
/* B6954 800B5D54 240500A4 */  addiu      $a1, $zero, 0xa4
/* B6958 800B5D58 0C026833 */  jal        __rmonSendReply
/* B695C 800B5D5C 24060001 */   addiu     $a2, $zero, 1
/* B6960 800B5D60 10000003 */  b          .L800B5D70
/* B6964 800B5D64 00001025 */   or        $v0, $zero, $zero
/* B6968 800B5D68 10000001 */  b          .L800B5D70
/* B696C 800B5D6C 00000000 */   nop
.L800B5D70:
/* B6970 800B5D70 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6974 800B5D74 8FB00014 */  lw         $s0, 0x14($sp)
/* B6978 800B5D78 8FB10018 */  lw         $s1, 0x18($sp)
/* B697C 800B5D7C 03E00008 */  jr         $ra
/* B6980 800B5D80 27BD00D8 */   addiu     $sp, $sp, 0xd8

glabel __rmonSetGRegisters
/* B6984 800B5D84 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B6988 800B5D88 AFBF001C */  sw         $ra, 0x1c($sp)
/* B698C 800B5D8C AFA40040 */  sw         $a0, 0x40($sp)
/* B6990 800B5D90 AFB10018 */  sw         $s1, 0x18($sp)
/* B6994 800B5D94 AFB00014 */  sw         $s0, 0x14($sp)
/* B6998 800B5D98 8FB00040 */  lw         $s0, 0x40($sp)
/* B699C 800B5D9C 920E0009 */  lbu        $t6, 9($s0)
/* B69A0 800B5DA0 15C0003C */  bnez       $t6, .L800B5E94
/* B69A4 800B5DA4 00000000 */   nop
/* B69A8 800B5DA8 0C02D9C3 */  jal        __rmonGetTCB
/* B69AC 800B5DAC 8E04000C */   lw        $a0, 0xc($s0)
/* B69B0 800B5DB0 AFA20028 */  sw         $v0, 0x28($sp)
/* B69B4 800B5DB4 8FAF0028 */  lw         $t7, 0x28($sp)
/* B69B8 800B5DB8 15E00003 */  bnez       $t7, .L800B5DC8
/* B69BC 800B5DBC 00000000 */   nop
/* B69C0 800B5DC0 10000043 */  b          .L800B5ED0
/* B69C4 800B5DC4 2402FFFE */   addiu     $v0, $zero, -2
.L800B5DC8:
/* B69C8 800B5DC8 8FB80028 */  lw         $t8, 0x28($sp)
/* B69CC 800B5DCC 24110001 */  addiu      $s1, $zero, 1
/* B69D0 800B5DD0 2A21001A */  slti       $at, $s1, 0x1a
/* B69D4 800B5DD4 27190020 */  addiu      $t9, $t8, 0x20
/* B69D8 800B5DD8 1020000F */  beqz       $at, .L800B5E18
/* B69DC 800B5DDC AFB90024 */   sw        $t9, 0x24($sp)
.L800B5DE0:
/* B69E0 800B5DE0 00114080 */  sll        $t0, $s1, 2
/* B69E4 800B5DE4 02084821 */  addu       $t1, $s0, $t0
/* B69E8 800B5DE8 8D2A0010 */  lw         $t2, 0x10($t1)
/* B69EC 800B5DEC 8FAB0024 */  lw         $t3, 0x24($sp)
/* B69F0 800B5DF0 01406825 */  or         $t5, $t2, $zero
/* B69F4 800B5DF4 000A67C3 */  sra        $t4, $t2, 0x1f
/* B69F8 800B5DF8 AD6C0000 */  sw         $t4, ($t3)
/* B69FC 800B5DFC AD6D0004 */  sw         $t5, 4($t3)
/* B6A00 800B5E00 8FAE0024 */  lw         $t6, 0x24($sp)
/* B6A04 800B5E04 26310001 */  addiu      $s1, $s1, 1
/* B6A08 800B5E08 2A21001A */  slti       $at, $s1, 0x1a
/* B6A0C 800B5E0C 25CF0008 */  addiu      $t7, $t6, 8
/* B6A10 800B5E10 1420FFF3 */  bnez       $at, .L800B5DE0
/* B6A14 800B5E14 AFAF0024 */   sw        $t7, 0x24($sp)
.L800B5E18:
/* B6A18 800B5E18 8FB80028 */  lw         $t8, 0x28($sp)
/* B6A1C 800B5E1C 2411001C */  addiu      $s1, $zero, 0x1c
/* B6A20 800B5E20 2A210022 */  slti       $at, $s1, 0x22
/* B6A24 800B5E24 271900E8 */  addiu      $t9, $t8, 0xe8
/* B6A28 800B5E28 1020000F */  beqz       $at, .L800B5E68
/* B6A2C 800B5E2C AFB90024 */   sw        $t9, 0x24($sp)
.L800B5E30:
/* B6A30 800B5E30 00114080 */  sll        $t0, $s1, 2
/* B6A34 800B5E34 02084821 */  addu       $t1, $s0, $t0
/* B6A38 800B5E38 8D2A0010 */  lw         $t2, 0x10($t1)
/* B6A3C 800B5E3C 8FAB0024 */  lw         $t3, 0x24($sp)
/* B6A40 800B5E40 01406825 */  or         $t5, $t2, $zero
/* B6A44 800B5E44 000A67C3 */  sra        $t4, $t2, 0x1f
/* B6A48 800B5E48 AD6C0000 */  sw         $t4, ($t3)
/* B6A4C 800B5E4C AD6D0004 */  sw         $t5, 4($t3)
/* B6A50 800B5E50 8FAE0024 */  lw         $t6, 0x24($sp)
/* B6A54 800B5E54 26310001 */  addiu      $s1, $s1, 1
/* B6A58 800B5E58 2A210022 */  slti       $at, $s1, 0x22
/* B6A5C 800B5E5C 25CF0008 */  addiu      $t7, $t6, 8
/* B6A60 800B5E60 1420FFF3 */  bnez       $at, .L800B5E30
/* B6A64 800B5E64 AFAF0024 */   sw        $t7, 0x24($sp)
.L800B5E68:
/* B6A68 800B5E68 8E180098 */  lw         $t8, 0x98($s0)
/* B6A6C 800B5E6C 8FB90028 */  lw         $t9, 0x28($sp)
/* B6A70 800B5E70 AF380120 */  sw         $t8, 0x120($t9)
/* B6A74 800B5E74 8E08009C */  lw         $t0, 0x9c($s0)
/* B6A78 800B5E78 8FA90028 */  lw         $t1, 0x28($sp)
/* B6A7C 800B5E7C AD28011C */  sw         $t0, 0x11c($t1)
/* B6A80 800B5E80 8E0A00A0 */  lw         $t2, 0xa0($s0)
/* B6A84 800B5E84 8FAC0028 */  lw         $t4, 0x28($sp)
/* B6A88 800B5E88 AD8A0118 */  sw         $t2, 0x118($t4)
/* B6A8C 800B5E8C 10000003 */  b          .L800B5E9C
/* B6A90 800B5E90 00000000 */   nop
.L800B5E94:
/* B6A94 800B5E94 1000000E */  b          .L800B5ED0
/* B6A98 800B5E98 2402FFFE */   addiu     $v0, $zero, -2
.L800B5E9C:
/* B6A9C 800B5E9C 8E0D000C */  lw         $t5, 0xc($s0)
/* B6AA0 800B5EA0 AFAD0038 */  sw         $t5, 0x38($sp)
/* B6AA4 800B5EA4 920B0004 */  lbu        $t3, 4($s0)
/* B6AA8 800B5EA8 A3AB0030 */  sb         $t3, 0x30($sp)
/* B6AAC 800B5EAC A7A00032 */  sh         $zero, 0x32($sp)
/* B6AB0 800B5EB0 27A4002C */  addiu      $a0, $sp, 0x2c
/* B6AB4 800B5EB4 24050010 */  addiu      $a1, $zero, 0x10
/* B6AB8 800B5EB8 0C026833 */  jal        __rmonSendReply
/* B6ABC 800B5EBC 24060001 */   addiu     $a2, $zero, 1
/* B6AC0 800B5EC0 10000003 */  b          .L800B5ED0
/* B6AC4 800B5EC4 00001025 */   or        $v0, $zero, $zero
/* B6AC8 800B5EC8 10000001 */  b          .L800B5ED0
/* B6ACC 800B5ECC 00000000 */   nop
.L800B5ED0:
/* B6AD0 800B5ED0 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6AD4 800B5ED4 8FB00014 */  lw         $s0, 0x14($sp)
/* B6AD8 800B5ED8 8FB10018 */  lw         $s1, 0x18($sp)
/* B6ADC 800B5EDC 03E00008 */  jr         $ra
/* B6AE0 800B5EE0 27BD0040 */   addiu     $sp, $sp, 0x40

glabel __rmonGetFRegisters
/* B6AE4 800B5EE4 27BDFF38 */  addiu      $sp, $sp, -0xc8
/* B6AE8 800B5EE8 AFBF001C */  sw         $ra, 0x1c($sp)
/* B6AEC 800B5EEC AFA400C8 */  sw         $a0, 0xc8($sp)
/* B6AF0 800B5EF0 AFB00018 */  sw         $s0, 0x18($sp)
/* B6AF4 800B5EF4 8FB000C8 */  lw         $s0, 0xc8($sp)
/* B6AF8 800B5EF8 8FAE00C8 */  lw         $t6, 0xc8($sp)
/* B6AFC 800B5EFC 91CF0009 */  lbu        $t7, 9($t6)
/* B6B00 800B5F00 11E00003 */  beqz       $t7, .L800B5F10
/* B6B04 800B5F04 00000000 */   nop
/* B6B08 800B5F08 10000022 */  b          .L800B5F94
/* B6B0C 800B5F0C 2402FFFE */   addiu     $v0, $zero, -2
.L800B5F10:
/* B6B10 800B5F10 44802000 */  mtc1       $zero, $f4
/* B6B14 800B5F14 00000000 */  nop
/* B6B18 800B5F18 E7A40020 */  swc1       $f4, 0x20($sp)
/* B6B1C 800B5F1C 0C02D9C3 */  jal        __rmonGetTCB
/* B6B20 800B5F20 8E04000C */   lw        $a0, 0xc($s0)
/* B6B24 800B5F24 AFA20024 */  sw         $v0, 0x24($sp)
/* B6B28 800B5F28 8FB80024 */  lw         $t8, 0x24($sp)
/* B6B2C 800B5F2C 17000003 */  bnez       $t8, .L800B5F3C
/* B6B30 800B5F30 00000000 */   nop
/* B6B34 800B5F34 10000017 */  b          .L800B5F94
/* B6B38 800B5F38 2402FFFE */   addiu     $v0, $zero, -2
.L800B5F3C:
/* B6B3C 800B5F3C 8FA50024 */  lw         $a1, 0x24($sp)
/* B6B40 800B5F40 27A40028 */  addiu      $a0, $sp, 0x28
/* B6B44 800B5F44 24840010 */  addiu      $a0, $a0, 0x10
/* B6B48 800B5F48 24060020 */  addiu      $a2, $zero, 0x20
/* B6B4C 800B5F4C 0C02A484 */  jal        __rmonCopyWords
/* B6B50 800B5F50 24A50130 */   addiu     $a1, $a1, 0x130
/* B6B54 800B5F54 8FB90024 */  lw         $t9, 0x24($sp)
/* B6B58 800B5F58 8F28012C */  lw         $t0, 0x12c($t9)
/* B6B5C 800B5F5C AFA800B8 */  sw         $t0, 0xb8($sp)
/* B6B60 800B5F60 92090004 */  lbu        $t1, 4($s0)
/* B6B64 800B5F64 A3A9002C */  sb         $t1, 0x2c($sp)
/* B6B68 800B5F68 A7A0002E */  sh         $zero, 0x2e($sp)
/* B6B6C 800B5F6C 8E0A000C */  lw         $t2, 0xc($s0)
/* B6B70 800B5F70 AFAA0034 */  sw         $t2, 0x34($sp)
/* B6B74 800B5F74 27A40028 */  addiu      $a0, $sp, 0x28
/* B6B78 800B5F78 24050098 */  addiu      $a1, $zero, 0x98
/* B6B7C 800B5F7C 0C026833 */  jal        __rmonSendReply
/* B6B80 800B5F80 24060001 */   addiu     $a2, $zero, 1
/* B6B84 800B5F84 10000003 */  b          .L800B5F94
/* B6B88 800B5F88 00001025 */   or        $v0, $zero, $zero
/* B6B8C 800B5F8C 10000001 */  b          .L800B5F94
/* B6B90 800B5F90 00000000 */   nop
.L800B5F94:
/* B6B94 800B5F94 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6B98 800B5F98 8FB00018 */  lw         $s0, 0x18($sp)
/* B6B9C 800B5F9C 27BD00C8 */  addiu      $sp, $sp, 0xc8
/* B6BA0 800B5FA0 03E00008 */  jr         $ra
/* B6BA4 800B5FA4 00000000 */   nop

glabel __rmonSetFRegisters
/* B6BA8 800B5FA8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B6BAC 800B5FAC AFBF001C */  sw         $ra, 0x1c($sp)
/* B6BB0 800B5FB0 AFA40040 */  sw         $a0, 0x40($sp)
/* B6BB4 800B5FB4 AFB00018 */  sw         $s0, 0x18($sp)
/* B6BB8 800B5FB8 8FB00040 */  lw         $s0, 0x40($sp)
/* B6BBC 800B5FBC 8FAE0040 */  lw         $t6, 0x40($sp)
/* B6BC0 800B5FC0 91CF0009 */  lbu        $t7, 9($t6)
/* B6BC4 800B5FC4 11E00003 */  beqz       $t7, .L800B5FD4
/* B6BC8 800B5FC8 00000000 */   nop
/* B6BCC 800B5FCC 10000021 */  b          .L800B6054
/* B6BD0 800B5FD0 2402FFFE */   addiu     $v0, $zero, -2
.L800B5FD4:
/* B6BD4 800B5FD4 44802000 */  mtc1       $zero, $f4
/* B6BD8 800B5FD8 00000000 */  nop
/* B6BDC 800B5FDC E7A40024 */  swc1       $f4, 0x24($sp)
/* B6BE0 800B5FE0 0C02D9C3 */  jal        __rmonGetTCB
/* B6BE4 800B5FE4 8E04000C */   lw        $a0, 0xc($s0)
/* B6BE8 800B5FE8 AFA20028 */  sw         $v0, 0x28($sp)
/* B6BEC 800B5FEC 8FB80028 */  lw         $t8, 0x28($sp)
/* B6BF0 800B5FF0 17000003 */  bnez       $t8, .L800B6000
/* B6BF4 800B5FF4 00000000 */   nop
/* B6BF8 800B5FF8 10000016 */  b          .L800B6054
/* B6BFC 800B5FFC 2402FFFE */   addiu     $v0, $zero, -2
.L800B6000:
/* B6C00 800B6000 8FA40028 */  lw         $a0, 0x28($sp)
/* B6C04 800B6004 26050010 */  addiu      $a1, $s0, 0x10
/* B6C08 800B6008 24060020 */  addiu      $a2, $zero, 0x20
/* B6C0C 800B600C 0C02A484 */  jal        __rmonCopyWords
/* B6C10 800B6010 24840130 */   addiu     $a0, $a0, 0x130
/* B6C14 800B6014 8E190090 */  lw         $t9, 0x90($s0)
/* B6C18 800B6018 8FA80028 */  lw         $t0, 0x28($sp)
/* B6C1C 800B601C AD19012C */  sw         $t9, 0x12c($t0)
/* B6C20 800B6020 8E09000C */  lw         $t1, 0xc($s0)
/* B6C24 800B6024 AFA90038 */  sw         $t1, 0x38($sp)
/* B6C28 800B6028 920A0004 */  lbu        $t2, 4($s0)
/* B6C2C 800B602C A3AA0030 */  sb         $t2, 0x30($sp)
/* B6C30 800B6030 A7A00032 */  sh         $zero, 0x32($sp)
/* B6C34 800B6034 27A4002C */  addiu      $a0, $sp, 0x2c
/* B6C38 800B6038 24050010 */  addiu      $a1, $zero, 0x10
/* B6C3C 800B603C 0C026833 */  jal        __rmonSendReply
/* B6C40 800B6040 24060001 */   addiu     $a2, $zero, 1
/* B6C44 800B6044 10000003 */  b          .L800B6054
/* B6C48 800B6048 00001025 */   or        $v0, $zero, $zero
/* B6C4C 800B604C 10000001 */  b          .L800B6054
/* B6C50 800B6050 00000000 */   nop
.L800B6054:
/* B6C54 800B6054 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6C58 800B6058 8FB00018 */  lw         $s0, 0x18($sp)
/* B6C5C 800B605C 27BD0040 */  addiu      $sp, $sp, 0x40
/* B6C60 800B6060 03E00008 */  jr         $ra
/* B6C64 800B6064 00000000 */   nop

glabel func_800B6068
/* B6C68 800B6068 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B6C6C 800B606C AFBF0014 */  sw         $ra, 0x14($sp)
/* B6C70 800B6070 AFA40020 */  sw         $a0, 0x20($sp)
/* B6C74 800B6074 0C02E998 */  jal        __rmonRCPrunning
/* B6C78 800B6078 00000000 */   nop
/* B6C7C 800B607C 10400003 */  beqz       $v0, .L800B608C
/* B6C80 800B6080 00000000 */   nop
/* B6C84 800B6084 10000011 */  b          .L800B60CC
/* B6C88 800B6088 00001025 */   or        $v0, $zero, $zero
.L800B608C:
/* B6C8C 800B608C 0C02D6AE */  jal        SetUpForRCPop
/* B6C90 800B6090 00002025 */   or        $a0, $zero, $zero
/* B6C94 800B6094 2404002B */  addiu      $a0, $zero, 0x2b
/* B6C98 800B6098 0C02D664 */  jal        LoadStoreSU
/* B6C9C 800B609C 8FA50020 */   lw        $a1, 0x20($sp)
/* B6CA0 800B60A0 0C02E9B2 */  jal        __rmonStepRCP
/* B6CA4 800B60A4 00000000 */   nop
/* B6CA8 800B60A8 0C02A45C */  jal        __rmonReadWordAt
/* B6CAC 800B60AC 3C040400 */   lui       $a0, 0x400
/* B6CB0 800B60B0 AFA2001C */  sw         $v0, 0x1c($sp)
/* B6CB4 800B60B4 0C02D6DA */  jal        CleanupFromRCPop
/* B6CB8 800B60B8 00002025 */   or        $a0, $zero, $zero
/* B6CBC 800B60BC 10000003 */  b          .L800B60CC
/* B6CC0 800B60C0 8FA2001C */   lw        $v0, 0x1c($sp)
/* B6CC4 800B60C4 10000001 */  b          .L800B60CC
/* B6CC8 800B60C8 00000000 */   nop
.L800B60CC:
/* B6CCC 800B60CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* B6CD0 800B60D0 27BD0020 */  addiu      $sp, $sp, 0x20
/* B6CD4 800B60D4 03E00008 */  jr         $ra
/* B6CD8 800B60D8 00000000 */   nop

glabel __rmonGetSRegs
/* B6CDC 800B60DC 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* B6CE0 800B60E0 AFBF001C */  sw         $ra, 0x1c($sp)
/* B6CE4 800B60E4 AFA400D8 */  sw         $a0, 0xd8($sp)
/* B6CE8 800B60E8 AFB10018 */  sw         $s1, 0x18($sp)
/* B6CEC 800B60EC AFB00014 */  sw         $s0, 0x14($sp)
/* B6CF0 800B60F0 8FB000D8 */  lw         $s0, 0xd8($sp)
/* B6CF4 800B60F4 0C02E998 */  jal        __rmonRCPrunning
/* B6CF8 800B60F8 00000000 */   nop
/* B6CFC 800B60FC 10400003 */  beqz       $v0, .L800B610C
/* B6D00 800B6100 00000000 */   nop
/* B6D04 800B6104 1000004D */  b          .L800B623C
/* B6D08 800B6108 2402FFFC */   addiu     $v0, $zero, -4
.L800B610C:
/* B6D0C 800B610C 8E0E000C */  lw         $t6, 0xc($s0)
/* B6D10 800B6110 AFAE0030 */  sw         $t6, 0x30($sp)
/* B6D14 800B6114 920F0004 */  lbu        $t7, 4($s0)
/* B6D18 800B6118 A3AF0028 */  sb         $t7, 0x28($sp)
/* B6D1C 800B611C A7A0002A */  sh         $zero, 0x2a($sp)
/* B6D20 800B6120 0C02D6AE */  jal        SetUpForRCPop
/* B6D24 800B6124 00002025 */   or        $a0, $zero, $zero
/* B6D28 800B6128 00008825 */  or         $s1, $zero, $zero
/* B6D2C 800B612C 2A210020 */  slti       $at, $s1, 0x20
/* B6D30 800B6130 1020000F */  beqz       $at, .L800B6170
/* B6D34 800B6134 00000000 */   nop
.L800B6138:
/* B6D38 800B6138 2404002B */  addiu      $a0, $zero, 0x2b
/* B6D3C 800B613C 0C02D664 */  jal        LoadStoreSU
/* B6D40 800B6140 02202825 */   or        $a1, $s1, $zero
/* B6D44 800B6144 0C02E9B2 */  jal        __rmonStepRCP
/* B6D48 800B6148 00000000 */   nop
/* B6D4C 800B614C 0C02A45C */  jal        __rmonReadWordAt
/* B6D50 800B6150 3C040400 */   lui       $a0, 0x400
/* B6D54 800B6154 0011C080 */  sll        $t8, $s1, 2
/* B6D58 800B6158 03B8C821 */  addu       $t9, $sp, $t8
/* B6D5C 800B615C AF220034 */  sw         $v0, 0x34($t9)
/* B6D60 800B6160 26310001 */  addiu      $s1, $s1, 1
/* B6D64 800B6164 2A210020 */  slti       $at, $s1, 0x20
/* B6D68 800B6168 1420FFF3 */  bnez       $at, .L800B6138
/* B6D6C 800B616C 00000000 */   nop
.L800B6170:
/* B6D70 800B6170 0C02D6DA */  jal        CleanupFromRCPop
/* B6D74 800B6174 00002025 */   or        $a0, $zero, $zero
/* B6D78 800B6178 3C040404 */  lui        $a0, 0x404
/* B6D7C 800B617C 0C02A45C */  jal        __rmonReadWordAt
/* B6D80 800B6180 34840004 */   ori       $a0, $a0, 4
/* B6D84 800B6184 27A80024 */  addiu      $t0, $sp, 0x24
/* B6D88 800B6188 AD020090 */  sw         $v0, 0x90($t0)
/* B6D8C 800B618C 0C02A45C */  jal        __rmonReadWordAt
/* B6D90 800B6190 3C040404 */   lui       $a0, 0x404
/* B6D94 800B6194 27A90024 */  addiu      $t1, $sp, 0x24
/* B6D98 800B6198 AD220094 */  sw         $v0, 0x94($t1)
/* B6D9C 800B619C 3C040404 */  lui        $a0, 0x404
/* B6DA0 800B61A0 0C02A45C */  jal        __rmonReadWordAt
/* B6DA4 800B61A4 34840008 */   ori       $a0, $a0, 8
/* B6DA8 800B61A8 27AA0024 */  addiu      $t2, $sp, 0x24
/* B6DAC 800B61AC AD420098 */  sw         $v0, 0x98($t2)
/* B6DB0 800B61B0 0C02A45C */  jal        __rmonReadWordAt
/* B6DB4 800B61B4 3C040408 */   lui       $a0, 0x408
/* B6DB8 800B61B8 3C010400 */  lui        $at, 0x400
/* B6DBC 800B61BC 34211000 */  ori        $at, $at, 0x1000
/* B6DC0 800B61C0 00415821 */  addu       $t3, $v0, $at
/* B6DC4 800B61C4 27AC0024 */  addiu      $t4, $sp, 0x24
/* B6DC8 800B61C8 AD8B009C */  sw         $t3, 0x9c($t4)
/* B6DCC 800B61CC 3C040404 */  lui        $a0, 0x404
/* B6DD0 800B61D0 0C02A45C */  jal        __rmonReadWordAt
/* B6DD4 800B61D4 3484000C */   ori       $a0, $a0, 0xc
/* B6DD8 800B61D8 27AD0024 */  addiu      $t5, $sp, 0x24
/* B6DDC 800B61DC ADA200A0 */  sw         $v0, 0xa0($t5)
/* B6DE0 800B61E0 3C040404 */  lui        $a0, 0x404
/* B6DE4 800B61E4 0C02A45C */  jal        __rmonReadWordAt
/* B6DE8 800B61E8 34840010 */   ori       $a0, $a0, 0x10
/* B6DEC 800B61EC 27AE0024 */  addiu      $t6, $sp, 0x24
/* B6DF0 800B61F0 ADC200A4 */  sw         $v0, 0xa4($t6)
/* B6DF4 800B61F4 3C040404 */  lui        $a0, 0x404
/* B6DF8 800B61F8 0C02A45C */  jal        __rmonReadWordAt
/* B6DFC 800B61FC 34840014 */   ori       $a0, $a0, 0x14
/* B6E00 800B6200 27AF0024 */  addiu      $t7, $sp, 0x24
/* B6E04 800B6204 ADE200A8 */  sw         $v0, 0xa8($t7)
/* B6E08 800B6208 3C040404 */  lui        $a0, 0x404
/* B6E0C 800B620C 0C02A45C */  jal        __rmonReadWordAt
/* B6E10 800B6210 34840018 */   ori       $a0, $a0, 0x18
/* B6E14 800B6214 27B80024 */  addiu      $t8, $sp, 0x24
/* B6E18 800B6218 AF0200AC */  sw         $v0, 0xac($t8)
/* B6E1C 800B621C 27A40024 */  addiu      $a0, $sp, 0x24
/* B6E20 800B6220 240500B0 */  addiu      $a1, $zero, 0xb0
/* B6E24 800B6224 0C026833 */  jal        __rmonSendReply
/* B6E28 800B6228 24060001 */   addiu     $a2, $zero, 1
/* B6E2C 800B622C 10000003 */  b          .L800B623C
/* B6E30 800B6230 00001025 */   or        $v0, $zero, $zero
/* B6E34 800B6234 10000001 */  b          .L800B623C
/* B6E38 800B6238 00000000 */   nop
.L800B623C:
/* B6E3C 800B623C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6E40 800B6240 8FB00014 */  lw         $s0, 0x14($sp)
/* B6E44 800B6244 8FB10018 */  lw         $s1, 0x18($sp)
/* B6E48 800B6248 03E00008 */  jr         $ra
/* B6E4C 800B624C 27BD00D8 */   addiu     $sp, $sp, 0xd8

glabel __rmonSetSRegs
/* B6E50 800B6250 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B6E54 800B6254 AFBF001C */  sw         $ra, 0x1c($sp)
/* B6E58 800B6258 AFA40038 */  sw         $a0, 0x38($sp)
/* B6E5C 800B625C AFB10018 */  sw         $s1, 0x18($sp)
/* B6E60 800B6260 AFB00014 */  sw         $s0, 0x14($sp)
/* B6E64 800B6264 8FB00038 */  lw         $s0, 0x38($sp)
/* B6E68 800B6268 0C02E998 */  jal        __rmonRCPrunning
/* B6E6C 800B626C 00000000 */   nop
/* B6E70 800B6270 10400003 */  beqz       $v0, .L800B6280
/* B6E74 800B6274 00000000 */   nop
/* B6E78 800B6278 10000038 */  b          .L800B635C
/* B6E7C 800B627C 2402FFFC */   addiu     $v0, $zero, -4
.L800B6280:
/* B6E80 800B6280 0C02D6AE */  jal        SetUpForRCPop
/* B6E84 800B6284 00002025 */   or        $a0, $zero, $zero
/* B6E88 800B6288 00008825 */  or         $s1, $zero, $zero
/* B6E8C 800B628C 2A210020 */  slti       $at, $s1, 0x20
/* B6E90 800B6290 1020000F */  beqz       $at, .L800B62D0
/* B6E94 800B6294 00000000 */   nop
.L800B6298:
/* B6E98 800B6298 00117080 */  sll        $t6, $s1, 2
/* B6E9C 800B629C 020E7821 */  addu       $t7, $s0, $t6
/* B6EA0 800B62A0 8DE50010 */  lw         $a1, 0x10($t7)
/* B6EA4 800B62A4 0C02A448 */  jal        __rmonWriteWordTo
/* B6EA8 800B62A8 3C040400 */   lui       $a0, 0x400
/* B6EAC 800B62AC 24040023 */  addiu      $a0, $zero, 0x23
/* B6EB0 800B62B0 0C02D664 */  jal        LoadStoreSU
/* B6EB4 800B62B4 02202825 */   or        $a1, $s1, $zero
/* B6EB8 800B62B8 0C02E9B2 */  jal        __rmonStepRCP
/* B6EBC 800B62BC 00000000 */   nop
/* B6EC0 800B62C0 26310001 */  addiu      $s1, $s1, 1
/* B6EC4 800B62C4 2A210020 */  slti       $at, $s1, 0x20
/* B6EC8 800B62C8 1420FFF3 */  bnez       $at, .L800B6298
/* B6ECC 800B62CC 00000000 */   nop
.L800B62D0:
/* B6ED0 800B62D0 0C02D6DA */  jal        CleanupFromRCPop
/* B6ED4 800B62D4 00002025 */   or        $a0, $zero, $zero
/* B6ED8 800B62D8 3C040404 */  lui        $a0, 0x404
/* B6EDC 800B62DC 34840004 */  ori        $a0, $a0, 4
/* B6EE0 800B62E0 0C02A448 */  jal        __rmonWriteWordTo
/* B6EE4 800B62E4 8E050090 */   lw        $a1, 0x90($s0)
/* B6EE8 800B62E8 3C040404 */  lui        $a0, 0x404
/* B6EEC 800B62EC 0C02A448 */  jal        __rmonWriteWordTo
/* B6EF0 800B62F0 8E050094 */   lw        $a1, 0x94($s0)
/* B6EF4 800B62F4 8E05009C */  lw         $a1, 0x9c($s0)
/* B6EF8 800B62F8 3C040408 */  lui        $a0, 0x408
/* B6EFC 800B62FC 30B80FFF */  andi       $t8, $a1, 0xfff
/* B6F00 800B6300 0C02A448 */  jal        __rmonWriteWordTo
/* B6F04 800B6304 03002825 */   or        $a1, $t8, $zero
/* B6F08 800B6308 3C040404 */  lui        $a0, 0x404
/* B6F0C 800B630C 3484000C */  ori        $a0, $a0, 0xc
/* B6F10 800B6310 0C02A448 */  jal        __rmonWriteWordTo
/* B6F14 800B6314 8E0500A0 */   lw        $a1, 0xa0($s0)
/* B6F18 800B6318 3C040404 */  lui        $a0, 0x404
/* B6F1C 800B631C 34840010 */  ori        $a0, $a0, 0x10
/* B6F20 800B6320 0C02A448 */  jal        __rmonWriteWordTo
/* B6F24 800B6324 8E0500A4 */   lw        $a1, 0xa4($s0)
/* B6F28 800B6328 8E19000C */  lw         $t9, 0xc($s0)
/* B6F2C 800B632C AFB90030 */  sw         $t9, 0x30($sp)
/* B6F30 800B6330 92080004 */  lbu        $t0, 4($s0)
/* B6F34 800B6334 A3A80028 */  sb         $t0, 0x28($sp)
/* B6F38 800B6338 A7A0002A */  sh         $zero, 0x2a($sp)
/* B6F3C 800B633C 27A40024 */  addiu      $a0, $sp, 0x24
/* B6F40 800B6340 24050010 */  addiu      $a1, $zero, 0x10
/* B6F44 800B6344 0C026833 */  jal        __rmonSendReply
/* B6F48 800B6348 24060001 */   addiu     $a2, $zero, 1
/* B6F4C 800B634C 10000003 */  b          .L800B635C
/* B6F50 800B6350 00001025 */   or        $v0, $zero, $zero
/* B6F54 800B6354 10000001 */  b          .L800B635C
/* B6F58 800B6358 00000000 */   nop
.L800B635C:
/* B6F5C 800B635C 8FBF001C */  lw         $ra, 0x1c($sp)
/* B6F60 800B6360 8FB00014 */  lw         $s0, 0x14($sp)
/* B6F64 800B6364 8FB10018 */  lw         $s1, 0x18($sp)
/* B6F68 800B6368 03E00008 */  jr         $ra
/* B6F6C 800B636C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel __rmonGetVRegs
/* B6F70 800B6370 27BDFDB0 */  addiu      $sp, $sp, -0x250
/* B6F74 800B6374 AFBF0024 */  sw         $ra, 0x24($sp)
/* B6F78 800B6378 AFA40250 */  sw         $a0, 0x250($sp)
/* B6F7C 800B637C AFB20020 */  sw         $s2, 0x20($sp)
/* B6F80 800B6380 AFB1001C */  sw         $s1, 0x1c($sp)
/* B6F84 800B6384 AFB00018 */  sw         $s0, 0x18($sp)
/* B6F88 800B6388 8FB00250 */  lw         $s0, 0x250($sp)
/* B6F8C 800B638C 0C02E998 */  jal        __rmonRCPrunning
/* B6F90 800B6390 00000000 */   nop
/* B6F94 800B6394 10400003 */  beqz       $v0, .L800B63A4
/* B6F98 800B6398 00000000 */   nop
/* B6F9C 800B639C 1000003C */  b          .L800B6490
/* B6FA0 800B63A0 2402FFFC */   addiu     $v0, $zero, -4
.L800B63A4:
/* B6FA4 800B63A4 8E0E000C */  lw         $t6, 0xc($s0)
/* B6FA8 800B63A8 AFAE003C */  sw         $t6, 0x3c($sp)
/* B6FAC 800B63AC 920F0004 */  lbu        $t7, 4($s0)
/* B6FB0 800B63B0 A3AF0034 */  sb         $t7, 0x34($sp)
/* B6FB4 800B63B4 A7A00036 */  sh         $zero, 0x36($sp)
/* B6FB8 800B63B8 24180210 */  addiu      $t8, $zero, 0x210
/* B6FBC 800B63BC AFB80030 */  sw         $t8, 0x30($sp)
/* B6FC0 800B63C0 24190210 */  addiu      $t9, $zero, 0x210
/* B6FC4 800B63C4 AFB90244 */  sw         $t9, 0x244($sp)
/* B6FC8 800B63C8 27A80244 */  addiu      $t0, $sp, 0x244
/* B6FCC 800B63CC AFA8024C */  sw         $t0, 0x24c($sp)
/* B6FD0 800B63D0 AFA00248 */  sw         $zero, 0x248($sp)
/* B6FD4 800B63D4 8FA90248 */  lw         $t1, 0x248($sp)
/* B6FD8 800B63D8 29210004 */  slti       $at, $t1, 4
/* B6FDC 800B63DC 10200010 */  beqz       $at, .L800B6420
/* B6FE0 800B63E0 00000000 */   nop
.L800B63E4:
/* B6FE4 800B63E4 8FAB0248 */  lw         $t3, 0x248($sp)
/* B6FE8 800B63E8 8FAA024C */  lw         $t2, 0x24c($sp)
/* B6FEC 800B63EC 240C0004 */  addiu      $t4, $zero, 4
/* B6FF0 800B63F0 24060008 */  addiu      $a2, $zero, 8
/* B6FF4 800B63F4 018B2823 */  subu       $a1, $t4, $t3
/* B6FF8 800B63F8 0C02A254 */  jal        __osRdbSend
/* B6FFC 800B63FC 014B2021 */   addu      $a0, $t2, $t3
/* B7000 800B6400 8FAD0248 */  lw         $t5, 0x248($sp)
/* B7004 800B6404 00409025 */  or         $s2, $v0, $zero
/* B7008 800B6408 01B27021 */  addu       $t6, $t5, $s2
/* B700C 800B640C AFAE0248 */  sw         $t6, 0x248($sp)
/* B7010 800B6410 8FAF0248 */  lw         $t7, 0x248($sp)
/* B7014 800B6414 29E10004 */  slti       $at, $t7, 4
/* B7018 800B6418 1420FFF2 */  bnez       $at, .L800B63E4
/* B701C 800B641C 00000000 */   nop
.L800B6420:
/* B7020 800B6420 27A40030 */  addiu      $a0, $sp, 0x30
/* B7024 800B6424 24050010 */  addiu      $a1, $zero, 0x10
/* B7028 800B6428 0C026808 */  jal        __rmonSendHeader
/* B702C 800B642C 24060001 */   addiu     $a2, $zero, 1
/* B7030 800B6430 0C02D6AE */  jal        SetUpForRCPop
/* B7034 800B6434 24040001 */   addiu     $a0, $zero, 1
/* B7038 800B6438 00008825 */  or         $s1, $zero, $zero
/* B703C 800B643C 2A210020 */  slti       $at, $s1, 0x20
/* B7040 800B6440 1020000D */  beqz       $at, .L800B6478
/* B7044 800B6444 00000000 */   nop
.L800B6448:
/* B7048 800B6448 2404003A */  addiu      $a0, $zero, 0x3a
/* B704C 800B644C 0C02D687 */  jal        LoadStoreVU
/* B7050 800B6450 02202825 */   or        $a1, $s1, $zero
/* B7054 800B6454 0C02E9B2 */  jal        __rmonStepRCP
/* B7058 800B6458 00000000 */   nop
/* B705C 800B645C 3C040400 */  lui        $a0, 0x400
/* B7060 800B6460 0C02685F */  jal        __rmonSendData
/* B7064 800B6464 24050010 */   addiu     $a1, $zero, 0x10
/* B7068 800B6468 26310001 */  addiu      $s1, $s1, 1
/* B706C 800B646C 2A210020 */  slti       $at, $s1, 0x20
/* B7070 800B6470 1420FFF5 */  bnez       $at, .L800B6448
/* B7074 800B6474 00000000 */   nop
.L800B6478:
/* B7078 800B6478 0C02D6DA */  jal        CleanupFromRCPop
/* B707C 800B647C 24040001 */   addiu     $a0, $zero, 1
/* B7080 800B6480 10000003 */  b          .L800B6490
/* B7084 800B6484 00001025 */   or        $v0, $zero, $zero
/* B7088 800B6488 10000001 */  b          .L800B6490
/* B708C 800B648C 00000000 */   nop
.L800B6490:
/* B7090 800B6490 8FBF0024 */  lw         $ra, 0x24($sp)
/* B7094 800B6494 8FB00018 */  lw         $s0, 0x18($sp)
/* B7098 800B6498 8FB1001C */  lw         $s1, 0x1c($sp)
/* B709C 800B649C 8FB20020 */  lw         $s2, 0x20($sp)
/* B70A0 800B64A0 03E00008 */  jr         $ra
/* B70A4 800B64A4 27BD0250 */   addiu     $sp, $sp, 0x250

glabel __rmonSetVRegs
/* B70A8 800B64A8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B70AC 800B64AC AFBF001C */  sw         $ra, 0x1c($sp)
/* B70B0 800B64B0 AFA40038 */  sw         $a0, 0x38($sp)
/* B70B4 800B64B4 AFB10018 */  sw         $s1, 0x18($sp)
/* B70B8 800B64B8 AFB00014 */  sw         $s0, 0x14($sp)
/* B70BC 800B64BC 8FB00038 */  lw         $s0, 0x38($sp)
/* B70C0 800B64C0 0C02E998 */  jal        __rmonRCPrunning
/* B70C4 800B64C4 00000000 */   nop
/* B70C8 800B64C8 10400003 */  beqz       $v0, .L800B64D8
/* B70CC 800B64CC 00000000 */   nop
/* B70D0 800B64D0 10000025 */  b          .L800B6568
/* B70D4 800B64D4 2402FFFC */   addiu     $v0, $zero, -4
.L800B64D8:
/* B70D8 800B64D8 0C02D6AE */  jal        SetUpForRCPop
/* B70DC 800B64DC 24040001 */   addiu     $a0, $zero, 1
/* B70E0 800B64E0 00008825 */  or         $s1, $zero, $zero
/* B70E4 800B64E4 2A210020 */  slti       $at, $s1, 0x20
/* B70E8 800B64E8 10200010 */  beqz       $at, .L800B652C
/* B70EC 800B64EC 00000000 */   nop
.L800B64F0:
/* B70F0 800B64F0 00117080 */  sll        $t6, $s1, 2
/* B70F4 800B64F4 020E2821 */  addu       $a1, $s0, $t6
/* B70F8 800B64F8 24A50010 */  addiu      $a1, $a1, 0x10
/* B70FC 800B64FC 3C040400 */  lui        $a0, 0x400
/* B7100 800B6500 0C02A484 */  jal        __rmonCopyWords
/* B7104 800B6504 24060004 */   addiu     $a2, $zero, 4
/* B7108 800B6508 24040032 */  addiu      $a0, $zero, 0x32
/* B710C 800B650C 0C02D687 */  jal        LoadStoreVU
/* B7110 800B6510 02202825 */   or        $a1, $s1, $zero
/* B7114 800B6514 0C02E9B2 */  jal        __rmonStepRCP
/* B7118 800B6518 00000000 */   nop
/* B711C 800B651C 26310001 */  addiu      $s1, $s1, 1
/* B7120 800B6520 2A210020 */  slti       $at, $s1, 0x20
/* B7124 800B6524 1420FFF2 */  bnez       $at, .L800B64F0
/* B7128 800B6528 00000000 */   nop
.L800B652C:
/* B712C 800B652C 0C02D6DA */  jal        CleanupFromRCPop
/* B7130 800B6530 24040001 */   addiu     $a0, $zero, 1
/* B7134 800B6534 8E0F000C */  lw         $t7, 0xc($s0)
/* B7138 800B6538 AFAF0030 */  sw         $t7, 0x30($sp)
/* B713C 800B653C 92180004 */  lbu        $t8, 4($s0)
/* B7140 800B6540 A3B80028 */  sb         $t8, 0x28($sp)
/* B7144 800B6544 A7A0002A */  sh         $zero, 0x2a($sp)
/* B7148 800B6548 27A40024 */  addiu      $a0, $sp, 0x24
/* B714C 800B654C 24050010 */  addiu      $a1, $zero, 0x10
/* B7150 800B6550 0C026833 */  jal        __rmonSendReply
/* B7154 800B6554 24060001 */   addiu     $a2, $zero, 1
/* B7158 800B6558 10000003 */  b          .L800B6568
/* B715C 800B655C 00001025 */   or        $v0, $zero, $zero
/* B7160 800B6560 10000001 */  b          .L800B6568
/* B7164 800B6564 00000000 */   nop
.L800B6568:
/* B7168 800B6568 8FBF001C */  lw         $ra, 0x1c($sp)
/* B716C 800B656C 8FB00014 */  lw         $s0, 0x14($sp)
/* B7170 800B6570 8FB10018 */  lw         $s1, 0x18($sp)
/* B7174 800B6574 03E00008 */  jr         $ra
/* B7178 800B6578 27BD0038 */   addiu     $sp, $sp, 0x38

glabel __rmonGetRegisterContents
/* B717C 800B657C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B7180 800B6580 AFBF0014 */  sw         $ra, 0x14($sp)
/* B7184 800B6584 AFA40020 */  sw         $a0, 0x20($sp)
/* B7188 800B6588 AFA50024 */  sw         $a1, 0x24($sp)
/* B718C 800B658C AFA60028 */  sw         $a2, 0x28($sp)
/* B7190 800B6590 8FAE0020 */  lw         $t6, 0x20($sp)
/* B7194 800B6594 15C0002D */  bnez       $t6, .L800B664C
/* B7198 800B6598 00000000 */   nop
/* B719C 800B659C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B71A0 800B65A0 19E00008 */  blez       $t7, .L800B65C4
/* B71A4 800B65A4 00000000 */   nop
/* B71A8 800B65A8 29E1001A */  slti       $at, $t7, 0x1a
/* B71AC 800B65AC 10200005 */  beqz       $at, .L800B65C4
/* B71B0 800B65B0 00000000 */   nop
/* B71B4 800B65B4 8FB80028 */  lw         $t8, 0x28($sp)
/* B71B8 800B65B8 2719FFFF */  addiu      $t9, $t8, -1
/* B71BC 800B65BC 1000000E */  b          .L800B65F8
/* B71C0 800B65C0 AFB90028 */   sw        $t9, 0x28($sp)
.L800B65C4:
/* B71C4 800B65C4 8FA80028 */  lw         $t0, 0x28($sp)
/* B71C8 800B65C8 2901001C */  slti       $at, $t0, 0x1c
/* B71CC 800B65CC 14200008 */  bnez       $at, .L800B65F0
/* B71D0 800B65D0 00000000 */   nop
/* B71D4 800B65D4 29010020 */  slti       $at, $t0, 0x20
/* B71D8 800B65D8 10200005 */  beqz       $at, .L800B65F0
/* B71DC 800B65DC 00000000 */   nop
/* B71E0 800B65E0 8FA90028 */  lw         $t1, 0x28($sp)
/* B71E4 800B65E4 252AFFFD */  addiu      $t2, $t1, -3
/* B71E8 800B65E8 10000003 */  b          .L800B65F8
/* B71EC 800B65EC AFAA0028 */   sw        $t2, 0x28($sp)
.L800B65F0:
/* B71F0 800B65F0 1000001C */  b          .L800B6664
/* B71F4 800B65F4 00001025 */   or        $v0, $zero, $zero
.L800B65F8:
/* B71F8 800B65F8 0C02D9C3 */  jal        __rmonGetTCB
/* B71FC 800B65FC 8FA40024 */   lw        $a0, 0x24($sp)
/* B7200 800B6600 AFA20018 */  sw         $v0, 0x18($sp)
/* B7204 800B6604 8FAB0018 */  lw         $t3, 0x18($sp)
/* B7208 800B6608 15600003 */  bnez       $t3, .L800B6618
/* B720C 800B660C 00000000 */   nop
/* B7210 800B6610 10000014 */  b          .L800B6664
/* B7214 800B6614 00001025 */   or        $v0, $zero, $zero
.L800B6618:
/* B7218 800B6618 8FAC0018 */  lw         $t4, 0x18($sp)
/* B721C 800B661C 258D0020 */  addiu      $t5, $t4, 0x20
/* B7220 800B6620 AFAD001C */  sw         $t5, 0x1c($sp)
/* B7224 800B6624 8FAF0028 */  lw         $t7, 0x28($sp)
/* B7228 800B6628 8FAE001C */  lw         $t6, 0x1c($sp)
/* B722C 800B662C 000FC080 */  sll        $t8, $t7, 2
/* B7230 800B6630 01D8C821 */  addu       $t9, $t6, $t8
/* B7234 800B6634 AFB9001C */  sw         $t9, 0x1c($sp)
/* B7238 800B6638 8FA8001C */  lw         $t0, 0x1c($sp)
/* B723C 800B663C 10000009 */  b          .L800B6664
/* B7240 800B6640 8D020000 */   lw        $v0, ($t0)
/* B7244 800B6644 10000005 */  b          .L800B665C
/* B7248 800B6648 00000000 */   nop
.L800B664C:
/* B724C 800B664C 0C02D81A */  jal        func_800B6068
/* B7250 800B6650 8FA40028 */   lw        $a0, 0x28($sp)
/* B7254 800B6654 10000003 */  b          .L800B6664
/* B7258 800B6658 00000000 */   nop
.L800B665C:
/* B725C 800B665C 10000001 */  b          .L800B6664
/* B7260 800B6660 00000000 */   nop
.L800B6664:
/* B7264 800B6664 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7268 800B6668 27BD0020 */  addiu      $sp, $sp, 0x20
/* B726C 800B666C 03E00008 */  jr         $ra
/* B7270 800B6670 00000000 */   nop
/* B7274 800B6674 00000000 */  nop
/* B7278 800B6678 00000000 */  nop
/* B727C 800B667C 00000000 */  nop

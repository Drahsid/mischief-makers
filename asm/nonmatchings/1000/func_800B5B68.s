glabel func_800B5B68
/* B6768 800B5B68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B676C 800B5B6C AFBF0014 */  sw         $ra, 0x14($sp)
/* B6770 800B5B70 AFA40018 */  sw         $a0, 0x18($sp)
/* B6774 800B5B74 3C0E8019 */  lui        $t6, %hi(D_8018B768)
/* B6778 800B5B78 25CEB768 */  addiu      $t6, $t6, %lo(D_8018B768)
/* B677C 800B5B7C 8DC50000 */  lw         $a1, ($t6)
/* B6780 800B5B80 0C02A448 */  jal        func_800A9120
/* B6784 800B5B84 3C040400 */   lui       $a0, 0x400
/* B6788 800B5B88 8FAF0018 */  lw         $t7, 0x18($sp)
/* B678C 800B5B8C 11E00013 */  beqz       $t7, .L800B5BDC
/* B6790 800B5B90 00000000 */   nop
/* B6794 800B5B94 3C188019 */  lui        $t8, %hi(D_8018B768)
/* B6798 800B5B98 2718B768 */  addiu      $t8, $t8, %lo(D_8018B768)
/* B679C 800B5B9C 3C040400 */  lui        $a0, 0x400
/* B67A0 800B5BA0 34840004 */  ori        $a0, $a0, 4
/* B67A4 800B5BA4 0C02A448 */  jal        func_800A9120
/* B67A8 800B5BA8 8F050004 */   lw        $a1, 4($t8)
/* B67AC 800B5BAC 3C198019 */  lui        $t9, %hi(D_8018B768)
/* B67B0 800B5BB0 2739B768 */  addiu      $t9, $t9, %lo(D_8018B768)
/* B67B4 800B5BB4 3C040400 */  lui        $a0, 0x400
/* B67B8 800B5BB8 34840008 */  ori        $a0, $a0, 8
/* B67BC 800B5BBC 0C02A448 */  jal        func_800A9120
/* B67C0 800B5BC0 8F250008 */   lw        $a1, 8($t9)
/* B67C4 800B5BC4 3C088019 */  lui        $t0, %hi(D_8018B768)
/* B67C8 800B5BC8 2508B768 */  addiu      $t0, $t0, %lo(D_8018B768)
/* B67CC 800B5BCC 3C040400 */  lui        $a0, 0x400
/* B67D0 800B5BD0 3484000C */  ori        $a0, $a0, 0xc
/* B67D4 800B5BD4 0C02A448 */  jal        func_800A9120
/* B67D8 800B5BD8 8D050008 */   lw        $a1, 8($t0)
.L800B5BDC:
/* B67DC 800B5BDC 3C040400 */  lui        $a0, 0x400
/* B67E0 800B5BE0 3C058019 */  lui        $a1, %hi(D_8018B764)
/* B67E4 800B5BE4 8CA5B764 */  lw         $a1, %lo(D_8018B764)($a1)
/* B67E8 800B5BE8 0C02A448 */  jal        func_800A9120
/* B67EC 800B5BEC 34841000 */   ori       $a0, $a0, 0x1000
/* B67F0 800B5BF0 3C058019 */  lui        $a1, %hi(D_8018B760)
/* B67F4 800B5BF4 8CA5B760 */  lw         $a1, %lo(D_8018B760)($a1)
/* B67F8 800B5BF8 0C02A448 */  jal        func_800A9120
/* B67FC 800B5BFC 3C040408 */   lui       $a0, 0x408
/* B6800 800B5C00 10000001 */  b          .L800B5C08
/* B6804 800B5C04 00000000 */   nop
.L800B5C08:
/* B6808 800B5C08 8FBF0014 */  lw         $ra, 0x14($sp)
/* B680C 800B5C0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* B6810 800B5C10 03E00008 */  jr         $ra
/* B6814 800B5C14 00000000 */   nop

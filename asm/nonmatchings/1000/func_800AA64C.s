glabel func_800AA64C
/* AB24C 800AA64C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB250 800AA650 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB254 800AA654 0C02D9A0 */  jal        func_800B6680
/* AB258 800AA658 00000000 */   nop
/* AB25C 800AA65C 0C02D9E7 */  jal        func_800B679C
/* AB260 800AA660 00002025 */   or        $a0, $zero, $zero
/* AB264 800AA664 0C02A9A1 */  jal        func_800AA684
/* AB268 800AA668 00000000 */   nop
/* AB26C 800AA66C 10000001 */  b          .L800AA674
/* AB270 800AA670 00000000 */   nop
.L800AA674:
/* AB274 800AA674 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB278 800AA678 27BD0018 */  addiu      $sp, $sp, 0x18
/* AB27C 800AA67C 03E00008 */  jr         $ra
/* AB280 800AA680 00000000 */   nop

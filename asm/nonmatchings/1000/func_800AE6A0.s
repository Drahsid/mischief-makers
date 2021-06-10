glabel func_800AE6A0
/* AF2A0 800AE6A0 400C6000 */  mfc0       $t4, $12
/* AF2A4 800AE6A4 3182FF01 */  andi       $v0, $t4, 0xff01
/* AF2A8 800AE6A8 3C08800F */  lui        $t0, %hi(D_800E9780)
/* AF2AC 800AE6AC 25089780 */  addiu      $t0, $t0, %lo(D_800E9780)
/* AF2B0 800AE6B0 8D0B0000 */  lw         $t3, ($t0)
/* AF2B4 800AE6B4 2401FFFF */  addiu      $at, $zero, -1
/* AF2B8 800AE6B8 01614026 */  xor        $t0, $t3, $at
/* AF2BC 800AE6BC 3108FF00 */  andi       $t0, $t0, 0xff00
/* AF2C0 800AE6C0 00481025 */  or         $v0, $v0, $t0
/* AF2C4 800AE6C4 3C0AA430 */  lui        $t2, %hi(D_A430000C)
/* AF2C8 800AE6C8 8D4A000C */  lw         $t2, %lo(D_A430000C)($t2)
/* AF2CC 800AE6CC 11400005 */  beqz       $t2, .L800AE6E4
/* AF2D0 800AE6D0 000B4C02 */   srl       $t1, $t3, 0x10
/* AF2D4 800AE6D4 2401FFFF */  addiu      $at, $zero, -1
/* AF2D8 800AE6D8 01214826 */  xor        $t1, $t1, $at
/* AF2DC 800AE6DC 3129003F */  andi       $t1, $t1, 0x3f
/* AF2E0 800AE6E0 01495025 */  or         $t2, $t2, $t1
.L800AE6E4:
/* AF2E4 800AE6E4 000A5400 */  sll        $t2, $t2, 0x10
/* AF2E8 800AE6E8 004A1025 */  or         $v0, $v0, $t2
/* AF2EC 800AE6EC 3C01003F */  lui        $at, 0x3f
/* AF2F0 800AE6F0 00814024 */  and        $t0, $a0, $at
/* AF2F4 800AE6F4 010B4024 */  and        $t0, $t0, $t3
/* AF2F8 800AE6F8 000843C2 */  srl        $t0, $t0, 0xf
/* AF2FC 800AE6FC 3C0A800F */  lui        $t2, %hi(D_800EE390)
/* AF300 800AE700 01485021 */  addu       $t2, $t2, $t0
/* AF304 800AE704 954AE390 */  lhu        $t2, %lo(D_800EE390)($t2)
/* AF308 800AE708 3C01A430 */  lui        $at, %hi(D_A430000C)
/* AF30C 800AE70C AC2A000C */  sw         $t2, %lo(D_A430000C)($at)
/* AF310 800AE710 3088FF01 */  andi       $t0, $a0, 0xff01
/* AF314 800AE714 3169FF00 */  andi       $t1, $t3, 0xff00
/* AF318 800AE718 01094024 */  and        $t0, $t0, $t1
/* AF31C 800AE71C 3C01FFFF */  lui        $at, 0xffff
/* AF320 800AE720 342100FF */  ori        $at, $at, 0xff
/* AF324 800AE724 01816024 */  and        $t4, $t4, $at
/* AF328 800AE728 01886025 */  or         $t4, $t4, $t0
/* AF32C 800AE72C 408C6000 */  mtc0       $t4, $12
/* AF330 800AE730 00000000 */  nop
/* AF334 800AE734 00000000 */  nop
/* AF338 800AE738 03E00008 */  jr         $ra
/* AF33C 800AE73C 00000000 */   nop

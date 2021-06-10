glabel func_800075A8
/* 81A8 800075A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 81AC 800075AC AFBF0024 */  sw         $ra, 0x24($sp)
/* 81B0 800075B0 0C000CE0 */  jal        func_80003380
/* 81B4 800075B4 24040022 */   addiu     $a0, $zero, 0x22
/* 81B8 800075B8 240E0001 */  addiu      $t6, $zero, 1
/* 81BC 800075BC 3C018010 */  lui        $at, %hi(D_80101C88)
/* 81C0 800075C0 A02E1C88 */  sb         $t6, %lo(D_80101C88)($at)
/* 81C4 800075C4 2404000C */  addiu      $a0, $zero, 0xc
/* 81C8 800075C8 2405011A */  addiu      $a1, $zero, 0x11a
/* 81CC 800075CC 3406FF80 */  ori        $a2, $zero, 0xff80
/* 81D0 800075D0 24070044 */  addiu      $a3, $zero, 0x44
/* 81D4 800075D4 0C009CFF */  jal        func_800273FC
/* 81D8 800075D8 AFA00010 */   sw        $zero, 0x10($sp)
/* 81DC 800075DC 240F000E */  addiu      $t7, $zero, 0xe
/* 81E0 800075E0 A7AF002E */  sh         $t7, 0x2e($sp)
/* 81E4 800075E4 2404000D */  addiu      $a0, $zero, 0xd
/* 81E8 800075E8 2405011E */  addiu      $a1, $zero, 0x11e
/* 81EC 800075EC 24060080 */  addiu      $a2, $zero, 0x80
/* 81F0 800075F0 24070044 */  addiu      $a3, $zero, 0x44
/* 81F4 800075F4 0C009CFF */  jal        func_800273FC
/* 81F8 800075F8 AFA00010 */   sw        $zero, 0x10($sp)
/* 81FC 800075FC 97A4002E */  lhu        $a0, 0x2e($sp)
/* 8200 80007600 3C05800C */  lui        $a1, %hi(D_800C52A4)
/* 8204 80007604 24180080 */  addiu      $t8, $zero, 0x80
/* 8208 80007608 AFB80014 */  sw         $t8, 0x14($sp)
/* 820C 8000760C 24A552A4 */  addiu      $a1, $a1, %lo(D_800C52A4)
/* 8210 80007610 3406FF90 */  ori        $a2, $zero, 0xff90
/* 8214 80007614 24070044 */  addiu      $a3, $zero, 0x44
/* 8218 80007618 AFA00010 */  sw         $zero, 0x10($sp)
/* 821C 8000761C AFA00018 */  sw         $zero, 0x18($sp)
/* 8220 80007620 0C009F10 */  jal        func_80027C40
/* 8224 80007624 AFA0001C */   sw        $zero, 0x1c($sp)
/* 8228 80007628 3C05800C */  lui        $a1, %hi(D_800C52BC)
/* 822C 8000762C 24190080 */  addiu      $t9, $zero, 0x80
/* 8230 80007630 AFB90014 */  sw         $t9, 0x14($sp)
/* 8234 80007634 24A552BC */  addiu      $a1, $a1, %lo(D_800C52BC)
/* 8238 80007638 3044FFFF */  andi       $a0, $v0, 0xffff
/* 823C 8000763C 24060040 */  addiu      $a2, $zero, 0x40
/* 8240 80007640 24070044 */  addiu      $a3, $zero, 0x44
/* 8244 80007644 AFA00010 */  sw         $zero, 0x10($sp)
/* 8248 80007648 AFA00018 */  sw         $zero, 0x18($sp)
/* 824C 8000764C 0C009F10 */  jal        func_80027C40
/* 8250 80007650 AFA0001C */   sw        $zero, 0x1c($sp)
/* 8254 80007654 3C05800C */  lui        $a1, %hi(D_800C515C)
/* 8258 80007658 24A5515C */  addiu      $a1, $a1, %lo(D_800C515C)
/* 825C 8000765C 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8260 80007660 3406FF80 */  ori        $a2, $zero, 0xff80
/* 8264 80007664 24070030 */  addiu      $a3, $zero, 0x30
/* 8268 80007668 0C009ECA */  jal        func_80027B28
/* 826C 8000766C AFA00010 */   sw        $zero, 0x10($sp)
/* 8270 80007670 3C05800C */  lui        $a1, %hi(D_800C5180)
/* 8274 80007674 24A55180 */  addiu      $a1, $a1, %lo(D_800C5180)
/* 8278 80007678 3044FFFF */  andi       $a0, $v0, 0xffff
/* 827C 8000767C 3406FF80 */  ori        $a2, $zero, 0xff80
/* 8280 80007680 24070020 */  addiu      $a3, $zero, 0x20
/* 8284 80007684 0C009ECA */  jal        func_80027B28
/* 8288 80007688 AFA00010 */   sw        $zero, 0x10($sp)
/* 828C 8000768C 3C05800C */  lui        $a1, %hi(D_800C51A4)
/* 8290 80007690 24A551A4 */  addiu      $a1, $a1, %lo(D_800C51A4)
/* 8294 80007694 3044FFFF */  andi       $a0, $v0, 0xffff
/* 8298 80007698 3406FF80 */  ori        $a2, $zero, 0xff80
/* 829C 8000769C 24070010 */  addiu      $a3, $zero, 0x10
/* 82A0 800076A0 0C009ECA */  jal        func_80027B28
/* 82A4 800076A4 AFA00010 */   sw        $zero, 0x10($sp)
/* 82A8 800076A8 3C05800C */  lui        $a1, %hi(D_800C51C8)
/* 82AC 800076AC 24A551C8 */  addiu      $a1, $a1, %lo(D_800C51C8)
/* 82B0 800076B0 3044FFFF */  andi       $a0, $v0, 0xffff
/* 82B4 800076B4 3406FF80 */  ori        $a2, $zero, 0xff80
/* 82B8 800076B8 00003825 */  or         $a3, $zero, $zero
/* 82BC 800076BC 0C009ECA */  jal        func_80027B28
/* 82C0 800076C0 AFA00010 */   sw        $zero, 0x10($sp)
/* 82C4 800076C4 3C05800C */  lui        $a1, %hi(D_800C51EC)
/* 82C8 800076C8 24A551EC */  addiu      $a1, $a1, %lo(D_800C51EC)
/* 82CC 800076CC 3044FFFF */  andi       $a0, $v0, 0xffff
/* 82D0 800076D0 3406FF80 */  ori        $a2, $zero, 0xff80
/* 82D4 800076D4 3407FFF0 */  ori        $a3, $zero, 0xfff0
/* 82D8 800076D8 0C009ECA */  jal        func_80027B28
/* 82DC 800076DC AFA00010 */   sw        $zero, 0x10($sp)
/* 82E0 800076E0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 82E4 800076E4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 82E8 800076E8 03E00008 */  jr         $ra
/* 82EC 800076EC 00000000 */   nop

glabel func_8003F7A0
/* 403A0 8003F7A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 403A4 8003F7A4 AFA7002C */  sw         $a3, 0x2c($sp)
/* 403A8 8003F7A8 87A7002E */  lh         $a3, 0x2e($sp)
/* 403AC 8003F7AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 403B0 8003F7B0 AFA50024 */  sw         $a1, 0x24($sp)
/* 403B4 8003F7B4 AFA60028 */  sw         $a2, 0x28($sp)
/* 403B8 8003F7B8 00057400 */  sll        $t6, $a1, 0x10
/* 403BC 8003F7BC 0006C400 */  sll        $t8, $a2, 0x10
/* 403C0 8003F7C0 00183403 */  sra        $a2, $t8, 0x10
/* 403C4 8003F7C4 000E2C03 */  sra        $a1, $t6, 0x10
/* 403C8 8003F7C8 E7AC0020 */  swc1       $f12, 0x20($sp)
/* 403CC 8003F7CC 240401F2 */  addiu      $a0, $zero, 0x1f2
/* 403D0 8003F7D0 0C00C4A1 */  jal        func_80031284
/* 403D4 8003F7D4 24E70001 */   addiu     $a3, $a3, 1
/* 403D8 8003F7D8 10400031 */  beqz       $v0, .L8003F8A0
/* 403DC 8003F7DC 3044FFFF */   andi      $a0, $v0, 0xffff
/* 403E0 8003F7E0 00044080 */  sll        $t0, $a0, 2
/* 403E4 8003F7E4 01044023 */  subu       $t0, $t0, $a0
/* 403E8 8003F7E8 00084080 */  sll        $t0, $t0, 2
/* 403EC 8003F7EC 01044021 */  addu       $t0, $t0, $a0
/* 403F0 8003F7F0 00084080 */  sll        $t0, $t0, 2
/* 403F4 8003F7F4 01044023 */  subu       $t0, $t0, $a0
/* 403F8 8003F7F8 3C09800F */  lui        $t1, %hi(gActors)
/* 403FC 8003F7FC 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 40400 8003F800 000840C0 */  sll        $t0, $t0, 3
/* 40404 8003F804 01091021 */  addu       $v0, $t0, $t1
/* 40408 8003F808 3C0C800E */  lui        $t4, %hi(D_800D8528)
/* 4040C 8003F80C 240A0201 */  addiu      $t2, $zero, 0x201
/* 40410 8003F810 240BFFF0 */  addiu      $t3, $zero, -0x10
/* 40414 8003F814 258C8528 */  addiu      $t4, $t4, %lo(D_800D8528)
/* 40418 8003F818 A44A0094 */  sh         $t2, 0x94($v0)
/* 4041C 8003F81C AC4B0154 */  sw         $t3, 0x154($v0)
/* 40420 8003F820 AC4C018C */  sw         $t4, 0x18c($v0)
/* 40424 8003F824 AFA20018 */  sw         $v0, 0x18($sp)
/* 40428 8003F828 24050040 */  addiu      $a1, $zero, 0x40
/* 4042C 8003F82C 0C00ABAD */  jal        func_8002AEB4
/* 40430 8003F830 A7A4001E */   sh        $a0, 0x1e($sp)
/* 40434 8003F834 3C013F00 */  lui        $at, 0x3f00
/* 40438 8003F838 44817000 */  mtc1       $at, $f14
/* 4043C 8003F83C 8FA20018 */  lw         $v0, 0x18($sp)
/* 40440 8003F840 3C01800F */  lui        $at, %hi(D_800EBC5C)
/* 40444 8003F844 E44E00B4 */  swc1       $f14, 0xb4($v0)
/* 40448 8003F848 E44E00B8 */  swc1       $f14, 0xb8($v0)
/* 4044C 8003F84C C7A40020 */  lwc1       $f4, 0x20($sp)
/* 40450 8003F850 C426BC5C */  lwc1       $f6, %lo(D_800EBC5C)($at)
/* 40454 8003F854 C427BC58 */  lwc1       $f7, -0x43a8($at)
/* 40458 8003F858 46002021 */  cvt.d.s    $f0, $f4
/* 4045C 8003F85C 46260202 */  mul.d      $f8, $f0, $f6
/* 40460 8003F860 3C01800F */  lui        $at, 0x800f
/* 40464 8003F864 3C0D0001 */  lui        $t5, 1
/* 40468 8003F868 97A4001E */  lhu        $a0, 0x1e($sp)
/* 4046C 8003F86C 462040A0 */  cvt.s.d    $f2, $f8
/* 40470 8003F870 E4420110 */  swc1       $f2, 0x110($v0)
/* 40474 8003F874 E4420114 */  swc1       $f2, 0x114($v0)
/* 40478 8003F878 C42ABC64 */  lwc1       $f10, -0x439c($at)
/* 4047C 8003F87C C42BBC60 */  lwc1       $f11, -0x43a0($at)
/* 40480 8003F880 3C0140E0 */  lui        $at, 0x40e0
/* 40484 8003F884 462A0402 */  mul.d      $f16, $f0, $f10
/* 40488 8003F888 44819000 */  mtc1       $at, $f18
/* 4048C 8003F88C AC4D00F4 */  sw         $t5, 0xf4($v0)
/* 40490 8003F890 E4520148 */  swc1       $f18, 0x148($v0)
/* 40494 8003F894 46208320 */  cvt.s.d    $f12, $f16
/* 40498 8003F898 E44C0118 */  swc1       $f12, 0x118($v0)
/* 4049C 8003F89C E44C011C */  swc1       $f12, 0x11c($v0)
.L8003F8A0:
/* 404A0 8003F8A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 404A4 8003F8A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 404A8 8003F8A8 03E00008 */  jr         $ra
/* 404AC 8003F8AC 00801025 */   or        $v0, $a0, $zero
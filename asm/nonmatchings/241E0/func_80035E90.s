.section .rodata

glabel jtbl_800EB9E8
.word L8003601C_36C1C, L80036040_36C40, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800360A8_36CA8, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L8003619C_36D9C, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L800365B4_371B4, L80035FC4_36BC4, L800363B0_36FB0

.section .text

glabel func_80035E90
/* 36A90 80035E90 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 36A94 80035E94 AFA40058 */  sw         $a0, 0x58($sp)
/* 36A98 80035E98 97AE005A */  lhu        $t6, 0x5a($sp)
/* 36A9C 80035E9C 3C18800F */  lui        $t8, 0x800f
/* 36AA0 80035EA0 000E7880 */  sll        $t7, $t6, 2
/* 36AA4 80035EA4 01EE7823 */  subu       $t7, $t7, $t6
/* 36AA8 80035EA8 000F7880 */  sll        $t7, $t7, 2
/* 36AAC 80035EAC 01EE7821 */  addu       $t7, $t7, $t6
/* 36AB0 80035EB0 000F7880 */  sll        $t7, $t7, 2
/* 36AB4 80035EB4 01EE7823 */  subu       $t7, $t7, $t6
/* 36AB8 80035EB8 AFB00038 */  sw         $s0, 0x38($sp)
/* 36ABC 80035EBC 000F78C0 */  sll        $t7, $t7, 3
/* 36AC0 80035EC0 2718F510 */  addiu      $t8, $t8, -0xaf0
/* 36AC4 80035EC4 01F88021 */  addu       $s0, $t7, $t8
/* 36AC8 80035EC8 96060152 */  lhu        $a2, 0x152($s0)
/* 36ACC 80035ECC 3C08800F */  lui        $t0, 0x800f
/* 36AD0 80035ED0 0006C880 */  sll        $t9, $a2, 2
/* 36AD4 80035ED4 0326C823 */  subu       $t9, $t9, $a2
/* 36AD8 80035ED8 0019C880 */  sll        $t9, $t9, 2
/* 36ADC 80035EDC 0326C821 */  addu       $t9, $t9, $a2
/* 36AE0 80035EE0 0019C880 */  sll        $t9, $t9, 2
/* 36AE4 80035EE4 0326C823 */  subu       $t9, $t9, $a2
/* 36AE8 80035EE8 0019C8C0 */  sll        $t9, $t9, 3
/* 36AEC 80035EEC 2508F510 */  addiu      $t0, $t0, -0xaf0
/* 36AF0 80035EF0 03284821 */  addu       $t1, $t9, $t0
/* 36AF4 80035EF4 AFBF003C */  sw         $ra, 0x3c($sp)
/* 36AF8 80035EF8 AE00018C */  sw         $zero, 0x18c($s0)
/* 36AFC 80035EFC AFA90044 */  sw         $t1, 0x44($sp)
/* 36B00 80035F00 8D2A0174 */  lw         $t2, 0x174($t1)
/* 36B04 80035F04 00000000 */  nop
/* 36B08 80035F08 1540001C */  bnez       $t2, .L80035F7C
/* 36B0C 80035F0C 8FB80044 */   lw        $t8, 0x44($sp)
/* 36B10 80035F10 960200D0 */  lhu        $v0, 0xd0($s0)
/* 36B14 80035F14 00000000 */  nop
/* 36B18 80035F18 2841002F */  slti       $at, $v0, 0x2f
/* 36B1C 80035F1C 10200016 */  beqz       $at, .L80035F78
/* 36B20 80035F20 24010020 */   addiu     $at, $zero, 0x20
/* 36B24 80035F24 14410012 */  bne        $v0, $at, .L80035F70
/* 36B28 80035F28 240B0030 */   addiu     $t3, $zero, 0x30
/* 36B2C 80035F2C 8605017A */  lh         $a1, 0x17a($s0)
/* 36B30 80035F30 A60B00D0 */  sh         $t3, 0xd0($s0)
/* 36B34 80035F34 0C00D4B0 */  jal        func_800352C0
/* 36B38 80035F38 30C4FFFF */   andi      $a0, $a2, 0xffff
/* 36B3C 80035F3C 8FAC0044 */  lw         $t4, 0x44($sp)
/* 36B40 80035F40 3C014234 */  lui        $at, 0x4234
/* 36B44 80035F44 8D8D0170 */  lw         $t5, 0x170($t4)
/* 36B48 80035F48 44812000 */  mtc1       $at, $f4
/* 36B4C 80035F4C 340E8000 */  ori        $t6, $zero, 0x8000
/* 36B50 80035F50 97A5005A */  lhu        $a1, 0x5a($sp)
/* 36B54 80035F54 AE0E00F0 */  sw         $t6, 0xf0($s0)
/* 36B58 80035F58 24040051 */  addiu      $a0, $zero, 0x51
/* 36B5C 80035F5C AE0D0178 */  sw         $t5, 0x178($s0)
/* 36B60 80035F60 0C000DB2 */  jal        func_800036C8
/* 36B64 80035F64 E6040120 */   swc1      $f4, 0x120($s0)
/* 36B68 80035F68 10000004 */  b          .L80035F7C
/* 36B6C 80035F6C 8FB80044 */   lw        $t8, 0x44($sp)
.L80035F70:
/* 36B70 80035F70 100001BE */  b          .L8003666C
/* 36B74 80035F74 AE000080 */   sw        $zero, 0x80($s0)
.L80035F78:
/* 36B78 80035F78 8FB80044 */  lw         $t8, 0x44($sp)
.L80035F7C:
/* 36B7C 80035F7C 240F0800 */  addiu      $t7, $zero, 0x800
/* 36B80 80035F80 A70F0094 */  sh         $t7, 0x94($t8)
/* 36B84 80035F84 8E190080 */  lw         $t9, 0x80($s0)
/* 36B88 80035F88 960300D0 */  lhu        $v1, 0xd0($s0)
/* 36B8C 80035F8C 34098000 */  ori        $t1, $zero, 0x8000
/* 36B90 80035F90 37280009 */  ori        $t0, $t9, 9
/* 36B94 80035F94 2C610031 */  sltiu      $at, $v1, 0x31
/* 36B98 80035F98 AE080080 */  sw         $t0, 0x80($s0)
/* 36B9C 80035F9C A6090084 */  sh         $t1, 0x84($s0)
/* 36BA0 80035FA0 10200184 */  beqz       $at, L800365B4_371B4
/* 36BA4 80035FA4 00601025 */   or        $v0, $v1, $zero
/* 36BA8 80035FA8 00035080 */  sll        $t2, $v1, 2
/* 36BAC 80035FAC 3C01800F */  lui        $at, %hi(jtbl_800EB9E8)
/* 36BB0 80035FB0 002A0821 */  addu       $at, $at, $t2
/* 36BB4 80035FB4 8C2AB9E8 */  lw         $t2, %lo(jtbl_800EB9E8)($at)
/* 36BB8 80035FB8 00000000 */  nop
/* 36BBC 80035FBC 01400008 */  jr         $t2
/* 36BC0 80035FC0 00000000 */   nop
glabel L80035FC4_36BC4
/* 36BC4 80035FC4 3C014270 */  lui        $at, 0x4270
/* 36BC8 80035FC8 44813000 */  mtc1       $at, $f6
/* 36BCC 80035FCC 8FAF0044 */  lw         $t7, 0x44($sp)
/* 36BD0 80035FD0 246B0001 */  addiu      $t3, $v1, 1
/* 36BD4 80035FD4 240C000C */  addiu      $t4, $zero, 0xc
/* 36BD8 80035FD8 240DFFE2 */  addiu      $t5, $zero, -0x1e
/* 36BDC 80035FDC 240E6000 */  addiu      $t6, $zero, 0x6000
/* 36BE0 80035FE0 A60B00D0 */  sh         $t3, 0xd0($s0)
/* 36BE4 80035FE4 A60C00AE */  sh         $t4, 0xae($s0)
/* 36BE8 80035FE8 A60D00AA */  sh         $t5, 0xaa($s0)
/* 36BEC 80035FEC AE0E00F0 */  sw         $t6, 0xf0($s0)
/* 36BF0 80035FF0 E6060120 */  swc1       $f6, 0x120($s0)
/* 36BF4 80035FF4 8DF80170 */  lw         $t8, 0x170($t7)
/* 36BF8 80035FF8 241900FF */  addiu      $t9, $zero, 0xff
/* 36BFC 80035FFC 24080060 */  addiu      $t0, $zero, 0x60
/* 36C00 80036000 97A4005A */  lhu        $a0, 0x5a($sp)
/* 36C04 80036004 A219009F */  sb         $t9, 0x9f($s0)
/* 36C08 80036008 A208009D */  sb         $t0, 0x9d($s0)
/* 36C0C 8003600C 0C00D74D */  jal        func_80035D34
/* 36C10 80036010 AE180178 */   sw        $t8, 0x178($s0)
/* 36C14 80036014 10000168 */  b          .L800365B8
/* 36C18 80036018 860400AE */   lh        $a0, 0xae($s0)
glabel L8003601C_36C1C
/* 36C1C 8003601C 24690001 */  addiu      $t1, $v1, 1
/* 36C20 80036020 240A0001 */  addiu      $t2, $zero, 1
/* 36C24 80036024 240BFFFE */  addiu      $t3, $zero, -2
/* 36C28 80036028 97A4005A */  lhu        $a0, 0x5a($sp)
/* 36C2C 8003602C A60900D0 */  sh         $t1, 0xd0($s0)
/* 36C30 80036030 A60A00AE */  sh         $t2, 0xae($s0)
/* 36C34 80036034 A60B00AA */  sh         $t3, 0xaa($s0)
/* 36C38 80036038 0C00ABAD */  jal        func_8002AEB4
/* 36C3C 8003603C 24050060 */   addiu     $a1, $zero, 0x60
glabel L80036040_36C40
/* 36C40 80036040 860C00AE */  lh         $t4, 0xae($s0)
/* 36C44 80036044 2401000C */  addiu      $at, $zero, 0xc
/* 36C48 80036048 1581015A */  bne        $t4, $at, L800365B4_371B4
/* 36C4C 8003604C 00000000 */   nop
/* 36C50 80036050 860D00AA */  lh         $t5, 0xaa($s0)
/* 36C54 80036054 2401FFE2 */  addiu      $at, $zero, -0x1e
/* 36C58 80036058 15A10156 */  bne        $t5, $at, L800365B4_371B4
/* 36C5C 8003605C 240E0010 */   addiu     $t6, $zero, 0x10
/* 36C60 80036060 3C014220 */  lui        $at, 0x4220
/* 36C64 80036064 44814000 */  mtc1       $at, $f8
/* 36C68 80036068 3C014100 */  lui        $at, 0x4100
/* 36C6C 8003606C 44815000 */  mtc1       $at, $f10
/* 36C70 80036070 8FAF0044 */  lw         $t7, 0x44($sp)
/* 36C74 80036074 A60E00D0 */  sh         $t6, 0xd0($s0)
/* 36C78 80036078 E6080120 */  swc1       $f8, 0x120($s0)
/* 36C7C 8003607C E60A0128 */  swc1       $f10, 0x128($s0)
/* 36C80 80036080 8DF80170 */  lw         $t8, 0x170($t7)
/* 36C84 80036084 97A4005A */  lhu        $a0, 0x5a($sp)
/* 36C88 80036088 A200009F */  sb         $zero, 0x9f($s0)
/* 36C8C 8003608C 0C00D74D */  jal        func_80035D34
/* 36C90 80036090 AE180178 */   sw        $t8, 0x178($s0)
/* 36C94 80036094 97A5005A */  lhu        $a1, 0x5a($sp)
/* 36C98 80036098 0C000DDE */  jal        func_80003778
/* 36C9C 8003609C 24040101 */   addiu     $a0, $zero, 0x101
/* 36CA0 800360A0 10000145 */  b          .L800365B8
/* 36CA4 800360A4 860400AE */   lh        $a0, 0xae($s0)
glabel L800360A8_36CA8
/* 36CA8 800360A8 3C02800C */  lui        $v0, %hi(D_800BE4FC)
/* 36CAC 800360AC 3C19800C */  lui        $t9, %hi(D_800BE530)
/* 36CB0 800360B0 9739E530 */  lhu        $t9, %lo(D_800BE530)($t9)
/* 36CB4 800360B4 9442E4FC */  lhu        $v0, %lo(D_800BE4FC)($v0)
/* 36CB8 800360B8 00003825 */  or         $a3, $zero, $zero
/* 36CBC 800360BC 00594024 */  and        $t0, $v0, $t9
/* 36CC0 800360C0 15000006 */  bnez       $t0, .L800360DC
/* 36CC4 800360C4 3C09800C */   lui       $t1, %hi(D_800BE534)
/* 36CC8 800360C8 9529E534 */  lhu        $t1, %lo(D_800BE534)($t1)
/* 36CCC 800360CC 3C013F80 */  lui        $at, 0x3f80
/* 36CD0 800360D0 00495024 */  and        $t2, $v0, $t1
/* 36CD4 800360D4 11400012 */  beqz       $t2, .L80036120
/* 36CD8 800360D8 00000000 */   nop
.L800360DC:
/* 36CDC 800360DC 860C00AE */  lh         $t4, 0xae($s0)
/* 36CE0 800360E0 860E00AA */  lh         $t6, 0xaa($s0)
/* 36CE4 800360E4 44808000 */  mtc1       $zero, $f16
/* 36CE8 800360E8 240B0020 */  addiu      $t3, $zero, 0x20
/* 36CEC 800360EC 97A5005A */  lhu        $a1, 0x5a($sp)
/* 36CF0 800360F0 258D0006 */  addiu      $t5, $t4, 6
/* 36CF4 800360F4 25CFFFFA */  addiu      $t7, $t6, -6
/* 36CF8 800360F8 A60B00D0 */  sh         $t3, 0xd0($s0)
/* 36CFC 800360FC A60D00AE */  sh         $t5, 0xae($s0)
/* 36D00 80036100 A60F00AA */  sh         $t7, 0xaa($s0)
/* 36D04 80036104 24040064 */  addiu      $a0, $zero, 0x64
/* 36D08 80036108 A7A70056 */  sh         $a3, 0x56($sp)
/* 36D0C 8003610C 0C000DB2 */  jal        func_800036C8
/* 36D10 80036110 E6100120 */   swc1      $f16, 0x120($s0)
/* 36D14 80036114 97A70056 */  lhu        $a3, 0x56($sp)
/* 36D18 80036118 1000001F */  b          .L80036198
/* 36D1C 8003611C 960200D0 */   lhu       $v0, 0xd0($s0)
.L80036120:
/* 36D20 80036120 C6120120 */  lwc1       $f18, 0x120($s0)
/* 36D24 80036124 44812000 */  mtc1       $at, $f4
/* 36D28 80036128 44805000 */  mtc1       $zero, $f10
/* 36D2C 8003612C 46049181 */  sub.s      $f6, $f18, $f4
/* 36D30 80036130 E6060120 */  swc1       $f6, 0x120($s0)
/* 36D34 80036134 C6080120 */  lwc1       $f8, 0x120($s0)
/* 36D38 80036138 00000000 */  nop
/* 36D3C 8003613C 460A403C */  c.lt.s     $f8, $f10
/* 36D40 80036140 00000000 */  nop
/* 36D44 80036144 45000013 */  bc1f       .L80036194
/* 36D48 80036148 00000000 */   nop
/* 36D4C 8003614C 8E180178 */  lw         $t8, 0x178($s0)
/* 36D50 80036150 00000000 */  nop
/* 36D54 80036154 27190005 */  addiu      $t9, $t8, 5
/* 36D58 80036158 2B21009C */  slti       $at, $t9, 0x9c
/* 36D5C 8003615C 14200003 */  bnez       $at, .L8003616C
/* 36D60 80036160 AE190178 */   sw        $t9, 0x178($s0)
/* 36D64 80036164 10000141 */  b          .L8003666C
/* 36D68 80036168 AE000080 */   sw        $zero, 0x80($s0)
.L8003616C:
/* 36D6C 8003616C 97A5005A */  lhu        $a1, 0x5a($sp)
/* 36D70 80036170 0C000DDE */  jal        func_80003778
/* 36D74 80036174 24040101 */   addiu     $a0, $zero, 0x101
/* 36D78 80036178 3C014220 */  lui        $at, 0x4220
/* 36D7C 8003617C 44818000 */  mtc1       $at, $f16
/* 36D80 80036180 3C014100 */  lui        $at, 0x4100
/* 36D84 80036184 44819000 */  mtc1       $at, $f18
/* 36D88 80036188 24070001 */  addiu      $a3, $zero, 1
/* 36D8C 8003618C E6100120 */  swc1       $f16, 0x120($s0)
/* 36D90 80036190 E6120128 */  swc1       $f18, 0x128($s0)
.L80036194:
/* 36D94 80036194 960200D0 */  lhu        $v0, 0xd0($s0)
.L80036198:
/* 36D98 80036198 A7A70056 */  sh         $a3, 0x56($sp)
glabel L8003619C_36D9C
/* 36D9C 8003619C 97A70056 */  lhu        $a3, 0x56($sp)
/* 36DA0 800361A0 24010020 */  addiu      $at, $zero, 0x20
/* 36DA4 800361A4 14410064 */  bne        $v0, $at, .L80036338
/* 36DA8 800361A8 3C03800C */   lui       $v1, %hi(D_800BE4F8)
/* 36DAC 800361AC 3C04800C */  lui        $a0, %hi(D_800BE530)
/* 36DB0 800361B0 9484E530 */  lhu        $a0, %lo(D_800BE530)($a0)
/* 36DB4 800361B4 9463E4F8 */  lhu        $v1, %lo(D_800BE4F8)($v1)
/* 36DB8 800361B8 00003825 */  or         $a3, $zero, $zero
/* 36DBC 800361BC 00644824 */  and        $t1, $v1, $a0
/* 36DC0 800361C0 15200006 */  bnez       $t1, .L800361DC
/* 36DC4 800361C4 00601025 */   or        $v0, $v1, $zero
/* 36DC8 800361C8 3C0A800C */  lui        $t2, %hi(D_800BE534)
/* 36DCC 800361CC 954AE534 */  lhu        $t2, %lo(D_800BE534)($t2)
/* 36DD0 800361D0 00000000 */  nop
/* 36DD4 800361D4 004A5824 */  and        $t3, $v0, $t2
/* 36DD8 800361D8 11600011 */  beqz       $t3, .L80036220
.L800361DC:
/* 36DDC 800361DC 3C0141C0 */   lui       $at, 0x41c0
/* 36DE0 800361E0 44812000 */  mtc1       $at, $f4
/* 36DE4 800361E4 C6000124 */  lwc1       $f0, 0x124($s0)
/* 36DE8 800361E8 3C013F80 */  lui        $at, 0x3f80
/* 36DEC 800361EC 4604003C */  c.lt.s     $f0, $f4
/* 36DF0 800361F0 00000000 */  nop
/* 36DF4 800361F4 45000007 */  bc1f       .L80036214
/* 36DF8 800361F8 00000000 */   nop
/* 36DFC 800361FC 44813000 */  mtc1       $at, $f6
/* 36E00 80036200 00000000 */  nop
/* 36E04 80036204 46060200 */  add.s      $f8, $f0, $f6
/* 36E08 80036208 E6080124 */  swc1       $f8, 0x124($s0)
/* 36E0C 8003620C C6000124 */  lwc1       $f0, 0x124($s0)
/* 36E10 80036210 00000000 */  nop
.L80036214:
/* 36E14 80036214 C6020120 */  lwc1       $f2, 0x120($s0)
/* 36E18 80036218 10000007 */  b          .L80036238
/* 36E1C 8003621C 3C0141C0 */   lui       $at, 0x41c0
.L80036220:
/* 36E20 80036220 44805000 */  mtc1       $zero, $f10
/* 36E24 80036224 C6020120 */  lwc1       $f2, 0x120($s0)
/* 36E28 80036228 E60A0124 */  swc1       $f10, 0x124($s0)
/* 36E2C 8003622C C6000124 */  lwc1       $f0, 0x124($s0)
/* 36E30 80036230 00000000 */  nop
/* 36E34 80036234 3C0141C0 */  lui        $at, 0x41c0
.L80036238:
/* 36E38 80036238 44818000 */  mtc1       $at, $f16
/* 36E3C 8003623C 44809000 */  mtc1       $zero, $f18
/* 36E40 80036240 4600803E */  c.le.s     $f16, $f0
/* 36E44 80036244 3C02800C */  lui        $v0, %hi(D_800BE4FC)
/* 36E48 80036248 45000003 */  bc1f       .L80036258
/* 36E4C 8003624C 3C013F80 */   lui       $at, 0x3f80
/* 36E50 80036250 10000003 */  b          .L80036260
/* 36E54 80036254 3062FFFF */   andi      $v0, $v1, 0xffff
.L80036258:
/* 36E58 80036258 9442E4FC */  lhu        $v0, %lo(D_800BE4FC)($v0)
/* 36E5C 8003625C 00000000 */  nop
.L80036260:
/* 36E60 80036260 4612103C */  c.lt.s     $f2, $f18
/* 36E64 80036264 3C0C800C */  lui        $t4, %hi(D_800BE534)
/* 36E68 80036268 4500002F */  bc1f       .L80036328
/* 36E6C 8003626C 00000000 */   nop
/* 36E70 80036270 958CE534 */  lhu        $t4, %lo(D_800BE534)($t4)
/* 36E74 80036274 00401825 */  or         $v1, $v0, $zero
/* 36E78 80036278 004C6824 */  and        $t5, $v0, $t4
/* 36E7C 8003627C 11A0000E */  beqz       $t5, .L800362B8
/* 36E80 80036280 00644024 */   and       $t0, $v1, $a0
/* 36E84 80036284 8E0E0178 */  lw         $t6, 0x178($s0)
/* 36E88 80036288 2419009B */  addiu      $t9, $zero, 0x9b
/* 36E8C 8003628C 25CF0005 */  addiu      $t7, $t6, 5
/* 36E90 80036290 29E1009C */  slti       $at, $t7, 0x9c
/* 36E94 80036294 14200003 */  bnez       $at, .L800362A4
/* 36E98 80036298 AE0F0178 */   sw        $t7, 0x178($s0)
/* 36E9C 8003629C 10000017 */  b          .L800362FC
/* 36EA0 800362A0 AE190178 */   sw        $t9, 0x178($s0)
.L800362A4:
/* 36EA4 800362A4 3C014100 */  lui        $at, 0x4100
/* 36EA8 800362A8 44812000 */  mtc1       $at, $f4
/* 36EAC 800362AC 24070001 */  addiu      $a3, $zero, 1
/* 36EB0 800362B0 10000012 */  b          .L800362FC
/* 36EB4 800362B4 E6040128 */   swc1      $f4, 0x128($s0)
.L800362B8:
/* 36EB8 800362B8 11000010 */  beqz       $t0, .L800362FC
/* 36EBC 800362BC 00000000 */   nop
/* 36EC0 800362C0 8E090178 */  lw         $t1, 0x178($s0)
/* 36EC4 800362C4 8FAB0044 */  lw         $t3, 0x44($sp)
/* 36EC8 800362C8 252AFFFB */  addiu      $t2, $t1, -5
/* 36ECC 800362CC AE0A0178 */  sw         $t2, 0x178($s0)
/* 36ED0 800362D0 8D620170 */  lw         $v0, 0x170($t3)
/* 36ED4 800362D4 00000000 */  nop
/* 36ED8 800362D8 0142082A */  slt        $at, $t2, $v0
/* 36EDC 800362DC 10200004 */  beqz       $at, .L800362F0
/* 36EE0 800362E0 3C01C100 */   lui       $at, 0xc100
/* 36EE4 800362E4 10000005 */  b          .L800362FC
/* 36EE8 800362E8 AE020178 */   sw        $v0, 0x178($s0)
/* 36EEC 800362EC 3C01C100 */  lui        $at, 0xc100
.L800362F0:
/* 36EF0 800362F0 44813000 */  mtc1       $at, $f6
/* 36EF4 800362F4 24070001 */  addiu      $a3, $zero, 1
/* 36EF8 800362F8 E6060128 */  swc1       $f6, 0x128($s0)
.L800362FC:
/* 36EFC 800362FC 10E0000E */  beqz       $a3, .L80036338
/* 36F00 80036300 3C014100 */   lui       $at, 0x4100
/* 36F04 80036304 44814000 */  mtc1       $at, $f8
/* 36F08 80036308 97A5005A */  lhu        $a1, 0x5a($sp)
/* 36F0C 8003630C 24040101 */  addiu      $a0, $zero, 0x101
/* 36F10 80036310 A7A70056 */  sh         $a3, 0x56($sp)
/* 36F14 80036314 0C000DDE */  jal        func_80003778
/* 36F18 80036318 E6080120 */   swc1      $f8, 0x120($s0)
/* 36F1C 8003631C 97A70056 */  lhu        $a3, 0x56($sp)
/* 36F20 80036320 10000005 */  b          .L80036338
/* 36F24 80036324 00000000 */   nop
.L80036328:
/* 36F28 80036328 44815000 */  mtc1       $at, $f10
/* 36F2C 8003632C 00000000 */  nop
/* 36F30 80036330 460A1401 */  sub.s      $f16, $f2, $f10
/* 36F34 80036334 E6100120 */  swc1       $f16, 0x120($s0)
.L80036338:
/* 36F38 80036338 10E00007 */  beqz       $a3, .L80036358
/* 36F3C 8003633C 240D0001 */   addiu     $t5, $zero, 1
/* 36F40 80036340 97A4005A */  lhu        $a0, 0x5a($sp)
/* 36F44 80036344 A200009F */  sb         $zero, 0x9f($s0)
/* 36F48 80036348 0C00D74D */  jal        func_80035D34
/* 36F4C 8003634C AE0D018C */   sw        $t5, 0x18c($s0)
/* 36F50 80036350 10000016 */  b          .L800363AC
/* 36F54 80036354 960200D0 */   lhu       $v0, 0xd0($s0)
.L80036358:
/* 36F58 80036358 444EF800 */  cfc1       $t6, $31
/* 36F5C 8003635C C6120128 */  lwc1       $f18, 0x128($s0)
/* 36F60 80036360 35C10003 */  ori        $at, $t6, 3
/* 36F64 80036364 38210002 */  xori       $at, $at, 2
/* 36F68 80036368 44C1F800 */  ctc1       $at, $31
/* 36F6C 8003636C 00002825 */  or         $a1, $zero, $zero
/* 36F70 80036370 46009124 */  cvt.w.s    $f4, $f18
/* 36F74 80036374 24060001 */  addiu      $a2, $zero, 1
/* 36F78 80036378 44042000 */  mfc1       $a0, $f4
/* 36F7C 8003637C 44CEF800 */  ctc1       $t6, $31
/* 36F80 80036380 0C00A607 */  jal        func_8002981C
/* 36F84 80036384 00000000 */   nop
/* 36F88 80036388 44823000 */  mtc1       $v0, $f6
/* 36F8C 8003638C 9204009F */  lbu        $a0, 0x9f($s0)
/* 36F90 80036390 46803220 */  cvt.s.w    $f8, $f6
/* 36F94 80036394 240500FF */  addiu      $a1, $zero, 0xff
/* 36F98 80036398 24060010 */  addiu      $a2, $zero, 0x10
/* 36F9C 8003639C 0C00A607 */  jal        func_8002981C
/* 36FA0 800363A0 E6080128 */   swc1      $f8, 0x128($s0)
/* 36FA4 800363A4 A202009F */  sb         $v0, 0x9f($s0)
/* 36FA8 800363A8 960200D0 */  lhu        $v0, 0xd0($s0)
.L800363AC:
/* 36FAC 800363AC 00000000 */  nop
glabel L800363B0_36FB0
/* 36FB0 800363B0 24030030 */  addiu      $v1, $zero, 0x30
/* 36FB4 800363B4 1462000E */  bne        $v1, $v0, .L800363F0
/* 36FB8 800363B8 3C013F80 */   lui       $at, 0x3f80
/* 36FBC 800363BC C60A0120 */  lwc1       $f10, 0x120($s0)
/* 36FC0 800363C0 44818000 */  mtc1       $at, $f16
/* 36FC4 800363C4 44803000 */  mtc1       $zero, $f6
/* 36FC8 800363C8 46105481 */  sub.s      $f18, $f10, $f16
/* 36FCC 800363CC E6120120 */  swc1       $f18, 0x120($s0)
/* 36FD0 800363D0 C6040120 */  lwc1       $f4, 0x120($s0)
/* 36FD4 800363D4 00000000 */  nop
/* 36FD8 800363D8 4606203C */  c.lt.s     $f4, $f6
/* 36FDC 800363DC 00000000 */  nop
/* 36FE0 800363E0 45000003 */  bc1f       .L800363F0
/* 36FE4 800363E4 00000000 */   nop
/* 36FE8 800363E8 100000A0 */  b          .L8003666C
/* 36FEC 800363EC AE000080 */   sw        $zero, 0x80($s0)
.L800363F0:
/* 36FF0 800363F0 960F00D0 */  lhu        $t7, 0xd0($s0)
/* 36FF4 800363F4 9607017A */  lhu        $a3, 0x17a($s0)
/* 36FF8 800363F8 146F0010 */  bne        $v1, $t7, .L8003643C
/* 36FFC 800363FC 24050060 */   addiu     $a1, $zero, 0x60
/* 37000 80036400 0007C040 */  sll        $t8, $a3, 1
/* 37004 80036404 3C19800D */  lui        $t9, %hi(D_800D22BC)
/* 37008 80036408 0338C821 */  addu       $t9, $t9, $t8
/* 3700C 8003640C 973922BC */  lhu        $t9, %lo(D_800D22BC)($t9)
/* 37010 80036410 3C09800C */  lui        $t1, %hi(D_800BE4E0)
/* 37014 80036414 33284000 */  andi       $t0, $t9, 0x4000
/* 37018 80036418 11000008 */  beqz       $t0, .L8003643C
/* 3701C 8003641C 00000000 */   nop
/* 37020 80036420 9529E4E0 */  lhu        $t1, %lo(D_800BE4E0)($t1)
/* 37024 80036424 2402001F */  addiu      $v0, $zero, 0x1f
/* 37028 80036428 312A0008 */  andi       $t2, $t1, 8
/* 3702C 8003642C 11400003 */  beqz       $t2, .L8003643C
/* 37030 80036430 00000000 */   nop
/* 37034 80036434 A202009C */  sb         $v0, 0x9c($s0)
/* 37038 80036438 A202009E */  sb         $v0, 0x9e($s0)
.L8003643C:
/* 3703C 8003643C 9204009C */  lbu        $a0, 0x9c($s0)
/* 37040 80036440 0C00A607 */  jal        func_8002981C
/* 37044 80036444 24060008 */   addiu     $a2, $zero, 8
/* 37048 80036448 9204009E */  lbu        $a0, 0x9e($s0)
/* 3704C 8003644C A202009C */  sb         $v0, 0x9c($s0)
/* 37050 80036450 24050060 */  addiu      $a1, $zero, 0x60
/* 37054 80036454 0C00A607 */  jal        func_8002981C
/* 37058 80036458 24060010 */   addiu     $a2, $zero, 0x10
/* 3705C 8003645C 960B00D0 */  lhu        $t3, 0xd0($s0)
/* 37060 80036460 24010030 */  addiu      $at, $zero, 0x30
/* 37064 80036464 15610007 */  bne        $t3, $at, .L80036484
/* 37068 80036468 A202009E */   sb        $v0, 0x9e($s0)
/* 3706C 8003646C 3C0C800C */  lui        $t4, %hi(D_800BE4E0)
/* 37070 80036470 958CE4E0 */  lhu        $t4, %lo(D_800BE4E0)($t4)
/* 37074 80036474 00000000 */  nop
/* 37078 80036478 318D0008 */  andi       $t5, $t4, 8
/* 3707C 8003647C 11A0004D */  beqz       $t5, L800365B4_371B4
/* 37080 80036480 00000000 */   nop
.L80036484:
/* 37084 80036484 8FAF0044 */  lw         $t7, 0x44($sp)
/* 37088 80036488 8E0E0178 */  lw         $t6, 0x178($s0)
/* 3708C 8003648C 8DF80170 */  lw         $t8, 0x170($t7)
/* 37090 80036490 24010005 */  addiu      $at, $zero, 5
/* 37094 80036494 01D83823 */  subu       $a3, $t6, $t8
/* 37098 80036498 00E1001A */  div        $zero, $a3, $at
/* 3709C 8003649C 3C0B800D */  lui        $t3, %hi(D_800D23FC)
/* 370A0 800364A0 256B23FC */  addiu      $t3, $t3, %lo(D_800D23FC)
/* 370A4 800364A4 97A4005A */  lhu        $a0, 0x5a($sp)
/* 370A8 800364A8 0000C812 */  mflo       $t9
/* 370AC 800364AC 00194040 */  sll        $t0, $t9, 1
/* 370B0 800364B0 3109FFFF */  andi       $t1, $t0, 0xffff
/* 370B4 800364B4 00095040 */  sll        $t2, $t1, 1
/* 370B8 800364B8 014B1021 */  addu       $v0, $t2, $t3
/* 370BC 800364BC 94460002 */  lhu        $a2, 2($v0)
/* 370C0 800364C0 94450000 */  lhu        $a1, ($v0)
/* 370C4 800364C4 10C00029 */  beqz       $a2, .L8003656C
/* 370C8 800364C8 00000000 */   nop
/* 370CC 800364CC 97A4005A */  lhu        $a0, 0x5a($sp)
/* 370D0 800364D0 0C00D711 */  jal        func_80035C44
/* 370D4 800364D4 A7A60052 */   sh        $a2, 0x52($sp)
/* 370D8 800364D8 97A60052 */  lhu        $a2, 0x52($sp)
/* 370DC 800364DC 1040000F */  beqz       $v0, .L8003651C
/* 370E0 800364E0 304CFFFF */   andi      $t4, $v0, 0xffff
/* 370E4 800364E4 000C6880 */  sll        $t5, $t4, 2
/* 370E8 800364E8 01AC6823 */  subu       $t5, $t5, $t4
/* 370EC 800364EC 000D6880 */  sll        $t5, $t5, 2
/* 370F0 800364F0 01AC6821 */  addu       $t5, $t5, $t4
/* 370F4 800364F4 000D6880 */  sll        $t5, $t5, 2
/* 370F8 800364F8 01AC6823 */  subu       $t5, $t5, $t4
/* 370FC 800364FC 3C0F800F */  lui        $t7, %hi(gActors)
/* 37100 80036500 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 37104 80036504 000D68C0 */  sll        $t5, $t5, 3
/* 37108 80036508 01AF1821 */  addu       $v1, $t5, $t7
/* 3710C 8003650C 846E0088 */  lh         $t6, 0x88($v1)
/* 37110 80036510 00000000 */  nop
/* 37114 80036514 25D80012 */  addiu      $t8, $t6, 0x12
/* 37118 80036518 A4780088 */  sh         $t8, 0x88($v1)
.L8003651C:
/* 3711C 8003651C 97A4005A */  lhu        $a0, 0x5a($sp)
/* 37120 80036520 0C00D711 */  jal        func_80035C44
/* 37124 80036524 30C5FFFF */   andi      $a1, $a2, 0xffff
/* 37128 80036528 10400022 */  beqz       $v0, L800365B4_371B4
/* 3712C 8003652C 3059FFFF */   andi      $t9, $v0, 0xffff
/* 37130 80036530 00194080 */  sll        $t0, $t9, 2
/* 37134 80036534 01194023 */  subu       $t0, $t0, $t9
/* 37138 80036538 00084080 */  sll        $t0, $t0, 2
/* 3713C 8003653C 01194021 */  addu       $t0, $t0, $t9
/* 37140 80036540 00084080 */  sll        $t0, $t0, 2
/* 37144 80036544 01194023 */  subu       $t0, $t0, $t9
/* 37148 80036548 3C09800F */  lui        $t1, %hi(gActors)
/* 3714C 8003654C 2529F510 */  addiu      $t1, $t1, %lo(gActors)
/* 37150 80036550 000840C0 */  sll        $t0, $t0, 3
/* 37154 80036554 01091821 */  addu       $v1, $t0, $t1
/* 37158 80036558 846A0088 */  lh         $t2, 0x88($v1)
/* 3715C 8003655C 00000000 */  nop
/* 37160 80036560 254B001A */  addiu      $t3, $t2, 0x1a
/* 37164 80036564 10000013 */  b          L800365B4_371B4
/* 37168 80036568 A46B0088 */   sh        $t3, 0x88($v1)
.L8003656C:
/* 3716C 8003656C 0C00D711 */  jal        func_80035C44
/* 37170 80036570 00000000 */   nop
/* 37174 80036574 1040000F */  beqz       $v0, L800365B4_371B4
/* 37178 80036578 304CFFFF */   andi      $t4, $v0, 0xffff
/* 3717C 8003657C 000C6880 */  sll        $t5, $t4, 2
/* 37180 80036580 01AC6823 */  subu       $t5, $t5, $t4
/* 37184 80036584 000D6880 */  sll        $t5, $t5, 2
/* 37188 80036588 01AC6821 */  addu       $t5, $t5, $t4
/* 3718C 8003658C 000D6880 */  sll        $t5, $t5, 2
/* 37190 80036590 01AC6823 */  subu       $t5, $t5, $t4
/* 37194 80036594 3C0F800F */  lui        $t7, %hi(gActors)
/* 37198 80036598 25EFF510 */  addiu      $t7, $t7, %lo(gActors)
/* 3719C 8003659C 000D68C0 */  sll        $t5, $t5, 3
/* 371A0 800365A0 01AF1821 */  addu       $v1, $t5, $t7
/* 371A4 800365A4 846E0088 */  lh         $t6, 0x88($v1)
/* 371A8 800365A8 00000000 */  nop
/* 371AC 800365AC 25D80016 */  addiu      $t8, $t6, 0x16
/* 371B0 800365B0 A4780088 */  sh         $t8, 0x88($v1)
glabel L800365B4_371B4
/* 371B4 800365B4 860400AE */  lh         $a0, 0xae($s0)
.L800365B8:
/* 371B8 800365B8 2405000C */  addiu      $a1, $zero, 0xc
/* 371BC 800365BC 0C00A607 */  jal        func_8002981C
/* 371C0 800365C0 24060001 */   addiu     $a2, $zero, 1
/* 371C4 800365C4 A60200AE */  sh         $v0, 0xae($s0)
/* 371C8 800365C8 861900AE */  lh         $t9, 0xae($s0)
/* 371CC 800365CC 860400AA */  lh         $a0, 0xaa($s0)
/* 371D0 800365D0 00194023 */  negu       $t0, $t9
/* 371D4 800365D4 A60800B0 */  sh         $t0, 0xb0($s0)
/* 371D8 800365D8 2405FFE2 */  addiu      $a1, $zero, -0x1e
/* 371DC 800365DC 0C00A607 */  jal        func_8002981C
/* 371E0 800365E0 24060002 */   addiu     $a2, $zero, 2
/* 371E4 800365E4 860500AE */  lh         $a1, 0xae($s0)
/* 371E8 800365E8 A60200AA */  sh         $v0, 0xaa($s0)
/* 371EC 800365EC 860300AA */  lh         $v1, 0xaa($s0)
/* 371F0 800365F0 860600B0 */  lh         $a2, 0xb0($s0)
/* 371F4 800365F4 24A5FFFF */  addiu      $a1, $a1, -1
/* 371F8 800365F8 00055400 */  sll        $t2, $a1, 0x10
/* 371FC 800365FC 00034823 */  negu       $t1, $v1
/* 37200 80036600 A60900AC */  sh         $t1, 0xac($s0)
/* 37204 80036604 000A2C03 */  sra        $a1, $t2, 0x10
/* 37208 80036608 24670001 */  addiu      $a3, $v1, 1
/* 3720C 8003660C 24C60001 */  addiu      $a2, $a2, 1
/* 37210 80036610 8E0A0090 */  lw         $t2, 0x90($s0)
/* 37214 80036614 861800AC */  lh         $t8, 0xac($s0)
/* 37218 80036618 00066400 */  sll        $t4, $a2, 0x10
/* 3721C 8003661C 00077C00 */  sll        $t7, $a3, 0x10
/* 37220 80036620 8E09008C */  lw         $t1, 0x8c($s0)
/* 37224 80036624 96040094 */  lhu        $a0, 0x94($s0)
/* 37228 80036628 8E080088 */  lw         $t0, 0x88($s0)
/* 3722C 8003662C 000F3C03 */  sra        $a3, $t7, 0x10
/* 37230 80036630 000C3403 */  sra        $a2, $t4, 0x10
/* 37234 80036634 240C0004 */  addiu      $t4, $zero, 4
/* 37238 80036638 240F0004 */  addiu      $t7, $zero, 4
/* 3723C 8003663C 240D0004 */  addiu      $t5, $zero, 4
/* 37240 80036640 254B0001 */  addiu      $t3, $t2, 1
/* 37244 80036644 2719FFEE */  addiu      $t9, $t8, -0x12
/* 37248 80036648 AFB90010 */  sw         $t9, 0x10($sp)
/* 3724C 8003664C AFAB001C */  sw         $t3, 0x1c($sp)
/* 37250 80036650 AFAD0024 */  sw         $t5, 0x24($sp)
/* 37254 80036654 AFAF0028 */  sw         $t7, 0x28($sp)
/* 37258 80036658 AFAC0020 */  sw         $t4, 0x20($sp)
/* 3725C 8003665C AFA90018 */  sw         $t1, 0x18($sp)
/* 37260 80036660 24842000 */  addiu      $a0, $a0, 0x2000
/* 37264 80036664 0C00F5A3 */  jal        func_8003D68C
/* 37268 80036668 AFA80014 */   sw        $t0, 0x14($sp)
.L8003666C:
/* 3726C 8003666C 8FBF003C */  lw         $ra, 0x3c($sp)
/* 37270 80036670 8FB00038 */  lw         $s0, 0x38($sp)
/* 37274 80036674 03E00008 */  jr         $ra
/* 37278 80036678 27BD0058 */   addiu     $sp, $sp, 0x58

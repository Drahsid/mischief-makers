glabel func_80023C00
/* 24800 80023C00 24020002 */  addiu      $v0, $zero, 2
/* 24804 80023C04 3C01800C */  lui        $at, %hi(D_800BE578)
/* 24808 80023C08 A422E578 */  sh         $v0, %lo(D_800BE578)($at)
/* 2480C 80023C0C 3C01800C */  lui        $at, %hi(D_800BE57C)
/* 24810 80023C10 03E00008 */  jr         $ra
/* 24814 80023C14 A422E57C */   sh        $v0, %lo(D_800BE57C)($at)

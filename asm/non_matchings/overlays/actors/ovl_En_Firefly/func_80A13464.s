glabel func_80A13464
/* 003F4 80A13464 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 003F8 80A13468 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 003FC 80A1346C 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 00400 80A13470 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.50
/* 00404 80A13474 3C1880A1 */  lui     $t8, %hi(func_80A13FF4)    ## $t8 = 80A10000
/* 00408 80A13478 240E7000 */  addiu   $t6, $zero, 0x7000         ## $t6 = 00007000
/* 0040C 80A1347C 240F0012 */  addiu   $t7, $zero, 0x0012         ## $t7 = 00000012
/* 00410 80A13480 27183FF4 */  addiu   $t8, $t8, %lo(func_80A13FF4) ## $t8 = 80A13FF4
/* 00414 80A13484 A48E0030 */  sh      $t6, 0x0030($a0)           ## 00000030
/* 00418 80A13488 A48F01BA */  sh      $t7, 0x01BA($a0)           ## 000001BA
/* 0041C 80A1348C AC9801B4 */  sw      $t8, 0x01B4($a0)           ## 000001B4
/* 00420 80A13490 E484018C */  swc1    $f4, 0x018C($a0)           ## 0000018C
/* 00424 80A13494 03E00008 */  jr      $ra                        
/* 00428 80A13498 E4860068 */  swc1    $f6, 0x0068($a0)           ## 00000068

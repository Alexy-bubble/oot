glabel func_80B23254
/* 00564 80B23254 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 00568 80B23258 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0056C 80B2325C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00570 80B23260 AFA40088 */  sw      $a0, 0x0088($sp)           
/* 00574 80B23264 AFA5008C */  sw      $a1, 0x008C($sp)           
/* 00578 80B23268 AFA60090 */  sw      $a2, 0x0090($sp)           
/* 0057C 80B2326C AFA70094 */  sw      $a3, 0x0094($sp)           
/* 00580 80B23270 84AE07A0 */  lh      $t6, 0x07A0($a1)           ## 000007A0
/* 00584 80B23274 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFBC
/* 00588 80B23278 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 0058C 80B2327C 000E7880 */  sll     $t7, $t6,  2               
/* 00590 80B23280 00AFC021 */  addu    $t8, $a1, $t7              
/* 00594 80B23284 8F190790 */  lw      $t9, 0x0790($t8)           ## 00000790
/* 00598 80B23288 8F29005C */  lw      $t1, 0x005C($t9)           ## 0000005C
/* 0059C 80B2328C AC890000 */  sw      $t1, 0x0000($a0)           ## FFFFFFBC
/* 005A0 80B23290 8F280060 */  lw      $t0, 0x0060($t9)           ## 00000060
/* 005A4 80B23294 AC880004 */  sw      $t0, 0x0004($a0)           ## FFFFFFC0
/* 005A8 80B23298 8F290064 */  lw      $t1, 0x0064($t9)           ## 00000064
/* 005AC 80B2329C AC890008 */  sw      $t1, 0x0008($a0)           ## FFFFFFC4
/* 005B0 80B232A0 8FA50088 */  lw      $a1, 0x0088($sp)           
/* 005B4 80B232A4 AFA7008C */  sw      $a3, 0x008C($sp)           
/* 005B8 80B232A8 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 005BC 80B232AC 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 005C0 80B232B0 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 005C4 80B232B4 00028400 */  sll     $s0, $v0, 16               
/* 005C8 80B232B8 00108403 */  sra     $s0, $s0, 16               
/* 005CC 80B232BC 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFBC
/* 005D0 80B232C0 0C01E027 */  jal     Math_Vec3f_Pitch
              
/* 005D4 80B232C4 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 005D8 80B232C8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 005DC 80B232CC 00025023 */  subu    $t2, $zero, $v0            
/* 005E0 80B232D0 00102400 */  sll     $a0, $s0, 16               
/* 005E4 80B232D4 A7AA0040 */  sh      $t2, 0x0040($sp)           
/* 005E8 80B232D8 00042403 */  sra     $a0, $a0, 16               
/* 005EC 80B232DC E7A0006C */  swc1    $f0, 0x006C($sp)           
/* 005F0 80B232E0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 005F4 80B232E4 E7A00064 */  swc1    $f0, 0x0064($sp)           
/* 005F8 80B232E8 E7A0003C */  swc1    $f0, 0x003C($sp)           
/* 005FC 80B232EC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00600 80B232F0 87A40040 */  lh      $a0, 0x0040($sp)           
/* 00604 80B232F4 C7A40094 */  lwc1    $f4, 0x0094($sp)           
/* 00608 80B232F8 C7A6003C */  lwc1    $f6, 0x003C($sp)           
/* 0060C 80B232FC 87A40040 */  lh      $a0, 0x0040($sp)           
/* 00610 80B23300 46062202 */  mul.s   $f8, $f4, $f6              
/* 00614 80B23304 00000000 */  nop
/* 00618 80B23308 46080282 */  mul.s   $f10, $f0, $f8             
/* 0061C 80B2330C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00620 80B23310 E7AA0070 */  swc1    $f10, 0x0070($sp)          
/* 00624 80B23314 C7B00094 */  lwc1    $f16, 0x0094($sp)          
/* 00628 80B23318 00102400 */  sll     $a0, $s0, 16               
/* 0062C 80B2331C 00042403 */  sra     $a0, $a0, 16               
/* 00630 80B23320 46100482 */  mul.s   $f18, $f0, $f16            
/* 00634 80B23324 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00638 80B23328 E7B20074 */  swc1    $f18, 0x0074($sp)          
/* 0063C 80B2332C E7A0003C */  swc1    $f0, 0x003C($sp)           
/* 00640 80B23330 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00644 80B23334 87A40040 */  lh      $a0, 0x0040($sp)           
/* 00648 80B23338 C7A40094 */  lwc1    $f4, 0x0094($sp)           
/* 0064C 80B2333C C7A6003C */  lwc1    $f6, 0x003C($sp)           
/* 00650 80B23340 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00654 80B23344 44811000 */  mtc1    $at, $f2                   ## $f2 = 10.00
/* 00658 80B23348 46062202 */  mul.s   $f8, $f4, $f6              
/* 0065C 80B2334C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00660 80B23350 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 00664 80B23354 8FAB0088 */  lw      $t3, 0x0088($sp)           
/* 00668 80B23358 3C0F80B2 */  lui     $t7, %hi(D_80B243C0)       ## $t7 = 80B20000
/* 0066C 80B2335C E7B00068 */  swc1    $f16, 0x0068($sp)          
/* 00670 80B23360 25EF43C0 */  addiu   $t7, $t7, %lo(D_80B243C0)  ## $t7 = 80B243C0
/* 00674 80B23364 46080282 */  mul.s   $f10, $f0, $f8             
/* 00678 80B23368 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 0067C 80B2336C 27B90058 */  addiu   $t9, $sp, 0x0058           ## $t9 = FFFFFFD0
/* 00680 80B23370 00102400 */  sll     $a0, $s0, 16               
/* 00684 80B23374 00042403 */  sra     $a0, $a0, 16               
/* 00688 80B23378 E7AA0078 */  swc1    $f10, 0x0078($sp)          
/* 0068C 80B2337C 856D001C */  lh      $t5, 0x001C($t3)           ## 0000001C
/* 00690 80B23380 000D70C0 */  sll     $t6, $t5,  3               
/* 00694 80B23384 01CF1021 */  addu    $v0, $t6, $t7              
/* 00698 80B23388 24580004 */  addiu   $t8, $v0, 0x0004           ## $t8 = 00000004
/* 0069C 80B2338C AFA20054 */  sw      $v0, 0x0054($sp)           
/* 006A0 80B23390 AFB80050 */  sw      $t8, 0x0050($sp)           
/* 006A4 80B23394 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 00000000
/* 006A8 80B23398 AF2A0000 */  sw      $t2, 0x0000($t9)           ## FFFFFFD0
/* 006AC 80B2339C 8D090004 */  lw      $t1, 0x0004($t0)           ## 00000004
/* 006B0 80B233A0 AF290004 */  sw      $t1, 0x0004($t9)           ## FFFFFFD4
/* 006B4 80B233A4 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 00000008
/* 006B8 80B233A8 AF2A0008 */  sw      $t2, 0x0008($t9)           ## FFFFFFD8
/* 006BC 80B233AC C7A40070 */  lwc1    $f4, 0x0070($sp)           
/* 006C0 80B233B0 C7B20058 */  lwc1    $f18, 0x0058($sp)          
/* 006C4 80B233B4 C7B00074 */  lwc1    $f16, 0x0074($sp)          
/* 006C8 80B233B8 46022182 */  mul.s   $f6, $f4, $f2              
/* 006CC 80B233BC C7AA005C */  lwc1    $f10, 0x005C($sp)          
/* 006D0 80B233C0 46028102 */  mul.s   $f4, $f16, $f2             
/* 006D4 80B233C4 46069201 */  sub.s   $f8, $f18, $f6             
/* 006D8 80B233C8 C7A60060 */  lwc1    $f6, 0x0060($sp)           
/* 006DC 80B233CC 46045481 */  sub.s   $f18, $f10, $f4            
/* 006E0 80B233D0 E7A80058 */  swc1    $f8, 0x0058($sp)           
/* 006E4 80B233D4 C7A80078 */  lwc1    $f8, 0x0078($sp)           
/* 006E8 80B233D8 E7B2005C */  swc1    $f18, 0x005C($sp)          
/* 006EC 80B233DC 46024402 */  mul.s   $f16, $f8, $f2             
/* 006F0 80B233E0 46103281 */  sub.s   $f10, $f6, $f16            
/* 006F4 80B233E4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 006F8 80B233E8 E7AA0060 */  swc1    $f10, 0x0060($sp)          
/* 006FC 80B233EC 8FA20090 */  lw      $v0, 0x0090($sp)           
/* 00700 80B233F0 3C0B80B2 */  lui     $t3, %hi(D_80B24388)       ## $t3 = 80B20000
/* 00704 80B233F4 256B4388 */  addiu   $t3, $t3, %lo(D_80B24388)  ## $t3 = 80B24388
/* 00708 80B233F8 00021080 */  sll     $v0, $v0,  2               
/* 0070C 80B233FC 004B1821 */  addu    $v1, $v0, $t3              
/* 00710 80B23400 C4640000 */  lwc1    $f4, 0x0000($v1)           ## 00000000
/* 00714 80B23404 C7A20098 */  lwc1    $f2, 0x0098($sp)           
/* 00718 80B23408 3C0180B2 */  lui     $at, %hi(D_80B243A4)       ## $at = 80B20000
/* 0071C 80B2340C 00220821 */  addu    $at, $at, $v0              
/* 00720 80B23410 46022482 */  mul.s   $f18, $f4, $f2             
/* 00724 80B23414 C42A43A4 */  lwc1    $f10, %lo(D_80B243A4)($at) 
/* 00728 80B23418 C7A60058 */  lwc1    $f6, 0x0058($sp)           
/* 0072C 80B2341C 00102400 */  sll     $a0, $s0, 16               
/* 00730 80B23420 00042403 */  sra     $a0, $a0, 16               
/* 00734 80B23424 AFA30038 */  sw      $v1, 0x0038($sp)           
/* 00738 80B23428 46120202 */  mul.s   $f8, $f0, $f18             
/* 0073C 80B2342C C7B2005C */  lwc1    $f18, 0x005C($sp)          
/* 00740 80B23430 46025102 */  mul.s   $f4, $f10, $f2             
/* 00744 80B23434 46064400 */  add.s   $f16, $f8, $f6             
/* 00748 80B23438 46122200 */  add.s   $f8, $f4, $f18             
/* 0074C 80B2343C E7B0007C */  swc1    $f16, 0x007C($sp)          
/* 00750 80B23440 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00754 80B23444 E7A80080 */  swc1    $f8, 0x0080($sp)           
/* 00758 80B23448 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 0075C 80B2344C C7A20098 */  lwc1    $f2, 0x0098($sp)           
/* 00760 80B23450 C7A60060 */  lwc1    $f6, 0x0060($sp)           
/* 00764 80B23454 C4700000 */  lwc1    $f16, 0x0000($v1)          ## 00000000
/* 00768 80B23458 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 0076C 80B2345C 44814000 */  mtc1    $at, $f8                   ## $f8 = 800.00
/* 00770 80B23460 46028282 */  mul.s   $f10, $f16, $f2            
/* 00774 80B23464 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00778 80B23468 8FAC0054 */  lw      $t4, 0x0054($sp)           
/* 0077C 80B2346C 8FAD0050 */  lw      $t5, 0x0050($sp)           
/* 00780 80B23470 8FA4008C */  lw      $a0, 0x008C($sp)           
/* 00784 80B23474 27A5007C */  addiu   $a1, $sp, 0x007C           ## $a1 = FFFFFFF4
/* 00788 80B23478 27A60070 */  addiu   $a2, $sp, 0x0070           ## $a2 = FFFFFFE8
/* 0078C 80B2347C 460A0102 */  mul.s   $f4, $f0, $f10             
/* 00790 80B23480 27A70064 */  addiu   $a3, $sp, 0x0064           ## $a3 = FFFFFFDC
/* 00794 80B23484 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00798 80B23488 46024402 */  mul.s   $f16, $f8, $f2             
/* 0079C 80B2348C AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 007A0 80B23490 46043481 */  sub.s   $f18, $f6, $f4             
/* 007A4 80B23494 44813000 */  mtc1    $at, $f6                   ## $f6 = 80.00
/* 007A8 80B23498 4600828D */  trunc.w.s $f10, $f16                 
/* 007AC 80B2349C 46023102 */  mul.s   $f4, $f6, $f2              
/* 007B0 80B234A0 E7B20084 */  swc1    $f18, 0x0084($sp)          
/* 007B4 80B234A4 440F5000 */  mfc1    $t7, $f10                  
/* 007B8 80B234A8 00000000 */  nop
/* 007BC 80B234AC AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 007C0 80B234B0 4600248D */  trunc.w.s $f18, $f4                  
/* 007C4 80B234B4 44199000 */  mfc1    $t9, $f18                  
/* 007C8 80B234B8 0C00A0A7 */  jal     func_8002829C              
/* 007CC 80B234BC AFB9001C */  sw      $t9, 0x001C($sp)           
/* 007D0 80B234C0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 007D4 80B234C4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 007D8 80B234C8 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 007DC 80B234CC 03E00008 */  jr      $ra                        
/* 007E0 80B234D0 00000000 */  nop


custom1to9.o:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	399020ef          	jal	12c94 <__call_exitprocs>
   10100:	7481b503          	ld	a0,1864(gp) # 24d60 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	2110f0ef          	jal	1fb24 <_exit>

0000000000010118 <main>:
   10118:	ff010113          	add	sp,sp,-16
   1011c:	00a00593          	li	a1,10
   10120:	00000513          	li	a0,0
   10124:	00113423          	sd	ra,8(sp)
   10128:	0f4000ef          	jal	1021c <load>
   1012c:	00050613          	mv	a2,a0
   10130:	00022537          	lui	a0,0x22
   10134:	00900593          	li	a1,9
   10138:	ce050513          	add	a0,a0,-800 # 21ce0 <__clzdi2+0x54>
   1013c:	2b8000ef          	jal	103f4 <printf>
   10140:	00813083          	ld	ra,8(sp)
   10144:	00000513          	li	a0,0
   10148:	01010113          	add	sp,sp,16
   1014c:	00008067          	ret

0000000000010150 <register_fini>:
   10150:	00000793          	li	a5,0
   10154:	00078863          	beqz	a5,10164 <register_fini+0x14>
   10158:	00013537          	lui	a0,0x13
   1015c:	47450513          	add	a0,a0,1140 # 13474 <__libc_fini_array>
   10160:	0510c06f          	j	1c9b0 <atexit>
   10164:	00008067          	ret

0000000000010168 <_start>:
   10168:	00014197          	auipc	gp,0x14
   1016c:	4b018193          	add	gp,gp,1200 # 24618 <__global_pointer$>
   10170:	77018513          	add	a0,gp,1904 # 24d88 <_PathLocale>
   10174:	00015617          	auipc	a2,0x15
   10178:	ca460613          	add	a2,a2,-860 # 24e18 <__BSS_END__>
   1017c:	40a60633          	sub	a2,a2,a0
   10180:	00000593          	li	a1,0
   10184:	154000ef          	jal	102d8 <memset>
   10188:	0000d517          	auipc	a0,0xd
   1018c:	82850513          	add	a0,a0,-2008 # 1c9b0 <atexit>
   10190:	00050863          	beqz	a0,101a0 <_start+0x38>
   10194:	00003517          	auipc	a0,0x3
   10198:	2e050513          	add	a0,a0,736 # 13474 <__libc_fini_array>
   1019c:	0150c0ef          	jal	1c9b0 <atexit>
   101a0:	09c000ef          	jal	1023c <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	add	a1,sp,8
   101ac:	00000613          	li	a2,0
   101b0:	f69ff0ef          	jal	10118 <main>
   101b4:	f35ff06f          	j	100e8 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	add	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	7a01c783          	lbu	a5,1952(gp) # 24db8 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bnez	a5,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	li	a5,0
   101d0:	00078a63          	beqz	a5,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	00024537          	lui	a0,0x24
   101d8:	c1050513          	add	a0,a0,-1008 # 23c10 <__EH_FRAME_BEGIN__>
   101dc:	00000097          	auipc	ra,0x0
   101e0:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101e4:	00100793          	li	a5,1
   101e8:	7af18023          	sb	a5,1952(gp) # 24db8 <completed.1>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	00013403          	ld	s0,0(sp)
   101f4:	01010113          	add	sp,sp,16
   101f8:	00008067          	ret

00000000000101fc <frame_dummy>:
   101fc:	00000793          	li	a5,0
   10200:	00078c63          	beqz	a5,10218 <frame_dummy+0x1c>
   10204:	00024537          	lui	a0,0x24
   10208:	7a818593          	add	a1,gp,1960 # 24dc0 <object.0>
   1020c:	c1050513          	add	a0,a0,-1008 # 23c10 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jr	zero # 0 <exit-0x100e8>
   10218:	00008067          	ret

000000000001021c <load>:
   1021c:	00050733          	add	a4,a0,zero
   10220:	00b50633          	add	a2,a0,a1
   10224:	000506b3          	add	a3,a0,zero

0000000000010228 <loop>:
   10228:	00e68733          	add	a4,a3,a4
   1022c:	00168693          	add	a3,a3,1
   10230:	fec6cce3          	blt	a3,a2,10228 <loop>
   10234:	00070533          	add	a0,a4,zero
   10238:	00008067          	ret

000000000001023c <__libc_init_array>:
   1023c:	fe010113          	add	sp,sp,-32
   10240:	00813823          	sd	s0,16(sp)
   10244:	000247b7          	lui	a5,0x24
   10248:	00024437          	lui	s0,0x24
   1024c:	01213023          	sd	s2,0(sp)
   10250:	c1478793          	add	a5,a5,-1004 # 23c14 <__preinit_array_end>
   10254:	c1440713          	add	a4,s0,-1004 # 23c14 <__preinit_array_end>
   10258:	00113c23          	sd	ra,24(sp)
   1025c:	00913423          	sd	s1,8(sp)
   10260:	40e78933          	sub	s2,a5,a4
   10264:	02e78263          	beq	a5,a4,10288 <__libc_init_array+0x4c>
   10268:	40395913          	sra	s2,s2,0x3
   1026c:	c1440413          	add	s0,s0,-1004
   10270:	00000493          	li	s1,0
   10274:	00043783          	ld	a5,0(s0)
   10278:	00148493          	add	s1,s1,1
   1027c:	00840413          	add	s0,s0,8
   10280:	000780e7          	jalr	a5
   10284:	ff24e8e3          	bltu	s1,s2,10274 <__libc_init_array+0x38>
   10288:	00024437          	lui	s0,0x24
   1028c:	000247b7          	lui	a5,0x24
   10290:	c2878793          	add	a5,a5,-984 # 23c28 <__do_global_dtors_aux_fini_array_entry>
   10294:	c1840713          	add	a4,s0,-1000 # 23c18 <__init_array_start>
   10298:	40e78933          	sub	s2,a5,a4
   1029c:	40395913          	sra	s2,s2,0x3
   102a0:	02e78063          	beq	a5,a4,102c0 <__libc_init_array+0x84>
   102a4:	c1840413          	add	s0,s0,-1000
   102a8:	00000493          	li	s1,0
   102ac:	00043783          	ld	a5,0(s0)
   102b0:	00148493          	add	s1,s1,1
   102b4:	00840413          	add	s0,s0,8
   102b8:	000780e7          	jalr	a5
   102bc:	ff24e8e3          	bltu	s1,s2,102ac <__libc_init_array+0x70>
   102c0:	01813083          	ld	ra,24(sp)
   102c4:	01013403          	ld	s0,16(sp)
   102c8:	00813483          	ld	s1,8(sp)
   102cc:	00013903          	ld	s2,0(sp)
   102d0:	02010113          	add	sp,sp,32
   102d4:	00008067          	ret

00000000000102d8 <memset>:
   102d8:	00f00313          	li	t1,15
   102dc:	00050713          	mv	a4,a0
   102e0:	02c37a63          	bgeu	t1,a2,10314 <memset+0x3c>
   102e4:	00f77793          	and	a5,a4,15
   102e8:	0a079063          	bnez	a5,10388 <memset+0xb0>
   102ec:	06059e63          	bnez	a1,10368 <memset+0x90>
   102f0:	ff067693          	and	a3,a2,-16
   102f4:	00f67613          	and	a2,a2,15
   102f8:	00e686b3          	add	a3,a3,a4
   102fc:	00b73023          	sd	a1,0(a4)
   10300:	00b73423          	sd	a1,8(a4)
   10304:	01070713          	add	a4,a4,16
   10308:	fed76ae3          	bltu	a4,a3,102fc <memset+0x24>
   1030c:	00061463          	bnez	a2,10314 <memset+0x3c>
   10310:	00008067          	ret
   10314:	40c306b3          	sub	a3,t1,a2
   10318:	00269693          	sll	a3,a3,0x2
   1031c:	00000297          	auipc	t0,0x0
   10320:	005686b3          	add	a3,a3,t0
   10324:	00c68067          	jr	12(a3)
   10328:	00b70723          	sb	a1,14(a4)
   1032c:	00b706a3          	sb	a1,13(a4)
   10330:	00b70623          	sb	a1,12(a4)
   10334:	00b705a3          	sb	a1,11(a4)
   10338:	00b70523          	sb	a1,10(a4)
   1033c:	00b704a3          	sb	a1,9(a4)
   10340:	00b70423          	sb	a1,8(a4)
   10344:	00b703a3          	sb	a1,7(a4)
   10348:	00b70323          	sb	a1,6(a4)
   1034c:	00b702a3          	sb	a1,5(a4)
   10350:	00b70223          	sb	a1,4(a4)
   10354:	00b701a3          	sb	a1,3(a4)
   10358:	00b70123          	sb	a1,2(a4)
   1035c:	00b700a3          	sb	a1,1(a4)
   10360:	00b70023          	sb	a1,0(a4)
   10364:	00008067          	ret
   10368:	0ff5f593          	zext.b	a1,a1
   1036c:	00859693          	sll	a3,a1,0x8
   10370:	00d5e5b3          	or	a1,a1,a3
   10374:	01059693          	sll	a3,a1,0x10
   10378:	00d5e5b3          	or	a1,a1,a3
   1037c:	02059693          	sll	a3,a1,0x20
   10380:	00d5e5b3          	or	a1,a1,a3
   10384:	f6dff06f          	j	102f0 <memset+0x18>
   10388:	00279693          	sll	a3,a5,0x2
   1038c:	00000297          	auipc	t0,0x0
   10390:	005686b3          	add	a3,a3,t0
   10394:	00008293          	mv	t0,ra
   10398:	f98680e7          	jalr	-104(a3)
   1039c:	00028093          	mv	ra,t0
   103a0:	ff078793          	add	a5,a5,-16
   103a4:	40f70733          	sub	a4,a4,a5
   103a8:	00f60633          	add	a2,a2,a5
   103ac:	f6c374e3          	bgeu	t1,a2,10314 <memset+0x3c>
   103b0:	f3dff06f          	j	102ec <memset+0x14>

00000000000103b4 <_printf_r>:
   103b4:	fb010113          	add	sp,sp,-80
   103b8:	02c13023          	sd	a2,32(sp)
   103bc:	02d13423          	sd	a3,40(sp)
   103c0:	02e13823          	sd	a4,48(sp)
   103c4:	02f13c23          	sd	a5,56(sp)
   103c8:	05013023          	sd	a6,64(sp)
   103cc:	05113423          	sd	a7,72(sp)
   103d0:	00058613          	mv	a2,a1
   103d4:	01053583          	ld	a1,16(a0)
   103d8:	02010693          	add	a3,sp,32
   103dc:	00113c23          	sd	ra,24(sp)
   103e0:	00d13423          	sd	a3,8(sp)
   103e4:	05c000ef          	jal	10440 <_vfprintf_r>
   103e8:	01813083          	ld	ra,24(sp)
   103ec:	05010113          	add	sp,sp,80
   103f0:	00008067          	ret

00000000000103f4 <printf>:
   103f4:	7581b303          	ld	t1,1880(gp) # 24d70 <_impure_ptr>
   103f8:	fa010113          	add	sp,sp,-96
   103fc:	02c13823          	sd	a2,48(sp)
   10400:	02d13c23          	sd	a3,56(sp)
   10404:	02b13423          	sd	a1,40(sp)
   10408:	04e13023          	sd	a4,64(sp)
   1040c:	04f13423          	sd	a5,72(sp)
   10410:	05013823          	sd	a6,80(sp)
   10414:	05113c23          	sd	a7,88(sp)
   10418:	01033583          	ld	a1,16(t1) # 10220 <load+0x4>
   1041c:	02810693          	add	a3,sp,40
   10420:	00050613          	mv	a2,a0
   10424:	00030513          	mv	a0,t1
   10428:	00113c23          	sd	ra,24(sp)
   1042c:	00d13423          	sd	a3,8(sp)
   10430:	010000ef          	jal	10440 <_vfprintf_r>
   10434:	01813083          	ld	ra,24(sp)
   10438:	06010113          	add	sp,sp,96
   1043c:	00008067          	ret

0000000000010440 <_vfprintf_r>:
   10440:	d9010113          	add	sp,sp,-624
   10444:	26113423          	sd	ra,616(sp)
   10448:	26813023          	sd	s0,608(sp)
   1044c:	25213823          	sd	s2,592(sp)
   10450:	00b13023          	sd	a1,0(sp)
   10454:	00060913          	mv	s2,a2
   10458:	02d13023          	sd	a3,32(sp)
   1045c:	24913c23          	sd	s1,600(sp)
   10460:	25313423          	sd	s3,584(sp)
   10464:	25413023          	sd	s4,576(sp)
   10468:	23513c23          	sd	s5,568(sp)
   1046c:	23613823          	sd	s6,560(sp)
   10470:	23713423          	sd	s7,552(sp)
   10474:	23813023          	sd	s8,544(sp)
   10478:	21913c23          	sd	s9,536(sp)
   1047c:	21a13823          	sd	s10,528(sp)
   10480:	21b13423          	sd	s11,520(sp)
   10484:	00050413          	mv	s0,a0
   10488:	04a13823          	sd	a0,80(sp)
   1048c:	2c8060ef          	jal	16754 <_localeconv_r>
   10490:	00053703          	ld	a4,0(a0)
   10494:	00070513          	mv	a0,a4
   10498:	06e13023          	sd	a4,96(sp)
   1049c:	001080ef          	jal	18c9c <strlen>
   104a0:	04a13c23          	sd	a0,88(sp)
   104a4:	0e013823          	sd	zero,240(sp)
   104a8:	0e013c23          	sd	zero,248(sp)
   104ac:	00040663          	beqz	s0,104b8 <_vfprintf_r+0x78>
   104b0:	05042703          	lw	a4,80(s0)
   104b4:	5e070a63          	beqz	a4,10aa8 <_vfprintf_r+0x668>
   104b8:	00013783          	ld	a5,0(sp)
   104bc:	01079703          	lh	a4,16(a5)
   104c0:	03271693          	sll	a3,a4,0x32
   104c4:	0206c663          	bltz	a3,104f0 <_vfprintf_r+0xb0>
   104c8:	0ac7a683          	lw	a3,172(a5)
   104cc:	00002637          	lui	a2,0x2
   104d0:	00c76733          	or	a4,a4,a2
   104d4:	ffffe637          	lui	a2,0xffffe
   104d8:	0107171b          	sllw	a4,a4,0x10
   104dc:	fff60613          	add	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd91e7>
   104e0:	4107571b          	sraw	a4,a4,0x10
   104e4:	00c6f6b3          	and	a3,a3,a2
   104e8:	00e79823          	sh	a4,16(a5)
   104ec:	0ad7a623          	sw	a3,172(a5)
   104f0:	00877693          	and	a3,a4,8
   104f4:	32068263          	beqz	a3,10818 <_vfprintf_r+0x3d8>
   104f8:	00013783          	ld	a5,0(sp)
   104fc:	0187b683          	ld	a3,24(a5)
   10500:	30068c63          	beqz	a3,10818 <_vfprintf_r+0x3d8>
   10504:	01a77713          	and	a4,a4,26
   10508:	00a00693          	li	a3,10
   1050c:	32d70a63          	beq	a4,a3,10840 <_vfprintf_r+0x400>
   10510:	18010793          	add	a5,sp,384
   10514:	00022737          	lui	a4,0x22
   10518:	00078313          	mv	t1,a5
   1051c:	10f13023          	sd	a5,256(sp)
   10520:	00090b13          	mv	s6,s2
   10524:	d6470793          	add	a5,a4,-668 # 21d64 <__clzdi2+0xd8>
   10528:	00022737          	lui	a4,0x22
   1052c:	02f13423          	sd	a5,40(sp)
   10530:	f6870793          	add	a5,a4,-152 # 21f68 <zeroes.0>
   10534:	000b4703          	lbu	a4,0(s6)
   10538:	10013823          	sd	zero,272(sp)
   1053c:	10012423          	sw	zero,264(sp)
   10540:	02013c23          	sd	zero,56(sp)
   10544:	06013423          	sd	zero,104(sp)
   10548:	06013823          	sd	zero,112(sp)
   1054c:	06013c23          	sd	zero,120(sp)
   10550:	08013023          	sd	zero,128(sp)
   10554:	08013423          	sd	zero,136(sp)
   10558:	00013823          	sd	zero,16(sp)
   1055c:	00f13423          	sd	a5,8(sp)
   10560:	05013983          	ld	s3,80(sp)
   10564:	00030413          	mv	s0,t1
   10568:	24070063          	beqz	a4,107a8 <_vfprintf_r+0x368>
   1056c:	000b0493          	mv	s1,s6
   10570:	02500693          	li	a3,37
   10574:	2ed70a63          	beq	a4,a3,10868 <_vfprintf_r+0x428>
   10578:	0014c703          	lbu	a4,1(s1)
   1057c:	00148493          	add	s1,s1,1
   10580:	fe071ae3          	bnez	a4,10574 <_vfprintf_r+0x134>
   10584:	4164893b          	subw	s2,s1,s6
   10588:	22090063          	beqz	s2,107a8 <_vfprintf_r+0x368>
   1058c:	11013d83          	ld	s11,272(sp)
   10590:	10812683          	lw	a3,264(sp)
   10594:	01643023          	sd	s6,0(s0)
   10598:	012d8733          	add	a4,s11,s2
   1059c:	0016861b          	addw	a2,a3,1
   105a0:	01243423          	sd	s2,8(s0)
   105a4:	10e13823          	sd	a4,272(sp)
   105a8:	10c12423          	sw	a2,264(sp)
   105ac:	00700713          	li	a4,7
   105b0:	01040413          	add	s0,s0,16
   105b4:	2cc74263          	blt	a4,a2,10878 <_vfprintf_r+0x438>
   105b8:	01013783          	ld	a5,16(sp)
   105bc:	0004c703          	lbu	a4,0(s1)
   105c0:	012787bb          	addw	a5,a5,s2
   105c4:	00f13823          	sd	a5,16(sp)
   105c8:	1e070063          	beqz	a4,107a8 <_vfprintf_r+0x368>
   105cc:	fff00313          	li	t1,-1
   105d0:	0014ce03          	lbu	t3,1(s1)
   105d4:	0c0107a3          	sb	zero,207(sp)
   105d8:	00148493          	add	s1,s1,1
   105dc:	00000a13          	li	s4,0
   105e0:	00000913          	li	s2,0
   105e4:	05a00b93          	li	s7,90
   105e8:	00030a93          	mv	s5,t1
   105ec:	00148493          	add	s1,s1,1
   105f0:	000e0c9b          	sext.w	s9,t3
   105f4:	fe0c879b          	addw	a5,s9,-32
   105f8:	0007871b          	sext.w	a4,a5
   105fc:	04ebec63          	bltu	s7,a4,10654 <_vfprintf_r+0x214>
   10600:	02079713          	sll	a4,a5,0x20
   10604:	01e75793          	srl	a5,a4,0x1e
   10608:	02813703          	ld	a4,40(sp)
   1060c:	00e787b3          	add	a5,a5,a4
   10610:	0007a783          	lw	a5,0(a5)
   10614:	00078067          	jr	a5
   10618:	00000a13          	li	s4,0
   1061c:	00900693          	li	a3,9
   10620:	0004c703          	lbu	a4,0(s1)
   10624:	002a179b          	sllw	a5,s4,0x2
   10628:	01478a3b          	addw	s4,a5,s4
   1062c:	fd0c8c9b          	addw	s9,s9,-48
   10630:	001a1a1b          	sllw	s4,s4,0x1
   10634:	fd07079b          	addw	a5,a4,-48
   10638:	014c8a3b          	addw	s4,s9,s4
   1063c:	00148493          	add	s1,s1,1
   10640:	00070c9b          	sext.w	s9,a4
   10644:	fcf6fee3          	bgeu	a3,a5,10620 <_vfprintf_r+0x1e0>
   10648:	fe0c879b          	addw	a5,s9,-32
   1064c:	0007871b          	sext.w	a4,a5
   10650:	faebf8e3          	bgeu	s7,a4,10600 <_vfprintf_r+0x1c0>
   10654:	140c8a63          	beqz	s9,107a8 <_vfprintf_r+0x368>
   10658:	11910c23          	sb	s9,280(sp)
   1065c:	0c0107a3          	sb	zero,207(sp)
   10660:	00100c13          	li	s8,1
   10664:	00100d13          	li	s10,1
   10668:	11810b13          	add	s6,sp,280
   1066c:	00013c23          	sd	zero,24(sp)
   10670:	00000313          	li	t1,0
   10674:	04013423          	sd	zero,72(sp)
   10678:	04013023          	sd	zero,64(sp)
   1067c:	02013823          	sd	zero,48(sp)
   10680:	00297b93          	and	s7,s2,2
   10684:	000b8463          	beqz	s7,1068c <_vfprintf_r+0x24c>
   10688:	002c0c1b          	addw	s8,s8,2
   1068c:	08497a93          	and	s5,s2,132
   10690:	000a9663          	bnez	s5,1069c <_vfprintf_r+0x25c>
   10694:	418a073b          	subw	a4,s4,s8
   10698:	34e046e3          	bgtz	a4,111e4 <_vfprintf_r+0xda4>
   1069c:	0cf14703          	lbu	a4,207(sp)
   106a0:	11013d83          	ld	s11,272(sp)
   106a4:	02070c63          	beqz	a4,106dc <_vfprintf_r+0x29c>
   106a8:	10812603          	lw	a2,264(sp)
   106ac:	0cf10593          	add	a1,sp,207
   106b0:	00b43023          	sd	a1,0(s0)
   106b4:	0016061b          	addw	a2,a2,1
   106b8:	00100593          	li	a1,1
   106bc:	001d8d93          	add	s11,s11,1
   106c0:	00b43423          	sd	a1,8(s0)
   106c4:	10c12423          	sw	a2,264(sp)
   106c8:	0006059b          	sext.w	a1,a2
   106cc:	11b13823          	sd	s11,272(sp)
   106d0:	00700613          	li	a2,7
   106d4:	01040413          	add	s0,s0,16
   106d8:	2ab64463          	blt	a2,a1,10980 <_vfprintf_r+0x540>
   106dc:	020b8c63          	beqz	s7,10714 <_vfprintf_r+0x2d4>
   106e0:	10812603          	lw	a2,264(sp)
   106e4:	00200593          	li	a1,2
   106e8:	002d8d93          	add	s11,s11,2
   106ec:	0016061b          	addw	a2,a2,1
   106f0:	0d010793          	add	a5,sp,208
   106f4:	00b43423          	sd	a1,8(s0)
   106f8:	00f43023          	sd	a5,0(s0)
   106fc:	0006059b          	sext.w	a1,a2
   10700:	10c12423          	sw	a2,264(sp)
   10704:	11b13823          	sd	s11,272(sp)
   10708:	00700613          	li	a2,7
   1070c:	01040413          	add	s0,s0,16
   10710:	3eb64ae3          	blt	a2,a1,11304 <_vfprintf_r+0xec4>
   10714:	08000613          	li	a2,128
   10718:	0eca80e3          	beq	s5,a2,10ff8 <_vfprintf_r+0xbb8>
   1071c:	41a30bbb          	subw	s7,t1,s10
   10720:	1d7040e3          	bgtz	s7,110e0 <_vfprintf_r+0xca0>
   10724:	10097613          	and	a2,s2,256
   10728:	70061863          	bnez	a2,10e38 <_vfprintf_r+0x9f8>
   1072c:	10812603          	lw	a2,264(sp)
   10730:	01bd0733          	add	a4,s10,s11
   10734:	01643023          	sd	s6,0(s0)
   10738:	0016069b          	addw	a3,a2,1
   1073c:	01a43423          	sd	s10,8(s0)
   10740:	10e13823          	sd	a4,272(sp)
   10744:	10d12423          	sw	a3,264(sp)
   10748:	00700793          	li	a5,7
   1074c:	32d7ce63          	blt	a5,a3,10a88 <_vfprintf_r+0x648>
   10750:	01040413          	add	s0,s0,16
   10754:	00497913          	and	s2,s2,4
   10758:	00090663          	beqz	s2,10764 <_vfprintf_r+0x324>
   1075c:	418a093b          	subw	s2,s4,s8
   10760:	3d2046e3          	bgtz	s2,1132c <_vfprintf_r+0xeec>
   10764:	000a0793          	mv	a5,s4
   10768:	018a5463          	bge	s4,s8,10770 <_vfprintf_r+0x330>
   1076c:	000c0793          	mv	a5,s8
   10770:	01013683          	ld	a3,16(sp)
   10774:	00d787bb          	addw	a5,a5,a3
   10778:	00f13823          	sd	a5,16(sp)
   1077c:	240710e3          	bnez	a4,111bc <_vfprintf_r+0xd7c>
   10780:	01813783          	ld	a5,24(sp)
   10784:	10012423          	sw	zero,264(sp)
   10788:	00078863          	beqz	a5,10798 <_vfprintf_r+0x358>
   1078c:	01813583          	ld	a1,24(sp)
   10790:	00098513          	mv	a0,s3
   10794:	679020ef          	jal	1360c <_free_r>
   10798:	18010413          	add	s0,sp,384
   1079c:	00048b13          	mv	s6,s1
   107a0:	000b4703          	lbu	a4,0(s6)
   107a4:	dc0714e3          	bnez	a4,1056c <_vfprintf_r+0x12c>
   107a8:	11013783          	ld	a5,272(sp)
   107ac:	00078463          	beqz	a5,107b4 <_vfprintf_r+0x374>
   107b0:	2190106f          	j	121c8 <_vfprintf_r+0x1d88>
   107b4:	00013783          	ld	a5,0(sp)
   107b8:	0107d783          	lhu	a5,16(a5)
   107bc:	0407f793          	and	a5,a5,64
   107c0:	00078463          	beqz	a5,107c8 <_vfprintf_r+0x388>
   107c4:	7ed0106f          	j	127b0 <_vfprintf_r+0x2370>
   107c8:	26813083          	ld	ra,616(sp)
   107cc:	26013403          	ld	s0,608(sp)
   107d0:	01013503          	ld	a0,16(sp)
   107d4:	25813483          	ld	s1,600(sp)
   107d8:	25013903          	ld	s2,592(sp)
   107dc:	24813983          	ld	s3,584(sp)
   107e0:	24013a03          	ld	s4,576(sp)
   107e4:	23813a83          	ld	s5,568(sp)
   107e8:	23013b03          	ld	s6,560(sp)
   107ec:	22813b83          	ld	s7,552(sp)
   107f0:	22013c03          	ld	s8,544(sp)
   107f4:	21813c83          	ld	s9,536(sp)
   107f8:	21013d03          	ld	s10,528(sp)
   107fc:	20813d83          	ld	s11,520(sp)
   10800:	27010113          	add	sp,sp,624
   10804:	00008067          	ret
   10808:	01096913          	or	s2,s2,16
   1080c:	0004ce03          	lbu	t3,0(s1)
   10810:	0009091b          	sext.w	s2,s2
   10814:	dd9ff06f          	j	105ec <_vfprintf_r+0x1ac>
   10818:	00013583          	ld	a1,0(sp)
   1081c:	05013503          	ld	a0,80(sp)
   10820:	334020ef          	jal	12b54 <__swsetup_r>
   10824:	00050463          	beqz	a0,1082c <_vfprintf_r+0x3ec>
   10828:	7890106f          	j	127b0 <_vfprintf_r+0x2370>
   1082c:	00013783          	ld	a5,0(sp)
   10830:	00a00693          	li	a3,10
   10834:	01079703          	lh	a4,16(a5)
   10838:	01a77713          	and	a4,a4,26
   1083c:	ccd71ae3          	bne	a4,a3,10510 <_vfprintf_r+0xd0>
   10840:	00013783          	ld	a5,0(sp)
   10844:	01279703          	lh	a4,18(a5)
   10848:	cc0744e3          	bltz	a4,10510 <_vfprintf_r+0xd0>
   1084c:	02013683          	ld	a3,32(sp)
   10850:	05013503          	ld	a0,80(sp)
   10854:	00090613          	mv	a2,s2
   10858:	00078593          	mv	a1,a5
   1085c:	22c020ef          	jal	12a88 <__sbprintf>
   10860:	00a13823          	sd	a0,16(sp)
   10864:	f65ff06f          	j	107c8 <_vfprintf_r+0x388>
   10868:	4164893b          	subw	s2,s1,s6
   1086c:	d20910e3          	bnez	s2,1058c <_vfprintf_r+0x14c>
   10870:	0004c703          	lbu	a4,0(s1)
   10874:	d55ff06f          	j	105c8 <_vfprintf_r+0x188>
   10878:	00013583          	ld	a1,0(sp)
   1087c:	10010613          	add	a2,sp,256
   10880:	00098513          	mv	a0,s3
   10884:	44d0a0ef          	jal	1b4d0 <__sprint_r>
   10888:	f20516e3          	bnez	a0,107b4 <_vfprintf_r+0x374>
   1088c:	18010413          	add	s0,sp,384
   10890:	d29ff06f          	j	105b8 <_vfprintf_r+0x178>
   10894:	00897713          	and	a4,s2,8
   10898:	000a8313          	mv	t1,s5
   1089c:	6a071ce3          	bnez	a4,11754 <_vfprintf_r+0x1314>
   108a0:	02013783          	ld	a5,32(sp)
   108a4:	01513c23          	sd	s5,24(sp)
   108a8:	0007b503          	ld	a0,0(a5)
   108ac:	00878a93          	add	s5,a5,8
   108b0:	03513023          	sd	s5,32(sp)
   108b4:	004110ef          	jal	218b8 <__extenddftf2>
   108b8:	01813303          	ld	t1,24(sp)
   108bc:	00050713          	mv	a4,a0
   108c0:	0f010513          	add	a0,sp,240
   108c4:	00613c23          	sd	t1,24(sp)
   108c8:	0ee13823          	sd	a4,240(sp)
   108cc:	0eb13c23          	sd	a1,248(sp)
   108d0:	615050ef          	jal	166e4 <_ldcheck>
   108d4:	0ca12c23          	sw	a0,216(sp)
   108d8:	00200713          	li	a4,2
   108dc:	01813303          	ld	t1,24(sp)
   108e0:	00e51463          	bne	a0,a4,108e8 <_vfprintf_r+0x4a8>
   108e4:	28c0106f          	j	11b70 <_vfprintf_r+0x1730>
   108e8:	00100713          	li	a4,1
   108ec:	00e51463          	bne	a0,a4,108f4 <_vfprintf_r+0x4b4>
   108f0:	3c40106f          	j	11cb4 <_vfprintf_r+0x1874>
   108f4:	06100713          	li	a4,97
   108f8:	00ec9463          	bne	s9,a4,10900 <_vfprintf_r+0x4c0>
   108fc:	4c90106f          	j	125c4 <_vfprintf_r+0x2184>
   10900:	04100713          	li	a4,65
   10904:	00ec9463          	bne	s9,a4,1090c <_vfprintf_r+0x4cc>
   10908:	1010106f          	j	12208 <_vfprintf_r+0x1dc8>
   1090c:	fff00713          	li	a4,-1
   10910:	00e31463          	bne	t1,a4,10918 <_vfprintf_r+0x4d8>
   10914:	7f10106f          	j	12904 <_vfprintf_r+0x24c4>
   10918:	fdfcf713          	and	a4,s9,-33
   1091c:	04700693          	li	a3,71
   10920:	00d71463          	bne	a4,a3,10928 <_vfprintf_r+0x4e8>
   10924:	7d10106f          	j	128f4 <_vfprintf_r+0x24b4>
   10928:	10096713          	or	a4,s2,256
   1092c:	0f813c03          	ld	s8,248(sp)
   10930:	0007079b          	sext.w	a5,a4
   10934:	08f13823          	sd	a5,144(sp)
   10938:	05213023          	sd	s2,64(sp)
   1093c:	0f013b83          	ld	s7,240(sp)
   10940:	000c5463          	bgez	s8,10948 <_vfprintf_r+0x508>
   10944:	4190106f          	j	1255c <_vfprintf_r+0x211c>
   10948:	08013c23          	sd	zero,152(sp)
   1094c:	00013c23          	sd	zero,24(sp)
   10950:	fbfc871b          	addw	a4,s9,-65
   10954:	0007061b          	sext.w	a2,a4
   10958:	02500693          	li	a3,37
   1095c:	00c6f463          	bgeu	a3,a2,10964 <_vfprintf_r+0x524>
   10960:	5e80106f          	j	11f48 <_vfprintf_r+0x1b08>
   10964:	02071693          	sll	a3,a4,0x20
   10968:	01e6d713          	srl	a4,a3,0x1e
   1096c:	000226b7          	lui	a3,0x22
   10970:	ed068693          	add	a3,a3,-304 # 21ed0 <__clzdi2+0x244>
   10974:	00d70733          	add	a4,a4,a3
   10978:	00072703          	lw	a4,0(a4)
   1097c:	00070067          	jr	a4
   10980:	00013583          	ld	a1,0(sp)
   10984:	10010613          	add	a2,sp,256
   10988:	00098513          	mv	a0,s3
   1098c:	08613823          	sd	t1,144(sp)
   10990:	3410a0ef          	jal	1b4d0 <__sprint_r>
   10994:	02051ee3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   10998:	11013d83          	ld	s11,272(sp)
   1099c:	09013303          	ld	t1,144(sp)
   109a0:	18010413          	add	s0,sp,384
   109a4:	d39ff06f          	j	106dc <_vfprintf_r+0x29c>
   109a8:	03813783          	ld	a5,56(sp)
   109ac:	00100693          	li	a3,1
   109b0:	01040c93          	add	s9,s0,16
   109b4:	3af6dae3          	bge	a3,a5,11568 <_vfprintf_r+0x1128>
   109b8:	10812603          	lw	a2,264(sp)
   109bc:	00100693          	li	a3,1
   109c0:	001d8713          	add	a4,s11,1
   109c4:	0016061b          	addw	a2,a2,1
   109c8:	00d43423          	sd	a3,8(s0)
   109cc:	10c12423          	sw	a2,264(sp)
   109d0:	0006069b          	sext.w	a3,a2
   109d4:	01643023          	sd	s6,0(s0)
   109d8:	10e13823          	sd	a4,272(sp)
   109dc:	00700613          	li	a2,7
   109e0:	76d64ae3          	blt	a2,a3,11954 <_vfprintf_r+0x1514>
   109e4:	05813783          	ld	a5,88(sp)
   109e8:	0016841b          	addw	s0,a3,1
   109ec:	10812423          	sw	s0,264(sp)
   109f0:	00e78d33          	add	s10,a5,a4
   109f4:	06013703          	ld	a4,96(sp)
   109f8:	00fcb423          	sd	a5,8(s9)
   109fc:	11a13823          	sd	s10,272(sp)
   10a00:	00ecb023          	sd	a4,0(s9)
   10a04:	00700713          	li	a4,7
   10a08:	010c8c93          	add	s9,s9,16
   10a0c:	768746e3          	blt	a4,s0,11978 <_vfprintf_r+0x1538>
   10a10:	0f013503          	ld	a0,240(sp)
   10a14:	0f813583          	ld	a1,248(sp)
   10a18:	00000613          	li	a2,0
   10a1c:	00000693          	li	a3,0
   10a20:	2ed0f0ef          	jal	2050c <__eqtf2>
   10a24:	03813783          	ld	a5,56(sp)
   10a28:	fff78a9b          	addw	s5,a5,-1
   10a2c:	380508e3          	beqz	a0,115bc <_vfprintf_r+0x117c>
   10a30:	001b0793          	add	a5,s6,1
   10a34:	0014041b          	addw	s0,s0,1
   10a38:	015d0d33          	add	s10,s10,s5
   10a3c:	00fcb023          	sd	a5,0(s9)
   10a40:	015cb423          	sd	s5,8(s9)
   10a44:	11a13823          	sd	s10,272(sp)
   10a48:	10812423          	sw	s0,264(sp)
   10a4c:	00700793          	li	a5,7
   10a50:	3487c4e3          	blt	a5,s0,11598 <_vfprintf_r+0x1158>
   10a54:	010c8c93          	add	s9,s9,16
   10a58:	07013683          	ld	a3,112(sp)
   10a5c:	0014041b          	addw	s0,s0,1
   10a60:	0e010793          	add	a5,sp,224
   10a64:	01a68733          	add	a4,a3,s10
   10a68:	00fcb023          	sd	a5,0(s9)
   10a6c:	00dcb423          	sd	a3,8(s9)
   10a70:	10812423          	sw	s0,264(sp)
   10a74:	0004069b          	sext.w	a3,s0
   10a78:	10e13823          	sd	a4,272(sp)
   10a7c:	00700793          	li	a5,7
   10a80:	010c8413          	add	s0,s9,16
   10a84:	ccd7d8e3          	bge	a5,a3,10754 <_vfprintf_r+0x314>
   10a88:	00013583          	ld	a1,0(sp)
   10a8c:	10010613          	add	a2,sp,256
   10a90:	00098513          	mv	a0,s3
   10a94:	23d0a0ef          	jal	1b4d0 <__sprint_r>
   10a98:	72051c63          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   10a9c:	11013703          	ld	a4,272(sp)
   10aa0:	18010413          	add	s0,sp,384
   10aa4:	cb1ff06f          	j	10754 <_vfprintf_r+0x314>
   10aa8:	05013503          	ld	a0,80(sp)
   10aac:	189020ef          	jal	13434 <__sinit>
   10ab0:	a09ff06f          	j	104b8 <_vfprintf_r+0x78>
   10ab4:	02013703          	ld	a4,32(sp)
   10ab8:	0c0107a3          	sb	zero,207(sp)
   10abc:	00100c13          	li	s8,1
   10ac0:	00072783          	lw	a5,0(a4)
   10ac4:	00870713          	add	a4,a4,8
   10ac8:	02e13023          	sd	a4,32(sp)
   10acc:	10f10c23          	sb	a5,280(sp)
   10ad0:	00100d13          	li	s10,1
   10ad4:	11810b13          	add	s6,sp,280
   10ad8:	b95ff06f          	j	1066c <_vfprintf_r+0x22c>
   10adc:	02013783          	ld	a5,32(sp)
   10ae0:	0c0107a3          	sb	zero,207(sp)
   10ae4:	000a8313          	mv	t1,s5
   10ae8:	0007bb03          	ld	s6,0(a5)
   10aec:	00878a93          	add	s5,a5,8
   10af0:	5a0b0ae3          	beqz	s6,118a4 <_vfprintf_r+0x1464>
   10af4:	fff00713          	li	a4,-1
   10af8:	00e31463          	bne	t1,a4,10b00 <_vfprintf_r+0x6c0>
   10afc:	1300106f          	j	11c2c <_vfprintf_r+0x17ec>
   10b00:	00030613          	mv	a2,t1
   10b04:	00000593          	li	a1,0
   10b08:	000b0513          	mv	a0,s6
   10b0c:	02613023          	sd	t1,32(sp)
   10b10:	009060ef          	jal	17318 <memchr>
   10b14:	00a13c23          	sd	a0,24(sp)
   10b18:	02013303          	ld	t1,32(sp)
   10b1c:	00051463          	bnez	a0,10b24 <_vfprintf_r+0x6e4>
   10b20:	3310106f          	j	12650 <_vfprintf_r+0x2210>
   10b24:	01813783          	ld	a5,24(sp)
   10b28:	41678d3b          	subw	s10,a5,s6
   10b2c:	0cf14703          	lbu	a4,207(sp)
   10b30:	fffd4813          	not	a6,s10
   10b34:	43f85813          	sra	a6,a6,0x3f
   10b38:	03513023          	sd	s5,32(sp)
   10b3c:	00013c23          	sd	zero,24(sp)
   10b40:	04013423          	sd	zero,72(sp)
   10b44:	04013023          	sd	zero,64(sp)
   10b48:	02013823          	sd	zero,48(sp)
   10b4c:	01a87c33          	and	s8,a6,s10
   10b50:	00000313          	li	t1,0
   10b54:	b20706e3          	beqz	a4,10680 <_vfprintf_r+0x240>
   10b58:	001c0c1b          	addw	s8,s8,1
   10b5c:	b25ff06f          	j	10680 <_vfprintf_r+0x240>
   10b60:	02013783          	ld	a5,32(sp)
   10b64:	0007aa03          	lw	s4,0(a5)
   10b68:	00878793          	add	a5,a5,8
   10b6c:	3a0a52e3          	bgez	s4,11710 <_vfprintf_r+0x12d0>
   10b70:	41400a3b          	negw	s4,s4
   10b74:	02f13023          	sd	a5,32(sp)
   10b78:	00496913          	or	s2,s2,4
   10b7c:	0004ce03          	lbu	t3,0(s1)
   10b80:	0009091b          	sext.w	s2,s2
   10b84:	a69ff06f          	j	105ec <_vfprintf_r+0x1ac>
   10b88:	02b00793          	li	a5,43
   10b8c:	0004ce03          	lbu	t3,0(s1)
   10b90:	0cf107a3          	sb	a5,207(sp)
   10b94:	a59ff06f          	j	105ec <_vfprintf_r+0x1ac>
   10b98:	08096913          	or	s2,s2,128
   10b9c:	0004ce03          	lbu	t3,0(s1)
   10ba0:	0009091b          	sext.w	s2,s2
   10ba4:	a49ff06f          	j	105ec <_vfprintf_r+0x1ac>
   10ba8:	0004cc83          	lbu	s9,0(s1)
   10bac:	02a00693          	li	a3,42
   10bb0:	00148793          	add	a5,s1,1
   10bb4:	00dc9463          	bne	s9,a3,10bbc <_vfprintf_r+0x77c>
   10bb8:	6610106f          	j	12a18 <_vfprintf_r+0x25d8>
   10bbc:	fd0c871b          	addw	a4,s9,-48
   10bc0:	00900613          	li	a2,9
   10bc4:	00078493          	mv	s1,a5
   10bc8:	00000a93          	li	s5,0
   10bcc:	00900693          	li	a3,9
   10bd0:	a2e662e3          	bltu	a2,a4,105f4 <_vfprintf_r+0x1b4>
   10bd4:	0004cc83          	lbu	s9,0(s1)
   10bd8:	002a979b          	sllw	a5,s5,0x2
   10bdc:	0157833b          	addw	t1,a5,s5
   10be0:	0013131b          	sllw	t1,t1,0x1
   10be4:	00e30abb          	addw	s5,t1,a4
   10be8:	fd0c871b          	addw	a4,s9,-48
   10bec:	00148493          	add	s1,s1,1
   10bf0:	fee6f2e3          	bgeu	a3,a4,10bd4 <_vfprintf_r+0x794>
   10bf4:	a01ff06f          	j	105f4 <_vfprintf_r+0x1b4>
   10bf8:	00098513          	mv	a0,s3
   10bfc:	359050ef          	jal	16754 <_localeconv_r>
   10c00:	00853783          	ld	a5,8(a0)
   10c04:	00078513          	mv	a0,a5
   10c08:	08f13423          	sd	a5,136(sp)
   10c0c:	090080ef          	jal	18c9c <strlen>
   10c10:	00050793          	mv	a5,a0
   10c14:	00098513          	mv	a0,s3
   10c18:	00078c13          	mv	s8,a5
   10c1c:	08f13023          	sd	a5,128(sp)
   10c20:	335050ef          	jal	16754 <_localeconv_r>
   10c24:	01053703          	ld	a4,16(a0)
   10c28:	0004ce03          	lbu	t3,0(s1)
   10c2c:	06e13c23          	sd	a4,120(sp)
   10c30:	9a0c0ee3          	beqz	s8,105ec <_vfprintf_r+0x1ac>
   10c34:	9a070ce3          	beqz	a4,105ec <_vfprintf_r+0x1ac>
   10c38:	00074783          	lbu	a5,0(a4)
   10c3c:	9a0788e3          	beqz	a5,105ec <_vfprintf_r+0x1ac>
   10c40:	40096913          	or	s2,s2,1024
   10c44:	0009091b          	sext.w	s2,s2
   10c48:	9a5ff06f          	j	105ec <_vfprintf_r+0x1ac>
   10c4c:	00196913          	or	s2,s2,1
   10c50:	0004ce03          	lbu	t3,0(s1)
   10c54:	0009091b          	sext.w	s2,s2
   10c58:	995ff06f          	j	105ec <_vfprintf_r+0x1ac>
   10c5c:	0cf14783          	lbu	a5,207(sp)
   10c60:	0004ce03          	lbu	t3,0(s1)
   10c64:	980794e3          	bnez	a5,105ec <_vfprintf_r+0x1ac>
   10c68:	02000793          	li	a5,32
   10c6c:	0cf107a3          	sb	a5,207(sp)
   10c70:	97dff06f          	j	105ec <_vfprintf_r+0x1ac>
   10c74:	01096d93          	or	s11,s2,16
   10c78:	000a8313          	mv	t1,s5
   10c7c:	000d8d9b          	sext.w	s11,s11
   10c80:	02013683          	ld	a3,32(sp)
   10c84:	020df793          	and	a5,s11,32
   10c88:	00868713          	add	a4,a3,8
   10c8c:	220788e3          	beqz	a5,116bc <_vfprintf_r+0x127c>
   10c90:	0006bd03          	ld	s10,0(a3)
   10c94:	00100793          	li	a5,1
   10c98:	02e13023          	sd	a4,32(sp)
   10c9c:	00000713          	li	a4,0
   10ca0:	0ce107a3          	sb	a4,207(sp)
   10ca4:	fff00713          	li	a4,-1
   10ca8:	2ae30463          	beq	t1,a4,10f50 <_vfprintf_r+0xb10>
   10cac:	f7fdf913          	and	s2,s11,-129
   10cb0:	0009091b          	sext.w	s2,s2
   10cb4:	280d1c63          	bnez	s10,10f4c <_vfprintf_r+0xb0c>
   10cb8:	2e031a63          	bnez	t1,10fac <_vfprintf_r+0xb6c>
   10cbc:	220796e3          	bnez	a5,116e8 <_vfprintf_r+0x12a8>
   10cc0:	001dfd13          	and	s10,s11,1
   10cc4:	17c10b13          	add	s6,sp,380
   10cc8:	240d1ae3          	bnez	s10,1171c <_vfprintf_r+0x12dc>
   10ccc:	0cf14703          	lbu	a4,207(sp)
   10cd0:	000d0813          	mv	a6,s10
   10cd4:	006d5463          	bge	s10,t1,10cdc <_vfprintf_r+0x89c>
   10cd8:	00030813          	mv	a6,t1
   10cdc:	00013c23          	sd	zero,24(sp)
   10ce0:	04013423          	sd	zero,72(sp)
   10ce4:	04013023          	sd	zero,64(sp)
   10ce8:	02013823          	sd	zero,48(sp)
   10cec:	00080c1b          	sext.w	s8,a6
   10cf0:	e60714e3          	bnez	a4,10b58 <_vfprintf_r+0x718>
   10cf4:	98dff06f          	j	10680 <_vfprintf_r+0x240>
   10cf8:	00896913          	or	s2,s2,8
   10cfc:	0004ce03          	lbu	t3,0(s1)
   10d00:	0009091b          	sext.w	s2,s2
   10d04:	8e9ff06f          	j	105ec <_vfprintf_r+0x1ac>
   10d08:	01096913          	or	s2,s2,16
   10d0c:	000a8313          	mv	t1,s5
   10d10:	0009091b          	sext.w	s2,s2
   10d14:	02013683          	ld	a3,32(sp)
   10d18:	02097793          	and	a5,s2,32
   10d1c:	00868713          	add	a4,a3,8
   10d20:	12078ce3          	beqz	a5,11658 <_vfprintf_r+0x1218>
   10d24:	0006b783          	ld	a5,0(a3)
   10d28:	00078d13          	mv	s10,a5
   10d2c:	1407cae3          	bltz	a5,11680 <_vfprintf_r+0x1240>
   10d30:	fff00793          	li	a5,-1
   10d34:	5af30463          	beq	t1,a5,112dc <_vfprintf_r+0xe9c>
   10d38:	f7f97d93          	and	s11,s2,-129
   10d3c:	02e13023          	sd	a4,32(sp)
   10d40:	000d8d9b          	sext.w	s11,s11
   10d44:	5a0d1063          	bnez	s10,112e4 <_vfprintf_r+0xea4>
   10d48:	5a031263          	bnez	t1,112ec <_vfprintf_r+0xeac>
   10d4c:	000d8913          	mv	s2,s11
   10d50:	17c10b13          	add	s6,sp,380
   10d54:	f79ff06f          	j	10ccc <_vfprintf_r+0x88c>
   10d58:	01096913          	or	s2,s2,16
   10d5c:	000a8313          	mv	t1,s5
   10d60:	0009091b          	sext.w	s2,s2
   10d64:	02013683          	ld	a3,32(sp)
   10d68:	02097793          	and	a5,s2,32
   10d6c:	00868713          	add	a4,a3,8
   10d70:	120784e3          	beqz	a5,11698 <_vfprintf_r+0x1258>
   10d74:	0006bd03          	ld	s10,0(a3)
   10d78:	bff97d93          	and	s11,s2,-1025
   10d7c:	000d8d9b          	sext.w	s11,s11
   10d80:	02e13023          	sd	a4,32(sp)
   10d84:	00000793          	li	a5,0
   10d88:	f15ff06f          	j	10c9c <_vfprintf_r+0x85c>
   10d8c:	02096913          	or	s2,s2,32
   10d90:	0004ce03          	lbu	t3,0(s1)
   10d94:	0009091b          	sext.w	s2,s2
   10d98:	855ff06f          	j	105ec <_vfprintf_r+0x1ac>
   10d9c:	02013703          	ld	a4,32(sp)
   10da0:	02097793          	and	a5,s2,32
   10da4:	00073703          	ld	a4,0(a4)
   10da8:	180782e3          	beqz	a5,1172c <_vfprintf_r+0x12ec>
   10dac:	01013783          	ld	a5,16(sp)
   10db0:	00f73023          	sd	a5,0(a4)
   10db4:	02013783          	ld	a5,32(sp)
   10db8:	00048b13          	mv	s6,s1
   10dbc:	00878793          	add	a5,a5,8
   10dc0:	02f13023          	sd	a5,32(sp)
   10dc4:	9ddff06f          	j	107a0 <_vfprintf_r+0x360>
   10dc8:	0004ce03          	lbu	t3,0(s1)
   10dcc:	06c00793          	li	a5,108
   10dd0:	28fe02e3          	beq	t3,a5,11854 <_vfprintf_r+0x1414>
   10dd4:	01096913          	or	s2,s2,16
   10dd8:	0009091b          	sext.w	s2,s2
   10ddc:	811ff06f          	j	105ec <_vfprintf_r+0x1ac>
   10de0:	0004ce03          	lbu	t3,0(s1)
   10de4:	06800793          	li	a5,104
   10de8:	24fe0ce3          	beq	t3,a5,11840 <_vfprintf_r+0x1400>
   10dec:	04096913          	or	s2,s2,64
   10df0:	0009091b          	sext.w	s2,s2
   10df4:	ff8ff06f          	j	105ec <_vfprintf_r+0x1ac>
   10df8:	02013703          	ld	a4,32(sp)
   10dfc:	ffff87b7          	lui	a5,0xffff8
   10e00:	8307c793          	xor	a5,a5,-2000
   10e04:	0cf11823          	sh	a5,208(sp)
   10e08:	00870793          	add	a5,a4,8
   10e0c:	02f13023          	sd	a5,32(sp)
   10e10:	000227b7          	lui	a5,0x22
   10e14:	d4078793          	add	a5,a5,-704 # 21d40 <__clzdi2+0xb4>
   10e18:	00296d93          	or	s11,s2,2
   10e1c:	06f13423          	sd	a5,104(sp)
   10e20:	00073d03          	ld	s10,0(a4)
   10e24:	000a8313          	mv	t1,s5
   10e28:	000d8d9b          	sext.w	s11,s11
   10e2c:	00200793          	li	a5,2
   10e30:	07800c93          	li	s9,120
   10e34:	e69ff06f          	j	10c9c <_vfprintf_r+0x85c>
   10e38:	06500693          	li	a3,101
   10e3c:	b796d6e3          	bge	a3,s9,109a8 <_vfprintf_r+0x568>
   10e40:	0f013503          	ld	a0,240(sp)
   10e44:	0f813583          	ld	a1,248(sp)
   10e48:	00000613          	li	a2,0
   10e4c:	00000693          	li	a3,0
   10e50:	6bc0f0ef          	jal	2050c <__eqtf2>
   10e54:	58051463          	bnez	a0,113dc <_vfprintf_r+0xf9c>
   10e58:	10812783          	lw	a5,264(sp)
   10e5c:	000226b7          	lui	a3,0x22
   10e60:	d6068693          	add	a3,a3,-672 # 21d60 <__clzdi2+0xd4>
   10e64:	0017879b          	addw	a5,a5,1
   10e68:	00d43023          	sd	a3,0(s0)
   10e6c:	001d8d93          	add	s11,s11,1
   10e70:	00100693          	li	a3,1
   10e74:	00d43423          	sd	a3,8(s0)
   10e78:	10f12423          	sw	a5,264(sp)
   10e7c:	0007869b          	sext.w	a3,a5
   10e80:	11b13823          	sd	s11,272(sp)
   10e84:	00700793          	li	a5,7
   10e88:	01040413          	add	s0,s0,16
   10e8c:	48d7cee3          	blt	a5,a3,11b28 <_vfprintf_r+0x16e8>
   10e90:	0d812783          	lw	a5,216(sp)
   10e94:	03813703          	ld	a4,56(sp)
   10e98:	04e7dee3          	bge	a5,a4,116f4 <_vfprintf_r+0x12b4>
   10e9c:	05813683          	ld	a3,88(sp)
   10ea0:	10812783          	lw	a5,264(sp)
   10ea4:	06013603          	ld	a2,96(sp)
   10ea8:	01b68733          	add	a4,a3,s11
   10eac:	0017879b          	addw	a5,a5,1
   10eb0:	00d43423          	sd	a3,8(s0)
   10eb4:	00c43023          	sd	a2,0(s0)
   10eb8:	0007869b          	sext.w	a3,a5
   10ebc:	10f12423          	sw	a5,264(sp)
   10ec0:	10e13823          	sd	a4,272(sp)
   10ec4:	00700793          	li	a5,7
   10ec8:	01040413          	add	s0,s0,16
   10ecc:	1ad7cce3          	blt	a5,a3,11884 <_vfprintf_r+0x1444>
   10ed0:	03813783          	ld	a5,56(sp)
   10ed4:	fff78c9b          	addw	s9,a5,-1
   10ed8:	87905ee3          	blez	s9,10754 <_vfprintf_r+0x314>
   10edc:	00022f37          	lui	t5,0x22
   10ee0:	01000693          	li	a3,16
   10ee4:	10812783          	lw	a5,264(sp)
   10ee8:	f68f0d93          	add	s11,t5,-152 # 21f68 <zeroes.0>
   10eec:	4596dee3          	bge	a3,s9,11b48 <_vfprintf_r+0x1708>
   10ef0:	00013b03          	ld	s6,0(sp)
   10ef4:	01000d13          	li	s10,16
   10ef8:	00700a93          	li	s5,7
   10efc:	00c0006f          	j	10f08 <_vfprintf_r+0xac8>
   10f00:	ff0c8c9b          	addw	s9,s9,-16
   10f04:	459d52e3          	bge	s10,s9,11b48 <_vfprintf_r+0x1708>
   10f08:	0017879b          	addw	a5,a5,1
   10f0c:	01070713          	add	a4,a4,16
   10f10:	01b43023          	sd	s11,0(s0)
   10f14:	01a43423          	sd	s10,8(s0)
   10f18:	10e13823          	sd	a4,272(sp)
   10f1c:	10f12423          	sw	a5,264(sp)
   10f20:	01040413          	add	s0,s0,16
   10f24:	fcfadee3          	bge	s5,a5,10f00 <_vfprintf_r+0xac0>
   10f28:	10010613          	add	a2,sp,256
   10f2c:	000b0593          	mv	a1,s6
   10f30:	00098513          	mv	a0,s3
   10f34:	59c0a0ef          	jal	1b4d0 <__sprint_r>
   10f38:	28051c63          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   10f3c:	11013703          	ld	a4,272(sp)
   10f40:	10812783          	lw	a5,264(sp)
   10f44:	18010413          	add	s0,sp,384
   10f48:	fb9ff06f          	j	10f00 <_vfprintf_r+0xac0>
   10f4c:	00090d93          	mv	s11,s2
   10f50:	00100713          	li	a4,1
   10f54:	38e78863          	beq	a5,a4,112e4 <_vfprintf_r+0xea4>
   10f58:	00200713          	li	a4,2
   10f5c:	06e78463          	beq	a5,a4,10fc4 <_vfprintf_r+0xb84>
   10f60:	17c10a93          	add	s5,sp,380
   10f64:	000a8b13          	mv	s6,s5
   10f68:	007d7713          	and	a4,s10,7
   10f6c:	03070713          	add	a4,a4,48
   10f70:	feeb0fa3          	sb	a4,-1(s6)
   10f74:	003d5d13          	srl	s10,s10,0x3
   10f78:	000b0613          	mv	a2,s6
   10f7c:	fffb0b13          	add	s6,s6,-1
   10f80:	fe0d14e3          	bnez	s10,10f68 <_vfprintf_r+0xb28>
   10f84:	001df593          	and	a1,s11,1
   10f88:	06058263          	beqz	a1,10fec <_vfprintf_r+0xbac>
   10f8c:	03000593          	li	a1,48
   10f90:	04b70e63          	beq	a4,a1,10fec <_vfprintf_r+0xbac>
   10f94:	ffe60613          	add	a2,a2,-2
   10f98:	febb0fa3          	sb	a1,-1(s6)
   10f9c:	40ca8d3b          	subw	s10,s5,a2
   10fa0:	000d8913          	mv	s2,s11
   10fa4:	00060b13          	mv	s6,a2
   10fa8:	d25ff06f          	j	10ccc <_vfprintf_r+0x88c>
   10fac:	00100713          	li	a4,1
   10fb0:	00e79463          	bne	a5,a4,10fb8 <_vfprintf_r+0xb78>
   10fb4:	7040106f          	j	126b8 <_vfprintf_r+0x2278>
   10fb8:	00200713          	li	a4,2
   10fbc:	00090d93          	mv	s11,s2
   10fc0:	fae790e3          	bne	a5,a4,10f60 <_vfprintf_r+0xb20>
   10fc4:	06813703          	ld	a4,104(sp)
   10fc8:	17c10a93          	add	s5,sp,380
   10fcc:	000a8b13          	mv	s6,s5
   10fd0:	00fd7793          	and	a5,s10,15
   10fd4:	00f707b3          	add	a5,a4,a5
   10fd8:	0007c783          	lbu	a5,0(a5)
   10fdc:	004d5d13          	srl	s10,s10,0x4
   10fe0:	fffb0b13          	add	s6,s6,-1
   10fe4:	00fb0023          	sb	a5,0(s6)
   10fe8:	fe0d14e3          	bnez	s10,10fd0 <_vfprintf_r+0xb90>
   10fec:	416a8d3b          	subw	s10,s5,s6
   10ff0:	000d8913          	mv	s2,s11
   10ff4:	cd9ff06f          	j	10ccc <_vfprintf_r+0x88c>
   10ff8:	418a0abb          	subw	s5,s4,s8
   10ffc:	f3505063          	blez	s5,1071c <_vfprintf_r+0x2dc>
   11000:	00022f37          	lui	t5,0x22
   11004:	01000593          	li	a1,16
   11008:	000d8713          	mv	a4,s11
   1100c:	10812603          	lw	a2,264(sp)
   11010:	f68f0d93          	add	s11,t5,-152 # 21f68 <zeroes.0>
   11014:	0955de63          	bge	a1,s5,110b0 <_vfprintf_r+0xc70>
   11018:	08913823          	sd	s1,144(sp)
   1101c:	01000f93          	li	t6,16
   11020:	000a8493          	mv	s1,s5
   11024:	00700b93          	li	s7,7
   11028:	000a0a93          	mv	s5,s4
   1102c:	00090a13          	mv	s4,s2
   11030:	000d8913          	mv	s2,s11
   11034:	000b0d93          	mv	s11,s6
   11038:	00030b13          	mv	s6,t1
   1103c:	00c0006f          	j	11048 <_vfprintf_r+0xc08>
   11040:	ff04849b          	addw	s1,s1,-16
   11044:	049fd863          	bge	t6,s1,11094 <_vfprintf_r+0xc54>
   11048:	0016061b          	addw	a2,a2,1
   1104c:	01070713          	add	a4,a4,16
   11050:	01243023          	sd	s2,0(s0)
   11054:	01f43423          	sd	t6,8(s0)
   11058:	10e13823          	sd	a4,272(sp)
   1105c:	10c12423          	sw	a2,264(sp)
   11060:	01040413          	add	s0,s0,16
   11064:	fccbdee3          	bge	s7,a2,11040 <_vfprintf_r+0xc00>
   11068:	00013583          	ld	a1,0(sp)
   1106c:	10010613          	add	a2,sp,256
   11070:	00098513          	mv	a0,s3
   11074:	45c0a0ef          	jal	1b4d0 <__sprint_r>
   11078:	14051c63          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   1107c:	01000f93          	li	t6,16
   11080:	ff04849b          	addw	s1,s1,-16
   11084:	11013703          	ld	a4,272(sp)
   11088:	10812603          	lw	a2,264(sp)
   1108c:	18010413          	add	s0,sp,384
   11090:	fa9fcce3          	blt	t6,s1,11048 <_vfprintf_r+0xc08>
   11094:	000b0313          	mv	t1,s6
   11098:	000d8b13          	mv	s6,s11
   1109c:	00090d93          	mv	s11,s2
   110a0:	000a0913          	mv	s2,s4
   110a4:	000a8a13          	mv	s4,s5
   110a8:	00048a93          	mv	s5,s1
   110ac:	09013483          	ld	s1,144(sp)
   110b0:	0016059b          	addw	a1,a2,1
   110b4:	00ea8733          	add	a4,s5,a4
   110b8:	01b43023          	sd	s11,0(s0)
   110bc:	01543423          	sd	s5,8(s0)
   110c0:	10e13823          	sd	a4,272(sp)
   110c4:	10b12423          	sw	a1,264(sp)
   110c8:	00700613          	li	a2,7
   110cc:	6eb64463          	blt	a2,a1,117b4 <_vfprintf_r+0x1374>
   110d0:	41a30bbb          	subw	s7,t1,s10
   110d4:	01040413          	add	s0,s0,16
   110d8:	00070d93          	mv	s11,a4
   110dc:	e5705463          	blez	s7,10724 <_vfprintf_r+0x2e4>
   110e0:	00022f37          	lui	t5,0x22
   110e4:	01000593          	li	a1,16
   110e8:	000d8713          	mv	a4,s11
   110ec:	10812603          	lw	a2,264(sp)
   110f0:	f68f0d93          	add	s11,t5,-152 # 21f68 <zeroes.0>
   110f4:	0975de63          	bge	a1,s7,11190 <_vfprintf_r+0xd50>
   110f8:	000b0793          	mv	a5,s6
   110fc:	00813d83          	ld	s11,8(sp)
   11100:	000a0b13          	mv	s6,s4
   11104:	01000893          	li	a7,16
   11108:	00090a13          	mv	s4,s2
   1110c:	00700a93          	li	s5,7
   11110:	00048913          	mv	s2,s1
   11114:	000b8493          	mv	s1,s7
   11118:	00078b93          	mv	s7,a5
   1111c:	00c0006f          	j	11128 <_vfprintf_r+0xce8>
   11120:	ff04849b          	addw	s1,s1,-16
   11124:	0498da63          	bge	a7,s1,11178 <_vfprintf_r+0xd38>
   11128:	00813683          	ld	a3,8(sp)
   1112c:	0016061b          	addw	a2,a2,1
   11130:	01070713          	add	a4,a4,16
   11134:	00d43023          	sd	a3,0(s0)
   11138:	01143423          	sd	a7,8(s0)
   1113c:	10e13823          	sd	a4,272(sp)
   11140:	10c12423          	sw	a2,264(sp)
   11144:	01040413          	add	s0,s0,16
   11148:	fccadce3          	bge	s5,a2,11120 <_vfprintf_r+0xce0>
   1114c:	00013583          	ld	a1,0(sp)
   11150:	10010613          	add	a2,sp,256
   11154:	00098513          	mv	a0,s3
   11158:	3780a0ef          	jal	1b4d0 <__sprint_r>
   1115c:	06051a63          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   11160:	01000893          	li	a7,16
   11164:	ff04849b          	addw	s1,s1,-16
   11168:	11013703          	ld	a4,272(sp)
   1116c:	10812603          	lw	a2,264(sp)
   11170:	18010413          	add	s0,sp,384
   11174:	fa98cae3          	blt	a7,s1,11128 <_vfprintf_r+0xce8>
   11178:	000b8793          	mv	a5,s7
   1117c:	00048b93          	mv	s7,s1
   11180:	00090493          	mv	s1,s2
   11184:	000a0913          	mv	s2,s4
   11188:	000b0a13          	mv	s4,s6
   1118c:	00078b13          	mv	s6,a5
   11190:	0016059b          	addw	a1,a2,1
   11194:	00eb8733          	add	a4,s7,a4
   11198:	01b43023          	sd	s11,0(s0)
   1119c:	01743423          	sd	s7,8(s0)
   111a0:	10e13823          	sd	a4,272(sp)
   111a4:	10b12423          	sw	a1,264(sp)
   111a8:	00700613          	li	a2,7
   111ac:	48b64663          	blt	a2,a1,11638 <_vfprintf_r+0x11f8>
   111b0:	01040413          	add	s0,s0,16
   111b4:	00070d93          	mv	s11,a4
   111b8:	d6cff06f          	j	10724 <_vfprintf_r+0x2e4>
   111bc:	00013583          	ld	a1,0(sp)
   111c0:	10010613          	add	a2,sp,256
   111c4:	00098513          	mv	a0,s3
   111c8:	3080a0ef          	jal	1b4d0 <__sprint_r>
   111cc:	da050a63          	beqz	a0,10780 <_vfprintf_r+0x340>
   111d0:	01813583          	ld	a1,24(sp)
   111d4:	de058063          	beqz	a1,107b4 <_vfprintf_r+0x374>
   111d8:	05013503          	ld	a0,80(sp)
   111dc:	430020ef          	jal	1360c <_free_r>
   111e0:	dd4ff06f          	j	107b4 <_vfprintf_r+0x374>
   111e4:	000228b7          	lui	a7,0x22
   111e8:	01000513          	li	a0,16
   111ec:	11013583          	ld	a1,272(sp)
   111f0:	10812603          	lw	a2,264(sp)
   111f4:	f7888d93          	add	s11,a7,-136 # 21f78 <blanks.1>
   111f8:	08e55c63          	bge	a0,a4,11290 <_vfprintf_r+0xe50>
   111fc:	08913823          	sd	s1,144(sp)
   11200:	00040793          	mv	a5,s0
   11204:	000d8493          	mv	s1,s11
   11208:	01000f13          	li	t5,16
   1120c:	000b0d93          	mv	s11,s6
   11210:	00700393          	li	t2,7
   11214:	00070413          	mv	s0,a4
   11218:	00030b13          	mv	s6,t1
   1121c:	00c0006f          	j	11228 <_vfprintf_r+0xde8>
   11220:	ff04041b          	addw	s0,s0,-16
   11224:	048f5a63          	bge	t5,s0,11278 <_vfprintf_r+0xe38>
   11228:	0016061b          	addw	a2,a2,1
   1122c:	01058593          	add	a1,a1,16
   11230:	0097b023          	sd	s1,0(a5)
   11234:	01e7b423          	sd	t5,8(a5)
   11238:	10b13823          	sd	a1,272(sp)
   1123c:	10c12423          	sw	a2,264(sp)
   11240:	01078793          	add	a5,a5,16
   11244:	fcc3dee3          	bge	t2,a2,11220 <_vfprintf_r+0xde0>
   11248:	00013583          	ld	a1,0(sp)
   1124c:	10010613          	add	a2,sp,256
   11250:	00098513          	mv	a0,s3
   11254:	27c0a0ef          	jal	1b4d0 <__sprint_r>
   11258:	f6051ce3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   1125c:	01000f13          	li	t5,16
   11260:	ff04041b          	addw	s0,s0,-16
   11264:	11013583          	ld	a1,272(sp)
   11268:	10812603          	lw	a2,264(sp)
   1126c:	18010793          	add	a5,sp,384
   11270:	00700393          	li	t2,7
   11274:	fa8f4ae3          	blt	t5,s0,11228 <_vfprintf_r+0xde8>
   11278:	000b0313          	mv	t1,s6
   1127c:	000d8b13          	mv	s6,s11
   11280:	00048d93          	mv	s11,s1
   11284:	09013483          	ld	s1,144(sp)
   11288:	00040713          	mv	a4,s0
   1128c:	00078413          	mv	s0,a5
   11290:	00b705b3          	add	a1,a4,a1
   11294:	0016061b          	addw	a2,a2,1
   11298:	00e43423          	sd	a4,8(s0)
   1129c:	01b43023          	sd	s11,0(s0)
   112a0:	10b13823          	sd	a1,272(sp)
   112a4:	10c12423          	sw	a2,264(sp)
   112a8:	0006059b          	sext.w	a1,a2
   112ac:	00700713          	li	a4,7
   112b0:	01040413          	add	s0,s0,16
   112b4:	beb75463          	bge	a4,a1,1069c <_vfprintf_r+0x25c>
   112b8:	00013583          	ld	a1,0(sp)
   112bc:	10010613          	add	a2,sp,256
   112c0:	00098513          	mv	a0,s3
   112c4:	08613823          	sd	t1,144(sp)
   112c8:	2080a0ef          	jal	1b4d0 <__sprint_r>
   112cc:	f00512e3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   112d0:	09013303          	ld	t1,144(sp)
   112d4:	18010413          	add	s0,sp,384
   112d8:	bc4ff06f          	j	1069c <_vfprintf_r+0x25c>
   112dc:	00090d93          	mv	s11,s2
   112e0:	02e13023          	sd	a4,32(sp)
   112e4:	00900793          	li	a5,9
   112e8:	6ba7ea63          	bltu	a5,s10,1199c <_vfprintf_r+0x155c>
   112ec:	030d0d1b          	addw	s10,s10,48
   112f0:	17a10da3          	sb	s10,379(sp)
   112f4:	000d8913          	mv	s2,s11
   112f8:	00100d13          	li	s10,1
   112fc:	17b10b13          	add	s6,sp,379
   11300:	9cdff06f          	j	10ccc <_vfprintf_r+0x88c>
   11304:	00013583          	ld	a1,0(sp)
   11308:	10010613          	add	a2,sp,256
   1130c:	00098513          	mv	a0,s3
   11310:	08613823          	sd	t1,144(sp)
   11314:	1bc0a0ef          	jal	1b4d0 <__sprint_r>
   11318:	ea051ce3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   1131c:	11013d83          	ld	s11,272(sp)
   11320:	09013303          	ld	t1,144(sp)
   11324:	18010413          	add	s0,sp,384
   11328:	becff06f          	j	10714 <_vfprintf_r+0x2d4>
   1132c:	000228b7          	lui	a7,0x22
   11330:	01000693          	li	a3,16
   11334:	10812783          	lw	a5,264(sp)
   11338:	f7888d93          	add	s11,a7,-136 # 21f78 <blanks.1>
   1133c:	0726d263          	bge	a3,s2,113a0 <_vfprintf_r+0xf60>
   11340:	00013a83          	ld	s5,0(sp)
   11344:	01000c93          	li	s9,16
   11348:	00700d13          	li	s10,7
   1134c:	00c0006f          	j	11358 <_vfprintf_r+0xf18>
   11350:	ff09091b          	addw	s2,s2,-16
   11354:	052cd663          	bge	s9,s2,113a0 <_vfprintf_r+0xf60>
   11358:	0017879b          	addw	a5,a5,1
   1135c:	01070713          	add	a4,a4,16
   11360:	01b43023          	sd	s11,0(s0)
   11364:	01943423          	sd	s9,8(s0)
   11368:	10e13823          	sd	a4,272(sp)
   1136c:	10f12423          	sw	a5,264(sp)
   11370:	01040413          	add	s0,s0,16
   11374:	fcfd5ee3          	bge	s10,a5,11350 <_vfprintf_r+0xf10>
   11378:	10010613          	add	a2,sp,256
   1137c:	000a8593          	mv	a1,s5
   11380:	00098513          	mv	a0,s3
   11384:	14c0a0ef          	jal	1b4d0 <__sprint_r>
   11388:	e40514e3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   1138c:	ff09091b          	addw	s2,s2,-16
   11390:	11013703          	ld	a4,272(sp)
   11394:	10812783          	lw	a5,264(sp)
   11398:	18010413          	add	s0,sp,384
   1139c:	fb2ccee3          	blt	s9,s2,11358 <_vfprintf_r+0xf18>
   113a0:	0017869b          	addw	a3,a5,1
   113a4:	01270733          	add	a4,a4,s2
   113a8:	01b43023          	sd	s11,0(s0)
   113ac:	01243423          	sd	s2,8(s0)
   113b0:	10e13823          	sd	a4,272(sp)
   113b4:	10d12423          	sw	a3,264(sp)
   113b8:	00700793          	li	a5,7
   113bc:	bad7d463          	bge	a5,a3,10764 <_vfprintf_r+0x324>
   113c0:	00013583          	ld	a1,0(sp)
   113c4:	10010613          	add	a2,sp,256
   113c8:	00098513          	mv	a0,s3
   113cc:	1040a0ef          	jal	1b4d0 <__sprint_r>
   113d0:	e00510e3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   113d4:	11013703          	ld	a4,272(sp)
   113d8:	b8cff06f          	j	10764 <_vfprintf_r+0x324>
   113dc:	0d812603          	lw	a2,216(sp)
   113e0:	6ac05463          	blez	a2,11a88 <_vfprintf_r+0x1648>
   113e4:	03813783          	ld	a5,56(sp)
   113e8:	03013703          	ld	a4,48(sp)
   113ec:	00fb0ab3          	add	s5,s6,a5
   113f0:	00070693          	mv	a3,a4
   113f4:	3ae7c863          	blt	a5,a4,117a4 <_vfprintf_r+0x1364>
   113f8:	00068c9b          	sext.w	s9,a3
   113fc:	03905663          	blez	s9,11428 <_vfprintf_r+0xfe8>
   11400:	10812603          	lw	a2,264(sp)
   11404:	019d8db3          	add	s11,s11,s9
   11408:	01643023          	sd	s6,0(s0)
   1140c:	0016059b          	addw	a1,a2,1
   11410:	01943423          	sd	s9,8(s0)
   11414:	11b13823          	sd	s11,272(sp)
   11418:	10b12423          	sw	a1,264(sp)
   1141c:	00700613          	li	a2,7
   11420:	01040413          	add	s0,s0,16
   11424:	50b646e3          	blt	a2,a1,12130 <_vfprintf_r+0x1cf0>
   11428:	fffcc613          	not	a2,s9
   1142c:	03013783          	ld	a5,48(sp)
   11430:	43f65613          	sra	a2,a2,0x3f
   11434:	00ccf6b3          	and	a3,s9,a2
   11438:	40d78cbb          	subw	s9,a5,a3
   1143c:	49904663          	bgtz	s9,118c8 <_vfprintf_r+0x1488>
   11440:	03013783          	ld	a5,48(sp)
   11444:	40097693          	and	a3,s2,1024
   11448:	00fb0b33          	add	s6,s6,a5
   1144c:	0a069ae3          	bnez	a3,11d00 <_vfprintf_r+0x18c0>
   11450:	0d812683          	lw	a3,216(sp)
   11454:	03813783          	ld	a5,56(sp)
   11458:	00f6c663          	blt	a3,a5,11464 <_vfprintf_r+0x1024>
   1145c:	00197613          	and	a2,s2,1
   11460:	4e060ce3          	beqz	a2,12158 <_vfprintf_r+0x1d18>
   11464:	10812603          	lw	a2,264(sp)
   11468:	05813783          	ld	a5,88(sp)
   1146c:	06013583          	ld	a1,96(sp)
   11470:	01040413          	add	s0,s0,16
   11474:	01b78733          	add	a4,a5,s11
   11478:	feb43823          	sd	a1,-16(s0)
   1147c:	0016059b          	addw	a1,a2,1
   11480:	fef43c23          	sd	a5,-8(s0)
   11484:	10e13823          	sd	a4,272(sp)
   11488:	10b12423          	sw	a1,264(sp)
   1148c:	00700613          	li	a2,7
   11490:	00b65463          	bge	a2,a1,11498 <_vfprintf_r+0x1058>
   11494:	1380106f          	j	125cc <_vfprintf_r+0x218c>
   11498:	03813783          	ld	a5,56(sp)
   1149c:	416a8cb3          	sub	s9,s5,s6
   114a0:	000c859b          	sext.w	a1,s9
   114a4:	40d7863b          	subw	a2,a5,a3
   114a8:	00b65463          	bge	a2,a1,114b0 <_vfprintf_r+0x1070>
   114ac:	00060c93          	mv	s9,a2
   114b0:	000c8c9b          	sext.w	s9,s9
   114b4:	03905863          	blez	s9,114e4 <_vfprintf_r+0x10a4>
   114b8:	10812683          	lw	a3,264(sp)
   114bc:	01970733          	add	a4,a4,s9
   114c0:	01643023          	sd	s6,0(s0)
   114c4:	0016869b          	addw	a3,a3,1
   114c8:	01943423          	sd	s9,8(s0)
   114cc:	10e13823          	sd	a4,272(sp)
   114d0:	10d12423          	sw	a3,264(sp)
   114d4:	00700793          	li	a5,7
   114d8:	01040413          	add	s0,s0,16
   114dc:	00d7d463          	bge	a5,a3,114e4 <_vfprintf_r+0x10a4>
   114e0:	19c0106f          	j	1267c <_vfprintf_r+0x223c>
   114e4:	fffcc793          	not	a5,s9
   114e8:	43f7d793          	sra	a5,a5,0x3f
   114ec:	00fcfcb3          	and	s9,s9,a5
   114f0:	41960cbb          	subw	s9,a2,s9
   114f4:	a7905063          	blez	s9,10754 <_vfprintf_r+0x314>
   114f8:	00022f37          	lui	t5,0x22
   114fc:	01000693          	li	a3,16
   11500:	10812783          	lw	a5,264(sp)
   11504:	f68f0d93          	add	s11,t5,-152 # 21f68 <zeroes.0>
   11508:	6596d063          	bge	a3,s9,11b48 <_vfprintf_r+0x1708>
   1150c:	00013b03          	ld	s6,0(sp)
   11510:	01000d13          	li	s10,16
   11514:	00700a93          	li	s5,7
   11518:	00c0006f          	j	11524 <_vfprintf_r+0x10e4>
   1151c:	ff0c8c9b          	addw	s9,s9,-16
   11520:	639d5463          	bge	s10,s9,11b48 <_vfprintf_r+0x1708>
   11524:	0017879b          	addw	a5,a5,1
   11528:	01070713          	add	a4,a4,16
   1152c:	01b43023          	sd	s11,0(s0)
   11530:	01a43423          	sd	s10,8(s0)
   11534:	10e13823          	sd	a4,272(sp)
   11538:	10f12423          	sw	a5,264(sp)
   1153c:	01040413          	add	s0,s0,16
   11540:	fcfadee3          	bge	s5,a5,1151c <_vfprintf_r+0x10dc>
   11544:	10010613          	add	a2,sp,256
   11548:	000b0593          	mv	a1,s6
   1154c:	00098513          	mv	a0,s3
   11550:	781090ef          	jal	1b4d0 <__sprint_r>
   11554:	c6051ee3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   11558:	11013703          	ld	a4,272(sp)
   1155c:	10812783          	lw	a5,264(sp)
   11560:	18010413          	add	s0,sp,384
   11564:	fb9ff06f          	j	1151c <_vfprintf_r+0x10dc>
   11568:	00197613          	and	a2,s2,1
   1156c:	c4061663          	bnez	a2,109b8 <_vfprintf_r+0x578>
   11570:	10812603          	lw	a2,264(sp)
   11574:	001d8d13          	add	s10,s11,1
   11578:	01643023          	sd	s6,0(s0)
   1157c:	0016079b          	addw	a5,a2,1
   11580:	00d43423          	sd	a3,8(s0)
   11584:	10f12423          	sw	a5,264(sp)
   11588:	0007841b          	sext.w	s0,a5
   1158c:	11a13823          	sd	s10,272(sp)
   11590:	00700793          	li	a5,7
   11594:	cc87d263          	bge	a5,s0,10a58 <_vfprintf_r+0x618>
   11598:	00013583          	ld	a1,0(sp)
   1159c:	10010613          	add	a2,sp,256
   115a0:	00098513          	mv	a0,s3
   115a4:	72d090ef          	jal	1b4d0 <__sprint_r>
   115a8:	c20514e3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   115ac:	11013d03          	ld	s10,272(sp)
   115b0:	10812403          	lw	s0,264(sp)
   115b4:	18010c93          	add	s9,sp,384
   115b8:	ca0ff06f          	j	10a58 <_vfprintf_r+0x618>
   115bc:	03813703          	ld	a4,56(sp)
   115c0:	00100793          	li	a5,1
   115c4:	c8e7da63          	bge	a5,a4,10a58 <_vfprintf_r+0x618>
   115c8:	00022f37          	lui	t5,0x22
   115cc:	01100793          	li	a5,17
   115d0:	f68f0d93          	add	s11,t5,-152 # 21f68 <zeroes.0>
   115d4:	66e7d463          	bge	a5,a4,11c3c <_vfprintf_r+0x17fc>
   115d8:	00013b83          	ld	s7,0(sp)
   115dc:	01000713          	li	a4,16
   115e0:	00700b13          	li	s6,7
   115e4:	00c0006f          	j	115f0 <_vfprintf_r+0x11b0>
   115e8:	ff0a8a9b          	addw	s5,s5,-16
   115ec:	65575863          	bge	a4,s5,11c3c <_vfprintf_r+0x17fc>
   115f0:	0014041b          	addw	s0,s0,1
   115f4:	010d0d13          	add	s10,s10,16
   115f8:	01bcb023          	sd	s11,0(s9)
   115fc:	00ecb423          	sd	a4,8(s9)
   11600:	11a13823          	sd	s10,272(sp)
   11604:	10812423          	sw	s0,264(sp)
   11608:	010c8c93          	add	s9,s9,16
   1160c:	fc8b5ee3          	bge	s6,s0,115e8 <_vfprintf_r+0x11a8>
   11610:	10010613          	add	a2,sp,256
   11614:	000b8593          	mv	a1,s7
   11618:	00098513          	mv	a0,s3
   1161c:	6b5090ef          	jal	1b4d0 <__sprint_r>
   11620:	ba0518e3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   11624:	11013d03          	ld	s10,272(sp)
   11628:	10812403          	lw	s0,264(sp)
   1162c:	18010c93          	add	s9,sp,384
   11630:	01000713          	li	a4,16
   11634:	fb5ff06f          	j	115e8 <_vfprintf_r+0x11a8>
   11638:	00013583          	ld	a1,0(sp)
   1163c:	10010613          	add	a2,sp,256
   11640:	00098513          	mv	a0,s3
   11644:	68d090ef          	jal	1b4d0 <__sprint_r>
   11648:	b80514e3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   1164c:	11013d83          	ld	s11,272(sp)
   11650:	18010413          	add	s0,sp,384
   11654:	8d0ff06f          	j	10724 <_vfprintf_r+0x2e4>
   11658:	01097793          	and	a5,s2,16
   1165c:	12079c63          	bnez	a5,11794 <_vfprintf_r+0x1354>
   11660:	02013683          	ld	a3,32(sp)
   11664:	04097793          	and	a5,s2,64
   11668:	0006ad03          	lw	s10,0(a3)
   1166c:	5e078c63          	beqz	a5,11c64 <_vfprintf_r+0x1824>
   11670:	010d1d1b          	sllw	s10,s10,0x10
   11674:	410d5d1b          	sraw	s10,s10,0x10
   11678:	000d0793          	mv	a5,s10
   1167c:	ea07da63          	bgez	a5,10d30 <_vfprintf_r+0x8f0>
   11680:	02e13023          	sd	a4,32(sp)
   11684:	41a00d33          	neg	s10,s10
   11688:	00090d93          	mv	s11,s2
   1168c:	02d00713          	li	a4,45
   11690:	00100793          	li	a5,1
   11694:	e0cff06f          	j	10ca0 <_vfprintf_r+0x860>
   11698:	01097793          	and	a5,s2,16
   1169c:	0e079663          	bnez	a5,11788 <_vfprintf_r+0x1348>
   116a0:	02013683          	ld	a3,32(sp)
   116a4:	04097793          	and	a5,s2,64
   116a8:	0006ad03          	lw	s10,0(a3)
   116ac:	5e078c63          	beqz	a5,11ca4 <_vfprintf_r+0x1864>
   116b0:	030d1d13          	sll	s10,s10,0x30
   116b4:	030d5d13          	srl	s10,s10,0x30
   116b8:	ec0ff06f          	j	10d78 <_vfprintf_r+0x938>
   116bc:	010df793          	and	a5,s11,16
   116c0:	0a079a63          	bnez	a5,11774 <_vfprintf_r+0x1334>
   116c4:	02013683          	ld	a3,32(sp)
   116c8:	040df793          	and	a5,s11,64
   116cc:	0006ad03          	lw	s10,0(a3)
   116d0:	5a078e63          	beqz	a5,11c8c <_vfprintf_r+0x184c>
   116d4:	030d1d13          	sll	s10,s10,0x30
   116d8:	030d5d13          	srl	s10,s10,0x30
   116dc:	02e13023          	sd	a4,32(sp)
   116e0:	00100793          	li	a5,1
   116e4:	db8ff06f          	j	10c9c <_vfprintf_r+0x85c>
   116e8:	00000d13          	li	s10,0
   116ec:	17c10b13          	add	s6,sp,380
   116f0:	ddcff06f          	j	10ccc <_vfprintf_r+0x88c>
   116f4:	00197793          	and	a5,s2,1
   116f8:	000d8713          	mv	a4,s11
   116fc:	00079463          	bnez	a5,11704 <_vfprintf_r+0x12c4>
   11700:	854ff06f          	j	10754 <_vfprintf_r+0x314>
   11704:	f98ff06f          	j	10e9c <_vfprintf_r+0xa5c>
   11708:	000a8313          	mv	t1,s5
   1170c:	e08ff06f          	j	10d14 <_vfprintf_r+0x8d4>
   11710:	0004ce03          	lbu	t3,0(s1)
   11714:	02f13023          	sd	a5,32(sp)
   11718:	ed5fe06f          	j	105ec <_vfprintf_r+0x1ac>
   1171c:	03000793          	li	a5,48
   11720:	16f10da3          	sb	a5,379(sp)
   11724:	17b10b13          	add	s6,sp,379
   11728:	da4ff06f          	j	10ccc <_vfprintf_r+0x88c>
   1172c:	01097793          	and	a5,s2,16
   11730:	e6079e63          	bnez	a5,10dac <_vfprintf_r+0x96c>
   11734:	04097793          	and	a5,s2,64
   11738:	240796e3          	bnez	a5,12184 <_vfprintf_r+0x1d44>
   1173c:	20097913          	and	s2,s2,512
   11740:	01013783          	ld	a5,16(sp)
   11744:	00091463          	bnez	s2,1174c <_vfprintf_r+0x130c>
   11748:	1d40106f          	j	1291c <_vfprintf_r+0x24dc>
   1174c:	00f70023          	sb	a5,0(a4)
   11750:	e64ff06f          	j	10db4 <_vfprintf_r+0x974>
   11754:	02013783          	ld	a5,32(sp)
   11758:	00f78a93          	add	s5,a5,15
   1175c:	ff0afa93          	and	s5,s5,-16
   11760:	010a8793          	add	a5,s5,16
   11764:	000ab703          	ld	a4,0(s5)
   11768:	008ab583          	ld	a1,8(s5)
   1176c:	02f13023          	sd	a5,32(sp)
   11770:	950ff06f          	j	108c0 <_vfprintf_r+0x480>
   11774:	02013783          	ld	a5,32(sp)
   11778:	02e13023          	sd	a4,32(sp)
   1177c:	0007bd03          	ld	s10,0(a5)
   11780:	00100793          	li	a5,1
   11784:	d18ff06f          	j	10c9c <_vfprintf_r+0x85c>
   11788:	02013783          	ld	a5,32(sp)
   1178c:	0007bd03          	ld	s10,0(a5)
   11790:	de8ff06f          	j	10d78 <_vfprintf_r+0x938>
   11794:	02013783          	ld	a5,32(sp)
   11798:	0007b783          	ld	a5,0(a5)
   1179c:	00078d13          	mv	s10,a5
   117a0:	d8cff06f          	j	10d2c <_vfprintf_r+0x8ec>
   117a4:	00078693          	mv	a3,a5
   117a8:	00068c9b          	sext.w	s9,a3
   117ac:	c5904ae3          	bgtz	s9,11400 <_vfprintf_r+0xfc0>
   117b0:	c79ff06f          	j	11428 <_vfprintf_r+0xfe8>
   117b4:	00013583          	ld	a1,0(sp)
   117b8:	10010613          	add	a2,sp,256
   117bc:	00098513          	mv	a0,s3
   117c0:	08613823          	sd	t1,144(sp)
   117c4:	50d090ef          	jal	1b4d0 <__sprint_r>
   117c8:	a00514e3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   117cc:	11013d83          	ld	s11,272(sp)
   117d0:	09013303          	ld	t1,144(sp)
   117d4:	18010413          	add	s0,sp,384
   117d8:	f45fe06f          	j	1071c <_vfprintf_r+0x2dc>
   117dc:	000227b7          	lui	a5,0x22
   117e0:	d2878793          	add	a5,a5,-728 # 21d28 <__clzdi2+0x9c>
   117e4:	000a8313          	mv	t1,s5
   117e8:	06f13423          	sd	a5,104(sp)
   117ec:	02013683          	ld	a3,32(sp)
   117f0:	02097793          	and	a5,s2,32
   117f4:	00868713          	add	a4,a3,8
   117f8:	14078463          	beqz	a5,11940 <_vfprintf_r+0x1500>
   117fc:	0006bd03          	ld	s10,0(a3)
   11800:	00197793          	and	a5,s2,1
   11804:	00078e63          	beqz	a5,11820 <_vfprintf_r+0x13e0>
   11808:	000d0c63          	beqz	s10,11820 <_vfprintf_r+0x13e0>
   1180c:	00296913          	or	s2,s2,2
   11810:	03000793          	li	a5,48
   11814:	0cf10823          	sb	a5,208(sp)
   11818:	0d9108a3          	sb	s9,209(sp)
   1181c:	0009091b          	sext.w	s2,s2
   11820:	bff97d93          	and	s11,s2,-1025
   11824:	000d8d9b          	sext.w	s11,s11
   11828:	02e13023          	sd	a4,32(sp)
   1182c:	00200793          	li	a5,2
   11830:	c6cff06f          	j	10c9c <_vfprintf_r+0x85c>
   11834:	000a8313          	mv	t1,s5
   11838:	00090d93          	mv	s11,s2
   1183c:	c44ff06f          	j	10c80 <_vfprintf_r+0x840>
   11840:	20096913          	or	s2,s2,512
   11844:	0014ce03          	lbu	t3,1(s1)
   11848:	0009091b          	sext.w	s2,s2
   1184c:	00148493          	add	s1,s1,1
   11850:	d9dfe06f          	j	105ec <_vfprintf_r+0x1ac>
   11854:	02096913          	or	s2,s2,32
   11858:	0014ce03          	lbu	t3,1(s1)
   1185c:	0009091b          	sext.w	s2,s2
   11860:	00148493          	add	s1,s1,1
   11864:	d89fe06f          	j	105ec <_vfprintf_r+0x1ac>
   11868:	000a8313          	mv	t1,s5
   1186c:	cf8ff06f          	j	10d64 <_vfprintf_r+0x924>
   11870:	000227b7          	lui	a5,0x22
   11874:	d4078793          	add	a5,a5,-704 # 21d40 <__clzdi2+0xb4>
   11878:	000a8313          	mv	t1,s5
   1187c:	06f13423          	sd	a5,104(sp)
   11880:	f6dff06f          	j	117ec <_vfprintf_r+0x13ac>
   11884:	00013583          	ld	a1,0(sp)
   11888:	10010613          	add	a2,sp,256
   1188c:	00098513          	mv	a0,s3
   11890:	441090ef          	jal	1b4d0 <__sprint_r>
   11894:	92051ee3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   11898:	11013703          	ld	a4,272(sp)
   1189c:	18010413          	add	s0,sp,384
   118a0:	e30ff06f          	j	10ed0 <_vfprintf_r+0xa90>
   118a4:	00600793          	li	a5,6
   118a8:	00030693          	mv	a3,t1
   118ac:	0a67e2e3          	bltu	a5,t1,12150 <_vfprintf_r+0x1d10>
   118b0:	00068d1b          	sext.w	s10,a3
   118b4:	000227b7          	lui	a5,0x22
   118b8:	000d0c13          	mv	s8,s10
   118bc:	03513023          	sd	s5,32(sp)
   118c0:	d5878b13          	add	s6,a5,-680 # 21d58 <__clzdi2+0xcc>
   118c4:	da9fe06f          	j	1066c <_vfprintf_r+0x22c>
   118c8:	00022f37          	lui	t5,0x22
   118cc:	01000593          	li	a1,16
   118d0:	000d8713          	mv	a4,s11
   118d4:	10812603          	lw	a2,264(sp)
   118d8:	f68f0d93          	add	s11,t5,-152 # 21f68 <zeroes.0>
   118dc:	3f95dc63          	bge	a1,s9,11cd4 <_vfprintf_r+0x1894>
   118e0:	00013b83          	ld	s7,0(sp)
   118e4:	01000893          	li	a7,16
   118e8:	00700d13          	li	s10,7
   118ec:	00c0006f          	j	118f8 <_vfprintf_r+0x14b8>
   118f0:	ff0c8c9b          	addw	s9,s9,-16
   118f4:	3f98d063          	bge	a7,s9,11cd4 <_vfprintf_r+0x1894>
   118f8:	0016061b          	addw	a2,a2,1
   118fc:	01070713          	add	a4,a4,16
   11900:	01b43023          	sd	s11,0(s0)
   11904:	01143423          	sd	a7,8(s0)
   11908:	10e13823          	sd	a4,272(sp)
   1190c:	10c12423          	sw	a2,264(sp)
   11910:	01040413          	add	s0,s0,16
   11914:	fccd5ee3          	bge	s10,a2,118f0 <_vfprintf_r+0x14b0>
   11918:	10010613          	add	a2,sp,256
   1191c:	000b8593          	mv	a1,s7
   11920:	00098513          	mv	a0,s3
   11924:	3ad090ef          	jal	1b4d0 <__sprint_r>
   11928:	8a0514e3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   1192c:	11013703          	ld	a4,272(sp)
   11930:	10812603          	lw	a2,264(sp)
   11934:	18010413          	add	s0,sp,384
   11938:	01000893          	li	a7,16
   1193c:	fb5ff06f          	j	118f0 <_vfprintf_r+0x14b0>
   11940:	01097793          	and	a5,s2,16
   11944:	1c078463          	beqz	a5,11b0c <_vfprintf_r+0x16cc>
   11948:	02013783          	ld	a5,32(sp)
   1194c:	0007bd03          	ld	s10,0(a5)
   11950:	eb1ff06f          	j	11800 <_vfprintf_r+0x13c0>
   11954:	00013583          	ld	a1,0(sp)
   11958:	10010613          	add	a2,sp,256
   1195c:	00098513          	mv	a0,s3
   11960:	371090ef          	jal	1b4d0 <__sprint_r>
   11964:	860516e3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   11968:	11013703          	ld	a4,272(sp)
   1196c:	10812683          	lw	a3,264(sp)
   11970:	18010c93          	add	s9,sp,384
   11974:	870ff06f          	j	109e4 <_vfprintf_r+0x5a4>
   11978:	00013583          	ld	a1,0(sp)
   1197c:	10010613          	add	a2,sp,256
   11980:	00098513          	mv	a0,s3
   11984:	34d090ef          	jal	1b4d0 <__sprint_r>
   11988:	840514e3          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   1198c:	11013d03          	ld	s10,272(sp)
   11990:	10812403          	lw	s0,264(sp)
   11994:	18010c93          	add	s9,sp,384
   11998:	878ff06f          	j	10a10 <_vfprintf_r+0x5d0>
   1199c:	17c10a93          	add	s5,sp,380
   119a0:	00913c23          	sd	s1,24(sp)
   119a4:	07813483          	ld	s1,120(sp)
   119a8:	400df913          	and	s2,s11,1024
   119ac:	000a8b13          	mv	s6,s5
   119b0:	00000793          	li	a5,0
   119b4:	04813023          	sd	s0,64(sp)
   119b8:	00098a93          	mv	s5,s3
   119bc:	00090413          	mv	s0,s2
   119c0:	00900b93          	li	s7,9
   119c4:	0ff00c13          	li	s8,255
   119c8:	02613823          	sd	t1,48(sp)
   119cc:	00078913          	mv	s2,a5
   119d0:	000b0993          	mv	s3,s6
   119d4:	00a00593          	li	a1,10
   119d8:	000d0513          	mv	a0,s10
   119dc:	240100ef          	jal	21c1c <__umoddi3>
   119e0:	0305051b          	addw	a0,a0,48
   119e4:	fea98fa3          	sb	a0,-1(s3)
   119e8:	0019091b          	addw	s2,s2,1
   119ec:	fff98993          	add	s3,s3,-1
   119f0:	00040663          	beqz	s0,119fc <_vfprintf_r+0x15bc>
   119f4:	0004c703          	lbu	a4,0(s1)
   119f8:	04e90663          	beq	s2,a4,11a44 <_vfprintf_r+0x1604>
   119fc:	00a00593          	li	a1,10
   11a00:	000d0513          	mv	a0,s10
   11a04:	1d0100ef          	jal	21bd4 <__hidden___udivdi3>
   11a08:	01abf663          	bgeu	s7,s10,11a14 <_vfprintf_r+0x15d4>
   11a0c:	00050d13          	mv	s10,a0
   11a10:	fc5ff06f          	j	119d4 <_vfprintf_r+0x1594>
   11a14:	000b0793          	mv	a5,s6
   11a18:	00098b13          	mv	s6,s3
   11a1c:	000a8993          	mv	s3,s5
   11a20:	00078a93          	mv	s5,a5
   11a24:	03213c23          	sd	s2,56(sp)
   11a28:	06913c23          	sd	s1,120(sp)
   11a2c:	03013303          	ld	t1,48(sp)
   11a30:	01813483          	ld	s1,24(sp)
   11a34:	04013403          	ld	s0,64(sp)
   11a38:	416a8d3b          	subw	s10,s5,s6
   11a3c:	000d8913          	mv	s2,s11
   11a40:	a8cff06f          	j	10ccc <_vfprintf_r+0x88c>
   11a44:	fb870ce3          	beq	a4,s8,119fc <_vfprintf_r+0x15bc>
   11a48:	fdabf6e3          	bgeu	s7,s10,11a14 <_vfprintf_r+0x15d4>
   11a4c:	08013783          	ld	a5,128(sp)
   11a50:	08813583          	ld	a1,136(sp)
   11a54:	00000913          	li	s2,0
   11a58:	40f989b3          	sub	s3,s3,a5
   11a5c:	00078613          	mv	a2,a5
   11a60:	00098513          	mv	a0,s3
   11a64:	300070ef          	jal	18d64 <strncpy>
   11a68:	0014c703          	lbu	a4,1(s1)
   11a6c:	000d0513          	mv	a0,s10
   11a70:	00a00593          	li	a1,10
   11a74:	00e03733          	snez	a4,a4
   11a78:	00e484b3          	add	s1,s1,a4
   11a7c:	158100ef          	jal	21bd4 <__hidden___udivdi3>
   11a80:	00050d13          	mv	s10,a0
   11a84:	f51ff06f          	j	119d4 <_vfprintf_r+0x1594>
   11a88:	10812683          	lw	a3,264(sp)
   11a8c:	000225b7          	lui	a1,0x22
   11a90:	d6058593          	add	a1,a1,-672 # 21d60 <__clzdi2+0xd4>
   11a94:	0016869b          	addw	a3,a3,1
   11a98:	00b43023          	sd	a1,0(s0)
   11a9c:	001d8713          	add	a4,s11,1
   11aa0:	00100593          	li	a1,1
   11aa4:	00b43423          	sd	a1,8(s0)
   11aa8:	10d12423          	sw	a3,264(sp)
   11aac:	0006859b          	sext.w	a1,a3
   11ab0:	10e13823          	sd	a4,272(sp)
   11ab4:	00700693          	li	a3,7
   11ab8:	01040413          	add	s0,s0,16
   11abc:	44b6ce63          	blt	a3,a1,11f18 <_vfprintf_r+0x1ad8>
   11ac0:	10061663          	bnez	a2,11bcc <_vfprintf_r+0x178c>
   11ac4:	03813783          	ld	a5,56(sp)
   11ac8:	00197693          	and	a3,s2,1
   11acc:	00d7e6b3          	or	a3,a5,a3
   11ad0:	00069463          	bnez	a3,11ad8 <_vfprintf_r+0x1698>
   11ad4:	c81fe06f          	j	10754 <_vfprintf_r+0x314>
   11ad8:	10812603          	lw	a2,264(sp)
   11adc:	05813783          	ld	a5,88(sp)
   11ae0:	06013683          	ld	a3,96(sp)
   11ae4:	00e78733          	add	a4,a5,a4
   11ae8:	00d43023          	sd	a3,0(s0)
   11aec:	0016069b          	addw	a3,a2,1
   11af0:	00f43423          	sd	a5,8(s0)
   11af4:	10e13823          	sd	a4,272(sp)
   11af8:	10d12423          	sw	a3,264(sp)
   11afc:	00700613          	li	a2,7
   11b00:	6cd64e63          	blt	a2,a3,121dc <_vfprintf_r+0x1d9c>
   11b04:	01040413          	add	s0,s0,16
   11b08:	0f80006f          	j	11c00 <_vfprintf_r+0x17c0>
   11b0c:	02013683          	ld	a3,32(sp)
   11b10:	04097793          	and	a5,s2,64
   11b14:	0006ad03          	lw	s10,0(a3)
   11b18:	16078263          	beqz	a5,11c7c <_vfprintf_r+0x183c>
   11b1c:	030d1d13          	sll	s10,s10,0x30
   11b20:	030d5d13          	srl	s10,s10,0x30
   11b24:	cddff06f          	j	11800 <_vfprintf_r+0x13c0>
   11b28:	00013583          	ld	a1,0(sp)
   11b2c:	10010613          	add	a2,sp,256
   11b30:	00098513          	mv	a0,s3
   11b34:	19d090ef          	jal	1b4d0 <__sprint_r>
   11b38:	e8051c63          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   11b3c:	11013d83          	ld	s11,272(sp)
   11b40:	18010413          	add	s0,sp,384
   11b44:	b4cff06f          	j	10e90 <_vfprintf_r+0xa50>
   11b48:	0017869b          	addw	a3,a5,1
   11b4c:	01b43023          	sd	s11,0(s0)
   11b50:	01943423          	sd	s9,8(s0)
   11b54:	01970733          	add	a4,a4,s9
   11b58:	10e13823          	sd	a4,272(sp)
   11b5c:	10d12423          	sw	a3,264(sp)
   11b60:	00700793          	li	a5,7
   11b64:	00d7c463          	blt	a5,a3,11b6c <_vfprintf_r+0x172c>
   11b68:	be9fe06f          	j	10750 <_vfprintf_r+0x310>
   11b6c:	f1dfe06f          	j	10a88 <_vfprintf_r+0x648>
   11b70:	0f013503          	ld	a0,240(sp)
   11b74:	0f813583          	ld	a1,248(sp)
   11b78:	00000613          	li	a2,0
   11b7c:	00000693          	li	a3,0
   11b80:	33d0e0ef          	jal	206bc <__letf2>
   11b84:	260548e3          	bltz	a0,125f4 <_vfprintf_r+0x21b4>
   11b88:	0cf14703          	lbu	a4,207(sp)
   11b8c:	04700793          	li	a5,71
   11b90:	3b97d663          	bge	a5,s9,11f3c <_vfprintf_r+0x1afc>
   11b94:	000227b7          	lui	a5,0x22
   11b98:	d1078b13          	add	s6,a5,-752 # 21d10 <__clzdi2+0x84>
   11b9c:	f7f97913          	and	s2,s2,-129
   11ba0:	00013c23          	sd	zero,24(sp)
   11ba4:	04013423          	sd	zero,72(sp)
   11ba8:	04013023          	sd	zero,64(sp)
   11bac:	02013823          	sd	zero,48(sp)
   11bb0:	0009091b          	sext.w	s2,s2
   11bb4:	00300c13          	li	s8,3
   11bb8:	00300d13          	li	s10,3
   11bbc:	00000313          	li	t1,0
   11bc0:	00070463          	beqz	a4,11bc8 <_vfprintf_r+0x1788>
   11bc4:	f95fe06f          	j	10b58 <_vfprintf_r+0x718>
   11bc8:	ab9fe06f          	j	10680 <_vfprintf_r+0x240>
   11bcc:	10812583          	lw	a1,264(sp)
   11bd0:	05813783          	ld	a5,88(sp)
   11bd4:	06013683          	ld	a3,96(sp)
   11bd8:	01040413          	add	s0,s0,16
   11bdc:	00e78733          	add	a4,a5,a4
   11be0:	fed43823          	sd	a3,-16(s0)
   11be4:	0015869b          	addw	a3,a1,1
   11be8:	fef43c23          	sd	a5,-8(s0)
   11bec:	10e13823          	sd	a4,272(sp)
   11bf0:	10d12423          	sw	a3,264(sp)
   11bf4:	00700593          	li	a1,7
   11bf8:	5ed5c263          	blt	a1,a3,121dc <_vfprintf_r+0x1d9c>
   11bfc:	2c0642e3          	bltz	a2,126c0 <_vfprintf_r+0x2280>
   11c00:	03813783          	ld	a5,56(sp)
   11c04:	0016861b          	addw	a2,a3,1
   11c08:	01643023          	sd	s6,0(s0)
   11c0c:	00e78733          	add	a4,a5,a4
   11c10:	00f43423          	sd	a5,8(s0)
   11c14:	10e13823          	sd	a4,272(sp)
   11c18:	10c12423          	sw	a2,264(sp)
   11c1c:	00700793          	li	a5,7
   11c20:	00c7c463          	blt	a5,a2,11c28 <_vfprintf_r+0x17e8>
   11c24:	b2dfe06f          	j	10750 <_vfprintf_r+0x310>
   11c28:	e61fe06f          	j	10a88 <_vfprintf_r+0x648>
   11c2c:	000b0513          	mv	a0,s6
   11c30:	06c070ef          	jal	18c9c <strlen>
   11c34:	00050d1b          	sext.w	s10,a0
   11c38:	ef5fe06f          	j	10b2c <_vfprintf_r+0x6ec>
   11c3c:	0014041b          	addw	s0,s0,1
   11c40:	015d0d33          	add	s10,s10,s5
   11c44:	01bcb023          	sd	s11,0(s9)
   11c48:	015cb423          	sd	s5,8(s9)
   11c4c:	11a13823          	sd	s10,272(sp)
   11c50:	10812423          	sw	s0,264(sp)
   11c54:	00700793          	li	a5,7
   11c58:	0087c463          	blt	a5,s0,11c60 <_vfprintf_r+0x1820>
   11c5c:	df9fe06f          	j	10a54 <_vfprintf_r+0x614>
   11c60:	939ff06f          	j	11598 <_vfprintf_r+0x1158>
   11c64:	20097793          	and	a5,s2,512
   11c68:	52078a63          	beqz	a5,1219c <_vfprintf_r+0x1d5c>
   11c6c:	018d1d1b          	sllw	s10,s10,0x18
   11c70:	418d5d1b          	sraw	s10,s10,0x18
   11c74:	000d0793          	mv	a5,s10
   11c78:	8b4ff06f          	j	10d2c <_vfprintf_r+0x8ec>
   11c7c:	20097793          	and	a5,s2,512
   11c80:	50078863          	beqz	a5,12190 <_vfprintf_r+0x1d50>
   11c84:	0ffd7d13          	zext.b	s10,s10
   11c88:	b79ff06f          	j	11800 <_vfprintf_r+0x13c0>
   11c8c:	200df793          	and	a5,s11,512
   11c90:	50078a63          	beqz	a5,121a4 <_vfprintf_r+0x1d64>
   11c94:	0ffd7d13          	zext.b	s10,s10
   11c98:	02e13023          	sd	a4,32(sp)
   11c9c:	00100793          	li	a5,1
   11ca0:	ffdfe06f          	j	10c9c <_vfprintf_r+0x85c>
   11ca4:	20097793          	and	a5,s2,512
   11ca8:	4c078863          	beqz	a5,12178 <_vfprintf_r+0x1d38>
   11cac:	0ffd7d13          	zext.b	s10,s10
   11cb0:	8c8ff06f          	j	10d78 <_vfprintf_r+0x938>
   11cb4:	0f813783          	ld	a5,248(sp)
   11cb8:	5007c063          	bltz	a5,121b8 <_vfprintf_r+0x1d78>
   11cbc:	0cf14703          	lbu	a4,207(sp)
   11cc0:	04700793          	li	a5,71
   11cc4:	1f97d4e3          	bge	a5,s9,126ac <_vfprintf_r+0x226c>
   11cc8:	000227b7          	lui	a5,0x22
   11ccc:	d2078b13          	add	s6,a5,-736 # 21d20 <__clzdi2+0x94>
   11cd0:	ecdff06f          	j	11b9c <_vfprintf_r+0x175c>
   11cd4:	0016059b          	addw	a1,a2,1
   11cd8:	00ec8733          	add	a4,s9,a4
   11cdc:	01b43023          	sd	s11,0(s0)
   11ce0:	01943423          	sd	s9,8(s0)
   11ce4:	10e13823          	sd	a4,272(sp)
   11ce8:	10b12423          	sw	a1,264(sp)
   11cec:	00700693          	li	a3,7
   11cf0:	72b6c863          	blt	a3,a1,12420 <_vfprintf_r+0x1fe0>
   11cf4:	01040413          	add	s0,s0,16
   11cf8:	00070d93          	mv	s11,a4
   11cfc:	f44ff06f          	j	11440 <_vfprintf_r+0x1000>
   11d00:	04013c83          	ld	s9,64(sp)
   11d04:	00022e37          	lui	t3,0x22
   11d08:	08913823          	sd	s1,144(sp)
   11d0c:	09213c23          	sd	s2,152(sp)
   11d10:	0b413023          	sd	s4,160(sp)
   11d14:	05813023          	sd	s8,64(sp)
   11d18:	000b0a13          	mv	s4,s6
   11d1c:	07813903          	ld	s2,120(sp)
   11d20:	08813483          	ld	s1,136(sp)
   11d24:	08013b03          	ld	s6,128(sp)
   11d28:	04813c03          	ld	s8,72(sp)
   11d2c:	00013b83          	ld	s7,0(sp)
   11d30:	00700313          	li	t1,7
   11d34:	01000893          	li	a7,16
   11d38:	f68e0d13          	add	s10,t3,-152 # 21f68 <zeroes.0>
   11d3c:	000d8713          	mv	a4,s11
   11d40:	080c8c63          	beqz	s9,11dd8 <_vfprintf_r+0x1998>
   11d44:	160c0863          	beqz	s8,11eb4 <_vfprintf_r+0x1a74>
   11d48:	fffc0c1b          	addw	s8,s8,-1
   11d4c:	10812783          	lw	a5,264(sp)
   11d50:	01670733          	add	a4,a4,s6
   11d54:	00943023          	sd	s1,0(s0)
   11d58:	0017869b          	addw	a3,a5,1
   11d5c:	01643423          	sd	s6,8(s0)
   11d60:	10e13823          	sd	a4,272(sp)
   11d64:	10d12423          	sw	a3,264(sp)
   11d68:	01040413          	add	s0,s0,16
   11d6c:	14d34a63          	blt	t1,a3,11ec0 <_vfprintf_r+0x1a80>
   11d70:	00094683          	lbu	a3,0(s2)
   11d74:	414a8db3          	sub	s11,s5,s4
   11d78:	000d879b          	sext.w	a5,s11
   11d7c:	0006861b          	sext.w	a2,a3
   11d80:	00f6d463          	bge	a3,a5,11d88 <_vfprintf_r+0x1948>
   11d84:	00060d93          	mv	s11,a2
   11d88:	000d8d9b          	sext.w	s11,s11
   11d8c:	03b05863          	blez	s11,11dbc <_vfprintf_r+0x197c>
   11d90:	10812783          	lw	a5,264(sp)
   11d94:	01b70733          	add	a4,a4,s11
   11d98:	01443023          	sd	s4,0(s0)
   11d9c:	0017869b          	addw	a3,a5,1
   11da0:	01b43423          	sd	s11,8(s0)
   11da4:	10e13823          	sd	a4,272(sp)
   11da8:	10d12423          	sw	a3,264(sp)
   11dac:	12d34e63          	blt	t1,a3,11ee8 <_vfprintf_r+0x1aa8>
   11db0:	00094683          	lbu	a3,0(s2)
   11db4:	01040413          	add	s0,s0,16
   11db8:	0006861b          	sext.w	a2,a3
   11dbc:	fffdc793          	not	a5,s11
   11dc0:	43f7d793          	sra	a5,a5,0x3f
   11dc4:	00fdf7b3          	and	a5,s11,a5
   11dc8:	40f60dbb          	subw	s11,a2,a5
   11dcc:	03b04c63          	bgtz	s11,11e04 <_vfprintf_r+0x19c4>
   11dd0:	00da0a33          	add	s4,s4,a3
   11dd4:	f60c98e3          	bnez	s9,11d44 <_vfprintf_r+0x1904>
   11dd8:	f60c18e3          	bnez	s8,11d48 <_vfprintf_r+0x1908>
   11ddc:	07213c23          	sd	s2,120(sp)
   11de0:	000a0b13          	mv	s6,s4
   11de4:	09013483          	ld	s1,144(sp)
   11de8:	09813903          	ld	s2,152(sp)
   11dec:	0a013a03          	ld	s4,160(sp)
   11df0:	04013c03          	ld	s8,64(sp)
   11df4:	00070d93          	mv	s11,a4
   11df8:	e56afc63          	bgeu	s5,s6,11450 <_vfprintf_r+0x1010>
   11dfc:	000a8b13          	mv	s6,s5
   11e00:	e50ff06f          	j	11450 <_vfprintf_r+0x1010>
   11e04:	00022637          	lui	a2,0x22
   11e08:	10812783          	lw	a5,264(sp)
   11e0c:	f6860613          	add	a2,a2,-152 # 21f68 <zeroes.0>
   11e10:	07b8dc63          	bge	a7,s11,11e88 <_vfprintf_r+0x1a48>
   11e14:	02913823          	sd	s1,48(sp)
   11e18:	000d8493          	mv	s1,s11
   11e1c:	000d0d93          	mv	s11,s10
   11e20:	00c0006f          	j	11e2c <_vfprintf_r+0x19ec>
   11e24:	ff04849b          	addw	s1,s1,-16
   11e28:	0498da63          	bge	a7,s1,11e7c <_vfprintf_r+0x1a3c>
   11e2c:	0017879b          	addw	a5,a5,1
   11e30:	01070713          	add	a4,a4,16
   11e34:	01a43023          	sd	s10,0(s0)
   11e38:	01143423          	sd	a7,8(s0)
   11e3c:	10e13823          	sd	a4,272(sp)
   11e40:	10f12423          	sw	a5,264(sp)
   11e44:	01040413          	add	s0,s0,16
   11e48:	fcf35ee3          	bge	t1,a5,11e24 <_vfprintf_r+0x19e4>
   11e4c:	10010613          	add	a2,sp,256
   11e50:	000b8593          	mv	a1,s7
   11e54:	00098513          	mv	a0,s3
   11e58:	678090ef          	jal	1b4d0 <__sprint_r>
   11e5c:	b6051a63          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   11e60:	01000893          	li	a7,16
   11e64:	ff04849b          	addw	s1,s1,-16
   11e68:	11013703          	ld	a4,272(sp)
   11e6c:	10812783          	lw	a5,264(sp)
   11e70:	18010413          	add	s0,sp,384
   11e74:	00700313          	li	t1,7
   11e78:	fa98cae3          	blt	a7,s1,11e2c <_vfprintf_r+0x19ec>
   11e7c:	000d8613          	mv	a2,s11
   11e80:	00048d93          	mv	s11,s1
   11e84:	03013483          	ld	s1,48(sp)
   11e88:	0017869b          	addw	a3,a5,1
   11e8c:	00ed8733          	add	a4,s11,a4
   11e90:	00c43023          	sd	a2,0(s0)
   11e94:	01b43423          	sd	s11,8(s0)
   11e98:	10e13823          	sd	a4,272(sp)
   11e9c:	10d12423          	sw	a3,264(sp)
   11ea0:	6ed34863          	blt	t1,a3,12590 <_vfprintf_r+0x2150>
   11ea4:	00094683          	lbu	a3,0(s2)
   11ea8:	01040413          	add	s0,s0,16
   11eac:	00da0a33          	add	s4,s4,a3
   11eb0:	f25ff06f          	j	11dd4 <_vfprintf_r+0x1994>
   11eb4:	fff90913          	add	s2,s2,-1
   11eb8:	fffc8c9b          	addw	s9,s9,-1
   11ebc:	e91ff06f          	j	11d4c <_vfprintf_r+0x190c>
   11ec0:	10010613          	add	a2,sp,256
   11ec4:	000b8593          	mv	a1,s7
   11ec8:	00098513          	mv	a0,s3
   11ecc:	604090ef          	jal	1b4d0 <__sprint_r>
   11ed0:	b0051063          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   11ed4:	11013703          	ld	a4,272(sp)
   11ed8:	18010413          	add	s0,sp,384
   11edc:	01000893          	li	a7,16
   11ee0:	00700313          	li	t1,7
   11ee4:	e8dff06f          	j	11d70 <_vfprintf_r+0x1930>
   11ee8:	10010613          	add	a2,sp,256
   11eec:	000b8593          	mv	a1,s7
   11ef0:	00098513          	mv	a0,s3
   11ef4:	5dc090ef          	jal	1b4d0 <__sprint_r>
   11ef8:	ac051c63          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   11efc:	00094683          	lbu	a3,0(s2)
   11f00:	11013703          	ld	a4,272(sp)
   11f04:	18010413          	add	s0,sp,384
   11f08:	0006861b          	sext.w	a2,a3
   11f0c:	01000893          	li	a7,16
   11f10:	00700313          	li	t1,7
   11f14:	ea9ff06f          	j	11dbc <_vfprintf_r+0x197c>
   11f18:	00013583          	ld	a1,0(sp)
   11f1c:	10010613          	add	a2,sp,256
   11f20:	00098513          	mv	a0,s3
   11f24:	5ac090ef          	jal	1b4d0 <__sprint_r>
   11f28:	aa051463          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   11f2c:	0d812603          	lw	a2,216(sp)
   11f30:	11013703          	ld	a4,272(sp)
   11f34:	18010413          	add	s0,sp,384
   11f38:	b89ff06f          	j	11ac0 <_vfprintf_r+0x1680>
   11f3c:	000227b7          	lui	a5,0x22
   11f40:	d0878b13          	add	s6,a5,-760 # 21d08 <__clzdi2+0x7c>
   11f44:	c59ff06f          	j	11b9c <_vfprintf_r+0x175c>
   11f48:	00030913          	mv	s2,t1
   11f4c:	00200693          	li	a3,2
   11f50:	00090713          	mv	a4,s2
   11f54:	0e810893          	add	a7,sp,232
   11f58:	0dc10813          	add	a6,sp,220
   11f5c:	0d810793          	add	a5,sp,216
   11f60:	000b8593          	mv	a1,s7
   11f64:	000c0613          	mv	a2,s8
   11f68:	00098513          	mv	a0,s3
   11f6c:	02613823          	sd	t1,48(sp)
   11f70:	4b0030ef          	jal	15420 <_ldtoa_r>
   11f74:	06700713          	li	a4,103
   11f78:	03013303          	ld	t1,48(sp)
   11f7c:	00050b13          	mv	s6,a0
   11f80:	5eec8c63          	beq	s9,a4,12578 <_vfprintf_r+0x2138>
   11f84:	04700713          	li	a4,71
   11f88:	5eec8863          	beq	s9,a4,12578 <_vfprintf_r+0x2138>
   11f8c:	fdfcfa93          	and	s5,s9,-33
   11f90:	04600713          	li	a4,70
   11f94:	01250d33          	add	s10,a0,s2
   11f98:	66ea8663          	beq	s5,a4,12604 <_vfprintf_r+0x21c4>
   11f9c:	000c0593          	mv	a1,s8
   11fa0:	00000613          	li	a2,0
   11fa4:	00000693          	li	a3,0
   11fa8:	000b8513          	mv	a0,s7
   11fac:	02613823          	sd	t1,48(sp)
   11fb0:	55c0e0ef          	jal	2050c <__eqtf2>
   11fb4:	03013303          	ld	t1,48(sp)
   11fb8:	000d0c13          	mv	s8,s10
   11fbc:	02050263          	beqz	a0,11fe0 <_vfprintf_r+0x1ba0>
   11fc0:	0e813c03          	ld	s8,232(sp)
   11fc4:	01ac7e63          	bgeu	s8,s10,11fe0 <_vfprintf_r+0x1ba0>
   11fc8:	03000693          	li	a3,48
   11fcc:	001c0793          	add	a5,s8,1
   11fd0:	0ef13423          	sd	a5,232(sp)
   11fd4:	00dc0023          	sb	a3,0(s8)
   11fd8:	0e813c03          	ld	s8,232(sp)
   11fdc:	ffac68e3          	bltu	s8,s10,11fcc <_vfprintf_r+0x1b8c>
   11fe0:	416c07bb          	subw	a5,s8,s6
   11fe4:	02f13c23          	sd	a5,56(sp)
   11fe8:	0d812703          	lw	a4,216(sp)
   11fec:	04700693          	li	a3,71
   11ff0:	02e13823          	sd	a4,48(sp)
   11ff4:	4cda8c63          	beq	s5,a3,124cc <_vfprintf_r+0x208c>
   11ff8:	04600693          	li	a3,70
   11ffc:	72da8a63          	beq	s5,a3,12730 <_vfprintf_r+0x22f0>
   12000:	fff70d1b          	addw	s10,a4,-1
   12004:	0da12c23          	sw	s10,216(sp)
   12008:	06100693          	li	a3,97
   1200c:	1cdc80e3          	beq	s9,a3,129cc <_vfprintf_r+0x258c>
   12010:	04100613          	li	a2,65
   12014:	05000693          	li	a3,80
   12018:	4ccc9863          	bne	s9,a2,124e8 <_vfprintf_r+0x20a8>
   1201c:	00100613          	li	a2,1
   12020:	0ed10023          	sb	a3,224(sp)
   12024:	02b00693          	li	a3,43
   12028:	000d5863          	bgez	s10,12038 <_vfprintf_r+0x1bf8>
   1202c:	00100d13          	li	s10,1
   12030:	40ed0d3b          	subw	s10,s10,a4
   12034:	02d00693          	li	a3,45
   12038:	0ed100a3          	sb	a3,225(sp)
   1203c:	00900713          	li	a4,9
   12040:	77a75e63          	bge	a4,s10,127bc <_vfprintf_r+0x237c>
   12044:	0ef10913          	add	s2,sp,239
   12048:	00090a93          	mv	s5,s2
   1204c:	06300b93          	li	s7,99
   12050:	00a00593          	li	a1,10
   12054:	000d0513          	mv	a0,s10
   12058:	3f90f0ef          	jal	21c50 <__moddi3>
   1205c:	0305079b          	addw	a5,a0,48
   12060:	fefa8fa3          	sb	a5,-1(s5)
   12064:	000d0513          	mv	a0,s10
   12068:	00a00593          	li	a1,10
   1206c:	000d0c13          	mv	s8,s10
   12070:	35d0f0ef          	jal	21bcc <__divdi3>
   12074:	000a8d93          	mv	s11,s5
   12078:	00050d1b          	sext.w	s10,a0
   1207c:	fffa8a93          	add	s5,s5,-1
   12080:	fd8bc8e3          	blt	s7,s8,12050 <_vfprintf_r+0x1c10>
   12084:	030d0d1b          	addw	s10,s10,48
   12088:	ffed8713          	add	a4,s11,-2
   1208c:	ffaa8fa3          	sb	s10,-1(s5)
   12090:	1b277ae3          	bgeu	a4,s2,12a44 <_vfprintf_r+0x2604>
   12094:	0e210693          	add	a3,sp,226
   12098:	00074783          	lbu	a5,0(a4)
   1209c:	00170713          	add	a4,a4,1
   120a0:	00168693          	add	a3,a3,1
   120a4:	fef68fa3          	sb	a5,-1(a3)
   120a8:	ff2718e3          	bne	a4,s2,12098 <_vfprintf_r+0x1c58>
   120ac:	0f110713          	add	a4,sp,241
   120b0:	0e210793          	add	a5,sp,226
   120b4:	41b70733          	sub	a4,a4,s11
   120b8:	00e78733          	add	a4,a5,a4
   120bc:	0e010693          	add	a3,sp,224
   120c0:	40d707bb          	subw	a5,a4,a3
   120c4:	06f13823          	sd	a5,112(sp)
   120c8:	07013703          	ld	a4,112(sp)
   120cc:	03813783          	ld	a5,56(sp)
   120d0:	00100613          	li	a2,1
   120d4:	00e78d3b          	addw	s10,a5,a4
   120d8:	000d0713          	mv	a4,s10
   120dc:	02f658e3          	bge	a2,a5,1290c <_vfprintf_r+0x24cc>
   120e0:	05813783          	ld	a5,88(sp)
   120e4:	00f70d3b          	addw	s10,a4,a5
   120e8:	04013783          	ld	a5,64(sp)
   120ec:	fffd4813          	not	a6,s10
   120f0:	43f85813          	sra	a6,a6,0x3f
   120f4:	bff7f913          	and	s2,a5,-1025
   120f8:	0009091b          	sext.w	s2,s2
   120fc:	010d7833          	and	a6,s10,a6
   12100:	10096913          	or	s2,s2,256
   12104:	00080c1b          	sext.w	s8,a6
   12108:	04013423          	sd	zero,72(sp)
   1210c:	04013023          	sd	zero,64(sp)
   12110:	02013823          	sd	zero,48(sp)
   12114:	09813783          	ld	a5,152(sp)
   12118:	3c078e63          	beqz	a5,124f4 <_vfprintf_r+0x20b4>
   1211c:	02d00713          	li	a4,45
   12120:	0ce107a3          	sb	a4,207(sp)
   12124:	00000313          	li	t1,0
   12128:	001c0c1b          	addw	s8,s8,1
   1212c:	d54fe06f          	j	10680 <_vfprintf_r+0x240>
   12130:	00013583          	ld	a1,0(sp)
   12134:	10010613          	add	a2,sp,256
   12138:	00098513          	mv	a0,s3
   1213c:	394090ef          	jal	1b4d0 <__sprint_r>
   12140:	88051863          	bnez	a0,111d0 <_vfprintf_r+0xd90>
   12144:	11013d83          	ld	s11,272(sp)
   12148:	18010413          	add	s0,sp,384
   1214c:	adcff06f          	j	11428 <_vfprintf_r+0xfe8>
   12150:	00600693          	li	a3,6
   12154:	f5cff06f          	j	118b0 <_vfprintf_r+0x1470>
   12158:	416a8cb3          	sub	s9,s5,s6
   1215c:	40d7863b          	subw	a2,a5,a3
   12160:	000c879b          	sext.w	a5,s9
   12164:	000d8713          	mv	a4,s11
   12168:	00f65463          	bge	a2,a5,12170 <_vfprintf_r+0x1d30>
   1216c:	00060c93          	mv	s9,a2
   12170:	000c8c9b          	sext.w	s9,s9
   12174:	b70ff06f          	j	114e4 <_vfprintf_r+0x10a4>
   12178:	020d1d13          	sll	s10,s10,0x20
   1217c:	020d5d13          	srl	s10,s10,0x20
   12180:	bf9fe06f          	j	10d78 <_vfprintf_r+0x938>
   12184:	01013783          	ld	a5,16(sp)
   12188:	00f71023          	sh	a5,0(a4)
   1218c:	c29fe06f          	j	10db4 <_vfprintf_r+0x974>
   12190:	020d1d13          	sll	s10,s10,0x20
   12194:	020d5d13          	srl	s10,s10,0x20
   12198:	e68ff06f          	j	11800 <_vfprintf_r+0x13c0>
   1219c:	000d0793          	mv	a5,s10
   121a0:	b8dfe06f          	j	10d2c <_vfprintf_r+0x8ec>
   121a4:	020d1d13          	sll	s10,s10,0x20
   121a8:	020d5d13          	srl	s10,s10,0x20
   121ac:	02e13023          	sd	a4,32(sp)
   121b0:	00100793          	li	a5,1
   121b4:	ae9fe06f          	j	10c9c <_vfprintf_r+0x85c>
   121b8:	02d00793          	li	a5,45
   121bc:	0cf107a3          	sb	a5,207(sp)
   121c0:	02d00713          	li	a4,45
   121c4:	afdff06f          	j	11cc0 <_vfprintf_r+0x1880>
   121c8:	00013583          	ld	a1,0(sp)
   121cc:	05013503          	ld	a0,80(sp)
   121d0:	10010613          	add	a2,sp,256
   121d4:	2fc090ef          	jal	1b4d0 <__sprint_r>
   121d8:	ddcfe06f          	j	107b4 <_vfprintf_r+0x374>
   121dc:	00013583          	ld	a1,0(sp)
   121e0:	10010613          	add	a2,sp,256
   121e4:	00098513          	mv	a0,s3
   121e8:	2e8090ef          	jal	1b4d0 <__sprint_r>
   121ec:	00050463          	beqz	a0,121f4 <_vfprintf_r+0x1db4>
   121f0:	fe1fe06f          	j	111d0 <_vfprintf_r+0xd90>
   121f4:	0d812603          	lw	a2,216(sp)
   121f8:	11013703          	ld	a4,272(sp)
   121fc:	10812683          	lw	a3,264(sp)
   12200:	18010413          	add	s0,sp,384
   12204:	9f9ff06f          	j	11bfc <_vfprintf_r+0x17bc>
   12208:	05800713          	li	a4,88
   1220c:	00296793          	or	a5,s2,2
   12210:	03000693          	li	a3,48
   12214:	0007879b          	sext.w	a5,a5
   12218:	0ce108a3          	sb	a4,209(sp)
   1221c:	0cd10823          	sb	a3,208(sp)
   12220:	06300713          	li	a4,99
   12224:	04f13023          	sd	a5,64(sp)
   12228:	00013c23          	sd	zero,24(sp)
   1222c:	11810b13          	add	s6,sp,280
   12230:	64674c63          	blt	a4,t1,12888 <_vfprintf_r+0x2448>
   12234:	10296913          	or	s2,s2,258
   12238:	0f813c03          	ld	s8,248(sp)
   1223c:	0009079b          	sext.w	a5,s2
   12240:	08f13823          	sd	a5,144(sp)
   12244:	08013c23          	sd	zero,152(sp)
   12248:	0f013b83          	ld	s7,240(sp)
   1224c:	300c4a63          	bltz	s8,12560 <_vfprintf_r+0x2120>
   12250:	06100713          	li	a4,97
   12254:	00ec8463          	beq	s9,a4,1225c <_vfprintf_r+0x1e1c>
   12258:	ef8fe06f          	j	10950 <_vfprintf_r+0x510>
   1225c:	000c0593          	mv	a1,s8
   12260:	000b8513          	mv	a0,s7
   12264:	02613823          	sd	t1,48(sp)
   12268:	7400f0ef          	jal	219a8 <__trunctfdf2>
   1226c:	0d810593          	add	a1,sp,216
   12270:	50c060ef          	jal	1877c <frexp>
   12274:	6440f0ef          	jal	218b8 <__extenddftf2>
   12278:	00022737          	lui	a4,0x22
   1227c:	f9873683          	ld	a3,-104(a4) # 21f98 <blanks.1+0x20>
   12280:	00000613          	li	a2,0
   12284:	5440e0ef          	jal	207c8 <__multf3>
   12288:	00000613          	li	a2,0
   1228c:	00000693          	li	a3,0
   12290:	00050d93          	mv	s11,a0
   12294:	00058913          	mv	s2,a1
   12298:	2740e0ef          	jal	2050c <__eqtf2>
   1229c:	03013303          	ld	t1,48(sp)
   122a0:	00051663          	bnez	a0,122ac <_vfprintf_r+0x1e6c>
   122a4:	00100713          	li	a4,1
   122a8:	0ce12c23          	sw	a4,216(sp)
   122ac:	00022737          	lui	a4,0x22
   122b0:	d4070793          	add	a5,a4,-704 # 21d40 <__clzdi2+0xb4>
   122b4:	02f13c23          	sd	a5,56(sp)
   122b8:	000226b7          	lui	a3,0x22
   122bc:	fa86b783          	ld	a5,-88(a3) # 21fa8 <blanks.1+0x30>
   122c0:	02031713          	sll	a4,t1,0x20
   122c4:	02075713          	srl	a4,a4,0x20
   122c8:	00170713          	add	a4,a4,1
   122cc:	02f13823          	sd	a5,48(sp)
   122d0:	0003061b          	sext.w	a2,t1
   122d4:	00eb07b3          	add	a5,s6,a4
   122d8:	04913423          	sd	s1,72(sp)
   122dc:	0b413023          	sd	s4,160(sp)
   122e0:	0a813823          	sd	s0,176(sp)
   122e4:	03813483          	ld	s1,56(sp)
   122e8:	0ac13c23          	sd	a2,184(sp)
   122ec:	0a613423          	sd	t1,168(sp)
   122f0:	00078413          	mv	s0,a5
   122f4:	000b0a13          	mv	s4,s6
   122f8:	00098b93          	mv	s7,s3
   122fc:	000b0d13          	mv	s10,s6
   12300:	0140006f          	j	12314 <_vfprintf_r+0x1ed4>
   12304:	00000613          	li	a2,0
   12308:	00000693          	li	a3,0
   1230c:	2000e0ef          	jal	2050c <__eqtf2>
   12310:	5a050663          	beqz	a0,128bc <_vfprintf_r+0x247c>
   12314:	03013683          	ld	a3,48(sp)
   12318:	00000613          	li	a2,0
   1231c:	000d8513          	mv	a0,s11
   12320:	00090593          	mv	a1,s2
   12324:	4a40e0ef          	jal	207c8 <__multf3>
   12328:	00058913          	mv	s2,a1
   1232c:	00050993          	mv	s3,a0
   12330:	4980f0ef          	jal	217c8 <__fixtfsi>
   12334:	00050c1b          	sext.w	s8,a0
   12338:	000c0513          	mv	a0,s8
   1233c:	4f40f0ef          	jal	21830 <__floatsitf>
   12340:	00058693          	mv	a3,a1
   12344:	00050613          	mv	a2,a0
   12348:	00090593          	mv	a1,s2
   1234c:	00098513          	mv	a0,s3
   12350:	3c50e0ef          	jal	20f14 <__subtf3>
   12354:	01848733          	add	a4,s1,s8
   12358:	00074683          	lbu	a3,0(a4)
   1235c:	000a0993          	mv	s3,s4
   12360:	001a0a13          	add	s4,s4,1
   12364:	feda0fa3          	sb	a3,-1(s4)
   12368:	00050a93          	mv	s5,a0
   1236c:	00058b13          	mv	s6,a1
   12370:	00050d93          	mv	s11,a0
   12374:	00058913          	mv	s2,a1
   12378:	f94416e3          	bne	s0,s4,12304 <_vfprintf_r+0x1ec4>
   1237c:	000a0a93          	mv	s5,s4
   12380:	04813483          	ld	s1,72(sp)
   12384:	0a813303          	ld	t1,168(sp)
   12388:	0b013403          	ld	s0,176(sp)
   1238c:	0a013a03          	ld	s4,160(sp)
   12390:	03313823          	sd	s3,48(sp)
   12394:	000d0b13          	mv	s6,s10
   12398:	000b8993          	mv	s3,s7
   1239c:	00050d13          	mv	s10,a0
   123a0:	00058b93          	mv	s7,a1
   123a4:	fff00d93          	li	s11,-1
   123a8:	000226b7          	lui	a3,0x22
   123ac:	fb86b903          	ld	s2,-72(a3) # 21fb8 <blanks.1+0x40>
   123b0:	00000613          	li	a2,0
   123b4:	000d0513          	mv	a0,s10
   123b8:	00090693          	mv	a3,s2
   123bc:	000b8593          	mv	a1,s7
   123c0:	04613423          	sd	t1,72(sp)
   123c4:	1ec0e0ef          	jal	205b0 <__getf2>
   123c8:	04813303          	ld	t1,72(sp)
   123cc:	46a04463          	bgtz	a0,12834 <_vfprintf_r+0x23f4>
   123d0:	00000613          	li	a2,0
   123d4:	00090693          	mv	a3,s2
   123d8:	000d0513          	mv	a0,s10
   123dc:	000b8593          	mv	a1,s7
   123e0:	12c0e0ef          	jal	2050c <__eqtf2>
   123e4:	04813303          	ld	t1,72(sp)
   123e8:	00051663          	bnez	a0,123f4 <_vfprintf_r+0x1fb4>
   123ec:	001c7c13          	and	s8,s8,1
   123f0:	440c1263          	bnez	s8,12834 <_vfprintf_r+0x23f4>
   123f4:	001d8c1b          	addw	s8,s11,1
   123f8:	018a8c33          	add	s8,s5,s8
   123fc:	03000693          	li	a3,48
   12400:	480dc063          	bltz	s11,12880 <_vfprintf_r+0x2440>
   12404:	001a8a93          	add	s5,s5,1
   12408:	feda8fa3          	sb	a3,-1(s5)
   1240c:	ff5c1ce3          	bne	s8,s5,12404 <_vfprintf_r+0x1fc4>
   12410:	416c07bb          	subw	a5,s8,s6
   12414:	02f13c23          	sd	a5,56(sp)
   12418:	fdfcfa93          	and	s5,s9,-33
   1241c:	bcdff06f          	j	11fe8 <_vfprintf_r+0x1ba8>
   12420:	00013583          	ld	a1,0(sp)
   12424:	10010613          	add	a2,sp,256
   12428:	00098513          	mv	a0,s3
   1242c:	0a4090ef          	jal	1b4d0 <__sprint_r>
   12430:	00050463          	beqz	a0,12438 <_vfprintf_r+0x1ff8>
   12434:	d9dfe06f          	j	111d0 <_vfprintf_r+0xd90>
   12438:	11013d83          	ld	s11,272(sp)
   1243c:	18010413          	add	s0,sp,384
   12440:	800ff06f          	j	11440 <_vfprintf_r+0x1000>
   12444:	0013091b          	addw	s2,t1,1
   12448:	00200693          	li	a3,2
   1244c:	b05ff06f          	j	11f50 <_vfprintf_r+0x1b10>
   12450:	00030913          	mv	s2,t1
   12454:	00300693          	li	a3,3
   12458:	af9ff06f          	j	11f50 <_vfprintf_r+0x1b10>
   1245c:	000c0593          	mv	a1,s8
   12460:	000b8513          	mv	a0,s7
   12464:	02613823          	sd	t1,48(sp)
   12468:	5400f0ef          	jal	219a8 <__trunctfdf2>
   1246c:	0d810593          	add	a1,sp,216
   12470:	30c060ef          	jal	1877c <frexp>
   12474:	4440f0ef          	jal	218b8 <__extenddftf2>
   12478:	00022737          	lui	a4,0x22
   1247c:	f9873683          	ld	a3,-104(a4) # 21f98 <blanks.1+0x20>
   12480:	00000613          	li	a2,0
   12484:	3440e0ef          	jal	207c8 <__multf3>
   12488:	00000613          	li	a2,0
   1248c:	00000693          	li	a3,0
   12490:	00050d93          	mv	s11,a0
   12494:	00058913          	mv	s2,a1
   12498:	0740e0ef          	jal	2050c <__eqtf2>
   1249c:	03013303          	ld	t1,48(sp)
   124a0:	00051663          	bnez	a0,124ac <_vfprintf_r+0x206c>
   124a4:	00100713          	li	a4,1
   124a8:	0ce12c23          	sw	a4,216(sp)
   124ac:	00022737          	lui	a4,0x22
   124b0:	d2870793          	add	a5,a4,-728 # 21d28 <__clzdi2+0x9c>
   124b4:	02f13c23          	sd	a5,56(sp)
   124b8:	e01ff06f          	j	122b8 <_vfprintf_r+0x1e78>
   124bc:	0e813c03          	ld	s8,232(sp)
   124c0:	0d812703          	lw	a4,216(sp)
   124c4:	416c07bb          	subw	a5,s8,s6
   124c8:	02f13c23          	sd	a5,56(sp)
   124cc:	ffd00693          	li	a3,-3
   124d0:	02e13823          	sd	a4,48(sp)
   124d4:	00d74463          	blt	a4,a3,124dc <_vfprintf_r+0x209c>
   124d8:	02e35863          	bge	t1,a4,12508 <_vfprintf_r+0x20c8>
   124dc:	fff70d1b          	addw	s10,a4,-1
   124e0:	ffec8c9b          	addw	s9,s9,-2
   124e4:	0da12c23          	sw	s10,216(sp)
   124e8:	0ffcf693          	zext.b	a3,s9
   124ec:	00000613          	li	a2,0
   124f0:	b31ff06f          	j	12020 <_vfprintf_r+0x1be0>
   124f4:	0cf14703          	lbu	a4,207(sp)
   124f8:	00000313          	li	t1,0
   124fc:	00070463          	beqz	a4,12504 <_vfprintf_r+0x20c4>
   12500:	e58fe06f          	j	10b58 <_vfprintf_r+0x718>
   12504:	97cfe06f          	j	10680 <_vfprintf_r+0x240>
   12508:	03813783          	ld	a5,56(sp)
   1250c:	26f74463          	blt	a4,a5,12774 <_vfprintf_r+0x2334>
   12510:	04013783          	ld	a5,64(sp)
   12514:	00070d13          	mv	s10,a4
   12518:	0017f613          	and	a2,a5,1
   1251c:	00060663          	beqz	a2,12528 <_vfprintf_r+0x20e8>
   12520:	05813783          	ld	a5,88(sp)
   12524:	00e78d3b          	addw	s10,a5,a4
   12528:	04013783          	ld	a5,64(sp)
   1252c:	4007f613          	and	a2,a5,1024
   12530:	00060463          	beqz	a2,12538 <_vfprintf_r+0x20f8>
   12534:	3ee04863          	bgtz	a4,12924 <_vfprintf_r+0x24e4>
   12538:	fffd4813          	not	a6,s10
   1253c:	43f85813          	sra	a6,a6,0x3f
   12540:	09013903          	ld	s2,144(sp)
   12544:	010d7833          	and	a6,s10,a6
   12548:	00080c1b          	sext.w	s8,a6
   1254c:	06700c93          	li	s9,103
   12550:	04013423          	sd	zero,72(sp)
   12554:	04013023          	sd	zero,64(sp)
   12558:	bbdff06f          	j	12114 <_vfprintf_r+0x1cd4>
   1255c:	00013c23          	sd	zero,24(sp)
   12560:	fff00713          	li	a4,-1
   12564:	03f71713          	sll	a4,a4,0x3f
   12568:	02d00793          	li	a5,45
   1256c:	00ec4c33          	xor	s8,s8,a4
   12570:	08f13c23          	sd	a5,152(sp)
   12574:	cddff06f          	j	12250 <_vfprintf_r+0x1e10>
   12578:	04013783          	ld	a5,64(sp)
   1257c:	0017f713          	and	a4,a5,1
   12580:	f2070ee3          	beqz	a4,124bc <_vfprintf_r+0x207c>
   12584:	012b0d33          	add	s10,s6,s2
   12588:	04700a93          	li	s5,71
   1258c:	a11ff06f          	j	11f9c <_vfprintf_r+0x1b5c>
   12590:	10010613          	add	a2,sp,256
   12594:	000b8593          	mv	a1,s7
   12598:	00098513          	mv	a0,s3
   1259c:	735080ef          	jal	1b4d0 <__sprint_r>
   125a0:	00050463          	beqz	a0,125a8 <_vfprintf_r+0x2168>
   125a4:	c2dfe06f          	j	111d0 <_vfprintf_r+0xd90>
   125a8:	00094683          	lbu	a3,0(s2)
   125ac:	11013703          	ld	a4,272(sp)
   125b0:	18010413          	add	s0,sp,384
   125b4:	01000893          	li	a7,16
   125b8:	00700313          	li	t1,7
   125bc:	00da0a33          	add	s4,s4,a3
   125c0:	815ff06f          	j	11dd4 <_vfprintf_r+0x1994>
   125c4:	07800713          	li	a4,120
   125c8:	c45ff06f          	j	1220c <_vfprintf_r+0x1dcc>
   125cc:	00013583          	ld	a1,0(sp)
   125d0:	10010613          	add	a2,sp,256
   125d4:	00098513          	mv	a0,s3
   125d8:	6f9080ef          	jal	1b4d0 <__sprint_r>
   125dc:	00050463          	beqz	a0,125e4 <_vfprintf_r+0x21a4>
   125e0:	bf1fe06f          	j	111d0 <_vfprintf_r+0xd90>
   125e4:	0d812683          	lw	a3,216(sp)
   125e8:	11013703          	ld	a4,272(sp)
   125ec:	18010413          	add	s0,sp,384
   125f0:	ea9fe06f          	j	11498 <_vfprintf_r+0x1058>
   125f4:	02d00793          	li	a5,45
   125f8:	0cf107a3          	sb	a5,207(sp)
   125fc:	02d00713          	li	a4,45
   12600:	d8cff06f          	j	11b8c <_vfprintf_r+0x174c>
   12604:	00054683          	lbu	a3,0(a0)
   12608:	03000713          	li	a4,48
   1260c:	00e68863          	beq	a3,a4,1261c <_vfprintf_r+0x21dc>
   12610:	0d812683          	lw	a3,216(sp)
   12614:	00dd0d33          	add	s10,s10,a3
   12618:	985ff06f          	j	11f9c <_vfprintf_r+0x1b5c>
   1261c:	00000613          	li	a2,0
   12620:	00000693          	li	a3,0
   12624:	000b8513          	mv	a0,s7
   12628:	000c0593          	mv	a1,s8
   1262c:	02613823          	sd	t1,48(sp)
   12630:	6dd0d0ef          	jal	2050c <__eqtf2>
   12634:	03013303          	ld	t1,48(sp)
   12638:	fc050ce3          	beqz	a0,12610 <_vfprintf_r+0x21d0>
   1263c:	00100713          	li	a4,1
   12640:	412706bb          	subw	a3,a4,s2
   12644:	0cd12c23          	sw	a3,216(sp)
   12648:	00dd0d33          	add	s10,s10,a3
   1264c:	951ff06f          	j	11f9c <_vfprintf_r+0x1b5c>
   12650:	0cf14703          	lbu	a4,207(sp)
   12654:	03513023          	sd	s5,32(sp)
   12658:	04013423          	sd	zero,72(sp)
   1265c:	04013023          	sd	zero,64(sp)
   12660:	02013823          	sd	zero,48(sp)
   12664:	00030c13          	mv	s8,t1
   12668:	00030d13          	mv	s10,t1
   1266c:	00000313          	li	t1,0
   12670:	00070463          	beqz	a4,12678 <_vfprintf_r+0x2238>
   12674:	ce4fe06f          	j	10b58 <_vfprintf_r+0x718>
   12678:	808fe06f          	j	10680 <_vfprintf_r+0x240>
   1267c:	00013583          	ld	a1,0(sp)
   12680:	10010613          	add	a2,sp,256
   12684:	00098513          	mv	a0,s3
   12688:	649080ef          	jal	1b4d0 <__sprint_r>
   1268c:	00050463          	beqz	a0,12694 <_vfprintf_r+0x2254>
   12690:	b41fe06f          	j	111d0 <_vfprintf_r+0xd90>
   12694:	0d812603          	lw	a2,216(sp)
   12698:	03813783          	ld	a5,56(sp)
   1269c:	11013703          	ld	a4,272(sp)
   126a0:	18010413          	add	s0,sp,384
   126a4:	40c7863b          	subw	a2,a5,a2
   126a8:	e3dfe06f          	j	114e4 <_vfprintf_r+0x10a4>
   126ac:	000227b7          	lui	a5,0x22
   126b0:	d1878b13          	add	s6,a5,-744 # 21d18 <__clzdi2+0x8c>
   126b4:	ce8ff06f          	j	11b9c <_vfprintf_r+0x175c>
   126b8:	00090d93          	mv	s11,s2
   126bc:	c31fe06f          	j	112ec <_vfprintf_r+0xeac>
   126c0:	00022f37          	lui	t5,0x22
   126c4:	ff000593          	li	a1,-16
   126c8:	40c00cbb          	negw	s9,a2
   126cc:	f68f0d93          	add	s11,t5,-152 # 21f68 <zeroes.0>
   126d0:	01000d13          	li	s10,16
   126d4:	00700a93          	li	s5,7
   126d8:	00b64863          	blt	a2,a1,126e8 <_vfprintf_r+0x22a8>
   126dc:	1100006f          	j	127ec <_vfprintf_r+0x23ac>
   126e0:	ff0c8c9b          	addw	s9,s9,-16
   126e4:	119d5463          	bge	s10,s9,127ec <_vfprintf_r+0x23ac>
   126e8:	0016869b          	addw	a3,a3,1
   126ec:	01070713          	add	a4,a4,16
   126f0:	01b43023          	sd	s11,0(s0)
   126f4:	01a43423          	sd	s10,8(s0)
   126f8:	10e13823          	sd	a4,272(sp)
   126fc:	10d12423          	sw	a3,264(sp)
   12700:	01040413          	add	s0,s0,16
   12704:	fcdadee3          	bge	s5,a3,126e0 <_vfprintf_r+0x22a0>
   12708:	00013583          	ld	a1,0(sp)
   1270c:	10010613          	add	a2,sp,256
   12710:	00098513          	mv	a0,s3
   12714:	5bd080ef          	jal	1b4d0 <__sprint_r>
   12718:	00050463          	beqz	a0,12720 <_vfprintf_r+0x22e0>
   1271c:	ab5fe06f          	j	111d0 <_vfprintf_r+0xd90>
   12720:	11013703          	ld	a4,272(sp)
   12724:	10812683          	lw	a3,264(sp)
   12728:	18010413          	add	s0,sp,384
   1272c:	fb5ff06f          	j	126e0 <_vfprintf_r+0x22a0>
   12730:	04013783          	ld	a5,64(sp)
   12734:	0017f713          	and	a4,a5,1
   12738:	03013783          	ld	a5,48(sp)
   1273c:	00e36733          	or	a4,t1,a4
   12740:	28f05a63          	blez	a5,129d4 <_vfprintf_r+0x2594>
   12744:	26071a63          	bnez	a4,129b8 <_vfprintf_r+0x2578>
   12748:	03013d03          	ld	s10,48(sp)
   1274c:	06600c93          	li	s9,102
   12750:	04013783          	ld	a5,64(sp)
   12754:	4007f713          	and	a4,a5,1024
   12758:	1c071863          	bnez	a4,12928 <_vfprintf_r+0x24e8>
   1275c:	fffd4813          	not	a6,s10
   12760:	43f85813          	sra	a6,a6,0x3f
   12764:	010d7833          	and	a6,s10,a6
   12768:	09013903          	ld	s2,144(sp)
   1276c:	00080c1b          	sext.w	s8,a6
   12770:	de1ff06f          	j	12550 <_vfprintf_r+0x2110>
   12774:	05813783          	ld	a5,88(sp)
   12778:	03813703          	ld	a4,56(sp)
   1277c:	06700c93          	li	s9,103
   12780:	00e78d3b          	addw	s10,a5,a4
   12784:	03013783          	ld	a5,48(sp)
   12788:	fcf044e3          	bgtz	a5,12750 <_vfprintf_r+0x2310>
   1278c:	40fd073b          	subw	a4,s10,a5
   12790:	0017071b          	addw	a4,a4,1
   12794:	00070d1b          	sext.w	s10,a4
   12798:	fffd4613          	not	a2,s10
   1279c:	43f65613          	sra	a2,a2,0x3f
   127a0:	00c77733          	and	a4,a4,a2
   127a4:	09013903          	ld	s2,144(sp)
   127a8:	00070c1b          	sext.w	s8,a4
   127ac:	da5ff06f          	j	12550 <_vfprintf_r+0x2110>
   127b0:	fff00793          	li	a5,-1
   127b4:	00f13823          	sd	a5,16(sp)
   127b8:	810fe06f          	j	107c8 <_vfprintf_r+0x388>
   127bc:	0e210713          	add	a4,sp,226
   127c0:	00061863          	bnez	a2,127d0 <_vfprintf_r+0x2390>
   127c4:	03000713          	li	a4,48
   127c8:	0ee10123          	sb	a4,226(sp)
   127cc:	0e310713          	add	a4,sp,227
   127d0:	20010793          	add	a5,sp,512
   127d4:	40f706b3          	sub	a3,a4,a5
   127d8:	030d0d1b          	addw	s10,s10,48
   127dc:	1216879b          	addw	a5,a3,289
   127e0:	01a70023          	sb	s10,0(a4)
   127e4:	06f13823          	sd	a5,112(sp)
   127e8:	8e1ff06f          	j	120c8 <_vfprintf_r+0x1c88>
   127ec:	0016869b          	addw	a3,a3,1
   127f0:	01970733          	add	a4,a4,s9
   127f4:	01b43023          	sd	s11,0(s0)
   127f8:	01943423          	sd	s9,8(s0)
   127fc:	10e13823          	sd	a4,272(sp)
   12800:	10d12423          	sw	a3,264(sp)
   12804:	00700613          	li	a2,7
   12808:	aed65e63          	bge	a2,a3,11b04 <_vfprintf_r+0x16c4>
   1280c:	00013583          	ld	a1,0(sp)
   12810:	10010613          	add	a2,sp,256
   12814:	00098513          	mv	a0,s3
   12818:	4b9080ef          	jal	1b4d0 <__sprint_r>
   1281c:	00050463          	beqz	a0,12824 <_vfprintf_r+0x23e4>
   12820:	9b1fe06f          	j	111d0 <_vfprintf_r+0xd90>
   12824:	11013703          	ld	a4,272(sp)
   12828:	10812683          	lw	a3,264(sp)
   1282c:	18010413          	add	s0,sp,384
   12830:	bd0ff06f          	j	11c00 <_vfprintf_r+0x17c0>
   12834:	03013783          	ld	a5,48(sp)
   12838:	000a8693          	mv	a3,s5
   1283c:	0ef13423          	sd	a5,232(sp)
   12840:	03813783          	ld	a5,56(sp)
   12844:	fffac603          	lbu	a2,-1(s5)
   12848:	00f7c583          	lbu	a1,15(a5)
   1284c:	02c59063          	bne	a1,a2,1286c <_vfprintf_r+0x242c>
   12850:	03000513          	li	a0,48
   12854:	fea68fa3          	sb	a0,-1(a3)
   12858:	0e813683          	ld	a3,232(sp)
   1285c:	fff68793          	add	a5,a3,-1
   12860:	0ef13423          	sd	a5,232(sp)
   12864:	fff6c603          	lbu	a2,-1(a3)
   12868:	fec586e3          	beq	a1,a2,12854 <_vfprintf_r+0x2414>
   1286c:	0016059b          	addw	a1,a2,1
   12870:	03900513          	li	a0,57
   12874:	0ff5f593          	zext.b	a1,a1
   12878:	02a60a63          	beq	a2,a0,128ac <_vfprintf_r+0x246c>
   1287c:	feb68fa3          	sb	a1,-1(a3)
   12880:	000a8c13          	mv	s8,s5
   12884:	b8dff06f          	j	12410 <_vfprintf_r+0x1fd0>
   12888:	0013059b          	addw	a1,t1,1
   1288c:	00098513          	mv	a0,s3
   12890:	00613c23          	sd	t1,24(sp)
   12894:	238040ef          	jal	16acc <_malloc_r>
   12898:	01813303          	ld	t1,24(sp)
   1289c:	00050b13          	mv	s6,a0
   128a0:	1a050e63          	beqz	a0,12a5c <_vfprintf_r+0x261c>
   128a4:	00a13c23          	sd	a0,24(sp)
   128a8:	98dff06f          	j	12234 <_vfprintf_r+0x1df4>
   128ac:	03813783          	ld	a5,56(sp)
   128b0:	00a7c583          	lbu	a1,10(a5)
   128b4:	feb68fa3          	sb	a1,-1(a3)
   128b8:	fc9ff06f          	j	12880 <_vfprintf_r+0x2440>
   128bc:	0b813603          	ld	a2,184(sp)
   128c0:	03313823          	sd	s3,48(sp)
   128c4:	000b8993          	mv	s3,s7
   128c8:	000b0b93          	mv	s7,s6
   128cc:	000d0b13          	mv	s6,s10
   128d0:	00cb063b          	addw	a2,s6,a2
   128d4:	000a8d13          	mv	s10,s5
   128d8:	000a0a93          	mv	s5,s4
   128dc:	04813483          	ld	s1,72(sp)
   128e0:	0a813303          	ld	t1,168(sp)
   128e4:	0b013403          	ld	s0,176(sp)
   128e8:	0a013a03          	ld	s4,160(sp)
   128ec:	41560dbb          	subw	s11,a2,s5
   128f0:	ab9ff06f          	j	123a8 <_vfprintf_r+0x1f68>
   128f4:	00030463          	beqz	t1,128fc <_vfprintf_r+0x24bc>
   128f8:	830fe06f          	j	10928 <_vfprintf_r+0x4e8>
   128fc:	00100313          	li	t1,1
   12900:	828fe06f          	j	10928 <_vfprintf_r+0x4e8>
   12904:	00600313          	li	t1,6
   12908:	820fe06f          	j	10928 <_vfprintf_r+0x4e8>
   1290c:	04013783          	ld	a5,64(sp)
   12910:	0017f613          	and	a2,a5,1
   12914:	fc060a63          	beqz	a2,120e8 <_vfprintf_r+0x1ca8>
   12918:	fc8ff06f          	j	120e0 <_vfprintf_r+0x1ca0>
   1291c:	00f72023          	sw	a5,0(a4)
   12920:	c94fe06f          	j	10db4 <_vfprintf_r+0x974>
   12924:	06700c93          	li	s9,103
   12928:	07813683          	ld	a3,120(sp)
   1292c:	0ff00613          	li	a2,255
   12930:	0006c703          	lbu	a4,0(a3)
   12934:	10c70e63          	beq	a4,a2,12a50 <_vfprintf_r+0x2610>
   12938:	03013783          	ld	a5,48(sp)
   1293c:	00000813          	li	a6,0
   12940:	00000513          	li	a0,0
   12944:	0ff00593          	li	a1,255
   12948:	0007061b          	sext.w	a2,a4
   1294c:	00f75e63          	bge	a4,a5,12968 <_vfprintf_r+0x2528>
   12950:	0016c703          	lbu	a4,1(a3)
   12954:	40c787bb          	subw	a5,a5,a2
   12958:	04070a63          	beqz	a4,129ac <_vfprintf_r+0x256c>
   1295c:	0015051b          	addw	a0,a0,1
   12960:	00168693          	add	a3,a3,1
   12964:	feb712e3          	bne	a4,a1,12948 <_vfprintf_r+0x2508>
   12968:	02f13823          	sd	a5,48(sp)
   1296c:	06d13c23          	sd	a3,120(sp)
   12970:	04a13023          	sd	a0,64(sp)
   12974:	05013423          	sd	a6,72(sp)
   12978:	04013703          	ld	a4,64(sp)
   1297c:	04813783          	ld	a5,72(sp)
   12980:	08013583          	ld	a1,128(sp)
   12984:	00e7853b          	addw	a0,a5,a4
   12988:	1e00f0ef          	jal	21b68 <__muldi3>
   1298c:	01a5073b          	addw	a4,a0,s10
   12990:	00070d1b          	sext.w	s10,a4
   12994:	fffd4613          	not	a2,s10
   12998:	43f65613          	sra	a2,a2,0x3f
   1299c:	00c77733          	and	a4,a4,a2
   129a0:	09013903          	ld	s2,144(sp)
   129a4:	00070c1b          	sext.w	s8,a4
   129a8:	f6cff06f          	j	12114 <_vfprintf_r+0x1cd4>
   129ac:	0006c703          	lbu	a4,0(a3)
   129b0:	0018081b          	addw	a6,a6,1
   129b4:	fb1ff06f          	j	12964 <_vfprintf_r+0x2524>
   129b8:	05813703          	ld	a4,88(sp)
   129bc:	06600c93          	li	s9,102
   129c0:	00f706bb          	addw	a3,a4,a5
   129c4:	00668d3b          	addw	s10,a3,t1
   129c8:	d89ff06f          	j	12750 <_vfprintf_r+0x2310>
   129cc:	07000693          	li	a3,112
   129d0:	e4cff06f          	j	1201c <_vfprintf_r+0x1bdc>
   129d4:	00071c63          	bnez	a4,129ec <_vfprintf_r+0x25ac>
   129d8:	09013903          	ld	s2,144(sp)
   129dc:	00100c13          	li	s8,1
   129e0:	06600c93          	li	s9,102
   129e4:	00100d13          	li	s10,1
   129e8:	b69ff06f          	j	12550 <_vfprintf_r+0x2110>
   129ec:	05813783          	ld	a5,88(sp)
   129f0:	09013903          	ld	s2,144(sp)
   129f4:	06600c93          	li	s9,102
   129f8:	0017871b          	addw	a4,a5,1
   129fc:	0067073b          	addw	a4,a4,t1
   12a00:	00070d1b          	sext.w	s10,a4
   12a04:	fffd4613          	not	a2,s10
   12a08:	43f65613          	sra	a2,a2,0x3f
   12a0c:	00c77733          	and	a4,a4,a2
   12a10:	00070c1b          	sext.w	s8,a4
   12a14:	b3dff06f          	j	12550 <_vfprintf_r+0x2110>
   12a18:	02013683          	ld	a3,32(sp)
   12a1c:	0006a703          	lw	a4,0(a3)
   12a20:	00868693          	add	a3,a3,8
   12a24:	00070313          	mv	t1,a4
   12a28:	00075463          	bgez	a4,12a30 <_vfprintf_r+0x25f0>
   12a2c:	fff00313          	li	t1,-1
   12a30:	0014ce03          	lbu	t3,1(s1)
   12a34:	00030a9b          	sext.w	s5,t1
   12a38:	02d13023          	sd	a3,32(sp)
   12a3c:	00078493          	mv	s1,a5
   12a40:	badfd06f          	j	105ec <_vfprintf_r+0x1ac>
   12a44:	00200793          	li	a5,2
   12a48:	06f13823          	sd	a5,112(sp)
   12a4c:	e7cff06f          	j	120c8 <_vfprintf_r+0x1c88>
   12a50:	04013423          	sd	zero,72(sp)
   12a54:	04013023          	sd	zero,64(sp)
   12a58:	f21ff06f          	j	12978 <_vfprintf_r+0x2538>
   12a5c:	00013703          	ld	a4,0(sp)
   12a60:	01075783          	lhu	a5,16(a4)
   12a64:	0407e793          	or	a5,a5,64
   12a68:	00f71823          	sh	a5,16(a4)
   12a6c:	d49fd06f          	j	107b4 <_vfprintf_r+0x374>

0000000000012a70 <vfprintf>:
   12a70:	00050793          	mv	a5,a0
   12a74:	7581b503          	ld	a0,1880(gp) # 24d70 <_impure_ptr>
   12a78:	00060693          	mv	a3,a2
   12a7c:	00058613          	mv	a2,a1
   12a80:	00078593          	mv	a1,a5
   12a84:	9bdfd06f          	j	10440 <_vfprintf_r>

0000000000012a88 <__sbprintf>:
   12a88:	01059783          	lh	a5,16(a1)
   12a8c:	0125d703          	lhu	a4,18(a1)
   12a90:	0ac5a303          	lw	t1,172(a1)
   12a94:	ffd7f793          	and	a5,a5,-3
   12a98:	0107979b          	sllw	a5,a5,0x10
   12a9c:	0305b883          	ld	a7,48(a1)
   12aa0:	0405b803          	ld	a6,64(a1)
   12aa4:	0107171b          	sllw	a4,a4,0x10
   12aa8:	0107d79b          	srlw	a5,a5,0x10
   12aac:	b3010113          	add	sp,sp,-1232
   12ab0:	00e7e7b3          	or	a5,a5,a4
   12ab4:	4c813023          	sd	s0,1216(sp)
   12ab8:	40000713          	li	a4,1024
   12abc:	00f12823          	sw	a5,16(sp)
   12ac0:	00058413          	mv	s0,a1
   12ac4:	0b010793          	add	a5,sp,176
   12ac8:	00010593          	mv	a1,sp
   12acc:	4a913c23          	sd	s1,1208(sp)
   12ad0:	4b213823          	sd	s2,1200(sp)
   12ad4:	4c113423          	sd	ra,1224(sp)
   12ad8:	00050913          	mv	s2,a0
   12adc:	0a612623          	sw	t1,172(sp)
   12ae0:	03113823          	sd	a7,48(sp)
   12ae4:	05013023          	sd	a6,64(sp)
   12ae8:	00f13023          	sd	a5,0(sp)
   12aec:	00f13c23          	sd	a5,24(sp)
   12af0:	00e12623          	sw	a4,12(sp)
   12af4:	02e12023          	sw	a4,32(sp)
   12af8:	02012423          	sw	zero,40(sp)
   12afc:	945fd0ef          	jal	10440 <_vfprintf_r>
   12b00:	00050493          	mv	s1,a0
   12b04:	02055c63          	bgez	a0,12b3c <__sbprintf+0xb4>
   12b08:	01015783          	lhu	a5,16(sp)
   12b0c:	0407f793          	and	a5,a5,64
   12b10:	00078863          	beqz	a5,12b20 <__sbprintf+0x98>
   12b14:	01045783          	lhu	a5,16(s0)
   12b18:	0407e793          	or	a5,a5,64
   12b1c:	00f41823          	sh	a5,16(s0)
   12b20:	4c813083          	ld	ra,1224(sp)
   12b24:	4c013403          	ld	s0,1216(sp)
   12b28:	4b013903          	ld	s2,1200(sp)
   12b2c:	00048513          	mv	a0,s1
   12b30:	4b813483          	ld	s1,1208(sp)
   12b34:	4d010113          	add	sp,sp,1232
   12b38:	00008067          	ret
   12b3c:	00010593          	mv	a1,sp
   12b40:	00090513          	mv	a0,s2
   12b44:	4c4000ef          	jal	13008 <_fflush_r>
   12b48:	fc0500e3          	beqz	a0,12b08 <__sbprintf+0x80>
   12b4c:	fff00493          	li	s1,-1
   12b50:	fb9ff06f          	j	12b08 <__sbprintf+0x80>

0000000000012b54 <__swsetup_r>:
   12b54:	7581b783          	ld	a5,1880(gp) # 24d70 <_impure_ptr>
   12b58:	fe010113          	add	sp,sp,-32
   12b5c:	00813823          	sd	s0,16(sp)
   12b60:	00913423          	sd	s1,8(sp)
   12b64:	00113c23          	sd	ra,24(sp)
   12b68:	00050493          	mv	s1,a0
   12b6c:	00058413          	mv	s0,a1
   12b70:	00078663          	beqz	a5,12b7c <__swsetup_r+0x28>
   12b74:	0507a703          	lw	a4,80(a5)
   12b78:	08070063          	beqz	a4,12bf8 <__swsetup_r+0xa4>
   12b7c:	01041783          	lh	a5,16(s0)
   12b80:	0087f713          	and	a4,a5,8
   12b84:	08070463          	beqz	a4,12c0c <__swsetup_r+0xb8>
   12b88:	01843703          	ld	a4,24(s0)
   12b8c:	0a070063          	beqz	a4,12c2c <__swsetup_r+0xd8>
   12b90:	0017f693          	and	a3,a5,1
   12b94:	02068863          	beqz	a3,12bc4 <__swsetup_r+0x70>
   12b98:	02042683          	lw	a3,32(s0)
   12b9c:	00042623          	sw	zero,12(s0)
   12ba0:	00000513          	li	a0,0
   12ba4:	40d006bb          	negw	a3,a3
   12ba8:	02d42423          	sw	a3,40(s0)
   12bac:	02070a63          	beqz	a4,12be0 <__swsetup_r+0x8c>
   12bb0:	01813083          	ld	ra,24(sp)
   12bb4:	01013403          	ld	s0,16(sp)
   12bb8:	00813483          	ld	s1,8(sp)
   12bbc:	02010113          	add	sp,sp,32
   12bc0:	00008067          	ret
   12bc4:	0027f693          	and	a3,a5,2
   12bc8:	00000613          	li	a2,0
   12bcc:	00069463          	bnez	a3,12bd4 <__swsetup_r+0x80>
   12bd0:	02042603          	lw	a2,32(s0)
   12bd4:	00c42623          	sw	a2,12(s0)
   12bd8:	00000513          	li	a0,0
   12bdc:	fc071ae3          	bnez	a4,12bb0 <__swsetup_r+0x5c>
   12be0:	0807f713          	and	a4,a5,128
   12be4:	fc0706e3          	beqz	a4,12bb0 <__swsetup_r+0x5c>
   12be8:	0407e793          	or	a5,a5,64
   12bec:	00f41823          	sh	a5,16(s0)
   12bf0:	fff00513          	li	a0,-1
   12bf4:	fbdff06f          	j	12bb0 <__swsetup_r+0x5c>
   12bf8:	00078513          	mv	a0,a5
   12bfc:	039000ef          	jal	13434 <__sinit>
   12c00:	01041783          	lh	a5,16(s0)
   12c04:	0087f713          	and	a4,a5,8
   12c08:	f80710e3          	bnez	a4,12b88 <__swsetup_r+0x34>
   12c0c:	0107f713          	and	a4,a5,16
   12c10:	06070a63          	beqz	a4,12c84 <__swsetup_r+0x130>
   12c14:	0047f713          	and	a4,a5,4
   12c18:	02071c63          	bnez	a4,12c50 <__swsetup_r+0xfc>
   12c1c:	01843703          	ld	a4,24(s0)
   12c20:	0087e793          	or	a5,a5,8
   12c24:	00f41823          	sh	a5,16(s0)
   12c28:	f60714e3          	bnez	a4,12b90 <__swsetup_r+0x3c>
   12c2c:	2807f693          	and	a3,a5,640
   12c30:	20000613          	li	a2,512
   12c34:	f4c68ee3          	beq	a3,a2,12b90 <__swsetup_r+0x3c>
   12c38:	00040593          	mv	a1,s0
   12c3c:	00048513          	mv	a0,s1
   12c40:	425030ef          	jal	16864 <__smakebuf_r>
   12c44:	01041783          	lh	a5,16(s0)
   12c48:	01843703          	ld	a4,24(s0)
   12c4c:	f45ff06f          	j	12b90 <__swsetup_r+0x3c>
   12c50:	05843583          	ld	a1,88(s0)
   12c54:	00058e63          	beqz	a1,12c70 <__swsetup_r+0x11c>
   12c58:	07440713          	add	a4,s0,116
   12c5c:	00e58863          	beq	a1,a4,12c6c <__swsetup_r+0x118>
   12c60:	00048513          	mv	a0,s1
   12c64:	1a9000ef          	jal	1360c <_free_r>
   12c68:	01041783          	lh	a5,16(s0)
   12c6c:	04043c23          	sd	zero,88(s0)
   12c70:	01843703          	ld	a4,24(s0)
   12c74:	fdb7f793          	and	a5,a5,-37
   12c78:	00042423          	sw	zero,8(s0)
   12c7c:	00e43023          	sd	a4,0(s0)
   12c80:	fa1ff06f          	j	12c20 <__swsetup_r+0xcc>
   12c84:	00900713          	li	a4,9
   12c88:	00e4a023          	sw	a4,0(s1)
   12c8c:	0407e793          	or	a5,a5,64
   12c90:	f5dff06f          	j	12bec <__swsetup_r+0x98>

0000000000012c94 <__call_exitprocs>:
   12c94:	fb010113          	add	sp,sp,-80
   12c98:	03413023          	sd	s4,32(sp)
   12c9c:	7481ba03          	ld	s4,1864(gp) # 24d60 <_global_impure_ptr>
   12ca0:	03213823          	sd	s2,48(sp)
   12ca4:	04113423          	sd	ra,72(sp)
   12ca8:	1f8a3903          	ld	s2,504(s4)
   12cac:	04813023          	sd	s0,64(sp)
   12cb0:	02913c23          	sd	s1,56(sp)
   12cb4:	03313423          	sd	s3,40(sp)
   12cb8:	01513c23          	sd	s5,24(sp)
   12cbc:	01613823          	sd	s6,16(sp)
   12cc0:	01713423          	sd	s7,8(sp)
   12cc4:	01813023          	sd	s8,0(sp)
   12cc8:	04090063          	beqz	s2,12d08 <__call_exitprocs+0x74>
   12ccc:	00050b13          	mv	s6,a0
   12cd0:	00058b93          	mv	s7,a1
   12cd4:	00100a93          	li	s5,1
   12cd8:	fff00993          	li	s3,-1
   12cdc:	00892483          	lw	s1,8(s2)
   12ce0:	fff4841b          	addw	s0,s1,-1
   12ce4:	02044263          	bltz	s0,12d08 <__call_exitprocs+0x74>
   12ce8:	00349493          	sll	s1,s1,0x3
   12cec:	009904b3          	add	s1,s2,s1
   12cf0:	040b8463          	beqz	s7,12d38 <__call_exitprocs+0xa4>
   12cf4:	2084b783          	ld	a5,520(s1)
   12cf8:	05778063          	beq	a5,s7,12d38 <__call_exitprocs+0xa4>
   12cfc:	fff4041b          	addw	s0,s0,-1
   12d00:	ff848493          	add	s1,s1,-8
   12d04:	ff3416e3          	bne	s0,s3,12cf0 <__call_exitprocs+0x5c>
   12d08:	04813083          	ld	ra,72(sp)
   12d0c:	04013403          	ld	s0,64(sp)
   12d10:	03813483          	ld	s1,56(sp)
   12d14:	03013903          	ld	s2,48(sp)
   12d18:	02813983          	ld	s3,40(sp)
   12d1c:	02013a03          	ld	s4,32(sp)
   12d20:	01813a83          	ld	s5,24(sp)
   12d24:	01013b03          	ld	s6,16(sp)
   12d28:	00813b83          	ld	s7,8(sp)
   12d2c:	00013c03          	ld	s8,0(sp)
   12d30:	05010113          	add	sp,sp,80
   12d34:	00008067          	ret
   12d38:	00892783          	lw	a5,8(s2)
   12d3c:	0084b703          	ld	a4,8(s1)
   12d40:	fff7879b          	addw	a5,a5,-1
   12d44:	06878263          	beq	a5,s0,12da8 <__call_exitprocs+0x114>
   12d48:	0004b423          	sd	zero,8(s1)
   12d4c:	fa0708e3          	beqz	a4,12cfc <__call_exitprocs+0x68>
   12d50:	31092783          	lw	a5,784(s2)
   12d54:	008a96bb          	sllw	a3,s5,s0
   12d58:	00892c03          	lw	s8,8(s2)
   12d5c:	00d7f7b3          	and	a5,a5,a3
   12d60:	0007879b          	sext.w	a5,a5
   12d64:	02079263          	bnez	a5,12d88 <__call_exitprocs+0xf4>
   12d68:	000700e7          	jalr	a4
   12d6c:	00892703          	lw	a4,8(s2)
   12d70:	1f8a3783          	ld	a5,504(s4)
   12d74:	01871463          	bne	a4,s8,12d7c <__call_exitprocs+0xe8>
   12d78:	f92782e3          	beq	a5,s2,12cfc <__call_exitprocs+0x68>
   12d7c:	f80786e3          	beqz	a5,12d08 <__call_exitprocs+0x74>
   12d80:	00078913          	mv	s2,a5
   12d84:	f59ff06f          	j	12cdc <__call_exitprocs+0x48>
   12d88:	31492783          	lw	a5,788(s2)
   12d8c:	1084b583          	ld	a1,264(s1)
   12d90:	00d7f7b3          	and	a5,a5,a3
   12d94:	0007879b          	sext.w	a5,a5
   12d98:	00079c63          	bnez	a5,12db0 <__call_exitprocs+0x11c>
   12d9c:	000b0513          	mv	a0,s6
   12da0:	000700e7          	jalr	a4
   12da4:	fc9ff06f          	j	12d6c <__call_exitprocs+0xd8>
   12da8:	00892423          	sw	s0,8(s2)
   12dac:	fa1ff06f          	j	12d4c <__call_exitprocs+0xb8>
   12db0:	00058513          	mv	a0,a1
   12db4:	000700e7          	jalr	a4
   12db8:	fb5ff06f          	j	12d6c <__call_exitprocs+0xd8>

0000000000012dbc <__sflush_r>:
   12dbc:	01059783          	lh	a5,16(a1)
   12dc0:	fd010113          	add	sp,sp,-48
   12dc4:	02813023          	sd	s0,32(sp)
   12dc8:	01313423          	sd	s3,8(sp)
   12dcc:	02113423          	sd	ra,40(sp)
   12dd0:	00913c23          	sd	s1,24(sp)
   12dd4:	01213823          	sd	s2,16(sp)
   12dd8:	0087f713          	and	a4,a5,8
   12ddc:	00058413          	mv	s0,a1
   12de0:	00050993          	mv	s3,a0
   12de4:	12071263          	bnez	a4,12f08 <__sflush_r+0x14c>
   12de8:	00001737          	lui	a4,0x1
   12dec:	80070713          	add	a4,a4,-2048 # 800 <exit-0xf8e8>
   12df0:	0085a683          	lw	a3,8(a1)
   12df4:	00e7e733          	or	a4,a5,a4
   12df8:	00e59823          	sh	a4,16(a1)
   12dfc:	18d05863          	blez	a3,12f8c <__sflush_r+0x1d0>
   12e00:	04843803          	ld	a6,72(s0)
   12e04:	0e080263          	beqz	a6,12ee8 <__sflush_r+0x12c>
   12e08:	00c7d793          	srl	a5,a5,0xc
   12e0c:	0009a483          	lw	s1,0(s3)
   12e10:	0017f793          	and	a5,a5,1
   12e14:	0009a023          	sw	zero,0(s3)
   12e18:	03043583          	ld	a1,48(s0)
   12e1c:	18079063          	bnez	a5,12f9c <__sflush_r+0x1e0>
   12e20:	00000613          	li	a2,0
   12e24:	00100693          	li	a3,1
   12e28:	00098513          	mv	a0,s3
   12e2c:	000800e7          	jalr	a6
   12e30:	fff00793          	li	a5,-1
   12e34:	00050613          	mv	a2,a0
   12e38:	1af50063          	beq	a0,a5,12fd8 <__sflush_r+0x21c>
   12e3c:	01041703          	lh	a4,16(s0)
   12e40:	04843803          	ld	a6,72(s0)
   12e44:	03043583          	ld	a1,48(s0)
   12e48:	00477713          	and	a4,a4,4
   12e4c:	00070e63          	beqz	a4,12e68 <__sflush_r+0xac>
   12e50:	00842703          	lw	a4,8(s0)
   12e54:	05843783          	ld	a5,88(s0)
   12e58:	40e60633          	sub	a2,a2,a4
   12e5c:	00078663          	beqz	a5,12e68 <__sflush_r+0xac>
   12e60:	07042783          	lw	a5,112(s0)
   12e64:	40f60633          	sub	a2,a2,a5
   12e68:	00000693          	li	a3,0
   12e6c:	00098513          	mv	a0,s3
   12e70:	000800e7          	jalr	a6
   12e74:	fff00793          	li	a5,-1
   12e78:	12f51663          	bne	a0,a5,12fa4 <__sflush_r+0x1e8>
   12e7c:	0009a683          	lw	a3,0(s3)
   12e80:	01d00793          	li	a5,29
   12e84:	0cd7ee63          	bltu	a5,a3,12f60 <__sflush_r+0x1a4>
   12e88:	dfc00737          	lui	a4,0xdfc00
   12e8c:	ffe70713          	add	a4,a4,-2 # ffffffffdfbffffe <__BSS_END__+0xffffffffdfbdb1e6>
   12e90:	40d75733          	sra	a4,a4,a3
   12e94:	00177713          	and	a4,a4,1
   12e98:	01041783          	lh	a5,16(s0)
   12e9c:	0c071463          	bnez	a4,12f64 <__sflush_r+0x1a8>
   12ea0:	01843603          	ld	a2,24(s0)
   12ea4:	fffff737          	lui	a4,0xfffff
   12ea8:	7ff70713          	add	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffda9e7>
   12eac:	00e7f733          	and	a4,a5,a4
   12eb0:	00c7d793          	srl	a5,a5,0xc
   12eb4:	00e41823          	sh	a4,16(s0)
   12eb8:	00042423          	sw	zero,8(s0)
   12ebc:	00c43023          	sd	a2,0(s0)
   12ec0:	0017f793          	and	a5,a5,1
   12ec4:	12079c63          	bnez	a5,12ffc <__sflush_r+0x240>
   12ec8:	05843583          	ld	a1,88(s0)
   12ecc:	0099a023          	sw	s1,0(s3)
   12ed0:	00058c63          	beqz	a1,12ee8 <__sflush_r+0x12c>
   12ed4:	07440793          	add	a5,s0,116
   12ed8:	00f58663          	beq	a1,a5,12ee4 <__sflush_r+0x128>
   12edc:	00098513          	mv	a0,s3
   12ee0:	72c000ef          	jal	1360c <_free_r>
   12ee4:	04043c23          	sd	zero,88(s0)
   12ee8:	00000513          	li	a0,0
   12eec:	02813083          	ld	ra,40(sp)
   12ef0:	02013403          	ld	s0,32(sp)
   12ef4:	01813483          	ld	s1,24(sp)
   12ef8:	01013903          	ld	s2,16(sp)
   12efc:	00813983          	ld	s3,8(sp)
   12f00:	03010113          	add	sp,sp,48
   12f04:	00008067          	ret
   12f08:	0185b903          	ld	s2,24(a1)
   12f0c:	fc090ee3          	beqz	s2,12ee8 <__sflush_r+0x12c>
   12f10:	0005b483          	ld	s1,0(a1)
   12f14:	0037f793          	and	a5,a5,3
   12f18:	0125b023          	sd	s2,0(a1)
   12f1c:	412484bb          	subw	s1,s1,s2
   12f20:	00000713          	li	a4,0
   12f24:	00079463          	bnez	a5,12f2c <__sflush_r+0x170>
   12f28:	0205a703          	lw	a4,32(a1)
   12f2c:	00e42623          	sw	a4,12(s0)
   12f30:	00904863          	bgtz	s1,12f40 <__sflush_r+0x184>
   12f34:	fb5ff06f          	j	12ee8 <__sflush_r+0x12c>
   12f38:	00a90933          	add	s2,s2,a0
   12f3c:	fa9056e3          	blez	s1,12ee8 <__sflush_r+0x12c>
   12f40:	04043783          	ld	a5,64(s0)
   12f44:	03043583          	ld	a1,48(s0)
   12f48:	00048693          	mv	a3,s1
   12f4c:	00090613          	mv	a2,s2
   12f50:	00098513          	mv	a0,s3
   12f54:	000780e7          	jalr	a5
   12f58:	40a484bb          	subw	s1,s1,a0
   12f5c:	fca04ee3          	bgtz	a0,12f38 <__sflush_r+0x17c>
   12f60:	01041783          	lh	a5,16(s0)
   12f64:	0407e793          	or	a5,a5,64
   12f68:	02813083          	ld	ra,40(sp)
   12f6c:	00f41823          	sh	a5,16(s0)
   12f70:	02013403          	ld	s0,32(sp)
   12f74:	01813483          	ld	s1,24(sp)
   12f78:	01013903          	ld	s2,16(sp)
   12f7c:	00813983          	ld	s3,8(sp)
   12f80:	fff00513          	li	a0,-1
   12f84:	03010113          	add	sp,sp,48
   12f88:	00008067          	ret
   12f8c:	0705a683          	lw	a3,112(a1)
   12f90:	e6d048e3          	bgtz	a3,12e00 <__sflush_r+0x44>
   12f94:	00000513          	li	a0,0
   12f98:	f55ff06f          	j	12eec <__sflush_r+0x130>
   12f9c:	09043603          	ld	a2,144(s0)
   12fa0:	ea9ff06f          	j	12e48 <__sflush_r+0x8c>
   12fa4:	01041783          	lh	a5,16(s0)
   12fa8:	01843683          	ld	a3,24(s0)
   12fac:	fffff737          	lui	a4,0xfffff
   12fb0:	7ff70713          	add	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffda9e7>
   12fb4:	00e7f733          	and	a4,a5,a4
   12fb8:	00c7d793          	srl	a5,a5,0xc
   12fbc:	00e41823          	sh	a4,16(s0)
   12fc0:	00042423          	sw	zero,8(s0)
   12fc4:	00d43023          	sd	a3,0(s0)
   12fc8:	0017f793          	and	a5,a5,1
   12fcc:	ee078ee3          	beqz	a5,12ec8 <__sflush_r+0x10c>
   12fd0:	08a43823          	sd	a0,144(s0)
   12fd4:	ef5ff06f          	j	12ec8 <__sflush_r+0x10c>
   12fd8:	0009a783          	lw	a5,0(s3)
   12fdc:	e60780e3          	beqz	a5,12e3c <__sflush_r+0x80>
   12fe0:	01d00713          	li	a4,29
   12fe4:	00e78663          	beq	a5,a4,12ff0 <__sflush_r+0x234>
   12fe8:	01600713          	li	a4,22
   12fec:	f6e79ae3          	bne	a5,a4,12f60 <__sflush_r+0x1a4>
   12ff0:	0099a023          	sw	s1,0(s3)
   12ff4:	00000513          	li	a0,0
   12ff8:	ef5ff06f          	j	12eec <__sflush_r+0x130>
   12ffc:	ec0696e3          	bnez	a3,12ec8 <__sflush_r+0x10c>
   13000:	08a43823          	sd	a0,144(s0)
   13004:	ec5ff06f          	j	12ec8 <__sflush_r+0x10c>

0000000000013008 <_fflush_r>:
   13008:	fe010113          	add	sp,sp,-32
   1300c:	00813823          	sd	s0,16(sp)
   13010:	00113c23          	sd	ra,24(sp)
   13014:	00050413          	mv	s0,a0
   13018:	00050663          	beqz	a0,13024 <_fflush_r+0x1c>
   1301c:	05052783          	lw	a5,80(a0)
   13020:	02078063          	beqz	a5,13040 <_fflush_r+0x38>
   13024:	01059783          	lh	a5,16(a1)
   13028:	02079663          	bnez	a5,13054 <_fflush_r+0x4c>
   1302c:	01813083          	ld	ra,24(sp)
   13030:	01013403          	ld	s0,16(sp)
   13034:	00000513          	li	a0,0
   13038:	02010113          	add	sp,sp,32
   1303c:	00008067          	ret
   13040:	00b13423          	sd	a1,8(sp)
   13044:	3f0000ef          	jal	13434 <__sinit>
   13048:	00813583          	ld	a1,8(sp)
   1304c:	01059783          	lh	a5,16(a1)
   13050:	fc078ee3          	beqz	a5,1302c <_fflush_r+0x24>
   13054:	00040513          	mv	a0,s0
   13058:	01013403          	ld	s0,16(sp)
   1305c:	01813083          	ld	ra,24(sp)
   13060:	02010113          	add	sp,sp,32
   13064:	d59ff06f          	j	12dbc <__sflush_r>

0000000000013068 <fflush>:
   13068:	06050663          	beqz	a0,130d4 <fflush+0x6c>
   1306c:	fe010113          	add	sp,sp,-32
   13070:	00813823          	sd	s0,16(sp)
   13074:	00050413          	mv	s0,a0
   13078:	7581b503          	ld	a0,1880(gp) # 24d70 <_impure_ptr>
   1307c:	00113c23          	sd	ra,24(sp)
   13080:	00050663          	beqz	a0,1308c <fflush+0x24>
   13084:	05052783          	lw	a5,80(a0)
   13088:	02078a63          	beqz	a5,130bc <fflush+0x54>
   1308c:	01041783          	lh	a5,16(s0)
   13090:	00079c63          	bnez	a5,130a8 <fflush+0x40>
   13094:	01813083          	ld	ra,24(sp)
   13098:	01013403          	ld	s0,16(sp)
   1309c:	00000513          	li	a0,0
   130a0:	02010113          	add	sp,sp,32
   130a4:	00008067          	ret
   130a8:	00040593          	mv	a1,s0
   130ac:	01013403          	ld	s0,16(sp)
   130b0:	01813083          	ld	ra,24(sp)
   130b4:	02010113          	add	sp,sp,32
   130b8:	d05ff06f          	j	12dbc <__sflush_r>
   130bc:	00a13423          	sd	a0,8(sp)
   130c0:	374000ef          	jal	13434 <__sinit>
   130c4:	01041783          	lh	a5,16(s0)
   130c8:	00813503          	ld	a0,8(sp)
   130cc:	fc0784e3          	beqz	a5,13094 <fflush+0x2c>
   130d0:	fd9ff06f          	j	130a8 <fflush+0x40>
   130d4:	7481b503          	ld	a0,1864(gp) # 24d60 <_global_impure_ptr>
   130d8:	000135b7          	lui	a1,0x13
   130dc:	00858593          	add	a1,a1,8 # 13008 <_fflush_r>
   130e0:	10d0006f          	j	139ec <_fwalk_reent>

00000000000130e4 <__fp_lock>:
   130e4:	00000513          	li	a0,0
   130e8:	00008067          	ret

00000000000130ec <_cleanup_r>:
   130ec:	0001d5b7          	lui	a1,0x1d
   130f0:	be858593          	add	a1,a1,-1048 # 1cbe8 <_fclose_r>
   130f4:	0f90006f          	j	139ec <_fwalk_reent>

00000000000130f8 <__fp_unlock>:
   130f8:	00000513          	li	a0,0
   130fc:	00008067          	ret

0000000000013100 <__sinit.part.0>:
   13100:	fc010113          	add	sp,sp,-64
   13104:	000137b7          	lui	a5,0x13
   13108:	02113c23          	sd	ra,56(sp)
   1310c:	02813823          	sd	s0,48(sp)
   13110:	02913423          	sd	s1,40(sp)
   13114:	03213023          	sd	s2,32(sp)
   13118:	01313c23          	sd	s3,24(sp)
   1311c:	01413823          	sd	s4,16(sp)
   13120:	01513423          	sd	s5,8(sp)
   13124:	01613023          	sd	s6,0(sp)
   13128:	00853403          	ld	s0,8(a0)
   1312c:	0ec78793          	add	a5,a5,236 # 130ec <_cleanup_r>
   13130:	04f53c23          	sd	a5,88(a0)
   13134:	53850713          	add	a4,a0,1336
   13138:	00300793          	li	a5,3
   1313c:	52e53823          	sd	a4,1328(a0)
   13140:	52f52423          	sw	a5,1320(a0)
   13144:	52053023          	sd	zero,1312(a0)
   13148:	00400793          	li	a5,4
   1314c:	00050913          	mv	s2,a0
   13150:	00f42823          	sw	a5,16(s0)
   13154:	00800613          	li	a2,8
   13158:	00000593          	li	a1,0
   1315c:	00043023          	sd	zero,0(s0)
   13160:	00043423          	sd	zero,8(s0)
   13164:	0a042623          	sw	zero,172(s0)
   13168:	00043c23          	sd	zero,24(s0)
   1316c:	02042023          	sw	zero,32(s0)
   13170:	02042423          	sw	zero,40(s0)
   13174:	0a440513          	add	a0,s0,164
   13178:	960fd0ef          	jal	102d8 <memset>
   1317c:	00019b37          	lui	s6,0x19
   13180:	01093483          	ld	s1,16(s2)
   13184:	00019ab7          	lui	s5,0x19
   13188:	00019a37          	lui	s4,0x19
   1318c:	000199b7          	lui	s3,0x19
   13190:	928b0b13          	add	s6,s6,-1752 # 18928 <__sread>
   13194:	98ca8a93          	add	s5,s5,-1652 # 1898c <__swrite>
   13198:	a14a0a13          	add	s4,s4,-1516 # 18a14 <__sseek>
   1319c:	a8c98993          	add	s3,s3,-1396 # 18a8c <__sclose>
   131a0:	000107b7          	lui	a5,0x10
   131a4:	03643c23          	sd	s6,56(s0)
   131a8:	05543023          	sd	s5,64(s0)
   131ac:	05443423          	sd	s4,72(s0)
   131b0:	05343823          	sd	s3,80(s0)
   131b4:	02843823          	sd	s0,48(s0)
   131b8:	00978793          	add	a5,a5,9 # 10009 <exit-0xdf>
   131bc:	00f4a823          	sw	a5,16(s1)
   131c0:	00800613          	li	a2,8
   131c4:	00000593          	li	a1,0
   131c8:	0004b023          	sd	zero,0(s1)
   131cc:	0004b423          	sd	zero,8(s1)
   131d0:	0a04a623          	sw	zero,172(s1)
   131d4:	0004bc23          	sd	zero,24(s1)
   131d8:	0204a023          	sw	zero,32(s1)
   131dc:	0204a423          	sw	zero,40(s1)
   131e0:	0a448513          	add	a0,s1,164
   131e4:	8f4fd0ef          	jal	102d8 <memset>
   131e8:	01893403          	ld	s0,24(s2)
   131ec:	000207b7          	lui	a5,0x20
   131f0:	0364bc23          	sd	s6,56(s1)
   131f4:	0554b023          	sd	s5,64(s1)
   131f8:	0544b423          	sd	s4,72(s1)
   131fc:	0534b823          	sd	s3,80(s1)
   13200:	0294b823          	sd	s1,48(s1)
   13204:	01278793          	add	a5,a5,18 # 20012 <__divdf3+0x23a>
   13208:	00f42823          	sw	a5,16(s0)
   1320c:	00043023          	sd	zero,0(s0)
   13210:	00043423          	sd	zero,8(s0)
   13214:	0a042623          	sw	zero,172(s0)
   13218:	00043c23          	sd	zero,24(s0)
   1321c:	02042023          	sw	zero,32(s0)
   13220:	02042423          	sw	zero,40(s0)
   13224:	0a440513          	add	a0,s0,164
   13228:	00800613          	li	a2,8
   1322c:	00000593          	li	a1,0
   13230:	8a8fd0ef          	jal	102d8 <memset>
   13234:	03813083          	ld	ra,56(sp)
   13238:	03643c23          	sd	s6,56(s0)
   1323c:	05543023          	sd	s5,64(s0)
   13240:	05443423          	sd	s4,72(s0)
   13244:	05343823          	sd	s3,80(s0)
   13248:	02843823          	sd	s0,48(s0)
   1324c:	03013403          	ld	s0,48(sp)
   13250:	00100793          	li	a5,1
   13254:	04f92823          	sw	a5,80(s2)
   13258:	02813483          	ld	s1,40(sp)
   1325c:	02013903          	ld	s2,32(sp)
   13260:	01813983          	ld	s3,24(sp)
   13264:	01013a03          	ld	s4,16(sp)
   13268:	00813a83          	ld	s5,8(sp)
   1326c:	00013b03          	ld	s6,0(sp)
   13270:	04010113          	add	sp,sp,64
   13274:	00008067          	ret

0000000000013278 <__sfmoreglue>:
   13278:	fe010113          	add	sp,sp,-32
   1327c:	fff5879b          	addw	a5,a1,-1
   13280:	00813823          	sd	s0,16(sp)
   13284:	00179413          	sll	s0,a5,0x1
   13288:	00f40433          	add	s0,s0,a5
   1328c:	00241413          	sll	s0,s0,0x2
   13290:	40f40433          	sub	s0,s0,a5
   13294:	00441413          	sll	s0,s0,0x4
   13298:	01213023          	sd	s2,0(sp)
   1329c:	00058913          	mv	s2,a1
   132a0:	0c840593          	add	a1,s0,200
   132a4:	00913423          	sd	s1,8(sp)
   132a8:	00113c23          	sd	ra,24(sp)
   132ac:	021030ef          	jal	16acc <_malloc_r>
   132b0:	00050493          	mv	s1,a0
   132b4:	02050063          	beqz	a0,132d4 <__sfmoreglue+0x5c>
   132b8:	01850513          	add	a0,a0,24
   132bc:	0004b023          	sd	zero,0(s1)
   132c0:	0124a423          	sw	s2,8(s1)
   132c4:	00a4b823          	sd	a0,16(s1)
   132c8:	0b040613          	add	a2,s0,176
   132cc:	00000593          	li	a1,0
   132d0:	808fd0ef          	jal	102d8 <memset>
   132d4:	01813083          	ld	ra,24(sp)
   132d8:	01013403          	ld	s0,16(sp)
   132dc:	00013903          	ld	s2,0(sp)
   132e0:	00048513          	mv	a0,s1
   132e4:	00813483          	ld	s1,8(sp)
   132e8:	02010113          	add	sp,sp,32
   132ec:	00008067          	ret

00000000000132f0 <__sfp>:
   132f0:	fe010113          	add	sp,sp,-32
   132f4:	01213023          	sd	s2,0(sp)
   132f8:	7481b903          	ld	s2,1864(gp) # 24d60 <_global_impure_ptr>
   132fc:	00913423          	sd	s1,8(sp)
   13300:	00113c23          	sd	ra,24(sp)
   13304:	05092783          	lw	a5,80(s2)
   13308:	00813823          	sd	s0,16(sp)
   1330c:	00050493          	mv	s1,a0
   13310:	0a078c63          	beqz	a5,133c8 <__sfp+0xd8>
   13314:	52090913          	add	s2,s2,1312
   13318:	00892703          	lw	a4,8(s2)
   1331c:	01093403          	ld	s0,16(s2)
   13320:	08e05c63          	blez	a4,133b8 <__sfp+0xc8>
   13324:	02071713          	sll	a4,a4,0x20
   13328:	02075713          	srl	a4,a4,0x20
   1332c:	00171793          	sll	a5,a4,0x1
   13330:	00e787b3          	add	a5,a5,a4
   13334:	00279793          	sll	a5,a5,0x2
   13338:	40e787b3          	sub	a5,a5,a4
   1333c:	00479793          	sll	a5,a5,0x4
   13340:	00f407b3          	add	a5,s0,a5
   13344:	00c0006f          	j	13350 <__sfp+0x60>
   13348:	0b040413          	add	s0,s0,176
   1334c:	06f40663          	beq	s0,a5,133b8 <__sfp+0xc8>
   13350:	01041703          	lh	a4,16(s0)
   13354:	fe071ae3          	bnez	a4,13348 <__sfp+0x58>
   13358:	ffff07b7          	lui	a5,0xffff0
   1335c:	00178793          	add	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffcb1e9>
   13360:	00f42823          	sw	a5,16(s0)
   13364:	0a042623          	sw	zero,172(s0)
   13368:	00043023          	sd	zero,0(s0)
   1336c:	00043423          	sd	zero,8(s0)
   13370:	00043c23          	sd	zero,24(s0)
   13374:	02042023          	sw	zero,32(s0)
   13378:	02042423          	sw	zero,40(s0)
   1337c:	00800613          	li	a2,8
   13380:	00000593          	li	a1,0
   13384:	0a440513          	add	a0,s0,164
   13388:	f51fc0ef          	jal	102d8 <memset>
   1338c:	04043c23          	sd	zero,88(s0)
   13390:	06042023          	sw	zero,96(s0)
   13394:	06043c23          	sd	zero,120(s0)
   13398:	08042023          	sw	zero,128(s0)
   1339c:	01813083          	ld	ra,24(sp)
   133a0:	00040513          	mv	a0,s0
   133a4:	01013403          	ld	s0,16(sp)
   133a8:	00813483          	ld	s1,8(sp)
   133ac:	00013903          	ld	s2,0(sp)
   133b0:	02010113          	add	sp,sp,32
   133b4:	00008067          	ret
   133b8:	00093403          	ld	s0,0(s2)
   133bc:	00040c63          	beqz	s0,133d4 <__sfp+0xe4>
   133c0:	00040913          	mv	s2,s0
   133c4:	f55ff06f          	j	13318 <__sfp+0x28>
   133c8:	00090513          	mv	a0,s2
   133cc:	d35ff0ef          	jal	13100 <__sinit.part.0>
   133d0:	f45ff06f          	j	13314 <__sfp+0x24>
   133d4:	2d800593          	li	a1,728
   133d8:	00048513          	mv	a0,s1
   133dc:	6f0030ef          	jal	16acc <_malloc_r>
   133e0:	00050413          	mv	s0,a0
   133e4:	02050863          	beqz	a0,13414 <__sfp+0x124>
   133e8:	01850513          	add	a0,a0,24
   133ec:	00400793          	li	a5,4
   133f0:	00043023          	sd	zero,0(s0)
   133f4:	00f42423          	sw	a5,8(s0)
   133f8:	00a43823          	sd	a0,16(s0)
   133fc:	2c000613          	li	a2,704
   13400:	00000593          	li	a1,0
   13404:	ed5fc0ef          	jal	102d8 <memset>
   13408:	00893023          	sd	s0,0(s2)
   1340c:	00040913          	mv	s2,s0
   13410:	f09ff06f          	j	13318 <__sfp+0x28>
   13414:	00093023          	sd	zero,0(s2)
   13418:	00c00793          	li	a5,12
   1341c:	00f4a023          	sw	a5,0(s1)
   13420:	f7dff06f          	j	1339c <__sfp+0xac>

0000000000013424 <_cleanup>:
   13424:	7481b503          	ld	a0,1864(gp) # 24d60 <_global_impure_ptr>
   13428:	0001d5b7          	lui	a1,0x1d
   1342c:	be858593          	add	a1,a1,-1048 # 1cbe8 <_fclose_r>
   13430:	5bc0006f          	j	139ec <_fwalk_reent>

0000000000013434 <__sinit>:
   13434:	05052783          	lw	a5,80(a0)
   13438:	00078463          	beqz	a5,13440 <__sinit+0xc>
   1343c:	00008067          	ret
   13440:	cc1ff06f          	j	13100 <__sinit.part.0>

0000000000013444 <__sfp_lock_acquire>:
   13444:	00008067          	ret

0000000000013448 <__sfp_lock_release>:
   13448:	00008067          	ret

000000000001344c <__sinit_lock_acquire>:
   1344c:	00008067          	ret

0000000000013450 <__sinit_lock_release>:
   13450:	00008067          	ret

0000000000013454 <__fp_lock_all>:
   13454:	7581b503          	ld	a0,1880(gp) # 24d70 <_impure_ptr>
   13458:	000135b7          	lui	a1,0x13
   1345c:	0e458593          	add	a1,a1,228 # 130e4 <__fp_lock>
   13460:	4cc0006f          	j	1392c <_fwalk>

0000000000013464 <__fp_unlock_all>:
   13464:	7581b503          	ld	a0,1880(gp) # 24d70 <_impure_ptr>
   13468:	000135b7          	lui	a1,0x13
   1346c:	0f858593          	add	a1,a1,248 # 130f8 <__fp_unlock>
   13470:	4bc0006f          	j	1392c <_fwalk>

0000000000013474 <__libc_fini_array>:
   13474:	fe010113          	add	sp,sp,-32
   13478:	00813823          	sd	s0,16(sp)
   1347c:	000247b7          	lui	a5,0x24
   13480:	00024437          	lui	s0,0x24
   13484:	c2878793          	add	a5,a5,-984 # 23c28 <__do_global_dtors_aux_fini_array_entry>
   13488:	c3040413          	add	s0,s0,-976 # 23c30 <impure_data>
   1348c:	40f40433          	sub	s0,s0,a5
   13490:	00913423          	sd	s1,8(sp)
   13494:	00113c23          	sd	ra,24(sp)
   13498:	40345493          	sra	s1,s0,0x3
   1349c:	02048063          	beqz	s1,134bc <__libc_fini_array+0x48>
   134a0:	ff840413          	add	s0,s0,-8
   134a4:	00f40433          	add	s0,s0,a5
   134a8:	00043783          	ld	a5,0(s0)
   134ac:	fff48493          	add	s1,s1,-1
   134b0:	ff840413          	add	s0,s0,-8
   134b4:	000780e7          	jalr	a5
   134b8:	fe0498e3          	bnez	s1,134a8 <__libc_fini_array+0x34>
   134bc:	01813083          	ld	ra,24(sp)
   134c0:	01013403          	ld	s0,16(sp)
   134c4:	00813483          	ld	s1,8(sp)
   134c8:	02010113          	add	sp,sp,32
   134cc:	00008067          	ret

00000000000134d0 <_malloc_trim_r>:
   134d0:	fd010113          	add	sp,sp,-48
   134d4:	01313423          	sd	s3,8(sp)
   134d8:	000249b7          	lui	s3,0x24
   134dc:	02813023          	sd	s0,32(sp)
   134e0:	00913c23          	sd	s1,24(sp)
   134e4:	01213823          	sd	s2,16(sp)
   134e8:	01413023          	sd	s4,0(sp)
   134ec:	02113423          	sd	ra,40(sp)
   134f0:	00058a13          	mv	s4,a1
   134f4:	00050913          	mv	s2,a0
   134f8:	52098993          	add	s3,s3,1312 # 24520 <__malloc_av_>
   134fc:	6e1030ef          	jal	173dc <__malloc_lock>
   13500:	0109b703          	ld	a4,16(s3)
   13504:	000017b7          	lui	a5,0x1
   13508:	fdf78413          	add	s0,a5,-33 # fdf <exit-0xf109>
   1350c:	00873483          	ld	s1,8(a4)
   13510:	ffc4f493          	and	s1,s1,-4
   13514:	00848433          	add	s0,s1,s0
   13518:	41440433          	sub	s0,s0,s4
   1351c:	00c45413          	srl	s0,s0,0xc
   13520:	fff40413          	add	s0,s0,-1
   13524:	00c41413          	sll	s0,s0,0xc
   13528:	00f44e63          	blt	s0,a5,13544 <_malloc_trim_r+0x74>
   1352c:	00000593          	li	a1,0
   13530:	00090513          	mv	a0,s2
   13534:	1ec050ef          	jal	18720 <_sbrk_r>
   13538:	0109b783          	ld	a5,16(s3)
   1353c:	009787b3          	add	a5,a5,s1
   13540:	02f50863          	beq	a0,a5,13570 <_malloc_trim_r+0xa0>
   13544:	00090513          	mv	a0,s2
   13548:	699030ef          	jal	173e0 <__malloc_unlock>
   1354c:	02813083          	ld	ra,40(sp)
   13550:	02013403          	ld	s0,32(sp)
   13554:	01813483          	ld	s1,24(sp)
   13558:	01013903          	ld	s2,16(sp)
   1355c:	00813983          	ld	s3,8(sp)
   13560:	00013a03          	ld	s4,0(sp)
   13564:	00000513          	li	a0,0
   13568:	03010113          	add	sp,sp,48
   1356c:	00008067          	ret
   13570:	408005b3          	neg	a1,s0
   13574:	00090513          	mv	a0,s2
   13578:	1a8050ef          	jal	18720 <_sbrk_r>
   1357c:	fff00793          	li	a5,-1
   13580:	04f50a63          	beq	a0,a5,135d4 <_malloc_trim_r+0x104>
   13584:	000257b7          	lui	a5,0x25
   13588:	df078793          	add	a5,a5,-528 # 24df0 <__malloc_current_mallinfo>
   1358c:	0007a703          	lw	a4,0(a5)
   13590:	0109b683          	ld	a3,16(s3)
   13594:	408484b3          	sub	s1,s1,s0
   13598:	0014e493          	or	s1,s1,1
   1359c:	4087073b          	subw	a4,a4,s0
   135a0:	00090513          	mv	a0,s2
   135a4:	0096b423          	sd	s1,8(a3)
   135a8:	00e7a023          	sw	a4,0(a5)
   135ac:	635030ef          	jal	173e0 <__malloc_unlock>
   135b0:	02813083          	ld	ra,40(sp)
   135b4:	02013403          	ld	s0,32(sp)
   135b8:	01813483          	ld	s1,24(sp)
   135bc:	01013903          	ld	s2,16(sp)
   135c0:	00813983          	ld	s3,8(sp)
   135c4:	00013a03          	ld	s4,0(sp)
   135c8:	00100513          	li	a0,1
   135cc:	03010113          	add	sp,sp,48
   135d0:	00008067          	ret
   135d4:	00000593          	li	a1,0
   135d8:	00090513          	mv	a0,s2
   135dc:	144050ef          	jal	18720 <_sbrk_r>
   135e0:	0109b703          	ld	a4,16(s3)
   135e4:	01f00693          	li	a3,31
   135e8:	40e507b3          	sub	a5,a0,a4
   135ec:	f4f6dce3          	bge	a3,a5,13544 <_malloc_trim_r+0x74>
   135f0:	7601b683          	ld	a3,1888(gp) # 24d78 <__malloc_sbrk_base>
   135f4:	0017e793          	or	a5,a5,1
   135f8:	00f73423          	sd	a5,8(a4)
   135fc:	40d50533          	sub	a0,a0,a3
   13600:	000256b7          	lui	a3,0x25
   13604:	dea6a823          	sw	a0,-528(a3) # 24df0 <__malloc_current_mallinfo>
   13608:	f3dff06f          	j	13544 <_malloc_trim_r+0x74>

000000000001360c <_free_r>:
   1360c:	18058863          	beqz	a1,1379c <_free_r+0x190>
   13610:	fe010113          	add	sp,sp,-32
   13614:	00813823          	sd	s0,16(sp)
   13618:	00913423          	sd	s1,8(sp)
   1361c:	00058413          	mv	s0,a1
   13620:	00050493          	mv	s1,a0
   13624:	00113c23          	sd	ra,24(sp)
   13628:	5b5030ef          	jal	173dc <__malloc_lock>
   1362c:	ff843503          	ld	a0,-8(s0)
   13630:	ff040713          	add	a4,s0,-16
   13634:	000245b7          	lui	a1,0x24
   13638:	ffe57793          	and	a5,a0,-2
   1363c:	00f70633          	add	a2,a4,a5
   13640:	52058593          	add	a1,a1,1312 # 24520 <__malloc_av_>
   13644:	00863683          	ld	a3,8(a2)
   13648:	0105b803          	ld	a6,16(a1)
   1364c:	ffc6f693          	and	a3,a3,-4
   13650:	1ac80863          	beq	a6,a2,13800 <_free_r+0x1f4>
   13654:	00d63423          	sd	a3,8(a2)
   13658:	00157513          	and	a0,a0,1
   1365c:	00d60833          	add	a6,a2,a3
   13660:	0a051463          	bnez	a0,13708 <_free_r+0xfc>
   13664:	ff043303          	ld	t1,-16(s0)
   13668:	00883803          	ld	a6,8(a6)
   1366c:	00024537          	lui	a0,0x24
   13670:	40670733          	sub	a4,a4,t1
   13674:	01073883          	ld	a7,16(a4)
   13678:	53050513          	add	a0,a0,1328 # 24530 <__malloc_av_+0x10>
   1367c:	006787b3          	add	a5,a5,t1
   13680:	00187813          	and	a6,a6,1
   13684:	14a88863          	beq	a7,a0,137d4 <_free_r+0x1c8>
   13688:	01873303          	ld	t1,24(a4)
   1368c:	0068bc23          	sd	t1,24(a7)
   13690:	01133823          	sd	a7,16(t1)
   13694:	1a080c63          	beqz	a6,1384c <_free_r+0x240>
   13698:	0017e693          	or	a3,a5,1
   1369c:	00d73423          	sd	a3,8(a4)
   136a0:	00f63023          	sd	a5,0(a2)
   136a4:	1ff00693          	li	a3,511
   136a8:	08f6e063          	bltu	a3,a5,13728 <_free_r+0x11c>
   136ac:	0037d793          	srl	a5,a5,0x3
   136b0:	0017869b          	addw	a3,a5,1
   136b4:	0016969b          	sllw	a3,a3,0x1
   136b8:	00369693          	sll	a3,a3,0x3
   136bc:	0085b803          	ld	a6,8(a1)
   136c0:	00d586b3          	add	a3,a1,a3
   136c4:	0006b503          	ld	a0,0(a3)
   136c8:	4027d61b          	sraw	a2,a5,0x2
   136cc:	00100793          	li	a5,1
   136d0:	00c797b3          	sll	a5,a5,a2
   136d4:	0107e7b3          	or	a5,a5,a6
   136d8:	ff068613          	add	a2,a3,-16
   136dc:	00c73c23          	sd	a2,24(a4)
   136e0:	00a73823          	sd	a0,16(a4)
   136e4:	00f5b423          	sd	a5,8(a1)
   136e8:	00e6b023          	sd	a4,0(a3)
   136ec:	00e53c23          	sd	a4,24(a0)
   136f0:	01013403          	ld	s0,16(sp)
   136f4:	01813083          	ld	ra,24(sp)
   136f8:	00048513          	mv	a0,s1
   136fc:	00813483          	ld	s1,8(sp)
   13700:	02010113          	add	sp,sp,32
   13704:	4dd0306f          	j	173e0 <__malloc_unlock>
   13708:	00883503          	ld	a0,8(a6)
   1370c:	00157513          	and	a0,a0,1
   13710:	08050863          	beqz	a0,137a0 <_free_r+0x194>
   13714:	0017e693          	or	a3,a5,1
   13718:	fed43c23          	sd	a3,-8(s0)
   1371c:	00f63023          	sd	a5,0(a2)
   13720:	1ff00693          	li	a3,511
   13724:	f8f6f4e3          	bgeu	a3,a5,136ac <_free_r+0xa0>
   13728:	0097d693          	srl	a3,a5,0x9
   1372c:	00400613          	li	a2,4
   13730:	12d66263          	bltu	a2,a3,13854 <_free_r+0x248>
   13734:	0067d693          	srl	a3,a5,0x6
   13738:	0396851b          	addw	a0,a3,57
   1373c:	0015151b          	sllw	a0,a0,0x1
   13740:	0386861b          	addw	a2,a3,56
   13744:	00351513          	sll	a0,a0,0x3
   13748:	00a58533          	add	a0,a1,a0
   1374c:	00053683          	ld	a3,0(a0)
   13750:	ff050513          	add	a0,a0,-16
   13754:	00d51863          	bne	a0,a3,13764 <_free_r+0x158>
   13758:	15c0006f          	j	138b4 <_free_r+0x2a8>
   1375c:	0106b683          	ld	a3,16(a3)
   13760:	00d50863          	beq	a0,a3,13770 <_free_r+0x164>
   13764:	0086b603          	ld	a2,8(a3)
   13768:	ffc67613          	and	a2,a2,-4
   1376c:	fec7e8e3          	bltu	a5,a2,1375c <_free_r+0x150>
   13770:	0186b503          	ld	a0,24(a3)
   13774:	00a73c23          	sd	a0,24(a4)
   13778:	00d73823          	sd	a3,16(a4)
   1377c:	01013403          	ld	s0,16(sp)
   13780:	00e53823          	sd	a4,16(a0)
   13784:	01813083          	ld	ra,24(sp)
   13788:	00048513          	mv	a0,s1
   1378c:	00813483          	ld	s1,8(sp)
   13790:	00e6bc23          	sd	a4,24(a3)
   13794:	02010113          	add	sp,sp,32
   13798:	4490306f          	j	173e0 <__malloc_unlock>
   1379c:	00008067          	ret
   137a0:	00024537          	lui	a0,0x24
   137a4:	00d787b3          	add	a5,a5,a3
   137a8:	53050513          	add	a0,a0,1328 # 24530 <__malloc_av_+0x10>
   137ac:	01063683          	ld	a3,16(a2)
   137b0:	0ea68063          	beq	a3,a0,13890 <_free_r+0x284>
   137b4:	01863803          	ld	a6,24(a2)
   137b8:	0017e513          	or	a0,a5,1
   137bc:	00f70633          	add	a2,a4,a5
   137c0:	0106bc23          	sd	a6,24(a3)
   137c4:	00d83823          	sd	a3,16(a6)
   137c8:	00a73423          	sd	a0,8(a4)
   137cc:	00f63023          	sd	a5,0(a2)
   137d0:	ed5ff06f          	j	136a4 <_free_r+0x98>
   137d4:	14081463          	bnez	a6,1391c <_free_r+0x310>
   137d8:	01063583          	ld	a1,16(a2)
   137dc:	01863603          	ld	a2,24(a2)
   137e0:	00f686b3          	add	a3,a3,a5
   137e4:	0016e793          	or	a5,a3,1
   137e8:	00c5bc23          	sd	a2,24(a1)
   137ec:	00b63823          	sd	a1,16(a2)
   137f0:	00f73423          	sd	a5,8(a4)
   137f4:	00d70733          	add	a4,a4,a3
   137f8:	00d73023          	sd	a3,0(a4)
   137fc:	ef5ff06f          	j	136f0 <_free_r+0xe4>
   13800:	00157513          	and	a0,a0,1
   13804:	00d786b3          	add	a3,a5,a3
   13808:	02051063          	bnez	a0,13828 <_free_r+0x21c>
   1380c:	ff043503          	ld	a0,-16(s0)
   13810:	40a70733          	sub	a4,a4,a0
   13814:	01873783          	ld	a5,24(a4)
   13818:	01073603          	ld	a2,16(a4)
   1381c:	00a686b3          	add	a3,a3,a0
   13820:	00f63c23          	sd	a5,24(a2)
   13824:	00c7b823          	sd	a2,16(a5)
   13828:	0016e613          	or	a2,a3,1
   1382c:	7681b783          	ld	a5,1896(gp) # 24d80 <__malloc_trim_threshold>
   13830:	00c73423          	sd	a2,8(a4)
   13834:	00e5b823          	sd	a4,16(a1)
   13838:	eaf6ece3          	bltu	a3,a5,136f0 <_free_r+0xe4>
   1383c:	7881b583          	ld	a1,1928(gp) # 24da0 <__malloc_top_pad>
   13840:	00048513          	mv	a0,s1
   13844:	c8dff0ef          	jal	134d0 <_malloc_trim_r>
   13848:	ea9ff06f          	j	136f0 <_free_r+0xe4>
   1384c:	00d787b3          	add	a5,a5,a3
   13850:	f5dff06f          	j	137ac <_free_r+0x1a0>
   13854:	01400613          	li	a2,20
   13858:	02d67263          	bgeu	a2,a3,1387c <_free_r+0x270>
   1385c:	05400613          	li	a2,84
   13860:	06d66863          	bltu	a2,a3,138d0 <_free_r+0x2c4>
   13864:	00c7d693          	srl	a3,a5,0xc
   13868:	06f6851b          	addw	a0,a3,111
   1386c:	0015151b          	sllw	a0,a0,0x1
   13870:	06e6861b          	addw	a2,a3,110
   13874:	00351513          	sll	a0,a0,0x3
   13878:	ed1ff06f          	j	13748 <_free_r+0x13c>
   1387c:	05c6851b          	addw	a0,a3,92
   13880:	0015151b          	sllw	a0,a0,0x1
   13884:	05b6861b          	addw	a2,a3,91
   13888:	00351513          	sll	a0,a0,0x3
   1388c:	ebdff06f          	j	13748 <_free_r+0x13c>
   13890:	02e5b423          	sd	a4,40(a1)
   13894:	02e5b023          	sd	a4,32(a1)
   13898:	0017e693          	or	a3,a5,1
   1389c:	00a73c23          	sd	a0,24(a4)
   138a0:	00a73823          	sd	a0,16(a4)
   138a4:	00d73423          	sd	a3,8(a4)
   138a8:	00f70733          	add	a4,a4,a5
   138ac:	00f73023          	sd	a5,0(a4)
   138b0:	e41ff06f          	j	136f0 <_free_r+0xe4>
   138b4:	0085b803          	ld	a6,8(a1)
   138b8:	4026561b          	sraw	a2,a2,0x2
   138bc:	00100793          	li	a5,1
   138c0:	00c797b3          	sll	a5,a5,a2
   138c4:	0107e7b3          	or	a5,a5,a6
   138c8:	00f5b423          	sd	a5,8(a1)
   138cc:	ea9ff06f          	j	13774 <_free_r+0x168>
   138d0:	15400613          	li	a2,340
   138d4:	00d66e63          	bltu	a2,a3,138f0 <_free_r+0x2e4>
   138d8:	00f7d693          	srl	a3,a5,0xf
   138dc:	0786851b          	addw	a0,a3,120
   138e0:	0015151b          	sllw	a0,a0,0x1
   138e4:	0776861b          	addw	a2,a3,119
   138e8:	00351513          	sll	a0,a0,0x3
   138ec:	e5dff06f          	j	13748 <_free_r+0x13c>
   138f0:	55400613          	li	a2,1364
   138f4:	00d66e63          	bltu	a2,a3,13910 <_free_r+0x304>
   138f8:	0127d693          	srl	a3,a5,0x12
   138fc:	07d6851b          	addw	a0,a3,125
   13900:	0015151b          	sllw	a0,a0,0x1
   13904:	07c6861b          	addw	a2,a3,124
   13908:	00351513          	sll	a0,a0,0x3
   1390c:	e3dff06f          	j	13748 <_free_r+0x13c>
   13910:	7f000513          	li	a0,2032
   13914:	07e00613          	li	a2,126
   13918:	e31ff06f          	j	13748 <_free_r+0x13c>
   1391c:	0017e693          	or	a3,a5,1
   13920:	00d73423          	sd	a3,8(a4)
   13924:	00f63023          	sd	a5,0(a2)
   13928:	dc9ff06f          	j	136f0 <_free_r+0xe4>

000000000001392c <_fwalk>:
   1392c:	fc010113          	add	sp,sp,-64
   13930:	03213023          	sd	s2,32(sp)
   13934:	01313c23          	sd	s3,24(sp)
   13938:	01413823          	sd	s4,16(sp)
   1393c:	01513423          	sd	s5,8(sp)
   13940:	01613023          	sd	s6,0(sp)
   13944:	02113c23          	sd	ra,56(sp)
   13948:	02813823          	sd	s0,48(sp)
   1394c:	02913423          	sd	s1,40(sp)
   13950:	00058a93          	mv	s5,a1
   13954:	52050993          	add	s3,a0,1312
   13958:	00000913          	li	s2,0
   1395c:	00100b13          	li	s6,1
   13960:	fff00a13          	li	s4,-1
   13964:	0089a783          	lw	a5,8(s3)
   13968:	0109b403          	ld	s0,16(s3)
   1396c:	04f05663          	blez	a5,139b8 <_fwalk+0x8c>
   13970:	02079793          	sll	a5,a5,0x20
   13974:	0207d793          	srl	a5,a5,0x20
   13978:	00179493          	sll	s1,a5,0x1
   1397c:	00f484b3          	add	s1,s1,a5
   13980:	00249493          	sll	s1,s1,0x2
   13984:	40f484b3          	sub	s1,s1,a5
   13988:	00449493          	sll	s1,s1,0x4
   1398c:	009404b3          	add	s1,s0,s1
   13990:	01045783          	lhu	a5,16(s0)
   13994:	00fb7e63          	bgeu	s6,a5,139b0 <_fwalk+0x84>
   13998:	01241783          	lh	a5,18(s0)
   1399c:	00040513          	mv	a0,s0
   139a0:	01478863          	beq	a5,s4,139b0 <_fwalk+0x84>
   139a4:	000a80e7          	jalr	s5
   139a8:	01256933          	or	s2,a0,s2
   139ac:	0009091b          	sext.w	s2,s2
   139b0:	0b040413          	add	s0,s0,176
   139b4:	fc849ee3          	bne	s1,s0,13990 <_fwalk+0x64>
   139b8:	0009b983          	ld	s3,0(s3)
   139bc:	fa0994e3          	bnez	s3,13964 <_fwalk+0x38>
   139c0:	03813083          	ld	ra,56(sp)
   139c4:	03013403          	ld	s0,48(sp)
   139c8:	02813483          	ld	s1,40(sp)
   139cc:	01813983          	ld	s3,24(sp)
   139d0:	01013a03          	ld	s4,16(sp)
   139d4:	00813a83          	ld	s5,8(sp)
   139d8:	00013b03          	ld	s6,0(sp)
   139dc:	00090513          	mv	a0,s2
   139e0:	02013903          	ld	s2,32(sp)
   139e4:	04010113          	add	sp,sp,64
   139e8:	00008067          	ret

00000000000139ec <_fwalk_reent>:
   139ec:	fb010113          	add	sp,sp,-80
   139f0:	03213823          	sd	s2,48(sp)
   139f4:	03313423          	sd	s3,40(sp)
   139f8:	03413023          	sd	s4,32(sp)
   139fc:	01513c23          	sd	s5,24(sp)
   13a00:	01613823          	sd	s6,16(sp)
   13a04:	01713423          	sd	s7,8(sp)
   13a08:	04113423          	sd	ra,72(sp)
   13a0c:	04813023          	sd	s0,64(sp)
   13a10:	02913c23          	sd	s1,56(sp)
   13a14:	00050913          	mv	s2,a0
   13a18:	00058a93          	mv	s5,a1
   13a1c:	52050993          	add	s3,a0,1312
   13a20:	00000b13          	li	s6,0
   13a24:	00100b93          	li	s7,1
   13a28:	fff00a13          	li	s4,-1
   13a2c:	0089a783          	lw	a5,8(s3)
   13a30:	0109b403          	ld	s0,16(s3)
   13a34:	04f05863          	blez	a5,13a84 <_fwalk_reent+0x98>
   13a38:	02079793          	sll	a5,a5,0x20
   13a3c:	0207d793          	srl	a5,a5,0x20
   13a40:	00179493          	sll	s1,a5,0x1
   13a44:	00f484b3          	add	s1,s1,a5
   13a48:	00249493          	sll	s1,s1,0x2
   13a4c:	40f484b3          	sub	s1,s1,a5
   13a50:	00449493          	sll	s1,s1,0x4
   13a54:	009404b3          	add	s1,s0,s1
   13a58:	01045783          	lhu	a5,16(s0)
   13a5c:	02fbf063          	bgeu	s7,a5,13a7c <_fwalk_reent+0x90>
   13a60:	01241783          	lh	a5,18(s0)
   13a64:	00040593          	mv	a1,s0
   13a68:	00090513          	mv	a0,s2
   13a6c:	01478863          	beq	a5,s4,13a7c <_fwalk_reent+0x90>
   13a70:	000a80e7          	jalr	s5
   13a74:	01656b33          	or	s6,a0,s6
   13a78:	000b0b1b          	sext.w	s6,s6
   13a7c:	0b040413          	add	s0,s0,176
   13a80:	fc849ce3          	bne	s1,s0,13a58 <_fwalk_reent+0x6c>
   13a84:	0009b983          	ld	s3,0(s3)
   13a88:	fa0992e3          	bnez	s3,13a2c <_fwalk_reent+0x40>
   13a8c:	04813083          	ld	ra,72(sp)
   13a90:	04013403          	ld	s0,64(sp)
   13a94:	03813483          	ld	s1,56(sp)
   13a98:	03013903          	ld	s2,48(sp)
   13a9c:	02813983          	ld	s3,40(sp)
   13aa0:	02013a03          	ld	s4,32(sp)
   13aa4:	01813a83          	ld	s5,24(sp)
   13aa8:	00813b83          	ld	s7,8(sp)
   13aac:	000b0513          	mv	a0,s6
   13ab0:	01013b03          	ld	s6,16(sp)
   13ab4:	05010113          	add	sp,sp,80
   13ab8:	00008067          	ret

0000000000013abc <eshdn1>:
   13abc:	00450693          	add	a3,a0,4
   13ac0:	00000713          	li	a4,0
   13ac4:	01a50513          	add	a0,a0,26
   13ac8:	ffff8837          	lui	a6,0xffff8
   13acc:	0006d783          	lhu	a5,0(a3)
   13ad0:	0017f613          	and	a2,a5,1
   13ad4:	00060463          	beqz	a2,13adc <eshdn1+0x20>
   13ad8:	00176713          	or	a4,a4,1
   13adc:	00277613          	and	a2,a4,2
   13ae0:	0017d793          	srl	a5,a5,0x1
   13ae4:	0017171b          	sllw	a4,a4,0x1
   13ae8:	0107e5b3          	or	a1,a5,a6
   13aec:	00060663          	beqz	a2,13af8 <eshdn1+0x3c>
   13af0:	03059793          	sll	a5,a1,0x30
   13af4:	0307d793          	srl	a5,a5,0x30
   13af8:	00f69023          	sh	a5,0(a3)
   13afc:	03071713          	sll	a4,a4,0x30
   13b00:	00268693          	add	a3,a3,2
   13b04:	03075713          	srl	a4,a4,0x30
   13b08:	fcd512e3          	bne	a0,a3,13acc <eshdn1+0x10>
   13b0c:	00008067          	ret

0000000000013b10 <eshup1>:
   13b10:	01850693          	add	a3,a0,24
   13b14:	00000713          	li	a4,0
   13b18:	00250513          	add	a0,a0,2
   13b1c:	0006d783          	lhu	a5,0(a3)
   13b20:	00f7d613          	srl	a2,a5,0xf
   13b24:	0017979b          	sllw	a5,a5,0x1
   13b28:	00060463          	beqz	a2,13b30 <eshup1+0x20>
   13b2c:	00176713          	or	a4,a4,1
   13b30:	00277613          	and	a2,a4,2
   13b34:	03079793          	sll	a5,a5,0x30
   13b38:	0017171b          	sllw	a4,a4,0x1
   13b3c:	0307d793          	srl	a5,a5,0x30
   13b40:	00060463          	beqz	a2,13b48 <eshup1+0x38>
   13b44:	0017e793          	or	a5,a5,1
   13b48:	00f69023          	sh	a5,0(a3)
   13b4c:	03071713          	sll	a4,a4,0x30
   13b50:	ffe68693          	add	a3,a3,-2
   13b54:	03075713          	srl	a4,a4,0x30
   13b58:	fcd512e3          	bne	a0,a3,13b1c <eshup1+0xc>
   13b5c:	00008067          	ret

0000000000013b60 <m16m>:
   13b60:	fa010113          	add	sp,sp,-96
   13b64:	03413823          	sd	s4,48(sp)
   13b68:	00010a37          	lui	s4,0x10
   13b6c:	04813823          	sd	s0,80(sp)
   13b70:	04913423          	sd	s1,72(sp)
   13b74:	05213023          	sd	s2,64(sp)
   13b78:	03313c23          	sd	s3,56(sp)
   13b7c:	03513423          	sd	s5,40(sp)
   13b80:	04113c23          	sd	ra,88(sp)
   13b84:	00050993          	mv	s3,a0
   13b88:	00060493          	mv	s1,a2
   13b8c:	00011b23          	sh	zero,22(sp)
   13b90:	00011c23          	sh	zero,24(sp)
   13b94:	01858913          	add	s2,a1,24
   13b98:	01810413          	add	s0,sp,24
   13b9c:	00410a93          	add	s5,sp,4
   13ba0:	fffa0a13          	add	s4,s4,-1 # ffff <exit-0xe9>
   13ba4:	00095503          	lhu	a0,0(s2)
   13ba8:	00098593          	mv	a1,s3
   13bac:	ffe40413          	add	s0,s0,-2
   13bb0:	ffe90913          	add	s2,s2,-2
   13bb4:	02050a63          	beqz	a0,13be8 <m16m+0x88>
   13bb8:	7b10d0ef          	jal	21b68 <__muldi3>
   13bbc:	00245703          	lhu	a4,2(s0)
   13bc0:	00045683          	lhu	a3,0(s0)
   13bc4:	014577b3          	and	a5,a0,s4
   13bc8:	00e787b3          	add	a5,a5,a4
   13bcc:	01055513          	srl	a0,a0,0x10
   13bd0:	0107d713          	srl	a4,a5,0x10
   13bd4:	00d50533          	add	a0,a0,a3
   13bd8:	00e50533          	add	a0,a0,a4
   13bdc:	00a41023          	sh	a0,0(s0)
   13be0:	00f41123          	sh	a5,2(s0)
   13be4:	0105551b          	srlw	a0,a0,0x10
   13be8:	fea41f23          	sh	a0,-2(s0)
   13bec:	fb541ce3          	bne	s0,s5,13ba4 <m16m+0x44>
   13bf0:	00448613          	add	a2,s1,4
   13bf4:	01a10713          	add	a4,sp,26
   13bf8:	00045783          	lhu	a5,0(s0)
   13bfc:	00240413          	add	s0,s0,2
   13c00:	00260613          	add	a2,a2,2
   13c04:	fef61f23          	sh	a5,-2(a2)
   13c08:	fe8718e3          	bne	a4,s0,13bf8 <m16m+0x98>
   13c0c:	05813083          	ld	ra,88(sp)
   13c10:	05013403          	ld	s0,80(sp)
   13c14:	04813483          	ld	s1,72(sp)
   13c18:	04013903          	ld	s2,64(sp)
   13c1c:	03813983          	ld	s3,56(sp)
   13c20:	03013a03          	ld	s4,48(sp)
   13c24:	02813a83          	ld	s5,40(sp)
   13c28:	06010113          	add	sp,sp,96
   13c2c:	00008067          	ret

0000000000013c30 <emovo.constprop.0>:
   13c30:	00055703          	lhu	a4,0(a0)
   13c34:	00255783          	lhu	a5,2(a0)
   13c38:	00070663          	beqz	a4,13c44 <emovo.constprop.0+0x14>
   13c3c:	00008737          	lui	a4,0x8
   13c40:	00e7e7b3          	or	a5,a5,a4
   13c44:	00f59923          	sh	a5,18(a1)
   13c48:	00255703          	lhu	a4,2(a0)
   13c4c:	000087b7          	lui	a5,0x8
   13c50:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   13c54:	02f70463          	beq	a4,a5,13c7c <emovo.constprop.0+0x4c>
   13c58:	00650793          	add	a5,a0,6
   13c5c:	01058593          	add	a1,a1,16
   13c60:	01850513          	add	a0,a0,24
   13c64:	0007d703          	lhu	a4,0(a5)
   13c68:	00278793          	add	a5,a5,2
   13c6c:	ffe58593          	add	a1,a1,-2
   13c70:	00e59123          	sh	a4,2(a1)
   13c74:	fea798e3          	bne	a5,a0,13c64 <emovo.constprop.0+0x34>
   13c78:	00008067          	ret
   13c7c:	00650793          	add	a5,a0,6
   13c80:	01a50513          	add	a0,a0,26
   13c84:	0007d703          	lhu	a4,0(a5)
   13c88:	00278793          	add	a5,a5,2
   13c8c:	02071a63          	bnez	a4,13cc0 <emovo.constprop.0+0x90>
   13c90:	fef51ae3          	bne	a0,a5,13c84 <emovo.constprop.0+0x54>
   13c94:	01258713          	add	a4,a1,18
   13c98:	00058793          	mv	a5,a1
   13c9c:	00278793          	add	a5,a5,2
   13ca0:	fe079f23          	sh	zero,-2(a5)
   13ca4:	fee79ce3          	bne	a5,a4,13c9c <emovo.constprop.0+0x6c>
   13ca8:	0125d783          	lhu	a5,18(a1)
   13cac:	00008737          	lui	a4,0x8
   13cb0:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   13cb4:	00e7e7b3          	or	a5,a5,a4
   13cb8:	00f59923          	sh	a5,18(a1)
   13cbc:	00008067          	ret
   13cc0:	01058713          	add	a4,a1,16
   13cc4:	00058793          	mv	a5,a1
   13cc8:	00278793          	add	a5,a5,2
   13ccc:	fe079f23          	sh	zero,-2(a5)
   13cd0:	fee79ce3          	bne	a5,a4,13cc8 <emovo.constprop.0+0x98>
   13cd4:	ffffc7b7          	lui	a5,0xffffc
   13cd8:	00f59823          	sh	a5,16(a1)
   13cdc:	ffff87b7          	lui	a5,0xffff8
   13ce0:	fff7c793          	not	a5,a5
   13ce4:	00f59923          	sh	a5,18(a1)
   13ce8:	00008067          	ret

0000000000013cec <enormlz>:
   13cec:	00455783          	lhu	a5,4(a0)
   13cf0:	fe010113          	add	sp,sp,-32
   13cf4:	00913423          	sd	s1,8(sp)
   13cf8:	00113c23          	sd	ra,24(sp)
   13cfc:	00813823          	sd	s0,16(sp)
   13d00:	01213023          	sd	s2,0(sp)
   13d04:	00050493          	mv	s1,a0
   13d08:	0c079663          	bnez	a5,13dd4 <enormlz+0xe8>
   13d0c:	00655783          	lhu	a5,6(a0)
   13d10:	00000413          	li	s0,0
   13d14:	00f7d713          	srl	a4,a5,0xf
   13d18:	0a071063          	bnez	a4,13db8 <enormlz+0xcc>
   13d1c:	01850693          	add	a3,a0,24
   13d20:	0a000613          	li	a2,160
   13d24:	02079663          	bnez	a5,13d50 <enormlz+0x64>
   13d28:	00448793          	add	a5,s1,4
   13d2c:	0027d703          	lhu	a4,2(a5) # ffffffffffff8002 <__BSS_END__+0xfffffffffffd31ea>
   13d30:	00278793          	add	a5,a5,2
   13d34:	fee79f23          	sh	a4,-2(a5)
   13d38:	fed79ae3          	bne	a5,a3,13d2c <enormlz+0x40>
   13d3c:	00049c23          	sh	zero,24(s1)
   13d40:	0104041b          	addw	s0,s0,16
   13d44:	06c40a63          	beq	s0,a2,13db8 <enormlz+0xcc>
   13d48:	0064d783          	lhu	a5,6(s1)
   13d4c:	fc078ee3          	beqz	a5,13d28 <enormlz+0x3c>
   13d50:	0ff00713          	li	a4,255
   13d54:	04f76063          	bltu	a4,a5,13d94 <enormlz+0xa8>
   13d58:	01848813          	add	a6,s1,24
   13d5c:	00248593          	add	a1,s1,2
   13d60:	0ff00513          	li	a0,255
   13d64:	00000793          	li	a5,0
   13d68:	00080713          	mv	a4,a6
   13d6c:	00075683          	lhu	a3,0(a4)
   13d70:	ffe70713          	add	a4,a4,-2
   13d74:	0086961b          	sllw	a2,a3,0x8
   13d78:	00c7e7b3          	or	a5,a5,a2
   13d7c:	00f71123          	sh	a5,2(a4)
   13d80:	0086d793          	srl	a5,a3,0x8
   13d84:	feb714e3          	bne	a4,a1,13d6c <enormlz+0x80>
   13d88:	0064d783          	lhu	a5,6(s1)
   13d8c:	0084041b          	addw	s0,s0,8
   13d90:	fcf57ae3          	bgeu	a0,a5,13d64 <enormlz+0x78>
   13d94:	0a000913          	li	s2,160
   13d98:	0140006f          	j	13dac <enormlz+0xc0>
   13d9c:	0014041b          	addw	s0,s0,1
   13da0:	d71ff0ef          	jal	13b10 <eshup1>
   13da4:	00894a63          	blt	s2,s0,13db8 <enormlz+0xcc>
   13da8:	0064d783          	lhu	a5,6(s1)
   13dac:	00f7d793          	srl	a5,a5,0xf
   13db0:	00048513          	mv	a0,s1
   13db4:	fe0784e3          	beqz	a5,13d9c <enormlz+0xb0>
   13db8:	01813083          	ld	ra,24(sp)
   13dbc:	00040513          	mv	a0,s0
   13dc0:	01013403          	ld	s0,16(sp)
   13dc4:	00813483          	ld	s1,8(sp)
   13dc8:	00013903          	ld	s2,0(sp)
   13dcc:	02010113          	add	sp,sp,32
   13dd0:	00008067          	ret
   13dd4:	0ff00713          	li	a4,255
   13dd8:	00000413          	li	s0,0
   13ddc:	04f76063          	bltu	a4,a5,13e1c <enormlz+0x130>
   13de0:	f6f00913          	li	s2,-145
   13de4:	0140006f          	j	13df8 <enormlz+0x10c>
   13de8:	fff4041b          	addw	s0,s0,-1
   13dec:	cd1ff0ef          	jal	13abc <eshdn1>
   13df0:	fd2404e3          	beq	s0,s2,13db8 <enormlz+0xcc>
   13df4:	0044d783          	lhu	a5,4(s1)
   13df8:	00048513          	mv	a0,s1
   13dfc:	fe0796e3          	bnez	a5,13de8 <enormlz+0xfc>
   13e00:	01813083          	ld	ra,24(sp)
   13e04:	00040513          	mv	a0,s0
   13e08:	01013403          	ld	s0,16(sp)
   13e0c:	00813483          	ld	s1,8(sp)
   13e10:	00013903          	ld	s2,0(sp)
   13e14:	02010113          	add	sp,sp,32
   13e18:	00008067          	ret
   13e1c:	00450713          	add	a4,a0,4
   13e20:	01a50593          	add	a1,a0,26
   13e24:	00000793          	li	a5,0
   13e28:	00075683          	lhu	a3,0(a4)
   13e2c:	00270713          	add	a4,a4,2
   13e30:	0086d61b          	srlw	a2,a3,0x8
   13e34:	00c7e7b3          	or	a5,a5,a2
   13e38:	0086969b          	sllw	a3,a3,0x8
   13e3c:	fef71f23          	sh	a5,-2(a4)
   13e40:	03069793          	sll	a5,a3,0x30
   13e44:	0307d793          	srl	a5,a5,0x30
   13e48:	feb710e3          	bne	a4,a1,13e28 <enormlz+0x13c>
   13e4c:	0044d783          	lhu	a5,4(s1)
   13e50:	ff800413          	li	s0,-8
   13e54:	f8dff06f          	j	13de0 <enormlz+0xf4>

0000000000013e58 <eshift.part.0>:
   13e58:	fd010113          	add	sp,sp,-48
   13e5c:	02813023          	sd	s0,32(sp)
   13e60:	00913c23          	sd	s1,24(sp)
   13e64:	02113423          	sd	ra,40(sp)
   13e68:	01213823          	sd	s2,16(sp)
   13e6c:	01313423          	sd	s3,8(sp)
   13e70:	00058493          	mv	s1,a1
   13e74:	00050413          	mv	s0,a0
   13e78:	0a05c463          	bltz	a1,13f20 <eshift.part.0+0xc8>
   13e7c:	00f00793          	li	a5,15
   13e80:	00058613          	mv	a2,a1
   13e84:	00450513          	add	a0,a0,4
   13e88:	01840693          	add	a3,s0,24
   13e8c:	00f00593          	li	a1,15
   13e90:	0297d463          	bge	a5,s1,13eb8 <eshift.part.0+0x60>
   13e94:	00050793          	mv	a5,a0
   13e98:	0027d703          	lhu	a4,2(a5)
   13e9c:	00278793          	add	a5,a5,2
   13ea0:	fee79f23          	sh	a4,-2(a5)
   13ea4:	fed79ae3          	bne	a5,a3,13e98 <eshift.part.0+0x40>
   13ea8:	00041c23          	sh	zero,24(s0)
   13eac:	ff06061b          	addw	a2,a2,-16
   13eb0:	fec5c2e3          	blt	a1,a2,13e94 <eshift.part.0+0x3c>
   13eb4:	00f4f493          	and	s1,s1,15
   13eb8:	00700793          	li	a5,7
   13ebc:	0297d863          	bge	a5,s1,13eec <eshift.part.0+0x94>
   13ec0:	01840713          	add	a4,s0,24
   13ec4:	00240593          	add	a1,s0,2
   13ec8:	00000793          	li	a5,0
   13ecc:	00075683          	lhu	a3,0(a4)
   13ed0:	ffe70713          	add	a4,a4,-2
   13ed4:	0086961b          	sllw	a2,a3,0x8
   13ed8:	00c7e7b3          	or	a5,a5,a2
   13edc:	00f71123          	sh	a5,2(a4)
   13ee0:	0086d793          	srl	a5,a3,0x8
   13ee4:	feb714e3          	bne	a4,a1,13ecc <eshift.part.0+0x74>
   13ee8:	ff84849b          	addw	s1,s1,-8
   13eec:	00048a63          	beqz	s1,13f00 <eshift.part.0+0xa8>
   13ef0:	fff4849b          	addw	s1,s1,-1
   13ef4:	00040513          	mv	a0,s0
   13ef8:	c19ff0ef          	jal	13b10 <eshup1>
   13efc:	fe049ae3          	bnez	s1,13ef0 <eshift.part.0+0x98>
   13f00:	00000513          	li	a0,0
   13f04:	02813083          	ld	ra,40(sp)
   13f08:	02013403          	ld	s0,32(sp)
   13f0c:	01813483          	ld	s1,24(sp)
   13f10:	01013903          	ld	s2,16(sp)
   13f14:	00813983          	ld	s3,8(sp)
   13f18:	03010113          	add	sp,sp,48
   13f1c:	00008067          	ret
   13f20:	ff100793          	li	a5,-15
   13f24:	40b0093b          	negw	s2,a1
   13f28:	00000993          	li	s3,0
   13f2c:	01850593          	add	a1,a0,24
   13f30:	00450693          	add	a3,a0,4
   13f34:	00f00613          	li	a2,15
   13f38:	0cf4dc63          	bge	s1,a5,14010 <eshift.part.0+0x1b8>
   13f3c:	01845703          	lhu	a4,24(s0)
   13f40:	00058793          	mv	a5,a1
   13f44:	00e9e9b3          	or	s3,s3,a4
   13f48:	ffe7d703          	lhu	a4,-2(a5)
   13f4c:	ffe78793          	add	a5,a5,-2
   13f50:	00e79123          	sh	a4,2(a5)
   13f54:	fed79ae3          	bne	a5,a3,13f48 <eshift.part.0+0xf0>
   13f58:	00041223          	sh	zero,4(s0)
   13f5c:	ff09091b          	addw	s2,s2,-16
   13f60:	fd264ee3          	blt	a2,s2,13f3c <eshift.part.0+0xe4>
   13f64:	ff000913          	li	s2,-16
   13f68:	ff100713          	li	a4,-15
   13f6c:	4099093b          	subw	s2,s2,s1
   13f70:	00000793          	li	a5,0
   13f74:	08e4c863          	blt	s1,a4,14004 <eshift.part.0+0x1ac>
   13f78:	00f9093b          	addw	s2,s2,a5
   13f7c:	00700793          	li	a5,7
   13f80:	0327de63          	bge	a5,s2,13fbc <eshift.part.0+0x164>
   13f84:	01844783          	lbu	a5,24(s0)
   13f88:	01a40593          	add	a1,s0,26
   13f8c:	00f9e9b3          	or	s3,s3,a5
   13f90:	00000793          	li	a5,0
   13f94:	0006d703          	lhu	a4,0(a3)
   13f98:	00268693          	add	a3,a3,2
   13f9c:	0087561b          	srlw	a2,a4,0x8
   13fa0:	00c7e7b3          	or	a5,a5,a2
   13fa4:	0087171b          	sllw	a4,a4,0x8
   13fa8:	fef69f23          	sh	a5,-2(a3)
   13fac:	03071793          	sll	a5,a4,0x30
   13fb0:	0307d793          	srl	a5,a5,0x30
   13fb4:	feb690e3          	bne	a3,a1,13f94 <eshift.part.0+0x13c>
   13fb8:	ff89091b          	addw	s2,s2,-8
   13fbc:	01303533          	snez	a0,s3
   13fc0:	f40902e3          	beqz	s2,13f04 <eshift.part.0+0xac>
   13fc4:	01845783          	lhu	a5,24(s0)
   13fc8:	fff9091b          	addw	s2,s2,-1
   13fcc:	00040513          	mv	a0,s0
   13fd0:	0017f793          	and	a5,a5,1
   13fd4:	00f9e9b3          	or	s3,s3,a5
   13fd8:	ae5ff0ef          	jal	13abc <eshdn1>
   13fdc:	fe0914e3          	bnez	s2,13fc4 <eshift.part.0+0x16c>
   13fe0:	02813083          	ld	ra,40(sp)
   13fe4:	02013403          	ld	s0,32(sp)
   13fe8:	0009899b          	sext.w	s3,s3
   13fec:	01813483          	ld	s1,24(sp)
   13ff0:	01013903          	ld	s2,16(sp)
   13ff4:	01303533          	snez	a0,s3
   13ff8:	00813983          	ld	s3,8(sp)
   13ffc:	03010113          	add	sp,sp,48
   14000:	00008067          	ret
   14004:	ff097793          	and	a5,s2,-16
   14008:	40f007bb          	negw	a5,a5
   1400c:	f6dff06f          	j	13f78 <eshift.part.0+0x120>
   14010:	ff900793          	li	a5,-7
   14014:	f6f4c8e3          	blt	s1,a5,13f84 <eshift.part.0+0x12c>
   14018:	fadff06f          	j	13fc4 <eshift.part.0+0x16c>

000000000001401c <emovi>:
   1401c:	01255783          	lhu	a5,18(a0)
   14020:	000086b7          	lui	a3,0x8
   14024:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   14028:	00f7d79b          	srlw	a5,a5,0xf
   1402c:	40f007bb          	negw	a5,a5
   14030:	00f59023          	sh	a5,0(a1)
   14034:	01255703          	lhu	a4,18(a0)
   14038:	01050793          	add	a5,a0,16
   1403c:	00d77733          	and	a4,a4,a3
   14040:	00e59123          	sh	a4,2(a1)
   14044:	0007061b          	sext.w	a2,a4
   14048:	02d70663          	beq	a4,a3,14074 <emovi+0x58>
   1404c:	00658713          	add	a4,a1,6
   14050:	00059223          	sh	zero,4(a1)
   14054:	ffe50513          	add	a0,a0,-2
   14058:	0007d683          	lhu	a3,0(a5)
   1405c:	ffe78793          	add	a5,a5,-2
   14060:	00270713          	add	a4,a4,2
   14064:	fed71f23          	sh	a3,-2(a4)
   14068:	fea798e3          	bne	a5,a0,14058 <emovi+0x3c>
   1406c:	00059c23          	sh	zero,24(a1)
   14070:	00008067          	ret
   14074:	01255703          	lhu	a4,18(a0)
   14078:	00c77733          	and	a4,a4,a2
   1407c:	00c71e63          	bne	a4,a2,14098 <emovi+0x7c>
   14080:	01250613          	add	a2,a0,18
   14084:	00050713          	mv	a4,a0
   14088:	00075683          	lhu	a3,0(a4)
   1408c:	00270713          	add	a4,a4,2
   14090:	02069063          	bnez	a3,140b0 <emovi+0x94>
   14094:	fec71ae3          	bne	a4,a2,14088 <emovi+0x6c>
   14098:	00458793          	add	a5,a1,4
   1409c:	01a58593          	add	a1,a1,26
   140a0:	00278793          	add	a5,a5,2
   140a4:	fe079f23          	sh	zero,-2(a5)
   140a8:	feb79ce3          	bne	a5,a1,140a0 <emovi+0x84>
   140ac:	00008067          	ret
   140b0:	00658713          	add	a4,a1,6
   140b4:	00059223          	sh	zero,4(a1)
   140b8:	ffc50513          	add	a0,a0,-4
   140bc:	0007d683          	lhu	a3,0(a5)
   140c0:	ffe78793          	add	a5,a5,-2
   140c4:	00270713          	add	a4,a4,2
   140c8:	fed71f23          	sh	a3,-2(a4)
   140cc:	fef518e3          	bne	a0,a5,140bc <emovi+0xa0>
   140d0:	00008067          	ret

00000000000140d4 <ecmp>:
   140d4:	01255783          	lhu	a5,18(a0)
   140d8:	fb010113          	add	sp,sp,-80
   140dc:	04813023          	sd	s0,64(sp)
   140e0:	fff7c793          	not	a5,a5
   140e4:	04113423          	sd	ra,72(sp)
   140e8:	03179713          	sll	a4,a5,0x31
   140ec:	00058413          	mv	s0,a1
   140f0:	00071e63          	bnez	a4,1410c <ecmp+0x38>
   140f4:	01250693          	add	a3,a0,18
   140f8:	00050793          	mv	a5,a0
   140fc:	0007d703          	lhu	a4,0(a5)
   14100:	00278793          	add	a5,a5,2
   14104:	08071c63          	bnez	a4,1419c <ecmp+0xc8>
   14108:	fed79ae3          	bne	a5,a3,140fc <ecmp+0x28>
   1410c:	01245783          	lhu	a5,18(s0)
   14110:	fff7c793          	not	a5,a5
   14114:	03179713          	sll	a4,a5,0x31
   14118:	06070063          	beqz	a4,14178 <ecmp+0xa4>
   1411c:	00010593          	mv	a1,sp
   14120:	efdff0ef          	jal	1401c <emovi>
   14124:	02010593          	add	a1,sp,32
   14128:	00040513          	mv	a0,s0
   1412c:	ef1ff0ef          	jal	1401c <emovi>
   14130:	00015583          	lhu	a1,0(sp)
   14134:	02015783          	lhu	a5,32(sp)
   14138:	06b78c63          	beq	a5,a1,141b0 <ecmp+0xdc>
   1413c:	00210793          	add	a5,sp,2
   14140:	02210713          	add	a4,sp,34
   14144:	01810613          	add	a2,sp,24
   14148:	0007d683          	lhu	a3,0(a5)
   1414c:	00278793          	add	a5,a5,2
   14150:	0a069663          	bnez	a3,141fc <ecmp+0x128>
   14154:	00075683          	lhu	a3,0(a4)
   14158:	00270713          	add	a4,a4,2
   1415c:	0a069063          	bnez	a3,141fc <ecmp+0x128>
   14160:	fef614e3          	bne	a2,a5,14148 <ecmp+0x74>
   14164:	00000513          	li	a0,0
   14168:	04813083          	ld	ra,72(sp)
   1416c:	04013403          	ld	s0,64(sp)
   14170:	05010113          	add	sp,sp,80
   14174:	00008067          	ret
   14178:	00040793          	mv	a5,s0
   1417c:	0007d703          	lhu	a4,0(a5)
   14180:	01240693          	add	a3,s0,18
   14184:	00278793          	add	a5,a5,2
   14188:	00071a63          	bnez	a4,1419c <ecmp+0xc8>
   1418c:	f8d788e3          	beq	a5,a3,1411c <ecmp+0x48>
   14190:	0007d703          	lhu	a4,0(a5)
   14194:	00278793          	add	a5,a5,2
   14198:	fe070ae3          	beqz	a4,1418c <ecmp+0xb8>
   1419c:	04813083          	ld	ra,72(sp)
   141a0:	04013403          	ld	s0,64(sp)
   141a4:	ffe00513          	li	a0,-2
   141a8:	05010113          	add	sp,sp,80
   141ac:	00008067          	ret
   141b0:	fff00513          	li	a0,-1
   141b4:	06058063          	beqz	a1,14214 <ecmp+0x140>
   141b8:	00010793          	mv	a5,sp
   141bc:	0007d603          	lhu	a2,0(a5)
   141c0:	02015683          	lhu	a3,32(sp)
   141c4:	02010713          	add	a4,sp,32
   141c8:	01810593          	add	a1,sp,24
   141cc:	00278793          	add	a5,a5,2
   141d0:	00270713          	add	a4,a4,2
   141d4:	00d61e63          	bne	a2,a3,141f0 <ecmp+0x11c>
   141d8:	f8b786e3          	beq	a5,a1,14164 <ecmp+0x90>
   141dc:	0007d603          	lhu	a2,0(a5)
   141e0:	00075683          	lhu	a3,0(a4)
   141e4:	00278793          	add	a5,a5,2
   141e8:	00270713          	add	a4,a4,2
   141ec:	fed606e3          	beq	a2,a3,141d8 <ecmp+0x104>
   141f0:	f6c6ece3          	bltu	a3,a2,14168 <ecmp+0x94>
   141f4:	40a0053b          	negw	a0,a0
   141f8:	f71ff06f          	j	14168 <ecmp+0x94>
   141fc:	02059063          	bnez	a1,1421c <ecmp+0x148>
   14200:	04813083          	ld	ra,72(sp)
   14204:	04013403          	ld	s0,64(sp)
   14208:	00100513          	li	a0,1
   1420c:	05010113          	add	sp,sp,80
   14210:	00008067          	ret
   14214:	00100513          	li	a0,1
   14218:	fa1ff06f          	j	141b8 <ecmp+0xe4>
   1421c:	fff00513          	li	a0,-1
   14220:	f49ff06f          	j	14168 <ecmp+0x94>

0000000000014224 <emdnorm>:
   14224:	fc010113          	add	sp,sp,-64
   14228:	02813823          	sd	s0,48(sp)
   1422c:	02913423          	sd	s1,40(sp)
   14230:	03213023          	sd	s2,32(sp)
   14234:	01313c23          	sd	s3,24(sp)
   14238:	01413823          	sd	s4,16(sp)
   1423c:	01513423          	sd	s5,8(sp)
   14240:	00068913          	mv	s2,a3
   14244:	00078413          	mv	s0,a5
   14248:	02113c23          	sd	ra,56(sp)
   1424c:	00050493          	mv	s1,a0
   14250:	00058993          	mv	s3,a1
   14254:	00060a13          	mv	s4,a2
   14258:	00070a93          	mv	s5,a4
   1425c:	a91ff0ef          	jal	13cec <enormlz>
   14260:	09000793          	li	a5,144
   14264:	40a90933          	sub	s2,s2,a0
   14268:	18a7d863          	bge	a5,a0,143f8 <emdnorm+0x1d4>
   1426c:	000087b7          	lui	a5,0x8
   14270:	ffe78793          	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   14274:	2d27da63          	bge	a5,s2,14548 <emdnorm+0x324>
   14278:	220a8a63          	beqz	s5,144ac <emdnorm+0x288>
   1427c:	00442a83          	lw	s5,4(s0)
   14280:	00042783          	lw	a5,0(s0)
   14284:	28fa8a63          	beq	s5,a5,14518 <emdnorm+0x2f4>
   14288:	01a40713          	add	a4,s0,26
   1428c:	03440793          	add	a5,s0,52
   14290:	00270713          	add	a4,a4,2
   14294:	fe071f23          	sh	zero,-2(a4)
   14298:	fee79ce3          	bne	a5,a4,14290 <emdnorm+0x6c>
   1429c:	03800793          	li	a5,56
   142a0:	38fa8863          	beq	s5,a5,14630 <emdnorm+0x40c>
   142a4:	1b57da63          	bge	a5,s5,14458 <emdnorm+0x234>
   142a8:	04000793          	li	a5,64
   142ac:	2afa8a63          	beq	s5,a5,14560 <emdnorm+0x33c>
   142b0:	07100793          	li	a5,113
   142b4:	3afa9c63          	bne	s5,a5,1466c <emdnorm+0x448>
   142b8:	400087b7          	lui	a5,0x40008
   142bc:	00a00693          	li	a3,10
   142c0:	ffff8737          	lui	a4,0xffff8
   142c4:	fff78793          	add	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe31e7>
   142c8:	00d42423          	sw	a3,8(s0)
   142cc:	00f42a23          	sw	a5,20(s0)
   142d0:	00e41c23          	sh	a4,24(s0)
   142d4:	00d42623          	sw	a3,12(s0)
   142d8:	02e41723          	sh	a4,46(s0)
   142dc:	01542023          	sw	s5,0(s0)
   142e0:	23205063          	blez	s2,14500 <emdnorm+0x2dc>
   142e4:	0144d603          	lhu	a2,20(s1)
   142e8:	01448593          	add	a1,s1,20
   142ec:	00b00793          	li	a5,11
   142f0:	03161613          	sll	a2,a2,0x31
   142f4:	03165613          	srl	a2,a2,0x31
   142f8:	00c00713          	li	a4,12
   142fc:	40f7073b          	subw	a4,a4,a5
   14300:	02071713          	sll	a4,a4,0x20
   14304:	02075713          	srl	a4,a4,0x20
   14308:	00f70733          	add	a4,a4,a5
   1430c:	00171713          	sll	a4,a4,0x1
   14310:	00179793          	sll	a5,a5,0x1
   14314:	00248693          	add	a3,s1,2
   14318:	00f487b3          	add	a5,s1,a5
   1431c:	00d70733          	add	a4,a4,a3
   14320:	0007d683          	lhu	a3,0(a5)
   14324:	00068463          	beqz	a3,1432c <emdnorm+0x108>
   14328:	00166613          	or	a2,a2,1
   1432c:	00079023          	sh	zero,0(a5)
   14330:	00278793          	add	a5,a5,2
   14334:	fef716e3          	bne	a4,a5,14320 <emdnorm+0xfc>
   14338:	0005d703          	lhu	a4,0(a1)
   1433c:	01445683          	lhu	a3,20(s0)
   14340:	fff6c693          	not	a3,a3
   14344:	00d77733          	and	a4,a4,a3
   14348:	00e59023          	sh	a4,0(a1)
   1434c:	01645783          	lhu	a5,22(s0)
   14350:	00c7f733          	and	a4,a5,a2
   14354:	06070063          	beqz	a4,143b4 <emdnorm+0x190>
   14358:	02c79263          	bne	a5,a2,1437c <emdnorm+0x158>
   1435c:	2c099663          	bnez	s3,14628 <emdnorm+0x404>
   14360:	00c42783          	lw	a5,12(s0)
   14364:	01845703          	lhu	a4,24(s0)
   14368:	00179793          	sll	a5,a5,0x1
   1436c:	00f487b3          	add	a5,s1,a5
   14370:	0007d783          	lhu	a5,0(a5)
   14374:	00e7f7b3          	and	a5,a5,a4
   14378:	02078e63          	beqz	a5,143b4 <emdnorm+0x190>
   1437c:	03240793          	add	a5,s0,50
   14380:	01848613          	add	a2,s1,24
   14384:	00248513          	add	a0,s1,2
   14388:	00000593          	li	a1,0
   1438c:	0007d703          	lhu	a4,0(a5)
   14390:	00065683          	lhu	a3,0(a2)
   14394:	ffe60613          	add	a2,a2,-2
   14398:	ffe78793          	add	a5,a5,-2
   1439c:	00d70733          	add	a4,a4,a3
   143a0:	00b70733          	add	a4,a4,a1
   143a4:	01075593          	srl	a1,a4,0x10
   143a8:	00e61123          	sh	a4,2(a2)
   143ac:	0015f593          	and	a1,a1,1
   143b0:	fca61ee3          	bne	a2,a0,1438c <emdnorm+0x168>
   143b4:	23205a63          	blez	s2,145e8 <emdnorm+0x3c4>
   143b8:	0044d783          	lhu	a5,4(s1)
   143bc:	20079663          	bnez	a5,145c8 <emdnorm+0x3a4>
   143c0:	000087b7          	lui	a5,0x8
   143c4:	00049c23          	sh	zero,24(s1)
   143c8:	ffe78793          	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   143cc:	0f27c263          	blt	a5,s2,144b0 <emdnorm+0x28c>
   143d0:	01249123          	sh	s2,2(s1)
   143d4:	03813083          	ld	ra,56(sp)
   143d8:	03013403          	ld	s0,48(sp)
   143dc:	02813483          	ld	s1,40(sp)
   143e0:	02013903          	ld	s2,32(sp)
   143e4:	01813983          	ld	s3,24(sp)
   143e8:	01013a03          	ld	s4,16(sp)
   143ec:	00813a83          	ld	s5,8(sp)
   143f0:	04010113          	add	sp,sp,64
   143f4:	00008067          	ret
   143f8:	04094063          	bltz	s2,14438 <emdnorm+0x214>
   143fc:	fc0a82e3          	beqz	s5,143c0 <emdnorm+0x19c>
   14400:	00442a83          	lw	s5,4(s0)
   14404:	00042783          	lw	a5,0(s0)
   14408:	e8fa90e3          	bne	s5,a5,14288 <emdnorm+0x64>
   1440c:	2d204263          	bgtz	s2,146d0 <emdnorm+0x4ac>
   14410:	09000713          	li	a4,144
   14414:	2ce79263          	bne	a5,a4,146d8 <emdnorm+0x4b4>
   14418:	00842583          	lw	a1,8(s0)
   1441c:	01445683          	lhu	a3,20(s0)
   14420:	09000a93          	li	s5,144
   14424:	00159593          	sll	a1,a1,0x1
   14428:	00b485b3          	add	a1,s1,a1
   1442c:	0005d703          	lhu	a4,0(a1)
   14430:	00d77633          	and	a2,a4,a3
   14434:	f0dff06f          	j	14340 <emdnorm+0x11c>
   14438:	f7000793          	li	a5,-144
   1443c:	16f95263          	bge	s2,a5,145a0 <emdnorm+0x37c>
   14440:	00248793          	add	a5,s1,2
   14444:	01a48493          	add	s1,s1,26
   14448:	00278793          	add	a5,a5,2
   1444c:	fe079f23          	sh	zero,-2(a5)
   14450:	fef49ce3          	bne	s1,a5,14448 <emdnorm+0x224>
   14454:	f81ff06f          	j	143d4 <emdnorm+0x1b0>
   14458:	01800793          	li	a5,24
   1445c:	06fa8c63          	beq	s5,a5,144d4 <emdnorm+0x2b0>
   14460:	03500793          	li	a5,53
   14464:	20fa9463          	bne	s5,a5,1466c <emdnorm+0x448>
   14468:	000017b7          	lui	a5,0x1
   1446c:	04000737          	lui	a4,0x4000
   14470:	00600693          	li	a3,6
   14474:	80078793          	add	a5,a5,-2048 # 800 <exit-0xf8e8>
   14478:	7ff70713          	add	a4,a4,2047 # 40007ff <__BSS_END__+0x3fdb9e7>
   1447c:	00d42423          	sw	a3,8(s0)
   14480:	00e42a23          	sw	a4,20(s0)
   14484:	00f41c23          	sh	a5,24(s0)
   14488:	00d42623          	sw	a3,12(s0)
   1448c:	02f41323          	sh	a5,38(s0)
   14490:	01542023          	sw	s5,0(s0)
   14494:	07205663          	blez	s2,14500 <emdnorm+0x2dc>
   14498:	00c4d603          	lhu	a2,12(s1)
   1449c:	00c48593          	add	a1,s1,12
   144a0:	00700793          	li	a5,7
   144a4:	7ff67613          	and	a2,a2,2047
   144a8:	e51ff06f          	j	142f8 <emdnorm+0xd4>
   144ac:	00049c23          	sh	zero,24(s1)
   144b0:	ffff87b7          	lui	a5,0xffff8
   144b4:	fff7c793          	not	a5,a5
   144b8:	00f49123          	sh	a5,2(s1)
   144bc:	00448793          	add	a5,s1,4
   144c0:	01848493          	add	s1,s1,24
   144c4:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31e8>
   144c8:	00278793          	add	a5,a5,2
   144cc:	fe979ce3          	bne	a5,s1,144c4 <emdnorm+0x2a0>
   144d0:	f05ff06f          	j	143d4 <emdnorm+0x1b0>
   144d4:	008007b7          	lui	a5,0x800
   144d8:	00400693          	li	a3,4
   144dc:	10000713          	li	a4,256
   144e0:	0ff78793          	add	a5,a5,255 # 8000ff <__BSS_END__+0x7db2e7>
   144e4:	00d42423          	sw	a3,8(s0)
   144e8:	00f42a23          	sw	a5,20(s0)
   144ec:	00e41c23          	sh	a4,24(s0)
   144f0:	00d42623          	sw	a3,12(s0)
   144f4:	02e41123          	sh	a4,34(s0)
   144f8:	01542023          	sw	s5,0(s0)
   144fc:	1b204c63          	bgtz	s2,146b4 <emdnorm+0x490>
   14500:	0184d783          	lhu	a5,24(s1)
   14504:	00048513          	mv	a0,s1
   14508:	0017f793          	and	a5,a5,1
   1450c:	00f9e7b3          	or	a5,s3,a5
   14510:	0007899b          	sext.w	s3,a5
   14514:	da8ff0ef          	jal	13abc <eshdn1>
   14518:	00842783          	lw	a5,8(s0)
   1451c:	01445683          	lhu	a3,20(s0)
   14520:	08f00513          	li	a0,143
   14524:	00179593          	sll	a1,a5,0x1
   14528:	00b485b3          	add	a1,s1,a1
   1452c:	0005d703          	lhu	a4,0(a1)
   14530:	00d77633          	and	a2,a4,a3
   14534:	e15546e3          	blt	a0,s5,14340 <emdnorm+0x11c>
   14538:	0017879b          	addw	a5,a5,1
   1453c:	00c00513          	li	a0,12
   14540:	daf55ce3          	bge	a0,a5,142f8 <emdnorm+0xd4>
   14544:	dfdff06f          	j	14340 <emdnorm+0x11c>
   14548:	00248793          	add	a5,s1,2
   1454c:	01a48493          	add	s1,s1,26
   14550:	00278793          	add	a5,a5,2
   14554:	fe079f23          	sh	zero,-2(a5)
   14558:	fef49ce3          	bne	s1,a5,14550 <emdnorm+0x32c>
   1455c:	e79ff06f          	j	143d4 <emdnorm+0x1b0>
   14560:	00700793          	li	a5,7
   14564:	00f42423          	sw	a5,8(s0)
   14568:	800107b7          	lui	a5,0x80010
   1456c:	fff78793          	add	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb1e7>
   14570:	00100713          	li	a4,1
   14574:	00f42a23          	sw	a5,20(s0)
   14578:	00600793          	li	a5,6
   1457c:	00e41c23          	sh	a4,24(s0)
   14580:	00f42623          	sw	a5,12(s0)
   14584:	02e41323          	sh	a4,38(s0)
   14588:	01542023          	sw	s5,0(s0)
   1458c:	f7205ae3          	blez	s2,14500 <emdnorm+0x2dc>
   14590:	00e4d603          	lhu	a2,14(s1)
   14594:	00e48593          	add	a1,s1,14
   14598:	00800793          	li	a5,8
   1459c:	d5dff06f          	j	142f8 <emdnorm+0xd4>
   145a0:	0009059b          	sext.w	a1,s2
   145a4:	00048513          	mv	a0,s1
   145a8:	8b1ff0ef          	jal	13e58 <eshift.part.0>
   145ac:	0e050a63          	beqz	a0,146a0 <emdnorm+0x47c>
   145b0:	100a8a63          	beqz	s5,146c4 <emdnorm+0x4a0>
   145b4:	00442a83          	lw	s5,4(s0)
   145b8:	00042783          	lw	a5,0(s0)
   145bc:	00100993          	li	s3,1
   145c0:	ccfa94e3          	bne	s5,a5,14288 <emdnorm+0x64>
   145c4:	e4dff06f          	j	14410 <emdnorm+0x1ec>
   145c8:	00048513          	mv	a0,s1
   145cc:	cf0ff0ef          	jal	13abc <eshdn1>
   145d0:	000087b7          	lui	a5,0x8
   145d4:	00190913          	add	s2,s2,1
   145d8:	00049c23          	sh	zero,24(s1)
   145dc:	ffe78793          	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   145e0:	ed27c8e3          	blt	a5,s2,144b0 <emdnorm+0x28c>
   145e4:	dedff06f          	j	143d0 <emdnorm+0x1ac>
   145e8:	09000793          	li	a5,144
   145ec:	02fa8263          	beq	s5,a5,14610 <emdnorm+0x3ec>
   145f0:	00048513          	mv	a0,s1
   145f4:	d1cff0ef          	jal	13b10 <eshup1>
   145f8:	0044d783          	lhu	a5,4(s1)
   145fc:	00079e63          	bnez	a5,14618 <emdnorm+0x3f4>
   14600:	00049c23          	sh	zero,24(s1)
   14604:	dc0956e3          	bgez	s2,143d0 <emdnorm+0x1ac>
   14608:	00049123          	sh	zero,2(s1)
   1460c:	dc9ff06f          	j	143d4 <emdnorm+0x1b0>
   14610:	0044d783          	lhu	a5,4(s1)
   14614:	fe0786e3          	beqz	a5,14600 <emdnorm+0x3dc>
   14618:	00048513          	mv	a0,s1
   1461c:	ca0ff0ef          	jal	13abc <eshdn1>
   14620:	00190913          	add	s2,s2,1
   14624:	fddff06f          	j	14600 <emdnorm+0x3dc>
   14628:	d40a0ae3          	beqz	s4,1437c <emdnorm+0x158>
   1462c:	d89ff06f          	j	143b4 <emdnorm+0x190>
   14630:	008007b7          	lui	a5,0x800
   14634:	00600693          	li	a3,6
   14638:	10000713          	li	a4,256
   1463c:	0ff78793          	add	a5,a5,255 # 8000ff <__BSS_END__+0x7db2e7>
   14640:	00d42423          	sw	a3,8(s0)
   14644:	00f42a23          	sw	a5,20(s0)
   14648:	00e41c23          	sh	a4,24(s0)
   1464c:	00d42623          	sw	a3,12(s0)
   14650:	02e41323          	sh	a4,38(s0)
   14654:	01542023          	sw	s5,0(s0)
   14658:	eb2054e3          	blez	s2,14500 <emdnorm+0x2dc>
   1465c:	00c4c603          	lbu	a2,12(s1)
   14660:	00c48593          	add	a1,s1,12
   14664:	00700793          	li	a5,7
   14668:	c91ff06f          	j	142f8 <emdnorm+0xd4>
   1466c:	00c00793          	li	a5,12
   14670:	00f42423          	sw	a5,8(s0)
   14674:	800107b7          	lui	a5,0x80010
   14678:	fff78793          	add	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb1e7>
   1467c:	00100713          	li	a4,1
   14680:	00f42a23          	sw	a5,20(s0)
   14684:	00b00793          	li	a5,11
   14688:	00f42623          	sw	a5,12(s0)
   1468c:	00e41c23          	sh	a4,24(s0)
   14690:	02e41823          	sh	a4,48(s0)
   14694:	01542023          	sw	s5,0(s0)
   14698:	000a8793          	mv	a5,s5
   1469c:	d71ff06f          	j	1440c <emdnorm+0x1e8>
   146a0:	020a8263          	beqz	s5,146c4 <emdnorm+0x4a0>
   146a4:	00442a83          	lw	s5,4(s0)
   146a8:	00042783          	lw	a5,0(s0)
   146ac:	bcfa9ee3          	bne	s5,a5,14288 <emdnorm+0x64>
   146b0:	d61ff06f          	j	14410 <emdnorm+0x1ec>
   146b4:	0084c603          	lbu	a2,8(s1)
   146b8:	00848593          	add	a1,s1,8
   146bc:	00500793          	li	a5,5
   146c0:	c39ff06f          	j	142f8 <emdnorm+0xd4>
   146c4:	00049c23          	sh	zero,24(s1)
   146c8:	00049123          	sh	zero,2(s1)
   146cc:	d09ff06f          	j	143d4 <emdnorm+0x1b0>
   146d0:	00078a93          	mv	s5,a5
   146d4:	e45ff06f          	j	14518 <emdnorm+0x2f4>
   146d8:	00078a93          	mv	s5,a5
   146dc:	e25ff06f          	j	14500 <emdnorm+0x2dc>

00000000000146e0 <eiremain>:
   146e0:	fa010113          	add	sp,sp,-96
   146e4:	05213023          	sd	s2,64(sp)
   146e8:	03313c23          	sd	s3,56(sp)
   146ec:	00058913          	mv	s2,a1
   146f0:	00255983          	lhu	s3,2(a0)
   146f4:	04113c23          	sd	ra,88(sp)
   146f8:	04813823          	sd	s0,80(sp)
   146fc:	04913423          	sd	s1,72(sp)
   14700:	03413823          	sd	s4,48(sp)
   14704:	00060493          	mv	s1,a2
   14708:	01713c23          	sd	s7,24(sp)
   1470c:	03513423          	sd	s5,40(sp)
   14710:	03613023          	sd	s6,32(sp)
   14714:	01813823          	sd	s8,16(sp)
   14718:	01913423          	sd	s9,8(sp)
   1471c:	01a13023          	sd	s10,0(sp)
   14720:	00050b93          	mv	s7,a0
   14724:	dc8ff0ef          	jal	13cec <enormlz>
   14728:	00295403          	lhu	s0,2(s2)
   1472c:	00050793          	mv	a5,a0
   14730:	00090513          	mv	a0,s2
   14734:	40f989b3          	sub	s3,s3,a5
   14738:	03448a13          	add	s4,s1,52
   1473c:	db0ff0ef          	jal	13cec <enormlz>
   14740:	40a40433          	sub	s0,s0,a0
   14744:	04e48713          	add	a4,s1,78
   14748:	000a0793          	mv	a5,s4
   1474c:	00278793          	add	a5,a5,2
   14750:	fe079f23          	sh	zero,-2(a5)
   14754:	fee79ce3          	bne	a5,a4,1474c <eiremain+0x6c>
   14758:	09344863          	blt	s0,s3,147e8 <eiremain+0x108>
   1475c:	004b8b13          	add	s6,s7,4
   14760:	00490a93          	add	s5,s2,4
   14764:	01ab8c13          	add	s8,s7,26
   14768:	00290d13          	add	s10,s2,2
   1476c:	000a8713          	mv	a4,s5
   14770:	000b0793          	mv	a5,s6
   14774:	0007d603          	lhu	a2,0(a5)
   14778:	00075683          	lhu	a3,0(a4)
   1477c:	00278793          	add	a5,a5,2
   14780:	00270713          	add	a4,a4,2
   14784:	0ad61a63          	bne	a2,a3,14838 <eiremain+0x158>
   14788:	fefc16e3          	bne	s8,a5,14774 <eiremain+0x94>
   1478c:	018b8613          	add	a2,s7,24
   14790:	01890713          	add	a4,s2,24
   14794:	00000693          	li	a3,0
   14798:	00075783          	lhu	a5,0(a4)
   1479c:	00065583          	lhu	a1,0(a2)
   147a0:	ffe70713          	add	a4,a4,-2
   147a4:	ffe60613          	add	a2,a2,-2
   147a8:	40b787b3          	sub	a5,a5,a1
   147ac:	40d787b3          	sub	a5,a5,a3
   147b0:	0107d693          	srl	a3,a5,0x10
   147b4:	00f71123          	sh	a5,2(a4)
   147b8:	0016f693          	and	a3,a3,1
   147bc:	fda71ee3          	bne	a4,s10,14798 <eiremain+0xb8>
   147c0:	00100c93          	li	s9,1
   147c4:	000a0513          	mv	a0,s4
   147c8:	b48ff0ef          	jal	13b10 <eshup1>
   147cc:	04c4d783          	lhu	a5,76(s1)
   147d0:	fff40413          	add	s0,s0,-1
   147d4:	00090513          	mv	a0,s2
   147d8:	00fce7b3          	or	a5,s9,a5
   147dc:	04f49623          	sh	a5,76(s1)
   147e0:	b30ff0ef          	jal	13b10 <eshup1>
   147e4:	f93454e3          	bge	s0,s3,1476c <eiremain+0x8c>
   147e8:	00040693          	mv	a3,s0
   147ec:	05013403          	ld	s0,80(sp)
   147f0:	05813083          	ld	ra,88(sp)
   147f4:	03813983          	ld	s3,56(sp)
   147f8:	03013a03          	ld	s4,48(sp)
   147fc:	02813a83          	ld	s5,40(sp)
   14800:	02013b03          	ld	s6,32(sp)
   14804:	01813b83          	ld	s7,24(sp)
   14808:	01013c03          	ld	s8,16(sp)
   1480c:	00813c83          	ld	s9,8(sp)
   14810:	00013d03          	ld	s10,0(sp)
   14814:	00048793          	mv	a5,s1
   14818:	00090513          	mv	a0,s2
   1481c:	04813483          	ld	s1,72(sp)
   14820:	04013903          	ld	s2,64(sp)
   14824:	00000713          	li	a4,0
   14828:	00000613          	li	a2,0
   1482c:	00000593          	li	a1,0
   14830:	06010113          	add	sp,sp,96
   14834:	9f1ff06f          	j	14224 <emdnorm>
   14838:	00000c93          	li	s9,0
   1483c:	f8c6e4e3          	bltu	a3,a2,147c4 <eiremain+0xe4>
   14840:	f4dff06f          	j	1478c <eiremain+0xac>

0000000000014844 <e113toe.isra.0>:
   14844:	fd010113          	add	sp,sp,-48
   14848:	02813023          	sd	s0,32(sp)
   1484c:	02113423          	sd	ra,40(sp)
   14850:	00058413          	mv	s0,a1
   14854:	00010793          	mv	a5,sp
   14858:	01a10713          	add	a4,sp,26
   1485c:	00278793          	add	a5,a5,2
   14860:	fe079f23          	sh	zero,-2(a5)
   14864:	fee79ce3          	bne	a5,a4,1485c <e113toe.isra.0+0x18>
   14868:	00e55783          	lhu	a5,14(a0)
   1486c:	00008737          	lui	a4,0x8
   14870:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   14874:	03079693          	sll	a3,a5,0x30
   14878:	43f6d693          	sra	a3,a3,0x3f
   1487c:	00d11023          	sh	a3,0(sp)
   14880:	00e7f6b3          	and	a3,a5,a4
   14884:	00068613          	mv	a2,a3
   14888:	06e68063          	beq	a3,a4,148e8 <e113toe.isra.0+0xa4>
   1488c:	00e50793          	add	a5,a0,14
   14890:	00d11123          	sh	a3,2(sp)
   14894:	00610713          	add	a4,sp,6
   14898:	ffe7d683          	lhu	a3,-2(a5)
   1489c:	ffe78793          	add	a5,a5,-2
   148a0:	00270713          	add	a4,a4,2
   148a4:	fed71f23          	sh	a3,-2(a4)
   148a8:	fef518e3          	bne	a0,a5,14898 <e113toe.isra.0+0x54>
   148ac:	02061263          	bnez	a2,148d0 <e113toe.isra.0+0x8c>
   148b0:	00011223          	sh	zero,4(sp)
   148b4:	00040593          	mv	a1,s0
   148b8:	00010513          	mv	a0,sp
   148bc:	b74ff0ef          	jal	13c30 <emovo.constprop.0>
   148c0:	02813083          	ld	ra,40(sp)
   148c4:	02013403          	ld	s0,32(sp)
   148c8:	03010113          	add	sp,sp,48
   148cc:	00008067          	ret
   148d0:	00100793          	li	a5,1
   148d4:	fff00593          	li	a1,-1
   148d8:	00010513          	mv	a0,sp
   148dc:	00f11223          	sh	a5,4(sp)
   148e0:	d78ff0ef          	jal	13e58 <eshift.part.0>
   148e4:	fd1ff06f          	j	148b4 <e113toe.isra.0+0x70>
   148e8:	00050793          	mv	a5,a0
   148ec:	00e50693          	add	a3,a0,14
   148f0:	0007d703          	lhu	a4,0(a5)
   148f4:	00278793          	add	a5,a5,2
   148f8:	06071c63          	bnez	a4,14970 <e113toe.isra.0+0x12c>
   148fc:	fed79ae3          	bne	a5,a3,148f0 <e113toe.isra.0+0xac>
   14900:	01440713          	add	a4,s0,20
   14904:	00040793          	mv	a5,s0
   14908:	00278793          	add	a5,a5,2
   1490c:	fe079f23          	sh	zero,-2(a5)
   14910:	fee79ce3          	bne	a5,a4,14908 <e113toe.isra.0+0xc4>
   14914:	01240713          	add	a4,s0,18
   14918:	00040793          	mv	a5,s0
   1491c:	00278793          	add	a5,a5,2
   14920:	fe079f23          	sh	zero,-2(a5)
   14924:	fee79ce3          	bne	a5,a4,1491c <e113toe.isra.0+0xd8>
   14928:	01245783          	lhu	a5,18(s0)
   1492c:	000086b7          	lui	a3,0x8
   14930:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   14934:	00d7e7b3          	or	a5,a5,a3
   14938:	03079793          	sll	a5,a5,0x30
   1493c:	0307d793          	srl	a5,a5,0x30
   14940:	00f41923          	sh	a5,18(s0)
   14944:	00e51683          	lh	a3,14(a0)
   14948:	f606dce3          	bgez	a3,148c0 <e113toe.isra.0+0x7c>
   1494c:	00040693          	mv	a3,s0
   14950:	0006d603          	lhu	a2,0(a3)
   14954:	00268693          	add	a3,a3,2
   14958:	f60614e3          	bnez	a2,148c0 <e113toe.isra.0+0x7c>
   1495c:	fee69ae3          	bne	a3,a4,14950 <e113toe.isra.0+0x10c>
   14960:	ffff8737          	lui	a4,0xffff8
   14964:	00e7c7b3          	xor	a5,a5,a4
   14968:	00f41923          	sh	a5,18(s0)
   1496c:	f55ff06f          	j	148c0 <e113toe.isra.0+0x7c>
   14970:	01040713          	add	a4,s0,16
   14974:	00040793          	mv	a5,s0
   14978:	00278793          	add	a5,a5,2
   1497c:	fe079f23          	sh	zero,-2(a5)
   14980:	fee79ce3          	bne	a5,a4,14978 <e113toe.isra.0+0x134>
   14984:	ffffc7b7          	lui	a5,0xffffc
   14988:	00f41823          	sh	a5,16(s0)
   1498c:	ffff87b7          	lui	a5,0xffff8
   14990:	fff7c793          	not	a5,a5
   14994:	00f41923          	sh	a5,18(s0)
   14998:	f29ff06f          	j	148c0 <e113toe.isra.0+0x7c>

000000000001499c <ediv>:
   1499c:	01255783          	lhu	a5,18(a0)
   149a0:	f1010113          	add	sp,sp,-240
   149a4:	0e813023          	sd	s0,224(sp)
   149a8:	fff7c793          	not	a5,a5
   149ac:	0c913c23          	sd	s1,216(sp)
   149b0:	0d213823          	sd	s2,208(sp)
   149b4:	0d313423          	sd	s3,200(sp)
   149b8:	0e113423          	sd	ra,232(sp)
   149bc:	0d413023          	sd	s4,192(sp)
   149c0:	0b513c23          	sd	s5,184(sp)
   149c4:	0b613823          	sd	s6,176(sp)
   149c8:	0b713423          	sd	s7,168(sp)
   149cc:	0b813023          	sd	s8,160(sp)
   149d0:	09913c23          	sd	s9,152(sp)
   149d4:	09a13823          	sd	s10,144(sp)
   149d8:	09b13423          	sd	s11,136(sp)
   149dc:	03179713          	sll	a4,a5,0x31
   149e0:	00050493          	mv	s1,a0
   149e4:	00058993          	mv	s3,a1
   149e8:	00060413          	mv	s0,a2
   149ec:	00068913          	mv	s2,a3
   149f0:	00071e63          	bnez	a4,14a0c <ediv+0x70>
   149f4:	01250693          	add	a3,a0,18
   149f8:	00050793          	mv	a5,a0
   149fc:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31e8>
   14a00:	00278793          	add	a5,a5,2
   14a04:	0e071e63          	bnez	a4,14b00 <ediv+0x164>
   14a08:	fed79ae3          	bne	a5,a3,149fc <ediv+0x60>
   14a0c:	0129d783          	lhu	a5,18(s3)
   14a10:	fff7c793          	not	a5,a5
   14a14:	03179713          	sll	a4,a5,0x31
   14a18:	00071e63          	bnez	a4,14a34 <ediv+0x98>
   14a1c:	01298693          	add	a3,s3,18
   14a20:	00098793          	mv	a5,s3
   14a24:	0007d703          	lhu	a4,0(a5)
   14a28:	00278793          	add	a5,a5,2
   14a2c:	0e071863          	bnez	a4,14b1c <ediv+0x180>
   14a30:	fed79ae3          	bne	a5,a3,14a24 <ediv+0x88>
   14a34:	00022a37          	lui	s4,0x22
   14a38:	2a8a0593          	add	a1,s4,680 # 222a8 <ezero>
   14a3c:	00048513          	mv	a0,s1
   14a40:	e94ff0ef          	jal	140d4 <ecmp>
   14a44:	18050a63          	beqz	a0,14bd8 <ediv+0x23c>
   14a48:	0124d603          	lhu	a2,18(s1)
   14a4c:	000087b7          	lui	a5,0x8
   14a50:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   14a54:	00f67533          	and	a0,a2,a5
   14a58:	0ef51063          	bne	a0,a5,14b38 <ediv+0x19c>
   14a5c:	01248693          	add	a3,s1,18
   14a60:	00048793          	mv	a5,s1
   14a64:	0007d703          	lhu	a4,0(a5)
   14a68:	00278793          	add	a5,a5,2
   14a6c:	0c071663          	bnez	a4,14b38 <ediv+0x19c>
   14a70:	fed79ae3          	bne	a5,a3,14a64 <ediv+0xc8>
   14a74:	0129d703          	lhu	a4,18(s3)
   14a78:	fff74793          	not	a5,a4
   14a7c:	03179693          	sll	a3,a5,0x31
   14a80:	14069263          	bnez	a3,14bc4 <ediv+0x228>
   14a84:	01298693          	add	a3,s3,18
   14a88:	00098793          	mv	a5,s3
   14a8c:	0007d583          	lhu	a1,0(a5)
   14a90:	00278793          	add	a5,a5,2
   14a94:	48059c63          	bnez	a1,14f2c <ediv+0x590>
   14a98:	fed79ae3          	bne	a5,a3,14a8c <ediv+0xf0>
   14a9c:	01040713          	add	a4,s0,16
   14aa0:	00040793          	mv	a5,s0
   14aa4:	00278793          	add	a5,a5,2
   14aa8:	fe079f23          	sh	zero,-2(a5)
   14aac:	fee79ce3          	bne	a5,a4,14aa4 <ediv+0x108>
   14ab0:	ffffc7b7          	lui	a5,0xffffc
   14ab4:	00f41823          	sh	a5,16(s0)
   14ab8:	ffff87b7          	lui	a5,0xffff8
   14abc:	fff7c793          	not	a5,a5
   14ac0:	00f41923          	sh	a5,18(s0)
   14ac4:	0e813083          	ld	ra,232(sp)
   14ac8:	0e013403          	ld	s0,224(sp)
   14acc:	0d813483          	ld	s1,216(sp)
   14ad0:	0d013903          	ld	s2,208(sp)
   14ad4:	0c813983          	ld	s3,200(sp)
   14ad8:	0c013a03          	ld	s4,192(sp)
   14adc:	0b813a83          	ld	s5,184(sp)
   14ae0:	0b013b03          	ld	s6,176(sp)
   14ae4:	0a813b83          	ld	s7,168(sp)
   14ae8:	0a013c03          	ld	s8,160(sp)
   14aec:	09813c83          	ld	s9,152(sp)
   14af0:	09013d03          	ld	s10,144(sp)
   14af4:	08813d83          	ld	s11,136(sp)
   14af8:	0f010113          	add	sp,sp,240
   14afc:	00008067          	ret
   14b00:	01448713          	add	a4,s1,20
   14b04:	0004d783          	lhu	a5,0(s1)
   14b08:	00248493          	add	s1,s1,2
   14b0c:	00240413          	add	s0,s0,2
   14b10:	fef41f23          	sh	a5,-2(s0)
   14b14:	fee498e3          	bne	s1,a4,14b04 <ediv+0x168>
   14b18:	fadff06f          	j	14ac4 <ediv+0x128>
   14b1c:	01440713          	add	a4,s0,20
   14b20:	0009d783          	lhu	a5,0(s3)
   14b24:	00240413          	add	s0,s0,2
   14b28:	00298993          	add	s3,s3,2
   14b2c:	fef41f23          	sh	a5,-2(s0)
   14b30:	fee418e3          	bne	s0,a4,14b20 <ediv+0x184>
   14b34:	f91ff06f          	j	14ac4 <ediv+0x128>
   14b38:	0129d703          	lhu	a4,18(s3)
   14b3c:	fff74793          	not	a5,a4
   14b40:	03179693          	sll	a3,a5,0x31
   14b44:	0a069463          	bnez	a3,14bec <ediv+0x250>
   14b48:	00000813          	li	a6,0
   14b4c:	01298693          	add	a3,s3,18
   14b50:	00098793          	mv	a5,s3
   14b54:	0007d583          	lhu	a1,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31e8>
   14b58:	00278793          	add	a5,a5,2
   14b5c:	06059263          	bnez	a1,14bc0 <ediv+0x224>
   14b60:	fed79ae3          	bne	a5,a3,14b54 <ediv+0x1b8>
   14b64:	000087b7          	lui	a5,0x8
   14b68:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   14b6c:	0cf50863          	beq	a0,a5,14c3c <ediv+0x2a0>
   14b70:	00f65613          	srl	a2,a2,0xf
   14b74:	0009d783          	lhu	a5,0(s3)
   14b78:	00298993          	add	s3,s3,2
   14b7c:	3a079063          	bnez	a5,14f1c <ediv+0x580>
   14b80:	fed99ae3          	bne	s3,a3,14b74 <ediv+0x1d8>
   14b84:	00f75793          	srl	a5,a4,0xf
   14b88:	00c7c7b3          	xor	a5,a5,a2
   14b8c:	00f7979b          	sllw	a5,a5,0xf
   14b90:	00f41923          	sh	a5,18(s0)
   14b94:	01240713          	add	a4,s0,18
   14b98:	00040793          	mv	a5,s0
   14b9c:	00278793          	add	a5,a5,2
   14ba0:	fe079f23          	sh	zero,-2(a5)
   14ba4:	fee79ce3          	bne	a5,a4,14b9c <ediv+0x200>
   14ba8:	01245783          	lhu	a5,18(s0)
   14bac:	00008737          	lui	a4,0x8
   14bb0:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   14bb4:	00e7e7b3          	or	a5,a5,a4
   14bb8:	00f41923          	sh	a5,18(s0)
   14bbc:	f09ff06f          	j	14ac4 <ediv+0x128>
   14bc0:	02080663          	beqz	a6,14bec <ediv+0x250>
   14bc4:	01440793          	add	a5,s0,20
   14bc8:	00240413          	add	s0,s0,2
   14bcc:	fe041f23          	sh	zero,-2(s0)
   14bd0:	fef41ce3          	bne	s0,a5,14bc8 <ediv+0x22c>
   14bd4:	ef1ff06f          	j	14ac4 <ediv+0x128>
   14bd8:	2a8a0593          	add	a1,s4,680
   14bdc:	00098513          	mv	a0,s3
   14be0:	cf4ff0ef          	jal	140d4 <ecmp>
   14be4:	e60512e3          	bnez	a0,14a48 <ediv+0xac>
   14be8:	eb5ff06f          	j	14a9c <ediv+0x100>
   14bec:	02010593          	add	a1,sp,32
   14bf0:	00048513          	mv	a0,s1
   14bf4:	c28ff0ef          	jal	1401c <emovi>
   14bf8:	04010593          	add	a1,sp,64
   14bfc:	00098513          	mv	a0,s3
   14c00:	c1cff0ef          	jal	1401c <emovi>
   14c04:	04215b03          	lhu	s6,66(sp)
   14c08:	02215c03          	lhu	s8,34(sp)
   14c0c:	040b1463          	bnez	s6,14c54 <ediv+0x2b8>
   14c10:	04210793          	add	a5,sp,66
   14c14:	05810c93          	add	s9,sp,88
   14c18:	0007d703          	lhu	a4,0(a5)
   14c1c:	00278793          	add	a5,a5,2
   14c20:	2c071a63          	bnez	a4,14ef4 <ediv+0x558>
   14c24:	fefc9ae3          	bne	s9,a5,14c18 <ediv+0x27c>
   14c28:	01440793          	add	a5,s0,20
   14c2c:	00240413          	add	s0,s0,2
   14c30:	fe041f23          	sh	zero,-2(s0)
   14c34:	fef41ce3          	bne	s0,a5,14c2c <ediv+0x290>
   14c38:	e8dff06f          	j	14ac4 <ediv+0x128>
   14c3c:	01248593          	add	a1,s1,18
   14c40:	0004d783          	lhu	a5,0(s1)
   14c44:	00248493          	add	s1,s1,2
   14c48:	2c079e63          	bnez	a5,14f24 <ediv+0x588>
   14c4c:	feb49ae3          	bne	s1,a1,14c40 <ediv+0x2a4>
   14c50:	f21ff06f          	j	14b70 <ediv+0x1d4>
   14c54:	01613423          	sd	s6,8(sp)
   14c58:	040c1663          	bnez	s8,14ca4 <ediv+0x308>
   14c5c:	02210793          	add	a5,sp,34
   14c60:	03810693          	add	a3,sp,56
   14c64:	0007d703          	lhu	a4,0(a5)
   14c68:	00278793          	add	a5,a5,2
   14c6c:	28071e63          	bnez	a4,14f08 <ediv+0x56c>
   14c70:	fed79ae3          	bne	a5,a3,14c64 <ediv+0x2c8>
   14c74:	02015683          	lhu	a3,32(sp)
   14c78:	04015603          	lhu	a2,64(sp)
   14c7c:	01240713          	add	a4,s0,18
   14c80:	00040793          	mv	a5,s0
   14c84:	40c686b3          	sub	a3,a3,a2
   14c88:	00d036b3          	snez	a3,a3
   14c8c:	00f6969b          	sllw	a3,a3,0xf
   14c90:	00d41923          	sh	a3,18(s0)
   14c94:	00278793          	add	a5,a5,2
   14c98:	fe079f23          	sh	zero,-2(a5)
   14c9c:	fee79ce3          	bne	a5,a4,14c94 <ediv+0x2f8>
   14ca0:	f09ff06f          	j	14ba8 <ediv+0x20c>
   14ca4:	01813823          	sd	s8,16(sp)
   14ca8:	04012783          	lw	a5,64(sp)
   14cac:	03890493          	add	s1,s2,56
   14cb0:	03490713          	add	a4,s2,52
   14cb4:	02f92a23          	sw	a5,52(s2)
   14cb8:	00e13c23          	sd	a4,24(sp)
   14cbc:	04e90993          	add	s3,s2,78
   14cc0:	00048793          	mv	a5,s1
   14cc4:	00278793          	add	a5,a5,2
   14cc8:	fe079f23          	sh	zero,-2(a5)
   14ccc:	ff379ce3          	bne	a5,s3,14cc4 <ediv+0x328>
   14cd0:	04010513          	add	a0,sp,64
   14cd4:	de9fe0ef          	jal	13abc <eshdn1>
   14cd8:	02615b83          	lhu	s7,38(sp)
   14cdc:	00010a37          	lui	s4,0x10
   14ce0:	04210d13          	add	s10,sp,66
   14ce4:	010b9a93          	sll	s5,s7,0x10
   14ce8:	417a8ab3          	sub	s5,s5,s7
   14cec:	05810c93          	add	s9,sp,88
   14cf0:	fffa0a13          	add	s4,s4,-1 # ffff <exit-0xe9>
   14cf4:	07a10d93          	add	s11,sp,122
   14cf8:	06210c13          	add	s8,sp,98
   14cfc:	04415503          	lhu	a0,68(sp)
   14d00:	04615783          	lhu	a5,70(sp)
   14d04:	000a0b13          	mv	s6,s4
   14d08:	01051513          	sll	a0,a0,0x10
   14d0c:	00f50533          	add	a0,a0,a5
   14d10:	00aaea63          	bltu	s5,a0,14d24 <ediv+0x388>
   14d14:	000b8593          	mv	a1,s7
   14d18:	6bd0c0ef          	jal	21bd4 <__hidden___udivdi3>
   14d1c:	03051b13          	sll	s6,a0,0x30
   14d20:	030b5b13          	srl	s6,s6,0x30
   14d24:	06010613          	add	a2,sp,96
   14d28:	02010593          	add	a1,sp,32
   14d2c:	000b0513          	mv	a0,s6
   14d30:	e31fe0ef          	jal	13b60 <m16m>
   14d34:	04410713          	add	a4,sp,68
   14d38:	06410793          	add	a5,sp,100
   14d3c:	0007d603          	lhu	a2,0(a5)
   14d40:	00075683          	lhu	a3,0(a4)
   14d44:	00278793          	add	a5,a5,2
   14d48:	00270713          	add	a4,a4,2
   14d4c:	0ed61a63          	bne	a2,a3,14e40 <ediv+0x4a4>
   14d50:	ffb796e3          	bne	a5,s11,14d3c <ediv+0x3a0>
   14d54:	00000693          	li	a3,0
   14d58:	07810613          	add	a2,sp,120
   14d5c:	000c8793          	mv	a5,s9
   14d60:	0007d703          	lhu	a4,0(a5)
   14d64:	00065583          	lhu	a1,0(a2)
   14d68:	ffe78793          	add	a5,a5,-2
   14d6c:	ffe60613          	add	a2,a2,-2
   14d70:	40b70733          	sub	a4,a4,a1
   14d74:	40d70733          	sub	a4,a4,a3
   14d78:	01075693          	srl	a3,a4,0x10
   14d7c:	00e79123          	sh	a4,2(a5)
   14d80:	0016f693          	and	a3,a3,1
   14d84:	fda79ee3          	bne	a5,s10,14d60 <ediv+0x3c4>
   14d88:	01649023          	sh	s6,0(s1)
   14d8c:	04410793          	add	a5,sp,68
   14d90:	0027d703          	lhu	a4,2(a5)
   14d94:	00278793          	add	a5,a5,2
   14d98:	fee79f23          	sh	a4,-2(a5)
   14d9c:	ff979ae3          	bne	a5,s9,14d90 <ediv+0x3f4>
   14da0:	04011c23          	sh	zero,88(sp)
   14da4:	00248493          	add	s1,s1,2
   14da8:	f4999ae3          	bne	s3,s1,14cfc <ediv+0x360>
   14dac:	00000713          	li	a4,0
   14db0:	04410793          	add	a5,sp,68
   14db4:	05a10693          	add	a3,sp,90
   14db8:	0007d603          	lhu	a2,0(a5)
   14dbc:	00278793          	add	a5,a5,2
   14dc0:	00c76733          	or	a4,a4,a2
   14dc4:	fed79ae3          	bne	a5,a3,14db8 <ediv+0x41c>
   14dc8:	01813483          	ld	s1,24(sp)
   14dcc:	0007071b          	sext.w	a4,a4
   14dd0:	00e035b3          	snez	a1,a4
   14dd4:	04010793          	add	a5,sp,64
   14dd8:	0004d703          	lhu	a4,0(s1)
   14ddc:	00278793          	add	a5,a5,2
   14de0:	00248493          	add	s1,s1,2
   14de4:	fee79f23          	sh	a4,-2(a5)
   14de8:	fef698e3          	bne	a3,a5,14dd8 <ediv+0x43c>
   14dec:	00813783          	ld	a5,8(sp)
   14df0:	01013703          	ld	a4,16(sp)
   14df4:	000046b7          	lui	a3,0x4
   14df8:	fff68693          	add	a3,a3,-1 # 3fff <exit-0xc0e9>
   14dfc:	40e78b33          	sub	s6,a5,a4
   14e00:	04010513          	add	a0,sp,64
   14e04:	00090793          	mv	a5,s2
   14e08:	04000713          	li	a4,64
   14e0c:	00db06b3          	add	a3,s6,a3
   14e10:	00000613          	li	a2,0
   14e14:	c10ff0ef          	jal	14224 <emdnorm>
   14e18:	04015703          	lhu	a4,64(sp)
   14e1c:	02015783          	lhu	a5,32(sp)
   14e20:	00040593          	mv	a1,s0
   14e24:	04010513          	add	a0,sp,64
   14e28:	40e787b3          	sub	a5,a5,a4
   14e2c:	00f037b3          	snez	a5,a5
   14e30:	40f007bb          	negw	a5,a5
   14e34:	04f11023          	sh	a5,64(sp)
   14e38:	df9fe0ef          	jal	13c30 <emovo.constprop.0>
   14e3c:	c89ff06f          	j	14ac4 <ediv+0x128>
   14e40:	f0c6fae3          	bgeu	a3,a2,14d54 <ediv+0x3b8>
   14e44:	fffb079b          	addw	a5,s6,-1
   14e48:	03079513          	sll	a0,a5,0x30
   14e4c:	03055513          	srl	a0,a0,0x30
   14e50:	00000693          	li	a3,0
   14e54:	03810613          	add	a2,sp,56
   14e58:	07810713          	add	a4,sp,120
   14e5c:	00075783          	lhu	a5,0(a4)
   14e60:	00065583          	lhu	a1,0(a2)
   14e64:	ffe70713          	add	a4,a4,-2
   14e68:	ffe60613          	add	a2,a2,-2
   14e6c:	40b787b3          	sub	a5,a5,a1
   14e70:	40d787b3          	sub	a5,a5,a3
   14e74:	0107d693          	srl	a3,a5,0x10
   14e78:	00f71123          	sh	a5,2(a4)
   14e7c:	0016f693          	and	a3,a3,1
   14e80:	fd871ee3          	bne	a4,s8,14e5c <ediv+0x4c0>
   14e84:	04410713          	add	a4,sp,68
   14e88:	06410793          	add	a5,sp,100
   14e8c:	0007d603          	lhu	a2,0(a5)
   14e90:	00075683          	lhu	a3,0(a4)
   14e94:	00278793          	add	a5,a5,2
   14e98:	00270713          	add	a4,a4,2
   14e9c:	00d61863          	bne	a2,a3,14eac <ediv+0x510>
   14ea0:	ffb796e3          	bne	a5,s11,14e8c <ediv+0x4f0>
   14ea4:	00050b13          	mv	s6,a0
   14ea8:	eadff06f          	j	14d54 <ediv+0x3b8>
   14eac:	fec6fce3          	bgeu	a3,a2,14ea4 <ediv+0x508>
   14eb0:	ffeb031b          	addw	t1,s6,-2
   14eb4:	03031b13          	sll	s6,t1,0x30
   14eb8:	030b5b13          	srl	s6,s6,0x30
   14ebc:	00000693          	li	a3,0
   14ec0:	03810613          	add	a2,sp,56
   14ec4:	07810713          	add	a4,sp,120
   14ec8:	00075783          	lhu	a5,0(a4)
   14ecc:	00065583          	lhu	a1,0(a2)
   14ed0:	ffe70713          	add	a4,a4,-2
   14ed4:	ffe60613          	add	a2,a2,-2
   14ed8:	40b787b3          	sub	a5,a5,a1
   14edc:	40d787b3          	sub	a5,a5,a3
   14ee0:	0107d693          	srl	a3,a5,0x10
   14ee4:	00f71123          	sh	a5,2(a4)
   14ee8:	0016f693          	and	a3,a3,1
   14eec:	fd871ee3          	bne	a4,s8,14ec8 <ediv+0x52c>
   14ef0:	e65ff06f          	j	14d54 <ediv+0x3b8>
   14ef4:	04010513          	add	a0,sp,64
   14ef8:	df5fe0ef          	jal	13cec <enormlz>
   14efc:	40a007b3          	neg	a5,a0
   14f00:	00f13423          	sd	a5,8(sp)
   14f04:	d55ff06f          	j	14c58 <ediv+0x2bc>
   14f08:	02010513          	add	a0,sp,32
   14f0c:	de1fe0ef          	jal	13cec <enormlz>
   14f10:	40a007b3          	neg	a5,a0
   14f14:	00f13823          	sd	a5,16(sp)
   14f18:	d91ff06f          	j	14ca8 <ediv+0x30c>
   14f1c:	00000793          	li	a5,0
   14f20:	c69ff06f          	j	14b88 <ediv+0x1ec>
   14f24:	00000613          	li	a2,0
   14f28:	c4dff06f          	j	14b74 <ediv+0x1d8>
   14f2c:	00100813          	li	a6,1
   14f30:	c21ff06f          	j	14b50 <ediv+0x1b4>

0000000000014f34 <emul>:
   14f34:	01255803          	lhu	a6,18(a0)
   14f38:	00008737          	lui	a4,0x8
   14f3c:	f4010113          	add	sp,sp,-192
   14f40:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   14f44:	0a813823          	sd	s0,176(sp)
   14f48:	0a913423          	sd	s1,168(sp)
   14f4c:	0b213023          	sd	s2,160(sp)
   14f50:	09513423          	sd	s5,136(sp)
   14f54:	00050493          	mv	s1,a0
   14f58:	0a113c23          	sd	ra,184(sp)
   14f5c:	09313c23          	sd	s3,152(sp)
   14f60:	09413823          	sd	s4,144(sp)
   14f64:	09613023          	sd	s6,128(sp)
   14f68:	07713c23          	sd	s7,120(sp)
   14f6c:	07813823          	sd	s8,112(sp)
   14f70:	07913423          	sd	s9,104(sp)
   14f74:	07a13023          	sd	s10,96(sp)
   14f78:	00e87533          	and	a0,a6,a4
   14f7c:	00058913          	mv	s2,a1
   14f80:	00060413          	mv	s0,a2
   14f84:	00068a93          	mv	s5,a3
   14f88:	18e51663          	bne	a0,a4,15114 <emul+0x1e0>
   14f8c:	01248993          	add	s3,s1,18
   14f90:	00048713          	mv	a4,s1
   14f94:	00075603          	lhu	a2,0(a4)
   14f98:	00270713          	add	a4,a4,2
   14f9c:	20061463          	bnez	a2,151a4 <emul+0x270>
   14fa0:	ff371ae3          	bne	a4,s3,14f94 <emul+0x60>
   14fa4:	01295603          	lhu	a2,18(s2)
   14fa8:	fff64793          	not	a5,a2
   14fac:	03179713          	sll	a4,a5,0x31
   14fb0:	16070863          	beqz	a4,15120 <emul+0x1ec>
   14fb4:	00048793          	mv	a5,s1
   14fb8:	0007d703          	lhu	a4,0(a5)
   14fbc:	00278793          	add	a5,a5,2
   14fc0:	28071063          	bnez	a4,15240 <emul+0x30c>
   14fc4:	ff379ae3          	bne	a5,s3,14fb8 <emul+0x84>
   14fc8:	000225b7          	lui	a1,0x22
   14fcc:	2a858593          	add	a1,a1,680 # 222a8 <ezero>
   14fd0:	00090513          	mv	a0,s2
   14fd4:	900ff0ef          	jal	140d4 <ecmp>
   14fd8:	28050e63          	beqz	a0,15274 <emul+0x340>
   14fdc:	01295603          	lhu	a2,18(s2)
   14fe0:	000085b7          	lui	a1,0x8
   14fe4:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   14fe8:	00b67733          	and	a4,a2,a1
   14fec:	00070693          	mv	a3,a4
   14ff0:	01290793          	add	a5,s2,18
   14ff4:	40b71e63          	bne	a4,a1,15410 <emul+0x4dc>
   14ff8:	00090713          	mv	a4,s2
   14ffc:	00075683          	lhu	a3,0(a4)
   15000:	00270713          	add	a4,a4,2
   15004:	20069263          	bnez	a3,15208 <emul+0x2d4>
   15008:	fee79ae3          	bne	a5,a4,14ffc <emul+0xc8>
   1500c:	000225b7          	lui	a1,0x22
   15010:	2a858593          	add	a1,a1,680 # 222a8 <ezero>
   15014:	00048513          	mv	a0,s1
   15018:	8bcff0ef          	jal	140d4 <ecmp>
   1501c:	24050c63          	beqz	a0,15274 <emul+0x340>
   15020:	0124d803          	lhu	a6,18(s1)
   15024:	01295603          	lhu	a2,18(s2)
   15028:	000087b7          	lui	a5,0x8
   1502c:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15030:	00f87733          	and	a4,a6,a5
   15034:	00f676b3          	and	a3,a2,a5
   15038:	00070593          	mv	a1,a4
   1503c:	1ef70263          	beq	a4,a5,15220 <emul+0x2ec>
   15040:	00068713          	mv	a4,a3
   15044:	00058693          	mv	a3,a1
   15048:	000087b7          	lui	a5,0x8
   1504c:	0007071b          	sext.w	a4,a4
   15050:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15054:	0ef71e63          	bne	a4,a5,15150 <emul+0x21c>
   15058:	01290793          	add	a5,s2,18
   1505c:	00090713          	mv	a4,s2
   15060:	00075583          	lhu	a1,0(a4)
   15064:	00270713          	add	a4,a4,2
   15068:	0e059463          	bnez	a1,15150 <emul+0x21c>
   1506c:	fef71ae3          	bne	a4,a5,15060 <emul+0x12c>
   15070:	000085b7          	lui	a1,0x8
   15074:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   15078:	0006871b          	sext.w	a4,a3
   1507c:	01248993          	add	s3,s1,18
   15080:	22b69063          	bne	a3,a1,152a0 <emul+0x36c>
   15084:	0004d783          	lhu	a5,0(s1)
   15088:	00248493          	add	s1,s1,2
   1508c:	20079e63          	bnez	a5,152a8 <emul+0x374>
   15090:	fe999ae3          	bne	s3,s1,15084 <emul+0x150>
   15094:	00f85813          	srl	a6,a6,0xf
   15098:	000087b7          	lui	a5,0x8
   1509c:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   150a0:	1af70e63          	beq	a4,a5,1525c <emul+0x328>
   150a4:	00f65793          	srl	a5,a2,0xf
   150a8:	0107c7b3          	xor	a5,a5,a6
   150ac:	00f7979b          	sllw	a5,a5,0xf
   150b0:	00f41923          	sh	a5,18(s0)
   150b4:	01240713          	add	a4,s0,18
   150b8:	00040793          	mv	a5,s0
   150bc:	00278793          	add	a5,a5,2
   150c0:	fe079f23          	sh	zero,-2(a5)
   150c4:	fee79ce3          	bne	a5,a4,150bc <emul+0x188>
   150c8:	01245783          	lhu	a5,18(s0)
   150cc:	00008737          	lui	a4,0x8
   150d0:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   150d4:	00e7e7b3          	or	a5,a5,a4
   150d8:	00f41923          	sh	a5,18(s0)
   150dc:	0b813083          	ld	ra,184(sp)
   150e0:	0b013403          	ld	s0,176(sp)
   150e4:	0a813483          	ld	s1,168(sp)
   150e8:	0a013903          	ld	s2,160(sp)
   150ec:	09813983          	ld	s3,152(sp)
   150f0:	09013a03          	ld	s4,144(sp)
   150f4:	08813a83          	ld	s5,136(sp)
   150f8:	08013b03          	ld	s6,128(sp)
   150fc:	07813b83          	ld	s7,120(sp)
   15100:	07013c03          	ld	s8,112(sp)
   15104:	06813c83          	ld	s9,104(sp)
   15108:	06013d03          	ld	s10,96(sp)
   1510c:	0c010113          	add	sp,sp,192
   15110:	00008067          	ret
   15114:	0125d603          	lhu	a2,18(a1)
   15118:	00e677b3          	and	a5,a2,a4
   1511c:	02e79a63          	bne	a5,a4,15150 <emul+0x21c>
   15120:	01290793          	add	a5,s2,18
   15124:	00090713          	mv	a4,s2
   15128:	00075683          	lhu	a3,0(a4)
   1512c:	00270713          	add	a4,a4,2
   15130:	08069863          	bnez	a3,151c0 <emul+0x28c>
   15134:	fef71ae3          	bne	a4,a5,15128 <emul+0x1f4>
   15138:	00008737          	lui	a4,0x8
   1513c:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   15140:	01248993          	add	s3,s1,18
   15144:	e6e508e3          	beq	a0,a4,14fb4 <emul+0x80>
   15148:	00e676b3          	and	a3,a2,a4
   1514c:	eae686e3          	beq	a3,a4,14ff8 <emul+0xc4>
   15150:	00048513          	mv	a0,s1
   15154:	00010593          	mv	a1,sp
   15158:	ec5fe0ef          	jal	1401c <emovi>
   1515c:	00090513          	mv	a0,s2
   15160:	02010593          	add	a1,sp,32
   15164:	eb9fe0ef          	jal	1401c <emovi>
   15168:	00215903          	lhu	s2,2(sp)
   1516c:	02215483          	lhu	s1,34(sp)
   15170:	06090663          	beqz	s2,151dc <emul+0x2a8>
   15174:	14049a63          	bnez	s1,152c8 <emul+0x394>
   15178:	02210793          	add	a5,sp,34
   1517c:	03810693          	add	a3,sp,56
   15180:	0007d703          	lhu	a4,0(a5)
   15184:	00278793          	add	a5,a5,2
   15188:	26071a63          	bnez	a4,153fc <emul+0x4c8>
   1518c:	fed79ae3          	bne	a5,a3,15180 <emul+0x24c>
   15190:	01440793          	add	a5,s0,20
   15194:	00240413          	add	s0,s0,2
   15198:	fe041f23          	sh	zero,-2(s0)
   1519c:	fe879ce3          	bne	a5,s0,15194 <emul+0x260>
   151a0:	f3dff06f          	j	150dc <emul+0x1a8>
   151a4:	01440713          	add	a4,s0,20
   151a8:	0004d783          	lhu	a5,0(s1)
   151ac:	00240413          	add	s0,s0,2
   151b0:	00248493          	add	s1,s1,2
   151b4:	fef41f23          	sh	a5,-2(s0)
   151b8:	fee418e3          	bne	s0,a4,151a8 <emul+0x274>
   151bc:	f21ff06f          	j	150dc <emul+0x1a8>
   151c0:	01490713          	add	a4,s2,20
   151c4:	00095783          	lhu	a5,0(s2)
   151c8:	00290913          	add	s2,s2,2
   151cc:	00240413          	add	s0,s0,2
   151d0:	fef41f23          	sh	a5,-2(s0)
   151d4:	ff2718e3          	bne	a4,s2,151c4 <emul+0x290>
   151d8:	f05ff06f          	j	150dc <emul+0x1a8>
   151dc:	00210793          	add	a5,sp,2
   151e0:	01810693          	add	a3,sp,24
   151e4:	0007d703          	lhu	a4,0(a5)
   151e8:	00278793          	add	a5,a5,2
   151ec:	20071063          	bnez	a4,153ec <emul+0x4b8>
   151f0:	fef69ae3          	bne	a3,a5,151e4 <emul+0x2b0>
   151f4:	01440793          	add	a5,s0,20
   151f8:	00240413          	add	s0,s0,2
   151fc:	fe041f23          	sh	zero,-2(s0)
   15200:	fef41ce3          	bne	s0,a5,151f8 <emul+0x2c4>
   15204:	ed9ff06f          	j	150dc <emul+0x1a8>
   15208:	0124d803          	lhu	a6,18(s1)
   1520c:	000085b7          	lui	a1,0x8
   15210:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   15214:	00b87733          	and	a4,a6,a1
   15218:	00070693          	mv	a3,a4
   1521c:	e4b710e3          	bne	a4,a1,1505c <emul+0x128>
   15220:	01248993          	add	s3,s1,18
   15224:	00048793          	mv	a5,s1
   15228:	0007d703          	lhu	a4,0(a5)
   1522c:	00278793          	add	a5,a5,2
   15230:	08071463          	bnez	a4,152b8 <emul+0x384>
   15234:	fef99ae3          	bne	s3,a5,15228 <emul+0x2f4>
   15238:	0006871b          	sext.w	a4,a3
   1523c:	e49ff06f          	j	15084 <emul+0x150>
   15240:	000085b7          	lui	a1,0x8
   15244:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   15248:	00b67733          	and	a4,a2,a1
   1524c:	00070693          	mv	a3,a4
   15250:	01290793          	add	a5,s2,18
   15254:	dab702e3          	beq	a4,a1,14ff8 <emul+0xc4>
   15258:	fcdff06f          	j	15224 <emul+0x2f0>
   1525c:	01290793          	add	a5,s2,18
   15260:	00095703          	lhu	a4,0(s2)
   15264:	00290913          	add	s2,s2,2
   15268:	04071463          	bnez	a4,152b0 <emul+0x37c>
   1526c:	ff279ae3          	bne	a5,s2,15260 <emul+0x32c>
   15270:	e35ff06f          	j	150a4 <emul+0x170>
   15274:	01040713          	add	a4,s0,16
   15278:	00040793          	mv	a5,s0
   1527c:	00278793          	add	a5,a5,2
   15280:	fe079f23          	sh	zero,-2(a5)
   15284:	fef71ce3          	bne	a4,a5,1527c <emul+0x348>
   15288:	ffffc7b7          	lui	a5,0xffffc
   1528c:	00f41823          	sh	a5,16(s0)
   15290:	ffff87b7          	lui	a5,0xffff8
   15294:	fff7c793          	not	a5,a5
   15298:	00f41923          	sh	a5,18(s0)
   1529c:	e41ff06f          	j	150dc <emul+0x1a8>
   152a0:	00f85813          	srl	a6,a6,0xf
   152a4:	fbdff06f          	j	15260 <emul+0x32c>
   152a8:	00000813          	li	a6,0
   152ac:	dedff06f          	j	15098 <emul+0x164>
   152b0:	00000793          	li	a5,0
   152b4:	df5ff06f          	j	150a8 <emul+0x174>
   152b8:	00068713          	mv	a4,a3
   152bc:	000086b7          	lui	a3,0x8
   152c0:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   152c4:	d85ff06f          	j	15048 <emul+0x114>
   152c8:	00048993          	mv	s3,s1
   152cc:	02015783          	lhu	a5,32(sp)
   152d0:	0104949b          	sllw	s1,s1,0x10
   152d4:	038a8a13          	add	s4,s5,56
   152d8:	0097e7b3          	or	a5,a5,s1
   152dc:	02faaa23          	sw	a5,52(s5)
   152e0:	034a8493          	add	s1,s5,52
   152e4:	000a0793          	mv	a5,s4
   152e8:	04ea8713          	add	a4,s5,78
   152ec:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd31e8>
   152f0:	00278793          	add	a5,a5,2
   152f4:	fee79ce3          	bne	a5,a4,152ec <emul+0x3b8>
   152f8:	04ca8c93          	add	s9,s5,76
   152fc:	00000c13          	li	s8,0
   15300:	01810b13          	add	s6,sp,24
   15304:	00410d13          	add	s10,sp,4
   15308:	04210b93          	add	s7,sp,66
   1530c:	000b5503          	lhu	a0,0(s6)
   15310:	ffeb0b13          	add	s6,s6,-2
   15314:	08051a63          	bnez	a0,153a8 <emul+0x474>
   15318:	04cad783          	lhu	a5,76(s5)
   1531c:	000c8713          	mv	a4,s9
   15320:	00fc6c33          	or	s8,s8,a5
   15324:	ffe75603          	lhu	a2,-2(a4)
   15328:	ffe70713          	add	a4,a4,-2
   1532c:	00c71123          	sh	a2,2(a4)
   15330:	feea1ae3          	bne	s4,a4,15324 <emul+0x3f0>
   15334:	020a9c23          	sh	zero,56(s5)
   15338:	fdab1ae3          	bne	s6,s10,1530c <emul+0x3d8>
   1533c:	02010793          	add	a5,sp,32
   15340:	03a10693          	add	a3,sp,58
   15344:	0004d703          	lhu	a4,0(s1)
   15348:	00278793          	add	a5,a5,2
   1534c:	00248493          	add	s1,s1,2
   15350:	fee79f23          	sh	a4,-2(a5)
   15354:	fed798e3          	bne	a5,a3,15344 <emul+0x410>
   15358:	ffffc6b7          	lui	a3,0xffffc
   1535c:	01390933          	add	s2,s2,s3
   15360:	00268693          	add	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd71ea>
   15364:	000c0593          	mv	a1,s8
   15368:	02010513          	add	a0,sp,32
   1536c:	000a8793          	mv	a5,s5
   15370:	04000713          	li	a4,64
   15374:	00d906b3          	add	a3,s2,a3
   15378:	00000613          	li	a2,0
   1537c:	ea9fe0ef          	jal	14224 <emdnorm>
   15380:	02015703          	lhu	a4,32(sp)
   15384:	00015783          	lhu	a5,0(sp)
   15388:	00040593          	mv	a1,s0
   1538c:	02010513          	add	a0,sp,32
   15390:	40e787b3          	sub	a5,a5,a4
   15394:	00f037b3          	snez	a5,a5
   15398:	40f007bb          	negw	a5,a5
   1539c:	02f11023          	sh	a5,32(sp)
   153a0:	891fe0ef          	jal	13c30 <emovo.constprop.0>
   153a4:	d39ff06f          	j	150dc <emul+0x1a8>
   153a8:	04010613          	add	a2,sp,64
   153ac:	02010593          	add	a1,sp,32
   153b0:	fb0fe0ef          	jal	13b60 <m16m>
   153b4:	000c8513          	mv	a0,s9
   153b8:	00000593          	li	a1,0
   153bc:	05810613          	add	a2,sp,88
   153c0:	00055783          	lhu	a5,0(a0)
   153c4:	00065703          	lhu	a4,0(a2)
   153c8:	ffe50513          	add	a0,a0,-2
   153cc:	ffe60613          	add	a2,a2,-2
   153d0:	00f70733          	add	a4,a4,a5
   153d4:	00b70733          	add	a4,a4,a1
   153d8:	01075593          	srl	a1,a4,0x10
   153dc:	00e51123          	sh	a4,2(a0)
   153e0:	0015f593          	and	a1,a1,1
   153e4:	fd761ee3          	bne	a2,s7,153c0 <emul+0x48c>
   153e8:	f31ff06f          	j	15318 <emul+0x3e4>
   153ec:	00010513          	mv	a0,sp
   153f0:	8fdfe0ef          	jal	13cec <enormlz>
   153f4:	40a00933          	neg	s2,a0
   153f8:	d7dff06f          	j	15174 <emul+0x240>
   153fc:	02010513          	add	a0,sp,32
   15400:	8edfe0ef          	jal	13cec <enormlz>
   15404:	40a009b3          	neg	s3,a0
   15408:	02215483          	lhu	s1,34(sp)
   1540c:	ec1ff06f          	j	152cc <emul+0x398>
   15410:	0124d803          	lhu	a6,18(s1)
   15414:	00b877b3          	and	a5,a6,a1
   15418:	e0b786e3          	beq	a5,a1,15224 <emul+0x2f0>
   1541c:	d35ff06f          	j	15150 <emul+0x21c>

0000000000015420 <_ldtoa_r>:
   15420:	d8010113          	add	sp,sp,-640
   15424:	09100313          	li	t1,145
   15428:	06c13c23          	sd	a2,120(sp)
   1542c:	06053e03          	ld	t3,96(a0)
   15430:	02031613          	sll	a2,t1,0x20
   15434:	fff60613          	add	a2,a2,-1
   15438:	26813823          	sd	s0,624(sp)
   1543c:	27213023          	sd	s2,608(sp)
   15440:	26113c23          	sd	ra,632(sp)
   15444:	26913423          	sd	s1,616(sp)
   15448:	25313c23          	sd	s3,600(sp)
   1544c:	25413823          	sd	s4,592(sp)
   15450:	25513423          	sd	s5,584(sp)
   15454:	25613023          	sd	s6,576(sp)
   15458:	23713c23          	sd	s7,568(sp)
   1545c:	23813823          	sd	s8,560(sp)
   15460:	23913423          	sd	s9,552(sp)
   15464:	23a13023          	sd	s10,544(sp)
   15468:	21b13c23          	sd	s11,536(sp)
   1546c:	06b13823          	sd	a1,112(sp)
   15470:	1cc13023          	sd	a2,448(sp)
   15474:	00d13423          	sd	a3,8(sp)
   15478:	00e13c23          	sd	a4,24(sp)
   1547c:	02f13023          	sd	a5,32(sp)
   15480:	03113423          	sd	a7,40(sp)
   15484:	00050913          	mv	s2,a0
   15488:	00080413          	mv	s0,a6
   1548c:	020e0863          	beqz	t3,154bc <_ldtoa_r+0x9c>
   15490:	06852783          	lw	a5,104(a0)
   15494:	00100713          	li	a4,1
   15498:	000e0593          	mv	a1,t3
   1549c:	00f7173b          	sllw	a4,a4,a5
   154a0:	02079793          	sll	a5,a5,0x20
   154a4:	02071713          	sll	a4,a4,0x20
   154a8:	0207d793          	srl	a5,a5,0x20
   154ac:	00e7e7b3          	or	a5,a5,a4
   154b0:	00fe3423          	sd	a5,8(t3)
   154b4:	7dd010ef          	jal	17490 <_Bfree>
   154b8:	06093023          	sd	zero,96(s2)
   154bc:	0a010593          	add	a1,sp,160
   154c0:	07010513          	add	a0,sp,112
   154c4:	b80ff0ef          	jal	14844 <e113toe.isra.0>
   154c8:	0b215683          	lhu	a3,178(sp)
   154cc:	000087b7          	lui	a5,0x8
   154d0:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   154d4:	00f6f733          	and	a4,a3,a5
   154d8:	02e13823          	sd	a4,48(sp)
   154dc:	46f70863          	beq	a4,a5,1594c <_ldtoa_r+0x52c>
   154e0:	0106979b          	sllw	a5,a3,0x10
   154e4:	4107d79b          	sraw	a5,a5,0x10
   154e8:	00813703          	ld	a4,8(sp)
   154ec:	01f7d79b          	srlw	a5,a5,0x1f
   154f0:	00f42023          	sw	a5,0(s0)
   154f4:	00300793          	li	a5,3
   154f8:	12f70ae3          	beq	a4,a5,15e2c <_ldtoa_r+0xa0c>
   154fc:	01400793          	li	a5,20
   15500:	00f13823          	sd	a5,16(sp)
   15504:	00813783          	ld	a5,8(sp)
   15508:	140792e3          	bnez	a5,15e4c <_ldtoa_r+0xa2c>
   1550c:	0c010793          	add	a5,sp,192
   15510:	0a010713          	add	a4,sp,160
   15514:	0d410413          	add	s0,sp,212
   15518:	00075683          	lhu	a3,0(a4)
   1551c:	00278793          	add	a5,a5,2
   15520:	00270713          	add	a4,a4,2
   15524:	fed79f23          	sh	a3,-2(a5)
   15528:	fe8798e3          	bne	a5,s0,15518 <_ldtoa_r+0xf8>
   1552c:	0d215a83          	lhu	s5,210(sp)
   15530:	00000993          	li	s3,0
   15534:	00fad793          	srl	a5,s5,0xf
   15538:	00078c63          	beqz	a5,15550 <_ldtoa_r+0x130>
   1553c:	031a9f13          	sll	t5,s5,0x31
   15540:	031f5a93          	srl	s5,t5,0x31
   15544:	000107b7          	lui	a5,0x10
   15548:	0d511923          	sh	s5,210(sp)
   1554c:	fff78993          	add	s3,a5,-1 # ffff <exit-0xe9>
   15550:	00022bb7          	lui	s7,0x22
   15554:	000224b7          	lui	s1,0x22
   15558:	0e010713          	add	a4,sp,224
   1555c:	290b8793          	add	a5,s7,656 # 22290 <eone>
   15560:	2a448493          	add	s1,s1,676 # 222a4 <eone+0x14>
   15564:	0007d683          	lhu	a3,0(a5)
   15568:	00278793          	add	a5,a5,2
   1556c:	00270713          	add	a4,a4,2
   15570:	fed71f23          	sh	a3,-2(a4)
   15574:	fe9798e3          	bne	a5,s1,15564 <_ldtoa_r+0x144>
   15578:	6a0a9c63          	bnez	s5,15c30 <_ldtoa_r+0x810>
   1557c:	0c010793          	add	a5,sp,192
   15580:	0d210693          	add	a3,sp,210
   15584:	0007d703          	lhu	a4,0(a5)
   15588:	6a071e63          	bnez	a4,15c44 <_ldtoa_r+0x824>
   1558c:	00278793          	add	a5,a5,2
   15590:	fef69ae3          	bne	a3,a5,15584 <_ldtoa_r+0x164>
   15594:	00000413          	li	s0,0
   15598:	18010c13          	add	s8,sp,384
   1559c:	1c010b13          	add	s6,sp,448
   155a0:	12010a13          	add	s4,sp,288
   155a4:	13810d93          	add	s11,sp,312
   155a8:	000a0593          	mv	a1,s4
   155ac:	0e010513          	add	a0,sp,224
   155b0:	a6dfe0ef          	jal	1401c <emovi>
   155b4:	000a0493          	mv	s1,s4
   155b8:	0e010693          	add	a3,sp,224
   155bc:	000a0793          	mv	a5,s4
   155c0:	0007b703          	ld	a4,0(a5)
   155c4:	00878793          	add	a5,a5,8
   155c8:	00868693          	add	a3,a3,8
   155cc:	fee6bc23          	sd	a4,-8(a3)
   155d0:	ffb798e3          	bne	a5,s11,155c0 <_ldtoa_r+0x1a0>
   155d4:	000a0593          	mv	a1,s4
   155d8:	0c010513          	add	a0,sp,192
   155dc:	0e011c23          	sh	zero,248(sp)
   155e0:	a3dfe0ef          	jal	1401c <emovi>
   155e4:	0d810b93          	add	s7,sp,216
   155e8:	0c010793          	add	a5,sp,192
   155ec:	0004b703          	ld	a4,0(s1)
   155f0:	00878793          	add	a5,a5,8
   155f4:	00848493          	add	s1,s1,8
   155f8:	fee7bc23          	sd	a4,-8(a5)
   155fc:	fefb98e3          	bne	s7,a5,155ec <_ldtoa_r+0x1cc>
   15600:	000b0613          	mv	a2,s6
   15604:	0c010593          	add	a1,sp,192
   15608:	0e010513          	add	a0,sp,224
   1560c:	0c011c23          	sh	zero,216(sp)
   15610:	8d0ff0ef          	jal	146e0 <eiremain>
   15614:	20c15d83          	lhu	s11,524(sp)
   15618:	000224b7          	lui	s1,0x22
   1561c:	0c210d13          	add	s10,sp,194
   15620:	10210c93          	add	s9,sp,258
   15624:	160d9063          	bnez	s11,15784 <_ldtoa_r+0x364>
   15628:	2a848593          	add	a1,s1,680 # 222a8 <ezero>
   1562c:	0c010513          	add	a0,sp,192
   15630:	aa5fe0ef          	jal	140d4 <ecmp>
   15634:	14050863          	beqz	a0,15784 <_ldtoa_r+0x364>
   15638:	00000713          	li	a4,0
   1563c:	000b8693          	mv	a3,s7
   15640:	0006d783          	lhu	a5,0(a3)
   15644:	00f7d613          	srl	a2,a5,0xf
   15648:	00060463          	beqz	a2,15650 <_ldtoa_r+0x230>
   1564c:	00176713          	or	a4,a4,1
   15650:	0017979b          	sllw	a5,a5,0x1
   15654:	03079793          	sll	a5,a5,0x30
   15658:	00277613          	and	a2,a4,2
   1565c:	0307d793          	srl	a5,a5,0x30
   15660:	00060463          	beqz	a2,15668 <_ldtoa_r+0x248>
   15664:	0017e793          	or	a5,a5,1
   15668:	0017171b          	sllw	a4,a4,0x1
   1566c:	00f69023          	sh	a5,0(a3)
   15670:	03071713          	sll	a4,a4,0x30
   15674:	ffe68693          	add	a3,a3,-2
   15678:	03075713          	srl	a4,a4,0x30
   1567c:	fda692e3          	bne	a3,s10,15640 <_ldtoa_r+0x220>
   15680:	10010713          	add	a4,sp,256
   15684:	0c010793          	add	a5,sp,192
   15688:	0007b683          	ld	a3,0(a5)
   1568c:	00878793          	add	a5,a5,8
   15690:	00870713          	add	a4,a4,8
   15694:	fed73c23          	sd	a3,-8(a4)
   15698:	fefb98e3          	bne	s7,a5,15688 <_ldtoa_r+0x268>
   1569c:	10011c23          	sh	zero,280(sp)
   156a0:	00000713          	li	a4,0
   156a4:	11810693          	add	a3,sp,280
   156a8:	0006d783          	lhu	a5,0(a3)
   156ac:	00f7d613          	srl	a2,a5,0xf
   156b0:	00060463          	beqz	a2,156b8 <_ldtoa_r+0x298>
   156b4:	00176713          	or	a4,a4,1
   156b8:	0017979b          	sllw	a5,a5,0x1
   156bc:	03079793          	sll	a5,a5,0x30
   156c0:	00277613          	and	a2,a4,2
   156c4:	0307d793          	srl	a5,a5,0x30
   156c8:	00060463          	beqz	a2,156d0 <_ldtoa_r+0x2b0>
   156cc:	0017e793          	or	a5,a5,1
   156d0:	0017171b          	sllw	a4,a4,0x1
   156d4:	00f69023          	sh	a5,0(a3)
   156d8:	03071713          	sll	a4,a4,0x30
   156dc:	ffe68693          	add	a3,a3,-2
   156e0:	03075713          	srl	a4,a4,0x30
   156e4:	fd9692e3          	bne	a3,s9,156a8 <_ldtoa_r+0x288>
   156e8:	00000713          	li	a4,0
   156ec:	11810693          	add	a3,sp,280
   156f0:	0006d783          	lhu	a5,0(a3)
   156f4:	00f7d613          	srl	a2,a5,0xf
   156f8:	00060463          	beqz	a2,15700 <_ldtoa_r+0x2e0>
   156fc:	00176713          	or	a4,a4,1
   15700:	0017979b          	sllw	a5,a5,0x1
   15704:	03079793          	sll	a5,a5,0x30
   15708:	00277613          	and	a2,a4,2
   1570c:	0307d793          	srl	a5,a5,0x30
   15710:	00060463          	beqz	a2,15718 <_ldtoa_r+0x2f8>
   15714:	0017e793          	or	a5,a5,1
   15718:	0017171b          	sllw	a4,a4,0x1
   1571c:	00f69023          	sh	a5,0(a3)
   15720:	03071713          	sll	a4,a4,0x30
   15724:	ffe68693          	add	a3,a3,-2
   15728:	03075713          	srl	a4,a4,0x30
   1572c:	fd9692e3          	bne	a3,s9,156f0 <_ldtoa_r+0x2d0>
   15730:	00000613          	li	a2,0
   15734:	000b8693          	mv	a3,s7
   15738:	11810713          	add	a4,sp,280
   1573c:	0006d583          	lhu	a1,0(a3)
   15740:	00075783          	lhu	a5,0(a4)
   15744:	ffe68693          	add	a3,a3,-2
   15748:	ffe70713          	add	a4,a4,-2
   1574c:	00b787b3          	add	a5,a5,a1
   15750:	00c787b3          	add	a5,a5,a2
   15754:	0107d613          	srl	a2,a5,0x10
   15758:	00f69123          	sh	a5,2(a3)
   1575c:	00167613          	and	a2,a2,1
   15760:	fd971ee3          	bne	a4,s9,1573c <_ldtoa_r+0x31c>
   15764:	000b0613          	mv	a2,s6
   15768:	0c010593          	add	a1,sp,192
   1576c:	0e010513          	add	a0,sp,224
   15770:	f71fe0ef          	jal	146e0 <eiremain>
   15774:	20c15783          	lhu	a5,524(sp)
   15778:	fff4041b          	addw	s0,s0,-1
   1577c:	ea0786e3          	beqz	a5,15628 <_ldtoa_r+0x208>
   15780:	00078d93          	mv	s11,a5
   15784:	02000793          	li	a5,32
   15788:	00098463          	beqz	s3,15790 <_ldtoa_r+0x370>
   1578c:	02d00793          	li	a5,45
   15790:	00813703          	ld	a4,8(sp)
   15794:	18f10023          	sb	a5,384(sp)
   15798:	00300693          	li	a3,3
   1579c:	01013783          	ld	a5,16(sp)
   157a0:	00d71463          	bne	a4,a3,157a8 <_ldtoa_r+0x388>
   157a4:	008787bb          	addw	a5,a5,s0
   157a8:	02a00693          	li	a3,42
   157ac:	00078613          	mv	a2,a5
   157b0:	00f6d463          	bge	a3,a5,157b8 <_ldtoa_r+0x398>
   157b4:	02a00613          	li	a2,42
   157b8:	00a00693          	li	a3,10
   157bc:	00060a1b          	sext.w	s4,a2
   157c0:	64dd8063          	beq	s11,a3,15e00 <_ldtoa_r+0x9e0>
   157c4:	030d8d9b          	addw	s11,s11,48
   157c8:	02e00693          	li	a3,46
   157cc:	19b100a3          	sb	s11,385(sp)
   157d0:	18d10123          	sb	a3,386(sp)
   157d4:	2407c063          	bltz	a5,15a14 <_ldtoa_r+0x5f4>
   157d8:	18310a93          	add	s5,sp,387
   157dc:	00000993          	li	s3,0
   157e0:	10010c93          	add	s9,sp,256
   157e4:	11810d93          	add	s11,sp,280
   157e8:	0c210d13          	add	s10,sp,194
   157ec:	10210493          	add	s1,sp,258
   157f0:	00000713          	li	a4,0
   157f4:	000b8693          	mv	a3,s7
   157f8:	0006d783          	lhu	a5,0(a3)
   157fc:	00f7d613          	srl	a2,a5,0xf
   15800:	00060463          	beqz	a2,15808 <_ldtoa_r+0x3e8>
   15804:	00176713          	or	a4,a4,1
   15808:	0017979b          	sllw	a5,a5,0x1
   1580c:	03079793          	sll	a5,a5,0x30
   15810:	00277613          	and	a2,a4,2
   15814:	0307d793          	srl	a5,a5,0x30
   15818:	00060463          	beqz	a2,15820 <_ldtoa_r+0x400>
   1581c:	0017e793          	or	a5,a5,1
   15820:	0017171b          	sllw	a4,a4,0x1
   15824:	00f69023          	sh	a5,0(a3)
   15828:	03071713          	sll	a4,a4,0x30
   1582c:	ffe68693          	add	a3,a3,-2
   15830:	03075713          	srl	a4,a4,0x30
   15834:	fda692e3          	bne	a3,s10,157f8 <_ldtoa_r+0x3d8>
   15838:	000c8793          	mv	a5,s9
   1583c:	0c010713          	add	a4,sp,192
   15840:	00073683          	ld	a3,0(a4)
   15844:	00878793          	add	a5,a5,8
   15848:	00870713          	add	a4,a4,8
   1584c:	fed7bc23          	sd	a3,-8(a5)
   15850:	fefd98e3          	bne	s11,a5,15840 <_ldtoa_r+0x420>
   15854:	10011c23          	sh	zero,280(sp)
   15858:	00000713          	li	a4,0
   1585c:	000d8693          	mv	a3,s11
   15860:	0006d783          	lhu	a5,0(a3)
   15864:	00f7d613          	srl	a2,a5,0xf
   15868:	00060463          	beqz	a2,15870 <_ldtoa_r+0x450>
   1586c:	00176713          	or	a4,a4,1
   15870:	0017979b          	sllw	a5,a5,0x1
   15874:	03079793          	sll	a5,a5,0x30
   15878:	00277613          	and	a2,a4,2
   1587c:	0307d793          	srl	a5,a5,0x30
   15880:	00060463          	beqz	a2,15888 <_ldtoa_r+0x468>
   15884:	0017e793          	or	a5,a5,1
   15888:	0017171b          	sllw	a4,a4,0x1
   1588c:	00f69023          	sh	a5,0(a3)
   15890:	03071713          	sll	a4,a4,0x30
   15894:	ffe68693          	add	a3,a3,-2
   15898:	03075713          	srl	a4,a4,0x30
   1589c:	fc9692e3          	bne	a3,s1,15860 <_ldtoa_r+0x440>
   158a0:	00000713          	li	a4,0
   158a4:	000d8693          	mv	a3,s11
   158a8:	0006d783          	lhu	a5,0(a3)
   158ac:	00f7d613          	srl	a2,a5,0xf
   158b0:	00060463          	beqz	a2,158b8 <_ldtoa_r+0x498>
   158b4:	00176713          	or	a4,a4,1
   158b8:	0017979b          	sllw	a5,a5,0x1
   158bc:	03079793          	sll	a5,a5,0x30
   158c0:	00277613          	and	a2,a4,2
   158c4:	0307d793          	srl	a5,a5,0x30
   158c8:	00060463          	beqz	a2,158d0 <_ldtoa_r+0x4b0>
   158cc:	0017e793          	or	a5,a5,1
   158d0:	0017171b          	sllw	a4,a4,0x1
   158d4:	00f69023          	sh	a5,0(a3)
   158d8:	03071713          	sll	a4,a4,0x30
   158dc:	ffe68693          	add	a3,a3,-2
   158e0:	03075713          	srl	a4,a4,0x30
   158e4:	fc9692e3          	bne	a3,s1,158a8 <_ldtoa_r+0x488>
   158e8:	00000613          	li	a2,0
   158ec:	000b8693          	mv	a3,s7
   158f0:	000d8713          	mv	a4,s11
   158f4:	0006d583          	lhu	a1,0(a3)
   158f8:	00075783          	lhu	a5,0(a4)
   158fc:	ffe68693          	add	a3,a3,-2
   15900:	ffe70713          	add	a4,a4,-2
   15904:	00b787b3          	add	a5,a5,a1
   15908:	00c787b3          	add	a5,a5,a2
   1590c:	0107d613          	srl	a2,a5,0x10
   15910:	00f69123          	sh	a5,2(a3)
   15914:	00167613          	and	a2,a2,1
   15918:	fc971ee3          	bne	a4,s1,158f4 <_ldtoa_r+0x4d4>
   1591c:	0c010593          	add	a1,sp,192
   15920:	000b0613          	mv	a2,s6
   15924:	0e010513          	add	a0,sp,224
   15928:	db9fe0ef          	jal	146e0 <eiremain>
   1592c:	20c15583          	lhu	a1,524(sp)
   15930:	001a8793          	add	a5,s5,1
   15934:	0019899b          	addw	s3,s3,1
   15938:	0305871b          	addw	a4,a1,48
   1593c:	fee78fa3          	sb	a4,-1(a5)
   15940:	0f3a4063          	blt	s4,s3,15a20 <_ldtoa_r+0x600>
   15944:	00078a93          	mv	s5,a5
   15948:	ea9ff06f          	j	157f0 <_ldtoa_r+0x3d0>
   1594c:	0a010793          	add	a5,sp,160
   15950:	0b210613          	add	a2,sp,178
   15954:	0007d703          	lhu	a4,0(a5)
   15958:	00278793          	add	a5,a5,2
   1595c:	7e071063          	bnez	a4,1613c <_ldtoa_r+0xd1c>
   15960:	fec79ae3          	bne	a5,a2,15954 <_ldtoa_r+0x534>
   15964:	00f6d693          	srl	a3,a3,0xf
   15968:	00813703          	ld	a4,8(sp)
   1596c:	00d42023          	sw	a3,0(s0)
   15970:	00300793          	li	a5,3
   15974:	7af70463          	beq	a4,a5,1611c <_ldtoa_r+0xcfc>
   15978:	01400793          	li	a5,20
   1597c:	00f13823          	sd	a5,16(sp)
   15980:	00070e63          	beqz	a4,1599c <_ldtoa_r+0x57c>
   15984:	01813783          	ld	a5,24(sp)
   15988:	fff78a1b          	addw	s4,a5,-1
   1598c:	02a00793          	li	a5,42
   15990:	0147d463          	bge	a5,s4,15998 <_ldtoa_r+0x578>
   15994:	02a00a13          	li	s4,42
   15998:	01413823          	sd	s4,16(sp)
   1599c:	0a015703          	lhu	a4,160(sp)
   159a0:	0a010793          	add	a5,sp,160
   159a4:	0b210693          	add	a3,sp,178
   159a8:	00278793          	add	a5,a5,2
   159ac:	00071a63          	bnez	a4,159c0 <_ldtoa_r+0x5a0>
   159b0:	b4d78ee3          	beq	a5,a3,1550c <_ldtoa_r+0xec>
   159b4:	0007d703          	lhu	a4,0(a5)
   159b8:	00278793          	add	a5,a5,2
   159bc:	fe070ae3          	beqz	a4,159b0 <_ldtoa_r+0x590>
   159c0:	18010c13          	add	s8,sp,384
   159c4:	000225b7          	lui	a1,0x22
   159c8:	05058593          	add	a1,a1,80 # 22050 <blanks.1+0xd8>
   159cc:	000c0513          	mv	a0,s8
   159d0:	6e1020ef          	jal	188b0 <sprintf>
   159d4:	00002437          	lui	s0,0x2
   159d8:	70f40413          	add	s0,s0,1807 # 270f <exit-0xd9d9>
   159dc:	09000793          	li	a5,144
   159e0:	1cf12223          	sw	a5,452(sp)
   159e4:	1c812823          	sw	s0,464(sp)
   159e8:	0a010793          	add	a5,sp,160
   159ec:	0b210613          	add	a2,sp,178
   159f0:	0007d703          	lhu	a4,0(a5)
   159f4:	00278793          	add	a5,a5,2
   159f8:	140710e3          	bnez	a4,16338 <_ldtoa_r+0xf18>
   159fc:	fec79ae3          	bne	a5,a2,159f0 <_ldtoa_r+0x5d0>
   15a00:	02013703          	ld	a4,32(sp)
   15a04:	000027b7          	lui	a5,0x2
   15a08:	70f78793          	add	a5,a5,1807 # 270f <exit-0xd9d9>
   15a0c:	00f72023          	sw	a5,0(a4)
   15a10:	0e00006f          	j	15af0 <_ldtoa_r+0x6d0>
   15a14:	20c15583          	lhu	a1,524(sp)
   15a18:	18210a93          	add	s5,sp,386
   15a1c:	18310793          	add	a5,sp,387
   15a20:	00400693          	li	a3,4
   15a24:	04b6d863          	bge	a3,a1,15a74 <_ldtoa_r+0x654>
   15a28:	00500693          	li	a3,5
   15a2c:	14d58ae3          	beq	a1,a3,16380 <_ldtoa_r+0xf60>
   15a30:	ffe7c683          	lbu	a3,-2(a5)
   15a34:	ffe78593          	add	a1,a5,-2
   15a38:	07f6f693          	and	a3,a3,127
   15a3c:	020a4663          	bltz	s4,15a68 <_ldtoa_r+0x648>
   15a40:	02e00793          	li	a5,46
   15a44:	03800613          	li	a2,56
   15a48:	03000513          	li	a0,48
   15a4c:	0cf688e3          	beq	a3,a5,1631c <_ldtoa_r+0xefc>
   15a50:	0cd670e3          	bgeu	a2,a3,16310 <_ldtoa_r+0xef0>
   15a54:	fff5c683          	lbu	a3,-1(a1)
   15a58:	00a58023          	sb	a0,0(a1)
   15a5c:	fff58593          	add	a1,a1,-1
   15a60:	07f6f693          	and	a3,a3,127
   15a64:	fe9ff06f          	j	15a4c <_ldtoa_r+0x62c>
   15a68:	03100693          	li	a3,49
   15a6c:	fed78f23          	sb	a3,-2(a5)
   15a70:	0014041b          	addw	s0,s0,1
   15a74:	000225b7          	lui	a1,0x22
   15a78:	00040613          	mv	a2,s0
   15a7c:	fe858593          	add	a1,a1,-24 # 21fe8 <blanks.1+0x70>
   15a80:	000a8513          	mv	a0,s5
   15a84:	62d020ef          	jal	188b0 <sprintf>
   15a88:	09000793          	li	a5,144
   15a8c:	03013703          	ld	a4,48(sp)
   15a90:	1cf12223          	sw	a5,452(sp)
   15a94:	000087b7          	lui	a5,0x8
   15a98:	1c812823          	sw	s0,464(sp)
   15a9c:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15aa0:	f4f704e3          	beq	a4,a5,159e8 <_ldtoa_r+0x5c8>
   15aa4:	02013703          	ld	a4,32(sp)
   15aa8:	18014683          	lbu	a3,384(sp)
   15aac:	0014079b          	addw	a5,s0,1
   15ab0:	00f72023          	sw	a5,0(a4)
   15ab4:	66068063          	beqz	a3,16114 <_ldtoa_r+0xcf4>
   15ab8:	000c0793          	mv	a5,s8
   15abc:	02e00613          	li	a2,46
   15ac0:	30c68a63          	beq	a3,a2,15dd4 <_ldtoa_r+0x9b4>
   15ac4:	0017c683          	lbu	a3,1(a5)
   15ac8:	00178793          	add	a5,a5,1
   15acc:	fe069ae3          	bnez	a3,15ac0 <_ldtoa_r+0x6a0>
   15ad0:	04500613          	li	a2,69
   15ad4:	00fc6663          	bltu	s8,a5,15ae0 <_ldtoa_r+0x6c0>
   15ad8:	0140006f          	j	15aec <_ldtoa_r+0x6cc>
   15adc:	63878c63          	beq	a5,s8,16114 <_ldtoa_r+0xcf4>
   15ae0:	fff7c703          	lbu	a4,-1(a5)
   15ae4:	fff78793          	add	a5,a5,-1
   15ae8:	fec71ae3          	bne	a4,a2,15adc <_ldtoa_r+0x6bc>
   15aec:	00078023          	sb	zero,0(a5)
   15af0:	000c0793          	mv	a5,s8
   15af4:	02000613          	li	a2,32
   15af8:	02d00593          	li	a1,45
   15afc:	0007c703          	lbu	a4,0(a5)
   15b00:	00c70463          	beq	a4,a2,15b08 <_ldtoa_r+0x6e8>
   15b04:	00b71663          	bne	a4,a1,15b10 <_ldtoa_r+0x6f0>
   15b08:	00178793          	add	a5,a5,1
   15b0c:	ff1ff06f          	j	15afc <_ldtoa_r+0x6dc>
   15b10:	000c0613          	mv	a2,s8
   15b14:	0007c703          	lbu	a4,0(a5)
   15b18:	00060493          	mv	s1,a2
   15b1c:	00178793          	add	a5,a5,1
   15b20:	00e60023          	sb	a4,0(a2)
   15b24:	00160613          	add	a2,a2,1
   15b28:	fe0716e3          	bnez	a4,15b14 <_ldtoa_r+0x6f4>
   15b2c:	00813703          	ld	a4,8(sp)
   15b30:	00200793          	li	a5,2
   15b34:	fff4c603          	lbu	a2,-1(s1)
   15b38:	28f70263          	beq	a4,a5,15dbc <_ldtoa_r+0x99c>
   15b3c:	01013703          	ld	a4,16(sp)
   15b40:	00070793          	mv	a5,a4
   15b44:	00875463          	bge	a4,s0,15b4c <_ldtoa_r+0x72c>
   15b48:	00040793          	mv	a5,s0
   15b4c:	03000593          	li	a1,48
   15b50:	0007869b          	sext.w	a3,a5
   15b54:	02b61663          	bne	a2,a1,15b80 <_ldtoa_r+0x760>
   15b58:	418487b3          	sub	a5,s1,s8
   15b5c:	02f6d263          	bge	a3,a5,15b80 <_ldtoa_r+0x760>
   15b60:	03000613          	li	a2,48
   15b64:	00c0006f          	j	15b70 <_ldtoa_r+0x750>
   15b68:	418487b3          	sub	a5,s1,s8
   15b6c:	00f6da63          	bge	a3,a5,15b80 <_ldtoa_r+0x760>
   15b70:	ffe4c783          	lbu	a5,-2(s1)
   15b74:	fe048fa3          	sb	zero,-1(s1)
   15b78:	fff48493          	add	s1,s1,-1
   15b7c:	fec786e3          	beq	a5,a2,15b68 <_ldtoa_r+0x748>
   15b80:	00813703          	ld	a4,8(sp)
   15b84:	00300793          	li	a5,3
   15b88:	1ef70863          	beq	a4,a5,15d78 <_ldtoa_r+0x958>
   15b8c:	01813783          	ld	a5,24(sp)
   15b90:	01f00613          	li	a2,31
   15b94:	00100693          	li	a3,1
   15b98:	0097851b          	addw	a0,a5,9
   15b9c:	00400793          	li	a5,4
   15ba0:	20a67863          	bgeu	a2,a0,15db0 <_ldtoa_r+0x990>
   15ba4:	0017979b          	sllw	a5,a5,0x1
   15ba8:	01c78713          	add	a4,a5,28
   15bac:	0006859b          	sext.w	a1,a3
   15bb0:	0016869b          	addw	a3,a3,1
   15bb4:	fee578e3          	bgeu	a0,a4,15ba4 <_ldtoa_r+0x784>
   15bb8:	0005859b          	sext.w	a1,a1
   15bbc:	06b92423          	sw	a1,104(s2)
   15bc0:	00090513          	mv	a0,s2
   15bc4:	021010ef          	jal	173e4 <_Balloc>
   15bc8:	00050413          	mv	s0,a0
   15bcc:	1a050ee3          	beqz	a0,16588 <_ldtoa_r+0x1168>
   15bd0:	06a93023          	sd	a0,96(s2)
   15bd4:	000c0593          	mv	a1,s8
   15bd8:	7e9020ef          	jal	18bc0 <strcpy>
   15bdc:	02813703          	ld	a4,40(sp)
   15be0:	00070863          	beqz	a4,15bf0 <_ldtoa_r+0x7d0>
   15be4:	418487b3          	sub	a5,s1,s8
   15be8:	00f407b3          	add	a5,s0,a5
   15bec:	00f73023          	sd	a5,0(a4)
   15bf0:	27813083          	ld	ra,632(sp)
   15bf4:	00040513          	mv	a0,s0
   15bf8:	27013403          	ld	s0,624(sp)
   15bfc:	26813483          	ld	s1,616(sp)
   15c00:	26013903          	ld	s2,608(sp)
   15c04:	25813983          	ld	s3,600(sp)
   15c08:	25013a03          	ld	s4,592(sp)
   15c0c:	24813a83          	ld	s5,584(sp)
   15c10:	24013b03          	ld	s6,576(sp)
   15c14:	23813b83          	ld	s7,568(sp)
   15c18:	23013c03          	ld	s8,560(sp)
   15c1c:	22813c83          	ld	s9,552(sp)
   15c20:	22013d03          	ld	s10,544(sp)
   15c24:	21813d83          	ld	s11,536(sp)
   15c28:	28010113          	add	sp,sp,640
   15c2c:	00008067          	ret
   15c30:	000087b7          	lui	a5,0x8
   15c34:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15c38:	6afa8663          	beq	s5,a5,162e4 <_ldtoa_r+0xec4>
   15c3c:	0d011783          	lh	a5,208(sp)
   15c40:	7207d463          	bgez	a5,16368 <_ldtoa_r+0xf48>
   15c44:	0c010593          	add	a1,sp,192
   15c48:	290b8513          	add	a0,s7,656
   15c4c:	c88fe0ef          	jal	140d4 <ecmp>
   15c50:	940502e3          	beqz	a0,15594 <_ldtoa_r+0x174>
   15c54:	20054a63          	bltz	a0,15e68 <_ldtoa_r+0xa48>
   15c58:	7a0a9063          	bnez	s5,163f8 <_ldtoa_r+0xfd8>
   15c5c:	0d011783          	lh	a5,208(sp)
   15c60:	00000413          	li	s0,0
   15c64:	1c010b13          	add	s6,sp,448
   15c68:	0207c463          	bltz	a5,15c90 <_ldtoa_r+0x870>
   15c6c:	00022d37          	lui	s10,0x22
   15c70:	0c010613          	add	a2,sp,192
   15c74:	000b0693          	mv	a3,s6
   15c78:	00060593          	mv	a1,a2
   15c7c:	278d0513          	add	a0,s10,632 # 22278 <etens+0xf0>
   15c80:	ab4ff0ef          	jal	14f34 <emul>
   15c84:	0d011783          	lh	a5,208(sp)
   15c88:	fff4041b          	addw	s0,s0,-1
   15c8c:	fe07d2e3          	bgez	a5,15c70 <_ldtoa_r+0x850>
   15c90:	12010a13          	add	s4,sp,288
   15c94:	13810d93          	add	s11,sp,312
   15c98:	000a0793          	mv	a5,s4
   15c9c:	0c010713          	add	a4,sp,192
   15ca0:	13410613          	add	a2,sp,308
   15ca4:	00075683          	lhu	a3,0(a4)
   15ca8:	00278793          	add	a5,a5,2
   15cac:	00270713          	add	a4,a4,2
   15cb0:	fed79f23          	sh	a3,-2(a5)
   15cb4:	fec798e3          	bne	a5,a2,15ca4 <_ldtoa_r+0x884>
   15cb8:	000227b7          	lui	a5,0x22
   15cbc:	0e010713          	add	a4,sp,224
   15cc0:	29078793          	add	a5,a5,656 # 22290 <eone>
   15cc4:	0007d683          	lhu	a3,0(a5)
   15cc8:	00278793          	add	a5,a5,2
   15ccc:	00270713          	add	a4,a4,2
   15cd0:	fed71f23          	sh	a3,-2(a4)
   15cd4:	fe9798e3          	bne	a5,s1,15cc4 <_ldtoa_r+0x8a4>
   15cd8:	00022d37          	lui	s10,0x22
   15cdc:	00022cb7          	lui	s9,0x22
   15ce0:	000227b7          	lui	a5,0x22
   15ce4:	fffff4b7          	lui	s1,0xfffff
   15ce8:	188d0d13          	add	s10,s10,392 # 22188 <etens>
   15cec:	080c8c93          	add	s9,s9,128 # 22080 <emtens>
   15cf0:	17078a93          	add	s5,a5,368 # 22170 <emtens+0xf0>
   15cf4:	00c0006f          	j	15d00 <_ldtoa_r+0x8e0>
   15cf8:	014c8c93          	add	s9,s9,20
   15cfc:	014d0d13          	add	s10,s10,20
   15d00:	000a0593          	mv	a1,s4
   15d04:	290b8513          	add	a0,s7,656
   15d08:	bccfe0ef          	jal	140d4 <ecmp>
   15d0c:	04a05863          	blez	a0,15d5c <_ldtoa_r+0x93c>
   15d10:	000a0593          	mv	a1,s4
   15d14:	000c8513          	mv	a0,s9
   15d18:	bbcfe0ef          	jal	140d4 <ecmp>
   15d1c:	02054863          	bltz	a0,15d4c <_ldtoa_r+0x92c>
   15d20:	000b0693          	mv	a3,s6
   15d24:	000a0613          	mv	a2,s4
   15d28:	000a0593          	mv	a1,s4
   15d2c:	000d0513          	mv	a0,s10
   15d30:	a04ff0ef          	jal	14f34 <emul>
   15d34:	0e010613          	add	a2,sp,224
   15d38:	000b0693          	mv	a3,s6
   15d3c:	00060593          	mv	a1,a2
   15d40:	000d0513          	mv	a0,s10
   15d44:	9f0ff0ef          	jal	14f34 <emul>
   15d48:	0084843b          	addw	s0,s1,s0
   15d4c:	01f4d79b          	srlw	a5,s1,0x1f
   15d50:	009787bb          	addw	a5,a5,s1
   15d54:	4017d49b          	sraw	s1,a5,0x1
   15d58:	fb5c90e3          	bne	s9,s5,15cf8 <_ldtoa_r+0x8d8>
   15d5c:	0e010613          	add	a2,sp,224
   15d60:	000b0693          	mv	a3,s6
   15d64:	290b8593          	add	a1,s7,656
   15d68:	00060513          	mv	a0,a2
   15d6c:	c31fe0ef          	jal	1499c <ediv>
   15d70:	18010c13          	add	s8,sp,384
   15d74:	835ff06f          	j	155a8 <_ldtoa_r+0x188>
   15d78:	01013783          	ld	a5,16(sp)
   15d7c:	0087843b          	addw	s0,a5,s0
   15d80:	52044c63          	bltz	s0,162b8 <_ldtoa_r+0xe98>
   15d84:	02013783          	ld	a5,32(sp)
   15d88:	01813703          	ld	a4,24(sp)
   15d8c:	0007a783          	lw	a5,0(a5)
   15d90:	00e787bb          	addw	a5,a5,a4
   15d94:	00f13c23          	sd	a5,24(sp)
   15d98:	01813783          	ld	a5,24(sp)
   15d9c:	01f00613          	li	a2,31
   15da0:	00100693          	li	a3,1
   15da4:	0037851b          	addw	a0,a5,3
   15da8:	00400793          	li	a5,4
   15dac:	dea66ce3          	bltu	a2,a0,15ba4 <_ldtoa_r+0x784>
   15db0:	06092423          	sw	zero,104(s2)
   15db4:	00000593          	li	a1,0
   15db8:	e09ff06f          	j	15bc0 <_ldtoa_r+0x7a0>
   15dbc:	03000793          	li	a5,48
   15dc0:	dcf616e3          	bne	a2,a5,15b8c <_ldtoa_r+0x76c>
   15dc4:	418487b3          	sub	a5,s1,s8
   15dc8:	00100693          	li	a3,1
   15dcc:	d8f6cae3          	blt	a3,a5,15b60 <_ldtoa_r+0x740>
   15dd0:	dbdff06f          	j	15b8c <_ldtoa_r+0x76c>
   15dd4:	0007c683          	lbu	a3,0(a5)
   15dd8:	ce068ce3          	beqz	a3,15ad0 <_ldtoa_r+0x6b0>
   15ddc:	0017c703          	lbu	a4,1(a5)
   15de0:	00178793          	add	a5,a5,1
   15de4:	fee78fa3          	sb	a4,-1(a5)
   15de8:	ce0704e3          	beqz	a4,15ad0 <_ldtoa_r+0x6b0>
   15dec:	0017c703          	lbu	a4,1(a5)
   15df0:	00178793          	add	a5,a5,1
   15df4:	fee78fa3          	sb	a4,-1(a5)
   15df8:	fe0712e3          	bnez	a4,15ddc <_ldtoa_r+0x9bc>
   15dfc:	cd5ff06f          	j	15ad0 <_ldtoa_r+0x6b0>
   15e00:	03100693          	li	a3,49
   15e04:	18d100a3          	sb	a3,385(sp)
   15e08:	02e00693          	li	a3,46
   15e0c:	18d10123          	sb	a3,386(sp)
   15e10:	0014041b          	addw	s0,s0,1
   15e14:	2ef05863          	blez	a5,16104 <_ldtoa_r+0xce4>
   15e18:	03000793          	li	a5,48
   15e1c:	18f101a3          	sb	a5,387(sp)
   15e20:	fffa0a1b          	addw	s4,s4,-1
   15e24:	18410a93          	add	s5,sp,388
   15e28:	9b5ff06f          	j	157dc <_ldtoa_r+0x3bc>
   15e2c:	01813703          	ld	a4,24(sp)
   15e30:	02a00793          	li	a5,42
   15e34:	00070a13          	mv	s4,a4
   15e38:	00e7d463          	bge	a5,a4,15e40 <_ldtoa_r+0xa20>
   15e3c:	02a00a13          	li	s4,42
   15e40:	000a079b          	sext.w	a5,s4
   15e44:	00f13823          	sd	a5,16(sp)
   15e48:	ec4ff06f          	j	1550c <_ldtoa_r+0xec>
   15e4c:	01813783          	ld	a5,24(sp)
   15e50:	fff78a1b          	addw	s4,a5,-1
   15e54:	02a00793          	li	a5,42
   15e58:	0147d463          	bge	a5,s4,15e60 <_ldtoa_r+0xa40>
   15e5c:	02a00a13          	li	s4,42
   15e60:	01413823          	sd	s4,16(sp)
   15e64:	ea8ff06f          	j	1550c <_ldtoa_r+0xec>
   15e68:	10010c93          	add	s9,sp,256
   15e6c:	000c8713          	mv	a4,s9
   15e70:	0c010793          	add	a5,sp,192
   15e74:	0007d683          	lhu	a3,0(a5)
   15e78:	00278793          	add	a5,a5,2
   15e7c:	00270713          	add	a4,a4,2
   15e80:	fed71f23          	sh	a3,-2(a4)
   15e84:	fe8798e3          	bne	a5,s0,15e74 <_ldtoa_r+0xa54>
   15e88:	000047b7          	lui	a5,0x4
   15e8c:	08e78793          	add	a5,a5,142 # 408e <exit-0xc05a>
   15e90:	10f11923          	sh	a5,274(sp)
   15e94:	000227b7          	lui	a5,0x22
   15e98:	28c78793          	add	a5,a5,652 # 2228c <etens+0x104>
   15e9c:	04f13423          	sd	a5,72(sp)
   15ea0:	000087b7          	lui	a5,0x8
   15ea4:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15ea8:	02f13c23          	sd	a5,56(sp)
   15eac:	ffffc7b7          	lui	a5,0xffffc
   15eb0:	0027879b          	addw	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd71ea>
   15eb4:	00022eb7          	lui	t4,0x22
   15eb8:	04f12223          	sw	a5,68(sp)
   15ebc:	000227b7          	lui	a5,0x22
   15ec0:	00000413          	li	s0,0
   15ec4:	01000713          	li	a4,16
   15ec8:	228e8e93          	add	t4,t4,552 # 22228 <etens+0xa0>
   15ecc:	05878793          	add	a5,a5,88 # 22058 <bmask>
   15ed0:	05313c23          	sd	s3,88(sp)
   15ed4:	07213023          	sd	s2,96(sp)
   15ed8:	18010c13          	add	s8,sp,384
   15edc:	00040913          	mv	s2,s0
   15ee0:	1c010b13          	add	s6,sp,448
   15ee4:	12010a13          	add	s4,sp,288
   15ee8:	0f210d93          	add	s11,sp,242
   15eec:	04f13823          	sd	a5,80(sp)
   15ef0:	0f410d13          	add	s10,sp,244
   15ef4:	000e8993          	mv	s3,t4
   15ef8:	00070413          	mv	s0,a4
   15efc:	000b0693          	mv	a3,s6
   15f00:	0e010613          	add	a2,sp,224
   15f04:	000c8593          	mv	a1,s9
   15f08:	00098513          	mv	a0,s3
   15f0c:	a91fe0ef          	jal	1499c <ediv>
   15f10:	08810793          	add	a5,sp,136
   15f14:	0e010713          	add	a4,sp,224
   15f18:	09c10893          	add	a7,sp,156
   15f1c:	00075683          	lhu	a3,0(a4)
   15f20:	00278793          	add	a5,a5,2
   15f24:	00270713          	add	a4,a4,2
   15f28:	fed79f23          	sh	a3,-2(a5)
   15f2c:	ff1798e3          	bne	a5,a7,15f1c <_ldtoa_r+0xafc>
   15f30:	03813783          	ld	a5,56(sp)
   15f34:	09a15503          	lhu	a0,154(sp)
   15f38:	00f575b3          	and	a1,a0,a5
   15f3c:	04412783          	lw	a5,68(sp)
   15f40:	00f587bb          	addw	a5,a1,a5
   15f44:	00078593          	mv	a1,a5
   15f48:	38f05263          	blez	a5,162cc <_ldtoa_r+0xeac>
   15f4c:	09000793          	li	a5,144
   15f50:	40b7863b          	subw	a2,a5,a1
   15f54:	000a0713          	mv	a4,s4
   15f58:	08810793          	add	a5,sp,136
   15f5c:	0007d683          	lhu	a3,0(a5)
   15f60:	00278793          	add	a5,a5,2
   15f64:	00270713          	add	a4,a4,2
   15f68:	fed71f23          	sh	a3,-2(a4)
   15f6c:	ff1798e3          	bne	a5,a7,15f5c <_ldtoa_r+0xb3c>
   15f70:	06c05663          	blez	a2,15fdc <_ldtoa_r+0xbbc>
   15f74:	00f00793          	li	a5,15
   15f78:	000a0713          	mv	a4,s4
   15f7c:	02c7de63          	bge	a5,a2,15fb8 <_ldtoa_r+0xb98>
   15f80:	08000693          	li	a3,128
   15f84:	40b686bb          	subw	a3,a3,a1
   15f88:	0046d69b          	srlw	a3,a3,0x4
   15f8c:	0016871b          	addw	a4,a3,1
   15f90:	00171713          	sll	a4,a4,0x1
   15f94:	00ea0733          	add	a4,s4,a4
   15f98:	000a0793          	mv	a5,s4
   15f9c:	00278793          	add	a5,a5,2
   15fa0:	fe079f23          	sh	zero,-2(a5)
   15fa4:	fee79ce3          	bne	a5,a4,15f9c <_ldtoa_r+0xb7c>
   15fa8:	08000613          	li	a2,128
   15fac:	40b6063b          	subw	a2,a2,a1
   15fb0:	0046969b          	sllw	a3,a3,0x4
   15fb4:	40d6063b          	subw	a2,a2,a3
   15fb8:	05013683          	ld	a3,80(sp)
   15fbc:	00161793          	sll	a5,a2,0x1
   15fc0:	00f687b3          	add	a5,a3,a5
   15fc4:	0007d783          	lhu	a5,0(a5)
   15fc8:	00075683          	lhu	a3,0(a4)
   15fcc:	00f6f7b3          	and	a5,a3,a5
   15fd0:	00f71023          	sh	a5,0(a4)
   15fd4:	00f55513          	srl	a0,a0,0xf
   15fd8:	16051663          	bnez	a0,16144 <_ldtoa_r+0xd24>
   15fdc:	0e010793          	add	a5,sp,224
   15fe0:	000a0713          	mv	a4,s4
   15fe4:	0007d603          	lhu	a2,0(a5)
   15fe8:	00075683          	lhu	a3,0(a4)
   15fec:	02d61863          	bne	a2,a3,1601c <_ldtoa_r+0xbfc>
   15ff0:	00278793          	add	a5,a5,2
   15ff4:	00270713          	add	a4,a4,2
   15ff8:	fefd96e3          	bne	s11,a5,15fe4 <_ldtoa_r+0xbc4>
   15ffc:	000c8713          	mv	a4,s9
   16000:	0e010793          	add	a5,sp,224
   16004:	0007d683          	lhu	a3,0(a5)
   16008:	00278793          	add	a5,a5,2
   1600c:	00270713          	add	a4,a4,2
   16010:	fed71f23          	sh	a3,-2(a4)
   16014:	ffa798e3          	bne	a5,s10,16004 <_ldtoa_r+0xbe4>
   16018:	0124093b          	addw	s2,s0,s2
   1601c:	04813783          	ld	a5,72(sp)
   16020:	01498993          	add	s3,s3,20
   16024:	00145413          	srl	s0,s0,0x1
   16028:	ecf99ae3          	bne	s3,a5,15efc <_ldtoa_r+0xadc>
   1602c:	11215683          	lhu	a3,274(sp)
   16030:	ffffc7b7          	lui	a5,0xffffc
   16034:	f727879b          	addw	a5,a5,-142 # ffffffffffffbf72 <__BSS_END__+0xfffffffffffd715a>
   16038:	00d787bb          	addw	a5,a5,a3
   1603c:	00090413          	mv	s0,s2
   16040:	05813983          	ld	s3,88(sp)
   16044:	06013903          	ld	s2,96(sp)
   16048:	015787bb          	addw	a5,a5,s5
   1604c:	10f11923          	sh	a5,274(sp)
   16050:	0c010693          	add	a3,sp,192
   16054:	000c8793          	mv	a5,s9
   16058:	11410593          	add	a1,sp,276
   1605c:	0007d703          	lhu	a4,0(a5)
   16060:	00278793          	add	a5,a5,2
   16064:	00268693          	add	a3,a3,2
   16068:	fee69f23          	sh	a4,-2(a3)
   1606c:	feb798e3          	bne	a5,a1,1605c <_ldtoa_r+0xc3c>
   16070:	000227b7          	lui	a5,0x22
   16074:	0e010693          	add	a3,sp,224
   16078:	29078793          	add	a5,a5,656 # 22290 <eone>
   1607c:	0007d703          	lhu	a4,0(a5)
   16080:	00278793          	add	a5,a5,2
   16084:	00268693          	add	a3,a3,2
   16088:	fee69f23          	sh	a4,-2(a3)
   1608c:	fe9798e3          	bne	a5,s1,1607c <_ldtoa_r+0xc5c>
   16090:	000224b7          	lui	s1,0x22
   16094:	00001bb7          	lui	s7,0x1
   16098:	18848493          	add	s1,s1,392 # 22188 <etens>
   1609c:	00022d37          	lui	s10,0x22
   160a0:	0140006f          	j	160b4 <_ldtoa_r+0xc94>
   160a4:	278d0793          	add	a5,s10,632 # 22278 <etens+0xf0>
   160a8:	001bdb93          	srl	s7,s7,0x1
   160ac:	24f48e63          	beq	s1,a5,16308 <_ldtoa_r+0xee8>
   160b0:	01448493          	add	s1,s1,20
   160b4:	000c8593          	mv	a1,s9
   160b8:	278d0513          	add	a0,s10,632
   160bc:	818fe0ef          	jal	140d4 <ecmp>
   160c0:	24a04463          	bgtz	a0,16308 <_ldtoa_r+0xee8>
   160c4:	000c8593          	mv	a1,s9
   160c8:	00048513          	mv	a0,s1
   160cc:	808fe0ef          	jal	140d4 <ecmp>
   160d0:	fca04ae3          	bgtz	a0,160a4 <_ldtoa_r+0xc84>
   160d4:	000b0693          	mv	a3,s6
   160d8:	000c8613          	mv	a2,s9
   160dc:	000c8593          	mv	a1,s9
   160e0:	00048513          	mv	a0,s1
   160e4:	8b9fe0ef          	jal	1499c <ediv>
   160e8:	0e010613          	add	a2,sp,224
   160ec:	000b0693          	mv	a3,s6
   160f0:	00060593          	mv	a1,a2
   160f4:	00048513          	mv	a0,s1
   160f8:	e3dfe0ef          	jal	14f34 <emul>
   160fc:	008b843b          	addw	s0,s7,s0
   16100:	fa5ff06f          	j	160a4 <_ldtoa_r+0xc84>
   16104:	18310a93          	add	s5,sp,387
   16108:	00000a13          	li	s4,0
   1610c:	960794e3          	bnez	a5,15a74 <_ldtoa_r+0x654>
   16110:	eccff06f          	j	157dc <_ldtoa_r+0x3bc>
   16114:	000c0793          	mv	a5,s8
   16118:	9d5ff06f          	j	15aec <_ldtoa_r+0x6cc>
   1611c:	01813703          	ld	a4,24(sp)
   16120:	02a00793          	li	a5,42
   16124:	00070a13          	mv	s4,a4
   16128:	00e7d463          	bge	a5,a4,16130 <_ldtoa_r+0xd10>
   1612c:	02a00a13          	li	s4,42
   16130:	000a079b          	sext.w	a5,s4
   16134:	00f13823          	sd	a5,16(sp)
   16138:	865ff06f          	j	1599c <_ldtoa_r+0x57c>
   1613c:	00000693          	li	a3,0
   16140:	829ff06f          	j	15968 <_ldtoa_r+0x548>
   16144:	08810793          	add	a5,sp,136
   16148:	000a0713          	mv	a4,s4
   1614c:	0140006f          	j	16160 <_ldtoa_r+0xd40>
   16150:	00278793          	add	a5,a5,2
   16154:	09a10693          	add	a3,sp,154
   16158:	00270713          	add	a4,a4,2
   1615c:	e8d780e3          	beq	a5,a3,15fdc <_ldtoa_r+0xbbc>
   16160:	0007d603          	lhu	a2,0(a5)
   16164:	00075683          	lhu	a3,0(a4)
   16168:	fed604e3          	beq	a2,a3,16150 <_ldtoa_r+0xd30>
   1616c:	13215783          	lhu	a5,306(sp)
   16170:	fff7c793          	not	a5,a5
   16174:	03179713          	sll	a4,a5,0x31
   16178:	38070c63          	beqz	a4,16510 <_ldtoa_r+0x10f0>
   1617c:	14010593          	add	a1,sp,320
   16180:	290b8513          	add	a0,s7,656 # 1290 <exit-0xee58>
   16184:	e99fd0ef          	jal	1401c <emovi>
   16188:	16010593          	add	a1,sp,352
   1618c:	000a0513          	mv	a0,s4
   16190:	e8dfd0ef          	jal	1401c <emovi>
   16194:	14015783          	lhu	a5,320(sp)
   16198:	16215703          	lhu	a4,354(sp)
   1619c:	14215303          	lhu	t1,322(sp)
   161a0:	fff7c793          	not	a5,a5
   161a4:	14f11023          	sh	a5,320(sp)
   161a8:	40e305b3          	sub	a1,t1,a4
   161ac:	00070693          	mv	a3,a4
   161b0:	06b05e63          	blez	a1,1622c <_ldtoa_r+0xe0c>
   161b4:	16010593          	add	a1,sp,352
   161b8:	000c0693          	mv	a3,s8
   161bc:	17810793          	add	a5,sp,376
   161c0:	000c0513          	mv	a0,s8
   161c4:	00058613          	mv	a2,a1
   161c8:	00063803          	ld	a6,0(a2)
   161cc:	00860613          	add	a2,a2,8
   161d0:	00850513          	add	a0,a0,8
   161d4:	ff053c23          	sd	a6,-8(a0)
   161d8:	fec798e3          	bne	a5,a2,161c8 <_ldtoa_r+0xda8>
   161dc:	14010613          	add	a2,sp,320
   161e0:	18011c23          	sh	zero,408(sp)
   161e4:	15810513          	add	a0,sp,344
   161e8:	00060793          	mv	a5,a2
   161ec:	0007b803          	ld	a6,0(a5)
   161f0:	00878793          	add	a5,a5,8
   161f4:	00858593          	add	a1,a1,8
   161f8:	ff05bc23          	sd	a6,-8(a1)
   161fc:	fea798e3          	bne	a5,a0,161ec <_ldtoa_r+0xdcc>
   16200:	16011c23          	sh	zero,376(sp)
   16204:	018c0793          	add	a5,s8,24
   16208:	0006b583          	ld	a1,0(a3)
   1620c:	00868693          	add	a3,a3,8
   16210:	00860613          	add	a2,a2,8
   16214:	feb63c23          	sd	a1,-8(a2)
   16218:	fef698e3          	bne	a3,a5,16208 <_ldtoa_r+0xde8>
   1621c:	16215683          	lhu	a3,354(sp)
   16220:	406705b3          	sub	a1,a4,t1
   16224:	14011c23          	sh	zero,344(sp)
   16228:	00068713          	mv	a4,a3
   1622c:	30058a63          	beqz	a1,16540 <_ldtoa_r+0x1120>
   16230:	06d13423          	sd	a3,104(sp)
   16234:	f6f00793          	li	a5,-145
   16238:	06f5c863          	blt	a1,a5,162a8 <_ldtoa_r+0xe88>
   1623c:	0005859b          	sext.w	a1,a1
   16240:	14010513          	add	a0,sp,320
   16244:	c15fd0ef          	jal	13e58 <eshift.part.0>
   16248:	06813683          	ld	a3,104(sp)
   1624c:	00050593          	mv	a1,a0
   16250:	17810793          	add	a5,sp,376
   16254:	14015603          	lhu	a2,320(sp)
   16258:	16015703          	lhu	a4,352(sp)
   1625c:	44e60663          	beq	a2,a4,166a8 <_ldtoa_r+0x1288>
   16260:	00000713          	li	a4,0
   16264:	15810313          	add	t1,sp,344
   16268:	16210513          	add	a0,sp,354
   1626c:	0007d603          	lhu	a2,0(a5)
   16270:	00035803          	lhu	a6,0(t1)
   16274:	ffe78793          	add	a5,a5,-2
   16278:	ffe30313          	add	t1,t1,-2
   1627c:	41060633          	sub	a2,a2,a6
   16280:	40e60733          	sub	a4,a2,a4
   16284:	01075613          	srl	a2,a4,0x10
   16288:	00e79123          	sh	a4,2(a5)
   1628c:	00167713          	and	a4,a2,1
   16290:	fca79ee3          	bne	a5,a0,1626c <_ldtoa_r+0xe4c>
   16294:	00100613          	li	a2,1
   16298:	000b0793          	mv	a5,s6
   1629c:	04000713          	li	a4,64
   162a0:	16010513          	add	a0,sp,352
   162a4:	f81fd0ef          	jal	14224 <emdnorm>
   162a8:	000a0593          	mv	a1,s4
   162ac:	16010513          	add	a0,sp,352
   162b0:	981fd0ef          	jal	13c30 <emovo.constprop.0>
   162b4:	d29ff06f          	j	15fdc <_ldtoa_r+0xbbc>
   162b8:	02013783          	ld	a5,32(sp)
   162bc:	18010023          	sb	zero,384(sp)
   162c0:	000c0493          	mv	s1,s8
   162c4:	0007a023          	sw	zero,0(a5)
   162c8:	ad1ff06f          	j	15d98 <_ldtoa_r+0x978>
   162cc:	000a0793          	mv	a5,s4
   162d0:	00278793          	add	a5,a5,2
   162d4:	13410713          	add	a4,sp,308
   162d8:	fe079f23          	sh	zero,-2(a5)
   162dc:	fee79ae3          	bne	a5,a4,162d0 <_ldtoa_r+0xeb0>
   162e0:	cf5ff06f          	j	15fd4 <_ldtoa_r+0xbb4>
   162e4:	18010c13          	add	s8,sp,384
   162e8:	0e098863          	beqz	s3,163d8 <_ldtoa_r+0xfb8>
   162ec:	000225b7          	lui	a1,0x22
   162f0:	fc058593          	add	a1,a1,-64 # 21fc0 <blanks.1+0x48>
   162f4:	000c0513          	mv	a0,s8
   162f8:	5b8020ef          	jal	188b0 <sprintf>
   162fc:	00002437          	lui	s0,0x2
   16300:	70f40413          	add	s0,s0,1807 # 270f <exit-0xd9d9>
   16304:	f84ff06f          	j	15a88 <_ldtoa_r+0x668>
   16308:	13810d93          	add	s11,sp,312
   1630c:	a9cff06f          	j	155a8 <_ldtoa_r+0x188>
   16310:	0016869b          	addw	a3,a3,1
   16314:	00d58023          	sb	a3,0(a1)
   16318:	f5cff06f          	j	15a74 <_ldtoa_r+0x654>
   1631c:	fff5c783          	lbu	a5,-1(a1)
   16320:	03800693          	li	a3,56
   16324:	0cf6f463          	bgeu	a3,a5,163ec <_ldtoa_r+0xfcc>
   16328:	03100793          	li	a5,49
   1632c:	0014041b          	addw	s0,s0,1
   16330:	fef58fa3          	sb	a5,-1(a1)
   16334:	f40ff06f          	j	15a74 <_ldtoa_r+0x654>
   16338:	0a010793          	add	a5,sp,160
   1633c:	0b210613          	add	a2,sp,178
   16340:	0080006f          	j	16348 <_ldtoa_r+0xf28>
   16344:	f6c78063          	beq	a5,a2,15aa4 <_ldtoa_r+0x684>
   16348:	0007d703          	lhu	a4,0(a5)
   1634c:	00278793          	add	a5,a5,2
   16350:	fe070ae3          	beqz	a4,16344 <_ldtoa_r+0xf24>
   16354:	02013703          	ld	a4,32(sp)
   16358:	000027b7          	lui	a5,0x2
   1635c:	70f78793          	add	a5,a5,1807 # 270f <exit-0xd9d9>
   16360:	00f72023          	sw	a5,0(a4)
   16364:	f8cff06f          	j	15af0 <_ldtoa_r+0x6d0>
   16368:	18010c13          	add	s8,sp,384
   1636c:	000225b7          	lui	a1,0x22
   16370:	fe058593          	add	a1,a1,-32 # 21fe0 <blanks.1+0x68>
   16374:	000c0513          	mv	a0,s8
   16378:	538020ef          	jal	188b0 <sprintf>
   1637c:	f81ff06f          	j	162fc <_ldtoa_r+0xedc>
   16380:	0e010593          	add	a1,sp,224
   16384:	0c010513          	add	a0,sp,192
   16388:	02f13c23          	sd	a5,56(sp)
   1638c:	8a5fd0ef          	jal	13c30 <emovo.constprop.0>
   16390:	000225b7          	lui	a1,0x22
   16394:	2a858593          	add	a1,a1,680 # 222a8 <ezero>
   16398:	0e010513          	add	a0,sp,224
   1639c:	d39fd0ef          	jal	140d4 <ecmp>
   163a0:	03813783          	ld	a5,56(sp)
   163a4:	e8051663          	bnez	a0,15a30 <_ldtoa_r+0x610>
   163a8:	ec0a4663          	bltz	s4,15a74 <_ldtoa_r+0x654>
   163ac:	ffe7c683          	lbu	a3,-2(a5)
   163b0:	ffe78593          	add	a1,a5,-2
   163b4:	fd268613          	add	a2,a3,-46
   163b8:	00163613          	seqz	a2,a2
   163bc:	fff64613          	not	a2,a2
   163c0:	00ca8633          	add	a2,s5,a2
   163c4:	00064603          	lbu	a2,0(a2)
   163c8:	07f6f693          	and	a3,a3,127
   163cc:	00167613          	and	a2,a2,1
   163d0:	e6061863          	bnez	a2,15a40 <_ldtoa_r+0x620>
   163d4:	ea0ff06f          	j	15a74 <_ldtoa_r+0x654>
   163d8:	000225b7          	lui	a1,0x22
   163dc:	fd058593          	add	a1,a1,-48 # 21fd0 <blanks.1+0x58>
   163e0:	000c0513          	mv	a0,s8
   163e4:	4cc020ef          	jal	188b0 <sprintf>
   163e8:	f15ff06f          	j	162fc <_ldtoa_r+0xedc>
   163ec:	0017879b          	addw	a5,a5,1
   163f0:	fef58fa3          	sb	a5,-1(a1)
   163f4:	e80ff06f          	j	15a74 <_ldtoa_r+0x654>
   163f8:	12010a13          	add	s4,sp,288
   163fc:	000a0593          	mv	a1,s4
   16400:	0c010513          	add	a0,sp,192
   16404:	00004d37          	lui	s10,0x4
   16408:	c15fd0ef          	jal	1401c <emovi>
   1640c:	00000413          	li	s0,0
   16410:	13810d93          	add	s11,sp,312
   16414:	12210b13          	add	s6,sp,290
   16418:	ffed0d13          	add	s10,s10,-2 # 3ffe <exit-0xc0ea>
   1641c:	11810c93          	add	s9,sp,280
   16420:	13815783          	lhu	a5,312(sp)
   16424:	0077f793          	and	a5,a5,7
   16428:	0c079a63          	bnez	a5,164fc <_ldtoa_r+0x10dc>
   1642c:	10010a93          	add	s5,sp,256
   16430:	000a0c13          	mv	s8,s4
   16434:	000a8713          	mv	a4,s5
   16438:	000a0793          	mv	a5,s4
   1643c:	0007b683          	ld	a3,0(a5)
   16440:	00878793          	add	a5,a5,8
   16444:	00870713          	add	a4,a4,8
   16448:	fed73c23          	sd	a3,-8(a4)
   1644c:	ffb798e3          	bne	a5,s11,1643c <_ldtoa_r+0x101c>
   16450:	10010513          	add	a0,sp,256
   16454:	10011c23          	sh	zero,280(sp)
   16458:	e64fd0ef          	jal	13abc <eshdn1>
   1645c:	10010513          	add	a0,sp,256
   16460:	e5cfd0ef          	jal	13abc <eshdn1>
   16464:	00000613          	li	a2,0
   16468:	11810693          	add	a3,sp,280
   1646c:	000d8713          	mv	a4,s11
   16470:	0006d583          	lhu	a1,0(a3)
   16474:	00075783          	lhu	a5,0(a4)
   16478:	ffe68693          	add	a3,a3,-2
   1647c:	ffe70713          	add	a4,a4,-2
   16480:	00b787b3          	add	a5,a5,a1
   16484:	00c787b3          	add	a5,a5,a2
   16488:	0107d613          	srl	a2,a5,0x10
   1648c:	00f69123          	sh	a5,2(a3)
   16490:	00167613          	and	a2,a2,1
   16494:	fd671ee3          	bne	a4,s6,16470 <_ldtoa_r+0x1050>
   16498:	10215783          	lhu	a5,258(sp)
   1649c:	10415703          	lhu	a4,260(sp)
   164a0:	0037879b          	addw	a5,a5,3
   164a4:	10f11123          	sh	a5,258(sp)
   164a8:	02070063          	beqz	a4,164c8 <_ldtoa_r+0x10a8>
   164ac:	10010513          	add	a0,sp,256
   164b0:	e0cfd0ef          	jal	13abc <eshdn1>
   164b4:	10215783          	lhu	a5,258(sp)
   164b8:	10415703          	lhu	a4,260(sp)
   164bc:	0017879b          	addw	a5,a5,1
   164c0:	10f11123          	sh	a5,258(sp)
   164c4:	fe0714e3          	bnez	a4,164ac <_ldtoa_r+0x108c>
   164c8:	11815783          	lhu	a5,280(sp)
   164cc:	02079863          	bnez	a5,164fc <_ldtoa_r+0x10dc>
   164d0:	10215783          	lhu	a5,258(sp)
   164d4:	02fd6463          	bltu	s10,a5,164fc <_ldtoa_r+0x10dc>
   164d8:	000ab783          	ld	a5,0(s5)
   164dc:	008a8a93          	add	s5,s5,8
   164e0:	008c0c13          	add	s8,s8,8
   164e4:	fefc3c23          	sd	a5,-8(s8)
   164e8:	ff9a98e3          	bne	s5,s9,164d8 <_ldtoa_r+0x10b8>
   164ec:	12011c23          	sh	zero,312(sp)
   164f0:	fff4041b          	addw	s0,s0,-1
   164f4:	fd500793          	li	a5,-43
   164f8:	f2f414e3          	bne	s0,a5,16420 <_ldtoa_r+0x1000>
   164fc:	0c010593          	add	a1,sp,192
   16500:	000a0513          	mv	a0,s4
   16504:	f2cfd0ef          	jal	13c30 <emovo.constprop.0>
   16508:	1c010b13          	add	s6,sp,448
   1650c:	f8cff06f          	j	15c98 <_ldtoa_r+0x878>
   16510:	000a0793          	mv	a5,s4
   16514:	13210713          	add	a4,sp,306
   16518:	0007d683          	lhu	a3,0(a5)
   1651c:	00278793          	add	a5,a5,2
   16520:	aa069ee3          	bnez	a3,15fdc <_ldtoa_r+0xbbc>
   16524:	fee79ae3          	bne	a5,a4,16518 <_ldtoa_r+0x10f8>
   16528:	000a0793          	mv	a5,s4
   1652c:	0007d683          	lhu	a3,0(a5)
   16530:	00278793          	add	a5,a5,2
   16534:	c40694e3          	bnez	a3,1617c <_ldtoa_r+0xd5c>
   16538:	fee79ae3          	bne	a5,a4,1652c <_ldtoa_r+0x110c>
   1653c:	aa1ff06f          	j	15fdc <_ldtoa_r+0xbbc>
   16540:	16410613          	add	a2,sp,356
   16544:	14410793          	add	a5,sp,324
   16548:	15a10313          	add	t1,sp,346
   1654c:	0007d503          	lhu	a0,0(a5)
   16550:	00065583          	lhu	a1,0(a2)
   16554:	00278793          	add	a5,a5,2
   16558:	00260613          	add	a2,a2,2
   1655c:	04b51663          	bne	a0,a1,165a8 <_ldtoa_r+0x1188>
   16560:	fe6796e3          	bne	a5,t1,1654c <_ldtoa_r+0x112c>
   16564:	14015603          	lhu	a2,320(sp)
   16568:	16015783          	lhu	a5,352(sp)
   1656c:	0af60a63          	beq	a2,a5,16620 <_ldtoa_r+0x1200>
   16570:	000a0793          	mv	a5,s4
   16574:	13410713          	add	a4,sp,308
   16578:	00278793          	add	a5,a5,2
   1657c:	fe079f23          	sh	zero,-2(a5)
   16580:	fee79ce3          	bne	a5,a4,16578 <_ldtoa_r+0x1158>
   16584:	a59ff06f          	j	15fdc <_ldtoa_r+0xbbc>
   16588:	000226b7          	lui	a3,0x22
   1658c:	000015b7          	lui	a1,0x1
   16590:	00022537          	lui	a0,0x22
   16594:	ff068693          	add	a3,a3,-16 # 21ff0 <blanks.1+0x78>
   16598:	00000613          	li	a2,0
   1659c:	b6e58593          	add	a1,a1,-1170 # b6e <exit-0xf57a>
   165a0:	00850513          	add	a0,a0,8 # 22008 <blanks.1+0x90>
   165a4:	3a4060ef          	jal	1c948 <__assert_func>
   165a8:	17810793          	add	a5,sp,376
   165ac:	06a5f663          	bgeu	a1,a0,16618 <_ldtoa_r+0x11f8>
   165b0:	16010713          	add	a4,sp,352
   165b4:	000c0593          	mv	a1,s8
   165b8:	17810793          	add	a5,sp,376
   165bc:	000c0513          	mv	a0,s8
   165c0:	00070613          	mv	a2,a4
   165c4:	00063803          	ld	a6,0(a2)
   165c8:	00860613          	add	a2,a2,8
   165cc:	00850513          	add	a0,a0,8
   165d0:	ff053c23          	sd	a6,-8(a0)
   165d4:	fec798e3          	bne	a5,a2,165c4 <_ldtoa_r+0x11a4>
   165d8:	14010613          	add	a2,sp,320
   165dc:	18011c23          	sh	zero,408(sp)
   165e0:	00060513          	mv	a0,a2
   165e4:	00053803          	ld	a6,0(a0)
   165e8:	00870713          	add	a4,a4,8
   165ec:	00850513          	add	a0,a0,8
   165f0:	ff073c23          	sd	a6,-8(a4)
   165f4:	fee798e3          	bne	a5,a4,165e4 <_ldtoa_r+0x11c4>
   165f8:	16011c23          	sh	zero,376(sp)
   165fc:	15810713          	add	a4,sp,344
   16600:	0005b503          	ld	a0,0(a1)
   16604:	00860613          	add	a2,a2,8
   16608:	00858593          	add	a1,a1,8
   1660c:	fea63c23          	sd	a0,-8(a2)
   16610:	fec718e3          	bne	a4,a2,16600 <_ldtoa_r+0x11e0>
   16614:	14011c23          	sh	zero,344(sp)
   16618:	00000593          	li	a1,0
   1661c:	c39ff06f          	j	16254 <_ldtoa_r+0xe34>
   16620:	00068793          	mv	a5,a3
   16624:	00069663          	bnez	a3,16630 <_ldtoa_r+0x1210>
   16628:	16611603          	lh	a2,358(sp)
   1662c:	02065263          	bgez	a2,16650 <_ldtoa_r+0x1230>
   16630:	16210613          	add	a2,sp,354
   16634:	17810793          	add	a5,sp,376
   16638:	00065583          	lhu	a1,0(a2)
   1663c:	06059063          	bnez	a1,1669c <_ldtoa_r+0x127c>
   16640:	00260613          	add	a2,a2,2
   16644:	fec79ae3          	bne	a5,a2,16638 <_ldtoa_r+0x1218>
   16648:	16e11123          	sh	a4,354(sp)
   1664c:	c5dff06f          	j	162a8 <_ldtoa_r+0xe88>
   16650:	17810693          	add	a3,sp,376
   16654:	16210513          	add	a0,sp,354
   16658:	0006d703          	lhu	a4,0(a3)
   1665c:	00f75613          	srl	a2,a4,0xf
   16660:	00060463          	beqz	a2,16668 <_ldtoa_r+0x1248>
   16664:	0017e793          	or	a5,a5,1
   16668:	0017171b          	sllw	a4,a4,0x1
   1666c:	03071713          	sll	a4,a4,0x30
   16670:	0027f613          	and	a2,a5,2
   16674:	03075713          	srl	a4,a4,0x30
   16678:	00060463          	beqz	a2,16680 <_ldtoa_r+0x1260>
   1667c:	00176713          	or	a4,a4,1
   16680:	0017979b          	sllw	a5,a5,0x1
   16684:	00e69023          	sh	a4,0(a3)
   16688:	03079793          	sll	a5,a5,0x30
   1668c:	ffe68693          	add	a3,a3,-2
   16690:	0307d793          	srl	a5,a5,0x30
   16694:	fca692e3          	bne	a3,a0,16658 <_ldtoa_r+0x1238>
   16698:	c11ff06f          	j	162a8 <_ldtoa_r+0xe88>
   1669c:	00168713          	add	a4,a3,1
   166a0:	16e11123          	sh	a4,354(sp)
   166a4:	c05ff06f          	j	162a8 <_ldtoa_r+0xe88>
   166a8:	00000713          	li	a4,0
   166ac:	15810513          	add	a0,sp,344
   166b0:	14210313          	add	t1,sp,322
   166b4:	0007d803          	lhu	a6,0(a5)
   166b8:	00055603          	lhu	a2,0(a0)
   166bc:	ffe78793          	add	a5,a5,-2
   166c0:	ffe50513          	add	a0,a0,-2
   166c4:	01060633          	add	a2,a2,a6
   166c8:	00e60733          	add	a4,a2,a4
   166cc:	01075613          	srl	a2,a4,0x10
   166d0:	00e79123          	sh	a4,2(a5)
   166d4:	00167713          	and	a4,a2,1
   166d8:	fc651ee3          	bne	a0,t1,166b4 <_ldtoa_r+0x1294>
   166dc:	00000613          	li	a2,0
   166e0:	bb9ff06f          	j	16298 <_ldtoa_r+0xe78>

00000000000166e4 <_ldcheck>:
   166e4:	00053703          	ld	a4,0(a0)
   166e8:	00853783          	ld	a5,8(a0)
   166ec:	fc010113          	add	sp,sp,-64
   166f0:	00010513          	mv	a0,sp
   166f4:	01010593          	add	a1,sp,16
   166f8:	00e13023          	sd	a4,0(sp)
   166fc:	00f13423          	sd	a5,8(sp)
   16700:	02113c23          	sd	ra,56(sp)
   16704:	940fe0ef          	jal	14844 <e113toe.isra.0>
   16708:	02215783          	lhu	a5,34(sp)
   1670c:	00000513          	li	a0,0
   16710:	fff7c793          	not	a5,a5
   16714:	03179713          	sll	a4,a5,0x31
   16718:	02071063          	bnez	a4,16738 <_ldcheck+0x54>
   1671c:	01010793          	add	a5,sp,16
   16720:	02210693          	add	a3,sp,34
   16724:	0007d703          	lhu	a4,0(a5)
   16728:	00278793          	add	a5,a5,2
   1672c:	00071c63          	bnez	a4,16744 <_ldcheck+0x60>
   16730:	fed79ae3          	bne	a5,a3,16724 <_ldcheck+0x40>
   16734:	00200513          	li	a0,2
   16738:	03813083          	ld	ra,56(sp)
   1673c:	04010113          	add	sp,sp,64
   16740:	00008067          	ret
   16744:	00100513          	li	a0,1
   16748:	ff1ff06f          	j	16738 <_ldcheck+0x54>

000000000001674c <__localeconv_l>:
   1674c:	10050513          	add	a0,a0,256
   16750:	00008067          	ret

0000000000016754 <_localeconv_r>:
   16754:	e6018513          	add	a0,gp,-416 # 24478 <__global_locale+0x100>
   16758:	00008067          	ret

000000000001675c <localeconv>:
   1675c:	e6018513          	add	a0,gp,-416 # 24478 <__global_locale+0x100>
   16760:	00008067          	ret

0000000000016764 <_setlocale_r>:
   16764:	fe010113          	add	sp,sp,-32
   16768:	00113c23          	sd	ra,24(sp)
   1676c:	00813823          	sd	s0,16(sp)
   16770:	00913423          	sd	s1,8(sp)
   16774:	02060c63          	beqz	a2,167ac <_setlocale_r+0x48>
   16778:	000225b7          	lui	a1,0x22
   1677c:	2c858593          	add	a1,a1,712 # 222c8 <ezero+0x20>
   16780:	00060513          	mv	a0,a2
   16784:	00060413          	mv	s0,a2
   16788:	30c020ef          	jal	18a94 <strcmp>
   1678c:	000224b7          	lui	s1,0x22
   16790:	02051263          	bnez	a0,167b4 <_setlocale_r+0x50>
   16794:	2c048513          	add	a0,s1,704 # 222c0 <ezero+0x18>
   16798:	01813083          	ld	ra,24(sp)
   1679c:	01013403          	ld	s0,16(sp)
   167a0:	00813483          	ld	s1,8(sp)
   167a4:	02010113          	add	sp,sp,32
   167a8:	00008067          	ret
   167ac:	000224b7          	lui	s1,0x22
   167b0:	fe5ff06f          	j	16794 <_setlocale_r+0x30>
   167b4:	2c048593          	add	a1,s1,704 # 222c0 <ezero+0x18>
   167b8:	00040513          	mv	a0,s0
   167bc:	2d8020ef          	jal	18a94 <strcmp>
   167c0:	fc050ae3          	beqz	a0,16794 <_setlocale_r+0x30>
   167c4:	000225b7          	lui	a1,0x22
   167c8:	d3858593          	add	a1,a1,-712 # 21d38 <__clzdi2+0xac>
   167cc:	00040513          	mv	a0,s0
   167d0:	2c4020ef          	jal	18a94 <strcmp>
   167d4:	fc0500e3          	beqz	a0,16794 <_setlocale_r+0x30>
   167d8:	00000513          	li	a0,0
   167dc:	fbdff06f          	j	16798 <_setlocale_r+0x34>

00000000000167e0 <__locale_mb_cur_max>:
   167e0:	ec01c503          	lbu	a0,-320(gp) # 244d8 <__global_locale+0x160>
   167e4:	00008067          	ret

00000000000167e8 <setlocale>:
   167e8:	fe010113          	add	sp,sp,-32
   167ec:	00113c23          	sd	ra,24(sp)
   167f0:	00813823          	sd	s0,16(sp)
   167f4:	00913423          	sd	s1,8(sp)
   167f8:	02058c63          	beqz	a1,16830 <setlocale+0x48>
   167fc:	00058413          	mv	s0,a1
   16800:	000225b7          	lui	a1,0x22
   16804:	2c858593          	add	a1,a1,712 # 222c8 <ezero+0x20>
   16808:	00040513          	mv	a0,s0
   1680c:	288020ef          	jal	18a94 <strcmp>
   16810:	000224b7          	lui	s1,0x22
   16814:	02051263          	bnez	a0,16838 <setlocale+0x50>
   16818:	2c048513          	add	a0,s1,704 # 222c0 <ezero+0x18>
   1681c:	01813083          	ld	ra,24(sp)
   16820:	01013403          	ld	s0,16(sp)
   16824:	00813483          	ld	s1,8(sp)
   16828:	02010113          	add	sp,sp,32
   1682c:	00008067          	ret
   16830:	000224b7          	lui	s1,0x22
   16834:	fe5ff06f          	j	16818 <setlocale+0x30>
   16838:	2c048593          	add	a1,s1,704 # 222c0 <ezero+0x18>
   1683c:	00040513          	mv	a0,s0
   16840:	254020ef          	jal	18a94 <strcmp>
   16844:	fc050ae3          	beqz	a0,16818 <setlocale+0x30>
   16848:	000225b7          	lui	a1,0x22
   1684c:	d3858593          	add	a1,a1,-712 # 21d38 <__clzdi2+0xac>
   16850:	00040513          	mv	a0,s0
   16854:	240020ef          	jal	18a94 <strcmp>
   16858:	fc0500e3          	beqz	a0,16818 <setlocale+0x30>
   1685c:	00000513          	li	a0,0
   16860:	fbdff06f          	j	1681c <setlocale+0x34>

0000000000016864 <__smakebuf_r>:
   16864:	01059783          	lh	a5,16(a1)
   16868:	f6010113          	add	sp,sp,-160
   1686c:	08813823          	sd	s0,144(sp)
   16870:	08113c23          	sd	ra,152(sp)
   16874:	08913423          	sd	s1,136(sp)
   16878:	09213023          	sd	s2,128(sp)
   1687c:	07313c23          	sd	s3,120(sp)
   16880:	07413823          	sd	s4,112(sp)
   16884:	0027f713          	and	a4,a5,2
   16888:	00058413          	mv	s0,a1
   1688c:	02070c63          	beqz	a4,168c4 <__smakebuf_r+0x60>
   16890:	07758793          	add	a5,a1,119
   16894:	00f5b023          	sd	a5,0(a1)
   16898:	00f5bc23          	sd	a5,24(a1)
   1689c:	00100793          	li	a5,1
   168a0:	02f5a023          	sw	a5,32(a1)
   168a4:	09813083          	ld	ra,152(sp)
   168a8:	09013403          	ld	s0,144(sp)
   168ac:	08813483          	ld	s1,136(sp)
   168b0:	08013903          	ld	s2,128(sp)
   168b4:	07813983          	ld	s3,120(sp)
   168b8:	07013a03          	ld	s4,112(sp)
   168bc:	0a010113          	add	sp,sp,160
   168c0:	00008067          	ret
   168c4:	01259583          	lh	a1,18(a1)
   168c8:	00050493          	mv	s1,a0
   168cc:	0805cc63          	bltz	a1,16964 <__smakebuf_r+0x100>
   168d0:	00810613          	add	a2,sp,8
   168d4:	650060ef          	jal	1cf24 <_fstat_r>
   168d8:	08054463          	bltz	a0,16960 <__smakebuf_r+0xfc>
   168dc:	00c12903          	lw	s2,12(sp)
   168e0:	0000f7b7          	lui	a5,0xf
   168e4:	000019b7          	lui	s3,0x1
   168e8:	00f97933          	and	s2,s2,a5
   168ec:	000027b7          	lui	a5,0x2
   168f0:	40f90933          	sub	s2,s2,a5
   168f4:	00193913          	seqz	s2,s2
   168f8:	40000a13          	li	s4,1024
   168fc:	80098993          	add	s3,s3,-2048 # 800 <exit-0xf8e8>
   16900:	000a0593          	mv	a1,s4
   16904:	00048513          	mv	a0,s1
   16908:	1c4000ef          	jal	16acc <_malloc_r>
   1690c:	01041783          	lh	a5,16(s0)
   16910:	06050e63          	beqz	a0,1698c <__smakebuf_r+0x128>
   16914:	00013737          	lui	a4,0x13
   16918:	0ec70713          	add	a4,a4,236 # 130ec <_cleanup_r>
   1691c:	04e4bc23          	sd	a4,88(s1)
   16920:	0807e793          	or	a5,a5,128
   16924:	00f41823          	sh	a5,16(s0)
   16928:	00a43023          	sd	a0,0(s0)
   1692c:	00a43c23          	sd	a0,24(s0)
   16930:	03442023          	sw	s4,32(s0)
   16934:	08091863          	bnez	s2,169c4 <__smakebuf_r+0x160>
   16938:	0137e7b3          	or	a5,a5,s3
   1693c:	09813083          	ld	ra,152(sp)
   16940:	00f41823          	sh	a5,16(s0)
   16944:	09013403          	ld	s0,144(sp)
   16948:	08813483          	ld	s1,136(sp)
   1694c:	08013903          	ld	s2,128(sp)
   16950:	07813983          	ld	s3,120(sp)
   16954:	07013a03          	ld	s4,112(sp)
   16958:	0a010113          	add	sp,sp,160
   1695c:	00008067          	ret
   16960:	01041783          	lh	a5,16(s0)
   16964:	0807f793          	and	a5,a5,128
   16968:	00000913          	li	s2,0
   1696c:	04078663          	beqz	a5,169b8 <__smakebuf_r+0x154>
   16970:	04000a13          	li	s4,64
   16974:	000a0593          	mv	a1,s4
   16978:	00048513          	mv	a0,s1
   1697c:	150000ef          	jal	16acc <_malloc_r>
   16980:	01041783          	lh	a5,16(s0)
   16984:	00000993          	li	s3,0
   16988:	f80516e3          	bnez	a0,16914 <__smakebuf_r+0xb0>
   1698c:	2007f713          	and	a4,a5,512
   16990:	f0071ae3          	bnez	a4,168a4 <__smakebuf_r+0x40>
   16994:	ffc7f793          	and	a5,a5,-4
   16998:	0027e793          	or	a5,a5,2
   1699c:	07740713          	add	a4,s0,119
   169a0:	00f41823          	sh	a5,16(s0)
   169a4:	00100793          	li	a5,1
   169a8:	00e43023          	sd	a4,0(s0)
   169ac:	00e43c23          	sd	a4,24(s0)
   169b0:	02f42023          	sw	a5,32(s0)
   169b4:	ef1ff06f          	j	168a4 <__smakebuf_r+0x40>
   169b8:	40000a13          	li	s4,1024
   169bc:	00000993          	li	s3,0
   169c0:	f41ff06f          	j	16900 <__smakebuf_r+0x9c>
   169c4:	01241583          	lh	a1,18(s0)
   169c8:	00048513          	mv	a0,s1
   169cc:	269060ef          	jal	1d434 <_isatty_r>
   169d0:	00051663          	bnez	a0,169dc <__smakebuf_r+0x178>
   169d4:	01041783          	lh	a5,16(s0)
   169d8:	f61ff06f          	j	16938 <__smakebuf_r+0xd4>
   169dc:	01045783          	lhu	a5,16(s0)
   169e0:	ffc7f793          	and	a5,a5,-4
   169e4:	0017e793          	or	a5,a5,1
   169e8:	0107979b          	sllw	a5,a5,0x10
   169ec:	4107d79b          	sraw	a5,a5,0x10
   169f0:	f49ff06f          	j	16938 <__smakebuf_r+0xd4>

00000000000169f4 <__swhatbuf_r>:
   169f4:	f7010113          	add	sp,sp,-144
   169f8:	08813023          	sd	s0,128(sp)
   169fc:	00058413          	mv	s0,a1
   16a00:	01259583          	lh	a1,18(a1)
   16a04:	06913c23          	sd	s1,120(sp)
   16a08:	07213823          	sd	s2,112(sp)
   16a0c:	08113423          	sd	ra,136(sp)
   16a10:	00060493          	mv	s1,a2
   16a14:	00068913          	mv	s2,a3
   16a18:	0405ca63          	bltz	a1,16a6c <__swhatbuf_r+0x78>
   16a1c:	00810613          	add	a2,sp,8
   16a20:	504060ef          	jal	1cf24 <_fstat_r>
   16a24:	04054463          	bltz	a0,16a6c <__swhatbuf_r+0x78>
   16a28:	00c12783          	lw	a5,12(sp)
   16a2c:	0000f737          	lui	a4,0xf
   16a30:	08813083          	ld	ra,136(sp)
   16a34:	00e7f7b3          	and	a5,a5,a4
   16a38:	00002737          	lui	a4,0x2
   16a3c:	40e787b3          	sub	a5,a5,a4
   16a40:	08013403          	ld	s0,128(sp)
   16a44:	0017b793          	seqz	a5,a5
   16a48:	00f92023          	sw	a5,0(s2)
   16a4c:	40000713          	li	a4,1024
   16a50:	00e4b023          	sd	a4,0(s1)
   16a54:	00001537          	lui	a0,0x1
   16a58:	07813483          	ld	s1,120(sp)
   16a5c:	07013903          	ld	s2,112(sp)
   16a60:	80050513          	add	a0,a0,-2048 # 800 <exit-0xf8e8>
   16a64:	09010113          	add	sp,sp,144
   16a68:	00008067          	ret
   16a6c:	01045783          	lhu	a5,16(s0)
   16a70:	0807f793          	and	a5,a5,128
   16a74:	02078863          	beqz	a5,16aa4 <__swhatbuf_r+0xb0>
   16a78:	08813083          	ld	ra,136(sp)
   16a7c:	08013403          	ld	s0,128(sp)
   16a80:	00000793          	li	a5,0
   16a84:	00f92023          	sw	a5,0(s2)
   16a88:	04000713          	li	a4,64
   16a8c:	00e4b023          	sd	a4,0(s1)
   16a90:	07013903          	ld	s2,112(sp)
   16a94:	07813483          	ld	s1,120(sp)
   16a98:	00000513          	li	a0,0
   16a9c:	09010113          	add	sp,sp,144
   16aa0:	00008067          	ret
   16aa4:	08813083          	ld	ra,136(sp)
   16aa8:	08013403          	ld	s0,128(sp)
   16aac:	00f92023          	sw	a5,0(s2)
   16ab0:	40000713          	li	a4,1024
   16ab4:	00e4b023          	sd	a4,0(s1)
   16ab8:	07013903          	ld	s2,112(sp)
   16abc:	07813483          	ld	s1,120(sp)
   16ac0:	00000513          	li	a0,0
   16ac4:	09010113          	add	sp,sp,144
   16ac8:	00008067          	ret

0000000000016acc <_malloc_r>:
   16acc:	fa010113          	add	sp,sp,-96
   16ad0:	04913423          	sd	s1,72(sp)
   16ad4:	05213023          	sd	s2,64(sp)
   16ad8:	04113c23          	sd	ra,88(sp)
   16adc:	04813823          	sd	s0,80(sp)
   16ae0:	03313c23          	sd	s3,56(sp)
   16ae4:	03413823          	sd	s4,48(sp)
   16ae8:	03513423          	sd	s5,40(sp)
   16aec:	03613023          	sd	s6,32(sp)
   16af0:	01713c23          	sd	s7,24(sp)
   16af4:	01813823          	sd	s8,16(sp)
   16af8:	01913423          	sd	s9,8(sp)
   16afc:	01758493          	add	s1,a1,23
   16b00:	02e00793          	li	a5,46
   16b04:	00050913          	mv	s2,a0
   16b08:	0897ee63          	bltu	a5,s1,16ba4 <_malloc_r+0xd8>
   16b0c:	02000793          	li	a5,32
   16b10:	24b7e063          	bltu	a5,a1,16d50 <_malloc_r+0x284>
   16b14:	0c9000ef          	jal	173dc <__malloc_lock>
   16b18:	02000493          	li	s1,32
   16b1c:	05000793          	li	a5,80
   16b20:	00400613          	li	a2,4
   16b24:	000249b7          	lui	s3,0x24
   16b28:	52098993          	add	s3,s3,1312 # 24520 <__malloc_av_>
   16b2c:	00f987b3          	add	a5,s3,a5
   16b30:	0087b403          	ld	s0,8(a5) # 2008 <exit-0xe0e0>
   16b34:	ff078713          	add	a4,a5,-16
   16b38:	32e40663          	beq	s0,a4,16e64 <_malloc_r+0x398>
   16b3c:	00843783          	ld	a5,8(s0)
   16b40:	01843683          	ld	a3,24(s0)
   16b44:	01043603          	ld	a2,16(s0)
   16b48:	ffc7f793          	and	a5,a5,-4
   16b4c:	00f407b3          	add	a5,s0,a5
   16b50:	0087b703          	ld	a4,8(a5)
   16b54:	00d63c23          	sd	a3,24(a2)
   16b58:	00c6b823          	sd	a2,16(a3)
   16b5c:	00176713          	or	a4,a4,1
   16b60:	00090513          	mv	a0,s2
   16b64:	00e7b423          	sd	a4,8(a5)
   16b68:	079000ef          	jal	173e0 <__malloc_unlock>
   16b6c:	01040513          	add	a0,s0,16
   16b70:	05813083          	ld	ra,88(sp)
   16b74:	05013403          	ld	s0,80(sp)
   16b78:	04813483          	ld	s1,72(sp)
   16b7c:	04013903          	ld	s2,64(sp)
   16b80:	03813983          	ld	s3,56(sp)
   16b84:	03013a03          	ld	s4,48(sp)
   16b88:	02813a83          	ld	s5,40(sp)
   16b8c:	02013b03          	ld	s6,32(sp)
   16b90:	01813b83          	ld	s7,24(sp)
   16b94:	01013c03          	ld	s8,16(sp)
   16b98:	00813c83          	ld	s9,8(sp)
   16b9c:	06010113          	add	sp,sp,96
   16ba0:	00008067          	ret
   16ba4:	800007b7          	lui	a5,0x80000
   16ba8:	ff04f493          	and	s1,s1,-16
   16bac:	fff7c793          	not	a5,a5
   16bb0:	1a97e063          	bltu	a5,s1,16d50 <_malloc_r+0x284>
   16bb4:	18b4ee63          	bltu	s1,a1,16d50 <_malloc_r+0x284>
   16bb8:	025000ef          	jal	173dc <__malloc_lock>
   16bbc:	1f700793          	li	a5,503
   16bc0:	3e97fe63          	bgeu	a5,s1,16fbc <_malloc_r+0x4f0>
   16bc4:	0094d793          	srl	a5,s1,0x9
   16bc8:	18078c63          	beqz	a5,16d60 <_malloc_r+0x294>
   16bcc:	00400713          	li	a4,4
   16bd0:	30f76463          	bltu	a4,a5,16ed8 <_malloc_r+0x40c>
   16bd4:	0064d793          	srl	a5,s1,0x6
   16bd8:	0397861b          	addw	a2,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffdb221>
   16bdc:	0016169b          	sllw	a3,a2,0x1
   16be0:	0387851b          	addw	a0,a5,56
   16be4:	00369693          	sll	a3,a3,0x3
   16be8:	000249b7          	lui	s3,0x24
   16bec:	52098993          	add	s3,s3,1312 # 24520 <__malloc_av_>
   16bf0:	00d986b3          	add	a3,s3,a3
   16bf4:	0086b403          	ld	s0,8(a3)
   16bf8:	ff068693          	add	a3,a3,-16
   16bfc:	02868663          	beq	a3,s0,16c28 <_malloc_r+0x15c>
   16c00:	01f00593          	li	a1,31
   16c04:	0100006f          	j	16c14 <_malloc_r+0x148>
   16c08:	24075863          	bgez	a4,16e58 <_malloc_r+0x38c>
   16c0c:	01843403          	ld	s0,24(s0)
   16c10:	00868c63          	beq	a3,s0,16c28 <_malloc_r+0x15c>
   16c14:	00843783          	ld	a5,8(s0)
   16c18:	ffc7f793          	and	a5,a5,-4
   16c1c:	40978733          	sub	a4,a5,s1
   16c20:	fee5d4e3          	bge	a1,a4,16c08 <_malloc_r+0x13c>
   16c24:	00050613          	mv	a2,a0
   16c28:	0209b403          	ld	s0,32(s3)
   16c2c:	00024837          	lui	a6,0x24
   16c30:	53080813          	add	a6,a6,1328 # 24530 <__malloc_av_+0x10>
   16c34:	21040e63          	beq	s0,a6,16e50 <_malloc_r+0x384>
   16c38:	00843783          	ld	a5,8(s0)
   16c3c:	01f00693          	li	a3,31
   16c40:	ffc7f793          	and	a5,a5,-4
   16c44:	40978733          	sub	a4,a5,s1
   16c48:	32e6cc63          	blt	a3,a4,16f80 <_malloc_r+0x4b4>
   16c4c:	0309b423          	sd	a6,40(s3)
   16c50:	0309b023          	sd	a6,32(s3)
   16c54:	30075663          	bgez	a4,16f60 <_malloc_r+0x494>
   16c58:	1ff00713          	li	a4,511
   16c5c:	0089b503          	ld	a0,8(s3)
   16c60:	20f76a63          	bltu	a4,a5,16e74 <_malloc_r+0x3a8>
   16c64:	0037d793          	srl	a5,a5,0x3
   16c68:	0017871b          	addw	a4,a5,1
   16c6c:	0017171b          	sllw	a4,a4,0x1
   16c70:	00371713          	sll	a4,a4,0x3
   16c74:	00e98733          	add	a4,s3,a4
   16c78:	00073583          	ld	a1,0(a4) # 2000 <exit-0xe0e8>
   16c7c:	4027d79b          	sraw	a5,a5,0x2
   16c80:	00100693          	li	a3,1
   16c84:	00f697b3          	sll	a5,a3,a5
   16c88:	00f56533          	or	a0,a0,a5
   16c8c:	ff070793          	add	a5,a4,-16
   16c90:	00f43c23          	sd	a5,24(s0)
   16c94:	00b43823          	sd	a1,16(s0)
   16c98:	00a9b423          	sd	a0,8(s3)
   16c9c:	00873023          	sd	s0,0(a4)
   16ca0:	0085bc23          	sd	s0,24(a1)
   16ca4:	4026579b          	sraw	a5,a2,0x2
   16ca8:	00100593          	li	a1,1
   16cac:	00f595b3          	sll	a1,a1,a5
   16cb0:	0cb56063          	bltu	a0,a1,16d70 <_malloc_r+0x2a4>
   16cb4:	00a5f7b3          	and	a5,a1,a0
   16cb8:	02079463          	bnez	a5,16ce0 <_malloc_r+0x214>
   16cbc:	00159593          	sll	a1,a1,0x1
   16cc0:	ffc67613          	and	a2,a2,-4
   16cc4:	00a5f7b3          	and	a5,a1,a0
   16cc8:	0046061b          	addw	a2,a2,4
   16ccc:	00079a63          	bnez	a5,16ce0 <_malloc_r+0x214>
   16cd0:	00159593          	sll	a1,a1,0x1
   16cd4:	00a5f7b3          	and	a5,a1,a0
   16cd8:	0046061b          	addw	a2,a2,4
   16cdc:	fe078ae3          	beqz	a5,16cd0 <_malloc_r+0x204>
   16ce0:	01f00893          	li	a7,31
   16ce4:	0016031b          	addw	t1,a2,1
   16ce8:	0013131b          	sllw	t1,t1,0x1
   16cec:	00331313          	sll	t1,t1,0x3
   16cf0:	ff030313          	add	t1,t1,-16
   16cf4:	00698333          	add	t1,s3,t1
   16cf8:	00030513          	mv	a0,t1
   16cfc:	01853783          	ld	a5,24(a0)
   16d00:	00060e13          	mv	t3,a2
   16d04:	1ef50e63          	beq	a0,a5,16f00 <_malloc_r+0x434>
   16d08:	0087b703          	ld	a4,8(a5)
   16d0c:	00078413          	mv	s0,a5
   16d10:	0187b783          	ld	a5,24(a5)
   16d14:	ffc77713          	and	a4,a4,-4
   16d18:	409706b3          	sub	a3,a4,s1
   16d1c:	1ed8ce63          	blt	a7,a3,16f18 <_malloc_r+0x44c>
   16d20:	fe06c2e3          	bltz	a3,16d04 <_malloc_r+0x238>
   16d24:	00e40733          	add	a4,s0,a4
   16d28:	00873683          	ld	a3,8(a4)
   16d2c:	01043603          	ld	a2,16(s0)
   16d30:	00090513          	mv	a0,s2
   16d34:	0016e693          	or	a3,a3,1
   16d38:	00d73423          	sd	a3,8(a4)
   16d3c:	00f63c23          	sd	a5,24(a2)
   16d40:	00c7b823          	sd	a2,16(a5)
   16d44:	69c000ef          	jal	173e0 <__malloc_unlock>
   16d48:	01040513          	add	a0,s0,16
   16d4c:	e25ff06f          	j	16b70 <_malloc_r+0xa4>
   16d50:	00c00793          	li	a5,12
   16d54:	00f92023          	sw	a5,0(s2)
   16d58:	00000513          	li	a0,0
   16d5c:	e15ff06f          	j	16b70 <_malloc_r+0xa4>
   16d60:	40000693          	li	a3,1024
   16d64:	04000613          	li	a2,64
   16d68:	03f00513          	li	a0,63
   16d6c:	e7dff06f          	j	16be8 <_malloc_r+0x11c>
   16d70:	0109b403          	ld	s0,16(s3)
   16d74:	00843783          	ld	a5,8(s0)
   16d78:	ffc7fa93          	and	s5,a5,-4
   16d7c:	009ae863          	bltu	s5,s1,16d8c <_malloc_r+0x2c0>
   16d80:	409a8733          	sub	a4,s5,s1
   16d84:	01f00793          	li	a5,31
   16d88:	0ae7c063          	blt	a5,a4,16e28 <_malloc_r+0x35c>
   16d8c:	7881ba03          	ld	s4,1928(gp) # 24da0 <__malloc_top_pad>
   16d90:	7601b703          	ld	a4,1888(gp) # 24d78 <__malloc_sbrk_base>
   16d94:	fff00793          	li	a5,-1
   16d98:	01540c33          	add	s8,s0,s5
   16d9c:	01448a33          	add	s4,s1,s4
   16da0:	3cf70863          	beq	a4,a5,17170 <_malloc_r+0x6a4>
   16da4:	000017b7          	lui	a5,0x1
   16da8:	01f78793          	add	a5,a5,31 # 101f <exit-0xf0c9>
   16dac:	00fa0a33          	add	s4,s4,a5
   16db0:	fffff7b7          	lui	a5,0xfffff
   16db4:	00fa7a33          	and	s4,s4,a5
   16db8:	000a0593          	mv	a1,s4
   16dbc:	00090513          	mv	a0,s2
   16dc0:	161010ef          	jal	18720 <_sbrk_r>
   16dc4:	fff00793          	li	a5,-1
   16dc8:	00050b13          	mv	s6,a0
   16dcc:	22f50263          	beq	a0,a5,16ff0 <_malloc_r+0x524>
   16dd0:	21856e63          	bltu	a0,s8,16fec <_malloc_r+0x520>
   16dd4:	00025bb7          	lui	s7,0x25
   16dd8:	df0b8b93          	add	s7,s7,-528 # 24df0 <__malloc_current_mallinfo>
   16ddc:	000ba783          	lw	a5,0(s7)
   16de0:	0147873b          	addw	a4,a5,s4
   16de4:	00eba023          	sw	a4,0(s7)
   16de8:	00070693          	mv	a3,a4
   16dec:	2aac1663          	bne	s8,a0,17098 <_malloc_r+0x5cc>
   16df0:	03451793          	sll	a5,a0,0x34
   16df4:	2a079263          	bnez	a5,17098 <_malloc_r+0x5cc>
   16df8:	0109bb03          	ld	s6,16(s3)
   16dfc:	014a87b3          	add	a5,s5,s4
   16e00:	0017e793          	or	a5,a5,1
   16e04:	00fb3423          	sd	a5,8(s6)
   16e08:	7801b603          	ld	a2,1920(gp) # 24d98 <__malloc_max_sbrked_mem>
   16e0c:	00e67463          	bgeu	a2,a4,16e14 <_malloc_r+0x348>
   16e10:	78e1b023          	sd	a4,1920(gp) # 24d98 <__malloc_max_sbrked_mem>
   16e14:	7781b603          	ld	a2,1912(gp) # 24d90 <__malloc_max_total_mem>
   16e18:	00e67463          	bgeu	a2,a4,16e20 <_malloc_r+0x354>
   16e1c:	76e1bc23          	sd	a4,1912(gp) # 24d90 <__malloc_max_total_mem>
   16e20:	000b0413          	mv	s0,s6
   16e24:	1d40006f          	j	16ff8 <_malloc_r+0x52c>
   16e28:	0014e793          	or	a5,s1,1
   16e2c:	00f43423          	sd	a5,8(s0)
   16e30:	009404b3          	add	s1,s0,s1
   16e34:	0099b823          	sd	s1,16(s3)
   16e38:	00176713          	or	a4,a4,1
   16e3c:	00090513          	mv	a0,s2
   16e40:	00e4b423          	sd	a4,8(s1)
   16e44:	59c000ef          	jal	173e0 <__malloc_unlock>
   16e48:	01040513          	add	a0,s0,16
   16e4c:	d25ff06f          	j	16b70 <_malloc_r+0xa4>
   16e50:	0089b503          	ld	a0,8(s3)
   16e54:	e51ff06f          	j	16ca4 <_malloc_r+0x1d8>
   16e58:	01843683          	ld	a3,24(s0)
   16e5c:	01043603          	ld	a2,16(s0)
   16e60:	cedff06f          	j	16b4c <_malloc_r+0x80>
   16e64:	0187b403          	ld	s0,24(a5) # fffffffffffff018 <__BSS_END__+0xfffffffffffda200>
   16e68:	0026061b          	addw	a2,a2,2
   16e6c:	da878ee3          	beq	a5,s0,16c28 <_malloc_r+0x15c>
   16e70:	ccdff06f          	j	16b3c <_malloc_r+0x70>
   16e74:	0097d713          	srl	a4,a5,0x9
   16e78:	00400693          	li	a3,4
   16e7c:	14e6fc63          	bgeu	a3,a4,16fd4 <_malloc_r+0x508>
   16e80:	01400693          	li	a3,20
   16e84:	32e6ec63          	bltu	a3,a4,171bc <_malloc_r+0x6f0>
   16e88:	05c7059b          	addw	a1,a4,92
   16e8c:	0015959b          	sllw	a1,a1,0x1
   16e90:	05b7069b          	addw	a3,a4,91
   16e94:	00359593          	sll	a1,a1,0x3
   16e98:	00b985b3          	add	a1,s3,a1
   16e9c:	0005b703          	ld	a4,0(a1)
   16ea0:	ff058593          	add	a1,a1,-16
   16ea4:	00e59863          	bne	a1,a4,16eb4 <_malloc_r+0x3e8>
   16ea8:	2d00006f          	j	17178 <_malloc_r+0x6ac>
   16eac:	01073703          	ld	a4,16(a4)
   16eb0:	00e58863          	beq	a1,a4,16ec0 <_malloc_r+0x3f4>
   16eb4:	00873683          	ld	a3,8(a4)
   16eb8:	ffc6f693          	and	a3,a3,-4
   16ebc:	fed7e8e3          	bltu	a5,a3,16eac <_malloc_r+0x3e0>
   16ec0:	01873583          	ld	a1,24(a4)
   16ec4:	00b43c23          	sd	a1,24(s0)
   16ec8:	00e43823          	sd	a4,16(s0)
   16ecc:	0085b823          	sd	s0,16(a1)
   16ed0:	00873c23          	sd	s0,24(a4)
   16ed4:	dd1ff06f          	j	16ca4 <_malloc_r+0x1d8>
   16ed8:	01400713          	li	a4,20
   16edc:	14f77063          	bgeu	a4,a5,1701c <_malloc_r+0x550>
   16ee0:	05400713          	li	a4,84
   16ee4:	2ef76c63          	bltu	a4,a5,171dc <_malloc_r+0x710>
   16ee8:	00c4d793          	srl	a5,s1,0xc
   16eec:	06f7861b          	addw	a2,a5,111
   16ef0:	0016169b          	sllw	a3,a2,0x1
   16ef4:	06e7851b          	addw	a0,a5,110
   16ef8:	00369693          	sll	a3,a3,0x3
   16efc:	cedff06f          	j	16be8 <_malloc_r+0x11c>
   16f00:	001e0e1b          	addw	t3,t3,1
   16f04:	003e7793          	and	a5,t3,3
   16f08:	01050513          	add	a0,a0,16
   16f0c:	12078863          	beqz	a5,1703c <_malloc_r+0x570>
   16f10:	01853783          	ld	a5,24(a0)
   16f14:	df1ff06f          	j	16d04 <_malloc_r+0x238>
   16f18:	01043603          	ld	a2,16(s0)
   16f1c:	0014e593          	or	a1,s1,1
   16f20:	00b43423          	sd	a1,8(s0)
   16f24:	00f63c23          	sd	a5,24(a2)
   16f28:	00c7b823          	sd	a2,16(a5)
   16f2c:	009404b3          	add	s1,s0,s1
   16f30:	0299b423          	sd	s1,40(s3)
   16f34:	0299b023          	sd	s1,32(s3)
   16f38:	0016e793          	or	a5,a3,1
   16f3c:	0104bc23          	sd	a6,24(s1)
   16f40:	0104b823          	sd	a6,16(s1)
   16f44:	00f4b423          	sd	a5,8(s1)
   16f48:	00e40733          	add	a4,s0,a4
   16f4c:	00090513          	mv	a0,s2
   16f50:	00d73023          	sd	a3,0(a4)
   16f54:	48c000ef          	jal	173e0 <__malloc_unlock>
   16f58:	01040513          	add	a0,s0,16
   16f5c:	c15ff06f          	j	16b70 <_malloc_r+0xa4>
   16f60:	00f407b3          	add	a5,s0,a5
   16f64:	0087b703          	ld	a4,8(a5)
   16f68:	00090513          	mv	a0,s2
   16f6c:	00176713          	or	a4,a4,1
   16f70:	00e7b423          	sd	a4,8(a5)
   16f74:	46c000ef          	jal	173e0 <__malloc_unlock>
   16f78:	01040513          	add	a0,s0,16
   16f7c:	bf5ff06f          	j	16b70 <_malloc_r+0xa4>
   16f80:	0014e693          	or	a3,s1,1
   16f84:	00d43423          	sd	a3,8(s0)
   16f88:	009404b3          	add	s1,s0,s1
   16f8c:	0299b423          	sd	s1,40(s3)
   16f90:	0299b023          	sd	s1,32(s3)
   16f94:	00176693          	or	a3,a4,1
   16f98:	0104bc23          	sd	a6,24(s1)
   16f9c:	0104b823          	sd	a6,16(s1)
   16fa0:	00d4b423          	sd	a3,8(s1)
   16fa4:	00f407b3          	add	a5,s0,a5
   16fa8:	00090513          	mv	a0,s2
   16fac:	00e7b023          	sd	a4,0(a5)
   16fb0:	430000ef          	jal	173e0 <__malloc_unlock>
   16fb4:	01040513          	add	a0,s0,16
   16fb8:	bb9ff06f          	j	16b70 <_malloc_r+0xa4>
   16fbc:	0034d613          	srl	a2,s1,0x3
   16fc0:	0016079b          	addw	a5,a2,1
   16fc4:	0017979b          	sllw	a5,a5,0x1
   16fc8:	0006061b          	sext.w	a2,a2
   16fcc:	00379793          	sll	a5,a5,0x3
   16fd0:	b55ff06f          	j	16b24 <_malloc_r+0x58>
   16fd4:	0067d713          	srl	a4,a5,0x6
   16fd8:	0397059b          	addw	a1,a4,57
   16fdc:	0015959b          	sllw	a1,a1,0x1
   16fe0:	0387069b          	addw	a3,a4,56
   16fe4:	00359593          	sll	a1,a1,0x3
   16fe8:	eb1ff06f          	j	16e98 <_malloc_r+0x3cc>
   16fec:	09340c63          	beq	s0,s3,17084 <_malloc_r+0x5b8>
   16ff0:	0109b403          	ld	s0,16(s3)
   16ff4:	00843783          	ld	a5,8(s0)
   16ff8:	ffc7f793          	and	a5,a5,-4
   16ffc:	40978733          	sub	a4,a5,s1
   17000:	0097e663          	bltu	a5,s1,1700c <_malloc_r+0x540>
   17004:	01f00793          	li	a5,31
   17008:	e2e7c0e3          	blt	a5,a4,16e28 <_malloc_r+0x35c>
   1700c:	00090513          	mv	a0,s2
   17010:	3d0000ef          	jal	173e0 <__malloc_unlock>
   17014:	00000513          	li	a0,0
   17018:	b59ff06f          	j	16b70 <_malloc_r+0xa4>
   1701c:	05c7861b          	addw	a2,a5,92
   17020:	0016169b          	sllw	a3,a2,0x1
   17024:	05b7851b          	addw	a0,a5,91
   17028:	00369693          	sll	a3,a3,0x3
   1702c:	bbdff06f          	j	16be8 <_malloc_r+0x11c>
   17030:	01033783          	ld	a5,16(t1)
   17034:	fff6061b          	addw	a2,a2,-1
   17038:	26679463          	bne	a5,t1,172a0 <_malloc_r+0x7d4>
   1703c:	00367793          	and	a5,a2,3
   17040:	ff030313          	add	t1,t1,-16
   17044:	fe0796e3          	bnez	a5,17030 <_malloc_r+0x564>
   17048:	0089b703          	ld	a4,8(s3)
   1704c:	fff5c793          	not	a5,a1
   17050:	00e7f7b3          	and	a5,a5,a4
   17054:	00f9b423          	sd	a5,8(s3)
   17058:	00159593          	sll	a1,a1,0x1
   1705c:	d0b7eae3          	bltu	a5,a1,16d70 <_malloc_r+0x2a4>
   17060:	d00588e3          	beqz	a1,16d70 <_malloc_r+0x2a4>
   17064:	00f5f733          	and	a4,a1,a5
   17068:	00071a63          	bnez	a4,1707c <_malloc_r+0x5b0>
   1706c:	00159593          	sll	a1,a1,0x1
   17070:	00f5f733          	and	a4,a1,a5
   17074:	004e0e1b          	addw	t3,t3,4
   17078:	fe070ae3          	beqz	a4,1706c <_malloc_r+0x5a0>
   1707c:	000e0613          	mv	a2,t3
   17080:	c65ff06f          	j	16ce4 <_malloc_r+0x218>
   17084:	00025bb7          	lui	s7,0x25
   17088:	df0b8b93          	add	s7,s7,-528 # 24df0 <__malloc_current_mallinfo>
   1708c:	000ba783          	lw	a5,0(s7)
   17090:	014786bb          	addw	a3,a5,s4
   17094:	00dba023          	sw	a3,0(s7)
   17098:	7601b703          	ld	a4,1888(gp) # 24d78 <__malloc_sbrk_base>
   1709c:	fff00793          	li	a5,-1
   170a0:	14f70e63          	beq	a4,a5,171fc <_malloc_r+0x730>
   170a4:	418b07b3          	sub	a5,s6,s8
   170a8:	00d787bb          	addw	a5,a5,a3
   170ac:	00fba023          	sw	a5,0(s7)
   170b0:	00fb7c93          	and	s9,s6,15
   170b4:	0c0c8e63          	beqz	s9,17190 <_malloc_r+0x6c4>
   170b8:	00001737          	lui	a4,0x1
   170bc:	419b0b33          	sub	s6,s6,s9
   170c0:	01070c13          	add	s8,a4,16 # 1010 <exit-0xf0d8>
   170c4:	010b0b13          	add	s6,s6,16
   170c8:	419c0c33          	sub	s8,s8,s9
   170cc:	014b0a33          	add	s4,s6,s4
   170d0:	fff70713          	add	a4,a4,-1
   170d4:	414c0c33          	sub	s8,s8,s4
   170d8:	00ec7c33          	and	s8,s8,a4
   170dc:	000c0593          	mv	a1,s8
   170e0:	00090513          	mv	a0,s2
   170e4:	63c010ef          	jal	18720 <_sbrk_r>
   170e8:	fff00793          	li	a5,-1
   170ec:	16f50263          	beq	a0,a5,17250 <_malloc_r+0x784>
   170f0:	41650533          	sub	a0,a0,s6
   170f4:	000c069b          	sext.w	a3,s8
   170f8:	01850a33          	add	s4,a0,s8
   170fc:	000ba703          	lw	a4,0(s7)
   17100:	0169b823          	sd	s6,16(s3)
   17104:	001a6793          	or	a5,s4,1
   17108:	00d7073b          	addw	a4,a4,a3
   1710c:	00eba023          	sw	a4,0(s7)
   17110:	00fb3423          	sd	a5,8(s6)
   17114:	cf340ae3          	beq	s0,s3,16e08 <_malloc_r+0x33c>
   17118:	01f00613          	li	a2,31
   1711c:	0f567463          	bgeu	a2,s5,17204 <_malloc_r+0x738>
   17120:	00843683          	ld	a3,8(s0)
   17124:	fe8a8793          	add	a5,s5,-24
   17128:	ff07f793          	and	a5,a5,-16
   1712c:	0016f693          	and	a3,a3,1
   17130:	00f6e6b3          	or	a3,a3,a5
   17134:	00d43423          	sd	a3,8(s0)
   17138:	00900593          	li	a1,9
   1713c:	00f406b3          	add	a3,s0,a5
   17140:	00b6b423          	sd	a1,8(a3)
   17144:	00b6b823          	sd	a1,16(a3)
   17148:	00f66663          	bltu	a2,a5,17154 <_malloc_r+0x688>
   1714c:	008b3783          	ld	a5,8(s6)
   17150:	cb9ff06f          	j	16e08 <_malloc_r+0x33c>
   17154:	01040593          	add	a1,s0,16
   17158:	00090513          	mv	a0,s2
   1715c:	cb0fc0ef          	jal	1360c <_free_r>
   17160:	0109bb03          	ld	s6,16(s3)
   17164:	000ba703          	lw	a4,0(s7)
   17168:	008b3783          	ld	a5,8(s6)
   1716c:	c9dff06f          	j	16e08 <_malloc_r+0x33c>
   17170:	020a0a13          	add	s4,s4,32
   17174:	c45ff06f          	j	16db8 <_malloc_r+0x2ec>
   17178:	4026d69b          	sraw	a3,a3,0x2
   1717c:	00100793          	li	a5,1
   17180:	00d797b3          	sll	a5,a5,a3
   17184:	00f56533          	or	a0,a0,a5
   17188:	00a9b423          	sd	a0,8(s3)
   1718c:	d39ff06f          	j	16ec4 <_malloc_r+0x3f8>
   17190:	014b0c33          	add	s8,s6,s4
   17194:	41800c33          	neg	s8,s8
   17198:	034c1c13          	sll	s8,s8,0x34
   1719c:	034c5c13          	srl	s8,s8,0x34
   171a0:	000c0593          	mv	a1,s8
   171a4:	00090513          	mv	a0,s2
   171a8:	578010ef          	jal	18720 <_sbrk_r>
   171ac:	fff00793          	li	a5,-1
   171b0:	00000693          	li	a3,0
   171b4:	f2f51ee3          	bne	a0,a5,170f0 <_malloc_r+0x624>
   171b8:	f45ff06f          	j	170fc <_malloc_r+0x630>
   171bc:	05400693          	li	a3,84
   171c0:	04e6e863          	bltu	a3,a4,17210 <_malloc_r+0x744>
   171c4:	00c7d713          	srl	a4,a5,0xc
   171c8:	06f7059b          	addw	a1,a4,111
   171cc:	0015959b          	sllw	a1,a1,0x1
   171d0:	06e7069b          	addw	a3,a4,110
   171d4:	00359593          	sll	a1,a1,0x3
   171d8:	cc1ff06f          	j	16e98 <_malloc_r+0x3cc>
   171dc:	15400713          	li	a4,340
   171e0:	04f76863          	bltu	a4,a5,17230 <_malloc_r+0x764>
   171e4:	00f4d793          	srl	a5,s1,0xf
   171e8:	0787861b          	addw	a2,a5,120
   171ec:	0016169b          	sllw	a3,a2,0x1
   171f0:	0777851b          	addw	a0,a5,119
   171f4:	00369693          	sll	a3,a3,0x3
   171f8:	9f1ff06f          	j	16be8 <_malloc_r+0x11c>
   171fc:	7761b023          	sd	s6,1888(gp) # 24d78 <__malloc_sbrk_base>
   17200:	eb1ff06f          	j	170b0 <_malloc_r+0x5e4>
   17204:	00100793          	li	a5,1
   17208:	00fb3423          	sd	a5,8(s6)
   1720c:	e01ff06f          	j	1700c <_malloc_r+0x540>
   17210:	15400693          	li	a3,340
   17214:	04e6e863          	bltu	a3,a4,17264 <_malloc_r+0x798>
   17218:	00f7d713          	srl	a4,a5,0xf
   1721c:	0787059b          	addw	a1,a4,120
   17220:	0015959b          	sllw	a1,a1,0x1
   17224:	0777069b          	addw	a3,a4,119
   17228:	00359593          	sll	a1,a1,0x3
   1722c:	c6dff06f          	j	16e98 <_malloc_r+0x3cc>
   17230:	55400713          	li	a4,1364
   17234:	04f76863          	bltu	a4,a5,17284 <_malloc_r+0x7b8>
   17238:	0124d793          	srl	a5,s1,0x12
   1723c:	07d7861b          	addw	a2,a5,125
   17240:	0016169b          	sllw	a3,a2,0x1
   17244:	07c7851b          	addw	a0,a5,124
   17248:	00369693          	sll	a3,a3,0x3
   1724c:	99dff06f          	j	16be8 <_malloc_r+0x11c>
   17250:	ff0c8c93          	add	s9,s9,-16
   17254:	019a0a33          	add	s4,s4,s9
   17258:	416a0a33          	sub	s4,s4,s6
   1725c:	00000693          	li	a3,0
   17260:	e9dff06f          	j	170fc <_malloc_r+0x630>
   17264:	55400693          	li	a3,1364
   17268:	02e6e663          	bltu	a3,a4,17294 <_malloc_r+0x7c8>
   1726c:	0127d713          	srl	a4,a5,0x12
   17270:	07d7059b          	addw	a1,a4,125
   17274:	0015959b          	sllw	a1,a1,0x1
   17278:	07c7069b          	addw	a3,a4,124
   1727c:	00359593          	sll	a1,a1,0x3
   17280:	c19ff06f          	j	16e98 <_malloc_r+0x3cc>
   17284:	7f000693          	li	a3,2032
   17288:	07f00613          	li	a2,127
   1728c:	07e00513          	li	a0,126
   17290:	959ff06f          	j	16be8 <_malloc_r+0x11c>
   17294:	7f000593          	li	a1,2032
   17298:	07e00693          	li	a3,126
   1729c:	bfdff06f          	j	16e98 <_malloc_r+0x3cc>
   172a0:	0089b783          	ld	a5,8(s3)
   172a4:	db5ff06f          	j	17058 <_malloc_r+0x58c>

00000000000172a8 <_mbtowc_r>:
   172a8:	e481b783          	ld	a5,-440(gp) # 24460 <__global_locale+0xe8>
   172ac:	00078067          	jr	a5

00000000000172b0 <__ascii_mbtowc>:
   172b0:	02058063          	beqz	a1,172d0 <__ascii_mbtowc+0x20>
   172b4:	04060263          	beqz	a2,172f8 <__ascii_mbtowc+0x48>
   172b8:	04068863          	beqz	a3,17308 <__ascii_mbtowc+0x58>
   172bc:	00064783          	lbu	a5,0(a2)
   172c0:	00f5a023          	sw	a5,0(a1)
   172c4:	00064503          	lbu	a0,0(a2)
   172c8:	00a03533          	snez	a0,a0
   172cc:	00008067          	ret
   172d0:	ff010113          	add	sp,sp,-16
   172d4:	00c10593          	add	a1,sp,12
   172d8:	02060463          	beqz	a2,17300 <__ascii_mbtowc+0x50>
   172dc:	02068a63          	beqz	a3,17310 <__ascii_mbtowc+0x60>
   172e0:	00064783          	lbu	a5,0(a2)
   172e4:	00f5a023          	sw	a5,0(a1)
   172e8:	00064503          	lbu	a0,0(a2)
   172ec:	00a03533          	snez	a0,a0
   172f0:	01010113          	add	sp,sp,16
   172f4:	00008067          	ret
   172f8:	00000513          	li	a0,0
   172fc:	00008067          	ret
   17300:	00000513          	li	a0,0
   17304:	fedff06f          	j	172f0 <__ascii_mbtowc+0x40>
   17308:	ffe00513          	li	a0,-2
   1730c:	00008067          	ret
   17310:	ffe00513          	li	a0,-2
   17314:	fddff06f          	j	172f0 <__ascii_mbtowc+0x40>

0000000000017318 <memchr>:
   17318:	00757793          	and	a5,a0,7
   1731c:	0ff5f693          	zext.b	a3,a1
   17320:	02078e63          	beqz	a5,1735c <memchr+0x44>
   17324:	fff60793          	add	a5,a2,-1
   17328:	02060663          	beqz	a2,17354 <memchr+0x3c>
   1732c:	fff00613          	li	a2,-1
   17330:	0180006f          	j	17348 <memchr+0x30>
   17334:	00150513          	add	a0,a0,1
   17338:	00757713          	and	a4,a0,7
   1733c:	02070263          	beqz	a4,17360 <memchr+0x48>
   17340:	fff78793          	add	a5,a5,-1
   17344:	00c78863          	beq	a5,a2,17354 <memchr+0x3c>
   17348:	00054703          	lbu	a4,0(a0)
   1734c:	fed714e3          	bne	a4,a3,17334 <memchr+0x1c>
   17350:	00008067          	ret
   17354:	00000513          	li	a0,0
   17358:	00008067          	ret
   1735c:	00060793          	mv	a5,a2
   17360:	00700713          	li	a4,7
   17364:	04f77c63          	bgeu	a4,a5,173bc <memchr+0xa4>
   17368:	0ff5f593          	zext.b	a1,a1
   1736c:	00859713          	sll	a4,a1,0x8
   17370:	00b70733          	add	a4,a4,a1
   17374:	01071593          	sll	a1,a4,0x10
   17378:	00e585b3          	add	a1,a1,a4
   1737c:	7181b883          	ld	a7,1816(gp) # 24d30 <__SDATA_BEGIN__>
   17380:	7201b803          	ld	a6,1824(gp) # 24d38 <__SDATA_BEGIN__+0x8>
   17384:	02059713          	sll	a4,a1,0x20
   17388:	00e585b3          	add	a1,a1,a4
   1738c:	00700313          	li	t1,7
   17390:	0100006f          	j	173a0 <memchr+0x88>
   17394:	ff878793          	add	a5,a5,-8
   17398:	00850513          	add	a0,a0,8
   1739c:	02f37063          	bgeu	t1,a5,173bc <memchr+0xa4>
   173a0:	00053703          	ld	a4,0(a0)
   173a4:	00e5c733          	xor	a4,a1,a4
   173a8:	01170633          	add	a2,a4,a7
   173ac:	fff74713          	not	a4,a4
   173b0:	00e67733          	and	a4,a2,a4
   173b4:	01077733          	and	a4,a4,a6
   173b8:	fc070ee3          	beqz	a4,17394 <memchr+0x7c>
   173bc:	00f50733          	add	a4,a0,a5
   173c0:	00079863          	bnez	a5,173d0 <memchr+0xb8>
   173c4:	f91ff06f          	j	17354 <memchr+0x3c>
   173c8:	00150513          	add	a0,a0,1
   173cc:	f8a704e3          	beq	a4,a0,17354 <memchr+0x3c>
   173d0:	00054783          	lbu	a5,0(a0)
   173d4:	fed79ae3          	bne	a5,a3,173c8 <memchr+0xb0>
   173d8:	00008067          	ret

00000000000173dc <__malloc_lock>:
   173dc:	00008067          	ret

00000000000173e0 <__malloc_unlock>:
   173e0:	00008067          	ret

00000000000173e4 <_Balloc>:
   173e4:	07853783          	ld	a5,120(a0)
   173e8:	fe010113          	add	sp,sp,-32
   173ec:	00813823          	sd	s0,16(sp)
   173f0:	00913423          	sd	s1,8(sp)
   173f4:	00113c23          	sd	ra,24(sp)
   173f8:	00050493          	mv	s1,a0
   173fc:	00058413          	mv	s0,a1
   17400:	02078a63          	beqz	a5,17434 <_Balloc+0x50>
   17404:	00341713          	sll	a4,s0,0x3
   17408:	00e787b3          	add	a5,a5,a4
   1740c:	0007b503          	ld	a0,0(a5)
   17410:	04050263          	beqz	a0,17454 <_Balloc+0x70>
   17414:	00053703          	ld	a4,0(a0)
   17418:	00e7b023          	sd	a4,0(a5)
   1741c:	00053823          	sd	zero,16(a0)
   17420:	01813083          	ld	ra,24(sp)
   17424:	01013403          	ld	s0,16(sp)
   17428:	00813483          	ld	s1,8(sp)
   1742c:	02010113          	add	sp,sp,32
   17430:	00008067          	ret
   17434:	04100613          	li	a2,65
   17438:	00800593          	li	a1,8
   1743c:	588050ef          	jal	1c9c4 <_calloc_r>
   17440:	06a4bc23          	sd	a0,120(s1)
   17444:	00050793          	mv	a5,a0
   17448:	fa051ee3          	bnez	a0,17404 <_Balloc+0x20>
   1744c:	00000513          	li	a0,0
   17450:	fd1ff06f          	j	17420 <_Balloc+0x3c>
   17454:	00100793          	li	a5,1
   17458:	008797bb          	sllw	a5,a5,s0
   1745c:	0007861b          	sext.w	a2,a5
   17460:	00760613          	add	a2,a2,7
   17464:	02041413          	sll	s0,s0,0x20
   17468:	02079793          	sll	a5,a5,0x20
   1746c:	02045413          	srl	s0,s0,0x20
   17470:	00261613          	sll	a2,a2,0x2
   17474:	00100593          	li	a1,1
   17478:	00048513          	mv	a0,s1
   1747c:	00f46433          	or	s0,s0,a5
   17480:	544050ef          	jal	1c9c4 <_calloc_r>
   17484:	fc0504e3          	beqz	a0,1744c <_Balloc+0x68>
   17488:	00853423          	sd	s0,8(a0)
   1748c:	f91ff06f          	j	1741c <_Balloc+0x38>

0000000000017490 <_Bfree>:
   17490:	02058063          	beqz	a1,174b0 <_Bfree+0x20>
   17494:	0085a703          	lw	a4,8(a1)
   17498:	07853783          	ld	a5,120(a0)
   1749c:	00371713          	sll	a4,a4,0x3
   174a0:	00e787b3          	add	a5,a5,a4
   174a4:	0007b703          	ld	a4,0(a5)
   174a8:	00e5b023          	sd	a4,0(a1)
   174ac:	00b7b023          	sd	a1,0(a5)
   174b0:	00008067          	ret

00000000000174b4 <__multadd>:
   174b4:	fb010113          	add	sp,sp,-80
   174b8:	03213823          	sd	s2,48(sp)
   174bc:	0145a903          	lw	s2,20(a1)
   174c0:	01813023          	sd	s8,0(sp)
   174c4:	00010c37          	lui	s8,0x10
   174c8:	04813023          	sd	s0,64(sp)
   174cc:	02913c23          	sd	s1,56(sp)
   174d0:	03313423          	sd	s3,40(sp)
   174d4:	03413023          	sd	s4,32(sp)
   174d8:	01513c23          	sd	s5,24(sp)
   174dc:	01613823          	sd	s6,16(sp)
   174e0:	04113423          	sd	ra,72(sp)
   174e4:	01713423          	sd	s7,8(sp)
   174e8:	00058993          	mv	s3,a1
   174ec:	00050a13          	mv	s4,a0
   174f0:	00068413          	mv	s0,a3
   174f4:	01858493          	add	s1,a1,24
   174f8:	00060a93          	mv	s5,a2
   174fc:	00000b13          	li	s6,0
   17500:	fffc0c13          	add	s8,s8,-1 # ffff <exit-0xe9>
   17504:	0004ab83          	lw	s7,0(s1)
   17508:	000a8593          	mv	a1,s5
   1750c:	00448493          	add	s1,s1,4
   17510:	018bf533          	and	a0,s7,s8
   17514:	6540a0ef          	jal	21b68 <__muldi3>
   17518:	0085043b          	addw	s0,a0,s0
   1751c:	000a8593          	mv	a1,s5
   17520:	010bd51b          	srlw	a0,s7,0x10
   17524:	6440a0ef          	jal	21b68 <__muldi3>
   17528:	0104569b          	srlw	a3,s0,0x10
   1752c:	00a686bb          	addw	a3,a3,a0
   17530:	008c7433          	and	s0,s8,s0
   17534:	0106979b          	sllw	a5,a3,0x10
   17538:	008787bb          	addw	a5,a5,s0
   1753c:	fef4ae23          	sw	a5,-4(s1)
   17540:	001b0b1b          	addw	s6,s6,1
   17544:	0106db9b          	srlw	s7,a3,0x10
   17548:	0106d41b          	srlw	s0,a3,0x10
   1754c:	fb2b4ce3          	blt	s6,s2,17504 <__multadd+0x50>
   17550:	02040263          	beqz	s0,17574 <__multadd+0xc0>
   17554:	00c9a783          	lw	a5,12(s3)
   17558:	04f95863          	bge	s2,a5,175a8 <__multadd+0xf4>
   1755c:	00490793          	add	a5,s2,4
   17560:	00279793          	sll	a5,a5,0x2
   17564:	00f987b3          	add	a5,s3,a5
   17568:	0177a423          	sw	s7,8(a5)
   1756c:	0019091b          	addw	s2,s2,1
   17570:	0129aa23          	sw	s2,20(s3)
   17574:	04813083          	ld	ra,72(sp)
   17578:	04013403          	ld	s0,64(sp)
   1757c:	03813483          	ld	s1,56(sp)
   17580:	03013903          	ld	s2,48(sp)
   17584:	02013a03          	ld	s4,32(sp)
   17588:	01813a83          	ld	s5,24(sp)
   1758c:	01013b03          	ld	s6,16(sp)
   17590:	00813b83          	ld	s7,8(sp)
   17594:	00013c03          	ld	s8,0(sp)
   17598:	00098513          	mv	a0,s3
   1759c:	02813983          	ld	s3,40(sp)
   175a0:	05010113          	add	sp,sp,80
   175a4:	00008067          	ret
   175a8:	0089a583          	lw	a1,8(s3)
   175ac:	000a0513          	mv	a0,s4
   175b0:	0015859b          	addw	a1,a1,1
   175b4:	e31ff0ef          	jal	173e4 <_Balloc>
   175b8:	00050413          	mv	s0,a0
   175bc:	04050c63          	beqz	a0,17614 <__multadd+0x160>
   175c0:	0149a603          	lw	a2,20(s3)
   175c4:	01098593          	add	a1,s3,16
   175c8:	01050513          	add	a0,a0,16
   175cc:	00260613          	add	a2,a2,2
   175d0:	00261613          	sll	a2,a2,0x2
   175d4:	725050ef          	jal	1d4f8 <memcpy>
   175d8:	0089a703          	lw	a4,8(s3)
   175dc:	078a3783          	ld	a5,120(s4)
   175e0:	00371713          	sll	a4,a4,0x3
   175e4:	00e787b3          	add	a5,a5,a4
   175e8:	0007b703          	ld	a4,0(a5)
   175ec:	00e9b023          	sd	a4,0(s3)
   175f0:	0137b023          	sd	s3,0(a5)
   175f4:	00490793          	add	a5,s2,4
   175f8:	00040993          	mv	s3,s0
   175fc:	00279793          	sll	a5,a5,0x2
   17600:	00f987b3          	add	a5,s3,a5
   17604:	0177a423          	sw	s7,8(a5)
   17608:	0019091b          	addw	s2,s2,1
   1760c:	0129aa23          	sw	s2,20(s3)
   17610:	f65ff06f          	j	17574 <__multadd+0xc0>
   17614:	000226b7          	lui	a3,0x22
   17618:	00022537          	lui	a0,0x22
   1761c:	ff068693          	add	a3,a3,-16 # 21ff0 <blanks.1+0x78>
   17620:	00000613          	li	a2,0
   17624:	0b500593          	li	a1,181
   17628:	2d850513          	add	a0,a0,728 # 222d8 <ezero+0x30>
   1762c:	31c050ef          	jal	1c948 <__assert_func>

0000000000017630 <__s2b>:
   17630:	fc010113          	add	sp,sp,-64
   17634:	02813823          	sd	s0,48(sp)
   17638:	03213023          	sd	s2,32(sp)
   1763c:	00058413          	mv	s0,a1
   17640:	00050913          	mv	s2,a0
   17644:	00900593          	li	a1,9
   17648:	0086851b          	addw	a0,a3,8
   1764c:	02913423          	sd	s1,40(sp)
   17650:	01313c23          	sd	s3,24(sp)
   17654:	01413823          	sd	s4,16(sp)
   17658:	02113c23          	sd	ra,56(sp)
   1765c:	01513423          	sd	s5,8(sp)
   17660:	01613023          	sd	s6,0(sp)
   17664:	00068493          	mv	s1,a3
   17668:	00060993          	mv	s3,a2
   1766c:	00070a13          	mv	s4,a4
   17670:	55c0a0ef          	jal	21bcc <__divdi3>
   17674:	00900793          	li	a5,9
   17678:	0e97da63          	bge	a5,s1,1776c <__s2b+0x13c>
   1767c:	0005051b          	sext.w	a0,a0
   17680:	00100793          	li	a5,1
   17684:	00000593          	li	a1,0
   17688:	0017979b          	sllw	a5,a5,0x1
   1768c:	0015859b          	addw	a1,a1,1
   17690:	fea7cce3          	blt	a5,a0,17688 <__s2b+0x58>
   17694:	00090513          	mv	a0,s2
   17698:	d4dff0ef          	jal	173e4 <_Balloc>
   1769c:	00050593          	mv	a1,a0
   176a0:	0c050a63          	beqz	a0,17774 <__s2b+0x144>
   176a4:	00100793          	li	a5,1
   176a8:	00f52a23          	sw	a5,20(a0)
   176ac:	01452c23          	sw	s4,24(a0)
   176b0:	00900793          	li	a5,9
   176b4:	0b37d663          	bge	a5,s3,17760 <__s2b+0x130>
   176b8:	02099a13          	sll	s4,s3,0x20
   176bc:	00940b13          	add	s6,s0,9
   176c0:	020a5a13          	srl	s4,s4,0x20
   176c4:	01440a33          	add	s4,s0,s4
   176c8:	00098a9b          	sext.w	s5,s3
   176cc:	000b0413          	mv	s0,s6
   176d0:	00044683          	lbu	a3,0(s0)
   176d4:	00a00613          	li	a2,10
   176d8:	00090513          	mv	a0,s2
   176dc:	fd06869b          	addw	a3,a3,-48
   176e0:	dd5ff0ef          	jal	174b4 <__multadd>
   176e4:	00140413          	add	s0,s0,1
   176e8:	00050593          	mv	a1,a0
   176ec:	ff4412e3          	bne	s0,s4,176d0 <__s2b+0xa0>
   176f0:	ff8a8a9b          	addw	s5,s5,-8
   176f4:	020a9a93          	sll	s5,s5,0x20
   176f8:	020ada93          	srl	s5,s5,0x20
   176fc:	015b0433          	add	s0,s6,s5
   17700:	0299da63          	bge	s3,s1,17734 <__s2b+0x104>
   17704:	413484bb          	subw	s1,s1,s3
   17708:	02049493          	sll	s1,s1,0x20
   1770c:	0204d493          	srl	s1,s1,0x20
   17710:	009404b3          	add	s1,s0,s1
   17714:	00044683          	lbu	a3,0(s0)
   17718:	00a00613          	li	a2,10
   1771c:	00090513          	mv	a0,s2
   17720:	fd06869b          	addw	a3,a3,-48
   17724:	d91ff0ef          	jal	174b4 <__multadd>
   17728:	00140413          	add	s0,s0,1
   1772c:	00050593          	mv	a1,a0
   17730:	fe9412e3          	bne	s0,s1,17714 <__s2b+0xe4>
   17734:	03813083          	ld	ra,56(sp)
   17738:	03013403          	ld	s0,48(sp)
   1773c:	02813483          	ld	s1,40(sp)
   17740:	02013903          	ld	s2,32(sp)
   17744:	01813983          	ld	s3,24(sp)
   17748:	01013a03          	ld	s4,16(sp)
   1774c:	00813a83          	ld	s5,8(sp)
   17750:	00013b03          	ld	s6,0(sp)
   17754:	00058513          	mv	a0,a1
   17758:	04010113          	add	sp,sp,64
   1775c:	00008067          	ret
   17760:	00a40413          	add	s0,s0,10
   17764:	00900993          	li	s3,9
   17768:	f99ff06f          	j	17700 <__s2b+0xd0>
   1776c:	00000593          	li	a1,0
   17770:	f25ff06f          	j	17694 <__s2b+0x64>
   17774:	000226b7          	lui	a3,0x22
   17778:	00022537          	lui	a0,0x22
   1777c:	ff068693          	add	a3,a3,-16 # 21ff0 <blanks.1+0x78>
   17780:	00000613          	li	a2,0
   17784:	0ce00593          	li	a1,206
   17788:	2d850513          	add	a0,a0,728 # 222d8 <ezero+0x30>
   1778c:	1bc050ef          	jal	1c948 <__assert_func>

0000000000017790 <__hi0bits>:
   17790:	00050793          	mv	a5,a0
   17794:	00010737          	lui	a4,0x10
   17798:	00000513          	li	a0,0
   1779c:	00e7f663          	bgeu	a5,a4,177a8 <__hi0bits+0x18>
   177a0:	0107979b          	sllw	a5,a5,0x10
   177a4:	01000513          	li	a0,16
   177a8:	01000737          	lui	a4,0x1000
   177ac:	00e7f663          	bgeu	a5,a4,177b8 <__hi0bits+0x28>
   177b0:	0087979b          	sllw	a5,a5,0x8
   177b4:	0085051b          	addw	a0,a0,8
   177b8:	10000737          	lui	a4,0x10000
   177bc:	00e7f663          	bgeu	a5,a4,177c8 <__hi0bits+0x38>
   177c0:	0047979b          	sllw	a5,a5,0x4
   177c4:	0045051b          	addw	a0,a0,4
   177c8:	40000737          	lui	a4,0x40000
   177cc:	00e7e863          	bltu	a5,a4,177dc <__hi0bits+0x4c>
   177d0:	0207c463          	bltz	a5,177f8 <__hi0bits+0x68>
   177d4:	0015051b          	addw	a0,a0,1
   177d8:	00008067          	ret
   177dc:	0027979b          	sllw	a5,a5,0x2
   177e0:	0007871b          	sext.w	a4,a5
   177e4:	00074c63          	bltz	a4,177fc <__hi0bits+0x6c>
   177e8:	40000737          	lui	a4,0x40000
   177ec:	00e7f7b3          	and	a5,a5,a4
   177f0:	00079a63          	bnez	a5,17804 <__hi0bits+0x74>
   177f4:	02000513          	li	a0,32
   177f8:	00008067          	ret
   177fc:	0025051b          	addw	a0,a0,2
   17800:	00008067          	ret
   17804:	0035051b          	addw	a0,a0,3
   17808:	00008067          	ret

000000000001780c <__lo0bits>:
   1780c:	00052783          	lw	a5,0(a0)
   17810:	00050713          	mv	a4,a0
   17814:	0077f693          	and	a3,a5,7
   17818:	00078613          	mv	a2,a5
   1781c:	02068463          	beqz	a3,17844 <__lo0bits+0x38>
   17820:	0017f693          	and	a3,a5,1
   17824:	00000513          	li	a0,0
   17828:	04069e63          	bnez	a3,17884 <__lo0bits+0x78>
   1782c:	00267613          	and	a2,a2,2
   17830:	0a060863          	beqz	a2,178e0 <__lo0bits+0xd4>
   17834:	0017d79b          	srlw	a5,a5,0x1
   17838:	00f72023          	sw	a5,0(a4) # 40000000 <__BSS_END__+0x3ffdb1e8>
   1783c:	00100513          	li	a0,1
   17840:	00008067          	ret
   17844:	03079693          	sll	a3,a5,0x30
   17848:	0306d693          	srl	a3,a3,0x30
   1784c:	00000513          	li	a0,0
   17850:	06068e63          	beqz	a3,178cc <__lo0bits+0xc0>
   17854:	0ff7f693          	zext.b	a3,a5
   17858:	06068063          	beqz	a3,178b8 <__lo0bits+0xac>
   1785c:	00f7f693          	and	a3,a5,15
   17860:	04068263          	beqz	a3,178a4 <__lo0bits+0x98>
   17864:	0037f693          	and	a3,a5,3
   17868:	02068463          	beqz	a3,17890 <__lo0bits+0x84>
   1786c:	0017f693          	and	a3,a5,1
   17870:	00069c63          	bnez	a3,17888 <__lo0bits+0x7c>
   17874:	0017d79b          	srlw	a5,a5,0x1
   17878:	0015051b          	addw	a0,a0,1
   1787c:	00079663          	bnez	a5,17888 <__lo0bits+0x7c>
   17880:	02000513          	li	a0,32
   17884:	00008067          	ret
   17888:	00f72023          	sw	a5,0(a4)
   1788c:	00008067          	ret
   17890:	0027d79b          	srlw	a5,a5,0x2
   17894:	0017f693          	and	a3,a5,1
   17898:	0025051b          	addw	a0,a0,2
   1789c:	fe0696e3          	bnez	a3,17888 <__lo0bits+0x7c>
   178a0:	fd5ff06f          	j	17874 <__lo0bits+0x68>
   178a4:	0047d79b          	srlw	a5,a5,0x4
   178a8:	0037f693          	and	a3,a5,3
   178ac:	0045051b          	addw	a0,a0,4
   178b0:	fa069ee3          	bnez	a3,1786c <__lo0bits+0x60>
   178b4:	fddff06f          	j	17890 <__lo0bits+0x84>
   178b8:	0087d79b          	srlw	a5,a5,0x8
   178bc:	00f7f693          	and	a3,a5,15
   178c0:	0085051b          	addw	a0,a0,8
   178c4:	fa0690e3          	bnez	a3,17864 <__lo0bits+0x58>
   178c8:	fddff06f          	j	178a4 <__lo0bits+0x98>
   178cc:	0107d79b          	srlw	a5,a5,0x10
   178d0:	0ff7f693          	zext.b	a3,a5
   178d4:	01000513          	li	a0,16
   178d8:	f80692e3          	bnez	a3,1785c <__lo0bits+0x50>
   178dc:	fddff06f          	j	178b8 <__lo0bits+0xac>
   178e0:	0027d79b          	srlw	a5,a5,0x2
   178e4:	00f72023          	sw	a5,0(a4)
   178e8:	00200513          	li	a0,2
   178ec:	00008067          	ret

00000000000178f0 <__i2b>:
   178f0:	07853783          	ld	a5,120(a0)
   178f4:	fe010113          	add	sp,sp,-32
   178f8:	00813823          	sd	s0,16(sp)
   178fc:	00913423          	sd	s1,8(sp)
   17900:	00113c23          	sd	ra,24(sp)
   17904:	00050413          	mv	s0,a0
   17908:	00058493          	mv	s1,a1
   1790c:	02078c63          	beqz	a5,17944 <__i2b+0x54>
   17910:	0087b503          	ld	a0,8(a5)
   17914:	06050263          	beqz	a0,17978 <__i2b+0x88>
   17918:	00053703          	ld	a4,0(a0)
   1791c:	00e7b423          	sd	a4,8(a5)
   17920:	01813083          	ld	ra,24(sp)
   17924:	01013403          	ld	s0,16(sp)
   17928:	00100793          	li	a5,1
   1792c:	02079793          	sll	a5,a5,0x20
   17930:	00952c23          	sw	s1,24(a0)
   17934:	00f53823          	sd	a5,16(a0)
   17938:	00813483          	ld	s1,8(sp)
   1793c:	02010113          	add	sp,sp,32
   17940:	00008067          	ret
   17944:	04100613          	li	a2,65
   17948:	00800593          	li	a1,8
   1794c:	078050ef          	jal	1c9c4 <_calloc_r>
   17950:	06a43c23          	sd	a0,120(s0)
   17954:	00050793          	mv	a5,a0
   17958:	fa051ce3          	bnez	a0,17910 <__i2b+0x20>
   1795c:	000226b7          	lui	a3,0x22
   17960:	00022537          	lui	a0,0x22
   17964:	ff068693          	add	a3,a3,-16 # 21ff0 <blanks.1+0x78>
   17968:	00000613          	li	a2,0
   1796c:	14000593          	li	a1,320
   17970:	2d850513          	add	a0,a0,728 # 222d8 <ezero+0x30>
   17974:	7d5040ef          	jal	1c948 <__assert_func>
   17978:	02400613          	li	a2,36
   1797c:	00100593          	li	a1,1
   17980:	00040513          	mv	a0,s0
   17984:	040050ef          	jal	1c9c4 <_calloc_r>
   17988:	fc050ae3          	beqz	a0,1795c <__i2b+0x6c>
   1798c:	00100793          	li	a5,1
   17990:	02179793          	sll	a5,a5,0x21
   17994:	00178793          	add	a5,a5,1
   17998:	00f53423          	sd	a5,8(a0)
   1799c:	f85ff06f          	j	17920 <__i2b+0x30>

00000000000179a0 <__multiply>:
   179a0:	f7010113          	add	sp,sp,-144
   179a4:	07213823          	sd	s2,112(sp)
   179a8:	05713423          	sd	s7,72(sp)
   179ac:	01462903          	lw	s2,20(a2)
   179b0:	0145ab83          	lw	s7,20(a1)
   179b4:	08813023          	sd	s0,128(sp)
   179b8:	07313423          	sd	s3,104(sp)
   179bc:	08113423          	sd	ra,136(sp)
   179c0:	06913c23          	sd	s1,120(sp)
   179c4:	07413023          	sd	s4,96(sp)
   179c8:	05513c23          	sd	s5,88(sp)
   179cc:	05613823          	sd	s6,80(sp)
   179d0:	05813023          	sd	s8,64(sp)
   179d4:	03913c23          	sd	s9,56(sp)
   179d8:	03a13823          	sd	s10,48(sp)
   179dc:	03b13423          	sd	s11,40(sp)
   179e0:	00058993          	mv	s3,a1
   179e4:	00060413          	mv	s0,a2
   179e8:	012bcc63          	blt	s7,s2,17a00 <__multiply+0x60>
   179ec:	00090793          	mv	a5,s2
   179f0:	00058413          	mv	s0,a1
   179f4:	000b8913          	mv	s2,s7
   179f8:	00060993          	mv	s3,a2
   179fc:	00078b93          	mv	s7,a5
   17a00:	00c42783          	lw	a5,12(s0)
   17a04:	01790b3b          	addw	s6,s2,s7
   17a08:	00842583          	lw	a1,8(s0)
   17a0c:	0167d463          	bge	a5,s6,17a14 <__multiply+0x74>
   17a10:	0015859b          	addw	a1,a1,1
   17a14:	9d1ff0ef          	jal	173e4 <_Balloc>
   17a18:	00a13c23          	sd	a0,24(sp)
   17a1c:	20050e63          	beqz	a0,17c38 <__multiply+0x298>
   17a20:	01813783          	ld	a5,24(sp)
   17a24:	002b1a13          	sll	s4,s6,0x2
   17a28:	01878a93          	add	s5,a5,24
   17a2c:	014a8a33          	add	s4,s5,s4
   17a30:	000a8793          	mv	a5,s5
   17a34:	014af863          	bgeu	s5,s4,17a44 <__multiply+0xa4>
   17a38:	0007a023          	sw	zero,0(a5)
   17a3c:	00478793          	add	a5,a5,4
   17a40:	ff47ece3          	bltu	a5,s4,17a38 <__multiply+0x98>
   17a44:	01898993          	add	s3,s3,24
   17a48:	002b9b93          	sll	s7,s7,0x2
   17a4c:	01840793          	add	a5,s0,24
   17a50:	01798733          	add	a4,s3,s7
   17a54:	00291913          	sll	s2,s2,0x2
   17a58:	00f13823          	sd	a5,16(sp)
   17a5c:	00e13023          	sd	a4,0(sp)
   17a60:	01278933          	add	s2,a5,s2
   17a64:	14e9fc63          	bgeu	s3,a4,17bbc <__multiply+0x21c>
   17a68:	00400713          	li	a4,4
   17a6c:	01940793          	add	a5,s0,25
   17a70:	00e13423          	sd	a4,8(sp)
   17a74:	1af97663          	bgeu	s2,a5,17c20 <__multiply+0x280>
   17a78:	00010437          	lui	s0,0x10
   17a7c:	fff40413          	add	s0,s0,-1 # ffff <exit-0xe9>
   17a80:	01c0006f          	j	17a9c <__multiply+0xfc>
   17a84:	010ddd9b          	srlw	s11,s11,0x10
   17a88:	0a0d9263          	bnez	s11,17b2c <__multiply+0x18c>
   17a8c:	00013783          	ld	a5,0(sp)
   17a90:	00498993          	add	s3,s3,4
   17a94:	004a8a93          	add	s5,s5,4
   17a98:	12f9f263          	bgeu	s3,a5,17bbc <__multiply+0x21c>
   17a9c:	0009ad83          	lw	s11,0(s3)
   17aa0:	008df4b3          	and	s1,s11,s0
   17aa4:	fe0480e3          	beqz	s1,17a84 <__multiply+0xe4>
   17aa8:	01013c03          	ld	s8,16(sp)
   17aac:	000a8c93          	mv	s9,s5
   17ab0:	00000b93          	li	s7,0
   17ab4:	000c2d03          	lw	s10,0(s8)
   17ab8:	000cad83          	lw	s11,0(s9)
   17abc:	00048593          	mv	a1,s1
   17ac0:	008d7533          	and	a0,s10,s0
   17ac4:	0a40a0ef          	jal	21b68 <__muldi3>
   17ac8:	008df733          	and	a4,s11,s0
   17acc:	00e5073b          	addw	a4,a0,a4
   17ad0:	00048593          	mv	a1,s1
   17ad4:	010d551b          	srlw	a0,s10,0x10
   17ad8:	01770bbb          	addw	s7,a4,s7
   17adc:	010ddd9b          	srlw	s11,s11,0x10
   17ae0:	0880a0ef          	jal	21b68 <__muldi3>
   17ae4:	010bd79b          	srlw	a5,s7,0x10
   17ae8:	00ad8dbb          	addw	s11,s11,a0
   17aec:	00fd87bb          	addw	a5,s11,a5
   17af0:	01747733          	and	a4,s0,s7
   17af4:	0107959b          	sllw	a1,a5,0x10
   17af8:	00b76733          	or	a4,a4,a1
   17afc:	00eca023          	sw	a4,0(s9)
   17b00:	004c0c13          	add	s8,s8,4
   17b04:	004c8c93          	add	s9,s9,4
   17b08:	0107d71b          	srlw	a4,a5,0x10
   17b0c:	0107db9b          	srlw	s7,a5,0x10
   17b10:	fb2c62e3          	bltu	s8,s2,17ab4 <__multiply+0x114>
   17b14:	00813783          	ld	a5,8(sp)
   17b18:	00fa87b3          	add	a5,s5,a5
   17b1c:	00e7a023          	sw	a4,0(a5)
   17b20:	0009ad83          	lw	s11,0(s3)
   17b24:	010ddd9b          	srlw	s11,s11,0x10
   17b28:	f60d82e3          	beqz	s11,17a8c <__multiply+0xec>
   17b2c:	000aad03          	lw	s10,0(s5)
   17b30:	01013c83          	ld	s9,16(sp)
   17b34:	000a8b93          	mv	s7,s5
   17b38:	000d0493          	mv	s1,s10
   17b3c:	00000c13          	li	s8,0
   17b40:	000ca503          	lw	a0,0(s9)
   17b44:	000d8593          	mv	a1,s11
   17b48:	0104d49b          	srlw	s1,s1,0x10
   17b4c:	00857533          	and	a0,a0,s0
   17b50:	0180a0ef          	jal	21b68 <__muldi3>
   17b54:	018507bb          	addw	a5,a0,s8
   17b58:	00978c3b          	addw	s8,a5,s1
   17b5c:	010c159b          	sllw	a1,s8,0x10
   17b60:	008d7733          	and	a4,s10,s0
   17b64:	00b76733          	or	a4,a4,a1
   17b68:	00eba023          	sw	a4,0(s7)
   17b6c:	002cd503          	lhu	a0,2(s9)
   17b70:	004ba483          	lw	s1,4(s7)
   17b74:	000d8593          	mv	a1,s11
   17b78:	7f1090ef          	jal	21b68 <__muldi3>
   17b7c:	0084f733          	and	a4,s1,s0
   17b80:	010c579b          	srlw	a5,s8,0x10
   17b84:	00e5053b          	addw	a0,a0,a4
   17b88:	00f5053b          	addw	a0,a0,a5
   17b8c:	004c8c93          	add	s9,s9,4
   17b90:	004b8b93          	add	s7,s7,4
   17b94:	00050d1b          	sext.w	s10,a0
   17b98:	01055c1b          	srlw	s8,a0,0x10
   17b9c:	fb2ce2e3          	bltu	s9,s2,17b40 <__multiply+0x1a0>
   17ba0:	00813783          	ld	a5,8(sp)
   17ba4:	00498993          	add	s3,s3,4
   17ba8:	00fa87b3          	add	a5,s5,a5
   17bac:	00a7a023          	sw	a0,0(a5)
   17bb0:	00013783          	ld	a5,0(sp)
   17bb4:	004a8a93          	add	s5,s5,4
   17bb8:	eef9e2e3          	bltu	s3,a5,17a9c <__multiply+0xfc>
   17bbc:	01604863          	bgtz	s6,17bcc <__multiply+0x22c>
   17bc0:	0180006f          	j	17bd8 <__multiply+0x238>
   17bc4:	fffb0b1b          	addw	s6,s6,-1
   17bc8:	000b0863          	beqz	s6,17bd8 <__multiply+0x238>
   17bcc:	ffca2783          	lw	a5,-4(s4)
   17bd0:	ffca0a13          	add	s4,s4,-4
   17bd4:	fe0788e3          	beqz	a5,17bc4 <__multiply+0x224>
   17bd8:	01813783          	ld	a5,24(sp)
   17bdc:	08813083          	ld	ra,136(sp)
   17be0:	08013403          	ld	s0,128(sp)
   17be4:	0167aa23          	sw	s6,20(a5)
   17be8:	07813483          	ld	s1,120(sp)
   17bec:	07013903          	ld	s2,112(sp)
   17bf0:	06813983          	ld	s3,104(sp)
   17bf4:	06013a03          	ld	s4,96(sp)
   17bf8:	05813a83          	ld	s5,88(sp)
   17bfc:	05013b03          	ld	s6,80(sp)
   17c00:	04813b83          	ld	s7,72(sp)
   17c04:	04013c03          	ld	s8,64(sp)
   17c08:	03813c83          	ld	s9,56(sp)
   17c0c:	03013d03          	ld	s10,48(sp)
   17c10:	02813d83          	ld	s11,40(sp)
   17c14:	00078513          	mv	a0,a5
   17c18:	09010113          	add	sp,sp,144
   17c1c:	00008067          	ret
   17c20:	408907b3          	sub	a5,s2,s0
   17c24:	fe778793          	add	a5,a5,-25
   17c28:	ffc7f793          	and	a5,a5,-4
   17c2c:	00478793          	add	a5,a5,4
   17c30:	00f13423          	sd	a5,8(sp)
   17c34:	e45ff06f          	j	17a78 <__multiply+0xd8>
   17c38:	000226b7          	lui	a3,0x22
   17c3c:	00022537          	lui	a0,0x22
   17c40:	ff068693          	add	a3,a3,-16 # 21ff0 <blanks.1+0x78>
   17c44:	00000613          	li	a2,0
   17c48:	15d00593          	li	a1,349
   17c4c:	2d850513          	add	a0,a0,728 # 222d8 <ezero+0x30>
   17c50:	4f9040ef          	jal	1c948 <__assert_func>

0000000000017c54 <__pow5mult>:
   17c54:	fd010113          	add	sp,sp,-48
   17c58:	02813023          	sd	s0,32(sp)
   17c5c:	01213823          	sd	s2,16(sp)
   17c60:	01313423          	sd	s3,8(sp)
   17c64:	02113423          	sd	ra,40(sp)
   17c68:	00913c23          	sd	s1,24(sp)
   17c6c:	00367793          	and	a5,a2,3
   17c70:	00060413          	mv	s0,a2
   17c74:	00050993          	mv	s3,a0
   17c78:	00058913          	mv	s2,a1
   17c7c:	0a079a63          	bnez	a5,17d30 <__pow5mult+0xdc>
   17c80:	40245413          	sra	s0,s0,0x2
   17c84:	06040663          	beqz	s0,17cf0 <__pow5mult+0x9c>
   17c88:	0709b483          	ld	s1,112(s3)
   17c8c:	0c048663          	beqz	s1,17d58 <__pow5mult+0x104>
   17c90:	00147793          	and	a5,s0,1
   17c94:	02079063          	bnez	a5,17cb4 <__pow5mult+0x60>
   17c98:	40145413          	sra	s0,s0,0x1
   17c9c:	04040a63          	beqz	s0,17cf0 <__pow5mult+0x9c>
   17ca0:	0004b503          	ld	a0,0(s1)
   17ca4:	06050663          	beqz	a0,17d10 <__pow5mult+0xbc>
   17ca8:	00050493          	mv	s1,a0
   17cac:	00147793          	and	a5,s0,1
   17cb0:	fe0784e3          	beqz	a5,17c98 <__pow5mult+0x44>
   17cb4:	00048613          	mv	a2,s1
   17cb8:	00090593          	mv	a1,s2
   17cbc:	00098513          	mv	a0,s3
   17cc0:	ce1ff0ef          	jal	179a0 <__multiply>
   17cc4:	02090063          	beqz	s2,17ce4 <__pow5mult+0x90>
   17cc8:	00892703          	lw	a4,8(s2)
   17ccc:	0789b783          	ld	a5,120(s3)
   17cd0:	00371713          	sll	a4,a4,0x3
   17cd4:	00e787b3          	add	a5,a5,a4
   17cd8:	0007b703          	ld	a4,0(a5)
   17cdc:	00e93023          	sd	a4,0(s2)
   17ce0:	0127b023          	sd	s2,0(a5)
   17ce4:	40145413          	sra	s0,s0,0x1
   17ce8:	00050913          	mv	s2,a0
   17cec:	fa041ae3          	bnez	s0,17ca0 <__pow5mult+0x4c>
   17cf0:	02813083          	ld	ra,40(sp)
   17cf4:	02013403          	ld	s0,32(sp)
   17cf8:	01813483          	ld	s1,24(sp)
   17cfc:	00813983          	ld	s3,8(sp)
   17d00:	00090513          	mv	a0,s2
   17d04:	01013903          	ld	s2,16(sp)
   17d08:	03010113          	add	sp,sp,48
   17d0c:	00008067          	ret
   17d10:	00048613          	mv	a2,s1
   17d14:	00048593          	mv	a1,s1
   17d18:	00098513          	mv	a0,s3
   17d1c:	c85ff0ef          	jal	179a0 <__multiply>
   17d20:	00a4b023          	sd	a0,0(s1)
   17d24:	00053023          	sd	zero,0(a0)
   17d28:	00050493          	mv	s1,a0
   17d2c:	f81ff06f          	j	17cac <__pow5mult+0x58>
   17d30:	fff7879b          	addw	a5,a5,-1
   17d34:	00022737          	lui	a4,0x22
   17d38:	32070713          	add	a4,a4,800 # 22320 <p05.0>
   17d3c:	00279793          	sll	a5,a5,0x2
   17d40:	00f707b3          	add	a5,a4,a5
   17d44:	0007a603          	lw	a2,0(a5)
   17d48:	00000693          	li	a3,0
   17d4c:	f68ff0ef          	jal	174b4 <__multadd>
   17d50:	00050913          	mv	s2,a0
   17d54:	f2dff06f          	j	17c80 <__pow5mult+0x2c>
   17d58:	00100593          	li	a1,1
   17d5c:	00098513          	mv	a0,s3
   17d60:	e84ff0ef          	jal	173e4 <_Balloc>
   17d64:	00050493          	mv	s1,a0
   17d68:	02050063          	beqz	a0,17d88 <__pow5mult+0x134>
   17d6c:	27100793          	li	a5,625
   17d70:	00f52c23          	sw	a5,24(a0)
   17d74:	00100793          	li	a5,1
   17d78:	00f52a23          	sw	a5,20(a0)
   17d7c:	06a9b823          	sd	a0,112(s3)
   17d80:	00053023          	sd	zero,0(a0)
   17d84:	f0dff06f          	j	17c90 <__pow5mult+0x3c>
   17d88:	000226b7          	lui	a3,0x22
   17d8c:	00022537          	lui	a0,0x22
   17d90:	ff068693          	add	a3,a3,-16 # 21ff0 <blanks.1+0x78>
   17d94:	00000613          	li	a2,0
   17d98:	14000593          	li	a1,320
   17d9c:	2d850513          	add	a0,a0,728 # 222d8 <ezero+0x30>
   17da0:	3a9040ef          	jal	1c948 <__assert_func>

0000000000017da4 <__lshift>:
   17da4:	fc010113          	add	sp,sp,-64
   17da8:	02813823          	sd	s0,48(sp)
   17dac:	0145a403          	lw	s0,20(a1)
   17db0:	00c5a783          	lw	a5,12(a1)
   17db4:	01513423          	sd	s5,8(sp)
   17db8:	40565a9b          	sraw	s5,a2,0x5
   17dbc:	008a843b          	addw	s0,s5,s0
   17dc0:	02913423          	sd	s1,40(sp)
   17dc4:	03213023          	sd	s2,32(sp)
   17dc8:	01313c23          	sd	s3,24(sp)
   17dcc:	01413823          	sd	s4,16(sp)
   17dd0:	01613023          	sd	s6,0(sp)
   17dd4:	02113c23          	sd	ra,56(sp)
   17dd8:	0014091b          	addw	s2,s0,1
   17ddc:	00058493          	mv	s1,a1
   17de0:	00060a13          	mv	s4,a2
   17de4:	0085a583          	lw	a1,8(a1)
   17de8:	00050993          	mv	s3,a0
   17dec:	40565b13          	sra	s6,a2,0x5
   17df0:	0127d863          	bge	a5,s2,17e00 <__lshift+0x5c>
   17df4:	0017979b          	sllw	a5,a5,0x1
   17df8:	0015859b          	addw	a1,a1,1
   17dfc:	ff27cce3          	blt	a5,s2,17df4 <__lshift+0x50>
   17e00:	00098513          	mv	a0,s3
   17e04:	de0ff0ef          	jal	173e4 <_Balloc>
   17e08:	12050263          	beqz	a0,17f2c <__lshift+0x188>
   17e0c:	01850713          	add	a4,a0,24
   17e10:	03605663          	blez	s6,17e3c <__lshift+0x98>
   17e14:	006a869b          	addw	a3,s5,6
   17e18:	00269693          	sll	a3,a3,0x2
   17e1c:	00d506b3          	add	a3,a0,a3
   17e20:	00070793          	mv	a5,a4
   17e24:	00478793          	add	a5,a5,4
   17e28:	fe07ae23          	sw	zero,-4(a5)
   17e2c:	fef69ce3          	bne	a3,a5,17e24 <__lshift+0x80>
   17e30:	020a9793          	sll	a5,s5,0x20
   17e34:	01e7da93          	srl	s5,a5,0x1e
   17e38:	01570733          	add	a4,a4,s5
   17e3c:	0144a883          	lw	a7,20(s1)
   17e40:	01848793          	add	a5,s1,24
   17e44:	01fa7613          	and	a2,s4,31
   17e48:	00289893          	sll	a7,a7,0x2
   17e4c:	011788b3          	add	a7,a5,a7
   17e50:	0a060863          	beqz	a2,17f00 <__lshift+0x15c>
   17e54:	02000593          	li	a1,32
   17e58:	40c585bb          	subw	a1,a1,a2
   17e5c:	00070313          	mv	t1,a4
   17e60:	00000693          	li	a3,0
   17e64:	0007a803          	lw	a6,0(a5)
   17e68:	00430313          	add	t1,t1,4
   17e6c:	00478793          	add	a5,a5,4
   17e70:	00c8183b          	sllw	a6,a6,a2
   17e74:	0106e6b3          	or	a3,a3,a6
   17e78:	fed32e23          	sw	a3,-4(t1)
   17e7c:	ffc7a803          	lw	a6,-4(a5)
   17e80:	00b856bb          	srlw	a3,a6,a1
   17e84:	00068813          	mv	a6,a3
   17e88:	fd17eee3          	bltu	a5,a7,17e64 <__lshift+0xc0>
   17e8c:	01948793          	add	a5,s1,25
   17e90:	00400613          	li	a2,4
   17e94:	00f8ea63          	bltu	a7,a5,17ea8 <__lshift+0x104>
   17e98:	409887b3          	sub	a5,a7,s1
   17e9c:	fe778793          	add	a5,a5,-25
   17ea0:	ffc7f793          	and	a5,a5,-4
   17ea4:	00478613          	add	a2,a5,4
   17ea8:	00c70733          	add	a4,a4,a2
   17eac:	01072023          	sw	a6,0(a4)
   17eb0:	00069463          	bnez	a3,17eb8 <__lshift+0x114>
   17eb4:	00040913          	mv	s2,s0
   17eb8:	0084a703          	lw	a4,8(s1)
   17ebc:	0789b783          	ld	a5,120(s3)
   17ec0:	03813083          	ld	ra,56(sp)
   17ec4:	00371713          	sll	a4,a4,0x3
   17ec8:	00e787b3          	add	a5,a5,a4
   17ecc:	0007b703          	ld	a4,0(a5)
   17ed0:	01252a23          	sw	s2,20(a0)
   17ed4:	03013403          	ld	s0,48(sp)
   17ed8:	00e4b023          	sd	a4,0(s1)
   17edc:	0097b023          	sd	s1,0(a5)
   17ee0:	02013903          	ld	s2,32(sp)
   17ee4:	02813483          	ld	s1,40(sp)
   17ee8:	01813983          	ld	s3,24(sp)
   17eec:	01013a03          	ld	s4,16(sp)
   17ef0:	00813a83          	ld	s5,8(sp)
   17ef4:	00013b03          	ld	s6,0(sp)
   17ef8:	04010113          	add	sp,sp,64
   17efc:	00008067          	ret
   17f00:	0007a683          	lw	a3,0(a5)
   17f04:	00478793          	add	a5,a5,4
   17f08:	00470713          	add	a4,a4,4
   17f0c:	fed72e23          	sw	a3,-4(a4)
   17f10:	fb17f2e3          	bgeu	a5,a7,17eb4 <__lshift+0x110>
   17f14:	0007a683          	lw	a3,0(a5)
   17f18:	00478793          	add	a5,a5,4
   17f1c:	00470713          	add	a4,a4,4
   17f20:	fed72e23          	sw	a3,-4(a4)
   17f24:	fd17eee3          	bltu	a5,a7,17f00 <__lshift+0x15c>
   17f28:	f8dff06f          	j	17eb4 <__lshift+0x110>
   17f2c:	000226b7          	lui	a3,0x22
   17f30:	00022537          	lui	a0,0x22
   17f34:	ff068693          	add	a3,a3,-16 # 21ff0 <blanks.1+0x78>
   17f38:	00000613          	li	a2,0
   17f3c:	1d900593          	li	a1,473
   17f40:	2d850513          	add	a0,a0,728 # 222d8 <ezero+0x30>
   17f44:	205040ef          	jal	1c948 <__assert_func>

0000000000017f48 <__mcmp>:
   17f48:	0145a783          	lw	a5,20(a1)
   17f4c:	00050813          	mv	a6,a0
   17f50:	01452503          	lw	a0,20(a0)
   17f54:	40f5053b          	subw	a0,a0,a5
   17f58:	04051263          	bnez	a0,17f9c <__mcmp+0x54>
   17f5c:	00279793          	sll	a5,a5,0x2
   17f60:	01880813          	add	a6,a6,24
   17f64:	01858593          	add	a1,a1,24
   17f68:	00f80733          	add	a4,a6,a5
   17f6c:	00f587b3          	add	a5,a1,a5
   17f70:	0080006f          	j	17f78 <__mcmp+0x30>
   17f74:	02e87463          	bgeu	a6,a4,17f9c <__mcmp+0x54>
   17f78:	ffc72603          	lw	a2,-4(a4)
   17f7c:	ffc7a683          	lw	a3,-4(a5)
   17f80:	ffc70713          	add	a4,a4,-4
   17f84:	ffc78793          	add	a5,a5,-4
   17f88:	fed606e3          	beq	a2,a3,17f74 <__mcmp+0x2c>
   17f8c:	00100513          	li	a0,1
   17f90:	00d67663          	bgeu	a2,a3,17f9c <__mcmp+0x54>
   17f94:	fff00513          	li	a0,-1
   17f98:	00008067          	ret
   17f9c:	00008067          	ret

0000000000017fa0 <__mdiff>:
   17fa0:	fe010113          	add	sp,sp,-32
   17fa4:	01462783          	lw	a5,20(a2)
   17fa8:	01213023          	sd	s2,0(sp)
   17fac:	0145a903          	lw	s2,20(a1)
   17fb0:	00813823          	sd	s0,16(sp)
   17fb4:	00913423          	sd	s1,8(sp)
   17fb8:	00113c23          	sd	ra,24(sp)
   17fbc:	40f9093b          	subw	s2,s2,a5
   17fc0:	00058493          	mv	s1,a1
   17fc4:	00060413          	mv	s0,a2
   17fc8:	04091663          	bnez	s2,18014 <__mdiff+0x74>
   17fcc:	00279693          	sll	a3,a5,0x2
   17fd0:	01858593          	add	a1,a1,24
   17fd4:	01860713          	add	a4,a2,24
   17fd8:	00d587b3          	add	a5,a1,a3
   17fdc:	00d70733          	add	a4,a4,a3
   17fe0:	0080006f          	j	17fe8 <__mdiff+0x48>
   17fe4:	18f5fa63          	bgeu	a1,a5,18178 <__mdiff+0x1d8>
   17fe8:	ffc7a603          	lw	a2,-4(a5)
   17fec:	ffc72683          	lw	a3,-4(a4)
   17ff0:	ffc78793          	add	a5,a5,-4
   17ff4:	ffc70713          	add	a4,a4,-4
   17ff8:	fed606e3          	beq	a2,a3,17fe4 <__mdiff+0x44>
   17ffc:	02d67063          	bgeu	a2,a3,1801c <__mdiff+0x7c>
   18000:	00048793          	mv	a5,s1
   18004:	00100913          	li	s2,1
   18008:	00040493          	mv	s1,s0
   1800c:	00078413          	mv	s0,a5
   18010:	00c0006f          	j	1801c <__mdiff+0x7c>
   18014:	fe0946e3          	bltz	s2,18000 <__mdiff+0x60>
   18018:	00000913          	li	s2,0
   1801c:	0084a583          	lw	a1,8(s1)
   18020:	bc4ff0ef          	jal	173e4 <_Balloc>
   18024:	1a050e63          	beqz	a0,181e0 <__mdiff+0x240>
   18028:	0144a303          	lw	t1,20(s1)
   1802c:	01442f03          	lw	t5,20(s0)
   18030:	01848293          	add	t0,s1,24
   18034:	00231e13          	sll	t3,t1,0x2
   18038:	01840813          	add	a6,s0,24
   1803c:	002f1f13          	sll	t5,t5,0x2
   18040:	01850f93          	add	t6,a0,24
   18044:	000108b7          	lui	a7,0x10
   18048:	01252823          	sw	s2,16(a0)
   1804c:	01c28e33          	add	t3,t0,t3
   18050:	01e80f33          	add	t5,a6,t5
   18054:	000f8613          	mv	a2,t6
   18058:	00028e93          	mv	t4,t0
   1805c:	00000593          	li	a1,0
   18060:	fff88893          	add	a7,a7,-1 # ffff <exit-0xe9>
   18064:	000ea703          	lw	a4,0(t4)
   18068:	00082683          	lw	a3,0(a6)
   1806c:	00460613          	add	a2,a2,4
   18070:	011777b3          	and	a5,a4,a7
   18074:	0116f3b3          	and	t2,a3,a7
   18078:	407787bb          	subw	a5,a5,t2
   1807c:	00b787bb          	addw	a5,a5,a1
   18080:	0106d69b          	srlw	a3,a3,0x10
   18084:	0107571b          	srlw	a4,a4,0x10
   18088:	40d7073b          	subw	a4,a4,a3
   1808c:	4107d69b          	sraw	a3,a5,0x10
   18090:	00d7073b          	addw	a4,a4,a3
   18094:	00f8f7b3          	and	a5,a7,a5
   18098:	0107169b          	sllw	a3,a4,0x10
   1809c:	00d7e7b3          	or	a5,a5,a3
   180a0:	0007879b          	sext.w	a5,a5
   180a4:	00480813          	add	a6,a6,4
   180a8:	fef62e23          	sw	a5,-4(a2)
   180ac:	004e8e93          	add	t4,t4,4
   180b0:	4107559b          	sraw	a1,a4,0x10
   180b4:	fbe868e3          	bltu	a6,t5,18064 <__mdiff+0xc4>
   180b8:	408f0733          	sub	a4,t5,s0
   180bc:	fe770713          	add	a4,a4,-25
   180c0:	01940413          	add	s0,s0,25
   180c4:	00275e93          	srl	t4,a4,0x2
   180c8:	00400713          	li	a4,4
   180cc:	008f6663          	bltu	t5,s0,180d8 <__mdiff+0x138>
   180d0:	001e8713          	add	a4,t4,1
   180d4:	00271713          	sll	a4,a4,0x2
   180d8:	00e282b3          	add	t0,t0,a4
   180dc:	00ef8833          	add	a6,t6,a4
   180e0:	000108b7          	lui	a7,0x10
   180e4:	00080613          	mv	a2,a6
   180e8:	00028693          	mv	a3,t0
   180ec:	fff88893          	add	a7,a7,-1 # ffff <exit-0xe9>
   180f0:	0bc2fc63          	bgeu	t0,t3,181a8 <__mdiff+0x208>
   180f4:	0006a783          	lw	a5,0(a3)
   180f8:	00058e9b          	sext.w	t4,a1
   180fc:	00460613          	add	a2,a2,4
   18100:	0117f733          	and	a4,a5,a7
   18104:	00b7073b          	addw	a4,a4,a1
   18108:	4107571b          	sraw	a4,a4,0x10
   1810c:	0107d59b          	srlw	a1,a5,0x10
   18110:	00b7073b          	addw	a4,a4,a1
   18114:	01d787bb          	addw	a5,a5,t4
   18118:	0107159b          	sllw	a1,a4,0x10
   1811c:	0117f7b3          	and	a5,a5,a7
   18120:	00b7e7b3          	or	a5,a5,a1
   18124:	0007879b          	sext.w	a5,a5
   18128:	00468693          	add	a3,a3,4
   1812c:	fef62e23          	sw	a5,-4(a2)
   18130:	4107559b          	sraw	a1,a4,0x10
   18134:	fdc6e0e3          	bltu	a3,t3,180f4 <__mdiff+0x154>
   18138:	fffe0e13          	add	t3,t3,-1
   1813c:	405e0e33          	sub	t3,t3,t0
   18140:	ffce7e13          	and	t3,t3,-4
   18144:	01c80733          	add	a4,a6,t3
   18148:	00079a63          	bnez	a5,1815c <__mdiff+0x1bc>
   1814c:	ffc72783          	lw	a5,-4(a4)
   18150:	fff3031b          	addw	t1,t1,-1
   18154:	ffc70713          	add	a4,a4,-4
   18158:	fe078ae3          	beqz	a5,1814c <__mdiff+0x1ac>
   1815c:	01813083          	ld	ra,24(sp)
   18160:	01013403          	ld	s0,16(sp)
   18164:	00652a23          	sw	t1,20(a0)
   18168:	00813483          	ld	s1,8(sp)
   1816c:	00013903          	ld	s2,0(sp)
   18170:	02010113          	add	sp,sp,32
   18174:	00008067          	ret
   18178:	00000593          	li	a1,0
   1817c:	a68ff0ef          	jal	173e4 <_Balloc>
   18180:	04050263          	beqz	a0,181c4 <__mdiff+0x224>
   18184:	01813083          	ld	ra,24(sp)
   18188:	01013403          	ld	s0,16(sp)
   1818c:	00100793          	li	a5,1
   18190:	00f52a23          	sw	a5,20(a0)
   18194:	00052c23          	sw	zero,24(a0)
   18198:	00813483          	ld	s1,8(sp)
   1819c:	00013903          	ld	s2,0(sp)
   181a0:	02010113          	add	sp,sp,32
   181a4:	00008067          	ret
   181a8:	00000713          	li	a4,0
   181ac:	008f7663          	bgeu	t5,s0,181b8 <__mdiff+0x218>
   181b0:	00ef8733          	add	a4,t6,a4
   181b4:	f95ff06f          	j	18148 <__mdiff+0x1a8>
   181b8:	002e9713          	sll	a4,t4,0x2
   181bc:	00ef8733          	add	a4,t6,a4
   181c0:	f89ff06f          	j	18148 <__mdiff+0x1a8>
   181c4:	000226b7          	lui	a3,0x22
   181c8:	00022537          	lui	a0,0x22
   181cc:	ff068693          	add	a3,a3,-16 # 21ff0 <blanks.1+0x78>
   181d0:	00000613          	li	a2,0
   181d4:	23200593          	li	a1,562
   181d8:	2d850513          	add	a0,a0,728 # 222d8 <ezero+0x30>
   181dc:	76c040ef          	jal	1c948 <__assert_func>
   181e0:	000226b7          	lui	a3,0x22
   181e4:	00022537          	lui	a0,0x22
   181e8:	ff068693          	add	a3,a3,-16 # 21ff0 <blanks.1+0x78>
   181ec:	00000613          	li	a2,0
   181f0:	24000593          	li	a1,576
   181f4:	2d850513          	add	a0,a0,728 # 222d8 <ezero+0x30>
   181f8:	750040ef          	jal	1c948 <__assert_func>

00000000000181fc <__ulp>:
   181fc:	7ff007b7          	lui	a5,0x7ff00
   18200:	02055513          	srl	a0,a0,0x20
   18204:	00f57533          	and	a0,a0,a5
   18208:	fcc007b7          	lui	a5,0xfcc00
   1820c:	00a7873b          	addw	a4,a5,a0
   18210:	00000513          	li	a0,0
   18214:	00e05c63          	blez	a4,1822c <__ulp+0x30>
   18218:	02051513          	sll	a0,a0,0x20
   1821c:	02071713          	sll	a4,a4,0x20
   18220:	02055513          	srl	a0,a0,0x20
   18224:	00e56533          	or	a0,a0,a4
   18228:	00008067          	ret
   1822c:	40e007bb          	negw	a5,a4
   18230:	4147d69b          	sraw	a3,a5,0x14
   18234:	01300713          	li	a4,19
   18238:	02d74263          	blt	a4,a3,1825c <__ulp+0x60>
   1823c:	00080737          	lui	a4,0x80
   18240:	00000513          	li	a0,0
   18244:	40d7573b          	sraw	a4,a4,a3
   18248:	02051513          	sll	a0,a0,0x20
   1824c:	02071713          	sll	a4,a4,0x20
   18250:	02055513          	srl	a0,a0,0x20
   18254:	00e56533          	or	a0,a0,a4
   18258:	00008067          	ret
   1825c:	fec6879b          	addw	a5,a3,-20
   18260:	01e00713          	li	a4,30
   18264:	00100513          	li	a0,1
   18268:	00f74663          	blt	a4,a5,18274 <__ulp+0x78>
   1826c:	80000537          	lui	a0,0x80000
   18270:	00f5553b          	srlw	a0,a0,a5
   18274:	00000713          	li	a4,0
   18278:	02051513          	sll	a0,a0,0x20
   1827c:	02071713          	sll	a4,a4,0x20
   18280:	02055513          	srl	a0,a0,0x20
   18284:	00e56533          	or	a0,a0,a4
   18288:	00008067          	ret

000000000001828c <__b2d>:
   1828c:	fd010113          	add	sp,sp,-48
   18290:	00913c23          	sd	s1,24(sp)
   18294:	01452483          	lw	s1,20(a0) # ffffffff80000014 <__BSS_END__+0xffffffff7ffdb1fc>
   18298:	02813023          	sd	s0,32(sp)
   1829c:	01850413          	add	s0,a0,24
   182a0:	00249493          	sll	s1,s1,0x2
   182a4:	009404b3          	add	s1,s0,s1
   182a8:	01213823          	sd	s2,16(sp)
   182ac:	ffc4a903          	lw	s2,-4(s1)
   182b0:	01313423          	sd	s3,8(sp)
   182b4:	01413023          	sd	s4,0(sp)
   182b8:	00090513          	mv	a0,s2
   182bc:	00058993          	mv	s3,a1
   182c0:	02113423          	sd	ra,40(sp)
   182c4:	cccff0ef          	jal	17790 <__hi0bits>
   182c8:	02000693          	li	a3,32
   182cc:	40a687bb          	subw	a5,a3,a0
   182d0:	00f9a023          	sw	a5,0(s3)
   182d4:	00a00793          	li	a5,10
   182d8:	ffc48a13          	add	s4,s1,-4
   182dc:	00050713          	mv	a4,a0
   182e0:	0aa7dc63          	bge	a5,a0,18398 <__b2d+0x10c>
   182e4:	ff55079b          	addw	a5,a0,-11
   182e8:	05447663          	bgeu	s0,s4,18334 <__b2d+0xa8>
   182ec:	ff84a703          	lw	a4,-8(s1)
   182f0:	06078463          	beqz	a5,18358 <__b2d+0xcc>
   182f4:	40f686bb          	subw	a3,a3,a5
   182f8:	00d7563b          	srlw	a2,a4,a3
   182fc:	00f9193b          	sllw	s2,s2,a5
   18300:	00c96933          	or	s2,s2,a2
   18304:	3ff00637          	lui	a2,0x3ff00
   18308:	00c96933          	or	s2,s2,a2
   1830c:	00f7163b          	sllw	a2,a4,a5
   18310:	ff848793          	add	a5,s1,-8
   18314:	02091513          	sll	a0,s2,0x20
   18318:	0006071b          	sext.w	a4,a2
   1831c:	04f47463          	bgeu	s0,a5,18364 <__b2d+0xd8>
   18320:	ff44a703          	lw	a4,-12(s1)
   18324:	00d7573b          	srlw	a4,a4,a3
   18328:	00c76733          	or	a4,a4,a2
   1832c:	0007071b          	sext.w	a4,a4
   18330:	0340006f          	j	18364 <__b2d+0xd8>
   18334:	00b00693          	li	a3,11
   18338:	00d50e63          	beq	a0,a3,18354 <__b2d+0xc8>
   1833c:	00f9153b          	sllw	a0,s2,a5
   18340:	3ff007b7          	lui	a5,0x3ff00
   18344:	00f56533          	or	a0,a0,a5
   18348:	02051513          	sll	a0,a0,0x20
   1834c:	00000713          	li	a4,0
   18350:	0140006f          	j	18364 <__b2d+0xd8>
   18354:	00000713          	li	a4,0
   18358:	3ff00537          	lui	a0,0x3ff00
   1835c:	00a96533          	or	a0,s2,a0
   18360:	02051513          	sll	a0,a0,0x20
   18364:	02813083          	ld	ra,40(sp)
   18368:	02013403          	ld	s0,32(sp)
   1836c:	02055513          	srl	a0,a0,0x20
   18370:	02071713          	sll	a4,a4,0x20
   18374:	02075713          	srl	a4,a4,0x20
   18378:	02051513          	sll	a0,a0,0x20
   1837c:	01813483          	ld	s1,24(sp)
   18380:	01013903          	ld	s2,16(sp)
   18384:	00813983          	ld	s3,8(sp)
   18388:	00013a03          	ld	s4,0(sp)
   1838c:	00e56533          	or	a0,a0,a4
   18390:	03010113          	add	sp,sp,48
   18394:	00008067          	ret
   18398:	00b00693          	li	a3,11
   1839c:	40a686bb          	subw	a3,a3,a0
   183a0:	00d957bb          	srlw	a5,s2,a3
   183a4:	3ff00637          	lui	a2,0x3ff00
   183a8:	00c7e7b3          	or	a5,a5,a2
   183ac:	02079513          	sll	a0,a5,0x20
   183b0:	00000793          	li	a5,0
   183b4:	01447663          	bgeu	s0,s4,183c0 <__b2d+0x134>
   183b8:	ff84a783          	lw	a5,-8(s1)
   183bc:	00d7d7bb          	srlw	a5,a5,a3
   183c0:	0157071b          	addw	a4,a4,21 # 80015 <__BSS_END__+0x5b1fd>
   183c4:	00e9173b          	sllw	a4,s2,a4
   183c8:	00e7e733          	or	a4,a5,a4
   183cc:	0007071b          	sext.w	a4,a4
   183d0:	f95ff06f          	j	18364 <__b2d+0xd8>

00000000000183d4 <__d2b>:
   183d4:	fc010113          	add	sp,sp,-64
   183d8:	02813823          	sd	s0,48(sp)
   183dc:	00058413          	mv	s0,a1
   183e0:	00100593          	li	a1,1
   183e4:	03213023          	sd	s2,32(sp)
   183e8:	01413823          	sd	s4,16(sp)
   183ec:	02113c23          	sd	ra,56(sp)
   183f0:	02913423          	sd	s1,40(sp)
   183f4:	01313c23          	sd	s3,24(sp)
   183f8:	00060a13          	mv	s4,a2
   183fc:	00068913          	mv	s2,a3
   18400:	fe5fe0ef          	jal	173e4 <_Balloc>
   18404:	10050063          	beqz	a0,18504 <__d2b+0x130>
   18408:	42045793          	sra	a5,s0,0x20
   1840c:	0147d99b          	srlw	s3,a5,0x14
   18410:	7ff9f993          	and	s3,s3,2047
   18414:	02c79793          	sll	a5,a5,0x2c
   18418:	00050493          	mv	s1,a0
   1841c:	02c7d793          	srl	a5,a5,0x2c
   18420:	00098663          	beqz	s3,1842c <__d2b+0x58>
   18424:	00100737          	lui	a4,0x100
   18428:	00e7e7b3          	or	a5,a5,a4
   1842c:	00f12623          	sw	a5,12(sp)
   18430:	0004041b          	sext.w	s0,s0
   18434:	06041063          	bnez	s0,18494 <__d2b+0xc0>
   18438:	00c10513          	add	a0,sp,12
   1843c:	bd0ff0ef          	jal	1780c <__lo0bits>
   18440:	00c12783          	lw	a5,12(sp)
   18444:	00100413          	li	s0,1
   18448:	0084aa23          	sw	s0,20(s1)
   1844c:	00f4ac23          	sw	a5,24(s1)
   18450:	0205051b          	addw	a0,a0,32 # 3ff00020 <__BSS_END__+0x3fedb208>
   18454:	08098663          	beqz	s3,184e0 <__d2b+0x10c>
   18458:	bcd9899b          	addw	s3,s3,-1075
   1845c:	00a989bb          	addw	s3,s3,a0
   18460:	03500413          	li	s0,53
   18464:	013a2023          	sw	s3,0(s4)
   18468:	40a4053b          	subw	a0,s0,a0
   1846c:	03813083          	ld	ra,56(sp)
   18470:	03013403          	ld	s0,48(sp)
   18474:	00a92023          	sw	a0,0(s2)
   18478:	01813983          	ld	s3,24(sp)
   1847c:	02013903          	ld	s2,32(sp)
   18480:	01013a03          	ld	s4,16(sp)
   18484:	00048513          	mv	a0,s1
   18488:	02813483          	ld	s1,40(sp)
   1848c:	04010113          	add	sp,sp,64
   18490:	00008067          	ret
   18494:	00810513          	add	a0,sp,8
   18498:	00812423          	sw	s0,8(sp)
   1849c:	b70ff0ef          	jal	1780c <__lo0bits>
   184a0:	00c12783          	lw	a5,12(sp)
   184a4:	00812703          	lw	a4,8(sp)
   184a8:	02050063          	beqz	a0,184c8 <__d2b+0xf4>
   184ac:	02000693          	li	a3,32
   184b0:	40a686bb          	subw	a3,a3,a0
   184b4:	00d796bb          	sllw	a3,a5,a3
   184b8:	00d76733          	or	a4,a4,a3
   184bc:	00a7d7bb          	srlw	a5,a5,a0
   184c0:	0007071b          	sext.w	a4,a4
   184c4:	00f12623          	sw	a5,12(sp)
   184c8:	00f03433          	snez	s0,a5
   184cc:	00140413          	add	s0,s0,1
   184d0:	00e4ac23          	sw	a4,24(s1)
   184d4:	00f4ae23          	sw	a5,28(s1)
   184d8:	0084aa23          	sw	s0,20(s1)
   184dc:	f6099ee3          	bnez	s3,18458 <__d2b+0x84>
   184e0:	bce5051b          	addw	a0,a0,-1074
   184e4:	00241793          	sll	a5,s0,0x2
   184e8:	00aa2023          	sw	a0,0(s4)
   184ec:	00f487b3          	add	a5,s1,a5
   184f0:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3fedb1fc>
   184f4:	0054141b          	sllw	s0,s0,0x5
   184f8:	a98ff0ef          	jal	17790 <__hi0bits>
   184fc:	40a4053b          	subw	a0,s0,a0
   18500:	f6dff06f          	j	1846c <__d2b+0x98>
   18504:	000226b7          	lui	a3,0x22
   18508:	00022537          	lui	a0,0x22
   1850c:	ff068693          	add	a3,a3,-16 # 21ff0 <blanks.1+0x78>
   18510:	00000613          	li	a2,0
   18514:	30a00593          	li	a1,778
   18518:	2d850513          	add	a0,a0,728 # 222d8 <ezero+0x30>
   1851c:	42c040ef          	jal	1c948 <__assert_func>

0000000000018520 <__ratio>:
   18520:	fd010113          	add	sp,sp,-48
   18524:	00913c23          	sd	s1,24(sp)
   18528:	00058493          	mv	s1,a1
   1852c:	00810593          	add	a1,sp,8
   18530:	02113423          	sd	ra,40(sp)
   18534:	02813023          	sd	s0,32(sp)
   18538:	01213823          	sd	s2,16(sp)
   1853c:	00050913          	mv	s2,a0
   18540:	d4dff0ef          	jal	1828c <__b2d>
   18544:	00c10593          	add	a1,sp,12
   18548:	00050413          	mv	s0,a0
   1854c:	00048513          	mv	a0,s1
   18550:	d3dff0ef          	jal	1828c <__b2d>
   18554:	01492783          	lw	a5,20(s2)
   18558:	0144a603          	lw	a2,20(s1)
   1855c:	00812703          	lw	a4,8(sp)
   18560:	00c12683          	lw	a3,12(sp)
   18564:	40c787bb          	subw	a5,a5,a2
   18568:	0057979b          	sllw	a5,a5,0x5
   1856c:	40d7073b          	subw	a4,a4,a3
   18570:	00e7873b          	addw	a4,a5,a4
   18574:	00070793          	mv	a5,a4
   18578:	00050593          	mv	a1,a0
   1857c:	04e05263          	blez	a4,185c0 <__ratio+0xa0>
   18580:	02045713          	srl	a4,s0,0x20
   18584:	0147979b          	sllw	a5,a5,0x14
   18588:	00e787bb          	addw	a5,a5,a4
   1858c:	fff00713          	li	a4,-1
   18590:	02075713          	srl	a4,a4,0x20
   18594:	02079793          	sll	a5,a5,0x20
   18598:	00877733          	and	a4,a4,s0
   1859c:	00f76433          	or	s0,a4,a5
   185a0:	00040513          	mv	a0,s0
   185a4:	035070ef          	jal	1fdd8 <__divdf3>
   185a8:	02813083          	ld	ra,40(sp)
   185ac:	02013403          	ld	s0,32(sp)
   185b0:	01813483          	ld	s1,24(sp)
   185b4:	01013903          	ld	s2,16(sp)
   185b8:	03010113          	add	sp,sp,48
   185bc:	00008067          	ret
   185c0:	02055713          	srl	a4,a0,0x20
   185c4:	0147979b          	sllw	a5,a5,0x14
   185c8:	40f707bb          	subw	a5,a4,a5
   185cc:	fff00713          	li	a4,-1
   185d0:	02075713          	srl	a4,a4,0x20
   185d4:	02079793          	sll	a5,a5,0x20
   185d8:	00a775b3          	and	a1,a4,a0
   185dc:	00f5e5b3          	or	a1,a1,a5
   185e0:	fc1ff06f          	j	185a0 <__ratio+0x80>

00000000000185e4 <_mprec_log10>:
   185e4:	fe010113          	add	sp,sp,-32
   185e8:	00813823          	sd	s0,16(sp)
   185ec:	00113c23          	sd	ra,24(sp)
   185f0:	00913423          	sd	s1,8(sp)
   185f4:	01700793          	li	a5,23
   185f8:	00050413          	mv	s0,a0
   185fc:	02a7d863          	bge	a5,a0,1862c <_mprec_log10+0x48>
   18600:	7281b503          	ld	a0,1832(gp) # 24d40 <__SDATA_BEGIN__+0x10>
   18604:	7301b483          	ld	s1,1840(gp) # 24d48 <__SDATA_BEGIN__+0x18>
   18608:	00048593          	mv	a1,s1
   1860c:	fff4041b          	addw	s0,s0,-1
   18610:	36d070ef          	jal	2017c <__muldf3>
   18614:	fe041ae3          	bnez	s0,18608 <_mprec_log10+0x24>
   18618:	01813083          	ld	ra,24(sp)
   1861c:	01013403          	ld	s0,16(sp)
   18620:	00813483          	ld	s1,8(sp)
   18624:	02010113          	add	sp,sp,32
   18628:	00008067          	ret
   1862c:	000227b7          	lui	a5,0x22
   18630:	00351413          	sll	s0,a0,0x3
   18634:	38078793          	add	a5,a5,896 # 22380 <__mprec_tens>
   18638:	01813083          	ld	ra,24(sp)
   1863c:	008787b3          	add	a5,a5,s0
   18640:	01013403          	ld	s0,16(sp)
   18644:	0007b503          	ld	a0,0(a5)
   18648:	00813483          	ld	s1,8(sp)
   1864c:	02010113          	add	sp,sp,32
   18650:	00008067          	ret

0000000000018654 <__copybits>:
   18654:	01462683          	lw	a3,20(a2) # 3ff00014 <__BSS_END__+0x3fedb1fc>
   18658:	fff5859b          	addw	a1,a1,-1
   1865c:	4055d59b          	sraw	a1,a1,0x5
   18660:	0015859b          	addw	a1,a1,1
   18664:	01860793          	add	a5,a2,24
   18668:	00269693          	sll	a3,a3,0x2
   1866c:	00259593          	sll	a1,a1,0x2
   18670:	00d786b3          	add	a3,a5,a3
   18674:	00b505b3          	add	a1,a0,a1
   18678:	02d7f863          	bgeu	a5,a3,186a8 <__copybits+0x54>
   1867c:	00050713          	mv	a4,a0
   18680:	0007a803          	lw	a6,0(a5)
   18684:	00478793          	add	a5,a5,4
   18688:	00470713          	add	a4,a4,4 # 100004 <__BSS_END__+0xdb1ec>
   1868c:	ff072e23          	sw	a6,-4(a4)
   18690:	fed7e8e3          	bltu	a5,a3,18680 <__copybits+0x2c>
   18694:	40c687b3          	sub	a5,a3,a2
   18698:	fe778793          	add	a5,a5,-25
   1869c:	ffc7f793          	and	a5,a5,-4
   186a0:	00478793          	add	a5,a5,4
   186a4:	00f50533          	add	a0,a0,a5
   186a8:	00b57863          	bgeu	a0,a1,186b8 <__copybits+0x64>
   186ac:	00450513          	add	a0,a0,4
   186b0:	fe052e23          	sw	zero,-4(a0)
   186b4:	feb56ce3          	bltu	a0,a1,186ac <__copybits+0x58>
   186b8:	00008067          	ret

00000000000186bc <__any_on>:
   186bc:	01452703          	lw	a4,20(a0)
   186c0:	4055d613          	sra	a2,a1,0x5
   186c4:	01850693          	add	a3,a0,24
   186c8:	02c75263          	bge	a4,a2,186ec <__any_on+0x30>
   186cc:	00271713          	sll	a4,a4,0x2
   186d0:	00e687b3          	add	a5,a3,a4
   186d4:	04f6f263          	bgeu	a3,a5,18718 <__any_on+0x5c>
   186d8:	ffc7a703          	lw	a4,-4(a5)
   186dc:	ffc78793          	add	a5,a5,-4
   186e0:	fe070ae3          	beqz	a4,186d4 <__any_on+0x18>
   186e4:	00100513          	li	a0,1
   186e8:	00008067          	ret
   186ec:	00261793          	sll	a5,a2,0x2
   186f0:	00f687b3          	add	a5,a3,a5
   186f4:	fee650e3          	bge	a2,a4,186d4 <__any_on+0x18>
   186f8:	01f5f593          	and	a1,a1,31
   186fc:	fc058ce3          	beqz	a1,186d4 <__any_on+0x18>
   18700:	0007a603          	lw	a2,0(a5)
   18704:	00100513          	li	a0,1
   18708:	00b6573b          	srlw	a4,a2,a1
   1870c:	00b7173b          	sllw	a4,a4,a1
   18710:	fcc702e3          	beq	a4,a2,186d4 <__any_on+0x18>
   18714:	00008067          	ret
   18718:	00000513          	li	a0,0
   1871c:	00008067          	ret

0000000000018720 <_sbrk_r>:
   18720:	fe010113          	add	sp,sp,-32
   18724:	00813823          	sd	s0,16(sp)
   18728:	00913423          	sd	s1,8(sp)
   1872c:	00050413          	mv	s0,a0
   18730:	00058513          	mv	a0,a1
   18734:	00113c23          	sd	ra,24(sp)
   18738:	7801a823          	sw	zero,1936(gp) # 24da8 <errno>
   1873c:	570070ef          	jal	1fcac <_sbrk>
   18740:	fff00793          	li	a5,-1
   18744:	00f50c63          	beq	a0,a5,1875c <_sbrk_r+0x3c>
   18748:	01813083          	ld	ra,24(sp)
   1874c:	01013403          	ld	s0,16(sp)
   18750:	00813483          	ld	s1,8(sp)
   18754:	02010113          	add	sp,sp,32
   18758:	00008067          	ret
   1875c:	7901a783          	lw	a5,1936(gp) # 24da8 <errno>
   18760:	fe0784e3          	beqz	a5,18748 <_sbrk_r+0x28>
   18764:	01813083          	ld	ra,24(sp)
   18768:	00f42023          	sw	a5,0(s0)
   1876c:	01013403          	ld	s0,16(sp)
   18770:	00813483          	ld	s1,8(sp)
   18774:	02010113          	add	sp,sp,32
   18778:	00008067          	ret

000000000001877c <frexp>:
   1877c:	fe010113          	add	sp,sp,-32
   18780:	00813823          	sd	s0,16(sp)
   18784:	80000437          	lui	s0,0x80000
   18788:	00113c23          	sd	ra,24(sp)
   1878c:	00913423          	sd	s1,8(sp)
   18790:	42055693          	sra	a3,a0,0x20
   18794:	fff44413          	not	s0,s0
   18798:	0086f733          	and	a4,a3,s0
   1879c:	0005a023          	sw	zero,0(a1)
   187a0:	7ff00637          	lui	a2,0x7ff00
   187a4:	00050793          	mv	a5,a0
   187a8:	06c77263          	bgeu	a4,a2,1880c <frexp+0x90>
   187ac:	00a76633          	or	a2,a4,a0
   187b0:	0006061b          	sext.w	a2,a2
   187b4:	04060c63          	beqz	a2,1880c <frexp+0x90>
   187b8:	7ff00637          	lui	a2,0x7ff00
   187bc:	00c6f633          	and	a2,a3,a2
   187c0:	00058493          	mv	s1,a1
   187c4:	06060063          	beqz	a2,18824 <frexp+0xa8>
   187c8:	0006869b          	sext.w	a3,a3
   187cc:	0007071b          	sext.w	a4,a4
   187d0:	00000593          	li	a1,0
   187d4:	80100637          	lui	a2,0x80100
   187d8:	fff60613          	add	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800db1e7>
   187dc:	00c6f6b3          	and	a3,a3,a2
   187e0:	3fe00637          	lui	a2,0x3fe00
   187e4:	00c6e6b3          	or	a3,a3,a2
   187e8:	4147571b          	sraw	a4,a4,0x14
   187ec:	fff00613          	li	a2,-1
   187f0:	c027071b          	addw	a4,a4,-1022
   187f4:	02065613          	srl	a2,a2,0x20
   187f8:	00b7073b          	addw	a4,a4,a1
   187fc:	02069693          	sll	a3,a3,0x20
   18800:	00f677b3          	and	a5,a2,a5
   18804:	00e4a023          	sw	a4,0(s1)
   18808:	00d7e7b3          	or	a5,a5,a3
   1880c:	01813083          	ld	ra,24(sp)
   18810:	01013403          	ld	s0,16(sp)
   18814:	00813483          	ld	s1,8(sp)
   18818:	00078513          	mv	a0,a5
   1881c:	02010113          	add	sp,sp,32
   18820:	00008067          	ret
   18824:	7381b583          	ld	a1,1848(gp) # 24d50 <__SDATA_BEGIN__+0x20>
   18828:	155070ef          	jal	2017c <__muldf3>
   1882c:	42055713          	sra	a4,a0,0x20
   18830:	00070693          	mv	a3,a4
   18834:	00050793          	mv	a5,a0
   18838:	00877733          	and	a4,a4,s0
   1883c:	fca00593          	li	a1,-54
   18840:	f95ff06f          	j	187d4 <frexp+0x58>

0000000000018844 <_sprintf_r>:
   18844:	f0010113          	add	sp,sp,-256
   18848:	0d810e93          	add	t4,sp,216
   1884c:	0ef13423          	sd	a5,232(sp)
   18850:	80000337          	lui	t1,0x80000
   18854:	ffff07b7          	lui	a5,0xffff0
   18858:	00058e13          	mv	t3,a1
   1885c:	fff34313          	not	t1,t1
   18860:	0cd13c23          	sd	a3,216(sp)
   18864:	20878793          	add	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb3f0>
   18868:	01010593          	add	a1,sp,16
   1886c:	000e8693          	mv	a3,t4
   18870:	0c113423          	sd	ra,200(sp)
   18874:	02f12023          	sw	a5,32(sp)
   18878:	0ee13023          	sd	a4,224(sp)
   1887c:	0f013823          	sd	a6,240(sp)
   18880:	0f113c23          	sd	a7,248(sp)
   18884:	01c13823          	sd	t3,16(sp)
   18888:	03c13423          	sd	t3,40(sp)
   1888c:	00612e23          	sw	t1,28(sp)
   18890:	02612823          	sw	t1,48(sp)
   18894:	01d13423          	sd	t4,8(sp)
   18898:	570000ef          	jal	18e08 <_svfprintf_r>
   1889c:	01013783          	ld	a5,16(sp)
   188a0:	00078023          	sb	zero,0(a5)
   188a4:	0c813083          	ld	ra,200(sp)
   188a8:	10010113          	add	sp,sp,256
   188ac:	00008067          	ret

00000000000188b0 <sprintf>:
   188b0:	00050e13          	mv	t3,a0
   188b4:	f0010113          	add	sp,sp,-256
   188b8:	7581b503          	ld	a0,1880(gp) # 24d70 <_impure_ptr>
   188bc:	0d010e93          	add	t4,sp,208
   188c0:	0ef13423          	sd	a5,232(sp)
   188c4:	80000337          	lui	t1,0x80000
   188c8:	ffff07b7          	lui	a5,0xffff0
   188cc:	fff34313          	not	t1,t1
   188d0:	0cc13823          	sd	a2,208(sp)
   188d4:	0cd13c23          	sd	a3,216(sp)
   188d8:	20878793          	add	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb3f0>
   188dc:	00058613          	mv	a2,a1
   188e0:	000e8693          	mv	a3,t4
   188e4:	01010593          	add	a1,sp,16
   188e8:	0c113423          	sd	ra,200(sp)
   188ec:	02f12023          	sw	a5,32(sp)
   188f0:	0ee13023          	sd	a4,224(sp)
   188f4:	0f013823          	sd	a6,240(sp)
   188f8:	0f113c23          	sd	a7,248(sp)
   188fc:	01c13823          	sd	t3,16(sp)
   18900:	03c13423          	sd	t3,40(sp)
   18904:	00612e23          	sw	t1,28(sp)
   18908:	02612823          	sw	t1,48(sp)
   1890c:	01d13423          	sd	t4,8(sp)
   18910:	4f8000ef          	jal	18e08 <_svfprintf_r>
   18914:	01013783          	ld	a5,16(sp)
   18918:	00078023          	sb	zero,0(a5)
   1891c:	0c813083          	ld	ra,200(sp)
   18920:	10010113          	add	sp,sp,256
   18924:	00008067          	ret

0000000000018928 <__sread>:
   18928:	ff010113          	add	sp,sp,-16
   1892c:	00813023          	sd	s0,0(sp)
   18930:	00058413          	mv	s0,a1
   18934:	01259583          	lh	a1,18(a1)
   18938:	00113423          	sd	ra,8(sp)
   1893c:	67d040ef          	jal	1d7b8 <_read_r>
   18940:	02054063          	bltz	a0,18960 <__sread+0x38>
   18944:	09043783          	ld	a5,144(s0) # ffffffff80000090 <__BSS_END__+0xffffffff7ffdb278>
   18948:	00813083          	ld	ra,8(sp)
   1894c:	00a787b3          	add	a5,a5,a0
   18950:	08f43823          	sd	a5,144(s0)
   18954:	00013403          	ld	s0,0(sp)
   18958:	01010113          	add	sp,sp,16
   1895c:	00008067          	ret
   18960:	01045783          	lhu	a5,16(s0)
   18964:	fffff737          	lui	a4,0xfffff
   18968:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda1e7>
   1896c:	00e7f7b3          	and	a5,a5,a4
   18970:	00813083          	ld	ra,8(sp)
   18974:	00f41823          	sh	a5,16(s0)
   18978:	00013403          	ld	s0,0(sp)
   1897c:	01010113          	add	sp,sp,16
   18980:	00008067          	ret

0000000000018984 <__seofread>:
   18984:	00000513          	li	a0,0
   18988:	00008067          	ret

000000000001898c <__swrite>:
   1898c:	01059783          	lh	a5,16(a1)
   18990:	fd010113          	add	sp,sp,-48
   18994:	02813023          	sd	s0,32(sp)
   18998:	00913c23          	sd	s1,24(sp)
   1899c:	01213823          	sd	s2,16(sp)
   189a0:	01313423          	sd	s3,8(sp)
   189a4:	02113423          	sd	ra,40(sp)
   189a8:	1007f713          	and	a4,a5,256
   189ac:	00058413          	mv	s0,a1
   189b0:	00050493          	mv	s1,a0
   189b4:	00060913          	mv	s2,a2
   189b8:	00068993          	mv	s3,a3
   189bc:	04071063          	bnez	a4,189fc <__swrite+0x70>
   189c0:	fffff737          	lui	a4,0xfffff
   189c4:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda1e7>
   189c8:	00e7f7b3          	and	a5,a5,a4
   189cc:	01241583          	lh	a1,18(s0)
   189d0:	00f41823          	sh	a5,16(s0)
   189d4:	02013403          	ld	s0,32(sp)
   189d8:	02813083          	ld	ra,40(sp)
   189dc:	00098693          	mv	a3,s3
   189e0:	00090613          	mv	a2,s2
   189e4:	00813983          	ld	s3,8(sp)
   189e8:	01013903          	ld	s2,16(sp)
   189ec:	00048513          	mv	a0,s1
   189f0:	01813483          	ld	s1,24(sp)
   189f4:	03010113          	add	sp,sp,48
   189f8:	6e90306f          	j	1c8e0 <_write_r>
   189fc:	01259583          	lh	a1,18(a1)
   18a00:	00200693          	li	a3,2
   18a04:	00000613          	li	a2,0
   18a08:	289040ef          	jal	1d490 <_lseek_r>
   18a0c:	01041783          	lh	a5,16(s0)
   18a10:	fb1ff06f          	j	189c0 <__swrite+0x34>

0000000000018a14 <__sseek>:
   18a14:	ff010113          	add	sp,sp,-16
   18a18:	00813023          	sd	s0,0(sp)
   18a1c:	00058413          	mv	s0,a1
   18a20:	01259583          	lh	a1,18(a1)
   18a24:	00113423          	sd	ra,8(sp)
   18a28:	269040ef          	jal	1d490 <_lseek_r>
   18a2c:	fff00793          	li	a5,-1
   18a30:	02f50863          	beq	a0,a5,18a60 <__sseek+0x4c>
   18a34:	01045783          	lhu	a5,16(s0)
   18a38:	00001737          	lui	a4,0x1
   18a3c:	00813083          	ld	ra,8(sp)
   18a40:	00e7e7b3          	or	a5,a5,a4
   18a44:	0107979b          	sllw	a5,a5,0x10
   18a48:	4107d79b          	sraw	a5,a5,0x10
   18a4c:	08a43823          	sd	a0,144(s0)
   18a50:	00f41823          	sh	a5,16(s0)
   18a54:	00013403          	ld	s0,0(sp)
   18a58:	01010113          	add	sp,sp,16
   18a5c:	00008067          	ret
   18a60:	01045783          	lhu	a5,16(s0)
   18a64:	fffff737          	lui	a4,0xfffff
   18a68:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda1e7>
   18a6c:	00e7f7b3          	and	a5,a5,a4
   18a70:	0107979b          	sllw	a5,a5,0x10
   18a74:	4107d79b          	sraw	a5,a5,0x10
   18a78:	00813083          	ld	ra,8(sp)
   18a7c:	00f41823          	sh	a5,16(s0)
   18a80:	00013403          	ld	s0,0(sp)
   18a84:	01010113          	add	sp,sp,16
   18a88:	00008067          	ret

0000000000018a8c <__sclose>:
   18a8c:	01259583          	lh	a1,18(a1)
   18a90:	0f40406f          	j	1cb84 <_close_r>

0000000000018a94 <strcmp>:
   18a94:	00b56733          	or	a4,a0,a1
   18a98:	fff00393          	li	t2,-1
   18a9c:	00777713          	and	a4,a4,7
   18aa0:	0c071c63          	bnez	a4,18b78 <strcmp+0xe4>
   18aa4:	0000c797          	auipc	a5,0xc
   18aa8:	2b47b783          	ld	a5,692(a5) # 24d58 <mask>
   18aac:	00053603          	ld	a2,0(a0)
   18ab0:	0005b683          	ld	a3,0(a1)
   18ab4:	00f672b3          	and	t0,a2,a5
   18ab8:	00f66333          	or	t1,a2,a5
   18abc:	00f282b3          	add	t0,t0,a5
   18ac0:	0062e2b3          	or	t0,t0,t1
   18ac4:	0c729e63          	bne	t0,t2,18ba0 <strcmp+0x10c>
   18ac8:	04d61663          	bne	a2,a3,18b14 <strcmp+0x80>
   18acc:	00853603          	ld	a2,8(a0)
   18ad0:	0085b683          	ld	a3,8(a1)
   18ad4:	00f672b3          	and	t0,a2,a5
   18ad8:	00f66333          	or	t1,a2,a5
   18adc:	00f282b3          	add	t0,t0,a5
   18ae0:	0062e2b3          	or	t0,t0,t1
   18ae4:	0a729a63          	bne	t0,t2,18b98 <strcmp+0x104>
   18ae8:	02d61663          	bne	a2,a3,18b14 <strcmp+0x80>
   18aec:	01053603          	ld	a2,16(a0)
   18af0:	0105b683          	ld	a3,16(a1)
   18af4:	00f672b3          	and	t0,a2,a5
   18af8:	00f66333          	or	t1,a2,a5
   18afc:	00f282b3          	add	t0,t0,a5
   18b00:	0062e2b3          	or	t0,t0,t1
   18b04:	0a729463          	bne	t0,t2,18bac <strcmp+0x118>
   18b08:	01850513          	add	a0,a0,24
   18b0c:	01858593          	add	a1,a1,24
   18b10:	f8d60ee3          	beq	a2,a3,18aac <strcmp+0x18>
   18b14:	03061713          	sll	a4,a2,0x30
   18b18:	03069793          	sll	a5,a3,0x30
   18b1c:	02f71a63          	bne	a4,a5,18b50 <strcmp+0xbc>
   18b20:	02061713          	sll	a4,a2,0x20
   18b24:	02069793          	sll	a5,a3,0x20
   18b28:	02f71463          	bne	a4,a5,18b50 <strcmp+0xbc>
   18b2c:	01061713          	sll	a4,a2,0x10
   18b30:	01069793          	sll	a5,a3,0x10
   18b34:	00f71e63          	bne	a4,a5,18b50 <strcmp+0xbc>
   18b38:	03065713          	srl	a4,a2,0x30
   18b3c:	0306d793          	srl	a5,a3,0x30
   18b40:	40f70533          	sub	a0,a4,a5
   18b44:	0ff57593          	zext.b	a1,a0
   18b48:	02059063          	bnez	a1,18b68 <strcmp+0xd4>
   18b4c:	00008067          	ret
   18b50:	03075713          	srl	a4,a4,0x30
   18b54:	0307d793          	srl	a5,a5,0x30
   18b58:	40f70533          	sub	a0,a4,a5
   18b5c:	0ff57593          	zext.b	a1,a0
   18b60:	00059463          	bnez	a1,18b68 <strcmp+0xd4>
   18b64:	00008067          	ret
   18b68:	0ff77713          	zext.b	a4,a4
   18b6c:	0ff7f793          	zext.b	a5,a5
   18b70:	40f70533          	sub	a0,a4,a5
   18b74:	00008067          	ret
   18b78:	00054603          	lbu	a2,0(a0)
   18b7c:	0005c683          	lbu	a3,0(a1)
   18b80:	00150513          	add	a0,a0,1
   18b84:	00158593          	add	a1,a1,1
   18b88:	00d61463          	bne	a2,a3,18b90 <strcmp+0xfc>
   18b8c:	fe0616e3          	bnez	a2,18b78 <strcmp+0xe4>
   18b90:	40d60533          	sub	a0,a2,a3
   18b94:	00008067          	ret
   18b98:	00850513          	add	a0,a0,8
   18b9c:	00858593          	add	a1,a1,8
   18ba0:	fcd61ce3          	bne	a2,a3,18b78 <strcmp+0xe4>
   18ba4:	00000513          	li	a0,0
   18ba8:	00008067          	ret
   18bac:	01050513          	add	a0,a0,16
   18bb0:	01058593          	add	a1,a1,16
   18bb4:	fcd612e3          	bne	a2,a3,18b78 <strcmp+0xe4>
   18bb8:	00000513          	li	a0,0
   18bbc:	00008067          	ret

0000000000018bc0 <strcpy>:
   18bc0:	00b567b3          	or	a5,a0,a1
   18bc4:	0077f793          	and	a5,a5,7
   18bc8:	0a079463          	bnez	a5,18c70 <strcpy+0xb0>
   18bcc:	7401b683          	ld	a3,1856(gp) # 24d58 <mask>
   18bd0:	0005b703          	ld	a4,0(a1)
   18bd4:	fff00613          	li	a2,-1
   18bd8:	00d777b3          	and	a5,a4,a3
   18bdc:	00d787b3          	add	a5,a5,a3
   18be0:	00e7e7b3          	or	a5,a5,a4
   18be4:	00d7e7b3          	or	a5,a5,a3
   18be8:	0ac79263          	bne	a5,a2,18c8c <strcpy+0xcc>
   18bec:	00050613          	mv	a2,a0
   18bf0:	fff00813          	li	a6,-1
   18bf4:	00e63023          	sd	a4,0(a2) # 3fe00000 <__BSS_END__+0x3fddb1e8>
   18bf8:	0085b703          	ld	a4,8(a1)
   18bfc:	00858593          	add	a1,a1,8
   18c00:	00860613          	add	a2,a2,8
   18c04:	00d777b3          	and	a5,a4,a3
   18c08:	00d787b3          	add	a5,a5,a3
   18c0c:	00e7e7b3          	or	a5,a5,a4
   18c10:	00d7e7b3          	or	a5,a5,a3
   18c14:	ff0780e3          	beq	a5,a6,18bf4 <strcpy+0x34>
   18c18:	0005c783          	lbu	a5,0(a1)
   18c1c:	0015c703          	lbu	a4,1(a1)
   18c20:	0025c683          	lbu	a3,2(a1)
   18c24:	00f60023          	sb	a5,0(a2)
   18c28:	04078263          	beqz	a5,18c6c <strcpy+0xac>
   18c2c:	00e600a3          	sb	a4,1(a2)
   18c30:	02070e63          	beqz	a4,18c6c <strcpy+0xac>
   18c34:	0035c783          	lbu	a5,3(a1)
   18c38:	00d60123          	sb	a3,2(a2)
   18c3c:	02068863          	beqz	a3,18c6c <strcpy+0xac>
   18c40:	0045c703          	lbu	a4,4(a1)
   18c44:	00f601a3          	sb	a5,3(a2)
   18c48:	02078263          	beqz	a5,18c6c <strcpy+0xac>
   18c4c:	0055c783          	lbu	a5,5(a1)
   18c50:	00e60223          	sb	a4,4(a2)
   18c54:	00070c63          	beqz	a4,18c6c <strcpy+0xac>
   18c58:	0065c703          	lbu	a4,6(a1)
   18c5c:	00f602a3          	sb	a5,5(a2)
   18c60:	00078663          	beqz	a5,18c6c <strcpy+0xac>
   18c64:	00e60323          	sb	a4,6(a2)
   18c68:	02071663          	bnez	a4,18c94 <strcpy+0xd4>
   18c6c:	00008067          	ret
   18c70:	00050793          	mv	a5,a0
   18c74:	0005c703          	lbu	a4,0(a1)
   18c78:	00178793          	add	a5,a5,1
   18c7c:	00158593          	add	a1,a1,1
   18c80:	fee78fa3          	sb	a4,-1(a5)
   18c84:	fe0718e3          	bnez	a4,18c74 <strcpy+0xb4>
   18c88:	00008067          	ret
   18c8c:	00050613          	mv	a2,a0
   18c90:	f89ff06f          	j	18c18 <strcpy+0x58>
   18c94:	000603a3          	sb	zero,7(a2)
   18c98:	00008067          	ret

0000000000018c9c <strlen>:
   18c9c:	00757793          	and	a5,a0,7
   18ca0:	00050713          	mv	a4,a0
   18ca4:	06079a63          	bnez	a5,18d18 <strlen+0x7c>
   18ca8:	7401b683          	ld	a3,1856(gp) # 24d58 <mask>
   18cac:	fff00593          	li	a1,-1
   18cb0:	00073603          	ld	a2,0(a4)
   18cb4:	00870713          	add	a4,a4,8
   18cb8:	00d677b3          	and	a5,a2,a3
   18cbc:	00d787b3          	add	a5,a5,a3
   18cc0:	00c7e7b3          	or	a5,a5,a2
   18cc4:	00d7e7b3          	or	a5,a5,a3
   18cc8:	feb784e3          	beq	a5,a1,18cb0 <strlen+0x14>
   18ccc:	ff874683          	lbu	a3,-8(a4)
   18cd0:	40a707b3          	sub	a5,a4,a0
   18cd4:	06068463          	beqz	a3,18d3c <strlen+0xa0>
   18cd8:	ff974683          	lbu	a3,-7(a4)
   18cdc:	04068c63          	beqz	a3,18d34 <strlen+0x98>
   18ce0:	ffa74683          	lbu	a3,-6(a4)
   18ce4:	06068463          	beqz	a3,18d4c <strlen+0xb0>
   18ce8:	ffb74683          	lbu	a3,-5(a4)
   18cec:	04068c63          	beqz	a3,18d44 <strlen+0xa8>
   18cf0:	ffc74683          	lbu	a3,-4(a4)
   18cf4:	06068063          	beqz	a3,18d54 <strlen+0xb8>
   18cf8:	ffd74683          	lbu	a3,-3(a4)
   18cfc:	06068063          	beqz	a3,18d5c <strlen+0xc0>
   18d00:	ffe74503          	lbu	a0,-2(a4)
   18d04:	00a03533          	snez	a0,a0
   18d08:	00f50533          	add	a0,a0,a5
   18d0c:	ffe50513          	add	a0,a0,-2
   18d10:	00008067          	ret
   18d14:	f8068ae3          	beqz	a3,18ca8 <strlen+0xc>
   18d18:	00074783          	lbu	a5,0(a4)
   18d1c:	00170713          	add	a4,a4,1
   18d20:	00777693          	and	a3,a4,7
   18d24:	fe0798e3          	bnez	a5,18d14 <strlen+0x78>
   18d28:	40a70733          	sub	a4,a4,a0
   18d2c:	fff70513          	add	a0,a4,-1
   18d30:	00008067          	ret
   18d34:	ff978513          	add	a0,a5,-7
   18d38:	00008067          	ret
   18d3c:	ff878513          	add	a0,a5,-8
   18d40:	00008067          	ret
   18d44:	ffb78513          	add	a0,a5,-5
   18d48:	00008067          	ret
   18d4c:	ffa78513          	add	a0,a5,-6
   18d50:	00008067          	ret
   18d54:	ffc78513          	add	a0,a5,-4
   18d58:	00008067          	ret
   18d5c:	ffd78513          	add	a0,a5,-3
   18d60:	00008067          	ret

0000000000018d64 <strncpy>:
   18d64:	00b567b3          	or	a5,a0,a1
   18d68:	0077f793          	and	a5,a5,7
   18d6c:	00079663          	bnez	a5,18d78 <strncpy+0x14>
   18d70:	00700793          	li	a5,7
   18d74:	04c7e663          	bltu	a5,a2,18dc0 <strncpy+0x5c>
   18d78:	00050713          	mv	a4,a0
   18d7c:	01c0006f          	j	18d98 <strncpy+0x34>
   18d80:	fff5c683          	lbu	a3,-1(a1)
   18d84:	fff60813          	add	a6,a2,-1
   18d88:	fed78fa3          	sb	a3,-1(a5)
   18d8c:	00068e63          	beqz	a3,18da8 <strncpy+0x44>
   18d90:	00078713          	mv	a4,a5
   18d94:	00080613          	mv	a2,a6
   18d98:	00158593          	add	a1,a1,1
   18d9c:	00170793          	add	a5,a4,1
   18da0:	fe0610e3          	bnez	a2,18d80 <strncpy+0x1c>
   18da4:	00008067          	ret
   18da8:	00c70733          	add	a4,a4,a2
   18dac:	04080c63          	beqz	a6,18e04 <strncpy+0xa0>
   18db0:	00178793          	add	a5,a5,1
   18db4:	fe078fa3          	sb	zero,-1(a5)
   18db8:	fee79ce3          	bne	a5,a4,18db0 <strncpy+0x4c>
   18dbc:	00008067          	ret
   18dc0:	7181b303          	ld	t1,1816(gp) # 24d30 <__SDATA_BEGIN__>
   18dc4:	7201b883          	ld	a7,1824(gp) # 24d38 <__SDATA_BEGIN__+0x8>
   18dc8:	00050713          	mv	a4,a0
   18dcc:	00700e13          	li	t3,7
   18dd0:	0180006f          	j	18de8 <strncpy+0x84>
   18dd4:	00d73023          	sd	a3,0(a4)
   18dd8:	ff860613          	add	a2,a2,-8
   18ddc:	00870713          	add	a4,a4,8
   18de0:	00858593          	add	a1,a1,8
   18de4:	face7ae3          	bgeu	t3,a2,18d98 <strncpy+0x34>
   18de8:	0005b683          	ld	a3,0(a1)
   18dec:	006687b3          	add	a5,a3,t1
   18df0:	fff6c813          	not	a6,a3
   18df4:	0107f7b3          	and	a5,a5,a6
   18df8:	0117f7b3          	and	a5,a5,a7
   18dfc:	fc078ce3          	beqz	a5,18dd4 <strncpy+0x70>
   18e00:	f99ff06f          	j	18d98 <strncpy+0x34>
   18e04:	00008067          	ret

0000000000018e08 <_svfprintf_r>:
   18e08:	d9010113          	add	sp,sp,-624
   18e0c:	26113423          	sd	ra,616(sp)
   18e10:	26813023          	sd	s0,608(sp)
   18e14:	25213823          	sd	s2,592(sp)
   18e18:	00058413          	mv	s0,a1
   18e1c:	00b13023          	sd	a1,0(sp)
   18e20:	00060913          	mv	s2,a2
   18e24:	02d13023          	sd	a3,32(sp)
   18e28:	24913c23          	sd	s1,600(sp)
   18e2c:	25313423          	sd	s3,584(sp)
   18e30:	25413023          	sd	s4,576(sp)
   18e34:	23513c23          	sd	s5,568(sp)
   18e38:	23613823          	sd	s6,560(sp)
   18e3c:	23713423          	sd	s7,552(sp)
   18e40:	23813023          	sd	s8,544(sp)
   18e44:	21913c23          	sd	s9,536(sp)
   18e48:	21a13823          	sd	s10,528(sp)
   18e4c:	21b13423          	sd	s11,520(sp)
   18e50:	04a13823          	sd	a0,80(sp)
   18e54:	901fd0ef          	jal	16754 <_localeconv_r>
   18e58:	00053703          	ld	a4,0(a0)
   18e5c:	00070513          	mv	a0,a4
   18e60:	06e13023          	sd	a4,96(sp)
   18e64:	e39ff0ef          	jal	18c9c <strlen>
   18e68:	01045703          	lhu	a4,16(s0)
   18e6c:	0e013823          	sd	zero,240(sp)
   18e70:	0e013c23          	sd	zero,248(sp)
   18e74:	08077713          	and	a4,a4,128
   18e78:	04a13c23          	sd	a0,88(sp)
   18e7c:	00070863          	beqz	a4,18e8c <_svfprintf_r+0x84>
   18e80:	01843703          	ld	a4,24(s0)
   18e84:	00071463          	bnez	a4,18e8c <_svfprintf_r+0x84>
   18e88:	3540106f          	j	1a1dc <_svfprintf_r+0x13d4>
   18e8c:	18010793          	add	a5,sp,384
   18e90:	00022737          	lui	a4,0x22
   18e94:	00078313          	mv	t1,a5
   18e98:	10f13023          	sd	a5,256(sp)
   18e9c:	00090b13          	mv	s6,s2
   18ea0:	44870793          	add	a5,a4,1096 # 22448 <__mprec_tens+0xc8>
   18ea4:	00022737          	lui	a4,0x22
   18ea8:	02f13423          	sd	a5,40(sp)
   18eac:	65070793          	add	a5,a4,1616 # 22650 <zeroes.0>
   18eb0:	000b4703          	lbu	a4,0(s6)
   18eb4:	10013823          	sd	zero,272(sp)
   18eb8:	10012423          	sw	zero,264(sp)
   18ebc:	02013c23          	sd	zero,56(sp)
   18ec0:	06013423          	sd	zero,104(sp)
   18ec4:	06013823          	sd	zero,112(sp)
   18ec8:	06013c23          	sd	zero,120(sp)
   18ecc:	08013023          	sd	zero,128(sp)
   18ed0:	08013423          	sd	zero,136(sp)
   18ed4:	00013823          	sd	zero,16(sp)
   18ed8:	00f13423          	sd	a5,8(sp)
   18edc:	05013983          	ld	s3,80(sp)
   18ee0:	00030413          	mv	s0,t1
   18ee4:	24070063          	beqz	a4,19124 <_svfprintf_r+0x31c>
   18ee8:	000b0493          	mv	s1,s6
   18eec:	02500693          	li	a3,37
   18ef0:	2ad70263          	beq	a4,a3,19194 <_svfprintf_r+0x38c>
   18ef4:	0014c703          	lbu	a4,1(s1)
   18ef8:	00148493          	add	s1,s1,1
   18efc:	fe071ae3          	bnez	a4,18ef0 <_svfprintf_r+0xe8>
   18f00:	4164893b          	subw	s2,s1,s6
   18f04:	22090063          	beqz	s2,19124 <_svfprintf_r+0x31c>
   18f08:	11013d83          	ld	s11,272(sp)
   18f0c:	10812683          	lw	a3,264(sp)
   18f10:	01643023          	sd	s6,0(s0)
   18f14:	012d8733          	add	a4,s11,s2
   18f18:	0016861b          	addw	a2,a3,1
   18f1c:	01243423          	sd	s2,8(s0)
   18f20:	10e13823          	sd	a4,272(sp)
   18f24:	10c12423          	sw	a2,264(sp)
   18f28:	00700713          	li	a4,7
   18f2c:	01040413          	add	s0,s0,16
   18f30:	26c74a63          	blt	a4,a2,191a4 <_svfprintf_r+0x39c>
   18f34:	01013783          	ld	a5,16(sp)
   18f38:	0004c703          	lbu	a4,0(s1)
   18f3c:	012787bb          	addw	a5,a5,s2
   18f40:	00f13823          	sd	a5,16(sp)
   18f44:	1e070063          	beqz	a4,19124 <_svfprintf_r+0x31c>
   18f48:	fff00313          	li	t1,-1
   18f4c:	0014ce03          	lbu	t3,1(s1)
   18f50:	0c0107a3          	sb	zero,207(sp)
   18f54:	00148493          	add	s1,s1,1
   18f58:	00000a13          	li	s4,0
   18f5c:	00000913          	li	s2,0
   18f60:	05a00b93          	li	s7,90
   18f64:	00030a93          	mv	s5,t1
   18f68:	00148493          	add	s1,s1,1
   18f6c:	000e0c9b          	sext.w	s9,t3
   18f70:	fe0c879b          	addw	a5,s9,-32
   18f74:	0007871b          	sext.w	a4,a5
   18f78:	04ebec63          	bltu	s7,a4,18fd0 <_svfprintf_r+0x1c8>
   18f7c:	02079713          	sll	a4,a5,0x20
   18f80:	01e75793          	srl	a5,a4,0x1e
   18f84:	02813703          	ld	a4,40(sp)
   18f88:	00e787b3          	add	a5,a5,a4
   18f8c:	0007a783          	lw	a5,0(a5)
   18f90:	00078067          	jr	a5
   18f94:	00000a13          	li	s4,0
   18f98:	00900693          	li	a3,9
   18f9c:	0004c703          	lbu	a4,0(s1)
   18fa0:	002a179b          	sllw	a5,s4,0x2
   18fa4:	01478a3b          	addw	s4,a5,s4
   18fa8:	fd0c8c9b          	addw	s9,s9,-48
   18fac:	001a1a1b          	sllw	s4,s4,0x1
   18fb0:	fd07079b          	addw	a5,a4,-48
   18fb4:	014c8a3b          	addw	s4,s9,s4
   18fb8:	00148493          	add	s1,s1,1
   18fbc:	00070c9b          	sext.w	s9,a4
   18fc0:	fcf6fee3          	bgeu	a3,a5,18f9c <_svfprintf_r+0x194>
   18fc4:	fe0c879b          	addw	a5,s9,-32
   18fc8:	0007871b          	sext.w	a4,a5
   18fcc:	faebf8e3          	bgeu	s7,a4,18f7c <_svfprintf_r+0x174>
   18fd0:	140c8a63          	beqz	s9,19124 <_svfprintf_r+0x31c>
   18fd4:	11910c23          	sb	s9,280(sp)
   18fd8:	0c0107a3          	sb	zero,207(sp)
   18fdc:	00100c13          	li	s8,1
   18fe0:	00100d13          	li	s10,1
   18fe4:	11810b13          	add	s6,sp,280
   18fe8:	00013c23          	sd	zero,24(sp)
   18fec:	00000313          	li	t1,0
   18ff0:	04013423          	sd	zero,72(sp)
   18ff4:	04013023          	sd	zero,64(sp)
   18ff8:	02013823          	sd	zero,48(sp)
   18ffc:	00297b93          	and	s7,s2,2
   19000:	000b8463          	beqz	s7,19008 <_svfprintf_r+0x200>
   19004:	002c0c1b          	addw	s8,s8,2
   19008:	08497a93          	and	s5,s2,132
   1900c:	000a9663          	bnez	s5,19018 <_svfprintf_r+0x210>
   19010:	418a073b          	subw	a4,s4,s8
   19014:	30e042e3          	bgtz	a4,19b18 <_svfprintf_r+0xd10>
   19018:	0cf14703          	lbu	a4,207(sp)
   1901c:	11013d83          	ld	s11,272(sp)
   19020:	02070c63          	beqz	a4,19058 <_svfprintf_r+0x250>
   19024:	10812603          	lw	a2,264(sp)
   19028:	0cf10593          	add	a1,sp,207
   1902c:	00b43023          	sd	a1,0(s0)
   19030:	0016061b          	addw	a2,a2,1
   19034:	00100593          	li	a1,1
   19038:	001d8d93          	add	s11,s11,1
   1903c:	00b43423          	sd	a1,8(s0)
   19040:	10c12423          	sw	a2,264(sp)
   19044:	0006059b          	sext.w	a1,a2
   19048:	11b13823          	sd	s11,272(sp)
   1904c:	00700613          	li	a2,7
   19050:	01040413          	add	s0,s0,16
   19054:	24b64c63          	blt	a2,a1,192ac <_svfprintf_r+0x4a4>
   19058:	020b8c63          	beqz	s7,19090 <_svfprintf_r+0x288>
   1905c:	10812603          	lw	a2,264(sp)
   19060:	00200593          	li	a1,2
   19064:	002d8d93          	add	s11,s11,2
   19068:	0016061b          	addw	a2,a2,1
   1906c:	0d010793          	add	a5,sp,208
   19070:	00b43423          	sd	a1,8(s0)
   19074:	00f43023          	sd	a5,0(s0)
   19078:	0006059b          	sext.w	a1,a2
   1907c:	10c12423          	sw	a2,264(sp)
   19080:	11b13823          	sd	s11,272(sp)
   19084:	00700613          	li	a2,7
   19088:	01040413          	add	s0,s0,16
   1908c:	38b642e3          	blt	a2,a1,19c10 <_svfprintf_r+0xe08>
   19090:	08000613          	li	a2,128
   19094:	08ca8ce3          	beq	s5,a2,1992c <_svfprintf_r+0xb24>
   19098:	41a30bbb          	subw	s7,t1,s10
   1909c:	17704ce3          	bgtz	s7,19a14 <_svfprintf_r+0xc0c>
   190a0:	10097613          	and	a2,s2,256
   190a4:	6c061463          	bnez	a2,1976c <_svfprintf_r+0x964>
   190a8:	10812603          	lw	a2,264(sp)
   190ac:	01bd0733          	add	a4,s10,s11
   190b0:	01643023          	sd	s6,0(s0)
   190b4:	0016069b          	addw	a3,a2,1
   190b8:	01a43423          	sd	s10,8(s0)
   190bc:	10e13823          	sd	a4,272(sp)
   190c0:	10d12423          	sw	a3,264(sp)
   190c4:	00700793          	li	a5,7
   190c8:	2ed7c663          	blt	a5,a3,193b4 <_svfprintf_r+0x5ac>
   190cc:	01040413          	add	s0,s0,16
   190d0:	00497913          	and	s2,s2,4
   190d4:	00090663          	beqz	s2,190e0 <_svfprintf_r+0x2d8>
   190d8:	418a093b          	subw	s2,s4,s8
   190dc:	35204ee3          	bgtz	s2,19c38 <_svfprintf_r+0xe30>
   190e0:	000a0793          	mv	a5,s4
   190e4:	018a5463          	bge	s4,s8,190ec <_svfprintf_r+0x2e4>
   190e8:	000c0793          	mv	a5,s8
   190ec:	01013683          	ld	a3,16(sp)
   190f0:	00d787bb          	addw	a5,a5,a3
   190f4:	00f13823          	sd	a5,16(sp)
   190f8:	1e071ce3          	bnez	a4,19af0 <_svfprintf_r+0xce8>
   190fc:	01813783          	ld	a5,24(sp)
   19100:	10012423          	sw	zero,264(sp)
   19104:	00078863          	beqz	a5,19114 <_svfprintf_r+0x30c>
   19108:	01813583          	ld	a1,24(sp)
   1910c:	00098513          	mv	a0,s3
   19110:	cfcfa0ef          	jal	1360c <_free_r>
   19114:	18010413          	add	s0,sp,384
   19118:	00048b13          	mv	s6,s1
   1911c:	000b4703          	lbu	a4,0(s6)
   19120:	dc0714e3          	bnez	a4,18ee8 <_svfprintf_r+0xe0>
   19124:	11013783          	ld	a5,272(sp)
   19128:	00078463          	beqz	a5,19130 <_svfprintf_r+0x328>
   1912c:	2490106f          	j	1ab74 <_svfprintf_r+0x1d6c>
   19130:	00013783          	ld	a5,0(sp)
   19134:	0107d783          	lhu	a5,16(a5)
   19138:	0407f793          	and	a5,a5,64
   1913c:	00078463          	beqz	a5,19144 <_svfprintf_r+0x33c>
   19140:	0bc0206f          	j	1b1fc <_svfprintf_r+0x23f4>
   19144:	26813083          	ld	ra,616(sp)
   19148:	26013403          	ld	s0,608(sp)
   1914c:	01013503          	ld	a0,16(sp)
   19150:	25813483          	ld	s1,600(sp)
   19154:	25013903          	ld	s2,592(sp)
   19158:	24813983          	ld	s3,584(sp)
   1915c:	24013a03          	ld	s4,576(sp)
   19160:	23813a83          	ld	s5,568(sp)
   19164:	23013b03          	ld	s6,560(sp)
   19168:	22813b83          	ld	s7,552(sp)
   1916c:	22013c03          	ld	s8,544(sp)
   19170:	21813c83          	ld	s9,536(sp)
   19174:	21013d03          	ld	s10,528(sp)
   19178:	20813d83          	ld	s11,520(sp)
   1917c:	27010113          	add	sp,sp,624
   19180:	00008067          	ret
   19184:	01096913          	or	s2,s2,16
   19188:	0004ce03          	lbu	t3,0(s1)
   1918c:	0009091b          	sext.w	s2,s2
   19190:	dd9ff06f          	j	18f68 <_svfprintf_r+0x160>
   19194:	4164893b          	subw	s2,s1,s6
   19198:	d60918e3          	bnez	s2,18f08 <_svfprintf_r+0x100>
   1919c:	0004c703          	lbu	a4,0(s1)
   191a0:	da5ff06f          	j	18f44 <_svfprintf_r+0x13c>
   191a4:	00013583          	ld	a1,0(sp)
   191a8:	10010613          	add	a2,sp,256
   191ac:	00098513          	mv	a0,s3
   191b0:	581040ef          	jal	1df30 <__ssprint_r>
   191b4:	f6051ee3          	bnez	a0,19130 <_svfprintf_r+0x328>
   191b8:	18010413          	add	s0,sp,384
   191bc:	d79ff06f          	j	18f34 <_svfprintf_r+0x12c>
   191c0:	00897713          	and	a4,s2,8
   191c4:	000a8313          	mv	t1,s5
   191c8:	6e0714e3          	bnez	a4,1a0b0 <_svfprintf_r+0x12a8>
   191cc:	02013783          	ld	a5,32(sp)
   191d0:	01513c23          	sd	s5,24(sp)
   191d4:	0007b503          	ld	a0,0(a5)
   191d8:	00878a93          	add	s5,a5,8
   191dc:	03513023          	sd	s5,32(sp)
   191e0:	6d8080ef          	jal	218b8 <__extenddftf2>
   191e4:	01813303          	ld	t1,24(sp)
   191e8:	00050713          	mv	a4,a0
   191ec:	0f010513          	add	a0,sp,240
   191f0:	00613c23          	sd	t1,24(sp)
   191f4:	0ee13823          	sd	a4,240(sp)
   191f8:	0eb13c23          	sd	a1,248(sp)
   191fc:	ce8fd0ef          	jal	166e4 <_ldcheck>
   19200:	0ca12c23          	sw	a0,216(sp)
   19204:	00200713          	li	a4,2
   19208:	01813303          	ld	t1,24(sp)
   1920c:	00e51463          	bne	a0,a4,19214 <_svfprintf_r+0x40c>
   19210:	5040106f          	j	1a714 <_svfprintf_r+0x190c>
   19214:	00100713          	li	a4,1
   19218:	00e51463          	bne	a0,a4,19220 <_svfprintf_r+0x418>
   1921c:	6900106f          	j	1a8ac <_svfprintf_r+0x1aa4>
   19220:	06100713          	li	a4,97
   19224:	00ec9463          	bne	s9,a4,1922c <_svfprintf_r+0x424>
   19228:	4950106f          	j	1aebc <_svfprintf_r+0x20b4>
   1922c:	04100713          	li	a4,65
   19230:	00ec9463          	bne	s9,a4,19238 <_svfprintf_r+0x430>
   19234:	6810106f          	j	1b0b4 <_svfprintf_r+0x22ac>
   19238:	fff00713          	li	a4,-1
   1923c:	00e31463          	bne	t1,a4,19244 <_svfprintf_r+0x43c>
   19240:	1890106f          	j	1abc8 <_svfprintf_r+0x1dc0>
   19244:	fdfcf713          	and	a4,s9,-33
   19248:	04700693          	li	a3,71
   1924c:	00d71463          	bne	a4,a3,19254 <_svfprintf_r+0x44c>
   19250:	7b90106f          	j	1b208 <_svfprintf_r+0x2400>
   19254:	10096713          	or	a4,s2,256
   19258:	0f813c03          	ld	s8,248(sp)
   1925c:	0007079b          	sext.w	a5,a4
   19260:	08f13823          	sd	a5,144(sp)
   19264:	05213023          	sd	s2,64(sp)
   19268:	0f013b83          	ld	s7,240(sp)
   1926c:	000c5463          	bgez	s8,19274 <_svfprintf_r+0x46c>
   19270:	5010106f          	j	1af70 <_svfprintf_r+0x2168>
   19274:	08013c23          	sd	zero,152(sp)
   19278:	00013c23          	sd	zero,24(sp)
   1927c:	fbfc871b          	addw	a4,s9,-65
   19280:	0007061b          	sext.w	a2,a4
   19284:	02500693          	li	a3,37
   19288:	00c6f463          	bgeu	a3,a2,19290 <_svfprintf_r+0x488>
   1928c:	7000106f          	j	1a98c <_svfprintf_r+0x1b84>
   19290:	02071693          	sll	a3,a4,0x20
   19294:	01e6d713          	srl	a4,a3,0x1e
   19298:	000226b7          	lui	a3,0x22
   1929c:	5b468693          	add	a3,a3,1460 # 225b4 <__mprec_tens+0x234>
   192a0:	00d70733          	add	a4,a4,a3
   192a4:	00072703          	lw	a4,0(a4)
   192a8:	00070067          	jr	a4
   192ac:	00013583          	ld	a1,0(sp)
   192b0:	10010613          	add	a2,sp,256
   192b4:	00098513          	mv	a0,s3
   192b8:	08613823          	sd	t1,144(sp)
   192bc:	475040ef          	jal	1df30 <__ssprint_r>
   192c0:	040512e3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   192c4:	11013d83          	ld	s11,272(sp)
   192c8:	09013303          	ld	t1,144(sp)
   192cc:	18010413          	add	s0,sp,384
   192d0:	d89ff06f          	j	19058 <_svfprintf_r+0x250>
   192d4:	03813783          	ld	a5,56(sp)
   192d8:	00100693          	li	a3,1
   192dc:	01040c93          	add	s9,s0,16
   192e0:	38f6dae3          	bge	a3,a5,19e74 <_svfprintf_r+0x106c>
   192e4:	10812603          	lw	a2,264(sp)
   192e8:	00100693          	li	a3,1
   192ec:	001d8713          	add	a4,s11,1
   192f0:	0016061b          	addw	a2,a2,1
   192f4:	00d43423          	sd	a3,8(s0)
   192f8:	10c12423          	sw	a2,264(sp)
   192fc:	0006069b          	sext.w	a3,a2
   19300:	01643023          	sd	s6,0(s0)
   19304:	10e13823          	sd	a4,272(sp)
   19308:	00700613          	li	a2,7
   1930c:	4ed64ae3          	blt	a2,a3,1a000 <_svfprintf_r+0x11f8>
   19310:	05813783          	ld	a5,88(sp)
   19314:	0016841b          	addw	s0,a3,1
   19318:	10812423          	sw	s0,264(sp)
   1931c:	00e78d33          	add	s10,a5,a4
   19320:	06013703          	ld	a4,96(sp)
   19324:	00fcb423          	sd	a5,8(s9)
   19328:	11a13823          	sd	s10,272(sp)
   1932c:	00ecb023          	sd	a4,0(s9)
   19330:	00700713          	li	a4,7
   19334:	010c8c93          	add	s9,s9,16
   19338:	4e8746e3          	blt	a4,s0,1a024 <_svfprintf_r+0x121c>
   1933c:	0f013503          	ld	a0,240(sp)
   19340:	0f813583          	ld	a1,248(sp)
   19344:	00000613          	li	a2,0
   19348:	00000693          	li	a3,0
   1934c:	1c0070ef          	jal	2050c <__eqtf2>
   19350:	03813783          	ld	a5,56(sp)
   19354:	fff78a9b          	addw	s5,a5,-1
   19358:	360508e3          	beqz	a0,19ec8 <_svfprintf_r+0x10c0>
   1935c:	001b0793          	add	a5,s6,1
   19360:	0014041b          	addw	s0,s0,1
   19364:	015d0d33          	add	s10,s10,s5
   19368:	00fcb023          	sd	a5,0(s9)
   1936c:	015cb423          	sd	s5,8(s9)
   19370:	11a13823          	sd	s10,272(sp)
   19374:	10812423          	sw	s0,264(sp)
   19378:	00700793          	li	a5,7
   1937c:	3287c4e3          	blt	a5,s0,19ea4 <_svfprintf_r+0x109c>
   19380:	010c8c93          	add	s9,s9,16
   19384:	07013683          	ld	a3,112(sp)
   19388:	0014041b          	addw	s0,s0,1
   1938c:	0e010793          	add	a5,sp,224
   19390:	01a68733          	add	a4,a3,s10
   19394:	00fcb023          	sd	a5,0(s9)
   19398:	00dcb423          	sd	a3,8(s9)
   1939c:	10812423          	sw	s0,264(sp)
   193a0:	0004069b          	sext.w	a3,s0
   193a4:	10e13823          	sd	a4,272(sp)
   193a8:	00700793          	li	a5,7
   193ac:	010c8413          	add	s0,s9,16
   193b0:	d2d7d0e3          	bge	a5,a3,190d0 <_svfprintf_r+0x2c8>
   193b4:	00013583          	ld	a1,0(sp)
   193b8:	10010613          	add	a2,sp,256
   193bc:	00098513          	mv	a0,s3
   193c0:	371040ef          	jal	1df30 <__ssprint_r>
   193c4:	74051063          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   193c8:	11013703          	ld	a4,272(sp)
   193cc:	18010413          	add	s0,sp,384
   193d0:	d01ff06f          	j	190d0 <_svfprintf_r+0x2c8>
   193d4:	02013703          	ld	a4,32(sp)
   193d8:	0c0107a3          	sb	zero,207(sp)
   193dc:	00100c13          	li	s8,1
   193e0:	00072783          	lw	a5,0(a4)
   193e4:	00870713          	add	a4,a4,8
   193e8:	02e13023          	sd	a4,32(sp)
   193ec:	10f10c23          	sb	a5,280(sp)
   193f0:	00100d13          	li	s10,1
   193f4:	11810b13          	add	s6,sp,280
   193f8:	bf1ff06f          	j	18fe8 <_svfprintf_r+0x1e0>
   193fc:	02013783          	ld	a5,32(sp)
   19400:	0c0107a3          	sb	zero,207(sp)
   19404:	000a8313          	mv	t1,s5
   19408:	0007bb03          	ld	s6,0(a5)
   1940c:	00878a93          	add	s5,a5,8
   19410:	000b1463          	bnez	s6,19418 <_svfprintf_r+0x610>
   19414:	35c0106f          	j	1a770 <_svfprintf_r+0x1968>
   19418:	fff00713          	li	a4,-1
   1941c:	66e304e3          	beq	t1,a4,1a284 <_svfprintf_r+0x147c>
   19420:	00030613          	mv	a2,t1
   19424:	00000593          	li	a1,0
   19428:	000b0513          	mv	a0,s6
   1942c:	02613023          	sd	t1,32(sp)
   19430:	ee9fd0ef          	jal	17318 <memchr>
   19434:	00a13c23          	sd	a0,24(sp)
   19438:	02013303          	ld	t1,32(sp)
   1943c:	00051463          	bnez	a0,19444 <_svfprintf_r+0x63c>
   19440:	3d10106f          	j	1b010 <_svfprintf_r+0x2208>
   19444:	01813783          	ld	a5,24(sp)
   19448:	41678d3b          	subw	s10,a5,s6
   1944c:	0cf14703          	lbu	a4,207(sp)
   19450:	fffd4813          	not	a6,s10
   19454:	43f85813          	sra	a6,a6,0x3f
   19458:	03513023          	sd	s5,32(sp)
   1945c:	00013c23          	sd	zero,24(sp)
   19460:	04013423          	sd	zero,72(sp)
   19464:	04013023          	sd	zero,64(sp)
   19468:	02013823          	sd	zero,48(sp)
   1946c:	01a87c33          	and	s8,a6,s10
   19470:	00000313          	li	t1,0
   19474:	b80704e3          	beqz	a4,18ffc <_svfprintf_r+0x1f4>
   19478:	001c0c1b          	addw	s8,s8,1
   1947c:	b81ff06f          	j	18ffc <_svfprintf_r+0x1f4>
   19480:	02013783          	ld	a5,32(sp)
   19484:	0007aa03          	lw	s4,0(a5)
   19488:	00878793          	add	a5,a5,8
   1948c:	3c0a5ae3          	bgez	s4,1a060 <_svfprintf_r+0x1258>
   19490:	41400a3b          	negw	s4,s4
   19494:	02f13023          	sd	a5,32(sp)
   19498:	00496913          	or	s2,s2,4
   1949c:	0004ce03          	lbu	t3,0(s1)
   194a0:	0009091b          	sext.w	s2,s2
   194a4:	ac5ff06f          	j	18f68 <_svfprintf_r+0x160>
   194a8:	02b00793          	li	a5,43
   194ac:	0004ce03          	lbu	t3,0(s1)
   194b0:	0cf107a3          	sb	a5,207(sp)
   194b4:	ab5ff06f          	j	18f68 <_svfprintf_r+0x160>
   194b8:	08096913          	or	s2,s2,128
   194bc:	0004ce03          	lbu	t3,0(s1)
   194c0:	0009091b          	sext.w	s2,s2
   194c4:	aa5ff06f          	j	18f68 <_svfprintf_r+0x160>
   194c8:	0004cc83          	lbu	s9,0(s1)
   194cc:	02a00693          	li	a3,42
   194d0:	00148793          	add	a5,s1,1
   194d4:	00dc9463          	bne	s9,a3,194dc <_svfprintf_r+0x6d4>
   194d8:	6ad0106f          	j	1b384 <_svfprintf_r+0x257c>
   194dc:	fd0c871b          	addw	a4,s9,-48
   194e0:	00900613          	li	a2,9
   194e4:	00078493          	mv	s1,a5
   194e8:	00000a93          	li	s5,0
   194ec:	00900693          	li	a3,9
   194f0:	a8e660e3          	bltu	a2,a4,18f70 <_svfprintf_r+0x168>
   194f4:	0004cc83          	lbu	s9,0(s1)
   194f8:	002a979b          	sllw	a5,s5,0x2
   194fc:	0157833b          	addw	t1,a5,s5
   19500:	0013131b          	sllw	t1,t1,0x1
   19504:	00e30abb          	addw	s5,t1,a4
   19508:	fd0c871b          	addw	a4,s9,-48
   1950c:	00148493          	add	s1,s1,1
   19510:	fee6f2e3          	bgeu	a3,a4,194f4 <_svfprintf_r+0x6ec>
   19514:	a5dff06f          	j	18f70 <_svfprintf_r+0x168>
   19518:	00098513          	mv	a0,s3
   1951c:	a38fd0ef          	jal	16754 <_localeconv_r>
   19520:	00853783          	ld	a5,8(a0)
   19524:	00078513          	mv	a0,a5
   19528:	08f13423          	sd	a5,136(sp)
   1952c:	f70ff0ef          	jal	18c9c <strlen>
   19530:	00050793          	mv	a5,a0
   19534:	00098513          	mv	a0,s3
   19538:	00078c13          	mv	s8,a5
   1953c:	08f13023          	sd	a5,128(sp)
   19540:	a14fd0ef          	jal	16754 <_localeconv_r>
   19544:	01053703          	ld	a4,16(a0)
   19548:	0004ce03          	lbu	t3,0(s1)
   1954c:	06e13c23          	sd	a4,120(sp)
   19550:	a00c0ce3          	beqz	s8,18f68 <_svfprintf_r+0x160>
   19554:	a0070ae3          	beqz	a4,18f68 <_svfprintf_r+0x160>
   19558:	00074783          	lbu	a5,0(a4)
   1955c:	a00786e3          	beqz	a5,18f68 <_svfprintf_r+0x160>
   19560:	40096913          	or	s2,s2,1024
   19564:	0009091b          	sext.w	s2,s2
   19568:	a01ff06f          	j	18f68 <_svfprintf_r+0x160>
   1956c:	00196913          	or	s2,s2,1
   19570:	0004ce03          	lbu	t3,0(s1)
   19574:	0009091b          	sext.w	s2,s2
   19578:	9f1ff06f          	j	18f68 <_svfprintf_r+0x160>
   1957c:	0cf14783          	lbu	a5,207(sp)
   19580:	0004ce03          	lbu	t3,0(s1)
   19584:	9e0792e3          	bnez	a5,18f68 <_svfprintf_r+0x160>
   19588:	02000793          	li	a5,32
   1958c:	0cf107a3          	sb	a5,207(sp)
   19590:	9d9ff06f          	j	18f68 <_svfprintf_r+0x160>
   19594:	01096d93          	or	s11,s2,16
   19598:	000a8313          	mv	t1,s5
   1959c:	000d8d9b          	sext.w	s11,s11
   195a0:	02013683          	ld	a3,32(sp)
   195a4:	020df793          	and	a5,s11,32
   195a8:	00868713          	add	a4,a3,8
   195ac:	20078ee3          	beqz	a5,19fc8 <_svfprintf_r+0x11c0>
   195b0:	0006bd03          	ld	s10,0(a3)
   195b4:	00100793          	li	a5,1
   195b8:	02e13023          	sd	a4,32(sp)
   195bc:	00000713          	li	a4,0
   195c0:	0ce107a3          	sb	a4,207(sp)
   195c4:	fff00713          	li	a4,-1
   195c8:	2ae30e63          	beq	t1,a4,19884 <_svfprintf_r+0xa7c>
   195cc:	f7fdf913          	and	s2,s11,-129
   195d0:	0009091b          	sext.w	s2,s2
   195d4:	2a0d1663          	bnez	s10,19880 <_svfprintf_r+0xa78>
   195d8:	30031463          	bnez	t1,198e0 <_svfprintf_r+0xad8>
   195dc:	20079ce3          	bnez	a5,19ff4 <_svfprintf_r+0x11ec>
   195e0:	001dfd13          	and	s10,s11,1
   195e4:	17c10b13          	add	s6,sp,380
   195e8:	280d12e3          	bnez	s10,1a06c <_svfprintf_r+0x1264>
   195ec:	0cf14703          	lbu	a4,207(sp)
   195f0:	00030813          	mv	a6,t1
   195f4:	01a35463          	bge	t1,s10,195fc <_svfprintf_r+0x7f4>
   195f8:	000d0813          	mv	a6,s10
   195fc:	00013c23          	sd	zero,24(sp)
   19600:	04013423          	sd	zero,72(sp)
   19604:	04013023          	sd	zero,64(sp)
   19608:	02013823          	sd	zero,48(sp)
   1960c:	00080c1b          	sext.w	s8,a6
   19610:	e60714e3          	bnez	a4,19478 <_svfprintf_r+0x670>
   19614:	9e9ff06f          	j	18ffc <_svfprintf_r+0x1f4>
   19618:	00896913          	or	s2,s2,8
   1961c:	0004ce03          	lbu	t3,0(s1)
   19620:	0009091b          	sext.w	s2,s2
   19624:	945ff06f          	j	18f68 <_svfprintf_r+0x160>
   19628:	01096913          	or	s2,s2,16
   1962c:	000a8313          	mv	t1,s5
   19630:	0009091b          	sext.w	s2,s2
   19634:	02013683          	ld	a3,32(sp)
   19638:	02097793          	and	a5,s2,32
   1963c:	00868713          	add	a4,a3,8
   19640:	140784e3          	beqz	a5,19f88 <_svfprintf_r+0x1180>
   19644:	0006b783          	ld	a5,0(a3)
   19648:	00078d13          	mv	s10,a5
   1964c:	1607c2e3          	bltz	a5,19fb0 <_svfprintf_r+0x11a8>
   19650:	fff00793          	li	a5,-1
   19654:	00f31463          	bne	t1,a5,1965c <_svfprintf_r+0x854>
   19658:	0100106f          	j	1a668 <_svfprintf_r+0x1860>
   1965c:	f7f97d93          	and	s11,s2,-129
   19660:	02e13023          	sd	a4,32(sp)
   19664:	000d8d9b          	sext.w	s11,s11
   19668:	280d0ee3          	beqz	s10,1a104 <_svfprintf_r+0x12fc>
   1966c:	00900793          	li	a5,9
   19670:	63a7e0e3          	bltu	a5,s10,1a490 <_svfprintf_r+0x1688>
   19674:	030d0d1b          	addw	s10,s10,48
   19678:	17a10da3          	sb	s10,379(sp)
   1967c:	000d8913          	mv	s2,s11
   19680:	00100d13          	li	s10,1
   19684:	17b10b13          	add	s6,sp,379
   19688:	f65ff06f          	j	195ec <_svfprintf_r+0x7e4>
   1968c:	01096913          	or	s2,s2,16
   19690:	000a8313          	mv	t1,s5
   19694:	0009091b          	sext.w	s2,s2
   19698:	02013683          	ld	a3,32(sp)
   1969c:	02097793          	and	a5,s2,32
   196a0:	00868713          	add	a4,a3,8
   196a4:	0c0780e3          	beqz	a5,19f64 <_svfprintf_r+0x115c>
   196a8:	0006bd03          	ld	s10,0(a3)
   196ac:	bff97d93          	and	s11,s2,-1025
   196b0:	000d8d9b          	sext.w	s11,s11
   196b4:	02e13023          	sd	a4,32(sp)
   196b8:	00000793          	li	a5,0
   196bc:	f01ff06f          	j	195bc <_svfprintf_r+0x7b4>
   196c0:	0004ce03          	lbu	t3,0(s1)
   196c4:	06800793          	li	a5,104
   196c8:	2afe08e3          	beq	t3,a5,1a178 <_svfprintf_r+0x1370>
   196cc:	04096913          	or	s2,s2,64
   196d0:	0009091b          	sext.w	s2,s2
   196d4:	895ff06f          	j	18f68 <_svfprintf_r+0x160>
   196d8:	02096913          	or	s2,s2,32
   196dc:	0004ce03          	lbu	t3,0(s1)
   196e0:	0009091b          	sext.w	s2,s2
   196e4:	885ff06f          	j	18f68 <_svfprintf_r+0x160>
   196e8:	02013703          	ld	a4,32(sp)
   196ec:	ffff87b7          	lui	a5,0xffff8
   196f0:	8307c793          	xor	a5,a5,-2000
   196f4:	0cf11823          	sh	a5,208(sp)
   196f8:	00870793          	add	a5,a4,8
   196fc:	02f13023          	sd	a5,32(sp)
   19700:	000227b7          	lui	a5,0x22
   19704:	d4078793          	add	a5,a5,-704 # 21d40 <__clzdi2+0xb4>
   19708:	00296d93          	or	s11,s2,2
   1970c:	06f13423          	sd	a5,104(sp)
   19710:	00073d03          	ld	s10,0(a4)
   19714:	000a8313          	mv	t1,s5
   19718:	000d8d9b          	sext.w	s11,s11
   1971c:	00200793          	li	a5,2
   19720:	07800c93          	li	s9,120
   19724:	e99ff06f          	j	195bc <_svfprintf_r+0x7b4>
   19728:	02013703          	ld	a4,32(sp)
   1972c:	02097793          	and	a5,s2,32
   19730:	00073703          	ld	a4,0(a4)
   19734:	140784e3          	beqz	a5,1a07c <_svfprintf_r+0x1274>
   19738:	01013783          	ld	a5,16(sp)
   1973c:	00f73023          	sd	a5,0(a4)
   19740:	02013783          	ld	a5,32(sp)
   19744:	00048b13          	mv	s6,s1
   19748:	00878793          	add	a5,a5,8
   1974c:	02f13023          	sd	a5,32(sp)
   19750:	9cdff06f          	j	1911c <_svfprintf_r+0x314>
   19754:	0004ce03          	lbu	t3,0(s1)
   19758:	06c00793          	li	a5,108
   1975c:	22fe08e3          	beq	t3,a5,1a18c <_svfprintf_r+0x1384>
   19760:	01096913          	or	s2,s2,16
   19764:	0009091b          	sext.w	s2,s2
   19768:	801ff06f          	j	18f68 <_svfprintf_r+0x160>
   1976c:	06500693          	li	a3,101
   19770:	b796d2e3          	bge	a3,s9,192d4 <_svfprintf_r+0x4cc>
   19774:	0f013503          	ld	a0,240(sp)
   19778:	0f813583          	ld	a1,248(sp)
   1977c:	00000613          	li	a2,0
   19780:	00000693          	li	a3,0
   19784:	589060ef          	jal	2050c <__eqtf2>
   19788:	56051063          	bnez	a0,19ce8 <_svfprintf_r+0xee0>
   1978c:	10812783          	lw	a5,264(sp)
   19790:	000226b7          	lui	a3,0x22
   19794:	d6068693          	add	a3,a3,-672 # 21d60 <__clzdi2+0xd4>
   19798:	0017879b          	addw	a5,a5,1
   1979c:	00d43023          	sd	a3,0(s0)
   197a0:	001d8d93          	add	s11,s11,1
   197a4:	00100693          	li	a3,1
   197a8:	00d43423          	sd	a3,8(s0)
   197ac:	10f12423          	sw	a5,264(sp)
   197b0:	0007869b          	sext.w	a3,a5
   197b4:	11b13823          	sd	s11,272(sp)
   197b8:	00700793          	li	a5,7
   197bc:	01040413          	add	s0,s0,16
   197c0:	6ad7cae3          	blt	a5,a3,1a674 <_svfprintf_r+0x186c>
   197c4:	0d812783          	lw	a5,216(sp)
   197c8:	03813703          	ld	a4,56(sp)
   197cc:	06e7dee3          	bge	a5,a4,1a048 <_svfprintf_r+0x1240>
   197d0:	05813683          	ld	a3,88(sp)
   197d4:	10812783          	lw	a5,264(sp)
   197d8:	06013603          	ld	a2,96(sp)
   197dc:	01b68733          	add	a4,a3,s11
   197e0:	0017879b          	addw	a5,a5,1
   197e4:	00d43423          	sd	a3,8(s0)
   197e8:	00c43023          	sd	a2,0(s0)
   197ec:	0007869b          	sext.w	a3,a5
   197f0:	10f12423          	sw	a5,264(sp)
   197f4:	10e13823          	sd	a4,272(sp)
   197f8:	00700793          	li	a5,7
   197fc:	01040413          	add	s0,s0,16
   19800:	1ad7cee3          	blt	a5,a3,1a1bc <_svfprintf_r+0x13b4>
   19804:	03813783          	ld	a5,56(sp)
   19808:	fff78c9b          	addw	s9,a5,-1
   1980c:	8d9052e3          	blez	s9,190d0 <_svfprintf_r+0x2c8>
   19810:	00022f37          	lui	t5,0x22
   19814:	01000693          	li	a3,16
   19818:	10812783          	lw	a5,264(sp)
   1981c:	650f0d93          	add	s11,t5,1616 # 22650 <zeroes.0>
   19820:	6796dae3          	bge	a3,s9,1a694 <_svfprintf_r+0x188c>
   19824:	00013b03          	ld	s6,0(sp)
   19828:	01000d13          	li	s10,16
   1982c:	00700a93          	li	s5,7
   19830:	00c0006f          	j	1983c <_svfprintf_r+0xa34>
   19834:	ff0c8c9b          	addw	s9,s9,-16
   19838:	659d5ee3          	bge	s10,s9,1a694 <_svfprintf_r+0x188c>
   1983c:	0017879b          	addw	a5,a5,1
   19840:	01070713          	add	a4,a4,16
   19844:	01b43023          	sd	s11,0(s0)
   19848:	01a43423          	sd	s10,8(s0)
   1984c:	10e13823          	sd	a4,272(sp)
   19850:	10f12423          	sw	a5,264(sp)
   19854:	01040413          	add	s0,s0,16
   19858:	fcfadee3          	bge	s5,a5,19834 <_svfprintf_r+0xa2c>
   1985c:	10010613          	add	a2,sp,256
   19860:	000b0593          	mv	a1,s6
   19864:	00098513          	mv	a0,s3
   19868:	6c8040ef          	jal	1df30 <__ssprint_r>
   1986c:	28051c63          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   19870:	11013703          	ld	a4,272(sp)
   19874:	10812783          	lw	a5,264(sp)
   19878:	18010413          	add	s0,sp,384
   1987c:	fb9ff06f          	j	19834 <_svfprintf_r+0xa2c>
   19880:	00090d93          	mv	s11,s2
   19884:	00100713          	li	a4,1
   19888:	dee782e3          	beq	a5,a4,1966c <_svfprintf_r+0x864>
   1988c:	00200713          	li	a4,2
   19890:	06e78463          	beq	a5,a4,198f8 <_svfprintf_r+0xaf0>
   19894:	17c10a93          	add	s5,sp,380
   19898:	000a8b13          	mv	s6,s5
   1989c:	007d7713          	and	a4,s10,7
   198a0:	03070713          	add	a4,a4,48
   198a4:	feeb0fa3          	sb	a4,-1(s6)
   198a8:	003d5d13          	srl	s10,s10,0x3
   198ac:	000b0613          	mv	a2,s6
   198b0:	fffb0b13          	add	s6,s6,-1
   198b4:	fe0d14e3          	bnez	s10,1989c <_svfprintf_r+0xa94>
   198b8:	001df593          	and	a1,s11,1
   198bc:	06058263          	beqz	a1,19920 <_svfprintf_r+0xb18>
   198c0:	03000593          	li	a1,48
   198c4:	04b70e63          	beq	a4,a1,19920 <_svfprintf_r+0xb18>
   198c8:	ffe60613          	add	a2,a2,-2
   198cc:	febb0fa3          	sb	a1,-1(s6)
   198d0:	40ca8d3b          	subw	s10,s5,a2
   198d4:	000d8913          	mv	s2,s11
   198d8:	00060b13          	mv	s6,a2
   198dc:	d11ff06f          	j	195ec <_svfprintf_r+0x7e4>
   198e0:	00100713          	li	a4,1
   198e4:	00e79463          	bne	a5,a4,198ec <_svfprintf_r+0xae4>
   198e8:	7d40106f          	j	1b0bc <_svfprintf_r+0x22b4>
   198ec:	00200713          	li	a4,2
   198f0:	00090d93          	mv	s11,s2
   198f4:	fae790e3          	bne	a5,a4,19894 <_svfprintf_r+0xa8c>
   198f8:	06813703          	ld	a4,104(sp)
   198fc:	17c10a93          	add	s5,sp,380
   19900:	000a8b13          	mv	s6,s5
   19904:	00fd7793          	and	a5,s10,15
   19908:	00f707b3          	add	a5,a4,a5
   1990c:	0007c783          	lbu	a5,0(a5)
   19910:	004d5d13          	srl	s10,s10,0x4
   19914:	fffb0b13          	add	s6,s6,-1
   19918:	00fb0023          	sb	a5,0(s6)
   1991c:	fe0d14e3          	bnez	s10,19904 <_svfprintf_r+0xafc>
   19920:	416a8d3b          	subw	s10,s5,s6
   19924:	000d8913          	mv	s2,s11
   19928:	cc5ff06f          	j	195ec <_svfprintf_r+0x7e4>
   1992c:	418a0abb          	subw	s5,s4,s8
   19930:	f7505463          	blez	s5,19098 <_svfprintf_r+0x290>
   19934:	00022f37          	lui	t5,0x22
   19938:	01000593          	li	a1,16
   1993c:	000d8713          	mv	a4,s11
   19940:	10812603          	lw	a2,264(sp)
   19944:	650f0d93          	add	s11,t5,1616 # 22650 <zeroes.0>
   19948:	0955de63          	bge	a1,s5,199e4 <_svfprintf_r+0xbdc>
   1994c:	08913823          	sd	s1,144(sp)
   19950:	01000f93          	li	t6,16
   19954:	000a8493          	mv	s1,s5
   19958:	00700b93          	li	s7,7
   1995c:	000a0a93          	mv	s5,s4
   19960:	00090a13          	mv	s4,s2
   19964:	000d8913          	mv	s2,s11
   19968:	000b0d93          	mv	s11,s6
   1996c:	00030b13          	mv	s6,t1
   19970:	00c0006f          	j	1997c <_svfprintf_r+0xb74>
   19974:	ff04849b          	addw	s1,s1,-16
   19978:	049fd863          	bge	t6,s1,199c8 <_svfprintf_r+0xbc0>
   1997c:	0016061b          	addw	a2,a2,1
   19980:	01070713          	add	a4,a4,16
   19984:	01243023          	sd	s2,0(s0)
   19988:	01f43423          	sd	t6,8(s0)
   1998c:	10e13823          	sd	a4,272(sp)
   19990:	10c12423          	sw	a2,264(sp)
   19994:	01040413          	add	s0,s0,16
   19998:	fccbdee3          	bge	s7,a2,19974 <_svfprintf_r+0xb6c>
   1999c:	00013583          	ld	a1,0(sp)
   199a0:	10010613          	add	a2,sp,256
   199a4:	00098513          	mv	a0,s3
   199a8:	588040ef          	jal	1df30 <__ssprint_r>
   199ac:	14051c63          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   199b0:	01000f93          	li	t6,16
   199b4:	ff04849b          	addw	s1,s1,-16
   199b8:	11013703          	ld	a4,272(sp)
   199bc:	10812603          	lw	a2,264(sp)
   199c0:	18010413          	add	s0,sp,384
   199c4:	fa9fcce3          	blt	t6,s1,1997c <_svfprintf_r+0xb74>
   199c8:	000b0313          	mv	t1,s6
   199cc:	000d8b13          	mv	s6,s11
   199d0:	00090d93          	mv	s11,s2
   199d4:	000a0913          	mv	s2,s4
   199d8:	000a8a13          	mv	s4,s5
   199dc:	00048a93          	mv	s5,s1
   199e0:	09013483          	ld	s1,144(sp)
   199e4:	0016059b          	addw	a1,a2,1
   199e8:	00ea8733          	add	a4,s5,a4
   199ec:	01b43023          	sd	s11,0(s0)
   199f0:	01543423          	sd	s5,8(s0)
   199f4:	10e13823          	sd	a4,272(sp)
   199f8:	10b12423          	sw	a1,264(sp)
   199fc:	00700613          	li	a2,7
   19a00:	4eb646e3          	blt	a2,a1,1a6ec <_svfprintf_r+0x18e4>
   19a04:	41a30bbb          	subw	s7,t1,s10
   19a08:	01040413          	add	s0,s0,16
   19a0c:	00070d93          	mv	s11,a4
   19a10:	e9705863          	blez	s7,190a0 <_svfprintf_r+0x298>
   19a14:	00022f37          	lui	t5,0x22
   19a18:	01000593          	li	a1,16
   19a1c:	000d8713          	mv	a4,s11
   19a20:	10812603          	lw	a2,264(sp)
   19a24:	650f0d93          	add	s11,t5,1616 # 22650 <zeroes.0>
   19a28:	0975de63          	bge	a1,s7,19ac4 <_svfprintf_r+0xcbc>
   19a2c:	000b0793          	mv	a5,s6
   19a30:	00813d83          	ld	s11,8(sp)
   19a34:	000a0b13          	mv	s6,s4
   19a38:	01000893          	li	a7,16
   19a3c:	00090a13          	mv	s4,s2
   19a40:	00700a93          	li	s5,7
   19a44:	00048913          	mv	s2,s1
   19a48:	000b8493          	mv	s1,s7
   19a4c:	00078b93          	mv	s7,a5
   19a50:	00c0006f          	j	19a5c <_svfprintf_r+0xc54>
   19a54:	ff04849b          	addw	s1,s1,-16
   19a58:	0498da63          	bge	a7,s1,19aac <_svfprintf_r+0xca4>
   19a5c:	00813683          	ld	a3,8(sp)
   19a60:	0016061b          	addw	a2,a2,1
   19a64:	01070713          	add	a4,a4,16
   19a68:	00d43023          	sd	a3,0(s0)
   19a6c:	01143423          	sd	a7,8(s0)
   19a70:	10e13823          	sd	a4,272(sp)
   19a74:	10c12423          	sw	a2,264(sp)
   19a78:	01040413          	add	s0,s0,16
   19a7c:	fccadce3          	bge	s5,a2,19a54 <_svfprintf_r+0xc4c>
   19a80:	00013583          	ld	a1,0(sp)
   19a84:	10010613          	add	a2,sp,256
   19a88:	00098513          	mv	a0,s3
   19a8c:	4a4040ef          	jal	1df30 <__ssprint_r>
   19a90:	06051a63          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   19a94:	01000893          	li	a7,16
   19a98:	ff04849b          	addw	s1,s1,-16
   19a9c:	11013703          	ld	a4,272(sp)
   19aa0:	10812603          	lw	a2,264(sp)
   19aa4:	18010413          	add	s0,sp,384
   19aa8:	fa98cae3          	blt	a7,s1,19a5c <_svfprintf_r+0xc54>
   19aac:	000b8793          	mv	a5,s7
   19ab0:	00048b93          	mv	s7,s1
   19ab4:	00090493          	mv	s1,s2
   19ab8:	000a0913          	mv	s2,s4
   19abc:	000b0a13          	mv	s4,s6
   19ac0:	00078b13          	mv	s6,a5
   19ac4:	0016059b          	addw	a1,a2,1
   19ac8:	00eb8733          	add	a4,s7,a4
   19acc:	01b43023          	sd	s11,0(s0)
   19ad0:	01743423          	sd	s7,8(s0)
   19ad4:	10e13823          	sd	a4,272(sp)
   19ad8:	10b12423          	sw	a1,264(sp)
   19adc:	00700613          	li	a2,7
   19ae0:	46b64263          	blt	a2,a1,19f44 <_svfprintf_r+0x113c>
   19ae4:	01040413          	add	s0,s0,16
   19ae8:	00070d93          	mv	s11,a4
   19aec:	db4ff06f          	j	190a0 <_svfprintf_r+0x298>
   19af0:	00013583          	ld	a1,0(sp)
   19af4:	10010613          	add	a2,sp,256
   19af8:	00098513          	mv	a0,s3
   19afc:	434040ef          	jal	1df30 <__ssprint_r>
   19b00:	de050e63          	beqz	a0,190fc <_svfprintf_r+0x2f4>
   19b04:	01813583          	ld	a1,24(sp)
   19b08:	e2058463          	beqz	a1,19130 <_svfprintf_r+0x328>
   19b0c:	05013503          	ld	a0,80(sp)
   19b10:	afdf90ef          	jal	1360c <_free_r>
   19b14:	e1cff06f          	j	19130 <_svfprintf_r+0x328>
   19b18:	000228b7          	lui	a7,0x22
   19b1c:	01000513          	li	a0,16
   19b20:	11013583          	ld	a1,272(sp)
   19b24:	10812603          	lw	a2,264(sp)
   19b28:	66088d93          	add	s11,a7,1632 # 22660 <blanks.1>
   19b2c:	08e55c63          	bge	a0,a4,19bc4 <_svfprintf_r+0xdbc>
   19b30:	08913823          	sd	s1,144(sp)
   19b34:	00040793          	mv	a5,s0
   19b38:	000d8493          	mv	s1,s11
   19b3c:	01000f13          	li	t5,16
   19b40:	000b0d93          	mv	s11,s6
   19b44:	00700393          	li	t2,7
   19b48:	00070413          	mv	s0,a4
   19b4c:	00030b13          	mv	s6,t1
   19b50:	00c0006f          	j	19b5c <_svfprintf_r+0xd54>
   19b54:	ff04041b          	addw	s0,s0,-16
   19b58:	048f5a63          	bge	t5,s0,19bac <_svfprintf_r+0xda4>
   19b5c:	0016061b          	addw	a2,a2,1
   19b60:	01058593          	add	a1,a1,16
   19b64:	0097b023          	sd	s1,0(a5)
   19b68:	01e7b423          	sd	t5,8(a5)
   19b6c:	10b13823          	sd	a1,272(sp)
   19b70:	10c12423          	sw	a2,264(sp)
   19b74:	01078793          	add	a5,a5,16
   19b78:	fcc3dee3          	bge	t2,a2,19b54 <_svfprintf_r+0xd4c>
   19b7c:	00013583          	ld	a1,0(sp)
   19b80:	10010613          	add	a2,sp,256
   19b84:	00098513          	mv	a0,s3
   19b88:	3a8040ef          	jal	1df30 <__ssprint_r>
   19b8c:	f6051ce3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   19b90:	01000f13          	li	t5,16
   19b94:	ff04041b          	addw	s0,s0,-16
   19b98:	11013583          	ld	a1,272(sp)
   19b9c:	10812603          	lw	a2,264(sp)
   19ba0:	18010793          	add	a5,sp,384
   19ba4:	00700393          	li	t2,7
   19ba8:	fa8f4ae3          	blt	t5,s0,19b5c <_svfprintf_r+0xd54>
   19bac:	000b0313          	mv	t1,s6
   19bb0:	000d8b13          	mv	s6,s11
   19bb4:	00048d93          	mv	s11,s1
   19bb8:	09013483          	ld	s1,144(sp)
   19bbc:	00040713          	mv	a4,s0
   19bc0:	00078413          	mv	s0,a5
   19bc4:	00b705b3          	add	a1,a4,a1
   19bc8:	0016061b          	addw	a2,a2,1
   19bcc:	00e43423          	sd	a4,8(s0)
   19bd0:	01b43023          	sd	s11,0(s0)
   19bd4:	10b13823          	sd	a1,272(sp)
   19bd8:	10c12423          	sw	a2,264(sp)
   19bdc:	0006059b          	sext.w	a1,a2
   19be0:	00700713          	li	a4,7
   19be4:	01040413          	add	s0,s0,16
   19be8:	c2b75863          	bge	a4,a1,19018 <_svfprintf_r+0x210>
   19bec:	00013583          	ld	a1,0(sp)
   19bf0:	10010613          	add	a2,sp,256
   19bf4:	00098513          	mv	a0,s3
   19bf8:	08613823          	sd	t1,144(sp)
   19bfc:	334040ef          	jal	1df30 <__ssprint_r>
   19c00:	f00512e3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   19c04:	09013303          	ld	t1,144(sp)
   19c08:	18010413          	add	s0,sp,384
   19c0c:	c0cff06f          	j	19018 <_svfprintf_r+0x210>
   19c10:	00013583          	ld	a1,0(sp)
   19c14:	10010613          	add	a2,sp,256
   19c18:	00098513          	mv	a0,s3
   19c1c:	08613823          	sd	t1,144(sp)
   19c20:	310040ef          	jal	1df30 <__ssprint_r>
   19c24:	ee0510e3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   19c28:	11013d83          	ld	s11,272(sp)
   19c2c:	09013303          	ld	t1,144(sp)
   19c30:	18010413          	add	s0,sp,384
   19c34:	c5cff06f          	j	19090 <_svfprintf_r+0x288>
   19c38:	000228b7          	lui	a7,0x22
   19c3c:	01000693          	li	a3,16
   19c40:	10812783          	lw	a5,264(sp)
   19c44:	66088d93          	add	s11,a7,1632 # 22660 <blanks.1>
   19c48:	0726d263          	bge	a3,s2,19cac <_svfprintf_r+0xea4>
   19c4c:	00013a83          	ld	s5,0(sp)
   19c50:	01000c93          	li	s9,16
   19c54:	00700d13          	li	s10,7
   19c58:	00c0006f          	j	19c64 <_svfprintf_r+0xe5c>
   19c5c:	ff09091b          	addw	s2,s2,-16
   19c60:	052cd663          	bge	s9,s2,19cac <_svfprintf_r+0xea4>
   19c64:	0017879b          	addw	a5,a5,1
   19c68:	01070713          	add	a4,a4,16
   19c6c:	01b43023          	sd	s11,0(s0)
   19c70:	01943423          	sd	s9,8(s0)
   19c74:	10e13823          	sd	a4,272(sp)
   19c78:	10f12423          	sw	a5,264(sp)
   19c7c:	01040413          	add	s0,s0,16
   19c80:	fcfd5ee3          	bge	s10,a5,19c5c <_svfprintf_r+0xe54>
   19c84:	10010613          	add	a2,sp,256
   19c88:	000a8593          	mv	a1,s5
   19c8c:	00098513          	mv	a0,s3
   19c90:	2a0040ef          	jal	1df30 <__ssprint_r>
   19c94:	e60518e3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   19c98:	ff09091b          	addw	s2,s2,-16
   19c9c:	11013703          	ld	a4,272(sp)
   19ca0:	10812783          	lw	a5,264(sp)
   19ca4:	18010413          	add	s0,sp,384
   19ca8:	fb2ccee3          	blt	s9,s2,19c64 <_svfprintf_r+0xe5c>
   19cac:	0017869b          	addw	a3,a5,1
   19cb0:	01270733          	add	a4,a4,s2
   19cb4:	01b43023          	sd	s11,0(s0)
   19cb8:	01243423          	sd	s2,8(s0)
   19cbc:	10e13823          	sd	a4,272(sp)
   19cc0:	10d12423          	sw	a3,264(sp)
   19cc4:	00700793          	li	a5,7
   19cc8:	c0d7dc63          	bge	a5,a3,190e0 <_svfprintf_r+0x2d8>
   19ccc:	00013583          	ld	a1,0(sp)
   19cd0:	10010613          	add	a2,sp,256
   19cd4:	00098513          	mv	a0,s3
   19cd8:	258040ef          	jal	1df30 <__ssprint_r>
   19cdc:	e20514e3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   19ce0:	11013703          	ld	a4,272(sp)
   19ce4:	bfcff06f          	j	190e0 <_svfprintf_r+0x2d8>
   19ce8:	0d812603          	lw	a2,216(sp)
   19cec:	08c058e3          	blez	a2,1a57c <_svfprintf_r+0x1774>
   19cf0:	03813783          	ld	a5,56(sp)
   19cf4:	03013703          	ld	a4,48(sp)
   19cf8:	00fb0ab3          	add	s5,s6,a5
   19cfc:	00078693          	mv	a3,a5
   19d00:	3ef74a63          	blt	a4,a5,1a0f4 <_svfprintf_r+0x12ec>
   19d04:	00068c9b          	sext.w	s9,a3
   19d08:	03905663          	blez	s9,19d34 <_svfprintf_r+0xf2c>
   19d0c:	10812603          	lw	a2,264(sp)
   19d10:	019d8db3          	add	s11,s11,s9
   19d14:	01643023          	sd	s6,0(s0)
   19d18:	0016059b          	addw	a1,a2,1
   19d1c:	01943423          	sd	s9,8(s0)
   19d20:	11b13823          	sd	s11,272(sp)
   19d24:	10b12423          	sw	a1,264(sp)
   19d28:	00700613          	li	a2,7
   19d2c:	01040413          	add	s0,s0,16
   19d30:	3cb64ae3          	blt	a2,a1,1a904 <_svfprintf_r+0x1afc>
   19d34:	fffcc613          	not	a2,s9
   19d38:	03013783          	ld	a5,48(sp)
   19d3c:	43f65613          	sra	a2,a2,0x3f
   19d40:	00ccf6b3          	and	a3,s9,a2
   19d44:	40d78cbb          	subw	s9,a5,a3
   19d48:	4d904263          	bgtz	s9,1a20c <_svfprintf_r+0x1404>
   19d4c:	03013783          	ld	a5,48(sp)
   19d50:	40097693          	and	a3,s2,1024
   19d54:	00fb0b33          	add	s6,s6,a5
   19d58:	52069e63          	bnez	a3,1a294 <_svfprintf_r+0x148c>
   19d5c:	0d812683          	lw	a3,216(sp)
   19d60:	03813783          	ld	a5,56(sp)
   19d64:	00f6c663          	blt	a3,a5,19d70 <_svfprintf_r+0xf68>
   19d68:	00197613          	and	a2,s2,1
   19d6c:	3c0600e3          	beqz	a2,1a92c <_svfprintf_r+0x1b24>
   19d70:	10812603          	lw	a2,264(sp)
   19d74:	05813783          	ld	a5,88(sp)
   19d78:	06013583          	ld	a1,96(sp)
   19d7c:	01040413          	add	s0,s0,16
   19d80:	01b78733          	add	a4,a5,s11
   19d84:	feb43823          	sd	a1,-16(s0)
   19d88:	0016059b          	addw	a1,a2,1
   19d8c:	fef43c23          	sd	a5,-8(s0)
   19d90:	10e13823          	sd	a4,272(sp)
   19d94:	10b12423          	sw	a1,264(sp)
   19d98:	00700613          	li	a2,7
   19d9c:	00b65463          	bge	a2,a1,19da4 <_svfprintf_r+0xf9c>
   19da0:	1fc0106f          	j	1af9c <_svfprintf_r+0x2194>
   19da4:	03813783          	ld	a5,56(sp)
   19da8:	416a8cb3          	sub	s9,s5,s6
   19dac:	000c859b          	sext.w	a1,s9
   19db0:	40d7863b          	subw	a2,a5,a3
   19db4:	00b65463          	bge	a2,a1,19dbc <_svfprintf_r+0xfb4>
   19db8:	00060c93          	mv	s9,a2
   19dbc:	000c8c9b          	sext.w	s9,s9
   19dc0:	03905863          	blez	s9,19df0 <_svfprintf_r+0xfe8>
   19dc4:	10812683          	lw	a3,264(sp)
   19dc8:	01970733          	add	a4,a4,s9
   19dcc:	01643023          	sd	s6,0(s0)
   19dd0:	0016869b          	addw	a3,a3,1
   19dd4:	01943423          	sd	s9,8(s0)
   19dd8:	10e13823          	sd	a4,272(sp)
   19ddc:	10d12423          	sw	a3,264(sp)
   19de0:	00700793          	li	a5,7
   19de4:	01040413          	add	s0,s0,16
   19de8:	00d7d463          	bge	a5,a3,19df0 <_svfprintf_r+0xfe8>
   19dec:	2500106f          	j	1b03c <_svfprintf_r+0x2234>
   19df0:	fffcc793          	not	a5,s9
   19df4:	43f7d793          	sra	a5,a5,0x3f
   19df8:	00fcfcb3          	and	s9,s9,a5
   19dfc:	41960cbb          	subw	s9,a2,s9
   19e00:	ad905863          	blez	s9,190d0 <_svfprintf_r+0x2c8>
   19e04:	00022f37          	lui	t5,0x22
   19e08:	01000693          	li	a3,16
   19e0c:	10812783          	lw	a5,264(sp)
   19e10:	650f0d93          	add	s11,t5,1616 # 22650 <zeroes.0>
   19e14:	0996d0e3          	bge	a3,s9,1a694 <_svfprintf_r+0x188c>
   19e18:	00013b03          	ld	s6,0(sp)
   19e1c:	01000d13          	li	s10,16
   19e20:	00700a93          	li	s5,7
   19e24:	00c0006f          	j	19e30 <_svfprintf_r+0x1028>
   19e28:	ff0c8c9b          	addw	s9,s9,-16
   19e2c:	079d54e3          	bge	s10,s9,1a694 <_svfprintf_r+0x188c>
   19e30:	0017879b          	addw	a5,a5,1
   19e34:	01070713          	add	a4,a4,16
   19e38:	01b43023          	sd	s11,0(s0)
   19e3c:	01a43423          	sd	s10,8(s0)
   19e40:	10e13823          	sd	a4,272(sp)
   19e44:	10f12423          	sw	a5,264(sp)
   19e48:	01040413          	add	s0,s0,16
   19e4c:	fcfadee3          	bge	s5,a5,19e28 <_svfprintf_r+0x1020>
   19e50:	10010613          	add	a2,sp,256
   19e54:	000b0593          	mv	a1,s6
   19e58:	00098513          	mv	a0,s3
   19e5c:	0d4040ef          	jal	1df30 <__ssprint_r>
   19e60:	ca0512e3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   19e64:	11013703          	ld	a4,272(sp)
   19e68:	10812783          	lw	a5,264(sp)
   19e6c:	18010413          	add	s0,sp,384
   19e70:	fb9ff06f          	j	19e28 <_svfprintf_r+0x1020>
   19e74:	00197613          	and	a2,s2,1
   19e78:	c6061663          	bnez	a2,192e4 <_svfprintf_r+0x4dc>
   19e7c:	10812603          	lw	a2,264(sp)
   19e80:	001d8d13          	add	s10,s11,1
   19e84:	01643023          	sd	s6,0(s0)
   19e88:	0016079b          	addw	a5,a2,1
   19e8c:	00d43423          	sd	a3,8(s0)
   19e90:	10f12423          	sw	a5,264(sp)
   19e94:	0007841b          	sext.w	s0,a5
   19e98:	11a13823          	sd	s10,272(sp)
   19e9c:	00700793          	li	a5,7
   19ea0:	ce87d263          	bge	a5,s0,19384 <_svfprintf_r+0x57c>
   19ea4:	00013583          	ld	a1,0(sp)
   19ea8:	10010613          	add	a2,sp,256
   19eac:	00098513          	mv	a0,s3
   19eb0:	080040ef          	jal	1df30 <__ssprint_r>
   19eb4:	c40518e3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   19eb8:	11013d03          	ld	s10,272(sp)
   19ebc:	10812403          	lw	s0,264(sp)
   19ec0:	18010c93          	add	s9,sp,384
   19ec4:	cc0ff06f          	j	19384 <_svfprintf_r+0x57c>
   19ec8:	03813703          	ld	a4,56(sp)
   19ecc:	00100793          	li	a5,1
   19ed0:	cae7da63          	bge	a5,a4,19384 <_svfprintf_r+0x57c>
   19ed4:	00022f37          	lui	t5,0x22
   19ed8:	01100793          	li	a5,17
   19edc:	650f0d93          	add	s11,t5,1616 # 22650 <zeroes.0>
   19ee0:	0ae7dae3          	bge	a5,a4,1a794 <_svfprintf_r+0x198c>
   19ee4:	00013b83          	ld	s7,0(sp)
   19ee8:	01000713          	li	a4,16
   19eec:	00700b13          	li	s6,7
   19ef0:	00c0006f          	j	19efc <_svfprintf_r+0x10f4>
   19ef4:	ff0a8a9b          	addw	s5,s5,-16
   19ef8:	09575ee3          	bge	a4,s5,1a794 <_svfprintf_r+0x198c>
   19efc:	0014041b          	addw	s0,s0,1
   19f00:	010d0d13          	add	s10,s10,16
   19f04:	01bcb023          	sd	s11,0(s9)
   19f08:	00ecb423          	sd	a4,8(s9)
   19f0c:	11a13823          	sd	s10,272(sp)
   19f10:	10812423          	sw	s0,264(sp)
   19f14:	010c8c93          	add	s9,s9,16
   19f18:	fc8b5ee3          	bge	s6,s0,19ef4 <_svfprintf_r+0x10ec>
   19f1c:	10010613          	add	a2,sp,256
   19f20:	000b8593          	mv	a1,s7
   19f24:	00098513          	mv	a0,s3
   19f28:	008040ef          	jal	1df30 <__ssprint_r>
   19f2c:	bc051ce3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   19f30:	11013d03          	ld	s10,272(sp)
   19f34:	10812403          	lw	s0,264(sp)
   19f38:	18010c93          	add	s9,sp,384
   19f3c:	01000713          	li	a4,16
   19f40:	fb5ff06f          	j	19ef4 <_svfprintf_r+0x10ec>
   19f44:	00013583          	ld	a1,0(sp)
   19f48:	10010613          	add	a2,sp,256
   19f4c:	00098513          	mv	a0,s3
   19f50:	7e1030ef          	jal	1df30 <__ssprint_r>
   19f54:	ba0518e3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   19f58:	11013d83          	ld	s11,272(sp)
   19f5c:	18010413          	add	s0,sp,384
   19f60:	940ff06f          	j	190a0 <_svfprintf_r+0x298>
   19f64:	01097793          	and	a5,s2,16
   19f68:	12079e63          	bnez	a5,1a0a4 <_svfprintf_r+0x129c>
   19f6c:	02013683          	ld	a3,32(sp)
   19f70:	04097793          	and	a5,s2,64
   19f74:	0006ad03          	lw	s10,0(a3)
   19f78:	0e078ee3          	beqz	a5,1a874 <_svfprintf_r+0x1a6c>
   19f7c:	030d1d13          	sll	s10,s10,0x30
   19f80:	030d5d13          	srl	s10,s10,0x30
   19f84:	f28ff06f          	j	196ac <_svfprintf_r+0x8a4>
   19f88:	01097793          	and	a5,s2,16
   19f8c:	14079c63          	bnez	a5,1a0e4 <_svfprintf_r+0x12dc>
   19f90:	02013683          	ld	a3,32(sp)
   19f94:	04097793          	and	a5,s2,64
   19f98:	0006ad03          	lw	s10,0(a3)
   19f9c:	0e0784e3          	beqz	a5,1a884 <_svfprintf_r+0x1a7c>
   19fa0:	010d1d1b          	sllw	s10,s10,0x10
   19fa4:	410d5d1b          	sraw	s10,s10,0x10
   19fa8:	000d0793          	mv	a5,s10
   19fac:	ea07d263          	bgez	a5,19650 <_svfprintf_r+0x848>
   19fb0:	02e13023          	sd	a4,32(sp)
   19fb4:	41a00d33          	neg	s10,s10
   19fb8:	00090d93          	mv	s11,s2
   19fbc:	02d00713          	li	a4,45
   19fc0:	00100793          	li	a5,1
   19fc4:	dfcff06f          	j	195c0 <_svfprintf_r+0x7b8>
   19fc8:	010df793          	and	a5,s11,16
   19fcc:	10079263          	bnez	a5,1a0d0 <_svfprintf_r+0x12c8>
   19fd0:	02013683          	ld	a3,32(sp)
   19fd4:	040df793          	and	a5,s11,64
   19fd8:	0006ad03          	lw	s10,0(a3)
   19fdc:	080780e3          	beqz	a5,1a85c <_svfprintf_r+0x1a54>
   19fe0:	030d1d13          	sll	s10,s10,0x30
   19fe4:	030d5d13          	srl	s10,s10,0x30
   19fe8:	02e13023          	sd	a4,32(sp)
   19fec:	00100793          	li	a5,1
   19ff0:	dccff06f          	j	195bc <_svfprintf_r+0x7b4>
   19ff4:	00000d13          	li	s10,0
   19ff8:	17c10b13          	add	s6,sp,380
   19ffc:	df0ff06f          	j	195ec <_svfprintf_r+0x7e4>
   1a000:	00013583          	ld	a1,0(sp)
   1a004:	10010613          	add	a2,sp,256
   1a008:	00098513          	mv	a0,s3
   1a00c:	725030ef          	jal	1df30 <__ssprint_r>
   1a010:	ae051ae3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   1a014:	11013703          	ld	a4,272(sp)
   1a018:	10812683          	lw	a3,264(sp)
   1a01c:	18010c93          	add	s9,sp,384
   1a020:	af0ff06f          	j	19310 <_svfprintf_r+0x508>
   1a024:	00013583          	ld	a1,0(sp)
   1a028:	10010613          	add	a2,sp,256
   1a02c:	00098513          	mv	a0,s3
   1a030:	701030ef          	jal	1df30 <__ssprint_r>
   1a034:	ac0518e3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   1a038:	11013d03          	ld	s10,272(sp)
   1a03c:	10812403          	lw	s0,264(sp)
   1a040:	18010c93          	add	s9,sp,384
   1a044:	af8ff06f          	j	1933c <_svfprintf_r+0x534>
   1a048:	00197793          	and	a5,s2,1
   1a04c:	000d8713          	mv	a4,s11
   1a050:	88078063          	beqz	a5,190d0 <_svfprintf_r+0x2c8>
   1a054:	f7cff06f          	j	197d0 <_svfprintf_r+0x9c8>
   1a058:	000a8313          	mv	t1,s5
   1a05c:	dd8ff06f          	j	19634 <_svfprintf_r+0x82c>
   1a060:	0004ce03          	lbu	t3,0(s1)
   1a064:	02f13023          	sd	a5,32(sp)
   1a068:	f01fe06f          	j	18f68 <_svfprintf_r+0x160>
   1a06c:	03000793          	li	a5,48
   1a070:	16f10da3          	sb	a5,379(sp)
   1a074:	17b10b13          	add	s6,sp,379
   1a078:	d74ff06f          	j	195ec <_svfprintf_r+0x7e4>
   1a07c:	01097793          	and	a5,s2,16
   1a080:	ea079c63          	bnez	a5,19738 <_svfprintf_r+0x930>
   1a084:	04097793          	and	a5,s2,64
   1a088:	0e079ce3          	bnez	a5,1a980 <_svfprintf_r+0x1b78>
   1a08c:	20097913          	and	s2,s2,512
   1a090:	01013783          	ld	a5,16(sp)
   1a094:	00091463          	bnez	s2,1a09c <_svfprintf_r+0x1294>
   1a098:	1500106f          	j	1b1e8 <_svfprintf_r+0x23e0>
   1a09c:	00f70023          	sb	a5,0(a4)
   1a0a0:	ea0ff06f          	j	19740 <_svfprintf_r+0x938>
   1a0a4:	02013783          	ld	a5,32(sp)
   1a0a8:	0007bd03          	ld	s10,0(a5)
   1a0ac:	e00ff06f          	j	196ac <_svfprintf_r+0x8a4>
   1a0b0:	02013783          	ld	a5,32(sp)
   1a0b4:	00f78a93          	add	s5,a5,15
   1a0b8:	ff0afa93          	and	s5,s5,-16
   1a0bc:	010a8793          	add	a5,s5,16
   1a0c0:	000ab703          	ld	a4,0(s5)
   1a0c4:	008ab583          	ld	a1,8(s5)
   1a0c8:	02f13023          	sd	a5,32(sp)
   1a0cc:	920ff06f          	j	191ec <_svfprintf_r+0x3e4>
   1a0d0:	02013783          	ld	a5,32(sp)
   1a0d4:	02e13023          	sd	a4,32(sp)
   1a0d8:	0007bd03          	ld	s10,0(a5)
   1a0dc:	00100793          	li	a5,1
   1a0e0:	cdcff06f          	j	195bc <_svfprintf_r+0x7b4>
   1a0e4:	02013783          	ld	a5,32(sp)
   1a0e8:	0007b783          	ld	a5,0(a5)
   1a0ec:	00078d13          	mv	s10,a5
   1a0f0:	d5cff06f          	j	1964c <_svfprintf_r+0x844>
   1a0f4:	00070693          	mv	a3,a4
   1a0f8:	00068c9b          	sext.w	s9,a3
   1a0fc:	c19048e3          	bgtz	s9,19d0c <_svfprintf_r+0xf04>
   1a100:	c35ff06f          	j	19d34 <_svfprintf_r+0xf2c>
   1a104:	d6031863          	bnez	t1,19674 <_svfprintf_r+0x86c>
   1a108:	000d8913          	mv	s2,s11
   1a10c:	17c10b13          	add	s6,sp,380
   1a110:	cdcff06f          	j	195ec <_svfprintf_r+0x7e4>
   1a114:	000227b7          	lui	a5,0x22
   1a118:	d2878793          	add	a5,a5,-728 # 21d28 <__clzdi2+0x9c>
   1a11c:	000a8313          	mv	t1,s5
   1a120:	06f13423          	sd	a5,104(sp)
   1a124:	02013683          	ld	a3,32(sp)
   1a128:	02097793          	and	a5,s2,32
   1a12c:	00868713          	add	a4,a3,8
   1a130:	32078263          	beqz	a5,1a454 <_svfprintf_r+0x164c>
   1a134:	0006bd03          	ld	s10,0(a3)
   1a138:	00197793          	and	a5,s2,1
   1a13c:	00078e63          	beqz	a5,1a158 <_svfprintf_r+0x1350>
   1a140:	000d0c63          	beqz	s10,1a158 <_svfprintf_r+0x1350>
   1a144:	00296913          	or	s2,s2,2
   1a148:	03000793          	li	a5,48
   1a14c:	0cf10823          	sb	a5,208(sp)
   1a150:	0d9108a3          	sb	s9,209(sp)
   1a154:	0009091b          	sext.w	s2,s2
   1a158:	bff97d93          	and	s11,s2,-1025
   1a15c:	000d8d9b          	sext.w	s11,s11
   1a160:	02e13023          	sd	a4,32(sp)
   1a164:	00200793          	li	a5,2
   1a168:	c54ff06f          	j	195bc <_svfprintf_r+0x7b4>
   1a16c:	000a8313          	mv	t1,s5
   1a170:	00090d93          	mv	s11,s2
   1a174:	c2cff06f          	j	195a0 <_svfprintf_r+0x798>
   1a178:	20096913          	or	s2,s2,512
   1a17c:	0014ce03          	lbu	t3,1(s1)
   1a180:	0009091b          	sext.w	s2,s2
   1a184:	00148493          	add	s1,s1,1
   1a188:	de1fe06f          	j	18f68 <_svfprintf_r+0x160>
   1a18c:	02096913          	or	s2,s2,32
   1a190:	0014ce03          	lbu	t3,1(s1)
   1a194:	0009091b          	sext.w	s2,s2
   1a198:	00148493          	add	s1,s1,1
   1a19c:	dcdfe06f          	j	18f68 <_svfprintf_r+0x160>
   1a1a0:	000a8313          	mv	t1,s5
   1a1a4:	cf4ff06f          	j	19698 <_svfprintf_r+0x890>
   1a1a8:	000227b7          	lui	a5,0x22
   1a1ac:	d4078793          	add	a5,a5,-704 # 21d40 <__clzdi2+0xb4>
   1a1b0:	000a8313          	mv	t1,s5
   1a1b4:	06f13423          	sd	a5,104(sp)
   1a1b8:	f6dff06f          	j	1a124 <_svfprintf_r+0x131c>
   1a1bc:	00013583          	ld	a1,0(sp)
   1a1c0:	10010613          	add	a2,sp,256
   1a1c4:	00098513          	mv	a0,s3
   1a1c8:	569030ef          	jal	1df30 <__ssprint_r>
   1a1cc:	92051ce3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   1a1d0:	11013703          	ld	a4,272(sp)
   1a1d4:	18010413          	add	s0,sp,384
   1a1d8:	e2cff06f          	j	19804 <_svfprintf_r+0x9fc>
   1a1dc:	05013503          	ld	a0,80(sp)
   1a1e0:	04000593          	li	a1,64
   1a1e4:	8e9fc0ef          	jal	16acc <_malloc_r>
   1a1e8:	00013783          	ld	a5,0(sp)
   1a1ec:	00a7b023          	sd	a0,0(a5)
   1a1f0:	00a7bc23          	sd	a0,24(a5)
   1a1f4:	00051463          	bnez	a0,1a1fc <_svfprintf_r+0x13f4>
   1a1f8:	7f90006f          	j	1b1f0 <_svfprintf_r+0x23e8>
   1a1fc:	00013783          	ld	a5,0(sp)
   1a200:	04000713          	li	a4,64
   1a204:	02e7a023          	sw	a4,32(a5)
   1a208:	c85fe06f          	j	18e8c <_svfprintf_r+0x84>
   1a20c:	00022f37          	lui	t5,0x22
   1a210:	01000593          	li	a1,16
   1a214:	000d8713          	mv	a4,s11
   1a218:	10812603          	lw	a2,264(sp)
   1a21c:	650f0d93          	add	s11,t5,1616 # 22650 <zeroes.0>
   1a220:	6b95d663          	bge	a1,s9,1a8cc <_svfprintf_r+0x1ac4>
   1a224:	00013b83          	ld	s7,0(sp)
   1a228:	01000893          	li	a7,16
   1a22c:	00700d13          	li	s10,7
   1a230:	00c0006f          	j	1a23c <_svfprintf_r+0x1434>
   1a234:	ff0c8c9b          	addw	s9,s9,-16
   1a238:	6998da63          	bge	a7,s9,1a8cc <_svfprintf_r+0x1ac4>
   1a23c:	0016061b          	addw	a2,a2,1
   1a240:	01070713          	add	a4,a4,16
   1a244:	01b43023          	sd	s11,0(s0)
   1a248:	01143423          	sd	a7,8(s0)
   1a24c:	10e13823          	sd	a4,272(sp)
   1a250:	10c12423          	sw	a2,264(sp)
   1a254:	01040413          	add	s0,s0,16
   1a258:	fccd5ee3          	bge	s10,a2,1a234 <_svfprintf_r+0x142c>
   1a25c:	10010613          	add	a2,sp,256
   1a260:	000b8593          	mv	a1,s7
   1a264:	00098513          	mv	a0,s3
   1a268:	4c9030ef          	jal	1df30 <__ssprint_r>
   1a26c:	88051ce3          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   1a270:	11013703          	ld	a4,272(sp)
   1a274:	10812603          	lw	a2,264(sp)
   1a278:	18010413          	add	s0,sp,384
   1a27c:	01000893          	li	a7,16
   1a280:	fb5ff06f          	j	1a234 <_svfprintf_r+0x142c>
   1a284:	000b0513          	mv	a0,s6
   1a288:	a15fe0ef          	jal	18c9c <strlen>
   1a28c:	00050d1b          	sext.w	s10,a0
   1a290:	9bcff06f          	j	1944c <_svfprintf_r+0x644>
   1a294:	04013d03          	ld	s10,64(sp)
   1a298:	00022e37          	lui	t3,0x22
   1a29c:	08913823          	sd	s1,144(sp)
   1a2a0:	09213c23          	sd	s2,152(sp)
   1a2a4:	0b413023          	sd	s4,160(sp)
   1a2a8:	05813023          	sd	s8,64(sp)
   1a2ac:	000b0a13          	mv	s4,s6
   1a2b0:	07813903          	ld	s2,120(sp)
   1a2b4:	08813483          	ld	s1,136(sp)
   1a2b8:	08013b03          	ld	s6,128(sp)
   1a2bc:	04813c03          	ld	s8,72(sp)
   1a2c0:	00013b83          	ld	s7,0(sp)
   1a2c4:	00700313          	li	t1,7
   1a2c8:	01000893          	li	a7,16
   1a2cc:	650e0c93          	add	s9,t3,1616 # 22650 <zeroes.0>
   1a2d0:	000d8713          	mv	a4,s11
   1a2d4:	080d0c63          	beqz	s10,1a36c <_svfprintf_r+0x1564>
   1a2d8:	160c0863          	beqz	s8,1a448 <_svfprintf_r+0x1640>
   1a2dc:	fffc0c1b          	addw	s8,s8,-1
   1a2e0:	10812783          	lw	a5,264(sp)
   1a2e4:	01670733          	add	a4,a4,s6
   1a2e8:	00943023          	sd	s1,0(s0)
   1a2ec:	0017869b          	addw	a3,a5,1
   1a2f0:	01643423          	sd	s6,8(s0)
   1a2f4:	10e13823          	sd	a4,272(sp)
   1a2f8:	10d12423          	sw	a3,264(sp)
   1a2fc:	01040413          	add	s0,s0,16
   1a300:	16d34463          	blt	t1,a3,1a468 <_svfprintf_r+0x1660>
   1a304:	00094683          	lbu	a3,0(s2)
   1a308:	414a8db3          	sub	s11,s5,s4
   1a30c:	000d879b          	sext.w	a5,s11
   1a310:	0006861b          	sext.w	a2,a3
   1a314:	00f6d463          	bge	a3,a5,1a31c <_svfprintf_r+0x1514>
   1a318:	00060d93          	mv	s11,a2
   1a31c:	000d8d9b          	sext.w	s11,s11
   1a320:	03b05863          	blez	s11,1a350 <_svfprintf_r+0x1548>
   1a324:	10812783          	lw	a5,264(sp)
   1a328:	01b70733          	add	a4,a4,s11
   1a32c:	01443023          	sd	s4,0(s0)
   1a330:	0017869b          	addw	a3,a5,1
   1a334:	01b43423          	sd	s11,8(s0)
   1a338:	10e13823          	sd	a4,272(sp)
   1a33c:	10d12423          	sw	a3,264(sp)
   1a340:	36d34e63          	blt	t1,a3,1a6bc <_svfprintf_r+0x18b4>
   1a344:	00094683          	lbu	a3,0(s2)
   1a348:	01040413          	add	s0,s0,16
   1a34c:	0006861b          	sext.w	a2,a3
   1a350:	fffdc793          	not	a5,s11
   1a354:	43f7d793          	sra	a5,a5,0x3f
   1a358:	00fdf7b3          	and	a5,s11,a5
   1a35c:	40f60dbb          	subw	s11,a2,a5
   1a360:	03b04c63          	bgtz	s11,1a398 <_svfprintf_r+0x1590>
   1a364:	00da0a33          	add	s4,s4,a3
   1a368:	f60d18e3          	bnez	s10,1a2d8 <_svfprintf_r+0x14d0>
   1a36c:	f60c18e3          	bnez	s8,1a2dc <_svfprintf_r+0x14d4>
   1a370:	07213c23          	sd	s2,120(sp)
   1a374:	000a0b13          	mv	s6,s4
   1a378:	09013483          	ld	s1,144(sp)
   1a37c:	09813903          	ld	s2,152(sp)
   1a380:	0a013a03          	ld	s4,160(sp)
   1a384:	04013c03          	ld	s8,64(sp)
   1a388:	00070d93          	mv	s11,a4
   1a38c:	9d6af8e3          	bgeu	s5,s6,19d5c <_svfprintf_r+0xf54>
   1a390:	000a8b13          	mv	s6,s5
   1a394:	9c9ff06f          	j	19d5c <_svfprintf_r+0xf54>
   1a398:	00022637          	lui	a2,0x22
   1a39c:	10812783          	lw	a5,264(sp)
   1a3a0:	65060613          	add	a2,a2,1616 # 22650 <zeroes.0>
   1a3a4:	07b8dc63          	bge	a7,s11,1a41c <_svfprintf_r+0x1614>
   1a3a8:	02913823          	sd	s1,48(sp)
   1a3ac:	000d8493          	mv	s1,s11
   1a3b0:	000c8d93          	mv	s11,s9
   1a3b4:	00c0006f          	j	1a3c0 <_svfprintf_r+0x15b8>
   1a3b8:	ff04849b          	addw	s1,s1,-16
   1a3bc:	0498da63          	bge	a7,s1,1a410 <_svfprintf_r+0x1608>
   1a3c0:	0017879b          	addw	a5,a5,1
   1a3c4:	01070713          	add	a4,a4,16
   1a3c8:	01943023          	sd	s9,0(s0)
   1a3cc:	01143423          	sd	a7,8(s0)
   1a3d0:	10e13823          	sd	a4,272(sp)
   1a3d4:	10f12423          	sw	a5,264(sp)
   1a3d8:	01040413          	add	s0,s0,16
   1a3dc:	fcf35ee3          	bge	t1,a5,1a3b8 <_svfprintf_r+0x15b0>
   1a3e0:	10010613          	add	a2,sp,256
   1a3e4:	000b8593          	mv	a1,s7
   1a3e8:	00098513          	mv	a0,s3
   1a3ec:	345030ef          	jal	1df30 <__ssprint_r>
   1a3f0:	f0051a63          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   1a3f4:	01000893          	li	a7,16
   1a3f8:	ff04849b          	addw	s1,s1,-16
   1a3fc:	11013703          	ld	a4,272(sp)
   1a400:	10812783          	lw	a5,264(sp)
   1a404:	18010413          	add	s0,sp,384
   1a408:	00700313          	li	t1,7
   1a40c:	fa98cae3          	blt	a7,s1,1a3c0 <_svfprintf_r+0x15b8>
   1a410:	000d8613          	mv	a2,s11
   1a414:	00048d93          	mv	s11,s1
   1a418:	03013483          	ld	s1,48(sp)
   1a41c:	0017869b          	addw	a3,a5,1
   1a420:	00ed8733          	add	a4,s11,a4
   1a424:	00c43023          	sd	a2,0(s0)
   1a428:	01b43423          	sd	s11,8(s0)
   1a42c:	10e13823          	sd	a4,272(sp)
   1a430:	10d12423          	sw	a3,264(sp)
   1a434:	24d34ae3          	blt	t1,a3,1ae88 <_svfprintf_r+0x2080>
   1a438:	00094683          	lbu	a3,0(s2)
   1a43c:	01040413          	add	s0,s0,16
   1a440:	00da0a33          	add	s4,s4,a3
   1a444:	f25ff06f          	j	1a368 <_svfprintf_r+0x1560>
   1a448:	fff90913          	add	s2,s2,-1
   1a44c:	fffd0d1b          	addw	s10,s10,-1
   1a450:	e91ff06f          	j	1a2e0 <_svfprintf_r+0x14d8>
   1a454:	01097793          	and	a5,s2,16
   1a458:	1e078a63          	beqz	a5,1a64c <_svfprintf_r+0x1844>
   1a45c:	02013783          	ld	a5,32(sp)
   1a460:	0007bd03          	ld	s10,0(a5)
   1a464:	cd5ff06f          	j	1a138 <_svfprintf_r+0x1330>
   1a468:	10010613          	add	a2,sp,256
   1a46c:	000b8593          	mv	a1,s7
   1a470:	00098513          	mv	a0,s3
   1a474:	2bd030ef          	jal	1df30 <__ssprint_r>
   1a478:	e8051663          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   1a47c:	11013703          	ld	a4,272(sp)
   1a480:	18010413          	add	s0,sp,384
   1a484:	01000893          	li	a7,16
   1a488:	00700313          	li	t1,7
   1a48c:	e79ff06f          	j	1a304 <_svfprintf_r+0x14fc>
   1a490:	17c10a93          	add	s5,sp,380
   1a494:	00913c23          	sd	s1,24(sp)
   1a498:	07813483          	ld	s1,120(sp)
   1a49c:	400df913          	and	s2,s11,1024
   1a4a0:	000a8b13          	mv	s6,s5
   1a4a4:	00000793          	li	a5,0
   1a4a8:	02813c23          	sd	s0,56(sp)
   1a4ac:	00098a93          	mv	s5,s3
   1a4b0:	00090413          	mv	s0,s2
   1a4b4:	00900b93          	li	s7,9
   1a4b8:	0ff00c13          	li	s8,255
   1a4bc:	02613823          	sd	t1,48(sp)
   1a4c0:	00078913          	mv	s2,a5
   1a4c4:	000b0993          	mv	s3,s6
   1a4c8:	00a00593          	li	a1,10
   1a4cc:	000d0513          	mv	a0,s10
   1a4d0:	74c070ef          	jal	21c1c <__umoddi3>
   1a4d4:	0305051b          	addw	a0,a0,48
   1a4d8:	fea98fa3          	sb	a0,-1(s3)
   1a4dc:	0019091b          	addw	s2,s2,1
   1a4e0:	fff98993          	add	s3,s3,-1
   1a4e4:	00040663          	beqz	s0,1a4f0 <_svfprintf_r+0x16e8>
   1a4e8:	0004c703          	lbu	a4,0(s1)
   1a4ec:	04e90663          	beq	s2,a4,1a538 <_svfprintf_r+0x1730>
   1a4f0:	00a00593          	li	a1,10
   1a4f4:	000d0513          	mv	a0,s10
   1a4f8:	6dc070ef          	jal	21bd4 <__hidden___udivdi3>
   1a4fc:	01abf663          	bgeu	s7,s10,1a508 <_svfprintf_r+0x1700>
   1a500:	00050d13          	mv	s10,a0
   1a504:	fc5ff06f          	j	1a4c8 <_svfprintf_r+0x16c0>
   1a508:	000b0793          	mv	a5,s6
   1a50c:	00098b13          	mv	s6,s3
   1a510:	000a8993          	mv	s3,s5
   1a514:	00078a93          	mv	s5,a5
   1a518:	03813403          	ld	s0,56(sp)
   1a51c:	06913c23          	sd	s1,120(sp)
   1a520:	03213c23          	sd	s2,56(sp)
   1a524:	01813483          	ld	s1,24(sp)
   1a528:	03013303          	ld	t1,48(sp)
   1a52c:	416a8d3b          	subw	s10,s5,s6
   1a530:	000d8913          	mv	s2,s11
   1a534:	8b8ff06f          	j	195ec <_svfprintf_r+0x7e4>
   1a538:	fb870ce3          	beq	a4,s8,1a4f0 <_svfprintf_r+0x16e8>
   1a53c:	fdabf6e3          	bgeu	s7,s10,1a508 <_svfprintf_r+0x1700>
   1a540:	08013783          	ld	a5,128(sp)
   1a544:	08813583          	ld	a1,136(sp)
   1a548:	00000913          	li	s2,0
   1a54c:	40f989b3          	sub	s3,s3,a5
   1a550:	00078613          	mv	a2,a5
   1a554:	00098513          	mv	a0,s3
   1a558:	80dfe0ef          	jal	18d64 <strncpy>
   1a55c:	0014c703          	lbu	a4,1(s1)
   1a560:	000d0513          	mv	a0,s10
   1a564:	00a00593          	li	a1,10
   1a568:	00e03733          	snez	a4,a4
   1a56c:	00e484b3          	add	s1,s1,a4
   1a570:	664070ef          	jal	21bd4 <__hidden___udivdi3>
   1a574:	00050d13          	mv	s10,a0
   1a578:	f51ff06f          	j	1a4c8 <_svfprintf_r+0x16c0>
   1a57c:	10812683          	lw	a3,264(sp)
   1a580:	000225b7          	lui	a1,0x22
   1a584:	d6058593          	add	a1,a1,-672 # 21d60 <__clzdi2+0xd4>
   1a588:	0016869b          	addw	a3,a3,1
   1a58c:	00b43023          	sd	a1,0(s0)
   1a590:	001d8713          	add	a4,s11,1
   1a594:	00100593          	li	a1,1
   1a598:	00b43423          	sd	a1,8(s0)
   1a59c:	10d12423          	sw	a3,264(sp)
   1a5a0:	0006859b          	sext.w	a1,a3
   1a5a4:	10e13823          	sd	a4,272(sp)
   1a5a8:	00700693          	li	a3,7
   1a5ac:	01040413          	add	s0,s0,16
   1a5b0:	06b6cc63          	blt	a3,a1,1a628 <_svfprintf_r+0x1820>
   1a5b4:	20061463          	bnez	a2,1a7bc <_svfprintf_r+0x19b4>
   1a5b8:	03813783          	ld	a5,56(sp)
   1a5bc:	00197693          	and	a3,s2,1
   1a5c0:	00d7e6b3          	or	a3,a5,a3
   1a5c4:	00069463          	bnez	a3,1a5cc <_svfprintf_r+0x17c4>
   1a5c8:	b09fe06f          	j	190d0 <_svfprintf_r+0x2c8>
   1a5cc:	10812603          	lw	a2,264(sp)
   1a5d0:	05813783          	ld	a5,88(sp)
   1a5d4:	06013683          	ld	a3,96(sp)
   1a5d8:	00e78733          	add	a4,a5,a4
   1a5dc:	00d43023          	sd	a3,0(s0)
   1a5e0:	0016069b          	addw	a3,a2,1
   1a5e4:	00f43423          	sd	a5,8(s0)
   1a5e8:	10e13823          	sd	a4,272(sp)
   1a5ec:	10d12423          	sw	a3,264(sp)
   1a5f0:	00700613          	li	a2,7
   1a5f4:	5ad64263          	blt	a2,a3,1ab98 <_svfprintf_r+0x1d90>
   1a5f8:	01040413          	add	s0,s0,16
   1a5fc:	03813783          	ld	a5,56(sp)
   1a600:	0016861b          	addw	a2,a3,1
   1a604:	01643023          	sd	s6,0(s0)
   1a608:	00e78733          	add	a4,a5,a4
   1a60c:	00f43423          	sd	a5,8(s0)
   1a610:	10e13823          	sd	a4,272(sp)
   1a614:	10c12423          	sw	a2,264(sp)
   1a618:	00700793          	li	a5,7
   1a61c:	00c7c463          	blt	a5,a2,1a624 <_svfprintf_r+0x181c>
   1a620:	aadfe06f          	j	190cc <_svfprintf_r+0x2c4>
   1a624:	d91fe06f          	j	193b4 <_svfprintf_r+0x5ac>
   1a628:	00013583          	ld	a1,0(sp)
   1a62c:	10010613          	add	a2,sp,256
   1a630:	00098513          	mv	a0,s3
   1a634:	0fd030ef          	jal	1df30 <__ssprint_r>
   1a638:	cc051663          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   1a63c:	0d812603          	lw	a2,216(sp)
   1a640:	11013703          	ld	a4,272(sp)
   1a644:	18010413          	add	s0,sp,384
   1a648:	f6dff06f          	j	1a5b4 <_svfprintf_r+0x17ac>
   1a64c:	02013683          	ld	a3,32(sp)
   1a650:	04097793          	and	a5,s2,64
   1a654:	0006ad03          	lw	s10,0(a3)
   1a658:	24078263          	beqz	a5,1a89c <_svfprintf_r+0x1a94>
   1a65c:	030d1d13          	sll	s10,s10,0x30
   1a660:	030d5d13          	srl	s10,s10,0x30
   1a664:	ad5ff06f          	j	1a138 <_svfprintf_r+0x1330>
   1a668:	00090d93          	mv	s11,s2
   1a66c:	02e13023          	sd	a4,32(sp)
   1a670:	ffdfe06f          	j	1966c <_svfprintf_r+0x864>
   1a674:	00013583          	ld	a1,0(sp)
   1a678:	10010613          	add	a2,sp,256
   1a67c:	00098513          	mv	a0,s3
   1a680:	0b1030ef          	jal	1df30 <__ssprint_r>
   1a684:	c8051063          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   1a688:	11013d83          	ld	s11,272(sp)
   1a68c:	18010413          	add	s0,sp,384
   1a690:	934ff06f          	j	197c4 <_svfprintf_r+0x9bc>
   1a694:	0017869b          	addw	a3,a5,1
   1a698:	01b43023          	sd	s11,0(s0)
   1a69c:	01943423          	sd	s9,8(s0)
   1a6a0:	01970733          	add	a4,a4,s9
   1a6a4:	10e13823          	sd	a4,272(sp)
   1a6a8:	10d12423          	sw	a3,264(sp)
   1a6ac:	00700793          	li	a5,7
   1a6b0:	00d7c463          	blt	a5,a3,1a6b8 <_svfprintf_r+0x18b0>
   1a6b4:	a19fe06f          	j	190cc <_svfprintf_r+0x2c4>
   1a6b8:	cfdfe06f          	j	193b4 <_svfprintf_r+0x5ac>
   1a6bc:	10010613          	add	a2,sp,256
   1a6c0:	000b8593          	mv	a1,s7
   1a6c4:	00098513          	mv	a0,s3
   1a6c8:	069030ef          	jal	1df30 <__ssprint_r>
   1a6cc:	c2051c63          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   1a6d0:	00094683          	lbu	a3,0(s2)
   1a6d4:	11013703          	ld	a4,272(sp)
   1a6d8:	18010413          	add	s0,sp,384
   1a6dc:	0006861b          	sext.w	a2,a3
   1a6e0:	01000893          	li	a7,16
   1a6e4:	00700313          	li	t1,7
   1a6e8:	c69ff06f          	j	1a350 <_svfprintf_r+0x1548>
   1a6ec:	00013583          	ld	a1,0(sp)
   1a6f0:	10010613          	add	a2,sp,256
   1a6f4:	00098513          	mv	a0,s3
   1a6f8:	08613823          	sd	t1,144(sp)
   1a6fc:	035030ef          	jal	1df30 <__ssprint_r>
   1a700:	c0051263          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   1a704:	11013d83          	ld	s11,272(sp)
   1a708:	09013303          	ld	t1,144(sp)
   1a70c:	18010413          	add	s0,sp,384
   1a710:	989fe06f          	j	19098 <_svfprintf_r+0x290>
   1a714:	0f013503          	ld	a0,240(sp)
   1a718:	0f813583          	ld	a1,248(sp)
   1a71c:	00000613          	li	a2,0
   1a720:	00000693          	li	a3,0
   1a724:	799050ef          	jal	206bc <__letf2>
   1a728:	060542e3          	bltz	a0,1af8c <_svfprintf_r+0x2184>
   1a72c:	0cf14703          	lbu	a4,207(sp)
   1a730:	04700793          	li	a5,71
   1a734:	1d97d263          	bge	a5,s9,1a8f8 <_svfprintf_r+0x1af0>
   1a738:	000227b7          	lui	a5,0x22
   1a73c:	d1078b13          	add	s6,a5,-752 # 21d10 <__clzdi2+0x84>
   1a740:	f7f97913          	and	s2,s2,-129
   1a744:	00013c23          	sd	zero,24(sp)
   1a748:	04013423          	sd	zero,72(sp)
   1a74c:	04013023          	sd	zero,64(sp)
   1a750:	02013823          	sd	zero,48(sp)
   1a754:	0009091b          	sext.w	s2,s2
   1a758:	00300c13          	li	s8,3
   1a75c:	00300d13          	li	s10,3
   1a760:	00000313          	li	t1,0
   1a764:	00070463          	beqz	a4,1a76c <_svfprintf_r+0x1964>
   1a768:	d11fe06f          	j	19478 <_svfprintf_r+0x670>
   1a76c:	891fe06f          	j	18ffc <_svfprintf_r+0x1f4>
   1a770:	00600793          	li	a5,6
   1a774:	00030693          	mv	a3,t1
   1a778:	1a67e663          	bltu	a5,t1,1a924 <_svfprintf_r+0x1b1c>
   1a77c:	00068d1b          	sext.w	s10,a3
   1a780:	000227b7          	lui	a5,0x22
   1a784:	000d0c13          	mv	s8,s10
   1a788:	03513023          	sd	s5,32(sp)
   1a78c:	d5878b13          	add	s6,a5,-680 # 21d58 <__clzdi2+0xcc>
   1a790:	859fe06f          	j	18fe8 <_svfprintf_r+0x1e0>
   1a794:	0014041b          	addw	s0,s0,1
   1a798:	015d0d33          	add	s10,s10,s5
   1a79c:	01bcb023          	sd	s11,0(s9)
   1a7a0:	015cb423          	sd	s5,8(s9)
   1a7a4:	11a13823          	sd	s10,272(sp)
   1a7a8:	10812423          	sw	s0,264(sp)
   1a7ac:	00700793          	li	a5,7
   1a7b0:	0087c463          	blt	a5,s0,1a7b8 <_svfprintf_r+0x19b0>
   1a7b4:	bcdfe06f          	j	19380 <_svfprintf_r+0x578>
   1a7b8:	eecff06f          	j	19ea4 <_svfprintf_r+0x109c>
   1a7bc:	10812583          	lw	a1,264(sp)
   1a7c0:	05813783          	ld	a5,88(sp)
   1a7c4:	06013683          	ld	a3,96(sp)
   1a7c8:	01040413          	add	s0,s0,16
   1a7cc:	00e78733          	add	a4,a5,a4
   1a7d0:	fed43823          	sd	a3,-16(s0)
   1a7d4:	0015869b          	addw	a3,a1,1
   1a7d8:	fef43c23          	sd	a5,-8(s0)
   1a7dc:	10e13823          	sd	a4,272(sp)
   1a7e0:	10d12423          	sw	a3,264(sp)
   1a7e4:	00700593          	li	a1,7
   1a7e8:	3ad5c863          	blt	a1,a3,1ab98 <_svfprintf_r+0x1d90>
   1a7ec:	e00658e3          	bgez	a2,1a5fc <_svfprintf_r+0x17f4>
   1a7f0:	00022f37          	lui	t5,0x22
   1a7f4:	ff000593          	li	a1,-16
   1a7f8:	40c00cbb          	negw	s9,a2
   1a7fc:	650f0d93          	add	s11,t5,1616 # 22650 <zeroes.0>
   1a800:	01000d13          	li	s10,16
   1a804:	00700a93          	li	s5,7
   1a808:	00b64863          	blt	a2,a1,1a818 <_svfprintf_r+0x1a10>
   1a80c:	1410006f          	j	1b14c <_svfprintf_r+0x2344>
   1a810:	ff0c8c9b          	addw	s9,s9,-16
   1a814:	139d5ce3          	bge	s10,s9,1b14c <_svfprintf_r+0x2344>
   1a818:	0016869b          	addw	a3,a3,1
   1a81c:	01070713          	add	a4,a4,16
   1a820:	01b43023          	sd	s11,0(s0)
   1a824:	01a43423          	sd	s10,8(s0)
   1a828:	10e13823          	sd	a4,272(sp)
   1a82c:	10d12423          	sw	a3,264(sp)
   1a830:	01040413          	add	s0,s0,16
   1a834:	fcdadee3          	bge	s5,a3,1a810 <_svfprintf_r+0x1a08>
   1a838:	00013583          	ld	a1,0(sp)
   1a83c:	10010613          	add	a2,sp,256
   1a840:	00098513          	mv	a0,s3
   1a844:	6ec030ef          	jal	1df30 <__ssprint_r>
   1a848:	aa051e63          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   1a84c:	11013703          	ld	a4,272(sp)
   1a850:	10812683          	lw	a3,264(sp)
   1a854:	18010413          	add	s0,sp,384
   1a858:	fb9ff06f          	j	1a810 <_svfprintf_r+0x1a08>
   1a85c:	200df793          	and	a5,s11,512
   1a860:	0e078c63          	beqz	a5,1a958 <_svfprintf_r+0x1b50>
   1a864:	0ffd7d13          	zext.b	s10,s10
   1a868:	02e13023          	sd	a4,32(sp)
   1a86c:	00100793          	li	a5,1
   1a870:	d4dfe06f          	j	195bc <_svfprintf_r+0x7b4>
   1a874:	20097793          	and	a5,s2,512
   1a878:	0c078a63          	beqz	a5,1a94c <_svfprintf_r+0x1b44>
   1a87c:	0ffd7d13          	zext.b	s10,s10
   1a880:	e2dfe06f          	j	196ac <_svfprintf_r+0x8a4>
   1a884:	20097793          	and	a5,s2,512
   1a888:	0e078863          	beqz	a5,1a978 <_svfprintf_r+0x1b70>
   1a88c:	018d1d1b          	sllw	s10,s10,0x18
   1a890:	418d5d1b          	sraw	s10,s10,0x18
   1a894:	000d0793          	mv	a5,s10
   1a898:	db5fe06f          	j	1964c <_svfprintf_r+0x844>
   1a89c:	20097793          	and	a5,s2,512
   1a8a0:	0c078663          	beqz	a5,1a96c <_svfprintf_r+0x1b64>
   1a8a4:	0ffd7d13          	zext.b	s10,s10
   1a8a8:	891ff06f          	j	1a138 <_svfprintf_r+0x1330>
   1a8ac:	0f813783          	ld	a5,248(sp)
   1a8b0:	2c07cc63          	bltz	a5,1ab88 <_svfprintf_r+0x1d80>
   1a8b4:	0cf14703          	lbu	a4,207(sp)
   1a8b8:	04700793          	li	a5,71
   1a8bc:	7b97d863          	bge	a5,s9,1b06c <_svfprintf_r+0x2264>
   1a8c0:	000227b7          	lui	a5,0x22
   1a8c4:	d2078b13          	add	s6,a5,-736 # 21d20 <__clzdi2+0x94>
   1a8c8:	e79ff06f          	j	1a740 <_svfprintf_r+0x1938>
   1a8cc:	0016059b          	addw	a1,a2,1
   1a8d0:	00ec8733          	add	a4,s9,a4
   1a8d4:	01b43023          	sd	s11,0(s0)
   1a8d8:	01943423          	sd	s9,8(s0)
   1a8dc:	10e13823          	sd	a4,272(sp)
   1a8e0:	10b12423          	sw	a1,264(sp)
   1a8e4:	00700693          	li	a3,7
   1a8e8:	2eb6c463          	blt	a3,a1,1abd0 <_svfprintf_r+0x1dc8>
   1a8ec:	01040413          	add	s0,s0,16
   1a8f0:	00070d93          	mv	s11,a4
   1a8f4:	c58ff06f          	j	19d4c <_svfprintf_r+0xf44>
   1a8f8:	000227b7          	lui	a5,0x22
   1a8fc:	d0878b13          	add	s6,a5,-760 # 21d08 <__clzdi2+0x7c>
   1a900:	e41ff06f          	j	1a740 <_svfprintf_r+0x1938>
   1a904:	00013583          	ld	a1,0(sp)
   1a908:	10010613          	add	a2,sp,256
   1a90c:	00098513          	mv	a0,s3
   1a910:	620030ef          	jal	1df30 <__ssprint_r>
   1a914:	9e051863          	bnez	a0,19b04 <_svfprintf_r+0xcfc>
   1a918:	11013d83          	ld	s11,272(sp)
   1a91c:	18010413          	add	s0,sp,384
   1a920:	c14ff06f          	j	19d34 <_svfprintf_r+0xf2c>
   1a924:	00600693          	li	a3,6
   1a928:	e55ff06f          	j	1a77c <_svfprintf_r+0x1974>
   1a92c:	416a8cb3          	sub	s9,s5,s6
   1a930:	40d7863b          	subw	a2,a5,a3
   1a934:	000c879b          	sext.w	a5,s9
   1a938:	000d8713          	mv	a4,s11
   1a93c:	00f65463          	bge	a2,a5,1a944 <_svfprintf_r+0x1b3c>
   1a940:	00060c93          	mv	s9,a2
   1a944:	000c8c9b          	sext.w	s9,s9
   1a948:	ca8ff06f          	j	19df0 <_svfprintf_r+0xfe8>
   1a94c:	020d1d13          	sll	s10,s10,0x20
   1a950:	020d5d13          	srl	s10,s10,0x20
   1a954:	d59fe06f          	j	196ac <_svfprintf_r+0x8a4>
   1a958:	020d1d13          	sll	s10,s10,0x20
   1a95c:	020d5d13          	srl	s10,s10,0x20
   1a960:	02e13023          	sd	a4,32(sp)
   1a964:	00100793          	li	a5,1
   1a968:	c55fe06f          	j	195bc <_svfprintf_r+0x7b4>
   1a96c:	020d1d13          	sll	s10,s10,0x20
   1a970:	020d5d13          	srl	s10,s10,0x20
   1a974:	fc4ff06f          	j	1a138 <_svfprintf_r+0x1330>
   1a978:	000d0793          	mv	a5,s10
   1a97c:	cd1fe06f          	j	1964c <_svfprintf_r+0x844>
   1a980:	01013783          	ld	a5,16(sp)
   1a984:	00f71023          	sh	a5,0(a4)
   1a988:	db9fe06f          	j	19740 <_svfprintf_r+0x938>
   1a98c:	00030913          	mv	s2,t1
   1a990:	00200693          	li	a3,2
   1a994:	00090713          	mv	a4,s2
   1a998:	0e810893          	add	a7,sp,232
   1a99c:	0dc10813          	add	a6,sp,220
   1a9a0:	0d810793          	add	a5,sp,216
   1a9a4:	000b8593          	mv	a1,s7
   1a9a8:	000c0613          	mv	a2,s8
   1a9ac:	00098513          	mv	a0,s3
   1a9b0:	02613823          	sd	t1,48(sp)
   1a9b4:	a6dfa0ef          	jal	15420 <_ldtoa_r>
   1a9b8:	06700713          	li	a4,103
   1a9bc:	03013303          	ld	t1,48(sp)
   1a9c0:	00050b13          	mv	s6,a0
   1a9c4:	4aec8663          	beq	s9,a4,1ae70 <_svfprintf_r+0x2068>
   1a9c8:	04700713          	li	a4,71
   1a9cc:	4aec8263          	beq	s9,a4,1ae70 <_svfprintf_r+0x2068>
   1a9d0:	fdfcfa93          	and	s5,s9,-33
   1a9d4:	04600713          	li	a4,70
   1a9d8:	01250d33          	add	s10,a0,s2
   1a9dc:	5eea8463          	beq	s5,a4,1afc4 <_svfprintf_r+0x21bc>
   1a9e0:	000c0593          	mv	a1,s8
   1a9e4:	00000613          	li	a2,0
   1a9e8:	00000693          	li	a3,0
   1a9ec:	000b8513          	mv	a0,s7
   1a9f0:	02613823          	sd	t1,48(sp)
   1a9f4:	319050ef          	jal	2050c <__eqtf2>
   1a9f8:	03013303          	ld	t1,48(sp)
   1a9fc:	000d0c13          	mv	s8,s10
   1aa00:	02050263          	beqz	a0,1aa24 <_svfprintf_r+0x1c1c>
   1aa04:	0e813c03          	ld	s8,232(sp)
   1aa08:	01ac7e63          	bgeu	s8,s10,1aa24 <_svfprintf_r+0x1c1c>
   1aa0c:	03000693          	li	a3,48
   1aa10:	001c0793          	add	a5,s8,1
   1aa14:	0ef13423          	sd	a5,232(sp)
   1aa18:	00dc0023          	sb	a3,0(s8)
   1aa1c:	0e813c03          	ld	s8,232(sp)
   1aa20:	ffac68e3          	bltu	s8,s10,1aa10 <_svfprintf_r+0x1c08>
   1aa24:	416c07bb          	subw	a5,s8,s6
   1aa28:	02f13c23          	sd	a5,56(sp)
   1aa2c:	0d812703          	lw	a4,216(sp)
   1aa30:	04700693          	li	a3,71
   1aa34:	02e13823          	sd	a4,48(sp)
   1aa38:	3ada8463          	beq	s5,a3,1ade0 <_svfprintf_r+0x1fd8>
   1aa3c:	04600693          	li	a3,70
   1aa40:	68da8263          	beq	s5,a3,1b0c4 <_svfprintf_r+0x22bc>
   1aa44:	fff70d1b          	addw	s10,a4,-1
   1aa48:	0da12c23          	sw	s10,216(sp)
   1aa4c:	06100693          	li	a3,97
   1aa50:	0cdc8ee3          	beq	s9,a3,1b32c <_svfprintf_r+0x2524>
   1aa54:	04100613          	li	a2,65
   1aa58:	05000693          	li	a3,80
   1aa5c:	3acc9063          	bne	s9,a2,1adfc <_svfprintf_r+0x1ff4>
   1aa60:	00100613          	li	a2,1
   1aa64:	0ed10023          	sb	a3,224(sp)
   1aa68:	02b00693          	li	a3,43
   1aa6c:	000d5863          	bgez	s10,1aa7c <_svfprintf_r+0x1c74>
   1aa70:	00100d13          	li	s10,1
   1aa74:	40ed0d3b          	subw	s10,s10,a4
   1aa78:	02d00693          	li	a3,45
   1aa7c:	0ed100a3          	sb	a3,225(sp)
   1aa80:	00900713          	li	a4,9
   1aa84:	71a75863          	bge	a4,s10,1b194 <_svfprintf_r+0x238c>
   1aa88:	0ef10913          	add	s2,sp,239
   1aa8c:	00090a93          	mv	s5,s2
   1aa90:	06300b93          	li	s7,99
   1aa94:	00a00593          	li	a1,10
   1aa98:	000d0513          	mv	a0,s10
   1aa9c:	1b4070ef          	jal	21c50 <__moddi3>
   1aaa0:	0305079b          	addw	a5,a0,48
   1aaa4:	fefa8fa3          	sb	a5,-1(s5)
   1aaa8:	000d0513          	mv	a0,s10
   1aaac:	00a00593          	li	a1,10
   1aab0:	000d0c13          	mv	s8,s10
   1aab4:	118070ef          	jal	21bcc <__divdi3>
   1aab8:	000a8d93          	mv	s11,s5
   1aabc:	00050d1b          	sext.w	s10,a0
   1aac0:	fffa8a93          	add	s5,s5,-1
   1aac4:	fd8bc8e3          	blt	s7,s8,1aa94 <_svfprintf_r+0x1c8c>
   1aac8:	030d0d1b          	addw	s10,s10,48
   1aacc:	ffed8713          	add	a4,s11,-2
   1aad0:	ffaa8fa3          	sb	s10,-1(s5)
   1aad4:	072770e3          	bgeu	a4,s2,1b334 <_svfprintf_r+0x252c>
   1aad8:	0e210693          	add	a3,sp,226
   1aadc:	00074783          	lbu	a5,0(a4)
   1aae0:	00170713          	add	a4,a4,1
   1aae4:	00168693          	add	a3,a3,1
   1aae8:	fef68fa3          	sb	a5,-1(a3)
   1aaec:	ff2718e3          	bne	a4,s2,1aadc <_svfprintf_r+0x1cd4>
   1aaf0:	0f110713          	add	a4,sp,241
   1aaf4:	0e210793          	add	a5,sp,226
   1aaf8:	41b70733          	sub	a4,a4,s11
   1aafc:	00e78733          	add	a4,a5,a4
   1ab00:	0e010693          	add	a3,sp,224
   1ab04:	40d707bb          	subw	a5,a4,a3
   1ab08:	06f13823          	sd	a5,112(sp)
   1ab0c:	07013703          	ld	a4,112(sp)
   1ab10:	03813783          	ld	a5,56(sp)
   1ab14:	00100613          	li	a2,1
   1ab18:	00f70d3b          	addw	s10,a4,a5
   1ab1c:	000d0713          	mv	a4,s10
   1ab20:	6ef65c63          	bge	a2,a5,1b218 <_svfprintf_r+0x2410>
   1ab24:	05813783          	ld	a5,88(sp)
   1ab28:	00f70d3b          	addw	s10,a4,a5
   1ab2c:	04013783          	ld	a5,64(sp)
   1ab30:	fffd4813          	not	a6,s10
   1ab34:	43f85813          	sra	a6,a6,0x3f
   1ab38:	bff7f913          	and	s2,a5,-1025
   1ab3c:	0009091b          	sext.w	s2,s2
   1ab40:	010d7833          	and	a6,s10,a6
   1ab44:	10096913          	or	s2,s2,256
   1ab48:	00080c1b          	sext.w	s8,a6
   1ab4c:	04013423          	sd	zero,72(sp)
   1ab50:	04013023          	sd	zero,64(sp)
   1ab54:	02013823          	sd	zero,48(sp)
   1ab58:	09813783          	ld	a5,152(sp)
   1ab5c:	2a078663          	beqz	a5,1ae08 <_svfprintf_r+0x2000>
   1ab60:	02d00713          	li	a4,45
   1ab64:	0ce107a3          	sb	a4,207(sp)
   1ab68:	00000313          	li	t1,0
   1ab6c:	001c0c1b          	addw	s8,s8,1
   1ab70:	c8cfe06f          	j	18ffc <_svfprintf_r+0x1f4>
   1ab74:	00013583          	ld	a1,0(sp)
   1ab78:	05013503          	ld	a0,80(sp)
   1ab7c:	10010613          	add	a2,sp,256
   1ab80:	3b0030ef          	jal	1df30 <__ssprint_r>
   1ab84:	dacfe06f          	j	19130 <_svfprintf_r+0x328>
   1ab88:	02d00793          	li	a5,45
   1ab8c:	0cf107a3          	sb	a5,207(sp)
   1ab90:	02d00713          	li	a4,45
   1ab94:	d25ff06f          	j	1a8b8 <_svfprintf_r+0x1ab0>
   1ab98:	00013583          	ld	a1,0(sp)
   1ab9c:	10010613          	add	a2,sp,256
   1aba0:	00098513          	mv	a0,s3
   1aba4:	38c030ef          	jal	1df30 <__ssprint_r>
   1aba8:	00050463          	beqz	a0,1abb0 <_svfprintf_r+0x1da8>
   1abac:	f59fe06f          	j	19b04 <_svfprintf_r+0xcfc>
   1abb0:	0d812603          	lw	a2,216(sp)
   1abb4:	11013703          	ld	a4,272(sp)
   1abb8:	10812683          	lw	a3,264(sp)
   1abbc:	18010413          	add	s0,sp,384
   1abc0:	a2065ee3          	bgez	a2,1a5fc <_svfprintf_r+0x17f4>
   1abc4:	c2dff06f          	j	1a7f0 <_svfprintf_r+0x19e8>
   1abc8:	00600313          	li	t1,6
   1abcc:	e88fe06f          	j	19254 <_svfprintf_r+0x44c>
   1abd0:	00013583          	ld	a1,0(sp)
   1abd4:	10010613          	add	a2,sp,256
   1abd8:	00098513          	mv	a0,s3
   1abdc:	354030ef          	jal	1df30 <__ssprint_r>
   1abe0:	00050463          	beqz	a0,1abe8 <_svfprintf_r+0x1de0>
   1abe4:	f21fe06f          	j	19b04 <_svfprintf_r+0xcfc>
   1abe8:	11013d83          	ld	s11,272(sp)
   1abec:	18010413          	add	s0,sp,384
   1abf0:	95cff06f          	j	19d4c <_svfprintf_r+0xf44>
   1abf4:	0013091b          	addw	s2,t1,1 # ffffffff80000001 <__BSS_END__+0xffffffff7ffdb1e9>
   1abf8:	00200693          	li	a3,2
   1abfc:	d99ff06f          	j	1a994 <_svfprintf_r+0x1b8c>
   1ac00:	00030913          	mv	s2,t1
   1ac04:	00300693          	li	a3,3
   1ac08:	d8dff06f          	j	1a994 <_svfprintf_r+0x1b8c>
   1ac0c:	000c0593          	mv	a1,s8
   1ac10:	000b8513          	mv	a0,s7
   1ac14:	02613823          	sd	t1,48(sp)
   1ac18:	591060ef          	jal	219a8 <__trunctfdf2>
   1ac1c:	0d810593          	add	a1,sp,216
   1ac20:	b5dfd0ef          	jal	1877c <frexp>
   1ac24:	495060ef          	jal	218b8 <__extenddftf2>
   1ac28:	00022737          	lui	a4,0x22
   1ac2c:	f9873683          	ld	a3,-104(a4) # 21f98 <blanks.1+0x20>
   1ac30:	00000613          	li	a2,0
   1ac34:	395050ef          	jal	207c8 <__multf3>
   1ac38:	00000613          	li	a2,0
   1ac3c:	00000693          	li	a3,0
   1ac40:	00050d93          	mv	s11,a0
   1ac44:	00058913          	mv	s2,a1
   1ac48:	0c5050ef          	jal	2050c <__eqtf2>
   1ac4c:	03013303          	ld	t1,48(sp)
   1ac50:	00051663          	bnez	a0,1ac5c <_svfprintf_r+0x1e54>
   1ac54:	00100713          	li	a4,1
   1ac58:	0ce12c23          	sw	a4,216(sp)
   1ac5c:	00022737          	lui	a4,0x22
   1ac60:	d2870793          	add	a5,a4,-728 # 21d28 <__clzdi2+0x9c>
   1ac64:	02f13c23          	sd	a5,56(sp)
   1ac68:	000226b7          	lui	a3,0x22
   1ac6c:	fa86b783          	ld	a5,-88(a3) # 21fa8 <blanks.1+0x30>
   1ac70:	02031713          	sll	a4,t1,0x20
   1ac74:	02075713          	srl	a4,a4,0x20
   1ac78:	00170713          	add	a4,a4,1
   1ac7c:	02f13823          	sd	a5,48(sp)
   1ac80:	0003061b          	sext.w	a2,t1
   1ac84:	00eb07b3          	add	a5,s6,a4
   1ac88:	04913423          	sd	s1,72(sp)
   1ac8c:	0b413023          	sd	s4,160(sp)
   1ac90:	0a813823          	sd	s0,176(sp)
   1ac94:	0ac13c23          	sd	a2,184(sp)
   1ac98:	03813403          	ld	s0,56(sp)
   1ac9c:	00078493          	mv	s1,a5
   1aca0:	0a613423          	sd	t1,168(sp)
   1aca4:	000b0a13          	mv	s4,s6
   1aca8:	00098b93          	mv	s7,s3
   1acac:	000b0d13          	mv	s10,s6
   1acb0:	0140006f          	j	1acc4 <_svfprintf_r+0x1ebc>
   1acb4:	00000613          	li	a2,0
   1acb8:	00000693          	li	a3,0
   1acbc:	051050ef          	jal	2050c <__eqtf2>
   1acc0:	56050463          	beqz	a0,1b228 <_svfprintf_r+0x2420>
   1acc4:	03013683          	ld	a3,48(sp)
   1acc8:	00000613          	li	a2,0
   1accc:	000d8513          	mv	a0,s11
   1acd0:	00090593          	mv	a1,s2
   1acd4:	2f5050ef          	jal	207c8 <__multf3>
   1acd8:	00058913          	mv	s2,a1
   1acdc:	00050993          	mv	s3,a0
   1ace0:	2e9060ef          	jal	217c8 <__fixtfsi>
   1ace4:	00050c1b          	sext.w	s8,a0
   1ace8:	000c0513          	mv	a0,s8
   1acec:	345060ef          	jal	21830 <__floatsitf>
   1acf0:	00058693          	mv	a3,a1
   1acf4:	00050613          	mv	a2,a0
   1acf8:	00090593          	mv	a1,s2
   1acfc:	00098513          	mv	a0,s3
   1ad00:	214060ef          	jal	20f14 <__subtf3>
   1ad04:	01840733          	add	a4,s0,s8
   1ad08:	00074683          	lbu	a3,0(a4)
   1ad0c:	000a0993          	mv	s3,s4
   1ad10:	001a0a13          	add	s4,s4,1
   1ad14:	feda0fa3          	sb	a3,-1(s4)
   1ad18:	00050a93          	mv	s5,a0
   1ad1c:	00058b13          	mv	s6,a1
   1ad20:	00050d93          	mv	s11,a0
   1ad24:	00058913          	mv	s2,a1
   1ad28:	f94496e3          	bne	s1,s4,1acb4 <_svfprintf_r+0x1eac>
   1ad2c:	000a0a93          	mv	s5,s4
   1ad30:	04813483          	ld	s1,72(sp)
   1ad34:	0a813303          	ld	t1,168(sp)
   1ad38:	0b013403          	ld	s0,176(sp)
   1ad3c:	0a013a03          	ld	s4,160(sp)
   1ad40:	03313823          	sd	s3,48(sp)
   1ad44:	000d0b13          	mv	s6,s10
   1ad48:	000b8993          	mv	s3,s7
   1ad4c:	00050d13          	mv	s10,a0
   1ad50:	00058b93          	mv	s7,a1
   1ad54:	fff00d93          	li	s11,-1
   1ad58:	000226b7          	lui	a3,0x22
   1ad5c:	fb86b903          	ld	s2,-72(a3) # 21fb8 <blanks.1+0x40>
   1ad60:	00000613          	li	a2,0
   1ad64:	000d0513          	mv	a0,s10
   1ad68:	00090693          	mv	a3,s2
   1ad6c:	000b8593          	mv	a1,s7
   1ad70:	04613423          	sd	t1,72(sp)
   1ad74:	03d050ef          	jal	205b0 <__getf2>
   1ad78:	04813303          	ld	t1,72(sp)
   1ad7c:	36a04663          	bgtz	a0,1b0e8 <_svfprintf_r+0x22e0>
   1ad80:	00000613          	li	a2,0
   1ad84:	00090693          	mv	a3,s2
   1ad88:	000d0513          	mv	a0,s10
   1ad8c:	000b8593          	mv	a1,s7
   1ad90:	77c050ef          	jal	2050c <__eqtf2>
   1ad94:	04813303          	ld	t1,72(sp)
   1ad98:	00051663          	bnez	a0,1ada4 <_svfprintf_r+0x1f9c>
   1ad9c:	001c7c13          	and	s8,s8,1
   1ada0:	340c1463          	bnez	s8,1b0e8 <_svfprintf_r+0x22e0>
   1ada4:	001d8c1b          	addw	s8,s11,1
   1ada8:	018a8c33          	add	s8,s5,s8
   1adac:	03000693          	li	a3,48
   1adb0:	380dc263          	bltz	s11,1b134 <_svfprintf_r+0x232c>
   1adb4:	001a8a93          	add	s5,s5,1
   1adb8:	feda8fa3          	sb	a3,-1(s5)
   1adbc:	ff5c1ce3          	bne	s8,s5,1adb4 <_svfprintf_r+0x1fac>
   1adc0:	416c07bb          	subw	a5,s8,s6
   1adc4:	02f13c23          	sd	a5,56(sp)
   1adc8:	fdfcfa93          	and	s5,s9,-33
   1adcc:	c61ff06f          	j	1aa2c <_svfprintf_r+0x1c24>
   1add0:	0e813c03          	ld	s8,232(sp)
   1add4:	0d812703          	lw	a4,216(sp)
   1add8:	416c07bb          	subw	a5,s8,s6
   1addc:	02f13c23          	sd	a5,56(sp)
   1ade0:	ffd00693          	li	a3,-3
   1ade4:	02e13823          	sd	a4,48(sp)
   1ade8:	00d74463          	blt	a4,a3,1adf0 <_svfprintf_r+0x1fe8>
   1adec:	02e35863          	bge	t1,a4,1ae1c <_svfprintf_r+0x2014>
   1adf0:	fff70d1b          	addw	s10,a4,-1
   1adf4:	ffec8c9b          	addw	s9,s9,-2
   1adf8:	0da12c23          	sw	s10,216(sp)
   1adfc:	0ffcf693          	zext.b	a3,s9
   1ae00:	00000613          	li	a2,0
   1ae04:	c61ff06f          	j	1aa64 <_svfprintf_r+0x1c5c>
   1ae08:	0cf14703          	lbu	a4,207(sp)
   1ae0c:	00000313          	li	t1,0
   1ae10:	00070463          	beqz	a4,1ae18 <_svfprintf_r+0x2010>
   1ae14:	e64fe06f          	j	19478 <_svfprintf_r+0x670>
   1ae18:	9e4fe06f          	j	18ffc <_svfprintf_r+0x1f4>
   1ae1c:	03813783          	ld	a5,56(sp)
   1ae20:	24f74c63          	blt	a4,a5,1b078 <_svfprintf_r+0x2270>
   1ae24:	04013783          	ld	a5,64(sp)
   1ae28:	00070d13          	mv	s10,a4
   1ae2c:	0017f613          	and	a2,a5,1
   1ae30:	00060663          	beqz	a2,1ae3c <_svfprintf_r+0x2034>
   1ae34:	05813783          	ld	a5,88(sp)
   1ae38:	00e78d3b          	addw	s10,a5,a4
   1ae3c:	04013783          	ld	a5,64(sp)
   1ae40:	4007f613          	and	a2,a5,1024
   1ae44:	00060463          	beqz	a2,1ae4c <_svfprintf_r+0x2044>
   1ae48:	40e04c63          	bgtz	a4,1b260 <_svfprintf_r+0x2458>
   1ae4c:	fffd4813          	not	a6,s10
   1ae50:	43f85813          	sra	a6,a6,0x3f
   1ae54:	09013903          	ld	s2,144(sp)
   1ae58:	010d7833          	and	a6,s10,a6
   1ae5c:	00080c1b          	sext.w	s8,a6
   1ae60:	06700c93          	li	s9,103
   1ae64:	04013423          	sd	zero,72(sp)
   1ae68:	04013023          	sd	zero,64(sp)
   1ae6c:	cedff06f          	j	1ab58 <_svfprintf_r+0x1d50>
   1ae70:	04013783          	ld	a5,64(sp)
   1ae74:	0017f713          	and	a4,a5,1
   1ae78:	f4070ce3          	beqz	a4,1add0 <_svfprintf_r+0x1fc8>
   1ae7c:	012b0d33          	add	s10,s6,s2
   1ae80:	04700a93          	li	s5,71
   1ae84:	b5dff06f          	j	1a9e0 <_svfprintf_r+0x1bd8>
   1ae88:	10010613          	add	a2,sp,256
   1ae8c:	000b8593          	mv	a1,s7
   1ae90:	00098513          	mv	a0,s3
   1ae94:	09c030ef          	jal	1df30 <__ssprint_r>
   1ae98:	00050463          	beqz	a0,1aea0 <_svfprintf_r+0x2098>
   1ae9c:	c69fe06f          	j	19b04 <_svfprintf_r+0xcfc>
   1aea0:	00094683          	lbu	a3,0(s2)
   1aea4:	11013703          	ld	a4,272(sp)
   1aea8:	18010413          	add	s0,sp,384
   1aeac:	01000893          	li	a7,16
   1aeb0:	00700313          	li	t1,7
   1aeb4:	00da0a33          	add	s4,s4,a3
   1aeb8:	cb0ff06f          	j	1a368 <_svfprintf_r+0x1560>
   1aebc:	07800713          	li	a4,120
   1aec0:	00296793          	or	a5,s2,2
   1aec4:	03000693          	li	a3,48
   1aec8:	0007879b          	sext.w	a5,a5
   1aecc:	0ce108a3          	sb	a4,209(sp)
   1aed0:	0cd10823          	sb	a3,208(sp)
   1aed4:	06300713          	li	a4,99
   1aed8:	04f13023          	sd	a5,64(sp)
   1aedc:	00013c23          	sd	zero,24(sp)
   1aee0:	11810b13          	add	s6,sp,280
   1aee4:	2e674063          	blt	a4,t1,1b1c4 <_svfprintf_r+0x23bc>
   1aee8:	10296913          	or	s2,s2,258
   1aeec:	0f813c03          	ld	s8,248(sp)
   1aef0:	0009079b          	sext.w	a5,s2
   1aef4:	08f13823          	sd	a5,144(sp)
   1aef8:	08013c23          	sd	zero,152(sp)
   1aefc:	0f013b83          	ld	s7,240(sp)
   1af00:	060c4a63          	bltz	s8,1af74 <_svfprintf_r+0x216c>
   1af04:	06100713          	li	a4,97
   1af08:	00ec8463          	beq	s9,a4,1af10 <_svfprintf_r+0x2108>
   1af0c:	b70fe06f          	j	1927c <_svfprintf_r+0x474>
   1af10:	000c0593          	mv	a1,s8
   1af14:	000b8513          	mv	a0,s7
   1af18:	02613823          	sd	t1,48(sp)
   1af1c:	28d060ef          	jal	219a8 <__trunctfdf2>
   1af20:	0d810593          	add	a1,sp,216
   1af24:	859fd0ef          	jal	1877c <frexp>
   1af28:	191060ef          	jal	218b8 <__extenddftf2>
   1af2c:	00022737          	lui	a4,0x22
   1af30:	f9873683          	ld	a3,-104(a4) # 21f98 <blanks.1+0x20>
   1af34:	00000613          	li	a2,0
   1af38:	091050ef          	jal	207c8 <__multf3>
   1af3c:	00000613          	li	a2,0
   1af40:	00000693          	li	a3,0
   1af44:	00050d93          	mv	s11,a0
   1af48:	00058913          	mv	s2,a1
   1af4c:	5c0050ef          	jal	2050c <__eqtf2>
   1af50:	03013303          	ld	t1,48(sp)
   1af54:	00051663          	bnez	a0,1af60 <_svfprintf_r+0x2158>
   1af58:	00100713          	li	a4,1
   1af5c:	0ce12c23          	sw	a4,216(sp)
   1af60:	00022737          	lui	a4,0x22
   1af64:	d4070793          	add	a5,a4,-704 # 21d40 <__clzdi2+0xb4>
   1af68:	02f13c23          	sd	a5,56(sp)
   1af6c:	cfdff06f          	j	1ac68 <_svfprintf_r+0x1e60>
   1af70:	00013c23          	sd	zero,24(sp)
   1af74:	fff00713          	li	a4,-1
   1af78:	03f71713          	sll	a4,a4,0x3f
   1af7c:	02d00793          	li	a5,45
   1af80:	00ec4c33          	xor	s8,s8,a4
   1af84:	08f13c23          	sd	a5,152(sp)
   1af88:	f7dff06f          	j	1af04 <_svfprintf_r+0x20fc>
   1af8c:	02d00793          	li	a5,45
   1af90:	0cf107a3          	sb	a5,207(sp)
   1af94:	02d00713          	li	a4,45
   1af98:	f98ff06f          	j	1a730 <_svfprintf_r+0x1928>
   1af9c:	00013583          	ld	a1,0(sp)
   1afa0:	10010613          	add	a2,sp,256
   1afa4:	00098513          	mv	a0,s3
   1afa8:	789020ef          	jal	1df30 <__ssprint_r>
   1afac:	00050463          	beqz	a0,1afb4 <_svfprintf_r+0x21ac>
   1afb0:	b55fe06f          	j	19b04 <_svfprintf_r+0xcfc>
   1afb4:	0d812683          	lw	a3,216(sp)
   1afb8:	11013703          	ld	a4,272(sp)
   1afbc:	18010413          	add	s0,sp,384
   1afc0:	de5fe06f          	j	19da4 <_svfprintf_r+0xf9c>
   1afc4:	00054683          	lbu	a3,0(a0)
   1afc8:	03000713          	li	a4,48
   1afcc:	00e68863          	beq	a3,a4,1afdc <_svfprintf_r+0x21d4>
   1afd0:	0d812683          	lw	a3,216(sp)
   1afd4:	00dd0d33          	add	s10,s10,a3
   1afd8:	a09ff06f          	j	1a9e0 <_svfprintf_r+0x1bd8>
   1afdc:	00000613          	li	a2,0
   1afe0:	00000693          	li	a3,0
   1afe4:	000b8513          	mv	a0,s7
   1afe8:	000c0593          	mv	a1,s8
   1afec:	02613823          	sd	t1,48(sp)
   1aff0:	51c050ef          	jal	2050c <__eqtf2>
   1aff4:	03013303          	ld	t1,48(sp)
   1aff8:	fc050ce3          	beqz	a0,1afd0 <_svfprintf_r+0x21c8>
   1affc:	00100713          	li	a4,1
   1b000:	412706bb          	subw	a3,a4,s2
   1b004:	0cd12c23          	sw	a3,216(sp)
   1b008:	00dd0d33          	add	s10,s10,a3
   1b00c:	9d5ff06f          	j	1a9e0 <_svfprintf_r+0x1bd8>
   1b010:	0cf14703          	lbu	a4,207(sp)
   1b014:	03513023          	sd	s5,32(sp)
   1b018:	04013423          	sd	zero,72(sp)
   1b01c:	04013023          	sd	zero,64(sp)
   1b020:	02013823          	sd	zero,48(sp)
   1b024:	00030c13          	mv	s8,t1
   1b028:	00030d13          	mv	s10,t1
   1b02c:	00000313          	li	t1,0
   1b030:	00070463          	beqz	a4,1b038 <_svfprintf_r+0x2230>
   1b034:	c44fe06f          	j	19478 <_svfprintf_r+0x670>
   1b038:	fc5fd06f          	j	18ffc <_svfprintf_r+0x1f4>
   1b03c:	00013583          	ld	a1,0(sp)
   1b040:	10010613          	add	a2,sp,256
   1b044:	00098513          	mv	a0,s3
   1b048:	6e9020ef          	jal	1df30 <__ssprint_r>
   1b04c:	00050463          	beqz	a0,1b054 <_svfprintf_r+0x224c>
   1b050:	ab5fe06f          	j	19b04 <_svfprintf_r+0xcfc>
   1b054:	0d812603          	lw	a2,216(sp)
   1b058:	03813783          	ld	a5,56(sp)
   1b05c:	11013703          	ld	a4,272(sp)
   1b060:	18010413          	add	s0,sp,384
   1b064:	40c7863b          	subw	a2,a5,a2
   1b068:	d89fe06f          	j	19df0 <_svfprintf_r+0xfe8>
   1b06c:	000227b7          	lui	a5,0x22
   1b070:	d1878b13          	add	s6,a5,-744 # 21d18 <__clzdi2+0x8c>
   1b074:	eccff06f          	j	1a740 <_svfprintf_r+0x1938>
   1b078:	05813783          	ld	a5,88(sp)
   1b07c:	03813703          	ld	a4,56(sp)
   1b080:	06700c93          	li	s9,103
   1b084:	00e78d3b          	addw	s10,a5,a4
   1b088:	03013783          	ld	a5,48(sp)
   1b08c:	26f05463          	blez	a5,1b2f4 <_svfprintf_r+0x24ec>
   1b090:	04013783          	ld	a5,64(sp)
   1b094:	4007f713          	and	a4,a5,1024
   1b098:	1c071663          	bnez	a4,1b264 <_svfprintf_r+0x245c>
   1b09c:	fffd4813          	not	a6,s10
   1b0a0:	43f85813          	sra	a6,a6,0x3f
   1b0a4:	010d7833          	and	a6,s10,a6
   1b0a8:	09013903          	ld	s2,144(sp)
   1b0ac:	00080c1b          	sext.w	s8,a6
   1b0b0:	db5ff06f          	j	1ae64 <_svfprintf_r+0x205c>
   1b0b4:	05800713          	li	a4,88
   1b0b8:	e09ff06f          	j	1aec0 <_svfprintf_r+0x20b8>
   1b0bc:	00090d93          	mv	s11,s2
   1b0c0:	db4fe06f          	j	19674 <_svfprintf_r+0x86c>
   1b0c4:	04013783          	ld	a5,64(sp)
   1b0c8:	0017f713          	and	a4,a5,1
   1b0cc:	03013783          	ld	a5,48(sp)
   1b0d0:	00e36733          	or	a4,t1,a4
   1b0d4:	26f05663          	blez	a5,1b340 <_svfprintf_r+0x2538>
   1b0d8:	24071063          	bnez	a4,1b318 <_svfprintf_r+0x2510>
   1b0dc:	03013d03          	ld	s10,48(sp)
   1b0e0:	06600c93          	li	s9,102
   1b0e4:	fadff06f          	j	1b090 <_svfprintf_r+0x2288>
   1b0e8:	03013783          	ld	a5,48(sp)
   1b0ec:	000a8693          	mv	a3,s5
   1b0f0:	0ef13423          	sd	a5,232(sp)
   1b0f4:	03813783          	ld	a5,56(sp)
   1b0f8:	fffac603          	lbu	a2,-1(s5)
   1b0fc:	00f7c583          	lbu	a1,15(a5)
   1b100:	02c59063          	bne	a1,a2,1b120 <_svfprintf_r+0x2318>
   1b104:	03000513          	li	a0,48
   1b108:	fea68fa3          	sb	a0,-1(a3)
   1b10c:	0e813683          	ld	a3,232(sp)
   1b110:	fff68793          	add	a5,a3,-1
   1b114:	0ef13423          	sd	a5,232(sp)
   1b118:	fff6c603          	lbu	a2,-1(a3)
   1b11c:	fec586e3          	beq	a1,a2,1b108 <_svfprintf_r+0x2300>
   1b120:	0016059b          	addw	a1,a2,1
   1b124:	03900513          	li	a0,57
   1b128:	0ff5f593          	zext.b	a1,a1
   1b12c:	00a60863          	beq	a2,a0,1b13c <_svfprintf_r+0x2334>
   1b130:	feb68fa3          	sb	a1,-1(a3)
   1b134:	000a8c13          	mv	s8,s5
   1b138:	c89ff06f          	j	1adc0 <_svfprintf_r+0x1fb8>
   1b13c:	03813783          	ld	a5,56(sp)
   1b140:	00a7c583          	lbu	a1,10(a5)
   1b144:	feb68fa3          	sb	a1,-1(a3)
   1b148:	fedff06f          	j	1b134 <_svfprintf_r+0x232c>
   1b14c:	0016869b          	addw	a3,a3,1
   1b150:	01970733          	add	a4,a4,s9
   1b154:	01b43023          	sd	s11,0(s0)
   1b158:	01943423          	sd	s9,8(s0)
   1b15c:	10e13823          	sd	a4,272(sp)
   1b160:	10d12423          	sw	a3,264(sp)
   1b164:	00700613          	li	a2,7
   1b168:	c8d65863          	bge	a2,a3,1a5f8 <_svfprintf_r+0x17f0>
   1b16c:	00013583          	ld	a1,0(sp)
   1b170:	10010613          	add	a2,sp,256
   1b174:	00098513          	mv	a0,s3
   1b178:	5b9020ef          	jal	1df30 <__ssprint_r>
   1b17c:	00050463          	beqz	a0,1b184 <_svfprintf_r+0x237c>
   1b180:	985fe06f          	j	19b04 <_svfprintf_r+0xcfc>
   1b184:	11013703          	ld	a4,272(sp)
   1b188:	10812683          	lw	a3,264(sp)
   1b18c:	18010413          	add	s0,sp,384
   1b190:	c6cff06f          	j	1a5fc <_svfprintf_r+0x17f4>
   1b194:	0e210713          	add	a4,sp,226
   1b198:	00061863          	bnez	a2,1b1a8 <_svfprintf_r+0x23a0>
   1b19c:	03000713          	li	a4,48
   1b1a0:	0ee10123          	sb	a4,226(sp)
   1b1a4:	0e310713          	add	a4,sp,227
   1b1a8:	20010793          	add	a5,sp,512
   1b1ac:	40f706b3          	sub	a3,a4,a5
   1b1b0:	030d0d1b          	addw	s10,s10,48
   1b1b4:	1216879b          	addw	a5,a3,289
   1b1b8:	01a70023          	sb	s10,0(a4)
   1b1bc:	06f13823          	sd	a5,112(sp)
   1b1c0:	94dff06f          	j	1ab0c <_svfprintf_r+0x1d04>
   1b1c4:	0013059b          	addw	a1,t1,1
   1b1c8:	00098513          	mv	a0,s3
   1b1cc:	00613c23          	sd	t1,24(sp)
   1b1d0:	8fdfb0ef          	jal	16acc <_malloc_r>
   1b1d4:	01813303          	ld	t1,24(sp)
   1b1d8:	00050b13          	mv	s6,a0
   1b1dc:	1e050063          	beqz	a0,1b3bc <_svfprintf_r+0x25b4>
   1b1e0:	00a13c23          	sd	a0,24(sp)
   1b1e4:	d05ff06f          	j	1aee8 <_svfprintf_r+0x20e0>
   1b1e8:	00f72023          	sw	a5,0(a4)
   1b1ec:	d54fe06f          	j	19740 <_svfprintf_r+0x938>
   1b1f0:	05013703          	ld	a4,80(sp)
   1b1f4:	00c00793          	li	a5,12
   1b1f8:	00f72023          	sw	a5,0(a4)
   1b1fc:	fff00793          	li	a5,-1
   1b200:	00f13823          	sd	a5,16(sp)
   1b204:	f41fd06f          	j	19144 <_svfprintf_r+0x33c>
   1b208:	00030463          	beqz	t1,1b210 <_svfprintf_r+0x2408>
   1b20c:	848fe06f          	j	19254 <_svfprintf_r+0x44c>
   1b210:	00100313          	li	t1,1
   1b214:	840fe06f          	j	19254 <_svfprintf_r+0x44c>
   1b218:	04013783          	ld	a5,64(sp)
   1b21c:	0017f613          	and	a2,a5,1
   1b220:	900606e3          	beqz	a2,1ab2c <_svfprintf_r+0x1d24>
   1b224:	901ff06f          	j	1ab24 <_svfprintf_r+0x1d1c>
   1b228:	0b813603          	ld	a2,184(sp)
   1b22c:	03313823          	sd	s3,48(sp)
   1b230:	000b8993          	mv	s3,s7
   1b234:	000b0b93          	mv	s7,s6
   1b238:	000d0b13          	mv	s6,s10
   1b23c:	00cb063b          	addw	a2,s6,a2
   1b240:	000a8d13          	mv	s10,s5
   1b244:	000a0a93          	mv	s5,s4
   1b248:	04813483          	ld	s1,72(sp)
   1b24c:	0a813303          	ld	t1,168(sp)
   1b250:	0b013403          	ld	s0,176(sp)
   1b254:	0a013a03          	ld	s4,160(sp)
   1b258:	41560dbb          	subw	s11,a2,s5
   1b25c:	afdff06f          	j	1ad58 <_svfprintf_r+0x1f50>
   1b260:	06700c93          	li	s9,103
   1b264:	07813683          	ld	a3,120(sp)
   1b268:	0ff00613          	li	a2,255
   1b26c:	0006c703          	lbu	a4,0(a3)
   1b270:	14c70063          	beq	a4,a2,1b3b0 <_svfprintf_r+0x25a8>
   1b274:	03013783          	ld	a5,48(sp)
   1b278:	00000813          	li	a6,0
   1b27c:	00000513          	li	a0,0
   1b280:	0ff00593          	li	a1,255
   1b284:	0007061b          	sext.w	a2,a4
   1b288:	00f75e63          	bge	a4,a5,1b2a4 <_svfprintf_r+0x249c>
   1b28c:	0016c703          	lbu	a4,1(a3)
   1b290:	40c787bb          	subw	a5,a5,a2
   1b294:	04070a63          	beqz	a4,1b2e8 <_svfprintf_r+0x24e0>
   1b298:	0015051b          	addw	a0,a0,1
   1b29c:	00168693          	add	a3,a3,1
   1b2a0:	feb712e3          	bne	a4,a1,1b284 <_svfprintf_r+0x247c>
   1b2a4:	06d13c23          	sd	a3,120(sp)
   1b2a8:	02f13823          	sd	a5,48(sp)
   1b2ac:	04a13023          	sd	a0,64(sp)
   1b2b0:	05013423          	sd	a6,72(sp)
   1b2b4:	04013703          	ld	a4,64(sp)
   1b2b8:	04813783          	ld	a5,72(sp)
   1b2bc:	08013583          	ld	a1,128(sp)
   1b2c0:	00e7853b          	addw	a0,a5,a4
   1b2c4:	0a5060ef          	jal	21b68 <__muldi3>
   1b2c8:	01a5073b          	addw	a4,a0,s10
   1b2cc:	00070d1b          	sext.w	s10,a4
   1b2d0:	fffd4613          	not	a2,s10
   1b2d4:	43f65613          	sra	a2,a2,0x3f
   1b2d8:	00c77733          	and	a4,a4,a2
   1b2dc:	09013903          	ld	s2,144(sp)
   1b2e0:	00070c1b          	sext.w	s8,a4
   1b2e4:	875ff06f          	j	1ab58 <_svfprintf_r+0x1d50>
   1b2e8:	0006c703          	lbu	a4,0(a3)
   1b2ec:	0018081b          	addw	a6,a6,1
   1b2f0:	fb1ff06f          	j	1b2a0 <_svfprintf_r+0x2498>
   1b2f4:	40fd073b          	subw	a4,s10,a5
   1b2f8:	0017071b          	addw	a4,a4,1
   1b2fc:	00070d1b          	sext.w	s10,a4
   1b300:	fffd4613          	not	a2,s10
   1b304:	43f65613          	sra	a2,a2,0x3f
   1b308:	00c77733          	and	a4,a4,a2
   1b30c:	09013903          	ld	s2,144(sp)
   1b310:	00070c1b          	sext.w	s8,a4
   1b314:	b51ff06f          	j	1ae64 <_svfprintf_r+0x205c>
   1b318:	05813703          	ld	a4,88(sp)
   1b31c:	06600c93          	li	s9,102
   1b320:	00f706bb          	addw	a3,a4,a5
   1b324:	00668d3b          	addw	s10,a3,t1
   1b328:	d69ff06f          	j	1b090 <_svfprintf_r+0x2288>
   1b32c:	07000693          	li	a3,112
   1b330:	f30ff06f          	j	1aa60 <_svfprintf_r+0x1c58>
   1b334:	00200793          	li	a5,2
   1b338:	06f13823          	sd	a5,112(sp)
   1b33c:	fd0ff06f          	j	1ab0c <_svfprintf_r+0x1d04>
   1b340:	00071c63          	bnez	a4,1b358 <_svfprintf_r+0x2550>
   1b344:	09013903          	ld	s2,144(sp)
   1b348:	00100c13          	li	s8,1
   1b34c:	06600c93          	li	s9,102
   1b350:	00100d13          	li	s10,1
   1b354:	b11ff06f          	j	1ae64 <_svfprintf_r+0x205c>
   1b358:	05813783          	ld	a5,88(sp)
   1b35c:	09013903          	ld	s2,144(sp)
   1b360:	06600c93          	li	s9,102
   1b364:	0017871b          	addw	a4,a5,1
   1b368:	0067073b          	addw	a4,a4,t1
   1b36c:	00070d1b          	sext.w	s10,a4
   1b370:	fffd4613          	not	a2,s10
   1b374:	43f65613          	sra	a2,a2,0x3f
   1b378:	00c77733          	and	a4,a4,a2
   1b37c:	00070c1b          	sext.w	s8,a4
   1b380:	ae5ff06f          	j	1ae64 <_svfprintf_r+0x205c>
   1b384:	02013683          	ld	a3,32(sp)
   1b388:	0006a703          	lw	a4,0(a3)
   1b38c:	00868693          	add	a3,a3,8
   1b390:	00070313          	mv	t1,a4
   1b394:	00075463          	bgez	a4,1b39c <_svfprintf_r+0x2594>
   1b398:	fff00313          	li	t1,-1
   1b39c:	0014ce03          	lbu	t3,1(s1)
   1b3a0:	00030a9b          	sext.w	s5,t1
   1b3a4:	02d13023          	sd	a3,32(sp)
   1b3a8:	00078493          	mv	s1,a5
   1b3ac:	bbdfd06f          	j	18f68 <_svfprintf_r+0x160>
   1b3b0:	04013423          	sd	zero,72(sp)
   1b3b4:	04013023          	sd	zero,64(sp)
   1b3b8:	efdff06f          	j	1b2b4 <_svfprintf_r+0x24ac>
   1b3bc:	00013703          	ld	a4,0(sp)
   1b3c0:	01075783          	lhu	a5,16(a4)
   1b3c4:	0407e793          	or	a5,a5,64
   1b3c8:	00f71823          	sh	a5,16(a4)
   1b3cc:	d65fd06f          	j	19130 <_svfprintf_r+0x328>

000000000001b3d0 <__sprint_r.part.0>:
   1b3d0:	0ac5a783          	lw	a5,172(a1)
   1b3d4:	fb010113          	add	sp,sp,-80
   1b3d8:	01513c23          	sd	s5,24(sp)
   1b3dc:	00d7d793          	srl	a5,a5,0xd
   1b3e0:	04113423          	sd	ra,72(sp)
   1b3e4:	04813023          	sd	s0,64(sp)
   1b3e8:	02913c23          	sd	s1,56(sp)
   1b3ec:	03213823          	sd	s2,48(sp)
   1b3f0:	03313423          	sd	s3,40(sp)
   1b3f4:	03413023          	sd	s4,32(sp)
   1b3f8:	01613823          	sd	s6,16(sp)
   1b3fc:	01713423          	sd	s7,8(sp)
   1b400:	0017f793          	and	a5,a5,1
   1b404:	00060a93          	mv	s5,a2
   1b408:	0c078063          	beqz	a5,1b4c8 <__sprint_r.part.0+0xf8>
   1b40c:	01063783          	ld	a5,16(a2)
   1b410:	00063b03          	ld	s6,0(a2)
   1b414:	00058913          	mv	s2,a1
   1b418:	00050993          	mv	s3,a0
   1b41c:	fff00a13          	li	s4,-1
   1b420:	0a078063          	beqz	a5,1b4c0 <__sprint_r.part.0+0xf0>
   1b424:	008b3483          	ld	s1,8(s6)
   1b428:	000b3403          	ld	s0,0(s6)
   1b42c:	0024d493          	srl	s1,s1,0x2
   1b430:	00048b9b          	sext.w	s7,s1
   1b434:	07705c63          	blez	s7,1b4ac <__sprint_r.part.0+0xdc>
   1b438:	fff4849b          	addw	s1,s1,-1
   1b43c:	02049793          	sll	a5,s1,0x20
   1b440:	01e7d493          	srl	s1,a5,0x1e
   1b444:	00440793          	add	a5,s0,4
   1b448:	00f484b3          	add	s1,s1,a5
   1b44c:	0080006f          	j	1b454 <__sprint_r.part.0+0x84>
   1b450:	04848c63          	beq	s1,s0,1b4a8 <__sprint_r.part.0+0xd8>
   1b454:	00042583          	lw	a1,0(s0)
   1b458:	00090613          	mv	a2,s2
   1b45c:	00098513          	mv	a0,s3
   1b460:	21d010ef          	jal	1ce7c <_fputwc_r>
   1b464:	0005051b          	sext.w	a0,a0
   1b468:	00440413          	add	s0,s0,4
   1b46c:	ff4512e3          	bne	a0,s4,1b450 <__sprint_r.part.0+0x80>
   1b470:	fff00513          	li	a0,-1
   1b474:	04813083          	ld	ra,72(sp)
   1b478:	04013403          	ld	s0,64(sp)
   1b47c:	000ab823          	sd	zero,16(s5)
   1b480:	000aa423          	sw	zero,8(s5)
   1b484:	03813483          	ld	s1,56(sp)
   1b488:	03013903          	ld	s2,48(sp)
   1b48c:	02813983          	ld	s3,40(sp)
   1b490:	02013a03          	ld	s4,32(sp)
   1b494:	01813a83          	ld	s5,24(sp)
   1b498:	01013b03          	ld	s6,16(sp)
   1b49c:	00813b83          	ld	s7,8(sp)
   1b4a0:	05010113          	add	sp,sp,80
   1b4a4:	00008067          	ret
   1b4a8:	010ab783          	ld	a5,16(s5)
   1b4ac:	002b9b93          	sll	s7,s7,0x2
   1b4b0:	417787b3          	sub	a5,a5,s7
   1b4b4:	00fab823          	sd	a5,16(s5)
   1b4b8:	010b0b13          	add	s6,s6,16
   1b4bc:	f60794e3          	bnez	a5,1b424 <__sprint_r.part.0+0x54>
   1b4c0:	00000513          	li	a0,0
   1b4c4:	fb1ff06f          	j	1b474 <__sprint_r.part.0+0xa4>
   1b4c8:	2c1010ef          	jal	1cf88 <__sfvwrite_r>
   1b4cc:	fa9ff06f          	j	1b474 <__sprint_r.part.0+0xa4>

000000000001b4d0 <__sprint_r>:
   1b4d0:	01063703          	ld	a4,16(a2)
   1b4d4:	00070463          	beqz	a4,1b4dc <__sprint_r+0xc>
   1b4d8:	ef9ff06f          	j	1b3d0 <__sprint_r.part.0>
   1b4dc:	00062423          	sw	zero,8(a2)
   1b4e0:	00000513          	li	a0,0
   1b4e4:	00008067          	ret

000000000001b4e8 <_vfiprintf_r>:
   1b4e8:	e2010113          	add	sp,sp,-480
   1b4ec:	1d213023          	sd	s2,448(sp)
   1b4f0:	1b313c23          	sd	s3,440(sp)
   1b4f4:	19713c23          	sd	s7,408(sp)
   1b4f8:	19813823          	sd	s8,400(sp)
   1b4fc:	1c113c23          	sd	ra,472(sp)
   1b500:	1c813823          	sd	s0,464(sp)
   1b504:	1c913423          	sd	s1,456(sp)
   1b508:	1b413823          	sd	s4,432(sp)
   1b50c:	1b513423          	sd	s5,424(sp)
   1b510:	1b613023          	sd	s6,416(sp)
   1b514:	19913423          	sd	s9,392(sp)
   1b518:	19a13023          	sd	s10,384(sp)
   1b51c:	17b13c23          	sd	s11,376(sp)
   1b520:	00050993          	mv	s3,a0
   1b524:	00058913          	mv	s2,a1
   1b528:	00060b93          	mv	s7,a2
   1b52c:	00068c13          	mv	s8,a3
   1b530:	00050663          	beqz	a0,1b53c <_vfiprintf_r+0x54>
   1b534:	05052783          	lw	a5,80(a0)
   1b538:	40078e63          	beqz	a5,1b954 <_vfiprintf_r+0x46c>
   1b53c:	01091783          	lh	a5,16(s2)
   1b540:	03279713          	sll	a4,a5,0x32
   1b544:	02074663          	bltz	a4,1b570 <_vfiprintf_r+0x88>
   1b548:	0ac92703          	lw	a4,172(s2)
   1b54c:	000026b7          	lui	a3,0x2
   1b550:	00d7e7b3          	or	a5,a5,a3
   1b554:	ffffe6b7          	lui	a3,0xffffe
   1b558:	0107979b          	sllw	a5,a5,0x10
   1b55c:	fff68693          	add	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd91e7>
   1b560:	4107d79b          	sraw	a5,a5,0x10
   1b564:	00d77733          	and	a4,a4,a3
   1b568:	00f91823          	sh	a5,16(s2)
   1b56c:	0ae92623          	sw	a4,172(s2)
   1b570:	0087f713          	and	a4,a5,8
   1b574:	12070663          	beqz	a4,1b6a0 <_vfiprintf_r+0x1b8>
   1b578:	01893703          	ld	a4,24(s2)
   1b57c:	12070263          	beqz	a4,1b6a0 <_vfiprintf_r+0x1b8>
   1b580:	01a7f793          	and	a5,a5,26
   1b584:	00a00713          	li	a4,10
   1b588:	12e78e63          	beq	a5,a4,1b6c4 <_vfiprintf_r+0x1dc>
   1b58c:	000227b7          	lui	a5,0x22
   1b590:	0f010493          	add	s1,sp,240
   1b594:	67078793          	add	a5,a5,1648 # 22670 <blanks.1+0x10>
   1b598:	00022a37          	lui	s4,0x22
   1b59c:	06913823          	sd	s1,112(sp)
   1b5a0:	08013023          	sd	zero,128(sp)
   1b5a4:	06012c23          	sw	zero,120(sp)
   1b5a8:	00048713          	mv	a4,s1
   1b5ac:	00013423          	sd	zero,8(sp)
   1b5b0:	02013823          	sd	zero,48(sp)
   1b5b4:	02013423          	sd	zero,40(sp)
   1b5b8:	02013c23          	sd	zero,56(sp)
   1b5bc:	00000a93          	li	s5,0
   1b5c0:	00f13023          	sd	a5,0(sp)
   1b5c4:	01000413          	li	s0,16
   1b5c8:	7e0a0a13          	add	s4,s4,2016 # 227e0 <zeroes.0>
   1b5cc:	000b8c93          	mv	s9,s7
   1b5d0:	000cc783          	lbu	a5,0(s9)
   1b5d4:	14078263          	beqz	a5,1b718 <_vfiprintf_r+0x230>
   1b5d8:	000c8b13          	mv	s6,s9
   1b5dc:	02500693          	li	a3,37
   1b5e0:	36d78263          	beq	a5,a3,1b944 <_vfiprintf_r+0x45c>
   1b5e4:	001b4783          	lbu	a5,1(s6)
   1b5e8:	001b0b13          	add	s6,s6,1
   1b5ec:	fe079ae3          	bnez	a5,1b5e0 <_vfiprintf_r+0xf8>
   1b5f0:	419b0bbb          	subw	s7,s6,s9
   1b5f4:	120b8263          	beqz	s7,1b718 <_vfiprintf_r+0x230>
   1b5f8:	07812783          	lw	a5,120(sp)
   1b5fc:	08013683          	ld	a3,128(sp)
   1b600:	01973023          	sd	s9,0(a4)
   1b604:	0017861b          	addw	a2,a5,1
   1b608:	00db86b3          	add	a3,s7,a3
   1b60c:	01773423          	sd	s7,8(a4)
   1b610:	08d13023          	sd	a3,128(sp)
   1b614:	06c12c23          	sw	a2,120(sp)
   1b618:	00700793          	li	a5,7
   1b61c:	01070713          	add	a4,a4,16
   1b620:	02c7d063          	bge	a5,a2,1b640 <_vfiprintf_r+0x158>
   1b624:	4e0684e3          	beqz	a3,1c30c <_vfiprintf_r+0xe24>
   1b628:	07010613          	add	a2,sp,112
   1b62c:	00090593          	mv	a1,s2
   1b630:	00098513          	mv	a0,s3
   1b634:	d9dff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1b638:	0e051663          	bnez	a0,1b724 <_vfiprintf_r+0x23c>
   1b63c:	00048713          	mv	a4,s1
   1b640:	000b4783          	lbu	a5,0(s6)
   1b644:	017a8abb          	addw	s5,s5,s7
   1b648:	0c078863          	beqz	a5,1b718 <_vfiprintf_r+0x230>
   1b64c:	fff00813          	li	a6,-1
   1b650:	00000e13          	li	t3,0
   1b654:	00000313          	li	t1,0
   1b658:	001b4783          	lbu	a5,1(s6)
   1b65c:	001b0c93          	add	s9,s6,1
   1b660:	060103a3          	sb	zero,103(sp)
   1b664:	05a00b93          	li	s7,90
   1b668:	00030b13          	mv	s6,t1
   1b66c:	000e0d13          	mv	s10,t3
   1b670:	00080d93          	mv	s11,a6
   1b674:	001c8c93          	add	s9,s9,1
   1b678:	0007879b          	sext.w	a5,a5
   1b67c:	fe07869b          	addw	a3,a5,-32
   1b680:	0006861b          	sext.w	a2,a3
   1b684:	12cbe663          	bltu	s7,a2,1b7b0 <_vfiprintf_r+0x2c8>
   1b688:	02069613          	sll	a2,a3,0x20
   1b68c:	01e65693          	srl	a3,a2,0x1e
   1b690:	00013603          	ld	a2,0(sp)
   1b694:	00c686b3          	add	a3,a3,a2
   1b698:	0006a683          	lw	a3,0(a3)
   1b69c:	00068067          	jr	a3
   1b6a0:	00090593          	mv	a1,s2
   1b6a4:	00098513          	mv	a0,s3
   1b6a8:	cacf70ef          	jal	12b54 <__swsetup_r>
   1b6ac:	00050463          	beqz	a0,1b6b4 <_vfiprintf_r+0x1cc>
   1b6b0:	0c80106f          	j	1c778 <_vfiprintf_r+0x1290>
   1b6b4:	01091783          	lh	a5,16(s2)
   1b6b8:	00a00713          	li	a4,10
   1b6bc:	01a7f793          	and	a5,a5,26
   1b6c0:	ece796e3          	bne	a5,a4,1b58c <_vfiprintf_r+0xa4>
   1b6c4:	01291783          	lh	a5,18(s2)
   1b6c8:	ec07c2e3          	bltz	a5,1b58c <_vfiprintf_r+0xa4>
   1b6cc:	1d013403          	ld	s0,464(sp)
   1b6d0:	1d813083          	ld	ra,472(sp)
   1b6d4:	1c813483          	ld	s1,456(sp)
   1b6d8:	1b013a03          	ld	s4,432(sp)
   1b6dc:	1a813a83          	ld	s5,424(sp)
   1b6e0:	1a013b03          	ld	s6,416(sp)
   1b6e4:	18813c83          	ld	s9,392(sp)
   1b6e8:	18013d03          	ld	s10,384(sp)
   1b6ec:	17813d83          	ld	s11,376(sp)
   1b6f0:	000c0693          	mv	a3,s8
   1b6f4:	000b8613          	mv	a2,s7
   1b6f8:	19013c03          	ld	s8,400(sp)
   1b6fc:	19813b83          	ld	s7,408(sp)
   1b700:	00090593          	mv	a1,s2
   1b704:	00098513          	mv	a0,s3
   1b708:	1c013903          	ld	s2,448(sp)
   1b70c:	1b813983          	ld	s3,440(sp)
   1b710:	1e010113          	add	sp,sp,480
   1b714:	0c40106f          	j	1c7d8 <__sbprintf>
   1b718:	08013783          	ld	a5,128(sp)
   1b71c:	00078463          	beqz	a5,1b724 <_vfiprintf_r+0x23c>
   1b720:	00c0106f          	j	1c72c <_vfiprintf_r+0x1244>
   1b724:	01095783          	lhu	a5,16(s2)
   1b728:	0407f793          	and	a5,a5,64
   1b72c:	00078463          	beqz	a5,1b734 <_vfiprintf_r+0x24c>
   1b730:	0480106f          	j	1c778 <_vfiprintf_r+0x1290>
   1b734:	1d813083          	ld	ra,472(sp)
   1b738:	1d013403          	ld	s0,464(sp)
   1b73c:	1c813483          	ld	s1,456(sp)
   1b740:	1c013903          	ld	s2,448(sp)
   1b744:	1b813983          	ld	s3,440(sp)
   1b748:	1b013a03          	ld	s4,432(sp)
   1b74c:	1a013b03          	ld	s6,416(sp)
   1b750:	19813b83          	ld	s7,408(sp)
   1b754:	19013c03          	ld	s8,400(sp)
   1b758:	18813c83          	ld	s9,392(sp)
   1b75c:	18013d03          	ld	s10,384(sp)
   1b760:	17813d83          	ld	s11,376(sp)
   1b764:	000a8513          	mv	a0,s5
   1b768:	1a813a83          	ld	s5,424(sp)
   1b76c:	1e010113          	add	sp,sp,480
   1b770:	00008067          	ret
   1b774:	00000d13          	li	s10,0
   1b778:	00900593          	li	a1,9
   1b77c:	000cc603          	lbu	a2,0(s9)
   1b780:	002d169b          	sllw	a3,s10,0x2
   1b784:	01a68e3b          	addw	t3,a3,s10
   1b788:	fd07879b          	addw	a5,a5,-48
   1b78c:	001e1e1b          	sllw	t3,t3,0x1
   1b790:	fd06069b          	addw	a3,a2,-48
   1b794:	01c78d3b          	addw	s10,a5,t3
   1b798:	001c8c93          	add	s9,s9,1
   1b79c:	0006079b          	sext.w	a5,a2
   1b7a0:	fcd5fee3          	bgeu	a1,a3,1b77c <_vfiprintf_r+0x294>
   1b7a4:	fe07869b          	addw	a3,a5,-32
   1b7a8:	0006861b          	sext.w	a2,a3
   1b7ac:	eccbfee3          	bgeu	s7,a2,1b688 <_vfiprintf_r+0x1a0>
   1b7b0:	000b0313          	mv	t1,s6
   1b7b4:	000d0e13          	mv	t3,s10
   1b7b8:	f60780e3          	beqz	a5,1b718 <_vfiprintf_r+0x230>
   1b7bc:	08f10423          	sb	a5,136(sp)
   1b7c0:	060103a3          	sb	zero,103(sp)
   1b7c4:	00100d93          	li	s11,1
   1b7c8:	00100d13          	li	s10,1
   1b7cc:	08810b93          	add	s7,sp,136
   1b7d0:	00000813          	li	a6,0
   1b7d4:	00237f93          	and	t6,t1,2
   1b7d8:	000f8463          	beqz	t6,1b7e0 <_vfiprintf_r+0x2f8>
   1b7dc:	002d8d9b          	addw	s11,s11,2
   1b7e0:	07812683          	lw	a3,120(sp)
   1b7e4:	08437293          	and	t0,t1,132
   1b7e8:	08013783          	ld	a5,128(sp)
   1b7ec:	0016851b          	addw	a0,a3,1
   1b7f0:	00050613          	mv	a2,a0
   1b7f4:	00029663          	bnez	t0,1b800 <_vfiprintf_r+0x318>
   1b7f8:	41be0b3b          	subw	s6,t3,s11
   1b7fc:	0d6040e3          	bgtz	s6,1c0bc <_vfiprintf_r+0xbd4>
   1b800:	06714603          	lbu	a2,103(sp)
   1b804:	02060a63          	beqz	a2,1b838 <_vfiprintf_r+0x350>
   1b808:	06710693          	add	a3,sp,103
   1b80c:	00178793          	add	a5,a5,1
   1b810:	00d73023          	sd	a3,0(a4)
   1b814:	00100693          	li	a3,1
   1b818:	00d73423          	sd	a3,8(a4)
   1b81c:	08f13023          	sd	a5,128(sp)
   1b820:	06a12c23          	sw	a0,120(sp)
   1b824:	00700693          	li	a3,7
   1b828:	7ca6c663          	blt	a3,a0,1bff4 <_vfiprintf_r+0xb0c>
   1b82c:	00050693          	mv	a3,a0
   1b830:	01070713          	add	a4,a4,16
   1b834:	0015051b          	addw	a0,a0,1
   1b838:	060f8863          	beqz	t6,1b8a8 <_vfiprintf_r+0x3c0>
   1b83c:	06810693          	add	a3,sp,104
   1b840:	00278793          	add	a5,a5,2
   1b844:	00d73023          	sd	a3,0(a4)
   1b848:	00200693          	li	a3,2
   1b84c:	00d73423          	sd	a3,8(a4)
   1b850:	08f13023          	sd	a5,128(sp)
   1b854:	06a12c23          	sw	a0,120(sp)
   1b858:	00700693          	li	a3,7
   1b85c:	00a6d4e3          	bge	a3,a0,1c064 <_vfiprintf_r+0xb7c>
   1b860:	2a078ce3          	beqz	a5,1c318 <_vfiprintf_r+0xe30>
   1b864:	07010613          	add	a2,sp,112
   1b868:	00090593          	mv	a1,s2
   1b86c:	00098513          	mv	a0,s3
   1b870:	05013023          	sd	a6,64(sp)
   1b874:	03c13023          	sd	t3,32(sp)
   1b878:	00613c23          	sd	t1,24(sp)
   1b87c:	00513823          	sd	t0,16(sp)
   1b880:	b51ff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1b884:	ea0510e3          	bnez	a0,1b724 <_vfiprintf_r+0x23c>
   1b888:	07812683          	lw	a3,120(sp)
   1b88c:	08013783          	ld	a5,128(sp)
   1b890:	04013803          	ld	a6,64(sp)
   1b894:	02013e03          	ld	t3,32(sp)
   1b898:	01813303          	ld	t1,24(sp)
   1b89c:	01013283          	ld	t0,16(sp)
   1b8a0:	00048713          	mv	a4,s1
   1b8a4:	0016851b          	addw	a0,a3,1
   1b8a8:	08000613          	li	a2,128
   1b8ac:	54c28063          	beq	t0,a2,1bdec <_vfiprintf_r+0x904>
   1b8b0:	41a80b3b          	subw	s6,a6,s10
   1b8b4:	65604863          	bgtz	s6,1bf04 <_vfiprintf_r+0xa1c>
   1b8b8:	00fd07b3          	add	a5,s10,a5
   1b8bc:	01773023          	sd	s7,0(a4)
   1b8c0:	01a73423          	sd	s10,8(a4)
   1b8c4:	08f13023          	sd	a5,128(sp)
   1b8c8:	06a12c23          	sw	a0,120(sp)
   1b8cc:	00700693          	li	a3,7
   1b8d0:	50a6da63          	bge	a3,a0,1bde4 <_vfiprintf_r+0x8fc>
   1b8d4:	0e0782e3          	beqz	a5,1c1b8 <_vfiprintf_r+0xcd0>
   1b8d8:	07010613          	add	a2,sp,112
   1b8dc:	00090593          	mv	a1,s2
   1b8e0:	00098513          	mv	a0,s3
   1b8e4:	01c13c23          	sd	t3,24(sp)
   1b8e8:	00613823          	sd	t1,16(sp)
   1b8ec:	ae5ff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1b8f0:	e2051ae3          	bnez	a0,1b724 <_vfiprintf_r+0x23c>
   1b8f4:	08013783          	ld	a5,128(sp)
   1b8f8:	01813e03          	ld	t3,24(sp)
   1b8fc:	01013303          	ld	t1,16(sp)
   1b900:	00048713          	mv	a4,s1
   1b904:	00437313          	and	t1,t1,4
   1b908:	00030663          	beqz	t1,1b914 <_vfiprintf_r+0x42c>
   1b90c:	41be0b3b          	subw	s6,t3,s11
   1b910:	0d6040e3          	bgtz	s6,1c1d0 <_vfiprintf_r+0xce8>
   1b914:	000e0713          	mv	a4,t3
   1b918:	01be5463          	bge	t3,s11,1b920 <_vfiprintf_r+0x438>
   1b91c:	000d8713          	mv	a4,s11
   1b920:	01570abb          	addw	s5,a4,s5
   1b924:	6a079463          	bnez	a5,1bfcc <_vfiprintf_r+0xae4>
   1b928:	06012c23          	sw	zero,120(sp)
   1b92c:	00048713          	mv	a4,s1
   1b930:	ca1ff06f          	j	1b5d0 <_vfiprintf_r+0xe8>
   1b934:	010b6313          	or	t1,s6,16
   1b938:	000cc783          	lbu	a5,0(s9)
   1b93c:	00030b1b          	sext.w	s6,t1
   1b940:	d35ff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1b944:	419b0bbb          	subw	s7,s6,s9
   1b948:	ca0b98e3          	bnez	s7,1b5f8 <_vfiprintf_r+0x110>
   1b94c:	000b4783          	lbu	a5,0(s6)
   1b950:	cf9ff06f          	j	1b648 <_vfiprintf_r+0x160>
   1b954:	ae1f70ef          	jal	13434 <__sinit>
   1b958:	be5ff06f          	j	1b53c <_vfiprintf_r+0x54>
   1b95c:	000c3b83          	ld	s7,0(s8)
   1b960:	060103a3          	sb	zero,103(sp)
   1b964:	000b0313          	mv	t1,s6
   1b968:	000d0e13          	mv	t3,s10
   1b96c:	008c0c13          	add	s8,s8,8
   1b970:	4e0b88e3          	beqz	s7,1c660 <_vfiprintf_r+0x1178>
   1b974:	fff00793          	li	a5,-1
   1b978:	40fd8ce3          	beq	s11,a5,1c590 <_vfiprintf_r+0x10a8>
   1b97c:	000d8613          	mv	a2,s11
   1b980:	00000593          	li	a1,0
   1b984:	000b8513          	mv	a0,s7
   1b988:	04e13023          	sd	a4,64(sp)
   1b98c:	03a13023          	sd	s10,32(sp)
   1b990:	01613c23          	sd	s6,24(sp)
   1b994:	01b13823          	sd	s11,16(sp)
   1b998:	981fb0ef          	jal	17318 <memchr>
   1b99c:	01013803          	ld	a6,16(sp)
   1b9a0:	01813303          	ld	t1,24(sp)
   1b9a4:	02013e03          	ld	t3,32(sp)
   1b9a8:	04013703          	ld	a4,64(sp)
   1b9ac:	58050ae3          	beqz	a0,1c740 <_vfiprintf_r+0x1258>
   1b9b0:	41750d3b          	subw	s10,a0,s7
   1b9b4:	fffd4d93          	not	s11,s10
   1b9b8:	43fddd93          	sra	s11,s11,0x3f
   1b9bc:	01adfdb3          	and	s11,s11,s10
   1b9c0:	00000813          	li	a6,0
   1b9c4:	0e40006f          	j	1baa8 <_vfiprintf_r+0x5c0>
   1b9c8:	000c2783          	lw	a5,0(s8)
   1b9cc:	000d0e13          	mv	t3,s10
   1b9d0:	000b0313          	mv	t1,s6
   1b9d4:	060103a3          	sb	zero,103(sp)
   1b9d8:	008c0c13          	add	s8,s8,8
   1b9dc:	08f10423          	sb	a5,136(sp)
   1b9e0:	00100d93          	li	s11,1
   1b9e4:	00100d13          	li	s10,1
   1b9e8:	08810b93          	add	s7,sp,136
   1b9ec:	de5ff06f          	j	1b7d0 <_vfiprintf_r+0x2e8>
   1b9f0:	000b0313          	mv	t1,s6
   1b9f4:	000d0e13          	mv	t3,s10
   1b9f8:	000d8813          	mv	a6,s11
   1b9fc:	02037793          	and	a5,t1,32
   1ba00:	008c0693          	add	a3,s8,8
   1ba04:	04079863          	bnez	a5,1ba54 <_vfiprintf_r+0x56c>
   1ba08:	01037793          	and	a5,t1,16
   1ba0c:	04079463          	bnez	a5,1ba54 <_vfiprintf_r+0x56c>
   1ba10:	04037613          	and	a2,t1,64
   1ba14:	000c2783          	lw	a5,0(s8)
   1ba18:	4a0602e3          	beqz	a2,1c6bc <_vfiprintf_r+0x11d4>
   1ba1c:	01079d9b          	sllw	s11,a5,0x10
   1ba20:	410ddd9b          	sraw	s11,s11,0x10
   1ba24:	000d8613          	mv	a2,s11
   1ba28:	02064c63          	bltz	a2,1ba60 <_vfiprintf_r+0x578>
   1ba2c:	fff00613          	li	a2,-1
   1ba30:	04c80663          	beq	a6,a2,1ba7c <_vfiprintf_r+0x594>
   1ba34:	f7f37313          	and	t1,t1,-129
   1ba38:	0003031b          	sext.w	t1,t1
   1ba3c:	040d9063          	bnez	s11,1ba7c <_vfiprintf_r+0x594>
   1ba40:	50081ee3          	bnez	a6,1c75c <_vfiprintf_r+0x1274>
   1ba44:	00000d13          	li	s10,0
   1ba48:	00068c13          	mv	s8,a3
   1ba4c:	0ec10b93          	add	s7,sp,236
   1ba50:	0580006f          	j	1baa8 <_vfiprintf_r+0x5c0>
   1ba54:	000c3603          	ld	a2,0(s8)
   1ba58:	00060d93          	mv	s11,a2
   1ba5c:	fc0658e3          	bgez	a2,1ba2c <_vfiprintf_r+0x544>
   1ba60:	02d00613          	li	a2,45
   1ba64:	06c103a3          	sb	a2,103(sp)
   1ba68:	fff00613          	li	a2,-1
   1ba6c:	41b00db3          	neg	s11,s11
   1ba70:	00c80663          	beq	a6,a2,1ba7c <_vfiprintf_r+0x594>
   1ba74:	f7f37313          	and	t1,t1,-129
   1ba78:	0003031b          	sext.w	t1,t1
   1ba7c:	00900613          	li	a2,9
   1ba80:	11b666e3          	bltu	a2,s11,1c38c <_vfiprintf_r+0xea4>
   1ba84:	030d879b          	addw	a5,s11,48
   1ba88:	0ff7f793          	zext.b	a5,a5
   1ba8c:	00068c13          	mv	s8,a3
   1ba90:	0ef105a3          	sb	a5,235(sp)
   1ba94:	00080d9b          	sext.w	s11,a6
   1ba98:	01004463          	bgtz	a6,1baa0 <_vfiprintf_r+0x5b8>
   1ba9c:	00100d93          	li	s11,1
   1baa0:	00100d13          	li	s10,1
   1baa4:	0eb10b93          	add	s7,sp,235
   1baa8:	06714783          	lbu	a5,103(sp)
   1baac:	d20784e3          	beqz	a5,1b7d4 <_vfiprintf_r+0x2ec>
   1bab0:	001d8d9b          	addw	s11,s11,1
   1bab4:	d21ff06f          	j	1b7d4 <_vfiprintf_r+0x2ec>
   1bab8:	000c2d03          	lw	s10,0(s8)
   1babc:	008c0c13          	add	s8,s8,8
   1bac0:	220d5663          	bgez	s10,1bcec <_vfiprintf_r+0x804>
   1bac4:	41a00d3b          	negw	s10,s10
   1bac8:	004b6313          	or	t1,s6,4
   1bacc:	000cc783          	lbu	a5,0(s9)
   1bad0:	00030b1b          	sext.w	s6,t1
   1bad4:	ba1ff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1bad8:	02b00693          	li	a3,43
   1badc:	000cc783          	lbu	a5,0(s9)
   1bae0:	06d103a3          	sb	a3,103(sp)
   1bae4:	b91ff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1bae8:	010b6793          	or	a5,s6,16
   1baec:	000d0e13          	mv	t3,s10
   1baf0:	000d8813          	mv	a6,s11
   1baf4:	0007879b          	sext.w	a5,a5
   1baf8:	0207f693          	and	a3,a5,32
   1bafc:	008c0593          	add	a1,s8,8
   1bb00:	00069663          	bnez	a3,1bb0c <_vfiprintf_r+0x624>
   1bb04:	0107f693          	and	a3,a5,16
   1bb08:	160682e3          	beqz	a3,1c46c <_vfiprintf_r+0xf84>
   1bb0c:	000c3683          	ld	a3,0(s8)
   1bb10:	bff7f313          	and	t1,a5,-1025
   1bb14:	060103a3          	sb	zero,103(sp)
   1bb18:	fff00613          	li	a2,-1
   1bb1c:	0003031b          	sext.w	t1,t1
   1bb20:	00058c13          	mv	s8,a1
   1bb24:	0ac80463          	beq	a6,a2,1bbcc <_vfiprintf_r+0x6e4>
   1bb28:	b7f7f793          	and	a5,a5,-1153
   1bb2c:	0007879b          	sext.w	a5,a5
   1bb30:	2e069ce3          	bnez	a3,1c628 <_vfiprintf_r+0x1140>
   1bb34:	00030d13          	mv	s10,t1
   1bb38:	00078313          	mv	t1,a5
   1bb3c:	06081e63          	bnez	a6,1bbb8 <_vfiprintf_r+0x6d0>
   1bb40:	02069ee3          	bnez	a3,1c37c <_vfiprintf_r+0xe94>
   1bb44:	001d7d13          	and	s10,s10,1
   1bb48:	100d04e3          	beqz	s10,1c450 <_vfiprintf_r+0xf68>
   1bb4c:	03000793          	li	a5,48
   1bb50:	0ef105a3          	sb	a5,235(sp)
   1bb54:	000d0d93          	mv	s11,s10
   1bb58:	0eb10b93          	add	s7,sp,235
   1bb5c:	f4dff06f          	j	1baa8 <_vfiprintf_r+0x5c0>
   1bb60:	ffff87b7          	lui	a5,0xffff8
   1bb64:	8307c793          	xor	a5,a5,-2000
   1bb68:	06f11423          	sh	a5,104(sp)
   1bb6c:	000227b7          	lui	a5,0x22
   1bb70:	002b6313          	or	t1,s6,2
   1bb74:	d4078793          	add	a5,a5,-704 # 21d40 <__clzdi2+0xb4>
   1bb78:	000c3683          	ld	a3,0(s8)
   1bb7c:	000d0e13          	mv	t3,s10
   1bb80:	000d8813          	mv	a6,s11
   1bb84:	0003031b          	sext.w	t1,t1
   1bb88:	008c0c13          	add	s8,s8,8
   1bb8c:	00f13423          	sd	a5,8(sp)
   1bb90:	060103a3          	sb	zero,103(sp)
   1bb94:	fff00793          	li	a5,-1
   1bb98:	4ef80463          	beq	a6,a5,1c080 <_vfiprintf_r+0xb98>
   1bb9c:	f7f37793          	and	a5,t1,-129
   1bba0:	0007879b          	sext.w	a5,a5
   1bba4:	4c069863          	bnez	a3,1c074 <_vfiprintf_r+0xb8c>
   1bba8:	00030d13          	mv	s10,t1
   1bbac:	00200693          	li	a3,2
   1bbb0:	00078313          	mv	t1,a5
   1bbb4:	f80806e3          	beqz	a6,1bb40 <_vfiprintf_r+0x658>
   1bbb8:	00100793          	li	a5,1
   1bbbc:	3af682e3          	beq	a3,a5,1c760 <_vfiprintf_r+0x1278>
   1bbc0:	00200793          	li	a5,2
   1bbc4:	2af68ce3          	beq	a3,a5,1c67c <_vfiprintf_r+0x1194>
   1bbc8:	00000693          	li	a3,0
   1bbcc:	0ec10593          	add	a1,sp,236
   1bbd0:	00058b93          	mv	s7,a1
   1bbd4:	0076f793          	and	a5,a3,7
   1bbd8:	03078793          	add	a5,a5,48
   1bbdc:	fefb8fa3          	sb	a5,-1(s7)
   1bbe0:	0036d693          	srl	a3,a3,0x3
   1bbe4:	000b8613          	mv	a2,s7
   1bbe8:	fffb8b93          	add	s7,s7,-1
   1bbec:	fe0694e3          	bnez	a3,1bbd4 <_vfiprintf_r+0x6ec>
   1bbf0:	00137693          	and	a3,t1,1
   1bbf4:	4a068a63          	beqz	a3,1c0a8 <_vfiprintf_r+0xbc0>
   1bbf8:	03000693          	li	a3,48
   1bbfc:	4ad78663          	beq	a5,a3,1c0a8 <_vfiprintf_r+0xbc0>
   1bc00:	ffe60613          	add	a2,a2,-2
   1bc04:	40c58d3b          	subw	s10,a1,a2
   1bc08:	fedb8fa3          	sb	a3,-1(s7)
   1bc0c:	000d0d9b          	sext.w	s11,s10
   1bc10:	0b0d4ce3          	blt	s10,a6,1c4c8 <_vfiprintf_r+0xfe0>
   1bc14:	00060b93          	mv	s7,a2
   1bc18:	e91ff06f          	j	1baa8 <_vfiprintf_r+0x5c0>
   1bc1c:	010b6313          	or	t1,s6,16
   1bc20:	000d0e13          	mv	t3,s10
   1bc24:	000d8813          	mv	a6,s11
   1bc28:	0003031b          	sext.w	t1,t1
   1bc2c:	dd1ff06f          	j	1b9fc <_vfiprintf_r+0x514>
   1bc30:	000cc783          	lbu	a5,0(s9)
   1bc34:	06800693          	li	a3,104
   1bc38:	20d78ae3          	beq	a5,a3,1c64c <_vfiprintf_r+0x1164>
   1bc3c:	040b6313          	or	t1,s6,64
   1bc40:	00030b1b          	sext.w	s6,t1
   1bc44:	a31ff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1bc48:	020b6313          	or	t1,s6,32
   1bc4c:	000cc783          	lbu	a5,0(s9)
   1bc50:	00030b1b          	sext.w	s6,t1
   1bc54:	a21ff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1bc58:	020b7793          	and	a5,s6,32
   1bc5c:	000c3683          	ld	a3,0(s8)
   1bc60:	02079463          	bnez	a5,1bc88 <_vfiprintf_r+0x7a0>
   1bc64:	010b7793          	and	a5,s6,16
   1bc68:	02079063          	bnez	a5,1bc88 <_vfiprintf_r+0x7a0>
   1bc6c:	040b7793          	and	a5,s6,64
   1bc70:	280796e3          	bnez	a5,1c6fc <_vfiprintf_r+0x1214>
   1bc74:	200b7313          	and	t1,s6,512
   1bc78:	30030ce3          	beqz	t1,1c790 <_vfiprintf_r+0x12a8>
   1bc7c:	01568023          	sb	s5,0(a3)
   1bc80:	008c0c13          	add	s8,s8,8
   1bc84:	94dff06f          	j	1b5d0 <_vfiprintf_r+0xe8>
   1bc88:	0156b023          	sd	s5,0(a3)
   1bc8c:	008c0c13          	add	s8,s8,8
   1bc90:	941ff06f          	j	1b5d0 <_vfiprintf_r+0xe8>
   1bc94:	000cc783          	lbu	a5,0(s9)
   1bc98:	06c00693          	li	a3,108
   1bc9c:	18d78ee3          	beq	a5,a3,1c638 <_vfiprintf_r+0x1150>
   1bca0:	010b6313          	or	t1,s6,16
   1bca4:	00030b1b          	sext.w	s6,t1
   1bca8:	9cdff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1bcac:	00098513          	mv	a0,s3
   1bcb0:	00e13823          	sd	a4,16(sp)
   1bcb4:	aa1fa0ef          	jal	16754 <_localeconv_r>
   1bcb8:	00853783          	ld	a5,8(a0)
   1bcbc:	00078513          	mv	a0,a5
   1bcc0:	02f13c23          	sd	a5,56(sp)
   1bcc4:	fd9fc0ef          	jal	18c9c <strlen>
   1bcc8:	00050793          	mv	a5,a0
   1bccc:	00098513          	mv	a0,s3
   1bcd0:	02f13423          	sd	a5,40(sp)
   1bcd4:	a81fa0ef          	jal	16754 <_localeconv_r>
   1bcd8:	01053683          	ld	a3,16(a0)
   1bcdc:	02813783          	ld	a5,40(sp)
   1bce0:	01013703          	ld	a4,16(sp)
   1bce4:	02d13823          	sd	a3,48(sp)
   1bce8:	7a079a63          	bnez	a5,1c49c <_vfiprintf_r+0xfb4>
   1bcec:	000cc783          	lbu	a5,0(s9)
   1bcf0:	985ff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1bcf4:	001b6313          	or	t1,s6,1
   1bcf8:	000cc783          	lbu	a5,0(s9)
   1bcfc:	00030b1b          	sext.w	s6,t1
   1bd00:	975ff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1bd04:	06714683          	lbu	a3,103(sp)
   1bd08:	000cc783          	lbu	a5,0(s9)
   1bd0c:	960694e3          	bnez	a3,1b674 <_vfiprintf_r+0x18c>
   1bd10:	02000693          	li	a3,32
   1bd14:	06d103a3          	sb	a3,103(sp)
   1bd18:	95dff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1bd1c:	080b6313          	or	t1,s6,128
   1bd20:	000cc783          	lbu	a5,0(s9)
   1bd24:	00030b1b          	sext.w	s6,t1
   1bd28:	94dff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1bd2c:	000cc783          	lbu	a5,0(s9)
   1bd30:	02a00593          	li	a1,42
   1bd34:	001c8693          	add	a3,s9,1
   1bd38:	26b782e3          	beq	a5,a1,1c79c <_vfiprintf_r+0x12b4>
   1bd3c:	fd07861b          	addw	a2,a5,-48
   1bd40:	00900513          	li	a0,9
   1bd44:	00068c93          	mv	s9,a3
   1bd48:	00000d93          	li	s11,0
   1bd4c:	00900593          	li	a1,9
   1bd50:	92c566e3          	bltu	a0,a2,1b67c <_vfiprintf_r+0x194>
   1bd54:	000cc783          	lbu	a5,0(s9)
   1bd58:	002d969b          	sllw	a3,s11,0x2
   1bd5c:	01b6883b          	addw	a6,a3,s11
   1bd60:	0018181b          	sllw	a6,a6,0x1
   1bd64:	00c80dbb          	addw	s11,a6,a2
   1bd68:	fd07861b          	addw	a2,a5,-48
   1bd6c:	001c8c93          	add	s9,s9,1
   1bd70:	fec5f2e3          	bgeu	a1,a2,1bd54 <_vfiprintf_r+0x86c>
   1bd74:	909ff06f          	j	1b67c <_vfiprintf_r+0x194>
   1bd78:	000d0e13          	mv	t3,s10
   1bd7c:	010b6d13          	or	s10,s6,16
   1bd80:	000d8813          	mv	a6,s11
   1bd84:	000d0d1b          	sext.w	s10,s10
   1bd88:	020d7793          	and	a5,s10,32
   1bd8c:	008c0693          	add	a3,s8,8
   1bd90:	00079663          	bnez	a5,1bd9c <_vfiprintf_r+0x8b4>
   1bd94:	010d7793          	and	a5,s10,16
   1bd98:	6e078663          	beqz	a5,1c484 <_vfiprintf_r+0xf9c>
   1bd9c:	000c3d83          	ld	s11,0(s8)
   1bda0:	060103a3          	sb	zero,103(sp)
   1bda4:	fff00613          	li	a2,-1
   1bda8:	000d0313          	mv	t1,s10
   1bdac:	ccc808e3          	beq	a6,a2,1ba7c <_vfiprintf_r+0x594>
   1bdb0:	f7fd7313          	and	t1,s10,-129
   1bdb4:	0003031b          	sext.w	t1,t1
   1bdb8:	cc0d92e3          	bnez	s11,1ba7c <_vfiprintf_r+0x594>
   1bdbc:	00068c13          	mv	s8,a3
   1bdc0:	00100693          	li	a3,1
   1bdc4:	d79ff06f          	j	1bb3c <_vfiprintf_r+0x654>
   1bdc8:	00100713          	li	a4,1
   1bdcc:	06e12c23          	sw	a4,120(sp)
   1bdd0:	000d0793          	mv	a5,s10
   1bdd4:	0f713823          	sd	s7,240(sp)
   1bdd8:	0fa13c23          	sd	s10,248(sp)
   1bddc:	09a13023          	sd	s10,128(sp)
   1bde0:	00048713          	mv	a4,s1
   1bde4:	01070713          	add	a4,a4,16
   1bde8:	b1dff06f          	j	1b904 <_vfiprintf_r+0x41c>
   1bdec:	41be0b3b          	subw	s6,t3,s11
   1bdf0:	ad6050e3          	blez	s6,1b8b0 <_vfiprintf_r+0x3c8>
   1bdf4:	01000613          	li	a2,16
   1bdf8:	196654e3          	bge	a2,s6,1c780 <_vfiprintf_r+0x1298>
   1bdfc:	00022eb7          	lui	t4,0x22
   1be00:	7e0e8e93          	add	t4,t4,2016 # 227e0 <zeroes.0>
   1be04:	01713823          	sd	s7,16(sp)
   1be08:	01000f13          	li	t5,16
   1be0c:	00700f93          	li	t6,7
   1be10:	00613c23          	sd	t1,24(sp)
   1be14:	03c13023          	sd	t3,32(sp)
   1be18:	05013023          	sd	a6,64(sp)
   1be1c:	000e8b93          	mv	s7,t4
   1be20:	0180006f          	j	1be38 <_vfiprintf_r+0x950>
   1be24:	0026861b          	addw	a2,a3,2
   1be28:	01070713          	add	a4,a4,16
   1be2c:	00058693          	mv	a3,a1
   1be30:	ff0b0b1b          	addw	s6,s6,-16
   1be34:	056f5c63          	bge	t5,s6,1be8c <_vfiprintf_r+0x9a4>
   1be38:	0016859b          	addw	a1,a3,1
   1be3c:	01078793          	add	a5,a5,16
   1be40:	01773023          	sd	s7,0(a4)
   1be44:	01e73423          	sd	t5,8(a4)
   1be48:	08f13023          	sd	a5,128(sp)
   1be4c:	06b12c23          	sw	a1,120(sp)
   1be50:	fcbfdae3          	bge	t6,a1,1be24 <_vfiprintf_r+0x93c>
   1be54:	18078863          	beqz	a5,1bfe4 <_vfiprintf_r+0xafc>
   1be58:	07010613          	add	a2,sp,112
   1be5c:	00090593          	mv	a1,s2
   1be60:	00098513          	mv	a0,s3
   1be64:	d6cff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1be68:	8a051ee3          	bnez	a0,1b724 <_vfiprintf_r+0x23c>
   1be6c:	07812683          	lw	a3,120(sp)
   1be70:	01000f13          	li	t5,16
   1be74:	ff0b0b1b          	addw	s6,s6,-16
   1be78:	08013783          	ld	a5,128(sp)
   1be7c:	00048713          	mv	a4,s1
   1be80:	0016861b          	addw	a2,a3,1
   1be84:	00700f93          	li	t6,7
   1be88:	fb6f48e3          	blt	t5,s6,1be38 <_vfiprintf_r+0x950>
   1be8c:	000b8e93          	mv	t4,s7
   1be90:	01813303          	ld	t1,24(sp)
   1be94:	02013e03          	ld	t3,32(sp)
   1be98:	04013803          	ld	a6,64(sp)
   1be9c:	01013b83          	ld	s7,16(sp)
   1bea0:	016787b3          	add	a5,a5,s6
   1bea4:	01d73023          	sd	t4,0(a4)
   1bea8:	01673423          	sd	s6,8(a4)
   1beac:	08f13023          	sd	a5,128(sp)
   1beb0:	06c12c23          	sw	a2,120(sp)
   1beb4:	00700693          	li	a3,7
   1beb8:	5ac6d263          	bge	a3,a2,1c45c <_vfiprintf_r+0xf74>
   1bebc:	00078ce3          	beqz	a5,1c6d4 <_vfiprintf_r+0x11ec>
   1bec0:	07010613          	add	a2,sp,112
   1bec4:	00090593          	mv	a1,s2
   1bec8:	00098513          	mv	a0,s3
   1becc:	03013023          	sd	a6,32(sp)
   1bed0:	01c13c23          	sd	t3,24(sp)
   1bed4:	00613823          	sd	t1,16(sp)
   1bed8:	cf8ff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1bedc:	840514e3          	bnez	a0,1b724 <_vfiprintf_r+0x23c>
   1bee0:	02013803          	ld	a6,32(sp)
   1bee4:	07812683          	lw	a3,120(sp)
   1bee8:	08013783          	ld	a5,128(sp)
   1beec:	41a80b3b          	subw	s6,a6,s10
   1bef0:	01813e03          	ld	t3,24(sp)
   1bef4:	01013303          	ld	t1,16(sp)
   1bef8:	00048713          	mv	a4,s1
   1befc:	0016851b          	addw	a0,a3,1
   1bf00:	9b605ce3          	blez	s6,1b8b8 <_vfiprintf_r+0x3d0>
   1bf04:	00022eb7          	lui	t4,0x22
   1bf08:	7e0e8e93          	add	t4,t4,2016 # 227e0 <zeroes.0>
   1bf0c:	09645463          	bge	s0,s6,1bf94 <_vfiprintf_r+0xaac>
   1bf10:	00700813          	li	a6,7
   1bf14:	00613823          	sd	t1,16(sp)
   1bf18:	01c13c23          	sd	t3,24(sp)
   1bf1c:	03413023          	sd	s4,32(sp)
   1bf20:	0180006f          	j	1bf38 <_vfiprintf_r+0xa50>
   1bf24:	0026851b          	addw	a0,a3,2
   1bf28:	01070713          	add	a4,a4,16
   1bf2c:	00058693          	mv	a3,a1
   1bf30:	ff0b0b1b          	addw	s6,s6,-16
   1bf34:	05645a63          	bge	s0,s6,1bf88 <_vfiprintf_r+0xaa0>
   1bf38:	0016859b          	addw	a1,a3,1
   1bf3c:	01078793          	add	a5,a5,16
   1bf40:	01473023          	sd	s4,0(a4)
   1bf44:	00873423          	sd	s0,8(a4)
   1bf48:	08f13023          	sd	a5,128(sp)
   1bf4c:	06b12c23          	sw	a1,120(sp)
   1bf50:	fcb85ae3          	bge	a6,a1,1bf24 <_vfiprintf_r+0xa3c>
   1bf54:	06078463          	beqz	a5,1bfbc <_vfiprintf_r+0xad4>
   1bf58:	07010613          	add	a2,sp,112
   1bf5c:	00090593          	mv	a1,s2
   1bf60:	00098513          	mv	a0,s3
   1bf64:	c6cff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1bf68:	fa051e63          	bnez	a0,1b724 <_vfiprintf_r+0x23c>
   1bf6c:	07812683          	lw	a3,120(sp)
   1bf70:	ff0b0b1b          	addw	s6,s6,-16
   1bf74:	08013783          	ld	a5,128(sp)
   1bf78:	00048713          	mv	a4,s1
   1bf7c:	0016851b          	addw	a0,a3,1
   1bf80:	00700813          	li	a6,7
   1bf84:	fb644ae3          	blt	s0,s6,1bf38 <_vfiprintf_r+0xa50>
   1bf88:	01013303          	ld	t1,16(sp)
   1bf8c:	01813e03          	ld	t3,24(sp)
   1bf90:	02013e83          	ld	t4,32(sp)
   1bf94:	016787b3          	add	a5,a5,s6
   1bf98:	01d73023          	sd	t4,0(a4)
   1bf9c:	01673423          	sd	s6,8(a4)
   1bfa0:	08f13023          	sd	a5,128(sp)
   1bfa4:	06a12c23          	sw	a0,120(sp)
   1bfa8:	00700693          	li	a3,7
   1bfac:	32a6c263          	blt	a3,a0,1c2d0 <_vfiprintf_r+0xde8>
   1bfb0:	01070713          	add	a4,a4,16
   1bfb4:	0015051b          	addw	a0,a0,1
   1bfb8:	901ff06f          	j	1b8b8 <_vfiprintf_r+0x3d0>
   1bfbc:	00100513          	li	a0,1
   1bfc0:	00000693          	li	a3,0
   1bfc4:	00048713          	mv	a4,s1
   1bfc8:	f69ff06f          	j	1bf30 <_vfiprintf_r+0xa48>
   1bfcc:	07010613          	add	a2,sp,112
   1bfd0:	00090593          	mv	a1,s2
   1bfd4:	00098513          	mv	a0,s3
   1bfd8:	bf8ff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1bfdc:	940506e3          	beqz	a0,1b928 <_vfiprintf_r+0x440>
   1bfe0:	f44ff06f          	j	1b724 <_vfiprintf_r+0x23c>
   1bfe4:	00100613          	li	a2,1
   1bfe8:	00000693          	li	a3,0
   1bfec:	00048713          	mv	a4,s1
   1bff0:	e41ff06f          	j	1be30 <_vfiprintf_r+0x948>
   1bff4:	04078a63          	beqz	a5,1c048 <_vfiprintf_r+0xb60>
   1bff8:	07010613          	add	a2,sp,112
   1bffc:	00090593          	mv	a1,s2
   1c000:	00098513          	mv	a0,s3
   1c004:	05013423          	sd	a6,72(sp)
   1c008:	05c13023          	sd	t3,64(sp)
   1c00c:	02613023          	sd	t1,32(sp)
   1c010:	00513c23          	sd	t0,24(sp)
   1c014:	01f13823          	sd	t6,16(sp)
   1c018:	bb8ff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1c01c:	f0051463          	bnez	a0,1b724 <_vfiprintf_r+0x23c>
   1c020:	07812683          	lw	a3,120(sp)
   1c024:	08013783          	ld	a5,128(sp)
   1c028:	04813803          	ld	a6,72(sp)
   1c02c:	04013e03          	ld	t3,64(sp)
   1c030:	02013303          	ld	t1,32(sp)
   1c034:	01813283          	ld	t0,24(sp)
   1c038:	01013f83          	ld	t6,16(sp)
   1c03c:	00048713          	mv	a4,s1
   1c040:	0016851b          	addw	a0,a3,1
   1c044:	ff4ff06f          	j	1b838 <_vfiprintf_r+0x350>
   1c048:	460f8863          	beqz	t6,1c4b8 <_vfiprintf_r+0xfd0>
   1c04c:	06810793          	add	a5,sp,104
   1c050:	0ef13823          	sd	a5,240(sp)
   1c054:	00200793          	li	a5,2
   1c058:	0ef13c23          	sd	a5,248(sp)
   1c05c:	00100513          	li	a0,1
   1c060:	00048713          	mv	a4,s1
   1c064:	00050693          	mv	a3,a0
   1c068:	01070713          	add	a4,a4,16
   1c06c:	0015051b          	addw	a0,a0,1
   1c070:	839ff06f          	j	1b8a8 <_vfiprintf_r+0x3c0>
   1c074:	00078313          	mv	t1,a5
   1c078:	00200793          	li	a5,2
   1c07c:	b40788e3          	beqz	a5,1bbcc <_vfiprintf_r+0x6e4>
   1c080:	00813603          	ld	a2,8(sp)
   1c084:	0ec10593          	add	a1,sp,236
   1c088:	00058b93          	mv	s7,a1
   1c08c:	00f6f793          	and	a5,a3,15
   1c090:	00f607b3          	add	a5,a2,a5
   1c094:	0007c783          	lbu	a5,0(a5)
   1c098:	0046d693          	srl	a3,a3,0x4
   1c09c:	fffb8b93          	add	s7,s7,-1
   1c0a0:	00fb8023          	sb	a5,0(s7)
   1c0a4:	fe0694e3          	bnez	a3,1c08c <_vfiprintf_r+0xba4>
   1c0a8:	41758d3b          	subw	s10,a1,s7
   1c0ac:	000d0d9b          	sext.w	s11,s10
   1c0b0:	9f0d5ce3          	bge	s10,a6,1baa8 <_vfiprintf_r+0x5c0>
   1c0b4:	00080d9b          	sext.w	s11,a6
   1c0b8:	9f1ff06f          	j	1baa8 <_vfiprintf_r+0x5c0>
   1c0bc:	01000593          	li	a1,16
   1c0c0:	6965d863          	bge	a1,s6,1c750 <_vfiprintf_r+0x1268>
   1c0c4:	00022eb7          	lui	t4,0x22
   1c0c8:	7f0e8e93          	add	t4,t4,2032 # 227f0 <blanks.1>
   1c0cc:	03713023          	sd	s7,32(sp)
   1c0d0:	01000f13          	li	t5,16
   1c0d4:	00700393          	li	t2,7
   1c0d8:	01f13823          	sd	t6,16(sp)
   1c0dc:	00513c23          	sd	t0,24(sp)
   1c0e0:	04613023          	sd	t1,64(sp)
   1c0e4:	05c13423          	sd	t3,72(sp)
   1c0e8:	05013823          	sd	a6,80(sp)
   1c0ec:	000e8b93          	mv	s7,t4
   1c0f0:	01c0006f          	j	1c10c <_vfiprintf_r+0xc24>
   1c0f4:	0026861b          	addw	a2,a3,2
   1c0f8:	01070713          	add	a4,a4,16
   1c0fc:	00058693          	mv	a3,a1
   1c100:	ff0b0b1b          	addw	s6,s6,-16
   1c104:	056f5e63          	bge	t5,s6,1c160 <_vfiprintf_r+0xc78>
   1c108:	0016861b          	addw	a2,a3,1
   1c10c:	01078793          	add	a5,a5,16
   1c110:	01773023          	sd	s7,0(a4)
   1c114:	01e73423          	sd	t5,8(a4)
   1c118:	08f13023          	sd	a5,128(sp)
   1c11c:	0006059b          	sext.w	a1,a2
   1c120:	06c12c23          	sw	a2,120(sp)
   1c124:	fcb3d8e3          	bge	t2,a1,1c0f4 <_vfiprintf_r+0xc0c>
   1c128:	08078063          	beqz	a5,1c1a8 <_vfiprintf_r+0xcc0>
   1c12c:	07010613          	add	a2,sp,112
   1c130:	00090593          	mv	a1,s2
   1c134:	00098513          	mv	a0,s3
   1c138:	a98ff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1c13c:	de051463          	bnez	a0,1b724 <_vfiprintf_r+0x23c>
   1c140:	07812683          	lw	a3,120(sp)
   1c144:	01000f13          	li	t5,16
   1c148:	ff0b0b1b          	addw	s6,s6,-16
   1c14c:	08013783          	ld	a5,128(sp)
   1c150:	00048713          	mv	a4,s1
   1c154:	0016861b          	addw	a2,a3,1
   1c158:	00700393          	li	t2,7
   1c15c:	fb6f46e3          	blt	t5,s6,1c108 <_vfiprintf_r+0xc20>
   1c160:	000b8e93          	mv	t4,s7
   1c164:	01013f83          	ld	t6,16(sp)
   1c168:	01813283          	ld	t0,24(sp)
   1c16c:	04013303          	ld	t1,64(sp)
   1c170:	04813e03          	ld	t3,72(sp)
   1c174:	05013803          	ld	a6,80(sp)
   1c178:	02013b83          	ld	s7,32(sp)
   1c17c:	016787b3          	add	a5,a5,s6
   1c180:	01d73023          	sd	t4,0(a4)
   1c184:	01673423          	sd	s6,8(a4)
   1c188:	08f13023          	sd	a5,128(sp)
   1c18c:	06c12c23          	sw	a2,120(sp)
   1c190:	00700693          	li	a3,7
   1c194:	18c6ca63          	blt	a3,a2,1c328 <_vfiprintf_r+0xe40>
   1c198:	01070713          	add	a4,a4,16
   1c19c:	0016051b          	addw	a0,a2,1
   1c1a0:	00060693          	mv	a3,a2
   1c1a4:	e5cff06f          	j	1b800 <_vfiprintf_r+0x318>
   1c1a8:	00000693          	li	a3,0
   1c1ac:	00100613          	li	a2,1
   1c1b0:	00048713          	mv	a4,s1
   1c1b4:	f4dff06f          	j	1c100 <_vfiprintf_r+0xc18>
   1c1b8:	06012c23          	sw	zero,120(sp)
   1c1bc:	00437313          	and	t1,t1,4
   1c1c0:	0e030e63          	beqz	t1,1c2bc <_vfiprintf_r+0xdd4>
   1c1c4:	41be0b3b          	subw	s6,t3,s11
   1c1c8:	0f605a63          	blez	s6,1c2bc <_vfiprintf_r+0xdd4>
   1c1cc:	00048713          	mv	a4,s1
   1c1d0:	01000693          	li	a3,16
   1c1d4:	07812603          	lw	a2,120(sp)
   1c1d8:	5966d863          	bge	a3,s6,1c768 <_vfiprintf_r+0x1280>
   1c1dc:	00022eb7          	lui	t4,0x22
   1c1e0:	7f0e8e93          	add	t4,t4,2032 # 227f0 <blanks.1>
   1c1e4:	01813c23          	sd	s8,24(sp)
   1c1e8:	01000b93          	li	s7,16
   1c1ec:	00700d13          	li	s10,7
   1c1f0:	01c13823          	sd	t3,16(sp)
   1c1f4:	000e8c13          	mv	s8,t4
   1c1f8:	0180006f          	j	1c210 <_vfiprintf_r+0xd28>
   1c1fc:	0026069b          	addw	a3,a2,2
   1c200:	01070713          	add	a4,a4,16
   1c204:	00058613          	mv	a2,a1
   1c208:	ff0b0b1b          	addw	s6,s6,-16
   1c20c:	056bd863          	bge	s7,s6,1c25c <_vfiprintf_r+0xd74>
   1c210:	0016059b          	addw	a1,a2,1
   1c214:	01078793          	add	a5,a5,16
   1c218:	01873023          	sd	s8,0(a4)
   1c21c:	01773423          	sd	s7,8(a4)
   1c220:	08f13023          	sd	a5,128(sp)
   1c224:	06b12c23          	sw	a1,120(sp)
   1c228:	fcbd5ae3          	bge	s10,a1,1c1fc <_vfiprintf_r+0xd14>
   1c22c:	08078063          	beqz	a5,1c2ac <_vfiprintf_r+0xdc4>
   1c230:	07010613          	add	a2,sp,112
   1c234:	00090593          	mv	a1,s2
   1c238:	00098513          	mv	a0,s3
   1c23c:	994ff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1c240:	ce051263          	bnez	a0,1b724 <_vfiprintf_r+0x23c>
   1c244:	07812603          	lw	a2,120(sp)
   1c248:	ff0b0b1b          	addw	s6,s6,-16
   1c24c:	08013783          	ld	a5,128(sp)
   1c250:	00048713          	mv	a4,s1
   1c254:	0016069b          	addw	a3,a2,1
   1c258:	fb6bcce3          	blt	s7,s6,1c210 <_vfiprintf_r+0xd28>
   1c25c:	000c0e93          	mv	t4,s8
   1c260:	01013e03          	ld	t3,16(sp)
   1c264:	01813c03          	ld	s8,24(sp)
   1c268:	016787b3          	add	a5,a5,s6
   1c26c:	01d73023          	sd	t4,0(a4)
   1c270:	01673423          	sd	s6,8(a4)
   1c274:	08f13023          	sd	a5,128(sp)
   1c278:	06d12c23          	sw	a3,120(sp)
   1c27c:	00700713          	li	a4,7
   1c280:	e8d75a63          	bge	a4,a3,1b914 <_vfiprintf_r+0x42c>
   1c284:	02078c63          	beqz	a5,1c2bc <_vfiprintf_r+0xdd4>
   1c288:	07010613          	add	a2,sp,112
   1c28c:	00090593          	mv	a1,s2
   1c290:	00098513          	mv	a0,s3
   1c294:	01c13823          	sd	t3,16(sp)
   1c298:	938ff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1c29c:	c8051463          	bnez	a0,1b724 <_vfiprintf_r+0x23c>
   1c2a0:	08013783          	ld	a5,128(sp)
   1c2a4:	01013e03          	ld	t3,16(sp)
   1c2a8:	e6cff06f          	j	1b914 <_vfiprintf_r+0x42c>
   1c2ac:	00100693          	li	a3,1
   1c2b0:	00000613          	li	a2,0
   1c2b4:	00048713          	mv	a4,s1
   1c2b8:	f51ff06f          	j	1c208 <_vfiprintf_r+0xd20>
   1c2bc:	000e0793          	mv	a5,t3
   1c2c0:	01be5463          	bge	t3,s11,1c2c8 <_vfiprintf_r+0xde0>
   1c2c4:	000d8793          	mv	a5,s11
   1c2c8:	01578abb          	addw	s5,a5,s5
   1c2cc:	e5cff06f          	j	1b928 <_vfiprintf_r+0x440>
   1c2d0:	ae078ce3          	beqz	a5,1bdc8 <_vfiprintf_r+0x8e0>
   1c2d4:	07010613          	add	a2,sp,112
   1c2d8:	00090593          	mv	a1,s2
   1c2dc:	00098513          	mv	a0,s3
   1c2e0:	01c13c23          	sd	t3,24(sp)
   1c2e4:	00613823          	sd	t1,16(sp)
   1c2e8:	8e8ff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1c2ec:	c2051c63          	bnez	a0,1b724 <_vfiprintf_r+0x23c>
   1c2f0:	07812503          	lw	a0,120(sp)
   1c2f4:	08013783          	ld	a5,128(sp)
   1c2f8:	01813e03          	ld	t3,24(sp)
   1c2fc:	01013303          	ld	t1,16(sp)
   1c300:	00048713          	mv	a4,s1
   1c304:	0015051b          	addw	a0,a0,1
   1c308:	db0ff06f          	j	1b8b8 <_vfiprintf_r+0x3d0>
   1c30c:	06012c23          	sw	zero,120(sp)
   1c310:	00048713          	mv	a4,s1
   1c314:	b2cff06f          	j	1b640 <_vfiprintf_r+0x158>
   1c318:	00100513          	li	a0,1
   1c31c:	00000693          	li	a3,0
   1c320:	00048713          	mv	a4,s1
   1c324:	d84ff06f          	j	1b8a8 <_vfiprintf_r+0x3c0>
   1c328:	2a078063          	beqz	a5,1c5c8 <_vfiprintf_r+0x10e0>
   1c32c:	07010613          	add	a2,sp,112
   1c330:	00090593          	mv	a1,s2
   1c334:	00098513          	mv	a0,s3
   1c338:	05013423          	sd	a6,72(sp)
   1c33c:	05c13023          	sd	t3,64(sp)
   1c340:	02613023          	sd	t1,32(sp)
   1c344:	00513c23          	sd	t0,24(sp)
   1c348:	01f13823          	sd	t6,16(sp)
   1c34c:	884ff0ef          	jal	1b3d0 <__sprint_r.part.0>
   1c350:	bc051a63          	bnez	a0,1b724 <_vfiprintf_r+0x23c>
   1c354:	07812683          	lw	a3,120(sp)
   1c358:	08013783          	ld	a5,128(sp)
   1c35c:	04813803          	ld	a6,72(sp)
   1c360:	04013e03          	ld	t3,64(sp)
   1c364:	02013303          	ld	t1,32(sp)
   1c368:	01813283          	ld	t0,24(sp)
   1c36c:	01013f83          	ld	t6,16(sp)
   1c370:	00048713          	mv	a4,s1
   1c374:	0016851b          	addw	a0,a3,1
   1c378:	c88ff06f          	j	1b800 <_vfiprintf_r+0x318>
   1c37c:	00000d93          	li	s11,0
   1c380:	00000d13          	li	s10,0
   1c384:	0ec10b93          	add	s7,sp,236
   1c388:	f20ff06f          	j	1baa8 <_vfiprintf_r+0x5c0>
   1c38c:	05213c23          	sd	s2,88(sp)
   1c390:	03013903          	ld	s2,48(sp)
   1c394:	0ec10593          	add	a1,sp,236
   1c398:	05313823          	sd	s3,80(sp)
   1c39c:	40037d13          	and	s10,t1,1024
   1c3a0:	00000b13          	li	s6,0
   1c3a4:	00058b93          	mv	s7,a1
   1c3a8:	00900c13          	li	s8,9
   1c3ac:	00613823          	sd	t1,16(sp)
   1c3b0:	01c13c23          	sd	t3,24(sp)
   1c3b4:	03013023          	sd	a6,32(sp)
   1c3b8:	04e13023          	sd	a4,64(sp)
   1c3bc:	04d13423          	sd	a3,72(sp)
   1c3c0:	00058993          	mv	s3,a1
   1c3c4:	00a00593          	li	a1,10
   1c3c8:	000d8513          	mv	a0,s11
   1c3cc:	051050ef          	jal	21c1c <__umoddi3>
   1c3d0:	0305051b          	addw	a0,a0,48
   1c3d4:	fea98fa3          	sb	a0,-1(s3)
   1c3d8:	001b0b1b          	addw	s6,s6,1
   1c3dc:	fff98993          	add	s3,s3,-1
   1c3e0:	000d0663          	beqz	s10,1c3ec <_vfiprintf_r+0xf04>
   1c3e4:	00094703          	lbu	a4,0(s2)
   1c3e8:	01670e63          	beq	a4,s6,1c404 <_vfiprintf_r+0xf1c>
   1c3ec:	00a00593          	li	a1,10
   1c3f0:	000d8513          	mv	a0,s11
   1c3f4:	7e0050ef          	jal	21bd4 <__hidden___udivdi3>
   1c3f8:	01bc7c63          	bgeu	s8,s11,1c410 <_vfiprintf_r+0xf28>
   1c3fc:	00050d93          	mv	s11,a0
   1c400:	fc5ff06f          	j	1c3c4 <_vfiprintf_r+0xedc>
   1c404:	0ff00793          	li	a5,255
   1c408:	fef702e3          	beq	a4,a5,1c3ec <_vfiprintf_r+0xf04>
   1c40c:	1fbc6063          	bltu	s8,s11,1c5ec <_vfiprintf_r+0x1104>
   1c410:	02013803          	ld	a6,32(sp)
   1c414:	000b8593          	mv	a1,s7
   1c418:	00098b93          	mv	s7,s3
   1c41c:	03213823          	sd	s2,48(sp)
   1c420:	41758d3b          	subw	s10,a1,s7
   1c424:	01013303          	ld	t1,16(sp)
   1c428:	01813e03          	ld	t3,24(sp)
   1c42c:	04013703          	ld	a4,64(sp)
   1c430:	04813683          	ld	a3,72(sp)
   1c434:	05813903          	ld	s2,88(sp)
   1c438:	05013983          	ld	s3,80(sp)
   1c43c:	000d0d9b          	sext.w	s11,s10
   1c440:	010d5463          	bge	s10,a6,1c448 <_vfiprintf_r+0xf60>
   1c444:	00080d9b          	sext.w	s11,a6
   1c448:	00068c13          	mv	s8,a3
   1c44c:	e5cff06f          	j	1baa8 <_vfiprintf_r+0x5c0>
   1c450:	00000d93          	li	s11,0
   1c454:	0ec10b93          	add	s7,sp,236
   1c458:	e50ff06f          	j	1baa8 <_vfiprintf_r+0x5c0>
   1c45c:	01070713          	add	a4,a4,16
   1c460:	0016051b          	addw	a0,a2,1
   1c464:	00060693          	mv	a3,a2
   1c468:	c48ff06f          	j	1b8b0 <_vfiprintf_r+0x3c8>
   1c46c:	0407f613          	and	a2,a5,64
   1c470:	000c2683          	lw	a3,0(s8)
   1c474:	20060863          	beqz	a2,1c684 <_vfiprintf_r+0x119c>
   1c478:	03069693          	sll	a3,a3,0x30
   1c47c:	0306d693          	srl	a3,a3,0x30
   1c480:	e90ff06f          	j	1bb10 <_vfiprintf_r+0x628>
   1c484:	040d7613          	and	a2,s10,64
   1c488:	000c2783          	lw	a5,0(s8)
   1c48c:	20060c63          	beqz	a2,1c6a4 <_vfiprintf_r+0x11bc>
   1c490:	03079d93          	sll	s11,a5,0x30
   1c494:	030ddd93          	srl	s11,s11,0x30
   1c498:	909ff06f          	j	1bda0 <_vfiprintf_r+0x8b8>
   1c49c:	000cc783          	lbu	a5,0(s9)
   1c4a0:	9c068a63          	beqz	a3,1b674 <_vfiprintf_r+0x18c>
   1c4a4:	0006c683          	lbu	a3,0(a3)
   1c4a8:	9c068663          	beqz	a3,1b674 <_vfiprintf_r+0x18c>
   1c4ac:	400b6313          	or	t1,s6,1024
   1c4b0:	00030b1b          	sext.w	s6,t1
   1c4b4:	9c0ff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1c4b8:	00000693          	li	a3,0
   1c4bc:	00100513          	li	a0,1
   1c4c0:	00048713          	mv	a4,s1
   1c4c4:	be4ff06f          	j	1b8a8 <_vfiprintf_r+0x3c0>
   1c4c8:	00080d9b          	sext.w	s11,a6
   1c4cc:	00060b93          	mv	s7,a2
   1c4d0:	dd8ff06f          	j	1baa8 <_vfiprintf_r+0x5c0>
   1c4d4:	000226b7          	lui	a3,0x22
   1c4d8:	d2868693          	add	a3,a3,-728 # 21d28 <__clzdi2+0x9c>
   1c4dc:	000b0313          	mv	t1,s6
   1c4e0:	00d13423          	sd	a3,8(sp)
   1c4e4:	02037693          	and	a3,t1,32
   1c4e8:	000d0e13          	mv	t3,s10
   1c4ec:	000d8813          	mv	a6,s11
   1c4f0:	008c0613          	add	a2,s8,8
   1c4f4:	08069a63          	bnez	a3,1c588 <_vfiprintf_r+0x10a0>
   1c4f8:	01037693          	and	a3,t1,16
   1c4fc:	08069663          	bnez	a3,1c588 <_vfiprintf_r+0x10a0>
   1c500:	04037593          	and	a1,t1,64
   1c504:	000c2683          	lw	a3,0(s8)
   1c508:	18058663          	beqz	a1,1c694 <_vfiprintf_r+0x11ac>
   1c50c:	03069693          	sll	a3,a3,0x30
   1c510:	0306d693          	srl	a3,a3,0x30
   1c514:	00137593          	and	a1,t1,1
   1c518:	00058e63          	beqz	a1,1c534 <_vfiprintf_r+0x104c>
   1c51c:	00068c63          	beqz	a3,1c534 <_vfiprintf_r+0x104c>
   1c520:	00236313          	or	t1,t1,2
   1c524:	03000593          	li	a1,48
   1c528:	06b10423          	sb	a1,104(sp)
   1c52c:	06f104a3          	sb	a5,105(sp)
   1c530:	0003031b          	sext.w	t1,t1
   1c534:	bff37313          	and	t1,t1,-1025
   1c538:	0003031b          	sext.w	t1,t1
   1c53c:	00060c13          	mv	s8,a2
   1c540:	e50ff06f          	j	1bb90 <_vfiprintf_r+0x6a8>
   1c544:	000d0e13          	mv	t3,s10
   1c548:	000d8813          	mv	a6,s11
   1c54c:	000b0d13          	mv	s10,s6
   1c550:	839ff06f          	j	1bd88 <_vfiprintf_r+0x8a0>
   1c554:	000d0e13          	mv	t3,s10
   1c558:	000d8813          	mv	a6,s11
   1c55c:	000b0793          	mv	a5,s6
   1c560:	d98ff06f          	j	1baf8 <_vfiprintf_r+0x610>
   1c564:	000226b7          	lui	a3,0x22
   1c568:	d4068693          	add	a3,a3,-704 # 21d40 <__clzdi2+0xb4>
   1c56c:	000b0313          	mv	t1,s6
   1c570:	00d13423          	sd	a3,8(sp)
   1c574:	02037693          	and	a3,t1,32
   1c578:	000d0e13          	mv	t3,s10
   1c57c:	000d8813          	mv	a6,s11
   1c580:	008c0613          	add	a2,s8,8
   1c584:	f6068ae3          	beqz	a3,1c4f8 <_vfiprintf_r+0x1010>
   1c588:	000c3683          	ld	a3,0(s8)
   1c58c:	f89ff06f          	j	1c514 <_vfiprintf_r+0x102c>
   1c590:	000b8513          	mv	a0,s7
   1c594:	02e13023          	sd	a4,32(sp)
   1c598:	01a13c23          	sd	s10,24(sp)
   1c59c:	01613823          	sd	s6,16(sp)
   1c5a0:	efcfc0ef          	jal	18c9c <strlen>
   1c5a4:	00050d1b          	sext.w	s10,a0
   1c5a8:	fffd4d93          	not	s11,s10
   1c5ac:	43fddd93          	sra	s11,s11,0x3f
   1c5b0:	01013303          	ld	t1,16(sp)
   1c5b4:	01813e03          	ld	t3,24(sp)
   1c5b8:	02013703          	ld	a4,32(sp)
   1c5bc:	01adfdb3          	and	s11,s11,s10
   1c5c0:	00000813          	li	a6,0
   1c5c4:	ce4ff06f          	j	1baa8 <_vfiprintf_r+0x5c0>
   1c5c8:	06714703          	lbu	a4,103(sp)
   1c5cc:	12070063          	beqz	a4,1c6ec <_vfiprintf_r+0x1204>
   1c5d0:	06710793          	add	a5,sp,103
   1c5d4:	0ef13823          	sd	a5,240(sp)
   1c5d8:	00100793          	li	a5,1
   1c5dc:	0ef13c23          	sd	a5,248(sp)
   1c5e0:	00100513          	li	a0,1
   1c5e4:	00048713          	mv	a4,s1
   1c5e8:	a44ff06f          	j	1b82c <_vfiprintf_r+0x344>
   1c5ec:	02813783          	ld	a5,40(sp)
   1c5f0:	03813583          	ld	a1,56(sp)
   1c5f4:	00000b13          	li	s6,0
   1c5f8:	40f989b3          	sub	s3,s3,a5
   1c5fc:	00078613          	mv	a2,a5
   1c600:	00098513          	mv	a0,s3
   1c604:	f60fc0ef          	jal	18d64 <strncpy>
   1c608:	00194703          	lbu	a4,1(s2)
   1c60c:	000d8513          	mv	a0,s11
   1c610:	00a00593          	li	a1,10
   1c614:	00e03733          	snez	a4,a4
   1c618:	00e90933          	add	s2,s2,a4
   1c61c:	5b8050ef          	jal	21bd4 <__hidden___udivdi3>
   1c620:	00050d93          	mv	s11,a0
   1c624:	da1ff06f          	j	1c3c4 <_vfiprintf_r+0xedc>
   1c628:	00078313          	mv	t1,a5
   1c62c:	00000793          	li	a5,0
   1c630:	d8078e63          	beqz	a5,1bbcc <_vfiprintf_r+0x6e4>
   1c634:	a4dff06f          	j	1c080 <_vfiprintf_r+0xb98>
   1c638:	020b6313          	or	t1,s6,32
   1c63c:	001cc783          	lbu	a5,1(s9)
   1c640:	00030b1b          	sext.w	s6,t1
   1c644:	001c8c93          	add	s9,s9,1
   1c648:	82cff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1c64c:	200b6313          	or	t1,s6,512
   1c650:	001cc783          	lbu	a5,1(s9)
   1c654:	00030b1b          	sext.w	s6,t1
   1c658:	001c8c93          	add	s9,s9,1
   1c65c:	818ff06f          	j	1b674 <_vfiprintf_r+0x18c>
   1c660:	00600793          	li	a5,6
   1c664:	000d8d1b          	sext.w	s10,s11
   1c668:	07b7ee63          	bltu	a5,s11,1c6e4 <_vfiprintf_r+0x11fc>
   1c66c:	00022bb7          	lui	s7,0x22
   1c670:	000d0d93          	mv	s11,s10
   1c674:	d58b8b93          	add	s7,s7,-680 # 21d58 <__clzdi2+0xcc>
   1c678:	958ff06f          	j	1b7d0 <_vfiprintf_r+0x2e8>
   1c67c:	00000693          	li	a3,0
   1c680:	a01ff06f          	j	1c080 <_vfiprintf_r+0xb98>
   1c684:	2007f613          	and	a2,a5,512
   1c688:	08060c63          	beqz	a2,1c720 <_vfiprintf_r+0x1238>
   1c68c:	0ff6f693          	zext.b	a3,a3
   1c690:	c80ff06f          	j	1bb10 <_vfiprintf_r+0x628>
   1c694:	20037593          	and	a1,t1,512
   1c698:	06058e63          	beqz	a1,1c714 <_vfiprintf_r+0x122c>
   1c69c:	0ff6f693          	zext.b	a3,a3
   1c6a0:	e75ff06f          	j	1c514 <_vfiprintf_r+0x102c>
   1c6a4:	200d7613          	and	a2,s10,512
   1c6a8:	0ff7fd93          	zext.b	s11,a5
   1c6ac:	ee061a63          	bnez	a2,1bda0 <_vfiprintf_r+0x8b8>
   1c6b0:	02079d93          	sll	s11,a5,0x20
   1c6b4:	020ddd93          	srl	s11,s11,0x20
   1c6b8:	ee8ff06f          	j	1bda0 <_vfiprintf_r+0x8b8>
   1c6bc:	20037613          	and	a2,t1,512
   1c6c0:	04060463          	beqz	a2,1c708 <_vfiprintf_r+0x1220>
   1c6c4:	01879d9b          	sllw	s11,a5,0x18
   1c6c8:	418ddd9b          	sraw	s11,s11,0x18
   1c6cc:	000d8613          	mv	a2,s11
   1c6d0:	b58ff06f          	j	1ba28 <_vfiprintf_r+0x540>
   1c6d4:	00100513          	li	a0,1
   1c6d8:	00000693          	li	a3,0
   1c6dc:	00048713          	mv	a4,s1
   1c6e0:	9d0ff06f          	j	1b8b0 <_vfiprintf_r+0x3c8>
   1c6e4:	00600d13          	li	s10,6
   1c6e8:	f85ff06f          	j	1c66c <_vfiprintf_r+0x1184>
   1c6ec:	00000693          	li	a3,0
   1c6f0:	00100513          	li	a0,1
   1c6f4:	00048713          	mv	a4,s1
   1c6f8:	940ff06f          	j	1b838 <_vfiprintf_r+0x350>
   1c6fc:	01569023          	sh	s5,0(a3)
   1c700:	008c0c13          	add	s8,s8,8
   1c704:	ecdfe06f          	j	1b5d0 <_vfiprintf_r+0xe8>
   1c708:	00078d93          	mv	s11,a5
   1c70c:	00078613          	mv	a2,a5
   1c710:	b18ff06f          	j	1ba28 <_vfiprintf_r+0x540>
   1c714:	02069693          	sll	a3,a3,0x20
   1c718:	0206d693          	srl	a3,a3,0x20
   1c71c:	df9ff06f          	j	1c514 <_vfiprintf_r+0x102c>
   1c720:	02069693          	sll	a3,a3,0x20
   1c724:	0206d693          	srl	a3,a3,0x20
   1c728:	be8ff06f          	j	1bb10 <_vfiprintf_r+0x628>
   1c72c:	07010613          	add	a2,sp,112
   1c730:	00090593          	mv	a1,s2
   1c734:	00098513          	mv	a0,s3
   1c738:	c99fe0ef          	jal	1b3d0 <__sprint_r.part.0>
   1c73c:	fe9fe06f          	j	1b724 <_vfiprintf_r+0x23c>
   1c740:	00080d93          	mv	s11,a6
   1c744:	00080d13          	mv	s10,a6
   1c748:	00000813          	li	a6,0
   1c74c:	b5cff06f          	j	1baa8 <_vfiprintf_r+0x5c0>
   1c750:	00022eb7          	lui	t4,0x22
   1c754:	7f0e8e93          	add	t4,t4,2032 # 227f0 <blanks.1>
   1c758:	a25ff06f          	j	1c17c <_vfiprintf_r+0xc94>
   1c75c:	00068c13          	mv	s8,a3
   1c760:	03000793          	li	a5,48
   1c764:	b2cff06f          	j	1ba90 <_vfiprintf_r+0x5a8>
   1c768:	00022eb7          	lui	t4,0x22
   1c76c:	0016069b          	addw	a3,a2,1
   1c770:	7f0e8e93          	add	t4,t4,2032 # 227f0 <blanks.1>
   1c774:	af5ff06f          	j	1c268 <_vfiprintf_r+0xd80>
   1c778:	fff00a93          	li	s5,-1
   1c77c:	fb9fe06f          	j	1b734 <_vfiprintf_r+0x24c>
   1c780:	00022eb7          	lui	t4,0x22
   1c784:	00050613          	mv	a2,a0
   1c788:	7e0e8e93          	add	t4,t4,2016 # 227e0 <zeroes.0>
   1c78c:	f14ff06f          	j	1bea0 <_vfiprintf_r+0x9b8>
   1c790:	0156a023          	sw	s5,0(a3)
   1c794:	008c0c13          	add	s8,s8,8
   1c798:	e39fe06f          	j	1b5d0 <_vfiprintf_r+0xe8>
   1c79c:	000c2783          	lw	a5,0(s8)
   1c7a0:	008c0c13          	add	s8,s8,8
   1c7a4:	00078813          	mv	a6,a5
   1c7a8:	0007d463          	bgez	a5,1c7b0 <_vfiprintf_r+0x12c8>
   1c7ac:	fff00813          	li	a6,-1
   1c7b0:	001cc783          	lbu	a5,1(s9)
   1c7b4:	00080d9b          	sext.w	s11,a6
   1c7b8:	00068c93          	mv	s9,a3
   1c7bc:	eb9fe06f          	j	1b674 <_vfiprintf_r+0x18c>

000000000001c7c0 <vfiprintf>:
   1c7c0:	00050793          	mv	a5,a0
   1c7c4:	7581b503          	ld	a0,1880(gp) # 24d70 <_impure_ptr>
   1c7c8:	00060693          	mv	a3,a2
   1c7cc:	00058613          	mv	a2,a1
   1c7d0:	00078593          	mv	a1,a5
   1c7d4:	d15fe06f          	j	1b4e8 <_vfiprintf_r>

000000000001c7d8 <__sbprintf>:
   1c7d8:	01059783          	lh	a5,16(a1)
   1c7dc:	0125d703          	lhu	a4,18(a1)
   1c7e0:	0ac5a303          	lw	t1,172(a1)
   1c7e4:	ffd7f793          	and	a5,a5,-3
   1c7e8:	0107979b          	sllw	a5,a5,0x10
   1c7ec:	0305b883          	ld	a7,48(a1)
   1c7f0:	0405b803          	ld	a6,64(a1)
   1c7f4:	0107171b          	sllw	a4,a4,0x10
   1c7f8:	0107d79b          	srlw	a5,a5,0x10
   1c7fc:	b3010113          	add	sp,sp,-1232
   1c800:	00e7e7b3          	or	a5,a5,a4
   1c804:	4c813023          	sd	s0,1216(sp)
   1c808:	40000713          	li	a4,1024
   1c80c:	00f12823          	sw	a5,16(sp)
   1c810:	00058413          	mv	s0,a1
   1c814:	0b010793          	add	a5,sp,176
   1c818:	00010593          	mv	a1,sp
   1c81c:	4a913c23          	sd	s1,1208(sp)
   1c820:	4b213823          	sd	s2,1200(sp)
   1c824:	4c113423          	sd	ra,1224(sp)
   1c828:	00050913          	mv	s2,a0
   1c82c:	0a612623          	sw	t1,172(sp)
   1c830:	03113823          	sd	a7,48(sp)
   1c834:	05013023          	sd	a6,64(sp)
   1c838:	00f13023          	sd	a5,0(sp)
   1c83c:	00f13c23          	sd	a5,24(sp)
   1c840:	00e12623          	sw	a4,12(sp)
   1c844:	02e12023          	sw	a4,32(sp)
   1c848:	02012423          	sw	zero,40(sp)
   1c84c:	c9dfe0ef          	jal	1b4e8 <_vfiprintf_r>
   1c850:	00050493          	mv	s1,a0
   1c854:	02055c63          	bgez	a0,1c88c <__sbprintf+0xb4>
   1c858:	01015783          	lhu	a5,16(sp)
   1c85c:	0407f793          	and	a5,a5,64
   1c860:	00078863          	beqz	a5,1c870 <__sbprintf+0x98>
   1c864:	01045783          	lhu	a5,16(s0)
   1c868:	0407e793          	or	a5,a5,64
   1c86c:	00f41823          	sh	a5,16(s0)
   1c870:	4c813083          	ld	ra,1224(sp)
   1c874:	4c013403          	ld	s0,1216(sp)
   1c878:	4b013903          	ld	s2,1200(sp)
   1c87c:	00048513          	mv	a0,s1
   1c880:	4b813483          	ld	s1,1208(sp)
   1c884:	4d010113          	add	sp,sp,1232
   1c888:	00008067          	ret
   1c88c:	00010593          	mv	a1,sp
   1c890:	00090513          	mv	a0,s2
   1c894:	f74f60ef          	jal	13008 <_fflush_r>
   1c898:	fc0500e3          	beqz	a0,1c858 <__sbprintf+0x80>
   1c89c:	fff00493          	li	s1,-1
   1c8a0:	fb9ff06f          	j	1c858 <__sbprintf+0x80>

000000000001c8a4 <_wctomb_r>:
   1c8a4:	e401b783          	ld	a5,-448(gp) # 24458 <__global_locale+0xe0>
   1c8a8:	00078067          	jr	a5

000000000001c8ac <__ascii_wctomb>:
   1c8ac:	0006079b          	sext.w	a5,a2
   1c8b0:	02058463          	beqz	a1,1c8d8 <__ascii_wctomb+0x2c>
   1c8b4:	0ff00713          	li	a4,255
   1c8b8:	00f76863          	bltu	a4,a5,1c8c8 <__ascii_wctomb+0x1c>
   1c8bc:	00c58023          	sb	a2,0(a1)
   1c8c0:	00100513          	li	a0,1
   1c8c4:	00008067          	ret
   1c8c8:	08a00793          	li	a5,138
   1c8cc:	00f52023          	sw	a5,0(a0)
   1c8d0:	fff00513          	li	a0,-1
   1c8d4:	00008067          	ret
   1c8d8:	00000513          	li	a0,0
   1c8dc:	00008067          	ret

000000000001c8e0 <_write_r>:
   1c8e0:	fe010113          	add	sp,sp,-32
   1c8e4:	00058713          	mv	a4,a1
   1c8e8:	00813823          	sd	s0,16(sp)
   1c8ec:	00913423          	sd	s1,8(sp)
   1c8f0:	00060593          	mv	a1,a2
   1c8f4:	00050413          	mv	s0,a0
   1c8f8:	00068613          	mv	a2,a3
   1c8fc:	00070513          	mv	a0,a4
   1c900:	00113c23          	sd	ra,24(sp)
   1c904:	7801a823          	sw	zero,1936(gp) # 24da8 <errno>
   1c908:	41c030ef          	jal	1fd24 <_write>
   1c90c:	fff00793          	li	a5,-1
   1c910:	00f50c63          	beq	a0,a5,1c928 <_write_r+0x48>
   1c914:	01813083          	ld	ra,24(sp)
   1c918:	01013403          	ld	s0,16(sp)
   1c91c:	00813483          	ld	s1,8(sp)
   1c920:	02010113          	add	sp,sp,32
   1c924:	00008067          	ret
   1c928:	7901a783          	lw	a5,1936(gp) # 24da8 <errno>
   1c92c:	fe0784e3          	beqz	a5,1c914 <_write_r+0x34>
   1c930:	01813083          	ld	ra,24(sp)
   1c934:	00f42023          	sw	a5,0(s0)
   1c938:	01013403          	ld	s0,16(sp)
   1c93c:	00813483          	ld	s1,8(sp)
   1c940:	02010113          	add	sp,sp,32
   1c944:	00008067          	ret

000000000001c948 <__assert_func>:
   1c948:	7581b703          	ld	a4,1880(gp) # 24d70 <_impure_ptr>
   1c94c:	ff010113          	add	sp,sp,-16
   1c950:	00068793          	mv	a5,a3
   1c954:	00060813          	mv	a6,a2
   1c958:	00113423          	sd	ra,8(sp)
   1c95c:	01873883          	ld	a7,24(a4)
   1c960:	00050693          	mv	a3,a0
   1c964:	00058713          	mv	a4,a1
   1c968:	00078613          	mv	a2,a5
   1c96c:	02080063          	beqz	a6,1c98c <__assert_func+0x44>
   1c970:	000237b7          	lui	a5,0x23
   1c974:	80078793          	add	a5,a5,-2048 # 22800 <blanks.1+0x10>
   1c978:	000235b7          	lui	a1,0x23
   1c97c:	81058593          	add	a1,a1,-2032 # 22810 <blanks.1+0x20>
   1c980:	00088513          	mv	a0,a7
   1c984:	3b8000ef          	jal	1cd3c <fiprintf>
   1c988:	315020ef          	jal	1f49c <abort>
   1c98c:	00022837          	lui	a6,0x22
   1c990:	d3880793          	add	a5,a6,-712 # 21d38 <__clzdi2+0xac>
   1c994:	d3880813          	add	a6,a6,-712
   1c998:	fe1ff06f          	j	1c978 <__assert_func+0x30>

000000000001c99c <__assert>:
   1c99c:	ff010113          	add	sp,sp,-16
   1c9a0:	00060693          	mv	a3,a2
   1c9a4:	00000613          	li	a2,0
   1c9a8:	00113423          	sd	ra,8(sp)
   1c9ac:	f9dff0ef          	jal	1c948 <__assert_func>

000000000001c9b0 <atexit>:
   1c9b0:	00050593          	mv	a1,a0
   1c9b4:	00000693          	li	a3,0
   1c9b8:	00000613          	li	a2,0
   1c9bc:	00000513          	li	a0,0
   1c9c0:	2f50206f          	j	1f4b4 <__register_exitproc>

000000000001c9c4 <_calloc_r>:
   1c9c4:	fd010113          	add	sp,sp,-48
   1c9c8:	02813023          	sd	s0,32(sp)
   1c9cc:	02113423          	sd	ra,40(sp)
   1c9d0:	00913c23          	sd	s1,24(sp)
   1c9d4:	01213823          	sd	s2,16(sp)
   1c9d8:	01313423          	sd	s3,8(sp)
   1c9dc:	4205d693          	sra	a3,a1,0x20
   1c9e0:	00058793          	mv	a5,a1
   1c9e4:	00050413          	mv	s0,a0
   1c9e8:	02065713          	srl	a4,a2,0x20
   1c9ec:	0c069c63          	bnez	a3,1cac4 <_calloc_r+0x100>
   1c9f0:	16071263          	bnez	a4,1cb54 <_calloc_r+0x190>
   1c9f4:	02061593          	sll	a1,a2,0x20
   1c9f8:	02079513          	sll	a0,a5,0x20
   1c9fc:	0205d593          	srl	a1,a1,0x20
   1ca00:	02055513          	srl	a0,a0,0x20
   1ca04:	164050ef          	jal	21b68 <__muldi3>
   1ca08:	00050593          	mv	a1,a0
   1ca0c:	00040513          	mv	a0,s0
   1ca10:	8bcfa0ef          	jal	16acc <_malloc_r>
   1ca14:	00050413          	mv	s0,a0
   1ca18:	10050c63          	beqz	a0,1cb30 <_calloc_r+0x16c>
   1ca1c:	ff853603          	ld	a2,-8(a0)
   1ca20:	04800713          	li	a4,72
   1ca24:	ffc67613          	and	a2,a2,-4
   1ca28:	ff860613          	add	a2,a2,-8
   1ca2c:	04c76e63          	bltu	a4,a2,1ca88 <_calloc_r+0xc4>
   1ca30:	02700693          	li	a3,39
   1ca34:	00050793          	mv	a5,a0
   1ca38:	02c6f263          	bgeu	a3,a2,1ca5c <_calloc_r+0x98>
   1ca3c:	00053023          	sd	zero,0(a0)
   1ca40:	00053423          	sd	zero,8(a0)
   1ca44:	03700793          	li	a5,55
   1ca48:	06c7f463          	bgeu	a5,a2,1cab0 <_calloc_r+0xec>
   1ca4c:	00053823          	sd	zero,16(a0)
   1ca50:	00053c23          	sd	zero,24(a0)
   1ca54:	02050793          	add	a5,a0,32
   1ca58:	10e60463          	beq	a2,a4,1cb60 <_calloc_r+0x19c>
   1ca5c:	0007b023          	sd	zero,0(a5)
   1ca60:	0007b423          	sd	zero,8(a5)
   1ca64:	0007b823          	sd	zero,16(a5)
   1ca68:	02813083          	ld	ra,40(sp)
   1ca6c:	00040513          	mv	a0,s0
   1ca70:	02013403          	ld	s0,32(sp)
   1ca74:	01813483          	ld	s1,24(sp)
   1ca78:	01013903          	ld	s2,16(sp)
   1ca7c:	00813983          	ld	s3,8(sp)
   1ca80:	03010113          	add	sp,sp,48
   1ca84:	00008067          	ret
   1ca88:	00000593          	li	a1,0
   1ca8c:	84df30ef          	jal	102d8 <memset>
   1ca90:	02813083          	ld	ra,40(sp)
   1ca94:	00040513          	mv	a0,s0
   1ca98:	02013403          	ld	s0,32(sp)
   1ca9c:	01813483          	ld	s1,24(sp)
   1caa0:	01013903          	ld	s2,16(sp)
   1caa4:	00813983          	ld	s3,8(sp)
   1caa8:	03010113          	add	sp,sp,48
   1caac:	00008067          	ret
   1cab0:	01050793          	add	a5,a0,16
   1cab4:	0007b023          	sd	zero,0(a5)
   1cab8:	0007b423          	sd	zero,8(a5)
   1cabc:	0007b823          	sd	zero,16(a5)
   1cac0:	fa9ff06f          	j	1ca68 <_calloc_r+0xa4>
   1cac4:	0a071663          	bnez	a4,1cb70 <_calloc_r+0x1ac>
   1cac8:	0205d593          	srl	a1,a1,0x20
   1cacc:	00058913          	mv	s2,a1
   1cad0:	00060993          	mv	s3,a2
   1cad4:	02079513          	sll	a0,a5,0x20
   1cad8:	02061593          	sll	a1,a2,0x20
   1cadc:	0205d593          	srl	a1,a1,0x20
   1cae0:	02055513          	srl	a0,a0,0x20
   1cae4:	084050ef          	jal	21b68 <__muldi3>
   1cae8:	00050493          	mv	s1,a0
   1caec:	02091593          	sll	a1,s2,0x20
   1caf0:	02099513          	sll	a0,s3,0x20
   1caf4:	0205d593          	srl	a1,a1,0x20
   1caf8:	02055513          	srl	a0,a0,0x20
   1cafc:	06c050ef          	jal	21b68 <__muldi3>
   1cb00:	0204d793          	srl	a5,s1,0x20
   1cb04:	00f505b3          	add	a1,a0,a5
   1cb08:	4205d793          	sra	a5,a1,0x20
   1cb0c:	06079263          	bnez	a5,1cb70 <_calloc_r+0x1ac>
   1cb10:	02049493          	sll	s1,s1,0x20
   1cb14:	02059593          	sll	a1,a1,0x20
   1cb18:	0204d493          	srl	s1,s1,0x20
   1cb1c:	00040513          	mv	a0,s0
   1cb20:	0095e5b3          	or	a1,a1,s1
   1cb24:	fa9f90ef          	jal	16acc <_malloc_r>
   1cb28:	00050413          	mv	s0,a0
   1cb2c:	ee0518e3          	bnez	a0,1ca1c <_calloc_r+0x58>
   1cb30:	00000413          	li	s0,0
   1cb34:	02813083          	ld	ra,40(sp)
   1cb38:	00040513          	mv	a0,s0
   1cb3c:	02013403          	ld	s0,32(sp)
   1cb40:	01813483          	ld	s1,24(sp)
   1cb44:	01013903          	ld	s2,16(sp)
   1cb48:	00813983          	ld	s3,8(sp)
   1cb4c:	03010113          	add	sp,sp,48
   1cb50:	00008067          	ret
   1cb54:	00070913          	mv	s2,a4
   1cb58:	00058993          	mv	s3,a1
   1cb5c:	f79ff06f          	j	1cad4 <_calloc_r+0x110>
   1cb60:	02053023          	sd	zero,32(a0)
   1cb64:	03050793          	add	a5,a0,48
   1cb68:	02053423          	sd	zero,40(a0)
   1cb6c:	ef1ff06f          	j	1ca5c <_calloc_r+0x98>
   1cb70:	070000ef          	jal	1cbe0 <__errno>
   1cb74:	00c00793          	li	a5,12
   1cb78:	00f52023          	sw	a5,0(a0)
   1cb7c:	00000413          	li	s0,0
   1cb80:	fb5ff06f          	j	1cb34 <_calloc_r+0x170>

000000000001cb84 <_close_r>:
   1cb84:	fe010113          	add	sp,sp,-32
   1cb88:	00813823          	sd	s0,16(sp)
   1cb8c:	00913423          	sd	s1,8(sp)
   1cb90:	00050413          	mv	s0,a0
   1cb94:	00058513          	mv	a0,a1
   1cb98:	00113c23          	sd	ra,24(sp)
   1cb9c:	7801a823          	sw	zero,1936(gp) # 24da8 <errno>
   1cba0:	741020ef          	jal	1fae0 <_close>
   1cba4:	fff00793          	li	a5,-1
   1cba8:	00f50c63          	beq	a0,a5,1cbc0 <_close_r+0x3c>
   1cbac:	01813083          	ld	ra,24(sp)
   1cbb0:	01013403          	ld	s0,16(sp)
   1cbb4:	00813483          	ld	s1,8(sp)
   1cbb8:	02010113          	add	sp,sp,32
   1cbbc:	00008067          	ret
   1cbc0:	7901a783          	lw	a5,1936(gp) # 24da8 <errno>
   1cbc4:	fe0784e3          	beqz	a5,1cbac <_close_r+0x28>
   1cbc8:	01813083          	ld	ra,24(sp)
   1cbcc:	00f42023          	sw	a5,0(s0)
   1cbd0:	01013403          	ld	s0,16(sp)
   1cbd4:	00813483          	ld	s1,8(sp)
   1cbd8:	02010113          	add	sp,sp,32
   1cbdc:	00008067          	ret

000000000001cbe0 <__errno>:
   1cbe0:	7581b503          	ld	a0,1880(gp) # 24d70 <_impure_ptr>
   1cbe4:	00008067          	ret

000000000001cbe8 <_fclose_r>:
   1cbe8:	fe010113          	add	sp,sp,-32
   1cbec:	00113c23          	sd	ra,24(sp)
   1cbf0:	00813823          	sd	s0,16(sp)
   1cbf4:	00913423          	sd	s1,8(sp)
   1cbf8:	01213023          	sd	s2,0(sp)
   1cbfc:	02058063          	beqz	a1,1cc1c <_fclose_r+0x34>
   1cc00:	00058413          	mv	s0,a1
   1cc04:	00050493          	mv	s1,a0
   1cc08:	00050663          	beqz	a0,1cc14 <_fclose_r+0x2c>
   1cc0c:	05052783          	lw	a5,80(a0)
   1cc10:	0a078c63          	beqz	a5,1ccc8 <_fclose_r+0xe0>
   1cc14:	01041783          	lh	a5,16(s0)
   1cc18:	02079263          	bnez	a5,1cc3c <_fclose_r+0x54>
   1cc1c:	01813083          	ld	ra,24(sp)
   1cc20:	01013403          	ld	s0,16(sp)
   1cc24:	00000913          	li	s2,0
   1cc28:	00813483          	ld	s1,8(sp)
   1cc2c:	00090513          	mv	a0,s2
   1cc30:	00013903          	ld	s2,0(sp)
   1cc34:	02010113          	add	sp,sp,32
   1cc38:	00008067          	ret
   1cc3c:	00040593          	mv	a1,s0
   1cc40:	00048513          	mv	a0,s1
   1cc44:	978f60ef          	jal	12dbc <__sflush_r>
   1cc48:	05043783          	ld	a5,80(s0)
   1cc4c:	00050913          	mv	s2,a0
   1cc50:	00078a63          	beqz	a5,1cc64 <_fclose_r+0x7c>
   1cc54:	03043583          	ld	a1,48(s0)
   1cc58:	00048513          	mv	a0,s1
   1cc5c:	000780e7          	jalr	a5
   1cc60:	06054c63          	bltz	a0,1ccd8 <_fclose_r+0xf0>
   1cc64:	01045783          	lhu	a5,16(s0)
   1cc68:	0807f793          	and	a5,a5,128
   1cc6c:	06079e63          	bnez	a5,1cce8 <_fclose_r+0x100>
   1cc70:	05843583          	ld	a1,88(s0)
   1cc74:	00058c63          	beqz	a1,1cc8c <_fclose_r+0xa4>
   1cc78:	07440793          	add	a5,s0,116
   1cc7c:	00f58663          	beq	a1,a5,1cc88 <_fclose_r+0xa0>
   1cc80:	00048513          	mv	a0,s1
   1cc84:	989f60ef          	jal	1360c <_free_r>
   1cc88:	04043c23          	sd	zero,88(s0)
   1cc8c:	07843583          	ld	a1,120(s0)
   1cc90:	00058863          	beqz	a1,1cca0 <_fclose_r+0xb8>
   1cc94:	00048513          	mv	a0,s1
   1cc98:	975f60ef          	jal	1360c <_free_r>
   1cc9c:	06043c23          	sd	zero,120(s0)
   1cca0:	fa4f60ef          	jal	13444 <__sfp_lock_acquire>
   1cca4:	00041823          	sh	zero,16(s0)
   1cca8:	fa0f60ef          	jal	13448 <__sfp_lock_release>
   1ccac:	01813083          	ld	ra,24(sp)
   1ccb0:	01013403          	ld	s0,16(sp)
   1ccb4:	00813483          	ld	s1,8(sp)
   1ccb8:	00090513          	mv	a0,s2
   1ccbc:	00013903          	ld	s2,0(sp)
   1ccc0:	02010113          	add	sp,sp,32
   1ccc4:	00008067          	ret
   1ccc8:	f6cf60ef          	jal	13434 <__sinit>
   1cccc:	01041783          	lh	a5,16(s0)
   1ccd0:	f40786e3          	beqz	a5,1cc1c <_fclose_r+0x34>
   1ccd4:	f69ff06f          	j	1cc3c <_fclose_r+0x54>
   1ccd8:	01045783          	lhu	a5,16(s0)
   1ccdc:	fff00913          	li	s2,-1
   1cce0:	0807f793          	and	a5,a5,128
   1cce4:	f80786e3          	beqz	a5,1cc70 <_fclose_r+0x88>
   1cce8:	01843583          	ld	a1,24(s0)
   1ccec:	00048513          	mv	a0,s1
   1ccf0:	91df60ef          	jal	1360c <_free_r>
   1ccf4:	f7dff06f          	j	1cc70 <_fclose_r+0x88>

000000000001ccf8 <fclose>:
   1ccf8:	00050593          	mv	a1,a0
   1ccfc:	7581b503          	ld	a0,1880(gp) # 24d70 <_impure_ptr>
   1cd00:	ee9ff06f          	j	1cbe8 <_fclose_r>

000000000001cd04 <_fiprintf_r>:
   1cd04:	fb010113          	add	sp,sp,-80
   1cd08:	02810313          	add	t1,sp,40
   1cd0c:	02d13423          	sd	a3,40(sp)
   1cd10:	00030693          	mv	a3,t1
   1cd14:	00113c23          	sd	ra,24(sp)
   1cd18:	02e13823          	sd	a4,48(sp)
   1cd1c:	02f13c23          	sd	a5,56(sp)
   1cd20:	05013023          	sd	a6,64(sp)
   1cd24:	05113423          	sd	a7,72(sp)
   1cd28:	00613423          	sd	t1,8(sp)
   1cd2c:	fbcfe0ef          	jal	1b4e8 <_vfiprintf_r>
   1cd30:	01813083          	ld	ra,24(sp)
   1cd34:	05010113          	add	sp,sp,80
   1cd38:	00008067          	ret

000000000001cd3c <fiprintf>:
   1cd3c:	00050e13          	mv	t3,a0
   1cd40:	fb010113          	add	sp,sp,-80
   1cd44:	7581b503          	ld	a0,1880(gp) # 24d70 <_impure_ptr>
   1cd48:	02010313          	add	t1,sp,32
   1cd4c:	02c13023          	sd	a2,32(sp)
   1cd50:	02d13423          	sd	a3,40(sp)
   1cd54:	00058613          	mv	a2,a1
   1cd58:	00030693          	mv	a3,t1
   1cd5c:	000e0593          	mv	a1,t3
   1cd60:	00113c23          	sd	ra,24(sp)
   1cd64:	02e13823          	sd	a4,48(sp)
   1cd68:	02f13c23          	sd	a5,56(sp)
   1cd6c:	05013023          	sd	a6,64(sp)
   1cd70:	05113423          	sd	a7,72(sp)
   1cd74:	00613423          	sd	t1,8(sp)
   1cd78:	f70fe0ef          	jal	1b4e8 <_vfiprintf_r>
   1cd7c:	01813083          	ld	ra,24(sp)
   1cd80:	05010113          	add	sp,sp,80
   1cd84:	00008067          	ret

000000000001cd88 <__fputwc>:
   1cd88:	fd010113          	add	sp,sp,-48
   1cd8c:	02813023          	sd	s0,32(sp)
   1cd90:	00913c23          	sd	s1,24(sp)
   1cd94:	01213823          	sd	s2,16(sp)
   1cd98:	02113423          	sd	ra,40(sp)
   1cd9c:	00050913          	mv	s2,a0
   1cda0:	00058493          	mv	s1,a1
   1cda4:	00060413          	mv	s0,a2
   1cda8:	a39f90ef          	jal	167e0 <__locale_mb_cur_max>
   1cdac:	00100793          	li	a5,1
   1cdb0:	00f51c63          	bne	a0,a5,1cdc8 <__fputwc+0x40>
   1cdb4:	fff4879b          	addw	a5,s1,-1
   1cdb8:	0fe00713          	li	a4,254
   1cdbc:	00f76663          	bltu	a4,a5,1cdc8 <__fputwc+0x40>
   1cdc0:	00910423          	sb	s1,8(sp)
   1cdc4:	0240006f          	j	1cde8 <__fputwc+0x60>
   1cdc8:	0a440693          	add	a3,s0,164
   1cdcc:	00048613          	mv	a2,s1
   1cdd0:	00810593          	add	a1,sp,8
   1cdd4:	00090513          	mv	a0,s2
   1cdd8:	5c4020ef          	jal	1f39c <_wcrtomb_r>
   1cddc:	fff00793          	li	a5,-1
   1cde0:	08f50463          	beq	a0,a5,1ce68 <__fputwc+0xe0>
   1cde4:	02050c63          	beqz	a0,1ce1c <__fputwc+0x94>
   1cde8:	00c42783          	lw	a5,12(s0)
   1cdec:	00814583          	lbu	a1,8(sp)
   1cdf0:	fff7871b          	addw	a4,a5,-1
   1cdf4:	00e42623          	sw	a4,12(s0)
   1cdf8:	00075a63          	bgez	a4,1ce0c <__fputwc+0x84>
   1cdfc:	02842783          	lw	a5,40(s0)
   1ce00:	02f74c63          	blt	a4,a5,1ce38 <__fputwc+0xb0>
   1ce04:	00a00793          	li	a5,10
   1ce08:	02f58863          	beq	a1,a5,1ce38 <__fputwc+0xb0>
   1ce0c:	00043783          	ld	a5,0(s0)
   1ce10:	00178713          	add	a4,a5,1
   1ce14:	00e43023          	sd	a4,0(s0)
   1ce18:	00b78023          	sb	a1,0(a5)
   1ce1c:	02813083          	ld	ra,40(sp)
   1ce20:	02013403          	ld	s0,32(sp)
   1ce24:	01013903          	ld	s2,16(sp)
   1ce28:	0004851b          	sext.w	a0,s1
   1ce2c:	01813483          	ld	s1,24(sp)
   1ce30:	03010113          	add	sp,sp,48
   1ce34:	00008067          	ret
   1ce38:	00040613          	mv	a2,s0
   1ce3c:	00090513          	mv	a0,s2
   1ce40:	3d4020ef          	jal	1f214 <__swbuf_r>
   1ce44:	fff00793          	li	a5,-1
   1ce48:	fcf51ae3          	bne	a0,a5,1ce1c <__fputwc+0x94>
   1ce4c:	fff00513          	li	a0,-1
   1ce50:	02813083          	ld	ra,40(sp)
   1ce54:	02013403          	ld	s0,32(sp)
   1ce58:	01813483          	ld	s1,24(sp)
   1ce5c:	01013903          	ld	s2,16(sp)
   1ce60:	03010113          	add	sp,sp,48
   1ce64:	00008067          	ret
   1ce68:	01045783          	lhu	a5,16(s0)
   1ce6c:	fff00513          	li	a0,-1
   1ce70:	0407e793          	or	a5,a5,64
   1ce74:	00f41823          	sh	a5,16(s0)
   1ce78:	fd9ff06f          	j	1ce50 <__fputwc+0xc8>

000000000001ce7c <_fputwc_r>:
   1ce7c:	01061783          	lh	a5,16(a2)
   1ce80:	03279713          	sll	a4,a5,0x32
   1ce84:	02074063          	bltz	a4,1cea4 <_fputwc_r+0x28>
   1ce88:	0ac62703          	lw	a4,172(a2)
   1ce8c:	000026b7          	lui	a3,0x2
   1ce90:	00d7e7b3          	or	a5,a5,a3
   1ce94:	000026b7          	lui	a3,0x2
   1ce98:	00d76733          	or	a4,a4,a3
   1ce9c:	00f61823          	sh	a5,16(a2)
   1cea0:	0ae62623          	sw	a4,172(a2)
   1cea4:	ee5ff06f          	j	1cd88 <__fputwc>

000000000001cea8 <fputwc>:
   1cea8:	fe010113          	add	sp,sp,-32
   1ceac:	00813823          	sd	s0,16(sp)
   1ceb0:	7581b403          	ld	s0,1880(gp) # 24d70 <_impure_ptr>
   1ceb4:	00113c23          	sd	ra,24(sp)
   1ceb8:	00058613          	mv	a2,a1
   1cebc:	00050593          	mv	a1,a0
   1cec0:	00040663          	beqz	s0,1cecc <fputwc+0x24>
   1cec4:	05042783          	lw	a5,80(s0)
   1cec8:	04078063          	beqz	a5,1cf08 <fputwc+0x60>
   1cecc:	01061783          	lh	a5,16(a2)
   1ced0:	03279713          	sll	a4,a5,0x32
   1ced4:	02074063          	bltz	a4,1cef4 <fputwc+0x4c>
   1ced8:	0ac62703          	lw	a4,172(a2)
   1cedc:	000026b7          	lui	a3,0x2
   1cee0:	00d7e7b3          	or	a5,a5,a3
   1cee4:	000026b7          	lui	a3,0x2
   1cee8:	00d76733          	or	a4,a4,a3
   1ceec:	00f61823          	sh	a5,16(a2)
   1cef0:	0ae62623          	sw	a4,172(a2)
   1cef4:	00040513          	mv	a0,s0
   1cef8:	01013403          	ld	s0,16(sp)
   1cefc:	01813083          	ld	ra,24(sp)
   1cf00:	02010113          	add	sp,sp,32
   1cf04:	e85ff06f          	j	1cd88 <__fputwc>
   1cf08:	00a13023          	sd	a0,0(sp)
   1cf0c:	00040513          	mv	a0,s0
   1cf10:	00c13423          	sd	a2,8(sp)
   1cf14:	d20f60ef          	jal	13434 <__sinit>
   1cf18:	00813603          	ld	a2,8(sp)
   1cf1c:	00013583          	ld	a1,0(sp)
   1cf20:	fadff06f          	j	1cecc <fputwc+0x24>

000000000001cf24 <_fstat_r>:
   1cf24:	fe010113          	add	sp,sp,-32
   1cf28:	00058713          	mv	a4,a1
   1cf2c:	00813823          	sd	s0,16(sp)
   1cf30:	00913423          	sd	s1,8(sp)
   1cf34:	00050413          	mv	s0,a0
   1cf38:	00060593          	mv	a1,a2
   1cf3c:	00070513          	mv	a0,a4
   1cf40:	00113c23          	sd	ra,24(sp)
   1cf44:	7801a823          	sw	zero,1936(gp) # 24da8 <errno>
   1cf48:	40d020ef          	jal	1fb54 <_fstat>
   1cf4c:	fff00793          	li	a5,-1
   1cf50:	00f50c63          	beq	a0,a5,1cf68 <_fstat_r+0x44>
   1cf54:	01813083          	ld	ra,24(sp)
   1cf58:	01013403          	ld	s0,16(sp)
   1cf5c:	00813483          	ld	s1,8(sp)
   1cf60:	02010113          	add	sp,sp,32
   1cf64:	00008067          	ret
   1cf68:	7901a783          	lw	a5,1936(gp) # 24da8 <errno>
   1cf6c:	fe0784e3          	beqz	a5,1cf54 <_fstat_r+0x30>
   1cf70:	01813083          	ld	ra,24(sp)
   1cf74:	00f42023          	sw	a5,0(s0)
   1cf78:	01013403          	ld	s0,16(sp)
   1cf7c:	00813483          	ld	s1,8(sp)
   1cf80:	02010113          	add	sp,sp,32
   1cf84:	00008067          	ret

000000000001cf88 <__sfvwrite_r>:
   1cf88:	01063783          	ld	a5,16(a2)
   1cf8c:	28078063          	beqz	a5,1d20c <__sfvwrite_r+0x284>
   1cf90:	01059703          	lh	a4,16(a1)
   1cf94:	fa010113          	add	sp,sp,-96
   1cf98:	04813823          	sd	s0,80(sp)
   1cf9c:	03413823          	sd	s4,48(sp)
   1cfa0:	03613023          	sd	s6,32(sp)
   1cfa4:	04113c23          	sd	ra,88(sp)
   1cfa8:	04913423          	sd	s1,72(sp)
   1cfac:	05213023          	sd	s2,64(sp)
   1cfb0:	03313c23          	sd	s3,56(sp)
   1cfb4:	03513423          	sd	s5,40(sp)
   1cfb8:	01713c23          	sd	s7,24(sp)
   1cfbc:	01813823          	sd	s8,16(sp)
   1cfc0:	01913423          	sd	s9,8(sp)
   1cfc4:	00877793          	and	a5,a4,8
   1cfc8:	00060b13          	mv	s6,a2
   1cfcc:	00050a13          	mv	s4,a0
   1cfd0:	00058413          	mv	s0,a1
   1cfd4:	08078863          	beqz	a5,1d064 <__sfvwrite_r+0xdc>
   1cfd8:	0185b783          	ld	a5,24(a1)
   1cfdc:	08078463          	beqz	a5,1d064 <__sfvwrite_r+0xdc>
   1cfe0:	00277793          	and	a5,a4,2
   1cfe4:	000b3483          	ld	s1,0(s6)
   1cfe8:	08078e63          	beqz	a5,1d084 <__sfvwrite_r+0xfc>
   1cfec:	04043783          	ld	a5,64(s0)
   1cff0:	03043583          	ld	a1,48(s0)
   1cff4:	80000ab7          	lui	s5,0x80000
   1cff8:	00000993          	li	s3,0
   1cffc:	00000913          	li	s2,0
   1d000:	c00aca93          	xor	s5,s5,-1024
   1d004:	00098613          	mv	a2,s3
   1d008:	000a0513          	mv	a0,s4
   1d00c:	04090463          	beqz	s2,1d054 <__sfvwrite_r+0xcc>
   1d010:	00090693          	mv	a3,s2
   1d014:	012af463          	bgeu	s5,s2,1d01c <__sfvwrite_r+0x94>
   1d018:	000a8693          	mv	a3,s5
   1d01c:	0006869b          	sext.w	a3,a3
   1d020:	000780e7          	jalr	a5
   1d024:	1ca05a63          	blez	a0,1d1f8 <__sfvwrite_r+0x270>
   1d028:	010b3783          	ld	a5,16(s6)
   1d02c:	00a989b3          	add	s3,s3,a0
   1d030:	40a90933          	sub	s2,s2,a0
   1d034:	40a787b3          	sub	a5,a5,a0
   1d038:	00fb3823          	sd	a5,16(s6)
   1d03c:	16078a63          	beqz	a5,1d1b0 <__sfvwrite_r+0x228>
   1d040:	04043783          	ld	a5,64(s0)
   1d044:	03043583          	ld	a1,48(s0)
   1d048:	00098613          	mv	a2,s3
   1d04c:	000a0513          	mv	a0,s4
   1d050:	fc0910e3          	bnez	s2,1d010 <__sfvwrite_r+0x88>
   1d054:	0004b983          	ld	s3,0(s1)
   1d058:	0084b903          	ld	s2,8(s1)
   1d05c:	01048493          	add	s1,s1,16
   1d060:	fa5ff06f          	j	1d004 <__sfvwrite_r+0x7c>
   1d064:	00040593          	mv	a1,s0
   1d068:	000a0513          	mv	a0,s4
   1d06c:	ae9f50ef          	jal	12b54 <__swsetup_r>
   1d070:	18051a63          	bnez	a0,1d204 <__sfvwrite_r+0x27c>
   1d074:	01041703          	lh	a4,16(s0)
   1d078:	000b3483          	ld	s1,0(s6)
   1d07c:	00277793          	and	a5,a4,2
   1d080:	f60796e3          	bnez	a5,1cfec <__sfvwrite_r+0x64>
   1d084:	00177793          	and	a5,a4,1
   1d088:	08079e63          	bnez	a5,1d124 <__sfvwrite_r+0x19c>
   1d08c:	00c42b83          	lw	s7,12(s0)
   1d090:	00043783          	ld	a5,0(s0)
   1d094:	80000ab7          	lui	s5,0x80000
   1d098:	00000c13          	li	s8,0
   1d09c:	00000913          	li	s2,0
   1d0a0:	fffaca93          	not	s5,s5
   1d0a4:	00078513          	mv	a0,a5
   1d0a8:	06090663          	beqz	s2,1d114 <__sfvwrite_r+0x18c>
   1d0ac:	20077693          	and	a3,a4,512
   1d0b0:	1c068663          	beqz	a3,1d27c <__sfvwrite_r+0x2f4>
   1d0b4:	27797263          	bgeu	s2,s7,1d318 <__sfvwrite_r+0x390>
   1d0b8:	00090c93          	mv	s9,s2
   1d0bc:	00090b93          	mv	s7,s2
   1d0c0:	000b8613          	mv	a2,s7
   1d0c4:	000c0593          	mv	a1,s8
   1d0c8:	5d4000ef          	jal	1d69c <memmove>
   1d0cc:	00c42703          	lw	a4,12(s0)
   1d0d0:	00043783          	ld	a5,0(s0)
   1d0d4:	00090993          	mv	s3,s2
   1d0d8:	4197073b          	subw	a4,a4,s9
   1d0dc:	017787b3          	add	a5,a5,s7
   1d0e0:	00e42623          	sw	a4,12(s0)
   1d0e4:	00f43023          	sd	a5,0(s0)
   1d0e8:	00000913          	li	s2,0
   1d0ec:	010b3783          	ld	a5,16(s6)
   1d0f0:	013c0c33          	add	s8,s8,s3
   1d0f4:	413787b3          	sub	a5,a5,s3
   1d0f8:	00fb3823          	sd	a5,16(s6)
   1d0fc:	0a078a63          	beqz	a5,1d1b0 <__sfvwrite_r+0x228>
   1d100:	00043783          	ld	a5,0(s0)
   1d104:	01041703          	lh	a4,16(s0)
   1d108:	00c42b83          	lw	s7,12(s0)
   1d10c:	00078513          	mv	a0,a5
   1d110:	f8091ee3          	bnez	s2,1d0ac <__sfvwrite_r+0x124>
   1d114:	0004bc03          	ld	s8,0(s1)
   1d118:	0084b903          	ld	s2,8(s1)
   1d11c:	01048493          	add	s1,s1,16
   1d120:	f85ff06f          	j	1d0a4 <__sfvwrite_r+0x11c>
   1d124:	00000993          	li	s3,0
   1d128:	00000513          	li	a0,0
   1d12c:	00000c93          	li	s9,0
   1d130:	00000c13          	li	s8,0
   1d134:	0e0c0063          	beqz	s8,1d214 <__sfvwrite_r+0x28c>
   1d138:	0e050863          	beqz	a0,1d228 <__sfvwrite_r+0x2a0>
   1d13c:	00098b93          	mv	s7,s3
   1d140:	013c7463          	bgeu	s8,s3,1d148 <__sfvwrite_r+0x1c0>
   1d144:	000c0b93          	mv	s7,s8
   1d148:	00043503          	ld	a0,0(s0)
   1d14c:	01843703          	ld	a4,24(s0)
   1d150:	00c42783          	lw	a5,12(s0)
   1d154:	02042683          	lw	a3,32(s0)
   1d158:	000b8913          	mv	s2,s7
   1d15c:	00a77663          	bgeu	a4,a0,1d168 <__sfvwrite_r+0x1e0>
   1d160:	00d78abb          	addw	s5,a5,a3
   1d164:	0f7ac263          	blt	s5,s7,1d248 <__sfvwrite_r+0x2c0>
   1d168:	24dbc663          	blt	s7,a3,1d3b4 <__sfvwrite_r+0x42c>
   1d16c:	04043783          	ld	a5,64(s0)
   1d170:	03043583          	ld	a1,48(s0)
   1d174:	000c8613          	mv	a2,s9
   1d178:	000a0513          	mv	a0,s4
   1d17c:	000780e7          	jalr	a5
   1d180:	00050913          	mv	s2,a0
   1d184:	06a05a63          	blez	a0,1d1f8 <__sfvwrite_r+0x270>
   1d188:	0005079b          	sext.w	a5,a0
   1d18c:	40f989bb          	subw	s3,s3,a5
   1d190:	00100513          	li	a0,1
   1d194:	04098a63          	beqz	s3,1d1e8 <__sfvwrite_r+0x260>
   1d198:	010b3783          	ld	a5,16(s6)
   1d19c:	012c8cb3          	add	s9,s9,s2
   1d1a0:	412c0c33          	sub	s8,s8,s2
   1d1a4:	412787b3          	sub	a5,a5,s2
   1d1a8:	00fb3823          	sd	a5,16(s6)
   1d1ac:	f80794e3          	bnez	a5,1d134 <__sfvwrite_r+0x1ac>
   1d1b0:	00000513          	li	a0,0
   1d1b4:	05813083          	ld	ra,88(sp)
   1d1b8:	05013403          	ld	s0,80(sp)
   1d1bc:	04813483          	ld	s1,72(sp)
   1d1c0:	04013903          	ld	s2,64(sp)
   1d1c4:	03813983          	ld	s3,56(sp)
   1d1c8:	03013a03          	ld	s4,48(sp)
   1d1cc:	02813a83          	ld	s5,40(sp)
   1d1d0:	02013b03          	ld	s6,32(sp)
   1d1d4:	01813b83          	ld	s7,24(sp)
   1d1d8:	01013c03          	ld	s8,16(sp)
   1d1dc:	00813c83          	ld	s9,8(sp)
   1d1e0:	06010113          	add	sp,sp,96
   1d1e4:	00008067          	ret
   1d1e8:	00040593          	mv	a1,s0
   1d1ec:	000a0513          	mv	a0,s4
   1d1f0:	e19f50ef          	jal	13008 <_fflush_r>
   1d1f4:	fa0502e3          	beqz	a0,1d198 <__sfvwrite_r+0x210>
   1d1f8:	01041783          	lh	a5,16(s0)
   1d1fc:	0407e793          	or	a5,a5,64
   1d200:	00f41823          	sh	a5,16(s0)
   1d204:	fff00513          	li	a0,-1
   1d208:	fadff06f          	j	1d1b4 <__sfvwrite_r+0x22c>
   1d20c:	00000513          	li	a0,0
   1d210:	00008067          	ret
   1d214:	0084bc03          	ld	s8,8(s1)
   1d218:	00048793          	mv	a5,s1
   1d21c:	01048493          	add	s1,s1,16
   1d220:	fe0c0ae3          	beqz	s8,1d214 <__sfvwrite_r+0x28c>
   1d224:	0007bc83          	ld	s9,0(a5)
   1d228:	000c0613          	mv	a2,s8
   1d22c:	00a00593          	li	a1,10
   1d230:	000c8513          	mv	a0,s9
   1d234:	8e4fa0ef          	jal	17318 <memchr>
   1d238:	1e050263          	beqz	a0,1d41c <__sfvwrite_r+0x494>
   1d23c:	00150513          	add	a0,a0,1
   1d240:	419509bb          	subw	s3,a0,s9
   1d244:	ef9ff06f          	j	1d13c <__sfvwrite_r+0x1b4>
   1d248:	000c8593          	mv	a1,s9
   1d24c:	000a8613          	mv	a2,s5
   1d250:	44c000ef          	jal	1d69c <memmove>
   1d254:	00043783          	ld	a5,0(s0)
   1d258:	00040593          	mv	a1,s0
   1d25c:	000a0513          	mv	a0,s4
   1d260:	015787b3          	add	a5,a5,s5
   1d264:	00f43023          	sd	a5,0(s0)
   1d268:	da1f50ef          	jal	13008 <_fflush_r>
   1d26c:	f80516e3          	bnez	a0,1d1f8 <__sfvwrite_r+0x270>
   1d270:	000a8793          	mv	a5,s5
   1d274:	000a8913          	mv	s2,s5
   1d278:	f15ff06f          	j	1d18c <__sfvwrite_r+0x204>
   1d27c:	01843703          	ld	a4,24(s0)
   1d280:	04f76463          	bltu	a4,a5,1d2c8 <__sfvwrite_r+0x340>
   1d284:	02042583          	lw	a1,32(s0)
   1d288:	04b96063          	bltu	s2,a1,1d2c8 <__sfvwrite_r+0x340>
   1d28c:	00090993          	mv	s3,s2
   1d290:	012af463          	bgeu	s5,s2,1d298 <__sfvwrite_r+0x310>
   1d294:	000a8993          	mv	s3,s5
   1d298:	0009851b          	sext.w	a0,s3
   1d29c:	1b5040ef          	jal	21c50 <__moddi3>
   1d2a0:	04043783          	ld	a5,64(s0)
   1d2a4:	03043583          	ld	a1,48(s0)
   1d2a8:	40a986bb          	subw	a3,s3,a0
   1d2ac:	000c0613          	mv	a2,s8
   1d2b0:	000a0513          	mv	a0,s4
   1d2b4:	000780e7          	jalr	a5
   1d2b8:	00050993          	mv	s3,a0
   1d2bc:	f2a05ee3          	blez	a0,1d1f8 <__sfvwrite_r+0x270>
   1d2c0:	41390933          	sub	s2,s2,s3
   1d2c4:	e29ff06f          	j	1d0ec <__sfvwrite_r+0x164>
   1d2c8:	000b8993          	mv	s3,s7
   1d2cc:	01797463          	bgeu	s2,s7,1d2d4 <__sfvwrite_r+0x34c>
   1d2d0:	00090993          	mv	s3,s2
   1d2d4:	00078513          	mv	a0,a5
   1d2d8:	00098613          	mv	a2,s3
   1d2dc:	000c0593          	mv	a1,s8
   1d2e0:	3bc000ef          	jal	1d69c <memmove>
   1d2e4:	00c42703          	lw	a4,12(s0)
   1d2e8:	00043783          	ld	a5,0(s0)
   1d2ec:	413706bb          	subw	a3,a4,s3
   1d2f0:	013787b3          	add	a5,a5,s3
   1d2f4:	00d42623          	sw	a3,12(s0)
   1d2f8:	00f43023          	sd	a5,0(s0)
   1d2fc:	fc0692e3          	bnez	a3,1d2c0 <__sfvwrite_r+0x338>
   1d300:	00040593          	mv	a1,s0
   1d304:	000a0513          	mv	a0,s4
   1d308:	d01f50ef          	jal	13008 <_fflush_r>
   1d30c:	ee0516e3          	bnez	a0,1d1f8 <__sfvwrite_r+0x270>
   1d310:	41390933          	sub	s2,s2,s3
   1d314:	dd9ff06f          	j	1d0ec <__sfvwrite_r+0x164>
   1d318:	48077693          	and	a3,a4,1152
   1d31c:	0c068263          	beqz	a3,1d3e0 <__sfvwrite_r+0x458>
   1d320:	02042603          	lw	a2,32(s0)
   1d324:	01843583          	ld	a1,24(s0)
   1d328:	0016169b          	sllw	a3,a2,0x1
   1d32c:	00c686bb          	addw	a3,a3,a2
   1d330:	40b787b3          	sub	a5,a5,a1
   1d334:	01f6d99b          	srlw	s3,a3,0x1f
   1d338:	00078b9b          	sext.w	s7,a5
   1d33c:	00d989bb          	addw	s3,s3,a3
   1d340:	001b8693          	add	a3,s7,1
   1d344:	4019d99b          	sraw	s3,s3,0x1
   1d348:	012686b3          	add	a3,a3,s2
   1d34c:	00d9f663          	bgeu	s3,a3,1d358 <__sfvwrite_r+0x3d0>
   1d350:	0017879b          	addw	a5,a5,1
   1d354:	012789bb          	addw	s3,a5,s2
   1d358:	40077713          	and	a4,a4,1024
   1d35c:	08070663          	beqz	a4,1d3e8 <__sfvwrite_r+0x460>
   1d360:	00098593          	mv	a1,s3
   1d364:	000a0513          	mv	a0,s4
   1d368:	f64f90ef          	jal	16acc <_malloc_r>
   1d36c:	00050c93          	mv	s9,a0
   1d370:	0a050a63          	beqz	a0,1d424 <__sfvwrite_r+0x49c>
   1d374:	01843583          	ld	a1,24(s0)
   1d378:	000b8613          	mv	a2,s7
   1d37c:	17c000ef          	jal	1d4f8 <memcpy>
   1d380:	01045783          	lhu	a5,16(s0)
   1d384:	b7f7f793          	and	a5,a5,-1153
   1d388:	0807e793          	or	a5,a5,128
   1d38c:	00f41823          	sh	a5,16(s0)
   1d390:	017c8533          	add	a0,s9,s7
   1d394:	41798bbb          	subw	s7,s3,s7
   1d398:	01943c23          	sd	s9,24(s0)
   1d39c:	01742623          	sw	s7,12(s0)
   1d3a0:	00a43023          	sd	a0,0(s0)
   1d3a4:	03342023          	sw	s3,32(s0)
   1d3a8:	00090c93          	mv	s9,s2
   1d3ac:	00090b93          	mv	s7,s2
   1d3b0:	d11ff06f          	j	1d0c0 <__sfvwrite_r+0x138>
   1d3b4:	000b8613          	mv	a2,s7
   1d3b8:	000c8593          	mv	a1,s9
   1d3bc:	2e0000ef          	jal	1d69c <memmove>
   1d3c0:	00c42683          	lw	a3,12(s0)
   1d3c4:	00043703          	ld	a4,0(s0)
   1d3c8:	000b879b          	sext.w	a5,s7
   1d3cc:	417686bb          	subw	a3,a3,s7
   1d3d0:	01770733          	add	a4,a4,s7
   1d3d4:	00d42623          	sw	a3,12(s0)
   1d3d8:	00e43023          	sd	a4,0(s0)
   1d3dc:	db1ff06f          	j	1d18c <__sfvwrite_r+0x204>
   1d3e0:	000b8c93          	mv	s9,s7
   1d3e4:	cddff06f          	j	1d0c0 <__sfvwrite_r+0x138>
   1d3e8:	00098613          	mv	a2,s3
   1d3ec:	000a0513          	mv	a0,s4
   1d3f0:	430000ef          	jal	1d820 <_realloc_r>
   1d3f4:	00050c93          	mv	s9,a0
   1d3f8:	f8051ce3          	bnez	a0,1d390 <__sfvwrite_r+0x408>
   1d3fc:	01843583          	ld	a1,24(s0)
   1d400:	000a0513          	mv	a0,s4
   1d404:	a08f60ef          	jal	1360c <_free_r>
   1d408:	01041783          	lh	a5,16(s0)
   1d40c:	00c00713          	li	a4,12
   1d410:	00ea2023          	sw	a4,0(s4)
   1d414:	f7f7f793          	and	a5,a5,-129
   1d418:	de5ff06f          	j	1d1fc <__sfvwrite_r+0x274>
   1d41c:	001c099b          	addw	s3,s8,1
   1d420:	d1dff06f          	j	1d13c <__sfvwrite_r+0x1b4>
   1d424:	00c00713          	li	a4,12
   1d428:	01041783          	lh	a5,16(s0)
   1d42c:	00ea2023          	sw	a4,0(s4)
   1d430:	dcdff06f          	j	1d1fc <__sfvwrite_r+0x274>

000000000001d434 <_isatty_r>:
   1d434:	fe010113          	add	sp,sp,-32
   1d438:	00813823          	sd	s0,16(sp)
   1d43c:	00913423          	sd	s1,8(sp)
   1d440:	00050413          	mv	s0,a0
   1d444:	00058513          	mv	a0,a1
   1d448:	00113c23          	sd	ra,24(sp)
   1d44c:	7801a823          	sw	zero,1936(gp) # 24da8 <errno>
   1d450:	770020ef          	jal	1fbc0 <_isatty>
   1d454:	fff00793          	li	a5,-1
   1d458:	00f50c63          	beq	a0,a5,1d470 <_isatty_r+0x3c>
   1d45c:	01813083          	ld	ra,24(sp)
   1d460:	01013403          	ld	s0,16(sp)
   1d464:	00813483          	ld	s1,8(sp)
   1d468:	02010113          	add	sp,sp,32
   1d46c:	00008067          	ret
   1d470:	7901a783          	lw	a5,1936(gp) # 24da8 <errno>
   1d474:	fe0784e3          	beqz	a5,1d45c <_isatty_r+0x28>
   1d478:	01813083          	ld	ra,24(sp)
   1d47c:	00f42023          	sw	a5,0(s0)
   1d480:	01013403          	ld	s0,16(sp)
   1d484:	00813483          	ld	s1,8(sp)
   1d488:	02010113          	add	sp,sp,32
   1d48c:	00008067          	ret

000000000001d490 <_lseek_r>:
   1d490:	fe010113          	add	sp,sp,-32
   1d494:	00058713          	mv	a4,a1
   1d498:	00813823          	sd	s0,16(sp)
   1d49c:	00913423          	sd	s1,8(sp)
   1d4a0:	00060593          	mv	a1,a2
   1d4a4:	00050413          	mv	s0,a0
   1d4a8:	00068613          	mv	a2,a3
   1d4ac:	00070513          	mv	a0,a4
   1d4b0:	00113c23          	sd	ra,24(sp)
   1d4b4:	7801a823          	sw	zero,1936(gp) # 24da8 <errno>
   1d4b8:	76c020ef          	jal	1fc24 <_lseek>
   1d4bc:	fff00793          	li	a5,-1
   1d4c0:	00f50c63          	beq	a0,a5,1d4d8 <_lseek_r+0x48>
   1d4c4:	01813083          	ld	ra,24(sp)
   1d4c8:	01013403          	ld	s0,16(sp)
   1d4cc:	00813483          	ld	s1,8(sp)
   1d4d0:	02010113          	add	sp,sp,32
   1d4d4:	00008067          	ret
   1d4d8:	7901a783          	lw	a5,1936(gp) # 24da8 <errno>
   1d4dc:	fe0784e3          	beqz	a5,1d4c4 <_lseek_r+0x34>
   1d4e0:	01813083          	ld	ra,24(sp)
   1d4e4:	00f42023          	sw	a5,0(s0)
   1d4e8:	01013403          	ld	s0,16(sp)
   1d4ec:	00813483          	ld	s1,8(sp)
   1d4f0:	02010113          	add	sp,sp,32
   1d4f4:	00008067          	ret

000000000001d4f8 <memcpy>:
   1d4f8:	00b547b3          	xor	a5,a0,a1
   1d4fc:	0077f793          	and	a5,a5,7
   1d500:	00c508b3          	add	a7,a0,a2
   1d504:	06079463          	bnez	a5,1d56c <memcpy+0x74>
   1d508:	00700793          	li	a5,7
   1d50c:	06c7f063          	bgeu	a5,a2,1d56c <memcpy+0x74>
   1d510:	00757793          	and	a5,a0,7
   1d514:	00050713          	mv	a4,a0
   1d518:	06079a63          	bnez	a5,1d58c <memcpy+0x94>
   1d51c:	ff88f613          	and	a2,a7,-8
   1d520:	40e606b3          	sub	a3,a2,a4
   1d524:	04000793          	li	a5,64
   1d528:	08d7ce63          	blt	a5,a3,1d5c4 <memcpy+0xcc>
   1d52c:	00058693          	mv	a3,a1
   1d530:	00070793          	mv	a5,a4
   1d534:	02c77863          	bgeu	a4,a2,1d564 <memcpy+0x6c>
   1d538:	0006b803          	ld	a6,0(a3) # 2000 <exit-0xe0e8>
   1d53c:	00878793          	add	a5,a5,8
   1d540:	00868693          	add	a3,a3,8
   1d544:	ff07bc23          	sd	a6,-8(a5)
   1d548:	fec7e8e3          	bltu	a5,a2,1d538 <memcpy+0x40>
   1d54c:	fff60793          	add	a5,a2,-1
   1d550:	40e787b3          	sub	a5,a5,a4
   1d554:	ff87f793          	and	a5,a5,-8
   1d558:	00878793          	add	a5,a5,8
   1d55c:	00f70733          	add	a4,a4,a5
   1d560:	00f585b3          	add	a1,a1,a5
   1d564:	01176863          	bltu	a4,a7,1d574 <memcpy+0x7c>
   1d568:	00008067          	ret
   1d56c:	00050713          	mv	a4,a0
   1d570:	05157863          	bgeu	a0,a7,1d5c0 <memcpy+0xc8>
   1d574:	0005c783          	lbu	a5,0(a1)
   1d578:	00170713          	add	a4,a4,1
   1d57c:	00158593          	add	a1,a1,1
   1d580:	fef70fa3          	sb	a5,-1(a4)
   1d584:	fee898e3          	bne	a7,a4,1d574 <memcpy+0x7c>
   1d588:	00008067          	ret
   1d58c:	0005c683          	lbu	a3,0(a1)
   1d590:	00170713          	add	a4,a4,1
   1d594:	00777793          	and	a5,a4,7
   1d598:	fed70fa3          	sb	a3,-1(a4)
   1d59c:	00158593          	add	a1,a1,1
   1d5a0:	f6078ee3          	beqz	a5,1d51c <memcpy+0x24>
   1d5a4:	0005c683          	lbu	a3,0(a1)
   1d5a8:	00170713          	add	a4,a4,1
   1d5ac:	00777793          	and	a5,a4,7
   1d5b0:	fed70fa3          	sb	a3,-1(a4)
   1d5b4:	00158593          	add	a1,a1,1
   1d5b8:	fc079ae3          	bnez	a5,1d58c <memcpy+0x94>
   1d5bc:	f61ff06f          	j	1d51c <memcpy+0x24>
   1d5c0:	00008067          	ret
   1d5c4:	ff010113          	add	sp,sp,-16
   1d5c8:	00813423          	sd	s0,8(sp)
   1d5cc:	04000413          	li	s0,64
   1d5d0:	0005b383          	ld	t2,0(a1)
   1d5d4:	0085b283          	ld	t0,8(a1)
   1d5d8:	0105bf83          	ld	t6,16(a1)
   1d5dc:	0185bf03          	ld	t5,24(a1)
   1d5e0:	0205be83          	ld	t4,32(a1)
   1d5e4:	0285be03          	ld	t3,40(a1)
   1d5e8:	0305b303          	ld	t1,48(a1)
   1d5ec:	0385b803          	ld	a6,56(a1)
   1d5f0:	0405b683          	ld	a3,64(a1)
   1d5f4:	04870713          	add	a4,a4,72
   1d5f8:	40e607b3          	sub	a5,a2,a4
   1d5fc:	fa773c23          	sd	t2,-72(a4)
   1d600:	fc573023          	sd	t0,-64(a4)
   1d604:	fdf73423          	sd	t6,-56(a4)
   1d608:	fde73823          	sd	t5,-48(a4)
   1d60c:	fdd73c23          	sd	t4,-40(a4)
   1d610:	ffc73023          	sd	t3,-32(a4)
   1d614:	fe673423          	sd	t1,-24(a4)
   1d618:	ff073823          	sd	a6,-16(a4)
   1d61c:	fed73c23          	sd	a3,-8(a4)
   1d620:	04858593          	add	a1,a1,72
   1d624:	faf446e3          	blt	s0,a5,1d5d0 <memcpy+0xd8>
   1d628:	00058693          	mv	a3,a1
   1d62c:	00070793          	mv	a5,a4
   1d630:	02c77863          	bgeu	a4,a2,1d660 <memcpy+0x168>
   1d634:	0006b803          	ld	a6,0(a3)
   1d638:	00878793          	add	a5,a5,8
   1d63c:	00868693          	add	a3,a3,8
   1d640:	ff07bc23          	sd	a6,-8(a5)
   1d644:	fec7e8e3          	bltu	a5,a2,1d634 <memcpy+0x13c>
   1d648:	fff60793          	add	a5,a2,-1
   1d64c:	40e787b3          	sub	a5,a5,a4
   1d650:	ff87f793          	and	a5,a5,-8
   1d654:	00878793          	add	a5,a5,8
   1d658:	00f70733          	add	a4,a4,a5
   1d65c:	00f585b3          	add	a1,a1,a5
   1d660:	01176863          	bltu	a4,a7,1d670 <memcpy+0x178>
   1d664:	00813403          	ld	s0,8(sp)
   1d668:	01010113          	add	sp,sp,16
   1d66c:	00008067          	ret
   1d670:	0005c783          	lbu	a5,0(a1)
   1d674:	00170713          	add	a4,a4,1
   1d678:	00158593          	add	a1,a1,1
   1d67c:	fef70fa3          	sb	a5,-1(a4)
   1d680:	fee882e3          	beq	a7,a4,1d664 <memcpy+0x16c>
   1d684:	0005c783          	lbu	a5,0(a1)
   1d688:	00170713          	add	a4,a4,1
   1d68c:	00158593          	add	a1,a1,1
   1d690:	fef70fa3          	sb	a5,-1(a4)
   1d694:	fce89ee3          	bne	a7,a4,1d670 <memcpy+0x178>
   1d698:	fcdff06f          	j	1d664 <memcpy+0x16c>

000000000001d69c <memmove>:
   1d69c:	02a5f663          	bgeu	a1,a0,1d6c8 <memmove+0x2c>
   1d6a0:	00c58733          	add	a4,a1,a2
   1d6a4:	02e57263          	bgeu	a0,a4,1d6c8 <memmove+0x2c>
   1d6a8:	00c507b3          	add	a5,a0,a2
   1d6ac:	04060663          	beqz	a2,1d6f8 <memmove+0x5c>
   1d6b0:	fff74683          	lbu	a3,-1(a4)
   1d6b4:	fff78793          	add	a5,a5,-1
   1d6b8:	fff70713          	add	a4,a4,-1
   1d6bc:	00d78023          	sb	a3,0(a5)
   1d6c0:	fef518e3          	bne	a0,a5,1d6b0 <memmove+0x14>
   1d6c4:	00008067          	ret
   1d6c8:	01f00793          	li	a5,31
   1d6cc:	02c7e863          	bltu	a5,a2,1d6fc <memmove+0x60>
   1d6d0:	00050793          	mv	a5,a0
   1d6d4:	fff60693          	add	a3,a2,-1
   1d6d8:	0c060a63          	beqz	a2,1d7ac <memmove+0x110>
   1d6dc:	00168693          	add	a3,a3,1
   1d6e0:	00d786b3          	add	a3,a5,a3
   1d6e4:	0005c703          	lbu	a4,0(a1)
   1d6e8:	00178793          	add	a5,a5,1
   1d6ec:	00158593          	add	a1,a1,1
   1d6f0:	fee78fa3          	sb	a4,-1(a5)
   1d6f4:	fed798e3          	bne	a5,a3,1d6e4 <memmove+0x48>
   1d6f8:	00008067          	ret
   1d6fc:	00b567b3          	or	a5,a0,a1
   1d700:	0077f793          	and	a5,a5,7
   1d704:	08079e63          	bnez	a5,1d7a0 <memmove+0x104>
   1d708:	fe060893          	add	a7,a2,-32
   1d70c:	fe08f893          	and	a7,a7,-32
   1d710:	02088893          	add	a7,a7,32
   1d714:	011507b3          	add	a5,a0,a7
   1d718:	00058693          	mv	a3,a1
   1d71c:	00050713          	mv	a4,a0
   1d720:	0006b803          	ld	a6,0(a3)
   1d724:	02068693          	add	a3,a3,32
   1d728:	02070713          	add	a4,a4,32
   1d72c:	ff073023          	sd	a6,-32(a4)
   1d730:	fe86b803          	ld	a6,-24(a3)
   1d734:	ff073423          	sd	a6,-24(a4)
   1d738:	ff06b803          	ld	a6,-16(a3)
   1d73c:	ff073823          	sd	a6,-16(a4)
   1d740:	ff86b803          	ld	a6,-8(a3)
   1d744:	ff073c23          	sd	a6,-8(a4)
   1d748:	fcf71ce3          	bne	a4,a5,1d720 <memmove+0x84>
   1d74c:	01867713          	and	a4,a2,24
   1d750:	011585b3          	add	a1,a1,a7
   1d754:	01f67813          	and	a6,a2,31
   1d758:	04070c63          	beqz	a4,1d7b0 <memmove+0x114>
   1d75c:	00058693          	mv	a3,a1
   1d760:	00078713          	mv	a4,a5
   1d764:	01078eb3          	add	t4,a5,a6
   1d768:	00700e13          	li	t3,7
   1d76c:	0006b303          	ld	t1,0(a3)
   1d770:	00870713          	add	a4,a4,8
   1d774:	40ee88b3          	sub	a7,t4,a4
   1d778:	fe673c23          	sd	t1,-8(a4)
   1d77c:	00868693          	add	a3,a3,8
   1d780:	ff1e66e3          	bltu	t3,a7,1d76c <memmove+0xd0>
   1d784:	ff880713          	add	a4,a6,-8
   1d788:	ff877713          	and	a4,a4,-8
   1d78c:	00870713          	add	a4,a4,8
   1d790:	00767613          	and	a2,a2,7
   1d794:	00e787b3          	add	a5,a5,a4
   1d798:	00e585b3          	add	a1,a1,a4
   1d79c:	f39ff06f          	j	1d6d4 <memmove+0x38>
   1d7a0:	fff60693          	add	a3,a2,-1
   1d7a4:	00050793          	mv	a5,a0
   1d7a8:	f35ff06f          	j	1d6dc <memmove+0x40>
   1d7ac:	00008067          	ret
   1d7b0:	00080613          	mv	a2,a6
   1d7b4:	f21ff06f          	j	1d6d4 <memmove+0x38>

000000000001d7b8 <_read_r>:
   1d7b8:	fe010113          	add	sp,sp,-32
   1d7bc:	00058713          	mv	a4,a1
   1d7c0:	00813823          	sd	s0,16(sp)
   1d7c4:	00913423          	sd	s1,8(sp)
   1d7c8:	00060593          	mv	a1,a2
   1d7cc:	00050413          	mv	s0,a0
   1d7d0:	00068613          	mv	a2,a3
   1d7d4:	00070513          	mv	a0,a4
   1d7d8:	00113c23          	sd	ra,24(sp)
   1d7dc:	7801a823          	sw	zero,1936(gp) # 24da8 <errno>
   1d7e0:	488020ef          	jal	1fc68 <_read>
   1d7e4:	fff00793          	li	a5,-1
   1d7e8:	00f50c63          	beq	a0,a5,1d800 <_read_r+0x48>
   1d7ec:	01813083          	ld	ra,24(sp)
   1d7f0:	01013403          	ld	s0,16(sp)
   1d7f4:	00813483          	ld	s1,8(sp)
   1d7f8:	02010113          	add	sp,sp,32
   1d7fc:	00008067          	ret
   1d800:	7901a783          	lw	a5,1936(gp) # 24da8 <errno>
   1d804:	fe0784e3          	beqz	a5,1d7ec <_read_r+0x34>
   1d808:	01813083          	ld	ra,24(sp)
   1d80c:	00f42023          	sw	a5,0(s0)
   1d810:	01013403          	ld	s0,16(sp)
   1d814:	00813483          	ld	s1,8(sp)
   1d818:	02010113          	add	sp,sp,32
   1d81c:	00008067          	ret

000000000001d820 <_realloc_r>:
   1d820:	fb010113          	add	sp,sp,-80
   1d824:	03213823          	sd	s2,48(sp)
   1d828:	04113423          	sd	ra,72(sp)
   1d82c:	04813023          	sd	s0,64(sp)
   1d830:	02913c23          	sd	s1,56(sp)
   1d834:	03313423          	sd	s3,40(sp)
   1d838:	03413023          	sd	s4,32(sp)
   1d83c:	01513c23          	sd	s5,24(sp)
   1d840:	01613823          	sd	s6,16(sp)
   1d844:	01713423          	sd	s7,8(sp)
   1d848:	01813023          	sd	s8,0(sp)
   1d84c:	00060913          	mv	s2,a2
   1d850:	1c058663          	beqz	a1,1da1c <_realloc_r+0x1fc>
   1d854:	00058413          	mv	s0,a1
   1d858:	00050993          	mv	s3,a0
   1d85c:	b81f90ef          	jal	173dc <__malloc_lock>
   1d860:	ff843783          	ld	a5,-8(s0)
   1d864:	01790493          	add	s1,s2,23
   1d868:	02e00713          	li	a4,46
   1d86c:	ff040a93          	add	s5,s0,-16
   1d870:	ffc7fa13          	and	s4,a5,-4
   1d874:	0e977a63          	bgeu	a4,s1,1d968 <_realloc_r+0x148>
   1d878:	80000737          	lui	a4,0x80000
   1d87c:	ff04f493          	and	s1,s1,-16
   1d880:	fff74713          	not	a4,a4
   1d884:	0e976663          	bltu	a4,s1,1d970 <_realloc_r+0x150>
   1d888:	0f24e463          	bltu	s1,s2,1d970 <_realloc_r+0x150>
   1d88c:	109a5463          	bge	s4,s1,1d994 <_realloc_r+0x174>
   1d890:	00024737          	lui	a4,0x24
   1d894:	52070c13          	add	s8,a4,1312 # 24520 <__malloc_av_>
   1d898:	010c3603          	ld	a2,16(s8)
   1d89c:	014a86b3          	add	a3,s5,s4
   1d8a0:	0086b703          	ld	a4,8(a3)
   1d8a4:	1cd60e63          	beq	a2,a3,1da80 <_realloc_r+0x260>
   1d8a8:	ffe77613          	and	a2,a4,-2
   1d8ac:	00c68633          	add	a2,a3,a2
   1d8b0:	00863603          	ld	a2,8(a2)
   1d8b4:	00167613          	and	a2,a2,1
   1d8b8:	14061463          	bnez	a2,1da00 <_realloc_r+0x1e0>
   1d8bc:	ffc77713          	and	a4,a4,-4
   1d8c0:	00ea0633          	add	a2,s4,a4
   1d8c4:	0a965e63          	bge	a2,s1,1d980 <_realloc_r+0x160>
   1d8c8:	0017f793          	and	a5,a5,1
   1d8cc:	02079463          	bnez	a5,1d8f4 <_realloc_r+0xd4>
   1d8d0:	ff043b83          	ld	s7,-16(s0)
   1d8d4:	417a8bb3          	sub	s7,s5,s7
   1d8d8:	008bb783          	ld	a5,8(s7)
   1d8dc:	ffc7f793          	and	a5,a5,-4
   1d8e0:	00f70733          	add	a4,a4,a5
   1d8e4:	01470b33          	add	s6,a4,s4
   1d8e8:	329b5463          	bge	s6,s1,1dc10 <_realloc_r+0x3f0>
   1d8ec:	00fa0b33          	add	s6,s4,a5
   1d8f0:	289b5663          	bge	s6,s1,1db7c <_realloc_r+0x35c>
   1d8f4:	00090593          	mv	a1,s2
   1d8f8:	00098513          	mv	a0,s3
   1d8fc:	9d0f90ef          	jal	16acc <_malloc_r>
   1d900:	00050913          	mv	s2,a0
   1d904:	40050263          	beqz	a0,1dd08 <_realloc_r+0x4e8>
   1d908:	ff843783          	ld	a5,-8(s0)
   1d90c:	ff050713          	add	a4,a0,-16
   1d910:	ffe7f793          	and	a5,a5,-2
   1d914:	00fa87b3          	add	a5,s5,a5
   1d918:	24e78a63          	beq	a5,a4,1db6c <_realloc_r+0x34c>
   1d91c:	ff8a0613          	add	a2,s4,-8
   1d920:	04800793          	li	a5,72
   1d924:	2ec7e063          	bltu	a5,a2,1dc04 <_realloc_r+0x3e4>
   1d928:	02700713          	li	a4,39
   1d92c:	20c76e63          	bltu	a4,a2,1db48 <_realloc_r+0x328>
   1d930:	00050793          	mv	a5,a0
   1d934:	00040713          	mv	a4,s0
   1d938:	00073683          	ld	a3,0(a4)
   1d93c:	00d7b023          	sd	a3,0(a5)
   1d940:	00873683          	ld	a3,8(a4)
   1d944:	00d7b423          	sd	a3,8(a5)
   1d948:	01073703          	ld	a4,16(a4)
   1d94c:	00e7b823          	sd	a4,16(a5)
   1d950:	00098513          	mv	a0,s3
   1d954:	00040593          	mv	a1,s0
   1d958:	cb5f50ef          	jal	1360c <_free_r>
   1d95c:	00098513          	mv	a0,s3
   1d960:	a81f90ef          	jal	173e0 <__malloc_unlock>
   1d964:	0680006f          	j	1d9cc <_realloc_r+0x1ac>
   1d968:	02000493          	li	s1,32
   1d96c:	f324f0e3          	bgeu	s1,s2,1d88c <_realloc_r+0x6c>
   1d970:	00c00793          	li	a5,12
   1d974:	00f9a023          	sw	a5,0(s3)
   1d978:	00000913          	li	s2,0
   1d97c:	0500006f          	j	1d9cc <_realloc_r+0x1ac>
   1d980:	0186b783          	ld	a5,24(a3)
   1d984:	0106b703          	ld	a4,16(a3)
   1d988:	00060a13          	mv	s4,a2
   1d98c:	00f73c23          	sd	a5,24(a4)
   1d990:	00e7b823          	sd	a4,16(a5)
   1d994:	008ab783          	ld	a5,8(s5) # ffffffff80000008 <__BSS_END__+0xffffffff7ffdb1f0>
   1d998:	409a06b3          	sub	a3,s4,s1
   1d99c:	01f00613          	li	a2,31
   1d9a0:	0017f793          	and	a5,a5,1
   1d9a4:	014a8733          	add	a4,s5,s4
   1d9a8:	0ad66463          	bltu	a2,a3,1da50 <_realloc_r+0x230>
   1d9ac:	0147e7b3          	or	a5,a5,s4
   1d9b0:	00fab423          	sd	a5,8(s5)
   1d9b4:	00873783          	ld	a5,8(a4)
   1d9b8:	0017e793          	or	a5,a5,1
   1d9bc:	00f73423          	sd	a5,8(a4)
   1d9c0:	00098513          	mv	a0,s3
   1d9c4:	a1df90ef          	jal	173e0 <__malloc_unlock>
   1d9c8:	00040913          	mv	s2,s0
   1d9cc:	04813083          	ld	ra,72(sp)
   1d9d0:	04013403          	ld	s0,64(sp)
   1d9d4:	03813483          	ld	s1,56(sp)
   1d9d8:	02813983          	ld	s3,40(sp)
   1d9dc:	02013a03          	ld	s4,32(sp)
   1d9e0:	01813a83          	ld	s5,24(sp)
   1d9e4:	01013b03          	ld	s6,16(sp)
   1d9e8:	00813b83          	ld	s7,8(sp)
   1d9ec:	00013c03          	ld	s8,0(sp)
   1d9f0:	00090513          	mv	a0,s2
   1d9f4:	03013903          	ld	s2,48(sp)
   1d9f8:	05010113          	add	sp,sp,80
   1d9fc:	00008067          	ret
   1da00:	0017f793          	and	a5,a5,1
   1da04:	ee0798e3          	bnez	a5,1d8f4 <_realloc_r+0xd4>
   1da08:	ff043b83          	ld	s7,-16(s0)
   1da0c:	417a8bb3          	sub	s7,s5,s7
   1da10:	008bb783          	ld	a5,8(s7)
   1da14:	ffc7f793          	and	a5,a5,-4
   1da18:	ed5ff06f          	j	1d8ec <_realloc_r+0xcc>
   1da1c:	04013403          	ld	s0,64(sp)
   1da20:	04813083          	ld	ra,72(sp)
   1da24:	03813483          	ld	s1,56(sp)
   1da28:	03013903          	ld	s2,48(sp)
   1da2c:	02813983          	ld	s3,40(sp)
   1da30:	02013a03          	ld	s4,32(sp)
   1da34:	01813a83          	ld	s5,24(sp)
   1da38:	01013b03          	ld	s6,16(sp)
   1da3c:	00813b83          	ld	s7,8(sp)
   1da40:	00013c03          	ld	s8,0(sp)
   1da44:	00060593          	mv	a1,a2
   1da48:	05010113          	add	sp,sp,80
   1da4c:	880f906f          	j	16acc <_malloc_r>
   1da50:	0097e7b3          	or	a5,a5,s1
   1da54:	00fab423          	sd	a5,8(s5)
   1da58:	009a85b3          	add	a1,s5,s1
   1da5c:	0016e693          	or	a3,a3,1
   1da60:	00d5b423          	sd	a3,8(a1)
   1da64:	00873783          	ld	a5,8(a4)
   1da68:	01058593          	add	a1,a1,16
   1da6c:	00098513          	mv	a0,s3
   1da70:	0017e793          	or	a5,a5,1
   1da74:	00f73423          	sd	a5,8(a4)
   1da78:	b95f50ef          	jal	1360c <_free_r>
   1da7c:	f45ff06f          	j	1d9c0 <_realloc_r+0x1a0>
   1da80:	ffc77713          	and	a4,a4,-4
   1da84:	014706b3          	add	a3,a4,s4
   1da88:	02048613          	add	a2,s1,32
   1da8c:	22c6de63          	bge	a3,a2,1dcc8 <_realloc_r+0x4a8>
   1da90:	0017f793          	and	a5,a5,1
   1da94:	e60790e3          	bnez	a5,1d8f4 <_realloc_r+0xd4>
   1da98:	ff043b83          	ld	s7,-16(s0)
   1da9c:	417a8bb3          	sub	s7,s5,s7
   1daa0:	008bb783          	ld	a5,8(s7)
   1daa4:	ffc7f793          	and	a5,a5,-4
   1daa8:	00f70733          	add	a4,a4,a5
   1daac:	01470b33          	add	s6,a4,s4
   1dab0:	e2cb4ee3          	blt	s6,a2,1d8ec <_realloc_r+0xcc>
   1dab4:	018bb783          	ld	a5,24(s7)
   1dab8:	010bb703          	ld	a4,16(s7)
   1dabc:	ff8a0613          	add	a2,s4,-8
   1dac0:	04800693          	li	a3,72
   1dac4:	00f73c23          	sd	a5,24(a4)
   1dac8:	00e7b823          	sd	a4,16(a5)
   1dacc:	010b8913          	add	s2,s7,16
   1dad0:	26c6e263          	bltu	a3,a2,1dd34 <_realloc_r+0x514>
   1dad4:	02700713          	li	a4,39
   1dad8:	00090793          	mv	a5,s2
   1dadc:	02c77263          	bgeu	a4,a2,1db00 <_realloc_r+0x2e0>
   1dae0:	00043703          	ld	a4,0(s0)
   1dae4:	03700793          	li	a5,55
   1dae8:	00ebb823          	sd	a4,16(s7)
   1daec:	00843703          	ld	a4,8(s0)
   1daf0:	00ebbc23          	sd	a4,24(s7)
   1daf4:	24c7e863          	bltu	a5,a2,1dd44 <_realloc_r+0x524>
   1daf8:	01040413          	add	s0,s0,16
   1dafc:	020b8793          	add	a5,s7,32
   1db00:	00043703          	ld	a4,0(s0)
   1db04:	00e7b023          	sd	a4,0(a5)
   1db08:	00843703          	ld	a4,8(s0)
   1db0c:	00e7b423          	sd	a4,8(a5)
   1db10:	01043703          	ld	a4,16(s0)
   1db14:	00e7b823          	sd	a4,16(a5)
   1db18:	009b8733          	add	a4,s7,s1
   1db1c:	409b07b3          	sub	a5,s6,s1
   1db20:	00ec3823          	sd	a4,16(s8)
   1db24:	0017e793          	or	a5,a5,1
   1db28:	00f73423          	sd	a5,8(a4)
   1db2c:	008bb783          	ld	a5,8(s7)
   1db30:	00098513          	mv	a0,s3
   1db34:	0017f793          	and	a5,a5,1
   1db38:	0097e7b3          	or	a5,a5,s1
   1db3c:	00fbb423          	sd	a5,8(s7)
   1db40:	8a1f90ef          	jal	173e0 <__malloc_unlock>
   1db44:	e89ff06f          	j	1d9cc <_realloc_r+0x1ac>
   1db48:	00043683          	ld	a3,0(s0)
   1db4c:	03700713          	li	a4,55
   1db50:	00d53023          	sd	a3,0(a0)
   1db54:	00843683          	ld	a3,8(s0)
   1db58:	00d53423          	sd	a3,8(a0)
   1db5c:	14c76663          	bltu	a4,a2,1dca8 <_realloc_r+0x488>
   1db60:	01040713          	add	a4,s0,16
   1db64:	01050793          	add	a5,a0,16
   1db68:	dd1ff06f          	j	1d938 <_realloc_r+0x118>
   1db6c:	ff853783          	ld	a5,-8(a0)
   1db70:	ffc7f793          	and	a5,a5,-4
   1db74:	00fa0a33          	add	s4,s4,a5
   1db78:	e1dff06f          	j	1d994 <_realloc_r+0x174>
   1db7c:	018bb783          	ld	a5,24(s7)
   1db80:	010bb703          	ld	a4,16(s7)
   1db84:	ff8a0613          	add	a2,s4,-8
   1db88:	04800693          	li	a3,72
   1db8c:	00f73c23          	sd	a5,24(a4)
   1db90:	00e7b823          	sd	a4,16(a5)
   1db94:	010b8913          	add	s2,s7,16
   1db98:	10c6e063          	bltu	a3,a2,1dc98 <_realloc_r+0x478>
   1db9c:	02700713          	li	a4,39
   1dba0:	00090793          	mv	a5,s2
   1dba4:	02c77c63          	bgeu	a4,a2,1dbdc <_realloc_r+0x3bc>
   1dba8:	00043703          	ld	a4,0(s0)
   1dbac:	03700793          	li	a5,55
   1dbb0:	00ebb823          	sd	a4,16(s7)
   1dbb4:	00843703          	ld	a4,8(s0)
   1dbb8:	00ebbc23          	sd	a4,24(s7)
   1dbbc:	14c7f063          	bgeu	a5,a2,1dcfc <_realloc_r+0x4dc>
   1dbc0:	01043783          	ld	a5,16(s0)
   1dbc4:	02fbb023          	sd	a5,32(s7)
   1dbc8:	01843783          	ld	a5,24(s0)
   1dbcc:	02fbb423          	sd	a5,40(s7)
   1dbd0:	0ad60663          	beq	a2,a3,1dc7c <_realloc_r+0x45c>
   1dbd4:	02040413          	add	s0,s0,32
   1dbd8:	030b8793          	add	a5,s7,48
   1dbdc:	00043703          	ld	a4,0(s0)
   1dbe0:	00e7b023          	sd	a4,0(a5)
   1dbe4:	00843703          	ld	a4,8(s0)
   1dbe8:	00e7b423          	sd	a4,8(a5)
   1dbec:	01043703          	ld	a4,16(s0)
   1dbf0:	00e7b823          	sd	a4,16(a5)
   1dbf4:	00090413          	mv	s0,s2
   1dbf8:	000b0a13          	mv	s4,s6
   1dbfc:	000b8a93          	mv	s5,s7
   1dc00:	d95ff06f          	j	1d994 <_realloc_r+0x174>
   1dc04:	00040593          	mv	a1,s0
   1dc08:	a95ff0ef          	jal	1d69c <memmove>
   1dc0c:	d45ff06f          	j	1d950 <_realloc_r+0x130>
   1dc10:	0186b783          	ld	a5,24(a3)
   1dc14:	0106b703          	ld	a4,16(a3)
   1dc18:	ff8a0613          	add	a2,s4,-8
   1dc1c:	04800693          	li	a3,72
   1dc20:	00f73c23          	sd	a5,24(a4)
   1dc24:	00e7b823          	sd	a4,16(a5)
   1dc28:	010bb703          	ld	a4,16(s7)
   1dc2c:	018bb783          	ld	a5,24(s7)
   1dc30:	010b8913          	add	s2,s7,16
   1dc34:	00f73c23          	sd	a5,24(a4)
   1dc38:	00e7b823          	sd	a4,16(a5)
   1dc3c:	04c6ee63          	bltu	a3,a2,1dc98 <_realloc_r+0x478>
   1dc40:	02700713          	li	a4,39
   1dc44:	00090793          	mv	a5,s2
   1dc48:	f8c77ae3          	bgeu	a4,a2,1dbdc <_realloc_r+0x3bc>
   1dc4c:	00043703          	ld	a4,0(s0)
   1dc50:	03700793          	li	a5,55
   1dc54:	00ebb823          	sd	a4,16(s7)
   1dc58:	00843703          	ld	a4,8(s0)
   1dc5c:	00ebbc23          	sd	a4,24(s7)
   1dc60:	08c7fe63          	bgeu	a5,a2,1dcfc <_realloc_r+0x4dc>
   1dc64:	01043703          	ld	a4,16(s0)
   1dc68:	04800793          	li	a5,72
   1dc6c:	02ebb023          	sd	a4,32(s7)
   1dc70:	01843703          	ld	a4,24(s0)
   1dc74:	02ebb423          	sd	a4,40(s7)
   1dc78:	f4f61ee3          	bne	a2,a5,1dbd4 <_realloc_r+0x3b4>
   1dc7c:	02043703          	ld	a4,32(s0)
   1dc80:	040b8793          	add	a5,s7,64
   1dc84:	03040413          	add	s0,s0,48
   1dc88:	02ebb823          	sd	a4,48(s7)
   1dc8c:	ff843703          	ld	a4,-8(s0)
   1dc90:	02ebbc23          	sd	a4,56(s7)
   1dc94:	f49ff06f          	j	1dbdc <_realloc_r+0x3bc>
   1dc98:	00040593          	mv	a1,s0
   1dc9c:	00090513          	mv	a0,s2
   1dca0:	9fdff0ef          	jal	1d69c <memmove>
   1dca4:	f51ff06f          	j	1dbf4 <_realloc_r+0x3d4>
   1dca8:	01043703          	ld	a4,16(s0)
   1dcac:	00e53823          	sd	a4,16(a0)
   1dcb0:	01843703          	ld	a4,24(s0)
   1dcb4:	00e53c23          	sd	a4,24(a0)
   1dcb8:	06f60063          	beq	a2,a5,1dd18 <_realloc_r+0x4f8>
   1dcbc:	02040713          	add	a4,s0,32
   1dcc0:	02050793          	add	a5,a0,32
   1dcc4:	c75ff06f          	j	1d938 <_realloc_r+0x118>
   1dcc8:	009a8ab3          	add	s5,s5,s1
   1dccc:	409687b3          	sub	a5,a3,s1
   1dcd0:	015c3823          	sd	s5,16(s8)
   1dcd4:	0017e793          	or	a5,a5,1
   1dcd8:	00fab423          	sd	a5,8(s5)
   1dcdc:	ff843783          	ld	a5,-8(s0)
   1dce0:	00098513          	mv	a0,s3
   1dce4:	00040913          	mv	s2,s0
   1dce8:	0017f793          	and	a5,a5,1
   1dcec:	0097e7b3          	or	a5,a5,s1
   1dcf0:	fef43c23          	sd	a5,-8(s0)
   1dcf4:	eecf90ef          	jal	173e0 <__malloc_unlock>
   1dcf8:	cd5ff06f          	j	1d9cc <_realloc_r+0x1ac>
   1dcfc:	01040413          	add	s0,s0,16
   1dd00:	020b8793          	add	a5,s7,32
   1dd04:	ed9ff06f          	j	1dbdc <_realloc_r+0x3bc>
   1dd08:	00098513          	mv	a0,s3
   1dd0c:	ed4f90ef          	jal	173e0 <__malloc_unlock>
   1dd10:	00000913          	li	s2,0
   1dd14:	cb9ff06f          	j	1d9cc <_realloc_r+0x1ac>
   1dd18:	02043683          	ld	a3,32(s0)
   1dd1c:	03040713          	add	a4,s0,48
   1dd20:	03050793          	add	a5,a0,48
   1dd24:	02d53023          	sd	a3,32(a0)
   1dd28:	02843683          	ld	a3,40(s0)
   1dd2c:	02d53423          	sd	a3,40(a0)
   1dd30:	c09ff06f          	j	1d938 <_realloc_r+0x118>
   1dd34:	00040593          	mv	a1,s0
   1dd38:	00090513          	mv	a0,s2
   1dd3c:	961ff0ef          	jal	1d69c <memmove>
   1dd40:	dd9ff06f          	j	1db18 <_realloc_r+0x2f8>
   1dd44:	01043783          	ld	a5,16(s0)
   1dd48:	02fbb023          	sd	a5,32(s7)
   1dd4c:	01843783          	ld	a5,24(s0)
   1dd50:	02fbb423          	sd	a5,40(s7)
   1dd54:	00d60863          	beq	a2,a3,1dd64 <_realloc_r+0x544>
   1dd58:	02040413          	add	s0,s0,32
   1dd5c:	030b8793          	add	a5,s7,48
   1dd60:	da1ff06f          	j	1db00 <_realloc_r+0x2e0>
   1dd64:	02043703          	ld	a4,32(s0)
   1dd68:	040b8793          	add	a5,s7,64
   1dd6c:	03040413          	add	s0,s0,48
   1dd70:	02ebb823          	sd	a4,48(s7)
   1dd74:	ff843703          	ld	a4,-8(s0)
   1dd78:	02ebbc23          	sd	a4,56(s7)
   1dd7c:	d85ff06f          	j	1db00 <_realloc_r+0x2e0>

000000000001dd80 <cleanup_glue>:
   1dd80:	fd010113          	add	sp,sp,-48
   1dd84:	01213823          	sd	s2,16(sp)
   1dd88:	0005b903          	ld	s2,0(a1)
   1dd8c:	02813023          	sd	s0,32(sp)
   1dd90:	00913c23          	sd	s1,24(sp)
   1dd94:	02113423          	sd	ra,40(sp)
   1dd98:	01313423          	sd	s3,8(sp)
   1dd9c:	01413023          	sd	s4,0(sp)
   1dda0:	00058413          	mv	s0,a1
   1dda4:	00050493          	mv	s1,a0
   1dda8:	04090263          	beqz	s2,1ddec <cleanup_glue+0x6c>
   1ddac:	00093983          	ld	s3,0(s2)
   1ddb0:	02098863          	beqz	s3,1dde0 <cleanup_glue+0x60>
   1ddb4:	0009ba03          	ld	s4,0(s3)
   1ddb8:	000a0e63          	beqz	s4,1ddd4 <cleanup_glue+0x54>
   1ddbc:	000a3583          	ld	a1,0(s4)
   1ddc0:	00058463          	beqz	a1,1ddc8 <cleanup_glue+0x48>
   1ddc4:	fbdff0ef          	jal	1dd80 <cleanup_glue>
   1ddc8:	000a0593          	mv	a1,s4
   1ddcc:	00048513          	mv	a0,s1
   1ddd0:	83df50ef          	jal	1360c <_free_r>
   1ddd4:	00098593          	mv	a1,s3
   1ddd8:	00048513          	mv	a0,s1
   1dddc:	831f50ef          	jal	1360c <_free_r>
   1dde0:	00090593          	mv	a1,s2
   1dde4:	00048513          	mv	a0,s1
   1dde8:	825f50ef          	jal	1360c <_free_r>
   1ddec:	00040593          	mv	a1,s0
   1ddf0:	02013403          	ld	s0,32(sp)
   1ddf4:	02813083          	ld	ra,40(sp)
   1ddf8:	01013903          	ld	s2,16(sp)
   1ddfc:	00813983          	ld	s3,8(sp)
   1de00:	00013a03          	ld	s4,0(sp)
   1de04:	00048513          	mv	a0,s1
   1de08:	01813483          	ld	s1,24(sp)
   1de0c:	03010113          	add	sp,sp,48
   1de10:	ffcf506f          	j	1360c <_free_r>

000000000001de14 <_reclaim_reent>:
   1de14:	7581b783          	ld	a5,1880(gp) # 24d70 <_impure_ptr>
   1de18:	10a78a63          	beq	a5,a0,1df2c <_reclaim_reent+0x118>
   1de1c:	07853583          	ld	a1,120(a0)
   1de20:	fd010113          	add	sp,sp,-48
   1de24:	00913c23          	sd	s1,24(sp)
   1de28:	02113423          	sd	ra,40(sp)
   1de2c:	02813023          	sd	s0,32(sp)
   1de30:	01213823          	sd	s2,16(sp)
   1de34:	01313423          	sd	s3,8(sp)
   1de38:	00050493          	mv	s1,a0
   1de3c:	04058063          	beqz	a1,1de7c <_reclaim_reent+0x68>
   1de40:	00000913          	li	s2,0
   1de44:	20000993          	li	s3,512
   1de48:	012587b3          	add	a5,a1,s2
   1de4c:	0007b403          	ld	s0,0(a5)
   1de50:	00040e63          	beqz	s0,1de6c <_reclaim_reent+0x58>
   1de54:	00040593          	mv	a1,s0
   1de58:	00043403          	ld	s0,0(s0)
   1de5c:	00048513          	mv	a0,s1
   1de60:	facf50ef          	jal	1360c <_free_r>
   1de64:	fe0418e3          	bnez	s0,1de54 <_reclaim_reent+0x40>
   1de68:	0784b583          	ld	a1,120(s1)
   1de6c:	00890913          	add	s2,s2,8
   1de70:	fd391ce3          	bne	s2,s3,1de48 <_reclaim_reent+0x34>
   1de74:	00048513          	mv	a0,s1
   1de78:	f94f50ef          	jal	1360c <_free_r>
   1de7c:	0604b583          	ld	a1,96(s1)
   1de80:	00058663          	beqz	a1,1de8c <_reclaim_reent+0x78>
   1de84:	00048513          	mv	a0,s1
   1de88:	f84f50ef          	jal	1360c <_free_r>
   1de8c:	1f84b403          	ld	s0,504(s1)
   1de90:	02040063          	beqz	s0,1deb0 <_reclaim_reent+0x9c>
   1de94:	20048913          	add	s2,s1,512
   1de98:	01240c63          	beq	s0,s2,1deb0 <_reclaim_reent+0x9c>
   1de9c:	00040593          	mv	a1,s0
   1dea0:	00043403          	ld	s0,0(s0)
   1dea4:	00048513          	mv	a0,s1
   1dea8:	f64f50ef          	jal	1360c <_free_r>
   1deac:	fe8918e3          	bne	s2,s0,1de9c <_reclaim_reent+0x88>
   1deb0:	0884b583          	ld	a1,136(s1)
   1deb4:	00058663          	beqz	a1,1dec0 <_reclaim_reent+0xac>
   1deb8:	00048513          	mv	a0,s1
   1debc:	f50f50ef          	jal	1360c <_free_r>
   1dec0:	0504a783          	lw	a5,80(s1)
   1dec4:	04078663          	beqz	a5,1df10 <_reclaim_reent+0xfc>
   1dec8:	0584b783          	ld	a5,88(s1)
   1decc:	00048513          	mv	a0,s1
   1ded0:	000780e7          	jalr	a5
   1ded4:	5204b403          	ld	s0,1312(s1)
   1ded8:	02040c63          	beqz	s0,1df10 <_reclaim_reent+0xfc>
   1dedc:	00043583          	ld	a1,0(s0)
   1dee0:	00058663          	beqz	a1,1deec <_reclaim_reent+0xd8>
   1dee4:	00048513          	mv	a0,s1
   1dee8:	e99ff0ef          	jal	1dd80 <cleanup_glue>
   1deec:	00040593          	mv	a1,s0
   1def0:	02013403          	ld	s0,32(sp)
   1def4:	02813083          	ld	ra,40(sp)
   1def8:	01013903          	ld	s2,16(sp)
   1defc:	00813983          	ld	s3,8(sp)
   1df00:	00048513          	mv	a0,s1
   1df04:	01813483          	ld	s1,24(sp)
   1df08:	03010113          	add	sp,sp,48
   1df0c:	f00f506f          	j	1360c <_free_r>
   1df10:	02813083          	ld	ra,40(sp)
   1df14:	02013403          	ld	s0,32(sp)
   1df18:	01813483          	ld	s1,24(sp)
   1df1c:	01013903          	ld	s2,16(sp)
   1df20:	00813983          	ld	s3,8(sp)
   1df24:	03010113          	add	sp,sp,48
   1df28:	00008067          	ret
   1df2c:	00008067          	ret

000000000001df30 <__ssprint_r>:
   1df30:	01063783          	ld	a5,16(a2)
   1df34:	fb010113          	add	sp,sp,-80
   1df38:	03313423          	sd	s3,40(sp)
   1df3c:	01513c23          	sd	s5,24(sp)
   1df40:	04113423          	sd	ra,72(sp)
   1df44:	04813023          	sd	s0,64(sp)
   1df48:	02913c23          	sd	s1,56(sp)
   1df4c:	03213823          	sd	s2,48(sp)
   1df50:	03413023          	sd	s4,32(sp)
   1df54:	01613823          	sd	s6,16(sp)
   1df58:	01713423          	sd	s7,8(sp)
   1df5c:	01813023          	sd	s8,0(sp)
   1df60:	00063983          	ld	s3,0(a2)
   1df64:	00060a93          	mv	s5,a2
   1df68:	18078463          	beqz	a5,1e0f0 <__ssprint_r+0x1c0>
   1df6c:	00c5a703          	lw	a4,12(a1)
   1df70:	0005b783          	ld	a5,0(a1)
   1df74:	00050b13          	mv	s6,a0
   1df78:	00058493          	mv	s1,a1
   1df7c:	00000a13          	li	s4,0
   1df80:	00000413          	li	s0,0
   1df84:	00070913          	mv	s2,a4
   1df88:	00078513          	mv	a0,a5
   1df8c:	06040263          	beqz	s0,1dff0 <__ssprint_r+0xc0>
   1df90:	06e47863          	bgeu	s0,a4,1e000 <__ssprint_r+0xd0>
   1df94:	0004071b          	sext.w	a4,s0
   1df98:	00070913          	mv	s2,a4
   1df9c:	00070b93          	mv	s7,a4
   1dfa0:	00078513          	mv	a0,a5
   1dfa4:	000a0593          	mv	a1,s4
   1dfa8:	00090613          	mv	a2,s2
   1dfac:	ef0ff0ef          	jal	1d69c <memmove>
   1dfb0:	00c4a683          	lw	a3,12(s1)
   1dfb4:	0004b783          	ld	a5,0(s1)
   1dfb8:	010ab703          	ld	a4,16(s5)
   1dfbc:	412686bb          	subw	a3,a3,s2
   1dfc0:	012787b3          	add	a5,a5,s2
   1dfc4:	00d4a623          	sw	a3,12(s1)
   1dfc8:	00f4b023          	sd	a5,0(s1)
   1dfcc:	41770733          	sub	a4,a4,s7
   1dfd0:	00eab823          	sd	a4,16(s5)
   1dfd4:	017a0a33          	add	s4,s4,s7
   1dfd8:	41740433          	sub	s0,s0,s7
   1dfdc:	10070a63          	beqz	a4,1e0f0 <__ssprint_r+0x1c0>
   1dfe0:	00c4a703          	lw	a4,12(s1)
   1dfe4:	00078513          	mv	a0,a5
   1dfe8:	00070913          	mv	s2,a4
   1dfec:	fa0412e3          	bnez	s0,1df90 <__ssprint_r+0x60>
   1dff0:	0009ba03          	ld	s4,0(s3)
   1dff4:	0089b403          	ld	s0,8(s3)
   1dff8:	01098993          	add	s3,s3,16
   1dffc:	f89ff06f          	j	1df84 <__ssprint_r+0x54>
   1e000:	01049703          	lh	a4,16(s1)
   1e004:	00040b9b          	sext.w	s7,s0
   1e008:	48077693          	and	a3,a4,1152
   1e00c:	f8068ce3          	beqz	a3,1dfa4 <__ssprint_r+0x74>
   1e010:	0204a603          	lw	a2,32(s1)
   1e014:	0184b583          	ld	a1,24(s1)
   1e018:	0016169b          	sllw	a3,a2,0x1
   1e01c:	00c686bb          	addw	a3,a3,a2
   1e020:	40b787b3          	sub	a5,a5,a1
   1e024:	01f6d91b          	srlw	s2,a3,0x1f
   1e028:	00078b9b          	sext.w	s7,a5
   1e02c:	00d9093b          	addw	s2,s2,a3
   1e030:	001b8693          	add	a3,s7,1
   1e034:	4019591b          	sraw	s2,s2,0x1
   1e038:	008686b3          	add	a3,a3,s0
   1e03c:	00d97663          	bgeu	s2,a3,1e048 <__ssprint_r+0x118>
   1e040:	0017879b          	addw	a5,a5,1
   1e044:	0087893b          	addw	s2,a5,s0
   1e048:	40077713          	and	a4,a4,1024
   1e04c:	06070263          	beqz	a4,1e0b0 <__ssprint_r+0x180>
   1e050:	00090593          	mv	a1,s2
   1e054:	000b0513          	mv	a0,s6
   1e058:	a75f80ef          	jal	16acc <_malloc_r>
   1e05c:	00050c13          	mv	s8,a0
   1e060:	06050863          	beqz	a0,1e0d0 <__ssprint_r+0x1a0>
   1e064:	0184b583          	ld	a1,24(s1)
   1e068:	000b8613          	mv	a2,s7
   1e06c:	c8cff0ef          	jal	1d4f8 <memcpy>
   1e070:	0104d783          	lhu	a5,16(s1)
   1e074:	b7f7f793          	and	a5,a5,-1153
   1e078:	0807e793          	or	a5,a5,128
   1e07c:	00f49823          	sh	a5,16(s1)
   1e080:	017c0533          	add	a0,s8,s7
   1e084:	41790bbb          	subw	s7,s2,s7
   1e088:	0004071b          	sext.w	a4,s0
   1e08c:	0324a023          	sw	s2,32(s1)
   1e090:	0174a623          	sw	s7,12(s1)
   1e094:	0184bc23          	sd	s8,24(s1)
   1e098:	00a4b023          	sd	a0,0(s1)
   1e09c:	00070913          	mv	s2,a4
   1e0a0:	00070b93          	mv	s7,a4
   1e0a4:	00050793          	mv	a5,a0
   1e0a8:	eee47ee3          	bgeu	s0,a4,1dfa4 <__ssprint_r+0x74>
   1e0ac:	eedff06f          	j	1df98 <__ssprint_r+0x68>
   1e0b0:	00090613          	mv	a2,s2
   1e0b4:	000b0513          	mv	a0,s6
   1e0b8:	f68ff0ef          	jal	1d820 <_realloc_r>
   1e0bc:	00050c13          	mv	s8,a0
   1e0c0:	fc0510e3          	bnez	a0,1e080 <__ssprint_r+0x150>
   1e0c4:	0184b583          	ld	a1,24(s1)
   1e0c8:	000b0513          	mv	a0,s6
   1e0cc:	d40f50ef          	jal	1360c <_free_r>
   1e0d0:	0104d783          	lhu	a5,16(s1)
   1e0d4:	00c00713          	li	a4,12
   1e0d8:	00eb2023          	sw	a4,0(s6)
   1e0dc:	0407e793          	or	a5,a5,64
   1e0e0:	00f49823          	sh	a5,16(s1)
   1e0e4:	000ab823          	sd	zero,16(s5)
   1e0e8:	fff00513          	li	a0,-1
   1e0ec:	0080006f          	j	1e0f4 <__ssprint_r+0x1c4>
   1e0f0:	00000513          	li	a0,0
   1e0f4:	04813083          	ld	ra,72(sp)
   1e0f8:	04013403          	ld	s0,64(sp)
   1e0fc:	000aa423          	sw	zero,8(s5)
   1e100:	03813483          	ld	s1,56(sp)
   1e104:	03013903          	ld	s2,48(sp)
   1e108:	02813983          	ld	s3,40(sp)
   1e10c:	02013a03          	ld	s4,32(sp)
   1e110:	01813a83          	ld	s5,24(sp)
   1e114:	01013b03          	ld	s6,16(sp)
   1e118:	00813b83          	ld	s7,8(sp)
   1e11c:	00013c03          	ld	s8,0(sp)
   1e120:	05010113          	add	sp,sp,80
   1e124:	00008067          	ret

000000000001e128 <_svfiprintf_r>:
   1e128:	0105d783          	lhu	a5,16(a1)
   1e12c:	e1010113          	add	sp,sp,-496
   1e130:	1c913c23          	sd	s1,472(sp)
   1e134:	1d313423          	sd	s3,456(sp)
   1e138:	1b713423          	sd	s7,424(sp)
   1e13c:	1b813023          	sd	s8,416(sp)
   1e140:	1e113423          	sd	ra,488(sp)
   1e144:	1e813023          	sd	s0,480(sp)
   1e148:	1d213823          	sd	s2,464(sp)
   1e14c:	1d413023          	sd	s4,448(sp)
   1e150:	1b513c23          	sd	s5,440(sp)
   1e154:	1b613823          	sd	s6,432(sp)
   1e158:	19913c23          	sd	s9,408(sp)
   1e15c:	19a13823          	sd	s10,400(sp)
   1e160:	19b13423          	sd	s11,392(sp)
   1e164:	0807f793          	and	a5,a5,128
   1e168:	00058493          	mv	s1,a1
   1e16c:	00050993          	mv	s3,a0
   1e170:	00060b93          	mv	s7,a2
   1e174:	00068c13          	mv	s8,a3
   1e178:	00078663          	beqz	a5,1e184 <_svfiprintf_r+0x5c>
   1e17c:	0185b783          	ld	a5,24(a1)
   1e180:	700780e3          	beqz	a5,1f080 <_svfiprintf_r+0xf58>
   1e184:	000236b7          	lui	a3,0x23
   1e188:	10010913          	add	s2,sp,256
   1e18c:	00000a93          	li	s5,0
   1e190:	94468693          	add	a3,a3,-1724 # 22944 <_ctype_+0x104>
   1e194:	00023a37          	lui	s4,0x23
   1e198:	09213023          	sd	s2,128(sp)
   1e19c:	08013823          	sd	zero,144(sp)
   1e1a0:	08012423          	sw	zero,136(sp)
   1e1a4:	00000713          	li	a4,0
   1e1a8:	00090793          	mv	a5,s2
   1e1ac:	00013823          	sd	zero,16(sp)
   1e1b0:	04013023          	sd	zero,64(sp)
   1e1b4:	02013c23          	sd	zero,56(sp)
   1e1b8:	04013423          	sd	zero,72(sp)
   1e1bc:	00d13423          	sd	a3,8(sp)
   1e1c0:	01000413          	li	s0,16
   1e1c4:	ab0a0a13          	add	s4,s4,-1360 # 22ab0 <zeroes.0>
   1e1c8:	000a8c93          	mv	s9,s5
   1e1cc:	000b8813          	mv	a6,s7
   1e1d0:	00084683          	lbu	a3,0(a6)
   1e1d4:	1e068e63          	beqz	a3,1e3d0 <_svfiprintf_r+0x2a8>
   1e1d8:	00080b13          	mv	s6,a6
   1e1dc:	02500613          	li	a2,37
   1e1e0:	22c68e63          	beq	a3,a2,1e41c <_svfiprintf_r+0x2f4>
   1e1e4:	001b4683          	lbu	a3,1(s6)
   1e1e8:	001b0b13          	add	s6,s6,1
   1e1ec:	fe069ae3          	bnez	a3,1e1e0 <_svfiprintf_r+0xb8>
   1e1f0:	410b0abb          	subw	s5,s6,a6
   1e1f4:	1c0a8e63          	beqz	s5,1e3d0 <_svfiprintf_r+0x2a8>
   1e1f8:	08812683          	lw	a3,136(sp)
   1e1fc:	01570733          	add	a4,a4,s5
   1e200:	0107b023          	sd	a6,0(a5)
   1e204:	0016861b          	addw	a2,a3,1
   1e208:	0157b423          	sd	s5,8(a5)
   1e20c:	08e13823          	sd	a4,144(sp)
   1e210:	08c12423          	sw	a2,136(sp)
   1e214:	00700693          	li	a3,7
   1e218:	01078793          	add	a5,a5,16
   1e21c:	20c6c863          	blt	a3,a2,1e42c <_svfiprintf_r+0x304>
   1e220:	000b4683          	lbu	a3,0(s6)
   1e224:	015c8cbb          	addw	s9,s9,s5
   1e228:	1a068463          	beqz	a3,1e3d0 <_svfiprintf_r+0x2a8>
   1e22c:	00000e13          	li	t3,0
   1e230:	00000893          	li	a7,0
   1e234:	001b4683          	lbu	a3,1(s6)
   1e238:	001b0813          	add	a6,s6,1
   1e23c:	06010ba3          	sb	zero,119(sp)
   1e240:	fff00a93          	li	s5,-1
   1e244:	05a00b93          	li	s7,90
   1e248:	00088b13          	mv	s6,a7
   1e24c:	000e0d13          	mv	s10,t3
   1e250:	00078d93          	mv	s11,a5
   1e254:	00180813          	add	a6,a6,1
   1e258:	0006869b          	sext.w	a3,a3
   1e25c:	fe06861b          	addw	a2,a3,-32
   1e260:	0006059b          	sext.w	a1,a2
   1e264:	04bbec63          	bltu	s7,a1,1e2bc <_svfiprintf_r+0x194>
   1e268:	00813783          	ld	a5,8(sp)
   1e26c:	02061593          	sll	a1,a2,0x20
   1e270:	01e5d613          	srl	a2,a1,0x1e
   1e274:	00f60633          	add	a2,a2,a5
   1e278:	00062603          	lw	a2,0(a2)
   1e27c:	00060067          	jr	a2
   1e280:	00000d13          	li	s10,0
   1e284:	00900513          	li	a0,9
   1e288:	00084583          	lbu	a1,0(a6)
   1e28c:	002d161b          	sllw	a2,s10,0x2
   1e290:	01a60e3b          	addw	t3,a2,s10
   1e294:	fd06869b          	addw	a3,a3,-48
   1e298:	001e1e1b          	sllw	t3,t3,0x1
   1e29c:	fd05861b          	addw	a2,a1,-48
   1e2a0:	01c68d3b          	addw	s10,a3,t3
   1e2a4:	00180813          	add	a6,a6,1
   1e2a8:	0005869b          	sext.w	a3,a1
   1e2ac:	fcc57ee3          	bgeu	a0,a2,1e288 <_svfiprintf_r+0x160>
   1e2b0:	fe06861b          	addw	a2,a3,-32
   1e2b4:	0006059b          	sext.w	a1,a2
   1e2b8:	fabbf8e3          	bgeu	s7,a1,1e268 <_svfiprintf_r+0x140>
   1e2bc:	000b0893          	mv	a7,s6
   1e2c0:	000d0e13          	mv	t3,s10
   1e2c4:	000d8793          	mv	a5,s11
   1e2c8:	10068463          	beqz	a3,1e3d0 <_svfiprintf_r+0x2a8>
   1e2cc:	08d10c23          	sb	a3,152(sp)
   1e2d0:	06010ba3          	sb	zero,119(sp)
   1e2d4:	00100d93          	li	s11,1
   1e2d8:	00100d13          	li	s10,1
   1e2dc:	09810b93          	add	s7,sp,152
   1e2e0:	00000a93          	li	s5,0
   1e2e4:	0028f293          	and	t0,a7,2
   1e2e8:	00028463          	beqz	t0,1e2f0 <_svfiprintf_r+0x1c8>
   1e2ec:	002d8d9b          	addw	s11,s11,2
   1e2f0:	0848ff93          	and	t6,a7,132
   1e2f4:	08812683          	lw	a3,136(sp)
   1e2f8:	000f9663          	bnez	t6,1e304 <_svfiprintf_r+0x1dc>
   1e2fc:	41be0b3b          	subw	s6,t3,s11
   1e300:	0f6044e3          	bgtz	s6,1ebe8 <_svfiprintf_r+0xac0>
   1e304:	07714603          	lbu	a2,119(sp)
   1e308:	02060863          	beqz	a2,1e338 <_svfiprintf_r+0x210>
   1e30c:	07710593          	add	a1,sp,119
   1e310:	00b7b023          	sd	a1,0(a5)
   1e314:	0016869b          	addw	a3,a3,1
   1e318:	00170713          	add	a4,a4,1
   1e31c:	00100593          	li	a1,1
   1e320:	00b7b423          	sd	a1,8(a5)
   1e324:	08e13823          	sd	a4,144(sp)
   1e328:	08d12423          	sw	a3,136(sp)
   1e32c:	00700613          	li	a2,7
   1e330:	01078793          	add	a5,a5,16
   1e334:	16d64463          	blt	a2,a3,1e49c <_svfiprintf_r+0x374>
   1e338:	02028863          	beqz	t0,1e368 <_svfiprintf_r+0x240>
   1e33c:	07810593          	add	a1,sp,120
   1e340:	00b7b023          	sd	a1,0(a5)
   1e344:	0016869b          	addw	a3,a3,1
   1e348:	00270713          	add	a4,a4,2
   1e34c:	00200593          	li	a1,2
   1e350:	00b7b423          	sd	a1,8(a5)
   1e354:	08e13823          	sd	a4,144(sp)
   1e358:	08d12423          	sw	a3,136(sp)
   1e35c:	00700613          	li	a2,7
   1e360:	01078793          	add	a5,a5,16
   1e364:	1ad644e3          	blt	a2,a3,1ed0c <_svfiprintf_r+0xbe4>
   1e368:	08000613          	li	a2,128
   1e36c:	5ecf8263          	beq	t6,a2,1e950 <_svfiprintf_r+0x828>
   1e370:	41aa8b3b          	subw	s6,s5,s10
   1e374:	6f604663          	bgtz	s6,1ea60 <_svfiprintf_r+0x938>
   1e378:	0016861b          	addw	a2,a3,1
   1e37c:	01a70733          	add	a4,a4,s10
   1e380:	0177b023          	sd	s7,0(a5)
   1e384:	01a7b423          	sd	s10,8(a5)
   1e388:	08e13823          	sd	a4,144(sp)
   1e38c:	08c12423          	sw	a2,136(sp)
   1e390:	00700693          	li	a3,7
   1e394:	01078793          	add	a5,a5,16
   1e398:	7ac6c663          	blt	a3,a2,1eb44 <_svfiprintf_r+0xa1c>
   1e39c:	0048f893          	and	a7,a7,4
   1e3a0:	00088663          	beqz	a7,1e3ac <_svfiprintf_r+0x284>
   1e3a4:	41be0abb          	subw	s5,t3,s11
   1e3a8:	1b5044e3          	bgtz	s5,1ed50 <_svfiprintf_r+0xc28>
   1e3ac:	000e0793          	mv	a5,t3
   1e3b0:	01be5463          	bge	t3,s11,1e3b8 <_svfiprintf_r+0x290>
   1e3b4:	000d8793          	mv	a5,s11
   1e3b8:	01978cbb          	addw	s9,a5,s9
   1e3bc:	7c071063          	bnez	a4,1eb7c <_svfiprintf_r+0xa54>
   1e3c0:	00084683          	lbu	a3,0(a6)
   1e3c4:	08012423          	sw	zero,136(sp)
   1e3c8:	00090793          	mv	a5,s2
   1e3cc:	e00696e3          	bnez	a3,1e1d8 <_svfiprintf_r+0xb0>
   1e3d0:	000c8a93          	mv	s5,s9
   1e3d4:	06070e63          	beqz	a4,1e450 <_svfiprintf_r+0x328>
   1e3d8:	08010613          	add	a2,sp,128
   1e3dc:	00048593          	mv	a1,s1
   1e3e0:	00098513          	mv	a0,s3
   1e3e4:	b4dff0ef          	jal	1df30 <__ssprint_r>
   1e3e8:	0680006f          	j	1e450 <_svfiprintf_r+0x328>
   1e3ec:	010b6893          	or	a7,s6,16
   1e3f0:	00084683          	lbu	a3,0(a6)
   1e3f4:	00088b1b          	sext.w	s6,a7
   1e3f8:	e5dff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1e3fc:	000c2d03          	lw	s10,0(s8)
   1e400:	008c0c13          	add	s8,s8,8
   1e404:	460d5a63          	bgez	s10,1e878 <_svfiprintf_r+0x750>
   1e408:	41a00d3b          	negw	s10,s10
   1e40c:	004b6893          	or	a7,s6,4
   1e410:	00084683          	lbu	a3,0(a6)
   1e414:	00088b1b          	sext.w	s6,a7
   1e418:	e3dff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1e41c:	410b0abb          	subw	s5,s6,a6
   1e420:	dc0a9ce3          	bnez	s5,1e1f8 <_svfiprintf_r+0xd0>
   1e424:	000b4683          	lbu	a3,0(s6)
   1e428:	e01ff06f          	j	1e228 <_svfiprintf_r+0x100>
   1e42c:	08010613          	add	a2,sp,128
   1e430:	00048593          	mv	a1,s1
   1e434:	00098513          	mv	a0,s3
   1e438:	af9ff0ef          	jal	1df30 <__ssprint_r>
   1e43c:	00051863          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1e440:	09013703          	ld	a4,144(sp)
   1e444:	00090793          	mv	a5,s2
   1e448:	dd9ff06f          	j	1e220 <_svfiprintf_r+0xf8>
   1e44c:	000c8a93          	mv	s5,s9
   1e450:	0104d783          	lhu	a5,16(s1)
   1e454:	0407f793          	and	a5,a5,64
   1e458:	58079ae3          	bnez	a5,1f1ec <_svfiprintf_r+0x10c4>
   1e45c:	1e813083          	ld	ra,488(sp)
   1e460:	1e013403          	ld	s0,480(sp)
   1e464:	1d813483          	ld	s1,472(sp)
   1e468:	1d013903          	ld	s2,464(sp)
   1e46c:	1c813983          	ld	s3,456(sp)
   1e470:	1c013a03          	ld	s4,448(sp)
   1e474:	1b013b03          	ld	s6,432(sp)
   1e478:	1a813b83          	ld	s7,424(sp)
   1e47c:	1a013c03          	ld	s8,416(sp)
   1e480:	19813c83          	ld	s9,408(sp)
   1e484:	19013d03          	ld	s10,400(sp)
   1e488:	18813d83          	ld	s11,392(sp)
   1e48c:	000a8513          	mv	a0,s5
   1e490:	1b813a83          	ld	s5,440(sp)
   1e494:	1f010113          	add	sp,sp,496
   1e498:	00008067          	ret
   1e49c:	08010613          	add	a2,sp,128
   1e4a0:	00048593          	mv	a1,s1
   1e4a4:	00098513          	mv	a0,s3
   1e4a8:	05013823          	sd	a6,80(sp)
   1e4ac:	03c13823          	sd	t3,48(sp)
   1e4b0:	03f13423          	sd	t6,40(sp)
   1e4b4:	02513023          	sd	t0,32(sp)
   1e4b8:	01113c23          	sd	a7,24(sp)
   1e4bc:	a75ff0ef          	jal	1df30 <__ssprint_r>
   1e4c0:	f80516e3          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1e4c4:	09013703          	ld	a4,144(sp)
   1e4c8:	08812683          	lw	a3,136(sp)
   1e4cc:	05013803          	ld	a6,80(sp)
   1e4d0:	03013e03          	ld	t3,48(sp)
   1e4d4:	02813f83          	ld	t6,40(sp)
   1e4d8:	02013283          	ld	t0,32(sp)
   1e4dc:	01813883          	ld	a7,24(sp)
   1e4e0:	00090793          	mv	a5,s2
   1e4e4:	e55ff06f          	j	1e338 <_svfiprintf_r+0x210>
   1e4e8:	000c3b83          	ld	s7,0(s8)
   1e4ec:	06010ba3          	sb	zero,119(sp)
   1e4f0:	000b0893          	mv	a7,s6
   1e4f4:	000d0e13          	mv	t3,s10
   1e4f8:	000d8793          	mv	a5,s11
   1e4fc:	008c0c13          	add	s8,s8,8
   1e500:	400b8ae3          	beqz	s7,1f114 <_svfiprintf_r+0xfec>
   1e504:	fff00693          	li	a3,-1
   1e508:	05013823          	sd	a6,80(sp)
   1e50c:	02e13823          	sd	a4,48(sp)
   1e510:	03b13423          	sd	s11,40(sp)
   1e514:	03a13023          	sd	s10,32(sp)
   1e518:	01613c23          	sd	s6,24(sp)
   1e51c:	32da82e3          	beq	s5,a3,1f040 <_svfiprintf_r+0xf18>
   1e520:	000a8613          	mv	a2,s5
   1e524:	00000593          	li	a1,0
   1e528:	000b8513          	mv	a0,s7
   1e52c:	dedf80ef          	jal	17318 <memchr>
   1e530:	01813883          	ld	a7,24(sp)
   1e534:	02013e03          	ld	t3,32(sp)
   1e538:	02813783          	ld	a5,40(sp)
   1e53c:	03013703          	ld	a4,48(sp)
   1e540:	05013803          	ld	a6,80(sp)
   1e544:	46050ce3          	beqz	a0,1f1bc <_svfiprintf_r+0x1094>
   1e548:	41750d3b          	subw	s10,a0,s7
   1e54c:	fffd4d93          	not	s11,s10
   1e550:	43fddd93          	sra	s11,s11,0x3f
   1e554:	01adfdb3          	and	s11,s11,s10
   1e558:	00000a93          	li	s5,0
   1e55c:	1600006f          	j	1e6bc <_svfiprintf_r+0x594>
   1e560:	000c2683          	lw	a3,0(s8)
   1e564:	000d0e13          	mv	t3,s10
   1e568:	000d8793          	mv	a5,s11
   1e56c:	000b0893          	mv	a7,s6
   1e570:	06010ba3          	sb	zero,119(sp)
   1e574:	008c0c13          	add	s8,s8,8
   1e578:	08d10c23          	sb	a3,152(sp)
   1e57c:	00100d93          	li	s11,1
   1e580:	00100d13          	li	s10,1
   1e584:	09810b93          	add	s7,sp,152
   1e588:	d59ff06f          	j	1e2e0 <_svfiprintf_r+0x1b8>
   1e58c:	000b0893          	mv	a7,s6
   1e590:	000d0e13          	mv	t3,s10
   1e594:	000d8793          	mv	a5,s11
   1e598:	0208f693          	and	a3,a7,32
   1e59c:	008c0613          	add	a2,s8,8
   1e5a0:	04069863          	bnez	a3,1e5f0 <_svfiprintf_r+0x4c8>
   1e5a4:	0108f693          	and	a3,a7,16
   1e5a8:	04069463          	bnez	a3,1e5f0 <_svfiprintf_r+0x4c8>
   1e5ac:	0408f593          	and	a1,a7,64
   1e5b0:	000c2683          	lw	a3,0(s8)
   1e5b4:	3c0580e3          	beqz	a1,1f174 <_svfiprintf_r+0x104c>
   1e5b8:	01069d9b          	sllw	s11,a3,0x10
   1e5bc:	410ddd9b          	sraw	s11,s11,0x10
   1e5c0:	000d8593          	mv	a1,s11
   1e5c4:	0205cc63          	bltz	a1,1e5fc <_svfiprintf_r+0x4d4>
   1e5c8:	fff00593          	li	a1,-1
   1e5cc:	04ba8663          	beq	s5,a1,1e618 <_svfiprintf_r+0x4f0>
   1e5d0:	f7f8f893          	and	a7,a7,-129
   1e5d4:	0008889b          	sext.w	a7,a7
   1e5d8:	040d9063          	bnez	s11,1e618 <_svfiprintf_r+0x4f0>
   1e5dc:	3e0a98e3          	bnez	s5,1f1cc <_svfiprintf_r+0x10a4>
   1e5e0:	00000d13          	li	s10,0
   1e5e4:	00060c13          	mv	s8,a2
   1e5e8:	0fc10b93          	add	s7,sp,252
   1e5ec:	0d00006f          	j	1e6bc <_svfiprintf_r+0x594>
   1e5f0:	000c3583          	ld	a1,0(s8)
   1e5f4:	00058d93          	mv	s11,a1
   1e5f8:	fc05d8e3          	bgez	a1,1e5c8 <_svfiprintf_r+0x4a0>
   1e5fc:	02d00593          	li	a1,45
   1e600:	06b10ba3          	sb	a1,119(sp)
   1e604:	fff00593          	li	a1,-1
   1e608:	41b00db3          	neg	s11,s11
   1e60c:	00ba8663          	beq	s5,a1,1e618 <_svfiprintf_r+0x4f0>
   1e610:	f7f8f893          	and	a7,a7,-129
   1e614:	0008889b          	sext.w	a7,a7
   1e618:	00900593          	li	a1,9
   1e61c:	03b5eae3          	bltu	a1,s11,1ee50 <_svfiprintf_r+0xd28>
   1e620:	030d869b          	addw	a3,s11,48
   1e624:	0ff6f693          	zext.b	a3,a3
   1e628:	00060c13          	mv	s8,a2
   1e62c:	0ed10da3          	sb	a3,251(sp)
   1e630:	000a8d9b          	sext.w	s11,s5
   1e634:	01504463          	bgtz	s5,1e63c <_svfiprintf_r+0x514>
   1e638:	00100d93          	li	s11,1
   1e63c:	00100d13          	li	s10,1
   1e640:	0fb10b93          	add	s7,sp,251
   1e644:	0780006f          	j	1e6bc <_svfiprintf_r+0x594>
   1e648:	010b6693          	or	a3,s6,16
   1e64c:	000d0e13          	mv	t3,s10
   1e650:	000d8793          	mv	a5,s11
   1e654:	0006869b          	sext.w	a3,a3
   1e658:	0206f613          	and	a2,a3,32
   1e65c:	008c0513          	add	a0,s8,8
   1e660:	00061663          	bnez	a2,1e66c <_svfiprintf_r+0x544>
   1e664:	0106f613          	and	a2,a3,16
   1e668:	0e060ce3          	beqz	a2,1ef60 <_svfiprintf_r+0xe38>
   1e66c:	000c3603          	ld	a2,0(s8)
   1e670:	bff6f893          	and	a7,a3,-1025
   1e674:	06010ba3          	sb	zero,119(sp)
   1e678:	fff00593          	li	a1,-1
   1e67c:	0008889b          	sext.w	a7,a7
   1e680:	00050c13          	mv	s8,a0
   1e684:	0eba8863          	beq	s5,a1,1e774 <_svfiprintf_r+0x64c>
   1e688:	b7f6f693          	and	a3,a3,-1153
   1e68c:	0006869b          	sext.w	a3,a3
   1e690:	240616e3          	bnez	a2,1f0dc <_svfiprintf_r+0xfb4>
   1e694:	00088d13          	mv	s10,a7
   1e698:	00068893          	mv	a7,a3
   1e69c:	0c0a9263          	bnez	s5,1e760 <_svfiprintf_r+0x638>
   1e6a0:	7a061063          	bnez	a2,1ee40 <_svfiprintf_r+0xd18>
   1e6a4:	001d7d13          	and	s10,s10,1
   1e6a8:	060d0ce3          	beqz	s10,1ef20 <_svfiprintf_r+0xdf8>
   1e6ac:	03000693          	li	a3,48
   1e6b0:	0ed10da3          	sb	a3,251(sp)
   1e6b4:	000d0d93          	mv	s11,s10
   1e6b8:	0fb10b93          	add	s7,sp,251
   1e6bc:	07714683          	lbu	a3,119(sp)
   1e6c0:	c20682e3          	beqz	a3,1e2e4 <_svfiprintf_r+0x1bc>
   1e6c4:	001d8d9b          	addw	s11,s11,1
   1e6c8:	c1dff06f          	j	1e2e4 <_svfiprintf_r+0x1bc>
   1e6cc:	010b6893          	or	a7,s6,16
   1e6d0:	000d0e13          	mv	t3,s10
   1e6d4:	000d8793          	mv	a5,s11
   1e6d8:	0008889b          	sext.w	a7,a7
   1e6dc:	ebdff06f          	j	1e598 <_svfiprintf_r+0x470>
   1e6e0:	00084683          	lbu	a3,0(a6)
   1e6e4:	06c00613          	li	a2,108
   1e6e8:	20c68ce3          	beq	a3,a2,1f100 <_svfiprintf_r+0xfd8>
   1e6ec:	010b6893          	or	a7,s6,16
   1e6f0:	00088b1b          	sext.w	s6,a7
   1e6f4:	b61ff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1e6f8:	00084683          	lbu	a3,0(a6)
   1e6fc:	06800613          	li	a2,104
   1e700:	1ec686e3          	beq	a3,a2,1f0ec <_svfiprintf_r+0xfc4>
   1e704:	040b6893          	or	a7,s6,64
   1e708:	00088b1b          	sext.w	s6,a7
   1e70c:	b49ff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1e710:	000d0e13          	mv	t3,s10
   1e714:	010b6d13          	or	s10,s6,16
   1e718:	000d8793          	mv	a5,s11
   1e71c:	000d0d1b          	sext.w	s10,s10
   1e720:	020d7693          	and	a3,s10,32
   1e724:	008c0613          	add	a2,s8,8
   1e728:	00069663          	bnez	a3,1e734 <_svfiprintf_r+0x60c>
   1e72c:	010d7693          	and	a3,s10,16
   1e730:	00068ce3          	beqz	a3,1ef48 <_svfiprintf_r+0xe20>
   1e734:	000c3d83          	ld	s11,0(s8)
   1e738:	06010ba3          	sb	zero,119(sp)
   1e73c:	fff00593          	li	a1,-1
   1e740:	000d0893          	mv	a7,s10
   1e744:	ecba8ae3          	beq	s5,a1,1e618 <_svfiprintf_r+0x4f0>
   1e748:	f7fd7893          	and	a7,s10,-129
   1e74c:	0008889b          	sext.w	a7,a7
   1e750:	ec0d94e3          	bnez	s11,1e618 <_svfiprintf_r+0x4f0>
   1e754:	00060c13          	mv	s8,a2
   1e758:	00100613          	li	a2,1
   1e75c:	f40a82e3          	beqz	s5,1e6a0 <_svfiprintf_r+0x578>
   1e760:	00100693          	li	a3,1
   1e764:	26d606e3          	beq	a2,a3,1f1d0 <_svfiprintf_r+0x10a8>
   1e768:	00200693          	li	a3,2
   1e76c:	1cd604e3          	beq	a2,a3,1f134 <_svfiprintf_r+0x100c>
   1e770:	00000613          	li	a2,0
   1e774:	0fc10593          	add	a1,sp,252
   1e778:	00058b93          	mv	s7,a1
   1e77c:	00767693          	and	a3,a2,7
   1e780:	03068693          	add	a3,a3,48
   1e784:	fedb8fa3          	sb	a3,-1(s7)
   1e788:	00365613          	srl	a2,a2,0x3
   1e78c:	000b8513          	mv	a0,s7
   1e790:	fffb8b93          	add	s7,s7,-1
   1e794:	fe0614e3          	bnez	a2,1e77c <_svfiprintf_r+0x654>
   1e798:	0018f613          	and	a2,a7,1
   1e79c:	68060863          	beqz	a2,1ee2c <_svfiprintf_r+0xd04>
   1e7a0:	03000613          	li	a2,48
   1e7a4:	68c68463          	beq	a3,a2,1ee2c <_svfiprintf_r+0xd04>
   1e7a8:	ffe50513          	add	a0,a0,-2
   1e7ac:	40a58d3b          	subw	s10,a1,a0
   1e7b0:	fecb8fa3          	sb	a2,-1(s7)
   1e7b4:	000d0d9b          	sext.w	s11,s10
   1e7b8:	7d5d4063          	blt	s10,s5,1ef78 <_svfiprintf_r+0xe50>
   1e7bc:	00050b93          	mv	s7,a0
   1e7c0:	efdff06f          	j	1e6bc <_svfiprintf_r+0x594>
   1e7c4:	080b6893          	or	a7,s6,128
   1e7c8:	00084683          	lbu	a3,0(a6)
   1e7cc:	00088b1b          	sext.w	s6,a7
   1e7d0:	a85ff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1e7d4:	00084683          	lbu	a3,0(a6)
   1e7d8:	02a00513          	li	a0,42
   1e7dc:	00180613          	add	a2,a6,1
   1e7e0:	20a68ae3          	beq	a3,a0,1f1f4 <_svfiprintf_r+0x10cc>
   1e7e4:	fd06859b          	addw	a1,a3,-48
   1e7e8:	00900313          	li	t1,9
   1e7ec:	00060813          	mv	a6,a2
   1e7f0:	00000a93          	li	s5,0
   1e7f4:	00900513          	li	a0,9
   1e7f8:	a6b362e3          	bltu	t1,a1,1e25c <_svfiprintf_r+0x134>
   1e7fc:	00084683          	lbu	a3,0(a6)
   1e800:	002a961b          	sllw	a2,s5,0x2
   1e804:	01560abb          	addw	s5,a2,s5
   1e808:	001a9a9b          	sllw	s5,s5,0x1
   1e80c:	00ba8abb          	addw	s5,s5,a1
   1e810:	fd06859b          	addw	a1,a3,-48
   1e814:	00180813          	add	a6,a6,1
   1e818:	feb572e3          	bgeu	a0,a1,1e7fc <_svfiprintf_r+0x6d4>
   1e81c:	a41ff06f          	j	1e25c <_svfiprintf_r+0x134>
   1e820:	02b00613          	li	a2,43
   1e824:	00084683          	lbu	a3,0(a6)
   1e828:	06c10ba3          	sb	a2,119(sp)
   1e82c:	a29ff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1e830:	00098513          	mv	a0,s3
   1e834:	03013023          	sd	a6,32(sp)
   1e838:	00e13c23          	sd	a4,24(sp)
   1e83c:	f19f70ef          	jal	16754 <_localeconv_r>
   1e840:	00853783          	ld	a5,8(a0)
   1e844:	00078513          	mv	a0,a5
   1e848:	04f13423          	sd	a5,72(sp)
   1e84c:	c50fa0ef          	jal	18c9c <strlen>
   1e850:	00050693          	mv	a3,a0
   1e854:	00098513          	mv	a0,s3
   1e858:	02d13c23          	sd	a3,56(sp)
   1e85c:	ef9f70ef          	jal	16754 <_localeconv_r>
   1e860:	01053603          	ld	a2,16(a0)
   1e864:	03813783          	ld	a5,56(sp)
   1e868:	01813703          	ld	a4,24(sp)
   1e86c:	04c13023          	sd	a2,64(sp)
   1e870:	02013803          	ld	a6,32(sp)
   1e874:	6a079c63          	bnez	a5,1ef2c <_svfiprintf_r+0xe04>
   1e878:	00084683          	lbu	a3,0(a6)
   1e87c:	9d9ff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1e880:	001b6893          	or	a7,s6,1
   1e884:	00084683          	lbu	a3,0(a6)
   1e888:	00088b1b          	sext.w	s6,a7
   1e88c:	9c9ff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1e890:	07714603          	lbu	a2,119(sp)
   1e894:	00084683          	lbu	a3,0(a6)
   1e898:	9a061ee3          	bnez	a2,1e254 <_svfiprintf_r+0x12c>
   1e89c:	02000613          	li	a2,32
   1e8a0:	06c10ba3          	sb	a2,119(sp)
   1e8a4:	9b1ff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1e8a8:	020b6893          	or	a7,s6,32
   1e8ac:	00084683          	lbu	a3,0(a6)
   1e8b0:	00088b1b          	sext.w	s6,a7
   1e8b4:	9a1ff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1e8b8:	ffff86b7          	lui	a3,0xffff8
   1e8bc:	8306c693          	xor	a3,a3,-2000
   1e8c0:	06d11c23          	sh	a3,120(sp)
   1e8c4:	000226b7          	lui	a3,0x22
   1e8c8:	002b6893          	or	a7,s6,2
   1e8cc:	d4068693          	add	a3,a3,-704 # 21d40 <__clzdi2+0xb4>
   1e8d0:	000c3603          	ld	a2,0(s8)
   1e8d4:	000d0e13          	mv	t3,s10
   1e8d8:	000d8793          	mv	a5,s11
   1e8dc:	0008889b          	sext.w	a7,a7
   1e8e0:	008c0c13          	add	s8,s8,8
   1e8e4:	00d13823          	sd	a3,16(sp)
   1e8e8:	06010ba3          	sb	zero,119(sp)
   1e8ec:	fff00693          	li	a3,-1
   1e8f0:	2ada8e63          	beq	s5,a3,1ebac <_svfiprintf_r+0xa84>
   1e8f4:	f7f8f693          	and	a3,a7,-129
   1e8f8:	0006869b          	sext.w	a3,a3
   1e8fc:	2a061263          	bnez	a2,1eba0 <_svfiprintf_r+0xa78>
   1e900:	00088d13          	mv	s10,a7
   1e904:	00200613          	li	a2,2
   1e908:	00068893          	mv	a7,a3
   1e90c:	d91ff06f          	j	1e69c <_svfiprintf_r+0x574>
   1e910:	020b7693          	and	a3,s6,32
   1e914:	000c3603          	ld	a2,0(s8)
   1e918:	000d8793          	mv	a5,s11
   1e91c:	02069463          	bnez	a3,1e944 <_svfiprintf_r+0x81c>
   1e920:	010b7693          	and	a3,s6,16
   1e924:	02069063          	bnez	a3,1e944 <_svfiprintf_r+0x81c>
   1e928:	040b7693          	and	a3,s6,64
   1e92c:	060690e3          	bnez	a3,1f18c <_svfiprintf_r+0x1064>
   1e930:	200b7893          	and	a7,s6,512
   1e934:	0a0882e3          	beqz	a7,1f1d8 <_svfiprintf_r+0x10b0>
   1e938:	01960023          	sb	s9,0(a2)
   1e93c:	008c0c13          	add	s8,s8,8
   1e940:	891ff06f          	j	1e1d0 <_svfiprintf_r+0xa8>
   1e944:	01963023          	sd	s9,0(a2)
   1e948:	008c0c13          	add	s8,s8,8
   1e94c:	885ff06f          	j	1e1d0 <_svfiprintf_r+0xa8>
   1e950:	41be0b3b          	subw	s6,t3,s11
   1e954:	a1605ee3          	blez	s6,1e370 <_svfiprintf_r+0x248>
   1e958:	00023eb7          	lui	t4,0x23
   1e95c:	01000613          	li	a2,16
   1e960:	ab0e8e93          	add	t4,t4,-1360 # 22ab0 <zeroes.0>
   1e964:	09665c63          	bge	a2,s6,1e9fc <_svfiprintf_r+0x8d4>
   1e968:	03513423          	sd	s5,40(sp)
   1e96c:	01000f13          	li	t5,16
   1e970:	000b0a93          	mv	s5,s6
   1e974:	00700f93          	li	t6,7
   1e978:	01113c23          	sd	a7,24(sp)
   1e97c:	03c13023          	sd	t3,32(sp)
   1e980:	03013823          	sd	a6,48(sp)
   1e984:	000e8b13          	mv	s6,t4
   1e988:	00c0006f          	j	1e994 <_svfiprintf_r+0x86c>
   1e98c:	ff0a8a9b          	addw	s5,s5,-16
   1e990:	055f5a63          	bge	t5,s5,1e9e4 <_svfiprintf_r+0x8bc>
   1e994:	0016869b          	addw	a3,a3,1
   1e998:	01070713          	add	a4,a4,16
   1e99c:	0167b023          	sd	s6,0(a5)
   1e9a0:	01e7b423          	sd	t5,8(a5)
   1e9a4:	08e13823          	sd	a4,144(sp)
   1e9a8:	08d12423          	sw	a3,136(sp)
   1e9ac:	01078793          	add	a5,a5,16
   1e9b0:	fcdfdee3          	bge	t6,a3,1e98c <_svfiprintf_r+0x864>
   1e9b4:	08010613          	add	a2,sp,128
   1e9b8:	00048593          	mv	a1,s1
   1e9bc:	00098513          	mv	a0,s3
   1e9c0:	d70ff0ef          	jal	1df30 <__ssprint_r>
   1e9c4:	a80514e3          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1e9c8:	01000f13          	li	t5,16
   1e9cc:	ff0a8a9b          	addw	s5,s5,-16
   1e9d0:	09013703          	ld	a4,144(sp)
   1e9d4:	08812683          	lw	a3,136(sp)
   1e9d8:	00090793          	mv	a5,s2
   1e9dc:	00700f93          	li	t6,7
   1e9e0:	fb5f4ae3          	blt	t5,s5,1e994 <_svfiprintf_r+0x86c>
   1e9e4:	000b0e93          	mv	t4,s6
   1e9e8:	01813883          	ld	a7,24(sp)
   1e9ec:	000a8b13          	mv	s6,s5
   1e9f0:	02013e03          	ld	t3,32(sp)
   1e9f4:	03013803          	ld	a6,48(sp)
   1e9f8:	02813a83          	ld	s5,40(sp)
   1e9fc:	0016869b          	addw	a3,a3,1
   1ea00:	01670733          	add	a4,a4,s6
   1ea04:	01d7b023          	sd	t4,0(a5)
   1ea08:	0167b423          	sd	s6,8(a5)
   1ea0c:	08e13823          	sd	a4,144(sp)
   1ea10:	08d12423          	sw	a3,136(sp)
   1ea14:	00700613          	li	a2,7
   1ea18:	01078793          	add	a5,a5,16
   1ea1c:	94d65ae3          	bge	a2,a3,1e370 <_svfiprintf_r+0x248>
   1ea20:	08010613          	add	a2,sp,128
   1ea24:	00048593          	mv	a1,s1
   1ea28:	00098513          	mv	a0,s3
   1ea2c:	03013423          	sd	a6,40(sp)
   1ea30:	03c13023          	sd	t3,32(sp)
   1ea34:	01113c23          	sd	a7,24(sp)
   1ea38:	cf8ff0ef          	jal	1df30 <__ssprint_r>
   1ea3c:	a00518e3          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1ea40:	41aa8b3b          	subw	s6,s5,s10
   1ea44:	09013703          	ld	a4,144(sp)
   1ea48:	08812683          	lw	a3,136(sp)
   1ea4c:	02813803          	ld	a6,40(sp)
   1ea50:	02013e03          	ld	t3,32(sp)
   1ea54:	01813883          	ld	a7,24(sp)
   1ea58:	00090793          	mv	a5,s2
   1ea5c:	91605ee3          	blez	s6,1e378 <_svfiprintf_r+0x250>
   1ea60:	00023eb7          	lui	t4,0x23
   1ea64:	ab0e8e93          	add	t4,t4,-1360 # 22ab0 <zeroes.0>
   1ea68:	07645e63          	bge	s0,s6,1eae4 <_svfiprintf_r+0x9bc>
   1ea6c:	00700a93          	li	s5,7
   1ea70:	01113c23          	sd	a7,24(sp)
   1ea74:	03c13023          	sd	t3,32(sp)
   1ea78:	03013423          	sd	a6,40(sp)
   1ea7c:	03413823          	sd	s4,48(sp)
   1ea80:	00c0006f          	j	1ea8c <_svfiprintf_r+0x964>
   1ea84:	ff0b0b1b          	addw	s6,s6,-16
   1ea88:	05645663          	bge	s0,s6,1ead4 <_svfiprintf_r+0x9ac>
   1ea8c:	0016869b          	addw	a3,a3,1
   1ea90:	01070713          	add	a4,a4,16
   1ea94:	0147b023          	sd	s4,0(a5)
   1ea98:	0087b423          	sd	s0,8(a5)
   1ea9c:	08e13823          	sd	a4,144(sp)
   1eaa0:	08d12423          	sw	a3,136(sp)
   1eaa4:	01078793          	add	a5,a5,16
   1eaa8:	fcdadee3          	bge	s5,a3,1ea84 <_svfiprintf_r+0x95c>
   1eaac:	08010613          	add	a2,sp,128
   1eab0:	00048593          	mv	a1,s1
   1eab4:	00098513          	mv	a0,s3
   1eab8:	c78ff0ef          	jal	1df30 <__ssprint_r>
   1eabc:	980518e3          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1eac0:	ff0b0b1b          	addw	s6,s6,-16
   1eac4:	09013703          	ld	a4,144(sp)
   1eac8:	08812683          	lw	a3,136(sp)
   1eacc:	00090793          	mv	a5,s2
   1ead0:	fb644ee3          	blt	s0,s6,1ea8c <_svfiprintf_r+0x964>
   1ead4:	01813883          	ld	a7,24(sp)
   1ead8:	02013e03          	ld	t3,32(sp)
   1eadc:	02813803          	ld	a6,40(sp)
   1eae0:	03013e83          	ld	t4,48(sp)
   1eae4:	0016869b          	addw	a3,a3,1
   1eae8:	01670733          	add	a4,a4,s6
   1eaec:	01d7b023          	sd	t4,0(a5)
   1eaf0:	0167b423          	sd	s6,8(a5)
   1eaf4:	08e13823          	sd	a4,144(sp)
   1eaf8:	08d12423          	sw	a3,136(sp)
   1eafc:	00700613          	li	a2,7
   1eb00:	01078793          	add	a5,a5,16
   1eb04:	86d65ae3          	bge	a2,a3,1e378 <_svfiprintf_r+0x250>
   1eb08:	08010613          	add	a2,sp,128
   1eb0c:	00048593          	mv	a1,s1
   1eb10:	00098513          	mv	a0,s3
   1eb14:	03013423          	sd	a6,40(sp)
   1eb18:	03c13023          	sd	t3,32(sp)
   1eb1c:	01113c23          	sd	a7,24(sp)
   1eb20:	c10ff0ef          	jal	1df30 <__ssprint_r>
   1eb24:	920514e3          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1eb28:	09013703          	ld	a4,144(sp)
   1eb2c:	08812683          	lw	a3,136(sp)
   1eb30:	02813803          	ld	a6,40(sp)
   1eb34:	02013e03          	ld	t3,32(sp)
   1eb38:	01813883          	ld	a7,24(sp)
   1eb3c:	00090793          	mv	a5,s2
   1eb40:	839ff06f          	j	1e378 <_svfiprintf_r+0x250>
   1eb44:	08010613          	add	a2,sp,128
   1eb48:	00048593          	mv	a1,s1
   1eb4c:	00098513          	mv	a0,s3
   1eb50:	03013423          	sd	a6,40(sp)
   1eb54:	03c13023          	sd	t3,32(sp)
   1eb58:	01113c23          	sd	a7,24(sp)
   1eb5c:	bd4ff0ef          	jal	1df30 <__ssprint_r>
   1eb60:	8e0516e3          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1eb64:	09013703          	ld	a4,144(sp)
   1eb68:	02813803          	ld	a6,40(sp)
   1eb6c:	02013e03          	ld	t3,32(sp)
   1eb70:	01813883          	ld	a7,24(sp)
   1eb74:	00090793          	mv	a5,s2
   1eb78:	825ff06f          	j	1e39c <_svfiprintf_r+0x274>
   1eb7c:	08010613          	add	a2,sp,128
   1eb80:	00048593          	mv	a1,s1
   1eb84:	00098513          	mv	a0,s3
   1eb88:	01013c23          	sd	a6,24(sp)
   1eb8c:	ba4ff0ef          	jal	1df30 <__ssprint_r>
   1eb90:	8a051ee3          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1eb94:	09013703          	ld	a4,144(sp)
   1eb98:	01813803          	ld	a6,24(sp)
   1eb9c:	825ff06f          	j	1e3c0 <_svfiprintf_r+0x298>
   1eba0:	00068893          	mv	a7,a3
   1eba4:	00200693          	li	a3,2
   1eba8:	bc0686e3          	beqz	a3,1e774 <_svfiprintf_r+0x64c>
   1ebac:	01013503          	ld	a0,16(sp)
   1ebb0:	0fc10593          	add	a1,sp,252
   1ebb4:	00058b93          	mv	s7,a1
   1ebb8:	00f67693          	and	a3,a2,15
   1ebbc:	00d506b3          	add	a3,a0,a3
   1ebc0:	0006c683          	lbu	a3,0(a3)
   1ebc4:	00465613          	srl	a2,a2,0x4
   1ebc8:	fffb8b93          	add	s7,s7,-1
   1ebcc:	00db8023          	sb	a3,0(s7)
   1ebd0:	fe0614e3          	bnez	a2,1ebb8 <_svfiprintf_r+0xa90>
   1ebd4:	41758d3b          	subw	s10,a1,s7
   1ebd8:	000a8d9b          	sext.w	s11,s5
   1ebdc:	afaad0e3          	bge	s5,s10,1e6bc <_svfiprintf_r+0x594>
   1ebe0:	000d0d9b          	sext.w	s11,s10
   1ebe4:	ad9ff06f          	j	1e6bc <_svfiprintf_r+0x594>
   1ebe8:	00023eb7          	lui	t4,0x23
   1ebec:	01000613          	li	a2,16
   1ebf0:	ac0e8e93          	add	t4,t4,-1344 # 22ac0 <blanks.1>
   1ebf4:	0b665463          	bge	a2,s6,1ec9c <_svfiprintf_r+0xb74>
   1ebf8:	05513823          	sd	s5,80(sp)
   1ebfc:	01000f13          	li	t5,16
   1ec00:	000b0a93          	mv	s5,s6
   1ec04:	00700393          	li	t2,7
   1ec08:	01113c23          	sd	a7,24(sp)
   1ec0c:	02513023          	sd	t0,32(sp)
   1ec10:	03f13423          	sd	t6,40(sp)
   1ec14:	03c13823          	sd	t3,48(sp)
   1ec18:	05013c23          	sd	a6,88(sp)
   1ec1c:	000e8b13          	mv	s6,t4
   1ec20:	00c0006f          	j	1ec2c <_svfiprintf_r+0xb04>
   1ec24:	ff0a8a9b          	addw	s5,s5,-16
   1ec28:	055f5a63          	bge	t5,s5,1ec7c <_svfiprintf_r+0xb54>
   1ec2c:	0016869b          	addw	a3,a3,1
   1ec30:	01070713          	add	a4,a4,16
   1ec34:	0167b023          	sd	s6,0(a5)
   1ec38:	01e7b423          	sd	t5,8(a5)
   1ec3c:	08e13823          	sd	a4,144(sp)
   1ec40:	08d12423          	sw	a3,136(sp)
   1ec44:	01078793          	add	a5,a5,16
   1ec48:	fcd3dee3          	bge	t2,a3,1ec24 <_svfiprintf_r+0xafc>
   1ec4c:	08010613          	add	a2,sp,128
   1ec50:	00048593          	mv	a1,s1
   1ec54:	00098513          	mv	a0,s3
   1ec58:	ad8ff0ef          	jal	1df30 <__ssprint_r>
   1ec5c:	fe051863          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1ec60:	01000f13          	li	t5,16
   1ec64:	ff0a8a9b          	addw	s5,s5,-16
   1ec68:	09013703          	ld	a4,144(sp)
   1ec6c:	08812683          	lw	a3,136(sp)
   1ec70:	00090793          	mv	a5,s2
   1ec74:	00700393          	li	t2,7
   1ec78:	fb5f4ae3          	blt	t5,s5,1ec2c <_svfiprintf_r+0xb04>
   1ec7c:	000b0e93          	mv	t4,s6
   1ec80:	01813883          	ld	a7,24(sp)
   1ec84:	000a8b13          	mv	s6,s5
   1ec88:	02013283          	ld	t0,32(sp)
   1ec8c:	02813f83          	ld	t6,40(sp)
   1ec90:	03013e03          	ld	t3,48(sp)
   1ec94:	05813803          	ld	a6,88(sp)
   1ec98:	05013a83          	ld	s5,80(sp)
   1ec9c:	0016869b          	addw	a3,a3,1
   1eca0:	01670733          	add	a4,a4,s6
   1eca4:	01d7b023          	sd	t4,0(a5)
   1eca8:	0167b423          	sd	s6,8(a5)
   1ecac:	08e13823          	sd	a4,144(sp)
   1ecb0:	08d12423          	sw	a3,136(sp)
   1ecb4:	00700613          	li	a2,7
   1ecb8:	01078793          	add	a5,a5,16
   1ecbc:	e4d65463          	bge	a2,a3,1e304 <_svfiprintf_r+0x1dc>
   1ecc0:	08010613          	add	a2,sp,128
   1ecc4:	00048593          	mv	a1,s1
   1ecc8:	00098513          	mv	a0,s3
   1eccc:	05013823          	sd	a6,80(sp)
   1ecd0:	03c13823          	sd	t3,48(sp)
   1ecd4:	03f13423          	sd	t6,40(sp)
   1ecd8:	02513023          	sd	t0,32(sp)
   1ecdc:	01113c23          	sd	a7,24(sp)
   1ece0:	a50ff0ef          	jal	1df30 <__ssprint_r>
   1ece4:	f6051463          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1ece8:	09013703          	ld	a4,144(sp)
   1ecec:	08812683          	lw	a3,136(sp)
   1ecf0:	05013803          	ld	a6,80(sp)
   1ecf4:	03013e03          	ld	t3,48(sp)
   1ecf8:	02813f83          	ld	t6,40(sp)
   1ecfc:	02013283          	ld	t0,32(sp)
   1ed00:	01813883          	ld	a7,24(sp)
   1ed04:	00090793          	mv	a5,s2
   1ed08:	dfcff06f          	j	1e304 <_svfiprintf_r+0x1dc>
   1ed0c:	08010613          	add	a2,sp,128
   1ed10:	00048593          	mv	a1,s1
   1ed14:	00098513          	mv	a0,s3
   1ed18:	03013823          	sd	a6,48(sp)
   1ed1c:	03c13423          	sd	t3,40(sp)
   1ed20:	03f13023          	sd	t6,32(sp)
   1ed24:	01113c23          	sd	a7,24(sp)
   1ed28:	a08ff0ef          	jal	1df30 <__ssprint_r>
   1ed2c:	f2051063          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1ed30:	09013703          	ld	a4,144(sp)
   1ed34:	08812683          	lw	a3,136(sp)
   1ed38:	03013803          	ld	a6,48(sp)
   1ed3c:	02813e03          	ld	t3,40(sp)
   1ed40:	02013f83          	ld	t6,32(sp)
   1ed44:	01813883          	ld	a7,24(sp)
   1ed48:	00090793          	mv	a5,s2
   1ed4c:	e1cff06f          	j	1e368 <_svfiprintf_r+0x240>
   1ed50:	00023eb7          	lui	t4,0x23
   1ed54:	01000613          	li	a2,16
   1ed58:	08812683          	lw	a3,136(sp)
   1ed5c:	ac0e8e93          	add	t4,t4,-1344 # 22ac0 <blanks.1>
   1ed60:	09565063          	bge	a2,s5,1ede0 <_svfiprintf_r+0xcb8>
   1ed64:	03813023          	sd	s8,32(sp)
   1ed68:	01000b13          	li	s6,16
   1ed6c:	00700b93          	li	s7,7
   1ed70:	000e0d13          	mv	s10,t3
   1ed74:	01013c23          	sd	a6,24(sp)
   1ed78:	000e8c13          	mv	s8,t4
   1ed7c:	00c0006f          	j	1ed88 <_svfiprintf_r+0xc60>
   1ed80:	ff0a8a9b          	addw	s5,s5,-16
   1ed84:	055b5663          	bge	s6,s5,1edd0 <_svfiprintf_r+0xca8>
   1ed88:	0016869b          	addw	a3,a3,1
   1ed8c:	01070713          	add	a4,a4,16
   1ed90:	0187b023          	sd	s8,0(a5)
   1ed94:	0167b423          	sd	s6,8(a5)
   1ed98:	08e13823          	sd	a4,144(sp)
   1ed9c:	08d12423          	sw	a3,136(sp)
   1eda0:	01078793          	add	a5,a5,16
   1eda4:	fcdbdee3          	bge	s7,a3,1ed80 <_svfiprintf_r+0xc58>
   1eda8:	08010613          	add	a2,sp,128
   1edac:	00048593          	mv	a1,s1
   1edb0:	00098513          	mv	a0,s3
   1edb4:	97cff0ef          	jal	1df30 <__ssprint_r>
   1edb8:	e8051a63          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1edbc:	ff0a8a9b          	addw	s5,s5,-16
   1edc0:	09013703          	ld	a4,144(sp)
   1edc4:	08812683          	lw	a3,136(sp)
   1edc8:	00090793          	mv	a5,s2
   1edcc:	fb5b4ee3          	blt	s6,s5,1ed88 <_svfiprintf_r+0xc60>
   1edd0:	000c0e93          	mv	t4,s8
   1edd4:	01813803          	ld	a6,24(sp)
   1edd8:	02013c03          	ld	s8,32(sp)
   1eddc:	000d0e13          	mv	t3,s10
   1ede0:	0016861b          	addw	a2,a3,1
   1ede4:	01570733          	add	a4,a4,s5
   1ede8:	01d7b023          	sd	t4,0(a5)
   1edec:	0157b423          	sd	s5,8(a5)
   1edf0:	08e13823          	sd	a4,144(sp)
   1edf4:	08c12423          	sw	a2,136(sp)
   1edf8:	00700793          	li	a5,7
   1edfc:	dac7d863          	bge	a5,a2,1e3ac <_svfiprintf_r+0x284>
   1ee00:	08010613          	add	a2,sp,128
   1ee04:	00048593          	mv	a1,s1
   1ee08:	00098513          	mv	a0,s3
   1ee0c:	03013023          	sd	a6,32(sp)
   1ee10:	01c13c23          	sd	t3,24(sp)
   1ee14:	91cff0ef          	jal	1df30 <__ssprint_r>
   1ee18:	e2051a63          	bnez	a0,1e44c <_svfiprintf_r+0x324>
   1ee1c:	09013703          	ld	a4,144(sp)
   1ee20:	02013803          	ld	a6,32(sp)
   1ee24:	01813e03          	ld	t3,24(sp)
   1ee28:	d84ff06f          	j	1e3ac <_svfiprintf_r+0x284>
   1ee2c:	41758d3b          	subw	s10,a1,s7
   1ee30:	000d0d9b          	sext.w	s11,s10
   1ee34:	895d54e3          	bge	s10,s5,1e6bc <_svfiprintf_r+0x594>
   1ee38:	000a8d9b          	sext.w	s11,s5
   1ee3c:	881ff06f          	j	1e6bc <_svfiprintf_r+0x594>
   1ee40:	00000d93          	li	s11,0
   1ee44:	00000d13          	li	s10,0
   1ee48:	0fc10b93          	add	s7,sp,252
   1ee4c:	871ff06f          	j	1e6bc <_svfiprintf_r+0x594>
   1ee50:	05313c23          	sd	s3,88(sp)
   1ee54:	04013983          	ld	s3,64(sp)
   1ee58:	0fc10593          	add	a1,sp,252
   1ee5c:	03513423          	sd	s5,40(sp)
   1ee60:	06913023          	sd	s1,96(sp)
   1ee64:	4008fd13          	and	s10,a7,1024
   1ee68:	00000b13          	li	s6,0
   1ee6c:	00058b93          	mv	s7,a1
   1ee70:	00900c13          	li	s8,9
   1ee74:	01113c23          	sd	a7,24(sp)
   1ee78:	03c13023          	sd	t3,32(sp)
   1ee7c:	02f13823          	sd	a5,48(sp)
   1ee80:	04e13823          	sd	a4,80(sp)
   1ee84:	00060a93          	mv	s5,a2
   1ee88:	00058493          	mv	s1,a1
   1ee8c:	07013423          	sd	a6,104(sp)
   1ee90:	00a00593          	li	a1,10
   1ee94:	000d8513          	mv	a0,s11
   1ee98:	585020ef          	jal	21c1c <__umoddi3>
   1ee9c:	0305051b          	addw	a0,a0,48
   1eea0:	fea48fa3          	sb	a0,-1(s1)
   1eea4:	001b0b1b          	addw	s6,s6,1
   1eea8:	fff48493          	add	s1,s1,-1
   1eeac:	000d0663          	beqz	s10,1eeb8 <_svfiprintf_r+0xd90>
   1eeb0:	0009c703          	lbu	a4,0(s3)
   1eeb4:	01670e63          	beq	a4,s6,1eed0 <_svfiprintf_r+0xda8>
   1eeb8:	00a00593          	li	a1,10
   1eebc:	000d8513          	mv	a0,s11
   1eec0:	515020ef          	jal	21bd4 <__hidden___udivdi3>
   1eec4:	01bc7c63          	bgeu	s8,s11,1eedc <_svfiprintf_r+0xdb4>
   1eec8:	00050d93          	mv	s11,a0
   1eecc:	fc5ff06f          	j	1ee90 <_svfiprintf_r+0xd68>
   1eed0:	0ff00793          	li	a5,255
   1eed4:	fef702e3          	beq	a4,a5,1eeb8 <_svfiprintf_r+0xd90>
   1eed8:	1dbc6463          	bltu	s8,s11,1f0a0 <_svfiprintf_r+0xf78>
   1eedc:	000a8613          	mv	a2,s5
   1eee0:	02813a83          	ld	s5,40(sp)
   1eee4:	000b8593          	mv	a1,s7
   1eee8:	00048b93          	mv	s7,s1
   1eeec:	05313023          	sd	s3,64(sp)
   1eef0:	41758d3b          	subw	s10,a1,s7
   1eef4:	01813883          	ld	a7,24(sp)
   1eef8:	02013e03          	ld	t3,32(sp)
   1eefc:	03013783          	ld	a5,48(sp)
   1ef00:	05013703          	ld	a4,80(sp)
   1ef04:	05813983          	ld	s3,88(sp)
   1ef08:	06813803          	ld	a6,104(sp)
   1ef0c:	06013483          	ld	s1,96(sp)
   1ef10:	000d0d9b          	sext.w	s11,s10
   1ef14:	175d4063          	blt	s10,s5,1f074 <_svfiprintf_r+0xf4c>
   1ef18:	00060c13          	mv	s8,a2
   1ef1c:	fa0ff06f          	j	1e6bc <_svfiprintf_r+0x594>
   1ef20:	00000d93          	li	s11,0
   1ef24:	0fc10b93          	add	s7,sp,252
   1ef28:	f94ff06f          	j	1e6bc <_svfiprintf_r+0x594>
   1ef2c:	00084683          	lbu	a3,0(a6)
   1ef30:	b2060263          	beqz	a2,1e254 <_svfiprintf_r+0x12c>
   1ef34:	00064603          	lbu	a2,0(a2)
   1ef38:	b0060e63          	beqz	a2,1e254 <_svfiprintf_r+0x12c>
   1ef3c:	400b6893          	or	a7,s6,1024
   1ef40:	00088b1b          	sext.w	s6,a7
   1ef44:	b10ff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1ef48:	040d7593          	and	a1,s10,64
   1ef4c:	000c2683          	lw	a3,0(s8)
   1ef50:	1e058663          	beqz	a1,1f13c <_svfiprintf_r+0x1014>
   1ef54:	03069d93          	sll	s11,a3,0x30
   1ef58:	030ddd93          	srl	s11,s11,0x30
   1ef5c:	fdcff06f          	j	1e738 <_svfiprintf_r+0x610>
   1ef60:	0406f593          	and	a1,a3,64
   1ef64:	000c2603          	lw	a2,0(s8)
   1ef68:	1e058663          	beqz	a1,1f154 <_svfiprintf_r+0x102c>
   1ef6c:	03061613          	sll	a2,a2,0x30
   1ef70:	03065613          	srl	a2,a2,0x30
   1ef74:	efcff06f          	j	1e670 <_svfiprintf_r+0x548>
   1ef78:	000a8d9b          	sext.w	s11,s5
   1ef7c:	00050b93          	mv	s7,a0
   1ef80:	f3cff06f          	j	1e6bc <_svfiprintf_r+0x594>
   1ef84:	000d0e13          	mv	t3,s10
   1ef88:	000d8793          	mv	a5,s11
   1ef8c:	000b0d13          	mv	s10,s6
   1ef90:	f90ff06f          	j	1e720 <_svfiprintf_r+0x5f8>
   1ef94:	000d0e13          	mv	t3,s10
   1ef98:	000d8793          	mv	a5,s11
   1ef9c:	000b0693          	mv	a3,s6
   1efa0:	eb8ff06f          	j	1e658 <_svfiprintf_r+0x530>
   1efa4:	00022637          	lui	a2,0x22
   1efa8:	d2860613          	add	a2,a2,-728 # 21d28 <__clzdi2+0x9c>
   1efac:	000b0893          	mv	a7,s6
   1efb0:	00c13823          	sd	a2,16(sp)
   1efb4:	0208f613          	and	a2,a7,32
   1efb8:	000d0e13          	mv	t3,s10
   1efbc:	000d8793          	mv	a5,s11
   1efc0:	008c0593          	add	a1,s8,8
   1efc4:	06061a63          	bnez	a2,1f038 <_svfiprintf_r+0xf10>
   1efc8:	0108f613          	and	a2,a7,16
   1efcc:	06061663          	bnez	a2,1f038 <_svfiprintf_r+0xf10>
   1efd0:	0408f513          	and	a0,a7,64
   1efd4:	000c2603          	lw	a2,0(s8)
   1efd8:	18050663          	beqz	a0,1f164 <_svfiprintf_r+0x103c>
   1efdc:	03061613          	sll	a2,a2,0x30
   1efe0:	03065613          	srl	a2,a2,0x30
   1efe4:	0018f513          	and	a0,a7,1
   1efe8:	00050e63          	beqz	a0,1f004 <_svfiprintf_r+0xedc>
   1efec:	00060c63          	beqz	a2,1f004 <_svfiprintf_r+0xedc>
   1eff0:	0028e893          	or	a7,a7,2
   1eff4:	03000513          	li	a0,48
   1eff8:	06a10c23          	sb	a0,120(sp)
   1effc:	06d10ca3          	sb	a3,121(sp)
   1f000:	0008889b          	sext.w	a7,a7
   1f004:	bff8f893          	and	a7,a7,-1025
   1f008:	0008889b          	sext.w	a7,a7
   1f00c:	00058c13          	mv	s8,a1
   1f010:	8d9ff06f          	j	1e8e8 <_svfiprintf_r+0x7c0>
   1f014:	00022637          	lui	a2,0x22
   1f018:	d4060613          	add	a2,a2,-704 # 21d40 <__clzdi2+0xb4>
   1f01c:	000b0893          	mv	a7,s6
   1f020:	00c13823          	sd	a2,16(sp)
   1f024:	0208f613          	and	a2,a7,32
   1f028:	000d0e13          	mv	t3,s10
   1f02c:	000d8793          	mv	a5,s11
   1f030:	008c0593          	add	a1,s8,8
   1f034:	f8060ae3          	beqz	a2,1efc8 <_svfiprintf_r+0xea0>
   1f038:	000c3603          	ld	a2,0(s8)
   1f03c:	fa9ff06f          	j	1efe4 <_svfiprintf_r+0xebc>
   1f040:	000b8513          	mv	a0,s7
   1f044:	c59f90ef          	jal	18c9c <strlen>
   1f048:	00050d1b          	sext.w	s10,a0
   1f04c:	fffd4d93          	not	s11,s10
   1f050:	43fddd93          	sra	s11,s11,0x3f
   1f054:	01813883          	ld	a7,24(sp)
   1f058:	02013e03          	ld	t3,32(sp)
   1f05c:	02813783          	ld	a5,40(sp)
   1f060:	03013703          	ld	a4,48(sp)
   1f064:	05013803          	ld	a6,80(sp)
   1f068:	01adfdb3          	and	s11,s11,s10
   1f06c:	00000a93          	li	s5,0
   1f070:	e4cff06f          	j	1e6bc <_svfiprintf_r+0x594>
   1f074:	000a8d9b          	sext.w	s11,s5
   1f078:	00060c13          	mv	s8,a2
   1f07c:	e40ff06f          	j	1e6bc <_svfiprintf_r+0x594>
   1f080:	04000593          	li	a1,64
   1f084:	a49f70ef          	jal	16acc <_malloc_r>
   1f088:	00a4b023          	sd	a0,0(s1)
   1f08c:	00a4bc23          	sd	a0,24(s1)
   1f090:	14050a63          	beqz	a0,1f1e4 <_svfiprintf_r+0x10bc>
   1f094:	04000793          	li	a5,64
   1f098:	02f4a023          	sw	a5,32(s1)
   1f09c:	8e8ff06f          	j	1e184 <_svfiprintf_r+0x5c>
   1f0a0:	03813783          	ld	a5,56(sp)
   1f0a4:	04813583          	ld	a1,72(sp)
   1f0a8:	00000b13          	li	s6,0
   1f0ac:	40f484b3          	sub	s1,s1,a5
   1f0b0:	00078613          	mv	a2,a5
   1f0b4:	00048513          	mv	a0,s1
   1f0b8:	cadf90ef          	jal	18d64 <strncpy>
   1f0bc:	0019c703          	lbu	a4,1(s3)
   1f0c0:	000d8513          	mv	a0,s11
   1f0c4:	00a00593          	li	a1,10
   1f0c8:	00e03733          	snez	a4,a4
   1f0cc:	00e989b3          	add	s3,s3,a4
   1f0d0:	305020ef          	jal	21bd4 <__hidden___udivdi3>
   1f0d4:	00050d93          	mv	s11,a0
   1f0d8:	db9ff06f          	j	1ee90 <_svfiprintf_r+0xd68>
   1f0dc:	00068893          	mv	a7,a3
   1f0e0:	00000693          	li	a3,0
   1f0e4:	e8068863          	beqz	a3,1e774 <_svfiprintf_r+0x64c>
   1f0e8:	ac5ff06f          	j	1ebac <_svfiprintf_r+0xa84>
   1f0ec:	200b6893          	or	a7,s6,512
   1f0f0:	00184683          	lbu	a3,1(a6)
   1f0f4:	00088b1b          	sext.w	s6,a7
   1f0f8:	00180813          	add	a6,a6,1
   1f0fc:	958ff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1f100:	020b6893          	or	a7,s6,32
   1f104:	00184683          	lbu	a3,1(a6)
   1f108:	00088b1b          	sext.w	s6,a7
   1f10c:	00180813          	add	a6,a6,1
   1f110:	944ff06f          	j	1e254 <_svfiprintf_r+0x12c>
   1f114:	00600693          	li	a3,6
   1f118:	000a8d1b          	sext.w	s10,s5
   1f11c:	0156f463          	bgeu	a3,s5,1f124 <_svfiprintf_r+0xffc>
   1f120:	00600d13          	li	s10,6
   1f124:	00022bb7          	lui	s7,0x22
   1f128:	000d0d93          	mv	s11,s10
   1f12c:	d58b8b93          	add	s7,s7,-680 # 21d58 <__clzdi2+0xcc>
   1f130:	9b0ff06f          	j	1e2e0 <_svfiprintf_r+0x1b8>
   1f134:	00000613          	li	a2,0
   1f138:	a75ff06f          	j	1ebac <_svfiprintf_r+0xa84>
   1f13c:	200d7593          	and	a1,s10,512
   1f140:	0ff6fd93          	zext.b	s11,a3
   1f144:	de059a63          	bnez	a1,1e738 <_svfiprintf_r+0x610>
   1f148:	02069d93          	sll	s11,a3,0x20
   1f14c:	020ddd93          	srl	s11,s11,0x20
   1f150:	de8ff06f          	j	1e738 <_svfiprintf_r+0x610>
   1f154:	2006f593          	and	a1,a3,512
   1f158:	04058c63          	beqz	a1,1f1b0 <_svfiprintf_r+0x1088>
   1f15c:	0ff67613          	zext.b	a2,a2
   1f160:	d10ff06f          	j	1e670 <_svfiprintf_r+0x548>
   1f164:	2008f513          	and	a0,a7,512
   1f168:	02050e63          	beqz	a0,1f1a4 <_svfiprintf_r+0x107c>
   1f16c:	0ff67613          	zext.b	a2,a2
   1f170:	e75ff06f          	j	1efe4 <_svfiprintf_r+0xebc>
   1f174:	2008f593          	and	a1,a7,512
   1f178:	02058063          	beqz	a1,1f198 <_svfiprintf_r+0x1070>
   1f17c:	01869d9b          	sllw	s11,a3,0x18
   1f180:	418ddd9b          	sraw	s11,s11,0x18
   1f184:	000d8593          	mv	a1,s11
   1f188:	c3cff06f          	j	1e5c4 <_svfiprintf_r+0x49c>
   1f18c:	01961023          	sh	s9,0(a2)
   1f190:	008c0c13          	add	s8,s8,8
   1f194:	83cff06f          	j	1e1d0 <_svfiprintf_r+0xa8>
   1f198:	00068d93          	mv	s11,a3
   1f19c:	00068593          	mv	a1,a3
   1f1a0:	c24ff06f          	j	1e5c4 <_svfiprintf_r+0x49c>
   1f1a4:	02061613          	sll	a2,a2,0x20
   1f1a8:	02065613          	srl	a2,a2,0x20
   1f1ac:	e39ff06f          	j	1efe4 <_svfiprintf_r+0xebc>
   1f1b0:	02061613          	sll	a2,a2,0x20
   1f1b4:	02065613          	srl	a2,a2,0x20
   1f1b8:	cb8ff06f          	j	1e670 <_svfiprintf_r+0x548>
   1f1bc:	000a8d93          	mv	s11,s5
   1f1c0:	000a8d13          	mv	s10,s5
   1f1c4:	00000a93          	li	s5,0
   1f1c8:	cf4ff06f          	j	1e6bc <_svfiprintf_r+0x594>
   1f1cc:	00060c13          	mv	s8,a2
   1f1d0:	03000693          	li	a3,48
   1f1d4:	c58ff06f          	j	1e62c <_svfiprintf_r+0x504>
   1f1d8:	01962023          	sw	s9,0(a2)
   1f1dc:	008c0c13          	add	s8,s8,8
   1f1e0:	ff1fe06f          	j	1e1d0 <_svfiprintf_r+0xa8>
   1f1e4:	00c00793          	li	a5,12
   1f1e8:	00f9a023          	sw	a5,0(s3)
   1f1ec:	fff00a93          	li	s5,-1
   1f1f0:	a6cff06f          	j	1e45c <_svfiprintf_r+0x334>
   1f1f4:	000c2683          	lw	a3,0(s8)
   1f1f8:	008c0c13          	add	s8,s8,8
   1f1fc:	00068a9b          	sext.w	s5,a3
   1f200:	0006d463          	bgez	a3,1f208 <_svfiprintf_r+0x10e0>
   1f204:	fff00a93          	li	s5,-1
   1f208:	00184683          	lbu	a3,1(a6)
   1f20c:	00060813          	mv	a6,a2
   1f210:	844ff06f          	j	1e254 <_svfiprintf_r+0x12c>

000000000001f214 <__swbuf_r>:
   1f214:	fd010113          	add	sp,sp,-48
   1f218:	02813023          	sd	s0,32(sp)
   1f21c:	00913c23          	sd	s1,24(sp)
   1f220:	01213823          	sd	s2,16(sp)
   1f224:	02113423          	sd	ra,40(sp)
   1f228:	01313423          	sd	s3,8(sp)
   1f22c:	00050913          	mv	s2,a0
   1f230:	00058493          	mv	s1,a1
   1f234:	00060413          	mv	s0,a2
   1f238:	00050663          	beqz	a0,1f244 <__swbuf_r+0x30>
   1f23c:	05052783          	lw	a5,80(a0)
   1f240:	14078063          	beqz	a5,1f380 <__swbuf_r+0x16c>
   1f244:	02842783          	lw	a5,40(s0)
   1f248:	01041703          	lh	a4,16(s0)
   1f24c:	00f42623          	sw	a5,12(s0)
   1f250:	00877793          	and	a5,a4,8
   1f254:	08078263          	beqz	a5,1f2d8 <__swbuf_r+0xc4>
   1f258:	01843783          	ld	a5,24(s0)
   1f25c:	06078e63          	beqz	a5,1f2d8 <__swbuf_r+0xc4>
   1f260:	0ff4f993          	zext.b	s3,s1
   1f264:	03271693          	sll	a3,a4,0x32
   1f268:	00098493          	mv	s1,s3
   1f26c:	0806da63          	bgez	a3,1f300 <__swbuf_r+0xec>
   1f270:	00043703          	ld	a4,0(s0)
   1f274:	02042683          	lw	a3,32(s0)
   1f278:	40f707bb          	subw	a5,a4,a5
   1f27c:	0ad7da63          	bge	a5,a3,1f330 <__swbuf_r+0x11c>
   1f280:	00c42683          	lw	a3,12(s0)
   1f284:	00170613          	add	a2,a4,1
   1f288:	00c43023          	sd	a2,0(s0)
   1f28c:	fff6869b          	addw	a3,a3,-1
   1f290:	00d42623          	sw	a3,12(s0)
   1f294:	01370023          	sb	s3,0(a4)
   1f298:	02042703          	lw	a4,32(s0)
   1f29c:	0017879b          	addw	a5,a5,1
   1f2a0:	0cf70463          	beq	a4,a5,1f368 <__swbuf_r+0x154>
   1f2a4:	01045783          	lhu	a5,16(s0)
   1f2a8:	0017f793          	and	a5,a5,1
   1f2ac:	00078663          	beqz	a5,1f2b8 <__swbuf_r+0xa4>
   1f2b0:	00a00793          	li	a5,10
   1f2b4:	0af48a63          	beq	s1,a5,1f368 <__swbuf_r+0x154>
   1f2b8:	02813083          	ld	ra,40(sp)
   1f2bc:	02013403          	ld	s0,32(sp)
   1f2c0:	01013903          	ld	s2,16(sp)
   1f2c4:	00813983          	ld	s3,8(sp)
   1f2c8:	00048513          	mv	a0,s1
   1f2cc:	01813483          	ld	s1,24(sp)
   1f2d0:	03010113          	add	sp,sp,48
   1f2d4:	00008067          	ret
   1f2d8:	00040593          	mv	a1,s0
   1f2dc:	00090513          	mv	a0,s2
   1f2e0:	875f30ef          	jal	12b54 <__swsetup_r>
   1f2e4:	08051a63          	bnez	a0,1f378 <__swbuf_r+0x164>
   1f2e8:	01041703          	lh	a4,16(s0)
   1f2ec:	0ff4f993          	zext.b	s3,s1
   1f2f0:	01843783          	ld	a5,24(s0)
   1f2f4:	03271693          	sll	a3,a4,0x32
   1f2f8:	00098493          	mv	s1,s3
   1f2fc:	f606cae3          	bltz	a3,1f270 <__swbuf_r+0x5c>
   1f300:	0ac42683          	lw	a3,172(s0)
   1f304:	00002637          	lui	a2,0x2
   1f308:	00c76733          	or	a4,a4,a2
   1f30c:	ffffe637          	lui	a2,0xffffe
   1f310:	fff60613          	add	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd91e7>
   1f314:	00c6f6b3          	and	a3,a3,a2
   1f318:	00e41823          	sh	a4,16(s0)
   1f31c:	00043703          	ld	a4,0(s0)
   1f320:	0ad42623          	sw	a3,172(s0)
   1f324:	02042683          	lw	a3,32(s0)
   1f328:	40f707bb          	subw	a5,a4,a5
   1f32c:	f4d7cae3          	blt	a5,a3,1f280 <__swbuf_r+0x6c>
   1f330:	00040593          	mv	a1,s0
   1f334:	00090513          	mv	a0,s2
   1f338:	cd1f30ef          	jal	13008 <_fflush_r>
   1f33c:	02051e63          	bnez	a0,1f378 <__swbuf_r+0x164>
   1f340:	00043703          	ld	a4,0(s0)
   1f344:	00c42683          	lw	a3,12(s0)
   1f348:	00100793          	li	a5,1
   1f34c:	00170613          	add	a2,a4,1
   1f350:	fff6869b          	addw	a3,a3,-1
   1f354:	00c43023          	sd	a2,0(s0)
   1f358:	00d42623          	sw	a3,12(s0)
   1f35c:	01370023          	sb	s3,0(a4)
   1f360:	02042703          	lw	a4,32(s0)
   1f364:	f4f710e3          	bne	a4,a5,1f2a4 <__swbuf_r+0x90>
   1f368:	00040593          	mv	a1,s0
   1f36c:	00090513          	mv	a0,s2
   1f370:	c99f30ef          	jal	13008 <_fflush_r>
   1f374:	f40502e3          	beqz	a0,1f2b8 <__swbuf_r+0xa4>
   1f378:	fff00493          	li	s1,-1
   1f37c:	f3dff06f          	j	1f2b8 <__swbuf_r+0xa4>
   1f380:	8b4f40ef          	jal	13434 <__sinit>
   1f384:	ec1ff06f          	j	1f244 <__swbuf_r+0x30>

000000000001f388 <__swbuf>:
   1f388:	00050793          	mv	a5,a0
   1f38c:	7581b503          	ld	a0,1880(gp) # 24d70 <_impure_ptr>
   1f390:	00058613          	mv	a2,a1
   1f394:	00078593          	mv	a1,a5
   1f398:	e7dff06f          	j	1f214 <__swbuf_r>

000000000001f39c <_wcrtomb_r>:
   1f39c:	fd010113          	add	sp,sp,-48
   1f3a0:	02813023          	sd	s0,32(sp)
   1f3a4:	00913c23          	sd	s1,24(sp)
   1f3a8:	02113423          	sd	ra,40(sp)
   1f3ac:	e401b783          	ld	a5,-448(gp) # 24458 <__global_locale+0xe0>
   1f3b0:	00050413          	mv	s0,a0
   1f3b4:	00068493          	mv	s1,a3
   1f3b8:	02058263          	beqz	a1,1f3dc <_wcrtomb_r+0x40>
   1f3bc:	000780e7          	jalr	a5
   1f3c0:	fff00793          	li	a5,-1
   1f3c4:	02f50663          	beq	a0,a5,1f3f0 <_wcrtomb_r+0x54>
   1f3c8:	02813083          	ld	ra,40(sp)
   1f3cc:	02013403          	ld	s0,32(sp)
   1f3d0:	01813483          	ld	s1,24(sp)
   1f3d4:	03010113          	add	sp,sp,48
   1f3d8:	00008067          	ret
   1f3dc:	00000613          	li	a2,0
   1f3e0:	00010593          	mv	a1,sp
   1f3e4:	000780e7          	jalr	a5
   1f3e8:	fff00793          	li	a5,-1
   1f3ec:	fcf51ee3          	bne	a0,a5,1f3c8 <_wcrtomb_r+0x2c>
   1f3f0:	0004a023          	sw	zero,0(s1)
   1f3f4:	08a00793          	li	a5,138
   1f3f8:	02813083          	ld	ra,40(sp)
   1f3fc:	00f42023          	sw	a5,0(s0)
   1f400:	02013403          	ld	s0,32(sp)
   1f404:	01813483          	ld	s1,24(sp)
   1f408:	03010113          	add	sp,sp,48
   1f40c:	00008067          	ret

000000000001f410 <wcrtomb>:
   1f410:	fd010113          	add	sp,sp,-48
   1f414:	02813023          	sd	s0,32(sp)
   1f418:	00913c23          	sd	s1,24(sp)
   1f41c:	02113423          	sd	ra,40(sp)
   1f420:	7581b483          	ld	s1,1880(gp) # 24d70 <_impure_ptr>
   1f424:	e401b783          	ld	a5,-448(gp) # 24458 <__global_locale+0xe0>
   1f428:	00060413          	mv	s0,a2
   1f42c:	02050a63          	beqz	a0,1f460 <wcrtomb+0x50>
   1f430:	00058613          	mv	a2,a1
   1f434:	00040693          	mv	a3,s0
   1f438:	00050593          	mv	a1,a0
   1f43c:	00048513          	mv	a0,s1
   1f440:	000780e7          	jalr	a5
   1f444:	fff00793          	li	a5,-1
   1f448:	02f50a63          	beq	a0,a5,1f47c <wcrtomb+0x6c>
   1f44c:	02813083          	ld	ra,40(sp)
   1f450:	02013403          	ld	s0,32(sp)
   1f454:	01813483          	ld	s1,24(sp)
   1f458:	03010113          	add	sp,sp,48
   1f45c:	00008067          	ret
   1f460:	00060693          	mv	a3,a2
   1f464:	00010593          	mv	a1,sp
   1f468:	00000613          	li	a2,0
   1f46c:	00048513          	mv	a0,s1
   1f470:	000780e7          	jalr	a5
   1f474:	fff00793          	li	a5,-1
   1f478:	fcf51ae3          	bne	a0,a5,1f44c <wcrtomb+0x3c>
   1f47c:	00042023          	sw	zero,0(s0)
   1f480:	02813083          	ld	ra,40(sp)
   1f484:	02013403          	ld	s0,32(sp)
   1f488:	08a00793          	li	a5,138
   1f48c:	00f4a023          	sw	a5,0(s1)
   1f490:	01813483          	ld	s1,24(sp)
   1f494:	03010113          	add	sp,sp,48
   1f498:	00008067          	ret

000000000001f49c <abort>:
   1f49c:	ff010113          	add	sp,sp,-16
   1f4a0:	00600513          	li	a0,6
   1f4a4:	00113423          	sd	ra,8(sp)
   1f4a8:	344000ef          	jal	1f7ec <raise>
   1f4ac:	00100513          	li	a0,1
   1f4b0:	674000ef          	jal	1fb24 <_exit>

000000000001f4b4 <__register_exitproc>:
   1f4b4:	7481b703          	ld	a4,1864(gp) # 24d60 <_global_impure_ptr>
   1f4b8:	1f873783          	ld	a5,504(a4)
   1f4bc:	06078063          	beqz	a5,1f51c <__register_exitproc+0x68>
   1f4c0:	0087a703          	lw	a4,8(a5)
   1f4c4:	01f00813          	li	a6,31
   1f4c8:	08e84663          	blt	a6,a4,1f554 <__register_exitproc+0xa0>
   1f4cc:	02050863          	beqz	a0,1f4fc <__register_exitproc+0x48>
   1f4d0:	00371813          	sll	a6,a4,0x3
   1f4d4:	01078833          	add	a6,a5,a6
   1f4d8:	10c83823          	sd	a2,272(a6)
   1f4dc:	3107a883          	lw	a7,784(a5)
   1f4e0:	00100613          	li	a2,1
   1f4e4:	00e6163b          	sllw	a2,a2,a4
   1f4e8:	00c8e8b3          	or	a7,a7,a2
   1f4ec:	3117a823          	sw	a7,784(a5)
   1f4f0:	20d83823          	sd	a3,528(a6)
   1f4f4:	00200693          	li	a3,2
   1f4f8:	02d50863          	beq	a0,a3,1f528 <__register_exitproc+0x74>
   1f4fc:	00270693          	add	a3,a4,2
   1f500:	00369693          	sll	a3,a3,0x3
   1f504:	0017071b          	addw	a4,a4,1
   1f508:	00e7a423          	sw	a4,8(a5)
   1f50c:	00d787b3          	add	a5,a5,a3
   1f510:	00b7b023          	sd	a1,0(a5)
   1f514:	00000513          	li	a0,0
   1f518:	00008067          	ret
   1f51c:	20070793          	add	a5,a4,512
   1f520:	1ef73c23          	sd	a5,504(a4)
   1f524:	f9dff06f          	j	1f4c0 <__register_exitproc+0xc>
   1f528:	3147a683          	lw	a3,788(a5)
   1f52c:	00000513          	li	a0,0
   1f530:	00c6e6b3          	or	a3,a3,a2
   1f534:	30d7aa23          	sw	a3,788(a5)
   1f538:	00270693          	add	a3,a4,2
   1f53c:	00369693          	sll	a3,a3,0x3
   1f540:	0017071b          	addw	a4,a4,1
   1f544:	00e7a423          	sw	a4,8(a5)
   1f548:	00d787b3          	add	a5,a5,a3
   1f54c:	00b7b023          	sd	a1,0(a5)
   1f550:	00008067          	ret
   1f554:	fff00513          	li	a0,-1
   1f558:	00008067          	ret

000000000001f55c <_init_signal_r>:
   1f55c:	51853783          	ld	a5,1304(a0)
   1f560:	00078663          	beqz	a5,1f56c <_init_signal_r+0x10>
   1f564:	00000513          	li	a0,0
   1f568:	00008067          	ret
   1f56c:	ff010113          	add	sp,sp,-16
   1f570:	10000593          	li	a1,256
   1f574:	00813023          	sd	s0,0(sp)
   1f578:	00113423          	sd	ra,8(sp)
   1f57c:	00050413          	mv	s0,a0
   1f580:	d4cf70ef          	jal	16acc <_malloc_r>
   1f584:	50a43c23          	sd	a0,1304(s0)
   1f588:	02050463          	beqz	a0,1f5b0 <_init_signal_r+0x54>
   1f58c:	10050793          	add	a5,a0,256
   1f590:	00053023          	sd	zero,0(a0)
   1f594:	00850513          	add	a0,a0,8
   1f598:	fef51ce3          	bne	a0,a5,1f590 <_init_signal_r+0x34>
   1f59c:	00000513          	li	a0,0
   1f5a0:	00813083          	ld	ra,8(sp)
   1f5a4:	00013403          	ld	s0,0(sp)
   1f5a8:	01010113          	add	sp,sp,16
   1f5ac:	00008067          	ret
   1f5b0:	fff00513          	li	a0,-1
   1f5b4:	fedff06f          	j	1f5a0 <_init_signal_r+0x44>

000000000001f5b8 <_signal_r>:
   1f5b8:	fd010113          	add	sp,sp,-48
   1f5bc:	00913c23          	sd	s1,24(sp)
   1f5c0:	02113423          	sd	ra,40(sp)
   1f5c4:	02813023          	sd	s0,32(sp)
   1f5c8:	01f00793          	li	a5,31
   1f5cc:	00050493          	mv	s1,a0
   1f5d0:	02b7ea63          	bltu	a5,a1,1f604 <_signal_r+0x4c>
   1f5d4:	51853783          	ld	a5,1304(a0)
   1f5d8:	00058413          	mv	s0,a1
   1f5dc:	02078c63          	beqz	a5,1f614 <_signal_r+0x5c>
   1f5e0:	00341413          	sll	s0,s0,0x3
   1f5e4:	008787b3          	add	a5,a5,s0
   1f5e8:	0007b503          	ld	a0,0(a5)
   1f5ec:	00c7b023          	sd	a2,0(a5)
   1f5f0:	02813083          	ld	ra,40(sp)
   1f5f4:	02013403          	ld	s0,32(sp)
   1f5f8:	01813483          	ld	s1,24(sp)
   1f5fc:	03010113          	add	sp,sp,48
   1f600:	00008067          	ret
   1f604:	01600793          	li	a5,22
   1f608:	00f52023          	sw	a5,0(a0)
   1f60c:	fff00513          	li	a0,-1
   1f610:	fe1ff06f          	j	1f5f0 <_signal_r+0x38>
   1f614:	10000593          	li	a1,256
   1f618:	00c13423          	sd	a2,8(sp)
   1f61c:	cb0f70ef          	jal	16acc <_malloc_r>
   1f620:	50a4bc23          	sd	a0,1304(s1)
   1f624:	00813603          	ld	a2,8(sp)
   1f628:	00050793          	mv	a5,a0
   1f62c:	00050713          	mv	a4,a0
   1f630:	10050693          	add	a3,a0,256
   1f634:	fc050ce3          	beqz	a0,1f60c <_signal_r+0x54>
   1f638:	00073023          	sd	zero,0(a4)
   1f63c:	00870713          	add	a4,a4,8
   1f640:	fed71ce3          	bne	a4,a3,1f638 <_signal_r+0x80>
   1f644:	f9dff06f          	j	1f5e0 <_signal_r+0x28>

000000000001f648 <_raise_r>:
   1f648:	fe010113          	add	sp,sp,-32
   1f64c:	00913423          	sd	s1,8(sp)
   1f650:	00113c23          	sd	ra,24(sp)
   1f654:	00813823          	sd	s0,16(sp)
   1f658:	01f00793          	li	a5,31
   1f65c:	00050493          	mv	s1,a0
   1f660:	08b7ee63          	bltu	a5,a1,1f6fc <_raise_r+0xb4>
   1f664:	51853783          	ld	a5,1304(a0)
   1f668:	00058413          	mv	s0,a1
   1f66c:	04078463          	beqz	a5,1f6b4 <_raise_r+0x6c>
   1f670:	00359713          	sll	a4,a1,0x3
   1f674:	00e787b3          	add	a5,a5,a4
   1f678:	0007b703          	ld	a4,0(a5)
   1f67c:	02070c63          	beqz	a4,1f6b4 <_raise_r+0x6c>
   1f680:	00100693          	li	a3,1
   1f684:	00d70c63          	beq	a4,a3,1f69c <_raise_r+0x54>
   1f688:	fff00693          	li	a3,-1
   1f68c:	04d70863          	beq	a4,a3,1f6dc <_raise_r+0x94>
   1f690:	0007b023          	sd	zero,0(a5)
   1f694:	00058513          	mv	a0,a1
   1f698:	000700e7          	jalr	a4
   1f69c:	00000513          	li	a0,0
   1f6a0:	01813083          	ld	ra,24(sp)
   1f6a4:	01013403          	ld	s0,16(sp)
   1f6a8:	00813483          	ld	s1,8(sp)
   1f6ac:	02010113          	add	sp,sp,32
   1f6b0:	00008067          	ret
   1f6b4:	00048513          	mv	a0,s1
   1f6b8:	424000ef          	jal	1fadc <_getpid_r>
   1f6bc:	00040613          	mv	a2,s0
   1f6c0:	01013403          	ld	s0,16(sp)
   1f6c4:	01813083          	ld	ra,24(sp)
   1f6c8:	00050593          	mv	a1,a0
   1f6cc:	00048513          	mv	a0,s1
   1f6d0:	00813483          	ld	s1,8(sp)
   1f6d4:	02010113          	add	sp,sp,32
   1f6d8:	3a00006f          	j	1fa78 <_kill_r>
   1f6dc:	01813083          	ld	ra,24(sp)
   1f6e0:	01013403          	ld	s0,16(sp)
   1f6e4:	01600793          	li	a5,22
   1f6e8:	00f52023          	sw	a5,0(a0)
   1f6ec:	00813483          	ld	s1,8(sp)
   1f6f0:	00100513          	li	a0,1
   1f6f4:	02010113          	add	sp,sp,32
   1f6f8:	00008067          	ret
   1f6fc:	01600793          	li	a5,22
   1f700:	00f52023          	sw	a5,0(a0)
   1f704:	fff00513          	li	a0,-1
   1f708:	f99ff06f          	j	1f6a0 <_raise_r+0x58>

000000000001f70c <__sigtramp_r>:
   1f70c:	01f00793          	li	a5,31
   1f710:	0cb7ea63          	bltu	a5,a1,1f7e4 <__sigtramp_r+0xd8>
   1f714:	51853783          	ld	a5,1304(a0)
   1f718:	fe010113          	add	sp,sp,-32
   1f71c:	00813823          	sd	s0,16(sp)
   1f720:	00913423          	sd	s1,8(sp)
   1f724:	00113c23          	sd	ra,24(sp)
   1f728:	00058413          	mv	s0,a1
   1f72c:	00050493          	mv	s1,a0
   1f730:	08078063          	beqz	a5,1f7b0 <__sigtramp_r+0xa4>
   1f734:	00341713          	sll	a4,s0,0x3
   1f738:	00e787b3          	add	a5,a5,a4
   1f73c:	0007b703          	ld	a4,0(a5)
   1f740:	02070c63          	beqz	a4,1f778 <__sigtramp_r+0x6c>
   1f744:	fff00693          	li	a3,-1
   1f748:	06d70063          	beq	a4,a3,1f7a8 <__sigtramp_r+0x9c>
   1f74c:	00100693          	li	a3,1
   1f750:	04d70063          	beq	a4,a3,1f790 <__sigtramp_r+0x84>
   1f754:	00040513          	mv	a0,s0
   1f758:	0007b023          	sd	zero,0(a5)
   1f75c:	000700e7          	jalr	a4
   1f760:	00000513          	li	a0,0
   1f764:	01813083          	ld	ra,24(sp)
   1f768:	01013403          	ld	s0,16(sp)
   1f76c:	00813483          	ld	s1,8(sp)
   1f770:	02010113          	add	sp,sp,32
   1f774:	00008067          	ret
   1f778:	01813083          	ld	ra,24(sp)
   1f77c:	01013403          	ld	s0,16(sp)
   1f780:	00813483          	ld	s1,8(sp)
   1f784:	00100513          	li	a0,1
   1f788:	02010113          	add	sp,sp,32
   1f78c:	00008067          	ret
   1f790:	01813083          	ld	ra,24(sp)
   1f794:	01013403          	ld	s0,16(sp)
   1f798:	00813483          	ld	s1,8(sp)
   1f79c:	00300513          	li	a0,3
   1f7a0:	02010113          	add	sp,sp,32
   1f7a4:	00008067          	ret
   1f7a8:	00200513          	li	a0,2
   1f7ac:	fb9ff06f          	j	1f764 <__sigtramp_r+0x58>
   1f7b0:	10000593          	li	a1,256
   1f7b4:	b18f70ef          	jal	16acc <_malloc_r>
   1f7b8:	50a4bc23          	sd	a0,1304(s1)
   1f7bc:	00050793          	mv	a5,a0
   1f7c0:	00050e63          	beqz	a0,1f7dc <__sigtramp_r+0xd0>
   1f7c4:	00050713          	mv	a4,a0
   1f7c8:	10050693          	add	a3,a0,256
   1f7cc:	00073023          	sd	zero,0(a4)
   1f7d0:	00870713          	add	a4,a4,8
   1f7d4:	fee69ce3          	bne	a3,a4,1f7cc <__sigtramp_r+0xc0>
   1f7d8:	f5dff06f          	j	1f734 <__sigtramp_r+0x28>
   1f7dc:	fff00513          	li	a0,-1
   1f7e0:	f85ff06f          	j	1f764 <__sigtramp_r+0x58>
   1f7e4:	fff00513          	li	a0,-1
   1f7e8:	00008067          	ret

000000000001f7ec <raise>:
   1f7ec:	fe010113          	add	sp,sp,-32
   1f7f0:	00913423          	sd	s1,8(sp)
   1f7f4:	00113c23          	sd	ra,24(sp)
   1f7f8:	00813823          	sd	s0,16(sp)
   1f7fc:	01f00793          	li	a5,31
   1f800:	7581b483          	ld	s1,1880(gp) # 24d70 <_impure_ptr>
   1f804:	08a7ec63          	bltu	a5,a0,1f89c <raise+0xb0>
   1f808:	5184b783          	ld	a5,1304(s1)
   1f80c:	00050413          	mv	s0,a0
   1f810:	04078263          	beqz	a5,1f854 <raise+0x68>
   1f814:	00351713          	sll	a4,a0,0x3
   1f818:	00e787b3          	add	a5,a5,a4
   1f81c:	0007b703          	ld	a4,0(a5)
   1f820:	02070a63          	beqz	a4,1f854 <raise+0x68>
   1f824:	00100693          	li	a3,1
   1f828:	00d70a63          	beq	a4,a3,1f83c <raise+0x50>
   1f82c:	fff00693          	li	a3,-1
   1f830:	04d70663          	beq	a4,a3,1f87c <raise+0x90>
   1f834:	0007b023          	sd	zero,0(a5)
   1f838:	000700e7          	jalr	a4
   1f83c:	00000513          	li	a0,0
   1f840:	01813083          	ld	ra,24(sp)
   1f844:	01013403          	ld	s0,16(sp)
   1f848:	00813483          	ld	s1,8(sp)
   1f84c:	02010113          	add	sp,sp,32
   1f850:	00008067          	ret
   1f854:	00048513          	mv	a0,s1
   1f858:	284000ef          	jal	1fadc <_getpid_r>
   1f85c:	00040613          	mv	a2,s0
   1f860:	01013403          	ld	s0,16(sp)
   1f864:	01813083          	ld	ra,24(sp)
   1f868:	00050593          	mv	a1,a0
   1f86c:	00048513          	mv	a0,s1
   1f870:	00813483          	ld	s1,8(sp)
   1f874:	02010113          	add	sp,sp,32
   1f878:	2000006f          	j	1fa78 <_kill_r>
   1f87c:	01813083          	ld	ra,24(sp)
   1f880:	01013403          	ld	s0,16(sp)
   1f884:	01600793          	li	a5,22
   1f888:	00f4a023          	sw	a5,0(s1)
   1f88c:	00100513          	li	a0,1
   1f890:	00813483          	ld	s1,8(sp)
   1f894:	02010113          	add	sp,sp,32
   1f898:	00008067          	ret
   1f89c:	01600793          	li	a5,22
   1f8a0:	00f4a023          	sw	a5,0(s1)
   1f8a4:	fff00513          	li	a0,-1
   1f8a8:	f99ff06f          	j	1f840 <raise+0x54>

000000000001f8ac <signal>:
   1f8ac:	fe010113          	add	sp,sp,-32
   1f8b0:	01213023          	sd	s2,0(sp)
   1f8b4:	00113c23          	sd	ra,24(sp)
   1f8b8:	00813823          	sd	s0,16(sp)
   1f8bc:	00913423          	sd	s1,8(sp)
   1f8c0:	01f00793          	li	a5,31
   1f8c4:	7581b903          	ld	s2,1880(gp) # 24d70 <_impure_ptr>
   1f8c8:	02a7ee63          	bltu	a5,a0,1f904 <signal+0x58>
   1f8cc:	00050413          	mv	s0,a0
   1f8d0:	51893503          	ld	a0,1304(s2)
   1f8d4:	00058493          	mv	s1,a1
   1f8d8:	02050e63          	beqz	a0,1f914 <signal+0x68>
   1f8dc:	00341413          	sll	s0,s0,0x3
   1f8e0:	008507b3          	add	a5,a0,s0
   1f8e4:	0007b503          	ld	a0,0(a5)
   1f8e8:	0097b023          	sd	s1,0(a5)
   1f8ec:	01813083          	ld	ra,24(sp)
   1f8f0:	01013403          	ld	s0,16(sp)
   1f8f4:	00813483          	ld	s1,8(sp)
   1f8f8:	00013903          	ld	s2,0(sp)
   1f8fc:	02010113          	add	sp,sp,32
   1f900:	00008067          	ret
   1f904:	01600793          	li	a5,22
   1f908:	00f92023          	sw	a5,0(s2)
   1f90c:	fff00513          	li	a0,-1
   1f910:	fddff06f          	j	1f8ec <signal+0x40>
   1f914:	10000593          	li	a1,256
   1f918:	00090513          	mv	a0,s2
   1f91c:	9b0f70ef          	jal	16acc <_malloc_r>
   1f920:	50a93c23          	sd	a0,1304(s2)
   1f924:	00050793          	mv	a5,a0
   1f928:	10050713          	add	a4,a0,256
   1f92c:	fe0500e3          	beqz	a0,1f90c <signal+0x60>
   1f930:	0007b023          	sd	zero,0(a5)
   1f934:	00878793          	add	a5,a5,8
   1f938:	fee79ce3          	bne	a5,a4,1f930 <signal+0x84>
   1f93c:	fa1ff06f          	j	1f8dc <signal+0x30>

000000000001f940 <_init_signal>:
   1f940:	ff010113          	add	sp,sp,-16
   1f944:	00813023          	sd	s0,0(sp)
   1f948:	7581b403          	ld	s0,1880(gp) # 24d70 <_impure_ptr>
   1f94c:	00113423          	sd	ra,8(sp)
   1f950:	51843783          	ld	a5,1304(s0)
   1f954:	00078c63          	beqz	a5,1f96c <_init_signal+0x2c>
   1f958:	00000513          	li	a0,0
   1f95c:	00813083          	ld	ra,8(sp)
   1f960:	00013403          	ld	s0,0(sp)
   1f964:	01010113          	add	sp,sp,16
   1f968:	00008067          	ret
   1f96c:	10000593          	li	a1,256
   1f970:	00040513          	mv	a0,s0
   1f974:	958f70ef          	jal	16acc <_malloc_r>
   1f978:	50a43c23          	sd	a0,1304(s0)
   1f97c:	00050c63          	beqz	a0,1f994 <_init_signal+0x54>
   1f980:	10050793          	add	a5,a0,256
   1f984:	00053023          	sd	zero,0(a0)
   1f988:	00850513          	add	a0,a0,8
   1f98c:	fef51ce3          	bne	a0,a5,1f984 <_init_signal+0x44>
   1f990:	fc9ff06f          	j	1f958 <_init_signal+0x18>
   1f994:	fff00513          	li	a0,-1
   1f998:	fc5ff06f          	j	1f95c <_init_signal+0x1c>

000000000001f99c <__sigtramp>:
   1f99c:	fe010113          	add	sp,sp,-32
   1f9a0:	00913423          	sd	s1,8(sp)
   1f9a4:	00113c23          	sd	ra,24(sp)
   1f9a8:	00813823          	sd	s0,16(sp)
   1f9ac:	01f00793          	li	a5,31
   1f9b0:	7581b483          	ld	s1,1880(gp) # 24d70 <_impure_ptr>
   1f9b4:	0aa7ee63          	bltu	a5,a0,1fa70 <__sigtramp+0xd4>
   1f9b8:	5184b783          	ld	a5,1304(s1)
   1f9bc:	00050413          	mv	s0,a0
   1f9c0:	08078063          	beqz	a5,1fa40 <__sigtramp+0xa4>
   1f9c4:	00341713          	sll	a4,s0,0x3
   1f9c8:	00e787b3          	add	a5,a5,a4
   1f9cc:	0007b703          	ld	a4,0(a5)
   1f9d0:	02070c63          	beqz	a4,1fa08 <__sigtramp+0x6c>
   1f9d4:	fff00693          	li	a3,-1
   1f9d8:	06d70063          	beq	a4,a3,1fa38 <__sigtramp+0x9c>
   1f9dc:	00100693          	li	a3,1
   1f9e0:	04d70063          	beq	a4,a3,1fa20 <__sigtramp+0x84>
   1f9e4:	00040513          	mv	a0,s0
   1f9e8:	0007b023          	sd	zero,0(a5)
   1f9ec:	000700e7          	jalr	a4
   1f9f0:	00000513          	li	a0,0
   1f9f4:	01813083          	ld	ra,24(sp)
   1f9f8:	01013403          	ld	s0,16(sp)
   1f9fc:	00813483          	ld	s1,8(sp)
   1fa00:	02010113          	add	sp,sp,32
   1fa04:	00008067          	ret
   1fa08:	01813083          	ld	ra,24(sp)
   1fa0c:	01013403          	ld	s0,16(sp)
   1fa10:	00813483          	ld	s1,8(sp)
   1fa14:	00100513          	li	a0,1
   1fa18:	02010113          	add	sp,sp,32
   1fa1c:	00008067          	ret
   1fa20:	01813083          	ld	ra,24(sp)
   1fa24:	01013403          	ld	s0,16(sp)
   1fa28:	00813483          	ld	s1,8(sp)
   1fa2c:	00300513          	li	a0,3
   1fa30:	02010113          	add	sp,sp,32
   1fa34:	00008067          	ret
   1fa38:	00200513          	li	a0,2
   1fa3c:	fb9ff06f          	j	1f9f4 <__sigtramp+0x58>
   1fa40:	10000593          	li	a1,256
   1fa44:	00048513          	mv	a0,s1
   1fa48:	884f70ef          	jal	16acc <_malloc_r>
   1fa4c:	50a4bc23          	sd	a0,1304(s1)
   1fa50:	00050793          	mv	a5,a0
   1fa54:	00050e63          	beqz	a0,1fa70 <__sigtramp+0xd4>
   1fa58:	00050713          	mv	a4,a0
   1fa5c:	10050693          	add	a3,a0,256
   1fa60:	00073023          	sd	zero,0(a4)
   1fa64:	00870713          	add	a4,a4,8
   1fa68:	fee69ce3          	bne	a3,a4,1fa60 <__sigtramp+0xc4>
   1fa6c:	f59ff06f          	j	1f9c4 <__sigtramp+0x28>
   1fa70:	fff00513          	li	a0,-1
   1fa74:	f81ff06f          	j	1f9f4 <__sigtramp+0x58>

000000000001fa78 <_kill_r>:
   1fa78:	fe010113          	add	sp,sp,-32
   1fa7c:	00058713          	mv	a4,a1
   1fa80:	00813823          	sd	s0,16(sp)
   1fa84:	00913423          	sd	s1,8(sp)
   1fa88:	00050413          	mv	s0,a0
   1fa8c:	00060593          	mv	a1,a2
   1fa90:	00070513          	mv	a0,a4
   1fa94:	00113c23          	sd	ra,24(sp)
   1fa98:	7801a823          	sw	zero,1936(gp) # 24da8 <errno>
   1fa9c:	164000ef          	jal	1fc00 <_kill>
   1faa0:	fff00793          	li	a5,-1
   1faa4:	00f50c63          	beq	a0,a5,1fabc <_kill_r+0x44>
   1faa8:	01813083          	ld	ra,24(sp)
   1faac:	01013403          	ld	s0,16(sp)
   1fab0:	00813483          	ld	s1,8(sp)
   1fab4:	02010113          	add	sp,sp,32
   1fab8:	00008067          	ret
   1fabc:	7901a783          	lw	a5,1936(gp) # 24da8 <errno>
   1fac0:	fe0784e3          	beqz	a5,1faa8 <_kill_r+0x30>
   1fac4:	01813083          	ld	ra,24(sp)
   1fac8:	00f42023          	sw	a5,0(s0)
   1facc:	01013403          	ld	s0,16(sp)
   1fad0:	00813483          	ld	s1,8(sp)
   1fad4:	02010113          	add	sp,sp,32
   1fad8:	00008067          	ret

000000000001fadc <_getpid_r>:
   1fadc:	0dc0006f          	j	1fbb8 <_getpid>

000000000001fae0 <_close>:
   1fae0:	ff010113          	add	sp,sp,-16
   1fae4:	00113423          	sd	ra,8(sp)
   1fae8:	00813023          	sd	s0,0(sp)
   1faec:	03900893          	li	a7,57
   1faf0:	00000073          	ecall
   1faf4:	00050413          	mv	s0,a0
   1faf8:	00054c63          	bltz	a0,1fb10 <_close+0x30>
   1fafc:	0005051b          	sext.w	a0,a0
   1fb00:	00813083          	ld	ra,8(sp)
   1fb04:	00013403          	ld	s0,0(sp)
   1fb08:	01010113          	add	sp,sp,16
   1fb0c:	00008067          	ret
   1fb10:	8d0fd0ef          	jal	1cbe0 <__errno>
   1fb14:	4080043b          	negw	s0,s0
   1fb18:	00852023          	sw	s0,0(a0)
   1fb1c:	fff00513          	li	a0,-1
   1fb20:	fe1ff06f          	j	1fb00 <_close+0x20>

000000000001fb24 <_exit>:
   1fb24:	05d00893          	li	a7,93
   1fb28:	00000073          	ecall
   1fb2c:	00054463          	bltz	a0,1fb34 <_exit+0x10>
   1fb30:	0000006f          	j	1fb30 <_exit+0xc>
   1fb34:	ff010113          	add	sp,sp,-16
   1fb38:	00813023          	sd	s0,0(sp)
   1fb3c:	00050413          	mv	s0,a0
   1fb40:	00113423          	sd	ra,8(sp)
   1fb44:	4080043b          	negw	s0,s0
   1fb48:	898fd0ef          	jal	1cbe0 <__errno>
   1fb4c:	00852023          	sw	s0,0(a0)
   1fb50:	0000006f          	j	1fb50 <_exit+0x2c>

000000000001fb54 <_fstat>:
   1fb54:	f6010113          	add	sp,sp,-160
   1fb58:	08913423          	sd	s1,136(sp)
   1fb5c:	08113c23          	sd	ra,152(sp)
   1fb60:	00058493          	mv	s1,a1
   1fb64:	08813823          	sd	s0,144(sp)
   1fb68:	05000893          	li	a7,80
   1fb6c:	00010593          	mv	a1,sp
   1fb70:	00000073          	ecall
   1fb74:	00050413          	mv	s0,a0
   1fb78:	02054663          	bltz	a0,1fba4 <_fstat+0x50>
   1fb7c:	0005041b          	sext.w	s0,a0
   1fb80:	00048513          	mv	a0,s1
   1fb84:	00010593          	mv	a1,sp
   1fb88:	1e0000ef          	jal	1fd68 <_conv_stat>
   1fb8c:	09813083          	ld	ra,152(sp)
   1fb90:	00040513          	mv	a0,s0
   1fb94:	09013403          	ld	s0,144(sp)
   1fb98:	08813483          	ld	s1,136(sp)
   1fb9c:	0a010113          	add	sp,sp,160
   1fba0:	00008067          	ret
   1fba4:	4080043b          	negw	s0,s0
   1fba8:	838fd0ef          	jal	1cbe0 <__errno>
   1fbac:	00852023          	sw	s0,0(a0)
   1fbb0:	fff00413          	li	s0,-1
   1fbb4:	fcdff06f          	j	1fb80 <_fstat+0x2c>

000000000001fbb8 <_getpid>:
   1fbb8:	00100513          	li	a0,1
   1fbbc:	00008067          	ret

000000000001fbc0 <_isatty>:
   1fbc0:	f8010113          	add	sp,sp,-128
   1fbc4:	00810593          	add	a1,sp,8
   1fbc8:	06113c23          	sd	ra,120(sp)
   1fbcc:	f89ff0ef          	jal	1fb54 <_fstat>
   1fbd0:	fff00793          	li	a5,-1
   1fbd4:	00f50e63          	beq	a0,a5,1fbf0 <_isatty+0x30>
   1fbd8:	00c12503          	lw	a0,12(sp)
   1fbdc:	07813083          	ld	ra,120(sp)
   1fbe0:	40d5551b          	sraw	a0,a0,0xd
   1fbe4:	00157513          	and	a0,a0,1
   1fbe8:	08010113          	add	sp,sp,128
   1fbec:	00008067          	ret
   1fbf0:	07813083          	ld	ra,120(sp)
   1fbf4:	00000513          	li	a0,0
   1fbf8:	08010113          	add	sp,sp,128
   1fbfc:	00008067          	ret

000000000001fc00 <_kill>:
   1fc00:	ff010113          	add	sp,sp,-16
   1fc04:	00113423          	sd	ra,8(sp)
   1fc08:	fd9fc0ef          	jal	1cbe0 <__errno>
   1fc0c:	00813083          	ld	ra,8(sp)
   1fc10:	01600793          	li	a5,22
   1fc14:	00f52023          	sw	a5,0(a0)
   1fc18:	fff00513          	li	a0,-1
   1fc1c:	01010113          	add	sp,sp,16
   1fc20:	00008067          	ret

000000000001fc24 <_lseek>:
   1fc24:	ff010113          	add	sp,sp,-16
   1fc28:	00113423          	sd	ra,8(sp)
   1fc2c:	00813023          	sd	s0,0(sp)
   1fc30:	03e00893          	li	a7,62
   1fc34:	00000073          	ecall
   1fc38:	00050413          	mv	s0,a0
   1fc3c:	00054c63          	bltz	a0,1fc54 <_lseek+0x30>
   1fc40:	00813083          	ld	ra,8(sp)
   1fc44:	00040513          	mv	a0,s0
   1fc48:	00013403          	ld	s0,0(sp)
   1fc4c:	01010113          	add	sp,sp,16
   1fc50:	00008067          	ret
   1fc54:	4080043b          	negw	s0,s0
   1fc58:	f89fc0ef          	jal	1cbe0 <__errno>
   1fc5c:	00852023          	sw	s0,0(a0)
   1fc60:	fff00413          	li	s0,-1
   1fc64:	fddff06f          	j	1fc40 <_lseek+0x1c>

000000000001fc68 <_read>:
   1fc68:	ff010113          	add	sp,sp,-16
   1fc6c:	00113423          	sd	ra,8(sp)
   1fc70:	00813023          	sd	s0,0(sp)
   1fc74:	03f00893          	li	a7,63
   1fc78:	00000073          	ecall
   1fc7c:	00050413          	mv	s0,a0
   1fc80:	00054c63          	bltz	a0,1fc98 <_read+0x30>
   1fc84:	00813083          	ld	ra,8(sp)
   1fc88:	00040513          	mv	a0,s0
   1fc8c:	00013403          	ld	s0,0(sp)
   1fc90:	01010113          	add	sp,sp,16
   1fc94:	00008067          	ret
   1fc98:	4080043b          	negw	s0,s0
   1fc9c:	f45fc0ef          	jal	1cbe0 <__errno>
   1fca0:	00852023          	sw	s0,0(a0)
   1fca4:	fff00413          	li	s0,-1
   1fca8:	fddff06f          	j	1fc84 <_read+0x1c>

000000000001fcac <_sbrk>:
   1fcac:	7981b703          	ld	a4,1944(gp) # 24db0 <heap_end.0>
   1fcb0:	ff010113          	add	sp,sp,-16
   1fcb4:	00113423          	sd	ra,8(sp)
   1fcb8:	00050793          	mv	a5,a0
   1fcbc:	02071063          	bnez	a4,1fcdc <_sbrk+0x30>
   1fcc0:	0d600893          	li	a7,214
   1fcc4:	00000513          	li	a0,0
   1fcc8:	00000073          	ecall
   1fccc:	fff00613          	li	a2,-1
   1fcd0:	00050713          	mv	a4,a0
   1fcd4:	02c50a63          	beq	a0,a2,1fd08 <_sbrk+0x5c>
   1fcd8:	78a1bc23          	sd	a0,1944(gp) # 24db0 <heap_end.0>
   1fcdc:	0d600893          	li	a7,214
   1fce0:	00e78533          	add	a0,a5,a4
   1fce4:	00000073          	ecall
   1fce8:	7981b703          	ld	a4,1944(gp) # 24db0 <heap_end.0>
   1fcec:	00e787b3          	add	a5,a5,a4
   1fcf0:	00f51c63          	bne	a0,a5,1fd08 <_sbrk+0x5c>
   1fcf4:	00813083          	ld	ra,8(sp)
   1fcf8:	78a1bc23          	sd	a0,1944(gp) # 24db0 <heap_end.0>
   1fcfc:	00070513          	mv	a0,a4
   1fd00:	01010113          	add	sp,sp,16
   1fd04:	00008067          	ret
   1fd08:	ed9fc0ef          	jal	1cbe0 <__errno>
   1fd0c:	00813083          	ld	ra,8(sp)
   1fd10:	00c00793          	li	a5,12
   1fd14:	00f52023          	sw	a5,0(a0)
   1fd18:	fff00513          	li	a0,-1
   1fd1c:	01010113          	add	sp,sp,16
   1fd20:	00008067          	ret

000000000001fd24 <_write>:
   1fd24:	ff010113          	add	sp,sp,-16
   1fd28:	00113423          	sd	ra,8(sp)
   1fd2c:	00813023          	sd	s0,0(sp)
   1fd30:	04000893          	li	a7,64
   1fd34:	00000073          	ecall
   1fd38:	00050413          	mv	s0,a0
   1fd3c:	00054c63          	bltz	a0,1fd54 <_write+0x30>
   1fd40:	00813083          	ld	ra,8(sp)
   1fd44:	00040513          	mv	a0,s0
   1fd48:	00013403          	ld	s0,0(sp)
   1fd4c:	01010113          	add	sp,sp,16
   1fd50:	00008067          	ret
   1fd54:	4080043b          	negw	s0,s0
   1fd58:	e89fc0ef          	jal	1cbe0 <__errno>
   1fd5c:	00852023          	sw	s0,0(a0)
   1fd60:	fff00413          	li	s0,-1
   1fd64:	fddff06f          	j	1fd40 <_write+0x1c>

000000000001fd68 <_conv_stat>:
   1fd68:	0185d703          	lhu	a4,24(a1)
   1fd6c:	0145d783          	lhu	a5,20(a1)
   1fd70:	01c5a603          	lw	a2,28(a1)
   1fd74:	0205b683          	ld	a3,32(a1)
   1fd78:	0005b303          	ld	t1,0(a1)
   1fd7c:	0085b883          	ld	a7,8(a1)
   1fd80:	0105a803          	lw	a6,16(a1)
   1fd84:	0107171b          	sllw	a4,a4,0x10
   1fd88:	00e7e7b3          	or	a5,a5,a4
   1fd8c:	00c51623          	sh	a2,12(a0)
   1fd90:	00d51723          	sh	a3,14(a0)
   1fd94:	00651023          	sh	t1,0(a0)
   1fd98:	01151123          	sh	a7,2(a0)
   1fd9c:	01052223          	sw	a6,4(a0)
   1fda0:	00f52423          	sw	a5,8(a0)
   1fda4:	0305b703          	ld	a4,48(a1)
   1fda8:	0485b783          	ld	a5,72(a1)
   1fdac:	0405b603          	ld	a2,64(a1)
   1fdb0:	0385a683          	lw	a3,56(a1)
   1fdb4:	00e53823          	sd	a4,16(a0)
   1fdb8:	00f53c23          	sd	a5,24(a0)
   1fdbc:	0585b703          	ld	a4,88(a1)
   1fdc0:	0685b783          	ld	a5,104(a1)
   1fdc4:	04c53823          	sd	a2,80(a0)
   1fdc8:	04d53423          	sd	a3,72(a0)
   1fdcc:	02e53423          	sd	a4,40(a0)
   1fdd0:	02f53c23          	sd	a5,56(a0)
   1fdd4:	00008067          	ret

000000000001fdd8 <__divdf3>:
   1fdd8:	fb010113          	add	sp,sp,-80
   1fddc:	02913c23          	sd	s1,56(sp)
   1fde0:	03455493          	srl	s1,a0,0x34
   1fde4:	03313423          	sd	s3,40(sp)
   1fde8:	01513c23          	sd	s5,24(sp)
   1fdec:	01613823          	sd	s6,16(sp)
   1fdf0:	00c51a93          	sll	s5,a0,0xc
   1fdf4:	04113423          	sd	ra,72(sp)
   1fdf8:	04813023          	sd	s0,64(sp)
   1fdfc:	03213823          	sd	s2,48(sp)
   1fe00:	03413023          	sd	s4,32(sp)
   1fe04:	01713423          	sd	s7,8(sp)
   1fe08:	01813023          	sd	s8,0(sp)
   1fe0c:	7ff4f493          	and	s1,s1,2047
   1fe10:	00058b13          	mv	s6,a1
   1fe14:	00cada93          	srl	s5,s5,0xc
   1fe18:	03f55993          	srl	s3,a0,0x3f
   1fe1c:	08048863          	beqz	s1,1feac <__divdf3+0xd4>
   1fe20:	7ff00793          	li	a5,2047
   1fe24:	0af48663          	beq	s1,a5,1fed0 <__divdf3+0xf8>
   1fe28:	00100793          	li	a5,1
   1fe2c:	003a9a93          	sll	s5,s5,0x3
   1fe30:	03779793          	sll	a5,a5,0x37
   1fe34:	00faeab3          	or	s5,s5,a5
   1fe38:	c0148493          	add	s1,s1,-1023
   1fe3c:	00000b93          	li	s7,0
   1fe40:	034b5793          	srl	a5,s6,0x34
   1fe44:	00cb1413          	sll	s0,s6,0xc
   1fe48:	7ff7f793          	and	a5,a5,2047
   1fe4c:	00c45413          	srl	s0,s0,0xc
   1fe50:	03fb5b13          	srl	s6,s6,0x3f
   1fe54:	08078e63          	beqz	a5,1fef0 <__divdf3+0x118>
   1fe58:	7ff00713          	li	a4,2047
   1fe5c:	0ae78c63          	beq	a5,a4,1ff14 <__divdf3+0x13c>
   1fe60:	00100713          	li	a4,1
   1fe64:	00341413          	sll	s0,s0,0x3
   1fe68:	03771713          	sll	a4,a4,0x37
   1fe6c:	00e46433          	or	s0,s0,a4
   1fe70:	c0178793          	add	a5,a5,-1023
   1fe74:	00000713          	li	a4,0
   1fe78:	40f48a33          	sub	s4,s1,a5
   1fe7c:	002b9793          	sll	a5,s7,0x2
   1fe80:	00e7e7b3          	or	a5,a5,a4
   1fe84:	fff78793          	add	a5,a5,-1
   1fe88:	00e00693          	li	a3,14
   1fe8c:	0169c933          	xor	s2,s3,s6
   1fe90:	0cf6ea63          	bltu	a3,a5,1ff64 <__divdf3+0x18c>
   1fe94:	000236b7          	lui	a3,0x23
   1fe98:	00279793          	sll	a5,a5,0x2
   1fe9c:	ad068693          	add	a3,a3,-1328 # 22ad0 <blanks.1+0x10>
   1fea0:	00d787b3          	add	a5,a5,a3
   1fea4:	0007a783          	lw	a5,0(a5)
   1fea8:	00078067          	jr	a5
   1feac:	020a8c63          	beqz	s5,1fee4 <__divdf3+0x10c>
   1feb0:	000a8513          	mv	a0,s5
   1feb4:	5d9010ef          	jal	21c8c <__clzdi2>
   1feb8:	0005079b          	sext.w	a5,a0
   1febc:	c0d00493          	li	s1,-1011
   1fec0:	ff85051b          	addw	a0,a0,-8
   1fec4:	00aa9ab3          	sll	s5,s5,a0
   1fec8:	40f484b3          	sub	s1,s1,a5
   1fecc:	f71ff06f          	j	1fe3c <__divdf3+0x64>
   1fed0:	7ff00493          	li	s1,2047
   1fed4:	00300b93          	li	s7,3
   1fed8:	f60a94e3          	bnez	s5,1fe40 <__divdf3+0x68>
   1fedc:	00200b93          	li	s7,2
   1fee0:	f61ff06f          	j	1fe40 <__divdf3+0x68>
   1fee4:	00000493          	li	s1,0
   1fee8:	00100b93          	li	s7,1
   1feec:	f55ff06f          	j	1fe40 <__divdf3+0x68>
   1fef0:	02040c63          	beqz	s0,1ff28 <__divdf3+0x150>
   1fef4:	00040513          	mv	a0,s0
   1fef8:	595010ef          	jal	21c8c <__clzdi2>
   1fefc:	0005071b          	sext.w	a4,a0
   1ff00:	c0d00793          	li	a5,-1011
   1ff04:	ff85051b          	addw	a0,a0,-8
   1ff08:	00a41433          	sll	s0,s0,a0
   1ff0c:	40e787b3          	sub	a5,a5,a4
   1ff10:	f65ff06f          	j	1fe74 <__divdf3+0x9c>
   1ff14:	7ff00793          	li	a5,2047
   1ff18:	00300713          	li	a4,3
   1ff1c:	f4041ee3          	bnez	s0,1fe78 <__divdf3+0xa0>
   1ff20:	00200713          	li	a4,2
   1ff24:	f55ff06f          	j	1fe78 <__divdf3+0xa0>
   1ff28:	00000793          	li	a5,0
   1ff2c:	00100713          	li	a4,1
   1ff30:	f49ff06f          	j	1fe78 <__divdf3+0xa0>
   1ff34:	00098913          	mv	s2,s3
   1ff38:	000a8413          	mv	s0,s5
   1ff3c:	000b8713          	mv	a4,s7
   1ff40:	00200793          	li	a5,2
   1ff44:	22f70663          	beq	a4,a5,20170 <__divdf3+0x398>
   1ff48:	00300793          	li	a5,3
   1ff4c:	20f70863          	beq	a4,a5,2015c <__divdf3+0x384>
   1ff50:	00100793          	li	a5,1
   1ff54:	0ef71c63          	bne	a4,a5,2004c <__divdf3+0x274>
   1ff58:	00000793          	li	a5,0
   1ff5c:	00000513          	li	a0,0
   1ff60:	1380006f          	j	20098 <__divdf3+0x2c0>
   1ff64:	00841c13          	sll	s8,s0,0x8
   1ff68:	168afc63          	bgeu	s5,s0,200e0 <__divdf3+0x308>
   1ff6c:	fffa0a13          	add	s4,s4,-1
   1ff70:	00000413          	li	s0,0
   1ff74:	020c5b13          	srl	s6,s8,0x20
   1ff78:	fff00993          	li	s3,-1
   1ff7c:	000b0593          	mv	a1,s6
   1ff80:	0209d993          	srl	s3,s3,0x20
   1ff84:	000a8513          	mv	a0,s5
   1ff88:	44d010ef          	jal	21bd4 <__hidden___udivdi3>
   1ff8c:	013c79b3          	and	s3,s8,s3
   1ff90:	00050593          	mv	a1,a0
   1ff94:	00050b93          	mv	s7,a0
   1ff98:	00098513          	mv	a0,s3
   1ff9c:	3cd010ef          	jal	21b68 <__muldi3>
   1ffa0:	00050493          	mv	s1,a0
   1ffa4:	000b0593          	mv	a1,s6
   1ffa8:	000a8513          	mv	a0,s5
   1ffac:	471010ef          	jal	21c1c <__umoddi3>
   1ffb0:	02045793          	srl	a5,s0,0x20
   1ffb4:	02051513          	sll	a0,a0,0x20
   1ffb8:	00a7e7b3          	or	a5,a5,a0
   1ffbc:	000b8413          	mv	s0,s7
   1ffc0:	0097fe63          	bgeu	a5,s1,1ffdc <__divdf3+0x204>
   1ffc4:	00fc07b3          	add	a5,s8,a5
   1ffc8:	fffb8413          	add	s0,s7,-1
   1ffcc:	0187e863          	bltu	a5,s8,1ffdc <__divdf3+0x204>
   1ffd0:	0097f663          	bgeu	a5,s1,1ffdc <__divdf3+0x204>
   1ffd4:	ffeb8413          	add	s0,s7,-2
   1ffd8:	018787b3          	add	a5,a5,s8
   1ffdc:	409784b3          	sub	s1,a5,s1
   1ffe0:	000b0593          	mv	a1,s6
   1ffe4:	00048513          	mv	a0,s1
   1ffe8:	3ed010ef          	jal	21bd4 <__hidden___udivdi3>
   1ffec:	00050593          	mv	a1,a0
   1fff0:	00050a93          	mv	s5,a0
   1fff4:	00098513          	mv	a0,s3
   1fff8:	371010ef          	jal	21b68 <__muldi3>
   1fffc:	00050993          	mv	s3,a0
   20000:	000b0593          	mv	a1,s6
   20004:	00048513          	mv	a0,s1
   20008:	415010ef          	jal	21c1c <__umoddi3>
   2000c:	02051793          	sll	a5,a0,0x20
   20010:	000a8713          	mv	a4,s5
   20014:	0337f263          	bgeu	a5,s3,20038 <__divdf3+0x260>
   20018:	018786b3          	add	a3,a5,s8
   2001c:	00f6b633          	sltu	a2,a3,a5
   20020:	fffa8713          	add	a4,s5,-1
   20024:	00068793          	mv	a5,a3
   20028:	00061863          	bnez	a2,20038 <__divdf3+0x260>
   2002c:	0136f663          	bgeu	a3,s3,20038 <__divdf3+0x260>
   20030:	ffea8713          	add	a4,s5,-2
   20034:	018687b3          	add	a5,a3,s8
   20038:	02041413          	sll	s0,s0,0x20
   2003c:	413787b3          	sub	a5,a5,s3
   20040:	00e46433          	or	s0,s0,a4
   20044:	00f037b3          	snez	a5,a5
   20048:	00f46433          	or	s0,s0,a5
   2004c:	3ffa0513          	add	a0,s4,1023
   20050:	0aa05263          	blez	a0,200f4 <__divdf3+0x31c>
   20054:	00747793          	and	a5,s0,7
   20058:	00078a63          	beqz	a5,2006c <__divdf3+0x294>
   2005c:	00f47793          	and	a5,s0,15
   20060:	00400713          	li	a4,4
   20064:	00e78463          	beq	a5,a4,2006c <__divdf3+0x294>
   20068:	00440413          	add	s0,s0,4
   2006c:	03845793          	srl	a5,s0,0x38
   20070:	0017f793          	and	a5,a5,1
   20074:	00078c63          	beqz	a5,2008c <__divdf3+0x2b4>
   20078:	fff00793          	li	a5,-1
   2007c:	03879793          	sll	a5,a5,0x38
   20080:	fff78793          	add	a5,a5,-1
   20084:	00f47433          	and	s0,s0,a5
   20088:	400a0513          	add	a0,s4,1024
   2008c:	7fe00793          	li	a5,2046
   20090:	0ea7c063          	blt	a5,a0,20170 <__divdf3+0x398>
   20094:	00345793          	srl	a5,s0,0x3
   20098:	04813083          	ld	ra,72(sp)
   2009c:	04013403          	ld	s0,64(sp)
   200a0:	00c79793          	sll	a5,a5,0xc
   200a4:	03451513          	sll	a0,a0,0x34
   200a8:	00c7d793          	srl	a5,a5,0xc
   200ac:	03f91913          	sll	s2,s2,0x3f
   200b0:	00f56533          	or	a0,a0,a5
   200b4:	03813483          	ld	s1,56(sp)
   200b8:	02813983          	ld	s3,40(sp)
   200bc:	02013a03          	ld	s4,32(sp)
   200c0:	01813a83          	ld	s5,24(sp)
   200c4:	01013b03          	ld	s6,16(sp)
   200c8:	00813b83          	ld	s7,8(sp)
   200cc:	00013c03          	ld	s8,0(sp)
   200d0:	01256533          	or	a0,a0,s2
   200d4:	03013903          	ld	s2,48(sp)
   200d8:	05010113          	add	sp,sp,80
   200dc:	00008067          	ret
   200e0:	03fa9413          	sll	s0,s5,0x3f
   200e4:	001ada93          	srl	s5,s5,0x1
   200e8:	e8dff06f          	j	1ff74 <__divdf3+0x19c>
   200ec:	000b0913          	mv	s2,s6
   200f0:	e51ff06f          	j	1ff40 <__divdf3+0x168>
   200f4:	00100713          	li	a4,1
   200f8:	00050c63          	beqz	a0,20110 <__divdf3+0x338>
   200fc:	40a70733          	sub	a4,a4,a0
   20100:	03800693          	li	a3,56
   20104:	00000793          	li	a5,0
   20108:	00000513          	li	a0,0
   2010c:	f8e6c6e3          	blt	a3,a4,20098 <__divdf3+0x2c0>
   20110:	04000693          	li	a3,64
   20114:	00e457b3          	srl	a5,s0,a4
   20118:	40e6873b          	subw	a4,a3,a4
   2011c:	00e41433          	sll	s0,s0,a4
   20120:	00803433          	snez	s0,s0
   20124:	0087e7b3          	or	a5,a5,s0
   20128:	0077f713          	and	a4,a5,7
   2012c:	00070a63          	beqz	a4,20140 <__divdf3+0x368>
   20130:	00f7f713          	and	a4,a5,15
   20134:	00400693          	li	a3,4
   20138:	00d70463          	beq	a4,a3,20140 <__divdf3+0x368>
   2013c:	00478793          	add	a5,a5,4
   20140:	0377d713          	srl	a4,a5,0x37
   20144:	00177713          	and	a4,a4,1
   20148:	0037d793          	srl	a5,a5,0x3
   2014c:	e00708e3          	beqz	a4,1ff5c <__divdf3+0x184>
   20150:	00000793          	li	a5,0
   20154:	00100513          	li	a0,1
   20158:	f41ff06f          	j	20098 <__divdf3+0x2c0>
   2015c:	00100793          	li	a5,1
   20160:	03379793          	sll	a5,a5,0x33
   20164:	7ff00513          	li	a0,2047
   20168:	00000913          	li	s2,0
   2016c:	f2dff06f          	j	20098 <__divdf3+0x2c0>
   20170:	00000793          	li	a5,0
   20174:	7ff00513          	li	a0,2047
   20178:	f21ff06f          	j	20098 <__divdf3+0x2c0>

000000000002017c <__muldf3>:
   2017c:	fc010113          	add	sp,sp,-64
   20180:	03213023          	sd	s2,32(sp)
   20184:	03455913          	srl	s2,a0,0x34
   20188:	02913423          	sd	s1,40(sp)
   2018c:	01313c23          	sd	s3,24(sp)
   20190:	01513423          	sd	s5,8(sp)
   20194:	00c51493          	sll	s1,a0,0xc
   20198:	02113c23          	sd	ra,56(sp)
   2019c:	02813823          	sd	s0,48(sp)
   201a0:	01413823          	sd	s4,16(sp)
   201a4:	7ff97913          	and	s2,s2,2047
   201a8:	00058a93          	mv	s5,a1
   201ac:	00c4d493          	srl	s1,s1,0xc
   201b0:	03f55993          	srl	s3,a0,0x3f
   201b4:	1c090c63          	beqz	s2,2038c <__muldf3+0x210>
   201b8:	7ff00793          	li	a5,2047
   201bc:	1ef90a63          	beq	s2,a5,203b0 <__muldf3+0x234>
   201c0:	00100793          	li	a5,1
   201c4:	00349493          	sll	s1,s1,0x3
   201c8:	03779793          	sll	a5,a5,0x37
   201cc:	00f4e4b3          	or	s1,s1,a5
   201d0:	c0190913          	add	s2,s2,-1023
   201d4:	00000a13          	li	s4,0
   201d8:	034ad793          	srl	a5,s5,0x34
   201dc:	00ca9413          	sll	s0,s5,0xc
   201e0:	7ff7f793          	and	a5,a5,2047
   201e4:	00c45413          	srl	s0,s0,0xc
   201e8:	03fada93          	srl	s5,s5,0x3f
   201ec:	1e078263          	beqz	a5,203d0 <__muldf3+0x254>
   201f0:	7ff00713          	li	a4,2047
   201f4:	20e78063          	beq	a5,a4,203f4 <__muldf3+0x278>
   201f8:	00100713          	li	a4,1
   201fc:	00341413          	sll	s0,s0,0x3
   20200:	03771713          	sll	a4,a4,0x37
   20204:	00e46433          	or	s0,s0,a4
   20208:	c0178793          	add	a5,a5,-1023
   2020c:	00000693          	li	a3,0
   20210:	002a1713          	sll	a4,s4,0x2
   20214:	00f90933          	add	s2,s2,a5
   20218:	00d76733          	or	a4,a4,a3
   2021c:	00a00793          	li	a5,10
   20220:	0159c833          	xor	a6,s3,s5
   20224:	00190893          	add	a7,s2,1
   20228:	22e7ca63          	blt	a5,a4,2045c <__muldf3+0x2e0>
   2022c:	00200793          	li	a5,2
   20230:	1ee7c263          	blt	a5,a4,20414 <__muldf3+0x298>
   20234:	fff70713          	add	a4,a4,-1
   20238:	00100793          	li	a5,1
   2023c:	1ee7fe63          	bgeu	a5,a4,20438 <__muldf3+0x2bc>
   20240:	fff00793          	li	a5,-1
   20244:	0207d793          	srl	a5,a5,0x20
   20248:	0204df13          	srl	t5,s1,0x20
   2024c:	00f4f4b3          	and	s1,s1,a5
   20250:	00f477b3          	and	a5,s0,a5
   20254:	02045e93          	srl	t4,s0,0x20
   20258:	00048513          	mv	a0,s1
   2025c:	00078593          	mv	a1,a5
   20260:	109010ef          	jal	21b68 <__muldi3>
   20264:	00050313          	mv	t1,a0
   20268:	000e8593          	mv	a1,t4
   2026c:	00048513          	mv	a0,s1
   20270:	0f9010ef          	jal	21b68 <__muldi3>
   20274:	00050713          	mv	a4,a0
   20278:	00078593          	mv	a1,a5
   2027c:	000f0513          	mv	a0,t5
   20280:	0e9010ef          	jal	21b68 <__muldi3>
   20284:	00050e13          	mv	t3,a0
   20288:	000e8593          	mv	a1,t4
   2028c:	000f0513          	mv	a0,t5
   20290:	0d9010ef          	jal	21b68 <__muldi3>
   20294:	02035793          	srl	a5,t1,0x20
   20298:	01c70733          	add	a4,a4,t3
   2029c:	00e787b3          	add	a5,a5,a4
   202a0:	00050693          	mv	a3,a0
   202a4:	01c7f863          	bgeu	a5,t3,202b4 <__muldf3+0x138>
   202a8:	00100713          	li	a4,1
   202ac:	02071713          	sll	a4,a4,0x20
   202b0:	00e506b3          	add	a3,a0,a4
   202b4:	fff00613          	li	a2,-1
   202b8:	02065613          	srl	a2,a2,0x20
   202bc:	00c7f733          	and	a4,a5,a2
   202c0:	02071713          	sll	a4,a4,0x20
   202c4:	00c37333          	and	t1,t1,a2
   202c8:	00670733          	add	a4,a4,t1
   202cc:	00971413          	sll	s0,a4,0x9
   202d0:	0207d793          	srl	a5,a5,0x20
   202d4:	00803433          	snez	s0,s0
   202d8:	03775713          	srl	a4,a4,0x37
   202dc:	00d787b3          	add	a5,a5,a3
   202e0:	00979793          	sll	a5,a5,0x9
   202e4:	00e46433          	or	s0,s0,a4
   202e8:	0087e433          	or	s0,a5,s0
   202ec:	0387d793          	srl	a5,a5,0x38
   202f0:	0017f793          	and	a5,a5,1
   202f4:	18078463          	beqz	a5,2047c <__muldf3+0x300>
   202f8:	00145793          	srl	a5,s0,0x1
   202fc:	00147413          	and	s0,s0,1
   20300:	0087e433          	or	s0,a5,s0
   20304:	3ff88513          	add	a0,a7,1023
   20308:	16a05e63          	blez	a0,20484 <__muldf3+0x308>
   2030c:	00747793          	and	a5,s0,7
   20310:	00078a63          	beqz	a5,20324 <__muldf3+0x1a8>
   20314:	00f47793          	and	a5,s0,15
   20318:	00400713          	li	a4,4
   2031c:	00e78463          	beq	a5,a4,20324 <__muldf3+0x1a8>
   20320:	00440413          	add	s0,s0,4
   20324:	03845793          	srl	a5,s0,0x38
   20328:	0017f793          	and	a5,a5,1
   2032c:	00078c63          	beqz	a5,20344 <__muldf3+0x1c8>
   20330:	fff00793          	li	a5,-1
   20334:	03879793          	sll	a5,a5,0x38
   20338:	fff78793          	add	a5,a5,-1
   2033c:	00f47433          	and	s0,s0,a5
   20340:	40088513          	add	a0,a7,1024
   20344:	7fe00793          	li	a5,2046
   20348:	1aa7cc63          	blt	a5,a0,20500 <__muldf3+0x384>
   2034c:	00345793          	srl	a5,s0,0x3
   20350:	03813083          	ld	ra,56(sp)
   20354:	03013403          	ld	s0,48(sp)
   20358:	00c79793          	sll	a5,a5,0xc
   2035c:	03451513          	sll	a0,a0,0x34
   20360:	00c7d793          	srl	a5,a5,0xc
   20364:	00f56533          	or	a0,a0,a5
   20368:	03f81813          	sll	a6,a6,0x3f
   2036c:	02813483          	ld	s1,40(sp)
   20370:	02013903          	ld	s2,32(sp)
   20374:	01813983          	ld	s3,24(sp)
   20378:	01013a03          	ld	s4,16(sp)
   2037c:	00813a83          	ld	s5,8(sp)
   20380:	01056533          	or	a0,a0,a6
   20384:	04010113          	add	sp,sp,64
   20388:	00008067          	ret
   2038c:	02048c63          	beqz	s1,203c4 <__muldf3+0x248>
   20390:	00048513          	mv	a0,s1
   20394:	0f9010ef          	jal	21c8c <__clzdi2>
   20398:	0005079b          	sext.w	a5,a0
   2039c:	c0d00913          	li	s2,-1011
   203a0:	ff85051b          	addw	a0,a0,-8
   203a4:	00a494b3          	sll	s1,s1,a0
   203a8:	40f90933          	sub	s2,s2,a5
   203ac:	e29ff06f          	j	201d4 <__muldf3+0x58>
   203b0:	7ff00913          	li	s2,2047
   203b4:	00300a13          	li	s4,3
   203b8:	e20490e3          	bnez	s1,201d8 <__muldf3+0x5c>
   203bc:	00200a13          	li	s4,2
   203c0:	e19ff06f          	j	201d8 <__muldf3+0x5c>
   203c4:	00000913          	li	s2,0
   203c8:	00100a13          	li	s4,1
   203cc:	e0dff06f          	j	201d8 <__muldf3+0x5c>
   203d0:	02040c63          	beqz	s0,20408 <__muldf3+0x28c>
   203d4:	00040513          	mv	a0,s0
   203d8:	0b5010ef          	jal	21c8c <__clzdi2>
   203dc:	0005071b          	sext.w	a4,a0
   203e0:	c0d00793          	li	a5,-1011
   203e4:	ff85051b          	addw	a0,a0,-8
   203e8:	00a41433          	sll	s0,s0,a0
   203ec:	40e787b3          	sub	a5,a5,a4
   203f0:	e1dff06f          	j	2020c <__muldf3+0x90>
   203f4:	7ff00793          	li	a5,2047
   203f8:	00300693          	li	a3,3
   203fc:	e0041ae3          	bnez	s0,20210 <__muldf3+0x94>
   20400:	00200693          	li	a3,2
   20404:	e0dff06f          	j	20210 <__muldf3+0x94>
   20408:	00000793          	li	a5,0
   2040c:	00100693          	li	a3,1
   20410:	e01ff06f          	j	20210 <__muldf3+0x94>
   20414:	00100793          	li	a5,1
   20418:	00e79733          	sll	a4,a5,a4
   2041c:	53077613          	and	a2,a4,1328
   20420:	04061863          	bnez	a2,20470 <__muldf3+0x2f4>
   20424:	24077613          	and	a2,a4,576
   20428:	0c061463          	bnez	a2,204f0 <__muldf3+0x374>
   2042c:	08877713          	and	a4,a4,136
   20430:	e00708e3          	beqz	a4,20240 <__muldf3+0xc4>
   20434:	000a8813          	mv	a6,s5
   20438:	00200793          	li	a5,2
   2043c:	0cf68263          	beq	a3,a5,20500 <__muldf3+0x384>
   20440:	00300793          	li	a5,3
   20444:	0af68463          	beq	a3,a5,204ec <__muldf3+0x370>
   20448:	00100793          	li	a5,1
   2044c:	eaf69ce3          	bne	a3,a5,20304 <__muldf3+0x188>
   20450:	00000793          	li	a5,0
   20454:	00000513          	li	a0,0
   20458:	ef9ff06f          	j	20350 <__muldf3+0x1d4>
   2045c:	00f00793          	li	a5,15
   20460:	08f70663          	beq	a4,a5,204ec <__muldf3+0x370>
   20464:	00b00793          	li	a5,11
   20468:	00098813          	mv	a6,s3
   2046c:	fcf704e3          	beq	a4,a5,20434 <__muldf3+0x2b8>
   20470:	00048413          	mv	s0,s1
   20474:	000a0693          	mv	a3,s4
   20478:	fc1ff06f          	j	20438 <__muldf3+0x2bc>
   2047c:	00090893          	mv	a7,s2
   20480:	e85ff06f          	j	20304 <__muldf3+0x188>
   20484:	00100713          	li	a4,1
   20488:	00050c63          	beqz	a0,204a0 <__muldf3+0x324>
   2048c:	40a70733          	sub	a4,a4,a0
   20490:	03800693          	li	a3,56
   20494:	00000793          	li	a5,0
   20498:	00000513          	li	a0,0
   2049c:	eae6cae3          	blt	a3,a4,20350 <__muldf3+0x1d4>
   204a0:	04000693          	li	a3,64
   204a4:	00e457b3          	srl	a5,s0,a4
   204a8:	40e6873b          	subw	a4,a3,a4
   204ac:	00e41433          	sll	s0,s0,a4
   204b0:	00803433          	snez	s0,s0
   204b4:	0087e7b3          	or	a5,a5,s0
   204b8:	0077f713          	and	a4,a5,7
   204bc:	00070a63          	beqz	a4,204d0 <__muldf3+0x354>
   204c0:	00f7f713          	and	a4,a5,15
   204c4:	00400693          	li	a3,4
   204c8:	00d70463          	beq	a4,a3,204d0 <__muldf3+0x354>
   204cc:	00478793          	add	a5,a5,4
   204d0:	0377d713          	srl	a4,a5,0x37
   204d4:	00177713          	and	a4,a4,1
   204d8:	0037d793          	srl	a5,a5,0x3
   204dc:	f6070ce3          	beqz	a4,20454 <__muldf3+0x2d8>
   204e0:	00000793          	li	a5,0
   204e4:	00100513          	li	a0,1
   204e8:	e69ff06f          	j	20350 <__muldf3+0x1d4>
   204ec:	00100793          	li	a5,1
   204f0:	03379793          	sll	a5,a5,0x33
   204f4:	7ff00513          	li	a0,2047
   204f8:	00000813          	li	a6,0
   204fc:	e55ff06f          	j	20350 <__muldf3+0x1d4>
   20500:	00000793          	li	a5,0
   20504:	7ff00513          	li	a0,2047
   20508:	e49ff06f          	j	20350 <__muldf3+0x1d4>

000000000002050c <__eqtf2>:
   2050c:	00008837          	lui	a6,0x8
   20510:	0305d893          	srl	a7,a1,0x30
   20514:	fff80813          	add	a6,a6,-1 # 7fff <exit-0x80e9>
   20518:	fff00793          	li	a5,-1
   2051c:	0107d793          	srl	a5,a5,0x10
   20520:	0306d313          	srl	t1,a3,0x30
   20524:	0108f8b3          	and	a7,a7,a6
   20528:	00f5f733          	and	a4,a1,a5
   2052c:	01037333          	and	t1,t1,a6
   20530:	00f6f7b3          	and	a5,a3,a5
   20534:	03f5d593          	srl	a1,a1,0x3f
   20538:	03f6d693          	srl	a3,a3,0x3f
   2053c:	01088e63          	beq	a7,a6,20558 <__eqtf2+0x4c>
   20540:	05031263          	bne	t1,a6,20584 <__eqtf2+0x78>
   20544:	00c7e7b3          	or	a5,a5,a2
   20548:	00100513          	li	a0,1
   2054c:	00100813          	li	a6,1
   20550:	02078663          	beqz	a5,2057c <__eqtf2+0x70>
   20554:	00008067          	ret
   20558:	00a76733          	or	a4,a4,a0
   2055c:	00100513          	li	a0,1
   20560:	fe071ae3          	bnez	a4,20554 <__eqtf2+0x48>
   20564:	00100813          	li	a6,1
   20568:	01131a63          	bne	t1,a7,2057c <__eqtf2+0x70>
   2056c:	00c7e7b3          	or	a5,a5,a2
   20570:	fe0792e3          	bnez	a5,20554 <__eqtf2+0x48>
   20574:	40d585b3          	sub	a1,a1,a3
   20578:	00b03833          	snez	a6,a1
   2057c:	00080513          	mv	a0,a6
   20580:	fd5ff06f          	j	20554 <__eqtf2+0x48>
   20584:	00100813          	li	a6,1
   20588:	fe689ae3          	bne	a7,t1,2057c <__eqtf2+0x70>
   2058c:	fef718e3          	bne	a4,a5,2057c <__eqtf2+0x70>
   20590:	fec516e3          	bne	a0,a2,2057c <__eqtf2+0x70>
   20594:	00d58a63          	beq	a1,a3,205a8 <__eqtf2+0x9c>
   20598:	fe0892e3          	bnez	a7,2057c <__eqtf2+0x70>
   2059c:	00a76733          	or	a4,a4,a0
   205a0:	00e03833          	snez	a6,a4
   205a4:	fd9ff06f          	j	2057c <__eqtf2+0x70>
   205a8:	00000813          	li	a6,0
   205ac:	fd1ff06f          	j	2057c <__eqtf2+0x70>

00000000000205b0 <__getf2>:
   205b0:	00008e37          	lui	t3,0x8
   205b4:	0305d893          	srl	a7,a1,0x30
   205b8:	fffe0e13          	add	t3,t3,-1 # 7fff <exit-0x80e9>
   205bc:	fff00713          	li	a4,-1
   205c0:	01075713          	srl	a4,a4,0x10
   205c4:	0306d793          	srl	a5,a3,0x30
   205c8:	01c8f8b3          	and	a7,a7,t3
   205cc:	00e5f833          	and	a6,a1,a4
   205d0:	00050313          	mv	t1,a0
   205d4:	00e6f733          	and	a4,a3,a4
   205d8:	03f5d593          	srl	a1,a1,0x3f
   205dc:	01c7f533          	and	a0,a5,t3
   205e0:	03f6d693          	srl	a3,a3,0x3f
   205e4:	03c89c63          	bne	a7,t3,2061c <__getf2+0x6c>
   205e8:	00686833          	or	a6,a6,t1
   205ec:	0c081463          	bnez	a6,206b4 <__getf2+0x104>
   205f0:	01150a63          	beq	a0,a7,20604 <__getf2+0x54>
   205f4:	00100513          	li	a0,1
   205f8:	0a058c63          	beqz	a1,206b0 <__getf2+0x100>
   205fc:	fff00513          	li	a0,-1
   20600:	00008067          	ret
   20604:	00c76733          	or	a4,a4,a2
   20608:	ffe00513          	li	a0,-2
   2060c:	0a071263          	bnez	a4,206b0 <__getf2+0x100>
   20610:	fed592e3          	bne	a1,a3,205f4 <__getf2+0x44>
   20614:	00000513          	li	a0,0
   20618:	00008067          	ret
   2061c:	05c51063          	bne	a0,t3,2065c <__getf2+0xac>
   20620:	00c76733          	or	a4,a4,a2
   20624:	ffe00513          	li	a0,-2
   20628:	08071463          	bnez	a4,206b0 <__getf2+0x100>
   2062c:	00088c63          	beqz	a7,20644 <__getf2+0x94>
   20630:	fcd592e3          	bne	a1,a3,205f4 <__getf2+0x44>
   20634:	fff00513          	li	a0,-1
   20638:	06058c63          	beqz	a1,206b0 <__getf2+0x100>
   2063c:	00058513          	mv	a0,a1
   20640:	00008067          	ret
   20644:	00686833          	or	a6,a6,t1
   20648:	fe0814e3          	bnez	a6,20630 <__getf2+0x80>
   2064c:	fff00513          	li	a0,-1
   20650:	06068063          	beqz	a3,206b0 <__getf2+0x100>
   20654:	00068513          	mv	a0,a3
   20658:	00008067          	ret
   2065c:	02088663          	beqz	a7,20688 <__getf2+0xd8>
   20660:	f8050ae3          	beqz	a0,205f4 <__getf2+0x44>
   20664:	f8d598e3          	bne	a1,a3,205f4 <__getf2+0x44>
   20668:	f91546e3          	blt	a0,a7,205f4 <__getf2+0x44>
   2066c:	fca8c4e3          	blt	a7,a0,20634 <__getf2+0x84>
   20670:	f90762e3          	bltu	a4,a6,205f4 <__getf2+0x44>
   20674:	fce810e3          	bne	a6,a4,20634 <__getf2+0x84>
   20678:	f6666ee3          	bltu	a2,t1,205f4 <__getf2+0x44>
   2067c:	00000513          	li	a0,0
   20680:	02c37863          	bgeu	t1,a2,206b0 <__getf2+0x100>
   20684:	fb1ff06f          	j	20634 <__getf2+0x84>
   20688:	006867b3          	or	a5,a6,t1
   2068c:	00050663          	beqz	a0,20698 <__getf2+0xe8>
   20690:	fa078ee3          	beqz	a5,2064c <__getf2+0x9c>
   20694:	f9dff06f          	j	20630 <__getf2+0x80>
   20698:	00c768b3          	or	a7,a4,a2
   2069c:	00088863          	beqz	a7,206ac <__getf2+0xfc>
   206a0:	fa0786e3          	beqz	a5,2064c <__getf2+0x9c>
   206a4:	fcd586e3          	beq	a1,a3,20670 <__getf2+0xc0>
   206a8:	f4dff06f          	j	205f4 <__getf2+0x44>
   206ac:	f40794e3          	bnez	a5,205f4 <__getf2+0x44>
   206b0:	00008067          	ret
   206b4:	ffe00513          	li	a0,-2
   206b8:	00008067          	ret

00000000000206bc <__letf2>:
   206bc:	00008e37          	lui	t3,0x8
   206c0:	0305d893          	srl	a7,a1,0x30
   206c4:	fffe0e13          	add	t3,t3,-1 # 7fff <exit-0x80e9>
   206c8:	fff00713          	li	a4,-1
   206cc:	01075713          	srl	a4,a4,0x10
   206d0:	0306d793          	srl	a5,a3,0x30
   206d4:	01c8f8b3          	and	a7,a7,t3
   206d8:	00e5f833          	and	a6,a1,a4
   206dc:	00050313          	mv	t1,a0
   206e0:	00e6f733          	and	a4,a3,a4
   206e4:	03f5d593          	srl	a1,a1,0x3f
   206e8:	01c7f533          	and	a0,a5,t3
   206ec:	03f6d693          	srl	a3,a3,0x3f
   206f0:	03c89c63          	bne	a7,t3,20728 <__letf2+0x6c>
   206f4:	00686833          	or	a6,a6,t1
   206f8:	0c081463          	bnez	a6,207c0 <__letf2+0x104>
   206fc:	01150a63          	beq	a0,a7,20710 <__letf2+0x54>
   20700:	00100513          	li	a0,1
   20704:	0a058c63          	beqz	a1,207bc <__letf2+0x100>
   20708:	fff00513          	li	a0,-1
   2070c:	00008067          	ret
   20710:	00c76733          	or	a4,a4,a2
   20714:	00200513          	li	a0,2
   20718:	0a071263          	bnez	a4,207bc <__letf2+0x100>
   2071c:	fed592e3          	bne	a1,a3,20700 <__letf2+0x44>
   20720:	00000513          	li	a0,0
   20724:	00008067          	ret
   20728:	05c51063          	bne	a0,t3,20768 <__letf2+0xac>
   2072c:	00c76733          	or	a4,a4,a2
   20730:	00200513          	li	a0,2
   20734:	08071463          	bnez	a4,207bc <__letf2+0x100>
   20738:	00088c63          	beqz	a7,20750 <__letf2+0x94>
   2073c:	fcd592e3          	bne	a1,a3,20700 <__letf2+0x44>
   20740:	fff00513          	li	a0,-1
   20744:	06058c63          	beqz	a1,207bc <__letf2+0x100>
   20748:	00058513          	mv	a0,a1
   2074c:	00008067          	ret
   20750:	00686833          	or	a6,a6,t1
   20754:	fe0814e3          	bnez	a6,2073c <__letf2+0x80>
   20758:	fff00513          	li	a0,-1
   2075c:	06068063          	beqz	a3,207bc <__letf2+0x100>
   20760:	00068513          	mv	a0,a3
   20764:	00008067          	ret
   20768:	02088663          	beqz	a7,20794 <__letf2+0xd8>
   2076c:	f8050ae3          	beqz	a0,20700 <__letf2+0x44>
   20770:	f8d598e3          	bne	a1,a3,20700 <__letf2+0x44>
   20774:	f91546e3          	blt	a0,a7,20700 <__letf2+0x44>
   20778:	fca8c4e3          	blt	a7,a0,20740 <__letf2+0x84>
   2077c:	f90762e3          	bltu	a4,a6,20700 <__letf2+0x44>
   20780:	fce810e3          	bne	a6,a4,20740 <__letf2+0x84>
   20784:	f6666ee3          	bltu	a2,t1,20700 <__letf2+0x44>
   20788:	00000513          	li	a0,0
   2078c:	02c37863          	bgeu	t1,a2,207bc <__letf2+0x100>
   20790:	fb1ff06f          	j	20740 <__letf2+0x84>
   20794:	006867b3          	or	a5,a6,t1
   20798:	00050663          	beqz	a0,207a4 <__letf2+0xe8>
   2079c:	fa078ee3          	beqz	a5,20758 <__letf2+0x9c>
   207a0:	f9dff06f          	j	2073c <__letf2+0x80>
   207a4:	00c768b3          	or	a7,a4,a2
   207a8:	00088863          	beqz	a7,207b8 <__letf2+0xfc>
   207ac:	fa0786e3          	beqz	a5,20758 <__letf2+0x9c>
   207b0:	fcd586e3          	beq	a1,a3,2077c <__letf2+0xc0>
   207b4:	f4dff06f          	j	20700 <__letf2+0x44>
   207b8:	f40794e3          	bnez	a5,20700 <__letf2+0x44>
   207bc:	00008067          	ret
   207c0:	00200513          	li	a0,2
   207c4:	00008067          	ret

00000000000207c8 <__multf3>:
   207c8:	00008737          	lui	a4,0x8
   207cc:	fb010113          	add	sp,sp,-80
   207d0:	0305d793          	srl	a5,a1,0x30
   207d4:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   207d8:	04813023          	sd	s0,64(sp)
   207dc:	02913c23          	sd	s1,56(sp)
   207e0:	03313423          	sd	s3,40(sp)
   207e4:	03413023          	sd	s4,32(sp)
   207e8:	01613823          	sd	s6,16(sp)
   207ec:	01059493          	sll	s1,a1,0x10
   207f0:	04113423          	sd	ra,72(sp)
   207f4:	03213823          	sd	s2,48(sp)
   207f8:	01513c23          	sd	s5,24(sp)
   207fc:	01713423          	sd	s7,8(sp)
   20800:	01813023          	sd	s8,0(sp)
   20804:	00e7f7b3          	and	a5,a5,a4
   20808:	00050413          	mv	s0,a0
   2080c:	00060b13          	mv	s6,a2
   20810:	00068993          	mv	s3,a3
   20814:	0104d493          	srl	s1,s1,0x10
   20818:	03f5da13          	srl	s4,a1,0x3f
   2081c:	42078463          	beqz	a5,20c44 <__multf3+0x47c>
   20820:	0007891b          	sext.w	s2,a5
   20824:	48e78863          	beq	a5,a4,20cb4 <__multf3+0x4ec>
   20828:	00349493          	sll	s1,s1,0x3
   2082c:	03d55713          	srl	a4,a0,0x3d
   20830:	00976733          	or	a4,a4,s1
   20834:	ffffc937          	lui	s2,0xffffc
   20838:	00100493          	li	s1,1
   2083c:	03349493          	sll	s1,s1,0x33
   20840:	00190913          	add	s2,s2,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd71e9>
   20844:	009764b3          	or	s1,a4,s1
   20848:	00351a93          	sll	s5,a0,0x3
   2084c:	01278933          	add	s2,a5,s2
   20850:	00000b93          	li	s7,0
   20854:	000087b7          	lui	a5,0x8
   20858:	0309d613          	srl	a2,s3,0x30
   2085c:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   20860:	01099413          	sll	s0,s3,0x10
   20864:	00f67633          	and	a2,a2,a5
   20868:	01045413          	srl	s0,s0,0x10
   2086c:	03f9d993          	srl	s3,s3,0x3f
   20870:	46060a63          	beqz	a2,20ce4 <__multf3+0x51c>
   20874:	0006071b          	sext.w	a4,a2
   20878:	4ef60063          	beq	a2,a5,20d58 <__multf3+0x590>
   2087c:	00341413          	sll	s0,s0,0x3
   20880:	03db5793          	srl	a5,s6,0x3d
   20884:	0087e7b3          	or	a5,a5,s0
   20888:	ffffc737          	lui	a4,0xffffc
   2088c:	00100413          	li	s0,1
   20890:	03341413          	sll	s0,s0,0x33
   20894:	00170713          	add	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd71e9>
   20898:	0087e433          	or	s0,a5,s0
   2089c:	00e60733          	add	a4,a2,a4
   208a0:	003b1793          	sll	a5,s6,0x3
   208a4:	00000693          	li	a3,0
   208a8:	002b9613          	sll	a2,s7,0x2
   208ac:	01270333          	add	t1,a4,s2
   208b0:	00d66633          	or	a2,a2,a3
   208b4:	00a00713          	li	a4,10
   208b8:	013a4833          	xor	a6,s4,s3
   208bc:	00130893          	add	a7,t1,1
   208c0:	50c74863          	blt	a4,a2,20dd0 <__multf3+0x608>
   208c4:	00200713          	li	a4,2
   208c8:	4cc74063          	blt	a4,a2,20d88 <__multf3+0x5c0>
   208cc:	fff60613          	add	a2,a2,-1
   208d0:	00100713          	li	a4,1
   208d4:	4cc77c63          	bgeu	a4,a2,20dac <__multf3+0x5e4>
   208d8:	fff00713          	li	a4,-1
   208dc:	01548b33          	add	s6,s1,s5
   208e0:	00878a33          	add	s4,a5,s0
   208e4:	02075713          	srl	a4,a4,0x20
   208e8:	00fa32b3          	sltu	t0,s4,a5
   208ec:	009b3fb3          	sltu	t6,s6,s1
   208f0:	020ad993          	srl	s3,s5,0x20
   208f4:	0207de93          	srl	t4,a5,0x20
   208f8:	00eafab3          	and	s5,s5,a4
   208fc:	00e7f7b3          	and	a5,a5,a4
   20900:	000f8393          	mv	t2,t6
   20904:	00028e13          	mv	t3,t0
   20908:	000a8513          	mv	a0,s5
   2090c:	00078593          	mv	a1,a5
   20910:	258010ef          	jal	21b68 <__muldi3>
   20914:	00050713          	mv	a4,a0
   20918:	000e8593          	mv	a1,t4
   2091c:	000a8513          	mv	a0,s5
   20920:	248010ef          	jal	21b68 <__muldi3>
   20924:	00050f13          	mv	t5,a0
   20928:	00078593          	mv	a1,a5
   2092c:	00098513          	mv	a0,s3
   20930:	238010ef          	jal	21b68 <__muldi3>
   20934:	00050913          	mv	s2,a0
   20938:	000e8593          	mv	a1,t4
   2093c:	00098513          	mv	a0,s3
   20940:	228010ef          	jal	21b68 <__muldi3>
   20944:	02075e93          	srl	t4,a4,0x20
   20948:	012f0f33          	add	t5,t5,s2
   2094c:	01ee8eb3          	add	t4,t4,t5
   20950:	00050793          	mv	a5,a0
   20954:	012ef863          	bgeu	t4,s2,20964 <__multf3+0x19c>
   20958:	00100693          	li	a3,1
   2095c:	02069693          	sll	a3,a3,0x20
   20960:	00d507b3          	add	a5,a0,a3
   20964:	020edf13          	srl	t5,t4,0x20
   20968:	00ff0f33          	add	t5,t5,a5
   2096c:	fff00793          	li	a5,-1
   20970:	0207d793          	srl	a5,a5,0x20
   20974:	00fefeb3          	and	t4,t4,a5
   20978:	00f77733          	and	a4,a4,a5
   2097c:	00fb7933          	and	s2,s6,a5
   20980:	020e9e93          	sll	t4,t4,0x20
   20984:	00fa77b3          	and	a5,s4,a5
   20988:	00ee8eb3          	add	t4,t4,a4
   2098c:	020b5993          	srl	s3,s6,0x20
   20990:	020a5713          	srl	a4,s4,0x20
   20994:	00090513          	mv	a0,s2
   20998:	00078593          	mv	a1,a5
   2099c:	1cc010ef          	jal	21b68 <__muldi3>
   209a0:	00050a93          	mv	s5,a0
   209a4:	00070593          	mv	a1,a4
   209a8:	00090513          	mv	a0,s2
   209ac:	1bc010ef          	jal	21b68 <__muldi3>
   209b0:	00050913          	mv	s2,a0
   209b4:	00078593          	mv	a1,a5
   209b8:	00098513          	mv	a0,s3
   209bc:	1ac010ef          	jal	21b68 <__muldi3>
   209c0:	00050793          	mv	a5,a0
   209c4:	00070593          	mv	a1,a4
   209c8:	00098513          	mv	a0,s3
   209cc:	19c010ef          	jal	21b68 <__muldi3>
   209d0:	020ad713          	srl	a4,s5,0x20
   209d4:	00f90933          	add	s2,s2,a5
   209d8:	01270733          	add	a4,a4,s2
   209dc:	00050993          	mv	s3,a0
   209e0:	00f77863          	bgeu	a4,a5,209f0 <__multf3+0x228>
   209e4:	00100793          	li	a5,1
   209e8:	02079793          	sll	a5,a5,0x20
   209ec:	00f509b3          	add	s3,a0,a5
   209f0:	fff00593          	li	a1,-1
   209f4:	0205d593          	srl	a1,a1,0x20
   209f8:	02075913          	srl	s2,a4,0x20
   209fc:	00b77733          	and	a4,a4,a1
   20a00:	00bafab3          	and	s5,s5,a1
   20a04:	0204dc13          	srl	s8,s1,0x20
   20a08:	00b477b3          	and	a5,s0,a1
   20a0c:	00b4f4b3          	and	s1,s1,a1
   20a10:	02071713          	sll	a4,a4,0x20
   20a14:	01570733          	add	a4,a4,s5
   20a18:	02045b93          	srl	s7,s0,0x20
   20a1c:	00048513          	mv	a0,s1
   20a20:	00078593          	mv	a1,a5
   20a24:	144010ef          	jal	21b68 <__muldi3>
   20a28:	00050413          	mv	s0,a0
   20a2c:	000b8593          	mv	a1,s7
   20a30:	00048513          	mv	a0,s1
   20a34:	134010ef          	jal	21b68 <__muldi3>
   20a38:	00050493          	mv	s1,a0
   20a3c:	00078593          	mv	a1,a5
   20a40:	000c0513          	mv	a0,s8
   20a44:	124010ef          	jal	21b68 <__muldi3>
   20a48:	00050a93          	mv	s5,a0
   20a4c:	000b8593          	mv	a1,s7
   20a50:	000c0513          	mv	a0,s8
   20a54:	114010ef          	jal	21b68 <__muldi3>
   20a58:	02045793          	srl	a5,s0,0x20
   20a5c:	015484b3          	add	s1,s1,s5
   20a60:	009787b3          	add	a5,a5,s1
   20a64:	0157f863          	bgeu	a5,s5,20a74 <__multf3+0x2ac>
   20a68:	00100693          	li	a3,1
   20a6c:	02069693          	sll	a3,a3,0x20
   20a70:	00d50533          	add	a0,a0,a3
   20a74:	0207d693          	srl	a3,a5,0x20
   20a78:	00a686b3          	add	a3,a3,a0
   20a7c:	01e70533          	add	a0,a4,t5
   20a80:	00e53733          	sltu	a4,a0,a4
   20a84:	00e905b3          	add	a1,s2,a4
   20a88:	fff00613          	li	a2,-1
   20a8c:	02065613          	srl	a2,a2,0x20
   20a90:	013585b3          	add	a1,a1,s3
   20a94:	41c00e33          	neg	t3,t3
   20a98:	00e5b733          	sltu	a4,a1,a4
   20a9c:	00c7f7b3          	and	a5,a5,a2
   20aa0:	00c47433          	and	s0,s0,a2
   20aa4:	016e7e33          	and	t3,t3,s6
   20aa8:	005fffb3          	and	t6,t6,t0
   20aac:	40700633          	neg	a2,t2
   20ab0:	01f70fb3          	add	t6,a4,t6
   20ab4:	01467633          	and	a2,a2,s4
   20ab8:	01c58733          	add	a4,a1,t3
   20abc:	00b735b3          	sltu	a1,a4,a1
   20ac0:	00e60733          	add	a4,a2,a4
   20ac4:	01f585b3          	add	a1,a1,t6
   20ac8:	00c73633          	sltu	a2,a4,a2
   20acc:	41d50e33          	sub	t3,a0,t4
   20ad0:	01c53fb3          	sltu	t6,a0,t3
   20ad4:	02079793          	sll	a5,a5,0x20
   20ad8:	00b60633          	add	a2,a2,a1
   20adc:	41e705b3          	sub	a1,a4,t5
   20ae0:	00b732b3          	sltu	t0,a4,a1
   20ae4:	008787b3          	add	a5,a5,s0
   20ae8:	41f585b3          	sub	a1,a1,t6
   20aec:	00000f93          	li	t6,0
   20af0:	01c57663          	bgeu	a0,t3,20afc <__multf3+0x334>
   20af4:	40ef0f33          	sub	t5,t5,a4
   20af8:	001f3f93          	seqz	t6,t5
   20afc:	40fe0533          	sub	a0,t3,a5
   20b00:	00d60633          	add	a2,a2,a3
   20b04:	00ae3733          	sltu	a4,t3,a0
   20b08:	40d586b3          	sub	a3,a1,a3
   20b0c:	005fefb3          	or	t6,t6,t0
   20b10:	00d5b5b3          	sltu	a1,a1,a3
   20b14:	40e78733          	sub	a4,a5,a4
   20b18:	00000f13          	li	t5,0
   20b1c:	00ae7463          	bgeu	t3,a0,20b24 <__multf3+0x35c>
   20b20:	0016bf13          	seqz	t5,a3
   20b24:	00e686b3          	add	a3,a3,a4
   20b28:	00f6b733          	sltu	a4,a3,a5
   20b2c:	00c70733          	add	a4,a4,a2
   20b30:	41f70733          	sub	a4,a4,t6
   20b34:	00bf6f33          	or	t5,t5,a1
   20b38:	00d51793          	sll	a5,a0,0xd
   20b3c:	41e70733          	sub	a4,a4,t5
   20b40:	00d71713          	sll	a4,a4,0xd
   20b44:	0336d413          	srl	s0,a3,0x33
   20b48:	01d7e7b3          	or	a5,a5,t4
   20b4c:	00876433          	or	s0,a4,s0
   20b50:	00f037b3          	snez	a5,a5
   20b54:	03355513          	srl	a0,a0,0x33
   20b58:	03475713          	srl	a4,a4,0x34
   20b5c:	00a7e7b3          	or	a5,a5,a0
   20b60:	00d69693          	sll	a3,a3,0xd
   20b64:	00177713          	and	a4,a4,1
   20b68:	00d7e7b3          	or	a5,a5,a3
   20b6c:	28070463          	beqz	a4,20df4 <__multf3+0x62c>
   20b70:	0017d713          	srl	a4,a5,0x1
   20b74:	0017f793          	and	a5,a5,1
   20b78:	00f76733          	or	a4,a4,a5
   20b7c:	03f41793          	sll	a5,s0,0x3f
   20b80:	00f767b3          	or	a5,a4,a5
   20b84:	00145413          	srl	s0,s0,0x1
   20b88:	000045b7          	lui	a1,0x4
   20b8c:	fff58593          	add	a1,a1,-1 # 3fff <exit-0xc0e9>
   20b90:	00b885b3          	add	a1,a7,a1
   20b94:	26b05463          	blez	a1,20dfc <__multf3+0x634>
   20b98:	0077f713          	and	a4,a5,7
   20b9c:	02070063          	beqz	a4,20bbc <__multf3+0x3f4>
   20ba0:	00f7f713          	and	a4,a5,15
   20ba4:	00400693          	li	a3,4
   20ba8:	00d70a63          	beq	a4,a3,20bbc <__multf3+0x3f4>
   20bac:	00478713          	add	a4,a5,4
   20bb0:	00f736b3          	sltu	a3,a4,a5
   20bb4:	00d40433          	add	s0,s0,a3
   20bb8:	00070793          	mv	a5,a4
   20bbc:	03445713          	srl	a4,s0,0x34
   20bc0:	00177713          	and	a4,a4,1
   20bc4:	00070e63          	beqz	a4,20be0 <__multf3+0x418>
   20bc8:	fff00713          	li	a4,-1
   20bcc:	03471713          	sll	a4,a4,0x34
   20bd0:	fff70713          	add	a4,a4,-1
   20bd4:	000045b7          	lui	a1,0x4
   20bd8:	00e47433          	and	s0,s0,a4
   20bdc:	00b885b3          	add	a1,a7,a1
   20be0:	000086b7          	lui	a3,0x8
   20be4:	ffe68713          	add	a4,a3,-2 # 7ffe <exit-0x80ea>
   20be8:	30b74663          	blt	a4,a1,20ef4 <__multf3+0x72c>
   20bec:	0037d793          	srl	a5,a5,0x3
   20bf0:	03d41513          	sll	a0,s0,0x3d
   20bf4:	00f56533          	or	a0,a0,a5
   20bf8:	00345713          	srl	a4,s0,0x3
   20bfc:	04813083          	ld	ra,72(sp)
   20c00:	04013403          	ld	s0,64(sp)
   20c04:	00f8181b          	sllw	a6,a6,0xf
   20c08:	01071713          	sll	a4,a4,0x10
   20c0c:	0105e5b3          	or	a1,a1,a6
   20c10:	03059593          	sll	a1,a1,0x30
   20c14:	01075713          	srl	a4,a4,0x10
   20c18:	03813483          	ld	s1,56(sp)
   20c1c:	03013903          	ld	s2,48(sp)
   20c20:	02813983          	ld	s3,40(sp)
   20c24:	02013a03          	ld	s4,32(sp)
   20c28:	01813a83          	ld	s5,24(sp)
   20c2c:	01013b03          	ld	s6,16(sp)
   20c30:	00813b83          	ld	s7,8(sp)
   20c34:	00013c03          	ld	s8,0(sp)
   20c38:	00b765b3          	or	a1,a4,a1
   20c3c:	05010113          	add	sp,sp,80
   20c40:	00008067          	ret
   20c44:	00a4eab3          	or	s5,s1,a0
   20c48:	080a8063          	beqz	s5,20cc8 <__multf3+0x500>
   20c4c:	04048463          	beqz	s1,20c94 <__multf3+0x4cc>
   20c50:	00048513          	mv	a0,s1
   20c54:	038010ef          	jal	21c8c <__clzdi2>
   20c58:	0005051b          	sext.w	a0,a0
   20c5c:	ff150793          	add	a5,a0,-15
   20c60:	03d00713          	li	a4,61
   20c64:	0037869b          	addw	a3,a5,3
   20c68:	40f707bb          	subw	a5,a4,a5
   20c6c:	00d494b3          	sll	s1,s1,a3
   20c70:	00f457b3          	srl	a5,s0,a5
   20c74:	0097e7b3          	or	a5,a5,s1
   20c78:	00d414b3          	sll	s1,s0,a3
   20c7c:	ffffc937          	lui	s2,0xffffc
   20c80:	01190913          	add	s2,s2,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd71f9>
   20c84:	00048a93          	mv	s5,s1
   20c88:	40a90933          	sub	s2,s2,a0
   20c8c:	00078493          	mv	s1,a5
   20c90:	bc1ff06f          	j	20850 <__multf3+0x88>
   20c94:	7f9000ef          	jal	21c8c <__clzdi2>
   20c98:	0405051b          	addw	a0,a0,64
   20c9c:	ff150793          	add	a5,a0,-15
   20ca0:	03c00713          	li	a4,60
   20ca4:	faf75ee3          	bge	a4,a5,20c60 <__multf3+0x498>
   20ca8:	fc37879b          	addw	a5,a5,-61
   20cac:	00f417b3          	sll	a5,s0,a5
   20cb0:	fcdff06f          	j	20c7c <__multf3+0x4b4>
   20cb4:	00a4eab3          	or	s5,s1,a0
   20cb8:	020a8063          	beqz	s5,20cd8 <__multf3+0x510>
   20cbc:	00050a93          	mv	s5,a0
   20cc0:	00300b93          	li	s7,3
   20cc4:	b91ff06f          	j	20854 <__multf3+0x8c>
   20cc8:	00000493          	li	s1,0
   20ccc:	00000913          	li	s2,0
   20cd0:	00100b93          	li	s7,1
   20cd4:	b81ff06f          	j	20854 <__multf3+0x8c>
   20cd8:	00000493          	li	s1,0
   20cdc:	00200b93          	li	s7,2
   20ce0:	b75ff06f          	j	20854 <__multf3+0x8c>
   20ce4:	008b67b3          	or	a5,s6,s0
   20ce8:	08078263          	beqz	a5,20d6c <__multf3+0x5a4>
   20cec:	04040463          	beqz	s0,20d34 <__multf3+0x56c>
   20cf0:	00040513          	mv	a0,s0
   20cf4:	799000ef          	jal	21c8c <__clzdi2>
   20cf8:	0005051b          	sext.w	a0,a0
   20cfc:	ff150793          	add	a5,a0,-15
   20d00:	03d00713          	li	a4,61
   20d04:	0037861b          	addw	a2,a5,3
   20d08:	40f707bb          	subw	a5,a4,a5
   20d0c:	00c41433          	sll	s0,s0,a2
   20d10:	00fb57b3          	srl	a5,s6,a5
   20d14:	0087e6b3          	or	a3,a5,s0
   20d18:	00cb1433          	sll	s0,s6,a2
   20d1c:	ffffc737          	lui	a4,0xffffc
   20d20:	01170713          	add	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd71f9>
   20d24:	00040793          	mv	a5,s0
   20d28:	40a70733          	sub	a4,a4,a0
   20d2c:	00068413          	mv	s0,a3
   20d30:	b75ff06f          	j	208a4 <__multf3+0xdc>
   20d34:	000b0513          	mv	a0,s6
   20d38:	755000ef          	jal	21c8c <__clzdi2>
   20d3c:	0405051b          	addw	a0,a0,64
   20d40:	ff150793          	add	a5,a0,-15
   20d44:	03c00713          	li	a4,60
   20d48:	faf75ce3          	bge	a4,a5,20d00 <__multf3+0x538>
   20d4c:	fc37879b          	addw	a5,a5,-61
   20d50:	00fb16b3          	sll	a3,s6,a5
   20d54:	fc9ff06f          	j	20d1c <__multf3+0x554>
   20d58:	008b67b3          	or	a5,s6,s0
   20d5c:	02078063          	beqz	a5,20d7c <__multf3+0x5b4>
   20d60:	000b0793          	mv	a5,s6
   20d64:	00300693          	li	a3,3
   20d68:	b41ff06f          	j	208a8 <__multf3+0xe0>
   20d6c:	00000413          	li	s0,0
   20d70:	00000713          	li	a4,0
   20d74:	00100693          	li	a3,1
   20d78:	b31ff06f          	j	208a8 <__multf3+0xe0>
   20d7c:	00000413          	li	s0,0
   20d80:	00200693          	li	a3,2
   20d84:	b25ff06f          	j	208a8 <__multf3+0xe0>
   20d88:	00100713          	li	a4,1
   20d8c:	00c71633          	sll	a2,a4,a2
   20d90:	53067513          	and	a0,a2,1328
   20d94:	04051863          	bnez	a0,20de4 <__multf3+0x61c>
   20d98:	24067593          	and	a1,a2,576
   20d9c:	12059063          	bnez	a1,20ebc <__multf3+0x6f4>
   20da0:	08867613          	and	a2,a2,136
   20da4:	b2060ae3          	beqz	a2,208d8 <__multf3+0x110>
   20da8:	00098813          	mv	a6,s3
   20dac:	00200713          	li	a4,2
   20db0:	12e68063          	beq	a3,a4,20ed0 <__multf3+0x708>
   20db4:	00300713          	li	a4,3
   20db8:	12e68663          	beq	a3,a4,20ee4 <__multf3+0x71c>
   20dbc:	00100713          	li	a4,1
   20dc0:	dce694e3          	bne	a3,a4,20b88 <__multf3+0x3c0>
   20dc4:	00000713          	li	a4,0
   20dc8:	00000513          	li	a0,0
   20dcc:	0b40006f          	j	20e80 <__multf3+0x6b8>
   20dd0:	00f00713          	li	a4,15
   20dd4:	10e60863          	beq	a2,a4,20ee4 <__multf3+0x71c>
   20dd8:	00b00713          	li	a4,11
   20ddc:	000a0813          	mv	a6,s4
   20de0:	fce604e3          	beq	a2,a4,20da8 <__multf3+0x5e0>
   20de4:	00048413          	mv	s0,s1
   20de8:	000a8793          	mv	a5,s5
   20dec:	000b8693          	mv	a3,s7
   20df0:	fbdff06f          	j	20dac <__multf3+0x5e4>
   20df4:	00030893          	mv	a7,t1
   20df8:	d91ff06f          	j	20b88 <__multf3+0x3c0>
   20dfc:	00100713          	li	a4,1
   20e00:	00058e63          	beqz	a1,20e1c <__multf3+0x654>
   20e04:	40b70733          	sub	a4,a4,a1
   20e08:	07400693          	li	a3,116
   20e0c:	fae6cce3          	blt	a3,a4,20dc4 <__multf3+0x5fc>
   20e10:	03f00693          	li	a3,63
   20e14:	0007061b          	sext.w	a2,a4
   20e18:	06e6c863          	blt	a3,a4,20e88 <__multf3+0x6c0>
   20e1c:	04000693          	li	a3,64
   20e20:	40e686bb          	subw	a3,a3,a4
   20e24:	00d41533          	sll	a0,s0,a3
   20e28:	00e7d633          	srl	a2,a5,a4
   20e2c:	00d796b3          	sll	a3,a5,a3
   20e30:	00c56533          	or	a0,a0,a2
   20e34:	00d036b3          	snez	a3,a3
   20e38:	00d56533          	or	a0,a0,a3
   20e3c:	00e45733          	srl	a4,s0,a4
   20e40:	00757793          	and	a5,a0,7
   20e44:	02078063          	beqz	a5,20e64 <__multf3+0x69c>
   20e48:	00f57793          	and	a5,a0,15
   20e4c:	00400693          	li	a3,4
   20e50:	00d78a63          	beq	a5,a3,20e64 <__multf3+0x69c>
   20e54:	00450793          	add	a5,a0,4
   20e58:	00a7b6b3          	sltu	a3,a5,a0
   20e5c:	00d70733          	add	a4,a4,a3
   20e60:	00078513          	mv	a0,a5
   20e64:	03375793          	srl	a5,a4,0x33
   20e68:	0017f793          	and	a5,a5,1
   20e6c:	08079c63          	bnez	a5,20f04 <__multf3+0x73c>
   20e70:	03d71793          	sll	a5,a4,0x3d
   20e74:	00355513          	srl	a0,a0,0x3
   20e78:	00a7e533          	or	a0,a5,a0
   20e7c:	00375713          	srl	a4,a4,0x3
   20e80:	00000593          	li	a1,0
   20e84:	d79ff06f          	j	20bfc <__multf3+0x434>
   20e88:	fc06051b          	addw	a0,a2,-64
   20e8c:	04000593          	li	a1,64
   20e90:	00a45533          	srl	a0,s0,a0
   20e94:	00000693          	li	a3,0
   20e98:	00b70863          	beq	a4,a1,20ea8 <__multf3+0x6e0>
   20e9c:	08000693          	li	a3,128
   20ea0:	40c686bb          	subw	a3,a3,a2
   20ea4:	00d416b3          	sll	a3,s0,a3
   20ea8:	00f6e6b3          	or	a3,a3,a5
   20eac:	00d036b3          	snez	a3,a3
   20eb0:	00d56533          	or	a0,a0,a3
   20eb4:	00000713          	li	a4,0
   20eb8:	f89ff06f          	j	20e40 <__multf3+0x678>
   20ebc:	02f71713          	sll	a4,a4,0x2f
   20ec0:	000085b7          	lui	a1,0x8
   20ec4:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   20ec8:	00000813          	li	a6,0
   20ecc:	d31ff06f          	j	20bfc <__multf3+0x434>
   20ed0:	000085b7          	lui	a1,0x8
   20ed4:	00000713          	li	a4,0
   20ed8:	00000513          	li	a0,0
   20edc:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   20ee0:	d1dff06f          	j	20bfc <__multf3+0x434>
   20ee4:	00100713          	li	a4,1
   20ee8:	02f71713          	sll	a4,a4,0x2f
   20eec:	00000513          	li	a0,0
   20ef0:	fd1ff06f          	j	20ec0 <__multf3+0x6f8>
   20ef4:	00000713          	li	a4,0
   20ef8:	00000513          	li	a0,0
   20efc:	fff68593          	add	a1,a3,-1
   20f00:	cfdff06f          	j	20bfc <__multf3+0x434>
   20f04:	00000713          	li	a4,0
   20f08:	00000513          	li	a0,0
   20f0c:	00100593          	li	a1,1
   20f10:	cedff06f          	j	20bfc <__multf3+0x434>

0000000000020f14 <__subtf3>:
   20f14:	fff00713          	li	a4,-1
   20f18:	fd010113          	add	sp,sp,-48
   20f1c:	01075713          	srl	a4,a4,0x10
   20f20:	00008e37          	lui	t3,0x8
   20f24:	0305d793          	srl	a5,a1,0x30
   20f28:	fffe0e13          	add	t3,t3,-1 # 7fff <exit-0x80e9>
   20f2c:	01213823          	sd	s2,16(sp)
   20f30:	03f5d913          	srl	s2,a1,0x3f
   20f34:	00e5f5b3          	and	a1,a1,a4
   20f38:	00913c23          	sd	s1,24(sp)
   20f3c:	01c7f4b3          	and	s1,a5,t3
   20f40:	00359793          	sll	a5,a1,0x3
   20f44:	03d55593          	srl	a1,a0,0x3d
   20f48:	0306d813          	srl	a6,a3,0x30
   20f4c:	00f5e5b3          	or	a1,a1,a5
   20f50:	03f6d793          	srl	a5,a3,0x3f
   20f54:	00e6f6b3          	and	a3,a3,a4
   20f58:	03d65313          	srl	t1,a2,0x3d
   20f5c:	00369693          	sll	a3,a3,0x3
   20f60:	02113423          	sd	ra,40(sp)
   20f64:	02813023          	sd	s0,32(sp)
   20f68:	01313423          	sd	s3,8(sp)
   20f6c:	01c87833          	and	a6,a6,t3
   20f70:	00351893          	sll	a7,a0,0x3
   20f74:	00d36333          	or	t1,t1,a3
   20f78:	00361613          	sll	a2,a2,0x3
   20f7c:	0fc81663          	bne	a6,t3,21068 <__subtf3+0x154>
   20f80:	ffff8737          	lui	a4,0xffff8
   20f84:	0017071b          	addw	a4,a4,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd31e9>
   20f88:	00c366b3          	or	a3,t1,a2
   20f8c:	0097073b          	addw	a4,a4,s1
   20f90:	04068063          	beqz	a3,20fd0 <__subtf3+0xbc>
   20f94:	00078e93          	mv	t4,a5
   20f98:	48f91663          	bne	s2,a5,21424 <__subtf3+0x510>
   20f9c:	2e070263          	beqz	a4,21280 <__subtf3+0x36c>
   20fa0:	28049463          	bnez	s1,21228 <__subtf3+0x314>
   20fa4:	0115e7b3          	or	a5,a1,a7
   20fa8:	28078063          	beqz	a5,21228 <__subtf3+0x314>
   20fac:	fff74793          	not	a5,a4
   20fb0:	26079663          	bnez	a5,2121c <__subtf3+0x308>
   20fb4:	00c88633          	add	a2,a7,a2
   20fb8:	011637b3          	sltu	a5,a2,a7
   20fbc:	006585b3          	add	a1,a1,t1
   20fc0:	00060893          	mv	a7,a2
   20fc4:	00f585b3          	add	a1,a1,a5
   20fc8:	00080493          	mv	s1,a6
   20fcc:	0d40006f          	j	210a0 <__subtf3+0x18c>
   20fd0:	0017ce93          	xor	t4,a5,1
   20fd4:	47d91663          	bne	s2,t4,21440 <__subtf3+0x52c>
   20fd8:	2a070463          	beqz	a4,21280 <__subtf3+0x36c>
   20fdc:	fc0484e3          	beqz	s1,20fa4 <__subtf3+0x90>
   20fe0:	00000593          	li	a1,0
   20fe4:	00000893          	li	a7,0
   20fe8:	00080493          	mv	s1,a6
   20fec:	0335d793          	srl	a5,a1,0x33
   20ff0:	0017f793          	and	a5,a5,1
   20ff4:	72078e63          	beqz	a5,21730 <__subtf3+0x81c>
   20ff8:	000087b7          	lui	a5,0x8
   20ffc:	00148493          	add	s1,s1,1
   21000:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   21004:	7af48663          	beq	s1,a5,217b0 <__subtf3+0x89c>
   21008:	fff00793          	li	a5,-1
   2100c:	03379793          	sll	a5,a5,0x33
   21010:	fff78793          	add	a5,a5,-1
   21014:	00f5f7b3          	and	a5,a1,a5
   21018:	0038d893          	srl	a7,a7,0x3
   2101c:	03d79513          	sll	a0,a5,0x3d
   21020:	01156533          	or	a0,a0,a7
   21024:	0037d593          	srl	a1,a5,0x3
   21028:	00090713          	mv	a4,s2
   2102c:	03149793          	sll	a5,s1,0x31
   21030:	02813083          	ld	ra,40(sp)
   21034:	02013403          	ld	s0,32(sp)
   21038:	00f7171b          	sllw	a4,a4,0xf
   2103c:	0317d793          	srl	a5,a5,0x31
   21040:	01059593          	sll	a1,a1,0x10
   21044:	00e7e7b3          	or	a5,a5,a4
   21048:	03079793          	sll	a5,a5,0x30
   2104c:	0105d593          	srl	a1,a1,0x10
   21050:	01813483          	ld	s1,24(sp)
   21054:	01013903          	ld	s2,16(sp)
   21058:	00813983          	ld	s3,8(sp)
   2105c:	00f5e5b3          	or	a1,a1,a5
   21060:	03010113          	add	sp,sp,48
   21064:	00008067          	ret
   21068:	0017ce93          	xor	t4,a5,1
   2106c:	4104873b          	subw	a4,s1,a6
   21070:	2dd91263          	bne	s2,t4,21334 <__subtf3+0x420>
   21074:	14e05263          	blez	a4,211b8 <__subtf3+0x2a4>
   21078:	08081e63          	bnez	a6,21114 <__subtf3+0x200>
   2107c:	00c367b3          	or	a5,t1,a2
   21080:	06078663          	beqz	a5,210ec <__subtf3+0x1d8>
   21084:	fff7071b          	addw	a4,a4,-1
   21088:	06071063          	bnez	a4,210e8 <__subtf3+0x1d4>
   2108c:	00c88633          	add	a2,a7,a2
   21090:	011637b3          	sltu	a5,a2,a7
   21094:	006585b3          	add	a1,a1,t1
   21098:	00060893          	mv	a7,a2
   2109c:	00f585b3          	add	a1,a1,a5
   210a0:	0335d793          	srl	a5,a1,0x33
   210a4:	0017f793          	and	a5,a5,1
   210a8:	04078263          	beqz	a5,210ec <__subtf3+0x1d8>
   210ac:	000087b7          	lui	a5,0x8
   210b0:	00148493          	add	s1,s1,1
   210b4:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   210b8:	6af48063          	beq	s1,a5,21758 <__subtf3+0x844>
   210bc:	fff00793          	li	a5,-1
   210c0:	03379793          	sll	a5,a5,0x33
   210c4:	fff78793          	add	a5,a5,-1
   210c8:	0018f513          	and	a0,a7,1
   210cc:	00f5f7b3          	and	a5,a1,a5
   210d0:	0018d713          	srl	a4,a7,0x1
   210d4:	00a76733          	or	a4,a4,a0
   210d8:	03f79513          	sll	a0,a5,0x3f
   210dc:	00e568b3          	or	a7,a0,a4
   210e0:	0017d593          	srl	a1,a5,0x1
   210e4:	0080006f          	j	210ec <__subtf3+0x1d8>
   210e8:	09c49463          	bne	s1,t3,21170 <__subtf3+0x25c>
   210ec:	0078f793          	and	a5,a7,7
   210f0:	ee078ee3          	beqz	a5,20fec <__subtf3+0xd8>
   210f4:	00f8f793          	and	a5,a7,15
   210f8:	00400713          	li	a4,4
   210fc:	eee788e3          	beq	a5,a4,20fec <__subtf3+0xd8>
   21100:	00488793          	add	a5,a7,4
   21104:	0117b733          	sltu	a4,a5,a7
   21108:	00e585b3          	add	a1,a1,a4
   2110c:	00078893          	mv	a7,a5
   21110:	eddff06f          	j	20fec <__subtf3+0xd8>
   21114:	fdc48ce3          	beq	s1,t3,210ec <__subtf3+0x1d8>
   21118:	07400793          	li	a5,116
   2111c:	04e7ce63          	blt	a5,a4,21178 <__subtf3+0x264>
   21120:	00100793          	li	a5,1
   21124:	03379793          	sll	a5,a5,0x33
   21128:	00f36333          	or	t1,t1,a5
   2112c:	03f00793          	li	a5,63
   21130:	04e7ca63          	blt	a5,a4,21184 <__subtf3+0x270>
   21134:	04000693          	li	a3,64
   21138:	40e686bb          	subw	a3,a3,a4
   2113c:	00d317b3          	sll	a5,t1,a3
   21140:	00e65533          	srl	a0,a2,a4
   21144:	00d616b3          	sll	a3,a2,a3
   21148:	00a7e7b3          	or	a5,a5,a0
   2114c:	00d036b3          	snez	a3,a3
   21150:	00d7e7b3          	or	a5,a5,a3
   21154:	00e35733          	srl	a4,t1,a4
   21158:	01178533          	add	a0,a5,a7
   2115c:	00b70733          	add	a4,a4,a1
   21160:	00f537b3          	sltu	a5,a0,a5
   21164:	00050893          	mv	a7,a0
   21168:	00f705b3          	add	a1,a4,a5
   2116c:	f35ff06f          	j	210a0 <__subtf3+0x18c>
   21170:	07400793          	li	a5,116
   21174:	fae7dce3          	bge	a5,a4,2112c <__subtf3+0x218>
   21178:	00000713          	li	a4,0
   2117c:	00100793          	li	a5,1
   21180:	fd9ff06f          	j	21158 <__subtf3+0x244>
   21184:	fc07079b          	addw	a5,a4,-64
   21188:	04000513          	li	a0,64
   2118c:	00f357b3          	srl	a5,t1,a5
   21190:	00000693          	li	a3,0
   21194:	00a70863          	beq	a4,a0,211a4 <__subtf3+0x290>
   21198:	08000693          	li	a3,128
   2119c:	40e686bb          	subw	a3,a3,a4
   211a0:	00d316b3          	sll	a3,t1,a3
   211a4:	00c6e6b3          	or	a3,a3,a2
   211a8:	00d036b3          	snez	a3,a3
   211ac:	00d7e7b3          	or	a5,a5,a3
   211b0:	00000713          	li	a4,0
   211b4:	fa5ff06f          	j	21158 <__subtf3+0x244>
   211b8:	0c070463          	beqz	a4,21280 <__subtf3+0x36c>
   211bc:	de0484e3          	beqz	s1,20fa4 <__subtf3+0x90>
   211c0:	f8c00793          	li	a5,-116
   211c4:	06f74e63          	blt	a4,a5,21240 <__subtf3+0x32c>
   211c8:	40e007bb          	negw	a5,a4
   211cc:	00100713          	li	a4,1
   211d0:	03371713          	sll	a4,a4,0x33
   211d4:	00e5e5b3          	or	a1,a1,a4
   211d8:	03f00713          	li	a4,63
   211dc:	06f74863          	blt	a4,a5,2124c <__subtf3+0x338>
   211e0:	04000693          	li	a3,64
   211e4:	40f686bb          	subw	a3,a3,a5
   211e8:	00d59733          	sll	a4,a1,a3
   211ec:	00f8d533          	srl	a0,a7,a5
   211f0:	00d896b3          	sll	a3,a7,a3
   211f4:	00a76733          	or	a4,a4,a0
   211f8:	00d036b3          	snez	a3,a3
   211fc:	00d76733          	or	a4,a4,a3
   21200:	00f5d7b3          	srl	a5,a1,a5
   21204:	00c70633          	add	a2,a4,a2
   21208:	006787b3          	add	a5,a5,t1
   2120c:	00e63733          	sltu	a4,a2,a4
   21210:	00060893          	mv	a7,a2
   21214:	00e785b3          	add	a1,a5,a4
   21218:	db1ff06f          	j	20fc8 <__subtf3+0xb4>
   2121c:	00008737          	lui	a4,0x8
   21220:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   21224:	00e81a63          	bne	a6,a4,21238 <__subtf3+0x324>
   21228:	00030593          	mv	a1,t1
   2122c:	00060893          	mv	a7,a2
   21230:	00080493          	mv	s1,a6
   21234:	eb9ff06f          	j	210ec <__subtf3+0x1d8>
   21238:	07400713          	li	a4,116
   2123c:	f8f75ee3          	bge	a4,a5,211d8 <__subtf3+0x2c4>
   21240:	00000793          	li	a5,0
   21244:	00100713          	li	a4,1
   21248:	fbdff06f          	j	21204 <__subtf3+0x2f0>
   2124c:	fc07871b          	addw	a4,a5,-64
   21250:	04000513          	li	a0,64
   21254:	00e5d733          	srl	a4,a1,a4
   21258:	00000693          	li	a3,0
   2125c:	00a78863          	beq	a5,a0,2126c <__subtf3+0x358>
   21260:	08000693          	li	a3,128
   21264:	40f686bb          	subw	a3,a3,a5
   21268:	00d596b3          	sll	a3,a1,a3
   2126c:	0116e6b3          	or	a3,a3,a7
   21270:	00d036b3          	snez	a3,a3
   21274:	00d76733          	or	a4,a4,a3
   21278:	00000793          	li	a5,0
   2127c:	f89ff06f          	j	21204 <__subtf3+0x2f0>
   21280:	000087b7          	lui	a5,0x8
   21284:	00148693          	add	a3,s1,1
   21288:	ffe78713          	add	a4,a5,-2 # 7ffe <exit-0x80ea>
   2128c:	00e6f733          	and	a4,a3,a4
   21290:	06071a63          	bnez	a4,21304 <__subtf3+0x3f0>
   21294:	0115e6b3          	or	a3,a1,a7
   21298:	04049463          	bnez	s1,212e0 <__subtf3+0x3cc>
   2129c:	4e068663          	beqz	a3,21788 <__subtf3+0x874>
   212a0:	00c367b3          	or	a5,t1,a2
   212a4:	e40784e3          	beqz	a5,210ec <__subtf3+0x1d8>
   212a8:	00c88633          	add	a2,a7,a2
   212ac:	011637b3          	sltu	a5,a2,a7
   212b0:	006585b3          	add	a1,a1,t1
   212b4:	00f585b3          	add	a1,a1,a5
   212b8:	0335d793          	srl	a5,a1,0x33
   212bc:	0017f793          	and	a5,a5,1
   212c0:	00060893          	mv	a7,a2
   212c4:	e20784e3          	beqz	a5,210ec <__subtf3+0x1d8>
   212c8:	fff00793          	li	a5,-1
   212cc:	03379793          	sll	a5,a5,0x33
   212d0:	fff78793          	add	a5,a5,-1
   212d4:	00f5f5b3          	and	a1,a1,a5
   212d8:	00100493          	li	s1,1
   212dc:	e11ff06f          	j	210ec <__subtf3+0x1d8>
   212e0:	fff78793          	add	a5,a5,-1
   212e4:	4a068863          	beqz	a3,21794 <__subtf3+0x880>
   212e8:	00c36633          	or	a2,t1,a2
   212ec:	00078493          	mv	s1,a5
   212f0:	de060ee3          	beqz	a2,210ec <__subtf3+0x1d8>
   212f4:	00100593          	li	a1,1
   212f8:	02f59593          	sll	a1,a1,0x2f
   212fc:	00000513          	li	a0,0
   21300:	d2dff06f          	j	2102c <__subtf3+0x118>
   21304:	fff78793          	add	a5,a5,-1
   21308:	44f68863          	beq	a3,a5,21758 <__subtf3+0x844>
   2130c:	00c88633          	add	a2,a7,a2
   21310:	01163533          	sltu	a0,a2,a7
   21314:	006585b3          	add	a1,a1,t1
   21318:	00a585b3          	add	a1,a1,a0
   2131c:	03f59513          	sll	a0,a1,0x3f
   21320:	00165613          	srl	a2,a2,0x1
   21324:	00c568b3          	or	a7,a0,a2
   21328:	0015d593          	srl	a1,a1,0x1
   2132c:	00068493          	mv	s1,a3
   21330:	dbdff06f          	j	210ec <__subtf3+0x1d8>
   21334:	12e05463          	blez	a4,2145c <__subtf3+0x548>
   21338:	04081e63          	bnez	a6,21394 <__subtf3+0x480>
   2133c:	00c367b3          	or	a5,t1,a2
   21340:	da0786e3          	beqz	a5,210ec <__subtf3+0x1d8>
   21344:	fff7071b          	addw	a4,a4,-1
   21348:	02071a63          	bnez	a4,2137c <__subtf3+0x468>
   2134c:	40c88633          	sub	a2,a7,a2
   21350:	00c8b7b3          	sltu	a5,a7,a2
   21354:	406585b3          	sub	a1,a1,t1
   21358:	00060893          	mv	a7,a2
   2135c:	40f585b3          	sub	a1,a1,a5
   21360:	0335d793          	srl	a5,a1,0x33
   21364:	0017f793          	and	a5,a5,1
   21368:	d80782e3          	beqz	a5,210ec <__subtf3+0x1d8>
   2136c:	00d59413          	sll	s0,a1,0xd
   21370:	00d45413          	srl	s0,s0,0xd
   21374:	00088993          	mv	s3,a7
   21378:	2cc0006f          	j	21644 <__subtf3+0x730>
   2137c:	d7c488e3          	beq	s1,t3,210ec <__subtf3+0x1d8>
   21380:	07400793          	li	a5,116
   21384:	02e7d463          	bge	a5,a4,213ac <__subtf3+0x498>
   21388:	00000713          	li	a4,0
   2138c:	00100793          	li	a5,1
   21390:	0480006f          	j	213d8 <__subtf3+0x4c4>
   21394:	d5c48ce3          	beq	s1,t3,210ec <__subtf3+0x1d8>
   21398:	07400793          	li	a5,116
   2139c:	fee7c6e3          	blt	a5,a4,21388 <__subtf3+0x474>
   213a0:	00100793          	li	a5,1
   213a4:	03379793          	sll	a5,a5,0x33
   213a8:	00f36333          	or	t1,t1,a5
   213ac:	03f00793          	li	a5,63
   213b0:	04e7c063          	blt	a5,a4,213f0 <__subtf3+0x4dc>
   213b4:	04000693          	li	a3,64
   213b8:	40e686bb          	subw	a3,a3,a4
   213bc:	00d317b3          	sll	a5,t1,a3
   213c0:	00e65533          	srl	a0,a2,a4
   213c4:	00d616b3          	sll	a3,a2,a3
   213c8:	00a7e7b3          	or	a5,a5,a0
   213cc:	00d036b3          	snez	a3,a3
   213d0:	00d7e7b3          	or	a5,a5,a3
   213d4:	00e35733          	srl	a4,t1,a4
   213d8:	40f887b3          	sub	a5,a7,a5
   213dc:	00f8b6b3          	sltu	a3,a7,a5
   213e0:	40e58733          	sub	a4,a1,a4
   213e4:	00078893          	mv	a7,a5
   213e8:	40d705b3          	sub	a1,a4,a3
   213ec:	f75ff06f          	j	21360 <__subtf3+0x44c>
   213f0:	fc07079b          	addw	a5,a4,-64
   213f4:	04000513          	li	a0,64
   213f8:	00f357b3          	srl	a5,t1,a5
   213fc:	00000693          	li	a3,0
   21400:	00a70863          	beq	a4,a0,21410 <__subtf3+0x4fc>
   21404:	08000693          	li	a3,128
   21408:	40e686bb          	subw	a3,a3,a4
   2140c:	00d316b3          	sll	a3,t1,a3
   21410:	00c6e6b3          	or	a3,a3,a2
   21414:	00d036b3          	snez	a3,a3
   21418:	00d7e7b3          	or	a5,a5,a3
   2141c:	00000713          	li	a4,0
   21420:	fb9ff06f          	j	213d8 <__subtf3+0x4c4>
   21424:	12070a63          	beqz	a4,21558 <__subtf3+0x644>
   21428:	04048263          	beqz	s1,2146c <__subtf3+0x558>
   2142c:	00030593          	mv	a1,t1
   21430:	00060893          	mv	a7,a2
   21434:	00080493          	mv	s1,a6
   21438:	00078913          	mv	s2,a5
   2143c:	cb1ff06f          	j	210ec <__subtf3+0x1d8>
   21440:	10070c63          	beqz	a4,21558 <__subtf3+0x644>
   21444:	02048063          	beqz	s1,21464 <__subtf3+0x550>
   21448:	00000593          	li	a1,0
   2144c:	00000893          	li	a7,0
   21450:	00080493          	mv	s1,a6
   21454:	000e8913          	mv	s2,t4
   21458:	b95ff06f          	j	20fec <__subtf3+0xd8>
   2145c:	0e070e63          	beqz	a4,21558 <__subtf3+0x644>
   21460:	04049e63          	bnez	s1,214bc <__subtf3+0x5a8>
   21464:	000e8913          	mv	s2,t4
   21468:	0080006f          	j	21470 <__subtf3+0x55c>
   2146c:	00078913          	mv	s2,a5
   21470:	0115e7b3          	or	a5,a1,a7
   21474:	da078ae3          	beqz	a5,21228 <__subtf3+0x314>
   21478:	fff74793          	not	a5,a4
   2147c:	02079063          	bnez	a5,2149c <__subtf3+0x588>
   21480:	41160533          	sub	a0,a2,a7
   21484:	40b305b3          	sub	a1,t1,a1
   21488:	00a63633          	sltu	a2,a2,a0
   2148c:	00050893          	mv	a7,a0
   21490:	40c585b3          	sub	a1,a1,a2
   21494:	00080493          	mv	s1,a6
   21498:	ec9ff06f          	j	21360 <__subtf3+0x44c>
   2149c:	00008737          	lui	a4,0x8
   214a0:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   214a4:	d8e802e3          	beq	a6,a4,21228 <__subtf3+0x314>
   214a8:	07400713          	li	a4,116
   214ac:	02f75663          	bge	a4,a5,214d8 <__subtf3+0x5c4>
   214b0:	00000793          	li	a5,0
   214b4:	00100713          	li	a4,1
   214b8:	04c0006f          	j	21504 <__subtf3+0x5f0>
   214bc:	f8c00793          	li	a5,-116
   214c0:	08f74863          	blt	a4,a5,21550 <__subtf3+0x63c>
   214c4:	40e007bb          	negw	a5,a4
   214c8:	00100713          	li	a4,1
   214cc:	03371713          	sll	a4,a4,0x33
   214d0:	00e5e5b3          	or	a1,a1,a4
   214d4:	000e8913          	mv	s2,t4
   214d8:	03f00713          	li	a4,63
   214dc:	04f74063          	blt	a4,a5,2151c <__subtf3+0x608>
   214e0:	04000693          	li	a3,64
   214e4:	40f686bb          	subw	a3,a3,a5
   214e8:	00d59733          	sll	a4,a1,a3
   214ec:	00f8d533          	srl	a0,a7,a5
   214f0:	00d896b3          	sll	a3,a7,a3
   214f4:	00a76733          	or	a4,a4,a0
   214f8:	00d036b3          	snez	a3,a3
   214fc:	00d76733          	or	a4,a4,a3
   21500:	00f5d7b3          	srl	a5,a1,a5
   21504:	40e60733          	sub	a4,a2,a4
   21508:	40f307b3          	sub	a5,t1,a5
   2150c:	00e635b3          	sltu	a1,a2,a4
   21510:	00070893          	mv	a7,a4
   21514:	40b785b3          	sub	a1,a5,a1
   21518:	f7dff06f          	j	21494 <__subtf3+0x580>
   2151c:	fc07871b          	addw	a4,a5,-64
   21520:	04000513          	li	a0,64
   21524:	00e5d733          	srl	a4,a1,a4
   21528:	00000693          	li	a3,0
   2152c:	00a78863          	beq	a5,a0,2153c <__subtf3+0x628>
   21530:	08000693          	li	a3,128
   21534:	40f686bb          	subw	a3,a3,a5
   21538:	00d596b3          	sll	a3,a1,a3
   2153c:	0116e6b3          	or	a3,a3,a7
   21540:	00d036b3          	snez	a3,a3
   21544:	00d76733          	or	a4,a4,a3
   21548:	00000793          	li	a5,0
   2154c:	fb9ff06f          	j	21504 <__subtf3+0x5f0>
   21550:	000e8913          	mv	s2,t4
   21554:	f5dff06f          	j	214b0 <__subtf3+0x59c>
   21558:	000087b7          	lui	a5,0x8
   2155c:	00148713          	add	a4,s1,1
   21560:	ffe78693          	add	a3,a5,-2 # 7ffe <exit-0x80ea>
   21564:	00d77733          	and	a4,a4,a3
   21568:	0a071463          	bnez	a4,21610 <__subtf3+0x6fc>
   2156c:	00c36533          	or	a0,t1,a2
   21570:	0115e6b3          	or	a3,a1,a7
   21574:	06049863          	bnez	s1,215e4 <__subtf3+0x6d0>
   21578:	00069e63          	bnez	a3,21594 <__subtf3+0x680>
   2157c:	00000593          	li	a1,0
   21580:	aa0506e3          	beqz	a0,2102c <__subtf3+0x118>
   21584:	00030593          	mv	a1,t1
   21588:	00060893          	mv	a7,a2
   2158c:	000e8913          	mv	s2,t4
   21590:	b5dff06f          	j	210ec <__subtf3+0x1d8>
   21594:	b4050ce3          	beqz	a0,210ec <__subtf3+0x1d8>
   21598:	40c886b3          	sub	a3,a7,a2
   2159c:	00d8b533          	sltu	a0,a7,a3
   215a0:	406587b3          	sub	a5,a1,t1
   215a4:	40a787b3          	sub	a5,a5,a0
   215a8:	0337d513          	srl	a0,a5,0x33
   215ac:	00157513          	and	a0,a0,1
   215b0:	00050e63          	beqz	a0,215cc <__subtf3+0x6b8>
   215b4:	41160533          	sub	a0,a2,a7
   215b8:	40b305b3          	sub	a1,t1,a1
   215bc:	00a63633          	sltu	a2,a2,a0
   215c0:	00050893          	mv	a7,a0
   215c4:	40c585b3          	sub	a1,a1,a2
   215c8:	fc5ff06f          	j	2158c <__subtf3+0x678>
   215cc:	00f6e533          	or	a0,a3,a5
   215d0:	00000593          	li	a1,0
   215d4:	a4050ce3          	beqz	a0,2102c <__subtf3+0x118>
   215d8:	00078593          	mv	a1,a5
   215dc:	00068893          	mv	a7,a3
   215e0:	b0dff06f          	j	210ec <__subtf3+0x1d8>
   215e4:	fff78793          	add	a5,a5,-1
   215e8:	00069e63          	bnez	a3,21604 <__subtf3+0x6f0>
   215ec:	1a050a63          	beqz	a0,217a0 <__subtf3+0x88c>
   215f0:	00030593          	mv	a1,t1
   215f4:	00060893          	mv	a7,a2
   215f8:	000e8913          	mv	s2,t4
   215fc:	00078493          	mv	s1,a5
   21600:	aedff06f          	j	210ec <__subtf3+0x1d8>
   21604:	00078493          	mv	s1,a5
   21608:	ae0502e3          	beqz	a0,210ec <__subtf3+0x1d8>
   2160c:	ce9ff06f          	j	212f4 <__subtf3+0x3e0>
   21610:	40c88533          	sub	a0,a7,a2
   21614:	00a8b7b3          	sltu	a5,a7,a0
   21618:	40658433          	sub	s0,a1,t1
   2161c:	40f40433          	sub	s0,s0,a5
   21620:	03345793          	srl	a5,s0,0x33
   21624:	0017f793          	and	a5,a5,1
   21628:	00050993          	mv	s3,a0
   2162c:	06078c63          	beqz	a5,216a4 <__subtf3+0x790>
   21630:	411609b3          	sub	s3,a2,a7
   21634:	40b30433          	sub	s0,t1,a1
   21638:	01363633          	sltu	a2,a2,s3
   2163c:	40c40433          	sub	s0,s0,a2
   21640:	000e8913          	mv	s2,t4
   21644:	06040c63          	beqz	s0,216bc <__subtf3+0x7a8>
   21648:	00040513          	mv	a0,s0
   2164c:	640000ef          	jal	21c8c <__clzdi2>
   21650:	ff45071b          	addw	a4,a0,-12
   21654:	04000593          	li	a1,64
   21658:	40e585bb          	subw	a1,a1,a4
   2165c:	00e41433          	sll	s0,s0,a4
   21660:	00b9d5b3          	srl	a1,s3,a1
   21664:	0085e5b3          	or	a1,a1,s0
   21668:	00e99433          	sll	s0,s3,a4
   2166c:	10974063          	blt	a4,s1,2176c <__subtf3+0x858>
   21670:	4097073b          	subw	a4,a4,s1
   21674:	0017071b          	addw	a4,a4,1
   21678:	04000793          	li	a5,64
   2167c:	40e787bb          	subw	a5,a5,a4
   21680:	00f59533          	sll	a0,a1,a5
   21684:	00e456b3          	srl	a3,s0,a4
   21688:	00f417b3          	sll	a5,s0,a5
   2168c:	00d56533          	or	a0,a0,a3
   21690:	00f037b3          	snez	a5,a5
   21694:	00f568b3          	or	a7,a0,a5
   21698:	00e5d5b3          	srl	a1,a1,a4
   2169c:	00000493          	li	s1,0
   216a0:	a4dff06f          	j	210ec <__subtf3+0x1d8>
   216a4:	00856533          	or	a0,a0,s0
   216a8:	f8051ee3          	bnez	a0,21644 <__subtf3+0x730>
   216ac:	00000593          	li	a1,0
   216b0:	00000493          	li	s1,0
   216b4:	00000713          	li	a4,0
   216b8:	975ff06f          	j	2102c <__subtf3+0x118>
   216bc:	00098513          	mv	a0,s3
   216c0:	5cc000ef          	jal	21c8c <__clzdi2>
   216c4:	0345071b          	addw	a4,a0,52
   216c8:	03f00613          	li	a2,63
   216cc:	f8e654e3          	bge	a2,a4,21654 <__subtf3+0x740>
   216d0:	ff45059b          	addw	a1,a0,-12
   216d4:	00b995b3          	sll	a1,s3,a1
   216d8:	04974063          	blt	a4,s1,21718 <__subtf3+0x804>
   216dc:	409707bb          	subw	a5,a4,s1
   216e0:	0017871b          	addw	a4,a5,1
   216e4:	f8e65ae3          	bge	a2,a4,21678 <__subtf3+0x764>
   216e8:	fc17879b          	addw	a5,a5,-63
   216ec:	04000613          	li	a2,64
   216f0:	00f5d7b3          	srl	a5,a1,a5
   216f4:	00000513          	li	a0,0
   216f8:	00c70863          	beq	a4,a2,21708 <__subtf3+0x7f4>
   216fc:	08000513          	li	a0,128
   21700:	40e5053b          	subw	a0,a0,a4
   21704:	00a59533          	sll	a0,a1,a0
   21708:	00a03533          	snez	a0,a0
   2170c:	00f568b3          	or	a7,a0,a5
   21710:	00000593          	li	a1,0
   21714:	f89ff06f          	j	2169c <__subtf3+0x788>
   21718:	fff00793          	li	a5,-1
   2171c:	03379793          	sll	a5,a5,0x33
   21720:	fff78793          	add	a5,a5,-1
   21724:	40e484b3          	sub	s1,s1,a4
   21728:	00f5f5b3          	and	a1,a1,a5
   2172c:	00000893          	li	a7,0
   21730:	03d59793          	sll	a5,a1,0x3d
   21734:	0038d513          	srl	a0,a7,0x3
   21738:	00a7e533          	or	a0,a5,a0
   2173c:	000087b7          	lui	a5,0x8
   21740:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   21744:	0035d593          	srl	a1,a1,0x3
   21748:	00090713          	mv	a4,s2
   2174c:	8ef490e3          	bne	s1,a5,2102c <__subtf3+0x118>
   21750:	00b565b3          	or	a1,a0,a1
   21754:	06059263          	bnez	a1,217b8 <__subtf3+0x8a4>
   21758:	000087b7          	lui	a5,0x8
   2175c:	00090713          	mv	a4,s2
   21760:	fff78493          	add	s1,a5,-1 # 7fff <exit-0x80e9>
   21764:	00000593          	li	a1,0
   21768:	b95ff06f          	j	212fc <__subtf3+0x3e8>
   2176c:	fff00793          	li	a5,-1
   21770:	03379793          	sll	a5,a5,0x33
   21774:	fff78793          	add	a5,a5,-1
   21778:	40e484b3          	sub	s1,s1,a4
   2177c:	00f5f5b3          	and	a1,a1,a5
   21780:	00040893          	mv	a7,s0
   21784:	969ff06f          	j	210ec <__subtf3+0x1d8>
   21788:	00030593          	mv	a1,t1
   2178c:	00060893          	mv	a7,a2
   21790:	95dff06f          	j	210ec <__subtf3+0x1d8>
   21794:	00030593          	mv	a1,t1
   21798:	00060893          	mv	a7,a2
   2179c:	e61ff06f          	j	215fc <__subtf3+0x6e8>
   217a0:	00100593          	li	a1,1
   217a4:	00078493          	mv	s1,a5
   217a8:	02f59593          	sll	a1,a1,0x2f
   217ac:	881ff06f          	j	2102c <__subtf3+0x118>
   217b0:	00090713          	mv	a4,s2
   217b4:	fb1ff06f          	j	21764 <__subtf3+0x850>
   217b8:	00100593          	li	a1,1
   217bc:	02f59593          	sll	a1,a1,0x2f
   217c0:	00000513          	li	a0,0
   217c4:	ef1ff06f          	j	216b4 <__subtf3+0x7a0>

00000000000217c8 <__fixtfsi>:
   217c8:	00159713          	sll	a4,a1,0x1
   217cc:	000047b7          	lui	a5,0x4
   217d0:	03175713          	srl	a4,a4,0x31
   217d4:	ffe78613          	add	a2,a5,-2 # 3ffe <exit-0xc0ea>
   217d8:	03f5d693          	srl	a3,a1,0x3f
   217dc:	00000513          	li	a0,0
   217e0:	04e65663          	bge	a2,a4,2182c <__fixtfsi+0x64>
   217e4:	01d78793          	add	a5,a5,29
   217e8:	00e7da63          	bge	a5,a4,217fc <__fixtfsi+0x34>
   217ec:	80000537          	lui	a0,0x80000
   217f0:	fff54513          	not	a0,a0
   217f4:	00d5053b          	addw	a0,a0,a3
   217f8:	00008067          	ret
   217fc:	01059513          	sll	a0,a1,0x10
   21800:	00100793          	li	a5,1
   21804:	03079793          	sll	a5,a5,0x30
   21808:	01055513          	srl	a0,a0,0x10
   2180c:	00f56533          	or	a0,a0,a5
   21810:	000047b7          	lui	a5,0x4
   21814:	02f7879b          	addw	a5,a5,47 # 402f <exit-0xc0b9>
   21818:	40e787bb          	subw	a5,a5,a4
   2181c:	00f55533          	srl	a0,a0,a5
   21820:	0005051b          	sext.w	a0,a0
   21824:	00068463          	beqz	a3,2182c <__fixtfsi+0x64>
   21828:	40a0053b          	negw	a0,a0
   2182c:	00008067          	ret

0000000000021830 <__floatsitf>:
   21830:	fe010113          	add	sp,sp,-32
   21834:	00113c23          	sd	ra,24(sp)
   21838:	00813823          	sd	s0,16(sp)
   2183c:	00913423          	sd	s1,8(sp)
   21840:	06050463          	beqz	a0,218a8 <__floatsitf+0x78>
   21844:	0005079b          	sext.w	a5,a0
   21848:	03f55493          	srl	s1,a0,0x3f
   2184c:	00055463          	bgez	a0,21854 <__floatsitf+0x24>
   21850:	40f007bb          	negw	a5,a5
   21854:	02079413          	sll	s0,a5,0x20
   21858:	02045413          	srl	s0,s0,0x20
   2185c:	00040513          	mv	a0,s0
   21860:	42c000ef          	jal	21c8c <__clzdi2>
   21864:	000045b7          	lui	a1,0x4
   21868:	03e5859b          	addw	a1,a1,62 # 403e <exit-0xc0aa>
   2186c:	40a585bb          	subw	a1,a1,a0
   21870:	ff15051b          	addw	a0,a0,-15 # 7ffffff1 <__BSS_END__+0x7ffdb1d9>
   21874:	00a417b3          	sll	a5,s0,a0
   21878:	01813083          	ld	ra,24(sp)
   2187c:	01013403          	ld	s0,16(sp)
   21880:	00f4949b          	sllw	s1,s1,0xf
   21884:	0095e5b3          	or	a1,a1,s1
   21888:	01079793          	sll	a5,a5,0x10
   2188c:	03059593          	sll	a1,a1,0x30
   21890:	0107d793          	srl	a5,a5,0x10
   21894:	00813483          	ld	s1,8(sp)
   21898:	00000513          	li	a0,0
   2189c:	00b7e5b3          	or	a1,a5,a1
   218a0:	02010113          	add	sp,sp,32
   218a4:	00008067          	ret
   218a8:	00000793          	li	a5,0
   218ac:	00000593          	li	a1,0
   218b0:	00000493          	li	s1,0
   218b4:	fc5ff06f          	j	21878 <__floatsitf+0x48>

00000000000218b8 <__extenddftf2>:
   218b8:	03455793          	srl	a5,a0,0x34
   218bc:	7ff7f793          	and	a5,a5,2047
   218c0:	fe010113          	add	sp,sp,-32
   218c4:	00178713          	add	a4,a5,1
   218c8:	00813823          	sd	s0,16(sp)
   218cc:	00913423          	sd	s1,8(sp)
   218d0:	00c51413          	sll	s0,a0,0xc
   218d4:	00113c23          	sd	ra,24(sp)
   218d8:	7fe77713          	and	a4,a4,2046
   218dc:	00c45413          	srl	s0,s0,0xc
   218e0:	03f55493          	srl	s1,a0,0x3f
   218e4:	04070463          	beqz	a4,2192c <__extenddftf2+0x74>
   218e8:	00004737          	lui	a4,0x4
   218ec:	c0070713          	add	a4,a4,-1024 # 3c00 <exit-0xc4e8>
   218f0:	00445593          	srl	a1,s0,0x4
   218f4:	00e787b3          	add	a5,a5,a4
   218f8:	03c41413          	sll	s0,s0,0x3c
   218fc:	00f4951b          	sllw	a0,s1,0xf
   21900:	01813083          	ld	ra,24(sp)
   21904:	00a7e7b3          	or	a5,a5,a0
   21908:	00040513          	mv	a0,s0
   2190c:	01013403          	ld	s0,16(sp)
   21910:	01059593          	sll	a1,a1,0x10
   21914:	03079793          	sll	a5,a5,0x30
   21918:	0105d593          	srl	a1,a1,0x10
   2191c:	00813483          	ld	s1,8(sp)
   21920:	00f5e5b3          	or	a1,a1,a5
   21924:	02010113          	add	sp,sp,32
   21928:	00008067          	ret
   2192c:	04079a63          	bnez	a5,21980 <__extenddftf2+0xc8>
   21930:	00000593          	li	a1,0
   21934:	fc0404e3          	beqz	s0,218fc <__extenddftf2+0x44>
   21938:	00040513          	mv	a0,s0
   2193c:	350000ef          	jal	21c8c <__clzdi2>
   21940:	0005071b          	sext.w	a4,a0
   21944:	00e00793          	li	a5,14
   21948:	02e7c463          	blt	a5,a4,21970 <__extenddftf2+0xb8>
   2194c:	00f00593          	li	a1,15
   21950:	40a585bb          	subw	a1,a1,a0
   21954:	0315079b          	addw	a5,a0,49
   21958:	00b455b3          	srl	a1,s0,a1
   2195c:	00f41433          	sll	s0,s0,a5
   21960:	000047b7          	lui	a5,0x4
   21964:	c0c7879b          	addw	a5,a5,-1012 # 3c0c <exit-0xc4dc>
   21968:	40a787bb          	subw	a5,a5,a0
   2196c:	f91ff06f          	j	218fc <__extenddftf2+0x44>
   21970:	ff15059b          	addw	a1,a0,-15
   21974:	00b415b3          	sll	a1,s0,a1
   21978:	00000413          	li	s0,0
   2197c:	fe5ff06f          	j	21960 <__extenddftf2+0xa8>
   21980:	00000593          	li	a1,0
   21984:	00040c63          	beqz	s0,2199c <__extenddftf2+0xe4>
   21988:	00100793          	li	a5,1
   2198c:	00445593          	srl	a1,s0,0x4
   21990:	02f79793          	sll	a5,a5,0x2f
   21994:	00f5e5b3          	or	a1,a1,a5
   21998:	03c41413          	sll	s0,s0,0x3c
   2199c:	000087b7          	lui	a5,0x8
   219a0:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   219a4:	f59ff06f          	j	218fc <__extenddftf2+0x44>

00000000000219a8 <__trunctfdf2>:
   219a8:	00008737          	lui	a4,0x8
   219ac:	fff70693          	add	a3,a4,-1 # 7fff <exit-0x80e9>
   219b0:	0305d793          	srl	a5,a1,0x30
   219b4:	03f5d813          	srl	a6,a1,0x3f
   219b8:	01059593          	sll	a1,a1,0x10
   219bc:	00d7f7b3          	and	a5,a5,a3
   219c0:	00d5d593          	srl	a1,a1,0xd
   219c4:	03d55693          	srl	a3,a0,0x3d
   219c8:	00b6e6b3          	or	a3,a3,a1
   219cc:	ffe70713          	add	a4,a4,-2
   219d0:	00178593          	add	a1,a5,1
   219d4:	00e5f733          	and	a4,a1,a4
   219d8:	00351613          	sll	a2,a0,0x3
   219dc:	10070e63          	beqz	a4,21af8 <__trunctfdf2+0x150>
   219e0:	ffffc737          	lui	a4,0xffffc
   219e4:	40070713          	add	a4,a4,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd75e8>
   219e8:	00e787b3          	add	a5,a5,a4
   219ec:	7fe00713          	li	a4,2046
   219f0:	16f74463          	blt	a4,a5,21b58 <__trunctfdf2+0x1b0>
   219f4:	0af04a63          	bgtz	a5,21aa8 <__trunctfdf2+0x100>
   219f8:	fcc00713          	li	a4,-52
   219fc:	16e7c263          	blt	a5,a4,21b60 <__trunctfdf2+0x1b8>
   21a00:	00100713          	li	a4,1
   21a04:	03d00893          	li	a7,61
   21a08:	03371713          	sll	a4,a4,0x33
   21a0c:	40f888b3          	sub	a7,a7,a5
   21a10:	0007851b          	sext.w	a0,a5
   21a14:	03f00793          	li	a5,63
   21a18:	00e6e6b3          	or	a3,a3,a4
   21a1c:	0317cc63          	blt	a5,a7,21a54 <__trunctfdf2+0xac>
   21a20:	03d00793          	li	a5,61
   21a24:	0035071b          	addw	a4,a0,3
   21a28:	40a787bb          	subw	a5,a5,a0
   21a2c:	00f657b3          	srl	a5,a2,a5
   21a30:	00e61633          	sll	a2,a2,a4
   21a34:	00c03633          	snez	a2,a2
   21a38:	00c7e7b3          	or	a5,a5,a2
   21a3c:	00e696b3          	sll	a3,a3,a4
   21a40:	00f6e6b3          	or	a3,a3,a5
   21a44:	0076f793          	and	a5,a3,7
   21a48:	0c079c63          	bnez	a5,21b20 <__trunctfdf2+0x178>
   21a4c:	0036d713          	srl	a4,a3,0x3
   21a50:	03c0006f          	j	21a8c <__trunctfdf2+0xe4>
   21a54:	ffd00713          	li	a4,-3
   21a58:	40a7073b          	subw	a4,a4,a0
   21a5c:	04000793          	li	a5,64
   21a60:	00e6d733          	srl	a4,a3,a4
   21a64:	00000593          	li	a1,0
   21a68:	00f88663          	beq	a7,a5,21a74 <__trunctfdf2+0xcc>
   21a6c:	0435079b          	addw	a5,a0,67
   21a70:	00f695b3          	sll	a1,a3,a5
   21a74:	00c5e5b3          	or	a1,a1,a2
   21a78:	00b035b3          	snez	a1,a1
   21a7c:	00b76733          	or	a4,a4,a1
   21a80:	00777793          	and	a5,a4,7
   21a84:	0a079a63          	bnez	a5,21b38 <__trunctfdf2+0x190>
   21a88:	00375713          	srl	a4,a4,0x3
   21a8c:	00c71713          	sll	a4,a4,0xc
   21a90:	00c75713          	srl	a4,a4,0xc
   21a94:	03479793          	sll	a5,a5,0x34
   21a98:	00e7e7b3          	or	a5,a5,a4
   21a9c:	03f81513          	sll	a0,a6,0x3f
   21aa0:	00a7e533          	or	a0,a5,a0
   21aa4:	00008067          	ret
   21aa8:	00751713          	sll	a4,a0,0x7
   21aac:	00e03733          	snez	a4,a4
   21ab0:	03c65613          	srl	a2,a2,0x3c
   21ab4:	00c76733          	or	a4,a4,a2
   21ab8:	00469693          	sll	a3,a3,0x4
   21abc:	00e6e6b3          	or	a3,a3,a4
   21ac0:	00777713          	and	a4,a4,7
   21ac4:	f80704e3          	beqz	a4,21a4c <__trunctfdf2+0xa4>
   21ac8:	00f6f613          	and	a2,a3,15
   21acc:	00400593          	li	a1,4
   21ad0:	0036d713          	srl	a4,a3,0x3
   21ad4:	fab60ce3          	beq	a2,a1,21a8c <__trunctfdf2+0xe4>
   21ad8:	00468693          	add	a3,a3,4
   21adc:	0376d613          	srl	a2,a3,0x37
   21ae0:	00167613          	and	a2,a2,1
   21ae4:	0036d713          	srl	a4,a3,0x3
   21ae8:	fa0602e3          	beqz	a2,21a8c <__trunctfdf2+0xe4>
   21aec:	00178793          	add	a5,a5,1
   21af0:	00000713          	li	a4,0
   21af4:	f99ff06f          	j	21a8c <__trunctfdf2+0xe4>
   21af8:	00000713          	li	a4,0
   21afc:	f80788e3          	beqz	a5,21a8c <__trunctfdf2+0xe4>
   21b00:	00c6e733          	or	a4,a3,a2
   21b04:	7ff00793          	li	a5,2047
   21b08:	f80702e3          	beqz	a4,21a8c <__trunctfdf2+0xe4>
   21b0c:	00100713          	li	a4,1
   21b10:	00000813          	li	a6,0
   21b14:	7ff00793          	li	a5,2047
   21b18:	03371713          	sll	a4,a4,0x33
   21b1c:	f71ff06f          	j	21a8c <__trunctfdf2+0xe4>
   21b20:	00f6f793          	and	a5,a3,15
   21b24:	00400713          	li	a4,4
   21b28:	02e79463          	bne	a5,a4,21b50 <__trunctfdf2+0x1a8>
   21b2c:	0036d713          	srl	a4,a3,0x3
   21b30:	00000793          	li	a5,0
   21b34:	f59ff06f          	j	21a8c <__trunctfdf2+0xe4>
   21b38:	00f77793          	and	a5,a4,15
   21b3c:	00400693          	li	a3,4
   21b40:	00d78463          	beq	a5,a3,21b48 <__trunctfdf2+0x1a0>
   21b44:	00470713          	add	a4,a4,4
   21b48:	00375713          	srl	a4,a4,0x3
   21b4c:	fe5ff06f          	j	21b30 <__trunctfdf2+0x188>
   21b50:	00000793          	li	a5,0
   21b54:	f85ff06f          	j	21ad8 <__trunctfdf2+0x130>
   21b58:	7ff00793          	li	a5,2047
   21b5c:	f95ff06f          	j	21af0 <__trunctfdf2+0x148>
   21b60:	00000793          	li	a5,0
   21b64:	f8dff06f          	j	21af0 <__trunctfdf2+0x148>

0000000000021b68 <__muldi3>:
   21b68:	00050613          	mv	a2,a0
   21b6c:	00000513          	li	a0,0
   21b70:	0015f693          	and	a3,a1,1
   21b74:	00068463          	beqz	a3,21b7c <__muldi3+0x14>
   21b78:	00c50533          	add	a0,a0,a2
   21b7c:	0015d593          	srl	a1,a1,0x1
   21b80:	00161613          	sll	a2,a2,0x1
   21b84:	fe0596e3          	bnez	a1,21b70 <__muldi3+0x8>
   21b88:	00008067          	ret

0000000000021b8c <__udivsi3>:
   21b8c:	02051513          	sll	a0,a0,0x20
   21b90:	02059593          	sll	a1,a1,0x20
   21b94:	00008293          	mv	t0,ra
   21b98:	03c000ef          	jal	21bd4 <__hidden___udivdi3>
   21b9c:	0005051b          	sext.w	a0,a0
   21ba0:	00028067          	jr	t0 # 1038c <memset+0xb4>

0000000000021ba4 <__umodsi3>:
   21ba4:	02051513          	sll	a0,a0,0x20
   21ba8:	02059593          	sll	a1,a1,0x20
   21bac:	02055513          	srl	a0,a0,0x20
   21bb0:	0205d593          	srl	a1,a1,0x20
   21bb4:	00008293          	mv	t0,ra
   21bb8:	01c000ef          	jal	21bd4 <__hidden___udivdi3>
   21bbc:	0005851b          	sext.w	a0,a1
   21bc0:	00028067          	jr	t0

0000000000021bc4 <__divsi3>:
   21bc4:	fff00293          	li	t0,-1
   21bc8:	0a558c63          	beq	a1,t0,21c80 <__moddi3+0x30>

0000000000021bcc <__divdi3>:
   21bcc:	06054063          	bltz	a0,21c2c <__umoddi3+0x10>
   21bd0:	0605c663          	bltz	a1,21c3c <__umoddi3+0x20>

0000000000021bd4 <__hidden___udivdi3>:
   21bd4:	00058613          	mv	a2,a1
   21bd8:	00050593          	mv	a1,a0
   21bdc:	fff00513          	li	a0,-1
   21be0:	02060c63          	beqz	a2,21c18 <__hidden___udivdi3+0x44>
   21be4:	00100693          	li	a3,1
   21be8:	00b67a63          	bgeu	a2,a1,21bfc <__hidden___udivdi3+0x28>
   21bec:	00c05863          	blez	a2,21bfc <__hidden___udivdi3+0x28>
   21bf0:	00161613          	sll	a2,a2,0x1
   21bf4:	00169693          	sll	a3,a3,0x1
   21bf8:	feb66ae3          	bltu	a2,a1,21bec <__hidden___udivdi3+0x18>
   21bfc:	00000513          	li	a0,0
   21c00:	00c5e663          	bltu	a1,a2,21c0c <__hidden___udivdi3+0x38>
   21c04:	40c585b3          	sub	a1,a1,a2
   21c08:	00d56533          	or	a0,a0,a3
   21c0c:	0016d693          	srl	a3,a3,0x1
   21c10:	00165613          	srl	a2,a2,0x1
   21c14:	fe0696e3          	bnez	a3,21c00 <__hidden___udivdi3+0x2c>
   21c18:	00008067          	ret

0000000000021c1c <__umoddi3>:
   21c1c:	00008293          	mv	t0,ra
   21c20:	fb5ff0ef          	jal	21bd4 <__hidden___udivdi3>
   21c24:	00058513          	mv	a0,a1
   21c28:	00028067          	jr	t0
   21c2c:	40a00533          	neg	a0,a0
   21c30:	00b04863          	bgtz	a1,21c40 <__umoddi3+0x24>
   21c34:	40b005b3          	neg	a1,a1
   21c38:	f9dff06f          	j	21bd4 <__hidden___udivdi3>
   21c3c:	40b005b3          	neg	a1,a1
   21c40:	00008293          	mv	t0,ra
   21c44:	f91ff0ef          	jal	21bd4 <__hidden___udivdi3>
   21c48:	40a00533          	neg	a0,a0
   21c4c:	00028067          	jr	t0

0000000000021c50 <__moddi3>:
   21c50:	00008293          	mv	t0,ra
   21c54:	0005ca63          	bltz	a1,21c68 <__moddi3+0x18>
   21c58:	00054c63          	bltz	a0,21c70 <__moddi3+0x20>
   21c5c:	f79ff0ef          	jal	21bd4 <__hidden___udivdi3>
   21c60:	00058513          	mv	a0,a1
   21c64:	00028067          	jr	t0
   21c68:	40b005b3          	neg	a1,a1
   21c6c:	fe0558e3          	bgez	a0,21c5c <__moddi3+0xc>
   21c70:	40a00533          	neg	a0,a0
   21c74:	f61ff0ef          	jal	21bd4 <__hidden___udivdi3>
   21c78:	40b00533          	neg	a0,a1
   21c7c:	00028067          	jr	t0
   21c80:	01f29293          	sll	t0,t0,0x1f
   21c84:	f45514e3          	bne	a0,t0,21bcc <__divdi3>
   21c88:	00008067          	ret

0000000000021c8c <__clzdi2>:
   21c8c:	03855793          	srl	a5,a0,0x38
   21c90:	04079063          	bnez	a5,21cd0 <__clzdi2+0x44>
   21c94:	03800793          	li	a5,56
   21c98:	ff878793          	add	a5,a5,-8
   21c9c:	00078863          	beqz	a5,21cac <__clzdi2+0x20>
   21ca0:	00f55733          	srl	a4,a0,a5
   21ca4:	0ff77713          	zext.b	a4,a4
   21ca8:	fe0708e3          	beqz	a4,21c98 <__clzdi2+0xc>
   21cac:	00023737          	lui	a4,0x23
   21cb0:	04000693          	li	a3,64
   21cb4:	40f686b3          	sub	a3,a3,a5
   21cb8:	00f55533          	srl	a0,a0,a5
   21cbc:	b1070793          	add	a5,a4,-1264 # 22b10 <__clz_tab>
   21cc0:	00a787b3          	add	a5,a5,a0
   21cc4:	0007c503          	lbu	a0,0(a5)
   21cc8:	40a6853b          	subw	a0,a3,a0
   21ccc:	00008067          	ret
   21cd0:	03800793          	li	a5,56
   21cd4:	fd9ff06f          	j	21cac <__clzdi2+0x20>

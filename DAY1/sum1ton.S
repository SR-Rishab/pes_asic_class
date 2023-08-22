
sum1ton.o:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	36d020ef          	jal	12c68 <__call_exitprocs>
   10100:	7481b503          	ld	a0,1864(gp) # 24d30 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	1e50f0ef          	jal	1faf8 <_exit>

0000000000010118 <main>:
   10118:	00022537          	lui	a0,0x22
   1011c:	ff010113          	add	sp,sp,-16
   10120:	03700613          	li	a2,55
   10124:	00a00593          	li	a1,10
   10128:	cb050513          	add	a0,a0,-848 # 21cb0 <__clzdi2+0x50>
   1012c:	00113423          	sd	ra,8(sp)
   10130:	298000ef          	jal	103c8 <printf>
   10134:	00813083          	ld	ra,8(sp)
   10138:	00000513          	li	a0,0
   1013c:	01010113          	add	sp,sp,16
   10140:	00008067          	ret

0000000000010144 <register_fini>:
   10144:	00000793          	li	a5,0
   10148:	00078863          	beqz	a5,10158 <register_fini+0x14>
   1014c:	00013537          	lui	a0,0x13
   10150:	44850513          	add	a0,a0,1096 # 13448 <__libc_fini_array>
   10154:	0310c06f          	j	1c984 <atexit>
   10158:	00008067          	ret

000000000001015c <_start>:
   1015c:	00014197          	auipc	gp,0x14
   10160:	48c18193          	add	gp,gp,1164 # 245e8 <__global_pointer$>
   10164:	77018513          	add	a0,gp,1904 # 24d58 <_PathLocale>
   10168:	00015617          	auipc	a2,0x15
   1016c:	c8060613          	add	a2,a2,-896 # 24de8 <__BSS_END__>
   10170:	40a60633          	sub	a2,a2,a0
   10174:	00000593          	li	a1,0
   10178:	134000ef          	jal	102ac <memset>
   1017c:	0000d517          	auipc	a0,0xd
   10180:	80850513          	add	a0,a0,-2040 # 1c984 <atexit>
   10184:	00050863          	beqz	a0,10194 <_start+0x38>
   10188:	00003517          	auipc	a0,0x3
   1018c:	2c050513          	add	a0,a0,704 # 13448 <__libc_fini_array>
   10190:	7f40c0ef          	jal	1c984 <atexit>
   10194:	07c000ef          	jal	10210 <__libc_init_array>
   10198:	00012503          	lw	a0,0(sp)
   1019c:	00810593          	add	a1,sp,8
   101a0:	00000613          	li	a2,0
   101a4:	f75ff0ef          	jal	10118 <main>
   101a8:	f41ff06f          	j	100e8 <exit>

00000000000101ac <__do_global_dtors_aux>:
   101ac:	ff010113          	add	sp,sp,-16
   101b0:	00813023          	sd	s0,0(sp)
   101b4:	7a01c783          	lbu	a5,1952(gp) # 24d88 <completed.1>
   101b8:	00113423          	sd	ra,8(sp)
   101bc:	02079263          	bnez	a5,101e0 <__do_global_dtors_aux+0x34>
   101c0:	00000793          	li	a5,0
   101c4:	00078a63          	beqz	a5,101d8 <__do_global_dtors_aux+0x2c>
   101c8:	00024537          	lui	a0,0x24
   101cc:	be050513          	add	a0,a0,-1056 # 23be0 <__EH_FRAME_BEGIN__>
   101d0:	00000097          	auipc	ra,0x0
   101d4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101d8:	00100793          	li	a5,1
   101dc:	7af18023          	sb	a5,1952(gp) # 24d88 <completed.1>
   101e0:	00813083          	ld	ra,8(sp)
   101e4:	00013403          	ld	s0,0(sp)
   101e8:	01010113          	add	sp,sp,16
   101ec:	00008067          	ret

00000000000101f0 <frame_dummy>:
   101f0:	00000793          	li	a5,0
   101f4:	00078c63          	beqz	a5,1020c <frame_dummy+0x1c>
   101f8:	00024537          	lui	a0,0x24
   101fc:	7a818593          	add	a1,gp,1960 # 24d90 <object.0>
   10200:	be050513          	add	a0,a0,-1056 # 23be0 <__EH_FRAME_BEGIN__>
   10204:	00000317          	auipc	t1,0x0
   10208:	00000067          	jr	zero # 0 <exit-0x100e8>
   1020c:	00008067          	ret

0000000000010210 <__libc_init_array>:
   10210:	fe010113          	add	sp,sp,-32
   10214:	00813823          	sd	s0,16(sp)
   10218:	000247b7          	lui	a5,0x24
   1021c:	00024437          	lui	s0,0x24
   10220:	01213023          	sd	s2,0(sp)
   10224:	be478793          	add	a5,a5,-1052 # 23be4 <__preinit_array_end>
   10228:	be440713          	add	a4,s0,-1052 # 23be4 <__preinit_array_end>
   1022c:	00113c23          	sd	ra,24(sp)
   10230:	00913423          	sd	s1,8(sp)
   10234:	40e78933          	sub	s2,a5,a4
   10238:	02e78263          	beq	a5,a4,1025c <__libc_init_array+0x4c>
   1023c:	40395913          	sra	s2,s2,0x3
   10240:	be440413          	add	s0,s0,-1052
   10244:	00000493          	li	s1,0
   10248:	00043783          	ld	a5,0(s0)
   1024c:	00148493          	add	s1,s1,1
   10250:	00840413          	add	s0,s0,8
   10254:	000780e7          	jalr	a5
   10258:	ff24e8e3          	bltu	s1,s2,10248 <__libc_init_array+0x38>
   1025c:	00024437          	lui	s0,0x24
   10260:	000247b7          	lui	a5,0x24
   10264:	bf878793          	add	a5,a5,-1032 # 23bf8 <__do_global_dtors_aux_fini_array_entry>
   10268:	be840713          	add	a4,s0,-1048 # 23be8 <__init_array_start>
   1026c:	40e78933          	sub	s2,a5,a4
   10270:	40395913          	sra	s2,s2,0x3
   10274:	02e78063          	beq	a5,a4,10294 <__libc_init_array+0x84>
   10278:	be840413          	add	s0,s0,-1048
   1027c:	00000493          	li	s1,0
   10280:	00043783          	ld	a5,0(s0)
   10284:	00148493          	add	s1,s1,1
   10288:	00840413          	add	s0,s0,8
   1028c:	000780e7          	jalr	a5
   10290:	ff24e8e3          	bltu	s1,s2,10280 <__libc_init_array+0x70>
   10294:	01813083          	ld	ra,24(sp)
   10298:	01013403          	ld	s0,16(sp)
   1029c:	00813483          	ld	s1,8(sp)
   102a0:	00013903          	ld	s2,0(sp)
   102a4:	02010113          	add	sp,sp,32
   102a8:	00008067          	ret

00000000000102ac <memset>:
   102ac:	00f00313          	li	t1,15
   102b0:	00050713          	mv	a4,a0
   102b4:	02c37a63          	bgeu	t1,a2,102e8 <memset+0x3c>
   102b8:	00f77793          	and	a5,a4,15
   102bc:	0a079063          	bnez	a5,1035c <memset+0xb0>
   102c0:	06059e63          	bnez	a1,1033c <memset+0x90>
   102c4:	ff067693          	and	a3,a2,-16
   102c8:	00f67613          	and	a2,a2,15
   102cc:	00e686b3          	add	a3,a3,a4
   102d0:	00b73023          	sd	a1,0(a4)
   102d4:	00b73423          	sd	a1,8(a4)
   102d8:	01070713          	add	a4,a4,16
   102dc:	fed76ae3          	bltu	a4,a3,102d0 <memset+0x24>
   102e0:	00061463          	bnez	a2,102e8 <memset+0x3c>
   102e4:	00008067          	ret
   102e8:	40c306b3          	sub	a3,t1,a2
   102ec:	00269693          	sll	a3,a3,0x2
   102f0:	00000297          	auipc	t0,0x0
   102f4:	005686b3          	add	a3,a3,t0
   102f8:	00c68067          	jr	12(a3)
   102fc:	00b70723          	sb	a1,14(a4)
   10300:	00b706a3          	sb	a1,13(a4)
   10304:	00b70623          	sb	a1,12(a4)
   10308:	00b705a3          	sb	a1,11(a4)
   1030c:	00b70523          	sb	a1,10(a4)
   10310:	00b704a3          	sb	a1,9(a4)
   10314:	00b70423          	sb	a1,8(a4)
   10318:	00b703a3          	sb	a1,7(a4)
   1031c:	00b70323          	sb	a1,6(a4)
   10320:	00b702a3          	sb	a1,5(a4)
   10324:	00b70223          	sb	a1,4(a4)
   10328:	00b701a3          	sb	a1,3(a4)
   1032c:	00b70123          	sb	a1,2(a4)
   10330:	00b700a3          	sb	a1,1(a4)
   10334:	00b70023          	sb	a1,0(a4)
   10338:	00008067          	ret
   1033c:	0ff5f593          	zext.b	a1,a1
   10340:	00859693          	sll	a3,a1,0x8
   10344:	00d5e5b3          	or	a1,a1,a3
   10348:	01059693          	sll	a3,a1,0x10
   1034c:	00d5e5b3          	or	a1,a1,a3
   10350:	02059693          	sll	a3,a1,0x20
   10354:	00d5e5b3          	or	a1,a1,a3
   10358:	f6dff06f          	j	102c4 <memset+0x18>
   1035c:	00279693          	sll	a3,a5,0x2
   10360:	00000297          	auipc	t0,0x0
   10364:	005686b3          	add	a3,a3,t0
   10368:	00008293          	mv	t0,ra
   1036c:	f98680e7          	jalr	-104(a3)
   10370:	00028093          	mv	ra,t0
   10374:	ff078793          	add	a5,a5,-16
   10378:	40f70733          	sub	a4,a4,a5
   1037c:	00f60633          	add	a2,a2,a5
   10380:	f6c374e3          	bgeu	t1,a2,102e8 <memset+0x3c>
   10384:	f3dff06f          	j	102c0 <memset+0x14>

0000000000010388 <_printf_r>:
   10388:	fb010113          	add	sp,sp,-80
   1038c:	02c13023          	sd	a2,32(sp)
   10390:	02d13423          	sd	a3,40(sp)
   10394:	02e13823          	sd	a4,48(sp)
   10398:	02f13c23          	sd	a5,56(sp)
   1039c:	05013023          	sd	a6,64(sp)
   103a0:	05113423          	sd	a7,72(sp)
   103a4:	00058613          	mv	a2,a1
   103a8:	01053583          	ld	a1,16(a0)
   103ac:	02010693          	add	a3,sp,32
   103b0:	00113c23          	sd	ra,24(sp)
   103b4:	00d13423          	sd	a3,8(sp)
   103b8:	05c000ef          	jal	10414 <_vfprintf_r>
   103bc:	01813083          	ld	ra,24(sp)
   103c0:	05010113          	add	sp,sp,80
   103c4:	00008067          	ret

00000000000103c8 <printf>:
   103c8:	7581b303          	ld	t1,1880(gp) # 24d40 <_impure_ptr>
   103cc:	fa010113          	add	sp,sp,-96
   103d0:	02c13823          	sd	a2,48(sp)
   103d4:	02d13c23          	sd	a3,56(sp)
   103d8:	02b13423          	sd	a1,40(sp)
   103dc:	04e13023          	sd	a4,64(sp)
   103e0:	04f13423          	sd	a5,72(sp)
   103e4:	05013823          	sd	a6,80(sp)
   103e8:	05113c23          	sd	a7,88(sp)
   103ec:	01033583          	ld	a1,16(t1) # 10214 <__libc_init_array+0x4>
   103f0:	02810693          	add	a3,sp,40
   103f4:	00050613          	mv	a2,a0
   103f8:	00030513          	mv	a0,t1
   103fc:	00113c23          	sd	ra,24(sp)
   10400:	00d13423          	sd	a3,8(sp)
   10404:	010000ef          	jal	10414 <_vfprintf_r>
   10408:	01813083          	ld	ra,24(sp)
   1040c:	06010113          	add	sp,sp,96
   10410:	00008067          	ret

0000000000010414 <_vfprintf_r>:
   10414:	d9010113          	add	sp,sp,-624
   10418:	26113423          	sd	ra,616(sp)
   1041c:	26813023          	sd	s0,608(sp)
   10420:	25213823          	sd	s2,592(sp)
   10424:	00b13023          	sd	a1,0(sp)
   10428:	00060913          	mv	s2,a2
   1042c:	02d13023          	sd	a3,32(sp)
   10430:	24913c23          	sd	s1,600(sp)
   10434:	25313423          	sd	s3,584(sp)
   10438:	25413023          	sd	s4,576(sp)
   1043c:	23513c23          	sd	s5,568(sp)
   10440:	23613823          	sd	s6,560(sp)
   10444:	23713423          	sd	s7,552(sp)
   10448:	23813023          	sd	s8,544(sp)
   1044c:	21913c23          	sd	s9,536(sp)
   10450:	21a13823          	sd	s10,528(sp)
   10454:	21b13423          	sd	s11,520(sp)
   10458:	00050413          	mv	s0,a0
   1045c:	04a13823          	sd	a0,80(sp)
   10460:	2c8060ef          	jal	16728 <_localeconv_r>
   10464:	00053703          	ld	a4,0(a0)
   10468:	00070513          	mv	a0,a4
   1046c:	06e13023          	sd	a4,96(sp)
   10470:	001080ef          	jal	18c70 <strlen>
   10474:	04a13c23          	sd	a0,88(sp)
   10478:	0e013823          	sd	zero,240(sp)
   1047c:	0e013c23          	sd	zero,248(sp)
   10480:	00040663          	beqz	s0,1048c <_vfprintf_r+0x78>
   10484:	05042703          	lw	a4,80(s0)
   10488:	5e070a63          	beqz	a4,10a7c <_vfprintf_r+0x668>
   1048c:	00013783          	ld	a5,0(sp)
   10490:	01079703          	lh	a4,16(a5)
   10494:	03271693          	sll	a3,a4,0x32
   10498:	0206c663          	bltz	a3,104c4 <_vfprintf_r+0xb0>
   1049c:	0ac7a683          	lw	a3,172(a5)
   104a0:	00002637          	lui	a2,0x2
   104a4:	00c76733          	or	a4,a4,a2
   104a8:	ffffe637          	lui	a2,0xffffe
   104ac:	0107171b          	sllw	a4,a4,0x10
   104b0:	fff60613          	add	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd9217>
   104b4:	4107571b          	sraw	a4,a4,0x10
   104b8:	00c6f6b3          	and	a3,a3,a2
   104bc:	00e79823          	sh	a4,16(a5)
   104c0:	0ad7a623          	sw	a3,172(a5)
   104c4:	00877693          	and	a3,a4,8
   104c8:	32068263          	beqz	a3,107ec <_vfprintf_r+0x3d8>
   104cc:	00013783          	ld	a5,0(sp)
   104d0:	0187b683          	ld	a3,24(a5)
   104d4:	30068c63          	beqz	a3,107ec <_vfprintf_r+0x3d8>
   104d8:	01a77713          	and	a4,a4,26
   104dc:	00a00693          	li	a3,10
   104e0:	32d70a63          	beq	a4,a3,10814 <_vfprintf_r+0x400>
   104e4:	18010793          	add	a5,sp,384
   104e8:	00022737          	lui	a4,0x22
   104ec:	00078313          	mv	t1,a5
   104f0:	10f13023          	sd	a5,256(sp)
   104f4:	00090b13          	mv	s6,s2
   104f8:	d3470793          	add	a5,a4,-716 # 21d34 <__clzdi2+0xd4>
   104fc:	00022737          	lui	a4,0x22
   10500:	02f13423          	sd	a5,40(sp)
   10504:	f3870793          	add	a5,a4,-200 # 21f38 <zeroes.0>
   10508:	000b4703          	lbu	a4,0(s6)
   1050c:	10013823          	sd	zero,272(sp)
   10510:	10012423          	sw	zero,264(sp)
   10514:	02013c23          	sd	zero,56(sp)
   10518:	06013423          	sd	zero,104(sp)
   1051c:	06013823          	sd	zero,112(sp)
   10520:	06013c23          	sd	zero,120(sp)
   10524:	08013023          	sd	zero,128(sp)
   10528:	08013423          	sd	zero,136(sp)
   1052c:	00013823          	sd	zero,16(sp)
   10530:	00f13423          	sd	a5,8(sp)
   10534:	05013983          	ld	s3,80(sp)
   10538:	00030413          	mv	s0,t1
   1053c:	24070063          	beqz	a4,1077c <_vfprintf_r+0x368>
   10540:	000b0493          	mv	s1,s6
   10544:	02500693          	li	a3,37
   10548:	2ed70a63          	beq	a4,a3,1083c <_vfprintf_r+0x428>
   1054c:	0014c703          	lbu	a4,1(s1)
   10550:	00148493          	add	s1,s1,1
   10554:	fe071ae3          	bnez	a4,10548 <_vfprintf_r+0x134>
   10558:	4164893b          	subw	s2,s1,s6
   1055c:	22090063          	beqz	s2,1077c <_vfprintf_r+0x368>
   10560:	11013d83          	ld	s11,272(sp)
   10564:	10812683          	lw	a3,264(sp)
   10568:	01643023          	sd	s6,0(s0)
   1056c:	012d8733          	add	a4,s11,s2
   10570:	0016861b          	addw	a2,a3,1
   10574:	01243423          	sd	s2,8(s0)
   10578:	10e13823          	sd	a4,272(sp)
   1057c:	10c12423          	sw	a2,264(sp)
   10580:	00700713          	li	a4,7
   10584:	01040413          	add	s0,s0,16
   10588:	2cc74263          	blt	a4,a2,1084c <_vfprintf_r+0x438>
   1058c:	01013783          	ld	a5,16(sp)
   10590:	0004c703          	lbu	a4,0(s1)
   10594:	012787bb          	addw	a5,a5,s2
   10598:	00f13823          	sd	a5,16(sp)
   1059c:	1e070063          	beqz	a4,1077c <_vfprintf_r+0x368>
   105a0:	fff00313          	li	t1,-1
   105a4:	0014ce03          	lbu	t3,1(s1)
   105a8:	0c0107a3          	sb	zero,207(sp)
   105ac:	00148493          	add	s1,s1,1
   105b0:	00000a13          	li	s4,0
   105b4:	00000913          	li	s2,0
   105b8:	05a00b93          	li	s7,90
   105bc:	00030a93          	mv	s5,t1
   105c0:	00148493          	add	s1,s1,1
   105c4:	000e0c9b          	sext.w	s9,t3
   105c8:	fe0c879b          	addw	a5,s9,-32
   105cc:	0007871b          	sext.w	a4,a5
   105d0:	04ebec63          	bltu	s7,a4,10628 <_vfprintf_r+0x214>
   105d4:	02079713          	sll	a4,a5,0x20
   105d8:	01e75793          	srl	a5,a4,0x1e
   105dc:	02813703          	ld	a4,40(sp)
   105e0:	00e787b3          	add	a5,a5,a4
   105e4:	0007a783          	lw	a5,0(a5)
   105e8:	00078067          	jr	a5
   105ec:	00000a13          	li	s4,0
   105f0:	00900693          	li	a3,9
   105f4:	0004c703          	lbu	a4,0(s1)
   105f8:	002a179b          	sllw	a5,s4,0x2
   105fc:	01478a3b          	addw	s4,a5,s4
   10600:	fd0c8c9b          	addw	s9,s9,-48
   10604:	001a1a1b          	sllw	s4,s4,0x1
   10608:	fd07079b          	addw	a5,a4,-48
   1060c:	014c8a3b          	addw	s4,s9,s4
   10610:	00148493          	add	s1,s1,1
   10614:	00070c9b          	sext.w	s9,a4
   10618:	fcf6fee3          	bgeu	a3,a5,105f4 <_vfprintf_r+0x1e0>
   1061c:	fe0c879b          	addw	a5,s9,-32
   10620:	0007871b          	sext.w	a4,a5
   10624:	faebf8e3          	bgeu	s7,a4,105d4 <_vfprintf_r+0x1c0>
   10628:	140c8a63          	beqz	s9,1077c <_vfprintf_r+0x368>
   1062c:	11910c23          	sb	s9,280(sp)
   10630:	0c0107a3          	sb	zero,207(sp)
   10634:	00100c13          	li	s8,1
   10638:	00100d13          	li	s10,1
   1063c:	11810b13          	add	s6,sp,280
   10640:	00013c23          	sd	zero,24(sp)
   10644:	00000313          	li	t1,0
   10648:	04013423          	sd	zero,72(sp)
   1064c:	04013023          	sd	zero,64(sp)
   10650:	02013823          	sd	zero,48(sp)
   10654:	00297b93          	and	s7,s2,2
   10658:	000b8463          	beqz	s7,10660 <_vfprintf_r+0x24c>
   1065c:	002c0c1b          	addw	s8,s8,2
   10660:	08497a93          	and	s5,s2,132
   10664:	000a9663          	bnez	s5,10670 <_vfprintf_r+0x25c>
   10668:	418a073b          	subw	a4,s4,s8
   1066c:	34e046e3          	bgtz	a4,111b8 <_vfprintf_r+0xda4>
   10670:	0cf14703          	lbu	a4,207(sp)
   10674:	11013d83          	ld	s11,272(sp)
   10678:	02070c63          	beqz	a4,106b0 <_vfprintf_r+0x29c>
   1067c:	10812603          	lw	a2,264(sp)
   10680:	0cf10593          	add	a1,sp,207
   10684:	00b43023          	sd	a1,0(s0)
   10688:	0016061b          	addw	a2,a2,1
   1068c:	00100593          	li	a1,1
   10690:	001d8d93          	add	s11,s11,1
   10694:	00b43423          	sd	a1,8(s0)
   10698:	10c12423          	sw	a2,264(sp)
   1069c:	0006059b          	sext.w	a1,a2
   106a0:	11b13823          	sd	s11,272(sp)
   106a4:	00700613          	li	a2,7
   106a8:	01040413          	add	s0,s0,16
   106ac:	2ab64463          	blt	a2,a1,10954 <_vfprintf_r+0x540>
   106b0:	020b8c63          	beqz	s7,106e8 <_vfprintf_r+0x2d4>
   106b4:	10812603          	lw	a2,264(sp)
   106b8:	00200593          	li	a1,2
   106bc:	002d8d93          	add	s11,s11,2
   106c0:	0016061b          	addw	a2,a2,1
   106c4:	0d010793          	add	a5,sp,208
   106c8:	00b43423          	sd	a1,8(s0)
   106cc:	00f43023          	sd	a5,0(s0)
   106d0:	0006059b          	sext.w	a1,a2
   106d4:	10c12423          	sw	a2,264(sp)
   106d8:	11b13823          	sd	s11,272(sp)
   106dc:	00700613          	li	a2,7
   106e0:	01040413          	add	s0,s0,16
   106e4:	3eb64ae3          	blt	a2,a1,112d8 <_vfprintf_r+0xec4>
   106e8:	08000613          	li	a2,128
   106ec:	0eca80e3          	beq	s5,a2,10fcc <_vfprintf_r+0xbb8>
   106f0:	41a30bbb          	subw	s7,t1,s10
   106f4:	1d7040e3          	bgtz	s7,110b4 <_vfprintf_r+0xca0>
   106f8:	10097613          	and	a2,s2,256
   106fc:	70061863          	bnez	a2,10e0c <_vfprintf_r+0x9f8>
   10700:	10812603          	lw	a2,264(sp)
   10704:	01bd0733          	add	a4,s10,s11
   10708:	01643023          	sd	s6,0(s0)
   1070c:	0016069b          	addw	a3,a2,1
   10710:	01a43423          	sd	s10,8(s0)
   10714:	10e13823          	sd	a4,272(sp)
   10718:	10d12423          	sw	a3,264(sp)
   1071c:	00700793          	li	a5,7
   10720:	32d7ce63          	blt	a5,a3,10a5c <_vfprintf_r+0x648>
   10724:	01040413          	add	s0,s0,16
   10728:	00497913          	and	s2,s2,4
   1072c:	00090663          	beqz	s2,10738 <_vfprintf_r+0x324>
   10730:	418a093b          	subw	s2,s4,s8
   10734:	3d2046e3          	bgtz	s2,11300 <_vfprintf_r+0xeec>
   10738:	000a0793          	mv	a5,s4
   1073c:	018a5463          	bge	s4,s8,10744 <_vfprintf_r+0x330>
   10740:	000c0793          	mv	a5,s8
   10744:	01013683          	ld	a3,16(sp)
   10748:	00d787bb          	addw	a5,a5,a3
   1074c:	00f13823          	sd	a5,16(sp)
   10750:	240710e3          	bnez	a4,11190 <_vfprintf_r+0xd7c>
   10754:	01813783          	ld	a5,24(sp)
   10758:	10012423          	sw	zero,264(sp)
   1075c:	00078863          	beqz	a5,1076c <_vfprintf_r+0x358>
   10760:	01813583          	ld	a1,24(sp)
   10764:	00098513          	mv	a0,s3
   10768:	679020ef          	jal	135e0 <_free_r>
   1076c:	18010413          	add	s0,sp,384
   10770:	00048b13          	mv	s6,s1
   10774:	000b4703          	lbu	a4,0(s6)
   10778:	dc0714e3          	bnez	a4,10540 <_vfprintf_r+0x12c>
   1077c:	11013783          	ld	a5,272(sp)
   10780:	00078463          	beqz	a5,10788 <_vfprintf_r+0x374>
   10784:	2190106f          	j	1219c <_vfprintf_r+0x1d88>
   10788:	00013783          	ld	a5,0(sp)
   1078c:	0107d783          	lhu	a5,16(a5)
   10790:	0407f793          	and	a5,a5,64
   10794:	00078463          	beqz	a5,1079c <_vfprintf_r+0x388>
   10798:	7ed0106f          	j	12784 <_vfprintf_r+0x2370>
   1079c:	26813083          	ld	ra,616(sp)
   107a0:	26013403          	ld	s0,608(sp)
   107a4:	01013503          	ld	a0,16(sp)
   107a8:	25813483          	ld	s1,600(sp)
   107ac:	25013903          	ld	s2,592(sp)
   107b0:	24813983          	ld	s3,584(sp)
   107b4:	24013a03          	ld	s4,576(sp)
   107b8:	23813a83          	ld	s5,568(sp)
   107bc:	23013b03          	ld	s6,560(sp)
   107c0:	22813b83          	ld	s7,552(sp)
   107c4:	22013c03          	ld	s8,544(sp)
   107c8:	21813c83          	ld	s9,536(sp)
   107cc:	21013d03          	ld	s10,528(sp)
   107d0:	20813d83          	ld	s11,520(sp)
   107d4:	27010113          	add	sp,sp,624
   107d8:	00008067          	ret
   107dc:	01096913          	or	s2,s2,16
   107e0:	0004ce03          	lbu	t3,0(s1)
   107e4:	0009091b          	sext.w	s2,s2
   107e8:	dd9ff06f          	j	105c0 <_vfprintf_r+0x1ac>
   107ec:	00013583          	ld	a1,0(sp)
   107f0:	05013503          	ld	a0,80(sp)
   107f4:	334020ef          	jal	12b28 <__swsetup_r>
   107f8:	00050463          	beqz	a0,10800 <_vfprintf_r+0x3ec>
   107fc:	7890106f          	j	12784 <_vfprintf_r+0x2370>
   10800:	00013783          	ld	a5,0(sp)
   10804:	00a00693          	li	a3,10
   10808:	01079703          	lh	a4,16(a5)
   1080c:	01a77713          	and	a4,a4,26
   10810:	ccd71ae3          	bne	a4,a3,104e4 <_vfprintf_r+0xd0>
   10814:	00013783          	ld	a5,0(sp)
   10818:	01279703          	lh	a4,18(a5)
   1081c:	cc0744e3          	bltz	a4,104e4 <_vfprintf_r+0xd0>
   10820:	02013683          	ld	a3,32(sp)
   10824:	05013503          	ld	a0,80(sp)
   10828:	00090613          	mv	a2,s2
   1082c:	00078593          	mv	a1,a5
   10830:	22c020ef          	jal	12a5c <__sbprintf>
   10834:	00a13823          	sd	a0,16(sp)
   10838:	f65ff06f          	j	1079c <_vfprintf_r+0x388>
   1083c:	4164893b          	subw	s2,s1,s6
   10840:	d20910e3          	bnez	s2,10560 <_vfprintf_r+0x14c>
   10844:	0004c703          	lbu	a4,0(s1)
   10848:	d55ff06f          	j	1059c <_vfprintf_r+0x188>
   1084c:	00013583          	ld	a1,0(sp)
   10850:	10010613          	add	a2,sp,256
   10854:	00098513          	mv	a0,s3
   10858:	44d0a0ef          	jal	1b4a4 <__sprint_r>
   1085c:	f20516e3          	bnez	a0,10788 <_vfprintf_r+0x374>
   10860:	18010413          	add	s0,sp,384
   10864:	d29ff06f          	j	1058c <_vfprintf_r+0x178>
   10868:	00897713          	and	a4,s2,8
   1086c:	000a8313          	mv	t1,s5
   10870:	6a071ce3          	bnez	a4,11728 <_vfprintf_r+0x1314>
   10874:	02013783          	ld	a5,32(sp)
   10878:	01513c23          	sd	s5,24(sp)
   1087c:	0007b503          	ld	a0,0(a5)
   10880:	00878a93          	add	s5,a5,8
   10884:	03513023          	sd	s5,32(sp)
   10888:	004110ef          	jal	2188c <__extenddftf2>
   1088c:	01813303          	ld	t1,24(sp)
   10890:	00050713          	mv	a4,a0
   10894:	0f010513          	add	a0,sp,240
   10898:	00613c23          	sd	t1,24(sp)
   1089c:	0ee13823          	sd	a4,240(sp)
   108a0:	0eb13c23          	sd	a1,248(sp)
   108a4:	615050ef          	jal	166b8 <_ldcheck>
   108a8:	0ca12c23          	sw	a0,216(sp)
   108ac:	00200713          	li	a4,2
   108b0:	01813303          	ld	t1,24(sp)
   108b4:	00e51463          	bne	a0,a4,108bc <_vfprintf_r+0x4a8>
   108b8:	28c0106f          	j	11b44 <_vfprintf_r+0x1730>
   108bc:	00100713          	li	a4,1
   108c0:	00e51463          	bne	a0,a4,108c8 <_vfprintf_r+0x4b4>
   108c4:	3c40106f          	j	11c88 <_vfprintf_r+0x1874>
   108c8:	06100713          	li	a4,97
   108cc:	00ec9463          	bne	s9,a4,108d4 <_vfprintf_r+0x4c0>
   108d0:	4c90106f          	j	12598 <_vfprintf_r+0x2184>
   108d4:	04100713          	li	a4,65
   108d8:	00ec9463          	bne	s9,a4,108e0 <_vfprintf_r+0x4cc>
   108dc:	1010106f          	j	121dc <_vfprintf_r+0x1dc8>
   108e0:	fff00713          	li	a4,-1
   108e4:	00e31463          	bne	t1,a4,108ec <_vfprintf_r+0x4d8>
   108e8:	7f10106f          	j	128d8 <_vfprintf_r+0x24c4>
   108ec:	fdfcf713          	and	a4,s9,-33
   108f0:	04700693          	li	a3,71
   108f4:	00d71463          	bne	a4,a3,108fc <_vfprintf_r+0x4e8>
   108f8:	7d10106f          	j	128c8 <_vfprintf_r+0x24b4>
   108fc:	10096713          	or	a4,s2,256
   10900:	0f813c03          	ld	s8,248(sp)
   10904:	0007079b          	sext.w	a5,a4
   10908:	08f13823          	sd	a5,144(sp)
   1090c:	05213023          	sd	s2,64(sp)
   10910:	0f013b83          	ld	s7,240(sp)
   10914:	000c5463          	bgez	s8,1091c <_vfprintf_r+0x508>
   10918:	4190106f          	j	12530 <_vfprintf_r+0x211c>
   1091c:	08013c23          	sd	zero,152(sp)
   10920:	00013c23          	sd	zero,24(sp)
   10924:	fbfc871b          	addw	a4,s9,-65
   10928:	0007061b          	sext.w	a2,a4
   1092c:	02500693          	li	a3,37
   10930:	00c6f463          	bgeu	a3,a2,10938 <_vfprintf_r+0x524>
   10934:	5e80106f          	j	11f1c <_vfprintf_r+0x1b08>
   10938:	02071693          	sll	a3,a4,0x20
   1093c:	01e6d713          	srl	a4,a3,0x1e
   10940:	000226b7          	lui	a3,0x22
   10944:	ea068693          	add	a3,a3,-352 # 21ea0 <__clzdi2+0x240>
   10948:	00d70733          	add	a4,a4,a3
   1094c:	00072703          	lw	a4,0(a4)
   10950:	00070067          	jr	a4
   10954:	00013583          	ld	a1,0(sp)
   10958:	10010613          	add	a2,sp,256
   1095c:	00098513          	mv	a0,s3
   10960:	08613823          	sd	t1,144(sp)
   10964:	3410a0ef          	jal	1b4a4 <__sprint_r>
   10968:	02051ee3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   1096c:	11013d83          	ld	s11,272(sp)
   10970:	09013303          	ld	t1,144(sp)
   10974:	18010413          	add	s0,sp,384
   10978:	d39ff06f          	j	106b0 <_vfprintf_r+0x29c>
   1097c:	03813783          	ld	a5,56(sp)
   10980:	00100693          	li	a3,1
   10984:	01040c93          	add	s9,s0,16
   10988:	3af6dae3          	bge	a3,a5,1153c <_vfprintf_r+0x1128>
   1098c:	10812603          	lw	a2,264(sp)
   10990:	00100693          	li	a3,1
   10994:	001d8713          	add	a4,s11,1
   10998:	0016061b          	addw	a2,a2,1
   1099c:	00d43423          	sd	a3,8(s0)
   109a0:	10c12423          	sw	a2,264(sp)
   109a4:	0006069b          	sext.w	a3,a2
   109a8:	01643023          	sd	s6,0(s0)
   109ac:	10e13823          	sd	a4,272(sp)
   109b0:	00700613          	li	a2,7
   109b4:	76d64ae3          	blt	a2,a3,11928 <_vfprintf_r+0x1514>
   109b8:	05813783          	ld	a5,88(sp)
   109bc:	0016841b          	addw	s0,a3,1
   109c0:	10812423          	sw	s0,264(sp)
   109c4:	00e78d33          	add	s10,a5,a4
   109c8:	06013703          	ld	a4,96(sp)
   109cc:	00fcb423          	sd	a5,8(s9)
   109d0:	11a13823          	sd	s10,272(sp)
   109d4:	00ecb023          	sd	a4,0(s9)
   109d8:	00700713          	li	a4,7
   109dc:	010c8c93          	add	s9,s9,16
   109e0:	768746e3          	blt	a4,s0,1194c <_vfprintf_r+0x1538>
   109e4:	0f013503          	ld	a0,240(sp)
   109e8:	0f813583          	ld	a1,248(sp)
   109ec:	00000613          	li	a2,0
   109f0:	00000693          	li	a3,0
   109f4:	2ed0f0ef          	jal	204e0 <__eqtf2>
   109f8:	03813783          	ld	a5,56(sp)
   109fc:	fff78a9b          	addw	s5,a5,-1
   10a00:	380508e3          	beqz	a0,11590 <_vfprintf_r+0x117c>
   10a04:	001b0793          	add	a5,s6,1
   10a08:	0014041b          	addw	s0,s0,1
   10a0c:	015d0d33          	add	s10,s10,s5
   10a10:	00fcb023          	sd	a5,0(s9)
   10a14:	015cb423          	sd	s5,8(s9)
   10a18:	11a13823          	sd	s10,272(sp)
   10a1c:	10812423          	sw	s0,264(sp)
   10a20:	00700793          	li	a5,7
   10a24:	3487c4e3          	blt	a5,s0,1156c <_vfprintf_r+0x1158>
   10a28:	010c8c93          	add	s9,s9,16
   10a2c:	07013683          	ld	a3,112(sp)
   10a30:	0014041b          	addw	s0,s0,1
   10a34:	0e010793          	add	a5,sp,224
   10a38:	01a68733          	add	a4,a3,s10
   10a3c:	00fcb023          	sd	a5,0(s9)
   10a40:	00dcb423          	sd	a3,8(s9)
   10a44:	10812423          	sw	s0,264(sp)
   10a48:	0004069b          	sext.w	a3,s0
   10a4c:	10e13823          	sd	a4,272(sp)
   10a50:	00700793          	li	a5,7
   10a54:	010c8413          	add	s0,s9,16
   10a58:	ccd7d8e3          	bge	a5,a3,10728 <_vfprintf_r+0x314>
   10a5c:	00013583          	ld	a1,0(sp)
   10a60:	10010613          	add	a2,sp,256
   10a64:	00098513          	mv	a0,s3
   10a68:	23d0a0ef          	jal	1b4a4 <__sprint_r>
   10a6c:	72051c63          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   10a70:	11013703          	ld	a4,272(sp)
   10a74:	18010413          	add	s0,sp,384
   10a78:	cb1ff06f          	j	10728 <_vfprintf_r+0x314>
   10a7c:	05013503          	ld	a0,80(sp)
   10a80:	189020ef          	jal	13408 <__sinit>
   10a84:	a09ff06f          	j	1048c <_vfprintf_r+0x78>
   10a88:	02013703          	ld	a4,32(sp)
   10a8c:	0c0107a3          	sb	zero,207(sp)
   10a90:	00100c13          	li	s8,1
   10a94:	00072783          	lw	a5,0(a4)
   10a98:	00870713          	add	a4,a4,8
   10a9c:	02e13023          	sd	a4,32(sp)
   10aa0:	10f10c23          	sb	a5,280(sp)
   10aa4:	00100d13          	li	s10,1
   10aa8:	11810b13          	add	s6,sp,280
   10aac:	b95ff06f          	j	10640 <_vfprintf_r+0x22c>
   10ab0:	02013783          	ld	a5,32(sp)
   10ab4:	0c0107a3          	sb	zero,207(sp)
   10ab8:	000a8313          	mv	t1,s5
   10abc:	0007bb03          	ld	s6,0(a5)
   10ac0:	00878a93          	add	s5,a5,8
   10ac4:	5a0b0ae3          	beqz	s6,11878 <_vfprintf_r+0x1464>
   10ac8:	fff00713          	li	a4,-1
   10acc:	00e31463          	bne	t1,a4,10ad4 <_vfprintf_r+0x6c0>
   10ad0:	1300106f          	j	11c00 <_vfprintf_r+0x17ec>
   10ad4:	00030613          	mv	a2,t1
   10ad8:	00000593          	li	a1,0
   10adc:	000b0513          	mv	a0,s6
   10ae0:	02613023          	sd	t1,32(sp)
   10ae4:	009060ef          	jal	172ec <memchr>
   10ae8:	00a13c23          	sd	a0,24(sp)
   10aec:	02013303          	ld	t1,32(sp)
   10af0:	00051463          	bnez	a0,10af8 <_vfprintf_r+0x6e4>
   10af4:	3310106f          	j	12624 <_vfprintf_r+0x2210>
   10af8:	01813783          	ld	a5,24(sp)
   10afc:	41678d3b          	subw	s10,a5,s6
   10b00:	0cf14703          	lbu	a4,207(sp)
   10b04:	fffd4813          	not	a6,s10
   10b08:	43f85813          	sra	a6,a6,0x3f
   10b0c:	03513023          	sd	s5,32(sp)
   10b10:	00013c23          	sd	zero,24(sp)
   10b14:	04013423          	sd	zero,72(sp)
   10b18:	04013023          	sd	zero,64(sp)
   10b1c:	02013823          	sd	zero,48(sp)
   10b20:	01a87c33          	and	s8,a6,s10
   10b24:	00000313          	li	t1,0
   10b28:	b20706e3          	beqz	a4,10654 <_vfprintf_r+0x240>
   10b2c:	001c0c1b          	addw	s8,s8,1
   10b30:	b25ff06f          	j	10654 <_vfprintf_r+0x240>
   10b34:	02013783          	ld	a5,32(sp)
   10b38:	0007aa03          	lw	s4,0(a5)
   10b3c:	00878793          	add	a5,a5,8
   10b40:	3a0a52e3          	bgez	s4,116e4 <_vfprintf_r+0x12d0>
   10b44:	41400a3b          	negw	s4,s4
   10b48:	02f13023          	sd	a5,32(sp)
   10b4c:	00496913          	or	s2,s2,4
   10b50:	0004ce03          	lbu	t3,0(s1)
   10b54:	0009091b          	sext.w	s2,s2
   10b58:	a69ff06f          	j	105c0 <_vfprintf_r+0x1ac>
   10b5c:	02b00793          	li	a5,43
   10b60:	0004ce03          	lbu	t3,0(s1)
   10b64:	0cf107a3          	sb	a5,207(sp)
   10b68:	a59ff06f          	j	105c0 <_vfprintf_r+0x1ac>
   10b6c:	08096913          	or	s2,s2,128
   10b70:	0004ce03          	lbu	t3,0(s1)
   10b74:	0009091b          	sext.w	s2,s2
   10b78:	a49ff06f          	j	105c0 <_vfprintf_r+0x1ac>
   10b7c:	0004cc83          	lbu	s9,0(s1)
   10b80:	02a00693          	li	a3,42
   10b84:	00148793          	add	a5,s1,1
   10b88:	00dc9463          	bne	s9,a3,10b90 <_vfprintf_r+0x77c>
   10b8c:	6610106f          	j	129ec <_vfprintf_r+0x25d8>
   10b90:	fd0c871b          	addw	a4,s9,-48
   10b94:	00900613          	li	a2,9
   10b98:	00078493          	mv	s1,a5
   10b9c:	00000a93          	li	s5,0
   10ba0:	00900693          	li	a3,9
   10ba4:	a2e662e3          	bltu	a2,a4,105c8 <_vfprintf_r+0x1b4>
   10ba8:	0004cc83          	lbu	s9,0(s1)
   10bac:	002a979b          	sllw	a5,s5,0x2
   10bb0:	0157833b          	addw	t1,a5,s5
   10bb4:	0013131b          	sllw	t1,t1,0x1
   10bb8:	00e30abb          	addw	s5,t1,a4
   10bbc:	fd0c871b          	addw	a4,s9,-48
   10bc0:	00148493          	add	s1,s1,1
   10bc4:	fee6f2e3          	bgeu	a3,a4,10ba8 <_vfprintf_r+0x794>
   10bc8:	a01ff06f          	j	105c8 <_vfprintf_r+0x1b4>
   10bcc:	00098513          	mv	a0,s3
   10bd0:	359050ef          	jal	16728 <_localeconv_r>
   10bd4:	00853783          	ld	a5,8(a0)
   10bd8:	00078513          	mv	a0,a5
   10bdc:	08f13423          	sd	a5,136(sp)
   10be0:	090080ef          	jal	18c70 <strlen>
   10be4:	00050793          	mv	a5,a0
   10be8:	00098513          	mv	a0,s3
   10bec:	00078c13          	mv	s8,a5
   10bf0:	08f13023          	sd	a5,128(sp)
   10bf4:	335050ef          	jal	16728 <_localeconv_r>
   10bf8:	01053703          	ld	a4,16(a0)
   10bfc:	0004ce03          	lbu	t3,0(s1)
   10c00:	06e13c23          	sd	a4,120(sp)
   10c04:	9a0c0ee3          	beqz	s8,105c0 <_vfprintf_r+0x1ac>
   10c08:	9a070ce3          	beqz	a4,105c0 <_vfprintf_r+0x1ac>
   10c0c:	00074783          	lbu	a5,0(a4)
   10c10:	9a0788e3          	beqz	a5,105c0 <_vfprintf_r+0x1ac>
   10c14:	40096913          	or	s2,s2,1024
   10c18:	0009091b          	sext.w	s2,s2
   10c1c:	9a5ff06f          	j	105c0 <_vfprintf_r+0x1ac>
   10c20:	00196913          	or	s2,s2,1
   10c24:	0004ce03          	lbu	t3,0(s1)
   10c28:	0009091b          	sext.w	s2,s2
   10c2c:	995ff06f          	j	105c0 <_vfprintf_r+0x1ac>
   10c30:	0cf14783          	lbu	a5,207(sp)
   10c34:	0004ce03          	lbu	t3,0(s1)
   10c38:	980794e3          	bnez	a5,105c0 <_vfprintf_r+0x1ac>
   10c3c:	02000793          	li	a5,32
   10c40:	0cf107a3          	sb	a5,207(sp)
   10c44:	97dff06f          	j	105c0 <_vfprintf_r+0x1ac>
   10c48:	01096d93          	or	s11,s2,16
   10c4c:	000a8313          	mv	t1,s5
   10c50:	000d8d9b          	sext.w	s11,s11
   10c54:	02013683          	ld	a3,32(sp)
   10c58:	020df793          	and	a5,s11,32
   10c5c:	00868713          	add	a4,a3,8
   10c60:	220788e3          	beqz	a5,11690 <_vfprintf_r+0x127c>
   10c64:	0006bd03          	ld	s10,0(a3)
   10c68:	00100793          	li	a5,1
   10c6c:	02e13023          	sd	a4,32(sp)
   10c70:	00000713          	li	a4,0
   10c74:	0ce107a3          	sb	a4,207(sp)
   10c78:	fff00713          	li	a4,-1
   10c7c:	2ae30463          	beq	t1,a4,10f24 <_vfprintf_r+0xb10>
   10c80:	f7fdf913          	and	s2,s11,-129
   10c84:	0009091b          	sext.w	s2,s2
   10c88:	280d1c63          	bnez	s10,10f20 <_vfprintf_r+0xb0c>
   10c8c:	2e031a63          	bnez	t1,10f80 <_vfprintf_r+0xb6c>
   10c90:	220796e3          	bnez	a5,116bc <_vfprintf_r+0x12a8>
   10c94:	001dfd13          	and	s10,s11,1
   10c98:	17c10b13          	add	s6,sp,380
   10c9c:	240d1ae3          	bnez	s10,116f0 <_vfprintf_r+0x12dc>
   10ca0:	0cf14703          	lbu	a4,207(sp)
   10ca4:	000d0813          	mv	a6,s10
   10ca8:	006d5463          	bge	s10,t1,10cb0 <_vfprintf_r+0x89c>
   10cac:	00030813          	mv	a6,t1
   10cb0:	00013c23          	sd	zero,24(sp)
   10cb4:	04013423          	sd	zero,72(sp)
   10cb8:	04013023          	sd	zero,64(sp)
   10cbc:	02013823          	sd	zero,48(sp)
   10cc0:	00080c1b          	sext.w	s8,a6
   10cc4:	e60714e3          	bnez	a4,10b2c <_vfprintf_r+0x718>
   10cc8:	98dff06f          	j	10654 <_vfprintf_r+0x240>
   10ccc:	00896913          	or	s2,s2,8
   10cd0:	0004ce03          	lbu	t3,0(s1)
   10cd4:	0009091b          	sext.w	s2,s2
   10cd8:	8e9ff06f          	j	105c0 <_vfprintf_r+0x1ac>
   10cdc:	01096913          	or	s2,s2,16
   10ce0:	000a8313          	mv	t1,s5
   10ce4:	0009091b          	sext.w	s2,s2
   10ce8:	02013683          	ld	a3,32(sp)
   10cec:	02097793          	and	a5,s2,32
   10cf0:	00868713          	add	a4,a3,8
   10cf4:	12078ce3          	beqz	a5,1162c <_vfprintf_r+0x1218>
   10cf8:	0006b783          	ld	a5,0(a3)
   10cfc:	00078d13          	mv	s10,a5
   10d00:	1407cae3          	bltz	a5,11654 <_vfprintf_r+0x1240>
   10d04:	fff00793          	li	a5,-1
   10d08:	5af30463          	beq	t1,a5,112b0 <_vfprintf_r+0xe9c>
   10d0c:	f7f97d93          	and	s11,s2,-129
   10d10:	02e13023          	sd	a4,32(sp)
   10d14:	000d8d9b          	sext.w	s11,s11
   10d18:	5a0d1063          	bnez	s10,112b8 <_vfprintf_r+0xea4>
   10d1c:	5a031263          	bnez	t1,112c0 <_vfprintf_r+0xeac>
   10d20:	000d8913          	mv	s2,s11
   10d24:	17c10b13          	add	s6,sp,380
   10d28:	f79ff06f          	j	10ca0 <_vfprintf_r+0x88c>
   10d2c:	01096913          	or	s2,s2,16
   10d30:	000a8313          	mv	t1,s5
   10d34:	0009091b          	sext.w	s2,s2
   10d38:	02013683          	ld	a3,32(sp)
   10d3c:	02097793          	and	a5,s2,32
   10d40:	00868713          	add	a4,a3,8
   10d44:	120784e3          	beqz	a5,1166c <_vfprintf_r+0x1258>
   10d48:	0006bd03          	ld	s10,0(a3)
   10d4c:	bff97d93          	and	s11,s2,-1025
   10d50:	000d8d9b          	sext.w	s11,s11
   10d54:	02e13023          	sd	a4,32(sp)
   10d58:	00000793          	li	a5,0
   10d5c:	f15ff06f          	j	10c70 <_vfprintf_r+0x85c>
   10d60:	02096913          	or	s2,s2,32
   10d64:	0004ce03          	lbu	t3,0(s1)
   10d68:	0009091b          	sext.w	s2,s2
   10d6c:	855ff06f          	j	105c0 <_vfprintf_r+0x1ac>
   10d70:	02013703          	ld	a4,32(sp)
   10d74:	02097793          	and	a5,s2,32
   10d78:	00073703          	ld	a4,0(a4)
   10d7c:	180782e3          	beqz	a5,11700 <_vfprintf_r+0x12ec>
   10d80:	01013783          	ld	a5,16(sp)
   10d84:	00f73023          	sd	a5,0(a4)
   10d88:	02013783          	ld	a5,32(sp)
   10d8c:	00048b13          	mv	s6,s1
   10d90:	00878793          	add	a5,a5,8
   10d94:	02f13023          	sd	a5,32(sp)
   10d98:	9ddff06f          	j	10774 <_vfprintf_r+0x360>
   10d9c:	0004ce03          	lbu	t3,0(s1)
   10da0:	06c00793          	li	a5,108
   10da4:	28fe02e3          	beq	t3,a5,11828 <_vfprintf_r+0x1414>
   10da8:	01096913          	or	s2,s2,16
   10dac:	0009091b          	sext.w	s2,s2
   10db0:	811ff06f          	j	105c0 <_vfprintf_r+0x1ac>
   10db4:	0004ce03          	lbu	t3,0(s1)
   10db8:	06800793          	li	a5,104
   10dbc:	24fe0ce3          	beq	t3,a5,11814 <_vfprintf_r+0x1400>
   10dc0:	04096913          	or	s2,s2,64
   10dc4:	0009091b          	sext.w	s2,s2
   10dc8:	ff8ff06f          	j	105c0 <_vfprintf_r+0x1ac>
   10dcc:	02013703          	ld	a4,32(sp)
   10dd0:	ffff87b7          	lui	a5,0xffff8
   10dd4:	8307c793          	xor	a5,a5,-2000
   10dd8:	0cf11823          	sh	a5,208(sp)
   10ddc:	00870793          	add	a5,a4,8
   10de0:	02f13023          	sd	a5,32(sp)
   10de4:	000227b7          	lui	a5,0x22
   10de8:	d1078793          	add	a5,a5,-752 # 21d10 <__clzdi2+0xb0>
   10dec:	00296d93          	or	s11,s2,2
   10df0:	06f13423          	sd	a5,104(sp)
   10df4:	00073d03          	ld	s10,0(a4)
   10df8:	000a8313          	mv	t1,s5
   10dfc:	000d8d9b          	sext.w	s11,s11
   10e00:	00200793          	li	a5,2
   10e04:	07800c93          	li	s9,120
   10e08:	e69ff06f          	j	10c70 <_vfprintf_r+0x85c>
   10e0c:	06500693          	li	a3,101
   10e10:	b796d6e3          	bge	a3,s9,1097c <_vfprintf_r+0x568>
   10e14:	0f013503          	ld	a0,240(sp)
   10e18:	0f813583          	ld	a1,248(sp)
   10e1c:	00000613          	li	a2,0
   10e20:	00000693          	li	a3,0
   10e24:	6bc0f0ef          	jal	204e0 <__eqtf2>
   10e28:	58051463          	bnez	a0,113b0 <_vfprintf_r+0xf9c>
   10e2c:	10812783          	lw	a5,264(sp)
   10e30:	000226b7          	lui	a3,0x22
   10e34:	d3068693          	add	a3,a3,-720 # 21d30 <__clzdi2+0xd0>
   10e38:	0017879b          	addw	a5,a5,1
   10e3c:	00d43023          	sd	a3,0(s0)
   10e40:	001d8d93          	add	s11,s11,1
   10e44:	00100693          	li	a3,1
   10e48:	00d43423          	sd	a3,8(s0)
   10e4c:	10f12423          	sw	a5,264(sp)
   10e50:	0007869b          	sext.w	a3,a5
   10e54:	11b13823          	sd	s11,272(sp)
   10e58:	00700793          	li	a5,7
   10e5c:	01040413          	add	s0,s0,16
   10e60:	48d7cee3          	blt	a5,a3,11afc <_vfprintf_r+0x16e8>
   10e64:	0d812783          	lw	a5,216(sp)
   10e68:	03813703          	ld	a4,56(sp)
   10e6c:	04e7dee3          	bge	a5,a4,116c8 <_vfprintf_r+0x12b4>
   10e70:	05813683          	ld	a3,88(sp)
   10e74:	10812783          	lw	a5,264(sp)
   10e78:	06013603          	ld	a2,96(sp)
   10e7c:	01b68733          	add	a4,a3,s11
   10e80:	0017879b          	addw	a5,a5,1
   10e84:	00d43423          	sd	a3,8(s0)
   10e88:	00c43023          	sd	a2,0(s0)
   10e8c:	0007869b          	sext.w	a3,a5
   10e90:	10f12423          	sw	a5,264(sp)
   10e94:	10e13823          	sd	a4,272(sp)
   10e98:	00700793          	li	a5,7
   10e9c:	01040413          	add	s0,s0,16
   10ea0:	1ad7cce3          	blt	a5,a3,11858 <_vfprintf_r+0x1444>
   10ea4:	03813783          	ld	a5,56(sp)
   10ea8:	fff78c9b          	addw	s9,a5,-1
   10eac:	87905ee3          	blez	s9,10728 <_vfprintf_r+0x314>
   10eb0:	00022f37          	lui	t5,0x22
   10eb4:	01000693          	li	a3,16
   10eb8:	10812783          	lw	a5,264(sp)
   10ebc:	f38f0d93          	add	s11,t5,-200 # 21f38 <zeroes.0>
   10ec0:	4596dee3          	bge	a3,s9,11b1c <_vfprintf_r+0x1708>
   10ec4:	00013b03          	ld	s6,0(sp)
   10ec8:	01000d13          	li	s10,16
   10ecc:	00700a93          	li	s5,7
   10ed0:	00c0006f          	j	10edc <_vfprintf_r+0xac8>
   10ed4:	ff0c8c9b          	addw	s9,s9,-16
   10ed8:	459d52e3          	bge	s10,s9,11b1c <_vfprintf_r+0x1708>
   10edc:	0017879b          	addw	a5,a5,1
   10ee0:	01070713          	add	a4,a4,16
   10ee4:	01b43023          	sd	s11,0(s0)
   10ee8:	01a43423          	sd	s10,8(s0)
   10eec:	10e13823          	sd	a4,272(sp)
   10ef0:	10f12423          	sw	a5,264(sp)
   10ef4:	01040413          	add	s0,s0,16
   10ef8:	fcfadee3          	bge	s5,a5,10ed4 <_vfprintf_r+0xac0>
   10efc:	10010613          	add	a2,sp,256
   10f00:	000b0593          	mv	a1,s6
   10f04:	00098513          	mv	a0,s3
   10f08:	59c0a0ef          	jal	1b4a4 <__sprint_r>
   10f0c:	28051c63          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   10f10:	11013703          	ld	a4,272(sp)
   10f14:	10812783          	lw	a5,264(sp)
   10f18:	18010413          	add	s0,sp,384
   10f1c:	fb9ff06f          	j	10ed4 <_vfprintf_r+0xac0>
   10f20:	00090d93          	mv	s11,s2
   10f24:	00100713          	li	a4,1
   10f28:	38e78863          	beq	a5,a4,112b8 <_vfprintf_r+0xea4>
   10f2c:	00200713          	li	a4,2
   10f30:	06e78463          	beq	a5,a4,10f98 <_vfprintf_r+0xb84>
   10f34:	17c10a93          	add	s5,sp,380
   10f38:	000a8b13          	mv	s6,s5
   10f3c:	007d7713          	and	a4,s10,7
   10f40:	03070713          	add	a4,a4,48
   10f44:	feeb0fa3          	sb	a4,-1(s6)
   10f48:	003d5d13          	srl	s10,s10,0x3
   10f4c:	000b0613          	mv	a2,s6
   10f50:	fffb0b13          	add	s6,s6,-1
   10f54:	fe0d14e3          	bnez	s10,10f3c <_vfprintf_r+0xb28>
   10f58:	001df593          	and	a1,s11,1
   10f5c:	06058263          	beqz	a1,10fc0 <_vfprintf_r+0xbac>
   10f60:	03000593          	li	a1,48
   10f64:	04b70e63          	beq	a4,a1,10fc0 <_vfprintf_r+0xbac>
   10f68:	ffe60613          	add	a2,a2,-2
   10f6c:	febb0fa3          	sb	a1,-1(s6)
   10f70:	40ca8d3b          	subw	s10,s5,a2
   10f74:	000d8913          	mv	s2,s11
   10f78:	00060b13          	mv	s6,a2
   10f7c:	d25ff06f          	j	10ca0 <_vfprintf_r+0x88c>
   10f80:	00100713          	li	a4,1
   10f84:	00e79463          	bne	a5,a4,10f8c <_vfprintf_r+0xb78>
   10f88:	7040106f          	j	1268c <_vfprintf_r+0x2278>
   10f8c:	00200713          	li	a4,2
   10f90:	00090d93          	mv	s11,s2
   10f94:	fae790e3          	bne	a5,a4,10f34 <_vfprintf_r+0xb20>
   10f98:	06813703          	ld	a4,104(sp)
   10f9c:	17c10a93          	add	s5,sp,380
   10fa0:	000a8b13          	mv	s6,s5
   10fa4:	00fd7793          	and	a5,s10,15
   10fa8:	00f707b3          	add	a5,a4,a5
   10fac:	0007c783          	lbu	a5,0(a5)
   10fb0:	004d5d13          	srl	s10,s10,0x4
   10fb4:	fffb0b13          	add	s6,s6,-1
   10fb8:	00fb0023          	sb	a5,0(s6)
   10fbc:	fe0d14e3          	bnez	s10,10fa4 <_vfprintf_r+0xb90>
   10fc0:	416a8d3b          	subw	s10,s5,s6
   10fc4:	000d8913          	mv	s2,s11
   10fc8:	cd9ff06f          	j	10ca0 <_vfprintf_r+0x88c>
   10fcc:	418a0abb          	subw	s5,s4,s8
   10fd0:	f3505063          	blez	s5,106f0 <_vfprintf_r+0x2dc>
   10fd4:	00022f37          	lui	t5,0x22
   10fd8:	01000593          	li	a1,16
   10fdc:	000d8713          	mv	a4,s11
   10fe0:	10812603          	lw	a2,264(sp)
   10fe4:	f38f0d93          	add	s11,t5,-200 # 21f38 <zeroes.0>
   10fe8:	0955de63          	bge	a1,s5,11084 <_vfprintf_r+0xc70>
   10fec:	08913823          	sd	s1,144(sp)
   10ff0:	01000f93          	li	t6,16
   10ff4:	000a8493          	mv	s1,s5
   10ff8:	00700b93          	li	s7,7
   10ffc:	000a0a93          	mv	s5,s4
   11000:	00090a13          	mv	s4,s2
   11004:	000d8913          	mv	s2,s11
   11008:	000b0d93          	mv	s11,s6
   1100c:	00030b13          	mv	s6,t1
   11010:	00c0006f          	j	1101c <_vfprintf_r+0xc08>
   11014:	ff04849b          	addw	s1,s1,-16
   11018:	049fd863          	bge	t6,s1,11068 <_vfprintf_r+0xc54>
   1101c:	0016061b          	addw	a2,a2,1
   11020:	01070713          	add	a4,a4,16
   11024:	01243023          	sd	s2,0(s0)
   11028:	01f43423          	sd	t6,8(s0)
   1102c:	10e13823          	sd	a4,272(sp)
   11030:	10c12423          	sw	a2,264(sp)
   11034:	01040413          	add	s0,s0,16
   11038:	fccbdee3          	bge	s7,a2,11014 <_vfprintf_r+0xc00>
   1103c:	00013583          	ld	a1,0(sp)
   11040:	10010613          	add	a2,sp,256
   11044:	00098513          	mv	a0,s3
   11048:	45c0a0ef          	jal	1b4a4 <__sprint_r>
   1104c:	14051c63          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11050:	01000f93          	li	t6,16
   11054:	ff04849b          	addw	s1,s1,-16
   11058:	11013703          	ld	a4,272(sp)
   1105c:	10812603          	lw	a2,264(sp)
   11060:	18010413          	add	s0,sp,384
   11064:	fa9fcce3          	blt	t6,s1,1101c <_vfprintf_r+0xc08>
   11068:	000b0313          	mv	t1,s6
   1106c:	000d8b13          	mv	s6,s11
   11070:	00090d93          	mv	s11,s2
   11074:	000a0913          	mv	s2,s4
   11078:	000a8a13          	mv	s4,s5
   1107c:	00048a93          	mv	s5,s1
   11080:	09013483          	ld	s1,144(sp)
   11084:	0016059b          	addw	a1,a2,1
   11088:	00ea8733          	add	a4,s5,a4
   1108c:	01b43023          	sd	s11,0(s0)
   11090:	01543423          	sd	s5,8(s0)
   11094:	10e13823          	sd	a4,272(sp)
   11098:	10b12423          	sw	a1,264(sp)
   1109c:	00700613          	li	a2,7
   110a0:	6eb64463          	blt	a2,a1,11788 <_vfprintf_r+0x1374>
   110a4:	41a30bbb          	subw	s7,t1,s10
   110a8:	01040413          	add	s0,s0,16
   110ac:	00070d93          	mv	s11,a4
   110b0:	e5705463          	blez	s7,106f8 <_vfprintf_r+0x2e4>
   110b4:	00022f37          	lui	t5,0x22
   110b8:	01000593          	li	a1,16
   110bc:	000d8713          	mv	a4,s11
   110c0:	10812603          	lw	a2,264(sp)
   110c4:	f38f0d93          	add	s11,t5,-200 # 21f38 <zeroes.0>
   110c8:	0975de63          	bge	a1,s7,11164 <_vfprintf_r+0xd50>
   110cc:	000b0793          	mv	a5,s6
   110d0:	00813d83          	ld	s11,8(sp)
   110d4:	000a0b13          	mv	s6,s4
   110d8:	01000893          	li	a7,16
   110dc:	00090a13          	mv	s4,s2
   110e0:	00700a93          	li	s5,7
   110e4:	00048913          	mv	s2,s1
   110e8:	000b8493          	mv	s1,s7
   110ec:	00078b93          	mv	s7,a5
   110f0:	00c0006f          	j	110fc <_vfprintf_r+0xce8>
   110f4:	ff04849b          	addw	s1,s1,-16
   110f8:	0498da63          	bge	a7,s1,1114c <_vfprintf_r+0xd38>
   110fc:	00813683          	ld	a3,8(sp)
   11100:	0016061b          	addw	a2,a2,1
   11104:	01070713          	add	a4,a4,16
   11108:	00d43023          	sd	a3,0(s0)
   1110c:	01143423          	sd	a7,8(s0)
   11110:	10e13823          	sd	a4,272(sp)
   11114:	10c12423          	sw	a2,264(sp)
   11118:	01040413          	add	s0,s0,16
   1111c:	fccadce3          	bge	s5,a2,110f4 <_vfprintf_r+0xce0>
   11120:	00013583          	ld	a1,0(sp)
   11124:	10010613          	add	a2,sp,256
   11128:	00098513          	mv	a0,s3
   1112c:	3780a0ef          	jal	1b4a4 <__sprint_r>
   11130:	06051a63          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11134:	01000893          	li	a7,16
   11138:	ff04849b          	addw	s1,s1,-16
   1113c:	11013703          	ld	a4,272(sp)
   11140:	10812603          	lw	a2,264(sp)
   11144:	18010413          	add	s0,sp,384
   11148:	fa98cae3          	blt	a7,s1,110fc <_vfprintf_r+0xce8>
   1114c:	000b8793          	mv	a5,s7
   11150:	00048b93          	mv	s7,s1
   11154:	00090493          	mv	s1,s2
   11158:	000a0913          	mv	s2,s4
   1115c:	000b0a13          	mv	s4,s6
   11160:	00078b13          	mv	s6,a5
   11164:	0016059b          	addw	a1,a2,1
   11168:	00eb8733          	add	a4,s7,a4
   1116c:	01b43023          	sd	s11,0(s0)
   11170:	01743423          	sd	s7,8(s0)
   11174:	10e13823          	sd	a4,272(sp)
   11178:	10b12423          	sw	a1,264(sp)
   1117c:	00700613          	li	a2,7
   11180:	48b64663          	blt	a2,a1,1160c <_vfprintf_r+0x11f8>
   11184:	01040413          	add	s0,s0,16
   11188:	00070d93          	mv	s11,a4
   1118c:	d6cff06f          	j	106f8 <_vfprintf_r+0x2e4>
   11190:	00013583          	ld	a1,0(sp)
   11194:	10010613          	add	a2,sp,256
   11198:	00098513          	mv	a0,s3
   1119c:	3080a0ef          	jal	1b4a4 <__sprint_r>
   111a0:	da050a63          	beqz	a0,10754 <_vfprintf_r+0x340>
   111a4:	01813583          	ld	a1,24(sp)
   111a8:	de058063          	beqz	a1,10788 <_vfprintf_r+0x374>
   111ac:	05013503          	ld	a0,80(sp)
   111b0:	430020ef          	jal	135e0 <_free_r>
   111b4:	dd4ff06f          	j	10788 <_vfprintf_r+0x374>
   111b8:	000228b7          	lui	a7,0x22
   111bc:	01000513          	li	a0,16
   111c0:	11013583          	ld	a1,272(sp)
   111c4:	10812603          	lw	a2,264(sp)
   111c8:	f4888d93          	add	s11,a7,-184 # 21f48 <blanks.1>
   111cc:	08e55c63          	bge	a0,a4,11264 <_vfprintf_r+0xe50>
   111d0:	08913823          	sd	s1,144(sp)
   111d4:	00040793          	mv	a5,s0
   111d8:	000d8493          	mv	s1,s11
   111dc:	01000f13          	li	t5,16
   111e0:	000b0d93          	mv	s11,s6
   111e4:	00700393          	li	t2,7
   111e8:	00070413          	mv	s0,a4
   111ec:	00030b13          	mv	s6,t1
   111f0:	00c0006f          	j	111fc <_vfprintf_r+0xde8>
   111f4:	ff04041b          	addw	s0,s0,-16
   111f8:	048f5a63          	bge	t5,s0,1124c <_vfprintf_r+0xe38>
   111fc:	0016061b          	addw	a2,a2,1
   11200:	01058593          	add	a1,a1,16
   11204:	0097b023          	sd	s1,0(a5)
   11208:	01e7b423          	sd	t5,8(a5)
   1120c:	10b13823          	sd	a1,272(sp)
   11210:	10c12423          	sw	a2,264(sp)
   11214:	01078793          	add	a5,a5,16
   11218:	fcc3dee3          	bge	t2,a2,111f4 <_vfprintf_r+0xde0>
   1121c:	00013583          	ld	a1,0(sp)
   11220:	10010613          	add	a2,sp,256
   11224:	00098513          	mv	a0,s3
   11228:	27c0a0ef          	jal	1b4a4 <__sprint_r>
   1122c:	f6051ce3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11230:	01000f13          	li	t5,16
   11234:	ff04041b          	addw	s0,s0,-16
   11238:	11013583          	ld	a1,272(sp)
   1123c:	10812603          	lw	a2,264(sp)
   11240:	18010793          	add	a5,sp,384
   11244:	00700393          	li	t2,7
   11248:	fa8f4ae3          	blt	t5,s0,111fc <_vfprintf_r+0xde8>
   1124c:	000b0313          	mv	t1,s6
   11250:	000d8b13          	mv	s6,s11
   11254:	00048d93          	mv	s11,s1
   11258:	09013483          	ld	s1,144(sp)
   1125c:	00040713          	mv	a4,s0
   11260:	00078413          	mv	s0,a5
   11264:	00b705b3          	add	a1,a4,a1
   11268:	0016061b          	addw	a2,a2,1
   1126c:	00e43423          	sd	a4,8(s0)
   11270:	01b43023          	sd	s11,0(s0)
   11274:	10b13823          	sd	a1,272(sp)
   11278:	10c12423          	sw	a2,264(sp)
   1127c:	0006059b          	sext.w	a1,a2
   11280:	00700713          	li	a4,7
   11284:	01040413          	add	s0,s0,16
   11288:	beb75463          	bge	a4,a1,10670 <_vfprintf_r+0x25c>
   1128c:	00013583          	ld	a1,0(sp)
   11290:	10010613          	add	a2,sp,256
   11294:	00098513          	mv	a0,s3
   11298:	08613823          	sd	t1,144(sp)
   1129c:	2080a0ef          	jal	1b4a4 <__sprint_r>
   112a0:	f00512e3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   112a4:	09013303          	ld	t1,144(sp)
   112a8:	18010413          	add	s0,sp,384
   112ac:	bc4ff06f          	j	10670 <_vfprintf_r+0x25c>
   112b0:	00090d93          	mv	s11,s2
   112b4:	02e13023          	sd	a4,32(sp)
   112b8:	00900793          	li	a5,9
   112bc:	6ba7ea63          	bltu	a5,s10,11970 <_vfprintf_r+0x155c>
   112c0:	030d0d1b          	addw	s10,s10,48
   112c4:	17a10da3          	sb	s10,379(sp)
   112c8:	000d8913          	mv	s2,s11
   112cc:	00100d13          	li	s10,1
   112d0:	17b10b13          	add	s6,sp,379
   112d4:	9cdff06f          	j	10ca0 <_vfprintf_r+0x88c>
   112d8:	00013583          	ld	a1,0(sp)
   112dc:	10010613          	add	a2,sp,256
   112e0:	00098513          	mv	a0,s3
   112e4:	08613823          	sd	t1,144(sp)
   112e8:	1bc0a0ef          	jal	1b4a4 <__sprint_r>
   112ec:	ea051ce3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   112f0:	11013d83          	ld	s11,272(sp)
   112f4:	09013303          	ld	t1,144(sp)
   112f8:	18010413          	add	s0,sp,384
   112fc:	becff06f          	j	106e8 <_vfprintf_r+0x2d4>
   11300:	000228b7          	lui	a7,0x22
   11304:	01000693          	li	a3,16
   11308:	10812783          	lw	a5,264(sp)
   1130c:	f4888d93          	add	s11,a7,-184 # 21f48 <blanks.1>
   11310:	0726d263          	bge	a3,s2,11374 <_vfprintf_r+0xf60>
   11314:	00013a83          	ld	s5,0(sp)
   11318:	01000c93          	li	s9,16
   1131c:	00700d13          	li	s10,7
   11320:	00c0006f          	j	1132c <_vfprintf_r+0xf18>
   11324:	ff09091b          	addw	s2,s2,-16
   11328:	052cd663          	bge	s9,s2,11374 <_vfprintf_r+0xf60>
   1132c:	0017879b          	addw	a5,a5,1
   11330:	01070713          	add	a4,a4,16
   11334:	01b43023          	sd	s11,0(s0)
   11338:	01943423          	sd	s9,8(s0)
   1133c:	10e13823          	sd	a4,272(sp)
   11340:	10f12423          	sw	a5,264(sp)
   11344:	01040413          	add	s0,s0,16
   11348:	fcfd5ee3          	bge	s10,a5,11324 <_vfprintf_r+0xf10>
   1134c:	10010613          	add	a2,sp,256
   11350:	000a8593          	mv	a1,s5
   11354:	00098513          	mv	a0,s3
   11358:	14c0a0ef          	jal	1b4a4 <__sprint_r>
   1135c:	e40514e3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11360:	ff09091b          	addw	s2,s2,-16
   11364:	11013703          	ld	a4,272(sp)
   11368:	10812783          	lw	a5,264(sp)
   1136c:	18010413          	add	s0,sp,384
   11370:	fb2ccee3          	blt	s9,s2,1132c <_vfprintf_r+0xf18>
   11374:	0017869b          	addw	a3,a5,1
   11378:	01270733          	add	a4,a4,s2
   1137c:	01b43023          	sd	s11,0(s0)
   11380:	01243423          	sd	s2,8(s0)
   11384:	10e13823          	sd	a4,272(sp)
   11388:	10d12423          	sw	a3,264(sp)
   1138c:	00700793          	li	a5,7
   11390:	bad7d463          	bge	a5,a3,10738 <_vfprintf_r+0x324>
   11394:	00013583          	ld	a1,0(sp)
   11398:	10010613          	add	a2,sp,256
   1139c:	00098513          	mv	a0,s3
   113a0:	1040a0ef          	jal	1b4a4 <__sprint_r>
   113a4:	e00510e3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   113a8:	11013703          	ld	a4,272(sp)
   113ac:	b8cff06f          	j	10738 <_vfprintf_r+0x324>
   113b0:	0d812603          	lw	a2,216(sp)
   113b4:	6ac05463          	blez	a2,11a5c <_vfprintf_r+0x1648>
   113b8:	03813783          	ld	a5,56(sp)
   113bc:	03013703          	ld	a4,48(sp)
   113c0:	00fb0ab3          	add	s5,s6,a5
   113c4:	00070693          	mv	a3,a4
   113c8:	3ae7c863          	blt	a5,a4,11778 <_vfprintf_r+0x1364>
   113cc:	00068c9b          	sext.w	s9,a3
   113d0:	03905663          	blez	s9,113fc <_vfprintf_r+0xfe8>
   113d4:	10812603          	lw	a2,264(sp)
   113d8:	019d8db3          	add	s11,s11,s9
   113dc:	01643023          	sd	s6,0(s0)
   113e0:	0016059b          	addw	a1,a2,1
   113e4:	01943423          	sd	s9,8(s0)
   113e8:	11b13823          	sd	s11,272(sp)
   113ec:	10b12423          	sw	a1,264(sp)
   113f0:	00700613          	li	a2,7
   113f4:	01040413          	add	s0,s0,16
   113f8:	50b646e3          	blt	a2,a1,12104 <_vfprintf_r+0x1cf0>
   113fc:	fffcc613          	not	a2,s9
   11400:	03013783          	ld	a5,48(sp)
   11404:	43f65613          	sra	a2,a2,0x3f
   11408:	00ccf6b3          	and	a3,s9,a2
   1140c:	40d78cbb          	subw	s9,a5,a3
   11410:	49904663          	bgtz	s9,1189c <_vfprintf_r+0x1488>
   11414:	03013783          	ld	a5,48(sp)
   11418:	40097693          	and	a3,s2,1024
   1141c:	00fb0b33          	add	s6,s6,a5
   11420:	0a069ae3          	bnez	a3,11cd4 <_vfprintf_r+0x18c0>
   11424:	0d812683          	lw	a3,216(sp)
   11428:	03813783          	ld	a5,56(sp)
   1142c:	00f6c663          	blt	a3,a5,11438 <_vfprintf_r+0x1024>
   11430:	00197613          	and	a2,s2,1
   11434:	4e060ce3          	beqz	a2,1212c <_vfprintf_r+0x1d18>
   11438:	10812603          	lw	a2,264(sp)
   1143c:	05813783          	ld	a5,88(sp)
   11440:	06013583          	ld	a1,96(sp)
   11444:	01040413          	add	s0,s0,16
   11448:	01b78733          	add	a4,a5,s11
   1144c:	feb43823          	sd	a1,-16(s0)
   11450:	0016059b          	addw	a1,a2,1
   11454:	fef43c23          	sd	a5,-8(s0)
   11458:	10e13823          	sd	a4,272(sp)
   1145c:	10b12423          	sw	a1,264(sp)
   11460:	00700613          	li	a2,7
   11464:	00b65463          	bge	a2,a1,1146c <_vfprintf_r+0x1058>
   11468:	1380106f          	j	125a0 <_vfprintf_r+0x218c>
   1146c:	03813783          	ld	a5,56(sp)
   11470:	416a8cb3          	sub	s9,s5,s6
   11474:	000c859b          	sext.w	a1,s9
   11478:	40d7863b          	subw	a2,a5,a3
   1147c:	00b65463          	bge	a2,a1,11484 <_vfprintf_r+0x1070>
   11480:	00060c93          	mv	s9,a2
   11484:	000c8c9b          	sext.w	s9,s9
   11488:	03905863          	blez	s9,114b8 <_vfprintf_r+0x10a4>
   1148c:	10812683          	lw	a3,264(sp)
   11490:	01970733          	add	a4,a4,s9
   11494:	01643023          	sd	s6,0(s0)
   11498:	0016869b          	addw	a3,a3,1
   1149c:	01943423          	sd	s9,8(s0)
   114a0:	10e13823          	sd	a4,272(sp)
   114a4:	10d12423          	sw	a3,264(sp)
   114a8:	00700793          	li	a5,7
   114ac:	01040413          	add	s0,s0,16
   114b0:	00d7d463          	bge	a5,a3,114b8 <_vfprintf_r+0x10a4>
   114b4:	19c0106f          	j	12650 <_vfprintf_r+0x223c>
   114b8:	fffcc793          	not	a5,s9
   114bc:	43f7d793          	sra	a5,a5,0x3f
   114c0:	00fcfcb3          	and	s9,s9,a5
   114c4:	41960cbb          	subw	s9,a2,s9
   114c8:	a7905063          	blez	s9,10728 <_vfprintf_r+0x314>
   114cc:	00022f37          	lui	t5,0x22
   114d0:	01000693          	li	a3,16
   114d4:	10812783          	lw	a5,264(sp)
   114d8:	f38f0d93          	add	s11,t5,-200 # 21f38 <zeroes.0>
   114dc:	6596d063          	bge	a3,s9,11b1c <_vfprintf_r+0x1708>
   114e0:	00013b03          	ld	s6,0(sp)
   114e4:	01000d13          	li	s10,16
   114e8:	00700a93          	li	s5,7
   114ec:	00c0006f          	j	114f8 <_vfprintf_r+0x10e4>
   114f0:	ff0c8c9b          	addw	s9,s9,-16
   114f4:	639d5463          	bge	s10,s9,11b1c <_vfprintf_r+0x1708>
   114f8:	0017879b          	addw	a5,a5,1
   114fc:	01070713          	add	a4,a4,16
   11500:	01b43023          	sd	s11,0(s0)
   11504:	01a43423          	sd	s10,8(s0)
   11508:	10e13823          	sd	a4,272(sp)
   1150c:	10f12423          	sw	a5,264(sp)
   11510:	01040413          	add	s0,s0,16
   11514:	fcfadee3          	bge	s5,a5,114f0 <_vfprintf_r+0x10dc>
   11518:	10010613          	add	a2,sp,256
   1151c:	000b0593          	mv	a1,s6
   11520:	00098513          	mv	a0,s3
   11524:	781090ef          	jal	1b4a4 <__sprint_r>
   11528:	c6051ee3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   1152c:	11013703          	ld	a4,272(sp)
   11530:	10812783          	lw	a5,264(sp)
   11534:	18010413          	add	s0,sp,384
   11538:	fb9ff06f          	j	114f0 <_vfprintf_r+0x10dc>
   1153c:	00197613          	and	a2,s2,1
   11540:	c4061663          	bnez	a2,1098c <_vfprintf_r+0x578>
   11544:	10812603          	lw	a2,264(sp)
   11548:	001d8d13          	add	s10,s11,1
   1154c:	01643023          	sd	s6,0(s0)
   11550:	0016079b          	addw	a5,a2,1
   11554:	00d43423          	sd	a3,8(s0)
   11558:	10f12423          	sw	a5,264(sp)
   1155c:	0007841b          	sext.w	s0,a5
   11560:	11a13823          	sd	s10,272(sp)
   11564:	00700793          	li	a5,7
   11568:	cc87d263          	bge	a5,s0,10a2c <_vfprintf_r+0x618>
   1156c:	00013583          	ld	a1,0(sp)
   11570:	10010613          	add	a2,sp,256
   11574:	00098513          	mv	a0,s3
   11578:	72d090ef          	jal	1b4a4 <__sprint_r>
   1157c:	c20514e3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11580:	11013d03          	ld	s10,272(sp)
   11584:	10812403          	lw	s0,264(sp)
   11588:	18010c93          	add	s9,sp,384
   1158c:	ca0ff06f          	j	10a2c <_vfprintf_r+0x618>
   11590:	03813703          	ld	a4,56(sp)
   11594:	00100793          	li	a5,1
   11598:	c8e7da63          	bge	a5,a4,10a2c <_vfprintf_r+0x618>
   1159c:	00022f37          	lui	t5,0x22
   115a0:	01100793          	li	a5,17
   115a4:	f38f0d93          	add	s11,t5,-200 # 21f38 <zeroes.0>
   115a8:	66e7d463          	bge	a5,a4,11c10 <_vfprintf_r+0x17fc>
   115ac:	00013b83          	ld	s7,0(sp)
   115b0:	01000713          	li	a4,16
   115b4:	00700b13          	li	s6,7
   115b8:	00c0006f          	j	115c4 <_vfprintf_r+0x11b0>
   115bc:	ff0a8a9b          	addw	s5,s5,-16
   115c0:	65575863          	bge	a4,s5,11c10 <_vfprintf_r+0x17fc>
   115c4:	0014041b          	addw	s0,s0,1
   115c8:	010d0d13          	add	s10,s10,16
   115cc:	01bcb023          	sd	s11,0(s9)
   115d0:	00ecb423          	sd	a4,8(s9)
   115d4:	11a13823          	sd	s10,272(sp)
   115d8:	10812423          	sw	s0,264(sp)
   115dc:	010c8c93          	add	s9,s9,16
   115e0:	fc8b5ee3          	bge	s6,s0,115bc <_vfprintf_r+0x11a8>
   115e4:	10010613          	add	a2,sp,256
   115e8:	000b8593          	mv	a1,s7
   115ec:	00098513          	mv	a0,s3
   115f0:	6b5090ef          	jal	1b4a4 <__sprint_r>
   115f4:	ba0518e3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   115f8:	11013d03          	ld	s10,272(sp)
   115fc:	10812403          	lw	s0,264(sp)
   11600:	18010c93          	add	s9,sp,384
   11604:	01000713          	li	a4,16
   11608:	fb5ff06f          	j	115bc <_vfprintf_r+0x11a8>
   1160c:	00013583          	ld	a1,0(sp)
   11610:	10010613          	add	a2,sp,256
   11614:	00098513          	mv	a0,s3
   11618:	68d090ef          	jal	1b4a4 <__sprint_r>
   1161c:	b80514e3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11620:	11013d83          	ld	s11,272(sp)
   11624:	18010413          	add	s0,sp,384
   11628:	8d0ff06f          	j	106f8 <_vfprintf_r+0x2e4>
   1162c:	01097793          	and	a5,s2,16
   11630:	12079c63          	bnez	a5,11768 <_vfprintf_r+0x1354>
   11634:	02013683          	ld	a3,32(sp)
   11638:	04097793          	and	a5,s2,64
   1163c:	0006ad03          	lw	s10,0(a3)
   11640:	5e078c63          	beqz	a5,11c38 <_vfprintf_r+0x1824>
   11644:	010d1d1b          	sllw	s10,s10,0x10
   11648:	410d5d1b          	sraw	s10,s10,0x10
   1164c:	000d0793          	mv	a5,s10
   11650:	ea07da63          	bgez	a5,10d04 <_vfprintf_r+0x8f0>
   11654:	02e13023          	sd	a4,32(sp)
   11658:	41a00d33          	neg	s10,s10
   1165c:	00090d93          	mv	s11,s2
   11660:	02d00713          	li	a4,45
   11664:	00100793          	li	a5,1
   11668:	e0cff06f          	j	10c74 <_vfprintf_r+0x860>
   1166c:	01097793          	and	a5,s2,16
   11670:	0e079663          	bnez	a5,1175c <_vfprintf_r+0x1348>
   11674:	02013683          	ld	a3,32(sp)
   11678:	04097793          	and	a5,s2,64
   1167c:	0006ad03          	lw	s10,0(a3)
   11680:	5e078c63          	beqz	a5,11c78 <_vfprintf_r+0x1864>
   11684:	030d1d13          	sll	s10,s10,0x30
   11688:	030d5d13          	srl	s10,s10,0x30
   1168c:	ec0ff06f          	j	10d4c <_vfprintf_r+0x938>
   11690:	010df793          	and	a5,s11,16
   11694:	0a079a63          	bnez	a5,11748 <_vfprintf_r+0x1334>
   11698:	02013683          	ld	a3,32(sp)
   1169c:	040df793          	and	a5,s11,64
   116a0:	0006ad03          	lw	s10,0(a3)
   116a4:	5a078e63          	beqz	a5,11c60 <_vfprintf_r+0x184c>
   116a8:	030d1d13          	sll	s10,s10,0x30
   116ac:	030d5d13          	srl	s10,s10,0x30
   116b0:	02e13023          	sd	a4,32(sp)
   116b4:	00100793          	li	a5,1
   116b8:	db8ff06f          	j	10c70 <_vfprintf_r+0x85c>
   116bc:	00000d13          	li	s10,0
   116c0:	17c10b13          	add	s6,sp,380
   116c4:	ddcff06f          	j	10ca0 <_vfprintf_r+0x88c>
   116c8:	00197793          	and	a5,s2,1
   116cc:	000d8713          	mv	a4,s11
   116d0:	00079463          	bnez	a5,116d8 <_vfprintf_r+0x12c4>
   116d4:	854ff06f          	j	10728 <_vfprintf_r+0x314>
   116d8:	f98ff06f          	j	10e70 <_vfprintf_r+0xa5c>
   116dc:	000a8313          	mv	t1,s5
   116e0:	e08ff06f          	j	10ce8 <_vfprintf_r+0x8d4>
   116e4:	0004ce03          	lbu	t3,0(s1)
   116e8:	02f13023          	sd	a5,32(sp)
   116ec:	ed5fe06f          	j	105c0 <_vfprintf_r+0x1ac>
   116f0:	03000793          	li	a5,48
   116f4:	16f10da3          	sb	a5,379(sp)
   116f8:	17b10b13          	add	s6,sp,379
   116fc:	da4ff06f          	j	10ca0 <_vfprintf_r+0x88c>
   11700:	01097793          	and	a5,s2,16
   11704:	e6079e63          	bnez	a5,10d80 <_vfprintf_r+0x96c>
   11708:	04097793          	and	a5,s2,64
   1170c:	240796e3          	bnez	a5,12158 <_vfprintf_r+0x1d44>
   11710:	20097913          	and	s2,s2,512
   11714:	01013783          	ld	a5,16(sp)
   11718:	00091463          	bnez	s2,11720 <_vfprintf_r+0x130c>
   1171c:	1d40106f          	j	128f0 <_vfprintf_r+0x24dc>
   11720:	00f70023          	sb	a5,0(a4)
   11724:	e64ff06f          	j	10d88 <_vfprintf_r+0x974>
   11728:	02013783          	ld	a5,32(sp)
   1172c:	00f78a93          	add	s5,a5,15
   11730:	ff0afa93          	and	s5,s5,-16
   11734:	010a8793          	add	a5,s5,16
   11738:	000ab703          	ld	a4,0(s5)
   1173c:	008ab583          	ld	a1,8(s5)
   11740:	02f13023          	sd	a5,32(sp)
   11744:	950ff06f          	j	10894 <_vfprintf_r+0x480>
   11748:	02013783          	ld	a5,32(sp)
   1174c:	02e13023          	sd	a4,32(sp)
   11750:	0007bd03          	ld	s10,0(a5)
   11754:	00100793          	li	a5,1
   11758:	d18ff06f          	j	10c70 <_vfprintf_r+0x85c>
   1175c:	02013783          	ld	a5,32(sp)
   11760:	0007bd03          	ld	s10,0(a5)
   11764:	de8ff06f          	j	10d4c <_vfprintf_r+0x938>
   11768:	02013783          	ld	a5,32(sp)
   1176c:	0007b783          	ld	a5,0(a5)
   11770:	00078d13          	mv	s10,a5
   11774:	d8cff06f          	j	10d00 <_vfprintf_r+0x8ec>
   11778:	00078693          	mv	a3,a5
   1177c:	00068c9b          	sext.w	s9,a3
   11780:	c5904ae3          	bgtz	s9,113d4 <_vfprintf_r+0xfc0>
   11784:	c79ff06f          	j	113fc <_vfprintf_r+0xfe8>
   11788:	00013583          	ld	a1,0(sp)
   1178c:	10010613          	add	a2,sp,256
   11790:	00098513          	mv	a0,s3
   11794:	08613823          	sd	t1,144(sp)
   11798:	50d090ef          	jal	1b4a4 <__sprint_r>
   1179c:	a00514e3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   117a0:	11013d83          	ld	s11,272(sp)
   117a4:	09013303          	ld	t1,144(sp)
   117a8:	18010413          	add	s0,sp,384
   117ac:	f45fe06f          	j	106f0 <_vfprintf_r+0x2dc>
   117b0:	000227b7          	lui	a5,0x22
   117b4:	cf878793          	add	a5,a5,-776 # 21cf8 <__clzdi2+0x98>
   117b8:	000a8313          	mv	t1,s5
   117bc:	06f13423          	sd	a5,104(sp)
   117c0:	02013683          	ld	a3,32(sp)
   117c4:	02097793          	and	a5,s2,32
   117c8:	00868713          	add	a4,a3,8
   117cc:	14078463          	beqz	a5,11914 <_vfprintf_r+0x1500>
   117d0:	0006bd03          	ld	s10,0(a3)
   117d4:	00197793          	and	a5,s2,1
   117d8:	00078e63          	beqz	a5,117f4 <_vfprintf_r+0x13e0>
   117dc:	000d0c63          	beqz	s10,117f4 <_vfprintf_r+0x13e0>
   117e0:	00296913          	or	s2,s2,2
   117e4:	03000793          	li	a5,48
   117e8:	0cf10823          	sb	a5,208(sp)
   117ec:	0d9108a3          	sb	s9,209(sp)
   117f0:	0009091b          	sext.w	s2,s2
   117f4:	bff97d93          	and	s11,s2,-1025
   117f8:	000d8d9b          	sext.w	s11,s11
   117fc:	02e13023          	sd	a4,32(sp)
   11800:	00200793          	li	a5,2
   11804:	c6cff06f          	j	10c70 <_vfprintf_r+0x85c>
   11808:	000a8313          	mv	t1,s5
   1180c:	00090d93          	mv	s11,s2
   11810:	c44ff06f          	j	10c54 <_vfprintf_r+0x840>
   11814:	20096913          	or	s2,s2,512
   11818:	0014ce03          	lbu	t3,1(s1)
   1181c:	0009091b          	sext.w	s2,s2
   11820:	00148493          	add	s1,s1,1
   11824:	d9dfe06f          	j	105c0 <_vfprintf_r+0x1ac>
   11828:	02096913          	or	s2,s2,32
   1182c:	0014ce03          	lbu	t3,1(s1)
   11830:	0009091b          	sext.w	s2,s2
   11834:	00148493          	add	s1,s1,1
   11838:	d89fe06f          	j	105c0 <_vfprintf_r+0x1ac>
   1183c:	000a8313          	mv	t1,s5
   11840:	cf8ff06f          	j	10d38 <_vfprintf_r+0x924>
   11844:	000227b7          	lui	a5,0x22
   11848:	d1078793          	add	a5,a5,-752 # 21d10 <__clzdi2+0xb0>
   1184c:	000a8313          	mv	t1,s5
   11850:	06f13423          	sd	a5,104(sp)
   11854:	f6dff06f          	j	117c0 <_vfprintf_r+0x13ac>
   11858:	00013583          	ld	a1,0(sp)
   1185c:	10010613          	add	a2,sp,256
   11860:	00098513          	mv	a0,s3
   11864:	441090ef          	jal	1b4a4 <__sprint_r>
   11868:	92051ee3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   1186c:	11013703          	ld	a4,272(sp)
   11870:	18010413          	add	s0,sp,384
   11874:	e30ff06f          	j	10ea4 <_vfprintf_r+0xa90>
   11878:	00600793          	li	a5,6
   1187c:	00030693          	mv	a3,t1
   11880:	0a67e2e3          	bltu	a5,t1,12124 <_vfprintf_r+0x1d10>
   11884:	00068d1b          	sext.w	s10,a3
   11888:	000227b7          	lui	a5,0x22
   1188c:	000d0c13          	mv	s8,s10
   11890:	03513023          	sd	s5,32(sp)
   11894:	d2878b13          	add	s6,a5,-728 # 21d28 <__clzdi2+0xc8>
   11898:	da9fe06f          	j	10640 <_vfprintf_r+0x22c>
   1189c:	00022f37          	lui	t5,0x22
   118a0:	01000593          	li	a1,16
   118a4:	000d8713          	mv	a4,s11
   118a8:	10812603          	lw	a2,264(sp)
   118ac:	f38f0d93          	add	s11,t5,-200 # 21f38 <zeroes.0>
   118b0:	3f95dc63          	bge	a1,s9,11ca8 <_vfprintf_r+0x1894>
   118b4:	00013b83          	ld	s7,0(sp)
   118b8:	01000893          	li	a7,16
   118bc:	00700d13          	li	s10,7
   118c0:	00c0006f          	j	118cc <_vfprintf_r+0x14b8>
   118c4:	ff0c8c9b          	addw	s9,s9,-16
   118c8:	3f98d063          	bge	a7,s9,11ca8 <_vfprintf_r+0x1894>
   118cc:	0016061b          	addw	a2,a2,1
   118d0:	01070713          	add	a4,a4,16
   118d4:	01b43023          	sd	s11,0(s0)
   118d8:	01143423          	sd	a7,8(s0)
   118dc:	10e13823          	sd	a4,272(sp)
   118e0:	10c12423          	sw	a2,264(sp)
   118e4:	01040413          	add	s0,s0,16
   118e8:	fccd5ee3          	bge	s10,a2,118c4 <_vfprintf_r+0x14b0>
   118ec:	10010613          	add	a2,sp,256
   118f0:	000b8593          	mv	a1,s7
   118f4:	00098513          	mv	a0,s3
   118f8:	3ad090ef          	jal	1b4a4 <__sprint_r>
   118fc:	8a0514e3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11900:	11013703          	ld	a4,272(sp)
   11904:	10812603          	lw	a2,264(sp)
   11908:	18010413          	add	s0,sp,384
   1190c:	01000893          	li	a7,16
   11910:	fb5ff06f          	j	118c4 <_vfprintf_r+0x14b0>
   11914:	01097793          	and	a5,s2,16
   11918:	1c078463          	beqz	a5,11ae0 <_vfprintf_r+0x16cc>
   1191c:	02013783          	ld	a5,32(sp)
   11920:	0007bd03          	ld	s10,0(a5)
   11924:	eb1ff06f          	j	117d4 <_vfprintf_r+0x13c0>
   11928:	00013583          	ld	a1,0(sp)
   1192c:	10010613          	add	a2,sp,256
   11930:	00098513          	mv	a0,s3
   11934:	371090ef          	jal	1b4a4 <__sprint_r>
   11938:	860516e3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   1193c:	11013703          	ld	a4,272(sp)
   11940:	10812683          	lw	a3,264(sp)
   11944:	18010c93          	add	s9,sp,384
   11948:	870ff06f          	j	109b8 <_vfprintf_r+0x5a4>
   1194c:	00013583          	ld	a1,0(sp)
   11950:	10010613          	add	a2,sp,256
   11954:	00098513          	mv	a0,s3
   11958:	34d090ef          	jal	1b4a4 <__sprint_r>
   1195c:	840514e3          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11960:	11013d03          	ld	s10,272(sp)
   11964:	10812403          	lw	s0,264(sp)
   11968:	18010c93          	add	s9,sp,384
   1196c:	878ff06f          	j	109e4 <_vfprintf_r+0x5d0>
   11970:	17c10a93          	add	s5,sp,380
   11974:	00913c23          	sd	s1,24(sp)
   11978:	07813483          	ld	s1,120(sp)
   1197c:	400df913          	and	s2,s11,1024
   11980:	000a8b13          	mv	s6,s5
   11984:	00000793          	li	a5,0
   11988:	04813023          	sd	s0,64(sp)
   1198c:	00098a93          	mv	s5,s3
   11990:	00090413          	mv	s0,s2
   11994:	00900b93          	li	s7,9
   11998:	0ff00c13          	li	s8,255
   1199c:	02613823          	sd	t1,48(sp)
   119a0:	00078913          	mv	s2,a5
   119a4:	000b0993          	mv	s3,s6
   119a8:	00a00593          	li	a1,10
   119ac:	000d0513          	mv	a0,s10
   119b0:	240100ef          	jal	21bf0 <__umoddi3>
   119b4:	0305051b          	addw	a0,a0,48
   119b8:	fea98fa3          	sb	a0,-1(s3)
   119bc:	0019091b          	addw	s2,s2,1
   119c0:	fff98993          	add	s3,s3,-1
   119c4:	00040663          	beqz	s0,119d0 <_vfprintf_r+0x15bc>
   119c8:	0004c703          	lbu	a4,0(s1)
   119cc:	04e90663          	beq	s2,a4,11a18 <_vfprintf_r+0x1604>
   119d0:	00a00593          	li	a1,10
   119d4:	000d0513          	mv	a0,s10
   119d8:	1d0100ef          	jal	21ba8 <__hidden___udivdi3>
   119dc:	01abf663          	bgeu	s7,s10,119e8 <_vfprintf_r+0x15d4>
   119e0:	00050d13          	mv	s10,a0
   119e4:	fc5ff06f          	j	119a8 <_vfprintf_r+0x1594>
   119e8:	000b0793          	mv	a5,s6
   119ec:	00098b13          	mv	s6,s3
   119f0:	000a8993          	mv	s3,s5
   119f4:	00078a93          	mv	s5,a5
   119f8:	03213c23          	sd	s2,56(sp)
   119fc:	06913c23          	sd	s1,120(sp)
   11a00:	03013303          	ld	t1,48(sp)
   11a04:	01813483          	ld	s1,24(sp)
   11a08:	04013403          	ld	s0,64(sp)
   11a0c:	416a8d3b          	subw	s10,s5,s6
   11a10:	000d8913          	mv	s2,s11
   11a14:	a8cff06f          	j	10ca0 <_vfprintf_r+0x88c>
   11a18:	fb870ce3          	beq	a4,s8,119d0 <_vfprintf_r+0x15bc>
   11a1c:	fdabf6e3          	bgeu	s7,s10,119e8 <_vfprintf_r+0x15d4>
   11a20:	08013783          	ld	a5,128(sp)
   11a24:	08813583          	ld	a1,136(sp)
   11a28:	00000913          	li	s2,0
   11a2c:	40f989b3          	sub	s3,s3,a5
   11a30:	00078613          	mv	a2,a5
   11a34:	00098513          	mv	a0,s3
   11a38:	300070ef          	jal	18d38 <strncpy>
   11a3c:	0014c703          	lbu	a4,1(s1)
   11a40:	000d0513          	mv	a0,s10
   11a44:	00a00593          	li	a1,10
   11a48:	00e03733          	snez	a4,a4
   11a4c:	00e484b3          	add	s1,s1,a4
   11a50:	158100ef          	jal	21ba8 <__hidden___udivdi3>
   11a54:	00050d13          	mv	s10,a0
   11a58:	f51ff06f          	j	119a8 <_vfprintf_r+0x1594>
   11a5c:	10812683          	lw	a3,264(sp)
   11a60:	000225b7          	lui	a1,0x22
   11a64:	d3058593          	add	a1,a1,-720 # 21d30 <__clzdi2+0xd0>
   11a68:	0016869b          	addw	a3,a3,1
   11a6c:	00b43023          	sd	a1,0(s0)
   11a70:	001d8713          	add	a4,s11,1
   11a74:	00100593          	li	a1,1
   11a78:	00b43423          	sd	a1,8(s0)
   11a7c:	10d12423          	sw	a3,264(sp)
   11a80:	0006859b          	sext.w	a1,a3
   11a84:	10e13823          	sd	a4,272(sp)
   11a88:	00700693          	li	a3,7
   11a8c:	01040413          	add	s0,s0,16
   11a90:	44b6ce63          	blt	a3,a1,11eec <_vfprintf_r+0x1ad8>
   11a94:	10061663          	bnez	a2,11ba0 <_vfprintf_r+0x178c>
   11a98:	03813783          	ld	a5,56(sp)
   11a9c:	00197693          	and	a3,s2,1
   11aa0:	00d7e6b3          	or	a3,a5,a3
   11aa4:	00069463          	bnez	a3,11aac <_vfprintf_r+0x1698>
   11aa8:	c81fe06f          	j	10728 <_vfprintf_r+0x314>
   11aac:	10812603          	lw	a2,264(sp)
   11ab0:	05813783          	ld	a5,88(sp)
   11ab4:	06013683          	ld	a3,96(sp)
   11ab8:	00e78733          	add	a4,a5,a4
   11abc:	00d43023          	sd	a3,0(s0)
   11ac0:	0016069b          	addw	a3,a2,1
   11ac4:	00f43423          	sd	a5,8(s0)
   11ac8:	10e13823          	sd	a4,272(sp)
   11acc:	10d12423          	sw	a3,264(sp)
   11ad0:	00700613          	li	a2,7
   11ad4:	6cd64e63          	blt	a2,a3,121b0 <_vfprintf_r+0x1d9c>
   11ad8:	01040413          	add	s0,s0,16
   11adc:	0f80006f          	j	11bd4 <_vfprintf_r+0x17c0>
   11ae0:	02013683          	ld	a3,32(sp)
   11ae4:	04097793          	and	a5,s2,64
   11ae8:	0006ad03          	lw	s10,0(a3)
   11aec:	16078263          	beqz	a5,11c50 <_vfprintf_r+0x183c>
   11af0:	030d1d13          	sll	s10,s10,0x30
   11af4:	030d5d13          	srl	s10,s10,0x30
   11af8:	cddff06f          	j	117d4 <_vfprintf_r+0x13c0>
   11afc:	00013583          	ld	a1,0(sp)
   11b00:	10010613          	add	a2,sp,256
   11b04:	00098513          	mv	a0,s3
   11b08:	19d090ef          	jal	1b4a4 <__sprint_r>
   11b0c:	e8051c63          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11b10:	11013d83          	ld	s11,272(sp)
   11b14:	18010413          	add	s0,sp,384
   11b18:	b4cff06f          	j	10e64 <_vfprintf_r+0xa50>
   11b1c:	0017869b          	addw	a3,a5,1
   11b20:	01b43023          	sd	s11,0(s0)
   11b24:	01943423          	sd	s9,8(s0)
   11b28:	01970733          	add	a4,a4,s9
   11b2c:	10e13823          	sd	a4,272(sp)
   11b30:	10d12423          	sw	a3,264(sp)
   11b34:	00700793          	li	a5,7
   11b38:	00d7c463          	blt	a5,a3,11b40 <_vfprintf_r+0x172c>
   11b3c:	be9fe06f          	j	10724 <_vfprintf_r+0x310>
   11b40:	f1dfe06f          	j	10a5c <_vfprintf_r+0x648>
   11b44:	0f013503          	ld	a0,240(sp)
   11b48:	0f813583          	ld	a1,248(sp)
   11b4c:	00000613          	li	a2,0
   11b50:	00000693          	li	a3,0
   11b54:	33d0e0ef          	jal	20690 <__letf2>
   11b58:	260548e3          	bltz	a0,125c8 <_vfprintf_r+0x21b4>
   11b5c:	0cf14703          	lbu	a4,207(sp)
   11b60:	04700793          	li	a5,71
   11b64:	3b97d663          	bge	a5,s9,11f10 <_vfprintf_r+0x1afc>
   11b68:	000227b7          	lui	a5,0x22
   11b6c:	ce078b13          	add	s6,a5,-800 # 21ce0 <__clzdi2+0x80>
   11b70:	f7f97913          	and	s2,s2,-129
   11b74:	00013c23          	sd	zero,24(sp)
   11b78:	04013423          	sd	zero,72(sp)
   11b7c:	04013023          	sd	zero,64(sp)
   11b80:	02013823          	sd	zero,48(sp)
   11b84:	0009091b          	sext.w	s2,s2
   11b88:	00300c13          	li	s8,3
   11b8c:	00300d13          	li	s10,3
   11b90:	00000313          	li	t1,0
   11b94:	00070463          	beqz	a4,11b9c <_vfprintf_r+0x1788>
   11b98:	f95fe06f          	j	10b2c <_vfprintf_r+0x718>
   11b9c:	ab9fe06f          	j	10654 <_vfprintf_r+0x240>
   11ba0:	10812583          	lw	a1,264(sp)
   11ba4:	05813783          	ld	a5,88(sp)
   11ba8:	06013683          	ld	a3,96(sp)
   11bac:	01040413          	add	s0,s0,16
   11bb0:	00e78733          	add	a4,a5,a4
   11bb4:	fed43823          	sd	a3,-16(s0)
   11bb8:	0015869b          	addw	a3,a1,1
   11bbc:	fef43c23          	sd	a5,-8(s0)
   11bc0:	10e13823          	sd	a4,272(sp)
   11bc4:	10d12423          	sw	a3,264(sp)
   11bc8:	00700593          	li	a1,7
   11bcc:	5ed5c263          	blt	a1,a3,121b0 <_vfprintf_r+0x1d9c>
   11bd0:	2c0642e3          	bltz	a2,12694 <_vfprintf_r+0x2280>
   11bd4:	03813783          	ld	a5,56(sp)
   11bd8:	0016861b          	addw	a2,a3,1
   11bdc:	01643023          	sd	s6,0(s0)
   11be0:	00e78733          	add	a4,a5,a4
   11be4:	00f43423          	sd	a5,8(s0)
   11be8:	10e13823          	sd	a4,272(sp)
   11bec:	10c12423          	sw	a2,264(sp)
   11bf0:	00700793          	li	a5,7
   11bf4:	00c7c463          	blt	a5,a2,11bfc <_vfprintf_r+0x17e8>
   11bf8:	b2dfe06f          	j	10724 <_vfprintf_r+0x310>
   11bfc:	e61fe06f          	j	10a5c <_vfprintf_r+0x648>
   11c00:	000b0513          	mv	a0,s6
   11c04:	06c070ef          	jal	18c70 <strlen>
   11c08:	00050d1b          	sext.w	s10,a0
   11c0c:	ef5fe06f          	j	10b00 <_vfprintf_r+0x6ec>
   11c10:	0014041b          	addw	s0,s0,1
   11c14:	015d0d33          	add	s10,s10,s5
   11c18:	01bcb023          	sd	s11,0(s9)
   11c1c:	015cb423          	sd	s5,8(s9)
   11c20:	11a13823          	sd	s10,272(sp)
   11c24:	10812423          	sw	s0,264(sp)
   11c28:	00700793          	li	a5,7
   11c2c:	0087c463          	blt	a5,s0,11c34 <_vfprintf_r+0x1820>
   11c30:	df9fe06f          	j	10a28 <_vfprintf_r+0x614>
   11c34:	939ff06f          	j	1156c <_vfprintf_r+0x1158>
   11c38:	20097793          	and	a5,s2,512
   11c3c:	52078a63          	beqz	a5,12170 <_vfprintf_r+0x1d5c>
   11c40:	018d1d1b          	sllw	s10,s10,0x18
   11c44:	418d5d1b          	sraw	s10,s10,0x18
   11c48:	000d0793          	mv	a5,s10
   11c4c:	8b4ff06f          	j	10d00 <_vfprintf_r+0x8ec>
   11c50:	20097793          	and	a5,s2,512
   11c54:	50078863          	beqz	a5,12164 <_vfprintf_r+0x1d50>
   11c58:	0ffd7d13          	zext.b	s10,s10
   11c5c:	b79ff06f          	j	117d4 <_vfprintf_r+0x13c0>
   11c60:	200df793          	and	a5,s11,512
   11c64:	50078a63          	beqz	a5,12178 <_vfprintf_r+0x1d64>
   11c68:	0ffd7d13          	zext.b	s10,s10
   11c6c:	02e13023          	sd	a4,32(sp)
   11c70:	00100793          	li	a5,1
   11c74:	ffdfe06f          	j	10c70 <_vfprintf_r+0x85c>
   11c78:	20097793          	and	a5,s2,512
   11c7c:	4c078863          	beqz	a5,1214c <_vfprintf_r+0x1d38>
   11c80:	0ffd7d13          	zext.b	s10,s10
   11c84:	8c8ff06f          	j	10d4c <_vfprintf_r+0x938>
   11c88:	0f813783          	ld	a5,248(sp)
   11c8c:	5007c063          	bltz	a5,1218c <_vfprintf_r+0x1d78>
   11c90:	0cf14703          	lbu	a4,207(sp)
   11c94:	04700793          	li	a5,71
   11c98:	1f97d4e3          	bge	a5,s9,12680 <_vfprintf_r+0x226c>
   11c9c:	000227b7          	lui	a5,0x22
   11ca0:	cf078b13          	add	s6,a5,-784 # 21cf0 <__clzdi2+0x90>
   11ca4:	ecdff06f          	j	11b70 <_vfprintf_r+0x175c>
   11ca8:	0016059b          	addw	a1,a2,1
   11cac:	00ec8733          	add	a4,s9,a4
   11cb0:	01b43023          	sd	s11,0(s0)
   11cb4:	01943423          	sd	s9,8(s0)
   11cb8:	10e13823          	sd	a4,272(sp)
   11cbc:	10b12423          	sw	a1,264(sp)
   11cc0:	00700693          	li	a3,7
   11cc4:	72b6c863          	blt	a3,a1,123f4 <_vfprintf_r+0x1fe0>
   11cc8:	01040413          	add	s0,s0,16
   11ccc:	00070d93          	mv	s11,a4
   11cd0:	f44ff06f          	j	11414 <_vfprintf_r+0x1000>
   11cd4:	04013c83          	ld	s9,64(sp)
   11cd8:	00022e37          	lui	t3,0x22
   11cdc:	08913823          	sd	s1,144(sp)
   11ce0:	09213c23          	sd	s2,152(sp)
   11ce4:	0b413023          	sd	s4,160(sp)
   11ce8:	05813023          	sd	s8,64(sp)
   11cec:	000b0a13          	mv	s4,s6
   11cf0:	07813903          	ld	s2,120(sp)
   11cf4:	08813483          	ld	s1,136(sp)
   11cf8:	08013b03          	ld	s6,128(sp)
   11cfc:	04813c03          	ld	s8,72(sp)
   11d00:	00013b83          	ld	s7,0(sp)
   11d04:	00700313          	li	t1,7
   11d08:	01000893          	li	a7,16
   11d0c:	f38e0d13          	add	s10,t3,-200 # 21f38 <zeroes.0>
   11d10:	000d8713          	mv	a4,s11
   11d14:	080c8c63          	beqz	s9,11dac <_vfprintf_r+0x1998>
   11d18:	160c0863          	beqz	s8,11e88 <_vfprintf_r+0x1a74>
   11d1c:	fffc0c1b          	addw	s8,s8,-1
   11d20:	10812783          	lw	a5,264(sp)
   11d24:	01670733          	add	a4,a4,s6
   11d28:	00943023          	sd	s1,0(s0)
   11d2c:	0017869b          	addw	a3,a5,1
   11d30:	01643423          	sd	s6,8(s0)
   11d34:	10e13823          	sd	a4,272(sp)
   11d38:	10d12423          	sw	a3,264(sp)
   11d3c:	01040413          	add	s0,s0,16
   11d40:	14d34a63          	blt	t1,a3,11e94 <_vfprintf_r+0x1a80>
   11d44:	00094683          	lbu	a3,0(s2)
   11d48:	414a8db3          	sub	s11,s5,s4
   11d4c:	000d879b          	sext.w	a5,s11
   11d50:	0006861b          	sext.w	a2,a3
   11d54:	00f6d463          	bge	a3,a5,11d5c <_vfprintf_r+0x1948>
   11d58:	00060d93          	mv	s11,a2
   11d5c:	000d8d9b          	sext.w	s11,s11
   11d60:	03b05863          	blez	s11,11d90 <_vfprintf_r+0x197c>
   11d64:	10812783          	lw	a5,264(sp)
   11d68:	01b70733          	add	a4,a4,s11
   11d6c:	01443023          	sd	s4,0(s0)
   11d70:	0017869b          	addw	a3,a5,1
   11d74:	01b43423          	sd	s11,8(s0)
   11d78:	10e13823          	sd	a4,272(sp)
   11d7c:	10d12423          	sw	a3,264(sp)
   11d80:	12d34e63          	blt	t1,a3,11ebc <_vfprintf_r+0x1aa8>
   11d84:	00094683          	lbu	a3,0(s2)
   11d88:	01040413          	add	s0,s0,16
   11d8c:	0006861b          	sext.w	a2,a3
   11d90:	fffdc793          	not	a5,s11
   11d94:	43f7d793          	sra	a5,a5,0x3f
   11d98:	00fdf7b3          	and	a5,s11,a5
   11d9c:	40f60dbb          	subw	s11,a2,a5
   11da0:	03b04c63          	bgtz	s11,11dd8 <_vfprintf_r+0x19c4>
   11da4:	00da0a33          	add	s4,s4,a3
   11da8:	f60c98e3          	bnez	s9,11d18 <_vfprintf_r+0x1904>
   11dac:	f60c18e3          	bnez	s8,11d1c <_vfprintf_r+0x1908>
   11db0:	07213c23          	sd	s2,120(sp)
   11db4:	000a0b13          	mv	s6,s4
   11db8:	09013483          	ld	s1,144(sp)
   11dbc:	09813903          	ld	s2,152(sp)
   11dc0:	0a013a03          	ld	s4,160(sp)
   11dc4:	04013c03          	ld	s8,64(sp)
   11dc8:	00070d93          	mv	s11,a4
   11dcc:	e56afc63          	bgeu	s5,s6,11424 <_vfprintf_r+0x1010>
   11dd0:	000a8b13          	mv	s6,s5
   11dd4:	e50ff06f          	j	11424 <_vfprintf_r+0x1010>
   11dd8:	00022637          	lui	a2,0x22
   11ddc:	10812783          	lw	a5,264(sp)
   11de0:	f3860613          	add	a2,a2,-200 # 21f38 <zeroes.0>
   11de4:	07b8dc63          	bge	a7,s11,11e5c <_vfprintf_r+0x1a48>
   11de8:	02913823          	sd	s1,48(sp)
   11dec:	000d8493          	mv	s1,s11
   11df0:	000d0d93          	mv	s11,s10
   11df4:	00c0006f          	j	11e00 <_vfprintf_r+0x19ec>
   11df8:	ff04849b          	addw	s1,s1,-16
   11dfc:	0498da63          	bge	a7,s1,11e50 <_vfprintf_r+0x1a3c>
   11e00:	0017879b          	addw	a5,a5,1
   11e04:	01070713          	add	a4,a4,16
   11e08:	01a43023          	sd	s10,0(s0)
   11e0c:	01143423          	sd	a7,8(s0)
   11e10:	10e13823          	sd	a4,272(sp)
   11e14:	10f12423          	sw	a5,264(sp)
   11e18:	01040413          	add	s0,s0,16
   11e1c:	fcf35ee3          	bge	t1,a5,11df8 <_vfprintf_r+0x19e4>
   11e20:	10010613          	add	a2,sp,256
   11e24:	000b8593          	mv	a1,s7
   11e28:	00098513          	mv	a0,s3
   11e2c:	678090ef          	jal	1b4a4 <__sprint_r>
   11e30:	b6051a63          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11e34:	01000893          	li	a7,16
   11e38:	ff04849b          	addw	s1,s1,-16
   11e3c:	11013703          	ld	a4,272(sp)
   11e40:	10812783          	lw	a5,264(sp)
   11e44:	18010413          	add	s0,sp,384
   11e48:	00700313          	li	t1,7
   11e4c:	fa98cae3          	blt	a7,s1,11e00 <_vfprintf_r+0x19ec>
   11e50:	000d8613          	mv	a2,s11
   11e54:	00048d93          	mv	s11,s1
   11e58:	03013483          	ld	s1,48(sp)
   11e5c:	0017869b          	addw	a3,a5,1
   11e60:	00ed8733          	add	a4,s11,a4
   11e64:	00c43023          	sd	a2,0(s0)
   11e68:	01b43423          	sd	s11,8(s0)
   11e6c:	10e13823          	sd	a4,272(sp)
   11e70:	10d12423          	sw	a3,264(sp)
   11e74:	6ed34863          	blt	t1,a3,12564 <_vfprintf_r+0x2150>
   11e78:	00094683          	lbu	a3,0(s2)
   11e7c:	01040413          	add	s0,s0,16
   11e80:	00da0a33          	add	s4,s4,a3
   11e84:	f25ff06f          	j	11da8 <_vfprintf_r+0x1994>
   11e88:	fff90913          	add	s2,s2,-1
   11e8c:	fffc8c9b          	addw	s9,s9,-1
   11e90:	e91ff06f          	j	11d20 <_vfprintf_r+0x190c>
   11e94:	10010613          	add	a2,sp,256
   11e98:	000b8593          	mv	a1,s7
   11e9c:	00098513          	mv	a0,s3
   11ea0:	604090ef          	jal	1b4a4 <__sprint_r>
   11ea4:	b0051063          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11ea8:	11013703          	ld	a4,272(sp)
   11eac:	18010413          	add	s0,sp,384
   11eb0:	01000893          	li	a7,16
   11eb4:	00700313          	li	t1,7
   11eb8:	e8dff06f          	j	11d44 <_vfprintf_r+0x1930>
   11ebc:	10010613          	add	a2,sp,256
   11ec0:	000b8593          	mv	a1,s7
   11ec4:	00098513          	mv	a0,s3
   11ec8:	5dc090ef          	jal	1b4a4 <__sprint_r>
   11ecc:	ac051c63          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11ed0:	00094683          	lbu	a3,0(s2)
   11ed4:	11013703          	ld	a4,272(sp)
   11ed8:	18010413          	add	s0,sp,384
   11edc:	0006861b          	sext.w	a2,a3
   11ee0:	01000893          	li	a7,16
   11ee4:	00700313          	li	t1,7
   11ee8:	ea9ff06f          	j	11d90 <_vfprintf_r+0x197c>
   11eec:	00013583          	ld	a1,0(sp)
   11ef0:	10010613          	add	a2,sp,256
   11ef4:	00098513          	mv	a0,s3
   11ef8:	5ac090ef          	jal	1b4a4 <__sprint_r>
   11efc:	aa051463          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   11f00:	0d812603          	lw	a2,216(sp)
   11f04:	11013703          	ld	a4,272(sp)
   11f08:	18010413          	add	s0,sp,384
   11f0c:	b89ff06f          	j	11a94 <_vfprintf_r+0x1680>
   11f10:	000227b7          	lui	a5,0x22
   11f14:	cd878b13          	add	s6,a5,-808 # 21cd8 <__clzdi2+0x78>
   11f18:	c59ff06f          	j	11b70 <_vfprintf_r+0x175c>
   11f1c:	00030913          	mv	s2,t1
   11f20:	00200693          	li	a3,2
   11f24:	00090713          	mv	a4,s2
   11f28:	0e810893          	add	a7,sp,232
   11f2c:	0dc10813          	add	a6,sp,220
   11f30:	0d810793          	add	a5,sp,216
   11f34:	000b8593          	mv	a1,s7
   11f38:	000c0613          	mv	a2,s8
   11f3c:	00098513          	mv	a0,s3
   11f40:	02613823          	sd	t1,48(sp)
   11f44:	4b0030ef          	jal	153f4 <_ldtoa_r>
   11f48:	06700713          	li	a4,103
   11f4c:	03013303          	ld	t1,48(sp)
   11f50:	00050b13          	mv	s6,a0
   11f54:	5eec8c63          	beq	s9,a4,1254c <_vfprintf_r+0x2138>
   11f58:	04700713          	li	a4,71
   11f5c:	5eec8863          	beq	s9,a4,1254c <_vfprintf_r+0x2138>
   11f60:	fdfcfa93          	and	s5,s9,-33
   11f64:	04600713          	li	a4,70
   11f68:	01250d33          	add	s10,a0,s2
   11f6c:	66ea8663          	beq	s5,a4,125d8 <_vfprintf_r+0x21c4>
   11f70:	000c0593          	mv	a1,s8
   11f74:	00000613          	li	a2,0
   11f78:	00000693          	li	a3,0
   11f7c:	000b8513          	mv	a0,s7
   11f80:	02613823          	sd	t1,48(sp)
   11f84:	55c0e0ef          	jal	204e0 <__eqtf2>
   11f88:	03013303          	ld	t1,48(sp)
   11f8c:	000d0c13          	mv	s8,s10
   11f90:	02050263          	beqz	a0,11fb4 <_vfprintf_r+0x1ba0>
   11f94:	0e813c03          	ld	s8,232(sp)
   11f98:	01ac7e63          	bgeu	s8,s10,11fb4 <_vfprintf_r+0x1ba0>
   11f9c:	03000693          	li	a3,48
   11fa0:	001c0793          	add	a5,s8,1
   11fa4:	0ef13423          	sd	a5,232(sp)
   11fa8:	00dc0023          	sb	a3,0(s8)
   11fac:	0e813c03          	ld	s8,232(sp)
   11fb0:	ffac68e3          	bltu	s8,s10,11fa0 <_vfprintf_r+0x1b8c>
   11fb4:	416c07bb          	subw	a5,s8,s6
   11fb8:	02f13c23          	sd	a5,56(sp)
   11fbc:	0d812703          	lw	a4,216(sp)
   11fc0:	04700693          	li	a3,71
   11fc4:	02e13823          	sd	a4,48(sp)
   11fc8:	4cda8c63          	beq	s5,a3,124a0 <_vfprintf_r+0x208c>
   11fcc:	04600693          	li	a3,70
   11fd0:	72da8a63          	beq	s5,a3,12704 <_vfprintf_r+0x22f0>
   11fd4:	fff70d1b          	addw	s10,a4,-1
   11fd8:	0da12c23          	sw	s10,216(sp)
   11fdc:	06100693          	li	a3,97
   11fe0:	1cdc80e3          	beq	s9,a3,129a0 <_vfprintf_r+0x258c>
   11fe4:	04100613          	li	a2,65
   11fe8:	05000693          	li	a3,80
   11fec:	4ccc9863          	bne	s9,a2,124bc <_vfprintf_r+0x20a8>
   11ff0:	00100613          	li	a2,1
   11ff4:	0ed10023          	sb	a3,224(sp)
   11ff8:	02b00693          	li	a3,43
   11ffc:	000d5863          	bgez	s10,1200c <_vfprintf_r+0x1bf8>
   12000:	00100d13          	li	s10,1
   12004:	40ed0d3b          	subw	s10,s10,a4
   12008:	02d00693          	li	a3,45
   1200c:	0ed100a3          	sb	a3,225(sp)
   12010:	00900713          	li	a4,9
   12014:	77a75e63          	bge	a4,s10,12790 <_vfprintf_r+0x237c>
   12018:	0ef10913          	add	s2,sp,239
   1201c:	00090a93          	mv	s5,s2
   12020:	06300b93          	li	s7,99
   12024:	00a00593          	li	a1,10
   12028:	000d0513          	mv	a0,s10
   1202c:	3f90f0ef          	jal	21c24 <__moddi3>
   12030:	0305079b          	addw	a5,a0,48
   12034:	fefa8fa3          	sb	a5,-1(s5)
   12038:	000d0513          	mv	a0,s10
   1203c:	00a00593          	li	a1,10
   12040:	000d0c13          	mv	s8,s10
   12044:	35d0f0ef          	jal	21ba0 <__divdi3>
   12048:	000a8d93          	mv	s11,s5
   1204c:	00050d1b          	sext.w	s10,a0
   12050:	fffa8a93          	add	s5,s5,-1
   12054:	fd8bc8e3          	blt	s7,s8,12024 <_vfprintf_r+0x1c10>
   12058:	030d0d1b          	addw	s10,s10,48
   1205c:	ffed8713          	add	a4,s11,-2
   12060:	ffaa8fa3          	sb	s10,-1(s5)
   12064:	1b277ae3          	bgeu	a4,s2,12a18 <_vfprintf_r+0x2604>
   12068:	0e210693          	add	a3,sp,226
   1206c:	00074783          	lbu	a5,0(a4)
   12070:	00170713          	add	a4,a4,1
   12074:	00168693          	add	a3,a3,1
   12078:	fef68fa3          	sb	a5,-1(a3)
   1207c:	ff2718e3          	bne	a4,s2,1206c <_vfprintf_r+0x1c58>
   12080:	0f110713          	add	a4,sp,241
   12084:	0e210793          	add	a5,sp,226
   12088:	41b70733          	sub	a4,a4,s11
   1208c:	00e78733          	add	a4,a5,a4
   12090:	0e010693          	add	a3,sp,224
   12094:	40d707bb          	subw	a5,a4,a3
   12098:	06f13823          	sd	a5,112(sp)
   1209c:	07013703          	ld	a4,112(sp)
   120a0:	03813783          	ld	a5,56(sp)
   120a4:	00100613          	li	a2,1
   120a8:	00e78d3b          	addw	s10,a5,a4
   120ac:	000d0713          	mv	a4,s10
   120b0:	02f658e3          	bge	a2,a5,128e0 <_vfprintf_r+0x24cc>
   120b4:	05813783          	ld	a5,88(sp)
   120b8:	00f70d3b          	addw	s10,a4,a5
   120bc:	04013783          	ld	a5,64(sp)
   120c0:	fffd4813          	not	a6,s10
   120c4:	43f85813          	sra	a6,a6,0x3f
   120c8:	bff7f913          	and	s2,a5,-1025
   120cc:	0009091b          	sext.w	s2,s2
   120d0:	010d7833          	and	a6,s10,a6
   120d4:	10096913          	or	s2,s2,256
   120d8:	00080c1b          	sext.w	s8,a6
   120dc:	04013423          	sd	zero,72(sp)
   120e0:	04013023          	sd	zero,64(sp)
   120e4:	02013823          	sd	zero,48(sp)
   120e8:	09813783          	ld	a5,152(sp)
   120ec:	3c078e63          	beqz	a5,124c8 <_vfprintf_r+0x20b4>
   120f0:	02d00713          	li	a4,45
   120f4:	0ce107a3          	sb	a4,207(sp)
   120f8:	00000313          	li	t1,0
   120fc:	001c0c1b          	addw	s8,s8,1
   12100:	d54fe06f          	j	10654 <_vfprintf_r+0x240>
   12104:	00013583          	ld	a1,0(sp)
   12108:	10010613          	add	a2,sp,256
   1210c:	00098513          	mv	a0,s3
   12110:	394090ef          	jal	1b4a4 <__sprint_r>
   12114:	88051863          	bnez	a0,111a4 <_vfprintf_r+0xd90>
   12118:	11013d83          	ld	s11,272(sp)
   1211c:	18010413          	add	s0,sp,384
   12120:	adcff06f          	j	113fc <_vfprintf_r+0xfe8>
   12124:	00600693          	li	a3,6
   12128:	f5cff06f          	j	11884 <_vfprintf_r+0x1470>
   1212c:	416a8cb3          	sub	s9,s5,s6
   12130:	40d7863b          	subw	a2,a5,a3
   12134:	000c879b          	sext.w	a5,s9
   12138:	000d8713          	mv	a4,s11
   1213c:	00f65463          	bge	a2,a5,12144 <_vfprintf_r+0x1d30>
   12140:	00060c93          	mv	s9,a2
   12144:	000c8c9b          	sext.w	s9,s9
   12148:	b70ff06f          	j	114b8 <_vfprintf_r+0x10a4>
   1214c:	020d1d13          	sll	s10,s10,0x20
   12150:	020d5d13          	srl	s10,s10,0x20
   12154:	bf9fe06f          	j	10d4c <_vfprintf_r+0x938>
   12158:	01013783          	ld	a5,16(sp)
   1215c:	00f71023          	sh	a5,0(a4)
   12160:	c29fe06f          	j	10d88 <_vfprintf_r+0x974>
   12164:	020d1d13          	sll	s10,s10,0x20
   12168:	020d5d13          	srl	s10,s10,0x20
   1216c:	e68ff06f          	j	117d4 <_vfprintf_r+0x13c0>
   12170:	000d0793          	mv	a5,s10
   12174:	b8dfe06f          	j	10d00 <_vfprintf_r+0x8ec>
   12178:	020d1d13          	sll	s10,s10,0x20
   1217c:	020d5d13          	srl	s10,s10,0x20
   12180:	02e13023          	sd	a4,32(sp)
   12184:	00100793          	li	a5,1
   12188:	ae9fe06f          	j	10c70 <_vfprintf_r+0x85c>
   1218c:	02d00793          	li	a5,45
   12190:	0cf107a3          	sb	a5,207(sp)
   12194:	02d00713          	li	a4,45
   12198:	afdff06f          	j	11c94 <_vfprintf_r+0x1880>
   1219c:	00013583          	ld	a1,0(sp)
   121a0:	05013503          	ld	a0,80(sp)
   121a4:	10010613          	add	a2,sp,256
   121a8:	2fc090ef          	jal	1b4a4 <__sprint_r>
   121ac:	ddcfe06f          	j	10788 <_vfprintf_r+0x374>
   121b0:	00013583          	ld	a1,0(sp)
   121b4:	10010613          	add	a2,sp,256
   121b8:	00098513          	mv	a0,s3
   121bc:	2e8090ef          	jal	1b4a4 <__sprint_r>
   121c0:	00050463          	beqz	a0,121c8 <_vfprintf_r+0x1db4>
   121c4:	fe1fe06f          	j	111a4 <_vfprintf_r+0xd90>
   121c8:	0d812603          	lw	a2,216(sp)
   121cc:	11013703          	ld	a4,272(sp)
   121d0:	10812683          	lw	a3,264(sp)
   121d4:	18010413          	add	s0,sp,384
   121d8:	9f9ff06f          	j	11bd0 <_vfprintf_r+0x17bc>
   121dc:	05800713          	li	a4,88
   121e0:	00296793          	or	a5,s2,2
   121e4:	03000693          	li	a3,48
   121e8:	0007879b          	sext.w	a5,a5
   121ec:	0ce108a3          	sb	a4,209(sp)
   121f0:	0cd10823          	sb	a3,208(sp)
   121f4:	06300713          	li	a4,99
   121f8:	04f13023          	sd	a5,64(sp)
   121fc:	00013c23          	sd	zero,24(sp)
   12200:	11810b13          	add	s6,sp,280
   12204:	64674c63          	blt	a4,t1,1285c <_vfprintf_r+0x2448>
   12208:	10296913          	or	s2,s2,258
   1220c:	0f813c03          	ld	s8,248(sp)
   12210:	0009079b          	sext.w	a5,s2
   12214:	08f13823          	sd	a5,144(sp)
   12218:	08013c23          	sd	zero,152(sp)
   1221c:	0f013b83          	ld	s7,240(sp)
   12220:	300c4a63          	bltz	s8,12534 <_vfprintf_r+0x2120>
   12224:	06100713          	li	a4,97
   12228:	00ec8463          	beq	s9,a4,12230 <_vfprintf_r+0x1e1c>
   1222c:	ef8fe06f          	j	10924 <_vfprintf_r+0x510>
   12230:	000c0593          	mv	a1,s8
   12234:	000b8513          	mv	a0,s7
   12238:	02613823          	sd	t1,48(sp)
   1223c:	7400f0ef          	jal	2197c <__trunctfdf2>
   12240:	0d810593          	add	a1,sp,216
   12244:	50c060ef          	jal	18750 <frexp>
   12248:	6440f0ef          	jal	2188c <__extenddftf2>
   1224c:	00022737          	lui	a4,0x22
   12250:	f6873683          	ld	a3,-152(a4) # 21f68 <blanks.1+0x20>
   12254:	00000613          	li	a2,0
   12258:	5440e0ef          	jal	2079c <__multf3>
   1225c:	00000613          	li	a2,0
   12260:	00000693          	li	a3,0
   12264:	00050d93          	mv	s11,a0
   12268:	00058913          	mv	s2,a1
   1226c:	2740e0ef          	jal	204e0 <__eqtf2>
   12270:	03013303          	ld	t1,48(sp)
   12274:	00051663          	bnez	a0,12280 <_vfprintf_r+0x1e6c>
   12278:	00100713          	li	a4,1
   1227c:	0ce12c23          	sw	a4,216(sp)
   12280:	00022737          	lui	a4,0x22
   12284:	d1070793          	add	a5,a4,-752 # 21d10 <__clzdi2+0xb0>
   12288:	02f13c23          	sd	a5,56(sp)
   1228c:	000226b7          	lui	a3,0x22
   12290:	f786b783          	ld	a5,-136(a3) # 21f78 <blanks.1+0x30>
   12294:	02031713          	sll	a4,t1,0x20
   12298:	02075713          	srl	a4,a4,0x20
   1229c:	00170713          	add	a4,a4,1
   122a0:	02f13823          	sd	a5,48(sp)
   122a4:	0003061b          	sext.w	a2,t1
   122a8:	00eb07b3          	add	a5,s6,a4
   122ac:	04913423          	sd	s1,72(sp)
   122b0:	0b413023          	sd	s4,160(sp)
   122b4:	0a813823          	sd	s0,176(sp)
   122b8:	03813483          	ld	s1,56(sp)
   122bc:	0ac13c23          	sd	a2,184(sp)
   122c0:	0a613423          	sd	t1,168(sp)
   122c4:	00078413          	mv	s0,a5
   122c8:	000b0a13          	mv	s4,s6
   122cc:	00098b93          	mv	s7,s3
   122d0:	000b0d13          	mv	s10,s6
   122d4:	0140006f          	j	122e8 <_vfprintf_r+0x1ed4>
   122d8:	00000613          	li	a2,0
   122dc:	00000693          	li	a3,0
   122e0:	2000e0ef          	jal	204e0 <__eqtf2>
   122e4:	5a050663          	beqz	a0,12890 <_vfprintf_r+0x247c>
   122e8:	03013683          	ld	a3,48(sp)
   122ec:	00000613          	li	a2,0
   122f0:	000d8513          	mv	a0,s11
   122f4:	00090593          	mv	a1,s2
   122f8:	4a40e0ef          	jal	2079c <__multf3>
   122fc:	00058913          	mv	s2,a1
   12300:	00050993          	mv	s3,a0
   12304:	4980f0ef          	jal	2179c <__fixtfsi>
   12308:	00050c1b          	sext.w	s8,a0
   1230c:	000c0513          	mv	a0,s8
   12310:	4f40f0ef          	jal	21804 <__floatsitf>
   12314:	00058693          	mv	a3,a1
   12318:	00050613          	mv	a2,a0
   1231c:	00090593          	mv	a1,s2
   12320:	00098513          	mv	a0,s3
   12324:	3c50e0ef          	jal	20ee8 <__subtf3>
   12328:	01848733          	add	a4,s1,s8
   1232c:	00074683          	lbu	a3,0(a4)
   12330:	000a0993          	mv	s3,s4
   12334:	001a0a13          	add	s4,s4,1
   12338:	feda0fa3          	sb	a3,-1(s4)
   1233c:	00050a93          	mv	s5,a0
   12340:	00058b13          	mv	s6,a1
   12344:	00050d93          	mv	s11,a0
   12348:	00058913          	mv	s2,a1
   1234c:	f94416e3          	bne	s0,s4,122d8 <_vfprintf_r+0x1ec4>
   12350:	000a0a93          	mv	s5,s4
   12354:	04813483          	ld	s1,72(sp)
   12358:	0a813303          	ld	t1,168(sp)
   1235c:	0b013403          	ld	s0,176(sp)
   12360:	0a013a03          	ld	s4,160(sp)
   12364:	03313823          	sd	s3,48(sp)
   12368:	000d0b13          	mv	s6,s10
   1236c:	000b8993          	mv	s3,s7
   12370:	00050d13          	mv	s10,a0
   12374:	00058b93          	mv	s7,a1
   12378:	fff00d93          	li	s11,-1
   1237c:	000226b7          	lui	a3,0x22
   12380:	f886b903          	ld	s2,-120(a3) # 21f88 <blanks.1+0x40>
   12384:	00000613          	li	a2,0
   12388:	000d0513          	mv	a0,s10
   1238c:	00090693          	mv	a3,s2
   12390:	000b8593          	mv	a1,s7
   12394:	04613423          	sd	t1,72(sp)
   12398:	1ec0e0ef          	jal	20584 <__getf2>
   1239c:	04813303          	ld	t1,72(sp)
   123a0:	46a04463          	bgtz	a0,12808 <_vfprintf_r+0x23f4>
   123a4:	00000613          	li	a2,0
   123a8:	00090693          	mv	a3,s2
   123ac:	000d0513          	mv	a0,s10
   123b0:	000b8593          	mv	a1,s7
   123b4:	12c0e0ef          	jal	204e0 <__eqtf2>
   123b8:	04813303          	ld	t1,72(sp)
   123bc:	00051663          	bnez	a0,123c8 <_vfprintf_r+0x1fb4>
   123c0:	001c7c13          	and	s8,s8,1
   123c4:	440c1263          	bnez	s8,12808 <_vfprintf_r+0x23f4>
   123c8:	001d8c1b          	addw	s8,s11,1
   123cc:	018a8c33          	add	s8,s5,s8
   123d0:	03000693          	li	a3,48
   123d4:	480dc063          	bltz	s11,12854 <_vfprintf_r+0x2440>
   123d8:	001a8a93          	add	s5,s5,1
   123dc:	feda8fa3          	sb	a3,-1(s5)
   123e0:	ff5c1ce3          	bne	s8,s5,123d8 <_vfprintf_r+0x1fc4>
   123e4:	416c07bb          	subw	a5,s8,s6
   123e8:	02f13c23          	sd	a5,56(sp)
   123ec:	fdfcfa93          	and	s5,s9,-33
   123f0:	bcdff06f          	j	11fbc <_vfprintf_r+0x1ba8>
   123f4:	00013583          	ld	a1,0(sp)
   123f8:	10010613          	add	a2,sp,256
   123fc:	00098513          	mv	a0,s3
   12400:	0a4090ef          	jal	1b4a4 <__sprint_r>
   12404:	00050463          	beqz	a0,1240c <_vfprintf_r+0x1ff8>
   12408:	d9dfe06f          	j	111a4 <_vfprintf_r+0xd90>
   1240c:	11013d83          	ld	s11,272(sp)
   12410:	18010413          	add	s0,sp,384
   12414:	800ff06f          	j	11414 <_vfprintf_r+0x1000>
   12418:	0013091b          	addw	s2,t1,1
   1241c:	00200693          	li	a3,2
   12420:	b05ff06f          	j	11f24 <_vfprintf_r+0x1b10>
   12424:	00030913          	mv	s2,t1
   12428:	00300693          	li	a3,3
   1242c:	af9ff06f          	j	11f24 <_vfprintf_r+0x1b10>
   12430:	000c0593          	mv	a1,s8
   12434:	000b8513          	mv	a0,s7
   12438:	02613823          	sd	t1,48(sp)
   1243c:	5400f0ef          	jal	2197c <__trunctfdf2>
   12440:	0d810593          	add	a1,sp,216
   12444:	30c060ef          	jal	18750 <frexp>
   12448:	4440f0ef          	jal	2188c <__extenddftf2>
   1244c:	00022737          	lui	a4,0x22
   12450:	f6873683          	ld	a3,-152(a4) # 21f68 <blanks.1+0x20>
   12454:	00000613          	li	a2,0
   12458:	3440e0ef          	jal	2079c <__multf3>
   1245c:	00000613          	li	a2,0
   12460:	00000693          	li	a3,0
   12464:	00050d93          	mv	s11,a0
   12468:	00058913          	mv	s2,a1
   1246c:	0740e0ef          	jal	204e0 <__eqtf2>
   12470:	03013303          	ld	t1,48(sp)
   12474:	00051663          	bnez	a0,12480 <_vfprintf_r+0x206c>
   12478:	00100713          	li	a4,1
   1247c:	0ce12c23          	sw	a4,216(sp)
   12480:	00022737          	lui	a4,0x22
   12484:	cf870793          	add	a5,a4,-776 # 21cf8 <__clzdi2+0x98>
   12488:	02f13c23          	sd	a5,56(sp)
   1248c:	e01ff06f          	j	1228c <_vfprintf_r+0x1e78>
   12490:	0e813c03          	ld	s8,232(sp)
   12494:	0d812703          	lw	a4,216(sp)
   12498:	416c07bb          	subw	a5,s8,s6
   1249c:	02f13c23          	sd	a5,56(sp)
   124a0:	ffd00693          	li	a3,-3
   124a4:	02e13823          	sd	a4,48(sp)
   124a8:	00d74463          	blt	a4,a3,124b0 <_vfprintf_r+0x209c>
   124ac:	02e35863          	bge	t1,a4,124dc <_vfprintf_r+0x20c8>
   124b0:	fff70d1b          	addw	s10,a4,-1
   124b4:	ffec8c9b          	addw	s9,s9,-2
   124b8:	0da12c23          	sw	s10,216(sp)
   124bc:	0ffcf693          	zext.b	a3,s9
   124c0:	00000613          	li	a2,0
   124c4:	b31ff06f          	j	11ff4 <_vfprintf_r+0x1be0>
   124c8:	0cf14703          	lbu	a4,207(sp)
   124cc:	00000313          	li	t1,0
   124d0:	00070463          	beqz	a4,124d8 <_vfprintf_r+0x20c4>
   124d4:	e58fe06f          	j	10b2c <_vfprintf_r+0x718>
   124d8:	97cfe06f          	j	10654 <_vfprintf_r+0x240>
   124dc:	03813783          	ld	a5,56(sp)
   124e0:	26f74463          	blt	a4,a5,12748 <_vfprintf_r+0x2334>
   124e4:	04013783          	ld	a5,64(sp)
   124e8:	00070d13          	mv	s10,a4
   124ec:	0017f613          	and	a2,a5,1
   124f0:	00060663          	beqz	a2,124fc <_vfprintf_r+0x20e8>
   124f4:	05813783          	ld	a5,88(sp)
   124f8:	00e78d3b          	addw	s10,a5,a4
   124fc:	04013783          	ld	a5,64(sp)
   12500:	4007f613          	and	a2,a5,1024
   12504:	00060463          	beqz	a2,1250c <_vfprintf_r+0x20f8>
   12508:	3ee04863          	bgtz	a4,128f8 <_vfprintf_r+0x24e4>
   1250c:	fffd4813          	not	a6,s10
   12510:	43f85813          	sra	a6,a6,0x3f
   12514:	09013903          	ld	s2,144(sp)
   12518:	010d7833          	and	a6,s10,a6
   1251c:	00080c1b          	sext.w	s8,a6
   12520:	06700c93          	li	s9,103
   12524:	04013423          	sd	zero,72(sp)
   12528:	04013023          	sd	zero,64(sp)
   1252c:	bbdff06f          	j	120e8 <_vfprintf_r+0x1cd4>
   12530:	00013c23          	sd	zero,24(sp)
   12534:	fff00713          	li	a4,-1
   12538:	03f71713          	sll	a4,a4,0x3f
   1253c:	02d00793          	li	a5,45
   12540:	00ec4c33          	xor	s8,s8,a4
   12544:	08f13c23          	sd	a5,152(sp)
   12548:	cddff06f          	j	12224 <_vfprintf_r+0x1e10>
   1254c:	04013783          	ld	a5,64(sp)
   12550:	0017f713          	and	a4,a5,1
   12554:	f2070ee3          	beqz	a4,12490 <_vfprintf_r+0x207c>
   12558:	012b0d33          	add	s10,s6,s2
   1255c:	04700a93          	li	s5,71
   12560:	a11ff06f          	j	11f70 <_vfprintf_r+0x1b5c>
   12564:	10010613          	add	a2,sp,256
   12568:	000b8593          	mv	a1,s7
   1256c:	00098513          	mv	a0,s3
   12570:	735080ef          	jal	1b4a4 <__sprint_r>
   12574:	00050463          	beqz	a0,1257c <_vfprintf_r+0x2168>
   12578:	c2dfe06f          	j	111a4 <_vfprintf_r+0xd90>
   1257c:	00094683          	lbu	a3,0(s2)
   12580:	11013703          	ld	a4,272(sp)
   12584:	18010413          	add	s0,sp,384
   12588:	01000893          	li	a7,16
   1258c:	00700313          	li	t1,7
   12590:	00da0a33          	add	s4,s4,a3
   12594:	815ff06f          	j	11da8 <_vfprintf_r+0x1994>
   12598:	07800713          	li	a4,120
   1259c:	c45ff06f          	j	121e0 <_vfprintf_r+0x1dcc>
   125a0:	00013583          	ld	a1,0(sp)
   125a4:	10010613          	add	a2,sp,256
   125a8:	00098513          	mv	a0,s3
   125ac:	6f9080ef          	jal	1b4a4 <__sprint_r>
   125b0:	00050463          	beqz	a0,125b8 <_vfprintf_r+0x21a4>
   125b4:	bf1fe06f          	j	111a4 <_vfprintf_r+0xd90>
   125b8:	0d812683          	lw	a3,216(sp)
   125bc:	11013703          	ld	a4,272(sp)
   125c0:	18010413          	add	s0,sp,384
   125c4:	ea9fe06f          	j	1146c <_vfprintf_r+0x1058>
   125c8:	02d00793          	li	a5,45
   125cc:	0cf107a3          	sb	a5,207(sp)
   125d0:	02d00713          	li	a4,45
   125d4:	d8cff06f          	j	11b60 <_vfprintf_r+0x174c>
   125d8:	00054683          	lbu	a3,0(a0)
   125dc:	03000713          	li	a4,48
   125e0:	00e68863          	beq	a3,a4,125f0 <_vfprintf_r+0x21dc>
   125e4:	0d812683          	lw	a3,216(sp)
   125e8:	00dd0d33          	add	s10,s10,a3
   125ec:	985ff06f          	j	11f70 <_vfprintf_r+0x1b5c>
   125f0:	00000613          	li	a2,0
   125f4:	00000693          	li	a3,0
   125f8:	000b8513          	mv	a0,s7
   125fc:	000c0593          	mv	a1,s8
   12600:	02613823          	sd	t1,48(sp)
   12604:	6dd0d0ef          	jal	204e0 <__eqtf2>
   12608:	03013303          	ld	t1,48(sp)
   1260c:	fc050ce3          	beqz	a0,125e4 <_vfprintf_r+0x21d0>
   12610:	00100713          	li	a4,1
   12614:	412706bb          	subw	a3,a4,s2
   12618:	0cd12c23          	sw	a3,216(sp)
   1261c:	00dd0d33          	add	s10,s10,a3
   12620:	951ff06f          	j	11f70 <_vfprintf_r+0x1b5c>
   12624:	0cf14703          	lbu	a4,207(sp)
   12628:	03513023          	sd	s5,32(sp)
   1262c:	04013423          	sd	zero,72(sp)
   12630:	04013023          	sd	zero,64(sp)
   12634:	02013823          	sd	zero,48(sp)
   12638:	00030c13          	mv	s8,t1
   1263c:	00030d13          	mv	s10,t1
   12640:	00000313          	li	t1,0
   12644:	00070463          	beqz	a4,1264c <_vfprintf_r+0x2238>
   12648:	ce4fe06f          	j	10b2c <_vfprintf_r+0x718>
   1264c:	808fe06f          	j	10654 <_vfprintf_r+0x240>
   12650:	00013583          	ld	a1,0(sp)
   12654:	10010613          	add	a2,sp,256
   12658:	00098513          	mv	a0,s3
   1265c:	649080ef          	jal	1b4a4 <__sprint_r>
   12660:	00050463          	beqz	a0,12668 <_vfprintf_r+0x2254>
   12664:	b41fe06f          	j	111a4 <_vfprintf_r+0xd90>
   12668:	0d812603          	lw	a2,216(sp)
   1266c:	03813783          	ld	a5,56(sp)
   12670:	11013703          	ld	a4,272(sp)
   12674:	18010413          	add	s0,sp,384
   12678:	40c7863b          	subw	a2,a5,a2
   1267c:	e3dfe06f          	j	114b8 <_vfprintf_r+0x10a4>
   12680:	000227b7          	lui	a5,0x22
   12684:	ce878b13          	add	s6,a5,-792 # 21ce8 <__clzdi2+0x88>
   12688:	ce8ff06f          	j	11b70 <_vfprintf_r+0x175c>
   1268c:	00090d93          	mv	s11,s2
   12690:	c31fe06f          	j	112c0 <_vfprintf_r+0xeac>
   12694:	00022f37          	lui	t5,0x22
   12698:	ff000593          	li	a1,-16
   1269c:	40c00cbb          	negw	s9,a2
   126a0:	f38f0d93          	add	s11,t5,-200 # 21f38 <zeroes.0>
   126a4:	01000d13          	li	s10,16
   126a8:	00700a93          	li	s5,7
   126ac:	00b64863          	blt	a2,a1,126bc <_vfprintf_r+0x22a8>
   126b0:	1100006f          	j	127c0 <_vfprintf_r+0x23ac>
   126b4:	ff0c8c9b          	addw	s9,s9,-16
   126b8:	119d5463          	bge	s10,s9,127c0 <_vfprintf_r+0x23ac>
   126bc:	0016869b          	addw	a3,a3,1
   126c0:	01070713          	add	a4,a4,16
   126c4:	01b43023          	sd	s11,0(s0)
   126c8:	01a43423          	sd	s10,8(s0)
   126cc:	10e13823          	sd	a4,272(sp)
   126d0:	10d12423          	sw	a3,264(sp)
   126d4:	01040413          	add	s0,s0,16
   126d8:	fcdadee3          	bge	s5,a3,126b4 <_vfprintf_r+0x22a0>
   126dc:	00013583          	ld	a1,0(sp)
   126e0:	10010613          	add	a2,sp,256
   126e4:	00098513          	mv	a0,s3
   126e8:	5bd080ef          	jal	1b4a4 <__sprint_r>
   126ec:	00050463          	beqz	a0,126f4 <_vfprintf_r+0x22e0>
   126f0:	ab5fe06f          	j	111a4 <_vfprintf_r+0xd90>
   126f4:	11013703          	ld	a4,272(sp)
   126f8:	10812683          	lw	a3,264(sp)
   126fc:	18010413          	add	s0,sp,384
   12700:	fb5ff06f          	j	126b4 <_vfprintf_r+0x22a0>
   12704:	04013783          	ld	a5,64(sp)
   12708:	0017f713          	and	a4,a5,1
   1270c:	03013783          	ld	a5,48(sp)
   12710:	00e36733          	or	a4,t1,a4
   12714:	28f05a63          	blez	a5,129a8 <_vfprintf_r+0x2594>
   12718:	26071a63          	bnez	a4,1298c <_vfprintf_r+0x2578>
   1271c:	03013d03          	ld	s10,48(sp)
   12720:	06600c93          	li	s9,102
   12724:	04013783          	ld	a5,64(sp)
   12728:	4007f713          	and	a4,a5,1024
   1272c:	1c071863          	bnez	a4,128fc <_vfprintf_r+0x24e8>
   12730:	fffd4813          	not	a6,s10
   12734:	43f85813          	sra	a6,a6,0x3f
   12738:	010d7833          	and	a6,s10,a6
   1273c:	09013903          	ld	s2,144(sp)
   12740:	00080c1b          	sext.w	s8,a6
   12744:	de1ff06f          	j	12524 <_vfprintf_r+0x2110>
   12748:	05813783          	ld	a5,88(sp)
   1274c:	03813703          	ld	a4,56(sp)
   12750:	06700c93          	li	s9,103
   12754:	00e78d3b          	addw	s10,a5,a4
   12758:	03013783          	ld	a5,48(sp)
   1275c:	fcf044e3          	bgtz	a5,12724 <_vfprintf_r+0x2310>
   12760:	40fd073b          	subw	a4,s10,a5
   12764:	0017071b          	addw	a4,a4,1
   12768:	00070d1b          	sext.w	s10,a4
   1276c:	fffd4613          	not	a2,s10
   12770:	43f65613          	sra	a2,a2,0x3f
   12774:	00c77733          	and	a4,a4,a2
   12778:	09013903          	ld	s2,144(sp)
   1277c:	00070c1b          	sext.w	s8,a4
   12780:	da5ff06f          	j	12524 <_vfprintf_r+0x2110>
   12784:	fff00793          	li	a5,-1
   12788:	00f13823          	sd	a5,16(sp)
   1278c:	810fe06f          	j	1079c <_vfprintf_r+0x388>
   12790:	0e210713          	add	a4,sp,226
   12794:	00061863          	bnez	a2,127a4 <_vfprintf_r+0x2390>
   12798:	03000713          	li	a4,48
   1279c:	0ee10123          	sb	a4,226(sp)
   127a0:	0e310713          	add	a4,sp,227
   127a4:	20010793          	add	a5,sp,512
   127a8:	40f706b3          	sub	a3,a4,a5
   127ac:	030d0d1b          	addw	s10,s10,48
   127b0:	1216879b          	addw	a5,a3,289
   127b4:	01a70023          	sb	s10,0(a4)
   127b8:	06f13823          	sd	a5,112(sp)
   127bc:	8e1ff06f          	j	1209c <_vfprintf_r+0x1c88>
   127c0:	0016869b          	addw	a3,a3,1
   127c4:	01970733          	add	a4,a4,s9
   127c8:	01b43023          	sd	s11,0(s0)
   127cc:	01943423          	sd	s9,8(s0)
   127d0:	10e13823          	sd	a4,272(sp)
   127d4:	10d12423          	sw	a3,264(sp)
   127d8:	00700613          	li	a2,7
   127dc:	aed65e63          	bge	a2,a3,11ad8 <_vfprintf_r+0x16c4>
   127e0:	00013583          	ld	a1,0(sp)
   127e4:	10010613          	add	a2,sp,256
   127e8:	00098513          	mv	a0,s3
   127ec:	4b9080ef          	jal	1b4a4 <__sprint_r>
   127f0:	00050463          	beqz	a0,127f8 <_vfprintf_r+0x23e4>
   127f4:	9b1fe06f          	j	111a4 <_vfprintf_r+0xd90>
   127f8:	11013703          	ld	a4,272(sp)
   127fc:	10812683          	lw	a3,264(sp)
   12800:	18010413          	add	s0,sp,384
   12804:	bd0ff06f          	j	11bd4 <_vfprintf_r+0x17c0>
   12808:	03013783          	ld	a5,48(sp)
   1280c:	000a8693          	mv	a3,s5
   12810:	0ef13423          	sd	a5,232(sp)
   12814:	03813783          	ld	a5,56(sp)
   12818:	fffac603          	lbu	a2,-1(s5)
   1281c:	00f7c583          	lbu	a1,15(a5)
   12820:	02c59063          	bne	a1,a2,12840 <_vfprintf_r+0x242c>
   12824:	03000513          	li	a0,48
   12828:	fea68fa3          	sb	a0,-1(a3)
   1282c:	0e813683          	ld	a3,232(sp)
   12830:	fff68793          	add	a5,a3,-1
   12834:	0ef13423          	sd	a5,232(sp)
   12838:	fff6c603          	lbu	a2,-1(a3)
   1283c:	fec586e3          	beq	a1,a2,12828 <_vfprintf_r+0x2414>
   12840:	0016059b          	addw	a1,a2,1
   12844:	03900513          	li	a0,57
   12848:	0ff5f593          	zext.b	a1,a1
   1284c:	02a60a63          	beq	a2,a0,12880 <_vfprintf_r+0x246c>
   12850:	feb68fa3          	sb	a1,-1(a3)
   12854:	000a8c13          	mv	s8,s5
   12858:	b8dff06f          	j	123e4 <_vfprintf_r+0x1fd0>
   1285c:	0013059b          	addw	a1,t1,1
   12860:	00098513          	mv	a0,s3
   12864:	00613c23          	sd	t1,24(sp)
   12868:	238040ef          	jal	16aa0 <_malloc_r>
   1286c:	01813303          	ld	t1,24(sp)
   12870:	00050b13          	mv	s6,a0
   12874:	1a050e63          	beqz	a0,12a30 <_vfprintf_r+0x261c>
   12878:	00a13c23          	sd	a0,24(sp)
   1287c:	98dff06f          	j	12208 <_vfprintf_r+0x1df4>
   12880:	03813783          	ld	a5,56(sp)
   12884:	00a7c583          	lbu	a1,10(a5)
   12888:	feb68fa3          	sb	a1,-1(a3)
   1288c:	fc9ff06f          	j	12854 <_vfprintf_r+0x2440>
   12890:	0b813603          	ld	a2,184(sp)
   12894:	03313823          	sd	s3,48(sp)
   12898:	000b8993          	mv	s3,s7
   1289c:	000b0b93          	mv	s7,s6
   128a0:	000d0b13          	mv	s6,s10
   128a4:	00cb063b          	addw	a2,s6,a2
   128a8:	000a8d13          	mv	s10,s5
   128ac:	000a0a93          	mv	s5,s4
   128b0:	04813483          	ld	s1,72(sp)
   128b4:	0a813303          	ld	t1,168(sp)
   128b8:	0b013403          	ld	s0,176(sp)
   128bc:	0a013a03          	ld	s4,160(sp)
   128c0:	41560dbb          	subw	s11,a2,s5
   128c4:	ab9ff06f          	j	1237c <_vfprintf_r+0x1f68>
   128c8:	00030463          	beqz	t1,128d0 <_vfprintf_r+0x24bc>
   128cc:	830fe06f          	j	108fc <_vfprintf_r+0x4e8>
   128d0:	00100313          	li	t1,1
   128d4:	828fe06f          	j	108fc <_vfprintf_r+0x4e8>
   128d8:	00600313          	li	t1,6
   128dc:	820fe06f          	j	108fc <_vfprintf_r+0x4e8>
   128e0:	04013783          	ld	a5,64(sp)
   128e4:	0017f613          	and	a2,a5,1
   128e8:	fc060a63          	beqz	a2,120bc <_vfprintf_r+0x1ca8>
   128ec:	fc8ff06f          	j	120b4 <_vfprintf_r+0x1ca0>
   128f0:	00f72023          	sw	a5,0(a4)
   128f4:	c94fe06f          	j	10d88 <_vfprintf_r+0x974>
   128f8:	06700c93          	li	s9,103
   128fc:	07813683          	ld	a3,120(sp)
   12900:	0ff00613          	li	a2,255
   12904:	0006c703          	lbu	a4,0(a3)
   12908:	10c70e63          	beq	a4,a2,12a24 <_vfprintf_r+0x2610>
   1290c:	03013783          	ld	a5,48(sp)
   12910:	00000813          	li	a6,0
   12914:	00000513          	li	a0,0
   12918:	0ff00593          	li	a1,255
   1291c:	0007061b          	sext.w	a2,a4
   12920:	00f75e63          	bge	a4,a5,1293c <_vfprintf_r+0x2528>
   12924:	0016c703          	lbu	a4,1(a3)
   12928:	40c787bb          	subw	a5,a5,a2
   1292c:	04070a63          	beqz	a4,12980 <_vfprintf_r+0x256c>
   12930:	0015051b          	addw	a0,a0,1
   12934:	00168693          	add	a3,a3,1
   12938:	feb712e3          	bne	a4,a1,1291c <_vfprintf_r+0x2508>
   1293c:	02f13823          	sd	a5,48(sp)
   12940:	06d13c23          	sd	a3,120(sp)
   12944:	04a13023          	sd	a0,64(sp)
   12948:	05013423          	sd	a6,72(sp)
   1294c:	04013703          	ld	a4,64(sp)
   12950:	04813783          	ld	a5,72(sp)
   12954:	08013583          	ld	a1,128(sp)
   12958:	00e7853b          	addw	a0,a5,a4
   1295c:	1e00f0ef          	jal	21b3c <__muldi3>
   12960:	01a5073b          	addw	a4,a0,s10
   12964:	00070d1b          	sext.w	s10,a4
   12968:	fffd4613          	not	a2,s10
   1296c:	43f65613          	sra	a2,a2,0x3f
   12970:	00c77733          	and	a4,a4,a2
   12974:	09013903          	ld	s2,144(sp)
   12978:	00070c1b          	sext.w	s8,a4
   1297c:	f6cff06f          	j	120e8 <_vfprintf_r+0x1cd4>
   12980:	0006c703          	lbu	a4,0(a3)
   12984:	0018081b          	addw	a6,a6,1
   12988:	fb1ff06f          	j	12938 <_vfprintf_r+0x2524>
   1298c:	05813703          	ld	a4,88(sp)
   12990:	06600c93          	li	s9,102
   12994:	00f706bb          	addw	a3,a4,a5
   12998:	00668d3b          	addw	s10,a3,t1
   1299c:	d89ff06f          	j	12724 <_vfprintf_r+0x2310>
   129a0:	07000693          	li	a3,112
   129a4:	e4cff06f          	j	11ff0 <_vfprintf_r+0x1bdc>
   129a8:	00071c63          	bnez	a4,129c0 <_vfprintf_r+0x25ac>
   129ac:	09013903          	ld	s2,144(sp)
   129b0:	00100c13          	li	s8,1
   129b4:	06600c93          	li	s9,102
   129b8:	00100d13          	li	s10,1
   129bc:	b69ff06f          	j	12524 <_vfprintf_r+0x2110>
   129c0:	05813783          	ld	a5,88(sp)
   129c4:	09013903          	ld	s2,144(sp)
   129c8:	06600c93          	li	s9,102
   129cc:	0017871b          	addw	a4,a5,1
   129d0:	0067073b          	addw	a4,a4,t1
   129d4:	00070d1b          	sext.w	s10,a4
   129d8:	fffd4613          	not	a2,s10
   129dc:	43f65613          	sra	a2,a2,0x3f
   129e0:	00c77733          	and	a4,a4,a2
   129e4:	00070c1b          	sext.w	s8,a4
   129e8:	b3dff06f          	j	12524 <_vfprintf_r+0x2110>
   129ec:	02013683          	ld	a3,32(sp)
   129f0:	0006a703          	lw	a4,0(a3)
   129f4:	00868693          	add	a3,a3,8
   129f8:	00070313          	mv	t1,a4
   129fc:	00075463          	bgez	a4,12a04 <_vfprintf_r+0x25f0>
   12a00:	fff00313          	li	t1,-1
   12a04:	0014ce03          	lbu	t3,1(s1)
   12a08:	00030a9b          	sext.w	s5,t1
   12a0c:	02d13023          	sd	a3,32(sp)
   12a10:	00078493          	mv	s1,a5
   12a14:	badfd06f          	j	105c0 <_vfprintf_r+0x1ac>
   12a18:	00200793          	li	a5,2
   12a1c:	06f13823          	sd	a5,112(sp)
   12a20:	e7cff06f          	j	1209c <_vfprintf_r+0x1c88>
   12a24:	04013423          	sd	zero,72(sp)
   12a28:	04013023          	sd	zero,64(sp)
   12a2c:	f21ff06f          	j	1294c <_vfprintf_r+0x2538>
   12a30:	00013703          	ld	a4,0(sp)
   12a34:	01075783          	lhu	a5,16(a4)
   12a38:	0407e793          	or	a5,a5,64
   12a3c:	00f71823          	sh	a5,16(a4)
   12a40:	d49fd06f          	j	10788 <_vfprintf_r+0x374>

0000000000012a44 <vfprintf>:
   12a44:	00050793          	mv	a5,a0
   12a48:	7581b503          	ld	a0,1880(gp) # 24d40 <_impure_ptr>
   12a4c:	00060693          	mv	a3,a2
   12a50:	00058613          	mv	a2,a1
   12a54:	00078593          	mv	a1,a5
   12a58:	9bdfd06f          	j	10414 <_vfprintf_r>

0000000000012a5c <__sbprintf>:
   12a5c:	01059783          	lh	a5,16(a1)
   12a60:	0125d703          	lhu	a4,18(a1)
   12a64:	0ac5a303          	lw	t1,172(a1)
   12a68:	ffd7f793          	and	a5,a5,-3
   12a6c:	0107979b          	sllw	a5,a5,0x10
   12a70:	0305b883          	ld	a7,48(a1)
   12a74:	0405b803          	ld	a6,64(a1)
   12a78:	0107171b          	sllw	a4,a4,0x10
   12a7c:	0107d79b          	srlw	a5,a5,0x10
   12a80:	b3010113          	add	sp,sp,-1232
   12a84:	00e7e7b3          	or	a5,a5,a4
   12a88:	4c813023          	sd	s0,1216(sp)
   12a8c:	40000713          	li	a4,1024
   12a90:	00f12823          	sw	a5,16(sp)
   12a94:	00058413          	mv	s0,a1
   12a98:	0b010793          	add	a5,sp,176
   12a9c:	00010593          	mv	a1,sp
   12aa0:	4a913c23          	sd	s1,1208(sp)
   12aa4:	4b213823          	sd	s2,1200(sp)
   12aa8:	4c113423          	sd	ra,1224(sp)
   12aac:	00050913          	mv	s2,a0
   12ab0:	0a612623          	sw	t1,172(sp)
   12ab4:	03113823          	sd	a7,48(sp)
   12ab8:	05013023          	sd	a6,64(sp)
   12abc:	00f13023          	sd	a5,0(sp)
   12ac0:	00f13c23          	sd	a5,24(sp)
   12ac4:	00e12623          	sw	a4,12(sp)
   12ac8:	02e12023          	sw	a4,32(sp)
   12acc:	02012423          	sw	zero,40(sp)
   12ad0:	945fd0ef          	jal	10414 <_vfprintf_r>
   12ad4:	00050493          	mv	s1,a0
   12ad8:	02055c63          	bgez	a0,12b10 <__sbprintf+0xb4>
   12adc:	01015783          	lhu	a5,16(sp)
   12ae0:	0407f793          	and	a5,a5,64
   12ae4:	00078863          	beqz	a5,12af4 <__sbprintf+0x98>
   12ae8:	01045783          	lhu	a5,16(s0)
   12aec:	0407e793          	or	a5,a5,64
   12af0:	00f41823          	sh	a5,16(s0)
   12af4:	4c813083          	ld	ra,1224(sp)
   12af8:	4c013403          	ld	s0,1216(sp)
   12afc:	4b013903          	ld	s2,1200(sp)
   12b00:	00048513          	mv	a0,s1
   12b04:	4b813483          	ld	s1,1208(sp)
   12b08:	4d010113          	add	sp,sp,1232
   12b0c:	00008067          	ret
   12b10:	00010593          	mv	a1,sp
   12b14:	00090513          	mv	a0,s2
   12b18:	4c4000ef          	jal	12fdc <_fflush_r>
   12b1c:	fc0500e3          	beqz	a0,12adc <__sbprintf+0x80>
   12b20:	fff00493          	li	s1,-1
   12b24:	fb9ff06f          	j	12adc <__sbprintf+0x80>

0000000000012b28 <__swsetup_r>:
   12b28:	7581b783          	ld	a5,1880(gp) # 24d40 <_impure_ptr>
   12b2c:	fe010113          	add	sp,sp,-32
   12b30:	00813823          	sd	s0,16(sp)
   12b34:	00913423          	sd	s1,8(sp)
   12b38:	00113c23          	sd	ra,24(sp)
   12b3c:	00050493          	mv	s1,a0
   12b40:	00058413          	mv	s0,a1
   12b44:	00078663          	beqz	a5,12b50 <__swsetup_r+0x28>
   12b48:	0507a703          	lw	a4,80(a5)
   12b4c:	08070063          	beqz	a4,12bcc <__swsetup_r+0xa4>
   12b50:	01041783          	lh	a5,16(s0)
   12b54:	0087f713          	and	a4,a5,8
   12b58:	08070463          	beqz	a4,12be0 <__swsetup_r+0xb8>
   12b5c:	01843703          	ld	a4,24(s0)
   12b60:	0a070063          	beqz	a4,12c00 <__swsetup_r+0xd8>
   12b64:	0017f693          	and	a3,a5,1
   12b68:	02068863          	beqz	a3,12b98 <__swsetup_r+0x70>
   12b6c:	02042683          	lw	a3,32(s0)
   12b70:	00042623          	sw	zero,12(s0)
   12b74:	00000513          	li	a0,0
   12b78:	40d006bb          	negw	a3,a3
   12b7c:	02d42423          	sw	a3,40(s0)
   12b80:	02070a63          	beqz	a4,12bb4 <__swsetup_r+0x8c>
   12b84:	01813083          	ld	ra,24(sp)
   12b88:	01013403          	ld	s0,16(sp)
   12b8c:	00813483          	ld	s1,8(sp)
   12b90:	02010113          	add	sp,sp,32
   12b94:	00008067          	ret
   12b98:	0027f693          	and	a3,a5,2
   12b9c:	00000613          	li	a2,0
   12ba0:	00069463          	bnez	a3,12ba8 <__swsetup_r+0x80>
   12ba4:	02042603          	lw	a2,32(s0)
   12ba8:	00c42623          	sw	a2,12(s0)
   12bac:	00000513          	li	a0,0
   12bb0:	fc071ae3          	bnez	a4,12b84 <__swsetup_r+0x5c>
   12bb4:	0807f713          	and	a4,a5,128
   12bb8:	fc0706e3          	beqz	a4,12b84 <__swsetup_r+0x5c>
   12bbc:	0407e793          	or	a5,a5,64
   12bc0:	00f41823          	sh	a5,16(s0)
   12bc4:	fff00513          	li	a0,-1
   12bc8:	fbdff06f          	j	12b84 <__swsetup_r+0x5c>
   12bcc:	00078513          	mv	a0,a5
   12bd0:	039000ef          	jal	13408 <__sinit>
   12bd4:	01041783          	lh	a5,16(s0)
   12bd8:	0087f713          	and	a4,a5,8
   12bdc:	f80710e3          	bnez	a4,12b5c <__swsetup_r+0x34>
   12be0:	0107f713          	and	a4,a5,16
   12be4:	06070a63          	beqz	a4,12c58 <__swsetup_r+0x130>
   12be8:	0047f713          	and	a4,a5,4
   12bec:	02071c63          	bnez	a4,12c24 <__swsetup_r+0xfc>
   12bf0:	01843703          	ld	a4,24(s0)
   12bf4:	0087e793          	or	a5,a5,8
   12bf8:	00f41823          	sh	a5,16(s0)
   12bfc:	f60714e3          	bnez	a4,12b64 <__swsetup_r+0x3c>
   12c00:	2807f693          	and	a3,a5,640
   12c04:	20000613          	li	a2,512
   12c08:	f4c68ee3          	beq	a3,a2,12b64 <__swsetup_r+0x3c>
   12c0c:	00040593          	mv	a1,s0
   12c10:	00048513          	mv	a0,s1
   12c14:	425030ef          	jal	16838 <__smakebuf_r>
   12c18:	01041783          	lh	a5,16(s0)
   12c1c:	01843703          	ld	a4,24(s0)
   12c20:	f45ff06f          	j	12b64 <__swsetup_r+0x3c>
   12c24:	05843583          	ld	a1,88(s0)
   12c28:	00058e63          	beqz	a1,12c44 <__swsetup_r+0x11c>
   12c2c:	07440713          	add	a4,s0,116
   12c30:	00e58863          	beq	a1,a4,12c40 <__swsetup_r+0x118>
   12c34:	00048513          	mv	a0,s1
   12c38:	1a9000ef          	jal	135e0 <_free_r>
   12c3c:	01041783          	lh	a5,16(s0)
   12c40:	04043c23          	sd	zero,88(s0)
   12c44:	01843703          	ld	a4,24(s0)
   12c48:	fdb7f793          	and	a5,a5,-37
   12c4c:	00042423          	sw	zero,8(s0)
   12c50:	00e43023          	sd	a4,0(s0)
   12c54:	fa1ff06f          	j	12bf4 <__swsetup_r+0xcc>
   12c58:	00900713          	li	a4,9
   12c5c:	00e4a023          	sw	a4,0(s1)
   12c60:	0407e793          	or	a5,a5,64
   12c64:	f5dff06f          	j	12bc0 <__swsetup_r+0x98>

0000000000012c68 <__call_exitprocs>:
   12c68:	fb010113          	add	sp,sp,-80
   12c6c:	03413023          	sd	s4,32(sp)
   12c70:	7481ba03          	ld	s4,1864(gp) # 24d30 <_global_impure_ptr>
   12c74:	03213823          	sd	s2,48(sp)
   12c78:	04113423          	sd	ra,72(sp)
   12c7c:	1f8a3903          	ld	s2,504(s4)
   12c80:	04813023          	sd	s0,64(sp)
   12c84:	02913c23          	sd	s1,56(sp)
   12c88:	03313423          	sd	s3,40(sp)
   12c8c:	01513c23          	sd	s5,24(sp)
   12c90:	01613823          	sd	s6,16(sp)
   12c94:	01713423          	sd	s7,8(sp)
   12c98:	01813023          	sd	s8,0(sp)
   12c9c:	04090063          	beqz	s2,12cdc <__call_exitprocs+0x74>
   12ca0:	00050b13          	mv	s6,a0
   12ca4:	00058b93          	mv	s7,a1
   12ca8:	00100a93          	li	s5,1
   12cac:	fff00993          	li	s3,-1
   12cb0:	00892483          	lw	s1,8(s2)
   12cb4:	fff4841b          	addw	s0,s1,-1
   12cb8:	02044263          	bltz	s0,12cdc <__call_exitprocs+0x74>
   12cbc:	00349493          	sll	s1,s1,0x3
   12cc0:	009904b3          	add	s1,s2,s1
   12cc4:	040b8463          	beqz	s7,12d0c <__call_exitprocs+0xa4>
   12cc8:	2084b783          	ld	a5,520(s1)
   12ccc:	05778063          	beq	a5,s7,12d0c <__call_exitprocs+0xa4>
   12cd0:	fff4041b          	addw	s0,s0,-1
   12cd4:	ff848493          	add	s1,s1,-8
   12cd8:	ff3416e3          	bne	s0,s3,12cc4 <__call_exitprocs+0x5c>
   12cdc:	04813083          	ld	ra,72(sp)
   12ce0:	04013403          	ld	s0,64(sp)
   12ce4:	03813483          	ld	s1,56(sp)
   12ce8:	03013903          	ld	s2,48(sp)
   12cec:	02813983          	ld	s3,40(sp)
   12cf0:	02013a03          	ld	s4,32(sp)
   12cf4:	01813a83          	ld	s5,24(sp)
   12cf8:	01013b03          	ld	s6,16(sp)
   12cfc:	00813b83          	ld	s7,8(sp)
   12d00:	00013c03          	ld	s8,0(sp)
   12d04:	05010113          	add	sp,sp,80
   12d08:	00008067          	ret
   12d0c:	00892783          	lw	a5,8(s2)
   12d10:	0084b703          	ld	a4,8(s1)
   12d14:	fff7879b          	addw	a5,a5,-1
   12d18:	06878263          	beq	a5,s0,12d7c <__call_exitprocs+0x114>
   12d1c:	0004b423          	sd	zero,8(s1)
   12d20:	fa0708e3          	beqz	a4,12cd0 <__call_exitprocs+0x68>
   12d24:	31092783          	lw	a5,784(s2)
   12d28:	008a96bb          	sllw	a3,s5,s0
   12d2c:	00892c03          	lw	s8,8(s2)
   12d30:	00d7f7b3          	and	a5,a5,a3
   12d34:	0007879b          	sext.w	a5,a5
   12d38:	02079263          	bnez	a5,12d5c <__call_exitprocs+0xf4>
   12d3c:	000700e7          	jalr	a4
   12d40:	00892703          	lw	a4,8(s2)
   12d44:	1f8a3783          	ld	a5,504(s4)
   12d48:	01871463          	bne	a4,s8,12d50 <__call_exitprocs+0xe8>
   12d4c:	f92782e3          	beq	a5,s2,12cd0 <__call_exitprocs+0x68>
   12d50:	f80786e3          	beqz	a5,12cdc <__call_exitprocs+0x74>
   12d54:	00078913          	mv	s2,a5
   12d58:	f59ff06f          	j	12cb0 <__call_exitprocs+0x48>
   12d5c:	31492783          	lw	a5,788(s2)
   12d60:	1084b583          	ld	a1,264(s1)
   12d64:	00d7f7b3          	and	a5,a5,a3
   12d68:	0007879b          	sext.w	a5,a5
   12d6c:	00079c63          	bnez	a5,12d84 <__call_exitprocs+0x11c>
   12d70:	000b0513          	mv	a0,s6
   12d74:	000700e7          	jalr	a4
   12d78:	fc9ff06f          	j	12d40 <__call_exitprocs+0xd8>
   12d7c:	00892423          	sw	s0,8(s2)
   12d80:	fa1ff06f          	j	12d20 <__call_exitprocs+0xb8>
   12d84:	00058513          	mv	a0,a1
   12d88:	000700e7          	jalr	a4
   12d8c:	fb5ff06f          	j	12d40 <__call_exitprocs+0xd8>

0000000000012d90 <__sflush_r>:
   12d90:	01059783          	lh	a5,16(a1)
   12d94:	fd010113          	add	sp,sp,-48
   12d98:	02813023          	sd	s0,32(sp)
   12d9c:	01313423          	sd	s3,8(sp)
   12da0:	02113423          	sd	ra,40(sp)
   12da4:	00913c23          	sd	s1,24(sp)
   12da8:	01213823          	sd	s2,16(sp)
   12dac:	0087f713          	and	a4,a5,8
   12db0:	00058413          	mv	s0,a1
   12db4:	00050993          	mv	s3,a0
   12db8:	12071263          	bnez	a4,12edc <__sflush_r+0x14c>
   12dbc:	00001737          	lui	a4,0x1
   12dc0:	80070713          	add	a4,a4,-2048 # 800 <exit-0xf8e8>
   12dc4:	0085a683          	lw	a3,8(a1)
   12dc8:	00e7e733          	or	a4,a5,a4
   12dcc:	00e59823          	sh	a4,16(a1)
   12dd0:	18d05863          	blez	a3,12f60 <__sflush_r+0x1d0>
   12dd4:	04843803          	ld	a6,72(s0)
   12dd8:	0e080263          	beqz	a6,12ebc <__sflush_r+0x12c>
   12ddc:	00c7d793          	srl	a5,a5,0xc
   12de0:	0009a483          	lw	s1,0(s3)
   12de4:	0017f793          	and	a5,a5,1
   12de8:	0009a023          	sw	zero,0(s3)
   12dec:	03043583          	ld	a1,48(s0)
   12df0:	18079063          	bnez	a5,12f70 <__sflush_r+0x1e0>
   12df4:	00000613          	li	a2,0
   12df8:	00100693          	li	a3,1
   12dfc:	00098513          	mv	a0,s3
   12e00:	000800e7          	jalr	a6
   12e04:	fff00793          	li	a5,-1
   12e08:	00050613          	mv	a2,a0
   12e0c:	1af50063          	beq	a0,a5,12fac <__sflush_r+0x21c>
   12e10:	01041703          	lh	a4,16(s0)
   12e14:	04843803          	ld	a6,72(s0)
   12e18:	03043583          	ld	a1,48(s0)
   12e1c:	00477713          	and	a4,a4,4
   12e20:	00070e63          	beqz	a4,12e3c <__sflush_r+0xac>
   12e24:	00842703          	lw	a4,8(s0)
   12e28:	05843783          	ld	a5,88(s0)
   12e2c:	40e60633          	sub	a2,a2,a4
   12e30:	00078663          	beqz	a5,12e3c <__sflush_r+0xac>
   12e34:	07042783          	lw	a5,112(s0)
   12e38:	40f60633          	sub	a2,a2,a5
   12e3c:	00000693          	li	a3,0
   12e40:	00098513          	mv	a0,s3
   12e44:	000800e7          	jalr	a6
   12e48:	fff00793          	li	a5,-1
   12e4c:	12f51663          	bne	a0,a5,12f78 <__sflush_r+0x1e8>
   12e50:	0009a683          	lw	a3,0(s3)
   12e54:	01d00793          	li	a5,29
   12e58:	0cd7ee63          	bltu	a5,a3,12f34 <__sflush_r+0x1a4>
   12e5c:	dfc00737          	lui	a4,0xdfc00
   12e60:	ffe70713          	add	a4,a4,-2 # ffffffffdfbffffe <__BSS_END__+0xffffffffdfbdb216>
   12e64:	40d75733          	sra	a4,a4,a3
   12e68:	00177713          	and	a4,a4,1
   12e6c:	01041783          	lh	a5,16(s0)
   12e70:	0c071463          	bnez	a4,12f38 <__sflush_r+0x1a8>
   12e74:	01843603          	ld	a2,24(s0)
   12e78:	fffff737          	lui	a4,0xfffff
   12e7c:	7ff70713          	add	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdaa17>
   12e80:	00e7f733          	and	a4,a5,a4
   12e84:	00c7d793          	srl	a5,a5,0xc
   12e88:	00e41823          	sh	a4,16(s0)
   12e8c:	00042423          	sw	zero,8(s0)
   12e90:	00c43023          	sd	a2,0(s0)
   12e94:	0017f793          	and	a5,a5,1
   12e98:	12079c63          	bnez	a5,12fd0 <__sflush_r+0x240>
   12e9c:	05843583          	ld	a1,88(s0)
   12ea0:	0099a023          	sw	s1,0(s3)
   12ea4:	00058c63          	beqz	a1,12ebc <__sflush_r+0x12c>
   12ea8:	07440793          	add	a5,s0,116
   12eac:	00f58663          	beq	a1,a5,12eb8 <__sflush_r+0x128>
   12eb0:	00098513          	mv	a0,s3
   12eb4:	72c000ef          	jal	135e0 <_free_r>
   12eb8:	04043c23          	sd	zero,88(s0)
   12ebc:	00000513          	li	a0,0
   12ec0:	02813083          	ld	ra,40(sp)
   12ec4:	02013403          	ld	s0,32(sp)
   12ec8:	01813483          	ld	s1,24(sp)
   12ecc:	01013903          	ld	s2,16(sp)
   12ed0:	00813983          	ld	s3,8(sp)
   12ed4:	03010113          	add	sp,sp,48
   12ed8:	00008067          	ret
   12edc:	0185b903          	ld	s2,24(a1)
   12ee0:	fc090ee3          	beqz	s2,12ebc <__sflush_r+0x12c>
   12ee4:	0005b483          	ld	s1,0(a1)
   12ee8:	0037f793          	and	a5,a5,3
   12eec:	0125b023          	sd	s2,0(a1)
   12ef0:	412484bb          	subw	s1,s1,s2
   12ef4:	00000713          	li	a4,0
   12ef8:	00079463          	bnez	a5,12f00 <__sflush_r+0x170>
   12efc:	0205a703          	lw	a4,32(a1)
   12f00:	00e42623          	sw	a4,12(s0)
   12f04:	00904863          	bgtz	s1,12f14 <__sflush_r+0x184>
   12f08:	fb5ff06f          	j	12ebc <__sflush_r+0x12c>
   12f0c:	00a90933          	add	s2,s2,a0
   12f10:	fa9056e3          	blez	s1,12ebc <__sflush_r+0x12c>
   12f14:	04043783          	ld	a5,64(s0)
   12f18:	03043583          	ld	a1,48(s0)
   12f1c:	00048693          	mv	a3,s1
   12f20:	00090613          	mv	a2,s2
   12f24:	00098513          	mv	a0,s3
   12f28:	000780e7          	jalr	a5
   12f2c:	40a484bb          	subw	s1,s1,a0
   12f30:	fca04ee3          	bgtz	a0,12f0c <__sflush_r+0x17c>
   12f34:	01041783          	lh	a5,16(s0)
   12f38:	0407e793          	or	a5,a5,64
   12f3c:	02813083          	ld	ra,40(sp)
   12f40:	00f41823          	sh	a5,16(s0)
   12f44:	02013403          	ld	s0,32(sp)
   12f48:	01813483          	ld	s1,24(sp)
   12f4c:	01013903          	ld	s2,16(sp)
   12f50:	00813983          	ld	s3,8(sp)
   12f54:	fff00513          	li	a0,-1
   12f58:	03010113          	add	sp,sp,48
   12f5c:	00008067          	ret
   12f60:	0705a683          	lw	a3,112(a1)
   12f64:	e6d048e3          	bgtz	a3,12dd4 <__sflush_r+0x44>
   12f68:	00000513          	li	a0,0
   12f6c:	f55ff06f          	j	12ec0 <__sflush_r+0x130>
   12f70:	09043603          	ld	a2,144(s0)
   12f74:	ea9ff06f          	j	12e1c <__sflush_r+0x8c>
   12f78:	01041783          	lh	a5,16(s0)
   12f7c:	01843683          	ld	a3,24(s0)
   12f80:	fffff737          	lui	a4,0xfffff
   12f84:	7ff70713          	add	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdaa17>
   12f88:	00e7f733          	and	a4,a5,a4
   12f8c:	00c7d793          	srl	a5,a5,0xc
   12f90:	00e41823          	sh	a4,16(s0)
   12f94:	00042423          	sw	zero,8(s0)
   12f98:	00d43023          	sd	a3,0(s0)
   12f9c:	0017f793          	and	a5,a5,1
   12fa0:	ee078ee3          	beqz	a5,12e9c <__sflush_r+0x10c>
   12fa4:	08a43823          	sd	a0,144(s0)
   12fa8:	ef5ff06f          	j	12e9c <__sflush_r+0x10c>
   12fac:	0009a783          	lw	a5,0(s3)
   12fb0:	e60780e3          	beqz	a5,12e10 <__sflush_r+0x80>
   12fb4:	01d00713          	li	a4,29
   12fb8:	00e78663          	beq	a5,a4,12fc4 <__sflush_r+0x234>
   12fbc:	01600713          	li	a4,22
   12fc0:	f6e79ae3          	bne	a5,a4,12f34 <__sflush_r+0x1a4>
   12fc4:	0099a023          	sw	s1,0(s3)
   12fc8:	00000513          	li	a0,0
   12fcc:	ef5ff06f          	j	12ec0 <__sflush_r+0x130>
   12fd0:	ec0696e3          	bnez	a3,12e9c <__sflush_r+0x10c>
   12fd4:	08a43823          	sd	a0,144(s0)
   12fd8:	ec5ff06f          	j	12e9c <__sflush_r+0x10c>

0000000000012fdc <_fflush_r>:
   12fdc:	fe010113          	add	sp,sp,-32
   12fe0:	00813823          	sd	s0,16(sp)
   12fe4:	00113c23          	sd	ra,24(sp)
   12fe8:	00050413          	mv	s0,a0
   12fec:	00050663          	beqz	a0,12ff8 <_fflush_r+0x1c>
   12ff0:	05052783          	lw	a5,80(a0)
   12ff4:	02078063          	beqz	a5,13014 <_fflush_r+0x38>
   12ff8:	01059783          	lh	a5,16(a1)
   12ffc:	02079663          	bnez	a5,13028 <_fflush_r+0x4c>
   13000:	01813083          	ld	ra,24(sp)
   13004:	01013403          	ld	s0,16(sp)
   13008:	00000513          	li	a0,0
   1300c:	02010113          	add	sp,sp,32
   13010:	00008067          	ret
   13014:	00b13423          	sd	a1,8(sp)
   13018:	3f0000ef          	jal	13408 <__sinit>
   1301c:	00813583          	ld	a1,8(sp)
   13020:	01059783          	lh	a5,16(a1)
   13024:	fc078ee3          	beqz	a5,13000 <_fflush_r+0x24>
   13028:	00040513          	mv	a0,s0
   1302c:	01013403          	ld	s0,16(sp)
   13030:	01813083          	ld	ra,24(sp)
   13034:	02010113          	add	sp,sp,32
   13038:	d59ff06f          	j	12d90 <__sflush_r>

000000000001303c <fflush>:
   1303c:	06050663          	beqz	a0,130a8 <fflush+0x6c>
   13040:	fe010113          	add	sp,sp,-32
   13044:	00813823          	sd	s0,16(sp)
   13048:	00050413          	mv	s0,a0
   1304c:	7581b503          	ld	a0,1880(gp) # 24d40 <_impure_ptr>
   13050:	00113c23          	sd	ra,24(sp)
   13054:	00050663          	beqz	a0,13060 <fflush+0x24>
   13058:	05052783          	lw	a5,80(a0)
   1305c:	02078a63          	beqz	a5,13090 <fflush+0x54>
   13060:	01041783          	lh	a5,16(s0)
   13064:	00079c63          	bnez	a5,1307c <fflush+0x40>
   13068:	01813083          	ld	ra,24(sp)
   1306c:	01013403          	ld	s0,16(sp)
   13070:	00000513          	li	a0,0
   13074:	02010113          	add	sp,sp,32
   13078:	00008067          	ret
   1307c:	00040593          	mv	a1,s0
   13080:	01013403          	ld	s0,16(sp)
   13084:	01813083          	ld	ra,24(sp)
   13088:	02010113          	add	sp,sp,32
   1308c:	d05ff06f          	j	12d90 <__sflush_r>
   13090:	00a13423          	sd	a0,8(sp)
   13094:	374000ef          	jal	13408 <__sinit>
   13098:	01041783          	lh	a5,16(s0)
   1309c:	00813503          	ld	a0,8(sp)
   130a0:	fc0784e3          	beqz	a5,13068 <fflush+0x2c>
   130a4:	fd9ff06f          	j	1307c <fflush+0x40>
   130a8:	7481b503          	ld	a0,1864(gp) # 24d30 <_global_impure_ptr>
   130ac:	000135b7          	lui	a1,0x13
   130b0:	fdc58593          	add	a1,a1,-36 # 12fdc <_fflush_r>
   130b4:	10d0006f          	j	139c0 <_fwalk_reent>

00000000000130b8 <__fp_lock>:
   130b8:	00000513          	li	a0,0
   130bc:	00008067          	ret

00000000000130c0 <_cleanup_r>:
   130c0:	0001d5b7          	lui	a1,0x1d
   130c4:	bbc58593          	add	a1,a1,-1092 # 1cbbc <_fclose_r>
   130c8:	0f90006f          	j	139c0 <_fwalk_reent>

00000000000130cc <__fp_unlock>:
   130cc:	00000513          	li	a0,0
   130d0:	00008067          	ret

00000000000130d4 <__sinit.part.0>:
   130d4:	fc010113          	add	sp,sp,-64
   130d8:	000137b7          	lui	a5,0x13
   130dc:	02113c23          	sd	ra,56(sp)
   130e0:	02813823          	sd	s0,48(sp)
   130e4:	02913423          	sd	s1,40(sp)
   130e8:	03213023          	sd	s2,32(sp)
   130ec:	01313c23          	sd	s3,24(sp)
   130f0:	01413823          	sd	s4,16(sp)
   130f4:	01513423          	sd	s5,8(sp)
   130f8:	01613023          	sd	s6,0(sp)
   130fc:	00853403          	ld	s0,8(a0)
   13100:	0c078793          	add	a5,a5,192 # 130c0 <_cleanup_r>
   13104:	04f53c23          	sd	a5,88(a0)
   13108:	53850713          	add	a4,a0,1336
   1310c:	00300793          	li	a5,3
   13110:	52e53823          	sd	a4,1328(a0)
   13114:	52f52423          	sw	a5,1320(a0)
   13118:	52053023          	sd	zero,1312(a0)
   1311c:	00400793          	li	a5,4
   13120:	00050913          	mv	s2,a0
   13124:	00f42823          	sw	a5,16(s0)
   13128:	00800613          	li	a2,8
   1312c:	00000593          	li	a1,0
   13130:	00043023          	sd	zero,0(s0)
   13134:	00043423          	sd	zero,8(s0)
   13138:	0a042623          	sw	zero,172(s0)
   1313c:	00043c23          	sd	zero,24(s0)
   13140:	02042023          	sw	zero,32(s0)
   13144:	02042423          	sw	zero,40(s0)
   13148:	0a440513          	add	a0,s0,164
   1314c:	960fd0ef          	jal	102ac <memset>
   13150:	00019b37          	lui	s6,0x19
   13154:	01093483          	ld	s1,16(s2)
   13158:	00019ab7          	lui	s5,0x19
   1315c:	00019a37          	lui	s4,0x19
   13160:	000199b7          	lui	s3,0x19
   13164:	8fcb0b13          	add	s6,s6,-1796 # 188fc <__sread>
   13168:	960a8a93          	add	s5,s5,-1696 # 18960 <__swrite>
   1316c:	9e8a0a13          	add	s4,s4,-1560 # 189e8 <__sseek>
   13170:	a6098993          	add	s3,s3,-1440 # 18a60 <__sclose>
   13174:	000107b7          	lui	a5,0x10
   13178:	03643c23          	sd	s6,56(s0)
   1317c:	05543023          	sd	s5,64(s0)
   13180:	05443423          	sd	s4,72(s0)
   13184:	05343823          	sd	s3,80(s0)
   13188:	02843823          	sd	s0,48(s0)
   1318c:	00978793          	add	a5,a5,9 # 10009 <exit-0xdf>
   13190:	00f4a823          	sw	a5,16(s1)
   13194:	00800613          	li	a2,8
   13198:	00000593          	li	a1,0
   1319c:	0004b023          	sd	zero,0(s1)
   131a0:	0004b423          	sd	zero,8(s1)
   131a4:	0a04a623          	sw	zero,172(s1)
   131a8:	0004bc23          	sd	zero,24(s1)
   131ac:	0204a023          	sw	zero,32(s1)
   131b0:	0204a423          	sw	zero,40(s1)
   131b4:	0a448513          	add	a0,s1,164
   131b8:	8f4fd0ef          	jal	102ac <memset>
   131bc:	01893403          	ld	s0,24(s2)
   131c0:	000207b7          	lui	a5,0x20
   131c4:	0364bc23          	sd	s6,56(s1)
   131c8:	0554b023          	sd	s5,64(s1)
   131cc:	0544b423          	sd	s4,72(s1)
   131d0:	0534b823          	sd	s3,80(s1)
   131d4:	0294b823          	sd	s1,48(s1)
   131d8:	01278793          	add	a5,a5,18 # 20012 <__divdf3+0x266>
   131dc:	00f42823          	sw	a5,16(s0)
   131e0:	00043023          	sd	zero,0(s0)
   131e4:	00043423          	sd	zero,8(s0)
   131e8:	0a042623          	sw	zero,172(s0)
   131ec:	00043c23          	sd	zero,24(s0)
   131f0:	02042023          	sw	zero,32(s0)
   131f4:	02042423          	sw	zero,40(s0)
   131f8:	0a440513          	add	a0,s0,164
   131fc:	00800613          	li	a2,8
   13200:	00000593          	li	a1,0
   13204:	8a8fd0ef          	jal	102ac <memset>
   13208:	03813083          	ld	ra,56(sp)
   1320c:	03643c23          	sd	s6,56(s0)
   13210:	05543023          	sd	s5,64(s0)
   13214:	05443423          	sd	s4,72(s0)
   13218:	05343823          	sd	s3,80(s0)
   1321c:	02843823          	sd	s0,48(s0)
   13220:	03013403          	ld	s0,48(sp)
   13224:	00100793          	li	a5,1
   13228:	04f92823          	sw	a5,80(s2)
   1322c:	02813483          	ld	s1,40(sp)
   13230:	02013903          	ld	s2,32(sp)
   13234:	01813983          	ld	s3,24(sp)
   13238:	01013a03          	ld	s4,16(sp)
   1323c:	00813a83          	ld	s5,8(sp)
   13240:	00013b03          	ld	s6,0(sp)
   13244:	04010113          	add	sp,sp,64
   13248:	00008067          	ret

000000000001324c <__sfmoreglue>:
   1324c:	fe010113          	add	sp,sp,-32
   13250:	fff5879b          	addw	a5,a1,-1
   13254:	00813823          	sd	s0,16(sp)
   13258:	00179413          	sll	s0,a5,0x1
   1325c:	00f40433          	add	s0,s0,a5
   13260:	00241413          	sll	s0,s0,0x2
   13264:	40f40433          	sub	s0,s0,a5
   13268:	00441413          	sll	s0,s0,0x4
   1326c:	01213023          	sd	s2,0(sp)
   13270:	00058913          	mv	s2,a1
   13274:	0c840593          	add	a1,s0,200
   13278:	00913423          	sd	s1,8(sp)
   1327c:	00113c23          	sd	ra,24(sp)
   13280:	021030ef          	jal	16aa0 <_malloc_r>
   13284:	00050493          	mv	s1,a0
   13288:	02050063          	beqz	a0,132a8 <__sfmoreglue+0x5c>
   1328c:	01850513          	add	a0,a0,24
   13290:	0004b023          	sd	zero,0(s1)
   13294:	0124a423          	sw	s2,8(s1)
   13298:	00a4b823          	sd	a0,16(s1)
   1329c:	0b040613          	add	a2,s0,176
   132a0:	00000593          	li	a1,0
   132a4:	808fd0ef          	jal	102ac <memset>
   132a8:	01813083          	ld	ra,24(sp)
   132ac:	01013403          	ld	s0,16(sp)
   132b0:	00013903          	ld	s2,0(sp)
   132b4:	00048513          	mv	a0,s1
   132b8:	00813483          	ld	s1,8(sp)
   132bc:	02010113          	add	sp,sp,32
   132c0:	00008067          	ret

00000000000132c4 <__sfp>:
   132c4:	fe010113          	add	sp,sp,-32
   132c8:	01213023          	sd	s2,0(sp)
   132cc:	7481b903          	ld	s2,1864(gp) # 24d30 <_global_impure_ptr>
   132d0:	00913423          	sd	s1,8(sp)
   132d4:	00113c23          	sd	ra,24(sp)
   132d8:	05092783          	lw	a5,80(s2)
   132dc:	00813823          	sd	s0,16(sp)
   132e0:	00050493          	mv	s1,a0
   132e4:	0a078c63          	beqz	a5,1339c <__sfp+0xd8>
   132e8:	52090913          	add	s2,s2,1312
   132ec:	00892703          	lw	a4,8(s2)
   132f0:	01093403          	ld	s0,16(s2)
   132f4:	08e05c63          	blez	a4,1338c <__sfp+0xc8>
   132f8:	02071713          	sll	a4,a4,0x20
   132fc:	02075713          	srl	a4,a4,0x20
   13300:	00171793          	sll	a5,a4,0x1
   13304:	00e787b3          	add	a5,a5,a4
   13308:	00279793          	sll	a5,a5,0x2
   1330c:	40e787b3          	sub	a5,a5,a4
   13310:	00479793          	sll	a5,a5,0x4
   13314:	00f407b3          	add	a5,s0,a5
   13318:	00c0006f          	j	13324 <__sfp+0x60>
   1331c:	0b040413          	add	s0,s0,176
   13320:	06f40663          	beq	s0,a5,1338c <__sfp+0xc8>
   13324:	01041703          	lh	a4,16(s0)
   13328:	fe071ae3          	bnez	a4,1331c <__sfp+0x58>
   1332c:	ffff07b7          	lui	a5,0xffff0
   13330:	00178793          	add	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffcb219>
   13334:	00f42823          	sw	a5,16(s0)
   13338:	0a042623          	sw	zero,172(s0)
   1333c:	00043023          	sd	zero,0(s0)
   13340:	00043423          	sd	zero,8(s0)
   13344:	00043c23          	sd	zero,24(s0)
   13348:	02042023          	sw	zero,32(s0)
   1334c:	02042423          	sw	zero,40(s0)
   13350:	00800613          	li	a2,8
   13354:	00000593          	li	a1,0
   13358:	0a440513          	add	a0,s0,164
   1335c:	f51fc0ef          	jal	102ac <memset>
   13360:	04043c23          	sd	zero,88(s0)
   13364:	06042023          	sw	zero,96(s0)
   13368:	06043c23          	sd	zero,120(s0)
   1336c:	08042023          	sw	zero,128(s0)
   13370:	01813083          	ld	ra,24(sp)
   13374:	00040513          	mv	a0,s0
   13378:	01013403          	ld	s0,16(sp)
   1337c:	00813483          	ld	s1,8(sp)
   13380:	00013903          	ld	s2,0(sp)
   13384:	02010113          	add	sp,sp,32
   13388:	00008067          	ret
   1338c:	00093403          	ld	s0,0(s2)
   13390:	00040c63          	beqz	s0,133a8 <__sfp+0xe4>
   13394:	00040913          	mv	s2,s0
   13398:	f55ff06f          	j	132ec <__sfp+0x28>
   1339c:	00090513          	mv	a0,s2
   133a0:	d35ff0ef          	jal	130d4 <__sinit.part.0>
   133a4:	f45ff06f          	j	132e8 <__sfp+0x24>
   133a8:	2d800593          	li	a1,728
   133ac:	00048513          	mv	a0,s1
   133b0:	6f0030ef          	jal	16aa0 <_malloc_r>
   133b4:	00050413          	mv	s0,a0
   133b8:	02050863          	beqz	a0,133e8 <__sfp+0x124>
   133bc:	01850513          	add	a0,a0,24
   133c0:	00400793          	li	a5,4
   133c4:	00043023          	sd	zero,0(s0)
   133c8:	00f42423          	sw	a5,8(s0)
   133cc:	00a43823          	sd	a0,16(s0)
   133d0:	2c000613          	li	a2,704
   133d4:	00000593          	li	a1,0
   133d8:	ed5fc0ef          	jal	102ac <memset>
   133dc:	00893023          	sd	s0,0(s2)
   133e0:	00040913          	mv	s2,s0
   133e4:	f09ff06f          	j	132ec <__sfp+0x28>
   133e8:	00093023          	sd	zero,0(s2)
   133ec:	00c00793          	li	a5,12
   133f0:	00f4a023          	sw	a5,0(s1)
   133f4:	f7dff06f          	j	13370 <__sfp+0xac>

00000000000133f8 <_cleanup>:
   133f8:	7481b503          	ld	a0,1864(gp) # 24d30 <_global_impure_ptr>
   133fc:	0001d5b7          	lui	a1,0x1d
   13400:	bbc58593          	add	a1,a1,-1092 # 1cbbc <_fclose_r>
   13404:	5bc0006f          	j	139c0 <_fwalk_reent>

0000000000013408 <__sinit>:
   13408:	05052783          	lw	a5,80(a0)
   1340c:	00078463          	beqz	a5,13414 <__sinit+0xc>
   13410:	00008067          	ret
   13414:	cc1ff06f          	j	130d4 <__sinit.part.0>

0000000000013418 <__sfp_lock_acquire>:
   13418:	00008067          	ret

000000000001341c <__sfp_lock_release>:
   1341c:	00008067          	ret

0000000000013420 <__sinit_lock_acquire>:
   13420:	00008067          	ret

0000000000013424 <__sinit_lock_release>:
   13424:	00008067          	ret

0000000000013428 <__fp_lock_all>:
   13428:	7581b503          	ld	a0,1880(gp) # 24d40 <_impure_ptr>
   1342c:	000135b7          	lui	a1,0x13
   13430:	0b858593          	add	a1,a1,184 # 130b8 <__fp_lock>
   13434:	4cc0006f          	j	13900 <_fwalk>

0000000000013438 <__fp_unlock_all>:
   13438:	7581b503          	ld	a0,1880(gp) # 24d40 <_impure_ptr>
   1343c:	000135b7          	lui	a1,0x13
   13440:	0cc58593          	add	a1,a1,204 # 130cc <__fp_unlock>
   13444:	4bc0006f          	j	13900 <_fwalk>

0000000000013448 <__libc_fini_array>:
   13448:	fe010113          	add	sp,sp,-32
   1344c:	00813823          	sd	s0,16(sp)
   13450:	000247b7          	lui	a5,0x24
   13454:	00024437          	lui	s0,0x24
   13458:	bf878793          	add	a5,a5,-1032 # 23bf8 <__do_global_dtors_aux_fini_array_entry>
   1345c:	c0040413          	add	s0,s0,-1024 # 23c00 <impure_data>
   13460:	40f40433          	sub	s0,s0,a5
   13464:	00913423          	sd	s1,8(sp)
   13468:	00113c23          	sd	ra,24(sp)
   1346c:	40345493          	sra	s1,s0,0x3
   13470:	02048063          	beqz	s1,13490 <__libc_fini_array+0x48>
   13474:	ff840413          	add	s0,s0,-8
   13478:	00f40433          	add	s0,s0,a5
   1347c:	00043783          	ld	a5,0(s0)
   13480:	fff48493          	add	s1,s1,-1
   13484:	ff840413          	add	s0,s0,-8
   13488:	000780e7          	jalr	a5
   1348c:	fe0498e3          	bnez	s1,1347c <__libc_fini_array+0x34>
   13490:	01813083          	ld	ra,24(sp)
   13494:	01013403          	ld	s0,16(sp)
   13498:	00813483          	ld	s1,8(sp)
   1349c:	02010113          	add	sp,sp,32
   134a0:	00008067          	ret

00000000000134a4 <_malloc_trim_r>:
   134a4:	fd010113          	add	sp,sp,-48
   134a8:	01313423          	sd	s3,8(sp)
   134ac:	000249b7          	lui	s3,0x24
   134b0:	02813023          	sd	s0,32(sp)
   134b4:	00913c23          	sd	s1,24(sp)
   134b8:	01213823          	sd	s2,16(sp)
   134bc:	01413023          	sd	s4,0(sp)
   134c0:	02113423          	sd	ra,40(sp)
   134c4:	00058a13          	mv	s4,a1
   134c8:	00050913          	mv	s2,a0
   134cc:	4f098993          	add	s3,s3,1264 # 244f0 <__malloc_av_>
   134d0:	6e1030ef          	jal	173b0 <__malloc_lock>
   134d4:	0109b703          	ld	a4,16(s3)
   134d8:	000017b7          	lui	a5,0x1
   134dc:	fdf78413          	add	s0,a5,-33 # fdf <exit-0xf109>
   134e0:	00873483          	ld	s1,8(a4)
   134e4:	ffc4f493          	and	s1,s1,-4
   134e8:	00848433          	add	s0,s1,s0
   134ec:	41440433          	sub	s0,s0,s4
   134f0:	00c45413          	srl	s0,s0,0xc
   134f4:	fff40413          	add	s0,s0,-1
   134f8:	00c41413          	sll	s0,s0,0xc
   134fc:	00f44e63          	blt	s0,a5,13518 <_malloc_trim_r+0x74>
   13500:	00000593          	li	a1,0
   13504:	00090513          	mv	a0,s2
   13508:	1ec050ef          	jal	186f4 <_sbrk_r>
   1350c:	0109b783          	ld	a5,16(s3)
   13510:	009787b3          	add	a5,a5,s1
   13514:	02f50863          	beq	a0,a5,13544 <_malloc_trim_r+0xa0>
   13518:	00090513          	mv	a0,s2
   1351c:	699030ef          	jal	173b4 <__malloc_unlock>
   13520:	02813083          	ld	ra,40(sp)
   13524:	02013403          	ld	s0,32(sp)
   13528:	01813483          	ld	s1,24(sp)
   1352c:	01013903          	ld	s2,16(sp)
   13530:	00813983          	ld	s3,8(sp)
   13534:	00013a03          	ld	s4,0(sp)
   13538:	00000513          	li	a0,0
   1353c:	03010113          	add	sp,sp,48
   13540:	00008067          	ret
   13544:	408005b3          	neg	a1,s0
   13548:	00090513          	mv	a0,s2
   1354c:	1a8050ef          	jal	186f4 <_sbrk_r>
   13550:	fff00793          	li	a5,-1
   13554:	04f50a63          	beq	a0,a5,135a8 <_malloc_trim_r+0x104>
   13558:	000257b7          	lui	a5,0x25
   1355c:	dc078793          	add	a5,a5,-576 # 24dc0 <__malloc_current_mallinfo>
   13560:	0007a703          	lw	a4,0(a5)
   13564:	0109b683          	ld	a3,16(s3)
   13568:	408484b3          	sub	s1,s1,s0
   1356c:	0014e493          	or	s1,s1,1
   13570:	4087073b          	subw	a4,a4,s0
   13574:	00090513          	mv	a0,s2
   13578:	0096b423          	sd	s1,8(a3)
   1357c:	00e7a023          	sw	a4,0(a5)
   13580:	635030ef          	jal	173b4 <__malloc_unlock>
   13584:	02813083          	ld	ra,40(sp)
   13588:	02013403          	ld	s0,32(sp)
   1358c:	01813483          	ld	s1,24(sp)
   13590:	01013903          	ld	s2,16(sp)
   13594:	00813983          	ld	s3,8(sp)
   13598:	00013a03          	ld	s4,0(sp)
   1359c:	00100513          	li	a0,1
   135a0:	03010113          	add	sp,sp,48
   135a4:	00008067          	ret
   135a8:	00000593          	li	a1,0
   135ac:	00090513          	mv	a0,s2
   135b0:	144050ef          	jal	186f4 <_sbrk_r>
   135b4:	0109b703          	ld	a4,16(s3)
   135b8:	01f00693          	li	a3,31
   135bc:	40e507b3          	sub	a5,a0,a4
   135c0:	f4f6dce3          	bge	a3,a5,13518 <_malloc_trim_r+0x74>
   135c4:	7601b683          	ld	a3,1888(gp) # 24d48 <__malloc_sbrk_base>
   135c8:	0017e793          	or	a5,a5,1
   135cc:	00f73423          	sd	a5,8(a4)
   135d0:	40d50533          	sub	a0,a0,a3
   135d4:	000256b7          	lui	a3,0x25
   135d8:	dca6a023          	sw	a0,-576(a3) # 24dc0 <__malloc_current_mallinfo>
   135dc:	f3dff06f          	j	13518 <_malloc_trim_r+0x74>

00000000000135e0 <_free_r>:
   135e0:	18058863          	beqz	a1,13770 <_free_r+0x190>
   135e4:	fe010113          	add	sp,sp,-32
   135e8:	00813823          	sd	s0,16(sp)
   135ec:	00913423          	sd	s1,8(sp)
   135f0:	00058413          	mv	s0,a1
   135f4:	00050493          	mv	s1,a0
   135f8:	00113c23          	sd	ra,24(sp)
   135fc:	5b5030ef          	jal	173b0 <__malloc_lock>
   13600:	ff843503          	ld	a0,-8(s0)
   13604:	ff040713          	add	a4,s0,-16
   13608:	000245b7          	lui	a1,0x24
   1360c:	ffe57793          	and	a5,a0,-2
   13610:	00f70633          	add	a2,a4,a5
   13614:	4f058593          	add	a1,a1,1264 # 244f0 <__malloc_av_>
   13618:	00863683          	ld	a3,8(a2)
   1361c:	0105b803          	ld	a6,16(a1)
   13620:	ffc6f693          	and	a3,a3,-4
   13624:	1ac80863          	beq	a6,a2,137d4 <_free_r+0x1f4>
   13628:	00d63423          	sd	a3,8(a2)
   1362c:	00157513          	and	a0,a0,1
   13630:	00d60833          	add	a6,a2,a3
   13634:	0a051463          	bnez	a0,136dc <_free_r+0xfc>
   13638:	ff043303          	ld	t1,-16(s0)
   1363c:	00883803          	ld	a6,8(a6)
   13640:	00024537          	lui	a0,0x24
   13644:	40670733          	sub	a4,a4,t1
   13648:	01073883          	ld	a7,16(a4)
   1364c:	50050513          	add	a0,a0,1280 # 24500 <__malloc_av_+0x10>
   13650:	006787b3          	add	a5,a5,t1
   13654:	00187813          	and	a6,a6,1
   13658:	14a88863          	beq	a7,a0,137a8 <_free_r+0x1c8>
   1365c:	01873303          	ld	t1,24(a4)
   13660:	0068bc23          	sd	t1,24(a7)
   13664:	01133823          	sd	a7,16(t1)
   13668:	1a080c63          	beqz	a6,13820 <_free_r+0x240>
   1366c:	0017e693          	or	a3,a5,1
   13670:	00d73423          	sd	a3,8(a4)
   13674:	00f63023          	sd	a5,0(a2)
   13678:	1ff00693          	li	a3,511
   1367c:	08f6e063          	bltu	a3,a5,136fc <_free_r+0x11c>
   13680:	0037d793          	srl	a5,a5,0x3
   13684:	0017869b          	addw	a3,a5,1
   13688:	0016969b          	sllw	a3,a3,0x1
   1368c:	00369693          	sll	a3,a3,0x3
   13690:	0085b803          	ld	a6,8(a1)
   13694:	00d586b3          	add	a3,a1,a3
   13698:	0006b503          	ld	a0,0(a3)
   1369c:	4027d61b          	sraw	a2,a5,0x2
   136a0:	00100793          	li	a5,1
   136a4:	00c797b3          	sll	a5,a5,a2
   136a8:	0107e7b3          	or	a5,a5,a6
   136ac:	ff068613          	add	a2,a3,-16
   136b0:	00c73c23          	sd	a2,24(a4)
   136b4:	00a73823          	sd	a0,16(a4)
   136b8:	00f5b423          	sd	a5,8(a1)
   136bc:	00e6b023          	sd	a4,0(a3)
   136c0:	00e53c23          	sd	a4,24(a0)
   136c4:	01013403          	ld	s0,16(sp)
   136c8:	01813083          	ld	ra,24(sp)
   136cc:	00048513          	mv	a0,s1
   136d0:	00813483          	ld	s1,8(sp)
   136d4:	02010113          	add	sp,sp,32
   136d8:	4dd0306f          	j	173b4 <__malloc_unlock>
   136dc:	00883503          	ld	a0,8(a6)
   136e0:	00157513          	and	a0,a0,1
   136e4:	08050863          	beqz	a0,13774 <_free_r+0x194>
   136e8:	0017e693          	or	a3,a5,1
   136ec:	fed43c23          	sd	a3,-8(s0)
   136f0:	00f63023          	sd	a5,0(a2)
   136f4:	1ff00693          	li	a3,511
   136f8:	f8f6f4e3          	bgeu	a3,a5,13680 <_free_r+0xa0>
   136fc:	0097d693          	srl	a3,a5,0x9
   13700:	00400613          	li	a2,4
   13704:	12d66263          	bltu	a2,a3,13828 <_free_r+0x248>
   13708:	0067d693          	srl	a3,a5,0x6
   1370c:	0396851b          	addw	a0,a3,57
   13710:	0015151b          	sllw	a0,a0,0x1
   13714:	0386861b          	addw	a2,a3,56
   13718:	00351513          	sll	a0,a0,0x3
   1371c:	00a58533          	add	a0,a1,a0
   13720:	00053683          	ld	a3,0(a0)
   13724:	ff050513          	add	a0,a0,-16
   13728:	00d51863          	bne	a0,a3,13738 <_free_r+0x158>
   1372c:	15c0006f          	j	13888 <_free_r+0x2a8>
   13730:	0106b683          	ld	a3,16(a3)
   13734:	00d50863          	beq	a0,a3,13744 <_free_r+0x164>
   13738:	0086b603          	ld	a2,8(a3)
   1373c:	ffc67613          	and	a2,a2,-4
   13740:	fec7e8e3          	bltu	a5,a2,13730 <_free_r+0x150>
   13744:	0186b503          	ld	a0,24(a3)
   13748:	00a73c23          	sd	a0,24(a4)
   1374c:	00d73823          	sd	a3,16(a4)
   13750:	01013403          	ld	s0,16(sp)
   13754:	00e53823          	sd	a4,16(a0)
   13758:	01813083          	ld	ra,24(sp)
   1375c:	00048513          	mv	a0,s1
   13760:	00813483          	ld	s1,8(sp)
   13764:	00e6bc23          	sd	a4,24(a3)
   13768:	02010113          	add	sp,sp,32
   1376c:	4490306f          	j	173b4 <__malloc_unlock>
   13770:	00008067          	ret
   13774:	00024537          	lui	a0,0x24
   13778:	00d787b3          	add	a5,a5,a3
   1377c:	50050513          	add	a0,a0,1280 # 24500 <__malloc_av_+0x10>
   13780:	01063683          	ld	a3,16(a2)
   13784:	0ea68063          	beq	a3,a0,13864 <_free_r+0x284>
   13788:	01863803          	ld	a6,24(a2)
   1378c:	0017e513          	or	a0,a5,1
   13790:	00f70633          	add	a2,a4,a5
   13794:	0106bc23          	sd	a6,24(a3)
   13798:	00d83823          	sd	a3,16(a6)
   1379c:	00a73423          	sd	a0,8(a4)
   137a0:	00f63023          	sd	a5,0(a2)
   137a4:	ed5ff06f          	j	13678 <_free_r+0x98>
   137a8:	14081463          	bnez	a6,138f0 <_free_r+0x310>
   137ac:	01063583          	ld	a1,16(a2)
   137b0:	01863603          	ld	a2,24(a2)
   137b4:	00f686b3          	add	a3,a3,a5
   137b8:	0016e793          	or	a5,a3,1
   137bc:	00c5bc23          	sd	a2,24(a1)
   137c0:	00b63823          	sd	a1,16(a2)
   137c4:	00f73423          	sd	a5,8(a4)
   137c8:	00d70733          	add	a4,a4,a3
   137cc:	00d73023          	sd	a3,0(a4)
   137d0:	ef5ff06f          	j	136c4 <_free_r+0xe4>
   137d4:	00157513          	and	a0,a0,1
   137d8:	00d786b3          	add	a3,a5,a3
   137dc:	02051063          	bnez	a0,137fc <_free_r+0x21c>
   137e0:	ff043503          	ld	a0,-16(s0)
   137e4:	40a70733          	sub	a4,a4,a0
   137e8:	01873783          	ld	a5,24(a4)
   137ec:	01073603          	ld	a2,16(a4)
   137f0:	00a686b3          	add	a3,a3,a0
   137f4:	00f63c23          	sd	a5,24(a2)
   137f8:	00c7b823          	sd	a2,16(a5)
   137fc:	0016e613          	or	a2,a3,1
   13800:	7681b783          	ld	a5,1896(gp) # 24d50 <__malloc_trim_threshold>
   13804:	00c73423          	sd	a2,8(a4)
   13808:	00e5b823          	sd	a4,16(a1)
   1380c:	eaf6ece3          	bltu	a3,a5,136c4 <_free_r+0xe4>
   13810:	7881b583          	ld	a1,1928(gp) # 24d70 <__malloc_top_pad>
   13814:	00048513          	mv	a0,s1
   13818:	c8dff0ef          	jal	134a4 <_malloc_trim_r>
   1381c:	ea9ff06f          	j	136c4 <_free_r+0xe4>
   13820:	00d787b3          	add	a5,a5,a3
   13824:	f5dff06f          	j	13780 <_free_r+0x1a0>
   13828:	01400613          	li	a2,20
   1382c:	02d67263          	bgeu	a2,a3,13850 <_free_r+0x270>
   13830:	05400613          	li	a2,84
   13834:	06d66863          	bltu	a2,a3,138a4 <_free_r+0x2c4>
   13838:	00c7d693          	srl	a3,a5,0xc
   1383c:	06f6851b          	addw	a0,a3,111
   13840:	0015151b          	sllw	a0,a0,0x1
   13844:	06e6861b          	addw	a2,a3,110
   13848:	00351513          	sll	a0,a0,0x3
   1384c:	ed1ff06f          	j	1371c <_free_r+0x13c>
   13850:	05c6851b          	addw	a0,a3,92
   13854:	0015151b          	sllw	a0,a0,0x1
   13858:	05b6861b          	addw	a2,a3,91
   1385c:	00351513          	sll	a0,a0,0x3
   13860:	ebdff06f          	j	1371c <_free_r+0x13c>
   13864:	02e5b423          	sd	a4,40(a1)
   13868:	02e5b023          	sd	a4,32(a1)
   1386c:	0017e693          	or	a3,a5,1
   13870:	00a73c23          	sd	a0,24(a4)
   13874:	00a73823          	sd	a0,16(a4)
   13878:	00d73423          	sd	a3,8(a4)
   1387c:	00f70733          	add	a4,a4,a5
   13880:	00f73023          	sd	a5,0(a4)
   13884:	e41ff06f          	j	136c4 <_free_r+0xe4>
   13888:	0085b803          	ld	a6,8(a1)
   1388c:	4026561b          	sraw	a2,a2,0x2
   13890:	00100793          	li	a5,1
   13894:	00c797b3          	sll	a5,a5,a2
   13898:	0107e7b3          	or	a5,a5,a6
   1389c:	00f5b423          	sd	a5,8(a1)
   138a0:	ea9ff06f          	j	13748 <_free_r+0x168>
   138a4:	15400613          	li	a2,340
   138a8:	00d66e63          	bltu	a2,a3,138c4 <_free_r+0x2e4>
   138ac:	00f7d693          	srl	a3,a5,0xf
   138b0:	0786851b          	addw	a0,a3,120
   138b4:	0015151b          	sllw	a0,a0,0x1
   138b8:	0776861b          	addw	a2,a3,119
   138bc:	00351513          	sll	a0,a0,0x3
   138c0:	e5dff06f          	j	1371c <_free_r+0x13c>
   138c4:	55400613          	li	a2,1364
   138c8:	00d66e63          	bltu	a2,a3,138e4 <_free_r+0x304>
   138cc:	0127d693          	srl	a3,a5,0x12
   138d0:	07d6851b          	addw	a0,a3,125
   138d4:	0015151b          	sllw	a0,a0,0x1
   138d8:	07c6861b          	addw	a2,a3,124
   138dc:	00351513          	sll	a0,a0,0x3
   138e0:	e3dff06f          	j	1371c <_free_r+0x13c>
   138e4:	7f000513          	li	a0,2032
   138e8:	07e00613          	li	a2,126
   138ec:	e31ff06f          	j	1371c <_free_r+0x13c>
   138f0:	0017e693          	or	a3,a5,1
   138f4:	00d73423          	sd	a3,8(a4)
   138f8:	00f63023          	sd	a5,0(a2)
   138fc:	dc9ff06f          	j	136c4 <_free_r+0xe4>

0000000000013900 <_fwalk>:
   13900:	fc010113          	add	sp,sp,-64
   13904:	03213023          	sd	s2,32(sp)
   13908:	01313c23          	sd	s3,24(sp)
   1390c:	01413823          	sd	s4,16(sp)
   13910:	01513423          	sd	s5,8(sp)
   13914:	01613023          	sd	s6,0(sp)
   13918:	02113c23          	sd	ra,56(sp)
   1391c:	02813823          	sd	s0,48(sp)
   13920:	02913423          	sd	s1,40(sp)
   13924:	00058a93          	mv	s5,a1
   13928:	52050993          	add	s3,a0,1312
   1392c:	00000913          	li	s2,0
   13930:	00100b13          	li	s6,1
   13934:	fff00a13          	li	s4,-1
   13938:	0089a783          	lw	a5,8(s3)
   1393c:	0109b403          	ld	s0,16(s3)
   13940:	04f05663          	blez	a5,1398c <_fwalk+0x8c>
   13944:	02079793          	sll	a5,a5,0x20
   13948:	0207d793          	srl	a5,a5,0x20
   1394c:	00179493          	sll	s1,a5,0x1
   13950:	00f484b3          	add	s1,s1,a5
   13954:	00249493          	sll	s1,s1,0x2
   13958:	40f484b3          	sub	s1,s1,a5
   1395c:	00449493          	sll	s1,s1,0x4
   13960:	009404b3          	add	s1,s0,s1
   13964:	01045783          	lhu	a5,16(s0)
   13968:	00fb7e63          	bgeu	s6,a5,13984 <_fwalk+0x84>
   1396c:	01241783          	lh	a5,18(s0)
   13970:	00040513          	mv	a0,s0
   13974:	01478863          	beq	a5,s4,13984 <_fwalk+0x84>
   13978:	000a80e7          	jalr	s5
   1397c:	01256933          	or	s2,a0,s2
   13980:	0009091b          	sext.w	s2,s2
   13984:	0b040413          	add	s0,s0,176
   13988:	fc849ee3          	bne	s1,s0,13964 <_fwalk+0x64>
   1398c:	0009b983          	ld	s3,0(s3)
   13990:	fa0994e3          	bnez	s3,13938 <_fwalk+0x38>
   13994:	03813083          	ld	ra,56(sp)
   13998:	03013403          	ld	s0,48(sp)
   1399c:	02813483          	ld	s1,40(sp)
   139a0:	01813983          	ld	s3,24(sp)
   139a4:	01013a03          	ld	s4,16(sp)
   139a8:	00813a83          	ld	s5,8(sp)
   139ac:	00013b03          	ld	s6,0(sp)
   139b0:	00090513          	mv	a0,s2
   139b4:	02013903          	ld	s2,32(sp)
   139b8:	04010113          	add	sp,sp,64
   139bc:	00008067          	ret

00000000000139c0 <_fwalk_reent>:
   139c0:	fb010113          	add	sp,sp,-80
   139c4:	03213823          	sd	s2,48(sp)
   139c8:	03313423          	sd	s3,40(sp)
   139cc:	03413023          	sd	s4,32(sp)
   139d0:	01513c23          	sd	s5,24(sp)
   139d4:	01613823          	sd	s6,16(sp)
   139d8:	01713423          	sd	s7,8(sp)
   139dc:	04113423          	sd	ra,72(sp)
   139e0:	04813023          	sd	s0,64(sp)
   139e4:	02913c23          	sd	s1,56(sp)
   139e8:	00050913          	mv	s2,a0
   139ec:	00058a93          	mv	s5,a1
   139f0:	52050993          	add	s3,a0,1312
   139f4:	00000b13          	li	s6,0
   139f8:	00100b93          	li	s7,1
   139fc:	fff00a13          	li	s4,-1
   13a00:	0089a783          	lw	a5,8(s3)
   13a04:	0109b403          	ld	s0,16(s3)
   13a08:	04f05863          	blez	a5,13a58 <_fwalk_reent+0x98>
   13a0c:	02079793          	sll	a5,a5,0x20
   13a10:	0207d793          	srl	a5,a5,0x20
   13a14:	00179493          	sll	s1,a5,0x1
   13a18:	00f484b3          	add	s1,s1,a5
   13a1c:	00249493          	sll	s1,s1,0x2
   13a20:	40f484b3          	sub	s1,s1,a5
   13a24:	00449493          	sll	s1,s1,0x4
   13a28:	009404b3          	add	s1,s0,s1
   13a2c:	01045783          	lhu	a5,16(s0)
   13a30:	02fbf063          	bgeu	s7,a5,13a50 <_fwalk_reent+0x90>
   13a34:	01241783          	lh	a5,18(s0)
   13a38:	00040593          	mv	a1,s0
   13a3c:	00090513          	mv	a0,s2
   13a40:	01478863          	beq	a5,s4,13a50 <_fwalk_reent+0x90>
   13a44:	000a80e7          	jalr	s5
   13a48:	01656b33          	or	s6,a0,s6
   13a4c:	000b0b1b          	sext.w	s6,s6
   13a50:	0b040413          	add	s0,s0,176
   13a54:	fc849ce3          	bne	s1,s0,13a2c <_fwalk_reent+0x6c>
   13a58:	0009b983          	ld	s3,0(s3)
   13a5c:	fa0992e3          	bnez	s3,13a00 <_fwalk_reent+0x40>
   13a60:	04813083          	ld	ra,72(sp)
   13a64:	04013403          	ld	s0,64(sp)
   13a68:	03813483          	ld	s1,56(sp)
   13a6c:	03013903          	ld	s2,48(sp)
   13a70:	02813983          	ld	s3,40(sp)
   13a74:	02013a03          	ld	s4,32(sp)
   13a78:	01813a83          	ld	s5,24(sp)
   13a7c:	00813b83          	ld	s7,8(sp)
   13a80:	000b0513          	mv	a0,s6
   13a84:	01013b03          	ld	s6,16(sp)
   13a88:	05010113          	add	sp,sp,80
   13a8c:	00008067          	ret

0000000000013a90 <eshdn1>:
   13a90:	00450693          	add	a3,a0,4
   13a94:	00000713          	li	a4,0
   13a98:	01a50513          	add	a0,a0,26
   13a9c:	ffff8837          	lui	a6,0xffff8
   13aa0:	0006d783          	lhu	a5,0(a3)
   13aa4:	0017f613          	and	a2,a5,1
   13aa8:	00060463          	beqz	a2,13ab0 <eshdn1+0x20>
   13aac:	00176713          	or	a4,a4,1
   13ab0:	00277613          	and	a2,a4,2
   13ab4:	0017d793          	srl	a5,a5,0x1
   13ab8:	0017171b          	sllw	a4,a4,0x1
   13abc:	0107e5b3          	or	a1,a5,a6
   13ac0:	00060663          	beqz	a2,13acc <eshdn1+0x3c>
   13ac4:	03059793          	sll	a5,a1,0x30
   13ac8:	0307d793          	srl	a5,a5,0x30
   13acc:	00f69023          	sh	a5,0(a3)
   13ad0:	03071713          	sll	a4,a4,0x30
   13ad4:	00268693          	add	a3,a3,2
   13ad8:	03075713          	srl	a4,a4,0x30
   13adc:	fcd512e3          	bne	a0,a3,13aa0 <eshdn1+0x10>
   13ae0:	00008067          	ret

0000000000013ae4 <eshup1>:
   13ae4:	01850693          	add	a3,a0,24
   13ae8:	00000713          	li	a4,0
   13aec:	00250513          	add	a0,a0,2
   13af0:	0006d783          	lhu	a5,0(a3)
   13af4:	00f7d613          	srl	a2,a5,0xf
   13af8:	0017979b          	sllw	a5,a5,0x1
   13afc:	00060463          	beqz	a2,13b04 <eshup1+0x20>
   13b00:	00176713          	or	a4,a4,1
   13b04:	00277613          	and	a2,a4,2
   13b08:	03079793          	sll	a5,a5,0x30
   13b0c:	0017171b          	sllw	a4,a4,0x1
   13b10:	0307d793          	srl	a5,a5,0x30
   13b14:	00060463          	beqz	a2,13b1c <eshup1+0x38>
   13b18:	0017e793          	or	a5,a5,1
   13b1c:	00f69023          	sh	a5,0(a3)
   13b20:	03071713          	sll	a4,a4,0x30
   13b24:	ffe68693          	add	a3,a3,-2
   13b28:	03075713          	srl	a4,a4,0x30
   13b2c:	fcd512e3          	bne	a0,a3,13af0 <eshup1+0xc>
   13b30:	00008067          	ret

0000000000013b34 <m16m>:
   13b34:	fa010113          	add	sp,sp,-96
   13b38:	03413823          	sd	s4,48(sp)
   13b3c:	00010a37          	lui	s4,0x10
   13b40:	04813823          	sd	s0,80(sp)
   13b44:	04913423          	sd	s1,72(sp)
   13b48:	05213023          	sd	s2,64(sp)
   13b4c:	03313c23          	sd	s3,56(sp)
   13b50:	03513423          	sd	s5,40(sp)
   13b54:	04113c23          	sd	ra,88(sp)
   13b58:	00050993          	mv	s3,a0
   13b5c:	00060493          	mv	s1,a2
   13b60:	00011b23          	sh	zero,22(sp)
   13b64:	00011c23          	sh	zero,24(sp)
   13b68:	01858913          	add	s2,a1,24
   13b6c:	01810413          	add	s0,sp,24
   13b70:	00410a93          	add	s5,sp,4
   13b74:	fffa0a13          	add	s4,s4,-1 # ffff <exit-0xe9>
   13b78:	00095503          	lhu	a0,0(s2)
   13b7c:	00098593          	mv	a1,s3
   13b80:	ffe40413          	add	s0,s0,-2
   13b84:	ffe90913          	add	s2,s2,-2
   13b88:	02050a63          	beqz	a0,13bbc <m16m+0x88>
   13b8c:	7b10d0ef          	jal	21b3c <__muldi3>
   13b90:	00245703          	lhu	a4,2(s0)
   13b94:	00045683          	lhu	a3,0(s0)
   13b98:	014577b3          	and	a5,a0,s4
   13b9c:	00e787b3          	add	a5,a5,a4
   13ba0:	01055513          	srl	a0,a0,0x10
   13ba4:	0107d713          	srl	a4,a5,0x10
   13ba8:	00d50533          	add	a0,a0,a3
   13bac:	00e50533          	add	a0,a0,a4
   13bb0:	00a41023          	sh	a0,0(s0)
   13bb4:	00f41123          	sh	a5,2(s0)
   13bb8:	0105551b          	srlw	a0,a0,0x10
   13bbc:	fea41f23          	sh	a0,-2(s0)
   13bc0:	fb541ce3          	bne	s0,s5,13b78 <m16m+0x44>
   13bc4:	00448613          	add	a2,s1,4
   13bc8:	01a10713          	add	a4,sp,26
   13bcc:	00045783          	lhu	a5,0(s0)
   13bd0:	00240413          	add	s0,s0,2
   13bd4:	00260613          	add	a2,a2,2
   13bd8:	fef61f23          	sh	a5,-2(a2)
   13bdc:	fe8718e3          	bne	a4,s0,13bcc <m16m+0x98>
   13be0:	05813083          	ld	ra,88(sp)
   13be4:	05013403          	ld	s0,80(sp)
   13be8:	04813483          	ld	s1,72(sp)
   13bec:	04013903          	ld	s2,64(sp)
   13bf0:	03813983          	ld	s3,56(sp)
   13bf4:	03013a03          	ld	s4,48(sp)
   13bf8:	02813a83          	ld	s5,40(sp)
   13bfc:	06010113          	add	sp,sp,96
   13c00:	00008067          	ret

0000000000013c04 <emovo.constprop.0>:
   13c04:	00055703          	lhu	a4,0(a0)
   13c08:	00255783          	lhu	a5,2(a0)
   13c0c:	00070663          	beqz	a4,13c18 <emovo.constprop.0+0x14>
   13c10:	00008737          	lui	a4,0x8
   13c14:	00e7e7b3          	or	a5,a5,a4
   13c18:	00f59923          	sh	a5,18(a1)
   13c1c:	00255703          	lhu	a4,2(a0)
   13c20:	000087b7          	lui	a5,0x8
   13c24:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   13c28:	02f70463          	beq	a4,a5,13c50 <emovo.constprop.0+0x4c>
   13c2c:	00650793          	add	a5,a0,6
   13c30:	01058593          	add	a1,a1,16
   13c34:	01850513          	add	a0,a0,24
   13c38:	0007d703          	lhu	a4,0(a5)
   13c3c:	00278793          	add	a5,a5,2
   13c40:	ffe58593          	add	a1,a1,-2
   13c44:	00e59123          	sh	a4,2(a1)
   13c48:	fea798e3          	bne	a5,a0,13c38 <emovo.constprop.0+0x34>
   13c4c:	00008067          	ret
   13c50:	00650793          	add	a5,a0,6
   13c54:	01a50513          	add	a0,a0,26
   13c58:	0007d703          	lhu	a4,0(a5)
   13c5c:	00278793          	add	a5,a5,2
   13c60:	02071a63          	bnez	a4,13c94 <emovo.constprop.0+0x90>
   13c64:	fef51ae3          	bne	a0,a5,13c58 <emovo.constprop.0+0x54>
   13c68:	01258713          	add	a4,a1,18
   13c6c:	00058793          	mv	a5,a1
   13c70:	00278793          	add	a5,a5,2
   13c74:	fe079f23          	sh	zero,-2(a5)
   13c78:	fee79ce3          	bne	a5,a4,13c70 <emovo.constprop.0+0x6c>
   13c7c:	0125d783          	lhu	a5,18(a1)
   13c80:	00008737          	lui	a4,0x8
   13c84:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   13c88:	00e7e7b3          	or	a5,a5,a4
   13c8c:	00f59923          	sh	a5,18(a1)
   13c90:	00008067          	ret
   13c94:	01058713          	add	a4,a1,16
   13c98:	00058793          	mv	a5,a1
   13c9c:	00278793          	add	a5,a5,2
   13ca0:	fe079f23          	sh	zero,-2(a5)
   13ca4:	fee79ce3          	bne	a5,a4,13c9c <emovo.constprop.0+0x98>
   13ca8:	ffffc7b7          	lui	a5,0xffffc
   13cac:	00f59823          	sh	a5,16(a1)
   13cb0:	ffff87b7          	lui	a5,0xffff8
   13cb4:	fff7c793          	not	a5,a5
   13cb8:	00f59923          	sh	a5,18(a1)
   13cbc:	00008067          	ret

0000000000013cc0 <enormlz>:
   13cc0:	00455783          	lhu	a5,4(a0)
   13cc4:	fe010113          	add	sp,sp,-32
   13cc8:	00913423          	sd	s1,8(sp)
   13ccc:	00113c23          	sd	ra,24(sp)
   13cd0:	00813823          	sd	s0,16(sp)
   13cd4:	01213023          	sd	s2,0(sp)
   13cd8:	00050493          	mv	s1,a0
   13cdc:	0c079663          	bnez	a5,13da8 <enormlz+0xe8>
   13ce0:	00655783          	lhu	a5,6(a0)
   13ce4:	00000413          	li	s0,0
   13ce8:	00f7d713          	srl	a4,a5,0xf
   13cec:	0a071063          	bnez	a4,13d8c <enormlz+0xcc>
   13cf0:	01850693          	add	a3,a0,24
   13cf4:	0a000613          	li	a2,160
   13cf8:	02079663          	bnez	a5,13d24 <enormlz+0x64>
   13cfc:	00448793          	add	a5,s1,4
   13d00:	0027d703          	lhu	a4,2(a5) # ffffffffffff8002 <__BSS_END__+0xfffffffffffd321a>
   13d04:	00278793          	add	a5,a5,2
   13d08:	fee79f23          	sh	a4,-2(a5)
   13d0c:	fed79ae3          	bne	a5,a3,13d00 <enormlz+0x40>
   13d10:	00049c23          	sh	zero,24(s1)
   13d14:	0104041b          	addw	s0,s0,16
   13d18:	06c40a63          	beq	s0,a2,13d8c <enormlz+0xcc>
   13d1c:	0064d783          	lhu	a5,6(s1)
   13d20:	fc078ee3          	beqz	a5,13cfc <enormlz+0x3c>
   13d24:	0ff00713          	li	a4,255
   13d28:	04f76063          	bltu	a4,a5,13d68 <enormlz+0xa8>
   13d2c:	01848813          	add	a6,s1,24
   13d30:	00248593          	add	a1,s1,2
   13d34:	0ff00513          	li	a0,255
   13d38:	00000793          	li	a5,0
   13d3c:	00080713          	mv	a4,a6
   13d40:	00075683          	lhu	a3,0(a4)
   13d44:	ffe70713          	add	a4,a4,-2
   13d48:	0086961b          	sllw	a2,a3,0x8
   13d4c:	00c7e7b3          	or	a5,a5,a2
   13d50:	00f71123          	sh	a5,2(a4)
   13d54:	0086d793          	srl	a5,a3,0x8
   13d58:	feb714e3          	bne	a4,a1,13d40 <enormlz+0x80>
   13d5c:	0064d783          	lhu	a5,6(s1)
   13d60:	0084041b          	addw	s0,s0,8
   13d64:	fcf57ae3          	bgeu	a0,a5,13d38 <enormlz+0x78>
   13d68:	0a000913          	li	s2,160
   13d6c:	0140006f          	j	13d80 <enormlz+0xc0>
   13d70:	0014041b          	addw	s0,s0,1
   13d74:	d71ff0ef          	jal	13ae4 <eshup1>
   13d78:	00894a63          	blt	s2,s0,13d8c <enormlz+0xcc>
   13d7c:	0064d783          	lhu	a5,6(s1)
   13d80:	00f7d793          	srl	a5,a5,0xf
   13d84:	00048513          	mv	a0,s1
   13d88:	fe0784e3          	beqz	a5,13d70 <enormlz+0xb0>
   13d8c:	01813083          	ld	ra,24(sp)
   13d90:	00040513          	mv	a0,s0
   13d94:	01013403          	ld	s0,16(sp)
   13d98:	00813483          	ld	s1,8(sp)
   13d9c:	00013903          	ld	s2,0(sp)
   13da0:	02010113          	add	sp,sp,32
   13da4:	00008067          	ret
   13da8:	0ff00713          	li	a4,255
   13dac:	00000413          	li	s0,0
   13db0:	04f76063          	bltu	a4,a5,13df0 <enormlz+0x130>
   13db4:	f6f00913          	li	s2,-145
   13db8:	0140006f          	j	13dcc <enormlz+0x10c>
   13dbc:	fff4041b          	addw	s0,s0,-1
   13dc0:	cd1ff0ef          	jal	13a90 <eshdn1>
   13dc4:	fd2404e3          	beq	s0,s2,13d8c <enormlz+0xcc>
   13dc8:	0044d783          	lhu	a5,4(s1)
   13dcc:	00048513          	mv	a0,s1
   13dd0:	fe0796e3          	bnez	a5,13dbc <enormlz+0xfc>
   13dd4:	01813083          	ld	ra,24(sp)
   13dd8:	00040513          	mv	a0,s0
   13ddc:	01013403          	ld	s0,16(sp)
   13de0:	00813483          	ld	s1,8(sp)
   13de4:	00013903          	ld	s2,0(sp)
   13de8:	02010113          	add	sp,sp,32
   13dec:	00008067          	ret
   13df0:	00450713          	add	a4,a0,4
   13df4:	01a50593          	add	a1,a0,26
   13df8:	00000793          	li	a5,0
   13dfc:	00075683          	lhu	a3,0(a4)
   13e00:	00270713          	add	a4,a4,2
   13e04:	0086d61b          	srlw	a2,a3,0x8
   13e08:	00c7e7b3          	or	a5,a5,a2
   13e0c:	0086969b          	sllw	a3,a3,0x8
   13e10:	fef71f23          	sh	a5,-2(a4)
   13e14:	03069793          	sll	a5,a3,0x30
   13e18:	0307d793          	srl	a5,a5,0x30
   13e1c:	feb710e3          	bne	a4,a1,13dfc <enormlz+0x13c>
   13e20:	0044d783          	lhu	a5,4(s1)
   13e24:	ff800413          	li	s0,-8
   13e28:	f8dff06f          	j	13db4 <enormlz+0xf4>

0000000000013e2c <eshift.part.0>:
   13e2c:	fd010113          	add	sp,sp,-48
   13e30:	02813023          	sd	s0,32(sp)
   13e34:	00913c23          	sd	s1,24(sp)
   13e38:	02113423          	sd	ra,40(sp)
   13e3c:	01213823          	sd	s2,16(sp)
   13e40:	01313423          	sd	s3,8(sp)
   13e44:	00058493          	mv	s1,a1
   13e48:	00050413          	mv	s0,a0
   13e4c:	0a05c463          	bltz	a1,13ef4 <eshift.part.0+0xc8>
   13e50:	00f00793          	li	a5,15
   13e54:	00058613          	mv	a2,a1
   13e58:	00450513          	add	a0,a0,4
   13e5c:	01840693          	add	a3,s0,24
   13e60:	00f00593          	li	a1,15
   13e64:	0297d463          	bge	a5,s1,13e8c <eshift.part.0+0x60>
   13e68:	00050793          	mv	a5,a0
   13e6c:	0027d703          	lhu	a4,2(a5)
   13e70:	00278793          	add	a5,a5,2
   13e74:	fee79f23          	sh	a4,-2(a5)
   13e78:	fed79ae3          	bne	a5,a3,13e6c <eshift.part.0+0x40>
   13e7c:	00041c23          	sh	zero,24(s0)
   13e80:	ff06061b          	addw	a2,a2,-16
   13e84:	fec5c2e3          	blt	a1,a2,13e68 <eshift.part.0+0x3c>
   13e88:	00f4f493          	and	s1,s1,15
   13e8c:	00700793          	li	a5,7
   13e90:	0297d863          	bge	a5,s1,13ec0 <eshift.part.0+0x94>
   13e94:	01840713          	add	a4,s0,24
   13e98:	00240593          	add	a1,s0,2
   13e9c:	00000793          	li	a5,0
   13ea0:	00075683          	lhu	a3,0(a4)
   13ea4:	ffe70713          	add	a4,a4,-2
   13ea8:	0086961b          	sllw	a2,a3,0x8
   13eac:	00c7e7b3          	or	a5,a5,a2
   13eb0:	00f71123          	sh	a5,2(a4)
   13eb4:	0086d793          	srl	a5,a3,0x8
   13eb8:	feb714e3          	bne	a4,a1,13ea0 <eshift.part.0+0x74>
   13ebc:	ff84849b          	addw	s1,s1,-8
   13ec0:	00048a63          	beqz	s1,13ed4 <eshift.part.0+0xa8>
   13ec4:	fff4849b          	addw	s1,s1,-1
   13ec8:	00040513          	mv	a0,s0
   13ecc:	c19ff0ef          	jal	13ae4 <eshup1>
   13ed0:	fe049ae3          	bnez	s1,13ec4 <eshift.part.0+0x98>
   13ed4:	00000513          	li	a0,0
   13ed8:	02813083          	ld	ra,40(sp)
   13edc:	02013403          	ld	s0,32(sp)
   13ee0:	01813483          	ld	s1,24(sp)
   13ee4:	01013903          	ld	s2,16(sp)
   13ee8:	00813983          	ld	s3,8(sp)
   13eec:	03010113          	add	sp,sp,48
   13ef0:	00008067          	ret
   13ef4:	ff100793          	li	a5,-15
   13ef8:	40b0093b          	negw	s2,a1
   13efc:	00000993          	li	s3,0
   13f00:	01850593          	add	a1,a0,24
   13f04:	00450693          	add	a3,a0,4
   13f08:	00f00613          	li	a2,15
   13f0c:	0cf4dc63          	bge	s1,a5,13fe4 <eshift.part.0+0x1b8>
   13f10:	01845703          	lhu	a4,24(s0)
   13f14:	00058793          	mv	a5,a1
   13f18:	00e9e9b3          	or	s3,s3,a4
   13f1c:	ffe7d703          	lhu	a4,-2(a5)
   13f20:	ffe78793          	add	a5,a5,-2
   13f24:	00e79123          	sh	a4,2(a5)
   13f28:	fed79ae3          	bne	a5,a3,13f1c <eshift.part.0+0xf0>
   13f2c:	00041223          	sh	zero,4(s0)
   13f30:	ff09091b          	addw	s2,s2,-16
   13f34:	fd264ee3          	blt	a2,s2,13f10 <eshift.part.0+0xe4>
   13f38:	ff000913          	li	s2,-16
   13f3c:	ff100713          	li	a4,-15
   13f40:	4099093b          	subw	s2,s2,s1
   13f44:	00000793          	li	a5,0
   13f48:	08e4c863          	blt	s1,a4,13fd8 <eshift.part.0+0x1ac>
   13f4c:	00f9093b          	addw	s2,s2,a5
   13f50:	00700793          	li	a5,7
   13f54:	0327de63          	bge	a5,s2,13f90 <eshift.part.0+0x164>
   13f58:	01844783          	lbu	a5,24(s0)
   13f5c:	01a40593          	add	a1,s0,26
   13f60:	00f9e9b3          	or	s3,s3,a5
   13f64:	00000793          	li	a5,0
   13f68:	0006d703          	lhu	a4,0(a3)
   13f6c:	00268693          	add	a3,a3,2
   13f70:	0087561b          	srlw	a2,a4,0x8
   13f74:	00c7e7b3          	or	a5,a5,a2
   13f78:	0087171b          	sllw	a4,a4,0x8
   13f7c:	fef69f23          	sh	a5,-2(a3)
   13f80:	03071793          	sll	a5,a4,0x30
   13f84:	0307d793          	srl	a5,a5,0x30
   13f88:	feb690e3          	bne	a3,a1,13f68 <eshift.part.0+0x13c>
   13f8c:	ff89091b          	addw	s2,s2,-8
   13f90:	01303533          	snez	a0,s3
   13f94:	f40902e3          	beqz	s2,13ed8 <eshift.part.0+0xac>
   13f98:	01845783          	lhu	a5,24(s0)
   13f9c:	fff9091b          	addw	s2,s2,-1
   13fa0:	00040513          	mv	a0,s0
   13fa4:	0017f793          	and	a5,a5,1
   13fa8:	00f9e9b3          	or	s3,s3,a5
   13fac:	ae5ff0ef          	jal	13a90 <eshdn1>
   13fb0:	fe0914e3          	bnez	s2,13f98 <eshift.part.0+0x16c>
   13fb4:	02813083          	ld	ra,40(sp)
   13fb8:	02013403          	ld	s0,32(sp)
   13fbc:	0009899b          	sext.w	s3,s3
   13fc0:	01813483          	ld	s1,24(sp)
   13fc4:	01013903          	ld	s2,16(sp)
   13fc8:	01303533          	snez	a0,s3
   13fcc:	00813983          	ld	s3,8(sp)
   13fd0:	03010113          	add	sp,sp,48
   13fd4:	00008067          	ret
   13fd8:	ff097793          	and	a5,s2,-16
   13fdc:	40f007bb          	negw	a5,a5
   13fe0:	f6dff06f          	j	13f4c <eshift.part.0+0x120>
   13fe4:	ff900793          	li	a5,-7
   13fe8:	f6f4c8e3          	blt	s1,a5,13f58 <eshift.part.0+0x12c>
   13fec:	fadff06f          	j	13f98 <eshift.part.0+0x16c>

0000000000013ff0 <emovi>:
   13ff0:	01255783          	lhu	a5,18(a0)
   13ff4:	000086b7          	lui	a3,0x8
   13ff8:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   13ffc:	00f7d79b          	srlw	a5,a5,0xf
   14000:	40f007bb          	negw	a5,a5
   14004:	00f59023          	sh	a5,0(a1)
   14008:	01255703          	lhu	a4,18(a0)
   1400c:	01050793          	add	a5,a0,16
   14010:	00d77733          	and	a4,a4,a3
   14014:	00e59123          	sh	a4,2(a1)
   14018:	0007061b          	sext.w	a2,a4
   1401c:	02d70663          	beq	a4,a3,14048 <emovi+0x58>
   14020:	00658713          	add	a4,a1,6
   14024:	00059223          	sh	zero,4(a1)
   14028:	ffe50513          	add	a0,a0,-2
   1402c:	0007d683          	lhu	a3,0(a5)
   14030:	ffe78793          	add	a5,a5,-2
   14034:	00270713          	add	a4,a4,2
   14038:	fed71f23          	sh	a3,-2(a4)
   1403c:	fea798e3          	bne	a5,a0,1402c <emovi+0x3c>
   14040:	00059c23          	sh	zero,24(a1)
   14044:	00008067          	ret
   14048:	01255703          	lhu	a4,18(a0)
   1404c:	00c77733          	and	a4,a4,a2
   14050:	00c71e63          	bne	a4,a2,1406c <emovi+0x7c>
   14054:	01250613          	add	a2,a0,18
   14058:	00050713          	mv	a4,a0
   1405c:	00075683          	lhu	a3,0(a4)
   14060:	00270713          	add	a4,a4,2
   14064:	02069063          	bnez	a3,14084 <emovi+0x94>
   14068:	fec71ae3          	bne	a4,a2,1405c <emovi+0x6c>
   1406c:	00458793          	add	a5,a1,4
   14070:	01a58593          	add	a1,a1,26
   14074:	00278793          	add	a5,a5,2
   14078:	fe079f23          	sh	zero,-2(a5)
   1407c:	feb79ce3          	bne	a5,a1,14074 <emovi+0x84>
   14080:	00008067          	ret
   14084:	00658713          	add	a4,a1,6
   14088:	00059223          	sh	zero,4(a1)
   1408c:	ffc50513          	add	a0,a0,-4
   14090:	0007d683          	lhu	a3,0(a5)
   14094:	ffe78793          	add	a5,a5,-2
   14098:	00270713          	add	a4,a4,2
   1409c:	fed71f23          	sh	a3,-2(a4)
   140a0:	fef518e3          	bne	a0,a5,14090 <emovi+0xa0>
   140a4:	00008067          	ret

00000000000140a8 <ecmp>:
   140a8:	01255783          	lhu	a5,18(a0)
   140ac:	fb010113          	add	sp,sp,-80
   140b0:	04813023          	sd	s0,64(sp)
   140b4:	fff7c793          	not	a5,a5
   140b8:	04113423          	sd	ra,72(sp)
   140bc:	03179713          	sll	a4,a5,0x31
   140c0:	00058413          	mv	s0,a1
   140c4:	00071e63          	bnez	a4,140e0 <ecmp+0x38>
   140c8:	01250693          	add	a3,a0,18
   140cc:	00050793          	mv	a5,a0
   140d0:	0007d703          	lhu	a4,0(a5)
   140d4:	00278793          	add	a5,a5,2
   140d8:	08071c63          	bnez	a4,14170 <ecmp+0xc8>
   140dc:	fed79ae3          	bne	a5,a3,140d0 <ecmp+0x28>
   140e0:	01245783          	lhu	a5,18(s0)
   140e4:	fff7c793          	not	a5,a5
   140e8:	03179713          	sll	a4,a5,0x31
   140ec:	06070063          	beqz	a4,1414c <ecmp+0xa4>
   140f0:	00010593          	mv	a1,sp
   140f4:	efdff0ef          	jal	13ff0 <emovi>
   140f8:	02010593          	add	a1,sp,32
   140fc:	00040513          	mv	a0,s0
   14100:	ef1ff0ef          	jal	13ff0 <emovi>
   14104:	00015583          	lhu	a1,0(sp)
   14108:	02015783          	lhu	a5,32(sp)
   1410c:	06b78c63          	beq	a5,a1,14184 <ecmp+0xdc>
   14110:	00210793          	add	a5,sp,2
   14114:	02210713          	add	a4,sp,34
   14118:	01810613          	add	a2,sp,24
   1411c:	0007d683          	lhu	a3,0(a5)
   14120:	00278793          	add	a5,a5,2
   14124:	0a069663          	bnez	a3,141d0 <ecmp+0x128>
   14128:	00075683          	lhu	a3,0(a4)
   1412c:	00270713          	add	a4,a4,2
   14130:	0a069063          	bnez	a3,141d0 <ecmp+0x128>
   14134:	fef614e3          	bne	a2,a5,1411c <ecmp+0x74>
   14138:	00000513          	li	a0,0
   1413c:	04813083          	ld	ra,72(sp)
   14140:	04013403          	ld	s0,64(sp)
   14144:	05010113          	add	sp,sp,80
   14148:	00008067          	ret
   1414c:	00040793          	mv	a5,s0
   14150:	0007d703          	lhu	a4,0(a5)
   14154:	01240693          	add	a3,s0,18
   14158:	00278793          	add	a5,a5,2
   1415c:	00071a63          	bnez	a4,14170 <ecmp+0xc8>
   14160:	f8d788e3          	beq	a5,a3,140f0 <ecmp+0x48>
   14164:	0007d703          	lhu	a4,0(a5)
   14168:	00278793          	add	a5,a5,2
   1416c:	fe070ae3          	beqz	a4,14160 <ecmp+0xb8>
   14170:	04813083          	ld	ra,72(sp)
   14174:	04013403          	ld	s0,64(sp)
   14178:	ffe00513          	li	a0,-2
   1417c:	05010113          	add	sp,sp,80
   14180:	00008067          	ret
   14184:	fff00513          	li	a0,-1
   14188:	06058063          	beqz	a1,141e8 <ecmp+0x140>
   1418c:	00010793          	mv	a5,sp
   14190:	0007d603          	lhu	a2,0(a5)
   14194:	02015683          	lhu	a3,32(sp)
   14198:	02010713          	add	a4,sp,32
   1419c:	01810593          	add	a1,sp,24
   141a0:	00278793          	add	a5,a5,2
   141a4:	00270713          	add	a4,a4,2
   141a8:	00d61e63          	bne	a2,a3,141c4 <ecmp+0x11c>
   141ac:	f8b786e3          	beq	a5,a1,14138 <ecmp+0x90>
   141b0:	0007d603          	lhu	a2,0(a5)
   141b4:	00075683          	lhu	a3,0(a4)
   141b8:	00278793          	add	a5,a5,2
   141bc:	00270713          	add	a4,a4,2
   141c0:	fed606e3          	beq	a2,a3,141ac <ecmp+0x104>
   141c4:	f6c6ece3          	bltu	a3,a2,1413c <ecmp+0x94>
   141c8:	40a0053b          	negw	a0,a0
   141cc:	f71ff06f          	j	1413c <ecmp+0x94>
   141d0:	02059063          	bnez	a1,141f0 <ecmp+0x148>
   141d4:	04813083          	ld	ra,72(sp)
   141d8:	04013403          	ld	s0,64(sp)
   141dc:	00100513          	li	a0,1
   141e0:	05010113          	add	sp,sp,80
   141e4:	00008067          	ret
   141e8:	00100513          	li	a0,1
   141ec:	fa1ff06f          	j	1418c <ecmp+0xe4>
   141f0:	fff00513          	li	a0,-1
   141f4:	f49ff06f          	j	1413c <ecmp+0x94>

00000000000141f8 <emdnorm>:
   141f8:	fc010113          	add	sp,sp,-64
   141fc:	02813823          	sd	s0,48(sp)
   14200:	02913423          	sd	s1,40(sp)
   14204:	03213023          	sd	s2,32(sp)
   14208:	01313c23          	sd	s3,24(sp)
   1420c:	01413823          	sd	s4,16(sp)
   14210:	01513423          	sd	s5,8(sp)
   14214:	00068913          	mv	s2,a3
   14218:	00078413          	mv	s0,a5
   1421c:	02113c23          	sd	ra,56(sp)
   14220:	00050493          	mv	s1,a0
   14224:	00058993          	mv	s3,a1
   14228:	00060a13          	mv	s4,a2
   1422c:	00070a93          	mv	s5,a4
   14230:	a91ff0ef          	jal	13cc0 <enormlz>
   14234:	09000793          	li	a5,144
   14238:	40a90933          	sub	s2,s2,a0
   1423c:	18a7d863          	bge	a5,a0,143cc <emdnorm+0x1d4>
   14240:	000087b7          	lui	a5,0x8
   14244:	ffe78793          	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   14248:	2d27da63          	bge	a5,s2,1451c <emdnorm+0x324>
   1424c:	220a8a63          	beqz	s5,14480 <emdnorm+0x288>
   14250:	00442a83          	lw	s5,4(s0)
   14254:	00042783          	lw	a5,0(s0)
   14258:	28fa8a63          	beq	s5,a5,144ec <emdnorm+0x2f4>
   1425c:	01a40713          	add	a4,s0,26
   14260:	03440793          	add	a5,s0,52
   14264:	00270713          	add	a4,a4,2
   14268:	fe071f23          	sh	zero,-2(a4)
   1426c:	fee79ce3          	bne	a5,a4,14264 <emdnorm+0x6c>
   14270:	03800793          	li	a5,56
   14274:	38fa8863          	beq	s5,a5,14604 <emdnorm+0x40c>
   14278:	1b57da63          	bge	a5,s5,1442c <emdnorm+0x234>
   1427c:	04000793          	li	a5,64
   14280:	2afa8a63          	beq	s5,a5,14534 <emdnorm+0x33c>
   14284:	07100793          	li	a5,113
   14288:	3afa9c63          	bne	s5,a5,14640 <emdnorm+0x448>
   1428c:	400087b7          	lui	a5,0x40008
   14290:	00a00693          	li	a3,10
   14294:	ffff8737          	lui	a4,0xffff8
   14298:	fff78793          	add	a5,a5,-1 # 40007fff <__BSS_END__+0x3ffe3217>
   1429c:	00d42423          	sw	a3,8(s0)
   142a0:	00f42a23          	sw	a5,20(s0)
   142a4:	00e41c23          	sh	a4,24(s0)
   142a8:	00d42623          	sw	a3,12(s0)
   142ac:	02e41723          	sh	a4,46(s0)
   142b0:	01542023          	sw	s5,0(s0)
   142b4:	23205063          	blez	s2,144d4 <emdnorm+0x2dc>
   142b8:	0144d603          	lhu	a2,20(s1)
   142bc:	01448593          	add	a1,s1,20
   142c0:	00b00793          	li	a5,11
   142c4:	03161613          	sll	a2,a2,0x31
   142c8:	03165613          	srl	a2,a2,0x31
   142cc:	00c00713          	li	a4,12
   142d0:	40f7073b          	subw	a4,a4,a5
   142d4:	02071713          	sll	a4,a4,0x20
   142d8:	02075713          	srl	a4,a4,0x20
   142dc:	00f70733          	add	a4,a4,a5
   142e0:	00171713          	sll	a4,a4,0x1
   142e4:	00179793          	sll	a5,a5,0x1
   142e8:	00248693          	add	a3,s1,2
   142ec:	00f487b3          	add	a5,s1,a5
   142f0:	00d70733          	add	a4,a4,a3
   142f4:	0007d683          	lhu	a3,0(a5)
   142f8:	00068463          	beqz	a3,14300 <emdnorm+0x108>
   142fc:	00166613          	or	a2,a2,1
   14300:	00079023          	sh	zero,0(a5)
   14304:	00278793          	add	a5,a5,2
   14308:	fef716e3          	bne	a4,a5,142f4 <emdnorm+0xfc>
   1430c:	0005d703          	lhu	a4,0(a1)
   14310:	01445683          	lhu	a3,20(s0)
   14314:	fff6c693          	not	a3,a3
   14318:	00d77733          	and	a4,a4,a3
   1431c:	00e59023          	sh	a4,0(a1)
   14320:	01645783          	lhu	a5,22(s0)
   14324:	00c7f733          	and	a4,a5,a2
   14328:	06070063          	beqz	a4,14388 <emdnorm+0x190>
   1432c:	02c79263          	bne	a5,a2,14350 <emdnorm+0x158>
   14330:	2c099663          	bnez	s3,145fc <emdnorm+0x404>
   14334:	00c42783          	lw	a5,12(s0)
   14338:	01845703          	lhu	a4,24(s0)
   1433c:	00179793          	sll	a5,a5,0x1
   14340:	00f487b3          	add	a5,s1,a5
   14344:	0007d783          	lhu	a5,0(a5)
   14348:	00e7f7b3          	and	a5,a5,a4
   1434c:	02078e63          	beqz	a5,14388 <emdnorm+0x190>
   14350:	03240793          	add	a5,s0,50
   14354:	01848613          	add	a2,s1,24
   14358:	00248513          	add	a0,s1,2
   1435c:	00000593          	li	a1,0
   14360:	0007d703          	lhu	a4,0(a5)
   14364:	00065683          	lhu	a3,0(a2)
   14368:	ffe60613          	add	a2,a2,-2
   1436c:	ffe78793          	add	a5,a5,-2
   14370:	00d70733          	add	a4,a4,a3
   14374:	00b70733          	add	a4,a4,a1
   14378:	01075593          	srl	a1,a4,0x10
   1437c:	00e61123          	sh	a4,2(a2)
   14380:	0015f593          	and	a1,a1,1
   14384:	fca61ee3          	bne	a2,a0,14360 <emdnorm+0x168>
   14388:	23205a63          	blez	s2,145bc <emdnorm+0x3c4>
   1438c:	0044d783          	lhu	a5,4(s1)
   14390:	20079663          	bnez	a5,1459c <emdnorm+0x3a4>
   14394:	000087b7          	lui	a5,0x8
   14398:	00049c23          	sh	zero,24(s1)
   1439c:	ffe78793          	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   143a0:	0f27c263          	blt	a5,s2,14484 <emdnorm+0x28c>
   143a4:	01249123          	sh	s2,2(s1)
   143a8:	03813083          	ld	ra,56(sp)
   143ac:	03013403          	ld	s0,48(sp)
   143b0:	02813483          	ld	s1,40(sp)
   143b4:	02013903          	ld	s2,32(sp)
   143b8:	01813983          	ld	s3,24(sp)
   143bc:	01013a03          	ld	s4,16(sp)
   143c0:	00813a83          	ld	s5,8(sp)
   143c4:	04010113          	add	sp,sp,64
   143c8:	00008067          	ret
   143cc:	04094063          	bltz	s2,1440c <emdnorm+0x214>
   143d0:	fc0a82e3          	beqz	s5,14394 <emdnorm+0x19c>
   143d4:	00442a83          	lw	s5,4(s0)
   143d8:	00042783          	lw	a5,0(s0)
   143dc:	e8fa90e3          	bne	s5,a5,1425c <emdnorm+0x64>
   143e0:	2d204263          	bgtz	s2,146a4 <emdnorm+0x4ac>
   143e4:	09000713          	li	a4,144
   143e8:	2ce79263          	bne	a5,a4,146ac <emdnorm+0x4b4>
   143ec:	00842583          	lw	a1,8(s0)
   143f0:	01445683          	lhu	a3,20(s0)
   143f4:	09000a93          	li	s5,144
   143f8:	00159593          	sll	a1,a1,0x1
   143fc:	00b485b3          	add	a1,s1,a1
   14400:	0005d703          	lhu	a4,0(a1)
   14404:	00d77633          	and	a2,a4,a3
   14408:	f0dff06f          	j	14314 <emdnorm+0x11c>
   1440c:	f7000793          	li	a5,-144
   14410:	16f95263          	bge	s2,a5,14574 <emdnorm+0x37c>
   14414:	00248793          	add	a5,s1,2
   14418:	01a48493          	add	s1,s1,26
   1441c:	00278793          	add	a5,a5,2
   14420:	fe079f23          	sh	zero,-2(a5)
   14424:	fef49ce3          	bne	s1,a5,1441c <emdnorm+0x224>
   14428:	f81ff06f          	j	143a8 <emdnorm+0x1b0>
   1442c:	01800793          	li	a5,24
   14430:	06fa8c63          	beq	s5,a5,144a8 <emdnorm+0x2b0>
   14434:	03500793          	li	a5,53
   14438:	20fa9463          	bne	s5,a5,14640 <emdnorm+0x448>
   1443c:	000017b7          	lui	a5,0x1
   14440:	04000737          	lui	a4,0x4000
   14444:	00600693          	li	a3,6
   14448:	80078793          	add	a5,a5,-2048 # 800 <exit-0xf8e8>
   1444c:	7ff70713          	add	a4,a4,2047 # 40007ff <__BSS_END__+0x3fdba17>
   14450:	00d42423          	sw	a3,8(s0)
   14454:	00e42a23          	sw	a4,20(s0)
   14458:	00f41c23          	sh	a5,24(s0)
   1445c:	00d42623          	sw	a3,12(s0)
   14460:	02f41323          	sh	a5,38(s0)
   14464:	01542023          	sw	s5,0(s0)
   14468:	07205663          	blez	s2,144d4 <emdnorm+0x2dc>
   1446c:	00c4d603          	lhu	a2,12(s1)
   14470:	00c48593          	add	a1,s1,12
   14474:	00700793          	li	a5,7
   14478:	7ff67613          	and	a2,a2,2047
   1447c:	e51ff06f          	j	142cc <emdnorm+0xd4>
   14480:	00049c23          	sh	zero,24(s1)
   14484:	ffff87b7          	lui	a5,0xffff8
   14488:	fff7c793          	not	a5,a5
   1448c:	00f49123          	sh	a5,2(s1)
   14490:	00448793          	add	a5,s1,4
   14494:	01848493          	add	s1,s1,24
   14498:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3218>
   1449c:	00278793          	add	a5,a5,2
   144a0:	fe979ce3          	bne	a5,s1,14498 <emdnorm+0x2a0>
   144a4:	f05ff06f          	j	143a8 <emdnorm+0x1b0>
   144a8:	008007b7          	lui	a5,0x800
   144ac:	00400693          	li	a3,4
   144b0:	10000713          	li	a4,256
   144b4:	0ff78793          	add	a5,a5,255 # 8000ff <__BSS_END__+0x7db317>
   144b8:	00d42423          	sw	a3,8(s0)
   144bc:	00f42a23          	sw	a5,20(s0)
   144c0:	00e41c23          	sh	a4,24(s0)
   144c4:	00d42623          	sw	a3,12(s0)
   144c8:	02e41123          	sh	a4,34(s0)
   144cc:	01542023          	sw	s5,0(s0)
   144d0:	1b204c63          	bgtz	s2,14688 <emdnorm+0x490>
   144d4:	0184d783          	lhu	a5,24(s1)
   144d8:	00048513          	mv	a0,s1
   144dc:	0017f793          	and	a5,a5,1
   144e0:	00f9e7b3          	or	a5,s3,a5
   144e4:	0007899b          	sext.w	s3,a5
   144e8:	da8ff0ef          	jal	13a90 <eshdn1>
   144ec:	00842783          	lw	a5,8(s0)
   144f0:	01445683          	lhu	a3,20(s0)
   144f4:	08f00513          	li	a0,143
   144f8:	00179593          	sll	a1,a5,0x1
   144fc:	00b485b3          	add	a1,s1,a1
   14500:	0005d703          	lhu	a4,0(a1)
   14504:	00d77633          	and	a2,a4,a3
   14508:	e15546e3          	blt	a0,s5,14314 <emdnorm+0x11c>
   1450c:	0017879b          	addw	a5,a5,1
   14510:	00c00513          	li	a0,12
   14514:	daf55ce3          	bge	a0,a5,142cc <emdnorm+0xd4>
   14518:	dfdff06f          	j	14314 <emdnorm+0x11c>
   1451c:	00248793          	add	a5,s1,2
   14520:	01a48493          	add	s1,s1,26
   14524:	00278793          	add	a5,a5,2
   14528:	fe079f23          	sh	zero,-2(a5)
   1452c:	fef49ce3          	bne	s1,a5,14524 <emdnorm+0x32c>
   14530:	e79ff06f          	j	143a8 <emdnorm+0x1b0>
   14534:	00700793          	li	a5,7
   14538:	00f42423          	sw	a5,8(s0)
   1453c:	800107b7          	lui	a5,0x80010
   14540:	fff78793          	add	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb217>
   14544:	00100713          	li	a4,1
   14548:	00f42a23          	sw	a5,20(s0)
   1454c:	00600793          	li	a5,6
   14550:	00e41c23          	sh	a4,24(s0)
   14554:	00f42623          	sw	a5,12(s0)
   14558:	02e41323          	sh	a4,38(s0)
   1455c:	01542023          	sw	s5,0(s0)
   14560:	f7205ae3          	blez	s2,144d4 <emdnorm+0x2dc>
   14564:	00e4d603          	lhu	a2,14(s1)
   14568:	00e48593          	add	a1,s1,14
   1456c:	00800793          	li	a5,8
   14570:	d5dff06f          	j	142cc <emdnorm+0xd4>
   14574:	0009059b          	sext.w	a1,s2
   14578:	00048513          	mv	a0,s1
   1457c:	8b1ff0ef          	jal	13e2c <eshift.part.0>
   14580:	0e050a63          	beqz	a0,14674 <emdnorm+0x47c>
   14584:	100a8a63          	beqz	s5,14698 <emdnorm+0x4a0>
   14588:	00442a83          	lw	s5,4(s0)
   1458c:	00042783          	lw	a5,0(s0)
   14590:	00100993          	li	s3,1
   14594:	ccfa94e3          	bne	s5,a5,1425c <emdnorm+0x64>
   14598:	e4dff06f          	j	143e4 <emdnorm+0x1ec>
   1459c:	00048513          	mv	a0,s1
   145a0:	cf0ff0ef          	jal	13a90 <eshdn1>
   145a4:	000087b7          	lui	a5,0x8
   145a8:	00190913          	add	s2,s2,1
   145ac:	00049c23          	sh	zero,24(s1)
   145b0:	ffe78793          	add	a5,a5,-2 # 7ffe <exit-0x80ea>
   145b4:	ed27c8e3          	blt	a5,s2,14484 <emdnorm+0x28c>
   145b8:	dedff06f          	j	143a4 <emdnorm+0x1ac>
   145bc:	09000793          	li	a5,144
   145c0:	02fa8263          	beq	s5,a5,145e4 <emdnorm+0x3ec>
   145c4:	00048513          	mv	a0,s1
   145c8:	d1cff0ef          	jal	13ae4 <eshup1>
   145cc:	0044d783          	lhu	a5,4(s1)
   145d0:	00079e63          	bnez	a5,145ec <emdnorm+0x3f4>
   145d4:	00049c23          	sh	zero,24(s1)
   145d8:	dc0956e3          	bgez	s2,143a4 <emdnorm+0x1ac>
   145dc:	00049123          	sh	zero,2(s1)
   145e0:	dc9ff06f          	j	143a8 <emdnorm+0x1b0>
   145e4:	0044d783          	lhu	a5,4(s1)
   145e8:	fe0786e3          	beqz	a5,145d4 <emdnorm+0x3dc>
   145ec:	00048513          	mv	a0,s1
   145f0:	ca0ff0ef          	jal	13a90 <eshdn1>
   145f4:	00190913          	add	s2,s2,1
   145f8:	fddff06f          	j	145d4 <emdnorm+0x3dc>
   145fc:	d40a0ae3          	beqz	s4,14350 <emdnorm+0x158>
   14600:	d89ff06f          	j	14388 <emdnorm+0x190>
   14604:	008007b7          	lui	a5,0x800
   14608:	00600693          	li	a3,6
   1460c:	10000713          	li	a4,256
   14610:	0ff78793          	add	a5,a5,255 # 8000ff <__BSS_END__+0x7db317>
   14614:	00d42423          	sw	a3,8(s0)
   14618:	00f42a23          	sw	a5,20(s0)
   1461c:	00e41c23          	sh	a4,24(s0)
   14620:	00d42623          	sw	a3,12(s0)
   14624:	02e41323          	sh	a4,38(s0)
   14628:	01542023          	sw	s5,0(s0)
   1462c:	eb2054e3          	blez	s2,144d4 <emdnorm+0x2dc>
   14630:	00c4c603          	lbu	a2,12(s1)
   14634:	00c48593          	add	a1,s1,12
   14638:	00700793          	li	a5,7
   1463c:	c91ff06f          	j	142cc <emdnorm+0xd4>
   14640:	00c00793          	li	a5,12
   14644:	00f42423          	sw	a5,8(s0)
   14648:	800107b7          	lui	a5,0x80010
   1464c:	fff78793          	add	a5,a5,-1 # ffffffff8000ffff <__BSS_END__+0xffffffff7ffeb217>
   14650:	00100713          	li	a4,1
   14654:	00f42a23          	sw	a5,20(s0)
   14658:	00b00793          	li	a5,11
   1465c:	00f42623          	sw	a5,12(s0)
   14660:	00e41c23          	sh	a4,24(s0)
   14664:	02e41823          	sh	a4,48(s0)
   14668:	01542023          	sw	s5,0(s0)
   1466c:	000a8793          	mv	a5,s5
   14670:	d71ff06f          	j	143e0 <emdnorm+0x1e8>
   14674:	020a8263          	beqz	s5,14698 <emdnorm+0x4a0>
   14678:	00442a83          	lw	s5,4(s0)
   1467c:	00042783          	lw	a5,0(s0)
   14680:	bcfa9ee3          	bne	s5,a5,1425c <emdnorm+0x64>
   14684:	d61ff06f          	j	143e4 <emdnorm+0x1ec>
   14688:	0084c603          	lbu	a2,8(s1)
   1468c:	00848593          	add	a1,s1,8
   14690:	00500793          	li	a5,5
   14694:	c39ff06f          	j	142cc <emdnorm+0xd4>
   14698:	00049c23          	sh	zero,24(s1)
   1469c:	00049123          	sh	zero,2(s1)
   146a0:	d09ff06f          	j	143a8 <emdnorm+0x1b0>
   146a4:	00078a93          	mv	s5,a5
   146a8:	e45ff06f          	j	144ec <emdnorm+0x2f4>
   146ac:	00078a93          	mv	s5,a5
   146b0:	e25ff06f          	j	144d4 <emdnorm+0x2dc>

00000000000146b4 <eiremain>:
   146b4:	fa010113          	add	sp,sp,-96
   146b8:	05213023          	sd	s2,64(sp)
   146bc:	03313c23          	sd	s3,56(sp)
   146c0:	00058913          	mv	s2,a1
   146c4:	00255983          	lhu	s3,2(a0)
   146c8:	04113c23          	sd	ra,88(sp)
   146cc:	04813823          	sd	s0,80(sp)
   146d0:	04913423          	sd	s1,72(sp)
   146d4:	03413823          	sd	s4,48(sp)
   146d8:	00060493          	mv	s1,a2
   146dc:	01713c23          	sd	s7,24(sp)
   146e0:	03513423          	sd	s5,40(sp)
   146e4:	03613023          	sd	s6,32(sp)
   146e8:	01813823          	sd	s8,16(sp)
   146ec:	01913423          	sd	s9,8(sp)
   146f0:	01a13023          	sd	s10,0(sp)
   146f4:	00050b93          	mv	s7,a0
   146f8:	dc8ff0ef          	jal	13cc0 <enormlz>
   146fc:	00295403          	lhu	s0,2(s2)
   14700:	00050793          	mv	a5,a0
   14704:	00090513          	mv	a0,s2
   14708:	40f989b3          	sub	s3,s3,a5
   1470c:	03448a13          	add	s4,s1,52
   14710:	db0ff0ef          	jal	13cc0 <enormlz>
   14714:	40a40433          	sub	s0,s0,a0
   14718:	04e48713          	add	a4,s1,78
   1471c:	000a0793          	mv	a5,s4
   14720:	00278793          	add	a5,a5,2
   14724:	fe079f23          	sh	zero,-2(a5)
   14728:	fee79ce3          	bne	a5,a4,14720 <eiremain+0x6c>
   1472c:	09344863          	blt	s0,s3,147bc <eiremain+0x108>
   14730:	004b8b13          	add	s6,s7,4
   14734:	00490a93          	add	s5,s2,4
   14738:	01ab8c13          	add	s8,s7,26
   1473c:	00290d13          	add	s10,s2,2
   14740:	000a8713          	mv	a4,s5
   14744:	000b0793          	mv	a5,s6
   14748:	0007d603          	lhu	a2,0(a5)
   1474c:	00075683          	lhu	a3,0(a4)
   14750:	00278793          	add	a5,a5,2
   14754:	00270713          	add	a4,a4,2
   14758:	0ad61a63          	bne	a2,a3,1480c <eiremain+0x158>
   1475c:	fefc16e3          	bne	s8,a5,14748 <eiremain+0x94>
   14760:	018b8613          	add	a2,s7,24
   14764:	01890713          	add	a4,s2,24
   14768:	00000693          	li	a3,0
   1476c:	00075783          	lhu	a5,0(a4)
   14770:	00065583          	lhu	a1,0(a2)
   14774:	ffe70713          	add	a4,a4,-2
   14778:	ffe60613          	add	a2,a2,-2
   1477c:	40b787b3          	sub	a5,a5,a1
   14780:	40d787b3          	sub	a5,a5,a3
   14784:	0107d693          	srl	a3,a5,0x10
   14788:	00f71123          	sh	a5,2(a4)
   1478c:	0016f693          	and	a3,a3,1
   14790:	fda71ee3          	bne	a4,s10,1476c <eiremain+0xb8>
   14794:	00100c93          	li	s9,1
   14798:	000a0513          	mv	a0,s4
   1479c:	b48ff0ef          	jal	13ae4 <eshup1>
   147a0:	04c4d783          	lhu	a5,76(s1)
   147a4:	fff40413          	add	s0,s0,-1
   147a8:	00090513          	mv	a0,s2
   147ac:	00fce7b3          	or	a5,s9,a5
   147b0:	04f49623          	sh	a5,76(s1)
   147b4:	b30ff0ef          	jal	13ae4 <eshup1>
   147b8:	f93454e3          	bge	s0,s3,14740 <eiremain+0x8c>
   147bc:	00040693          	mv	a3,s0
   147c0:	05013403          	ld	s0,80(sp)
   147c4:	05813083          	ld	ra,88(sp)
   147c8:	03813983          	ld	s3,56(sp)
   147cc:	03013a03          	ld	s4,48(sp)
   147d0:	02813a83          	ld	s5,40(sp)
   147d4:	02013b03          	ld	s6,32(sp)
   147d8:	01813b83          	ld	s7,24(sp)
   147dc:	01013c03          	ld	s8,16(sp)
   147e0:	00813c83          	ld	s9,8(sp)
   147e4:	00013d03          	ld	s10,0(sp)
   147e8:	00048793          	mv	a5,s1
   147ec:	00090513          	mv	a0,s2
   147f0:	04813483          	ld	s1,72(sp)
   147f4:	04013903          	ld	s2,64(sp)
   147f8:	00000713          	li	a4,0
   147fc:	00000613          	li	a2,0
   14800:	00000593          	li	a1,0
   14804:	06010113          	add	sp,sp,96
   14808:	9f1ff06f          	j	141f8 <emdnorm>
   1480c:	00000c93          	li	s9,0
   14810:	f8c6e4e3          	bltu	a3,a2,14798 <eiremain+0xe4>
   14814:	f4dff06f          	j	14760 <eiremain+0xac>

0000000000014818 <e113toe.isra.0>:
   14818:	fd010113          	add	sp,sp,-48
   1481c:	02813023          	sd	s0,32(sp)
   14820:	02113423          	sd	ra,40(sp)
   14824:	00058413          	mv	s0,a1
   14828:	00010793          	mv	a5,sp
   1482c:	01a10713          	add	a4,sp,26
   14830:	00278793          	add	a5,a5,2
   14834:	fe079f23          	sh	zero,-2(a5)
   14838:	fee79ce3          	bne	a5,a4,14830 <e113toe.isra.0+0x18>
   1483c:	00e55783          	lhu	a5,14(a0)
   14840:	00008737          	lui	a4,0x8
   14844:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   14848:	03079693          	sll	a3,a5,0x30
   1484c:	43f6d693          	sra	a3,a3,0x3f
   14850:	00d11023          	sh	a3,0(sp)
   14854:	00e7f6b3          	and	a3,a5,a4
   14858:	00068613          	mv	a2,a3
   1485c:	06e68063          	beq	a3,a4,148bc <e113toe.isra.0+0xa4>
   14860:	00e50793          	add	a5,a0,14
   14864:	00d11123          	sh	a3,2(sp)
   14868:	00610713          	add	a4,sp,6
   1486c:	ffe7d683          	lhu	a3,-2(a5)
   14870:	ffe78793          	add	a5,a5,-2
   14874:	00270713          	add	a4,a4,2
   14878:	fed71f23          	sh	a3,-2(a4)
   1487c:	fef518e3          	bne	a0,a5,1486c <e113toe.isra.0+0x54>
   14880:	02061263          	bnez	a2,148a4 <e113toe.isra.0+0x8c>
   14884:	00011223          	sh	zero,4(sp)
   14888:	00040593          	mv	a1,s0
   1488c:	00010513          	mv	a0,sp
   14890:	b74ff0ef          	jal	13c04 <emovo.constprop.0>
   14894:	02813083          	ld	ra,40(sp)
   14898:	02013403          	ld	s0,32(sp)
   1489c:	03010113          	add	sp,sp,48
   148a0:	00008067          	ret
   148a4:	00100793          	li	a5,1
   148a8:	fff00593          	li	a1,-1
   148ac:	00010513          	mv	a0,sp
   148b0:	00f11223          	sh	a5,4(sp)
   148b4:	d78ff0ef          	jal	13e2c <eshift.part.0>
   148b8:	fd1ff06f          	j	14888 <e113toe.isra.0+0x70>
   148bc:	00050793          	mv	a5,a0
   148c0:	00e50693          	add	a3,a0,14
   148c4:	0007d703          	lhu	a4,0(a5)
   148c8:	00278793          	add	a5,a5,2
   148cc:	06071c63          	bnez	a4,14944 <e113toe.isra.0+0x12c>
   148d0:	fed79ae3          	bne	a5,a3,148c4 <e113toe.isra.0+0xac>
   148d4:	01440713          	add	a4,s0,20
   148d8:	00040793          	mv	a5,s0
   148dc:	00278793          	add	a5,a5,2
   148e0:	fe079f23          	sh	zero,-2(a5)
   148e4:	fee79ce3          	bne	a5,a4,148dc <e113toe.isra.0+0xc4>
   148e8:	01240713          	add	a4,s0,18
   148ec:	00040793          	mv	a5,s0
   148f0:	00278793          	add	a5,a5,2
   148f4:	fe079f23          	sh	zero,-2(a5)
   148f8:	fee79ce3          	bne	a5,a4,148f0 <e113toe.isra.0+0xd8>
   148fc:	01245783          	lhu	a5,18(s0)
   14900:	000086b7          	lui	a3,0x8
   14904:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   14908:	00d7e7b3          	or	a5,a5,a3
   1490c:	03079793          	sll	a5,a5,0x30
   14910:	0307d793          	srl	a5,a5,0x30
   14914:	00f41923          	sh	a5,18(s0)
   14918:	00e51683          	lh	a3,14(a0)
   1491c:	f606dce3          	bgez	a3,14894 <e113toe.isra.0+0x7c>
   14920:	00040693          	mv	a3,s0
   14924:	0006d603          	lhu	a2,0(a3)
   14928:	00268693          	add	a3,a3,2
   1492c:	f60614e3          	bnez	a2,14894 <e113toe.isra.0+0x7c>
   14930:	fee69ae3          	bne	a3,a4,14924 <e113toe.isra.0+0x10c>
   14934:	ffff8737          	lui	a4,0xffff8
   14938:	00e7c7b3          	xor	a5,a5,a4
   1493c:	00f41923          	sh	a5,18(s0)
   14940:	f55ff06f          	j	14894 <e113toe.isra.0+0x7c>
   14944:	01040713          	add	a4,s0,16
   14948:	00040793          	mv	a5,s0
   1494c:	00278793          	add	a5,a5,2
   14950:	fe079f23          	sh	zero,-2(a5)
   14954:	fee79ce3          	bne	a5,a4,1494c <e113toe.isra.0+0x134>
   14958:	ffffc7b7          	lui	a5,0xffffc
   1495c:	00f41823          	sh	a5,16(s0)
   14960:	ffff87b7          	lui	a5,0xffff8
   14964:	fff7c793          	not	a5,a5
   14968:	00f41923          	sh	a5,18(s0)
   1496c:	f29ff06f          	j	14894 <e113toe.isra.0+0x7c>

0000000000014970 <ediv>:
   14970:	01255783          	lhu	a5,18(a0)
   14974:	f1010113          	add	sp,sp,-240
   14978:	0e813023          	sd	s0,224(sp)
   1497c:	fff7c793          	not	a5,a5
   14980:	0c913c23          	sd	s1,216(sp)
   14984:	0d213823          	sd	s2,208(sp)
   14988:	0d313423          	sd	s3,200(sp)
   1498c:	0e113423          	sd	ra,232(sp)
   14990:	0d413023          	sd	s4,192(sp)
   14994:	0b513c23          	sd	s5,184(sp)
   14998:	0b613823          	sd	s6,176(sp)
   1499c:	0b713423          	sd	s7,168(sp)
   149a0:	0b813023          	sd	s8,160(sp)
   149a4:	09913c23          	sd	s9,152(sp)
   149a8:	09a13823          	sd	s10,144(sp)
   149ac:	09b13423          	sd	s11,136(sp)
   149b0:	03179713          	sll	a4,a5,0x31
   149b4:	00050493          	mv	s1,a0
   149b8:	00058993          	mv	s3,a1
   149bc:	00060413          	mv	s0,a2
   149c0:	00068913          	mv	s2,a3
   149c4:	00071e63          	bnez	a4,149e0 <ediv+0x70>
   149c8:	01250693          	add	a3,a0,18
   149cc:	00050793          	mv	a5,a0
   149d0:	0007d703          	lhu	a4,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3218>
   149d4:	00278793          	add	a5,a5,2
   149d8:	0e071e63          	bnez	a4,14ad4 <ediv+0x164>
   149dc:	fed79ae3          	bne	a5,a3,149d0 <ediv+0x60>
   149e0:	0129d783          	lhu	a5,18(s3)
   149e4:	fff7c793          	not	a5,a5
   149e8:	03179713          	sll	a4,a5,0x31
   149ec:	00071e63          	bnez	a4,14a08 <ediv+0x98>
   149f0:	01298693          	add	a3,s3,18
   149f4:	00098793          	mv	a5,s3
   149f8:	0007d703          	lhu	a4,0(a5)
   149fc:	00278793          	add	a5,a5,2
   14a00:	0e071863          	bnez	a4,14af0 <ediv+0x180>
   14a04:	fed79ae3          	bne	a5,a3,149f8 <ediv+0x88>
   14a08:	00022a37          	lui	s4,0x22
   14a0c:	278a0593          	add	a1,s4,632 # 22278 <ezero>
   14a10:	00048513          	mv	a0,s1
   14a14:	e94ff0ef          	jal	140a8 <ecmp>
   14a18:	18050a63          	beqz	a0,14bac <ediv+0x23c>
   14a1c:	0124d603          	lhu	a2,18(s1)
   14a20:	000087b7          	lui	a5,0x8
   14a24:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   14a28:	00f67533          	and	a0,a2,a5
   14a2c:	0ef51063          	bne	a0,a5,14b0c <ediv+0x19c>
   14a30:	01248693          	add	a3,s1,18
   14a34:	00048793          	mv	a5,s1
   14a38:	0007d703          	lhu	a4,0(a5)
   14a3c:	00278793          	add	a5,a5,2
   14a40:	0c071663          	bnez	a4,14b0c <ediv+0x19c>
   14a44:	fed79ae3          	bne	a5,a3,14a38 <ediv+0xc8>
   14a48:	0129d703          	lhu	a4,18(s3)
   14a4c:	fff74793          	not	a5,a4
   14a50:	03179693          	sll	a3,a5,0x31
   14a54:	14069263          	bnez	a3,14b98 <ediv+0x228>
   14a58:	01298693          	add	a3,s3,18
   14a5c:	00098793          	mv	a5,s3
   14a60:	0007d583          	lhu	a1,0(a5)
   14a64:	00278793          	add	a5,a5,2
   14a68:	48059c63          	bnez	a1,14f00 <ediv+0x590>
   14a6c:	fed79ae3          	bne	a5,a3,14a60 <ediv+0xf0>
   14a70:	01040713          	add	a4,s0,16
   14a74:	00040793          	mv	a5,s0
   14a78:	00278793          	add	a5,a5,2
   14a7c:	fe079f23          	sh	zero,-2(a5)
   14a80:	fee79ce3          	bne	a5,a4,14a78 <ediv+0x108>
   14a84:	ffffc7b7          	lui	a5,0xffffc
   14a88:	00f41823          	sh	a5,16(s0)
   14a8c:	ffff87b7          	lui	a5,0xffff8
   14a90:	fff7c793          	not	a5,a5
   14a94:	00f41923          	sh	a5,18(s0)
   14a98:	0e813083          	ld	ra,232(sp)
   14a9c:	0e013403          	ld	s0,224(sp)
   14aa0:	0d813483          	ld	s1,216(sp)
   14aa4:	0d013903          	ld	s2,208(sp)
   14aa8:	0c813983          	ld	s3,200(sp)
   14aac:	0c013a03          	ld	s4,192(sp)
   14ab0:	0b813a83          	ld	s5,184(sp)
   14ab4:	0b013b03          	ld	s6,176(sp)
   14ab8:	0a813b83          	ld	s7,168(sp)
   14abc:	0a013c03          	ld	s8,160(sp)
   14ac0:	09813c83          	ld	s9,152(sp)
   14ac4:	09013d03          	ld	s10,144(sp)
   14ac8:	08813d83          	ld	s11,136(sp)
   14acc:	0f010113          	add	sp,sp,240
   14ad0:	00008067          	ret
   14ad4:	01448713          	add	a4,s1,20
   14ad8:	0004d783          	lhu	a5,0(s1)
   14adc:	00248493          	add	s1,s1,2
   14ae0:	00240413          	add	s0,s0,2
   14ae4:	fef41f23          	sh	a5,-2(s0)
   14ae8:	fee498e3          	bne	s1,a4,14ad8 <ediv+0x168>
   14aec:	fadff06f          	j	14a98 <ediv+0x128>
   14af0:	01440713          	add	a4,s0,20
   14af4:	0009d783          	lhu	a5,0(s3)
   14af8:	00240413          	add	s0,s0,2
   14afc:	00298993          	add	s3,s3,2
   14b00:	fef41f23          	sh	a5,-2(s0)
   14b04:	fee418e3          	bne	s0,a4,14af4 <ediv+0x184>
   14b08:	f91ff06f          	j	14a98 <ediv+0x128>
   14b0c:	0129d703          	lhu	a4,18(s3)
   14b10:	fff74793          	not	a5,a4
   14b14:	03179693          	sll	a3,a5,0x31
   14b18:	0a069463          	bnez	a3,14bc0 <ediv+0x250>
   14b1c:	00000813          	li	a6,0
   14b20:	01298693          	add	a3,s3,18
   14b24:	00098793          	mv	a5,s3
   14b28:	0007d583          	lhu	a1,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3218>
   14b2c:	00278793          	add	a5,a5,2
   14b30:	06059263          	bnez	a1,14b94 <ediv+0x224>
   14b34:	fed79ae3          	bne	a5,a3,14b28 <ediv+0x1b8>
   14b38:	000087b7          	lui	a5,0x8
   14b3c:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   14b40:	0cf50863          	beq	a0,a5,14c10 <ediv+0x2a0>
   14b44:	00f65613          	srl	a2,a2,0xf
   14b48:	0009d783          	lhu	a5,0(s3)
   14b4c:	00298993          	add	s3,s3,2
   14b50:	3a079063          	bnez	a5,14ef0 <ediv+0x580>
   14b54:	fed99ae3          	bne	s3,a3,14b48 <ediv+0x1d8>
   14b58:	00f75793          	srl	a5,a4,0xf
   14b5c:	00c7c7b3          	xor	a5,a5,a2
   14b60:	00f7979b          	sllw	a5,a5,0xf
   14b64:	00f41923          	sh	a5,18(s0)
   14b68:	01240713          	add	a4,s0,18
   14b6c:	00040793          	mv	a5,s0
   14b70:	00278793          	add	a5,a5,2
   14b74:	fe079f23          	sh	zero,-2(a5)
   14b78:	fee79ce3          	bne	a5,a4,14b70 <ediv+0x200>
   14b7c:	01245783          	lhu	a5,18(s0)
   14b80:	00008737          	lui	a4,0x8
   14b84:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   14b88:	00e7e7b3          	or	a5,a5,a4
   14b8c:	00f41923          	sh	a5,18(s0)
   14b90:	f09ff06f          	j	14a98 <ediv+0x128>
   14b94:	02080663          	beqz	a6,14bc0 <ediv+0x250>
   14b98:	01440793          	add	a5,s0,20
   14b9c:	00240413          	add	s0,s0,2
   14ba0:	fe041f23          	sh	zero,-2(s0)
   14ba4:	fef41ce3          	bne	s0,a5,14b9c <ediv+0x22c>
   14ba8:	ef1ff06f          	j	14a98 <ediv+0x128>
   14bac:	278a0593          	add	a1,s4,632
   14bb0:	00098513          	mv	a0,s3
   14bb4:	cf4ff0ef          	jal	140a8 <ecmp>
   14bb8:	e60512e3          	bnez	a0,14a1c <ediv+0xac>
   14bbc:	eb5ff06f          	j	14a70 <ediv+0x100>
   14bc0:	02010593          	add	a1,sp,32
   14bc4:	00048513          	mv	a0,s1
   14bc8:	c28ff0ef          	jal	13ff0 <emovi>
   14bcc:	04010593          	add	a1,sp,64
   14bd0:	00098513          	mv	a0,s3
   14bd4:	c1cff0ef          	jal	13ff0 <emovi>
   14bd8:	04215b03          	lhu	s6,66(sp)
   14bdc:	02215c03          	lhu	s8,34(sp)
   14be0:	040b1463          	bnez	s6,14c28 <ediv+0x2b8>
   14be4:	04210793          	add	a5,sp,66
   14be8:	05810c93          	add	s9,sp,88
   14bec:	0007d703          	lhu	a4,0(a5)
   14bf0:	00278793          	add	a5,a5,2
   14bf4:	2c071a63          	bnez	a4,14ec8 <ediv+0x558>
   14bf8:	fefc9ae3          	bne	s9,a5,14bec <ediv+0x27c>
   14bfc:	01440793          	add	a5,s0,20
   14c00:	00240413          	add	s0,s0,2
   14c04:	fe041f23          	sh	zero,-2(s0)
   14c08:	fef41ce3          	bne	s0,a5,14c00 <ediv+0x290>
   14c0c:	e8dff06f          	j	14a98 <ediv+0x128>
   14c10:	01248593          	add	a1,s1,18
   14c14:	0004d783          	lhu	a5,0(s1)
   14c18:	00248493          	add	s1,s1,2
   14c1c:	2c079e63          	bnez	a5,14ef8 <ediv+0x588>
   14c20:	feb49ae3          	bne	s1,a1,14c14 <ediv+0x2a4>
   14c24:	f21ff06f          	j	14b44 <ediv+0x1d4>
   14c28:	01613423          	sd	s6,8(sp)
   14c2c:	040c1663          	bnez	s8,14c78 <ediv+0x308>
   14c30:	02210793          	add	a5,sp,34
   14c34:	03810693          	add	a3,sp,56
   14c38:	0007d703          	lhu	a4,0(a5)
   14c3c:	00278793          	add	a5,a5,2
   14c40:	28071e63          	bnez	a4,14edc <ediv+0x56c>
   14c44:	fed79ae3          	bne	a5,a3,14c38 <ediv+0x2c8>
   14c48:	02015683          	lhu	a3,32(sp)
   14c4c:	04015603          	lhu	a2,64(sp)
   14c50:	01240713          	add	a4,s0,18
   14c54:	00040793          	mv	a5,s0
   14c58:	40c686b3          	sub	a3,a3,a2
   14c5c:	00d036b3          	snez	a3,a3
   14c60:	00f6969b          	sllw	a3,a3,0xf
   14c64:	00d41923          	sh	a3,18(s0)
   14c68:	00278793          	add	a5,a5,2
   14c6c:	fe079f23          	sh	zero,-2(a5)
   14c70:	fee79ce3          	bne	a5,a4,14c68 <ediv+0x2f8>
   14c74:	f09ff06f          	j	14b7c <ediv+0x20c>
   14c78:	01813823          	sd	s8,16(sp)
   14c7c:	04012783          	lw	a5,64(sp)
   14c80:	03890493          	add	s1,s2,56
   14c84:	03490713          	add	a4,s2,52
   14c88:	02f92a23          	sw	a5,52(s2)
   14c8c:	00e13c23          	sd	a4,24(sp)
   14c90:	04e90993          	add	s3,s2,78
   14c94:	00048793          	mv	a5,s1
   14c98:	00278793          	add	a5,a5,2
   14c9c:	fe079f23          	sh	zero,-2(a5)
   14ca0:	ff379ce3          	bne	a5,s3,14c98 <ediv+0x328>
   14ca4:	04010513          	add	a0,sp,64
   14ca8:	de9fe0ef          	jal	13a90 <eshdn1>
   14cac:	02615b83          	lhu	s7,38(sp)
   14cb0:	00010a37          	lui	s4,0x10
   14cb4:	04210d13          	add	s10,sp,66
   14cb8:	010b9a93          	sll	s5,s7,0x10
   14cbc:	417a8ab3          	sub	s5,s5,s7
   14cc0:	05810c93          	add	s9,sp,88
   14cc4:	fffa0a13          	add	s4,s4,-1 # ffff <exit-0xe9>
   14cc8:	07a10d93          	add	s11,sp,122
   14ccc:	06210c13          	add	s8,sp,98
   14cd0:	04415503          	lhu	a0,68(sp)
   14cd4:	04615783          	lhu	a5,70(sp)
   14cd8:	000a0b13          	mv	s6,s4
   14cdc:	01051513          	sll	a0,a0,0x10
   14ce0:	00f50533          	add	a0,a0,a5
   14ce4:	00aaea63          	bltu	s5,a0,14cf8 <ediv+0x388>
   14ce8:	000b8593          	mv	a1,s7
   14cec:	6bd0c0ef          	jal	21ba8 <__hidden___udivdi3>
   14cf0:	03051b13          	sll	s6,a0,0x30
   14cf4:	030b5b13          	srl	s6,s6,0x30
   14cf8:	06010613          	add	a2,sp,96
   14cfc:	02010593          	add	a1,sp,32
   14d00:	000b0513          	mv	a0,s6
   14d04:	e31fe0ef          	jal	13b34 <m16m>
   14d08:	04410713          	add	a4,sp,68
   14d0c:	06410793          	add	a5,sp,100
   14d10:	0007d603          	lhu	a2,0(a5)
   14d14:	00075683          	lhu	a3,0(a4)
   14d18:	00278793          	add	a5,a5,2
   14d1c:	00270713          	add	a4,a4,2
   14d20:	0ed61a63          	bne	a2,a3,14e14 <ediv+0x4a4>
   14d24:	ffb796e3          	bne	a5,s11,14d10 <ediv+0x3a0>
   14d28:	00000693          	li	a3,0
   14d2c:	07810613          	add	a2,sp,120
   14d30:	000c8793          	mv	a5,s9
   14d34:	0007d703          	lhu	a4,0(a5)
   14d38:	00065583          	lhu	a1,0(a2)
   14d3c:	ffe78793          	add	a5,a5,-2
   14d40:	ffe60613          	add	a2,a2,-2
   14d44:	40b70733          	sub	a4,a4,a1
   14d48:	40d70733          	sub	a4,a4,a3
   14d4c:	01075693          	srl	a3,a4,0x10
   14d50:	00e79123          	sh	a4,2(a5)
   14d54:	0016f693          	and	a3,a3,1
   14d58:	fda79ee3          	bne	a5,s10,14d34 <ediv+0x3c4>
   14d5c:	01649023          	sh	s6,0(s1)
   14d60:	04410793          	add	a5,sp,68
   14d64:	0027d703          	lhu	a4,2(a5)
   14d68:	00278793          	add	a5,a5,2
   14d6c:	fee79f23          	sh	a4,-2(a5)
   14d70:	ff979ae3          	bne	a5,s9,14d64 <ediv+0x3f4>
   14d74:	04011c23          	sh	zero,88(sp)
   14d78:	00248493          	add	s1,s1,2
   14d7c:	f4999ae3          	bne	s3,s1,14cd0 <ediv+0x360>
   14d80:	00000713          	li	a4,0
   14d84:	04410793          	add	a5,sp,68
   14d88:	05a10693          	add	a3,sp,90
   14d8c:	0007d603          	lhu	a2,0(a5)
   14d90:	00278793          	add	a5,a5,2
   14d94:	00c76733          	or	a4,a4,a2
   14d98:	fed79ae3          	bne	a5,a3,14d8c <ediv+0x41c>
   14d9c:	01813483          	ld	s1,24(sp)
   14da0:	0007071b          	sext.w	a4,a4
   14da4:	00e035b3          	snez	a1,a4
   14da8:	04010793          	add	a5,sp,64
   14dac:	0004d703          	lhu	a4,0(s1)
   14db0:	00278793          	add	a5,a5,2
   14db4:	00248493          	add	s1,s1,2
   14db8:	fee79f23          	sh	a4,-2(a5)
   14dbc:	fef698e3          	bne	a3,a5,14dac <ediv+0x43c>
   14dc0:	00813783          	ld	a5,8(sp)
   14dc4:	01013703          	ld	a4,16(sp)
   14dc8:	000046b7          	lui	a3,0x4
   14dcc:	fff68693          	add	a3,a3,-1 # 3fff <exit-0xc0e9>
   14dd0:	40e78b33          	sub	s6,a5,a4
   14dd4:	04010513          	add	a0,sp,64
   14dd8:	00090793          	mv	a5,s2
   14ddc:	04000713          	li	a4,64
   14de0:	00db06b3          	add	a3,s6,a3
   14de4:	00000613          	li	a2,0
   14de8:	c10ff0ef          	jal	141f8 <emdnorm>
   14dec:	04015703          	lhu	a4,64(sp)
   14df0:	02015783          	lhu	a5,32(sp)
   14df4:	00040593          	mv	a1,s0
   14df8:	04010513          	add	a0,sp,64
   14dfc:	40e787b3          	sub	a5,a5,a4
   14e00:	00f037b3          	snez	a5,a5
   14e04:	40f007bb          	negw	a5,a5
   14e08:	04f11023          	sh	a5,64(sp)
   14e0c:	df9fe0ef          	jal	13c04 <emovo.constprop.0>
   14e10:	c89ff06f          	j	14a98 <ediv+0x128>
   14e14:	f0c6fae3          	bgeu	a3,a2,14d28 <ediv+0x3b8>
   14e18:	fffb079b          	addw	a5,s6,-1
   14e1c:	03079513          	sll	a0,a5,0x30
   14e20:	03055513          	srl	a0,a0,0x30
   14e24:	00000693          	li	a3,0
   14e28:	03810613          	add	a2,sp,56
   14e2c:	07810713          	add	a4,sp,120
   14e30:	00075783          	lhu	a5,0(a4)
   14e34:	00065583          	lhu	a1,0(a2)
   14e38:	ffe70713          	add	a4,a4,-2
   14e3c:	ffe60613          	add	a2,a2,-2
   14e40:	40b787b3          	sub	a5,a5,a1
   14e44:	40d787b3          	sub	a5,a5,a3
   14e48:	0107d693          	srl	a3,a5,0x10
   14e4c:	00f71123          	sh	a5,2(a4)
   14e50:	0016f693          	and	a3,a3,1
   14e54:	fd871ee3          	bne	a4,s8,14e30 <ediv+0x4c0>
   14e58:	04410713          	add	a4,sp,68
   14e5c:	06410793          	add	a5,sp,100
   14e60:	0007d603          	lhu	a2,0(a5)
   14e64:	00075683          	lhu	a3,0(a4)
   14e68:	00278793          	add	a5,a5,2
   14e6c:	00270713          	add	a4,a4,2
   14e70:	00d61863          	bne	a2,a3,14e80 <ediv+0x510>
   14e74:	ffb796e3          	bne	a5,s11,14e60 <ediv+0x4f0>
   14e78:	00050b13          	mv	s6,a0
   14e7c:	eadff06f          	j	14d28 <ediv+0x3b8>
   14e80:	fec6fce3          	bgeu	a3,a2,14e78 <ediv+0x508>
   14e84:	ffeb031b          	addw	t1,s6,-2
   14e88:	03031b13          	sll	s6,t1,0x30
   14e8c:	030b5b13          	srl	s6,s6,0x30
   14e90:	00000693          	li	a3,0
   14e94:	03810613          	add	a2,sp,56
   14e98:	07810713          	add	a4,sp,120
   14e9c:	00075783          	lhu	a5,0(a4)
   14ea0:	00065583          	lhu	a1,0(a2)
   14ea4:	ffe70713          	add	a4,a4,-2
   14ea8:	ffe60613          	add	a2,a2,-2
   14eac:	40b787b3          	sub	a5,a5,a1
   14eb0:	40d787b3          	sub	a5,a5,a3
   14eb4:	0107d693          	srl	a3,a5,0x10
   14eb8:	00f71123          	sh	a5,2(a4)
   14ebc:	0016f693          	and	a3,a3,1
   14ec0:	fd871ee3          	bne	a4,s8,14e9c <ediv+0x52c>
   14ec4:	e65ff06f          	j	14d28 <ediv+0x3b8>
   14ec8:	04010513          	add	a0,sp,64
   14ecc:	df5fe0ef          	jal	13cc0 <enormlz>
   14ed0:	40a007b3          	neg	a5,a0
   14ed4:	00f13423          	sd	a5,8(sp)
   14ed8:	d55ff06f          	j	14c2c <ediv+0x2bc>
   14edc:	02010513          	add	a0,sp,32
   14ee0:	de1fe0ef          	jal	13cc0 <enormlz>
   14ee4:	40a007b3          	neg	a5,a0
   14ee8:	00f13823          	sd	a5,16(sp)
   14eec:	d91ff06f          	j	14c7c <ediv+0x30c>
   14ef0:	00000793          	li	a5,0
   14ef4:	c69ff06f          	j	14b5c <ediv+0x1ec>
   14ef8:	00000613          	li	a2,0
   14efc:	c4dff06f          	j	14b48 <ediv+0x1d8>
   14f00:	00100813          	li	a6,1
   14f04:	c21ff06f          	j	14b24 <ediv+0x1b4>

0000000000014f08 <emul>:
   14f08:	01255803          	lhu	a6,18(a0)
   14f0c:	00008737          	lui	a4,0x8
   14f10:	f4010113          	add	sp,sp,-192
   14f14:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   14f18:	0a813823          	sd	s0,176(sp)
   14f1c:	0a913423          	sd	s1,168(sp)
   14f20:	0b213023          	sd	s2,160(sp)
   14f24:	09513423          	sd	s5,136(sp)
   14f28:	00050493          	mv	s1,a0
   14f2c:	0a113c23          	sd	ra,184(sp)
   14f30:	09313c23          	sd	s3,152(sp)
   14f34:	09413823          	sd	s4,144(sp)
   14f38:	09613023          	sd	s6,128(sp)
   14f3c:	07713c23          	sd	s7,120(sp)
   14f40:	07813823          	sd	s8,112(sp)
   14f44:	07913423          	sd	s9,104(sp)
   14f48:	07a13023          	sd	s10,96(sp)
   14f4c:	00e87533          	and	a0,a6,a4
   14f50:	00058913          	mv	s2,a1
   14f54:	00060413          	mv	s0,a2
   14f58:	00068a93          	mv	s5,a3
   14f5c:	18e51663          	bne	a0,a4,150e8 <emul+0x1e0>
   14f60:	01248993          	add	s3,s1,18
   14f64:	00048713          	mv	a4,s1
   14f68:	00075603          	lhu	a2,0(a4)
   14f6c:	00270713          	add	a4,a4,2
   14f70:	20061463          	bnez	a2,15178 <emul+0x270>
   14f74:	ff371ae3          	bne	a4,s3,14f68 <emul+0x60>
   14f78:	01295603          	lhu	a2,18(s2)
   14f7c:	fff64793          	not	a5,a2
   14f80:	03179713          	sll	a4,a5,0x31
   14f84:	16070863          	beqz	a4,150f4 <emul+0x1ec>
   14f88:	00048793          	mv	a5,s1
   14f8c:	0007d703          	lhu	a4,0(a5)
   14f90:	00278793          	add	a5,a5,2
   14f94:	28071063          	bnez	a4,15214 <emul+0x30c>
   14f98:	ff379ae3          	bne	a5,s3,14f8c <emul+0x84>
   14f9c:	000225b7          	lui	a1,0x22
   14fa0:	27858593          	add	a1,a1,632 # 22278 <ezero>
   14fa4:	00090513          	mv	a0,s2
   14fa8:	900ff0ef          	jal	140a8 <ecmp>
   14fac:	28050e63          	beqz	a0,15248 <emul+0x340>
   14fb0:	01295603          	lhu	a2,18(s2)
   14fb4:	000085b7          	lui	a1,0x8
   14fb8:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   14fbc:	00b67733          	and	a4,a2,a1
   14fc0:	00070693          	mv	a3,a4
   14fc4:	01290793          	add	a5,s2,18
   14fc8:	40b71e63          	bne	a4,a1,153e4 <emul+0x4dc>
   14fcc:	00090713          	mv	a4,s2
   14fd0:	00075683          	lhu	a3,0(a4)
   14fd4:	00270713          	add	a4,a4,2
   14fd8:	20069263          	bnez	a3,151dc <emul+0x2d4>
   14fdc:	fee79ae3          	bne	a5,a4,14fd0 <emul+0xc8>
   14fe0:	000225b7          	lui	a1,0x22
   14fe4:	27858593          	add	a1,a1,632 # 22278 <ezero>
   14fe8:	00048513          	mv	a0,s1
   14fec:	8bcff0ef          	jal	140a8 <ecmp>
   14ff0:	24050c63          	beqz	a0,15248 <emul+0x340>
   14ff4:	0124d803          	lhu	a6,18(s1)
   14ff8:	01295603          	lhu	a2,18(s2)
   14ffc:	000087b7          	lui	a5,0x8
   15000:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15004:	00f87733          	and	a4,a6,a5
   15008:	00f676b3          	and	a3,a2,a5
   1500c:	00070593          	mv	a1,a4
   15010:	1ef70263          	beq	a4,a5,151f4 <emul+0x2ec>
   15014:	00068713          	mv	a4,a3
   15018:	00058693          	mv	a3,a1
   1501c:	000087b7          	lui	a5,0x8
   15020:	0007071b          	sext.w	a4,a4
   15024:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15028:	0ef71e63          	bne	a4,a5,15124 <emul+0x21c>
   1502c:	01290793          	add	a5,s2,18
   15030:	00090713          	mv	a4,s2
   15034:	00075583          	lhu	a1,0(a4)
   15038:	00270713          	add	a4,a4,2
   1503c:	0e059463          	bnez	a1,15124 <emul+0x21c>
   15040:	fef71ae3          	bne	a4,a5,15034 <emul+0x12c>
   15044:	000085b7          	lui	a1,0x8
   15048:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   1504c:	0006871b          	sext.w	a4,a3
   15050:	01248993          	add	s3,s1,18
   15054:	22b69063          	bne	a3,a1,15274 <emul+0x36c>
   15058:	0004d783          	lhu	a5,0(s1)
   1505c:	00248493          	add	s1,s1,2
   15060:	20079e63          	bnez	a5,1527c <emul+0x374>
   15064:	fe999ae3          	bne	s3,s1,15058 <emul+0x150>
   15068:	00f85813          	srl	a6,a6,0xf
   1506c:	000087b7          	lui	a5,0x8
   15070:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15074:	1af70e63          	beq	a4,a5,15230 <emul+0x328>
   15078:	00f65793          	srl	a5,a2,0xf
   1507c:	0107c7b3          	xor	a5,a5,a6
   15080:	00f7979b          	sllw	a5,a5,0xf
   15084:	00f41923          	sh	a5,18(s0)
   15088:	01240713          	add	a4,s0,18
   1508c:	00040793          	mv	a5,s0
   15090:	00278793          	add	a5,a5,2
   15094:	fe079f23          	sh	zero,-2(a5)
   15098:	fee79ce3          	bne	a5,a4,15090 <emul+0x188>
   1509c:	01245783          	lhu	a5,18(s0)
   150a0:	00008737          	lui	a4,0x8
   150a4:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   150a8:	00e7e7b3          	or	a5,a5,a4
   150ac:	00f41923          	sh	a5,18(s0)
   150b0:	0b813083          	ld	ra,184(sp)
   150b4:	0b013403          	ld	s0,176(sp)
   150b8:	0a813483          	ld	s1,168(sp)
   150bc:	0a013903          	ld	s2,160(sp)
   150c0:	09813983          	ld	s3,152(sp)
   150c4:	09013a03          	ld	s4,144(sp)
   150c8:	08813a83          	ld	s5,136(sp)
   150cc:	08013b03          	ld	s6,128(sp)
   150d0:	07813b83          	ld	s7,120(sp)
   150d4:	07013c03          	ld	s8,112(sp)
   150d8:	06813c83          	ld	s9,104(sp)
   150dc:	06013d03          	ld	s10,96(sp)
   150e0:	0c010113          	add	sp,sp,192
   150e4:	00008067          	ret
   150e8:	0125d603          	lhu	a2,18(a1)
   150ec:	00e677b3          	and	a5,a2,a4
   150f0:	02e79a63          	bne	a5,a4,15124 <emul+0x21c>
   150f4:	01290793          	add	a5,s2,18
   150f8:	00090713          	mv	a4,s2
   150fc:	00075683          	lhu	a3,0(a4)
   15100:	00270713          	add	a4,a4,2
   15104:	08069863          	bnez	a3,15194 <emul+0x28c>
   15108:	fef71ae3          	bne	a4,a5,150fc <emul+0x1f4>
   1510c:	00008737          	lui	a4,0x8
   15110:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   15114:	01248993          	add	s3,s1,18
   15118:	e6e508e3          	beq	a0,a4,14f88 <emul+0x80>
   1511c:	00e676b3          	and	a3,a2,a4
   15120:	eae686e3          	beq	a3,a4,14fcc <emul+0xc4>
   15124:	00048513          	mv	a0,s1
   15128:	00010593          	mv	a1,sp
   1512c:	ec5fe0ef          	jal	13ff0 <emovi>
   15130:	00090513          	mv	a0,s2
   15134:	02010593          	add	a1,sp,32
   15138:	eb9fe0ef          	jal	13ff0 <emovi>
   1513c:	00215903          	lhu	s2,2(sp)
   15140:	02215483          	lhu	s1,34(sp)
   15144:	06090663          	beqz	s2,151b0 <emul+0x2a8>
   15148:	14049a63          	bnez	s1,1529c <emul+0x394>
   1514c:	02210793          	add	a5,sp,34
   15150:	03810693          	add	a3,sp,56
   15154:	0007d703          	lhu	a4,0(a5)
   15158:	00278793          	add	a5,a5,2
   1515c:	26071a63          	bnez	a4,153d0 <emul+0x4c8>
   15160:	fed79ae3          	bne	a5,a3,15154 <emul+0x24c>
   15164:	01440793          	add	a5,s0,20
   15168:	00240413          	add	s0,s0,2
   1516c:	fe041f23          	sh	zero,-2(s0)
   15170:	fe879ce3          	bne	a5,s0,15168 <emul+0x260>
   15174:	f3dff06f          	j	150b0 <emul+0x1a8>
   15178:	01440713          	add	a4,s0,20
   1517c:	0004d783          	lhu	a5,0(s1)
   15180:	00240413          	add	s0,s0,2
   15184:	00248493          	add	s1,s1,2
   15188:	fef41f23          	sh	a5,-2(s0)
   1518c:	fee418e3          	bne	s0,a4,1517c <emul+0x274>
   15190:	f21ff06f          	j	150b0 <emul+0x1a8>
   15194:	01490713          	add	a4,s2,20
   15198:	00095783          	lhu	a5,0(s2)
   1519c:	00290913          	add	s2,s2,2
   151a0:	00240413          	add	s0,s0,2
   151a4:	fef41f23          	sh	a5,-2(s0)
   151a8:	ff2718e3          	bne	a4,s2,15198 <emul+0x290>
   151ac:	f05ff06f          	j	150b0 <emul+0x1a8>
   151b0:	00210793          	add	a5,sp,2
   151b4:	01810693          	add	a3,sp,24
   151b8:	0007d703          	lhu	a4,0(a5)
   151bc:	00278793          	add	a5,a5,2
   151c0:	20071063          	bnez	a4,153c0 <emul+0x4b8>
   151c4:	fef69ae3          	bne	a3,a5,151b8 <emul+0x2b0>
   151c8:	01440793          	add	a5,s0,20
   151cc:	00240413          	add	s0,s0,2
   151d0:	fe041f23          	sh	zero,-2(s0)
   151d4:	fef41ce3          	bne	s0,a5,151cc <emul+0x2c4>
   151d8:	ed9ff06f          	j	150b0 <emul+0x1a8>
   151dc:	0124d803          	lhu	a6,18(s1)
   151e0:	000085b7          	lui	a1,0x8
   151e4:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   151e8:	00b87733          	and	a4,a6,a1
   151ec:	00070693          	mv	a3,a4
   151f0:	e4b710e3          	bne	a4,a1,15030 <emul+0x128>
   151f4:	01248993          	add	s3,s1,18
   151f8:	00048793          	mv	a5,s1
   151fc:	0007d703          	lhu	a4,0(a5)
   15200:	00278793          	add	a5,a5,2
   15204:	08071463          	bnez	a4,1528c <emul+0x384>
   15208:	fef99ae3          	bne	s3,a5,151fc <emul+0x2f4>
   1520c:	0006871b          	sext.w	a4,a3
   15210:	e49ff06f          	j	15058 <emul+0x150>
   15214:	000085b7          	lui	a1,0x8
   15218:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   1521c:	00b67733          	and	a4,a2,a1
   15220:	00070693          	mv	a3,a4
   15224:	01290793          	add	a5,s2,18
   15228:	dab702e3          	beq	a4,a1,14fcc <emul+0xc4>
   1522c:	fcdff06f          	j	151f8 <emul+0x2f0>
   15230:	01290793          	add	a5,s2,18
   15234:	00095703          	lhu	a4,0(s2)
   15238:	00290913          	add	s2,s2,2
   1523c:	04071463          	bnez	a4,15284 <emul+0x37c>
   15240:	ff279ae3          	bne	a5,s2,15234 <emul+0x32c>
   15244:	e35ff06f          	j	15078 <emul+0x170>
   15248:	01040713          	add	a4,s0,16
   1524c:	00040793          	mv	a5,s0
   15250:	00278793          	add	a5,a5,2
   15254:	fe079f23          	sh	zero,-2(a5)
   15258:	fef71ce3          	bne	a4,a5,15250 <emul+0x348>
   1525c:	ffffc7b7          	lui	a5,0xffffc
   15260:	00f41823          	sh	a5,16(s0)
   15264:	ffff87b7          	lui	a5,0xffff8
   15268:	fff7c793          	not	a5,a5
   1526c:	00f41923          	sh	a5,18(s0)
   15270:	e41ff06f          	j	150b0 <emul+0x1a8>
   15274:	00f85813          	srl	a6,a6,0xf
   15278:	fbdff06f          	j	15234 <emul+0x32c>
   1527c:	00000813          	li	a6,0
   15280:	dedff06f          	j	1506c <emul+0x164>
   15284:	00000793          	li	a5,0
   15288:	df5ff06f          	j	1507c <emul+0x174>
   1528c:	00068713          	mv	a4,a3
   15290:	000086b7          	lui	a3,0x8
   15294:	fff68693          	add	a3,a3,-1 # 7fff <exit-0x80e9>
   15298:	d85ff06f          	j	1501c <emul+0x114>
   1529c:	00048993          	mv	s3,s1
   152a0:	02015783          	lhu	a5,32(sp)
   152a4:	0104949b          	sllw	s1,s1,0x10
   152a8:	038a8a13          	add	s4,s5,56
   152ac:	0097e7b3          	or	a5,a5,s1
   152b0:	02faaa23          	sw	a5,52(s5)
   152b4:	034a8493          	add	s1,s5,52
   152b8:	000a0793          	mv	a5,s4
   152bc:	04ea8713          	add	a4,s5,78
   152c0:	00079023          	sh	zero,0(a5) # ffffffffffff8000 <__BSS_END__+0xfffffffffffd3218>
   152c4:	00278793          	add	a5,a5,2
   152c8:	fee79ce3          	bne	a5,a4,152c0 <emul+0x3b8>
   152cc:	04ca8c93          	add	s9,s5,76
   152d0:	00000c13          	li	s8,0
   152d4:	01810b13          	add	s6,sp,24
   152d8:	00410d13          	add	s10,sp,4
   152dc:	04210b93          	add	s7,sp,66
   152e0:	000b5503          	lhu	a0,0(s6)
   152e4:	ffeb0b13          	add	s6,s6,-2
   152e8:	08051a63          	bnez	a0,1537c <emul+0x474>
   152ec:	04cad783          	lhu	a5,76(s5)
   152f0:	000c8713          	mv	a4,s9
   152f4:	00fc6c33          	or	s8,s8,a5
   152f8:	ffe75603          	lhu	a2,-2(a4)
   152fc:	ffe70713          	add	a4,a4,-2
   15300:	00c71123          	sh	a2,2(a4)
   15304:	feea1ae3          	bne	s4,a4,152f8 <emul+0x3f0>
   15308:	020a9c23          	sh	zero,56(s5)
   1530c:	fdab1ae3          	bne	s6,s10,152e0 <emul+0x3d8>
   15310:	02010793          	add	a5,sp,32
   15314:	03a10693          	add	a3,sp,58
   15318:	0004d703          	lhu	a4,0(s1)
   1531c:	00278793          	add	a5,a5,2
   15320:	00248493          	add	s1,s1,2
   15324:	fee79f23          	sh	a4,-2(a5)
   15328:	fed798e3          	bne	a5,a3,15318 <emul+0x410>
   1532c:	ffffc6b7          	lui	a3,0xffffc
   15330:	01390933          	add	s2,s2,s3
   15334:	00268693          	add	a3,a3,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd721a>
   15338:	000c0593          	mv	a1,s8
   1533c:	02010513          	add	a0,sp,32
   15340:	000a8793          	mv	a5,s5
   15344:	04000713          	li	a4,64
   15348:	00d906b3          	add	a3,s2,a3
   1534c:	00000613          	li	a2,0
   15350:	ea9fe0ef          	jal	141f8 <emdnorm>
   15354:	02015703          	lhu	a4,32(sp)
   15358:	00015783          	lhu	a5,0(sp)
   1535c:	00040593          	mv	a1,s0
   15360:	02010513          	add	a0,sp,32
   15364:	40e787b3          	sub	a5,a5,a4
   15368:	00f037b3          	snez	a5,a5
   1536c:	40f007bb          	negw	a5,a5
   15370:	02f11023          	sh	a5,32(sp)
   15374:	891fe0ef          	jal	13c04 <emovo.constprop.0>
   15378:	d39ff06f          	j	150b0 <emul+0x1a8>
   1537c:	04010613          	add	a2,sp,64
   15380:	02010593          	add	a1,sp,32
   15384:	fb0fe0ef          	jal	13b34 <m16m>
   15388:	000c8513          	mv	a0,s9
   1538c:	00000593          	li	a1,0
   15390:	05810613          	add	a2,sp,88
   15394:	00055783          	lhu	a5,0(a0)
   15398:	00065703          	lhu	a4,0(a2)
   1539c:	ffe50513          	add	a0,a0,-2
   153a0:	ffe60613          	add	a2,a2,-2
   153a4:	00f70733          	add	a4,a4,a5
   153a8:	00b70733          	add	a4,a4,a1
   153ac:	01075593          	srl	a1,a4,0x10
   153b0:	00e51123          	sh	a4,2(a0)
   153b4:	0015f593          	and	a1,a1,1
   153b8:	fd761ee3          	bne	a2,s7,15394 <emul+0x48c>
   153bc:	f31ff06f          	j	152ec <emul+0x3e4>
   153c0:	00010513          	mv	a0,sp
   153c4:	8fdfe0ef          	jal	13cc0 <enormlz>
   153c8:	40a00933          	neg	s2,a0
   153cc:	d7dff06f          	j	15148 <emul+0x240>
   153d0:	02010513          	add	a0,sp,32
   153d4:	8edfe0ef          	jal	13cc0 <enormlz>
   153d8:	40a009b3          	neg	s3,a0
   153dc:	02215483          	lhu	s1,34(sp)
   153e0:	ec1ff06f          	j	152a0 <emul+0x398>
   153e4:	0124d803          	lhu	a6,18(s1)
   153e8:	00b877b3          	and	a5,a6,a1
   153ec:	e0b786e3          	beq	a5,a1,151f8 <emul+0x2f0>
   153f0:	d35ff06f          	j	15124 <emul+0x21c>

00000000000153f4 <_ldtoa_r>:
   153f4:	d8010113          	add	sp,sp,-640
   153f8:	09100313          	li	t1,145
   153fc:	06c13c23          	sd	a2,120(sp)
   15400:	06053e03          	ld	t3,96(a0)
   15404:	02031613          	sll	a2,t1,0x20
   15408:	fff60613          	add	a2,a2,-1
   1540c:	26813823          	sd	s0,624(sp)
   15410:	27213023          	sd	s2,608(sp)
   15414:	26113c23          	sd	ra,632(sp)
   15418:	26913423          	sd	s1,616(sp)
   1541c:	25313c23          	sd	s3,600(sp)
   15420:	25413823          	sd	s4,592(sp)
   15424:	25513423          	sd	s5,584(sp)
   15428:	25613023          	sd	s6,576(sp)
   1542c:	23713c23          	sd	s7,568(sp)
   15430:	23813823          	sd	s8,560(sp)
   15434:	23913423          	sd	s9,552(sp)
   15438:	23a13023          	sd	s10,544(sp)
   1543c:	21b13c23          	sd	s11,536(sp)
   15440:	06b13823          	sd	a1,112(sp)
   15444:	1cc13023          	sd	a2,448(sp)
   15448:	00d13423          	sd	a3,8(sp)
   1544c:	00e13c23          	sd	a4,24(sp)
   15450:	02f13023          	sd	a5,32(sp)
   15454:	03113423          	sd	a7,40(sp)
   15458:	00050913          	mv	s2,a0
   1545c:	00080413          	mv	s0,a6
   15460:	020e0863          	beqz	t3,15490 <_ldtoa_r+0x9c>
   15464:	06852783          	lw	a5,104(a0)
   15468:	00100713          	li	a4,1
   1546c:	000e0593          	mv	a1,t3
   15470:	00f7173b          	sllw	a4,a4,a5
   15474:	02079793          	sll	a5,a5,0x20
   15478:	02071713          	sll	a4,a4,0x20
   1547c:	0207d793          	srl	a5,a5,0x20
   15480:	00e7e7b3          	or	a5,a5,a4
   15484:	00fe3423          	sd	a5,8(t3)
   15488:	7dd010ef          	jal	17464 <_Bfree>
   1548c:	06093023          	sd	zero,96(s2)
   15490:	0a010593          	add	a1,sp,160
   15494:	07010513          	add	a0,sp,112
   15498:	b80ff0ef          	jal	14818 <e113toe.isra.0>
   1549c:	0b215683          	lhu	a3,178(sp)
   154a0:	000087b7          	lui	a5,0x8
   154a4:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   154a8:	00f6f733          	and	a4,a3,a5
   154ac:	02e13823          	sd	a4,48(sp)
   154b0:	46f70863          	beq	a4,a5,15920 <_ldtoa_r+0x52c>
   154b4:	0106979b          	sllw	a5,a3,0x10
   154b8:	4107d79b          	sraw	a5,a5,0x10
   154bc:	00813703          	ld	a4,8(sp)
   154c0:	01f7d79b          	srlw	a5,a5,0x1f
   154c4:	00f42023          	sw	a5,0(s0)
   154c8:	00300793          	li	a5,3
   154cc:	12f70ae3          	beq	a4,a5,15e00 <_ldtoa_r+0xa0c>
   154d0:	01400793          	li	a5,20
   154d4:	00f13823          	sd	a5,16(sp)
   154d8:	00813783          	ld	a5,8(sp)
   154dc:	140792e3          	bnez	a5,15e20 <_ldtoa_r+0xa2c>
   154e0:	0c010793          	add	a5,sp,192
   154e4:	0a010713          	add	a4,sp,160
   154e8:	0d410413          	add	s0,sp,212
   154ec:	00075683          	lhu	a3,0(a4)
   154f0:	00278793          	add	a5,a5,2
   154f4:	00270713          	add	a4,a4,2
   154f8:	fed79f23          	sh	a3,-2(a5)
   154fc:	fe8798e3          	bne	a5,s0,154ec <_ldtoa_r+0xf8>
   15500:	0d215a83          	lhu	s5,210(sp)
   15504:	00000993          	li	s3,0
   15508:	00fad793          	srl	a5,s5,0xf
   1550c:	00078c63          	beqz	a5,15524 <_ldtoa_r+0x130>
   15510:	031a9f13          	sll	t5,s5,0x31
   15514:	031f5a93          	srl	s5,t5,0x31
   15518:	000107b7          	lui	a5,0x10
   1551c:	0d511923          	sh	s5,210(sp)
   15520:	fff78993          	add	s3,a5,-1 # ffff <exit-0xe9>
   15524:	00022bb7          	lui	s7,0x22
   15528:	000224b7          	lui	s1,0x22
   1552c:	0e010713          	add	a4,sp,224
   15530:	260b8793          	add	a5,s7,608 # 22260 <eone>
   15534:	27448493          	add	s1,s1,628 # 22274 <eone+0x14>
   15538:	0007d683          	lhu	a3,0(a5)
   1553c:	00278793          	add	a5,a5,2
   15540:	00270713          	add	a4,a4,2
   15544:	fed71f23          	sh	a3,-2(a4)
   15548:	fe9798e3          	bne	a5,s1,15538 <_ldtoa_r+0x144>
   1554c:	6a0a9c63          	bnez	s5,15c04 <_ldtoa_r+0x810>
   15550:	0c010793          	add	a5,sp,192
   15554:	0d210693          	add	a3,sp,210
   15558:	0007d703          	lhu	a4,0(a5)
   1555c:	6a071e63          	bnez	a4,15c18 <_ldtoa_r+0x824>
   15560:	00278793          	add	a5,a5,2
   15564:	fef69ae3          	bne	a3,a5,15558 <_ldtoa_r+0x164>
   15568:	00000413          	li	s0,0
   1556c:	18010c13          	add	s8,sp,384
   15570:	1c010b13          	add	s6,sp,448
   15574:	12010a13          	add	s4,sp,288
   15578:	13810d93          	add	s11,sp,312
   1557c:	000a0593          	mv	a1,s4
   15580:	0e010513          	add	a0,sp,224
   15584:	a6dfe0ef          	jal	13ff0 <emovi>
   15588:	000a0493          	mv	s1,s4
   1558c:	0e010693          	add	a3,sp,224
   15590:	000a0793          	mv	a5,s4
   15594:	0007b703          	ld	a4,0(a5)
   15598:	00878793          	add	a5,a5,8
   1559c:	00868693          	add	a3,a3,8
   155a0:	fee6bc23          	sd	a4,-8(a3)
   155a4:	ffb798e3          	bne	a5,s11,15594 <_ldtoa_r+0x1a0>
   155a8:	000a0593          	mv	a1,s4
   155ac:	0c010513          	add	a0,sp,192
   155b0:	0e011c23          	sh	zero,248(sp)
   155b4:	a3dfe0ef          	jal	13ff0 <emovi>
   155b8:	0d810b93          	add	s7,sp,216
   155bc:	0c010793          	add	a5,sp,192
   155c0:	0004b703          	ld	a4,0(s1)
   155c4:	00878793          	add	a5,a5,8
   155c8:	00848493          	add	s1,s1,8
   155cc:	fee7bc23          	sd	a4,-8(a5)
   155d0:	fefb98e3          	bne	s7,a5,155c0 <_ldtoa_r+0x1cc>
   155d4:	000b0613          	mv	a2,s6
   155d8:	0c010593          	add	a1,sp,192
   155dc:	0e010513          	add	a0,sp,224
   155e0:	0c011c23          	sh	zero,216(sp)
   155e4:	8d0ff0ef          	jal	146b4 <eiremain>
   155e8:	20c15d83          	lhu	s11,524(sp)
   155ec:	000224b7          	lui	s1,0x22
   155f0:	0c210d13          	add	s10,sp,194
   155f4:	10210c93          	add	s9,sp,258
   155f8:	160d9063          	bnez	s11,15758 <_ldtoa_r+0x364>
   155fc:	27848593          	add	a1,s1,632 # 22278 <ezero>
   15600:	0c010513          	add	a0,sp,192
   15604:	aa5fe0ef          	jal	140a8 <ecmp>
   15608:	14050863          	beqz	a0,15758 <_ldtoa_r+0x364>
   1560c:	00000713          	li	a4,0
   15610:	000b8693          	mv	a3,s7
   15614:	0006d783          	lhu	a5,0(a3)
   15618:	00f7d613          	srl	a2,a5,0xf
   1561c:	00060463          	beqz	a2,15624 <_ldtoa_r+0x230>
   15620:	00176713          	or	a4,a4,1
   15624:	0017979b          	sllw	a5,a5,0x1
   15628:	03079793          	sll	a5,a5,0x30
   1562c:	00277613          	and	a2,a4,2
   15630:	0307d793          	srl	a5,a5,0x30
   15634:	00060463          	beqz	a2,1563c <_ldtoa_r+0x248>
   15638:	0017e793          	or	a5,a5,1
   1563c:	0017171b          	sllw	a4,a4,0x1
   15640:	00f69023          	sh	a5,0(a3)
   15644:	03071713          	sll	a4,a4,0x30
   15648:	ffe68693          	add	a3,a3,-2
   1564c:	03075713          	srl	a4,a4,0x30
   15650:	fda692e3          	bne	a3,s10,15614 <_ldtoa_r+0x220>
   15654:	10010713          	add	a4,sp,256
   15658:	0c010793          	add	a5,sp,192
   1565c:	0007b683          	ld	a3,0(a5)
   15660:	00878793          	add	a5,a5,8
   15664:	00870713          	add	a4,a4,8
   15668:	fed73c23          	sd	a3,-8(a4)
   1566c:	fefb98e3          	bne	s7,a5,1565c <_ldtoa_r+0x268>
   15670:	10011c23          	sh	zero,280(sp)
   15674:	00000713          	li	a4,0
   15678:	11810693          	add	a3,sp,280
   1567c:	0006d783          	lhu	a5,0(a3)
   15680:	00f7d613          	srl	a2,a5,0xf
   15684:	00060463          	beqz	a2,1568c <_ldtoa_r+0x298>
   15688:	00176713          	or	a4,a4,1
   1568c:	0017979b          	sllw	a5,a5,0x1
   15690:	03079793          	sll	a5,a5,0x30
   15694:	00277613          	and	a2,a4,2
   15698:	0307d793          	srl	a5,a5,0x30
   1569c:	00060463          	beqz	a2,156a4 <_ldtoa_r+0x2b0>
   156a0:	0017e793          	or	a5,a5,1
   156a4:	0017171b          	sllw	a4,a4,0x1
   156a8:	00f69023          	sh	a5,0(a3)
   156ac:	03071713          	sll	a4,a4,0x30
   156b0:	ffe68693          	add	a3,a3,-2
   156b4:	03075713          	srl	a4,a4,0x30
   156b8:	fd9692e3          	bne	a3,s9,1567c <_ldtoa_r+0x288>
   156bc:	00000713          	li	a4,0
   156c0:	11810693          	add	a3,sp,280
   156c4:	0006d783          	lhu	a5,0(a3)
   156c8:	00f7d613          	srl	a2,a5,0xf
   156cc:	00060463          	beqz	a2,156d4 <_ldtoa_r+0x2e0>
   156d0:	00176713          	or	a4,a4,1
   156d4:	0017979b          	sllw	a5,a5,0x1
   156d8:	03079793          	sll	a5,a5,0x30
   156dc:	00277613          	and	a2,a4,2
   156e0:	0307d793          	srl	a5,a5,0x30
   156e4:	00060463          	beqz	a2,156ec <_ldtoa_r+0x2f8>
   156e8:	0017e793          	or	a5,a5,1
   156ec:	0017171b          	sllw	a4,a4,0x1
   156f0:	00f69023          	sh	a5,0(a3)
   156f4:	03071713          	sll	a4,a4,0x30
   156f8:	ffe68693          	add	a3,a3,-2
   156fc:	03075713          	srl	a4,a4,0x30
   15700:	fd9692e3          	bne	a3,s9,156c4 <_ldtoa_r+0x2d0>
   15704:	00000613          	li	a2,0
   15708:	000b8693          	mv	a3,s7
   1570c:	11810713          	add	a4,sp,280
   15710:	0006d583          	lhu	a1,0(a3)
   15714:	00075783          	lhu	a5,0(a4)
   15718:	ffe68693          	add	a3,a3,-2
   1571c:	ffe70713          	add	a4,a4,-2
   15720:	00b787b3          	add	a5,a5,a1
   15724:	00c787b3          	add	a5,a5,a2
   15728:	0107d613          	srl	a2,a5,0x10
   1572c:	00f69123          	sh	a5,2(a3)
   15730:	00167613          	and	a2,a2,1
   15734:	fd971ee3          	bne	a4,s9,15710 <_ldtoa_r+0x31c>
   15738:	000b0613          	mv	a2,s6
   1573c:	0c010593          	add	a1,sp,192
   15740:	0e010513          	add	a0,sp,224
   15744:	f71fe0ef          	jal	146b4 <eiremain>
   15748:	20c15783          	lhu	a5,524(sp)
   1574c:	fff4041b          	addw	s0,s0,-1
   15750:	ea0786e3          	beqz	a5,155fc <_ldtoa_r+0x208>
   15754:	00078d93          	mv	s11,a5
   15758:	02000793          	li	a5,32
   1575c:	00098463          	beqz	s3,15764 <_ldtoa_r+0x370>
   15760:	02d00793          	li	a5,45
   15764:	00813703          	ld	a4,8(sp)
   15768:	18f10023          	sb	a5,384(sp)
   1576c:	00300693          	li	a3,3
   15770:	01013783          	ld	a5,16(sp)
   15774:	00d71463          	bne	a4,a3,1577c <_ldtoa_r+0x388>
   15778:	008787bb          	addw	a5,a5,s0
   1577c:	02a00693          	li	a3,42
   15780:	00078613          	mv	a2,a5
   15784:	00f6d463          	bge	a3,a5,1578c <_ldtoa_r+0x398>
   15788:	02a00613          	li	a2,42
   1578c:	00a00693          	li	a3,10
   15790:	00060a1b          	sext.w	s4,a2
   15794:	64dd8063          	beq	s11,a3,15dd4 <_ldtoa_r+0x9e0>
   15798:	030d8d9b          	addw	s11,s11,48
   1579c:	02e00693          	li	a3,46
   157a0:	19b100a3          	sb	s11,385(sp)
   157a4:	18d10123          	sb	a3,386(sp)
   157a8:	2407c063          	bltz	a5,159e8 <_ldtoa_r+0x5f4>
   157ac:	18310a93          	add	s5,sp,387
   157b0:	00000993          	li	s3,0
   157b4:	10010c93          	add	s9,sp,256
   157b8:	11810d93          	add	s11,sp,280
   157bc:	0c210d13          	add	s10,sp,194
   157c0:	10210493          	add	s1,sp,258
   157c4:	00000713          	li	a4,0
   157c8:	000b8693          	mv	a3,s7
   157cc:	0006d783          	lhu	a5,0(a3)
   157d0:	00f7d613          	srl	a2,a5,0xf
   157d4:	00060463          	beqz	a2,157dc <_ldtoa_r+0x3e8>
   157d8:	00176713          	or	a4,a4,1
   157dc:	0017979b          	sllw	a5,a5,0x1
   157e0:	03079793          	sll	a5,a5,0x30
   157e4:	00277613          	and	a2,a4,2
   157e8:	0307d793          	srl	a5,a5,0x30
   157ec:	00060463          	beqz	a2,157f4 <_ldtoa_r+0x400>
   157f0:	0017e793          	or	a5,a5,1
   157f4:	0017171b          	sllw	a4,a4,0x1
   157f8:	00f69023          	sh	a5,0(a3)
   157fc:	03071713          	sll	a4,a4,0x30
   15800:	ffe68693          	add	a3,a3,-2
   15804:	03075713          	srl	a4,a4,0x30
   15808:	fda692e3          	bne	a3,s10,157cc <_ldtoa_r+0x3d8>
   1580c:	000c8793          	mv	a5,s9
   15810:	0c010713          	add	a4,sp,192
   15814:	00073683          	ld	a3,0(a4)
   15818:	00878793          	add	a5,a5,8
   1581c:	00870713          	add	a4,a4,8
   15820:	fed7bc23          	sd	a3,-8(a5)
   15824:	fefd98e3          	bne	s11,a5,15814 <_ldtoa_r+0x420>
   15828:	10011c23          	sh	zero,280(sp)
   1582c:	00000713          	li	a4,0
   15830:	000d8693          	mv	a3,s11
   15834:	0006d783          	lhu	a5,0(a3)
   15838:	00f7d613          	srl	a2,a5,0xf
   1583c:	00060463          	beqz	a2,15844 <_ldtoa_r+0x450>
   15840:	00176713          	or	a4,a4,1
   15844:	0017979b          	sllw	a5,a5,0x1
   15848:	03079793          	sll	a5,a5,0x30
   1584c:	00277613          	and	a2,a4,2
   15850:	0307d793          	srl	a5,a5,0x30
   15854:	00060463          	beqz	a2,1585c <_ldtoa_r+0x468>
   15858:	0017e793          	or	a5,a5,1
   1585c:	0017171b          	sllw	a4,a4,0x1
   15860:	00f69023          	sh	a5,0(a3)
   15864:	03071713          	sll	a4,a4,0x30
   15868:	ffe68693          	add	a3,a3,-2
   1586c:	03075713          	srl	a4,a4,0x30
   15870:	fc9692e3          	bne	a3,s1,15834 <_ldtoa_r+0x440>
   15874:	00000713          	li	a4,0
   15878:	000d8693          	mv	a3,s11
   1587c:	0006d783          	lhu	a5,0(a3)
   15880:	00f7d613          	srl	a2,a5,0xf
   15884:	00060463          	beqz	a2,1588c <_ldtoa_r+0x498>
   15888:	00176713          	or	a4,a4,1
   1588c:	0017979b          	sllw	a5,a5,0x1
   15890:	03079793          	sll	a5,a5,0x30
   15894:	00277613          	and	a2,a4,2
   15898:	0307d793          	srl	a5,a5,0x30
   1589c:	00060463          	beqz	a2,158a4 <_ldtoa_r+0x4b0>
   158a0:	0017e793          	or	a5,a5,1
   158a4:	0017171b          	sllw	a4,a4,0x1
   158a8:	00f69023          	sh	a5,0(a3)
   158ac:	03071713          	sll	a4,a4,0x30
   158b0:	ffe68693          	add	a3,a3,-2
   158b4:	03075713          	srl	a4,a4,0x30
   158b8:	fc9692e3          	bne	a3,s1,1587c <_ldtoa_r+0x488>
   158bc:	00000613          	li	a2,0
   158c0:	000b8693          	mv	a3,s7
   158c4:	000d8713          	mv	a4,s11
   158c8:	0006d583          	lhu	a1,0(a3)
   158cc:	00075783          	lhu	a5,0(a4)
   158d0:	ffe68693          	add	a3,a3,-2
   158d4:	ffe70713          	add	a4,a4,-2
   158d8:	00b787b3          	add	a5,a5,a1
   158dc:	00c787b3          	add	a5,a5,a2
   158e0:	0107d613          	srl	a2,a5,0x10
   158e4:	00f69123          	sh	a5,2(a3)
   158e8:	00167613          	and	a2,a2,1
   158ec:	fc971ee3          	bne	a4,s1,158c8 <_ldtoa_r+0x4d4>
   158f0:	0c010593          	add	a1,sp,192
   158f4:	000b0613          	mv	a2,s6
   158f8:	0e010513          	add	a0,sp,224
   158fc:	db9fe0ef          	jal	146b4 <eiremain>
   15900:	20c15583          	lhu	a1,524(sp)
   15904:	001a8793          	add	a5,s5,1
   15908:	0019899b          	addw	s3,s3,1
   1590c:	0305871b          	addw	a4,a1,48
   15910:	fee78fa3          	sb	a4,-1(a5)
   15914:	0f3a4063          	blt	s4,s3,159f4 <_ldtoa_r+0x600>
   15918:	00078a93          	mv	s5,a5
   1591c:	ea9ff06f          	j	157c4 <_ldtoa_r+0x3d0>
   15920:	0a010793          	add	a5,sp,160
   15924:	0b210613          	add	a2,sp,178
   15928:	0007d703          	lhu	a4,0(a5)
   1592c:	00278793          	add	a5,a5,2
   15930:	7e071063          	bnez	a4,16110 <_ldtoa_r+0xd1c>
   15934:	fec79ae3          	bne	a5,a2,15928 <_ldtoa_r+0x534>
   15938:	00f6d693          	srl	a3,a3,0xf
   1593c:	00813703          	ld	a4,8(sp)
   15940:	00d42023          	sw	a3,0(s0)
   15944:	00300793          	li	a5,3
   15948:	7af70463          	beq	a4,a5,160f0 <_ldtoa_r+0xcfc>
   1594c:	01400793          	li	a5,20
   15950:	00f13823          	sd	a5,16(sp)
   15954:	00070e63          	beqz	a4,15970 <_ldtoa_r+0x57c>
   15958:	01813783          	ld	a5,24(sp)
   1595c:	fff78a1b          	addw	s4,a5,-1
   15960:	02a00793          	li	a5,42
   15964:	0147d463          	bge	a5,s4,1596c <_ldtoa_r+0x578>
   15968:	02a00a13          	li	s4,42
   1596c:	01413823          	sd	s4,16(sp)
   15970:	0a015703          	lhu	a4,160(sp)
   15974:	0a010793          	add	a5,sp,160
   15978:	0b210693          	add	a3,sp,178
   1597c:	00278793          	add	a5,a5,2
   15980:	00071a63          	bnez	a4,15994 <_ldtoa_r+0x5a0>
   15984:	b4d78ee3          	beq	a5,a3,154e0 <_ldtoa_r+0xec>
   15988:	0007d703          	lhu	a4,0(a5)
   1598c:	00278793          	add	a5,a5,2
   15990:	fe070ae3          	beqz	a4,15984 <_ldtoa_r+0x590>
   15994:	18010c13          	add	s8,sp,384
   15998:	000225b7          	lui	a1,0x22
   1599c:	02058593          	add	a1,a1,32 # 22020 <blanks.1+0xd8>
   159a0:	000c0513          	mv	a0,s8
   159a4:	6e1020ef          	jal	18884 <sprintf>
   159a8:	00002437          	lui	s0,0x2
   159ac:	70f40413          	add	s0,s0,1807 # 270f <exit-0xd9d9>
   159b0:	09000793          	li	a5,144
   159b4:	1cf12223          	sw	a5,452(sp)
   159b8:	1c812823          	sw	s0,464(sp)
   159bc:	0a010793          	add	a5,sp,160
   159c0:	0b210613          	add	a2,sp,178
   159c4:	0007d703          	lhu	a4,0(a5)
   159c8:	00278793          	add	a5,a5,2
   159cc:	140710e3          	bnez	a4,1630c <_ldtoa_r+0xf18>
   159d0:	fec79ae3          	bne	a5,a2,159c4 <_ldtoa_r+0x5d0>
   159d4:	02013703          	ld	a4,32(sp)
   159d8:	000027b7          	lui	a5,0x2
   159dc:	70f78793          	add	a5,a5,1807 # 270f <exit-0xd9d9>
   159e0:	00f72023          	sw	a5,0(a4)
   159e4:	0e00006f          	j	15ac4 <_ldtoa_r+0x6d0>
   159e8:	20c15583          	lhu	a1,524(sp)
   159ec:	18210a93          	add	s5,sp,386
   159f0:	18310793          	add	a5,sp,387
   159f4:	00400693          	li	a3,4
   159f8:	04b6d863          	bge	a3,a1,15a48 <_ldtoa_r+0x654>
   159fc:	00500693          	li	a3,5
   15a00:	14d58ae3          	beq	a1,a3,16354 <_ldtoa_r+0xf60>
   15a04:	ffe7c683          	lbu	a3,-2(a5)
   15a08:	ffe78593          	add	a1,a5,-2
   15a0c:	07f6f693          	and	a3,a3,127
   15a10:	020a4663          	bltz	s4,15a3c <_ldtoa_r+0x648>
   15a14:	02e00793          	li	a5,46
   15a18:	03800613          	li	a2,56
   15a1c:	03000513          	li	a0,48
   15a20:	0cf688e3          	beq	a3,a5,162f0 <_ldtoa_r+0xefc>
   15a24:	0cd670e3          	bgeu	a2,a3,162e4 <_ldtoa_r+0xef0>
   15a28:	fff5c683          	lbu	a3,-1(a1)
   15a2c:	00a58023          	sb	a0,0(a1)
   15a30:	fff58593          	add	a1,a1,-1
   15a34:	07f6f693          	and	a3,a3,127
   15a38:	fe9ff06f          	j	15a20 <_ldtoa_r+0x62c>
   15a3c:	03100693          	li	a3,49
   15a40:	fed78f23          	sb	a3,-2(a5)
   15a44:	0014041b          	addw	s0,s0,1
   15a48:	000225b7          	lui	a1,0x22
   15a4c:	00040613          	mv	a2,s0
   15a50:	fb858593          	add	a1,a1,-72 # 21fb8 <blanks.1+0x70>
   15a54:	000a8513          	mv	a0,s5
   15a58:	62d020ef          	jal	18884 <sprintf>
   15a5c:	09000793          	li	a5,144
   15a60:	03013703          	ld	a4,48(sp)
   15a64:	1cf12223          	sw	a5,452(sp)
   15a68:	000087b7          	lui	a5,0x8
   15a6c:	1c812823          	sw	s0,464(sp)
   15a70:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15a74:	f4f704e3          	beq	a4,a5,159bc <_ldtoa_r+0x5c8>
   15a78:	02013703          	ld	a4,32(sp)
   15a7c:	18014683          	lbu	a3,384(sp)
   15a80:	0014079b          	addw	a5,s0,1
   15a84:	00f72023          	sw	a5,0(a4)
   15a88:	66068063          	beqz	a3,160e8 <_ldtoa_r+0xcf4>
   15a8c:	000c0793          	mv	a5,s8
   15a90:	02e00613          	li	a2,46
   15a94:	30c68a63          	beq	a3,a2,15da8 <_ldtoa_r+0x9b4>
   15a98:	0017c683          	lbu	a3,1(a5)
   15a9c:	00178793          	add	a5,a5,1
   15aa0:	fe069ae3          	bnez	a3,15a94 <_ldtoa_r+0x6a0>
   15aa4:	04500613          	li	a2,69
   15aa8:	00fc6663          	bltu	s8,a5,15ab4 <_ldtoa_r+0x6c0>
   15aac:	0140006f          	j	15ac0 <_ldtoa_r+0x6cc>
   15ab0:	63878c63          	beq	a5,s8,160e8 <_ldtoa_r+0xcf4>
   15ab4:	fff7c703          	lbu	a4,-1(a5)
   15ab8:	fff78793          	add	a5,a5,-1
   15abc:	fec71ae3          	bne	a4,a2,15ab0 <_ldtoa_r+0x6bc>
   15ac0:	00078023          	sb	zero,0(a5)
   15ac4:	000c0793          	mv	a5,s8
   15ac8:	02000613          	li	a2,32
   15acc:	02d00593          	li	a1,45
   15ad0:	0007c703          	lbu	a4,0(a5)
   15ad4:	00c70463          	beq	a4,a2,15adc <_ldtoa_r+0x6e8>
   15ad8:	00b71663          	bne	a4,a1,15ae4 <_ldtoa_r+0x6f0>
   15adc:	00178793          	add	a5,a5,1
   15ae0:	ff1ff06f          	j	15ad0 <_ldtoa_r+0x6dc>
   15ae4:	000c0613          	mv	a2,s8
   15ae8:	0007c703          	lbu	a4,0(a5)
   15aec:	00060493          	mv	s1,a2
   15af0:	00178793          	add	a5,a5,1
   15af4:	00e60023          	sb	a4,0(a2)
   15af8:	00160613          	add	a2,a2,1
   15afc:	fe0716e3          	bnez	a4,15ae8 <_ldtoa_r+0x6f4>
   15b00:	00813703          	ld	a4,8(sp)
   15b04:	00200793          	li	a5,2
   15b08:	fff4c603          	lbu	a2,-1(s1)
   15b0c:	28f70263          	beq	a4,a5,15d90 <_ldtoa_r+0x99c>
   15b10:	01013703          	ld	a4,16(sp)
   15b14:	00070793          	mv	a5,a4
   15b18:	00875463          	bge	a4,s0,15b20 <_ldtoa_r+0x72c>
   15b1c:	00040793          	mv	a5,s0
   15b20:	03000593          	li	a1,48
   15b24:	0007869b          	sext.w	a3,a5
   15b28:	02b61663          	bne	a2,a1,15b54 <_ldtoa_r+0x760>
   15b2c:	418487b3          	sub	a5,s1,s8
   15b30:	02f6d263          	bge	a3,a5,15b54 <_ldtoa_r+0x760>
   15b34:	03000613          	li	a2,48
   15b38:	00c0006f          	j	15b44 <_ldtoa_r+0x750>
   15b3c:	418487b3          	sub	a5,s1,s8
   15b40:	00f6da63          	bge	a3,a5,15b54 <_ldtoa_r+0x760>
   15b44:	ffe4c783          	lbu	a5,-2(s1)
   15b48:	fe048fa3          	sb	zero,-1(s1)
   15b4c:	fff48493          	add	s1,s1,-1
   15b50:	fec786e3          	beq	a5,a2,15b3c <_ldtoa_r+0x748>
   15b54:	00813703          	ld	a4,8(sp)
   15b58:	00300793          	li	a5,3
   15b5c:	1ef70863          	beq	a4,a5,15d4c <_ldtoa_r+0x958>
   15b60:	01813783          	ld	a5,24(sp)
   15b64:	01f00613          	li	a2,31
   15b68:	00100693          	li	a3,1
   15b6c:	0097851b          	addw	a0,a5,9
   15b70:	00400793          	li	a5,4
   15b74:	20a67863          	bgeu	a2,a0,15d84 <_ldtoa_r+0x990>
   15b78:	0017979b          	sllw	a5,a5,0x1
   15b7c:	01c78713          	add	a4,a5,28
   15b80:	0006859b          	sext.w	a1,a3
   15b84:	0016869b          	addw	a3,a3,1
   15b88:	fee578e3          	bgeu	a0,a4,15b78 <_ldtoa_r+0x784>
   15b8c:	0005859b          	sext.w	a1,a1
   15b90:	06b92423          	sw	a1,104(s2)
   15b94:	00090513          	mv	a0,s2
   15b98:	021010ef          	jal	173b8 <_Balloc>
   15b9c:	00050413          	mv	s0,a0
   15ba0:	1a050ee3          	beqz	a0,1655c <_ldtoa_r+0x1168>
   15ba4:	06a93023          	sd	a0,96(s2)
   15ba8:	000c0593          	mv	a1,s8
   15bac:	7e9020ef          	jal	18b94 <strcpy>
   15bb0:	02813703          	ld	a4,40(sp)
   15bb4:	00070863          	beqz	a4,15bc4 <_ldtoa_r+0x7d0>
   15bb8:	418487b3          	sub	a5,s1,s8
   15bbc:	00f407b3          	add	a5,s0,a5
   15bc0:	00f73023          	sd	a5,0(a4)
   15bc4:	27813083          	ld	ra,632(sp)
   15bc8:	00040513          	mv	a0,s0
   15bcc:	27013403          	ld	s0,624(sp)
   15bd0:	26813483          	ld	s1,616(sp)
   15bd4:	26013903          	ld	s2,608(sp)
   15bd8:	25813983          	ld	s3,600(sp)
   15bdc:	25013a03          	ld	s4,592(sp)
   15be0:	24813a83          	ld	s5,584(sp)
   15be4:	24013b03          	ld	s6,576(sp)
   15be8:	23813b83          	ld	s7,568(sp)
   15bec:	23013c03          	ld	s8,560(sp)
   15bf0:	22813c83          	ld	s9,552(sp)
   15bf4:	22013d03          	ld	s10,544(sp)
   15bf8:	21813d83          	ld	s11,536(sp)
   15bfc:	28010113          	add	sp,sp,640
   15c00:	00008067          	ret
   15c04:	000087b7          	lui	a5,0x8
   15c08:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15c0c:	6afa8663          	beq	s5,a5,162b8 <_ldtoa_r+0xec4>
   15c10:	0d011783          	lh	a5,208(sp)
   15c14:	7207d463          	bgez	a5,1633c <_ldtoa_r+0xf48>
   15c18:	0c010593          	add	a1,sp,192
   15c1c:	260b8513          	add	a0,s7,608
   15c20:	c88fe0ef          	jal	140a8 <ecmp>
   15c24:	940502e3          	beqz	a0,15568 <_ldtoa_r+0x174>
   15c28:	20054a63          	bltz	a0,15e3c <_ldtoa_r+0xa48>
   15c2c:	7a0a9063          	bnez	s5,163cc <_ldtoa_r+0xfd8>
   15c30:	0d011783          	lh	a5,208(sp)
   15c34:	00000413          	li	s0,0
   15c38:	1c010b13          	add	s6,sp,448
   15c3c:	0207c463          	bltz	a5,15c64 <_ldtoa_r+0x870>
   15c40:	00022d37          	lui	s10,0x22
   15c44:	0c010613          	add	a2,sp,192
   15c48:	000b0693          	mv	a3,s6
   15c4c:	00060593          	mv	a1,a2
   15c50:	248d0513          	add	a0,s10,584 # 22248 <etens+0xf0>
   15c54:	ab4ff0ef          	jal	14f08 <emul>
   15c58:	0d011783          	lh	a5,208(sp)
   15c5c:	fff4041b          	addw	s0,s0,-1
   15c60:	fe07d2e3          	bgez	a5,15c44 <_ldtoa_r+0x850>
   15c64:	12010a13          	add	s4,sp,288
   15c68:	13810d93          	add	s11,sp,312
   15c6c:	000a0793          	mv	a5,s4
   15c70:	0c010713          	add	a4,sp,192
   15c74:	13410613          	add	a2,sp,308
   15c78:	00075683          	lhu	a3,0(a4)
   15c7c:	00278793          	add	a5,a5,2
   15c80:	00270713          	add	a4,a4,2
   15c84:	fed79f23          	sh	a3,-2(a5)
   15c88:	fec798e3          	bne	a5,a2,15c78 <_ldtoa_r+0x884>
   15c8c:	000227b7          	lui	a5,0x22
   15c90:	0e010713          	add	a4,sp,224
   15c94:	26078793          	add	a5,a5,608 # 22260 <eone>
   15c98:	0007d683          	lhu	a3,0(a5)
   15c9c:	00278793          	add	a5,a5,2
   15ca0:	00270713          	add	a4,a4,2
   15ca4:	fed71f23          	sh	a3,-2(a4)
   15ca8:	fe9798e3          	bne	a5,s1,15c98 <_ldtoa_r+0x8a4>
   15cac:	00022d37          	lui	s10,0x22
   15cb0:	00022cb7          	lui	s9,0x22
   15cb4:	000227b7          	lui	a5,0x22
   15cb8:	fffff4b7          	lui	s1,0xfffff
   15cbc:	158d0d13          	add	s10,s10,344 # 22158 <etens>
   15cc0:	050c8c93          	add	s9,s9,80 # 22050 <emtens>
   15cc4:	14078a93          	add	s5,a5,320 # 22140 <emtens+0xf0>
   15cc8:	00c0006f          	j	15cd4 <_ldtoa_r+0x8e0>
   15ccc:	014c8c93          	add	s9,s9,20
   15cd0:	014d0d13          	add	s10,s10,20
   15cd4:	000a0593          	mv	a1,s4
   15cd8:	260b8513          	add	a0,s7,608
   15cdc:	bccfe0ef          	jal	140a8 <ecmp>
   15ce0:	04a05863          	blez	a0,15d30 <_ldtoa_r+0x93c>
   15ce4:	000a0593          	mv	a1,s4
   15ce8:	000c8513          	mv	a0,s9
   15cec:	bbcfe0ef          	jal	140a8 <ecmp>
   15cf0:	02054863          	bltz	a0,15d20 <_ldtoa_r+0x92c>
   15cf4:	000b0693          	mv	a3,s6
   15cf8:	000a0613          	mv	a2,s4
   15cfc:	000a0593          	mv	a1,s4
   15d00:	000d0513          	mv	a0,s10
   15d04:	a04ff0ef          	jal	14f08 <emul>
   15d08:	0e010613          	add	a2,sp,224
   15d0c:	000b0693          	mv	a3,s6
   15d10:	00060593          	mv	a1,a2
   15d14:	000d0513          	mv	a0,s10
   15d18:	9f0ff0ef          	jal	14f08 <emul>
   15d1c:	0084843b          	addw	s0,s1,s0
   15d20:	01f4d79b          	srlw	a5,s1,0x1f
   15d24:	009787bb          	addw	a5,a5,s1
   15d28:	4017d49b          	sraw	s1,a5,0x1
   15d2c:	fb5c90e3          	bne	s9,s5,15ccc <_ldtoa_r+0x8d8>
   15d30:	0e010613          	add	a2,sp,224
   15d34:	000b0693          	mv	a3,s6
   15d38:	260b8593          	add	a1,s7,608
   15d3c:	00060513          	mv	a0,a2
   15d40:	c31fe0ef          	jal	14970 <ediv>
   15d44:	18010c13          	add	s8,sp,384
   15d48:	835ff06f          	j	1557c <_ldtoa_r+0x188>
   15d4c:	01013783          	ld	a5,16(sp)
   15d50:	0087843b          	addw	s0,a5,s0
   15d54:	52044c63          	bltz	s0,1628c <_ldtoa_r+0xe98>
   15d58:	02013783          	ld	a5,32(sp)
   15d5c:	01813703          	ld	a4,24(sp)
   15d60:	0007a783          	lw	a5,0(a5)
   15d64:	00e787bb          	addw	a5,a5,a4
   15d68:	00f13c23          	sd	a5,24(sp)
   15d6c:	01813783          	ld	a5,24(sp)
   15d70:	01f00613          	li	a2,31
   15d74:	00100693          	li	a3,1
   15d78:	0037851b          	addw	a0,a5,3
   15d7c:	00400793          	li	a5,4
   15d80:	dea66ce3          	bltu	a2,a0,15b78 <_ldtoa_r+0x784>
   15d84:	06092423          	sw	zero,104(s2)
   15d88:	00000593          	li	a1,0
   15d8c:	e09ff06f          	j	15b94 <_ldtoa_r+0x7a0>
   15d90:	03000793          	li	a5,48
   15d94:	dcf616e3          	bne	a2,a5,15b60 <_ldtoa_r+0x76c>
   15d98:	418487b3          	sub	a5,s1,s8
   15d9c:	00100693          	li	a3,1
   15da0:	d8f6cae3          	blt	a3,a5,15b34 <_ldtoa_r+0x740>
   15da4:	dbdff06f          	j	15b60 <_ldtoa_r+0x76c>
   15da8:	0007c683          	lbu	a3,0(a5)
   15dac:	ce068ce3          	beqz	a3,15aa4 <_ldtoa_r+0x6b0>
   15db0:	0017c703          	lbu	a4,1(a5)
   15db4:	00178793          	add	a5,a5,1
   15db8:	fee78fa3          	sb	a4,-1(a5)
   15dbc:	ce0704e3          	beqz	a4,15aa4 <_ldtoa_r+0x6b0>
   15dc0:	0017c703          	lbu	a4,1(a5)
   15dc4:	00178793          	add	a5,a5,1
   15dc8:	fee78fa3          	sb	a4,-1(a5)
   15dcc:	fe0712e3          	bnez	a4,15db0 <_ldtoa_r+0x9bc>
   15dd0:	cd5ff06f          	j	15aa4 <_ldtoa_r+0x6b0>
   15dd4:	03100693          	li	a3,49
   15dd8:	18d100a3          	sb	a3,385(sp)
   15ddc:	02e00693          	li	a3,46
   15de0:	18d10123          	sb	a3,386(sp)
   15de4:	0014041b          	addw	s0,s0,1
   15de8:	2ef05863          	blez	a5,160d8 <_ldtoa_r+0xce4>
   15dec:	03000793          	li	a5,48
   15df0:	18f101a3          	sb	a5,387(sp)
   15df4:	fffa0a1b          	addw	s4,s4,-1
   15df8:	18410a93          	add	s5,sp,388
   15dfc:	9b5ff06f          	j	157b0 <_ldtoa_r+0x3bc>
   15e00:	01813703          	ld	a4,24(sp)
   15e04:	02a00793          	li	a5,42
   15e08:	00070a13          	mv	s4,a4
   15e0c:	00e7d463          	bge	a5,a4,15e14 <_ldtoa_r+0xa20>
   15e10:	02a00a13          	li	s4,42
   15e14:	000a079b          	sext.w	a5,s4
   15e18:	00f13823          	sd	a5,16(sp)
   15e1c:	ec4ff06f          	j	154e0 <_ldtoa_r+0xec>
   15e20:	01813783          	ld	a5,24(sp)
   15e24:	fff78a1b          	addw	s4,a5,-1
   15e28:	02a00793          	li	a5,42
   15e2c:	0147d463          	bge	a5,s4,15e34 <_ldtoa_r+0xa40>
   15e30:	02a00a13          	li	s4,42
   15e34:	01413823          	sd	s4,16(sp)
   15e38:	ea8ff06f          	j	154e0 <_ldtoa_r+0xec>
   15e3c:	10010c93          	add	s9,sp,256
   15e40:	000c8713          	mv	a4,s9
   15e44:	0c010793          	add	a5,sp,192
   15e48:	0007d683          	lhu	a3,0(a5)
   15e4c:	00278793          	add	a5,a5,2
   15e50:	00270713          	add	a4,a4,2
   15e54:	fed71f23          	sh	a3,-2(a4)
   15e58:	fe8798e3          	bne	a5,s0,15e48 <_ldtoa_r+0xa54>
   15e5c:	000047b7          	lui	a5,0x4
   15e60:	08e78793          	add	a5,a5,142 # 408e <exit-0xc05a>
   15e64:	10f11923          	sh	a5,274(sp)
   15e68:	000227b7          	lui	a5,0x22
   15e6c:	25c78793          	add	a5,a5,604 # 2225c <etens+0x104>
   15e70:	04f13423          	sd	a5,72(sp)
   15e74:	000087b7          	lui	a5,0x8
   15e78:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   15e7c:	02f13c23          	sd	a5,56(sp)
   15e80:	ffffc7b7          	lui	a5,0xffffc
   15e84:	0027879b          	addw	a5,a5,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffd721a>
   15e88:	00022eb7          	lui	t4,0x22
   15e8c:	04f12223          	sw	a5,68(sp)
   15e90:	000227b7          	lui	a5,0x22
   15e94:	00000413          	li	s0,0
   15e98:	01000713          	li	a4,16
   15e9c:	1f8e8e93          	add	t4,t4,504 # 221f8 <etens+0xa0>
   15ea0:	02878793          	add	a5,a5,40 # 22028 <bmask>
   15ea4:	05313c23          	sd	s3,88(sp)
   15ea8:	07213023          	sd	s2,96(sp)
   15eac:	18010c13          	add	s8,sp,384
   15eb0:	00040913          	mv	s2,s0
   15eb4:	1c010b13          	add	s6,sp,448
   15eb8:	12010a13          	add	s4,sp,288
   15ebc:	0f210d93          	add	s11,sp,242
   15ec0:	04f13823          	sd	a5,80(sp)
   15ec4:	0f410d13          	add	s10,sp,244
   15ec8:	000e8993          	mv	s3,t4
   15ecc:	00070413          	mv	s0,a4
   15ed0:	000b0693          	mv	a3,s6
   15ed4:	0e010613          	add	a2,sp,224
   15ed8:	000c8593          	mv	a1,s9
   15edc:	00098513          	mv	a0,s3
   15ee0:	a91fe0ef          	jal	14970 <ediv>
   15ee4:	08810793          	add	a5,sp,136
   15ee8:	0e010713          	add	a4,sp,224
   15eec:	09c10893          	add	a7,sp,156
   15ef0:	00075683          	lhu	a3,0(a4)
   15ef4:	00278793          	add	a5,a5,2
   15ef8:	00270713          	add	a4,a4,2
   15efc:	fed79f23          	sh	a3,-2(a5)
   15f00:	ff1798e3          	bne	a5,a7,15ef0 <_ldtoa_r+0xafc>
   15f04:	03813783          	ld	a5,56(sp)
   15f08:	09a15503          	lhu	a0,154(sp)
   15f0c:	00f575b3          	and	a1,a0,a5
   15f10:	04412783          	lw	a5,68(sp)
   15f14:	00f587bb          	addw	a5,a1,a5
   15f18:	00078593          	mv	a1,a5
   15f1c:	38f05263          	blez	a5,162a0 <_ldtoa_r+0xeac>
   15f20:	09000793          	li	a5,144
   15f24:	40b7863b          	subw	a2,a5,a1
   15f28:	000a0713          	mv	a4,s4
   15f2c:	08810793          	add	a5,sp,136
   15f30:	0007d683          	lhu	a3,0(a5)
   15f34:	00278793          	add	a5,a5,2
   15f38:	00270713          	add	a4,a4,2
   15f3c:	fed71f23          	sh	a3,-2(a4)
   15f40:	ff1798e3          	bne	a5,a7,15f30 <_ldtoa_r+0xb3c>
   15f44:	06c05663          	blez	a2,15fb0 <_ldtoa_r+0xbbc>
   15f48:	00f00793          	li	a5,15
   15f4c:	000a0713          	mv	a4,s4
   15f50:	02c7de63          	bge	a5,a2,15f8c <_ldtoa_r+0xb98>
   15f54:	08000693          	li	a3,128
   15f58:	40b686bb          	subw	a3,a3,a1
   15f5c:	0046d69b          	srlw	a3,a3,0x4
   15f60:	0016871b          	addw	a4,a3,1
   15f64:	00171713          	sll	a4,a4,0x1
   15f68:	00ea0733          	add	a4,s4,a4
   15f6c:	000a0793          	mv	a5,s4
   15f70:	00278793          	add	a5,a5,2
   15f74:	fe079f23          	sh	zero,-2(a5)
   15f78:	fee79ce3          	bne	a5,a4,15f70 <_ldtoa_r+0xb7c>
   15f7c:	08000613          	li	a2,128
   15f80:	40b6063b          	subw	a2,a2,a1
   15f84:	0046969b          	sllw	a3,a3,0x4
   15f88:	40d6063b          	subw	a2,a2,a3
   15f8c:	05013683          	ld	a3,80(sp)
   15f90:	00161793          	sll	a5,a2,0x1
   15f94:	00f687b3          	add	a5,a3,a5
   15f98:	0007d783          	lhu	a5,0(a5)
   15f9c:	00075683          	lhu	a3,0(a4)
   15fa0:	00f6f7b3          	and	a5,a3,a5
   15fa4:	00f71023          	sh	a5,0(a4)
   15fa8:	00f55513          	srl	a0,a0,0xf
   15fac:	16051663          	bnez	a0,16118 <_ldtoa_r+0xd24>
   15fb0:	0e010793          	add	a5,sp,224
   15fb4:	000a0713          	mv	a4,s4
   15fb8:	0007d603          	lhu	a2,0(a5)
   15fbc:	00075683          	lhu	a3,0(a4)
   15fc0:	02d61863          	bne	a2,a3,15ff0 <_ldtoa_r+0xbfc>
   15fc4:	00278793          	add	a5,a5,2
   15fc8:	00270713          	add	a4,a4,2
   15fcc:	fefd96e3          	bne	s11,a5,15fb8 <_ldtoa_r+0xbc4>
   15fd0:	000c8713          	mv	a4,s9
   15fd4:	0e010793          	add	a5,sp,224
   15fd8:	0007d683          	lhu	a3,0(a5)
   15fdc:	00278793          	add	a5,a5,2
   15fe0:	00270713          	add	a4,a4,2
   15fe4:	fed71f23          	sh	a3,-2(a4)
   15fe8:	ffa798e3          	bne	a5,s10,15fd8 <_ldtoa_r+0xbe4>
   15fec:	0124093b          	addw	s2,s0,s2
   15ff0:	04813783          	ld	a5,72(sp)
   15ff4:	01498993          	add	s3,s3,20
   15ff8:	00145413          	srl	s0,s0,0x1
   15ffc:	ecf99ae3          	bne	s3,a5,15ed0 <_ldtoa_r+0xadc>
   16000:	11215683          	lhu	a3,274(sp)
   16004:	ffffc7b7          	lui	a5,0xffffc
   16008:	f727879b          	addw	a5,a5,-142 # ffffffffffffbf72 <__BSS_END__+0xfffffffffffd718a>
   1600c:	00d787bb          	addw	a5,a5,a3
   16010:	00090413          	mv	s0,s2
   16014:	05813983          	ld	s3,88(sp)
   16018:	06013903          	ld	s2,96(sp)
   1601c:	015787bb          	addw	a5,a5,s5
   16020:	10f11923          	sh	a5,274(sp)
   16024:	0c010693          	add	a3,sp,192
   16028:	000c8793          	mv	a5,s9
   1602c:	11410593          	add	a1,sp,276
   16030:	0007d703          	lhu	a4,0(a5)
   16034:	00278793          	add	a5,a5,2
   16038:	00268693          	add	a3,a3,2
   1603c:	fee69f23          	sh	a4,-2(a3)
   16040:	feb798e3          	bne	a5,a1,16030 <_ldtoa_r+0xc3c>
   16044:	000227b7          	lui	a5,0x22
   16048:	0e010693          	add	a3,sp,224
   1604c:	26078793          	add	a5,a5,608 # 22260 <eone>
   16050:	0007d703          	lhu	a4,0(a5)
   16054:	00278793          	add	a5,a5,2
   16058:	00268693          	add	a3,a3,2
   1605c:	fee69f23          	sh	a4,-2(a3)
   16060:	fe9798e3          	bne	a5,s1,16050 <_ldtoa_r+0xc5c>
   16064:	000224b7          	lui	s1,0x22
   16068:	00001bb7          	lui	s7,0x1
   1606c:	15848493          	add	s1,s1,344 # 22158 <etens>
   16070:	00022d37          	lui	s10,0x22
   16074:	0140006f          	j	16088 <_ldtoa_r+0xc94>
   16078:	248d0793          	add	a5,s10,584 # 22248 <etens+0xf0>
   1607c:	001bdb93          	srl	s7,s7,0x1
   16080:	24f48e63          	beq	s1,a5,162dc <_ldtoa_r+0xee8>
   16084:	01448493          	add	s1,s1,20
   16088:	000c8593          	mv	a1,s9
   1608c:	248d0513          	add	a0,s10,584
   16090:	818fe0ef          	jal	140a8 <ecmp>
   16094:	24a04463          	bgtz	a0,162dc <_ldtoa_r+0xee8>
   16098:	000c8593          	mv	a1,s9
   1609c:	00048513          	mv	a0,s1
   160a0:	808fe0ef          	jal	140a8 <ecmp>
   160a4:	fca04ae3          	bgtz	a0,16078 <_ldtoa_r+0xc84>
   160a8:	000b0693          	mv	a3,s6
   160ac:	000c8613          	mv	a2,s9
   160b0:	000c8593          	mv	a1,s9
   160b4:	00048513          	mv	a0,s1
   160b8:	8b9fe0ef          	jal	14970 <ediv>
   160bc:	0e010613          	add	a2,sp,224
   160c0:	000b0693          	mv	a3,s6
   160c4:	00060593          	mv	a1,a2
   160c8:	00048513          	mv	a0,s1
   160cc:	e3dfe0ef          	jal	14f08 <emul>
   160d0:	008b843b          	addw	s0,s7,s0
   160d4:	fa5ff06f          	j	16078 <_ldtoa_r+0xc84>
   160d8:	18310a93          	add	s5,sp,387
   160dc:	00000a13          	li	s4,0
   160e0:	960794e3          	bnez	a5,15a48 <_ldtoa_r+0x654>
   160e4:	eccff06f          	j	157b0 <_ldtoa_r+0x3bc>
   160e8:	000c0793          	mv	a5,s8
   160ec:	9d5ff06f          	j	15ac0 <_ldtoa_r+0x6cc>
   160f0:	01813703          	ld	a4,24(sp)
   160f4:	02a00793          	li	a5,42
   160f8:	00070a13          	mv	s4,a4
   160fc:	00e7d463          	bge	a5,a4,16104 <_ldtoa_r+0xd10>
   16100:	02a00a13          	li	s4,42
   16104:	000a079b          	sext.w	a5,s4
   16108:	00f13823          	sd	a5,16(sp)
   1610c:	865ff06f          	j	15970 <_ldtoa_r+0x57c>
   16110:	00000693          	li	a3,0
   16114:	829ff06f          	j	1593c <_ldtoa_r+0x548>
   16118:	08810793          	add	a5,sp,136
   1611c:	000a0713          	mv	a4,s4
   16120:	0140006f          	j	16134 <_ldtoa_r+0xd40>
   16124:	00278793          	add	a5,a5,2
   16128:	09a10693          	add	a3,sp,154
   1612c:	00270713          	add	a4,a4,2
   16130:	e8d780e3          	beq	a5,a3,15fb0 <_ldtoa_r+0xbbc>
   16134:	0007d603          	lhu	a2,0(a5)
   16138:	00075683          	lhu	a3,0(a4)
   1613c:	fed604e3          	beq	a2,a3,16124 <_ldtoa_r+0xd30>
   16140:	13215783          	lhu	a5,306(sp)
   16144:	fff7c793          	not	a5,a5
   16148:	03179713          	sll	a4,a5,0x31
   1614c:	38070c63          	beqz	a4,164e4 <_ldtoa_r+0x10f0>
   16150:	14010593          	add	a1,sp,320
   16154:	260b8513          	add	a0,s7,608 # 1260 <exit-0xee88>
   16158:	e99fd0ef          	jal	13ff0 <emovi>
   1615c:	16010593          	add	a1,sp,352
   16160:	000a0513          	mv	a0,s4
   16164:	e8dfd0ef          	jal	13ff0 <emovi>
   16168:	14015783          	lhu	a5,320(sp)
   1616c:	16215703          	lhu	a4,354(sp)
   16170:	14215303          	lhu	t1,322(sp)
   16174:	fff7c793          	not	a5,a5
   16178:	14f11023          	sh	a5,320(sp)
   1617c:	40e305b3          	sub	a1,t1,a4
   16180:	00070693          	mv	a3,a4
   16184:	06b05e63          	blez	a1,16200 <_ldtoa_r+0xe0c>
   16188:	16010593          	add	a1,sp,352
   1618c:	000c0693          	mv	a3,s8
   16190:	17810793          	add	a5,sp,376
   16194:	000c0513          	mv	a0,s8
   16198:	00058613          	mv	a2,a1
   1619c:	00063803          	ld	a6,0(a2)
   161a0:	00860613          	add	a2,a2,8
   161a4:	00850513          	add	a0,a0,8
   161a8:	ff053c23          	sd	a6,-8(a0)
   161ac:	fec798e3          	bne	a5,a2,1619c <_ldtoa_r+0xda8>
   161b0:	14010613          	add	a2,sp,320
   161b4:	18011c23          	sh	zero,408(sp)
   161b8:	15810513          	add	a0,sp,344
   161bc:	00060793          	mv	a5,a2
   161c0:	0007b803          	ld	a6,0(a5)
   161c4:	00878793          	add	a5,a5,8
   161c8:	00858593          	add	a1,a1,8
   161cc:	ff05bc23          	sd	a6,-8(a1)
   161d0:	fea798e3          	bne	a5,a0,161c0 <_ldtoa_r+0xdcc>
   161d4:	16011c23          	sh	zero,376(sp)
   161d8:	018c0793          	add	a5,s8,24
   161dc:	0006b583          	ld	a1,0(a3)
   161e0:	00868693          	add	a3,a3,8
   161e4:	00860613          	add	a2,a2,8
   161e8:	feb63c23          	sd	a1,-8(a2)
   161ec:	fef698e3          	bne	a3,a5,161dc <_ldtoa_r+0xde8>
   161f0:	16215683          	lhu	a3,354(sp)
   161f4:	406705b3          	sub	a1,a4,t1
   161f8:	14011c23          	sh	zero,344(sp)
   161fc:	00068713          	mv	a4,a3
   16200:	30058a63          	beqz	a1,16514 <_ldtoa_r+0x1120>
   16204:	06d13423          	sd	a3,104(sp)
   16208:	f6f00793          	li	a5,-145
   1620c:	06f5c863          	blt	a1,a5,1627c <_ldtoa_r+0xe88>
   16210:	0005859b          	sext.w	a1,a1
   16214:	14010513          	add	a0,sp,320
   16218:	c15fd0ef          	jal	13e2c <eshift.part.0>
   1621c:	06813683          	ld	a3,104(sp)
   16220:	00050593          	mv	a1,a0
   16224:	17810793          	add	a5,sp,376
   16228:	14015603          	lhu	a2,320(sp)
   1622c:	16015703          	lhu	a4,352(sp)
   16230:	44e60663          	beq	a2,a4,1667c <_ldtoa_r+0x1288>
   16234:	00000713          	li	a4,0
   16238:	15810313          	add	t1,sp,344
   1623c:	16210513          	add	a0,sp,354
   16240:	0007d603          	lhu	a2,0(a5)
   16244:	00035803          	lhu	a6,0(t1)
   16248:	ffe78793          	add	a5,a5,-2
   1624c:	ffe30313          	add	t1,t1,-2
   16250:	41060633          	sub	a2,a2,a6
   16254:	40e60733          	sub	a4,a2,a4
   16258:	01075613          	srl	a2,a4,0x10
   1625c:	00e79123          	sh	a4,2(a5)
   16260:	00167713          	and	a4,a2,1
   16264:	fca79ee3          	bne	a5,a0,16240 <_ldtoa_r+0xe4c>
   16268:	00100613          	li	a2,1
   1626c:	000b0793          	mv	a5,s6
   16270:	04000713          	li	a4,64
   16274:	16010513          	add	a0,sp,352
   16278:	f81fd0ef          	jal	141f8 <emdnorm>
   1627c:	000a0593          	mv	a1,s4
   16280:	16010513          	add	a0,sp,352
   16284:	981fd0ef          	jal	13c04 <emovo.constprop.0>
   16288:	d29ff06f          	j	15fb0 <_ldtoa_r+0xbbc>
   1628c:	02013783          	ld	a5,32(sp)
   16290:	18010023          	sb	zero,384(sp)
   16294:	000c0493          	mv	s1,s8
   16298:	0007a023          	sw	zero,0(a5)
   1629c:	ad1ff06f          	j	15d6c <_ldtoa_r+0x978>
   162a0:	000a0793          	mv	a5,s4
   162a4:	00278793          	add	a5,a5,2
   162a8:	13410713          	add	a4,sp,308
   162ac:	fe079f23          	sh	zero,-2(a5)
   162b0:	fee79ae3          	bne	a5,a4,162a4 <_ldtoa_r+0xeb0>
   162b4:	cf5ff06f          	j	15fa8 <_ldtoa_r+0xbb4>
   162b8:	18010c13          	add	s8,sp,384
   162bc:	0e098863          	beqz	s3,163ac <_ldtoa_r+0xfb8>
   162c0:	000225b7          	lui	a1,0x22
   162c4:	f9058593          	add	a1,a1,-112 # 21f90 <blanks.1+0x48>
   162c8:	000c0513          	mv	a0,s8
   162cc:	5b8020ef          	jal	18884 <sprintf>
   162d0:	00002437          	lui	s0,0x2
   162d4:	70f40413          	add	s0,s0,1807 # 270f <exit-0xd9d9>
   162d8:	f84ff06f          	j	15a5c <_ldtoa_r+0x668>
   162dc:	13810d93          	add	s11,sp,312
   162e0:	a9cff06f          	j	1557c <_ldtoa_r+0x188>
   162e4:	0016869b          	addw	a3,a3,1
   162e8:	00d58023          	sb	a3,0(a1)
   162ec:	f5cff06f          	j	15a48 <_ldtoa_r+0x654>
   162f0:	fff5c783          	lbu	a5,-1(a1)
   162f4:	03800693          	li	a3,56
   162f8:	0cf6f463          	bgeu	a3,a5,163c0 <_ldtoa_r+0xfcc>
   162fc:	03100793          	li	a5,49
   16300:	0014041b          	addw	s0,s0,1
   16304:	fef58fa3          	sb	a5,-1(a1)
   16308:	f40ff06f          	j	15a48 <_ldtoa_r+0x654>
   1630c:	0a010793          	add	a5,sp,160
   16310:	0b210613          	add	a2,sp,178
   16314:	0080006f          	j	1631c <_ldtoa_r+0xf28>
   16318:	f6c78063          	beq	a5,a2,15a78 <_ldtoa_r+0x684>
   1631c:	0007d703          	lhu	a4,0(a5)
   16320:	00278793          	add	a5,a5,2
   16324:	fe070ae3          	beqz	a4,16318 <_ldtoa_r+0xf24>
   16328:	02013703          	ld	a4,32(sp)
   1632c:	000027b7          	lui	a5,0x2
   16330:	70f78793          	add	a5,a5,1807 # 270f <exit-0xd9d9>
   16334:	00f72023          	sw	a5,0(a4)
   16338:	f8cff06f          	j	15ac4 <_ldtoa_r+0x6d0>
   1633c:	18010c13          	add	s8,sp,384
   16340:	000225b7          	lui	a1,0x22
   16344:	fb058593          	add	a1,a1,-80 # 21fb0 <blanks.1+0x68>
   16348:	000c0513          	mv	a0,s8
   1634c:	538020ef          	jal	18884 <sprintf>
   16350:	f81ff06f          	j	162d0 <_ldtoa_r+0xedc>
   16354:	0e010593          	add	a1,sp,224
   16358:	0c010513          	add	a0,sp,192
   1635c:	02f13c23          	sd	a5,56(sp)
   16360:	8a5fd0ef          	jal	13c04 <emovo.constprop.0>
   16364:	000225b7          	lui	a1,0x22
   16368:	27858593          	add	a1,a1,632 # 22278 <ezero>
   1636c:	0e010513          	add	a0,sp,224
   16370:	d39fd0ef          	jal	140a8 <ecmp>
   16374:	03813783          	ld	a5,56(sp)
   16378:	e8051663          	bnez	a0,15a04 <_ldtoa_r+0x610>
   1637c:	ec0a4663          	bltz	s4,15a48 <_ldtoa_r+0x654>
   16380:	ffe7c683          	lbu	a3,-2(a5)
   16384:	ffe78593          	add	a1,a5,-2
   16388:	fd268613          	add	a2,a3,-46
   1638c:	00163613          	seqz	a2,a2
   16390:	fff64613          	not	a2,a2
   16394:	00ca8633          	add	a2,s5,a2
   16398:	00064603          	lbu	a2,0(a2)
   1639c:	07f6f693          	and	a3,a3,127
   163a0:	00167613          	and	a2,a2,1
   163a4:	e6061863          	bnez	a2,15a14 <_ldtoa_r+0x620>
   163a8:	ea0ff06f          	j	15a48 <_ldtoa_r+0x654>
   163ac:	000225b7          	lui	a1,0x22
   163b0:	fa058593          	add	a1,a1,-96 # 21fa0 <blanks.1+0x58>
   163b4:	000c0513          	mv	a0,s8
   163b8:	4cc020ef          	jal	18884 <sprintf>
   163bc:	f15ff06f          	j	162d0 <_ldtoa_r+0xedc>
   163c0:	0017879b          	addw	a5,a5,1
   163c4:	fef58fa3          	sb	a5,-1(a1)
   163c8:	e80ff06f          	j	15a48 <_ldtoa_r+0x654>
   163cc:	12010a13          	add	s4,sp,288
   163d0:	000a0593          	mv	a1,s4
   163d4:	0c010513          	add	a0,sp,192
   163d8:	00004d37          	lui	s10,0x4
   163dc:	c15fd0ef          	jal	13ff0 <emovi>
   163e0:	00000413          	li	s0,0
   163e4:	13810d93          	add	s11,sp,312
   163e8:	12210b13          	add	s6,sp,290
   163ec:	ffed0d13          	add	s10,s10,-2 # 3ffe <exit-0xc0ea>
   163f0:	11810c93          	add	s9,sp,280
   163f4:	13815783          	lhu	a5,312(sp)
   163f8:	0077f793          	and	a5,a5,7
   163fc:	0c079a63          	bnez	a5,164d0 <_ldtoa_r+0x10dc>
   16400:	10010a93          	add	s5,sp,256
   16404:	000a0c13          	mv	s8,s4
   16408:	000a8713          	mv	a4,s5
   1640c:	000a0793          	mv	a5,s4
   16410:	0007b683          	ld	a3,0(a5)
   16414:	00878793          	add	a5,a5,8
   16418:	00870713          	add	a4,a4,8
   1641c:	fed73c23          	sd	a3,-8(a4)
   16420:	ffb798e3          	bne	a5,s11,16410 <_ldtoa_r+0x101c>
   16424:	10010513          	add	a0,sp,256
   16428:	10011c23          	sh	zero,280(sp)
   1642c:	e64fd0ef          	jal	13a90 <eshdn1>
   16430:	10010513          	add	a0,sp,256
   16434:	e5cfd0ef          	jal	13a90 <eshdn1>
   16438:	00000613          	li	a2,0
   1643c:	11810693          	add	a3,sp,280
   16440:	000d8713          	mv	a4,s11
   16444:	0006d583          	lhu	a1,0(a3)
   16448:	00075783          	lhu	a5,0(a4)
   1644c:	ffe68693          	add	a3,a3,-2
   16450:	ffe70713          	add	a4,a4,-2
   16454:	00b787b3          	add	a5,a5,a1
   16458:	00c787b3          	add	a5,a5,a2
   1645c:	0107d613          	srl	a2,a5,0x10
   16460:	00f69123          	sh	a5,2(a3)
   16464:	00167613          	and	a2,a2,1
   16468:	fd671ee3          	bne	a4,s6,16444 <_ldtoa_r+0x1050>
   1646c:	10215783          	lhu	a5,258(sp)
   16470:	10415703          	lhu	a4,260(sp)
   16474:	0037879b          	addw	a5,a5,3
   16478:	10f11123          	sh	a5,258(sp)
   1647c:	02070063          	beqz	a4,1649c <_ldtoa_r+0x10a8>
   16480:	10010513          	add	a0,sp,256
   16484:	e0cfd0ef          	jal	13a90 <eshdn1>
   16488:	10215783          	lhu	a5,258(sp)
   1648c:	10415703          	lhu	a4,260(sp)
   16490:	0017879b          	addw	a5,a5,1
   16494:	10f11123          	sh	a5,258(sp)
   16498:	fe0714e3          	bnez	a4,16480 <_ldtoa_r+0x108c>
   1649c:	11815783          	lhu	a5,280(sp)
   164a0:	02079863          	bnez	a5,164d0 <_ldtoa_r+0x10dc>
   164a4:	10215783          	lhu	a5,258(sp)
   164a8:	02fd6463          	bltu	s10,a5,164d0 <_ldtoa_r+0x10dc>
   164ac:	000ab783          	ld	a5,0(s5)
   164b0:	008a8a93          	add	s5,s5,8
   164b4:	008c0c13          	add	s8,s8,8
   164b8:	fefc3c23          	sd	a5,-8(s8)
   164bc:	ff9a98e3          	bne	s5,s9,164ac <_ldtoa_r+0x10b8>
   164c0:	12011c23          	sh	zero,312(sp)
   164c4:	fff4041b          	addw	s0,s0,-1
   164c8:	fd500793          	li	a5,-43
   164cc:	f2f414e3          	bne	s0,a5,163f4 <_ldtoa_r+0x1000>
   164d0:	0c010593          	add	a1,sp,192
   164d4:	000a0513          	mv	a0,s4
   164d8:	f2cfd0ef          	jal	13c04 <emovo.constprop.0>
   164dc:	1c010b13          	add	s6,sp,448
   164e0:	f8cff06f          	j	15c6c <_ldtoa_r+0x878>
   164e4:	000a0793          	mv	a5,s4
   164e8:	13210713          	add	a4,sp,306
   164ec:	0007d683          	lhu	a3,0(a5)
   164f0:	00278793          	add	a5,a5,2
   164f4:	aa069ee3          	bnez	a3,15fb0 <_ldtoa_r+0xbbc>
   164f8:	fee79ae3          	bne	a5,a4,164ec <_ldtoa_r+0x10f8>
   164fc:	000a0793          	mv	a5,s4
   16500:	0007d683          	lhu	a3,0(a5)
   16504:	00278793          	add	a5,a5,2
   16508:	c40694e3          	bnez	a3,16150 <_ldtoa_r+0xd5c>
   1650c:	fee79ae3          	bne	a5,a4,16500 <_ldtoa_r+0x110c>
   16510:	aa1ff06f          	j	15fb0 <_ldtoa_r+0xbbc>
   16514:	16410613          	add	a2,sp,356
   16518:	14410793          	add	a5,sp,324
   1651c:	15a10313          	add	t1,sp,346
   16520:	0007d503          	lhu	a0,0(a5)
   16524:	00065583          	lhu	a1,0(a2)
   16528:	00278793          	add	a5,a5,2
   1652c:	00260613          	add	a2,a2,2
   16530:	04b51663          	bne	a0,a1,1657c <_ldtoa_r+0x1188>
   16534:	fe6796e3          	bne	a5,t1,16520 <_ldtoa_r+0x112c>
   16538:	14015603          	lhu	a2,320(sp)
   1653c:	16015783          	lhu	a5,352(sp)
   16540:	0af60a63          	beq	a2,a5,165f4 <_ldtoa_r+0x1200>
   16544:	000a0793          	mv	a5,s4
   16548:	13410713          	add	a4,sp,308
   1654c:	00278793          	add	a5,a5,2
   16550:	fe079f23          	sh	zero,-2(a5)
   16554:	fee79ce3          	bne	a5,a4,1654c <_ldtoa_r+0x1158>
   16558:	a59ff06f          	j	15fb0 <_ldtoa_r+0xbbc>
   1655c:	000226b7          	lui	a3,0x22
   16560:	000015b7          	lui	a1,0x1
   16564:	00022537          	lui	a0,0x22
   16568:	fc068693          	add	a3,a3,-64 # 21fc0 <blanks.1+0x78>
   1656c:	00000613          	li	a2,0
   16570:	b6e58593          	add	a1,a1,-1170 # b6e <exit-0xf57a>
   16574:	fd850513          	add	a0,a0,-40 # 21fd8 <blanks.1+0x90>
   16578:	3a4060ef          	jal	1c91c <__assert_func>
   1657c:	17810793          	add	a5,sp,376
   16580:	06a5f663          	bgeu	a1,a0,165ec <_ldtoa_r+0x11f8>
   16584:	16010713          	add	a4,sp,352
   16588:	000c0593          	mv	a1,s8
   1658c:	17810793          	add	a5,sp,376
   16590:	000c0513          	mv	a0,s8
   16594:	00070613          	mv	a2,a4
   16598:	00063803          	ld	a6,0(a2)
   1659c:	00860613          	add	a2,a2,8
   165a0:	00850513          	add	a0,a0,8
   165a4:	ff053c23          	sd	a6,-8(a0)
   165a8:	fec798e3          	bne	a5,a2,16598 <_ldtoa_r+0x11a4>
   165ac:	14010613          	add	a2,sp,320
   165b0:	18011c23          	sh	zero,408(sp)
   165b4:	00060513          	mv	a0,a2
   165b8:	00053803          	ld	a6,0(a0)
   165bc:	00870713          	add	a4,a4,8
   165c0:	00850513          	add	a0,a0,8
   165c4:	ff073c23          	sd	a6,-8(a4)
   165c8:	fee798e3          	bne	a5,a4,165b8 <_ldtoa_r+0x11c4>
   165cc:	16011c23          	sh	zero,376(sp)
   165d0:	15810713          	add	a4,sp,344
   165d4:	0005b503          	ld	a0,0(a1)
   165d8:	00860613          	add	a2,a2,8
   165dc:	00858593          	add	a1,a1,8
   165e0:	fea63c23          	sd	a0,-8(a2)
   165e4:	fec718e3          	bne	a4,a2,165d4 <_ldtoa_r+0x11e0>
   165e8:	14011c23          	sh	zero,344(sp)
   165ec:	00000593          	li	a1,0
   165f0:	c39ff06f          	j	16228 <_ldtoa_r+0xe34>
   165f4:	00068793          	mv	a5,a3
   165f8:	00069663          	bnez	a3,16604 <_ldtoa_r+0x1210>
   165fc:	16611603          	lh	a2,358(sp)
   16600:	02065263          	bgez	a2,16624 <_ldtoa_r+0x1230>
   16604:	16210613          	add	a2,sp,354
   16608:	17810793          	add	a5,sp,376
   1660c:	00065583          	lhu	a1,0(a2)
   16610:	06059063          	bnez	a1,16670 <_ldtoa_r+0x127c>
   16614:	00260613          	add	a2,a2,2
   16618:	fec79ae3          	bne	a5,a2,1660c <_ldtoa_r+0x1218>
   1661c:	16e11123          	sh	a4,354(sp)
   16620:	c5dff06f          	j	1627c <_ldtoa_r+0xe88>
   16624:	17810693          	add	a3,sp,376
   16628:	16210513          	add	a0,sp,354
   1662c:	0006d703          	lhu	a4,0(a3)
   16630:	00f75613          	srl	a2,a4,0xf
   16634:	00060463          	beqz	a2,1663c <_ldtoa_r+0x1248>
   16638:	0017e793          	or	a5,a5,1
   1663c:	0017171b          	sllw	a4,a4,0x1
   16640:	03071713          	sll	a4,a4,0x30
   16644:	0027f613          	and	a2,a5,2
   16648:	03075713          	srl	a4,a4,0x30
   1664c:	00060463          	beqz	a2,16654 <_ldtoa_r+0x1260>
   16650:	00176713          	or	a4,a4,1
   16654:	0017979b          	sllw	a5,a5,0x1
   16658:	00e69023          	sh	a4,0(a3)
   1665c:	03079793          	sll	a5,a5,0x30
   16660:	ffe68693          	add	a3,a3,-2
   16664:	0307d793          	srl	a5,a5,0x30
   16668:	fca692e3          	bne	a3,a0,1662c <_ldtoa_r+0x1238>
   1666c:	c11ff06f          	j	1627c <_ldtoa_r+0xe88>
   16670:	00168713          	add	a4,a3,1
   16674:	16e11123          	sh	a4,354(sp)
   16678:	c05ff06f          	j	1627c <_ldtoa_r+0xe88>
   1667c:	00000713          	li	a4,0
   16680:	15810513          	add	a0,sp,344
   16684:	14210313          	add	t1,sp,322
   16688:	0007d803          	lhu	a6,0(a5)
   1668c:	00055603          	lhu	a2,0(a0)
   16690:	ffe78793          	add	a5,a5,-2
   16694:	ffe50513          	add	a0,a0,-2
   16698:	01060633          	add	a2,a2,a6
   1669c:	00e60733          	add	a4,a2,a4
   166a0:	01075613          	srl	a2,a4,0x10
   166a4:	00e79123          	sh	a4,2(a5)
   166a8:	00167713          	and	a4,a2,1
   166ac:	fc651ee3          	bne	a0,t1,16688 <_ldtoa_r+0x1294>
   166b0:	00000613          	li	a2,0
   166b4:	bb9ff06f          	j	1626c <_ldtoa_r+0xe78>

00000000000166b8 <_ldcheck>:
   166b8:	00053703          	ld	a4,0(a0)
   166bc:	00853783          	ld	a5,8(a0)
   166c0:	fc010113          	add	sp,sp,-64
   166c4:	00010513          	mv	a0,sp
   166c8:	01010593          	add	a1,sp,16
   166cc:	00e13023          	sd	a4,0(sp)
   166d0:	00f13423          	sd	a5,8(sp)
   166d4:	02113c23          	sd	ra,56(sp)
   166d8:	940fe0ef          	jal	14818 <e113toe.isra.0>
   166dc:	02215783          	lhu	a5,34(sp)
   166e0:	00000513          	li	a0,0
   166e4:	fff7c793          	not	a5,a5
   166e8:	03179713          	sll	a4,a5,0x31
   166ec:	02071063          	bnez	a4,1670c <_ldcheck+0x54>
   166f0:	01010793          	add	a5,sp,16
   166f4:	02210693          	add	a3,sp,34
   166f8:	0007d703          	lhu	a4,0(a5)
   166fc:	00278793          	add	a5,a5,2
   16700:	00071c63          	bnez	a4,16718 <_ldcheck+0x60>
   16704:	fed79ae3          	bne	a5,a3,166f8 <_ldcheck+0x40>
   16708:	00200513          	li	a0,2
   1670c:	03813083          	ld	ra,56(sp)
   16710:	04010113          	add	sp,sp,64
   16714:	00008067          	ret
   16718:	00100513          	li	a0,1
   1671c:	ff1ff06f          	j	1670c <_ldcheck+0x54>

0000000000016720 <__localeconv_l>:
   16720:	10050513          	add	a0,a0,256
   16724:	00008067          	ret

0000000000016728 <_localeconv_r>:
   16728:	e6018513          	add	a0,gp,-416 # 24448 <__global_locale+0x100>
   1672c:	00008067          	ret

0000000000016730 <localeconv>:
   16730:	e6018513          	add	a0,gp,-416 # 24448 <__global_locale+0x100>
   16734:	00008067          	ret

0000000000016738 <_setlocale_r>:
   16738:	fe010113          	add	sp,sp,-32
   1673c:	00113c23          	sd	ra,24(sp)
   16740:	00813823          	sd	s0,16(sp)
   16744:	00913423          	sd	s1,8(sp)
   16748:	02060c63          	beqz	a2,16780 <_setlocale_r+0x48>
   1674c:	000225b7          	lui	a1,0x22
   16750:	29858593          	add	a1,a1,664 # 22298 <ezero+0x20>
   16754:	00060513          	mv	a0,a2
   16758:	00060413          	mv	s0,a2
   1675c:	30c020ef          	jal	18a68 <strcmp>
   16760:	000224b7          	lui	s1,0x22
   16764:	02051263          	bnez	a0,16788 <_setlocale_r+0x50>
   16768:	29048513          	add	a0,s1,656 # 22290 <ezero+0x18>
   1676c:	01813083          	ld	ra,24(sp)
   16770:	01013403          	ld	s0,16(sp)
   16774:	00813483          	ld	s1,8(sp)
   16778:	02010113          	add	sp,sp,32
   1677c:	00008067          	ret
   16780:	000224b7          	lui	s1,0x22
   16784:	fe5ff06f          	j	16768 <_setlocale_r+0x30>
   16788:	29048593          	add	a1,s1,656 # 22290 <ezero+0x18>
   1678c:	00040513          	mv	a0,s0
   16790:	2d8020ef          	jal	18a68 <strcmp>
   16794:	fc050ae3          	beqz	a0,16768 <_setlocale_r+0x30>
   16798:	000225b7          	lui	a1,0x22
   1679c:	d0858593          	add	a1,a1,-760 # 21d08 <__clzdi2+0xa8>
   167a0:	00040513          	mv	a0,s0
   167a4:	2c4020ef          	jal	18a68 <strcmp>
   167a8:	fc0500e3          	beqz	a0,16768 <_setlocale_r+0x30>
   167ac:	00000513          	li	a0,0
   167b0:	fbdff06f          	j	1676c <_setlocale_r+0x34>

00000000000167b4 <__locale_mb_cur_max>:
   167b4:	ec01c503          	lbu	a0,-320(gp) # 244a8 <__global_locale+0x160>
   167b8:	00008067          	ret

00000000000167bc <setlocale>:
   167bc:	fe010113          	add	sp,sp,-32
   167c0:	00113c23          	sd	ra,24(sp)
   167c4:	00813823          	sd	s0,16(sp)
   167c8:	00913423          	sd	s1,8(sp)
   167cc:	02058c63          	beqz	a1,16804 <setlocale+0x48>
   167d0:	00058413          	mv	s0,a1
   167d4:	000225b7          	lui	a1,0x22
   167d8:	29858593          	add	a1,a1,664 # 22298 <ezero+0x20>
   167dc:	00040513          	mv	a0,s0
   167e0:	288020ef          	jal	18a68 <strcmp>
   167e4:	000224b7          	lui	s1,0x22
   167e8:	02051263          	bnez	a0,1680c <setlocale+0x50>
   167ec:	29048513          	add	a0,s1,656 # 22290 <ezero+0x18>
   167f0:	01813083          	ld	ra,24(sp)
   167f4:	01013403          	ld	s0,16(sp)
   167f8:	00813483          	ld	s1,8(sp)
   167fc:	02010113          	add	sp,sp,32
   16800:	00008067          	ret
   16804:	000224b7          	lui	s1,0x22
   16808:	fe5ff06f          	j	167ec <setlocale+0x30>
   1680c:	29048593          	add	a1,s1,656 # 22290 <ezero+0x18>
   16810:	00040513          	mv	a0,s0
   16814:	254020ef          	jal	18a68 <strcmp>
   16818:	fc050ae3          	beqz	a0,167ec <setlocale+0x30>
   1681c:	000225b7          	lui	a1,0x22
   16820:	d0858593          	add	a1,a1,-760 # 21d08 <__clzdi2+0xa8>
   16824:	00040513          	mv	a0,s0
   16828:	240020ef          	jal	18a68 <strcmp>
   1682c:	fc0500e3          	beqz	a0,167ec <setlocale+0x30>
   16830:	00000513          	li	a0,0
   16834:	fbdff06f          	j	167f0 <setlocale+0x34>

0000000000016838 <__smakebuf_r>:
   16838:	01059783          	lh	a5,16(a1)
   1683c:	f6010113          	add	sp,sp,-160
   16840:	08813823          	sd	s0,144(sp)
   16844:	08113c23          	sd	ra,152(sp)
   16848:	08913423          	sd	s1,136(sp)
   1684c:	09213023          	sd	s2,128(sp)
   16850:	07313c23          	sd	s3,120(sp)
   16854:	07413823          	sd	s4,112(sp)
   16858:	0027f713          	and	a4,a5,2
   1685c:	00058413          	mv	s0,a1
   16860:	02070c63          	beqz	a4,16898 <__smakebuf_r+0x60>
   16864:	07758793          	add	a5,a1,119
   16868:	00f5b023          	sd	a5,0(a1)
   1686c:	00f5bc23          	sd	a5,24(a1)
   16870:	00100793          	li	a5,1
   16874:	02f5a023          	sw	a5,32(a1)
   16878:	09813083          	ld	ra,152(sp)
   1687c:	09013403          	ld	s0,144(sp)
   16880:	08813483          	ld	s1,136(sp)
   16884:	08013903          	ld	s2,128(sp)
   16888:	07813983          	ld	s3,120(sp)
   1688c:	07013a03          	ld	s4,112(sp)
   16890:	0a010113          	add	sp,sp,160
   16894:	00008067          	ret
   16898:	01259583          	lh	a1,18(a1)
   1689c:	00050493          	mv	s1,a0
   168a0:	0805cc63          	bltz	a1,16938 <__smakebuf_r+0x100>
   168a4:	00810613          	add	a2,sp,8
   168a8:	650060ef          	jal	1cef8 <_fstat_r>
   168ac:	08054463          	bltz	a0,16934 <__smakebuf_r+0xfc>
   168b0:	00c12903          	lw	s2,12(sp)
   168b4:	0000f7b7          	lui	a5,0xf
   168b8:	000019b7          	lui	s3,0x1
   168bc:	00f97933          	and	s2,s2,a5
   168c0:	000027b7          	lui	a5,0x2
   168c4:	40f90933          	sub	s2,s2,a5
   168c8:	00193913          	seqz	s2,s2
   168cc:	40000a13          	li	s4,1024
   168d0:	80098993          	add	s3,s3,-2048 # 800 <exit-0xf8e8>
   168d4:	000a0593          	mv	a1,s4
   168d8:	00048513          	mv	a0,s1
   168dc:	1c4000ef          	jal	16aa0 <_malloc_r>
   168e0:	01041783          	lh	a5,16(s0)
   168e4:	06050e63          	beqz	a0,16960 <__smakebuf_r+0x128>
   168e8:	00013737          	lui	a4,0x13
   168ec:	0c070713          	add	a4,a4,192 # 130c0 <_cleanup_r>
   168f0:	04e4bc23          	sd	a4,88(s1)
   168f4:	0807e793          	or	a5,a5,128
   168f8:	00f41823          	sh	a5,16(s0)
   168fc:	00a43023          	sd	a0,0(s0)
   16900:	00a43c23          	sd	a0,24(s0)
   16904:	03442023          	sw	s4,32(s0)
   16908:	08091863          	bnez	s2,16998 <__smakebuf_r+0x160>
   1690c:	0137e7b3          	or	a5,a5,s3
   16910:	09813083          	ld	ra,152(sp)
   16914:	00f41823          	sh	a5,16(s0)
   16918:	09013403          	ld	s0,144(sp)
   1691c:	08813483          	ld	s1,136(sp)
   16920:	08013903          	ld	s2,128(sp)
   16924:	07813983          	ld	s3,120(sp)
   16928:	07013a03          	ld	s4,112(sp)
   1692c:	0a010113          	add	sp,sp,160
   16930:	00008067          	ret
   16934:	01041783          	lh	a5,16(s0)
   16938:	0807f793          	and	a5,a5,128
   1693c:	00000913          	li	s2,0
   16940:	04078663          	beqz	a5,1698c <__smakebuf_r+0x154>
   16944:	04000a13          	li	s4,64
   16948:	000a0593          	mv	a1,s4
   1694c:	00048513          	mv	a0,s1
   16950:	150000ef          	jal	16aa0 <_malloc_r>
   16954:	01041783          	lh	a5,16(s0)
   16958:	00000993          	li	s3,0
   1695c:	f80516e3          	bnez	a0,168e8 <__smakebuf_r+0xb0>
   16960:	2007f713          	and	a4,a5,512
   16964:	f0071ae3          	bnez	a4,16878 <__smakebuf_r+0x40>
   16968:	ffc7f793          	and	a5,a5,-4
   1696c:	0027e793          	or	a5,a5,2
   16970:	07740713          	add	a4,s0,119
   16974:	00f41823          	sh	a5,16(s0)
   16978:	00100793          	li	a5,1
   1697c:	00e43023          	sd	a4,0(s0)
   16980:	00e43c23          	sd	a4,24(s0)
   16984:	02f42023          	sw	a5,32(s0)
   16988:	ef1ff06f          	j	16878 <__smakebuf_r+0x40>
   1698c:	40000a13          	li	s4,1024
   16990:	00000993          	li	s3,0
   16994:	f41ff06f          	j	168d4 <__smakebuf_r+0x9c>
   16998:	01241583          	lh	a1,18(s0)
   1699c:	00048513          	mv	a0,s1
   169a0:	269060ef          	jal	1d408 <_isatty_r>
   169a4:	00051663          	bnez	a0,169b0 <__smakebuf_r+0x178>
   169a8:	01041783          	lh	a5,16(s0)
   169ac:	f61ff06f          	j	1690c <__smakebuf_r+0xd4>
   169b0:	01045783          	lhu	a5,16(s0)
   169b4:	ffc7f793          	and	a5,a5,-4
   169b8:	0017e793          	or	a5,a5,1
   169bc:	0107979b          	sllw	a5,a5,0x10
   169c0:	4107d79b          	sraw	a5,a5,0x10
   169c4:	f49ff06f          	j	1690c <__smakebuf_r+0xd4>

00000000000169c8 <__swhatbuf_r>:
   169c8:	f7010113          	add	sp,sp,-144
   169cc:	08813023          	sd	s0,128(sp)
   169d0:	00058413          	mv	s0,a1
   169d4:	01259583          	lh	a1,18(a1)
   169d8:	06913c23          	sd	s1,120(sp)
   169dc:	07213823          	sd	s2,112(sp)
   169e0:	08113423          	sd	ra,136(sp)
   169e4:	00060493          	mv	s1,a2
   169e8:	00068913          	mv	s2,a3
   169ec:	0405ca63          	bltz	a1,16a40 <__swhatbuf_r+0x78>
   169f0:	00810613          	add	a2,sp,8
   169f4:	504060ef          	jal	1cef8 <_fstat_r>
   169f8:	04054463          	bltz	a0,16a40 <__swhatbuf_r+0x78>
   169fc:	00c12783          	lw	a5,12(sp)
   16a00:	0000f737          	lui	a4,0xf
   16a04:	08813083          	ld	ra,136(sp)
   16a08:	00e7f7b3          	and	a5,a5,a4
   16a0c:	00002737          	lui	a4,0x2
   16a10:	40e787b3          	sub	a5,a5,a4
   16a14:	08013403          	ld	s0,128(sp)
   16a18:	0017b793          	seqz	a5,a5
   16a1c:	00f92023          	sw	a5,0(s2)
   16a20:	40000713          	li	a4,1024
   16a24:	00e4b023          	sd	a4,0(s1)
   16a28:	00001537          	lui	a0,0x1
   16a2c:	07813483          	ld	s1,120(sp)
   16a30:	07013903          	ld	s2,112(sp)
   16a34:	80050513          	add	a0,a0,-2048 # 800 <exit-0xf8e8>
   16a38:	09010113          	add	sp,sp,144
   16a3c:	00008067          	ret
   16a40:	01045783          	lhu	a5,16(s0)
   16a44:	0807f793          	and	a5,a5,128
   16a48:	02078863          	beqz	a5,16a78 <__swhatbuf_r+0xb0>
   16a4c:	08813083          	ld	ra,136(sp)
   16a50:	08013403          	ld	s0,128(sp)
   16a54:	00000793          	li	a5,0
   16a58:	00f92023          	sw	a5,0(s2)
   16a5c:	04000713          	li	a4,64
   16a60:	00e4b023          	sd	a4,0(s1)
   16a64:	07013903          	ld	s2,112(sp)
   16a68:	07813483          	ld	s1,120(sp)
   16a6c:	00000513          	li	a0,0
   16a70:	09010113          	add	sp,sp,144
   16a74:	00008067          	ret
   16a78:	08813083          	ld	ra,136(sp)
   16a7c:	08013403          	ld	s0,128(sp)
   16a80:	00f92023          	sw	a5,0(s2)
   16a84:	40000713          	li	a4,1024
   16a88:	00e4b023          	sd	a4,0(s1)
   16a8c:	07013903          	ld	s2,112(sp)
   16a90:	07813483          	ld	s1,120(sp)
   16a94:	00000513          	li	a0,0
   16a98:	09010113          	add	sp,sp,144
   16a9c:	00008067          	ret

0000000000016aa0 <_malloc_r>:
   16aa0:	fa010113          	add	sp,sp,-96
   16aa4:	04913423          	sd	s1,72(sp)
   16aa8:	05213023          	sd	s2,64(sp)
   16aac:	04113c23          	sd	ra,88(sp)
   16ab0:	04813823          	sd	s0,80(sp)
   16ab4:	03313c23          	sd	s3,56(sp)
   16ab8:	03413823          	sd	s4,48(sp)
   16abc:	03513423          	sd	s5,40(sp)
   16ac0:	03613023          	sd	s6,32(sp)
   16ac4:	01713c23          	sd	s7,24(sp)
   16ac8:	01813823          	sd	s8,16(sp)
   16acc:	01913423          	sd	s9,8(sp)
   16ad0:	01758493          	add	s1,a1,23
   16ad4:	02e00793          	li	a5,46
   16ad8:	00050913          	mv	s2,a0
   16adc:	0897ee63          	bltu	a5,s1,16b78 <_malloc_r+0xd8>
   16ae0:	02000793          	li	a5,32
   16ae4:	24b7e063          	bltu	a5,a1,16d24 <_malloc_r+0x284>
   16ae8:	0c9000ef          	jal	173b0 <__malloc_lock>
   16aec:	02000493          	li	s1,32
   16af0:	05000793          	li	a5,80
   16af4:	00400613          	li	a2,4
   16af8:	000249b7          	lui	s3,0x24
   16afc:	4f098993          	add	s3,s3,1264 # 244f0 <__malloc_av_>
   16b00:	00f987b3          	add	a5,s3,a5
   16b04:	0087b403          	ld	s0,8(a5) # 2008 <exit-0xe0e0>
   16b08:	ff078713          	add	a4,a5,-16
   16b0c:	32e40663          	beq	s0,a4,16e38 <_malloc_r+0x398>
   16b10:	00843783          	ld	a5,8(s0)
   16b14:	01843683          	ld	a3,24(s0)
   16b18:	01043603          	ld	a2,16(s0)
   16b1c:	ffc7f793          	and	a5,a5,-4
   16b20:	00f407b3          	add	a5,s0,a5
   16b24:	0087b703          	ld	a4,8(a5)
   16b28:	00d63c23          	sd	a3,24(a2)
   16b2c:	00c6b823          	sd	a2,16(a3)
   16b30:	00176713          	or	a4,a4,1
   16b34:	00090513          	mv	a0,s2
   16b38:	00e7b423          	sd	a4,8(a5)
   16b3c:	079000ef          	jal	173b4 <__malloc_unlock>
   16b40:	01040513          	add	a0,s0,16
   16b44:	05813083          	ld	ra,88(sp)
   16b48:	05013403          	ld	s0,80(sp)
   16b4c:	04813483          	ld	s1,72(sp)
   16b50:	04013903          	ld	s2,64(sp)
   16b54:	03813983          	ld	s3,56(sp)
   16b58:	03013a03          	ld	s4,48(sp)
   16b5c:	02813a83          	ld	s5,40(sp)
   16b60:	02013b03          	ld	s6,32(sp)
   16b64:	01813b83          	ld	s7,24(sp)
   16b68:	01013c03          	ld	s8,16(sp)
   16b6c:	00813c83          	ld	s9,8(sp)
   16b70:	06010113          	add	sp,sp,96
   16b74:	00008067          	ret
   16b78:	800007b7          	lui	a5,0x80000
   16b7c:	ff04f493          	and	s1,s1,-16
   16b80:	fff7c793          	not	a5,a5
   16b84:	1a97e063          	bltu	a5,s1,16d24 <_malloc_r+0x284>
   16b88:	18b4ee63          	bltu	s1,a1,16d24 <_malloc_r+0x284>
   16b8c:	025000ef          	jal	173b0 <__malloc_lock>
   16b90:	1f700793          	li	a5,503
   16b94:	3e97fe63          	bgeu	a5,s1,16f90 <_malloc_r+0x4f0>
   16b98:	0094d793          	srl	a5,s1,0x9
   16b9c:	18078c63          	beqz	a5,16d34 <_malloc_r+0x294>
   16ba0:	00400713          	li	a4,4
   16ba4:	30f76463          	bltu	a4,a5,16eac <_malloc_r+0x40c>
   16ba8:	0064d793          	srl	a5,s1,0x6
   16bac:	0397861b          	addw	a2,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffdb251>
   16bb0:	0016169b          	sllw	a3,a2,0x1
   16bb4:	0387851b          	addw	a0,a5,56
   16bb8:	00369693          	sll	a3,a3,0x3
   16bbc:	000249b7          	lui	s3,0x24
   16bc0:	4f098993          	add	s3,s3,1264 # 244f0 <__malloc_av_>
   16bc4:	00d986b3          	add	a3,s3,a3
   16bc8:	0086b403          	ld	s0,8(a3)
   16bcc:	ff068693          	add	a3,a3,-16
   16bd0:	02868663          	beq	a3,s0,16bfc <_malloc_r+0x15c>
   16bd4:	01f00593          	li	a1,31
   16bd8:	0100006f          	j	16be8 <_malloc_r+0x148>
   16bdc:	24075863          	bgez	a4,16e2c <_malloc_r+0x38c>
   16be0:	01843403          	ld	s0,24(s0)
   16be4:	00868c63          	beq	a3,s0,16bfc <_malloc_r+0x15c>
   16be8:	00843783          	ld	a5,8(s0)
   16bec:	ffc7f793          	and	a5,a5,-4
   16bf0:	40978733          	sub	a4,a5,s1
   16bf4:	fee5d4e3          	bge	a1,a4,16bdc <_malloc_r+0x13c>
   16bf8:	00050613          	mv	a2,a0
   16bfc:	0209b403          	ld	s0,32(s3)
   16c00:	00024837          	lui	a6,0x24
   16c04:	50080813          	add	a6,a6,1280 # 24500 <__malloc_av_+0x10>
   16c08:	21040e63          	beq	s0,a6,16e24 <_malloc_r+0x384>
   16c0c:	00843783          	ld	a5,8(s0)
   16c10:	01f00693          	li	a3,31
   16c14:	ffc7f793          	and	a5,a5,-4
   16c18:	40978733          	sub	a4,a5,s1
   16c1c:	32e6cc63          	blt	a3,a4,16f54 <_malloc_r+0x4b4>
   16c20:	0309b423          	sd	a6,40(s3)
   16c24:	0309b023          	sd	a6,32(s3)
   16c28:	30075663          	bgez	a4,16f34 <_malloc_r+0x494>
   16c2c:	1ff00713          	li	a4,511
   16c30:	0089b503          	ld	a0,8(s3)
   16c34:	20f76a63          	bltu	a4,a5,16e48 <_malloc_r+0x3a8>
   16c38:	0037d793          	srl	a5,a5,0x3
   16c3c:	0017871b          	addw	a4,a5,1
   16c40:	0017171b          	sllw	a4,a4,0x1
   16c44:	00371713          	sll	a4,a4,0x3
   16c48:	00e98733          	add	a4,s3,a4
   16c4c:	00073583          	ld	a1,0(a4) # 2000 <exit-0xe0e8>
   16c50:	4027d79b          	sraw	a5,a5,0x2
   16c54:	00100693          	li	a3,1
   16c58:	00f697b3          	sll	a5,a3,a5
   16c5c:	00f56533          	or	a0,a0,a5
   16c60:	ff070793          	add	a5,a4,-16
   16c64:	00f43c23          	sd	a5,24(s0)
   16c68:	00b43823          	sd	a1,16(s0)
   16c6c:	00a9b423          	sd	a0,8(s3)
   16c70:	00873023          	sd	s0,0(a4)
   16c74:	0085bc23          	sd	s0,24(a1)
   16c78:	4026579b          	sraw	a5,a2,0x2
   16c7c:	00100593          	li	a1,1
   16c80:	00f595b3          	sll	a1,a1,a5
   16c84:	0cb56063          	bltu	a0,a1,16d44 <_malloc_r+0x2a4>
   16c88:	00a5f7b3          	and	a5,a1,a0
   16c8c:	02079463          	bnez	a5,16cb4 <_malloc_r+0x214>
   16c90:	00159593          	sll	a1,a1,0x1
   16c94:	ffc67613          	and	a2,a2,-4
   16c98:	00a5f7b3          	and	a5,a1,a0
   16c9c:	0046061b          	addw	a2,a2,4
   16ca0:	00079a63          	bnez	a5,16cb4 <_malloc_r+0x214>
   16ca4:	00159593          	sll	a1,a1,0x1
   16ca8:	00a5f7b3          	and	a5,a1,a0
   16cac:	0046061b          	addw	a2,a2,4
   16cb0:	fe078ae3          	beqz	a5,16ca4 <_malloc_r+0x204>
   16cb4:	01f00893          	li	a7,31
   16cb8:	0016031b          	addw	t1,a2,1
   16cbc:	0013131b          	sllw	t1,t1,0x1
   16cc0:	00331313          	sll	t1,t1,0x3
   16cc4:	ff030313          	add	t1,t1,-16
   16cc8:	00698333          	add	t1,s3,t1
   16ccc:	00030513          	mv	a0,t1
   16cd0:	01853783          	ld	a5,24(a0)
   16cd4:	00060e13          	mv	t3,a2
   16cd8:	1ef50e63          	beq	a0,a5,16ed4 <_malloc_r+0x434>
   16cdc:	0087b703          	ld	a4,8(a5)
   16ce0:	00078413          	mv	s0,a5
   16ce4:	0187b783          	ld	a5,24(a5)
   16ce8:	ffc77713          	and	a4,a4,-4
   16cec:	409706b3          	sub	a3,a4,s1
   16cf0:	1ed8ce63          	blt	a7,a3,16eec <_malloc_r+0x44c>
   16cf4:	fe06c2e3          	bltz	a3,16cd8 <_malloc_r+0x238>
   16cf8:	00e40733          	add	a4,s0,a4
   16cfc:	00873683          	ld	a3,8(a4)
   16d00:	01043603          	ld	a2,16(s0)
   16d04:	00090513          	mv	a0,s2
   16d08:	0016e693          	or	a3,a3,1
   16d0c:	00d73423          	sd	a3,8(a4)
   16d10:	00f63c23          	sd	a5,24(a2)
   16d14:	00c7b823          	sd	a2,16(a5)
   16d18:	69c000ef          	jal	173b4 <__malloc_unlock>
   16d1c:	01040513          	add	a0,s0,16
   16d20:	e25ff06f          	j	16b44 <_malloc_r+0xa4>
   16d24:	00c00793          	li	a5,12
   16d28:	00f92023          	sw	a5,0(s2)
   16d2c:	00000513          	li	a0,0
   16d30:	e15ff06f          	j	16b44 <_malloc_r+0xa4>
   16d34:	40000693          	li	a3,1024
   16d38:	04000613          	li	a2,64
   16d3c:	03f00513          	li	a0,63
   16d40:	e7dff06f          	j	16bbc <_malloc_r+0x11c>
   16d44:	0109b403          	ld	s0,16(s3)
   16d48:	00843783          	ld	a5,8(s0)
   16d4c:	ffc7fa93          	and	s5,a5,-4
   16d50:	009ae863          	bltu	s5,s1,16d60 <_malloc_r+0x2c0>
   16d54:	409a8733          	sub	a4,s5,s1
   16d58:	01f00793          	li	a5,31
   16d5c:	0ae7c063          	blt	a5,a4,16dfc <_malloc_r+0x35c>
   16d60:	7881ba03          	ld	s4,1928(gp) # 24d70 <__malloc_top_pad>
   16d64:	7601b703          	ld	a4,1888(gp) # 24d48 <__malloc_sbrk_base>
   16d68:	fff00793          	li	a5,-1
   16d6c:	01540c33          	add	s8,s0,s5
   16d70:	01448a33          	add	s4,s1,s4
   16d74:	3cf70863          	beq	a4,a5,17144 <_malloc_r+0x6a4>
   16d78:	000017b7          	lui	a5,0x1
   16d7c:	01f78793          	add	a5,a5,31 # 101f <exit-0xf0c9>
   16d80:	00fa0a33          	add	s4,s4,a5
   16d84:	fffff7b7          	lui	a5,0xfffff
   16d88:	00fa7a33          	and	s4,s4,a5
   16d8c:	000a0593          	mv	a1,s4
   16d90:	00090513          	mv	a0,s2
   16d94:	161010ef          	jal	186f4 <_sbrk_r>
   16d98:	fff00793          	li	a5,-1
   16d9c:	00050b13          	mv	s6,a0
   16da0:	22f50263          	beq	a0,a5,16fc4 <_malloc_r+0x524>
   16da4:	21856e63          	bltu	a0,s8,16fc0 <_malloc_r+0x520>
   16da8:	00025bb7          	lui	s7,0x25
   16dac:	dc0b8b93          	add	s7,s7,-576 # 24dc0 <__malloc_current_mallinfo>
   16db0:	000ba783          	lw	a5,0(s7)
   16db4:	0147873b          	addw	a4,a5,s4
   16db8:	00eba023          	sw	a4,0(s7)
   16dbc:	00070693          	mv	a3,a4
   16dc0:	2aac1663          	bne	s8,a0,1706c <_malloc_r+0x5cc>
   16dc4:	03451793          	sll	a5,a0,0x34
   16dc8:	2a079263          	bnez	a5,1706c <_malloc_r+0x5cc>
   16dcc:	0109bb03          	ld	s6,16(s3)
   16dd0:	014a87b3          	add	a5,s5,s4
   16dd4:	0017e793          	or	a5,a5,1
   16dd8:	00fb3423          	sd	a5,8(s6)
   16ddc:	7801b603          	ld	a2,1920(gp) # 24d68 <__malloc_max_sbrked_mem>
   16de0:	00e67463          	bgeu	a2,a4,16de8 <_malloc_r+0x348>
   16de4:	78e1b023          	sd	a4,1920(gp) # 24d68 <__malloc_max_sbrked_mem>
   16de8:	7781b603          	ld	a2,1912(gp) # 24d60 <__malloc_max_total_mem>
   16dec:	00e67463          	bgeu	a2,a4,16df4 <_malloc_r+0x354>
   16df0:	76e1bc23          	sd	a4,1912(gp) # 24d60 <__malloc_max_total_mem>
   16df4:	000b0413          	mv	s0,s6
   16df8:	1d40006f          	j	16fcc <_malloc_r+0x52c>
   16dfc:	0014e793          	or	a5,s1,1
   16e00:	00f43423          	sd	a5,8(s0)
   16e04:	009404b3          	add	s1,s0,s1
   16e08:	0099b823          	sd	s1,16(s3)
   16e0c:	00176713          	or	a4,a4,1
   16e10:	00090513          	mv	a0,s2
   16e14:	00e4b423          	sd	a4,8(s1)
   16e18:	59c000ef          	jal	173b4 <__malloc_unlock>
   16e1c:	01040513          	add	a0,s0,16
   16e20:	d25ff06f          	j	16b44 <_malloc_r+0xa4>
   16e24:	0089b503          	ld	a0,8(s3)
   16e28:	e51ff06f          	j	16c78 <_malloc_r+0x1d8>
   16e2c:	01843683          	ld	a3,24(s0)
   16e30:	01043603          	ld	a2,16(s0)
   16e34:	cedff06f          	j	16b20 <_malloc_r+0x80>
   16e38:	0187b403          	ld	s0,24(a5) # fffffffffffff018 <__BSS_END__+0xfffffffffffda230>
   16e3c:	0026061b          	addw	a2,a2,2
   16e40:	da878ee3          	beq	a5,s0,16bfc <_malloc_r+0x15c>
   16e44:	ccdff06f          	j	16b10 <_malloc_r+0x70>
   16e48:	0097d713          	srl	a4,a5,0x9
   16e4c:	00400693          	li	a3,4
   16e50:	14e6fc63          	bgeu	a3,a4,16fa8 <_malloc_r+0x508>
   16e54:	01400693          	li	a3,20
   16e58:	32e6ec63          	bltu	a3,a4,17190 <_malloc_r+0x6f0>
   16e5c:	05c7059b          	addw	a1,a4,92
   16e60:	0015959b          	sllw	a1,a1,0x1
   16e64:	05b7069b          	addw	a3,a4,91
   16e68:	00359593          	sll	a1,a1,0x3
   16e6c:	00b985b3          	add	a1,s3,a1
   16e70:	0005b703          	ld	a4,0(a1)
   16e74:	ff058593          	add	a1,a1,-16
   16e78:	00e59863          	bne	a1,a4,16e88 <_malloc_r+0x3e8>
   16e7c:	2d00006f          	j	1714c <_malloc_r+0x6ac>
   16e80:	01073703          	ld	a4,16(a4)
   16e84:	00e58863          	beq	a1,a4,16e94 <_malloc_r+0x3f4>
   16e88:	00873683          	ld	a3,8(a4)
   16e8c:	ffc6f693          	and	a3,a3,-4
   16e90:	fed7e8e3          	bltu	a5,a3,16e80 <_malloc_r+0x3e0>
   16e94:	01873583          	ld	a1,24(a4)
   16e98:	00b43c23          	sd	a1,24(s0)
   16e9c:	00e43823          	sd	a4,16(s0)
   16ea0:	0085b823          	sd	s0,16(a1)
   16ea4:	00873c23          	sd	s0,24(a4)
   16ea8:	dd1ff06f          	j	16c78 <_malloc_r+0x1d8>
   16eac:	01400713          	li	a4,20
   16eb0:	14f77063          	bgeu	a4,a5,16ff0 <_malloc_r+0x550>
   16eb4:	05400713          	li	a4,84
   16eb8:	2ef76c63          	bltu	a4,a5,171b0 <_malloc_r+0x710>
   16ebc:	00c4d793          	srl	a5,s1,0xc
   16ec0:	06f7861b          	addw	a2,a5,111
   16ec4:	0016169b          	sllw	a3,a2,0x1
   16ec8:	06e7851b          	addw	a0,a5,110
   16ecc:	00369693          	sll	a3,a3,0x3
   16ed0:	cedff06f          	j	16bbc <_malloc_r+0x11c>
   16ed4:	001e0e1b          	addw	t3,t3,1
   16ed8:	003e7793          	and	a5,t3,3
   16edc:	01050513          	add	a0,a0,16
   16ee0:	12078863          	beqz	a5,17010 <_malloc_r+0x570>
   16ee4:	01853783          	ld	a5,24(a0)
   16ee8:	df1ff06f          	j	16cd8 <_malloc_r+0x238>
   16eec:	01043603          	ld	a2,16(s0)
   16ef0:	0014e593          	or	a1,s1,1
   16ef4:	00b43423          	sd	a1,8(s0)
   16ef8:	00f63c23          	sd	a5,24(a2)
   16efc:	00c7b823          	sd	a2,16(a5)
   16f00:	009404b3          	add	s1,s0,s1
   16f04:	0299b423          	sd	s1,40(s3)
   16f08:	0299b023          	sd	s1,32(s3)
   16f0c:	0016e793          	or	a5,a3,1
   16f10:	0104bc23          	sd	a6,24(s1)
   16f14:	0104b823          	sd	a6,16(s1)
   16f18:	00f4b423          	sd	a5,8(s1)
   16f1c:	00e40733          	add	a4,s0,a4
   16f20:	00090513          	mv	a0,s2
   16f24:	00d73023          	sd	a3,0(a4)
   16f28:	48c000ef          	jal	173b4 <__malloc_unlock>
   16f2c:	01040513          	add	a0,s0,16
   16f30:	c15ff06f          	j	16b44 <_malloc_r+0xa4>
   16f34:	00f407b3          	add	a5,s0,a5
   16f38:	0087b703          	ld	a4,8(a5)
   16f3c:	00090513          	mv	a0,s2
   16f40:	00176713          	or	a4,a4,1
   16f44:	00e7b423          	sd	a4,8(a5)
   16f48:	46c000ef          	jal	173b4 <__malloc_unlock>
   16f4c:	01040513          	add	a0,s0,16
   16f50:	bf5ff06f          	j	16b44 <_malloc_r+0xa4>
   16f54:	0014e693          	or	a3,s1,1
   16f58:	00d43423          	sd	a3,8(s0)
   16f5c:	009404b3          	add	s1,s0,s1
   16f60:	0299b423          	sd	s1,40(s3)
   16f64:	0299b023          	sd	s1,32(s3)
   16f68:	00176693          	or	a3,a4,1
   16f6c:	0104bc23          	sd	a6,24(s1)
   16f70:	0104b823          	sd	a6,16(s1)
   16f74:	00d4b423          	sd	a3,8(s1)
   16f78:	00f407b3          	add	a5,s0,a5
   16f7c:	00090513          	mv	a0,s2
   16f80:	00e7b023          	sd	a4,0(a5)
   16f84:	430000ef          	jal	173b4 <__malloc_unlock>
   16f88:	01040513          	add	a0,s0,16
   16f8c:	bb9ff06f          	j	16b44 <_malloc_r+0xa4>
   16f90:	0034d613          	srl	a2,s1,0x3
   16f94:	0016079b          	addw	a5,a2,1
   16f98:	0017979b          	sllw	a5,a5,0x1
   16f9c:	0006061b          	sext.w	a2,a2
   16fa0:	00379793          	sll	a5,a5,0x3
   16fa4:	b55ff06f          	j	16af8 <_malloc_r+0x58>
   16fa8:	0067d713          	srl	a4,a5,0x6
   16fac:	0397059b          	addw	a1,a4,57
   16fb0:	0015959b          	sllw	a1,a1,0x1
   16fb4:	0387069b          	addw	a3,a4,56
   16fb8:	00359593          	sll	a1,a1,0x3
   16fbc:	eb1ff06f          	j	16e6c <_malloc_r+0x3cc>
   16fc0:	09340c63          	beq	s0,s3,17058 <_malloc_r+0x5b8>
   16fc4:	0109b403          	ld	s0,16(s3)
   16fc8:	00843783          	ld	a5,8(s0)
   16fcc:	ffc7f793          	and	a5,a5,-4
   16fd0:	40978733          	sub	a4,a5,s1
   16fd4:	0097e663          	bltu	a5,s1,16fe0 <_malloc_r+0x540>
   16fd8:	01f00793          	li	a5,31
   16fdc:	e2e7c0e3          	blt	a5,a4,16dfc <_malloc_r+0x35c>
   16fe0:	00090513          	mv	a0,s2
   16fe4:	3d0000ef          	jal	173b4 <__malloc_unlock>
   16fe8:	00000513          	li	a0,0
   16fec:	b59ff06f          	j	16b44 <_malloc_r+0xa4>
   16ff0:	05c7861b          	addw	a2,a5,92
   16ff4:	0016169b          	sllw	a3,a2,0x1
   16ff8:	05b7851b          	addw	a0,a5,91
   16ffc:	00369693          	sll	a3,a3,0x3
   17000:	bbdff06f          	j	16bbc <_malloc_r+0x11c>
   17004:	01033783          	ld	a5,16(t1)
   17008:	fff6061b          	addw	a2,a2,-1
   1700c:	26679463          	bne	a5,t1,17274 <_malloc_r+0x7d4>
   17010:	00367793          	and	a5,a2,3
   17014:	ff030313          	add	t1,t1,-16
   17018:	fe0796e3          	bnez	a5,17004 <_malloc_r+0x564>
   1701c:	0089b703          	ld	a4,8(s3)
   17020:	fff5c793          	not	a5,a1
   17024:	00e7f7b3          	and	a5,a5,a4
   17028:	00f9b423          	sd	a5,8(s3)
   1702c:	00159593          	sll	a1,a1,0x1
   17030:	d0b7eae3          	bltu	a5,a1,16d44 <_malloc_r+0x2a4>
   17034:	d00588e3          	beqz	a1,16d44 <_malloc_r+0x2a4>
   17038:	00f5f733          	and	a4,a1,a5
   1703c:	00071a63          	bnez	a4,17050 <_malloc_r+0x5b0>
   17040:	00159593          	sll	a1,a1,0x1
   17044:	00f5f733          	and	a4,a1,a5
   17048:	004e0e1b          	addw	t3,t3,4
   1704c:	fe070ae3          	beqz	a4,17040 <_malloc_r+0x5a0>
   17050:	000e0613          	mv	a2,t3
   17054:	c65ff06f          	j	16cb8 <_malloc_r+0x218>
   17058:	00025bb7          	lui	s7,0x25
   1705c:	dc0b8b93          	add	s7,s7,-576 # 24dc0 <__malloc_current_mallinfo>
   17060:	000ba783          	lw	a5,0(s7)
   17064:	014786bb          	addw	a3,a5,s4
   17068:	00dba023          	sw	a3,0(s7)
   1706c:	7601b703          	ld	a4,1888(gp) # 24d48 <__malloc_sbrk_base>
   17070:	fff00793          	li	a5,-1
   17074:	14f70e63          	beq	a4,a5,171d0 <_malloc_r+0x730>
   17078:	418b07b3          	sub	a5,s6,s8
   1707c:	00d787bb          	addw	a5,a5,a3
   17080:	00fba023          	sw	a5,0(s7)
   17084:	00fb7c93          	and	s9,s6,15
   17088:	0c0c8e63          	beqz	s9,17164 <_malloc_r+0x6c4>
   1708c:	00001737          	lui	a4,0x1
   17090:	419b0b33          	sub	s6,s6,s9
   17094:	01070c13          	add	s8,a4,16 # 1010 <exit-0xf0d8>
   17098:	010b0b13          	add	s6,s6,16
   1709c:	419c0c33          	sub	s8,s8,s9
   170a0:	014b0a33          	add	s4,s6,s4
   170a4:	fff70713          	add	a4,a4,-1
   170a8:	414c0c33          	sub	s8,s8,s4
   170ac:	00ec7c33          	and	s8,s8,a4
   170b0:	000c0593          	mv	a1,s8
   170b4:	00090513          	mv	a0,s2
   170b8:	63c010ef          	jal	186f4 <_sbrk_r>
   170bc:	fff00793          	li	a5,-1
   170c0:	16f50263          	beq	a0,a5,17224 <_malloc_r+0x784>
   170c4:	41650533          	sub	a0,a0,s6
   170c8:	000c069b          	sext.w	a3,s8
   170cc:	01850a33          	add	s4,a0,s8
   170d0:	000ba703          	lw	a4,0(s7)
   170d4:	0169b823          	sd	s6,16(s3)
   170d8:	001a6793          	or	a5,s4,1
   170dc:	00d7073b          	addw	a4,a4,a3
   170e0:	00eba023          	sw	a4,0(s7)
   170e4:	00fb3423          	sd	a5,8(s6)
   170e8:	cf340ae3          	beq	s0,s3,16ddc <_malloc_r+0x33c>
   170ec:	01f00613          	li	a2,31
   170f0:	0f567463          	bgeu	a2,s5,171d8 <_malloc_r+0x738>
   170f4:	00843683          	ld	a3,8(s0)
   170f8:	fe8a8793          	add	a5,s5,-24
   170fc:	ff07f793          	and	a5,a5,-16
   17100:	0016f693          	and	a3,a3,1
   17104:	00f6e6b3          	or	a3,a3,a5
   17108:	00d43423          	sd	a3,8(s0)
   1710c:	00900593          	li	a1,9
   17110:	00f406b3          	add	a3,s0,a5
   17114:	00b6b423          	sd	a1,8(a3)
   17118:	00b6b823          	sd	a1,16(a3)
   1711c:	00f66663          	bltu	a2,a5,17128 <_malloc_r+0x688>
   17120:	008b3783          	ld	a5,8(s6)
   17124:	cb9ff06f          	j	16ddc <_malloc_r+0x33c>
   17128:	01040593          	add	a1,s0,16
   1712c:	00090513          	mv	a0,s2
   17130:	cb0fc0ef          	jal	135e0 <_free_r>
   17134:	0109bb03          	ld	s6,16(s3)
   17138:	000ba703          	lw	a4,0(s7)
   1713c:	008b3783          	ld	a5,8(s6)
   17140:	c9dff06f          	j	16ddc <_malloc_r+0x33c>
   17144:	020a0a13          	add	s4,s4,32
   17148:	c45ff06f          	j	16d8c <_malloc_r+0x2ec>
   1714c:	4026d69b          	sraw	a3,a3,0x2
   17150:	00100793          	li	a5,1
   17154:	00d797b3          	sll	a5,a5,a3
   17158:	00f56533          	or	a0,a0,a5
   1715c:	00a9b423          	sd	a0,8(s3)
   17160:	d39ff06f          	j	16e98 <_malloc_r+0x3f8>
   17164:	014b0c33          	add	s8,s6,s4
   17168:	41800c33          	neg	s8,s8
   1716c:	034c1c13          	sll	s8,s8,0x34
   17170:	034c5c13          	srl	s8,s8,0x34
   17174:	000c0593          	mv	a1,s8
   17178:	00090513          	mv	a0,s2
   1717c:	578010ef          	jal	186f4 <_sbrk_r>
   17180:	fff00793          	li	a5,-1
   17184:	00000693          	li	a3,0
   17188:	f2f51ee3          	bne	a0,a5,170c4 <_malloc_r+0x624>
   1718c:	f45ff06f          	j	170d0 <_malloc_r+0x630>
   17190:	05400693          	li	a3,84
   17194:	04e6e863          	bltu	a3,a4,171e4 <_malloc_r+0x744>
   17198:	00c7d713          	srl	a4,a5,0xc
   1719c:	06f7059b          	addw	a1,a4,111
   171a0:	0015959b          	sllw	a1,a1,0x1
   171a4:	06e7069b          	addw	a3,a4,110
   171a8:	00359593          	sll	a1,a1,0x3
   171ac:	cc1ff06f          	j	16e6c <_malloc_r+0x3cc>
   171b0:	15400713          	li	a4,340
   171b4:	04f76863          	bltu	a4,a5,17204 <_malloc_r+0x764>
   171b8:	00f4d793          	srl	a5,s1,0xf
   171bc:	0787861b          	addw	a2,a5,120
   171c0:	0016169b          	sllw	a3,a2,0x1
   171c4:	0777851b          	addw	a0,a5,119
   171c8:	00369693          	sll	a3,a3,0x3
   171cc:	9f1ff06f          	j	16bbc <_malloc_r+0x11c>
   171d0:	7761b023          	sd	s6,1888(gp) # 24d48 <__malloc_sbrk_base>
   171d4:	eb1ff06f          	j	17084 <_malloc_r+0x5e4>
   171d8:	00100793          	li	a5,1
   171dc:	00fb3423          	sd	a5,8(s6)
   171e0:	e01ff06f          	j	16fe0 <_malloc_r+0x540>
   171e4:	15400693          	li	a3,340
   171e8:	04e6e863          	bltu	a3,a4,17238 <_malloc_r+0x798>
   171ec:	00f7d713          	srl	a4,a5,0xf
   171f0:	0787059b          	addw	a1,a4,120
   171f4:	0015959b          	sllw	a1,a1,0x1
   171f8:	0777069b          	addw	a3,a4,119
   171fc:	00359593          	sll	a1,a1,0x3
   17200:	c6dff06f          	j	16e6c <_malloc_r+0x3cc>
   17204:	55400713          	li	a4,1364
   17208:	04f76863          	bltu	a4,a5,17258 <_malloc_r+0x7b8>
   1720c:	0124d793          	srl	a5,s1,0x12
   17210:	07d7861b          	addw	a2,a5,125
   17214:	0016169b          	sllw	a3,a2,0x1
   17218:	07c7851b          	addw	a0,a5,124
   1721c:	00369693          	sll	a3,a3,0x3
   17220:	99dff06f          	j	16bbc <_malloc_r+0x11c>
   17224:	ff0c8c93          	add	s9,s9,-16
   17228:	019a0a33          	add	s4,s4,s9
   1722c:	416a0a33          	sub	s4,s4,s6
   17230:	00000693          	li	a3,0
   17234:	e9dff06f          	j	170d0 <_malloc_r+0x630>
   17238:	55400693          	li	a3,1364
   1723c:	02e6e663          	bltu	a3,a4,17268 <_malloc_r+0x7c8>
   17240:	0127d713          	srl	a4,a5,0x12
   17244:	07d7059b          	addw	a1,a4,125
   17248:	0015959b          	sllw	a1,a1,0x1
   1724c:	07c7069b          	addw	a3,a4,124
   17250:	00359593          	sll	a1,a1,0x3
   17254:	c19ff06f          	j	16e6c <_malloc_r+0x3cc>
   17258:	7f000693          	li	a3,2032
   1725c:	07f00613          	li	a2,127
   17260:	07e00513          	li	a0,126
   17264:	959ff06f          	j	16bbc <_malloc_r+0x11c>
   17268:	7f000593          	li	a1,2032
   1726c:	07e00693          	li	a3,126
   17270:	bfdff06f          	j	16e6c <_malloc_r+0x3cc>
   17274:	0089b783          	ld	a5,8(s3)
   17278:	db5ff06f          	j	1702c <_malloc_r+0x58c>

000000000001727c <_mbtowc_r>:
   1727c:	e481b783          	ld	a5,-440(gp) # 24430 <__global_locale+0xe8>
   17280:	00078067          	jr	a5

0000000000017284 <__ascii_mbtowc>:
   17284:	02058063          	beqz	a1,172a4 <__ascii_mbtowc+0x20>
   17288:	04060263          	beqz	a2,172cc <__ascii_mbtowc+0x48>
   1728c:	04068863          	beqz	a3,172dc <__ascii_mbtowc+0x58>
   17290:	00064783          	lbu	a5,0(a2)
   17294:	00f5a023          	sw	a5,0(a1)
   17298:	00064503          	lbu	a0,0(a2)
   1729c:	00a03533          	snez	a0,a0
   172a0:	00008067          	ret
   172a4:	ff010113          	add	sp,sp,-16
   172a8:	00c10593          	add	a1,sp,12
   172ac:	02060463          	beqz	a2,172d4 <__ascii_mbtowc+0x50>
   172b0:	02068a63          	beqz	a3,172e4 <__ascii_mbtowc+0x60>
   172b4:	00064783          	lbu	a5,0(a2)
   172b8:	00f5a023          	sw	a5,0(a1)
   172bc:	00064503          	lbu	a0,0(a2)
   172c0:	00a03533          	snez	a0,a0
   172c4:	01010113          	add	sp,sp,16
   172c8:	00008067          	ret
   172cc:	00000513          	li	a0,0
   172d0:	00008067          	ret
   172d4:	00000513          	li	a0,0
   172d8:	fedff06f          	j	172c4 <__ascii_mbtowc+0x40>
   172dc:	ffe00513          	li	a0,-2
   172e0:	00008067          	ret
   172e4:	ffe00513          	li	a0,-2
   172e8:	fddff06f          	j	172c4 <__ascii_mbtowc+0x40>

00000000000172ec <memchr>:
   172ec:	00757793          	and	a5,a0,7
   172f0:	0ff5f693          	zext.b	a3,a1
   172f4:	02078e63          	beqz	a5,17330 <memchr+0x44>
   172f8:	fff60793          	add	a5,a2,-1
   172fc:	02060663          	beqz	a2,17328 <memchr+0x3c>
   17300:	fff00613          	li	a2,-1
   17304:	0180006f          	j	1731c <memchr+0x30>
   17308:	00150513          	add	a0,a0,1
   1730c:	00757713          	and	a4,a0,7
   17310:	02070263          	beqz	a4,17334 <memchr+0x48>
   17314:	fff78793          	add	a5,a5,-1
   17318:	00c78863          	beq	a5,a2,17328 <memchr+0x3c>
   1731c:	00054703          	lbu	a4,0(a0)
   17320:	fed714e3          	bne	a4,a3,17308 <memchr+0x1c>
   17324:	00008067          	ret
   17328:	00000513          	li	a0,0
   1732c:	00008067          	ret
   17330:	00060793          	mv	a5,a2
   17334:	00700713          	li	a4,7
   17338:	04f77c63          	bgeu	a4,a5,17390 <memchr+0xa4>
   1733c:	0ff5f593          	zext.b	a1,a1
   17340:	00859713          	sll	a4,a1,0x8
   17344:	00b70733          	add	a4,a4,a1
   17348:	01071593          	sll	a1,a4,0x10
   1734c:	00e585b3          	add	a1,a1,a4
   17350:	7181b883          	ld	a7,1816(gp) # 24d00 <__SDATA_BEGIN__>
   17354:	7201b803          	ld	a6,1824(gp) # 24d08 <__SDATA_BEGIN__+0x8>
   17358:	02059713          	sll	a4,a1,0x20
   1735c:	00e585b3          	add	a1,a1,a4
   17360:	00700313          	li	t1,7
   17364:	0100006f          	j	17374 <memchr+0x88>
   17368:	ff878793          	add	a5,a5,-8
   1736c:	00850513          	add	a0,a0,8
   17370:	02f37063          	bgeu	t1,a5,17390 <memchr+0xa4>
   17374:	00053703          	ld	a4,0(a0)
   17378:	00e5c733          	xor	a4,a1,a4
   1737c:	01170633          	add	a2,a4,a7
   17380:	fff74713          	not	a4,a4
   17384:	00e67733          	and	a4,a2,a4
   17388:	01077733          	and	a4,a4,a6
   1738c:	fc070ee3          	beqz	a4,17368 <memchr+0x7c>
   17390:	00f50733          	add	a4,a0,a5
   17394:	00079863          	bnez	a5,173a4 <memchr+0xb8>
   17398:	f91ff06f          	j	17328 <memchr+0x3c>
   1739c:	00150513          	add	a0,a0,1
   173a0:	f8a704e3          	beq	a4,a0,17328 <memchr+0x3c>
   173a4:	00054783          	lbu	a5,0(a0)
   173a8:	fed79ae3          	bne	a5,a3,1739c <memchr+0xb0>
   173ac:	00008067          	ret

00000000000173b0 <__malloc_lock>:
   173b0:	00008067          	ret

00000000000173b4 <__malloc_unlock>:
   173b4:	00008067          	ret

00000000000173b8 <_Balloc>:
   173b8:	07853783          	ld	a5,120(a0)
   173bc:	fe010113          	add	sp,sp,-32
   173c0:	00813823          	sd	s0,16(sp)
   173c4:	00913423          	sd	s1,8(sp)
   173c8:	00113c23          	sd	ra,24(sp)
   173cc:	00050493          	mv	s1,a0
   173d0:	00058413          	mv	s0,a1
   173d4:	02078a63          	beqz	a5,17408 <_Balloc+0x50>
   173d8:	00341713          	sll	a4,s0,0x3
   173dc:	00e787b3          	add	a5,a5,a4
   173e0:	0007b503          	ld	a0,0(a5)
   173e4:	04050263          	beqz	a0,17428 <_Balloc+0x70>
   173e8:	00053703          	ld	a4,0(a0)
   173ec:	00e7b023          	sd	a4,0(a5)
   173f0:	00053823          	sd	zero,16(a0)
   173f4:	01813083          	ld	ra,24(sp)
   173f8:	01013403          	ld	s0,16(sp)
   173fc:	00813483          	ld	s1,8(sp)
   17400:	02010113          	add	sp,sp,32
   17404:	00008067          	ret
   17408:	04100613          	li	a2,65
   1740c:	00800593          	li	a1,8
   17410:	588050ef          	jal	1c998 <_calloc_r>
   17414:	06a4bc23          	sd	a0,120(s1)
   17418:	00050793          	mv	a5,a0
   1741c:	fa051ee3          	bnez	a0,173d8 <_Balloc+0x20>
   17420:	00000513          	li	a0,0
   17424:	fd1ff06f          	j	173f4 <_Balloc+0x3c>
   17428:	00100793          	li	a5,1
   1742c:	008797bb          	sllw	a5,a5,s0
   17430:	0007861b          	sext.w	a2,a5
   17434:	00760613          	add	a2,a2,7
   17438:	02041413          	sll	s0,s0,0x20
   1743c:	02079793          	sll	a5,a5,0x20
   17440:	02045413          	srl	s0,s0,0x20
   17444:	00261613          	sll	a2,a2,0x2
   17448:	00100593          	li	a1,1
   1744c:	00048513          	mv	a0,s1
   17450:	00f46433          	or	s0,s0,a5
   17454:	544050ef          	jal	1c998 <_calloc_r>
   17458:	fc0504e3          	beqz	a0,17420 <_Balloc+0x68>
   1745c:	00853423          	sd	s0,8(a0)
   17460:	f91ff06f          	j	173f0 <_Balloc+0x38>

0000000000017464 <_Bfree>:
   17464:	02058063          	beqz	a1,17484 <_Bfree+0x20>
   17468:	0085a703          	lw	a4,8(a1)
   1746c:	07853783          	ld	a5,120(a0)
   17470:	00371713          	sll	a4,a4,0x3
   17474:	00e787b3          	add	a5,a5,a4
   17478:	0007b703          	ld	a4,0(a5)
   1747c:	00e5b023          	sd	a4,0(a1)
   17480:	00b7b023          	sd	a1,0(a5)
   17484:	00008067          	ret

0000000000017488 <__multadd>:
   17488:	fb010113          	add	sp,sp,-80
   1748c:	03213823          	sd	s2,48(sp)
   17490:	0145a903          	lw	s2,20(a1)
   17494:	01813023          	sd	s8,0(sp)
   17498:	00010c37          	lui	s8,0x10
   1749c:	04813023          	sd	s0,64(sp)
   174a0:	02913c23          	sd	s1,56(sp)
   174a4:	03313423          	sd	s3,40(sp)
   174a8:	03413023          	sd	s4,32(sp)
   174ac:	01513c23          	sd	s5,24(sp)
   174b0:	01613823          	sd	s6,16(sp)
   174b4:	04113423          	sd	ra,72(sp)
   174b8:	01713423          	sd	s7,8(sp)
   174bc:	00058993          	mv	s3,a1
   174c0:	00050a13          	mv	s4,a0
   174c4:	00068413          	mv	s0,a3
   174c8:	01858493          	add	s1,a1,24
   174cc:	00060a93          	mv	s5,a2
   174d0:	00000b13          	li	s6,0
   174d4:	fffc0c13          	add	s8,s8,-1 # ffff <exit-0xe9>
   174d8:	0004ab83          	lw	s7,0(s1)
   174dc:	000a8593          	mv	a1,s5
   174e0:	00448493          	add	s1,s1,4
   174e4:	018bf533          	and	a0,s7,s8
   174e8:	6540a0ef          	jal	21b3c <__muldi3>
   174ec:	0085043b          	addw	s0,a0,s0
   174f0:	000a8593          	mv	a1,s5
   174f4:	010bd51b          	srlw	a0,s7,0x10
   174f8:	6440a0ef          	jal	21b3c <__muldi3>
   174fc:	0104569b          	srlw	a3,s0,0x10
   17500:	00a686bb          	addw	a3,a3,a0
   17504:	008c7433          	and	s0,s8,s0
   17508:	0106979b          	sllw	a5,a3,0x10
   1750c:	008787bb          	addw	a5,a5,s0
   17510:	fef4ae23          	sw	a5,-4(s1)
   17514:	001b0b1b          	addw	s6,s6,1
   17518:	0106db9b          	srlw	s7,a3,0x10
   1751c:	0106d41b          	srlw	s0,a3,0x10
   17520:	fb2b4ce3          	blt	s6,s2,174d8 <__multadd+0x50>
   17524:	02040263          	beqz	s0,17548 <__multadd+0xc0>
   17528:	00c9a783          	lw	a5,12(s3)
   1752c:	04f95863          	bge	s2,a5,1757c <__multadd+0xf4>
   17530:	00490793          	add	a5,s2,4
   17534:	00279793          	sll	a5,a5,0x2
   17538:	00f987b3          	add	a5,s3,a5
   1753c:	0177a423          	sw	s7,8(a5)
   17540:	0019091b          	addw	s2,s2,1
   17544:	0129aa23          	sw	s2,20(s3)
   17548:	04813083          	ld	ra,72(sp)
   1754c:	04013403          	ld	s0,64(sp)
   17550:	03813483          	ld	s1,56(sp)
   17554:	03013903          	ld	s2,48(sp)
   17558:	02013a03          	ld	s4,32(sp)
   1755c:	01813a83          	ld	s5,24(sp)
   17560:	01013b03          	ld	s6,16(sp)
   17564:	00813b83          	ld	s7,8(sp)
   17568:	00013c03          	ld	s8,0(sp)
   1756c:	00098513          	mv	a0,s3
   17570:	02813983          	ld	s3,40(sp)
   17574:	05010113          	add	sp,sp,80
   17578:	00008067          	ret
   1757c:	0089a583          	lw	a1,8(s3)
   17580:	000a0513          	mv	a0,s4
   17584:	0015859b          	addw	a1,a1,1
   17588:	e31ff0ef          	jal	173b8 <_Balloc>
   1758c:	00050413          	mv	s0,a0
   17590:	04050c63          	beqz	a0,175e8 <__multadd+0x160>
   17594:	0149a603          	lw	a2,20(s3)
   17598:	01098593          	add	a1,s3,16
   1759c:	01050513          	add	a0,a0,16
   175a0:	00260613          	add	a2,a2,2
   175a4:	00261613          	sll	a2,a2,0x2
   175a8:	725050ef          	jal	1d4cc <memcpy>
   175ac:	0089a703          	lw	a4,8(s3)
   175b0:	078a3783          	ld	a5,120(s4)
   175b4:	00371713          	sll	a4,a4,0x3
   175b8:	00e787b3          	add	a5,a5,a4
   175bc:	0007b703          	ld	a4,0(a5)
   175c0:	00e9b023          	sd	a4,0(s3)
   175c4:	0137b023          	sd	s3,0(a5)
   175c8:	00490793          	add	a5,s2,4
   175cc:	00040993          	mv	s3,s0
   175d0:	00279793          	sll	a5,a5,0x2
   175d4:	00f987b3          	add	a5,s3,a5
   175d8:	0177a423          	sw	s7,8(a5)
   175dc:	0019091b          	addw	s2,s2,1
   175e0:	0129aa23          	sw	s2,20(s3)
   175e4:	f65ff06f          	j	17548 <__multadd+0xc0>
   175e8:	000226b7          	lui	a3,0x22
   175ec:	00022537          	lui	a0,0x22
   175f0:	fc068693          	add	a3,a3,-64 # 21fc0 <blanks.1+0x78>
   175f4:	00000613          	li	a2,0
   175f8:	0b500593          	li	a1,181
   175fc:	2a850513          	add	a0,a0,680 # 222a8 <ezero+0x30>
   17600:	31c050ef          	jal	1c91c <__assert_func>

0000000000017604 <__s2b>:
   17604:	fc010113          	add	sp,sp,-64
   17608:	02813823          	sd	s0,48(sp)
   1760c:	03213023          	sd	s2,32(sp)
   17610:	00058413          	mv	s0,a1
   17614:	00050913          	mv	s2,a0
   17618:	00900593          	li	a1,9
   1761c:	0086851b          	addw	a0,a3,8
   17620:	02913423          	sd	s1,40(sp)
   17624:	01313c23          	sd	s3,24(sp)
   17628:	01413823          	sd	s4,16(sp)
   1762c:	02113c23          	sd	ra,56(sp)
   17630:	01513423          	sd	s5,8(sp)
   17634:	01613023          	sd	s6,0(sp)
   17638:	00068493          	mv	s1,a3
   1763c:	00060993          	mv	s3,a2
   17640:	00070a13          	mv	s4,a4
   17644:	55c0a0ef          	jal	21ba0 <__divdi3>
   17648:	00900793          	li	a5,9
   1764c:	0e97da63          	bge	a5,s1,17740 <__s2b+0x13c>
   17650:	0005051b          	sext.w	a0,a0
   17654:	00100793          	li	a5,1
   17658:	00000593          	li	a1,0
   1765c:	0017979b          	sllw	a5,a5,0x1
   17660:	0015859b          	addw	a1,a1,1
   17664:	fea7cce3          	blt	a5,a0,1765c <__s2b+0x58>
   17668:	00090513          	mv	a0,s2
   1766c:	d4dff0ef          	jal	173b8 <_Balloc>
   17670:	00050593          	mv	a1,a0
   17674:	0c050a63          	beqz	a0,17748 <__s2b+0x144>
   17678:	00100793          	li	a5,1
   1767c:	00f52a23          	sw	a5,20(a0)
   17680:	01452c23          	sw	s4,24(a0)
   17684:	00900793          	li	a5,9
   17688:	0b37d663          	bge	a5,s3,17734 <__s2b+0x130>
   1768c:	02099a13          	sll	s4,s3,0x20
   17690:	00940b13          	add	s6,s0,9
   17694:	020a5a13          	srl	s4,s4,0x20
   17698:	01440a33          	add	s4,s0,s4
   1769c:	00098a9b          	sext.w	s5,s3
   176a0:	000b0413          	mv	s0,s6
   176a4:	00044683          	lbu	a3,0(s0)
   176a8:	00a00613          	li	a2,10
   176ac:	00090513          	mv	a0,s2
   176b0:	fd06869b          	addw	a3,a3,-48
   176b4:	dd5ff0ef          	jal	17488 <__multadd>
   176b8:	00140413          	add	s0,s0,1
   176bc:	00050593          	mv	a1,a0
   176c0:	ff4412e3          	bne	s0,s4,176a4 <__s2b+0xa0>
   176c4:	ff8a8a9b          	addw	s5,s5,-8
   176c8:	020a9a93          	sll	s5,s5,0x20
   176cc:	020ada93          	srl	s5,s5,0x20
   176d0:	015b0433          	add	s0,s6,s5
   176d4:	0299da63          	bge	s3,s1,17708 <__s2b+0x104>
   176d8:	413484bb          	subw	s1,s1,s3
   176dc:	02049493          	sll	s1,s1,0x20
   176e0:	0204d493          	srl	s1,s1,0x20
   176e4:	009404b3          	add	s1,s0,s1
   176e8:	00044683          	lbu	a3,0(s0)
   176ec:	00a00613          	li	a2,10
   176f0:	00090513          	mv	a0,s2
   176f4:	fd06869b          	addw	a3,a3,-48
   176f8:	d91ff0ef          	jal	17488 <__multadd>
   176fc:	00140413          	add	s0,s0,1
   17700:	00050593          	mv	a1,a0
   17704:	fe9412e3          	bne	s0,s1,176e8 <__s2b+0xe4>
   17708:	03813083          	ld	ra,56(sp)
   1770c:	03013403          	ld	s0,48(sp)
   17710:	02813483          	ld	s1,40(sp)
   17714:	02013903          	ld	s2,32(sp)
   17718:	01813983          	ld	s3,24(sp)
   1771c:	01013a03          	ld	s4,16(sp)
   17720:	00813a83          	ld	s5,8(sp)
   17724:	00013b03          	ld	s6,0(sp)
   17728:	00058513          	mv	a0,a1
   1772c:	04010113          	add	sp,sp,64
   17730:	00008067          	ret
   17734:	00a40413          	add	s0,s0,10
   17738:	00900993          	li	s3,9
   1773c:	f99ff06f          	j	176d4 <__s2b+0xd0>
   17740:	00000593          	li	a1,0
   17744:	f25ff06f          	j	17668 <__s2b+0x64>
   17748:	000226b7          	lui	a3,0x22
   1774c:	00022537          	lui	a0,0x22
   17750:	fc068693          	add	a3,a3,-64 # 21fc0 <blanks.1+0x78>
   17754:	00000613          	li	a2,0
   17758:	0ce00593          	li	a1,206
   1775c:	2a850513          	add	a0,a0,680 # 222a8 <ezero+0x30>
   17760:	1bc050ef          	jal	1c91c <__assert_func>

0000000000017764 <__hi0bits>:
   17764:	00050793          	mv	a5,a0
   17768:	00010737          	lui	a4,0x10
   1776c:	00000513          	li	a0,0
   17770:	00e7f663          	bgeu	a5,a4,1777c <__hi0bits+0x18>
   17774:	0107979b          	sllw	a5,a5,0x10
   17778:	01000513          	li	a0,16
   1777c:	01000737          	lui	a4,0x1000
   17780:	00e7f663          	bgeu	a5,a4,1778c <__hi0bits+0x28>
   17784:	0087979b          	sllw	a5,a5,0x8
   17788:	0085051b          	addw	a0,a0,8
   1778c:	10000737          	lui	a4,0x10000
   17790:	00e7f663          	bgeu	a5,a4,1779c <__hi0bits+0x38>
   17794:	0047979b          	sllw	a5,a5,0x4
   17798:	0045051b          	addw	a0,a0,4
   1779c:	40000737          	lui	a4,0x40000
   177a0:	00e7e863          	bltu	a5,a4,177b0 <__hi0bits+0x4c>
   177a4:	0207c463          	bltz	a5,177cc <__hi0bits+0x68>
   177a8:	0015051b          	addw	a0,a0,1
   177ac:	00008067          	ret
   177b0:	0027979b          	sllw	a5,a5,0x2
   177b4:	0007871b          	sext.w	a4,a5
   177b8:	00074c63          	bltz	a4,177d0 <__hi0bits+0x6c>
   177bc:	40000737          	lui	a4,0x40000
   177c0:	00e7f7b3          	and	a5,a5,a4
   177c4:	00079a63          	bnez	a5,177d8 <__hi0bits+0x74>
   177c8:	02000513          	li	a0,32
   177cc:	00008067          	ret
   177d0:	0025051b          	addw	a0,a0,2
   177d4:	00008067          	ret
   177d8:	0035051b          	addw	a0,a0,3
   177dc:	00008067          	ret

00000000000177e0 <__lo0bits>:
   177e0:	00052783          	lw	a5,0(a0)
   177e4:	00050713          	mv	a4,a0
   177e8:	0077f693          	and	a3,a5,7
   177ec:	00078613          	mv	a2,a5
   177f0:	02068463          	beqz	a3,17818 <__lo0bits+0x38>
   177f4:	0017f693          	and	a3,a5,1
   177f8:	00000513          	li	a0,0
   177fc:	04069e63          	bnez	a3,17858 <__lo0bits+0x78>
   17800:	00267613          	and	a2,a2,2
   17804:	0a060863          	beqz	a2,178b4 <__lo0bits+0xd4>
   17808:	0017d79b          	srlw	a5,a5,0x1
   1780c:	00f72023          	sw	a5,0(a4) # 40000000 <__BSS_END__+0x3ffdb218>
   17810:	00100513          	li	a0,1
   17814:	00008067          	ret
   17818:	03079693          	sll	a3,a5,0x30
   1781c:	0306d693          	srl	a3,a3,0x30
   17820:	00000513          	li	a0,0
   17824:	06068e63          	beqz	a3,178a0 <__lo0bits+0xc0>
   17828:	0ff7f693          	zext.b	a3,a5
   1782c:	06068063          	beqz	a3,1788c <__lo0bits+0xac>
   17830:	00f7f693          	and	a3,a5,15
   17834:	04068263          	beqz	a3,17878 <__lo0bits+0x98>
   17838:	0037f693          	and	a3,a5,3
   1783c:	02068463          	beqz	a3,17864 <__lo0bits+0x84>
   17840:	0017f693          	and	a3,a5,1
   17844:	00069c63          	bnez	a3,1785c <__lo0bits+0x7c>
   17848:	0017d79b          	srlw	a5,a5,0x1
   1784c:	0015051b          	addw	a0,a0,1
   17850:	00079663          	bnez	a5,1785c <__lo0bits+0x7c>
   17854:	02000513          	li	a0,32
   17858:	00008067          	ret
   1785c:	00f72023          	sw	a5,0(a4)
   17860:	00008067          	ret
   17864:	0027d79b          	srlw	a5,a5,0x2
   17868:	0017f693          	and	a3,a5,1
   1786c:	0025051b          	addw	a0,a0,2
   17870:	fe0696e3          	bnez	a3,1785c <__lo0bits+0x7c>
   17874:	fd5ff06f          	j	17848 <__lo0bits+0x68>
   17878:	0047d79b          	srlw	a5,a5,0x4
   1787c:	0037f693          	and	a3,a5,3
   17880:	0045051b          	addw	a0,a0,4
   17884:	fa069ee3          	bnez	a3,17840 <__lo0bits+0x60>
   17888:	fddff06f          	j	17864 <__lo0bits+0x84>
   1788c:	0087d79b          	srlw	a5,a5,0x8
   17890:	00f7f693          	and	a3,a5,15
   17894:	0085051b          	addw	a0,a0,8
   17898:	fa0690e3          	bnez	a3,17838 <__lo0bits+0x58>
   1789c:	fddff06f          	j	17878 <__lo0bits+0x98>
   178a0:	0107d79b          	srlw	a5,a5,0x10
   178a4:	0ff7f693          	zext.b	a3,a5
   178a8:	01000513          	li	a0,16
   178ac:	f80692e3          	bnez	a3,17830 <__lo0bits+0x50>
   178b0:	fddff06f          	j	1788c <__lo0bits+0xac>
   178b4:	0027d79b          	srlw	a5,a5,0x2
   178b8:	00f72023          	sw	a5,0(a4)
   178bc:	00200513          	li	a0,2
   178c0:	00008067          	ret

00000000000178c4 <__i2b>:
   178c4:	07853783          	ld	a5,120(a0)
   178c8:	fe010113          	add	sp,sp,-32
   178cc:	00813823          	sd	s0,16(sp)
   178d0:	00913423          	sd	s1,8(sp)
   178d4:	00113c23          	sd	ra,24(sp)
   178d8:	00050413          	mv	s0,a0
   178dc:	00058493          	mv	s1,a1
   178e0:	02078c63          	beqz	a5,17918 <__i2b+0x54>
   178e4:	0087b503          	ld	a0,8(a5)
   178e8:	06050263          	beqz	a0,1794c <__i2b+0x88>
   178ec:	00053703          	ld	a4,0(a0)
   178f0:	00e7b423          	sd	a4,8(a5)
   178f4:	01813083          	ld	ra,24(sp)
   178f8:	01013403          	ld	s0,16(sp)
   178fc:	00100793          	li	a5,1
   17900:	02079793          	sll	a5,a5,0x20
   17904:	00952c23          	sw	s1,24(a0)
   17908:	00f53823          	sd	a5,16(a0)
   1790c:	00813483          	ld	s1,8(sp)
   17910:	02010113          	add	sp,sp,32
   17914:	00008067          	ret
   17918:	04100613          	li	a2,65
   1791c:	00800593          	li	a1,8
   17920:	078050ef          	jal	1c998 <_calloc_r>
   17924:	06a43c23          	sd	a0,120(s0)
   17928:	00050793          	mv	a5,a0
   1792c:	fa051ce3          	bnez	a0,178e4 <__i2b+0x20>
   17930:	000226b7          	lui	a3,0x22
   17934:	00022537          	lui	a0,0x22
   17938:	fc068693          	add	a3,a3,-64 # 21fc0 <blanks.1+0x78>
   1793c:	00000613          	li	a2,0
   17940:	14000593          	li	a1,320
   17944:	2a850513          	add	a0,a0,680 # 222a8 <ezero+0x30>
   17948:	7d5040ef          	jal	1c91c <__assert_func>
   1794c:	02400613          	li	a2,36
   17950:	00100593          	li	a1,1
   17954:	00040513          	mv	a0,s0
   17958:	040050ef          	jal	1c998 <_calloc_r>
   1795c:	fc050ae3          	beqz	a0,17930 <__i2b+0x6c>
   17960:	00100793          	li	a5,1
   17964:	02179793          	sll	a5,a5,0x21
   17968:	00178793          	add	a5,a5,1
   1796c:	00f53423          	sd	a5,8(a0)
   17970:	f85ff06f          	j	178f4 <__i2b+0x30>

0000000000017974 <__multiply>:
   17974:	f7010113          	add	sp,sp,-144
   17978:	07213823          	sd	s2,112(sp)
   1797c:	05713423          	sd	s7,72(sp)
   17980:	01462903          	lw	s2,20(a2)
   17984:	0145ab83          	lw	s7,20(a1)
   17988:	08813023          	sd	s0,128(sp)
   1798c:	07313423          	sd	s3,104(sp)
   17990:	08113423          	sd	ra,136(sp)
   17994:	06913c23          	sd	s1,120(sp)
   17998:	07413023          	sd	s4,96(sp)
   1799c:	05513c23          	sd	s5,88(sp)
   179a0:	05613823          	sd	s6,80(sp)
   179a4:	05813023          	sd	s8,64(sp)
   179a8:	03913c23          	sd	s9,56(sp)
   179ac:	03a13823          	sd	s10,48(sp)
   179b0:	03b13423          	sd	s11,40(sp)
   179b4:	00058993          	mv	s3,a1
   179b8:	00060413          	mv	s0,a2
   179bc:	012bcc63          	blt	s7,s2,179d4 <__multiply+0x60>
   179c0:	00090793          	mv	a5,s2
   179c4:	00058413          	mv	s0,a1
   179c8:	000b8913          	mv	s2,s7
   179cc:	00060993          	mv	s3,a2
   179d0:	00078b93          	mv	s7,a5
   179d4:	00c42783          	lw	a5,12(s0)
   179d8:	01790b3b          	addw	s6,s2,s7
   179dc:	00842583          	lw	a1,8(s0)
   179e0:	0167d463          	bge	a5,s6,179e8 <__multiply+0x74>
   179e4:	0015859b          	addw	a1,a1,1
   179e8:	9d1ff0ef          	jal	173b8 <_Balloc>
   179ec:	00a13c23          	sd	a0,24(sp)
   179f0:	20050e63          	beqz	a0,17c0c <__multiply+0x298>
   179f4:	01813783          	ld	a5,24(sp)
   179f8:	002b1a13          	sll	s4,s6,0x2
   179fc:	01878a93          	add	s5,a5,24
   17a00:	014a8a33          	add	s4,s5,s4
   17a04:	000a8793          	mv	a5,s5
   17a08:	014af863          	bgeu	s5,s4,17a18 <__multiply+0xa4>
   17a0c:	0007a023          	sw	zero,0(a5)
   17a10:	00478793          	add	a5,a5,4
   17a14:	ff47ece3          	bltu	a5,s4,17a0c <__multiply+0x98>
   17a18:	01898993          	add	s3,s3,24
   17a1c:	002b9b93          	sll	s7,s7,0x2
   17a20:	01840793          	add	a5,s0,24
   17a24:	01798733          	add	a4,s3,s7
   17a28:	00291913          	sll	s2,s2,0x2
   17a2c:	00f13823          	sd	a5,16(sp)
   17a30:	00e13023          	sd	a4,0(sp)
   17a34:	01278933          	add	s2,a5,s2
   17a38:	14e9fc63          	bgeu	s3,a4,17b90 <__multiply+0x21c>
   17a3c:	00400713          	li	a4,4
   17a40:	01940793          	add	a5,s0,25
   17a44:	00e13423          	sd	a4,8(sp)
   17a48:	1af97663          	bgeu	s2,a5,17bf4 <__multiply+0x280>
   17a4c:	00010437          	lui	s0,0x10
   17a50:	fff40413          	add	s0,s0,-1 # ffff <exit-0xe9>
   17a54:	01c0006f          	j	17a70 <__multiply+0xfc>
   17a58:	010ddd9b          	srlw	s11,s11,0x10
   17a5c:	0a0d9263          	bnez	s11,17b00 <__multiply+0x18c>
   17a60:	00013783          	ld	a5,0(sp)
   17a64:	00498993          	add	s3,s3,4
   17a68:	004a8a93          	add	s5,s5,4
   17a6c:	12f9f263          	bgeu	s3,a5,17b90 <__multiply+0x21c>
   17a70:	0009ad83          	lw	s11,0(s3)
   17a74:	008df4b3          	and	s1,s11,s0
   17a78:	fe0480e3          	beqz	s1,17a58 <__multiply+0xe4>
   17a7c:	01013c03          	ld	s8,16(sp)
   17a80:	000a8c93          	mv	s9,s5
   17a84:	00000b93          	li	s7,0
   17a88:	000c2d03          	lw	s10,0(s8)
   17a8c:	000cad83          	lw	s11,0(s9)
   17a90:	00048593          	mv	a1,s1
   17a94:	008d7533          	and	a0,s10,s0
   17a98:	0a40a0ef          	jal	21b3c <__muldi3>
   17a9c:	008df733          	and	a4,s11,s0
   17aa0:	00e5073b          	addw	a4,a0,a4
   17aa4:	00048593          	mv	a1,s1
   17aa8:	010d551b          	srlw	a0,s10,0x10
   17aac:	01770bbb          	addw	s7,a4,s7
   17ab0:	010ddd9b          	srlw	s11,s11,0x10
   17ab4:	0880a0ef          	jal	21b3c <__muldi3>
   17ab8:	010bd79b          	srlw	a5,s7,0x10
   17abc:	00ad8dbb          	addw	s11,s11,a0
   17ac0:	00fd87bb          	addw	a5,s11,a5
   17ac4:	01747733          	and	a4,s0,s7
   17ac8:	0107959b          	sllw	a1,a5,0x10
   17acc:	00b76733          	or	a4,a4,a1
   17ad0:	00eca023          	sw	a4,0(s9)
   17ad4:	004c0c13          	add	s8,s8,4
   17ad8:	004c8c93          	add	s9,s9,4
   17adc:	0107d71b          	srlw	a4,a5,0x10
   17ae0:	0107db9b          	srlw	s7,a5,0x10
   17ae4:	fb2c62e3          	bltu	s8,s2,17a88 <__multiply+0x114>
   17ae8:	00813783          	ld	a5,8(sp)
   17aec:	00fa87b3          	add	a5,s5,a5
   17af0:	00e7a023          	sw	a4,0(a5)
   17af4:	0009ad83          	lw	s11,0(s3)
   17af8:	010ddd9b          	srlw	s11,s11,0x10
   17afc:	f60d82e3          	beqz	s11,17a60 <__multiply+0xec>
   17b00:	000aad03          	lw	s10,0(s5)
   17b04:	01013c83          	ld	s9,16(sp)
   17b08:	000a8b93          	mv	s7,s5
   17b0c:	000d0493          	mv	s1,s10
   17b10:	00000c13          	li	s8,0
   17b14:	000ca503          	lw	a0,0(s9)
   17b18:	000d8593          	mv	a1,s11
   17b1c:	0104d49b          	srlw	s1,s1,0x10
   17b20:	00857533          	and	a0,a0,s0
   17b24:	0180a0ef          	jal	21b3c <__muldi3>
   17b28:	018507bb          	addw	a5,a0,s8
   17b2c:	00978c3b          	addw	s8,a5,s1
   17b30:	010c159b          	sllw	a1,s8,0x10
   17b34:	008d7733          	and	a4,s10,s0
   17b38:	00b76733          	or	a4,a4,a1
   17b3c:	00eba023          	sw	a4,0(s7)
   17b40:	002cd503          	lhu	a0,2(s9)
   17b44:	004ba483          	lw	s1,4(s7)
   17b48:	000d8593          	mv	a1,s11
   17b4c:	7f1090ef          	jal	21b3c <__muldi3>
   17b50:	0084f733          	and	a4,s1,s0
   17b54:	010c579b          	srlw	a5,s8,0x10
   17b58:	00e5053b          	addw	a0,a0,a4
   17b5c:	00f5053b          	addw	a0,a0,a5
   17b60:	004c8c93          	add	s9,s9,4
   17b64:	004b8b93          	add	s7,s7,4
   17b68:	00050d1b          	sext.w	s10,a0
   17b6c:	01055c1b          	srlw	s8,a0,0x10
   17b70:	fb2ce2e3          	bltu	s9,s2,17b14 <__multiply+0x1a0>
   17b74:	00813783          	ld	a5,8(sp)
   17b78:	00498993          	add	s3,s3,4
   17b7c:	00fa87b3          	add	a5,s5,a5
   17b80:	00a7a023          	sw	a0,0(a5)
   17b84:	00013783          	ld	a5,0(sp)
   17b88:	004a8a93          	add	s5,s5,4
   17b8c:	eef9e2e3          	bltu	s3,a5,17a70 <__multiply+0xfc>
   17b90:	01604863          	bgtz	s6,17ba0 <__multiply+0x22c>
   17b94:	0180006f          	j	17bac <__multiply+0x238>
   17b98:	fffb0b1b          	addw	s6,s6,-1
   17b9c:	000b0863          	beqz	s6,17bac <__multiply+0x238>
   17ba0:	ffca2783          	lw	a5,-4(s4)
   17ba4:	ffca0a13          	add	s4,s4,-4
   17ba8:	fe0788e3          	beqz	a5,17b98 <__multiply+0x224>
   17bac:	01813783          	ld	a5,24(sp)
   17bb0:	08813083          	ld	ra,136(sp)
   17bb4:	08013403          	ld	s0,128(sp)
   17bb8:	0167aa23          	sw	s6,20(a5)
   17bbc:	07813483          	ld	s1,120(sp)
   17bc0:	07013903          	ld	s2,112(sp)
   17bc4:	06813983          	ld	s3,104(sp)
   17bc8:	06013a03          	ld	s4,96(sp)
   17bcc:	05813a83          	ld	s5,88(sp)
   17bd0:	05013b03          	ld	s6,80(sp)
   17bd4:	04813b83          	ld	s7,72(sp)
   17bd8:	04013c03          	ld	s8,64(sp)
   17bdc:	03813c83          	ld	s9,56(sp)
   17be0:	03013d03          	ld	s10,48(sp)
   17be4:	02813d83          	ld	s11,40(sp)
   17be8:	00078513          	mv	a0,a5
   17bec:	09010113          	add	sp,sp,144
   17bf0:	00008067          	ret
   17bf4:	408907b3          	sub	a5,s2,s0
   17bf8:	fe778793          	add	a5,a5,-25
   17bfc:	ffc7f793          	and	a5,a5,-4
   17c00:	00478793          	add	a5,a5,4
   17c04:	00f13423          	sd	a5,8(sp)
   17c08:	e45ff06f          	j	17a4c <__multiply+0xd8>
   17c0c:	000226b7          	lui	a3,0x22
   17c10:	00022537          	lui	a0,0x22
   17c14:	fc068693          	add	a3,a3,-64 # 21fc0 <blanks.1+0x78>
   17c18:	00000613          	li	a2,0
   17c1c:	15d00593          	li	a1,349
   17c20:	2a850513          	add	a0,a0,680 # 222a8 <ezero+0x30>
   17c24:	4f9040ef          	jal	1c91c <__assert_func>

0000000000017c28 <__pow5mult>:
   17c28:	fd010113          	add	sp,sp,-48
   17c2c:	02813023          	sd	s0,32(sp)
   17c30:	01213823          	sd	s2,16(sp)
   17c34:	01313423          	sd	s3,8(sp)
   17c38:	02113423          	sd	ra,40(sp)
   17c3c:	00913c23          	sd	s1,24(sp)
   17c40:	00367793          	and	a5,a2,3
   17c44:	00060413          	mv	s0,a2
   17c48:	00050993          	mv	s3,a0
   17c4c:	00058913          	mv	s2,a1
   17c50:	0a079a63          	bnez	a5,17d04 <__pow5mult+0xdc>
   17c54:	40245413          	sra	s0,s0,0x2
   17c58:	06040663          	beqz	s0,17cc4 <__pow5mult+0x9c>
   17c5c:	0709b483          	ld	s1,112(s3)
   17c60:	0c048663          	beqz	s1,17d2c <__pow5mult+0x104>
   17c64:	00147793          	and	a5,s0,1
   17c68:	02079063          	bnez	a5,17c88 <__pow5mult+0x60>
   17c6c:	40145413          	sra	s0,s0,0x1
   17c70:	04040a63          	beqz	s0,17cc4 <__pow5mult+0x9c>
   17c74:	0004b503          	ld	a0,0(s1)
   17c78:	06050663          	beqz	a0,17ce4 <__pow5mult+0xbc>
   17c7c:	00050493          	mv	s1,a0
   17c80:	00147793          	and	a5,s0,1
   17c84:	fe0784e3          	beqz	a5,17c6c <__pow5mult+0x44>
   17c88:	00048613          	mv	a2,s1
   17c8c:	00090593          	mv	a1,s2
   17c90:	00098513          	mv	a0,s3
   17c94:	ce1ff0ef          	jal	17974 <__multiply>
   17c98:	02090063          	beqz	s2,17cb8 <__pow5mult+0x90>
   17c9c:	00892703          	lw	a4,8(s2)
   17ca0:	0789b783          	ld	a5,120(s3)
   17ca4:	00371713          	sll	a4,a4,0x3
   17ca8:	00e787b3          	add	a5,a5,a4
   17cac:	0007b703          	ld	a4,0(a5)
   17cb0:	00e93023          	sd	a4,0(s2)
   17cb4:	0127b023          	sd	s2,0(a5)
   17cb8:	40145413          	sra	s0,s0,0x1
   17cbc:	00050913          	mv	s2,a0
   17cc0:	fa041ae3          	bnez	s0,17c74 <__pow5mult+0x4c>
   17cc4:	02813083          	ld	ra,40(sp)
   17cc8:	02013403          	ld	s0,32(sp)
   17ccc:	01813483          	ld	s1,24(sp)
   17cd0:	00813983          	ld	s3,8(sp)
   17cd4:	00090513          	mv	a0,s2
   17cd8:	01013903          	ld	s2,16(sp)
   17cdc:	03010113          	add	sp,sp,48
   17ce0:	00008067          	ret
   17ce4:	00048613          	mv	a2,s1
   17ce8:	00048593          	mv	a1,s1
   17cec:	00098513          	mv	a0,s3
   17cf0:	c85ff0ef          	jal	17974 <__multiply>
   17cf4:	00a4b023          	sd	a0,0(s1)
   17cf8:	00053023          	sd	zero,0(a0)
   17cfc:	00050493          	mv	s1,a0
   17d00:	f81ff06f          	j	17c80 <__pow5mult+0x58>
   17d04:	fff7879b          	addw	a5,a5,-1
   17d08:	00022737          	lui	a4,0x22
   17d0c:	2f070713          	add	a4,a4,752 # 222f0 <p05.0>
   17d10:	00279793          	sll	a5,a5,0x2
   17d14:	00f707b3          	add	a5,a4,a5
   17d18:	0007a603          	lw	a2,0(a5)
   17d1c:	00000693          	li	a3,0
   17d20:	f68ff0ef          	jal	17488 <__multadd>
   17d24:	00050913          	mv	s2,a0
   17d28:	f2dff06f          	j	17c54 <__pow5mult+0x2c>
   17d2c:	00100593          	li	a1,1
   17d30:	00098513          	mv	a0,s3
   17d34:	e84ff0ef          	jal	173b8 <_Balloc>
   17d38:	00050493          	mv	s1,a0
   17d3c:	02050063          	beqz	a0,17d5c <__pow5mult+0x134>
   17d40:	27100793          	li	a5,625
   17d44:	00f52c23          	sw	a5,24(a0)
   17d48:	00100793          	li	a5,1
   17d4c:	00f52a23          	sw	a5,20(a0)
   17d50:	06a9b823          	sd	a0,112(s3)
   17d54:	00053023          	sd	zero,0(a0)
   17d58:	f0dff06f          	j	17c64 <__pow5mult+0x3c>
   17d5c:	000226b7          	lui	a3,0x22
   17d60:	00022537          	lui	a0,0x22
   17d64:	fc068693          	add	a3,a3,-64 # 21fc0 <blanks.1+0x78>
   17d68:	00000613          	li	a2,0
   17d6c:	14000593          	li	a1,320
   17d70:	2a850513          	add	a0,a0,680 # 222a8 <ezero+0x30>
   17d74:	3a9040ef          	jal	1c91c <__assert_func>

0000000000017d78 <__lshift>:
   17d78:	fc010113          	add	sp,sp,-64
   17d7c:	02813823          	sd	s0,48(sp)
   17d80:	0145a403          	lw	s0,20(a1)
   17d84:	00c5a783          	lw	a5,12(a1)
   17d88:	01513423          	sd	s5,8(sp)
   17d8c:	40565a9b          	sraw	s5,a2,0x5
   17d90:	008a843b          	addw	s0,s5,s0
   17d94:	02913423          	sd	s1,40(sp)
   17d98:	03213023          	sd	s2,32(sp)
   17d9c:	01313c23          	sd	s3,24(sp)
   17da0:	01413823          	sd	s4,16(sp)
   17da4:	01613023          	sd	s6,0(sp)
   17da8:	02113c23          	sd	ra,56(sp)
   17dac:	0014091b          	addw	s2,s0,1
   17db0:	00058493          	mv	s1,a1
   17db4:	00060a13          	mv	s4,a2
   17db8:	0085a583          	lw	a1,8(a1)
   17dbc:	00050993          	mv	s3,a0
   17dc0:	40565b13          	sra	s6,a2,0x5
   17dc4:	0127d863          	bge	a5,s2,17dd4 <__lshift+0x5c>
   17dc8:	0017979b          	sllw	a5,a5,0x1
   17dcc:	0015859b          	addw	a1,a1,1
   17dd0:	ff27cce3          	blt	a5,s2,17dc8 <__lshift+0x50>
   17dd4:	00098513          	mv	a0,s3
   17dd8:	de0ff0ef          	jal	173b8 <_Balloc>
   17ddc:	12050263          	beqz	a0,17f00 <__lshift+0x188>
   17de0:	01850713          	add	a4,a0,24
   17de4:	03605663          	blez	s6,17e10 <__lshift+0x98>
   17de8:	006a869b          	addw	a3,s5,6
   17dec:	00269693          	sll	a3,a3,0x2
   17df0:	00d506b3          	add	a3,a0,a3
   17df4:	00070793          	mv	a5,a4
   17df8:	00478793          	add	a5,a5,4
   17dfc:	fe07ae23          	sw	zero,-4(a5)
   17e00:	fef69ce3          	bne	a3,a5,17df8 <__lshift+0x80>
   17e04:	020a9793          	sll	a5,s5,0x20
   17e08:	01e7da93          	srl	s5,a5,0x1e
   17e0c:	01570733          	add	a4,a4,s5
   17e10:	0144a883          	lw	a7,20(s1)
   17e14:	01848793          	add	a5,s1,24
   17e18:	01fa7613          	and	a2,s4,31
   17e1c:	00289893          	sll	a7,a7,0x2
   17e20:	011788b3          	add	a7,a5,a7
   17e24:	0a060863          	beqz	a2,17ed4 <__lshift+0x15c>
   17e28:	02000593          	li	a1,32
   17e2c:	40c585bb          	subw	a1,a1,a2
   17e30:	00070313          	mv	t1,a4
   17e34:	00000693          	li	a3,0
   17e38:	0007a803          	lw	a6,0(a5)
   17e3c:	00430313          	add	t1,t1,4
   17e40:	00478793          	add	a5,a5,4
   17e44:	00c8183b          	sllw	a6,a6,a2
   17e48:	0106e6b3          	or	a3,a3,a6
   17e4c:	fed32e23          	sw	a3,-4(t1)
   17e50:	ffc7a803          	lw	a6,-4(a5)
   17e54:	00b856bb          	srlw	a3,a6,a1
   17e58:	00068813          	mv	a6,a3
   17e5c:	fd17eee3          	bltu	a5,a7,17e38 <__lshift+0xc0>
   17e60:	01948793          	add	a5,s1,25
   17e64:	00400613          	li	a2,4
   17e68:	00f8ea63          	bltu	a7,a5,17e7c <__lshift+0x104>
   17e6c:	409887b3          	sub	a5,a7,s1
   17e70:	fe778793          	add	a5,a5,-25
   17e74:	ffc7f793          	and	a5,a5,-4
   17e78:	00478613          	add	a2,a5,4
   17e7c:	00c70733          	add	a4,a4,a2
   17e80:	01072023          	sw	a6,0(a4)
   17e84:	00069463          	bnez	a3,17e8c <__lshift+0x114>
   17e88:	00040913          	mv	s2,s0
   17e8c:	0084a703          	lw	a4,8(s1)
   17e90:	0789b783          	ld	a5,120(s3)
   17e94:	03813083          	ld	ra,56(sp)
   17e98:	00371713          	sll	a4,a4,0x3
   17e9c:	00e787b3          	add	a5,a5,a4
   17ea0:	0007b703          	ld	a4,0(a5)
   17ea4:	01252a23          	sw	s2,20(a0)
   17ea8:	03013403          	ld	s0,48(sp)
   17eac:	00e4b023          	sd	a4,0(s1)
   17eb0:	0097b023          	sd	s1,0(a5)
   17eb4:	02013903          	ld	s2,32(sp)
   17eb8:	02813483          	ld	s1,40(sp)
   17ebc:	01813983          	ld	s3,24(sp)
   17ec0:	01013a03          	ld	s4,16(sp)
   17ec4:	00813a83          	ld	s5,8(sp)
   17ec8:	00013b03          	ld	s6,0(sp)
   17ecc:	04010113          	add	sp,sp,64
   17ed0:	00008067          	ret
   17ed4:	0007a683          	lw	a3,0(a5)
   17ed8:	00478793          	add	a5,a5,4
   17edc:	00470713          	add	a4,a4,4
   17ee0:	fed72e23          	sw	a3,-4(a4)
   17ee4:	fb17f2e3          	bgeu	a5,a7,17e88 <__lshift+0x110>
   17ee8:	0007a683          	lw	a3,0(a5)
   17eec:	00478793          	add	a5,a5,4
   17ef0:	00470713          	add	a4,a4,4
   17ef4:	fed72e23          	sw	a3,-4(a4)
   17ef8:	fd17eee3          	bltu	a5,a7,17ed4 <__lshift+0x15c>
   17efc:	f8dff06f          	j	17e88 <__lshift+0x110>
   17f00:	000226b7          	lui	a3,0x22
   17f04:	00022537          	lui	a0,0x22
   17f08:	fc068693          	add	a3,a3,-64 # 21fc0 <blanks.1+0x78>
   17f0c:	00000613          	li	a2,0
   17f10:	1d900593          	li	a1,473
   17f14:	2a850513          	add	a0,a0,680 # 222a8 <ezero+0x30>
   17f18:	205040ef          	jal	1c91c <__assert_func>

0000000000017f1c <__mcmp>:
   17f1c:	0145a783          	lw	a5,20(a1)
   17f20:	00050813          	mv	a6,a0
   17f24:	01452503          	lw	a0,20(a0)
   17f28:	40f5053b          	subw	a0,a0,a5
   17f2c:	04051263          	bnez	a0,17f70 <__mcmp+0x54>
   17f30:	00279793          	sll	a5,a5,0x2
   17f34:	01880813          	add	a6,a6,24
   17f38:	01858593          	add	a1,a1,24
   17f3c:	00f80733          	add	a4,a6,a5
   17f40:	00f587b3          	add	a5,a1,a5
   17f44:	0080006f          	j	17f4c <__mcmp+0x30>
   17f48:	02e87463          	bgeu	a6,a4,17f70 <__mcmp+0x54>
   17f4c:	ffc72603          	lw	a2,-4(a4)
   17f50:	ffc7a683          	lw	a3,-4(a5)
   17f54:	ffc70713          	add	a4,a4,-4
   17f58:	ffc78793          	add	a5,a5,-4
   17f5c:	fed606e3          	beq	a2,a3,17f48 <__mcmp+0x2c>
   17f60:	00100513          	li	a0,1
   17f64:	00d67663          	bgeu	a2,a3,17f70 <__mcmp+0x54>
   17f68:	fff00513          	li	a0,-1
   17f6c:	00008067          	ret
   17f70:	00008067          	ret

0000000000017f74 <__mdiff>:
   17f74:	fe010113          	add	sp,sp,-32
   17f78:	01462783          	lw	a5,20(a2)
   17f7c:	01213023          	sd	s2,0(sp)
   17f80:	0145a903          	lw	s2,20(a1)
   17f84:	00813823          	sd	s0,16(sp)
   17f88:	00913423          	sd	s1,8(sp)
   17f8c:	00113c23          	sd	ra,24(sp)
   17f90:	40f9093b          	subw	s2,s2,a5
   17f94:	00058493          	mv	s1,a1
   17f98:	00060413          	mv	s0,a2
   17f9c:	04091663          	bnez	s2,17fe8 <__mdiff+0x74>
   17fa0:	00279693          	sll	a3,a5,0x2
   17fa4:	01858593          	add	a1,a1,24
   17fa8:	01860713          	add	a4,a2,24
   17fac:	00d587b3          	add	a5,a1,a3
   17fb0:	00d70733          	add	a4,a4,a3
   17fb4:	0080006f          	j	17fbc <__mdiff+0x48>
   17fb8:	18f5fa63          	bgeu	a1,a5,1814c <__mdiff+0x1d8>
   17fbc:	ffc7a603          	lw	a2,-4(a5)
   17fc0:	ffc72683          	lw	a3,-4(a4)
   17fc4:	ffc78793          	add	a5,a5,-4
   17fc8:	ffc70713          	add	a4,a4,-4
   17fcc:	fed606e3          	beq	a2,a3,17fb8 <__mdiff+0x44>
   17fd0:	02d67063          	bgeu	a2,a3,17ff0 <__mdiff+0x7c>
   17fd4:	00048793          	mv	a5,s1
   17fd8:	00100913          	li	s2,1
   17fdc:	00040493          	mv	s1,s0
   17fe0:	00078413          	mv	s0,a5
   17fe4:	00c0006f          	j	17ff0 <__mdiff+0x7c>
   17fe8:	fe0946e3          	bltz	s2,17fd4 <__mdiff+0x60>
   17fec:	00000913          	li	s2,0
   17ff0:	0084a583          	lw	a1,8(s1)
   17ff4:	bc4ff0ef          	jal	173b8 <_Balloc>
   17ff8:	1a050e63          	beqz	a0,181b4 <__mdiff+0x240>
   17ffc:	0144a303          	lw	t1,20(s1)
   18000:	01442f03          	lw	t5,20(s0)
   18004:	01848293          	add	t0,s1,24
   18008:	00231e13          	sll	t3,t1,0x2
   1800c:	01840813          	add	a6,s0,24
   18010:	002f1f13          	sll	t5,t5,0x2
   18014:	01850f93          	add	t6,a0,24
   18018:	000108b7          	lui	a7,0x10
   1801c:	01252823          	sw	s2,16(a0)
   18020:	01c28e33          	add	t3,t0,t3
   18024:	01e80f33          	add	t5,a6,t5
   18028:	000f8613          	mv	a2,t6
   1802c:	00028e93          	mv	t4,t0
   18030:	00000593          	li	a1,0
   18034:	fff88893          	add	a7,a7,-1 # ffff <exit-0xe9>
   18038:	000ea703          	lw	a4,0(t4)
   1803c:	00082683          	lw	a3,0(a6)
   18040:	00460613          	add	a2,a2,4
   18044:	011777b3          	and	a5,a4,a7
   18048:	0116f3b3          	and	t2,a3,a7
   1804c:	407787bb          	subw	a5,a5,t2
   18050:	00b787bb          	addw	a5,a5,a1
   18054:	0106d69b          	srlw	a3,a3,0x10
   18058:	0107571b          	srlw	a4,a4,0x10
   1805c:	40d7073b          	subw	a4,a4,a3
   18060:	4107d69b          	sraw	a3,a5,0x10
   18064:	00d7073b          	addw	a4,a4,a3
   18068:	00f8f7b3          	and	a5,a7,a5
   1806c:	0107169b          	sllw	a3,a4,0x10
   18070:	00d7e7b3          	or	a5,a5,a3
   18074:	0007879b          	sext.w	a5,a5
   18078:	00480813          	add	a6,a6,4
   1807c:	fef62e23          	sw	a5,-4(a2)
   18080:	004e8e93          	add	t4,t4,4
   18084:	4107559b          	sraw	a1,a4,0x10
   18088:	fbe868e3          	bltu	a6,t5,18038 <__mdiff+0xc4>
   1808c:	408f0733          	sub	a4,t5,s0
   18090:	fe770713          	add	a4,a4,-25
   18094:	01940413          	add	s0,s0,25
   18098:	00275e93          	srl	t4,a4,0x2
   1809c:	00400713          	li	a4,4
   180a0:	008f6663          	bltu	t5,s0,180ac <__mdiff+0x138>
   180a4:	001e8713          	add	a4,t4,1
   180a8:	00271713          	sll	a4,a4,0x2
   180ac:	00e282b3          	add	t0,t0,a4
   180b0:	00ef8833          	add	a6,t6,a4
   180b4:	000108b7          	lui	a7,0x10
   180b8:	00080613          	mv	a2,a6
   180bc:	00028693          	mv	a3,t0
   180c0:	fff88893          	add	a7,a7,-1 # ffff <exit-0xe9>
   180c4:	0bc2fc63          	bgeu	t0,t3,1817c <__mdiff+0x208>
   180c8:	0006a783          	lw	a5,0(a3)
   180cc:	00058e9b          	sext.w	t4,a1
   180d0:	00460613          	add	a2,a2,4
   180d4:	0117f733          	and	a4,a5,a7
   180d8:	00b7073b          	addw	a4,a4,a1
   180dc:	4107571b          	sraw	a4,a4,0x10
   180e0:	0107d59b          	srlw	a1,a5,0x10
   180e4:	00b7073b          	addw	a4,a4,a1
   180e8:	01d787bb          	addw	a5,a5,t4
   180ec:	0107159b          	sllw	a1,a4,0x10
   180f0:	0117f7b3          	and	a5,a5,a7
   180f4:	00b7e7b3          	or	a5,a5,a1
   180f8:	0007879b          	sext.w	a5,a5
   180fc:	00468693          	add	a3,a3,4
   18100:	fef62e23          	sw	a5,-4(a2)
   18104:	4107559b          	sraw	a1,a4,0x10
   18108:	fdc6e0e3          	bltu	a3,t3,180c8 <__mdiff+0x154>
   1810c:	fffe0e13          	add	t3,t3,-1
   18110:	405e0e33          	sub	t3,t3,t0
   18114:	ffce7e13          	and	t3,t3,-4
   18118:	01c80733          	add	a4,a6,t3
   1811c:	00079a63          	bnez	a5,18130 <__mdiff+0x1bc>
   18120:	ffc72783          	lw	a5,-4(a4)
   18124:	fff3031b          	addw	t1,t1,-1
   18128:	ffc70713          	add	a4,a4,-4
   1812c:	fe078ae3          	beqz	a5,18120 <__mdiff+0x1ac>
   18130:	01813083          	ld	ra,24(sp)
   18134:	01013403          	ld	s0,16(sp)
   18138:	00652a23          	sw	t1,20(a0)
   1813c:	00813483          	ld	s1,8(sp)
   18140:	00013903          	ld	s2,0(sp)
   18144:	02010113          	add	sp,sp,32
   18148:	00008067          	ret
   1814c:	00000593          	li	a1,0
   18150:	a68ff0ef          	jal	173b8 <_Balloc>
   18154:	04050263          	beqz	a0,18198 <__mdiff+0x224>
   18158:	01813083          	ld	ra,24(sp)
   1815c:	01013403          	ld	s0,16(sp)
   18160:	00100793          	li	a5,1
   18164:	00f52a23          	sw	a5,20(a0)
   18168:	00052c23          	sw	zero,24(a0)
   1816c:	00813483          	ld	s1,8(sp)
   18170:	00013903          	ld	s2,0(sp)
   18174:	02010113          	add	sp,sp,32
   18178:	00008067          	ret
   1817c:	00000713          	li	a4,0
   18180:	008f7663          	bgeu	t5,s0,1818c <__mdiff+0x218>
   18184:	00ef8733          	add	a4,t6,a4
   18188:	f95ff06f          	j	1811c <__mdiff+0x1a8>
   1818c:	002e9713          	sll	a4,t4,0x2
   18190:	00ef8733          	add	a4,t6,a4
   18194:	f89ff06f          	j	1811c <__mdiff+0x1a8>
   18198:	000226b7          	lui	a3,0x22
   1819c:	00022537          	lui	a0,0x22
   181a0:	fc068693          	add	a3,a3,-64 # 21fc0 <blanks.1+0x78>
   181a4:	00000613          	li	a2,0
   181a8:	23200593          	li	a1,562
   181ac:	2a850513          	add	a0,a0,680 # 222a8 <ezero+0x30>
   181b0:	76c040ef          	jal	1c91c <__assert_func>
   181b4:	000226b7          	lui	a3,0x22
   181b8:	00022537          	lui	a0,0x22
   181bc:	fc068693          	add	a3,a3,-64 # 21fc0 <blanks.1+0x78>
   181c0:	00000613          	li	a2,0
   181c4:	24000593          	li	a1,576
   181c8:	2a850513          	add	a0,a0,680 # 222a8 <ezero+0x30>
   181cc:	750040ef          	jal	1c91c <__assert_func>

00000000000181d0 <__ulp>:
   181d0:	7ff007b7          	lui	a5,0x7ff00
   181d4:	02055513          	srl	a0,a0,0x20
   181d8:	00f57533          	and	a0,a0,a5
   181dc:	fcc007b7          	lui	a5,0xfcc00
   181e0:	00a7873b          	addw	a4,a5,a0
   181e4:	00000513          	li	a0,0
   181e8:	00e05c63          	blez	a4,18200 <__ulp+0x30>
   181ec:	02051513          	sll	a0,a0,0x20
   181f0:	02071713          	sll	a4,a4,0x20
   181f4:	02055513          	srl	a0,a0,0x20
   181f8:	00e56533          	or	a0,a0,a4
   181fc:	00008067          	ret
   18200:	40e007bb          	negw	a5,a4
   18204:	4147d69b          	sraw	a3,a5,0x14
   18208:	01300713          	li	a4,19
   1820c:	02d74263          	blt	a4,a3,18230 <__ulp+0x60>
   18210:	00080737          	lui	a4,0x80
   18214:	00000513          	li	a0,0
   18218:	40d7573b          	sraw	a4,a4,a3
   1821c:	02051513          	sll	a0,a0,0x20
   18220:	02071713          	sll	a4,a4,0x20
   18224:	02055513          	srl	a0,a0,0x20
   18228:	00e56533          	or	a0,a0,a4
   1822c:	00008067          	ret
   18230:	fec6879b          	addw	a5,a3,-20
   18234:	01e00713          	li	a4,30
   18238:	00100513          	li	a0,1
   1823c:	00f74663          	blt	a4,a5,18248 <__ulp+0x78>
   18240:	80000537          	lui	a0,0x80000
   18244:	00f5553b          	srlw	a0,a0,a5
   18248:	00000713          	li	a4,0
   1824c:	02051513          	sll	a0,a0,0x20
   18250:	02071713          	sll	a4,a4,0x20
   18254:	02055513          	srl	a0,a0,0x20
   18258:	00e56533          	or	a0,a0,a4
   1825c:	00008067          	ret

0000000000018260 <__b2d>:
   18260:	fd010113          	add	sp,sp,-48
   18264:	00913c23          	sd	s1,24(sp)
   18268:	01452483          	lw	s1,20(a0) # ffffffff80000014 <__BSS_END__+0xffffffff7ffdb22c>
   1826c:	02813023          	sd	s0,32(sp)
   18270:	01850413          	add	s0,a0,24
   18274:	00249493          	sll	s1,s1,0x2
   18278:	009404b3          	add	s1,s0,s1
   1827c:	01213823          	sd	s2,16(sp)
   18280:	ffc4a903          	lw	s2,-4(s1)
   18284:	01313423          	sd	s3,8(sp)
   18288:	01413023          	sd	s4,0(sp)
   1828c:	00090513          	mv	a0,s2
   18290:	00058993          	mv	s3,a1
   18294:	02113423          	sd	ra,40(sp)
   18298:	cccff0ef          	jal	17764 <__hi0bits>
   1829c:	02000693          	li	a3,32
   182a0:	40a687bb          	subw	a5,a3,a0
   182a4:	00f9a023          	sw	a5,0(s3)
   182a8:	00a00793          	li	a5,10
   182ac:	ffc48a13          	add	s4,s1,-4
   182b0:	00050713          	mv	a4,a0
   182b4:	0aa7dc63          	bge	a5,a0,1836c <__b2d+0x10c>
   182b8:	ff55079b          	addw	a5,a0,-11
   182bc:	05447663          	bgeu	s0,s4,18308 <__b2d+0xa8>
   182c0:	ff84a703          	lw	a4,-8(s1)
   182c4:	06078463          	beqz	a5,1832c <__b2d+0xcc>
   182c8:	40f686bb          	subw	a3,a3,a5
   182cc:	00d7563b          	srlw	a2,a4,a3
   182d0:	00f9193b          	sllw	s2,s2,a5
   182d4:	00c96933          	or	s2,s2,a2
   182d8:	3ff00637          	lui	a2,0x3ff00
   182dc:	00c96933          	or	s2,s2,a2
   182e0:	00f7163b          	sllw	a2,a4,a5
   182e4:	ff848793          	add	a5,s1,-8
   182e8:	02091513          	sll	a0,s2,0x20
   182ec:	0006071b          	sext.w	a4,a2
   182f0:	04f47463          	bgeu	s0,a5,18338 <__b2d+0xd8>
   182f4:	ff44a703          	lw	a4,-12(s1)
   182f8:	00d7573b          	srlw	a4,a4,a3
   182fc:	00c76733          	or	a4,a4,a2
   18300:	0007071b          	sext.w	a4,a4
   18304:	0340006f          	j	18338 <__b2d+0xd8>
   18308:	00b00693          	li	a3,11
   1830c:	00d50e63          	beq	a0,a3,18328 <__b2d+0xc8>
   18310:	00f9153b          	sllw	a0,s2,a5
   18314:	3ff007b7          	lui	a5,0x3ff00
   18318:	00f56533          	or	a0,a0,a5
   1831c:	02051513          	sll	a0,a0,0x20
   18320:	00000713          	li	a4,0
   18324:	0140006f          	j	18338 <__b2d+0xd8>
   18328:	00000713          	li	a4,0
   1832c:	3ff00537          	lui	a0,0x3ff00
   18330:	00a96533          	or	a0,s2,a0
   18334:	02051513          	sll	a0,a0,0x20
   18338:	02813083          	ld	ra,40(sp)
   1833c:	02013403          	ld	s0,32(sp)
   18340:	02055513          	srl	a0,a0,0x20
   18344:	02071713          	sll	a4,a4,0x20
   18348:	02075713          	srl	a4,a4,0x20
   1834c:	02051513          	sll	a0,a0,0x20
   18350:	01813483          	ld	s1,24(sp)
   18354:	01013903          	ld	s2,16(sp)
   18358:	00813983          	ld	s3,8(sp)
   1835c:	00013a03          	ld	s4,0(sp)
   18360:	00e56533          	or	a0,a0,a4
   18364:	03010113          	add	sp,sp,48
   18368:	00008067          	ret
   1836c:	00b00693          	li	a3,11
   18370:	40a686bb          	subw	a3,a3,a0
   18374:	00d957bb          	srlw	a5,s2,a3
   18378:	3ff00637          	lui	a2,0x3ff00
   1837c:	00c7e7b3          	or	a5,a5,a2
   18380:	02079513          	sll	a0,a5,0x20
   18384:	00000793          	li	a5,0
   18388:	01447663          	bgeu	s0,s4,18394 <__b2d+0x134>
   1838c:	ff84a783          	lw	a5,-8(s1)
   18390:	00d7d7bb          	srlw	a5,a5,a3
   18394:	0157071b          	addw	a4,a4,21 # 80015 <__BSS_END__+0x5b22d>
   18398:	00e9173b          	sllw	a4,s2,a4
   1839c:	00e7e733          	or	a4,a5,a4
   183a0:	0007071b          	sext.w	a4,a4
   183a4:	f95ff06f          	j	18338 <__b2d+0xd8>

00000000000183a8 <__d2b>:
   183a8:	fc010113          	add	sp,sp,-64
   183ac:	02813823          	sd	s0,48(sp)
   183b0:	00058413          	mv	s0,a1
   183b4:	00100593          	li	a1,1
   183b8:	03213023          	sd	s2,32(sp)
   183bc:	01413823          	sd	s4,16(sp)
   183c0:	02113c23          	sd	ra,56(sp)
   183c4:	02913423          	sd	s1,40(sp)
   183c8:	01313c23          	sd	s3,24(sp)
   183cc:	00060a13          	mv	s4,a2
   183d0:	00068913          	mv	s2,a3
   183d4:	fe5fe0ef          	jal	173b8 <_Balloc>
   183d8:	10050063          	beqz	a0,184d8 <__d2b+0x130>
   183dc:	42045793          	sra	a5,s0,0x20
   183e0:	0147d99b          	srlw	s3,a5,0x14
   183e4:	7ff9f993          	and	s3,s3,2047
   183e8:	02c79793          	sll	a5,a5,0x2c
   183ec:	00050493          	mv	s1,a0
   183f0:	02c7d793          	srl	a5,a5,0x2c
   183f4:	00098663          	beqz	s3,18400 <__d2b+0x58>
   183f8:	00100737          	lui	a4,0x100
   183fc:	00e7e7b3          	or	a5,a5,a4
   18400:	00f12623          	sw	a5,12(sp)
   18404:	0004041b          	sext.w	s0,s0
   18408:	06041063          	bnez	s0,18468 <__d2b+0xc0>
   1840c:	00c10513          	add	a0,sp,12
   18410:	bd0ff0ef          	jal	177e0 <__lo0bits>
   18414:	00c12783          	lw	a5,12(sp)
   18418:	00100413          	li	s0,1
   1841c:	0084aa23          	sw	s0,20(s1)
   18420:	00f4ac23          	sw	a5,24(s1)
   18424:	0205051b          	addw	a0,a0,32 # 3ff00020 <__BSS_END__+0x3fedb238>
   18428:	08098663          	beqz	s3,184b4 <__d2b+0x10c>
   1842c:	bcd9899b          	addw	s3,s3,-1075
   18430:	00a989bb          	addw	s3,s3,a0
   18434:	03500413          	li	s0,53
   18438:	013a2023          	sw	s3,0(s4)
   1843c:	40a4053b          	subw	a0,s0,a0
   18440:	03813083          	ld	ra,56(sp)
   18444:	03013403          	ld	s0,48(sp)
   18448:	00a92023          	sw	a0,0(s2)
   1844c:	01813983          	ld	s3,24(sp)
   18450:	02013903          	ld	s2,32(sp)
   18454:	01013a03          	ld	s4,16(sp)
   18458:	00048513          	mv	a0,s1
   1845c:	02813483          	ld	s1,40(sp)
   18460:	04010113          	add	sp,sp,64
   18464:	00008067          	ret
   18468:	00810513          	add	a0,sp,8
   1846c:	00812423          	sw	s0,8(sp)
   18470:	b70ff0ef          	jal	177e0 <__lo0bits>
   18474:	00c12783          	lw	a5,12(sp)
   18478:	00812703          	lw	a4,8(sp)
   1847c:	02050063          	beqz	a0,1849c <__d2b+0xf4>
   18480:	02000693          	li	a3,32
   18484:	40a686bb          	subw	a3,a3,a0
   18488:	00d796bb          	sllw	a3,a5,a3
   1848c:	00d76733          	or	a4,a4,a3
   18490:	00a7d7bb          	srlw	a5,a5,a0
   18494:	0007071b          	sext.w	a4,a4
   18498:	00f12623          	sw	a5,12(sp)
   1849c:	00f03433          	snez	s0,a5
   184a0:	00140413          	add	s0,s0,1
   184a4:	00e4ac23          	sw	a4,24(s1)
   184a8:	00f4ae23          	sw	a5,28(s1)
   184ac:	0084aa23          	sw	s0,20(s1)
   184b0:	f6099ee3          	bnez	s3,1842c <__d2b+0x84>
   184b4:	bce5051b          	addw	a0,a0,-1074
   184b8:	00241793          	sll	a5,s0,0x2
   184bc:	00aa2023          	sw	a0,0(s4)
   184c0:	00f487b3          	add	a5,s1,a5
   184c4:	0147a503          	lw	a0,20(a5) # 3ff00014 <__BSS_END__+0x3fedb22c>
   184c8:	0054141b          	sllw	s0,s0,0x5
   184cc:	a98ff0ef          	jal	17764 <__hi0bits>
   184d0:	40a4053b          	subw	a0,s0,a0
   184d4:	f6dff06f          	j	18440 <__d2b+0x98>
   184d8:	000226b7          	lui	a3,0x22
   184dc:	00022537          	lui	a0,0x22
   184e0:	fc068693          	add	a3,a3,-64 # 21fc0 <blanks.1+0x78>
   184e4:	00000613          	li	a2,0
   184e8:	30a00593          	li	a1,778
   184ec:	2a850513          	add	a0,a0,680 # 222a8 <ezero+0x30>
   184f0:	42c040ef          	jal	1c91c <__assert_func>

00000000000184f4 <__ratio>:
   184f4:	fd010113          	add	sp,sp,-48
   184f8:	00913c23          	sd	s1,24(sp)
   184fc:	00058493          	mv	s1,a1
   18500:	00810593          	add	a1,sp,8
   18504:	02113423          	sd	ra,40(sp)
   18508:	02813023          	sd	s0,32(sp)
   1850c:	01213823          	sd	s2,16(sp)
   18510:	00050913          	mv	s2,a0
   18514:	d4dff0ef          	jal	18260 <__b2d>
   18518:	00c10593          	add	a1,sp,12
   1851c:	00050413          	mv	s0,a0
   18520:	00048513          	mv	a0,s1
   18524:	d3dff0ef          	jal	18260 <__b2d>
   18528:	01492783          	lw	a5,20(s2)
   1852c:	0144a603          	lw	a2,20(s1)
   18530:	00812703          	lw	a4,8(sp)
   18534:	00c12683          	lw	a3,12(sp)
   18538:	40c787bb          	subw	a5,a5,a2
   1853c:	0057979b          	sllw	a5,a5,0x5
   18540:	40d7073b          	subw	a4,a4,a3
   18544:	00e7873b          	addw	a4,a5,a4
   18548:	00070793          	mv	a5,a4
   1854c:	00050593          	mv	a1,a0
   18550:	04e05263          	blez	a4,18594 <__ratio+0xa0>
   18554:	02045713          	srl	a4,s0,0x20
   18558:	0147979b          	sllw	a5,a5,0x14
   1855c:	00e787bb          	addw	a5,a5,a4
   18560:	fff00713          	li	a4,-1
   18564:	02075713          	srl	a4,a4,0x20
   18568:	02079793          	sll	a5,a5,0x20
   1856c:	00877733          	and	a4,a4,s0
   18570:	00f76433          	or	s0,a4,a5
   18574:	00040513          	mv	a0,s0
   18578:	035070ef          	jal	1fdac <__divdf3>
   1857c:	02813083          	ld	ra,40(sp)
   18580:	02013403          	ld	s0,32(sp)
   18584:	01813483          	ld	s1,24(sp)
   18588:	01013903          	ld	s2,16(sp)
   1858c:	03010113          	add	sp,sp,48
   18590:	00008067          	ret
   18594:	02055713          	srl	a4,a0,0x20
   18598:	0147979b          	sllw	a5,a5,0x14
   1859c:	40f707bb          	subw	a5,a4,a5
   185a0:	fff00713          	li	a4,-1
   185a4:	02075713          	srl	a4,a4,0x20
   185a8:	02079793          	sll	a5,a5,0x20
   185ac:	00a775b3          	and	a1,a4,a0
   185b0:	00f5e5b3          	or	a1,a1,a5
   185b4:	fc1ff06f          	j	18574 <__ratio+0x80>

00000000000185b8 <_mprec_log10>:
   185b8:	fe010113          	add	sp,sp,-32
   185bc:	00813823          	sd	s0,16(sp)
   185c0:	00113c23          	sd	ra,24(sp)
   185c4:	00913423          	sd	s1,8(sp)
   185c8:	01700793          	li	a5,23
   185cc:	00050413          	mv	s0,a0
   185d0:	02a7d863          	bge	a5,a0,18600 <_mprec_log10+0x48>
   185d4:	7281b503          	ld	a0,1832(gp) # 24d10 <__SDATA_BEGIN__+0x10>
   185d8:	7301b483          	ld	s1,1840(gp) # 24d18 <__SDATA_BEGIN__+0x18>
   185dc:	00048593          	mv	a1,s1
   185e0:	fff4041b          	addw	s0,s0,-1
   185e4:	36d070ef          	jal	20150 <__muldf3>
   185e8:	fe041ae3          	bnez	s0,185dc <_mprec_log10+0x24>
   185ec:	01813083          	ld	ra,24(sp)
   185f0:	01013403          	ld	s0,16(sp)
   185f4:	00813483          	ld	s1,8(sp)
   185f8:	02010113          	add	sp,sp,32
   185fc:	00008067          	ret
   18600:	000227b7          	lui	a5,0x22
   18604:	00351413          	sll	s0,a0,0x3
   18608:	35078793          	add	a5,a5,848 # 22350 <__mprec_tens>
   1860c:	01813083          	ld	ra,24(sp)
   18610:	008787b3          	add	a5,a5,s0
   18614:	01013403          	ld	s0,16(sp)
   18618:	0007b503          	ld	a0,0(a5)
   1861c:	00813483          	ld	s1,8(sp)
   18620:	02010113          	add	sp,sp,32
   18624:	00008067          	ret

0000000000018628 <__copybits>:
   18628:	01462683          	lw	a3,20(a2) # 3ff00014 <__BSS_END__+0x3fedb22c>
   1862c:	fff5859b          	addw	a1,a1,-1
   18630:	4055d59b          	sraw	a1,a1,0x5
   18634:	0015859b          	addw	a1,a1,1
   18638:	01860793          	add	a5,a2,24
   1863c:	00269693          	sll	a3,a3,0x2
   18640:	00259593          	sll	a1,a1,0x2
   18644:	00d786b3          	add	a3,a5,a3
   18648:	00b505b3          	add	a1,a0,a1
   1864c:	02d7f863          	bgeu	a5,a3,1867c <__copybits+0x54>
   18650:	00050713          	mv	a4,a0
   18654:	0007a803          	lw	a6,0(a5)
   18658:	00478793          	add	a5,a5,4
   1865c:	00470713          	add	a4,a4,4 # 100004 <__BSS_END__+0xdb21c>
   18660:	ff072e23          	sw	a6,-4(a4)
   18664:	fed7e8e3          	bltu	a5,a3,18654 <__copybits+0x2c>
   18668:	40c687b3          	sub	a5,a3,a2
   1866c:	fe778793          	add	a5,a5,-25
   18670:	ffc7f793          	and	a5,a5,-4
   18674:	00478793          	add	a5,a5,4
   18678:	00f50533          	add	a0,a0,a5
   1867c:	00b57863          	bgeu	a0,a1,1868c <__copybits+0x64>
   18680:	00450513          	add	a0,a0,4
   18684:	fe052e23          	sw	zero,-4(a0)
   18688:	feb56ce3          	bltu	a0,a1,18680 <__copybits+0x58>
   1868c:	00008067          	ret

0000000000018690 <__any_on>:
   18690:	01452703          	lw	a4,20(a0)
   18694:	4055d613          	sra	a2,a1,0x5
   18698:	01850693          	add	a3,a0,24
   1869c:	02c75263          	bge	a4,a2,186c0 <__any_on+0x30>
   186a0:	00271713          	sll	a4,a4,0x2
   186a4:	00e687b3          	add	a5,a3,a4
   186a8:	04f6f263          	bgeu	a3,a5,186ec <__any_on+0x5c>
   186ac:	ffc7a703          	lw	a4,-4(a5)
   186b0:	ffc78793          	add	a5,a5,-4
   186b4:	fe070ae3          	beqz	a4,186a8 <__any_on+0x18>
   186b8:	00100513          	li	a0,1
   186bc:	00008067          	ret
   186c0:	00261793          	sll	a5,a2,0x2
   186c4:	00f687b3          	add	a5,a3,a5
   186c8:	fee650e3          	bge	a2,a4,186a8 <__any_on+0x18>
   186cc:	01f5f593          	and	a1,a1,31
   186d0:	fc058ce3          	beqz	a1,186a8 <__any_on+0x18>
   186d4:	0007a603          	lw	a2,0(a5)
   186d8:	00100513          	li	a0,1
   186dc:	00b6573b          	srlw	a4,a2,a1
   186e0:	00b7173b          	sllw	a4,a4,a1
   186e4:	fcc702e3          	beq	a4,a2,186a8 <__any_on+0x18>
   186e8:	00008067          	ret
   186ec:	00000513          	li	a0,0
   186f0:	00008067          	ret

00000000000186f4 <_sbrk_r>:
   186f4:	fe010113          	add	sp,sp,-32
   186f8:	00813823          	sd	s0,16(sp)
   186fc:	00913423          	sd	s1,8(sp)
   18700:	00050413          	mv	s0,a0
   18704:	00058513          	mv	a0,a1
   18708:	00113c23          	sd	ra,24(sp)
   1870c:	7801a823          	sw	zero,1936(gp) # 24d78 <errno>
   18710:	570070ef          	jal	1fc80 <_sbrk>
   18714:	fff00793          	li	a5,-1
   18718:	00f50c63          	beq	a0,a5,18730 <_sbrk_r+0x3c>
   1871c:	01813083          	ld	ra,24(sp)
   18720:	01013403          	ld	s0,16(sp)
   18724:	00813483          	ld	s1,8(sp)
   18728:	02010113          	add	sp,sp,32
   1872c:	00008067          	ret
   18730:	7901a783          	lw	a5,1936(gp) # 24d78 <errno>
   18734:	fe0784e3          	beqz	a5,1871c <_sbrk_r+0x28>
   18738:	01813083          	ld	ra,24(sp)
   1873c:	00f42023          	sw	a5,0(s0)
   18740:	01013403          	ld	s0,16(sp)
   18744:	00813483          	ld	s1,8(sp)
   18748:	02010113          	add	sp,sp,32
   1874c:	00008067          	ret

0000000000018750 <frexp>:
   18750:	fe010113          	add	sp,sp,-32
   18754:	00813823          	sd	s0,16(sp)
   18758:	80000437          	lui	s0,0x80000
   1875c:	00113c23          	sd	ra,24(sp)
   18760:	00913423          	sd	s1,8(sp)
   18764:	42055693          	sra	a3,a0,0x20
   18768:	fff44413          	not	s0,s0
   1876c:	0086f733          	and	a4,a3,s0
   18770:	0005a023          	sw	zero,0(a1)
   18774:	7ff00637          	lui	a2,0x7ff00
   18778:	00050793          	mv	a5,a0
   1877c:	06c77263          	bgeu	a4,a2,187e0 <frexp+0x90>
   18780:	00a76633          	or	a2,a4,a0
   18784:	0006061b          	sext.w	a2,a2
   18788:	04060c63          	beqz	a2,187e0 <frexp+0x90>
   1878c:	7ff00637          	lui	a2,0x7ff00
   18790:	00c6f633          	and	a2,a3,a2
   18794:	00058493          	mv	s1,a1
   18798:	06060063          	beqz	a2,187f8 <frexp+0xa8>
   1879c:	0006869b          	sext.w	a3,a3
   187a0:	0007071b          	sext.w	a4,a4
   187a4:	00000593          	li	a1,0
   187a8:	80100637          	lui	a2,0x80100
   187ac:	fff60613          	add	a2,a2,-1 # ffffffff800fffff <__BSS_END__+0xffffffff800db217>
   187b0:	00c6f6b3          	and	a3,a3,a2
   187b4:	3fe00637          	lui	a2,0x3fe00
   187b8:	00c6e6b3          	or	a3,a3,a2
   187bc:	4147571b          	sraw	a4,a4,0x14
   187c0:	fff00613          	li	a2,-1
   187c4:	c027071b          	addw	a4,a4,-1022
   187c8:	02065613          	srl	a2,a2,0x20
   187cc:	00b7073b          	addw	a4,a4,a1
   187d0:	02069693          	sll	a3,a3,0x20
   187d4:	00f677b3          	and	a5,a2,a5
   187d8:	00e4a023          	sw	a4,0(s1)
   187dc:	00d7e7b3          	or	a5,a5,a3
   187e0:	01813083          	ld	ra,24(sp)
   187e4:	01013403          	ld	s0,16(sp)
   187e8:	00813483          	ld	s1,8(sp)
   187ec:	00078513          	mv	a0,a5
   187f0:	02010113          	add	sp,sp,32
   187f4:	00008067          	ret
   187f8:	7381b583          	ld	a1,1848(gp) # 24d20 <__SDATA_BEGIN__+0x20>
   187fc:	155070ef          	jal	20150 <__muldf3>
   18800:	42055713          	sra	a4,a0,0x20
   18804:	00070693          	mv	a3,a4
   18808:	00050793          	mv	a5,a0
   1880c:	00877733          	and	a4,a4,s0
   18810:	fca00593          	li	a1,-54
   18814:	f95ff06f          	j	187a8 <frexp+0x58>

0000000000018818 <_sprintf_r>:
   18818:	f0010113          	add	sp,sp,-256
   1881c:	0d810e93          	add	t4,sp,216
   18820:	0ef13423          	sd	a5,232(sp)
   18824:	80000337          	lui	t1,0x80000
   18828:	ffff07b7          	lui	a5,0xffff0
   1882c:	00058e13          	mv	t3,a1
   18830:	fff34313          	not	t1,t1
   18834:	0cd13c23          	sd	a3,216(sp)
   18838:	20878793          	add	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb420>
   1883c:	01010593          	add	a1,sp,16
   18840:	000e8693          	mv	a3,t4
   18844:	0c113423          	sd	ra,200(sp)
   18848:	02f12023          	sw	a5,32(sp)
   1884c:	0ee13023          	sd	a4,224(sp)
   18850:	0f013823          	sd	a6,240(sp)
   18854:	0f113c23          	sd	a7,248(sp)
   18858:	01c13823          	sd	t3,16(sp)
   1885c:	03c13423          	sd	t3,40(sp)
   18860:	00612e23          	sw	t1,28(sp)
   18864:	02612823          	sw	t1,48(sp)
   18868:	01d13423          	sd	t4,8(sp)
   1886c:	570000ef          	jal	18ddc <_svfprintf_r>
   18870:	01013783          	ld	a5,16(sp)
   18874:	00078023          	sb	zero,0(a5)
   18878:	0c813083          	ld	ra,200(sp)
   1887c:	10010113          	add	sp,sp,256
   18880:	00008067          	ret

0000000000018884 <sprintf>:
   18884:	00050e13          	mv	t3,a0
   18888:	f0010113          	add	sp,sp,-256
   1888c:	7581b503          	ld	a0,1880(gp) # 24d40 <_impure_ptr>
   18890:	0d010e93          	add	t4,sp,208
   18894:	0ef13423          	sd	a5,232(sp)
   18898:	80000337          	lui	t1,0x80000
   1889c:	ffff07b7          	lui	a5,0xffff0
   188a0:	fff34313          	not	t1,t1
   188a4:	0cc13823          	sd	a2,208(sp)
   188a8:	0cd13c23          	sd	a3,216(sp)
   188ac:	20878793          	add	a5,a5,520 # ffffffffffff0208 <__BSS_END__+0xfffffffffffcb420>
   188b0:	00058613          	mv	a2,a1
   188b4:	000e8693          	mv	a3,t4
   188b8:	01010593          	add	a1,sp,16
   188bc:	0c113423          	sd	ra,200(sp)
   188c0:	02f12023          	sw	a5,32(sp)
   188c4:	0ee13023          	sd	a4,224(sp)
   188c8:	0f013823          	sd	a6,240(sp)
   188cc:	0f113c23          	sd	a7,248(sp)
   188d0:	01c13823          	sd	t3,16(sp)
   188d4:	03c13423          	sd	t3,40(sp)
   188d8:	00612e23          	sw	t1,28(sp)
   188dc:	02612823          	sw	t1,48(sp)
   188e0:	01d13423          	sd	t4,8(sp)
   188e4:	4f8000ef          	jal	18ddc <_svfprintf_r>
   188e8:	01013783          	ld	a5,16(sp)
   188ec:	00078023          	sb	zero,0(a5)
   188f0:	0c813083          	ld	ra,200(sp)
   188f4:	10010113          	add	sp,sp,256
   188f8:	00008067          	ret

00000000000188fc <__sread>:
   188fc:	ff010113          	add	sp,sp,-16
   18900:	00813023          	sd	s0,0(sp)
   18904:	00058413          	mv	s0,a1
   18908:	01259583          	lh	a1,18(a1)
   1890c:	00113423          	sd	ra,8(sp)
   18910:	67d040ef          	jal	1d78c <_read_r>
   18914:	02054063          	bltz	a0,18934 <__sread+0x38>
   18918:	09043783          	ld	a5,144(s0) # ffffffff80000090 <__BSS_END__+0xffffffff7ffdb2a8>
   1891c:	00813083          	ld	ra,8(sp)
   18920:	00a787b3          	add	a5,a5,a0
   18924:	08f43823          	sd	a5,144(s0)
   18928:	00013403          	ld	s0,0(sp)
   1892c:	01010113          	add	sp,sp,16
   18930:	00008067          	ret
   18934:	01045783          	lhu	a5,16(s0)
   18938:	fffff737          	lui	a4,0xfffff
   1893c:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda217>
   18940:	00e7f7b3          	and	a5,a5,a4
   18944:	00813083          	ld	ra,8(sp)
   18948:	00f41823          	sh	a5,16(s0)
   1894c:	00013403          	ld	s0,0(sp)
   18950:	01010113          	add	sp,sp,16
   18954:	00008067          	ret

0000000000018958 <__seofread>:
   18958:	00000513          	li	a0,0
   1895c:	00008067          	ret

0000000000018960 <__swrite>:
   18960:	01059783          	lh	a5,16(a1)
   18964:	fd010113          	add	sp,sp,-48
   18968:	02813023          	sd	s0,32(sp)
   1896c:	00913c23          	sd	s1,24(sp)
   18970:	01213823          	sd	s2,16(sp)
   18974:	01313423          	sd	s3,8(sp)
   18978:	02113423          	sd	ra,40(sp)
   1897c:	1007f713          	and	a4,a5,256
   18980:	00058413          	mv	s0,a1
   18984:	00050493          	mv	s1,a0
   18988:	00060913          	mv	s2,a2
   1898c:	00068993          	mv	s3,a3
   18990:	04071063          	bnez	a4,189d0 <__swrite+0x70>
   18994:	fffff737          	lui	a4,0xfffff
   18998:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda217>
   1899c:	00e7f7b3          	and	a5,a5,a4
   189a0:	01241583          	lh	a1,18(s0)
   189a4:	00f41823          	sh	a5,16(s0)
   189a8:	02013403          	ld	s0,32(sp)
   189ac:	02813083          	ld	ra,40(sp)
   189b0:	00098693          	mv	a3,s3
   189b4:	00090613          	mv	a2,s2
   189b8:	00813983          	ld	s3,8(sp)
   189bc:	01013903          	ld	s2,16(sp)
   189c0:	00048513          	mv	a0,s1
   189c4:	01813483          	ld	s1,24(sp)
   189c8:	03010113          	add	sp,sp,48
   189cc:	6e90306f          	j	1c8b4 <_write_r>
   189d0:	01259583          	lh	a1,18(a1)
   189d4:	00200693          	li	a3,2
   189d8:	00000613          	li	a2,0
   189dc:	289040ef          	jal	1d464 <_lseek_r>
   189e0:	01041783          	lh	a5,16(s0)
   189e4:	fb1ff06f          	j	18994 <__swrite+0x34>

00000000000189e8 <__sseek>:
   189e8:	ff010113          	add	sp,sp,-16
   189ec:	00813023          	sd	s0,0(sp)
   189f0:	00058413          	mv	s0,a1
   189f4:	01259583          	lh	a1,18(a1)
   189f8:	00113423          	sd	ra,8(sp)
   189fc:	269040ef          	jal	1d464 <_lseek_r>
   18a00:	fff00793          	li	a5,-1
   18a04:	02f50863          	beq	a0,a5,18a34 <__sseek+0x4c>
   18a08:	01045783          	lhu	a5,16(s0)
   18a0c:	00001737          	lui	a4,0x1
   18a10:	00813083          	ld	ra,8(sp)
   18a14:	00e7e7b3          	or	a5,a5,a4
   18a18:	0107979b          	sllw	a5,a5,0x10
   18a1c:	4107d79b          	sraw	a5,a5,0x10
   18a20:	08a43823          	sd	a0,144(s0)
   18a24:	00f41823          	sh	a5,16(s0)
   18a28:	00013403          	ld	s0,0(sp)
   18a2c:	01010113          	add	sp,sp,16
   18a30:	00008067          	ret
   18a34:	01045783          	lhu	a5,16(s0)
   18a38:	fffff737          	lui	a4,0xfffff
   18a3c:	fff70713          	add	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffda217>
   18a40:	00e7f7b3          	and	a5,a5,a4
   18a44:	0107979b          	sllw	a5,a5,0x10
   18a48:	4107d79b          	sraw	a5,a5,0x10
   18a4c:	00813083          	ld	ra,8(sp)
   18a50:	00f41823          	sh	a5,16(s0)
   18a54:	00013403          	ld	s0,0(sp)
   18a58:	01010113          	add	sp,sp,16
   18a5c:	00008067          	ret

0000000000018a60 <__sclose>:
   18a60:	01259583          	lh	a1,18(a1)
   18a64:	0f40406f          	j	1cb58 <_close_r>

0000000000018a68 <strcmp>:
   18a68:	00b56733          	or	a4,a0,a1
   18a6c:	fff00393          	li	t2,-1
   18a70:	00777713          	and	a4,a4,7
   18a74:	0c071c63          	bnez	a4,18b4c <strcmp+0xe4>
   18a78:	0000c797          	auipc	a5,0xc
   18a7c:	2b07b783          	ld	a5,688(a5) # 24d28 <mask>
   18a80:	00053603          	ld	a2,0(a0)
   18a84:	0005b683          	ld	a3,0(a1)
   18a88:	00f672b3          	and	t0,a2,a5
   18a8c:	00f66333          	or	t1,a2,a5
   18a90:	00f282b3          	add	t0,t0,a5
   18a94:	0062e2b3          	or	t0,t0,t1
   18a98:	0c729e63          	bne	t0,t2,18b74 <strcmp+0x10c>
   18a9c:	04d61663          	bne	a2,a3,18ae8 <strcmp+0x80>
   18aa0:	00853603          	ld	a2,8(a0)
   18aa4:	0085b683          	ld	a3,8(a1)
   18aa8:	00f672b3          	and	t0,a2,a5
   18aac:	00f66333          	or	t1,a2,a5
   18ab0:	00f282b3          	add	t0,t0,a5
   18ab4:	0062e2b3          	or	t0,t0,t1
   18ab8:	0a729a63          	bne	t0,t2,18b6c <strcmp+0x104>
   18abc:	02d61663          	bne	a2,a3,18ae8 <strcmp+0x80>
   18ac0:	01053603          	ld	a2,16(a0)
   18ac4:	0105b683          	ld	a3,16(a1)
   18ac8:	00f672b3          	and	t0,a2,a5
   18acc:	00f66333          	or	t1,a2,a5
   18ad0:	00f282b3          	add	t0,t0,a5
   18ad4:	0062e2b3          	or	t0,t0,t1
   18ad8:	0a729463          	bne	t0,t2,18b80 <strcmp+0x118>
   18adc:	01850513          	add	a0,a0,24
   18ae0:	01858593          	add	a1,a1,24
   18ae4:	f8d60ee3          	beq	a2,a3,18a80 <strcmp+0x18>
   18ae8:	03061713          	sll	a4,a2,0x30
   18aec:	03069793          	sll	a5,a3,0x30
   18af0:	02f71a63          	bne	a4,a5,18b24 <strcmp+0xbc>
   18af4:	02061713          	sll	a4,a2,0x20
   18af8:	02069793          	sll	a5,a3,0x20
   18afc:	02f71463          	bne	a4,a5,18b24 <strcmp+0xbc>
   18b00:	01061713          	sll	a4,a2,0x10
   18b04:	01069793          	sll	a5,a3,0x10
   18b08:	00f71e63          	bne	a4,a5,18b24 <strcmp+0xbc>
   18b0c:	03065713          	srl	a4,a2,0x30
   18b10:	0306d793          	srl	a5,a3,0x30
   18b14:	40f70533          	sub	a0,a4,a5
   18b18:	0ff57593          	zext.b	a1,a0
   18b1c:	02059063          	bnez	a1,18b3c <strcmp+0xd4>
   18b20:	00008067          	ret
   18b24:	03075713          	srl	a4,a4,0x30
   18b28:	0307d793          	srl	a5,a5,0x30
   18b2c:	40f70533          	sub	a0,a4,a5
   18b30:	0ff57593          	zext.b	a1,a0
   18b34:	00059463          	bnez	a1,18b3c <strcmp+0xd4>
   18b38:	00008067          	ret
   18b3c:	0ff77713          	zext.b	a4,a4
   18b40:	0ff7f793          	zext.b	a5,a5
   18b44:	40f70533          	sub	a0,a4,a5
   18b48:	00008067          	ret
   18b4c:	00054603          	lbu	a2,0(a0)
   18b50:	0005c683          	lbu	a3,0(a1)
   18b54:	00150513          	add	a0,a0,1
   18b58:	00158593          	add	a1,a1,1
   18b5c:	00d61463          	bne	a2,a3,18b64 <strcmp+0xfc>
   18b60:	fe0616e3          	bnez	a2,18b4c <strcmp+0xe4>
   18b64:	40d60533          	sub	a0,a2,a3
   18b68:	00008067          	ret
   18b6c:	00850513          	add	a0,a0,8
   18b70:	00858593          	add	a1,a1,8
   18b74:	fcd61ce3          	bne	a2,a3,18b4c <strcmp+0xe4>
   18b78:	00000513          	li	a0,0
   18b7c:	00008067          	ret
   18b80:	01050513          	add	a0,a0,16
   18b84:	01058593          	add	a1,a1,16
   18b88:	fcd612e3          	bne	a2,a3,18b4c <strcmp+0xe4>
   18b8c:	00000513          	li	a0,0
   18b90:	00008067          	ret

0000000000018b94 <strcpy>:
   18b94:	00b567b3          	or	a5,a0,a1
   18b98:	0077f793          	and	a5,a5,7
   18b9c:	0a079463          	bnez	a5,18c44 <strcpy+0xb0>
   18ba0:	7401b683          	ld	a3,1856(gp) # 24d28 <mask>
   18ba4:	0005b703          	ld	a4,0(a1)
   18ba8:	fff00613          	li	a2,-1
   18bac:	00d777b3          	and	a5,a4,a3
   18bb0:	00d787b3          	add	a5,a5,a3
   18bb4:	00e7e7b3          	or	a5,a5,a4
   18bb8:	00d7e7b3          	or	a5,a5,a3
   18bbc:	0ac79263          	bne	a5,a2,18c60 <strcpy+0xcc>
   18bc0:	00050613          	mv	a2,a0
   18bc4:	fff00813          	li	a6,-1
   18bc8:	00e63023          	sd	a4,0(a2) # 3fe00000 <__BSS_END__+0x3fddb218>
   18bcc:	0085b703          	ld	a4,8(a1)
   18bd0:	00858593          	add	a1,a1,8
   18bd4:	00860613          	add	a2,a2,8
   18bd8:	00d777b3          	and	a5,a4,a3
   18bdc:	00d787b3          	add	a5,a5,a3
   18be0:	00e7e7b3          	or	a5,a5,a4
   18be4:	00d7e7b3          	or	a5,a5,a3
   18be8:	ff0780e3          	beq	a5,a6,18bc8 <strcpy+0x34>
   18bec:	0005c783          	lbu	a5,0(a1)
   18bf0:	0015c703          	lbu	a4,1(a1)
   18bf4:	0025c683          	lbu	a3,2(a1)
   18bf8:	00f60023          	sb	a5,0(a2)
   18bfc:	04078263          	beqz	a5,18c40 <strcpy+0xac>
   18c00:	00e600a3          	sb	a4,1(a2)
   18c04:	02070e63          	beqz	a4,18c40 <strcpy+0xac>
   18c08:	0035c783          	lbu	a5,3(a1)
   18c0c:	00d60123          	sb	a3,2(a2)
   18c10:	02068863          	beqz	a3,18c40 <strcpy+0xac>
   18c14:	0045c703          	lbu	a4,4(a1)
   18c18:	00f601a3          	sb	a5,3(a2)
   18c1c:	02078263          	beqz	a5,18c40 <strcpy+0xac>
   18c20:	0055c783          	lbu	a5,5(a1)
   18c24:	00e60223          	sb	a4,4(a2)
   18c28:	00070c63          	beqz	a4,18c40 <strcpy+0xac>
   18c2c:	0065c703          	lbu	a4,6(a1)
   18c30:	00f602a3          	sb	a5,5(a2)
   18c34:	00078663          	beqz	a5,18c40 <strcpy+0xac>
   18c38:	00e60323          	sb	a4,6(a2)
   18c3c:	02071663          	bnez	a4,18c68 <strcpy+0xd4>
   18c40:	00008067          	ret
   18c44:	00050793          	mv	a5,a0
   18c48:	0005c703          	lbu	a4,0(a1)
   18c4c:	00178793          	add	a5,a5,1
   18c50:	00158593          	add	a1,a1,1
   18c54:	fee78fa3          	sb	a4,-1(a5)
   18c58:	fe0718e3          	bnez	a4,18c48 <strcpy+0xb4>
   18c5c:	00008067          	ret
   18c60:	00050613          	mv	a2,a0
   18c64:	f89ff06f          	j	18bec <strcpy+0x58>
   18c68:	000603a3          	sb	zero,7(a2)
   18c6c:	00008067          	ret

0000000000018c70 <strlen>:
   18c70:	00757793          	and	a5,a0,7
   18c74:	00050713          	mv	a4,a0
   18c78:	06079a63          	bnez	a5,18cec <strlen+0x7c>
   18c7c:	7401b683          	ld	a3,1856(gp) # 24d28 <mask>
   18c80:	fff00593          	li	a1,-1
   18c84:	00073603          	ld	a2,0(a4)
   18c88:	00870713          	add	a4,a4,8
   18c8c:	00d677b3          	and	a5,a2,a3
   18c90:	00d787b3          	add	a5,a5,a3
   18c94:	00c7e7b3          	or	a5,a5,a2
   18c98:	00d7e7b3          	or	a5,a5,a3
   18c9c:	feb784e3          	beq	a5,a1,18c84 <strlen+0x14>
   18ca0:	ff874683          	lbu	a3,-8(a4)
   18ca4:	40a707b3          	sub	a5,a4,a0
   18ca8:	06068463          	beqz	a3,18d10 <strlen+0xa0>
   18cac:	ff974683          	lbu	a3,-7(a4)
   18cb0:	04068c63          	beqz	a3,18d08 <strlen+0x98>
   18cb4:	ffa74683          	lbu	a3,-6(a4)
   18cb8:	06068463          	beqz	a3,18d20 <strlen+0xb0>
   18cbc:	ffb74683          	lbu	a3,-5(a4)
   18cc0:	04068c63          	beqz	a3,18d18 <strlen+0xa8>
   18cc4:	ffc74683          	lbu	a3,-4(a4)
   18cc8:	06068063          	beqz	a3,18d28 <strlen+0xb8>
   18ccc:	ffd74683          	lbu	a3,-3(a4)
   18cd0:	06068063          	beqz	a3,18d30 <strlen+0xc0>
   18cd4:	ffe74503          	lbu	a0,-2(a4)
   18cd8:	00a03533          	snez	a0,a0
   18cdc:	00f50533          	add	a0,a0,a5
   18ce0:	ffe50513          	add	a0,a0,-2
   18ce4:	00008067          	ret
   18ce8:	f8068ae3          	beqz	a3,18c7c <strlen+0xc>
   18cec:	00074783          	lbu	a5,0(a4)
   18cf0:	00170713          	add	a4,a4,1
   18cf4:	00777693          	and	a3,a4,7
   18cf8:	fe0798e3          	bnez	a5,18ce8 <strlen+0x78>
   18cfc:	40a70733          	sub	a4,a4,a0
   18d00:	fff70513          	add	a0,a4,-1
   18d04:	00008067          	ret
   18d08:	ff978513          	add	a0,a5,-7
   18d0c:	00008067          	ret
   18d10:	ff878513          	add	a0,a5,-8
   18d14:	00008067          	ret
   18d18:	ffb78513          	add	a0,a5,-5
   18d1c:	00008067          	ret
   18d20:	ffa78513          	add	a0,a5,-6
   18d24:	00008067          	ret
   18d28:	ffc78513          	add	a0,a5,-4
   18d2c:	00008067          	ret
   18d30:	ffd78513          	add	a0,a5,-3
   18d34:	00008067          	ret

0000000000018d38 <strncpy>:
   18d38:	00b567b3          	or	a5,a0,a1
   18d3c:	0077f793          	and	a5,a5,7
   18d40:	00079663          	bnez	a5,18d4c <strncpy+0x14>
   18d44:	00700793          	li	a5,7
   18d48:	04c7e663          	bltu	a5,a2,18d94 <strncpy+0x5c>
   18d4c:	00050713          	mv	a4,a0
   18d50:	01c0006f          	j	18d6c <strncpy+0x34>
   18d54:	fff5c683          	lbu	a3,-1(a1)
   18d58:	fff60813          	add	a6,a2,-1
   18d5c:	fed78fa3          	sb	a3,-1(a5)
   18d60:	00068e63          	beqz	a3,18d7c <strncpy+0x44>
   18d64:	00078713          	mv	a4,a5
   18d68:	00080613          	mv	a2,a6
   18d6c:	00158593          	add	a1,a1,1
   18d70:	00170793          	add	a5,a4,1
   18d74:	fe0610e3          	bnez	a2,18d54 <strncpy+0x1c>
   18d78:	00008067          	ret
   18d7c:	00c70733          	add	a4,a4,a2
   18d80:	04080c63          	beqz	a6,18dd8 <strncpy+0xa0>
   18d84:	00178793          	add	a5,a5,1
   18d88:	fe078fa3          	sb	zero,-1(a5)
   18d8c:	fee79ce3          	bne	a5,a4,18d84 <strncpy+0x4c>
   18d90:	00008067          	ret
   18d94:	7181b303          	ld	t1,1816(gp) # 24d00 <__SDATA_BEGIN__>
   18d98:	7201b883          	ld	a7,1824(gp) # 24d08 <__SDATA_BEGIN__+0x8>
   18d9c:	00050713          	mv	a4,a0
   18da0:	00700e13          	li	t3,7
   18da4:	0180006f          	j	18dbc <strncpy+0x84>
   18da8:	00d73023          	sd	a3,0(a4)
   18dac:	ff860613          	add	a2,a2,-8
   18db0:	00870713          	add	a4,a4,8
   18db4:	00858593          	add	a1,a1,8
   18db8:	face7ae3          	bgeu	t3,a2,18d6c <strncpy+0x34>
   18dbc:	0005b683          	ld	a3,0(a1)
   18dc0:	006687b3          	add	a5,a3,t1
   18dc4:	fff6c813          	not	a6,a3
   18dc8:	0107f7b3          	and	a5,a5,a6
   18dcc:	0117f7b3          	and	a5,a5,a7
   18dd0:	fc078ce3          	beqz	a5,18da8 <strncpy+0x70>
   18dd4:	f99ff06f          	j	18d6c <strncpy+0x34>
   18dd8:	00008067          	ret

0000000000018ddc <_svfprintf_r>:
   18ddc:	d9010113          	add	sp,sp,-624
   18de0:	26113423          	sd	ra,616(sp)
   18de4:	26813023          	sd	s0,608(sp)
   18de8:	25213823          	sd	s2,592(sp)
   18dec:	00058413          	mv	s0,a1
   18df0:	00b13023          	sd	a1,0(sp)
   18df4:	00060913          	mv	s2,a2
   18df8:	02d13023          	sd	a3,32(sp)
   18dfc:	24913c23          	sd	s1,600(sp)
   18e00:	25313423          	sd	s3,584(sp)
   18e04:	25413023          	sd	s4,576(sp)
   18e08:	23513c23          	sd	s5,568(sp)
   18e0c:	23613823          	sd	s6,560(sp)
   18e10:	23713423          	sd	s7,552(sp)
   18e14:	23813023          	sd	s8,544(sp)
   18e18:	21913c23          	sd	s9,536(sp)
   18e1c:	21a13823          	sd	s10,528(sp)
   18e20:	21b13423          	sd	s11,520(sp)
   18e24:	04a13823          	sd	a0,80(sp)
   18e28:	901fd0ef          	jal	16728 <_localeconv_r>
   18e2c:	00053703          	ld	a4,0(a0)
   18e30:	00070513          	mv	a0,a4
   18e34:	06e13023          	sd	a4,96(sp)
   18e38:	e39ff0ef          	jal	18c70 <strlen>
   18e3c:	01045703          	lhu	a4,16(s0)
   18e40:	0e013823          	sd	zero,240(sp)
   18e44:	0e013c23          	sd	zero,248(sp)
   18e48:	08077713          	and	a4,a4,128
   18e4c:	04a13c23          	sd	a0,88(sp)
   18e50:	00070863          	beqz	a4,18e60 <_svfprintf_r+0x84>
   18e54:	01843703          	ld	a4,24(s0)
   18e58:	00071463          	bnez	a4,18e60 <_svfprintf_r+0x84>
   18e5c:	3540106f          	j	1a1b0 <_svfprintf_r+0x13d4>
   18e60:	18010793          	add	a5,sp,384
   18e64:	00022737          	lui	a4,0x22
   18e68:	00078313          	mv	t1,a5
   18e6c:	10f13023          	sd	a5,256(sp)
   18e70:	00090b13          	mv	s6,s2
   18e74:	41870793          	add	a5,a4,1048 # 22418 <__mprec_tens+0xc8>
   18e78:	00022737          	lui	a4,0x22
   18e7c:	02f13423          	sd	a5,40(sp)
   18e80:	62070793          	add	a5,a4,1568 # 22620 <zeroes.0>
   18e84:	000b4703          	lbu	a4,0(s6)
   18e88:	10013823          	sd	zero,272(sp)
   18e8c:	10012423          	sw	zero,264(sp)
   18e90:	02013c23          	sd	zero,56(sp)
   18e94:	06013423          	sd	zero,104(sp)
   18e98:	06013823          	sd	zero,112(sp)
   18e9c:	06013c23          	sd	zero,120(sp)
   18ea0:	08013023          	sd	zero,128(sp)
   18ea4:	08013423          	sd	zero,136(sp)
   18ea8:	00013823          	sd	zero,16(sp)
   18eac:	00f13423          	sd	a5,8(sp)
   18eb0:	05013983          	ld	s3,80(sp)
   18eb4:	00030413          	mv	s0,t1
   18eb8:	24070063          	beqz	a4,190f8 <_svfprintf_r+0x31c>
   18ebc:	000b0493          	mv	s1,s6
   18ec0:	02500693          	li	a3,37
   18ec4:	2ad70263          	beq	a4,a3,19168 <_svfprintf_r+0x38c>
   18ec8:	0014c703          	lbu	a4,1(s1)
   18ecc:	00148493          	add	s1,s1,1
   18ed0:	fe071ae3          	bnez	a4,18ec4 <_svfprintf_r+0xe8>
   18ed4:	4164893b          	subw	s2,s1,s6
   18ed8:	22090063          	beqz	s2,190f8 <_svfprintf_r+0x31c>
   18edc:	11013d83          	ld	s11,272(sp)
   18ee0:	10812683          	lw	a3,264(sp)
   18ee4:	01643023          	sd	s6,0(s0)
   18ee8:	012d8733          	add	a4,s11,s2
   18eec:	0016861b          	addw	a2,a3,1
   18ef0:	01243423          	sd	s2,8(s0)
   18ef4:	10e13823          	sd	a4,272(sp)
   18ef8:	10c12423          	sw	a2,264(sp)
   18efc:	00700713          	li	a4,7
   18f00:	01040413          	add	s0,s0,16
   18f04:	26c74a63          	blt	a4,a2,19178 <_svfprintf_r+0x39c>
   18f08:	01013783          	ld	a5,16(sp)
   18f0c:	0004c703          	lbu	a4,0(s1)
   18f10:	012787bb          	addw	a5,a5,s2
   18f14:	00f13823          	sd	a5,16(sp)
   18f18:	1e070063          	beqz	a4,190f8 <_svfprintf_r+0x31c>
   18f1c:	fff00313          	li	t1,-1
   18f20:	0014ce03          	lbu	t3,1(s1)
   18f24:	0c0107a3          	sb	zero,207(sp)
   18f28:	00148493          	add	s1,s1,1
   18f2c:	00000a13          	li	s4,0
   18f30:	00000913          	li	s2,0
   18f34:	05a00b93          	li	s7,90
   18f38:	00030a93          	mv	s5,t1
   18f3c:	00148493          	add	s1,s1,1
   18f40:	000e0c9b          	sext.w	s9,t3
   18f44:	fe0c879b          	addw	a5,s9,-32
   18f48:	0007871b          	sext.w	a4,a5
   18f4c:	04ebec63          	bltu	s7,a4,18fa4 <_svfprintf_r+0x1c8>
   18f50:	02079713          	sll	a4,a5,0x20
   18f54:	01e75793          	srl	a5,a4,0x1e
   18f58:	02813703          	ld	a4,40(sp)
   18f5c:	00e787b3          	add	a5,a5,a4
   18f60:	0007a783          	lw	a5,0(a5)
   18f64:	00078067          	jr	a5
   18f68:	00000a13          	li	s4,0
   18f6c:	00900693          	li	a3,9
   18f70:	0004c703          	lbu	a4,0(s1)
   18f74:	002a179b          	sllw	a5,s4,0x2
   18f78:	01478a3b          	addw	s4,a5,s4
   18f7c:	fd0c8c9b          	addw	s9,s9,-48
   18f80:	001a1a1b          	sllw	s4,s4,0x1
   18f84:	fd07079b          	addw	a5,a4,-48
   18f88:	014c8a3b          	addw	s4,s9,s4
   18f8c:	00148493          	add	s1,s1,1
   18f90:	00070c9b          	sext.w	s9,a4
   18f94:	fcf6fee3          	bgeu	a3,a5,18f70 <_svfprintf_r+0x194>
   18f98:	fe0c879b          	addw	a5,s9,-32
   18f9c:	0007871b          	sext.w	a4,a5
   18fa0:	faebf8e3          	bgeu	s7,a4,18f50 <_svfprintf_r+0x174>
   18fa4:	140c8a63          	beqz	s9,190f8 <_svfprintf_r+0x31c>
   18fa8:	11910c23          	sb	s9,280(sp)
   18fac:	0c0107a3          	sb	zero,207(sp)
   18fb0:	00100c13          	li	s8,1
   18fb4:	00100d13          	li	s10,1
   18fb8:	11810b13          	add	s6,sp,280
   18fbc:	00013c23          	sd	zero,24(sp)
   18fc0:	00000313          	li	t1,0
   18fc4:	04013423          	sd	zero,72(sp)
   18fc8:	04013023          	sd	zero,64(sp)
   18fcc:	02013823          	sd	zero,48(sp)
   18fd0:	00297b93          	and	s7,s2,2
   18fd4:	000b8463          	beqz	s7,18fdc <_svfprintf_r+0x200>
   18fd8:	002c0c1b          	addw	s8,s8,2
   18fdc:	08497a93          	and	s5,s2,132
   18fe0:	000a9663          	bnez	s5,18fec <_svfprintf_r+0x210>
   18fe4:	418a073b          	subw	a4,s4,s8
   18fe8:	30e042e3          	bgtz	a4,19aec <_svfprintf_r+0xd10>
   18fec:	0cf14703          	lbu	a4,207(sp)
   18ff0:	11013d83          	ld	s11,272(sp)
   18ff4:	02070c63          	beqz	a4,1902c <_svfprintf_r+0x250>
   18ff8:	10812603          	lw	a2,264(sp)
   18ffc:	0cf10593          	add	a1,sp,207
   19000:	00b43023          	sd	a1,0(s0)
   19004:	0016061b          	addw	a2,a2,1
   19008:	00100593          	li	a1,1
   1900c:	001d8d93          	add	s11,s11,1
   19010:	00b43423          	sd	a1,8(s0)
   19014:	10c12423          	sw	a2,264(sp)
   19018:	0006059b          	sext.w	a1,a2
   1901c:	11b13823          	sd	s11,272(sp)
   19020:	00700613          	li	a2,7
   19024:	01040413          	add	s0,s0,16
   19028:	24b64c63          	blt	a2,a1,19280 <_svfprintf_r+0x4a4>
   1902c:	020b8c63          	beqz	s7,19064 <_svfprintf_r+0x288>
   19030:	10812603          	lw	a2,264(sp)
   19034:	00200593          	li	a1,2
   19038:	002d8d93          	add	s11,s11,2
   1903c:	0016061b          	addw	a2,a2,1
   19040:	0d010793          	add	a5,sp,208
   19044:	00b43423          	sd	a1,8(s0)
   19048:	00f43023          	sd	a5,0(s0)
   1904c:	0006059b          	sext.w	a1,a2
   19050:	10c12423          	sw	a2,264(sp)
   19054:	11b13823          	sd	s11,272(sp)
   19058:	00700613          	li	a2,7
   1905c:	01040413          	add	s0,s0,16
   19060:	38b642e3          	blt	a2,a1,19be4 <_svfprintf_r+0xe08>
   19064:	08000613          	li	a2,128
   19068:	08ca8ce3          	beq	s5,a2,19900 <_svfprintf_r+0xb24>
   1906c:	41a30bbb          	subw	s7,t1,s10
   19070:	17704ce3          	bgtz	s7,199e8 <_svfprintf_r+0xc0c>
   19074:	10097613          	and	a2,s2,256
   19078:	6c061463          	bnez	a2,19740 <_svfprintf_r+0x964>
   1907c:	10812603          	lw	a2,264(sp)
   19080:	01bd0733          	add	a4,s10,s11
   19084:	01643023          	sd	s6,0(s0)
   19088:	0016069b          	addw	a3,a2,1
   1908c:	01a43423          	sd	s10,8(s0)
   19090:	10e13823          	sd	a4,272(sp)
   19094:	10d12423          	sw	a3,264(sp)
   19098:	00700793          	li	a5,7
   1909c:	2ed7c663          	blt	a5,a3,19388 <_svfprintf_r+0x5ac>
   190a0:	01040413          	add	s0,s0,16
   190a4:	00497913          	and	s2,s2,4
   190a8:	00090663          	beqz	s2,190b4 <_svfprintf_r+0x2d8>
   190ac:	418a093b          	subw	s2,s4,s8
   190b0:	35204ee3          	bgtz	s2,19c0c <_svfprintf_r+0xe30>
   190b4:	000a0793          	mv	a5,s4
   190b8:	018a5463          	bge	s4,s8,190c0 <_svfprintf_r+0x2e4>
   190bc:	000c0793          	mv	a5,s8
   190c0:	01013683          	ld	a3,16(sp)
   190c4:	00d787bb          	addw	a5,a5,a3
   190c8:	00f13823          	sd	a5,16(sp)
   190cc:	1e071ce3          	bnez	a4,19ac4 <_svfprintf_r+0xce8>
   190d0:	01813783          	ld	a5,24(sp)
   190d4:	10012423          	sw	zero,264(sp)
   190d8:	00078863          	beqz	a5,190e8 <_svfprintf_r+0x30c>
   190dc:	01813583          	ld	a1,24(sp)
   190e0:	00098513          	mv	a0,s3
   190e4:	cfcfa0ef          	jal	135e0 <_free_r>
   190e8:	18010413          	add	s0,sp,384
   190ec:	00048b13          	mv	s6,s1
   190f0:	000b4703          	lbu	a4,0(s6)
   190f4:	dc0714e3          	bnez	a4,18ebc <_svfprintf_r+0xe0>
   190f8:	11013783          	ld	a5,272(sp)
   190fc:	00078463          	beqz	a5,19104 <_svfprintf_r+0x328>
   19100:	2490106f          	j	1ab48 <_svfprintf_r+0x1d6c>
   19104:	00013783          	ld	a5,0(sp)
   19108:	0107d783          	lhu	a5,16(a5)
   1910c:	0407f793          	and	a5,a5,64
   19110:	00078463          	beqz	a5,19118 <_svfprintf_r+0x33c>
   19114:	0bc0206f          	j	1b1d0 <_svfprintf_r+0x23f4>
   19118:	26813083          	ld	ra,616(sp)
   1911c:	26013403          	ld	s0,608(sp)
   19120:	01013503          	ld	a0,16(sp)
   19124:	25813483          	ld	s1,600(sp)
   19128:	25013903          	ld	s2,592(sp)
   1912c:	24813983          	ld	s3,584(sp)
   19130:	24013a03          	ld	s4,576(sp)
   19134:	23813a83          	ld	s5,568(sp)
   19138:	23013b03          	ld	s6,560(sp)
   1913c:	22813b83          	ld	s7,552(sp)
   19140:	22013c03          	ld	s8,544(sp)
   19144:	21813c83          	ld	s9,536(sp)
   19148:	21013d03          	ld	s10,528(sp)
   1914c:	20813d83          	ld	s11,520(sp)
   19150:	27010113          	add	sp,sp,624
   19154:	00008067          	ret
   19158:	01096913          	or	s2,s2,16
   1915c:	0004ce03          	lbu	t3,0(s1)
   19160:	0009091b          	sext.w	s2,s2
   19164:	dd9ff06f          	j	18f3c <_svfprintf_r+0x160>
   19168:	4164893b          	subw	s2,s1,s6
   1916c:	d60918e3          	bnez	s2,18edc <_svfprintf_r+0x100>
   19170:	0004c703          	lbu	a4,0(s1)
   19174:	da5ff06f          	j	18f18 <_svfprintf_r+0x13c>
   19178:	00013583          	ld	a1,0(sp)
   1917c:	10010613          	add	a2,sp,256
   19180:	00098513          	mv	a0,s3
   19184:	581040ef          	jal	1df04 <__ssprint_r>
   19188:	f6051ee3          	bnez	a0,19104 <_svfprintf_r+0x328>
   1918c:	18010413          	add	s0,sp,384
   19190:	d79ff06f          	j	18f08 <_svfprintf_r+0x12c>
   19194:	00897713          	and	a4,s2,8
   19198:	000a8313          	mv	t1,s5
   1919c:	6e0714e3          	bnez	a4,1a084 <_svfprintf_r+0x12a8>
   191a0:	02013783          	ld	a5,32(sp)
   191a4:	01513c23          	sd	s5,24(sp)
   191a8:	0007b503          	ld	a0,0(a5)
   191ac:	00878a93          	add	s5,a5,8
   191b0:	03513023          	sd	s5,32(sp)
   191b4:	6d8080ef          	jal	2188c <__extenddftf2>
   191b8:	01813303          	ld	t1,24(sp)
   191bc:	00050713          	mv	a4,a0
   191c0:	0f010513          	add	a0,sp,240
   191c4:	00613c23          	sd	t1,24(sp)
   191c8:	0ee13823          	sd	a4,240(sp)
   191cc:	0eb13c23          	sd	a1,248(sp)
   191d0:	ce8fd0ef          	jal	166b8 <_ldcheck>
   191d4:	0ca12c23          	sw	a0,216(sp)
   191d8:	00200713          	li	a4,2
   191dc:	01813303          	ld	t1,24(sp)
   191e0:	00e51463          	bne	a0,a4,191e8 <_svfprintf_r+0x40c>
   191e4:	5040106f          	j	1a6e8 <_svfprintf_r+0x190c>
   191e8:	00100713          	li	a4,1
   191ec:	00e51463          	bne	a0,a4,191f4 <_svfprintf_r+0x418>
   191f0:	6900106f          	j	1a880 <_svfprintf_r+0x1aa4>
   191f4:	06100713          	li	a4,97
   191f8:	00ec9463          	bne	s9,a4,19200 <_svfprintf_r+0x424>
   191fc:	4950106f          	j	1ae90 <_svfprintf_r+0x20b4>
   19200:	04100713          	li	a4,65
   19204:	00ec9463          	bne	s9,a4,1920c <_svfprintf_r+0x430>
   19208:	6810106f          	j	1b088 <_svfprintf_r+0x22ac>
   1920c:	fff00713          	li	a4,-1
   19210:	00e31463          	bne	t1,a4,19218 <_svfprintf_r+0x43c>
   19214:	1890106f          	j	1ab9c <_svfprintf_r+0x1dc0>
   19218:	fdfcf713          	and	a4,s9,-33
   1921c:	04700693          	li	a3,71
   19220:	00d71463          	bne	a4,a3,19228 <_svfprintf_r+0x44c>
   19224:	7b90106f          	j	1b1dc <_svfprintf_r+0x2400>
   19228:	10096713          	or	a4,s2,256
   1922c:	0f813c03          	ld	s8,248(sp)
   19230:	0007079b          	sext.w	a5,a4
   19234:	08f13823          	sd	a5,144(sp)
   19238:	05213023          	sd	s2,64(sp)
   1923c:	0f013b83          	ld	s7,240(sp)
   19240:	000c5463          	bgez	s8,19248 <_svfprintf_r+0x46c>
   19244:	5010106f          	j	1af44 <_svfprintf_r+0x2168>
   19248:	08013c23          	sd	zero,152(sp)
   1924c:	00013c23          	sd	zero,24(sp)
   19250:	fbfc871b          	addw	a4,s9,-65
   19254:	0007061b          	sext.w	a2,a4
   19258:	02500693          	li	a3,37
   1925c:	00c6f463          	bgeu	a3,a2,19264 <_svfprintf_r+0x488>
   19260:	7000106f          	j	1a960 <_svfprintf_r+0x1b84>
   19264:	02071693          	sll	a3,a4,0x20
   19268:	01e6d713          	srl	a4,a3,0x1e
   1926c:	000226b7          	lui	a3,0x22
   19270:	58468693          	add	a3,a3,1412 # 22584 <__mprec_tens+0x234>
   19274:	00d70733          	add	a4,a4,a3
   19278:	00072703          	lw	a4,0(a4)
   1927c:	00070067          	jr	a4
   19280:	00013583          	ld	a1,0(sp)
   19284:	10010613          	add	a2,sp,256
   19288:	00098513          	mv	a0,s3
   1928c:	08613823          	sd	t1,144(sp)
   19290:	475040ef          	jal	1df04 <__ssprint_r>
   19294:	040512e3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19298:	11013d83          	ld	s11,272(sp)
   1929c:	09013303          	ld	t1,144(sp)
   192a0:	18010413          	add	s0,sp,384
   192a4:	d89ff06f          	j	1902c <_svfprintf_r+0x250>
   192a8:	03813783          	ld	a5,56(sp)
   192ac:	00100693          	li	a3,1
   192b0:	01040c93          	add	s9,s0,16
   192b4:	38f6dae3          	bge	a3,a5,19e48 <_svfprintf_r+0x106c>
   192b8:	10812603          	lw	a2,264(sp)
   192bc:	00100693          	li	a3,1
   192c0:	001d8713          	add	a4,s11,1
   192c4:	0016061b          	addw	a2,a2,1
   192c8:	00d43423          	sd	a3,8(s0)
   192cc:	10c12423          	sw	a2,264(sp)
   192d0:	0006069b          	sext.w	a3,a2
   192d4:	01643023          	sd	s6,0(s0)
   192d8:	10e13823          	sd	a4,272(sp)
   192dc:	00700613          	li	a2,7
   192e0:	4ed64ae3          	blt	a2,a3,19fd4 <_svfprintf_r+0x11f8>
   192e4:	05813783          	ld	a5,88(sp)
   192e8:	0016841b          	addw	s0,a3,1
   192ec:	10812423          	sw	s0,264(sp)
   192f0:	00e78d33          	add	s10,a5,a4
   192f4:	06013703          	ld	a4,96(sp)
   192f8:	00fcb423          	sd	a5,8(s9)
   192fc:	11a13823          	sd	s10,272(sp)
   19300:	00ecb023          	sd	a4,0(s9)
   19304:	00700713          	li	a4,7
   19308:	010c8c93          	add	s9,s9,16
   1930c:	4e8746e3          	blt	a4,s0,19ff8 <_svfprintf_r+0x121c>
   19310:	0f013503          	ld	a0,240(sp)
   19314:	0f813583          	ld	a1,248(sp)
   19318:	00000613          	li	a2,0
   1931c:	00000693          	li	a3,0
   19320:	1c0070ef          	jal	204e0 <__eqtf2>
   19324:	03813783          	ld	a5,56(sp)
   19328:	fff78a9b          	addw	s5,a5,-1
   1932c:	360508e3          	beqz	a0,19e9c <_svfprintf_r+0x10c0>
   19330:	001b0793          	add	a5,s6,1
   19334:	0014041b          	addw	s0,s0,1
   19338:	015d0d33          	add	s10,s10,s5
   1933c:	00fcb023          	sd	a5,0(s9)
   19340:	015cb423          	sd	s5,8(s9)
   19344:	11a13823          	sd	s10,272(sp)
   19348:	10812423          	sw	s0,264(sp)
   1934c:	00700793          	li	a5,7
   19350:	3287c4e3          	blt	a5,s0,19e78 <_svfprintf_r+0x109c>
   19354:	010c8c93          	add	s9,s9,16
   19358:	07013683          	ld	a3,112(sp)
   1935c:	0014041b          	addw	s0,s0,1
   19360:	0e010793          	add	a5,sp,224
   19364:	01a68733          	add	a4,a3,s10
   19368:	00fcb023          	sd	a5,0(s9)
   1936c:	00dcb423          	sd	a3,8(s9)
   19370:	10812423          	sw	s0,264(sp)
   19374:	0004069b          	sext.w	a3,s0
   19378:	10e13823          	sd	a4,272(sp)
   1937c:	00700793          	li	a5,7
   19380:	010c8413          	add	s0,s9,16
   19384:	d2d7d0e3          	bge	a5,a3,190a4 <_svfprintf_r+0x2c8>
   19388:	00013583          	ld	a1,0(sp)
   1938c:	10010613          	add	a2,sp,256
   19390:	00098513          	mv	a0,s3
   19394:	371040ef          	jal	1df04 <__ssprint_r>
   19398:	74051063          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   1939c:	11013703          	ld	a4,272(sp)
   193a0:	18010413          	add	s0,sp,384
   193a4:	d01ff06f          	j	190a4 <_svfprintf_r+0x2c8>
   193a8:	02013703          	ld	a4,32(sp)
   193ac:	0c0107a3          	sb	zero,207(sp)
   193b0:	00100c13          	li	s8,1
   193b4:	00072783          	lw	a5,0(a4)
   193b8:	00870713          	add	a4,a4,8
   193bc:	02e13023          	sd	a4,32(sp)
   193c0:	10f10c23          	sb	a5,280(sp)
   193c4:	00100d13          	li	s10,1
   193c8:	11810b13          	add	s6,sp,280
   193cc:	bf1ff06f          	j	18fbc <_svfprintf_r+0x1e0>
   193d0:	02013783          	ld	a5,32(sp)
   193d4:	0c0107a3          	sb	zero,207(sp)
   193d8:	000a8313          	mv	t1,s5
   193dc:	0007bb03          	ld	s6,0(a5)
   193e0:	00878a93          	add	s5,a5,8
   193e4:	000b1463          	bnez	s6,193ec <_svfprintf_r+0x610>
   193e8:	35c0106f          	j	1a744 <_svfprintf_r+0x1968>
   193ec:	fff00713          	li	a4,-1
   193f0:	66e304e3          	beq	t1,a4,1a258 <_svfprintf_r+0x147c>
   193f4:	00030613          	mv	a2,t1
   193f8:	00000593          	li	a1,0
   193fc:	000b0513          	mv	a0,s6
   19400:	02613023          	sd	t1,32(sp)
   19404:	ee9fd0ef          	jal	172ec <memchr>
   19408:	00a13c23          	sd	a0,24(sp)
   1940c:	02013303          	ld	t1,32(sp)
   19410:	00051463          	bnez	a0,19418 <_svfprintf_r+0x63c>
   19414:	3d10106f          	j	1afe4 <_svfprintf_r+0x2208>
   19418:	01813783          	ld	a5,24(sp)
   1941c:	41678d3b          	subw	s10,a5,s6
   19420:	0cf14703          	lbu	a4,207(sp)
   19424:	fffd4813          	not	a6,s10
   19428:	43f85813          	sra	a6,a6,0x3f
   1942c:	03513023          	sd	s5,32(sp)
   19430:	00013c23          	sd	zero,24(sp)
   19434:	04013423          	sd	zero,72(sp)
   19438:	04013023          	sd	zero,64(sp)
   1943c:	02013823          	sd	zero,48(sp)
   19440:	01a87c33          	and	s8,a6,s10
   19444:	00000313          	li	t1,0
   19448:	b80704e3          	beqz	a4,18fd0 <_svfprintf_r+0x1f4>
   1944c:	001c0c1b          	addw	s8,s8,1
   19450:	b81ff06f          	j	18fd0 <_svfprintf_r+0x1f4>
   19454:	02013783          	ld	a5,32(sp)
   19458:	0007aa03          	lw	s4,0(a5)
   1945c:	00878793          	add	a5,a5,8
   19460:	3c0a5ae3          	bgez	s4,1a034 <_svfprintf_r+0x1258>
   19464:	41400a3b          	negw	s4,s4
   19468:	02f13023          	sd	a5,32(sp)
   1946c:	00496913          	or	s2,s2,4
   19470:	0004ce03          	lbu	t3,0(s1)
   19474:	0009091b          	sext.w	s2,s2
   19478:	ac5ff06f          	j	18f3c <_svfprintf_r+0x160>
   1947c:	02b00793          	li	a5,43
   19480:	0004ce03          	lbu	t3,0(s1)
   19484:	0cf107a3          	sb	a5,207(sp)
   19488:	ab5ff06f          	j	18f3c <_svfprintf_r+0x160>
   1948c:	08096913          	or	s2,s2,128
   19490:	0004ce03          	lbu	t3,0(s1)
   19494:	0009091b          	sext.w	s2,s2
   19498:	aa5ff06f          	j	18f3c <_svfprintf_r+0x160>
   1949c:	0004cc83          	lbu	s9,0(s1)
   194a0:	02a00693          	li	a3,42
   194a4:	00148793          	add	a5,s1,1
   194a8:	00dc9463          	bne	s9,a3,194b0 <_svfprintf_r+0x6d4>
   194ac:	6ad0106f          	j	1b358 <_svfprintf_r+0x257c>
   194b0:	fd0c871b          	addw	a4,s9,-48
   194b4:	00900613          	li	a2,9
   194b8:	00078493          	mv	s1,a5
   194bc:	00000a93          	li	s5,0
   194c0:	00900693          	li	a3,9
   194c4:	a8e660e3          	bltu	a2,a4,18f44 <_svfprintf_r+0x168>
   194c8:	0004cc83          	lbu	s9,0(s1)
   194cc:	002a979b          	sllw	a5,s5,0x2
   194d0:	0157833b          	addw	t1,a5,s5
   194d4:	0013131b          	sllw	t1,t1,0x1
   194d8:	00e30abb          	addw	s5,t1,a4
   194dc:	fd0c871b          	addw	a4,s9,-48
   194e0:	00148493          	add	s1,s1,1
   194e4:	fee6f2e3          	bgeu	a3,a4,194c8 <_svfprintf_r+0x6ec>
   194e8:	a5dff06f          	j	18f44 <_svfprintf_r+0x168>
   194ec:	00098513          	mv	a0,s3
   194f0:	a38fd0ef          	jal	16728 <_localeconv_r>
   194f4:	00853783          	ld	a5,8(a0)
   194f8:	00078513          	mv	a0,a5
   194fc:	08f13423          	sd	a5,136(sp)
   19500:	f70ff0ef          	jal	18c70 <strlen>
   19504:	00050793          	mv	a5,a0
   19508:	00098513          	mv	a0,s3
   1950c:	00078c13          	mv	s8,a5
   19510:	08f13023          	sd	a5,128(sp)
   19514:	a14fd0ef          	jal	16728 <_localeconv_r>
   19518:	01053703          	ld	a4,16(a0)
   1951c:	0004ce03          	lbu	t3,0(s1)
   19520:	06e13c23          	sd	a4,120(sp)
   19524:	a00c0ce3          	beqz	s8,18f3c <_svfprintf_r+0x160>
   19528:	a0070ae3          	beqz	a4,18f3c <_svfprintf_r+0x160>
   1952c:	00074783          	lbu	a5,0(a4)
   19530:	a00786e3          	beqz	a5,18f3c <_svfprintf_r+0x160>
   19534:	40096913          	or	s2,s2,1024
   19538:	0009091b          	sext.w	s2,s2
   1953c:	a01ff06f          	j	18f3c <_svfprintf_r+0x160>
   19540:	00196913          	or	s2,s2,1
   19544:	0004ce03          	lbu	t3,0(s1)
   19548:	0009091b          	sext.w	s2,s2
   1954c:	9f1ff06f          	j	18f3c <_svfprintf_r+0x160>
   19550:	0cf14783          	lbu	a5,207(sp)
   19554:	0004ce03          	lbu	t3,0(s1)
   19558:	9e0792e3          	bnez	a5,18f3c <_svfprintf_r+0x160>
   1955c:	02000793          	li	a5,32
   19560:	0cf107a3          	sb	a5,207(sp)
   19564:	9d9ff06f          	j	18f3c <_svfprintf_r+0x160>
   19568:	01096d93          	or	s11,s2,16
   1956c:	000a8313          	mv	t1,s5
   19570:	000d8d9b          	sext.w	s11,s11
   19574:	02013683          	ld	a3,32(sp)
   19578:	020df793          	and	a5,s11,32
   1957c:	00868713          	add	a4,a3,8
   19580:	20078ee3          	beqz	a5,19f9c <_svfprintf_r+0x11c0>
   19584:	0006bd03          	ld	s10,0(a3)
   19588:	00100793          	li	a5,1
   1958c:	02e13023          	sd	a4,32(sp)
   19590:	00000713          	li	a4,0
   19594:	0ce107a3          	sb	a4,207(sp)
   19598:	fff00713          	li	a4,-1
   1959c:	2ae30e63          	beq	t1,a4,19858 <_svfprintf_r+0xa7c>
   195a0:	f7fdf913          	and	s2,s11,-129
   195a4:	0009091b          	sext.w	s2,s2
   195a8:	2a0d1663          	bnez	s10,19854 <_svfprintf_r+0xa78>
   195ac:	30031463          	bnez	t1,198b4 <_svfprintf_r+0xad8>
   195b0:	20079ce3          	bnez	a5,19fc8 <_svfprintf_r+0x11ec>
   195b4:	001dfd13          	and	s10,s11,1
   195b8:	17c10b13          	add	s6,sp,380
   195bc:	280d12e3          	bnez	s10,1a040 <_svfprintf_r+0x1264>
   195c0:	0cf14703          	lbu	a4,207(sp)
   195c4:	00030813          	mv	a6,t1
   195c8:	01a35463          	bge	t1,s10,195d0 <_svfprintf_r+0x7f4>
   195cc:	000d0813          	mv	a6,s10
   195d0:	00013c23          	sd	zero,24(sp)
   195d4:	04013423          	sd	zero,72(sp)
   195d8:	04013023          	sd	zero,64(sp)
   195dc:	02013823          	sd	zero,48(sp)
   195e0:	00080c1b          	sext.w	s8,a6
   195e4:	e60714e3          	bnez	a4,1944c <_svfprintf_r+0x670>
   195e8:	9e9ff06f          	j	18fd0 <_svfprintf_r+0x1f4>
   195ec:	00896913          	or	s2,s2,8
   195f0:	0004ce03          	lbu	t3,0(s1)
   195f4:	0009091b          	sext.w	s2,s2
   195f8:	945ff06f          	j	18f3c <_svfprintf_r+0x160>
   195fc:	01096913          	or	s2,s2,16
   19600:	000a8313          	mv	t1,s5
   19604:	0009091b          	sext.w	s2,s2
   19608:	02013683          	ld	a3,32(sp)
   1960c:	02097793          	and	a5,s2,32
   19610:	00868713          	add	a4,a3,8
   19614:	140784e3          	beqz	a5,19f5c <_svfprintf_r+0x1180>
   19618:	0006b783          	ld	a5,0(a3)
   1961c:	00078d13          	mv	s10,a5
   19620:	1607c2e3          	bltz	a5,19f84 <_svfprintf_r+0x11a8>
   19624:	fff00793          	li	a5,-1
   19628:	00f31463          	bne	t1,a5,19630 <_svfprintf_r+0x854>
   1962c:	0100106f          	j	1a63c <_svfprintf_r+0x1860>
   19630:	f7f97d93          	and	s11,s2,-129
   19634:	02e13023          	sd	a4,32(sp)
   19638:	000d8d9b          	sext.w	s11,s11
   1963c:	280d0ee3          	beqz	s10,1a0d8 <_svfprintf_r+0x12fc>
   19640:	00900793          	li	a5,9
   19644:	63a7e0e3          	bltu	a5,s10,1a464 <_svfprintf_r+0x1688>
   19648:	030d0d1b          	addw	s10,s10,48
   1964c:	17a10da3          	sb	s10,379(sp)
   19650:	000d8913          	mv	s2,s11
   19654:	00100d13          	li	s10,1
   19658:	17b10b13          	add	s6,sp,379
   1965c:	f65ff06f          	j	195c0 <_svfprintf_r+0x7e4>
   19660:	01096913          	or	s2,s2,16
   19664:	000a8313          	mv	t1,s5
   19668:	0009091b          	sext.w	s2,s2
   1966c:	02013683          	ld	a3,32(sp)
   19670:	02097793          	and	a5,s2,32
   19674:	00868713          	add	a4,a3,8
   19678:	0c0780e3          	beqz	a5,19f38 <_svfprintf_r+0x115c>
   1967c:	0006bd03          	ld	s10,0(a3)
   19680:	bff97d93          	and	s11,s2,-1025
   19684:	000d8d9b          	sext.w	s11,s11
   19688:	02e13023          	sd	a4,32(sp)
   1968c:	00000793          	li	a5,0
   19690:	f01ff06f          	j	19590 <_svfprintf_r+0x7b4>
   19694:	0004ce03          	lbu	t3,0(s1)
   19698:	06800793          	li	a5,104
   1969c:	2afe08e3          	beq	t3,a5,1a14c <_svfprintf_r+0x1370>
   196a0:	04096913          	or	s2,s2,64
   196a4:	0009091b          	sext.w	s2,s2
   196a8:	895ff06f          	j	18f3c <_svfprintf_r+0x160>
   196ac:	02096913          	or	s2,s2,32
   196b0:	0004ce03          	lbu	t3,0(s1)
   196b4:	0009091b          	sext.w	s2,s2
   196b8:	885ff06f          	j	18f3c <_svfprintf_r+0x160>
   196bc:	02013703          	ld	a4,32(sp)
   196c0:	ffff87b7          	lui	a5,0xffff8
   196c4:	8307c793          	xor	a5,a5,-2000
   196c8:	0cf11823          	sh	a5,208(sp)
   196cc:	00870793          	add	a5,a4,8
   196d0:	02f13023          	sd	a5,32(sp)
   196d4:	000227b7          	lui	a5,0x22
   196d8:	d1078793          	add	a5,a5,-752 # 21d10 <__clzdi2+0xb0>
   196dc:	00296d93          	or	s11,s2,2
   196e0:	06f13423          	sd	a5,104(sp)
   196e4:	00073d03          	ld	s10,0(a4)
   196e8:	000a8313          	mv	t1,s5
   196ec:	000d8d9b          	sext.w	s11,s11
   196f0:	00200793          	li	a5,2
   196f4:	07800c93          	li	s9,120
   196f8:	e99ff06f          	j	19590 <_svfprintf_r+0x7b4>
   196fc:	02013703          	ld	a4,32(sp)
   19700:	02097793          	and	a5,s2,32
   19704:	00073703          	ld	a4,0(a4)
   19708:	140784e3          	beqz	a5,1a050 <_svfprintf_r+0x1274>
   1970c:	01013783          	ld	a5,16(sp)
   19710:	00f73023          	sd	a5,0(a4)
   19714:	02013783          	ld	a5,32(sp)
   19718:	00048b13          	mv	s6,s1
   1971c:	00878793          	add	a5,a5,8
   19720:	02f13023          	sd	a5,32(sp)
   19724:	9cdff06f          	j	190f0 <_svfprintf_r+0x314>
   19728:	0004ce03          	lbu	t3,0(s1)
   1972c:	06c00793          	li	a5,108
   19730:	22fe08e3          	beq	t3,a5,1a160 <_svfprintf_r+0x1384>
   19734:	01096913          	or	s2,s2,16
   19738:	0009091b          	sext.w	s2,s2
   1973c:	801ff06f          	j	18f3c <_svfprintf_r+0x160>
   19740:	06500693          	li	a3,101
   19744:	b796d2e3          	bge	a3,s9,192a8 <_svfprintf_r+0x4cc>
   19748:	0f013503          	ld	a0,240(sp)
   1974c:	0f813583          	ld	a1,248(sp)
   19750:	00000613          	li	a2,0
   19754:	00000693          	li	a3,0
   19758:	589060ef          	jal	204e0 <__eqtf2>
   1975c:	56051063          	bnez	a0,19cbc <_svfprintf_r+0xee0>
   19760:	10812783          	lw	a5,264(sp)
   19764:	000226b7          	lui	a3,0x22
   19768:	d3068693          	add	a3,a3,-720 # 21d30 <__clzdi2+0xd0>
   1976c:	0017879b          	addw	a5,a5,1
   19770:	00d43023          	sd	a3,0(s0)
   19774:	001d8d93          	add	s11,s11,1
   19778:	00100693          	li	a3,1
   1977c:	00d43423          	sd	a3,8(s0)
   19780:	10f12423          	sw	a5,264(sp)
   19784:	0007869b          	sext.w	a3,a5
   19788:	11b13823          	sd	s11,272(sp)
   1978c:	00700793          	li	a5,7
   19790:	01040413          	add	s0,s0,16
   19794:	6ad7cae3          	blt	a5,a3,1a648 <_svfprintf_r+0x186c>
   19798:	0d812783          	lw	a5,216(sp)
   1979c:	03813703          	ld	a4,56(sp)
   197a0:	06e7dee3          	bge	a5,a4,1a01c <_svfprintf_r+0x1240>
   197a4:	05813683          	ld	a3,88(sp)
   197a8:	10812783          	lw	a5,264(sp)
   197ac:	06013603          	ld	a2,96(sp)
   197b0:	01b68733          	add	a4,a3,s11
   197b4:	0017879b          	addw	a5,a5,1
   197b8:	00d43423          	sd	a3,8(s0)
   197bc:	00c43023          	sd	a2,0(s0)
   197c0:	0007869b          	sext.w	a3,a5
   197c4:	10f12423          	sw	a5,264(sp)
   197c8:	10e13823          	sd	a4,272(sp)
   197cc:	00700793          	li	a5,7
   197d0:	01040413          	add	s0,s0,16
   197d4:	1ad7cee3          	blt	a5,a3,1a190 <_svfprintf_r+0x13b4>
   197d8:	03813783          	ld	a5,56(sp)
   197dc:	fff78c9b          	addw	s9,a5,-1
   197e0:	8d9052e3          	blez	s9,190a4 <_svfprintf_r+0x2c8>
   197e4:	00022f37          	lui	t5,0x22
   197e8:	01000693          	li	a3,16
   197ec:	10812783          	lw	a5,264(sp)
   197f0:	620f0d93          	add	s11,t5,1568 # 22620 <zeroes.0>
   197f4:	6796dae3          	bge	a3,s9,1a668 <_svfprintf_r+0x188c>
   197f8:	00013b03          	ld	s6,0(sp)
   197fc:	01000d13          	li	s10,16
   19800:	00700a93          	li	s5,7
   19804:	00c0006f          	j	19810 <_svfprintf_r+0xa34>
   19808:	ff0c8c9b          	addw	s9,s9,-16
   1980c:	659d5ee3          	bge	s10,s9,1a668 <_svfprintf_r+0x188c>
   19810:	0017879b          	addw	a5,a5,1
   19814:	01070713          	add	a4,a4,16
   19818:	01b43023          	sd	s11,0(s0)
   1981c:	01a43423          	sd	s10,8(s0)
   19820:	10e13823          	sd	a4,272(sp)
   19824:	10f12423          	sw	a5,264(sp)
   19828:	01040413          	add	s0,s0,16
   1982c:	fcfadee3          	bge	s5,a5,19808 <_svfprintf_r+0xa2c>
   19830:	10010613          	add	a2,sp,256
   19834:	000b0593          	mv	a1,s6
   19838:	00098513          	mv	a0,s3
   1983c:	6c8040ef          	jal	1df04 <__ssprint_r>
   19840:	28051c63          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19844:	11013703          	ld	a4,272(sp)
   19848:	10812783          	lw	a5,264(sp)
   1984c:	18010413          	add	s0,sp,384
   19850:	fb9ff06f          	j	19808 <_svfprintf_r+0xa2c>
   19854:	00090d93          	mv	s11,s2
   19858:	00100713          	li	a4,1
   1985c:	dee782e3          	beq	a5,a4,19640 <_svfprintf_r+0x864>
   19860:	00200713          	li	a4,2
   19864:	06e78463          	beq	a5,a4,198cc <_svfprintf_r+0xaf0>
   19868:	17c10a93          	add	s5,sp,380
   1986c:	000a8b13          	mv	s6,s5
   19870:	007d7713          	and	a4,s10,7
   19874:	03070713          	add	a4,a4,48
   19878:	feeb0fa3          	sb	a4,-1(s6)
   1987c:	003d5d13          	srl	s10,s10,0x3
   19880:	000b0613          	mv	a2,s6
   19884:	fffb0b13          	add	s6,s6,-1
   19888:	fe0d14e3          	bnez	s10,19870 <_svfprintf_r+0xa94>
   1988c:	001df593          	and	a1,s11,1
   19890:	06058263          	beqz	a1,198f4 <_svfprintf_r+0xb18>
   19894:	03000593          	li	a1,48
   19898:	04b70e63          	beq	a4,a1,198f4 <_svfprintf_r+0xb18>
   1989c:	ffe60613          	add	a2,a2,-2
   198a0:	febb0fa3          	sb	a1,-1(s6)
   198a4:	40ca8d3b          	subw	s10,s5,a2
   198a8:	000d8913          	mv	s2,s11
   198ac:	00060b13          	mv	s6,a2
   198b0:	d11ff06f          	j	195c0 <_svfprintf_r+0x7e4>
   198b4:	00100713          	li	a4,1
   198b8:	00e79463          	bne	a5,a4,198c0 <_svfprintf_r+0xae4>
   198bc:	7d40106f          	j	1b090 <_svfprintf_r+0x22b4>
   198c0:	00200713          	li	a4,2
   198c4:	00090d93          	mv	s11,s2
   198c8:	fae790e3          	bne	a5,a4,19868 <_svfprintf_r+0xa8c>
   198cc:	06813703          	ld	a4,104(sp)
   198d0:	17c10a93          	add	s5,sp,380
   198d4:	000a8b13          	mv	s6,s5
   198d8:	00fd7793          	and	a5,s10,15
   198dc:	00f707b3          	add	a5,a4,a5
   198e0:	0007c783          	lbu	a5,0(a5)
   198e4:	004d5d13          	srl	s10,s10,0x4
   198e8:	fffb0b13          	add	s6,s6,-1
   198ec:	00fb0023          	sb	a5,0(s6)
   198f0:	fe0d14e3          	bnez	s10,198d8 <_svfprintf_r+0xafc>
   198f4:	416a8d3b          	subw	s10,s5,s6
   198f8:	000d8913          	mv	s2,s11
   198fc:	cc5ff06f          	j	195c0 <_svfprintf_r+0x7e4>
   19900:	418a0abb          	subw	s5,s4,s8
   19904:	f7505463          	blez	s5,1906c <_svfprintf_r+0x290>
   19908:	00022f37          	lui	t5,0x22
   1990c:	01000593          	li	a1,16
   19910:	000d8713          	mv	a4,s11
   19914:	10812603          	lw	a2,264(sp)
   19918:	620f0d93          	add	s11,t5,1568 # 22620 <zeroes.0>
   1991c:	0955de63          	bge	a1,s5,199b8 <_svfprintf_r+0xbdc>
   19920:	08913823          	sd	s1,144(sp)
   19924:	01000f93          	li	t6,16
   19928:	000a8493          	mv	s1,s5
   1992c:	00700b93          	li	s7,7
   19930:	000a0a93          	mv	s5,s4
   19934:	00090a13          	mv	s4,s2
   19938:	000d8913          	mv	s2,s11
   1993c:	000b0d93          	mv	s11,s6
   19940:	00030b13          	mv	s6,t1
   19944:	00c0006f          	j	19950 <_svfprintf_r+0xb74>
   19948:	ff04849b          	addw	s1,s1,-16
   1994c:	049fd863          	bge	t6,s1,1999c <_svfprintf_r+0xbc0>
   19950:	0016061b          	addw	a2,a2,1
   19954:	01070713          	add	a4,a4,16
   19958:	01243023          	sd	s2,0(s0)
   1995c:	01f43423          	sd	t6,8(s0)
   19960:	10e13823          	sd	a4,272(sp)
   19964:	10c12423          	sw	a2,264(sp)
   19968:	01040413          	add	s0,s0,16
   1996c:	fccbdee3          	bge	s7,a2,19948 <_svfprintf_r+0xb6c>
   19970:	00013583          	ld	a1,0(sp)
   19974:	10010613          	add	a2,sp,256
   19978:	00098513          	mv	a0,s3
   1997c:	588040ef          	jal	1df04 <__ssprint_r>
   19980:	14051c63          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19984:	01000f93          	li	t6,16
   19988:	ff04849b          	addw	s1,s1,-16
   1998c:	11013703          	ld	a4,272(sp)
   19990:	10812603          	lw	a2,264(sp)
   19994:	18010413          	add	s0,sp,384
   19998:	fa9fcce3          	blt	t6,s1,19950 <_svfprintf_r+0xb74>
   1999c:	000b0313          	mv	t1,s6
   199a0:	000d8b13          	mv	s6,s11
   199a4:	00090d93          	mv	s11,s2
   199a8:	000a0913          	mv	s2,s4
   199ac:	000a8a13          	mv	s4,s5
   199b0:	00048a93          	mv	s5,s1
   199b4:	09013483          	ld	s1,144(sp)
   199b8:	0016059b          	addw	a1,a2,1
   199bc:	00ea8733          	add	a4,s5,a4
   199c0:	01b43023          	sd	s11,0(s0)
   199c4:	01543423          	sd	s5,8(s0)
   199c8:	10e13823          	sd	a4,272(sp)
   199cc:	10b12423          	sw	a1,264(sp)
   199d0:	00700613          	li	a2,7
   199d4:	4eb646e3          	blt	a2,a1,1a6c0 <_svfprintf_r+0x18e4>
   199d8:	41a30bbb          	subw	s7,t1,s10
   199dc:	01040413          	add	s0,s0,16
   199e0:	00070d93          	mv	s11,a4
   199e4:	e9705863          	blez	s7,19074 <_svfprintf_r+0x298>
   199e8:	00022f37          	lui	t5,0x22
   199ec:	01000593          	li	a1,16
   199f0:	000d8713          	mv	a4,s11
   199f4:	10812603          	lw	a2,264(sp)
   199f8:	620f0d93          	add	s11,t5,1568 # 22620 <zeroes.0>
   199fc:	0975de63          	bge	a1,s7,19a98 <_svfprintf_r+0xcbc>
   19a00:	000b0793          	mv	a5,s6
   19a04:	00813d83          	ld	s11,8(sp)
   19a08:	000a0b13          	mv	s6,s4
   19a0c:	01000893          	li	a7,16
   19a10:	00090a13          	mv	s4,s2
   19a14:	00700a93          	li	s5,7
   19a18:	00048913          	mv	s2,s1
   19a1c:	000b8493          	mv	s1,s7
   19a20:	00078b93          	mv	s7,a5
   19a24:	00c0006f          	j	19a30 <_svfprintf_r+0xc54>
   19a28:	ff04849b          	addw	s1,s1,-16
   19a2c:	0498da63          	bge	a7,s1,19a80 <_svfprintf_r+0xca4>
   19a30:	00813683          	ld	a3,8(sp)
   19a34:	0016061b          	addw	a2,a2,1
   19a38:	01070713          	add	a4,a4,16
   19a3c:	00d43023          	sd	a3,0(s0)
   19a40:	01143423          	sd	a7,8(s0)
   19a44:	10e13823          	sd	a4,272(sp)
   19a48:	10c12423          	sw	a2,264(sp)
   19a4c:	01040413          	add	s0,s0,16
   19a50:	fccadce3          	bge	s5,a2,19a28 <_svfprintf_r+0xc4c>
   19a54:	00013583          	ld	a1,0(sp)
   19a58:	10010613          	add	a2,sp,256
   19a5c:	00098513          	mv	a0,s3
   19a60:	4a4040ef          	jal	1df04 <__ssprint_r>
   19a64:	06051a63          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19a68:	01000893          	li	a7,16
   19a6c:	ff04849b          	addw	s1,s1,-16
   19a70:	11013703          	ld	a4,272(sp)
   19a74:	10812603          	lw	a2,264(sp)
   19a78:	18010413          	add	s0,sp,384
   19a7c:	fa98cae3          	blt	a7,s1,19a30 <_svfprintf_r+0xc54>
   19a80:	000b8793          	mv	a5,s7
   19a84:	00048b93          	mv	s7,s1
   19a88:	00090493          	mv	s1,s2
   19a8c:	000a0913          	mv	s2,s4
   19a90:	000b0a13          	mv	s4,s6
   19a94:	00078b13          	mv	s6,a5
   19a98:	0016059b          	addw	a1,a2,1
   19a9c:	00eb8733          	add	a4,s7,a4
   19aa0:	01b43023          	sd	s11,0(s0)
   19aa4:	01743423          	sd	s7,8(s0)
   19aa8:	10e13823          	sd	a4,272(sp)
   19aac:	10b12423          	sw	a1,264(sp)
   19ab0:	00700613          	li	a2,7
   19ab4:	46b64263          	blt	a2,a1,19f18 <_svfprintf_r+0x113c>
   19ab8:	01040413          	add	s0,s0,16
   19abc:	00070d93          	mv	s11,a4
   19ac0:	db4ff06f          	j	19074 <_svfprintf_r+0x298>
   19ac4:	00013583          	ld	a1,0(sp)
   19ac8:	10010613          	add	a2,sp,256
   19acc:	00098513          	mv	a0,s3
   19ad0:	434040ef          	jal	1df04 <__ssprint_r>
   19ad4:	de050e63          	beqz	a0,190d0 <_svfprintf_r+0x2f4>
   19ad8:	01813583          	ld	a1,24(sp)
   19adc:	e2058463          	beqz	a1,19104 <_svfprintf_r+0x328>
   19ae0:	05013503          	ld	a0,80(sp)
   19ae4:	afdf90ef          	jal	135e0 <_free_r>
   19ae8:	e1cff06f          	j	19104 <_svfprintf_r+0x328>
   19aec:	000228b7          	lui	a7,0x22
   19af0:	01000513          	li	a0,16
   19af4:	11013583          	ld	a1,272(sp)
   19af8:	10812603          	lw	a2,264(sp)
   19afc:	63088d93          	add	s11,a7,1584 # 22630 <blanks.1>
   19b00:	08e55c63          	bge	a0,a4,19b98 <_svfprintf_r+0xdbc>
   19b04:	08913823          	sd	s1,144(sp)
   19b08:	00040793          	mv	a5,s0
   19b0c:	000d8493          	mv	s1,s11
   19b10:	01000f13          	li	t5,16
   19b14:	000b0d93          	mv	s11,s6
   19b18:	00700393          	li	t2,7
   19b1c:	00070413          	mv	s0,a4
   19b20:	00030b13          	mv	s6,t1
   19b24:	00c0006f          	j	19b30 <_svfprintf_r+0xd54>
   19b28:	ff04041b          	addw	s0,s0,-16
   19b2c:	048f5a63          	bge	t5,s0,19b80 <_svfprintf_r+0xda4>
   19b30:	0016061b          	addw	a2,a2,1
   19b34:	01058593          	add	a1,a1,16
   19b38:	0097b023          	sd	s1,0(a5)
   19b3c:	01e7b423          	sd	t5,8(a5)
   19b40:	10b13823          	sd	a1,272(sp)
   19b44:	10c12423          	sw	a2,264(sp)
   19b48:	01078793          	add	a5,a5,16
   19b4c:	fcc3dee3          	bge	t2,a2,19b28 <_svfprintf_r+0xd4c>
   19b50:	00013583          	ld	a1,0(sp)
   19b54:	10010613          	add	a2,sp,256
   19b58:	00098513          	mv	a0,s3
   19b5c:	3a8040ef          	jal	1df04 <__ssprint_r>
   19b60:	f6051ce3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19b64:	01000f13          	li	t5,16
   19b68:	ff04041b          	addw	s0,s0,-16
   19b6c:	11013583          	ld	a1,272(sp)
   19b70:	10812603          	lw	a2,264(sp)
   19b74:	18010793          	add	a5,sp,384
   19b78:	00700393          	li	t2,7
   19b7c:	fa8f4ae3          	blt	t5,s0,19b30 <_svfprintf_r+0xd54>
   19b80:	000b0313          	mv	t1,s6
   19b84:	000d8b13          	mv	s6,s11
   19b88:	00048d93          	mv	s11,s1
   19b8c:	09013483          	ld	s1,144(sp)
   19b90:	00040713          	mv	a4,s0
   19b94:	00078413          	mv	s0,a5
   19b98:	00b705b3          	add	a1,a4,a1
   19b9c:	0016061b          	addw	a2,a2,1
   19ba0:	00e43423          	sd	a4,8(s0)
   19ba4:	01b43023          	sd	s11,0(s0)
   19ba8:	10b13823          	sd	a1,272(sp)
   19bac:	10c12423          	sw	a2,264(sp)
   19bb0:	0006059b          	sext.w	a1,a2
   19bb4:	00700713          	li	a4,7
   19bb8:	01040413          	add	s0,s0,16
   19bbc:	c2b75863          	bge	a4,a1,18fec <_svfprintf_r+0x210>
   19bc0:	00013583          	ld	a1,0(sp)
   19bc4:	10010613          	add	a2,sp,256
   19bc8:	00098513          	mv	a0,s3
   19bcc:	08613823          	sd	t1,144(sp)
   19bd0:	334040ef          	jal	1df04 <__ssprint_r>
   19bd4:	f00512e3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19bd8:	09013303          	ld	t1,144(sp)
   19bdc:	18010413          	add	s0,sp,384
   19be0:	c0cff06f          	j	18fec <_svfprintf_r+0x210>
   19be4:	00013583          	ld	a1,0(sp)
   19be8:	10010613          	add	a2,sp,256
   19bec:	00098513          	mv	a0,s3
   19bf0:	08613823          	sd	t1,144(sp)
   19bf4:	310040ef          	jal	1df04 <__ssprint_r>
   19bf8:	ee0510e3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19bfc:	11013d83          	ld	s11,272(sp)
   19c00:	09013303          	ld	t1,144(sp)
   19c04:	18010413          	add	s0,sp,384
   19c08:	c5cff06f          	j	19064 <_svfprintf_r+0x288>
   19c0c:	000228b7          	lui	a7,0x22
   19c10:	01000693          	li	a3,16
   19c14:	10812783          	lw	a5,264(sp)
   19c18:	63088d93          	add	s11,a7,1584 # 22630 <blanks.1>
   19c1c:	0726d263          	bge	a3,s2,19c80 <_svfprintf_r+0xea4>
   19c20:	00013a83          	ld	s5,0(sp)
   19c24:	01000c93          	li	s9,16
   19c28:	00700d13          	li	s10,7
   19c2c:	00c0006f          	j	19c38 <_svfprintf_r+0xe5c>
   19c30:	ff09091b          	addw	s2,s2,-16
   19c34:	052cd663          	bge	s9,s2,19c80 <_svfprintf_r+0xea4>
   19c38:	0017879b          	addw	a5,a5,1
   19c3c:	01070713          	add	a4,a4,16
   19c40:	01b43023          	sd	s11,0(s0)
   19c44:	01943423          	sd	s9,8(s0)
   19c48:	10e13823          	sd	a4,272(sp)
   19c4c:	10f12423          	sw	a5,264(sp)
   19c50:	01040413          	add	s0,s0,16
   19c54:	fcfd5ee3          	bge	s10,a5,19c30 <_svfprintf_r+0xe54>
   19c58:	10010613          	add	a2,sp,256
   19c5c:	000a8593          	mv	a1,s5
   19c60:	00098513          	mv	a0,s3
   19c64:	2a0040ef          	jal	1df04 <__ssprint_r>
   19c68:	e60518e3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19c6c:	ff09091b          	addw	s2,s2,-16
   19c70:	11013703          	ld	a4,272(sp)
   19c74:	10812783          	lw	a5,264(sp)
   19c78:	18010413          	add	s0,sp,384
   19c7c:	fb2ccee3          	blt	s9,s2,19c38 <_svfprintf_r+0xe5c>
   19c80:	0017869b          	addw	a3,a5,1
   19c84:	01270733          	add	a4,a4,s2
   19c88:	01b43023          	sd	s11,0(s0)
   19c8c:	01243423          	sd	s2,8(s0)
   19c90:	10e13823          	sd	a4,272(sp)
   19c94:	10d12423          	sw	a3,264(sp)
   19c98:	00700793          	li	a5,7
   19c9c:	c0d7dc63          	bge	a5,a3,190b4 <_svfprintf_r+0x2d8>
   19ca0:	00013583          	ld	a1,0(sp)
   19ca4:	10010613          	add	a2,sp,256
   19ca8:	00098513          	mv	a0,s3
   19cac:	258040ef          	jal	1df04 <__ssprint_r>
   19cb0:	e20514e3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19cb4:	11013703          	ld	a4,272(sp)
   19cb8:	bfcff06f          	j	190b4 <_svfprintf_r+0x2d8>
   19cbc:	0d812603          	lw	a2,216(sp)
   19cc0:	08c058e3          	blez	a2,1a550 <_svfprintf_r+0x1774>
   19cc4:	03813783          	ld	a5,56(sp)
   19cc8:	03013703          	ld	a4,48(sp)
   19ccc:	00fb0ab3          	add	s5,s6,a5
   19cd0:	00078693          	mv	a3,a5
   19cd4:	3ef74a63          	blt	a4,a5,1a0c8 <_svfprintf_r+0x12ec>
   19cd8:	00068c9b          	sext.w	s9,a3
   19cdc:	03905663          	blez	s9,19d08 <_svfprintf_r+0xf2c>
   19ce0:	10812603          	lw	a2,264(sp)
   19ce4:	019d8db3          	add	s11,s11,s9
   19ce8:	01643023          	sd	s6,0(s0)
   19cec:	0016059b          	addw	a1,a2,1
   19cf0:	01943423          	sd	s9,8(s0)
   19cf4:	11b13823          	sd	s11,272(sp)
   19cf8:	10b12423          	sw	a1,264(sp)
   19cfc:	00700613          	li	a2,7
   19d00:	01040413          	add	s0,s0,16
   19d04:	3cb64ae3          	blt	a2,a1,1a8d8 <_svfprintf_r+0x1afc>
   19d08:	fffcc613          	not	a2,s9
   19d0c:	03013783          	ld	a5,48(sp)
   19d10:	43f65613          	sra	a2,a2,0x3f
   19d14:	00ccf6b3          	and	a3,s9,a2
   19d18:	40d78cbb          	subw	s9,a5,a3
   19d1c:	4d904263          	bgtz	s9,1a1e0 <_svfprintf_r+0x1404>
   19d20:	03013783          	ld	a5,48(sp)
   19d24:	40097693          	and	a3,s2,1024
   19d28:	00fb0b33          	add	s6,s6,a5
   19d2c:	52069e63          	bnez	a3,1a268 <_svfprintf_r+0x148c>
   19d30:	0d812683          	lw	a3,216(sp)
   19d34:	03813783          	ld	a5,56(sp)
   19d38:	00f6c663          	blt	a3,a5,19d44 <_svfprintf_r+0xf68>
   19d3c:	00197613          	and	a2,s2,1
   19d40:	3c0600e3          	beqz	a2,1a900 <_svfprintf_r+0x1b24>
   19d44:	10812603          	lw	a2,264(sp)
   19d48:	05813783          	ld	a5,88(sp)
   19d4c:	06013583          	ld	a1,96(sp)
   19d50:	01040413          	add	s0,s0,16
   19d54:	01b78733          	add	a4,a5,s11
   19d58:	feb43823          	sd	a1,-16(s0)
   19d5c:	0016059b          	addw	a1,a2,1
   19d60:	fef43c23          	sd	a5,-8(s0)
   19d64:	10e13823          	sd	a4,272(sp)
   19d68:	10b12423          	sw	a1,264(sp)
   19d6c:	00700613          	li	a2,7
   19d70:	00b65463          	bge	a2,a1,19d78 <_svfprintf_r+0xf9c>
   19d74:	1fc0106f          	j	1af70 <_svfprintf_r+0x2194>
   19d78:	03813783          	ld	a5,56(sp)
   19d7c:	416a8cb3          	sub	s9,s5,s6
   19d80:	000c859b          	sext.w	a1,s9
   19d84:	40d7863b          	subw	a2,a5,a3
   19d88:	00b65463          	bge	a2,a1,19d90 <_svfprintf_r+0xfb4>
   19d8c:	00060c93          	mv	s9,a2
   19d90:	000c8c9b          	sext.w	s9,s9
   19d94:	03905863          	blez	s9,19dc4 <_svfprintf_r+0xfe8>
   19d98:	10812683          	lw	a3,264(sp)
   19d9c:	01970733          	add	a4,a4,s9
   19da0:	01643023          	sd	s6,0(s0)
   19da4:	0016869b          	addw	a3,a3,1
   19da8:	01943423          	sd	s9,8(s0)
   19dac:	10e13823          	sd	a4,272(sp)
   19db0:	10d12423          	sw	a3,264(sp)
   19db4:	00700793          	li	a5,7
   19db8:	01040413          	add	s0,s0,16
   19dbc:	00d7d463          	bge	a5,a3,19dc4 <_svfprintf_r+0xfe8>
   19dc0:	2500106f          	j	1b010 <_svfprintf_r+0x2234>
   19dc4:	fffcc793          	not	a5,s9
   19dc8:	43f7d793          	sra	a5,a5,0x3f
   19dcc:	00fcfcb3          	and	s9,s9,a5
   19dd0:	41960cbb          	subw	s9,a2,s9
   19dd4:	ad905863          	blez	s9,190a4 <_svfprintf_r+0x2c8>
   19dd8:	00022f37          	lui	t5,0x22
   19ddc:	01000693          	li	a3,16
   19de0:	10812783          	lw	a5,264(sp)
   19de4:	620f0d93          	add	s11,t5,1568 # 22620 <zeroes.0>
   19de8:	0996d0e3          	bge	a3,s9,1a668 <_svfprintf_r+0x188c>
   19dec:	00013b03          	ld	s6,0(sp)
   19df0:	01000d13          	li	s10,16
   19df4:	00700a93          	li	s5,7
   19df8:	00c0006f          	j	19e04 <_svfprintf_r+0x1028>
   19dfc:	ff0c8c9b          	addw	s9,s9,-16
   19e00:	079d54e3          	bge	s10,s9,1a668 <_svfprintf_r+0x188c>
   19e04:	0017879b          	addw	a5,a5,1
   19e08:	01070713          	add	a4,a4,16
   19e0c:	01b43023          	sd	s11,0(s0)
   19e10:	01a43423          	sd	s10,8(s0)
   19e14:	10e13823          	sd	a4,272(sp)
   19e18:	10f12423          	sw	a5,264(sp)
   19e1c:	01040413          	add	s0,s0,16
   19e20:	fcfadee3          	bge	s5,a5,19dfc <_svfprintf_r+0x1020>
   19e24:	10010613          	add	a2,sp,256
   19e28:	000b0593          	mv	a1,s6
   19e2c:	00098513          	mv	a0,s3
   19e30:	0d4040ef          	jal	1df04 <__ssprint_r>
   19e34:	ca0512e3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19e38:	11013703          	ld	a4,272(sp)
   19e3c:	10812783          	lw	a5,264(sp)
   19e40:	18010413          	add	s0,sp,384
   19e44:	fb9ff06f          	j	19dfc <_svfprintf_r+0x1020>
   19e48:	00197613          	and	a2,s2,1
   19e4c:	c6061663          	bnez	a2,192b8 <_svfprintf_r+0x4dc>
   19e50:	10812603          	lw	a2,264(sp)
   19e54:	001d8d13          	add	s10,s11,1
   19e58:	01643023          	sd	s6,0(s0)
   19e5c:	0016079b          	addw	a5,a2,1
   19e60:	00d43423          	sd	a3,8(s0)
   19e64:	10f12423          	sw	a5,264(sp)
   19e68:	0007841b          	sext.w	s0,a5
   19e6c:	11a13823          	sd	s10,272(sp)
   19e70:	00700793          	li	a5,7
   19e74:	ce87d263          	bge	a5,s0,19358 <_svfprintf_r+0x57c>
   19e78:	00013583          	ld	a1,0(sp)
   19e7c:	10010613          	add	a2,sp,256
   19e80:	00098513          	mv	a0,s3
   19e84:	080040ef          	jal	1df04 <__ssprint_r>
   19e88:	c40518e3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19e8c:	11013d03          	ld	s10,272(sp)
   19e90:	10812403          	lw	s0,264(sp)
   19e94:	18010c93          	add	s9,sp,384
   19e98:	cc0ff06f          	j	19358 <_svfprintf_r+0x57c>
   19e9c:	03813703          	ld	a4,56(sp)
   19ea0:	00100793          	li	a5,1
   19ea4:	cae7da63          	bge	a5,a4,19358 <_svfprintf_r+0x57c>
   19ea8:	00022f37          	lui	t5,0x22
   19eac:	01100793          	li	a5,17
   19eb0:	620f0d93          	add	s11,t5,1568 # 22620 <zeroes.0>
   19eb4:	0ae7dae3          	bge	a5,a4,1a768 <_svfprintf_r+0x198c>
   19eb8:	00013b83          	ld	s7,0(sp)
   19ebc:	01000713          	li	a4,16
   19ec0:	00700b13          	li	s6,7
   19ec4:	00c0006f          	j	19ed0 <_svfprintf_r+0x10f4>
   19ec8:	ff0a8a9b          	addw	s5,s5,-16
   19ecc:	09575ee3          	bge	a4,s5,1a768 <_svfprintf_r+0x198c>
   19ed0:	0014041b          	addw	s0,s0,1
   19ed4:	010d0d13          	add	s10,s10,16
   19ed8:	01bcb023          	sd	s11,0(s9)
   19edc:	00ecb423          	sd	a4,8(s9)
   19ee0:	11a13823          	sd	s10,272(sp)
   19ee4:	10812423          	sw	s0,264(sp)
   19ee8:	010c8c93          	add	s9,s9,16
   19eec:	fc8b5ee3          	bge	s6,s0,19ec8 <_svfprintf_r+0x10ec>
   19ef0:	10010613          	add	a2,sp,256
   19ef4:	000b8593          	mv	a1,s7
   19ef8:	00098513          	mv	a0,s3
   19efc:	008040ef          	jal	1df04 <__ssprint_r>
   19f00:	bc051ce3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19f04:	11013d03          	ld	s10,272(sp)
   19f08:	10812403          	lw	s0,264(sp)
   19f0c:	18010c93          	add	s9,sp,384
   19f10:	01000713          	li	a4,16
   19f14:	fb5ff06f          	j	19ec8 <_svfprintf_r+0x10ec>
   19f18:	00013583          	ld	a1,0(sp)
   19f1c:	10010613          	add	a2,sp,256
   19f20:	00098513          	mv	a0,s3
   19f24:	7e1030ef          	jal	1df04 <__ssprint_r>
   19f28:	ba0518e3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19f2c:	11013d83          	ld	s11,272(sp)
   19f30:	18010413          	add	s0,sp,384
   19f34:	940ff06f          	j	19074 <_svfprintf_r+0x298>
   19f38:	01097793          	and	a5,s2,16
   19f3c:	12079e63          	bnez	a5,1a078 <_svfprintf_r+0x129c>
   19f40:	02013683          	ld	a3,32(sp)
   19f44:	04097793          	and	a5,s2,64
   19f48:	0006ad03          	lw	s10,0(a3)
   19f4c:	0e078ee3          	beqz	a5,1a848 <_svfprintf_r+0x1a6c>
   19f50:	030d1d13          	sll	s10,s10,0x30
   19f54:	030d5d13          	srl	s10,s10,0x30
   19f58:	f28ff06f          	j	19680 <_svfprintf_r+0x8a4>
   19f5c:	01097793          	and	a5,s2,16
   19f60:	14079c63          	bnez	a5,1a0b8 <_svfprintf_r+0x12dc>
   19f64:	02013683          	ld	a3,32(sp)
   19f68:	04097793          	and	a5,s2,64
   19f6c:	0006ad03          	lw	s10,0(a3)
   19f70:	0e0784e3          	beqz	a5,1a858 <_svfprintf_r+0x1a7c>
   19f74:	010d1d1b          	sllw	s10,s10,0x10
   19f78:	410d5d1b          	sraw	s10,s10,0x10
   19f7c:	000d0793          	mv	a5,s10
   19f80:	ea07d263          	bgez	a5,19624 <_svfprintf_r+0x848>
   19f84:	02e13023          	sd	a4,32(sp)
   19f88:	41a00d33          	neg	s10,s10
   19f8c:	00090d93          	mv	s11,s2
   19f90:	02d00713          	li	a4,45
   19f94:	00100793          	li	a5,1
   19f98:	dfcff06f          	j	19594 <_svfprintf_r+0x7b8>
   19f9c:	010df793          	and	a5,s11,16
   19fa0:	10079263          	bnez	a5,1a0a4 <_svfprintf_r+0x12c8>
   19fa4:	02013683          	ld	a3,32(sp)
   19fa8:	040df793          	and	a5,s11,64
   19fac:	0006ad03          	lw	s10,0(a3)
   19fb0:	080780e3          	beqz	a5,1a830 <_svfprintf_r+0x1a54>
   19fb4:	030d1d13          	sll	s10,s10,0x30
   19fb8:	030d5d13          	srl	s10,s10,0x30
   19fbc:	02e13023          	sd	a4,32(sp)
   19fc0:	00100793          	li	a5,1
   19fc4:	dccff06f          	j	19590 <_svfprintf_r+0x7b4>
   19fc8:	00000d13          	li	s10,0
   19fcc:	17c10b13          	add	s6,sp,380
   19fd0:	df0ff06f          	j	195c0 <_svfprintf_r+0x7e4>
   19fd4:	00013583          	ld	a1,0(sp)
   19fd8:	10010613          	add	a2,sp,256
   19fdc:	00098513          	mv	a0,s3
   19fe0:	725030ef          	jal	1df04 <__ssprint_r>
   19fe4:	ae051ae3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   19fe8:	11013703          	ld	a4,272(sp)
   19fec:	10812683          	lw	a3,264(sp)
   19ff0:	18010c93          	add	s9,sp,384
   19ff4:	af0ff06f          	j	192e4 <_svfprintf_r+0x508>
   19ff8:	00013583          	ld	a1,0(sp)
   19ffc:	10010613          	add	a2,sp,256
   1a000:	00098513          	mv	a0,s3
   1a004:	701030ef          	jal	1df04 <__ssprint_r>
   1a008:	ac0518e3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   1a00c:	11013d03          	ld	s10,272(sp)
   1a010:	10812403          	lw	s0,264(sp)
   1a014:	18010c93          	add	s9,sp,384
   1a018:	af8ff06f          	j	19310 <_svfprintf_r+0x534>
   1a01c:	00197793          	and	a5,s2,1
   1a020:	000d8713          	mv	a4,s11
   1a024:	88078063          	beqz	a5,190a4 <_svfprintf_r+0x2c8>
   1a028:	f7cff06f          	j	197a4 <_svfprintf_r+0x9c8>
   1a02c:	000a8313          	mv	t1,s5
   1a030:	dd8ff06f          	j	19608 <_svfprintf_r+0x82c>
   1a034:	0004ce03          	lbu	t3,0(s1)
   1a038:	02f13023          	sd	a5,32(sp)
   1a03c:	f01fe06f          	j	18f3c <_svfprintf_r+0x160>
   1a040:	03000793          	li	a5,48
   1a044:	16f10da3          	sb	a5,379(sp)
   1a048:	17b10b13          	add	s6,sp,379
   1a04c:	d74ff06f          	j	195c0 <_svfprintf_r+0x7e4>
   1a050:	01097793          	and	a5,s2,16
   1a054:	ea079c63          	bnez	a5,1970c <_svfprintf_r+0x930>
   1a058:	04097793          	and	a5,s2,64
   1a05c:	0e079ce3          	bnez	a5,1a954 <_svfprintf_r+0x1b78>
   1a060:	20097913          	and	s2,s2,512
   1a064:	01013783          	ld	a5,16(sp)
   1a068:	00091463          	bnez	s2,1a070 <_svfprintf_r+0x1294>
   1a06c:	1500106f          	j	1b1bc <_svfprintf_r+0x23e0>
   1a070:	00f70023          	sb	a5,0(a4)
   1a074:	ea0ff06f          	j	19714 <_svfprintf_r+0x938>
   1a078:	02013783          	ld	a5,32(sp)
   1a07c:	0007bd03          	ld	s10,0(a5)
   1a080:	e00ff06f          	j	19680 <_svfprintf_r+0x8a4>
   1a084:	02013783          	ld	a5,32(sp)
   1a088:	00f78a93          	add	s5,a5,15
   1a08c:	ff0afa93          	and	s5,s5,-16
   1a090:	010a8793          	add	a5,s5,16
   1a094:	000ab703          	ld	a4,0(s5)
   1a098:	008ab583          	ld	a1,8(s5)
   1a09c:	02f13023          	sd	a5,32(sp)
   1a0a0:	920ff06f          	j	191c0 <_svfprintf_r+0x3e4>
   1a0a4:	02013783          	ld	a5,32(sp)
   1a0a8:	02e13023          	sd	a4,32(sp)
   1a0ac:	0007bd03          	ld	s10,0(a5)
   1a0b0:	00100793          	li	a5,1
   1a0b4:	cdcff06f          	j	19590 <_svfprintf_r+0x7b4>
   1a0b8:	02013783          	ld	a5,32(sp)
   1a0bc:	0007b783          	ld	a5,0(a5)
   1a0c0:	00078d13          	mv	s10,a5
   1a0c4:	d5cff06f          	j	19620 <_svfprintf_r+0x844>
   1a0c8:	00070693          	mv	a3,a4
   1a0cc:	00068c9b          	sext.w	s9,a3
   1a0d0:	c19048e3          	bgtz	s9,19ce0 <_svfprintf_r+0xf04>
   1a0d4:	c35ff06f          	j	19d08 <_svfprintf_r+0xf2c>
   1a0d8:	d6031863          	bnez	t1,19648 <_svfprintf_r+0x86c>
   1a0dc:	000d8913          	mv	s2,s11
   1a0e0:	17c10b13          	add	s6,sp,380
   1a0e4:	cdcff06f          	j	195c0 <_svfprintf_r+0x7e4>
   1a0e8:	000227b7          	lui	a5,0x22
   1a0ec:	cf878793          	add	a5,a5,-776 # 21cf8 <__clzdi2+0x98>
   1a0f0:	000a8313          	mv	t1,s5
   1a0f4:	06f13423          	sd	a5,104(sp)
   1a0f8:	02013683          	ld	a3,32(sp)
   1a0fc:	02097793          	and	a5,s2,32
   1a100:	00868713          	add	a4,a3,8
   1a104:	32078263          	beqz	a5,1a428 <_svfprintf_r+0x164c>
   1a108:	0006bd03          	ld	s10,0(a3)
   1a10c:	00197793          	and	a5,s2,1
   1a110:	00078e63          	beqz	a5,1a12c <_svfprintf_r+0x1350>
   1a114:	000d0c63          	beqz	s10,1a12c <_svfprintf_r+0x1350>
   1a118:	00296913          	or	s2,s2,2
   1a11c:	03000793          	li	a5,48
   1a120:	0cf10823          	sb	a5,208(sp)
   1a124:	0d9108a3          	sb	s9,209(sp)
   1a128:	0009091b          	sext.w	s2,s2
   1a12c:	bff97d93          	and	s11,s2,-1025
   1a130:	000d8d9b          	sext.w	s11,s11
   1a134:	02e13023          	sd	a4,32(sp)
   1a138:	00200793          	li	a5,2
   1a13c:	c54ff06f          	j	19590 <_svfprintf_r+0x7b4>
   1a140:	000a8313          	mv	t1,s5
   1a144:	00090d93          	mv	s11,s2
   1a148:	c2cff06f          	j	19574 <_svfprintf_r+0x798>
   1a14c:	20096913          	or	s2,s2,512
   1a150:	0014ce03          	lbu	t3,1(s1)
   1a154:	0009091b          	sext.w	s2,s2
   1a158:	00148493          	add	s1,s1,1
   1a15c:	de1fe06f          	j	18f3c <_svfprintf_r+0x160>
   1a160:	02096913          	or	s2,s2,32
   1a164:	0014ce03          	lbu	t3,1(s1)
   1a168:	0009091b          	sext.w	s2,s2
   1a16c:	00148493          	add	s1,s1,1
   1a170:	dcdfe06f          	j	18f3c <_svfprintf_r+0x160>
   1a174:	000a8313          	mv	t1,s5
   1a178:	cf4ff06f          	j	1966c <_svfprintf_r+0x890>
   1a17c:	000227b7          	lui	a5,0x22
   1a180:	d1078793          	add	a5,a5,-752 # 21d10 <__clzdi2+0xb0>
   1a184:	000a8313          	mv	t1,s5
   1a188:	06f13423          	sd	a5,104(sp)
   1a18c:	f6dff06f          	j	1a0f8 <_svfprintf_r+0x131c>
   1a190:	00013583          	ld	a1,0(sp)
   1a194:	10010613          	add	a2,sp,256
   1a198:	00098513          	mv	a0,s3
   1a19c:	569030ef          	jal	1df04 <__ssprint_r>
   1a1a0:	92051ce3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   1a1a4:	11013703          	ld	a4,272(sp)
   1a1a8:	18010413          	add	s0,sp,384
   1a1ac:	e2cff06f          	j	197d8 <_svfprintf_r+0x9fc>
   1a1b0:	05013503          	ld	a0,80(sp)
   1a1b4:	04000593          	li	a1,64
   1a1b8:	8e9fc0ef          	jal	16aa0 <_malloc_r>
   1a1bc:	00013783          	ld	a5,0(sp)
   1a1c0:	00a7b023          	sd	a0,0(a5)
   1a1c4:	00a7bc23          	sd	a0,24(a5)
   1a1c8:	00051463          	bnez	a0,1a1d0 <_svfprintf_r+0x13f4>
   1a1cc:	7f90006f          	j	1b1c4 <_svfprintf_r+0x23e8>
   1a1d0:	00013783          	ld	a5,0(sp)
   1a1d4:	04000713          	li	a4,64
   1a1d8:	02e7a023          	sw	a4,32(a5)
   1a1dc:	c85fe06f          	j	18e60 <_svfprintf_r+0x84>
   1a1e0:	00022f37          	lui	t5,0x22
   1a1e4:	01000593          	li	a1,16
   1a1e8:	000d8713          	mv	a4,s11
   1a1ec:	10812603          	lw	a2,264(sp)
   1a1f0:	620f0d93          	add	s11,t5,1568 # 22620 <zeroes.0>
   1a1f4:	6b95d663          	bge	a1,s9,1a8a0 <_svfprintf_r+0x1ac4>
   1a1f8:	00013b83          	ld	s7,0(sp)
   1a1fc:	01000893          	li	a7,16
   1a200:	00700d13          	li	s10,7
   1a204:	00c0006f          	j	1a210 <_svfprintf_r+0x1434>
   1a208:	ff0c8c9b          	addw	s9,s9,-16
   1a20c:	6998da63          	bge	a7,s9,1a8a0 <_svfprintf_r+0x1ac4>
   1a210:	0016061b          	addw	a2,a2,1
   1a214:	01070713          	add	a4,a4,16
   1a218:	01b43023          	sd	s11,0(s0)
   1a21c:	01143423          	sd	a7,8(s0)
   1a220:	10e13823          	sd	a4,272(sp)
   1a224:	10c12423          	sw	a2,264(sp)
   1a228:	01040413          	add	s0,s0,16
   1a22c:	fccd5ee3          	bge	s10,a2,1a208 <_svfprintf_r+0x142c>
   1a230:	10010613          	add	a2,sp,256
   1a234:	000b8593          	mv	a1,s7
   1a238:	00098513          	mv	a0,s3
   1a23c:	4c9030ef          	jal	1df04 <__ssprint_r>
   1a240:	88051ce3          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   1a244:	11013703          	ld	a4,272(sp)
   1a248:	10812603          	lw	a2,264(sp)
   1a24c:	18010413          	add	s0,sp,384
   1a250:	01000893          	li	a7,16
   1a254:	fb5ff06f          	j	1a208 <_svfprintf_r+0x142c>
   1a258:	000b0513          	mv	a0,s6
   1a25c:	a15fe0ef          	jal	18c70 <strlen>
   1a260:	00050d1b          	sext.w	s10,a0
   1a264:	9bcff06f          	j	19420 <_svfprintf_r+0x644>
   1a268:	04013d03          	ld	s10,64(sp)
   1a26c:	00022e37          	lui	t3,0x22
   1a270:	08913823          	sd	s1,144(sp)
   1a274:	09213c23          	sd	s2,152(sp)
   1a278:	0b413023          	sd	s4,160(sp)
   1a27c:	05813023          	sd	s8,64(sp)
   1a280:	000b0a13          	mv	s4,s6
   1a284:	07813903          	ld	s2,120(sp)
   1a288:	08813483          	ld	s1,136(sp)
   1a28c:	08013b03          	ld	s6,128(sp)
   1a290:	04813c03          	ld	s8,72(sp)
   1a294:	00013b83          	ld	s7,0(sp)
   1a298:	00700313          	li	t1,7
   1a29c:	01000893          	li	a7,16
   1a2a0:	620e0c93          	add	s9,t3,1568 # 22620 <zeroes.0>
   1a2a4:	000d8713          	mv	a4,s11
   1a2a8:	080d0c63          	beqz	s10,1a340 <_svfprintf_r+0x1564>
   1a2ac:	160c0863          	beqz	s8,1a41c <_svfprintf_r+0x1640>
   1a2b0:	fffc0c1b          	addw	s8,s8,-1
   1a2b4:	10812783          	lw	a5,264(sp)
   1a2b8:	01670733          	add	a4,a4,s6
   1a2bc:	00943023          	sd	s1,0(s0)
   1a2c0:	0017869b          	addw	a3,a5,1
   1a2c4:	01643423          	sd	s6,8(s0)
   1a2c8:	10e13823          	sd	a4,272(sp)
   1a2cc:	10d12423          	sw	a3,264(sp)
   1a2d0:	01040413          	add	s0,s0,16
   1a2d4:	16d34463          	blt	t1,a3,1a43c <_svfprintf_r+0x1660>
   1a2d8:	00094683          	lbu	a3,0(s2)
   1a2dc:	414a8db3          	sub	s11,s5,s4
   1a2e0:	000d879b          	sext.w	a5,s11
   1a2e4:	0006861b          	sext.w	a2,a3
   1a2e8:	00f6d463          	bge	a3,a5,1a2f0 <_svfprintf_r+0x1514>
   1a2ec:	00060d93          	mv	s11,a2
   1a2f0:	000d8d9b          	sext.w	s11,s11
   1a2f4:	03b05863          	blez	s11,1a324 <_svfprintf_r+0x1548>
   1a2f8:	10812783          	lw	a5,264(sp)
   1a2fc:	01b70733          	add	a4,a4,s11
   1a300:	01443023          	sd	s4,0(s0)
   1a304:	0017869b          	addw	a3,a5,1
   1a308:	01b43423          	sd	s11,8(s0)
   1a30c:	10e13823          	sd	a4,272(sp)
   1a310:	10d12423          	sw	a3,264(sp)
   1a314:	36d34e63          	blt	t1,a3,1a690 <_svfprintf_r+0x18b4>
   1a318:	00094683          	lbu	a3,0(s2)
   1a31c:	01040413          	add	s0,s0,16
   1a320:	0006861b          	sext.w	a2,a3
   1a324:	fffdc793          	not	a5,s11
   1a328:	43f7d793          	sra	a5,a5,0x3f
   1a32c:	00fdf7b3          	and	a5,s11,a5
   1a330:	40f60dbb          	subw	s11,a2,a5
   1a334:	03b04c63          	bgtz	s11,1a36c <_svfprintf_r+0x1590>
   1a338:	00da0a33          	add	s4,s4,a3
   1a33c:	f60d18e3          	bnez	s10,1a2ac <_svfprintf_r+0x14d0>
   1a340:	f60c18e3          	bnez	s8,1a2b0 <_svfprintf_r+0x14d4>
   1a344:	07213c23          	sd	s2,120(sp)
   1a348:	000a0b13          	mv	s6,s4
   1a34c:	09013483          	ld	s1,144(sp)
   1a350:	09813903          	ld	s2,152(sp)
   1a354:	0a013a03          	ld	s4,160(sp)
   1a358:	04013c03          	ld	s8,64(sp)
   1a35c:	00070d93          	mv	s11,a4
   1a360:	9d6af8e3          	bgeu	s5,s6,19d30 <_svfprintf_r+0xf54>
   1a364:	000a8b13          	mv	s6,s5
   1a368:	9c9ff06f          	j	19d30 <_svfprintf_r+0xf54>
   1a36c:	00022637          	lui	a2,0x22
   1a370:	10812783          	lw	a5,264(sp)
   1a374:	62060613          	add	a2,a2,1568 # 22620 <zeroes.0>
   1a378:	07b8dc63          	bge	a7,s11,1a3f0 <_svfprintf_r+0x1614>
   1a37c:	02913823          	sd	s1,48(sp)
   1a380:	000d8493          	mv	s1,s11
   1a384:	000c8d93          	mv	s11,s9
   1a388:	00c0006f          	j	1a394 <_svfprintf_r+0x15b8>
   1a38c:	ff04849b          	addw	s1,s1,-16
   1a390:	0498da63          	bge	a7,s1,1a3e4 <_svfprintf_r+0x1608>
   1a394:	0017879b          	addw	a5,a5,1
   1a398:	01070713          	add	a4,a4,16
   1a39c:	01943023          	sd	s9,0(s0)
   1a3a0:	01143423          	sd	a7,8(s0)
   1a3a4:	10e13823          	sd	a4,272(sp)
   1a3a8:	10f12423          	sw	a5,264(sp)
   1a3ac:	01040413          	add	s0,s0,16
   1a3b0:	fcf35ee3          	bge	t1,a5,1a38c <_svfprintf_r+0x15b0>
   1a3b4:	10010613          	add	a2,sp,256
   1a3b8:	000b8593          	mv	a1,s7
   1a3bc:	00098513          	mv	a0,s3
   1a3c0:	345030ef          	jal	1df04 <__ssprint_r>
   1a3c4:	f0051a63          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   1a3c8:	01000893          	li	a7,16
   1a3cc:	ff04849b          	addw	s1,s1,-16
   1a3d0:	11013703          	ld	a4,272(sp)
   1a3d4:	10812783          	lw	a5,264(sp)
   1a3d8:	18010413          	add	s0,sp,384
   1a3dc:	00700313          	li	t1,7
   1a3e0:	fa98cae3          	blt	a7,s1,1a394 <_svfprintf_r+0x15b8>
   1a3e4:	000d8613          	mv	a2,s11
   1a3e8:	00048d93          	mv	s11,s1
   1a3ec:	03013483          	ld	s1,48(sp)
   1a3f0:	0017869b          	addw	a3,a5,1
   1a3f4:	00ed8733          	add	a4,s11,a4
   1a3f8:	00c43023          	sd	a2,0(s0)
   1a3fc:	01b43423          	sd	s11,8(s0)
   1a400:	10e13823          	sd	a4,272(sp)
   1a404:	10d12423          	sw	a3,264(sp)
   1a408:	24d34ae3          	blt	t1,a3,1ae5c <_svfprintf_r+0x2080>
   1a40c:	00094683          	lbu	a3,0(s2)
   1a410:	01040413          	add	s0,s0,16
   1a414:	00da0a33          	add	s4,s4,a3
   1a418:	f25ff06f          	j	1a33c <_svfprintf_r+0x1560>
   1a41c:	fff90913          	add	s2,s2,-1
   1a420:	fffd0d1b          	addw	s10,s10,-1
   1a424:	e91ff06f          	j	1a2b4 <_svfprintf_r+0x14d8>
   1a428:	01097793          	and	a5,s2,16
   1a42c:	1e078a63          	beqz	a5,1a620 <_svfprintf_r+0x1844>
   1a430:	02013783          	ld	a5,32(sp)
   1a434:	0007bd03          	ld	s10,0(a5)
   1a438:	cd5ff06f          	j	1a10c <_svfprintf_r+0x1330>
   1a43c:	10010613          	add	a2,sp,256
   1a440:	000b8593          	mv	a1,s7
   1a444:	00098513          	mv	a0,s3
   1a448:	2bd030ef          	jal	1df04 <__ssprint_r>
   1a44c:	e8051663          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   1a450:	11013703          	ld	a4,272(sp)
   1a454:	18010413          	add	s0,sp,384
   1a458:	01000893          	li	a7,16
   1a45c:	00700313          	li	t1,7
   1a460:	e79ff06f          	j	1a2d8 <_svfprintf_r+0x14fc>
   1a464:	17c10a93          	add	s5,sp,380
   1a468:	00913c23          	sd	s1,24(sp)
   1a46c:	07813483          	ld	s1,120(sp)
   1a470:	400df913          	and	s2,s11,1024
   1a474:	000a8b13          	mv	s6,s5
   1a478:	00000793          	li	a5,0
   1a47c:	02813c23          	sd	s0,56(sp)
   1a480:	00098a93          	mv	s5,s3
   1a484:	00090413          	mv	s0,s2
   1a488:	00900b93          	li	s7,9
   1a48c:	0ff00c13          	li	s8,255
   1a490:	02613823          	sd	t1,48(sp)
   1a494:	00078913          	mv	s2,a5
   1a498:	000b0993          	mv	s3,s6
   1a49c:	00a00593          	li	a1,10
   1a4a0:	000d0513          	mv	a0,s10
   1a4a4:	74c070ef          	jal	21bf0 <__umoddi3>
   1a4a8:	0305051b          	addw	a0,a0,48
   1a4ac:	fea98fa3          	sb	a0,-1(s3)
   1a4b0:	0019091b          	addw	s2,s2,1
   1a4b4:	fff98993          	add	s3,s3,-1
   1a4b8:	00040663          	beqz	s0,1a4c4 <_svfprintf_r+0x16e8>
   1a4bc:	0004c703          	lbu	a4,0(s1)
   1a4c0:	04e90663          	beq	s2,a4,1a50c <_svfprintf_r+0x1730>
   1a4c4:	00a00593          	li	a1,10
   1a4c8:	000d0513          	mv	a0,s10
   1a4cc:	6dc070ef          	jal	21ba8 <__hidden___udivdi3>
   1a4d0:	01abf663          	bgeu	s7,s10,1a4dc <_svfprintf_r+0x1700>
   1a4d4:	00050d13          	mv	s10,a0
   1a4d8:	fc5ff06f          	j	1a49c <_svfprintf_r+0x16c0>
   1a4dc:	000b0793          	mv	a5,s6
   1a4e0:	00098b13          	mv	s6,s3
   1a4e4:	000a8993          	mv	s3,s5
   1a4e8:	00078a93          	mv	s5,a5
   1a4ec:	03813403          	ld	s0,56(sp)
   1a4f0:	06913c23          	sd	s1,120(sp)
   1a4f4:	03213c23          	sd	s2,56(sp)
   1a4f8:	01813483          	ld	s1,24(sp)
   1a4fc:	03013303          	ld	t1,48(sp)
   1a500:	416a8d3b          	subw	s10,s5,s6
   1a504:	000d8913          	mv	s2,s11
   1a508:	8b8ff06f          	j	195c0 <_svfprintf_r+0x7e4>
   1a50c:	fb870ce3          	beq	a4,s8,1a4c4 <_svfprintf_r+0x16e8>
   1a510:	fdabf6e3          	bgeu	s7,s10,1a4dc <_svfprintf_r+0x1700>
   1a514:	08013783          	ld	a5,128(sp)
   1a518:	08813583          	ld	a1,136(sp)
   1a51c:	00000913          	li	s2,0
   1a520:	40f989b3          	sub	s3,s3,a5
   1a524:	00078613          	mv	a2,a5
   1a528:	00098513          	mv	a0,s3
   1a52c:	80dfe0ef          	jal	18d38 <strncpy>
   1a530:	0014c703          	lbu	a4,1(s1)
   1a534:	000d0513          	mv	a0,s10
   1a538:	00a00593          	li	a1,10
   1a53c:	00e03733          	snez	a4,a4
   1a540:	00e484b3          	add	s1,s1,a4
   1a544:	664070ef          	jal	21ba8 <__hidden___udivdi3>
   1a548:	00050d13          	mv	s10,a0
   1a54c:	f51ff06f          	j	1a49c <_svfprintf_r+0x16c0>
   1a550:	10812683          	lw	a3,264(sp)
   1a554:	000225b7          	lui	a1,0x22
   1a558:	d3058593          	add	a1,a1,-720 # 21d30 <__clzdi2+0xd0>
   1a55c:	0016869b          	addw	a3,a3,1
   1a560:	00b43023          	sd	a1,0(s0)
   1a564:	001d8713          	add	a4,s11,1
   1a568:	00100593          	li	a1,1
   1a56c:	00b43423          	sd	a1,8(s0)
   1a570:	10d12423          	sw	a3,264(sp)
   1a574:	0006859b          	sext.w	a1,a3
   1a578:	10e13823          	sd	a4,272(sp)
   1a57c:	00700693          	li	a3,7
   1a580:	01040413          	add	s0,s0,16
   1a584:	06b6cc63          	blt	a3,a1,1a5fc <_svfprintf_r+0x1820>
   1a588:	20061463          	bnez	a2,1a790 <_svfprintf_r+0x19b4>
   1a58c:	03813783          	ld	a5,56(sp)
   1a590:	00197693          	and	a3,s2,1
   1a594:	00d7e6b3          	or	a3,a5,a3
   1a598:	00069463          	bnez	a3,1a5a0 <_svfprintf_r+0x17c4>
   1a59c:	b09fe06f          	j	190a4 <_svfprintf_r+0x2c8>
   1a5a0:	10812603          	lw	a2,264(sp)
   1a5a4:	05813783          	ld	a5,88(sp)
   1a5a8:	06013683          	ld	a3,96(sp)
   1a5ac:	00e78733          	add	a4,a5,a4
   1a5b0:	00d43023          	sd	a3,0(s0)
   1a5b4:	0016069b          	addw	a3,a2,1
   1a5b8:	00f43423          	sd	a5,8(s0)
   1a5bc:	10e13823          	sd	a4,272(sp)
   1a5c0:	10d12423          	sw	a3,264(sp)
   1a5c4:	00700613          	li	a2,7
   1a5c8:	5ad64263          	blt	a2,a3,1ab6c <_svfprintf_r+0x1d90>
   1a5cc:	01040413          	add	s0,s0,16
   1a5d0:	03813783          	ld	a5,56(sp)
   1a5d4:	0016861b          	addw	a2,a3,1
   1a5d8:	01643023          	sd	s6,0(s0)
   1a5dc:	00e78733          	add	a4,a5,a4
   1a5e0:	00f43423          	sd	a5,8(s0)
   1a5e4:	10e13823          	sd	a4,272(sp)
   1a5e8:	10c12423          	sw	a2,264(sp)
   1a5ec:	00700793          	li	a5,7
   1a5f0:	00c7c463          	blt	a5,a2,1a5f8 <_svfprintf_r+0x181c>
   1a5f4:	aadfe06f          	j	190a0 <_svfprintf_r+0x2c4>
   1a5f8:	d91fe06f          	j	19388 <_svfprintf_r+0x5ac>
   1a5fc:	00013583          	ld	a1,0(sp)
   1a600:	10010613          	add	a2,sp,256
   1a604:	00098513          	mv	a0,s3
   1a608:	0fd030ef          	jal	1df04 <__ssprint_r>
   1a60c:	cc051663          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   1a610:	0d812603          	lw	a2,216(sp)
   1a614:	11013703          	ld	a4,272(sp)
   1a618:	18010413          	add	s0,sp,384
   1a61c:	f6dff06f          	j	1a588 <_svfprintf_r+0x17ac>
   1a620:	02013683          	ld	a3,32(sp)
   1a624:	04097793          	and	a5,s2,64
   1a628:	0006ad03          	lw	s10,0(a3)
   1a62c:	24078263          	beqz	a5,1a870 <_svfprintf_r+0x1a94>
   1a630:	030d1d13          	sll	s10,s10,0x30
   1a634:	030d5d13          	srl	s10,s10,0x30
   1a638:	ad5ff06f          	j	1a10c <_svfprintf_r+0x1330>
   1a63c:	00090d93          	mv	s11,s2
   1a640:	02e13023          	sd	a4,32(sp)
   1a644:	ffdfe06f          	j	19640 <_svfprintf_r+0x864>
   1a648:	00013583          	ld	a1,0(sp)
   1a64c:	10010613          	add	a2,sp,256
   1a650:	00098513          	mv	a0,s3
   1a654:	0b1030ef          	jal	1df04 <__ssprint_r>
   1a658:	c8051063          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   1a65c:	11013d83          	ld	s11,272(sp)
   1a660:	18010413          	add	s0,sp,384
   1a664:	934ff06f          	j	19798 <_svfprintf_r+0x9bc>
   1a668:	0017869b          	addw	a3,a5,1
   1a66c:	01b43023          	sd	s11,0(s0)
   1a670:	01943423          	sd	s9,8(s0)
   1a674:	01970733          	add	a4,a4,s9
   1a678:	10e13823          	sd	a4,272(sp)
   1a67c:	10d12423          	sw	a3,264(sp)
   1a680:	00700793          	li	a5,7
   1a684:	00d7c463          	blt	a5,a3,1a68c <_svfprintf_r+0x18b0>
   1a688:	a19fe06f          	j	190a0 <_svfprintf_r+0x2c4>
   1a68c:	cfdfe06f          	j	19388 <_svfprintf_r+0x5ac>
   1a690:	10010613          	add	a2,sp,256
   1a694:	000b8593          	mv	a1,s7
   1a698:	00098513          	mv	a0,s3
   1a69c:	069030ef          	jal	1df04 <__ssprint_r>
   1a6a0:	c2051c63          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   1a6a4:	00094683          	lbu	a3,0(s2)
   1a6a8:	11013703          	ld	a4,272(sp)
   1a6ac:	18010413          	add	s0,sp,384
   1a6b0:	0006861b          	sext.w	a2,a3
   1a6b4:	01000893          	li	a7,16
   1a6b8:	00700313          	li	t1,7
   1a6bc:	c69ff06f          	j	1a324 <_svfprintf_r+0x1548>
   1a6c0:	00013583          	ld	a1,0(sp)
   1a6c4:	10010613          	add	a2,sp,256
   1a6c8:	00098513          	mv	a0,s3
   1a6cc:	08613823          	sd	t1,144(sp)
   1a6d0:	035030ef          	jal	1df04 <__ssprint_r>
   1a6d4:	c0051263          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   1a6d8:	11013d83          	ld	s11,272(sp)
   1a6dc:	09013303          	ld	t1,144(sp)
   1a6e0:	18010413          	add	s0,sp,384
   1a6e4:	989fe06f          	j	1906c <_svfprintf_r+0x290>
   1a6e8:	0f013503          	ld	a0,240(sp)
   1a6ec:	0f813583          	ld	a1,248(sp)
   1a6f0:	00000613          	li	a2,0
   1a6f4:	00000693          	li	a3,0
   1a6f8:	799050ef          	jal	20690 <__letf2>
   1a6fc:	060542e3          	bltz	a0,1af60 <_svfprintf_r+0x2184>
   1a700:	0cf14703          	lbu	a4,207(sp)
   1a704:	04700793          	li	a5,71
   1a708:	1d97d263          	bge	a5,s9,1a8cc <_svfprintf_r+0x1af0>
   1a70c:	000227b7          	lui	a5,0x22
   1a710:	ce078b13          	add	s6,a5,-800 # 21ce0 <__clzdi2+0x80>
   1a714:	f7f97913          	and	s2,s2,-129
   1a718:	00013c23          	sd	zero,24(sp)
   1a71c:	04013423          	sd	zero,72(sp)
   1a720:	04013023          	sd	zero,64(sp)
   1a724:	02013823          	sd	zero,48(sp)
   1a728:	0009091b          	sext.w	s2,s2
   1a72c:	00300c13          	li	s8,3
   1a730:	00300d13          	li	s10,3
   1a734:	00000313          	li	t1,0
   1a738:	00070463          	beqz	a4,1a740 <_svfprintf_r+0x1964>
   1a73c:	d11fe06f          	j	1944c <_svfprintf_r+0x670>
   1a740:	891fe06f          	j	18fd0 <_svfprintf_r+0x1f4>
   1a744:	00600793          	li	a5,6
   1a748:	00030693          	mv	a3,t1
   1a74c:	1a67e663          	bltu	a5,t1,1a8f8 <_svfprintf_r+0x1b1c>
   1a750:	00068d1b          	sext.w	s10,a3
   1a754:	000227b7          	lui	a5,0x22
   1a758:	000d0c13          	mv	s8,s10
   1a75c:	03513023          	sd	s5,32(sp)
   1a760:	d2878b13          	add	s6,a5,-728 # 21d28 <__clzdi2+0xc8>
   1a764:	859fe06f          	j	18fbc <_svfprintf_r+0x1e0>
   1a768:	0014041b          	addw	s0,s0,1
   1a76c:	015d0d33          	add	s10,s10,s5
   1a770:	01bcb023          	sd	s11,0(s9)
   1a774:	015cb423          	sd	s5,8(s9)
   1a778:	11a13823          	sd	s10,272(sp)
   1a77c:	10812423          	sw	s0,264(sp)
   1a780:	00700793          	li	a5,7
   1a784:	0087c463          	blt	a5,s0,1a78c <_svfprintf_r+0x19b0>
   1a788:	bcdfe06f          	j	19354 <_svfprintf_r+0x578>
   1a78c:	eecff06f          	j	19e78 <_svfprintf_r+0x109c>
   1a790:	10812583          	lw	a1,264(sp)
   1a794:	05813783          	ld	a5,88(sp)
   1a798:	06013683          	ld	a3,96(sp)
   1a79c:	01040413          	add	s0,s0,16
   1a7a0:	00e78733          	add	a4,a5,a4
   1a7a4:	fed43823          	sd	a3,-16(s0)
   1a7a8:	0015869b          	addw	a3,a1,1
   1a7ac:	fef43c23          	sd	a5,-8(s0)
   1a7b0:	10e13823          	sd	a4,272(sp)
   1a7b4:	10d12423          	sw	a3,264(sp)
   1a7b8:	00700593          	li	a1,7
   1a7bc:	3ad5c863          	blt	a1,a3,1ab6c <_svfprintf_r+0x1d90>
   1a7c0:	e00658e3          	bgez	a2,1a5d0 <_svfprintf_r+0x17f4>
   1a7c4:	00022f37          	lui	t5,0x22
   1a7c8:	ff000593          	li	a1,-16
   1a7cc:	40c00cbb          	negw	s9,a2
   1a7d0:	620f0d93          	add	s11,t5,1568 # 22620 <zeroes.0>
   1a7d4:	01000d13          	li	s10,16
   1a7d8:	00700a93          	li	s5,7
   1a7dc:	00b64863          	blt	a2,a1,1a7ec <_svfprintf_r+0x1a10>
   1a7e0:	1410006f          	j	1b120 <_svfprintf_r+0x2344>
   1a7e4:	ff0c8c9b          	addw	s9,s9,-16
   1a7e8:	139d5ce3          	bge	s10,s9,1b120 <_svfprintf_r+0x2344>
   1a7ec:	0016869b          	addw	a3,a3,1
   1a7f0:	01070713          	add	a4,a4,16
   1a7f4:	01b43023          	sd	s11,0(s0)
   1a7f8:	01a43423          	sd	s10,8(s0)
   1a7fc:	10e13823          	sd	a4,272(sp)
   1a800:	10d12423          	sw	a3,264(sp)
   1a804:	01040413          	add	s0,s0,16
   1a808:	fcdadee3          	bge	s5,a3,1a7e4 <_svfprintf_r+0x1a08>
   1a80c:	00013583          	ld	a1,0(sp)
   1a810:	10010613          	add	a2,sp,256
   1a814:	00098513          	mv	a0,s3
   1a818:	6ec030ef          	jal	1df04 <__ssprint_r>
   1a81c:	aa051e63          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   1a820:	11013703          	ld	a4,272(sp)
   1a824:	10812683          	lw	a3,264(sp)
   1a828:	18010413          	add	s0,sp,384
   1a82c:	fb9ff06f          	j	1a7e4 <_svfprintf_r+0x1a08>
   1a830:	200df793          	and	a5,s11,512
   1a834:	0e078c63          	beqz	a5,1a92c <_svfprintf_r+0x1b50>
   1a838:	0ffd7d13          	zext.b	s10,s10
   1a83c:	02e13023          	sd	a4,32(sp)
   1a840:	00100793          	li	a5,1
   1a844:	d4dfe06f          	j	19590 <_svfprintf_r+0x7b4>
   1a848:	20097793          	and	a5,s2,512
   1a84c:	0c078a63          	beqz	a5,1a920 <_svfprintf_r+0x1b44>
   1a850:	0ffd7d13          	zext.b	s10,s10
   1a854:	e2dfe06f          	j	19680 <_svfprintf_r+0x8a4>
   1a858:	20097793          	and	a5,s2,512
   1a85c:	0e078863          	beqz	a5,1a94c <_svfprintf_r+0x1b70>
   1a860:	018d1d1b          	sllw	s10,s10,0x18
   1a864:	418d5d1b          	sraw	s10,s10,0x18
   1a868:	000d0793          	mv	a5,s10
   1a86c:	db5fe06f          	j	19620 <_svfprintf_r+0x844>
   1a870:	20097793          	and	a5,s2,512
   1a874:	0c078663          	beqz	a5,1a940 <_svfprintf_r+0x1b64>
   1a878:	0ffd7d13          	zext.b	s10,s10
   1a87c:	891ff06f          	j	1a10c <_svfprintf_r+0x1330>
   1a880:	0f813783          	ld	a5,248(sp)
   1a884:	2c07cc63          	bltz	a5,1ab5c <_svfprintf_r+0x1d80>
   1a888:	0cf14703          	lbu	a4,207(sp)
   1a88c:	04700793          	li	a5,71
   1a890:	7b97d863          	bge	a5,s9,1b040 <_svfprintf_r+0x2264>
   1a894:	000227b7          	lui	a5,0x22
   1a898:	cf078b13          	add	s6,a5,-784 # 21cf0 <__clzdi2+0x90>
   1a89c:	e79ff06f          	j	1a714 <_svfprintf_r+0x1938>
   1a8a0:	0016059b          	addw	a1,a2,1
   1a8a4:	00ec8733          	add	a4,s9,a4
   1a8a8:	01b43023          	sd	s11,0(s0)
   1a8ac:	01943423          	sd	s9,8(s0)
   1a8b0:	10e13823          	sd	a4,272(sp)
   1a8b4:	10b12423          	sw	a1,264(sp)
   1a8b8:	00700693          	li	a3,7
   1a8bc:	2eb6c463          	blt	a3,a1,1aba4 <_svfprintf_r+0x1dc8>
   1a8c0:	01040413          	add	s0,s0,16
   1a8c4:	00070d93          	mv	s11,a4
   1a8c8:	c58ff06f          	j	19d20 <_svfprintf_r+0xf44>
   1a8cc:	000227b7          	lui	a5,0x22
   1a8d0:	cd878b13          	add	s6,a5,-808 # 21cd8 <__clzdi2+0x78>
   1a8d4:	e41ff06f          	j	1a714 <_svfprintf_r+0x1938>
   1a8d8:	00013583          	ld	a1,0(sp)
   1a8dc:	10010613          	add	a2,sp,256
   1a8e0:	00098513          	mv	a0,s3
   1a8e4:	620030ef          	jal	1df04 <__ssprint_r>
   1a8e8:	9e051863          	bnez	a0,19ad8 <_svfprintf_r+0xcfc>
   1a8ec:	11013d83          	ld	s11,272(sp)
   1a8f0:	18010413          	add	s0,sp,384
   1a8f4:	c14ff06f          	j	19d08 <_svfprintf_r+0xf2c>
   1a8f8:	00600693          	li	a3,6
   1a8fc:	e55ff06f          	j	1a750 <_svfprintf_r+0x1974>
   1a900:	416a8cb3          	sub	s9,s5,s6
   1a904:	40d7863b          	subw	a2,a5,a3
   1a908:	000c879b          	sext.w	a5,s9
   1a90c:	000d8713          	mv	a4,s11
   1a910:	00f65463          	bge	a2,a5,1a918 <_svfprintf_r+0x1b3c>
   1a914:	00060c93          	mv	s9,a2
   1a918:	000c8c9b          	sext.w	s9,s9
   1a91c:	ca8ff06f          	j	19dc4 <_svfprintf_r+0xfe8>
   1a920:	020d1d13          	sll	s10,s10,0x20
   1a924:	020d5d13          	srl	s10,s10,0x20
   1a928:	d59fe06f          	j	19680 <_svfprintf_r+0x8a4>
   1a92c:	020d1d13          	sll	s10,s10,0x20
   1a930:	020d5d13          	srl	s10,s10,0x20
   1a934:	02e13023          	sd	a4,32(sp)
   1a938:	00100793          	li	a5,1
   1a93c:	c55fe06f          	j	19590 <_svfprintf_r+0x7b4>
   1a940:	020d1d13          	sll	s10,s10,0x20
   1a944:	020d5d13          	srl	s10,s10,0x20
   1a948:	fc4ff06f          	j	1a10c <_svfprintf_r+0x1330>
   1a94c:	000d0793          	mv	a5,s10
   1a950:	cd1fe06f          	j	19620 <_svfprintf_r+0x844>
   1a954:	01013783          	ld	a5,16(sp)
   1a958:	00f71023          	sh	a5,0(a4)
   1a95c:	db9fe06f          	j	19714 <_svfprintf_r+0x938>
   1a960:	00030913          	mv	s2,t1
   1a964:	00200693          	li	a3,2
   1a968:	00090713          	mv	a4,s2
   1a96c:	0e810893          	add	a7,sp,232
   1a970:	0dc10813          	add	a6,sp,220
   1a974:	0d810793          	add	a5,sp,216
   1a978:	000b8593          	mv	a1,s7
   1a97c:	000c0613          	mv	a2,s8
   1a980:	00098513          	mv	a0,s3
   1a984:	02613823          	sd	t1,48(sp)
   1a988:	a6dfa0ef          	jal	153f4 <_ldtoa_r>
   1a98c:	06700713          	li	a4,103
   1a990:	03013303          	ld	t1,48(sp)
   1a994:	00050b13          	mv	s6,a0
   1a998:	4aec8663          	beq	s9,a4,1ae44 <_svfprintf_r+0x2068>
   1a99c:	04700713          	li	a4,71
   1a9a0:	4aec8263          	beq	s9,a4,1ae44 <_svfprintf_r+0x2068>
   1a9a4:	fdfcfa93          	and	s5,s9,-33
   1a9a8:	04600713          	li	a4,70
   1a9ac:	01250d33          	add	s10,a0,s2
   1a9b0:	5eea8463          	beq	s5,a4,1af98 <_svfprintf_r+0x21bc>
   1a9b4:	000c0593          	mv	a1,s8
   1a9b8:	00000613          	li	a2,0
   1a9bc:	00000693          	li	a3,0
   1a9c0:	000b8513          	mv	a0,s7
   1a9c4:	02613823          	sd	t1,48(sp)
   1a9c8:	319050ef          	jal	204e0 <__eqtf2>
   1a9cc:	03013303          	ld	t1,48(sp)
   1a9d0:	000d0c13          	mv	s8,s10
   1a9d4:	02050263          	beqz	a0,1a9f8 <_svfprintf_r+0x1c1c>
   1a9d8:	0e813c03          	ld	s8,232(sp)
   1a9dc:	01ac7e63          	bgeu	s8,s10,1a9f8 <_svfprintf_r+0x1c1c>
   1a9e0:	03000693          	li	a3,48
   1a9e4:	001c0793          	add	a5,s8,1
   1a9e8:	0ef13423          	sd	a5,232(sp)
   1a9ec:	00dc0023          	sb	a3,0(s8)
   1a9f0:	0e813c03          	ld	s8,232(sp)
   1a9f4:	ffac68e3          	bltu	s8,s10,1a9e4 <_svfprintf_r+0x1c08>
   1a9f8:	416c07bb          	subw	a5,s8,s6
   1a9fc:	02f13c23          	sd	a5,56(sp)
   1aa00:	0d812703          	lw	a4,216(sp)
   1aa04:	04700693          	li	a3,71
   1aa08:	02e13823          	sd	a4,48(sp)
   1aa0c:	3ada8463          	beq	s5,a3,1adb4 <_svfprintf_r+0x1fd8>
   1aa10:	04600693          	li	a3,70
   1aa14:	68da8263          	beq	s5,a3,1b098 <_svfprintf_r+0x22bc>
   1aa18:	fff70d1b          	addw	s10,a4,-1
   1aa1c:	0da12c23          	sw	s10,216(sp)
   1aa20:	06100693          	li	a3,97
   1aa24:	0cdc8ee3          	beq	s9,a3,1b300 <_svfprintf_r+0x2524>
   1aa28:	04100613          	li	a2,65
   1aa2c:	05000693          	li	a3,80
   1aa30:	3acc9063          	bne	s9,a2,1add0 <_svfprintf_r+0x1ff4>
   1aa34:	00100613          	li	a2,1
   1aa38:	0ed10023          	sb	a3,224(sp)
   1aa3c:	02b00693          	li	a3,43
   1aa40:	000d5863          	bgez	s10,1aa50 <_svfprintf_r+0x1c74>
   1aa44:	00100d13          	li	s10,1
   1aa48:	40ed0d3b          	subw	s10,s10,a4
   1aa4c:	02d00693          	li	a3,45
   1aa50:	0ed100a3          	sb	a3,225(sp)
   1aa54:	00900713          	li	a4,9
   1aa58:	71a75863          	bge	a4,s10,1b168 <_svfprintf_r+0x238c>
   1aa5c:	0ef10913          	add	s2,sp,239
   1aa60:	00090a93          	mv	s5,s2
   1aa64:	06300b93          	li	s7,99
   1aa68:	00a00593          	li	a1,10
   1aa6c:	000d0513          	mv	a0,s10
   1aa70:	1b4070ef          	jal	21c24 <__moddi3>
   1aa74:	0305079b          	addw	a5,a0,48
   1aa78:	fefa8fa3          	sb	a5,-1(s5)
   1aa7c:	000d0513          	mv	a0,s10
   1aa80:	00a00593          	li	a1,10
   1aa84:	000d0c13          	mv	s8,s10
   1aa88:	118070ef          	jal	21ba0 <__divdi3>
   1aa8c:	000a8d93          	mv	s11,s5
   1aa90:	00050d1b          	sext.w	s10,a0
   1aa94:	fffa8a93          	add	s5,s5,-1
   1aa98:	fd8bc8e3          	blt	s7,s8,1aa68 <_svfprintf_r+0x1c8c>
   1aa9c:	030d0d1b          	addw	s10,s10,48
   1aaa0:	ffed8713          	add	a4,s11,-2
   1aaa4:	ffaa8fa3          	sb	s10,-1(s5)
   1aaa8:	072770e3          	bgeu	a4,s2,1b308 <_svfprintf_r+0x252c>
   1aaac:	0e210693          	add	a3,sp,226
   1aab0:	00074783          	lbu	a5,0(a4)
   1aab4:	00170713          	add	a4,a4,1
   1aab8:	00168693          	add	a3,a3,1
   1aabc:	fef68fa3          	sb	a5,-1(a3)
   1aac0:	ff2718e3          	bne	a4,s2,1aab0 <_svfprintf_r+0x1cd4>
   1aac4:	0f110713          	add	a4,sp,241
   1aac8:	0e210793          	add	a5,sp,226
   1aacc:	41b70733          	sub	a4,a4,s11
   1aad0:	00e78733          	add	a4,a5,a4
   1aad4:	0e010693          	add	a3,sp,224
   1aad8:	40d707bb          	subw	a5,a4,a3
   1aadc:	06f13823          	sd	a5,112(sp)
   1aae0:	07013703          	ld	a4,112(sp)
   1aae4:	03813783          	ld	a5,56(sp)
   1aae8:	00100613          	li	a2,1
   1aaec:	00f70d3b          	addw	s10,a4,a5
   1aaf0:	000d0713          	mv	a4,s10
   1aaf4:	6ef65c63          	bge	a2,a5,1b1ec <_svfprintf_r+0x2410>
   1aaf8:	05813783          	ld	a5,88(sp)
   1aafc:	00f70d3b          	addw	s10,a4,a5
   1ab00:	04013783          	ld	a5,64(sp)
   1ab04:	fffd4813          	not	a6,s10
   1ab08:	43f85813          	sra	a6,a6,0x3f
   1ab0c:	bff7f913          	and	s2,a5,-1025
   1ab10:	0009091b          	sext.w	s2,s2
   1ab14:	010d7833          	and	a6,s10,a6
   1ab18:	10096913          	or	s2,s2,256
   1ab1c:	00080c1b          	sext.w	s8,a6
   1ab20:	04013423          	sd	zero,72(sp)
   1ab24:	04013023          	sd	zero,64(sp)
   1ab28:	02013823          	sd	zero,48(sp)
   1ab2c:	09813783          	ld	a5,152(sp)
   1ab30:	2a078663          	beqz	a5,1addc <_svfprintf_r+0x2000>
   1ab34:	02d00713          	li	a4,45
   1ab38:	0ce107a3          	sb	a4,207(sp)
   1ab3c:	00000313          	li	t1,0
   1ab40:	001c0c1b          	addw	s8,s8,1
   1ab44:	c8cfe06f          	j	18fd0 <_svfprintf_r+0x1f4>
   1ab48:	00013583          	ld	a1,0(sp)
   1ab4c:	05013503          	ld	a0,80(sp)
   1ab50:	10010613          	add	a2,sp,256
   1ab54:	3b0030ef          	jal	1df04 <__ssprint_r>
   1ab58:	dacfe06f          	j	19104 <_svfprintf_r+0x328>
   1ab5c:	02d00793          	li	a5,45
   1ab60:	0cf107a3          	sb	a5,207(sp)
   1ab64:	02d00713          	li	a4,45
   1ab68:	d25ff06f          	j	1a88c <_svfprintf_r+0x1ab0>
   1ab6c:	00013583          	ld	a1,0(sp)
   1ab70:	10010613          	add	a2,sp,256
   1ab74:	00098513          	mv	a0,s3
   1ab78:	38c030ef          	jal	1df04 <__ssprint_r>
   1ab7c:	00050463          	beqz	a0,1ab84 <_svfprintf_r+0x1da8>
   1ab80:	f59fe06f          	j	19ad8 <_svfprintf_r+0xcfc>
   1ab84:	0d812603          	lw	a2,216(sp)
   1ab88:	11013703          	ld	a4,272(sp)
   1ab8c:	10812683          	lw	a3,264(sp)
   1ab90:	18010413          	add	s0,sp,384
   1ab94:	a2065ee3          	bgez	a2,1a5d0 <_svfprintf_r+0x17f4>
   1ab98:	c2dff06f          	j	1a7c4 <_svfprintf_r+0x19e8>
   1ab9c:	00600313          	li	t1,6
   1aba0:	e88fe06f          	j	19228 <_svfprintf_r+0x44c>
   1aba4:	00013583          	ld	a1,0(sp)
   1aba8:	10010613          	add	a2,sp,256
   1abac:	00098513          	mv	a0,s3
   1abb0:	354030ef          	jal	1df04 <__ssprint_r>
   1abb4:	00050463          	beqz	a0,1abbc <_svfprintf_r+0x1de0>
   1abb8:	f21fe06f          	j	19ad8 <_svfprintf_r+0xcfc>
   1abbc:	11013d83          	ld	s11,272(sp)
   1abc0:	18010413          	add	s0,sp,384
   1abc4:	95cff06f          	j	19d20 <_svfprintf_r+0xf44>
   1abc8:	0013091b          	addw	s2,t1,1 # ffffffff80000001 <__BSS_END__+0xffffffff7ffdb219>
   1abcc:	00200693          	li	a3,2
   1abd0:	d99ff06f          	j	1a968 <_svfprintf_r+0x1b8c>
   1abd4:	00030913          	mv	s2,t1
   1abd8:	00300693          	li	a3,3
   1abdc:	d8dff06f          	j	1a968 <_svfprintf_r+0x1b8c>
   1abe0:	000c0593          	mv	a1,s8
   1abe4:	000b8513          	mv	a0,s7
   1abe8:	02613823          	sd	t1,48(sp)
   1abec:	591060ef          	jal	2197c <__trunctfdf2>
   1abf0:	0d810593          	add	a1,sp,216
   1abf4:	b5dfd0ef          	jal	18750 <frexp>
   1abf8:	495060ef          	jal	2188c <__extenddftf2>
   1abfc:	00022737          	lui	a4,0x22
   1ac00:	f6873683          	ld	a3,-152(a4) # 21f68 <blanks.1+0x20>
   1ac04:	00000613          	li	a2,0
   1ac08:	395050ef          	jal	2079c <__multf3>
   1ac0c:	00000613          	li	a2,0
   1ac10:	00000693          	li	a3,0
   1ac14:	00050d93          	mv	s11,a0
   1ac18:	00058913          	mv	s2,a1
   1ac1c:	0c5050ef          	jal	204e0 <__eqtf2>
   1ac20:	03013303          	ld	t1,48(sp)
   1ac24:	00051663          	bnez	a0,1ac30 <_svfprintf_r+0x1e54>
   1ac28:	00100713          	li	a4,1
   1ac2c:	0ce12c23          	sw	a4,216(sp)
   1ac30:	00022737          	lui	a4,0x22
   1ac34:	cf870793          	add	a5,a4,-776 # 21cf8 <__clzdi2+0x98>
   1ac38:	02f13c23          	sd	a5,56(sp)
   1ac3c:	000226b7          	lui	a3,0x22
   1ac40:	f786b783          	ld	a5,-136(a3) # 21f78 <blanks.1+0x30>
   1ac44:	02031713          	sll	a4,t1,0x20
   1ac48:	02075713          	srl	a4,a4,0x20
   1ac4c:	00170713          	add	a4,a4,1
   1ac50:	02f13823          	sd	a5,48(sp)
   1ac54:	0003061b          	sext.w	a2,t1
   1ac58:	00eb07b3          	add	a5,s6,a4
   1ac5c:	04913423          	sd	s1,72(sp)
   1ac60:	0b413023          	sd	s4,160(sp)
   1ac64:	0a813823          	sd	s0,176(sp)
   1ac68:	0ac13c23          	sd	a2,184(sp)
   1ac6c:	03813403          	ld	s0,56(sp)
   1ac70:	00078493          	mv	s1,a5
   1ac74:	0a613423          	sd	t1,168(sp)
   1ac78:	000b0a13          	mv	s4,s6
   1ac7c:	00098b93          	mv	s7,s3
   1ac80:	000b0d13          	mv	s10,s6
   1ac84:	0140006f          	j	1ac98 <_svfprintf_r+0x1ebc>
   1ac88:	00000613          	li	a2,0
   1ac8c:	00000693          	li	a3,0
   1ac90:	051050ef          	jal	204e0 <__eqtf2>
   1ac94:	56050463          	beqz	a0,1b1fc <_svfprintf_r+0x2420>
   1ac98:	03013683          	ld	a3,48(sp)
   1ac9c:	00000613          	li	a2,0
   1aca0:	000d8513          	mv	a0,s11
   1aca4:	00090593          	mv	a1,s2
   1aca8:	2f5050ef          	jal	2079c <__multf3>
   1acac:	00058913          	mv	s2,a1
   1acb0:	00050993          	mv	s3,a0
   1acb4:	2e9060ef          	jal	2179c <__fixtfsi>
   1acb8:	00050c1b          	sext.w	s8,a0
   1acbc:	000c0513          	mv	a0,s8
   1acc0:	345060ef          	jal	21804 <__floatsitf>
   1acc4:	00058693          	mv	a3,a1
   1acc8:	00050613          	mv	a2,a0
   1accc:	00090593          	mv	a1,s2
   1acd0:	00098513          	mv	a0,s3
   1acd4:	214060ef          	jal	20ee8 <__subtf3>
   1acd8:	01840733          	add	a4,s0,s8
   1acdc:	00074683          	lbu	a3,0(a4)
   1ace0:	000a0993          	mv	s3,s4
   1ace4:	001a0a13          	add	s4,s4,1
   1ace8:	feda0fa3          	sb	a3,-1(s4)
   1acec:	00050a93          	mv	s5,a0
   1acf0:	00058b13          	mv	s6,a1
   1acf4:	00050d93          	mv	s11,a0
   1acf8:	00058913          	mv	s2,a1
   1acfc:	f94496e3          	bne	s1,s4,1ac88 <_svfprintf_r+0x1eac>
   1ad00:	000a0a93          	mv	s5,s4
   1ad04:	04813483          	ld	s1,72(sp)
   1ad08:	0a813303          	ld	t1,168(sp)
   1ad0c:	0b013403          	ld	s0,176(sp)
   1ad10:	0a013a03          	ld	s4,160(sp)
   1ad14:	03313823          	sd	s3,48(sp)
   1ad18:	000d0b13          	mv	s6,s10
   1ad1c:	000b8993          	mv	s3,s7
   1ad20:	00050d13          	mv	s10,a0
   1ad24:	00058b93          	mv	s7,a1
   1ad28:	fff00d93          	li	s11,-1
   1ad2c:	000226b7          	lui	a3,0x22
   1ad30:	f886b903          	ld	s2,-120(a3) # 21f88 <blanks.1+0x40>
   1ad34:	00000613          	li	a2,0
   1ad38:	000d0513          	mv	a0,s10
   1ad3c:	00090693          	mv	a3,s2
   1ad40:	000b8593          	mv	a1,s7
   1ad44:	04613423          	sd	t1,72(sp)
   1ad48:	03d050ef          	jal	20584 <__getf2>
   1ad4c:	04813303          	ld	t1,72(sp)
   1ad50:	36a04663          	bgtz	a0,1b0bc <_svfprintf_r+0x22e0>
   1ad54:	00000613          	li	a2,0
   1ad58:	00090693          	mv	a3,s2
   1ad5c:	000d0513          	mv	a0,s10
   1ad60:	000b8593          	mv	a1,s7
   1ad64:	77c050ef          	jal	204e0 <__eqtf2>
   1ad68:	04813303          	ld	t1,72(sp)
   1ad6c:	00051663          	bnez	a0,1ad78 <_svfprintf_r+0x1f9c>
   1ad70:	001c7c13          	and	s8,s8,1
   1ad74:	340c1463          	bnez	s8,1b0bc <_svfprintf_r+0x22e0>
   1ad78:	001d8c1b          	addw	s8,s11,1
   1ad7c:	018a8c33          	add	s8,s5,s8
   1ad80:	03000693          	li	a3,48
   1ad84:	380dc263          	bltz	s11,1b108 <_svfprintf_r+0x232c>
   1ad88:	001a8a93          	add	s5,s5,1
   1ad8c:	feda8fa3          	sb	a3,-1(s5)
   1ad90:	ff5c1ce3          	bne	s8,s5,1ad88 <_svfprintf_r+0x1fac>
   1ad94:	416c07bb          	subw	a5,s8,s6
   1ad98:	02f13c23          	sd	a5,56(sp)
   1ad9c:	fdfcfa93          	and	s5,s9,-33
   1ada0:	c61ff06f          	j	1aa00 <_svfprintf_r+0x1c24>
   1ada4:	0e813c03          	ld	s8,232(sp)
   1ada8:	0d812703          	lw	a4,216(sp)
   1adac:	416c07bb          	subw	a5,s8,s6
   1adb0:	02f13c23          	sd	a5,56(sp)
   1adb4:	ffd00693          	li	a3,-3
   1adb8:	02e13823          	sd	a4,48(sp)
   1adbc:	00d74463          	blt	a4,a3,1adc4 <_svfprintf_r+0x1fe8>
   1adc0:	02e35863          	bge	t1,a4,1adf0 <_svfprintf_r+0x2014>
   1adc4:	fff70d1b          	addw	s10,a4,-1
   1adc8:	ffec8c9b          	addw	s9,s9,-2
   1adcc:	0da12c23          	sw	s10,216(sp)
   1add0:	0ffcf693          	zext.b	a3,s9
   1add4:	00000613          	li	a2,0
   1add8:	c61ff06f          	j	1aa38 <_svfprintf_r+0x1c5c>
   1addc:	0cf14703          	lbu	a4,207(sp)
   1ade0:	00000313          	li	t1,0
   1ade4:	00070463          	beqz	a4,1adec <_svfprintf_r+0x2010>
   1ade8:	e64fe06f          	j	1944c <_svfprintf_r+0x670>
   1adec:	9e4fe06f          	j	18fd0 <_svfprintf_r+0x1f4>
   1adf0:	03813783          	ld	a5,56(sp)
   1adf4:	24f74c63          	blt	a4,a5,1b04c <_svfprintf_r+0x2270>
   1adf8:	04013783          	ld	a5,64(sp)
   1adfc:	00070d13          	mv	s10,a4
   1ae00:	0017f613          	and	a2,a5,1
   1ae04:	00060663          	beqz	a2,1ae10 <_svfprintf_r+0x2034>
   1ae08:	05813783          	ld	a5,88(sp)
   1ae0c:	00e78d3b          	addw	s10,a5,a4
   1ae10:	04013783          	ld	a5,64(sp)
   1ae14:	4007f613          	and	a2,a5,1024
   1ae18:	00060463          	beqz	a2,1ae20 <_svfprintf_r+0x2044>
   1ae1c:	40e04c63          	bgtz	a4,1b234 <_svfprintf_r+0x2458>
   1ae20:	fffd4813          	not	a6,s10
   1ae24:	43f85813          	sra	a6,a6,0x3f
   1ae28:	09013903          	ld	s2,144(sp)
   1ae2c:	010d7833          	and	a6,s10,a6
   1ae30:	00080c1b          	sext.w	s8,a6
   1ae34:	06700c93          	li	s9,103
   1ae38:	04013423          	sd	zero,72(sp)
   1ae3c:	04013023          	sd	zero,64(sp)
   1ae40:	cedff06f          	j	1ab2c <_svfprintf_r+0x1d50>
   1ae44:	04013783          	ld	a5,64(sp)
   1ae48:	0017f713          	and	a4,a5,1
   1ae4c:	f4070ce3          	beqz	a4,1ada4 <_svfprintf_r+0x1fc8>
   1ae50:	012b0d33          	add	s10,s6,s2
   1ae54:	04700a93          	li	s5,71
   1ae58:	b5dff06f          	j	1a9b4 <_svfprintf_r+0x1bd8>
   1ae5c:	10010613          	add	a2,sp,256
   1ae60:	000b8593          	mv	a1,s7
   1ae64:	00098513          	mv	a0,s3
   1ae68:	09c030ef          	jal	1df04 <__ssprint_r>
   1ae6c:	00050463          	beqz	a0,1ae74 <_svfprintf_r+0x2098>
   1ae70:	c69fe06f          	j	19ad8 <_svfprintf_r+0xcfc>
   1ae74:	00094683          	lbu	a3,0(s2)
   1ae78:	11013703          	ld	a4,272(sp)
   1ae7c:	18010413          	add	s0,sp,384
   1ae80:	01000893          	li	a7,16
   1ae84:	00700313          	li	t1,7
   1ae88:	00da0a33          	add	s4,s4,a3
   1ae8c:	cb0ff06f          	j	1a33c <_svfprintf_r+0x1560>
   1ae90:	07800713          	li	a4,120
   1ae94:	00296793          	or	a5,s2,2
   1ae98:	03000693          	li	a3,48
   1ae9c:	0007879b          	sext.w	a5,a5
   1aea0:	0ce108a3          	sb	a4,209(sp)
   1aea4:	0cd10823          	sb	a3,208(sp)
   1aea8:	06300713          	li	a4,99
   1aeac:	04f13023          	sd	a5,64(sp)
   1aeb0:	00013c23          	sd	zero,24(sp)
   1aeb4:	11810b13          	add	s6,sp,280
   1aeb8:	2e674063          	blt	a4,t1,1b198 <_svfprintf_r+0x23bc>
   1aebc:	10296913          	or	s2,s2,258
   1aec0:	0f813c03          	ld	s8,248(sp)
   1aec4:	0009079b          	sext.w	a5,s2
   1aec8:	08f13823          	sd	a5,144(sp)
   1aecc:	08013c23          	sd	zero,152(sp)
   1aed0:	0f013b83          	ld	s7,240(sp)
   1aed4:	060c4a63          	bltz	s8,1af48 <_svfprintf_r+0x216c>
   1aed8:	06100713          	li	a4,97
   1aedc:	00ec8463          	beq	s9,a4,1aee4 <_svfprintf_r+0x2108>
   1aee0:	b70fe06f          	j	19250 <_svfprintf_r+0x474>
   1aee4:	000c0593          	mv	a1,s8
   1aee8:	000b8513          	mv	a0,s7
   1aeec:	02613823          	sd	t1,48(sp)
   1aef0:	28d060ef          	jal	2197c <__trunctfdf2>
   1aef4:	0d810593          	add	a1,sp,216
   1aef8:	859fd0ef          	jal	18750 <frexp>
   1aefc:	191060ef          	jal	2188c <__extenddftf2>
   1af00:	00022737          	lui	a4,0x22
   1af04:	f6873683          	ld	a3,-152(a4) # 21f68 <blanks.1+0x20>
   1af08:	00000613          	li	a2,0
   1af0c:	091050ef          	jal	2079c <__multf3>
   1af10:	00000613          	li	a2,0
   1af14:	00000693          	li	a3,0
   1af18:	00050d93          	mv	s11,a0
   1af1c:	00058913          	mv	s2,a1
   1af20:	5c0050ef          	jal	204e0 <__eqtf2>
   1af24:	03013303          	ld	t1,48(sp)
   1af28:	00051663          	bnez	a0,1af34 <_svfprintf_r+0x2158>
   1af2c:	00100713          	li	a4,1
   1af30:	0ce12c23          	sw	a4,216(sp)
   1af34:	00022737          	lui	a4,0x22
   1af38:	d1070793          	add	a5,a4,-752 # 21d10 <__clzdi2+0xb0>
   1af3c:	02f13c23          	sd	a5,56(sp)
   1af40:	cfdff06f          	j	1ac3c <_svfprintf_r+0x1e60>
   1af44:	00013c23          	sd	zero,24(sp)
   1af48:	fff00713          	li	a4,-1
   1af4c:	03f71713          	sll	a4,a4,0x3f
   1af50:	02d00793          	li	a5,45
   1af54:	00ec4c33          	xor	s8,s8,a4
   1af58:	08f13c23          	sd	a5,152(sp)
   1af5c:	f7dff06f          	j	1aed8 <_svfprintf_r+0x20fc>
   1af60:	02d00793          	li	a5,45
   1af64:	0cf107a3          	sb	a5,207(sp)
   1af68:	02d00713          	li	a4,45
   1af6c:	f98ff06f          	j	1a704 <_svfprintf_r+0x1928>
   1af70:	00013583          	ld	a1,0(sp)
   1af74:	10010613          	add	a2,sp,256
   1af78:	00098513          	mv	a0,s3
   1af7c:	789020ef          	jal	1df04 <__ssprint_r>
   1af80:	00050463          	beqz	a0,1af88 <_svfprintf_r+0x21ac>
   1af84:	b55fe06f          	j	19ad8 <_svfprintf_r+0xcfc>
   1af88:	0d812683          	lw	a3,216(sp)
   1af8c:	11013703          	ld	a4,272(sp)
   1af90:	18010413          	add	s0,sp,384
   1af94:	de5fe06f          	j	19d78 <_svfprintf_r+0xf9c>
   1af98:	00054683          	lbu	a3,0(a0)
   1af9c:	03000713          	li	a4,48
   1afa0:	00e68863          	beq	a3,a4,1afb0 <_svfprintf_r+0x21d4>
   1afa4:	0d812683          	lw	a3,216(sp)
   1afa8:	00dd0d33          	add	s10,s10,a3
   1afac:	a09ff06f          	j	1a9b4 <_svfprintf_r+0x1bd8>
   1afb0:	00000613          	li	a2,0
   1afb4:	00000693          	li	a3,0
   1afb8:	000b8513          	mv	a0,s7
   1afbc:	000c0593          	mv	a1,s8
   1afc0:	02613823          	sd	t1,48(sp)
   1afc4:	51c050ef          	jal	204e0 <__eqtf2>
   1afc8:	03013303          	ld	t1,48(sp)
   1afcc:	fc050ce3          	beqz	a0,1afa4 <_svfprintf_r+0x21c8>
   1afd0:	00100713          	li	a4,1
   1afd4:	412706bb          	subw	a3,a4,s2
   1afd8:	0cd12c23          	sw	a3,216(sp)
   1afdc:	00dd0d33          	add	s10,s10,a3
   1afe0:	9d5ff06f          	j	1a9b4 <_svfprintf_r+0x1bd8>
   1afe4:	0cf14703          	lbu	a4,207(sp)
   1afe8:	03513023          	sd	s5,32(sp)
   1afec:	04013423          	sd	zero,72(sp)
   1aff0:	04013023          	sd	zero,64(sp)
   1aff4:	02013823          	sd	zero,48(sp)
   1aff8:	00030c13          	mv	s8,t1
   1affc:	00030d13          	mv	s10,t1
   1b000:	00000313          	li	t1,0
   1b004:	00070463          	beqz	a4,1b00c <_svfprintf_r+0x2230>
   1b008:	c44fe06f          	j	1944c <_svfprintf_r+0x670>
   1b00c:	fc5fd06f          	j	18fd0 <_svfprintf_r+0x1f4>
   1b010:	00013583          	ld	a1,0(sp)
   1b014:	10010613          	add	a2,sp,256
   1b018:	00098513          	mv	a0,s3
   1b01c:	6e9020ef          	jal	1df04 <__ssprint_r>
   1b020:	00050463          	beqz	a0,1b028 <_svfprintf_r+0x224c>
   1b024:	ab5fe06f          	j	19ad8 <_svfprintf_r+0xcfc>
   1b028:	0d812603          	lw	a2,216(sp)
   1b02c:	03813783          	ld	a5,56(sp)
   1b030:	11013703          	ld	a4,272(sp)
   1b034:	18010413          	add	s0,sp,384
   1b038:	40c7863b          	subw	a2,a5,a2
   1b03c:	d89fe06f          	j	19dc4 <_svfprintf_r+0xfe8>
   1b040:	000227b7          	lui	a5,0x22
   1b044:	ce878b13          	add	s6,a5,-792 # 21ce8 <__clzdi2+0x88>
   1b048:	eccff06f          	j	1a714 <_svfprintf_r+0x1938>
   1b04c:	05813783          	ld	a5,88(sp)
   1b050:	03813703          	ld	a4,56(sp)
   1b054:	06700c93          	li	s9,103
   1b058:	00e78d3b          	addw	s10,a5,a4
   1b05c:	03013783          	ld	a5,48(sp)
   1b060:	26f05463          	blez	a5,1b2c8 <_svfprintf_r+0x24ec>
   1b064:	04013783          	ld	a5,64(sp)
   1b068:	4007f713          	and	a4,a5,1024
   1b06c:	1c071663          	bnez	a4,1b238 <_svfprintf_r+0x245c>
   1b070:	fffd4813          	not	a6,s10
   1b074:	43f85813          	sra	a6,a6,0x3f
   1b078:	010d7833          	and	a6,s10,a6
   1b07c:	09013903          	ld	s2,144(sp)
   1b080:	00080c1b          	sext.w	s8,a6
   1b084:	db5ff06f          	j	1ae38 <_svfprintf_r+0x205c>
   1b088:	05800713          	li	a4,88
   1b08c:	e09ff06f          	j	1ae94 <_svfprintf_r+0x20b8>
   1b090:	00090d93          	mv	s11,s2
   1b094:	db4fe06f          	j	19648 <_svfprintf_r+0x86c>
   1b098:	04013783          	ld	a5,64(sp)
   1b09c:	0017f713          	and	a4,a5,1
   1b0a0:	03013783          	ld	a5,48(sp)
   1b0a4:	00e36733          	or	a4,t1,a4
   1b0a8:	26f05663          	blez	a5,1b314 <_svfprintf_r+0x2538>
   1b0ac:	24071063          	bnez	a4,1b2ec <_svfprintf_r+0x2510>
   1b0b0:	03013d03          	ld	s10,48(sp)
   1b0b4:	06600c93          	li	s9,102
   1b0b8:	fadff06f          	j	1b064 <_svfprintf_r+0x2288>
   1b0bc:	03013783          	ld	a5,48(sp)
   1b0c0:	000a8693          	mv	a3,s5
   1b0c4:	0ef13423          	sd	a5,232(sp)
   1b0c8:	03813783          	ld	a5,56(sp)
   1b0cc:	fffac603          	lbu	a2,-1(s5)
   1b0d0:	00f7c583          	lbu	a1,15(a5)
   1b0d4:	02c59063          	bne	a1,a2,1b0f4 <_svfprintf_r+0x2318>
   1b0d8:	03000513          	li	a0,48
   1b0dc:	fea68fa3          	sb	a0,-1(a3)
   1b0e0:	0e813683          	ld	a3,232(sp)
   1b0e4:	fff68793          	add	a5,a3,-1
   1b0e8:	0ef13423          	sd	a5,232(sp)
   1b0ec:	fff6c603          	lbu	a2,-1(a3)
   1b0f0:	fec586e3          	beq	a1,a2,1b0dc <_svfprintf_r+0x2300>
   1b0f4:	0016059b          	addw	a1,a2,1
   1b0f8:	03900513          	li	a0,57
   1b0fc:	0ff5f593          	zext.b	a1,a1
   1b100:	00a60863          	beq	a2,a0,1b110 <_svfprintf_r+0x2334>
   1b104:	feb68fa3          	sb	a1,-1(a3)
   1b108:	000a8c13          	mv	s8,s5
   1b10c:	c89ff06f          	j	1ad94 <_svfprintf_r+0x1fb8>
   1b110:	03813783          	ld	a5,56(sp)
   1b114:	00a7c583          	lbu	a1,10(a5)
   1b118:	feb68fa3          	sb	a1,-1(a3)
   1b11c:	fedff06f          	j	1b108 <_svfprintf_r+0x232c>
   1b120:	0016869b          	addw	a3,a3,1
   1b124:	01970733          	add	a4,a4,s9
   1b128:	01b43023          	sd	s11,0(s0)
   1b12c:	01943423          	sd	s9,8(s0)
   1b130:	10e13823          	sd	a4,272(sp)
   1b134:	10d12423          	sw	a3,264(sp)
   1b138:	00700613          	li	a2,7
   1b13c:	c8d65863          	bge	a2,a3,1a5cc <_svfprintf_r+0x17f0>
   1b140:	00013583          	ld	a1,0(sp)
   1b144:	10010613          	add	a2,sp,256
   1b148:	00098513          	mv	a0,s3
   1b14c:	5b9020ef          	jal	1df04 <__ssprint_r>
   1b150:	00050463          	beqz	a0,1b158 <_svfprintf_r+0x237c>
   1b154:	985fe06f          	j	19ad8 <_svfprintf_r+0xcfc>
   1b158:	11013703          	ld	a4,272(sp)
   1b15c:	10812683          	lw	a3,264(sp)
   1b160:	18010413          	add	s0,sp,384
   1b164:	c6cff06f          	j	1a5d0 <_svfprintf_r+0x17f4>
   1b168:	0e210713          	add	a4,sp,226
   1b16c:	00061863          	bnez	a2,1b17c <_svfprintf_r+0x23a0>
   1b170:	03000713          	li	a4,48
   1b174:	0ee10123          	sb	a4,226(sp)
   1b178:	0e310713          	add	a4,sp,227
   1b17c:	20010793          	add	a5,sp,512
   1b180:	40f706b3          	sub	a3,a4,a5
   1b184:	030d0d1b          	addw	s10,s10,48
   1b188:	1216879b          	addw	a5,a3,289
   1b18c:	01a70023          	sb	s10,0(a4)
   1b190:	06f13823          	sd	a5,112(sp)
   1b194:	94dff06f          	j	1aae0 <_svfprintf_r+0x1d04>
   1b198:	0013059b          	addw	a1,t1,1
   1b19c:	00098513          	mv	a0,s3
   1b1a0:	00613c23          	sd	t1,24(sp)
   1b1a4:	8fdfb0ef          	jal	16aa0 <_malloc_r>
   1b1a8:	01813303          	ld	t1,24(sp)
   1b1ac:	00050b13          	mv	s6,a0
   1b1b0:	1e050063          	beqz	a0,1b390 <_svfprintf_r+0x25b4>
   1b1b4:	00a13c23          	sd	a0,24(sp)
   1b1b8:	d05ff06f          	j	1aebc <_svfprintf_r+0x20e0>
   1b1bc:	00f72023          	sw	a5,0(a4)
   1b1c0:	d54fe06f          	j	19714 <_svfprintf_r+0x938>
   1b1c4:	05013703          	ld	a4,80(sp)
   1b1c8:	00c00793          	li	a5,12
   1b1cc:	00f72023          	sw	a5,0(a4)
   1b1d0:	fff00793          	li	a5,-1
   1b1d4:	00f13823          	sd	a5,16(sp)
   1b1d8:	f41fd06f          	j	19118 <_svfprintf_r+0x33c>
   1b1dc:	00030463          	beqz	t1,1b1e4 <_svfprintf_r+0x2408>
   1b1e0:	848fe06f          	j	19228 <_svfprintf_r+0x44c>
   1b1e4:	00100313          	li	t1,1
   1b1e8:	840fe06f          	j	19228 <_svfprintf_r+0x44c>
   1b1ec:	04013783          	ld	a5,64(sp)
   1b1f0:	0017f613          	and	a2,a5,1
   1b1f4:	900606e3          	beqz	a2,1ab00 <_svfprintf_r+0x1d24>
   1b1f8:	901ff06f          	j	1aaf8 <_svfprintf_r+0x1d1c>
   1b1fc:	0b813603          	ld	a2,184(sp)
   1b200:	03313823          	sd	s3,48(sp)
   1b204:	000b8993          	mv	s3,s7
   1b208:	000b0b93          	mv	s7,s6
   1b20c:	000d0b13          	mv	s6,s10
   1b210:	00cb063b          	addw	a2,s6,a2
   1b214:	000a8d13          	mv	s10,s5
   1b218:	000a0a93          	mv	s5,s4
   1b21c:	04813483          	ld	s1,72(sp)
   1b220:	0a813303          	ld	t1,168(sp)
   1b224:	0b013403          	ld	s0,176(sp)
   1b228:	0a013a03          	ld	s4,160(sp)
   1b22c:	41560dbb          	subw	s11,a2,s5
   1b230:	afdff06f          	j	1ad2c <_svfprintf_r+0x1f50>
   1b234:	06700c93          	li	s9,103
   1b238:	07813683          	ld	a3,120(sp)
   1b23c:	0ff00613          	li	a2,255
   1b240:	0006c703          	lbu	a4,0(a3)
   1b244:	14c70063          	beq	a4,a2,1b384 <_svfprintf_r+0x25a8>
   1b248:	03013783          	ld	a5,48(sp)
   1b24c:	00000813          	li	a6,0
   1b250:	00000513          	li	a0,0
   1b254:	0ff00593          	li	a1,255
   1b258:	0007061b          	sext.w	a2,a4
   1b25c:	00f75e63          	bge	a4,a5,1b278 <_svfprintf_r+0x249c>
   1b260:	0016c703          	lbu	a4,1(a3)
   1b264:	40c787bb          	subw	a5,a5,a2
   1b268:	04070a63          	beqz	a4,1b2bc <_svfprintf_r+0x24e0>
   1b26c:	0015051b          	addw	a0,a0,1
   1b270:	00168693          	add	a3,a3,1
   1b274:	feb712e3          	bne	a4,a1,1b258 <_svfprintf_r+0x247c>
   1b278:	06d13c23          	sd	a3,120(sp)
   1b27c:	02f13823          	sd	a5,48(sp)
   1b280:	04a13023          	sd	a0,64(sp)
   1b284:	05013423          	sd	a6,72(sp)
   1b288:	04013703          	ld	a4,64(sp)
   1b28c:	04813783          	ld	a5,72(sp)
   1b290:	08013583          	ld	a1,128(sp)
   1b294:	00e7853b          	addw	a0,a5,a4
   1b298:	0a5060ef          	jal	21b3c <__muldi3>
   1b29c:	01a5073b          	addw	a4,a0,s10
   1b2a0:	00070d1b          	sext.w	s10,a4
   1b2a4:	fffd4613          	not	a2,s10
   1b2a8:	43f65613          	sra	a2,a2,0x3f
   1b2ac:	00c77733          	and	a4,a4,a2
   1b2b0:	09013903          	ld	s2,144(sp)
   1b2b4:	00070c1b          	sext.w	s8,a4
   1b2b8:	875ff06f          	j	1ab2c <_svfprintf_r+0x1d50>
   1b2bc:	0006c703          	lbu	a4,0(a3)
   1b2c0:	0018081b          	addw	a6,a6,1
   1b2c4:	fb1ff06f          	j	1b274 <_svfprintf_r+0x2498>
   1b2c8:	40fd073b          	subw	a4,s10,a5
   1b2cc:	0017071b          	addw	a4,a4,1
   1b2d0:	00070d1b          	sext.w	s10,a4
   1b2d4:	fffd4613          	not	a2,s10
   1b2d8:	43f65613          	sra	a2,a2,0x3f
   1b2dc:	00c77733          	and	a4,a4,a2
   1b2e0:	09013903          	ld	s2,144(sp)
   1b2e4:	00070c1b          	sext.w	s8,a4
   1b2e8:	b51ff06f          	j	1ae38 <_svfprintf_r+0x205c>
   1b2ec:	05813703          	ld	a4,88(sp)
   1b2f0:	06600c93          	li	s9,102
   1b2f4:	00f706bb          	addw	a3,a4,a5
   1b2f8:	00668d3b          	addw	s10,a3,t1
   1b2fc:	d69ff06f          	j	1b064 <_svfprintf_r+0x2288>
   1b300:	07000693          	li	a3,112
   1b304:	f30ff06f          	j	1aa34 <_svfprintf_r+0x1c58>
   1b308:	00200793          	li	a5,2
   1b30c:	06f13823          	sd	a5,112(sp)
   1b310:	fd0ff06f          	j	1aae0 <_svfprintf_r+0x1d04>
   1b314:	00071c63          	bnez	a4,1b32c <_svfprintf_r+0x2550>
   1b318:	09013903          	ld	s2,144(sp)
   1b31c:	00100c13          	li	s8,1
   1b320:	06600c93          	li	s9,102
   1b324:	00100d13          	li	s10,1
   1b328:	b11ff06f          	j	1ae38 <_svfprintf_r+0x205c>
   1b32c:	05813783          	ld	a5,88(sp)
   1b330:	09013903          	ld	s2,144(sp)
   1b334:	06600c93          	li	s9,102
   1b338:	0017871b          	addw	a4,a5,1
   1b33c:	0067073b          	addw	a4,a4,t1
   1b340:	00070d1b          	sext.w	s10,a4
   1b344:	fffd4613          	not	a2,s10
   1b348:	43f65613          	sra	a2,a2,0x3f
   1b34c:	00c77733          	and	a4,a4,a2
   1b350:	00070c1b          	sext.w	s8,a4
   1b354:	ae5ff06f          	j	1ae38 <_svfprintf_r+0x205c>
   1b358:	02013683          	ld	a3,32(sp)
   1b35c:	0006a703          	lw	a4,0(a3)
   1b360:	00868693          	add	a3,a3,8
   1b364:	00070313          	mv	t1,a4
   1b368:	00075463          	bgez	a4,1b370 <_svfprintf_r+0x2594>
   1b36c:	fff00313          	li	t1,-1
   1b370:	0014ce03          	lbu	t3,1(s1)
   1b374:	00030a9b          	sext.w	s5,t1
   1b378:	02d13023          	sd	a3,32(sp)
   1b37c:	00078493          	mv	s1,a5
   1b380:	bbdfd06f          	j	18f3c <_svfprintf_r+0x160>
   1b384:	04013423          	sd	zero,72(sp)
   1b388:	04013023          	sd	zero,64(sp)
   1b38c:	efdff06f          	j	1b288 <_svfprintf_r+0x24ac>
   1b390:	00013703          	ld	a4,0(sp)
   1b394:	01075783          	lhu	a5,16(a4)
   1b398:	0407e793          	or	a5,a5,64
   1b39c:	00f71823          	sh	a5,16(a4)
   1b3a0:	d65fd06f          	j	19104 <_svfprintf_r+0x328>

000000000001b3a4 <__sprint_r.part.0>:
   1b3a4:	0ac5a783          	lw	a5,172(a1)
   1b3a8:	fb010113          	add	sp,sp,-80
   1b3ac:	01513c23          	sd	s5,24(sp)
   1b3b0:	00d7d793          	srl	a5,a5,0xd
   1b3b4:	04113423          	sd	ra,72(sp)
   1b3b8:	04813023          	sd	s0,64(sp)
   1b3bc:	02913c23          	sd	s1,56(sp)
   1b3c0:	03213823          	sd	s2,48(sp)
   1b3c4:	03313423          	sd	s3,40(sp)
   1b3c8:	03413023          	sd	s4,32(sp)
   1b3cc:	01613823          	sd	s6,16(sp)
   1b3d0:	01713423          	sd	s7,8(sp)
   1b3d4:	0017f793          	and	a5,a5,1
   1b3d8:	00060a93          	mv	s5,a2
   1b3dc:	0c078063          	beqz	a5,1b49c <__sprint_r.part.0+0xf8>
   1b3e0:	01063783          	ld	a5,16(a2)
   1b3e4:	00063b03          	ld	s6,0(a2)
   1b3e8:	00058913          	mv	s2,a1
   1b3ec:	00050993          	mv	s3,a0
   1b3f0:	fff00a13          	li	s4,-1
   1b3f4:	0a078063          	beqz	a5,1b494 <__sprint_r.part.0+0xf0>
   1b3f8:	008b3483          	ld	s1,8(s6)
   1b3fc:	000b3403          	ld	s0,0(s6)
   1b400:	0024d493          	srl	s1,s1,0x2
   1b404:	00048b9b          	sext.w	s7,s1
   1b408:	07705c63          	blez	s7,1b480 <__sprint_r.part.0+0xdc>
   1b40c:	fff4849b          	addw	s1,s1,-1
   1b410:	02049793          	sll	a5,s1,0x20
   1b414:	01e7d493          	srl	s1,a5,0x1e
   1b418:	00440793          	add	a5,s0,4
   1b41c:	00f484b3          	add	s1,s1,a5
   1b420:	0080006f          	j	1b428 <__sprint_r.part.0+0x84>
   1b424:	04848c63          	beq	s1,s0,1b47c <__sprint_r.part.0+0xd8>
   1b428:	00042583          	lw	a1,0(s0)
   1b42c:	00090613          	mv	a2,s2
   1b430:	00098513          	mv	a0,s3
   1b434:	21d010ef          	jal	1ce50 <_fputwc_r>
   1b438:	0005051b          	sext.w	a0,a0
   1b43c:	00440413          	add	s0,s0,4
   1b440:	ff4512e3          	bne	a0,s4,1b424 <__sprint_r.part.0+0x80>
   1b444:	fff00513          	li	a0,-1
   1b448:	04813083          	ld	ra,72(sp)
   1b44c:	04013403          	ld	s0,64(sp)
   1b450:	000ab823          	sd	zero,16(s5)
   1b454:	000aa423          	sw	zero,8(s5)
   1b458:	03813483          	ld	s1,56(sp)
   1b45c:	03013903          	ld	s2,48(sp)
   1b460:	02813983          	ld	s3,40(sp)
   1b464:	02013a03          	ld	s4,32(sp)
   1b468:	01813a83          	ld	s5,24(sp)
   1b46c:	01013b03          	ld	s6,16(sp)
   1b470:	00813b83          	ld	s7,8(sp)
   1b474:	05010113          	add	sp,sp,80
   1b478:	00008067          	ret
   1b47c:	010ab783          	ld	a5,16(s5)
   1b480:	002b9b93          	sll	s7,s7,0x2
   1b484:	417787b3          	sub	a5,a5,s7
   1b488:	00fab823          	sd	a5,16(s5)
   1b48c:	010b0b13          	add	s6,s6,16
   1b490:	f60794e3          	bnez	a5,1b3f8 <__sprint_r.part.0+0x54>
   1b494:	00000513          	li	a0,0
   1b498:	fb1ff06f          	j	1b448 <__sprint_r.part.0+0xa4>
   1b49c:	2c1010ef          	jal	1cf5c <__sfvwrite_r>
   1b4a0:	fa9ff06f          	j	1b448 <__sprint_r.part.0+0xa4>

000000000001b4a4 <__sprint_r>:
   1b4a4:	01063703          	ld	a4,16(a2)
   1b4a8:	00070463          	beqz	a4,1b4b0 <__sprint_r+0xc>
   1b4ac:	ef9ff06f          	j	1b3a4 <__sprint_r.part.0>
   1b4b0:	00062423          	sw	zero,8(a2)
   1b4b4:	00000513          	li	a0,0
   1b4b8:	00008067          	ret

000000000001b4bc <_vfiprintf_r>:
   1b4bc:	e2010113          	add	sp,sp,-480
   1b4c0:	1d213023          	sd	s2,448(sp)
   1b4c4:	1b313c23          	sd	s3,440(sp)
   1b4c8:	19713c23          	sd	s7,408(sp)
   1b4cc:	19813823          	sd	s8,400(sp)
   1b4d0:	1c113c23          	sd	ra,472(sp)
   1b4d4:	1c813823          	sd	s0,464(sp)
   1b4d8:	1c913423          	sd	s1,456(sp)
   1b4dc:	1b413823          	sd	s4,432(sp)
   1b4e0:	1b513423          	sd	s5,424(sp)
   1b4e4:	1b613023          	sd	s6,416(sp)
   1b4e8:	19913423          	sd	s9,392(sp)
   1b4ec:	19a13023          	sd	s10,384(sp)
   1b4f0:	17b13c23          	sd	s11,376(sp)
   1b4f4:	00050993          	mv	s3,a0
   1b4f8:	00058913          	mv	s2,a1
   1b4fc:	00060b93          	mv	s7,a2
   1b500:	00068c13          	mv	s8,a3
   1b504:	00050663          	beqz	a0,1b510 <_vfiprintf_r+0x54>
   1b508:	05052783          	lw	a5,80(a0)
   1b50c:	40078e63          	beqz	a5,1b928 <_vfiprintf_r+0x46c>
   1b510:	01091783          	lh	a5,16(s2)
   1b514:	03279713          	sll	a4,a5,0x32
   1b518:	02074663          	bltz	a4,1b544 <_vfiprintf_r+0x88>
   1b51c:	0ac92703          	lw	a4,172(s2)
   1b520:	000026b7          	lui	a3,0x2
   1b524:	00d7e7b3          	or	a5,a5,a3
   1b528:	ffffe6b7          	lui	a3,0xffffe
   1b52c:	0107979b          	sllw	a5,a5,0x10
   1b530:	fff68693          	add	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd9217>
   1b534:	4107d79b          	sraw	a5,a5,0x10
   1b538:	00d77733          	and	a4,a4,a3
   1b53c:	00f91823          	sh	a5,16(s2)
   1b540:	0ae92623          	sw	a4,172(s2)
   1b544:	0087f713          	and	a4,a5,8
   1b548:	12070663          	beqz	a4,1b674 <_vfiprintf_r+0x1b8>
   1b54c:	01893703          	ld	a4,24(s2)
   1b550:	12070263          	beqz	a4,1b674 <_vfiprintf_r+0x1b8>
   1b554:	01a7f793          	and	a5,a5,26
   1b558:	00a00713          	li	a4,10
   1b55c:	12e78e63          	beq	a5,a4,1b698 <_vfiprintf_r+0x1dc>
   1b560:	000227b7          	lui	a5,0x22
   1b564:	0f010493          	add	s1,sp,240
   1b568:	64078793          	add	a5,a5,1600 # 22640 <blanks.1+0x10>
   1b56c:	00022a37          	lui	s4,0x22
   1b570:	06913823          	sd	s1,112(sp)
   1b574:	08013023          	sd	zero,128(sp)
   1b578:	06012c23          	sw	zero,120(sp)
   1b57c:	00048713          	mv	a4,s1
   1b580:	00013423          	sd	zero,8(sp)
   1b584:	02013823          	sd	zero,48(sp)
   1b588:	02013423          	sd	zero,40(sp)
   1b58c:	02013c23          	sd	zero,56(sp)
   1b590:	00000a93          	li	s5,0
   1b594:	00f13023          	sd	a5,0(sp)
   1b598:	01000413          	li	s0,16
   1b59c:	7b0a0a13          	add	s4,s4,1968 # 227b0 <zeroes.0>
   1b5a0:	000b8c93          	mv	s9,s7
   1b5a4:	000cc783          	lbu	a5,0(s9)
   1b5a8:	14078263          	beqz	a5,1b6ec <_vfiprintf_r+0x230>
   1b5ac:	000c8b13          	mv	s6,s9
   1b5b0:	02500693          	li	a3,37
   1b5b4:	36d78263          	beq	a5,a3,1b918 <_vfiprintf_r+0x45c>
   1b5b8:	001b4783          	lbu	a5,1(s6)
   1b5bc:	001b0b13          	add	s6,s6,1
   1b5c0:	fe079ae3          	bnez	a5,1b5b4 <_vfiprintf_r+0xf8>
   1b5c4:	419b0bbb          	subw	s7,s6,s9
   1b5c8:	120b8263          	beqz	s7,1b6ec <_vfiprintf_r+0x230>
   1b5cc:	07812783          	lw	a5,120(sp)
   1b5d0:	08013683          	ld	a3,128(sp)
   1b5d4:	01973023          	sd	s9,0(a4)
   1b5d8:	0017861b          	addw	a2,a5,1
   1b5dc:	00db86b3          	add	a3,s7,a3
   1b5e0:	01773423          	sd	s7,8(a4)
   1b5e4:	08d13023          	sd	a3,128(sp)
   1b5e8:	06c12c23          	sw	a2,120(sp)
   1b5ec:	00700793          	li	a5,7
   1b5f0:	01070713          	add	a4,a4,16
   1b5f4:	02c7d063          	bge	a5,a2,1b614 <_vfiprintf_r+0x158>
   1b5f8:	4e0684e3          	beqz	a3,1c2e0 <_vfiprintf_r+0xe24>
   1b5fc:	07010613          	add	a2,sp,112
   1b600:	00090593          	mv	a1,s2
   1b604:	00098513          	mv	a0,s3
   1b608:	d9dff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1b60c:	0e051663          	bnez	a0,1b6f8 <_vfiprintf_r+0x23c>
   1b610:	00048713          	mv	a4,s1
   1b614:	000b4783          	lbu	a5,0(s6)
   1b618:	017a8abb          	addw	s5,s5,s7
   1b61c:	0c078863          	beqz	a5,1b6ec <_vfiprintf_r+0x230>
   1b620:	fff00813          	li	a6,-1
   1b624:	00000e13          	li	t3,0
   1b628:	00000313          	li	t1,0
   1b62c:	001b4783          	lbu	a5,1(s6)
   1b630:	001b0c93          	add	s9,s6,1
   1b634:	060103a3          	sb	zero,103(sp)
   1b638:	05a00b93          	li	s7,90
   1b63c:	00030b13          	mv	s6,t1
   1b640:	000e0d13          	mv	s10,t3
   1b644:	00080d93          	mv	s11,a6
   1b648:	001c8c93          	add	s9,s9,1
   1b64c:	0007879b          	sext.w	a5,a5
   1b650:	fe07869b          	addw	a3,a5,-32
   1b654:	0006861b          	sext.w	a2,a3
   1b658:	12cbe663          	bltu	s7,a2,1b784 <_vfiprintf_r+0x2c8>
   1b65c:	02069613          	sll	a2,a3,0x20
   1b660:	01e65693          	srl	a3,a2,0x1e
   1b664:	00013603          	ld	a2,0(sp)
   1b668:	00c686b3          	add	a3,a3,a2
   1b66c:	0006a683          	lw	a3,0(a3)
   1b670:	00068067          	jr	a3
   1b674:	00090593          	mv	a1,s2
   1b678:	00098513          	mv	a0,s3
   1b67c:	cacf70ef          	jal	12b28 <__swsetup_r>
   1b680:	00050463          	beqz	a0,1b688 <_vfiprintf_r+0x1cc>
   1b684:	0c80106f          	j	1c74c <_vfiprintf_r+0x1290>
   1b688:	01091783          	lh	a5,16(s2)
   1b68c:	00a00713          	li	a4,10
   1b690:	01a7f793          	and	a5,a5,26
   1b694:	ece796e3          	bne	a5,a4,1b560 <_vfiprintf_r+0xa4>
   1b698:	01291783          	lh	a5,18(s2)
   1b69c:	ec07c2e3          	bltz	a5,1b560 <_vfiprintf_r+0xa4>
   1b6a0:	1d013403          	ld	s0,464(sp)
   1b6a4:	1d813083          	ld	ra,472(sp)
   1b6a8:	1c813483          	ld	s1,456(sp)
   1b6ac:	1b013a03          	ld	s4,432(sp)
   1b6b0:	1a813a83          	ld	s5,424(sp)
   1b6b4:	1a013b03          	ld	s6,416(sp)
   1b6b8:	18813c83          	ld	s9,392(sp)
   1b6bc:	18013d03          	ld	s10,384(sp)
   1b6c0:	17813d83          	ld	s11,376(sp)
   1b6c4:	000c0693          	mv	a3,s8
   1b6c8:	000b8613          	mv	a2,s7
   1b6cc:	19013c03          	ld	s8,400(sp)
   1b6d0:	19813b83          	ld	s7,408(sp)
   1b6d4:	00090593          	mv	a1,s2
   1b6d8:	00098513          	mv	a0,s3
   1b6dc:	1c013903          	ld	s2,448(sp)
   1b6e0:	1b813983          	ld	s3,440(sp)
   1b6e4:	1e010113          	add	sp,sp,480
   1b6e8:	0c40106f          	j	1c7ac <__sbprintf>
   1b6ec:	08013783          	ld	a5,128(sp)
   1b6f0:	00078463          	beqz	a5,1b6f8 <_vfiprintf_r+0x23c>
   1b6f4:	00c0106f          	j	1c700 <_vfiprintf_r+0x1244>
   1b6f8:	01095783          	lhu	a5,16(s2)
   1b6fc:	0407f793          	and	a5,a5,64
   1b700:	00078463          	beqz	a5,1b708 <_vfiprintf_r+0x24c>
   1b704:	0480106f          	j	1c74c <_vfiprintf_r+0x1290>
   1b708:	1d813083          	ld	ra,472(sp)
   1b70c:	1d013403          	ld	s0,464(sp)
   1b710:	1c813483          	ld	s1,456(sp)
   1b714:	1c013903          	ld	s2,448(sp)
   1b718:	1b813983          	ld	s3,440(sp)
   1b71c:	1b013a03          	ld	s4,432(sp)
   1b720:	1a013b03          	ld	s6,416(sp)
   1b724:	19813b83          	ld	s7,408(sp)
   1b728:	19013c03          	ld	s8,400(sp)
   1b72c:	18813c83          	ld	s9,392(sp)
   1b730:	18013d03          	ld	s10,384(sp)
   1b734:	17813d83          	ld	s11,376(sp)
   1b738:	000a8513          	mv	a0,s5
   1b73c:	1a813a83          	ld	s5,424(sp)
   1b740:	1e010113          	add	sp,sp,480
   1b744:	00008067          	ret
   1b748:	00000d13          	li	s10,0
   1b74c:	00900593          	li	a1,9
   1b750:	000cc603          	lbu	a2,0(s9)
   1b754:	002d169b          	sllw	a3,s10,0x2
   1b758:	01a68e3b          	addw	t3,a3,s10
   1b75c:	fd07879b          	addw	a5,a5,-48
   1b760:	001e1e1b          	sllw	t3,t3,0x1
   1b764:	fd06069b          	addw	a3,a2,-48
   1b768:	01c78d3b          	addw	s10,a5,t3
   1b76c:	001c8c93          	add	s9,s9,1
   1b770:	0006079b          	sext.w	a5,a2
   1b774:	fcd5fee3          	bgeu	a1,a3,1b750 <_vfiprintf_r+0x294>
   1b778:	fe07869b          	addw	a3,a5,-32
   1b77c:	0006861b          	sext.w	a2,a3
   1b780:	eccbfee3          	bgeu	s7,a2,1b65c <_vfiprintf_r+0x1a0>
   1b784:	000b0313          	mv	t1,s6
   1b788:	000d0e13          	mv	t3,s10
   1b78c:	f60780e3          	beqz	a5,1b6ec <_vfiprintf_r+0x230>
   1b790:	08f10423          	sb	a5,136(sp)
   1b794:	060103a3          	sb	zero,103(sp)
   1b798:	00100d93          	li	s11,1
   1b79c:	00100d13          	li	s10,1
   1b7a0:	08810b93          	add	s7,sp,136
   1b7a4:	00000813          	li	a6,0
   1b7a8:	00237f93          	and	t6,t1,2
   1b7ac:	000f8463          	beqz	t6,1b7b4 <_vfiprintf_r+0x2f8>
   1b7b0:	002d8d9b          	addw	s11,s11,2
   1b7b4:	07812683          	lw	a3,120(sp)
   1b7b8:	08437293          	and	t0,t1,132
   1b7bc:	08013783          	ld	a5,128(sp)
   1b7c0:	0016851b          	addw	a0,a3,1
   1b7c4:	00050613          	mv	a2,a0
   1b7c8:	00029663          	bnez	t0,1b7d4 <_vfiprintf_r+0x318>
   1b7cc:	41be0b3b          	subw	s6,t3,s11
   1b7d0:	0d6040e3          	bgtz	s6,1c090 <_vfiprintf_r+0xbd4>
   1b7d4:	06714603          	lbu	a2,103(sp)
   1b7d8:	02060a63          	beqz	a2,1b80c <_vfiprintf_r+0x350>
   1b7dc:	06710693          	add	a3,sp,103
   1b7e0:	00178793          	add	a5,a5,1
   1b7e4:	00d73023          	sd	a3,0(a4)
   1b7e8:	00100693          	li	a3,1
   1b7ec:	00d73423          	sd	a3,8(a4)
   1b7f0:	08f13023          	sd	a5,128(sp)
   1b7f4:	06a12c23          	sw	a0,120(sp)
   1b7f8:	00700693          	li	a3,7
   1b7fc:	7ca6c663          	blt	a3,a0,1bfc8 <_vfiprintf_r+0xb0c>
   1b800:	00050693          	mv	a3,a0
   1b804:	01070713          	add	a4,a4,16
   1b808:	0015051b          	addw	a0,a0,1
   1b80c:	060f8863          	beqz	t6,1b87c <_vfiprintf_r+0x3c0>
   1b810:	06810693          	add	a3,sp,104
   1b814:	00278793          	add	a5,a5,2
   1b818:	00d73023          	sd	a3,0(a4)
   1b81c:	00200693          	li	a3,2
   1b820:	00d73423          	sd	a3,8(a4)
   1b824:	08f13023          	sd	a5,128(sp)
   1b828:	06a12c23          	sw	a0,120(sp)
   1b82c:	00700693          	li	a3,7
   1b830:	00a6d4e3          	bge	a3,a0,1c038 <_vfiprintf_r+0xb7c>
   1b834:	2a078ce3          	beqz	a5,1c2ec <_vfiprintf_r+0xe30>
   1b838:	07010613          	add	a2,sp,112
   1b83c:	00090593          	mv	a1,s2
   1b840:	00098513          	mv	a0,s3
   1b844:	05013023          	sd	a6,64(sp)
   1b848:	03c13023          	sd	t3,32(sp)
   1b84c:	00613c23          	sd	t1,24(sp)
   1b850:	00513823          	sd	t0,16(sp)
   1b854:	b51ff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1b858:	ea0510e3          	bnez	a0,1b6f8 <_vfiprintf_r+0x23c>
   1b85c:	07812683          	lw	a3,120(sp)
   1b860:	08013783          	ld	a5,128(sp)
   1b864:	04013803          	ld	a6,64(sp)
   1b868:	02013e03          	ld	t3,32(sp)
   1b86c:	01813303          	ld	t1,24(sp)
   1b870:	01013283          	ld	t0,16(sp)
   1b874:	00048713          	mv	a4,s1
   1b878:	0016851b          	addw	a0,a3,1
   1b87c:	08000613          	li	a2,128
   1b880:	54c28063          	beq	t0,a2,1bdc0 <_vfiprintf_r+0x904>
   1b884:	41a80b3b          	subw	s6,a6,s10
   1b888:	65604863          	bgtz	s6,1bed8 <_vfiprintf_r+0xa1c>
   1b88c:	00fd07b3          	add	a5,s10,a5
   1b890:	01773023          	sd	s7,0(a4)
   1b894:	01a73423          	sd	s10,8(a4)
   1b898:	08f13023          	sd	a5,128(sp)
   1b89c:	06a12c23          	sw	a0,120(sp)
   1b8a0:	00700693          	li	a3,7
   1b8a4:	50a6da63          	bge	a3,a0,1bdb8 <_vfiprintf_r+0x8fc>
   1b8a8:	0e0782e3          	beqz	a5,1c18c <_vfiprintf_r+0xcd0>
   1b8ac:	07010613          	add	a2,sp,112
   1b8b0:	00090593          	mv	a1,s2
   1b8b4:	00098513          	mv	a0,s3
   1b8b8:	01c13c23          	sd	t3,24(sp)
   1b8bc:	00613823          	sd	t1,16(sp)
   1b8c0:	ae5ff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1b8c4:	e2051ae3          	bnez	a0,1b6f8 <_vfiprintf_r+0x23c>
   1b8c8:	08013783          	ld	a5,128(sp)
   1b8cc:	01813e03          	ld	t3,24(sp)
   1b8d0:	01013303          	ld	t1,16(sp)
   1b8d4:	00048713          	mv	a4,s1
   1b8d8:	00437313          	and	t1,t1,4
   1b8dc:	00030663          	beqz	t1,1b8e8 <_vfiprintf_r+0x42c>
   1b8e0:	41be0b3b          	subw	s6,t3,s11
   1b8e4:	0d6040e3          	bgtz	s6,1c1a4 <_vfiprintf_r+0xce8>
   1b8e8:	000e0713          	mv	a4,t3
   1b8ec:	01be5463          	bge	t3,s11,1b8f4 <_vfiprintf_r+0x438>
   1b8f0:	000d8713          	mv	a4,s11
   1b8f4:	01570abb          	addw	s5,a4,s5
   1b8f8:	6a079463          	bnez	a5,1bfa0 <_vfiprintf_r+0xae4>
   1b8fc:	06012c23          	sw	zero,120(sp)
   1b900:	00048713          	mv	a4,s1
   1b904:	ca1ff06f          	j	1b5a4 <_vfiprintf_r+0xe8>
   1b908:	010b6313          	or	t1,s6,16
   1b90c:	000cc783          	lbu	a5,0(s9)
   1b910:	00030b1b          	sext.w	s6,t1
   1b914:	d35ff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1b918:	419b0bbb          	subw	s7,s6,s9
   1b91c:	ca0b98e3          	bnez	s7,1b5cc <_vfiprintf_r+0x110>
   1b920:	000b4783          	lbu	a5,0(s6)
   1b924:	cf9ff06f          	j	1b61c <_vfiprintf_r+0x160>
   1b928:	ae1f70ef          	jal	13408 <__sinit>
   1b92c:	be5ff06f          	j	1b510 <_vfiprintf_r+0x54>
   1b930:	000c3b83          	ld	s7,0(s8)
   1b934:	060103a3          	sb	zero,103(sp)
   1b938:	000b0313          	mv	t1,s6
   1b93c:	000d0e13          	mv	t3,s10
   1b940:	008c0c13          	add	s8,s8,8
   1b944:	4e0b88e3          	beqz	s7,1c634 <_vfiprintf_r+0x1178>
   1b948:	fff00793          	li	a5,-1
   1b94c:	40fd8ce3          	beq	s11,a5,1c564 <_vfiprintf_r+0x10a8>
   1b950:	000d8613          	mv	a2,s11
   1b954:	00000593          	li	a1,0
   1b958:	000b8513          	mv	a0,s7
   1b95c:	04e13023          	sd	a4,64(sp)
   1b960:	03a13023          	sd	s10,32(sp)
   1b964:	01613c23          	sd	s6,24(sp)
   1b968:	01b13823          	sd	s11,16(sp)
   1b96c:	981fb0ef          	jal	172ec <memchr>
   1b970:	01013803          	ld	a6,16(sp)
   1b974:	01813303          	ld	t1,24(sp)
   1b978:	02013e03          	ld	t3,32(sp)
   1b97c:	04013703          	ld	a4,64(sp)
   1b980:	58050ae3          	beqz	a0,1c714 <_vfiprintf_r+0x1258>
   1b984:	41750d3b          	subw	s10,a0,s7
   1b988:	fffd4d93          	not	s11,s10
   1b98c:	43fddd93          	sra	s11,s11,0x3f
   1b990:	01adfdb3          	and	s11,s11,s10
   1b994:	00000813          	li	a6,0
   1b998:	0e40006f          	j	1ba7c <_vfiprintf_r+0x5c0>
   1b99c:	000c2783          	lw	a5,0(s8)
   1b9a0:	000d0e13          	mv	t3,s10
   1b9a4:	000b0313          	mv	t1,s6
   1b9a8:	060103a3          	sb	zero,103(sp)
   1b9ac:	008c0c13          	add	s8,s8,8
   1b9b0:	08f10423          	sb	a5,136(sp)
   1b9b4:	00100d93          	li	s11,1
   1b9b8:	00100d13          	li	s10,1
   1b9bc:	08810b93          	add	s7,sp,136
   1b9c0:	de5ff06f          	j	1b7a4 <_vfiprintf_r+0x2e8>
   1b9c4:	000b0313          	mv	t1,s6
   1b9c8:	000d0e13          	mv	t3,s10
   1b9cc:	000d8813          	mv	a6,s11
   1b9d0:	02037793          	and	a5,t1,32
   1b9d4:	008c0693          	add	a3,s8,8
   1b9d8:	04079863          	bnez	a5,1ba28 <_vfiprintf_r+0x56c>
   1b9dc:	01037793          	and	a5,t1,16
   1b9e0:	04079463          	bnez	a5,1ba28 <_vfiprintf_r+0x56c>
   1b9e4:	04037613          	and	a2,t1,64
   1b9e8:	000c2783          	lw	a5,0(s8)
   1b9ec:	4a0602e3          	beqz	a2,1c690 <_vfiprintf_r+0x11d4>
   1b9f0:	01079d9b          	sllw	s11,a5,0x10
   1b9f4:	410ddd9b          	sraw	s11,s11,0x10
   1b9f8:	000d8613          	mv	a2,s11
   1b9fc:	02064c63          	bltz	a2,1ba34 <_vfiprintf_r+0x578>
   1ba00:	fff00613          	li	a2,-1
   1ba04:	04c80663          	beq	a6,a2,1ba50 <_vfiprintf_r+0x594>
   1ba08:	f7f37313          	and	t1,t1,-129
   1ba0c:	0003031b          	sext.w	t1,t1
   1ba10:	040d9063          	bnez	s11,1ba50 <_vfiprintf_r+0x594>
   1ba14:	50081ee3          	bnez	a6,1c730 <_vfiprintf_r+0x1274>
   1ba18:	00000d13          	li	s10,0
   1ba1c:	00068c13          	mv	s8,a3
   1ba20:	0ec10b93          	add	s7,sp,236
   1ba24:	0580006f          	j	1ba7c <_vfiprintf_r+0x5c0>
   1ba28:	000c3603          	ld	a2,0(s8)
   1ba2c:	00060d93          	mv	s11,a2
   1ba30:	fc0658e3          	bgez	a2,1ba00 <_vfiprintf_r+0x544>
   1ba34:	02d00613          	li	a2,45
   1ba38:	06c103a3          	sb	a2,103(sp)
   1ba3c:	fff00613          	li	a2,-1
   1ba40:	41b00db3          	neg	s11,s11
   1ba44:	00c80663          	beq	a6,a2,1ba50 <_vfiprintf_r+0x594>
   1ba48:	f7f37313          	and	t1,t1,-129
   1ba4c:	0003031b          	sext.w	t1,t1
   1ba50:	00900613          	li	a2,9
   1ba54:	11b666e3          	bltu	a2,s11,1c360 <_vfiprintf_r+0xea4>
   1ba58:	030d879b          	addw	a5,s11,48
   1ba5c:	0ff7f793          	zext.b	a5,a5
   1ba60:	00068c13          	mv	s8,a3
   1ba64:	0ef105a3          	sb	a5,235(sp)
   1ba68:	00080d9b          	sext.w	s11,a6
   1ba6c:	01004463          	bgtz	a6,1ba74 <_vfiprintf_r+0x5b8>
   1ba70:	00100d93          	li	s11,1
   1ba74:	00100d13          	li	s10,1
   1ba78:	0eb10b93          	add	s7,sp,235
   1ba7c:	06714783          	lbu	a5,103(sp)
   1ba80:	d20784e3          	beqz	a5,1b7a8 <_vfiprintf_r+0x2ec>
   1ba84:	001d8d9b          	addw	s11,s11,1
   1ba88:	d21ff06f          	j	1b7a8 <_vfiprintf_r+0x2ec>
   1ba8c:	000c2d03          	lw	s10,0(s8)
   1ba90:	008c0c13          	add	s8,s8,8
   1ba94:	220d5663          	bgez	s10,1bcc0 <_vfiprintf_r+0x804>
   1ba98:	41a00d3b          	negw	s10,s10
   1ba9c:	004b6313          	or	t1,s6,4
   1baa0:	000cc783          	lbu	a5,0(s9)
   1baa4:	00030b1b          	sext.w	s6,t1
   1baa8:	ba1ff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1baac:	02b00693          	li	a3,43
   1bab0:	000cc783          	lbu	a5,0(s9)
   1bab4:	06d103a3          	sb	a3,103(sp)
   1bab8:	b91ff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1babc:	010b6793          	or	a5,s6,16
   1bac0:	000d0e13          	mv	t3,s10
   1bac4:	000d8813          	mv	a6,s11
   1bac8:	0007879b          	sext.w	a5,a5
   1bacc:	0207f693          	and	a3,a5,32
   1bad0:	008c0593          	add	a1,s8,8
   1bad4:	00069663          	bnez	a3,1bae0 <_vfiprintf_r+0x624>
   1bad8:	0107f693          	and	a3,a5,16
   1badc:	160682e3          	beqz	a3,1c440 <_vfiprintf_r+0xf84>
   1bae0:	000c3683          	ld	a3,0(s8)
   1bae4:	bff7f313          	and	t1,a5,-1025
   1bae8:	060103a3          	sb	zero,103(sp)
   1baec:	fff00613          	li	a2,-1
   1baf0:	0003031b          	sext.w	t1,t1
   1baf4:	00058c13          	mv	s8,a1
   1baf8:	0ac80463          	beq	a6,a2,1bba0 <_vfiprintf_r+0x6e4>
   1bafc:	b7f7f793          	and	a5,a5,-1153
   1bb00:	0007879b          	sext.w	a5,a5
   1bb04:	2e069ce3          	bnez	a3,1c5fc <_vfiprintf_r+0x1140>
   1bb08:	00030d13          	mv	s10,t1
   1bb0c:	00078313          	mv	t1,a5
   1bb10:	06081e63          	bnez	a6,1bb8c <_vfiprintf_r+0x6d0>
   1bb14:	02069ee3          	bnez	a3,1c350 <_vfiprintf_r+0xe94>
   1bb18:	001d7d13          	and	s10,s10,1
   1bb1c:	100d04e3          	beqz	s10,1c424 <_vfiprintf_r+0xf68>
   1bb20:	03000793          	li	a5,48
   1bb24:	0ef105a3          	sb	a5,235(sp)
   1bb28:	000d0d93          	mv	s11,s10
   1bb2c:	0eb10b93          	add	s7,sp,235
   1bb30:	f4dff06f          	j	1ba7c <_vfiprintf_r+0x5c0>
   1bb34:	ffff87b7          	lui	a5,0xffff8
   1bb38:	8307c793          	xor	a5,a5,-2000
   1bb3c:	06f11423          	sh	a5,104(sp)
   1bb40:	000227b7          	lui	a5,0x22
   1bb44:	002b6313          	or	t1,s6,2
   1bb48:	d1078793          	add	a5,a5,-752 # 21d10 <__clzdi2+0xb0>
   1bb4c:	000c3683          	ld	a3,0(s8)
   1bb50:	000d0e13          	mv	t3,s10
   1bb54:	000d8813          	mv	a6,s11
   1bb58:	0003031b          	sext.w	t1,t1
   1bb5c:	008c0c13          	add	s8,s8,8
   1bb60:	00f13423          	sd	a5,8(sp)
   1bb64:	060103a3          	sb	zero,103(sp)
   1bb68:	fff00793          	li	a5,-1
   1bb6c:	4ef80463          	beq	a6,a5,1c054 <_vfiprintf_r+0xb98>
   1bb70:	f7f37793          	and	a5,t1,-129
   1bb74:	0007879b          	sext.w	a5,a5
   1bb78:	4c069863          	bnez	a3,1c048 <_vfiprintf_r+0xb8c>
   1bb7c:	00030d13          	mv	s10,t1
   1bb80:	00200693          	li	a3,2
   1bb84:	00078313          	mv	t1,a5
   1bb88:	f80806e3          	beqz	a6,1bb14 <_vfiprintf_r+0x658>
   1bb8c:	00100793          	li	a5,1
   1bb90:	3af682e3          	beq	a3,a5,1c734 <_vfiprintf_r+0x1278>
   1bb94:	00200793          	li	a5,2
   1bb98:	2af68ce3          	beq	a3,a5,1c650 <_vfiprintf_r+0x1194>
   1bb9c:	00000693          	li	a3,0
   1bba0:	0ec10593          	add	a1,sp,236
   1bba4:	00058b93          	mv	s7,a1
   1bba8:	0076f793          	and	a5,a3,7
   1bbac:	03078793          	add	a5,a5,48
   1bbb0:	fefb8fa3          	sb	a5,-1(s7)
   1bbb4:	0036d693          	srl	a3,a3,0x3
   1bbb8:	000b8613          	mv	a2,s7
   1bbbc:	fffb8b93          	add	s7,s7,-1
   1bbc0:	fe0694e3          	bnez	a3,1bba8 <_vfiprintf_r+0x6ec>
   1bbc4:	00137693          	and	a3,t1,1
   1bbc8:	4a068a63          	beqz	a3,1c07c <_vfiprintf_r+0xbc0>
   1bbcc:	03000693          	li	a3,48
   1bbd0:	4ad78663          	beq	a5,a3,1c07c <_vfiprintf_r+0xbc0>
   1bbd4:	ffe60613          	add	a2,a2,-2
   1bbd8:	40c58d3b          	subw	s10,a1,a2
   1bbdc:	fedb8fa3          	sb	a3,-1(s7)
   1bbe0:	000d0d9b          	sext.w	s11,s10
   1bbe4:	0b0d4ce3          	blt	s10,a6,1c49c <_vfiprintf_r+0xfe0>
   1bbe8:	00060b93          	mv	s7,a2
   1bbec:	e91ff06f          	j	1ba7c <_vfiprintf_r+0x5c0>
   1bbf0:	010b6313          	or	t1,s6,16
   1bbf4:	000d0e13          	mv	t3,s10
   1bbf8:	000d8813          	mv	a6,s11
   1bbfc:	0003031b          	sext.w	t1,t1
   1bc00:	dd1ff06f          	j	1b9d0 <_vfiprintf_r+0x514>
   1bc04:	000cc783          	lbu	a5,0(s9)
   1bc08:	06800693          	li	a3,104
   1bc0c:	20d78ae3          	beq	a5,a3,1c620 <_vfiprintf_r+0x1164>
   1bc10:	040b6313          	or	t1,s6,64
   1bc14:	00030b1b          	sext.w	s6,t1
   1bc18:	a31ff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1bc1c:	020b6313          	or	t1,s6,32
   1bc20:	000cc783          	lbu	a5,0(s9)
   1bc24:	00030b1b          	sext.w	s6,t1
   1bc28:	a21ff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1bc2c:	020b7793          	and	a5,s6,32
   1bc30:	000c3683          	ld	a3,0(s8)
   1bc34:	02079463          	bnez	a5,1bc5c <_vfiprintf_r+0x7a0>
   1bc38:	010b7793          	and	a5,s6,16
   1bc3c:	02079063          	bnez	a5,1bc5c <_vfiprintf_r+0x7a0>
   1bc40:	040b7793          	and	a5,s6,64
   1bc44:	280796e3          	bnez	a5,1c6d0 <_vfiprintf_r+0x1214>
   1bc48:	200b7313          	and	t1,s6,512
   1bc4c:	30030ce3          	beqz	t1,1c764 <_vfiprintf_r+0x12a8>
   1bc50:	01568023          	sb	s5,0(a3)
   1bc54:	008c0c13          	add	s8,s8,8
   1bc58:	94dff06f          	j	1b5a4 <_vfiprintf_r+0xe8>
   1bc5c:	0156b023          	sd	s5,0(a3)
   1bc60:	008c0c13          	add	s8,s8,8
   1bc64:	941ff06f          	j	1b5a4 <_vfiprintf_r+0xe8>
   1bc68:	000cc783          	lbu	a5,0(s9)
   1bc6c:	06c00693          	li	a3,108
   1bc70:	18d78ee3          	beq	a5,a3,1c60c <_vfiprintf_r+0x1150>
   1bc74:	010b6313          	or	t1,s6,16
   1bc78:	00030b1b          	sext.w	s6,t1
   1bc7c:	9cdff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1bc80:	00098513          	mv	a0,s3
   1bc84:	00e13823          	sd	a4,16(sp)
   1bc88:	aa1fa0ef          	jal	16728 <_localeconv_r>
   1bc8c:	00853783          	ld	a5,8(a0)
   1bc90:	00078513          	mv	a0,a5
   1bc94:	02f13c23          	sd	a5,56(sp)
   1bc98:	fd9fc0ef          	jal	18c70 <strlen>
   1bc9c:	00050793          	mv	a5,a0
   1bca0:	00098513          	mv	a0,s3
   1bca4:	02f13423          	sd	a5,40(sp)
   1bca8:	a81fa0ef          	jal	16728 <_localeconv_r>
   1bcac:	01053683          	ld	a3,16(a0)
   1bcb0:	02813783          	ld	a5,40(sp)
   1bcb4:	01013703          	ld	a4,16(sp)
   1bcb8:	02d13823          	sd	a3,48(sp)
   1bcbc:	7a079a63          	bnez	a5,1c470 <_vfiprintf_r+0xfb4>
   1bcc0:	000cc783          	lbu	a5,0(s9)
   1bcc4:	985ff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1bcc8:	001b6313          	or	t1,s6,1
   1bccc:	000cc783          	lbu	a5,0(s9)
   1bcd0:	00030b1b          	sext.w	s6,t1
   1bcd4:	975ff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1bcd8:	06714683          	lbu	a3,103(sp)
   1bcdc:	000cc783          	lbu	a5,0(s9)
   1bce0:	960694e3          	bnez	a3,1b648 <_vfiprintf_r+0x18c>
   1bce4:	02000693          	li	a3,32
   1bce8:	06d103a3          	sb	a3,103(sp)
   1bcec:	95dff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1bcf0:	080b6313          	or	t1,s6,128
   1bcf4:	000cc783          	lbu	a5,0(s9)
   1bcf8:	00030b1b          	sext.w	s6,t1
   1bcfc:	94dff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1bd00:	000cc783          	lbu	a5,0(s9)
   1bd04:	02a00593          	li	a1,42
   1bd08:	001c8693          	add	a3,s9,1
   1bd0c:	26b782e3          	beq	a5,a1,1c770 <_vfiprintf_r+0x12b4>
   1bd10:	fd07861b          	addw	a2,a5,-48
   1bd14:	00900513          	li	a0,9
   1bd18:	00068c93          	mv	s9,a3
   1bd1c:	00000d93          	li	s11,0
   1bd20:	00900593          	li	a1,9
   1bd24:	92c566e3          	bltu	a0,a2,1b650 <_vfiprintf_r+0x194>
   1bd28:	000cc783          	lbu	a5,0(s9)
   1bd2c:	002d969b          	sllw	a3,s11,0x2
   1bd30:	01b6883b          	addw	a6,a3,s11
   1bd34:	0018181b          	sllw	a6,a6,0x1
   1bd38:	00c80dbb          	addw	s11,a6,a2
   1bd3c:	fd07861b          	addw	a2,a5,-48
   1bd40:	001c8c93          	add	s9,s9,1
   1bd44:	fec5f2e3          	bgeu	a1,a2,1bd28 <_vfiprintf_r+0x86c>
   1bd48:	909ff06f          	j	1b650 <_vfiprintf_r+0x194>
   1bd4c:	000d0e13          	mv	t3,s10
   1bd50:	010b6d13          	or	s10,s6,16
   1bd54:	000d8813          	mv	a6,s11
   1bd58:	000d0d1b          	sext.w	s10,s10
   1bd5c:	020d7793          	and	a5,s10,32
   1bd60:	008c0693          	add	a3,s8,8
   1bd64:	00079663          	bnez	a5,1bd70 <_vfiprintf_r+0x8b4>
   1bd68:	010d7793          	and	a5,s10,16
   1bd6c:	6e078663          	beqz	a5,1c458 <_vfiprintf_r+0xf9c>
   1bd70:	000c3d83          	ld	s11,0(s8)
   1bd74:	060103a3          	sb	zero,103(sp)
   1bd78:	fff00613          	li	a2,-1
   1bd7c:	000d0313          	mv	t1,s10
   1bd80:	ccc808e3          	beq	a6,a2,1ba50 <_vfiprintf_r+0x594>
   1bd84:	f7fd7313          	and	t1,s10,-129
   1bd88:	0003031b          	sext.w	t1,t1
   1bd8c:	cc0d92e3          	bnez	s11,1ba50 <_vfiprintf_r+0x594>
   1bd90:	00068c13          	mv	s8,a3
   1bd94:	00100693          	li	a3,1
   1bd98:	d79ff06f          	j	1bb10 <_vfiprintf_r+0x654>
   1bd9c:	00100713          	li	a4,1
   1bda0:	06e12c23          	sw	a4,120(sp)
   1bda4:	000d0793          	mv	a5,s10
   1bda8:	0f713823          	sd	s7,240(sp)
   1bdac:	0fa13c23          	sd	s10,248(sp)
   1bdb0:	09a13023          	sd	s10,128(sp)
   1bdb4:	00048713          	mv	a4,s1
   1bdb8:	01070713          	add	a4,a4,16
   1bdbc:	b1dff06f          	j	1b8d8 <_vfiprintf_r+0x41c>
   1bdc0:	41be0b3b          	subw	s6,t3,s11
   1bdc4:	ad6050e3          	blez	s6,1b884 <_vfiprintf_r+0x3c8>
   1bdc8:	01000613          	li	a2,16
   1bdcc:	196654e3          	bge	a2,s6,1c754 <_vfiprintf_r+0x1298>
   1bdd0:	00022eb7          	lui	t4,0x22
   1bdd4:	7b0e8e93          	add	t4,t4,1968 # 227b0 <zeroes.0>
   1bdd8:	01713823          	sd	s7,16(sp)
   1bddc:	01000f13          	li	t5,16
   1bde0:	00700f93          	li	t6,7
   1bde4:	00613c23          	sd	t1,24(sp)
   1bde8:	03c13023          	sd	t3,32(sp)
   1bdec:	05013023          	sd	a6,64(sp)
   1bdf0:	000e8b93          	mv	s7,t4
   1bdf4:	0180006f          	j	1be0c <_vfiprintf_r+0x950>
   1bdf8:	0026861b          	addw	a2,a3,2
   1bdfc:	01070713          	add	a4,a4,16
   1be00:	00058693          	mv	a3,a1
   1be04:	ff0b0b1b          	addw	s6,s6,-16
   1be08:	056f5c63          	bge	t5,s6,1be60 <_vfiprintf_r+0x9a4>
   1be0c:	0016859b          	addw	a1,a3,1
   1be10:	01078793          	add	a5,a5,16
   1be14:	01773023          	sd	s7,0(a4)
   1be18:	01e73423          	sd	t5,8(a4)
   1be1c:	08f13023          	sd	a5,128(sp)
   1be20:	06b12c23          	sw	a1,120(sp)
   1be24:	fcbfdae3          	bge	t6,a1,1bdf8 <_vfiprintf_r+0x93c>
   1be28:	18078863          	beqz	a5,1bfb8 <_vfiprintf_r+0xafc>
   1be2c:	07010613          	add	a2,sp,112
   1be30:	00090593          	mv	a1,s2
   1be34:	00098513          	mv	a0,s3
   1be38:	d6cff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1be3c:	8a051ee3          	bnez	a0,1b6f8 <_vfiprintf_r+0x23c>
   1be40:	07812683          	lw	a3,120(sp)
   1be44:	01000f13          	li	t5,16
   1be48:	ff0b0b1b          	addw	s6,s6,-16
   1be4c:	08013783          	ld	a5,128(sp)
   1be50:	00048713          	mv	a4,s1
   1be54:	0016861b          	addw	a2,a3,1
   1be58:	00700f93          	li	t6,7
   1be5c:	fb6f48e3          	blt	t5,s6,1be0c <_vfiprintf_r+0x950>
   1be60:	000b8e93          	mv	t4,s7
   1be64:	01813303          	ld	t1,24(sp)
   1be68:	02013e03          	ld	t3,32(sp)
   1be6c:	04013803          	ld	a6,64(sp)
   1be70:	01013b83          	ld	s7,16(sp)
   1be74:	016787b3          	add	a5,a5,s6
   1be78:	01d73023          	sd	t4,0(a4)
   1be7c:	01673423          	sd	s6,8(a4)
   1be80:	08f13023          	sd	a5,128(sp)
   1be84:	06c12c23          	sw	a2,120(sp)
   1be88:	00700693          	li	a3,7
   1be8c:	5ac6d263          	bge	a3,a2,1c430 <_vfiprintf_r+0xf74>
   1be90:	00078ce3          	beqz	a5,1c6a8 <_vfiprintf_r+0x11ec>
   1be94:	07010613          	add	a2,sp,112
   1be98:	00090593          	mv	a1,s2
   1be9c:	00098513          	mv	a0,s3
   1bea0:	03013023          	sd	a6,32(sp)
   1bea4:	01c13c23          	sd	t3,24(sp)
   1bea8:	00613823          	sd	t1,16(sp)
   1beac:	cf8ff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1beb0:	840514e3          	bnez	a0,1b6f8 <_vfiprintf_r+0x23c>
   1beb4:	02013803          	ld	a6,32(sp)
   1beb8:	07812683          	lw	a3,120(sp)
   1bebc:	08013783          	ld	a5,128(sp)
   1bec0:	41a80b3b          	subw	s6,a6,s10
   1bec4:	01813e03          	ld	t3,24(sp)
   1bec8:	01013303          	ld	t1,16(sp)
   1becc:	00048713          	mv	a4,s1
   1bed0:	0016851b          	addw	a0,a3,1
   1bed4:	9b605ce3          	blez	s6,1b88c <_vfiprintf_r+0x3d0>
   1bed8:	00022eb7          	lui	t4,0x22
   1bedc:	7b0e8e93          	add	t4,t4,1968 # 227b0 <zeroes.0>
   1bee0:	09645463          	bge	s0,s6,1bf68 <_vfiprintf_r+0xaac>
   1bee4:	00700813          	li	a6,7
   1bee8:	00613823          	sd	t1,16(sp)
   1beec:	01c13c23          	sd	t3,24(sp)
   1bef0:	03413023          	sd	s4,32(sp)
   1bef4:	0180006f          	j	1bf0c <_vfiprintf_r+0xa50>
   1bef8:	0026851b          	addw	a0,a3,2
   1befc:	01070713          	add	a4,a4,16
   1bf00:	00058693          	mv	a3,a1
   1bf04:	ff0b0b1b          	addw	s6,s6,-16
   1bf08:	05645a63          	bge	s0,s6,1bf5c <_vfiprintf_r+0xaa0>
   1bf0c:	0016859b          	addw	a1,a3,1
   1bf10:	01078793          	add	a5,a5,16
   1bf14:	01473023          	sd	s4,0(a4)
   1bf18:	00873423          	sd	s0,8(a4)
   1bf1c:	08f13023          	sd	a5,128(sp)
   1bf20:	06b12c23          	sw	a1,120(sp)
   1bf24:	fcb85ae3          	bge	a6,a1,1bef8 <_vfiprintf_r+0xa3c>
   1bf28:	06078463          	beqz	a5,1bf90 <_vfiprintf_r+0xad4>
   1bf2c:	07010613          	add	a2,sp,112
   1bf30:	00090593          	mv	a1,s2
   1bf34:	00098513          	mv	a0,s3
   1bf38:	c6cff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1bf3c:	fa051e63          	bnez	a0,1b6f8 <_vfiprintf_r+0x23c>
   1bf40:	07812683          	lw	a3,120(sp)
   1bf44:	ff0b0b1b          	addw	s6,s6,-16
   1bf48:	08013783          	ld	a5,128(sp)
   1bf4c:	00048713          	mv	a4,s1
   1bf50:	0016851b          	addw	a0,a3,1
   1bf54:	00700813          	li	a6,7
   1bf58:	fb644ae3          	blt	s0,s6,1bf0c <_vfiprintf_r+0xa50>
   1bf5c:	01013303          	ld	t1,16(sp)
   1bf60:	01813e03          	ld	t3,24(sp)
   1bf64:	02013e83          	ld	t4,32(sp)
   1bf68:	016787b3          	add	a5,a5,s6
   1bf6c:	01d73023          	sd	t4,0(a4)
   1bf70:	01673423          	sd	s6,8(a4)
   1bf74:	08f13023          	sd	a5,128(sp)
   1bf78:	06a12c23          	sw	a0,120(sp)
   1bf7c:	00700693          	li	a3,7
   1bf80:	32a6c263          	blt	a3,a0,1c2a4 <_vfiprintf_r+0xde8>
   1bf84:	01070713          	add	a4,a4,16
   1bf88:	0015051b          	addw	a0,a0,1
   1bf8c:	901ff06f          	j	1b88c <_vfiprintf_r+0x3d0>
   1bf90:	00100513          	li	a0,1
   1bf94:	00000693          	li	a3,0
   1bf98:	00048713          	mv	a4,s1
   1bf9c:	f69ff06f          	j	1bf04 <_vfiprintf_r+0xa48>
   1bfa0:	07010613          	add	a2,sp,112
   1bfa4:	00090593          	mv	a1,s2
   1bfa8:	00098513          	mv	a0,s3
   1bfac:	bf8ff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1bfb0:	940506e3          	beqz	a0,1b8fc <_vfiprintf_r+0x440>
   1bfb4:	f44ff06f          	j	1b6f8 <_vfiprintf_r+0x23c>
   1bfb8:	00100613          	li	a2,1
   1bfbc:	00000693          	li	a3,0
   1bfc0:	00048713          	mv	a4,s1
   1bfc4:	e41ff06f          	j	1be04 <_vfiprintf_r+0x948>
   1bfc8:	04078a63          	beqz	a5,1c01c <_vfiprintf_r+0xb60>
   1bfcc:	07010613          	add	a2,sp,112
   1bfd0:	00090593          	mv	a1,s2
   1bfd4:	00098513          	mv	a0,s3
   1bfd8:	05013423          	sd	a6,72(sp)
   1bfdc:	05c13023          	sd	t3,64(sp)
   1bfe0:	02613023          	sd	t1,32(sp)
   1bfe4:	00513c23          	sd	t0,24(sp)
   1bfe8:	01f13823          	sd	t6,16(sp)
   1bfec:	bb8ff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1bff0:	f0051463          	bnez	a0,1b6f8 <_vfiprintf_r+0x23c>
   1bff4:	07812683          	lw	a3,120(sp)
   1bff8:	08013783          	ld	a5,128(sp)
   1bffc:	04813803          	ld	a6,72(sp)
   1c000:	04013e03          	ld	t3,64(sp)
   1c004:	02013303          	ld	t1,32(sp)
   1c008:	01813283          	ld	t0,24(sp)
   1c00c:	01013f83          	ld	t6,16(sp)
   1c010:	00048713          	mv	a4,s1
   1c014:	0016851b          	addw	a0,a3,1
   1c018:	ff4ff06f          	j	1b80c <_vfiprintf_r+0x350>
   1c01c:	460f8863          	beqz	t6,1c48c <_vfiprintf_r+0xfd0>
   1c020:	06810793          	add	a5,sp,104
   1c024:	0ef13823          	sd	a5,240(sp)
   1c028:	00200793          	li	a5,2
   1c02c:	0ef13c23          	sd	a5,248(sp)
   1c030:	00100513          	li	a0,1
   1c034:	00048713          	mv	a4,s1
   1c038:	00050693          	mv	a3,a0
   1c03c:	01070713          	add	a4,a4,16
   1c040:	0015051b          	addw	a0,a0,1
   1c044:	839ff06f          	j	1b87c <_vfiprintf_r+0x3c0>
   1c048:	00078313          	mv	t1,a5
   1c04c:	00200793          	li	a5,2
   1c050:	b40788e3          	beqz	a5,1bba0 <_vfiprintf_r+0x6e4>
   1c054:	00813603          	ld	a2,8(sp)
   1c058:	0ec10593          	add	a1,sp,236
   1c05c:	00058b93          	mv	s7,a1
   1c060:	00f6f793          	and	a5,a3,15
   1c064:	00f607b3          	add	a5,a2,a5
   1c068:	0007c783          	lbu	a5,0(a5)
   1c06c:	0046d693          	srl	a3,a3,0x4
   1c070:	fffb8b93          	add	s7,s7,-1
   1c074:	00fb8023          	sb	a5,0(s7)
   1c078:	fe0694e3          	bnez	a3,1c060 <_vfiprintf_r+0xba4>
   1c07c:	41758d3b          	subw	s10,a1,s7
   1c080:	000d0d9b          	sext.w	s11,s10
   1c084:	9f0d5ce3          	bge	s10,a6,1ba7c <_vfiprintf_r+0x5c0>
   1c088:	00080d9b          	sext.w	s11,a6
   1c08c:	9f1ff06f          	j	1ba7c <_vfiprintf_r+0x5c0>
   1c090:	01000593          	li	a1,16
   1c094:	6965d863          	bge	a1,s6,1c724 <_vfiprintf_r+0x1268>
   1c098:	00022eb7          	lui	t4,0x22
   1c09c:	7c0e8e93          	add	t4,t4,1984 # 227c0 <blanks.1>
   1c0a0:	03713023          	sd	s7,32(sp)
   1c0a4:	01000f13          	li	t5,16
   1c0a8:	00700393          	li	t2,7
   1c0ac:	01f13823          	sd	t6,16(sp)
   1c0b0:	00513c23          	sd	t0,24(sp)
   1c0b4:	04613023          	sd	t1,64(sp)
   1c0b8:	05c13423          	sd	t3,72(sp)
   1c0bc:	05013823          	sd	a6,80(sp)
   1c0c0:	000e8b93          	mv	s7,t4
   1c0c4:	01c0006f          	j	1c0e0 <_vfiprintf_r+0xc24>
   1c0c8:	0026861b          	addw	a2,a3,2
   1c0cc:	01070713          	add	a4,a4,16
   1c0d0:	00058693          	mv	a3,a1
   1c0d4:	ff0b0b1b          	addw	s6,s6,-16
   1c0d8:	056f5e63          	bge	t5,s6,1c134 <_vfiprintf_r+0xc78>
   1c0dc:	0016861b          	addw	a2,a3,1
   1c0e0:	01078793          	add	a5,a5,16
   1c0e4:	01773023          	sd	s7,0(a4)
   1c0e8:	01e73423          	sd	t5,8(a4)
   1c0ec:	08f13023          	sd	a5,128(sp)
   1c0f0:	0006059b          	sext.w	a1,a2
   1c0f4:	06c12c23          	sw	a2,120(sp)
   1c0f8:	fcb3d8e3          	bge	t2,a1,1c0c8 <_vfiprintf_r+0xc0c>
   1c0fc:	08078063          	beqz	a5,1c17c <_vfiprintf_r+0xcc0>
   1c100:	07010613          	add	a2,sp,112
   1c104:	00090593          	mv	a1,s2
   1c108:	00098513          	mv	a0,s3
   1c10c:	a98ff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1c110:	de051463          	bnez	a0,1b6f8 <_vfiprintf_r+0x23c>
   1c114:	07812683          	lw	a3,120(sp)
   1c118:	01000f13          	li	t5,16
   1c11c:	ff0b0b1b          	addw	s6,s6,-16
   1c120:	08013783          	ld	a5,128(sp)
   1c124:	00048713          	mv	a4,s1
   1c128:	0016861b          	addw	a2,a3,1
   1c12c:	00700393          	li	t2,7
   1c130:	fb6f46e3          	blt	t5,s6,1c0dc <_vfiprintf_r+0xc20>
   1c134:	000b8e93          	mv	t4,s7
   1c138:	01013f83          	ld	t6,16(sp)
   1c13c:	01813283          	ld	t0,24(sp)
   1c140:	04013303          	ld	t1,64(sp)
   1c144:	04813e03          	ld	t3,72(sp)
   1c148:	05013803          	ld	a6,80(sp)
   1c14c:	02013b83          	ld	s7,32(sp)
   1c150:	016787b3          	add	a5,a5,s6
   1c154:	01d73023          	sd	t4,0(a4)
   1c158:	01673423          	sd	s6,8(a4)
   1c15c:	08f13023          	sd	a5,128(sp)
   1c160:	06c12c23          	sw	a2,120(sp)
   1c164:	00700693          	li	a3,7
   1c168:	18c6ca63          	blt	a3,a2,1c2fc <_vfiprintf_r+0xe40>
   1c16c:	01070713          	add	a4,a4,16
   1c170:	0016051b          	addw	a0,a2,1
   1c174:	00060693          	mv	a3,a2
   1c178:	e5cff06f          	j	1b7d4 <_vfiprintf_r+0x318>
   1c17c:	00000693          	li	a3,0
   1c180:	00100613          	li	a2,1
   1c184:	00048713          	mv	a4,s1
   1c188:	f4dff06f          	j	1c0d4 <_vfiprintf_r+0xc18>
   1c18c:	06012c23          	sw	zero,120(sp)
   1c190:	00437313          	and	t1,t1,4
   1c194:	0e030e63          	beqz	t1,1c290 <_vfiprintf_r+0xdd4>
   1c198:	41be0b3b          	subw	s6,t3,s11
   1c19c:	0f605a63          	blez	s6,1c290 <_vfiprintf_r+0xdd4>
   1c1a0:	00048713          	mv	a4,s1
   1c1a4:	01000693          	li	a3,16
   1c1a8:	07812603          	lw	a2,120(sp)
   1c1ac:	5966d863          	bge	a3,s6,1c73c <_vfiprintf_r+0x1280>
   1c1b0:	00022eb7          	lui	t4,0x22
   1c1b4:	7c0e8e93          	add	t4,t4,1984 # 227c0 <blanks.1>
   1c1b8:	01813c23          	sd	s8,24(sp)
   1c1bc:	01000b93          	li	s7,16
   1c1c0:	00700d13          	li	s10,7
   1c1c4:	01c13823          	sd	t3,16(sp)
   1c1c8:	000e8c13          	mv	s8,t4
   1c1cc:	0180006f          	j	1c1e4 <_vfiprintf_r+0xd28>
   1c1d0:	0026069b          	addw	a3,a2,2
   1c1d4:	01070713          	add	a4,a4,16
   1c1d8:	00058613          	mv	a2,a1
   1c1dc:	ff0b0b1b          	addw	s6,s6,-16
   1c1e0:	056bd863          	bge	s7,s6,1c230 <_vfiprintf_r+0xd74>
   1c1e4:	0016059b          	addw	a1,a2,1
   1c1e8:	01078793          	add	a5,a5,16
   1c1ec:	01873023          	sd	s8,0(a4)
   1c1f0:	01773423          	sd	s7,8(a4)
   1c1f4:	08f13023          	sd	a5,128(sp)
   1c1f8:	06b12c23          	sw	a1,120(sp)
   1c1fc:	fcbd5ae3          	bge	s10,a1,1c1d0 <_vfiprintf_r+0xd14>
   1c200:	08078063          	beqz	a5,1c280 <_vfiprintf_r+0xdc4>
   1c204:	07010613          	add	a2,sp,112
   1c208:	00090593          	mv	a1,s2
   1c20c:	00098513          	mv	a0,s3
   1c210:	994ff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1c214:	ce051263          	bnez	a0,1b6f8 <_vfiprintf_r+0x23c>
   1c218:	07812603          	lw	a2,120(sp)
   1c21c:	ff0b0b1b          	addw	s6,s6,-16
   1c220:	08013783          	ld	a5,128(sp)
   1c224:	00048713          	mv	a4,s1
   1c228:	0016069b          	addw	a3,a2,1
   1c22c:	fb6bcce3          	blt	s7,s6,1c1e4 <_vfiprintf_r+0xd28>
   1c230:	000c0e93          	mv	t4,s8
   1c234:	01013e03          	ld	t3,16(sp)
   1c238:	01813c03          	ld	s8,24(sp)
   1c23c:	016787b3          	add	a5,a5,s6
   1c240:	01d73023          	sd	t4,0(a4)
   1c244:	01673423          	sd	s6,8(a4)
   1c248:	08f13023          	sd	a5,128(sp)
   1c24c:	06d12c23          	sw	a3,120(sp)
   1c250:	00700713          	li	a4,7
   1c254:	e8d75a63          	bge	a4,a3,1b8e8 <_vfiprintf_r+0x42c>
   1c258:	02078c63          	beqz	a5,1c290 <_vfiprintf_r+0xdd4>
   1c25c:	07010613          	add	a2,sp,112
   1c260:	00090593          	mv	a1,s2
   1c264:	00098513          	mv	a0,s3
   1c268:	01c13823          	sd	t3,16(sp)
   1c26c:	938ff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1c270:	c8051463          	bnez	a0,1b6f8 <_vfiprintf_r+0x23c>
   1c274:	08013783          	ld	a5,128(sp)
   1c278:	01013e03          	ld	t3,16(sp)
   1c27c:	e6cff06f          	j	1b8e8 <_vfiprintf_r+0x42c>
   1c280:	00100693          	li	a3,1
   1c284:	00000613          	li	a2,0
   1c288:	00048713          	mv	a4,s1
   1c28c:	f51ff06f          	j	1c1dc <_vfiprintf_r+0xd20>
   1c290:	000e0793          	mv	a5,t3
   1c294:	01be5463          	bge	t3,s11,1c29c <_vfiprintf_r+0xde0>
   1c298:	000d8793          	mv	a5,s11
   1c29c:	01578abb          	addw	s5,a5,s5
   1c2a0:	e5cff06f          	j	1b8fc <_vfiprintf_r+0x440>
   1c2a4:	ae078ce3          	beqz	a5,1bd9c <_vfiprintf_r+0x8e0>
   1c2a8:	07010613          	add	a2,sp,112
   1c2ac:	00090593          	mv	a1,s2
   1c2b0:	00098513          	mv	a0,s3
   1c2b4:	01c13c23          	sd	t3,24(sp)
   1c2b8:	00613823          	sd	t1,16(sp)
   1c2bc:	8e8ff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1c2c0:	c2051c63          	bnez	a0,1b6f8 <_vfiprintf_r+0x23c>
   1c2c4:	07812503          	lw	a0,120(sp)
   1c2c8:	08013783          	ld	a5,128(sp)
   1c2cc:	01813e03          	ld	t3,24(sp)
   1c2d0:	01013303          	ld	t1,16(sp)
   1c2d4:	00048713          	mv	a4,s1
   1c2d8:	0015051b          	addw	a0,a0,1
   1c2dc:	db0ff06f          	j	1b88c <_vfiprintf_r+0x3d0>
   1c2e0:	06012c23          	sw	zero,120(sp)
   1c2e4:	00048713          	mv	a4,s1
   1c2e8:	b2cff06f          	j	1b614 <_vfiprintf_r+0x158>
   1c2ec:	00100513          	li	a0,1
   1c2f0:	00000693          	li	a3,0
   1c2f4:	00048713          	mv	a4,s1
   1c2f8:	d84ff06f          	j	1b87c <_vfiprintf_r+0x3c0>
   1c2fc:	2a078063          	beqz	a5,1c59c <_vfiprintf_r+0x10e0>
   1c300:	07010613          	add	a2,sp,112
   1c304:	00090593          	mv	a1,s2
   1c308:	00098513          	mv	a0,s3
   1c30c:	05013423          	sd	a6,72(sp)
   1c310:	05c13023          	sd	t3,64(sp)
   1c314:	02613023          	sd	t1,32(sp)
   1c318:	00513c23          	sd	t0,24(sp)
   1c31c:	01f13823          	sd	t6,16(sp)
   1c320:	884ff0ef          	jal	1b3a4 <__sprint_r.part.0>
   1c324:	bc051a63          	bnez	a0,1b6f8 <_vfiprintf_r+0x23c>
   1c328:	07812683          	lw	a3,120(sp)
   1c32c:	08013783          	ld	a5,128(sp)
   1c330:	04813803          	ld	a6,72(sp)
   1c334:	04013e03          	ld	t3,64(sp)
   1c338:	02013303          	ld	t1,32(sp)
   1c33c:	01813283          	ld	t0,24(sp)
   1c340:	01013f83          	ld	t6,16(sp)
   1c344:	00048713          	mv	a4,s1
   1c348:	0016851b          	addw	a0,a3,1
   1c34c:	c88ff06f          	j	1b7d4 <_vfiprintf_r+0x318>
   1c350:	00000d93          	li	s11,0
   1c354:	00000d13          	li	s10,0
   1c358:	0ec10b93          	add	s7,sp,236
   1c35c:	f20ff06f          	j	1ba7c <_vfiprintf_r+0x5c0>
   1c360:	05213c23          	sd	s2,88(sp)
   1c364:	03013903          	ld	s2,48(sp)
   1c368:	0ec10593          	add	a1,sp,236
   1c36c:	05313823          	sd	s3,80(sp)
   1c370:	40037d13          	and	s10,t1,1024
   1c374:	00000b13          	li	s6,0
   1c378:	00058b93          	mv	s7,a1
   1c37c:	00900c13          	li	s8,9
   1c380:	00613823          	sd	t1,16(sp)
   1c384:	01c13c23          	sd	t3,24(sp)
   1c388:	03013023          	sd	a6,32(sp)
   1c38c:	04e13023          	sd	a4,64(sp)
   1c390:	04d13423          	sd	a3,72(sp)
   1c394:	00058993          	mv	s3,a1
   1c398:	00a00593          	li	a1,10
   1c39c:	000d8513          	mv	a0,s11
   1c3a0:	051050ef          	jal	21bf0 <__umoddi3>
   1c3a4:	0305051b          	addw	a0,a0,48
   1c3a8:	fea98fa3          	sb	a0,-1(s3)
   1c3ac:	001b0b1b          	addw	s6,s6,1
   1c3b0:	fff98993          	add	s3,s3,-1
   1c3b4:	000d0663          	beqz	s10,1c3c0 <_vfiprintf_r+0xf04>
   1c3b8:	00094703          	lbu	a4,0(s2)
   1c3bc:	01670e63          	beq	a4,s6,1c3d8 <_vfiprintf_r+0xf1c>
   1c3c0:	00a00593          	li	a1,10
   1c3c4:	000d8513          	mv	a0,s11
   1c3c8:	7e0050ef          	jal	21ba8 <__hidden___udivdi3>
   1c3cc:	01bc7c63          	bgeu	s8,s11,1c3e4 <_vfiprintf_r+0xf28>
   1c3d0:	00050d93          	mv	s11,a0
   1c3d4:	fc5ff06f          	j	1c398 <_vfiprintf_r+0xedc>
   1c3d8:	0ff00793          	li	a5,255
   1c3dc:	fef702e3          	beq	a4,a5,1c3c0 <_vfiprintf_r+0xf04>
   1c3e0:	1fbc6063          	bltu	s8,s11,1c5c0 <_vfiprintf_r+0x1104>
   1c3e4:	02013803          	ld	a6,32(sp)
   1c3e8:	000b8593          	mv	a1,s7
   1c3ec:	00098b93          	mv	s7,s3
   1c3f0:	03213823          	sd	s2,48(sp)
   1c3f4:	41758d3b          	subw	s10,a1,s7
   1c3f8:	01013303          	ld	t1,16(sp)
   1c3fc:	01813e03          	ld	t3,24(sp)
   1c400:	04013703          	ld	a4,64(sp)
   1c404:	04813683          	ld	a3,72(sp)
   1c408:	05813903          	ld	s2,88(sp)
   1c40c:	05013983          	ld	s3,80(sp)
   1c410:	000d0d9b          	sext.w	s11,s10
   1c414:	010d5463          	bge	s10,a6,1c41c <_vfiprintf_r+0xf60>
   1c418:	00080d9b          	sext.w	s11,a6
   1c41c:	00068c13          	mv	s8,a3
   1c420:	e5cff06f          	j	1ba7c <_vfiprintf_r+0x5c0>
   1c424:	00000d93          	li	s11,0
   1c428:	0ec10b93          	add	s7,sp,236
   1c42c:	e50ff06f          	j	1ba7c <_vfiprintf_r+0x5c0>
   1c430:	01070713          	add	a4,a4,16
   1c434:	0016051b          	addw	a0,a2,1
   1c438:	00060693          	mv	a3,a2
   1c43c:	c48ff06f          	j	1b884 <_vfiprintf_r+0x3c8>
   1c440:	0407f613          	and	a2,a5,64
   1c444:	000c2683          	lw	a3,0(s8)
   1c448:	20060863          	beqz	a2,1c658 <_vfiprintf_r+0x119c>
   1c44c:	03069693          	sll	a3,a3,0x30
   1c450:	0306d693          	srl	a3,a3,0x30
   1c454:	e90ff06f          	j	1bae4 <_vfiprintf_r+0x628>
   1c458:	040d7613          	and	a2,s10,64
   1c45c:	000c2783          	lw	a5,0(s8)
   1c460:	20060c63          	beqz	a2,1c678 <_vfiprintf_r+0x11bc>
   1c464:	03079d93          	sll	s11,a5,0x30
   1c468:	030ddd93          	srl	s11,s11,0x30
   1c46c:	909ff06f          	j	1bd74 <_vfiprintf_r+0x8b8>
   1c470:	000cc783          	lbu	a5,0(s9)
   1c474:	9c068a63          	beqz	a3,1b648 <_vfiprintf_r+0x18c>
   1c478:	0006c683          	lbu	a3,0(a3)
   1c47c:	9c068663          	beqz	a3,1b648 <_vfiprintf_r+0x18c>
   1c480:	400b6313          	or	t1,s6,1024
   1c484:	00030b1b          	sext.w	s6,t1
   1c488:	9c0ff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1c48c:	00000693          	li	a3,0
   1c490:	00100513          	li	a0,1
   1c494:	00048713          	mv	a4,s1
   1c498:	be4ff06f          	j	1b87c <_vfiprintf_r+0x3c0>
   1c49c:	00080d9b          	sext.w	s11,a6
   1c4a0:	00060b93          	mv	s7,a2
   1c4a4:	dd8ff06f          	j	1ba7c <_vfiprintf_r+0x5c0>
   1c4a8:	000226b7          	lui	a3,0x22
   1c4ac:	cf868693          	add	a3,a3,-776 # 21cf8 <__clzdi2+0x98>
   1c4b0:	000b0313          	mv	t1,s6
   1c4b4:	00d13423          	sd	a3,8(sp)
   1c4b8:	02037693          	and	a3,t1,32
   1c4bc:	000d0e13          	mv	t3,s10
   1c4c0:	000d8813          	mv	a6,s11
   1c4c4:	008c0613          	add	a2,s8,8
   1c4c8:	08069a63          	bnez	a3,1c55c <_vfiprintf_r+0x10a0>
   1c4cc:	01037693          	and	a3,t1,16
   1c4d0:	08069663          	bnez	a3,1c55c <_vfiprintf_r+0x10a0>
   1c4d4:	04037593          	and	a1,t1,64
   1c4d8:	000c2683          	lw	a3,0(s8)
   1c4dc:	18058663          	beqz	a1,1c668 <_vfiprintf_r+0x11ac>
   1c4e0:	03069693          	sll	a3,a3,0x30
   1c4e4:	0306d693          	srl	a3,a3,0x30
   1c4e8:	00137593          	and	a1,t1,1
   1c4ec:	00058e63          	beqz	a1,1c508 <_vfiprintf_r+0x104c>
   1c4f0:	00068c63          	beqz	a3,1c508 <_vfiprintf_r+0x104c>
   1c4f4:	00236313          	or	t1,t1,2
   1c4f8:	03000593          	li	a1,48
   1c4fc:	06b10423          	sb	a1,104(sp)
   1c500:	06f104a3          	sb	a5,105(sp)
   1c504:	0003031b          	sext.w	t1,t1
   1c508:	bff37313          	and	t1,t1,-1025
   1c50c:	0003031b          	sext.w	t1,t1
   1c510:	00060c13          	mv	s8,a2
   1c514:	e50ff06f          	j	1bb64 <_vfiprintf_r+0x6a8>
   1c518:	000d0e13          	mv	t3,s10
   1c51c:	000d8813          	mv	a6,s11
   1c520:	000b0d13          	mv	s10,s6
   1c524:	839ff06f          	j	1bd5c <_vfiprintf_r+0x8a0>
   1c528:	000d0e13          	mv	t3,s10
   1c52c:	000d8813          	mv	a6,s11
   1c530:	000b0793          	mv	a5,s6
   1c534:	d98ff06f          	j	1bacc <_vfiprintf_r+0x610>
   1c538:	000226b7          	lui	a3,0x22
   1c53c:	d1068693          	add	a3,a3,-752 # 21d10 <__clzdi2+0xb0>
   1c540:	000b0313          	mv	t1,s6
   1c544:	00d13423          	sd	a3,8(sp)
   1c548:	02037693          	and	a3,t1,32
   1c54c:	000d0e13          	mv	t3,s10
   1c550:	000d8813          	mv	a6,s11
   1c554:	008c0613          	add	a2,s8,8
   1c558:	f6068ae3          	beqz	a3,1c4cc <_vfiprintf_r+0x1010>
   1c55c:	000c3683          	ld	a3,0(s8)
   1c560:	f89ff06f          	j	1c4e8 <_vfiprintf_r+0x102c>
   1c564:	000b8513          	mv	a0,s7
   1c568:	02e13023          	sd	a4,32(sp)
   1c56c:	01a13c23          	sd	s10,24(sp)
   1c570:	01613823          	sd	s6,16(sp)
   1c574:	efcfc0ef          	jal	18c70 <strlen>
   1c578:	00050d1b          	sext.w	s10,a0
   1c57c:	fffd4d93          	not	s11,s10
   1c580:	43fddd93          	sra	s11,s11,0x3f
   1c584:	01013303          	ld	t1,16(sp)
   1c588:	01813e03          	ld	t3,24(sp)
   1c58c:	02013703          	ld	a4,32(sp)
   1c590:	01adfdb3          	and	s11,s11,s10
   1c594:	00000813          	li	a6,0
   1c598:	ce4ff06f          	j	1ba7c <_vfiprintf_r+0x5c0>
   1c59c:	06714703          	lbu	a4,103(sp)
   1c5a0:	12070063          	beqz	a4,1c6c0 <_vfiprintf_r+0x1204>
   1c5a4:	06710793          	add	a5,sp,103
   1c5a8:	0ef13823          	sd	a5,240(sp)
   1c5ac:	00100793          	li	a5,1
   1c5b0:	0ef13c23          	sd	a5,248(sp)
   1c5b4:	00100513          	li	a0,1
   1c5b8:	00048713          	mv	a4,s1
   1c5bc:	a44ff06f          	j	1b800 <_vfiprintf_r+0x344>
   1c5c0:	02813783          	ld	a5,40(sp)
   1c5c4:	03813583          	ld	a1,56(sp)
   1c5c8:	00000b13          	li	s6,0
   1c5cc:	40f989b3          	sub	s3,s3,a5
   1c5d0:	00078613          	mv	a2,a5
   1c5d4:	00098513          	mv	a0,s3
   1c5d8:	f60fc0ef          	jal	18d38 <strncpy>
   1c5dc:	00194703          	lbu	a4,1(s2)
   1c5e0:	000d8513          	mv	a0,s11
   1c5e4:	00a00593          	li	a1,10
   1c5e8:	00e03733          	snez	a4,a4
   1c5ec:	00e90933          	add	s2,s2,a4
   1c5f0:	5b8050ef          	jal	21ba8 <__hidden___udivdi3>
   1c5f4:	00050d93          	mv	s11,a0
   1c5f8:	da1ff06f          	j	1c398 <_vfiprintf_r+0xedc>
   1c5fc:	00078313          	mv	t1,a5
   1c600:	00000793          	li	a5,0
   1c604:	d8078e63          	beqz	a5,1bba0 <_vfiprintf_r+0x6e4>
   1c608:	a4dff06f          	j	1c054 <_vfiprintf_r+0xb98>
   1c60c:	020b6313          	or	t1,s6,32
   1c610:	001cc783          	lbu	a5,1(s9)
   1c614:	00030b1b          	sext.w	s6,t1
   1c618:	001c8c93          	add	s9,s9,1
   1c61c:	82cff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1c620:	200b6313          	or	t1,s6,512
   1c624:	001cc783          	lbu	a5,1(s9)
   1c628:	00030b1b          	sext.w	s6,t1
   1c62c:	001c8c93          	add	s9,s9,1
   1c630:	818ff06f          	j	1b648 <_vfiprintf_r+0x18c>
   1c634:	00600793          	li	a5,6
   1c638:	000d8d1b          	sext.w	s10,s11
   1c63c:	07b7ee63          	bltu	a5,s11,1c6b8 <_vfiprintf_r+0x11fc>
   1c640:	00022bb7          	lui	s7,0x22
   1c644:	000d0d93          	mv	s11,s10
   1c648:	d28b8b93          	add	s7,s7,-728 # 21d28 <__clzdi2+0xc8>
   1c64c:	958ff06f          	j	1b7a4 <_vfiprintf_r+0x2e8>
   1c650:	00000693          	li	a3,0
   1c654:	a01ff06f          	j	1c054 <_vfiprintf_r+0xb98>
   1c658:	2007f613          	and	a2,a5,512
   1c65c:	08060c63          	beqz	a2,1c6f4 <_vfiprintf_r+0x1238>
   1c660:	0ff6f693          	zext.b	a3,a3
   1c664:	c80ff06f          	j	1bae4 <_vfiprintf_r+0x628>
   1c668:	20037593          	and	a1,t1,512
   1c66c:	06058e63          	beqz	a1,1c6e8 <_vfiprintf_r+0x122c>
   1c670:	0ff6f693          	zext.b	a3,a3
   1c674:	e75ff06f          	j	1c4e8 <_vfiprintf_r+0x102c>
   1c678:	200d7613          	and	a2,s10,512
   1c67c:	0ff7fd93          	zext.b	s11,a5
   1c680:	ee061a63          	bnez	a2,1bd74 <_vfiprintf_r+0x8b8>
   1c684:	02079d93          	sll	s11,a5,0x20
   1c688:	020ddd93          	srl	s11,s11,0x20
   1c68c:	ee8ff06f          	j	1bd74 <_vfiprintf_r+0x8b8>
   1c690:	20037613          	and	a2,t1,512
   1c694:	04060463          	beqz	a2,1c6dc <_vfiprintf_r+0x1220>
   1c698:	01879d9b          	sllw	s11,a5,0x18
   1c69c:	418ddd9b          	sraw	s11,s11,0x18
   1c6a0:	000d8613          	mv	a2,s11
   1c6a4:	b58ff06f          	j	1b9fc <_vfiprintf_r+0x540>
   1c6a8:	00100513          	li	a0,1
   1c6ac:	00000693          	li	a3,0
   1c6b0:	00048713          	mv	a4,s1
   1c6b4:	9d0ff06f          	j	1b884 <_vfiprintf_r+0x3c8>
   1c6b8:	00600d13          	li	s10,6
   1c6bc:	f85ff06f          	j	1c640 <_vfiprintf_r+0x1184>
   1c6c0:	00000693          	li	a3,0
   1c6c4:	00100513          	li	a0,1
   1c6c8:	00048713          	mv	a4,s1
   1c6cc:	940ff06f          	j	1b80c <_vfiprintf_r+0x350>
   1c6d0:	01569023          	sh	s5,0(a3)
   1c6d4:	008c0c13          	add	s8,s8,8
   1c6d8:	ecdfe06f          	j	1b5a4 <_vfiprintf_r+0xe8>
   1c6dc:	00078d93          	mv	s11,a5
   1c6e0:	00078613          	mv	a2,a5
   1c6e4:	b18ff06f          	j	1b9fc <_vfiprintf_r+0x540>
   1c6e8:	02069693          	sll	a3,a3,0x20
   1c6ec:	0206d693          	srl	a3,a3,0x20
   1c6f0:	df9ff06f          	j	1c4e8 <_vfiprintf_r+0x102c>
   1c6f4:	02069693          	sll	a3,a3,0x20
   1c6f8:	0206d693          	srl	a3,a3,0x20
   1c6fc:	be8ff06f          	j	1bae4 <_vfiprintf_r+0x628>
   1c700:	07010613          	add	a2,sp,112
   1c704:	00090593          	mv	a1,s2
   1c708:	00098513          	mv	a0,s3
   1c70c:	c99fe0ef          	jal	1b3a4 <__sprint_r.part.0>
   1c710:	fe9fe06f          	j	1b6f8 <_vfiprintf_r+0x23c>
   1c714:	00080d93          	mv	s11,a6
   1c718:	00080d13          	mv	s10,a6
   1c71c:	00000813          	li	a6,0
   1c720:	b5cff06f          	j	1ba7c <_vfiprintf_r+0x5c0>
   1c724:	00022eb7          	lui	t4,0x22
   1c728:	7c0e8e93          	add	t4,t4,1984 # 227c0 <blanks.1>
   1c72c:	a25ff06f          	j	1c150 <_vfiprintf_r+0xc94>
   1c730:	00068c13          	mv	s8,a3
   1c734:	03000793          	li	a5,48
   1c738:	b2cff06f          	j	1ba64 <_vfiprintf_r+0x5a8>
   1c73c:	00022eb7          	lui	t4,0x22
   1c740:	0016069b          	addw	a3,a2,1
   1c744:	7c0e8e93          	add	t4,t4,1984 # 227c0 <blanks.1>
   1c748:	af5ff06f          	j	1c23c <_vfiprintf_r+0xd80>
   1c74c:	fff00a93          	li	s5,-1
   1c750:	fb9fe06f          	j	1b708 <_vfiprintf_r+0x24c>
   1c754:	00022eb7          	lui	t4,0x22
   1c758:	00050613          	mv	a2,a0
   1c75c:	7b0e8e93          	add	t4,t4,1968 # 227b0 <zeroes.0>
   1c760:	f14ff06f          	j	1be74 <_vfiprintf_r+0x9b8>
   1c764:	0156a023          	sw	s5,0(a3)
   1c768:	008c0c13          	add	s8,s8,8
   1c76c:	e39fe06f          	j	1b5a4 <_vfiprintf_r+0xe8>
   1c770:	000c2783          	lw	a5,0(s8)
   1c774:	008c0c13          	add	s8,s8,8
   1c778:	00078813          	mv	a6,a5
   1c77c:	0007d463          	bgez	a5,1c784 <_vfiprintf_r+0x12c8>
   1c780:	fff00813          	li	a6,-1
   1c784:	001cc783          	lbu	a5,1(s9)
   1c788:	00080d9b          	sext.w	s11,a6
   1c78c:	00068c93          	mv	s9,a3
   1c790:	eb9fe06f          	j	1b648 <_vfiprintf_r+0x18c>

000000000001c794 <vfiprintf>:
   1c794:	00050793          	mv	a5,a0
   1c798:	7581b503          	ld	a0,1880(gp) # 24d40 <_impure_ptr>
   1c79c:	00060693          	mv	a3,a2
   1c7a0:	00058613          	mv	a2,a1
   1c7a4:	00078593          	mv	a1,a5
   1c7a8:	d15fe06f          	j	1b4bc <_vfiprintf_r>

000000000001c7ac <__sbprintf>:
   1c7ac:	01059783          	lh	a5,16(a1)
   1c7b0:	0125d703          	lhu	a4,18(a1)
   1c7b4:	0ac5a303          	lw	t1,172(a1)
   1c7b8:	ffd7f793          	and	a5,a5,-3
   1c7bc:	0107979b          	sllw	a5,a5,0x10
   1c7c0:	0305b883          	ld	a7,48(a1)
   1c7c4:	0405b803          	ld	a6,64(a1)
   1c7c8:	0107171b          	sllw	a4,a4,0x10
   1c7cc:	0107d79b          	srlw	a5,a5,0x10
   1c7d0:	b3010113          	add	sp,sp,-1232
   1c7d4:	00e7e7b3          	or	a5,a5,a4
   1c7d8:	4c813023          	sd	s0,1216(sp)
   1c7dc:	40000713          	li	a4,1024
   1c7e0:	00f12823          	sw	a5,16(sp)
   1c7e4:	00058413          	mv	s0,a1
   1c7e8:	0b010793          	add	a5,sp,176
   1c7ec:	00010593          	mv	a1,sp
   1c7f0:	4a913c23          	sd	s1,1208(sp)
   1c7f4:	4b213823          	sd	s2,1200(sp)
   1c7f8:	4c113423          	sd	ra,1224(sp)
   1c7fc:	00050913          	mv	s2,a0
   1c800:	0a612623          	sw	t1,172(sp)
   1c804:	03113823          	sd	a7,48(sp)
   1c808:	05013023          	sd	a6,64(sp)
   1c80c:	00f13023          	sd	a5,0(sp)
   1c810:	00f13c23          	sd	a5,24(sp)
   1c814:	00e12623          	sw	a4,12(sp)
   1c818:	02e12023          	sw	a4,32(sp)
   1c81c:	02012423          	sw	zero,40(sp)
   1c820:	c9dfe0ef          	jal	1b4bc <_vfiprintf_r>
   1c824:	00050493          	mv	s1,a0
   1c828:	02055c63          	bgez	a0,1c860 <__sbprintf+0xb4>
   1c82c:	01015783          	lhu	a5,16(sp)
   1c830:	0407f793          	and	a5,a5,64
   1c834:	00078863          	beqz	a5,1c844 <__sbprintf+0x98>
   1c838:	01045783          	lhu	a5,16(s0)
   1c83c:	0407e793          	or	a5,a5,64
   1c840:	00f41823          	sh	a5,16(s0)
   1c844:	4c813083          	ld	ra,1224(sp)
   1c848:	4c013403          	ld	s0,1216(sp)
   1c84c:	4b013903          	ld	s2,1200(sp)
   1c850:	00048513          	mv	a0,s1
   1c854:	4b813483          	ld	s1,1208(sp)
   1c858:	4d010113          	add	sp,sp,1232
   1c85c:	00008067          	ret
   1c860:	00010593          	mv	a1,sp
   1c864:	00090513          	mv	a0,s2
   1c868:	f74f60ef          	jal	12fdc <_fflush_r>
   1c86c:	fc0500e3          	beqz	a0,1c82c <__sbprintf+0x80>
   1c870:	fff00493          	li	s1,-1
   1c874:	fb9ff06f          	j	1c82c <__sbprintf+0x80>

000000000001c878 <_wctomb_r>:
   1c878:	e401b783          	ld	a5,-448(gp) # 24428 <__global_locale+0xe0>
   1c87c:	00078067          	jr	a5

000000000001c880 <__ascii_wctomb>:
   1c880:	0006079b          	sext.w	a5,a2
   1c884:	02058463          	beqz	a1,1c8ac <__ascii_wctomb+0x2c>
   1c888:	0ff00713          	li	a4,255
   1c88c:	00f76863          	bltu	a4,a5,1c89c <__ascii_wctomb+0x1c>
   1c890:	00c58023          	sb	a2,0(a1)
   1c894:	00100513          	li	a0,1
   1c898:	00008067          	ret
   1c89c:	08a00793          	li	a5,138
   1c8a0:	00f52023          	sw	a5,0(a0)
   1c8a4:	fff00513          	li	a0,-1
   1c8a8:	00008067          	ret
   1c8ac:	00000513          	li	a0,0
   1c8b0:	00008067          	ret

000000000001c8b4 <_write_r>:
   1c8b4:	fe010113          	add	sp,sp,-32
   1c8b8:	00058713          	mv	a4,a1
   1c8bc:	00813823          	sd	s0,16(sp)
   1c8c0:	00913423          	sd	s1,8(sp)
   1c8c4:	00060593          	mv	a1,a2
   1c8c8:	00050413          	mv	s0,a0
   1c8cc:	00068613          	mv	a2,a3
   1c8d0:	00070513          	mv	a0,a4
   1c8d4:	00113c23          	sd	ra,24(sp)
   1c8d8:	7801a823          	sw	zero,1936(gp) # 24d78 <errno>
   1c8dc:	41c030ef          	jal	1fcf8 <_write>
   1c8e0:	fff00793          	li	a5,-1
   1c8e4:	00f50c63          	beq	a0,a5,1c8fc <_write_r+0x48>
   1c8e8:	01813083          	ld	ra,24(sp)
   1c8ec:	01013403          	ld	s0,16(sp)
   1c8f0:	00813483          	ld	s1,8(sp)
   1c8f4:	02010113          	add	sp,sp,32
   1c8f8:	00008067          	ret
   1c8fc:	7901a783          	lw	a5,1936(gp) # 24d78 <errno>
   1c900:	fe0784e3          	beqz	a5,1c8e8 <_write_r+0x34>
   1c904:	01813083          	ld	ra,24(sp)
   1c908:	00f42023          	sw	a5,0(s0)
   1c90c:	01013403          	ld	s0,16(sp)
   1c910:	00813483          	ld	s1,8(sp)
   1c914:	02010113          	add	sp,sp,32
   1c918:	00008067          	ret

000000000001c91c <__assert_func>:
   1c91c:	7581b703          	ld	a4,1880(gp) # 24d40 <_impure_ptr>
   1c920:	ff010113          	add	sp,sp,-16
   1c924:	00068793          	mv	a5,a3
   1c928:	00060813          	mv	a6,a2
   1c92c:	00113423          	sd	ra,8(sp)
   1c930:	01873883          	ld	a7,24(a4)
   1c934:	00050693          	mv	a3,a0
   1c938:	00058713          	mv	a4,a1
   1c93c:	00078613          	mv	a2,a5
   1c940:	02080063          	beqz	a6,1c960 <__assert_func+0x44>
   1c944:	000227b7          	lui	a5,0x22
   1c948:	7d078793          	add	a5,a5,2000 # 227d0 <blanks.1+0x10>
   1c94c:	000225b7          	lui	a1,0x22
   1c950:	7e058593          	add	a1,a1,2016 # 227e0 <blanks.1+0x20>
   1c954:	00088513          	mv	a0,a7
   1c958:	3b8000ef          	jal	1cd10 <fiprintf>
   1c95c:	315020ef          	jal	1f470 <abort>
   1c960:	00022837          	lui	a6,0x22
   1c964:	d0880793          	add	a5,a6,-760 # 21d08 <__clzdi2+0xa8>
   1c968:	d0880813          	add	a6,a6,-760
   1c96c:	fe1ff06f          	j	1c94c <__assert_func+0x30>

000000000001c970 <__assert>:
   1c970:	ff010113          	add	sp,sp,-16
   1c974:	00060693          	mv	a3,a2
   1c978:	00000613          	li	a2,0
   1c97c:	00113423          	sd	ra,8(sp)
   1c980:	f9dff0ef          	jal	1c91c <__assert_func>

000000000001c984 <atexit>:
   1c984:	00050593          	mv	a1,a0
   1c988:	00000693          	li	a3,0
   1c98c:	00000613          	li	a2,0
   1c990:	00000513          	li	a0,0
   1c994:	2f50206f          	j	1f488 <__register_exitproc>

000000000001c998 <_calloc_r>:
   1c998:	fd010113          	add	sp,sp,-48
   1c99c:	02813023          	sd	s0,32(sp)
   1c9a0:	02113423          	sd	ra,40(sp)
   1c9a4:	00913c23          	sd	s1,24(sp)
   1c9a8:	01213823          	sd	s2,16(sp)
   1c9ac:	01313423          	sd	s3,8(sp)
   1c9b0:	4205d693          	sra	a3,a1,0x20
   1c9b4:	00058793          	mv	a5,a1
   1c9b8:	00050413          	mv	s0,a0
   1c9bc:	02065713          	srl	a4,a2,0x20
   1c9c0:	0c069c63          	bnez	a3,1ca98 <_calloc_r+0x100>
   1c9c4:	16071263          	bnez	a4,1cb28 <_calloc_r+0x190>
   1c9c8:	02061593          	sll	a1,a2,0x20
   1c9cc:	02079513          	sll	a0,a5,0x20
   1c9d0:	0205d593          	srl	a1,a1,0x20
   1c9d4:	02055513          	srl	a0,a0,0x20
   1c9d8:	164050ef          	jal	21b3c <__muldi3>
   1c9dc:	00050593          	mv	a1,a0
   1c9e0:	00040513          	mv	a0,s0
   1c9e4:	8bcfa0ef          	jal	16aa0 <_malloc_r>
   1c9e8:	00050413          	mv	s0,a0
   1c9ec:	10050c63          	beqz	a0,1cb04 <_calloc_r+0x16c>
   1c9f0:	ff853603          	ld	a2,-8(a0)
   1c9f4:	04800713          	li	a4,72
   1c9f8:	ffc67613          	and	a2,a2,-4
   1c9fc:	ff860613          	add	a2,a2,-8
   1ca00:	04c76e63          	bltu	a4,a2,1ca5c <_calloc_r+0xc4>
   1ca04:	02700693          	li	a3,39
   1ca08:	00050793          	mv	a5,a0
   1ca0c:	02c6f263          	bgeu	a3,a2,1ca30 <_calloc_r+0x98>
   1ca10:	00053023          	sd	zero,0(a0)
   1ca14:	00053423          	sd	zero,8(a0)
   1ca18:	03700793          	li	a5,55
   1ca1c:	06c7f463          	bgeu	a5,a2,1ca84 <_calloc_r+0xec>
   1ca20:	00053823          	sd	zero,16(a0)
   1ca24:	00053c23          	sd	zero,24(a0)
   1ca28:	02050793          	add	a5,a0,32
   1ca2c:	10e60463          	beq	a2,a4,1cb34 <_calloc_r+0x19c>
   1ca30:	0007b023          	sd	zero,0(a5)
   1ca34:	0007b423          	sd	zero,8(a5)
   1ca38:	0007b823          	sd	zero,16(a5)
   1ca3c:	02813083          	ld	ra,40(sp)
   1ca40:	00040513          	mv	a0,s0
   1ca44:	02013403          	ld	s0,32(sp)
   1ca48:	01813483          	ld	s1,24(sp)
   1ca4c:	01013903          	ld	s2,16(sp)
   1ca50:	00813983          	ld	s3,8(sp)
   1ca54:	03010113          	add	sp,sp,48
   1ca58:	00008067          	ret
   1ca5c:	00000593          	li	a1,0
   1ca60:	84df30ef          	jal	102ac <memset>
   1ca64:	02813083          	ld	ra,40(sp)
   1ca68:	00040513          	mv	a0,s0
   1ca6c:	02013403          	ld	s0,32(sp)
   1ca70:	01813483          	ld	s1,24(sp)
   1ca74:	01013903          	ld	s2,16(sp)
   1ca78:	00813983          	ld	s3,8(sp)
   1ca7c:	03010113          	add	sp,sp,48
   1ca80:	00008067          	ret
   1ca84:	01050793          	add	a5,a0,16
   1ca88:	0007b023          	sd	zero,0(a5)
   1ca8c:	0007b423          	sd	zero,8(a5)
   1ca90:	0007b823          	sd	zero,16(a5)
   1ca94:	fa9ff06f          	j	1ca3c <_calloc_r+0xa4>
   1ca98:	0a071663          	bnez	a4,1cb44 <_calloc_r+0x1ac>
   1ca9c:	0205d593          	srl	a1,a1,0x20
   1caa0:	00058913          	mv	s2,a1
   1caa4:	00060993          	mv	s3,a2
   1caa8:	02079513          	sll	a0,a5,0x20
   1caac:	02061593          	sll	a1,a2,0x20
   1cab0:	0205d593          	srl	a1,a1,0x20
   1cab4:	02055513          	srl	a0,a0,0x20
   1cab8:	084050ef          	jal	21b3c <__muldi3>
   1cabc:	00050493          	mv	s1,a0
   1cac0:	02091593          	sll	a1,s2,0x20
   1cac4:	02099513          	sll	a0,s3,0x20
   1cac8:	0205d593          	srl	a1,a1,0x20
   1cacc:	02055513          	srl	a0,a0,0x20
   1cad0:	06c050ef          	jal	21b3c <__muldi3>
   1cad4:	0204d793          	srl	a5,s1,0x20
   1cad8:	00f505b3          	add	a1,a0,a5
   1cadc:	4205d793          	sra	a5,a1,0x20
   1cae0:	06079263          	bnez	a5,1cb44 <_calloc_r+0x1ac>
   1cae4:	02049493          	sll	s1,s1,0x20
   1cae8:	02059593          	sll	a1,a1,0x20
   1caec:	0204d493          	srl	s1,s1,0x20
   1caf0:	00040513          	mv	a0,s0
   1caf4:	0095e5b3          	or	a1,a1,s1
   1caf8:	fa9f90ef          	jal	16aa0 <_malloc_r>
   1cafc:	00050413          	mv	s0,a0
   1cb00:	ee0518e3          	bnez	a0,1c9f0 <_calloc_r+0x58>
   1cb04:	00000413          	li	s0,0
   1cb08:	02813083          	ld	ra,40(sp)
   1cb0c:	00040513          	mv	a0,s0
   1cb10:	02013403          	ld	s0,32(sp)
   1cb14:	01813483          	ld	s1,24(sp)
   1cb18:	01013903          	ld	s2,16(sp)
   1cb1c:	00813983          	ld	s3,8(sp)
   1cb20:	03010113          	add	sp,sp,48
   1cb24:	00008067          	ret
   1cb28:	00070913          	mv	s2,a4
   1cb2c:	00058993          	mv	s3,a1
   1cb30:	f79ff06f          	j	1caa8 <_calloc_r+0x110>
   1cb34:	02053023          	sd	zero,32(a0)
   1cb38:	03050793          	add	a5,a0,48
   1cb3c:	02053423          	sd	zero,40(a0)
   1cb40:	ef1ff06f          	j	1ca30 <_calloc_r+0x98>
   1cb44:	070000ef          	jal	1cbb4 <__errno>
   1cb48:	00c00793          	li	a5,12
   1cb4c:	00f52023          	sw	a5,0(a0)
   1cb50:	00000413          	li	s0,0
   1cb54:	fb5ff06f          	j	1cb08 <_calloc_r+0x170>

000000000001cb58 <_close_r>:
   1cb58:	fe010113          	add	sp,sp,-32
   1cb5c:	00813823          	sd	s0,16(sp)
   1cb60:	00913423          	sd	s1,8(sp)
   1cb64:	00050413          	mv	s0,a0
   1cb68:	00058513          	mv	a0,a1
   1cb6c:	00113c23          	sd	ra,24(sp)
   1cb70:	7801a823          	sw	zero,1936(gp) # 24d78 <errno>
   1cb74:	741020ef          	jal	1fab4 <_close>
   1cb78:	fff00793          	li	a5,-1
   1cb7c:	00f50c63          	beq	a0,a5,1cb94 <_close_r+0x3c>
   1cb80:	01813083          	ld	ra,24(sp)
   1cb84:	01013403          	ld	s0,16(sp)
   1cb88:	00813483          	ld	s1,8(sp)
   1cb8c:	02010113          	add	sp,sp,32
   1cb90:	00008067          	ret
   1cb94:	7901a783          	lw	a5,1936(gp) # 24d78 <errno>
   1cb98:	fe0784e3          	beqz	a5,1cb80 <_close_r+0x28>
   1cb9c:	01813083          	ld	ra,24(sp)
   1cba0:	00f42023          	sw	a5,0(s0)
   1cba4:	01013403          	ld	s0,16(sp)
   1cba8:	00813483          	ld	s1,8(sp)
   1cbac:	02010113          	add	sp,sp,32
   1cbb0:	00008067          	ret

000000000001cbb4 <__errno>:
   1cbb4:	7581b503          	ld	a0,1880(gp) # 24d40 <_impure_ptr>
   1cbb8:	00008067          	ret

000000000001cbbc <_fclose_r>:
   1cbbc:	fe010113          	add	sp,sp,-32
   1cbc0:	00113c23          	sd	ra,24(sp)
   1cbc4:	00813823          	sd	s0,16(sp)
   1cbc8:	00913423          	sd	s1,8(sp)
   1cbcc:	01213023          	sd	s2,0(sp)
   1cbd0:	02058063          	beqz	a1,1cbf0 <_fclose_r+0x34>
   1cbd4:	00058413          	mv	s0,a1
   1cbd8:	00050493          	mv	s1,a0
   1cbdc:	00050663          	beqz	a0,1cbe8 <_fclose_r+0x2c>
   1cbe0:	05052783          	lw	a5,80(a0)
   1cbe4:	0a078c63          	beqz	a5,1cc9c <_fclose_r+0xe0>
   1cbe8:	01041783          	lh	a5,16(s0)
   1cbec:	02079263          	bnez	a5,1cc10 <_fclose_r+0x54>
   1cbf0:	01813083          	ld	ra,24(sp)
   1cbf4:	01013403          	ld	s0,16(sp)
   1cbf8:	00000913          	li	s2,0
   1cbfc:	00813483          	ld	s1,8(sp)
   1cc00:	00090513          	mv	a0,s2
   1cc04:	00013903          	ld	s2,0(sp)
   1cc08:	02010113          	add	sp,sp,32
   1cc0c:	00008067          	ret
   1cc10:	00040593          	mv	a1,s0
   1cc14:	00048513          	mv	a0,s1
   1cc18:	978f60ef          	jal	12d90 <__sflush_r>
   1cc1c:	05043783          	ld	a5,80(s0)
   1cc20:	00050913          	mv	s2,a0
   1cc24:	00078a63          	beqz	a5,1cc38 <_fclose_r+0x7c>
   1cc28:	03043583          	ld	a1,48(s0)
   1cc2c:	00048513          	mv	a0,s1
   1cc30:	000780e7          	jalr	a5
   1cc34:	06054c63          	bltz	a0,1ccac <_fclose_r+0xf0>
   1cc38:	01045783          	lhu	a5,16(s0)
   1cc3c:	0807f793          	and	a5,a5,128
   1cc40:	06079e63          	bnez	a5,1ccbc <_fclose_r+0x100>
   1cc44:	05843583          	ld	a1,88(s0)
   1cc48:	00058c63          	beqz	a1,1cc60 <_fclose_r+0xa4>
   1cc4c:	07440793          	add	a5,s0,116
   1cc50:	00f58663          	beq	a1,a5,1cc5c <_fclose_r+0xa0>
   1cc54:	00048513          	mv	a0,s1
   1cc58:	989f60ef          	jal	135e0 <_free_r>
   1cc5c:	04043c23          	sd	zero,88(s0)
   1cc60:	07843583          	ld	a1,120(s0)
   1cc64:	00058863          	beqz	a1,1cc74 <_fclose_r+0xb8>
   1cc68:	00048513          	mv	a0,s1
   1cc6c:	975f60ef          	jal	135e0 <_free_r>
   1cc70:	06043c23          	sd	zero,120(s0)
   1cc74:	fa4f60ef          	jal	13418 <__sfp_lock_acquire>
   1cc78:	00041823          	sh	zero,16(s0)
   1cc7c:	fa0f60ef          	jal	1341c <__sfp_lock_release>
   1cc80:	01813083          	ld	ra,24(sp)
   1cc84:	01013403          	ld	s0,16(sp)
   1cc88:	00813483          	ld	s1,8(sp)
   1cc8c:	00090513          	mv	a0,s2
   1cc90:	00013903          	ld	s2,0(sp)
   1cc94:	02010113          	add	sp,sp,32
   1cc98:	00008067          	ret
   1cc9c:	f6cf60ef          	jal	13408 <__sinit>
   1cca0:	01041783          	lh	a5,16(s0)
   1cca4:	f40786e3          	beqz	a5,1cbf0 <_fclose_r+0x34>
   1cca8:	f69ff06f          	j	1cc10 <_fclose_r+0x54>
   1ccac:	01045783          	lhu	a5,16(s0)
   1ccb0:	fff00913          	li	s2,-1
   1ccb4:	0807f793          	and	a5,a5,128
   1ccb8:	f80786e3          	beqz	a5,1cc44 <_fclose_r+0x88>
   1ccbc:	01843583          	ld	a1,24(s0)
   1ccc0:	00048513          	mv	a0,s1
   1ccc4:	91df60ef          	jal	135e0 <_free_r>
   1ccc8:	f7dff06f          	j	1cc44 <_fclose_r+0x88>

000000000001cccc <fclose>:
   1cccc:	00050593          	mv	a1,a0
   1ccd0:	7581b503          	ld	a0,1880(gp) # 24d40 <_impure_ptr>
   1ccd4:	ee9ff06f          	j	1cbbc <_fclose_r>

000000000001ccd8 <_fiprintf_r>:
   1ccd8:	fb010113          	add	sp,sp,-80
   1ccdc:	02810313          	add	t1,sp,40
   1cce0:	02d13423          	sd	a3,40(sp)
   1cce4:	00030693          	mv	a3,t1
   1cce8:	00113c23          	sd	ra,24(sp)
   1ccec:	02e13823          	sd	a4,48(sp)
   1ccf0:	02f13c23          	sd	a5,56(sp)
   1ccf4:	05013023          	sd	a6,64(sp)
   1ccf8:	05113423          	sd	a7,72(sp)
   1ccfc:	00613423          	sd	t1,8(sp)
   1cd00:	fbcfe0ef          	jal	1b4bc <_vfiprintf_r>
   1cd04:	01813083          	ld	ra,24(sp)
   1cd08:	05010113          	add	sp,sp,80
   1cd0c:	00008067          	ret

000000000001cd10 <fiprintf>:
   1cd10:	00050e13          	mv	t3,a0
   1cd14:	fb010113          	add	sp,sp,-80
   1cd18:	7581b503          	ld	a0,1880(gp) # 24d40 <_impure_ptr>
   1cd1c:	02010313          	add	t1,sp,32
   1cd20:	02c13023          	sd	a2,32(sp)
   1cd24:	02d13423          	sd	a3,40(sp)
   1cd28:	00058613          	mv	a2,a1
   1cd2c:	00030693          	mv	a3,t1
   1cd30:	000e0593          	mv	a1,t3
   1cd34:	00113c23          	sd	ra,24(sp)
   1cd38:	02e13823          	sd	a4,48(sp)
   1cd3c:	02f13c23          	sd	a5,56(sp)
   1cd40:	05013023          	sd	a6,64(sp)
   1cd44:	05113423          	sd	a7,72(sp)
   1cd48:	00613423          	sd	t1,8(sp)
   1cd4c:	f70fe0ef          	jal	1b4bc <_vfiprintf_r>
   1cd50:	01813083          	ld	ra,24(sp)
   1cd54:	05010113          	add	sp,sp,80
   1cd58:	00008067          	ret

000000000001cd5c <__fputwc>:
   1cd5c:	fd010113          	add	sp,sp,-48
   1cd60:	02813023          	sd	s0,32(sp)
   1cd64:	00913c23          	sd	s1,24(sp)
   1cd68:	01213823          	sd	s2,16(sp)
   1cd6c:	02113423          	sd	ra,40(sp)
   1cd70:	00050913          	mv	s2,a0
   1cd74:	00058493          	mv	s1,a1
   1cd78:	00060413          	mv	s0,a2
   1cd7c:	a39f90ef          	jal	167b4 <__locale_mb_cur_max>
   1cd80:	00100793          	li	a5,1
   1cd84:	00f51c63          	bne	a0,a5,1cd9c <__fputwc+0x40>
   1cd88:	fff4879b          	addw	a5,s1,-1
   1cd8c:	0fe00713          	li	a4,254
   1cd90:	00f76663          	bltu	a4,a5,1cd9c <__fputwc+0x40>
   1cd94:	00910423          	sb	s1,8(sp)
   1cd98:	0240006f          	j	1cdbc <__fputwc+0x60>
   1cd9c:	0a440693          	add	a3,s0,164
   1cda0:	00048613          	mv	a2,s1
   1cda4:	00810593          	add	a1,sp,8
   1cda8:	00090513          	mv	a0,s2
   1cdac:	5c4020ef          	jal	1f370 <_wcrtomb_r>
   1cdb0:	fff00793          	li	a5,-1
   1cdb4:	08f50463          	beq	a0,a5,1ce3c <__fputwc+0xe0>
   1cdb8:	02050c63          	beqz	a0,1cdf0 <__fputwc+0x94>
   1cdbc:	00c42783          	lw	a5,12(s0)
   1cdc0:	00814583          	lbu	a1,8(sp)
   1cdc4:	fff7871b          	addw	a4,a5,-1
   1cdc8:	00e42623          	sw	a4,12(s0)
   1cdcc:	00075a63          	bgez	a4,1cde0 <__fputwc+0x84>
   1cdd0:	02842783          	lw	a5,40(s0)
   1cdd4:	02f74c63          	blt	a4,a5,1ce0c <__fputwc+0xb0>
   1cdd8:	00a00793          	li	a5,10
   1cddc:	02f58863          	beq	a1,a5,1ce0c <__fputwc+0xb0>
   1cde0:	00043783          	ld	a5,0(s0)
   1cde4:	00178713          	add	a4,a5,1
   1cde8:	00e43023          	sd	a4,0(s0)
   1cdec:	00b78023          	sb	a1,0(a5)
   1cdf0:	02813083          	ld	ra,40(sp)
   1cdf4:	02013403          	ld	s0,32(sp)
   1cdf8:	01013903          	ld	s2,16(sp)
   1cdfc:	0004851b          	sext.w	a0,s1
   1ce00:	01813483          	ld	s1,24(sp)
   1ce04:	03010113          	add	sp,sp,48
   1ce08:	00008067          	ret
   1ce0c:	00040613          	mv	a2,s0
   1ce10:	00090513          	mv	a0,s2
   1ce14:	3d4020ef          	jal	1f1e8 <__swbuf_r>
   1ce18:	fff00793          	li	a5,-1
   1ce1c:	fcf51ae3          	bne	a0,a5,1cdf0 <__fputwc+0x94>
   1ce20:	fff00513          	li	a0,-1
   1ce24:	02813083          	ld	ra,40(sp)
   1ce28:	02013403          	ld	s0,32(sp)
   1ce2c:	01813483          	ld	s1,24(sp)
   1ce30:	01013903          	ld	s2,16(sp)
   1ce34:	03010113          	add	sp,sp,48
   1ce38:	00008067          	ret
   1ce3c:	01045783          	lhu	a5,16(s0)
   1ce40:	fff00513          	li	a0,-1
   1ce44:	0407e793          	or	a5,a5,64
   1ce48:	00f41823          	sh	a5,16(s0)
   1ce4c:	fd9ff06f          	j	1ce24 <__fputwc+0xc8>

000000000001ce50 <_fputwc_r>:
   1ce50:	01061783          	lh	a5,16(a2)
   1ce54:	03279713          	sll	a4,a5,0x32
   1ce58:	02074063          	bltz	a4,1ce78 <_fputwc_r+0x28>
   1ce5c:	0ac62703          	lw	a4,172(a2)
   1ce60:	000026b7          	lui	a3,0x2
   1ce64:	00d7e7b3          	or	a5,a5,a3
   1ce68:	000026b7          	lui	a3,0x2
   1ce6c:	00d76733          	or	a4,a4,a3
   1ce70:	00f61823          	sh	a5,16(a2)
   1ce74:	0ae62623          	sw	a4,172(a2)
   1ce78:	ee5ff06f          	j	1cd5c <__fputwc>

000000000001ce7c <fputwc>:
   1ce7c:	fe010113          	add	sp,sp,-32
   1ce80:	00813823          	sd	s0,16(sp)
   1ce84:	7581b403          	ld	s0,1880(gp) # 24d40 <_impure_ptr>
   1ce88:	00113c23          	sd	ra,24(sp)
   1ce8c:	00058613          	mv	a2,a1
   1ce90:	00050593          	mv	a1,a0
   1ce94:	00040663          	beqz	s0,1cea0 <fputwc+0x24>
   1ce98:	05042783          	lw	a5,80(s0)
   1ce9c:	04078063          	beqz	a5,1cedc <fputwc+0x60>
   1cea0:	01061783          	lh	a5,16(a2)
   1cea4:	03279713          	sll	a4,a5,0x32
   1cea8:	02074063          	bltz	a4,1cec8 <fputwc+0x4c>
   1ceac:	0ac62703          	lw	a4,172(a2)
   1ceb0:	000026b7          	lui	a3,0x2
   1ceb4:	00d7e7b3          	or	a5,a5,a3
   1ceb8:	000026b7          	lui	a3,0x2
   1cebc:	00d76733          	or	a4,a4,a3
   1cec0:	00f61823          	sh	a5,16(a2)
   1cec4:	0ae62623          	sw	a4,172(a2)
   1cec8:	00040513          	mv	a0,s0
   1cecc:	01013403          	ld	s0,16(sp)
   1ced0:	01813083          	ld	ra,24(sp)
   1ced4:	02010113          	add	sp,sp,32
   1ced8:	e85ff06f          	j	1cd5c <__fputwc>
   1cedc:	00a13023          	sd	a0,0(sp)
   1cee0:	00040513          	mv	a0,s0
   1cee4:	00c13423          	sd	a2,8(sp)
   1cee8:	d20f60ef          	jal	13408 <__sinit>
   1ceec:	00813603          	ld	a2,8(sp)
   1cef0:	00013583          	ld	a1,0(sp)
   1cef4:	fadff06f          	j	1cea0 <fputwc+0x24>

000000000001cef8 <_fstat_r>:
   1cef8:	fe010113          	add	sp,sp,-32
   1cefc:	00058713          	mv	a4,a1
   1cf00:	00813823          	sd	s0,16(sp)
   1cf04:	00913423          	sd	s1,8(sp)
   1cf08:	00050413          	mv	s0,a0
   1cf0c:	00060593          	mv	a1,a2
   1cf10:	00070513          	mv	a0,a4
   1cf14:	00113c23          	sd	ra,24(sp)
   1cf18:	7801a823          	sw	zero,1936(gp) # 24d78 <errno>
   1cf1c:	40d020ef          	jal	1fb28 <_fstat>
   1cf20:	fff00793          	li	a5,-1
   1cf24:	00f50c63          	beq	a0,a5,1cf3c <_fstat_r+0x44>
   1cf28:	01813083          	ld	ra,24(sp)
   1cf2c:	01013403          	ld	s0,16(sp)
   1cf30:	00813483          	ld	s1,8(sp)
   1cf34:	02010113          	add	sp,sp,32
   1cf38:	00008067          	ret
   1cf3c:	7901a783          	lw	a5,1936(gp) # 24d78 <errno>
   1cf40:	fe0784e3          	beqz	a5,1cf28 <_fstat_r+0x30>
   1cf44:	01813083          	ld	ra,24(sp)
   1cf48:	00f42023          	sw	a5,0(s0)
   1cf4c:	01013403          	ld	s0,16(sp)
   1cf50:	00813483          	ld	s1,8(sp)
   1cf54:	02010113          	add	sp,sp,32
   1cf58:	00008067          	ret

000000000001cf5c <__sfvwrite_r>:
   1cf5c:	01063783          	ld	a5,16(a2)
   1cf60:	28078063          	beqz	a5,1d1e0 <__sfvwrite_r+0x284>
   1cf64:	01059703          	lh	a4,16(a1)
   1cf68:	fa010113          	add	sp,sp,-96
   1cf6c:	04813823          	sd	s0,80(sp)
   1cf70:	03413823          	sd	s4,48(sp)
   1cf74:	03613023          	sd	s6,32(sp)
   1cf78:	04113c23          	sd	ra,88(sp)
   1cf7c:	04913423          	sd	s1,72(sp)
   1cf80:	05213023          	sd	s2,64(sp)
   1cf84:	03313c23          	sd	s3,56(sp)
   1cf88:	03513423          	sd	s5,40(sp)
   1cf8c:	01713c23          	sd	s7,24(sp)
   1cf90:	01813823          	sd	s8,16(sp)
   1cf94:	01913423          	sd	s9,8(sp)
   1cf98:	00877793          	and	a5,a4,8
   1cf9c:	00060b13          	mv	s6,a2
   1cfa0:	00050a13          	mv	s4,a0
   1cfa4:	00058413          	mv	s0,a1
   1cfa8:	08078863          	beqz	a5,1d038 <__sfvwrite_r+0xdc>
   1cfac:	0185b783          	ld	a5,24(a1)
   1cfb0:	08078463          	beqz	a5,1d038 <__sfvwrite_r+0xdc>
   1cfb4:	00277793          	and	a5,a4,2
   1cfb8:	000b3483          	ld	s1,0(s6)
   1cfbc:	08078e63          	beqz	a5,1d058 <__sfvwrite_r+0xfc>
   1cfc0:	04043783          	ld	a5,64(s0)
   1cfc4:	03043583          	ld	a1,48(s0)
   1cfc8:	80000ab7          	lui	s5,0x80000
   1cfcc:	00000993          	li	s3,0
   1cfd0:	00000913          	li	s2,0
   1cfd4:	c00aca93          	xor	s5,s5,-1024
   1cfd8:	00098613          	mv	a2,s3
   1cfdc:	000a0513          	mv	a0,s4
   1cfe0:	04090463          	beqz	s2,1d028 <__sfvwrite_r+0xcc>
   1cfe4:	00090693          	mv	a3,s2
   1cfe8:	012af463          	bgeu	s5,s2,1cff0 <__sfvwrite_r+0x94>
   1cfec:	000a8693          	mv	a3,s5
   1cff0:	0006869b          	sext.w	a3,a3
   1cff4:	000780e7          	jalr	a5
   1cff8:	1ca05a63          	blez	a0,1d1cc <__sfvwrite_r+0x270>
   1cffc:	010b3783          	ld	a5,16(s6)
   1d000:	00a989b3          	add	s3,s3,a0
   1d004:	40a90933          	sub	s2,s2,a0
   1d008:	40a787b3          	sub	a5,a5,a0
   1d00c:	00fb3823          	sd	a5,16(s6)
   1d010:	16078a63          	beqz	a5,1d184 <__sfvwrite_r+0x228>
   1d014:	04043783          	ld	a5,64(s0)
   1d018:	03043583          	ld	a1,48(s0)
   1d01c:	00098613          	mv	a2,s3
   1d020:	000a0513          	mv	a0,s4
   1d024:	fc0910e3          	bnez	s2,1cfe4 <__sfvwrite_r+0x88>
   1d028:	0004b983          	ld	s3,0(s1)
   1d02c:	0084b903          	ld	s2,8(s1)
   1d030:	01048493          	add	s1,s1,16
   1d034:	fa5ff06f          	j	1cfd8 <__sfvwrite_r+0x7c>
   1d038:	00040593          	mv	a1,s0
   1d03c:	000a0513          	mv	a0,s4
   1d040:	ae9f50ef          	jal	12b28 <__swsetup_r>
   1d044:	18051a63          	bnez	a0,1d1d8 <__sfvwrite_r+0x27c>
   1d048:	01041703          	lh	a4,16(s0)
   1d04c:	000b3483          	ld	s1,0(s6)
   1d050:	00277793          	and	a5,a4,2
   1d054:	f60796e3          	bnez	a5,1cfc0 <__sfvwrite_r+0x64>
   1d058:	00177793          	and	a5,a4,1
   1d05c:	08079e63          	bnez	a5,1d0f8 <__sfvwrite_r+0x19c>
   1d060:	00c42b83          	lw	s7,12(s0)
   1d064:	00043783          	ld	a5,0(s0)
   1d068:	80000ab7          	lui	s5,0x80000
   1d06c:	00000c13          	li	s8,0
   1d070:	00000913          	li	s2,0
   1d074:	fffaca93          	not	s5,s5
   1d078:	00078513          	mv	a0,a5
   1d07c:	06090663          	beqz	s2,1d0e8 <__sfvwrite_r+0x18c>
   1d080:	20077693          	and	a3,a4,512
   1d084:	1c068663          	beqz	a3,1d250 <__sfvwrite_r+0x2f4>
   1d088:	27797263          	bgeu	s2,s7,1d2ec <__sfvwrite_r+0x390>
   1d08c:	00090c93          	mv	s9,s2
   1d090:	00090b93          	mv	s7,s2
   1d094:	000b8613          	mv	a2,s7
   1d098:	000c0593          	mv	a1,s8
   1d09c:	5d4000ef          	jal	1d670 <memmove>
   1d0a0:	00c42703          	lw	a4,12(s0)
   1d0a4:	00043783          	ld	a5,0(s0)
   1d0a8:	00090993          	mv	s3,s2
   1d0ac:	4197073b          	subw	a4,a4,s9
   1d0b0:	017787b3          	add	a5,a5,s7
   1d0b4:	00e42623          	sw	a4,12(s0)
   1d0b8:	00f43023          	sd	a5,0(s0)
   1d0bc:	00000913          	li	s2,0
   1d0c0:	010b3783          	ld	a5,16(s6)
   1d0c4:	013c0c33          	add	s8,s8,s3
   1d0c8:	413787b3          	sub	a5,a5,s3
   1d0cc:	00fb3823          	sd	a5,16(s6)
   1d0d0:	0a078a63          	beqz	a5,1d184 <__sfvwrite_r+0x228>
   1d0d4:	00043783          	ld	a5,0(s0)
   1d0d8:	01041703          	lh	a4,16(s0)
   1d0dc:	00c42b83          	lw	s7,12(s0)
   1d0e0:	00078513          	mv	a0,a5
   1d0e4:	f8091ee3          	bnez	s2,1d080 <__sfvwrite_r+0x124>
   1d0e8:	0004bc03          	ld	s8,0(s1)
   1d0ec:	0084b903          	ld	s2,8(s1)
   1d0f0:	01048493          	add	s1,s1,16
   1d0f4:	f85ff06f          	j	1d078 <__sfvwrite_r+0x11c>
   1d0f8:	00000993          	li	s3,0
   1d0fc:	00000513          	li	a0,0
   1d100:	00000c93          	li	s9,0
   1d104:	00000c13          	li	s8,0
   1d108:	0e0c0063          	beqz	s8,1d1e8 <__sfvwrite_r+0x28c>
   1d10c:	0e050863          	beqz	a0,1d1fc <__sfvwrite_r+0x2a0>
   1d110:	00098b93          	mv	s7,s3
   1d114:	013c7463          	bgeu	s8,s3,1d11c <__sfvwrite_r+0x1c0>
   1d118:	000c0b93          	mv	s7,s8
   1d11c:	00043503          	ld	a0,0(s0)
   1d120:	01843703          	ld	a4,24(s0)
   1d124:	00c42783          	lw	a5,12(s0)
   1d128:	02042683          	lw	a3,32(s0)
   1d12c:	000b8913          	mv	s2,s7
   1d130:	00a77663          	bgeu	a4,a0,1d13c <__sfvwrite_r+0x1e0>
   1d134:	00d78abb          	addw	s5,a5,a3
   1d138:	0f7ac263          	blt	s5,s7,1d21c <__sfvwrite_r+0x2c0>
   1d13c:	24dbc663          	blt	s7,a3,1d388 <__sfvwrite_r+0x42c>
   1d140:	04043783          	ld	a5,64(s0)
   1d144:	03043583          	ld	a1,48(s0)
   1d148:	000c8613          	mv	a2,s9
   1d14c:	000a0513          	mv	a0,s4
   1d150:	000780e7          	jalr	a5
   1d154:	00050913          	mv	s2,a0
   1d158:	06a05a63          	blez	a0,1d1cc <__sfvwrite_r+0x270>
   1d15c:	0005079b          	sext.w	a5,a0
   1d160:	40f989bb          	subw	s3,s3,a5
   1d164:	00100513          	li	a0,1
   1d168:	04098a63          	beqz	s3,1d1bc <__sfvwrite_r+0x260>
   1d16c:	010b3783          	ld	a5,16(s6)
   1d170:	012c8cb3          	add	s9,s9,s2
   1d174:	412c0c33          	sub	s8,s8,s2
   1d178:	412787b3          	sub	a5,a5,s2
   1d17c:	00fb3823          	sd	a5,16(s6)
   1d180:	f80794e3          	bnez	a5,1d108 <__sfvwrite_r+0x1ac>
   1d184:	00000513          	li	a0,0
   1d188:	05813083          	ld	ra,88(sp)
   1d18c:	05013403          	ld	s0,80(sp)
   1d190:	04813483          	ld	s1,72(sp)
   1d194:	04013903          	ld	s2,64(sp)
   1d198:	03813983          	ld	s3,56(sp)
   1d19c:	03013a03          	ld	s4,48(sp)
   1d1a0:	02813a83          	ld	s5,40(sp)
   1d1a4:	02013b03          	ld	s6,32(sp)
   1d1a8:	01813b83          	ld	s7,24(sp)
   1d1ac:	01013c03          	ld	s8,16(sp)
   1d1b0:	00813c83          	ld	s9,8(sp)
   1d1b4:	06010113          	add	sp,sp,96
   1d1b8:	00008067          	ret
   1d1bc:	00040593          	mv	a1,s0
   1d1c0:	000a0513          	mv	a0,s4
   1d1c4:	e19f50ef          	jal	12fdc <_fflush_r>
   1d1c8:	fa0502e3          	beqz	a0,1d16c <__sfvwrite_r+0x210>
   1d1cc:	01041783          	lh	a5,16(s0)
   1d1d0:	0407e793          	or	a5,a5,64
   1d1d4:	00f41823          	sh	a5,16(s0)
   1d1d8:	fff00513          	li	a0,-1
   1d1dc:	fadff06f          	j	1d188 <__sfvwrite_r+0x22c>
   1d1e0:	00000513          	li	a0,0
   1d1e4:	00008067          	ret
   1d1e8:	0084bc03          	ld	s8,8(s1)
   1d1ec:	00048793          	mv	a5,s1
   1d1f0:	01048493          	add	s1,s1,16
   1d1f4:	fe0c0ae3          	beqz	s8,1d1e8 <__sfvwrite_r+0x28c>
   1d1f8:	0007bc83          	ld	s9,0(a5)
   1d1fc:	000c0613          	mv	a2,s8
   1d200:	00a00593          	li	a1,10
   1d204:	000c8513          	mv	a0,s9
   1d208:	8e4fa0ef          	jal	172ec <memchr>
   1d20c:	1e050263          	beqz	a0,1d3f0 <__sfvwrite_r+0x494>
   1d210:	00150513          	add	a0,a0,1
   1d214:	419509bb          	subw	s3,a0,s9
   1d218:	ef9ff06f          	j	1d110 <__sfvwrite_r+0x1b4>
   1d21c:	000c8593          	mv	a1,s9
   1d220:	000a8613          	mv	a2,s5
   1d224:	44c000ef          	jal	1d670 <memmove>
   1d228:	00043783          	ld	a5,0(s0)
   1d22c:	00040593          	mv	a1,s0
   1d230:	000a0513          	mv	a0,s4
   1d234:	015787b3          	add	a5,a5,s5
   1d238:	00f43023          	sd	a5,0(s0)
   1d23c:	da1f50ef          	jal	12fdc <_fflush_r>
   1d240:	f80516e3          	bnez	a0,1d1cc <__sfvwrite_r+0x270>
   1d244:	000a8793          	mv	a5,s5
   1d248:	000a8913          	mv	s2,s5
   1d24c:	f15ff06f          	j	1d160 <__sfvwrite_r+0x204>
   1d250:	01843703          	ld	a4,24(s0)
   1d254:	04f76463          	bltu	a4,a5,1d29c <__sfvwrite_r+0x340>
   1d258:	02042583          	lw	a1,32(s0)
   1d25c:	04b96063          	bltu	s2,a1,1d29c <__sfvwrite_r+0x340>
   1d260:	00090993          	mv	s3,s2
   1d264:	012af463          	bgeu	s5,s2,1d26c <__sfvwrite_r+0x310>
   1d268:	000a8993          	mv	s3,s5
   1d26c:	0009851b          	sext.w	a0,s3
   1d270:	1b5040ef          	jal	21c24 <__moddi3>
   1d274:	04043783          	ld	a5,64(s0)
   1d278:	03043583          	ld	a1,48(s0)
   1d27c:	40a986bb          	subw	a3,s3,a0
   1d280:	000c0613          	mv	a2,s8
   1d284:	000a0513          	mv	a0,s4
   1d288:	000780e7          	jalr	a5
   1d28c:	00050993          	mv	s3,a0
   1d290:	f2a05ee3          	blez	a0,1d1cc <__sfvwrite_r+0x270>
   1d294:	41390933          	sub	s2,s2,s3
   1d298:	e29ff06f          	j	1d0c0 <__sfvwrite_r+0x164>
   1d29c:	000b8993          	mv	s3,s7
   1d2a0:	01797463          	bgeu	s2,s7,1d2a8 <__sfvwrite_r+0x34c>
   1d2a4:	00090993          	mv	s3,s2
   1d2a8:	00078513          	mv	a0,a5
   1d2ac:	00098613          	mv	a2,s3
   1d2b0:	000c0593          	mv	a1,s8
   1d2b4:	3bc000ef          	jal	1d670 <memmove>
   1d2b8:	00c42703          	lw	a4,12(s0)
   1d2bc:	00043783          	ld	a5,0(s0)
   1d2c0:	413706bb          	subw	a3,a4,s3
   1d2c4:	013787b3          	add	a5,a5,s3
   1d2c8:	00d42623          	sw	a3,12(s0)
   1d2cc:	00f43023          	sd	a5,0(s0)
   1d2d0:	fc0692e3          	bnez	a3,1d294 <__sfvwrite_r+0x338>
   1d2d4:	00040593          	mv	a1,s0
   1d2d8:	000a0513          	mv	a0,s4
   1d2dc:	d01f50ef          	jal	12fdc <_fflush_r>
   1d2e0:	ee0516e3          	bnez	a0,1d1cc <__sfvwrite_r+0x270>
   1d2e4:	41390933          	sub	s2,s2,s3
   1d2e8:	dd9ff06f          	j	1d0c0 <__sfvwrite_r+0x164>
   1d2ec:	48077693          	and	a3,a4,1152
   1d2f0:	0c068263          	beqz	a3,1d3b4 <__sfvwrite_r+0x458>
   1d2f4:	02042603          	lw	a2,32(s0)
   1d2f8:	01843583          	ld	a1,24(s0)
   1d2fc:	0016169b          	sllw	a3,a2,0x1
   1d300:	00c686bb          	addw	a3,a3,a2
   1d304:	40b787b3          	sub	a5,a5,a1
   1d308:	01f6d99b          	srlw	s3,a3,0x1f
   1d30c:	00078b9b          	sext.w	s7,a5
   1d310:	00d989bb          	addw	s3,s3,a3
   1d314:	001b8693          	add	a3,s7,1
   1d318:	4019d99b          	sraw	s3,s3,0x1
   1d31c:	012686b3          	add	a3,a3,s2
   1d320:	00d9f663          	bgeu	s3,a3,1d32c <__sfvwrite_r+0x3d0>
   1d324:	0017879b          	addw	a5,a5,1
   1d328:	012789bb          	addw	s3,a5,s2
   1d32c:	40077713          	and	a4,a4,1024
   1d330:	08070663          	beqz	a4,1d3bc <__sfvwrite_r+0x460>
   1d334:	00098593          	mv	a1,s3
   1d338:	000a0513          	mv	a0,s4
   1d33c:	f64f90ef          	jal	16aa0 <_malloc_r>
   1d340:	00050c93          	mv	s9,a0
   1d344:	0a050a63          	beqz	a0,1d3f8 <__sfvwrite_r+0x49c>
   1d348:	01843583          	ld	a1,24(s0)
   1d34c:	000b8613          	mv	a2,s7
   1d350:	17c000ef          	jal	1d4cc <memcpy>
   1d354:	01045783          	lhu	a5,16(s0)
   1d358:	b7f7f793          	and	a5,a5,-1153
   1d35c:	0807e793          	or	a5,a5,128
   1d360:	00f41823          	sh	a5,16(s0)
   1d364:	017c8533          	add	a0,s9,s7
   1d368:	41798bbb          	subw	s7,s3,s7
   1d36c:	01943c23          	sd	s9,24(s0)
   1d370:	01742623          	sw	s7,12(s0)
   1d374:	00a43023          	sd	a0,0(s0)
   1d378:	03342023          	sw	s3,32(s0)
   1d37c:	00090c93          	mv	s9,s2
   1d380:	00090b93          	mv	s7,s2
   1d384:	d11ff06f          	j	1d094 <__sfvwrite_r+0x138>
   1d388:	000b8613          	mv	a2,s7
   1d38c:	000c8593          	mv	a1,s9
   1d390:	2e0000ef          	jal	1d670 <memmove>
   1d394:	00c42683          	lw	a3,12(s0)
   1d398:	00043703          	ld	a4,0(s0)
   1d39c:	000b879b          	sext.w	a5,s7
   1d3a0:	417686bb          	subw	a3,a3,s7
   1d3a4:	01770733          	add	a4,a4,s7
   1d3a8:	00d42623          	sw	a3,12(s0)
   1d3ac:	00e43023          	sd	a4,0(s0)
   1d3b0:	db1ff06f          	j	1d160 <__sfvwrite_r+0x204>
   1d3b4:	000b8c93          	mv	s9,s7
   1d3b8:	cddff06f          	j	1d094 <__sfvwrite_r+0x138>
   1d3bc:	00098613          	mv	a2,s3
   1d3c0:	000a0513          	mv	a0,s4
   1d3c4:	430000ef          	jal	1d7f4 <_realloc_r>
   1d3c8:	00050c93          	mv	s9,a0
   1d3cc:	f8051ce3          	bnez	a0,1d364 <__sfvwrite_r+0x408>
   1d3d0:	01843583          	ld	a1,24(s0)
   1d3d4:	000a0513          	mv	a0,s4
   1d3d8:	a08f60ef          	jal	135e0 <_free_r>
   1d3dc:	01041783          	lh	a5,16(s0)
   1d3e0:	00c00713          	li	a4,12
   1d3e4:	00ea2023          	sw	a4,0(s4)
   1d3e8:	f7f7f793          	and	a5,a5,-129
   1d3ec:	de5ff06f          	j	1d1d0 <__sfvwrite_r+0x274>
   1d3f0:	001c099b          	addw	s3,s8,1
   1d3f4:	d1dff06f          	j	1d110 <__sfvwrite_r+0x1b4>
   1d3f8:	00c00713          	li	a4,12
   1d3fc:	01041783          	lh	a5,16(s0)
   1d400:	00ea2023          	sw	a4,0(s4)
   1d404:	dcdff06f          	j	1d1d0 <__sfvwrite_r+0x274>

000000000001d408 <_isatty_r>:
   1d408:	fe010113          	add	sp,sp,-32
   1d40c:	00813823          	sd	s0,16(sp)
   1d410:	00913423          	sd	s1,8(sp)
   1d414:	00050413          	mv	s0,a0
   1d418:	00058513          	mv	a0,a1
   1d41c:	00113c23          	sd	ra,24(sp)
   1d420:	7801a823          	sw	zero,1936(gp) # 24d78 <errno>
   1d424:	770020ef          	jal	1fb94 <_isatty>
   1d428:	fff00793          	li	a5,-1
   1d42c:	00f50c63          	beq	a0,a5,1d444 <_isatty_r+0x3c>
   1d430:	01813083          	ld	ra,24(sp)
   1d434:	01013403          	ld	s0,16(sp)
   1d438:	00813483          	ld	s1,8(sp)
   1d43c:	02010113          	add	sp,sp,32
   1d440:	00008067          	ret
   1d444:	7901a783          	lw	a5,1936(gp) # 24d78 <errno>
   1d448:	fe0784e3          	beqz	a5,1d430 <_isatty_r+0x28>
   1d44c:	01813083          	ld	ra,24(sp)
   1d450:	00f42023          	sw	a5,0(s0)
   1d454:	01013403          	ld	s0,16(sp)
   1d458:	00813483          	ld	s1,8(sp)
   1d45c:	02010113          	add	sp,sp,32
   1d460:	00008067          	ret

000000000001d464 <_lseek_r>:
   1d464:	fe010113          	add	sp,sp,-32
   1d468:	00058713          	mv	a4,a1
   1d46c:	00813823          	sd	s0,16(sp)
   1d470:	00913423          	sd	s1,8(sp)
   1d474:	00060593          	mv	a1,a2
   1d478:	00050413          	mv	s0,a0
   1d47c:	00068613          	mv	a2,a3
   1d480:	00070513          	mv	a0,a4
   1d484:	00113c23          	sd	ra,24(sp)
   1d488:	7801a823          	sw	zero,1936(gp) # 24d78 <errno>
   1d48c:	76c020ef          	jal	1fbf8 <_lseek>
   1d490:	fff00793          	li	a5,-1
   1d494:	00f50c63          	beq	a0,a5,1d4ac <_lseek_r+0x48>
   1d498:	01813083          	ld	ra,24(sp)
   1d49c:	01013403          	ld	s0,16(sp)
   1d4a0:	00813483          	ld	s1,8(sp)
   1d4a4:	02010113          	add	sp,sp,32
   1d4a8:	00008067          	ret
   1d4ac:	7901a783          	lw	a5,1936(gp) # 24d78 <errno>
   1d4b0:	fe0784e3          	beqz	a5,1d498 <_lseek_r+0x34>
   1d4b4:	01813083          	ld	ra,24(sp)
   1d4b8:	00f42023          	sw	a5,0(s0)
   1d4bc:	01013403          	ld	s0,16(sp)
   1d4c0:	00813483          	ld	s1,8(sp)
   1d4c4:	02010113          	add	sp,sp,32
   1d4c8:	00008067          	ret

000000000001d4cc <memcpy>:
   1d4cc:	00b547b3          	xor	a5,a0,a1
   1d4d0:	0077f793          	and	a5,a5,7
   1d4d4:	00c508b3          	add	a7,a0,a2
   1d4d8:	06079463          	bnez	a5,1d540 <memcpy+0x74>
   1d4dc:	00700793          	li	a5,7
   1d4e0:	06c7f063          	bgeu	a5,a2,1d540 <memcpy+0x74>
   1d4e4:	00757793          	and	a5,a0,7
   1d4e8:	00050713          	mv	a4,a0
   1d4ec:	06079a63          	bnez	a5,1d560 <memcpy+0x94>
   1d4f0:	ff88f613          	and	a2,a7,-8
   1d4f4:	40e606b3          	sub	a3,a2,a4
   1d4f8:	04000793          	li	a5,64
   1d4fc:	08d7ce63          	blt	a5,a3,1d598 <memcpy+0xcc>
   1d500:	00058693          	mv	a3,a1
   1d504:	00070793          	mv	a5,a4
   1d508:	02c77863          	bgeu	a4,a2,1d538 <memcpy+0x6c>
   1d50c:	0006b803          	ld	a6,0(a3) # 2000 <exit-0xe0e8>
   1d510:	00878793          	add	a5,a5,8
   1d514:	00868693          	add	a3,a3,8
   1d518:	ff07bc23          	sd	a6,-8(a5)
   1d51c:	fec7e8e3          	bltu	a5,a2,1d50c <memcpy+0x40>
   1d520:	fff60793          	add	a5,a2,-1
   1d524:	40e787b3          	sub	a5,a5,a4
   1d528:	ff87f793          	and	a5,a5,-8
   1d52c:	00878793          	add	a5,a5,8
   1d530:	00f70733          	add	a4,a4,a5
   1d534:	00f585b3          	add	a1,a1,a5
   1d538:	01176863          	bltu	a4,a7,1d548 <memcpy+0x7c>
   1d53c:	00008067          	ret
   1d540:	00050713          	mv	a4,a0
   1d544:	05157863          	bgeu	a0,a7,1d594 <memcpy+0xc8>
   1d548:	0005c783          	lbu	a5,0(a1)
   1d54c:	00170713          	add	a4,a4,1
   1d550:	00158593          	add	a1,a1,1
   1d554:	fef70fa3          	sb	a5,-1(a4)
   1d558:	fee898e3          	bne	a7,a4,1d548 <memcpy+0x7c>
   1d55c:	00008067          	ret
   1d560:	0005c683          	lbu	a3,0(a1)
   1d564:	00170713          	add	a4,a4,1
   1d568:	00777793          	and	a5,a4,7
   1d56c:	fed70fa3          	sb	a3,-1(a4)
   1d570:	00158593          	add	a1,a1,1
   1d574:	f6078ee3          	beqz	a5,1d4f0 <memcpy+0x24>
   1d578:	0005c683          	lbu	a3,0(a1)
   1d57c:	00170713          	add	a4,a4,1
   1d580:	00777793          	and	a5,a4,7
   1d584:	fed70fa3          	sb	a3,-1(a4)
   1d588:	00158593          	add	a1,a1,1
   1d58c:	fc079ae3          	bnez	a5,1d560 <memcpy+0x94>
   1d590:	f61ff06f          	j	1d4f0 <memcpy+0x24>
   1d594:	00008067          	ret
   1d598:	ff010113          	add	sp,sp,-16
   1d59c:	00813423          	sd	s0,8(sp)
   1d5a0:	04000413          	li	s0,64
   1d5a4:	0005b383          	ld	t2,0(a1)
   1d5a8:	0085b283          	ld	t0,8(a1)
   1d5ac:	0105bf83          	ld	t6,16(a1)
   1d5b0:	0185bf03          	ld	t5,24(a1)
   1d5b4:	0205be83          	ld	t4,32(a1)
   1d5b8:	0285be03          	ld	t3,40(a1)
   1d5bc:	0305b303          	ld	t1,48(a1)
   1d5c0:	0385b803          	ld	a6,56(a1)
   1d5c4:	0405b683          	ld	a3,64(a1)
   1d5c8:	04870713          	add	a4,a4,72
   1d5cc:	40e607b3          	sub	a5,a2,a4
   1d5d0:	fa773c23          	sd	t2,-72(a4)
   1d5d4:	fc573023          	sd	t0,-64(a4)
   1d5d8:	fdf73423          	sd	t6,-56(a4)
   1d5dc:	fde73823          	sd	t5,-48(a4)
   1d5e0:	fdd73c23          	sd	t4,-40(a4)
   1d5e4:	ffc73023          	sd	t3,-32(a4)
   1d5e8:	fe673423          	sd	t1,-24(a4)
   1d5ec:	ff073823          	sd	a6,-16(a4)
   1d5f0:	fed73c23          	sd	a3,-8(a4)
   1d5f4:	04858593          	add	a1,a1,72
   1d5f8:	faf446e3          	blt	s0,a5,1d5a4 <memcpy+0xd8>
   1d5fc:	00058693          	mv	a3,a1
   1d600:	00070793          	mv	a5,a4
   1d604:	02c77863          	bgeu	a4,a2,1d634 <memcpy+0x168>
   1d608:	0006b803          	ld	a6,0(a3)
   1d60c:	00878793          	add	a5,a5,8
   1d610:	00868693          	add	a3,a3,8
   1d614:	ff07bc23          	sd	a6,-8(a5)
   1d618:	fec7e8e3          	bltu	a5,a2,1d608 <memcpy+0x13c>
   1d61c:	fff60793          	add	a5,a2,-1
   1d620:	40e787b3          	sub	a5,a5,a4
   1d624:	ff87f793          	and	a5,a5,-8
   1d628:	00878793          	add	a5,a5,8
   1d62c:	00f70733          	add	a4,a4,a5
   1d630:	00f585b3          	add	a1,a1,a5
   1d634:	01176863          	bltu	a4,a7,1d644 <memcpy+0x178>
   1d638:	00813403          	ld	s0,8(sp)
   1d63c:	01010113          	add	sp,sp,16
   1d640:	00008067          	ret
   1d644:	0005c783          	lbu	a5,0(a1)
   1d648:	00170713          	add	a4,a4,1
   1d64c:	00158593          	add	a1,a1,1
   1d650:	fef70fa3          	sb	a5,-1(a4)
   1d654:	fee882e3          	beq	a7,a4,1d638 <memcpy+0x16c>
   1d658:	0005c783          	lbu	a5,0(a1)
   1d65c:	00170713          	add	a4,a4,1
   1d660:	00158593          	add	a1,a1,1
   1d664:	fef70fa3          	sb	a5,-1(a4)
   1d668:	fce89ee3          	bne	a7,a4,1d644 <memcpy+0x178>
   1d66c:	fcdff06f          	j	1d638 <memcpy+0x16c>

000000000001d670 <memmove>:
   1d670:	02a5f663          	bgeu	a1,a0,1d69c <memmove+0x2c>
   1d674:	00c58733          	add	a4,a1,a2
   1d678:	02e57263          	bgeu	a0,a4,1d69c <memmove+0x2c>
   1d67c:	00c507b3          	add	a5,a0,a2
   1d680:	04060663          	beqz	a2,1d6cc <memmove+0x5c>
   1d684:	fff74683          	lbu	a3,-1(a4)
   1d688:	fff78793          	add	a5,a5,-1
   1d68c:	fff70713          	add	a4,a4,-1
   1d690:	00d78023          	sb	a3,0(a5)
   1d694:	fef518e3          	bne	a0,a5,1d684 <memmove+0x14>
   1d698:	00008067          	ret
   1d69c:	01f00793          	li	a5,31
   1d6a0:	02c7e863          	bltu	a5,a2,1d6d0 <memmove+0x60>
   1d6a4:	00050793          	mv	a5,a0
   1d6a8:	fff60693          	add	a3,a2,-1
   1d6ac:	0c060a63          	beqz	a2,1d780 <memmove+0x110>
   1d6b0:	00168693          	add	a3,a3,1
   1d6b4:	00d786b3          	add	a3,a5,a3
   1d6b8:	0005c703          	lbu	a4,0(a1)
   1d6bc:	00178793          	add	a5,a5,1
   1d6c0:	00158593          	add	a1,a1,1
   1d6c4:	fee78fa3          	sb	a4,-1(a5)
   1d6c8:	fed798e3          	bne	a5,a3,1d6b8 <memmove+0x48>
   1d6cc:	00008067          	ret
   1d6d0:	00b567b3          	or	a5,a0,a1
   1d6d4:	0077f793          	and	a5,a5,7
   1d6d8:	08079e63          	bnez	a5,1d774 <memmove+0x104>
   1d6dc:	fe060893          	add	a7,a2,-32
   1d6e0:	fe08f893          	and	a7,a7,-32
   1d6e4:	02088893          	add	a7,a7,32
   1d6e8:	011507b3          	add	a5,a0,a7
   1d6ec:	00058693          	mv	a3,a1
   1d6f0:	00050713          	mv	a4,a0
   1d6f4:	0006b803          	ld	a6,0(a3)
   1d6f8:	02068693          	add	a3,a3,32
   1d6fc:	02070713          	add	a4,a4,32
   1d700:	ff073023          	sd	a6,-32(a4)
   1d704:	fe86b803          	ld	a6,-24(a3)
   1d708:	ff073423          	sd	a6,-24(a4)
   1d70c:	ff06b803          	ld	a6,-16(a3)
   1d710:	ff073823          	sd	a6,-16(a4)
   1d714:	ff86b803          	ld	a6,-8(a3)
   1d718:	ff073c23          	sd	a6,-8(a4)
   1d71c:	fcf71ce3          	bne	a4,a5,1d6f4 <memmove+0x84>
   1d720:	01867713          	and	a4,a2,24
   1d724:	011585b3          	add	a1,a1,a7
   1d728:	01f67813          	and	a6,a2,31
   1d72c:	04070c63          	beqz	a4,1d784 <memmove+0x114>
   1d730:	00058693          	mv	a3,a1
   1d734:	00078713          	mv	a4,a5
   1d738:	01078eb3          	add	t4,a5,a6
   1d73c:	00700e13          	li	t3,7
   1d740:	0006b303          	ld	t1,0(a3)
   1d744:	00870713          	add	a4,a4,8
   1d748:	40ee88b3          	sub	a7,t4,a4
   1d74c:	fe673c23          	sd	t1,-8(a4)
   1d750:	00868693          	add	a3,a3,8
   1d754:	ff1e66e3          	bltu	t3,a7,1d740 <memmove+0xd0>
   1d758:	ff880713          	add	a4,a6,-8
   1d75c:	ff877713          	and	a4,a4,-8
   1d760:	00870713          	add	a4,a4,8
   1d764:	00767613          	and	a2,a2,7
   1d768:	00e787b3          	add	a5,a5,a4
   1d76c:	00e585b3          	add	a1,a1,a4
   1d770:	f39ff06f          	j	1d6a8 <memmove+0x38>
   1d774:	fff60693          	add	a3,a2,-1
   1d778:	00050793          	mv	a5,a0
   1d77c:	f35ff06f          	j	1d6b0 <memmove+0x40>
   1d780:	00008067          	ret
   1d784:	00080613          	mv	a2,a6
   1d788:	f21ff06f          	j	1d6a8 <memmove+0x38>

000000000001d78c <_read_r>:
   1d78c:	fe010113          	add	sp,sp,-32
   1d790:	00058713          	mv	a4,a1
   1d794:	00813823          	sd	s0,16(sp)
   1d798:	00913423          	sd	s1,8(sp)
   1d79c:	00060593          	mv	a1,a2
   1d7a0:	00050413          	mv	s0,a0
   1d7a4:	00068613          	mv	a2,a3
   1d7a8:	00070513          	mv	a0,a4
   1d7ac:	00113c23          	sd	ra,24(sp)
   1d7b0:	7801a823          	sw	zero,1936(gp) # 24d78 <errno>
   1d7b4:	488020ef          	jal	1fc3c <_read>
   1d7b8:	fff00793          	li	a5,-1
   1d7bc:	00f50c63          	beq	a0,a5,1d7d4 <_read_r+0x48>
   1d7c0:	01813083          	ld	ra,24(sp)
   1d7c4:	01013403          	ld	s0,16(sp)
   1d7c8:	00813483          	ld	s1,8(sp)
   1d7cc:	02010113          	add	sp,sp,32
   1d7d0:	00008067          	ret
   1d7d4:	7901a783          	lw	a5,1936(gp) # 24d78 <errno>
   1d7d8:	fe0784e3          	beqz	a5,1d7c0 <_read_r+0x34>
   1d7dc:	01813083          	ld	ra,24(sp)
   1d7e0:	00f42023          	sw	a5,0(s0)
   1d7e4:	01013403          	ld	s0,16(sp)
   1d7e8:	00813483          	ld	s1,8(sp)
   1d7ec:	02010113          	add	sp,sp,32
   1d7f0:	00008067          	ret

000000000001d7f4 <_realloc_r>:
   1d7f4:	fb010113          	add	sp,sp,-80
   1d7f8:	03213823          	sd	s2,48(sp)
   1d7fc:	04113423          	sd	ra,72(sp)
   1d800:	04813023          	sd	s0,64(sp)
   1d804:	02913c23          	sd	s1,56(sp)
   1d808:	03313423          	sd	s3,40(sp)
   1d80c:	03413023          	sd	s4,32(sp)
   1d810:	01513c23          	sd	s5,24(sp)
   1d814:	01613823          	sd	s6,16(sp)
   1d818:	01713423          	sd	s7,8(sp)
   1d81c:	01813023          	sd	s8,0(sp)
   1d820:	00060913          	mv	s2,a2
   1d824:	1c058663          	beqz	a1,1d9f0 <_realloc_r+0x1fc>
   1d828:	00058413          	mv	s0,a1
   1d82c:	00050993          	mv	s3,a0
   1d830:	b81f90ef          	jal	173b0 <__malloc_lock>
   1d834:	ff843783          	ld	a5,-8(s0)
   1d838:	01790493          	add	s1,s2,23
   1d83c:	02e00713          	li	a4,46
   1d840:	ff040a93          	add	s5,s0,-16
   1d844:	ffc7fa13          	and	s4,a5,-4
   1d848:	0e977a63          	bgeu	a4,s1,1d93c <_realloc_r+0x148>
   1d84c:	80000737          	lui	a4,0x80000
   1d850:	ff04f493          	and	s1,s1,-16
   1d854:	fff74713          	not	a4,a4
   1d858:	0e976663          	bltu	a4,s1,1d944 <_realloc_r+0x150>
   1d85c:	0f24e463          	bltu	s1,s2,1d944 <_realloc_r+0x150>
   1d860:	109a5463          	bge	s4,s1,1d968 <_realloc_r+0x174>
   1d864:	00024737          	lui	a4,0x24
   1d868:	4f070c13          	add	s8,a4,1264 # 244f0 <__malloc_av_>
   1d86c:	010c3603          	ld	a2,16(s8)
   1d870:	014a86b3          	add	a3,s5,s4
   1d874:	0086b703          	ld	a4,8(a3)
   1d878:	1cd60e63          	beq	a2,a3,1da54 <_realloc_r+0x260>
   1d87c:	ffe77613          	and	a2,a4,-2
   1d880:	00c68633          	add	a2,a3,a2
   1d884:	00863603          	ld	a2,8(a2)
   1d888:	00167613          	and	a2,a2,1
   1d88c:	14061463          	bnez	a2,1d9d4 <_realloc_r+0x1e0>
   1d890:	ffc77713          	and	a4,a4,-4
   1d894:	00ea0633          	add	a2,s4,a4
   1d898:	0a965e63          	bge	a2,s1,1d954 <_realloc_r+0x160>
   1d89c:	0017f793          	and	a5,a5,1
   1d8a0:	02079463          	bnez	a5,1d8c8 <_realloc_r+0xd4>
   1d8a4:	ff043b83          	ld	s7,-16(s0)
   1d8a8:	417a8bb3          	sub	s7,s5,s7
   1d8ac:	008bb783          	ld	a5,8(s7)
   1d8b0:	ffc7f793          	and	a5,a5,-4
   1d8b4:	00f70733          	add	a4,a4,a5
   1d8b8:	01470b33          	add	s6,a4,s4
   1d8bc:	329b5463          	bge	s6,s1,1dbe4 <_realloc_r+0x3f0>
   1d8c0:	00fa0b33          	add	s6,s4,a5
   1d8c4:	289b5663          	bge	s6,s1,1db50 <_realloc_r+0x35c>
   1d8c8:	00090593          	mv	a1,s2
   1d8cc:	00098513          	mv	a0,s3
   1d8d0:	9d0f90ef          	jal	16aa0 <_malloc_r>
   1d8d4:	00050913          	mv	s2,a0
   1d8d8:	40050263          	beqz	a0,1dcdc <_realloc_r+0x4e8>
   1d8dc:	ff843783          	ld	a5,-8(s0)
   1d8e0:	ff050713          	add	a4,a0,-16
   1d8e4:	ffe7f793          	and	a5,a5,-2
   1d8e8:	00fa87b3          	add	a5,s5,a5
   1d8ec:	24e78a63          	beq	a5,a4,1db40 <_realloc_r+0x34c>
   1d8f0:	ff8a0613          	add	a2,s4,-8
   1d8f4:	04800793          	li	a5,72
   1d8f8:	2ec7e063          	bltu	a5,a2,1dbd8 <_realloc_r+0x3e4>
   1d8fc:	02700713          	li	a4,39
   1d900:	20c76e63          	bltu	a4,a2,1db1c <_realloc_r+0x328>
   1d904:	00050793          	mv	a5,a0
   1d908:	00040713          	mv	a4,s0
   1d90c:	00073683          	ld	a3,0(a4)
   1d910:	00d7b023          	sd	a3,0(a5)
   1d914:	00873683          	ld	a3,8(a4)
   1d918:	00d7b423          	sd	a3,8(a5)
   1d91c:	01073703          	ld	a4,16(a4)
   1d920:	00e7b823          	sd	a4,16(a5)
   1d924:	00098513          	mv	a0,s3
   1d928:	00040593          	mv	a1,s0
   1d92c:	cb5f50ef          	jal	135e0 <_free_r>
   1d930:	00098513          	mv	a0,s3
   1d934:	a81f90ef          	jal	173b4 <__malloc_unlock>
   1d938:	0680006f          	j	1d9a0 <_realloc_r+0x1ac>
   1d93c:	02000493          	li	s1,32
   1d940:	f324f0e3          	bgeu	s1,s2,1d860 <_realloc_r+0x6c>
   1d944:	00c00793          	li	a5,12
   1d948:	00f9a023          	sw	a5,0(s3)
   1d94c:	00000913          	li	s2,0
   1d950:	0500006f          	j	1d9a0 <_realloc_r+0x1ac>
   1d954:	0186b783          	ld	a5,24(a3)
   1d958:	0106b703          	ld	a4,16(a3)
   1d95c:	00060a13          	mv	s4,a2
   1d960:	00f73c23          	sd	a5,24(a4)
   1d964:	00e7b823          	sd	a4,16(a5)
   1d968:	008ab783          	ld	a5,8(s5) # ffffffff80000008 <__BSS_END__+0xffffffff7ffdb220>
   1d96c:	409a06b3          	sub	a3,s4,s1
   1d970:	01f00613          	li	a2,31
   1d974:	0017f793          	and	a5,a5,1
   1d978:	014a8733          	add	a4,s5,s4
   1d97c:	0ad66463          	bltu	a2,a3,1da24 <_realloc_r+0x230>
   1d980:	0147e7b3          	or	a5,a5,s4
   1d984:	00fab423          	sd	a5,8(s5)
   1d988:	00873783          	ld	a5,8(a4)
   1d98c:	0017e793          	or	a5,a5,1
   1d990:	00f73423          	sd	a5,8(a4)
   1d994:	00098513          	mv	a0,s3
   1d998:	a1df90ef          	jal	173b4 <__malloc_unlock>
   1d99c:	00040913          	mv	s2,s0
   1d9a0:	04813083          	ld	ra,72(sp)
   1d9a4:	04013403          	ld	s0,64(sp)
   1d9a8:	03813483          	ld	s1,56(sp)
   1d9ac:	02813983          	ld	s3,40(sp)
   1d9b0:	02013a03          	ld	s4,32(sp)
   1d9b4:	01813a83          	ld	s5,24(sp)
   1d9b8:	01013b03          	ld	s6,16(sp)
   1d9bc:	00813b83          	ld	s7,8(sp)
   1d9c0:	00013c03          	ld	s8,0(sp)
   1d9c4:	00090513          	mv	a0,s2
   1d9c8:	03013903          	ld	s2,48(sp)
   1d9cc:	05010113          	add	sp,sp,80
   1d9d0:	00008067          	ret
   1d9d4:	0017f793          	and	a5,a5,1
   1d9d8:	ee0798e3          	bnez	a5,1d8c8 <_realloc_r+0xd4>
   1d9dc:	ff043b83          	ld	s7,-16(s0)
   1d9e0:	417a8bb3          	sub	s7,s5,s7
   1d9e4:	008bb783          	ld	a5,8(s7)
   1d9e8:	ffc7f793          	and	a5,a5,-4
   1d9ec:	ed5ff06f          	j	1d8c0 <_realloc_r+0xcc>
   1d9f0:	04013403          	ld	s0,64(sp)
   1d9f4:	04813083          	ld	ra,72(sp)
   1d9f8:	03813483          	ld	s1,56(sp)
   1d9fc:	03013903          	ld	s2,48(sp)
   1da00:	02813983          	ld	s3,40(sp)
   1da04:	02013a03          	ld	s4,32(sp)
   1da08:	01813a83          	ld	s5,24(sp)
   1da0c:	01013b03          	ld	s6,16(sp)
   1da10:	00813b83          	ld	s7,8(sp)
   1da14:	00013c03          	ld	s8,0(sp)
   1da18:	00060593          	mv	a1,a2
   1da1c:	05010113          	add	sp,sp,80
   1da20:	880f906f          	j	16aa0 <_malloc_r>
   1da24:	0097e7b3          	or	a5,a5,s1
   1da28:	00fab423          	sd	a5,8(s5)
   1da2c:	009a85b3          	add	a1,s5,s1
   1da30:	0016e693          	or	a3,a3,1
   1da34:	00d5b423          	sd	a3,8(a1)
   1da38:	00873783          	ld	a5,8(a4)
   1da3c:	01058593          	add	a1,a1,16
   1da40:	00098513          	mv	a0,s3
   1da44:	0017e793          	or	a5,a5,1
   1da48:	00f73423          	sd	a5,8(a4)
   1da4c:	b95f50ef          	jal	135e0 <_free_r>
   1da50:	f45ff06f          	j	1d994 <_realloc_r+0x1a0>
   1da54:	ffc77713          	and	a4,a4,-4
   1da58:	014706b3          	add	a3,a4,s4
   1da5c:	02048613          	add	a2,s1,32
   1da60:	22c6de63          	bge	a3,a2,1dc9c <_realloc_r+0x4a8>
   1da64:	0017f793          	and	a5,a5,1
   1da68:	e60790e3          	bnez	a5,1d8c8 <_realloc_r+0xd4>
   1da6c:	ff043b83          	ld	s7,-16(s0)
   1da70:	417a8bb3          	sub	s7,s5,s7
   1da74:	008bb783          	ld	a5,8(s7)
   1da78:	ffc7f793          	and	a5,a5,-4
   1da7c:	00f70733          	add	a4,a4,a5
   1da80:	01470b33          	add	s6,a4,s4
   1da84:	e2cb4ee3          	blt	s6,a2,1d8c0 <_realloc_r+0xcc>
   1da88:	018bb783          	ld	a5,24(s7)
   1da8c:	010bb703          	ld	a4,16(s7)
   1da90:	ff8a0613          	add	a2,s4,-8
   1da94:	04800693          	li	a3,72
   1da98:	00f73c23          	sd	a5,24(a4)
   1da9c:	00e7b823          	sd	a4,16(a5)
   1daa0:	010b8913          	add	s2,s7,16
   1daa4:	26c6e263          	bltu	a3,a2,1dd08 <_realloc_r+0x514>
   1daa8:	02700713          	li	a4,39
   1daac:	00090793          	mv	a5,s2
   1dab0:	02c77263          	bgeu	a4,a2,1dad4 <_realloc_r+0x2e0>
   1dab4:	00043703          	ld	a4,0(s0)
   1dab8:	03700793          	li	a5,55
   1dabc:	00ebb823          	sd	a4,16(s7)
   1dac0:	00843703          	ld	a4,8(s0)
   1dac4:	00ebbc23          	sd	a4,24(s7)
   1dac8:	24c7e863          	bltu	a5,a2,1dd18 <_realloc_r+0x524>
   1dacc:	01040413          	add	s0,s0,16
   1dad0:	020b8793          	add	a5,s7,32
   1dad4:	00043703          	ld	a4,0(s0)
   1dad8:	00e7b023          	sd	a4,0(a5)
   1dadc:	00843703          	ld	a4,8(s0)
   1dae0:	00e7b423          	sd	a4,8(a5)
   1dae4:	01043703          	ld	a4,16(s0)
   1dae8:	00e7b823          	sd	a4,16(a5)
   1daec:	009b8733          	add	a4,s7,s1
   1daf0:	409b07b3          	sub	a5,s6,s1
   1daf4:	00ec3823          	sd	a4,16(s8)
   1daf8:	0017e793          	or	a5,a5,1
   1dafc:	00f73423          	sd	a5,8(a4)
   1db00:	008bb783          	ld	a5,8(s7)
   1db04:	00098513          	mv	a0,s3
   1db08:	0017f793          	and	a5,a5,1
   1db0c:	0097e7b3          	or	a5,a5,s1
   1db10:	00fbb423          	sd	a5,8(s7)
   1db14:	8a1f90ef          	jal	173b4 <__malloc_unlock>
   1db18:	e89ff06f          	j	1d9a0 <_realloc_r+0x1ac>
   1db1c:	00043683          	ld	a3,0(s0)
   1db20:	03700713          	li	a4,55
   1db24:	00d53023          	sd	a3,0(a0)
   1db28:	00843683          	ld	a3,8(s0)
   1db2c:	00d53423          	sd	a3,8(a0)
   1db30:	14c76663          	bltu	a4,a2,1dc7c <_realloc_r+0x488>
   1db34:	01040713          	add	a4,s0,16
   1db38:	01050793          	add	a5,a0,16
   1db3c:	dd1ff06f          	j	1d90c <_realloc_r+0x118>
   1db40:	ff853783          	ld	a5,-8(a0)
   1db44:	ffc7f793          	and	a5,a5,-4
   1db48:	00fa0a33          	add	s4,s4,a5
   1db4c:	e1dff06f          	j	1d968 <_realloc_r+0x174>
   1db50:	018bb783          	ld	a5,24(s7)
   1db54:	010bb703          	ld	a4,16(s7)
   1db58:	ff8a0613          	add	a2,s4,-8
   1db5c:	04800693          	li	a3,72
   1db60:	00f73c23          	sd	a5,24(a4)
   1db64:	00e7b823          	sd	a4,16(a5)
   1db68:	010b8913          	add	s2,s7,16
   1db6c:	10c6e063          	bltu	a3,a2,1dc6c <_realloc_r+0x478>
   1db70:	02700713          	li	a4,39
   1db74:	00090793          	mv	a5,s2
   1db78:	02c77c63          	bgeu	a4,a2,1dbb0 <_realloc_r+0x3bc>
   1db7c:	00043703          	ld	a4,0(s0)
   1db80:	03700793          	li	a5,55
   1db84:	00ebb823          	sd	a4,16(s7)
   1db88:	00843703          	ld	a4,8(s0)
   1db8c:	00ebbc23          	sd	a4,24(s7)
   1db90:	14c7f063          	bgeu	a5,a2,1dcd0 <_realloc_r+0x4dc>
   1db94:	01043783          	ld	a5,16(s0)
   1db98:	02fbb023          	sd	a5,32(s7)
   1db9c:	01843783          	ld	a5,24(s0)
   1dba0:	02fbb423          	sd	a5,40(s7)
   1dba4:	0ad60663          	beq	a2,a3,1dc50 <_realloc_r+0x45c>
   1dba8:	02040413          	add	s0,s0,32
   1dbac:	030b8793          	add	a5,s7,48
   1dbb0:	00043703          	ld	a4,0(s0)
   1dbb4:	00e7b023          	sd	a4,0(a5)
   1dbb8:	00843703          	ld	a4,8(s0)
   1dbbc:	00e7b423          	sd	a4,8(a5)
   1dbc0:	01043703          	ld	a4,16(s0)
   1dbc4:	00e7b823          	sd	a4,16(a5)
   1dbc8:	00090413          	mv	s0,s2
   1dbcc:	000b0a13          	mv	s4,s6
   1dbd0:	000b8a93          	mv	s5,s7
   1dbd4:	d95ff06f          	j	1d968 <_realloc_r+0x174>
   1dbd8:	00040593          	mv	a1,s0
   1dbdc:	a95ff0ef          	jal	1d670 <memmove>
   1dbe0:	d45ff06f          	j	1d924 <_realloc_r+0x130>
   1dbe4:	0186b783          	ld	a5,24(a3)
   1dbe8:	0106b703          	ld	a4,16(a3)
   1dbec:	ff8a0613          	add	a2,s4,-8
   1dbf0:	04800693          	li	a3,72
   1dbf4:	00f73c23          	sd	a5,24(a4)
   1dbf8:	00e7b823          	sd	a4,16(a5)
   1dbfc:	010bb703          	ld	a4,16(s7)
   1dc00:	018bb783          	ld	a5,24(s7)
   1dc04:	010b8913          	add	s2,s7,16
   1dc08:	00f73c23          	sd	a5,24(a4)
   1dc0c:	00e7b823          	sd	a4,16(a5)
   1dc10:	04c6ee63          	bltu	a3,a2,1dc6c <_realloc_r+0x478>
   1dc14:	02700713          	li	a4,39
   1dc18:	00090793          	mv	a5,s2
   1dc1c:	f8c77ae3          	bgeu	a4,a2,1dbb0 <_realloc_r+0x3bc>
   1dc20:	00043703          	ld	a4,0(s0)
   1dc24:	03700793          	li	a5,55
   1dc28:	00ebb823          	sd	a4,16(s7)
   1dc2c:	00843703          	ld	a4,8(s0)
   1dc30:	00ebbc23          	sd	a4,24(s7)
   1dc34:	08c7fe63          	bgeu	a5,a2,1dcd0 <_realloc_r+0x4dc>
   1dc38:	01043703          	ld	a4,16(s0)
   1dc3c:	04800793          	li	a5,72
   1dc40:	02ebb023          	sd	a4,32(s7)
   1dc44:	01843703          	ld	a4,24(s0)
   1dc48:	02ebb423          	sd	a4,40(s7)
   1dc4c:	f4f61ee3          	bne	a2,a5,1dba8 <_realloc_r+0x3b4>
   1dc50:	02043703          	ld	a4,32(s0)
   1dc54:	040b8793          	add	a5,s7,64
   1dc58:	03040413          	add	s0,s0,48
   1dc5c:	02ebb823          	sd	a4,48(s7)
   1dc60:	ff843703          	ld	a4,-8(s0)
   1dc64:	02ebbc23          	sd	a4,56(s7)
   1dc68:	f49ff06f          	j	1dbb0 <_realloc_r+0x3bc>
   1dc6c:	00040593          	mv	a1,s0
   1dc70:	00090513          	mv	a0,s2
   1dc74:	9fdff0ef          	jal	1d670 <memmove>
   1dc78:	f51ff06f          	j	1dbc8 <_realloc_r+0x3d4>
   1dc7c:	01043703          	ld	a4,16(s0)
   1dc80:	00e53823          	sd	a4,16(a0)
   1dc84:	01843703          	ld	a4,24(s0)
   1dc88:	00e53c23          	sd	a4,24(a0)
   1dc8c:	06f60063          	beq	a2,a5,1dcec <_realloc_r+0x4f8>
   1dc90:	02040713          	add	a4,s0,32
   1dc94:	02050793          	add	a5,a0,32
   1dc98:	c75ff06f          	j	1d90c <_realloc_r+0x118>
   1dc9c:	009a8ab3          	add	s5,s5,s1
   1dca0:	409687b3          	sub	a5,a3,s1
   1dca4:	015c3823          	sd	s5,16(s8)
   1dca8:	0017e793          	or	a5,a5,1
   1dcac:	00fab423          	sd	a5,8(s5)
   1dcb0:	ff843783          	ld	a5,-8(s0)
   1dcb4:	00098513          	mv	a0,s3
   1dcb8:	00040913          	mv	s2,s0
   1dcbc:	0017f793          	and	a5,a5,1
   1dcc0:	0097e7b3          	or	a5,a5,s1
   1dcc4:	fef43c23          	sd	a5,-8(s0)
   1dcc8:	eecf90ef          	jal	173b4 <__malloc_unlock>
   1dccc:	cd5ff06f          	j	1d9a0 <_realloc_r+0x1ac>
   1dcd0:	01040413          	add	s0,s0,16
   1dcd4:	020b8793          	add	a5,s7,32
   1dcd8:	ed9ff06f          	j	1dbb0 <_realloc_r+0x3bc>
   1dcdc:	00098513          	mv	a0,s3
   1dce0:	ed4f90ef          	jal	173b4 <__malloc_unlock>
   1dce4:	00000913          	li	s2,0
   1dce8:	cb9ff06f          	j	1d9a0 <_realloc_r+0x1ac>
   1dcec:	02043683          	ld	a3,32(s0)
   1dcf0:	03040713          	add	a4,s0,48
   1dcf4:	03050793          	add	a5,a0,48
   1dcf8:	02d53023          	sd	a3,32(a0)
   1dcfc:	02843683          	ld	a3,40(s0)
   1dd00:	02d53423          	sd	a3,40(a0)
   1dd04:	c09ff06f          	j	1d90c <_realloc_r+0x118>
   1dd08:	00040593          	mv	a1,s0
   1dd0c:	00090513          	mv	a0,s2
   1dd10:	961ff0ef          	jal	1d670 <memmove>
   1dd14:	dd9ff06f          	j	1daec <_realloc_r+0x2f8>
   1dd18:	01043783          	ld	a5,16(s0)
   1dd1c:	02fbb023          	sd	a5,32(s7)
   1dd20:	01843783          	ld	a5,24(s0)
   1dd24:	02fbb423          	sd	a5,40(s7)
   1dd28:	00d60863          	beq	a2,a3,1dd38 <_realloc_r+0x544>
   1dd2c:	02040413          	add	s0,s0,32
   1dd30:	030b8793          	add	a5,s7,48
   1dd34:	da1ff06f          	j	1dad4 <_realloc_r+0x2e0>
   1dd38:	02043703          	ld	a4,32(s0)
   1dd3c:	040b8793          	add	a5,s7,64
   1dd40:	03040413          	add	s0,s0,48
   1dd44:	02ebb823          	sd	a4,48(s7)
   1dd48:	ff843703          	ld	a4,-8(s0)
   1dd4c:	02ebbc23          	sd	a4,56(s7)
   1dd50:	d85ff06f          	j	1dad4 <_realloc_r+0x2e0>

000000000001dd54 <cleanup_glue>:
   1dd54:	fd010113          	add	sp,sp,-48
   1dd58:	01213823          	sd	s2,16(sp)
   1dd5c:	0005b903          	ld	s2,0(a1)
   1dd60:	02813023          	sd	s0,32(sp)
   1dd64:	00913c23          	sd	s1,24(sp)
   1dd68:	02113423          	sd	ra,40(sp)
   1dd6c:	01313423          	sd	s3,8(sp)
   1dd70:	01413023          	sd	s4,0(sp)
   1dd74:	00058413          	mv	s0,a1
   1dd78:	00050493          	mv	s1,a0
   1dd7c:	04090263          	beqz	s2,1ddc0 <cleanup_glue+0x6c>
   1dd80:	00093983          	ld	s3,0(s2)
   1dd84:	02098863          	beqz	s3,1ddb4 <cleanup_glue+0x60>
   1dd88:	0009ba03          	ld	s4,0(s3)
   1dd8c:	000a0e63          	beqz	s4,1dda8 <cleanup_glue+0x54>
   1dd90:	000a3583          	ld	a1,0(s4)
   1dd94:	00058463          	beqz	a1,1dd9c <cleanup_glue+0x48>
   1dd98:	fbdff0ef          	jal	1dd54 <cleanup_glue>
   1dd9c:	000a0593          	mv	a1,s4
   1dda0:	00048513          	mv	a0,s1
   1dda4:	83df50ef          	jal	135e0 <_free_r>
   1dda8:	00098593          	mv	a1,s3
   1ddac:	00048513          	mv	a0,s1
   1ddb0:	831f50ef          	jal	135e0 <_free_r>
   1ddb4:	00090593          	mv	a1,s2
   1ddb8:	00048513          	mv	a0,s1
   1ddbc:	825f50ef          	jal	135e0 <_free_r>
   1ddc0:	00040593          	mv	a1,s0
   1ddc4:	02013403          	ld	s0,32(sp)
   1ddc8:	02813083          	ld	ra,40(sp)
   1ddcc:	01013903          	ld	s2,16(sp)
   1ddd0:	00813983          	ld	s3,8(sp)
   1ddd4:	00013a03          	ld	s4,0(sp)
   1ddd8:	00048513          	mv	a0,s1
   1dddc:	01813483          	ld	s1,24(sp)
   1dde0:	03010113          	add	sp,sp,48
   1dde4:	ffcf506f          	j	135e0 <_free_r>

000000000001dde8 <_reclaim_reent>:
   1dde8:	7581b783          	ld	a5,1880(gp) # 24d40 <_impure_ptr>
   1ddec:	10a78a63          	beq	a5,a0,1df00 <_reclaim_reent+0x118>
   1ddf0:	07853583          	ld	a1,120(a0)
   1ddf4:	fd010113          	add	sp,sp,-48
   1ddf8:	00913c23          	sd	s1,24(sp)
   1ddfc:	02113423          	sd	ra,40(sp)
   1de00:	02813023          	sd	s0,32(sp)
   1de04:	01213823          	sd	s2,16(sp)
   1de08:	01313423          	sd	s3,8(sp)
   1de0c:	00050493          	mv	s1,a0
   1de10:	04058063          	beqz	a1,1de50 <_reclaim_reent+0x68>
   1de14:	00000913          	li	s2,0
   1de18:	20000993          	li	s3,512
   1de1c:	012587b3          	add	a5,a1,s2
   1de20:	0007b403          	ld	s0,0(a5)
   1de24:	00040e63          	beqz	s0,1de40 <_reclaim_reent+0x58>
   1de28:	00040593          	mv	a1,s0
   1de2c:	00043403          	ld	s0,0(s0)
   1de30:	00048513          	mv	a0,s1
   1de34:	facf50ef          	jal	135e0 <_free_r>
   1de38:	fe0418e3          	bnez	s0,1de28 <_reclaim_reent+0x40>
   1de3c:	0784b583          	ld	a1,120(s1)
   1de40:	00890913          	add	s2,s2,8
   1de44:	fd391ce3          	bne	s2,s3,1de1c <_reclaim_reent+0x34>
   1de48:	00048513          	mv	a0,s1
   1de4c:	f94f50ef          	jal	135e0 <_free_r>
   1de50:	0604b583          	ld	a1,96(s1)
   1de54:	00058663          	beqz	a1,1de60 <_reclaim_reent+0x78>
   1de58:	00048513          	mv	a0,s1
   1de5c:	f84f50ef          	jal	135e0 <_free_r>
   1de60:	1f84b403          	ld	s0,504(s1)
   1de64:	02040063          	beqz	s0,1de84 <_reclaim_reent+0x9c>
   1de68:	20048913          	add	s2,s1,512
   1de6c:	01240c63          	beq	s0,s2,1de84 <_reclaim_reent+0x9c>
   1de70:	00040593          	mv	a1,s0
   1de74:	00043403          	ld	s0,0(s0)
   1de78:	00048513          	mv	a0,s1
   1de7c:	f64f50ef          	jal	135e0 <_free_r>
   1de80:	fe8918e3          	bne	s2,s0,1de70 <_reclaim_reent+0x88>
   1de84:	0884b583          	ld	a1,136(s1)
   1de88:	00058663          	beqz	a1,1de94 <_reclaim_reent+0xac>
   1de8c:	00048513          	mv	a0,s1
   1de90:	f50f50ef          	jal	135e0 <_free_r>
   1de94:	0504a783          	lw	a5,80(s1)
   1de98:	04078663          	beqz	a5,1dee4 <_reclaim_reent+0xfc>
   1de9c:	0584b783          	ld	a5,88(s1)
   1dea0:	00048513          	mv	a0,s1
   1dea4:	000780e7          	jalr	a5
   1dea8:	5204b403          	ld	s0,1312(s1)
   1deac:	02040c63          	beqz	s0,1dee4 <_reclaim_reent+0xfc>
   1deb0:	00043583          	ld	a1,0(s0)
   1deb4:	00058663          	beqz	a1,1dec0 <_reclaim_reent+0xd8>
   1deb8:	00048513          	mv	a0,s1
   1debc:	e99ff0ef          	jal	1dd54 <cleanup_glue>
   1dec0:	00040593          	mv	a1,s0
   1dec4:	02013403          	ld	s0,32(sp)
   1dec8:	02813083          	ld	ra,40(sp)
   1decc:	01013903          	ld	s2,16(sp)
   1ded0:	00813983          	ld	s3,8(sp)
   1ded4:	00048513          	mv	a0,s1
   1ded8:	01813483          	ld	s1,24(sp)
   1dedc:	03010113          	add	sp,sp,48
   1dee0:	f00f506f          	j	135e0 <_free_r>
   1dee4:	02813083          	ld	ra,40(sp)
   1dee8:	02013403          	ld	s0,32(sp)
   1deec:	01813483          	ld	s1,24(sp)
   1def0:	01013903          	ld	s2,16(sp)
   1def4:	00813983          	ld	s3,8(sp)
   1def8:	03010113          	add	sp,sp,48
   1defc:	00008067          	ret
   1df00:	00008067          	ret

000000000001df04 <__ssprint_r>:
   1df04:	01063783          	ld	a5,16(a2)
   1df08:	fb010113          	add	sp,sp,-80
   1df0c:	03313423          	sd	s3,40(sp)
   1df10:	01513c23          	sd	s5,24(sp)
   1df14:	04113423          	sd	ra,72(sp)
   1df18:	04813023          	sd	s0,64(sp)
   1df1c:	02913c23          	sd	s1,56(sp)
   1df20:	03213823          	sd	s2,48(sp)
   1df24:	03413023          	sd	s4,32(sp)
   1df28:	01613823          	sd	s6,16(sp)
   1df2c:	01713423          	sd	s7,8(sp)
   1df30:	01813023          	sd	s8,0(sp)
   1df34:	00063983          	ld	s3,0(a2)
   1df38:	00060a93          	mv	s5,a2
   1df3c:	18078463          	beqz	a5,1e0c4 <__ssprint_r+0x1c0>
   1df40:	00c5a703          	lw	a4,12(a1)
   1df44:	0005b783          	ld	a5,0(a1)
   1df48:	00050b13          	mv	s6,a0
   1df4c:	00058493          	mv	s1,a1
   1df50:	00000a13          	li	s4,0
   1df54:	00000413          	li	s0,0
   1df58:	00070913          	mv	s2,a4
   1df5c:	00078513          	mv	a0,a5
   1df60:	06040263          	beqz	s0,1dfc4 <__ssprint_r+0xc0>
   1df64:	06e47863          	bgeu	s0,a4,1dfd4 <__ssprint_r+0xd0>
   1df68:	0004071b          	sext.w	a4,s0
   1df6c:	00070913          	mv	s2,a4
   1df70:	00070b93          	mv	s7,a4
   1df74:	00078513          	mv	a0,a5
   1df78:	000a0593          	mv	a1,s4
   1df7c:	00090613          	mv	a2,s2
   1df80:	ef0ff0ef          	jal	1d670 <memmove>
   1df84:	00c4a683          	lw	a3,12(s1)
   1df88:	0004b783          	ld	a5,0(s1)
   1df8c:	010ab703          	ld	a4,16(s5)
   1df90:	412686bb          	subw	a3,a3,s2
   1df94:	012787b3          	add	a5,a5,s2
   1df98:	00d4a623          	sw	a3,12(s1)
   1df9c:	00f4b023          	sd	a5,0(s1)
   1dfa0:	41770733          	sub	a4,a4,s7
   1dfa4:	00eab823          	sd	a4,16(s5)
   1dfa8:	017a0a33          	add	s4,s4,s7
   1dfac:	41740433          	sub	s0,s0,s7
   1dfb0:	10070a63          	beqz	a4,1e0c4 <__ssprint_r+0x1c0>
   1dfb4:	00c4a703          	lw	a4,12(s1)
   1dfb8:	00078513          	mv	a0,a5
   1dfbc:	00070913          	mv	s2,a4
   1dfc0:	fa0412e3          	bnez	s0,1df64 <__ssprint_r+0x60>
   1dfc4:	0009ba03          	ld	s4,0(s3)
   1dfc8:	0089b403          	ld	s0,8(s3)
   1dfcc:	01098993          	add	s3,s3,16
   1dfd0:	f89ff06f          	j	1df58 <__ssprint_r+0x54>
   1dfd4:	01049703          	lh	a4,16(s1)
   1dfd8:	00040b9b          	sext.w	s7,s0
   1dfdc:	48077693          	and	a3,a4,1152
   1dfe0:	f8068ce3          	beqz	a3,1df78 <__ssprint_r+0x74>
   1dfe4:	0204a603          	lw	a2,32(s1)
   1dfe8:	0184b583          	ld	a1,24(s1)
   1dfec:	0016169b          	sllw	a3,a2,0x1
   1dff0:	00c686bb          	addw	a3,a3,a2
   1dff4:	40b787b3          	sub	a5,a5,a1
   1dff8:	01f6d91b          	srlw	s2,a3,0x1f
   1dffc:	00078b9b          	sext.w	s7,a5
   1e000:	00d9093b          	addw	s2,s2,a3
   1e004:	001b8693          	add	a3,s7,1
   1e008:	4019591b          	sraw	s2,s2,0x1
   1e00c:	008686b3          	add	a3,a3,s0
   1e010:	00d97663          	bgeu	s2,a3,1e01c <__ssprint_r+0x118>
   1e014:	0017879b          	addw	a5,a5,1
   1e018:	0087893b          	addw	s2,a5,s0
   1e01c:	40077713          	and	a4,a4,1024
   1e020:	06070263          	beqz	a4,1e084 <__ssprint_r+0x180>
   1e024:	00090593          	mv	a1,s2
   1e028:	000b0513          	mv	a0,s6
   1e02c:	a75f80ef          	jal	16aa0 <_malloc_r>
   1e030:	00050c13          	mv	s8,a0
   1e034:	06050863          	beqz	a0,1e0a4 <__ssprint_r+0x1a0>
   1e038:	0184b583          	ld	a1,24(s1)
   1e03c:	000b8613          	mv	a2,s7
   1e040:	c8cff0ef          	jal	1d4cc <memcpy>
   1e044:	0104d783          	lhu	a5,16(s1)
   1e048:	b7f7f793          	and	a5,a5,-1153
   1e04c:	0807e793          	or	a5,a5,128
   1e050:	00f49823          	sh	a5,16(s1)
   1e054:	017c0533          	add	a0,s8,s7
   1e058:	41790bbb          	subw	s7,s2,s7
   1e05c:	0004071b          	sext.w	a4,s0
   1e060:	0324a023          	sw	s2,32(s1)
   1e064:	0174a623          	sw	s7,12(s1)
   1e068:	0184bc23          	sd	s8,24(s1)
   1e06c:	00a4b023          	sd	a0,0(s1)
   1e070:	00070913          	mv	s2,a4
   1e074:	00070b93          	mv	s7,a4
   1e078:	00050793          	mv	a5,a0
   1e07c:	eee47ee3          	bgeu	s0,a4,1df78 <__ssprint_r+0x74>
   1e080:	eedff06f          	j	1df6c <__ssprint_r+0x68>
   1e084:	00090613          	mv	a2,s2
   1e088:	000b0513          	mv	a0,s6
   1e08c:	f68ff0ef          	jal	1d7f4 <_realloc_r>
   1e090:	00050c13          	mv	s8,a0
   1e094:	fc0510e3          	bnez	a0,1e054 <__ssprint_r+0x150>
   1e098:	0184b583          	ld	a1,24(s1)
   1e09c:	000b0513          	mv	a0,s6
   1e0a0:	d40f50ef          	jal	135e0 <_free_r>
   1e0a4:	0104d783          	lhu	a5,16(s1)
   1e0a8:	00c00713          	li	a4,12
   1e0ac:	00eb2023          	sw	a4,0(s6)
   1e0b0:	0407e793          	or	a5,a5,64
   1e0b4:	00f49823          	sh	a5,16(s1)
   1e0b8:	000ab823          	sd	zero,16(s5)
   1e0bc:	fff00513          	li	a0,-1
   1e0c0:	0080006f          	j	1e0c8 <__ssprint_r+0x1c4>
   1e0c4:	00000513          	li	a0,0
   1e0c8:	04813083          	ld	ra,72(sp)
   1e0cc:	04013403          	ld	s0,64(sp)
   1e0d0:	000aa423          	sw	zero,8(s5)
   1e0d4:	03813483          	ld	s1,56(sp)
   1e0d8:	03013903          	ld	s2,48(sp)
   1e0dc:	02813983          	ld	s3,40(sp)
   1e0e0:	02013a03          	ld	s4,32(sp)
   1e0e4:	01813a83          	ld	s5,24(sp)
   1e0e8:	01013b03          	ld	s6,16(sp)
   1e0ec:	00813b83          	ld	s7,8(sp)
   1e0f0:	00013c03          	ld	s8,0(sp)
   1e0f4:	05010113          	add	sp,sp,80
   1e0f8:	00008067          	ret

000000000001e0fc <_svfiprintf_r>:
   1e0fc:	0105d783          	lhu	a5,16(a1)
   1e100:	e1010113          	add	sp,sp,-496
   1e104:	1c913c23          	sd	s1,472(sp)
   1e108:	1d313423          	sd	s3,456(sp)
   1e10c:	1b713423          	sd	s7,424(sp)
   1e110:	1b813023          	sd	s8,416(sp)
   1e114:	1e113423          	sd	ra,488(sp)
   1e118:	1e813023          	sd	s0,480(sp)
   1e11c:	1d213823          	sd	s2,464(sp)
   1e120:	1d413023          	sd	s4,448(sp)
   1e124:	1b513c23          	sd	s5,440(sp)
   1e128:	1b613823          	sd	s6,432(sp)
   1e12c:	19913c23          	sd	s9,408(sp)
   1e130:	19a13823          	sd	s10,400(sp)
   1e134:	19b13423          	sd	s11,392(sp)
   1e138:	0807f793          	and	a5,a5,128
   1e13c:	00058493          	mv	s1,a1
   1e140:	00050993          	mv	s3,a0
   1e144:	00060b93          	mv	s7,a2
   1e148:	00068c13          	mv	s8,a3
   1e14c:	00078663          	beqz	a5,1e158 <_svfiprintf_r+0x5c>
   1e150:	0185b783          	ld	a5,24(a1)
   1e154:	700780e3          	beqz	a5,1f054 <_svfiprintf_r+0xf58>
   1e158:	000236b7          	lui	a3,0x23
   1e15c:	10010913          	add	s2,sp,256
   1e160:	00000a93          	li	s5,0
   1e164:	91468693          	add	a3,a3,-1772 # 22914 <_ctype_+0x104>
   1e168:	00023a37          	lui	s4,0x23
   1e16c:	09213023          	sd	s2,128(sp)
   1e170:	08013823          	sd	zero,144(sp)
   1e174:	08012423          	sw	zero,136(sp)
   1e178:	00000713          	li	a4,0
   1e17c:	00090793          	mv	a5,s2
   1e180:	00013823          	sd	zero,16(sp)
   1e184:	04013023          	sd	zero,64(sp)
   1e188:	02013c23          	sd	zero,56(sp)
   1e18c:	04013423          	sd	zero,72(sp)
   1e190:	00d13423          	sd	a3,8(sp)
   1e194:	01000413          	li	s0,16
   1e198:	a80a0a13          	add	s4,s4,-1408 # 22a80 <zeroes.0>
   1e19c:	000a8c93          	mv	s9,s5
   1e1a0:	000b8813          	mv	a6,s7
   1e1a4:	00084683          	lbu	a3,0(a6)
   1e1a8:	1e068e63          	beqz	a3,1e3a4 <_svfiprintf_r+0x2a8>
   1e1ac:	00080b13          	mv	s6,a6
   1e1b0:	02500613          	li	a2,37
   1e1b4:	22c68e63          	beq	a3,a2,1e3f0 <_svfiprintf_r+0x2f4>
   1e1b8:	001b4683          	lbu	a3,1(s6)
   1e1bc:	001b0b13          	add	s6,s6,1
   1e1c0:	fe069ae3          	bnez	a3,1e1b4 <_svfiprintf_r+0xb8>
   1e1c4:	410b0abb          	subw	s5,s6,a6
   1e1c8:	1c0a8e63          	beqz	s5,1e3a4 <_svfiprintf_r+0x2a8>
   1e1cc:	08812683          	lw	a3,136(sp)
   1e1d0:	01570733          	add	a4,a4,s5
   1e1d4:	0107b023          	sd	a6,0(a5)
   1e1d8:	0016861b          	addw	a2,a3,1
   1e1dc:	0157b423          	sd	s5,8(a5)
   1e1e0:	08e13823          	sd	a4,144(sp)
   1e1e4:	08c12423          	sw	a2,136(sp)
   1e1e8:	00700693          	li	a3,7
   1e1ec:	01078793          	add	a5,a5,16
   1e1f0:	20c6c863          	blt	a3,a2,1e400 <_svfiprintf_r+0x304>
   1e1f4:	000b4683          	lbu	a3,0(s6)
   1e1f8:	015c8cbb          	addw	s9,s9,s5
   1e1fc:	1a068463          	beqz	a3,1e3a4 <_svfiprintf_r+0x2a8>
   1e200:	00000e13          	li	t3,0
   1e204:	00000893          	li	a7,0
   1e208:	001b4683          	lbu	a3,1(s6)
   1e20c:	001b0813          	add	a6,s6,1
   1e210:	06010ba3          	sb	zero,119(sp)
   1e214:	fff00a93          	li	s5,-1
   1e218:	05a00b93          	li	s7,90
   1e21c:	00088b13          	mv	s6,a7
   1e220:	000e0d13          	mv	s10,t3
   1e224:	00078d93          	mv	s11,a5
   1e228:	00180813          	add	a6,a6,1
   1e22c:	0006869b          	sext.w	a3,a3
   1e230:	fe06861b          	addw	a2,a3,-32
   1e234:	0006059b          	sext.w	a1,a2
   1e238:	04bbec63          	bltu	s7,a1,1e290 <_svfiprintf_r+0x194>
   1e23c:	00813783          	ld	a5,8(sp)
   1e240:	02061593          	sll	a1,a2,0x20
   1e244:	01e5d613          	srl	a2,a1,0x1e
   1e248:	00f60633          	add	a2,a2,a5
   1e24c:	00062603          	lw	a2,0(a2)
   1e250:	00060067          	jr	a2
   1e254:	00000d13          	li	s10,0
   1e258:	00900513          	li	a0,9
   1e25c:	00084583          	lbu	a1,0(a6)
   1e260:	002d161b          	sllw	a2,s10,0x2
   1e264:	01a60e3b          	addw	t3,a2,s10
   1e268:	fd06869b          	addw	a3,a3,-48
   1e26c:	001e1e1b          	sllw	t3,t3,0x1
   1e270:	fd05861b          	addw	a2,a1,-48
   1e274:	01c68d3b          	addw	s10,a3,t3
   1e278:	00180813          	add	a6,a6,1
   1e27c:	0005869b          	sext.w	a3,a1
   1e280:	fcc57ee3          	bgeu	a0,a2,1e25c <_svfiprintf_r+0x160>
   1e284:	fe06861b          	addw	a2,a3,-32
   1e288:	0006059b          	sext.w	a1,a2
   1e28c:	fabbf8e3          	bgeu	s7,a1,1e23c <_svfiprintf_r+0x140>
   1e290:	000b0893          	mv	a7,s6
   1e294:	000d0e13          	mv	t3,s10
   1e298:	000d8793          	mv	a5,s11
   1e29c:	10068463          	beqz	a3,1e3a4 <_svfiprintf_r+0x2a8>
   1e2a0:	08d10c23          	sb	a3,152(sp)
   1e2a4:	06010ba3          	sb	zero,119(sp)
   1e2a8:	00100d93          	li	s11,1
   1e2ac:	00100d13          	li	s10,1
   1e2b0:	09810b93          	add	s7,sp,152
   1e2b4:	00000a93          	li	s5,0
   1e2b8:	0028f293          	and	t0,a7,2
   1e2bc:	00028463          	beqz	t0,1e2c4 <_svfiprintf_r+0x1c8>
   1e2c0:	002d8d9b          	addw	s11,s11,2
   1e2c4:	0848ff93          	and	t6,a7,132
   1e2c8:	08812683          	lw	a3,136(sp)
   1e2cc:	000f9663          	bnez	t6,1e2d8 <_svfiprintf_r+0x1dc>
   1e2d0:	41be0b3b          	subw	s6,t3,s11
   1e2d4:	0f6044e3          	bgtz	s6,1ebbc <_svfiprintf_r+0xac0>
   1e2d8:	07714603          	lbu	a2,119(sp)
   1e2dc:	02060863          	beqz	a2,1e30c <_svfiprintf_r+0x210>
   1e2e0:	07710593          	add	a1,sp,119
   1e2e4:	00b7b023          	sd	a1,0(a5)
   1e2e8:	0016869b          	addw	a3,a3,1
   1e2ec:	00170713          	add	a4,a4,1
   1e2f0:	00100593          	li	a1,1
   1e2f4:	00b7b423          	sd	a1,8(a5)
   1e2f8:	08e13823          	sd	a4,144(sp)
   1e2fc:	08d12423          	sw	a3,136(sp)
   1e300:	00700613          	li	a2,7
   1e304:	01078793          	add	a5,a5,16
   1e308:	16d64463          	blt	a2,a3,1e470 <_svfiprintf_r+0x374>
   1e30c:	02028863          	beqz	t0,1e33c <_svfiprintf_r+0x240>
   1e310:	07810593          	add	a1,sp,120
   1e314:	00b7b023          	sd	a1,0(a5)
   1e318:	0016869b          	addw	a3,a3,1
   1e31c:	00270713          	add	a4,a4,2
   1e320:	00200593          	li	a1,2
   1e324:	00b7b423          	sd	a1,8(a5)
   1e328:	08e13823          	sd	a4,144(sp)
   1e32c:	08d12423          	sw	a3,136(sp)
   1e330:	00700613          	li	a2,7
   1e334:	01078793          	add	a5,a5,16
   1e338:	1ad644e3          	blt	a2,a3,1ece0 <_svfiprintf_r+0xbe4>
   1e33c:	08000613          	li	a2,128
   1e340:	5ecf8263          	beq	t6,a2,1e924 <_svfiprintf_r+0x828>
   1e344:	41aa8b3b          	subw	s6,s5,s10
   1e348:	6f604663          	bgtz	s6,1ea34 <_svfiprintf_r+0x938>
   1e34c:	0016861b          	addw	a2,a3,1
   1e350:	01a70733          	add	a4,a4,s10
   1e354:	0177b023          	sd	s7,0(a5)
   1e358:	01a7b423          	sd	s10,8(a5)
   1e35c:	08e13823          	sd	a4,144(sp)
   1e360:	08c12423          	sw	a2,136(sp)
   1e364:	00700693          	li	a3,7
   1e368:	01078793          	add	a5,a5,16
   1e36c:	7ac6c663          	blt	a3,a2,1eb18 <_svfiprintf_r+0xa1c>
   1e370:	0048f893          	and	a7,a7,4
   1e374:	00088663          	beqz	a7,1e380 <_svfiprintf_r+0x284>
   1e378:	41be0abb          	subw	s5,t3,s11
   1e37c:	1b5044e3          	bgtz	s5,1ed24 <_svfiprintf_r+0xc28>
   1e380:	000e0793          	mv	a5,t3
   1e384:	01be5463          	bge	t3,s11,1e38c <_svfiprintf_r+0x290>
   1e388:	000d8793          	mv	a5,s11
   1e38c:	01978cbb          	addw	s9,a5,s9
   1e390:	7c071063          	bnez	a4,1eb50 <_svfiprintf_r+0xa54>
   1e394:	00084683          	lbu	a3,0(a6)
   1e398:	08012423          	sw	zero,136(sp)
   1e39c:	00090793          	mv	a5,s2
   1e3a0:	e00696e3          	bnez	a3,1e1ac <_svfiprintf_r+0xb0>
   1e3a4:	000c8a93          	mv	s5,s9
   1e3a8:	06070e63          	beqz	a4,1e424 <_svfiprintf_r+0x328>
   1e3ac:	08010613          	add	a2,sp,128
   1e3b0:	00048593          	mv	a1,s1
   1e3b4:	00098513          	mv	a0,s3
   1e3b8:	b4dff0ef          	jal	1df04 <__ssprint_r>
   1e3bc:	0680006f          	j	1e424 <_svfiprintf_r+0x328>
   1e3c0:	010b6893          	or	a7,s6,16
   1e3c4:	00084683          	lbu	a3,0(a6)
   1e3c8:	00088b1b          	sext.w	s6,a7
   1e3cc:	e5dff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1e3d0:	000c2d03          	lw	s10,0(s8)
   1e3d4:	008c0c13          	add	s8,s8,8
   1e3d8:	460d5a63          	bgez	s10,1e84c <_svfiprintf_r+0x750>
   1e3dc:	41a00d3b          	negw	s10,s10
   1e3e0:	004b6893          	or	a7,s6,4
   1e3e4:	00084683          	lbu	a3,0(a6)
   1e3e8:	00088b1b          	sext.w	s6,a7
   1e3ec:	e3dff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1e3f0:	410b0abb          	subw	s5,s6,a6
   1e3f4:	dc0a9ce3          	bnez	s5,1e1cc <_svfiprintf_r+0xd0>
   1e3f8:	000b4683          	lbu	a3,0(s6)
   1e3fc:	e01ff06f          	j	1e1fc <_svfiprintf_r+0x100>
   1e400:	08010613          	add	a2,sp,128
   1e404:	00048593          	mv	a1,s1
   1e408:	00098513          	mv	a0,s3
   1e40c:	af9ff0ef          	jal	1df04 <__ssprint_r>
   1e410:	00051863          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1e414:	09013703          	ld	a4,144(sp)
   1e418:	00090793          	mv	a5,s2
   1e41c:	dd9ff06f          	j	1e1f4 <_svfiprintf_r+0xf8>
   1e420:	000c8a93          	mv	s5,s9
   1e424:	0104d783          	lhu	a5,16(s1)
   1e428:	0407f793          	and	a5,a5,64
   1e42c:	58079ae3          	bnez	a5,1f1c0 <_svfiprintf_r+0x10c4>
   1e430:	1e813083          	ld	ra,488(sp)
   1e434:	1e013403          	ld	s0,480(sp)
   1e438:	1d813483          	ld	s1,472(sp)
   1e43c:	1d013903          	ld	s2,464(sp)
   1e440:	1c813983          	ld	s3,456(sp)
   1e444:	1c013a03          	ld	s4,448(sp)
   1e448:	1b013b03          	ld	s6,432(sp)
   1e44c:	1a813b83          	ld	s7,424(sp)
   1e450:	1a013c03          	ld	s8,416(sp)
   1e454:	19813c83          	ld	s9,408(sp)
   1e458:	19013d03          	ld	s10,400(sp)
   1e45c:	18813d83          	ld	s11,392(sp)
   1e460:	000a8513          	mv	a0,s5
   1e464:	1b813a83          	ld	s5,440(sp)
   1e468:	1f010113          	add	sp,sp,496
   1e46c:	00008067          	ret
   1e470:	08010613          	add	a2,sp,128
   1e474:	00048593          	mv	a1,s1
   1e478:	00098513          	mv	a0,s3
   1e47c:	05013823          	sd	a6,80(sp)
   1e480:	03c13823          	sd	t3,48(sp)
   1e484:	03f13423          	sd	t6,40(sp)
   1e488:	02513023          	sd	t0,32(sp)
   1e48c:	01113c23          	sd	a7,24(sp)
   1e490:	a75ff0ef          	jal	1df04 <__ssprint_r>
   1e494:	f80516e3          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1e498:	09013703          	ld	a4,144(sp)
   1e49c:	08812683          	lw	a3,136(sp)
   1e4a0:	05013803          	ld	a6,80(sp)
   1e4a4:	03013e03          	ld	t3,48(sp)
   1e4a8:	02813f83          	ld	t6,40(sp)
   1e4ac:	02013283          	ld	t0,32(sp)
   1e4b0:	01813883          	ld	a7,24(sp)
   1e4b4:	00090793          	mv	a5,s2
   1e4b8:	e55ff06f          	j	1e30c <_svfiprintf_r+0x210>
   1e4bc:	000c3b83          	ld	s7,0(s8)
   1e4c0:	06010ba3          	sb	zero,119(sp)
   1e4c4:	000b0893          	mv	a7,s6
   1e4c8:	000d0e13          	mv	t3,s10
   1e4cc:	000d8793          	mv	a5,s11
   1e4d0:	008c0c13          	add	s8,s8,8
   1e4d4:	400b8ae3          	beqz	s7,1f0e8 <_svfiprintf_r+0xfec>
   1e4d8:	fff00693          	li	a3,-1
   1e4dc:	05013823          	sd	a6,80(sp)
   1e4e0:	02e13823          	sd	a4,48(sp)
   1e4e4:	03b13423          	sd	s11,40(sp)
   1e4e8:	03a13023          	sd	s10,32(sp)
   1e4ec:	01613c23          	sd	s6,24(sp)
   1e4f0:	32da82e3          	beq	s5,a3,1f014 <_svfiprintf_r+0xf18>
   1e4f4:	000a8613          	mv	a2,s5
   1e4f8:	00000593          	li	a1,0
   1e4fc:	000b8513          	mv	a0,s7
   1e500:	dedf80ef          	jal	172ec <memchr>
   1e504:	01813883          	ld	a7,24(sp)
   1e508:	02013e03          	ld	t3,32(sp)
   1e50c:	02813783          	ld	a5,40(sp)
   1e510:	03013703          	ld	a4,48(sp)
   1e514:	05013803          	ld	a6,80(sp)
   1e518:	46050ce3          	beqz	a0,1f190 <_svfiprintf_r+0x1094>
   1e51c:	41750d3b          	subw	s10,a0,s7
   1e520:	fffd4d93          	not	s11,s10
   1e524:	43fddd93          	sra	s11,s11,0x3f
   1e528:	01adfdb3          	and	s11,s11,s10
   1e52c:	00000a93          	li	s5,0
   1e530:	1600006f          	j	1e690 <_svfiprintf_r+0x594>
   1e534:	000c2683          	lw	a3,0(s8)
   1e538:	000d0e13          	mv	t3,s10
   1e53c:	000d8793          	mv	a5,s11
   1e540:	000b0893          	mv	a7,s6
   1e544:	06010ba3          	sb	zero,119(sp)
   1e548:	008c0c13          	add	s8,s8,8
   1e54c:	08d10c23          	sb	a3,152(sp)
   1e550:	00100d93          	li	s11,1
   1e554:	00100d13          	li	s10,1
   1e558:	09810b93          	add	s7,sp,152
   1e55c:	d59ff06f          	j	1e2b4 <_svfiprintf_r+0x1b8>
   1e560:	000b0893          	mv	a7,s6
   1e564:	000d0e13          	mv	t3,s10
   1e568:	000d8793          	mv	a5,s11
   1e56c:	0208f693          	and	a3,a7,32
   1e570:	008c0613          	add	a2,s8,8
   1e574:	04069863          	bnez	a3,1e5c4 <_svfiprintf_r+0x4c8>
   1e578:	0108f693          	and	a3,a7,16
   1e57c:	04069463          	bnez	a3,1e5c4 <_svfiprintf_r+0x4c8>
   1e580:	0408f593          	and	a1,a7,64
   1e584:	000c2683          	lw	a3,0(s8)
   1e588:	3c0580e3          	beqz	a1,1f148 <_svfiprintf_r+0x104c>
   1e58c:	01069d9b          	sllw	s11,a3,0x10
   1e590:	410ddd9b          	sraw	s11,s11,0x10
   1e594:	000d8593          	mv	a1,s11
   1e598:	0205cc63          	bltz	a1,1e5d0 <_svfiprintf_r+0x4d4>
   1e59c:	fff00593          	li	a1,-1
   1e5a0:	04ba8663          	beq	s5,a1,1e5ec <_svfiprintf_r+0x4f0>
   1e5a4:	f7f8f893          	and	a7,a7,-129
   1e5a8:	0008889b          	sext.w	a7,a7
   1e5ac:	040d9063          	bnez	s11,1e5ec <_svfiprintf_r+0x4f0>
   1e5b0:	3e0a98e3          	bnez	s5,1f1a0 <_svfiprintf_r+0x10a4>
   1e5b4:	00000d13          	li	s10,0
   1e5b8:	00060c13          	mv	s8,a2
   1e5bc:	0fc10b93          	add	s7,sp,252
   1e5c0:	0d00006f          	j	1e690 <_svfiprintf_r+0x594>
   1e5c4:	000c3583          	ld	a1,0(s8)
   1e5c8:	00058d93          	mv	s11,a1
   1e5cc:	fc05d8e3          	bgez	a1,1e59c <_svfiprintf_r+0x4a0>
   1e5d0:	02d00593          	li	a1,45
   1e5d4:	06b10ba3          	sb	a1,119(sp)
   1e5d8:	fff00593          	li	a1,-1
   1e5dc:	41b00db3          	neg	s11,s11
   1e5e0:	00ba8663          	beq	s5,a1,1e5ec <_svfiprintf_r+0x4f0>
   1e5e4:	f7f8f893          	and	a7,a7,-129
   1e5e8:	0008889b          	sext.w	a7,a7
   1e5ec:	00900593          	li	a1,9
   1e5f0:	03b5eae3          	bltu	a1,s11,1ee24 <_svfiprintf_r+0xd28>
   1e5f4:	030d869b          	addw	a3,s11,48
   1e5f8:	0ff6f693          	zext.b	a3,a3
   1e5fc:	00060c13          	mv	s8,a2
   1e600:	0ed10da3          	sb	a3,251(sp)
   1e604:	000a8d9b          	sext.w	s11,s5
   1e608:	01504463          	bgtz	s5,1e610 <_svfiprintf_r+0x514>
   1e60c:	00100d93          	li	s11,1
   1e610:	00100d13          	li	s10,1
   1e614:	0fb10b93          	add	s7,sp,251
   1e618:	0780006f          	j	1e690 <_svfiprintf_r+0x594>
   1e61c:	010b6693          	or	a3,s6,16
   1e620:	000d0e13          	mv	t3,s10
   1e624:	000d8793          	mv	a5,s11
   1e628:	0006869b          	sext.w	a3,a3
   1e62c:	0206f613          	and	a2,a3,32
   1e630:	008c0513          	add	a0,s8,8
   1e634:	00061663          	bnez	a2,1e640 <_svfiprintf_r+0x544>
   1e638:	0106f613          	and	a2,a3,16
   1e63c:	0e060ce3          	beqz	a2,1ef34 <_svfiprintf_r+0xe38>
   1e640:	000c3603          	ld	a2,0(s8)
   1e644:	bff6f893          	and	a7,a3,-1025
   1e648:	06010ba3          	sb	zero,119(sp)
   1e64c:	fff00593          	li	a1,-1
   1e650:	0008889b          	sext.w	a7,a7
   1e654:	00050c13          	mv	s8,a0
   1e658:	0eba8863          	beq	s5,a1,1e748 <_svfiprintf_r+0x64c>
   1e65c:	b7f6f693          	and	a3,a3,-1153
   1e660:	0006869b          	sext.w	a3,a3
   1e664:	240616e3          	bnez	a2,1f0b0 <_svfiprintf_r+0xfb4>
   1e668:	00088d13          	mv	s10,a7
   1e66c:	00068893          	mv	a7,a3
   1e670:	0c0a9263          	bnez	s5,1e734 <_svfiprintf_r+0x638>
   1e674:	7a061063          	bnez	a2,1ee14 <_svfiprintf_r+0xd18>
   1e678:	001d7d13          	and	s10,s10,1
   1e67c:	060d0ce3          	beqz	s10,1eef4 <_svfiprintf_r+0xdf8>
   1e680:	03000693          	li	a3,48
   1e684:	0ed10da3          	sb	a3,251(sp)
   1e688:	000d0d93          	mv	s11,s10
   1e68c:	0fb10b93          	add	s7,sp,251
   1e690:	07714683          	lbu	a3,119(sp)
   1e694:	c20682e3          	beqz	a3,1e2b8 <_svfiprintf_r+0x1bc>
   1e698:	001d8d9b          	addw	s11,s11,1
   1e69c:	c1dff06f          	j	1e2b8 <_svfiprintf_r+0x1bc>
   1e6a0:	010b6893          	or	a7,s6,16
   1e6a4:	000d0e13          	mv	t3,s10
   1e6a8:	000d8793          	mv	a5,s11
   1e6ac:	0008889b          	sext.w	a7,a7
   1e6b0:	ebdff06f          	j	1e56c <_svfiprintf_r+0x470>
   1e6b4:	00084683          	lbu	a3,0(a6)
   1e6b8:	06c00613          	li	a2,108
   1e6bc:	20c68ce3          	beq	a3,a2,1f0d4 <_svfiprintf_r+0xfd8>
   1e6c0:	010b6893          	or	a7,s6,16
   1e6c4:	00088b1b          	sext.w	s6,a7
   1e6c8:	b61ff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1e6cc:	00084683          	lbu	a3,0(a6)
   1e6d0:	06800613          	li	a2,104
   1e6d4:	1ec686e3          	beq	a3,a2,1f0c0 <_svfiprintf_r+0xfc4>
   1e6d8:	040b6893          	or	a7,s6,64
   1e6dc:	00088b1b          	sext.w	s6,a7
   1e6e0:	b49ff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1e6e4:	000d0e13          	mv	t3,s10
   1e6e8:	010b6d13          	or	s10,s6,16
   1e6ec:	000d8793          	mv	a5,s11
   1e6f0:	000d0d1b          	sext.w	s10,s10
   1e6f4:	020d7693          	and	a3,s10,32
   1e6f8:	008c0613          	add	a2,s8,8
   1e6fc:	00069663          	bnez	a3,1e708 <_svfiprintf_r+0x60c>
   1e700:	010d7693          	and	a3,s10,16
   1e704:	00068ce3          	beqz	a3,1ef1c <_svfiprintf_r+0xe20>
   1e708:	000c3d83          	ld	s11,0(s8)
   1e70c:	06010ba3          	sb	zero,119(sp)
   1e710:	fff00593          	li	a1,-1
   1e714:	000d0893          	mv	a7,s10
   1e718:	ecba8ae3          	beq	s5,a1,1e5ec <_svfiprintf_r+0x4f0>
   1e71c:	f7fd7893          	and	a7,s10,-129
   1e720:	0008889b          	sext.w	a7,a7
   1e724:	ec0d94e3          	bnez	s11,1e5ec <_svfiprintf_r+0x4f0>
   1e728:	00060c13          	mv	s8,a2
   1e72c:	00100613          	li	a2,1
   1e730:	f40a82e3          	beqz	s5,1e674 <_svfiprintf_r+0x578>
   1e734:	00100693          	li	a3,1
   1e738:	26d606e3          	beq	a2,a3,1f1a4 <_svfiprintf_r+0x10a8>
   1e73c:	00200693          	li	a3,2
   1e740:	1cd604e3          	beq	a2,a3,1f108 <_svfiprintf_r+0x100c>
   1e744:	00000613          	li	a2,0
   1e748:	0fc10593          	add	a1,sp,252
   1e74c:	00058b93          	mv	s7,a1
   1e750:	00767693          	and	a3,a2,7
   1e754:	03068693          	add	a3,a3,48
   1e758:	fedb8fa3          	sb	a3,-1(s7)
   1e75c:	00365613          	srl	a2,a2,0x3
   1e760:	000b8513          	mv	a0,s7
   1e764:	fffb8b93          	add	s7,s7,-1
   1e768:	fe0614e3          	bnez	a2,1e750 <_svfiprintf_r+0x654>
   1e76c:	0018f613          	and	a2,a7,1
   1e770:	68060863          	beqz	a2,1ee00 <_svfiprintf_r+0xd04>
   1e774:	03000613          	li	a2,48
   1e778:	68c68463          	beq	a3,a2,1ee00 <_svfiprintf_r+0xd04>
   1e77c:	ffe50513          	add	a0,a0,-2
   1e780:	40a58d3b          	subw	s10,a1,a0
   1e784:	fecb8fa3          	sb	a2,-1(s7)
   1e788:	000d0d9b          	sext.w	s11,s10
   1e78c:	7d5d4063          	blt	s10,s5,1ef4c <_svfiprintf_r+0xe50>
   1e790:	00050b93          	mv	s7,a0
   1e794:	efdff06f          	j	1e690 <_svfiprintf_r+0x594>
   1e798:	080b6893          	or	a7,s6,128
   1e79c:	00084683          	lbu	a3,0(a6)
   1e7a0:	00088b1b          	sext.w	s6,a7
   1e7a4:	a85ff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1e7a8:	00084683          	lbu	a3,0(a6)
   1e7ac:	02a00513          	li	a0,42
   1e7b0:	00180613          	add	a2,a6,1
   1e7b4:	20a68ae3          	beq	a3,a0,1f1c8 <_svfiprintf_r+0x10cc>
   1e7b8:	fd06859b          	addw	a1,a3,-48
   1e7bc:	00900313          	li	t1,9
   1e7c0:	00060813          	mv	a6,a2
   1e7c4:	00000a93          	li	s5,0
   1e7c8:	00900513          	li	a0,9
   1e7cc:	a6b362e3          	bltu	t1,a1,1e230 <_svfiprintf_r+0x134>
   1e7d0:	00084683          	lbu	a3,0(a6)
   1e7d4:	002a961b          	sllw	a2,s5,0x2
   1e7d8:	01560abb          	addw	s5,a2,s5
   1e7dc:	001a9a9b          	sllw	s5,s5,0x1
   1e7e0:	00ba8abb          	addw	s5,s5,a1
   1e7e4:	fd06859b          	addw	a1,a3,-48
   1e7e8:	00180813          	add	a6,a6,1
   1e7ec:	feb572e3          	bgeu	a0,a1,1e7d0 <_svfiprintf_r+0x6d4>
   1e7f0:	a41ff06f          	j	1e230 <_svfiprintf_r+0x134>
   1e7f4:	02b00613          	li	a2,43
   1e7f8:	00084683          	lbu	a3,0(a6)
   1e7fc:	06c10ba3          	sb	a2,119(sp)
   1e800:	a29ff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1e804:	00098513          	mv	a0,s3
   1e808:	03013023          	sd	a6,32(sp)
   1e80c:	00e13c23          	sd	a4,24(sp)
   1e810:	f19f70ef          	jal	16728 <_localeconv_r>
   1e814:	00853783          	ld	a5,8(a0)
   1e818:	00078513          	mv	a0,a5
   1e81c:	04f13423          	sd	a5,72(sp)
   1e820:	c50fa0ef          	jal	18c70 <strlen>
   1e824:	00050693          	mv	a3,a0
   1e828:	00098513          	mv	a0,s3
   1e82c:	02d13c23          	sd	a3,56(sp)
   1e830:	ef9f70ef          	jal	16728 <_localeconv_r>
   1e834:	01053603          	ld	a2,16(a0)
   1e838:	03813783          	ld	a5,56(sp)
   1e83c:	01813703          	ld	a4,24(sp)
   1e840:	04c13023          	sd	a2,64(sp)
   1e844:	02013803          	ld	a6,32(sp)
   1e848:	6a079c63          	bnez	a5,1ef00 <_svfiprintf_r+0xe04>
   1e84c:	00084683          	lbu	a3,0(a6)
   1e850:	9d9ff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1e854:	001b6893          	or	a7,s6,1
   1e858:	00084683          	lbu	a3,0(a6)
   1e85c:	00088b1b          	sext.w	s6,a7
   1e860:	9c9ff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1e864:	07714603          	lbu	a2,119(sp)
   1e868:	00084683          	lbu	a3,0(a6)
   1e86c:	9a061ee3          	bnez	a2,1e228 <_svfiprintf_r+0x12c>
   1e870:	02000613          	li	a2,32
   1e874:	06c10ba3          	sb	a2,119(sp)
   1e878:	9b1ff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1e87c:	020b6893          	or	a7,s6,32
   1e880:	00084683          	lbu	a3,0(a6)
   1e884:	00088b1b          	sext.w	s6,a7
   1e888:	9a1ff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1e88c:	ffff86b7          	lui	a3,0xffff8
   1e890:	8306c693          	xor	a3,a3,-2000
   1e894:	06d11c23          	sh	a3,120(sp)
   1e898:	000226b7          	lui	a3,0x22
   1e89c:	002b6893          	or	a7,s6,2
   1e8a0:	d1068693          	add	a3,a3,-752 # 21d10 <__clzdi2+0xb0>
   1e8a4:	000c3603          	ld	a2,0(s8)
   1e8a8:	000d0e13          	mv	t3,s10
   1e8ac:	000d8793          	mv	a5,s11
   1e8b0:	0008889b          	sext.w	a7,a7
   1e8b4:	008c0c13          	add	s8,s8,8
   1e8b8:	00d13823          	sd	a3,16(sp)
   1e8bc:	06010ba3          	sb	zero,119(sp)
   1e8c0:	fff00693          	li	a3,-1
   1e8c4:	2ada8e63          	beq	s5,a3,1eb80 <_svfiprintf_r+0xa84>
   1e8c8:	f7f8f693          	and	a3,a7,-129
   1e8cc:	0006869b          	sext.w	a3,a3
   1e8d0:	2a061263          	bnez	a2,1eb74 <_svfiprintf_r+0xa78>
   1e8d4:	00088d13          	mv	s10,a7
   1e8d8:	00200613          	li	a2,2
   1e8dc:	00068893          	mv	a7,a3
   1e8e0:	d91ff06f          	j	1e670 <_svfiprintf_r+0x574>
   1e8e4:	020b7693          	and	a3,s6,32
   1e8e8:	000c3603          	ld	a2,0(s8)
   1e8ec:	000d8793          	mv	a5,s11
   1e8f0:	02069463          	bnez	a3,1e918 <_svfiprintf_r+0x81c>
   1e8f4:	010b7693          	and	a3,s6,16
   1e8f8:	02069063          	bnez	a3,1e918 <_svfiprintf_r+0x81c>
   1e8fc:	040b7693          	and	a3,s6,64
   1e900:	060690e3          	bnez	a3,1f160 <_svfiprintf_r+0x1064>
   1e904:	200b7893          	and	a7,s6,512
   1e908:	0a0882e3          	beqz	a7,1f1ac <_svfiprintf_r+0x10b0>
   1e90c:	01960023          	sb	s9,0(a2)
   1e910:	008c0c13          	add	s8,s8,8
   1e914:	891ff06f          	j	1e1a4 <_svfiprintf_r+0xa8>
   1e918:	01963023          	sd	s9,0(a2)
   1e91c:	008c0c13          	add	s8,s8,8
   1e920:	885ff06f          	j	1e1a4 <_svfiprintf_r+0xa8>
   1e924:	41be0b3b          	subw	s6,t3,s11
   1e928:	a1605ee3          	blez	s6,1e344 <_svfiprintf_r+0x248>
   1e92c:	00023eb7          	lui	t4,0x23
   1e930:	01000613          	li	a2,16
   1e934:	a80e8e93          	add	t4,t4,-1408 # 22a80 <zeroes.0>
   1e938:	09665c63          	bge	a2,s6,1e9d0 <_svfiprintf_r+0x8d4>
   1e93c:	03513423          	sd	s5,40(sp)
   1e940:	01000f13          	li	t5,16
   1e944:	000b0a93          	mv	s5,s6
   1e948:	00700f93          	li	t6,7
   1e94c:	01113c23          	sd	a7,24(sp)
   1e950:	03c13023          	sd	t3,32(sp)
   1e954:	03013823          	sd	a6,48(sp)
   1e958:	000e8b13          	mv	s6,t4
   1e95c:	00c0006f          	j	1e968 <_svfiprintf_r+0x86c>
   1e960:	ff0a8a9b          	addw	s5,s5,-16
   1e964:	055f5a63          	bge	t5,s5,1e9b8 <_svfiprintf_r+0x8bc>
   1e968:	0016869b          	addw	a3,a3,1
   1e96c:	01070713          	add	a4,a4,16
   1e970:	0167b023          	sd	s6,0(a5)
   1e974:	01e7b423          	sd	t5,8(a5)
   1e978:	08e13823          	sd	a4,144(sp)
   1e97c:	08d12423          	sw	a3,136(sp)
   1e980:	01078793          	add	a5,a5,16
   1e984:	fcdfdee3          	bge	t6,a3,1e960 <_svfiprintf_r+0x864>
   1e988:	08010613          	add	a2,sp,128
   1e98c:	00048593          	mv	a1,s1
   1e990:	00098513          	mv	a0,s3
   1e994:	d70ff0ef          	jal	1df04 <__ssprint_r>
   1e998:	a80514e3          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1e99c:	01000f13          	li	t5,16
   1e9a0:	ff0a8a9b          	addw	s5,s5,-16
   1e9a4:	09013703          	ld	a4,144(sp)
   1e9a8:	08812683          	lw	a3,136(sp)
   1e9ac:	00090793          	mv	a5,s2
   1e9b0:	00700f93          	li	t6,7
   1e9b4:	fb5f4ae3          	blt	t5,s5,1e968 <_svfiprintf_r+0x86c>
   1e9b8:	000b0e93          	mv	t4,s6
   1e9bc:	01813883          	ld	a7,24(sp)
   1e9c0:	000a8b13          	mv	s6,s5
   1e9c4:	02013e03          	ld	t3,32(sp)
   1e9c8:	03013803          	ld	a6,48(sp)
   1e9cc:	02813a83          	ld	s5,40(sp)
   1e9d0:	0016869b          	addw	a3,a3,1
   1e9d4:	01670733          	add	a4,a4,s6
   1e9d8:	01d7b023          	sd	t4,0(a5)
   1e9dc:	0167b423          	sd	s6,8(a5)
   1e9e0:	08e13823          	sd	a4,144(sp)
   1e9e4:	08d12423          	sw	a3,136(sp)
   1e9e8:	00700613          	li	a2,7
   1e9ec:	01078793          	add	a5,a5,16
   1e9f0:	94d65ae3          	bge	a2,a3,1e344 <_svfiprintf_r+0x248>
   1e9f4:	08010613          	add	a2,sp,128
   1e9f8:	00048593          	mv	a1,s1
   1e9fc:	00098513          	mv	a0,s3
   1ea00:	03013423          	sd	a6,40(sp)
   1ea04:	03c13023          	sd	t3,32(sp)
   1ea08:	01113c23          	sd	a7,24(sp)
   1ea0c:	cf8ff0ef          	jal	1df04 <__ssprint_r>
   1ea10:	a00518e3          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1ea14:	41aa8b3b          	subw	s6,s5,s10
   1ea18:	09013703          	ld	a4,144(sp)
   1ea1c:	08812683          	lw	a3,136(sp)
   1ea20:	02813803          	ld	a6,40(sp)
   1ea24:	02013e03          	ld	t3,32(sp)
   1ea28:	01813883          	ld	a7,24(sp)
   1ea2c:	00090793          	mv	a5,s2
   1ea30:	91605ee3          	blez	s6,1e34c <_svfiprintf_r+0x250>
   1ea34:	00023eb7          	lui	t4,0x23
   1ea38:	a80e8e93          	add	t4,t4,-1408 # 22a80 <zeroes.0>
   1ea3c:	07645e63          	bge	s0,s6,1eab8 <_svfiprintf_r+0x9bc>
   1ea40:	00700a93          	li	s5,7
   1ea44:	01113c23          	sd	a7,24(sp)
   1ea48:	03c13023          	sd	t3,32(sp)
   1ea4c:	03013423          	sd	a6,40(sp)
   1ea50:	03413823          	sd	s4,48(sp)
   1ea54:	00c0006f          	j	1ea60 <_svfiprintf_r+0x964>
   1ea58:	ff0b0b1b          	addw	s6,s6,-16
   1ea5c:	05645663          	bge	s0,s6,1eaa8 <_svfiprintf_r+0x9ac>
   1ea60:	0016869b          	addw	a3,a3,1
   1ea64:	01070713          	add	a4,a4,16
   1ea68:	0147b023          	sd	s4,0(a5)
   1ea6c:	0087b423          	sd	s0,8(a5)
   1ea70:	08e13823          	sd	a4,144(sp)
   1ea74:	08d12423          	sw	a3,136(sp)
   1ea78:	01078793          	add	a5,a5,16
   1ea7c:	fcdadee3          	bge	s5,a3,1ea58 <_svfiprintf_r+0x95c>
   1ea80:	08010613          	add	a2,sp,128
   1ea84:	00048593          	mv	a1,s1
   1ea88:	00098513          	mv	a0,s3
   1ea8c:	c78ff0ef          	jal	1df04 <__ssprint_r>
   1ea90:	980518e3          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1ea94:	ff0b0b1b          	addw	s6,s6,-16
   1ea98:	09013703          	ld	a4,144(sp)
   1ea9c:	08812683          	lw	a3,136(sp)
   1eaa0:	00090793          	mv	a5,s2
   1eaa4:	fb644ee3          	blt	s0,s6,1ea60 <_svfiprintf_r+0x964>
   1eaa8:	01813883          	ld	a7,24(sp)
   1eaac:	02013e03          	ld	t3,32(sp)
   1eab0:	02813803          	ld	a6,40(sp)
   1eab4:	03013e83          	ld	t4,48(sp)
   1eab8:	0016869b          	addw	a3,a3,1
   1eabc:	01670733          	add	a4,a4,s6
   1eac0:	01d7b023          	sd	t4,0(a5)
   1eac4:	0167b423          	sd	s6,8(a5)
   1eac8:	08e13823          	sd	a4,144(sp)
   1eacc:	08d12423          	sw	a3,136(sp)
   1ead0:	00700613          	li	a2,7
   1ead4:	01078793          	add	a5,a5,16
   1ead8:	86d65ae3          	bge	a2,a3,1e34c <_svfiprintf_r+0x250>
   1eadc:	08010613          	add	a2,sp,128
   1eae0:	00048593          	mv	a1,s1
   1eae4:	00098513          	mv	a0,s3
   1eae8:	03013423          	sd	a6,40(sp)
   1eaec:	03c13023          	sd	t3,32(sp)
   1eaf0:	01113c23          	sd	a7,24(sp)
   1eaf4:	c10ff0ef          	jal	1df04 <__ssprint_r>
   1eaf8:	920514e3          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1eafc:	09013703          	ld	a4,144(sp)
   1eb00:	08812683          	lw	a3,136(sp)
   1eb04:	02813803          	ld	a6,40(sp)
   1eb08:	02013e03          	ld	t3,32(sp)
   1eb0c:	01813883          	ld	a7,24(sp)
   1eb10:	00090793          	mv	a5,s2
   1eb14:	839ff06f          	j	1e34c <_svfiprintf_r+0x250>
   1eb18:	08010613          	add	a2,sp,128
   1eb1c:	00048593          	mv	a1,s1
   1eb20:	00098513          	mv	a0,s3
   1eb24:	03013423          	sd	a6,40(sp)
   1eb28:	03c13023          	sd	t3,32(sp)
   1eb2c:	01113c23          	sd	a7,24(sp)
   1eb30:	bd4ff0ef          	jal	1df04 <__ssprint_r>
   1eb34:	8e0516e3          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1eb38:	09013703          	ld	a4,144(sp)
   1eb3c:	02813803          	ld	a6,40(sp)
   1eb40:	02013e03          	ld	t3,32(sp)
   1eb44:	01813883          	ld	a7,24(sp)
   1eb48:	00090793          	mv	a5,s2
   1eb4c:	825ff06f          	j	1e370 <_svfiprintf_r+0x274>
   1eb50:	08010613          	add	a2,sp,128
   1eb54:	00048593          	mv	a1,s1
   1eb58:	00098513          	mv	a0,s3
   1eb5c:	01013c23          	sd	a6,24(sp)
   1eb60:	ba4ff0ef          	jal	1df04 <__ssprint_r>
   1eb64:	8a051ee3          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1eb68:	09013703          	ld	a4,144(sp)
   1eb6c:	01813803          	ld	a6,24(sp)
   1eb70:	825ff06f          	j	1e394 <_svfiprintf_r+0x298>
   1eb74:	00068893          	mv	a7,a3
   1eb78:	00200693          	li	a3,2
   1eb7c:	bc0686e3          	beqz	a3,1e748 <_svfiprintf_r+0x64c>
   1eb80:	01013503          	ld	a0,16(sp)
   1eb84:	0fc10593          	add	a1,sp,252
   1eb88:	00058b93          	mv	s7,a1
   1eb8c:	00f67693          	and	a3,a2,15
   1eb90:	00d506b3          	add	a3,a0,a3
   1eb94:	0006c683          	lbu	a3,0(a3)
   1eb98:	00465613          	srl	a2,a2,0x4
   1eb9c:	fffb8b93          	add	s7,s7,-1
   1eba0:	00db8023          	sb	a3,0(s7)
   1eba4:	fe0614e3          	bnez	a2,1eb8c <_svfiprintf_r+0xa90>
   1eba8:	41758d3b          	subw	s10,a1,s7
   1ebac:	000a8d9b          	sext.w	s11,s5
   1ebb0:	afaad0e3          	bge	s5,s10,1e690 <_svfiprintf_r+0x594>
   1ebb4:	000d0d9b          	sext.w	s11,s10
   1ebb8:	ad9ff06f          	j	1e690 <_svfiprintf_r+0x594>
   1ebbc:	00023eb7          	lui	t4,0x23
   1ebc0:	01000613          	li	a2,16
   1ebc4:	a90e8e93          	add	t4,t4,-1392 # 22a90 <blanks.1>
   1ebc8:	0b665463          	bge	a2,s6,1ec70 <_svfiprintf_r+0xb74>
   1ebcc:	05513823          	sd	s5,80(sp)
   1ebd0:	01000f13          	li	t5,16
   1ebd4:	000b0a93          	mv	s5,s6
   1ebd8:	00700393          	li	t2,7
   1ebdc:	01113c23          	sd	a7,24(sp)
   1ebe0:	02513023          	sd	t0,32(sp)
   1ebe4:	03f13423          	sd	t6,40(sp)
   1ebe8:	03c13823          	sd	t3,48(sp)
   1ebec:	05013c23          	sd	a6,88(sp)
   1ebf0:	000e8b13          	mv	s6,t4
   1ebf4:	00c0006f          	j	1ec00 <_svfiprintf_r+0xb04>
   1ebf8:	ff0a8a9b          	addw	s5,s5,-16
   1ebfc:	055f5a63          	bge	t5,s5,1ec50 <_svfiprintf_r+0xb54>
   1ec00:	0016869b          	addw	a3,a3,1
   1ec04:	01070713          	add	a4,a4,16
   1ec08:	0167b023          	sd	s6,0(a5)
   1ec0c:	01e7b423          	sd	t5,8(a5)
   1ec10:	08e13823          	sd	a4,144(sp)
   1ec14:	08d12423          	sw	a3,136(sp)
   1ec18:	01078793          	add	a5,a5,16
   1ec1c:	fcd3dee3          	bge	t2,a3,1ebf8 <_svfiprintf_r+0xafc>
   1ec20:	08010613          	add	a2,sp,128
   1ec24:	00048593          	mv	a1,s1
   1ec28:	00098513          	mv	a0,s3
   1ec2c:	ad8ff0ef          	jal	1df04 <__ssprint_r>
   1ec30:	fe051863          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1ec34:	01000f13          	li	t5,16
   1ec38:	ff0a8a9b          	addw	s5,s5,-16
   1ec3c:	09013703          	ld	a4,144(sp)
   1ec40:	08812683          	lw	a3,136(sp)
   1ec44:	00090793          	mv	a5,s2
   1ec48:	00700393          	li	t2,7
   1ec4c:	fb5f4ae3          	blt	t5,s5,1ec00 <_svfiprintf_r+0xb04>
   1ec50:	000b0e93          	mv	t4,s6
   1ec54:	01813883          	ld	a7,24(sp)
   1ec58:	000a8b13          	mv	s6,s5
   1ec5c:	02013283          	ld	t0,32(sp)
   1ec60:	02813f83          	ld	t6,40(sp)
   1ec64:	03013e03          	ld	t3,48(sp)
   1ec68:	05813803          	ld	a6,88(sp)
   1ec6c:	05013a83          	ld	s5,80(sp)
   1ec70:	0016869b          	addw	a3,a3,1
   1ec74:	01670733          	add	a4,a4,s6
   1ec78:	01d7b023          	sd	t4,0(a5)
   1ec7c:	0167b423          	sd	s6,8(a5)
   1ec80:	08e13823          	sd	a4,144(sp)
   1ec84:	08d12423          	sw	a3,136(sp)
   1ec88:	00700613          	li	a2,7
   1ec8c:	01078793          	add	a5,a5,16
   1ec90:	e4d65463          	bge	a2,a3,1e2d8 <_svfiprintf_r+0x1dc>
   1ec94:	08010613          	add	a2,sp,128
   1ec98:	00048593          	mv	a1,s1
   1ec9c:	00098513          	mv	a0,s3
   1eca0:	05013823          	sd	a6,80(sp)
   1eca4:	03c13823          	sd	t3,48(sp)
   1eca8:	03f13423          	sd	t6,40(sp)
   1ecac:	02513023          	sd	t0,32(sp)
   1ecb0:	01113c23          	sd	a7,24(sp)
   1ecb4:	a50ff0ef          	jal	1df04 <__ssprint_r>
   1ecb8:	f6051463          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1ecbc:	09013703          	ld	a4,144(sp)
   1ecc0:	08812683          	lw	a3,136(sp)
   1ecc4:	05013803          	ld	a6,80(sp)
   1ecc8:	03013e03          	ld	t3,48(sp)
   1eccc:	02813f83          	ld	t6,40(sp)
   1ecd0:	02013283          	ld	t0,32(sp)
   1ecd4:	01813883          	ld	a7,24(sp)
   1ecd8:	00090793          	mv	a5,s2
   1ecdc:	dfcff06f          	j	1e2d8 <_svfiprintf_r+0x1dc>
   1ece0:	08010613          	add	a2,sp,128
   1ece4:	00048593          	mv	a1,s1
   1ece8:	00098513          	mv	a0,s3
   1ecec:	03013823          	sd	a6,48(sp)
   1ecf0:	03c13423          	sd	t3,40(sp)
   1ecf4:	03f13023          	sd	t6,32(sp)
   1ecf8:	01113c23          	sd	a7,24(sp)
   1ecfc:	a08ff0ef          	jal	1df04 <__ssprint_r>
   1ed00:	f2051063          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1ed04:	09013703          	ld	a4,144(sp)
   1ed08:	08812683          	lw	a3,136(sp)
   1ed0c:	03013803          	ld	a6,48(sp)
   1ed10:	02813e03          	ld	t3,40(sp)
   1ed14:	02013f83          	ld	t6,32(sp)
   1ed18:	01813883          	ld	a7,24(sp)
   1ed1c:	00090793          	mv	a5,s2
   1ed20:	e1cff06f          	j	1e33c <_svfiprintf_r+0x240>
   1ed24:	00023eb7          	lui	t4,0x23
   1ed28:	01000613          	li	a2,16
   1ed2c:	08812683          	lw	a3,136(sp)
   1ed30:	a90e8e93          	add	t4,t4,-1392 # 22a90 <blanks.1>
   1ed34:	09565063          	bge	a2,s5,1edb4 <_svfiprintf_r+0xcb8>
   1ed38:	03813023          	sd	s8,32(sp)
   1ed3c:	01000b13          	li	s6,16
   1ed40:	00700b93          	li	s7,7
   1ed44:	000e0d13          	mv	s10,t3
   1ed48:	01013c23          	sd	a6,24(sp)
   1ed4c:	000e8c13          	mv	s8,t4
   1ed50:	00c0006f          	j	1ed5c <_svfiprintf_r+0xc60>
   1ed54:	ff0a8a9b          	addw	s5,s5,-16
   1ed58:	055b5663          	bge	s6,s5,1eda4 <_svfiprintf_r+0xca8>
   1ed5c:	0016869b          	addw	a3,a3,1
   1ed60:	01070713          	add	a4,a4,16
   1ed64:	0187b023          	sd	s8,0(a5)
   1ed68:	0167b423          	sd	s6,8(a5)
   1ed6c:	08e13823          	sd	a4,144(sp)
   1ed70:	08d12423          	sw	a3,136(sp)
   1ed74:	01078793          	add	a5,a5,16
   1ed78:	fcdbdee3          	bge	s7,a3,1ed54 <_svfiprintf_r+0xc58>
   1ed7c:	08010613          	add	a2,sp,128
   1ed80:	00048593          	mv	a1,s1
   1ed84:	00098513          	mv	a0,s3
   1ed88:	97cff0ef          	jal	1df04 <__ssprint_r>
   1ed8c:	e8051a63          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1ed90:	ff0a8a9b          	addw	s5,s5,-16
   1ed94:	09013703          	ld	a4,144(sp)
   1ed98:	08812683          	lw	a3,136(sp)
   1ed9c:	00090793          	mv	a5,s2
   1eda0:	fb5b4ee3          	blt	s6,s5,1ed5c <_svfiprintf_r+0xc60>
   1eda4:	000c0e93          	mv	t4,s8
   1eda8:	01813803          	ld	a6,24(sp)
   1edac:	02013c03          	ld	s8,32(sp)
   1edb0:	000d0e13          	mv	t3,s10
   1edb4:	0016861b          	addw	a2,a3,1
   1edb8:	01570733          	add	a4,a4,s5
   1edbc:	01d7b023          	sd	t4,0(a5)
   1edc0:	0157b423          	sd	s5,8(a5)
   1edc4:	08e13823          	sd	a4,144(sp)
   1edc8:	08c12423          	sw	a2,136(sp)
   1edcc:	00700793          	li	a5,7
   1edd0:	dac7d863          	bge	a5,a2,1e380 <_svfiprintf_r+0x284>
   1edd4:	08010613          	add	a2,sp,128
   1edd8:	00048593          	mv	a1,s1
   1eddc:	00098513          	mv	a0,s3
   1ede0:	03013023          	sd	a6,32(sp)
   1ede4:	01c13c23          	sd	t3,24(sp)
   1ede8:	91cff0ef          	jal	1df04 <__ssprint_r>
   1edec:	e2051a63          	bnez	a0,1e420 <_svfiprintf_r+0x324>
   1edf0:	09013703          	ld	a4,144(sp)
   1edf4:	02013803          	ld	a6,32(sp)
   1edf8:	01813e03          	ld	t3,24(sp)
   1edfc:	d84ff06f          	j	1e380 <_svfiprintf_r+0x284>
   1ee00:	41758d3b          	subw	s10,a1,s7
   1ee04:	000d0d9b          	sext.w	s11,s10
   1ee08:	895d54e3          	bge	s10,s5,1e690 <_svfiprintf_r+0x594>
   1ee0c:	000a8d9b          	sext.w	s11,s5
   1ee10:	881ff06f          	j	1e690 <_svfiprintf_r+0x594>
   1ee14:	00000d93          	li	s11,0
   1ee18:	00000d13          	li	s10,0
   1ee1c:	0fc10b93          	add	s7,sp,252
   1ee20:	871ff06f          	j	1e690 <_svfiprintf_r+0x594>
   1ee24:	05313c23          	sd	s3,88(sp)
   1ee28:	04013983          	ld	s3,64(sp)
   1ee2c:	0fc10593          	add	a1,sp,252
   1ee30:	03513423          	sd	s5,40(sp)
   1ee34:	06913023          	sd	s1,96(sp)
   1ee38:	4008fd13          	and	s10,a7,1024
   1ee3c:	00000b13          	li	s6,0
   1ee40:	00058b93          	mv	s7,a1
   1ee44:	00900c13          	li	s8,9
   1ee48:	01113c23          	sd	a7,24(sp)
   1ee4c:	03c13023          	sd	t3,32(sp)
   1ee50:	02f13823          	sd	a5,48(sp)
   1ee54:	04e13823          	sd	a4,80(sp)
   1ee58:	00060a93          	mv	s5,a2
   1ee5c:	00058493          	mv	s1,a1
   1ee60:	07013423          	sd	a6,104(sp)
   1ee64:	00a00593          	li	a1,10
   1ee68:	000d8513          	mv	a0,s11
   1ee6c:	585020ef          	jal	21bf0 <__umoddi3>
   1ee70:	0305051b          	addw	a0,a0,48
   1ee74:	fea48fa3          	sb	a0,-1(s1)
   1ee78:	001b0b1b          	addw	s6,s6,1
   1ee7c:	fff48493          	add	s1,s1,-1
   1ee80:	000d0663          	beqz	s10,1ee8c <_svfiprintf_r+0xd90>
   1ee84:	0009c703          	lbu	a4,0(s3)
   1ee88:	01670e63          	beq	a4,s6,1eea4 <_svfiprintf_r+0xda8>
   1ee8c:	00a00593          	li	a1,10
   1ee90:	000d8513          	mv	a0,s11
   1ee94:	515020ef          	jal	21ba8 <__hidden___udivdi3>
   1ee98:	01bc7c63          	bgeu	s8,s11,1eeb0 <_svfiprintf_r+0xdb4>
   1ee9c:	00050d93          	mv	s11,a0
   1eea0:	fc5ff06f          	j	1ee64 <_svfiprintf_r+0xd68>
   1eea4:	0ff00793          	li	a5,255
   1eea8:	fef702e3          	beq	a4,a5,1ee8c <_svfiprintf_r+0xd90>
   1eeac:	1dbc6463          	bltu	s8,s11,1f074 <_svfiprintf_r+0xf78>
   1eeb0:	000a8613          	mv	a2,s5
   1eeb4:	02813a83          	ld	s5,40(sp)
   1eeb8:	000b8593          	mv	a1,s7
   1eebc:	00048b93          	mv	s7,s1
   1eec0:	05313023          	sd	s3,64(sp)
   1eec4:	41758d3b          	subw	s10,a1,s7
   1eec8:	01813883          	ld	a7,24(sp)
   1eecc:	02013e03          	ld	t3,32(sp)
   1eed0:	03013783          	ld	a5,48(sp)
   1eed4:	05013703          	ld	a4,80(sp)
   1eed8:	05813983          	ld	s3,88(sp)
   1eedc:	06813803          	ld	a6,104(sp)
   1eee0:	06013483          	ld	s1,96(sp)
   1eee4:	000d0d9b          	sext.w	s11,s10
   1eee8:	175d4063          	blt	s10,s5,1f048 <_svfiprintf_r+0xf4c>
   1eeec:	00060c13          	mv	s8,a2
   1eef0:	fa0ff06f          	j	1e690 <_svfiprintf_r+0x594>
   1eef4:	00000d93          	li	s11,0
   1eef8:	0fc10b93          	add	s7,sp,252
   1eefc:	f94ff06f          	j	1e690 <_svfiprintf_r+0x594>
   1ef00:	00084683          	lbu	a3,0(a6)
   1ef04:	b2060263          	beqz	a2,1e228 <_svfiprintf_r+0x12c>
   1ef08:	00064603          	lbu	a2,0(a2)
   1ef0c:	b0060e63          	beqz	a2,1e228 <_svfiprintf_r+0x12c>
   1ef10:	400b6893          	or	a7,s6,1024
   1ef14:	00088b1b          	sext.w	s6,a7
   1ef18:	b10ff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1ef1c:	040d7593          	and	a1,s10,64
   1ef20:	000c2683          	lw	a3,0(s8)
   1ef24:	1e058663          	beqz	a1,1f110 <_svfiprintf_r+0x1014>
   1ef28:	03069d93          	sll	s11,a3,0x30
   1ef2c:	030ddd93          	srl	s11,s11,0x30
   1ef30:	fdcff06f          	j	1e70c <_svfiprintf_r+0x610>
   1ef34:	0406f593          	and	a1,a3,64
   1ef38:	000c2603          	lw	a2,0(s8)
   1ef3c:	1e058663          	beqz	a1,1f128 <_svfiprintf_r+0x102c>
   1ef40:	03061613          	sll	a2,a2,0x30
   1ef44:	03065613          	srl	a2,a2,0x30
   1ef48:	efcff06f          	j	1e644 <_svfiprintf_r+0x548>
   1ef4c:	000a8d9b          	sext.w	s11,s5
   1ef50:	00050b93          	mv	s7,a0
   1ef54:	f3cff06f          	j	1e690 <_svfiprintf_r+0x594>
   1ef58:	000d0e13          	mv	t3,s10
   1ef5c:	000d8793          	mv	a5,s11
   1ef60:	000b0d13          	mv	s10,s6
   1ef64:	f90ff06f          	j	1e6f4 <_svfiprintf_r+0x5f8>
   1ef68:	000d0e13          	mv	t3,s10
   1ef6c:	000d8793          	mv	a5,s11
   1ef70:	000b0693          	mv	a3,s6
   1ef74:	eb8ff06f          	j	1e62c <_svfiprintf_r+0x530>
   1ef78:	00022637          	lui	a2,0x22
   1ef7c:	cf860613          	add	a2,a2,-776 # 21cf8 <__clzdi2+0x98>
   1ef80:	000b0893          	mv	a7,s6
   1ef84:	00c13823          	sd	a2,16(sp)
   1ef88:	0208f613          	and	a2,a7,32
   1ef8c:	000d0e13          	mv	t3,s10
   1ef90:	000d8793          	mv	a5,s11
   1ef94:	008c0593          	add	a1,s8,8
   1ef98:	06061a63          	bnez	a2,1f00c <_svfiprintf_r+0xf10>
   1ef9c:	0108f613          	and	a2,a7,16
   1efa0:	06061663          	bnez	a2,1f00c <_svfiprintf_r+0xf10>
   1efa4:	0408f513          	and	a0,a7,64
   1efa8:	000c2603          	lw	a2,0(s8)
   1efac:	18050663          	beqz	a0,1f138 <_svfiprintf_r+0x103c>
   1efb0:	03061613          	sll	a2,a2,0x30
   1efb4:	03065613          	srl	a2,a2,0x30
   1efb8:	0018f513          	and	a0,a7,1
   1efbc:	00050e63          	beqz	a0,1efd8 <_svfiprintf_r+0xedc>
   1efc0:	00060c63          	beqz	a2,1efd8 <_svfiprintf_r+0xedc>
   1efc4:	0028e893          	or	a7,a7,2
   1efc8:	03000513          	li	a0,48
   1efcc:	06a10c23          	sb	a0,120(sp)
   1efd0:	06d10ca3          	sb	a3,121(sp)
   1efd4:	0008889b          	sext.w	a7,a7
   1efd8:	bff8f893          	and	a7,a7,-1025
   1efdc:	0008889b          	sext.w	a7,a7
   1efe0:	00058c13          	mv	s8,a1
   1efe4:	8d9ff06f          	j	1e8bc <_svfiprintf_r+0x7c0>
   1efe8:	00022637          	lui	a2,0x22
   1efec:	d1060613          	add	a2,a2,-752 # 21d10 <__clzdi2+0xb0>
   1eff0:	000b0893          	mv	a7,s6
   1eff4:	00c13823          	sd	a2,16(sp)
   1eff8:	0208f613          	and	a2,a7,32
   1effc:	000d0e13          	mv	t3,s10
   1f000:	000d8793          	mv	a5,s11
   1f004:	008c0593          	add	a1,s8,8
   1f008:	f8060ae3          	beqz	a2,1ef9c <_svfiprintf_r+0xea0>
   1f00c:	000c3603          	ld	a2,0(s8)
   1f010:	fa9ff06f          	j	1efb8 <_svfiprintf_r+0xebc>
   1f014:	000b8513          	mv	a0,s7
   1f018:	c59f90ef          	jal	18c70 <strlen>
   1f01c:	00050d1b          	sext.w	s10,a0
   1f020:	fffd4d93          	not	s11,s10
   1f024:	43fddd93          	sra	s11,s11,0x3f
   1f028:	01813883          	ld	a7,24(sp)
   1f02c:	02013e03          	ld	t3,32(sp)
   1f030:	02813783          	ld	a5,40(sp)
   1f034:	03013703          	ld	a4,48(sp)
   1f038:	05013803          	ld	a6,80(sp)
   1f03c:	01adfdb3          	and	s11,s11,s10
   1f040:	00000a93          	li	s5,0
   1f044:	e4cff06f          	j	1e690 <_svfiprintf_r+0x594>
   1f048:	000a8d9b          	sext.w	s11,s5
   1f04c:	00060c13          	mv	s8,a2
   1f050:	e40ff06f          	j	1e690 <_svfiprintf_r+0x594>
   1f054:	04000593          	li	a1,64
   1f058:	a49f70ef          	jal	16aa0 <_malloc_r>
   1f05c:	00a4b023          	sd	a0,0(s1)
   1f060:	00a4bc23          	sd	a0,24(s1)
   1f064:	14050a63          	beqz	a0,1f1b8 <_svfiprintf_r+0x10bc>
   1f068:	04000793          	li	a5,64
   1f06c:	02f4a023          	sw	a5,32(s1)
   1f070:	8e8ff06f          	j	1e158 <_svfiprintf_r+0x5c>
   1f074:	03813783          	ld	a5,56(sp)
   1f078:	04813583          	ld	a1,72(sp)
   1f07c:	00000b13          	li	s6,0
   1f080:	40f484b3          	sub	s1,s1,a5
   1f084:	00078613          	mv	a2,a5
   1f088:	00048513          	mv	a0,s1
   1f08c:	cadf90ef          	jal	18d38 <strncpy>
   1f090:	0019c703          	lbu	a4,1(s3)
   1f094:	000d8513          	mv	a0,s11
   1f098:	00a00593          	li	a1,10
   1f09c:	00e03733          	snez	a4,a4
   1f0a0:	00e989b3          	add	s3,s3,a4
   1f0a4:	305020ef          	jal	21ba8 <__hidden___udivdi3>
   1f0a8:	00050d93          	mv	s11,a0
   1f0ac:	db9ff06f          	j	1ee64 <_svfiprintf_r+0xd68>
   1f0b0:	00068893          	mv	a7,a3
   1f0b4:	00000693          	li	a3,0
   1f0b8:	e8068863          	beqz	a3,1e748 <_svfiprintf_r+0x64c>
   1f0bc:	ac5ff06f          	j	1eb80 <_svfiprintf_r+0xa84>
   1f0c0:	200b6893          	or	a7,s6,512
   1f0c4:	00184683          	lbu	a3,1(a6)
   1f0c8:	00088b1b          	sext.w	s6,a7
   1f0cc:	00180813          	add	a6,a6,1
   1f0d0:	958ff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1f0d4:	020b6893          	or	a7,s6,32
   1f0d8:	00184683          	lbu	a3,1(a6)
   1f0dc:	00088b1b          	sext.w	s6,a7
   1f0e0:	00180813          	add	a6,a6,1
   1f0e4:	944ff06f          	j	1e228 <_svfiprintf_r+0x12c>
   1f0e8:	00600693          	li	a3,6
   1f0ec:	000a8d1b          	sext.w	s10,s5
   1f0f0:	0156f463          	bgeu	a3,s5,1f0f8 <_svfiprintf_r+0xffc>
   1f0f4:	00600d13          	li	s10,6
   1f0f8:	00022bb7          	lui	s7,0x22
   1f0fc:	000d0d93          	mv	s11,s10
   1f100:	d28b8b93          	add	s7,s7,-728 # 21d28 <__clzdi2+0xc8>
   1f104:	9b0ff06f          	j	1e2b4 <_svfiprintf_r+0x1b8>
   1f108:	00000613          	li	a2,0
   1f10c:	a75ff06f          	j	1eb80 <_svfiprintf_r+0xa84>
   1f110:	200d7593          	and	a1,s10,512
   1f114:	0ff6fd93          	zext.b	s11,a3
   1f118:	de059a63          	bnez	a1,1e70c <_svfiprintf_r+0x610>
   1f11c:	02069d93          	sll	s11,a3,0x20
   1f120:	020ddd93          	srl	s11,s11,0x20
   1f124:	de8ff06f          	j	1e70c <_svfiprintf_r+0x610>
   1f128:	2006f593          	and	a1,a3,512
   1f12c:	04058c63          	beqz	a1,1f184 <_svfiprintf_r+0x1088>
   1f130:	0ff67613          	zext.b	a2,a2
   1f134:	d10ff06f          	j	1e644 <_svfiprintf_r+0x548>
   1f138:	2008f513          	and	a0,a7,512
   1f13c:	02050e63          	beqz	a0,1f178 <_svfiprintf_r+0x107c>
   1f140:	0ff67613          	zext.b	a2,a2
   1f144:	e75ff06f          	j	1efb8 <_svfiprintf_r+0xebc>
   1f148:	2008f593          	and	a1,a7,512
   1f14c:	02058063          	beqz	a1,1f16c <_svfiprintf_r+0x1070>
   1f150:	01869d9b          	sllw	s11,a3,0x18
   1f154:	418ddd9b          	sraw	s11,s11,0x18
   1f158:	000d8593          	mv	a1,s11
   1f15c:	c3cff06f          	j	1e598 <_svfiprintf_r+0x49c>
   1f160:	01961023          	sh	s9,0(a2)
   1f164:	008c0c13          	add	s8,s8,8
   1f168:	83cff06f          	j	1e1a4 <_svfiprintf_r+0xa8>
   1f16c:	00068d93          	mv	s11,a3
   1f170:	00068593          	mv	a1,a3
   1f174:	c24ff06f          	j	1e598 <_svfiprintf_r+0x49c>
   1f178:	02061613          	sll	a2,a2,0x20
   1f17c:	02065613          	srl	a2,a2,0x20
   1f180:	e39ff06f          	j	1efb8 <_svfiprintf_r+0xebc>
   1f184:	02061613          	sll	a2,a2,0x20
   1f188:	02065613          	srl	a2,a2,0x20
   1f18c:	cb8ff06f          	j	1e644 <_svfiprintf_r+0x548>
   1f190:	000a8d93          	mv	s11,s5
   1f194:	000a8d13          	mv	s10,s5
   1f198:	00000a93          	li	s5,0
   1f19c:	cf4ff06f          	j	1e690 <_svfiprintf_r+0x594>
   1f1a0:	00060c13          	mv	s8,a2
   1f1a4:	03000693          	li	a3,48
   1f1a8:	c58ff06f          	j	1e600 <_svfiprintf_r+0x504>
   1f1ac:	01962023          	sw	s9,0(a2)
   1f1b0:	008c0c13          	add	s8,s8,8
   1f1b4:	ff1fe06f          	j	1e1a4 <_svfiprintf_r+0xa8>
   1f1b8:	00c00793          	li	a5,12
   1f1bc:	00f9a023          	sw	a5,0(s3)
   1f1c0:	fff00a93          	li	s5,-1
   1f1c4:	a6cff06f          	j	1e430 <_svfiprintf_r+0x334>
   1f1c8:	000c2683          	lw	a3,0(s8)
   1f1cc:	008c0c13          	add	s8,s8,8
   1f1d0:	00068a9b          	sext.w	s5,a3
   1f1d4:	0006d463          	bgez	a3,1f1dc <_svfiprintf_r+0x10e0>
   1f1d8:	fff00a93          	li	s5,-1
   1f1dc:	00184683          	lbu	a3,1(a6)
   1f1e0:	00060813          	mv	a6,a2
   1f1e4:	844ff06f          	j	1e228 <_svfiprintf_r+0x12c>

000000000001f1e8 <__swbuf_r>:
   1f1e8:	fd010113          	add	sp,sp,-48
   1f1ec:	02813023          	sd	s0,32(sp)
   1f1f0:	00913c23          	sd	s1,24(sp)
   1f1f4:	01213823          	sd	s2,16(sp)
   1f1f8:	02113423          	sd	ra,40(sp)
   1f1fc:	01313423          	sd	s3,8(sp)
   1f200:	00050913          	mv	s2,a0
   1f204:	00058493          	mv	s1,a1
   1f208:	00060413          	mv	s0,a2
   1f20c:	00050663          	beqz	a0,1f218 <__swbuf_r+0x30>
   1f210:	05052783          	lw	a5,80(a0)
   1f214:	14078063          	beqz	a5,1f354 <__swbuf_r+0x16c>
   1f218:	02842783          	lw	a5,40(s0)
   1f21c:	01041703          	lh	a4,16(s0)
   1f220:	00f42623          	sw	a5,12(s0)
   1f224:	00877793          	and	a5,a4,8
   1f228:	08078263          	beqz	a5,1f2ac <__swbuf_r+0xc4>
   1f22c:	01843783          	ld	a5,24(s0)
   1f230:	06078e63          	beqz	a5,1f2ac <__swbuf_r+0xc4>
   1f234:	0ff4f993          	zext.b	s3,s1
   1f238:	03271693          	sll	a3,a4,0x32
   1f23c:	00098493          	mv	s1,s3
   1f240:	0806da63          	bgez	a3,1f2d4 <__swbuf_r+0xec>
   1f244:	00043703          	ld	a4,0(s0)
   1f248:	02042683          	lw	a3,32(s0)
   1f24c:	40f707bb          	subw	a5,a4,a5
   1f250:	0ad7da63          	bge	a5,a3,1f304 <__swbuf_r+0x11c>
   1f254:	00c42683          	lw	a3,12(s0)
   1f258:	00170613          	add	a2,a4,1
   1f25c:	00c43023          	sd	a2,0(s0)
   1f260:	fff6869b          	addw	a3,a3,-1
   1f264:	00d42623          	sw	a3,12(s0)
   1f268:	01370023          	sb	s3,0(a4)
   1f26c:	02042703          	lw	a4,32(s0)
   1f270:	0017879b          	addw	a5,a5,1
   1f274:	0cf70463          	beq	a4,a5,1f33c <__swbuf_r+0x154>
   1f278:	01045783          	lhu	a5,16(s0)
   1f27c:	0017f793          	and	a5,a5,1
   1f280:	00078663          	beqz	a5,1f28c <__swbuf_r+0xa4>
   1f284:	00a00793          	li	a5,10
   1f288:	0af48a63          	beq	s1,a5,1f33c <__swbuf_r+0x154>
   1f28c:	02813083          	ld	ra,40(sp)
   1f290:	02013403          	ld	s0,32(sp)
   1f294:	01013903          	ld	s2,16(sp)
   1f298:	00813983          	ld	s3,8(sp)
   1f29c:	00048513          	mv	a0,s1
   1f2a0:	01813483          	ld	s1,24(sp)
   1f2a4:	03010113          	add	sp,sp,48
   1f2a8:	00008067          	ret
   1f2ac:	00040593          	mv	a1,s0
   1f2b0:	00090513          	mv	a0,s2
   1f2b4:	875f30ef          	jal	12b28 <__swsetup_r>
   1f2b8:	08051a63          	bnez	a0,1f34c <__swbuf_r+0x164>
   1f2bc:	01041703          	lh	a4,16(s0)
   1f2c0:	0ff4f993          	zext.b	s3,s1
   1f2c4:	01843783          	ld	a5,24(s0)
   1f2c8:	03271693          	sll	a3,a4,0x32
   1f2cc:	00098493          	mv	s1,s3
   1f2d0:	f606cae3          	bltz	a3,1f244 <__swbuf_r+0x5c>
   1f2d4:	0ac42683          	lw	a3,172(s0)
   1f2d8:	00002637          	lui	a2,0x2
   1f2dc:	00c76733          	or	a4,a4,a2
   1f2e0:	ffffe637          	lui	a2,0xffffe
   1f2e4:	fff60613          	add	a2,a2,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffd9217>
   1f2e8:	00c6f6b3          	and	a3,a3,a2
   1f2ec:	00e41823          	sh	a4,16(s0)
   1f2f0:	00043703          	ld	a4,0(s0)
   1f2f4:	0ad42623          	sw	a3,172(s0)
   1f2f8:	02042683          	lw	a3,32(s0)
   1f2fc:	40f707bb          	subw	a5,a4,a5
   1f300:	f4d7cae3          	blt	a5,a3,1f254 <__swbuf_r+0x6c>
   1f304:	00040593          	mv	a1,s0
   1f308:	00090513          	mv	a0,s2
   1f30c:	cd1f30ef          	jal	12fdc <_fflush_r>
   1f310:	02051e63          	bnez	a0,1f34c <__swbuf_r+0x164>
   1f314:	00043703          	ld	a4,0(s0)
   1f318:	00c42683          	lw	a3,12(s0)
   1f31c:	00100793          	li	a5,1
   1f320:	00170613          	add	a2,a4,1
   1f324:	fff6869b          	addw	a3,a3,-1
   1f328:	00c43023          	sd	a2,0(s0)
   1f32c:	00d42623          	sw	a3,12(s0)
   1f330:	01370023          	sb	s3,0(a4)
   1f334:	02042703          	lw	a4,32(s0)
   1f338:	f4f710e3          	bne	a4,a5,1f278 <__swbuf_r+0x90>
   1f33c:	00040593          	mv	a1,s0
   1f340:	00090513          	mv	a0,s2
   1f344:	c99f30ef          	jal	12fdc <_fflush_r>
   1f348:	f40502e3          	beqz	a0,1f28c <__swbuf_r+0xa4>
   1f34c:	fff00493          	li	s1,-1
   1f350:	f3dff06f          	j	1f28c <__swbuf_r+0xa4>
   1f354:	8b4f40ef          	jal	13408 <__sinit>
   1f358:	ec1ff06f          	j	1f218 <__swbuf_r+0x30>

000000000001f35c <__swbuf>:
   1f35c:	00050793          	mv	a5,a0
   1f360:	7581b503          	ld	a0,1880(gp) # 24d40 <_impure_ptr>
   1f364:	00058613          	mv	a2,a1
   1f368:	00078593          	mv	a1,a5
   1f36c:	e7dff06f          	j	1f1e8 <__swbuf_r>

000000000001f370 <_wcrtomb_r>:
   1f370:	fd010113          	add	sp,sp,-48
   1f374:	02813023          	sd	s0,32(sp)
   1f378:	00913c23          	sd	s1,24(sp)
   1f37c:	02113423          	sd	ra,40(sp)
   1f380:	e401b783          	ld	a5,-448(gp) # 24428 <__global_locale+0xe0>
   1f384:	00050413          	mv	s0,a0
   1f388:	00068493          	mv	s1,a3
   1f38c:	02058263          	beqz	a1,1f3b0 <_wcrtomb_r+0x40>
   1f390:	000780e7          	jalr	a5
   1f394:	fff00793          	li	a5,-1
   1f398:	02f50663          	beq	a0,a5,1f3c4 <_wcrtomb_r+0x54>
   1f39c:	02813083          	ld	ra,40(sp)
   1f3a0:	02013403          	ld	s0,32(sp)
   1f3a4:	01813483          	ld	s1,24(sp)
   1f3a8:	03010113          	add	sp,sp,48
   1f3ac:	00008067          	ret
   1f3b0:	00000613          	li	a2,0
   1f3b4:	00010593          	mv	a1,sp
   1f3b8:	000780e7          	jalr	a5
   1f3bc:	fff00793          	li	a5,-1
   1f3c0:	fcf51ee3          	bne	a0,a5,1f39c <_wcrtomb_r+0x2c>
   1f3c4:	0004a023          	sw	zero,0(s1)
   1f3c8:	08a00793          	li	a5,138
   1f3cc:	02813083          	ld	ra,40(sp)
   1f3d0:	00f42023          	sw	a5,0(s0)
   1f3d4:	02013403          	ld	s0,32(sp)
   1f3d8:	01813483          	ld	s1,24(sp)
   1f3dc:	03010113          	add	sp,sp,48
   1f3e0:	00008067          	ret

000000000001f3e4 <wcrtomb>:
   1f3e4:	fd010113          	add	sp,sp,-48
   1f3e8:	02813023          	sd	s0,32(sp)
   1f3ec:	00913c23          	sd	s1,24(sp)
   1f3f0:	02113423          	sd	ra,40(sp)
   1f3f4:	7581b483          	ld	s1,1880(gp) # 24d40 <_impure_ptr>
   1f3f8:	e401b783          	ld	a5,-448(gp) # 24428 <__global_locale+0xe0>
   1f3fc:	00060413          	mv	s0,a2
   1f400:	02050a63          	beqz	a0,1f434 <wcrtomb+0x50>
   1f404:	00058613          	mv	a2,a1
   1f408:	00040693          	mv	a3,s0
   1f40c:	00050593          	mv	a1,a0
   1f410:	00048513          	mv	a0,s1
   1f414:	000780e7          	jalr	a5
   1f418:	fff00793          	li	a5,-1
   1f41c:	02f50a63          	beq	a0,a5,1f450 <wcrtomb+0x6c>
   1f420:	02813083          	ld	ra,40(sp)
   1f424:	02013403          	ld	s0,32(sp)
   1f428:	01813483          	ld	s1,24(sp)
   1f42c:	03010113          	add	sp,sp,48
   1f430:	00008067          	ret
   1f434:	00060693          	mv	a3,a2
   1f438:	00010593          	mv	a1,sp
   1f43c:	00000613          	li	a2,0
   1f440:	00048513          	mv	a0,s1
   1f444:	000780e7          	jalr	a5
   1f448:	fff00793          	li	a5,-1
   1f44c:	fcf51ae3          	bne	a0,a5,1f420 <wcrtomb+0x3c>
   1f450:	00042023          	sw	zero,0(s0)
   1f454:	02813083          	ld	ra,40(sp)
   1f458:	02013403          	ld	s0,32(sp)
   1f45c:	08a00793          	li	a5,138
   1f460:	00f4a023          	sw	a5,0(s1)
   1f464:	01813483          	ld	s1,24(sp)
   1f468:	03010113          	add	sp,sp,48
   1f46c:	00008067          	ret

000000000001f470 <abort>:
   1f470:	ff010113          	add	sp,sp,-16
   1f474:	00600513          	li	a0,6
   1f478:	00113423          	sd	ra,8(sp)
   1f47c:	344000ef          	jal	1f7c0 <raise>
   1f480:	00100513          	li	a0,1
   1f484:	674000ef          	jal	1faf8 <_exit>

000000000001f488 <__register_exitproc>:
   1f488:	7481b703          	ld	a4,1864(gp) # 24d30 <_global_impure_ptr>
   1f48c:	1f873783          	ld	a5,504(a4)
   1f490:	06078063          	beqz	a5,1f4f0 <__register_exitproc+0x68>
   1f494:	0087a703          	lw	a4,8(a5)
   1f498:	01f00813          	li	a6,31
   1f49c:	08e84663          	blt	a6,a4,1f528 <__register_exitproc+0xa0>
   1f4a0:	02050863          	beqz	a0,1f4d0 <__register_exitproc+0x48>
   1f4a4:	00371813          	sll	a6,a4,0x3
   1f4a8:	01078833          	add	a6,a5,a6
   1f4ac:	10c83823          	sd	a2,272(a6)
   1f4b0:	3107a883          	lw	a7,784(a5)
   1f4b4:	00100613          	li	a2,1
   1f4b8:	00e6163b          	sllw	a2,a2,a4
   1f4bc:	00c8e8b3          	or	a7,a7,a2
   1f4c0:	3117a823          	sw	a7,784(a5)
   1f4c4:	20d83823          	sd	a3,528(a6)
   1f4c8:	00200693          	li	a3,2
   1f4cc:	02d50863          	beq	a0,a3,1f4fc <__register_exitproc+0x74>
   1f4d0:	00270693          	add	a3,a4,2
   1f4d4:	00369693          	sll	a3,a3,0x3
   1f4d8:	0017071b          	addw	a4,a4,1
   1f4dc:	00e7a423          	sw	a4,8(a5)
   1f4e0:	00d787b3          	add	a5,a5,a3
   1f4e4:	00b7b023          	sd	a1,0(a5)
   1f4e8:	00000513          	li	a0,0
   1f4ec:	00008067          	ret
   1f4f0:	20070793          	add	a5,a4,512
   1f4f4:	1ef73c23          	sd	a5,504(a4)
   1f4f8:	f9dff06f          	j	1f494 <__register_exitproc+0xc>
   1f4fc:	3147a683          	lw	a3,788(a5)
   1f500:	00000513          	li	a0,0
   1f504:	00c6e6b3          	or	a3,a3,a2
   1f508:	30d7aa23          	sw	a3,788(a5)
   1f50c:	00270693          	add	a3,a4,2
   1f510:	00369693          	sll	a3,a3,0x3
   1f514:	0017071b          	addw	a4,a4,1
   1f518:	00e7a423          	sw	a4,8(a5)
   1f51c:	00d787b3          	add	a5,a5,a3
   1f520:	00b7b023          	sd	a1,0(a5)
   1f524:	00008067          	ret
   1f528:	fff00513          	li	a0,-1
   1f52c:	00008067          	ret

000000000001f530 <_init_signal_r>:
   1f530:	51853783          	ld	a5,1304(a0)
   1f534:	00078663          	beqz	a5,1f540 <_init_signal_r+0x10>
   1f538:	00000513          	li	a0,0
   1f53c:	00008067          	ret
   1f540:	ff010113          	add	sp,sp,-16
   1f544:	10000593          	li	a1,256
   1f548:	00813023          	sd	s0,0(sp)
   1f54c:	00113423          	sd	ra,8(sp)
   1f550:	00050413          	mv	s0,a0
   1f554:	d4cf70ef          	jal	16aa0 <_malloc_r>
   1f558:	50a43c23          	sd	a0,1304(s0)
   1f55c:	02050463          	beqz	a0,1f584 <_init_signal_r+0x54>
   1f560:	10050793          	add	a5,a0,256
   1f564:	00053023          	sd	zero,0(a0)
   1f568:	00850513          	add	a0,a0,8
   1f56c:	fef51ce3          	bne	a0,a5,1f564 <_init_signal_r+0x34>
   1f570:	00000513          	li	a0,0
   1f574:	00813083          	ld	ra,8(sp)
   1f578:	00013403          	ld	s0,0(sp)
   1f57c:	01010113          	add	sp,sp,16
   1f580:	00008067          	ret
   1f584:	fff00513          	li	a0,-1
   1f588:	fedff06f          	j	1f574 <_init_signal_r+0x44>

000000000001f58c <_signal_r>:
   1f58c:	fd010113          	add	sp,sp,-48
   1f590:	00913c23          	sd	s1,24(sp)
   1f594:	02113423          	sd	ra,40(sp)
   1f598:	02813023          	sd	s0,32(sp)
   1f59c:	01f00793          	li	a5,31
   1f5a0:	00050493          	mv	s1,a0
   1f5a4:	02b7ea63          	bltu	a5,a1,1f5d8 <_signal_r+0x4c>
   1f5a8:	51853783          	ld	a5,1304(a0)
   1f5ac:	00058413          	mv	s0,a1
   1f5b0:	02078c63          	beqz	a5,1f5e8 <_signal_r+0x5c>
   1f5b4:	00341413          	sll	s0,s0,0x3
   1f5b8:	008787b3          	add	a5,a5,s0
   1f5bc:	0007b503          	ld	a0,0(a5)
   1f5c0:	00c7b023          	sd	a2,0(a5)
   1f5c4:	02813083          	ld	ra,40(sp)
   1f5c8:	02013403          	ld	s0,32(sp)
   1f5cc:	01813483          	ld	s1,24(sp)
   1f5d0:	03010113          	add	sp,sp,48
   1f5d4:	00008067          	ret
   1f5d8:	01600793          	li	a5,22
   1f5dc:	00f52023          	sw	a5,0(a0)
   1f5e0:	fff00513          	li	a0,-1
   1f5e4:	fe1ff06f          	j	1f5c4 <_signal_r+0x38>
   1f5e8:	10000593          	li	a1,256
   1f5ec:	00c13423          	sd	a2,8(sp)
   1f5f0:	cb0f70ef          	jal	16aa0 <_malloc_r>
   1f5f4:	50a4bc23          	sd	a0,1304(s1)
   1f5f8:	00813603          	ld	a2,8(sp)
   1f5fc:	00050793          	mv	a5,a0
   1f600:	00050713          	mv	a4,a0
   1f604:	10050693          	add	a3,a0,256
   1f608:	fc050ce3          	beqz	a0,1f5e0 <_signal_r+0x54>
   1f60c:	00073023          	sd	zero,0(a4)
   1f610:	00870713          	add	a4,a4,8
   1f614:	fed71ce3          	bne	a4,a3,1f60c <_signal_r+0x80>
   1f618:	f9dff06f          	j	1f5b4 <_signal_r+0x28>

000000000001f61c <_raise_r>:
   1f61c:	fe010113          	add	sp,sp,-32
   1f620:	00913423          	sd	s1,8(sp)
   1f624:	00113c23          	sd	ra,24(sp)
   1f628:	00813823          	sd	s0,16(sp)
   1f62c:	01f00793          	li	a5,31
   1f630:	00050493          	mv	s1,a0
   1f634:	08b7ee63          	bltu	a5,a1,1f6d0 <_raise_r+0xb4>
   1f638:	51853783          	ld	a5,1304(a0)
   1f63c:	00058413          	mv	s0,a1
   1f640:	04078463          	beqz	a5,1f688 <_raise_r+0x6c>
   1f644:	00359713          	sll	a4,a1,0x3
   1f648:	00e787b3          	add	a5,a5,a4
   1f64c:	0007b703          	ld	a4,0(a5)
   1f650:	02070c63          	beqz	a4,1f688 <_raise_r+0x6c>
   1f654:	00100693          	li	a3,1
   1f658:	00d70c63          	beq	a4,a3,1f670 <_raise_r+0x54>
   1f65c:	fff00693          	li	a3,-1
   1f660:	04d70863          	beq	a4,a3,1f6b0 <_raise_r+0x94>
   1f664:	0007b023          	sd	zero,0(a5)
   1f668:	00058513          	mv	a0,a1
   1f66c:	000700e7          	jalr	a4
   1f670:	00000513          	li	a0,0
   1f674:	01813083          	ld	ra,24(sp)
   1f678:	01013403          	ld	s0,16(sp)
   1f67c:	00813483          	ld	s1,8(sp)
   1f680:	02010113          	add	sp,sp,32
   1f684:	00008067          	ret
   1f688:	00048513          	mv	a0,s1
   1f68c:	424000ef          	jal	1fab0 <_getpid_r>
   1f690:	00040613          	mv	a2,s0
   1f694:	01013403          	ld	s0,16(sp)
   1f698:	01813083          	ld	ra,24(sp)
   1f69c:	00050593          	mv	a1,a0
   1f6a0:	00048513          	mv	a0,s1
   1f6a4:	00813483          	ld	s1,8(sp)
   1f6a8:	02010113          	add	sp,sp,32
   1f6ac:	3a00006f          	j	1fa4c <_kill_r>
   1f6b0:	01813083          	ld	ra,24(sp)
   1f6b4:	01013403          	ld	s0,16(sp)
   1f6b8:	01600793          	li	a5,22
   1f6bc:	00f52023          	sw	a5,0(a0)
   1f6c0:	00813483          	ld	s1,8(sp)
   1f6c4:	00100513          	li	a0,1
   1f6c8:	02010113          	add	sp,sp,32
   1f6cc:	00008067          	ret
   1f6d0:	01600793          	li	a5,22
   1f6d4:	00f52023          	sw	a5,0(a0)
   1f6d8:	fff00513          	li	a0,-1
   1f6dc:	f99ff06f          	j	1f674 <_raise_r+0x58>

000000000001f6e0 <__sigtramp_r>:
   1f6e0:	01f00793          	li	a5,31
   1f6e4:	0cb7ea63          	bltu	a5,a1,1f7b8 <__sigtramp_r+0xd8>
   1f6e8:	51853783          	ld	a5,1304(a0)
   1f6ec:	fe010113          	add	sp,sp,-32
   1f6f0:	00813823          	sd	s0,16(sp)
   1f6f4:	00913423          	sd	s1,8(sp)
   1f6f8:	00113c23          	sd	ra,24(sp)
   1f6fc:	00058413          	mv	s0,a1
   1f700:	00050493          	mv	s1,a0
   1f704:	08078063          	beqz	a5,1f784 <__sigtramp_r+0xa4>
   1f708:	00341713          	sll	a4,s0,0x3
   1f70c:	00e787b3          	add	a5,a5,a4
   1f710:	0007b703          	ld	a4,0(a5)
   1f714:	02070c63          	beqz	a4,1f74c <__sigtramp_r+0x6c>
   1f718:	fff00693          	li	a3,-1
   1f71c:	06d70063          	beq	a4,a3,1f77c <__sigtramp_r+0x9c>
   1f720:	00100693          	li	a3,1
   1f724:	04d70063          	beq	a4,a3,1f764 <__sigtramp_r+0x84>
   1f728:	00040513          	mv	a0,s0
   1f72c:	0007b023          	sd	zero,0(a5)
   1f730:	000700e7          	jalr	a4
   1f734:	00000513          	li	a0,0
   1f738:	01813083          	ld	ra,24(sp)
   1f73c:	01013403          	ld	s0,16(sp)
   1f740:	00813483          	ld	s1,8(sp)
   1f744:	02010113          	add	sp,sp,32
   1f748:	00008067          	ret
   1f74c:	01813083          	ld	ra,24(sp)
   1f750:	01013403          	ld	s0,16(sp)
   1f754:	00813483          	ld	s1,8(sp)
   1f758:	00100513          	li	a0,1
   1f75c:	02010113          	add	sp,sp,32
   1f760:	00008067          	ret
   1f764:	01813083          	ld	ra,24(sp)
   1f768:	01013403          	ld	s0,16(sp)
   1f76c:	00813483          	ld	s1,8(sp)
   1f770:	00300513          	li	a0,3
   1f774:	02010113          	add	sp,sp,32
   1f778:	00008067          	ret
   1f77c:	00200513          	li	a0,2
   1f780:	fb9ff06f          	j	1f738 <__sigtramp_r+0x58>
   1f784:	10000593          	li	a1,256
   1f788:	b18f70ef          	jal	16aa0 <_malloc_r>
   1f78c:	50a4bc23          	sd	a0,1304(s1)
   1f790:	00050793          	mv	a5,a0
   1f794:	00050e63          	beqz	a0,1f7b0 <__sigtramp_r+0xd0>
   1f798:	00050713          	mv	a4,a0
   1f79c:	10050693          	add	a3,a0,256
   1f7a0:	00073023          	sd	zero,0(a4)
   1f7a4:	00870713          	add	a4,a4,8
   1f7a8:	fee69ce3          	bne	a3,a4,1f7a0 <__sigtramp_r+0xc0>
   1f7ac:	f5dff06f          	j	1f708 <__sigtramp_r+0x28>
   1f7b0:	fff00513          	li	a0,-1
   1f7b4:	f85ff06f          	j	1f738 <__sigtramp_r+0x58>
   1f7b8:	fff00513          	li	a0,-1
   1f7bc:	00008067          	ret

000000000001f7c0 <raise>:
   1f7c0:	fe010113          	add	sp,sp,-32
   1f7c4:	00913423          	sd	s1,8(sp)
   1f7c8:	00113c23          	sd	ra,24(sp)
   1f7cc:	00813823          	sd	s0,16(sp)
   1f7d0:	01f00793          	li	a5,31
   1f7d4:	7581b483          	ld	s1,1880(gp) # 24d40 <_impure_ptr>
   1f7d8:	08a7ec63          	bltu	a5,a0,1f870 <raise+0xb0>
   1f7dc:	5184b783          	ld	a5,1304(s1)
   1f7e0:	00050413          	mv	s0,a0
   1f7e4:	04078263          	beqz	a5,1f828 <raise+0x68>
   1f7e8:	00351713          	sll	a4,a0,0x3
   1f7ec:	00e787b3          	add	a5,a5,a4
   1f7f0:	0007b703          	ld	a4,0(a5)
   1f7f4:	02070a63          	beqz	a4,1f828 <raise+0x68>
   1f7f8:	00100693          	li	a3,1
   1f7fc:	00d70a63          	beq	a4,a3,1f810 <raise+0x50>
   1f800:	fff00693          	li	a3,-1
   1f804:	04d70663          	beq	a4,a3,1f850 <raise+0x90>
   1f808:	0007b023          	sd	zero,0(a5)
   1f80c:	000700e7          	jalr	a4
   1f810:	00000513          	li	a0,0
   1f814:	01813083          	ld	ra,24(sp)
   1f818:	01013403          	ld	s0,16(sp)
   1f81c:	00813483          	ld	s1,8(sp)
   1f820:	02010113          	add	sp,sp,32
   1f824:	00008067          	ret
   1f828:	00048513          	mv	a0,s1
   1f82c:	284000ef          	jal	1fab0 <_getpid_r>
   1f830:	00040613          	mv	a2,s0
   1f834:	01013403          	ld	s0,16(sp)
   1f838:	01813083          	ld	ra,24(sp)
   1f83c:	00050593          	mv	a1,a0
   1f840:	00048513          	mv	a0,s1
   1f844:	00813483          	ld	s1,8(sp)
   1f848:	02010113          	add	sp,sp,32
   1f84c:	2000006f          	j	1fa4c <_kill_r>
   1f850:	01813083          	ld	ra,24(sp)
   1f854:	01013403          	ld	s0,16(sp)
   1f858:	01600793          	li	a5,22
   1f85c:	00f4a023          	sw	a5,0(s1)
   1f860:	00100513          	li	a0,1
   1f864:	00813483          	ld	s1,8(sp)
   1f868:	02010113          	add	sp,sp,32
   1f86c:	00008067          	ret
   1f870:	01600793          	li	a5,22
   1f874:	00f4a023          	sw	a5,0(s1)
   1f878:	fff00513          	li	a0,-1
   1f87c:	f99ff06f          	j	1f814 <raise+0x54>

000000000001f880 <signal>:
   1f880:	fe010113          	add	sp,sp,-32
   1f884:	01213023          	sd	s2,0(sp)
   1f888:	00113c23          	sd	ra,24(sp)
   1f88c:	00813823          	sd	s0,16(sp)
   1f890:	00913423          	sd	s1,8(sp)
   1f894:	01f00793          	li	a5,31
   1f898:	7581b903          	ld	s2,1880(gp) # 24d40 <_impure_ptr>
   1f89c:	02a7ee63          	bltu	a5,a0,1f8d8 <signal+0x58>
   1f8a0:	00050413          	mv	s0,a0
   1f8a4:	51893503          	ld	a0,1304(s2)
   1f8a8:	00058493          	mv	s1,a1
   1f8ac:	02050e63          	beqz	a0,1f8e8 <signal+0x68>
   1f8b0:	00341413          	sll	s0,s0,0x3
   1f8b4:	008507b3          	add	a5,a0,s0
   1f8b8:	0007b503          	ld	a0,0(a5)
   1f8bc:	0097b023          	sd	s1,0(a5)
   1f8c0:	01813083          	ld	ra,24(sp)
   1f8c4:	01013403          	ld	s0,16(sp)
   1f8c8:	00813483          	ld	s1,8(sp)
   1f8cc:	00013903          	ld	s2,0(sp)
   1f8d0:	02010113          	add	sp,sp,32
   1f8d4:	00008067          	ret
   1f8d8:	01600793          	li	a5,22
   1f8dc:	00f92023          	sw	a5,0(s2)
   1f8e0:	fff00513          	li	a0,-1
   1f8e4:	fddff06f          	j	1f8c0 <signal+0x40>
   1f8e8:	10000593          	li	a1,256
   1f8ec:	00090513          	mv	a0,s2
   1f8f0:	9b0f70ef          	jal	16aa0 <_malloc_r>
   1f8f4:	50a93c23          	sd	a0,1304(s2)
   1f8f8:	00050793          	mv	a5,a0
   1f8fc:	10050713          	add	a4,a0,256
   1f900:	fe0500e3          	beqz	a0,1f8e0 <signal+0x60>
   1f904:	0007b023          	sd	zero,0(a5)
   1f908:	00878793          	add	a5,a5,8
   1f90c:	fee79ce3          	bne	a5,a4,1f904 <signal+0x84>
   1f910:	fa1ff06f          	j	1f8b0 <signal+0x30>

000000000001f914 <_init_signal>:
   1f914:	ff010113          	add	sp,sp,-16
   1f918:	00813023          	sd	s0,0(sp)
   1f91c:	7581b403          	ld	s0,1880(gp) # 24d40 <_impure_ptr>
   1f920:	00113423          	sd	ra,8(sp)
   1f924:	51843783          	ld	a5,1304(s0)
   1f928:	00078c63          	beqz	a5,1f940 <_init_signal+0x2c>
   1f92c:	00000513          	li	a0,0
   1f930:	00813083          	ld	ra,8(sp)
   1f934:	00013403          	ld	s0,0(sp)
   1f938:	01010113          	add	sp,sp,16
   1f93c:	00008067          	ret
   1f940:	10000593          	li	a1,256
   1f944:	00040513          	mv	a0,s0
   1f948:	958f70ef          	jal	16aa0 <_malloc_r>
   1f94c:	50a43c23          	sd	a0,1304(s0)
   1f950:	00050c63          	beqz	a0,1f968 <_init_signal+0x54>
   1f954:	10050793          	add	a5,a0,256
   1f958:	00053023          	sd	zero,0(a0)
   1f95c:	00850513          	add	a0,a0,8
   1f960:	fef51ce3          	bne	a0,a5,1f958 <_init_signal+0x44>
   1f964:	fc9ff06f          	j	1f92c <_init_signal+0x18>
   1f968:	fff00513          	li	a0,-1
   1f96c:	fc5ff06f          	j	1f930 <_init_signal+0x1c>

000000000001f970 <__sigtramp>:
   1f970:	fe010113          	add	sp,sp,-32
   1f974:	00913423          	sd	s1,8(sp)
   1f978:	00113c23          	sd	ra,24(sp)
   1f97c:	00813823          	sd	s0,16(sp)
   1f980:	01f00793          	li	a5,31
   1f984:	7581b483          	ld	s1,1880(gp) # 24d40 <_impure_ptr>
   1f988:	0aa7ee63          	bltu	a5,a0,1fa44 <__sigtramp+0xd4>
   1f98c:	5184b783          	ld	a5,1304(s1)
   1f990:	00050413          	mv	s0,a0
   1f994:	08078063          	beqz	a5,1fa14 <__sigtramp+0xa4>
   1f998:	00341713          	sll	a4,s0,0x3
   1f99c:	00e787b3          	add	a5,a5,a4
   1f9a0:	0007b703          	ld	a4,0(a5)
   1f9a4:	02070c63          	beqz	a4,1f9dc <__sigtramp+0x6c>
   1f9a8:	fff00693          	li	a3,-1
   1f9ac:	06d70063          	beq	a4,a3,1fa0c <__sigtramp+0x9c>
   1f9b0:	00100693          	li	a3,1
   1f9b4:	04d70063          	beq	a4,a3,1f9f4 <__sigtramp+0x84>
   1f9b8:	00040513          	mv	a0,s0
   1f9bc:	0007b023          	sd	zero,0(a5)
   1f9c0:	000700e7          	jalr	a4
   1f9c4:	00000513          	li	a0,0
   1f9c8:	01813083          	ld	ra,24(sp)
   1f9cc:	01013403          	ld	s0,16(sp)
   1f9d0:	00813483          	ld	s1,8(sp)
   1f9d4:	02010113          	add	sp,sp,32
   1f9d8:	00008067          	ret
   1f9dc:	01813083          	ld	ra,24(sp)
   1f9e0:	01013403          	ld	s0,16(sp)
   1f9e4:	00813483          	ld	s1,8(sp)
   1f9e8:	00100513          	li	a0,1
   1f9ec:	02010113          	add	sp,sp,32
   1f9f0:	00008067          	ret
   1f9f4:	01813083          	ld	ra,24(sp)
   1f9f8:	01013403          	ld	s0,16(sp)
   1f9fc:	00813483          	ld	s1,8(sp)
   1fa00:	00300513          	li	a0,3
   1fa04:	02010113          	add	sp,sp,32
   1fa08:	00008067          	ret
   1fa0c:	00200513          	li	a0,2
   1fa10:	fb9ff06f          	j	1f9c8 <__sigtramp+0x58>
   1fa14:	10000593          	li	a1,256
   1fa18:	00048513          	mv	a0,s1
   1fa1c:	884f70ef          	jal	16aa0 <_malloc_r>
   1fa20:	50a4bc23          	sd	a0,1304(s1)
   1fa24:	00050793          	mv	a5,a0
   1fa28:	00050e63          	beqz	a0,1fa44 <__sigtramp+0xd4>
   1fa2c:	00050713          	mv	a4,a0
   1fa30:	10050693          	add	a3,a0,256
   1fa34:	00073023          	sd	zero,0(a4)
   1fa38:	00870713          	add	a4,a4,8
   1fa3c:	fee69ce3          	bne	a3,a4,1fa34 <__sigtramp+0xc4>
   1fa40:	f59ff06f          	j	1f998 <__sigtramp+0x28>
   1fa44:	fff00513          	li	a0,-1
   1fa48:	f81ff06f          	j	1f9c8 <__sigtramp+0x58>

000000000001fa4c <_kill_r>:
   1fa4c:	fe010113          	add	sp,sp,-32
   1fa50:	00058713          	mv	a4,a1
   1fa54:	00813823          	sd	s0,16(sp)
   1fa58:	00913423          	sd	s1,8(sp)
   1fa5c:	00050413          	mv	s0,a0
   1fa60:	00060593          	mv	a1,a2
   1fa64:	00070513          	mv	a0,a4
   1fa68:	00113c23          	sd	ra,24(sp)
   1fa6c:	7801a823          	sw	zero,1936(gp) # 24d78 <errno>
   1fa70:	164000ef          	jal	1fbd4 <_kill>
   1fa74:	fff00793          	li	a5,-1
   1fa78:	00f50c63          	beq	a0,a5,1fa90 <_kill_r+0x44>
   1fa7c:	01813083          	ld	ra,24(sp)
   1fa80:	01013403          	ld	s0,16(sp)
   1fa84:	00813483          	ld	s1,8(sp)
   1fa88:	02010113          	add	sp,sp,32
   1fa8c:	00008067          	ret
   1fa90:	7901a783          	lw	a5,1936(gp) # 24d78 <errno>
   1fa94:	fe0784e3          	beqz	a5,1fa7c <_kill_r+0x30>
   1fa98:	01813083          	ld	ra,24(sp)
   1fa9c:	00f42023          	sw	a5,0(s0)
   1faa0:	01013403          	ld	s0,16(sp)
   1faa4:	00813483          	ld	s1,8(sp)
   1faa8:	02010113          	add	sp,sp,32
   1faac:	00008067          	ret

000000000001fab0 <_getpid_r>:
   1fab0:	0dc0006f          	j	1fb8c <_getpid>

000000000001fab4 <_close>:
   1fab4:	ff010113          	add	sp,sp,-16
   1fab8:	00113423          	sd	ra,8(sp)
   1fabc:	00813023          	sd	s0,0(sp)
   1fac0:	03900893          	li	a7,57
   1fac4:	00000073          	ecall
   1fac8:	00050413          	mv	s0,a0
   1facc:	00054c63          	bltz	a0,1fae4 <_close+0x30>
   1fad0:	0005051b          	sext.w	a0,a0
   1fad4:	00813083          	ld	ra,8(sp)
   1fad8:	00013403          	ld	s0,0(sp)
   1fadc:	01010113          	add	sp,sp,16
   1fae0:	00008067          	ret
   1fae4:	8d0fd0ef          	jal	1cbb4 <__errno>
   1fae8:	4080043b          	negw	s0,s0
   1faec:	00852023          	sw	s0,0(a0)
   1faf0:	fff00513          	li	a0,-1
   1faf4:	fe1ff06f          	j	1fad4 <_close+0x20>

000000000001faf8 <_exit>:
   1faf8:	05d00893          	li	a7,93
   1fafc:	00000073          	ecall
   1fb00:	00054463          	bltz	a0,1fb08 <_exit+0x10>
   1fb04:	0000006f          	j	1fb04 <_exit+0xc>
   1fb08:	ff010113          	add	sp,sp,-16
   1fb0c:	00813023          	sd	s0,0(sp)
   1fb10:	00050413          	mv	s0,a0
   1fb14:	00113423          	sd	ra,8(sp)
   1fb18:	4080043b          	negw	s0,s0
   1fb1c:	898fd0ef          	jal	1cbb4 <__errno>
   1fb20:	00852023          	sw	s0,0(a0)
   1fb24:	0000006f          	j	1fb24 <_exit+0x2c>

000000000001fb28 <_fstat>:
   1fb28:	f6010113          	add	sp,sp,-160
   1fb2c:	08913423          	sd	s1,136(sp)
   1fb30:	08113c23          	sd	ra,152(sp)
   1fb34:	00058493          	mv	s1,a1
   1fb38:	08813823          	sd	s0,144(sp)
   1fb3c:	05000893          	li	a7,80
   1fb40:	00010593          	mv	a1,sp
   1fb44:	00000073          	ecall
   1fb48:	00050413          	mv	s0,a0
   1fb4c:	02054663          	bltz	a0,1fb78 <_fstat+0x50>
   1fb50:	0005041b          	sext.w	s0,a0
   1fb54:	00048513          	mv	a0,s1
   1fb58:	00010593          	mv	a1,sp
   1fb5c:	1e0000ef          	jal	1fd3c <_conv_stat>
   1fb60:	09813083          	ld	ra,152(sp)
   1fb64:	00040513          	mv	a0,s0
   1fb68:	09013403          	ld	s0,144(sp)
   1fb6c:	08813483          	ld	s1,136(sp)
   1fb70:	0a010113          	add	sp,sp,160
   1fb74:	00008067          	ret
   1fb78:	4080043b          	negw	s0,s0
   1fb7c:	838fd0ef          	jal	1cbb4 <__errno>
   1fb80:	00852023          	sw	s0,0(a0)
   1fb84:	fff00413          	li	s0,-1
   1fb88:	fcdff06f          	j	1fb54 <_fstat+0x2c>

000000000001fb8c <_getpid>:
   1fb8c:	00100513          	li	a0,1
   1fb90:	00008067          	ret

000000000001fb94 <_isatty>:
   1fb94:	f8010113          	add	sp,sp,-128
   1fb98:	00810593          	add	a1,sp,8
   1fb9c:	06113c23          	sd	ra,120(sp)
   1fba0:	f89ff0ef          	jal	1fb28 <_fstat>
   1fba4:	fff00793          	li	a5,-1
   1fba8:	00f50e63          	beq	a0,a5,1fbc4 <_isatty+0x30>
   1fbac:	00c12503          	lw	a0,12(sp)
   1fbb0:	07813083          	ld	ra,120(sp)
   1fbb4:	40d5551b          	sraw	a0,a0,0xd
   1fbb8:	00157513          	and	a0,a0,1
   1fbbc:	08010113          	add	sp,sp,128
   1fbc0:	00008067          	ret
   1fbc4:	07813083          	ld	ra,120(sp)
   1fbc8:	00000513          	li	a0,0
   1fbcc:	08010113          	add	sp,sp,128
   1fbd0:	00008067          	ret

000000000001fbd4 <_kill>:
   1fbd4:	ff010113          	add	sp,sp,-16
   1fbd8:	00113423          	sd	ra,8(sp)
   1fbdc:	fd9fc0ef          	jal	1cbb4 <__errno>
   1fbe0:	00813083          	ld	ra,8(sp)
   1fbe4:	01600793          	li	a5,22
   1fbe8:	00f52023          	sw	a5,0(a0)
   1fbec:	fff00513          	li	a0,-1
   1fbf0:	01010113          	add	sp,sp,16
   1fbf4:	00008067          	ret

000000000001fbf8 <_lseek>:
   1fbf8:	ff010113          	add	sp,sp,-16
   1fbfc:	00113423          	sd	ra,8(sp)
   1fc00:	00813023          	sd	s0,0(sp)
   1fc04:	03e00893          	li	a7,62
   1fc08:	00000073          	ecall
   1fc0c:	00050413          	mv	s0,a0
   1fc10:	00054c63          	bltz	a0,1fc28 <_lseek+0x30>
   1fc14:	00813083          	ld	ra,8(sp)
   1fc18:	00040513          	mv	a0,s0
   1fc1c:	00013403          	ld	s0,0(sp)
   1fc20:	01010113          	add	sp,sp,16
   1fc24:	00008067          	ret
   1fc28:	4080043b          	negw	s0,s0
   1fc2c:	f89fc0ef          	jal	1cbb4 <__errno>
   1fc30:	00852023          	sw	s0,0(a0)
   1fc34:	fff00413          	li	s0,-1
   1fc38:	fddff06f          	j	1fc14 <_lseek+0x1c>

000000000001fc3c <_read>:
   1fc3c:	ff010113          	add	sp,sp,-16
   1fc40:	00113423          	sd	ra,8(sp)
   1fc44:	00813023          	sd	s0,0(sp)
   1fc48:	03f00893          	li	a7,63
   1fc4c:	00000073          	ecall
   1fc50:	00050413          	mv	s0,a0
   1fc54:	00054c63          	bltz	a0,1fc6c <_read+0x30>
   1fc58:	00813083          	ld	ra,8(sp)
   1fc5c:	00040513          	mv	a0,s0
   1fc60:	00013403          	ld	s0,0(sp)
   1fc64:	01010113          	add	sp,sp,16
   1fc68:	00008067          	ret
   1fc6c:	4080043b          	negw	s0,s0
   1fc70:	f45fc0ef          	jal	1cbb4 <__errno>
   1fc74:	00852023          	sw	s0,0(a0)
   1fc78:	fff00413          	li	s0,-1
   1fc7c:	fddff06f          	j	1fc58 <_read+0x1c>

000000000001fc80 <_sbrk>:
   1fc80:	7981b703          	ld	a4,1944(gp) # 24d80 <heap_end.0>
   1fc84:	ff010113          	add	sp,sp,-16
   1fc88:	00113423          	sd	ra,8(sp)
   1fc8c:	00050793          	mv	a5,a0
   1fc90:	02071063          	bnez	a4,1fcb0 <_sbrk+0x30>
   1fc94:	0d600893          	li	a7,214
   1fc98:	00000513          	li	a0,0
   1fc9c:	00000073          	ecall
   1fca0:	fff00613          	li	a2,-1
   1fca4:	00050713          	mv	a4,a0
   1fca8:	02c50a63          	beq	a0,a2,1fcdc <_sbrk+0x5c>
   1fcac:	78a1bc23          	sd	a0,1944(gp) # 24d80 <heap_end.0>
   1fcb0:	0d600893          	li	a7,214
   1fcb4:	00e78533          	add	a0,a5,a4
   1fcb8:	00000073          	ecall
   1fcbc:	7981b703          	ld	a4,1944(gp) # 24d80 <heap_end.0>
   1fcc0:	00e787b3          	add	a5,a5,a4
   1fcc4:	00f51c63          	bne	a0,a5,1fcdc <_sbrk+0x5c>
   1fcc8:	00813083          	ld	ra,8(sp)
   1fccc:	78a1bc23          	sd	a0,1944(gp) # 24d80 <heap_end.0>
   1fcd0:	00070513          	mv	a0,a4
   1fcd4:	01010113          	add	sp,sp,16
   1fcd8:	00008067          	ret
   1fcdc:	ed9fc0ef          	jal	1cbb4 <__errno>
   1fce0:	00813083          	ld	ra,8(sp)
   1fce4:	00c00793          	li	a5,12
   1fce8:	00f52023          	sw	a5,0(a0)
   1fcec:	fff00513          	li	a0,-1
   1fcf0:	01010113          	add	sp,sp,16
   1fcf4:	00008067          	ret

000000000001fcf8 <_write>:
   1fcf8:	ff010113          	add	sp,sp,-16
   1fcfc:	00113423          	sd	ra,8(sp)
   1fd00:	00813023          	sd	s0,0(sp)
   1fd04:	04000893          	li	a7,64
   1fd08:	00000073          	ecall
   1fd0c:	00050413          	mv	s0,a0
   1fd10:	00054c63          	bltz	a0,1fd28 <_write+0x30>
   1fd14:	00813083          	ld	ra,8(sp)
   1fd18:	00040513          	mv	a0,s0
   1fd1c:	00013403          	ld	s0,0(sp)
   1fd20:	01010113          	add	sp,sp,16
   1fd24:	00008067          	ret
   1fd28:	4080043b          	negw	s0,s0
   1fd2c:	e89fc0ef          	jal	1cbb4 <__errno>
   1fd30:	00852023          	sw	s0,0(a0)
   1fd34:	fff00413          	li	s0,-1
   1fd38:	fddff06f          	j	1fd14 <_write+0x1c>

000000000001fd3c <_conv_stat>:
   1fd3c:	0185d703          	lhu	a4,24(a1)
   1fd40:	0145d783          	lhu	a5,20(a1)
   1fd44:	01c5a603          	lw	a2,28(a1)
   1fd48:	0205b683          	ld	a3,32(a1)
   1fd4c:	0005b303          	ld	t1,0(a1)
   1fd50:	0085b883          	ld	a7,8(a1)
   1fd54:	0105a803          	lw	a6,16(a1)
   1fd58:	0107171b          	sllw	a4,a4,0x10
   1fd5c:	00e7e7b3          	or	a5,a5,a4
   1fd60:	00c51623          	sh	a2,12(a0)
   1fd64:	00d51723          	sh	a3,14(a0)
   1fd68:	00651023          	sh	t1,0(a0)
   1fd6c:	01151123          	sh	a7,2(a0)
   1fd70:	01052223          	sw	a6,4(a0)
   1fd74:	00f52423          	sw	a5,8(a0)
   1fd78:	0305b703          	ld	a4,48(a1)
   1fd7c:	0485b783          	ld	a5,72(a1)
   1fd80:	0405b603          	ld	a2,64(a1)
   1fd84:	0385a683          	lw	a3,56(a1)
   1fd88:	00e53823          	sd	a4,16(a0)
   1fd8c:	00f53c23          	sd	a5,24(a0)
   1fd90:	0585b703          	ld	a4,88(a1)
   1fd94:	0685b783          	ld	a5,104(a1)
   1fd98:	04c53823          	sd	a2,80(a0)
   1fd9c:	04d53423          	sd	a3,72(a0)
   1fda0:	02e53423          	sd	a4,40(a0)
   1fda4:	02f53c23          	sd	a5,56(a0)
   1fda8:	00008067          	ret

000000000001fdac <__divdf3>:
   1fdac:	fb010113          	add	sp,sp,-80
   1fdb0:	02913c23          	sd	s1,56(sp)
   1fdb4:	03455493          	srl	s1,a0,0x34
   1fdb8:	03313423          	sd	s3,40(sp)
   1fdbc:	01513c23          	sd	s5,24(sp)
   1fdc0:	01613823          	sd	s6,16(sp)
   1fdc4:	00c51a93          	sll	s5,a0,0xc
   1fdc8:	04113423          	sd	ra,72(sp)
   1fdcc:	04813023          	sd	s0,64(sp)
   1fdd0:	03213823          	sd	s2,48(sp)
   1fdd4:	03413023          	sd	s4,32(sp)
   1fdd8:	01713423          	sd	s7,8(sp)
   1fddc:	01813023          	sd	s8,0(sp)
   1fde0:	7ff4f493          	and	s1,s1,2047
   1fde4:	00058b13          	mv	s6,a1
   1fde8:	00cada93          	srl	s5,s5,0xc
   1fdec:	03f55993          	srl	s3,a0,0x3f
   1fdf0:	08048863          	beqz	s1,1fe80 <__divdf3+0xd4>
   1fdf4:	7ff00793          	li	a5,2047
   1fdf8:	0af48663          	beq	s1,a5,1fea4 <__divdf3+0xf8>
   1fdfc:	00100793          	li	a5,1
   1fe00:	003a9a93          	sll	s5,s5,0x3
   1fe04:	03779793          	sll	a5,a5,0x37
   1fe08:	00faeab3          	or	s5,s5,a5
   1fe0c:	c0148493          	add	s1,s1,-1023
   1fe10:	00000b93          	li	s7,0
   1fe14:	034b5793          	srl	a5,s6,0x34
   1fe18:	00cb1413          	sll	s0,s6,0xc
   1fe1c:	7ff7f793          	and	a5,a5,2047
   1fe20:	00c45413          	srl	s0,s0,0xc
   1fe24:	03fb5b13          	srl	s6,s6,0x3f
   1fe28:	08078e63          	beqz	a5,1fec4 <__divdf3+0x118>
   1fe2c:	7ff00713          	li	a4,2047
   1fe30:	0ae78c63          	beq	a5,a4,1fee8 <__divdf3+0x13c>
   1fe34:	00100713          	li	a4,1
   1fe38:	00341413          	sll	s0,s0,0x3
   1fe3c:	03771713          	sll	a4,a4,0x37
   1fe40:	00e46433          	or	s0,s0,a4
   1fe44:	c0178793          	add	a5,a5,-1023
   1fe48:	00000713          	li	a4,0
   1fe4c:	40f48a33          	sub	s4,s1,a5
   1fe50:	002b9793          	sll	a5,s7,0x2
   1fe54:	00e7e7b3          	or	a5,a5,a4
   1fe58:	fff78793          	add	a5,a5,-1
   1fe5c:	00e00693          	li	a3,14
   1fe60:	0169c933          	xor	s2,s3,s6
   1fe64:	0cf6ea63          	bltu	a3,a5,1ff38 <__divdf3+0x18c>
   1fe68:	000236b7          	lui	a3,0x23
   1fe6c:	00279793          	sll	a5,a5,0x2
   1fe70:	aa068693          	add	a3,a3,-1376 # 22aa0 <blanks.1+0x10>
   1fe74:	00d787b3          	add	a5,a5,a3
   1fe78:	0007a783          	lw	a5,0(a5)
   1fe7c:	00078067          	jr	a5
   1fe80:	020a8c63          	beqz	s5,1feb8 <__divdf3+0x10c>
   1fe84:	000a8513          	mv	a0,s5
   1fe88:	5d9010ef          	jal	21c60 <__clzdi2>
   1fe8c:	0005079b          	sext.w	a5,a0
   1fe90:	c0d00493          	li	s1,-1011
   1fe94:	ff85051b          	addw	a0,a0,-8
   1fe98:	00aa9ab3          	sll	s5,s5,a0
   1fe9c:	40f484b3          	sub	s1,s1,a5
   1fea0:	f71ff06f          	j	1fe10 <__divdf3+0x64>
   1fea4:	7ff00493          	li	s1,2047
   1fea8:	00300b93          	li	s7,3
   1feac:	f60a94e3          	bnez	s5,1fe14 <__divdf3+0x68>
   1feb0:	00200b93          	li	s7,2
   1feb4:	f61ff06f          	j	1fe14 <__divdf3+0x68>
   1feb8:	00000493          	li	s1,0
   1febc:	00100b93          	li	s7,1
   1fec0:	f55ff06f          	j	1fe14 <__divdf3+0x68>
   1fec4:	02040c63          	beqz	s0,1fefc <__divdf3+0x150>
   1fec8:	00040513          	mv	a0,s0
   1fecc:	595010ef          	jal	21c60 <__clzdi2>
   1fed0:	0005071b          	sext.w	a4,a0
   1fed4:	c0d00793          	li	a5,-1011
   1fed8:	ff85051b          	addw	a0,a0,-8
   1fedc:	00a41433          	sll	s0,s0,a0
   1fee0:	40e787b3          	sub	a5,a5,a4
   1fee4:	f65ff06f          	j	1fe48 <__divdf3+0x9c>
   1fee8:	7ff00793          	li	a5,2047
   1feec:	00300713          	li	a4,3
   1fef0:	f4041ee3          	bnez	s0,1fe4c <__divdf3+0xa0>
   1fef4:	00200713          	li	a4,2
   1fef8:	f55ff06f          	j	1fe4c <__divdf3+0xa0>
   1fefc:	00000793          	li	a5,0
   1ff00:	00100713          	li	a4,1
   1ff04:	f49ff06f          	j	1fe4c <__divdf3+0xa0>
   1ff08:	00098913          	mv	s2,s3
   1ff0c:	000a8413          	mv	s0,s5
   1ff10:	000b8713          	mv	a4,s7
   1ff14:	00200793          	li	a5,2
   1ff18:	22f70663          	beq	a4,a5,20144 <__divdf3+0x398>
   1ff1c:	00300793          	li	a5,3
   1ff20:	20f70863          	beq	a4,a5,20130 <__divdf3+0x384>
   1ff24:	00100793          	li	a5,1
   1ff28:	0ef71c63          	bne	a4,a5,20020 <__divdf3+0x274>
   1ff2c:	00000793          	li	a5,0
   1ff30:	00000513          	li	a0,0
   1ff34:	1380006f          	j	2006c <__divdf3+0x2c0>
   1ff38:	00841c13          	sll	s8,s0,0x8
   1ff3c:	168afc63          	bgeu	s5,s0,200b4 <__divdf3+0x308>
   1ff40:	fffa0a13          	add	s4,s4,-1
   1ff44:	00000413          	li	s0,0
   1ff48:	020c5b13          	srl	s6,s8,0x20
   1ff4c:	fff00993          	li	s3,-1
   1ff50:	000b0593          	mv	a1,s6
   1ff54:	0209d993          	srl	s3,s3,0x20
   1ff58:	000a8513          	mv	a0,s5
   1ff5c:	44d010ef          	jal	21ba8 <__hidden___udivdi3>
   1ff60:	013c79b3          	and	s3,s8,s3
   1ff64:	00050593          	mv	a1,a0
   1ff68:	00050b93          	mv	s7,a0
   1ff6c:	00098513          	mv	a0,s3
   1ff70:	3cd010ef          	jal	21b3c <__muldi3>
   1ff74:	00050493          	mv	s1,a0
   1ff78:	000b0593          	mv	a1,s6
   1ff7c:	000a8513          	mv	a0,s5
   1ff80:	471010ef          	jal	21bf0 <__umoddi3>
   1ff84:	02045793          	srl	a5,s0,0x20
   1ff88:	02051513          	sll	a0,a0,0x20
   1ff8c:	00a7e7b3          	or	a5,a5,a0
   1ff90:	000b8413          	mv	s0,s7
   1ff94:	0097fe63          	bgeu	a5,s1,1ffb0 <__divdf3+0x204>
   1ff98:	00fc07b3          	add	a5,s8,a5
   1ff9c:	fffb8413          	add	s0,s7,-1
   1ffa0:	0187e863          	bltu	a5,s8,1ffb0 <__divdf3+0x204>
   1ffa4:	0097f663          	bgeu	a5,s1,1ffb0 <__divdf3+0x204>
   1ffa8:	ffeb8413          	add	s0,s7,-2
   1ffac:	018787b3          	add	a5,a5,s8
   1ffb0:	409784b3          	sub	s1,a5,s1
   1ffb4:	000b0593          	mv	a1,s6
   1ffb8:	00048513          	mv	a0,s1
   1ffbc:	3ed010ef          	jal	21ba8 <__hidden___udivdi3>
   1ffc0:	00050593          	mv	a1,a0
   1ffc4:	00050a93          	mv	s5,a0
   1ffc8:	00098513          	mv	a0,s3
   1ffcc:	371010ef          	jal	21b3c <__muldi3>
   1ffd0:	00050993          	mv	s3,a0
   1ffd4:	000b0593          	mv	a1,s6
   1ffd8:	00048513          	mv	a0,s1
   1ffdc:	415010ef          	jal	21bf0 <__umoddi3>
   1ffe0:	02051793          	sll	a5,a0,0x20
   1ffe4:	000a8713          	mv	a4,s5
   1ffe8:	0337f263          	bgeu	a5,s3,2000c <__divdf3+0x260>
   1ffec:	018786b3          	add	a3,a5,s8
   1fff0:	00f6b633          	sltu	a2,a3,a5
   1fff4:	fffa8713          	add	a4,s5,-1
   1fff8:	00068793          	mv	a5,a3
   1fffc:	00061863          	bnez	a2,2000c <__divdf3+0x260>
   20000:	0136f663          	bgeu	a3,s3,2000c <__divdf3+0x260>
   20004:	ffea8713          	add	a4,s5,-2
   20008:	018687b3          	add	a5,a3,s8
   2000c:	02041413          	sll	s0,s0,0x20
   20010:	413787b3          	sub	a5,a5,s3
   20014:	00e46433          	or	s0,s0,a4
   20018:	00f037b3          	snez	a5,a5
   2001c:	00f46433          	or	s0,s0,a5
   20020:	3ffa0513          	add	a0,s4,1023
   20024:	0aa05263          	blez	a0,200c8 <__divdf3+0x31c>
   20028:	00747793          	and	a5,s0,7
   2002c:	00078a63          	beqz	a5,20040 <__divdf3+0x294>
   20030:	00f47793          	and	a5,s0,15
   20034:	00400713          	li	a4,4
   20038:	00e78463          	beq	a5,a4,20040 <__divdf3+0x294>
   2003c:	00440413          	add	s0,s0,4
   20040:	03845793          	srl	a5,s0,0x38
   20044:	0017f793          	and	a5,a5,1
   20048:	00078c63          	beqz	a5,20060 <__divdf3+0x2b4>
   2004c:	fff00793          	li	a5,-1
   20050:	03879793          	sll	a5,a5,0x38
   20054:	fff78793          	add	a5,a5,-1
   20058:	00f47433          	and	s0,s0,a5
   2005c:	400a0513          	add	a0,s4,1024
   20060:	7fe00793          	li	a5,2046
   20064:	0ea7c063          	blt	a5,a0,20144 <__divdf3+0x398>
   20068:	00345793          	srl	a5,s0,0x3
   2006c:	04813083          	ld	ra,72(sp)
   20070:	04013403          	ld	s0,64(sp)
   20074:	00c79793          	sll	a5,a5,0xc
   20078:	03451513          	sll	a0,a0,0x34
   2007c:	00c7d793          	srl	a5,a5,0xc
   20080:	03f91913          	sll	s2,s2,0x3f
   20084:	00f56533          	or	a0,a0,a5
   20088:	03813483          	ld	s1,56(sp)
   2008c:	02813983          	ld	s3,40(sp)
   20090:	02013a03          	ld	s4,32(sp)
   20094:	01813a83          	ld	s5,24(sp)
   20098:	01013b03          	ld	s6,16(sp)
   2009c:	00813b83          	ld	s7,8(sp)
   200a0:	00013c03          	ld	s8,0(sp)
   200a4:	01256533          	or	a0,a0,s2
   200a8:	03013903          	ld	s2,48(sp)
   200ac:	05010113          	add	sp,sp,80
   200b0:	00008067          	ret
   200b4:	03fa9413          	sll	s0,s5,0x3f
   200b8:	001ada93          	srl	s5,s5,0x1
   200bc:	e8dff06f          	j	1ff48 <__divdf3+0x19c>
   200c0:	000b0913          	mv	s2,s6
   200c4:	e51ff06f          	j	1ff14 <__divdf3+0x168>
   200c8:	00100713          	li	a4,1
   200cc:	00050c63          	beqz	a0,200e4 <__divdf3+0x338>
   200d0:	40a70733          	sub	a4,a4,a0
   200d4:	03800693          	li	a3,56
   200d8:	00000793          	li	a5,0
   200dc:	00000513          	li	a0,0
   200e0:	f8e6c6e3          	blt	a3,a4,2006c <__divdf3+0x2c0>
   200e4:	04000693          	li	a3,64
   200e8:	00e457b3          	srl	a5,s0,a4
   200ec:	40e6873b          	subw	a4,a3,a4
   200f0:	00e41433          	sll	s0,s0,a4
   200f4:	00803433          	snez	s0,s0
   200f8:	0087e7b3          	or	a5,a5,s0
   200fc:	0077f713          	and	a4,a5,7
   20100:	00070a63          	beqz	a4,20114 <__divdf3+0x368>
   20104:	00f7f713          	and	a4,a5,15
   20108:	00400693          	li	a3,4
   2010c:	00d70463          	beq	a4,a3,20114 <__divdf3+0x368>
   20110:	00478793          	add	a5,a5,4
   20114:	0377d713          	srl	a4,a5,0x37
   20118:	00177713          	and	a4,a4,1
   2011c:	0037d793          	srl	a5,a5,0x3
   20120:	e00708e3          	beqz	a4,1ff30 <__divdf3+0x184>
   20124:	00000793          	li	a5,0
   20128:	00100513          	li	a0,1
   2012c:	f41ff06f          	j	2006c <__divdf3+0x2c0>
   20130:	00100793          	li	a5,1
   20134:	03379793          	sll	a5,a5,0x33
   20138:	7ff00513          	li	a0,2047
   2013c:	00000913          	li	s2,0
   20140:	f2dff06f          	j	2006c <__divdf3+0x2c0>
   20144:	00000793          	li	a5,0
   20148:	7ff00513          	li	a0,2047
   2014c:	f21ff06f          	j	2006c <__divdf3+0x2c0>

0000000000020150 <__muldf3>:
   20150:	fc010113          	add	sp,sp,-64
   20154:	03213023          	sd	s2,32(sp)
   20158:	03455913          	srl	s2,a0,0x34
   2015c:	02913423          	sd	s1,40(sp)
   20160:	01313c23          	sd	s3,24(sp)
   20164:	01513423          	sd	s5,8(sp)
   20168:	00c51493          	sll	s1,a0,0xc
   2016c:	02113c23          	sd	ra,56(sp)
   20170:	02813823          	sd	s0,48(sp)
   20174:	01413823          	sd	s4,16(sp)
   20178:	7ff97913          	and	s2,s2,2047
   2017c:	00058a93          	mv	s5,a1
   20180:	00c4d493          	srl	s1,s1,0xc
   20184:	03f55993          	srl	s3,a0,0x3f
   20188:	1c090c63          	beqz	s2,20360 <__muldf3+0x210>
   2018c:	7ff00793          	li	a5,2047
   20190:	1ef90a63          	beq	s2,a5,20384 <__muldf3+0x234>
   20194:	00100793          	li	a5,1
   20198:	00349493          	sll	s1,s1,0x3
   2019c:	03779793          	sll	a5,a5,0x37
   201a0:	00f4e4b3          	or	s1,s1,a5
   201a4:	c0190913          	add	s2,s2,-1023
   201a8:	00000a13          	li	s4,0
   201ac:	034ad793          	srl	a5,s5,0x34
   201b0:	00ca9413          	sll	s0,s5,0xc
   201b4:	7ff7f793          	and	a5,a5,2047
   201b8:	00c45413          	srl	s0,s0,0xc
   201bc:	03fada93          	srl	s5,s5,0x3f
   201c0:	1e078263          	beqz	a5,203a4 <__muldf3+0x254>
   201c4:	7ff00713          	li	a4,2047
   201c8:	20e78063          	beq	a5,a4,203c8 <__muldf3+0x278>
   201cc:	00100713          	li	a4,1
   201d0:	00341413          	sll	s0,s0,0x3
   201d4:	03771713          	sll	a4,a4,0x37
   201d8:	00e46433          	or	s0,s0,a4
   201dc:	c0178793          	add	a5,a5,-1023
   201e0:	00000693          	li	a3,0
   201e4:	002a1713          	sll	a4,s4,0x2
   201e8:	00f90933          	add	s2,s2,a5
   201ec:	00d76733          	or	a4,a4,a3
   201f0:	00a00793          	li	a5,10
   201f4:	0159c833          	xor	a6,s3,s5
   201f8:	00190893          	add	a7,s2,1
   201fc:	22e7ca63          	blt	a5,a4,20430 <__muldf3+0x2e0>
   20200:	00200793          	li	a5,2
   20204:	1ee7c263          	blt	a5,a4,203e8 <__muldf3+0x298>
   20208:	fff70713          	add	a4,a4,-1
   2020c:	00100793          	li	a5,1
   20210:	1ee7fe63          	bgeu	a5,a4,2040c <__muldf3+0x2bc>
   20214:	fff00793          	li	a5,-1
   20218:	0207d793          	srl	a5,a5,0x20
   2021c:	0204df13          	srl	t5,s1,0x20
   20220:	00f4f4b3          	and	s1,s1,a5
   20224:	00f477b3          	and	a5,s0,a5
   20228:	02045e93          	srl	t4,s0,0x20
   2022c:	00048513          	mv	a0,s1
   20230:	00078593          	mv	a1,a5
   20234:	109010ef          	jal	21b3c <__muldi3>
   20238:	00050313          	mv	t1,a0
   2023c:	000e8593          	mv	a1,t4
   20240:	00048513          	mv	a0,s1
   20244:	0f9010ef          	jal	21b3c <__muldi3>
   20248:	00050713          	mv	a4,a0
   2024c:	00078593          	mv	a1,a5
   20250:	000f0513          	mv	a0,t5
   20254:	0e9010ef          	jal	21b3c <__muldi3>
   20258:	00050e13          	mv	t3,a0
   2025c:	000e8593          	mv	a1,t4
   20260:	000f0513          	mv	a0,t5
   20264:	0d9010ef          	jal	21b3c <__muldi3>
   20268:	02035793          	srl	a5,t1,0x20
   2026c:	01c70733          	add	a4,a4,t3
   20270:	00e787b3          	add	a5,a5,a4
   20274:	00050693          	mv	a3,a0
   20278:	01c7f863          	bgeu	a5,t3,20288 <__muldf3+0x138>
   2027c:	00100713          	li	a4,1
   20280:	02071713          	sll	a4,a4,0x20
   20284:	00e506b3          	add	a3,a0,a4
   20288:	fff00613          	li	a2,-1
   2028c:	02065613          	srl	a2,a2,0x20
   20290:	00c7f733          	and	a4,a5,a2
   20294:	02071713          	sll	a4,a4,0x20
   20298:	00c37333          	and	t1,t1,a2
   2029c:	00670733          	add	a4,a4,t1
   202a0:	00971413          	sll	s0,a4,0x9
   202a4:	0207d793          	srl	a5,a5,0x20
   202a8:	00803433          	snez	s0,s0
   202ac:	03775713          	srl	a4,a4,0x37
   202b0:	00d787b3          	add	a5,a5,a3
   202b4:	00979793          	sll	a5,a5,0x9
   202b8:	00e46433          	or	s0,s0,a4
   202bc:	0087e433          	or	s0,a5,s0
   202c0:	0387d793          	srl	a5,a5,0x38
   202c4:	0017f793          	and	a5,a5,1
   202c8:	18078463          	beqz	a5,20450 <__muldf3+0x300>
   202cc:	00145793          	srl	a5,s0,0x1
   202d0:	00147413          	and	s0,s0,1
   202d4:	0087e433          	or	s0,a5,s0
   202d8:	3ff88513          	add	a0,a7,1023
   202dc:	16a05e63          	blez	a0,20458 <__muldf3+0x308>
   202e0:	00747793          	and	a5,s0,7
   202e4:	00078a63          	beqz	a5,202f8 <__muldf3+0x1a8>
   202e8:	00f47793          	and	a5,s0,15
   202ec:	00400713          	li	a4,4
   202f0:	00e78463          	beq	a5,a4,202f8 <__muldf3+0x1a8>
   202f4:	00440413          	add	s0,s0,4
   202f8:	03845793          	srl	a5,s0,0x38
   202fc:	0017f793          	and	a5,a5,1
   20300:	00078c63          	beqz	a5,20318 <__muldf3+0x1c8>
   20304:	fff00793          	li	a5,-1
   20308:	03879793          	sll	a5,a5,0x38
   2030c:	fff78793          	add	a5,a5,-1
   20310:	00f47433          	and	s0,s0,a5
   20314:	40088513          	add	a0,a7,1024
   20318:	7fe00793          	li	a5,2046
   2031c:	1aa7cc63          	blt	a5,a0,204d4 <__muldf3+0x384>
   20320:	00345793          	srl	a5,s0,0x3
   20324:	03813083          	ld	ra,56(sp)
   20328:	03013403          	ld	s0,48(sp)
   2032c:	00c79793          	sll	a5,a5,0xc
   20330:	03451513          	sll	a0,a0,0x34
   20334:	00c7d793          	srl	a5,a5,0xc
   20338:	00f56533          	or	a0,a0,a5
   2033c:	03f81813          	sll	a6,a6,0x3f
   20340:	02813483          	ld	s1,40(sp)
   20344:	02013903          	ld	s2,32(sp)
   20348:	01813983          	ld	s3,24(sp)
   2034c:	01013a03          	ld	s4,16(sp)
   20350:	00813a83          	ld	s5,8(sp)
   20354:	01056533          	or	a0,a0,a6
   20358:	04010113          	add	sp,sp,64
   2035c:	00008067          	ret
   20360:	02048c63          	beqz	s1,20398 <__muldf3+0x248>
   20364:	00048513          	mv	a0,s1
   20368:	0f9010ef          	jal	21c60 <__clzdi2>
   2036c:	0005079b          	sext.w	a5,a0
   20370:	c0d00913          	li	s2,-1011
   20374:	ff85051b          	addw	a0,a0,-8
   20378:	00a494b3          	sll	s1,s1,a0
   2037c:	40f90933          	sub	s2,s2,a5
   20380:	e29ff06f          	j	201a8 <__muldf3+0x58>
   20384:	7ff00913          	li	s2,2047
   20388:	00300a13          	li	s4,3
   2038c:	e20490e3          	bnez	s1,201ac <__muldf3+0x5c>
   20390:	00200a13          	li	s4,2
   20394:	e19ff06f          	j	201ac <__muldf3+0x5c>
   20398:	00000913          	li	s2,0
   2039c:	00100a13          	li	s4,1
   203a0:	e0dff06f          	j	201ac <__muldf3+0x5c>
   203a4:	02040c63          	beqz	s0,203dc <__muldf3+0x28c>
   203a8:	00040513          	mv	a0,s0
   203ac:	0b5010ef          	jal	21c60 <__clzdi2>
   203b0:	0005071b          	sext.w	a4,a0
   203b4:	c0d00793          	li	a5,-1011
   203b8:	ff85051b          	addw	a0,a0,-8
   203bc:	00a41433          	sll	s0,s0,a0
   203c0:	40e787b3          	sub	a5,a5,a4
   203c4:	e1dff06f          	j	201e0 <__muldf3+0x90>
   203c8:	7ff00793          	li	a5,2047
   203cc:	00300693          	li	a3,3
   203d0:	e0041ae3          	bnez	s0,201e4 <__muldf3+0x94>
   203d4:	00200693          	li	a3,2
   203d8:	e0dff06f          	j	201e4 <__muldf3+0x94>
   203dc:	00000793          	li	a5,0
   203e0:	00100693          	li	a3,1
   203e4:	e01ff06f          	j	201e4 <__muldf3+0x94>
   203e8:	00100793          	li	a5,1
   203ec:	00e79733          	sll	a4,a5,a4
   203f0:	53077613          	and	a2,a4,1328
   203f4:	04061863          	bnez	a2,20444 <__muldf3+0x2f4>
   203f8:	24077613          	and	a2,a4,576
   203fc:	0c061463          	bnez	a2,204c4 <__muldf3+0x374>
   20400:	08877713          	and	a4,a4,136
   20404:	e00708e3          	beqz	a4,20214 <__muldf3+0xc4>
   20408:	000a8813          	mv	a6,s5
   2040c:	00200793          	li	a5,2
   20410:	0cf68263          	beq	a3,a5,204d4 <__muldf3+0x384>
   20414:	00300793          	li	a5,3
   20418:	0af68463          	beq	a3,a5,204c0 <__muldf3+0x370>
   2041c:	00100793          	li	a5,1
   20420:	eaf69ce3          	bne	a3,a5,202d8 <__muldf3+0x188>
   20424:	00000793          	li	a5,0
   20428:	00000513          	li	a0,0
   2042c:	ef9ff06f          	j	20324 <__muldf3+0x1d4>
   20430:	00f00793          	li	a5,15
   20434:	08f70663          	beq	a4,a5,204c0 <__muldf3+0x370>
   20438:	00b00793          	li	a5,11
   2043c:	00098813          	mv	a6,s3
   20440:	fcf704e3          	beq	a4,a5,20408 <__muldf3+0x2b8>
   20444:	00048413          	mv	s0,s1
   20448:	000a0693          	mv	a3,s4
   2044c:	fc1ff06f          	j	2040c <__muldf3+0x2bc>
   20450:	00090893          	mv	a7,s2
   20454:	e85ff06f          	j	202d8 <__muldf3+0x188>
   20458:	00100713          	li	a4,1
   2045c:	00050c63          	beqz	a0,20474 <__muldf3+0x324>
   20460:	40a70733          	sub	a4,a4,a0
   20464:	03800693          	li	a3,56
   20468:	00000793          	li	a5,0
   2046c:	00000513          	li	a0,0
   20470:	eae6cae3          	blt	a3,a4,20324 <__muldf3+0x1d4>
   20474:	04000693          	li	a3,64
   20478:	00e457b3          	srl	a5,s0,a4
   2047c:	40e6873b          	subw	a4,a3,a4
   20480:	00e41433          	sll	s0,s0,a4
   20484:	00803433          	snez	s0,s0
   20488:	0087e7b3          	or	a5,a5,s0
   2048c:	0077f713          	and	a4,a5,7
   20490:	00070a63          	beqz	a4,204a4 <__muldf3+0x354>
   20494:	00f7f713          	and	a4,a5,15
   20498:	00400693          	li	a3,4
   2049c:	00d70463          	beq	a4,a3,204a4 <__muldf3+0x354>
   204a0:	00478793          	add	a5,a5,4
   204a4:	0377d713          	srl	a4,a5,0x37
   204a8:	00177713          	and	a4,a4,1
   204ac:	0037d793          	srl	a5,a5,0x3
   204b0:	f6070ce3          	beqz	a4,20428 <__muldf3+0x2d8>
   204b4:	00000793          	li	a5,0
   204b8:	00100513          	li	a0,1
   204bc:	e69ff06f          	j	20324 <__muldf3+0x1d4>
   204c0:	00100793          	li	a5,1
   204c4:	03379793          	sll	a5,a5,0x33
   204c8:	7ff00513          	li	a0,2047
   204cc:	00000813          	li	a6,0
   204d0:	e55ff06f          	j	20324 <__muldf3+0x1d4>
   204d4:	00000793          	li	a5,0
   204d8:	7ff00513          	li	a0,2047
   204dc:	e49ff06f          	j	20324 <__muldf3+0x1d4>

00000000000204e0 <__eqtf2>:
   204e0:	00008837          	lui	a6,0x8
   204e4:	0305d893          	srl	a7,a1,0x30
   204e8:	fff80813          	add	a6,a6,-1 # 7fff <exit-0x80e9>
   204ec:	fff00793          	li	a5,-1
   204f0:	0107d793          	srl	a5,a5,0x10
   204f4:	0306d313          	srl	t1,a3,0x30
   204f8:	0108f8b3          	and	a7,a7,a6
   204fc:	00f5f733          	and	a4,a1,a5
   20500:	01037333          	and	t1,t1,a6
   20504:	00f6f7b3          	and	a5,a3,a5
   20508:	03f5d593          	srl	a1,a1,0x3f
   2050c:	03f6d693          	srl	a3,a3,0x3f
   20510:	01088e63          	beq	a7,a6,2052c <__eqtf2+0x4c>
   20514:	05031263          	bne	t1,a6,20558 <__eqtf2+0x78>
   20518:	00c7e7b3          	or	a5,a5,a2
   2051c:	00100513          	li	a0,1
   20520:	00100813          	li	a6,1
   20524:	02078663          	beqz	a5,20550 <__eqtf2+0x70>
   20528:	00008067          	ret
   2052c:	00a76733          	or	a4,a4,a0
   20530:	00100513          	li	a0,1
   20534:	fe071ae3          	bnez	a4,20528 <__eqtf2+0x48>
   20538:	00100813          	li	a6,1
   2053c:	01131a63          	bne	t1,a7,20550 <__eqtf2+0x70>
   20540:	00c7e7b3          	or	a5,a5,a2
   20544:	fe0792e3          	bnez	a5,20528 <__eqtf2+0x48>
   20548:	40d585b3          	sub	a1,a1,a3
   2054c:	00b03833          	snez	a6,a1
   20550:	00080513          	mv	a0,a6
   20554:	fd5ff06f          	j	20528 <__eqtf2+0x48>
   20558:	00100813          	li	a6,1
   2055c:	fe689ae3          	bne	a7,t1,20550 <__eqtf2+0x70>
   20560:	fef718e3          	bne	a4,a5,20550 <__eqtf2+0x70>
   20564:	fec516e3          	bne	a0,a2,20550 <__eqtf2+0x70>
   20568:	00d58a63          	beq	a1,a3,2057c <__eqtf2+0x9c>
   2056c:	fe0892e3          	bnez	a7,20550 <__eqtf2+0x70>
   20570:	00a76733          	or	a4,a4,a0
   20574:	00e03833          	snez	a6,a4
   20578:	fd9ff06f          	j	20550 <__eqtf2+0x70>
   2057c:	00000813          	li	a6,0
   20580:	fd1ff06f          	j	20550 <__eqtf2+0x70>

0000000000020584 <__getf2>:
   20584:	00008e37          	lui	t3,0x8
   20588:	0305d893          	srl	a7,a1,0x30
   2058c:	fffe0e13          	add	t3,t3,-1 # 7fff <exit-0x80e9>
   20590:	fff00713          	li	a4,-1
   20594:	01075713          	srl	a4,a4,0x10
   20598:	0306d793          	srl	a5,a3,0x30
   2059c:	01c8f8b3          	and	a7,a7,t3
   205a0:	00e5f833          	and	a6,a1,a4
   205a4:	00050313          	mv	t1,a0
   205a8:	00e6f733          	and	a4,a3,a4
   205ac:	03f5d593          	srl	a1,a1,0x3f
   205b0:	01c7f533          	and	a0,a5,t3
   205b4:	03f6d693          	srl	a3,a3,0x3f
   205b8:	03c89c63          	bne	a7,t3,205f0 <__getf2+0x6c>
   205bc:	00686833          	or	a6,a6,t1
   205c0:	0c081463          	bnez	a6,20688 <__getf2+0x104>
   205c4:	01150a63          	beq	a0,a7,205d8 <__getf2+0x54>
   205c8:	00100513          	li	a0,1
   205cc:	0a058c63          	beqz	a1,20684 <__getf2+0x100>
   205d0:	fff00513          	li	a0,-1
   205d4:	00008067          	ret
   205d8:	00c76733          	or	a4,a4,a2
   205dc:	ffe00513          	li	a0,-2
   205e0:	0a071263          	bnez	a4,20684 <__getf2+0x100>
   205e4:	fed592e3          	bne	a1,a3,205c8 <__getf2+0x44>
   205e8:	00000513          	li	a0,0
   205ec:	00008067          	ret
   205f0:	05c51063          	bne	a0,t3,20630 <__getf2+0xac>
   205f4:	00c76733          	or	a4,a4,a2
   205f8:	ffe00513          	li	a0,-2
   205fc:	08071463          	bnez	a4,20684 <__getf2+0x100>
   20600:	00088c63          	beqz	a7,20618 <__getf2+0x94>
   20604:	fcd592e3          	bne	a1,a3,205c8 <__getf2+0x44>
   20608:	fff00513          	li	a0,-1
   2060c:	06058c63          	beqz	a1,20684 <__getf2+0x100>
   20610:	00058513          	mv	a0,a1
   20614:	00008067          	ret
   20618:	00686833          	or	a6,a6,t1
   2061c:	fe0814e3          	bnez	a6,20604 <__getf2+0x80>
   20620:	fff00513          	li	a0,-1
   20624:	06068063          	beqz	a3,20684 <__getf2+0x100>
   20628:	00068513          	mv	a0,a3
   2062c:	00008067          	ret
   20630:	02088663          	beqz	a7,2065c <__getf2+0xd8>
   20634:	f8050ae3          	beqz	a0,205c8 <__getf2+0x44>
   20638:	f8d598e3          	bne	a1,a3,205c8 <__getf2+0x44>
   2063c:	f91546e3          	blt	a0,a7,205c8 <__getf2+0x44>
   20640:	fca8c4e3          	blt	a7,a0,20608 <__getf2+0x84>
   20644:	f90762e3          	bltu	a4,a6,205c8 <__getf2+0x44>
   20648:	fce810e3          	bne	a6,a4,20608 <__getf2+0x84>
   2064c:	f6666ee3          	bltu	a2,t1,205c8 <__getf2+0x44>
   20650:	00000513          	li	a0,0
   20654:	02c37863          	bgeu	t1,a2,20684 <__getf2+0x100>
   20658:	fb1ff06f          	j	20608 <__getf2+0x84>
   2065c:	006867b3          	or	a5,a6,t1
   20660:	00050663          	beqz	a0,2066c <__getf2+0xe8>
   20664:	fa078ee3          	beqz	a5,20620 <__getf2+0x9c>
   20668:	f9dff06f          	j	20604 <__getf2+0x80>
   2066c:	00c768b3          	or	a7,a4,a2
   20670:	00088863          	beqz	a7,20680 <__getf2+0xfc>
   20674:	fa0786e3          	beqz	a5,20620 <__getf2+0x9c>
   20678:	fcd586e3          	beq	a1,a3,20644 <__getf2+0xc0>
   2067c:	f4dff06f          	j	205c8 <__getf2+0x44>
   20680:	f40794e3          	bnez	a5,205c8 <__getf2+0x44>
   20684:	00008067          	ret
   20688:	ffe00513          	li	a0,-2
   2068c:	00008067          	ret

0000000000020690 <__letf2>:
   20690:	00008e37          	lui	t3,0x8
   20694:	0305d893          	srl	a7,a1,0x30
   20698:	fffe0e13          	add	t3,t3,-1 # 7fff <exit-0x80e9>
   2069c:	fff00713          	li	a4,-1
   206a0:	01075713          	srl	a4,a4,0x10
   206a4:	0306d793          	srl	a5,a3,0x30
   206a8:	01c8f8b3          	and	a7,a7,t3
   206ac:	00e5f833          	and	a6,a1,a4
   206b0:	00050313          	mv	t1,a0
   206b4:	00e6f733          	and	a4,a3,a4
   206b8:	03f5d593          	srl	a1,a1,0x3f
   206bc:	01c7f533          	and	a0,a5,t3
   206c0:	03f6d693          	srl	a3,a3,0x3f
   206c4:	03c89c63          	bne	a7,t3,206fc <__letf2+0x6c>
   206c8:	00686833          	or	a6,a6,t1
   206cc:	0c081463          	bnez	a6,20794 <__letf2+0x104>
   206d0:	01150a63          	beq	a0,a7,206e4 <__letf2+0x54>
   206d4:	00100513          	li	a0,1
   206d8:	0a058c63          	beqz	a1,20790 <__letf2+0x100>
   206dc:	fff00513          	li	a0,-1
   206e0:	00008067          	ret
   206e4:	00c76733          	or	a4,a4,a2
   206e8:	00200513          	li	a0,2
   206ec:	0a071263          	bnez	a4,20790 <__letf2+0x100>
   206f0:	fed592e3          	bne	a1,a3,206d4 <__letf2+0x44>
   206f4:	00000513          	li	a0,0
   206f8:	00008067          	ret
   206fc:	05c51063          	bne	a0,t3,2073c <__letf2+0xac>
   20700:	00c76733          	or	a4,a4,a2
   20704:	00200513          	li	a0,2
   20708:	08071463          	bnez	a4,20790 <__letf2+0x100>
   2070c:	00088c63          	beqz	a7,20724 <__letf2+0x94>
   20710:	fcd592e3          	bne	a1,a3,206d4 <__letf2+0x44>
   20714:	fff00513          	li	a0,-1
   20718:	06058c63          	beqz	a1,20790 <__letf2+0x100>
   2071c:	00058513          	mv	a0,a1
   20720:	00008067          	ret
   20724:	00686833          	or	a6,a6,t1
   20728:	fe0814e3          	bnez	a6,20710 <__letf2+0x80>
   2072c:	fff00513          	li	a0,-1
   20730:	06068063          	beqz	a3,20790 <__letf2+0x100>
   20734:	00068513          	mv	a0,a3
   20738:	00008067          	ret
   2073c:	02088663          	beqz	a7,20768 <__letf2+0xd8>
   20740:	f8050ae3          	beqz	a0,206d4 <__letf2+0x44>
   20744:	f8d598e3          	bne	a1,a3,206d4 <__letf2+0x44>
   20748:	f91546e3          	blt	a0,a7,206d4 <__letf2+0x44>
   2074c:	fca8c4e3          	blt	a7,a0,20714 <__letf2+0x84>
   20750:	f90762e3          	bltu	a4,a6,206d4 <__letf2+0x44>
   20754:	fce810e3          	bne	a6,a4,20714 <__letf2+0x84>
   20758:	f6666ee3          	bltu	a2,t1,206d4 <__letf2+0x44>
   2075c:	00000513          	li	a0,0
   20760:	02c37863          	bgeu	t1,a2,20790 <__letf2+0x100>
   20764:	fb1ff06f          	j	20714 <__letf2+0x84>
   20768:	006867b3          	or	a5,a6,t1
   2076c:	00050663          	beqz	a0,20778 <__letf2+0xe8>
   20770:	fa078ee3          	beqz	a5,2072c <__letf2+0x9c>
   20774:	f9dff06f          	j	20710 <__letf2+0x80>
   20778:	00c768b3          	or	a7,a4,a2
   2077c:	00088863          	beqz	a7,2078c <__letf2+0xfc>
   20780:	fa0786e3          	beqz	a5,2072c <__letf2+0x9c>
   20784:	fcd586e3          	beq	a1,a3,20750 <__letf2+0xc0>
   20788:	f4dff06f          	j	206d4 <__letf2+0x44>
   2078c:	f40794e3          	bnez	a5,206d4 <__letf2+0x44>
   20790:	00008067          	ret
   20794:	00200513          	li	a0,2
   20798:	00008067          	ret

000000000002079c <__multf3>:
   2079c:	00008737          	lui	a4,0x8
   207a0:	fb010113          	add	sp,sp,-80
   207a4:	0305d793          	srl	a5,a1,0x30
   207a8:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   207ac:	04813023          	sd	s0,64(sp)
   207b0:	02913c23          	sd	s1,56(sp)
   207b4:	03313423          	sd	s3,40(sp)
   207b8:	03413023          	sd	s4,32(sp)
   207bc:	01613823          	sd	s6,16(sp)
   207c0:	01059493          	sll	s1,a1,0x10
   207c4:	04113423          	sd	ra,72(sp)
   207c8:	03213823          	sd	s2,48(sp)
   207cc:	01513c23          	sd	s5,24(sp)
   207d0:	01713423          	sd	s7,8(sp)
   207d4:	01813023          	sd	s8,0(sp)
   207d8:	00e7f7b3          	and	a5,a5,a4
   207dc:	00050413          	mv	s0,a0
   207e0:	00060b13          	mv	s6,a2
   207e4:	00068993          	mv	s3,a3
   207e8:	0104d493          	srl	s1,s1,0x10
   207ec:	03f5da13          	srl	s4,a1,0x3f
   207f0:	42078463          	beqz	a5,20c18 <__multf3+0x47c>
   207f4:	0007891b          	sext.w	s2,a5
   207f8:	48e78863          	beq	a5,a4,20c88 <__multf3+0x4ec>
   207fc:	00349493          	sll	s1,s1,0x3
   20800:	03d55713          	srl	a4,a0,0x3d
   20804:	00976733          	or	a4,a4,s1
   20808:	ffffc937          	lui	s2,0xffffc
   2080c:	00100493          	li	s1,1
   20810:	03349493          	sll	s1,s1,0x33
   20814:	00190913          	add	s2,s2,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd7219>
   20818:	009764b3          	or	s1,a4,s1
   2081c:	00351a93          	sll	s5,a0,0x3
   20820:	01278933          	add	s2,a5,s2
   20824:	00000b93          	li	s7,0
   20828:	000087b7          	lui	a5,0x8
   2082c:	0309d613          	srl	a2,s3,0x30
   20830:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   20834:	01099413          	sll	s0,s3,0x10
   20838:	00f67633          	and	a2,a2,a5
   2083c:	01045413          	srl	s0,s0,0x10
   20840:	03f9d993          	srl	s3,s3,0x3f
   20844:	46060a63          	beqz	a2,20cb8 <__multf3+0x51c>
   20848:	0006071b          	sext.w	a4,a2
   2084c:	4ef60063          	beq	a2,a5,20d2c <__multf3+0x590>
   20850:	00341413          	sll	s0,s0,0x3
   20854:	03db5793          	srl	a5,s6,0x3d
   20858:	0087e7b3          	or	a5,a5,s0
   2085c:	ffffc737          	lui	a4,0xffffc
   20860:	00100413          	li	s0,1
   20864:	03341413          	sll	s0,s0,0x33
   20868:	00170713          	add	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffd7219>
   2086c:	0087e433          	or	s0,a5,s0
   20870:	00e60733          	add	a4,a2,a4
   20874:	003b1793          	sll	a5,s6,0x3
   20878:	00000693          	li	a3,0
   2087c:	002b9613          	sll	a2,s7,0x2
   20880:	01270333          	add	t1,a4,s2
   20884:	00d66633          	or	a2,a2,a3
   20888:	00a00713          	li	a4,10
   2088c:	013a4833          	xor	a6,s4,s3
   20890:	00130893          	add	a7,t1,1
   20894:	50c74863          	blt	a4,a2,20da4 <__multf3+0x608>
   20898:	00200713          	li	a4,2
   2089c:	4cc74063          	blt	a4,a2,20d5c <__multf3+0x5c0>
   208a0:	fff60613          	add	a2,a2,-1
   208a4:	00100713          	li	a4,1
   208a8:	4cc77c63          	bgeu	a4,a2,20d80 <__multf3+0x5e4>
   208ac:	fff00713          	li	a4,-1
   208b0:	01548b33          	add	s6,s1,s5
   208b4:	00878a33          	add	s4,a5,s0
   208b8:	02075713          	srl	a4,a4,0x20
   208bc:	00fa32b3          	sltu	t0,s4,a5
   208c0:	009b3fb3          	sltu	t6,s6,s1
   208c4:	020ad993          	srl	s3,s5,0x20
   208c8:	0207de93          	srl	t4,a5,0x20
   208cc:	00eafab3          	and	s5,s5,a4
   208d0:	00e7f7b3          	and	a5,a5,a4
   208d4:	000f8393          	mv	t2,t6
   208d8:	00028e13          	mv	t3,t0
   208dc:	000a8513          	mv	a0,s5
   208e0:	00078593          	mv	a1,a5
   208e4:	258010ef          	jal	21b3c <__muldi3>
   208e8:	00050713          	mv	a4,a0
   208ec:	000e8593          	mv	a1,t4
   208f0:	000a8513          	mv	a0,s5
   208f4:	248010ef          	jal	21b3c <__muldi3>
   208f8:	00050f13          	mv	t5,a0
   208fc:	00078593          	mv	a1,a5
   20900:	00098513          	mv	a0,s3
   20904:	238010ef          	jal	21b3c <__muldi3>
   20908:	00050913          	mv	s2,a0
   2090c:	000e8593          	mv	a1,t4
   20910:	00098513          	mv	a0,s3
   20914:	228010ef          	jal	21b3c <__muldi3>
   20918:	02075e93          	srl	t4,a4,0x20
   2091c:	012f0f33          	add	t5,t5,s2
   20920:	01ee8eb3          	add	t4,t4,t5
   20924:	00050793          	mv	a5,a0
   20928:	012ef863          	bgeu	t4,s2,20938 <__multf3+0x19c>
   2092c:	00100693          	li	a3,1
   20930:	02069693          	sll	a3,a3,0x20
   20934:	00d507b3          	add	a5,a0,a3
   20938:	020edf13          	srl	t5,t4,0x20
   2093c:	00ff0f33          	add	t5,t5,a5
   20940:	fff00793          	li	a5,-1
   20944:	0207d793          	srl	a5,a5,0x20
   20948:	00fefeb3          	and	t4,t4,a5
   2094c:	00f77733          	and	a4,a4,a5
   20950:	00fb7933          	and	s2,s6,a5
   20954:	020e9e93          	sll	t4,t4,0x20
   20958:	00fa77b3          	and	a5,s4,a5
   2095c:	00ee8eb3          	add	t4,t4,a4
   20960:	020b5993          	srl	s3,s6,0x20
   20964:	020a5713          	srl	a4,s4,0x20
   20968:	00090513          	mv	a0,s2
   2096c:	00078593          	mv	a1,a5
   20970:	1cc010ef          	jal	21b3c <__muldi3>
   20974:	00050a93          	mv	s5,a0
   20978:	00070593          	mv	a1,a4
   2097c:	00090513          	mv	a0,s2
   20980:	1bc010ef          	jal	21b3c <__muldi3>
   20984:	00050913          	mv	s2,a0
   20988:	00078593          	mv	a1,a5
   2098c:	00098513          	mv	a0,s3
   20990:	1ac010ef          	jal	21b3c <__muldi3>
   20994:	00050793          	mv	a5,a0
   20998:	00070593          	mv	a1,a4
   2099c:	00098513          	mv	a0,s3
   209a0:	19c010ef          	jal	21b3c <__muldi3>
   209a4:	020ad713          	srl	a4,s5,0x20
   209a8:	00f90933          	add	s2,s2,a5
   209ac:	01270733          	add	a4,a4,s2
   209b0:	00050993          	mv	s3,a0
   209b4:	00f77863          	bgeu	a4,a5,209c4 <__multf3+0x228>
   209b8:	00100793          	li	a5,1
   209bc:	02079793          	sll	a5,a5,0x20
   209c0:	00f509b3          	add	s3,a0,a5
   209c4:	fff00593          	li	a1,-1
   209c8:	0205d593          	srl	a1,a1,0x20
   209cc:	02075913          	srl	s2,a4,0x20
   209d0:	00b77733          	and	a4,a4,a1
   209d4:	00bafab3          	and	s5,s5,a1
   209d8:	0204dc13          	srl	s8,s1,0x20
   209dc:	00b477b3          	and	a5,s0,a1
   209e0:	00b4f4b3          	and	s1,s1,a1
   209e4:	02071713          	sll	a4,a4,0x20
   209e8:	01570733          	add	a4,a4,s5
   209ec:	02045b93          	srl	s7,s0,0x20
   209f0:	00048513          	mv	a0,s1
   209f4:	00078593          	mv	a1,a5
   209f8:	144010ef          	jal	21b3c <__muldi3>
   209fc:	00050413          	mv	s0,a0
   20a00:	000b8593          	mv	a1,s7
   20a04:	00048513          	mv	a0,s1
   20a08:	134010ef          	jal	21b3c <__muldi3>
   20a0c:	00050493          	mv	s1,a0
   20a10:	00078593          	mv	a1,a5
   20a14:	000c0513          	mv	a0,s8
   20a18:	124010ef          	jal	21b3c <__muldi3>
   20a1c:	00050a93          	mv	s5,a0
   20a20:	000b8593          	mv	a1,s7
   20a24:	000c0513          	mv	a0,s8
   20a28:	114010ef          	jal	21b3c <__muldi3>
   20a2c:	02045793          	srl	a5,s0,0x20
   20a30:	015484b3          	add	s1,s1,s5
   20a34:	009787b3          	add	a5,a5,s1
   20a38:	0157f863          	bgeu	a5,s5,20a48 <__multf3+0x2ac>
   20a3c:	00100693          	li	a3,1
   20a40:	02069693          	sll	a3,a3,0x20
   20a44:	00d50533          	add	a0,a0,a3
   20a48:	0207d693          	srl	a3,a5,0x20
   20a4c:	00a686b3          	add	a3,a3,a0
   20a50:	01e70533          	add	a0,a4,t5
   20a54:	00e53733          	sltu	a4,a0,a4
   20a58:	00e905b3          	add	a1,s2,a4
   20a5c:	fff00613          	li	a2,-1
   20a60:	02065613          	srl	a2,a2,0x20
   20a64:	013585b3          	add	a1,a1,s3
   20a68:	41c00e33          	neg	t3,t3
   20a6c:	00e5b733          	sltu	a4,a1,a4
   20a70:	00c7f7b3          	and	a5,a5,a2
   20a74:	00c47433          	and	s0,s0,a2
   20a78:	016e7e33          	and	t3,t3,s6
   20a7c:	005fffb3          	and	t6,t6,t0
   20a80:	40700633          	neg	a2,t2
   20a84:	01f70fb3          	add	t6,a4,t6
   20a88:	01467633          	and	a2,a2,s4
   20a8c:	01c58733          	add	a4,a1,t3
   20a90:	00b735b3          	sltu	a1,a4,a1
   20a94:	00e60733          	add	a4,a2,a4
   20a98:	01f585b3          	add	a1,a1,t6
   20a9c:	00c73633          	sltu	a2,a4,a2
   20aa0:	41d50e33          	sub	t3,a0,t4
   20aa4:	01c53fb3          	sltu	t6,a0,t3
   20aa8:	02079793          	sll	a5,a5,0x20
   20aac:	00b60633          	add	a2,a2,a1
   20ab0:	41e705b3          	sub	a1,a4,t5
   20ab4:	00b732b3          	sltu	t0,a4,a1
   20ab8:	008787b3          	add	a5,a5,s0
   20abc:	41f585b3          	sub	a1,a1,t6
   20ac0:	00000f93          	li	t6,0
   20ac4:	01c57663          	bgeu	a0,t3,20ad0 <__multf3+0x334>
   20ac8:	40ef0f33          	sub	t5,t5,a4
   20acc:	001f3f93          	seqz	t6,t5
   20ad0:	40fe0533          	sub	a0,t3,a5
   20ad4:	00d60633          	add	a2,a2,a3
   20ad8:	00ae3733          	sltu	a4,t3,a0
   20adc:	40d586b3          	sub	a3,a1,a3
   20ae0:	005fefb3          	or	t6,t6,t0
   20ae4:	00d5b5b3          	sltu	a1,a1,a3
   20ae8:	40e78733          	sub	a4,a5,a4
   20aec:	00000f13          	li	t5,0
   20af0:	00ae7463          	bgeu	t3,a0,20af8 <__multf3+0x35c>
   20af4:	0016bf13          	seqz	t5,a3
   20af8:	00e686b3          	add	a3,a3,a4
   20afc:	00f6b733          	sltu	a4,a3,a5
   20b00:	00c70733          	add	a4,a4,a2
   20b04:	41f70733          	sub	a4,a4,t6
   20b08:	00bf6f33          	or	t5,t5,a1
   20b0c:	00d51793          	sll	a5,a0,0xd
   20b10:	41e70733          	sub	a4,a4,t5
   20b14:	00d71713          	sll	a4,a4,0xd
   20b18:	0336d413          	srl	s0,a3,0x33
   20b1c:	01d7e7b3          	or	a5,a5,t4
   20b20:	00876433          	or	s0,a4,s0
   20b24:	00f037b3          	snez	a5,a5
   20b28:	03355513          	srl	a0,a0,0x33
   20b2c:	03475713          	srl	a4,a4,0x34
   20b30:	00a7e7b3          	or	a5,a5,a0
   20b34:	00d69693          	sll	a3,a3,0xd
   20b38:	00177713          	and	a4,a4,1
   20b3c:	00d7e7b3          	or	a5,a5,a3
   20b40:	28070463          	beqz	a4,20dc8 <__multf3+0x62c>
   20b44:	0017d713          	srl	a4,a5,0x1
   20b48:	0017f793          	and	a5,a5,1
   20b4c:	00f76733          	or	a4,a4,a5
   20b50:	03f41793          	sll	a5,s0,0x3f
   20b54:	00f767b3          	or	a5,a4,a5
   20b58:	00145413          	srl	s0,s0,0x1
   20b5c:	000045b7          	lui	a1,0x4
   20b60:	fff58593          	add	a1,a1,-1 # 3fff <exit-0xc0e9>
   20b64:	00b885b3          	add	a1,a7,a1
   20b68:	26b05463          	blez	a1,20dd0 <__multf3+0x634>
   20b6c:	0077f713          	and	a4,a5,7
   20b70:	02070063          	beqz	a4,20b90 <__multf3+0x3f4>
   20b74:	00f7f713          	and	a4,a5,15
   20b78:	00400693          	li	a3,4
   20b7c:	00d70a63          	beq	a4,a3,20b90 <__multf3+0x3f4>
   20b80:	00478713          	add	a4,a5,4
   20b84:	00f736b3          	sltu	a3,a4,a5
   20b88:	00d40433          	add	s0,s0,a3
   20b8c:	00070793          	mv	a5,a4
   20b90:	03445713          	srl	a4,s0,0x34
   20b94:	00177713          	and	a4,a4,1
   20b98:	00070e63          	beqz	a4,20bb4 <__multf3+0x418>
   20b9c:	fff00713          	li	a4,-1
   20ba0:	03471713          	sll	a4,a4,0x34
   20ba4:	fff70713          	add	a4,a4,-1
   20ba8:	000045b7          	lui	a1,0x4
   20bac:	00e47433          	and	s0,s0,a4
   20bb0:	00b885b3          	add	a1,a7,a1
   20bb4:	000086b7          	lui	a3,0x8
   20bb8:	ffe68713          	add	a4,a3,-2 # 7ffe <exit-0x80ea>
   20bbc:	30b74663          	blt	a4,a1,20ec8 <__multf3+0x72c>
   20bc0:	0037d793          	srl	a5,a5,0x3
   20bc4:	03d41513          	sll	a0,s0,0x3d
   20bc8:	00f56533          	or	a0,a0,a5
   20bcc:	00345713          	srl	a4,s0,0x3
   20bd0:	04813083          	ld	ra,72(sp)
   20bd4:	04013403          	ld	s0,64(sp)
   20bd8:	00f8181b          	sllw	a6,a6,0xf
   20bdc:	01071713          	sll	a4,a4,0x10
   20be0:	0105e5b3          	or	a1,a1,a6
   20be4:	03059593          	sll	a1,a1,0x30
   20be8:	01075713          	srl	a4,a4,0x10
   20bec:	03813483          	ld	s1,56(sp)
   20bf0:	03013903          	ld	s2,48(sp)
   20bf4:	02813983          	ld	s3,40(sp)
   20bf8:	02013a03          	ld	s4,32(sp)
   20bfc:	01813a83          	ld	s5,24(sp)
   20c00:	01013b03          	ld	s6,16(sp)
   20c04:	00813b83          	ld	s7,8(sp)
   20c08:	00013c03          	ld	s8,0(sp)
   20c0c:	00b765b3          	or	a1,a4,a1
   20c10:	05010113          	add	sp,sp,80
   20c14:	00008067          	ret
   20c18:	00a4eab3          	or	s5,s1,a0
   20c1c:	080a8063          	beqz	s5,20c9c <__multf3+0x500>
   20c20:	04048463          	beqz	s1,20c68 <__multf3+0x4cc>
   20c24:	00048513          	mv	a0,s1
   20c28:	038010ef          	jal	21c60 <__clzdi2>
   20c2c:	0005051b          	sext.w	a0,a0
   20c30:	ff150793          	add	a5,a0,-15
   20c34:	03d00713          	li	a4,61
   20c38:	0037869b          	addw	a3,a5,3
   20c3c:	40f707bb          	subw	a5,a4,a5
   20c40:	00d494b3          	sll	s1,s1,a3
   20c44:	00f457b3          	srl	a5,s0,a5
   20c48:	0097e7b3          	or	a5,a5,s1
   20c4c:	00d414b3          	sll	s1,s0,a3
   20c50:	ffffc937          	lui	s2,0xffffc
   20c54:	01190913          	add	s2,s2,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd7229>
   20c58:	00048a93          	mv	s5,s1
   20c5c:	40a90933          	sub	s2,s2,a0
   20c60:	00078493          	mv	s1,a5
   20c64:	bc1ff06f          	j	20824 <__multf3+0x88>
   20c68:	7f9000ef          	jal	21c60 <__clzdi2>
   20c6c:	0405051b          	addw	a0,a0,64
   20c70:	ff150793          	add	a5,a0,-15
   20c74:	03c00713          	li	a4,60
   20c78:	faf75ee3          	bge	a4,a5,20c34 <__multf3+0x498>
   20c7c:	fc37879b          	addw	a5,a5,-61
   20c80:	00f417b3          	sll	a5,s0,a5
   20c84:	fcdff06f          	j	20c50 <__multf3+0x4b4>
   20c88:	00a4eab3          	or	s5,s1,a0
   20c8c:	020a8063          	beqz	s5,20cac <__multf3+0x510>
   20c90:	00050a93          	mv	s5,a0
   20c94:	00300b93          	li	s7,3
   20c98:	b91ff06f          	j	20828 <__multf3+0x8c>
   20c9c:	00000493          	li	s1,0
   20ca0:	00000913          	li	s2,0
   20ca4:	00100b93          	li	s7,1
   20ca8:	b81ff06f          	j	20828 <__multf3+0x8c>
   20cac:	00000493          	li	s1,0
   20cb0:	00200b93          	li	s7,2
   20cb4:	b75ff06f          	j	20828 <__multf3+0x8c>
   20cb8:	008b67b3          	or	a5,s6,s0
   20cbc:	08078263          	beqz	a5,20d40 <__multf3+0x5a4>
   20cc0:	04040463          	beqz	s0,20d08 <__multf3+0x56c>
   20cc4:	00040513          	mv	a0,s0
   20cc8:	799000ef          	jal	21c60 <__clzdi2>
   20ccc:	0005051b          	sext.w	a0,a0
   20cd0:	ff150793          	add	a5,a0,-15
   20cd4:	03d00713          	li	a4,61
   20cd8:	0037861b          	addw	a2,a5,3
   20cdc:	40f707bb          	subw	a5,a4,a5
   20ce0:	00c41433          	sll	s0,s0,a2
   20ce4:	00fb57b3          	srl	a5,s6,a5
   20ce8:	0087e6b3          	or	a3,a5,s0
   20cec:	00cb1433          	sll	s0,s6,a2
   20cf0:	ffffc737          	lui	a4,0xffffc
   20cf4:	01170713          	add	a4,a4,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffd7229>
   20cf8:	00040793          	mv	a5,s0
   20cfc:	40a70733          	sub	a4,a4,a0
   20d00:	00068413          	mv	s0,a3
   20d04:	b75ff06f          	j	20878 <__multf3+0xdc>
   20d08:	000b0513          	mv	a0,s6
   20d0c:	755000ef          	jal	21c60 <__clzdi2>
   20d10:	0405051b          	addw	a0,a0,64
   20d14:	ff150793          	add	a5,a0,-15
   20d18:	03c00713          	li	a4,60
   20d1c:	faf75ce3          	bge	a4,a5,20cd4 <__multf3+0x538>
   20d20:	fc37879b          	addw	a5,a5,-61
   20d24:	00fb16b3          	sll	a3,s6,a5
   20d28:	fc9ff06f          	j	20cf0 <__multf3+0x554>
   20d2c:	008b67b3          	or	a5,s6,s0
   20d30:	02078063          	beqz	a5,20d50 <__multf3+0x5b4>
   20d34:	000b0793          	mv	a5,s6
   20d38:	00300693          	li	a3,3
   20d3c:	b41ff06f          	j	2087c <__multf3+0xe0>
   20d40:	00000413          	li	s0,0
   20d44:	00000713          	li	a4,0
   20d48:	00100693          	li	a3,1
   20d4c:	b31ff06f          	j	2087c <__multf3+0xe0>
   20d50:	00000413          	li	s0,0
   20d54:	00200693          	li	a3,2
   20d58:	b25ff06f          	j	2087c <__multf3+0xe0>
   20d5c:	00100713          	li	a4,1
   20d60:	00c71633          	sll	a2,a4,a2
   20d64:	53067513          	and	a0,a2,1328
   20d68:	04051863          	bnez	a0,20db8 <__multf3+0x61c>
   20d6c:	24067593          	and	a1,a2,576
   20d70:	12059063          	bnez	a1,20e90 <__multf3+0x6f4>
   20d74:	08867613          	and	a2,a2,136
   20d78:	b2060ae3          	beqz	a2,208ac <__multf3+0x110>
   20d7c:	00098813          	mv	a6,s3
   20d80:	00200713          	li	a4,2
   20d84:	12e68063          	beq	a3,a4,20ea4 <__multf3+0x708>
   20d88:	00300713          	li	a4,3
   20d8c:	12e68663          	beq	a3,a4,20eb8 <__multf3+0x71c>
   20d90:	00100713          	li	a4,1
   20d94:	dce694e3          	bne	a3,a4,20b5c <__multf3+0x3c0>
   20d98:	00000713          	li	a4,0
   20d9c:	00000513          	li	a0,0
   20da0:	0b40006f          	j	20e54 <__multf3+0x6b8>
   20da4:	00f00713          	li	a4,15
   20da8:	10e60863          	beq	a2,a4,20eb8 <__multf3+0x71c>
   20dac:	00b00713          	li	a4,11
   20db0:	000a0813          	mv	a6,s4
   20db4:	fce604e3          	beq	a2,a4,20d7c <__multf3+0x5e0>
   20db8:	00048413          	mv	s0,s1
   20dbc:	000a8793          	mv	a5,s5
   20dc0:	000b8693          	mv	a3,s7
   20dc4:	fbdff06f          	j	20d80 <__multf3+0x5e4>
   20dc8:	00030893          	mv	a7,t1
   20dcc:	d91ff06f          	j	20b5c <__multf3+0x3c0>
   20dd0:	00100713          	li	a4,1
   20dd4:	00058e63          	beqz	a1,20df0 <__multf3+0x654>
   20dd8:	40b70733          	sub	a4,a4,a1
   20ddc:	07400693          	li	a3,116
   20de0:	fae6cce3          	blt	a3,a4,20d98 <__multf3+0x5fc>
   20de4:	03f00693          	li	a3,63
   20de8:	0007061b          	sext.w	a2,a4
   20dec:	06e6c863          	blt	a3,a4,20e5c <__multf3+0x6c0>
   20df0:	04000693          	li	a3,64
   20df4:	40e686bb          	subw	a3,a3,a4
   20df8:	00d41533          	sll	a0,s0,a3
   20dfc:	00e7d633          	srl	a2,a5,a4
   20e00:	00d796b3          	sll	a3,a5,a3
   20e04:	00c56533          	or	a0,a0,a2
   20e08:	00d036b3          	snez	a3,a3
   20e0c:	00d56533          	or	a0,a0,a3
   20e10:	00e45733          	srl	a4,s0,a4
   20e14:	00757793          	and	a5,a0,7
   20e18:	02078063          	beqz	a5,20e38 <__multf3+0x69c>
   20e1c:	00f57793          	and	a5,a0,15
   20e20:	00400693          	li	a3,4
   20e24:	00d78a63          	beq	a5,a3,20e38 <__multf3+0x69c>
   20e28:	00450793          	add	a5,a0,4
   20e2c:	00a7b6b3          	sltu	a3,a5,a0
   20e30:	00d70733          	add	a4,a4,a3
   20e34:	00078513          	mv	a0,a5
   20e38:	03375793          	srl	a5,a4,0x33
   20e3c:	0017f793          	and	a5,a5,1
   20e40:	08079c63          	bnez	a5,20ed8 <__multf3+0x73c>
   20e44:	03d71793          	sll	a5,a4,0x3d
   20e48:	00355513          	srl	a0,a0,0x3
   20e4c:	00a7e533          	or	a0,a5,a0
   20e50:	00375713          	srl	a4,a4,0x3
   20e54:	00000593          	li	a1,0
   20e58:	d79ff06f          	j	20bd0 <__multf3+0x434>
   20e5c:	fc06051b          	addw	a0,a2,-64
   20e60:	04000593          	li	a1,64
   20e64:	00a45533          	srl	a0,s0,a0
   20e68:	00000693          	li	a3,0
   20e6c:	00b70863          	beq	a4,a1,20e7c <__multf3+0x6e0>
   20e70:	08000693          	li	a3,128
   20e74:	40c686bb          	subw	a3,a3,a2
   20e78:	00d416b3          	sll	a3,s0,a3
   20e7c:	00f6e6b3          	or	a3,a3,a5
   20e80:	00d036b3          	snez	a3,a3
   20e84:	00d56533          	or	a0,a0,a3
   20e88:	00000713          	li	a4,0
   20e8c:	f89ff06f          	j	20e14 <__multf3+0x678>
   20e90:	02f71713          	sll	a4,a4,0x2f
   20e94:	000085b7          	lui	a1,0x8
   20e98:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   20e9c:	00000813          	li	a6,0
   20ea0:	d31ff06f          	j	20bd0 <__multf3+0x434>
   20ea4:	000085b7          	lui	a1,0x8
   20ea8:	00000713          	li	a4,0
   20eac:	00000513          	li	a0,0
   20eb0:	fff58593          	add	a1,a1,-1 # 7fff <exit-0x80e9>
   20eb4:	d1dff06f          	j	20bd0 <__multf3+0x434>
   20eb8:	00100713          	li	a4,1
   20ebc:	02f71713          	sll	a4,a4,0x2f
   20ec0:	00000513          	li	a0,0
   20ec4:	fd1ff06f          	j	20e94 <__multf3+0x6f8>
   20ec8:	00000713          	li	a4,0
   20ecc:	00000513          	li	a0,0
   20ed0:	fff68593          	add	a1,a3,-1
   20ed4:	cfdff06f          	j	20bd0 <__multf3+0x434>
   20ed8:	00000713          	li	a4,0
   20edc:	00000513          	li	a0,0
   20ee0:	00100593          	li	a1,1
   20ee4:	cedff06f          	j	20bd0 <__multf3+0x434>

0000000000020ee8 <__subtf3>:
   20ee8:	fff00713          	li	a4,-1
   20eec:	fd010113          	add	sp,sp,-48
   20ef0:	01075713          	srl	a4,a4,0x10
   20ef4:	00008e37          	lui	t3,0x8
   20ef8:	0305d793          	srl	a5,a1,0x30
   20efc:	fffe0e13          	add	t3,t3,-1 # 7fff <exit-0x80e9>
   20f00:	01213823          	sd	s2,16(sp)
   20f04:	03f5d913          	srl	s2,a1,0x3f
   20f08:	00e5f5b3          	and	a1,a1,a4
   20f0c:	00913c23          	sd	s1,24(sp)
   20f10:	01c7f4b3          	and	s1,a5,t3
   20f14:	00359793          	sll	a5,a1,0x3
   20f18:	03d55593          	srl	a1,a0,0x3d
   20f1c:	0306d813          	srl	a6,a3,0x30
   20f20:	00f5e5b3          	or	a1,a1,a5
   20f24:	03f6d793          	srl	a5,a3,0x3f
   20f28:	00e6f6b3          	and	a3,a3,a4
   20f2c:	03d65313          	srl	t1,a2,0x3d
   20f30:	00369693          	sll	a3,a3,0x3
   20f34:	02113423          	sd	ra,40(sp)
   20f38:	02813023          	sd	s0,32(sp)
   20f3c:	01313423          	sd	s3,8(sp)
   20f40:	01c87833          	and	a6,a6,t3
   20f44:	00351893          	sll	a7,a0,0x3
   20f48:	00d36333          	or	t1,t1,a3
   20f4c:	00361613          	sll	a2,a2,0x3
   20f50:	0fc81663          	bne	a6,t3,2103c <__subtf3+0x154>
   20f54:	ffff8737          	lui	a4,0xffff8
   20f58:	0017071b          	addw	a4,a4,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd3219>
   20f5c:	00c366b3          	or	a3,t1,a2
   20f60:	0097073b          	addw	a4,a4,s1
   20f64:	04068063          	beqz	a3,20fa4 <__subtf3+0xbc>
   20f68:	00078e93          	mv	t4,a5
   20f6c:	48f91663          	bne	s2,a5,213f8 <__subtf3+0x510>
   20f70:	2e070263          	beqz	a4,21254 <__subtf3+0x36c>
   20f74:	28049463          	bnez	s1,211fc <__subtf3+0x314>
   20f78:	0115e7b3          	or	a5,a1,a7
   20f7c:	28078063          	beqz	a5,211fc <__subtf3+0x314>
   20f80:	fff74793          	not	a5,a4
   20f84:	26079663          	bnez	a5,211f0 <__subtf3+0x308>
   20f88:	00c88633          	add	a2,a7,a2
   20f8c:	011637b3          	sltu	a5,a2,a7
   20f90:	006585b3          	add	a1,a1,t1
   20f94:	00060893          	mv	a7,a2
   20f98:	00f585b3          	add	a1,a1,a5
   20f9c:	00080493          	mv	s1,a6
   20fa0:	0d40006f          	j	21074 <__subtf3+0x18c>
   20fa4:	0017ce93          	xor	t4,a5,1
   20fa8:	47d91663          	bne	s2,t4,21414 <__subtf3+0x52c>
   20fac:	2a070463          	beqz	a4,21254 <__subtf3+0x36c>
   20fb0:	fc0484e3          	beqz	s1,20f78 <__subtf3+0x90>
   20fb4:	00000593          	li	a1,0
   20fb8:	00000893          	li	a7,0
   20fbc:	00080493          	mv	s1,a6
   20fc0:	0335d793          	srl	a5,a1,0x33
   20fc4:	0017f793          	and	a5,a5,1
   20fc8:	72078e63          	beqz	a5,21704 <__subtf3+0x81c>
   20fcc:	000087b7          	lui	a5,0x8
   20fd0:	00148493          	add	s1,s1,1
   20fd4:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   20fd8:	7af48663          	beq	s1,a5,21784 <__subtf3+0x89c>
   20fdc:	fff00793          	li	a5,-1
   20fe0:	03379793          	sll	a5,a5,0x33
   20fe4:	fff78793          	add	a5,a5,-1
   20fe8:	00f5f7b3          	and	a5,a1,a5
   20fec:	0038d893          	srl	a7,a7,0x3
   20ff0:	03d79513          	sll	a0,a5,0x3d
   20ff4:	01156533          	or	a0,a0,a7
   20ff8:	0037d593          	srl	a1,a5,0x3
   20ffc:	00090713          	mv	a4,s2
   21000:	03149793          	sll	a5,s1,0x31
   21004:	02813083          	ld	ra,40(sp)
   21008:	02013403          	ld	s0,32(sp)
   2100c:	00f7171b          	sllw	a4,a4,0xf
   21010:	0317d793          	srl	a5,a5,0x31
   21014:	01059593          	sll	a1,a1,0x10
   21018:	00e7e7b3          	or	a5,a5,a4
   2101c:	03079793          	sll	a5,a5,0x30
   21020:	0105d593          	srl	a1,a1,0x10
   21024:	01813483          	ld	s1,24(sp)
   21028:	01013903          	ld	s2,16(sp)
   2102c:	00813983          	ld	s3,8(sp)
   21030:	00f5e5b3          	or	a1,a1,a5
   21034:	03010113          	add	sp,sp,48
   21038:	00008067          	ret
   2103c:	0017ce93          	xor	t4,a5,1
   21040:	4104873b          	subw	a4,s1,a6
   21044:	2dd91263          	bne	s2,t4,21308 <__subtf3+0x420>
   21048:	14e05263          	blez	a4,2118c <__subtf3+0x2a4>
   2104c:	08081e63          	bnez	a6,210e8 <__subtf3+0x200>
   21050:	00c367b3          	or	a5,t1,a2
   21054:	06078663          	beqz	a5,210c0 <__subtf3+0x1d8>
   21058:	fff7071b          	addw	a4,a4,-1
   2105c:	06071063          	bnez	a4,210bc <__subtf3+0x1d4>
   21060:	00c88633          	add	a2,a7,a2
   21064:	011637b3          	sltu	a5,a2,a7
   21068:	006585b3          	add	a1,a1,t1
   2106c:	00060893          	mv	a7,a2
   21070:	00f585b3          	add	a1,a1,a5
   21074:	0335d793          	srl	a5,a1,0x33
   21078:	0017f793          	and	a5,a5,1
   2107c:	04078263          	beqz	a5,210c0 <__subtf3+0x1d8>
   21080:	000087b7          	lui	a5,0x8
   21084:	00148493          	add	s1,s1,1
   21088:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   2108c:	6af48063          	beq	s1,a5,2172c <__subtf3+0x844>
   21090:	fff00793          	li	a5,-1
   21094:	03379793          	sll	a5,a5,0x33
   21098:	fff78793          	add	a5,a5,-1
   2109c:	0018f513          	and	a0,a7,1
   210a0:	00f5f7b3          	and	a5,a1,a5
   210a4:	0018d713          	srl	a4,a7,0x1
   210a8:	00a76733          	or	a4,a4,a0
   210ac:	03f79513          	sll	a0,a5,0x3f
   210b0:	00e568b3          	or	a7,a0,a4
   210b4:	0017d593          	srl	a1,a5,0x1
   210b8:	0080006f          	j	210c0 <__subtf3+0x1d8>
   210bc:	09c49463          	bne	s1,t3,21144 <__subtf3+0x25c>
   210c0:	0078f793          	and	a5,a7,7
   210c4:	ee078ee3          	beqz	a5,20fc0 <__subtf3+0xd8>
   210c8:	00f8f793          	and	a5,a7,15
   210cc:	00400713          	li	a4,4
   210d0:	eee788e3          	beq	a5,a4,20fc0 <__subtf3+0xd8>
   210d4:	00488793          	add	a5,a7,4
   210d8:	0117b733          	sltu	a4,a5,a7
   210dc:	00e585b3          	add	a1,a1,a4
   210e0:	00078893          	mv	a7,a5
   210e4:	eddff06f          	j	20fc0 <__subtf3+0xd8>
   210e8:	fdc48ce3          	beq	s1,t3,210c0 <__subtf3+0x1d8>
   210ec:	07400793          	li	a5,116
   210f0:	04e7ce63          	blt	a5,a4,2114c <__subtf3+0x264>
   210f4:	00100793          	li	a5,1
   210f8:	03379793          	sll	a5,a5,0x33
   210fc:	00f36333          	or	t1,t1,a5
   21100:	03f00793          	li	a5,63
   21104:	04e7ca63          	blt	a5,a4,21158 <__subtf3+0x270>
   21108:	04000693          	li	a3,64
   2110c:	40e686bb          	subw	a3,a3,a4
   21110:	00d317b3          	sll	a5,t1,a3
   21114:	00e65533          	srl	a0,a2,a4
   21118:	00d616b3          	sll	a3,a2,a3
   2111c:	00a7e7b3          	or	a5,a5,a0
   21120:	00d036b3          	snez	a3,a3
   21124:	00d7e7b3          	or	a5,a5,a3
   21128:	00e35733          	srl	a4,t1,a4
   2112c:	01178533          	add	a0,a5,a7
   21130:	00b70733          	add	a4,a4,a1
   21134:	00f537b3          	sltu	a5,a0,a5
   21138:	00050893          	mv	a7,a0
   2113c:	00f705b3          	add	a1,a4,a5
   21140:	f35ff06f          	j	21074 <__subtf3+0x18c>
   21144:	07400793          	li	a5,116
   21148:	fae7dce3          	bge	a5,a4,21100 <__subtf3+0x218>
   2114c:	00000713          	li	a4,0
   21150:	00100793          	li	a5,1
   21154:	fd9ff06f          	j	2112c <__subtf3+0x244>
   21158:	fc07079b          	addw	a5,a4,-64
   2115c:	04000513          	li	a0,64
   21160:	00f357b3          	srl	a5,t1,a5
   21164:	00000693          	li	a3,0
   21168:	00a70863          	beq	a4,a0,21178 <__subtf3+0x290>
   2116c:	08000693          	li	a3,128
   21170:	40e686bb          	subw	a3,a3,a4
   21174:	00d316b3          	sll	a3,t1,a3
   21178:	00c6e6b3          	or	a3,a3,a2
   2117c:	00d036b3          	snez	a3,a3
   21180:	00d7e7b3          	or	a5,a5,a3
   21184:	00000713          	li	a4,0
   21188:	fa5ff06f          	j	2112c <__subtf3+0x244>
   2118c:	0c070463          	beqz	a4,21254 <__subtf3+0x36c>
   21190:	de0484e3          	beqz	s1,20f78 <__subtf3+0x90>
   21194:	f8c00793          	li	a5,-116
   21198:	06f74e63          	blt	a4,a5,21214 <__subtf3+0x32c>
   2119c:	40e007bb          	negw	a5,a4
   211a0:	00100713          	li	a4,1
   211a4:	03371713          	sll	a4,a4,0x33
   211a8:	00e5e5b3          	or	a1,a1,a4
   211ac:	03f00713          	li	a4,63
   211b0:	06f74863          	blt	a4,a5,21220 <__subtf3+0x338>
   211b4:	04000693          	li	a3,64
   211b8:	40f686bb          	subw	a3,a3,a5
   211bc:	00d59733          	sll	a4,a1,a3
   211c0:	00f8d533          	srl	a0,a7,a5
   211c4:	00d896b3          	sll	a3,a7,a3
   211c8:	00a76733          	or	a4,a4,a0
   211cc:	00d036b3          	snez	a3,a3
   211d0:	00d76733          	or	a4,a4,a3
   211d4:	00f5d7b3          	srl	a5,a1,a5
   211d8:	00c70633          	add	a2,a4,a2
   211dc:	006787b3          	add	a5,a5,t1
   211e0:	00e63733          	sltu	a4,a2,a4
   211e4:	00060893          	mv	a7,a2
   211e8:	00e785b3          	add	a1,a5,a4
   211ec:	db1ff06f          	j	20f9c <__subtf3+0xb4>
   211f0:	00008737          	lui	a4,0x8
   211f4:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   211f8:	00e81a63          	bne	a6,a4,2120c <__subtf3+0x324>
   211fc:	00030593          	mv	a1,t1
   21200:	00060893          	mv	a7,a2
   21204:	00080493          	mv	s1,a6
   21208:	eb9ff06f          	j	210c0 <__subtf3+0x1d8>
   2120c:	07400713          	li	a4,116
   21210:	f8f75ee3          	bge	a4,a5,211ac <__subtf3+0x2c4>
   21214:	00000793          	li	a5,0
   21218:	00100713          	li	a4,1
   2121c:	fbdff06f          	j	211d8 <__subtf3+0x2f0>
   21220:	fc07871b          	addw	a4,a5,-64
   21224:	04000513          	li	a0,64
   21228:	00e5d733          	srl	a4,a1,a4
   2122c:	00000693          	li	a3,0
   21230:	00a78863          	beq	a5,a0,21240 <__subtf3+0x358>
   21234:	08000693          	li	a3,128
   21238:	40f686bb          	subw	a3,a3,a5
   2123c:	00d596b3          	sll	a3,a1,a3
   21240:	0116e6b3          	or	a3,a3,a7
   21244:	00d036b3          	snez	a3,a3
   21248:	00d76733          	or	a4,a4,a3
   2124c:	00000793          	li	a5,0
   21250:	f89ff06f          	j	211d8 <__subtf3+0x2f0>
   21254:	000087b7          	lui	a5,0x8
   21258:	00148693          	add	a3,s1,1
   2125c:	ffe78713          	add	a4,a5,-2 # 7ffe <exit-0x80ea>
   21260:	00e6f733          	and	a4,a3,a4
   21264:	06071a63          	bnez	a4,212d8 <__subtf3+0x3f0>
   21268:	0115e6b3          	or	a3,a1,a7
   2126c:	04049463          	bnez	s1,212b4 <__subtf3+0x3cc>
   21270:	4e068663          	beqz	a3,2175c <__subtf3+0x874>
   21274:	00c367b3          	or	a5,t1,a2
   21278:	e40784e3          	beqz	a5,210c0 <__subtf3+0x1d8>
   2127c:	00c88633          	add	a2,a7,a2
   21280:	011637b3          	sltu	a5,a2,a7
   21284:	006585b3          	add	a1,a1,t1
   21288:	00f585b3          	add	a1,a1,a5
   2128c:	0335d793          	srl	a5,a1,0x33
   21290:	0017f793          	and	a5,a5,1
   21294:	00060893          	mv	a7,a2
   21298:	e20784e3          	beqz	a5,210c0 <__subtf3+0x1d8>
   2129c:	fff00793          	li	a5,-1
   212a0:	03379793          	sll	a5,a5,0x33
   212a4:	fff78793          	add	a5,a5,-1
   212a8:	00f5f5b3          	and	a1,a1,a5
   212ac:	00100493          	li	s1,1
   212b0:	e11ff06f          	j	210c0 <__subtf3+0x1d8>
   212b4:	fff78793          	add	a5,a5,-1
   212b8:	4a068863          	beqz	a3,21768 <__subtf3+0x880>
   212bc:	00c36633          	or	a2,t1,a2
   212c0:	00078493          	mv	s1,a5
   212c4:	de060ee3          	beqz	a2,210c0 <__subtf3+0x1d8>
   212c8:	00100593          	li	a1,1
   212cc:	02f59593          	sll	a1,a1,0x2f
   212d0:	00000513          	li	a0,0
   212d4:	d2dff06f          	j	21000 <__subtf3+0x118>
   212d8:	fff78793          	add	a5,a5,-1
   212dc:	44f68863          	beq	a3,a5,2172c <__subtf3+0x844>
   212e0:	00c88633          	add	a2,a7,a2
   212e4:	01163533          	sltu	a0,a2,a7
   212e8:	006585b3          	add	a1,a1,t1
   212ec:	00a585b3          	add	a1,a1,a0
   212f0:	03f59513          	sll	a0,a1,0x3f
   212f4:	00165613          	srl	a2,a2,0x1
   212f8:	00c568b3          	or	a7,a0,a2
   212fc:	0015d593          	srl	a1,a1,0x1
   21300:	00068493          	mv	s1,a3
   21304:	dbdff06f          	j	210c0 <__subtf3+0x1d8>
   21308:	12e05463          	blez	a4,21430 <__subtf3+0x548>
   2130c:	04081e63          	bnez	a6,21368 <__subtf3+0x480>
   21310:	00c367b3          	or	a5,t1,a2
   21314:	da0786e3          	beqz	a5,210c0 <__subtf3+0x1d8>
   21318:	fff7071b          	addw	a4,a4,-1
   2131c:	02071a63          	bnez	a4,21350 <__subtf3+0x468>
   21320:	40c88633          	sub	a2,a7,a2
   21324:	00c8b7b3          	sltu	a5,a7,a2
   21328:	406585b3          	sub	a1,a1,t1
   2132c:	00060893          	mv	a7,a2
   21330:	40f585b3          	sub	a1,a1,a5
   21334:	0335d793          	srl	a5,a1,0x33
   21338:	0017f793          	and	a5,a5,1
   2133c:	d80782e3          	beqz	a5,210c0 <__subtf3+0x1d8>
   21340:	00d59413          	sll	s0,a1,0xd
   21344:	00d45413          	srl	s0,s0,0xd
   21348:	00088993          	mv	s3,a7
   2134c:	2cc0006f          	j	21618 <__subtf3+0x730>
   21350:	d7c488e3          	beq	s1,t3,210c0 <__subtf3+0x1d8>
   21354:	07400793          	li	a5,116
   21358:	02e7d463          	bge	a5,a4,21380 <__subtf3+0x498>
   2135c:	00000713          	li	a4,0
   21360:	00100793          	li	a5,1
   21364:	0480006f          	j	213ac <__subtf3+0x4c4>
   21368:	d5c48ce3          	beq	s1,t3,210c0 <__subtf3+0x1d8>
   2136c:	07400793          	li	a5,116
   21370:	fee7c6e3          	blt	a5,a4,2135c <__subtf3+0x474>
   21374:	00100793          	li	a5,1
   21378:	03379793          	sll	a5,a5,0x33
   2137c:	00f36333          	or	t1,t1,a5
   21380:	03f00793          	li	a5,63
   21384:	04e7c063          	blt	a5,a4,213c4 <__subtf3+0x4dc>
   21388:	04000693          	li	a3,64
   2138c:	40e686bb          	subw	a3,a3,a4
   21390:	00d317b3          	sll	a5,t1,a3
   21394:	00e65533          	srl	a0,a2,a4
   21398:	00d616b3          	sll	a3,a2,a3
   2139c:	00a7e7b3          	or	a5,a5,a0
   213a0:	00d036b3          	snez	a3,a3
   213a4:	00d7e7b3          	or	a5,a5,a3
   213a8:	00e35733          	srl	a4,t1,a4
   213ac:	40f887b3          	sub	a5,a7,a5
   213b0:	00f8b6b3          	sltu	a3,a7,a5
   213b4:	40e58733          	sub	a4,a1,a4
   213b8:	00078893          	mv	a7,a5
   213bc:	40d705b3          	sub	a1,a4,a3
   213c0:	f75ff06f          	j	21334 <__subtf3+0x44c>
   213c4:	fc07079b          	addw	a5,a4,-64
   213c8:	04000513          	li	a0,64
   213cc:	00f357b3          	srl	a5,t1,a5
   213d0:	00000693          	li	a3,0
   213d4:	00a70863          	beq	a4,a0,213e4 <__subtf3+0x4fc>
   213d8:	08000693          	li	a3,128
   213dc:	40e686bb          	subw	a3,a3,a4
   213e0:	00d316b3          	sll	a3,t1,a3
   213e4:	00c6e6b3          	or	a3,a3,a2
   213e8:	00d036b3          	snez	a3,a3
   213ec:	00d7e7b3          	or	a5,a5,a3
   213f0:	00000713          	li	a4,0
   213f4:	fb9ff06f          	j	213ac <__subtf3+0x4c4>
   213f8:	12070a63          	beqz	a4,2152c <__subtf3+0x644>
   213fc:	04048263          	beqz	s1,21440 <__subtf3+0x558>
   21400:	00030593          	mv	a1,t1
   21404:	00060893          	mv	a7,a2
   21408:	00080493          	mv	s1,a6
   2140c:	00078913          	mv	s2,a5
   21410:	cb1ff06f          	j	210c0 <__subtf3+0x1d8>
   21414:	10070c63          	beqz	a4,2152c <__subtf3+0x644>
   21418:	02048063          	beqz	s1,21438 <__subtf3+0x550>
   2141c:	00000593          	li	a1,0
   21420:	00000893          	li	a7,0
   21424:	00080493          	mv	s1,a6
   21428:	000e8913          	mv	s2,t4
   2142c:	b95ff06f          	j	20fc0 <__subtf3+0xd8>
   21430:	0e070e63          	beqz	a4,2152c <__subtf3+0x644>
   21434:	04049e63          	bnez	s1,21490 <__subtf3+0x5a8>
   21438:	000e8913          	mv	s2,t4
   2143c:	0080006f          	j	21444 <__subtf3+0x55c>
   21440:	00078913          	mv	s2,a5
   21444:	0115e7b3          	or	a5,a1,a7
   21448:	da078ae3          	beqz	a5,211fc <__subtf3+0x314>
   2144c:	fff74793          	not	a5,a4
   21450:	02079063          	bnez	a5,21470 <__subtf3+0x588>
   21454:	41160533          	sub	a0,a2,a7
   21458:	40b305b3          	sub	a1,t1,a1
   2145c:	00a63633          	sltu	a2,a2,a0
   21460:	00050893          	mv	a7,a0
   21464:	40c585b3          	sub	a1,a1,a2
   21468:	00080493          	mv	s1,a6
   2146c:	ec9ff06f          	j	21334 <__subtf3+0x44c>
   21470:	00008737          	lui	a4,0x8
   21474:	fff70713          	add	a4,a4,-1 # 7fff <exit-0x80e9>
   21478:	d8e802e3          	beq	a6,a4,211fc <__subtf3+0x314>
   2147c:	07400713          	li	a4,116
   21480:	02f75663          	bge	a4,a5,214ac <__subtf3+0x5c4>
   21484:	00000793          	li	a5,0
   21488:	00100713          	li	a4,1
   2148c:	04c0006f          	j	214d8 <__subtf3+0x5f0>
   21490:	f8c00793          	li	a5,-116
   21494:	08f74863          	blt	a4,a5,21524 <__subtf3+0x63c>
   21498:	40e007bb          	negw	a5,a4
   2149c:	00100713          	li	a4,1
   214a0:	03371713          	sll	a4,a4,0x33
   214a4:	00e5e5b3          	or	a1,a1,a4
   214a8:	000e8913          	mv	s2,t4
   214ac:	03f00713          	li	a4,63
   214b0:	04f74063          	blt	a4,a5,214f0 <__subtf3+0x608>
   214b4:	04000693          	li	a3,64
   214b8:	40f686bb          	subw	a3,a3,a5
   214bc:	00d59733          	sll	a4,a1,a3
   214c0:	00f8d533          	srl	a0,a7,a5
   214c4:	00d896b3          	sll	a3,a7,a3
   214c8:	00a76733          	or	a4,a4,a0
   214cc:	00d036b3          	snez	a3,a3
   214d0:	00d76733          	or	a4,a4,a3
   214d4:	00f5d7b3          	srl	a5,a1,a5
   214d8:	40e60733          	sub	a4,a2,a4
   214dc:	40f307b3          	sub	a5,t1,a5
   214e0:	00e635b3          	sltu	a1,a2,a4
   214e4:	00070893          	mv	a7,a4
   214e8:	40b785b3          	sub	a1,a5,a1
   214ec:	f7dff06f          	j	21468 <__subtf3+0x580>
   214f0:	fc07871b          	addw	a4,a5,-64
   214f4:	04000513          	li	a0,64
   214f8:	00e5d733          	srl	a4,a1,a4
   214fc:	00000693          	li	a3,0
   21500:	00a78863          	beq	a5,a0,21510 <__subtf3+0x628>
   21504:	08000693          	li	a3,128
   21508:	40f686bb          	subw	a3,a3,a5
   2150c:	00d596b3          	sll	a3,a1,a3
   21510:	0116e6b3          	or	a3,a3,a7
   21514:	00d036b3          	snez	a3,a3
   21518:	00d76733          	or	a4,a4,a3
   2151c:	00000793          	li	a5,0
   21520:	fb9ff06f          	j	214d8 <__subtf3+0x5f0>
   21524:	000e8913          	mv	s2,t4
   21528:	f5dff06f          	j	21484 <__subtf3+0x59c>
   2152c:	000087b7          	lui	a5,0x8
   21530:	00148713          	add	a4,s1,1
   21534:	ffe78693          	add	a3,a5,-2 # 7ffe <exit-0x80ea>
   21538:	00d77733          	and	a4,a4,a3
   2153c:	0a071463          	bnez	a4,215e4 <__subtf3+0x6fc>
   21540:	00c36533          	or	a0,t1,a2
   21544:	0115e6b3          	or	a3,a1,a7
   21548:	06049863          	bnez	s1,215b8 <__subtf3+0x6d0>
   2154c:	00069e63          	bnez	a3,21568 <__subtf3+0x680>
   21550:	00000593          	li	a1,0
   21554:	aa0506e3          	beqz	a0,21000 <__subtf3+0x118>
   21558:	00030593          	mv	a1,t1
   2155c:	00060893          	mv	a7,a2
   21560:	000e8913          	mv	s2,t4
   21564:	b5dff06f          	j	210c0 <__subtf3+0x1d8>
   21568:	b4050ce3          	beqz	a0,210c0 <__subtf3+0x1d8>
   2156c:	40c886b3          	sub	a3,a7,a2
   21570:	00d8b533          	sltu	a0,a7,a3
   21574:	406587b3          	sub	a5,a1,t1
   21578:	40a787b3          	sub	a5,a5,a0
   2157c:	0337d513          	srl	a0,a5,0x33
   21580:	00157513          	and	a0,a0,1
   21584:	00050e63          	beqz	a0,215a0 <__subtf3+0x6b8>
   21588:	41160533          	sub	a0,a2,a7
   2158c:	40b305b3          	sub	a1,t1,a1
   21590:	00a63633          	sltu	a2,a2,a0
   21594:	00050893          	mv	a7,a0
   21598:	40c585b3          	sub	a1,a1,a2
   2159c:	fc5ff06f          	j	21560 <__subtf3+0x678>
   215a0:	00f6e533          	or	a0,a3,a5
   215a4:	00000593          	li	a1,0
   215a8:	a4050ce3          	beqz	a0,21000 <__subtf3+0x118>
   215ac:	00078593          	mv	a1,a5
   215b0:	00068893          	mv	a7,a3
   215b4:	b0dff06f          	j	210c0 <__subtf3+0x1d8>
   215b8:	fff78793          	add	a5,a5,-1
   215bc:	00069e63          	bnez	a3,215d8 <__subtf3+0x6f0>
   215c0:	1a050a63          	beqz	a0,21774 <__subtf3+0x88c>
   215c4:	00030593          	mv	a1,t1
   215c8:	00060893          	mv	a7,a2
   215cc:	000e8913          	mv	s2,t4
   215d0:	00078493          	mv	s1,a5
   215d4:	aedff06f          	j	210c0 <__subtf3+0x1d8>
   215d8:	00078493          	mv	s1,a5
   215dc:	ae0502e3          	beqz	a0,210c0 <__subtf3+0x1d8>
   215e0:	ce9ff06f          	j	212c8 <__subtf3+0x3e0>
   215e4:	40c88533          	sub	a0,a7,a2
   215e8:	00a8b7b3          	sltu	a5,a7,a0
   215ec:	40658433          	sub	s0,a1,t1
   215f0:	40f40433          	sub	s0,s0,a5
   215f4:	03345793          	srl	a5,s0,0x33
   215f8:	0017f793          	and	a5,a5,1
   215fc:	00050993          	mv	s3,a0
   21600:	06078c63          	beqz	a5,21678 <__subtf3+0x790>
   21604:	411609b3          	sub	s3,a2,a7
   21608:	40b30433          	sub	s0,t1,a1
   2160c:	01363633          	sltu	a2,a2,s3
   21610:	40c40433          	sub	s0,s0,a2
   21614:	000e8913          	mv	s2,t4
   21618:	06040c63          	beqz	s0,21690 <__subtf3+0x7a8>
   2161c:	00040513          	mv	a0,s0
   21620:	640000ef          	jal	21c60 <__clzdi2>
   21624:	ff45071b          	addw	a4,a0,-12
   21628:	04000593          	li	a1,64
   2162c:	40e585bb          	subw	a1,a1,a4
   21630:	00e41433          	sll	s0,s0,a4
   21634:	00b9d5b3          	srl	a1,s3,a1
   21638:	0085e5b3          	or	a1,a1,s0
   2163c:	00e99433          	sll	s0,s3,a4
   21640:	10974063          	blt	a4,s1,21740 <__subtf3+0x858>
   21644:	4097073b          	subw	a4,a4,s1
   21648:	0017071b          	addw	a4,a4,1
   2164c:	04000793          	li	a5,64
   21650:	40e787bb          	subw	a5,a5,a4
   21654:	00f59533          	sll	a0,a1,a5
   21658:	00e456b3          	srl	a3,s0,a4
   2165c:	00f417b3          	sll	a5,s0,a5
   21660:	00d56533          	or	a0,a0,a3
   21664:	00f037b3          	snez	a5,a5
   21668:	00f568b3          	or	a7,a0,a5
   2166c:	00e5d5b3          	srl	a1,a1,a4
   21670:	00000493          	li	s1,0
   21674:	a4dff06f          	j	210c0 <__subtf3+0x1d8>
   21678:	00856533          	or	a0,a0,s0
   2167c:	f8051ee3          	bnez	a0,21618 <__subtf3+0x730>
   21680:	00000593          	li	a1,0
   21684:	00000493          	li	s1,0
   21688:	00000713          	li	a4,0
   2168c:	975ff06f          	j	21000 <__subtf3+0x118>
   21690:	00098513          	mv	a0,s3
   21694:	5cc000ef          	jal	21c60 <__clzdi2>
   21698:	0345071b          	addw	a4,a0,52
   2169c:	03f00613          	li	a2,63
   216a0:	f8e654e3          	bge	a2,a4,21628 <__subtf3+0x740>
   216a4:	ff45059b          	addw	a1,a0,-12
   216a8:	00b995b3          	sll	a1,s3,a1
   216ac:	04974063          	blt	a4,s1,216ec <__subtf3+0x804>
   216b0:	409707bb          	subw	a5,a4,s1
   216b4:	0017871b          	addw	a4,a5,1
   216b8:	f8e65ae3          	bge	a2,a4,2164c <__subtf3+0x764>
   216bc:	fc17879b          	addw	a5,a5,-63
   216c0:	04000613          	li	a2,64
   216c4:	00f5d7b3          	srl	a5,a1,a5
   216c8:	00000513          	li	a0,0
   216cc:	00c70863          	beq	a4,a2,216dc <__subtf3+0x7f4>
   216d0:	08000513          	li	a0,128
   216d4:	40e5053b          	subw	a0,a0,a4
   216d8:	00a59533          	sll	a0,a1,a0
   216dc:	00a03533          	snez	a0,a0
   216e0:	00f568b3          	or	a7,a0,a5
   216e4:	00000593          	li	a1,0
   216e8:	f89ff06f          	j	21670 <__subtf3+0x788>
   216ec:	fff00793          	li	a5,-1
   216f0:	03379793          	sll	a5,a5,0x33
   216f4:	fff78793          	add	a5,a5,-1
   216f8:	40e484b3          	sub	s1,s1,a4
   216fc:	00f5f5b3          	and	a1,a1,a5
   21700:	00000893          	li	a7,0
   21704:	03d59793          	sll	a5,a1,0x3d
   21708:	0038d513          	srl	a0,a7,0x3
   2170c:	00a7e533          	or	a0,a5,a0
   21710:	000087b7          	lui	a5,0x8
   21714:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   21718:	0035d593          	srl	a1,a1,0x3
   2171c:	00090713          	mv	a4,s2
   21720:	8ef490e3          	bne	s1,a5,21000 <__subtf3+0x118>
   21724:	00b565b3          	or	a1,a0,a1
   21728:	06059263          	bnez	a1,2178c <__subtf3+0x8a4>
   2172c:	000087b7          	lui	a5,0x8
   21730:	00090713          	mv	a4,s2
   21734:	fff78493          	add	s1,a5,-1 # 7fff <exit-0x80e9>
   21738:	00000593          	li	a1,0
   2173c:	b95ff06f          	j	212d0 <__subtf3+0x3e8>
   21740:	fff00793          	li	a5,-1
   21744:	03379793          	sll	a5,a5,0x33
   21748:	fff78793          	add	a5,a5,-1
   2174c:	40e484b3          	sub	s1,s1,a4
   21750:	00f5f5b3          	and	a1,a1,a5
   21754:	00040893          	mv	a7,s0
   21758:	969ff06f          	j	210c0 <__subtf3+0x1d8>
   2175c:	00030593          	mv	a1,t1
   21760:	00060893          	mv	a7,a2
   21764:	95dff06f          	j	210c0 <__subtf3+0x1d8>
   21768:	00030593          	mv	a1,t1
   2176c:	00060893          	mv	a7,a2
   21770:	e61ff06f          	j	215d0 <__subtf3+0x6e8>
   21774:	00100593          	li	a1,1
   21778:	00078493          	mv	s1,a5
   2177c:	02f59593          	sll	a1,a1,0x2f
   21780:	881ff06f          	j	21000 <__subtf3+0x118>
   21784:	00090713          	mv	a4,s2
   21788:	fb1ff06f          	j	21738 <__subtf3+0x850>
   2178c:	00100593          	li	a1,1
   21790:	02f59593          	sll	a1,a1,0x2f
   21794:	00000513          	li	a0,0
   21798:	ef1ff06f          	j	21688 <__subtf3+0x7a0>

000000000002179c <__fixtfsi>:
   2179c:	00159713          	sll	a4,a1,0x1
   217a0:	000047b7          	lui	a5,0x4
   217a4:	03175713          	srl	a4,a4,0x31
   217a8:	ffe78613          	add	a2,a5,-2 # 3ffe <exit-0xc0ea>
   217ac:	03f5d693          	srl	a3,a1,0x3f
   217b0:	00000513          	li	a0,0
   217b4:	04e65663          	bge	a2,a4,21800 <__fixtfsi+0x64>
   217b8:	01d78793          	add	a5,a5,29
   217bc:	00e7da63          	bge	a5,a4,217d0 <__fixtfsi+0x34>
   217c0:	80000537          	lui	a0,0x80000
   217c4:	fff54513          	not	a0,a0
   217c8:	00d5053b          	addw	a0,a0,a3
   217cc:	00008067          	ret
   217d0:	01059513          	sll	a0,a1,0x10
   217d4:	00100793          	li	a5,1
   217d8:	03079793          	sll	a5,a5,0x30
   217dc:	01055513          	srl	a0,a0,0x10
   217e0:	00f56533          	or	a0,a0,a5
   217e4:	000047b7          	lui	a5,0x4
   217e8:	02f7879b          	addw	a5,a5,47 # 402f <exit-0xc0b9>
   217ec:	40e787bb          	subw	a5,a5,a4
   217f0:	00f55533          	srl	a0,a0,a5
   217f4:	0005051b          	sext.w	a0,a0
   217f8:	00068463          	beqz	a3,21800 <__fixtfsi+0x64>
   217fc:	40a0053b          	negw	a0,a0
   21800:	00008067          	ret

0000000000021804 <__floatsitf>:
   21804:	fe010113          	add	sp,sp,-32
   21808:	00113c23          	sd	ra,24(sp)
   2180c:	00813823          	sd	s0,16(sp)
   21810:	00913423          	sd	s1,8(sp)
   21814:	06050463          	beqz	a0,2187c <__floatsitf+0x78>
   21818:	0005079b          	sext.w	a5,a0
   2181c:	03f55493          	srl	s1,a0,0x3f
   21820:	00055463          	bgez	a0,21828 <__floatsitf+0x24>
   21824:	40f007bb          	negw	a5,a5
   21828:	02079413          	sll	s0,a5,0x20
   2182c:	02045413          	srl	s0,s0,0x20
   21830:	00040513          	mv	a0,s0
   21834:	42c000ef          	jal	21c60 <__clzdi2>
   21838:	000045b7          	lui	a1,0x4
   2183c:	03e5859b          	addw	a1,a1,62 # 403e <exit-0xc0aa>
   21840:	40a585bb          	subw	a1,a1,a0
   21844:	ff15051b          	addw	a0,a0,-15 # 7ffffff1 <__BSS_END__+0x7ffdb209>
   21848:	00a417b3          	sll	a5,s0,a0
   2184c:	01813083          	ld	ra,24(sp)
   21850:	01013403          	ld	s0,16(sp)
   21854:	00f4949b          	sllw	s1,s1,0xf
   21858:	0095e5b3          	or	a1,a1,s1
   2185c:	01079793          	sll	a5,a5,0x10
   21860:	03059593          	sll	a1,a1,0x30
   21864:	0107d793          	srl	a5,a5,0x10
   21868:	00813483          	ld	s1,8(sp)
   2186c:	00000513          	li	a0,0
   21870:	00b7e5b3          	or	a1,a5,a1
   21874:	02010113          	add	sp,sp,32
   21878:	00008067          	ret
   2187c:	00000793          	li	a5,0
   21880:	00000593          	li	a1,0
   21884:	00000493          	li	s1,0
   21888:	fc5ff06f          	j	2184c <__floatsitf+0x48>

000000000002188c <__extenddftf2>:
   2188c:	03455793          	srl	a5,a0,0x34
   21890:	7ff7f793          	and	a5,a5,2047
   21894:	fe010113          	add	sp,sp,-32
   21898:	00178713          	add	a4,a5,1
   2189c:	00813823          	sd	s0,16(sp)
   218a0:	00913423          	sd	s1,8(sp)
   218a4:	00c51413          	sll	s0,a0,0xc
   218a8:	00113c23          	sd	ra,24(sp)
   218ac:	7fe77713          	and	a4,a4,2046
   218b0:	00c45413          	srl	s0,s0,0xc
   218b4:	03f55493          	srl	s1,a0,0x3f
   218b8:	04070463          	beqz	a4,21900 <__extenddftf2+0x74>
   218bc:	00004737          	lui	a4,0x4
   218c0:	c0070713          	add	a4,a4,-1024 # 3c00 <exit-0xc4e8>
   218c4:	00445593          	srl	a1,s0,0x4
   218c8:	00e787b3          	add	a5,a5,a4
   218cc:	03c41413          	sll	s0,s0,0x3c
   218d0:	00f4951b          	sllw	a0,s1,0xf
   218d4:	01813083          	ld	ra,24(sp)
   218d8:	00a7e7b3          	or	a5,a5,a0
   218dc:	00040513          	mv	a0,s0
   218e0:	01013403          	ld	s0,16(sp)
   218e4:	01059593          	sll	a1,a1,0x10
   218e8:	03079793          	sll	a5,a5,0x30
   218ec:	0105d593          	srl	a1,a1,0x10
   218f0:	00813483          	ld	s1,8(sp)
   218f4:	00f5e5b3          	or	a1,a1,a5
   218f8:	02010113          	add	sp,sp,32
   218fc:	00008067          	ret
   21900:	04079a63          	bnez	a5,21954 <__extenddftf2+0xc8>
   21904:	00000593          	li	a1,0
   21908:	fc0404e3          	beqz	s0,218d0 <__extenddftf2+0x44>
   2190c:	00040513          	mv	a0,s0
   21910:	350000ef          	jal	21c60 <__clzdi2>
   21914:	0005071b          	sext.w	a4,a0
   21918:	00e00793          	li	a5,14
   2191c:	02e7c463          	blt	a5,a4,21944 <__extenddftf2+0xb8>
   21920:	00f00593          	li	a1,15
   21924:	40a585bb          	subw	a1,a1,a0
   21928:	0315079b          	addw	a5,a0,49
   2192c:	00b455b3          	srl	a1,s0,a1
   21930:	00f41433          	sll	s0,s0,a5
   21934:	000047b7          	lui	a5,0x4
   21938:	c0c7879b          	addw	a5,a5,-1012 # 3c0c <exit-0xc4dc>
   2193c:	40a787bb          	subw	a5,a5,a0
   21940:	f91ff06f          	j	218d0 <__extenddftf2+0x44>
   21944:	ff15059b          	addw	a1,a0,-15
   21948:	00b415b3          	sll	a1,s0,a1
   2194c:	00000413          	li	s0,0
   21950:	fe5ff06f          	j	21934 <__extenddftf2+0xa8>
   21954:	00000593          	li	a1,0
   21958:	00040c63          	beqz	s0,21970 <__extenddftf2+0xe4>
   2195c:	00100793          	li	a5,1
   21960:	00445593          	srl	a1,s0,0x4
   21964:	02f79793          	sll	a5,a5,0x2f
   21968:	00f5e5b3          	or	a1,a1,a5
   2196c:	03c41413          	sll	s0,s0,0x3c
   21970:	000087b7          	lui	a5,0x8
   21974:	fff78793          	add	a5,a5,-1 # 7fff <exit-0x80e9>
   21978:	f59ff06f          	j	218d0 <__extenddftf2+0x44>

000000000002197c <__trunctfdf2>:
   2197c:	00008737          	lui	a4,0x8
   21980:	fff70693          	add	a3,a4,-1 # 7fff <exit-0x80e9>
   21984:	0305d793          	srl	a5,a1,0x30
   21988:	03f5d813          	srl	a6,a1,0x3f
   2198c:	01059593          	sll	a1,a1,0x10
   21990:	00d7f7b3          	and	a5,a5,a3
   21994:	00d5d593          	srl	a1,a1,0xd
   21998:	03d55693          	srl	a3,a0,0x3d
   2199c:	00b6e6b3          	or	a3,a3,a1
   219a0:	ffe70713          	add	a4,a4,-2
   219a4:	00178593          	add	a1,a5,1
   219a8:	00e5f733          	and	a4,a1,a4
   219ac:	00351613          	sll	a2,a0,0x3
   219b0:	10070e63          	beqz	a4,21acc <__trunctfdf2+0x150>
   219b4:	ffffc737          	lui	a4,0xffffc
   219b8:	40070713          	add	a4,a4,1024 # ffffffffffffc400 <__BSS_END__+0xfffffffffffd7618>
   219bc:	00e787b3          	add	a5,a5,a4
   219c0:	7fe00713          	li	a4,2046
   219c4:	16f74463          	blt	a4,a5,21b2c <__trunctfdf2+0x1b0>
   219c8:	0af04a63          	bgtz	a5,21a7c <__trunctfdf2+0x100>
   219cc:	fcc00713          	li	a4,-52
   219d0:	16e7c263          	blt	a5,a4,21b34 <__trunctfdf2+0x1b8>
   219d4:	00100713          	li	a4,1
   219d8:	03d00893          	li	a7,61
   219dc:	03371713          	sll	a4,a4,0x33
   219e0:	40f888b3          	sub	a7,a7,a5
   219e4:	0007851b          	sext.w	a0,a5
   219e8:	03f00793          	li	a5,63
   219ec:	00e6e6b3          	or	a3,a3,a4
   219f0:	0317cc63          	blt	a5,a7,21a28 <__trunctfdf2+0xac>
   219f4:	03d00793          	li	a5,61
   219f8:	0035071b          	addw	a4,a0,3
   219fc:	40a787bb          	subw	a5,a5,a0
   21a00:	00f657b3          	srl	a5,a2,a5
   21a04:	00e61633          	sll	a2,a2,a4
   21a08:	00c03633          	snez	a2,a2
   21a0c:	00c7e7b3          	or	a5,a5,a2
   21a10:	00e696b3          	sll	a3,a3,a4
   21a14:	00f6e6b3          	or	a3,a3,a5
   21a18:	0076f793          	and	a5,a3,7
   21a1c:	0c079c63          	bnez	a5,21af4 <__trunctfdf2+0x178>
   21a20:	0036d713          	srl	a4,a3,0x3
   21a24:	03c0006f          	j	21a60 <__trunctfdf2+0xe4>
   21a28:	ffd00713          	li	a4,-3
   21a2c:	40a7073b          	subw	a4,a4,a0
   21a30:	04000793          	li	a5,64
   21a34:	00e6d733          	srl	a4,a3,a4
   21a38:	00000593          	li	a1,0
   21a3c:	00f88663          	beq	a7,a5,21a48 <__trunctfdf2+0xcc>
   21a40:	0435079b          	addw	a5,a0,67
   21a44:	00f695b3          	sll	a1,a3,a5
   21a48:	00c5e5b3          	or	a1,a1,a2
   21a4c:	00b035b3          	snez	a1,a1
   21a50:	00b76733          	or	a4,a4,a1
   21a54:	00777793          	and	a5,a4,7
   21a58:	0a079a63          	bnez	a5,21b0c <__trunctfdf2+0x190>
   21a5c:	00375713          	srl	a4,a4,0x3
   21a60:	00c71713          	sll	a4,a4,0xc
   21a64:	00c75713          	srl	a4,a4,0xc
   21a68:	03479793          	sll	a5,a5,0x34
   21a6c:	00e7e7b3          	or	a5,a5,a4
   21a70:	03f81513          	sll	a0,a6,0x3f
   21a74:	00a7e533          	or	a0,a5,a0
   21a78:	00008067          	ret
   21a7c:	00751713          	sll	a4,a0,0x7
   21a80:	00e03733          	snez	a4,a4
   21a84:	03c65613          	srl	a2,a2,0x3c
   21a88:	00c76733          	or	a4,a4,a2
   21a8c:	00469693          	sll	a3,a3,0x4
   21a90:	00e6e6b3          	or	a3,a3,a4
   21a94:	00777713          	and	a4,a4,7
   21a98:	f80704e3          	beqz	a4,21a20 <__trunctfdf2+0xa4>
   21a9c:	00f6f613          	and	a2,a3,15
   21aa0:	00400593          	li	a1,4
   21aa4:	0036d713          	srl	a4,a3,0x3
   21aa8:	fab60ce3          	beq	a2,a1,21a60 <__trunctfdf2+0xe4>
   21aac:	00468693          	add	a3,a3,4
   21ab0:	0376d613          	srl	a2,a3,0x37
   21ab4:	00167613          	and	a2,a2,1
   21ab8:	0036d713          	srl	a4,a3,0x3
   21abc:	fa0602e3          	beqz	a2,21a60 <__trunctfdf2+0xe4>
   21ac0:	00178793          	add	a5,a5,1
   21ac4:	00000713          	li	a4,0
   21ac8:	f99ff06f          	j	21a60 <__trunctfdf2+0xe4>
   21acc:	00000713          	li	a4,0
   21ad0:	f80788e3          	beqz	a5,21a60 <__trunctfdf2+0xe4>
   21ad4:	00c6e733          	or	a4,a3,a2
   21ad8:	7ff00793          	li	a5,2047
   21adc:	f80702e3          	beqz	a4,21a60 <__trunctfdf2+0xe4>
   21ae0:	00100713          	li	a4,1
   21ae4:	00000813          	li	a6,0
   21ae8:	7ff00793          	li	a5,2047
   21aec:	03371713          	sll	a4,a4,0x33
   21af0:	f71ff06f          	j	21a60 <__trunctfdf2+0xe4>
   21af4:	00f6f793          	and	a5,a3,15
   21af8:	00400713          	li	a4,4
   21afc:	02e79463          	bne	a5,a4,21b24 <__trunctfdf2+0x1a8>
   21b00:	0036d713          	srl	a4,a3,0x3
   21b04:	00000793          	li	a5,0
   21b08:	f59ff06f          	j	21a60 <__trunctfdf2+0xe4>
   21b0c:	00f77793          	and	a5,a4,15
   21b10:	00400693          	li	a3,4
   21b14:	00d78463          	beq	a5,a3,21b1c <__trunctfdf2+0x1a0>
   21b18:	00470713          	add	a4,a4,4
   21b1c:	00375713          	srl	a4,a4,0x3
   21b20:	fe5ff06f          	j	21b04 <__trunctfdf2+0x188>
   21b24:	00000793          	li	a5,0
   21b28:	f85ff06f          	j	21aac <__trunctfdf2+0x130>
   21b2c:	7ff00793          	li	a5,2047
   21b30:	f95ff06f          	j	21ac4 <__trunctfdf2+0x148>
   21b34:	00000793          	li	a5,0
   21b38:	f8dff06f          	j	21ac4 <__trunctfdf2+0x148>

0000000000021b3c <__muldi3>:
   21b3c:	00050613          	mv	a2,a0
   21b40:	00000513          	li	a0,0
   21b44:	0015f693          	and	a3,a1,1
   21b48:	00068463          	beqz	a3,21b50 <__muldi3+0x14>
   21b4c:	00c50533          	add	a0,a0,a2
   21b50:	0015d593          	srl	a1,a1,0x1
   21b54:	00161613          	sll	a2,a2,0x1
   21b58:	fe0596e3          	bnez	a1,21b44 <__muldi3+0x8>
   21b5c:	00008067          	ret

0000000000021b60 <__udivsi3>:
   21b60:	02051513          	sll	a0,a0,0x20
   21b64:	02059593          	sll	a1,a1,0x20
   21b68:	00008293          	mv	t0,ra
   21b6c:	03c000ef          	jal	21ba8 <__hidden___udivdi3>
   21b70:	0005051b          	sext.w	a0,a0
   21b74:	00028067          	jr	t0 # 10360 <memset+0xb4>

0000000000021b78 <__umodsi3>:
   21b78:	02051513          	sll	a0,a0,0x20
   21b7c:	02059593          	sll	a1,a1,0x20
   21b80:	02055513          	srl	a0,a0,0x20
   21b84:	0205d593          	srl	a1,a1,0x20
   21b88:	00008293          	mv	t0,ra
   21b8c:	01c000ef          	jal	21ba8 <__hidden___udivdi3>
   21b90:	0005851b          	sext.w	a0,a1
   21b94:	00028067          	jr	t0

0000000000021b98 <__divsi3>:
   21b98:	fff00293          	li	t0,-1
   21b9c:	0a558c63          	beq	a1,t0,21c54 <__moddi3+0x30>

0000000000021ba0 <__divdi3>:
   21ba0:	06054063          	bltz	a0,21c00 <__umoddi3+0x10>
   21ba4:	0605c663          	bltz	a1,21c10 <__umoddi3+0x20>

0000000000021ba8 <__hidden___udivdi3>:
   21ba8:	00058613          	mv	a2,a1
   21bac:	00050593          	mv	a1,a0
   21bb0:	fff00513          	li	a0,-1
   21bb4:	02060c63          	beqz	a2,21bec <__hidden___udivdi3+0x44>
   21bb8:	00100693          	li	a3,1
   21bbc:	00b67a63          	bgeu	a2,a1,21bd0 <__hidden___udivdi3+0x28>
   21bc0:	00c05863          	blez	a2,21bd0 <__hidden___udivdi3+0x28>
   21bc4:	00161613          	sll	a2,a2,0x1
   21bc8:	00169693          	sll	a3,a3,0x1
   21bcc:	feb66ae3          	bltu	a2,a1,21bc0 <__hidden___udivdi3+0x18>
   21bd0:	00000513          	li	a0,0
   21bd4:	00c5e663          	bltu	a1,a2,21be0 <__hidden___udivdi3+0x38>
   21bd8:	40c585b3          	sub	a1,a1,a2
   21bdc:	00d56533          	or	a0,a0,a3
   21be0:	0016d693          	srl	a3,a3,0x1
   21be4:	00165613          	srl	a2,a2,0x1
   21be8:	fe0696e3          	bnez	a3,21bd4 <__hidden___udivdi3+0x2c>
   21bec:	00008067          	ret

0000000000021bf0 <__umoddi3>:
   21bf0:	00008293          	mv	t0,ra
   21bf4:	fb5ff0ef          	jal	21ba8 <__hidden___udivdi3>
   21bf8:	00058513          	mv	a0,a1
   21bfc:	00028067          	jr	t0
   21c00:	40a00533          	neg	a0,a0
   21c04:	00b04863          	bgtz	a1,21c14 <__umoddi3+0x24>
   21c08:	40b005b3          	neg	a1,a1
   21c0c:	f9dff06f          	j	21ba8 <__hidden___udivdi3>
   21c10:	40b005b3          	neg	a1,a1
   21c14:	00008293          	mv	t0,ra
   21c18:	f91ff0ef          	jal	21ba8 <__hidden___udivdi3>
   21c1c:	40a00533          	neg	a0,a0
   21c20:	00028067          	jr	t0

0000000000021c24 <__moddi3>:
   21c24:	00008293          	mv	t0,ra
   21c28:	0005ca63          	bltz	a1,21c3c <__moddi3+0x18>
   21c2c:	00054c63          	bltz	a0,21c44 <__moddi3+0x20>
   21c30:	f79ff0ef          	jal	21ba8 <__hidden___udivdi3>
   21c34:	00058513          	mv	a0,a1
   21c38:	00028067          	jr	t0
   21c3c:	40b005b3          	neg	a1,a1
   21c40:	fe0558e3          	bgez	a0,21c30 <__moddi3+0xc>
   21c44:	40a00533          	neg	a0,a0
   21c48:	f61ff0ef          	jal	21ba8 <__hidden___udivdi3>
   21c4c:	40b00533          	neg	a0,a1
   21c50:	00028067          	jr	t0
   21c54:	01f29293          	sll	t0,t0,0x1f
   21c58:	f45514e3          	bne	a0,t0,21ba0 <__divdi3>
   21c5c:	00008067          	ret

0000000000021c60 <__clzdi2>:
   21c60:	03855793          	srl	a5,a0,0x38
   21c64:	04079063          	bnez	a5,21ca4 <__clzdi2+0x44>
   21c68:	03800793          	li	a5,56
   21c6c:	ff878793          	add	a5,a5,-8
   21c70:	00078863          	beqz	a5,21c80 <__clzdi2+0x20>
   21c74:	00f55733          	srl	a4,a0,a5
   21c78:	0ff77713          	zext.b	a4,a4
   21c7c:	fe0708e3          	beqz	a4,21c6c <__clzdi2+0xc>
   21c80:	00023737          	lui	a4,0x23
   21c84:	04000693          	li	a3,64
   21c88:	40f686b3          	sub	a3,a3,a5
   21c8c:	00f55533          	srl	a0,a0,a5
   21c90:	ae070793          	add	a5,a4,-1312 # 22ae0 <__clz_tab>
   21c94:	00a787b3          	add	a5,a5,a0
   21c98:	0007c503          	lbu	a0,0(a5)
   21c9c:	40a6853b          	subw	a0,a3,a0
   21ca0:	00008067          	ret
   21ca4:	03800793          	li	a5,56
   21ca8:	fd9ff06f          	j	21c80 <__clzdi2+0x20>

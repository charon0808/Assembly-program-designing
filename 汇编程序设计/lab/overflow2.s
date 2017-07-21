
overflow2:     file format elf32-i386


Disassembly of section .init:

080482c8 <_init>:
 80482c8:	53                   	push   %ebx
 80482c9:	83 ec 08             	sub    $0x8,%esp
 80482cc:	e8 9f 00 00 00       	call   8048370 <__x86.get_pc_thunk.bx>
 80482d1:	81 c3 2f 1d 00 00    	add    $0x1d2f,%ebx
 80482d7:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80482dd:	85 c0                	test   %eax,%eax
 80482df:	74 05                	je     80482e6 <_init+0x1e>
 80482e1:	e8 4a 00 00 00       	call   8048330 <__libc_start_main@plt+0x10>
 80482e6:	83 c4 08             	add    $0x8,%esp
 80482e9:	5b                   	pop    %ebx
 80482ea:	c3                   	ret    

Disassembly of section .plt:

080482f0 <gets@plt-0x10>:
 80482f0:	ff 35 04 a0 04 08    	pushl  0x804a004
 80482f6:	ff 25 08 a0 04 08    	jmp    *0x804a008
 80482fc:	00 00                	add    %al,(%eax)
	...

08048300 <gets@plt>:
 8048300:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048306:	68 00 00 00 00       	push   $0x0
 804830b:	e9 e0 ff ff ff       	jmp    80482f0 <_init+0x28>

08048310 <puts@plt>:
 8048310:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048316:	68 08 00 00 00       	push   $0x8
 804831b:	e9 d0 ff ff ff       	jmp    80482f0 <_init+0x28>

08048320 <__libc_start_main@plt>:
 8048320:	ff 25 14 a0 04 08    	jmp    *0x804a014
 8048326:	68 10 00 00 00       	push   $0x10
 804832b:	e9 c0 ff ff ff       	jmp    80482f0 <_init+0x28>

Disassembly of section .plt.got:

08048330 <.plt.got>:
 8048330:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 8048336:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

08048340 <_start>:
 8048340:	31 ed                	xor    %ebp,%ebp
 8048342:	5e                   	pop    %esi
 8048343:	89 e1                	mov    %esp,%ecx
 8048345:	83 e4 f0             	and    $0xfffffff0,%esp
 8048348:	50                   	push   %eax
 8048349:	54                   	push   %esp
 804834a:	52                   	push   %edx
 804834b:	68 10 85 04 08       	push   $0x8048510
 8048350:	68 b0 84 04 08       	push   $0x80484b0
 8048355:	51                   	push   %ecx
 8048356:	56                   	push   %esi
 8048357:	68 62 84 04 08       	push   $0x8048462
 804835c:	e8 bf ff ff ff       	call   8048320 <__libc_start_main@plt>
 8048361:	f4                   	hlt    
 8048362:	66 90                	xchg   %ax,%ax
 8048364:	66 90                	xchg   %ax,%ax
 8048366:	66 90                	xchg   %ax,%ax
 8048368:	66 90                	xchg   %ax,%ax
 804836a:	66 90                	xchg   %ax,%ax
 804836c:	66 90                	xchg   %ax,%ax
 804836e:	66 90                	xchg   %ax,%ax

08048370 <__x86.get_pc_thunk.bx>:
 8048370:	8b 1c 24             	mov    (%esp),%ebx
 8048373:	c3                   	ret    
 8048374:	66 90                	xchg   %ax,%ax
 8048376:	66 90                	xchg   %ax,%ax
 8048378:	66 90                	xchg   %ax,%ax
 804837a:	66 90                	xchg   %ax,%ax
 804837c:	66 90                	xchg   %ax,%ax
 804837e:	66 90                	xchg   %ax,%ax

08048380 <deregister_tm_clones>:
 8048380:	b8 23 a0 04 08       	mov    $0x804a023,%eax
 8048385:	2d 20 a0 04 08       	sub    $0x804a020,%eax
 804838a:	83 f8 06             	cmp    $0x6,%eax
 804838d:	76 1a                	jbe    80483a9 <deregister_tm_clones+0x29>
 804838f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048394:	85 c0                	test   %eax,%eax
 8048396:	74 11                	je     80483a9 <deregister_tm_clones+0x29>
 8048398:	55                   	push   %ebp
 8048399:	89 e5                	mov    %esp,%ebp
 804839b:	83 ec 14             	sub    $0x14,%esp
 804839e:	68 20 a0 04 08       	push   $0x804a020
 80483a3:	ff d0                	call   *%eax
 80483a5:	83 c4 10             	add    $0x10,%esp
 80483a8:	c9                   	leave  
 80483a9:	f3 c3                	repz ret 
 80483ab:	90                   	nop
 80483ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

080483b0 <register_tm_clones>:
 80483b0:	b8 20 a0 04 08       	mov    $0x804a020,%eax
 80483b5:	2d 20 a0 04 08       	sub    $0x804a020,%eax
 80483ba:	c1 f8 02             	sar    $0x2,%eax
 80483bd:	89 c2                	mov    %eax,%edx
 80483bf:	c1 ea 1f             	shr    $0x1f,%edx
 80483c2:	01 d0                	add    %edx,%eax
 80483c4:	d1 f8                	sar    %eax
 80483c6:	74 1b                	je     80483e3 <register_tm_clones+0x33>
 80483c8:	ba 00 00 00 00       	mov    $0x0,%edx
 80483cd:	85 d2                	test   %edx,%edx
 80483cf:	74 12                	je     80483e3 <register_tm_clones+0x33>
 80483d1:	55                   	push   %ebp
 80483d2:	89 e5                	mov    %esp,%ebp
 80483d4:	83 ec 10             	sub    $0x10,%esp
 80483d7:	50                   	push   %eax
 80483d8:	68 20 a0 04 08       	push   $0x804a020
 80483dd:	ff d2                	call   *%edx
 80483df:	83 c4 10             	add    $0x10,%esp
 80483e2:	c9                   	leave  
 80483e3:	f3 c3                	repz ret 
 80483e5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80483e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080483f0 <__do_global_dtors_aux>:
 80483f0:	80 3d 20 a0 04 08 00 	cmpb   $0x0,0x804a020
 80483f7:	75 13                	jne    804840c <__do_global_dtors_aux+0x1c>
 80483f9:	55                   	push   %ebp
 80483fa:	89 e5                	mov    %esp,%ebp
 80483fc:	83 ec 08             	sub    $0x8,%esp
 80483ff:	e8 7c ff ff ff       	call   8048380 <deregister_tm_clones>
 8048404:	c6 05 20 a0 04 08 01 	movb   $0x1,0x804a020
 804840b:	c9                   	leave  
 804840c:	f3 c3                	repz ret 
 804840e:	66 90                	xchg   %ax,%ax

08048410 <frame_dummy>:
 8048410:	b8 10 9f 04 08       	mov    $0x8049f10,%eax
 8048415:	8b 10                	mov    (%eax),%edx
 8048417:	85 d2                	test   %edx,%edx
 8048419:	75 05                	jne    8048420 <frame_dummy+0x10>
 804841b:	eb 93                	jmp    80483b0 <register_tm_clones>
 804841d:	8d 76 00             	lea    0x0(%esi),%esi
 8048420:	ba 00 00 00 00       	mov    $0x0,%edx
 8048425:	85 d2                	test   %edx,%edx
 8048427:	74 f2                	je     804841b <frame_dummy+0xb>
 8048429:	55                   	push   %ebp
 804842a:	89 e5                	mov    %esp,%ebp
 804842c:	83 ec 14             	sub    $0x14,%esp
 804842f:	50                   	push   %eax
 8048430:	ff d2                	call   *%edx
 8048432:	83 c4 10             	add    $0x10,%esp
 8048435:	c9                   	leave  
 8048436:	e9 75 ff ff ff       	jmp    80483b0 <register_tm_clones>

0804843b <doit>:
 804843b:	55                   	push   %ebp
 804843c:	89 e5                	mov    %esp,%ebp
 804843e:	83 ec 18             	sub    $0x18,%esp
 8048441:	83 ec 0c             	sub    $0xc,%esp
 8048444:	8d 45 f0             	lea    -0x10(%ebp),%eax
 8048447:	50                   	push   %eax
 8048448:	e8 b3 fe ff ff       	call   8048300 <gets@plt>
 804844d:	83 c4 10             	add    $0x10,%esp
 8048450:	83 ec 0c             	sub    $0xc,%esp
 8048453:	8d 45 f0             	lea    -0x10(%ebp),%eax
 8048456:	50                   	push   %eax
 8048457:	e8 b4 fe ff ff       	call   8048310 <puts@plt>
 804845c:	83 c4 10             	add    $0x10,%esp
 804845f:	90                   	nop
 8048460:	c9                   	leave  
 8048461:	c3                   	ret    

08048462 <main>:
 8048462:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048466:	83 e4 f0             	and    $0xfffffff0,%esp
 8048469:	ff 71 fc             	pushl  -0x4(%ecx)
 804846c:	55                   	push   %ebp
 804846d:	89 e5                	mov    %esp,%ebp
 804846f:	51                   	push   %ecx
 8048470:	83 ec 04             	sub    $0x4,%esp
 8048473:	83 ec 0c             	sub    $0xc,%esp
 8048476:	68 30 85 04 08       	push   $0x8048530
 804847b:	e8 90 fe ff ff       	call   8048310 <puts@plt>
 8048480:	83 c4 10             	add    $0x10,%esp
 8048483:	e8 b3 ff ff ff       	call   804843b <doit>
 8048488:	83 ec 0c             	sub    $0xc,%esp
 804848b:	68 41 85 04 08       	push   $0x8048541
 8048490:	e8 7b fe ff ff       	call   8048310 <puts@plt>
 8048495:	83 c4 10             	add    $0x10,%esp
 8048498:	b8 00 00 00 00       	mov    $0x0,%eax
 804849d:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80484a0:	c9                   	leave  
 80484a1:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80484a4:	c3                   	ret    
 80484a5:	66 90                	xchg   %ax,%ax
 80484a7:	66 90                	xchg   %ax,%ax
 80484a9:	66 90                	xchg   %ax,%ax
 80484ab:	66 90                	xchg   %ax,%ax
 80484ad:	66 90                	xchg   %ax,%ax
 80484af:	90                   	nop

080484b0 <__libc_csu_init>:
 80484b0:	55                   	push   %ebp
 80484b1:	57                   	push   %edi
 80484b2:	56                   	push   %esi
 80484b3:	53                   	push   %ebx
 80484b4:	e8 b7 fe ff ff       	call   8048370 <__x86.get_pc_thunk.bx>
 80484b9:	81 c3 47 1b 00 00    	add    $0x1b47,%ebx
 80484bf:	83 ec 0c             	sub    $0xc,%esp
 80484c2:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 80484c6:	8d b3 0c ff ff ff    	lea    -0xf4(%ebx),%esi
 80484cc:	e8 f7 fd ff ff       	call   80482c8 <_init>
 80484d1:	8d 83 08 ff ff ff    	lea    -0xf8(%ebx),%eax
 80484d7:	29 c6                	sub    %eax,%esi
 80484d9:	c1 fe 02             	sar    $0x2,%esi
 80484dc:	85 f6                	test   %esi,%esi
 80484de:	74 25                	je     8048505 <__libc_csu_init+0x55>
 80484e0:	31 ff                	xor    %edi,%edi
 80484e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80484e8:	83 ec 04             	sub    $0x4,%esp
 80484eb:	ff 74 24 2c          	pushl  0x2c(%esp)
 80484ef:	ff 74 24 2c          	pushl  0x2c(%esp)
 80484f3:	55                   	push   %ebp
 80484f4:	ff 94 bb 08 ff ff ff 	call   *-0xf8(%ebx,%edi,4)
 80484fb:	83 c7 01             	add    $0x1,%edi
 80484fe:	83 c4 10             	add    $0x10,%esp
 8048501:	39 f7                	cmp    %esi,%edi
 8048503:	75 e3                	jne    80484e8 <__libc_csu_init+0x38>
 8048505:	83 c4 0c             	add    $0xc,%esp
 8048508:	5b                   	pop    %ebx
 8048509:	5e                   	pop    %esi
 804850a:	5f                   	pop    %edi
 804850b:	5d                   	pop    %ebp
 804850c:	c3                   	ret    
 804850d:	8d 76 00             	lea    0x0(%esi),%esi

08048510 <__libc_csu_fini>:
 8048510:	f3 c3                	repz ret 

Disassembly of section .fini:

08048514 <_fini>:
 8048514:	53                   	push   %ebx
 8048515:	83 ec 08             	sub    $0x8,%esp
 8048518:	e8 53 fe ff ff       	call   8048370 <__x86.get_pc_thunk.bx>
 804851d:	81 c3 e3 1a 00 00    	add    $0x1ae3,%ebx
 8048523:	83 c4 08             	add    $0x8,%esp
 8048526:	5b                   	pop    %ebx
 8048527:	c3                   	ret    

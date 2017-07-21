
switch_case:     file format elf32-i386


Disassembly of section .init:

0804829c <_init>:
 804829c:	53                   	push   %ebx
 804829d:	83 ec 08             	sub    $0x8,%esp
 80482a0:	e8 00 00 00 00       	call   80482a5 <_init+0x9>
 80482a5:	5b                   	pop    %ebx
 80482a6:	81 c3 3f 14 00 00    	add    $0x143f,%ebx
 80482ac:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 80482b2:	85 c0                	test   %eax,%eax
 80482b4:	74 05                	je     80482bb <_init+0x1f>
 80482b6:	e8 45 00 00 00       	call   8048300 <__gmon_start__@plt>
 80482bb:	e8 b4 00 00 00       	call   8048374 <frame_dummy>
 80482c0:	e8 13 02 00 00       	call   80484d8 <__do_global_ctors_aux>
 80482c5:	83 c4 08             	add    $0x8,%esp
 80482c8:	5b                   	pop    %ebx
 80482c9:	c3                   	ret    

Disassembly of section .plt:

080482d0 <printf@plt-0x10>:
 80482d0:	ff 35 e8 96 04 08    	pushl  0x80496e8
 80482d6:	ff 25 ec 96 04 08    	jmp    *0x80496ec
 80482dc:	00 00                	add    %al,(%eax)
	...

080482e0 <printf@plt>:
 80482e0:	ff 25 f0 96 04 08    	jmp    *0x80496f0
 80482e6:	68 00 00 00 00       	push   $0x0
 80482eb:	e9 e0 ff ff ff       	jmp    80482d0 <_init+0x34>

080482f0 <scanf@plt>:
 80482f0:	ff 25 f4 96 04 08    	jmp    *0x80496f4
 80482f6:	68 08 00 00 00       	push   $0x8
 80482fb:	e9 d0 ff ff ff       	jmp    80482d0 <_init+0x34>

08048300 <__gmon_start__@plt>:
 8048300:	ff 25 f8 96 04 08    	jmp    *0x80496f8
 8048306:	68 10 00 00 00       	push   $0x10
 804830b:	e9 c0 ff ff ff       	jmp    80482d0 <_init+0x34>

08048310 <__libc_start_main@plt>:
 8048310:	ff 25 fc 96 04 08    	jmp    *0x80496fc
 8048316:	68 18 00 00 00       	push   $0x18
 804831b:	e9 b0 ff ff ff       	jmp    80482d0 <_init+0x34>

Disassembly of section .text:

08048320 <_start>:
 8048320:	31 ed                	xor    %ebp,%ebp
 8048322:	5e                   	pop    %esi
 8048323:	89 e1                	mov    %esp,%ecx
 8048325:	83 e4 f0             	and    $0xfffffff0,%esp
 8048328:	50                   	push   %eax
 8048329:	54                   	push   %esp
 804832a:	52                   	push   %edx
 804832b:	68 d0 84 04 08       	push   $0x80484d0
 8048330:	68 60 84 04 08       	push   $0x8048460
 8048335:	51                   	push   %ecx
 8048336:	56                   	push   %esi
 8048337:	68 0c 84 04 08       	push   $0x804840c
 804833c:	e8 cf ff ff ff       	call   8048310 <__libc_start_main@plt>
 8048341:	f4                   	hlt    
 8048342:	90                   	nop
 8048343:	90                   	nop

08048344 <__do_global_dtors_aux>:
 8048344:	55                   	push   %ebp
 8048345:	89 e5                	mov    %esp,%ebp
 8048347:	83 ec 08             	sub    $0x8,%esp
 804834a:	80 3d 0c 97 04 08 00 	cmpb   $0x0,0x804970c
 8048351:	3e 74 0c             	je,pt  8048360 <__do_global_dtors_aux+0x1c>
 8048354:	eb 1c                	jmp    8048372 <__do_global_dtors_aux+0x2e>
 8048356:	83 c0 04             	add    $0x4,%eax
 8048359:	a3 08 97 04 08       	mov    %eax,0x8049708
 804835e:	ff d2                	call   *%edx
 8048360:	a1 08 97 04 08       	mov    0x8049708,%eax
 8048365:	8b 10                	mov    (%eax),%edx
 8048367:	85 d2                	test   %edx,%edx
 8048369:	75 eb                	jne    8048356 <__do_global_dtors_aux+0x12>
 804836b:	c6 05 0c 97 04 08 01 	movb   $0x1,0x804970c
 8048372:	c9                   	leave  
 8048373:	c3                   	ret    

08048374 <frame_dummy>:
 8048374:	55                   	push   %ebp
 8048375:	89 e5                	mov    %esp,%ebp
 8048377:	83 ec 08             	sub    $0x8,%esp
 804837a:	a1 14 96 04 08       	mov    0x8049614,%eax
 804837f:	85 c0                	test   %eax,%eax
 8048381:	74 15                	je     8048398 <frame_dummy+0x24>
 8048383:	b8 00 00 00 00       	mov    $0x0,%eax
 8048388:	85 c0                	test   %eax,%eax
 804838a:	74 0c                	je     8048398 <frame_dummy+0x24>
 804838c:	c7 04 24 14 96 04 08 	movl   $0x8049614,(%esp)
 8048393:	e8 68 7c fb f7       	call   0 <_init-0x804829c>
 8048398:	c9                   	leave  
 8048399:	c3                   	ret    
 804839a:	90                   	nop
 804839b:	90                   	nop

0804839c <switch_case>:
 804839c:	55                   	push   %ebp
 804839d:	89 e5                	mov    %esp,%ebp
 804839f:	83 ec 08             	sub    $0x8,%esp
 80483a2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 80483a9:	8b 45 08             	mov    0x8(%ebp),%eax
 80483ac:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80483af:	83 7d f8 06          	cmpl   $0x6,-0x8(%ebp)
 80483b3:	74 24                	je     80483d9 <switch_case+0x3d>
 80483b5:	83 7d f8 06          	cmpl   $0x6,-0x8(%ebp)
 80483b9:	7f 08                	jg     80483c3 <switch_case+0x27>
 80483bb:	83 7d f8 03          	cmpl   $0x3,-0x8(%ebp)
 80483bf:	74 28                	je     80483e9 <switch_case+0x4d>
 80483c1:	eb 35                	jmp    80483f8 <switch_case+0x5c>
 80483c3:	83 7d f8 09          	cmpl   $0x9,-0x8(%ebp)
 80483c7:	74 02                	je     80483cb <switch_case+0x2f>
 80483c9:	eb 2d                	jmp    80483f8 <switch_case+0x5c>
 80483cb:	8b 55 08             	mov    0x8(%ebp),%edx
 80483ce:	89 d0                	mov    %edx,%eax
 80483d0:	01 c0                	add    %eax,%eax
 80483d2:	01 d0                	add    %edx,%eax
 80483d4:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80483d7:	eb 26                	jmp    80483ff <switch_case+0x63>
 80483d9:	8b 55 08             	mov    0x8(%ebp),%edx
 80483dc:	89 d0                	mov    %edx,%eax
 80483de:	01 c0                	add    %eax,%eax
 80483e0:	01 d0                	add    %edx,%eax
 80483e2:	01 c0                	add    %eax,%eax
 80483e4:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80483e7:	eb 16                	jmp    80483ff <switch_case+0x63>
 80483e9:	8b 55 08             	mov    0x8(%ebp),%edx
 80483ec:	89 d0                	mov    %edx,%eax
 80483ee:	c1 e0 03             	shl    $0x3,%eax
 80483f1:	01 d0                	add    %edx,%eax
 80483f3:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80483f6:	eb 07                	jmp    80483ff <switch_case+0x63>
 80483f8:	c7 45 fc 0c 00 00 00 	movl   $0xc,-0x4(%ebp)
 80483ff:	8b 55 08             	mov    0x8(%ebp),%edx
 8048402:	8d 45 fc             	lea    -0x4(%ebp),%eax
 8048405:	01 10                	add    %edx,(%eax)
 8048407:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804840a:	c9                   	leave  
 804840b:	c3                   	ret    

0804840c <main>:
 804840c:	55                   	push   %ebp
 804840d:	89 e5                	mov    %esp,%ebp
 804840f:	83 ec 18             	sub    $0x18,%esp
 8048412:	83 e4 f0             	and    $0xfffffff0,%esp
 8048415:	b8 00 00 00 00       	mov    $0x0,%eax
 804841a:	83 c0 0f             	add    $0xf,%eax
 804841d:	83 c0 0f             	add    $0xf,%eax
 8048420:	c1 e8 04             	shr    $0x4,%eax
 8048423:	c1 e0 04             	shl    $0x4,%eax
 8048426:	29 c4                	sub    %eax,%esp
 8048428:	c7 04 24 24 85 04 08 	movl   $0x8048524,(%esp)
 804842f:	e8 ac fe ff ff       	call   80482e0 <printf@plt>
 8048434:	8d 45 fc             	lea    -0x4(%ebp),%eax
 8048437:	89 44 24 04          	mov    %eax,0x4(%esp)
 804843b:	c7 04 24 2e 85 04 08 	movl   $0x804852e,(%esp)
 8048442:	e8 a9 fe ff ff       	call   80482f0 <scanf@plt>
 8048447:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804844a:	89 04 24             	mov    %eax,(%esp)
 804844d:	e8 4a ff ff ff       	call   804839c <switch_case>
 8048452:	b8 00 00 00 00       	mov    $0x0,%eax
 8048457:	c9                   	leave  
 8048458:	c3                   	ret    
 8048459:	90                   	nop
 804845a:	90                   	nop
 804845b:	90                   	nop
 804845c:	90                   	nop
 804845d:	90                   	nop
 804845e:	90                   	nop
 804845f:	90                   	nop

08048460 <__libc_csu_init>:
 8048460:	55                   	push   %ebp
 8048461:	57                   	push   %edi
 8048462:	56                   	push   %esi
 8048463:	53                   	push   %ebx
 8048464:	e8 69 00 00 00       	call   80484d2 <__i686.get_pc_thunk.bx>
 8048469:	81 c3 7b 12 00 00    	add    $0x127b,%ebx
 804846f:	83 ec 1c             	sub    $0x1c,%esp
 8048472:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8048476:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 804847c:	e8 1b fe ff ff       	call   804829c <_init>
 8048481:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 8048487:	29 c7                	sub    %eax,%edi
 8048489:	c1 ff 02             	sar    $0x2,%edi
 804848c:	85 ff                	test   %edi,%edi
 804848e:	74 29                	je     80484b9 <__libc_csu_init+0x59>
 8048490:	31 f6                	xor    %esi,%esi
 8048492:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048498:	8b 44 24 38          	mov    0x38(%esp),%eax
 804849c:	89 2c 24             	mov    %ebp,(%esp)
 804849f:	89 44 24 08          	mov    %eax,0x8(%esp)
 80484a3:	8b 44 24 34          	mov    0x34(%esp),%eax
 80484a7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80484ab:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 80484b2:	83 c6 01             	add    $0x1,%esi
 80484b5:	39 fe                	cmp    %edi,%esi
 80484b7:	75 df                	jne    8048498 <__libc_csu_init+0x38>
 80484b9:	83 c4 1c             	add    $0x1c,%esp
 80484bc:	5b                   	pop    %ebx
 80484bd:	5e                   	pop    %esi
 80484be:	5f                   	pop    %edi
 80484bf:	5d                   	pop    %ebp
 80484c0:	c3                   	ret    
 80484c1:	eb 0d                	jmp    80484d0 <__libc_csu_fini>
 80484c3:	90                   	nop
 80484c4:	90                   	nop
 80484c5:	90                   	nop
 80484c6:	90                   	nop
 80484c7:	90                   	nop
 80484c8:	90                   	nop
 80484c9:	90                   	nop
 80484ca:	90                   	nop
 80484cb:	90                   	nop
 80484cc:	90                   	nop
 80484cd:	90                   	nop
 80484ce:	90                   	nop
 80484cf:	90                   	nop

080484d0 <__libc_csu_fini>:
 80484d0:	f3 c3                	repz ret 

080484d2 <__i686.get_pc_thunk.bx>:
 80484d2:	8b 1c 24             	mov    (%esp),%ebx
 80484d5:	c3                   	ret    
 80484d6:	90                   	nop
 80484d7:	90                   	nop

080484d8 <__do_global_ctors_aux>:
 80484d8:	55                   	push   %ebp
 80484d9:	89 e5                	mov    %esp,%ebp
 80484db:	53                   	push   %ebx
 80484dc:	bb 04 96 04 08       	mov    $0x8049604,%ebx
 80484e1:	83 ec 04             	sub    $0x4,%esp
 80484e4:	a1 04 96 04 08       	mov    0x8049604,%eax
 80484e9:	eb 07                	jmp    80484f2 <__do_global_ctors_aux+0x1a>
 80484eb:	83 eb 04             	sub    $0x4,%ebx
 80484ee:	ff d0                	call   *%eax
 80484f0:	8b 03                	mov    (%ebx),%eax
 80484f2:	83 f8 ff             	cmp    $0xffffffff,%eax
 80484f5:	75 f4                	jne    80484eb <__do_global_ctors_aux+0x13>
 80484f7:	83 c4 04             	add    $0x4,%esp
 80484fa:	5b                   	pop    %ebx
 80484fb:	5d                   	pop    %ebp
 80484fc:	c3                   	ret    
 80484fd:	90                   	nop
 80484fe:	90                   	nop
 80484ff:	90                   	nop

Disassembly of section .fini:

08048500 <_fini>:
 8048500:	53                   	push   %ebx
 8048501:	83 ec 08             	sub    $0x8,%esp
 8048504:	e8 00 00 00 00       	call   8048509 <_fini+0x9>
 8048509:	5b                   	pop    %ebx
 804850a:	81 c3 db 11 00 00    	add    $0x11db,%ebx
 8048510:	e8 2f fe ff ff       	call   8048344 <__do_global_dtors_aux>
 8048515:	83 c4 08             	add    $0x8,%esp
 8048518:	5b                   	pop    %ebx
 8048519:	c3                   	ret    

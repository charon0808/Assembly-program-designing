
heart.o:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
   0:	ba 2c 00 00 00       	mov    $0x2c,%edx
   5:	b9 00 00 00 00       	mov    $0x0,%ecx
   a:	bb 01 00 00 00       	mov    $0x1,%ebx
   f:	b8 04 00 00 00       	mov    $0x4,%eax
  14:	cd 80                	int    $0x80
  16:	bb 00 00 00 00       	mov    $0x0,%ebx
  1b:	b8 01 00 00 00       	mov    $0x1,%eax
  20:	cd 80                	int    $0x80

Disassembly of section .data:

00000000 <msg>:
   0:	20 2a                	and    %ch,(%edx)
   2:	20 20                	and    %ah,(%eax)
   4:	20 2a                	and    %ch,(%edx)
   6:	20 0a                	and    %cl,(%edx)
   8:	2a 2a                	sub    (%edx),%ch
   a:	2a 2a                	sub    (%edx),%ch
   c:	2a 2a                	sub    (%edx),%ch
   e:	2a 0a                	sub    (%edx),%cl
  10:	20 2a                	and    %ch,(%edx)
  12:	2a 2a                	sub    (%edx),%ch
  14:	2a 2a                	sub    (%edx),%ch
  16:	20 0a                	and    %cl,(%edx)
  18:	20 20                	and    %ah,(%eax)
  1a:	20 2a                	and    %ch,(%edx)
  1c:	20 20                	and    %ah,(%eax)
  1e:	20 0a                	and    %cl,(%edx)
  20:	31 36                	xor    %esi,(%esi)
  22:	31 32                	xor    %esi,(%edx)
  24:	32 30                	xor    (%eax),%dh
  26:	30 37                	xor    %dh,(%edi)
  28:	36 0a 0a             	or     %ss:(%edx),%cl
	...

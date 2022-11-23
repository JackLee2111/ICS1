
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	repz nop %edx
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 d9 4f 00 00 	mov    0x4fd9(%rip),%rax        # 6fe8 <__gmon_start__>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	callq  *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	retq   

Disassembly of section .plt:

0000000000002020 <getenv@plt-0x10>:
    2020:	ff 35 e2 4f 00 00    	pushq  0x4fe2(%rip)        # 7008 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	ff 25 e4 4f 00 00    	jmpq   *0x4fe4(%rip)        # 7010 <_GLOBAL_OFFSET_TABLE_+0x10>
    202c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002030 <getenv@plt>:
    2030:	ff 25 e2 4f 00 00    	jmpq   *0x4fe2(%rip)        # 7018 <getenv@GLIBC_2.2.5>
    2036:	68 00 00 00 00       	pushq  $0x0
    203b:	e9 e0 ff ff ff       	jmpq   2020 <_init+0x20>

0000000000002040 <strcasecmp@plt>:
    2040:	ff 25 da 4f 00 00    	jmpq   *0x4fda(%rip)        # 7020 <strcasecmp@GLIBC_2.2.5>
    2046:	68 01 00 00 00       	pushq  $0x1
    204b:	e9 d0 ff ff ff       	jmpq   2020 <_init+0x20>

0000000000002050 <__errno_location@plt>:
    2050:	ff 25 d2 4f 00 00    	jmpq   *0x4fd2(%rip)        # 7028 <__errno_location@GLIBC_2.2.5>
    2056:	68 02 00 00 00       	pushq  $0x2
    205b:	e9 c0 ff ff ff       	jmpq   2020 <_init+0x20>

0000000000002060 <strcpy@plt>:
    2060:	ff 25 ca 4f 00 00    	jmpq   *0x4fca(%rip)        # 7030 <strcpy@GLIBC_2.2.5>
    2066:	68 03 00 00 00       	pushq  $0x3
    206b:	e9 b0 ff ff ff       	jmpq   2020 <_init+0x20>

0000000000002070 <puts@plt>:
    2070:	ff 25 c2 4f 00 00    	jmpq   *0x4fc2(%rip)        # 7038 <puts@GLIBC_2.2.5>
    2076:	68 04 00 00 00       	pushq  $0x4
    207b:	e9 a0 ff ff ff       	jmpq   2020 <_init+0x20>

0000000000002080 <write@plt>:
    2080:	ff 25 ba 4f 00 00    	jmpq   *0x4fba(%rip)        # 7040 <write@GLIBC_2.2.5>
    2086:	68 05 00 00 00       	pushq  $0x5
    208b:	e9 90 ff ff ff       	jmpq   2020 <_init+0x20>

0000000000002090 <strlen@plt>:
    2090:	ff 25 b2 4f 00 00    	jmpq   *0x4fb2(%rip)        # 7048 <strlen@GLIBC_2.2.5>
    2096:	68 06 00 00 00       	pushq  $0x6
    209b:	e9 80 ff ff ff       	jmpq   2020 <_init+0x20>

00000000000020a0 <__stack_chk_fail@plt>:
    20a0:	ff 25 aa 4f 00 00    	jmpq   *0x4faa(%rip)        # 7050 <__stack_chk_fail@GLIBC_2.4>
    20a6:	68 07 00 00 00       	pushq  $0x7
    20ab:	e9 70 ff ff ff       	jmpq   2020 <_init+0x20>

00000000000020b0 <printf@plt>:
    20b0:	ff 25 a2 4f 00 00    	jmpq   *0x4fa2(%rip)        # 7058 <printf@GLIBC_2.2.5>
    20b6:	68 08 00 00 00       	pushq  $0x8
    20bb:	e9 60 ff ff ff       	jmpq   2020 <_init+0x20>

00000000000020c0 <alarm@plt>:
    20c0:	ff 25 9a 4f 00 00    	jmpq   *0x4f9a(%rip)        # 7060 <alarm@GLIBC_2.2.5>
    20c6:	68 09 00 00 00       	pushq  $0x9
    20cb:	e9 50 ff ff ff       	jmpq   2020 <_init+0x20>

00000000000020d0 <close@plt>:
    20d0:	ff 25 92 4f 00 00    	jmpq   *0x4f92(%rip)        # 7068 <close@GLIBC_2.2.5>
    20d6:	68 0a 00 00 00       	pushq  $0xa
    20db:	e9 40 ff ff ff       	jmpq   2020 <_init+0x20>

00000000000020e0 <read@plt>:
    20e0:	ff 25 8a 4f 00 00    	jmpq   *0x4f8a(%rip)        # 7070 <read@GLIBC_2.2.5>
    20e6:	68 0b 00 00 00       	pushq  $0xb
    20eb:	e9 30 ff ff ff       	jmpq   2020 <_init+0x20>

00000000000020f0 <fgets@plt>:
    20f0:	ff 25 82 4f 00 00    	jmpq   *0x4f82(%rip)        # 7078 <fgets@GLIBC_2.2.5>
    20f6:	68 0c 00 00 00       	pushq  $0xc
    20fb:	e9 20 ff ff ff       	jmpq   2020 <_init+0x20>

0000000000002100 <strcmp@plt>:
    2100:	ff 25 7a 4f 00 00    	jmpq   *0x4f7a(%rip)        # 7080 <strcmp@GLIBC_2.2.5>
    2106:	68 0d 00 00 00       	pushq  $0xd
    210b:	e9 10 ff ff ff       	jmpq   2020 <_init+0x20>

0000000000002110 <signal@plt>:
    2110:	ff 25 72 4f 00 00    	jmpq   *0x4f72(%rip)        # 7088 <signal@GLIBC_2.2.5>
    2116:	68 0e 00 00 00       	pushq  $0xe
    211b:	e9 00 ff ff ff       	jmpq   2020 <_init+0x20>

0000000000002120 <gethostbyname@plt>:
    2120:	ff 25 6a 4f 00 00    	jmpq   *0x4f6a(%rip)        # 7090 <gethostbyname@GLIBC_2.2.5>
    2126:	68 0f 00 00 00       	pushq  $0xf
    212b:	e9 f0 fe ff ff       	jmpq   2020 <_init+0x20>

0000000000002130 <fprintf@plt>:
    2130:	ff 25 62 4f 00 00    	jmpq   *0x4f62(%rip)        # 7098 <fprintf@GLIBC_2.2.5>
    2136:	68 10 00 00 00       	pushq  $0x10
    213b:	e9 e0 fe ff ff       	jmpq   2020 <_init+0x20>

0000000000002140 <fflush@plt>:
    2140:	ff 25 5a 4f 00 00    	jmpq   *0x4f5a(%rip)        # 70a0 <fflush@GLIBC_2.2.5>
    2146:	68 11 00 00 00       	pushq  $0x11
    214b:	e9 d0 fe ff ff       	jmpq   2020 <_init+0x20>

0000000000002150 <__isoc99_sscanf@plt>:
    2150:	ff 25 52 4f 00 00    	jmpq   *0x4f52(%rip)        # 70a8 <__isoc99_sscanf@GLIBC_2.7>
    2156:	68 12 00 00 00       	pushq  $0x12
    215b:	e9 c0 fe ff ff       	jmpq   2020 <_init+0x20>

0000000000002160 <memmove@plt>:
    2160:	ff 25 4a 4f 00 00    	jmpq   *0x4f4a(%rip)        # 70b0 <memmove@GLIBC_2.2.5>
    2166:	68 13 00 00 00       	pushq  $0x13
    216b:	e9 b0 fe ff ff       	jmpq   2020 <_init+0x20>

0000000000002170 <fopen@plt>:
    2170:	ff 25 42 4f 00 00    	jmpq   *0x4f42(%rip)        # 70b8 <fopen@GLIBC_2.2.5>
    2176:	68 14 00 00 00       	pushq  $0x14
    217b:	e9 a0 fe ff ff       	jmpq   2020 <_init+0x20>

0000000000002180 <gethostname@plt>:
    2180:	ff 25 3a 4f 00 00    	jmpq   *0x4f3a(%rip)        # 70c0 <gethostname@GLIBC_2.2.5>
    2186:	68 15 00 00 00       	pushq  $0x15
    218b:	e9 90 fe ff ff       	jmpq   2020 <_init+0x20>

0000000000002190 <sprintf@plt>:
    2190:	ff 25 32 4f 00 00    	jmpq   *0x4f32(%rip)        # 70c8 <sprintf@GLIBC_2.2.5>
    2196:	68 16 00 00 00       	pushq  $0x16
    219b:	e9 80 fe ff ff       	jmpq   2020 <_init+0x20>

00000000000021a0 <exit@plt>:
    21a0:	ff 25 2a 4f 00 00    	jmpq   *0x4f2a(%rip)        # 70d0 <exit@GLIBC_2.2.5>
    21a6:	68 17 00 00 00       	pushq  $0x17
    21ab:	e9 70 fe ff ff       	jmpq   2020 <_init+0x20>

00000000000021b0 <connect@plt>:
    21b0:	ff 25 22 4f 00 00    	jmpq   *0x4f22(%rip)        # 70d8 <connect@GLIBC_2.2.5>
    21b6:	68 18 00 00 00       	pushq  $0x18
    21bb:	e9 60 fe ff ff       	jmpq   2020 <_init+0x20>

00000000000021c0 <sleep@plt>:
    21c0:	ff 25 1a 4f 00 00    	jmpq   *0x4f1a(%rip)        # 70e0 <sleep@GLIBC_2.2.5>
    21c6:	68 19 00 00 00       	pushq  $0x19
    21cb:	e9 50 fe ff ff       	jmpq   2020 <_init+0x20>

00000000000021d0 <__ctype_b_loc@plt>:
    21d0:	ff 25 12 4f 00 00    	jmpq   *0x4f12(%rip)        # 70e8 <__ctype_b_loc@GLIBC_2.3>
    21d6:	68 1a 00 00 00       	pushq  $0x1a
    21db:	e9 40 fe ff ff       	jmpq   2020 <_init+0x20>

00000000000021e0 <socket@plt>:
    21e0:	ff 25 0a 4f 00 00    	jmpq   *0x4f0a(%rip)        # 70f0 <socket@GLIBC_2.2.5>
    21e6:	68 1b 00 00 00       	pushq  $0x1b
    21eb:	e9 30 fe ff ff       	jmpq   2020 <_init+0x20>

Disassembly of section .text:

00000000000021f0 <_start>:
    21f0:	f3 0f 1e fa          	repz nop %edx
    21f4:	31 ed                	xor    %ebp,%ebp
    21f6:	49 89 d1             	mov    %rdx,%r9
    21f9:	5e                   	pop    %rsi
    21fa:	48 89 e2             	mov    %rsp,%rdx
    21fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    2201:	50                   	push   %rax
    2202:	54                   	push   %rsp
    2203:	4c 8d 05 c6 19 00 00 	lea    0x19c6(%rip),%r8        # 3bd0 <__libc_csu_fini>
    220a:	48 8d 0d 4f 19 00 00 	lea    0x194f(%rip),%rcx        # 3b60 <__libc_csu_init>
    2211:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 22e9 <main>
    2218:	ff 15 c2 4d 00 00    	callq  *0x4dc2(%rip)        # 6fe0 <__libc_start_main@GLIBC_2.2.5>
    221e:	f4                   	hlt    
    221f:	90                   	nop

0000000000002220 <deregister_tm_clones>:
    2220:	48 8d 3d 99 f5 00 00 	lea    0xf599(%rip),%rdi        # 117c0 <stdout@@GLIBC_2.2.5>
    2227:	48 8d 05 92 f5 00 00 	lea    0xf592(%rip),%rax        # 117c0 <stdout@@GLIBC_2.2.5>
    222e:	48 39 f8             	cmp    %rdi,%rax
    2231:	74 15                	je     2248 <deregister_tm_clones+0x28>
    2233:	48 8b 05 9e 4d 00 00 	mov    0x4d9e(%rip),%rax        # 6fd8 <_ITM_deregisterTMCloneTable>
    223a:	48 85 c0             	test   %rax,%rax
    223d:	74 09                	je     2248 <deregister_tm_clones+0x28>
    223f:	ff e0                	jmpq   *%rax
    2241:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2248:	c3                   	retq   
    2249:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002250 <register_tm_clones>:
    2250:	48 8d 3d 69 f5 00 00 	lea    0xf569(%rip),%rdi        # 117c0 <stdout@@GLIBC_2.2.5>
    2257:	48 8d 35 62 f5 00 00 	lea    0xf562(%rip),%rsi        # 117c0 <stdout@@GLIBC_2.2.5>
    225e:	48 29 fe             	sub    %rdi,%rsi
    2261:	48 89 f0             	mov    %rsi,%rax
    2264:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2268:	48 c1 f8 03          	sar    $0x3,%rax
    226c:	48 01 c6             	add    %rax,%rsi
    226f:	48 d1 fe             	sar    %rsi
    2272:	74 14                	je     2288 <register_tm_clones+0x38>
    2274:	48 8b 05 75 4d 00 00 	mov    0x4d75(%rip),%rax        # 6ff0 <_ITM_registerTMCloneTable>
    227b:	48 85 c0             	test   %rax,%rax
    227e:	74 08                	je     2288 <register_tm_clones+0x38>
    2280:	ff e0                	jmpq   *%rax
    2282:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2288:	c3                   	retq   
    2289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002290 <__do_global_dtors_aux>:
    2290:	f3 0f 1e fa          	repz nop %edx
    2294:	80 3d 4d f5 00 00 00 	cmpb   $0x0,0xf54d(%rip)        # 117e8 <completed.0>
    229b:	75 33                	jne    22d0 <__do_global_dtors_aux+0x40>
    229d:	55                   	push   %rbp
    229e:	48 83 3d 52 4d 00 00 	cmpq   $0x0,0x4d52(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    22a5:	00 
    22a6:	48 89 e5             	mov    %rsp,%rbp
    22a9:	74 0d                	je     22b8 <__do_global_dtors_aux+0x28>
    22ab:	48 8b 3d 56 4e 00 00 	mov    0x4e56(%rip),%rdi        # 7108 <__dso_handle>
    22b2:	ff 15 40 4d 00 00    	callq  *0x4d40(%rip)        # 6ff8 <__cxa_finalize@GLIBC_2.2.5>
    22b8:	e8 63 ff ff ff       	callq  2220 <deregister_tm_clones>
    22bd:	c6 05 24 f5 00 00 01 	movb   $0x1,0xf524(%rip)        # 117e8 <completed.0>
    22c4:	5d                   	pop    %rbp
    22c5:	c3                   	retq   
    22c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    22cd:	00 00 00 
    22d0:	c3                   	retq   
    22d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    22d8:	00 00 00 00 
    22dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000022e0 <frame_dummy>:
    22e0:	f3 0f 1e fa          	repz nop %edx
    22e4:	e9 67 ff ff ff       	jmpq   2250 <register_tm_clones>

00000000000022e9 <main>:
    22e9:	53                   	push   %rbx
    22ea:	83 ff 01             	cmp    $0x1,%edi
    22ed:	0f 84 f8 00 00 00    	je     23eb <main+0x102>
    22f3:	48 89 f3             	mov    %rsi,%rbx
    22f6:	83 ff 02             	cmp    $0x2,%edi
    22f9:	0f 85 1c 01 00 00    	jne    241b <main+0x132>
    22ff:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    2303:	48 8d 35 fa 1c 00 00 	lea    0x1cfa(%rip),%rsi        # 4004 <_IO_stdin_used+0x4>
    230a:	e8 61 fe ff ff       	callq  2170 <fopen@plt>
    230f:	48 89 05 da f4 00 00 	mov    %rax,0xf4da(%rip)        # 117f0 <infile>
    2316:	48 85 c0             	test   %rax,%rax
    2319:	0f 84 df 00 00 00    	je     23fe <main+0x115>
    231f:	e8 ba 06 00 00       	callq  29de <initialize_bomb>
    2324:	48 8d 3d 55 1d 00 00 	lea    0x1d55(%rip),%rdi        # 4080 <_IO_stdin_used+0x80>
    232b:	e8 40 fd ff ff       	callq  2070 <puts@plt>
    2330:	48 8d 3d 89 1d 00 00 	lea    0x1d89(%rip),%rdi        # 40c0 <_IO_stdin_used+0xc0>
    2337:	e8 34 fd ff ff       	callq  2070 <puts@plt>
    233c:	e8 1e 0a 00 00       	callq  2d5f <read_line>
    2341:	48 89 c7             	mov    %rax,%rdi
    2344:	e8 f0 00 00 00       	callq  2439 <phase_1>
    2349:	e8 4b 0b 00 00       	callq  2e99 <phase_defused>
    234e:	48 8d 3d 9b 1d 00 00 	lea    0x1d9b(%rip),%rdi        # 40f0 <_IO_stdin_used+0xf0>
    2355:	e8 16 fd ff ff       	callq  2070 <puts@plt>
    235a:	e8 00 0a 00 00       	callq  2d5f <read_line>
    235f:	48 89 c7             	mov    %rax,%rdi
    2362:	e8 f2 00 00 00       	callq  2459 <phase_2>
    2367:	e8 2d 0b 00 00       	callq  2e99 <phase_defused>
    236c:	48 8d 3d ca 1c 00 00 	lea    0x1cca(%rip),%rdi        # 403d <_IO_stdin_used+0x3d>
    2373:	e8 f8 fc ff ff       	callq  2070 <puts@plt>
    2378:	e8 e2 09 00 00       	callq  2d5f <read_line>
    237d:	48 89 c7             	mov    %rax,%rdi
    2380:	e8 47 01 00 00       	callq  24cc <phase_3>
    2385:	e8 0f 0b 00 00       	callq  2e99 <phase_defused>
    238a:	48 8d 3d bd 1c 00 00 	lea    0x1cbd(%rip),%rdi        # 404e <_IO_stdin_used+0x4e>
    2391:	e8 da fc ff ff       	callq  2070 <puts@plt>
    2396:	e8 c4 09 00 00       	callq  2d5f <read_line>
    239b:	48 89 c7             	mov    %rax,%rdi
    239e:	e8 71 02 00 00       	callq  2614 <phase_4>
    23a3:	e8 f1 0a 00 00       	callq  2e99 <phase_defused>
    23a8:	48 8d 3d 71 1d 00 00 	lea    0x1d71(%rip),%rdi        # 4120 <_IO_stdin_used+0x120>
    23af:	e8 bc fc ff ff       	callq  2070 <puts@plt>
    23b4:	e8 a6 09 00 00       	callq  2d5f <read_line>
    23b9:	48 89 c7             	mov    %rax,%rdi
    23bc:	e8 d1 02 00 00       	callq  2692 <phase_5>
    23c1:	e8 d3 0a 00 00       	callq  2e99 <phase_defused>
    23c6:	48 8d 3d 90 1c 00 00 	lea    0x1c90(%rip),%rdi        # 405d <_IO_stdin_used+0x5d>
    23cd:	e8 9e fc ff ff       	callq  2070 <puts@plt>
    23d2:	e8 88 09 00 00       	callq  2d5f <read_line>
    23d7:	48 89 c7             	mov    %rax,%rdi
    23da:	e8 fb 02 00 00       	callq  26da <phase_6>
    23df:	e8 b5 0a 00 00       	callq  2e99 <phase_defused>
    23e4:	b8 00 00 00 00       	mov    $0x0,%eax
    23e9:	5b                   	pop    %rbx
    23ea:	c3                   	retq   
    23eb:	48 8b 05 de f3 00 00 	mov    0xf3de(%rip),%rax        # 117d0 <stdin@@GLIBC_2.2.5>
    23f2:	48 89 05 f7 f3 00 00 	mov    %rax,0xf3f7(%rip)        # 117f0 <infile>
    23f9:	e9 21 ff ff ff       	jmpq   231f <main+0x36>
    23fe:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    2402:	48 8b 33             	mov    (%rbx),%rsi
    2405:	48 8d 3d fa 1b 00 00 	lea    0x1bfa(%rip),%rdi        # 4006 <_IO_stdin_used+0x6>
    240c:	e8 9f fc ff ff       	callq  20b0 <printf@plt>
    2411:	bf 08 00 00 00       	mov    $0x8,%edi
    2416:	e8 85 fd ff ff       	callq  21a0 <exit@plt>
    241b:	48 8b 36             	mov    (%rsi),%rsi
    241e:	48 8d 3d fe 1b 00 00 	lea    0x1bfe(%rip),%rdi        # 4023 <_IO_stdin_used+0x23>
    2425:	b8 00 00 00 00       	mov    $0x0,%eax
    242a:	e8 81 fc ff ff       	callq  20b0 <printf@plt>
    242f:	bf 08 00 00 00       	mov    $0x8,%edi
    2434:	e8 67 fd ff ff       	callq  21a0 <exit@plt>

0000000000002439 <phase_1>:
    2439:	48 83 ec 08          	sub    $0x8,%rsp
    243d:	48 8d 35 04 1d 00 00 	lea    0x1d04(%rip),%rsi        # 4148 <_IO_stdin_used+0x148>
    2444:	e8 39 05 00 00       	callq  2982 <strings_not_equal>
    2449:	85 c0                	test   %eax,%eax
    244b:	75 05                	jne    2452 <phase_1+0x19>
    244d:	48 83 c4 08          	add    $0x8,%rsp
    2451:	c3                   	retq   
    2452:	e8 07 08 00 00       	callq  2c5e <explode_bomb>
    2457:	eb f4                	jmp    244d <phase_1+0x14>

0000000000002459 <phase_2>:
    2459:	55                   	push   %rbp
    245a:	53                   	push   %rbx
    245b:	48 83 ec 28          	sub    $0x28,%rsp
    245f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2466:	00 00 
    2468:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    246d:	31 c0                	xor    %eax,%eax
    246f:	48 89 e6             	mov    %rsp,%rsi
    2472:	e8 a7 08 00 00       	callq  2d1e <read_six_numbers>
    2477:	83 3c 24 04          	cmpl   $0x4,(%rsp)
    247b:	75 07                	jne    2484 <phase_2+0x2b>
    247d:	83 7c 24 04 11       	cmpl   $0x11,0x4(%rsp)
    2482:	74 05                	je     2489 <phase_2+0x30>
    2484:	e8 d5 07 00 00       	callq  2c5e <explode_bomb>
    2489:	48 89 e3             	mov    %rsp,%rbx
    248c:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    2491:	eb 09                	jmp    249c <phase_2+0x43>
    2493:	48 83 c3 04          	add    $0x4,%rbx
    2497:	48 39 eb             	cmp    %rbp,%rbx
    
    249a:	74 14                	je     24b0 <phase_2+0x57>
    249c:	8b 13                	mov    (%rbx),%edx
    249e:	8b 43 04             	mov    0x4(%rbx),%eax
    24a1:	8d 04 90             	lea    (%rax,%rdx,4),%eax
    24a4:	39 43 08             	cmp    %eax,0x8(%rbx)
    24a7:	74 ea                	je     2493 <phase_2+0x3a>

    24a9:	e8 b0 07 00 00       	callq  2c5e <explode_bomb>
    24ae:	eb e3                	jmp    2493 <phase_2+0x3a>
    24b0:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    24b5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    24bc:	00 00 
    24be:	75 07                	jne    24c7 <phase_2+0x6e>
    24c0:	48 83 c4 28          	add    $0x28,%rsp
    24c4:	5b                   	pop    %rbx
    24c5:	5d                   	pop    %rbp
    24c6:	c3                   	retq   
    24c7:	e8 d4 fb ff ff       	callq  20a0 <__stack_chk_fail@plt>

00000000000024cc <phase_3>:
    24cc:	48 83 ec 18          	sub    $0x18,%rsp
    24d0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    24d7:	00 00 
    24d9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    24de:	31 c0                	xor    %eax,%eax
    24e0:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    24e5:	48 89 e2             	mov    %rsp,%rdx
    24e8:	48 8d 35 32 21 00 00 	lea    0x2132(%rip),%rsi        # 4621 <array.0+0x421>
    24ef:	e8 5c fc ff ff       	callq  2150 <__isoc99_sscanf@plt>
    24f4:	83 f8 01             	cmp    $0x1,%eax
    24f7:	7e 1d                	jle    2516 <phase_3+0x4a>
    24f9:	83 3c 24 07          	cmpl   $0x7,(%rsp)
    24fd:	0f 87 c0 00 00 00    	ja     25c3 <phase_3+0xf7>
    2503:	8b 04 24             	mov    (%rsp),%eax
    2506:	48 8d 15 d3 1c 00 00 	lea    0x1cd3(%rip),%rdx        # 41e0 <_IO_stdin_used+0x1e0>
    250d:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    2511:	48 01 d0             	add    %rdx,%rax
    2514:	ff e0                	jmpq   *%rax
    2516:	e8 43 07 00 00       	callq  2c5e <explode_bomb>
    251b:	eb dc                	jmp    24f9 <phase_3+0x2d>
    251d:	8b 15 fd 4b 00 00    	mov    0x4bfd(%rip),%edx        # 7120 <delta.1>
    2523:	b8 9e 02 00 00       	mov    $0x29e,%eax
    2528:	29 d0                	sub    %edx,%eax
    252a:	8b 54 24 04          	mov    0x4(%rsp),%edx
    252e:	85 d2                	test   %edx,%edx
    2530:	78 04                	js     2536 <phase_3+0x6a>
    2532:	39 c2                	cmp    %eax,%edx
    2534:	74 05                	je     253b <phase_3+0x6f>
    2536:	e8 23 07 00 00       	callq  2c5e <explode_bomb>
    253b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2540:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2547:	00 00 
    2549:	0f 85 83 00 00 00    	jne    25d2 <phase_3+0x106>
    254f:	48 83 c4 18          	add    $0x18,%rsp
    2553:	c3                   	retq   
    2554:	8b 15 c6 4b 00 00    	mov    0x4bc6(%rip),%edx        # 7120 <delta.1>
    255a:	b8 61 01 00 00       	mov    $0x161,%eax
    255f:	29 d0                	sub    %edx,%eax
    2561:	eb c7                	jmp    252a <phase_3+0x5e>
    2563:	8b 15 b7 4b 00 00    	mov    0x4bb7(%rip),%edx        # 7120 <delta.1>
    2569:	b8 d7 02 00 00       	mov    $0x2d7,%eax
    256e:	29 d0                	sub    %edx,%eax
    2570:	eb b8                	jmp    252a <phase_3+0x5e>
    2572:	8b 15 a8 4b 00 00    	mov    0x4ba8(%rip),%edx        # 7120 <delta.1>
    2578:	b8 2f 01 00 00       	mov    $0x12f,%eax
    257d:	29 d0                	sub    %edx,%eax
    257f:	eb a9                	jmp    252a <phase_3+0x5e>
    2581:	8b 15 99 4b 00 00    	mov    0x4b99(%rip),%edx        # 7120 <delta.1>
    2587:	b8 7a 01 00 00       	mov    $0x17a,%eax
    258c:	29 d0                	sub    %edx,%eax
    258e:	eb 9a                	jmp    252a <phase_3+0x5e>
    2590:	8b 15 8a 4b 00 00    	mov    0x4b8a(%rip),%edx        # 7120 <delta.1>
    2596:	b8 42 03 00 00       	mov    $0x342,%eax
    259b:	29 d0                	sub    %edx,%eax
    259d:	eb 8b                	jmp    252a <phase_3+0x5e>
    259f:	8b 15 7b 4b 00 00    	mov    0x4b7b(%rip),%edx        # 7120 <delta.1>
    25a5:	b8 6f 03 00 00       	mov    $0x36f,%eax
    25aa:	29 d0                	sub    %edx,%eax
    25ac:	e9 79 ff ff ff       	jmpq   252a <phase_3+0x5e>
    25b1:	8b 15 69 4b 00 00    	mov    0x4b69(%rip),%edx        # 7120 <delta.1>
    25b7:	b8 d0 02 00 00       	mov    $0x2d0,%eax
    25bc:	29 d0                	sub    %edx,%eax
    25be:	e9 67 ff ff ff       	jmpq   252a <phase_3+0x5e>
    25c3:	e8 96 06 00 00       	callq  2c5e <explode_bomb>
    25c8:	b8 00 00 00 00       	mov    $0x0,%eax
    25cd:	e9 58 ff ff ff       	jmpq   252a <phase_3+0x5e>
    25d2:	e8 c9 fa ff ff       	callq  20a0 <__stack_chk_fail@plt>

00000000000025d7 <func4>:
    25d7:	48 83 ec 08          	sub    $0x8,%rsp
    25db:	89 d0                	mov    %edx,%eax               #eax = edx
    25dd:	29 f0                	sub    %esi,%eax               #eax -=esi
    25df:	89 c1                	mov    %eax,%ecx               #ecx = eax
    25e1:	c1 e9 1f             	shr    $0x1f,%ecx              #ecx = 0
    25e4:	01 c1                	add    %eax,%ecx               #ecx += eax
    25e6:	d1 f9                	sar    %ecx                    #ecx = ecx / 2
    25e8:	01 f1                	add    %esi,%ecx               #ecx += esi
    25ea:	39 f9                	cmp    %edi,%ecx
    25ec:	7f 0c                	jg     25fa <func4+0x23>       #ecx > edi -> edx = ecx - 1
    25ee:	b8 00 00 00 00       	mov    $0x0,%eax
    25f3:	7c 11                	jl     2606 <func4+0x2f>       #ecx < edi -> esi = ecx + 1
    25f5:	48 83 c4 08          	add    $0x8,%rsp
    25f9:	c3                   	retq   
    25fa:	8d 51 ff             	lea    -0x1(%rcx),%edx
    25fd:	e8 d5 ff ff ff       	callq  25d7 <func4>
    2602:	01 c0                	add    %eax,%eax
    2604:	eb ef                	jmp    25f5 <func4+0x1e>
    2606:	8d 71 01             	lea    0x1(%rcx),%esi
    2609:	e8 c9 ff ff ff       	callq  25d7 <func4>
    260e:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    2612:	eb e1                	jmp    25f5 <func4+0x1e>

0000000000002614 <phase_4>:
    2614:	48 83 ec 18          	sub    $0x18,%rsp
    2618:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    261f:	00 00 
    2621:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2626:	31 c0                	xor    %eax,%eax
    2628:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    262d:	48 89 e2             	mov    %rsp,%rdx
    2630:	48 8d 35 ea 1f 00 00 	lea    0x1fea(%rip),%rsi        # 4621 <array.0+0x421>
    2637:	e8 14 fb ff ff       	callq  2150 <__isoc99_sscanf@plt>
    263c:	83 f8 02             	cmp    $0x2,%eax
    263f:	75 06                	jne    2647 <phase_4+0x33>
    2641:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    2645:	76 05                	jbe    264c <phase_4+0x38>
    2647:	e8 12 06 00 00       	callq  2c5e <explode_bomb>
    264c:	ba 0e 00 00 00       	mov    $0xe,%edx
    2651:	be 00 00 00 00       	mov    $0x0,%esi
    2656:	8b 3c 24             	mov    (%rsp),%edi
    2659:	e8 79 ff ff ff       	callq  25d7 <func4>            #进入func4函数
    265e:	8b 4c 24 04          	mov    0x4(%rsp),%ecx
    2662:	8d 51 fa             	lea    -0x6(%rcx),%edx
    2665:	89 54 24 04          	mov    %edx,0x4(%rsp)
    2669:	83 fa 06             	cmp    $0x6,%edx               #第二个数操作之后必须为6
    266c:	75 05                	jne    2673 <phase_4+0x5f>
    266e:	83 f8 06             	cmp    $0x6,%eax               #函数返回值必须为6
    2671:	74 05                	je     2678 <phase_4+0x64>
    2673:	e8 e6 05 00 00       	callq  2c5e <explode_bomb>
    2678:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    267d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2684:	00 00 
    2686:	75 05                	jne    268d <phase_4+0x79>
    2688:	48 83 c4 18          	add    $0x18,%rsp
    268c:	c3                   	retq   
    268d:	e8 0e fa ff ff       	callq  20a0 <__stack_chk_fail@plt>

0000000000002692 <phase_5>:
    2692:	53                   	push   %rbx
    2693:	48 89 fb             	mov    %rdi,%rbx
    2696:	e8 ca 02 00 00       	callq  2965 <string_length>
    269b:	83 f8 06             	cmp    $0x6,%eax
    269e:	75 2c                	jne    26cc <phase_5+0x3a>
    26a0:	48 89 d8             	mov    %rbx,%rax
    26a3:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    26a7:	b9 00 00 00 00       	mov    $0x0,%ecx
    26ac:	48 8d 35 4d 1b 00 00 	lea    0x1b4d(%rip),%rsi        # 4200 <array.0>
    26b3:	0f b6 10             	movzbl (%rax),%edx
    26b6:	83 e2 0f             	and    $0xf,%edx
    26b9:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    26bc:	48 83 c0 01          	add    $0x1,%rax
    26c0:	48 39 f8             	cmp    %rdi,%rax
    26c3:	75 ee                	jne    26b3 <phase_5+0x21>
    26c5:	83 f9 2e             	cmp    $0x2e,%ecx
    26c8:	75 09                	jne    26d3 <phase_5+0x41>
    26ca:	5b                   	pop    %rbx
    26cb:	c3                   	retq   
    26cc:	e8 8d 05 00 00       	callq  2c5e <explode_bomb>
    26d1:	eb cd                	jmp    26a0 <phase_5+0xe>
    26d3:	e8 86 05 00 00       	callq  2c5e <explode_bomb>
    26d8:	eb f0                	jmp    26ca <phase_5+0x38>

00000000000026da <phase_6>:
    26da:	41 57                	push   %r15
    26dc:	41 56                	push   %r14
    26de:	41 55                	push   %r13
    26e0:	41 54                	push   %r12
    26e2:	55                   	push   %rbp
    26e3:	53                   	push   %rbx
    26e4:	48 83 ec 78          	sub    $0x78,%rsp
    26e8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    26ef:	00 00 
    26f1:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    26f6:	31 c0                	xor    %eax,%eax
    26f8:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
    26fd:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
    2702:	4c 89 f6             	mov    %r14,%rsi

    2705:	e8 14 06 00 00       	callq  2d1e <read_six_numbers>  #input

    270a:	4d 89 f4             	mov    %r14,%r12
    270d:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    2713:	4d 89 f5             	mov    %r14,%r13
    2716:	e9 c6 00 00 00       	jmpq   27e1 <phase_6+0x107>     # jmp away to 27e1
    271b:	e8 3e 05 00 00       	callq  2c5e <explode_bomb>
    2720:	e9 ce 00 00 00       	jmpq   27f3 <phase_6+0x119>
    2725:	48 83 c3 01          	add    $0x1,%rbx
    2729:	83 fb 05             	cmp    $0x5,%ebx
    272c:	0f 8f a7 00 00 00    	jg     27d9 <phase_6+0xff>      # jump3 away
    2732:	41 8b 44 9d 00       	mov    0x0(%r13,%rbx,4),%eax    # jump2 to
    2737:	39 45 00             	cmp    %eax,0x0(%rbp)
    273a:	75 e9                	jne    2725 <phase_6+0x4b>
    273c:	e8 1d 05 00 00       	callq  2c5e <explode_bomb>
    2741:	eb e2                	jmp    2725 <phase_6+0x4b>

    2743:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx   #rsp+0x8的值赋给rdx
    2748:	48 83 c2 18          	add    $0x18,%rdx
    274c:	b9 07 00 00 00       	mov    $0x7,%ecx        # ecx = 7
    2751:	89 c8                	mov    %ecx,%eax        # eax = 7
    2753:	41 2b 04 24          	sub    (%r12),%eax      # eax -= (r12)
    2757:	41 89 04 24          	mov    %eax,(%r12)      # (r12) = eax
    275b:	49 83 c4 04          	add    $0x4,%r12        # r12 += 4
    275f:	4c 39 e2             	cmp    %r12,%rdx        # if rdx != r12, loop
    2762:	75 ed                	jne    2751 <phase_6+0x77>

    2764:	be 00 00 00 00       	mov    $0x0,%esi
    2769:	8b 4c b4 10          	mov    0x10(%rsp,%rsi,4),%ecx
    276d:	b8 01 00 00 00       	mov    $0x1,%eax
    2772:	48 8d 15 e7 eb 00 00 	lea    0xebe7(%rip),%rdx        # 11360 <node1>
    2779:	83 f9 01             	cmp    $0x1,%ecx
    277c:	7e 0b                	jle    2789 <phase_6+0xaf>

    277e:	48 8b 52 08          	mov    0x8(%rdx),%rdx        # 链表next
    2782:	83 c0 01             	add    $0x1,%eax
    2785:	39 c8                	cmp    %ecx,%eax
    2787:	75 f5                	jne    277e <phase_6+0xa4>

    2789:	48 89 54 f4 30       	mov    %rdx,0x30(%rsp,%rsi,8)
    278e:	48 83 c6 01          	add    $0x1,%rsi
    2792:	48 83 fe 06          	cmp    $0x6,%rsi
    2796:	75 d1                	jne    2769 <phase_6+0x8f>
    2798:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
    279d:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    27a2:	48 89 43 08          	mov    %rax,0x8(%rbx)
    27a6:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    27ab:	48 89 50 08          	mov    %rdx,0x8(%rax)
    27af:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    27b4:	48 89 42 08          	mov    %rax,0x8(%rdx)
    27b8:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
    27bd:	48 89 50 08          	mov    %rdx,0x8(%rax)
    27c1:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    27c6:	48 89 42 08          	mov    %rax,0x8(%rdx)
    27ca:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    27d1:	00 
    27d2:	bd 05 00 00 00       	mov    $0x5,%ebp
    27d7:	eb 35                	jmp    280e <phase_6+0x134>
    27d9:	49 83 c7 01          	add    $0x1,%r15                #jump3 to  1.r15=1;
    27dd:	49 83 c6 04          	add    $0x4,%r14

    27e1:	4c 89 f5             	mov    %r14,%rbp                # jump1 to here
    27e4:	41 8b 06             	mov    (%r14),%eax
    27e7:	83 e8 01             	sub    $0x1,%eax
    27ea:	83 f8 05             	cmp    $0x5,%eax
    27ed:	0f 87 28 ff ff ff    	ja     271b <phase_6+0x41>     # if first_arg>=7 explode
    27f3:	41 83 ff 05          	cmp    $0x5,%r15d              # compare r15d(fist is 1) and 5
    27f7:	0f 8f 46 ff ff ff    	jg     2743 <phase_6+0x69>     
    27fd:	4c 89 fb             	mov    %r15,%rbx               # rbx = r15
    2800:	e9 2d ff ff ff       	jmpq   2732 <phase_6+0x58>     # jump2 away

#link_node key code
    2805:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    2809:	83 ed 01             	sub    $0x1,%ebp
    280c:	74 11                	je     281f <phase_6+0x145>
    280e:	48 8b 43 08          	mov    0x8(%rbx),%rax
    2812:	8b 00                	mov    (%rax),%eax
    2814:	39 03                	cmp    %eax,(%rbx)
    2816:	7d ed                	jge    2805 <phase_6+0x12b>
    2818:	e8 41 04 00 00       	callq  2c5e <explode_bomb>

    281d:	eb e6                	jmp    2805 <phase_6+0x12b>
    281f:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    2824:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    282b:	00 00 
    282d:	75 0f                	jne    283e <phase_6+0x164>
    282f:	48 83 c4 78          	add    $0x78,%rsp
    2833:	5b                   	pop    %rbx
    2834:	5d                   	pop    %rbp
    2835:	41 5c                	pop    %r12
    2837:	41 5d                	pop    %r13
    2839:	41 5e                	pop    %r14
    283b:	41 5f                	pop    %r15
    283d:	c3                   	retq   
    283e:	e8 5d f8 ff ff       	callq  20a0 <__stack_chk_fail@plt>

0000000000002843 <fun7>:
    2843:	55                   	push   %rbp
    2844:	53                   	push   %rbx
    2845:	48 83 ec 08          	sub    $0x8,%rsp
    2849:	48 89 fb             	mov    %rdi,%rbx         #某段地址的头指针 rdi rbx
    284c:	48 89 f5             	mov    %rsi,%rbp         #更新的next字符的指针 -> rbp
    284f:	48 85 ff             	test   %rdi,%rdi        
    2852:	74 2b                	je     287f <fun7+0x3c>   #为零就炸？
    2854:	0f b6 55 00          	movzbl 0x0(%rbp),%edx     #c的ascii
    2858:	84 d2                	test   %dl,%dl            #c的ascii
    285a:	74 2a                	je     2886 <fun7+0x43>   #为零就  jmp3
    285c:	80 fa 61             	cmp    $0x61,%dl          #char == 'a'?
    285f:	74 29                	je     288a <fun7+0x47>   #char == 'a',  jump1

    2861:	0f be d2             	movsbl %dl,%edx           #char != 'a'
    2864:	83 ea 61             	sub    $0x61,%edx         #char -= 'a'
    2867:	b8 01 00 00 00       	mov    $0x1,%eax          # eax = 1
    286c:	39 d0                	cmp    %edx,%eax
    286e:	74 1f                	je     288f <fun7+0x4c>   # if edx == eax (char == 'b'),jmp4 继续递归读取下一个字符
    2870:	83 c0 01             	add    $0x1,%eax          # char != 'b',eax++
    2873:	83 f8 1a             	cmp    $0x1a,%eax         # 不能超过z 否则爆炸
    2876:	75 f4                	jne    286c <fun7+0x29>
    2878:	e8 e1 03 00 00       	callq  2c5e <explode_bomb>
    287d:	eb 21                	jmp    28a0 <fun7+0x5d>    #到这里 进不来？ jump2
    287f:	e8 da 03 00 00       	callq  2c5e <explode_bomb>
    2884:	eb ce                	jmp    2854 <fun7+0x11>
    2886:	8b 03                	mov    (%rbx),%eax         #jmp3 to， 此时的rbx地址里的值->返回值,要为30
    2888:	eb 16                	jmp    28a0 <fun7+0x5d>    #到这里才不会继续递归 jump2 
    288a:	ba 00 00 00 00       	mov    $0x0,%edx              #jump1 to
    288f:	48 8d 75 01          	lea    0x1(%rbp),%rsi         #第二个字母 到rsi  jmp4 to
    2893:	48 63 d2             	movslq %edx,%rdx              # 0
    2896:	48 8b 7c d3 08       	mov    0x8(%rbx,%rdx,8),%rdi  # 8*rdx(和a的差值)+rbx+8 放到 rdi，对更新
    289b:	e8 a3 ff ff ff       	callq  2843 <fun7>            # 递归
    28a0:	48 83 c4 08          	add    $0x8,%rsp              #递归返回到这里就退出； jump2 to
    28a4:	5b                   	pop    %rbx
    28a5:	5d                   	pop    %rbp
    28a6:	c3                   	retq   

00000000000028a7 <secret_phase>:
    28a7:	48 83 ec 18          	sub    $0x18,%rsp
    28ab:	c7 44 24 0c 1e 00 00 	movl   $0x1e,0xc(%rsp)
    28b2:	00 
    28b3:	e8 a7 04 00 00       	callq  2d5f <read_line>
    28b8:	48 89 c6             	mov    %rax,%rsi
    28bb:	48 8d 3d 1e 62 00 00 	lea    0x621e(%rip),%rdi        # 8ae0 <t0>
    28c2:	e8 7c ff ff ff       	callq  2843 <fun7>              # 进入fun7函数
    28c7:	8b 54 24 0c          	mov    0xc(%rsp),%edx            
    28cb:	39 c2                	cmp    %eax,%edx                #if eax == 30，安全，结束
    28cd:	75 16                	jne    28e5 <secret_phase+0x3e>
    28cf:	48 8d 3d ca 18 00 00 	lea    0x18ca(%rip),%rdi        # 41a0 <_IO_stdin_used+0x1a0>
    28d6:	e8 95 f7 ff ff       	callq  2070 <puts@plt>
    28db:	e8 b9 05 00 00       	callq  2e99 <phase_defused>
    28e0:	48 83 c4 18          	add    $0x18,%rsp
    28e4:	c3                   	retq   
    28e5:	e8 74 03 00 00       	callq  2c5e <explode_bomb>
    28ea:	eb e3                	jmp    28cf <secret_phase+0x28>

00000000000028ec <sig_handler>:
    28ec:	48 83 ec 08          	sub    $0x8,%rsp
    28f0:	48 8d 3d 49 19 00 00 	lea    0x1949(%rip),%rdi        # 4240 <array.0+0x40>
    28f7:	e8 74 f7 ff ff       	callq  2070 <puts@plt>
    28fc:	bf 03 00 00 00       	mov    $0x3,%edi
    2901:	e8 ba f8 ff ff       	callq  21c0 <sleep@plt>
    2906:	48 8d 3d 1c 1b 00 00 	lea    0x1b1c(%rip),%rdi        # 4429 <array.0+0x229>
    290d:	b8 00 00 00 00       	mov    $0x0,%eax
    2912:	e8 99 f7 ff ff       	callq  20b0 <printf@plt>
    2917:	48 8b 3d a2 ee 00 00 	mov    0xeea2(%rip),%rdi        # 117c0 <stdout@@GLIBC_2.2.5>
    291e:	e8 1d f8 ff ff       	callq  2140 <fflush@plt>
    2923:	bf 01 00 00 00       	mov    $0x1,%edi
    2928:	e8 93 f8 ff ff       	callq  21c0 <sleep@plt>
    292d:	48 8d 3d fd 1a 00 00 	lea    0x1afd(%rip),%rdi        # 4431 <array.0+0x231>
    2934:	e8 37 f7 ff ff       	callq  2070 <puts@plt>
    2939:	bf 10 00 00 00       	mov    $0x10,%edi
    293e:	e8 5d f8 ff ff       	callq  21a0 <exit@plt>

0000000000002943 <invalid_phase>:
    2943:	48 83 ec 08          	sub    $0x8,%rsp
    2947:	48 89 fe             	mov    %rdi,%rsi
    294a:	48 8d 3d ea 1a 00 00 	lea    0x1aea(%rip),%rdi        # 443b <array.0+0x23b>
    2951:	b8 00 00 00 00       	mov    $0x0,%eax
    2956:	e8 55 f7 ff ff       	callq  20b0 <printf@plt>
    295b:	bf 08 00 00 00       	mov    $0x8,%edi
    2960:	e8 3b f8 ff ff       	callq  21a0 <exit@plt>

0000000000002965 <string_length>:
    2965:	80 3f 00             	cmpb   $0x0,(%rdi)
    2968:	74 12                	je     297c <string_length+0x17>
    296a:	b8 00 00 00 00       	mov    $0x0,%eax
    296f:	48 83 c7 01          	add    $0x1,%rdi
    2973:	83 c0 01             	add    $0x1,%eax
    2976:	80 3f 00             	cmpb   $0x0,(%rdi)
    2979:	75 f4                	jne    296f <string_length+0xa>
    297b:	c3                   	retq   
    297c:	b8 00 00 00 00       	mov    $0x0,%eax
    2981:	c3                   	retq   

0000000000002982 <strings_not_equal>:
    2982:	41 54                	push   %r12
    2984:	55                   	push   %rbp
    2985:	53                   	push   %rbx
    2986:	48 89 fb             	mov    %rdi,%rbx
    2989:	48 89 f5             	mov    %rsi,%rbp
    298c:	e8 d4 ff ff ff       	callq  2965 <string_length>
    2991:	41 89 c4             	mov    %eax,%r12d
    2994:	48 89 ef             	mov    %rbp,%rdi
    2997:	e8 c9 ff ff ff       	callq  2965 <string_length>
    299c:	89 c2                	mov    %eax,%edx
    299e:	b8 01 00 00 00       	mov    $0x1,%eax
    29a3:	41 39 d4             	cmp    %edx,%r12d
    29a6:	75 31                	jne    29d9 <strings_not_equal+0x57>
    29a8:	0f b6 13             	movzbl (%rbx),%edx
    29ab:	84 d2                	test   %dl,%dl
    29ad:	74 1e                	je     29cd <strings_not_equal+0x4b>
    29af:	b8 00 00 00 00       	mov    $0x0,%eax
    29b4:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    29b8:	75 1a                	jne    29d4 <strings_not_equal+0x52>
    29ba:	48 83 c0 01          	add    $0x1,%rax
    29be:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    29c2:	84 d2                	test   %dl,%dl
    29c4:	75 ee                	jne    29b4 <strings_not_equal+0x32>
    29c6:	b8 00 00 00 00       	mov    $0x0,%eax
    29cb:	eb 0c                	jmp    29d9 <strings_not_equal+0x57>
    29cd:	b8 00 00 00 00       	mov    $0x0,%eax
    29d2:	eb 05                	jmp    29d9 <strings_not_equal+0x57>
    29d4:	b8 01 00 00 00       	mov    $0x1,%eax
    29d9:	5b                   	pop    %rbx
    29da:	5d                   	pop    %rbp
    29db:	41 5c                	pop    %r12
    29dd:	c3                   	retq   

00000000000029de <initialize_bomb>:
    29de:	55                   	push   %rbp
    29df:	53                   	push   %rbx
    29e0:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
    29e7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    29ee:	00 00 
    29f0:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    29f7:	00 
    29f8:	31 c0                	xor    %eax,%eax
    29fa:	48 8d 35 eb fe ff ff 	lea    -0x115(%rip),%rsi        # 28ec <sig_handler>
    2a01:	bf 02 00 00 00       	mov    $0x2,%edi
    2a06:	e8 05 f7 ff ff       	callq  2110 <signal@plt>
    2a0b:	48 89 e7             	mov    %rsp,%rdi
    2a0e:	be 40 00 00 00       	mov    $0x40,%esi
    2a13:	e8 68 f7 ff ff       	callq  2180 <gethostname@plt>
    2a18:	85 c0                	test   %eax,%eax
    2a1a:	75 45                	jne    2a61 <initialize_bomb+0x83>
    2a1c:	48 8b 3d 9d e9 00 00 	mov    0xe99d(%rip),%rdi        # 113c0 <host_table>
    2a23:	48 8d 1d 9e e9 00 00 	lea    0xe99e(%rip),%rbx        # 113c8 <host_table+0x8>
    2a2a:	48 89 e5             	mov    %rsp,%rbp
    2a2d:	48 85 ff             	test   %rdi,%rdi
    2a30:	74 19                	je     2a4b <initialize_bomb+0x6d>
    2a32:	48 89 ee             	mov    %rbp,%rsi
    2a35:	e8 06 f6 ff ff       	callq  2040 <strcasecmp@plt>
    2a3a:	85 c0                	test   %eax,%eax
    2a3c:	74 59                	je     2a97 <initialize_bomb+0xb9>
    2a3e:	48 83 c3 08          	add    $0x8,%rbx
    2a42:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    2a46:	48 85 ff             	test   %rdi,%rdi
    2a49:	75 e7                	jne    2a32 <initialize_bomb+0x54>
    2a4b:	48 8d 3d 5e 18 00 00 	lea    0x185e(%rip),%rdi        # 42b0 <array.0+0xb0>
    2a52:	e8 19 f6 ff ff       	callq  2070 <puts@plt>
    2a57:	bf 08 00 00 00       	mov    $0x8,%edi
    2a5c:	e8 3f f7 ff ff       	callq  21a0 <exit@plt>
    2a61:	48 8d 3d 10 18 00 00 	lea    0x1810(%rip),%rdi        # 4278 <array.0+0x78>
    2a68:	e8 03 f6 ff ff       	callq  2070 <puts@plt>
    2a6d:	bf 08 00 00 00       	mov    $0x8,%edi
    2a72:	e8 29 f7 ff ff       	callq  21a0 <exit@plt>
    2a77:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
    2a7c:	48 8d 3d c9 19 00 00 	lea    0x19c9(%rip),%rdi        # 444c <array.0+0x24c>
    2a83:	b8 00 00 00 00       	mov    $0x0,%eax
    2a88:	e8 23 f6 ff ff       	callq  20b0 <printf@plt>
    2a8d:	bf 08 00 00 00       	mov    $0x8,%edi
    2a92:	e8 09 f7 ff ff       	callq  21a0 <exit@plt>
    2a97:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    2a9c:	e8 61 0e 00 00       	callq  3902 <init_driver>
    2aa1:	85 c0                	test   %eax,%eax
    2aa3:	78 d2                	js     2a77 <initialize_bomb+0x99>
    2aa5:	48 8d 3d ba 19 00 00 	lea    0x19ba(%rip),%rdi        # 4466 <array.0+0x266>
    2aac:	e8 bf f5 ff ff       	callq  2070 <puts@plt>
    2ab1:	48 8d 3d ba 19 00 00 	lea    0x19ba(%rip),%rdi        # 4472 <array.0+0x272>
    2ab8:	e8 b3 f5 ff ff       	callq  2070 <puts@plt>
    2abd:	48 8d 3d ba 19 00 00 	lea    0x19ba(%rip),%rdi        # 447e <array.0+0x27e>
    2ac4:	e8 a7 f5 ff ff       	callq  2070 <puts@plt>
    2ac9:	48 8d 3d ba 19 00 00 	lea    0x19ba(%rip),%rdi        # 448a <array.0+0x28a>
    2ad0:	e8 9b f5 ff ff       	callq  2070 <puts@plt>
    2ad5:	48 8d 3d ba 19 00 00 	lea    0x19ba(%rip),%rdi        # 4496 <array.0+0x296>
    2adc:	e8 8f f5 ff ff       	callq  2070 <puts@plt>
    2ae1:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    2ae8:	00 
    2ae9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2af0:	00 00 
    2af2:	75 0a                	jne    2afe <initialize_bomb+0x120>
    2af4:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    2afb:	5b                   	pop    %rbx
    2afc:	5d                   	pop    %rbp
    2afd:	c3                   	retq   
    2afe:	e8 9d f5 ff ff       	callq  20a0 <__stack_chk_fail@plt>

0000000000002b03 <initialize_bomb_solve>:
    2b03:	c3                   	retq   

0000000000002b04 <blank_line>:
    2b04:	55                   	push   %rbp
    2b05:	53                   	push   %rbx
    2b06:	48 83 ec 08          	sub    $0x8,%rsp
    2b0a:	48 89 fd             	mov    %rdi,%rbp
    2b0d:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    2b11:	84 db                	test   %bl,%bl
    2b13:	74 1e                	je     2b33 <blank_line+0x2f>
    2b15:	e8 b6 f6 ff ff       	callq  21d0 <__ctype_b_loc@plt>
    2b1a:	48 83 c5 01          	add    $0x1,%rbp
    2b1e:	48 0f be db          	movsbq %bl,%rbx
    2b22:	48 8b 00             	mov    (%rax),%rax
    2b25:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    2b2a:	75 e1                	jne    2b0d <blank_line+0x9>
    2b2c:	b8 00 00 00 00       	mov    $0x0,%eax
    2b31:	eb 05                	jmp    2b38 <blank_line+0x34>
    2b33:	b8 01 00 00 00       	mov    $0x1,%eax
    2b38:	48 83 c4 08          	add    $0x8,%rsp
    2b3c:	5b                   	pop    %rbx
    2b3d:	5d                   	pop    %rbp
    2b3e:	c3                   	retq   

0000000000002b3f <skip>:
    2b3f:	55                   	push   %rbp
    2b40:	53                   	push   %rbx
    2b41:	48 83 ec 08          	sub    $0x8,%rsp
    2b45:	48 8d 2d 34 ed 00 00 	lea    0xed34(%rip),%rbp        # 11880 <input_strings>
    2b4c:	48 63 15 25 ed 00 00 	movslq 0xed25(%rip),%rdx        # 11878 <num_input_strings>
    2b53:	48 89 d0             	mov    %rdx,%rax
    2b56:	48 c1 e0 04          	shl    $0x4,%rax
    2b5a:	48 29 d0             	sub    %rdx,%rax
    2b5d:	48 8d 7c c5 00       	lea    0x0(%rbp,%rax,8),%rdi
    2b62:	48 8b 15 87 ec 00 00 	mov    0xec87(%rip),%rdx        # 117f0 <infile>
    2b69:	be 78 00 00 00       	mov    $0x78,%esi
    2b6e:	e8 7d f5 ff ff       	callq  20f0 <fgets@plt>
    2b73:	48 89 c3             	mov    %rax,%rbx
    2b76:	48 85 c0             	test   %rax,%rax
    2b79:	74 0c                	je     2b87 <skip+0x48>
    2b7b:	48 89 c7             	mov    %rax,%rdi
    2b7e:	e8 81 ff ff ff       	callq  2b04 <blank_line>
    2b83:	85 c0                	test   %eax,%eax
    2b85:	75 c5                	jne    2b4c <skip+0xd>
    2b87:	48 89 d8             	mov    %rbx,%rax
    2b8a:	48 83 c4 08          	add    $0x8,%rsp
    2b8e:	5b                   	pop    %rbx
    2b8f:	5d                   	pop    %rbp
    2b90:	c3                   	retq   

0000000000002b91 <send_msg>:
    2b91:	53                   	push   %rbx
    2b92:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    2b99:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2ba0:	00 00 
    2ba2:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    2ba9:	00 
    2baa:	31 c0                	xor    %eax,%eax
    2bac:	44 8b 05 c5 ec 00 00 	mov    0xecc5(%rip),%r8d        # 11878 <num_input_strings>
    2bb3:	41 8d 40 ff          	lea    -0x1(%r8),%eax
    2bb7:	48 98                	cltq   
    2bb9:	48 89 c2             	mov    %rax,%rdx
    2bbc:	48 c1 e2 04          	shl    $0x4,%rdx
    2bc0:	48 29 c2             	sub    %rax,%rdx
    2bc3:	85 ff                	test   %edi,%edi
    2bc5:	48 8d 0d d6 18 00 00 	lea    0x18d6(%rip),%rcx        # 44a2 <array.0+0x2a2>
    2bcc:	48 8d 05 d7 18 00 00 	lea    0x18d7(%rip),%rax        # 44aa <array.0+0x2aa>
    2bd3:	48 0f 44 c8          	cmove  %rax,%rcx
    2bd7:	48 89 e3             	mov    %rsp,%rbx
    2bda:	48 8d 05 9f ec 00 00 	lea    0xec9f(%rip),%rax        # 11880 <input_strings>
    2be1:	4c 8d 0c d0          	lea    (%rax,%rdx,8),%r9
    2be5:	8b 15 e9 5e 00 00    	mov    0x5ee9(%rip),%edx        # 8ad4 <bomb_id>
    2beb:	48 8d 35 c1 18 00 00 	lea    0x18c1(%rip),%rsi        # 44b3 <array.0+0x2b3>
    2bf2:	48 89 df             	mov    %rbx,%rdi
    2bf5:	b8 00 00 00 00       	mov    $0x0,%eax
    2bfa:	e8 91 f5 ff ff       	callq  2190 <sprintf@plt>
    2bff:	4c 8d 84 24 00 20 00 	lea    0x2000(%rsp),%r8
    2c06:	00 
    2c07:	b9 00 00 00 00       	mov    $0x0,%ecx
    2c0c:	48 89 da             	mov    %rbx,%rdx
    2c0f:	48 8d 35 9a 5e 00 00 	lea    0x5e9a(%rip),%rsi        # 8ab0 <user_password>
    2c16:	48 8d 3d ab 5e 00 00 	lea    0x5eab(%rip),%rdi        # 8ac8 <userid>
    2c1d:	e8 c0 0e 00 00       	callq  3ae2 <driver_post>
    2c22:	85 c0                	test   %eax,%eax
    2c24:	78 1c                	js     2c42 <send_msg+0xb1>
    2c26:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    2c2d:	00 
    2c2e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2c35:	00 00 
    2c37:	75 20                	jne    2c59 <send_msg+0xc8>
    2c39:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    2c40:	5b                   	pop    %rbx
    2c41:	c3                   	retq   
    2c42:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    2c49:	00 
    2c4a:	e8 21 f4 ff ff       	callq  2070 <puts@plt>
    2c4f:	bf 00 00 00 00       	mov    $0x0,%edi
    2c54:	e8 47 f5 ff ff       	callq  21a0 <exit@plt>
    2c59:	e8 42 f4 ff ff       	callq  20a0 <__stack_chk_fail@plt>

0000000000002c5e <explode_bomb>:
    2c5e:	48 83 ec 08          	sub    $0x8,%rsp
    2c62:	48 8d 3d 7f 16 00 00 	lea    0x167f(%rip),%rdi        # 42e8 <array.0+0xe8>
    2c69:	e8 02 f4 ff ff       	callq  2070 <puts@plt>
    2c6e:	48 8d 3d 4a 18 00 00 	lea    0x184a(%rip),%rdi        # 44bf <array.0+0x2bf>
    2c75:	e8 f6 f3 ff ff       	callq  2070 <puts@plt>
    2c7a:	48 8d 3d 5b 18 00 00 	lea    0x185b(%rip),%rdi        # 44dc <array.0+0x2dc>
    2c81:	e8 ea f3 ff ff       	callq  2070 <puts@plt>
    2c86:	48 8d 3d 6c 18 00 00 	lea    0x186c(%rip),%rdi        # 44f9 <array.0+0x2f9>
    2c8d:	e8 de f3 ff ff       	callq  2070 <puts@plt>
    2c92:	48 8d 3d 7d 18 00 00 	lea    0x187d(%rip),%rdi        # 4516 <array.0+0x316>
    2c99:	e8 d2 f3 ff ff       	callq  2070 <puts@plt>
    2c9e:	48 8d 3d 8e 18 00 00 	lea    0x188e(%rip),%rdi        # 4533 <array.0+0x333>
    2ca5:	e8 c6 f3 ff ff       	callq  2070 <puts@plt>
    2caa:	48 8d 3d 9e 18 00 00 	lea    0x189e(%rip),%rdi        # 454f <array.0+0x34f>
    2cb1:	e8 ba f3 ff ff       	callq  2070 <puts@plt>
    2cb6:	48 8d 3d af 18 00 00 	lea    0x18af(%rip),%rdi        # 456c <array.0+0x36c>
    2cbd:	e8 ae f3 ff ff       	callq  2070 <puts@plt>
    2cc2:	48 8d 3d c0 18 00 00 	lea    0x18c0(%rip),%rdi        # 4589 <array.0+0x389>
    2cc9:	e8 a2 f3 ff ff       	callq  2070 <puts@plt>
    2cce:	48 8d 3d d1 18 00 00 	lea    0x18d1(%rip),%rdi        # 45a6 <array.0+0x3a6>
    2cd5:	e8 96 f3 ff ff       	callq  2070 <puts@plt>
    2cda:	48 8d 3d e2 18 00 00 	lea    0x18e2(%rip),%rdi        # 45c3 <array.0+0x3c3>
    2ce1:	e8 8a f3 ff ff       	callq  2070 <puts@plt>
    2ce6:	48 8d 3d f3 18 00 00 	lea    0x18f3(%rip),%rdi        # 45e0 <array.0+0x3e0>
    2ced:	e8 7e f3 ff ff       	callq  2070 <puts@plt>
    2cf2:	48 8d 3d 04 19 00 00 	lea    0x1904(%rip),%rdi        # 45fd <array.0+0x3fd>
    2cf9:	e8 72 f3 ff ff       	callq  2070 <puts@plt>
    2cfe:	bf 00 00 00 00       	mov    $0x0,%edi
    2d03:	e8 89 fe ff ff       	callq  2b91 <send_msg>
    2d08:	48 8d 3d 21 16 00 00 	lea    0x1621(%rip),%rdi        # 4330 <array.0+0x130>
    2d0f:	e8 5c f3 ff ff       	callq  2070 <puts@plt>
    2d14:	bf 08 00 00 00       	mov    $0x8,%edi
    2d19:	e8 82 f4 ff ff       	callq  21a0 <exit@plt>

0000000000002d1e <read_six_numbers>:
    2d1e:	48 83 ec 08          	sub    $0x8,%rsp
    2d22:	48 89 f2             	mov    %rsi,%rdx
    2d25:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    2d29:	48 8d 46 14          	lea    0x14(%rsi),%rax
    2d2d:	50                   	push   %rax
    2d2e:	48 8d 46 10          	lea    0x10(%rsi),%rax
    2d32:	50                   	push   %rax
    2d33:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    2d37:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    2d3b:	48 8d 35 d3 18 00 00 	lea    0x18d3(%rip),%rsi        # 4615 <array.0+0x415>
    2d42:	b8 00 00 00 00       	mov    $0x0,%eax
    2d47:	e8 04 f4 ff ff       	callq  2150 <__isoc99_sscanf@plt>
    2d4c:	48 83 c4 10          	add    $0x10,%rsp
    2d50:	83 f8 05             	cmp    $0x5,%eax
    2d53:	7e 05                	jle    2d5a <read_six_numbers+0x3c>
    2d55:	48 83 c4 08          	add    $0x8,%rsp
    2d59:	c3                   	retq   
    2d5a:	e8 ff fe ff ff       	callq  2c5e <explode_bomb>

0000000000002d5f <read_line>:
    2d5f:	55                   	push   %rbp
    2d60:	53                   	push   %rbx
    2d61:	48 83 ec 08          	sub    $0x8,%rsp
    2d65:	b8 00 00 00 00       	mov    $0x0,%eax
    2d6a:	e8 d0 fd ff ff       	callq  2b3f <skip>
    2d6f:	48 85 c0             	test   %rax,%rax
    2d72:	74 63                	je     2dd7 <read_line+0x78>
    2d74:	8b 1d fe ea 00 00    	mov    0xeafe(%rip),%ebx        # 11878 <num_input_strings>
    2d7a:	48 63 d3             	movslq %ebx,%rdx
    2d7d:	48 89 d0             	mov    %rdx,%rax
    2d80:	48 c1 e0 04          	shl    $0x4,%rax
    2d84:	48 29 d0             	sub    %rdx,%rax
    2d87:	48 8d 15 f2 ea 00 00 	lea    0xeaf2(%rip),%rdx        # 11880 <input_strings>
    2d8e:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    2d92:	48 89 ef             	mov    %rbp,%rdi
    2d95:	e8 f6 f2 ff ff       	callq  2090 <strlen@plt>
    2d9a:	83 f8 76             	cmp    $0x76,%eax
    2d9d:	0f 8f ac 00 00 00    	jg     2e4f <read_line+0xf0>
    2da3:	83 e8 01             	sub    $0x1,%eax
    2da6:	48 98                	cltq   
    2da8:	48 63 cb             	movslq %ebx,%rcx
    2dab:	48 89 ca             	mov    %rcx,%rdx
    2dae:	48 c1 e2 04          	shl    $0x4,%rdx
    2db2:	48 29 ca             	sub    %rcx,%rdx
    2db5:	48 8d 0d c4 ea 00 00 	lea    0xeac4(%rip),%rcx        # 11880 <input_strings>
    2dbc:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    2dc0:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    2dc4:	83 c3 01             	add    $0x1,%ebx
    2dc7:	89 1d ab ea 00 00    	mov    %ebx,0xeaab(%rip)        # 11878 <num_input_strings>
    2dcd:	48 89 e8             	mov    %rbp,%rax
    2dd0:	48 83 c4 08          	add    $0x8,%rsp
    2dd4:	5b                   	pop    %rbx
    2dd5:	5d                   	pop    %rbp
    2dd6:	c3                   	retq   
    2dd7:	48 8b 05 f2 e9 00 00 	mov    0xe9f2(%rip),%rax        # 117d0 <stdin@@GLIBC_2.2.5>
    2dde:	48 39 05 0b ea 00 00 	cmp    %rax,0xea0b(%rip)        # 117f0 <infile>
    2de5:	74 1b                	je     2e02 <read_line+0xa3>
    2de7:	48 8d 3d 57 18 00 00 	lea    0x1857(%rip),%rdi        # 4645 <array.0+0x445>
    2dee:	e8 3d f2 ff ff       	callq  2030 <getenv@plt>
    2df3:	48 85 c0             	test   %rax,%rax
    2df6:	74 20                	je     2e18 <read_line+0xb9>
    2df8:	bf 00 00 00 00       	mov    $0x0,%edi
    2dfd:	e8 9e f3 ff ff       	callq  21a0 <exit@plt>
    2e02:	48 8d 3d 1e 18 00 00 	lea    0x181e(%rip),%rdi        # 4627 <array.0+0x427>
    2e09:	e8 62 f2 ff ff       	callq  2070 <puts@plt>
    2e0e:	bf 08 00 00 00       	mov    $0x8,%edi
    2e13:	e8 88 f3 ff ff       	callq  21a0 <exit@plt>
    2e18:	48 8b 05 b1 e9 00 00 	mov    0xe9b1(%rip),%rax        # 117d0 <stdin@@GLIBC_2.2.5>
    2e1f:	48 89 05 ca e9 00 00 	mov    %rax,0xe9ca(%rip)        # 117f0 <infile>
    2e26:	b8 00 00 00 00       	mov    $0x0,%eax
    2e2b:	e8 0f fd ff ff       	callq  2b3f <skip>
    2e30:	48 85 c0             	test   %rax,%rax
    2e33:	0f 85 3b ff ff ff    	jne    2d74 <read_line+0x15>
    2e39:	48 8d 3d e7 17 00 00 	lea    0x17e7(%rip),%rdi        # 4627 <array.0+0x427>
    2e40:	e8 2b f2 ff ff       	callq  2070 <puts@plt>
    2e45:	bf 00 00 00 00       	mov    $0x0,%edi
    2e4a:	e8 51 f3 ff ff       	callq  21a0 <exit@plt>
    2e4f:	48 8d 3d fa 17 00 00 	lea    0x17fa(%rip),%rdi        # 4650 <array.0+0x450>
    2e56:	e8 15 f2 ff ff       	callq  2070 <puts@plt>
    2e5b:	8b 05 17 ea 00 00    	mov    0xea17(%rip),%eax        # 11878 <num_input_strings>
    2e61:	8d 50 01             	lea    0x1(%rax),%edx
    2e64:	89 15 0e ea 00 00    	mov    %edx,0xea0e(%rip)        # 11878 <num_input_strings>
    2e6a:	48 98                	cltq   
    2e6c:	48 6b c0 78          	imul   $0x78,%rax,%rax
    2e70:	48 8d 15 09 ea 00 00 	lea    0xea09(%rip),%rdx        # 11880 <input_strings>
    2e77:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    2e7e:	75 6e 63 
    2e81:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    2e88:	2a 2a 00 
    2e8b:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    2e8f:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    2e94:	e8 c5 fd ff ff       	callq  2c5e <explode_bomb>

0000000000002e99 <phase_defused>:
    2e99:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    2ea0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2ea7:	00 00 
    2ea9:	48 89 84 24 88 00 00 	mov    %rax,0x88(%rsp)
    2eb0:	00 
    2eb1:	31 c0                	xor    %eax,%eax
    2eb3:	bf 01 00 00 00       	mov    $0x1,%edi
    2eb8:	e8 d4 fc ff ff       	callq  2b91 <send_msg>
    2ebd:	83 3d b4 e9 00 00 06 	cmpl   $0x6,0xe9b4(%rip)        # 11878 <num_input_strings>
    2ec4:	74 1f                	je     2ee5 <phase_defused+0x4c>
    2ec6:	48 8b 84 24 88 00 00 	mov    0x88(%rsp),%rax
    2ecd:	00 
    2ece:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2ed5:	00 00 
    2ed7:	0f 85 87 00 00 00    	jne    2f64 <phase_defused+0xcb>
    2edd:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    2ee4:	c3                   	retq   
    2ee5:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    2eea:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    2eef:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    2ef4:	48 8d 35 70 17 00 00 	lea    0x1770(%rip),%rsi        # 466b <array.0+0x46b>
    2efb:	48 8d 3d e6 ea 00 00 	lea    0xeae6(%rip),%rdi        # 119e8 <input_strings+0x168>
    2f02:	b8 00 00 00 00       	mov    $0x0,%eax
    2f07:	e8 44 f2 ff ff       	callq  2150 <__isoc99_sscanf@plt>
    2f0c:	83 f8 03             	cmp    $0x3,%eax
    2f0f:	74 1a                	je     2f2b <phase_defused+0x92>
    2f11:	48 8d 3d a0 14 00 00 	lea    0x14a0(%rip),%rdi        # 43b8 <array.0+0x1b8>
    2f18:	e8 53 f1 ff ff       	callq  2070 <puts@plt>
    2f1d:	48 8d 3d c4 14 00 00 	lea    0x14c4(%rip),%rdi        # 43e8 <array.0+0x1e8>
    2f24:	e8 47 f1 ff ff       	callq  2070 <puts@plt>
    2f29:	eb 9b                	jmp    2ec6 <phase_defused+0x2d>
    2f2b:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    2f30:	48 8d 35 3d 17 00 00 	lea    0x173d(%rip),%rsi        # 4674 <array.0+0x474>
    2f37:	e8 46 fa ff ff       	callq  2982 <strings_not_equal>
    2f3c:	85 c0                	test   %eax,%eax
    2f3e:	75 d1                	jne    2f11 <phase_defused+0x78>
    2f40:	48 8d 3d 11 14 00 00 	lea    0x1411(%rip),%rdi        # 4358 <array.0+0x158>
    2f47:	e8 24 f1 ff ff       	callq  2070 <puts@plt>
    2f4c:	48 8d 3d 2d 14 00 00 	lea    0x142d(%rip),%rdi        # 4380 <array.0+0x180>
    2f53:	e8 18 f1 ff ff       	callq  2070 <puts@plt>
    2f58:	b8 00 00 00 00       	mov    $0x0,%eax
    2f5d:	e8 45 f9 ff ff       	callq  28a7 <secret_phase>
    2f62:	eb ad                	jmp    2f11 <phase_defused+0x78>
    2f64:	e8 37 f1 ff ff       	callq  20a0 <__stack_chk_fail@plt>

0000000000002f69 <sigalrm_handler>:
    2f69:	48 83 ec 08          	sub    $0x8,%rsp
    2f6d:	ba 00 00 00 00       	mov    $0x0,%edx
    2f72:	48 8d 35 17 17 00 00 	lea    0x1717(%rip),%rsi        # 4690 <array.0+0x490>
    2f79:	48 8b 3d 60 e8 00 00 	mov    0xe860(%rip),%rdi        # 117e0 <stderr@@GLIBC_2.2.5>
    2f80:	b8 00 00 00 00       	mov    $0x0,%eax
    2f85:	e8 a6 f1 ff ff       	callq  2130 <fprintf@plt>
    2f8a:	bf 01 00 00 00       	mov    $0x1,%edi
    2f8f:	e8 0c f2 ff ff       	callq  21a0 <exit@plt>

0000000000002f94 <rio_writen>:
    2f94:	41 56                	push   %r14
    2f96:	41 55                	push   %r13
    2f98:	41 54                	push   %r12
    2f9a:	55                   	push   %rbp
    2f9b:	53                   	push   %rbx
    2f9c:	49 89 d5             	mov    %rdx,%r13
    2f9f:	48 85 d2             	test   %rdx,%rdx
    2fa2:	74 3b                	je     2fdf <rio_writen+0x4b>
    2fa4:	41 89 fc             	mov    %edi,%r12d
    2fa7:	48 89 f5             	mov    %rsi,%rbp
    2faa:	48 89 d3             	mov    %rdx,%rbx
    2fad:	41 be 00 00 00 00    	mov    $0x0,%r14d
    2fb3:	eb 08                	jmp    2fbd <rio_writen+0x29>
    2fb5:	48 01 c5             	add    %rax,%rbp
    2fb8:	48 29 c3             	sub    %rax,%rbx
    2fbb:	74 22                	je     2fdf <rio_writen+0x4b>
    2fbd:	48 89 da             	mov    %rbx,%rdx
    2fc0:	48 89 ee             	mov    %rbp,%rsi
    2fc3:	44 89 e7             	mov    %r12d,%edi
    2fc6:	e8 b5 f0 ff ff       	callq  2080 <write@plt>
    2fcb:	48 85 c0             	test   %rax,%rax
    2fce:	7f e5                	jg     2fb5 <rio_writen+0x21>
    2fd0:	e8 7b f0 ff ff       	callq  2050 <__errno_location@plt>
    2fd5:	83 38 04             	cmpl   $0x4,(%rax)
    2fd8:	75 11                	jne    2feb <rio_writen+0x57>
    2fda:	4c 89 f0             	mov    %r14,%rax
    2fdd:	eb d6                	jmp    2fb5 <rio_writen+0x21>
    2fdf:	4c 89 e8             	mov    %r13,%rax
    2fe2:	5b                   	pop    %rbx
    2fe3:	5d                   	pop    %rbp
    2fe4:	41 5c                	pop    %r12
    2fe6:	41 5d                	pop    %r13
    2fe8:	41 5e                	pop    %r14
    2fea:	c3                   	retq   
    2feb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2ff2:	eb ee                	jmp    2fe2 <rio_writen+0x4e>

0000000000002ff4 <rio_readlineb>:
    2ff4:	41 56                	push   %r14
    2ff6:	41 55                	push   %r13
    2ff8:	41 54                	push   %r12
    2ffa:	55                   	push   %rbp
    2ffb:	53                   	push   %rbx
    2ffc:	49 89 f4             	mov    %rsi,%r12
    2fff:	48 83 fa 01          	cmp    $0x1,%rdx
    3003:	0f 86 92 00 00 00    	jbe    309b <rio_readlineb+0xa7>
    3009:	48 89 fb             	mov    %rdi,%rbx
    300c:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    3011:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    3017:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    301b:	eb 56                	jmp    3073 <rio_readlineb+0x7f>
    301d:	e8 2e f0 ff ff       	callq  2050 <__errno_location@plt>
    3022:	83 38 04             	cmpl   $0x4,(%rax)
    3025:	75 55                	jne    307c <rio_readlineb+0x88>
    3027:	ba 00 20 00 00       	mov    $0x2000,%edx
    302c:	48 89 ee             	mov    %rbp,%rsi
    302f:	8b 3b                	mov    (%rbx),%edi
    3031:	e8 aa f0 ff ff       	callq  20e0 <read@plt>
    3036:	89 c2                	mov    %eax,%edx
    3038:	89 43 04             	mov    %eax,0x4(%rbx)
    303b:	85 c0                	test   %eax,%eax
    303d:	78 de                	js     301d <rio_readlineb+0x29>
    303f:	85 c0                	test   %eax,%eax
    3041:	74 42                	je     3085 <rio_readlineb+0x91>
    3043:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    3047:	48 8b 43 08          	mov    0x8(%rbx),%rax
    304b:	0f b6 08             	movzbl (%rax),%ecx
    304e:	48 83 c0 01          	add    $0x1,%rax
    3052:	48 89 43 08          	mov    %rax,0x8(%rbx)
    3056:	83 ea 01             	sub    $0x1,%edx
    3059:	89 53 04             	mov    %edx,0x4(%rbx)
    305c:	49 83 c4 01          	add    $0x1,%r12
    3060:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    3065:	80 f9 0a             	cmp    $0xa,%cl
    3068:	74 3c                	je     30a6 <rio_readlineb+0xb2>
    306a:	41 83 c5 01          	add    $0x1,%r13d
    306e:	4d 39 f4             	cmp    %r14,%r12
    3071:	74 30                	je     30a3 <rio_readlineb+0xaf>
    3073:	8b 53 04             	mov    0x4(%rbx),%edx
    3076:	85 d2                	test   %edx,%edx
    3078:	7e ad                	jle    3027 <rio_readlineb+0x33>
    307a:	eb cb                	jmp    3047 <rio_readlineb+0x53>
    307c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    3083:	eb 05                	jmp    308a <rio_readlineb+0x96>
    3085:	b8 00 00 00 00       	mov    $0x0,%eax
    308a:	85 c0                	test   %eax,%eax
    308c:	75 29                	jne    30b7 <rio_readlineb+0xc3>
    308e:	b8 00 00 00 00       	mov    $0x0,%eax
    3093:	41 83 fd 01          	cmp    $0x1,%r13d
    3097:	75 0d                	jne    30a6 <rio_readlineb+0xb2>
    3099:	eb 13                	jmp    30ae <rio_readlineb+0xba>
    309b:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    30a1:	eb 03                	jmp    30a6 <rio_readlineb+0xb2>
    30a3:	4d 89 f4             	mov    %r14,%r12
    30a6:	41 c6 04 24 00       	movb   $0x0,(%r12)
    30ab:	49 63 c5             	movslq %r13d,%rax
    30ae:	5b                   	pop    %rbx
    30af:	5d                   	pop    %rbp
    30b0:	41 5c                	pop    %r12
    30b2:	41 5d                	pop    %r13
    30b4:	41 5e                	pop    %r14
    30b6:	c3                   	retq   
    30b7:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    30be:	eb ee                	jmp    30ae <rio_readlineb+0xba>

00000000000030c0 <submitr>:
    30c0:	41 57                	push   %r15
    30c2:	41 56                	push   %r14
    30c4:	41 55                	push   %r13
    30c6:	41 54                	push   %r12
    30c8:	55                   	push   %rbp
    30c9:	53                   	push   %rbx
    30ca:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    30d1:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    30d6:	89 f5                	mov    %esi,%ebp
    30d8:	49 89 d4             	mov    %rdx,%r12
    30db:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    30e0:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    30e5:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    30ea:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    30f1:	00 
    30f2:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    30f9:	00 
    30fa:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3101:	00 00 
    3103:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    310a:	00 
    310b:	31 c0                	xor    %eax,%eax
    310d:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    3114:	00 
    3115:	ba 00 00 00 00       	mov    $0x0,%edx
    311a:	be 01 00 00 00       	mov    $0x1,%esi
    311f:	bf 02 00 00 00       	mov    $0x2,%edi
    3124:	e8 b7 f0 ff ff       	callq  21e0 <socket@plt>
    3129:	85 c0                	test   %eax,%eax
    312b:	0f 88 0d 01 00 00    	js     323e <submitr+0x17e>
    3131:	41 89 c6             	mov    %eax,%r14d
    3134:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    3139:	e8 e2 ef ff ff       	callq  2120 <gethostbyname@plt>
    313e:	48 85 c0             	test   %rax,%rax
    3141:	0f 84 47 01 00 00    	je     328e <submitr+0x1ce>
    3147:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    314c:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    3153:	00 00 
    3155:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    315c:	00 00 
    315e:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    3165:	48 63 50 14          	movslq 0x14(%rax),%rdx
    3169:	48 8b 40 18          	mov    0x18(%rax),%rax
    316d:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    3172:	48 8b 30             	mov    (%rax),%rsi
    3175:	e8 e6 ef ff ff       	callq  2160 <memmove@plt>
    317a:	66 c1 c5 08          	rol    $0x8,%bp
    317e:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    3183:	ba 10 00 00 00       	mov    $0x10,%edx
    3188:	4c 89 ee             	mov    %r13,%rsi
    318b:	44 89 f7             	mov    %r14d,%edi
    318e:	e8 1d f0 ff ff       	callq  21b0 <connect@plt>
    3193:	85 c0                	test   %eax,%eax
    3195:	0f 88 5e 01 00 00    	js     32f9 <submitr+0x239>
    319b:	48 89 df             	mov    %rbx,%rdi
    319e:	e8 ed ee ff ff       	callq  2090 <strlen@plt>
    31a3:	48 89 c5             	mov    %rax,%rbp
    31a6:	4c 89 e7             	mov    %r12,%rdi
    31a9:	e8 e2 ee ff ff       	callq  2090 <strlen@plt>
    31ae:	49 89 c5             	mov    %rax,%r13
    31b1:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    31b6:	e8 d5 ee ff ff       	callq  2090 <strlen@plt>
    31bb:	49 89 c4             	mov    %rax,%r12
    31be:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    31c3:	e8 c8 ee ff ff       	callq  2090 <strlen@plt>
    31c8:	48 89 c2             	mov    %rax,%rdx
    31cb:	4b 8d 84 25 80 00 00 	lea    0x80(%r13,%r12,1),%rax
    31d2:	00 
    31d3:	48 01 d0             	add    %rdx,%rax
    31d6:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    31db:	48 01 d0             	add    %rdx,%rax
    31de:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    31e4:	0f 87 6c 01 00 00    	ja     3356 <submitr+0x296>
    31ea:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    31f1:	00 
    31f2:	b9 00 04 00 00       	mov    $0x400,%ecx
    31f7:	b8 00 00 00 00       	mov    $0x0,%eax
    31fc:	48 89 d7             	mov    %rdx,%rdi
    31ff:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    3202:	48 89 df             	mov    %rbx,%rdi
    3205:	e8 86 ee ff ff       	callq  2090 <strlen@plt>
    320a:	85 c0                	test   %eax,%eax
    320c:	0f 84 13 05 00 00    	je     3725 <submitr+0x665>
    3212:	8d 40 ff             	lea    -0x1(%rax),%eax
    3215:	4c 8d 64 03 01       	lea    0x1(%rbx,%rax,1),%r12
    321a:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    3221:	00 
    3222:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    3229:	00 
    322a:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    322f:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    3236:	00 20 00 
    3239:	e9 a5 01 00 00       	jmpq   33e3 <submitr+0x323>
    323e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3245:	3a 20 43 
    3248:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    324f:	20 75 6e 
    3252:	49 89 07             	mov    %rax,(%r15)
    3255:	49 89 57 08          	mov    %rdx,0x8(%r15)
    3259:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3260:	74 6f 20 
    3263:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    326a:	65 20 73 
    326d:	49 89 47 10          	mov    %rax,0x10(%r15)
    3271:	49 89 57 18          	mov    %rdx,0x18(%r15)
    3275:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    327c:	65 
    327d:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    3284:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3289:	e9 6e 03 00 00       	jmpq   35fc <submitr+0x53c>
    328e:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    3295:	3a 20 44 
    3298:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    329f:	20 75 6e 
    32a2:	49 89 07             	mov    %rax,(%r15)
    32a5:	49 89 57 08          	mov    %rdx,0x8(%r15)
    32a9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    32b0:	74 6f 20 
    32b3:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    32ba:	76 65 20 
    32bd:	49 89 47 10          	mov    %rax,0x10(%r15)
    32c1:	49 89 57 18          	mov    %rdx,0x18(%r15)
    32c5:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    32cc:	72 20 61 
    32cf:	49 89 47 20          	mov    %rax,0x20(%r15)
    32d3:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    32da:	65 
    32db:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    32e2:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    32e7:	44 89 f7             	mov    %r14d,%edi
    32ea:	e8 e1 ed ff ff       	callq  20d0 <close@plt>
    32ef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    32f4:	e9 03 03 00 00       	jmpq   35fc <submitr+0x53c>
    32f9:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    3300:	3a 20 55 
    3303:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    330a:	20 74 6f 
    330d:	49 89 07             	mov    %rax,(%r15)
    3310:	49 89 57 08          	mov    %rdx,0x8(%r15)
    3314:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    331b:	65 63 74 
    331e:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    3325:	68 65 20 
    3328:	49 89 47 10          	mov    %rax,0x10(%r15)
    332c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    3330:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    3337:	76 
    3338:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    333f:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    3344:	44 89 f7             	mov    %r14d,%edi
    3347:	e8 84 ed ff ff       	callq  20d0 <close@plt>
    334c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3351:	e9 a6 02 00 00       	jmpq   35fc <submitr+0x53c>
    3356:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    335d:	3a 20 52 
    3360:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    3367:	20 73 74 
    336a:	49 89 07             	mov    %rax,(%r15)
    336d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    3371:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    3378:	74 6f 6f 
    337b:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    3382:	65 2e 20 
    3385:	49 89 47 10          	mov    %rax,0x10(%r15)
    3389:	49 89 57 18          	mov    %rdx,0x18(%r15)
    338d:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    3394:	61 73 65 
    3397:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    339e:	49 54 52 
    33a1:	49 89 47 20          	mov    %rax,0x20(%r15)
    33a5:	49 89 57 28          	mov    %rdx,0x28(%r15)
    33a9:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    33b0:	55 46 00 
    33b3:	49 89 47 30          	mov    %rax,0x30(%r15)
    33b7:	44 89 f7             	mov    %r14d,%edi
    33ba:	e8 11 ed ff ff       	callq  20d0 <close@plt>
    33bf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    33c4:	e9 33 02 00 00       	jmpq   35fc <submitr+0x53c>
    33c9:	49 0f a3 c5          	bt     %rax,%r13
    33cd:	73 1e                	jae    33ed <submitr+0x32d>
    33cf:	88 55 00             	mov    %dl,0x0(%rbp)
    33d2:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    33d6:	48 83 c3 01          	add    $0x1,%rbx
    33da:	4c 39 e3             	cmp    %r12,%rbx
    33dd:	0f 84 42 03 00 00    	je     3725 <submitr+0x665>
    33e3:	0f b6 13             	movzbl (%rbx),%edx
    33e6:	8d 42 d6             	lea    -0x2a(%rdx),%eax
    33e9:	3c 35                	cmp    $0x35,%al
    33eb:	76 dc                	jbe    33c9 <submitr+0x309>
    33ed:	89 d0                	mov    %edx,%eax
    33ef:	83 e0 df             	and    $0xffffffdf,%eax
    33f2:	83 e8 41             	sub    $0x41,%eax
    33f5:	3c 19                	cmp    $0x19,%al
    33f7:	76 d6                	jbe    33cf <submitr+0x30f>
    33f9:	80 fa 20             	cmp    $0x20,%dl
    33fc:	74 50                	je     344e <submitr+0x38e>
    33fe:	8d 42 e0             	lea    -0x20(%rdx),%eax
    3401:	3c 5f                	cmp    $0x5f,%al
    3403:	76 09                	jbe    340e <submitr+0x34e>
    3405:	80 fa 09             	cmp    $0x9,%dl
    3408:	0f 85 8a 02 00 00    	jne    3698 <submitr+0x5d8>
    340e:	0f b6 d2             	movzbl %dl,%edx
    3411:	48 8d 35 46 13 00 00 	lea    0x1346(%rip),%rsi        # 475e <array.0+0x55e>
    3418:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    341d:	b8 00 00 00 00       	mov    $0x0,%eax
    3422:	e8 69 ed ff ff       	callq  2190 <sprintf@plt>
    3427:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    342e:	00 
    342f:	88 45 00             	mov    %al,0x0(%rbp)
    3432:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    3439:	00 
    343a:	88 45 01             	mov    %al,0x1(%rbp)
    343d:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    3444:	00 
    3445:	88 45 02             	mov    %al,0x2(%rbp)
    3448:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    344c:	eb 88                	jmp    33d6 <submitr+0x316>
    344e:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    3452:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    3456:	e9 7b ff ff ff       	jmpq   33d6 <submitr+0x316>
    345b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3462:	3a 20 43 
    3465:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    346c:	20 75 6e 
    346f:	49 89 07             	mov    %rax,(%r15)
    3472:	49 89 57 08          	mov    %rdx,0x8(%r15)
    3476:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    347d:	74 6f 20 
    3480:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    3487:	20 74 6f 
    348a:	49 89 47 10          	mov    %rax,0x10(%r15)
    348e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    3492:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    3499:	73 65 72 
    349c:	49 89 47 20          	mov    %rax,0x20(%r15)
    34a0:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    34a7:	00 
    34a8:	44 89 f7             	mov    %r14d,%edi
    34ab:	e8 20 ec ff ff       	callq  20d0 <close@plt>
    34b0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    34b5:	e9 42 01 00 00       	jmpq   35fc <submitr+0x53c>
    34ba:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    34c1:	3a 20 43 
    34c4:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    34cb:	20 75 6e 
    34ce:	49 89 07             	mov    %rax,(%r15)
    34d1:	49 89 57 08          	mov    %rdx,0x8(%r15)
    34d5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    34dc:	74 6f 20 
    34df:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    34e6:	20 74 6f 
    34e9:	49 89 47 10          	mov    %rax,0x10(%r15)
    34ed:	49 89 57 18          	mov    %rdx,0x18(%r15)
    34f1:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    34f8:	73 65 72 
    34fb:	49 89 47 20          	mov    %rax,0x20(%r15)
    34ff:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    3506:	00 
    3507:	44 89 f7             	mov    %r14d,%edi
    350a:	e8 c1 eb ff ff       	callq  20d0 <close@plt>
    350f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3514:	e9 e3 00 00 00       	jmpq   35fc <submitr+0x53c>
    3519:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3520:	3a 20 43 
    3523:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    352a:	20 75 6e 
    352d:	49 89 07             	mov    %rax,(%r15)
    3530:	49 89 57 08          	mov    %rdx,0x8(%r15)
    3534:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    353b:	74 6f 20 
    353e:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    3545:	66 69 72 
    3548:	49 89 47 10          	mov    %rax,0x10(%r15)
    354c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    3550:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    3557:	61 64 65 
    355a:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    3561:	6d 20 73 
    3564:	49 89 47 20          	mov    %rax,0x20(%r15)
    3568:	49 89 57 28          	mov    %rdx,0x28(%r15)
    356c:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    3573:	65 
    3574:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    357b:	44 89 f7             	mov    %r14d,%edi
    357e:	e8 4d eb ff ff       	callq  20d0 <close@plt>
    3583:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3588:	eb 72                	jmp    35fc <submitr+0x53c>
    358a:	48 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%rcx
    3591:	00 
    3592:	48 8d 35 1f 11 00 00 	lea    0x111f(%rip),%rsi        # 46b8 <array.0+0x4b8>
    3599:	4c 89 ff             	mov    %r15,%rdi
    359c:	b8 00 00 00 00       	mov    $0x0,%eax
    35a1:	e8 ea eb ff ff       	callq  2190 <sprintf@plt>
    35a6:	44 89 f7             	mov    %r14d,%edi
    35a9:	e8 22 eb ff ff       	callq  20d0 <close@plt>
    35ae:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    35b3:	eb 47                	jmp    35fc <submitr+0x53c>
    35b5:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    35bc:	00 
    35bd:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    35c2:	ba 00 20 00 00       	mov    $0x2000,%edx
    35c7:	e8 28 fa ff ff       	callq  2ff4 <rio_readlineb>
    35cc:	48 85 c0             	test   %rax,%rax
    35cf:	7e 54                	jle    3625 <submitr+0x565>
    35d1:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    35d8:	00 
    35d9:	4c 89 ff             	mov    %r15,%rdi
    35dc:	e8 7f ea ff ff       	callq  2060 <strcpy@plt>
    35e1:	44 89 f7             	mov    %r14d,%edi
    35e4:	e8 e7 ea ff ff       	callq  20d0 <close@plt>
    35e9:	48 8d 35 93 11 00 00 	lea    0x1193(%rip),%rsi        # 4783 <array.0+0x583>
    35f0:	4c 89 ff             	mov    %r15,%rdi
    35f3:	e8 08 eb ff ff       	callq  2100 <strcmp@plt>
    35f8:	f7 d8                	neg    %eax
    35fa:	19 c0                	sbb    %eax,%eax
    35fc:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    3603:	00 
    3604:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    360b:	00 00 
    360d:	0f 85 be 02 00 00    	jne    38d1 <submitr+0x811>
    3613:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    361a:	5b                   	pop    %rbx
    361b:	5d                   	pop    %rbp
    361c:	41 5c                	pop    %r12
    361e:	41 5d                	pop    %r13
    3620:	41 5e                	pop    %r14
    3622:	41 5f                	pop    %r15
    3624:	c3                   	retq   
    3625:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    362c:	3a 20 43 
    362f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3636:	20 75 6e 
    3639:	49 89 07             	mov    %rax,(%r15)
    363c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    3640:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3647:	74 6f 20 
    364a:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    3651:	73 74 61 
    3654:	49 89 47 10          	mov    %rax,0x10(%r15)
    3658:	49 89 57 18          	mov    %rdx,0x18(%r15)
    365c:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    3663:	65 73 73 
    3666:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    366d:	72 6f 6d 
    3670:	49 89 47 20          	mov    %rax,0x20(%r15)
    3674:	49 89 57 28          	mov    %rdx,0x28(%r15)
    3678:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    367f:	65 72 00 
    3682:	49 89 47 30          	mov    %rax,0x30(%r15)
    3686:	44 89 f7             	mov    %r14d,%edi
    3689:	e8 42 ea ff ff       	callq  20d0 <close@plt>
    368e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3693:	e9 64 ff ff ff       	jmpq   35fc <submitr+0x53c>
    3698:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    369f:	3a 20 52 
    36a2:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    36a9:	20 73 74 
    36ac:	49 89 07             	mov    %rax,(%r15)
    36af:	49 89 57 08          	mov    %rdx,0x8(%r15)
    36b3:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    36ba:	63 6f 6e 
    36bd:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    36c4:	20 61 6e 
    36c7:	49 89 47 10          	mov    %rax,0x10(%r15)
    36cb:	49 89 57 18          	mov    %rdx,0x18(%r15)
    36cf:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    36d6:	67 61 6c 
    36d9:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    36e0:	6e 70 72 
    36e3:	49 89 47 20          	mov    %rax,0x20(%r15)
    36e7:	49 89 57 28          	mov    %rdx,0x28(%r15)
    36eb:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    36f2:	6c 65 20 
    36f5:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    36fc:	63 74 65 
    36ff:	49 89 47 30          	mov    %rax,0x30(%r15)
    3703:	49 89 57 38          	mov    %rdx,0x38(%r15)
    3707:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    370e:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    3713:	44 89 f7             	mov    %r14d,%edi
    3716:	e8 b5 e9 ff ff       	callq  20d0 <close@plt>
    371b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3720:	e9 d7 fe ff ff       	jmpq   35fc <submitr+0x53c>
    3725:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    372c:	00 
    372d:	4c 8d 8c 24 60 40 00 	lea    0x4060(%rsp),%r9
    3734:	00 
    3735:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    373a:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    373f:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    3744:	48 8d 35 9d 0f 00 00 	lea    0xf9d(%rip),%rsi        # 46e8 <array.0+0x4e8>
    374b:	48 89 df             	mov    %rbx,%rdi
    374e:	b8 00 00 00 00       	mov    $0x0,%eax
    3753:	e8 38 ea ff ff       	callq  2190 <sprintf@plt>
    3758:	48 89 df             	mov    %rbx,%rdi
    375b:	e8 30 e9 ff ff       	callq  2090 <strlen@plt>
    3760:	48 89 c2             	mov    %rax,%rdx
    3763:	48 89 de             	mov    %rbx,%rsi
    3766:	44 89 f7             	mov    %r14d,%edi
    3769:	e8 26 f8 ff ff       	callq  2f94 <rio_writen>
    376e:	48 85 c0             	test   %rax,%rax
    3771:	0f 88 e4 fc ff ff    	js     345b <submitr+0x39b>
    3777:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    377e:	00 
    377f:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    3784:	48 8d 35 da 0f 00 00 	lea    0xfda(%rip),%rsi        # 4765 <array.0+0x565>
    378b:	48 89 df             	mov    %rbx,%rdi
    378e:	b8 00 00 00 00       	mov    $0x0,%eax
    3793:	e8 f8 e9 ff ff       	callq  2190 <sprintf@plt>
    3798:	48 89 df             	mov    %rbx,%rdi
    379b:	e8 f0 e8 ff ff       	callq  2090 <strlen@plt>
    37a0:	48 89 c2             	mov    %rax,%rdx
    37a3:	48 89 de             	mov    %rbx,%rsi
    37a6:	44 89 f7             	mov    %r14d,%edi
    37a9:	e8 e6 f7 ff ff       	callq  2f94 <rio_writen>
    37ae:	48 85 c0             	test   %rax,%rax
    37b1:	0f 88 03 fd ff ff    	js     34ba <submitr+0x3fa>
    37b7:	44 89 74 24 50       	mov    %r14d,0x50(%rsp)
    37bc:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    37c3:	00 
    37c4:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    37c9:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    37ce:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    37d3:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    37da:	00 
    37db:	ba 00 20 00 00       	mov    $0x2000,%edx
    37e0:	e8 0f f8 ff ff       	callq  2ff4 <rio_readlineb>
    37e5:	48 85 c0             	test   %rax,%rax
    37e8:	0f 8e 2b fd ff ff    	jle    3519 <submitr+0x459>
    37ee:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    37f3:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    37fa:	00 
    37fb:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    3802:	00 
    3803:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    380a:	00 
    380b:	48 8d 35 60 0f 00 00 	lea    0xf60(%rip),%rsi        # 4772 <array.0+0x572>
    3812:	b8 00 00 00 00       	mov    $0x0,%eax
    3817:	e8 34 e9 ff ff       	callq  2150 <__isoc99_sscanf@plt>
    381c:	8b 54 24 3c          	mov    0x3c(%rsp),%edx
    3820:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
    3826:	0f 85 5e fd ff ff    	jne    358a <submitr+0x4ca>
    382c:	48 8d 1d 3c 0f 00 00 	lea    0xf3c(%rip),%rbx        # 476f <array.0+0x56f>
    3833:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    383a:	00 
    383b:	48 89 de             	mov    %rbx,%rsi
    383e:	e8 bd e8 ff ff       	callq  2100 <strcmp@plt>
    3843:	85 c0                	test   %eax,%eax
    3845:	0f 84 6a fd ff ff    	je     35b5 <submitr+0x4f5>
    384b:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    3852:	00 
    3853:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    3858:	ba 00 20 00 00       	mov    $0x2000,%edx
    385d:	e8 92 f7 ff ff       	callq  2ff4 <rio_readlineb>
    3862:	48 85 c0             	test   %rax,%rax
    3865:	7f cc                	jg     3833 <submitr+0x773>
    3867:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    386e:	3a 20 43 
    3871:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3878:	20 75 6e 
    387b:	49 89 07             	mov    %rax,(%r15)
    387e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    3882:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3889:	74 6f 20 
    388c:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    3893:	68 65 61 
    3896:	49 89 47 10          	mov    %rax,0x10(%r15)
    389a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    389e:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    38a5:	66 72 6f 
    38a8:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    38af:	76 65 72 
    38b2:	49 89 47 20          	mov    %rax,0x20(%r15)
    38b6:	49 89 57 28          	mov    %rdx,0x28(%r15)
    38ba:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    38bf:	44 89 f7             	mov    %r14d,%edi
    38c2:	e8 09 e8 ff ff       	callq  20d0 <close@plt>
    38c7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    38cc:	e9 2b fd ff ff       	jmpq   35fc <submitr+0x53c>
    38d1:	e8 ca e7 ff ff       	callq  20a0 <__stack_chk_fail@plt>

00000000000038d6 <init_timeout>:
    38d6:	85 ff                	test   %edi,%edi
    38d8:	75 01                	jne    38db <init_timeout+0x5>
    38da:	c3                   	retq   
    38db:	53                   	push   %rbx
    38dc:	89 fb                	mov    %edi,%ebx
    38de:	48 8d 35 84 f6 ff ff 	lea    -0x97c(%rip),%rsi        # 2f69 <sigalrm_handler>
    38e5:	bf 0e 00 00 00       	mov    $0xe,%edi
    38ea:	e8 21 e8 ff ff       	callq  2110 <signal@plt>
    38ef:	85 db                	test   %ebx,%ebx
    38f1:	b8 00 00 00 00       	mov    $0x0,%eax
    38f6:	0f 49 c3             	cmovns %ebx,%eax
    38f9:	89 c7                	mov    %eax,%edi
    38fb:	e8 c0 e7 ff ff       	callq  20c0 <alarm@plt>
    3900:	5b                   	pop    %rbx
    3901:	c3                   	retq   

0000000000003902 <init_driver>:
    3902:	41 54                	push   %r12
    3904:	55                   	push   %rbp
    3905:	53                   	push   %rbx
    3906:	48 83 ec 20          	sub    $0x20,%rsp
    390a:	48 89 fd             	mov    %rdi,%rbp
    390d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3914:	00 00 
    3916:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    391b:	31 c0                	xor    %eax,%eax
    391d:	be 01 00 00 00       	mov    $0x1,%esi
    3922:	bf 0d 00 00 00       	mov    $0xd,%edi
    3927:	e8 e4 e7 ff ff       	callq  2110 <signal@plt>
    392c:	be 01 00 00 00       	mov    $0x1,%esi
    3931:	bf 1d 00 00 00       	mov    $0x1d,%edi
    3936:	e8 d5 e7 ff ff       	callq  2110 <signal@plt>
    393b:	be 01 00 00 00       	mov    $0x1,%esi
    3940:	bf 1d 00 00 00       	mov    $0x1d,%edi
    3945:	e8 c6 e7 ff ff       	callq  2110 <signal@plt>
    394a:	ba 00 00 00 00       	mov    $0x0,%edx
    394f:	be 01 00 00 00       	mov    $0x1,%esi
    3954:	bf 02 00 00 00       	mov    $0x2,%edi
    3959:	e8 82 e8 ff ff       	callq  21e0 <socket@plt>
    395e:	85 c0                	test   %eax,%eax
    3960:	0f 88 97 00 00 00    	js     39fd <init_driver+0xfb>
    3966:	89 c3                	mov    %eax,%ebx
    3968:	48 8d 3d 17 0e 00 00 	lea    0xe17(%rip),%rdi        # 4786 <array.0+0x586>
    396f:	e8 ac e7 ff ff       	callq  2120 <gethostbyname@plt>
    3974:	48 85 c0             	test   %rax,%rax
    3977:	0f 84 cc 00 00 00    	je     3a49 <init_driver+0x147>
    397d:	49 89 e4             	mov    %rsp,%r12
    3980:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    3987:	00 
    3988:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    398f:	00 00 
    3991:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    3997:	48 63 50 14          	movslq 0x14(%rax),%rdx
    399b:	48 8b 40 18          	mov    0x18(%rax),%rax
    399f:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    39a4:	48 8b 30             	mov    (%rax),%rsi
    39a7:	e8 b4 e7 ff ff       	callq  2160 <memmove@plt>
    39ac:	66 c7 44 24 02 2c be 	movw   $0xbe2c,0x2(%rsp)
    39b3:	ba 10 00 00 00       	mov    $0x10,%edx
    39b8:	4c 89 e6             	mov    %r12,%rsi
    39bb:	89 df                	mov    %ebx,%edi
    39bd:	e8 ee e7 ff ff       	callq  21b0 <connect@plt>
    39c2:	85 c0                	test   %eax,%eax
    39c4:	0f 88 e7 00 00 00    	js     3ab1 <init_driver+0x1af>
    39ca:	89 df                	mov    %ebx,%edi
    39cc:	e8 ff e6 ff ff       	callq  20d0 <close@plt>
    39d1:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    39d7:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    39db:	b8 00 00 00 00       	mov    $0x0,%eax
    39e0:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    39e5:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    39ec:	00 00 
    39ee:	0f 85 e9 00 00 00    	jne    3add <init_driver+0x1db>
    39f4:	48 83 c4 20          	add    $0x20,%rsp
    39f8:	5b                   	pop    %rbx
    39f9:	5d                   	pop    %rbp
    39fa:	41 5c                	pop    %r12
    39fc:	c3                   	retq   
    39fd:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    3a04:	3a 20 43 
    3a07:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    3a0e:	20 75 6e 
    3a11:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3a15:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3a19:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3a20:	74 6f 20 
    3a23:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    3a2a:	65 20 73 
    3a2d:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3a31:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3a35:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    3a3c:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    3a42:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3a47:	eb 97                	jmp    39e0 <init_driver+0xde>
    3a49:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    3a50:	3a 20 44 
    3a53:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    3a5a:	20 75 6e 
    3a5d:	48 89 45 00          	mov    %rax,0x0(%rbp)
    3a61:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    3a65:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    3a6c:	74 6f 20 
    3a6f:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    3a76:	76 65 20 
    3a79:	48 89 45 10          	mov    %rax,0x10(%rbp)
    3a7d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    3a81:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    3a88:	72 20 61 
    3a8b:	48 89 45 20          	mov    %rax,0x20(%rbp)
    3a8f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    3a96:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    3a9c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    3aa0:	89 df                	mov    %ebx,%edi
    3aa2:	e8 29 e6 ff ff       	callq  20d0 <close@plt>
    3aa7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3aac:	e9 2f ff ff ff       	jmpq   39e0 <init_driver+0xde>
    3ab1:	48 8d 15 ce 0c 00 00 	lea    0xcce(%rip),%rdx        # 4786 <array.0+0x586>
    3ab8:	48 8d 35 79 0c 00 00 	lea    0xc79(%rip),%rsi        # 4738 <array.0+0x538>
    3abf:	48 89 ef             	mov    %rbp,%rdi
    3ac2:	b8 00 00 00 00       	mov    $0x0,%eax
    3ac7:	e8 c4 e6 ff ff       	callq  2190 <sprintf@plt>
    3acc:	89 df                	mov    %ebx,%edi
    3ace:	e8 fd e5 ff ff       	callq  20d0 <close@plt>
    3ad3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3ad8:	e9 03 ff ff ff       	jmpq   39e0 <init_driver+0xde>
    3add:	e8 be e5 ff ff       	callq  20a0 <__stack_chk_fail@plt>

0000000000003ae2 <driver_post>:
    3ae2:	53                   	push   %rbx
    3ae3:	4c 89 c3             	mov    %r8,%rbx
    3ae6:	85 c9                	test   %ecx,%ecx
    3ae8:	75 17                	jne    3b01 <driver_post+0x1f>
    3aea:	48 85 ff             	test   %rdi,%rdi
    3aed:	74 05                	je     3af4 <driver_post+0x12>
    3aef:	80 3f 00             	cmpb   $0x0,(%rdi)
    3af2:	75 31                	jne    3b25 <driver_post+0x43>
    3af4:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3af9:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3afd:	89 c8                	mov    %ecx,%eax
    3aff:	5b                   	pop    %rbx
    3b00:	c3                   	retq   
    3b01:	48 89 d6             	mov    %rdx,%rsi
    3b04:	48 8d 3d 89 0c 00 00 	lea    0xc89(%rip),%rdi        # 4794 <array.0+0x594>
    3b0b:	b8 00 00 00 00       	mov    $0x0,%eax
    3b10:	e8 9b e5 ff ff       	callq  20b0 <printf@plt>
    3b15:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    3b1a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    3b1e:	b8 00 00 00 00       	mov    $0x0,%eax
    3b23:	eb da                	jmp    3aff <driver_post+0x1d>
    3b25:	41 50                	push   %r8
    3b27:	52                   	push   %rdx
    3b28:	4c 8d 0d 7c 0c 00 00 	lea    0xc7c(%rip),%r9        # 47ab <array.0+0x5ab>
    3b2f:	49 89 f0             	mov    %rsi,%r8
    3b32:	48 89 f9             	mov    %rdi,%rcx
    3b35:	48 8d 15 77 0c 00 00 	lea    0xc77(%rip),%rdx        # 47b3 <array.0+0x5b3>
    3b3c:	be be 2c 00 00       	mov    $0x2cbe,%esi
    3b41:	48 8d 3d 3e 0c 00 00 	lea    0xc3e(%rip),%rdi        # 4786 <array.0+0x586>
    3b48:	e8 73 f5 ff ff       	callq  30c0 <submitr>
    3b4d:	48 83 c4 10          	add    $0x10,%rsp
    3b51:	eb ac                	jmp    3aff <driver_post+0x1d>
    3b53:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    3b5a:	00 00 00 
    3b5d:	0f 1f 00             	nopl   (%rax)

0000000000003b60 <__libc_csu_init>:
    3b60:	f3 0f 1e fa          	repz nop %edx
    3b64:	41 57                	push   %r15
    3b66:	4c 8d 3d 7b 32 00 00 	lea    0x327b(%rip),%r15        # 6de8 <__frame_dummy_init_array_entry>
    3b6d:	41 56                	push   %r14
    3b6f:	49 89 d6             	mov    %rdx,%r14
    3b72:	41 55                	push   %r13
    3b74:	49 89 f5             	mov    %rsi,%r13
    3b77:	41 54                	push   %r12
    3b79:	41 89 fc             	mov    %edi,%r12d
    3b7c:	55                   	push   %rbp
    3b7d:	48 8d 2d 6c 32 00 00 	lea    0x326c(%rip),%rbp        # 6df0 <__init_array_end>
    3b84:	53                   	push   %rbx
    3b85:	4c 29 fd             	sub    %r15,%rbp
    3b88:	48 83 ec 08          	sub    $0x8,%rsp
    3b8c:	e8 6f e4 ff ff       	callq  2000 <_init>
    3b91:	48 c1 fd 03          	sar    $0x3,%rbp
    3b95:	74 1f                	je     3bb6 <__libc_csu_init+0x56>
    3b97:	31 db                	xor    %ebx,%ebx
    3b99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3ba0:	4c 89 f2             	mov    %r14,%rdx
    3ba3:	4c 89 ee             	mov    %r13,%rsi
    3ba6:	44 89 e7             	mov    %r12d,%edi
    3ba9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    3bad:	48 83 c3 01          	add    $0x1,%rbx
    3bb1:	48 39 dd             	cmp    %rbx,%rbp
    3bb4:	75 ea                	jne    3ba0 <__libc_csu_init+0x40>
    3bb6:	48 83 c4 08          	add    $0x8,%rsp
    3bba:	5b                   	pop    %rbx
    3bbb:	5d                   	pop    %rbp
    3bbc:	41 5c                	pop    %r12
    3bbe:	41 5d                	pop    %r13
    3bc0:	41 5e                	pop    %r14
    3bc2:	41 5f                	pop    %r15
    3bc4:	c3                   	retq   
    3bc5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    3bcc:	00 00 00 00 

0000000000003bd0 <__libc_csu_fini>:
    3bd0:	f3 0f 1e fa          	repz nop %edx
    3bd4:	c3                   	retq   

Disassembly of section .fini:

0000000000003bd8 <_fini>:
    3bd8:	f3 0f 1e fa          	repz nop %edx
    3bdc:	48 83 ec 08          	sub    $0x8,%rsp
    3be0:	48 83 c4 08          	add    $0x8,%rsp
    3be4:	c3                   	retq   


test_gs:     file format elf64-x86-64


Disassembly of section .init:

0000000000400460 <_init>:
  400460:	48 83 ec 08          	sub    $0x8,%rsp
  400464:	48 8b 05 8d 0b 20 00 	mov    0x200b8d(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  40046b:	48 85 c0             	test   %rax,%rax
  40046e:	74 05                	je     400475 <_init+0x15>
  400470:	e8 6b 00 00 00       	callq  4004e0 <perror@plt+0x10>
  400475:	48 83 c4 08          	add    $0x8,%rsp
  400479:	c3                   	retq   

Disassembly of section .plt:

0000000000400480 <printf@plt-0x10>:
  400480:	ff 35 82 0b 20 00    	pushq  0x200b82(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400486:	ff 25 84 0b 20 00    	jmpq   *0x200b84(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40048c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400490 <printf@plt>:
  400490:	ff 25 82 0b 20 00    	jmpq   *0x200b82(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400496:	68 00 00 00 00       	pushq  $0x0
  40049b:	e9 e0 ff ff ff       	jmpq   400480 <_init+0x20>

00000000004004a0 <__assert_fail@plt>:
  4004a0:	ff 25 7a 0b 20 00    	jmpq   *0x200b7a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004a6:	68 01 00 00 00       	pushq  $0x1
  4004ab:	e9 d0 ff ff ff       	jmpq   400480 <_init+0x20>

00000000004004b0 <arch_prctl@plt>:
  4004b0:	ff 25 72 0b 20 00    	jmpq   *0x200b72(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004b6:	68 02 00 00 00       	pushq  $0x2
  4004bb:	e9 c0 ff ff ff       	jmpq   400480 <_init+0x20>

00000000004004c0 <__libc_start_main@plt>:
  4004c0:	ff 25 6a 0b 20 00    	jmpq   *0x200b6a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004c6:	68 03 00 00 00       	pushq  $0x3
  4004cb:	e9 b0 ff ff ff       	jmpq   400480 <_init+0x20>

00000000004004d0 <perror@plt>:
  4004d0:	ff 25 62 0b 20 00    	jmpq   *0x200b62(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4004d6:	68 04 00 00 00       	pushq  $0x4
  4004db:	e9 a0 ff ff ff       	jmpq   400480 <_init+0x20>

Disassembly of section .plt.got:

00000000004004e0 <.plt.got>:
  4004e0:	ff 25 12 0b 20 00    	jmpq   *0x200b12(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  4004e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000004004f0 <_start>:
  4004f0:	31 ed                	xor    %ebp,%ebp
  4004f2:	49 89 d1             	mov    %rdx,%r9
  4004f5:	5e                   	pop    %rsi
  4004f6:	48 89 e2             	mov    %rsp,%rdx
  4004f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004fd:	50                   	push   %rax
  4004fe:	54                   	push   %rsp
  4004ff:	49 c7 c0 e0 09 40 00 	mov    $0x4009e0,%r8
  400506:	48 c7 c1 70 09 40 00 	mov    $0x400970,%rcx
  40050d:	48 c7 c7 f0 05 40 00 	mov    $0x4005f0,%rdi
  400514:	e8 a7 ff ff ff       	callq  4004c0 <__libc_start_main@plt>
  400519:	f4                   	hlt    
  40051a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400520 <deregister_tm_clones>:
  400520:	b8 5f 10 60 00       	mov    $0x60105f,%eax
  400525:	55                   	push   %rbp
  400526:	48 2d 58 10 60 00    	sub    $0x601058,%rax
  40052c:	48 83 f8 0e          	cmp    $0xe,%rax
  400530:	48 89 e5             	mov    %rsp,%rbp
  400533:	76 1b                	jbe    400550 <deregister_tm_clones+0x30>
  400535:	b8 00 00 00 00       	mov    $0x0,%eax
  40053a:	48 85 c0             	test   %rax,%rax
  40053d:	74 11                	je     400550 <deregister_tm_clones+0x30>
  40053f:	5d                   	pop    %rbp
  400540:	bf 58 10 60 00       	mov    $0x601058,%edi
  400545:	ff e0                	jmpq   *%rax
  400547:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40054e:	00 00 
  400550:	5d                   	pop    %rbp
  400551:	c3                   	retq   
  400552:	0f 1f 40 00          	nopl   0x0(%rax)
  400556:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40055d:	00 00 00 

0000000000400560 <register_tm_clones>:
  400560:	be 58 10 60 00       	mov    $0x601058,%esi
  400565:	55                   	push   %rbp
  400566:	48 81 ee 58 10 60 00 	sub    $0x601058,%rsi
  40056d:	48 c1 fe 03          	sar    $0x3,%rsi
  400571:	48 89 e5             	mov    %rsp,%rbp
  400574:	48 89 f0             	mov    %rsi,%rax
  400577:	48 c1 e8 3f          	shr    $0x3f,%rax
  40057b:	48 01 c6             	add    %rax,%rsi
  40057e:	48 d1 fe             	sar    %rsi
  400581:	74 15                	je     400598 <register_tm_clones+0x38>
  400583:	b8 00 00 00 00       	mov    $0x0,%eax
  400588:	48 85 c0             	test   %rax,%rax
  40058b:	74 0b                	je     400598 <register_tm_clones+0x38>
  40058d:	5d                   	pop    %rbp
  40058e:	bf 58 10 60 00       	mov    $0x601058,%edi
  400593:	ff e0                	jmpq   *%rax
  400595:	0f 1f 00             	nopl   (%rax)
  400598:	5d                   	pop    %rbp
  400599:	c3                   	retq   
  40059a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005a0 <__do_global_dtors_aux>:
  4005a0:	80 3d b1 0a 20 00 00 	cmpb   $0x0,0x200ab1(%rip)        # 601058 <__TMC_END__>
  4005a7:	75 11                	jne    4005ba <__do_global_dtors_aux+0x1a>
  4005a9:	55                   	push   %rbp
  4005aa:	48 89 e5             	mov    %rsp,%rbp
  4005ad:	e8 6e ff ff ff       	callq  400520 <deregister_tm_clones>
  4005b2:	5d                   	pop    %rbp
  4005b3:	c6 05 9e 0a 20 00 01 	movb   $0x1,0x200a9e(%rip)        # 601058 <__TMC_END__>
  4005ba:	f3 c3                	repz retq 
  4005bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005c0 <frame_dummy>:
  4005c0:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4005c5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4005c9:	75 05                	jne    4005d0 <frame_dummy+0x10>
  4005cb:	eb 93                	jmp    400560 <register_tm_clones>
  4005cd:	0f 1f 00             	nopl   (%rax)
  4005d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d5:	48 85 c0             	test   %rax,%rax
  4005d8:	74 f1                	je     4005cb <frame_dummy+0xb>
  4005da:	55                   	push   %rbp
  4005db:	48 89 e5             	mov    %rsp,%rbp
  4005de:	ff d0                	callq  *%rax
  4005e0:	5d                   	pop    %rbp
  4005e1:	e9 7a ff ff ff       	jmpq   400560 <register_tm_clones>
  4005e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005ed:	00 00 00 

00000000004005f0 <main>:

//defined by the compiler/linker
extern unsigned long __data_start;
extern unsigned long _end;

int main (int argc, char* argv [] ) {
  4005f0:	55                   	push   %rbp
  4005f1:	48 89 e5             	mov    %rsp,%rbp
  4005f4:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
  4005fb:	48 b8 68 10 60 00 00 	movabs $0x601068,%rax
  400602:	00 00 00 
  400605:	48 89 c1             	mov    %rax,%rcx
  400608:	48 81 e1 00 f0 ff ff 	and    $0xfffffffffffff000,%rcx
  40060f:	48 81 c1 00 10 00 00 	add    $0x1000,%rcx
  400616:	48 ba 40 10 60 00 00 	movabs $0x601040,%rdx
  40061d:	00 00 00 
  400620:	49 89 d0             	mov    %rdx,%r8
  400623:	49 81 e0 00 f0 ff ff 	and    $0xfffffffffffff000,%r8
  40062a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400631:	89 7d f8             	mov    %edi,-0x8(%rbp)
  400634:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  int ret = 0;
  400638:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
   * __data_start and data_start define the start of the data section, but they
   * are not necessary page aligned
   * _end marks the end of the data section, again it is not page aligned
   */
#define PAGE_SIZE 4096
  unsigned long data_section_start = (unsigned long)&__data_start & ~(PAGE_SIZE -1);
  40063f:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
  unsigned long data_section_end = ((unsigned long)&_end & ~(PAGE_SIZE -1)) + PAGE_SIZE;
  400643:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  unsigned long data_section_size = data_section_end - data_section_start;
  400647:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
  40064b:	48 2b 4d e0          	sub    -0x20(%rbp),%rcx
  40064f:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  unsigned long krn_gs_base =-1, orig_gs_base =-1;
  400653:	48 c7 45 c8 ff ff ff 	movq   $0xffffffffffffffff,-0x38(%rbp)
  40065a:	ff 
  40065b:	48 c7 45 c0 ff ff ff 	movq   $0xffffffffffffffff,-0x40(%rbp)
  400662:	ff 
  gs_base= (unsigned long*) data_section_start;    
  400663:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  400667:	48 89 0c 25 60 10 60 	mov    %rcx,0x601060
  40066e:	00 
  // todo we need an heap allocator gs based
    
  printf(" 0x%lx 0x%lx 0x%lx\n",
         (unsigned long)&__data_start, (unsigned long)&_end, (unsigned long)gs_base);
  40066f:	48 8b 0c 25 60 10 60 	mov    0x601060,%rcx
  400676:	00 
  unsigned long data_section_size = data_section_end - data_section_start;
  unsigned long krn_gs_base =-1, orig_gs_base =-1;
  gs_base= (unsigned long*) data_section_start;    
  // todo we need an heap allocator gs based
    
  printf(" 0x%lx 0x%lx 0x%lx\n",
  400677:	48 bf f4 09 40 00 00 	movabs $0x4009f4,%rdi
  40067e:	00 00 00 
  400681:	48 89 d6             	mov    %rdx,%rsi
  400684:	48 89 c2             	mov    %rax,%rdx
  400687:	b0 00                	mov    $0x0,%al
  400689:	e8 02 fe ff ff       	callq  400490 <printf@plt>
         (unsigned long)&__data_start, (unsigned long)&_end, (unsigned long)gs_base);
  
  printf("aaa: 0x%lx bbb 0x%lx\n", 
         (unsigned long) ADJUST_GS_BASE(&aaa), (unsigned long) ADJUST_GS_BASE(&bbb));
  40068e:	48 8b 0c 25 60 10 60 	mov    0x601060,%rcx
  400695:	00 
  400696:	48 ba 50 10 60 00 00 	movabs $0x601050,%rdx
  40069d:	00 00 00 
  4006a0:	48 29 ca             	sub    %rcx,%rdx
  4006a3:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  4006a7:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  4006ac:	0f 8c 05 00 00 00    	jl     4006b7 <main+0xc7>
  4006b2:	e9 28 00 00 00       	jmpq   4006df <main+0xef>
  4006b7:	48 bf 1e 0a 40 00 00 	movabs $0x400a1e,%rdi
  4006be:	00 00 00 
  4006c1:	48 be 2a 0a 40 00 00 	movabs $0x400a2a,%rsi
  4006c8:	00 00 00 
  4006cb:	ba 2a 00 00 00       	mov    $0x2a,%edx
  4006d0:	48 b9 34 0a 40 00 00 	movabs $0x400a34,%rcx
  4006d7:	00 00 00 
  4006da:	e8 c1 fd ff ff       	callq  4004a0 <__assert_fail@plt>
  4006df:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4006e3:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  4006e7:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  4006eb:	48 8b 04 25 60 10 60 	mov    0x601060,%rax
  4006f2:	00 
  4006f3:	48 b9 54 10 60 00 00 	movabs $0x601054,%rcx
  4006fa:	00 00 00 
  4006fd:	48 29 c1             	sub    %rax,%rcx
  400700:	48 89 4d a8          	mov    %rcx,-0x58(%rbp)
  400704:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
  400709:	48 89 b5 78 ff ff ff 	mov    %rsi,-0x88(%rbp)
  400710:	0f 8c 05 00 00 00    	jl     40071b <main+0x12b>
  400716:	e9 28 00 00 00       	jmpq   400743 <main+0x153>
  40071b:	48 bf 1e 0a 40 00 00 	movabs $0x400a1e,%rdi
  400722:	00 00 00 
  400725:	48 be 2a 0a 40 00 00 	movabs $0x400a2a,%rsi
  40072c:	00 00 00 
  40072f:	ba 2a 00 00 00       	mov    $0x2a,%edx
  400734:	48 b9 34 0a 40 00 00 	movabs $0x400a34,%rcx
  40073b:	00 00 00 
  40073e:	e8 5d fd ff ff       	callq  4004a0 <__assert_fail@plt>
  400743:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  400747:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  40074b:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
  // todo we need an heap allocator gs based
    
  printf(" 0x%lx 0x%lx 0x%lx\n",
         (unsigned long)&__data_start, (unsigned long)&_end, (unsigned long)gs_base);
  
  printf("aaa: 0x%lx bbb 0x%lx\n", 
  40074f:	48 bf 08 0a 40 00 00 	movabs $0x400a08,%rdi
  400756:	00 00 00 
  400759:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
  400760:	b0 00                	mov    $0x0,%al
  400762:	e8 29 fd ff ff       	callq  400490 <printf@plt>
         (unsigned long) ADJUST_GS_BASE(&aaa), (unsigned long) ADJUST_GS_BASE(&bbb));

  ret = arch_prctl(ARCH_GET_GS, &orig_gs_base);
  400767:	bf 04 10 00 00       	mov    $0x1004,%edi
  40076c:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
  400770:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
  400776:	b0 00                	mov    $0x0,%al
  400778:	e8 33 fd ff ff       	callq  4004b0 <arch_prctl@plt>
  40077d:	89 45 ec             	mov    %eax,-0x14(%rbp)
  if (ret == -1) {
  400780:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%rbp)
  400784:	0f 85 1b 00 00 00    	jne    4007a5 <main+0x1b5>
      perror("arch_prctl failed GET orig_gs_base");
  40078a:	48 bf 4b 0a 40 00 00 	movabs $0x400a4b,%rdi
  400791:	00 00 00 
  400794:	e8 37 fd ff ff       	callq  4004d0 <perror@plt>
      return -1;
  400799:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
  4007a0:	e9 b0 01 00 00       	jmpq   400955 <main+0x365>
  } 
  ret = arch_prctl(ARCH_SET_GS, gs_base);
  4007a5:	48 8b 34 25 60 10 60 	mov    0x601060,%rsi
  4007ac:	00 
  4007ad:	bf 01 10 00 00       	mov    $0x1001,%edi
  4007b2:	b0 00                	mov    $0x0,%al
  4007b4:	e8 f7 fc ff ff       	callq  4004b0 <arch_prctl@plt>
  4007b9:	89 45 ec             	mov    %eax,-0x14(%rbp)
  if (ret == -1) {
  4007bc:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%rbp)
  4007c0:	0f 85 1b 00 00 00    	jne    4007e1 <main+0x1f1>
      perror("arch_prctl failed SET gs_base");
  4007c6:	48 bf 6e 0a 40 00 00 	movabs $0x400a6e,%rdi
  4007cd:	00 00 00 
  4007d0:	e8 fb fc ff ff       	callq  4004d0 <perror@plt>
      return -1;
  4007d5:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
  4007dc:	e9 74 01 00 00       	jmpq   400955 <main+0x365>
  }
  ret = arch_prctl(ARCH_GET_GS, &krn_gs_base);
  4007e1:	bf 04 10 00 00       	mov    $0x1004,%edi
  4007e6:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
  4007ea:	b0 00                	mov    $0x0,%al
  4007ec:	e8 bf fc ff ff       	callq  4004b0 <arch_prctl@plt>
  4007f1:	89 45 ec             	mov    %eax,-0x14(%rbp)
  if (ret == -1) {
  4007f4:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%rbp)
  4007f8:	0f 85 1b 00 00 00    	jne    400819 <main+0x229>
      perror("arch_prctl failed GET krn_gs_base");
  4007fe:	48 bf 8c 0a 40 00 00 	movabs $0x400a8c,%rdi
  400805:	00 00 00 
  400808:	e8 c3 fc ff ff       	callq  4004d0 <perror@plt>
      return -1;
  40080d:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
  400814:	e9 3c 01 00 00       	jmpq   400955 <main+0x365>
  }
  printf("gs_base: 0x%lx krn_gs_base: 0x%lx orig_gs_base: 0x%lx\n", (unsigned long)gs_base, krn_gs_base, orig_gs_base);
  400819:	48 8b 34 25 60 10 60 	mov    0x601060,%rsi
  400820:	00 
  400821:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  400825:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  400829:	48 bf ae 0a 40 00 00 	movabs $0x400aae,%rdi
  400830:	00 00 00 
  400833:	b0 00                	mov    $0x0,%al
  400835:	e8 56 fc ff ff       	callq  400490 <printf@plt>
 
  krn_gs_base=-1;
  40083a:	48 c7 45 c8 ff ff ff 	movq   $0xffffffffffffffff,-0x38(%rbp)
  400841:	ff 
  __asm__ volatile ("movq $4096, %%r8\n"
  400842:	49 c7 c0 00 10 00 00 	mov    $0x1000,%r8
  400849:	65 4d 8d 08          	lea    %gs:(%r8),%r9
  40084d:	4c 89 c9             	mov    %r9,%rcx
  400850:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
		    "lea %%gs:(%%r8), %%r9\n"
                    "movq %%r9, %0\n"
		    : "=r" (krn_gs_base) : : "%r8", "%r9");

  unsigned long aaa_offset = ADJUST_GS_BASE(&aaa);
  400854:	48 8b 0c 25 60 10 60 	mov    0x601060,%rcx
  40085b:	00 
  40085c:	48 ba 50 10 60 00 00 	movabs $0x601050,%rdx
  400863:	00 00 00 
  400866:	48 29 ca             	sub    %rcx,%rdx
  400869:	48 89 55 90          	mov    %rdx,-0x70(%rbp)
  40086d:	48 83 7d 90 00       	cmpq   $0x0,-0x70(%rbp)
  400872:	0f 8c 05 00 00 00    	jl     40087d <main+0x28d>
  400878:	e9 28 00 00 00       	jmpq   4008a5 <main+0x2b5>
  40087d:	48 bf 1e 0a 40 00 00 	movabs $0x400a1e,%rdi
  400884:	00 00 00 
  400887:	48 be 2a 0a 40 00 00 	movabs $0x400a2a,%rsi
  40088e:	00 00 00 
  400891:	ba 43 00 00 00       	mov    $0x43,%edx
  400896:	48 b9 34 0a 40 00 00 	movabs $0x400a34,%rcx
  40089d:	00 00 00 
  4008a0:	e8 fb fb ff ff       	callq  4004a0 <__assert_fail@plt>
  4008a5:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  4008a9:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  4008ad:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  4008b1:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  unsigned long value =-1;
  4008b5:	48 c7 45 80 ff ff ff 	movq   $0xffffffffffffffff,-0x80(%rbp)
  4008bc:	ff 
  __asm__ volatile ("movq %1, %%r8\n"
                    //"addq %%gs:0x00, %%r9\n" //was for test and it compile
                    "movq %%gs:(%%r8), %%r9\n"
                    "movq %%r9, %0\n"
                    : "=r" (value) : "r" (aaa_offset) : "%r8", "%r9");
  4008bd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
                    "movq %%r9, %0\n"
		    : "=r" (krn_gs_base) : : "%r8", "%r9");

  unsigned long aaa_offset = ADJUST_GS_BASE(&aaa);
  unsigned long value =-1;
  __asm__ volatile ("movq %1, %%r8\n"
  4008c1:	49 89 c0             	mov    %rax,%r8
  4008c4:	65 4d 8b 08          	mov    %gs:(%r8),%r9
  4008c8:	4c 89 c8             	mov    %r9,%rax
  4008cb:	48 89 45 80          	mov    %rax,-0x80(%rbp)
                    : "=r" (value) : "r" (aaa_offset) : "%r8", "%r9");

/*  __asm__ volatile ("push %%gs\n"
		    "pop %%r9\n" : : : "%r9");
*/
  ret = arch_prctl(ARCH_SET_GS, orig_gs_base);
  4008cf:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
  4008d3:	bf 01 10 00 00       	mov    $0x1001,%edi
  4008d8:	b0 00                	mov    $0x0,%al
  4008da:	e8 d1 fb ff ff       	callq  4004b0 <arch_prctl@plt>
  4008df:	89 45 ec             	mov    %eax,-0x14(%rbp)
  if (ret == -1) {
  4008e2:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%rbp)
  4008e6:	0f 85 1b 00 00 00    	jne    400907 <main+0x317>
      perror("arch_prctl failed SET orig_gs_base");
  4008ec:	48 bf e5 0a 40 00 00 	movabs $0x400ae5,%rdi
  4008f3:	00 00 00 
  4008f6:	e8 d5 fb ff ff       	callq  4004d0 <perror@plt>
      return -1;
  4008fb:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%rbp)
  400902:	e9 4e 00 00 00       	jmpq   400955 <main+0x365>
  }
 
printf("asm krn_gs_base: 0x%lx aaa_value: %d\n", krn_gs_base, (int)value);
  400907:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
  40090b:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  40090f:	48 bf 08 0b 40 00 00 	movabs $0x400b08,%rdi
  400916:	00 00 00 
  400919:	89 c2                	mov    %eax,%edx
  40091b:	b0 00                	mov    $0x0,%al
  40091d:	e8 6e fb ff ff       	callq  400490 <printf@plt>

  //here code is not gs based anymore
  printf("ret: 0x%x (%d) aaa: %d bbb: %d\n", ret, ret, aaa, bbb);
  400922:	8b 75 ec             	mov    -0x14(%rbp),%esi
  400925:	8b 55 ec             	mov    -0x14(%rbp),%edx
  400928:	8b 0c 25 50 10 60 00 	mov    0x601050,%ecx
  40092f:	44 8b 04 25 54 10 60 	mov    0x601054,%r8d
  400936:	00 
  400937:	48 bf 2e 0b 40 00 00 	movabs $0x400b2e,%rdi
  40093e:	00 00 00 
  400941:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  400947:	b0 00                	mov    $0x0,%al
  400949:	e8 42 fb ff ff       	callq  400490 <printf@plt>
  return 0;
  40094e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
}
  400955:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400958:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
  40095f:	5d                   	pop    %rbp
  400960:	c3                   	retq   
  400961:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400968:	00 00 00 
  40096b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400970 <__libc_csu_init>:
  400970:	41 57                	push   %r15
  400972:	41 56                	push   %r14
  400974:	41 89 ff             	mov    %edi,%r15d
  400977:	41 55                	push   %r13
  400979:	41 54                	push   %r12
  40097b:	4c 8d 25 8e 04 20 00 	lea    0x20048e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400982:	55                   	push   %rbp
  400983:	48 8d 2d 8e 04 20 00 	lea    0x20048e(%rip),%rbp        # 600e18 <__init_array_end>
  40098a:	53                   	push   %rbx
  40098b:	49 89 f6             	mov    %rsi,%r14
  40098e:	49 89 d5             	mov    %rdx,%r13
  400991:	4c 29 e5             	sub    %r12,%rbp
  400994:	48 83 ec 08          	sub    $0x8,%rsp
  400998:	48 c1 fd 03          	sar    $0x3,%rbp
  40099c:	e8 bf fa ff ff       	callq  400460 <_init>
  4009a1:	48 85 ed             	test   %rbp,%rbp
  4009a4:	74 20                	je     4009c6 <__libc_csu_init+0x56>
  4009a6:	31 db                	xor    %ebx,%ebx
  4009a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009af:	00 
  4009b0:	4c 89 ea             	mov    %r13,%rdx
  4009b3:	4c 89 f6             	mov    %r14,%rsi
  4009b6:	44 89 ff             	mov    %r15d,%edi
  4009b9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4009bd:	48 83 c3 01          	add    $0x1,%rbx
  4009c1:	48 39 eb             	cmp    %rbp,%rbx
  4009c4:	75 ea                	jne    4009b0 <__libc_csu_init+0x40>
  4009c6:	48 83 c4 08          	add    $0x8,%rsp
  4009ca:	5b                   	pop    %rbx
  4009cb:	5d                   	pop    %rbp
  4009cc:	41 5c                	pop    %r12
  4009ce:	41 5d                	pop    %r13
  4009d0:	41 5e                	pop    %r14
  4009d2:	41 5f                	pop    %r15
  4009d4:	c3                   	retq   
  4009d5:	90                   	nop
  4009d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4009dd:	00 00 00 

00000000004009e0 <__libc_csu_fini>:
  4009e0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004009e4 <_fini>:
  4009e4:	48 83 ec 08          	sub    $0x8,%rsp
  4009e8:	48 83 c4 08          	add    $0x8,%rsp
  4009ec:	c3                   	retq   

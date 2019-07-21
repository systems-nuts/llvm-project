	.text
	.file	"hello_pierre.c"
	.globl	bar                     # -- Begin function bar
	.p2align	4, 0x90
	.type	bar,@function
bar:                                    # @bar
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$9876, %gs:(%rax)       # imm = 0x2694
	movq	-16(%rbp), %rax
	movq	$123456789, %gs:(%rax)  # imm = 0x75BCD15
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	bar, .Lfunc_end0-bar
	.cfi_endproc
                                        # -- End function
	.globl	foo                     # -- Begin function foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movslq	%gs:(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movabsq	$la_trottola, %rax
	movq	%rax, -40(%rbp)
	movq	$-1, -48(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	bar
	movq	-16(%rbp), %rcx
	movl	$20, %gs:(%rcx)
	#APP
	nop

	#NO_APP
	movq	-32(%rbp), %rcx
	movl	$1234, %gs:(%rcx)       # imm = 0x4D2
	#APP
	nop

	#NO_APP
	movq	-40(%rbp), %rcx
	movq	%gs:8(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	%rdx, %gs:8(%rcx)
	movq	-8(%rbp), %rcx
	movl	%gs:(%rcx), %r8d
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	foo, .Lfunc_end1-foo
	.cfi_endproc
                                        # -- End function
	.type	la_trottola,@object     # @la_trottola
	.comm	la_trottola,24,8

	.ident	"clang version 9.0.0 (https://github.com/llvm/llvm-project.git fff5dc0b173fc35ce9a75a737a980875be125566)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bar
	.addrsig_sym la_trottola

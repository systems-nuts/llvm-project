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
	movq	%rdi, %gs:-8(%ebp)
	movq	%rsi, %gs:-16(%ebp)
	movq	%gs:-8(%ebp), %rax
	movl	$9876, %gs:(%eax)       # imm = 0x2694
	movq	%gs:-16(%ebp), %rax
	movq	$123456789, %gs:(%eax)  # imm = 0x75BCD15
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
	movq	%rdi, %gs:-8(%ebp)
	movq	%rsi, %gs:-16(%ebp)
	movq	%gs:-8(%ebp), %rax
	movslq	%gs:(%eax), %rax
	movq	%rax, %gs:-24(%ebp)
	movq	%gs:-16(%ebp), %rax
	movq	%rax, %gs:-32(%ebp)
	movabsq	$la_trottola, %rax
	movq	%rax, %gs:-40(%ebp)
	movq	$-1, %gs:-48(%ebp)
	movq	%gs:-8(%ebp), %rdi
	leaq	-48(%rbp), %rsi
	callq	bar
	movq	%gs:-16(%ebp), %rcx
	movl	$20, %gs:(%ecx)
	#APP
	nop

	#NO_APP
	movq	%gs:-32(%ebp), %rcx
	movl	$1234, %gs:(%ecx)       # imm = 0x4D2
	#APP
	nop

	#NO_APP
	movq	%gs:-40(%ebp), %rcx
	movq	%gs:8(%ecx), %rcx
	movq	%rcx, %gs:-32(%ebp)
	movq	%gs:-40(%ebp), %rcx
	leaq	-48(%rbp), %rdx
	movq	%rdx, %gs:8(%ecx)
	movq	%gs:-8(%ebp), %rcx
	movl	%gs:(%ecx), %r8d
	movl	%eax, %gs:-52(%ebp)     # 4-byte Spill
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

	.ident	"clang version 10.0.0 (https://github.com/systems-nuts/llvm-project.git ab34174360e58ea7d853840f0f105745091c0d67)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bar
	.addrsig_sym la_trottola

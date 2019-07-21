	.text
	.file	"hello_pierre.c"
	.globl	simple                  # -- Begin function simple
	.p2align	4, 0x90
	.type	simple,@function
simple:                                 # @simple
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
	movl	%gs:(%eax), %ecx
	movl	%ecx, %gs:-20(%ebp)
	movslq	%gs:-20(%ebp), %rax
	addq	%gs:-16(%ebp), %rax
	movq	%rax, %gs:-32(%ebp)
	#APP
	nop

	#NO_APP
	leaq	-20(%rbp), %rax
	movq	%rax, %gs:-40(%ebp)
	movq	%gs:-32(%ebp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	simple, .Lfunc_end0-simple
	.cfi_endproc
                                        # -- End function
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
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar
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
	movq	%gs:-32(%ebp), %rdi
	movq	%gs:-48(%ebp), %rsi
	movl	%eax, %gs:-52(%ebp)     # 4-byte Spill
	callq	simple
	movq	%rax, %gs:-24(%ebp)
	movq	%gs:-8(%ebp), %rax
	movl	%gs:(%eax), %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	foo, .Lfunc_end2-foo
	.cfi_endproc
                                        # -- End function
	.type	la_trottola,@object     # @la_trottola
	.comm	la_trottola,24,8

	.ident	"clang version 10.0.0 (https://github.com/systems-nuts/llvm-project.git ab34174360e58ea7d853840f0f105745091c0d67)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym simple
	.addrsig_sym bar
	.addrsig_sym la_trottola

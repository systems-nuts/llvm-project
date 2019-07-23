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
	subq	%gs:0, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %gs:-8(%rbp)
	movq	%rsi, %gs:-16(%rbp)
	movq	%gs:-8(%rbp), %rax
	movl	%gs:(%rax), %ecx
	movl	%ecx, %gs:-20(%rbp)
	movslq	%gs:-20(%rbp), %rax
	addq	%gs:-16(%rbp), %rax
	movq	%rax, %gs:-32(%rbp)
	#APP
	nop

	#NO_APP
	leaq	-20(%rbp), %rax
	movq	%rax, %gs:-40(%rbp)
	movq	%gs:-32(%rbp), %rax
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
	subq	%gs:0, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %gs:-8(%rbp)
	movq	%rsi, %gs:-16(%rbp)
	movq	%gs:-8(%rbp), %rax
	movl	$9876, %gs:(%rax)       # imm = 0x2694
	movq	%gs:-16(%rbp), %rax
	movq	$123456789, %gs:(%rax)  # imm = 0x75BCD15
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
	subq	%gs:0, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, %gs:-8(%rbp)
	movq	%rsi, %gs:-16(%rbp)
	movq	%gs:-8(%rbp), %rax
	movslq	%gs:(%rax), %rax
	movq	%rax, %gs:-24(%rbp)
	movq	%gs:-16(%rbp), %rax
	movq	%rax, %gs:-32(%rbp)
	movabsq	$la_trottola, %rax
	movq	%rax, %gs:-40(%rbp)
	movq	$-1, %gs:-48(%rbp)
	movq	%gs:-8(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	bar
	movq	%gs:-16(%rbp), %rcx
	movl	$20, %gs:(%rcx)
	#APP
	nop

	#NO_APP
	movq	%gs:-32(%rbp), %rcx
	movl	$1234, %gs:(%rcx)       # imm = 0x4D2
	#APP
	nop

	#NO_APP
	movq	%gs:-40(%rbp), %rcx
	movq	%gs:8(%rcx), %rcx
	movq	%rcx, %gs:-32(%rbp)
	movq	%gs:-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	%rdx, %gs:8(%rcx)
	movq	%gs:-32(%rbp), %rdi
	movq	%gs:-48(%rbp), %rsi
	movl	%eax, %gs:-52(%rbp)     # 4-byte Spill
	callq	simple
	movq	%rax, %gs:-24(%rbp)
	movq	%gs:-8(%rbp), %rax
	movl	%gs:(%rax), %eax
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

	.ident	"clang version 10.0.0 (https://github.com/systems-nuts/llvm-project.git fed943e9db66f85fc9818227585046bcf5d101b6)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym simple
	.addrsig_sym bar
	.addrsig_sym la_trottola

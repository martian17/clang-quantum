	.text
	.file	"resize.c"
	.globl	new_vecint              # -- Begin function new_vecint
	.p2align	4, 0x90
	.type	new_vecint,@function
new_vecint:                             # @new_vecint
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rsi, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rax
	shrq	$2, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-40(%rbp), %rax
	movq	%rax, (%rbx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	new_vecint, .Lfunc_end0-new_vecint
	.cfi_endproc
                                        # -- End function
	.globl	vecint_push_back        # -- Begin function vecint_push_back
	.p2align	4, 0x90
	.type	vecint_push_back,@function
vecint_push_back:                       # @vecint_push_back
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rcx
	cmpq	(%rcx), %rax
	jb	.LBB1_6
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	shlq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB1_2
.LBB1_5:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rdi
	callq	free
.LBB1_6:
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	vecint_push_back, .Lfunc_end1-vecint_push_back
	.cfi_endproc
                                        # -- End function
	.globl	destroy_vecint          # -- Begin function destroy_vecint
	.p2align	4, 0x90
	.type	destroy_vecint,@function
destroy_vecint:                         # @destroy_vecint
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	destroy_vecint, .Lfunc_end2-destroy_vecint
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-80(%rbp), %rsi
	movl	$0, -20(%rbp)
	movq	.L__const.main.nums, %rax
	movq	%rax, -80(%rbp)
	movq	.L__const.main.nums+8, %rax
	movq	%rax, -72(%rbp)
	movl	.L__const.main.nums+16, %eax
	movl	%eax, -64(%rbp)
	leaq	-48(%rbp), %rdi
	movl	$20, %edx
	callq	new_vecint
	movq	$6, -16(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$200, -16(%rbp)
	jae	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rsi
	leaq	-48(%rbp), %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	vecint_push_back
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	movq	$0, -8(%rbp)
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB3_8
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_5
.LBB3_8:
	movq	-40(%rbp), %rsi
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	leaq	-48(%rbp), %rdi
	callq	destroy_vecint
	movl	-20(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	.L__const.main.nums,@object # @__const.main.nums
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.main.nums:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.size	.L__const.main.nums, 20

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%zu: %d\n"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%zu\n"
	.size	.L.str.1, 5

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits

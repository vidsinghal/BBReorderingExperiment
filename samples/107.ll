; ModuleID = 'samples/107.bc'
source_filename = "kernels/zen/3/sup/bli_gemmsup_rv_zen_asm_z3x4m.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcomplex = type { double, double }

@__const.bli_zgemmsup_rv_zen_asm_3x4m.ker_fps = private unnamed_addr constant [3 x ptr] [ptr null, ptr @bli_zgemmsup_rv_zen_asm_1x4, ptr @bli_zgemmsup_rv_zen_asm_2x4], align 16
@__const.bli_zgemmsup_rv_zen_asm_3x2m.ker_fps = private unnamed_addr constant [3 x ptr] [ptr null, ptr @bli_zgemmsup_rv_zen_asm_1x2, ptr @bli_zgemmsup_rv_zen_asm_2x2], align 16

; Function Attrs: nounwind uwtable
define hidden void @bli_zgemmsup_rv_zen_asm_3x4m(i32 noundef %conja, i32 noundef %conjb, i64 noundef %m0, i64 noundef %n0, i64 noundef %k0, ptr noalias noundef %alpha, ptr noalias noundef %a, i64 noundef %rs_a0, i64 noundef %cs_a0, ptr noalias noundef %b, i64 noundef %rs_b0, i64 noundef %cs_b0, ptr noalias noundef %beta, ptr noalias noundef %c, i64 noundef %rs_c0, i64 noundef %cs_c0, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
entry:
  %conja.addr = alloca i32, align 4
  %conjb.addr = alloca i32, align 4
  %m0.addr = alloca i64, align 8
  %n0.addr = alloca i64, align 8
  %k0.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rs_a0.addr = alloca i64, align 8
  %cs_a0.addr = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  %rs_b0.addr = alloca i64, align 8
  %cs_b0.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %rs_c0.addr = alloca i64, align 8
  %cs_c0.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %n_left = alloca i64, align 8
  %cij = alloca ptr, align 8
  %bj = alloca ptr, align 8
  %ai = alloca ptr, align 8
  %nr_cur = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k_iter = alloca i64, align 8
  %k_left = alloca i64, align 8
  %m_iter = alloca i64, align 8
  %m_left = alloca i64, align 8
  %rs_a = alloca i64, align 8
  %cs_a = alloca i64, align 8
  %rs_b = alloca i64, align 8
  %rs_c = alloca i64, align 8
  %cs_c = alloca i64, align 8
  %alpha_mul_type = alloca i8, align 1
  %beta_mul_type = alloca i8, align 1
  %nr_cur49 = alloca i64, align 8
  %i_edge = alloca i64, align 8
  %cij51 = alloca ptr, align 8
  %ai54 = alloca ptr, align 8
  %bj57 = alloca ptr, align 8
  %ker_fps = alloca [3 x ptr], align 16
  %ker_fp = alloca ptr, align 8
  store i32 %conja, ptr %conja.addr, align 4, !tbaa !4
  store i32 %conjb, ptr %conjb.addr, align 4, !tbaa !4
  store i64 %m0, ptr %m0.addr, align 8, !tbaa !7
  store i64 %n0, ptr %n0.addr, align 8, !tbaa !7
  store i64 %k0, ptr %k0.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a0, ptr %rs_a0.addr, align 8, !tbaa !7
  store i64 %cs_a0, ptr %cs_a0.addr, align 8, !tbaa !7
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i64 %rs_b0, ptr %rs_b0.addr, align 8, !tbaa !7
  store i64 %cs_b0, ptr %cs_b0.addr, align 8, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %rs_c0, ptr %rs_c0.addr, align 8, !tbaa !7
  store i64 %cs_c0, ptr %cs_c0.addr, align 8, !tbaa !7
  store ptr %data, ptr %data.addr, align 8, !tbaa !9
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_left) #4
  %0 = load i64, ptr %n0.addr, align 8, !tbaa !7
  %rem = srem i64 %0, 4
  store i64 %rem, ptr %n_left, align 8, !tbaa !7
  %1 = load i64, ptr %n_left, align 8, !tbaa !7
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %cij) #4
  %2 = load ptr, ptr %c.addr, align 8, !tbaa !9
  store ptr %2, ptr %cij, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bj) #4
  %3 = load ptr, ptr %b.addr, align 8, !tbaa !9
  store ptr %3, ptr %bj, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai) #4
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !9
  store ptr %4, ptr %ai, align 8, !tbaa !9
  %5 = load i64, ptr %n_left, align 8, !tbaa !7
  %cmp = icmp ule i64 2, %5
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_cur) #4
  store i64 2, ptr %nr_cur, align 8, !tbaa !7
  %6 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %7 = load i32, ptr %conjb.addr, align 4, !tbaa !4
  %8 = load i64, ptr %m0.addr, align 8, !tbaa !7
  %9 = load i64, ptr %k0.addr, align 8, !tbaa !7
  %10 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %ai, align 8, !tbaa !9
  %12 = load i64, ptr %rs_a0.addr, align 8, !tbaa !7
  %13 = load i64, ptr %cs_a0.addr, align 8, !tbaa !7
  %14 = load ptr, ptr %bj, align 8, !tbaa !9
  %15 = load i64, ptr %rs_b0.addr, align 8, !tbaa !7
  %16 = load i64, ptr %cs_b0.addr, align 8, !tbaa !7
  %17 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %18 = load ptr, ptr %cij, align 8, !tbaa !9
  %19 = load i64, ptr %rs_c0.addr, align 8, !tbaa !7
  %20 = load i64, ptr %cs_c0.addr, align 8, !tbaa !7
  %21 = load ptr, ptr %data.addr, align 8, !tbaa !9
  %22 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_zgemmsup_rv_zen_asm_3x2m(i32 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef 2, i64 noundef %9, ptr noundef %10, ptr noundef %11, i64 noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %16, ptr noundef %17, ptr noundef %18, i64 noundef %19, i64 noundef %20, ptr noundef %21, ptr noundef %22)
  %23 = load i64, ptr %cs_c0.addr, align 8, !tbaa !7
  %mul = mul nsw i64 2, %23
  %24 = load ptr, ptr %cij, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %24, i64 %mul
  store ptr %add.ptr, ptr %cij, align 8, !tbaa !9
  %25 = load i64, ptr %cs_b0.addr, align 8, !tbaa !7
  %mul2 = mul nsw i64 2, %25
  %26 = load ptr, ptr %bj, align 8, !tbaa !9
  %add.ptr3 = getelementptr inbounds %struct.dcomplex, ptr %26, i64 %mul2
  store ptr %add.ptr3, ptr %bj, align 8, !tbaa !9
  %27 = load i64, ptr %n_left, align 8, !tbaa !7
  %sub = sub i64 %27, 2
  store i64 %sub, ptr %n_left, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_cur) #4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %28 = load i64, ptr %n_left, align 8, !tbaa !7
  %cmp4 = icmp eq i64 1, %28
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %29 = load i32, ptr %conjb.addr, align 4, !tbaa !4
  %30 = load i64, ptr %m0.addr, align 8, !tbaa !7
  %31 = load i64, ptr %k0.addr, align 8, !tbaa !7
  %32 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %33 = load ptr, ptr %ai, align 8, !tbaa !9
  %34 = load i64, ptr %rs_a0.addr, align 8, !tbaa !7
  %35 = load i64, ptr %cs_a0.addr, align 8, !tbaa !7
  %36 = load ptr, ptr %bj, align 8, !tbaa !9
  %37 = load i64, ptr %rs_b0.addr, align 8, !tbaa !7
  %38 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %39 = load ptr, ptr %cij, align 8, !tbaa !9
  %40 = load i64, ptr %rs_c0.addr, align 8, !tbaa !7
  %41 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void @bli_zgemv_ex(i32 noundef 0, i32 noundef %29, i64 noundef %30, i64 noundef %31, ptr noundef %32, ptr noundef %33, i64 noundef %34, i64 noundef %35, ptr noundef %36, i64 noundef %37, ptr noundef %38, ptr noundef %39, i64 noundef %40, ptr noundef %41, ptr noundef null)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bj) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cij) #4
  br label %cleanup67

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %k_iter) #4
  %42 = load i64, ptr %k0.addr, align 8, !tbaa !7
  %div = sdiv i64 %42, 4
  store i64 %div, ptr %k_iter, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k_left) #4
  %43 = load i64, ptr %k0.addr, align 8, !tbaa !7
  %rem8 = srem i64 %43, 4
  store i64 %rem8, ptr %k_left, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_iter) #4
  %44 = load i64, ptr %m0.addr, align 8, !tbaa !7
  %div9 = sdiv i64 %44, 3
  store i64 %div9, ptr %m_iter, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_left) #4
  %45 = load i64, ptr %m0.addr, align 8, !tbaa !7
  %rem10 = srem i64 %45, 3
  store i64 %rem10, ptr %m_left, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_a) #4
  %46 = load i64, ptr %rs_a0.addr, align 8, !tbaa !7
  store i64 %46, ptr %rs_a, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_a) #4
  %47 = load i64, ptr %cs_a0.addr, align 8, !tbaa !7
  store i64 %47, ptr %cs_a, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #4
  %48 = load i64, ptr %rs_b0.addr, align 8, !tbaa !7
  store i64 %48, ptr %rs_b, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_c) #4
  %49 = load i64, ptr %rs_c0.addr, align 8, !tbaa !7
  store i64 %49, ptr %rs_c, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_c) #4
  %50 = load i64, ptr %cs_c0.addr, align 8, !tbaa !7
  store i64 %50, ptr %cs_c, align 8, !tbaa !7
  %51 = load i64, ptr %m_iter, align 8, !tbaa !7
  %cmp11 = icmp eq i64 %51, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  br label %consider_edge_cases

if.end13:                                         ; preds = %if.end7
  store i8 2, ptr %alpha_mul_type, align 1, !tbaa !4
  store i8 2, ptr %beta_mul_type, align 1, !tbaa !4
  %52 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.dcomplex, ptr %52, i32 0, i32 1
  %53 = load double, ptr %imag, align 8, !tbaa !11
  %cmp14 = fcmp oeq double %53, 0.000000e+00
  br i1 %cmp14, label %if.then15, label %if.end28

if.then15:                                        ; preds = %if.end13
  %54 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.dcomplex, ptr %54, i32 0, i32 0
  %55 = load double, ptr %real, align 8, !tbaa !14
  %cmp16 = fcmp oeq double %55, 1.000000e+00
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then15
  store i8 1, ptr %alpha_mul_type, align 1, !tbaa !4
  br label %if.end27

if.else:                                          ; preds = %if.then15
  %56 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real18 = getelementptr inbounds %struct.dcomplex, ptr %56, i32 0, i32 0
  %57 = load double, ptr %real18, align 8, !tbaa !14
  %cmp19 = fcmp oeq double %57, -1.000000e+00
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else
  store i8 -1, ptr %alpha_mul_type, align 1, !tbaa !4
  br label %if.end26

if.else21:                                        ; preds = %if.else
  %58 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real22 = getelementptr inbounds %struct.dcomplex, ptr %58, i32 0, i32 0
  %59 = load double, ptr %real22, align 8, !tbaa !14
  %cmp23 = fcmp oeq double %59, 0.000000e+00
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else21
  store i8 0, ptr %alpha_mul_type, align 1, !tbaa !4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.else21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then17
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end13
  %60 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %imag29 = getelementptr inbounds %struct.dcomplex, ptr %60, i32 0, i32 1
  %61 = load double, ptr %imag29, align 8, !tbaa !11
  %cmp30 = fcmp oeq double %61, 0.000000e+00
  br i1 %cmp30, label %if.then31, label %if.end46

if.then31:                                        ; preds = %if.end28
  %62 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real32 = getelementptr inbounds %struct.dcomplex, ptr %62, i32 0, i32 0
  %63 = load double, ptr %real32, align 8, !tbaa !14
  %cmp33 = fcmp oeq double %63, 1.000000e+00
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then31
  store i8 1, ptr %beta_mul_type, align 1, !tbaa !4
  br label %if.end45

if.else35:                                        ; preds = %if.then31
  %64 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real36 = getelementptr inbounds %struct.dcomplex, ptr %64, i32 0, i32 0
  %65 = load double, ptr %real36, align 8, !tbaa !14
  %cmp37 = fcmp oeq double %65, -1.000000e+00
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else35
  store i8 -1, ptr %beta_mul_type, align 1, !tbaa !4
  br label %if.end44

if.else39:                                        ; preds = %if.else35
  %66 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %real40 = getelementptr inbounds %struct.dcomplex, ptr %66, i32 0, i32 0
  %67 = load double, ptr %real40, align 8, !tbaa !14
  %cmp41 = fcmp oeq double %67, 0.000000e+00
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.else39
  store i8 0, ptr %beta_mul_type, align 1, !tbaa !4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.else39
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then38
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then34
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end28
  call void asm sideeffect "mov $5,%r14\0A\09mov $6,%r8\0A\09mov $7,%r9\0A\09lea (,%r8,8),%r8\0A\09lea (,%r8,2),%r8\0A\09lea (,%r9,8),%r9\0A\09lea (,%r9,2),%r9\0A\09mov $9,%r10\0A\09lea (,%r10,8),%r10\0A\09lea (,%r10,2),%r10\0A\09mov $12,%r12\0A\09mov $13,%rdi\0A\09lea (,%rdi,8),%rdi\0A\09lea (,%rdi,2),%rdi\0A\09mov $2,%r11\0A\09.L.ZLOOP3X4I${:uid}:\0A\09vzeroall \0A\09mov $8,%rbx\0A\09mov %r14,%rax\0A\09cmp $$16,%rdi\0A\09je .L.ZCOLPFETCH${:uid}\0A\09.L.ZROWPFETCH${:uid}:\0A\09jmp .L.ZPOSTPFETCH${:uid}\0A\09.L.ZCOLPFETCH${:uid}:\0A\09mov $14,%rsi\0A\09lea (,%rsi,8),%rsi\0A\09.L.ZPOSTPFETCH${:uid}:\0A\09mov $3,%rsi\0A\09test %rsi,%rsi\0A\09je .L.ZCONSIDKLEFT${:uid}\0A\09.L.ZLOOPKITER${:uid}:\0A\09vmovupd 0*32(%rbx),%Ymm0\0A\09vmovupd 1*32(%rbx),%Ymm1\0A\09add %r10,%rbx\0A\09vbroadcastsd (%rax),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm4\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm5\0A\09vbroadcastsd (%rax,%r8,1),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm8\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm9\0A\09vbroadcastsd (%rax,%r8,2),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm12\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm13\0A\09vbroadcastsd 8(%rax),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm6\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm7\0A\09vbroadcastsd 8(%rax,%r8,1),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm10\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm11\0A\09vbroadcastsd 8(%rax,%r8,2),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm14\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm15\0A\09add %r9,%rax\0A\09vmovupd 0*32(%rbx),%Ymm0\0A\09vmovupd 1*32(%rbx),%Ymm1\0A\09add %r10,%rbx\0A\09vbroadcastsd (%rax),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm4\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm5\0A\09vbroadcastsd (%rax,%r8,1),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm8\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm9\0A\09vbroadcastsd (%rax,%r8,2),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm12\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm13\0A\09vbroadcastsd 8(%rax),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm6\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm7\0A\09vbroadcastsd 8(%rax,%r8,1),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm10\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm11\0A\09vbroadcastsd 8(%rax,%r8,2),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm14\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm15\0A\09add %r9,%rax\0A\09vmovupd 0*32(%rbx),%Ymm0\0A\09vmovupd 1*32(%rbx),%Ymm1\0A\09add %r10,%rbx\0A\09vbroadcastsd (%rax),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm4\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm5\0A\09vbroadcastsd (%rax,%r8,1),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm8\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm9\0A\09vbroadcastsd (%rax,%r8,2),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm12\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm13\0A\09vbroadcastsd 8(%rax),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm6\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm7\0A\09vbroadcastsd 8(%rax,%r8,1),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm10\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm11\0A\09vbroadcastsd 8(%rax,%r8,2),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm14\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm15\0A\09add %r9,%rax\0A\09vmovupd 0*32(%rbx),%Ymm0\0A\09vmovupd 1*32(%rbx),%Ymm1\0A\09add %r10,%rbx\0A\09vbroadcastsd (%rax),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm4\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm5\0A\09vbroadcastsd (%rax,%r8,1),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm8\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm9\0A\09vbroadcastsd (%rax,%r8,2),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm12\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm13\0A\09vbroadcastsd 8(%rax),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm6\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm7\0A\09vbroadcastsd 8(%rax,%r8,1),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm10\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm11\0A\09vbroadcastsd 8(%rax,%r8,2),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm14\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm15\0A\09add %r9,%rax\0A\09dec %rsi\0A\09jne .L.ZLOOPKITER${:uid}\0A\09.L.ZCONSIDKLEFT${:uid}:\0A\09mov $4,%rsi\0A\09test %rsi,%rsi\0A\09je .L.ZPOSTACCUM${:uid}\0A\09.L.ZLOOPKLEFT${:uid}:\0A\09vmovupd 0*32(%rbx),%Ymm0\0A\09vmovupd 1*32(%rbx),%Ymm1\0A\09add %r10,%rbx\0A\09vbroadcastsd (%rax),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm4\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm5\0A\09vbroadcastsd (%rax,%r8,1),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm8\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm9\0A\09vbroadcastsd (%rax,%r8,2),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm12\0A\09vfmadd231pd %Ymm1,%Ymm2,%Ymm13\0A\09vbroadcastsd 8(%rax),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm6\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm7\0A\09vbroadcastsd 8(%rax,%r8,1),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm10\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm11\0A\09vbroadcastsd 8(%rax,%r8,2),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm14\0A\09vfmadd231pd %Ymm1,%Ymm3,%Ymm15\0A\09add %r9,%rax\0A\09dec %rsi\0A\09jne .L.ZLOOPKLEFT${:uid}\0A\09.L.ZPOSTACCUM${:uid}:\0A\09mov %r12,%rcx\0A\09vpermilpd $$0x5,%Ymm6,%Ymm6\0A\09vpermilpd $$0x5,%Ymm7,%Ymm7\0A\09vpermilpd $$0x5,%Ymm10,%Ymm10\0A\09vpermilpd $$0x5,%Ymm11,%Ymm11\0A\09vpermilpd $$0x5,%Ymm14,%Ymm14\0A\09vpermilpd $$0x5,%Ymm15,%Ymm15\0A\09vaddsubpd %Ymm6,%Ymm4,%Ymm4\0A\09vaddsubpd %Ymm7,%Ymm5,%Ymm5\0A\09vaddsubpd %Ymm10,%Ymm8,%Ymm8\0A\09vaddsubpd %Ymm11,%Ymm9,%Ymm9\0A\09vaddsubpd %Ymm14,%Ymm12,%Ymm12\0A\09vaddsubpd %Ymm15,%Ymm13,%Ymm13\0A\09mov $14,%rsi\0A\09lea (,%rsi,8),%rsi\0A\09lea (,%rsi,2),%rsi\0A\09mov $0,%al\0A\09cmp $$0xFF,%al\0A\09jne .L.ALPHA_NOT_MINUS1${:uid}\0A\09vxorpd %Ymm0,%Ymm0,%Ymm0\0A\09vsubpd %Ymm4,%Ymm0,%Ymm4\0A\09vsubpd %Ymm5,%Ymm0,%Ymm5\0A\09vsubpd %Ymm8,%Ymm0,%Ymm8\0A\09vsubpd %Ymm9,%Ymm0,%Ymm9\0A\09vsubpd %Ymm12,%Ymm0,%Ymm12\0A\09vsubpd %Ymm13,%Ymm0,%Ymm13\0A\09jmp .L.ALPHA_REAL_ONE${:uid}\0A\09.L.ALPHA_NOT_MINUS1${:uid}:\0A\09cmp $$2,%al\0A\09jne .L.ALPHA_REAL_ONE${:uid}\0A\09mov $10,%rax\0A\09vbroadcastsd (%rax),%Ymm0\0A\09vbroadcastsd 8(%rax),%Ymm1\0A\09vpermilpd $$0x5,%Ymm4,%Ymm3\0A\09vmulpd %Ymm0,%Ymm4,%Ymm4\0A\09vmulpd %Ymm1,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm4,%Ymm4\0A\09vpermilpd $$0x5,%Ymm5,%Ymm3\0A\09vmulpd %Ymm0,%Ymm5,%Ymm5\0A\09vmulpd %Ymm1,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm5,%Ymm5\0A\09vpermilpd $$0x5,%Ymm8,%Ymm3\0A\09vmulpd %Ymm0,%Ymm8,%Ymm8\0A\09vmulpd %Ymm1,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm8,%Ymm8\0A\09vpermilpd $$0x5,%Ymm9,%Ymm3\0A\09vmulpd %Ymm0,%Ymm9,%Ymm9\0A\09vmulpd %Ymm1,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm9,%Ymm9\0A\09vpermilpd $$0x5,%Ymm12,%Ymm3\0A\09vmulpd %Ymm0,%Ymm12,%Ymm12\0A\09vmulpd %Ymm1,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm12,%Ymm12\0A\09vpermilpd $$0x5,%Ymm13,%Ymm3\0A\09vmulpd %Ymm0,%Ymm13,%Ymm13\0A\09vmulpd %Ymm1,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm13,%Ymm13\0A\09.L.ALPHA_REAL_ONE${:uid}:\0A\09mov $1,%al\0A\09cmp $$0,%al\0A\09je .L.ZBETAZERO${:uid}\0A\09cmp $$16,%rdi\0A\09je .L.ZCOLSTORED${:uid}\0A\09.L.ZROWSTORED${:uid}:\0A\09lea (,%rsi,2),%rsi\0A\09cmp $$2,%al\0A\09je .L.ROW_BETA_NOT_REAL_ONE${:uid}\0A\09cmp $$0xFF,%al\0A\09je .L.ROW_BETA_REAL_MINUS1${:uid}\0A\09vmovupd (%rcx),%Ymm0\0A\09vaddpd %Ymm4,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx)\0A\09vmovupd (%rcx,%rsi,1),%Ymm0\0A\09vaddpd %Ymm5,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx,%rsi,1)\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Ymm0\0A\09vaddpd %Ymm8,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx)\0A\09vmovupd (%rcx,%rsi,1),%Ymm0\0A\09vaddpd %Ymm9,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx,%rsi,1)\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Ymm0\0A\09vaddpd %Ymm12,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx)\0A\09vmovupd (%rcx,%rsi,1),%Ymm0\0A\09vaddpd %Ymm13,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx,%rsi,1)\0A\09jmp .L.ZDONE${:uid}\0A\09.L.ROW_BETA_REAL_MINUS1${:uid}:\0A\09vmovupd (%rcx),%Ymm0\0A\09vsubpd %Ymm0,%Ymm4,%Ymm0\0A\09vmovupd %Ymm0,(%rcx)\0A\09vmovupd (%rcx,%rsi,1),%Ymm0\0A\09vsubpd %Ymm0,%Ymm5,%Ymm0\0A\09vmovupd %Ymm0,(%rcx,%rsi,1)\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Ymm0\0A\09vsubpd %Ymm0,%Ymm8,%Ymm0\0A\09vmovupd %Ymm0,(%rcx)\0A\09vmovupd (%rcx,%rsi,1),%Ymm0\0A\09vsubpd %Ymm0,%Ymm9,%Ymm0\0A\09vmovupd %Ymm0,(%rcx,%rsi,1)\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Ymm0\0A\09vsubpd %Ymm0,%Ymm12,%Ymm0\0A\09vmovupd %Ymm0,(%rcx)\0A\09vmovupd (%rcx,%rsi,1),%Ymm0\0A\09vsubpd %Ymm0,%Ymm13,%Ymm0\0A\09vmovupd %Ymm0,(%rcx,%rsi,1)\0A\09jmp .L.ZDONE${:uid}\0A\09.L.ROW_BETA_NOT_REAL_ONE${:uid}:\0A\09mov $11,%rbx\0A\09vbroadcastsd (%rbx),%Ymm1\0A\09vbroadcastsd 8(%rbx),%Ymm2\0A\09vmovupd (%rcx),%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm4,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx)\0A\09vmovupd (%rcx,%rsi,1),%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm5,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx,%rsi,1)\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm8,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx)\0A\09vmovupd (%rcx,%rsi,1),%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm9,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx,%rsi,1)\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm12,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx)\0A\09vmovupd (%rcx,%rsi,1),%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm13,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx,%rsi,1)\0A\09jmp .L.ZDONE${:uid}\0A\09.L.ZCOLSTORED${:uid}:\0A\09mov $11,%rbx\0A\09vbroadcastsd (%rbx),%Ymm1\0A\09vbroadcastsd 8(%rbx),%Ymm2\0A\09vmovupd (%rcx),%Xmm0\0A\09vmovupd (%rcx,%rsi,1),%Xmm3\0A\09vinsertf128 $$1,%Xmm3,%Ymm0,%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm4,%Ymm0,%Ymm4\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Xmm0\0A\09vmovupd (%rcx,%rsi,1),%Xmm3\0A\09vinsertf128 $$1,%Xmm3,%Ymm0,%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm8,%Ymm0,%Ymm8\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Xmm0\0A\09vmovupd (%rcx,%rsi,1),%Xmm3\0A\09vinsertf128 $$1,%Xmm3,%Ymm0,%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm12,%Ymm0,%Ymm12\0A\09lea (%r12,%rsi,2),%rcx\0A\09vmovupd (%rcx),%Xmm0\0A\09vmovupd (%rcx,%rsi,1),%Xmm3\0A\09vinsertf128 $$1,%Xmm3,%Ymm0,%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm5,%Ymm0,%Ymm5\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Xmm0\0A\09vmovupd (%rcx,%rsi,1),%Xmm3\0A\09vinsertf128 $$1,%Xmm3,%Ymm0,%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm9,%Ymm0,%Ymm9\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Xmm0\0A\09vmovupd (%rcx,%rsi,1),%Xmm3\0A\09vinsertf128 $$1,%Xmm3,%Ymm0,%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm13,%Ymm0,%Ymm13\0A\09mov %r12,%rcx\0A\09vmovups %Xmm4,(%rcx)\0A\09vmovups %Xmm8,16(%rcx)\0A\09vmovups %Xmm12,32(%rcx)\0A\09add %rsi,%rcx\0A\09vextractf128 $$0x1,%Ymm4,%Xmm4\0A\09vextractf128 $$0x1,%Ymm8,%Xmm8\0A\09vextractf128 $$0x1,%Ymm12,%Xmm12\0A\09vmovups %Xmm4,(%rcx)\0A\09vmovups %Xmm8,16(%rcx)\0A\09vmovups %Xmm12,32(%rcx)\0A\09add %rsi,%rcx\0A\09vmovups %Xmm5,(%rcx)\0A\09vmovups %Xmm9,16(%rcx)\0A\09vmovups %Xmm13,32(%rcx)\0A\09add %rsi,%rcx\0A\09vextractf128 $$0x1,%Ymm5,%Xmm5\0A\09vextractf128 $$0x1,%Ymm9,%Xmm9\0A\09vextractf128 $$0x1,%Ymm13,%Xmm13\0A\09vmovups %Xmm5,(%rcx)\0A\09vmovups %Xmm9,16(%rcx)\0A\09vmovups %Xmm13,32(%rcx)\0A\09jmp .L.ZDONE${:uid}\0A\09.L.ZBETAZERO${:uid}:\0A\09cmp $$16,%rdi\0A\09je .L.ZCOLSTORBZ${:uid}\0A\09.L.ZROWSTORBZ${:uid}:\0A\09lea (,%rsi,2),%rsi\0A\09vmovupd %Ymm4,(%rcx)\0A\09vmovupd %Ymm5,(%rcx,%rsi,1)\0A\09add %rdi,%rcx\0A\09vmovupd %Ymm8,(%rcx)\0A\09vmovupd %Ymm9,(%rcx,%rsi,1)\0A\09add %rdi,%rcx\0A\09vmovupd %Ymm12,(%rcx)\0A\09vmovupd %Ymm13,(%rcx,%rsi,1)\0A\09jmp .L.ZDONE${:uid}\0A\09.L.ZCOLSTORBZ${:uid}:\0A\09vmovups %Xmm4,(%rcx)\0A\09vmovups %Xmm8,16(%rcx)\0A\09vmovups %Xmm12,32(%rcx)\0A\09add %rsi,%rcx\0A\09vextractf128 $$0x1,%Ymm4,%Xmm4\0A\09vextractf128 $$0x1,%Ymm8,%Xmm8\0A\09vextractf128 $$0x1,%Ymm12,%Xmm12\0A\09vmovups %Xmm4,(%rcx)\0A\09vmovups %Xmm8,16(%rcx)\0A\09vmovups %Xmm12,32(%rcx)\0A\09add %rsi,%rcx\0A\09vmovups %Xmm5,(%rcx)\0A\09vmovups %Xmm9,16(%rcx)\0A\09vmovups %Xmm13,32(%rcx)\0A\09add %rsi,%rcx\0A\09vextractf128 $$0x1,%Ymm5,%Xmm5\0A\09vextractf128 $$0x1,%Ymm9,%Xmm9\0A\09vextractf128 $$0x1,%Ymm13,%Xmm13\0A\09vmovups %Xmm5,(%rcx)\0A\09vmovups %Xmm9,16(%rcx)\0A\09vmovups %Xmm13,32(%rcx)\0A\09.L.ZDONE${:uid}:\0A\09lea (%r12,%rdi,2),%r12\0A\09lea (%r12,%rdi,1),%r12\0A\09lea (%r14,%r8,2),%r14\0A\09lea (%r14,%r8,1),%r14\0A\09dec %r11\0A\09jne .L.ZLOOP3X4I${:uid}\0A\09.L.ZRETURN${:uid}:\0A\09", "*m,*m,*m,*m,*m,*m,*m,*m,*m,*m,*m,*m,*m,*m,*m,~{rax},~{rbx},~{rcx},~{rsi},~{rdi},~{r8},~{r9},~{r10},~{r11},~{r12},~{r14},~{r15},~{xmm0},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{ymm0},~{ymm1},~{ymm2},~{ymm3},~{ymm4},~{ymm5},~{ymm6},~{ymm7},~{ymm8},~{ymm9},~{ymm10},~{ymm11},~{ymm12},~{ymm13},~{ymm14},~{ymm15},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %alpha_mul_type, ptr elementtype(i8) %beta_mul_type, ptr elementtype(i64) %m_iter, ptr elementtype(i64) %k_iter, ptr elementtype(i64) %k_left, ptr elementtype(ptr) %a.addr, ptr elementtype(i64) %rs_a, ptr elementtype(i64) %cs_a, ptr elementtype(ptr) %b.addr, ptr elementtype(i64) %rs_b, ptr elementtype(ptr) %alpha.addr, ptr elementtype(ptr) %beta.addr, ptr elementtype(ptr) %c.addr, ptr elementtype(i64) %rs_c, ptr elementtype(i64) %cs_c) #4, !srcloc !15
  br label %consider_edge_cases

consider_edge_cases:                              ; preds = %if.end46, %if.then12
  %68 = load i64, ptr %m_left, align 8, !tbaa !7
  %tobool47 = icmp ne i64 %68, 0
  br i1 %tobool47, label %if.then48, label %if.end58

if.then48:                                        ; preds = %consider_edge_cases
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_cur49) #4
  store i64 4, ptr %nr_cur49, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_edge) #4
  %69 = load i64, ptr %m0.addr, align 8, !tbaa !7
  %70 = load i64, ptr %m_left, align 8, !tbaa !7
  %sub50 = sub nsw i64 %69, %70
  store i64 %sub50, ptr %i_edge, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cij51) #4
  %71 = load ptr, ptr %c.addr, align 8, !tbaa !9
  %72 = load i64, ptr %i_edge, align 8, !tbaa !7
  %73 = load i64, ptr %rs_c, align 8, !tbaa !7
  %mul52 = mul i64 %72, %73
  %add.ptr53 = getelementptr inbounds %struct.dcomplex, ptr %71, i64 %mul52
  store ptr %add.ptr53, ptr %cij51, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai54) #4
  %74 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %75 = load i64, ptr %i_edge, align 8, !tbaa !7
  %76 = load i64, ptr %rs_a, align 8, !tbaa !7
  %mul55 = mul i64 %75, %76
  %add.ptr56 = getelementptr inbounds %struct.dcomplex, ptr %74, i64 %mul55
  store ptr %add.ptr56, ptr %ai54, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bj57) #4
  %77 = load ptr, ptr %b.addr, align 8, !tbaa !9
  store ptr %77, ptr %bj57, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ker_fps) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %ker_fps, ptr align 16 @__const.bli_zgemmsup_rv_zen_asm_3x4m.ker_fps, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ker_fp) #4
  %78 = load i64, ptr %m_left, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %ker_fps, i64 0, i64 %78
  %79 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %79, ptr %ker_fp, align 8, !tbaa !9
  %80 = load ptr, ptr %ker_fp, align 8, !tbaa !9
  %81 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %82 = load i32, ptr %conjb.addr, align 4, !tbaa !4
  %83 = load i64, ptr %m_left, align 8, !tbaa !7
  %84 = load i64, ptr %k0.addr, align 8, !tbaa !7
  %85 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %86 = load ptr, ptr %ai54, align 8, !tbaa !9
  %87 = load i64, ptr %rs_a0.addr, align 8, !tbaa !7
  %88 = load i64, ptr %cs_a0.addr, align 8, !tbaa !7
  %89 = load ptr, ptr %bj57, align 8, !tbaa !9
  %90 = load i64, ptr %rs_b0.addr, align 8, !tbaa !7
  %91 = load i64, ptr %cs_b0.addr, align 8, !tbaa !7
  %92 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %93 = load ptr, ptr %cij51, align 8, !tbaa !9
  %94 = load i64, ptr %rs_c0.addr, align 8, !tbaa !7
  %95 = load i64, ptr %cs_c0.addr, align 8, !tbaa !7
  %96 = load ptr, ptr %data.addr, align 8, !tbaa !9
  %97 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %80(i32 noundef %81, i32 noundef %82, i64 noundef %83, i64 noundef 4, i64 noundef %84, ptr noundef %85, ptr noundef %86, i64 noundef %87, i64 noundef %88, ptr noundef %89, i64 noundef %90, i64 noundef %91, ptr noundef %92, ptr noundef %93, i64 noundef %94, i64 noundef %95, ptr noundef %96, ptr noundef %97)
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ker_fp) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr %ker_fps) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bj57) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai54) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cij51) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_edge) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_cur49) #4
  br label %cleanup

if.end58:                                         ; preds = %consider_edge_cases
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then48
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_c) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_c) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_a) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_a) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_left) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_iter) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k_left) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k_iter) #4
  br label %cleanup67

cleanup67:                                        ; preds = %cleanup, %if.end6
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_left) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup67, %cleanup67
  ret void

unreachable:                                      ; preds = %cleanup67
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden void @bli_zgemmsup_rv_zen_asm_3x2m(i32 noundef %conja, i32 noundef %conjb, i64 noundef %m0, i64 noundef %n0, i64 noundef %k0, ptr noalias noundef %alpha, ptr noalias noundef %a, i64 noundef %rs_a0, i64 noundef %cs_a0, ptr noalias noundef %b, i64 noundef %rs_b0, i64 noundef %cs_b0, ptr noalias noundef %beta, ptr noalias noundef %c, i64 noundef %rs_c0, i64 noundef %cs_c0, ptr noalias noundef %data, ptr noalias noundef %cntx) #0 {
entry:
  %conja.addr = alloca i32, align 4
  %conjb.addr = alloca i32, align 4
  %m0.addr = alloca i64, align 8
  %n0.addr = alloca i64, align 8
  %k0.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %rs_a0.addr = alloca i64, align 8
  %cs_a0.addr = alloca i64, align 8
  %b.addr = alloca ptr, align 8
  %rs_b0.addr = alloca i64, align 8
  %cs_b0.addr = alloca i64, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %rs_c0.addr = alloca i64, align 8
  %cs_c0.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %cntx.addr = alloca ptr, align 8
  %k_iter = alloca i64, align 8
  %k_left = alloca i64, align 8
  %m_iter = alloca i64, align 8
  %m_left = alloca i64, align 8
  %rs_a = alloca i64, align 8
  %cs_a = alloca i64, align 8
  %rs_b = alloca i64, align 8
  %rs_c = alloca i64, align 8
  %cs_c = alloca i64, align 8
  %nr_cur = alloca i64, align 8
  %i_edge = alloca i64, align 8
  %cij = alloca ptr, align 8
  %ai = alloca ptr, align 8
  %bj = alloca ptr, align 8
  %ker_fps = alloca [3 x ptr], align 16
  %ker_fp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %conja, ptr %conja.addr, align 4, !tbaa !4
  store i32 %conjb, ptr %conjb.addr, align 4, !tbaa !4
  store i64 %m0, ptr %m0.addr, align 8, !tbaa !7
  store i64 %n0, ptr %n0.addr, align 8, !tbaa !7
  store i64 %k0, ptr %k0.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %rs_a0, ptr %rs_a0.addr, align 8, !tbaa !7
  store i64 %cs_a0, ptr %cs_a0.addr, align 8, !tbaa !7
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store i64 %rs_b0, ptr %rs_b0.addr, align 8, !tbaa !7
  store i64 %cs_b0, ptr %cs_b0.addr, align 8, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !9
  store ptr %c, ptr %c.addr, align 8, !tbaa !9
  store i64 %rs_c0, ptr %rs_c0.addr, align 8, !tbaa !7
  store i64 %cs_c0, ptr %cs_c0.addr, align 8, !tbaa !7
  store ptr %data, ptr %data.addr, align 8, !tbaa !9
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %k_iter) #4
  %0 = load i64, ptr %k0.addr, align 8, !tbaa !7
  %div = sdiv i64 %0, 4
  store i64 %div, ptr %k_iter, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %k_left) #4
  %1 = load i64, ptr %k0.addr, align 8, !tbaa !7
  %rem = srem i64 %1, 4
  store i64 %rem, ptr %k_left, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_iter) #4
  %2 = load i64, ptr %m0.addr, align 8, !tbaa !7
  %div1 = sdiv i64 %2, 3
  store i64 %div1, ptr %m_iter, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_left) #4
  %3 = load i64, ptr %m0.addr, align 8, !tbaa !7
  %rem2 = srem i64 %3, 3
  store i64 %rem2, ptr %m_left, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_a) #4
  %4 = load i64, ptr %rs_a0.addr, align 8, !tbaa !7
  store i64 %4, ptr %rs_a, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_a) #4
  %5 = load i64, ptr %cs_a0.addr, align 8, !tbaa !7
  store i64 %5, ptr %cs_a, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_b) #4
  %6 = load i64, ptr %rs_b0.addr, align 8, !tbaa !7
  store i64 %6, ptr %rs_b, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %rs_c) #4
  %7 = load i64, ptr %rs_c0.addr, align 8, !tbaa !7
  store i64 %7, ptr %rs_c, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cs_c) #4
  %8 = load i64, ptr %cs_c0.addr, align 8, !tbaa !7
  store i64 %8, ptr %cs_c, align 8, !tbaa !7
  %9 = load i64, ptr %m_iter, align 8, !tbaa !7
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %consider_edge_cases

if.end:                                           ; preds = %entry
  call void asm sideeffect "mov $3,%r14\0A\09mov $4,%r8\0A\09mov $5,%r9\0A\09lea (,%r8,8),%r8\0A\09lea (,%r8,2),%r8\0A\09lea (,%r9,8),%r9\0A\09lea (,%r9,2),%r9\0A\09mov $7,%r10\0A\09lea (,%r10,8),%r10\0A\09lea (,%r10,2),%r10\0A\09mov $10,%r12\0A\09mov $11,%rdi\0A\09lea (,%rdi,8),%rdi\0A\09lea (,%rdi,2),%rdi\0A\09mov $0,%r11\0A\09.L.ZLOOP3X2I${:uid}:\0A\09vzeroall \0A\09mov $6,%rbx\0A\09mov %r14,%rax\0A\09cmp $$16,%rdi\0A\09je .L.ZCOLPFETCH${:uid}\0A\09.L.ZROWPFETCH${:uid}:\0A\09jmp .L.ZPOSTPFETCH${:uid}\0A\09.L.ZCOLPFETCH${:uid}:\0A\09mov $12,%rsi\0A\09lea (,%rsi,8),%rsi\0A\09.L.ZPOSTPFETCH${:uid}:\0A\09mov $1,%rsi\0A\09test %rsi,%rsi\0A\09je .L.ZCONSIDKLEFT${:uid}\0A\09.L.ZLOOPKITER${:uid}:\0A\09vmovupd 0*32(%rbx),%Ymm0\0A\09add %r10,%rbx\0A\09vbroadcastsd (%rax),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm4\0A\09vbroadcastsd (%rax,%r8,1),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm8\0A\09vbroadcastsd (%rax,%r8,2),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm12\0A\09vbroadcastsd 8(%rax),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm6\0A\09vbroadcastsd 8(%rax,%r8,1),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm10\0A\09vbroadcastsd 8(%rax,%r8,2),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm14\0A\09add %r9,%rax\0A\09vmovupd 0*32(%rbx),%Ymm0\0A\09add %r10,%rbx\0A\09vbroadcastsd (%rax),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm4\0A\09vbroadcastsd (%rax,%r8,1),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm8\0A\09vbroadcastsd (%rax,%r8,2),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm12\0A\09vbroadcastsd 8(%rax),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm6\0A\09vbroadcastsd 8(%rax,%r8,1),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm10\0A\09vbroadcastsd 8(%rax,%r8,2),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm14\0A\09add %r9,%rax\0A\09vmovupd 0*32(%rbx),%Ymm0\0A\09add %r10,%rbx\0A\09vbroadcastsd (%rax),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm4\0A\09vbroadcastsd (%rax,%r8,1),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm8\0A\09vbroadcastsd (%rax,%r8,2),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm12\0A\09vbroadcastsd 8(%rax),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm6\0A\09vbroadcastsd 8(%rax,%r8,1),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm10\0A\09vbroadcastsd 8(%rax,%r8,2),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm14\0A\09add %r9,%rax\0A\09vmovupd 0*32(%rbx),%Ymm0\0A\09add %r10,%rbx\0A\09vbroadcastsd (%rax),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm4\0A\09vbroadcastsd (%rax,%r8,1),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm8\0A\09vbroadcastsd (%rax,%r8,2),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm12\0A\09vbroadcastsd 8(%rax),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm6\0A\09vbroadcastsd 8(%rax,%r8,1),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm10\0A\09vbroadcastsd 8(%rax,%r8,2),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm14\0A\09add %r9,%rax\0A\09dec %rsi\0A\09jne .L.ZLOOPKITER${:uid}\0A\09.L.ZCONSIDKLEFT${:uid}:\0A\09mov $2,%rsi\0A\09test %rsi,%rsi\0A\09je .L.ZPOSTACCUM${:uid}\0A\09.L.ZLOOPKLEFT${:uid}:\0A\09vmovupd 0*32(%rbx),%Ymm0\0A\09add %r10,%rbx\0A\09vbroadcastsd (%rax),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm4\0A\09vbroadcastsd (%rax,%r8,1),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm8\0A\09vbroadcastsd (%rax,%r8,2),%Ymm2\0A\09vfmadd231pd %Ymm0,%Ymm2,%Ymm12\0A\09vbroadcastsd 8(%rax),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm6\0A\09vbroadcastsd 8(%rax,%r8,1),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm10\0A\09vbroadcastsd 8(%rax,%r8,2),%Ymm3\0A\09vfmadd231pd %Ymm0,%Ymm3,%Ymm14\0A\09add %r9,%rax\0A\09dec %rsi\0A\09jne .L.ZLOOPKLEFT${:uid}\0A\09.L.ZPOSTACCUM${:uid}:\0A\09mov %r12,%rcx\0A\09vpermilpd $$0x5,%Ymm6,%Ymm6\0A\09vpermilpd $$0x5,%Ymm10,%Ymm10\0A\09vpermilpd $$0x5,%Ymm14,%Ymm14\0A\09vaddsubpd %Ymm6,%Ymm4,%Ymm4\0A\09vaddsubpd %Ymm10,%Ymm8,%Ymm8\0A\09vaddsubpd %Ymm14,%Ymm12,%Ymm12\0A\09mov $8,%rax\0A\09vbroadcastsd (%rax),%Ymm0\0A\09vbroadcastsd 8(%rax),%Ymm1\0A\09vpermilpd $$0x5,%Ymm4,%Ymm3\0A\09vmulpd %Ymm0,%Ymm4,%Ymm4\0A\09vmulpd %Ymm1,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm4,%Ymm4\0A\09vpermilpd $$0x5,%Ymm8,%Ymm3\0A\09vmulpd %Ymm0,%Ymm8,%Ymm8\0A\09vmulpd %Ymm1,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm8,%Ymm8\0A\09vpermilpd $$0x5,%Ymm12,%Ymm3\0A\09vmulpd %Ymm0,%Ymm12,%Ymm12\0A\09vmulpd %Ymm1,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm12,%Ymm12\0A\09mov $9,%rbx\0A\09vbroadcastsd (%rbx),%Ymm1\0A\09vbroadcastsd 8(%rbx),%Ymm2\0A\09vxorpd %Ymm0,%Ymm0,%Ymm0\0A\09vucomisd %Xmm0,%Xmm1\0A\09sete %r13b\0A\09vucomisd %Xmm0,%Xmm2\0A\09sete %r15b\0A\09and %r13b,%r15b\0A\09jne .L.ZBETAZERO${:uid}\0A\09cmp $$16,%rdi\0A\09je .L.ZCOLSTORED${:uid}\0A\09.L.ZROWSTORED${:uid}:\0A\09vmovupd (%rcx),%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm4,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx)\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm8,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx)\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm12,%Ymm0,%Ymm0\0A\09vmovupd %Ymm0,(%rcx)\0A\09jmp .L.ZDONE${:uid}\0A\09.L.ZCOLSTORED${:uid}:\0A\09mov $12,%rsi\0A\09lea (,%rsi,8),%rsi\0A\09lea (,%rsi,2),%rsi\0A\09vmovupd (%rcx),%Xmm0\0A\09vmovupd (%rcx,%rsi,1),%Xmm3\0A\09vinsertf128 $$1,%Xmm3,%Ymm0,%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm4,%Ymm0,%Ymm4\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Xmm0\0A\09vmovupd (%rcx,%rsi,1),%Xmm3\0A\09vinsertf128 $$1,%Xmm3,%Ymm0,%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm8,%Ymm0,%Ymm8\0A\09add %rdi,%rcx\0A\09vmovupd (%rcx),%Xmm0\0A\09vmovupd (%rcx,%rsi,1),%Xmm3\0A\09vinsertf128 $$1,%Xmm3,%Ymm0,%Ymm0\0A\09vpermilpd $$0x5,%Ymm0,%Ymm3\0A\09vmulpd %Ymm1,%Ymm0,%Ymm0\0A\09vmulpd %Ymm2,%Ymm3,%Ymm3\0A\09vaddsubpd %Ymm3,%Ymm0,%Ymm0\0A\09vaddpd %Ymm12,%Ymm0,%Ymm12\0A\09mov %r12,%rcx\0A\09vmovups %Xmm4,(%rcx)\0A\09vmovups %Xmm8,16(%rcx)\0A\09vmovups %Xmm12,32(%rcx)\0A\09add %rsi,%rcx\0A\09vextractf128 $$0x1,%Ymm4,%Xmm4\0A\09vextractf128 $$0x1,%Ymm8,%Xmm8\0A\09vextractf128 $$0x1,%Ymm12,%Xmm12\0A\09vmovups %Xmm4,(%rcx)\0A\09vmovups %Xmm8,16(%rcx)\0A\09vmovups %Xmm12,32(%rcx)\0A\09jmp .L.ZDONE${:uid}\0A\09.L.ZBETAZERO${:uid}:\0A\09cmp $$16,%rdi\0A\09je .L.ZCOLSTORBZ${:uid}\0A\09.L.ZROWSTORBZ${:uid}:\0A\09vmovupd %Ymm4,(%rcx)\0A\09add %rdi,%rcx\0A\09vmovupd %Ymm8,(%rcx)\0A\09add %rdi,%rcx\0A\09vmovupd %Ymm12,(%rcx)\0A\09jmp .L.ZDONE${:uid}\0A\09.L.ZCOLSTORBZ${:uid}:\0A\09mov $12,%rsi\0A\09lea (,%rsi,8),%rsi\0A\09lea (,%rsi,2),%rsi\0A\09vmovups %Xmm4,(%rcx)\0A\09vmovups %Xmm8,16(%rcx)\0A\09vmovups %Xmm12,32(%rcx)\0A\09add %rsi,%rcx\0A\09vextractf128 $$0x1,%Ymm4,%Xmm4\0A\09vextractf128 $$0x1,%Ymm8,%Xmm8\0A\09vextractf128 $$0x1,%Ymm12,%Xmm12\0A\09vmovups %Xmm4,(%rcx)\0A\09vmovups %Xmm8,16(%rcx)\0A\09vmovups %Xmm12,32(%rcx)\0A\09.L.ZDONE${:uid}:\0A\09lea (%r12,%rdi,2),%r12\0A\09lea (%r12,%rdi,1),%r12\0A\09lea (%r14,%r8,2),%r14\0A\09lea (%r14,%r8,1),%r14\0A\09dec %r11\0A\09jne .L.ZLOOP3X2I${:uid}\0A\09.L.ZRETURN${:uid}:\0A\09", "*m,*m,*m,*m,*m,*m,*m,*m,*m,*m,*m,*m,*m,~{rax},~{rbx},~{rcx},~{rsi},~{rdi},~{r8},~{r9},~{r10},~{r11},~{r12},~{r13},~{r14},~{r15},~{xmm0},~{xmm1},~{xmm2},~{xmm3},~{xmm4},~{xmm5},~{xmm6},~{xmm7},~{xmm8},~{xmm9},~{xmm10},~{xmm11},~{xmm12},~{xmm13},~{xmm14},~{xmm15},~{ymm0},~{ymm1},~{ymm2},~{ymm3},~{ymm4},~{ymm6},~{ymm8},~{ymm10},~{ymm12},~{ymm14},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %m_iter, ptr elementtype(i64) %k_iter, ptr elementtype(i64) %k_left, ptr elementtype(ptr) %a.addr, ptr elementtype(i64) %rs_a, ptr elementtype(i64) %cs_a, ptr elementtype(ptr) %b.addr, ptr elementtype(i64) %rs_b, ptr elementtype(ptr) %alpha.addr, ptr elementtype(ptr) %beta.addr, ptr elementtype(ptr) %c.addr, ptr elementtype(i64) %rs_c, ptr elementtype(i64) %cs_c) #4, !srcloc !16
  br label %consider_edge_cases

consider_edge_cases:                              ; preds = %if.end, %if.then
  %10 = load i64, ptr %m_left, align 8, !tbaa !7
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %if.then3, label %if.end6

if.then3:                                         ; preds = %consider_edge_cases
  call void @llvm.lifetime.start.p0(i64 8, ptr %nr_cur) #4
  store i64 4, ptr %nr_cur, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i_edge) #4
  %11 = load i64, ptr %m0.addr, align 8, !tbaa !7
  %12 = load i64, ptr %m_left, align 8, !tbaa !7
  %sub = sub nsw i64 %11, %12
  store i64 %sub, ptr %i_edge, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %cij) #4
  %13 = load ptr, ptr %c.addr, align 8, !tbaa !9
  %14 = load i64, ptr %i_edge, align 8, !tbaa !7
  %15 = load i64, ptr %rs_c, align 8, !tbaa !7
  %mul = mul i64 %14, %15
  %add.ptr = getelementptr inbounds %struct.dcomplex, ptr %13, i64 %mul
  store ptr %add.ptr, ptr %cij, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %ai) #4
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i_edge, align 8, !tbaa !7
  %18 = load i64, ptr %rs_a, align 8, !tbaa !7
  %mul4 = mul i64 %17, %18
  %add.ptr5 = getelementptr inbounds %struct.dcomplex, ptr %16, i64 %mul4
  store ptr %add.ptr5, ptr %ai, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %bj) #4
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  store ptr %19, ptr %bj, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ker_fps) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %ker_fps, ptr align 16 @__const.bli_zgemmsup_rv_zen_asm_3x2m.ker_fps, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %ker_fp) #4
  %20 = load i64, ptr %m_left, align 8, !tbaa !7
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %ker_fps, i64 0, i64 %20
  %21 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %21, ptr %ker_fp, align 8, !tbaa !9
  %22 = load ptr, ptr %ker_fp, align 8, !tbaa !9
  %23 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %24 = load i32, ptr %conjb.addr, align 4, !tbaa !4
  %25 = load i64, ptr %m_left, align 8, !tbaa !7
  %26 = load i64, ptr %k0.addr, align 8, !tbaa !7
  %27 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %28 = load ptr, ptr %ai, align 8, !tbaa !9
  %29 = load i64, ptr %rs_a0.addr, align 8, !tbaa !7
  %30 = load i64, ptr %cs_a0.addr, align 8, !tbaa !7
  %31 = load ptr, ptr %bj, align 8, !tbaa !9
  %32 = load i64, ptr %rs_b0.addr, align 8, !tbaa !7
  %33 = load i64, ptr %cs_b0.addr, align 8, !tbaa !7
  %34 = load ptr, ptr %beta.addr, align 8, !tbaa !9
  %35 = load ptr, ptr %cij, align 8, !tbaa !9
  %36 = load i64, ptr %rs_c0.addr, align 8, !tbaa !7
  %37 = load i64, ptr %cs_c0.addr, align 8, !tbaa !7
  %38 = load ptr, ptr %data.addr, align 8, !tbaa !9
  %39 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %22(i32 noundef %23, i32 noundef %24, i64 noundef %25, i64 noundef 4, i64 noundef %26, ptr noundef %27, ptr noundef %28, i64 noundef %29, i64 noundef %30, ptr noundef %31, i64 noundef %32, i64 noundef %33, ptr noundef %34, ptr noundef %35, i64 noundef %36, i64 noundef %37, ptr noundef %38, ptr noundef %39)
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ker_fp) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr %ker_fps) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bj) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ai) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cij) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i_edge) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nr_cur) #4
  br label %cleanup

if.end6:                                          ; preds = %consider_edge_cases
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_c) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_c) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_b) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cs_a) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rs_a) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_left) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_iter) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k_left) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k_iter) #4
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @bli_zgemv_ex(i32 noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_zgemmsup_rv_zen_asm_1x4(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_zgemmsup_rv_zen_asm_2x4(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @bli_zgemmsup_rv_zen_asm_1x2(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

declare void @bli_zgemmsup_rv_zen_asm_2x2(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-fma4,-lwp,-tbm,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-fma4,-lwp,-tbm,-xop" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"", !13, i64 0, !13, i64 8}
!13 = !{!"double", !5, i64 0}
!14 = !{!12, !13, i64 0}
!15 = !{i64 2152355641, i64 2152355606, i64 2152356015, i64 2152356428, i64 2152357019, i64 2152357620, i64 2152358221, i64 2152358822, i64 2152359252, i64 2152359863, i64 2152360486, i64 2152360902, i64 2152361318, i64 2152361929, i64 2152362552, i64 2152362998, i64 2152363124, i64 2152363420, i64 2152363804, i64 2152364203, i64 2152364596, i64 2152364761, i64 2152364915, i64 2152365085, i64 2152365244, i64 2152365676, i64 2152366287, i64 2152366423, i64 2152366870, i64 2152367282, i64 2152367439, i64 2152367599, i64 2152368250, i64 2152368911, i64 2152369336, i64 2152369934, i64 2152370535, i64 2152371145, i64 2152371904, i64 2152372524, i64 2152373134, i64 2152373896, i64 2152374525, i64 2152379207, i64 2152379868, i64 2152380472, i64 2152381082, i64 2152381864, i64 2152382496, i64 2152383117, i64 2152383901, i64 2152384533, i64 2152385154, i64 2152385584, i64 2152386218, i64 2152386879, i64 2152387304, i64 2152387902, i64 2152388503, i64 2152389113, i64 2152389872, i64 2152390492, i64 2152391102, i64 2152391864, i64 2152392493, i64 2152393114, i64 2152393775, i64 2152394379, i64 2152394989, i64 2152395771, i64 2152396403, i64 2152397024, i64 2152397808, i64 2152398440, i64 2152399061, i64 2152399491, i64 2152400125, i64 2152400786, i64 2152401211, i64 2152401809, i64 2152402410, i64 2152403020, i64 2152403779, i64 2152404399, i64 2152405009, i64 2152405771, i64 2152406400, i64 2152407021, i64 2152407682, i64 2152408286, i64 2152408896, i64 2152409678, i64 2152410310, i64 2152410931, i64 2152411715, i64 2152412347, i64 2152412968, i64 2152413398, i64 2152414029, i64 2152414687, i64 2152415112, i64 2152415710, i64 2152416311, i64 2152416921, i64 2152417680, i64 2152418300, i64 2152418910, i64 2152419672, i64 2152420301, i64 2152420922, i64 2152421583, i64 2152422187, i64 2152422797, i64 2152423579, i64 2152424211, i64 2152424832, i64 2152425616, i64 2152426248, i64 2152426869, i64 2152427299, i64 2152427627, i64 2152427767, i64 2152427925, i64 2152428375, i64 2152428787, i64 2152428940, i64 2152429094, i64 2152429745, i64 2152430406, i64 2152430831, i64 2152435490, i64 2152436091, i64 2152436701, i64 2152437460, i64 2152438080, i64 2152438690, i64 2152439452, i64 2152440081, i64 2152440702, i64 2152441363, i64 2152441967, i64 2152442577, i64 2152443359, i64 2152443991, i64 2152444612, i64 2152445396, i64 2152446028, i64 2152446649, i64 2152447079, i64 2152447407, i64 2152447547, i64 2152447703, i64 2152448118, i64 2152448660, i64 2152449228, i64 2152449814, i64 2152450404, i64 2152450994, i64 2152451584, i64 2152452183, i64 2152452783, i64 2152453392, i64 2152454003, i64 2152454632, i64 2152455265, i64 2152455719, i64 2152456330, i64 2152456953, i64 2152457440, i64 2152457863, i64 2152458025, i64 2152458641, i64 2152459226, i64 2152459811, i64 2152460396, i64 2152460981, i64 2152461584, i64 2152462191, i64 2152462381, i64 2152462555, i64 2152462967, i64 2152463119, i64 2152463592, i64 2152464197, i64 2152464847, i64 2152465418, i64 2152466004, i64 2152466589, i64 2152467183, i64 2152467756, i64 2152468342, i64 2152468927, i64 2152469521, i64 2152470094, i64 2152470680, i64 2152471265, i64 2152471859, i64 2152472432, i64 2152473018, i64 2152473603, i64 2152474197, i64 2152474779, i64 2152475385, i64 2152475974, i64 2152476586, i64 2152477172, i64 2152477778, i64 2152478367, i64 2152478979, i64 2152479136, i64 2152479627, i64 2152480027, i64 2152480167, i64 2152480593, i64 2152480758, i64 2152480912, i64 2152481533, i64 2152481929, i64 2152482093, i64 2152482562, i64 2152482730, i64 2152487464, i64 2152488040, i64 2152488672, i64 2152489440, i64 2152490037, i64 2152490814, i64 2152491251, i64 2152491858, i64 2152492434, i64 2152493066, i64 2152493834, i64 2152494431, i64 2152495208, i64 2152495645, i64 2152496252, i64 2152496837, i64 2152497471, i64 2152498239, i64 2152498845, i64 2152499624, i64 2152499804, i64 2152499955, i64 2152500607, i64 2152501183, i64 2152501815, i64 2152502583, i64 2152503180, i64 2152503957, i64 2152504394, i64 2152505001, i64 2152505577, i64 2152506209, i64 2152506977, i64 2152507574, i64 2152508351, i64 2152508788, i64 2152509395, i64 2152509980, i64 2152510614, i64 2152511382, i64 2152511988, i64 2152512767, i64 2152512947, i64 2152513099, i64 2152513564, i64 2152514167, i64 2152514817, i64 2152515587, i64 2152516145, i64 2152516731, i64 2152517316, i64 2152517910, i64 2152518501, i64 2152519133, i64 2152520035, i64 2152520614, i64 2152521200, i64 2152521785, i64 2152522379, i64 2152522970, i64 2152523747, i64 2152524184, i64 2152524925, i64 2152525483, i64 2152526069, i64 2152526654, i64 2152527248, i64 2152527839, i64 2152528471, i64 2152529373, i64 2152529952, i64 2152530538, i64 2152531123, i64 2152531717, i64 2152532308, i64 2152533085, i64 2152533522, i64 2152534263, i64 2152534821, i64 2152535407, i64 2152535992, i64 2152536586, i64 2152537186, i64 2152537820, i64 2152538722, i64 2152539301, i64 2152539887, i64 2152540472, i64 2152541066, i64 2152541666, i64 2152542445, i64 2152542625, i64 2152542766, i64 2152543198, i64 2152543801, i64 2152548512, i64 2152549364, i64 2152550100, i64 2152550768, i64 2152551351, i64 2152551937, i64 2152552522, i64 2152553116, i64 2152553707, i64 2152554132, i64 2152554955, i64 2152555691, i64 2152556359, i64 2152556942, i64 2152557528, i64 2152558113, i64 2152558707, i64 2152559298, i64 2152559723, i64 2152560546, i64 2152561282, i64 2152561950, i64 2152562533, i64 2152563119, i64 2152563704, i64 2152564298, i64 2152564907, i64 2152565617, i64 2152566467, i64 2152567203, i64 2152567871, i64 2152568454, i64 2152569040, i64 2152569625, i64 2152570219, i64 2152570810, i64 2152571235, i64 2152572058, i64 2152572794, i64 2152573462, i64 2152574045, i64 2152574631, i64 2152575216, i64 2152575810, i64 2152576401, i64 2152576826, i64 2152577649, i64 2152578385, i64 2152579053, i64 2152579636, i64 2152580222, i64 2152580807, i64 2152581401, i64 2152582010, i64 2152582439, i64 2152583022, i64 2152583655, i64 2152584299, i64 2152584722, i64 2152585273, i64 2152585856, i64 2152586457, i64 2152587076, i64 2152587709, i64 2152588353, i64 2152588776, i64 2152589359, i64 2152589992, i64 2152590636, i64 2152591059, i64 2152591610, i64 2152592193, i64 2152592794, i64 2152593413, i64 2152594046, i64 2152594690, i64 2152594856, i64 2152594996, i64 2152595401, i64 2152595566, i64 2152595720, i64 2152596341, i64 2152596941, i64 2152597677, i64 2152598114, i64 2152598697, i64 2152599433, i64 2152599870, i64 2152600462, i64 2152601209, i64 2152601391, i64 2152601532, i64 2152602130, i64 2152602763, i64 2152603407, i64 2152603830, i64 2152608442, i64 2152609025, i64 2152609626, i64 2152610245, i64 2152610878, i64 2152611522, i64 2152611945, i64 2152612528, i64 2152613161, i64 2152613805, i64 2152614228, i64 2152614779, i64 2152615362, i64 2152615963, i64 2152616582, i64 2152617215, i64 2152617859, i64 2152617995, i64 2152618676, i64 2152619384, i64 2152620084, i64 2152620782, i64 2152621137, i64 2152621275, i64 2152621425}
!16 = !{i64 2152623823, i64 2152623788, i64 2152624197, i64 2152624610, i64 2152625201, i64 2152625802, i64 2152626403, i64 2152627004, i64 2152627434, i64 2152628045, i64 2152628668, i64 2152629084, i64 2152629500, i64 2152630111, i64 2152630734, i64 2152631180, i64 2152631306, i64 2152631602, i64 2152631986, i64 2152632385, i64 2152632778, i64 2152632943, i64 2152633097, i64 2152633267, i64 2152633426, i64 2152633858, i64 2152634469, i64 2152634605, i64 2152635052, i64 2152635464, i64 2152635621, i64 2152635781, i64 2152636432, i64 2152636857, i64 2152637455, i64 2152638056, i64 2152638815, i64 2152639435, i64 2152640197, i64 2152640826, i64 2152641487, i64 2152642091, i64 2152642873, i64 2152643505, i64 2152644289, i64 2152644921, i64 2152645351, i64 2152645985, i64 2152646410, i64 2152647008, i64 2152647609, i64 2152648368, i64 2152648988, i64 2152649750, i64 2152650379, i64 2152651040, i64 2152651644, i64 2152652426, i64 2152653058, i64 2152653842, i64 2152654474, i64 2152654904, i64 2152655538, i64 2152655963, i64 2152656561, i64 2152657162, i64 2152657921, i64 2152658541, i64 2152659303, i64 2152659932, i64 2152660593, i64 2152661197, i64 2152661979, i64 2152662611, i64 2152663395, i64 2152664027, i64 2152664457, i64 2152665088, i64 2152665513, i64 2152666111, i64 2152666712, i64 2152667471, i64 2152668091, i64 2152668853, i64 2152669482, i64 2152674204, i64 2152674808, i64 2152675590, i64 2152676222, i64 2152677006, i64 2152677638, i64 2152678068, i64 2152678396, i64 2152678536, i64 2152678694, i64 2152679144, i64 2152679556, i64 2152679709, i64 2152679863, i64 2152680514, i64 2152680939, i64 2152681537, i64 2152682138, i64 2152682897, i64 2152683517, i64 2152684279, i64 2152684908, i64 2152685569, i64 2152686173, i64 2152686955, i64 2152687587, i64 2152688371, i64 2152689003, i64 2152689433, i64 2152689761, i64 2152689901, i64 2152690057, i64 2152690472, i64 2152691014, i64 2152691600, i64 2152692190, i64 2152692789, i64 2152693398, i64 2152694027, i64 2152694487, i64 2152695092, i64 2152695742, i64 2152696313, i64 2152696899, i64 2152697484, i64 2152698078, i64 2152698651, i64 2152699237, i64 2152699822, i64 2152700416, i64 2152700998, i64 2152701604, i64 2152702193, i64 2152702805, i64 2152703257, i64 2152703860, i64 2152704510, i64 2152705099, i64 2152705593, i64 2152705947, i64 2152706407, i64 2152706761, i64 2152707166, i64 2152707321, i64 2152707749, i64 2152707914, i64 2152708068, i64 2152708824, i64 2152709382, i64 2152709968, i64 2152710553, i64 2152711147, i64 2152711738, i64 2152712370, i64 2152712786, i64 2152713527, i64 2152714085, i64 2152714671, i64 2152715256, i64 2152715850, i64 2152716441, i64 2152717073, i64 2152717489, i64 2152718230, i64 2152718788, i64 2152719374, i64 2152719959, i64 2152720553, i64 2152721153, i64 2152721787, i64 2152721946, i64 2152722087, i64 2152722519, i64 2152723130, i64 2152723753, i64 2152724593, i64 2152725329, i64 2152725997, i64 2152730641, i64 2152731227, i64 2152731812, i64 2152732406, i64 2152732997, i64 2152733422, i64 2152734245, i64 2152734981, i64 2152735649, i64 2152736232, i64 2152736818, i64 2152737403, i64 2152737997, i64 2152738588, i64 2152739013, i64 2152739836, i64 2152740572, i64 2152741240, i64 2152741823, i64 2152742409, i64 2152742994, i64 2152743588, i64 2152744197, i64 2152744626, i64 2152745209, i64 2152745842, i64 2152746486, i64 2152746909, i64 2152747460, i64 2152748043, i64 2152748644, i64 2152749263, i64 2152749896, i64 2152750540, i64 2152750706, i64 2152750846, i64 2152751251, i64 2152751416, i64 2152751570, i64 2152752168, i64 2152752584, i64 2152753167, i64 2152753583, i64 2152754175, i64 2152754336, i64 2152754477, i64 2152754909, i64 2152755520, i64 2152756143, i64 2152756743, i64 2152757376, i64 2152758020, i64 2152758443, i64 2152758994, i64 2152759577, i64 2152760178, i64 2152760797, i64 2152761430, i64 2152762074, i64 2152762210, i64 2152762891, i64 2152763599, i64 2152764299, i64 2152764997, i64 2152765352, i64 2152765490, i64 2152765640}

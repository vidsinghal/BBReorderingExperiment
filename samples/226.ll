; ModuleID = 'samples/226.bc'
source_filename = "kernels/zen/1f/bli_axpyf_zen_int_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }
%struct.__mm256_broadcast_ss_struct = type { float }
%struct.__loadu_ps = type { <8 x float> }
%struct.__storeu_ps = type { <8 x float> }
%struct.func_s = type { [4 x ptr] }
%struct.cntx_s = type { [11 x %struct.blksz_s], [11 x i32], [5 x %struct.func_s], [5 x %struct.func_s], [5 x %struct.mbool_s], [3 x %struct.blksz_s], [11 x ptr], [11 x %struct.blksz_s], [9 x %struct.func_s], [9 x %struct.mbool_s], [5 x %struct.func_s], [14 x %struct.func_s], [32 x %struct.func_s], [32 x %struct.func_s], i32 }
%struct.mbool_s = type { [4 x i8] }
%struct.blksz_s = type { [4 x i64], [4 x i64] }

; Function Attrs: nounwind uwtable
define hidden void @bli_caxpyf_zen_int_4(i32 noundef %conja, i32 noundef %conjx, i64 noundef %m, i64 noundef %b_n, ptr noalias noundef %alpha, ptr noalias noundef %a, i64 noundef %inca, i64 noundef %lda, ptr noalias noundef %x, i64 noundef %incx, ptr noalias noundef %y, i64 noundef %incy, ptr noalias noundef %cntx) #0 {
entry:
  %conja.addr = alloca i32, align 4
  %conjx.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %b_n.addr = alloca i64, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %inca.addr = alloca i64, align 8
  %lda.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca i64, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca i64, align 8
  %cntx.addr = alloca ptr, align 8
  %fuse_fac = alloca i64, align 8
  %i = alloca i64, align 8
  %ymm0 = alloca <8 x float>, align 32
  %ymm1 = alloca <8 x float>, align 32
  %ymm2 = alloca <8 x float>, align 32
  %ymm3 = alloca <8 x float>, align 32
  %ymm4 = alloca <8 x float>, align 32
  %ymm5 = alloca <8 x float>, align 32
  %ymm6 = alloca <8 x float>, align 32
  %ymm7 = alloca <8 x float>, align 32
  %ymm8 = alloca <8 x float>, align 32
  %ymm10 = alloca <8 x float>, align 32
  %ymm12 = alloca <8 x float>, align 32
  %ymm13 = alloca <8 x float>, align 32
  %ap = alloca [4 x ptr], align 16
  %y0 = alloca ptr, align 8
  %chi0 = alloca %struct.scomplex, align 4
  %chi1 = alloca %struct.scomplex, align 4
  %chi2 = alloca %struct.scomplex, align 4
  %chi3 = alloca %struct.scomplex, align 4
  %setPlusOne = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca ptr, align 8
  %a1 = alloca ptr, align 8
  %chi115 = alloca ptr, align 8
  %y1 = alloca ptr, align 8
  %alpha_chi1 = alloca %struct.scomplex, align 4
  %yr = alloca float, align 4
  %yi = alloca float, align 4
  %pchi0 = alloca ptr, align 8
  %pchi1 = alloca ptr, align 8
  %pchi2 = alloca ptr, align 8
  %pchi3 = alloca ptr, align 8
  %yr104 = alloca float, align 4
  %yi112 = alloca float, align 4
  %yr121 = alloca float, align 4
  %yi129 = alloca float, align 4
  %yr138 = alloca float, align 4
  %yi146 = alloca float, align 4
  %yr155 = alloca float, align 4
  %yi163 = alloca float, align 4
  %n1 = alloca i64, align 8
  %n2 = alloca i64, align 8
  %y0c = alloca %struct.scomplex, align 4
  %a0c = alloca %struct.scomplex, align 4
  %a1c = alloca %struct.scomplex, align 4
  %a2c = alloca %struct.scomplex, align 4
  %a3c = alloca %struct.scomplex, align 4
  %y0c360 = alloca %struct.scomplex, align 4
  %a0c361 = alloca %struct.scomplex, align 4
  %a1c363 = alloca %struct.scomplex, align 4
  %a2c365 = alloca %struct.scomplex, align 4
  %a3c367 = alloca %struct.scomplex, align 4
  store i32 %conja, ptr %conja.addr, align 4, !tbaa !4
  store i32 %conjx, ptr %conjx.addr, align 4, !tbaa !4
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store i64 %b_n, ptr %b_n.addr, align 8, !tbaa !7
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !9
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store i64 %inca, ptr %inca.addr, align 8, !tbaa !7
  store i64 %lda, ptr %lda.addr, align 8, !tbaa !7
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store i64 %incx, ptr %incx.addr, align 8, !tbaa !7
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store i64 %incy, ptr %incy.addr, align 8, !tbaa !7
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %fuse_fac) #8
  store i64 4, ptr %fuse_fac, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ymm0) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ymm1) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ymm2) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ymm3) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ymm4) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ymm5) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ymm6) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ymm7) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ymm8) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ymm10) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ymm12) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ymm13) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr %ap) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y0) #8
  %0 = load ptr, ptr %y.addr, align 8, !tbaa !9
  store ptr %0, ptr %y0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %setPlusOne) #8
  store i64 1, ptr %setPlusOne, align 8, !tbaa !7
  %1 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %call = call zeroext i1 @bli_is_conj(i32 noundef %1)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %setPlusOne, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %m.addr, align 8, !tbaa !7
  %3 = load i64, ptr %b_n.addr, align 8, !tbaa !7
  %call1 = call zeroext i1 @bli_zero_dim2(i64 noundef %2, i64 noundef %3)
  br i1 %call1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real = getelementptr inbounds %struct.scomplex, ptr %4, i32 0, i32 0
  %5 = load float, ptr %real, align 4, !tbaa !11
  %cmp = fcmp oeq float %5, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag = getelementptr inbounds %struct.scomplex, ptr %6, i32 0, i32 1
  %7 = load float, ptr %imag, align 4, !tbaa !14
  %cmp2 = fcmp oeq float %7, 0.000000e+00
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %land.lhs.true, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load i64, ptr %b_n.addr, align 8, !tbaa !7
  %9 = load i64, ptr %fuse_fac, align 8, !tbaa !7
  %cmp5 = icmp ne i64 %8, %9
  br i1 %cmp5, label %if.then6, label %if.end40

if.then6:                                         ; preds = %if.end4
  %10 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %cmp7 = icmp eq ptr %10, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then6
  %call9 = call ptr @bli_gks_query_cntx()
  store ptr %call9, ptr %cntx.addr, align 8, !tbaa !9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then6
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8
  %11 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call11 = call ptr @bli_cntx_get_l1v_ker_dt(i32 noundef 1, i32 noundef 3, ptr noundef %11)
  store ptr %call11, ptr %f, align 8, !tbaa !9
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %12 = load i64, ptr %i, align 8, !tbaa !7
  %13 = load i64, ptr %b_n.addr, align 8, !tbaa !7
  %cmp12 = icmp slt i64 %12, %13
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #8
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %15 = load i64, ptr %inca.addr, align 8, !tbaa !7
  %mul = mul nsw i64 0, %15
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %14, i64 %mul
  %16 = load i64, ptr %i, align 8, !tbaa !7
  %17 = load i64, ptr %lda.addr, align 8, !tbaa !7
  %mul13 = mul nsw i64 %16, %17
  %add.ptr14 = getelementptr inbounds %struct.scomplex, ptr %add.ptr, i64 %mul13
  store ptr %add.ptr14, ptr %a1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %chi115) #8
  %18 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %19 = load i64, ptr %i, align 8, !tbaa !7
  %20 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul16 = mul nsw i64 %19, %20
  %add.ptr17 = getelementptr inbounds %struct.scomplex, ptr %18, i64 %mul16
  store ptr %add.ptr17, ptr %chi115, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %y1) #8
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul18 = mul nsw i64 0, %22
  %add.ptr19 = getelementptr inbounds %struct.scomplex, ptr %21, i64 %mul18
  store ptr %add.ptr19, ptr %y1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha_chi1) #8
  %23 = load ptr, ptr %chi115, align 8, !tbaa !9
  %real20 = getelementptr inbounds %struct.scomplex, ptr %23, i32 0, i32 0
  %24 = load float, ptr %real20, align 4, !tbaa !11
  %real21 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 0
  store float %24, ptr %real21, align 4, !tbaa !11
  %25 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call22 = call zeroext i1 @bli_is_conj(i32 noundef %25)
  br i1 %call22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %26 = load ptr, ptr %chi115, align 8, !tbaa !9
  %imag23 = getelementptr inbounds %struct.scomplex, ptr %26, i32 0, i32 1
  %27 = load float, ptr %imag23, align 4, !tbaa !14
  %fneg = fneg float %27
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %28 = load ptr, ptr %chi115, align 8, !tbaa !9
  %imag24 = getelementptr inbounds %struct.scomplex, ptr %28, i32 0, i32 1
  %29 = load float, ptr %imag24, align 4, !tbaa !14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %fneg, %cond.true ], [ %29, %cond.false ]
  %imag25 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 1
  store float %cond, ptr %imag25, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr) #8
  %30 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real26 = getelementptr inbounds %struct.scomplex, ptr %30, i32 0, i32 0
  %31 = load float, ptr %real26, align 4, !tbaa !11
  %real27 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 0
  %32 = load float, ptr %real27, align 4, !tbaa !11
  %33 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag29 = getelementptr inbounds %struct.scomplex, ptr %33, i32 0, i32 1
  %34 = load float, ptr %imag29, align 4, !tbaa !14
  %imag30 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 1
  %35 = load float, ptr %imag30, align 4, !tbaa !14
  %mul31 = fmul float %34, %35
  %neg = fneg float %mul31
  %36 = call float @llvm.fmuladd.f32(float %31, float %32, float %neg)
  store float %36, ptr %yr, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi) #8
  %37 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag32 = getelementptr inbounds %struct.scomplex, ptr %37, i32 0, i32 1
  %38 = load float, ptr %imag32, align 4, !tbaa !14
  %real33 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 0
  %39 = load float, ptr %real33, align 4, !tbaa !11
  %40 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real35 = getelementptr inbounds %struct.scomplex, ptr %40, i32 0, i32 0
  %41 = load float, ptr %real35, align 4, !tbaa !11
  %imag36 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 1
  %42 = load float, ptr %imag36, align 4, !tbaa !14
  %mul37 = fmul float %41, %42
  %43 = call float @llvm.fmuladd.f32(float %38, float %39, float %mul37)
  store float %43, ptr %yi, align 4, !tbaa !15
  %44 = load float, ptr %yr, align 4, !tbaa !15
  %real38 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 0
  store float %44, ptr %real38, align 4, !tbaa !11
  %45 = load float, ptr %yi, align 4, !tbaa !15
  %imag39 = getelementptr inbounds %struct.scomplex, ptr %alpha_chi1, i32 0, i32 1
  store float %45, ptr %imag39, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr) #8
  %46 = load ptr, ptr %f, align 8, !tbaa !9
  %47 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %48 = load i64, ptr %m.addr, align 8, !tbaa !7
  %49 = load ptr, ptr %a1, align 8, !tbaa !9
  %50 = load i64, ptr %inca.addr, align 8, !tbaa !7
  %51 = load ptr, ptr %y1, align 8, !tbaa !9
  %52 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %53 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  call void %46(i32 noundef %47, i64 noundef %48, ptr noundef %alpha_chi1, ptr noundef %49, i64 noundef %50, ptr noundef %51, i64 noundef %52, ptr noundef %53)
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha_chi1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi115) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %54 = load i64, ptr %i, align 8, !tbaa !7
  %inc = add nsw i64 %54, 1
  store i64 %inc, ptr %i, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end4
  %55 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call41 = call zeroext i1 @bli_is_noconj(i32 noundef %55)
  br i1 %call41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end40
  %56 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %57 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul43 = mul nsw i64 0, %57
  %add.ptr44 = getelementptr inbounds %struct.scomplex, ptr %56, i64 %mul43
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %chi0, ptr align 4 %add.ptr44, i64 8, i1 false), !tbaa.struct !16
  %58 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %59 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul45 = mul nsw i64 1, %59
  %add.ptr46 = getelementptr inbounds %struct.scomplex, ptr %58, i64 %mul45
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %chi1, ptr align 4 %add.ptr46, i64 8, i1 false), !tbaa.struct !16
  %60 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %61 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul47 = mul nsw i64 2, %61
  %add.ptr48 = getelementptr inbounds %struct.scomplex, ptr %60, i64 %mul47
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %chi2, ptr align 4 %add.ptr48, i64 8, i1 false), !tbaa.struct !16
  %62 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %63 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul49 = mul nsw i64 3, %63
  %add.ptr50 = getelementptr inbounds %struct.scomplex, ptr %62, i64 %mul49
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %chi3, ptr align 4 %add.ptr50, i64 8, i1 false), !tbaa.struct !16
  br label %if.end103

if.else:                                          ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 8, ptr %pchi0) #8
  %64 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %65 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul51 = mul nsw i64 0, %65
  %add.ptr52 = getelementptr inbounds %struct.scomplex, ptr %64, i64 %mul51
  store ptr %add.ptr52, ptr %pchi0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pchi1) #8
  %66 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %67 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul53 = mul nsw i64 1, %67
  %add.ptr54 = getelementptr inbounds %struct.scomplex, ptr %66, i64 %mul53
  store ptr %add.ptr54, ptr %pchi1, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pchi2) #8
  %68 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %69 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul55 = mul nsw i64 2, %69
  %add.ptr56 = getelementptr inbounds %struct.scomplex, ptr %68, i64 %mul55
  store ptr %add.ptr56, ptr %pchi2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pchi3) #8
  %70 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %71 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul57 = mul nsw i64 3, %71
  %add.ptr58 = getelementptr inbounds %struct.scomplex, ptr %70, i64 %mul57
  store ptr %add.ptr58, ptr %pchi3, align 8, !tbaa !9
  %72 = load ptr, ptr %pchi0, align 8, !tbaa !9
  %real59 = getelementptr inbounds %struct.scomplex, ptr %72, i32 0, i32 0
  %73 = load float, ptr %real59, align 4, !tbaa !11
  %real60 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 0
  store float %73, ptr %real60, align 4, !tbaa !11
  %74 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call61 = call zeroext i1 @bli_is_conj(i32 noundef %74)
  br i1 %call61, label %cond.true62, label %cond.false65

cond.true62:                                      ; preds = %if.else
  %75 = load ptr, ptr %pchi0, align 8, !tbaa !9
  %imag63 = getelementptr inbounds %struct.scomplex, ptr %75, i32 0, i32 1
  %76 = load float, ptr %imag63, align 4, !tbaa !14
  %fneg64 = fneg float %76
  br label %cond.end67

cond.false65:                                     ; preds = %if.else
  %77 = load ptr, ptr %pchi0, align 8, !tbaa !9
  %imag66 = getelementptr inbounds %struct.scomplex, ptr %77, i32 0, i32 1
  %78 = load float, ptr %imag66, align 4, !tbaa !14
  br label %cond.end67

cond.end67:                                       ; preds = %cond.false65, %cond.true62
  %cond68 = phi float [ %fneg64, %cond.true62 ], [ %78, %cond.false65 ]
  %imag69 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 1
  store float %cond68, ptr %imag69, align 4, !tbaa !14
  %79 = load ptr, ptr %pchi1, align 8, !tbaa !9
  %real70 = getelementptr inbounds %struct.scomplex, ptr %79, i32 0, i32 0
  %80 = load float, ptr %real70, align 4, !tbaa !11
  %real71 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 0
  store float %80, ptr %real71, align 4, !tbaa !11
  %81 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call72 = call zeroext i1 @bli_is_conj(i32 noundef %81)
  br i1 %call72, label %cond.true73, label %cond.false76

cond.true73:                                      ; preds = %cond.end67
  %82 = load ptr, ptr %pchi1, align 8, !tbaa !9
  %imag74 = getelementptr inbounds %struct.scomplex, ptr %82, i32 0, i32 1
  %83 = load float, ptr %imag74, align 4, !tbaa !14
  %fneg75 = fneg float %83
  br label %cond.end78

cond.false76:                                     ; preds = %cond.end67
  %84 = load ptr, ptr %pchi1, align 8, !tbaa !9
  %imag77 = getelementptr inbounds %struct.scomplex, ptr %84, i32 0, i32 1
  %85 = load float, ptr %imag77, align 4, !tbaa !14
  br label %cond.end78

cond.end78:                                       ; preds = %cond.false76, %cond.true73
  %cond79 = phi float [ %fneg75, %cond.true73 ], [ %85, %cond.false76 ]
  %imag80 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 1
  store float %cond79, ptr %imag80, align 4, !tbaa !14
  %86 = load ptr, ptr %pchi2, align 8, !tbaa !9
  %real81 = getelementptr inbounds %struct.scomplex, ptr %86, i32 0, i32 0
  %87 = load float, ptr %real81, align 4, !tbaa !11
  %real82 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 0
  store float %87, ptr %real82, align 4, !tbaa !11
  %88 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call83 = call zeroext i1 @bli_is_conj(i32 noundef %88)
  br i1 %call83, label %cond.true84, label %cond.false87

cond.true84:                                      ; preds = %cond.end78
  %89 = load ptr, ptr %pchi2, align 8, !tbaa !9
  %imag85 = getelementptr inbounds %struct.scomplex, ptr %89, i32 0, i32 1
  %90 = load float, ptr %imag85, align 4, !tbaa !14
  %fneg86 = fneg float %90
  br label %cond.end89

cond.false87:                                     ; preds = %cond.end78
  %91 = load ptr, ptr %pchi2, align 8, !tbaa !9
  %imag88 = getelementptr inbounds %struct.scomplex, ptr %91, i32 0, i32 1
  %92 = load float, ptr %imag88, align 4, !tbaa !14
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false87, %cond.true84
  %cond90 = phi float [ %fneg86, %cond.true84 ], [ %92, %cond.false87 ]
  %imag91 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 1
  store float %cond90, ptr %imag91, align 4, !tbaa !14
  %93 = load ptr, ptr %pchi3, align 8, !tbaa !9
  %real92 = getelementptr inbounds %struct.scomplex, ptr %93, i32 0, i32 0
  %94 = load float, ptr %real92, align 4, !tbaa !11
  %real93 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 0
  store float %94, ptr %real93, align 4, !tbaa !11
  %95 = load i32, ptr %conjx.addr, align 4, !tbaa !4
  %call94 = call zeroext i1 @bli_is_conj(i32 noundef %95)
  br i1 %call94, label %cond.true95, label %cond.false98

cond.true95:                                      ; preds = %cond.end89
  %96 = load ptr, ptr %pchi3, align 8, !tbaa !9
  %imag96 = getelementptr inbounds %struct.scomplex, ptr %96, i32 0, i32 1
  %97 = load float, ptr %imag96, align 4, !tbaa !14
  %fneg97 = fneg float %97
  br label %cond.end100

cond.false98:                                     ; preds = %cond.end89
  %98 = load ptr, ptr %pchi3, align 8, !tbaa !9
  %imag99 = getelementptr inbounds %struct.scomplex, ptr %98, i32 0, i32 1
  %99 = load float, ptr %imag99, align 4, !tbaa !14
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false98, %cond.true95
  %cond101 = phi float [ %fneg97, %cond.true95 ], [ %99, %cond.false98 ]
  %imag102 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 1
  store float %cond101, ptr %imag102, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %pchi3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pchi2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pchi1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %pchi0) #8
  br label %if.end103

if.end103:                                        ; preds = %cond.end100, %if.then42
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr104) #8
  %100 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real105 = getelementptr inbounds %struct.scomplex, ptr %100, i32 0, i32 0
  %101 = load float, ptr %real105, align 4, !tbaa !11
  %real106 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 0
  %102 = load float, ptr %real106, align 4, !tbaa !11
  %103 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag108 = getelementptr inbounds %struct.scomplex, ptr %103, i32 0, i32 1
  %104 = load float, ptr %imag108, align 4, !tbaa !14
  %imag109 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 1
  %105 = load float, ptr %imag109, align 4, !tbaa !14
  %mul110 = fmul float %104, %105
  %neg111 = fneg float %mul110
  %106 = call float @llvm.fmuladd.f32(float %101, float %102, float %neg111)
  store float %106, ptr %yr104, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi112) #8
  %107 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag113 = getelementptr inbounds %struct.scomplex, ptr %107, i32 0, i32 1
  %108 = load float, ptr %imag113, align 4, !tbaa !14
  %real114 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 0
  %109 = load float, ptr %real114, align 4, !tbaa !11
  %110 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real116 = getelementptr inbounds %struct.scomplex, ptr %110, i32 0, i32 0
  %111 = load float, ptr %real116, align 4, !tbaa !11
  %imag117 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 1
  %112 = load float, ptr %imag117, align 4, !tbaa !14
  %mul118 = fmul float %111, %112
  %113 = call float @llvm.fmuladd.f32(float %108, float %109, float %mul118)
  store float %113, ptr %yi112, align 4, !tbaa !15
  %114 = load float, ptr %yr104, align 4, !tbaa !15
  %real119 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 0
  store float %114, ptr %real119, align 4, !tbaa !11
  %115 = load float, ptr %yi112, align 4, !tbaa !15
  %imag120 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 1
  store float %115, ptr %imag120, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi112) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr104) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr121) #8
  %116 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real122 = getelementptr inbounds %struct.scomplex, ptr %116, i32 0, i32 0
  %117 = load float, ptr %real122, align 4, !tbaa !11
  %real123 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 0
  %118 = load float, ptr %real123, align 4, !tbaa !11
  %119 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag125 = getelementptr inbounds %struct.scomplex, ptr %119, i32 0, i32 1
  %120 = load float, ptr %imag125, align 4, !tbaa !14
  %imag126 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 1
  %121 = load float, ptr %imag126, align 4, !tbaa !14
  %mul127 = fmul float %120, %121
  %neg128 = fneg float %mul127
  %122 = call float @llvm.fmuladd.f32(float %117, float %118, float %neg128)
  store float %122, ptr %yr121, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi129) #8
  %123 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag130 = getelementptr inbounds %struct.scomplex, ptr %123, i32 0, i32 1
  %124 = load float, ptr %imag130, align 4, !tbaa !14
  %real131 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 0
  %125 = load float, ptr %real131, align 4, !tbaa !11
  %126 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real133 = getelementptr inbounds %struct.scomplex, ptr %126, i32 0, i32 0
  %127 = load float, ptr %real133, align 4, !tbaa !11
  %imag134 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 1
  %128 = load float, ptr %imag134, align 4, !tbaa !14
  %mul135 = fmul float %127, %128
  %129 = call float @llvm.fmuladd.f32(float %124, float %125, float %mul135)
  store float %129, ptr %yi129, align 4, !tbaa !15
  %130 = load float, ptr %yr121, align 4, !tbaa !15
  %real136 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 0
  store float %130, ptr %real136, align 4, !tbaa !11
  %131 = load float, ptr %yi129, align 4, !tbaa !15
  %imag137 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 1
  store float %131, ptr %imag137, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi129) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr121) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr138) #8
  %132 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real139 = getelementptr inbounds %struct.scomplex, ptr %132, i32 0, i32 0
  %133 = load float, ptr %real139, align 4, !tbaa !11
  %real140 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 0
  %134 = load float, ptr %real140, align 4, !tbaa !11
  %135 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag142 = getelementptr inbounds %struct.scomplex, ptr %135, i32 0, i32 1
  %136 = load float, ptr %imag142, align 4, !tbaa !14
  %imag143 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 1
  %137 = load float, ptr %imag143, align 4, !tbaa !14
  %mul144 = fmul float %136, %137
  %neg145 = fneg float %mul144
  %138 = call float @llvm.fmuladd.f32(float %133, float %134, float %neg145)
  store float %138, ptr %yr138, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi146) #8
  %139 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag147 = getelementptr inbounds %struct.scomplex, ptr %139, i32 0, i32 1
  %140 = load float, ptr %imag147, align 4, !tbaa !14
  %real148 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 0
  %141 = load float, ptr %real148, align 4, !tbaa !11
  %142 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real150 = getelementptr inbounds %struct.scomplex, ptr %142, i32 0, i32 0
  %143 = load float, ptr %real150, align 4, !tbaa !11
  %imag151 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 1
  %144 = load float, ptr %imag151, align 4, !tbaa !14
  %mul152 = fmul float %143, %144
  %145 = call float @llvm.fmuladd.f32(float %140, float %141, float %mul152)
  store float %145, ptr %yi146, align 4, !tbaa !15
  %146 = load float, ptr %yr138, align 4, !tbaa !15
  %real153 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 0
  store float %146, ptr %real153, align 4, !tbaa !11
  %147 = load float, ptr %yi146, align 4, !tbaa !15
  %imag154 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 1
  store float %147, ptr %imag154, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi146) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr138) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %yr155) #8
  %148 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real156 = getelementptr inbounds %struct.scomplex, ptr %148, i32 0, i32 0
  %149 = load float, ptr %real156, align 4, !tbaa !11
  %real157 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 0
  %150 = load float, ptr %real157, align 4, !tbaa !11
  %151 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag159 = getelementptr inbounds %struct.scomplex, ptr %151, i32 0, i32 1
  %152 = load float, ptr %imag159, align 4, !tbaa !14
  %imag160 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 1
  %153 = load float, ptr %imag160, align 4, !tbaa !14
  %mul161 = fmul float %152, %153
  %neg162 = fneg float %mul161
  %154 = call float @llvm.fmuladd.f32(float %149, float %150, float %neg162)
  store float %154, ptr %yr155, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %yi163) #8
  %155 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %imag164 = getelementptr inbounds %struct.scomplex, ptr %155, i32 0, i32 1
  %156 = load float, ptr %imag164, align 4, !tbaa !14
  %real165 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 0
  %157 = load float, ptr %real165, align 4, !tbaa !11
  %158 = load ptr, ptr %alpha.addr, align 8, !tbaa !9
  %real167 = getelementptr inbounds %struct.scomplex, ptr %158, i32 0, i32 0
  %159 = load float, ptr %real167, align 4, !tbaa !11
  %imag168 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 1
  %160 = load float, ptr %imag168, align 4, !tbaa !14
  %mul169 = fmul float %159, %160
  %161 = call float @llvm.fmuladd.f32(float %156, float %157, float %mul169)
  store float %161, ptr %yi163, align 4, !tbaa !15
  %162 = load float, ptr %yr155, align 4, !tbaa !15
  %real170 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 0
  store float %162, ptr %real170, align 4, !tbaa !11
  %163 = load float, ptr %yi163, align 4, !tbaa !15
  %imag171 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 1
  store float %163, ptr %imag171, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 4, ptr %yi163) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %yr155) #8
  %164 = load i64, ptr %lda.addr, align 8, !tbaa !7
  %mul172 = mul nsw i64 %164, 2
  store i64 %mul172, ptr %lda.addr, align 8, !tbaa !7
  %165 = load i64, ptr %incx.addr, align 8, !tbaa !7
  %mul173 = mul nsw i64 %165, 2
  store i64 %mul173, ptr %incx.addr, align 8, !tbaa !7
  %166 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %mul174 = mul nsw i64 %166, 2
  store i64 %mul174, ptr %incy.addr, align 8, !tbaa !7
  %167 = load i64, ptr %inca.addr, align 8, !tbaa !7
  %mul175 = mul nsw i64 %167, 2
  store i64 %mul175, ptr %inca.addr, align 8, !tbaa !7
  %168 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 0
  store ptr %168, ptr %arrayidx, align 16, !tbaa !9
  %169 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %170 = load i64, ptr %lda.addr, align 8, !tbaa !7
  %add.ptr176 = getelementptr inbounds float, ptr %169, i64 %170
  %arrayidx177 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 1
  store ptr %add.ptr176, ptr %arrayidx177, align 8, !tbaa !9
  %arrayidx178 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 1
  %171 = load ptr, ptr %arrayidx178, align 8, !tbaa !9
  %172 = load i64, ptr %lda.addr, align 8, !tbaa !7
  %add.ptr179 = getelementptr inbounds float, ptr %171, i64 %172
  %arrayidx180 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 2
  store ptr %add.ptr179, ptr %arrayidx180, align 16, !tbaa !9
  %arrayidx181 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 2
  %173 = load ptr, ptr %arrayidx181, align 16, !tbaa !9
  %174 = load i64, ptr %lda.addr, align 8, !tbaa !7
  %add.ptr182 = getelementptr inbounds float, ptr %173, i64 %174
  %arrayidx183 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 3
  store ptr %add.ptr182, ptr %arrayidx183, align 8, !tbaa !9
  %175 = load i64, ptr %inca.addr, align 8, !tbaa !7
  %cmp184 = icmp eq i64 %175, 2
  br i1 %cmp184, label %land.lhs.true185, label %if.else354

land.lhs.true185:                                 ; preds = %if.end103
  %176 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %cmp186 = icmp eq i64 %176, 2
  br i1 %cmp186, label %if.then187, label %if.else354

if.then187:                                       ; preds = %land.lhs.true185
  call void @llvm.lifetime.start.p0(i64 8, ptr %n1) #8
  %177 = load i64, ptr %m.addr, align 8, !tbaa !7
  %div = sdiv i64 %177, 4
  store i64 %div, ptr %n1, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %n2) #8
  %178 = load i64, ptr %m.addr, align 8, !tbaa !7
  %rem = srem i64 %178, 4
  store i64 %rem, ptr %n2, align 8, !tbaa !7
  %call188 = call <8 x float> @_mm256_setzero_ps()
  store <8 x float> %call188, ptr %ymm12, align 32, !tbaa !4
  %call189 = call <8 x float> @_mm256_setzero_ps()
  store <8 x float> %call189, ptr %ymm13, align 32, !tbaa !4
  %real190 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 0
  %call191 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %real190)
  store <8 x float> %call191, ptr %ymm0, align 32, !tbaa !4
  %imag192 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 1
  %call193 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %imag192)
  store <8 x float> %call193, ptr %ymm1, align 32, !tbaa !4
  %real194 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 0
  %call195 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %real194)
  store <8 x float> %call195, ptr %ymm2, align 32, !tbaa !4
  %imag196 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 1
  %call197 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %imag196)
  store <8 x float> %call197, ptr %ymm3, align 32, !tbaa !4
  %real198 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 0
  %call199 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %real198)
  store <8 x float> %call199, ptr %ymm4, align 32, !tbaa !4
  %imag200 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 1
  %call201 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %imag200)
  store <8 x float> %call201, ptr %ymm5, align 32, !tbaa !4
  %real202 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 0
  %call203 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %real202)
  store <8 x float> %call203, ptr %ymm6, align 32, !tbaa !4
  %imag204 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 1
  %call205 = call <8 x float> @_mm256_broadcast_ss(ptr noundef %imag204)
  store <8 x float> %call205, ptr %ymm7, align 32, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond206

for.cond206:                                      ; preds = %for.inc249, %if.then187
  %179 = load i64, ptr %i, align 8, !tbaa !7
  %180 = load i64, ptr %n1, align 8, !tbaa !7
  %cmp207 = icmp slt i64 %179, %180
  br i1 %cmp207, label %for.body208, label %for.end251

for.body208:                                      ; preds = %for.cond206
  %arrayidx209 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 0
  %181 = load ptr, ptr %arrayidx209, align 16, !tbaa !9
  %add.ptr210 = getelementptr inbounds float, ptr %181, i64 0
  %call211 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr210)
  store <8 x float> %call211, ptr %ymm8, align 32, !tbaa !4
  %arrayidx212 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 1
  %182 = load ptr, ptr %arrayidx212, align 8, !tbaa !9
  %add.ptr213 = getelementptr inbounds float, ptr %182, i64 0
  %call214 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr213)
  store <8 x float> %call214, ptr %ymm10, align 32, !tbaa !4
  %183 = load <8 x float>, ptr %ymm8, align 32, !tbaa !4
  %184 = load <8 x float>, ptr %ymm0, align 32, !tbaa !4
  %call215 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %183, <8 x float> noundef %184)
  store <8 x float> %call215, ptr %ymm12, align 32, !tbaa !4
  %185 = load <8 x float>, ptr %ymm8, align 32, !tbaa !4
  %186 = load <8 x float>, ptr %ymm1, align 32, !tbaa !4
  %call216 = call <8 x float> @_mm256_mul_ps(<8 x float> noundef %185, <8 x float> noundef %186)
  store <8 x float> %call216, ptr %ymm13, align 32, !tbaa !4
  %187 = load <8 x float>, ptr %ymm10, align 32, !tbaa !4
  %188 = load <8 x float>, ptr %ymm2, align 32, !tbaa !4
  %189 = load <8 x float>, ptr %ymm12, align 32, !tbaa !4
  %call217 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %187, <8 x float> noundef %188, <8 x float> noundef %189)
  store <8 x float> %call217, ptr %ymm12, align 32, !tbaa !4
  %190 = load <8 x float>, ptr %ymm10, align 32, !tbaa !4
  %191 = load <8 x float>, ptr %ymm3, align 32, !tbaa !4
  %192 = load <8 x float>, ptr %ymm13, align 32, !tbaa !4
  %call218 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %190, <8 x float> noundef %191, <8 x float> noundef %192)
  store <8 x float> %call218, ptr %ymm13, align 32, !tbaa !4
  %arrayidx219 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 2
  %193 = load ptr, ptr %arrayidx219, align 16, !tbaa !9
  %add.ptr220 = getelementptr inbounds float, ptr %193, i64 0
  %call221 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr220)
  store <8 x float> %call221, ptr %ymm8, align 32, !tbaa !4
  %arrayidx222 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 3
  %194 = load ptr, ptr %arrayidx222, align 8, !tbaa !9
  %add.ptr223 = getelementptr inbounds float, ptr %194, i64 0
  %call224 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr223)
  store <8 x float> %call224, ptr %ymm10, align 32, !tbaa !4
  %195 = load <8 x float>, ptr %ymm8, align 32, !tbaa !4
  %196 = load <8 x float>, ptr %ymm4, align 32, !tbaa !4
  %197 = load <8 x float>, ptr %ymm12, align 32, !tbaa !4
  %call225 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %195, <8 x float> noundef %196, <8 x float> noundef %197)
  store <8 x float> %call225, ptr %ymm12, align 32, !tbaa !4
  %198 = load <8 x float>, ptr %ymm8, align 32, !tbaa !4
  %199 = load <8 x float>, ptr %ymm5, align 32, !tbaa !4
  %200 = load <8 x float>, ptr %ymm13, align 32, !tbaa !4
  %call226 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %198, <8 x float> noundef %199, <8 x float> noundef %200)
  store <8 x float> %call226, ptr %ymm13, align 32, !tbaa !4
  %201 = load <8 x float>, ptr %ymm10, align 32, !tbaa !4
  %202 = load <8 x float>, ptr %ymm6, align 32, !tbaa !4
  %203 = load <8 x float>, ptr %ymm12, align 32, !tbaa !4
  %call227 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %201, <8 x float> noundef %202, <8 x float> noundef %203)
  store <8 x float> %call227, ptr %ymm12, align 32, !tbaa !4
  %204 = load <8 x float>, ptr %ymm10, align 32, !tbaa !4
  %205 = load <8 x float>, ptr %ymm7, align 32, !tbaa !4
  %206 = load <8 x float>, ptr %ymm13, align 32, !tbaa !4
  %call228 = call <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %204, <8 x float> noundef %205, <8 x float> noundef %206)
  store <8 x float> %call228, ptr %ymm13, align 32, !tbaa !4
  %207 = load ptr, ptr %y0, align 8, !tbaa !9
  %add.ptr229 = getelementptr inbounds float, ptr %207, i64 0
  %call230 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr229)
  store <8 x float> %call230, ptr %ymm10, align 32, !tbaa !4
  %208 = load i32, ptr %conja.addr, align 4, !tbaa !4
  %call231 = call zeroext i1 @bli_is_noconj(i32 noundef %208)
  br i1 %call231, label %if.then232, label %if.else234

if.then232:                                       ; preds = %for.body208
  %209 = load <8 x float>, ptr %ymm13, align 32, !tbaa !4
  %permil = shufflevector <8 x float> %209, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x float> %permil, ptr %ymm13, align 32, !tbaa !4
  %210 = load <8 x float>, ptr %ymm12, align 32, !tbaa !4
  %211 = load <8 x float>, ptr %ymm13, align 32, !tbaa !4
  %call233 = call <8 x float> @_mm256_addsub_ps(<8 x float> noundef %210, <8 x float> noundef %211)
  store <8 x float> %call233, ptr %ymm8, align 32, !tbaa !4
  br label %if.end238

if.else234:                                       ; preds = %for.body208
  %212 = load <8 x float>, ptr %ymm12, align 32, !tbaa !4
  %permil235 = shufflevector <8 x float> %212, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x float> %permil235, ptr %ymm12, align 32, !tbaa !4
  %213 = load <8 x float>, ptr %ymm13, align 32, !tbaa !4
  %214 = load <8 x float>, ptr %ymm12, align 32, !tbaa !4
  %call236 = call <8 x float> @_mm256_addsub_ps(<8 x float> noundef %213, <8 x float> noundef %214)
  store <8 x float> %call236, ptr %ymm8, align 32, !tbaa !4
  %215 = load <8 x float>, ptr %ymm8, align 32, !tbaa !4
  %permil237 = shufflevector <8 x float> %215, <8 x float> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x float> %permil237, ptr %ymm8, align 32, !tbaa !4
  br label %if.end238

if.end238:                                        ; preds = %if.else234, %if.then232
  %216 = load <8 x float>, ptr %ymm8, align 32, !tbaa !4
  %217 = load <8 x float>, ptr %ymm10, align 32, !tbaa !4
  %call239 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %216, <8 x float> noundef %217)
  store <8 x float> %call239, ptr %ymm12, align 32, !tbaa !4
  %218 = load ptr, ptr %y0, align 8, !tbaa !9
  %219 = load <8 x float>, ptr %ymm12, align 32, !tbaa !4
  call void @_mm256_storeu_ps(ptr noundef %218, <8 x float> noundef %219)
  %220 = load ptr, ptr %y0, align 8, !tbaa !9
  %add.ptr240 = getelementptr inbounds float, ptr %220, i64 8
  store ptr %add.ptr240, ptr %y0, align 8, !tbaa !9
  %arrayidx241 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 0
  %221 = load ptr, ptr %arrayidx241, align 16, !tbaa !9
  %add.ptr242 = getelementptr inbounds float, ptr %221, i64 8
  store ptr %add.ptr242, ptr %arrayidx241, align 16, !tbaa !9
  %arrayidx243 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 1
  %222 = load ptr, ptr %arrayidx243, align 8, !tbaa !9
  %add.ptr244 = getelementptr inbounds float, ptr %222, i64 8
  store ptr %add.ptr244, ptr %arrayidx243, align 8, !tbaa !9
  %arrayidx245 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 2
  %223 = load ptr, ptr %arrayidx245, align 16, !tbaa !9
  %add.ptr246 = getelementptr inbounds float, ptr %223, i64 8
  store ptr %add.ptr246, ptr %arrayidx245, align 16, !tbaa !9
  %arrayidx247 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 3
  %224 = load ptr, ptr %arrayidx247, align 8, !tbaa !9
  %add.ptr248 = getelementptr inbounds float, ptr %224, i64 8
  store ptr %add.ptr248, ptr %arrayidx247, align 8, !tbaa !9
  br label %for.inc249

for.inc249:                                       ; preds = %if.end238
  %225 = load i64, ptr %i, align 8, !tbaa !7
  %inc250 = add nsw i64 %225, 1
  store i64 %inc250, ptr %i, align 8, !tbaa !7
  br label %for.cond206

for.end251:                                       ; preds = %for.cond206
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond252

for.cond252:                                      ; preds = %for.inc351, %for.end251
  %226 = load i64, ptr %i, align 8, !tbaa !7
  %add = add nsw i64 %226, 0
  %227 = load i64, ptr %n2, align 8, !tbaa !7
  %cmp253 = icmp slt i64 %add, %227
  br i1 %cmp253, label %for.body254, label %for.end353

for.body254:                                      ; preds = %for.cond252
  call void @llvm.lifetime.start.p0(i64 8, ptr %y0c) #8
  %228 = load ptr, ptr %y0, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y0c, ptr align 4 %228, i64 8, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0c) #8
  %arrayidx255 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 0
  %229 = load ptr, ptr %arrayidx255, align 16, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a0c, ptr align 4 %229, i64 8, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1c) #8
  %arrayidx256 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 1
  %230 = load ptr, ptr %arrayidx256, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a1c, ptr align 4 %230, i64 8, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %a2c) #8
  %arrayidx257 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 2
  %231 = load ptr, ptr %arrayidx257, align 16, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a2c, ptr align 4 %231, i64 8, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %a3c) #8
  %arrayidx258 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 3
  %232 = load ptr, ptr %arrayidx258, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a3c, ptr align 4 %232, i64 8, i1 false), !tbaa.struct !16
  %real259 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 0
  %233 = load float, ptr %real259, align 4, !tbaa !11
  %real260 = getelementptr inbounds %struct.scomplex, ptr %a0c, i32 0, i32 0
  %234 = load float, ptr %real260, align 4, !tbaa !11
  %imag262 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 1
  %235 = load float, ptr %imag262, align 4, !tbaa !14
  %imag263 = getelementptr inbounds %struct.scomplex, ptr %a0c, i32 0, i32 1
  %236 = load float, ptr %imag263, align 4, !tbaa !14
  %mul264 = fmul float %235, %236
  %237 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv = sitofp i64 %237 to float
  %mul265 = fmul float %mul264, %conv
  %neg266 = fneg float %mul265
  %238 = call float @llvm.fmuladd.f32(float %233, float %234, float %neg266)
  %real267 = getelementptr inbounds %struct.scomplex, ptr %y0c, i32 0, i32 0
  %239 = load float, ptr %real267, align 4, !tbaa !11
  %add268 = fadd float %239, %238
  store float %add268, ptr %real267, align 4, !tbaa !11
  %real269 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 0
  %240 = load float, ptr %real269, align 4, !tbaa !11
  %real270 = getelementptr inbounds %struct.scomplex, ptr %a1c, i32 0, i32 0
  %241 = load float, ptr %real270, align 4, !tbaa !11
  %imag272 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 1
  %242 = load float, ptr %imag272, align 4, !tbaa !14
  %imag273 = getelementptr inbounds %struct.scomplex, ptr %a1c, i32 0, i32 1
  %243 = load float, ptr %imag273, align 4, !tbaa !14
  %mul274 = fmul float %242, %243
  %244 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv275 = sitofp i64 %244 to float
  %mul276 = fmul float %mul274, %conv275
  %neg277 = fneg float %mul276
  %245 = call float @llvm.fmuladd.f32(float %240, float %241, float %neg277)
  %real278 = getelementptr inbounds %struct.scomplex, ptr %y0c, i32 0, i32 0
  %246 = load float, ptr %real278, align 4, !tbaa !11
  %add279 = fadd float %246, %245
  store float %add279, ptr %real278, align 4, !tbaa !11
  %real280 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 0
  %247 = load float, ptr %real280, align 4, !tbaa !11
  %real281 = getelementptr inbounds %struct.scomplex, ptr %a2c, i32 0, i32 0
  %248 = load float, ptr %real281, align 4, !tbaa !11
  %imag283 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 1
  %249 = load float, ptr %imag283, align 4, !tbaa !14
  %imag284 = getelementptr inbounds %struct.scomplex, ptr %a2c, i32 0, i32 1
  %250 = load float, ptr %imag284, align 4, !tbaa !14
  %mul285 = fmul float %249, %250
  %251 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv286 = sitofp i64 %251 to float
  %mul287 = fmul float %mul285, %conv286
  %neg288 = fneg float %mul287
  %252 = call float @llvm.fmuladd.f32(float %247, float %248, float %neg288)
  %real289 = getelementptr inbounds %struct.scomplex, ptr %y0c, i32 0, i32 0
  %253 = load float, ptr %real289, align 4, !tbaa !11
  %add290 = fadd float %253, %252
  store float %add290, ptr %real289, align 4, !tbaa !11
  %real291 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 0
  %254 = load float, ptr %real291, align 4, !tbaa !11
  %real292 = getelementptr inbounds %struct.scomplex, ptr %a3c, i32 0, i32 0
  %255 = load float, ptr %real292, align 4, !tbaa !11
  %imag294 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 1
  %256 = load float, ptr %imag294, align 4, !tbaa !14
  %imag295 = getelementptr inbounds %struct.scomplex, ptr %a3c, i32 0, i32 1
  %257 = load float, ptr %imag295, align 4, !tbaa !14
  %mul296 = fmul float %256, %257
  %258 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv297 = sitofp i64 %258 to float
  %mul298 = fmul float %mul296, %conv297
  %neg299 = fneg float %mul298
  %259 = call float @llvm.fmuladd.f32(float %254, float %255, float %neg299)
  %real300 = getelementptr inbounds %struct.scomplex, ptr %y0c, i32 0, i32 0
  %260 = load float, ptr %real300, align 4, !tbaa !11
  %add301 = fadd float %260, %259
  store float %add301, ptr %real300, align 4, !tbaa !11
  %imag302 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 1
  %261 = load float, ptr %imag302, align 4, !tbaa !14
  %real303 = getelementptr inbounds %struct.scomplex, ptr %a0c, i32 0, i32 0
  %262 = load float, ptr %real303, align 4, !tbaa !11
  %real305 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 0
  %263 = load float, ptr %real305, align 4, !tbaa !11
  %imag306 = getelementptr inbounds %struct.scomplex, ptr %a0c, i32 0, i32 1
  %264 = load float, ptr %imag306, align 4, !tbaa !14
  %mul307 = fmul float %263, %264
  %265 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv308 = sitofp i64 %265 to float
  %mul309 = fmul float %mul307, %conv308
  %266 = call float @llvm.fmuladd.f32(float %261, float %262, float %mul309)
  %imag310 = getelementptr inbounds %struct.scomplex, ptr %y0c, i32 0, i32 1
  %267 = load float, ptr %imag310, align 4, !tbaa !14
  %add311 = fadd float %267, %266
  store float %add311, ptr %imag310, align 4, !tbaa !14
  %imag312 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 1
  %268 = load float, ptr %imag312, align 4, !tbaa !14
  %real313 = getelementptr inbounds %struct.scomplex, ptr %a1c, i32 0, i32 0
  %269 = load float, ptr %real313, align 4, !tbaa !11
  %real315 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 0
  %270 = load float, ptr %real315, align 4, !tbaa !11
  %imag316 = getelementptr inbounds %struct.scomplex, ptr %a1c, i32 0, i32 1
  %271 = load float, ptr %imag316, align 4, !tbaa !14
  %mul317 = fmul float %270, %271
  %272 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv318 = sitofp i64 %272 to float
  %mul319 = fmul float %mul317, %conv318
  %273 = call float @llvm.fmuladd.f32(float %268, float %269, float %mul319)
  %imag320 = getelementptr inbounds %struct.scomplex, ptr %y0c, i32 0, i32 1
  %274 = load float, ptr %imag320, align 4, !tbaa !14
  %add321 = fadd float %274, %273
  store float %add321, ptr %imag320, align 4, !tbaa !14
  %imag322 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 1
  %275 = load float, ptr %imag322, align 4, !tbaa !14
  %real323 = getelementptr inbounds %struct.scomplex, ptr %a2c, i32 0, i32 0
  %276 = load float, ptr %real323, align 4, !tbaa !11
  %real325 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 0
  %277 = load float, ptr %real325, align 4, !tbaa !11
  %imag326 = getelementptr inbounds %struct.scomplex, ptr %a2c, i32 0, i32 1
  %278 = load float, ptr %imag326, align 4, !tbaa !14
  %mul327 = fmul float %277, %278
  %279 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv328 = sitofp i64 %279 to float
  %mul329 = fmul float %mul327, %conv328
  %280 = call float @llvm.fmuladd.f32(float %275, float %276, float %mul329)
  %imag330 = getelementptr inbounds %struct.scomplex, ptr %y0c, i32 0, i32 1
  %281 = load float, ptr %imag330, align 4, !tbaa !14
  %add331 = fadd float %281, %280
  store float %add331, ptr %imag330, align 4, !tbaa !14
  %imag332 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 1
  %282 = load float, ptr %imag332, align 4, !tbaa !14
  %real333 = getelementptr inbounds %struct.scomplex, ptr %a3c, i32 0, i32 0
  %283 = load float, ptr %real333, align 4, !tbaa !11
  %real335 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 0
  %284 = load float, ptr %real335, align 4, !tbaa !11
  %imag336 = getelementptr inbounds %struct.scomplex, ptr %a3c, i32 0, i32 1
  %285 = load float, ptr %imag336, align 4, !tbaa !14
  %mul337 = fmul float %284, %285
  %286 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv338 = sitofp i64 %286 to float
  %mul339 = fmul float %mul337, %conv338
  %287 = call float @llvm.fmuladd.f32(float %282, float %283, float %mul339)
  %imag340 = getelementptr inbounds %struct.scomplex, ptr %y0c, i32 0, i32 1
  %288 = load float, ptr %imag340, align 4, !tbaa !14
  %add341 = fadd float %288, %287
  store float %add341, ptr %imag340, align 4, !tbaa !14
  %289 = load ptr, ptr %y0, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %289, ptr align 4 %y0c, i64 8, i1 false), !tbaa.struct !16
  %arrayidx342 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 0
  %290 = load ptr, ptr %arrayidx342, align 16, !tbaa !9
  %add.ptr343 = getelementptr inbounds float, ptr %290, i64 2
  store ptr %add.ptr343, ptr %arrayidx342, align 16, !tbaa !9
  %arrayidx344 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 1
  %291 = load ptr, ptr %arrayidx344, align 8, !tbaa !9
  %add.ptr345 = getelementptr inbounds float, ptr %291, i64 2
  store ptr %add.ptr345, ptr %arrayidx344, align 8, !tbaa !9
  %arrayidx346 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 2
  %292 = load ptr, ptr %arrayidx346, align 16, !tbaa !9
  %add.ptr347 = getelementptr inbounds float, ptr %292, i64 2
  store ptr %add.ptr347, ptr %arrayidx346, align 16, !tbaa !9
  %arrayidx348 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 3
  %293 = load ptr, ptr %arrayidx348, align 8, !tbaa !9
  %add.ptr349 = getelementptr inbounds float, ptr %293, i64 2
  store ptr %add.ptr349, ptr %arrayidx348, align 8, !tbaa !9
  %294 = load ptr, ptr %y0, align 8, !tbaa !9
  %add.ptr350 = getelementptr inbounds float, ptr %294, i64 2
  store ptr %add.ptr350, ptr %y0, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3c) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2c) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1c) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0c) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y0c) #8
  br label %for.inc351

for.inc351:                                       ; preds = %for.body254
  %295 = load i64, ptr %i, align 8, !tbaa !7
  %inc352 = add nsw i64 %295, 1
  store i64 %inc352, ptr %i, align 8, !tbaa !7
  br label %for.cond252

for.end353:                                       ; preds = %for.cond252
  call void @llvm.lifetime.end.p0(i64 8, ptr %n2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %n1) #8
  br label %if.end465

if.else354:                                       ; preds = %land.lhs.true185, %if.end103
  store i64 0, ptr %i, align 8, !tbaa !7
  br label %for.cond355

for.cond355:                                      ; preds = %for.inc462, %if.else354
  %296 = load i64, ptr %i, align 8, !tbaa !7
  %add356 = add nsw i64 %296, 0
  %297 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp357 = icmp slt i64 %add356, %297
  br i1 %cmp357, label %for.body359, label %for.end464

for.body359:                                      ; preds = %for.cond355
  call void @llvm.lifetime.start.p0(i64 8, ptr %y0c360) #8
  %298 = load ptr, ptr %y0, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %y0c360, ptr align 4 %298, i64 8, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %a0c361) #8
  %arrayidx362 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 0
  %299 = load ptr, ptr %arrayidx362, align 16, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a0c361, ptr align 4 %299, i64 8, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1c363) #8
  %arrayidx364 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 1
  %300 = load ptr, ptr %arrayidx364, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a1c363, ptr align 4 %300, i64 8, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %a2c365) #8
  %arrayidx366 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 2
  %301 = load ptr, ptr %arrayidx366, align 16, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a2c365, ptr align 4 %301, i64 8, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %a3c367) #8
  %arrayidx368 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 3
  %302 = load ptr, ptr %arrayidx368, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a3c367, ptr align 4 %302, i64 8, i1 false), !tbaa.struct !16
  %real369 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 0
  %303 = load float, ptr %real369, align 4, !tbaa !11
  %real370 = getelementptr inbounds %struct.scomplex, ptr %a0c361, i32 0, i32 0
  %304 = load float, ptr %real370, align 4, !tbaa !11
  %imag372 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 1
  %305 = load float, ptr %imag372, align 4, !tbaa !14
  %imag373 = getelementptr inbounds %struct.scomplex, ptr %a0c361, i32 0, i32 1
  %306 = load float, ptr %imag373, align 4, !tbaa !14
  %mul374 = fmul float %305, %306
  %307 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv375 = sitofp i64 %307 to float
  %mul376 = fmul float %mul374, %conv375
  %neg377 = fneg float %mul376
  %308 = call float @llvm.fmuladd.f32(float %303, float %304, float %neg377)
  %real378 = getelementptr inbounds %struct.scomplex, ptr %y0c360, i32 0, i32 0
  %309 = load float, ptr %real378, align 4, !tbaa !11
  %add379 = fadd float %309, %308
  store float %add379, ptr %real378, align 4, !tbaa !11
  %real380 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 0
  %310 = load float, ptr %real380, align 4, !tbaa !11
  %real381 = getelementptr inbounds %struct.scomplex, ptr %a1c363, i32 0, i32 0
  %311 = load float, ptr %real381, align 4, !tbaa !11
  %imag383 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 1
  %312 = load float, ptr %imag383, align 4, !tbaa !14
  %imag384 = getelementptr inbounds %struct.scomplex, ptr %a1c363, i32 0, i32 1
  %313 = load float, ptr %imag384, align 4, !tbaa !14
  %mul385 = fmul float %312, %313
  %314 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv386 = sitofp i64 %314 to float
  %mul387 = fmul float %mul385, %conv386
  %neg388 = fneg float %mul387
  %315 = call float @llvm.fmuladd.f32(float %310, float %311, float %neg388)
  %real389 = getelementptr inbounds %struct.scomplex, ptr %y0c360, i32 0, i32 0
  %316 = load float, ptr %real389, align 4, !tbaa !11
  %add390 = fadd float %316, %315
  store float %add390, ptr %real389, align 4, !tbaa !11
  %real391 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 0
  %317 = load float, ptr %real391, align 4, !tbaa !11
  %real392 = getelementptr inbounds %struct.scomplex, ptr %a2c365, i32 0, i32 0
  %318 = load float, ptr %real392, align 4, !tbaa !11
  %imag394 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 1
  %319 = load float, ptr %imag394, align 4, !tbaa !14
  %imag395 = getelementptr inbounds %struct.scomplex, ptr %a2c365, i32 0, i32 1
  %320 = load float, ptr %imag395, align 4, !tbaa !14
  %mul396 = fmul float %319, %320
  %321 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv397 = sitofp i64 %321 to float
  %mul398 = fmul float %mul396, %conv397
  %neg399 = fneg float %mul398
  %322 = call float @llvm.fmuladd.f32(float %317, float %318, float %neg399)
  %real400 = getelementptr inbounds %struct.scomplex, ptr %y0c360, i32 0, i32 0
  %323 = load float, ptr %real400, align 4, !tbaa !11
  %add401 = fadd float %323, %322
  store float %add401, ptr %real400, align 4, !tbaa !11
  %real402 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 0
  %324 = load float, ptr %real402, align 4, !tbaa !11
  %real403 = getelementptr inbounds %struct.scomplex, ptr %a3c367, i32 0, i32 0
  %325 = load float, ptr %real403, align 4, !tbaa !11
  %imag405 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 1
  %326 = load float, ptr %imag405, align 4, !tbaa !14
  %imag406 = getelementptr inbounds %struct.scomplex, ptr %a3c367, i32 0, i32 1
  %327 = load float, ptr %imag406, align 4, !tbaa !14
  %mul407 = fmul float %326, %327
  %328 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv408 = sitofp i64 %328 to float
  %mul409 = fmul float %mul407, %conv408
  %neg410 = fneg float %mul409
  %329 = call float @llvm.fmuladd.f32(float %324, float %325, float %neg410)
  %real411 = getelementptr inbounds %struct.scomplex, ptr %y0c360, i32 0, i32 0
  %330 = load float, ptr %real411, align 4, !tbaa !11
  %add412 = fadd float %330, %329
  store float %add412, ptr %real411, align 4, !tbaa !11
  %imag413 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 1
  %331 = load float, ptr %imag413, align 4, !tbaa !14
  %real414 = getelementptr inbounds %struct.scomplex, ptr %a0c361, i32 0, i32 0
  %332 = load float, ptr %real414, align 4, !tbaa !11
  %real416 = getelementptr inbounds %struct.scomplex, ptr %chi0, i32 0, i32 0
  %333 = load float, ptr %real416, align 4, !tbaa !11
  %imag417 = getelementptr inbounds %struct.scomplex, ptr %a0c361, i32 0, i32 1
  %334 = load float, ptr %imag417, align 4, !tbaa !14
  %mul418 = fmul float %333, %334
  %335 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv419 = sitofp i64 %335 to float
  %mul420 = fmul float %mul418, %conv419
  %336 = call float @llvm.fmuladd.f32(float %331, float %332, float %mul420)
  %imag421 = getelementptr inbounds %struct.scomplex, ptr %y0c360, i32 0, i32 1
  %337 = load float, ptr %imag421, align 4, !tbaa !14
  %add422 = fadd float %337, %336
  store float %add422, ptr %imag421, align 4, !tbaa !14
  %imag423 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 1
  %338 = load float, ptr %imag423, align 4, !tbaa !14
  %real424 = getelementptr inbounds %struct.scomplex, ptr %a1c363, i32 0, i32 0
  %339 = load float, ptr %real424, align 4, !tbaa !11
  %real426 = getelementptr inbounds %struct.scomplex, ptr %chi1, i32 0, i32 0
  %340 = load float, ptr %real426, align 4, !tbaa !11
  %imag427 = getelementptr inbounds %struct.scomplex, ptr %a1c363, i32 0, i32 1
  %341 = load float, ptr %imag427, align 4, !tbaa !14
  %mul428 = fmul float %340, %341
  %342 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv429 = sitofp i64 %342 to float
  %mul430 = fmul float %mul428, %conv429
  %343 = call float @llvm.fmuladd.f32(float %338, float %339, float %mul430)
  %imag431 = getelementptr inbounds %struct.scomplex, ptr %y0c360, i32 0, i32 1
  %344 = load float, ptr %imag431, align 4, !tbaa !14
  %add432 = fadd float %344, %343
  store float %add432, ptr %imag431, align 4, !tbaa !14
  %imag433 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 1
  %345 = load float, ptr %imag433, align 4, !tbaa !14
  %real434 = getelementptr inbounds %struct.scomplex, ptr %a2c365, i32 0, i32 0
  %346 = load float, ptr %real434, align 4, !tbaa !11
  %real436 = getelementptr inbounds %struct.scomplex, ptr %chi2, i32 0, i32 0
  %347 = load float, ptr %real436, align 4, !tbaa !11
  %imag437 = getelementptr inbounds %struct.scomplex, ptr %a2c365, i32 0, i32 1
  %348 = load float, ptr %imag437, align 4, !tbaa !14
  %mul438 = fmul float %347, %348
  %349 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv439 = sitofp i64 %349 to float
  %mul440 = fmul float %mul438, %conv439
  %350 = call float @llvm.fmuladd.f32(float %345, float %346, float %mul440)
  %imag441 = getelementptr inbounds %struct.scomplex, ptr %y0c360, i32 0, i32 1
  %351 = load float, ptr %imag441, align 4, !tbaa !14
  %add442 = fadd float %351, %350
  store float %add442, ptr %imag441, align 4, !tbaa !14
  %imag443 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 1
  %352 = load float, ptr %imag443, align 4, !tbaa !14
  %real444 = getelementptr inbounds %struct.scomplex, ptr %a3c367, i32 0, i32 0
  %353 = load float, ptr %real444, align 4, !tbaa !11
  %real446 = getelementptr inbounds %struct.scomplex, ptr %chi3, i32 0, i32 0
  %354 = load float, ptr %real446, align 4, !tbaa !11
  %imag447 = getelementptr inbounds %struct.scomplex, ptr %a3c367, i32 0, i32 1
  %355 = load float, ptr %imag447, align 4, !tbaa !14
  %mul448 = fmul float %354, %355
  %356 = load i64, ptr %setPlusOne, align 8, !tbaa !7
  %conv449 = sitofp i64 %356 to float
  %mul450 = fmul float %mul448, %conv449
  %357 = call float @llvm.fmuladd.f32(float %352, float %353, float %mul450)
  %imag451 = getelementptr inbounds %struct.scomplex, ptr %y0c360, i32 0, i32 1
  %358 = load float, ptr %imag451, align 4, !tbaa !14
  %add452 = fadd float %358, %357
  store float %add452, ptr %imag451, align 4, !tbaa !14
  %359 = load ptr, ptr %y0, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %359, ptr align 4 %y0c360, i64 8, i1 false), !tbaa.struct !16
  %360 = load i64, ptr %inca.addr, align 8, !tbaa !7
  %arrayidx453 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 0
  %361 = load ptr, ptr %arrayidx453, align 16, !tbaa !9
  %add.ptr454 = getelementptr inbounds float, ptr %361, i64 %360
  store ptr %add.ptr454, ptr %arrayidx453, align 16, !tbaa !9
  %362 = load i64, ptr %inca.addr, align 8, !tbaa !7
  %arrayidx455 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 1
  %363 = load ptr, ptr %arrayidx455, align 8, !tbaa !9
  %add.ptr456 = getelementptr inbounds float, ptr %363, i64 %362
  store ptr %add.ptr456, ptr %arrayidx455, align 8, !tbaa !9
  %364 = load i64, ptr %inca.addr, align 8, !tbaa !7
  %arrayidx457 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 2
  %365 = load ptr, ptr %arrayidx457, align 16, !tbaa !9
  %add.ptr458 = getelementptr inbounds float, ptr %365, i64 %364
  store ptr %add.ptr458, ptr %arrayidx457, align 16, !tbaa !9
  %366 = load i64, ptr %inca.addr, align 8, !tbaa !7
  %arrayidx459 = getelementptr inbounds [4 x ptr], ptr %ap, i64 0, i64 3
  %367 = load ptr, ptr %arrayidx459, align 8, !tbaa !9
  %add.ptr460 = getelementptr inbounds float, ptr %367, i64 %366
  store ptr %add.ptr460, ptr %arrayidx459, align 8, !tbaa !9
  %368 = load i64, ptr %incy.addr, align 8, !tbaa !7
  %369 = load ptr, ptr %y0, align 8, !tbaa !9
  %add.ptr461 = getelementptr inbounds float, ptr %369, i64 %368
  store ptr %add.ptr461, ptr %y0, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3c367) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a2c365) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1c363) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a0c361) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y0c360) #8
  br label %for.inc462

for.inc462:                                       ; preds = %for.body359
  %370 = load i64, ptr %i, align 8, !tbaa !7
  %inc463 = add nsw i64 %370, 1
  store i64 %inc463, ptr %i, align 8, !tbaa !7
  br label %for.cond355

for.end464:                                       ; preds = %for.cond355
  br label %if.end465

if.end465:                                        ; preds = %for.end464, %for.end353
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end465, %for.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %setPlusOne) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi1) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %chi0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %y0) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ap) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ymm13) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ymm12) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ymm10) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ymm8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ymm7) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ymm6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ymm5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ymm4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ymm3) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ymm2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ymm1) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %ymm0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %fuse_fac) #8
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
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_conj(i32 noundef %conj) #2 {
entry:
  %conj.addr = alloca i32, align 4
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !4
  %0 = load i32, ptr %conj.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 16
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_zero_dim2(i64 noundef %m, i64 noundef %n) #2 {
entry:
  %m.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %m, ptr %m.addr, align 8, !tbaa !7
  store i64 %n, ptr %n.addr, align 8, !tbaa !7
  %0 = load i64, ptr %m.addr, align 8, !tbaa !7
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !tbaa !7
  %cmp1 = icmp eq i64 %1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %2
}

declare ptr @bli_gks_query_cntx() #3

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l1v_ker_dt(i32 noundef %dt, i32 noundef %ker_id, ptr noundef %cntx) #2 {
entry:
  %dt.addr = alloca i32, align 4
  %ker_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store i32 %ker_id, ptr %ker_id.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #8
  %0 = load i32, ptr %ker_id.addr, align 4, !tbaa !4
  %1 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_get_l1v_kers(i32 noundef %0, ptr noundef %1)
  store ptr %call, ptr %func, align 8, !tbaa !9
  %2 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %3 = load ptr, ptr %func, align 8, !tbaa !9
  %call1 = call ptr @bli_func_get_dt(i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #8
  ret ptr %call1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bli_is_noconj(i32 noundef %conj) #2 {
entry:
  %conj.addr = alloca i32, align 4
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !4
  %0 = load i32, ptr %conj.addr, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_setzero_ps() #6 {
entry:
  %.compoundliteral = alloca <8 x float>, align 32
  store <8 x float> zeroinitializer, ptr %.compoundliteral, align 32, !tbaa !4
  %0 = load <8 x float>, ptr %.compoundliteral, align 32, !tbaa !4
  ret <8 x float> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_broadcast_ss(ptr noundef %__a) #6 {
entry:
  %__a.addr = alloca ptr, align 8
  %__f = alloca float, align 4
  %.compoundliteral = alloca <8 x float>, align 32
  store ptr %__a, ptr %__a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__f) #8
  %0 = load ptr, ptr %__a.addr, align 8, !tbaa !9
  %__f1 = getelementptr inbounds %struct.__mm256_broadcast_ss_struct, ptr %0, i32 0, i32 0
  %1 = load float, ptr %__f1, align 1, !tbaa !4
  store float %1, ptr %__f, align 4, !tbaa !15
  %2 = load float, ptr %__f, align 4, !tbaa !15
  %vecinit = insertelement <8 x float> undef, float %2, i32 0
  %3 = load float, ptr %__f, align 4, !tbaa !15
  %vecinit2 = insertelement <8 x float> %vecinit, float %3, i32 1
  %4 = load float, ptr %__f, align 4, !tbaa !15
  %vecinit3 = insertelement <8 x float> %vecinit2, float %4, i32 2
  %5 = load float, ptr %__f, align 4, !tbaa !15
  %vecinit4 = insertelement <8 x float> %vecinit3, float %5, i32 3
  %6 = load float, ptr %__f, align 4, !tbaa !15
  %vecinit5 = insertelement <8 x float> %vecinit4, float %6, i32 4
  %7 = load float, ptr %__f, align 4, !tbaa !15
  %vecinit6 = insertelement <8 x float> %vecinit5, float %7, i32 5
  %8 = load float, ptr %__f, align 4, !tbaa !15
  %vecinit7 = insertelement <8 x float> %vecinit6, float %8, i32 6
  %9 = load float, ptr %__f, align 4, !tbaa !15
  %vecinit8 = insertelement <8 x float> %vecinit7, float %9, i32 7
  store <8 x float> %vecinit8, ptr %.compoundliteral, align 32, !tbaa !4
  %10 = load <8 x float>, ptr %.compoundliteral, align 32, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 4, ptr %__f) #8
  ret <8 x float> %10
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_loadu_ps(ptr noundef %__p) #6 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <8 x float>, ptr %__v, align 1, !tbaa !4
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_mul_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #6 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !4
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !4
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !4
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !4
  %mul = fmul <8 x float> %0, %1
  ret <8 x float> %mul
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_fmadd_ps(<8 x float> noundef %__A, <8 x float> noundef %__B, <8 x float> noundef %__C) #6 {
entry:
  %__A.addr = alloca <8 x float>, align 32
  %__B.addr = alloca <8 x float>, align 32
  %__C.addr = alloca <8 x float>, align 32
  store <8 x float> %__A, ptr %__A.addr, align 32, !tbaa !4
  store <8 x float> %__B, ptr %__B.addr, align 32, !tbaa !4
  store <8 x float> %__C, ptr %__C.addr, align 32, !tbaa !4
  %0 = load <8 x float>, ptr %__A.addr, align 32, !tbaa !4
  %1 = load <8 x float>, ptr %__B.addr, align 32, !tbaa !4
  %2 = load <8 x float>, ptr %__C.addr, align 32, !tbaa !4
  %3 = call <8 x float> @llvm.fma.v8f32(<8 x float> %0, <8 x float> %1, <8 x float> %2)
  ret <8 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_addsub_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #6 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !4
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !4
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !4
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !4
  %2 = call <8 x float> @llvm.x86.avx.addsub.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_add_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #6 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !4
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !4
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !4
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !4
  %add = fadd <8 x float> %0, %1
  ret <8 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm256_storeu_ps(ptr noundef %__p, <8 x float> noundef %__a) #6 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <8 x float>, align 32
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !4
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !4
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <8 x float> %0, ptr %__v, align 1, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_get_l1v_kers(i32 noundef %ker_id, ptr noundef %cntx) #2 {
entry:
  %ker_id.addr = alloca i32, align 4
  %cntx.addr = alloca ptr, align 8
  %funcs = alloca ptr, align 8
  %func = alloca ptr, align 8
  store i32 %ker_id, ptr %ker_id.addr, align 4, !tbaa !4
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %funcs) #8
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %call = call ptr @bli_cntx_l1v_kers_buf(ptr noundef %0)
  store ptr %call, ptr %funcs, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %func) #8
  %1 = load ptr, ptr %funcs, align 8, !tbaa !9
  %2 = load i32, ptr %ker_id.addr, align 4, !tbaa !4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.func_s, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %func, align 8, !tbaa !9
  %3 = load ptr, ptr %func, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %func) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %funcs) #8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_func_get_dt(i32 noundef %dt, ptr noundef %func) #2 {
entry:
  %dt.addr = alloca i32, align 4
  %func.addr = alloca ptr, align 8
  store i32 %dt, ptr %dt.addr, align 4, !tbaa !4
  store ptr %func, ptr %func.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %func.addr, align 8, !tbaa !9
  %ptr = getelementptr inbounds %struct.func_s, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %dt.addr, align 4, !tbaa !4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %ptr, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define internal ptr @bli_cntx_l1v_kers_buf(ptr noundef %cntx) #2 {
entry:
  %cntx.addr = alloca ptr, align 8
  store ptr %cntx, ptr %cntx.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %cntx.addr, align 8, !tbaa !9
  %l1v_kers = getelementptr inbounds %struct.cntx_s, ptr %0, i32 0, i32 11
  %arraydecay = getelementptr inbounds [14 x %struct.func_s], ptr %l1v_kers, i64 0, i64 0
  ret ptr %arraydecay
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.addsub.ps.256(<8 x float>, <8 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nounwind }

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
!11 = !{!12, !13, i64 0}
!12 = !{!"scomplex", !13, i64 0, !13, i64 4}
!13 = !{!"float", !5, i64 0}
!14 = !{!12, !13, i64 4}
!15 = !{!13, !13, i64 0}
!16 = !{i64 0, i64 4, !15, i64 4, i64 4, !15}

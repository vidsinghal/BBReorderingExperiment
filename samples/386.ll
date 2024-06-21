; ModuleID = 'samples/386.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vbinary/gen/vmul-relu-scalar-x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vmul_relu_ukernel__scalar_x8(i64 noundef %n, ptr noundef %a, ptr noundef %b, ptr noundef %y, ptr noalias noundef align 1 dereferenceable(1) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %va0 = alloca float, align 4
  %va1 = alloca float, align 4
  %va2 = alloca float, align 4
  %va3 = alloca float, align 4
  %va4 = alloca float, align 4
  %va5 = alloca float, align 4
  %va6 = alloca float, align 4
  %va7 = alloca float, align 4
  %vb0 = alloca float, align 4
  %vb1 = alloca float, align 4
  %vb2 = alloca float, align 4
  %vb3 = alloca float, align 4
  %vb4 = alloca float, align 4
  %vb5 = alloca float, align 4
  %vb6 = alloca float, align 4
  %vb7 = alloca float, align 4
  %vy0 = alloca float, align 4
  %vy1 = alloca float, align 4
  %vy2 = alloca float, align 4
  %vy3 = alloca float, align 4
  %vy4 = alloca float, align 4
  %vy5 = alloca float, align 4
  %vy6 = alloca float, align 4
  %vy7 = alloca float, align 4
  %va = alloca float, align 4
  %vb = alloca float, align 4
  %vy = alloca float, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %va0) #4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds float, ptr %1, i64 0
  %2 = load float, ptr %arrayidx, align 4, !tbaa !11
  store float %2, ptr %va0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %va1) #4
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds float, ptr %3, i64 1
  %4 = load float, ptr %arrayidx1, align 4, !tbaa !11
  store float %4, ptr %va1, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %va2) #4
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx2 = getelementptr inbounds float, ptr %5, i64 2
  %6 = load float, ptr %arrayidx2, align 4, !tbaa !11
  store float %6, ptr %va2, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %va3) #4
  %7 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx3 = getelementptr inbounds float, ptr %7, i64 3
  %8 = load float, ptr %arrayidx3, align 4, !tbaa !11
  store float %8, ptr %va3, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %va4) #4
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx4 = getelementptr inbounds float, ptr %9, i64 4
  %10 = load float, ptr %arrayidx4, align 4, !tbaa !11
  store float %10, ptr %va4, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %va5) #4
  %11 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx5 = getelementptr inbounds float, ptr %11, i64 5
  %12 = load float, ptr %arrayidx5, align 4, !tbaa !11
  store float %12, ptr %va5, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %va6) #4
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds float, ptr %13, i64 6
  %14 = load float, ptr %arrayidx6, align 4, !tbaa !11
  store float %14, ptr %va6, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %va7) #4
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %arrayidx7 = getelementptr inbounds float, ptr %15, i64 7
  %16 = load float, ptr %arrayidx7, align 4, !tbaa !11
  store float %16, ptr %va7, align 4, !tbaa !11
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %17, i64 8
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb0) #4
  %18 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx8 = getelementptr inbounds float, ptr %18, i64 0
  %19 = load float, ptr %arrayidx8, align 4, !tbaa !11
  store float %19, ptr %vb0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb1) #4
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx9 = getelementptr inbounds float, ptr %20, i64 1
  %21 = load float, ptr %arrayidx9, align 4, !tbaa !11
  store float %21, ptr %vb1, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb2) #4
  %22 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx10 = getelementptr inbounds float, ptr %22, i64 2
  %23 = load float, ptr %arrayidx10, align 4, !tbaa !11
  store float %23, ptr %vb2, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb3) #4
  %24 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx11 = getelementptr inbounds float, ptr %24, i64 3
  %25 = load float, ptr %arrayidx11, align 4, !tbaa !11
  store float %25, ptr %vb3, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb4) #4
  %26 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx12 = getelementptr inbounds float, ptr %26, i64 4
  %27 = load float, ptr %arrayidx12, align 4, !tbaa !11
  store float %27, ptr %vb4, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb5) #4
  %28 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx13 = getelementptr inbounds float, ptr %28, i64 5
  %29 = load float, ptr %arrayidx13, align 4, !tbaa !11
  store float %29, ptr %vb5, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb6) #4
  %30 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx14 = getelementptr inbounds float, ptr %30, i64 6
  %31 = load float, ptr %arrayidx14, align 4, !tbaa !11
  store float %31, ptr %vb6, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb7) #4
  %32 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %arrayidx15 = getelementptr inbounds float, ptr %32, i64 7
  %33 = load float, ptr %arrayidx15, align 4, !tbaa !11
  store float %33, ptr %vb7, align 4, !tbaa !11
  %34 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %add.ptr16 = getelementptr inbounds float, ptr %34, i64 8
  store ptr %add.ptr16, ptr %b.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy0) #4
  %35 = load float, ptr %va0, align 4, !tbaa !11
  %36 = load float, ptr %vb0, align 4, !tbaa !11
  %mul = fmul float %35, %36
  store float %mul, ptr %vy0, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy1) #4
  %37 = load float, ptr %va1, align 4, !tbaa !11
  %38 = load float, ptr %vb1, align 4, !tbaa !11
  %mul17 = fmul float %37, %38
  store float %mul17, ptr %vy1, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy2) #4
  %39 = load float, ptr %va2, align 4, !tbaa !11
  %40 = load float, ptr %vb2, align 4, !tbaa !11
  %mul18 = fmul float %39, %40
  store float %mul18, ptr %vy2, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy3) #4
  %41 = load float, ptr %va3, align 4, !tbaa !11
  %42 = load float, ptr %vb3, align 4, !tbaa !11
  %mul19 = fmul float %41, %42
  store float %mul19, ptr %vy3, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy4) #4
  %43 = load float, ptr %va4, align 4, !tbaa !11
  %44 = load float, ptr %vb4, align 4, !tbaa !11
  %mul20 = fmul float %43, %44
  store float %mul20, ptr %vy4, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy5) #4
  %45 = load float, ptr %va5, align 4, !tbaa !11
  %46 = load float, ptr %vb5, align 4, !tbaa !11
  %mul21 = fmul float %45, %46
  store float %mul21, ptr %vy5, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy6) #4
  %47 = load float, ptr %va6, align 4, !tbaa !11
  %48 = load float, ptr %vb6, align 4, !tbaa !11
  %mul22 = fmul float %47, %48
  store float %mul22, ptr %vy6, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy7) #4
  %49 = load float, ptr %va7, align 4, !tbaa !11
  %50 = load float, ptr %vb7, align 4, !tbaa !11
  %mul23 = fmul float %49, %50
  store float %mul23, ptr %vy7, align 4, !tbaa !11
  %51 = load float, ptr %vy0, align 4, !tbaa !11
  %call = call float @math_max_f32(float noundef %51, float noundef 0.000000e+00)
  store float %call, ptr %vy0, align 4, !tbaa !11
  %52 = load float, ptr %vy1, align 4, !tbaa !11
  %call24 = call float @math_max_f32(float noundef %52, float noundef 0.000000e+00)
  store float %call24, ptr %vy1, align 4, !tbaa !11
  %53 = load float, ptr %vy2, align 4, !tbaa !11
  %call25 = call float @math_max_f32(float noundef %53, float noundef 0.000000e+00)
  store float %call25, ptr %vy2, align 4, !tbaa !11
  %54 = load float, ptr %vy3, align 4, !tbaa !11
  %call26 = call float @math_max_f32(float noundef %54, float noundef 0.000000e+00)
  store float %call26, ptr %vy3, align 4, !tbaa !11
  %55 = load float, ptr %vy4, align 4, !tbaa !11
  %call27 = call float @math_max_f32(float noundef %55, float noundef 0.000000e+00)
  store float %call27, ptr %vy4, align 4, !tbaa !11
  %56 = load float, ptr %vy5, align 4, !tbaa !11
  %call28 = call float @math_max_f32(float noundef %56, float noundef 0.000000e+00)
  store float %call28, ptr %vy5, align 4, !tbaa !11
  %57 = load float, ptr %vy6, align 4, !tbaa !11
  %call29 = call float @math_max_f32(float noundef %57, float noundef 0.000000e+00)
  store float %call29, ptr %vy6, align 4, !tbaa !11
  %58 = load float, ptr %vy7, align 4, !tbaa !11
  %call30 = call float @math_max_f32(float noundef %58, float noundef 0.000000e+00)
  store float %call30, ptr %vy7, align 4, !tbaa !11
  %59 = load float, ptr %vy0, align 4, !tbaa !11
  %60 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx31 = getelementptr inbounds float, ptr %60, i64 0
  store float %59, ptr %arrayidx31, align 4, !tbaa !11
  %61 = load float, ptr %vy1, align 4, !tbaa !11
  %62 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx32 = getelementptr inbounds float, ptr %62, i64 1
  store float %61, ptr %arrayidx32, align 4, !tbaa !11
  %63 = load float, ptr %vy2, align 4, !tbaa !11
  %64 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx33 = getelementptr inbounds float, ptr %64, i64 2
  store float %63, ptr %arrayidx33, align 4, !tbaa !11
  %65 = load float, ptr %vy3, align 4, !tbaa !11
  %66 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx34 = getelementptr inbounds float, ptr %66, i64 3
  store float %65, ptr %arrayidx34, align 4, !tbaa !11
  %67 = load float, ptr %vy4, align 4, !tbaa !11
  %68 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx35 = getelementptr inbounds float, ptr %68, i64 4
  store float %67, ptr %arrayidx35, align 4, !tbaa !11
  %69 = load float, ptr %vy5, align 4, !tbaa !11
  %70 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx36 = getelementptr inbounds float, ptr %70, i64 5
  store float %69, ptr %arrayidx36, align 4, !tbaa !11
  %71 = load float, ptr %vy6, align 4, !tbaa !11
  %72 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx37 = getelementptr inbounds float, ptr %72, i64 6
  store float %71, ptr %arrayidx37, align 4, !tbaa !11
  %73 = load float, ptr %vy7, align 4, !tbaa !11
  %74 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx38 = getelementptr inbounds float, ptr %74, i64 7
  store float %73, ptr %arrayidx38, align 4, !tbaa !11
  %75 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr39 = getelementptr inbounds float, ptr %75, i64 8
  store ptr %add.ptr39, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va0) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %76, 32
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %77 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp40 = icmp ne i64 %77, 0
  %lnot = xor i1 %cmp40, true
  %lnot41 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot41 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %va) #4
  %78 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds float, ptr %78, i32 1
  store ptr %incdec.ptr, ptr %a.addr, align 8, !tbaa !9
  %79 = load float, ptr %78, align 4, !tbaa !11
  store float %79, ptr %va, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vb) #4
  %80 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %incdec.ptr42 = getelementptr inbounds float, ptr %80, i32 1
  store ptr %incdec.ptr42, ptr %b.addr, align 8, !tbaa !9
  %81 = load float, ptr %80, align 4, !tbaa !11
  store float %81, ptr %vb, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy) #4
  %82 = load float, ptr %va, align 4, !tbaa !11
  %83 = load float, ptr %vb, align 4, !tbaa !11
  %mul43 = fmul float %82, %83
  store float %mul43, ptr %vy, align 4, !tbaa !11
  %84 = load float, ptr %vy, align 4, !tbaa !11
  %call44 = call float @math_max_f32(float noundef %84, float noundef 0.000000e+00)
  store float %call44, ptr %vy, align 4, !tbaa !11
  %85 = load float, ptr %vy, align 4, !tbaa !11
  %86 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %incdec.ptr45 = getelementptr inbounds float, ptr %86, i32 1
  store ptr %incdec.ptr45, ptr %y.addr, align 8, !tbaa !9
  store float %85, ptr %86, align 4, !tbaa !11
  %87 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub46 = sub i64 %87, 4
  store i64 %sub46, ptr %n.addr, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vb) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %va) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %88 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp47 = icmp ne i64 %88, 0
  br i1 %cmp47, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_max_f32(float noundef %a, float noundef %b) #2 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !11
  store float %b, ptr %b.addr, align 4, !tbaa !11
  %0 = load float, ptr %b.addr, align 4, !tbaa !11
  %1 = load float, ptr %a.addr, align 4, !tbaa !11
  %cmp = fcmp olt float %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false, !unpredictable !16

cond.true:                                        ; preds = %entry
  %2 = load float, ptr %a.addr, align 4, !tbaa !11
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load float, ptr %b.addr, align 4, !tbaa !11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  ret float %cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{}

; ModuleID = 'samples/367.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vsigmoid/gen/vsigmoid-scalar-rr2-p5-div-x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.1 = type { float, float, float, float, float, float, float, float, float, float, float }
%union.anon = type { i32 }
%union.anon.9 = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vsigmoid_ukernel__scalar_rr2_p5_div_x2(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noalias noundef align 64 dereferenceable(512) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vmagic_bias = alloca float, align 4
  %vminus_log2e = alloca float, align 4
  %vln2_hi = alloca float, align 4
  %vln2_lo = alloca float, align 4
  %vc5 = alloca float, align 4
  %vc4 = alloca float, align 4
  %vc3 = alloca float, align 4
  %vc2 = alloca float, align 4
  %vc1 = alloca float, align 4
  %vone = alloca float, align 4
  %vdenorm_cutoff = alloca float, align 4
  %vx0 = alloca float, align 4
  %vx1 = alloca float, align 4
  %vz0 = alloca float, align 4
  %vz1 = alloca float, align 4
  %vn0 = alloca float, align 4
  %vn1 = alloca float, align 4
  %vs0 = alloca float, align 4
  %vs1 = alloca float, align 4
  %vt0 = alloca float, align 4
  %vt1 = alloca float, align 4
  %vp0 = alloca float, align 4
  %vp1 = alloca float, align 4
  %ve0 = alloca float, align 4
  %ve1 = alloca float, align 4
  %vd0 = alloca float, align 4
  %vd1 = alloca float, align 4
  %vf0 = alloca float, align 4
  %vf1 = alloca float, align 4
  %vx = alloca float, align 4
  %vz = alloca float, align 4
  %vn = alloca float, align 4
  %vs = alloca float, align 4
  %vt = alloca float, align 4
  %vp = alloca float, align 4
  %ve = alloca float, align 4
  %vd = alloca float, align 4
  %vf = alloca float, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vmagic_bias) #5
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %magic_bias = getelementptr inbounds %struct.anon.1, ptr %0, i32 0, i32 0
  %1 = load float, ptr %magic_bias, align 64, !tbaa !11
  store float %1, ptr %vmagic_bias, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vminus_log2e) #5
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %minus_log2e = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 1
  %3 = load float, ptr %minus_log2e, align 4, !tbaa !11
  store float %3, ptr %vminus_log2e, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vln2_hi) #5
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %ln2_hi = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 2
  %5 = load float, ptr %ln2_hi, align 8, !tbaa !11
  store float %5, ptr %vln2_hi, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vln2_lo) #5
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %ln2_lo = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 3
  %7 = load float, ptr %ln2_lo, align 4, !tbaa !11
  store float %7, ptr %vln2_lo, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vc5) #5
  %8 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c5 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 4
  %9 = load float, ptr %c5, align 16, !tbaa !11
  store float %9, ptr %vc5, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vc4) #5
  %10 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c4 = getelementptr inbounds %struct.anon.1, ptr %10, i32 0, i32 5
  %11 = load float, ptr %c4, align 4, !tbaa !11
  store float %11, ptr %vc4, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vc3) #5
  %12 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c3 = getelementptr inbounds %struct.anon.1, ptr %12, i32 0, i32 6
  %13 = load float, ptr %c3, align 8, !tbaa !11
  store float %13, ptr %vc3, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vc2) #5
  %14 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c2 = getelementptr inbounds %struct.anon.1, ptr %14, i32 0, i32 7
  %15 = load float, ptr %c2, align 4, !tbaa !11
  store float %15, ptr %vc2, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vc1) #5
  %16 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %c1 = getelementptr inbounds %struct.anon.1, ptr %16, i32 0, i32 8
  %17 = load float, ptr %c1, align 32, !tbaa !11
  store float %17, ptr %vc1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vone) #5
  %18 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %one = getelementptr inbounds %struct.anon.1, ptr %18, i32 0, i32 9
  %19 = load float, ptr %one, align 4, !tbaa !11
  store float %19, ptr %vone, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vdenorm_cutoff) #5
  %20 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %denorm_cutoff = getelementptr inbounds %struct.anon.1, ptr %20, i32 0, i32 10
  %21 = load float, ptr %denorm_cutoff, align 8, !tbaa !11
  store float %21, ptr %vdenorm_cutoff, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %22, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx0) #5
  %23 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds float, ptr %23, i64 0
  %24 = load float, ptr %arrayidx, align 4, !tbaa !12
  store float %24, ptr %vx0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx1) #5
  %25 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %arrayidx1 = getelementptr inbounds float, ptr %25, i64 1
  %26 = load float, ptr %arrayidx1, align 4, !tbaa !12
  store float %26, ptr %vx1, align 4, !tbaa !12
  %27 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %27, i64 2
  store ptr %add.ptr, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %vz0) #5
  %28 = load float, ptr %vx0, align 4, !tbaa !12
  %29 = call float @llvm.fabs.f32(float %28)
  store float %29, ptr %vz0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vz1) #5
  %30 = load float, ptr %vx1, align 4, !tbaa !12
  %31 = call float @llvm.fabs.f32(float %30)
  store float %31, ptr %vz1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vn0) #5
  %32 = load float, ptr %vz0, align 4, !tbaa !12
  %33 = load float, ptr %vminus_log2e, align 4, !tbaa !12
  %34 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %35 = call float @llvm.fmuladd.f32(float %32, float %33, float %34)
  store float %35, ptr %vn0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vn1) #5
  %36 = load float, ptr %vz1, align 4, !tbaa !12
  %37 = load float, ptr %vminus_log2e, align 4, !tbaa !12
  %38 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %39 = call float @llvm.fmuladd.f32(float %36, float %37, float %38)
  store float %39, ptr %vn1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vs0) #5
  %40 = load float, ptr %vn0, align 4, !tbaa !12
  %call = call i32 @fp32_to_bits(float noundef %40)
  %shl = shl i32 %call, 23
  %call2 = call float @fp32_from_bits(i32 noundef %shl)
  store float %call2, ptr %vs0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vs1) #5
  %41 = load float, ptr %vn1, align 4, !tbaa !12
  %call3 = call i32 @fp32_to_bits(float noundef %41)
  %shl4 = shl i32 %call3, 23
  %call5 = call float @fp32_from_bits(i32 noundef %shl4)
  store float %call5, ptr %vs1, align 4, !tbaa !12
  %42 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %43 = load float, ptr %vn0, align 4, !tbaa !12
  %sub = fsub float %43, %42
  store float %sub, ptr %vn0, align 4, !tbaa !12
  %44 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %45 = load float, ptr %vn1, align 4, !tbaa !12
  %sub6 = fsub float %45, %44
  store float %sub6, ptr %vn1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vt0) #5
  %46 = load float, ptr %vn0, align 4, !tbaa !12
  %47 = load float, ptr %vln2_hi, align 4, !tbaa !12
  %48 = load float, ptr %vz0, align 4, !tbaa !12
  %49 = call float @llvm.fmuladd.f32(float %46, float %47, float %48)
  store float %49, ptr %vt0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vt1) #5
  %50 = load float, ptr %vn1, align 4, !tbaa !12
  %51 = load float, ptr %vln2_hi, align 4, !tbaa !12
  %52 = load float, ptr %vz1, align 4, !tbaa !12
  %53 = call float @llvm.fmuladd.f32(float %50, float %51, float %52)
  store float %53, ptr %vt1, align 4, !tbaa !12
  %54 = load float, ptr %vn0, align 4, !tbaa !12
  %55 = load float, ptr %vln2_lo, align 4, !tbaa !12
  %56 = load float, ptr %vt0, align 4, !tbaa !12
  %57 = call float @llvm.fmuladd.f32(float %54, float %55, float %56)
  store float %57, ptr %vt0, align 4, !tbaa !12
  %58 = load float, ptr %vn1, align 4, !tbaa !12
  %59 = load float, ptr %vln2_lo, align 4, !tbaa !12
  %60 = load float, ptr %vt1, align 4, !tbaa !12
  %61 = call float @llvm.fmuladd.f32(float %58, float %59, float %60)
  store float %61, ptr %vt1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vp0) #5
  %62 = load float, ptr %vt0, align 4, !tbaa !12
  %63 = load float, ptr %vc5, align 4, !tbaa !12
  %64 = load float, ptr %vc4, align 4, !tbaa !12
  %65 = call float @llvm.fmuladd.f32(float %62, float %63, float %64)
  store float %65, ptr %vp0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vp1) #5
  %66 = load float, ptr %vt1, align 4, !tbaa !12
  %67 = load float, ptr %vc5, align 4, !tbaa !12
  %68 = load float, ptr %vc4, align 4, !tbaa !12
  %69 = call float @llvm.fmuladd.f32(float %66, float %67, float %68)
  store float %69, ptr %vp1, align 4, !tbaa !12
  %70 = load float, ptr %vt0, align 4, !tbaa !12
  %71 = load float, ptr %vp0, align 4, !tbaa !12
  %72 = load float, ptr %vc3, align 4, !tbaa !12
  %73 = call float @llvm.fmuladd.f32(float %70, float %71, float %72)
  store float %73, ptr %vp0, align 4, !tbaa !12
  %74 = load float, ptr %vt1, align 4, !tbaa !12
  %75 = load float, ptr %vp1, align 4, !tbaa !12
  %76 = load float, ptr %vc3, align 4, !tbaa !12
  %77 = call float @llvm.fmuladd.f32(float %74, float %75, float %76)
  store float %77, ptr %vp1, align 4, !tbaa !12
  %78 = load float, ptr %vt0, align 4, !tbaa !12
  %79 = load float, ptr %vp0, align 4, !tbaa !12
  %80 = load float, ptr %vc2, align 4, !tbaa !12
  %81 = call float @llvm.fmuladd.f32(float %78, float %79, float %80)
  store float %81, ptr %vp0, align 4, !tbaa !12
  %82 = load float, ptr %vt1, align 4, !tbaa !12
  %83 = load float, ptr %vp1, align 4, !tbaa !12
  %84 = load float, ptr %vc2, align 4, !tbaa !12
  %85 = call float @llvm.fmuladd.f32(float %82, float %83, float %84)
  store float %85, ptr %vp1, align 4, !tbaa !12
  %86 = load float, ptr %vt0, align 4, !tbaa !12
  %87 = load float, ptr %vp0, align 4, !tbaa !12
  %88 = load float, ptr %vc1, align 4, !tbaa !12
  %89 = call float @llvm.fmuladd.f32(float %86, float %87, float %88)
  store float %89, ptr %vp0, align 4, !tbaa !12
  %90 = load float, ptr %vt1, align 4, !tbaa !12
  %91 = load float, ptr %vp1, align 4, !tbaa !12
  %92 = load float, ptr %vc1, align 4, !tbaa !12
  %93 = call float @llvm.fmuladd.f32(float %90, float %91, float %92)
  store float %93, ptr %vp1, align 4, !tbaa !12
  %94 = load float, ptr %vs0, align 4, !tbaa !12
  %95 = load float, ptr %vt0, align 4, !tbaa !12
  %mul = fmul float %95, %94
  store float %mul, ptr %vt0, align 4, !tbaa !12
  %96 = load float, ptr %vs1, align 4, !tbaa !12
  %97 = load float, ptr %vt1, align 4, !tbaa !12
  %mul7 = fmul float %97, %96
  store float %mul7, ptr %vt1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %ve0) #5
  %98 = load float, ptr %vt0, align 4, !tbaa !12
  %99 = load float, ptr %vp0, align 4, !tbaa !12
  %100 = load float, ptr %vs0, align 4, !tbaa !12
  %101 = call float @llvm.fmuladd.f32(float %98, float %99, float %100)
  store float %101, ptr %ve0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %ve1) #5
  %102 = load float, ptr %vt1, align 4, !tbaa !12
  %103 = load float, ptr %vp1, align 4, !tbaa !12
  %104 = load float, ptr %vs1, align 4, !tbaa !12
  %105 = call float @llvm.fmuladd.f32(float %102, float %103, float %104)
  store float %105, ptr %ve1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vd0) #5
  %106 = load float, ptr %ve0, align 4, !tbaa !12
  %107 = load float, ptr %vone, align 4, !tbaa !12
  %add = fadd float %106, %107
  store float %add, ptr %vd0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vd1) #5
  %108 = load float, ptr %ve1, align 4, !tbaa !12
  %109 = load float, ptr %vone, align 4, !tbaa !12
  %add10 = fadd float %108, %109
  store float %add10, ptr %vd1, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vf0) #5
  %110 = load float, ptr %ve0, align 4, !tbaa !12
  %111 = load float, ptr %vd0, align 4, !tbaa !12
  %div = fdiv float %110, %111
  store float %div, ptr %vf0, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vf1) #5
  %112 = load float, ptr %ve1, align 4, !tbaa !12
  %113 = load float, ptr %vd1, align 4, !tbaa !12
  %div11 = fdiv float %112, %113
  store float %div11, ptr %vf1, align 4, !tbaa !12
  %114 = load float, ptr %vz0, align 4, !tbaa !12
  %115 = load float, ptr %vdenorm_cutoff, align 4, !tbaa !12
  %cmp12 = fcmp ogt float %114, %115
  %lnot = xor i1 %cmp12, true
  %lnot13 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot13 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %if.then, label %if.end, !unpredictable !14

if.then:                                          ; preds = %for.body
  store float 0.000000e+00, ptr %vf0, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %116 = load float, ptr %vz1, align 4, !tbaa !12
  %117 = load float, ptr %vdenorm_cutoff, align 4, !tbaa !12
  %cmp14 = fcmp ogt float %116, %117
  %lnot16 = xor i1 %cmp14, true
  %lnot18 = xor i1 %lnot16, true
  %lnot.ext19 = zext i1 %lnot18 to i32
  %conv20 = sext i32 %lnot.ext19 to i64
  %tobool21 = icmp ne i64 %conv20, 0
  br i1 %tobool21, label %if.then22, label %if.end23, !unpredictable !14

if.then22:                                        ; preds = %if.end
  store float 0.000000e+00, ptr %vf1, align 4, !tbaa !12
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end
  %118 = load float, ptr %vx0, align 4, !tbaa !12
  %cmp24 = fcmp ogt float %118, 0.000000e+00
  %lnot26 = xor i1 %cmp24, true
  %lnot28 = xor i1 %lnot26, true
  %lnot.ext29 = zext i1 %lnot28 to i32
  %conv30 = sext i32 %lnot.ext29 to i64
  %tobool31 = icmp ne i64 %conv30, 0
  br i1 %tobool31, label %if.then32, label %if.end34, !unpredictable !14

if.then32:                                        ; preds = %if.end23
  %119 = load float, ptr %vone, align 4, !tbaa !12
  %120 = load float, ptr %vf0, align 4, !tbaa !12
  %sub33 = fsub float %119, %120
  store float %sub33, ptr %vf0, align 4, !tbaa !12
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end23
  %121 = load float, ptr %vx1, align 4, !tbaa !12
  %cmp35 = fcmp ogt float %121, 0.000000e+00
  %lnot37 = xor i1 %cmp35, true
  %lnot39 = xor i1 %lnot37, true
  %lnot.ext40 = zext i1 %lnot39 to i32
  %conv41 = sext i32 %lnot.ext40 to i64
  %tobool42 = icmp ne i64 %conv41, 0
  br i1 %tobool42, label %if.then43, label %if.end45, !unpredictable !14

if.then43:                                        ; preds = %if.end34
  %122 = load float, ptr %vone, align 4, !tbaa !12
  %123 = load float, ptr %vf1, align 4, !tbaa !12
  %sub44 = fsub float %122, %123
  store float %sub44, ptr %vf1, align 4, !tbaa !12
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end34
  %124 = load float, ptr %vf0, align 4, !tbaa !12
  %125 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx46 = getelementptr inbounds float, ptr %125, i64 0
  store float %124, ptr %arrayidx46, align 4, !tbaa !12
  %126 = load float, ptr %vf1, align 4, !tbaa !12
  %127 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %arrayidx47 = getelementptr inbounds float, ptr %127, i64 1
  store float %126, ptr %arrayidx47, align 4, !tbaa !12
  %128 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr48 = getelementptr inbounds float, ptr %128, i64 2
  store ptr %add.ptr48, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %vf1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vf0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vd1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vd0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ve1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ve0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vp1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vp0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vt1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vt0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vs1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vs0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vn1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vn0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vz1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vz0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx0) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end45
  %129 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub49 = sub i64 %129, 8
  store i64 %sub49, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %130 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp50 = icmp ne i64 %130, 0
  %lnot52 = xor i1 %cmp50, true
  %lnot54 = xor i1 %lnot52, true
  %lnot.ext55 = zext i1 %lnot54 to i32
  %conv56 = sext i32 %lnot.ext55 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv56, i64 0)
  %tobool57 = icmp ne i64 %expval, 0
  br i1 %tobool57, label %if.then58, label %if.end95

if.then58:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx) #5
  %131 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %132 = load float, ptr %131, align 4, !tbaa !12
  store float %132, ptr %vx, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vz) #5
  %133 = load float, ptr %vx, align 4, !tbaa !12
  %134 = call float @llvm.fabs.f32(float %133)
  store float %134, ptr %vz, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vn) #5
  %135 = load float, ptr %vz, align 4, !tbaa !12
  %136 = load float, ptr %vminus_log2e, align 4, !tbaa !12
  %137 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %138 = call float @llvm.fmuladd.f32(float %135, float %136, float %137)
  store float %138, ptr %vn, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vs) #5
  %139 = load float, ptr %vn, align 4, !tbaa !12
  %call60 = call i32 @fp32_to_bits(float noundef %139)
  %shl61 = shl i32 %call60, 23
  %call62 = call float @fp32_from_bits(i32 noundef %shl61)
  store float %call62, ptr %vs, align 4, !tbaa !12
  %140 = load float, ptr %vmagic_bias, align 4, !tbaa !12
  %141 = load float, ptr %vn, align 4, !tbaa !12
  %sub63 = fsub float %141, %140
  store float %sub63, ptr %vn, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vt) #5
  %142 = load float, ptr %vn, align 4, !tbaa !12
  %143 = load float, ptr %vln2_hi, align 4, !tbaa !12
  %144 = load float, ptr %vz, align 4, !tbaa !12
  %145 = call float @llvm.fmuladd.f32(float %142, float %143, float %144)
  store float %145, ptr %vt, align 4, !tbaa !12
  %146 = load float, ptr %vn, align 4, !tbaa !12
  %147 = load float, ptr %vln2_lo, align 4, !tbaa !12
  %148 = load float, ptr %vt, align 4, !tbaa !12
  %149 = call float @llvm.fmuladd.f32(float %146, float %147, float %148)
  store float %149, ptr %vt, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vp) #5
  %150 = load float, ptr %vt, align 4, !tbaa !12
  %151 = load float, ptr %vc5, align 4, !tbaa !12
  %152 = load float, ptr %vc4, align 4, !tbaa !12
  %153 = call float @llvm.fmuladd.f32(float %150, float %151, float %152)
  store float %153, ptr %vp, align 4, !tbaa !12
  %154 = load float, ptr %vt, align 4, !tbaa !12
  %155 = load float, ptr %vp, align 4, !tbaa !12
  %156 = load float, ptr %vc3, align 4, !tbaa !12
  %157 = call float @llvm.fmuladd.f32(float %154, float %155, float %156)
  store float %157, ptr %vp, align 4, !tbaa !12
  %158 = load float, ptr %vt, align 4, !tbaa !12
  %159 = load float, ptr %vp, align 4, !tbaa !12
  %160 = load float, ptr %vc2, align 4, !tbaa !12
  %161 = call float @llvm.fmuladd.f32(float %158, float %159, float %160)
  store float %161, ptr %vp, align 4, !tbaa !12
  %162 = load float, ptr %vt, align 4, !tbaa !12
  %163 = load float, ptr %vp, align 4, !tbaa !12
  %164 = load float, ptr %vc1, align 4, !tbaa !12
  %165 = call float @llvm.fmuladd.f32(float %162, float %163, float %164)
  store float %165, ptr %vp, align 4, !tbaa !12
  %166 = load float, ptr %vs, align 4, !tbaa !12
  %167 = load float, ptr %vt, align 4, !tbaa !12
  %mul70 = fmul float %167, %166
  store float %mul70, ptr %vt, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %ve) #5
  %168 = load float, ptr %vt, align 4, !tbaa !12
  %169 = load float, ptr %vp, align 4, !tbaa !12
  %170 = load float, ptr %vs, align 4, !tbaa !12
  %171 = call float @llvm.fmuladd.f32(float %168, float %169, float %170)
  store float %171, ptr %ve, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vd) #5
  %172 = load float, ptr %ve, align 4, !tbaa !12
  %173 = load float, ptr %vone, align 4, !tbaa !12
  %add72 = fadd float %172, %173
  store float %add72, ptr %vd, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %vf) #5
  %174 = load float, ptr %ve, align 4, !tbaa !12
  %175 = load float, ptr %vd, align 4, !tbaa !12
  %div73 = fdiv float %174, %175
  store float %div73, ptr %vf, align 4, !tbaa !12
  %176 = load float, ptr %vz, align 4, !tbaa !12
  %177 = load float, ptr %vdenorm_cutoff, align 4, !tbaa !12
  %cmp74 = fcmp ogt float %176, %177
  %lnot76 = xor i1 %cmp74, true
  %lnot78 = xor i1 %lnot76, true
  %lnot.ext79 = zext i1 %lnot78 to i32
  %conv80 = sext i32 %lnot.ext79 to i64
  %tobool81 = icmp ne i64 %conv80, 0
  br i1 %tobool81, label %if.then82, label %if.end83, !unpredictable !14

if.then82:                                        ; preds = %if.then58
  store float 0.000000e+00, ptr %vf, align 4, !tbaa !12
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.then58
  %178 = load float, ptr %vx, align 4, !tbaa !12
  %cmp84 = fcmp ogt float %178, 0.000000e+00
  %lnot86 = xor i1 %cmp84, true
  %lnot88 = xor i1 %lnot86, true
  %lnot.ext89 = zext i1 %lnot88 to i32
  %conv90 = sext i32 %lnot.ext89 to i64
  %tobool91 = icmp ne i64 %conv90, 0
  br i1 %tobool91, label %if.then92, label %if.end94, !unpredictable !14

if.then92:                                        ; preds = %if.end83
  %179 = load float, ptr %vone, align 4, !tbaa !12
  %180 = load float, ptr %vf, align 4, !tbaa !12
  %sub93 = fsub float %179, %180
  store float %sub93, ptr %vf, align 4, !tbaa !12
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end83
  %181 = load float, ptr %vf, align 4, !tbaa !12
  %182 = load ptr, ptr %y.addr, align 8, !tbaa !9
  store float %181, ptr %182, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr %vf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vd) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ve) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vn) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx) #5
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %vdenorm_cutoff) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vone) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vc1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vc2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vc3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vc4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vc5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vln2_lo) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vln2_hi) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vminus_log2e) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %vmagic_bias) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: inlinehint nounwind uwtable
define internal float @fp32_from_bits(i32 noundef %w) #3 {
entry:
  %w.addr = alloca i32, align 4
  %fp32 = alloca %union.anon, align 4
  store i32 %w, ptr %w.addr, align 4, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #5
  %0 = load i32, ptr %w.addr, align 4, !tbaa !17
  store i32 %0, ptr %fp32, align 4, !tbaa !11
  %1 = load float, ptr %fp32, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %fp32) #5
  ret float %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fp32_to_bits(float noundef %f) #3 {
entry:
  %f.addr = alloca float, align 4
  %fp32 = alloca %union.anon.9, align 4
  store float %f, ptr %f.addr, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %fp32) #5
  %0 = load float, ptr %f.addr, align 4, !tbaa !12
  store float %0, ptr %fp32, align 4, !tbaa !11
  %1 = load i32, ptr %fp32, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %fp32) #5
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nounwind }

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
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !7, i64 0}

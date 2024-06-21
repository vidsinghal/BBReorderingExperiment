; ModuleID = 'samples/930.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f16-vbinary/gen/vaddc-minmax-f16c-x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [8 x float], [8 x float] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f16_vaddc_minmax_ukernel__f16c_x8(i64 noundef %n, ptr noalias noundef %a_ptr, ptr noalias noundef %b_ptr, ptr noalias noundef %y_ptr, ptr noalias noundef align 32 dereferenceable(64) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %a_ptr.addr = alloca ptr, align 8
  %b_ptr.addr = alloca ptr, align 8
  %y_ptr.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %y = alloca ptr, align 8
  %vy_min = alloca <8 x float>, align 32
  %vy_max = alloca <8 x float>, align 32
  %vb = alloca <8 x float>, align 32
  %va = alloca <8 x float>, align 32
  %vy = alloca <8 x float>, align 32
  %va14 = alloca <8 x float>, align 32
  %vy17 = alloca <8 x float>, align 32
  %vh = alloca <2 x i64>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %a_ptr, ptr %a_ptr.addr, align 8, !tbaa !9
  store ptr %b_ptr, ptr %b_ptr.addr, align 8, !tbaa !9
  store ptr %y_ptr, ptr %y_ptr.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5
  %0 = load ptr, ptr %a_ptr.addr, align 8, !tbaa !9
  store ptr %0, ptr %a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #5
  %1 = load ptr, ptr %b_ptr.addr, align 8, !tbaa !9
  store ptr %1, ptr %b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  %2 = load ptr, ptr %y_ptr.addr, align 8, !tbaa !9
  store ptr %2, ptr %y, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy_min) #5
  %3 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x float], ptr %min, i64 0, i64 0
  %call = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call, ptr %vy_min, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy_max) #5
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [8 x float], ptr %max, i64 0, i64 0
  %call2 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay1)
  store <8 x float> %call2, ptr %vy_max, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vb) #5
  %5 = load ptr, ptr %b, align 8, !tbaa !9
  %6 = load i16, ptr %5, align 2, !tbaa !12
  %call3 = call <2 x i64> @_mm_set1_epi16(i16 noundef signext %6)
  %call4 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call3)
  store <8 x float> %call4, ptr %vb, align 32, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %7, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %va) #5
  %8 = load ptr, ptr %a, align 8, !tbaa !9
  %call5 = call <2 x i64> @_mm_loadu_si128(ptr noundef %8)
  %call6 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call5)
  store <8 x float> %call6, ptr %va, align 32, !tbaa !11
  %9 = load ptr, ptr %a, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i16, ptr %9, i64 8
  store ptr %add.ptr, ptr %a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy) #5
  %10 = load <8 x float>, ptr %va, align 32, !tbaa !11
  %11 = load <8 x float>, ptr %vb, align 32, !tbaa !11
  %call7 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %10, <8 x float> noundef %11)
  %12 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call7, i32 8)
  %13 = bitcast <8 x i16> %12 to <2 x i64>
  %call8 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %13)
  store <8 x float> %call8, ptr %vy, align 32, !tbaa !11
  %14 = load <8 x float>, ptr %vy, align 32, !tbaa !11
  %15 = load <8 x float>, ptr %vy_min, align 32, !tbaa !11
  %call9 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %14, <8 x float> noundef %15)
  store <8 x float> %call9, ptr %vy, align 32, !tbaa !11
  %16 = load <8 x float>, ptr %vy, align 32, !tbaa !11
  %17 = load <8 x float>, ptr %vy_max, align 32, !tbaa !11
  %call10 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %16, <8 x float> noundef %17)
  store <8 x float> %call10, ptr %vy, align 32, !tbaa !11
  %18 = load ptr, ptr %y, align 8, !tbaa !9
  %19 = load <8 x float>, ptr %vy, align 32, !tbaa !11
  %20 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %19, i32 8)
  %21 = bitcast <8 x i16> %20 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %18, <2 x i64> noundef %21)
  %22 = load ptr, ptr %y, align 8, !tbaa !9
  %add.ptr11 = getelementptr inbounds i16, ptr %22, i64 8
  store ptr %add.ptr11, ptr %y, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %va) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %23, 16
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %24 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp12 = icmp ne i64 %24, 0
  %lnot = xor i1 %cmp12, true
  %lnot13 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot13 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end39

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 32, ptr %va14) #5
  %25 = load ptr, ptr %a, align 8, !tbaa !9
  %call15 = call <2 x i64> @_mm_loadu_si128(ptr noundef %25)
  %call16 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call15)
  store <8 x float> %call16, ptr %va14, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy17) #5
  %26 = load <8 x float>, ptr %va14, align 32, !tbaa !11
  %27 = load <8 x float>, ptr %vb, align 32, !tbaa !11
  %call18 = call <8 x float> @_mm256_add_ps(<8 x float> noundef %26, <8 x float> noundef %27)
  %28 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %call18, i32 8)
  %29 = bitcast <8 x i16> %28 to <2 x i64>
  %call19 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %29)
  store <8 x float> %call19, ptr %vy17, align 32, !tbaa !11
  %30 = load <8 x float>, ptr %vy17, align 32, !tbaa !11
  %31 = load <8 x float>, ptr %vy_min, align 32, !tbaa !11
  %call20 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %30, <8 x float> noundef %31)
  store <8 x float> %call20, ptr %vy17, align 32, !tbaa !11
  %32 = load <8 x float>, ptr %vy17, align 32, !tbaa !11
  %33 = load <8 x float>, ptr %vy_max, align 32, !tbaa !11
  %call21 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %32, <8 x float> noundef %33)
  store <8 x float> %call21, ptr %vy17, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vh) #5
  %34 = load <8 x float>, ptr %vy17, align 32, !tbaa !11
  %35 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %34, i32 8)
  %36 = bitcast <8 x i16> %35 to <2 x i64>
  store <2 x i64> %36, ptr %vh, align 16, !tbaa !11
  %37 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and = and i64 %37, 8
  %tobool22 = icmp ne i64 %and, 0
  br i1 %tobool22, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then
  %38 = load ptr, ptr %y, align 8, !tbaa !9
  %39 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %38, <2 x i64> noundef %39)
  %40 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  %41 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  %call24 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %40, <2 x i64> noundef %41)
  store <2 x i64> %call24, ptr %vh, align 16, !tbaa !11
  %42 = load ptr, ptr %y, align 8, !tbaa !9
  %add.ptr25 = getelementptr inbounds i16, ptr %42, i64 4
  store ptr %add.ptr25, ptr %y, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then
  %43 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and26 = and i64 %43, 4
  %tobool27 = icmp ne i64 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.end
  %44 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  %call29 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %44)
  %45 = load ptr, ptr %y, align 8, !tbaa !9
  store i32 %call29, ptr %45, align 4, !tbaa !16
  %46 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  %call30 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %46, i32 noundef 32)
  store <2 x i64> %call30, ptr %vh, align 16, !tbaa !11
  %47 = load ptr, ptr %y, align 8, !tbaa !9
  %add.ptr31 = getelementptr inbounds i16, ptr %47, i64 2
  store ptr %add.ptr31, ptr %y, align 8, !tbaa !9
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end
  %48 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and33 = and i64 %48, 2
  %tobool34 = icmp ne i64 %and33, 0
  br i1 %tobool34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end32
  %49 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  %50 = bitcast <2 x i64> %49 to <8 x i16>
  %51 = extractelement <8 x i16> %50, i64 0
  %conv36 = zext i16 %51 to i32
  %conv37 = trunc i32 %conv36 to i16
  %52 = load ptr, ptr %y, align 8, !tbaa !9
  store i16 %conv37, ptr %52, align 2, !tbaa !12
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32
  call void @llvm.lifetime.end.p0(i64 16, ptr %vh) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy17) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %va14) #5
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %for.end
  call void @llvm.lifetime.end.p0(i64 32, ptr %vb) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy_max) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy_min) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <8 x float>, ptr %0, align 32, !tbaa !11
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %__a) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = bitcast <8 x i16> %1 to <8 x half>
  %cvtph2ps = fpext <8 x half> %2 to <8 x float>
  ret <8 x float> %cvtph2ps
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set1_epi16(i16 noundef signext %__w) #3 {
entry:
  %__w.addr = alloca i16, align 2
  store i16 %__w, ptr %__w.addr, align 2, !tbaa !12
  %0 = load i16, ptr %__w.addr, align 2, !tbaa !12
  %1 = load i16, ptr %__w.addr, align 2, !tbaa !12
  %2 = load i16, ptr %__w.addr, align 2, !tbaa !12
  %3 = load i16, ptr %__w.addr, align 2, !tbaa !12
  %4 = load i16, ptr %__w.addr, align 2, !tbaa !12
  %5 = load i16, ptr %__w.addr, align 2, !tbaa !12
  %6 = load i16, ptr %__w.addr, align 2, !tbaa !12
  %7 = load i16, ptr %__w.addr, align 2, !tbaa !12
  %call = call <2 x i64> @_mm_set_epi16(i16 noundef signext %0, i16 noundef signext %1, i16 noundef signext %2, i16 noundef signext %3, i16 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7)
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !11
  ret <2 x i64> %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float>, i32 immarg) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_add_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %add = fadd <8 x float> %0, %1
  ret <8 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_max_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %2 = call <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_min_ps(<8 x float> noundef %__a, <8 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  %__b.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !11
  store <8 x float> %__b, ptr %__b.addr, align 32, !tbaa !11
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !11
  %1 = load <8 x float>, ptr %__b.addr, align 32, !tbaa !11
  %2 = call <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %0, <8 x float> %1)
  ret <8 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_epi64(ptr noundef %__p, <2 x i64> noundef %__a) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <2 x i64> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storel_epi64_struct, ptr %1, i32 0, i32 0
  store i64 %vecext, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !11
  %shuffle = shufflevector <2 x i64> %0, <2 x i64> %1, <2 x i32> <i32 1, i32 3>
  ret <2 x i64> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @_mm_cvtsi128_si32(<2 x i64> noundef %__a) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b = alloca <4 x i32>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %__b) #5
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  store <4 x i32> %1, ptr %__b, align 16, !tbaa !11
  %2 = load <4 x i32>, ptr %__b, align 16, !tbaa !11
  %vecext = extractelement <4 x i32> %2, i32 0
  call void @llvm.lifetime.end.p0(i64 16, ptr %__b) #5
  ret i32 %vecext
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %__a, i32 noundef %__count) #3 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !11
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !16
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !16
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set_epi16(i16 noundef signext %__w7, i16 noundef signext %__w6, i16 noundef signext %__w5, i16 noundef signext %__w4, i16 noundef signext %__w3, i16 noundef signext %__w2, i16 noundef signext %__w1, i16 noundef signext %__w0) #3 {
entry:
  %__w7.addr = alloca i16, align 2
  %__w6.addr = alloca i16, align 2
  %__w5.addr = alloca i16, align 2
  %__w4.addr = alloca i16, align 2
  %__w3.addr = alloca i16, align 2
  %__w2.addr = alloca i16, align 2
  %__w1.addr = alloca i16, align 2
  %__w0.addr = alloca i16, align 2
  %.compoundliteral = alloca <8 x i16>, align 16
  store i16 %__w7, ptr %__w7.addr, align 2, !tbaa !12
  store i16 %__w6, ptr %__w6.addr, align 2, !tbaa !12
  store i16 %__w5, ptr %__w5.addr, align 2, !tbaa !12
  store i16 %__w4, ptr %__w4.addr, align 2, !tbaa !12
  store i16 %__w3, ptr %__w3.addr, align 2, !tbaa !12
  store i16 %__w2, ptr %__w2.addr, align 2, !tbaa !12
  store i16 %__w1, ptr %__w1.addr, align 2, !tbaa !12
  store i16 %__w0, ptr %__w0.addr, align 2, !tbaa !12
  %0 = load i16, ptr %__w0.addr, align 2, !tbaa !12
  %vecinit = insertelement <8 x i16> undef, i16 %0, i32 0
  %1 = load i16, ptr %__w1.addr, align 2, !tbaa !12
  %vecinit1 = insertelement <8 x i16> %vecinit, i16 %1, i32 1
  %2 = load i16, ptr %__w2.addr, align 2, !tbaa !12
  %vecinit2 = insertelement <8 x i16> %vecinit1, i16 %2, i32 2
  %3 = load i16, ptr %__w3.addr, align 2, !tbaa !12
  %vecinit3 = insertelement <8 x i16> %vecinit2, i16 %3, i32 3
  %4 = load i16, ptr %__w4.addr, align 2, !tbaa !12
  %vecinit4 = insertelement <8 x i16> %vecinit3, i16 %4, i32 4
  %5 = load i16, ptr %__w5.addr, align 2, !tbaa !12
  %vecinit5 = insertelement <8 x i16> %vecinit4, i16 %5, i32 5
  %6 = load i16, ptr %__w6.addr, align 2, !tbaa !12
  %vecinit6 = insertelement <8 x i16> %vecinit5, i16 %6, i32 6
  %7 = load i16, ptr %__w7.addr, align 2, !tbaa !12
  %vecinit7 = insertelement <8 x i16> %vecinit6, i16 %7, i32 7
  store <8 x i16> %vecinit7, ptr %.compoundliteral, align 16, !tbaa !11
  %8 = load <8 x i16>, ptr %.compoundliteral, align 16, !tbaa !11
  %9 = bitcast <8 x i16> %8 to <2 x i64>
  ret <2 x i64> %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64>, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!13 = !{!"short", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !7, i64 0}

; ModuleID = 'samples/609.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f16-vclamp/gen/vclamp-f16c-x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [8 x float], [8 x float] }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_storel_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f16_vclamp_ukernel__f16c_x8(i64 noundef %n, ptr noalias noundef %x_ptr, ptr noalias noundef %y_ptr, ptr noalias noundef align 32 dereferenceable(64) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x_ptr.addr = alloca ptr, align 8
  %y_ptr.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  %y = alloca ptr, align 8
  %vy_min = alloca <8 x float>, align 32
  %vy_max = alloca <8 x float>, align 32
  %vacc = alloca <8 x float>, align 32
  %vacc10 = alloca <8 x float>, align 32
  %vh = alloca <2 x i64>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %x_ptr, ptr %x_ptr.addr, align 8, !tbaa !9
  store ptr %y_ptr, ptr %y_ptr.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #5
  %0 = load ptr, ptr %x_ptr.addr, align 8, !tbaa !9
  store ptr %0, ptr %x, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  %1 = load ptr, ptr %y_ptr.addr, align 8, !tbaa !9
  store ptr %1, ptr %y, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy_min) #5
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %min = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x float], ptr %min, i64 0, i64 0
  %call = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay)
  store <8 x float> %call, ptr %vy_min, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy_max) #5
  %3 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %max = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [8 x float], ptr %max, i64 0, i64 0
  %call2 = call <8 x float> @_mm256_load_ps(ptr noundef %arraydecay1)
  store <8 x float> %call2, ptr %vy_max, align 32, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %4, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc) #5
  %5 = load ptr, ptr %x, align 8, !tbaa !9
  %call3 = call <2 x i64> @_mm_loadu_si128(ptr noundef %5)
  %call4 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call3)
  store <8 x float> %call4, ptr %vacc, align 32, !tbaa !11
  %6 = load ptr, ptr %x, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i16, ptr %6, i64 8
  store ptr %add.ptr, ptr %x, align 8, !tbaa !9
  %7 = load <8 x float>, ptr %vacc, align 32, !tbaa !11
  %8 = load <8 x float>, ptr %vy_min, align 32, !tbaa !11
  %call5 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %7, <8 x float> noundef %8)
  store <8 x float> %call5, ptr %vacc, align 32, !tbaa !11
  %9 = load <8 x float>, ptr %vacc, align 32, !tbaa !11
  %10 = load <8 x float>, ptr %vy_max, align 32, !tbaa !11
  %call6 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %9, <8 x float> noundef %10)
  store <8 x float> %call6, ptr %vacc, align 32, !tbaa !11
  %11 = load ptr, ptr %y, align 8, !tbaa !9
  %12 = load <8 x float>, ptr %vacc, align 32, !tbaa !11
  %13 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %12, i32 8)
  %14 = bitcast <8 x i16> %13 to <2 x i64>
  call void @_mm_storeu_si128(ptr noundef %11, <2 x i64> noundef %14)
  %15 = load ptr, ptr %y, align 8, !tbaa !9
  %add.ptr7 = getelementptr inbounds i16, ptr %15, i64 8
  store ptr %add.ptr7, ptr %y, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %16, 16
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %17 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp8 = icmp ne i64 %17, 0
  %lnot = xor i1 %cmp8, true
  %lnot9 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot9 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end32

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 32, ptr %vacc10) #5
  %18 = load ptr, ptr %x, align 8, !tbaa !9
  %call11 = call <2 x i64> @_mm_loadu_si128(ptr noundef %18)
  %call12 = call <8 x float> @_mm256_cvtph_ps(<2 x i64> noundef %call11)
  store <8 x float> %call12, ptr %vacc10, align 32, !tbaa !11
  %19 = load <8 x float>, ptr %vacc10, align 32, !tbaa !11
  %20 = load <8 x float>, ptr %vy_min, align 32, !tbaa !11
  %call13 = call <8 x float> @_mm256_max_ps(<8 x float> noundef %19, <8 x float> noundef %20)
  store <8 x float> %call13, ptr %vacc10, align 32, !tbaa !11
  %21 = load <8 x float>, ptr %vacc10, align 32, !tbaa !11
  %22 = load <8 x float>, ptr %vy_max, align 32, !tbaa !11
  %call14 = call <8 x float> @_mm256_min_ps(<8 x float> noundef %21, <8 x float> noundef %22)
  store <8 x float> %call14, ptr %vacc10, align 32, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vh) #5
  %23 = load <8 x float>, ptr %vacc10, align 32, !tbaa !11
  %24 = call <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float> %23, i32 8)
  %25 = bitcast <8 x i16> %24 to <2 x i64>
  store <2 x i64> %25, ptr %vh, align 16, !tbaa !11
  %26 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and = and i64 %26, 8
  %tobool15 = icmp ne i64 %and, 0
  br i1 %tobool15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then
  %27 = load ptr, ptr %y, align 8, !tbaa !9
  %28 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  call void @_mm_storel_epi64(ptr noundef %27, <2 x i64> noundef %28)
  %29 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  %30 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  %call17 = call <2 x i64> @_mm_unpackhi_epi64(<2 x i64> noundef %29, <2 x i64> noundef %30)
  store <2 x i64> %call17, ptr %vh, align 16, !tbaa !11
  %31 = load ptr, ptr %y, align 8, !tbaa !9
  %add.ptr18 = getelementptr inbounds i16, ptr %31, i64 4
  store ptr %add.ptr18, ptr %y, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.then
  %32 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and19 = and i64 %32, 4
  %tobool20 = icmp ne i64 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end
  %33 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  %call22 = call i32 @_mm_cvtsi128_si32(<2 x i64> noundef %33)
  %34 = load ptr, ptr %y, align 8, !tbaa !9
  store i32 %call22, ptr %34, align 4, !tbaa !14
  %35 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  %call23 = call <2 x i64> @_mm_srli_epi64(<2 x i64> noundef %35, i32 noundef 32)
  store <2 x i64> %call23, ptr %vh, align 16, !tbaa !11
  %36 = load ptr, ptr %y, align 8, !tbaa !9
  %add.ptr24 = getelementptr inbounds i16, ptr %36, i64 2
  store ptr %add.ptr24, ptr %y, align 8, !tbaa !9
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end
  %37 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and26 = and i64 %37, 2
  %tobool27 = icmp ne i64 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end25
  %38 = load <2 x i64>, ptr %vh, align 16, !tbaa !11
  %39 = bitcast <2 x i64> %38 to <8 x i16>
  %40 = extractelement <8 x i16> %39, i64 0
  %conv29 = zext i16 %40 to i32
  %conv30 = trunc i32 %conv29 to i16
  %41 = load ptr, ptr %y, align 8, !tbaa !9
  store i16 %conv30, ptr %41, align 2, !tbaa !16
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25
  call void @llvm.lifetime.end.p0(i64 16, ptr %vh) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vacc10) #5
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %for.end
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy_max) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy_min) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #5
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
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #3 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !11
  ret <2 x i64> %1
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float>, i32 immarg) #4

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
  store i32 %__count, ptr %__count.addr, align 4, !tbaa !14
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load i32, ptr %__count.addr, align 4, !tbaa !14
  %2 = call <2 x i64> @llvm.x86.sse2.psrli.q(<2 x i64> %0, i32 %1)
  ret <2 x i64> %2
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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !7, i64 0}

; ModuleID = 'samples/250.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vrnd/gen/vrndu-avx-x16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { [14 x i32] }
%struct.__loadu_ps = type { <8 x float> }
%struct.__storeu_ps = type { <8 x float> }
%struct.__loadu_si256 = type { <4 x i64> }
%struct.__storeu_ps.1 = type { <4 x float> }
%struct.__mm_storeh_pi_struct = type { <2 x float> }
%struct.__mm_store_ss_struct = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vrndu_ukernel__avx_x16(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noalias noundef align 16 dereferenceable(64) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vx01234567 = alloca <8 x float>, align 32
  %vx89ABCDEF = alloca <8 x float>, align 32
  %vy01234567 = alloca <8 x float>, align 32
  %vy89ABCDEF = alloca <8 x float>, align 32
  %vx = alloca <8 x float>, align 32
  %vy = alloca <8 x float>, align 32
  %vmask = alloca <4 x i64>, align 32
  %vx18 = alloca <8 x float>, align 32
  %vy20 = alloca <8 x float>, align 32
  %vy_lo = alloca <4 x float>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !8
  store ptr %y, ptr %y.addr, align 8, !tbaa !8
  store ptr %params, ptr %params.addr, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp uge i64 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx01234567) #6
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %call = call <8 x float> @_mm256_loadu_ps(ptr noundef %1)
  store <8 x float> %call, ptr %vx01234567, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx89ABCDEF) #6
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds float, ptr %2, i64 8
  %call1 = call <8 x float> @_mm256_loadu_ps(ptr noundef %add.ptr)
  store <8 x float> %call1, ptr %vx89ABCDEF, align 32, !tbaa !10
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr2 = getelementptr inbounds float, ptr %3, i64 16
  store ptr %add.ptr2, ptr %x.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy01234567) #6
  %4 = load <8 x float>, ptr %vx01234567, align 32, !tbaa !10
  %5 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %4, i32 10)
  store <8 x float> %5, ptr %vy01234567, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy89ABCDEF) #6
  %6 = load <8 x float>, ptr %vx89ABCDEF, align 32, !tbaa !10
  %7 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %6, i32 10)
  store <8 x float> %7, ptr %vy89ABCDEF, align 32, !tbaa !10
  %8 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %9 = load <8 x float>, ptr %vy01234567, align 32, !tbaa !10
  call void @_mm256_storeu_ps(ptr noundef %8, <8 x float> noundef %9)
  %10 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr3 = getelementptr inbounds float, ptr %10, i64 8
  %11 = load <8 x float>, ptr %vy89ABCDEF, align 32, !tbaa !10
  call void @_mm256_storeu_ps(ptr noundef %add.ptr3, <8 x float> noundef %11)
  %12 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr4 = getelementptr inbounds float, ptr %12, i64 16
  store ptr %add.ptr4, ptr %y.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy01234567) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx89ABCDEF) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx01234567) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub = sub i64 %13, 64
  store i64 %sub, ptr %n.addr, align 8, !tbaa !4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc11, %for.end
  %14 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp6 = icmp uge i64 %14, 32
  br i1 %cmp6, label %for.body7, label %for.end13

for.body7:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx) #6
  %15 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %call8 = call <8 x float> @_mm256_loadu_ps(ptr noundef %15)
  store <8 x float> %call8, ptr %vx, align 32, !tbaa !10
  %16 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %add.ptr9 = getelementptr inbounds float, ptr %16, i64 8
  store ptr %add.ptr9, ptr %x.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy) #6
  %17 = load <8 x float>, ptr %vx, align 32, !tbaa !10
  %18 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %17, i32 10)
  store <8 x float> %18, ptr %vy, align 32, !tbaa !10
  %19 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %20 = load <8 x float>, ptr %vy, align 32, !tbaa !10
  call void @_mm256_storeu_ps(ptr noundef %19, <8 x float> noundef %20)
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr10 = getelementptr inbounds float, ptr %21, i64 8
  store ptr %add.ptr10, ptr %y.addr, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx) #6
  br label %for.inc11

for.inc11:                                        ; preds = %for.body7
  %22 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub12 = sub i64 %22, 32
  store i64 %sub12, ptr %n.addr, align 8, !tbaa !4
  br label %for.cond5

for.end13:                                        ; preds = %for.cond5
  %23 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp14 = icmp ne i64 %23, 0
  %lnot = xor i1 %cmp14, true
  %lnot15 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot15 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end35

if.then:                                          ; preds = %for.end13
  call void @llvm.lifetime.start.p0(i64 32, ptr %vmask) #6
  %24 = load ptr, ptr %params.addr, align 8, !tbaa !8
  %mask_table = getelementptr inbounds %struct.anon.0, ptr %24, i32 0, i32 0
  %arrayidx = getelementptr inbounds [14 x i32], ptr %mask_table, i64 0, i64 7
  %25 = ptrtoint ptr %arrayidx to i64
  %26 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub16 = sub i64 %25, %26
  %27 = inttoptr i64 %sub16 to ptr
  %call17 = call <4 x i64> @_mm256_loadu_si256(ptr noundef %27)
  store <4 x i64> %call17, ptr %vmask, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vx18) #6
  %28 = load ptr, ptr %x.addr, align 8, !tbaa !8
  %29 = load <4 x i64>, ptr %vmask, align 32, !tbaa !10
  %call19 = call <8 x float> @_mm256_maskload_ps(ptr noundef %28, <4 x i64> noundef %29)
  store <8 x float> %call19, ptr %vx18, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 32, ptr %vy20) #6
  %30 = load <8 x float>, ptr %vx18, align 32, !tbaa !10
  %31 = call <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %30, i32 10)
  store <8 x float> %31, ptr %vy20, align 32, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vy_lo) #6
  %32 = load <8 x float>, ptr %vy20, align 32, !tbaa !10
  %call21 = call <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %32)
  store <4 x float> %call21, ptr %vy_lo, align 16, !tbaa !10
  %33 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and = and i64 %33, 16
  %tobool22 = icmp ne i64 %and, 0
  br i1 %tobool22, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then
  %34 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %35 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !10
  call void @_mm_storeu_ps(ptr noundef %34, <4 x float> noundef %35)
  %36 = load <8 x float>, ptr %vy20, align 32, !tbaa !10
  %extract = shufflevector <8 x float> %36, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %extract, ptr %vy_lo, align 16, !tbaa !10
  %37 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr24 = getelementptr inbounds float, ptr %37, i64 4
  store ptr %add.ptr24, ptr %y.addr, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then
  %38 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and25 = and i64 %38, 8
  %tobool26 = icmp ne i64 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end
  %39 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %40 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !10
  call void @_mm_storel_pi(ptr noundef %39, <4 x float> noundef %40)
  %41 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !10
  %42 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !10
  %call28 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %41, <4 x float> noundef %42)
  store <4 x float> %call28, ptr %vy_lo, align 16, !tbaa !10
  %43 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %add.ptr29 = getelementptr inbounds float, ptr %43, i64 2
  store ptr %add.ptr29, ptr %y.addr, align 8, !tbaa !8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end
  %44 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and31 = and i64 %44, 4
  %tobool32 = icmp ne i64 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  %45 = load ptr, ptr %y.addr, align 8, !tbaa !8
  %46 = load <4 x float>, ptr %vy_lo, align 16, !tbaa !10
  call void @_mm_store_ss(ptr noundef %45, <4 x float> noundef %46)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30
  call void @llvm.lifetime.end.p0(i64 16, ptr %vy_lo) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vy20) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vx18) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr %vmask) #6
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %for.end13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <8 x float>, ptr %__v, align 1, !tbaa !10
  ret <8 x float> %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm256_storeu_ps(ptr noundef %__p, <8 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <8 x float>, align 32
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !10
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <8 x float> %0, ptr %__v, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @_mm256_loadu_si256(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__loadu_si256, ptr %0, i32 0, i32 0
  %1 = load <4 x i64>, ptr %__v, align 1, !tbaa !10
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @_mm256_maskload_ps(ptr noundef %__p, <4 x i64> noundef %__m) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__m.addr = alloca <4 x i64>, align 32
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <4 x i64> %__m, ptr %__m.addr, align 32, !tbaa !10
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %1 = load <4 x i64>, ptr %__m.addr, align 32, !tbaa !10
  %2 = bitcast <4 x i64> %1 to <8 x i32>
  %3 = call <8 x float> @llvm.x86.avx.maskload.ps.256(ptr %0, <8 x i32> %2)
  ret <8 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm256_castps256_ps128(<8 x float> noundef %__a) #2 {
entry:
  %__a.addr = alloca <8 x float>, align 32
  store <8 x float> %__a, ptr %__a.addr, align 32, !tbaa !10
  %0 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %1 = load <8 x float>, ptr %__a.addr, align 32, !tbaa !10
  %shuffle = shufflevector <8 x float> %0, <8 x float> %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_ps(ptr noundef %__p, <4 x float> noundef %__a) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__storeu_ps.1, ptr %1, i32 0, i32 0
  store <4 x float> %0, ptr %__v, align 1, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_pi(ptr noundef %__p, <4 x float> noundef %__a) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <2 x i32> <i32 0, i32 1>
  %2 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_storeh_pi_struct, ptr %2, i32 0, i32 0
  store <2 x float> %shuffle, ptr %__u, align 1, !tbaa !10
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_movehl_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !10
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_store_ss(ptr noundef %__p, <4 x float> noundef %__a) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !10
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !10
  %vecext = extractelement <4 x float> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_store_ss_struct, ptr %1, i32 0, i32 0
  store float %vecext, ptr %__u, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.x86.avx.maskload.ps.256(ptr, <8 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!6, !6, i64 0}

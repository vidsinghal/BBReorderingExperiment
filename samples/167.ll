; ModuleID = 'samples/167.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/x32-zip/x2-sse2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__loadu_si128 = type { <2 x i64> }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__mm_loadl_epi64_struct = type { i64 }

; Function Attrs: nounwind uwtable
define hidden void @xnn_x32_zip_x2_ukernel__sse2(i64 noundef %n, ptr noundef %input, ptr noundef %output) #0 {
entry:
  %n.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  %y = alloca ptr, align 8
  %o = alloca ptr, align 8
  %vx = alloca <2 x i64>, align 16
  %vy = alloca <2 x i64>, align 16
  %vxy_lo = alloca <2 x i64>, align 16
  %vxy_hi = alloca <2 x i64>, align 16
  %vx11 = alloca <2 x i64>, align 16
  %vy14 = alloca <2 x i64>, align 16
  %vxy = alloca <2 x i64>, align 16
  %vx22 = alloca i32, align 4
  %vy23 = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %input, ptr %input.addr, align 8, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #4
  %0 = load ptr, ptr %input.addr, align 8, !tbaa !8
  store ptr %0, ptr %x, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #4
  %1 = load ptr, ptr %x, align 8, !tbaa !8
  %2 = ptrtoint ptr %1 to i64
  %3 = load i64, ptr %n.addr, align 8, !tbaa !4
  %add = add i64 %2, %3
  %4 = inttoptr i64 %add to ptr
  store ptr %4, ptr %y, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %o) #4
  %5 = load ptr, ptr %output.addr, align 8, !tbaa !8
  store ptr %5, ptr %o, align 8, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %6 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp = icmp uge i64 %6, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vx) #4
  %7 = load ptr, ptr %x, align 8, !tbaa !8
  %call = call <2 x i64> @_mm_loadu_si128(ptr noundef %7)
  store <2 x i64> %call, ptr %vx, align 16, !tbaa !10
  %8 = load ptr, ptr %x, align 8, !tbaa !8
  %add.ptr = getelementptr inbounds i32, ptr %8, i64 4
  store ptr %add.ptr, ptr %x, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vy) #4
  %9 = load ptr, ptr %y, align 8, !tbaa !8
  %call1 = call <2 x i64> @_mm_loadu_si128(ptr noundef %9)
  store <2 x i64> %call1, ptr %vy, align 16, !tbaa !10
  %10 = load ptr, ptr %y, align 8, !tbaa !8
  %add.ptr2 = getelementptr inbounds i32, ptr %10, i64 4
  store ptr %add.ptr2, ptr %y, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxy_lo) #4
  %11 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %12 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %call3 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %11, <2 x i64> noundef %12)
  store <2 x i64> %call3, ptr %vxy_lo, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxy_hi) #4
  %13 = load <2 x i64>, ptr %vx, align 16, !tbaa !10
  %14 = load <2 x i64>, ptr %vy, align 16, !tbaa !10
  %call4 = call <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %13, <2 x i64> noundef %14)
  store <2 x i64> %call4, ptr %vxy_hi, align 16, !tbaa !10
  %15 = load ptr, ptr %o, align 8, !tbaa !8
  %16 = load <2 x i64>, ptr %vxy_lo, align 16, !tbaa !10
  call void @_mm_storeu_si128(ptr noundef %15, <2 x i64> noundef %16)
  %17 = load ptr, ptr %o, align 8, !tbaa !8
  %add.ptr5 = getelementptr inbounds i32, ptr %17, i64 4
  %18 = load <2 x i64>, ptr %vxy_hi, align 16, !tbaa !10
  call void @_mm_storeu_si128(ptr noundef %add.ptr5, <2 x i64> noundef %18)
  %19 = load ptr, ptr %o, align 8, !tbaa !8
  %add.ptr6 = getelementptr inbounds i32, ptr %19, i64 8
  store ptr %add.ptr6, ptr %o, align 8, !tbaa !8
  %20 = load i64, ptr %n.addr, align 8, !tbaa !4
  %sub = sub i64 %20, 16
  store i64 %sub, ptr %n.addr, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxy_hi) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxy_lo) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vy) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vx) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %21 = load i64, ptr %n.addr, align 8, !tbaa !4
  %cmp7 = icmp ne i64 %21, 0
  %lnot = xor i1 %cmp7, true
  %lnot8 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot8 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %while.end
  %22 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and = and i64 %22, 8
  %tobool9 = icmp ne i64 %and, 0
  br i1 %tobool9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 16, ptr %vx11) #4
  %23 = load ptr, ptr %x, align 8, !tbaa !8
  %call12 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %23)
  store <2 x i64> %call12, ptr %vx11, align 16, !tbaa !10
  %24 = load ptr, ptr %x, align 8, !tbaa !8
  %add.ptr13 = getelementptr inbounds i32, ptr %24, i64 2
  store ptr %add.ptr13, ptr %x, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vy14) #4
  %25 = load ptr, ptr %y, align 8, !tbaa !8
  %call15 = call <2 x i64> @_mm_loadl_epi64(ptr noundef %25)
  store <2 x i64> %call15, ptr %vy14, align 16, !tbaa !10
  %26 = load ptr, ptr %y, align 8, !tbaa !8
  %add.ptr16 = getelementptr inbounds i32, ptr %26, i64 2
  store ptr %add.ptr16, ptr %y, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 16, ptr %vxy) #4
  %27 = load <2 x i64>, ptr %vx11, align 16, !tbaa !10
  %28 = load <2 x i64>, ptr %vy14, align 16, !tbaa !10
  %call17 = call <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %27, <2 x i64> noundef %28)
  store <2 x i64> %call17, ptr %vxy, align 16, !tbaa !10
  %29 = load ptr, ptr %o, align 8, !tbaa !8
  %30 = load <2 x i64>, ptr %vxy, align 16, !tbaa !10
  call void @_mm_storeu_si128(ptr noundef %29, <2 x i64> noundef %30)
  %31 = load ptr, ptr %o, align 8, !tbaa !8
  %add.ptr18 = getelementptr inbounds i32, ptr %31, i64 4
  store ptr %add.ptr18, ptr %o, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr %vxy) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vy14) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vx11) #4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  %32 = load i64, ptr %n.addr, align 8, !tbaa !4
  %and19 = and i64 %32, 4
  %tobool20 = icmp ne i64 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %vx22) #4
  %33 = load ptr, ptr %x, align 8, !tbaa !8
  %34 = load i32, ptr %33, align 4, !tbaa !11
  store i32 %34, ptr %vx22, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %vy23) #4
  %35 = load ptr, ptr %y, align 8, !tbaa !8
  %36 = load i32, ptr %35, align 4, !tbaa !11
  store i32 %36, ptr %vy23, align 4, !tbaa !11
  %37 = load i32, ptr %vx22, align 4, !tbaa !11
  %38 = load ptr, ptr %o, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds i32, ptr %38, i64 0
  store i32 %37, ptr %arrayidx, align 4, !tbaa !11
  %39 = load i32, ptr %vy23, align 4, !tbaa !11
  %40 = load ptr, ptr %o, align 8, !tbaa !8
  %arrayidx24 = getelementptr inbounds i32, ptr %40, i64 1
  store i32 %39, ptr %arrayidx24, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr %vy23) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %vx22) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %o) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !10
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpacklo_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %shuffle = shufflevector <4 x i32> %1, <4 x i32> %3, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %4 = bitcast <4 x i32> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_unpackhi_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #2 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !10
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !10
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %shuffle = shufflevector <4 x i32> %1, <4 x i32> %3, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %4 = bitcast <4 x i32> %shuffle to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !10
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !10
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadl_epi64(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %.compoundliteral = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !8
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !8
  %__u = getelementptr inbounds %struct.__mm_loadl_epi64_struct, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %__u, align 1, !tbaa !10
  %vecinit = insertelement <2 x i64> undef, i64 %1, i32 0
  %vecinit1 = insertelement <2 x i64> %vecinit, i64 0, i32 1
  store <2 x i64> %vecinit1, ptr %.compoundliteral, align 16, !tbaa !10
  %2 = load <2 x i64>, ptr %.compoundliteral, align 16, !tbaa !10
  ret <2 x i64> %2
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}

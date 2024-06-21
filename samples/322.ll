; ModuleID = 'samples/322.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vbinary/gen/vmax-sse-x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__loadu_ps = type { <4 x float> }
%struct.__storeu_ps = type { <4 x float> }
%struct.__mm_storeh_pi_struct = type { <2 x float> }
%struct.__mm_store_ss_struct = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vmax_ukernel__sse_x4(i64 noundef %n, ptr noundef %a, ptr noundef %b, ptr noundef %y, ptr noalias noundef align 4 dereferenceable(56) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %va0123 = alloca <4 x float>, align 16
  %vb0123 = alloca <4 x float>, align 16
  %vy0123 = alloca <4 x float>, align 16
  %va01237 = alloca <4 x float>, align 16
  %vb01239 = alloca <4 x float>, align 16
  %vy012311 = alloca <4 x float>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %va0123) #4
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call = call <4 x float> @_mm_loadu_ps(ptr noundef %1)
  store <4 x float> %call, ptr %va0123, align 16, !tbaa !11
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %2, i64 4
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb0123) #4
  %3 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %call1 = call <4 x float> @_mm_loadu_ps(ptr noundef %3)
  store <4 x float> %call1, ptr %vb0123, align 16, !tbaa !11
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %add.ptr2 = getelementptr inbounds float, ptr %4, i64 4
  store ptr %add.ptr2, ptr %b.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vy0123) #4
  %5 = load <4 x float>, ptr %va0123, align 16, !tbaa !11
  %6 = load <4 x float>, ptr %vb0123, align 16, !tbaa !11
  %call3 = call <4 x float> @_mm_max_ps(<4 x float> noundef %5, <4 x float> noundef %6)
  store <4 x float> %call3, ptr %vy0123, align 16, !tbaa !11
  %7 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %8 = load <4 x float>, ptr %vy0123, align 16, !tbaa !11
  call void @_mm_storeu_ps(ptr noundef %7, <4 x float> noundef %8)
  %9 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr4 = getelementptr inbounds float, ptr %9, i64 4
  store ptr %add.ptr4, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %vy0123) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb0123) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va0123) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %10, 16
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %11 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp5 = icmp ne i64 %11, 0
  %lnot = xor i1 %cmp5, true
  %lnot6 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot6 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end21

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %va01237) #4
  %12 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %call8 = call <4 x float> @_mm_loadu_ps(ptr noundef %12)
  store <4 x float> %call8, ptr %va01237, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vb01239) #4
  %13 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %call10 = call <4 x float> @_mm_loadu_ps(ptr noundef %13)
  store <4 x float> %call10, ptr %vb01239, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vy012311) #4
  %14 = load <4 x float>, ptr %va01237, align 16, !tbaa !11
  %15 = load <4 x float>, ptr %vb01239, align 16, !tbaa !11
  %call12 = call <4 x float> @_mm_max_ps(<4 x float> noundef %14, <4 x float> noundef %15)
  store <4 x float> %call12, ptr %vy012311, align 16, !tbaa !11
  %16 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and = and i64 %16, 8
  %tobool13 = icmp ne i64 %and, 0
  br i1 %tobool13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then
  %17 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %18 = load <4 x float>, ptr %vy012311, align 16, !tbaa !11
  call void @_mm_storel_pi(ptr noundef %17, <4 x float> noundef %18)
  %19 = load <4 x float>, ptr %vy012311, align 16, !tbaa !11
  %20 = load <4 x float>, ptr %vy012311, align 16, !tbaa !11
  %call15 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %19, <4 x float> noundef %20)
  store <4 x float> %call15, ptr %vy012311, align 16, !tbaa !11
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr16 = getelementptr inbounds float, ptr %21, i64 2
  store ptr %add.ptr16, ptr %y.addr, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then
  %22 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and17 = and i64 %22, 4
  %tobool18 = icmp ne i64 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end
  %23 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %24 = load <4 x float>, ptr %vy012311, align 16, !tbaa !11
  call void @_mm_store_ss(ptr noundef %23, <4 x float> noundef %24)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %vy012311) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vb01239) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %va01237) #4
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %for.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <4 x float>, ptr %__v, align 1, !tbaa !11
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_max_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %2 = call <4 x float> @llvm.x86.sse.max.ps(<4 x float> %0, <4 x float> %1)
  ret <4 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_ps(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <4 x float> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storel_pi(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <2 x i32> <i32 0, i32 1>
  %2 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_storeh_pi_struct, ptr %2, i32 0, i32 0
  store <2 x float> %shuffle, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_movehl_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %shuffle = shufflevector <4 x float> %0, <4 x float> %1, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  ret <4 x float> %shuffle
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_store_ss(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %vecext = extractelement <4 x float> %0, i32 0
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__u = getelementptr inbounds %struct.__mm_store_ss_struct, ptr %1, i32 0, i32 0
  store float %vecext, ptr %__u, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}

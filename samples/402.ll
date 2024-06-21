; ModuleID = 'samples/402.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vunary/gen/vneg-sse-x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [4 x float] }
%struct.__loadu_ps = type { <4 x float> }
%struct.__storeu_ps = type { <4 x float> }
%struct.__mm_storeh_pi_struct = type { <2 x float> }
%struct.__mm_store_ss_struct = type { float }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vneg_ukernel__sse_x4(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noalias noundef align 32 dereferenceable(96) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vsign_mask = alloca <4 x float>, align 16
  %vx0123 = alloca <4 x float>, align 16
  %vy0123 = alloca <4 x float>, align 16
  %vx = alloca <4 x float>, align 16
  %vy = alloca <4 x float>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vsign_mask) #4
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !9
  %sign_mask = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %sign_mask, i64 0, i64 0
  %call = call <4 x float> @_mm_load_ps(ptr noundef %arraydecay)
  store <4 x float> %call, ptr %vsign_mask, align 16, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %1, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vx0123) #4
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %call1 = call <4 x float> @_mm_loadu_ps(ptr noundef %2)
  store <4 x float> %call1, ptr %vx0123, align 16, !tbaa !11
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %3, i64 4
  store ptr %add.ptr, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vy0123) #4
  %4 = load <4 x float>, ptr %vx0123, align 16, !tbaa !11
  %5 = load <4 x float>, ptr %vsign_mask, align 16, !tbaa !11
  %call2 = call <4 x float> @_mm_xor_ps(<4 x float> noundef %4, <4 x float> noundef %5)
  store <4 x float> %call2, ptr %vy0123, align 16, !tbaa !11
  %6 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %7 = load <4 x float>, ptr %vy0123, align 16, !tbaa !11
  call void @_mm_storeu_ps(ptr noundef %6, <4 x float> noundef %7)
  %8 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr3 = getelementptr inbounds float, ptr %8, i64 4
  store ptr %add.ptr3, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %vy0123) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vx0123) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %9, 16
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %10 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp4 = icmp ne i64 %10, 0
  %lnot = xor i1 %cmp4, true
  %lnot5 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end16

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %vx) #4
  %11 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %call6 = call <4 x float> @_mm_loadu_ps(ptr noundef %11)
  store <4 x float> %call6, ptr %vx, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vy) #4
  %12 = load <4 x float>, ptr %vx, align 16, !tbaa !11
  %13 = load <4 x float>, ptr %vsign_mask, align 16, !tbaa !11
  %call7 = call <4 x float> @_mm_xor_ps(<4 x float> noundef %12, <4 x float> noundef %13)
  store <4 x float> %call7, ptr %vy, align 16, !tbaa !11
  %14 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and = and i64 %14, 8
  %tobool8 = icmp ne i64 %and, 0
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %15 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %16 = load <4 x float>, ptr %vy, align 16, !tbaa !11
  call void @_mm_storel_pi(ptr noundef %15, <4 x float> noundef %16)
  %17 = load <4 x float>, ptr %vy, align 16, !tbaa !11
  %18 = load <4 x float>, ptr %vy, align 16, !tbaa !11
  %call10 = call <4 x float> @_mm_movehl_ps(<4 x float> noundef %17, <4 x float> noundef %18)
  store <4 x float> %call10, ptr %vy, align 16, !tbaa !11
  %19 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr11 = getelementptr inbounds float, ptr %19, i64 2
  store ptr %add.ptr11, ptr %y.addr, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %20 = load i64, ptr %n.addr, align 8, !tbaa !5
  %and12 = and i64 %20, 4
  %tobool13 = icmp ne i64 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %22 = load <4 x float>, ptr %vy, align 16, !tbaa !11
  call void @_mm_store_ss(ptr noundef %21, <4 x float> noundef %22)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %vy) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vx) #4
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %for.end
  call void @llvm.lifetime.end.p0(i64 16, ptr %vsign_mask) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_load_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %1 = load <4 x float>, ptr %0, align 16, !tbaa !11
  ret <4 x float> %1
}

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
define internal <4 x float> @_mm_xor_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %xor = xor <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %xor to <4 x float>
  ret <4 x float> %4
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

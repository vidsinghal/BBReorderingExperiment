; ModuleID = 'samples/179.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/math/roundne-sse-addsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @xnn_math_f32_roundne__sse_addsub(i64 noundef %n, ptr noundef %input, ptr noundef %output) #0 {
entry:
  %n.addr = alloca i64, align 8
  %input.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %vnonsign_mask = alloca <4 x float>, align 16
  %vmagic_number = alloca <4 x float>, align 16
  %vx = alloca <4 x float>, align 16
  %vabsx = alloca <4 x float>, align 16
  %vrndmask = alloca <4 x float>, align 16
  %vrndabsx = alloca <4 x float>, align 16
  %vy = alloca <4 x float>, align 16
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %input, ptr %input.addr, align 8, !tbaa !9
  store ptr %output, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vnonsign_mask) #4
  %call = call float @math_nonsign_mask_f32()
  %call1 = call <4 x float> @_mm_set1_ps(float noundef %call)
  store <4 x float> %call1, ptr %vnonsign_mask, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vmagic_number) #4
  %call2 = call <4 x float> @_mm_set1_ps(float noundef 0x4160000000000000)
  store <4 x float> %call2, ptr %vmagic_number, align 16, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vx) #4
  %1 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %call3 = call <4 x float> @_mm_load_ps(ptr noundef %1)
  store <4 x float> %call3, ptr %vx, align 16, !tbaa !11
  %2 = load ptr, ptr %input.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %2, i64 4
  store ptr %add.ptr, ptr %input.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %vabsx) #4
  %3 = load <4 x float>, ptr %vx, align 16, !tbaa !11
  %4 = load <4 x float>, ptr %vnonsign_mask, align 16, !tbaa !11
  %call4 = call <4 x float> @_mm_and_ps(<4 x float> noundef %3, <4 x float> noundef %4)
  store <4 x float> %call4, ptr %vabsx, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vrndmask) #4
  %5 = load <4 x float>, ptr %vabsx, align 16, !tbaa !11
  %6 = load <4 x float>, ptr %vmagic_number, align 16, !tbaa !11
  %call5 = call <4 x float> @_mm_cmpge_ps(<4 x float> noundef %5, <4 x float> noundef %6)
  %7 = load <4 x float>, ptr %vnonsign_mask, align 16, !tbaa !11
  %call6 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %call5, <4 x float> noundef %7)
  store <4 x float> %call6, ptr %vrndmask, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vrndabsx) #4
  %8 = load <4 x float>, ptr %vabsx, align 16, !tbaa !11
  %9 = load <4 x float>, ptr %vmagic_number, align 16, !tbaa !11
  %call7 = call <4 x float> @_mm_add_ps(<4 x float> noundef %8, <4 x float> noundef %9)
  %10 = load <4 x float>, ptr %vmagic_number, align 16, !tbaa !11
  %call8 = call <4 x float> @_mm_sub_ps(<4 x float> noundef %call7, <4 x float> noundef %10)
  store <4 x float> %call8, ptr %vrndabsx, align 16, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %vy) #4
  %11 = load <4 x float>, ptr %vrndabsx, align 16, !tbaa !11
  %12 = load <4 x float>, ptr %vrndmask, align 16, !tbaa !11
  %call9 = call <4 x float> @_mm_and_ps(<4 x float> noundef %11, <4 x float> noundef %12)
  %13 = load <4 x float>, ptr %vrndmask, align 16, !tbaa !11
  %14 = load <4 x float>, ptr %vx, align 16, !tbaa !11
  %call10 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %13, <4 x float> noundef %14)
  %call11 = call <4 x float> @_mm_or_ps(<4 x float> noundef %call9, <4 x float> noundef %call10)
  store <4 x float> %call11, ptr %vy, align 16, !tbaa !11
  %15 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %16 = load <4 x float>, ptr %vy, align 16, !tbaa !11
  call void @_mm_store_ps(ptr noundef %15, <4 x float> noundef %16)
  %17 = load ptr, ptr %output.addr, align 8, !tbaa !9
  %add.ptr12 = getelementptr inbounds float, ptr %17, i64 4
  store ptr %add.ptr12, ptr %output.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr %vy) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vrndabsx) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vrndmask) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vabsx) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vx) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %18, 16
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 16, ptr %vmagic_number) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %vnonsign_mask) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_set1_ps(float noundef %__w) #2 {
entry:
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %__w, ptr %__w.addr, align 4, !tbaa !14
  %0 = load float, ptr %__w.addr, align 4, !tbaa !14
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %1 = load float, ptr %__w.addr, align 4, !tbaa !14
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %__w.addr, align 4, !tbaa !14
  %vecinit2 = insertelement <4 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %__w.addr, align 4, !tbaa !14
  %vecinit3 = insertelement <4 x float> %vecinit2, float %3, i32 3
  store <4 x float> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !11
  %4 = load <4 x float>, ptr %.compoundliteral, align 16, !tbaa !11
  ret <4 x float> %4
}

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
define internal <4 x float> @_mm_and_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %and = and <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %and to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_andnot_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %not = xor <4 x i32> %1, <i32 -1, i32 -1, i32 -1, i32 -1>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %and = and <4 x i32> %not, %3
  %4 = bitcast <4 x i32> %and to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_cmpge_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %2 = fcmp ole <4 x float> %0, %1
  %3 = sext <4 x i1> %2 to <4 x i32>
  %4 = bitcast <4 x i32> %3 to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_sub_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %sub = fsub <4 x float> %0, %1
  ret <4 x float> %sub
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_add_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %add = fadd <4 x float> %0, %1
  ret <4 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_or_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #2 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !11
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %or = or <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %or to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_store_ps(ptr noundef %__p, <4 x float> noundef %__a) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  %__a.addr = alloca <4 x float>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !11
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !11
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  store <4 x float> %0, ptr %1, align 16, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal float @math_nonsign_mask_f32() #3 {
entry:
  ret float 0x7FFFFFFFE0000000
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !7, i64 0}

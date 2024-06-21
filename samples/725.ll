; ModuleID = 'samples/725.bc'
source_filename = "/local-ssd/xnnpack-r7msi2beibvbxa3e6lvblom7qlyd5i24-build/aidengro/spack-stage-xnnpack-2022-02-16-r7msi2beibvbxa3e6lvblom7qlyd5i24/spack-src/src/f32-vrnd/gen/vrndz-avx512f-x32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__loadu_ps = type { <16 x float> }
%struct.__storeu_ps = type { <16 x float> }

; Function Attrs: nounwind uwtable
define hidden void @xnn_f32_vrndz_ukernel__avx512f_x32(i64 noundef %n, ptr noundef %x, ptr noundef %y, ptr noalias noundef align 16 dereferenceable(64) %params) #0 {
entry:
  %n.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %vx0123456789ABCDEF = alloca <16 x float>, align 64
  %vxGHIJKLMNOPQRSTUV = alloca <16 x float>, align 64
  %vy0123456789ABCDEF = alloca <16 x float>, align 64
  %vyGHIJKLMNOPQRSTUV = alloca <16 x float>, align 64
  %vx = alloca <16 x float>, align 64
  %vy = alloca <16 x float>, align 64
  %vmask = alloca i16, align 2
  %vx23 = alloca <16 x float>, align 64
  %vy25 = alloca <16 x float>, align 64
  store i64 %n, ptr %n.addr, align 8, !tbaa !5
  store ptr %x, ptr %x.addr, align 8, !tbaa !9
  store ptr %y, ptr %y.addr, align 8, !tbaa !9
  store ptr %params, ptr %params.addr, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp = icmp uge i64 %0, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx0123456789ABCDEF) #7
  %1 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %call = call <16 x float> @_mm512_loadu_ps(ptr noundef %1)
  store <16 x float> %call, ptr %vx0123456789ABCDEF, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vxGHIJKLMNOPQRSTUV) #7
  %2 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds float, ptr %2, i64 16
  %call1 = call <16 x float> @_mm512_loadu_ps(ptr noundef %add.ptr)
  store <16 x float> %call1, ptr %vxGHIJKLMNOPQRSTUV, align 64, !tbaa !11
  %3 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr2 = getelementptr inbounds float, ptr %3, i64 32
  store ptr %add.ptr2, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vy0123456789ABCDEF) #7
  %4 = load <16 x float>, ptr %vx0123456789ABCDEF, align 64, !tbaa !11
  %call3 = call <16 x float> @_mm512_undefined_ps()
  %5 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %4, i32 3, <16 x float> %call3, i16 -1, i32 4)
  store <16 x float> %5, ptr %vy0123456789ABCDEF, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vyGHIJKLMNOPQRSTUV) #7
  %6 = load <16 x float>, ptr %vxGHIJKLMNOPQRSTUV, align 64, !tbaa !11
  %call4 = call <16 x float> @_mm512_undefined_ps()
  %7 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %6, i32 3, <16 x float> %call4, i16 -1, i32 4)
  store <16 x float> %7, ptr %vyGHIJKLMNOPQRSTUV, align 64, !tbaa !11
  %8 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %9 = load <16 x float>, ptr %vy0123456789ABCDEF, align 64, !tbaa !11
  call void @_mm512_storeu_ps(ptr noundef %8, <16 x float> noundef %9)
  %10 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr5 = getelementptr inbounds float, ptr %10, i64 16
  %11 = load <16 x float>, ptr %vyGHIJKLMNOPQRSTUV, align 64, !tbaa !11
  call void @_mm512_storeu_ps(ptr noundef %add.ptr5, <16 x float> noundef %11)
  %12 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr6 = getelementptr inbounds float, ptr %12, i64 32
  store ptr %add.ptr6, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 64, ptr %vyGHIJKLMNOPQRSTUV) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vy0123456789ABCDEF) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vxGHIJKLMNOPQRSTUV) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx0123456789ABCDEF) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub = sub i64 %13, 128
  store i64 %sub, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc14, %for.end
  %14 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp8 = icmp uge i64 %14, 64
  br i1 %cmp8, label %for.body9, label %for.end16

for.body9:                                        ; preds = %for.cond7
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx) #7
  %15 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %call10 = call <16 x float> @_mm512_loadu_ps(ptr noundef %15)
  store <16 x float> %call10, ptr %vx, align 64, !tbaa !11
  %16 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %add.ptr11 = getelementptr inbounds float, ptr %16, i64 16
  store ptr %add.ptr11, ptr %x.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %vy) #7
  %17 = load <16 x float>, ptr %vx, align 64, !tbaa !11
  %call12 = call <16 x float> @_mm512_undefined_ps()
  %18 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %17, i32 3, <16 x float> %call12, i16 -1, i32 4)
  store <16 x float> %18, ptr %vy, align 64, !tbaa !11
  %19 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %20 = load <16 x float>, ptr %vy, align 64, !tbaa !11
  call void @_mm512_storeu_ps(ptr noundef %19, <16 x float> noundef %20)
  %21 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %add.ptr13 = getelementptr inbounds float, ptr %21, i64 16
  store ptr %add.ptr13, ptr %y.addr, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 64, ptr %vy) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx) #7
  br label %for.inc14

for.inc14:                                        ; preds = %for.body9
  %22 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sub15 = sub i64 %22, 64
  store i64 %sub15, ptr %n.addr, align 8, !tbaa !5
  br label %for.cond7, !llvm.loop !14

for.end16:                                        ; preds = %for.cond7
  %23 = load i64, ptr %n.addr, align 8, !tbaa !5
  %cmp17 = icmp ne i64 %23, 0
  %lnot = xor i1 %cmp17, true
  %lnot18 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot18 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end16
  %24 = load i64, ptr %n.addr, align 8, !tbaa !5
  %shr = lshr i64 %24, 2
  store i64 %shr, ptr %n.addr, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2, ptr %vmask) #7
  %25 = load i64, ptr %n.addr, align 8, !tbaa !5
  %sh_prom = trunc i64 %25 to i32
  %shl = shl i32 1, %sh_prom
  %sub19 = sub i32 %shl, 1
  %conv20 = trunc i32 %sub19 to i16
  %conv21 = zext i16 %conv20 to i32
  %call22 = call zeroext i16 @_cvtu32_mask16(i32 noundef %conv21)
  store i16 %call22, ptr %vmask, align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 64, ptr %vx23) #7
  %26 = load i16, ptr %vmask, align 2, !tbaa !15
  %27 = load ptr, ptr %x.addr, align 8, !tbaa !9
  %call24 = call <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %26, ptr noundef %27)
  store <16 x float> %call24, ptr %vx23, align 64, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %vy25) #7
  %28 = load <16 x float>, ptr %vx23, align 64, !tbaa !11
  %call26 = call <16 x float> @_mm512_setzero_ps()
  %29 = load i16, ptr %vmask, align 2, !tbaa !15
  %30 = call <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %28, i32 3, <16 x float> %call26, i16 %29, i32 4)
  store <16 x float> %30, ptr %vy25, align 64, !tbaa !11
  %31 = load ptr, ptr %y.addr, align 8, !tbaa !9
  %32 = load i16, ptr %vmask, align 2, !tbaa !15
  %33 = load <16 x float>, ptr %vy25, align 64, !tbaa !11
  call void @_mm512_mask_storeu_ps(ptr noundef %31, i16 noundef zeroext %32, <16 x float> noundef %33)
  call void @llvm.lifetime.end.p0(i64 64, ptr %vy25) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr %vx23) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr %vmask) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_loadu_ps(ptr noundef %__p) #2 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_ps, ptr %0, i32 0, i32 0
  %1 = load <16 x float>, ptr %__v, align 1, !tbaa !11
  ret <16 x float> %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_undefined_ps() #2 {
entry:
  ret <16 x float> zeroinitializer
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm512_storeu_ps(ptr noundef %__P, <16 x float> noundef %__A) #2 {
entry:
  %__P.addr = alloca ptr, align 8
  %__A.addr = alloca <16 x float>, align 64
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %1 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_ps, ptr %1, i32 0, i32 0
  store <16 x float> %0, ptr %__v, align 1, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @_cvtu32_mask16(i32 noundef %__A) #4 {
entry:
  %__A.addr = alloca i32, align 4
  store i32 %__A, ptr %__A.addr, align 4, !tbaa !17
  %0 = load i32, ptr %__A.addr, align 4, !tbaa !17
  %conv = trunc i32 %0 to i16
  %1 = bitcast i16 %conv to <16 x i1>
  %2 = bitcast <16 x i1> %1 to i16
  ret i16 %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_maskz_loadu_ps(i16 noundef zeroext %__U, ptr noundef %__P) #2 {
entry:
  %__U.addr = alloca i16, align 2
  %__P.addr = alloca ptr, align 8
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !15
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %call = call <16 x float> @_mm512_setzero_ps()
  %1 = load i16, ptr %__U.addr, align 2, !tbaa !15
  %2 = bitcast i16 %1 to <16 x i1>
  %3 = call <16 x float> @llvm.masked.load.v16f32.p0(ptr %0, i32 1, <16 x i1> %2, <16 x float> %call)
  ret <16 x float> %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @_mm512_setzero_ps() #2 {
entry:
  %.compoundliteral = alloca <16 x float>, align 64
  store <16 x float> zeroinitializer, ptr %.compoundliteral, align 64, !tbaa !11
  %0 = load <16 x float>, ptr %.compoundliteral, align 64, !tbaa !11
  ret <16 x float> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm512_mask_storeu_ps(ptr noundef %__P, i16 noundef zeroext %__U, <16 x float> noundef %__A) #2 {
entry:
  %__P.addr = alloca ptr, align 8
  %__U.addr = alloca i16, align 2
  %__A.addr = alloca <16 x float>, align 64
  store ptr %__P, ptr %__P.addr, align 8, !tbaa !9
  store i16 %__U, ptr %__U.addr, align 2, !tbaa !15
  store <16 x float> %__A, ptr %__A.addr, align 64, !tbaa !11
  %0 = load ptr, ptr %__P.addr, align 8, !tbaa !9
  %1 = load <16 x float>, ptr %__A.addr, align 64, !tbaa !11
  %2 = load i16, ptr %__U.addr, align 2, !tbaa !15
  %3 = bitcast i16 %2 to <16 x i1>
  call void @llvm.masked.store.v16f32.p0(<16 x float> %1, ptr %0, i32 1, <16 x i1> %3)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x float> @llvm.masked.load.v16f32.p0(ptr nocapture, i32 immarg, <16 x i1>, <16 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v16f32.p0(<16 x float>, ptr nocapture, i32 immarg, <16 x i1>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { alwaysinline nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !7, i64 0}

; ModuleID = 'samples/496.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/dec/q/lqut/vars/flamec/FLA_LQ_UT_blk_var2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_lq_ut_s = type { i32, i32, ptr, ptr, ptr }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_LQ_UT_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  %ATL = alloca %struct.FLA_Obj_view, align 8
  %ATR = alloca %struct.FLA_Obj_view, align 8
  %A00 = alloca %struct.FLA_Obj_view, align 8
  %A01 = alloca %struct.FLA_Obj_view, align 8
  %A02 = alloca %struct.FLA_Obj_view, align 8
  %ABL = alloca %struct.FLA_Obj_view, align 8
  %ABR = alloca %struct.FLA_Obj_view, align 8
  %A10 = alloca %struct.FLA_Obj_view, align 8
  %A11 = alloca %struct.FLA_Obj_view, align 8
  %A12 = alloca %struct.FLA_Obj_view, align 8
  %A20 = alloca %struct.FLA_Obj_view, align 8
  %A21 = alloca %struct.FLA_Obj_view, align 8
  %A22 = alloca %struct.FLA_Obj_view, align 8
  %TTL = alloca %struct.FLA_Obj_view, align 8
  %TTR = alloca %struct.FLA_Obj_view, align 8
  %T00 = alloca %struct.FLA_Obj_view, align 8
  %T01 = alloca %struct.FLA_Obj_view, align 8
  %T02 = alloca %struct.FLA_Obj_view, align 8
  %TBL = alloca %struct.FLA_Obj_view, align 8
  %TBR = alloca %struct.FLA_Obj_view, align 8
  %T10 = alloca %struct.FLA_Obj_view, align 8
  %T11 = alloca %struct.FLA_Obj_view, align 8
  %W12 = alloca %struct.FLA_Obj_view, align 8
  %T20 = alloca %struct.FLA_Obj_view, align 8
  %T21 = alloca %struct.FLA_Obj_view, align 8
  %T22 = alloca %struct.FLA_Obj_view, align 8
  %AR1 = alloca %struct.FLA_Obj_view, align 8
  %AR2 = alloca %struct.FLA_Obj_view, align 8
  %b = alloca i64, align 8
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 56, ptr %ATL) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %ATR) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A00) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A01) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A02) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %ABL) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %ABR) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A10) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A11) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A12) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A20) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A21) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A22) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %TTL) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %TTR) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T00) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T01) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T02) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %TBL) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %TBR) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T10) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T11) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %W12) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T20) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T21) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T22) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %AR1) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %AR2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #3
  %call = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %ATL, ptr noundef %ATR, ptr noundef %ABL, ptr noundef %ABR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call1 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef %TTL, ptr noundef %TTR, ptr noundef %TBL, ptr noundef %TBR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call2 = call i64 @FLA_Obj_min_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR)
  %cmp = icmp ugt i64 %call2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %blocksize = getelementptr inbounds %struct.fla_lq_ut_s, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %blocksize, align 8, !tbaa !8
  %call3 = call i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, i32 noundef 22, ptr noundef %1)
  store i64 %call3, ptr %b, align 8, !tbaa !11
  %2 = load i64, ptr %b, align 8, !tbaa !11
  %3 = load i64, ptr %b, align 8, !tbaa !11
  %call4 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef %A00, ptr noundef %A01, ptr noundef %A02, ptr noundef %A10, ptr noundef %A11, ptr noundef %A12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, ptr noundef %A20, ptr noundef %A21, ptr noundef %A22, i64 noundef %2, i64 noundef %3, i32 noundef 22)
  %4 = load i64, ptr %b, align 8, !tbaa !11
  %5 = load i64, ptr %b, align 8, !tbaa !11
  %call5 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %TTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TTR, ptr noundef %T00, ptr noundef %T01, ptr noundef %T02, ptr noundef %T10, ptr noundef %T11, ptr noundef %W12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TBR, ptr noundef %T20, ptr noundef %T21, ptr noundef %T22, i64 noundef %4, i64 noundef %5, i32 noundef 22)
  %call6 = call i32 @FLA_Merge_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12, ptr noundef %AR1)
  %6 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_lqut = getelementptr inbounds %struct.fla_lq_ut_s, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %sub_lqut, align 8, !tbaa !13
  %call7 = call i32 @FLA_LQ_UT_internal(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AR1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T11, ptr noundef %7)
  %call8 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A21)
  %cmp9 = icmp ugt i64 %call8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call10 = call i32 @FLA_Merge_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, ptr noundef %AR2)
  %8 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_apqut = getelementptr inbounds %struct.fla_lq_ut_s, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %sub_apqut, align 8, !tbaa !14
  %call11 = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 211, i32 noundef 400, i32 noundef 800, i32 noundef 901, ptr noundef byval(%struct.FLA_Obj_view) align 8 %AR1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %AR2, ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call12 = call i32 @FLA_Copyt_external(i32 noundef 403, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T01)
  %call13 = call i32 @FLA_Trmm_external(i32 noundef 211, i32 noundef 301, i32 noundef 401, i32 noundef 500, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T01)
  %call14 = call i32 @FLA_Gemm_external(i32 noundef 403, i32 noundef 401, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T01)
  %call15 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ATL, ptr noundef %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12, ptr noundef %ABL, ptr noundef %ABR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, i32 noundef 11)
  %call16 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %TTL, ptr noundef %TTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W12, ptr noundef %TBL, ptr noundef %TBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T22, i32 noundef 11)
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %AR2) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %AR1) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T22) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T21) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T20) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %W12) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T11) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T10) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %TBR) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %TBL) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T02) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T01) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T00) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %TTR) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %TTL) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A22) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A21) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A20) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A12) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A11) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A10) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ABR) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ABL) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A02) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A01) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A00) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ATR) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ATL) #3
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare i64 @FLA_Obj_min_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef, ptr noundef) #2

declare i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare i32 @FLA_Merge_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_LQ_UT_internal(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Apply_Q_UT_internal(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Copyt_external(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Trmm_external(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Gemm_external(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 8}
!9 = !{!"fla_lq_ut_s", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !5, i64 16}
!14 = !{!9, !5, i64 24}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}

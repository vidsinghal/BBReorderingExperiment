; ModuleID = 'samples/557.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/blas/3/gemm/nc/flamec/FLA_Gemm_nc_blk_var2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_gemm_s = type { i32, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define i32 @FLA_Gemm_nc_blk_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  %AT = alloca %struct.FLA_Obj_view, align 8
  %A0 = alloca %struct.FLA_Obj_view, align 8
  %AB = alloca %struct.FLA_Obj_view, align 8
  %A1 = alloca %struct.FLA_Obj_view, align 8
  %A2 = alloca %struct.FLA_Obj_view, align 8
  %CT = alloca %struct.FLA_Obj_view, align 8
  %C0 = alloca %struct.FLA_Obj_view, align 8
  %CB = alloca %struct.FLA_Obj_view, align 8
  %C1 = alloca %struct.FLA_Obj_view, align 8
  %C2 = alloca %struct.FLA_Obj_view, align 8
  %b = alloca i64, align 8
  store ptr %cntl, ptr %cntl.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 56, ptr %AT) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A0) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %AB) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A1) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A2) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %CT) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %C0) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %CB) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %C1) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %C2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #3
  %call = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %AT, ptr noundef %AB, i64 noundef 0, i32 noundef 201)
  %call1 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %CT, ptr noundef %CB, i64 noundef 0, i32 noundef 201)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AB)
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ult i64 %call2, %call3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %blocksize = getelementptr inbounds %struct.fla_gemm_s, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %blocksize, align 8, !tbaa !8
  %call4 = call i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AT, i32 noundef 200, ptr noundef %1)
  store i64 %call4, ptr %b, align 8, !tbaa !11
  %2 = load i64, ptr %b, align 8, !tbaa !11
  %call5 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AT, ptr noundef %A0, ptr noundef %A1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %AB, ptr noundef %A2, i64 noundef %2, i32 noundef 200)
  %3 = load i64, ptr %b, align 8, !tbaa !11
  %call6 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %CT, ptr noundef %C0, ptr noundef %C1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %CB, ptr noundef %C2, i64 noundef %3, i32 noundef 200)
  %4 = load ptr, ptr %cntl.addr, align 8, !tbaa !4
  %sub_gemm = getelementptr inbounds %struct.fla_gemm_s, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %sub_gemm, align 8, !tbaa !13
  %call7 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 403, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C1, ptr noundef %5)
  %call8 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %AT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A1, ptr noundef %AB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A2, i32 noundef 201)
  %call9 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %CT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C1, ptr noundef %CB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C2, i32 noundef 201)
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %C2) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %C1) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %CB) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %C0) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %CT) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A2) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A1) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %AB) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A0) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %AT) #3
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef, ptr noundef) #2

declare i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, i64 noundef, i32 noundef) #2

declare i32 @FLA_Gemm_internal(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #2

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
!9 = !{!"fla_gemm_s", !10, i64 0, !10, i64 4, !5, i64 8, !5, i64 16, !5, i64 24}
!10 = !{!"int", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !5, i64 24}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}

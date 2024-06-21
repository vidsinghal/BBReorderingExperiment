; ModuleID = 'samples/495.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/blas/3/trmm/rlt/flamec/FLA_Trmm_rlt_blk_var1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_trmm_s = type { i32, i32, ptr, ptr, ptr, ptr }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Trmm_rlt_blk_var1(i32 noundef %diagA, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
entry:
  %diagA.addr = alloca i32, align 4
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
  %BL = alloca %struct.FLA_Obj_view, align 8
  %BR = alloca %struct.FLA_Obj_view, align 8
  %B0 = alloca %struct.FLA_Obj_view, align 8
  %B1 = alloca %struct.FLA_Obj_view, align 8
  %B2 = alloca %struct.FLA_Obj_view, align 8
  %b = alloca i64, align 8
  store i32 %diagA, ptr %diagA.addr, align 4
  store ptr %cntl, ptr %cntl.addr, align 8
  %call = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %ATL, ptr noundef %ATR, ptr noundef %ABL, ptr noundef %ABR, i64 noundef 0, i64 noundef 0, i32 noundef 22)
  %call1 = call i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %BL, ptr noundef %BR, i64 noundef 0, i32 noundef 211)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR)
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ult i64 %call2, %call3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load ptr, ptr %cntl.addr, align 8
  %blocksize = getelementptr inbounds %struct.fla_trmm_s, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %blocksize, align 8
  %call4 = call i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, i32 noundef 11, ptr noundef %1)
  store i64 %call4, ptr %b, align 8
  %2 = load i64, ptr %b, align 8
  %3 = load i64, ptr %b, align 8
  %call5 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef %A00, ptr noundef %A01, ptr noundef %A02, ptr noundef %A10, ptr noundef %A11, ptr noundef %A12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, ptr noundef %A20, ptr noundef %A21, ptr noundef %A22, i64 noundef %2, i64 noundef %3, i32 noundef 11)
  %4 = load i64, ptr %b, align 8
  %call6 = call i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %BL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BR, ptr noundef %B0, ptr noundef %B1, ptr noundef %B2, i64 noundef %4, i32 noundef 210)
  %5 = load i32, ptr %diagA.addr, align 4
  %6 = load ptr, ptr %cntl.addr, align 8
  %sub_trmm = getelementptr inbounds %struct.fla_trmm_s, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %sub_trmm, align 8
  %call7 = call i32 @FLA_Trmm_internal(i32 noundef 211, i32 noundef 300, i32 noundef 401, i32 noundef %5, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B1, ptr noundef %7)
  %8 = load ptr, ptr %cntl.addr, align 8
  %sub_gemm = getelementptr inbounds %struct.fla_trmm_s, ptr %8, i32 0, i32 5
  %9 = load ptr, ptr %sub_gemm, align 8
  %call8 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 401, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A10, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B1, ptr noundef %9)
  %call9 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ATL, ptr noundef %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12, ptr noundef %ABL, ptr noundef %ABR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, i32 noundef 22)
  %call10 = call i32 @FLA_Cont_with_1x3_to_1x2(ptr noundef %BL, ptr noundef %BR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B2, i32 noundef 211)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 -1
}

declare i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef, ptr noundef) #1

declare i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Trmm_internal(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Gemm_internal(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

declare i32 @FLA_Cont_with_1x3_to_1x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}

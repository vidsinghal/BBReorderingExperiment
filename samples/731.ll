; ModuleID = 'samples/731.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/blas/3/gemm/ch/flamec/FLA_Gemm_ch_unb_var4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Gemm_ch_unb_var4(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C) #0 {
entry:
  %BT = alloca %struct.FLA_Obj_view, align 8
  %B0 = alloca %struct.FLA_Obj_view, align 8
  %BB = alloca %struct.FLA_Obj_view, align 8
  %b1t = alloca %struct.FLA_Obj_view, align 8
  %B2 = alloca %struct.FLA_Obj_view, align 8
  %CL = alloca %struct.FLA_Obj_view, align 8
  %CR = alloca %struct.FLA_Obj_view, align 8
  %C0 = alloca %struct.FLA_Obj_view, align 8
  %c1 = alloca %struct.FLA_Obj_view, align 8
  %C2 = alloca %struct.FLA_Obj_view, align 8
  %call = call i32 @FLA_Scal_external(ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  %call1 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %BT, ptr noundef %BB, i64 noundef 0, i32 noundef 201)
  %call2 = call i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %CL, ptr noundef %CR, i64 noundef 0, i32 noundef 211)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %BB)
  %call4 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B)
  %cmp = icmp ult i64 %call3, %call4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %BT, ptr noundef %B0, ptr noundef %b1t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BB, ptr noundef %B2, i64 noundef 1, i32 noundef 200)
  %call6 = call i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %CL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %CR, ptr noundef %C0, ptr noundef %c1, ptr noundef %C2, i64 noundef 1, i32 noundef 210)
  %call7 = call i32 @FLA_Gemvc_external(i32 noundef 403, i32 noundef 451, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b1t, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %c1)
  %call8 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %BT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b1t, ptr noundef %BB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B2, i32 noundef 201)
  %call9 = call i32 @FLA_Cont_with_1x3_to_1x2(ptr noundef %CL, ptr noundef %CR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %c1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C2, i32 noundef 211)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 -1
}

declare i32 @FLA_Scal_external(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Gemvc_external(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

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

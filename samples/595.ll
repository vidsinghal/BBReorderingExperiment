; ModuleID = 'samples/595.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/blas/3/her2k/uh/flamec/FLA_Her2k_uh_unb_var3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Her2k_uh_unb_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C) #0 {
entry:
  %AL = alloca %struct.FLA_Obj_view, align 8
  %AR = alloca %struct.FLA_Obj_view, align 8
  %A0 = alloca %struct.FLA_Obj_view, align 8
  %a1 = alloca %struct.FLA_Obj_view, align 8
  %A2 = alloca %struct.FLA_Obj_view, align 8
  %BL = alloca %struct.FLA_Obj_view, align 8
  %BR = alloca %struct.FLA_Obj_view, align 8
  %B0 = alloca %struct.FLA_Obj_view, align 8
  %b1 = alloca %struct.FLA_Obj_view, align 8
  %B2 = alloca %struct.FLA_Obj_view, align 8
  %CTL = alloca %struct.FLA_Obj_view, align 8
  %CTR = alloca %struct.FLA_Obj_view, align 8
  %C00 = alloca %struct.FLA_Obj_view, align 8
  %c01 = alloca %struct.FLA_Obj_view, align 8
  %C02 = alloca %struct.FLA_Obj_view, align 8
  %CBL = alloca %struct.FLA_Obj_view, align 8
  %CBR = alloca %struct.FLA_Obj_view, align 8
  %c10t = alloca %struct.FLA_Obj_view, align 8
  %gamma11 = alloca %struct.FLA_Obj_view, align 8
  %c12t = alloca %struct.FLA_Obj_view, align 8
  %C20 = alloca %struct.FLA_Obj_view, align 8
  %c21 = alloca %struct.FLA_Obj_view, align 8
  %C22 = alloca %struct.FLA_Obj_view, align 8
  %call = call i32 @FLA_Scalr_external(i32 noundef 301, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C)
  %call1 = call i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %AL, ptr noundef %AR, i64 noundef 0, i32 noundef 210)
  %call2 = call i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %BL, ptr noundef %BR, i64 noundef 0, i32 noundef 210)
  %call3 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %C, ptr noundef %CTL, ptr noundef %CTR, ptr noundef %CBL, ptr noundef %CBR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call4 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AL)
  %call5 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ult i64 %call4, %call5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call6 = call i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %AR, ptr noundef %A0, ptr noundef %a1, ptr noundef %A2, i64 noundef 1, i32 noundef 211)
  %call7 = call i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %BL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BR, ptr noundef %B0, ptr noundef %b1, ptr noundef %B2, i64 noundef 1, i32 noundef 211)
  %call8 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %CTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %CTR, ptr noundef %C00, ptr noundef %c01, ptr noundef %C02, ptr noundef %c10t, ptr noundef %gamma11, ptr noundef %c12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %CBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %CBR, ptr noundef %C20, ptr noundef %c21, ptr noundef %C22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call9 = call i32 @FLA_Gemv_external(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b1, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %c01)
  %call10 = call i32 @FLA_Gemvc_external(i32 noundef 401, i32 noundef 451, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A2, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b1, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %c12t)
  %call11 = call i32 @FLA_Dot2cs_external(i32 noundef 451, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b1, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %gamma11)
  %call12 = call i32 @FLA_Cont_with_1x3_to_1x2(ptr noundef %AL, ptr noundef %AR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A2, i32 noundef 210)
  %call13 = call i32 @FLA_Cont_with_1x3_to_1x2(ptr noundef %BL, ptr noundef %BR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B2, i32 noundef 210)
  %call14 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %CTL, ptr noundef %CTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %c01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %c10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %gamma11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %c12t, ptr noundef %CBL, ptr noundef %CBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %c21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %C22, i32 noundef 11)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 -1
}

declare i32 @FLA_Scalr_external(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Gemv_external(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Gemvc_external(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Dot2cs_external(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Cont_with_1x3_to_1x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

declare i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

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

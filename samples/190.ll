; ModuleID = 'samples/190.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/red/eig/gest/nu/flamec/FLA_Eig_gest_nu_unb_var1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@FLA_ONE_HALF = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Eig_gest_nu_unb_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B) #0 {
entry:
  %ATL = alloca %struct.FLA_Obj_view, align 8
  %ATR = alloca %struct.FLA_Obj_view, align 8
  %A00 = alloca %struct.FLA_Obj_view, align 8
  %a01 = alloca %struct.FLA_Obj_view, align 8
  %A02 = alloca %struct.FLA_Obj_view, align 8
  %ABL = alloca %struct.FLA_Obj_view, align 8
  %ABR = alloca %struct.FLA_Obj_view, align 8
  %a10t = alloca %struct.FLA_Obj_view, align 8
  %alpha11 = alloca %struct.FLA_Obj_view, align 8
  %a12t = alloca %struct.FLA_Obj_view, align 8
  %A20 = alloca %struct.FLA_Obj_view, align 8
  %a21 = alloca %struct.FLA_Obj_view, align 8
  %A22 = alloca %struct.FLA_Obj_view, align 8
  %BTL = alloca %struct.FLA_Obj_view, align 8
  %BTR = alloca %struct.FLA_Obj_view, align 8
  %B00 = alloca %struct.FLA_Obj_view, align 8
  %b01 = alloca %struct.FLA_Obj_view, align 8
  %B02 = alloca %struct.FLA_Obj_view, align 8
  %BBL = alloca %struct.FLA_Obj_view, align 8
  %BBR = alloca %struct.FLA_Obj_view, align 8
  %b10t = alloca %struct.FLA_Obj_view, align 8
  %beta11 = alloca %struct.FLA_Obj_view, align 8
  %b12t = alloca %struct.FLA_Obj_view, align 8
  %B20 = alloca %struct.FLA_Obj_view, align 8
  %b21 = alloca %struct.FLA_Obj_view, align 8
  %B22 = alloca %struct.FLA_Obj_view, align 8
  %yL = alloca %struct.FLA_Obj_view, align 8
  %yR = alloca %struct.FLA_Obj_view, align 8
  %y10t = alloca %struct.FLA_Obj_view, align 8
  %psi11 = alloca %struct.FLA_Obj_view, align 8
  %y12t = alloca %struct.FLA_Obj_view, align 8
  %y12t_t = alloca %struct.FLA_Obj_view, align 8
  %y12t_b = alloca %struct.FLA_Obj_view, align 8
  %call = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %ATL, ptr noundef %ATR, ptr noundef %ABL, ptr noundef %ABR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call1 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %BTL, ptr noundef %BTR, ptr noundef %BBL, ptr noundef %BBR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call2 = call i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Y, ptr noundef %yL, ptr noundef %yR, i64 noundef 0, i32 noundef 210)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL)
  %call4 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ult i64 %call3, %call4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef %A00, ptr noundef %a01, ptr noundef %A02, ptr noundef %a10t, ptr noundef %alpha11, ptr noundef %a12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, ptr noundef %A20, ptr noundef %a21, ptr noundef %A22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call6 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %BTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BTR, ptr noundef %B00, ptr noundef %b01, ptr noundef %B02, ptr noundef %b10t, ptr noundef %beta11, ptr noundef %b12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BBR, ptr noundef %B20, ptr noundef %b21, ptr noundef %B22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call7 = call i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %yL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %yR, ptr noundef %y10t, ptr noundef %psi11, ptr noundef %y12t, i64 noundef 1, i32 noundef 211)
  %call8 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %y12t, ptr noundef %y12t_t, ptr noundef %y12t_b, i64 noundef 1, i32 noundef 200)
  %call9 = call i32 @FLA_Hemvc_external(i32 noundef 301, i32 noundef 451, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y12t_t)
  %call10 = call i32 @FLA_Scal_external(ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t)
  %call11 = call i32 @FLA_Axpy_external(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE_HALF, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y12t_t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t)
  %call12 = call i32 @FLA_Scal_external(ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11)
  %call13 = call i32 @FLA_Scal_external(ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11)
  %call14 = call i32 @FLA_Dot2cs_external(i32 noundef 451, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11)
  %call15 = call i32 @FLA_Axpy_external(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE_HALF, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y12t_t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t)
  %call16 = call i32 @FLA_Trmv_external(i32 noundef 301, i32 noundef 403, i32 noundef 501, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B22, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t)
  %call17 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ATL, ptr noundef %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t, ptr noundef %ABL, ptr noundef %ABR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, i32 noundef 11)
  %call18 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %BTL, ptr noundef %BTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %beta11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b12t, ptr noundef %BBL, ptr noundef %BBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %b21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B22, i32 noundef 11)
  %call19 = call i32 @FLA_Cont_with_1x3_to_1x2(ptr noundef %yL, ptr noundef %yR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %psi11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %y12t, i32 noundef 210)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 -1
}

declare i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Hemvc_external(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Scal_external(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Axpy_external(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Dot2cs_external(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trmv_external(i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

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

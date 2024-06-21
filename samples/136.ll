; ModuleID = 'samples/136.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/util/app/qutinc/lnfc/flamec/FLA_Apply_Q_UT_inc_lnfc_blk_var1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_apqutinc_s = type { i32, i32, ptr, ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Apply_Q_UT_inc_lnfc_blk_var1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TW, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %cntl) #0 {
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
  %WTR = alloca %struct.FLA_Obj_view, align 8
  %T00 = alloca %struct.FLA_Obj_view, align 8
  %W01 = alloca %struct.FLA_Obj_view, align 8
  %W02 = alloca %struct.FLA_Obj_view, align 8
  %TBL = alloca %struct.FLA_Obj_view, align 8
  %TBR = alloca %struct.FLA_Obj_view, align 8
  %T10 = alloca %struct.FLA_Obj_view, align 8
  %T11 = alloca %struct.FLA_Obj_view, align 8
  %W12 = alloca %struct.FLA_Obj_view, align 8
  %T20 = alloca %struct.FLA_Obj_view, align 8
  %T21 = alloca %struct.FLA_Obj_view, align 8
  %T22 = alloca %struct.FLA_Obj_view, align 8
  %BT = alloca %struct.FLA_Obj_view, align 8
  %B0 = alloca %struct.FLA_Obj_view, align 8
  %BB = alloca %struct.FLA_Obj_view, align 8
  %B1 = alloca %struct.FLA_Obj_view, align 8
  %B2 = alloca %struct.FLA_Obj_view, align 8
  %b = alloca i64, align 8
  %m_BR = alloca i64, align 8
  %n_BR = alloca i64, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call1 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ugt i64 %call, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %call3 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %sub = sub i64 %call2, %call3
  store i64 %sub, ptr %m_BR, align 8
  store i64 0, ptr %n_BR, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 0, ptr %m_BR, align 8
  store i64 0, ptr %n_BR, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i64, ptr %m_BR, align 8
  %1 = load i64, ptr %n_BR, align 8
  %call4 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %ATL, ptr noundef %ATR, ptr noundef %ABL, ptr noundef %ABR, i64 noundef %0, i64 noundef %1, i32 noundef 22)
  %2 = load i64, ptr %m_BR, align 8
  %3 = load i64, ptr %n_BR, align 8
  %call5 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %TW, ptr noundef %TTL, ptr noundef %WTR, ptr noundef %TBL, ptr noundef %TBR, i64 noundef %2, i64 noundef %3, i32 noundef 22)
  %4 = load i64, ptr %m_BR, align 8
  %call6 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %B, ptr noundef %BT, ptr noundef %BB, i64 noundef %4, i32 noundef 201)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %call7 = call i64 @FLA_Obj_min_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL)
  %cmp8 = icmp ugt i64 %call7, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %cntl.addr, align 8
  %blocksize = getelementptr inbounds %struct.fla_apqutinc_s, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %blocksize, align 8
  %call9 = call i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, i32 noundef 11, ptr noundef %6)
  store i64 %call9, ptr %b, align 8
  %7 = load i64, ptr %b, align 8
  %8 = load i64, ptr %b, align 8
  %call10 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef %A00, ptr noundef %A01, ptr noundef %A02, ptr noundef %A10, ptr noundef %A11, ptr noundef %A12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, ptr noundef %A20, ptr noundef %A21, ptr noundef %A22, i64 noundef %7, i64 noundef %8, i32 noundef 11)
  %9 = load i64, ptr %b, align 8
  %10 = load i64, ptr %b, align 8
  %call11 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %TTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %WTR, ptr noundef %T00, ptr noundef %W01, ptr noundef %W02, ptr noundef %T10, ptr noundef %T11, ptr noundef %W12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TBR, ptr noundef %T20, ptr noundef %T21, ptr noundef %T22, i64 noundef %9, i64 noundef %10, i32 noundef 11)
  %11 = load i64, ptr %b, align 8
  %call12 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %BT, ptr noundef %B0, ptr noundef %B1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %BB, ptr noundef %B2, i64 noundef %11, i32 noundef 200)
  %12 = load ptr, ptr %cntl.addr, align 8
  %sub_apq2ut = getelementptr inbounds %struct.fla_apqutinc_s, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %sub_apq2ut, align 8
  %call13 = call i32 @FLA_Apply_Q2_UT_internal(i32 noundef 210, i32 noundef 400, i32 noundef 800, i32 noundef 900, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B2, ptr noundef %13)
  %14 = load ptr, ptr %cntl.addr, align 8
  %sub_apqut = getelementptr inbounds %struct.fla_apqutinc_s, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %sub_apqut, align 8
  %call14 = call i32 @FLA_Apply_Q_UT_internal(i32 noundef 210, i32 noundef 400, i32 noundef 800, i32 noundef 900, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B1, ptr noundef %15)
  %call15 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ATL, ptr noundef %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12, ptr noundef %ABL, ptr noundef %ABR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, i32 noundef 22)
  %call16 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %TTL, ptr noundef %WTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W12, ptr noundef %TBL, ptr noundef %TBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T22, i32 noundef 22)
  %call17 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %BT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B1, ptr noundef %BB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %B2, i32 noundef 201)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 -1
}

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @FLA_Obj_min_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef, ptr noundef) #1

declare i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Apply_Q2_UT_internal(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Apply_Q_UT_internal(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

declare i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

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

; ModuleID = 'samples/466.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/dec/lu/piv/vars/flamec/FLA_LU_piv_blk_var3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }
%struct.fla_lu_s = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_LU_piv_blk_var3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p, ptr noundef %cntl) #0 {
entry:
  %cntl.addr = alloca ptr, align 8
  %r_val = alloca i32, align 4
  %r_val_sub = alloca i32, align 4
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
  %AL = alloca %struct.FLA_Obj_view, align 8
  %AR = alloca %struct.FLA_Obj_view, align 8
  %A0 = alloca %struct.FLA_Obj_view, align 8
  %A1 = alloca %struct.FLA_Obj_view, align 8
  %A2 = alloca %struct.FLA_Obj_view, align 8
  %pT = alloca %struct.FLA_Obj_view, align 8
  %p0 = alloca %struct.FLA_Obj_view, align 8
  %pB = alloca %struct.FLA_Obj_view, align 8
  %p1 = alloca %struct.FLA_Obj_view, align 8
  %p2 = alloca %struct.FLA_Obj_view, align 8
  %AB0 = alloca %struct.FLA_Obj_view, align 8
  %AB1 = alloca %struct.FLA_Obj_view, align 8
  %b = alloca i64, align 8
  store ptr %cntl, ptr %cntl.addr, align 8
  store i32 -1, ptr %r_val, align 4
  store i32 -1, ptr %r_val_sub, align 4
  %call = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %ATL, ptr noundef %ATR, ptr noundef %ABL, ptr noundef %ABR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call1 = call i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %AL, ptr noundef %AR, i64 noundef 0, i32 noundef 210)
  %call2 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %p, ptr noundef %pT, ptr noundef %pB, i64 noundef 0, i32 noundef 200)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call3 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL)
  %call4 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ult i64 %call3, %call4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call5 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL)
  %call6 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp7 = icmp ult i64 %call5, %call6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %0 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %0, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %1 = load ptr, ptr %cntl.addr, align 8
  %blocksize = getelementptr inbounds %struct.fla_lu_s, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %blocksize, align 8
  %call8 = call i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, i32 noundef 22, ptr noundef %2)
  store i64 %call8, ptr %b, align 8
  %3 = load i64, ptr %b, align 8
  %4 = load i64, ptr %b, align 8
  %call9 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef %A00, ptr noundef %A01, ptr noundef %A02, ptr noundef %A10, ptr noundef %A11, ptr noundef %A12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, ptr noundef %A20, ptr noundef %A21, ptr noundef %A22, i64 noundef %3, i64 noundef %4, i32 noundef 22)
  %5 = load i64, ptr %b, align 8
  %call10 = call i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %AR, ptr noundef %A0, ptr noundef %A1, ptr noundef %A2, i64 noundef %5, i32 noundef 211)
  %6 = load i64, ptr %b, align 8
  %call11 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %pT, ptr noundef %p0, ptr noundef %p1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %pB, ptr noundef %p2, i64 noundef %6, i32 noundef 201)
  %7 = load ptr, ptr %cntl.addr, align 8
  %sub_appiv1 = getelementptr inbounds %struct.fla_lu_s, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %sub_appiv1, align 8
  %call12 = call i32 @FLA_Apply_pivots_internal(i32 noundef 210, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A1, ptr noundef %8)
  %9 = load ptr, ptr %cntl.addr, align 8
  %sub_trsm1 = getelementptr inbounds %struct.fla_lu_s, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %sub_trsm1, align 8
  %call13 = call i32 @FLA_Trsm_internal(i32 noundef 210, i32 noundef 300, i32 noundef 400, i32 noundef 500, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef %10)
  %11 = load ptr, ptr %cntl.addr, align 8
  %sub_gemm1 = getelementptr inbounds %struct.fla_lu_s, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %sub_gemm1, align 8
  %call14 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef %12)
  %13 = load ptr, ptr %cntl.addr, align 8
  %sub_gemm2 = getelementptr inbounds %struct.fla_lu_s, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %sub_gemm2, align 8
  %call15 = call i32 @FLA_Gemm_internal(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A21, ptr noundef %14)
  %call16 = call i32 @FLA_Merge_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A21, ptr noundef %AB1)
  %15 = load ptr, ptr %cntl.addr, align 8
  %sub_lu = getelementptr inbounds %struct.fla_lu_s, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %sub_lu, align 8
  %call17 = call i32 @FLA_LU_piv_internal(ptr noundef byval(%struct.FLA_Obj_view) align 8 %AB1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p1, ptr noundef %16)
  store i32 %call17, ptr %r_val, align 4
  %17 = load i32, ptr %r_val, align 4
  %cmp18 = icmp eq i32 %17, -1
  br i1 %cmp18, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %18 = load i32, ptr %r_val_sub, align 4
  %cmp19 = icmp sge i32 %18, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call20 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01)
  %19 = load i32, ptr %r_val_sub, align 4
  %conv = sext i32 %19 to i64
  %add = add i64 %call20, %conv
  %conv21 = trunc i64 %add to i32
  store i32 %conv21, ptr %r_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %call22 = call i32 @FLA_Merge_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef %AB0)
  %20 = load ptr, ptr %cntl.addr, align 8
  %sub_appiv2 = getelementptr inbounds %struct.fla_lu_s, ptr %20, i32 0, i32 10
  %21 = load ptr, ptr %sub_appiv2, align 8
  %call23 = call i32 @FLA_Apply_pivots_internal(i32 noundef 210, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %AB0, ptr noundef %21)
  %call24 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ATL, ptr noundef %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12, ptr noundef %ABL, ptr noundef %ABR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, i32 noundef 11)
  %call25 = call i32 @FLA_Cont_with_1x3_to_1x2(ptr noundef %AL, ptr noundef %AR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A2, i32 noundef 210)
  %call26 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %pT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p1, ptr noundef %pB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p2, i32 noundef 200)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %call27 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR)
  %cmp28 = icmp ugt i64 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end34

if.then30:                                        ; preds = %while.end
  %22 = load ptr, ptr %cntl.addr, align 8
  %sub_appiv131 = getelementptr inbounds %struct.fla_lu_s, ptr %22, i32 0, i32 9
  %23 = load ptr, ptr %sub_appiv131, align 8
  %call32 = call i32 @FLA_Apply_pivots_internal(i32 noundef 210, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef %23)
  %call33 = call i32 @FLA_Trsm_external(i32 noundef 210, i32 noundef 300, i32 noundef 400, i32 noundef 500, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR)
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %while.end
  %24 = load i32, ptr %r_val, align 4
  ret i32 %24
}

declare i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Determine_blocksize(ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef, ptr noundef) #1

declare i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Apply_pivots_internal(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Trsm_internal(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Gemm_internal(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Merge_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_LU_piv_internal(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

declare i32 @FLA_Cont_with_1x3_to_1x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

declare i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

declare i32 @FLA_Trsm_external(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

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

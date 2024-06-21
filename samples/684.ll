; ModuleID = 'samples/684.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/lapack/red/hessut/vars/flamec/FLA_Hess_UT_blk_var5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@FLA_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @FLA_Hess_UT_blk_var5(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T) #0 {
entry:
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
  %UT = alloca %struct.FLA_Obj_view, align 8
  %U0 = alloca %struct.FLA_Obj_view, align 8
  %UB = alloca %struct.FLA_Obj_view, align 8
  %U1 = alloca %struct.FLA_Obj_view, align 8
  %U2 = alloca %struct.FLA_Obj_view, align 8
  %ZT = alloca %struct.FLA_Obj_view, align 8
  %Z0 = alloca %struct.FLA_Obj_view, align 8
  %ZB = alloca %struct.FLA_Obj_view, align 8
  %Z1 = alloca %struct.FLA_Obj_view, align 8
  %Z2 = alloca %struct.FLA_Obj_view, align 8
  %TL = alloca %struct.FLA_Obj_view, align 8
  %TR = alloca %struct.FLA_Obj_view, align 8
  %T0 = alloca %struct.FLA_Obj_view, align 8
  %T1 = alloca %struct.FLA_Obj_view, align 8
  %W12 = alloca %struct.FLA_Obj_view, align 8
  %U = alloca %struct.FLA_Obj_view, align 8
  %Z = alloca %struct.FLA_Obj_view, align 8
  %UB_l = alloca %struct.FLA_Obj_view, align 8
  %ZB_l = alloca %struct.FLA_Obj_view, align 8
  %WT_l = alloca %struct.FLA_Obj_view, align 8
  %T1_tl = alloca %struct.FLA_Obj_view, align 8
  %none = alloca %struct.FLA_Obj_view, align 8
  %none2 = alloca %struct.FLA_Obj_view, align 8
  %none3 = alloca %struct.FLA_Obj_view, align 8
  %datatype_A = alloca i32, align 4
  %m_A = alloca i64, align 8
  %b_alg = alloca i64, align 8
  %b = alloca i64, align 8
  %bb = alloca i64, align 8
  %ABR2 = alloca %struct.FLA_Obj_view, align 8
  %ABR2_b = alloca %struct.FLA_Obj_view, align 8
  %UB_b = alloca %struct.FLA_Obj_view, align 8
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  store i64 %call, ptr %b_alg, align 8
  %call1 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call1, ptr %datatype_A, align 4
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call2, ptr %m_A, align 8
  %0 = load i32, ptr %datatype_A, align 4
  %1 = load i64, ptr %m_A, align 8
  %2 = load i64, ptr %b_alg, align 8
  %call3 = call i32 @FLA_Obj_create(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef 0, i64 noundef 0, ptr noundef %U)
  %3 = load i32, ptr %datatype_A, align 4
  %4 = load i64, ptr %m_A, align 8
  %5 = load i64, ptr %b_alg, align 8
  %call4 = call i32 @FLA_Obj_create(i32 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef 0, i64 noundef 0, ptr noundef %Z)
  %call5 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %ATL, ptr noundef %ATR, ptr noundef %ABL, ptr noundef %ABR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call6 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %U, ptr noundef %UT, ptr noundef %UB, i64 noundef 0, i32 noundef 200)
  %call7 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z, ptr noundef %ZT, ptr noundef %ZB, i64 noundef 0, i32 noundef 200)
  %call8 = call i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef %TL, ptr noundef %TR, i64 noundef 0, i32 noundef 210)
  br label %while.cond

while.cond:                                       ; preds = %if.end47, %entry
  %call9 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL)
  %call10 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  %cmp = icmp ult i64 %call9, %call10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call11 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR)
  %6 = load i64, ptr %b_alg, align 8
  %cmp12 = icmp ult i64 %call11, %6
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %call13 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR)
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %7 = load i64, ptr %b_alg, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call13, %cond.true ], [ %7, %cond.false ]
  store i64 %cond, ptr %b, align 8
  %8 = load i64, ptr %b, align 8
  %9 = load i64, ptr %b, align 8
  %call14 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef %A00, ptr noundef %A01, ptr noundef %A02, ptr noundef %A10, ptr noundef %A11, ptr noundef %A12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, ptr noundef %A20, ptr noundef %A21, ptr noundef %A22, i64 noundef %8, i64 noundef %9, i32 noundef 22)
  %10 = load i64, ptr %b, align 8
  %call15 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %UT, ptr noundef %U0, ptr noundef %U1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %UB, ptr noundef %U2, i64 noundef %10, i32 noundef 201)
  %11 = load i64, ptr %b, align 8
  %call16 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZT, ptr noundef %Z0, ptr noundef %Z1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZB, ptr noundef %Z2, i64 noundef %11, i32 noundef 201)
  %12 = load i64, ptr %b, align 8
  %call17 = call i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %TL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TR, ptr noundef %T0, ptr noundef %T1, ptr noundef %W12, i64 noundef %12, i32 noundef 211)
  %13 = load i64, ptr %b, align 8
  %14 = load i64, ptr %b, align 8
  %call18 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T1, ptr noundef %T1_tl, ptr noundef %none, ptr noundef %none2, ptr noundef %none3, i64 noundef %13, i64 noundef %14, i32 noundef 11)
  %call19 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR)
  %sub = sub i64 %call19, 1
  %15 = load i64, ptr %b_alg, align 8
  %cmp20 = icmp ult i64 %sub, %15
  br i1 %cmp20, label %cond.true21, label %cond.false24

cond.true21:                                      ; preds = %cond.end
  %call22 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR)
  %sub23 = sub i64 %call22, 1
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end
  %16 = load i64, ptr %b_alg, align 8
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %cond.true21
  %cond26 = phi i64 [ %sub23, %cond.true21 ], [ %16, %cond.false24 ]
  store i64 %cond26, ptr %bb, align 8
  %17 = load i64, ptr %bb, align 8
  %call27 = call i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %UB, ptr noundef %UB_l, ptr noundef %none, i64 noundef %17, i32 noundef 210)
  %18 = load i64, ptr %bb, align 8
  %call28 = call i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZB, ptr noundef %ZB_l, ptr noundef %none, i64 noundef %18, i32 noundef 210)
  %call29 = call i32 @FLA_Hess_UT_step_opt_var5(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %UB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T1_tl)
  %call30 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR)
  %cmp31 = icmp ugt i64 %call30, 0
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end25
  %19 = load i64, ptr %bb, align 8
  %call32 = call i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZT, ptr noundef %WT_l, ptr noundef %none, i64 noundef %19, i32 noundef 210)
  %20 = load i64, ptr %bb, align 8
  %21 = load i64, ptr %bb, align 8
  %call33 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T1, ptr noundef %T1_tl, ptr noundef %none, ptr noundef %none2, ptr noundef %none3, i64 noundef %20, i64 noundef %21, i32 noundef 11)
  %call34 = call i32 @FLA_Gemm_external(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %UB_l, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %WT_l)
  %call35 = call i32 @FLA_Trsm_external(i32 noundef 211, i32 noundef 301, i32 noundef 400, i32 noundef 501, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T1_tl, ptr noundef byval(%struct.FLA_Obj_view) align 8 %WT_l)
  %call36 = call i32 @FLA_Gemm_external(i32 noundef 400, i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %WT_l, ptr noundef byval(%struct.FLA_Obj_view) align 8 %UB_l, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end25
  %call37 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12)
  %cmp38 = icmp ugt i64 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end47

if.then39:                                        ; preds = %if.end
  %call40 = call i32 @FLA_Copyt_external(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U2, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W12)
  %call41 = call i32 @FLA_Trsm_external(i32 noundef 210, i32 noundef 301, i32 noundef 400, i32 noundef 501, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T1_tl, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W12)
  %call42 = call i32 @FLA_Merge_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, ptr noundef %ABR2)
  %call43 = call i32 @FLA_Gemm_external(i32 noundef 400, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W12, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR2)
  %call44 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %UB, ptr noundef %none, ptr noundef %UB_b, i64 noundef 1, i32 noundef 200)
  %call45 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR2, ptr noundef %none, ptr noundef %ABR2_b, i64 noundef 1, i32 noundef 200)
  %call46 = call i32 @FLA_Apply_Q_UT(i32 noundef 210, i32 noundef 402, i32 noundef 800, i32 noundef 900, ptr noundef byval(%struct.FLA_Obj_view) align 8 %UB_b, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T1_tl, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W12, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR2_b)
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.end
  %call48 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ATL, ptr noundef %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A10, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A12, ptr noundef %ABL, ptr noundef %ABR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, i32 noundef 11)
  %call49 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %UT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U1, ptr noundef %UB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U2, i32 noundef 200)
  %call50 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %ZT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z1, ptr noundef %ZB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z2, i32 noundef 200)
  %call51 = call i32 @FLA_Cont_with_1x3_to_1x2(ptr noundef %TL, ptr noundef %TR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %W12, i32 noundef 210)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call52 = call i32 @FLA_Obj_free(ptr noundef %U)
  %call53 = call i32 @FLA_Obj_free(ptr noundef %Z)
  ret i32 -1
}

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Obj_create(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Part_1x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Repart_1x2_to_1x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @FLA_Hess_UT_step_opt_var5(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Gemm_external(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Trsm_external(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Copyt_external(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Merge_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #1

declare i32 @FLA_Apply_Q_UT(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #1

declare i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

declare i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

declare i32 @FLA_Cont_with_1x3_to_1x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #1

declare i32 @FLA_Obj_free(ptr noundef) #1

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

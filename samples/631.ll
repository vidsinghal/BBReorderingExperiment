; ModuleID = 'samples/631.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/dec/q/qrutpiv/vars/flamec/FLA_QR_UT_piv_unb_var2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_QR_UT_piv_unb_var2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p) #0 {
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
  %TTL = alloca %struct.FLA_Obj_view, align 8
  %TTR = alloca %struct.FLA_Obj_view, align 8
  %T00 = alloca %struct.FLA_Obj_view, align 8
  %t01 = alloca %struct.FLA_Obj_view, align 8
  %T02 = alloca %struct.FLA_Obj_view, align 8
  %TBL = alloca %struct.FLA_Obj_view, align 8
  %TBR = alloca %struct.FLA_Obj_view, align 8
  %t10t = alloca %struct.FLA_Obj_view, align 8
  %tau11 = alloca %struct.FLA_Obj_view, align 8
  %t12t = alloca %struct.FLA_Obj_view, align 8
  %T20 = alloca %struct.FLA_Obj_view, align 8
  %t21 = alloca %struct.FLA_Obj_view, align 8
  %T22 = alloca %struct.FLA_Obj_view, align 8
  %pT = alloca %struct.FLA_Obj_view, align 8
  %p0 = alloca %struct.FLA_Obj_view, align 8
  %pB = alloca %struct.FLA_Obj_view, align 8
  %pi1 = alloca %struct.FLA_Obj_view, align 8
  %p2 = alloca %struct.FLA_Obj_view, align 8
  %wT = alloca %struct.FLA_Obj_view, align 8
  %w0 = alloca %struct.FLA_Obj_view, align 8
  %wB = alloca %struct.FLA_Obj_view, align 8
  %omega1 = alloca %struct.FLA_Obj_view, align 8
  %w2 = alloca %struct.FLA_Obj_view, align 8
  %ab1 = alloca %struct.FLA_Obj_view, align 8
  %v = alloca %struct.FLA_Obj_view, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %ATL) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %ATR) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A00) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %a01) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A02) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %ABL) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %ABR) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %a10t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %alpha11) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %a12t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A20) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %a21) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %A22) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %TTL) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %TTR) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T00) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %t01) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T02) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %TBL) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %TBR) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %t10t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %tau11) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %t12t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T20) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %t21) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %T22) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %pT) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %p0) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %pB) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %pi1) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %p2) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %wT) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %w0) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %wB) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %omega1) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %w2) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %ab1) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %v) #3
  %call = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %call1 = call i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  %call2 = call i32 @FLA_Obj_create(i32 noundef %call, i64 noundef 1, i64 noundef %call1, i64 noundef 0, i64 noundef 0, ptr noundef %v)
  %call3 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %ATL, ptr noundef %ATR, ptr noundef %ABL, ptr noundef %ABR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call4 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef %TTL, ptr noundef %TTR, ptr noundef %TBL, ptr noundef %TBR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call5 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %p, ptr noundef %pT, ptr noundef %pB, i64 noundef 0, i32 noundef 200)
  %call6 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %w, ptr noundef %wT, ptr noundef %wB, i64 noundef 0, i32 noundef 200)
  br label %while.cond

while.cond:                                       ; preds = %if.end23, %entry
  %call7 = call i64 @FLA_Obj_min_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8 %pB)
  %cmp = icmp ugt i64 %call7, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call8 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef %A00, ptr noundef %a01, ptr noundef %A02, ptr noundef %a10t, ptr noundef %alpha11, ptr noundef %a12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, ptr noundef %A20, ptr noundef %a21, ptr noundef %A22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call9 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %TTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TTR, ptr noundef %T00, ptr noundef %t01, ptr noundef %T02, ptr noundef %t10t, ptr noundef %tau11, ptr noundef %t12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TBR, ptr noundef %T20, ptr noundef %t21, ptr noundef %T22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call10 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %pT, ptr noundef %p0, ptr noundef %pi1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %pB, ptr noundef %p2, i64 noundef 1, i32 noundef 201)
  %call11 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %wT, ptr noundef %w0, ptr noundef %omega1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %wB, ptr noundef %w2, i64 noundef 1, i32 noundef 201)
  %call12 = call i32 @FLA_Obj_lt(ptr noundef byval(%struct.FLA_Obj_view) align 8 %pi1, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call14 = call i32 @FLA_Amax_external(ptr noundef byval(%struct.FLA_Obj_view) align 8 %wB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %pi1)
  %call15 = call i32 @FLA_Obj_lt(ptr noundef byval(%struct.FLA_Obj_view) align 8 %pi1, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO)
  %cmp16 = icmp eq i32 %call15, 1
  br i1 %cmp16, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.then
  %call18 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %pi1)
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then
  %call19 = call i32 @FLA_Apply_pivots(i32 noundef 210, i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %pi1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %wB)
  %call20 = call i32 @FLA_Apply_pivots(i32 noundef 211, i32 noundef 401, ptr noundef byval(%struct.FLA_Obj_view) align 8 %pi1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR)
  %call21 = call i32 @FLA_Apply_pivots(i32 noundef 211, i32 noundef 401, ptr noundef byval(%struct.FLA_Obj_view) align 8 %pi1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TTR)
  br label %if.end23

if.else:                                          ; preds = %while.body
  %call22 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %pi1)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end
  %call24 = call i32 @FLA_Merge_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef %ab1)
  %call25 = call i32 @FLA_Gemv_external(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t01, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ab1)
  %call26 = call i32 @FLA_Househ2_UT(i32 noundef 210, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %tau11)
  %call27 = call i32 @FLA_Apply_H2_UT_piv_row(ptr noundef byval(%struct.FLA_Obj_view) align 8 %tau11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %v)
  %call28 = call i32 @FLA_Apply_pivots(i32 noundef 211, i32 noundef 401, ptr noundef byval(%struct.FLA_Obj_view) align 8 %pi1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR)
  %call29 = call i32 @FLA_QR_UT_piv_colnorm(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w2)
  %call30 = call i32 @FLA_Copyt_external(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t01)
  %call31 = call i32 @FLA_Gemv_external(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t01)
  %call32 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ATL, ptr noundef %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t, ptr noundef %ABL, ptr noundef %ABR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, i32 noundef 11)
  %call33 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %TTL, ptr noundef %TTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %tau11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t12t, ptr noundef %TBL, ptr noundef %TBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T22, i32 noundef 11)
  %call34 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %pT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %pi1, ptr noundef %pB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %p2, i32 noundef 200)
  %call35 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %wT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %omega1, ptr noundef %wB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w2, i32 noundef 200)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call36 = call i32 @FLA_Obj_free(ptr noundef %v)
  call void @llvm.lifetime.end.p0(i64 56, ptr %v) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ab1) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %w2) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %omega1) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %wB) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %w0) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %wT) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %p2) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %pi1) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %pB) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %p0) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %pT) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T22) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %t21) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T20) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %t12t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %tau11) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %t10t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %TBR) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %TBL) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T02) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %t01) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %T00) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %TTR) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %TTL) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A22) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %a21) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A20) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %a12t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %alpha11) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %a10t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ABR) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ABL) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A02) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %a01) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %A00) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ATR) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ATL) #3
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Obj_create(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i64 @FLA_Obj_width(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @FLA_Obj_min_dim(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, i64 noundef, i32 noundef) #2

declare i32 @FLA_Obj_lt(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Amax_external(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Apply_pivots(i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Merge_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

declare i32 @FLA_Gemv_external(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Househ2_UT(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Apply_H2_UT_piv_row(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_QR_UT_piv_colnorm(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Copyt_external(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #2

declare i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #2

declare i32 @FLA_Obj_free(ptr noundef) #2

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}

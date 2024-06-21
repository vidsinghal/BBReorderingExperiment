; ModuleID = 'samples/991.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/lapack/red/hessut/vars/flamec/FLA_Hess_UT_unb_var5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

@FLA_ZERO = external global %struct.FLA_Obj_view, align 8
@FLA_MINUS_ONE = external global %struct.FLA_Obj_view, align 8
@FLA_ONE = external global %struct.FLA_Obj_view, align 8

; Function Attrs: nounwind uwtable
define i32 @FLA_Hess_UT_unb_var5(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T) #0 {
entry:
  %r_val = alloca i32, align 4
  %U = alloca %struct.FLA_Obj_view, align 8
  %Z = alloca %struct.FLA_Obj_view, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %r_val) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %U) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %Z) #3
  %call = call i32 @FLA_Obj_create_conf_to(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %U)
  %call1 = call i32 @FLA_Obj_create_conf_to(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %Z)
  %call2 = call i32 @FLA_Hess_UT_step_unb_var5(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  store i32 %call2, ptr %r_val, align 4, !tbaa !4
  %call3 = call i32 @FLA_Obj_free(ptr noundef %U)
  %call4 = call i32 @FLA_Obj_free(ptr noundef %Z)
  %0 = load i32, ptr %r_val, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 56, ptr %Z) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %U) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %r_val) #3
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @FLA_Obj_create_conf_to(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @FLA_Hess_UT_step_unb_var5(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T) #0 {
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
  %UTL = alloca %struct.FLA_Obj_view, align 8
  %UTR = alloca %struct.FLA_Obj_view, align 8
  %U00 = alloca %struct.FLA_Obj_view, align 8
  %u01 = alloca %struct.FLA_Obj_view, align 8
  %U02 = alloca %struct.FLA_Obj_view, align 8
  %UBL = alloca %struct.FLA_Obj_view, align 8
  %UBR = alloca %struct.FLA_Obj_view, align 8
  %u10t = alloca %struct.FLA_Obj_view, align 8
  %upsilon11 = alloca %struct.FLA_Obj_view, align 8
  %u12t = alloca %struct.FLA_Obj_view, align 8
  %U20 = alloca %struct.FLA_Obj_view, align 8
  %u21 = alloca %struct.FLA_Obj_view, align 8
  %U22 = alloca %struct.FLA_Obj_view, align 8
  %ZTL = alloca %struct.FLA_Obj_view, align 8
  %ZTR = alloca %struct.FLA_Obj_view, align 8
  %Z00 = alloca %struct.FLA_Obj_view, align 8
  %z01 = alloca %struct.FLA_Obj_view, align 8
  %Z02 = alloca %struct.FLA_Obj_view, align 8
  %ZBL = alloca %struct.FLA_Obj_view, align 8
  %ZBR = alloca %struct.FLA_Obj_view, align 8
  %z10t = alloca %struct.FLA_Obj_view, align 8
  %zeta11 = alloca %struct.FLA_Obj_view, align 8
  %z12t = alloca %struct.FLA_Obj_view, align 8
  %Z20 = alloca %struct.FLA_Obj_view, align 8
  %z21 = alloca %struct.FLA_Obj_view, align 8
  %Z22 = alloca %struct.FLA_Obj_view, align 8
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
  %wT = alloca %struct.FLA_Obj_view, align 8
  %w0 = alloca %struct.FLA_Obj_view, align 8
  %wB = alloca %struct.FLA_Obj_view, align 8
  %omega1 = alloca %struct.FLA_Obj_view, align 8
  %w2 = alloca %struct.FLA_Obj_view, align 8
  %w = alloca %struct.FLA_Obj_view, align 8
  %a21_t = alloca %struct.FLA_Obj_view, align 8
  %a21_b = alloca %struct.FLA_Obj_view, align 8
  %u21_t = alloca %struct.FLA_Obj_view, align 8
  %u21_b = alloca %struct.FLA_Obj_view, align 8
  %datatype_A = alloca i32, align 4
  %m_A = alloca i64, align 8
  %b_alg = alloca i64, align 8
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
  call void @llvm.lifetime.start.p0(i64 56, ptr %UTL) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %UTR) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %U00) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %u01) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %U02) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %UBL) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %UBR) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %u10t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %upsilon11) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %u12t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %U20) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %u21) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %U22) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %ZTL) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %ZTR) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %Z00) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %z01) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %Z02) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %ZBL) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %ZBR) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %z10t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %zeta11) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %z12t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %Z20) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %z21) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %Z22) #3
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
  call void @llvm.lifetime.start.p0(i64 56, ptr %wT) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %w0) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %wB) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %omega1) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %w2) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %w) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %a21_t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %a21_b) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %u21_t) #3
  call void @llvm.lifetime.start.p0(i64 56, ptr %u21_b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %datatype_A) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %m_A) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_alg) #3
  %call = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T)
  store i64 %call, ptr %b_alg, align 8, !tbaa !8
  %call1 = call i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i32 %call1, ptr %datatype_A, align 4, !tbaa !4
  %call2 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A)
  store i64 %call2, ptr %m_A, align 8, !tbaa !8
  %0 = load i32, ptr %datatype_A, align 4, !tbaa !4
  %1 = load i64, ptr %m_A, align 8, !tbaa !8
  %call3 = call i32 @FLA_Obj_create(i32 noundef %0, i64 noundef %1, i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noundef %w)
  %call4 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U)
  %call5 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z)
  %call6 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %A, ptr noundef %ATL, ptr noundef %ATR, ptr noundef %ABL, ptr noundef %ABR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call7 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %U, ptr noundef %UTL, ptr noundef %UTR, ptr noundef %UBL, ptr noundef %UBR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call8 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z, ptr noundef %ZTL, ptr noundef %ZTR, ptr noundef %ZBL, ptr noundef %ZBR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call9 = call i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8 %T, ptr noundef %TTL, ptr noundef %TTR, ptr noundef %TBL, ptr noundef %TBR, i64 noundef 0, i64 noundef 0, i32 noundef 11)
  %call10 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %w, ptr noundef %wT, ptr noundef %wB, i64 noundef 0, i32 noundef 200)
  br label %while.cond

while.cond:                                       ; preds = %if.end43, %entry
  %call11 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL)
  %2 = load i64, ptr %b_alg, align 8, !tbaa !8
  %cmp = icmp ult i64 %call11, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call12 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATR, ptr noundef %A00, ptr noundef %a01, ptr noundef %A02, ptr noundef %a10t, ptr noundef %alpha11, ptr noundef %a12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ABR, ptr noundef %A20, ptr noundef %a21, ptr noundef %A22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call13 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %UTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %UTR, ptr noundef %U00, ptr noundef %u01, ptr noundef %U02, ptr noundef %u10t, ptr noundef %upsilon11, ptr noundef %u12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %UBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %UBR, ptr noundef %U20, ptr noundef %u21, ptr noundef %U22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call14 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZTR, ptr noundef %Z00, ptr noundef %z01, ptr noundef %Z02, ptr noundef %z10t, ptr noundef %zeta11, ptr noundef %z12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %ZBR, ptr noundef %Z20, ptr noundef %z21, ptr noundef %Z22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call15 = call i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8 %TTL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TTR, ptr noundef %T00, ptr noundef %t01, ptr noundef %T02, ptr noundef %t10t, ptr noundef %tau11, ptr noundef %t12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TBL, ptr noundef byval(%struct.FLA_Obj_view) align 8 %TBR, ptr noundef %T20, ptr noundef %t21, ptr noundef %T22, i64 noundef 1, i64 noundef 1, i32 noundef 22)
  %call16 = call i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %wT, ptr noundef %w0, ptr noundef %omega1, ptr noundef byval(%struct.FLA_Obj_view) align 8 %wB, ptr noundef %w2, i64 noundef 1, i32 noundef 201)
  %call17 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %ATL)
  %cmp18 = icmp ugt i64 %call17, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call19 = call i32 @FLA_Copyt(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0)
  %call20 = call i32 @FLA_Trsv(i32 noundef 301, i32 noundef 400, i32 noundef 501, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0)
  %call21 = call i32 @FLA_Gemv(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a01)
  %call22 = call i32 @FLA_Dots(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11)
  %call23 = call i32 @FLA_Gemv(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21)
  %call24 = call i32 @FLA_Trmvsx(i32 noundef 300, i32 noundef 402, i32 noundef 501, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a01, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0)
  %call25 = call i32 @FLA_Axpyt(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0)
  %call26 = call i32 @FLA_Gemv(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0)
  %call27 = call i32 @FLA_Trsv(i32 noundef 301, i32 noundef 402, i32 noundef 501, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0)
  %call28 = call i32 @FLA_Trmvsx(i32 noundef 300, i32 noundef 400, i32 noundef 501, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a01)
  %call29 = call i32 @FLA_Dots(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11)
  %call30 = call i32 @FLA_Gemv(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_MINUS_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call31 = call i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21)
  %cmp32 = icmp ugt i64 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end43

if.then33:                                        ; preds = %if.end
  %call34 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef %a21_t, ptr noundef %a21_b, i64 noundef 1, i32 noundef 200)
  %call35 = call i32 @FLA_Househ2_UT(i32 noundef 210, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21_t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21_b, ptr noundef byval(%struct.FLA_Obj_view) align 8 %tau11)
  %call36 = call i32 @FLA_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u21)
  %call37 = call i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8 %u21, ptr noundef %u21_t, ptr noundef %u21_b, i64 noundef 1, i32 noundef 200)
  %call38 = call i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u21_t)
  %call39 = call i32 @FLA_Gemv(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z01)
  %call40 = call i32 @FLA_Dot(ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %zeta11)
  %call41 = call i32 @FLA_Gemv(i32 noundef 400, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z21)
  %call42 = call i32 @FLA_Gemv(i32 noundef 402, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ONE, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u21, ptr noundef byval(%struct.FLA_Obj_view) align 8 @FLA_ZERO, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t01)
  br label %if.end43

if.end43:                                         ; preds = %if.then33, %if.end
  %call44 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ATL, ptr noundef %ATR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %alpha11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a12t, ptr noundef %ABL, ptr noundef %ABR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %a21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %A22, i32 noundef 11)
  %call45 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %UTL, ptr noundef %UTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %upsilon11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u12t, ptr noundef %UBL, ptr noundef %UBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %u21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %U22, i32 noundef 11)
  %call46 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %ZTL, ptr noundef %ZTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %zeta11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z12t, ptr noundef %ZBL, ptr noundef %ZBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %z21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %Z22, i32 noundef 11)
  %call47 = call i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef %TTL, ptr noundef %TTR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T00, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t01, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T02, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t10t, ptr noundef byval(%struct.FLA_Obj_view) align 8 %tau11, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t12t, ptr noundef %TBL, ptr noundef %TBR, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T20, ptr noundef byval(%struct.FLA_Obj_view) align 8 %t21, ptr noundef byval(%struct.FLA_Obj_view) align 8 %T22, i32 noundef 11)
  %call48 = call i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef %wT, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w0, ptr noundef byval(%struct.FLA_Obj_view) align 8 %omega1, ptr noundef %wB, ptr noundef byval(%struct.FLA_Obj_view) align 8 %w2, i32 noundef 200)
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %call49 = call i32 @FLA_Obj_free(ptr noundef %w)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_alg) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %m_A) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %datatype_A) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %u21_b) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %u21_t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %a21_b) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %a21_t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %w) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %w2) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %omega1) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %wB) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %w0) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %wT) #3
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
  call void @llvm.lifetime.end.p0(i64 56, ptr %Z22) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %z21) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %Z20) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %z12t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %zeta11) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %z10t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ZBR) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ZBL) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %Z02) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %z01) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %Z00) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ZTR) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %ZTL) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %U22) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %u21) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %U20) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %u12t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %upsilon11) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %u10t) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %UBR) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %UBL) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %U02) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %u01) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %U00) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %UTR) #3
  call void @llvm.lifetime.end.p0(i64 56, ptr %UTL) #3
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

declare i32 @FLA_Obj_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i64 @FLA_Obj_length(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Obj_datatype(ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Obj_create(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @FLA_Set(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Part_2x2(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare i32 @FLA_Part_2x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare i32 @FLA_Repart_2x2_to_3x3(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare i32 @FLA_Repart_2x1_to_3x1(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, i64 noundef, i32 noundef) #2

declare i32 @FLA_Copyt(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Trsv(i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Gemv(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Dots(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Trmvsx(i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Axpyt(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Househ2_UT(i32 noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Copy(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Dot(ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8) #2

declare i32 @FLA_Cont_with_3x3_to_2x2(ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #2

declare i32 @FLA_Cont_with_3x1_to_2x1(ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef byval(%struct.FLA_Obj_view) align 8, ptr noundef, ptr noundef byval(%struct.FLA_Obj_view) align 8, i32 noundef) #2

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
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @v3p_netlib_dlarfg_(ptr %n, ptr %alpha, i1 %cmp) {
entry:
  %d__1111 = alloca [0 x [0 x [0 x double]]], i32 0, align 8
  %i__1 = alloca i64, align 8
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %call = call double @v3p_netlib_dnrm2_(ptr %i__1)
  %call42 = load volatile double, ptr %d__1111, align 8
  store double 0.000000e+00, ptr %alpha, align 8
  %0 = load i64, ptr %n, align 8
  store i64 %0, ptr %i__1, align 8
  store double 0.000000e+00, ptr %d__1111, align 8
  %call48 = call i32 @v3p_netlib_dscal_()
  store double 0.000000e+00, ptr %n, align 8
  br label %common.ret
}

declare double @v3p_netlib_dnrm2_(ptr)

declare i32 @v3p_netlib_dscal_()
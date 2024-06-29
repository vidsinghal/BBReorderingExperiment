; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @unur_distr_meixner(ptr %params, i32 %n_params, ptr %0) {
entry:
  %call = call ptr @unur_distr_cont_new()
  store i32 0, ptr %0, align 4
  %call2 = call i32 @_unur_set_params_meixner(ptr %params, i32 %n_params)
  ret ptr null
}

declare ptr @unur_distr_cont_new()

define internal i32 @_unur_set_params_meixner(ptr %params, i32 %n_params) {
entry:
  %cmp = icmp slt i32 %n_params, 4
  br i1 %cmp, label %do.body, label %if.end

common.ret:                                       ; preds = %do.body12, %lor.lhs.false, %do.body
  %common.ret.op = phi i32 [ 0, %do.body ], [ 0, %lor.lhs.false ], [ 0, %do.body12 ]
  ret i32 0

do.body:                                          ; preds = %entry
  call void @_unur_error_x(ptr null, ptr null, i32 0, ptr null, i32 1, ptr null)
  br label %common.ret

if.end:                                           ; preds = %entry
  %cmp1.not = icmp eq i32 %n_params, 4
  br i1 %cmp1.not, label %do.end7, label %do.body3

do.body3:                                         ; preds = %if.end
  call void @_unur_error_x(ptr null, ptr null, i32 0, ptr null, i32 0, ptr null)
  br label %do.end7

do.end7:                                          ; preds = %do.body3, %if.end
  %0 = load double, ptr %params, align 8
  %cmp8 = fcmp ugt double %0, 0.000000e+00
  br i1 %cmp8, label %lor.lhs.false, label %do.body12

lor.lhs.false:                                    ; preds = %do.end7
  call void @_unur_error_x(ptr null, ptr null, i32 1, ptr null, i32 0, ptr null)
  br label %common.ret

do.body12:                                        ; preds = %do.end7
  call void @_unur_error_x(ptr null, ptr null, i32 0, ptr null, i32 0, ptr null)
  br label %common.ret
}

declare void @_unur_error_x(ptr, ptr, i32, ptr, i32, ptr)

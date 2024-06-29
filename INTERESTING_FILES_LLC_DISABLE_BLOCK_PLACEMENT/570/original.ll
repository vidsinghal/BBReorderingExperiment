; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//570/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noalias noundef ptr @unur_distr_meixner(ptr nocapture readonly %params, i32 %n_params, ptr nocapture writeonly %0) local_unnamed_addr {
entry:
  %call = tail call ptr @unur_distr_cont_new()
  store i32 0, ptr %0, align 4
  %cmp.i = icmp slt i32 %n_params, 4
  br i1 %cmp.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %entry
  tail call void @_unur_error_x(ptr null, ptr null, i32 0, ptr null, i32 1, ptr null)
  br label %_unur_set_params_meixner.exit

if.end.i:                                         ; preds = %entry
  %cmp1.not.i = icmp eq i32 %n_params, 4
  br i1 %cmp1.not.i, label %do.end7.i, label %do.body3.i

do.body3.i:                                       ; preds = %if.end.i
  tail call void @_unur_error_x(ptr null, ptr null, i32 0, ptr null, i32 0, ptr null)
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.body3.i, %if.end.i
  %1 = load double, ptr %params, align 8
  %cmp8.i = fcmp ugt double %1, 0.000000e+00
  br i1 %cmp8.i, label %lor.lhs.false.i, label %do.body12.i

lor.lhs.false.i:                                  ; preds = %do.end7.i
  tail call void @_unur_error_x(ptr null, ptr null, i32 1, ptr null, i32 0, ptr null)
  br label %_unur_set_params_meixner.exit

do.body12.i:                                      ; preds = %do.end7.i
  tail call void @_unur_error_x(ptr null, ptr null, i32 0, ptr null, i32 0, ptr null)
  br label %_unur_set_params_meixner.exit

_unur_set_params_meixner.exit:                    ; preds = %do.body.i, %lor.lhs.false.i, %do.body12.i
  ret ptr null
}

declare ptr @unur_distr_cont_new() local_unnamed_addr

declare void @_unur_error_x(ptr, ptr, i32, ptr, i32, ptr) local_unnamed_addr

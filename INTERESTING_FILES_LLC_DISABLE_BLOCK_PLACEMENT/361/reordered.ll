; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//361/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noalias noundef ptr @unur_hinv_new(ptr nocapture readonly %distr, ptr nocapture %0, i1 %cmp.not, ptr nocapture writeonly %1) local_unnamed_addr {
entry:
  br i1 %cmp.not, label %if.end5, label %common.ret

if.end5:                                          ; preds = %entry
  %call2 = tail call ptr @_unur_par_new()
  store ptr null, ptr %1, align 8
  %2 = load ptr, ptr %distr, align 8
  %tobool14.not = icmp eq ptr %2, null
  %cond = select i1 %tobool14.not, i32 0, i32 3
  %3 = load ptr, ptr %0, align 8
  store i32 %cond, ptr %3, align 8
  %4 = load ptr, ptr %distr, align 8
  %u_resolution = getelementptr i8, ptr %4, i64 8
  store double 0.000000e+00, ptr %u_resolution, align 8
  %5 = load ptr, ptr %distr, align 8
  %guide_factor = getelementptr i8, ptr %5, i64 16
  store double 0.000000e+00, ptr %guide_factor, align 8
  store double 0.000000e+00, ptr %0, align 8
  %6 = load ptr, ptr %distr, align 8
  %bright = getelementptr i8, ptr %6, i64 32
  store double 0.000000e+00, ptr %bright, align 8
  %7 = load ptr, ptr %distr, align 8
  %max_ivs = getelementptr i8, ptr %7, i64 52
  store i32 0, ptr %max_ivs, align 4
  br label %common.ret

common.ret:                                       ; preds = %if.end5, %entry
  ret ptr null
}

declare ptr @_unur_par_new() local_unnamed_addr

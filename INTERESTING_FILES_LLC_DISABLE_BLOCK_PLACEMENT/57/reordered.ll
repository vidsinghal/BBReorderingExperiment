; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//57/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @vtkexodusII_ex_put_loadbal_param_cc(i1 %cmp24.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp24.not, label %if.end33, label %if.then25

if.end33:                                         ; preds = %entry
  %call45 = load volatile i32, ptr null, align 4294967296
  %call49 = tail call i32 (...) @snprintf()
  unreachable

if.then25:                                        ; preds = %entry
  %call27 = tail call i32 (...) @snprintf()
  unreachable
}

declare i32 @snprintf(...) local_unnamed_addr

attributes #0 = { noreturn }

; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//169/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @s2n_server_cookie_recv() local_unnamed_addr #0 {
entry:
  %call8 = load volatile i1, ptr null, align 4294967296
  br i1 %call8, label %do.end18, label %common.ret1

common.ret1:                                      ; preds = %do.end18, %entry
  ret i32 0

do.end18:                                         ; preds = %entry
  %call20 = load volatile i32, ptr null, align 4294967296
  br label %common.ret1
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }

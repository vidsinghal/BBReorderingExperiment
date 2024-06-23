; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//485/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @jcmd_jwk_eql() local_unnamed_addr {
entry:
  %call = load volatile i1, ptr null, align 4294967296
  br i1 %call, label %if.end, label %cleanup18

if.end:                                           ; preds = %entry
  %call3 = tail call i32 (...) @fprintf()
  br label %cleanup18

cleanup18:                                        ; preds = %if.end, %entry
  ret i32 0
}

declare i32 @fprintf(...) local_unnamed_addr

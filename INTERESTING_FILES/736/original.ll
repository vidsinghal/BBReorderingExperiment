; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//736/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @ex_open_par_int(i32 %mode) local_unnamed_addr #0 {
entry:
  %call13 = load volatile i32, ptr null, align 4294967296
  %and21 = and i32 %mode, 1
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else, label %common.ret

common.ret:                                       ; preds = %if.else, %entry
  ret i32 0

if.else:                                          ; preds = %entry
  %call34 = load volatile i32, ptr null, align 4294967296
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }

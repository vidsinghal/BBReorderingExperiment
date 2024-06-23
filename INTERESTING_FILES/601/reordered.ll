; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//601/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @stfsm_(i32 %call, i32 %call3) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp ne i32 %call, 0
  %tobool8.not = icmp eq i32 %call3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %if.end47, label %if.else13

if.end47:                                         ; preds = %if.else13, %entry
  ret i32 0

if.else13:                                        ; preds = %entry
  %call26 = load volatile i32, ptr null, align 4294967296
  br label %if.end47
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }

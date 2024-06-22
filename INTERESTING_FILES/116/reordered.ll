; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//116/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @vtkexodusII_ex_get_side_set_node_count(i64 %call3) local_unnamed_addr #0 {
entry:
  %0 = and i64 %call3, 1
  %cmp11 = icmp eq i64 %0, 0
  br i1 %cmp11, label %if.then13, label %common.ret

if.then13:                                        ; preds = %entry
  %call15 = load volatile i32, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.then13, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }

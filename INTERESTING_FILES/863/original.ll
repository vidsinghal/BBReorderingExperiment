; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//863/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @vtkexodusII_ex_get_concat_side_set_node_count(ptr nocapture writeonly %ex_errval, i64 %call3, i1 %cmp24.not, ptr nocapture writeonly %0) local_unnamed_addr #0 {
entry:
  store i32 0, ptr %0, align 4
  store i32 0, ptr %ex_errval, align 4
  %cmp11 = icmp ne i64 %call3, 0
  %brmerge = select i1 %cmp11, i1 %cmp24.not, i1 false
  br i1 %brmerge, label %common.ret, label %if.then26

common.ret:                                       ; preds = %if.then26, %entry
  ret i32 0

if.then26:                                        ; preds = %entry
  %call28 = load volatile i32, ptr null, align 4294967296
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }

; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//37/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @hwloc_set_membind_by_nodeset(i32 %policy, ptr nocapture writeonly %call1, i1 %tobool.not.not) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %policy, 0
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %common.ret

if.then:                                          ; preds = %entry
  store i32 0, ptr %call1, align 4
  br label %common.ret

common.ret:                                       ; preds = %if.then, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }

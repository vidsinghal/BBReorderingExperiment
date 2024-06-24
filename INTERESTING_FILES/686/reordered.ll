; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//686/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @klu_z_scale(i32 %scale, ptr nocapture writeonly %Common, i1 %cmp11.not, i1 %cmp1, i1 %not.cmp1) local_unnamed_addr #0 {
entry:
  %cmp4 = icmp sgt i32 %scale, 0
  %or.cond = and i1 %cmp4, %cmp11.not
  %or.cond1 = select i1 %cmp1, i1 %or.cond, i1 false
  br i1 %or.cond1, label %common.ret, label %if.then13

if.then13:                                        ; preds = %entry
  store i32 0, ptr %Common, align 4
  br label %common.ret

common.ret:                                       ; preds = %if.then13, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }

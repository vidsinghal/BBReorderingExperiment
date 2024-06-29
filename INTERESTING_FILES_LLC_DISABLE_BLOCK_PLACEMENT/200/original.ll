; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//200/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(inaccessiblemem: write)
define void @umfzl_assemble_fixq(ptr readnone %Numeric, i1 %tobool70.not) local_unnamed_addr #0 {
entry:
  %Numeric3 = ptrtoint ptr %Numeric to i64
  tail call void @llvm.assume(i1 %tobool70.not)
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.body67.lr.ph, %entry
  %tp.0.ph = phi ptr [ %scevgep5, %for.body67.lr.ph ], [ null, %entry ]
  %cmp651 = icmp ult ptr %tp.0.ph, %Numeric
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.cond
  br i1 %cmp651, label %for.body67.lr.ph, label %for.cond

for.body67.lr.ph:                                 ; preds = %for.cond
  %tp.04 = ptrtoint ptr %tp.0.ph to i64
  %0 = add i64 %tp.04, 16
  %umax = tail call i64 @llvm.umax.i64(i64 %Numeric3, i64 %0)
  %1 = xor i64 %tp.04, -1
  %2 = add i64 %umax, %1
  %3 = and i64 %2, -16
  %scevgep = getelementptr i8, ptr %tp.0.ph, i64 16
  %scevgep5 = getelementptr i8, ptr %scevgep, i64 %3
  br label %for.cond.outer
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(inaccessiblemem: write) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

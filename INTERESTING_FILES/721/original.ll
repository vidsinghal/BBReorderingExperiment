; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//721/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noalias noundef ptr @Trpath_solve_from_diagonals(i32 %middle_trdiagonal_qstart, ptr nocapture readnone %qstart_trdiag, ptr nocapture readnone %qend_trdiag, i32 %querylength, i1 %cmp.not, i1 %cmp5, i32 %call20) local_unnamed_addr {
entry:
  %call204 = tail call i32 @Spliceends_trim_qend_nosplice()
  %cmp21 = icmp slt i32 %call20, 0
  %or.cond = or i1 %cmp21, %cmp.not
  br i1 %or.cond, label %common.ret, label %if.else26

common.ret:                                       ; preds = %if.else26, %entry
  ret ptr null

if.else26:                                        ; preds = %entry
  %call27 = load volatile i32, ptr null, align 4294967296
  br label %common.ret
}

declare i32 @Spliceends_trim_qend_nosplice() local_unnamed_addr

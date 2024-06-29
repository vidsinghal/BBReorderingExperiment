; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//211/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define void @BLAS_stbsv_testgen(ptr readnone %call, i1 %cmp) local_unnamed_addr #0 {
entry:
  %call1 = load volatile ptr, ptr null, align 4294967296
  %cmp4 = icmp eq ptr %call, null
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void

if.then:                                          ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %if.end
}

attributes #0 = { nofree norecurse nounwind }

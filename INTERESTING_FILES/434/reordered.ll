; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//434/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define noundef i32 @FLA_Axpy_internal() local_unnamed_addr #0 {
entry:
  br label %tailrecurse

if.then:                                          ; preds = %tailrecurse
  %call1 = load volatile i32, ptr null, align 4294967296
  br label %if.end

tailrecurse:                                      ; preds = %if.end, %entry
  %call = load volatile i32, ptr null, align 4294967296
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.end:                                           ; preds = %if.then, %tailrecurse
  %call11 = load volatile ptr, ptr null, align 4294967296
  br label %tailrecurse
}

attributes #0 = { nofree norecurse noreturn nounwind }

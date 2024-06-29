; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//120/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define void @lsystem(i1 %cmp, i1 %cmp6, ptr readnone %call11) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %if.end

if.end:                                           ; preds = %if.else, %entry
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = load volatile i32, ptr null, align 4294967296
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %cmp12.not = icmp eq ptr %call11, null
  br i1 %cmp12.not, label %if.end38, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end10
  %call22 = load volatile ptr, ptr null, align 4294967296
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true, %if.end10
  ret void
}

attributes #0 = { nofree norecurse nounwind }

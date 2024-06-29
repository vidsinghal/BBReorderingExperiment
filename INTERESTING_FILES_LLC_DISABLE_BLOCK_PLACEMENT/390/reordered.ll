; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//390/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define noundef i32 @main_vcfgtcheck(i32 %argc, ptr nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  switch i32 %argc, label %while.cond [
    i32 103, label %while.cond.us.preheader
    i32 0, label %while.cond.us2
    i32 1, label %while.cond.us6
    i32 3, label %while.cond.us.preheader
    i32 84, label %while.cond.us10
    i32 116, label %while.cond.us.preheader
    i32 112, label %while.cond.us.preheader
    i32 114, label %while.cond.us.preheader
  ]

while.cond.us:                                    ; preds = %while.cond.us.preheader, %while.cond.us
  %call43.us = load volatile i32, ptr null, align 4294967296
  br label %while.cond.us

while.cond:                                       ; preds = %entry, %while.cond
  %call43 = load volatile i32, ptr null, align 4294967296
  %call5 = load volatile i64, ptr null, align 4294967296
  br label %while.cond

while.cond.us10:                                  ; preds = %entry, %while.cond.us10
  %call43.us11 = load volatile i32, ptr null, align 4294967296
  br label %while.cond.us10

while.cond.us6:                                   ; preds = %entry, %while.cond.us6
  %call43.us7 = load volatile i32, ptr null, align 4294967296
  %call57.us = load volatile i64, ptr null, align 4294967296
  br label %while.cond.us6

while.cond.us2:                                   ; preds = %entry, %while.cond.us2
  %call43.us3 = load volatile i32, ptr null, align 4294967296
  br label %while.cond.us2

while.cond.us.preheader:                          ; preds = %entry, %entry, %entry, %entry, %entry
  br label %while.cond.us
}

attributes #0 = { nofree norecurse noreturn nounwind }

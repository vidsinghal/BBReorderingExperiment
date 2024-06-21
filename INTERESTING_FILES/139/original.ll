; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//139/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define noundef i32 @gt_grep_unit_test(ptr nocapture readonly %match) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %match, align 1, !range !0, !noundef !1
  %tobool72 = trunc nuw i8 %0 to i1
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %entry
  ret i32 0
}

attributes #0 = { nofree norecurse nounwind }

!0 = !{i8 0, i8 2}
!1 = !{}

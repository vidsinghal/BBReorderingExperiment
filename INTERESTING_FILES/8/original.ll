; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//8/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @bli_strmv_unf_var2() local_unnamed_addr #0 {
entry:
  %call3 = load volatile ptr, ptr null, align 4294967296
  %call7.peel = load volatile i64, ptr null, align 4294967296
  tail call void %call3(i32 0, i32 0, i64 0, i64 0, ptr null, ptr null, i64 0, i64 0, ptr null, i64 0, ptr null, i64 0, ptr null)
  %cmp19.peel = icmp sgt i64 %call7.peel, 1
  br i1 %cmp19.peel, label %for.cond18.preheader, label %for.cond

for.cond:                                         ; preds = %entry, %for.cond
  %call7 = load volatile i64, ptr null, align 4294967296
  tail call void %call3(i32 0, i32 0, i64 1, i64 0, ptr null, ptr null, i64 0, i64 0, ptr null, i64 0, ptr null, i64 0, ptr null)
  %cmp19 = icmp sgt i64 %call7, 1
  br i1 %cmp19, label %for.cond18.preheader, label %for.cond, !llvm.loop !0

for.cond18.preheader:                             ; preds = %for.cond, %entry
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.cond18
  br label %for.cond18
}

attributes #0 = { noreturn }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}

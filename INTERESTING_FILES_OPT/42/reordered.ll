; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//42/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define noundef i32 @gt_rcr_analyse_alignment_data(ptr nocapture %rcr_enc, i1 %tobool41) local_unnamed_addr #0 {
entry:
  %prev_readpos.i = getelementptr i8, ptr %rcr_enc, i64 424
  br i1 %tobool41, label %entry.split.us, label %while.cond.preheader

entry.split.us:                                   ; preds = %entry
  %rcr_enc.promoted = load i64, ptr %rcr_enc, align 8
  %0 = icmp ult i64 %rcr_enc.promoted, 2
  br i1 %0, label %rcr_get_read_infos.exit.us.peel, label %for.cond.i

rcr_get_read_infos.exit.us.peel:                  ; preds = %entry.split.us
  store volatile i32 0, ptr null, align 4294967296
  store i64 0, ptr %prev_readpos.i, align 8
  store i64 0, ptr %rcr_enc, align 8
  br label %rcr_get_read_infos.exit.us

while.cond.preheader:                             ; preds = %entry
  store i64 0, ptr %rcr_enc, align 8
  br label %while.cond

for.cond.i:                                       ; preds = %entry.split.us, %for.cond.i
  br label %for.cond.i

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  store volatile i32 0, ptr null, align 4294967296
  store i64 0, ptr %prev_readpos.i, align 8
  br label %while.cond

rcr_get_read_infos.exit.us:                       ; preds = %rcr_get_read_infos.exit.us.peel, %rcr_get_read_infos.exit.us
  store volatile i32 0, ptr null, align 4294967296
  br label %rcr_get_read_infos.exit.us, !llvm.loop !0
}

; Function Attrs: nofree norecurse nounwind
define noundef i32 @rcr_get_read_infos(ptr nocapture %rcr_enc, i32 %0) local_unnamed_addr #1 {
entry:
  %.pre = load i64, ptr %rcr_enc, align 8
  %cmp68.peel.not = icmp eq i64 %.pre, 0
  br i1 %cmp68.peel.not, label %if.end72, label %for.cond.peel.next

for.cond:                                         ; preds = %for.cond, %for.cond.peel.next
  br i1 %cmp68.not, label %if.end72, label %for.cond, !llvm.loop !2

for.cond.peel.next:                               ; preds = %entry
  %cmp68.not = icmp eq i64 %.pre, 1
  br label %for.cond

if.end72:                                         ; preds = %for.cond, %entry
  store i64 0, ptr %rcr_enc, align 8
  %prev_readpos = getelementptr i8, ptr %rcr_enc, i64 424
  store volatile i32 0, ptr null, align 4294967296
  store i64 0, ptr %prev_readpos, align 8
  ret i32 0
}

attributes #0 = { nofree norecurse noreturn nounwind }
attributes #1 = { nofree norecurse nounwind }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
!2 = distinct !{!2, !1}

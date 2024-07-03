; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//996/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define noundef i32 @ctbsv_(i1 %tobool492.not, i32 %i__4.0, i32 %i__.0) local_unnamed_addr #0 {
entry:
  %i__4.0.fr = freeze i32 %i__4.0
  br i1 %tobool492.not, label %for.cond572.preheader.lr.ph, label %if.then493

for.cond572.preheader.lr.ph:                      ; preds = %entry
  %cmp573.not1 = icmp sgt i32 %i__4.0.fr, 0
  br i1 %cmp573.not1, label %for.cond572.preheader.us.us11, label %for.cond572.preheader.lr.ph.split

for.cond572.preheader.us.us11:                    ; preds = %for.cond572.preheader.lr.ph, %for.cond572.preheader.us.us11
  store volatile i32 0, ptr null, align 4294967296
  br label %for.cond572.preheader.us.us11

for.cond572.preheader.lr.ph.split:                ; preds = %for.cond572.preheader.lr.ph
  %tobool618.not = icmp eq i32 %i__4.0.fr, 0
  br i1 %tobool618.not, label %for.cond572.preheader.us3.us, label %for.body574.us6

for.cond572.preheader.us3.us:                     ; preds = %for.cond572.preheader.lr.ph.split, %for.cond572.preheader.us3.us
  store volatile i32 0, ptr null, align 4294967296
  br label %for.cond572.preheader.us3.us

for.body574.us6:                                  ; preds = %for.cond572.preheader.lr.ph.split, %for.body574.us6.backedge
  %i__.042.us7 = phi i32 [ %i__.042.us7.be, %for.body574.us6.backedge ], [ %i__4.0.fr, %for.cond572.preheader.lr.ph.split ]
  store volatile i32 0, ptr null, align 4294967296
  %inc616.us8 = add i32 %i__.042.us7, 1
  %exitcond12 = icmp eq i32 %i__.042.us7, 0
  br i1 %exitcond12, label %for.cond572.for.end617_crit_edge.us10, label %for.body574.us6.backedge

for.body574.us6.backedge:                         ; preds = %for.body574.us6, %for.cond572.for.end617_crit_edge.us10
  %i__.042.us7.be = phi i32 [ %inc616.us8, %for.body574.us6 ], [ %i__4.0.fr, %for.cond572.for.end617_crit_edge.us10 ]
  br label %for.body574.us6

for.cond572.for.end617_crit_edge.us10:            ; preds = %for.body574.us6
  store volatile i32 0, ptr null, align 4294967296
  br label %for.body574.us6.backedge

if.then493:                                       ; preds = %entry
  ret i32 0
}

attributes #0 = { nofree norecurse nounwind }

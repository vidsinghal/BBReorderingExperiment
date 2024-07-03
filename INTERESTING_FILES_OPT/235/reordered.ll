; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//235/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @inflateBack(ptr nocapture readonly %strm, ptr nocapture readonly %in, ptr nocapture readnone %in_desc, i32 %bits.1, i1 %cond) local_unnamed_addr {
entry:
  br i1 %cond, label %while.cond157.preheader.lr.ph, label %sw.bb617

while.cond157.preheader.lr.ph:                    ; preds = %entry
  %0 = load ptr, ptr %strm, align 8
  %cmp1581 = icmp ult i32 %bits.1, 14
  %nlen = getelementptr i8, ptr %0, i64 124
  br i1 %cmp1581, label %do.body161.us.us, label %while.cond157.preheader.preheader

sw.bb617:                                         ; preds = %entry
  ret i32 0

do.body161.us.us.backedge:                        ; preds = %do.body161.us.us, %while.cond157.do.end185_crit_edge.us.us
  %bits.132.us.us.be = phi i32 [ %add180.us.us, %do.body161.us.us ], [ %bits.1, %while.cond157.do.end185_crit_edge.us.us ]
  br label %do.body161.us.us

while.cond157.do.end185_crit_edge.us.us:          ; preds = %do.body161.us.us
  store i32 0, ptr %nlen, align 4
  br label %do.body161.us.us.backedge

do.body161.us.us:                                 ; preds = %while.cond157.preheader.lr.ph, %do.body161.us.us.backedge
  %bits.132.us.us = phi i32 [ %bits.132.us.us.be, %do.body161.us.us.backedge ], [ %bits.1, %while.cond157.preheader.lr.ph ]
  %call166.us.us = tail call i32 %in(ptr null, ptr null)
  %add180.us.us = add i32 %bits.132.us.us, 1
  %exitcond3.not = icmp eq i32 %add180.us.us, 14
  br i1 %exitcond3.not, label %while.cond157.do.end185_crit_edge.us.us, label %do.body161.us.us.backedge

while.cond157.preheader.preheader:                ; preds = %while.cond157.preheader.lr.ph
  store i32 0, ptr %nlen, align 4
  br label %while.cond157.preheader

while.cond157.preheader:                          ; preds = %while.cond157.preheader.preheader, %while.cond157.preheader
  br label %while.cond157.preheader
}

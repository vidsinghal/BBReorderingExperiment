; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ctbsv_(i1 %tobool492.not, i32 %i__4.0, i32 %i__.0) {
entry:
  br label %for.cond480

for.cond480:                                      ; preds = %if.end629, %entry
  br i1 %tobool492.not, label %for.cond572, label %if.then493

if.then493:                                       ; preds = %for.cond480
  ret i32 0

for.cond572:                                      ; preds = %for.body574, %for.cond480
  %i__.04 = phi i32 [ %inc616, %for.body574 ], [ %i__4.0, %for.cond480 ]
  %cmp573.not = icmp sgt i32 %i__.04, 0
  br i1 %cmp573.not, label %for.end617, label %for.body574

for.body574:                                      ; preds = %for.cond572
  store volatile i32 0, ptr null, align 4
  %inc616 = add i32 %i__.04, 1
  br label %for.cond572

for.end617:                                       ; preds = %for.cond572
  %tobool618.not = icmp eq i32 %i__4.0, 0
  br i1 %tobool618.not, label %if.end629, label %if.then619

if.then619:                                       ; preds = %for.end617
  store volatile i32 0, ptr null, align 4
  br label %if.end629

if.end629:                                        ; preds = %if.then619, %for.end617
  br label %for.cond480
}

declare i32 @lsame_()

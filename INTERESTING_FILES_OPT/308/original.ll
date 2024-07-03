; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//308/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @dictNext() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define range(i64 0, 256) i64 @sdslen(ptr nocapture readonly %s) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr i8, ptr %s, i64 -1
  %0 = load i8, ptr %arrayidx, align 1
  %cond = icmp eq i8 %0, 0
  br i1 %cond, label %sw.bb3, label %cleanup

sw.bb3:                                           ; preds = %entry
  %1 = load i8, ptr inttoptr (i64 -3 to ptr), align 1
  %conv4 = zext i8 %1 to i64
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %entry
  %retval.0 = phi i64 [ %conv4, %sw.bb3 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: noreturn
define void @functionListCommand(ptr nocapture readonly %c, ptr nocapture readnone %0, i32 %.with_code.0, i32 %.pre, i1 %cmp, i32 %call, i1 %tobool1.not, ptr nocapture readnone %1, i32 %call42, i1 %tobool43.not) local_unnamed_addr #1 {
entry:
  br i1 %cmp, label %for.cond, label %while.cond.preheader

for.cond:                                         ; preds = %entry, %for.cond
  br label %for.cond

while.cond.preheader:                             ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %c, i64 -1
  %tobool1.not.fr = freeze i1 %tobool1.not
  br i1 %tobool1.not.fr, label %while.cond.us, label %while.cond

while.cond.us:                                    ; preds = %while.cond.preheader, %sdslen.exit5.us
  %call34.us = tail call ptr @dictNext()
  %2 = load i8, ptr inttoptr (i64 -1 to ptr), align 1
  %cond.i.us = icmp eq i8 %2, 0
  br i1 %cond.i.us, label %sw.bb3.i.us, label %sdslen.exit.us

sw.bb3.i.us:                                      ; preds = %while.cond.us
  %3 = load i8, ptr inttoptr (i64 -3 to ptr), align 1
  %conv4.i.us = zext i8 %3 to i32
  br label %sdslen.exit.us

sdslen.exit.us:                                   ; preds = %sw.bb3.i.us, %while.cond.us
  %retval.0.i.us = phi i32 [ %conv4.i.us, %sw.bb3.i.us ], [ 0, %while.cond.us ]
  %4 = load i8, ptr %arrayidx.i, align 1
  %cond.i1.us = icmp eq i8 %4, 0
  br i1 %cond.i1.us, label %sw.bb3.i3.us, label %sdslen.exit5.us

sw.bb3.i3.us:                                     ; preds = %sdslen.exit.us
  %5 = load i8, ptr inttoptr (i64 -3 to ptr), align 1
  %conv4.i4.us = zext i8 %5 to i32
  br label %sdslen.exit5.us

sdslen.exit5.us:                                  ; preds = %sw.bb3.i3.us, %sdslen.exit.us
  %retval.0.i2.us = phi i32 [ %conv4.i4.us, %sw.bb3.i3.us ], [ 0, %sdslen.exit.us ]
  %call427.us = tail call i32 @stringmatchlen(i32 %retval.0.i.us, i32 %retval.0.i2.us)
  br label %while.cond.us

while.cond:                                       ; preds = %while.cond.preheader, %sdslen.exit5
  %call34 = tail call ptr @dictNext()
  %6 = load i8, ptr inttoptr (i64 -1 to ptr), align 1
  %cond.i = icmp eq i8 %6, 0
  br i1 %cond.i, label %sw.bb3.i, label %sdslen.exit

sw.bb3.i:                                         ; preds = %while.cond
  %7 = load i8, ptr inttoptr (i64 -3 to ptr), align 1
  %conv4.i = zext i8 %7 to i32
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %while.cond, %sw.bb3.i
  %retval.0.i = phi i32 [ %conv4.i, %sw.bb3.i ], [ 0, %while.cond ]
  %8 = load i8, ptr %arrayidx.i, align 1
  %cond.i1 = icmp eq i8 %8, 0
  br i1 %cond.i1, label %sw.bb3.i3, label %sdslen.exit5

sw.bb3.i3:                                        ; preds = %sdslen.exit
  %9 = load i8, ptr inttoptr (i64 -3 to ptr), align 1
  %conv4.i4 = zext i8 %9 to i32
  br label %sdslen.exit5

sdslen.exit5:                                     ; preds = %sdslen.exit, %sw.bb3.i3
  %retval.0.i2 = phi i32 [ %conv4.i4, %sw.bb3.i3 ], [ 0, %sdslen.exit ]
  %call427 = tail call i32 @stringmatchlen(i32 %retval.0.i, i32 %retval.0.i2)
  store volatile i64 0, ptr null, align 4294967296
  br label %while.cond
}

declare i32 @stringmatchlen(i32, i32) local_unnamed_addr

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) }
attributes #1 = { noreturn }

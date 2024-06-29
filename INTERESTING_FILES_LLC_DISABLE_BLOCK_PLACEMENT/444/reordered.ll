; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//444/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @cunmqr_check(ptr nocapture writeonly %m, ptr nocapture writeonly %k, i1 %tobool12.not, i1 %cmp18) local_unnamed_addr #0 {
entry:
  br i1 %tobool12.not, label %if.else17, label %if.else17.thread

common.ret.sink.split:                            ; preds = %if.else17, %if.then20
  %m.sink = phi ptr [ %k, %if.then20 ], [ %m, %if.else17 ]
  store i32 0, ptr %m.sink, align 4
  br label %common.ret

if.then20:                                        ; preds = %if.else17.thread, %if.else17
  br label %common.ret.sink.split

if.else17:                                        ; preds = %entry
  %call14 = load volatile i32, ptr null, align 4294967296
  br i1 %cmp18, label %if.then20, label %common.ret.sink.split

if.else17.thread:                                 ; preds = %entry
  br i1 %cmp18, label %if.then20, label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %if.else17.thread
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }

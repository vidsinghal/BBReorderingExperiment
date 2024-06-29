; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//560/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @s2n_calculate_stacktrace() local_unnamed_addr

define range(i32 -1, 1) i32 @s2n_tls13_extract_secret(ptr nocapture writeonly %conn, i32 %secret_type, ptr nocapture readnone %0, ptr nocapture readnone %1, i1 %cmp35.not, ptr nocapture readnone %2, i1 %cmp74) local_unnamed_addr {
entry:
  br i1 %cmp35.not, label %do.body38, label %do.end46

do.body38:                                        ; preds = %entry
  store i32 0, ptr %conn, align 4
  br label %common.ret.sink.split

do.end46:                                         ; preds = %entry
  br i1 %cmp74, label %common.ret, label %do.body78

do.body78:                                        ; preds = %do.end46
  store ptr null, ptr %conn, align 8
  br label %common.ret.sink.split

common.ret.sink.split:                            ; preds = %do.body38, %do.body78
  %call79 = tail call i32 @s2n_calculate_stacktrace()
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %do.end46
  %common.ret.op = phi i32 [ 0, %do.end46 ], [ -1, %common.ret.sink.split ]
  ret i32 %common.ret.op
}

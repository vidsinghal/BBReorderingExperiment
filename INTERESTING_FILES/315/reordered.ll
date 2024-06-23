; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//315/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @_zip_string_crc32(i1 %cmp.not, i64 %call) local_unnamed_addr {
entry:
  %call1 = tail call i64 @crc32(i64 0)
  br i1 %cmp.not, label %if.end, label %if.then

if.end:                                           ; preds = %if.then, %entry
  %crc.0.in = phi i64 [ 0, %if.then ], [ %call, %entry ]
  %crc.0 = trunc i64 %crc.0.in to i32
  ret i32 %crc.0

if.then:                                          ; preds = %entry
  %call4 = tail call i64 @crc32(i64 0)
  br label %if.end
}

declare i64 @crc32(i64) local_unnamed_addr

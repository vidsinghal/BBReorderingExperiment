; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//533/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @mknod(ptr) local_unnamed_addr

define void @copy_nodes(i1 %cmp2, ptr nocapture %target) local_unnamed_addr {
entry:
  br i1 %cmp2, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = load ptr, ptr %target, align 8
  %call11 = tail call i32 @mknod(ptr %0)
  store i32 0, ptr %target, align 4
  %1 = load ptr, ptr %target, align 8
  %call11.1 = tail call i32 @mknod(ptr %1)
  store i32 0, ptr %target, align 4
  %2 = load ptr, ptr %target, align 8
  %call11.2 = tail call i32 @mknod(ptr %2)
  store i32 0, ptr %target, align 4
  %3 = load ptr, ptr %target, align 8
  %call11.3 = tail call i32 @mknod(ptr %3)
  store i32 0, ptr %target, align 4
  %4 = load ptr, ptr %target, align 8
  %call11.4 = tail call i32 @mknod(ptr %4)
  store i32 0, ptr %target, align 4
  br label %for.end

for.body.us.preheader:                            ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  %5 = load ptr, ptr %target, align 8
  %call11.us = tail call i32 @mknod(ptr %5)
  store i32 0, ptr %target, align 4
  store volatile i32 0, ptr null, align 4294967296
  %6 = load ptr, ptr %target, align 8
  %call11.us.1 = tail call i32 @mknod(ptr %6)
  store i32 0, ptr %target, align 4
  store volatile i32 0, ptr null, align 4294967296
  %7 = load ptr, ptr %target, align 8
  %call11.us.2 = tail call i32 @mknod(ptr %7)
  store i32 0, ptr %target, align 4
  store volatile i32 0, ptr null, align 4294967296
  %8 = load ptr, ptr %target, align 8
  %call11.us.3 = tail call i32 @mknod(ptr %8)
  store i32 0, ptr %target, align 4
  store volatile i32 0, ptr null, align 4294967296
  %9 = load ptr, ptr %target, align 8
  %call11.us.4 = tail call i32 @mknod(ptr %9)
  store i32 0, ptr %target, align 4
  store volatile i32 0, ptr null, align 4294967296
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %for.body.us.preheader
  %10 = load ptr, ptr %target, align 8
  %call11.5 = tail call i32 @mknod(ptr %10)
  store i32 0, ptr %target, align 4
  ret void
}

; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//309/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @main(i32 %argc) local_unnamed_addr {
entry:
  %call = tail call ptr @__errno_location()
  %cmp = icmp sgt i32 %argc, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = load volatile i32, ptr null, align 4294967296
  br label %common.ret

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %argc, 0
  br i1 %cmp2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %if.else
  %call5 = load volatile ptr, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.end10, %if.then3, %if.then
  ret i32 0

if.end10:                                         ; preds = %if.else
  %call12 = load volatile i32, ptr null, align 4294967296
  br label %common.ret
}

declare ptr @__errno_location() local_unnamed_addr

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define internal i32 @ERR_isError(i64 %code) {
entry:
  %cmp = icmp ugt i64 %code, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define i64 @ZSTDMT_toFlushNow(ptr %mtctx, i1 %cmp, ptr %0) {
entry:
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %mtctx, align 8
  %call = call i32 @ERR_isError(i64 %1)
  %tobool.not = icmp eq i32 %call, 0
  %cond = zext i1 %tobool.not to i64
  %call1 = call i32 @ERR_isError(i64 %1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %cond.false4, label %cond.end5

cond.false4:                                      ; preds = %if.end
  %2 = load i64, ptr %0, align 8
  br label %cond.end5

cond.end5:                                        ; preds = %cond.false4, %if.end
  %cond6 = phi i64 [ %2, %cond.false4 ], [ 0, %if.end ]
  %sub = or i64 %cond6, %cond
  br label %cleanup

cleanup:                                          ; preds = %cond.end5, %entry
  %retval.0 = phi i64 [ %sub, %cond.end5 ], [ 0, %entry ]
  ret i64 %retval.0
}

define i64 @ZSTDMT_initCStream_internal(i1 %cmp16) {
entry:
  %call14 = load volatile i32, ptr null, align 4
  br i1 %cmp16, label %if.then18, label %if.end24

if.then18:                                        ; preds = %entry
  %call19 = load volatile i32, ptr null, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %entry
  ret i64 0
}

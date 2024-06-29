; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @dav_dbm_open_direct(ptr %pdb) {
entry:
  store ptr null, ptr %pdb, align 8
  ret ptr null
}

define ptr @dav_fs_dbm_error(i32 %status, i1 %cmp1) {
entry:
  %cmp = icmp eq i32 %status, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %common.ret, label %if.else

common.ret:                                       ; preds = %if.else, %entry
  ret ptr null

if.else:                                          ; preds = %entry
  %call = load volatile ptr, ptr null, align 8
  br label %common.ret
}

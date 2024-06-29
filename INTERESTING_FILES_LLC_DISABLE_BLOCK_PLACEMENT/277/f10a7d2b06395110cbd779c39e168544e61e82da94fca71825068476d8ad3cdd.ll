; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @H5Z___set_local_szip(i64 %call2) {
entry:
  %mul.mask = and i64 %call2, 1
  %cmp3 = icmp eq i64 %mul.mask, 0
  br i1 %cmp3, label %common.ret, label %if.end6

common.ret:                                       ; preds = %if.end6, %entry
  ret i32 0

if.end6:                                          ; preds = %entry
  %call34 = load volatile i32, ptr null, align 4
  br label %common.ret
}

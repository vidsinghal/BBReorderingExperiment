; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @s2n_server_cookie_recv() {
entry:
  %call8 = load volatile i1, ptr null, align 1
  br i1 %call8, label %do.end18, label %common.ret1

common.ret1:                                      ; preds = %do.end18, %entry
  ret i32 0

do.end18:                                         ; preds = %entry
  %call20 = load volatile i32, ptr null, align 4
  br label %common.ret1
}

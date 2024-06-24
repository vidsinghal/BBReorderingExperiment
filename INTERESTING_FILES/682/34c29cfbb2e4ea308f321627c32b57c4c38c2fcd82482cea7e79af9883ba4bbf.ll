; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @BN_X931_generate_Xpq(i32 %nbits) {
entry:
  %and = and i32 %nbits, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %call = call i32 @BN_priv_rand_ex()
  br label %common.ret
}

declare i32 @BN_priv_rand_ex()

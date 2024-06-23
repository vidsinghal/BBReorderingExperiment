; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @jcmd_jwk_eql() {
entry:
  %call = load volatile i1, ptr null, align 1
  br i1 %call, label %if.end, label %cleanup18

if.end:                                           ; preds = %entry
  %call3 = call i32 (...) @fprintf()
  br label %cleanup18

cleanup18:                                        ; preds = %if.end, %entry
  ret i32 0
}

declare i32 @fprintf(...)

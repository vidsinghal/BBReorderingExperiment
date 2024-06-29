; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @s2n_calculate_stacktrace()

define i32 @s2n_tls13_extract_secret(ptr %conn, i32 %secret_type, ptr %0, ptr %1, i1 %cmp35.not, ptr %2, i1 %cmp74) {
entry:
  br i1 %cmp35.not, label %do.body38, label %do.end46

do.body38:                                        ; preds = %entry
  store i32 0, ptr %conn, align 4
  %call39 = call i32 @s2n_calculate_stacktrace()
  br label %common.ret

do.end46:                                         ; preds = %entry
  br i1 %cmp74, label %common.ret, label %do.body78

do.body78:                                        ; preds = %do.end46
  store ptr null, ptr %conn, align 8
  %call79 = call i32 @s2n_calculate_stacktrace()
  br label %common.ret

common.ret:                                       ; preds = %do.body78, %do.end46, %do.body38
  %common.ret.op = phi i32 [ -1, %do.body78 ], [ -1, %do.body38 ], [ 0, %do.end46 ]
  ret i32 %common.ret.op
}

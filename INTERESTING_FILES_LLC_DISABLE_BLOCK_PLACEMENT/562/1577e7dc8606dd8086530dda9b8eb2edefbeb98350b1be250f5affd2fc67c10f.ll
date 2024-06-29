; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s2n_debug_str = external global ptr

define i32 @s2n_ktls_retrieve_file_descriptor(ptr %conn, i1 %cmp.not, ptr %0) {
entry:
  %cmp8.not = icmp eq ptr %conn, null
  %or.cond = and i1 %cmp8.not, %cmp.not
  br i1 %or.cond, label %do.body11, label %common.ret

common.ret:                                       ; preds = %do.body11, %entry
  ret i32 0

do.body11:                                        ; preds = %entry
  store ptr null, ptr @s2n_debug_str, align 8
  store i32 0, ptr %0, align 4
  %call12 = call i32 @s2n_calculate_stacktrace()
  br label %common.ret
}

declare i32 @s2n_calculate_stacktrace()

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @start_pass_dpost(i32 %pass_mode, ptr %0) {
entry:
  switch i32 %pass_mode, label %sw.bb [
    i32 1, label %common.ret
    i32 0, label %sw.bb8
  ]

common.ret:                                       ; preds = %sw.bb8, %sw.bb, %entry
  ret void

sw.bb:                                            ; preds = %entry
  %post_process_data = getelementptr i8, ptr %0, i64 8
  store ptr null, ptr %post_process_data, align 8
  br label %common.ret

sw.bb8:                                           ; preds = %entry
  store ptr null, ptr inttoptr (i64 8 to ptr), align 8
  br label %common.ret
}

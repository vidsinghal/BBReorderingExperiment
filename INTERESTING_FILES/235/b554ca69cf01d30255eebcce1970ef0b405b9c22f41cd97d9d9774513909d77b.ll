; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @inflateBackInit_(ptr %strm, i1 %cmp5.not) {
entry:
  %cmp = icmp ne ptr %strm, null
  %or.cond = and i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  store ptr null, ptr %strm, align 8
  br label %common.ret
}

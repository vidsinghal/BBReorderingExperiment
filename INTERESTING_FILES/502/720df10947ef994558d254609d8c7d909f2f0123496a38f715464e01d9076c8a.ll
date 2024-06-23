; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @try_reduce_to_chain(ptr %seq1, ptr %seq2, ptr %p, ptr %0, i1 %cmp, ptr %p2, i32 %1) {
entry:
  %cmp3 = icmp eq ptr %seq1, null
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %call18 = load volatile ptr, ptr null, align 8
  store i32 %1, ptr %seq1, align 8
  br label %common.ret
}

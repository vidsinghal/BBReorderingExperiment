; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @aws_signable_new_canonical_request(ptr %signable, i1 %cmp1) {
entry:
  %call = call ptr (ptr, i64, ...) @aws_mem_acquire_many(ptr null, i64 0, ptr null, i64 0, ptr null, i64 0)
  %cmp = icmp ne ptr %signable, null
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %common.ret, label %do.body

common.ret:                                       ; preds = %do.body, %entry
  ret ptr null

do.body:                                          ; preds = %entry
  store i64 0, ptr %signable, align 8
  br label %common.ret
}

declare ptr @aws_mem_acquire_many(ptr, i64, ...)
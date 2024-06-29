; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ftl_mngt_p2l_ckpt_restore(ptr %band, i64 %seq_id, ptr %0) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %page_md_buf.0 = phi ptr [ %0, %entry ], [ %band, %for.inc ]
  %page_no.03 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp9 = icmp ult i64 %page_no.03, %seq_id
  br i1 %cmp9, label %for.body, label %common.ret

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %page_md_buf.0, align 8
  %cmp11.not = icmp eq i64 %1, 0
  br i1 %cmp11.not, label %common.ret, label %for.inc

common.ret:                                       ; preds = %for.body, %for.cond
  ret i32 0

for.inc:                                          ; preds = %for.body
  %inc = add i64 %seq_id, 1
  br label %for.cond
}

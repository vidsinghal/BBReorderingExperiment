; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @OCSP_response_status_str(i64 %s) {
entry:
  %call1 = call ptr @do_table2string(i64 %s, ptr null, i64 6)
  ret ptr null
}

define ptr @do_table2string(i64 %s, ptr %ts, i64 %len) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i64 [ 0, %entry ], [ 1, %for.body ]
  %cmp = icmp ult i64 %i.0, %len
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %cmp1 = icmp eq i64 %s, 0
  br i1 %cmp1, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %0 = load ptr, ptr %ts, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond
  %retval.0 = phi ptr [ %0, %if.then ], [ null, %for.cond ]
  ret ptr %retval.0
}

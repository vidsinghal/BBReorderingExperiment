; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @OCSP_request_add0_id(ptr %req, i1 %tobool.not) {
entry:
  %cmp = icmp eq ptr %req, null
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %cleanup, label %if.then6

if.then6:                                         ; preds = %entry
  store ptr null, ptr %req, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %entry
  ret ptr null
}

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @OCSP_sendreq_new(ptr %req, i1 %cmp) {
entry:
  %call1 = load volatile ptr, ptr null, align 8
  %cmp8.not = icmp eq ptr %req, null
  %or.cond = or i1 %cmp8.not, %cmp
  br i1 %or.cond, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call9 = load volatile ptr, ptr null, align 8
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry
  ret ptr null
}

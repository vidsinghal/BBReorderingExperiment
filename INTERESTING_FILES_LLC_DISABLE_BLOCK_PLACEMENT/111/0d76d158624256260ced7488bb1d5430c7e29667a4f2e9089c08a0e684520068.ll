; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @vtklibproj_pj_chamb(ptr %P, i1 %tobool.not) {
entry:
  %cmp = icmp eq ptr %P, null
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %return, label %if.end3

if.end3:                                          ; preds = %entry
  store ptr null, ptr %P, align 8
  br label %return

return:                                           ; preds = %if.end3, %entry
  ret ptr null
}

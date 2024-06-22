; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @ucs_pgt_entry_dump_recurs(i64 %0) {
entry:
  %and = and i64 %0, 1
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.cond, label %if.then

if.then:                                          ; preds = %entry
  ret void

for.cond:                                         ; preds = %for.cond, %entry
  call void @ucs_pgt_entry_dump_recurs(i64 0)
  br label %for.cond
}

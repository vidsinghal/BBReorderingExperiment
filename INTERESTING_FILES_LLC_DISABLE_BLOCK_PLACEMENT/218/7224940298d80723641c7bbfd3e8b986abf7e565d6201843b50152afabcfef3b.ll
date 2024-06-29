; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @hwloc_bitmap_alloc(ptr %call, i1 %tobool3.not) {
entry:
  %tobool.not = icmp ne ptr %call, null
  %brmerge.not = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %brmerge.not, label %if.then4, label %cleanup

if.then4:                                         ; preds = %entry
  call void @free()
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %entry
  ret ptr null
}

declare void @free()

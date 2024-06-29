; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H5G_rootof.func_check = external global i8

define ptr @H5G_rootof(ptr %f) {
entry:
  %0 = load i8, ptr @H5G_rootof.func_check, align 1, !range !0, !noundef !1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %lor.lhs.false, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5G_rootof.func_check, align 1
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then, %entry
  %1 = load ptr, ptr %f, align 8
  ret ptr %1
}

!0 = !{i8 0, i8 2}
!1 = !{}

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @apme_initLimdfsstate(ptr %aliascolumn) {
entry:
  %0 = load i8, ptr %aliascolumn, align 8, !range !0, !noundef !1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %common.ret

common.ret:                                       ; preds = %if.then, %entry
  ret void

if.then:                                          ; preds = %entry
  store i64 0, ptr %aliascolumn, align 8
  br label %common.ret
}

!0 = !{i8 0, i8 2}
!1 = !{}

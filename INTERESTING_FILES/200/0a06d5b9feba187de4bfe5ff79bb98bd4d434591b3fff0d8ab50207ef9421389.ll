; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.Unit_union = type { %struct.anon }
%struct.anon = type { i64, i64 }

define void @umfzl_assemble_fixq(i1 %cmp80, i64 %0) {
entry:
  br i1 %cmp80, label %common.ret, label %if.end83

common.ret:                                       ; preds = %if.end83, %entry
  ret void

if.end83:                                         ; preds = %entry
  %add.ptr75 = getelementptr %union.Unit_union, ptr null, i64 %0
  store i64 0, ptr %add.ptr75, align 8
  br label %common.ret
}

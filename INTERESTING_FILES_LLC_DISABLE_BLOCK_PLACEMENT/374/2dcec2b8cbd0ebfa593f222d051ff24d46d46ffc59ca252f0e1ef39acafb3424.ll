; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @writeny(ptr %sp.0) {
entry:
  br label %for.cond2

for.cond2:                                        ; preds = %if.then, %for.cond2, %entry
  %k.0 = phi i32 [ 0, %entry ], [ 1, %if.then ], [ %inc, %for.cond2 ]
  %sp.01 = phi ptr [ null, %entry ], [ null, %if.then ], [ %sp.0, %for.cond2 ]
  %inc = add i32 %k.0, 1
  %cmp6 = icmp eq i32 %k.0, 0
  br i1 %cmp6, label %if.then, label %for.cond2

if.then:                                          ; preds = %for.cond2
  store i8 0, ptr %sp.01, align 1
  br label %for.cond2
}

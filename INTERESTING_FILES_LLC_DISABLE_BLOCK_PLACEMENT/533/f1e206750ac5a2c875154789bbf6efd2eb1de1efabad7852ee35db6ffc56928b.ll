; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @mknod(ptr)

define void @copy_nodes(i1 %cmp2, ptr %target) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %cmp = icmp ult i32 %i.0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store volatile i32 0, ptr null, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %0 = load ptr, ptr %target, align 8
  %call11 = call i32 @mknod(ptr %0)
  store i32 0, ptr %target, align 4
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

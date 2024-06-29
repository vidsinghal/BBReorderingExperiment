; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i1 @ts_tree_cursor_goto_parent(ptr %_self) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %cleanup24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %dec, %cleanup24 ]
  %call = call i1 @ts_subtree_visible()
  br i1 %call, label %if.then, label %cleanup24

if.then:                                          ; preds = %for.cond
  store i32 %i.0, ptr %_self, align 8
  br label %cleanup24

cleanup24:                                        ; preds = %if.then, %for.cond
  %dec = add i32 %i.0, 1
  br label %for.cond
}

declare i1 @ts_subtree_visible()

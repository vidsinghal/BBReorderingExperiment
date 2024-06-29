; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PCFTable = type { i32, i32, i32, i32 }

define i32 @pcfWriteFont(ptr %pFont, i32 %and106, i32 %mask.0) {
entry:
  %tables = alloca [32 x %struct._PCFTable], align 16
  br label %while.cond

while.cond:                                       ; preds = %sw.bb, %while.cond, %entry
  %mask.01 = phi i32 [ 1, %entry ], [ %and106, %sw.bb ], [ %and1064, %while.cond ]
  %table.02 = phi ptr [ %tables, %entry ], [ null, %sw.bb ], [ %table.02, %while.cond ]
  %and3 = and i32 %mask.01, 1
  %and1064 = xor i32 %mask.0, 1
  store i32 %and106, ptr %pFont, align 4
  %cond = icmp eq i32 %and3, 0
  br i1 %cond, label %sw.bb, label %while.cond

sw.bb:                                            ; preds = %while.cond
  %format108 = getelementptr i8, ptr %table.02, i64 4
  store i32 0, ptr %format108, align 4
  br label %while.cond
}

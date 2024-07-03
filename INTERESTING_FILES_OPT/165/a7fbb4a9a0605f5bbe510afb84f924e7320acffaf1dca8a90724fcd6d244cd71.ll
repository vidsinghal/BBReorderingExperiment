; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @keccak_squeezeblocks(i32 %r, i64 %idx.ext2, i1 %cmp.not) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %out.addr.0 = phi ptr [ null, %entry ], [ %add.ptr3, %for.end ]
  br i1 %cmp.not, label %while.end, label %for.cond

for.cond:                                         ; preds = %for.body, %while.cond
  %i.0 = phi i32 [ %inc, %for.body ], [ 0, %while.cond ]
  %cmp1 = icmp ult i32 %i.0, %r
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store volatile i64 0, ptr %out.addr.0, align 8
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %add.ptr3 = getelementptr i8, ptr null, i64 %idx.ext2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

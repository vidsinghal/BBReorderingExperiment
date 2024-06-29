; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @shake128_absorb() {
entry:
  call void @keccak_absorb(i32 168)
  ret void
}

define void @keccak_absorb(i32 %r) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %for.cond3, %entry
  br label %for.cond3

for.cond3:                                        ; preds = %for.body7, %while.cond
  %i.0 = phi i64 [ 0, %while.cond ], [ %inc10, %for.body7 ]
  %conv4 = zext i32 %r to i64
  %cmp5 = icmp ult i64 %i.0, %conv4
  br i1 %cmp5, label %for.body7, label %while.cond

for.body7:                                        ; preds = %for.cond3
  %call = load volatile i64, ptr null, align 8
  %inc10 = add i64 %i.0, 1
  br label %for.cond3
}

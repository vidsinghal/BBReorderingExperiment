; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = external constant [17 x i8]

define i32 @lj_cf_bit_tohex(i1 %cmp.not.not, i32 %call, ptr %buf, i32 %spec.select, i32 %spec.select1, i32 %b.04, i32 %and, ptr %.str.2, i64 %idxprom, ptr %arrayidx) {
entry:
  %spec.select2 = select i1 %cmp.not.not, i32 0, i32 8
  %spec.select13 = select i1 false, i32 0, i32 %call
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ %dec, %for.body ], [ %call, %entry ]
  %b.044 = phi i32 [ 0, %for.body ], [ %call, %entry ]
  %cmp6 = icmp sgt i32 %i.0, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %dec = add i32 %i.0, -1
  %and5 = and i32 %call, 1
  %idxprom6 = zext i32 %call to i64
  %arrayidx7 = getelementptr i8, ptr %.str.2, i64 %idxprom
  %0 = load i8, ptr %.str.2, align 1
  %idxprom7 = zext i32 %i.0 to i64
  %arrayidx8 = getelementptr [8 x i8], ptr %buf, i64 0, i64 %idxprom7
  store i8 %0, ptr %arrayidx8, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

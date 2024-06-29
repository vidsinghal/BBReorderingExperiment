; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@odd_parity_table = external constant [128 x i8]

define void @mbedtls_des_free(i1 %cmp) {
entry:
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret void

if.end:                                           ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %common.ret
}

define void @mbedtls_des_key_set_parity(ptr %key) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %cmp = icmp ult i32 %i.0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = zext i32 %i.0 to i64
  %arrayidx = getelementptr i8, ptr %key, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1
  %idxprom1 = zext i8 %0 to i64
  %arrayidx2 = getelementptr [128 x i8], ptr @odd_parity_table, i64 0, i64 %idxprom1
  %1 = load i8, ptr %arrayidx2, align 1
  store i8 %1, ptr %arrayidx, align 1
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

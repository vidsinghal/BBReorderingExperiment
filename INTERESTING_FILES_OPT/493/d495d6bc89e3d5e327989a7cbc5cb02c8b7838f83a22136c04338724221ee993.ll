; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DoubleComplex = type { [2 x double] }

define double @umfzl_uhsolve(ptr noundef %Numeric, i64 %0, i1 %cmp139, ptr %1, ptr %xk) {
entry:
  %xk1 = alloca %struct.DoubleComplex, i32 0, align 8
  %2 = load ptr, ptr null, align 8
  %n172 = getelementptr i8, ptr %Numeric, i64 280
  br label %for.cond78

for.cond78:                                       ; preds = %for.cond138, %entry
  br label %for.cond138

for.cond138:                                      ; preds = %for.end161, %for.cond78
  %uhead.1 = phi i64 [ 0, %for.cond78 ], [ %uhead.2, %for.end161 ]
  %cmp1393 = icmp slt i64 0, 0
  br i1 %cmp139, label %for.body140, label %for.cond78

for.body140:                                      ; preds = %for.cond138
  %3 = load i64, ptr null, align 8
  br label %for.cond152

for.cond152:                                      ; preds = %for.body154, %for.body140
  %uhead.2 = phi i64 [ 0, %for.body140 ], [ %inc155, %for.body154 ]
  %j.0 = phi i64 [ 0, %for.body140 ], [ %inc160, %for.body154 ]
  %cmp153 = icmp slt i64 %j.0, %0
  br i1 %cmp153, label %for.body154, label %for.end161

for.body154:                                      ; preds = %for.cond152
  %inc155 = add i64 %uhead.1, 1
  %inc160 = add i64 %j.0, 1
  br label %for.cond152

for.end161:                                       ; preds = %for.cond152
  %4 = load ptr, ptr %Numeric, align 8
  %arrayidx179 = getelementptr i8, ptr %xk, i64 8
  %call180 = call i32 %4(double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, ptr null, ptr %arrayidx179)
  br label %for.cond138
}

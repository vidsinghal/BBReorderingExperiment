; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @BLAS_ctbsv_testgen(i32 %diag, i32 %n, ptr %alpha, i32 %alpha_flag, i1 %cmp134) {
entry:
  br label %for.cond133

for.cond133:                                      ; preds = %for.end154, %entry
  br i1 %cmp134, label %for.cond137, label %for.end165

for.cond137:                                      ; preds = %for.body140, %for.cond133
  %0 = load i32, ptr %alpha, align 4
  %cmp138 = icmp sgt i32 %0, %diag
  br i1 %cmp138, label %for.body140, label %for.end154

for.body140:                                      ; preds = %for.cond137
  store float 0.000000e+00, ptr %alpha, align 4
  br label %for.cond137

for.end154:                                       ; preds = %for.cond137
  store float 0.000000e+00, ptr %alpha, align 4
  store volatile i32 0, ptr null, align 4
  br label %for.cond133

for.end165:                                       ; preds = %for.cond133
  ret void
}

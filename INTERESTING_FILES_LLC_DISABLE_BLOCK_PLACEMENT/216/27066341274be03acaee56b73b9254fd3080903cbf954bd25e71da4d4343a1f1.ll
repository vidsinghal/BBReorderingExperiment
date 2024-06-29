; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qu8_gavgpool_minmax_fp32_ukernel_7p7x__scalar_imagic_c4(i64 %channels, i1 %cmp) {
entry:
  %0 = inttoptr i64 %channels to ptr
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %b.0 = phi ptr [ null, %entry ], [ %add.ptr99, %for.body ]
  %i5.0 = phi ptr [ %0, %entry ], [ %add.ptr77, %for.body ]
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  ret void

for.body:                                         ; preds = %for.cond
  %1 = load i8, ptr %i5.0, align 1
  %conv76 = zext i8 %1 to i32
  %add.ptr77 = getelementptr i8, ptr %i5.0, i64 4
  store i32 %conv76, ptr %b.0, align 4
  %add.ptr99 = getelementptr i8, ptr %b.0, i64 16
  br label %for.cond
}

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @gdcmjpeg12_jinit_d_coef_controller(ptr %cinfo, i32 %need_full_buffer, ptr %0, i32 %ci.0, i1 %cmp, i32 %1, ptr %whole_image) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %ci.02 = phi i32 [ 0, %entry ], [ %need_full_buffer, %for.body ]
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %cinfo, align 8
  %call513 = call i64 @gdcmjpeg12_jround_up()
  %call1217 = call ptr %2(ptr null, i32 0, i32 0, i32 %1, i32 0, i32 %ci.0)
  %idxprom = zext i32 %ci.02 to i64
  %arrayidx = getelementptr [10 x ptr], ptr %whole_image, i64 0, i64 %idxprom
  store ptr %0, ptr %arrayidx, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i64 @gdcmjpeg12_jround_up()

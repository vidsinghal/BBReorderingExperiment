; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @hypre_BoomerAMG_GMExpandInterp(ptr %P, i32 %num_smooth_vecs, ptr %nf, i1 %cmp605, i1 %0) {
entry:
  br label %for.cond227

for.cond227:                                      ; preds = %for.cond600, %entry
  store volatile i32 0, ptr null, align 4
  br label %for.cond567

for.cond567:                                      ; preds = %for.body570, %for.cond227
  %j.13 = phi i32 [ %num_smooth_vecs, %for.cond227 ], [ %inc598, %for.body570 ]
  %cmp568 = icmp slt i32 %j.13, 0
  br i1 %cmp568, label %for.body570, label %for.cond600

for.body570:                                      ; preds = %for.cond567
  store i32 0, ptr %P, align 4
  %inc598 = add i32 %j.13, 1
  br label %for.cond567

for.cond600:                                      ; preds = %for.cond604, %for.cond567
  %cmp6011 = icmp slt i32 0, 0
  br i1 %0, label %for.cond604, label %for.cond227

for.cond604:                                      ; preds = %for.cond600
  call void @llvm.assume(i1 %cmp605)
  br label %for.cond600
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @hypre_AMR_CFCoarsen(ptr %fac_A, i1 %cmp136, i1 %cmp153) {
entry:
  br label %for.cond135

for.cond135:                                      ; preds = %for.cond223, %for.body138, %entry
  br i1 %cmp136, label %for.body138, label %for.cond756

for.body138:                                      ; preds = %for.cond135
  br i1 %cmp153, label %for.cond163, label %for.cond135

for.cond163:                                      ; preds = %for.cond163, %for.body138
  %cmp164 = phi i1 [ true, %for.body138 ], [ false, %for.cond163 ]
  %i6.0 = phi i64 [ 0, %for.body138 ], [ 1, %for.cond163 ]
  br i1 %cmp164, label %for.cond163, label %for.cond178

for.cond178:                                      ; preds = %for.body181, %for.cond163
  br i1 %cmp153, label %for.body181, label %for.cond223

for.body181:                                      ; preds = %for.cond178
  store i32 0, ptr %fac_A, align 4
  %arrayidx207 = getelementptr i32, ptr null, i64 %i6.0
  store i32 0, ptr %arrayidx207, align 4
  br label %for.cond178

for.cond223:                                      ; preds = %for.cond178
  store volatile i32 0, ptr null, align 4
  br label %for.cond135

for.cond756:                                      ; preds = %for.cond756, %for.cond135
  br label %for.cond756
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

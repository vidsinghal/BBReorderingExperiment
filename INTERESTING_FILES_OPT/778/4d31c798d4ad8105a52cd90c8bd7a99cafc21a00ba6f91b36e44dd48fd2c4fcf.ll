; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ssbgst_(i1 %cmp109, i1 %cmp996, i1 %cmp1016, i1 %cmp1022) {
entry:
  br label %L10

L10:                                              ; preds = %for.cond995, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %L10
  br i1 %cmp109, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  %call301 = call i32 @sscal_()
  br label %for.cond995

for.cond995:                                      ; preds = %for.cond1015, %for.end
  br i1 %cmp996, label %for.cond1015, label %L10

for.cond1015:                                     ; preds = %for.body1018, %for.cond995
  br i1 %cmp1016, label %for.body1018, label %for.cond995

for.body1018:                                     ; preds = %for.cond1015
  call void @llvm.assume(i1 %cmp996)
  br label %for.cond1015
}

declare i32 @sscal_()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

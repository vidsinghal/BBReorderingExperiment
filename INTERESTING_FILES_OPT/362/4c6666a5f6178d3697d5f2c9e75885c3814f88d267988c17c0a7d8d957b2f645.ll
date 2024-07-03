; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @clatrs_(ptr %lda, ptr %x, i1 %cmp1160, i1 %tobool1167) {
entry:
  br label %for.cond1037

for.cond1037:                                     ; preds = %if.end1342, %entry
  %call1152 = call i32 @csscal_()
  br i1 %cmp1160, label %if.end1342, label %if.else1198

if.else1198:                                      ; preds = %for.cond1037
  store i32 0, ptr %lda, align 4
  br label %for.cond1202

for.cond1202:                                     ; preds = %for.body1205, %if.else1198
  br i1 %tobool1167, label %for.body1205, label %if.end1342

for.body1205:                                     ; preds = %for.cond1202
  store i32 0, ptr %x, align 4
  br label %for.cond1202

if.end1342:                                       ; preds = %for.cond1202, %for.cond1037
  call void @llvm.assume(i1 %cmp1160)
  br label %for.cond1037
}

declare i32 @csscal_()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

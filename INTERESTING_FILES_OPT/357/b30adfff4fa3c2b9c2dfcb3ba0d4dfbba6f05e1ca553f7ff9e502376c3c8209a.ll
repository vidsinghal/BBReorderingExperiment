; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = external constant [1 x i8]

define i32 @ctrsyl3_(ptr %trana, ptr %tranb, ptr %isgn, ptr %q__1, float %0, float %div820, float %mul821, i1 %cmp822, i32 %1, i1 %cmp827) {
entry:
  br label %for.cond690

for.cond690:                                      ; preds = %if.end863, %entry
  br i1 %cmp822, label %if.then824, label %if.end863

if.then824:                                       ; preds = %for.cond690
  store i32 0, ptr %trana, align 4
  br label %for.cond826

for.cond826:                                      ; preds = %for.body829, %if.then824
  br i1 %cmp827, label %for.body829, label %if.end863

for.body829:                                      ; preds = %for.cond826
  store i32 0, ptr %tranb, align 4
  br label %for.cond826

if.end863:                                        ; preds = %for.cond826, %for.cond690
  %fneg = fneg float %0
  store float %fneg, ptr %trana, align 4
  %call894 = call i32 @cgemm_()
  br label %for.cond690
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

declare i32 @cgemm_()

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @arkLsBandDQJac(ptr %y, ptr %fi, i32 %call, i1 %cmp89.not, i1 %cmp95) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.end92, %entry
  br label %for.cond35

for.cond35:                                       ; preds = %for.body38, %for.cond
  %j.1 = phi i32 [ 0, %for.cond ], [ %add86, %for.body38 ]
  %cmp36 = icmp slt i32 %j.1, %call
  br i1 %cmp36, label %for.body38, label %for.end

for.body38:                                       ; preds = %for.cond35
  store double 0.000000e+00, ptr %y, align 8
  %add86 = add i32 %j.1, 1
  br label %for.cond35

for.end:                                          ; preds = %for.cond35
  %call873 = call i32 %fi(double 0.000000e+00, ptr null, ptr null, ptr null)
  br i1 %cmp89.not, label %if.end92, label %if.then91

if.then91:                                        ; preds = %for.end
  ret i32 0

if.end92:                                         ; preds = %for.end
  call void @llvm.assume(i1 %cmp95)
  br label %for.cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

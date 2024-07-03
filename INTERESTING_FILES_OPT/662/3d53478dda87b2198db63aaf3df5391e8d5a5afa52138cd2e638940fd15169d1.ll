; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @gk_strstr_replace(ptr %replacement, i64 %call12, i1 %cmp2.not.not) #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %for.end, %entry
  %call13 = call i32 @regexec()
  br label %for.cond

for.cond:                                         ; preds = %sw.default, %do.body
  %i.1 = phi i64 [ 0, %do.body ], [ %inc166, %sw.default ]
  %cmp65 = icmp ult i64 %i.1, %call12
  br i1 %cmp65, label %sw.default, label %for.end

sw.default:                                       ; preds = %for.cond
  %0 = load ptr, ptr %replacement, align 8
  store i8 0, ptr %0, align 1
  %inc166 = add i64 %i.1, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %1 = xor i1 false, false
  call void @llvm.assume(i1 %cmp2.not.not)
  br label %do.body
}

declare i32 @regexec()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

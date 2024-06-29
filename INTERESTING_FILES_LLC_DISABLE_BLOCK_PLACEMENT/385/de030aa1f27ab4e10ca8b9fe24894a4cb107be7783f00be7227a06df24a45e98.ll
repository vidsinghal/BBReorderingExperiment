; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @internal_exr_write_header(ptr %ctxt, ptr %0, i1 %tobool) {
entry:
  call void @priv_from_native32(ptr null)
  br label %for.cond

for.cond:                                         ; preds = %if.end76, %entry
  %p.0 = phi i64 [ 0, %entry ], [ 1, %if.end76 ]
  %1 = load i8, ptr %ctxt, align 1
  %tobool24.not = icmp eq i8 %1, 0
  br i1 %tobool24.not, label %if.end76, label %if.then25

if.then25:                                        ; preds = %for.cond
  %2 = load ptr, ptr %0, align 8
  %arrayidx23 = getelementptr ptr, ptr %2, i64 %p.0
  %3 = load i32, ptr %arrayidx23, align 8
  %cmp27 = icmp sgt i32 %3, 0
  br i1 %cmp27, label %for.body30, label %if.end76

for.body30:                                       ; preds = %if.then25
  call void @llvm.assume(i1 %tobool)
  br label %if.end76

if.end76:                                         ; preds = %for.body30, %if.then25, %for.cond
  %4 = load ptr, ptr %ctxt, align 8
  %call82 = call i32 %4(ptr null, ptr null, i64 0, ptr null)
  br label %for.cond
}

declare void @priv_from_native32(ptr)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

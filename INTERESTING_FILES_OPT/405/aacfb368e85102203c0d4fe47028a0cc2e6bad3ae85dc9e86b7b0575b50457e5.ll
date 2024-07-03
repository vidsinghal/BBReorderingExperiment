; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @unur_test_quartiles(ptr %gen, i32 %0, i1 %cmp18, i1 %cmp37, i1 %cmp45, i1 %cmp56, i32 %j.3, i32 %j.0) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc256, %entry
  %j.01 = phi i32 [ 0, %entry ], [ 0, %for.inc256 ]
  %1 = load ptr, ptr %gen, align 8
  %call = call i32 %1(ptr null)
  br i1 %cmp18, label %for.inc256, label %if.else

if.else:                                          ; preds = %for.cond
  br i1 %cmp37, label %for.cond44, label %for.cond118

for.cond44:                                       ; preds = %for.cond48, %if.else
  %j.12 = phi i32 [ %0, %if.else ], [ 0, %for.cond48 ]
  br i1 %cmp37, label %for.cond48, label %for.inc256

for.cond48:                                       ; preds = %for.body51, %for.cond44
  %j.23 = phi i32 [ 0, %for.cond44 ], [ 0, %for.body51 ]
  %cmp49 = icmp slt i32 %j.12, 0
  br i1 %cmp49, label %for.body51, label %for.cond44

for.body51:                                       ; preds = %for.cond48
  call void @llvm.assume(i1 %cmp37)
  br label %for.cond48

for.cond118:                                      ; preds = %for.cond118, %if.else
  br label %for.cond118

for.inc256:                                       ; preds = %for.cond44, %for.cond
  %j.34 = phi i32 [ 0, %for.cond ], [ 0, %for.cond44 ]
  br label %for.cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

declare void @_unur_error_x()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

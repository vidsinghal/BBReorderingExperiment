; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = constant [3 x i8] c"..\00"

define ptr @vtklibproj_pj_open_lib(ptr %name, i1 %tobool37) {
entry:
  %call31 = call i32 @strncmp(ptr %name, ptr @.str.1, i64 2)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %common.ret

common.ret:                                       ; preds = %land.lhs.true33, %entry
  ret ptr null

land.lhs.true33:                                  ; preds = %entry
  call void @llvm.assume(i1 %tobool37)
  br label %common.ret
}

declare i32 @strncmp(ptr, ptr, i64)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

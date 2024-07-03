; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: null_pointer_is_valid
define i32 @named_controls_configure(ptr %cp, i1 %cmp26.not, i1 %tobool89.not) #0 {
entry:
  br label %for.cond8

for.cond8:                                        ; preds = %if.end74, %entry
  call void (ptr, ptr, ptr, i32, ptr, ...) null(ptr null, ptr null, ptr null, i32 0, ptr null, ptr null)
  br i1 %cmp26.not, label %lor.end, label %if.then28

if.then28:                                        ; preds = %for.cond8
  store ptr null, ptr null, align 8
  br label %if.end43

lor.end:                                          ; preds = %for.cond8
  store ptr null, ptr %cp, align 8
  br label %if.end43

if.end43:                                         ; preds = %lor.end, %if.then28
  br i1 %tobool89.not, label %if.end74, label %if.then48

if.then48:                                        ; preds = %if.end43
  store ptr null, ptr null, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then48, %if.end43
  call void @llvm.assume(i1 %cmp26.not)
  br label %for.cond8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @get_key_info()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { null_pointer_is_valid "min-legal-vector-width"="0" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

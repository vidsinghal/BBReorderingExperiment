; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

define i1 @sparse_matrix_add_unique_columns(ptr %unique_columns, ptr %ret, ptr %next_id) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %call = call i32 @kh_get_int_uint32()
  %call5 = call i32 @kh_put_int_uint32(ptr %unique_columns)
  br label %for.cond
}

declare i32 @kh_get_int_uint32()

define i32 @kh_put_int_uint32(ptr %h) {
entry:
  %0 = load i32, ptr %h, align 4
  %cmp.not.not = icmp eq i32 %0, 0
  br i1 %cmp.not.not, label %common.ret, label %if.end14

common.ret:                                       ; preds = %if.end79, %entry
  ret i32 0

if.end14:                                         ; preds = %entry
  %flags = getelementptr i8, ptr %h, i64 16
  %1 = load i32, ptr %flags, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.cond, label %if.end79

while.cond:                                       ; preds = %while.cond, %if.end14
  %step.0 = phi i32 [ %inc, %while.cond ], [ 0, %if.end14 ]
  %inc = add i32 %step.0, 1
  %and57 = and i32 %inc, %0
  %cmp58 = icmp eq i32 %and57, 0
  br i1 %cmp58, label %if.end79, label %while.cond

if.end79:                                         ; preds = %while.cond, %if.end14
  %size102 = getelementptr i8, ptr %h, i64 4
  store i32 0, ptr %size102, align 4
  br label %common.ret
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

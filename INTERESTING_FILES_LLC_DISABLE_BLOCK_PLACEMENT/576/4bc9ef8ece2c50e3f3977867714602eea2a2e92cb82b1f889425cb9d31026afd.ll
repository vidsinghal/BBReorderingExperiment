; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @aws_event_loop_new_default_with_options(i1 %tobool.not) {
entry:
  br i1 %tobool.not, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret ptr null

if.end:                                           ; preds = %entry
  %call123 = call ptr @aws_mem_calloc()
  store volatile i32 0, ptr null, align 4
  %task_pre_queue = getelementptr i8, ptr %call123, i64 312
  call void @aws_linked_list_init(ptr %task_pre_queue)
  call void @llvm.memcpy.p0.p0.i64(ptr %call123, ptr null, i64 40, i1 false)
  br label %common.ret
}

declare ptr @aws_mem_calloc()

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

define void @aws_linked_list_init(ptr %list) {
entry:
  store ptr null, ptr %list, align 8
  %prev = getelementptr i8, ptr %list, i64 8
  store ptr null, ptr %prev, align 8
  %prev4 = getelementptr i8, ptr %list, i64 24
  store ptr null, ptr %prev4, align 8
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

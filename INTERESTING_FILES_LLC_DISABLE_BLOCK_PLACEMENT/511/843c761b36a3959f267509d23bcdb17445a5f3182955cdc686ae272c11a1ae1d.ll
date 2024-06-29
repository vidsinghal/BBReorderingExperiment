; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @nauty(ptr %options, i32 %m_arg, i1 %tobool6) #0 {
entry:
  call void @llvm.memcpy.p0.p0.i64(ptr null, ptr %options, i64 88, i1 false)
  %cmp7 = icmp eq i32 %m_arg, 0
  %or.cond = and i1 %cmp7, %tobool6
  br i1 %or.cond, label %if.then8, label %if.end9

if.then8:                                         ; preds = %entry
  store ptr null, ptr %options, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %entry
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

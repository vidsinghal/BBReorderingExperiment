; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @s2n_cert_status_recv(ptr %conn, i1 %cmp.not, i1 %cmp16.not) {
entry:
  br i1 %cmp.not, label %do.body2, label %do.end6

common.ret:                                       ; preds = %cleanup89, %if.end19, %do.body2
  %common.ret.op = phi i32 [ 0, %do.body2 ], [ 0, %if.end19 ], [ 1, %cleanup89 ]
  ret i32 %common.ret.op

do.body2:                                         ; preds = %entry
  store ptr null, ptr %conn, align 8
  br label %common.ret

do.end6:                                          ; preds = %entry
  %call8 = call i32 @s2n_stuffer_read_uint8()
  br i1 %cmp16.not, label %if.end19, label %cleanup89

if.end19:                                         ; preds = %do.end6
  store i32 0, ptr %conn, align 8
  br label %common.ret

cleanup89:                                        ; preds = %do.end6
  call void @llvm.lifetime.end.p0(i64 0, ptr null)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

declare i32 @s2n_stuffer_read_uint8()

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ngx_stream_lua_ffi_raw_log(ptr %r, i64 %s_len, i1 %tobool.not, i1 %tobool6.not) #0 {
entry:
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load ptr, ptr %r, align 8
  %tobool2.not = icmp eq ptr %0, null
  br i1 %tobool2.not, label %if.else, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  call void @llvm.assume(i1 %tobool6.not)
  br label %if.else

if.else:                                          ; preds = %land.lhs.true3, %land.lhs.true, %entry
  br i1 %tobool6.not, label %cleanup, label %if.then14

if.then14:                                        ; preds = %if.else
  call void (i64, ptr, i32, ptr, ...) @ngx_log_error_core(i64 0, ptr null, i32 0, ptr null, i64 %s_len, ptr %r)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.else
  ret i32 0
}

declare void @ngx_log_error_core(i64, ptr, i32, ptr, ...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

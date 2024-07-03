; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngx_http_script_engine_t = type { ptr, ptr, ptr, %struct.ngx_str_t, %struct.ngx_str_t, ptr, i8, i64, ptr }
%struct.ngx_str_t = type { i64, ptr }

define i64 @ngx_http_index_handler(ptr %r, i1 %cmp118.not) {
entry:
  %e = alloca %struct.ngx_http_script_engine_t, i32 0, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end121, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %0 = load i64, ptr %r, align 8
  %tobool36.not = icmp eq i64 %0, 0
  br i1 %tobool36.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call38 = call i64 inttoptr (i64 1 to ptr)(ptr null)
  br label %while.cond, !llvm.loop !0

while.end:                                        ; preds = %while.cond
  br i1 %cmp118.not, label %if.end121, label %cleanup

if.end121:                                        ; preds = %while.end
  %pool = getelementptr i8, ptr %r, i64 88
  %call122 = call i64 @ngx_open_cached_file(ptr %pool)
  br label %for.cond

cleanup:                                          ; preds = %while.end
  ret i64 0
}

declare i64 @ngx_http_set_disable_symlinks()

declare i64 @ngx_open_cached_file(ptr)

!0 = distinct !{!0, !1, !2}
!1 = !{!"llvm.loop.mustprogress"}
!2 = !{!"llvm.loop.unroll.disable"}

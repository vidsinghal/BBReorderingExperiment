; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @ngx_stream_upstream_get_hash_peer(ptr %pc, ptr %data) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %call21 = call ptr (...) @ngx_sprintf()
  call void @ngx_crc32_update(ptr %pc, ptr null, i64 1)
  %0 = load i64, ptr %pc, align 8
  call void @ngx_crc32_update(ptr %pc, ptr null, i64 %0)
  %tries93 = getelementptr i8, ptr %data, i64 64
  store i64 0, ptr %tries93, align 8
  br label %for.cond
}

declare ptr @ngx_sprintf(...)

define void @ngx_crc32_update(ptr %crc, ptr %p, i64 %len) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i32 [ 1, %while.body ], [ 0, %entry ]
  %1 = phi i64 [ %dec, %while.body ], [ %len, %entry ]
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %dec = add i64 %1, 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 %0, ptr %crc, align 4
  ret void
}

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

define i64 @ngx_http_gzip_body_filter(ptr %r, i1 %cmp75) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  br label %for.cond62

for.cond62:                                       ; preds = %if.end68, %for.cond
  %call63 = call i64 @ngx_http_gzip_filter_add_data()
  %0 = load i32, ptr %r, align 4
  %cmp65 = icmp eq i32 %0, 0
  br i1 %cmp65, label %for.end, label %if.end68

if.end68:                                         ; preds = %for.cond62
  br i1 %cmp75, label %for.cond62, label %if.end72

if.end72:                                         ; preds = %if.end68
  ret i64 0

for.end:                                          ; preds = %for.cond62
  %last_out = getelementptr i8, ptr %r, i64 32
  store ptr null, ptr %last_out, align 8
  br label %for.cond
}

declare i64 @ngx_http_gzip_filter_add_data()

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

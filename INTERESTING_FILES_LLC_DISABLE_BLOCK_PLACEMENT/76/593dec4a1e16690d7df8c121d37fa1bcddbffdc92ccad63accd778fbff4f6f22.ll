; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @ngx_http_scgi_create_loc_conf(i1 %cmp) {
entry:
  %call1 = load volatile ptr, ptr null, align 8
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret ptr null

if.end:                                           ; preds = %entry
  %buffering = getelementptr i8, ptr %call1, i64 160
  store i64 -1, ptr %buffering, align 8
  %request_buffering = getelementptr i8, ptr %call1, i64 168
  store i64 -1, ptr %request_buffering, align 8
  %ignore_client_abort = getelementptr i8, ptr %call1, i64 192
  store i64 -1, ptr %ignore_client_abort, align 8
  %local = getelementptr i8, ptr %call1, i64 264
  store ptr inttoptr (i64 -1 to ptr), ptr %local, align 8
  %socket_keepalive = getelementptr i8, ptr %call1, i64 272
  store i64 -1, ptr %socket_keepalive, align 8
  %connect_timeout = getelementptr i8, ptr %call1, i64 8
  store i64 -1, ptr %connect_timeout, align 8
  %send_timeout = getelementptr i8, ptr %call1, i64 16
  store i64 -1, ptr %send_timeout, align 8
  br label %common.ret
}

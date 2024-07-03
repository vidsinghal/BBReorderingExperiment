; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @ngx_array_push()

define ptr @ngx_stream_lua_conf_lua_block_parse(i1 %cmp) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %call8 = call i64 @ngx_stream_lua_conf_read_lua_token()
  br i1 %cmp, label %if.then14, label %for.cond

if.then14:                                        ; preds = %for.cond
  ret ptr null
}

define i64 @ngx_stream_lua_conf_read_lua_token() {
entry:
  %call98 = call i32 @ngx_stream_lua_lex()
  %0 = load i32, ptr inttoptr (i64 4 to ptr), align 4
  %cmp249 = icmp sgt i32 %0, 0
  br i1 %cmp249, label %for.body251, label %for.end265

common.ret:                                       ; preds = %if.end288, %if.end278, %for.end265, %for.body251
  ret i64 0

for.body251:                                      ; preds = %entry
  store i64 1, ptr inttoptr (i64 216 to ptr), align 8
  br label %common.ret

for.end265:                                       ; preds = %entry
  %call274 = load volatile ptr, ptr null, align 8
  %cmp275 = icmp eq ptr %call274, null
  br i1 %cmp275, label %common.ret, label %if.end278

if.end278:                                        ; preds = %for.end265
  %1 = load ptr, ptr inttoptr (i64 8 to ptr), align 8
  %cmp285 = icmp eq ptr %1, null
  br i1 %cmp285, label %common.ret, label %if.end288

if.end288:                                        ; preds = %if.end278
  store i64 0, ptr @ngx_array_push, align 8
  br label %common.ret
}

declare i32 @ngx_stream_lua_lex()

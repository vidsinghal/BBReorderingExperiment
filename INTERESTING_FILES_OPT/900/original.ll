; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//900/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @ngx_array_push() local_unnamed_addr

define noalias noundef ptr @ngx_stream_lua_conf_lua_block_parse(i1 %cmp) local_unnamed_addr {
entry:
  %cmp.fr = freeze i1 %cmp
  br i1 %cmp.fr, label %for.cond.us, label %for.cond

for.cond.us:                                      ; preds = %entry
  %call98.i.us = tail call i32 @ngx_stream_lua_lex()
  %0 = load i32, ptr inttoptr (i64 4 to ptr), align 4
  %cmp249.i.us = icmp sgt i32 %0, 0
  br i1 %cmp249.i.us, label %for.body251.i.us, label %for.end265.i.us

for.end265.i.us:                                  ; preds = %for.cond.us
  %call274.i.us = load volatile ptr, ptr null, align 4294967296
  %cmp275.i.us = icmp eq ptr %call274.i.us, null
  br i1 %cmp275.i.us, label %if.then14, label %if.end278.i.us

if.end278.i.us:                                   ; preds = %for.end265.i.us
  %1 = load ptr, ptr inttoptr (i64 8 to ptr), align 8
  %cmp285.i.us = icmp eq ptr %1, null
  br i1 %cmp285.i.us, label %if.then14, label %if.end288.i.us

if.end288.i.us:                                   ; preds = %if.end278.i.us
  store i64 0, ptr @ngx_array_push, align 8
  br label %if.then14

for.body251.i.us:                                 ; preds = %for.cond.us
  store i64 1, ptr inttoptr (i64 216 to ptr), align 8
  br label %if.then14

for.cond:                                         ; preds = %entry, %for.cond.backedge
  %call98.i = tail call i32 @ngx_stream_lua_lex()
  %2 = load i32, ptr inttoptr (i64 4 to ptr), align 4
  %cmp249.i = icmp sgt i32 %2, 0
  br i1 %cmp249.i, label %for.body251.i, label %for.end265.i

for.body251.i:                                    ; preds = %for.cond
  store i64 1, ptr inttoptr (i64 216 to ptr), align 8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.body251.i, %for.end265.i, %if.end278.i, %if.end288.i
  br label %for.cond

for.end265.i:                                     ; preds = %for.cond
  %call274.i = load volatile ptr, ptr null, align 4294967296
  %cmp275.i = icmp eq ptr %call274.i, null
  br i1 %cmp275.i, label %for.cond.backedge, label %if.end278.i

if.end278.i:                                      ; preds = %for.end265.i
  %3 = load ptr, ptr inttoptr (i64 8 to ptr), align 8
  %cmp285.i = icmp eq ptr %3, null
  br i1 %cmp285.i, label %for.cond.backedge, label %if.end288.i

if.end288.i:                                      ; preds = %if.end278.i
  store i64 0, ptr @ngx_array_push, align 8
  br label %for.cond.backedge

if.then14:                                        ; preds = %for.body251.i.us, %if.end288.i.us, %if.end278.i.us, %for.end265.i.us
  ret ptr null
}

define noundef i64 @ngx_stream_lua_conf_read_lua_token() local_unnamed_addr {
entry:
  %call98 = tail call i32 @ngx_stream_lua_lex()
  %0 = load i32, ptr inttoptr (i64 4 to ptr), align 4
  %cmp249 = icmp sgt i32 %0, 0
  br i1 %cmp249, label %for.body251, label %for.end265

common.ret:                                       ; preds = %if.end288, %if.end278, %for.end265, %for.body251
  ret i64 0

for.body251:                                      ; preds = %entry
  store i64 1, ptr inttoptr (i64 216 to ptr), align 8
  br label %common.ret

for.end265:                                       ; preds = %entry
  %call274 = load volatile ptr, ptr null, align 4294967296
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

declare i32 @ngx_stream_lua_lex() local_unnamed_addr

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @ngx_write_chain_to_file(ptr %file) {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %call5 = call ptr @ngx_chain_to_iovec(ptr %file)
  %call14 = call i64 @ngx_writev_file(ptr %file)
  br label %do.body
}

define ptr @ngx_chain_to_iovec(ptr %cl) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %if.then45, %entry
  %0 = phi ptr [ %cl, %entry ], [ %2, %if.then45 ]
  %1 = load ptr, ptr %0, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then45, label %if.else

if.then45:                                        ; preds = %for.cond
  %next = getelementptr i8, ptr %0, i64 8
  %2 = load ptr, ptr %next, align 8
  br label %for.cond

if.else:                                          ; preds = %for.cond
  ret ptr null
}

define i64 @ngx_writev_file(ptr %file) {
entry:
  br label %eintr

eintr:                                            ; preds = %eintr, %entry
  %call = call i64 @pwritev64()
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %eintr, label %if.end25

if.end25:                                         ; preds = %eintr
  %offset26 = getelementptr i8, ptr %file, i64 168
  store i64 0, ptr %offset26, align 8
  ret i64 0
}

declare i64 @pwritev64()

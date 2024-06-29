; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//413/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define range(i64 0, 2) i64 @ngx_http_charset_postconfiguration(ptr %cf, ptr nocapture writeonly %0, i1 %cmp46.not) local_unnamed_addr {
entry:
  br i1 %cmp46.not, label %for.end93, label %for.body47

for.body47:                                       ; preds = %entry
  %call2 = tail call ptr @ngx_pcalloc()
  %cmp56 = icmp eq ptr %cf, null
  br i1 %cmp56, label %common.ret, label %if.end58

common.ret:                                       ; preds = %for.end93, %if.end58, %for.body47
  %common.ret.op = phi i64 [ 0, %if.end58 ], [ 0, %for.end93 ], [ 1, %for.body47 ]
  ret i64 %common.ret.op

if.end58:                                         ; preds = %for.body47
  store ptr %cf, ptr %0, align 8
  br label %common.ret

for.end93:                                        ; preds = %entry
  store ptr null, ptr %cf, align 8
  br label %common.ret
}

declare ptr @ngx_pcalloc() local_unnamed_addr

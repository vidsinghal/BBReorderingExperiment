; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @apr_pstrcat(ptr, ...)

define ptr @dav_gen_supported_reports(ptr %name19.2, i1 %cmp14, ptr %call) {
entry:
  br label %for.cond11

for.cond11:                                       ; preds = %if.end48, %for.end43, %for.cond11, %entry
  br i1 %cmp14, label %for.cond23, label %for.cond11

for.cond23:                                       ; preds = %for.body25, %for.cond11
  %name19.1 = phi ptr [ %0, %for.body25 ], [ null, %for.cond11 ]
  br i1 %cmp14, label %for.end43, label %for.body25

for.body25:                                       ; preds = %for.cond23
  %0 = load ptr, ptr %name19.2, align 8
  br label %for.cond23

for.end43:                                        ; preds = %for.cond23
  %cmp44 = icmp eq ptr %name19.1, null
  br i1 %cmp44, label %for.cond11, label %if.end48

if.end48:                                         ; preds = %for.end43
  %elts52 = getelementptr i8, ptr %call, i64 24
  %call68 = call ptr (ptr, ...) @apr_pstrcat(ptr null, ptr null, ptr %elts52, ptr null, ptr null, ptr null, ptr null)
  br label %for.cond11
}

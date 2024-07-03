; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @nghttp2_hd_inflate_hd_nv(ptr %inflater, ptr %inflate_flags) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %sw.bb155, %if.else, %for.body, %entry
  %0 = phi ptr [ null, %sw.bb155 ], [ %0, %if.else ], [ null, %for.body ], [ %inflater, %entry ]
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %for.body, label %cleanup435

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %inflater, align 4
  switch i32 %1, label %for.cond [
    i32 0, label %if.else
    i32 1, label %if.else
    i32 2, label %if.else
    i32 3, label %cleanup435
    i32 4, label %cleanup435
    i32 5, label %sw.bb155
    i32 6, label %sw.bb155
    i32 7, label %cleanup435
    i32 8, label %cleanup435
    i32 9, label %cleanup435
    i32 10, label %cleanup435
    i32 11, label %cleanup435
    i32 12, label %cleanup435
  ]

if.else:                                          ; preds = %for.body, %for.body, %for.body
  store i32 0, ptr %inflater, align 4
  br label %for.cond

sw.bb155:                                         ; preds = %for.body, %for.body
  store volatile i32 0, ptr null, align 4
  br label %for.cond

cleanup435:                                       ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.cond
  ret i64 0
}

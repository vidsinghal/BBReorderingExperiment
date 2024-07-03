; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @set_cwd() {
entry:
  ret void
}

declare i32 @fprintf(ptr, ptr, ...)

define void @report(ptr %args, ptr %0, ptr %1, i1 %tobool82.not, ptr %2) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %cond.end93, %for.body, %entry
  %3 = load i32, ptr %args, align 4
  %cmp42.not = icmp eq i32 %3, 0
  br i1 %cmp42.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %tobool49.not = icmp eq ptr %0, null
  br i1 %tobool49.not, label %if.else, label %for.cond

if.else:                                          ; preds = %for.body
  br i1 %tobool82.not, label %cond.false88, label %cond.true83

cond.true83:                                      ; preds = %if.else
  %4 = load ptr, ptr %args, align 8
  br label %cond.end93

cond.false88:                                     ; preds = %if.else
  %arrayidx92 = getelementptr i8, ptr %2, i64 8
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false88, %cond.true83
  %cond94.in = phi ptr [ %4, %cond.true83 ], [ %arrayidx92, %cond.false88 ]
  %ncnt106 = getelementptr i8, ptr %args, i64 192
  %5 = load i32, ptr %ncnt106, align 4
  %call109 = call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr %cond94.in, double 0.000000e+00, double 0.000000e+00, i32 %5)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @malloc_conf_init_helper(i1 %initial_call, ptr %opts_cache, ptr %0) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %for.cond257, %if.end54, %entry
  %call15 = call i1 @malloc_conf_next(ptr %opts_cache)
  %1 = load i64, ptr %0, align 8
  %cmp16 = icmp eq i64 %1, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.end54

land.lhs.true18:                                  ; preds = %while.cond
  ret void

if.end54:                                         ; preds = %while.cond
  br i1 %initial_call, label %while.cond, label %for.cond257

for.cond257:                                      ; preds = %for.body260, %if.end54
  %cmp258 = phi i1 [ false, %for.body260 ], [ true, %if.end54 ]
  br i1 %cmp258, label %for.body260, label %while.cond

for.body260:                                      ; preds = %for.cond257
  %call267 = call i1 @extent_dss_prec_set()
  br label %for.cond257
}

define i1 @malloc_conf_next(ptr %k_p) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %sw.bb1, %entry
  %0 = load i8, ptr inttoptr (i64 1 to ptr), align 1
  %cond = icmp eq i8 %0, 0
  br i1 %cond, label %sw.bb1, label %sw.bb4

sw.bb1:                                           ; preds = %for.cond
  store i64 0, ptr %k_p, align 8
  br label %for.cond

sw.bb4:                                           ; preds = %for.cond
  ret i1 false
}

declare i1 @extent_dss_prec_set()

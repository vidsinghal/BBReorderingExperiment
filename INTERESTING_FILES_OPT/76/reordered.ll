; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//76/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i64 @ngx_http_scgi_create_request(ptr nocapture %0, i1 %cmp109, ptr %1) local_unnamed_addr {
entry:
  %call10812 = tail call ptr @ngx_pnalloc()
  br i1 %cmp109, label %if.then110, label %for.cond113.preheader.lr.ph

for.cond113.preheader.lr.ph:                      ; preds = %entry
  %hash144 = getelementptr i8, ptr %1, i64 568
  br label %for.cond113.preheader

for.body118:                                      ; preds = %for.cond113.preheader, %for.body118
  store i8 0, ptr %0, align 1
  %2 = load i64, ptr %0, align 8
  %cmp117.not = icmp eq i64 %2, 0
  br i1 %cmp117.not, label %for.end143, label %for.body118

if.then110:                                       ; preds = %entry
  ret i64 0

for.end143:                                       ; preds = %for.body118, %for.cond113.preheader
  %call145 = load volatile ptr, ptr %hash144, align 8
  %call1081 = tail call ptr @ngx_pnalloc()
  br label %for.cond113.preheader

for.cond113.preheader:                            ; preds = %for.end143, %for.cond113.preheader.lr.ph
  %3 = load i64, ptr %0, align 8
  %cmp117.not1 = icmp eq i64 %3, 0
  br i1 %cmp117.not1, label %for.end143, label %for.body118
}

declare ptr @ngx_pnalloc() local_unnamed_addr

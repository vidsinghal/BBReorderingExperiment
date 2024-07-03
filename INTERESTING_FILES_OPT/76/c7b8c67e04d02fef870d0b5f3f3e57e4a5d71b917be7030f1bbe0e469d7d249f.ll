; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @ngx_http_scgi_create_request(ptr %0, i1 %cmp109, ptr %1) {
entry:
  br label %for.cond84

for.cond84:                                       ; preds = %for.end143, %entry
  %call1081 = call ptr @ngx_pnalloc()
  br i1 %cmp109, label %if.then110, label %for.cond113

if.then110:                                       ; preds = %for.cond84
  ret i64 0

for.cond113:                                      ; preds = %for.body118, %for.cond84
  %2 = load i64, ptr %0, align 8
  %cmp117.not = icmp eq i64 %2, 0
  br i1 %cmp117.not, label %for.end143, label %for.body118

for.body118:                                      ; preds = %for.cond113
  store i8 0, ptr %0, align 1
  br label %for.cond113

for.end143:                                       ; preds = %for.cond113
  %hash144 = getelementptr i8, ptr %1, i64 568
  %call145 = load volatile ptr, ptr %hash144, align 8
  br label %for.cond84
}

declare ptr @ngx_pnalloc()

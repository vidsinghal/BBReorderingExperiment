; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @gt_tyrsearch(i1 %verbose, ptr %err, i1 %tobool.not) {
entry:
  br i1 %tobool.not, label %do.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = load volatile i1, ptr null, align 1
  br i1 %verbose, label %if.then, label %do.end

if.then:                                          ; preds = %lor.lhs.false
  %call23 = call i32 (...) @fprintf()
  unreachable

do.end:                                           ; preds = %lor.lhs.false, %entry
  %cmp = icmp ne ptr %err, null
  %brmerge.not = and i1 %cmp, %verbose
  br i1 %brmerge.not, label %if.then6, label %common.ret

if.then6:                                         ; preds = %do.end
  store volatile i32 0, ptr null, align 4
  br label %common.ret

common.ret:                                       ; preds = %if.then6, %do.end
  ret i32 0
}

declare i32 @fprintf(...)

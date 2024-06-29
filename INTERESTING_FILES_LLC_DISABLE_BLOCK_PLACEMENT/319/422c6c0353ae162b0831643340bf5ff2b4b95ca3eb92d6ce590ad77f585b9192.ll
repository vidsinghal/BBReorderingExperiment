; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i1 @_zip_cdir_grow(ptr %cd, i64 %additional_entries, ptr %0, i64 %1, i64 %add, i1 %cmp2, ptr %2) {
entry:
  %cmp1.not = icmp eq i64 %additional_entries, 0
  %or.cond = select i1 %cmp1.not, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then3, label %if.end4

common.ret:                                       ; preds = %if.end4, %if.then3
  ret i1 false

if.then3:                                         ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %common.ret

if.end4:                                          ; preds = %entry
  %call = load volatile ptr, ptr %2, align 8
  br label %common.ret
}

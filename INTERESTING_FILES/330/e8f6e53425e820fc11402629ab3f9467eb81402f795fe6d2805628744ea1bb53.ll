; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @bam_parse_region(ptr %beg, ptr %end, i64 %0, i32 %conv) {
entry:
  %call = call ptr @sam_parse_region(ptr %beg)
  %cmp = icmp sgt i64 %0, 2147483647
  br i1 %cmp, label %common.ret, label %lor.lhs.false

common.ret:                                       ; preds = %lor.lhs.false, %entry
  ret i32 0

lor.lhs.false:                                    ; preds = %entry
  store i32 %conv, ptr %beg, align 4
  store i32 %conv, ptr %end, align 4
  br label %common.ret
}

declare ptr @sam_parse_region(ptr)

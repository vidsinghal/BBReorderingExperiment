; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @BIO_ADDR_rawmake(ptr %ap, i32 %family, i1 %cmp7.not) {
entry:
  %cmp = icmp ne i32 %family, 1
  %or.cond = and i1 %cmp, %cmp7.not
  br i1 %or.cond, label %if.end10, label %common.ret

common.ret:                                       ; preds = %if.end10, %entry
  ret i32 0

if.end10:                                         ; preds = %entry
  store i16 0, ptr %ap, align 4
  br label %common.ret
}

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @fprintf(ptr, ptr, ...)

define ptr @gt_option_parser_new(ptr %synopsis, i1 %tobool1) {
entry:
  %tobool = icmp ne ptr %synopsis, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr null, ptr null, i32 1)
  unreachable

do.end:                                           ; preds = %entry
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr null, ptr null, i32 0)
  unreachable
}

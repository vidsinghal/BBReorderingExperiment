; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @fprintf(ptr, ptr, ...)

define ptr @gt_option_parser_new(ptr %synopsis, i1 %tobool1, i1 %cmp, i64 %call4) {
entry:
  %tobool = icmp ne ptr %synopsis, null
  %or.cond = and i1 %tobool, %tobool1
  br i1 %or.cond, label %land.lhs.true3, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr null, ptr null, i32 1)
  unreachable

land.lhs.true3:                                   ; preds = %entry
  %call41 = load volatile i64, ptr null, align 8
  %tobool5.not = icmp eq i64 %call4, 0
  br i1 %tobool5.not, label %if.then11, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true3
  br i1 %cmp, label %do.end25, label %if.then21

if.then11:                                        ; preds = %land.lhs.true3
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr null, ptr null, i32 0)
  unreachable

if.then21:                                        ; preds = %land.lhs.true6
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr null, ptr null, ptr null, ptr null, ptr null, i32 0)
  unreachable

do.end25:                                         ; preds = %land.lhs.true6
  %call26 = call ptr @gt_calloc_mem(i32 1)
  unreachable
}

declare ptr @gt_calloc_mem(i32)

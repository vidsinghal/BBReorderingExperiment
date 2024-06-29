; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @script_wrapper_visitor_comment_node(i1 %tobool.not, i1 %call, i1 %not.tobool.not) {
entry:
  %not.tobool.not1 = xor i1 %tobool.not, false
  %brmerge = select i1 %tobool.not, i1 %call, i1 false
  br i1 %brmerge, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (...) @fprintf()
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

declare i32 @fprintf(...)

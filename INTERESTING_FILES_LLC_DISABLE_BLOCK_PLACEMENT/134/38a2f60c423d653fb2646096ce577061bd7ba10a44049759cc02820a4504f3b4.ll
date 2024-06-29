; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @run_tests() {
entry:
  ret void
}

define void @encode_null(i1 %cmp.not, i1 %cmp20.not, i1 %cmp28.not) {
entry:
  %call1 = call ptr @json_dumps()
  br i1 %cmp.not, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end26, %entry
  ret void

if.end:                                           ; preds = %entry
  br i1 %cmp20.not, label %if.end26, label %do.body22

do.body22:                                        ; preds = %if.end
  %call23 = call i32 (...) @fprintf()
  unreachable

if.end26:                                         ; preds = %if.end
  %call275 = load volatile i32, ptr null, align 4
  br i1 %cmp28.not, label %common.ret, label %do.body30

do.body30:                                        ; preds = %if.end26
  %call31 = load volatile i32, ptr null, align 4
  %call32 = call i32 (...) @fprintf()
  unreachable
}

declare ptr @json_dumps()

declare i32 @fprintf(...)

define void @encode_twice() {
entry:
  ret void
}

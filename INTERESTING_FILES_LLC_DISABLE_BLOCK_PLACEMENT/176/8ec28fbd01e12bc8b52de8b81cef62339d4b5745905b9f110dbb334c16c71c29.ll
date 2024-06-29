; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @RSA_padding_add_X931(ptr %to, i32 %tlen) {
entry:
  %cmp = icmp slt i32 %tlen, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store volatile i32 0, ptr null, align 4
  unreachable

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i32 %tlen, 2
  br i1 %cmp2, label %if.then3, label %common.ret

common.ret:                                       ; preds = %if.then3, %if.end
  ret i32 0

if.then3:                                         ; preds = %if.end
  store i8 0, ptr %to, align 1
  br label %common.ret
}

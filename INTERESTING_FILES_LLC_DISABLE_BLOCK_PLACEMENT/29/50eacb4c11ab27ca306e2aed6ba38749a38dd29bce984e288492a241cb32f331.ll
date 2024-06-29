; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @s2n_client_ems_recv(ptr %conn, i1 %cmp.not, i1 %cmp8) {
entry:
  br i1 %cmp.not, label %do.body2, label %do.body7

do.body2:                                         ; preds = %entry
  store ptr null, ptr %conn, align 8
  br label %common.ret

do.body7:                                         ; preds = %entry
  br i1 %cmp8, label %do.end18, label %common.ret

common.ret:                                       ; preds = %do.end18, %do.body7, %do.body2
  ret i32 0

do.end18:                                         ; preds = %do.body7
  store i32 0, ptr %conn, align 8
  br label %common.ret
}

define i1 @s2n_client_ems_should_send(ptr %conn, i1 %tobool.not) {
entry:
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %bf.load3 = load i32, ptr %conn, align 8
  %tobool6.not = icmp eq i32 %bf.load3, 0
  br i1 %tobool6.not, label %return, label %if.else

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %return

return:                                           ; preds = %if.else, %land.lhs.true
  %retval.0 = phi i1 [ true, %if.else ], [ false, %land.lhs.true ]
  ret i1 %retval.0
}

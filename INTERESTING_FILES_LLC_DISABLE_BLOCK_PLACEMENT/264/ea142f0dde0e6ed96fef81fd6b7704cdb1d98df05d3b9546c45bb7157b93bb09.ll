; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_sock_cloexec = internal global i32 0

define void @fdevent_socket_nb_cloexec_init() {
entry:
  store i32 1, ptr @use_sock_cloexec, align 4
  ret void
}

define i32 @fdevent_socket_cloexec() {
entry:
  %0 = load i32, ptr @use_sock_cloexec, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %common.ret, label %if.then

common.ret:                                       ; preds = %if.then, %entry
  ret i32 0

if.then:                                          ; preds = %entry
  %call = load volatile i32, ptr null, align 4
  br label %common.ret
}

; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctl_arenas = external global ptr

define i32 @je_ctl_byname() {
entry:
  %call = call i1 @ctl_init()
  ret i32 0
}

define i1 @ctl_init() {
entry:
  %call26 = call ptr @arenas_i_impl()
  ret i1 false
}

declare ptr @tsd_tsdn()

define ptr @arenas_i_impl() {
entry:
  %call = call i32 @arenas_i2a_impl()
  %0 = load ptr, ptr inttoptr (i64 24 to ptr), align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %cleanup18

if.then:                                          ; preds = %entry
  %call3 = call ptr @tsd_tsdn()
  store ptr null, ptr inttoptr (i64 80 to ptr), align 8
  %1 = load ptr, ptr @ctl_arenas, align 8
  store ptr null, ptr %1, align 8
  br label %cleanup18

cleanup18:                                        ; preds = %if.then, %entry
  ret ptr null
}

declare i32 @arenas_i2a_impl()

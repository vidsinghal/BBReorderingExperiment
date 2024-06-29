; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @topology_take_snapshot() {
entry:
  %call131 = call i32 @topology_sysfs_get_system_props()
  ret i32 0
}

define i32 @topology_sysfs_get_system_props() {
entry:
  %call8 = load volatile i64, ptr null, align 8
  %0 = and i64 %call8, 1
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %if.end11, label %if.then10

common.ret:                                       ; preds = %if.end11, %if.then10
  ret i32 0

if.then10:                                        ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %common.ret

if.end11:                                         ; preds = %entry
  store i8 0, ptr inttoptr (i64 1 to ptr), align 1
  br label %common.ret
}

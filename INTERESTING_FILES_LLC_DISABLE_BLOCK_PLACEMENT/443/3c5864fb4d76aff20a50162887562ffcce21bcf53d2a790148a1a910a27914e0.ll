; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phys_addrs_available = internal global i32 -1

declare ptr @strerror(i32)

declare ptr @__errno_location()

define i32 @rte_eal_using_phys_addrs() {
entry:
  %0 = load i32, ptr @phys_addrs_available, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %common.ret

common.ret:                                       ; preds = %if.then, %entry
  ret i32 0

if.then:                                          ; preds = %entry
  %call = load volatile i32, ptr null, align 4
  store i32 0, ptr @phys_addrs_available, align 4
  br label %common.ret
}

define i32 @rte_eal_memseg_init(ptr %lim, ptr %rlim_max) {
entry:
  %call = call i32 @getrlimit64(i32 1)
  %0 = load i64, ptr %rlim_max, align 8
  store i64 %0, ptr %lim, align 8
  %call1 = load volatile i32, ptr null, align 4
  %call4 = load volatile ptr, ptr null, align 8
  %1 = load i32, ptr @__errno_location, align 4
  %call5 = call ptr @strerror(i32 %1)
  %call6 = load volatile i32, ptr null, align 4
  ret i32 0
}

declare i32 @getrlimit64(i32)

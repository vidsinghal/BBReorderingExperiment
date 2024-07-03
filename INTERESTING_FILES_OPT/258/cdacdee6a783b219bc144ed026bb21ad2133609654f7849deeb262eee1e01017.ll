; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare ptr @calloc()

define i32 @topology_sysfs_get_node_props(ptr %props, i1 %cmp93, i32 %call64, i1 %cmp65, i32 %call71, i1 %cmp79, i1 %cmp86) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.then95, %if.else90, %if.else83, %if.else76, %if.else69, %while.cond, %entry
  %call641 = load i32, ptr null, align 4
  %cmp652 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %while.cond, label %if.else69

if.else69:                                        ; preds = %while.cond
  %call713 = load volatile i32, ptr null, align 4
  %cmp72 = icmp eq i32 %call64, 0
  br i1 %cmp72, label %while.cond, label %if.else76

if.else76:                                        ; preds = %if.else69
  %call78 = call i32 @strcmp()
  %cmp794 = icmp eq i32 %call64, 0
  br i1 %cmp79, label %while.cond, label %if.else83

if.else83:                                        ; preds = %if.else76
  %call85 = load volatile i32, ptr null, align 4
  %cmp865 = icmp eq i32 %call64, 0
  br i1 %cmp86, label %while.cond, label %if.else90

if.else90:                                        ; preds = %if.else83
  %call92 = load volatile i32, ptr null, align 4
  br i1 %cmp93, label %if.then95, label %while.cond

if.then95:                                        ; preds = %if.else90
  %NumIOLinks = getelementptr i8, ptr %props, i64 16
  store i32 0, ptr %NumIOLinks, align 4
  br label %while.cond
}

declare void @free_node()

declare i32 @__isoc99_sscanf(...)

declare i32 @strcmp()

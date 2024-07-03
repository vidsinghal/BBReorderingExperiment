; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @eal_legacy_hugepage_init(ptr %call89, i1 %cmp109) {
entry:
  br label %for.cond107

for.cond107:                                      ; preds = %for.body111, %entry
  br i1 %cmp109, label %for.body111, label %for.cond216

for.body111:                                      ; preds = %for.cond107
  %call126 = call i32 @map_all_hugepages(ptr %call89)
  br label %for.cond107

for.cond216:                                      ; preds = %for.cond216, %for.cond107
  br label %for.cond216
}

define i32 @map_all_hugepages(ptr %hugepg_tbl) {
entry:
  %call1 = call i32 @numa_available()
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.then3, label %if.then

if.then:                                          ; preds = %entry
  %call2 = load volatile i32, ptr null, align 4
  br label %if.then3

if.then3:                                         ; preds = %if.then, %entry
  %call6 = load volatile i64, ptr null, align 8
  %cmp7 = icmp slt i64 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end18

if.then8:                                         ; preds = %if.then3
  %call10 = load volatile ptr, ptr null, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then8, %if.then3
  %filepath = getelementptr i8, ptr %hugepg_tbl, i64 40
  %call77 = load volatile ptr, ptr %filepath, align 8
  ret i32 0
}

declare i32 @numa_available()

declare ptr @eal_get_hugefile_path()

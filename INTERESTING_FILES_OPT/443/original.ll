; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//443/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @eal_legacy_hugepage_init(ptr %call89, i1 %cmp109) local_unnamed_addr #0 {
entry:
  br i1 %cmp109, label %for.body111.lr.ph, label %for.cond216

for.body111.lr.ph:                                ; preds = %entry
  %filepath.i = getelementptr i8, ptr %call89, i64 40
  br label %for.body111.us

for.body111.us:                                   ; preds = %map_all_hugepages.exit.us, %for.body111.lr.ph
  %call1.i.us = tail call i32 @numa_available()
  %cmp.not.i.us = icmp eq i32 %call1.i.us, 0
  br i1 %cmp.not.i.us, label %if.then3.i.us, label %if.then.i.us

if.then.i.us:                                     ; preds = %for.body111.us
  %call2.i.us = load volatile i32, ptr null, align 4294967296
  br label %if.then3.i.us

if.then3.i.us:                                    ; preds = %if.then.i.us, %for.body111.us
  %call6.i.us = load volatile i64, ptr null, align 4294967296
  %cmp7.i.us = icmp slt i64 %call6.i.us, 0
  br i1 %cmp7.i.us, label %if.then8.i.us, label %map_all_hugepages.exit.us

if.then8.i.us:                                    ; preds = %if.then3.i.us
  %call10.i.us = load volatile ptr, ptr null, align 4294967296
  br label %map_all_hugepages.exit.us

map_all_hugepages.exit.us:                        ; preds = %if.then8.i.us, %if.then3.i.us
  %call77.i.us = load volatile ptr, ptr %filepath.i, align 8
  br label %for.body111.us

for.cond216:                                      ; preds = %entry, %for.cond216
  br label %for.cond216
}

define noundef i32 @map_all_hugepages(ptr %hugepg_tbl) local_unnamed_addr {
entry:
  %call1 = tail call i32 @numa_available()
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.then3, label %if.then

if.then:                                          ; preds = %entry
  %call2 = load volatile i32, ptr null, align 4294967296
  br label %if.then3

if.then3:                                         ; preds = %if.then, %entry
  %call6 = load volatile i64, ptr null, align 4294967296
  %cmp7 = icmp slt i64 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end18

if.then8:                                         ; preds = %if.then3
  %call10 = load volatile ptr, ptr null, align 4294967296
  br label %if.end18

if.end18:                                         ; preds = %if.then8, %if.then3
  %filepath = getelementptr i8, ptr %hugepg_tbl, i64 40
  %call77 = load volatile ptr, ptr %filepath, align 8
  ret i32 0
}

declare i32 @numa_available() local_unnamed_addr

attributes #0 = { noreturn }

; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//918/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none)
define noundef i32 @compare_zip() local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond
}

; Function Attrs: noreturn
define noundef i32 @list_directory(ptr nocapture writeonly %0, i1 %cond) local_unnamed_addr #1 {
entry:
  %nentry46 = getelementptr i8, ptr %0, i64 16
  br i1 %cond, label %while.cond.us, label %while.cond

while.cond.us:                                    ; preds = %entry, %compute_crc.exit.us
  %call51.i.us = load volatile i64, ptr null, align 4294967296
  %cmp6.not2.i.us = icmp eq i64 %call51.i.us, 0
  br i1 %cmp6.not2.i.us, label %compute_crc.exit.us, label %while.body.i.us

while.body.i.us:                                  ; preds = %while.cond.us, %while.body.i.us
  %call8.i.us = tail call i64 @crc32()
  %call5.i.us = load volatile i64, ptr null, align 4294967296
  %cmp6.not.i.us = icmp eq i64 %call5.i.us, 0
  br i1 %cmp6.not.i.us, label %compute_crc.exit.us, label %while.body.i.us

compute_crc.exit.us:                              ; preds = %while.body.i.us, %while.cond.us
  store i64 0, ptr %nentry46, align 8
  br label %while.cond.us

while.cond:                                       ; preds = %entry, %while.cond
  br label %while.cond
}

define noundef i64 @compute_crc() local_unnamed_addr {
entry:
  %call51 = load volatile i64, ptr null, align 4294967296
  %cmp6.not2 = icmp eq i64 %call51, 0
  br i1 %cmp6.not2, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %call8 = tail call i64 @crc32()
  %call5 = load volatile i64, ptr null, align 4294967296
  %cmp6.not = icmp eq i64 %call5, 0
  br i1 %cmp6.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret i64 0
}

declare i64 @crc32() local_unnamed_addr

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(none) }
attributes #1 = { noreturn }

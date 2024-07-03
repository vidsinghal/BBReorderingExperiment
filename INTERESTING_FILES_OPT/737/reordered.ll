; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//737/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i1 @sparse_matrix_add_unique_columns(ptr nocapture %unique_columns, ptr nocapture readnone %ret, ptr nocapture readnone %next_id) local_unnamed_addr #0 {
entry:
  %flags.i = getelementptr i8, ptr %unique_columns, i64 16
  %size102.i = getelementptr i8, ptr %unique_columns, i64 4
  br label %for.cond

while.cond.i:                                     ; preds = %if.end14.i, %while.cond.i
  %step.0.i = phi i32 [ %inc.i, %while.cond.i ], [ 0, %if.end14.i ]
  %inc.i = add i32 %step.0.i, 1
  %and57.i = and i32 %inc.i, %1
  %cmp58.i = icmp eq i32 %and57.i, 0
  br i1 %cmp58.i, label %if.end79.i, label %while.cond.i

for.cond.backedge:                                ; preds = %for.cond, %if.end79.i
  br label %for.cond

if.end14.i:                                       ; preds = %for.cond
  %0 = load i32, ptr %flags.i, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %while.cond.i, label %if.end79.i

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %call = tail call i32 @kh_get_int_uint32()
  %1 = load i32, ptr %unique_columns, align 4
  %cmp.not.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.not.i, label %for.cond.backedge, label %if.end14.i

if.end79.i:                                       ; preds = %while.cond.i, %if.end14.i
  store i32 0, ptr %size102.i, align 4
  br label %for.cond.backedge
}

declare i32 @kh_get_int_uint32() local_unnamed_addr

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define noundef i32 @kh_put_int_uint32(ptr nocapture %h) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr %h, align 4
  %cmp.not.not = icmp eq i32 %0, 0
  br i1 %cmp.not.not, label %common.ret, label %if.end14

common.ret:                                       ; preds = %if.end79, %entry
  ret i32 0

while.cond:                                       ; preds = %if.end14, %while.cond
  %step.0 = phi i32 [ %inc, %while.cond ], [ 0, %if.end14 ]
  %inc = add i32 %step.0, 1
  %and57 = and i32 %inc, %0
  %cmp58 = icmp eq i32 %and57, 0
  br i1 %cmp58, label %if.end79, label %while.cond

if.end14:                                         ; preds = %entry
  %flags = getelementptr i8, ptr %h, i64 16
  %1 = load i32, ptr %flags, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %while.cond, label %if.end79

if.end79:                                         ; preds = %while.cond, %if.end14
  %size102 = getelementptr i8, ptr %h, i64 4
  store i32 0, ptr %size102, align 4
  br label %common.ret
}

attributes #0 = { noreturn }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) }

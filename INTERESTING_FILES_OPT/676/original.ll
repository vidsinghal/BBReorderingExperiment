; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//676/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.8 = local_unnamed_addr constant [2 x i8] c".\00"

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
define noundef i32 @hwloc_linux_foreach_proc_tid() local_unnamed_addr #1 {
entry:
  %nr11 = alloca [0 x [0 x i32]], align 4
  %call74.peel.i = tail call ptr @readdir()
  %0 = load i8, ptr inttoptr (i64 19 to ptr), align 1
  %.not.peel.i = icmp eq i8 %0, 46
  br i1 %.not.peel.i, label %while.cond.tail.peel.i, label %retry.preheader

while.cond.tail.peel.i:                           ; preds = %entry
  %1 = load i8, ptr inttoptr (i64 20 to ptr), align 4
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %while.cond.i, label %retry.preheader

while.cond.i:                                     ; preds = %while.cond.tail.peel.i, %while.cond.tail.i
  %call74.i = tail call ptr @readdir()
  %call157.i = call ptr @realloc(ptr nonnull %nr11, i64 0)
  %3 = load i8, ptr inttoptr (i64 19 to ptr), align 1
  %4 = zext i8 %3 to i32
  %5 = add nsw i32 %4, -46
  %.not.i = icmp eq i32 %5, 0
  br i1 %.not.i, label %sub_1.i, label %while.cond.tail.i

sub_1.i:                                          ; preds = %while.cond.i
  %6 = load i8, ptr inttoptr (i64 20 to ptr), align 4
  %7 = zext i8 %6 to i32
  br label %while.cond.tail.i

while.cond.tail.i:                                ; preds = %sub_1.i, %while.cond.i
  %8 = phi i32 [ %5, %while.cond.i ], [ %7, %sub_1.i ]
  %tobool22.not.i = icmp eq i32 %8, 0
  br i1 %tobool22.not.i, label %while.cond.i, label %retry.preheader, !llvm.loop !0

retry.preheader:                                  ; preds = %while.cond.tail.i, %entry, %while.cond.tail.peel.i
  br label %retry

retry:                                            ; preds = %retry.backedge, %retry.preheader
  %call74.peel.i1 = tail call ptr @readdir()
  %9 = load i8, ptr inttoptr (i64 19 to ptr), align 1
  %.not.peel.i2 = icmp eq i8 %9, 46
  br i1 %.not.peel.i2, label %while.cond.tail.peel.i3, label %retry.backedge

retry.backedge:                                   ; preds = %while.cond.tail.i8, %retry, %while.cond.tail.peel.i3
  br label %retry

while.cond.tail.peel.i3:                          ; preds = %retry
  %10 = load i8, ptr inttoptr (i64 20 to ptr), align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %while.cond.i4, label %retry.backedge

while.cond.i4:                                    ; preds = %while.cond.tail.peel.i3, %while.cond.tail.i8
  %call74.i5 = tail call ptr @readdir()
  %12 = load i8, ptr inttoptr (i64 19 to ptr), align 1
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %13, -46
  %.not.i7 = icmp eq i32 %14, 0
  br i1 %.not.i7, label %sub_1.i10, label %while.cond.tail.i8

sub_1.i10:                                        ; preds = %while.cond.i4
  %15 = load i8, ptr inttoptr (i64 20 to ptr), align 4
  %16 = zext i8 %15 to i32
  br label %while.cond.tail.i8

while.cond.tail.i8:                               ; preds = %sub_1.i10, %while.cond.i4
  %17 = phi i32 [ %14, %while.cond.i4 ], [ %16, %sub_1.i10 ]
  %tobool22.not.i9 = icmp eq i32 %17, 0
  br i1 %tobool22.not.i9, label %while.cond.i4, label %retry.backedge, !llvm.loop !0
}

define noundef i32 @hwloc_linux_get_proc_tids(ptr nocapture %nr_tidsp) local_unnamed_addr {
entry:
  %call74.peel = tail call ptr @readdir()
  %0 = load i8, ptr inttoptr (i64 19 to ptr), align 1
  %.not.peel = icmp eq i8 %0, 46
  br i1 %.not.peel, label %while.cond.tail.peel, label %common.ret

while.cond.tail.peel:                             ; preds = %entry
  %1 = load i8, ptr inttoptr (i64 20 to ptr), align 4
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %while.cond, label %common.ret

while.cond:                                       ; preds = %while.cond.tail.peel, %while.cond.tail
  %call74 = tail call ptr @readdir()
  %call157 = tail call ptr @realloc(ptr %nr_tidsp, i64 0)
  %3 = load i8, ptr inttoptr (i64 19 to ptr), align 1
  %4 = zext i8 %3 to i32
  %5 = add nsw i32 %4, -46
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %sub_1, label %while.cond.tail

sub_1:                                            ; preds = %while.cond
  %6 = load i8, ptr inttoptr (i64 20 to ptr), align 4
  %7 = zext i8 %6 to i32
  br label %while.cond.tail

while.cond.tail:                                  ; preds = %while.cond, %sub_1
  %8 = phi i32 [ %5, %while.cond ], [ %7, %sub_1 ]
  %tobool22.not = icmp eq i32 %8, 0
  br i1 %tobool22.not, label %while.cond, label %common.ret, !llvm.loop !0

common.ret:                                       ; preds = %while.cond.tail, %entry, %while.cond.tail.peel
  ret i32 0
}

declare ptr @readdir() local_unnamed_addr

attributes #0 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #1 = { noreturn }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}

; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//676/reordered.bc'
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

retry.preheader:                                  ; preds = %while.cond.tail.i, %entry, %while.cond.tail.peel.i
  br label %retry

while.cond.tail.peel.i:                           ; preds = %entry
  %1 = load i8, ptr inttoptr (i64 20 to ptr), align 4
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %while.cond.i, label %retry.preheader

sub_1.i10:                                        ; preds = %while.cond.i4
  %3 = load i8, ptr inttoptr (i64 20 to ptr), align 4
  %4 = zext i8 %3 to i32
  br label %while.cond.tail.i8

retry:                                            ; preds = %retry.backedge, %retry.preheader
  %call74.peel.i1 = tail call ptr @readdir()
  %5 = load i8, ptr inttoptr (i64 19 to ptr), align 1
  %.not.peel.i2 = icmp eq i8 %5, 46
  br i1 %.not.peel.i2, label %while.cond.tail.peel.i3, label %retry.backedge

sub_1.i:                                          ; preds = %while.cond.i
  %6 = load i8, ptr inttoptr (i64 20 to ptr), align 4
  %7 = zext i8 %6 to i32
  br label %while.cond.tail.i

while.cond.tail.i8:                               ; preds = %sub_1.i10, %while.cond.i4
  %8 = phi i32 [ %17, %while.cond.i4 ], [ %4, %sub_1.i10 ]
  %tobool22.not.i9 = icmp eq i32 %8, 0
  br i1 %tobool22.not.i9, label %while.cond.i4, label %retry.backedge, !llvm.loop !0

while.cond.tail.peel.i3:                          ; preds = %retry
  %9 = load i8, ptr inttoptr (i64 20 to ptr), align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %while.cond.i4, label %retry.backedge

retry.backedge:                                   ; preds = %while.cond.tail.i8, %retry, %while.cond.tail.peel.i3
  br label %retry

while.cond.i:                                     ; preds = %while.cond.tail.peel.i, %while.cond.tail.i
  %call74.i = tail call ptr @readdir()
  %call157.i = call ptr @realloc(ptr nonnull %nr11, i64 0)
  %11 = load i8, ptr inttoptr (i64 19 to ptr), align 1
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, -46
  %.not.i = icmp eq i32 %13, 0
  br i1 %.not.i, label %sub_1.i, label %while.cond.tail.i

while.cond.tail.i:                                ; preds = %sub_1.i, %while.cond.i
  %14 = phi i32 [ %13, %while.cond.i ], [ %7, %sub_1.i ]
  %tobool22.not.i = icmp eq i32 %14, 0
  br i1 %tobool22.not.i, label %while.cond.i, label %retry.preheader, !llvm.loop !0

while.cond.i4:                                    ; preds = %while.cond.tail.peel.i3, %while.cond.tail.i8
  %call74.i5 = tail call ptr @readdir()
  %15 = load i8, ptr inttoptr (i64 19 to ptr), align 1
  %16 = zext i8 %15 to i32
  %17 = add nsw i32 %16, -46
  %.not.i7 = icmp eq i32 %17, 0
  br i1 %.not.i7, label %sub_1.i10, label %while.cond.tail.i8
}

define noundef i32 @hwloc_linux_get_proc_tids(ptr nocapture %nr_tidsp) local_unnamed_addr {
entry:
  %call74.peel = tail call ptr @readdir()
  %0 = load i8, ptr inttoptr (i64 19 to ptr), align 1
  %.not.peel = icmp eq i8 %0, 46
  br i1 %.not.peel, label %while.cond.tail.peel, label %common.ret

common.ret:                                       ; preds = %while.cond.tail, %entry, %while.cond.tail.peel
  ret i32 0

sub_1:                                            ; preds = %while.cond
  %1 = load i8, ptr inttoptr (i64 20 to ptr), align 4
  %2 = zext i8 %1 to i32
  br label %while.cond.tail

while.cond.tail.peel:                             ; preds = %entry
  %3 = load i8, ptr inttoptr (i64 20 to ptr), align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %while.cond, label %common.ret

while.cond:                                       ; preds = %while.cond.tail.peel, %while.cond.tail
  %call74 = tail call ptr @readdir()
  %call157 = tail call ptr @realloc(ptr %nr_tidsp, i64 0)
  %5 = load i8, ptr inttoptr (i64 19 to ptr), align 1
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %6, -46
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %sub_1, label %while.cond.tail

while.cond.tail:                                  ; preds = %while.cond, %sub_1
  %8 = phi i32 [ %7, %while.cond ], [ %2, %sub_1 ]
  %tobool22.not = icmp eq i32 %8, 0
  br i1 %tobool22.not, label %while.cond, label %common.ret, !llvm.loop !0
}

declare ptr @readdir() local_unnamed_addr

attributes #0 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #1 = { noreturn }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}

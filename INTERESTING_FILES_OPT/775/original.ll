; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//775/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @xmlBufAttrSerializeTxtContent(ptr nocapture writeonly %0, i32 %conv147) local_unnamed_addr #0 {
entry:
  %incdec.ptr.i = getelementptr i8, ptr %0, i64 1
  %conv147.fr = freeze i32 %conv147
  switch i32 %conv147.fr, label %while.cond [
    i32 4, label %while.cond.us
    i32 1, label %while.cond.us2
    i32 5, label %while.cond.us7
    i32 0, label %while.cond.us12
  ]

while.cond.us:                                    ; preds = %entry, %while.cond.us
  %call128.us = tail call i32 @xmlBufAdd()
  store i8 1, ptr %incdec.ptr.i, align 1
  br label %while.cond.us

while.cond.us2:                                   ; preds = %entry, %while.cond.us2
  %call128.us3 = tail call i32 @xmlBufAdd()
  store i8 49, ptr %incdec.ptr.i, align 1
  br label %while.cond.us2

while.cond.us7:                                   ; preds = %entry, %while.cond.us7
  %call128.us8 = tail call i32 @xmlBufAdd()
  store i8 1, ptr %incdec.ptr.i, align 1
  br label %while.cond.us7

while.cond.us12:                                  ; preds = %entry, %while.cond.us12
  %call128.us13 = tail call i32 @xmlBufAdd()
  store i8 1, ptr %incdec.ptr.i, align 1
  br label %while.cond.us12

while.cond:                                       ; preds = %entry, %while.cond
  %call128 = tail call i32 @xmlBufAdd()
  store i8 0, ptr %incdec.ptr.i, align 1
  br label %while.cond
}

declare i32 @xmlBufAdd() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noalias noundef ptr @xmlSerializeHexCharRef(ptr nocapture writeonly %out, i32 %val) local_unnamed_addr #1 {
entry:
  %0 = icmp ult i32 %val, 6
  %switch.cast = zext i32 %val to i48
  %switch.shiftamt = shl nuw nsw i48 %switch.cast, 3
  %switch.downshift = lshr i48 1103806607617, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  %.sink = select i1 %0, i8 %switch.masked, i8 0
  %incdec.ptr = getelementptr i8, ptr %out, i64 1
  store i8 %.sink, ptr %incdec.ptr, align 1
  ret ptr null
}

attributes #0 = { noreturn }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }

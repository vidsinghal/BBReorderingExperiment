; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//126/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i32 @xmlGetUTF8Char__internal_alias() local_unnamed_addr

; Function Attrs: noreturn
define noundef i32 @xmlCharEncOutFunc__internal_alias(ptr nocapture writeonly %handler, ptr nocapture readonly %in, i1 %cmp20, i1 %cmp43) local_unnamed_addr #0 {
entry:
  %use54 = getelementptr i8, ptr %in, i64 8
  br i1 %cmp20, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  br i1 %cmp43, label %retry.us.us, label %retry.outer.split.us.split.us1

retry.outer.split.us.split.us1:                   ; preds = %entry.split.us, %retry.outer.split.us.split.us1
  %call23.us.us2 = load volatile i32, ptr null, align 4294967296
  %0 = load i32, ptr %use54, align 8
  store i32 %0, ptr %handler, align 4
  %call56.us = tail call i32 @xmlGetUTF8Char__internal_alias()
  br label %retry.outer.split.us.split.us1

entry.split:                                      ; preds = %entry
  br i1 %cmp43, label %retry, label %if.end48.split

retry.us.us:                                      ; preds = %entry.split.us, %retry.us.us
  %call23.us.us = load volatile i32, ptr null, align 4294967296
  br label %retry.us.us

retry:                                            ; preds = %entry.split, %retry
  br label %retry

if.end48.split:                                   ; preds = %entry.split, %if.end48.split
  %1 = load i32, ptr %use54, align 8
  store i32 %1, ptr %handler, align 4
  %call56 = tail call i32 @xmlGetUTF8Char__internal_alias()
  br label %if.end48.split
}

attributes #0 = { noreturn }

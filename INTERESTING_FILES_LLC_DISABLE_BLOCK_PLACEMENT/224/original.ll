; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//224/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = local_unnamed_addr constant [3 x i8] c"\0D\0A\00"

; Function Attrs: nofree nounwind
define noundef i32 @consumeNewline(ptr nocapture readonly %buf) local_unnamed_addr #0 {
entry:
  %__buf111 = alloca [0 x [0 x [0 x [1024 x i8]]]], align 16
  %0 = load i8, ptr %buf, align 1
  %.not = icmp eq i8 %0, 13
  br i1 %.not, label %entry.tail, label %if.then

entry.tail:                                       ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %buf, i64 1
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 10
  br i1 %3, label %return, label %if.then

if.then:                                          ; preds = %entry, %entry.tail
  %call3 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr nonnull %__buf111, i64 0, ptr null, i32 0, i32 0)
  %call5 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr null, i64 0, ptr null, i64 0, ptr nonnull %__buf111)
  br label %return

return:                                           ; preds = %if.then, %entry.tail
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @readLong() local_unnamed_addr #1 {
entry:
  %call1 = load volatile ptr, ptr null, align 4294967296
  ret i32 0
}

attributes #0 = { nofree nounwind }
attributes #1 = { mustprogress nofree norecurse nounwind willreturn }

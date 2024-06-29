; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//311/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@size = external local_unnamed_addr global i32
@left = external local_unnamed_addr global i32

define noundef i32 @main(i32 %argc, ptr nocapture %argv, ptr nocapture writeonly %argc.addr, ptr nocapture readnone %argv.addr, ptr nocapture readnone %rank, ptr nocapture readnone %right, ptr nocapture readonly %k) local_unnamed_addr {
entry:
  %call = tail call i32 @MPI_Init_thread()
  %0 = load i32, ptr %argv, align 4
  %cmp7 = icmp eq i32 %0, 0
  %1 = load i32, ptr @size, align 4
  %cond = select i1 %cmp7, i32 %1, i32 0
  store i32 %cond, ptr @left, align 4
  store i32 0, ptr %argc.addr, align 4
  %2 = load i32, ptr %argv, align 4
  %cmp17.not = icmp eq i32 %2, 0
  br i1 %cmp17.not, label %if.end20, label %if.then18

if.end20:                                         ; preds = %if.then18, %entry
  %call21 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) null, ptr null, i32 0, i32 0)
  %3 = load i32, ptr %argv, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [4 x ptr], ptr %k, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = load ptr, ptr %argv, align 8
  %call35 = tail call i32 @papyruskv_put(i32 %3, ptr %4, ptr %5)
  store i32 0, ptr %argv, align 4
  %6 = load ptr, ptr %argv, align 8
  %call45 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) null, ptr null, i32 0, i32 0, ptr null, ptr %6)
  store i32 0, ptr %argv, align 4
  ret i32 0

if.then18:                                        ; preds = %entry
  %call19 = tail call i32 (ptr, ...) @printf(ptr nonnull dereferenceable(1) null, ptr null, i32 0, i32 0)
  br label %if.end20
}

declare i32 @MPI_Init_thread() local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #0

declare i32 @papyruskv_put(i32, ptr, ptr) local_unnamed_addr

attributes #0 = { nofree nounwind }

; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//382/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@odd_parity_table = external local_unnamed_addr constant [128 x i8]

; Function Attrs: nofree norecurse nounwind
define void @mbedtls_des_free(i1 %cmp) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret void

if.end:                                           ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %common.ret
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define void @mbedtls_des_key_set_parity(ptr nocapture %key) local_unnamed_addr #1 {
entry:
  %0 = load i8, ptr %key, align 1
  %idxprom1 = zext i8 %0 to i64
  %arrayidx2 = getelementptr [128 x i8], ptr @odd_parity_table, i64 0, i64 %idxprom1
  %1 = load i8, ptr %arrayidx2, align 1
  store i8 %1, ptr %key, align 1
  %arrayidx.1 = getelementptr i8, ptr %key, i64 1
  %2 = load i8, ptr %arrayidx.1, align 1
  %idxprom1.1 = zext i8 %2 to i64
  %arrayidx2.1 = getelementptr [128 x i8], ptr @odd_parity_table, i64 0, i64 %idxprom1.1
  %3 = load i8, ptr %arrayidx2.1, align 1
  store i8 %3, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %key, i64 2
  %4 = load i8, ptr %arrayidx.2, align 1
  %idxprom1.2 = zext i8 %4 to i64
  %arrayidx2.2 = getelementptr [128 x i8], ptr @odd_parity_table, i64 0, i64 %idxprom1.2
  %5 = load i8, ptr %arrayidx2.2, align 1
  store i8 %5, ptr %arrayidx.2, align 1
  %arrayidx.3 = getelementptr i8, ptr %key, i64 3
  %6 = load i8, ptr %arrayidx.3, align 1
  %idxprom1.3 = zext i8 %6 to i64
  %arrayidx2.3 = getelementptr [128 x i8], ptr @odd_parity_table, i64 0, i64 %idxprom1.3
  %7 = load i8, ptr %arrayidx2.3, align 1
  store i8 %7, ptr %arrayidx.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %key, i64 4
  %8 = load i8, ptr %arrayidx.4, align 1
  %idxprom1.4 = zext i8 %8 to i64
  %arrayidx2.4 = getelementptr [128 x i8], ptr @odd_parity_table, i64 0, i64 %idxprom1.4
  %9 = load i8, ptr %arrayidx2.4, align 1
  store i8 %9, ptr %arrayidx.4, align 1
  %arrayidx.5 = getelementptr i8, ptr %key, i64 5
  %10 = load i8, ptr %arrayidx.5, align 1
  %idxprom1.5 = zext i8 %10 to i64
  %arrayidx2.5 = getelementptr [128 x i8], ptr @odd_parity_table, i64 0, i64 %idxprom1.5
  %11 = load i8, ptr %arrayidx2.5, align 1
  store i8 %11, ptr %arrayidx.5, align 1
  %arrayidx.6 = getelementptr i8, ptr %key, i64 6
  %12 = load i8, ptr %arrayidx.6, align 1
  %idxprom1.6 = zext i8 %12 to i64
  %arrayidx2.6 = getelementptr [128 x i8], ptr @odd_parity_table, i64 0, i64 %idxprom1.6
  %13 = load i8, ptr %arrayidx2.6, align 1
  store i8 %13, ptr %arrayidx.6, align 1
  %arrayidx.7 = getelementptr i8, ptr %key, i64 7
  %14 = load i8, ptr %arrayidx.7, align 1
  %idxprom1.7 = zext i8 %14 to i64
  %arrayidx2.7 = getelementptr [128 x i8], ptr @odd_parity_table, i64 0, i64 %idxprom1.7
  %15 = load i8, ptr %arrayidx2.7, align 1
  store i8 %15, ptr %arrayidx.7, align 1
  ret void
}

attributes #0 = { nofree norecurse nounwind }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) }

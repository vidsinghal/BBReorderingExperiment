; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//278/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @hypre_AMR_CFCoarsen(i1 %cmp33, ptr nocapture writeonly %call162, ptr nocapture writeonly %call159) local_unnamed_addr {
entry:
  br i1 %cmp33, label %common.ret, label %for.end134

for.end134:                                       ; preds = %entry
  %call1623 = tail call ptr @hypre_MAlloc()
  store i32 0, ptr %call162, align 4
  store i32 0, ptr %call159, align 4
  %arrayidx168.1 = getelementptr i8, ptr %call162, i64 4
  store i32 0, ptr %arrayidx168.1, align 4
  %arrayidx173.1 = getelementptr i8, ptr %call159, i64 4
  store i32 0, ptr %arrayidx173.1, align 4
  %arrayidx168.2 = getelementptr i8, ptr %call162, i64 8
  store i32 0, ptr %arrayidx168.2, align 4
  %arrayidx173.2 = getelementptr i8, ptr %call159, i64 8
  store i32 0, ptr %arrayidx173.2, align 4
  %arrayidx168.3 = getelementptr i8, ptr %call162, i64 12
  store i32 0, ptr %arrayidx168.3, align 4
  %arrayidx173.3 = getelementptr i8, ptr %call159, i64 12
  store i32 0, ptr %arrayidx173.3, align 4
  %arrayidx168.4 = getelementptr i8, ptr %call162, i64 16
  store i32 0, ptr %arrayidx168.4, align 4
  %arrayidx173.4 = getelementptr i8, ptr %call159, i64 16
  store i32 0, ptr %arrayidx173.4, align 4
  %arrayidx168.5 = getelementptr i8, ptr %call162, i64 20
  store i32 0, ptr %arrayidx168.5, align 4
  %arrayidx173.5 = getelementptr i8, ptr %call159, i64 20
  store i32 0, ptr %arrayidx173.5, align 4
  %arrayidx168.6 = getelementptr i8, ptr %call162, i64 24
  store i32 0, ptr %arrayidx168.6, align 4
  %arrayidx173.6 = getelementptr i8, ptr %call159, i64 24
  store i32 0, ptr %arrayidx173.6, align 4
  %arrayidx168.7 = getelementptr i8, ptr %call162, i64 28
  store i32 0, ptr %arrayidx168.7, align 4
  %arrayidx173.7 = getelementptr i8, ptr %call159, i64 28
  store i32 0, ptr %arrayidx173.7, align 4
  %arrayidx168.8 = getelementptr i8, ptr %call162, i64 32
  store i32 0, ptr %arrayidx168.8, align 4
  %arrayidx173.8 = getelementptr i8, ptr %call159, i64 32
  store i32 0, ptr %arrayidx173.8, align 4
  %arrayidx168.9 = getelementptr i8, ptr %call162, i64 36
  store i32 0, ptr %arrayidx168.9, align 4
  %arrayidx173.9 = getelementptr i8, ptr %call159, i64 36
  store i32 0, ptr %arrayidx173.9, align 4
  %arrayidx168.10 = getelementptr i8, ptr %call162, i64 40
  store i32 0, ptr %arrayidx168.10, align 4
  %arrayidx173.10 = getelementptr i8, ptr %call159, i64 40
  store i32 0, ptr %arrayidx173.10, align 4
  %arrayidx168.11 = getelementptr i8, ptr %call162, i64 44
  store i32 0, ptr %arrayidx168.11, align 4
  %arrayidx173.11 = getelementptr i8, ptr %call159, i64 44
  store i32 0, ptr %arrayidx173.11, align 4
  %arrayidx168.12 = getelementptr i8, ptr %call162, i64 48
  store i32 0, ptr %arrayidx168.12, align 4
  %arrayidx173.12 = getelementptr i8, ptr %call159, i64 48
  store i32 0, ptr %arrayidx173.12, align 4
  %arrayidx168.13 = getelementptr i8, ptr %call162, i64 52
  store i32 0, ptr %arrayidx168.13, align 4
  %arrayidx173.13 = getelementptr i8, ptr %call159, i64 52
  store i32 0, ptr %arrayidx173.13, align 4
  %arrayidx168.14 = getelementptr i8, ptr %call162, i64 56
  store i32 0, ptr %arrayidx168.14, align 4
  %arrayidx173.14 = getelementptr i8, ptr %call159, i64 56
  store i32 0, ptr %arrayidx173.14, align 4
  %arrayidx168.15 = getelementptr i8, ptr %call162, i64 60
  store i32 0, ptr %arrayidx168.15, align 4
  %arrayidx173.15 = getelementptr i8, ptr %call159, i64 60
  store i32 0, ptr %arrayidx173.15, align 4
  %arrayidx168.16 = getelementptr i8, ptr %call162, i64 64
  store i32 0, ptr %arrayidx168.16, align 4
  %arrayidx173.16 = getelementptr i8, ptr %call159, i64 64
  store i32 0, ptr %arrayidx173.16, align 4
  %arrayidx168.17 = getelementptr i8, ptr %call162, i64 68
  store i32 0, ptr %arrayidx168.17, align 4
  %arrayidx173.17 = getelementptr i8, ptr %call159, i64 68
  store i32 0, ptr %arrayidx173.17, align 4
  %arrayidx168.18 = getelementptr i8, ptr %call162, i64 72
  store i32 0, ptr %arrayidx168.18, align 4
  %arrayidx173.18 = getelementptr i8, ptr %call159, i64 72
  store i32 0, ptr %arrayidx173.18, align 4
  %arrayidx168.19 = getelementptr i8, ptr %call162, i64 76
  store i32 0, ptr %arrayidx168.19, align 4
  %arrayidx173.19 = getelementptr i8, ptr %call159, i64 76
  store i32 0, ptr %arrayidx173.19, align 4
  %arrayidx168.20 = getelementptr i8, ptr %call162, i64 80
  store i32 0, ptr %arrayidx168.20, align 4
  %arrayidx173.20 = getelementptr i8, ptr %call159, i64 80
  store i32 0, ptr %arrayidx173.20, align 4
  %arrayidx168.21 = getelementptr i8, ptr %call162, i64 84
  store i32 0, ptr %arrayidx168.21, align 4
  %arrayidx173.21 = getelementptr i8, ptr %call159, i64 84
  store i32 0, ptr %arrayidx173.21, align 4
  %arrayidx168.22 = getelementptr i8, ptr %call162, i64 88
  store i32 0, ptr %arrayidx168.22, align 4
  %arrayidx173.22 = getelementptr i8, ptr %call159, i64 88
  store i32 0, ptr %arrayidx173.22, align 4
  %arrayidx168.23 = getelementptr i8, ptr %call162, i64 92
  store i32 0, ptr %arrayidx168.23, align 4
  %arrayidx173.23 = getelementptr i8, ptr %call159, i64 92
  store i32 0, ptr %arrayidx173.23, align 4
  %arrayidx168.24 = getelementptr i8, ptr %call162, i64 96
  store i32 0, ptr %arrayidx168.24, align 4
  %arrayidx173.24 = getelementptr i8, ptr %call159, i64 96
  store i32 0, ptr %arrayidx173.24, align 4
  %arrayidx168.25 = getelementptr i8, ptr %call162, i64 100
  store i32 0, ptr %arrayidx168.25, align 4
  %arrayidx173.25 = getelementptr i8, ptr %call159, i64 100
  store i32 0, ptr %arrayidx173.25, align 4
  %arrayidx168.26 = getelementptr i8, ptr %call162, i64 104
  store i32 0, ptr %arrayidx168.26, align 4
  %arrayidx173.26 = getelementptr i8, ptr %call159, i64 104
  store i32 0, ptr %arrayidx173.26, align 4
  br label %common.ret

common.ret:                                       ; preds = %for.end134, %entry
  ret i32 0
}

declare ptr @hypre_MAlloc() local_unnamed_addr

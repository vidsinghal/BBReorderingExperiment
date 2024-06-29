; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//519/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qc8_dwconv_minmax_fp32_ukernel_up32x25__avx2_mul16_vpmovsx(i64 %channels, ptr nocapture writeonly %input, i64 %output_increment, i1 %cmp1043) local_unnamed_addr {
entry:
  %cmp1043.fr = freeze i1 %cmp1043
  %cmp291.not1 = icmp eq i64 %channels, 0
  br i1 %cmp291.not1, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  br i1 %cmp1043.fr, label %do.body.us, label %if.then1051

do.body.us:                                       ; preds = %entry.split.us, %do.body.us
  br label %do.body.us

entry.split:                                      ; preds = %entry
  %output_increment.fr = freeze i64 %output_increment
  %cmp291.not = icmp eq i64 %output_increment.fr, 0
  br i1 %cmp291.not, label %entry.split.split, label %for.body

entry.split.split:                                ; preds = %entry.split
  br i1 %cmp1043.fr, label %do.body.us2, label %do.body

do.body.us2:                                      ; preds = %entry.split.split, %do.body.us2
  %call.us.us = tail call <4 x i64> @_mm256_loadu_si256()
  %call294.us.us = load volatile <4 x i64>, ptr null, align 4294967296
  %call296.us.us = load volatile <4 x i64>, ptr null, align 4294967296
  %call298.us.us = load volatile <4 x i64>, ptr null, align 4294967296
  %call299.us.us = load volatile <2 x i64>, ptr null, align 4294967296
  store i32 0, ptr %input, align 4
  br label %do.body.us2

do.body:                                          ; preds = %entry.split.split
  %call.us = tail call <4 x i64> @_mm256_loadu_si256()
  %call294.us = load volatile <4 x i64>, ptr null, align 4294967296
  %call296.us = load volatile <4 x i64>, ptr null, align 4294967296
  %call298.us = load volatile <4 x i64>, ptr null, align 4294967296
  %call299.us = load volatile <2 x i64>, ptr null, align 4294967296
  store i32 0, ptr %input, align 4
  br label %if.then1051

for.body:                                         ; preds = %entry.split, %for.body
  %call = tail call <4 x i64> @_mm256_loadu_si256()
  %call294 = load volatile <4 x i64>, ptr null, align 4294967296
  %call296 = load volatile <4 x i64>, ptr null, align 4294967296
  %call298 = load volatile <4 x i64>, ptr null, align 4294967296
  %call299 = load volatile <2 x i64>, ptr null, align 4294967296
  store i32 0, ptr %input, align 4
  br label %for.body

if.then1051:                                      ; preds = %entry.split.us, %do.body
  ret void
}

declare <4 x i64> @_mm256_loadu_si256() local_unnamed_addr

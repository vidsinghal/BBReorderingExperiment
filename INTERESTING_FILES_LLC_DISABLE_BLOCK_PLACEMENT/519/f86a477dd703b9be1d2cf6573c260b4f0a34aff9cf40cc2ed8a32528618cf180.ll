; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qc8_dwconv_minmax_fp32_ukernel_up32x25__avx2_mul16_vpmovsx(i64 %channels, ptr %input, i64 %output_increment, i1 %cmp1043) {
entry:
  br label %do.body

do.body:                                          ; preds = %for.end, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.body, %do.body
  %c.018 = phi i64 [ %channels, %do.body ], [ %output_increment, %for.body ]
  %cmp291.not = icmp eq i64 %c.018, 0
  br i1 %cmp291.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call = call <4 x i64> @_mm256_loadu_si256()
  %call294 = load volatile <4 x i64>, ptr null, align 32
  %call296 = load volatile <4 x i64>, ptr null, align 32
  %call298 = load volatile <4 x i64>, ptr null, align 32
  %call299 = load volatile <2 x i64>, ptr null, align 16
  store i32 0, ptr %input, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp1043, label %do.body, label %if.then1051

if.then1051:                                      ; preds = %for.end
  ret void
}

declare <4 x i64> @_mm256_loadu_si256()

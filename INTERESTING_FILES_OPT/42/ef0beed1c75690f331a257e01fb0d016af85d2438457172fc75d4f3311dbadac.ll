; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtRcrEncoder = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, [10 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8 }

@__func__.gt_rcr_analyse_alignment_data = external constant [30 x i8]

declare ptr @gt_encseq_alphabet()

define i32 @gt_rcr_analyse_alignment_data(ptr %rcr_enc, i1 %tobool41) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end45, %entry
  br i1 %tobool41, label %if.end45, label %if.then42

if.then42:                                        ; preds = %while.cond
  store i64 0, ptr %rcr_enc, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %while.cond
  %call471 = call i32 @rcr_get_read_infos(ptr %rcr_enc, i32 0)
  br label %while.cond
}

declare ptr @gt_calloc_mem()

define i32 @rcr_get_read_infos(ptr %rcr_enc, i32 %0) {
entry:
  %.pre = load i64, ptr %rcr_enc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %j.0 = phi i64 [ 0, %entry ], [ 1, %for.cond ]
  %cmp68 = icmp ult i64 %j.0, %.pre
  br i1 %cmp68, label %for.cond, label %if.end72

if.end72:                                         ; preds = %for.cond
  store i64 0, ptr %rcr_enc, align 8
  %prev_readpos = getelementptr %struct.GtRcrEncoder, ptr %rcr_enc, i32 0, i32 44
  store volatile i32 0, ptr null, align 4
  store i64 0, ptr %prev_readpos, align 8
  ret i32 0
}

declare void @gt_disc_distri_add()

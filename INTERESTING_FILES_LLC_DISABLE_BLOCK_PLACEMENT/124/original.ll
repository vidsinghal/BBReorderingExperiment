; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//124/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noalias noundef ptr @gdcmopenjp2opj_pi_create_decode(ptr nocapture readonly %p_image) local_unnamed_addr {
entry:
  %0 = load i32, ptr %p_image, align 8
  %mul = mul i32 %0, 132
  %conv = zext i32 %mul to i64
  %call = tail call ptr @gdcmopenjp2opj_malloc(i64 %conv)
  %conv3 = zext i32 %0 to i64
  %call5 = tail call ptr @gdcmopenjp2opj_malloc(i64 %conv3)
  %1 = load ptr, ptr inttoptr (i64 112 to ptr), align 16
  %2 = load i32, ptr %1, align 4
  %conv.i = zext i32 %2 to i64
  %call.i = tail call ptr @gdcmopenjp2opj_calloc(i64 %conv.i)
  %cmp.not.i = icmp eq i32 %2, 0
  br i1 %cmp.not.i, label %opj_pi_create.exit, label %for.body.i

for.body.i:                                       ; preds = %entry
  %3 = load i32, ptr inttoptr (i64 16 to ptr), align 16
  %conv2.i = zext i32 %3 to i64
  %call3.i = tail call ptr @gdcmopenjp2opj_calloc(i64 %conv2.i)
  store i32 0, ptr inttoptr (i64 204 to ptr), align 4
  %4 = load ptr, ptr inttoptr (i64 208 to ptr), align 16
  %5 = load ptr, ptr inttoptr (i64 5600 to ptr), align 32
  %6 = load i32, ptr %5, align 4
  %conv20.i = zext i32 %6 to i64
  %call21.i = tail call ptr @gdcmopenjp2opj_calloc(i64 %conv20.i)
  store ptr null, ptr %4, align 8
  store i32 0, ptr inttoptr (i64 8 to ptr), align 8
  br label %opj_pi_create.exit

opj_pi_create.exit:                               ; preds = %entry, %for.body.i
  ret ptr null
}

declare ptr @gdcmopenjp2opj_malloc(i64) local_unnamed_addr

declare ptr @gdcmopenjp2opj_calloc(i64) local_unnamed_addr

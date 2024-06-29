; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @gdcmopenjp2opj_pi_create_decode(ptr %p_image) {
entry:
  %0 = load i32, ptr %p_image, align 8
  %mul = mul i32 %0, 132
  %conv = zext i32 %mul to i64
  %call = call ptr @gdcmopenjp2opj_malloc(i64 %conv)
  %conv3 = zext i32 %0 to i64
  %call5 = call ptr @gdcmopenjp2opj_malloc(i64 %conv3)
  %call9 = call ptr @opj_pi_create()
  ret ptr null
}

declare ptr @gdcmopenjp2opj_malloc(i64)

define internal ptr @opj_pi_create() {
entry:
  %0 = load ptr, ptr inttoptr (i64 112 to ptr), align 8
  %1 = load i32, ptr %0, align 4
  %conv = zext i32 %1 to i64
  %call = call ptr @gdcmopenjp2opj_calloc(i64 %conv)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %common.ret, label %for.body

common.ret:                                       ; preds = %for.body, %entry
  ret ptr null

for.body:                                         ; preds = %entry
  %2 = load i32, ptr inttoptr (i64 16 to ptr), align 8
  %conv2 = zext i32 %2 to i64
  %call3 = call ptr @gdcmopenjp2opj_calloc(i64 %conv2)
  store i32 0, ptr inttoptr (i64 204 to ptr), align 4
  %3 = load ptr, ptr inttoptr (i64 208 to ptr), align 8
  %4 = load ptr, ptr inttoptr (i64 5600 to ptr), align 8
  %5 = load i32, ptr %4, align 4
  %conv20 = zext i32 %5 to i64
  %call21 = call ptr @gdcmopenjp2opj_calloc(i64 %conv20)
  store ptr null, ptr %3, align 8
  store i32 0, ptr inttoptr (i64 8 to ptr), align 8
  br label %common.ret
}

declare ptr @gdcmopenjp2opj_calloc(i64)

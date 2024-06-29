; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @gdcmjpeg16_jpeg_idct_4x4(ptr %incdec.ptr, i32 %0, i32 %conv58) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp0.0 = phi i32 [ 0, %entry ], [ %tmp0.1, %for.inc ]
  %ctr.02 = phi i32 [ %conv58, %entry ], [ %0, %for.inc ]
  %cmp1 = icmp eq i32 %ctr.02, 0
  br i1 %cmp1, label %for.inc, label %if.end

if.end:                                           ; preds = %for.cond
  %1 = load i32, ptr %incdec.ptr, align 4
  store i32 %tmp0.0, ptr %incdec.ptr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.cond
  %tmp0.1 = phi i32 [ %tmp0.0, %for.cond ], [ %1, %if.end ]
  br label %for.cond
}

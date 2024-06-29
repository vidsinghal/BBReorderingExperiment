; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_qu8_dwconv_minmax_fp32_ukernel_up8x25__avx2_mul32(ptr %input, ptr %weights, i1 %cmp4, i1 %cmp28) {
entry:
  br label %do.body

do.body:                                          ; preds = %if.end38, %entry
  br i1 %cmp4, label %if.then12, label %if.end26

if.then12:                                        ; preds = %do.body
  store ptr null, ptr %weights, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then12, %do.body
  br i1 %cmp28, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end26
  store ptr null, ptr %input, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end26
  store ptr null, ptr %input, align 8
  br label %do.body
}

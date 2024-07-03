; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimize_data = type { %struct.yasm_span_head, %struct.yasm_span_shead, %struct.yasm_span_shead, ptr, %struct.offset_setters_head, i64, ptr, ptr }
%struct.yasm_span_head = type { ptr, ptr }
%struct.yasm_span_shead = type { ptr, ptr }
%struct.offset_setters_head = type { ptr, ptr }

@yasm_xmalloc = external global ptr

define void @yasm_object_optimize(i1 %cmp380, ptr %optd, ptr %offset_setters5, ptr %0) {
entry:
  br label %while.cond307

while.cond307:                                    ; preds = %for.end399, %while.cond307, %entry
  %call3771 = call i32 @yasm_bc_expand()
  br i1 %cmp380, label %while.cond307, label %for.cond385

for.cond385:                                      ; preds = %for.body388, %while.cond307
  %1 = load i32, ptr %offset_setters5, align 8
  %cmp387 = icmp ult i32 0, %1
  br i1 %cmp387, label %for.body388, label %for.end399

for.body388:                                      ; preds = %for.cond385
  store i64 0, ptr %optd, align 8
  br label %for.cond385

for.end399:                                       ; preds = %for.cond385
  %len_diff = getelementptr %struct.optimize_data, ptr %optd, i32 0, i32 5
  store i64 0, ptr %len_diff, align 8
  br label %while.cond307
}

declare i32 @yasm_bc_expand()

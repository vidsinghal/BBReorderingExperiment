; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//490/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define range(i8 0, 2) i8 @ucp_datatype_iter_iov_mem_reg(ptr writeonly %dt_iter, i1 %cmp) local_unnamed_addr {
entry:
  %call = tail call i64 @ucp_datatype_iter_iov_count()
  br i1 %cmp, label %common.ret, label %if.end

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %dt_iter, null
  br i1 %cmp2, label %common.ret, label %if.end4

common.ret:                                       ; preds = %if.end4, %if.end, %entry
  %common.ret.op = phi i8 [ 0, %if.end4 ], [ 0, %entry ], [ 1, %if.end ]
  ret i8 %common.ret.op

if.end4:                                          ; preds = %if.end
  store ptr null, ptr %dt_iter, align 8
  br label %common.ret
}

declare i64 @ucp_datatype_iter_iov_count() local_unnamed_addr

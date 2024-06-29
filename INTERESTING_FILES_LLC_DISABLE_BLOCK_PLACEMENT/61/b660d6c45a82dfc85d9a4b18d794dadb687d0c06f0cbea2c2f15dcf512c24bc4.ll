; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rd_hdr_iter_s = type { ptr, i32, i32, i64, i64, i64, i64 }

define double @rd_hdr_histogram_mean() {
entry:
  %it111 = alloca [0 x [0 x [0 x %struct.rd_hdr_iter_s]]], i32 0, align 8
  %call = call i32 @rd_hdr_iter_next(ptr %it111)
  ret double 0.000000e+00
}

define i32 @rd_hdr_iter_next(ptr %it) {
entry:
  %0 = load i64, ptr inttoptr (i64 64 to ptr), align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end12, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %1 = load i32, ptr inttoptr (i64 48 to ptr), align 8
  %conv6 = zext i32 %1 to i64
  %expval7 = call i64 @llvm.expect.i64(i64 %conv6, i64 0)
  %tobool8.not = icmp eq i64 %expval7, 0
  br i1 %tobool8.not, label %if.end12, label %if.then9

if.then9:                                         ; preds = %if.end
  store i32 0, ptr %it, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  %2 = phi i32 [ 1, %if.then9 ], [ 0, %if.end ]
  %3 = load i32, ptr inttoptr (i64 52 to ptr), align 4
  %cmp14 = icmp sge i32 %2, %3
  call void @llvm.assume(i1 %cmp14)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

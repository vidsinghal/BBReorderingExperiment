; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//215/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @mbedtls_dhm_read_params(ptr %p) local_unnamed_addr {
entry:
  %cmp.i = icmp slt ptr %p, null
  %.pre = load i8, ptr %p, align 1
  br i1 %cmp.i, label %dhm_read_bignum.exit, label %if.end.i

dhm_read_bignum.exit:                             ; preds = %entry, %if.end.i
  %0 = phi i8 [ %.pre, %entry ], [ %2, %if.end.i ]
  %conv1.i2 = zext i8 %0 to i64
  %shl.i3 = shl nuw nsw i64 %conv1.i2, 1
  %call.i4 = tail call i32 @mbedtls_mpi_read_binary()
  %add.ptr17.i5 = getelementptr i8, ptr null, i64 %shl.i3
  store ptr %add.ptr17.i5, ptr %p, align 8
  ret i32 0

if.end.i:                                         ; preds = %entry
  %conv1.i = zext i8 %.pre to i64
  %shl.i = shl nuw nsw i64 %conv1.i, 1
  %call.i = tail call i32 @mbedtls_mpi_read_binary()
  %add.ptr17.i = getelementptr i8, ptr null, i64 %shl.i
  store ptr %add.ptr17.i, ptr %p, align 8
  %1 = ptrtoint ptr %add.ptr17.i to i64
  %2 = trunc i64 %1 to i8
  br label %dhm_read_bignum.exit
}

define noundef i32 @dhm_read_bignum(ptr nocapture %p, ptr readnone %end, ptr %0, i64 %conv) local_unnamed_addr {
entry:
  %cmp = icmp slt ptr %end, null
  br i1 %cmp, label %common.ret, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %p, align 1
  %conv1 = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %conv1, 1
  %or = or i64 %shl, %conv
  %call = tail call i32 @mbedtls_mpi_read_binary()
  %add.ptr17 = getelementptr i8, ptr %0, i64 %or
  store ptr %add.ptr17, ptr %p, align 8
  br label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0
}

declare i32 @mbedtls_mpi_read_binary() local_unnamed_addr

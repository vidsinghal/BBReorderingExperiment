; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @mbedtls_dhm_read_params(ptr %p) {
entry:
  %call22 = call i32 @dhm_read_bignum(ptr %p, ptr %p, ptr null, i64 0)
  %call711 = call i32 @dhm_read_bignum(ptr %p, ptr null, ptr null, i64 0)
  ret i32 0
}

define i32 @dhm_read_bignum(ptr %p, ptr %end, ptr %0, i64 %conv) {
entry:
  %cmp = icmp slt ptr %end, null
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %p, align 1
  %conv1 = zext i8 %1 to i64
  %shl = shl i64 %conv1, 1
  %or = or i64 %shl, %conv
  %call = call i32 @mbedtls_mpi_read_binary()
  %add.ptr17 = getelementptr i8, ptr %0, i64 %or
  store ptr %add.ptr17, ptr %p, align 8
  br label %common.ret
}

declare i32 @mbedtls_mpi_read_binary()

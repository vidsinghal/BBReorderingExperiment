; ModuleID = 'samples/215.bc'
source_filename = "dhm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbedtls_dhm_context = type { i64, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi, %struct.mbedtls_mpi }
%struct.mbedtls_mpi = type { i32, i64, ptr }
%struct.mbedtls_pem_context = type { ptr, i64, ptr }

@.str = private unnamed_addr constant [6 x i8] c"dhm.c\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"-----BEGIN DH PARAMETERS-----\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"-----END DH PARAMETERS-----\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"  DHM parameter load: \00", align 1
@mbedtls_test_dhm_params = internal constant [251 x i8] c"-----BEGIN DH PARAMETERS-----\0D\0AMIGHAoGBAJ419DBEOgmQTzo5qXl5fQcN9TN455wkOL7052HzxxRVMyhYmwQcgJvh\0D\0A1sa18fyfR9OiVEMYglOpkqVoGLN7qd5aQNNi5W7/C+VBdHTBJcGZJyyP5B3qcz32\0D\0A9mLJKudlVudV0Qxk5qUJaPZ/xupz0NyoVpviuiBOI1gNi8ovSXWzAgEC\0D\0A-----END DH PARAMETERS-----\0D\0A\00", align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"passed\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1

; Function Attrs: nounwind uwtable
define void @mbedtls_dhm_init(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 248, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i32 @mbedtls_dhm_read_params(ptr noundef %ctx, ptr noundef %p, ptr noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %end, ptr %end.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -110, ptr %ret, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %end.addr, align 8, !tbaa !4
  %call = call i32 @dhm_read_bignum(ptr noundef %P, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end6
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %end.addr, align 8, !tbaa !4
  %call7 = call i32 @dhm_read_bignum(ptr noundef %G, ptr noundef %4, ptr noundef %5)
  store i32 %call7, ptr %ret, align 4, !tbaa !8
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GY = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %end.addr, align 8, !tbaa !4
  %call10 = call i32 @dhm_read_bignum(ptr noundef %GY, ptr noundef %7, ptr noundef %8)
  store i32 %call10, ptr %ret, align 4, !tbaa !8
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false, %do.end6
  %9 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %9, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false9
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GY12 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P13 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %11, i32 0, i32 1
  %call14 = call i32 @dhm_check_range(ptr noundef %GY12, ptr noundef %P13)
  store i32 %call14, ptr %ret, align 4, !tbaa !8
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  %12 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P18 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %13, i32 0, i32 1
  %call19 = call i64 @mbedtls_mpi_size(ptr noundef %P18)
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %14, i32 0, i32 0
  store i64 %call19, ptr %len, align 8, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @dhm_read_bignum(ptr noundef %X, ptr noundef %p, ptr noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %X.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %end, ptr %end.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #8
  %0 = load ptr, ptr %end.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %1, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp slt i64 %sub.ptr.sub, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -12416, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %3, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv = zext i8 %5 to i32
  %shl = shl i32 %conv, 8
  %6 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %6, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds i8, ptr %7, i64 1
  %8 = load i8, ptr %arrayidx1, align 1, !tbaa !14
  %conv2 = zext i8 %8 to i32
  %or = or i32 %shl, %conv2
  store i32 %or, ptr %n, align 4, !tbaa !8
  %9 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %9, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 2
  store ptr %add.ptr, ptr %9, align 8, !tbaa !4
  %11 = load ptr, ptr %end.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %12, align 8, !tbaa !4
  %sub.ptr.lhs.cast3 = ptrtoint ptr %11 to i64
  %sub.ptr.rhs.cast4 = ptrtoint ptr %13 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  %conv6 = trunc i64 %sub.ptr.sub5 to i32
  %14 = load i32, ptr %n, align 4, !tbaa !8
  %cmp7 = icmp slt i32 %conv6, %14
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -12416, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %15 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %16, align 8, !tbaa !4
  %18 = load i32, ptr %n, align 4, !tbaa !8
  %conv11 = sext i32 %18 to i64
  %call = call i32 @mbedtls_mpi_read_binary(ptr noundef %15, ptr noundef %17, i64 noundef %conv11)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp12 = icmp ne i32 %call, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %19 = load i32, ptr %ret, align 4, !tbaa !8
  %call15 = call i32 @mbedtls_error_add(i32 noundef -12544, i32 noundef %19, ptr noundef @.str, i32 noundef 74)
  store i32 %call15, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %20 = load i32, ptr %n, align 4, !tbaa !8
  %21 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %21, align 8, !tbaa !4
  %idx.ext = sext i32 %20 to i64
  %add.ptr17 = getelementptr inbounds i8, ptr %22, i64 %idx.ext
  store ptr %add.ptr17, ptr %21, align 8, !tbaa !4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @dhm_check_range(ptr noundef %param, ptr noundef %P) #0 {
entry:
  %param.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %U = alloca %struct.mbedtls_mpi, align 8
  %ret = alloca i32, align 4
  store ptr %param, ptr %param.addr, align 8, !tbaa !4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 24, ptr %U) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 0, ptr %ret, align 4, !tbaa !8
  call void @mbedtls_mpi_init(ptr noundef %U)
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_sub_int(ptr noundef %U, ptr noundef %0, i64 noundef 2)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %param.addr, align 8, !tbaa !4
  %call1 = call i32 @mbedtls_mpi_cmp_int(ptr noundef %1, i64 noundef 2)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %2 = load ptr, ptr %param.addr, align 8, !tbaa !4
  %call3 = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef %2, ptr noundef %U)
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %do.end
  store i32 -12416, ptr %ret, align 4, !tbaa !8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %lor.lhs.false
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  call void @mbedtls_mpi_free(ptr noundef %U)
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr %U) #8
  ret i32 %3
}

declare i64 @mbedtls_mpi_size(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @mbedtls_dhm_make_params(ptr noundef %ctx, i32 noundef %x_size, ptr noundef %output, ptr noundef %olen, ptr noundef %f_rng, ptr noundef %p_rng) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %olen.addr = alloca ptr, align 8
  %f_rng.addr = alloca ptr, align 8
  %p_rng.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %n1 = alloca i64, align 8
  %n2 = alloca i64, align 8
  %n3 = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store ptr %olen, ptr %olen.addr, align 8, !tbaa !4
  store ptr %f_rng, ptr %f_rng.addr, align 8, !tbaa !4
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %n1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %n2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %n3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  br label %do.cond8

do.cond8:                                         ; preds = %do.body7
  br label %do.end9

do.end9:                                          ; preds = %do.cond8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %1 = load i32, ptr %x_size.addr, align 4, !tbaa !8
  %2 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  %call = call i32 @dhm_make_common(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %4 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end9
  br label %cleanup

if.end:                                           ; preds = %do.end9
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %5, i32 0, i32 1
  %call10 = call i64 @mbedtls_mpi_size(ptr noundef %P)
  store i64 %call10, ptr %n1, align 8, !tbaa !15
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %6, i32 0, i32 2
  %call11 = call i64 @mbedtls_mpi_size(ptr noundef %G)
  store i64 %call11, ptr %n2, align 8, !tbaa !15
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GX = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %7, i32 0, i32 4
  %call12 = call i64 @mbedtls_mpi_size(ptr noundef %GX)
  store i64 %call12, ptr %n3, align 8, !tbaa !15
  %8 = load ptr, ptr %output.addr, align 8, !tbaa !4
  store ptr %8, ptr %p, align 8, !tbaa !4
  br label %do.body13

do.body13:                                        ; preds = %if.end
  br label %do.body14

do.body14:                                        ; preds = %do.body13
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P15 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 2
  %11 = load i64, ptr %n1, align 8, !tbaa !15
  %call16 = call i32 @mbedtls_mpi_write_binary(ptr noundef %P15, ptr noundef %add.ptr, i64 noundef %11)
  store i32 %call16, ptr %ret, align 4, !tbaa !8
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body14
  br label %cleanup

if.end19:                                         ; preds = %do.body14
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  %12 = load i64, ptr %n1, align 8, !tbaa !15
  %shr = lshr i64 %12, 8
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %13 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !4
  store i8 %conv, ptr %13, align 1, !tbaa !14
  %14 = load i64, ptr %n1, align 8, !tbaa !15
  %and22 = and i64 %14, 255
  %conv23 = trunc i64 %and22 to i8
  %15 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr24 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %incdec.ptr24, ptr %p, align 8, !tbaa !4
  store i8 %conv23, ptr %15, align 1, !tbaa !14
  %16 = load i64, ptr %n1, align 8, !tbaa !15
  %17 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr25 = getelementptr inbounds i8, ptr %17, i64 %16
  store ptr %add.ptr25, ptr %p, align 8, !tbaa !4
  br label %do.cond26

do.cond26:                                        ; preds = %do.end21
  br label %do.end27

do.end27:                                         ; preds = %do.cond26
  br label %do.body28

do.body28:                                        ; preds = %do.end27
  br label %do.body29

do.body29:                                        ; preds = %do.body28
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %G30 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr31 = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load i64, ptr %n2, align 8, !tbaa !15
  %call32 = call i32 @mbedtls_mpi_write_binary(ptr noundef %G30, ptr noundef %add.ptr31, i64 noundef %20)
  store i32 %call32, ptr %ret, align 4, !tbaa !8
  %cmp33 = icmp ne i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.body29
  br label %cleanup

if.end36:                                         ; preds = %do.body29
  br label %do.cond37

do.cond37:                                        ; preds = %if.end36
  br label %do.end38

do.end38:                                         ; preds = %do.cond37
  %21 = load i64, ptr %n2, align 8, !tbaa !15
  %shr39 = lshr i64 %21, 8
  %and40 = and i64 %shr39, 255
  %conv41 = trunc i64 %and40 to i8
  %22 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr42 = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr42, ptr %p, align 8, !tbaa !4
  store i8 %conv41, ptr %22, align 1, !tbaa !14
  %23 = load i64, ptr %n2, align 8, !tbaa !15
  %and43 = and i64 %23, 255
  %conv44 = trunc i64 %and43 to i8
  %24 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr45 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %incdec.ptr45, ptr %p, align 8, !tbaa !4
  store i8 %conv44, ptr %24, align 1, !tbaa !14
  %25 = load i64, ptr %n2, align 8, !tbaa !15
  %26 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr46 = getelementptr inbounds i8, ptr %26, i64 %25
  store ptr %add.ptr46, ptr %p, align 8, !tbaa !4
  br label %do.cond47

do.cond47:                                        ; preds = %do.end38
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  br label %do.body49

do.body49:                                        ; preds = %do.end48
  br label %do.body50

do.body50:                                        ; preds = %do.body49
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GX51 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr52 = getelementptr inbounds i8, ptr %28, i64 2
  %29 = load i64, ptr %n3, align 8, !tbaa !15
  %call53 = call i32 @mbedtls_mpi_write_binary(ptr noundef %GX51, ptr noundef %add.ptr52, i64 noundef %29)
  store i32 %call53, ptr %ret, align 4, !tbaa !8
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %do.body50
  br label %cleanup

if.end57:                                         ; preds = %do.body50
  br label %do.cond58

do.cond58:                                        ; preds = %if.end57
  br label %do.end59

do.end59:                                         ; preds = %do.cond58
  %30 = load i64, ptr %n3, align 8, !tbaa !15
  %shr60 = lshr i64 %30, 8
  %and61 = and i64 %shr60, 255
  %conv62 = trunc i64 %and61 to i8
  %31 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr63 = getelementptr inbounds i8, ptr %31, i32 1
  store ptr %incdec.ptr63, ptr %p, align 8, !tbaa !4
  store i8 %conv62, ptr %31, align 1, !tbaa !14
  %32 = load i64, ptr %n3, align 8, !tbaa !15
  %and64 = and i64 %32, 255
  %conv65 = trunc i64 %and64 to i8
  %33 = load ptr, ptr %p, align 8, !tbaa !4
  %incdec.ptr66 = getelementptr inbounds i8, ptr %33, i32 1
  store ptr %incdec.ptr66, ptr %p, align 8, !tbaa !4
  store i8 %conv65, ptr %33, align 1, !tbaa !14
  %34 = load i64, ptr %n3, align 8, !tbaa !15
  %35 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr67 = getelementptr inbounds i8, ptr %35, i64 %34
  store ptr %add.ptr67, ptr %p, align 8, !tbaa !4
  br label %do.cond68

do.cond68:                                        ; preds = %do.end59
  br label %do.end69

do.end69:                                         ; preds = %do.cond68
  %36 = load ptr, ptr %p, align 8, !tbaa !4
  %37 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %36 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %38 = load ptr, ptr %olen.addr, align 8, !tbaa !4
  store i64 %sub.ptr.sub, ptr %38, align 8, !tbaa !15
  %39 = load i64, ptr %n1, align 8, !tbaa !15
  %40 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %40, i32 0, i32 0
  store i64 %39, ptr %len, align 8, !tbaa !10
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %if.then56, %if.then35, %if.then18, %if.then
  %41 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp70 = icmp ne i32 %41, 0
  br i1 %cmp70, label %land.lhs.true, label %if.end76

land.lhs.true:                                    ; preds = %cleanup
  %42 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp72 = icmp sgt i32 %42, -128
  br i1 %cmp72, label %if.then74, label %if.end76

if.then74:                                        ; preds = %land.lhs.true
  %43 = load i32, ptr %ret, align 4, !tbaa !8
  %call75 = call i32 @mbedtls_error_add(i32 noundef -12672, i32 noundef %43, ptr noundef @.str, i32 noundef 246)
  store i32 %call75, ptr %ret, align 4, !tbaa !8
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %land.lhs.true, %cleanup
  %44 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %n3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %n2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %n1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal i32 @dhm_make_common(ptr noundef %ctx, i32 noundef %x_size, ptr noundef %f_rng, ptr noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %f_rng.addr = alloca ptr, align 8
  %p_rng.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !8
  store ptr %f_rng, ptr %f_rng.addr, align 8, !tbaa !4
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 0, ptr %ret, align 4, !tbaa !8
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %0, i32 0, i32 1
  %call = call i32 @mbedtls_mpi_cmp_int(ptr noundef %P, i64 noundef 0)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -12416, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %x_size.addr, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -12416, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %x_size.addr, align 4, !tbaa !8
  %conv = zext i32 %2 to i64
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P4 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %3, i32 0, i32 1
  %call5 = call i64 @mbedtls_mpi_size(ptr noundef %P4)
  %cmp6 = icmp ult i64 %conv, %call5
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end3
  br label %do.body

do.body:                                          ; preds = %if.then8
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %X = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %x_size.addr, align 4, !tbaa !8
  %conv9 = sext i32 %5 to i64
  %6 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  %call10 = call i32 @mbedtls_mpi_fill_random(ptr noundef %X, i64 noundef %conv9, ptr noundef %6, ptr noundef %7)
  store i32 %call10, ptr %ret, align 4, !tbaa !8
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.body
  br label %cleanup

if.end14:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end14
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end26

if.else:                                          ; preds = %if.end3
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %X15 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P16 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  %call17 = call i32 @dhm_random_below(ptr noundef %X15, ptr noundef %P16, ptr noundef %10, ptr noundef %11)
  store i32 %call17, ptr %ret, align 4, !tbaa !8
  %12 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp18 = icmp eq i32 %12, -14
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.else
  store i32 -12672, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44

if.end21:                                         ; preds = %if.else
  %13 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp22 = icmp ne i32 %13, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  %14 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %14, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44

if.end25:                                         ; preds = %if.end21
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %do.end
  br label %do.body27

do.body27:                                        ; preds = %if.end26
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GX = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %X28 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P29 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %RP = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %19, i32 0, i32 7
  %call30 = call i32 @mbedtls_mpi_exp_mod(ptr noundef %GX, ptr noundef %G, ptr noundef %X28, ptr noundef %P29, ptr noundef %RP)
  store i32 %call30, ptr %ret, align 4, !tbaa !8
  %cmp31 = icmp ne i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %do.body27
  br label %cleanup

if.end34:                                         ; preds = %do.body27
  br label %do.cond35

do.cond35:                                        ; preds = %if.end34
  br label %do.end36

do.end36:                                         ; preds = %do.cond35
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GX37 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P38 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %21, i32 0, i32 1
  %call39 = call i32 @dhm_check_range(ptr noundef %GX37, ptr noundef %P38)
  store i32 %call39, ptr %ret, align 4, !tbaa !8
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.end36
  %22 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %22, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44

if.end43:                                         ; preds = %do.end36
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then33, %if.then13
  %23 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %23, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %cleanup, %if.then42, %if.then24, %if.then20, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

declare i32 @mbedtls_mpi_write_binary(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @mbedtls_error_add(i32 noundef %high, i32 noundef %low, ptr noundef %file, i32 noundef %line) #4 {
entry:
  %high.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  store i32 %high, ptr %high.addr, align 4, !tbaa !8
  store i32 %low, ptr %low.addr, align 4, !tbaa !8
  store ptr %file, ptr %file.addr, align 8, !tbaa !4
  store i32 %line, ptr %line.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %file.addr, align 8, !tbaa !4
  %1 = load i32, ptr %line.addr, align 4, !tbaa !8
  %2 = load i32, ptr %high.addr, align 4, !tbaa !8
  %3 = load i32, ptr %low.addr, align 4, !tbaa !8
  %add = add nsw i32 %2, %3
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_dhm_set_group(ptr noundef %ctx, ptr noundef %P, ptr noundef %G) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %P.addr = alloca ptr, align 8
  %G.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %P, ptr %P.addr, align 8, !tbaa !4
  store ptr %G, ptr %G.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -110, ptr %ret, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P7 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %P.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_copy(ptr noundef %P7, ptr noundef %1)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end6
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %G8 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %G.addr, align 8, !tbaa !4
  %call9 = call i32 @mbedtls_mpi_copy(ptr noundef %G8, ptr noundef %3)
  store i32 %call9, ptr %ret, align 4, !tbaa !8
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end6
  %4 = load i32, ptr %ret, align 4, !tbaa !8
  %call11 = call i32 @mbedtls_error_add(i32 noundef -13696, i32 noundef %4, ptr noundef @.str, i32 noundef 265)
  store i32 %call11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P12 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %5, i32 0, i32 1
  %call13 = call i64 @mbedtls_mpi_size(ptr noundef %P12)
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %6, i32 0, i32 0
  store i64 %call13, ptr %len, align 8, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @mbedtls_mpi_copy(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_dhm_read_public(ptr noundef %ctx, ptr noundef %input, i64 noundef %ilen) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %ilen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %input, ptr %input.addr, align 8, !tbaa !4
  store i64 %ilen, ptr %ilen.addr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -110, ptr %ret, align 4, !tbaa !8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load i64, ptr %ilen.addr, align 8, !tbaa !15
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end3
  %1 = load i64, ptr %ilen.addr, align 8, !tbaa !15
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !10
  %cmp4 = icmp ugt i64 %1, %3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end3
  store i32 -12416, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GY = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %input.addr, align 8, !tbaa !4
  %6 = load i64, ptr %ilen.addr, align 8, !tbaa !15
  %call = call i32 @mbedtls_mpi_read_binary(ptr noundef %GY, ptr noundef %5, i64 noundef %6)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp5 = icmp ne i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !tbaa !8
  %call7 = call i32 @mbedtls_error_add(i32 noundef -12800, i32 noundef %7, ptr noundef @.str, i32 noundef 286)
  store i32 %call7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare i32 @mbedtls_mpi_read_binary(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_dhm_make_public(ptr noundef %ctx, i32 noundef %x_size, ptr noundef %output, i64 noundef %olen, ptr noundef %f_rng, ptr noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %x_size.addr = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %olen.addr = alloca i64, align 8
  %f_rng.addr = alloca ptr, align 8
  %p_rng.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store i32 %x_size, ptr %x_size.addr, align 4, !tbaa !8
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i64 %olen, ptr %olen.addr, align 8, !tbaa !15
  store ptr %f_rng, ptr %f_rng.addr, align 8, !tbaa !4
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  %0 = load i64, ptr %olen.addr, align 8, !tbaa !15
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end6
  %1 = load i64, ptr %olen.addr, align 8, !tbaa !15
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %len, align 8, !tbaa !10
  %cmp7 = icmp ugt i64 %1, %3
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.end6
  store i32 -12416, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %5 = load i32, ptr %x_size.addr, align 4, !tbaa !8
  %6 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  %call = call i32 @dhm_make_common(ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %8 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp8 = icmp eq i32 %8, -12672
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 -12928, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26

if.end10:                                         ; preds = %if.end
  %9 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp11 = icmp ne i32 %9, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  br label %do.body14

do.body14:                                        ; preds = %if.end13
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GX = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %12 = load i64, ptr %olen.addr, align 8, !tbaa !15
  %call15 = call i32 @mbedtls_mpi_write_binary(ptr noundef %GX, ptr noundef %11, i64 noundef %12)
  store i32 %call15, ptr %ret, align 4, !tbaa !8
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %do.body14
  br label %cleanup

if.end18:                                         ; preds = %do.body14
  br label %do.cond19

do.cond19:                                        ; preds = %if.end18
  br label %do.end20

do.end20:                                         ; preds = %do.cond19
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.then17, %if.then12
  %13 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp21 = icmp ne i32 %13, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %cleanup
  %14 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp22 = icmp sgt i32 %14, -128
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %land.lhs.true
  %15 = load i32, ptr %ret, align 4, !tbaa !8
  %call24 = call i32 @mbedtls_error_add(i32 noundef -12928, i32 noundef %15, ptr noundef @.str, i32 noundef 317)
  store i32 %call24, ptr %ret, align 4, !tbaa !8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true, %cleanup
  %16 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup26

cleanup26:                                        ; preds = %if.end25, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_dhm_calc_secret(ptr noundef %ctx, ptr noundef %output, i64 noundef %output_size, ptr noundef %olen, ptr noundef %f_rng, ptr noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %output_size.addr = alloca i64, align 8
  %olen.addr = alloca ptr, align 8
  %f_rng.addr = alloca ptr, align 8
  %p_rng.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %GYb = alloca %struct.mbedtls_mpi, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %output, ptr %output.addr, align 8, !tbaa !4
  store i64 %output_size, ptr %output_size.addr, align 8, !tbaa !15
  store ptr %olen, ptr %olen.addr, align 8, !tbaa !4
  store ptr %f_rng, ptr %f_rng.addr, align 8, !tbaa !4
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -110, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 24, ptr %GYb) #8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  br label %do.cond5

do.cond5:                                         ; preds = %do.body4
  br label %do.end6

do.end6:                                          ; preds = %do.cond5
  %0 = load i64, ptr %output_size.addr, align 8, !tbaa !15
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %len, align 8, !tbaa !10
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end6
  store i32 -12416, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88

if.end:                                           ; preds = %do.end6
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GY = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %4, i32 0, i32 1
  %call = call i32 @dhm_check_range(ptr noundef %GY, ptr noundef %P)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp7 = icmp ne i32 %call, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %5 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88

if.end9:                                          ; preds = %if.end
  call void @mbedtls_mpi_init(ptr noundef %GYb)
  %6 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %cmp10 = icmp ne ptr %6, null
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  %call13 = call i32 @dhm_update_blinding(ptr noundef %7, ptr noundef %8, ptr noundef %9)
  store i32 %call13, ptr %ret, align 4, !tbaa !8
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %do.body12
  br label %cleanup

if.end16:                                         ; preds = %do.body12
  br label %do.cond17

do.cond17:                                        ; preds = %if.end16
  br label %do.end18

do.end18:                                         ; preds = %do.cond17
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GY20 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vi = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %11, i32 0, i32 8
  %call21 = call i32 @mbedtls_mpi_mul_mpi(ptr noundef %GYb, ptr noundef %GY20, ptr noundef %Vi)
  store i32 %call21, ptr %ret, align 4, !tbaa !8
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %do.body19
  br label %cleanup

if.end24:                                         ; preds = %do.body19
  br label %do.cond25

do.cond25:                                        ; preds = %if.end24
  br label %do.end26

do.end26:                                         ; preds = %do.cond25
  br label %do.body27

do.body27:                                        ; preds = %do.end26
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P28 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %12, i32 0, i32 1
  %call29 = call i32 @mbedtls_mpi_mod_mpi(ptr noundef %GYb, ptr noundef %GYb, ptr noundef %P28)
  store i32 %call29, ptr %ret, align 4, !tbaa !8
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body27
  br label %cleanup

if.end32:                                         ; preds = %do.body27
  br label %do.cond33

do.cond33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  br label %if.end43

if.else:                                          ; preds = %if.end9
  br label %do.body35

do.body35:                                        ; preds = %if.else
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GY36 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %13, i32 0, i32 5
  %call37 = call i32 @mbedtls_mpi_copy(ptr noundef %GYb, ptr noundef %GY36)
  store i32 %call37, ptr %ret, align 4, !tbaa !8
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %do.body35
  br label %cleanup

if.end40:                                         ; preds = %do.body35
  br label %do.cond41

do.cond41:                                        ; preds = %if.end40
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %do.end34
  br label %do.body44

do.body44:                                        ; preds = %if.end43
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %K = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %X = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P45 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %RP = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %17, i32 0, i32 7
  %call46 = call i32 @mbedtls_mpi_exp_mod(ptr noundef %K, ptr noundef %GYb, ptr noundef %X, ptr noundef %P45, ptr noundef %RP)
  store i32 %call46, ptr %ret, align 4, !tbaa !8
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %do.body44
  br label %cleanup

if.end49:                                         ; preds = %do.body44
  br label %do.cond50

do.cond50:                                        ; preds = %if.end49
  br label %do.end51

do.end51:                                         ; preds = %do.cond50
  %18 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %cmp52 = icmp ne ptr %18, null
  br i1 %cmp52, label %if.then53, label %if.end73

if.then53:                                        ; preds = %do.end51
  br label %do.body54

do.body54:                                        ; preds = %if.then53
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %K55 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %K56 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %21, i32 0, i32 9
  %call57 = call i32 @mbedtls_mpi_mul_mpi(ptr noundef %K55, ptr noundef %K56, ptr noundef %Vf)
  store i32 %call57, ptr %ret, align 4, !tbaa !8
  %cmp58 = icmp ne i32 %call57, 0
  br i1 %cmp58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %do.body54
  br label %cleanup

if.end60:                                         ; preds = %do.body54
  br label %do.cond61

do.cond61:                                        ; preds = %if.end60
  br label %do.end62

do.end62:                                         ; preds = %do.cond61
  br label %do.body63

do.body63:                                        ; preds = %do.end62
  %22 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %K64 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %22, i32 0, i32 6
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %K65 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P66 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %24, i32 0, i32 1
  %call67 = call i32 @mbedtls_mpi_mod_mpi(ptr noundef %K64, ptr noundef %K65, ptr noundef %P66)
  store i32 %call67, ptr %ret, align 4, !tbaa !8
  %cmp68 = icmp ne i32 %call67, 0
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %do.body63
  br label %cleanup

if.end70:                                         ; preds = %do.body63
  br label %do.cond71

do.cond71:                                        ; preds = %if.end70
  br label %do.end72

do.end72:                                         ; preds = %do.cond71
  br label %if.end73

if.end73:                                         ; preds = %do.end72, %do.end51
  %25 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %K74 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %25, i32 0, i32 6
  %call75 = call i64 @mbedtls_mpi_size(ptr noundef %K74)
  %26 = load ptr, ptr %olen.addr, align 8, !tbaa !4
  store i64 %call75, ptr %26, align 8, !tbaa !15
  br label %do.body76

do.body76:                                        ; preds = %if.end73
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %K77 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %27, i32 0, i32 6
  %28 = load ptr, ptr %output.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %olen.addr, align 8, !tbaa !4
  %30 = load i64, ptr %29, align 8, !tbaa !15
  %call78 = call i32 @mbedtls_mpi_write_binary(ptr noundef %K77, ptr noundef %28, i64 noundef %30)
  store i32 %call78, ptr %ret, align 4, !tbaa !8
  %cmp79 = icmp ne i32 %call78, 0
  br i1 %cmp79, label %if.then80, label %if.end81

if.then80:                                        ; preds = %do.body76
  br label %cleanup

if.end81:                                         ; preds = %do.body76
  br label %do.cond82

do.cond82:                                        ; preds = %if.end81
  br label %do.end83

do.end83:                                         ; preds = %do.cond82
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %if.then80, %if.then69, %if.then59, %if.then48, %if.then39, %if.then31, %if.then23, %if.then15
  call void @mbedtls_mpi_free(ptr noundef %GYb)
  %31 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp84 = icmp ne i32 %31, 0
  br i1 %cmp84, label %if.then85, label %if.end87

if.then85:                                        ; preds = %cleanup
  %32 = load i32, ptr %ret, align 4, !tbaa !8
  %call86 = call i32 @mbedtls_error_add(i32 noundef -13056, i32 noundef %32, ptr noundef @.str, i32 noundef 441)
  store i32 %call86, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88

if.end87:                                         ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup88

cleanup88:                                        ; preds = %if.end87, %if.then85, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %GYb) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

declare void @mbedtls_mpi_init(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @dhm_update_blinding(ptr noundef %ctx, ptr noundef %f_rng, ptr noundef %p_rng) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %f_rng.addr = alloca ptr, align 8
  %p_rng.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %R = alloca %struct.mbedtls_mpi, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  store ptr %f_rng, ptr %f_rng.addr, align 8, !tbaa !4
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr %R) #8
  call void @mbedtls_mpi_init(ptr noundef %R)
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %X = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pX = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %1, i32 0, i32 10
  %call = call i32 @mbedtls_mpi_cmp_mpi(ptr noundef %X, ptr noundef %pX)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pX1 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %X2 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %3, i32 0, i32 3
  %call3 = call i32 @mbedtls_mpi_copy(ptr noundef %pX1, ptr noundef %X2)
  store i32 %call3, ptr %ret, align 4, !tbaa !8
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body6

do.body6:                                         ; preds = %do.end
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vi = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %4, i32 0, i32 8
  %call7 = call i32 @mbedtls_mpi_lset(ptr noundef %Vi, i64 noundef 1)
  store i32 %call7, ptr %ret, align 4, !tbaa !8
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.body6
  br label %cleanup

if.end10:                                         ; preds = %do.body6
  br label %do.cond11

do.cond11:                                        ; preds = %if.end10
  br label %do.end12

do.end12:                                         ; preds = %do.cond11
  br label %do.body13

do.body13:                                        ; preds = %do.end12
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %5, i32 0, i32 9
  %call14 = call i32 @mbedtls_mpi_lset(ptr noundef %Vf, i64 noundef 1)
  store i32 %call14, ptr %ret, align 4, !tbaa !8
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body13
  br label %cleanup

if.end17:                                         ; preds = %do.body13
  br label %do.cond18

do.cond18:                                        ; preds = %if.end17
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup141

if.end20:                                         ; preds = %entry
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vi21 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %6, i32 0, i32 8
  %call22 = call i32 @mbedtls_mpi_cmp_int(ptr noundef %Vi21, i64 noundef 1)
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end64

if.then24:                                        ; preds = %if.end20
  br label %do.body25

do.body25:                                        ; preds = %if.then24
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vi26 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vi27 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vi28 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %9, i32 0, i32 8
  %call29 = call i32 @mbedtls_mpi_mul_mpi(ptr noundef %Vi26, ptr noundef %Vi27, ptr noundef %Vi28)
  store i32 %call29, ptr %ret, align 4, !tbaa !8
  %cmp30 = icmp ne i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body25
  br label %cleanup

if.end32:                                         ; preds = %do.body25
  br label %do.cond33

do.cond33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  br label %do.body35

do.body35:                                        ; preds = %do.end34
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vi36 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vi37 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %12, i32 0, i32 1
  %call38 = call i32 @mbedtls_mpi_mod_mpi(ptr noundef %Vi36, ptr noundef %Vi37, ptr noundef %P)
  store i32 %call38, ptr %ret, align 4, !tbaa !8
  %cmp39 = icmp ne i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %do.body35
  br label %cleanup

if.end41:                                         ; preds = %do.body35
  br label %do.cond42

do.cond42:                                        ; preds = %if.end41
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  br label %do.body44

do.body44:                                        ; preds = %do.end43
  %13 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf45 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %13, i32 0, i32 9
  %14 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf46 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf47 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %15, i32 0, i32 9
  %call48 = call i32 @mbedtls_mpi_mul_mpi(ptr noundef %Vf45, ptr noundef %Vf46, ptr noundef %Vf47)
  store i32 %call48, ptr %ret, align 4, !tbaa !8
  %cmp49 = icmp ne i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %do.body44
  br label %cleanup

if.end51:                                         ; preds = %do.body44
  br label %do.cond52

do.cond52:                                        ; preds = %if.end51
  br label %do.end53

do.end53:                                         ; preds = %do.cond52
  br label %do.body54

do.body54:                                        ; preds = %do.end53
  %16 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf55 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf56 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %17, i32 0, i32 9
  %18 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P57 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %18, i32 0, i32 1
  %call58 = call i32 @mbedtls_mpi_mod_mpi(ptr noundef %Vf55, ptr noundef %Vf56, ptr noundef %P57)
  store i32 %call58, ptr %ret, align 4, !tbaa !8
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body54
  br label %cleanup

if.end61:                                         ; preds = %do.body54
  br label %do.cond62

do.cond62:                                        ; preds = %if.end61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup141

if.end64:                                         ; preds = %if.end20
  br label %do.body65

do.body65:                                        ; preds = %if.end64
  %19 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vi66 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %19, i32 0, i32 8
  %20 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P67 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  %call68 = call i32 @dhm_random_below(ptr noundef %Vi66, ptr noundef %P67, ptr noundef %21, ptr noundef %22)
  store i32 %call68, ptr %ret, align 4, !tbaa !8
  %cmp69 = icmp ne i32 %call68, 0
  br i1 %cmp69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %do.body65
  br label %cleanup

if.end71:                                         ; preds = %do.body65
  br label %do.cond72

do.cond72:                                        ; preds = %if.end71
  br label %do.end73

do.end73:                                         ; preds = %do.cond72
  br label %do.body74

do.body74:                                        ; preds = %do.end73
  %23 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P75 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  %call76 = call i32 @dhm_random_below(ptr noundef %R, ptr noundef %P75, ptr noundef %24, ptr noundef %25)
  store i32 %call76, ptr %ret, align 4, !tbaa !8
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %do.body74
  br label %cleanup

if.end79:                                         ; preds = %do.body74
  br label %do.cond80

do.cond80:                                        ; preds = %if.end79
  br label %do.end81

do.end81:                                         ; preds = %do.cond80
  br label %do.body82

do.body82:                                        ; preds = %do.end81
  %26 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf83 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %26, i32 0, i32 9
  %27 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vi84 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %27, i32 0, i32 8
  %call85 = call i32 @mbedtls_mpi_mul_mpi(ptr noundef %Vf83, ptr noundef %Vi84, ptr noundef %R)
  store i32 %call85, ptr %ret, align 4, !tbaa !8
  %cmp86 = icmp ne i32 %call85, 0
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %do.body82
  br label %cleanup

if.end88:                                         ; preds = %do.body82
  br label %do.cond89

do.cond89:                                        ; preds = %if.end88
  br label %do.end90

do.end90:                                         ; preds = %do.cond89
  br label %do.body91

do.body91:                                        ; preds = %do.end90
  %28 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf92 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %28, i32 0, i32 9
  %29 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf93 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %29, i32 0, i32 9
  %30 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P94 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %30, i32 0, i32 1
  %call95 = call i32 @mbedtls_mpi_mod_mpi(ptr noundef %Vf92, ptr noundef %Vf93, ptr noundef %P94)
  store i32 %call95, ptr %ret, align 4, !tbaa !8
  %cmp96 = icmp ne i32 %call95, 0
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %do.body91
  br label %cleanup

if.end98:                                         ; preds = %do.body91
  br label %do.cond99

do.cond99:                                        ; preds = %if.end98
  br label %do.end100

do.end100:                                        ; preds = %do.cond99
  br label %do.body101

do.body101:                                       ; preds = %do.end100
  %31 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf102 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %31, i32 0, i32 9
  %32 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf103 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %32, i32 0, i32 9
  %33 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P104 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %33, i32 0, i32 1
  %call105 = call i32 @mbedtls_mpi_inv_mod(ptr noundef %Vf102, ptr noundef %Vf103, ptr noundef %P104)
  store i32 %call105, ptr %ret, align 4, !tbaa !8
  %cmp106 = icmp ne i32 %call105, 0
  br i1 %cmp106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %do.body101
  br label %cleanup

if.end108:                                        ; preds = %do.body101
  br label %do.cond109

do.cond109:                                       ; preds = %if.end108
  br label %do.end110

do.end110:                                        ; preds = %do.cond109
  br label %do.body111

do.body111:                                       ; preds = %do.end110
  %34 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf112 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %34, i32 0, i32 9
  %35 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf113 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %35, i32 0, i32 9
  %call114 = call i32 @mbedtls_mpi_mul_mpi(ptr noundef %Vf112, ptr noundef %Vf113, ptr noundef %R)
  store i32 %call114, ptr %ret, align 4, !tbaa !8
  %cmp115 = icmp ne i32 %call114, 0
  br i1 %cmp115, label %if.then116, label %if.end117

if.then116:                                       ; preds = %do.body111
  br label %cleanup

if.end117:                                        ; preds = %do.body111
  br label %do.cond118

do.cond118:                                       ; preds = %if.end117
  br label %do.end119

do.end119:                                        ; preds = %do.cond118
  br label %do.body120

do.body120:                                       ; preds = %do.end119
  %36 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf121 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %36, i32 0, i32 9
  %37 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf122 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %37, i32 0, i32 9
  %38 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P123 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %38, i32 0, i32 1
  %call124 = call i32 @mbedtls_mpi_mod_mpi(ptr noundef %Vf121, ptr noundef %Vf122, ptr noundef %P123)
  store i32 %call124, ptr %ret, align 4, !tbaa !8
  %cmp125 = icmp ne i32 %call124, 0
  br i1 %cmp125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %do.body120
  br label %cleanup

if.end127:                                        ; preds = %do.body120
  br label %do.cond128

do.cond128:                                       ; preds = %if.end127
  br label %do.end129

do.end129:                                        ; preds = %do.cond128
  br label %do.body130

do.body130:                                       ; preds = %do.end129
  %39 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf131 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %39, i32 0, i32 9
  %40 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf132 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %40, i32 0, i32 9
  %41 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %X133 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %41, i32 0, i32 3
  %42 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P134 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %RP = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %43, i32 0, i32 7
  %call135 = call i32 @mbedtls_mpi_exp_mod(ptr noundef %Vf131, ptr noundef %Vf132, ptr noundef %X133, ptr noundef %P134, ptr noundef %RP)
  store i32 %call135, ptr %ret, align 4, !tbaa !8
  %cmp136 = icmp ne i32 %call135, 0
  br i1 %cmp136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %do.body130
  br label %cleanup

if.end138:                                        ; preds = %do.body130
  br label %do.cond139

do.cond139:                                       ; preds = %if.end138
  br label %do.end140

do.end140:                                        ; preds = %do.cond139
  br label %cleanup

cleanup:                                          ; preds = %do.end140, %if.then137, %if.then126, %if.then116, %if.then107, %if.then97, %if.then87, %if.then78, %if.then70, %if.then60, %if.then50, %if.then40, %if.then31, %if.then16, %if.then9, %if.then5
  call void @mbedtls_mpi_free(ptr noundef %R)
  %44 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %44, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup141

cleanup141:                                       ; preds = %cleanup, %do.end63, %do.end19
  call void @llvm.lifetime.end.p0(i64 24, ptr %R) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

declare i32 @mbedtls_mpi_mul_mpi(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mbedtls_mpi_mod_mpi(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mbedtls_mpi_exp_mod(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @mbedtls_mpi_free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define void @mbedtls_dhm_free(ptr noundef %ctx) #0 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %pX = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %1, i32 0, i32 10
  call void @mbedtls_mpi_free(ptr noundef %pX)
  %2 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vf = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %2, i32 0, i32 9
  call void @mbedtls_mpi_free(ptr noundef %Vf)
  %3 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %Vi = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %3, i32 0, i32 8
  call void @mbedtls_mpi_free(ptr noundef %Vi)
  %4 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %RP = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %4, i32 0, i32 7
  call void @mbedtls_mpi_free(ptr noundef %RP)
  %5 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %K = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %5, i32 0, i32 6
  call void @mbedtls_mpi_free(ptr noundef %K)
  %6 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GY = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %6, i32 0, i32 5
  call void @mbedtls_mpi_free(ptr noundef %GY)
  %7 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %GX = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %7, i32 0, i32 4
  call void @mbedtls_mpi_free(ptr noundef %GX)
  %8 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %X = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %8, i32 0, i32 3
  call void @mbedtls_mpi_free(ptr noundef %X)
  %9 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %9, i32 0, i32 2
  call void @mbedtls_mpi_free(ptr noundef %G)
  %10 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %10, i32 0, i32 1
  call void @mbedtls_mpi_free(ptr noundef %P)
  %11 = load ptr, ptr %ctx.addr, align 8, !tbaa !4
  call void @mbedtls_platform_zeroize(ptr noundef %11, i64 noundef 248)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_dhm_parse_dhm(ptr noundef %dhm, ptr noundef %dhmin, i64 noundef %dhminlen) #0 {
entry:
  %retval = alloca i32, align 4
  %dhm.addr = alloca ptr, align 8
  %dhmin.addr = alloca ptr, align 8
  %dhminlen.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %len = alloca i64, align 8
  %p = alloca ptr, align 8
  %end = alloca ptr, align 8
  %pem = alloca %struct.mbedtls_pem_context, align 8
  %rec = alloca %struct.mbedtls_mpi, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dhm, ptr %dhm.addr, align 8, !tbaa !4
  store ptr %dhmin, ptr %dhmin.addr, align 8, !tbaa !4
  store i64 %dhminlen, ptr %dhminlen.addr, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -110, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr %pem) #8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  call void @mbedtls_pem_init(ptr noundef %pem)
  %0 = load i64, ptr %dhminlen.addr, align 8, !tbaa !15
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end3
  %1 = load ptr, ptr %dhmin.addr, align 8, !tbaa !4
  %2 = load i64, ptr %dhminlen.addr, align 8, !tbaa !15
  %sub = sub i64 %2, 1
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %sub
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv = zext i8 %3 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %do.end3
  store i32 -4224, ptr %ret, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %dhmin.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_pem_read_buffer(ptr noundef %pem, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %4, ptr noundef null, i64 noundef 0, ptr noundef %dhminlen.addr)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.end
  %buflen = getelementptr inbounds %struct.mbedtls_pem_context, ptr %pem, i32 0, i32 1
  %6 = load i64, ptr %buflen, align 8, !tbaa !16
  store i64 %6, ptr %dhminlen.addr, align 8, !tbaa !15
  br label %if.end14

if.else9:                                         ; preds = %if.end
  %7 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp10 = icmp ne i32 %7, -4224
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.else9
  br label %exit

if.end13:                                         ; preds = %if.else9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then8
  %8 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp15 = icmp eq i32 %8, 0
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end14
  %buf = getelementptr inbounds %struct.mbedtls_pem_context, ptr %pem, i32 0, i32 0
  %9 = load ptr, ptr %buf, align 8, !tbaa !18
  br label %cond.end

cond.false:                                       ; preds = %if.end14
  %10 = load ptr, ptr %dhmin.addr, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ %10, %cond.false ]
  store ptr %cond, ptr %p, align 8, !tbaa !4
  %11 = load ptr, ptr %p, align 8, !tbaa !4
  %12 = load i64, ptr %dhminlen.addr, align 8, !tbaa !15
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %12
  store ptr %add.ptr, ptr %end, align 8, !tbaa !4
  %13 = load ptr, ptr %end, align 8, !tbaa !4
  %call17 = call i32 @mbedtls_asn1_get_tag(ptr noundef %p, ptr noundef %13, ptr noundef %len, i32 noundef 48)
  store i32 %call17, ptr %ret, align 4, !tbaa !8
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %cond.end
  %14 = load i32, ptr %ret, align 4, !tbaa !8
  %call21 = call i32 @mbedtls_error_add(i32 noundef -13184, i32 noundef %14, ptr noundef @.str, i32 noundef 523)
  store i32 %call21, ptr %ret, align 4, !tbaa !8
  br label %exit

if.end22:                                         ; preds = %cond.end
  %15 = load ptr, ptr %p, align 8, !tbaa !4
  %16 = load i64, ptr %len, align 8, !tbaa !15
  %add.ptr23 = getelementptr inbounds i8, ptr %15, i64 %16
  store ptr %add.ptr23, ptr %end, align 8, !tbaa !4
  %17 = load ptr, ptr %end, align 8, !tbaa !4
  %18 = load ptr, ptr %dhm.addr, align 8, !tbaa !4
  %P = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %18, i32 0, i32 1
  %call24 = call i32 @mbedtls_asn1_get_mpi(ptr noundef %p, ptr noundef %17, ptr noundef %P)
  store i32 %call24, ptr %ret, align 4, !tbaa !8
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then31, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.end22
  %19 = load ptr, ptr %end, align 8, !tbaa !4
  %20 = load ptr, ptr %dhm.addr, align 8, !tbaa !4
  %G = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %20, i32 0, i32 2
  %call28 = call i32 @mbedtls_asn1_get_mpi(ptr noundef %p, ptr noundef %19, ptr noundef %G)
  store i32 %call28, ptr %ret, align 4, !tbaa !8
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %lor.lhs.false27, %if.end22
  %21 = load i32, ptr %ret, align 4, !tbaa !8
  %call32 = call i32 @mbedtls_error_add(i32 noundef -13184, i32 noundef %21, ptr noundef @.str, i32 noundef 532)
  store i32 %call32, ptr %ret, align 4, !tbaa !8
  br label %exit

if.end33:                                         ; preds = %lor.lhs.false27
  %22 = load ptr, ptr %p, align 8, !tbaa !4
  %23 = load ptr, ptr %end, align 8, !tbaa !4
  %cmp34 = icmp ne ptr %22, %23
  br i1 %cmp34, label %if.then36, label %if.end48

if.then36:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 24, ptr %rec) #8
  call void @mbedtls_mpi_init(ptr noundef %rec)
  %24 = load ptr, ptr %end, align 8, !tbaa !4
  %call37 = call i32 @mbedtls_asn1_get_mpi(ptr noundef %p, ptr noundef %24, ptr noundef %rec)
  store i32 %call37, ptr %ret, align 4, !tbaa !8
  call void @mbedtls_mpi_free(ptr noundef %rec)
  %25 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp38 = icmp ne i32 %25, 0
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then36
  %26 = load i32, ptr %ret, align 4, !tbaa !8
  %call41 = call i32 @mbedtls_error_add(i32 noundef -13184, i32 noundef %26, ptr noundef @.str, i32 noundef 546)
  store i32 %call41, ptr %ret, align 4, !tbaa !8
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.then36
  %27 = load ptr, ptr %p, align 8, !tbaa !4
  %28 = load ptr, ptr %end, align 8, !tbaa !4
  %cmp43 = icmp ne ptr %27, %28
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end42
  %call46 = call i32 @mbedtls_error_add(i32 noundef -13184, i32 noundef -102, ptr noundef @.str, i32 noundef 552)
  store i32 %call46, ptr %ret, align 4, !tbaa !8
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.then40, %if.end47
  call void @llvm.lifetime.end.p0(i64 24, ptr %rec) #8
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup56 [
    i32 0, label %cleanup.cont
    i32 6, label %exit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end48

if.end48:                                         ; preds = %cleanup.cont, %if.end33
  store i32 0, ptr %ret, align 4, !tbaa !8
  %29 = load ptr, ptr %dhm.addr, align 8, !tbaa !4
  %P49 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %29, i32 0, i32 1
  %call50 = call i64 @mbedtls_mpi_size(ptr noundef %P49)
  %30 = load ptr, ptr %dhm.addr, align 8, !tbaa !4
  %len51 = getelementptr inbounds %struct.mbedtls_dhm_context, ptr %30, i32 0, i32 0
  store i64 %call50, ptr %len51, align 8, !tbaa !10
  br label %exit

exit:                                             ; preds = %if.end48, %cleanup, %if.then31, %if.then20, %if.then12
  call void @mbedtls_pem_free(ptr noundef %pem)
  %31 = load i32, ptr %ret, align 4, !tbaa !8
  %cmp52 = icmp ne i32 %31, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %exit
  %32 = load ptr, ptr %dhm.addr, align 8, !tbaa !4
  call void @mbedtls_dhm_free(ptr noundef %32)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %exit
  %33 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %33, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56

cleanup56:                                        ; preds = %if.end55, %cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr %pem) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

declare void @mbedtls_pem_init(ptr noundef) #3

declare i32 @mbedtls_pem_read_buffer(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

declare i32 @mbedtls_asn1_get_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @mbedtls_asn1_get_mpi(ptr noundef, ptr noundef, ptr noundef) #3

declare void @mbedtls_pem_free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @mbedtls_dhm_parse_dhmfile(ptr noundef %dhm, ptr noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %dhm.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %n = alloca i64, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dhm, ptr %dhm.addr, align 8, !tbaa !4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -110, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #8
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  br label %do.cond2

do.cond2:                                         ; preds = %do.body1
  br label %do.end3

do.end3:                                          ; preds = %do.cond2
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call = call i32 @load_file(ptr noundef %0, ptr noundef %buf, ptr noundef %n)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end3
  %1 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.end3
  %2 = load ptr, ptr %dhm.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %buf, align 8, !tbaa !4
  %4 = load i64, ptr %n, align 8, !tbaa !15
  %call4 = call i32 @mbedtls_dhm_parse_dhm(ptr noundef %2, ptr noundef %3, i64 noundef %4)
  store i32 %call4, ptr %ret, align 4, !tbaa !8
  %5 = load ptr, ptr %buf, align 8, !tbaa !4
  %6 = load i64, ptr %n, align 8, !tbaa !15
  call void @mbedtls_platform_zeroize(ptr noundef %5, i64 noundef %6)
  %7 = load ptr, ptr %buf, align 8, !tbaa !4
  call void @free(ptr noundef %7) #8
  %8 = load i32, ptr %ret, align 4, !tbaa !8
  store i32 %8, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @load_file(ptr noundef %path, ptr noundef %buf, ptr noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8, !tbaa !4
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %f) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #8
  %0 = load ptr, ptr %path.addr, align 8, !tbaa !4
  %call = call noalias ptr @fopen64(ptr noundef %0, ptr noundef @.str.6)
  store ptr %call, ptr %f, align 8, !tbaa !4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -13440, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %f, align 8, !tbaa !4
  %call1 = call i32 @fseek(ptr noundef %1, i64 noundef 0, i32 noundef 2)
  %2 = load ptr, ptr %f, align 8, !tbaa !4
  %call2 = call i64 @ftell(ptr noundef %2)
  store i64 %call2, ptr %size, align 8, !tbaa !15
  %cmp3 = icmp eq i64 %call2, -1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %f, align 8, !tbaa !4
  %call5 = call i32 @fclose(ptr noundef %3)
  store i32 -13440, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = load ptr, ptr %f, align 8, !tbaa !4
  %call7 = call i32 @fseek(ptr noundef %4, i64 noundef 0, i32 noundef 0)
  %5 = load i64, ptr %size, align 8, !tbaa !15
  %6 = load ptr, ptr %n.addr, align 8, !tbaa !4
  store i64 %5, ptr %6, align 8, !tbaa !15
  %7 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %8 = load i64, ptr %7, align 8, !tbaa !15
  %add = add i64 %8, 1
  %cmp8 = icmp eq i64 %add, 0
  br i1 %cmp8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %9 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %10 = load i64, ptr %9, align 8, !tbaa !15
  %add9 = add i64 %10, 1
  %call10 = call noalias ptr @calloc(i64 noundef 1, i64 noundef %add9) #9
  %11 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  store ptr %call10, ptr %11, align 8, !tbaa !4
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %lor.lhs.false, %if.end6
  %12 = load ptr, ptr %f, align 8, !tbaa !4
  %call13 = call i32 @fclose(ptr noundef %12)
  store i32 -13312, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %13, align 8, !tbaa !4
  %15 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %16 = load i64, ptr %15, align 8, !tbaa !15
  %17 = load ptr, ptr %f, align 8, !tbaa !4
  %call15 = call i64 @fread(ptr noundef %14, i64 noundef 1, i64 noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %19 = load i64, ptr %18, align 8, !tbaa !15
  %cmp16 = icmp ne i64 %call15, %19
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  %20 = load ptr, ptr %f, align 8, !tbaa !4
  %call18 = call i32 @fclose(ptr noundef %20)
  %21 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %21, align 8, !tbaa !4
  %23 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %24 = load i64, ptr %23, align 8, !tbaa !15
  %add19 = add i64 %24, 1
  call void @mbedtls_platform_zeroize(ptr noundef %22, i64 noundef %add19)
  %25 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %25, align 8, !tbaa !4
  call void @free(ptr noundef %26) #8
  store i32 -13440, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %27 = load ptr, ptr %f, align 8, !tbaa !4
  %call21 = call i32 @fclose(ptr noundef %27)
  %28 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %28, align 8, !tbaa !4
  %30 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %31 = load i64, ptr %30, align 8, !tbaa !15
  %arrayidx = getelementptr inbounds i8, ptr %29, i64 %31
  store i8 0, ptr %arrayidx, align 1, !tbaa !14
  %32 = load ptr, ptr %buf.addr, align 8, !tbaa !4
  %33 = load ptr, ptr %32, align 8, !tbaa !4
  %call22 = call ptr @strstr(ptr noundef %33, ptr noundef @.str.7) #10
  %cmp23 = icmp ne ptr %call22, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  %34 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %35 = load i64, ptr %34, align 8, !tbaa !15
  %inc = add i64 %35, 1
  store i64 %inc, ptr %34, align 8, !tbaa !15
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then17, %if.then12, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %f) #8
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: nounwind uwtable
define i32 @mbedtls_dhm_self_test(i32 noundef %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %dhm = alloca %struct.mbedtls_dhm_context, align 8
  store i32 %verbose, ptr %verbose.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  store i32 -110, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 248, ptr %dhm) #8
  call void @mbedtls_dhm_init(ptr noundef %dhm)
  %0 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @mbedtls_dhm_parse_dhm(ptr noundef %dhm, ptr noundef @mbedtls_test_dhm_params, i64 noundef 251)
  store i32 %call1, ptr %ret, align 4, !tbaa !8
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %1 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %cmp4 = icmp ne i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3
  store i32 1, ptr %ret, align 4, !tbaa !8
  br label %exit

if.end8:                                          ; preds = %if.end
  %2 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %cmp9 = icmp ne i32 %2, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  br label %exit

exit:                                             ; preds = %if.end12, %if.end7
  call void @mbedtls_dhm_free(ptr noundef %dhm)
  %3 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 248, ptr %dhm) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  ret i32 %3
}

declare i32 @printf(ptr noundef, ...) #3

declare i32 @mbedtls_mpi_sub_int(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @mbedtls_mpi_cmp_int(ptr noundef, i64 noundef) #3

declare i32 @mbedtls_mpi_cmp_mpi(ptr noundef, ptr noundef) #3

declare i32 @mbedtls_mpi_fill_random(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @dhm_random_below(ptr noundef %R, ptr noundef %M, ptr noundef %f_rng, ptr noundef %p_rng) #0 {
entry:
  %R.addr = alloca ptr, align 8
  %M.addr = alloca ptr, align 8
  %f_rng.addr = alloca ptr, align 8
  %p_rng.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %R, ptr %R.addr, align 8, !tbaa !4
  store ptr %M, ptr %M.addr, align 8, !tbaa !4
  store ptr %f_rng, ptr %f_rng.addr, align 8, !tbaa !4
  store ptr %p_rng, ptr %p_rng.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %M.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %f_rng.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %p_rng.addr, align 8, !tbaa !4
  %call = call i32 @mbedtls_mpi_random(ptr noundef %0, i64 noundef 3, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  store i32 %call, ptr %ret, align 4, !tbaa !8
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %4 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %R.addr, align 8, !tbaa !4
  %call2 = call i32 @mbedtls_mpi_sub_int(ptr noundef %4, ptr noundef %5, i64 noundef 1)
  store i32 %call2, ptr %ret, align 4, !tbaa !8
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.body1
  br label %cleanup

if.end5:                                          ; preds = %do.body1
  br label %do.cond6

do.cond6:                                         ; preds = %if.end5
  br label %do.end7

do.end7:                                          ; preds = %do.cond6
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.then4, %if.then
  %6 = load i32, ptr %ret, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8
  ret i32 %6
}

declare i32 @mbedtls_mpi_random(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @mbedtls_mpi_lset(ptr noundef, i64 noundef) #3

declare i32 @mbedtls_mpi_inv_mod(ptr noundef, ptr noundef, ptr noundef) #3

declare noalias ptr @fopen64(ptr noundef, ptr noundef) #3

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #3

declare i64 @ftell(ptr noundef) #3

declare i32 @fclose(ptr noundef) #3

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #6

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"mbedtls_dhm_context", !12, i64 0, !13, i64 8, !13, i64 32, !13, i64 56, !13, i64 80, !13, i64 104, !13, i64 128, !13, i64 152, !13, i64 176, !13, i64 200, !13, i64 224}
!12 = !{!"long", !6, i64 0}
!13 = !{!"mbedtls_mpi", !9, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!6, !6, i64 0}
!15 = !{!12, !12, i64 0}
!16 = !{!17, !12, i64 8}
!17 = !{!"mbedtls_pem_context", !5, i64 0, !12, i64 8, !5, i64 16}
!18 = !{!17, !5, i64 0}

; ModuleID = 'samples/616.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/zuncsd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ZUNCSD\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@c_false = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @zuncsd_(ptr noundef %jobu1, ptr noundef %jobu2, ptr noundef %jobv1t, ptr noundef %jobv2t, ptr noundef %trans, ptr noundef %signs, ptr noundef %m, ptr noundef %p, ptr noundef %q, ptr noundef %x11, ptr noundef %ldx11, ptr noundef %x12, ptr noundef %ldx12, ptr noundef %x21, ptr noundef %ldx21, ptr noundef %x22, ptr noundef %ldx22, ptr noundef %theta, ptr noundef %u1, ptr noundef %ldu1, ptr noundef %u2, ptr noundef %ldu2, ptr noundef %v1t, ptr noundef %ldv1t, ptr noundef %v2t, ptr noundef %ldv2t, ptr noundef %work, ptr noundef %lwork, ptr noundef %rwork, ptr noundef %lrwork, ptr noundef %iwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %jobu1.addr = alloca ptr, align 8
  %jobu2.addr = alloca ptr, align 8
  %jobv1t.addr = alloca ptr, align 8
  %jobv2t.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %signs.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %x11.addr = alloca ptr, align 8
  %ldx11.addr = alloca ptr, align 8
  %x12.addr = alloca ptr, align 8
  %ldx12.addr = alloca ptr, align 8
  %x21.addr = alloca ptr, align 8
  %ldx21.addr = alloca ptr, align 8
  %x22.addr = alloca ptr, align 8
  %ldx22.addr = alloca ptr, align 8
  %theta.addr = alloca ptr, align 8
  %u1.addr = alloca ptr, align 8
  %ldu1.addr = alloca ptr, align 8
  %u2.addr = alloca ptr, align 8
  %ldu2.addr = alloca ptr, align 8
  %v1t.addr = alloca ptr, align 8
  %ldv1t.addr = alloca ptr, align 8
  %v2t.addr = alloca ptr, align 8
  %ldv2t.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %rwork.addr = alloca ptr, align 8
  %lrwork.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %u1_dim1 = alloca i32, align 4
  %u1_offset = alloca i32, align 4
  %u2_dim1 = alloca i32, align 4
  %u2_offset = alloca i32, align 4
  %v1t_dim1 = alloca i32, align 4
  %v1t_offset = alloca i32, align 4
  %v2t_dim1 = alloca i32, align 4
  %v2t_offset = alloca i32, align 4
  %x11_dim1 = alloca i32, align 4
  %x11_offset = alloca i32, align 4
  %x12_dim1 = alloca i32, align 4
  %x12_offset = alloca i32, align 4
  %x21_dim1 = alloca i32, align 4
  %x21_offset = alloca i32, align 4
  %x22_dim1 = alloca i32, align 4
  %x22_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %i__6 = alloca i32, align 4
  %colmajor = alloca i32, align 4
  %lworkmin = alloca i32, align 4
  %lworkopt = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %childinfo = alloca i32, align 4
  %p1 = alloca i32, align 4
  %q1 = alloca i32, align 4
  %lrworkmin = alloca i32, align 4
  %lrworkopt = alloca i32, align 4
  %lbbcsdwork = alloca i32, align 4
  %lorbdbwork = alloca i32, align 4
  %lorglqwork = alloca i32, align 4
  %lorgqrwork = alloca i32, align 4
  %ib11d = alloca i32, align 4
  %ib11e = alloca i32, align 4
  %ib12d = alloca i32, align 4
  %ib12e = alloca i32, align 4
  %ib21d = alloca i32, align 4
  %ib21e = alloca i32, align 4
  %ib22d = alloca i32, align 4
  %ib22e = alloca i32, align 4
  %iphi = alloca i32, align 4
  %defaultsigns = alloca i32, align 4
  %lbbcsdworkmin = alloca i32, align 4
  %itaup1 = alloca i32, align 4
  %itaup2 = alloca i32, align 4
  %itauq1 = alloca i32, align 4
  %itauq2 = alloca i32, align 4
  %lorbdbworkmin = alloca i32, align 4
  %lbbcsdworkopt = alloca i32, align 4
  %wantu1 = alloca i32, align 4
  %wantu2 = alloca i32, align 4
  %ibbcsd = alloca i32, align 4
  %lorbdbworkopt = alloca i32, align 4
  %iorbdb = alloca i32, align 4
  %lorglqworkmin = alloca i32, align 4
  %lorgqrworkmin = alloca i32, align 4
  %lorglqworkopt = alloca i32, align 4
  %lorgqrworkopt = alloca i32, align 4
  %iorglq = alloca i32, align 4
  %iorgqr = alloca i32, align 4
  %signst = alloca [1 x i8], align 1
  %transt = alloca [1 x i8], align 1
  %lquery = alloca i32, align 4
  %wantv1t = alloca i32, align 4
  %wantv2t = alloca i32, align 4
  %lrquery = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x66 = alloca i32, align 4
  %_y67 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %_x81 = alloca i32, align 4
  %_y82 = alloca i32, align 4
  %tmp83 = alloca i32, align 4
  %_x96 = alloca i32, align 4
  %_y97 = alloca i32, align 4
  %tmp98 = alloca i32, align 4
  %_x112 = alloca i32, align 4
  %_y113 = alloca i32, align 4
  %tmp114 = alloca i32, align 4
  %_x127 = alloca i32, align 4
  %_y128 = alloca i32, align 4
  %tmp129 = alloca i32, align 4
  %_x143 = alloca i32, align 4
  %_y144 = alloca i32, align 4
  %tmp145 = alloca i32, align 4
  %_x159 = alloca i32, align 4
  %_y160 = alloca i32, align 4
  %tmp161 = alloca i32, align 4
  %_x216 = alloca i32, align 4
  %_y217 = alloca i32, align 4
  %tmp218 = alloca i32, align 4
  %_x225 = alloca i32, align 4
  %_y226 = alloca i32, align 4
  %tmp227 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x312 = alloca i32, align 4
  %_y313 = alloca i32, align 4
  %tmp314 = alloca i32, align 4
  %_x322 = alloca i32, align 4
  %_y323 = alloca i32, align 4
  %tmp324 = alloca i32, align 4
  %_x333 = alloca i32, align 4
  %_y334 = alloca i32, align 4
  %tmp335 = alloca i32, align 4
  %_x343 = alloca i32, align 4
  %_y344 = alloca i32, align 4
  %tmp345 = alloca i32, align 4
  %_x354 = alloca i32, align 4
  %_y355 = alloca i32, align 4
  %tmp356 = alloca i32, align 4
  %_x364 = alloca i32, align 4
  %_y365 = alloca i32, align 4
  %tmp366 = alloca i32, align 4
  %_x375 = alloca i32, align 4
  %_y376 = alloca i32, align 4
  %tmp377 = alloca i32, align 4
  %_x385 = alloca i32, align 4
  %_y386 = alloca i32, align 4
  %tmp387 = alloca i32, align 4
  %_x396 = alloca i32, align 4
  %_y397 = alloca i32, align 4
  %tmp398 = alloca i32, align 4
  %_x434 = alloca i32, align 4
  %_y435 = alloca i32, align 4
  %tmp436 = alloca i32, align 4
  %_x445 = alloca i32, align 4
  %_y446 = alloca i32, align 4
  %tmp447 = alloca i32, align 4
  %_x455 = alloca i32, align 4
  %_y456 = alloca i32, align 4
  %tmp457 = alloca i32, align 4
  %_x466 = alloca i32, align 4
  %_y467 = alloca i32, align 4
  %tmp468 = alloca i32, align 4
  %_x480 = alloca i32, align 4
  %_y481 = alloca i32, align 4
  %tmp482 = alloca i32, align 4
  %_x498 = alloca i32, align 4
  %_y499 = alloca i32, align 4
  %tmp500 = alloca i32, align 4
  %_x508 = alloca i32, align 4
  %_y509 = alloca i32, align 4
  %tmp510 = alloca i32, align 4
  %_x522 = alloca i32, align 4
  %_y523 = alloca i32, align 4
  %tmp524 = alloca i32, align 4
  %_x541 = alloca i32, align 4
  %_y542 = alloca i32, align 4
  %tmp543 = alloca i32, align 4
  %_x551 = alloca i32, align 4
  %_y552 = alloca i32, align 4
  %tmp553 = alloca i32, align 4
  %_x586 = alloca i32, align 4
  %_y587 = alloca i32, align 4
  %tmp588 = alloca i32, align 4
  %_x596 = alloca i32, align 4
  %_y597 = alloca i32, align 4
  %tmp598 = alloca i32, align 4
  %_x608 = alloca i32, align 4
  %_y609 = alloca i32, align 4
  %tmp610 = alloca i32, align 4
  %_x618 = alloca i32, align 4
  %_y619 = alloca i32, align 4
  %tmp620 = alloca i32, align 4
  %_x628 = alloca i32, align 4
  %_y629 = alloca i32, align 4
  %tmp630 = alloca i32, align 4
  %_x949 = alloca i32, align 4
  %_y950 = alloca i32, align 4
  %tmp951 = alloca i32, align 4
  %_x959 = alloca i32, align 4
  %_y960 = alloca i32, align 4
  %tmp961 = alloca i32, align 4
  store ptr %jobu1, ptr %jobu1.addr, align 8, !tbaa !4
  store ptr %jobu2, ptr %jobu2.addr, align 8, !tbaa !4
  store ptr %jobv1t, ptr %jobv1t.addr, align 8, !tbaa !4
  store ptr %jobv2t, ptr %jobv2t.addr, align 8, !tbaa !4
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !4
  store ptr %signs, ptr %signs.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %x11, ptr %x11.addr, align 8, !tbaa !4
  store ptr %ldx11, ptr %ldx11.addr, align 8, !tbaa !4
  store ptr %x12, ptr %x12.addr, align 8, !tbaa !4
  store ptr %ldx12, ptr %ldx12.addr, align 8, !tbaa !4
  store ptr %x21, ptr %x21.addr, align 8, !tbaa !4
  store ptr %ldx21, ptr %ldx21.addr, align 8, !tbaa !4
  store ptr %x22, ptr %x22.addr, align 8, !tbaa !4
  store ptr %ldx22, ptr %ldx22.addr, align 8, !tbaa !4
  store ptr %theta, ptr %theta.addr, align 8, !tbaa !4
  store ptr %u1, ptr %u1.addr, align 8, !tbaa !4
  store ptr %ldu1, ptr %ldu1.addr, align 8, !tbaa !4
  store ptr %u2, ptr %u2.addr, align 8, !tbaa !4
  store ptr %ldu2, ptr %ldu2.addr, align 8, !tbaa !4
  store ptr %v1t, ptr %v1t.addr, align 8, !tbaa !4
  store ptr %ldv1t, ptr %ldv1t.addr, align 8, !tbaa !4
  store ptr %v2t, ptr %v2t.addr, align 8, !tbaa !4
  store ptr %ldv2t, ptr %ldv2t.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %rwork, ptr %rwork.addr, align 8, !tbaa !4
  store ptr %lrwork, ptr %lrwork.addr, align 8, !tbaa !4
  store ptr %iwork, ptr %iwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %u1_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %u1_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %u2_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %u2_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %v1t_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %v1t_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %v2t_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %v2t_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x11_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x11_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x12_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x12_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x21_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x21_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x22_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x22_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__6) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %colmajor) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lworkmin) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lworkopt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %childinfo) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %p1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lrworkmin) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lrworkopt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lbbcsdwork) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lorbdbwork) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lorglqwork) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lorgqrwork) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ib11d) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ib11e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ib12d) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ib12e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ib21d) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ib21e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ib22d) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ib22e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iphi) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %defaultsigns) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lbbcsdworkmin) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %itaup1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %itaup2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %itauq1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %itauq2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lorbdbworkmin) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lbbcsdworkopt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantu1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantu2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ibbcsd) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lorbdbworkopt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iorbdb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lorglqworkmin) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lorgqrworkmin) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lorglqworkopt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lorgqrworkopt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iorglq) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iorgqr) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %signst) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %transt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lquery) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantv1t) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantv2t) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lrquery) #3
  %0 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %x11_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %x11_offset, align 4, !tbaa !8
  %3 = load i32, ptr %x11_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %x11.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ldx12.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %x12_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %x12_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %x12_offset, align 4, !tbaa !8
  %8 = load i32, ptr %x12_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %x12.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %x12.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %x21_dim1, align 4, !tbaa !8
  %12 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %add5 = add nsw i32 1, %12
  store i32 %add5, ptr %x21_offset, align 4, !tbaa !8
  %13 = load i32, ptr %x21_offset, align 4, !tbaa !8
  %14 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %idx.ext6 = sext i32 %13 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds %struct.doublecomplex, ptr %14, i64 %idx.neg7
  store ptr %add.ptr8, ptr %x21.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ldx22.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  store i32 %16, ptr %x22_dim1, align 4, !tbaa !8
  %17 = load i32, ptr %x22_dim1, align 4, !tbaa !8
  %add9 = add nsw i32 1, %17
  store i32 %add9, ptr %x22_offset, align 4, !tbaa !8
  %18 = load i32, ptr %x22_offset, align 4, !tbaa !8
  %19 = load ptr, ptr %x22.addr, align 8, !tbaa !4
  %idx.ext10 = sext i32 %18 to i64
  %idx.neg11 = sub i64 0, %idx.ext10
  %add.ptr12 = getelementptr inbounds %struct.doublecomplex, ptr %19, i64 %idx.neg11
  store ptr %add.ptr12, ptr %x22.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %20, i32 -1
  store ptr %incdec.ptr, ptr %theta.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %ldu1.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  store i32 %22, ptr %u1_dim1, align 4, !tbaa !8
  %23 = load i32, ptr %u1_dim1, align 4, !tbaa !8
  %add13 = add nsw i32 1, %23
  store i32 %add13, ptr %u1_offset, align 4, !tbaa !8
  %24 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %25 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %idx.ext14 = sext i32 %24 to i64
  %idx.neg15 = sub i64 0, %idx.ext14
  %add.ptr16 = getelementptr inbounds %struct.doublecomplex, ptr %25, i64 %idx.neg15
  store ptr %add.ptr16, ptr %u1.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %ldu2.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  store i32 %27, ptr %u2_dim1, align 4, !tbaa !8
  %28 = load i32, ptr %u2_dim1, align 4, !tbaa !8
  %add17 = add nsw i32 1, %28
  store i32 %add17, ptr %u2_offset, align 4, !tbaa !8
  %29 = load i32, ptr %u2_offset, align 4, !tbaa !8
  %30 = load ptr, ptr %u2.addr, align 8, !tbaa !4
  %idx.ext18 = sext i32 %29 to i64
  %idx.neg19 = sub i64 0, %idx.ext18
  %add.ptr20 = getelementptr inbounds %struct.doublecomplex, ptr %30, i64 %idx.neg19
  store ptr %add.ptr20, ptr %u2.addr, align 8, !tbaa !4
  %31 = load ptr, ptr %ldv1t.addr, align 8, !tbaa !4
  %32 = load i32, ptr %31, align 4, !tbaa !8
  store i32 %32, ptr %v1t_dim1, align 4, !tbaa !8
  %33 = load i32, ptr %v1t_dim1, align 4, !tbaa !8
  %add21 = add nsw i32 1, %33
  store i32 %add21, ptr %v1t_offset, align 4, !tbaa !8
  %34 = load i32, ptr %v1t_offset, align 4, !tbaa !8
  %35 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %idx.ext22 = sext i32 %34 to i64
  %idx.neg23 = sub i64 0, %idx.ext22
  %add.ptr24 = getelementptr inbounds %struct.doublecomplex, ptr %35, i64 %idx.neg23
  store ptr %add.ptr24, ptr %v1t.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %37 = load i32, ptr %36, align 4, !tbaa !8
  store i32 %37, ptr %v2t_dim1, align 4, !tbaa !8
  %38 = load i32, ptr %v2t_dim1, align 4, !tbaa !8
  %add25 = add nsw i32 1, %38
  store i32 %add25, ptr %v2t_offset, align 4, !tbaa !8
  %39 = load i32, ptr %v2t_offset, align 4, !tbaa !8
  %40 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %idx.ext26 = sext i32 %39 to i64
  %idx.neg27 = sub i64 0, %idx.ext26
  %add.ptr28 = getelementptr inbounds %struct.doublecomplex, ptr %40, i64 %idx.neg27
  store ptr %add.ptr28, ptr %v2t.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr29 = getelementptr inbounds %struct.doublecomplex, ptr %41, i32 -1
  store ptr %incdec.ptr29, ptr %work.addr, align 8, !tbaa !4
  %42 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %incdec.ptr30 = getelementptr inbounds double, ptr %42, i32 -1
  store ptr %incdec.ptr30, ptr %rwork.addr, align 8, !tbaa !4
  %43 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %incdec.ptr31 = getelementptr inbounds i32, ptr %43, i32 -1
  store ptr %incdec.ptr31, ptr %iwork.addr, align 8, !tbaa !4
  %44 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %44, align 4, !tbaa !8
  %45 = load ptr, ptr %jobu1.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %45, ptr noundef @.str)
  store i32 %call, ptr %wantu1, align 4, !tbaa !8
  %46 = load ptr, ptr %jobu2.addr, align 8, !tbaa !4
  %call32 = call i32 @lsame_(ptr noundef %46, ptr noundef @.str)
  store i32 %call32, ptr %wantu2, align 4, !tbaa !8
  %47 = load ptr, ptr %jobv1t.addr, align 8, !tbaa !4
  %call33 = call i32 @lsame_(ptr noundef %47, ptr noundef @.str)
  store i32 %call33, ptr %wantv1t, align 4, !tbaa !8
  %48 = load ptr, ptr %jobv2t.addr, align 8, !tbaa !4
  %call34 = call i32 @lsame_(ptr noundef %48, ptr noundef @.str)
  store i32 %call34, ptr %wantv2t, align 4, !tbaa !8
  %49 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call35 = call i32 @lsame_(ptr noundef %49, ptr noundef @.str.1)
  %tobool = icmp ne i32 %call35, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %colmajor, align 4, !tbaa !8
  %50 = load ptr, ptr %signs.addr, align 8, !tbaa !4
  %call36 = call i32 @lsame_(ptr noundef %50, ptr noundef @.str.2)
  %tobool37 = icmp ne i32 %call36, 0
  %lnot38 = xor i1 %tobool37, true
  %lnot.ext39 = zext i1 %lnot38 to i32
  store i32 %lnot.ext39, ptr %defaultsigns, align 4, !tbaa !8
  %51 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %52 = load i32, ptr %51, align 4, !tbaa !8
  %cmp = icmp eq i32 %52, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4, !tbaa !8
  %53 = load ptr, ptr %lrwork.addr, align 8, !tbaa !4
  %54 = load i32, ptr %53, align 4, !tbaa !8
  %cmp40 = icmp eq i32 %54, -1
  %conv41 = zext i1 %cmp40 to i32
  store i32 %conv41, ptr %lrquery, align 4, !tbaa !8
  %55 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !8
  %cmp42 = icmp slt i32 %56, 0
  br i1 %cmp42, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %57 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -7, ptr %57, align 4, !tbaa !8
  br label %if.end210

if.else:                                          ; preds = %entry
  %58 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %cmp44 = icmp slt i32 %59, 0
  br i1 %cmp44, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %60 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %61 = load i32, ptr %60, align 4, !tbaa !8
  %62 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %63 = load i32, ptr %62, align 4, !tbaa !8
  %cmp46 = icmp sgt i32 %61, %63
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %lor.lhs.false, %if.else
  %64 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -8, ptr %64, align 4, !tbaa !8
  br label %if.end209

if.else49:                                        ; preds = %lor.lhs.false
  %65 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %66 = load i32, ptr %65, align 4, !tbaa !8
  %cmp50 = icmp slt i32 %66, 0
  br i1 %cmp50, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.else49
  %67 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %69 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %70 = load i32, ptr %69, align 4, !tbaa !8
  %cmp53 = icmp sgt i32 %68, %70
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %lor.lhs.false52, %if.else49
  %71 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -9, ptr %71, align 4, !tbaa !8
  br label %if.end208

if.else56:                                        ; preds = %lor.lhs.false52
  %72 = load i32, ptr %colmajor, align 4, !tbaa !8
  %tobool57 = icmp ne i32 %72, 0
  br i1 %tobool57, label %land.lhs.true, label %if.else63

land.lhs.true:                                    ; preds = %if.else56
  %73 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %74 = load i32, ptr %73, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %75 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %76 = load i32, ptr %75, align 4, !tbaa !8
  store i32 %76, ptr %_y, align 4, !tbaa !8
  %77 = load i32, ptr %_x, align 4, !tbaa !8
  %78 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp58 = icmp sgt i32 %77, %78
  br i1 %cmp58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %79 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %80 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %79, %cond.true ], [ %80, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %81 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp60 = icmp slt i32 %74, %81
  br i1 %cmp60, label %if.then62, label %if.else63

if.then62:                                        ; preds = %cond.end
  %82 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -11, ptr %82, align 4, !tbaa !8
  br label %if.end207

if.else63:                                        ; preds = %cond.end, %if.else56
  %83 = load i32, ptr %colmajor, align 4, !tbaa !8
  %tobool64 = icmp ne i32 %83, 0
  br i1 %tobool64, label %if.else78, label %land.lhs.true65

land.lhs.true65:                                  ; preds = %if.else63
  %84 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %85 = load i32, ptr %84, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x66) #3
  store i32 1, ptr %_x66, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y67) #3
  %86 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %87 = load i32, ptr %86, align 4, !tbaa !8
  store i32 %87, ptr %_y67, align 4, !tbaa !8
  %88 = load i32, ptr %_x66, align 4, !tbaa !8
  %89 = load i32, ptr %_y67, align 4, !tbaa !8
  %cmp69 = icmp sgt i32 %88, %89
  br i1 %cmp69, label %cond.true71, label %cond.false72

cond.true71:                                      ; preds = %land.lhs.true65
  %90 = load i32, ptr %_x66, align 4, !tbaa !8
  br label %cond.end73

cond.false72:                                     ; preds = %land.lhs.true65
  %91 = load i32, ptr %_y67, align 4, !tbaa !8
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false72, %cond.true71
  %cond74 = phi i32 [ %90, %cond.true71 ], [ %91, %cond.false72 ]
  store i32 %cond74, ptr %tmp68, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y67) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x66) #3
  %92 = load i32, ptr %tmp68, align 4, !tbaa !8
  %cmp75 = icmp slt i32 %85, %92
  br i1 %cmp75, label %if.then77, label %if.else78

if.then77:                                        ; preds = %cond.end73
  %93 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -11, ptr %93, align 4, !tbaa !8
  br label %if.end206

if.else78:                                        ; preds = %cond.end73, %if.else63
  %94 = load i32, ptr %colmajor, align 4, !tbaa !8
  %tobool79 = icmp ne i32 %94, 0
  br i1 %tobool79, label %land.lhs.true80, label %if.else93

land.lhs.true80:                                  ; preds = %if.else78
  %95 = load ptr, ptr %ldx12.addr, align 8, !tbaa !4
  %96 = load i32, ptr %95, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x81) #3
  store i32 1, ptr %_x81, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y82) #3
  %97 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %98 = load i32, ptr %97, align 4, !tbaa !8
  store i32 %98, ptr %_y82, align 4, !tbaa !8
  %99 = load i32, ptr %_x81, align 4, !tbaa !8
  %100 = load i32, ptr %_y82, align 4, !tbaa !8
  %cmp84 = icmp sgt i32 %99, %100
  br i1 %cmp84, label %cond.true86, label %cond.false87

cond.true86:                                      ; preds = %land.lhs.true80
  %101 = load i32, ptr %_x81, align 4, !tbaa !8
  br label %cond.end88

cond.false87:                                     ; preds = %land.lhs.true80
  %102 = load i32, ptr %_y82, align 4, !tbaa !8
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false87, %cond.true86
  %cond89 = phi i32 [ %101, %cond.true86 ], [ %102, %cond.false87 ]
  store i32 %cond89, ptr %tmp83, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y82) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x81) #3
  %103 = load i32, ptr %tmp83, align 4, !tbaa !8
  %cmp90 = icmp slt i32 %96, %103
  br i1 %cmp90, label %if.then92, label %if.else93

if.then92:                                        ; preds = %cond.end88
  %104 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -13, ptr %104, align 4, !tbaa !8
  br label %if.end205

if.else93:                                        ; preds = %cond.end88, %if.else78
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %105 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %106 = load i32, ptr %105, align 4, !tbaa !8
  %107 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %108 = load i32, ptr %107, align 4, !tbaa !8
  %sub = sub nsw i32 %106, %108
  store i32 %sub, ptr %i__2, align 4, !tbaa !8
  %109 = load i32, ptr %colmajor, align 4, !tbaa !8
  %tobool94 = icmp ne i32 %109, 0
  br i1 %tobool94, label %if.else108, label %land.lhs.true95

land.lhs.true95:                                  ; preds = %if.else93
  %110 = load ptr, ptr %ldx12.addr, align 8, !tbaa !4
  %111 = load i32, ptr %110, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x96) #3
  %112 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %112, ptr %_x96, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y97) #3
  %113 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %113, ptr %_y97, align 4, !tbaa !8
  %114 = load i32, ptr %_x96, align 4, !tbaa !8
  %115 = load i32, ptr %_y97, align 4, !tbaa !8
  %cmp99 = icmp sgt i32 %114, %115
  br i1 %cmp99, label %cond.true101, label %cond.false102

cond.true101:                                     ; preds = %land.lhs.true95
  %116 = load i32, ptr %_x96, align 4, !tbaa !8
  br label %cond.end103

cond.false102:                                    ; preds = %land.lhs.true95
  %117 = load i32, ptr %_y97, align 4, !tbaa !8
  br label %cond.end103

cond.end103:                                      ; preds = %cond.false102, %cond.true101
  %cond104 = phi i32 [ %116, %cond.true101 ], [ %117, %cond.false102 ]
  store i32 %cond104, ptr %tmp98, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y97) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x96) #3
  %118 = load i32, ptr %tmp98, align 4, !tbaa !8
  %cmp105 = icmp slt i32 %111, %118
  br i1 %cmp105, label %if.then107, label %if.else108

if.then107:                                       ; preds = %cond.end103
  %119 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -13, ptr %119, align 4, !tbaa !8
  br label %if.end204

if.else108:                                       ; preds = %cond.end103, %if.else93
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %120 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %121 = load i32, ptr %120, align 4, !tbaa !8
  %122 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %123 = load i32, ptr %122, align 4, !tbaa !8
  %sub109 = sub nsw i32 %121, %123
  store i32 %sub109, ptr %i__2, align 4, !tbaa !8
  %124 = load i32, ptr %colmajor, align 4, !tbaa !8
  %tobool110 = icmp ne i32 %124, 0
  br i1 %tobool110, label %land.lhs.true111, label %if.else124

land.lhs.true111:                                 ; preds = %if.else108
  %125 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %126 = load i32, ptr %125, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x112) #3
  %127 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %127, ptr %_x112, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y113) #3
  %128 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %128, ptr %_y113, align 4, !tbaa !8
  %129 = load i32, ptr %_x112, align 4, !tbaa !8
  %130 = load i32, ptr %_y113, align 4, !tbaa !8
  %cmp115 = icmp sgt i32 %129, %130
  br i1 %cmp115, label %cond.true117, label %cond.false118

cond.true117:                                     ; preds = %land.lhs.true111
  %131 = load i32, ptr %_x112, align 4, !tbaa !8
  br label %cond.end119

cond.false118:                                    ; preds = %land.lhs.true111
  %132 = load i32, ptr %_y113, align 4, !tbaa !8
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false118, %cond.true117
  %cond120 = phi i32 [ %131, %cond.true117 ], [ %132, %cond.false118 ]
  store i32 %cond120, ptr %tmp114, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y113) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x112) #3
  %133 = load i32, ptr %tmp114, align 4, !tbaa !8
  %cmp121 = icmp slt i32 %126, %133
  br i1 %cmp121, label %if.then123, label %if.else124

if.then123:                                       ; preds = %cond.end119
  %134 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -15, ptr %134, align 4, !tbaa !8
  br label %if.end203

if.else124:                                       ; preds = %cond.end119, %if.else108
  %135 = load i32, ptr %colmajor, align 4, !tbaa !8
  %tobool125 = icmp ne i32 %135, 0
  br i1 %tobool125, label %if.else139, label %land.lhs.true126

land.lhs.true126:                                 ; preds = %if.else124
  %136 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %137 = load i32, ptr %136, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x127) #3
  store i32 1, ptr %_x127, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y128) #3
  %138 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %139 = load i32, ptr %138, align 4, !tbaa !8
  store i32 %139, ptr %_y128, align 4, !tbaa !8
  %140 = load i32, ptr %_x127, align 4, !tbaa !8
  %141 = load i32, ptr %_y128, align 4, !tbaa !8
  %cmp130 = icmp sgt i32 %140, %141
  br i1 %cmp130, label %cond.true132, label %cond.false133

cond.true132:                                     ; preds = %land.lhs.true126
  %142 = load i32, ptr %_x127, align 4, !tbaa !8
  br label %cond.end134

cond.false133:                                    ; preds = %land.lhs.true126
  %143 = load i32, ptr %_y128, align 4, !tbaa !8
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false133, %cond.true132
  %cond135 = phi i32 [ %142, %cond.true132 ], [ %143, %cond.false133 ]
  store i32 %cond135, ptr %tmp129, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y128) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x127) #3
  %144 = load i32, ptr %tmp129, align 4, !tbaa !8
  %cmp136 = icmp slt i32 %137, %144
  br i1 %cmp136, label %if.then138, label %if.else139

if.then138:                                       ; preds = %cond.end134
  %145 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -15, ptr %145, align 4, !tbaa !8
  br label %if.end202

if.else139:                                       ; preds = %cond.end134, %if.else124
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %146 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %147 = load i32, ptr %146, align 4, !tbaa !8
  %148 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %149 = load i32, ptr %148, align 4, !tbaa !8
  %sub140 = sub nsw i32 %147, %149
  store i32 %sub140, ptr %i__2, align 4, !tbaa !8
  %150 = load i32, ptr %colmajor, align 4, !tbaa !8
  %tobool141 = icmp ne i32 %150, 0
  br i1 %tobool141, label %land.lhs.true142, label %if.else155

land.lhs.true142:                                 ; preds = %if.else139
  %151 = load ptr, ptr %ldx22.addr, align 8, !tbaa !4
  %152 = load i32, ptr %151, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x143) #3
  %153 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %153, ptr %_x143, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y144) #3
  %154 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %154, ptr %_y144, align 4, !tbaa !8
  %155 = load i32, ptr %_x143, align 4, !tbaa !8
  %156 = load i32, ptr %_y144, align 4, !tbaa !8
  %cmp146 = icmp sgt i32 %155, %156
  br i1 %cmp146, label %cond.true148, label %cond.false149

cond.true148:                                     ; preds = %land.lhs.true142
  %157 = load i32, ptr %_x143, align 4, !tbaa !8
  br label %cond.end150

cond.false149:                                    ; preds = %land.lhs.true142
  %158 = load i32, ptr %_y144, align 4, !tbaa !8
  br label %cond.end150

cond.end150:                                      ; preds = %cond.false149, %cond.true148
  %cond151 = phi i32 [ %157, %cond.true148 ], [ %158, %cond.false149 ]
  store i32 %cond151, ptr %tmp145, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y144) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x143) #3
  %159 = load i32, ptr %tmp145, align 4, !tbaa !8
  %cmp152 = icmp slt i32 %152, %159
  br i1 %cmp152, label %if.then154, label %if.else155

if.then154:                                       ; preds = %cond.end150
  %160 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -17, ptr %160, align 4, !tbaa !8
  br label %if.end201

if.else155:                                       ; preds = %cond.end150, %if.else139
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %161 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %162 = load i32, ptr %161, align 4, !tbaa !8
  %163 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %164 = load i32, ptr %163, align 4, !tbaa !8
  %sub156 = sub nsw i32 %162, %164
  store i32 %sub156, ptr %i__2, align 4, !tbaa !8
  %165 = load i32, ptr %colmajor, align 4, !tbaa !8
  %tobool157 = icmp ne i32 %165, 0
  br i1 %tobool157, label %if.else171, label %land.lhs.true158

land.lhs.true158:                                 ; preds = %if.else155
  %166 = load ptr, ptr %ldx22.addr, align 8, !tbaa !4
  %167 = load i32, ptr %166, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x159) #3
  %168 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %168, ptr %_x159, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y160) #3
  %169 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %169, ptr %_y160, align 4, !tbaa !8
  %170 = load i32, ptr %_x159, align 4, !tbaa !8
  %171 = load i32, ptr %_y160, align 4, !tbaa !8
  %cmp162 = icmp sgt i32 %170, %171
  br i1 %cmp162, label %cond.true164, label %cond.false165

cond.true164:                                     ; preds = %land.lhs.true158
  %172 = load i32, ptr %_x159, align 4, !tbaa !8
  br label %cond.end166

cond.false165:                                    ; preds = %land.lhs.true158
  %173 = load i32, ptr %_y160, align 4, !tbaa !8
  br label %cond.end166

cond.end166:                                      ; preds = %cond.false165, %cond.true164
  %cond167 = phi i32 [ %172, %cond.true164 ], [ %173, %cond.false165 ]
  store i32 %cond167, ptr %tmp161, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y160) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x159) #3
  %174 = load i32, ptr %tmp161, align 4, !tbaa !8
  %cmp168 = icmp slt i32 %167, %174
  br i1 %cmp168, label %if.then170, label %if.else171

if.then170:                                       ; preds = %cond.end166
  %175 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -17, ptr %175, align 4, !tbaa !8
  br label %if.end200

if.else171:                                       ; preds = %cond.end166, %if.else155
  %176 = load i32, ptr %wantu1, align 4, !tbaa !8
  %tobool172 = icmp ne i32 %176, 0
  br i1 %tobool172, label %land.lhs.true173, label %if.else177

land.lhs.true173:                                 ; preds = %if.else171
  %177 = load ptr, ptr %ldu1.addr, align 8, !tbaa !4
  %178 = load i32, ptr %177, align 4, !tbaa !8
  %179 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %180 = load i32, ptr %179, align 4, !tbaa !8
  %cmp174 = icmp slt i32 %178, %180
  br i1 %cmp174, label %if.then176, label %if.else177

if.then176:                                       ; preds = %land.lhs.true173
  %181 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -20, ptr %181, align 4, !tbaa !8
  br label %if.end199

if.else177:                                       ; preds = %land.lhs.true173, %if.else171
  %182 = load i32, ptr %wantu2, align 4, !tbaa !8
  %tobool178 = icmp ne i32 %182, 0
  br i1 %tobool178, label %land.lhs.true179, label %if.else184

land.lhs.true179:                                 ; preds = %if.else177
  %183 = load ptr, ptr %ldu2.addr, align 8, !tbaa !4
  %184 = load i32, ptr %183, align 4, !tbaa !8
  %185 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %186 = load i32, ptr %185, align 4, !tbaa !8
  %187 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %188 = load i32, ptr %187, align 4, !tbaa !8
  %sub180 = sub nsw i32 %186, %188
  %cmp181 = icmp slt i32 %184, %sub180
  br i1 %cmp181, label %if.then183, label %if.else184

if.then183:                                       ; preds = %land.lhs.true179
  %189 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -22, ptr %189, align 4, !tbaa !8
  br label %if.end198

if.else184:                                       ; preds = %land.lhs.true179, %if.else177
  %190 = load i32, ptr %wantv1t, align 4, !tbaa !8
  %tobool185 = icmp ne i32 %190, 0
  br i1 %tobool185, label %land.lhs.true186, label %if.else190

land.lhs.true186:                                 ; preds = %if.else184
  %191 = load ptr, ptr %ldv1t.addr, align 8, !tbaa !4
  %192 = load i32, ptr %191, align 4, !tbaa !8
  %193 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %194 = load i32, ptr %193, align 4, !tbaa !8
  %cmp187 = icmp slt i32 %192, %194
  br i1 %cmp187, label %if.then189, label %if.else190

if.then189:                                       ; preds = %land.lhs.true186
  %195 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -24, ptr %195, align 4, !tbaa !8
  br label %if.end197

if.else190:                                       ; preds = %land.lhs.true186, %if.else184
  %196 = load i32, ptr %wantv2t, align 4, !tbaa !8
  %tobool191 = icmp ne i32 %196, 0
  br i1 %tobool191, label %land.lhs.true192, label %if.end

land.lhs.true192:                                 ; preds = %if.else190
  %197 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %198 = load i32, ptr %197, align 4, !tbaa !8
  %199 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %200 = load i32, ptr %199, align 4, !tbaa !8
  %201 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %202 = load i32, ptr %201, align 4, !tbaa !8
  %sub193 = sub nsw i32 %200, %202
  %cmp194 = icmp slt i32 %198, %sub193
  br i1 %cmp194, label %if.then196, label %if.end

if.then196:                                       ; preds = %land.lhs.true192
  %203 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -26, ptr %203, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then196, %land.lhs.true192, %if.else190
  br label %if.end197

if.end197:                                        ; preds = %if.end, %if.then189
  br label %if.end198

if.end198:                                        ; preds = %if.end197, %if.then183
  br label %if.end199

if.end199:                                        ; preds = %if.end198, %if.then176
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %if.then170
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.then154
  br label %if.end202

if.end202:                                        ; preds = %if.end201, %if.then138
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %if.then123
  br label %if.end204

if.end204:                                        ; preds = %if.end203, %if.then107
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %if.then92
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.then77
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %if.then62
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.then55
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.then48
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.then
  %204 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %205 = load i32, ptr %204, align 4, !tbaa !8
  store i32 %205, ptr %i__1, align 4, !tbaa !8
  %206 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %207 = load i32, ptr %206, align 4, !tbaa !8
  %208 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %209 = load i32, ptr %208, align 4, !tbaa !8
  %sub211 = sub nsw i32 %207, %209
  store i32 %sub211, ptr %i__2, align 4, !tbaa !8
  %210 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %211 = load i32, ptr %210, align 4, !tbaa !8
  store i32 %211, ptr %i__3, align 4, !tbaa !8
  %212 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %213 = load i32, ptr %212, align 4, !tbaa !8
  %214 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %215 = load i32, ptr %214, align 4, !tbaa !8
  %sub212 = sub nsw i32 %213, %215
  store i32 %sub212, ptr %i__4, align 4, !tbaa !8
  %216 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %217 = load i32, ptr %216, align 4, !tbaa !8
  %cmp213 = icmp eq i32 %217, 0
  br i1 %cmp213, label %land.lhs.true215, label %if.end269

land.lhs.true215:                                 ; preds = %if.end210
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x216) #3
  %218 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %218, ptr %_x216, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y217) #3
  %219 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %219, ptr %_y217, align 4, !tbaa !8
  %220 = load i32, ptr %_x216, align 4, !tbaa !8
  %221 = load i32, ptr %_y217, align 4, !tbaa !8
  %cmp219 = icmp slt i32 %220, %221
  br i1 %cmp219, label %cond.true221, label %cond.false222

cond.true221:                                     ; preds = %land.lhs.true215
  %222 = load i32, ptr %_x216, align 4, !tbaa !8
  br label %cond.end223

cond.false222:                                    ; preds = %land.lhs.true215
  %223 = load i32, ptr %_y217, align 4, !tbaa !8
  br label %cond.end223

cond.end223:                                      ; preds = %cond.false222, %cond.true221
  %cond224 = phi i32 [ %222, %cond.true221 ], [ %223, %cond.false222 ]
  store i32 %cond224, ptr %tmp218, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y217) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x216) #3
  %224 = load i32, ptr %tmp218, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x225) #3
  %225 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %225, ptr %_x225, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y226) #3
  %226 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %226, ptr %_y226, align 4, !tbaa !8
  %227 = load i32, ptr %_x225, align 4, !tbaa !8
  %228 = load i32, ptr %_y226, align 4, !tbaa !8
  %cmp228 = icmp slt i32 %227, %228
  br i1 %cmp228, label %cond.true230, label %cond.false231

cond.true230:                                     ; preds = %cond.end223
  %229 = load i32, ptr %_x225, align 4, !tbaa !8
  br label %cond.end232

cond.false231:                                    ; preds = %cond.end223
  %230 = load i32, ptr %_y226, align 4, !tbaa !8
  br label %cond.end232

cond.end232:                                      ; preds = %cond.false231, %cond.true230
  %cond233 = phi i32 [ %229, %cond.true230 ], [ %230, %cond.false231 ]
  store i32 %cond233, ptr %tmp227, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y226) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x225) #3
  %231 = load i32, ptr %tmp227, align 4, !tbaa !8
  %cmp234 = icmp slt i32 %224, %231
  br i1 %cmp234, label %if.then236, label %if.end269

if.then236:                                       ; preds = %cond.end232
  %232 = load i32, ptr %colmajor, align 4, !tbaa !8
  %tobool237 = icmp ne i32 %232, 0
  br i1 %tobool237, label %if.then238, label %if.else239

if.then238:                                       ; preds = %if.then236
  %arraydecay = getelementptr inbounds [1 x i8], ptr %transt, i64 0, i64 0
  store i8 84, ptr %arraydecay, align 1, !tbaa !10
  br label %if.end241

if.else239:                                       ; preds = %if.then236
  %arraydecay240 = getelementptr inbounds [1 x i8], ptr %transt, i64 0, i64 0
  store i8 78, ptr %arraydecay240, align 1, !tbaa !10
  br label %if.end241

if.end241:                                        ; preds = %if.else239, %if.then238
  %233 = load i32, ptr %defaultsigns, align 4, !tbaa !8
  %tobool242 = icmp ne i32 %233, 0
  br i1 %tobool242, label %if.then243, label %if.else245

if.then243:                                       ; preds = %if.end241
  %arraydecay244 = getelementptr inbounds [1 x i8], ptr %signst, i64 0, i64 0
  store i8 79, ptr %arraydecay244, align 1, !tbaa !10
  br label %if.end247

if.else245:                                       ; preds = %if.end241
  %arraydecay246 = getelementptr inbounds [1 x i8], ptr %signst, i64 0, i64 0
  store i8 68, ptr %arraydecay246, align 1, !tbaa !10
  br label %if.end247

if.end247:                                        ; preds = %if.else245, %if.then243
  %234 = load ptr, ptr %jobv1t.addr, align 8, !tbaa !4
  %235 = load ptr, ptr %jobv2t.addr, align 8, !tbaa !4
  %236 = load ptr, ptr %jobu1.addr, align 8, !tbaa !4
  %237 = load ptr, ptr %jobu2.addr, align 8, !tbaa !4
  %arraydecay248 = getelementptr inbounds [1 x i8], ptr %transt, i64 0, i64 0
  %arraydecay249 = getelementptr inbounds [1 x i8], ptr %signst, i64 0, i64 0
  %238 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %239 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %240 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %241 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %242 = load i32, ptr %x11_offset, align 4, !tbaa !8
  %idxprom = sext i32 %242 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %241, i64 %idxprom
  %243 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %244 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %245 = load i32, ptr %x21_offset, align 4, !tbaa !8
  %idxprom250 = sext i32 %245 to i64
  %arrayidx251 = getelementptr inbounds %struct.doublecomplex, ptr %244, i64 %idxprom250
  %246 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %247 = load ptr, ptr %x12.addr, align 8, !tbaa !4
  %248 = load i32, ptr %x12_offset, align 4, !tbaa !8
  %idxprom252 = sext i32 %248 to i64
  %arrayidx253 = getelementptr inbounds %struct.doublecomplex, ptr %247, i64 %idxprom252
  %249 = load ptr, ptr %ldx12.addr, align 8, !tbaa !4
  %250 = load ptr, ptr %x22.addr, align 8, !tbaa !4
  %251 = load i32, ptr %x22_offset, align 4, !tbaa !8
  %idxprom254 = sext i32 %251 to i64
  %arrayidx255 = getelementptr inbounds %struct.doublecomplex, ptr %250, i64 %idxprom254
  %252 = load ptr, ptr %ldx22.addr, align 8, !tbaa !4
  %253 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx256 = getelementptr inbounds double, ptr %253, i64 1
  %254 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %255 = load i32, ptr %v1t_offset, align 4, !tbaa !8
  %idxprom257 = sext i32 %255 to i64
  %arrayidx258 = getelementptr inbounds %struct.doublecomplex, ptr %254, i64 %idxprom257
  %256 = load ptr, ptr %ldv1t.addr, align 8, !tbaa !4
  %257 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %258 = load i32, ptr %v2t_offset, align 4, !tbaa !8
  %idxprom259 = sext i32 %258 to i64
  %arrayidx260 = getelementptr inbounds %struct.doublecomplex, ptr %257, i64 %idxprom259
  %259 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %260 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %261 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom261 = sext i32 %261 to i64
  %arrayidx262 = getelementptr inbounds %struct.doublecomplex, ptr %260, i64 %idxprom261
  %262 = load ptr, ptr %ldu1.addr, align 8, !tbaa !4
  %263 = load ptr, ptr %u2.addr, align 8, !tbaa !4
  %264 = load i32, ptr %u2_offset, align 4, !tbaa !8
  %idxprom263 = sext i32 %264 to i64
  %arrayidx264 = getelementptr inbounds %struct.doublecomplex, ptr %263, i64 %idxprom263
  %265 = load ptr, ptr %ldu2.addr, align 8, !tbaa !4
  %266 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx265 = getelementptr inbounds %struct.doublecomplex, ptr %266, i64 1
  %267 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %268 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %arrayidx266 = getelementptr inbounds double, ptr %268, i64 1
  %269 = load ptr, ptr %lrwork.addr, align 8, !tbaa !4
  %270 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %arrayidx267 = getelementptr inbounds i32, ptr %270, i64 1
  %271 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call268 = call i32 @zuncsd_(ptr noundef %234, ptr noundef %235, ptr noundef %236, ptr noundef %237, ptr noundef %arraydecay248, ptr noundef %arraydecay249, ptr noundef %238, ptr noundef %239, ptr noundef %240, ptr noundef %arrayidx, ptr noundef %243, ptr noundef %arrayidx251, ptr noundef %246, ptr noundef %arrayidx253, ptr noundef %249, ptr noundef %arrayidx255, ptr noundef %252, ptr noundef %arrayidx256, ptr noundef %arrayidx258, ptr noundef %256, ptr noundef %arrayidx260, ptr noundef %259, ptr noundef %arrayidx262, ptr noundef %262, ptr noundef %arrayidx264, ptr noundef %265, ptr noundef %arrayidx265, ptr noundef %267, ptr noundef %arrayidx266, ptr noundef %269, ptr noundef %arrayidx267, ptr noundef %271)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end269:                                        ; preds = %cond.end232, %if.end210
  %272 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %273 = load i32, ptr %272, align 4, !tbaa !8
  %cmp270 = icmp eq i32 %273, 0
  br i1 %cmp270, label %land.lhs.true272, label %if.end307

land.lhs.true272:                                 ; preds = %if.end269
  %274 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %275 = load i32, ptr %274, align 4, !tbaa !8
  %276 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %277 = load i32, ptr %276, align 4, !tbaa !8
  %sub273 = sub nsw i32 %275, %277
  %278 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %279 = load i32, ptr %278, align 4, !tbaa !8
  %cmp274 = icmp slt i32 %sub273, %279
  br i1 %cmp274, label %if.then276, label %if.end307

if.then276:                                       ; preds = %land.lhs.true272
  %280 = load i32, ptr %defaultsigns, align 4, !tbaa !8
  %tobool277 = icmp ne i32 %280, 0
  br i1 %tobool277, label %if.then278, label %if.else280

if.then278:                                       ; preds = %if.then276
  %arraydecay279 = getelementptr inbounds [1 x i8], ptr %signst, i64 0, i64 0
  store i8 79, ptr %arraydecay279, align 1, !tbaa !10
  br label %if.end282

if.else280:                                       ; preds = %if.then276
  %arraydecay281 = getelementptr inbounds [1 x i8], ptr %signst, i64 0, i64 0
  store i8 68, ptr %arraydecay281, align 1, !tbaa !10
  br label %if.end282

if.end282:                                        ; preds = %if.else280, %if.then278
  %281 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %282 = load i32, ptr %281, align 4, !tbaa !8
  %283 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %284 = load i32, ptr %283, align 4, !tbaa !8
  %sub283 = sub nsw i32 %282, %284
  store i32 %sub283, ptr %i__1, align 4, !tbaa !8
  %285 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %286 = load i32, ptr %285, align 4, !tbaa !8
  %287 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %288 = load i32, ptr %287, align 4, !tbaa !8
  %sub284 = sub nsw i32 %286, %288
  store i32 %sub284, ptr %i__2, align 4, !tbaa !8
  %289 = load ptr, ptr %jobu2.addr, align 8, !tbaa !4
  %290 = load ptr, ptr %jobu1.addr, align 8, !tbaa !4
  %291 = load ptr, ptr %jobv2t.addr, align 8, !tbaa !4
  %292 = load ptr, ptr %jobv1t.addr, align 8, !tbaa !4
  %293 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %arraydecay285 = getelementptr inbounds [1 x i8], ptr %signst, i64 0, i64 0
  %294 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %295 = load ptr, ptr %x22.addr, align 8, !tbaa !4
  %296 = load i32, ptr %x22_offset, align 4, !tbaa !8
  %idxprom286 = sext i32 %296 to i64
  %arrayidx287 = getelementptr inbounds %struct.doublecomplex, ptr %295, i64 %idxprom286
  %297 = load ptr, ptr %ldx22.addr, align 8, !tbaa !4
  %298 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %299 = load i32, ptr %x21_offset, align 4, !tbaa !8
  %idxprom288 = sext i32 %299 to i64
  %arrayidx289 = getelementptr inbounds %struct.doublecomplex, ptr %298, i64 %idxprom288
  %300 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %301 = load ptr, ptr %x12.addr, align 8, !tbaa !4
  %302 = load i32, ptr %x12_offset, align 4, !tbaa !8
  %idxprom290 = sext i32 %302 to i64
  %arrayidx291 = getelementptr inbounds %struct.doublecomplex, ptr %301, i64 %idxprom290
  %303 = load ptr, ptr %ldx12.addr, align 8, !tbaa !4
  %304 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %305 = load i32, ptr %x11_offset, align 4, !tbaa !8
  %idxprom292 = sext i32 %305 to i64
  %arrayidx293 = getelementptr inbounds %struct.doublecomplex, ptr %304, i64 %idxprom292
  %306 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %307 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx294 = getelementptr inbounds double, ptr %307, i64 1
  %308 = load ptr, ptr %u2.addr, align 8, !tbaa !4
  %309 = load i32, ptr %u2_offset, align 4, !tbaa !8
  %idxprom295 = sext i32 %309 to i64
  %arrayidx296 = getelementptr inbounds %struct.doublecomplex, ptr %308, i64 %idxprom295
  %310 = load ptr, ptr %ldu2.addr, align 8, !tbaa !4
  %311 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %312 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom297 = sext i32 %312 to i64
  %arrayidx298 = getelementptr inbounds %struct.doublecomplex, ptr %311, i64 %idxprom297
  %313 = load ptr, ptr %ldu1.addr, align 8, !tbaa !4
  %314 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %315 = load i32, ptr %v2t_offset, align 4, !tbaa !8
  %idxprom299 = sext i32 %315 to i64
  %arrayidx300 = getelementptr inbounds %struct.doublecomplex, ptr %314, i64 %idxprom299
  %316 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %317 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %318 = load i32, ptr %v1t_offset, align 4, !tbaa !8
  %idxprom301 = sext i32 %318 to i64
  %arrayidx302 = getelementptr inbounds %struct.doublecomplex, ptr %317, i64 %idxprom301
  %319 = load ptr, ptr %ldv1t.addr, align 8, !tbaa !4
  %320 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx303 = getelementptr inbounds %struct.doublecomplex, ptr %320, i64 1
  %321 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %322 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %arrayidx304 = getelementptr inbounds double, ptr %322, i64 1
  %323 = load ptr, ptr %lrwork.addr, align 8, !tbaa !4
  %324 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %arrayidx305 = getelementptr inbounds i32, ptr %324, i64 1
  %325 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call306 = call i32 @zuncsd_(ptr noundef %289, ptr noundef %290, ptr noundef %291, ptr noundef %292, ptr noundef %293, ptr noundef %arraydecay285, ptr noundef %294, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx287, ptr noundef %297, ptr noundef %arrayidx289, ptr noundef %300, ptr noundef %arrayidx291, ptr noundef %303, ptr noundef %arrayidx293, ptr noundef %306, ptr noundef %arrayidx294, ptr noundef %arrayidx296, ptr noundef %310, ptr noundef %arrayidx298, ptr noundef %313, ptr noundef %arrayidx300, ptr noundef %316, ptr noundef %arrayidx302, ptr noundef %319, ptr noundef %arrayidx303, ptr noundef %321, ptr noundef %arrayidx304, ptr noundef %323, ptr noundef %arrayidx305, ptr noundef %325)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end307:                                        ; preds = %land.lhs.true272, %if.end269
  %326 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %327 = load i32, ptr %326, align 4, !tbaa !8
  %cmp308 = icmp eq i32 %327, 0
  br i1 %cmp308, label %if.then310, label %if.end667

if.then310:                                       ; preds = %if.end307
  store i32 2, ptr %iphi, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %328 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %329 = load i32, ptr %328, align 4, !tbaa !8
  %sub311 = sub nsw i32 %329, 1
  store i32 %sub311, ptr %i__2, align 4, !tbaa !8
  %330 = load i32, ptr %iphi, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x312) #3
  %331 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %331, ptr %_x312, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y313) #3
  %332 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %332, ptr %_y313, align 4, !tbaa !8
  %333 = load i32, ptr %_x312, align 4, !tbaa !8
  %334 = load i32, ptr %_y313, align 4, !tbaa !8
  %cmp315 = icmp sgt i32 %333, %334
  br i1 %cmp315, label %cond.true317, label %cond.false318

cond.true317:                                     ; preds = %if.then310
  %335 = load i32, ptr %_x312, align 4, !tbaa !8
  br label %cond.end319

cond.false318:                                    ; preds = %if.then310
  %336 = load i32, ptr %_y313, align 4, !tbaa !8
  br label %cond.end319

cond.end319:                                      ; preds = %cond.false318, %cond.true317
  %cond320 = phi i32 [ %335, %cond.true317 ], [ %336, %cond.false318 ]
  store i32 %cond320, ptr %tmp314, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y313) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x312) #3
  %337 = load i32, ptr %tmp314, align 4, !tbaa !8
  %add321 = add nsw i32 %330, %337
  store i32 %add321, ptr %ib11d, align 4, !tbaa !8
  %338 = load i32, ptr %ib11d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x322) #3
  store i32 1, ptr %_x322, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y323) #3
  %339 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %340 = load i32, ptr %339, align 4, !tbaa !8
  store i32 %340, ptr %_y323, align 4, !tbaa !8
  %341 = load i32, ptr %_x322, align 4, !tbaa !8
  %342 = load i32, ptr %_y323, align 4, !tbaa !8
  %cmp325 = icmp sgt i32 %341, %342
  br i1 %cmp325, label %cond.true327, label %cond.false328

cond.true327:                                     ; preds = %cond.end319
  %343 = load i32, ptr %_x322, align 4, !tbaa !8
  br label %cond.end329

cond.false328:                                    ; preds = %cond.end319
  %344 = load i32, ptr %_y323, align 4, !tbaa !8
  br label %cond.end329

cond.end329:                                      ; preds = %cond.false328, %cond.true327
  %cond330 = phi i32 [ %343, %cond.true327 ], [ %344, %cond.false328 ]
  store i32 %cond330, ptr %tmp324, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y323) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x322) #3
  %345 = load i32, ptr %tmp324, align 4, !tbaa !8
  %add331 = add nsw i32 %338, %345
  store i32 %add331, ptr %ib11e, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %346 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %347 = load i32, ptr %346, align 4, !tbaa !8
  %sub332 = sub nsw i32 %347, 1
  store i32 %sub332, ptr %i__2, align 4, !tbaa !8
  %348 = load i32, ptr %ib11e, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x333) #3
  %349 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %349, ptr %_x333, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y334) #3
  %350 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %350, ptr %_y334, align 4, !tbaa !8
  %351 = load i32, ptr %_x333, align 4, !tbaa !8
  %352 = load i32, ptr %_y334, align 4, !tbaa !8
  %cmp336 = icmp sgt i32 %351, %352
  br i1 %cmp336, label %cond.true338, label %cond.false339

cond.true338:                                     ; preds = %cond.end329
  %353 = load i32, ptr %_x333, align 4, !tbaa !8
  br label %cond.end340

cond.false339:                                    ; preds = %cond.end329
  %354 = load i32, ptr %_y334, align 4, !tbaa !8
  br label %cond.end340

cond.end340:                                      ; preds = %cond.false339, %cond.true338
  %cond341 = phi i32 [ %353, %cond.true338 ], [ %354, %cond.false339 ]
  store i32 %cond341, ptr %tmp335, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y334) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x333) #3
  %355 = load i32, ptr %tmp335, align 4, !tbaa !8
  %add342 = add nsw i32 %348, %355
  store i32 %add342, ptr %ib12d, align 4, !tbaa !8
  %356 = load i32, ptr %ib12d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x343) #3
  store i32 1, ptr %_x343, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y344) #3
  %357 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %358 = load i32, ptr %357, align 4, !tbaa !8
  store i32 %358, ptr %_y344, align 4, !tbaa !8
  %359 = load i32, ptr %_x343, align 4, !tbaa !8
  %360 = load i32, ptr %_y344, align 4, !tbaa !8
  %cmp346 = icmp sgt i32 %359, %360
  br i1 %cmp346, label %cond.true348, label %cond.false349

cond.true348:                                     ; preds = %cond.end340
  %361 = load i32, ptr %_x343, align 4, !tbaa !8
  br label %cond.end350

cond.false349:                                    ; preds = %cond.end340
  %362 = load i32, ptr %_y344, align 4, !tbaa !8
  br label %cond.end350

cond.end350:                                      ; preds = %cond.false349, %cond.true348
  %cond351 = phi i32 [ %361, %cond.true348 ], [ %362, %cond.false349 ]
  store i32 %cond351, ptr %tmp345, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y344) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x343) #3
  %363 = load i32, ptr %tmp345, align 4, !tbaa !8
  %add352 = add nsw i32 %356, %363
  store i32 %add352, ptr %ib12e, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %364 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %365 = load i32, ptr %364, align 4, !tbaa !8
  %sub353 = sub nsw i32 %365, 1
  store i32 %sub353, ptr %i__2, align 4, !tbaa !8
  %366 = load i32, ptr %ib12e, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x354) #3
  %367 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %367, ptr %_x354, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y355) #3
  %368 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %368, ptr %_y355, align 4, !tbaa !8
  %369 = load i32, ptr %_x354, align 4, !tbaa !8
  %370 = load i32, ptr %_y355, align 4, !tbaa !8
  %cmp357 = icmp sgt i32 %369, %370
  br i1 %cmp357, label %cond.true359, label %cond.false360

cond.true359:                                     ; preds = %cond.end350
  %371 = load i32, ptr %_x354, align 4, !tbaa !8
  br label %cond.end361

cond.false360:                                    ; preds = %cond.end350
  %372 = load i32, ptr %_y355, align 4, !tbaa !8
  br label %cond.end361

cond.end361:                                      ; preds = %cond.false360, %cond.true359
  %cond362 = phi i32 [ %371, %cond.true359 ], [ %372, %cond.false360 ]
  store i32 %cond362, ptr %tmp356, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y355) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x354) #3
  %373 = load i32, ptr %tmp356, align 4, !tbaa !8
  %add363 = add nsw i32 %366, %373
  store i32 %add363, ptr %ib21d, align 4, !tbaa !8
  %374 = load i32, ptr %ib21d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x364) #3
  store i32 1, ptr %_x364, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y365) #3
  %375 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %376 = load i32, ptr %375, align 4, !tbaa !8
  store i32 %376, ptr %_y365, align 4, !tbaa !8
  %377 = load i32, ptr %_x364, align 4, !tbaa !8
  %378 = load i32, ptr %_y365, align 4, !tbaa !8
  %cmp367 = icmp sgt i32 %377, %378
  br i1 %cmp367, label %cond.true369, label %cond.false370

cond.true369:                                     ; preds = %cond.end361
  %379 = load i32, ptr %_x364, align 4, !tbaa !8
  br label %cond.end371

cond.false370:                                    ; preds = %cond.end361
  %380 = load i32, ptr %_y365, align 4, !tbaa !8
  br label %cond.end371

cond.end371:                                      ; preds = %cond.false370, %cond.true369
  %cond372 = phi i32 [ %379, %cond.true369 ], [ %380, %cond.false370 ]
  store i32 %cond372, ptr %tmp366, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y365) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x364) #3
  %381 = load i32, ptr %tmp366, align 4, !tbaa !8
  %add373 = add nsw i32 %374, %381
  store i32 %add373, ptr %ib21e, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %382 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %383 = load i32, ptr %382, align 4, !tbaa !8
  %sub374 = sub nsw i32 %383, 1
  store i32 %sub374, ptr %i__2, align 4, !tbaa !8
  %384 = load i32, ptr %ib21e, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x375) #3
  %385 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %385, ptr %_x375, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y376) #3
  %386 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %386, ptr %_y376, align 4, !tbaa !8
  %387 = load i32, ptr %_x375, align 4, !tbaa !8
  %388 = load i32, ptr %_y376, align 4, !tbaa !8
  %cmp378 = icmp sgt i32 %387, %388
  br i1 %cmp378, label %cond.true380, label %cond.false381

cond.true380:                                     ; preds = %cond.end371
  %389 = load i32, ptr %_x375, align 4, !tbaa !8
  br label %cond.end382

cond.false381:                                    ; preds = %cond.end371
  %390 = load i32, ptr %_y376, align 4, !tbaa !8
  br label %cond.end382

cond.end382:                                      ; preds = %cond.false381, %cond.true380
  %cond383 = phi i32 [ %389, %cond.true380 ], [ %390, %cond.false381 ]
  store i32 %cond383, ptr %tmp377, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y376) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x375) #3
  %391 = load i32, ptr %tmp377, align 4, !tbaa !8
  %add384 = add nsw i32 %384, %391
  store i32 %add384, ptr %ib22d, align 4, !tbaa !8
  %392 = load i32, ptr %ib22d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x385) #3
  store i32 1, ptr %_x385, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y386) #3
  %393 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %394 = load i32, ptr %393, align 4, !tbaa !8
  store i32 %394, ptr %_y386, align 4, !tbaa !8
  %395 = load i32, ptr %_x385, align 4, !tbaa !8
  %396 = load i32, ptr %_y386, align 4, !tbaa !8
  %cmp388 = icmp sgt i32 %395, %396
  br i1 %cmp388, label %cond.true390, label %cond.false391

cond.true390:                                     ; preds = %cond.end382
  %397 = load i32, ptr %_x385, align 4, !tbaa !8
  br label %cond.end392

cond.false391:                                    ; preds = %cond.end382
  %398 = load i32, ptr %_y386, align 4, !tbaa !8
  br label %cond.end392

cond.end392:                                      ; preds = %cond.false391, %cond.true390
  %cond393 = phi i32 [ %397, %cond.true390 ], [ %398, %cond.false391 ]
  store i32 %cond393, ptr %tmp387, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y386) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x385) #3
  %399 = load i32, ptr %tmp387, align 4, !tbaa !8
  %add394 = add nsw i32 %392, %399
  store i32 %add394, ptr %ib22e, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %400 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %401 = load i32, ptr %400, align 4, !tbaa !8
  %sub395 = sub nsw i32 %401, 1
  store i32 %sub395, ptr %i__2, align 4, !tbaa !8
  %402 = load i32, ptr %ib22e, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x396) #3
  %403 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %403, ptr %_x396, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y397) #3
  %404 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %404, ptr %_y397, align 4, !tbaa !8
  %405 = load i32, ptr %_x396, align 4, !tbaa !8
  %406 = load i32, ptr %_y397, align 4, !tbaa !8
  %cmp399 = icmp sgt i32 %405, %406
  br i1 %cmp399, label %cond.true401, label %cond.false402

cond.true401:                                     ; preds = %cond.end392
  %407 = load i32, ptr %_x396, align 4, !tbaa !8
  br label %cond.end403

cond.false402:                                    ; preds = %cond.end392
  %408 = load i32, ptr %_y397, align 4, !tbaa !8
  br label %cond.end403

cond.end403:                                      ; preds = %cond.false402, %cond.true401
  %cond404 = phi i32 [ %407, %cond.true401 ], [ %408, %cond.false402 ]
  store i32 %cond404, ptr %tmp398, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y397) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x396) #3
  %409 = load i32, ptr %tmp398, align 4, !tbaa !8
  %add405 = add nsw i32 %402, %409
  store i32 %add405, ptr %ibbcsd, align 4, !tbaa !8
  %410 = load ptr, ptr %jobu1.addr, align 8, !tbaa !4
  %411 = load ptr, ptr %jobu2.addr, align 8, !tbaa !4
  %412 = load ptr, ptr %jobv1t.addr, align 8, !tbaa !4
  %413 = load ptr, ptr %jobv2t.addr, align 8, !tbaa !4
  %414 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %415 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %416 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %417 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %418 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx406 = getelementptr inbounds double, ptr %418, i64 1
  %419 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx407 = getelementptr inbounds double, ptr %419, i64 1
  %420 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %421 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom408 = sext i32 %421 to i64
  %arrayidx409 = getelementptr inbounds %struct.doublecomplex, ptr %420, i64 %idxprom408
  %422 = load ptr, ptr %ldu1.addr, align 8, !tbaa !4
  %423 = load ptr, ptr %u2.addr, align 8, !tbaa !4
  %424 = load i32, ptr %u2_offset, align 4, !tbaa !8
  %idxprom410 = sext i32 %424 to i64
  %arrayidx411 = getelementptr inbounds %struct.doublecomplex, ptr %423, i64 %idxprom410
  %425 = load ptr, ptr %ldu2.addr, align 8, !tbaa !4
  %426 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %427 = load i32, ptr %v1t_offset, align 4, !tbaa !8
  %idxprom412 = sext i32 %427 to i64
  %arrayidx413 = getelementptr inbounds %struct.doublecomplex, ptr %426, i64 %idxprom412
  %428 = load ptr, ptr %ldv1t.addr, align 8, !tbaa !4
  %429 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %430 = load i32, ptr %v2t_offset, align 4, !tbaa !8
  %idxprom414 = sext i32 %430 to i64
  %arrayidx415 = getelementptr inbounds %struct.doublecomplex, ptr %429, i64 %idxprom414
  %431 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %432 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx416 = getelementptr inbounds double, ptr %432, i64 1
  %433 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx417 = getelementptr inbounds double, ptr %433, i64 1
  %434 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx418 = getelementptr inbounds double, ptr %434, i64 1
  %435 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx419 = getelementptr inbounds double, ptr %435, i64 1
  %436 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx420 = getelementptr inbounds double, ptr %436, i64 1
  %437 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx421 = getelementptr inbounds double, ptr %437, i64 1
  %438 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx422 = getelementptr inbounds double, ptr %438, i64 1
  %439 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx423 = getelementptr inbounds double, ptr %439, i64 1
  %440 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %arrayidx424 = getelementptr inbounds double, ptr %440, i64 1
  %call425 = call i32 @zbbcsd_(ptr noundef %410, ptr noundef %411, ptr noundef %412, ptr noundef %413, ptr noundef %414, ptr noundef %415, ptr noundef %416, ptr noundef %417, ptr noundef %arrayidx406, ptr noundef %arrayidx407, ptr noundef %arrayidx409, ptr noundef %422, ptr noundef %arrayidx411, ptr noundef %425, ptr noundef %arrayidx413, ptr noundef %428, ptr noundef %arrayidx415, ptr noundef %431, ptr noundef %arrayidx416, ptr noundef %arrayidx417, ptr noundef %arrayidx418, ptr noundef %arrayidx419, ptr noundef %arrayidx420, ptr noundef %arrayidx421, ptr noundef %arrayidx422, ptr noundef %arrayidx423, ptr noundef %arrayidx424, ptr noundef @c_n1, ptr noundef %childinfo)
  %441 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %arrayidx426 = getelementptr inbounds double, ptr %441, i64 1
  %442 = load double, ptr %arrayidx426, align 8, !tbaa !11
  %conv427 = fptosi double %442 to i32
  store i32 %conv427, ptr %lbbcsdworkopt, align 4, !tbaa !8
  %443 = load i32, ptr %lbbcsdworkopt, align 4, !tbaa !8
  store i32 %443, ptr %lbbcsdworkmin, align 4, !tbaa !8
  %444 = load i32, ptr %ibbcsd, align 4, !tbaa !8
  %445 = load i32, ptr %lbbcsdworkopt, align 4, !tbaa !8
  %add428 = add nsw i32 %444, %445
  %sub429 = sub nsw i32 %add428, 1
  store i32 %sub429, ptr %lrworkopt, align 4, !tbaa !8
  %446 = load i32, ptr %ibbcsd, align 4, !tbaa !8
  %447 = load i32, ptr %lbbcsdworkmin, align 4, !tbaa !8
  %add430 = add nsw i32 %446, %447
  %sub431 = sub nsw i32 %add430, 1
  store i32 %sub431, ptr %lrworkmin, align 4, !tbaa !8
  %448 = load i32, ptr %lrworkopt, align 4, !tbaa !8
  %conv432 = sitofp i32 %448 to double
  %449 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %arrayidx433 = getelementptr inbounds double, ptr %449, i64 1
  store double %conv432, ptr %arrayidx433, align 8, !tbaa !11
  store i32 2, ptr %itaup1, align 4, !tbaa !8
  %450 = load i32, ptr %itaup1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x434) #3
  store i32 1, ptr %_x434, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y435) #3
  %451 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %452 = load i32, ptr %451, align 4, !tbaa !8
  store i32 %452, ptr %_y435, align 4, !tbaa !8
  %453 = load i32, ptr %_x434, align 4, !tbaa !8
  %454 = load i32, ptr %_y435, align 4, !tbaa !8
  %cmp437 = icmp sgt i32 %453, %454
  br i1 %cmp437, label %cond.true439, label %cond.false440

cond.true439:                                     ; preds = %cond.end403
  %455 = load i32, ptr %_x434, align 4, !tbaa !8
  br label %cond.end441

cond.false440:                                    ; preds = %cond.end403
  %456 = load i32, ptr %_y435, align 4, !tbaa !8
  br label %cond.end441

cond.end441:                                      ; preds = %cond.false440, %cond.true439
  %cond442 = phi i32 [ %455, %cond.true439 ], [ %456, %cond.false440 ]
  store i32 %cond442, ptr %tmp436, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y435) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x434) #3
  %457 = load i32, ptr %tmp436, align 4, !tbaa !8
  %add443 = add nsw i32 %450, %457
  store i32 %add443, ptr %itaup2, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %458 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %459 = load i32, ptr %458, align 4, !tbaa !8
  %460 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %461 = load i32, ptr %460, align 4, !tbaa !8
  %sub444 = sub nsw i32 %459, %461
  store i32 %sub444, ptr %i__2, align 4, !tbaa !8
  %462 = load i32, ptr %itaup2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x445) #3
  %463 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %463, ptr %_x445, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y446) #3
  %464 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %464, ptr %_y446, align 4, !tbaa !8
  %465 = load i32, ptr %_x445, align 4, !tbaa !8
  %466 = load i32, ptr %_y446, align 4, !tbaa !8
  %cmp448 = icmp sgt i32 %465, %466
  br i1 %cmp448, label %cond.true450, label %cond.false451

cond.true450:                                     ; preds = %cond.end441
  %467 = load i32, ptr %_x445, align 4, !tbaa !8
  br label %cond.end452

cond.false451:                                    ; preds = %cond.end441
  %468 = load i32, ptr %_y446, align 4, !tbaa !8
  br label %cond.end452

cond.end452:                                      ; preds = %cond.false451, %cond.true450
  %cond453 = phi i32 [ %467, %cond.true450 ], [ %468, %cond.false451 ]
  store i32 %cond453, ptr %tmp447, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y446) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x445) #3
  %469 = load i32, ptr %tmp447, align 4, !tbaa !8
  %add454 = add nsw i32 %462, %469
  store i32 %add454, ptr %itauq1, align 4, !tbaa !8
  %470 = load i32, ptr %itauq1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x455) #3
  store i32 1, ptr %_x455, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y456) #3
  %471 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %472 = load i32, ptr %471, align 4, !tbaa !8
  store i32 %472, ptr %_y456, align 4, !tbaa !8
  %473 = load i32, ptr %_x455, align 4, !tbaa !8
  %474 = load i32, ptr %_y456, align 4, !tbaa !8
  %cmp458 = icmp sgt i32 %473, %474
  br i1 %cmp458, label %cond.true460, label %cond.false461

cond.true460:                                     ; preds = %cond.end452
  %475 = load i32, ptr %_x455, align 4, !tbaa !8
  br label %cond.end462

cond.false461:                                    ; preds = %cond.end452
  %476 = load i32, ptr %_y456, align 4, !tbaa !8
  br label %cond.end462

cond.end462:                                      ; preds = %cond.false461, %cond.true460
  %cond463 = phi i32 [ %475, %cond.true460 ], [ %476, %cond.false461 ]
  store i32 %cond463, ptr %tmp457, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y456) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x455) #3
  %477 = load i32, ptr %tmp457, align 4, !tbaa !8
  %add464 = add nsw i32 %470, %477
  store i32 %add464, ptr %itauq2, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %478 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %479 = load i32, ptr %478, align 4, !tbaa !8
  %480 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %481 = load i32, ptr %480, align 4, !tbaa !8
  %sub465 = sub nsw i32 %479, %481
  store i32 %sub465, ptr %i__2, align 4, !tbaa !8
  %482 = load i32, ptr %itauq2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x466) #3
  %483 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %483, ptr %_x466, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y467) #3
  %484 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %484, ptr %_y467, align 4, !tbaa !8
  %485 = load i32, ptr %_x466, align 4, !tbaa !8
  %486 = load i32, ptr %_y467, align 4, !tbaa !8
  %cmp469 = icmp sgt i32 %485, %486
  br i1 %cmp469, label %cond.true471, label %cond.false472

cond.true471:                                     ; preds = %cond.end462
  %487 = load i32, ptr %_x466, align 4, !tbaa !8
  br label %cond.end473

cond.false472:                                    ; preds = %cond.end462
  %488 = load i32, ptr %_y467, align 4, !tbaa !8
  br label %cond.end473

cond.end473:                                      ; preds = %cond.false472, %cond.true471
  %cond474 = phi i32 [ %487, %cond.true471 ], [ %488, %cond.false472 ]
  store i32 %cond474, ptr %tmp468, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y467) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x466) #3
  %489 = load i32, ptr %tmp468, align 4, !tbaa !8
  %add475 = add nsw i32 %482, %489
  store i32 %add475, ptr %iorgqr, align 4, !tbaa !8
  %490 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %491 = load i32, ptr %490, align 4, !tbaa !8
  %492 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %493 = load i32, ptr %492, align 4, !tbaa !8
  %sub476 = sub nsw i32 %491, %493
  store i32 %sub476, ptr %i__1, align 4, !tbaa !8
  %494 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %495 = load i32, ptr %494, align 4, !tbaa !8
  %496 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %497 = load i32, ptr %496, align 4, !tbaa !8
  %sub477 = sub nsw i32 %495, %497
  store i32 %sub477, ptr %i__2, align 4, !tbaa !8
  %498 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %499 = load i32, ptr %498, align 4, !tbaa !8
  %500 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %501 = load i32, ptr %500, align 4, !tbaa !8
  %sub478 = sub nsw i32 %499, %501
  store i32 %sub478, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %i__5, align 4, !tbaa !8
  %502 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %503 = load i32, ptr %502, align 4, !tbaa !8
  %504 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %505 = load i32, ptr %504, align 4, !tbaa !8
  %sub479 = sub nsw i32 %503, %505
  store i32 %sub479, ptr %i__6, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x480) #3
  %506 = load i32, ptr %i__5, align 4, !tbaa !8
  store i32 %506, ptr %_x480, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y481) #3
  %507 = load i32, ptr %i__6, align 4, !tbaa !8
  store i32 %507, ptr %_y481, align 4, !tbaa !8
  %508 = load i32, ptr %_x480, align 4, !tbaa !8
  %509 = load i32, ptr %_y481, align 4, !tbaa !8
  %cmp483 = icmp sgt i32 %508, %509
  br i1 %cmp483, label %cond.true485, label %cond.false486

cond.true485:                                     ; preds = %cond.end473
  %510 = load i32, ptr %_x480, align 4, !tbaa !8
  br label %cond.end487

cond.false486:                                    ; preds = %cond.end473
  %511 = load i32, ptr %_y481, align 4, !tbaa !8
  br label %cond.end487

cond.end487:                                      ; preds = %cond.false486, %cond.true485
  %cond488 = phi i32 [ %510, %cond.true485 ], [ %511, %cond.false486 ]
  store i32 %cond488, ptr %tmp482, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y481) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x480) #3
  %512 = load i32, ptr %tmp482, align 4, !tbaa !8
  store i32 %512, ptr %i__4, align 4, !tbaa !8
  %513 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %514 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom489 = sext i32 %514 to i64
  %arrayidx490 = getelementptr inbounds %struct.doublecomplex, ptr %513, i64 %idxprom489
  %515 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %516 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom491 = sext i32 %516 to i64
  %arrayidx492 = getelementptr inbounds %struct.doublecomplex, ptr %515, i64 %idxprom491
  %517 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx493 = getelementptr inbounds %struct.doublecomplex, ptr %517, i64 1
  %call494 = call i32 @zungqr_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx490, ptr noundef %i__4, ptr noundef %arrayidx492, ptr noundef %arrayidx493, ptr noundef @c_n1, ptr noundef %childinfo)
  %518 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx495 = getelementptr inbounds %struct.doublecomplex, ptr %518, i64 1
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx495, i32 0, i32 0
  %519 = load double, ptr %r, align 8, !tbaa !13
  %conv496 = fptosi double %519 to i32
  store i32 %conv496, ptr %lorgqrworkopt, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %520 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %521 = load i32, ptr %520, align 4, !tbaa !8
  %522 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %523 = load i32, ptr %522, align 4, !tbaa !8
  %sub497 = sub nsw i32 %521, %523
  store i32 %sub497, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x498) #3
  %524 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %524, ptr %_x498, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y499) #3
  %525 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %525, ptr %_y499, align 4, !tbaa !8
  %526 = load i32, ptr %_x498, align 4, !tbaa !8
  %527 = load i32, ptr %_y499, align 4, !tbaa !8
  %cmp501 = icmp sgt i32 %526, %527
  br i1 %cmp501, label %cond.true503, label %cond.false504

cond.true503:                                     ; preds = %cond.end487
  %528 = load i32, ptr %_x498, align 4, !tbaa !8
  br label %cond.end505

cond.false504:                                    ; preds = %cond.end487
  %529 = load i32, ptr %_y499, align 4, !tbaa !8
  br label %cond.end505

cond.end505:                                      ; preds = %cond.false504, %cond.true503
  %cond506 = phi i32 [ %528, %cond.true503 ], [ %529, %cond.false504 ]
  store i32 %cond506, ptr %tmp500, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y499) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x498) #3
  %530 = load i32, ptr %tmp500, align 4, !tbaa !8
  store i32 %530, ptr %lorgqrworkmin, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %531 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %532 = load i32, ptr %531, align 4, !tbaa !8
  %533 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %534 = load i32, ptr %533, align 4, !tbaa !8
  %sub507 = sub nsw i32 %532, %534
  store i32 %sub507, ptr %i__2, align 4, !tbaa !8
  %535 = load i32, ptr %itauq2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x508) #3
  %536 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %536, ptr %_x508, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y509) #3
  %537 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %537, ptr %_y509, align 4, !tbaa !8
  %538 = load i32, ptr %_x508, align 4, !tbaa !8
  %539 = load i32, ptr %_y509, align 4, !tbaa !8
  %cmp511 = icmp sgt i32 %538, %539
  br i1 %cmp511, label %cond.true513, label %cond.false514

cond.true513:                                     ; preds = %cond.end505
  %540 = load i32, ptr %_x508, align 4, !tbaa !8
  br label %cond.end515

cond.false514:                                    ; preds = %cond.end505
  %541 = load i32, ptr %_y509, align 4, !tbaa !8
  br label %cond.end515

cond.end515:                                      ; preds = %cond.false514, %cond.true513
  %cond516 = phi i32 [ %540, %cond.true513 ], [ %541, %cond.false514 ]
  store i32 %cond516, ptr %tmp510, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y509) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x508) #3
  %542 = load i32, ptr %tmp510, align 4, !tbaa !8
  %add517 = add nsw i32 %535, %542
  store i32 %add517, ptr %iorglq, align 4, !tbaa !8
  %543 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %544 = load i32, ptr %543, align 4, !tbaa !8
  %545 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %546 = load i32, ptr %545, align 4, !tbaa !8
  %sub518 = sub nsw i32 %544, %546
  store i32 %sub518, ptr %i__1, align 4, !tbaa !8
  %547 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %548 = load i32, ptr %547, align 4, !tbaa !8
  %549 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %550 = load i32, ptr %549, align 4, !tbaa !8
  %sub519 = sub nsw i32 %548, %550
  store i32 %sub519, ptr %i__2, align 4, !tbaa !8
  %551 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %552 = load i32, ptr %551, align 4, !tbaa !8
  %553 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %554 = load i32, ptr %553, align 4, !tbaa !8
  %sub520 = sub nsw i32 %552, %554
  store i32 %sub520, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %i__5, align 4, !tbaa !8
  %555 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %556 = load i32, ptr %555, align 4, !tbaa !8
  %557 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %558 = load i32, ptr %557, align 4, !tbaa !8
  %sub521 = sub nsw i32 %556, %558
  store i32 %sub521, ptr %i__6, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x522) #3
  %559 = load i32, ptr %i__5, align 4, !tbaa !8
  store i32 %559, ptr %_x522, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y523) #3
  %560 = load i32, ptr %i__6, align 4, !tbaa !8
  store i32 %560, ptr %_y523, align 4, !tbaa !8
  %561 = load i32, ptr %_x522, align 4, !tbaa !8
  %562 = load i32, ptr %_y523, align 4, !tbaa !8
  %cmp525 = icmp sgt i32 %561, %562
  br i1 %cmp525, label %cond.true527, label %cond.false528

cond.true527:                                     ; preds = %cond.end515
  %563 = load i32, ptr %_x522, align 4, !tbaa !8
  br label %cond.end529

cond.false528:                                    ; preds = %cond.end515
  %564 = load i32, ptr %_y523, align 4, !tbaa !8
  br label %cond.end529

cond.end529:                                      ; preds = %cond.false528, %cond.true527
  %cond530 = phi i32 [ %563, %cond.true527 ], [ %564, %cond.false528 ]
  store i32 %cond530, ptr %tmp524, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y523) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x522) #3
  %565 = load i32, ptr %tmp524, align 4, !tbaa !8
  store i32 %565, ptr %i__4, align 4, !tbaa !8
  %566 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %567 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom531 = sext i32 %567 to i64
  %arrayidx532 = getelementptr inbounds %struct.doublecomplex, ptr %566, i64 %idxprom531
  %568 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %569 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom533 = sext i32 %569 to i64
  %arrayidx534 = getelementptr inbounds %struct.doublecomplex, ptr %568, i64 %idxprom533
  %570 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx535 = getelementptr inbounds %struct.doublecomplex, ptr %570, i64 1
  %call536 = call i32 @zunglq_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx532, ptr noundef %i__4, ptr noundef %arrayidx534, ptr noundef %arrayidx535, ptr noundef @c_n1, ptr noundef %childinfo)
  %571 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx537 = getelementptr inbounds %struct.doublecomplex, ptr %571, i64 1
  %r538 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx537, i32 0, i32 0
  %572 = load double, ptr %r538, align 8, !tbaa !13
  %conv539 = fptosi double %572 to i32
  store i32 %conv539, ptr %lorglqworkopt, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %573 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %574 = load i32, ptr %573, align 4, !tbaa !8
  %575 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %576 = load i32, ptr %575, align 4, !tbaa !8
  %sub540 = sub nsw i32 %574, %576
  store i32 %sub540, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x541) #3
  %577 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %577, ptr %_x541, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y542) #3
  %578 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %578, ptr %_y542, align 4, !tbaa !8
  %579 = load i32, ptr %_x541, align 4, !tbaa !8
  %580 = load i32, ptr %_y542, align 4, !tbaa !8
  %cmp544 = icmp sgt i32 %579, %580
  br i1 %cmp544, label %cond.true546, label %cond.false547

cond.true546:                                     ; preds = %cond.end529
  %581 = load i32, ptr %_x541, align 4, !tbaa !8
  br label %cond.end548

cond.false547:                                    ; preds = %cond.end529
  %582 = load i32, ptr %_y542, align 4, !tbaa !8
  br label %cond.end548

cond.end548:                                      ; preds = %cond.false547, %cond.true546
  %cond549 = phi i32 [ %581, %cond.true546 ], [ %582, %cond.false547 ]
  store i32 %cond549, ptr %tmp543, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y542) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x541) #3
  %583 = load i32, ptr %tmp543, align 4, !tbaa !8
  store i32 %583, ptr %lorglqworkmin, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %584 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %585 = load i32, ptr %584, align 4, !tbaa !8
  %586 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %587 = load i32, ptr %586, align 4, !tbaa !8
  %sub550 = sub nsw i32 %585, %587
  store i32 %sub550, ptr %i__2, align 4, !tbaa !8
  %588 = load i32, ptr %itauq2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x551) #3
  %589 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %589, ptr %_x551, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y552) #3
  %590 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %590, ptr %_y552, align 4, !tbaa !8
  %591 = load i32, ptr %_x551, align 4, !tbaa !8
  %592 = load i32, ptr %_y552, align 4, !tbaa !8
  %cmp554 = icmp sgt i32 %591, %592
  br i1 %cmp554, label %cond.true556, label %cond.false557

cond.true556:                                     ; preds = %cond.end548
  %593 = load i32, ptr %_x551, align 4, !tbaa !8
  br label %cond.end558

cond.false557:                                    ; preds = %cond.end548
  %594 = load i32, ptr %_y552, align 4, !tbaa !8
  br label %cond.end558

cond.end558:                                      ; preds = %cond.false557, %cond.true556
  %cond559 = phi i32 [ %593, %cond.true556 ], [ %594, %cond.false557 ]
  store i32 %cond559, ptr %tmp553, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y552) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x551) #3
  %595 = load i32, ptr %tmp553, align 4, !tbaa !8
  %add560 = add nsw i32 %588, %595
  store i32 %add560, ptr %iorbdb, align 4, !tbaa !8
  %596 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %597 = load ptr, ptr %signs.addr, align 8, !tbaa !4
  %598 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %599 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %600 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %601 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %602 = load i32, ptr %x11_offset, align 4, !tbaa !8
  %idxprom561 = sext i32 %602 to i64
  %arrayidx562 = getelementptr inbounds %struct.doublecomplex, ptr %601, i64 %idxprom561
  %603 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %604 = load ptr, ptr %x12.addr, align 8, !tbaa !4
  %605 = load i32, ptr %x12_offset, align 4, !tbaa !8
  %idxprom563 = sext i32 %605 to i64
  %arrayidx564 = getelementptr inbounds %struct.doublecomplex, ptr %604, i64 %idxprom563
  %606 = load ptr, ptr %ldx12.addr, align 8, !tbaa !4
  %607 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %608 = load i32, ptr %x21_offset, align 4, !tbaa !8
  %idxprom565 = sext i32 %608 to i64
  %arrayidx566 = getelementptr inbounds %struct.doublecomplex, ptr %607, i64 %idxprom565
  %609 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %610 = load ptr, ptr %x22.addr, align 8, !tbaa !4
  %611 = load i32, ptr %x22_offset, align 4, !tbaa !8
  %idxprom567 = sext i32 %611 to i64
  %arrayidx568 = getelementptr inbounds %struct.doublecomplex, ptr %610, i64 %idxprom567
  %612 = load ptr, ptr %ldx22.addr, align 8, !tbaa !4
  %613 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx569 = getelementptr inbounds double, ptr %613, i64 1
  %614 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx570 = getelementptr inbounds double, ptr %614, i64 1
  %615 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %616 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom571 = sext i32 %616 to i64
  %arrayidx572 = getelementptr inbounds %struct.doublecomplex, ptr %615, i64 %idxprom571
  %617 = load ptr, ptr %u2.addr, align 8, !tbaa !4
  %618 = load i32, ptr %u2_offset, align 4, !tbaa !8
  %idxprom573 = sext i32 %618 to i64
  %arrayidx574 = getelementptr inbounds %struct.doublecomplex, ptr %617, i64 %idxprom573
  %619 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %620 = load i32, ptr %v1t_offset, align 4, !tbaa !8
  %idxprom575 = sext i32 %620 to i64
  %arrayidx576 = getelementptr inbounds %struct.doublecomplex, ptr %619, i64 %idxprom575
  %621 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %622 = load i32, ptr %v2t_offset, align 4, !tbaa !8
  %idxprom577 = sext i32 %622 to i64
  %arrayidx578 = getelementptr inbounds %struct.doublecomplex, ptr %621, i64 %idxprom577
  %623 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx579 = getelementptr inbounds %struct.doublecomplex, ptr %623, i64 1
  %call580 = call i32 @zunbdb_(ptr noundef %596, ptr noundef %597, ptr noundef %598, ptr noundef %599, ptr noundef %600, ptr noundef %arrayidx562, ptr noundef %603, ptr noundef %arrayidx564, ptr noundef %606, ptr noundef %arrayidx566, ptr noundef %609, ptr noundef %arrayidx568, ptr noundef %612, ptr noundef %arrayidx569, ptr noundef %arrayidx570, ptr noundef %arrayidx572, ptr noundef %arrayidx574, ptr noundef %arrayidx576, ptr noundef %arrayidx578, ptr noundef %arrayidx579, ptr noundef @c_n1, ptr noundef %childinfo)
  %624 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx581 = getelementptr inbounds %struct.doublecomplex, ptr %624, i64 1
  %r582 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx581, i32 0, i32 0
  %625 = load double, ptr %r582, align 8, !tbaa !13
  %conv583 = fptosi double %625 to i32
  store i32 %conv583, ptr %lorbdbworkopt, align 4, !tbaa !8
  %626 = load i32, ptr %lorbdbworkopt, align 4, !tbaa !8
  store i32 %626, ptr %lorbdbworkmin, align 4, !tbaa !8
  %627 = load i32, ptr %iorgqr, align 4, !tbaa !8
  %628 = load i32, ptr %lorgqrworkopt, align 4, !tbaa !8
  %add584 = add nsw i32 %627, %628
  store i32 %add584, ptr %i__1, align 4, !tbaa !8
  %629 = load i32, ptr %iorglq, align 4, !tbaa !8
  %630 = load i32, ptr %lorglqworkopt, align 4, !tbaa !8
  %add585 = add nsw i32 %629, %630
  store i32 %add585, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x586) #3
  %631 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %631, ptr %_x586, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y587) #3
  %632 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %632, ptr %_y587, align 4, !tbaa !8
  %633 = load i32, ptr %_x586, align 4, !tbaa !8
  %634 = load i32, ptr %_y587, align 4, !tbaa !8
  %cmp589 = icmp sgt i32 %633, %634
  br i1 %cmp589, label %cond.true591, label %cond.false592

cond.true591:                                     ; preds = %cond.end558
  %635 = load i32, ptr %_x586, align 4, !tbaa !8
  br label %cond.end593

cond.false592:                                    ; preds = %cond.end558
  %636 = load i32, ptr %_y587, align 4, !tbaa !8
  br label %cond.end593

cond.end593:                                      ; preds = %cond.false592, %cond.true591
  %cond594 = phi i32 [ %635, %cond.true591 ], [ %636, %cond.false592 ]
  store i32 %cond594, ptr %tmp588, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y587) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x586) #3
  %637 = load i32, ptr %tmp588, align 4, !tbaa !8
  store i32 %637, ptr %i__1, align 4, !tbaa !8
  %638 = load i32, ptr %iorbdb, align 4, !tbaa !8
  %639 = load i32, ptr %lorbdbworkopt, align 4, !tbaa !8
  %add595 = add nsw i32 %638, %639
  store i32 %add595, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x596) #3
  %640 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %640, ptr %_x596, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y597) #3
  %641 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %641, ptr %_y597, align 4, !tbaa !8
  %642 = load i32, ptr %_x596, align 4, !tbaa !8
  %643 = load i32, ptr %_y597, align 4, !tbaa !8
  %cmp599 = icmp sgt i32 %642, %643
  br i1 %cmp599, label %cond.true601, label %cond.false602

cond.true601:                                     ; preds = %cond.end593
  %644 = load i32, ptr %_x596, align 4, !tbaa !8
  br label %cond.end603

cond.false602:                                    ; preds = %cond.end593
  %645 = load i32, ptr %_y597, align 4, !tbaa !8
  br label %cond.end603

cond.end603:                                      ; preds = %cond.false602, %cond.true601
  %cond604 = phi i32 [ %644, %cond.true601 ], [ %645, %cond.false602 ]
  store i32 %cond604, ptr %tmp598, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y597) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x596) #3
  %646 = load i32, ptr %tmp598, align 4, !tbaa !8
  %sub605 = sub nsw i32 %646, 1
  store i32 %sub605, ptr %lworkopt, align 4, !tbaa !8
  %647 = load i32, ptr %iorgqr, align 4, !tbaa !8
  %648 = load i32, ptr %lorgqrworkmin, align 4, !tbaa !8
  %add606 = add nsw i32 %647, %648
  store i32 %add606, ptr %i__1, align 4, !tbaa !8
  %649 = load i32, ptr %iorglq, align 4, !tbaa !8
  %650 = load i32, ptr %lorglqworkmin, align 4, !tbaa !8
  %add607 = add nsw i32 %649, %650
  store i32 %add607, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x608) #3
  %651 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %651, ptr %_x608, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y609) #3
  %652 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %652, ptr %_y609, align 4, !tbaa !8
  %653 = load i32, ptr %_x608, align 4, !tbaa !8
  %654 = load i32, ptr %_y609, align 4, !tbaa !8
  %cmp611 = icmp sgt i32 %653, %654
  br i1 %cmp611, label %cond.true613, label %cond.false614

cond.true613:                                     ; preds = %cond.end603
  %655 = load i32, ptr %_x608, align 4, !tbaa !8
  br label %cond.end615

cond.false614:                                    ; preds = %cond.end603
  %656 = load i32, ptr %_y609, align 4, !tbaa !8
  br label %cond.end615

cond.end615:                                      ; preds = %cond.false614, %cond.true613
  %cond616 = phi i32 [ %655, %cond.true613 ], [ %656, %cond.false614 ]
  store i32 %cond616, ptr %tmp610, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y609) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x608) #3
  %657 = load i32, ptr %tmp610, align 4, !tbaa !8
  store i32 %657, ptr %i__1, align 4, !tbaa !8
  %658 = load i32, ptr %iorbdb, align 4, !tbaa !8
  %659 = load i32, ptr %lorbdbworkmin, align 4, !tbaa !8
  %add617 = add nsw i32 %658, %659
  store i32 %add617, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x618) #3
  %660 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %660, ptr %_x618, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y619) #3
  %661 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %661, ptr %_y619, align 4, !tbaa !8
  %662 = load i32, ptr %_x618, align 4, !tbaa !8
  %663 = load i32, ptr %_y619, align 4, !tbaa !8
  %cmp621 = icmp sgt i32 %662, %663
  br i1 %cmp621, label %cond.true623, label %cond.false624

cond.true623:                                     ; preds = %cond.end615
  %664 = load i32, ptr %_x618, align 4, !tbaa !8
  br label %cond.end625

cond.false624:                                    ; preds = %cond.end615
  %665 = load i32, ptr %_y619, align 4, !tbaa !8
  br label %cond.end625

cond.end625:                                      ; preds = %cond.false624, %cond.true623
  %cond626 = phi i32 [ %664, %cond.true623 ], [ %665, %cond.false624 ]
  store i32 %cond626, ptr %tmp620, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y619) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x618) #3
  %666 = load i32, ptr %tmp620, align 4, !tbaa !8
  %sub627 = sub nsw i32 %666, 1
  store i32 %sub627, ptr %lworkmin, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x628) #3
  %667 = load i32, ptr %lworkopt, align 4, !tbaa !8
  store i32 %667, ptr %_x628, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y629) #3
  %668 = load i32, ptr %lworkmin, align 4, !tbaa !8
  store i32 %668, ptr %_y629, align 4, !tbaa !8
  %669 = load i32, ptr %_x628, align 4, !tbaa !8
  %670 = load i32, ptr %_y629, align 4, !tbaa !8
  %cmp631 = icmp sgt i32 %669, %670
  br i1 %cmp631, label %cond.true633, label %cond.false634

cond.true633:                                     ; preds = %cond.end625
  %671 = load i32, ptr %_x628, align 4, !tbaa !8
  br label %cond.end635

cond.false634:                                    ; preds = %cond.end625
  %672 = load i32, ptr %_y629, align 4, !tbaa !8
  br label %cond.end635

cond.end635:                                      ; preds = %cond.false634, %cond.true633
  %cond636 = phi i32 [ %671, %cond.true633 ], [ %672, %cond.false634 ]
  store i32 %cond636, ptr %tmp630, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y629) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x628) #3
  %673 = load i32, ptr %tmp630, align 4, !tbaa !8
  store i32 %673, ptr %i__1, align 4, !tbaa !8
  %674 = load i32, ptr %i__1, align 4, !tbaa !8
  %conv637 = sitofp i32 %674 to double
  %675 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx638 = getelementptr inbounds %struct.doublecomplex, ptr %675, i64 1
  %r639 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx638, i32 0, i32 0
  store double %conv637, ptr %r639, align 8, !tbaa !13
  %676 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx640 = getelementptr inbounds %struct.doublecomplex, ptr %676, i64 1
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx640, i32 0, i32 1
  store double 0.000000e+00, ptr %i, align 8, !tbaa !15
  %677 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %678 = load i32, ptr %677, align 4, !tbaa !8
  %679 = load i32, ptr %lworkmin, align 4, !tbaa !8
  %cmp641 = icmp slt i32 %678, %679
  br i1 %cmp641, label %land.lhs.true643, label %if.else648

land.lhs.true643:                                 ; preds = %cond.end635
  %680 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool644 = icmp ne i32 %680, 0
  br i1 %tobool644, label %if.else648, label %lor.lhs.false645

lor.lhs.false645:                                 ; preds = %land.lhs.true643
  %681 = load i32, ptr %lrquery, align 4, !tbaa !8
  %tobool646 = icmp ne i32 %681, 0
  br i1 %tobool646, label %if.else648, label %if.then647

if.then647:                                       ; preds = %lor.lhs.false645
  %682 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -22, ptr %682, align 4, !tbaa !8
  br label %if.end666

if.else648:                                       ; preds = %lor.lhs.false645, %land.lhs.true643, %cond.end635
  %683 = load ptr, ptr %lrwork.addr, align 8, !tbaa !4
  %684 = load i32, ptr %683, align 4, !tbaa !8
  %685 = load i32, ptr %lrworkmin, align 4, !tbaa !8
  %cmp649 = icmp slt i32 %684, %685
  br i1 %cmp649, label %land.lhs.true651, label %if.else656

land.lhs.true651:                                 ; preds = %if.else648
  %686 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool652 = icmp ne i32 %686, 0
  br i1 %tobool652, label %if.else656, label %lor.lhs.false653

lor.lhs.false653:                                 ; preds = %land.lhs.true651
  %687 = load i32, ptr %lrquery, align 4, !tbaa !8
  %tobool654 = icmp ne i32 %687, 0
  br i1 %tobool654, label %if.else656, label %if.then655

if.then655:                                       ; preds = %lor.lhs.false653
  %688 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -24, ptr %688, align 4, !tbaa !8
  br label %if.end665

if.else656:                                       ; preds = %lor.lhs.false653, %land.lhs.true651, %if.else648
  %689 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %690 = load i32, ptr %689, align 4, !tbaa !8
  %691 = load i32, ptr %iorgqr, align 4, !tbaa !8
  %sub657 = sub nsw i32 %690, %691
  %add658 = add nsw i32 %sub657, 1
  store i32 %add658, ptr %lorgqrwork, align 4, !tbaa !8
  %692 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %693 = load i32, ptr %692, align 4, !tbaa !8
  %694 = load i32, ptr %iorglq, align 4, !tbaa !8
  %sub659 = sub nsw i32 %693, %694
  %add660 = add nsw i32 %sub659, 1
  store i32 %add660, ptr %lorglqwork, align 4, !tbaa !8
  %695 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %696 = load i32, ptr %695, align 4, !tbaa !8
  %697 = load i32, ptr %iorbdb, align 4, !tbaa !8
  %sub661 = sub nsw i32 %696, %697
  %add662 = add nsw i32 %sub661, 1
  store i32 %add662, ptr %lorbdbwork, align 4, !tbaa !8
  %698 = load ptr, ptr %lrwork.addr, align 8, !tbaa !4
  %699 = load i32, ptr %698, align 4, !tbaa !8
  %700 = load i32, ptr %ibbcsd, align 4, !tbaa !8
  %sub663 = sub nsw i32 %699, %700
  %add664 = add nsw i32 %sub663, 1
  store i32 %add664, ptr %lbbcsdwork, align 4, !tbaa !8
  br label %if.end665

if.end665:                                        ; preds = %if.else656, %if.then655
  br label %if.end666

if.end666:                                        ; preds = %if.end665, %if.then647
  br label %if.end667

if.end667:                                        ; preds = %if.end666, %if.end307
  %701 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %702 = load i32, ptr %701, align 4, !tbaa !8
  %cmp668 = icmp ne i32 %702, 0
  br i1 %cmp668, label %if.then670, label %if.else673

if.then670:                                       ; preds = %if.end667
  %703 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %704 = load i32, ptr %703, align 4, !tbaa !8
  %sub671 = sub nsw i32 0, %704
  store i32 %sub671, ptr %i__1, align 4, !tbaa !8
  %call672 = call i32 @xerbla_(ptr noundef @.str.3, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else673:                                       ; preds = %if.end667
  %705 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool674 = icmp ne i32 %705, 0
  br i1 %tobool674, label %if.then677, label %lor.lhs.false675

lor.lhs.false675:                                 ; preds = %if.else673
  %706 = load i32, ptr %lrquery, align 4, !tbaa !8
  %tobool676 = icmp ne i32 %706, 0
  br i1 %tobool676, label %if.then677, label %if.end678

if.then677:                                       ; preds = %lor.lhs.false675, %if.else673
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end678:                                        ; preds = %lor.lhs.false675
  br label %if.end679

if.end679:                                        ; preds = %if.end678
  %707 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %708 = load ptr, ptr %signs.addr, align 8, !tbaa !4
  %709 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %710 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %711 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %712 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %713 = load i32, ptr %x11_offset, align 4, !tbaa !8
  %idxprom680 = sext i32 %713 to i64
  %arrayidx681 = getelementptr inbounds %struct.doublecomplex, ptr %712, i64 %idxprom680
  %714 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %715 = load ptr, ptr %x12.addr, align 8, !tbaa !4
  %716 = load i32, ptr %x12_offset, align 4, !tbaa !8
  %idxprom682 = sext i32 %716 to i64
  %arrayidx683 = getelementptr inbounds %struct.doublecomplex, ptr %715, i64 %idxprom682
  %717 = load ptr, ptr %ldx12.addr, align 8, !tbaa !4
  %718 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %719 = load i32, ptr %x21_offset, align 4, !tbaa !8
  %idxprom684 = sext i32 %719 to i64
  %arrayidx685 = getelementptr inbounds %struct.doublecomplex, ptr %718, i64 %idxprom684
  %720 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %721 = load ptr, ptr %x22.addr, align 8, !tbaa !4
  %722 = load i32, ptr %x22_offset, align 4, !tbaa !8
  %idxprom686 = sext i32 %722 to i64
  %arrayidx687 = getelementptr inbounds %struct.doublecomplex, ptr %721, i64 %idxprom686
  %723 = load ptr, ptr %ldx22.addr, align 8, !tbaa !4
  %724 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx688 = getelementptr inbounds double, ptr %724, i64 1
  %725 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %726 = load i32, ptr %iphi, align 4, !tbaa !8
  %idxprom689 = sext i32 %726 to i64
  %arrayidx690 = getelementptr inbounds double, ptr %725, i64 %idxprom689
  %727 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %728 = load i32, ptr %itaup1, align 4, !tbaa !8
  %idxprom691 = sext i32 %728 to i64
  %arrayidx692 = getelementptr inbounds %struct.doublecomplex, ptr %727, i64 %idxprom691
  %729 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %730 = load i32, ptr %itaup2, align 4, !tbaa !8
  %idxprom693 = sext i32 %730 to i64
  %arrayidx694 = getelementptr inbounds %struct.doublecomplex, ptr %729, i64 %idxprom693
  %731 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %732 = load i32, ptr %itauq1, align 4, !tbaa !8
  %idxprom695 = sext i32 %732 to i64
  %arrayidx696 = getelementptr inbounds %struct.doublecomplex, ptr %731, i64 %idxprom695
  %733 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %734 = load i32, ptr %itauq2, align 4, !tbaa !8
  %idxprom697 = sext i32 %734 to i64
  %arrayidx698 = getelementptr inbounds %struct.doublecomplex, ptr %733, i64 %idxprom697
  %735 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %736 = load i32, ptr %iorbdb, align 4, !tbaa !8
  %idxprom699 = sext i32 %736 to i64
  %arrayidx700 = getelementptr inbounds %struct.doublecomplex, ptr %735, i64 %idxprom699
  %call701 = call i32 @zunbdb_(ptr noundef %707, ptr noundef %708, ptr noundef %709, ptr noundef %710, ptr noundef %711, ptr noundef %arrayidx681, ptr noundef %714, ptr noundef %arrayidx683, ptr noundef %717, ptr noundef %arrayidx685, ptr noundef %720, ptr noundef %arrayidx687, ptr noundef %723, ptr noundef %arrayidx688, ptr noundef %arrayidx690, ptr noundef %arrayidx692, ptr noundef %arrayidx694, ptr noundef %arrayidx696, ptr noundef %arrayidx698, ptr noundef %arrayidx700, ptr noundef %lorbdbwork, ptr noundef %childinfo)
  %737 = load i32, ptr %colmajor, align 4, !tbaa !8
  %tobool702 = icmp ne i32 %737, 0
  br i1 %tobool702, label %if.then703, label %if.else844

if.then703:                                       ; preds = %if.end679
  %738 = load i32, ptr %wantu1, align 4, !tbaa !8
  %tobool704 = icmp ne i32 %738, 0
  br i1 %tobool704, label %land.lhs.true705, label %if.end721

land.lhs.true705:                                 ; preds = %if.then703
  %739 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %740 = load i32, ptr %739, align 4, !tbaa !8
  %cmp706 = icmp sgt i32 %740, 0
  br i1 %cmp706, label %if.then708, label %if.end721

if.then708:                                       ; preds = %land.lhs.true705
  %741 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %742 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %743 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %744 = load i32, ptr %x11_offset, align 4, !tbaa !8
  %idxprom709 = sext i32 %744 to i64
  %arrayidx710 = getelementptr inbounds %struct.doublecomplex, ptr %743, i64 %idxprom709
  %745 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %746 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %747 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom711 = sext i32 %747 to i64
  %arrayidx712 = getelementptr inbounds %struct.doublecomplex, ptr %746, i64 %idxprom711
  %748 = load ptr, ptr %ldu1.addr, align 8, !tbaa !4
  %call713 = call i32 @zlacpy_(ptr noundef @.str.4, ptr noundef %741, ptr noundef %742, ptr noundef %arrayidx710, ptr noundef %745, ptr noundef %arrayidx712, ptr noundef %748)
  %749 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %750 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %751 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %752 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %753 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom714 = sext i32 %753 to i64
  %arrayidx715 = getelementptr inbounds %struct.doublecomplex, ptr %752, i64 %idxprom714
  %754 = load ptr, ptr %ldu1.addr, align 8, !tbaa !4
  %755 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %756 = load i32, ptr %itaup1, align 4, !tbaa !8
  %idxprom716 = sext i32 %756 to i64
  %arrayidx717 = getelementptr inbounds %struct.doublecomplex, ptr %755, i64 %idxprom716
  %757 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %758 = load i32, ptr %iorgqr, align 4, !tbaa !8
  %idxprom718 = sext i32 %758 to i64
  %arrayidx719 = getelementptr inbounds %struct.doublecomplex, ptr %757, i64 %idxprom718
  %759 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call720 = call i32 @zungqr_(ptr noundef %749, ptr noundef %750, ptr noundef %751, ptr noundef %arrayidx715, ptr noundef %754, ptr noundef %arrayidx717, ptr noundef %arrayidx719, ptr noundef %lorgqrwork, ptr noundef %759)
  br label %if.end721

if.end721:                                        ; preds = %if.then708, %land.lhs.true705, %if.then703
  %760 = load i32, ptr %wantu2, align 4, !tbaa !8
  %tobool722 = icmp ne i32 %760, 0
  br i1 %tobool722, label %land.lhs.true723, label %if.end743

land.lhs.true723:                                 ; preds = %if.end721
  %761 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %762 = load i32, ptr %761, align 4, !tbaa !8
  %763 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %764 = load i32, ptr %763, align 4, !tbaa !8
  %sub724 = sub nsw i32 %762, %764
  %cmp725 = icmp sgt i32 %sub724, 0
  br i1 %cmp725, label %if.then727, label %if.end743

if.then727:                                       ; preds = %land.lhs.true723
  %765 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %766 = load i32, ptr %765, align 4, !tbaa !8
  %767 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %768 = load i32, ptr %767, align 4, !tbaa !8
  %sub728 = sub nsw i32 %766, %768
  store i32 %sub728, ptr %i__1, align 4, !tbaa !8
  %769 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %770 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %771 = load i32, ptr %x21_offset, align 4, !tbaa !8
  %idxprom729 = sext i32 %771 to i64
  %arrayidx730 = getelementptr inbounds %struct.doublecomplex, ptr %770, i64 %idxprom729
  %772 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %773 = load ptr, ptr %u2.addr, align 8, !tbaa !4
  %774 = load i32, ptr %u2_offset, align 4, !tbaa !8
  %idxprom731 = sext i32 %774 to i64
  %arrayidx732 = getelementptr inbounds %struct.doublecomplex, ptr %773, i64 %idxprom731
  %775 = load ptr, ptr %ldu2.addr, align 8, !tbaa !4
  %call733 = call i32 @zlacpy_(ptr noundef @.str.4, ptr noundef %i__1, ptr noundef %769, ptr noundef %arrayidx730, ptr noundef %772, ptr noundef %arrayidx732, ptr noundef %775)
  %776 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %777 = load i32, ptr %776, align 4, !tbaa !8
  %778 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %779 = load i32, ptr %778, align 4, !tbaa !8
  %sub734 = sub nsw i32 %777, %779
  store i32 %sub734, ptr %i__1, align 4, !tbaa !8
  %780 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %781 = load i32, ptr %780, align 4, !tbaa !8
  %782 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %783 = load i32, ptr %782, align 4, !tbaa !8
  %sub735 = sub nsw i32 %781, %783
  store i32 %sub735, ptr %i__2, align 4, !tbaa !8
  %784 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %785 = load ptr, ptr %u2.addr, align 8, !tbaa !4
  %786 = load i32, ptr %u2_offset, align 4, !tbaa !8
  %idxprom736 = sext i32 %786 to i64
  %arrayidx737 = getelementptr inbounds %struct.doublecomplex, ptr %785, i64 %idxprom736
  %787 = load ptr, ptr %ldu2.addr, align 8, !tbaa !4
  %788 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %789 = load i32, ptr %itaup2, align 4, !tbaa !8
  %idxprom738 = sext i32 %789 to i64
  %arrayidx739 = getelementptr inbounds %struct.doublecomplex, ptr %788, i64 %idxprom738
  %790 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %791 = load i32, ptr %iorgqr, align 4, !tbaa !8
  %idxprom740 = sext i32 %791 to i64
  %arrayidx741 = getelementptr inbounds %struct.doublecomplex, ptr %790, i64 %idxprom740
  %792 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call742 = call i32 @zungqr_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %784, ptr noundef %arrayidx737, ptr noundef %787, ptr noundef %arrayidx739, ptr noundef %arrayidx741, ptr noundef %lorgqrwork, ptr noundef %792)
  br label %if.end743

if.end743:                                        ; preds = %if.then727, %land.lhs.true723, %if.end721
  %793 = load i32, ptr %wantv1t, align 4, !tbaa !8
  %tobool744 = icmp ne i32 %793, 0
  br i1 %tobool744, label %land.lhs.true745, label %if.end794

land.lhs.true745:                                 ; preds = %if.end743
  %794 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %795 = load i32, ptr %794, align 4, !tbaa !8
  %cmp746 = icmp sgt i32 %795, 0
  br i1 %cmp746, label %if.then748, label %if.end794

if.then748:                                       ; preds = %land.lhs.true745
  %796 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %797 = load i32, ptr %796, align 4, !tbaa !8
  %sub749 = sub nsw i32 %797, 1
  store i32 %sub749, ptr %i__1, align 4, !tbaa !8
  %798 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %799 = load i32, ptr %798, align 4, !tbaa !8
  %sub750 = sub nsw i32 %799, 1
  store i32 %sub750, ptr %i__2, align 4, !tbaa !8
  %800 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %801 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %shl = shl i32 %801, 1
  %add751 = add nsw i32 %shl, 1
  %idxprom752 = sext i32 %add751 to i64
  %arrayidx753 = getelementptr inbounds %struct.doublecomplex, ptr %800, i64 %idxprom752
  %802 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %803 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %804 = load i32, ptr %v1t_dim1, align 4, !tbaa !8
  %shl754 = shl i32 %804, 1
  %add755 = add nsw i32 %shl754, 2
  %idxprom756 = sext i32 %add755 to i64
  %arrayidx757 = getelementptr inbounds %struct.doublecomplex, ptr %803, i64 %idxprom756
  %805 = load ptr, ptr %ldv1t.addr, align 8, !tbaa !4
  %call758 = call i32 @zlacpy_(ptr noundef @.str.5, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx753, ptr noundef %802, ptr noundef %arrayidx757, ptr noundef %805)
  %806 = load i32, ptr %v1t_dim1, align 4, !tbaa !8
  %add759 = add nsw i32 %806, 1
  store i32 %add759, ptr %i__1, align 4, !tbaa !8
  %807 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %808 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom760 = sext i32 %808 to i64
  %arrayidx761 = getelementptr inbounds %struct.doublecomplex, ptr %807, i64 %idxprom760
  %r762 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx761, i32 0, i32 0
  store double 1.000000e+00, ptr %r762, align 8, !tbaa !13
  %809 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %810 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom763 = sext i32 %810 to i64
  %arrayidx764 = getelementptr inbounds %struct.doublecomplex, ptr %809, i64 %idxprom763
  %i765 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx764, i32 0, i32 1
  store double 0.000000e+00, ptr %i765, align 8, !tbaa !15
  %811 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %812 = load i32, ptr %811, align 4, !tbaa !8
  store i32 %812, ptr %i__1, align 4, !tbaa !8
  store i32 2, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then748
  %813 = load i32, ptr %j, align 4, !tbaa !8
  %814 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp766 = icmp sle i32 %813, %814
  br i1 %cmp766, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %815 = load i32, ptr %j, align 4, !tbaa !8
  %816 = load i32, ptr %v1t_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %815, %816
  %add768 = add nsw i32 %mul, 1
  store i32 %add768, ptr %i__2, align 4, !tbaa !8
  %817 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %818 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom769 = sext i32 %818 to i64
  %arrayidx770 = getelementptr inbounds %struct.doublecomplex, ptr %817, i64 %idxprom769
  %r771 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx770, i32 0, i32 0
  store double 0.000000e+00, ptr %r771, align 8, !tbaa !13
  %819 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %820 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom772 = sext i32 %820 to i64
  %arrayidx773 = getelementptr inbounds %struct.doublecomplex, ptr %819, i64 %idxprom772
  %i774 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx773, i32 0, i32 1
  store double 0.000000e+00, ptr %i774, align 8, !tbaa !15
  %821 = load i32, ptr %j, align 4, !tbaa !8
  %822 = load i32, ptr %v1t_dim1, align 4, !tbaa !8
  %add775 = add nsw i32 %821, %822
  store i32 %add775, ptr %i__2, align 4, !tbaa !8
  %823 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %824 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom776 = sext i32 %824 to i64
  %arrayidx777 = getelementptr inbounds %struct.doublecomplex, ptr %823, i64 %idxprom776
  %r778 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx777, i32 0, i32 0
  store double 0.000000e+00, ptr %r778, align 8, !tbaa !13
  %825 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %826 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom779 = sext i32 %826 to i64
  %arrayidx780 = getelementptr inbounds %struct.doublecomplex, ptr %825, i64 %idxprom779
  %i781 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx780, i32 0, i32 1
  store double 0.000000e+00, ptr %i781, align 8, !tbaa !15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %827 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %827, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %828 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %829 = load i32, ptr %828, align 4, !tbaa !8
  %sub782 = sub nsw i32 %829, 1
  store i32 %sub782, ptr %i__1, align 4, !tbaa !8
  %830 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %831 = load i32, ptr %830, align 4, !tbaa !8
  %sub783 = sub nsw i32 %831, 1
  store i32 %sub783, ptr %i__2, align 4, !tbaa !8
  %832 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %833 = load i32, ptr %832, align 4, !tbaa !8
  %sub784 = sub nsw i32 %833, 1
  store i32 %sub784, ptr %i__3, align 4, !tbaa !8
  %834 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %835 = load i32, ptr %v1t_dim1, align 4, !tbaa !8
  %shl785 = shl i32 %835, 1
  %add786 = add nsw i32 %shl785, 2
  %idxprom787 = sext i32 %add786 to i64
  %arrayidx788 = getelementptr inbounds %struct.doublecomplex, ptr %834, i64 %idxprom787
  %836 = load ptr, ptr %ldv1t.addr, align 8, !tbaa !4
  %837 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %838 = load i32, ptr %itauq1, align 4, !tbaa !8
  %idxprom789 = sext i32 %838 to i64
  %arrayidx790 = getelementptr inbounds %struct.doublecomplex, ptr %837, i64 %idxprom789
  %839 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %840 = load i32, ptr %iorglq, align 4, !tbaa !8
  %idxprom791 = sext i32 %840 to i64
  %arrayidx792 = getelementptr inbounds %struct.doublecomplex, ptr %839, i64 %idxprom791
  %841 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call793 = call i32 @zunglq_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx788, ptr noundef %836, ptr noundef %arrayidx790, ptr noundef %arrayidx792, ptr noundef %lorglqwork, ptr noundef %841)
  br label %if.end794

if.end794:                                        ; preds = %for.end, %land.lhs.true745, %if.end743
  %842 = load i32, ptr %wantv2t, align 4, !tbaa !8
  %tobool795 = icmp ne i32 %842, 0
  br i1 %tobool795, label %land.lhs.true796, label %if.end843

land.lhs.true796:                                 ; preds = %if.end794
  %843 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %844 = load i32, ptr %843, align 4, !tbaa !8
  %845 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %846 = load i32, ptr %845, align 4, !tbaa !8
  %sub797 = sub nsw i32 %844, %846
  %cmp798 = icmp sgt i32 %sub797, 0
  br i1 %cmp798, label %if.then800, label %if.end843

if.then800:                                       ; preds = %land.lhs.true796
  %847 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %848 = load i32, ptr %847, align 4, !tbaa !8
  %849 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %850 = load i32, ptr %849, align 4, !tbaa !8
  %sub801 = sub nsw i32 %848, %850
  store i32 %sub801, ptr %i__1, align 4, !tbaa !8
  %851 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %852 = load ptr, ptr %x12.addr, align 8, !tbaa !4
  %853 = load i32, ptr %x12_offset, align 4, !tbaa !8
  %idxprom802 = sext i32 %853 to i64
  %arrayidx803 = getelementptr inbounds %struct.doublecomplex, ptr %852, i64 %idxprom802
  %854 = load ptr, ptr %ldx12.addr, align 8, !tbaa !4
  %855 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %856 = load i32, ptr %v2t_offset, align 4, !tbaa !8
  %idxprom804 = sext i32 %856 to i64
  %arrayidx805 = getelementptr inbounds %struct.doublecomplex, ptr %855, i64 %idxprom804
  %857 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %call806 = call i32 @zlacpy_(ptr noundef @.str.5, ptr noundef %851, ptr noundef %i__1, ptr noundef %arrayidx803, ptr noundef %854, ptr noundef %arrayidx805, ptr noundef %857)
  %858 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %859 = load i32, ptr %858, align 4, !tbaa !8
  %860 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %861 = load i32, ptr %860, align 4, !tbaa !8
  %sub807 = sub nsw i32 %859, %861
  %862 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %863 = load i32, ptr %862, align 4, !tbaa !8
  %cmp808 = icmp sgt i32 %sub807, %863
  br i1 %cmp808, label %if.then810, label %if.end828

if.then810:                                       ; preds = %if.then800
  %864 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %865 = load i32, ptr %864, align 4, !tbaa !8
  %866 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %867 = load i32, ptr %866, align 4, !tbaa !8
  %sub811 = sub nsw i32 %865, %867
  %868 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %869 = load i32, ptr %868, align 4, !tbaa !8
  %sub812 = sub nsw i32 %sub811, %869
  store i32 %sub812, ptr %i__1, align 4, !tbaa !8
  %870 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %871 = load i32, ptr %870, align 4, !tbaa !8
  %872 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %873 = load i32, ptr %872, align 4, !tbaa !8
  %sub813 = sub nsw i32 %871, %873
  %874 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %875 = load i32, ptr %874, align 4, !tbaa !8
  %sub814 = sub nsw i32 %sub813, %875
  store i32 %sub814, ptr %i__2, align 4, !tbaa !8
  %876 = load ptr, ptr %x22.addr, align 8, !tbaa !4
  %877 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %878 = load i32, ptr %877, align 4, !tbaa !8
  %add815 = add nsw i32 %878, 1
  %879 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %880 = load i32, ptr %879, align 4, !tbaa !8
  %add816 = add nsw i32 %880, 1
  %881 = load i32, ptr %x22_dim1, align 4, !tbaa !8
  %mul817 = mul nsw i32 %add816, %881
  %add818 = add nsw i32 %add815, %mul817
  %idxprom819 = sext i32 %add818 to i64
  %arrayidx820 = getelementptr inbounds %struct.doublecomplex, ptr %876, i64 %idxprom819
  %882 = load ptr, ptr %ldx22.addr, align 8, !tbaa !4
  %883 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %884 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %885 = load i32, ptr %884, align 4, !tbaa !8
  %add821 = add nsw i32 %885, 1
  %886 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %887 = load i32, ptr %886, align 4, !tbaa !8
  %add822 = add nsw i32 %887, 1
  %888 = load i32, ptr %v2t_dim1, align 4, !tbaa !8
  %mul823 = mul nsw i32 %add822, %888
  %add824 = add nsw i32 %add821, %mul823
  %idxprom825 = sext i32 %add824 to i64
  %arrayidx826 = getelementptr inbounds %struct.doublecomplex, ptr %883, i64 %idxprom825
  %889 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %call827 = call i32 @zlacpy_(ptr noundef @.str.5, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx820, ptr noundef %882, ptr noundef %arrayidx826, ptr noundef %889)
  br label %if.end828

if.end828:                                        ; preds = %if.then810, %if.then800
  %890 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %891 = load i32, ptr %890, align 4, !tbaa !8
  %892 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %893 = load i32, ptr %892, align 4, !tbaa !8
  %cmp829 = icmp sgt i32 %891, %893
  br i1 %cmp829, label %if.then831, label %if.end842

if.then831:                                       ; preds = %if.end828
  %894 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %895 = load i32, ptr %894, align 4, !tbaa !8
  %896 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %897 = load i32, ptr %896, align 4, !tbaa !8
  %sub832 = sub nsw i32 %895, %897
  store i32 %sub832, ptr %i__1, align 4, !tbaa !8
  %898 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %899 = load i32, ptr %898, align 4, !tbaa !8
  %900 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %901 = load i32, ptr %900, align 4, !tbaa !8
  %sub833 = sub nsw i32 %899, %901
  store i32 %sub833, ptr %i__2, align 4, !tbaa !8
  %902 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %903 = load i32, ptr %902, align 4, !tbaa !8
  %904 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %905 = load i32, ptr %904, align 4, !tbaa !8
  %sub834 = sub nsw i32 %903, %905
  store i32 %sub834, ptr %i__3, align 4, !tbaa !8
  %906 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %907 = load i32, ptr %v2t_offset, align 4, !tbaa !8
  %idxprom835 = sext i32 %907 to i64
  %arrayidx836 = getelementptr inbounds %struct.doublecomplex, ptr %906, i64 %idxprom835
  %908 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %909 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %910 = load i32, ptr %itauq2, align 4, !tbaa !8
  %idxprom837 = sext i32 %910 to i64
  %arrayidx838 = getelementptr inbounds %struct.doublecomplex, ptr %909, i64 %idxprom837
  %911 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %912 = load i32, ptr %iorglq, align 4, !tbaa !8
  %idxprom839 = sext i32 %912 to i64
  %arrayidx840 = getelementptr inbounds %struct.doublecomplex, ptr %911, i64 %idxprom839
  %913 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call841 = call i32 @zunglq_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx836, ptr noundef %908, ptr noundef %arrayidx838, ptr noundef %arrayidx840, ptr noundef %lorglqwork, ptr noundef %913)
  br label %if.end842

if.end842:                                        ; preds = %if.then831, %if.end828
  br label %if.end843

if.end843:                                        ; preds = %if.end842, %land.lhs.true796, %if.end794
  br label %if.end1005

if.else844:                                       ; preds = %if.end679
  %914 = load i32, ptr %wantu1, align 4, !tbaa !8
  %tobool845 = icmp ne i32 %914, 0
  br i1 %tobool845, label %land.lhs.true846, label %if.end862

land.lhs.true846:                                 ; preds = %if.else844
  %915 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %916 = load i32, ptr %915, align 4, !tbaa !8
  %cmp847 = icmp sgt i32 %916, 0
  br i1 %cmp847, label %if.then849, label %if.end862

if.then849:                                       ; preds = %land.lhs.true846
  %917 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %918 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %919 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %920 = load i32, ptr %x11_offset, align 4, !tbaa !8
  %idxprom850 = sext i32 %920 to i64
  %arrayidx851 = getelementptr inbounds %struct.doublecomplex, ptr %919, i64 %idxprom850
  %921 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %922 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %923 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom852 = sext i32 %923 to i64
  %arrayidx853 = getelementptr inbounds %struct.doublecomplex, ptr %922, i64 %idxprom852
  %924 = load ptr, ptr %ldu1.addr, align 8, !tbaa !4
  %call854 = call i32 @zlacpy_(ptr noundef @.str.5, ptr noundef %917, ptr noundef %918, ptr noundef %arrayidx851, ptr noundef %921, ptr noundef %arrayidx853, ptr noundef %924)
  %925 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %926 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %927 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %928 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %929 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom855 = sext i32 %929 to i64
  %arrayidx856 = getelementptr inbounds %struct.doublecomplex, ptr %928, i64 %idxprom855
  %930 = load ptr, ptr %ldu1.addr, align 8, !tbaa !4
  %931 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %932 = load i32, ptr %itaup1, align 4, !tbaa !8
  %idxprom857 = sext i32 %932 to i64
  %arrayidx858 = getelementptr inbounds %struct.doublecomplex, ptr %931, i64 %idxprom857
  %933 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %934 = load i32, ptr %iorglq, align 4, !tbaa !8
  %idxprom859 = sext i32 %934 to i64
  %arrayidx860 = getelementptr inbounds %struct.doublecomplex, ptr %933, i64 %idxprom859
  %935 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call861 = call i32 @zunglq_(ptr noundef %925, ptr noundef %926, ptr noundef %927, ptr noundef %arrayidx856, ptr noundef %930, ptr noundef %arrayidx858, ptr noundef %arrayidx860, ptr noundef %lorglqwork, ptr noundef %935)
  br label %if.end862

if.end862:                                        ; preds = %if.then849, %land.lhs.true846, %if.else844
  %936 = load i32, ptr %wantu2, align 4, !tbaa !8
  %tobool863 = icmp ne i32 %936, 0
  br i1 %tobool863, label %land.lhs.true864, label %if.end884

land.lhs.true864:                                 ; preds = %if.end862
  %937 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %938 = load i32, ptr %937, align 4, !tbaa !8
  %939 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %940 = load i32, ptr %939, align 4, !tbaa !8
  %sub865 = sub nsw i32 %938, %940
  %cmp866 = icmp sgt i32 %sub865, 0
  br i1 %cmp866, label %if.then868, label %if.end884

if.then868:                                       ; preds = %land.lhs.true864
  %941 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %942 = load i32, ptr %941, align 4, !tbaa !8
  %943 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %944 = load i32, ptr %943, align 4, !tbaa !8
  %sub869 = sub nsw i32 %942, %944
  store i32 %sub869, ptr %i__1, align 4, !tbaa !8
  %945 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %946 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %947 = load i32, ptr %x21_offset, align 4, !tbaa !8
  %idxprom870 = sext i32 %947 to i64
  %arrayidx871 = getelementptr inbounds %struct.doublecomplex, ptr %946, i64 %idxprom870
  %948 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %949 = load ptr, ptr %u2.addr, align 8, !tbaa !4
  %950 = load i32, ptr %u2_offset, align 4, !tbaa !8
  %idxprom872 = sext i32 %950 to i64
  %arrayidx873 = getelementptr inbounds %struct.doublecomplex, ptr %949, i64 %idxprom872
  %951 = load ptr, ptr %ldu2.addr, align 8, !tbaa !4
  %call874 = call i32 @zlacpy_(ptr noundef @.str.5, ptr noundef %945, ptr noundef %i__1, ptr noundef %arrayidx871, ptr noundef %948, ptr noundef %arrayidx873, ptr noundef %951)
  %952 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %953 = load i32, ptr %952, align 4, !tbaa !8
  %954 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %955 = load i32, ptr %954, align 4, !tbaa !8
  %sub875 = sub nsw i32 %953, %955
  store i32 %sub875, ptr %i__1, align 4, !tbaa !8
  %956 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %957 = load i32, ptr %956, align 4, !tbaa !8
  %958 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %959 = load i32, ptr %958, align 4, !tbaa !8
  %sub876 = sub nsw i32 %957, %959
  store i32 %sub876, ptr %i__2, align 4, !tbaa !8
  %960 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %961 = load ptr, ptr %u2.addr, align 8, !tbaa !4
  %962 = load i32, ptr %u2_offset, align 4, !tbaa !8
  %idxprom877 = sext i32 %962 to i64
  %arrayidx878 = getelementptr inbounds %struct.doublecomplex, ptr %961, i64 %idxprom877
  %963 = load ptr, ptr %ldu2.addr, align 8, !tbaa !4
  %964 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %965 = load i32, ptr %itaup2, align 4, !tbaa !8
  %idxprom879 = sext i32 %965 to i64
  %arrayidx880 = getelementptr inbounds %struct.doublecomplex, ptr %964, i64 %idxprom879
  %966 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %967 = load i32, ptr %iorglq, align 4, !tbaa !8
  %idxprom881 = sext i32 %967 to i64
  %arrayidx882 = getelementptr inbounds %struct.doublecomplex, ptr %966, i64 %idxprom881
  %968 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call883 = call i32 @zunglq_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %960, ptr noundef %arrayidx878, ptr noundef %963, ptr noundef %arrayidx880, ptr noundef %arrayidx882, ptr noundef %lorglqwork, ptr noundef %968)
  br label %if.end884

if.end884:                                        ; preds = %if.then868, %land.lhs.true864, %if.end862
  %969 = load i32, ptr %wantv1t, align 4, !tbaa !8
  %tobool885 = icmp ne i32 %969, 0
  br i1 %tobool885, label %land.lhs.true886, label %if.end941

land.lhs.true886:                                 ; preds = %if.end884
  %970 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %971 = load i32, ptr %970, align 4, !tbaa !8
  %cmp887 = icmp sgt i32 %971, 0
  br i1 %cmp887, label %if.then889, label %if.end941

if.then889:                                       ; preds = %land.lhs.true886
  %972 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %973 = load i32, ptr %972, align 4, !tbaa !8
  %sub890 = sub nsw i32 %973, 1
  store i32 %sub890, ptr %i__1, align 4, !tbaa !8
  %974 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %975 = load i32, ptr %974, align 4, !tbaa !8
  %sub891 = sub nsw i32 %975, 1
  store i32 %sub891, ptr %i__2, align 4, !tbaa !8
  %976 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %977 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %add892 = add nsw i32 %977, 2
  %idxprom893 = sext i32 %add892 to i64
  %arrayidx894 = getelementptr inbounds %struct.doublecomplex, ptr %976, i64 %idxprom893
  %978 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %979 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %980 = load i32, ptr %v1t_dim1, align 4, !tbaa !8
  %shl895 = shl i32 %980, 1
  %add896 = add nsw i32 %shl895, 2
  %idxprom897 = sext i32 %add896 to i64
  %arrayidx898 = getelementptr inbounds %struct.doublecomplex, ptr %979, i64 %idxprom897
  %981 = load ptr, ptr %ldv1t.addr, align 8, !tbaa !4
  %call899 = call i32 @zlacpy_(ptr noundef @.str.4, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx894, ptr noundef %978, ptr noundef %arrayidx898, ptr noundef %981)
  %982 = load i32, ptr %v1t_dim1, align 4, !tbaa !8
  %add900 = add nsw i32 %982, 1
  store i32 %add900, ptr %i__1, align 4, !tbaa !8
  %983 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %984 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom901 = sext i32 %984 to i64
  %arrayidx902 = getelementptr inbounds %struct.doublecomplex, ptr %983, i64 %idxprom901
  %r903 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx902, i32 0, i32 0
  store double 1.000000e+00, ptr %r903, align 8, !tbaa !13
  %985 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %986 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom904 = sext i32 %986 to i64
  %arrayidx905 = getelementptr inbounds %struct.doublecomplex, ptr %985, i64 %idxprom904
  %i906 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx905, i32 0, i32 1
  store double 0.000000e+00, ptr %i906, align 8, !tbaa !15
  %987 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %988 = load i32, ptr %987, align 4, !tbaa !8
  store i32 %988, ptr %i__1, align 4, !tbaa !8
  store i32 2, ptr %j, align 4, !tbaa !8
  br label %for.cond907

for.cond907:                                      ; preds = %for.inc926, %if.then889
  %989 = load i32, ptr %j, align 4, !tbaa !8
  %990 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp908 = icmp sle i32 %989, %990
  br i1 %cmp908, label %for.body910, label %for.end928

for.body910:                                      ; preds = %for.cond907
  %991 = load i32, ptr %j, align 4, !tbaa !8
  %992 = load i32, ptr %v1t_dim1, align 4, !tbaa !8
  %mul911 = mul nsw i32 %991, %992
  %add912 = add nsw i32 %mul911, 1
  store i32 %add912, ptr %i__2, align 4, !tbaa !8
  %993 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %994 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom913 = sext i32 %994 to i64
  %arrayidx914 = getelementptr inbounds %struct.doublecomplex, ptr %993, i64 %idxprom913
  %r915 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx914, i32 0, i32 0
  store double 0.000000e+00, ptr %r915, align 8, !tbaa !13
  %995 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %996 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom916 = sext i32 %996 to i64
  %arrayidx917 = getelementptr inbounds %struct.doublecomplex, ptr %995, i64 %idxprom916
  %i918 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx917, i32 0, i32 1
  store double 0.000000e+00, ptr %i918, align 8, !tbaa !15
  %997 = load i32, ptr %j, align 4, !tbaa !8
  %998 = load i32, ptr %v1t_dim1, align 4, !tbaa !8
  %add919 = add nsw i32 %997, %998
  store i32 %add919, ptr %i__2, align 4, !tbaa !8
  %999 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %1000 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom920 = sext i32 %1000 to i64
  %arrayidx921 = getelementptr inbounds %struct.doublecomplex, ptr %999, i64 %idxprom920
  %r922 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx921, i32 0, i32 0
  store double 0.000000e+00, ptr %r922, align 8, !tbaa !13
  %1001 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %1002 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom923 = sext i32 %1002 to i64
  %arrayidx924 = getelementptr inbounds %struct.doublecomplex, ptr %1001, i64 %idxprom923
  %i925 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx924, i32 0, i32 1
  store double 0.000000e+00, ptr %i925, align 8, !tbaa !15
  br label %for.inc926

for.inc926:                                       ; preds = %for.body910
  %1003 = load i32, ptr %j, align 4, !tbaa !8
  %inc927 = add nsw i32 %1003, 1
  store i32 %inc927, ptr %j, align 4, !tbaa !8
  br label %for.cond907, !llvm.loop !18

for.end928:                                       ; preds = %for.cond907
  %1004 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1005 = load i32, ptr %1004, align 4, !tbaa !8
  %sub929 = sub nsw i32 %1005, 1
  store i32 %sub929, ptr %i__1, align 4, !tbaa !8
  %1006 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1007 = load i32, ptr %1006, align 4, !tbaa !8
  %sub930 = sub nsw i32 %1007, 1
  store i32 %sub930, ptr %i__2, align 4, !tbaa !8
  %1008 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1009 = load i32, ptr %1008, align 4, !tbaa !8
  %sub931 = sub nsw i32 %1009, 1
  store i32 %sub931, ptr %i__3, align 4, !tbaa !8
  %1010 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %1011 = load i32, ptr %v1t_dim1, align 4, !tbaa !8
  %shl932 = shl i32 %1011, 1
  %add933 = add nsw i32 %shl932, 2
  %idxprom934 = sext i32 %add933 to i64
  %arrayidx935 = getelementptr inbounds %struct.doublecomplex, ptr %1010, i64 %idxprom934
  %1012 = load ptr, ptr %ldv1t.addr, align 8, !tbaa !4
  %1013 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1014 = load i32, ptr %itauq1, align 4, !tbaa !8
  %idxprom936 = sext i32 %1014 to i64
  %arrayidx937 = getelementptr inbounds %struct.doublecomplex, ptr %1013, i64 %idxprom936
  %1015 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1016 = load i32, ptr %iorgqr, align 4, !tbaa !8
  %idxprom938 = sext i32 %1016 to i64
  %arrayidx939 = getelementptr inbounds %struct.doublecomplex, ptr %1015, i64 %idxprom938
  %1017 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call940 = call i32 @zungqr_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx935, ptr noundef %1012, ptr noundef %arrayidx937, ptr noundef %arrayidx939, ptr noundef %lorgqrwork, ptr noundef %1017)
  br label %if.end941

if.end941:                                        ; preds = %for.end928, %land.lhs.true886, %if.end884
  %1018 = load i32, ptr %wantv2t, align 4, !tbaa !8
  %tobool942 = icmp ne i32 %1018, 0
  br i1 %tobool942, label %land.lhs.true943, label %if.end1004

land.lhs.true943:                                 ; preds = %if.end941
  %1019 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1020 = load i32, ptr %1019, align 4, !tbaa !8
  %1021 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1022 = load i32, ptr %1021, align 4, !tbaa !8
  %sub944 = sub nsw i32 %1020, %1022
  %cmp945 = icmp sgt i32 %sub944, 0
  br i1 %cmp945, label %if.then947, label %if.end1004

if.then947:                                       ; preds = %land.lhs.true943
  %1023 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1024 = load i32, ptr %1023, align 4, !tbaa !8
  %add948 = add nsw i32 %1024, 1
  store i32 %add948, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x949) #3
  %1025 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %1025, ptr %_x949, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y950) #3
  %1026 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1027 = load i32, ptr %1026, align 4, !tbaa !8
  store i32 %1027, ptr %_y950, align 4, !tbaa !8
  %1028 = load i32, ptr %_x949, align 4, !tbaa !8
  %1029 = load i32, ptr %_y950, align 4, !tbaa !8
  %cmp952 = icmp slt i32 %1028, %1029
  br i1 %cmp952, label %cond.true954, label %cond.false955

cond.true954:                                     ; preds = %if.then947
  %1030 = load i32, ptr %_x949, align 4, !tbaa !8
  br label %cond.end956

cond.false955:                                    ; preds = %if.then947
  %1031 = load i32, ptr %_y950, align 4, !tbaa !8
  br label %cond.end956

cond.end956:                                      ; preds = %cond.false955, %cond.true954
  %cond957 = phi i32 [ %1030, %cond.true954 ], [ %1031, %cond.false955 ]
  store i32 %cond957, ptr %tmp951, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y950) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x949) #3
  %1032 = load i32, ptr %tmp951, align 4, !tbaa !8
  store i32 %1032, ptr %p1, align 4, !tbaa !8
  %1033 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1034 = load i32, ptr %1033, align 4, !tbaa !8
  %add958 = add nsw i32 %1034, 1
  store i32 %add958, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x959) #3
  %1035 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %1035, ptr %_x959, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y960) #3
  %1036 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1037 = load i32, ptr %1036, align 4, !tbaa !8
  store i32 %1037, ptr %_y960, align 4, !tbaa !8
  %1038 = load i32, ptr %_x959, align 4, !tbaa !8
  %1039 = load i32, ptr %_y960, align 4, !tbaa !8
  %cmp962 = icmp slt i32 %1038, %1039
  br i1 %cmp962, label %cond.true964, label %cond.false965

cond.true964:                                     ; preds = %cond.end956
  %1040 = load i32, ptr %_x959, align 4, !tbaa !8
  br label %cond.end966

cond.false965:                                    ; preds = %cond.end956
  %1041 = load i32, ptr %_y960, align 4, !tbaa !8
  br label %cond.end966

cond.end966:                                      ; preds = %cond.false965, %cond.true964
  %cond967 = phi i32 [ %1040, %cond.true964 ], [ %1041, %cond.false965 ]
  store i32 %cond967, ptr %tmp961, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y960) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x959) #3
  %1042 = load i32, ptr %tmp961, align 4, !tbaa !8
  store i32 %1042, ptr %q1, align 4, !tbaa !8
  %1043 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1044 = load i32, ptr %1043, align 4, !tbaa !8
  %1045 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1046 = load i32, ptr %1045, align 4, !tbaa !8
  %sub968 = sub nsw i32 %1044, %1046
  store i32 %sub968, ptr %i__1, align 4, !tbaa !8
  %1047 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1048 = load ptr, ptr %x12.addr, align 8, !tbaa !4
  %1049 = load i32, ptr %x12_offset, align 4, !tbaa !8
  %idxprom969 = sext i32 %1049 to i64
  %arrayidx970 = getelementptr inbounds %struct.doublecomplex, ptr %1048, i64 %idxprom969
  %1050 = load ptr, ptr %ldx12.addr, align 8, !tbaa !4
  %1051 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %1052 = load i32, ptr %v2t_offset, align 4, !tbaa !8
  %idxprom971 = sext i32 %1052 to i64
  %arrayidx972 = getelementptr inbounds %struct.doublecomplex, ptr %1051, i64 %idxprom971
  %1053 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %call973 = call i32 @zlacpy_(ptr noundef @.str.4, ptr noundef %i__1, ptr noundef %1047, ptr noundef %arrayidx970, ptr noundef %1050, ptr noundef %arrayidx972, ptr noundef %1053)
  %1054 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1055 = load i32, ptr %1054, align 4, !tbaa !8
  %1056 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1057 = load i32, ptr %1056, align 4, !tbaa !8
  %1058 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1059 = load i32, ptr %1058, align 4, !tbaa !8
  %add974 = add nsw i32 %1057, %1059
  %cmp975 = icmp sgt i32 %1055, %add974
  br i1 %cmp975, label %if.then977, label %if.end993

if.then977:                                       ; preds = %cond.end966
  %1060 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1061 = load i32, ptr %1060, align 4, !tbaa !8
  %1062 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1063 = load i32, ptr %1062, align 4, !tbaa !8
  %sub978 = sub nsw i32 %1061, %1063
  %1064 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1065 = load i32, ptr %1064, align 4, !tbaa !8
  %sub979 = sub nsw i32 %sub978, %1065
  store i32 %sub979, ptr %i__1, align 4, !tbaa !8
  %1066 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1067 = load i32, ptr %1066, align 4, !tbaa !8
  %1068 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1069 = load i32, ptr %1068, align 4, !tbaa !8
  %sub980 = sub nsw i32 %1067, %1069
  %1070 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1071 = load i32, ptr %1070, align 4, !tbaa !8
  %sub981 = sub nsw i32 %sub980, %1071
  store i32 %sub981, ptr %i__2, align 4, !tbaa !8
  %1072 = load ptr, ptr %x22.addr, align 8, !tbaa !4
  %1073 = load i32, ptr %p1, align 4, !tbaa !8
  %1074 = load i32, ptr %q1, align 4, !tbaa !8
  %1075 = load i32, ptr %x22_dim1, align 4, !tbaa !8
  %mul982 = mul nsw i32 %1074, %1075
  %add983 = add nsw i32 %1073, %mul982
  %idxprom984 = sext i32 %add983 to i64
  %arrayidx985 = getelementptr inbounds %struct.doublecomplex, ptr %1072, i64 %idxprom984
  %1076 = load ptr, ptr %ldx22.addr, align 8, !tbaa !4
  %1077 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %1078 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1079 = load i32, ptr %1078, align 4, !tbaa !8
  %add986 = add nsw i32 %1079, 1
  %1080 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1081 = load i32, ptr %1080, align 4, !tbaa !8
  %add987 = add nsw i32 %1081, 1
  %1082 = load i32, ptr %v2t_dim1, align 4, !tbaa !8
  %mul988 = mul nsw i32 %add987, %1082
  %add989 = add nsw i32 %add986, %mul988
  %idxprom990 = sext i32 %add989 to i64
  %arrayidx991 = getelementptr inbounds %struct.doublecomplex, ptr %1077, i64 %idxprom990
  %1083 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %call992 = call i32 @zlacpy_(ptr noundef @.str.4, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx985, ptr noundef %1076, ptr noundef %arrayidx991, ptr noundef %1083)
  br label %if.end993

if.end993:                                        ; preds = %if.then977, %cond.end966
  %1084 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1085 = load i32, ptr %1084, align 4, !tbaa !8
  %1086 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1087 = load i32, ptr %1086, align 4, !tbaa !8
  %sub994 = sub nsw i32 %1085, %1087
  store i32 %sub994, ptr %i__1, align 4, !tbaa !8
  %1088 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1089 = load i32, ptr %1088, align 4, !tbaa !8
  %1090 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1091 = load i32, ptr %1090, align 4, !tbaa !8
  %sub995 = sub nsw i32 %1089, %1091
  store i32 %sub995, ptr %i__2, align 4, !tbaa !8
  %1092 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1093 = load i32, ptr %1092, align 4, !tbaa !8
  %1094 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1095 = load i32, ptr %1094, align 4, !tbaa !8
  %sub996 = sub nsw i32 %1093, %1095
  store i32 %sub996, ptr %i__3, align 4, !tbaa !8
  %1096 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %1097 = load i32, ptr %v2t_offset, align 4, !tbaa !8
  %idxprom997 = sext i32 %1097 to i64
  %arrayidx998 = getelementptr inbounds %struct.doublecomplex, ptr %1096, i64 %idxprom997
  %1098 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %1099 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1100 = load i32, ptr %itauq2, align 4, !tbaa !8
  %idxprom999 = sext i32 %1100 to i64
  %arrayidx1000 = getelementptr inbounds %struct.doublecomplex, ptr %1099, i64 %idxprom999
  %1101 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1102 = load i32, ptr %iorgqr, align 4, !tbaa !8
  %idxprom1001 = sext i32 %1102 to i64
  %arrayidx1002 = getelementptr inbounds %struct.doublecomplex, ptr %1101, i64 %idxprom1001
  %1103 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call1003 = call i32 @zungqr_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx998, ptr noundef %1098, ptr noundef %arrayidx1000, ptr noundef %arrayidx1002, ptr noundef %lorgqrwork, ptr noundef %1103)
  br label %if.end1004

if.end1004:                                       ; preds = %if.end993, %land.lhs.true943, %if.end941
  br label %if.end1005

if.end1005:                                       ; preds = %if.end1004, %if.end843
  %1104 = load ptr, ptr %jobu1.addr, align 8, !tbaa !4
  %1105 = load ptr, ptr %jobu2.addr, align 8, !tbaa !4
  %1106 = load ptr, ptr %jobv1t.addr, align 8, !tbaa !4
  %1107 = load ptr, ptr %jobv2t.addr, align 8, !tbaa !4
  %1108 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %1109 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1110 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1111 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1112 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %arrayidx1006 = getelementptr inbounds double, ptr %1112, i64 1
  %1113 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %1114 = load i32, ptr %iphi, align 4, !tbaa !8
  %idxprom1007 = sext i32 %1114 to i64
  %arrayidx1008 = getelementptr inbounds double, ptr %1113, i64 %idxprom1007
  %1115 = load ptr, ptr %u1.addr, align 8, !tbaa !4
  %1116 = load i32, ptr %u1_offset, align 4, !tbaa !8
  %idxprom1009 = sext i32 %1116 to i64
  %arrayidx1010 = getelementptr inbounds %struct.doublecomplex, ptr %1115, i64 %idxprom1009
  %1117 = load ptr, ptr %ldu1.addr, align 8, !tbaa !4
  %1118 = load ptr, ptr %u2.addr, align 8, !tbaa !4
  %1119 = load i32, ptr %u2_offset, align 4, !tbaa !8
  %idxprom1011 = sext i32 %1119 to i64
  %arrayidx1012 = getelementptr inbounds %struct.doublecomplex, ptr %1118, i64 %idxprom1011
  %1120 = load ptr, ptr %ldu2.addr, align 8, !tbaa !4
  %1121 = load ptr, ptr %v1t.addr, align 8, !tbaa !4
  %1122 = load i32, ptr %v1t_offset, align 4, !tbaa !8
  %idxprom1013 = sext i32 %1122 to i64
  %arrayidx1014 = getelementptr inbounds %struct.doublecomplex, ptr %1121, i64 %idxprom1013
  %1123 = load ptr, ptr %ldv1t.addr, align 8, !tbaa !4
  %1124 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %1125 = load i32, ptr %v2t_offset, align 4, !tbaa !8
  %idxprom1015 = sext i32 %1125 to i64
  %arrayidx1016 = getelementptr inbounds %struct.doublecomplex, ptr %1124, i64 %idxprom1015
  %1126 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %1127 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %1128 = load i32, ptr %ib11d, align 4, !tbaa !8
  %idxprom1017 = sext i32 %1128 to i64
  %arrayidx1018 = getelementptr inbounds double, ptr %1127, i64 %idxprom1017
  %1129 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %1130 = load i32, ptr %ib11e, align 4, !tbaa !8
  %idxprom1019 = sext i32 %1130 to i64
  %arrayidx1020 = getelementptr inbounds double, ptr %1129, i64 %idxprom1019
  %1131 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %1132 = load i32, ptr %ib12d, align 4, !tbaa !8
  %idxprom1021 = sext i32 %1132 to i64
  %arrayidx1022 = getelementptr inbounds double, ptr %1131, i64 %idxprom1021
  %1133 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %1134 = load i32, ptr %ib12e, align 4, !tbaa !8
  %idxprom1023 = sext i32 %1134 to i64
  %arrayidx1024 = getelementptr inbounds double, ptr %1133, i64 %idxprom1023
  %1135 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %1136 = load i32, ptr %ib21d, align 4, !tbaa !8
  %idxprom1025 = sext i32 %1136 to i64
  %arrayidx1026 = getelementptr inbounds double, ptr %1135, i64 %idxprom1025
  %1137 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %1138 = load i32, ptr %ib21e, align 4, !tbaa !8
  %idxprom1027 = sext i32 %1138 to i64
  %arrayidx1028 = getelementptr inbounds double, ptr %1137, i64 %idxprom1027
  %1139 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %1140 = load i32, ptr %ib22d, align 4, !tbaa !8
  %idxprom1029 = sext i32 %1140 to i64
  %arrayidx1030 = getelementptr inbounds double, ptr %1139, i64 %idxprom1029
  %1141 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %1142 = load i32, ptr %ib22e, align 4, !tbaa !8
  %idxprom1031 = sext i32 %1142 to i64
  %arrayidx1032 = getelementptr inbounds double, ptr %1141, i64 %idxprom1031
  %1143 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %1144 = load i32, ptr %ibbcsd, align 4, !tbaa !8
  %idxprom1033 = sext i32 %1144 to i64
  %arrayidx1034 = getelementptr inbounds double, ptr %1143, i64 %idxprom1033
  %1145 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call1035 = call i32 @zbbcsd_(ptr noundef %1104, ptr noundef %1105, ptr noundef %1106, ptr noundef %1107, ptr noundef %1108, ptr noundef %1109, ptr noundef %1110, ptr noundef %1111, ptr noundef %arrayidx1006, ptr noundef %arrayidx1008, ptr noundef %arrayidx1010, ptr noundef %1117, ptr noundef %arrayidx1012, ptr noundef %1120, ptr noundef %arrayidx1014, ptr noundef %1123, ptr noundef %arrayidx1016, ptr noundef %1126, ptr noundef %arrayidx1018, ptr noundef %arrayidx1020, ptr noundef %arrayidx1022, ptr noundef %arrayidx1024, ptr noundef %arrayidx1026, ptr noundef %arrayidx1028, ptr noundef %arrayidx1030, ptr noundef %arrayidx1032, ptr noundef %arrayidx1034, ptr noundef %lbbcsdwork, ptr noundef %1145)
  %1146 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1147 = load i32, ptr %1146, align 4, !tbaa !8
  %cmp1036 = icmp sgt i32 %1147, 0
  br i1 %cmp1036, label %land.lhs.true1038, label %if.end1081

land.lhs.true1038:                                ; preds = %if.end1005
  %1148 = load i32, ptr %wantu2, align 4, !tbaa !8
  %tobool1039 = icmp ne i32 %1148, 0
  br i1 %tobool1039, label %if.then1040, label %if.end1081

if.then1040:                                      ; preds = %land.lhs.true1038
  %1149 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1150 = load i32, ptr %1149, align 4, !tbaa !8
  store i32 %1150, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond1041

for.cond1041:                                     ; preds = %for.inc1050, %if.then1040
  %1151 = load i32, ptr %i__, align 4, !tbaa !8
  %1152 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1042 = icmp sle i32 %1151, %1152
  br i1 %cmp1042, label %for.body1044, label %for.end1052

for.body1044:                                     ; preds = %for.cond1041
  %1153 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1154 = load i32, ptr %1153, align 4, !tbaa !8
  %1155 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1156 = load i32, ptr %1155, align 4, !tbaa !8
  %sub1045 = sub nsw i32 %1154, %1156
  %1157 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1158 = load i32, ptr %1157, align 4, !tbaa !8
  %sub1046 = sub nsw i32 %sub1045, %1158
  %1159 = load i32, ptr %i__, align 4, !tbaa !8
  %add1047 = add nsw i32 %sub1046, %1159
  %1160 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %1161 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom1048 = sext i32 %1161 to i64
  %arrayidx1049 = getelementptr inbounds i32, ptr %1160, i64 %idxprom1048
  store i32 %add1047, ptr %arrayidx1049, align 4, !tbaa !8
  br label %for.inc1050

for.inc1050:                                      ; preds = %for.body1044
  %1162 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1051 = add nsw i32 %1162, 1
  store i32 %inc1051, ptr %i__, align 4, !tbaa !8
  br label %for.cond1041, !llvm.loop !19

for.end1052:                                      ; preds = %for.cond1041
  %1163 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1164 = load i32, ptr %1163, align 4, !tbaa !8
  %1165 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1166 = load i32, ptr %1165, align 4, !tbaa !8
  %sub1053 = sub nsw i32 %1164, %1166
  store i32 %sub1053, ptr %i__1, align 4, !tbaa !8
  %1167 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1168 = load i32, ptr %1167, align 4, !tbaa !8
  %add1054 = add nsw i32 %1168, 1
  store i32 %add1054, ptr %i__, align 4, !tbaa !8
  br label %for.cond1055

for.cond1055:                                     ; preds = %for.inc1062, %for.end1052
  %1169 = load i32, ptr %i__, align 4, !tbaa !8
  %1170 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1056 = icmp sle i32 %1169, %1170
  br i1 %cmp1056, label %for.body1058, label %for.end1064

for.body1058:                                     ; preds = %for.cond1055
  %1171 = load i32, ptr %i__, align 4, !tbaa !8
  %1172 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1173 = load i32, ptr %1172, align 4, !tbaa !8
  %sub1059 = sub nsw i32 %1171, %1173
  %1174 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %1175 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom1060 = sext i32 %1175 to i64
  %arrayidx1061 = getelementptr inbounds i32, ptr %1174, i64 %idxprom1060
  store i32 %sub1059, ptr %arrayidx1061, align 4, !tbaa !8
  br label %for.inc1062

for.inc1062:                                      ; preds = %for.body1058
  %1176 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1063 = add nsw i32 %1176, 1
  store i32 %inc1063, ptr %i__, align 4, !tbaa !8
  br label %for.cond1055, !llvm.loop !20

for.end1064:                                      ; preds = %for.cond1055
  %1177 = load i32, ptr %colmajor, align 4, !tbaa !8
  %tobool1065 = icmp ne i32 %1177, 0
  br i1 %tobool1065, label %if.then1066, label %if.else1073

if.then1066:                                      ; preds = %for.end1064
  %1178 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1179 = load i32, ptr %1178, align 4, !tbaa !8
  %1180 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1181 = load i32, ptr %1180, align 4, !tbaa !8
  %sub1067 = sub nsw i32 %1179, %1181
  store i32 %sub1067, ptr %i__1, align 4, !tbaa !8
  %1182 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1183 = load i32, ptr %1182, align 4, !tbaa !8
  %1184 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1185 = load i32, ptr %1184, align 4, !tbaa !8
  %sub1068 = sub nsw i32 %1183, %1185
  store i32 %sub1068, ptr %i__2, align 4, !tbaa !8
  %1186 = load ptr, ptr %u2.addr, align 8, !tbaa !4
  %1187 = load i32, ptr %u2_offset, align 4, !tbaa !8
  %idxprom1069 = sext i32 %1187 to i64
  %arrayidx1070 = getelementptr inbounds %struct.doublecomplex, ptr %1186, i64 %idxprom1069
  %1188 = load ptr, ptr %ldu2.addr, align 8, !tbaa !4
  %1189 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %arrayidx1071 = getelementptr inbounds i32, ptr %1189, i64 1
  %call1072 = call i32 @zlapmt_(ptr noundef @c_false, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx1070, ptr noundef %1188, ptr noundef %arrayidx1071)
  br label %if.end1080

if.else1073:                                      ; preds = %for.end1064
  %1190 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1191 = load i32, ptr %1190, align 4, !tbaa !8
  %1192 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1193 = load i32, ptr %1192, align 4, !tbaa !8
  %sub1074 = sub nsw i32 %1191, %1193
  store i32 %sub1074, ptr %i__1, align 4, !tbaa !8
  %1194 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1195 = load i32, ptr %1194, align 4, !tbaa !8
  %1196 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1197 = load i32, ptr %1196, align 4, !tbaa !8
  %sub1075 = sub nsw i32 %1195, %1197
  store i32 %sub1075, ptr %i__2, align 4, !tbaa !8
  %1198 = load ptr, ptr %u2.addr, align 8, !tbaa !4
  %1199 = load i32, ptr %u2_offset, align 4, !tbaa !8
  %idxprom1076 = sext i32 %1199 to i64
  %arrayidx1077 = getelementptr inbounds %struct.doublecomplex, ptr %1198, i64 %idxprom1076
  %1200 = load ptr, ptr %ldu2.addr, align 8, !tbaa !4
  %1201 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %arrayidx1078 = getelementptr inbounds i32, ptr %1201, i64 1
  %call1079 = call i32 @zlapmr_(ptr noundef @c_false, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx1077, ptr noundef %1200, ptr noundef %arrayidx1078)
  br label %if.end1080

if.end1080:                                       ; preds = %if.else1073, %if.then1066
  br label %if.end1081

if.end1081:                                       ; preds = %if.end1080, %land.lhs.true1038, %if.end1005
  %1202 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1203 = load i32, ptr %1202, align 4, !tbaa !8
  %cmp1082 = icmp sgt i32 %1203, 0
  br i1 %cmp1082, label %land.lhs.true1084, label %if.end1127

land.lhs.true1084:                                ; preds = %if.end1081
  %1204 = load i32, ptr %wantv2t, align 4, !tbaa !8
  %tobool1085 = icmp ne i32 %1204, 0
  br i1 %tobool1085, label %if.then1086, label %if.end1127

if.then1086:                                      ; preds = %land.lhs.true1084
  %1205 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1206 = load i32, ptr %1205, align 4, !tbaa !8
  store i32 %1206, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond1087

for.cond1087:                                     ; preds = %for.inc1096, %if.then1086
  %1207 = load i32, ptr %i__, align 4, !tbaa !8
  %1208 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1088 = icmp sle i32 %1207, %1208
  br i1 %cmp1088, label %for.body1090, label %for.end1098

for.body1090:                                     ; preds = %for.cond1087
  %1209 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1210 = load i32, ptr %1209, align 4, !tbaa !8
  %1211 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1212 = load i32, ptr %1211, align 4, !tbaa !8
  %sub1091 = sub nsw i32 %1210, %1212
  %1213 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1214 = load i32, ptr %1213, align 4, !tbaa !8
  %sub1092 = sub nsw i32 %sub1091, %1214
  %1215 = load i32, ptr %i__, align 4, !tbaa !8
  %add1093 = add nsw i32 %sub1092, %1215
  %1216 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %1217 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom1094 = sext i32 %1217 to i64
  %arrayidx1095 = getelementptr inbounds i32, ptr %1216, i64 %idxprom1094
  store i32 %add1093, ptr %arrayidx1095, align 4, !tbaa !8
  br label %for.inc1096

for.inc1096:                                      ; preds = %for.body1090
  %1218 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1097 = add nsw i32 %1218, 1
  store i32 %inc1097, ptr %i__, align 4, !tbaa !8
  br label %for.cond1087, !llvm.loop !21

for.end1098:                                      ; preds = %for.cond1087
  %1219 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1220 = load i32, ptr %1219, align 4, !tbaa !8
  %1221 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1222 = load i32, ptr %1221, align 4, !tbaa !8
  %sub1099 = sub nsw i32 %1220, %1222
  store i32 %sub1099, ptr %i__1, align 4, !tbaa !8
  %1223 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1224 = load i32, ptr %1223, align 4, !tbaa !8
  %add1100 = add nsw i32 %1224, 1
  store i32 %add1100, ptr %i__, align 4, !tbaa !8
  br label %for.cond1101

for.cond1101:                                     ; preds = %for.inc1108, %for.end1098
  %1225 = load i32, ptr %i__, align 4, !tbaa !8
  %1226 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1102 = icmp sle i32 %1225, %1226
  br i1 %cmp1102, label %for.body1104, label %for.end1110

for.body1104:                                     ; preds = %for.cond1101
  %1227 = load i32, ptr %i__, align 4, !tbaa !8
  %1228 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %1229 = load i32, ptr %1228, align 4, !tbaa !8
  %sub1105 = sub nsw i32 %1227, %1229
  %1230 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %1231 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom1106 = sext i32 %1231 to i64
  %arrayidx1107 = getelementptr inbounds i32, ptr %1230, i64 %idxprom1106
  store i32 %sub1105, ptr %arrayidx1107, align 4, !tbaa !8
  br label %for.inc1108

for.inc1108:                                      ; preds = %for.body1104
  %1232 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1109 = add nsw i32 %1232, 1
  store i32 %inc1109, ptr %i__, align 4, !tbaa !8
  br label %for.cond1101, !llvm.loop !22

for.end1110:                                      ; preds = %for.cond1101
  %1233 = load i32, ptr %colmajor, align 4, !tbaa !8
  %tobool1111 = icmp ne i32 %1233, 0
  br i1 %tobool1111, label %if.else1119, label %if.then1112

if.then1112:                                      ; preds = %for.end1110
  %1234 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1235 = load i32, ptr %1234, align 4, !tbaa !8
  %1236 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1237 = load i32, ptr %1236, align 4, !tbaa !8
  %sub1113 = sub nsw i32 %1235, %1237
  store i32 %sub1113, ptr %i__1, align 4, !tbaa !8
  %1238 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1239 = load i32, ptr %1238, align 4, !tbaa !8
  %1240 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1241 = load i32, ptr %1240, align 4, !tbaa !8
  %sub1114 = sub nsw i32 %1239, %1241
  store i32 %sub1114, ptr %i__2, align 4, !tbaa !8
  %1242 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %1243 = load i32, ptr %v2t_offset, align 4, !tbaa !8
  %idxprom1115 = sext i32 %1243 to i64
  %arrayidx1116 = getelementptr inbounds %struct.doublecomplex, ptr %1242, i64 %idxprom1115
  %1244 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %1245 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %arrayidx1117 = getelementptr inbounds i32, ptr %1245, i64 1
  %call1118 = call i32 @zlapmt_(ptr noundef @c_false, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx1116, ptr noundef %1244, ptr noundef %arrayidx1117)
  br label %if.end1126

if.else1119:                                      ; preds = %for.end1110
  %1246 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1247 = load i32, ptr %1246, align 4, !tbaa !8
  %1248 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1249 = load i32, ptr %1248, align 4, !tbaa !8
  %sub1120 = sub nsw i32 %1247, %1249
  store i32 %sub1120, ptr %i__1, align 4, !tbaa !8
  %1250 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1251 = load i32, ptr %1250, align 4, !tbaa !8
  %1252 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %1253 = load i32, ptr %1252, align 4, !tbaa !8
  %sub1121 = sub nsw i32 %1251, %1253
  store i32 %sub1121, ptr %i__2, align 4, !tbaa !8
  %1254 = load ptr, ptr %v2t.addr, align 8, !tbaa !4
  %1255 = load i32, ptr %v2t_offset, align 4, !tbaa !8
  %idxprom1122 = sext i32 %1255 to i64
  %arrayidx1123 = getelementptr inbounds %struct.doublecomplex, ptr %1254, i64 %idxprom1122
  %1256 = load ptr, ptr %ldv2t.addr, align 8, !tbaa !4
  %1257 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %arrayidx1124 = getelementptr inbounds i32, ptr %1257, i64 1
  %call1125 = call i32 @zlapmr_(ptr noundef @c_false, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx1123, ptr noundef %1256, ptr noundef %arrayidx1124)
  br label %if.end1126

if.end1126:                                       ; preds = %if.else1119, %if.then1112
  br label %if.end1127

if.end1127:                                       ; preds = %if.end1126, %land.lhs.true1084, %if.end1081
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1127, %if.then677, %if.then670, %if.end282, %if.end247
  call void @llvm.lifetime.end.p0(i64 4, ptr %lrquery) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantv2t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantv1t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lquery) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %transt) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %signst) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iorgqr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iorglq) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lorgqrworkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lorglqworkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lorgqrworkmin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lorglqworkmin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iorbdb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lorbdbworkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ibbcsd) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantu2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantu1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lbbcsdworkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lorbdbworkmin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %itauq2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %itauq1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %itaup2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %itaup1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lbbcsdworkmin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %defaultsigns) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iphi) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ib22e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ib22d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ib21e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ib21d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ib12e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ib12d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ib11e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ib11d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lorgqrwork) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lorglqwork) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lorbdbwork) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lbbcsdwork) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lrworkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lrworkmin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %p1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %childinfo) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lworkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lworkmin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %colmajor) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x22_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x22_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x21_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x21_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x12_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x12_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x11_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x11_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %v2t_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %v2t_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %v1t_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %v1t_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %u2_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %u2_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %u1_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %u1_dim1) #3
  %1258 = load i32, ptr %retval, align 4
  ret i32 %1258
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @zbbcsd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zungqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zunglq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zunbdb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @zlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zlapmt_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zlapmr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind }

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
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"", !12, i64 0, !12, i64 8}
!15 = !{!14, !12, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}

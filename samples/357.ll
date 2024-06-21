; ModuleID = 'samples/357.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/ctrsyl3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"CTRSYL\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@c_n1 = internal global i32 -1, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"CTRSYL3\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@c_b18 = internal global double 2.000000e+00, align 8
@c_b1 = internal global %struct.complex { float 1.000000e+00, float 0.000000e+00 }, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@c_b106 = internal global float 1.000000e+00, align 4

; Function Attrs: nounwind uwtable
define i32 @ctrsyl3_(ptr noundef %trana, ptr noundef %tranb, ptr noundef %isgn, ptr noundef %m, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %c__, ptr noundef %ldc, ptr noundef %scale, ptr noundef %swork, ptr noundef %ldswork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %trana.addr = alloca ptr, align 8
  %tranb.addr = alloca ptr, align 8
  %isgn.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %ldc.addr = alloca ptr, align 8
  %scale.addr = alloca ptr, align 8
  %swork.addr = alloca ptr, align 8
  %ldswork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %c_dim1 = alloca i32, align 4
  %c_offset = alloca i32, align 4
  %swork_dim1 = alloca i32, align 4
  %swork_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %i__6 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %r__3 = alloca float, align 4
  %r__4 = alloca float, align 4
  %d__1 = alloca double, align 8
  %q__1 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %nb = alloca i32, align 4
  %jj = alloca i32, align 4
  %ll = alloca i32, align 4
  %nba = alloca i32, align 4
  %nbb = alloca i32, align 4
  %buf = alloca float, align 4
  %sgn = alloca float, align 4
  %scal = alloca float, align 4
  %csgn = alloca %struct.complex, align 4
  %anrm = alloca float, align 4
  %bnrm = alloca float, align 4
  %cnrm = alloca float, align 4
  %awrk = alloca i32, align 4
  %bwrk = alloca i32, align 4
  %temp = alloca i32, align 4
  %wnrm = alloca ptr, align 8
  %xnrm = alloca float, align 4
  %iinfo = alloca i32, align 4
  %scaloc = alloca float, align 4
  %scamin = alloca float, align 4
  %bignum = alloca float, align 4
  %notrna = alloca i32, align 4
  %notrnb = alloca i32, align 4
  %smlnum = alloca float, align 4
  %lquery = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x16 = alloca i32, align 4
  %_y17 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %_x26 = alloca i32, align 4
  %_y27 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %_x38 = alloca i32, align 4
  %_y39 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %_x49 = alloca i32, align 4
  %_y50 = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  %_x90 = alloca i32, align 4
  %_y91 = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  %_x103 = alloca i32, align 4
  %_y104 = alloca i32, align 4
  %tmp105 = alloca i32, align 4
  %_x116 = alloca i32, align 4
  %_y117 = alloca i32, align 4
  %tmp118 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x152 = alloca i32, align 4
  %_y153 = alloca i32, align 4
  %tmp154 = alloca i32, align 4
  %_x164 = alloca i32, align 4
  %_y165 = alloca i32, align 4
  %tmp166 = alloca i32, align 4
  %_x207 = alloca i32, align 4
  %_y208 = alloca i32, align 4
  %tmp209 = alloca i32, align 4
  %_x225 = alloca i32, align 4
  %_y226 = alloca i32, align 4
  %tmp227 = alloca i32, align 4
  %_x278 = alloca i32, align 4
  %_y279 = alloca i32, align 4
  %tmp280 = alloca i32, align 4
  %_x296 = alloca i32, align 4
  %_y297 = alloca i32, align 4
  %tmp298 = alloca i32, align 4
  %_x357 = alloca i32, align 4
  %_y358 = alloca i32, align 4
  %tmp359 = alloca i32, align 4
  %_x375 = alloca i32, align 4
  %_y376 = alloca i32, align 4
  %tmp377 = alloca i32, align 4
  %_x400 = alloca i32, align 4
  %_y401 = alloca i32, align 4
  %tmp402 = alloca i32, align 4
  %_x448 = alloca float, align 4
  %_y449 = alloca float, align 4
  %tmp450 = alloca float, align 4
  %_x493 = alloca i32, align 4
  %_y494 = alloca i32, align 4
  %tmp495 = alloca i32, align 4
  %_x518 = alloca float, align 4
  %_y519 = alloca float, align 4
  %tmp520 = alloca float, align 4
  %_x575 = alloca float, align 4
  %_y576 = alloca float, align 4
  %tmp577 = alloca float, align 4
  %_x698 = alloca i32, align 4
  %_y699 = alloca i32, align 4
  %tmp700 = alloca i32, align 4
  %_x723 = alloca float, align 4
  %_y724 = alloca float, align 4
  %tmp725 = alloca float, align 4
  %_x780 = alloca float, align 4
  %_y781 = alloca float, align 4
  %tmp782 = alloca float, align 4
  %_x917 = alloca i32, align 4
  %_y918 = alloca i32, align 4
  %tmp919 = alloca i32, align 4
  %_x935 = alloca i32, align 4
  %_y936 = alloca i32, align 4
  %tmp937 = alloca i32, align 4
  %_x960 = alloca i32, align 4
  %_y961 = alloca i32, align 4
  %tmp962 = alloca i32, align 4
  %_x1008 = alloca float, align 4
  %_y1009 = alloca float, align 4
  %tmp1010 = alloca float, align 4
  %_x1053 = alloca i32, align 4
  %_y1054 = alloca i32, align 4
  %tmp1055 = alloca i32, align 4
  %_x1078 = alloca float, align 4
  %_y1079 = alloca float, align 4
  %tmp1080 = alloca float, align 4
  %_x1135 = alloca float, align 4
  %_y1136 = alloca float, align 4
  %tmp1137 = alloca float, align 4
  %_x1259 = alloca i32, align 4
  %_y1260 = alloca i32, align 4
  %tmp1261 = alloca i32, align 4
  %_x1284 = alloca float, align 4
  %_y1285 = alloca float, align 4
  %tmp1286 = alloca float, align 4
  %_x1341 = alloca float, align 4
  %_y1342 = alloca float, align 4
  %tmp1343 = alloca float, align 4
  %_x1479 = alloca i32, align 4
  %_y1480 = alloca i32, align 4
  %tmp1481 = alloca i32, align 4
  %_x1497 = alloca i32, align 4
  %_y1498 = alloca i32, align 4
  %tmp1499 = alloca i32, align 4
  %_x1522 = alloca i32, align 4
  %_y1523 = alloca i32, align 4
  %tmp1524 = alloca i32, align 4
  %_x1570 = alloca float, align 4
  %_y1571 = alloca float, align 4
  %tmp1572 = alloca float, align 4
  %_x1615 = alloca i32, align 4
  %_y1616 = alloca i32, align 4
  %tmp1617 = alloca i32, align 4
  %_x1640 = alloca float, align 4
  %_y1641 = alloca float, align 4
  %tmp1642 = alloca float, align 4
  %_x1697 = alloca float, align 4
  %_y1698 = alloca float, align 4
  %tmp1699 = alloca float, align 4
  %_x1821 = alloca i32, align 4
  %_y1822 = alloca i32, align 4
  %tmp1823 = alloca i32, align 4
  %_x1846 = alloca float, align 4
  %_y1847 = alloca float, align 4
  %tmp1848 = alloca float, align 4
  %_x1903 = alloca float, align 4
  %_y1904 = alloca float, align 4
  %tmp1905 = alloca float, align 4
  %_x2041 = alloca i32, align 4
  %_y2042 = alloca i32, align 4
  %tmp2043 = alloca i32, align 4
  %_x2059 = alloca i32, align 4
  %_y2060 = alloca i32, align 4
  %tmp2061 = alloca i32, align 4
  %_x2084 = alloca i32, align 4
  %_y2085 = alloca i32, align 4
  %tmp2086 = alloca i32, align 4
  %_x2132 = alloca float, align 4
  %_y2133 = alloca float, align 4
  %tmp2134 = alloca float, align 4
  %_x2177 = alloca i32, align 4
  %_y2178 = alloca i32, align 4
  %tmp2179 = alloca i32, align 4
  %_x2202 = alloca float, align 4
  %_y2203 = alloca float, align 4
  %tmp2204 = alloca float, align 4
  %_x2259 = alloca float, align 4
  %_y2260 = alloca float, align 4
  %tmp2261 = alloca float, align 4
  %_x2383 = alloca i32, align 4
  %_y2384 = alloca i32, align 4
  %tmp2385 = alloca i32, align 4
  %_x2408 = alloca float, align 4
  %_y2409 = alloca float, align 4
  %tmp2410 = alloca float, align 4
  %_x2465 = alloca float, align 4
  %_y2466 = alloca float, align 4
  %tmp2467 = alloca float, align 4
  %_x2609 = alloca float, align 4
  %_y2610 = alloca float, align 4
  %tmp2611 = alloca float, align 4
  %_x2627 = alloca i32, align 4
  %_y2628 = alloca i32, align 4
  %tmp2629 = alloca i32, align 4
  %_x2655 = alloca i32, align 4
  %_y2656 = alloca i32, align 4
  %tmp2657 = alloca i32, align 4
  %_x2673 = alloca i32, align 4
  %_y2674 = alloca i32, align 4
  %tmp2675 = alloca i32, align 4
  %_x2720 = alloca float, align 4
  %_y2721 = alloca float, align 4
  %tmp2722 = alloca float, align 4
  %_x2761 = alloca float, align 4
  %_y2762 = alloca float, align 4
  %tmp2763 = alloca float, align 4
  %_x2790 = alloca float, align 4
  %_y2791 = alloca float, align 4
  %tmp2792 = alloca float, align 4
  %_x2812 = alloca float, align 4
  %_y2813 = alloca float, align 4
  %tmp2814 = alloca float, align 4
  %_x2829 = alloca float, align 4
  %_y2830 = alloca float, align 4
  %tmp2831 = alloca float, align 4
  %_x2844 = alloca i32, align 4
  %_y2845 = alloca i32, align 4
  %tmp2846 = alloca i32, align 4
  store ptr %trana, ptr %trana.addr, align 8, !tbaa !4
  store ptr %tranb, ptr %tranb.addr, align 8, !tbaa !4
  store ptr %isgn, ptr %isgn.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store ptr %c__, ptr %c__.addr, align 8, !tbaa !4
  store ptr %ldc, ptr %ldc.addr, align 8, !tbaa !4
  store ptr %scale, ptr %scale.addr, align 8, !tbaa !4
  store ptr %swork, ptr %swork.addr, align 8, !tbaa !4
  store ptr %ldswork, ptr %ldswork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_dim1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_offset) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_dim1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_offset) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %swork_dim1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %swork_offset) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ll) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nba) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbb) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %buf) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sgn) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %scal) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %csgn) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %anrm) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bnrm) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnrm) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %awrk) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bwrk) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %wnrm) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %xnrm) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %iinfo) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %scaloc) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %scamin) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %bignum) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %notrna) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %notrnb) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %smlnum) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %lquery) #5
  %0 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %a_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %a_offset, align 4, !tbaa !8
  %3 = load i32, ptr %a_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %b_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %b_offset, align 4, !tbaa !8
  %8 = load i32, ptr %b_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %c_dim1, align 4, !tbaa !8
  %12 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add5 = add nsw i32 1, %12
  store i32 %add5, ptr %c_offset, align 4, !tbaa !8
  %13 = load i32, ptr %c_offset, align 4, !tbaa !8
  %14 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %idx.ext6 = sext i32 %13 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds %struct.complex, ptr %14, i64 %idx.neg7
  store ptr %add.ptr8, ptr %c__.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ldswork.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  store i32 %16, ptr %swork_dim1, align 4, !tbaa !8
  %17 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %add9 = add nsw i32 1, %17
  store i32 %add9, ptr %swork_offset, align 4, !tbaa !8
  %18 = load i32, ptr %swork_offset, align 4, !tbaa !8
  %19 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %idx.ext10 = sext i32 %18 to i64
  %idx.neg11 = sub i64 0, %idx.ext10
  %add.ptr12 = getelementptr inbounds float, ptr %19, i64 %idx.neg11
  store ptr %add.ptr12, ptr %swork.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #5
  %20 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  store i32 %21, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #5
  %22 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  store i32 %23, ptr %_y, align 4, !tbaa !8
  %24 = load i32, ptr %_x, align 4, !tbaa !8
  %25 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp = icmp sgt i32 %24, %25
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %26 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %27 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #5
  %28 = load i32, ptr %tmp, align 4, !tbaa !8
  %conv = sext i32 %28 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias ptr @malloc(i64 noundef %mul) #6
  store ptr %call, ptr %wnrm, align 8, !tbaa !4
  %29 = load ptr, ptr %trana.addr, align 8, !tbaa !4
  %call13 = call i32 @lsame_(ptr noundef %29, ptr noundef @.str)
  store i32 %call13, ptr %notrna, align 4, !tbaa !8
  %30 = load ptr, ptr %tranb.addr, align 8, !tbaa !4
  %call14 = call i32 @lsame_(ptr noundef %30, ptr noundef @.str)
  store i32 %call14, ptr %notrnb, align 4, !tbaa !8
  store i32 8, ptr %i__1, align 4, !tbaa !8
  %31 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call15 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %31, ptr noundef %32, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call15, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x16) #5
  %33 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %33, ptr %_x16, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y17) #5
  %34 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %34, ptr %_y17, align 4, !tbaa !8
  %35 = load i32, ptr %_x16, align 4, !tbaa !8
  %36 = load i32, ptr %_y17, align 4, !tbaa !8
  %cmp19 = icmp sgt i32 %35, %36
  br i1 %cmp19, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end
  %37 = load i32, ptr %_x16, align 4, !tbaa !8
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end
  %38 = load i32, ptr %_y17, align 4, !tbaa !8
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi i32 [ %37, %cond.true21 ], [ %38, %cond.false22 ]
  store i32 %cond24, ptr %tmp18, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y17) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x16) #5
  %39 = load i32, ptr %tmp18, align 4, !tbaa !8
  store i32 %39, ptr %nb, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %40 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %42 = load i32, ptr %nb, align 4, !tbaa !8
  %add25 = add nsw i32 %41, %42
  %sub = sub nsw i32 %add25, 1
  %43 = load i32, ptr %nb, align 4, !tbaa !8
  %div = sdiv i32 %sub, %43
  store i32 %div, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x26) #5
  %44 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %44, ptr %_x26, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y27) #5
  %45 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %45, ptr %_y27, align 4, !tbaa !8
  %46 = load i32, ptr %_x26, align 4, !tbaa !8
  %47 = load i32, ptr %_y27, align 4, !tbaa !8
  %cmp29 = icmp sgt i32 %46, %47
  br i1 %cmp29, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %cond.end23
  %48 = load i32, ptr %_x26, align 4, !tbaa !8
  br label %cond.end33

cond.false32:                                     ; preds = %cond.end23
  %49 = load i32, ptr %_y27, align 4, !tbaa !8
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.true31
  %cond34 = phi i32 [ %48, %cond.true31 ], [ %49, %cond.false32 ]
  store i32 %cond34, ptr %tmp28, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y27) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x26) #5
  %50 = load i32, ptr %tmp28, align 4, !tbaa !8
  store i32 %50, ptr %nba, align 4, !tbaa !8
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %51 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %52 = load i32, ptr %51, align 4, !tbaa !8
  %53 = load i32, ptr %nb, align 4, !tbaa !8
  %add35 = add nsw i32 %52, %53
  %sub36 = sub nsw i32 %add35, 1
  %54 = load i32, ptr %nb, align 4, !tbaa !8
  %div37 = sdiv i32 %sub36, %54
  store i32 %div37, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x38) #5
  %55 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %55, ptr %_x38, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y39) #5
  %56 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %56, ptr %_y39, align 4, !tbaa !8
  %57 = load i32, ptr %_x38, align 4, !tbaa !8
  %58 = load i32, ptr %_y39, align 4, !tbaa !8
  %cmp41 = icmp sgt i32 %57, %58
  br i1 %cmp41, label %cond.true43, label %cond.false44

cond.true43:                                      ; preds = %cond.end33
  %59 = load i32, ptr %_x38, align 4, !tbaa !8
  br label %cond.end45

cond.false44:                                     ; preds = %cond.end33
  %60 = load i32, ptr %_y39, align 4, !tbaa !8
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi i32 [ %59, %cond.true43 ], [ %60, %cond.false44 ]
  store i32 %cond46, ptr %tmp40, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y39) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x38) #5
  %61 = load i32, ptr %tmp40, align 4, !tbaa !8
  store i32 %61, ptr %nbb, align 4, !tbaa !8
  %62 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %62, align 4, !tbaa !8
  %63 = load ptr, ptr %ldswork.addr, align 8, !tbaa !4
  %64 = load i32, ptr %63, align 4, !tbaa !8
  %cmp47 = icmp eq i32 %64, -1
  %conv48 = zext i1 %cmp47 to i32
  store i32 %conv48, ptr %lquery, align 4, !tbaa !8
  %65 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool = icmp ne i32 %65, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end45
  %66 = load ptr, ptr %ldswork.addr, align 8, !tbaa !4
  store i32 2, ptr %66, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x49) #5
  %67 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %67, ptr %_x49, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y50) #5
  %68 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %68, ptr %_y50, align 4, !tbaa !8
  %69 = load i32, ptr %_x49, align 4, !tbaa !8
  %70 = load i32, ptr %_y50, align 4, !tbaa !8
  %cmp52 = icmp sgt i32 %69, %70
  br i1 %cmp52, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %if.then
  %71 = load i32, ptr %_x49, align 4, !tbaa !8
  br label %cond.end56

cond.false55:                                     ; preds = %if.then
  %72 = load i32, ptr %_y50, align 4, !tbaa !8
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false55, %cond.true54
  %cond57 = phi i32 [ %71, %cond.true54 ], [ %72, %cond.false55 ]
  store i32 %cond57, ptr %tmp51, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y50) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x49) #5
  %73 = load i32, ptr %tmp51, align 4, !tbaa !8
  %conv58 = sitofp i32 %73 to float
  %74 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %75 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %add59 = add nsw i32 %75, 1
  %idxprom = sext i32 %add59 to i64
  %arrayidx = getelementptr inbounds float, ptr %74, i64 %idxprom
  store float %conv58, ptr %arrayidx, align 4, !tbaa !10
  %76 = load i32, ptr %nbb, align 4, !tbaa !8
  %shl = shl i32 %76, 1
  %77 = load i32, ptr %nba, align 4, !tbaa !8
  %add60 = add nsw i32 %shl, %77
  %conv61 = sitofp i32 %add60 to float
  %78 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %79 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %add62 = add nsw i32 %79, 2
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds float, ptr %78, i64 %idxprom63
  store float %conv61, ptr %arrayidx64, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %cond.end56, %cond.end45
  %80 = load i32, ptr %notrna, align 4, !tbaa !8
  %tobool65 = icmp ne i32 %80, 0
  br i1 %tobool65, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %81 = load ptr, ptr %trana.addr, align 8, !tbaa !4
  %call66 = call i32 @lsame_(ptr noundef %81, ptr noundef @.str.3)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.else, label %if.then68

if.then68:                                        ; preds = %land.lhs.true
  %82 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %82, align 4, !tbaa !8
  br label %if.end135

if.else:                                          ; preds = %land.lhs.true, %if.end
  %83 = load i32, ptr %notrnb, align 4, !tbaa !8
  %tobool69 = icmp ne i32 %83, 0
  br i1 %tobool69, label %if.else74, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %if.else
  %84 = load ptr, ptr %tranb.addr, align 8, !tbaa !4
  %call71 = call i32 @lsame_(ptr noundef %84, ptr noundef @.str.3)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.else74, label %if.then73

if.then73:                                        ; preds = %land.lhs.true70
  %85 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %85, align 4, !tbaa !8
  br label %if.end134

if.else74:                                        ; preds = %land.lhs.true70, %if.else
  %86 = load ptr, ptr %isgn.addr, align 8, !tbaa !4
  %87 = load i32, ptr %86, align 4, !tbaa !8
  %cmp75 = icmp ne i32 %87, 1
  br i1 %cmp75, label %land.lhs.true77, label %if.else81

land.lhs.true77:                                  ; preds = %if.else74
  %88 = load ptr, ptr %isgn.addr, align 8, !tbaa !4
  %89 = load i32, ptr %88, align 4, !tbaa !8
  %cmp78 = icmp ne i32 %89, -1
  br i1 %cmp78, label %if.then80, label %if.else81

if.then80:                                        ; preds = %land.lhs.true77
  %90 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %90, align 4, !tbaa !8
  br label %if.end133

if.else81:                                        ; preds = %land.lhs.true77, %if.else74
  %91 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %92 = load i32, ptr %91, align 4, !tbaa !8
  %cmp82 = icmp slt i32 %92, 0
  br i1 %cmp82, label %if.then84, label %if.else85

if.then84:                                        ; preds = %if.else81
  %93 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %93, align 4, !tbaa !8
  br label %if.end132

if.else85:                                        ; preds = %if.else81
  %94 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %95 = load i32, ptr %94, align 4, !tbaa !8
  %cmp86 = icmp slt i32 %95, 0
  br i1 %cmp86, label %if.then88, label %if.else89

if.then88:                                        ; preds = %if.else85
  %96 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %96, align 4, !tbaa !8
  br label %if.end131

if.else89:                                        ; preds = %if.else85
  %97 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %98 = load i32, ptr %97, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x90) #5
  store i32 1, ptr %_x90, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y91) #5
  %99 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %100 = load i32, ptr %99, align 4, !tbaa !8
  store i32 %100, ptr %_y91, align 4, !tbaa !8
  %101 = load i32, ptr %_x90, align 4, !tbaa !8
  %102 = load i32, ptr %_y91, align 4, !tbaa !8
  %cmp93 = icmp sgt i32 %101, %102
  br i1 %cmp93, label %cond.true95, label %cond.false96

cond.true95:                                      ; preds = %if.else89
  %103 = load i32, ptr %_x90, align 4, !tbaa !8
  br label %cond.end97

cond.false96:                                     ; preds = %if.else89
  %104 = load i32, ptr %_y91, align 4, !tbaa !8
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false96, %cond.true95
  %cond98 = phi i32 [ %103, %cond.true95 ], [ %104, %cond.false96 ]
  store i32 %cond98, ptr %tmp92, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y91) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x90) #5
  %105 = load i32, ptr %tmp92, align 4, !tbaa !8
  %cmp99 = icmp slt i32 %98, %105
  br i1 %cmp99, label %if.then101, label %if.else102

if.then101:                                       ; preds = %cond.end97
  %106 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -7, ptr %106, align 4, !tbaa !8
  br label %if.end130

if.else102:                                       ; preds = %cond.end97
  %107 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %108 = load i32, ptr %107, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x103) #5
  store i32 1, ptr %_x103, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y104) #5
  %109 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %110 = load i32, ptr %109, align 4, !tbaa !8
  store i32 %110, ptr %_y104, align 4, !tbaa !8
  %111 = load i32, ptr %_x103, align 4, !tbaa !8
  %112 = load i32, ptr %_y104, align 4, !tbaa !8
  %cmp106 = icmp sgt i32 %111, %112
  br i1 %cmp106, label %cond.true108, label %cond.false109

cond.true108:                                     ; preds = %if.else102
  %113 = load i32, ptr %_x103, align 4, !tbaa !8
  br label %cond.end110

cond.false109:                                    ; preds = %if.else102
  %114 = load i32, ptr %_y104, align 4, !tbaa !8
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false109, %cond.true108
  %cond111 = phi i32 [ %113, %cond.true108 ], [ %114, %cond.false109 ]
  store i32 %cond111, ptr %tmp105, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y104) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x103) #5
  %115 = load i32, ptr %tmp105, align 4, !tbaa !8
  %cmp112 = icmp slt i32 %108, %115
  br i1 %cmp112, label %if.then114, label %if.else115

if.then114:                                       ; preds = %cond.end110
  %116 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -9, ptr %116, align 4, !tbaa !8
  br label %if.end129

if.else115:                                       ; preds = %cond.end110
  %117 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %118 = load i32, ptr %117, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x116) #5
  store i32 1, ptr %_x116, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y117) #5
  %119 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %120 = load i32, ptr %119, align 4, !tbaa !8
  store i32 %120, ptr %_y117, align 4, !tbaa !8
  %121 = load i32, ptr %_x116, align 4, !tbaa !8
  %122 = load i32, ptr %_y117, align 4, !tbaa !8
  %cmp119 = icmp sgt i32 %121, %122
  br i1 %cmp119, label %cond.true121, label %cond.false122

cond.true121:                                     ; preds = %if.else115
  %123 = load i32, ptr %_x116, align 4, !tbaa !8
  br label %cond.end123

cond.false122:                                    ; preds = %if.else115
  %124 = load i32, ptr %_y117, align 4, !tbaa !8
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false122, %cond.true121
  %cond124 = phi i32 [ %123, %cond.true121 ], [ %124, %cond.false122 ]
  store i32 %cond124, ptr %tmp118, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y117) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x116) #5
  %125 = load i32, ptr %tmp118, align 4, !tbaa !8
  %cmp125 = icmp slt i32 %118, %125
  br i1 %cmp125, label %if.then127, label %if.end128

if.then127:                                       ; preds = %cond.end123
  %126 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -11, ptr %126, align 4, !tbaa !8
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %cond.end123
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.then114
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.then101
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.then88
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.then84
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %if.then80
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then73
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.then68
  %127 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %128 = load i32, ptr %127, align 4, !tbaa !8
  %cmp136 = icmp ne i32 %128, 0
  br i1 %cmp136, label %if.then138, label %if.else141

if.then138:                                       ; preds = %if.end135
  %129 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %130 = load i32, ptr %129, align 4, !tbaa !8
  %sub139 = sub nsw i32 0, %130
  store i32 %sub139, ptr %i__1, align 4, !tbaa !8
  %call140 = call i32 @xerbla_(ptr noundef @.str.4, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else141:                                       ; preds = %if.end135
  %131 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool142 = icmp ne i32 %131, 0
  br i1 %tobool142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.else141
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end144:                                        ; preds = %if.else141
  br label %if.end145

if.end145:                                        ; preds = %if.end144
  %132 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  store float 1.000000e+00, ptr %132, align 4, !tbaa !10
  %133 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %134 = load i32, ptr %133, align 4, !tbaa !8
  %cmp146 = icmp eq i32 %134, 0
  br i1 %cmp146, label %if.then150, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end145
  %135 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %136 = load i32, ptr %135, align 4, !tbaa !8
  %cmp148 = icmp eq i32 %136, 0
  br i1 %cmp148, label %if.then150, label %if.end151

if.then150:                                       ; preds = %lor.lhs.false, %if.end145
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end151:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x152) #5
  %137 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %137, ptr %_x152, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y153) #5
  %138 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %138, ptr %_y153, align 4, !tbaa !8
  %139 = load i32, ptr %_x152, align 4, !tbaa !8
  %140 = load i32, ptr %_y153, align 4, !tbaa !8
  %cmp155 = icmp slt i32 %139, %140
  br i1 %cmp155, label %cond.true157, label %cond.false158

cond.true157:                                     ; preds = %if.end151
  %141 = load i32, ptr %_x152, align 4, !tbaa !8
  br label %cond.end159

cond.false158:                                    ; preds = %if.end151
  %142 = load i32, ptr %_y153, align 4, !tbaa !8
  br label %cond.end159

cond.end159:                                      ; preds = %cond.false158, %cond.true157
  %cond160 = phi i32 [ %141, %cond.true157 ], [ %142, %cond.false158 ]
  store i32 %cond160, ptr %tmp154, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y153) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x152) #5
  %143 = load i32, ptr %tmp154, align 4, !tbaa !8
  %cmp161 = icmp eq i32 %143, 1
  br i1 %cmp161, label %if.then175, label %lor.lhs.false163

lor.lhs.false163:                                 ; preds = %cond.end159
  %144 = load ptr, ptr %ldswork.addr, align 8, !tbaa !4
  %145 = load i32, ptr %144, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x164) #5
  %146 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %146, ptr %_x164, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y165) #5
  %147 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %147, ptr %_y165, align 4, !tbaa !8
  %148 = load i32, ptr %_x164, align 4, !tbaa !8
  %149 = load i32, ptr %_y165, align 4, !tbaa !8
  %cmp167 = icmp sgt i32 %148, %149
  br i1 %cmp167, label %cond.true169, label %cond.false170

cond.true169:                                     ; preds = %lor.lhs.false163
  %150 = load i32, ptr %_x164, align 4, !tbaa !8
  br label %cond.end171

cond.false170:                                    ; preds = %lor.lhs.false163
  %151 = load i32, ptr %_y165, align 4, !tbaa !8
  br label %cond.end171

cond.end171:                                      ; preds = %cond.false170, %cond.true169
  %cond172 = phi i32 [ %150, %cond.true169 ], [ %151, %cond.false170 ]
  store i32 %cond172, ptr %tmp166, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y165) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x164) #5
  %152 = load i32, ptr %tmp166, align 4, !tbaa !8
  %cmp173 = icmp slt i32 %145, %152
  br i1 %cmp173, label %if.then175, label %if.end183

if.then175:                                       ; preds = %cond.end171, %cond.end159
  %153 = load ptr, ptr %trana.addr, align 8, !tbaa !4
  %154 = load ptr, ptr %tranb.addr, align 8, !tbaa !4
  %155 = load ptr, ptr %isgn.addr, align 8, !tbaa !4
  %156 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %157 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %158 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %159 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom176 = sext i32 %159 to i64
  %arrayidx177 = getelementptr inbounds %struct.complex, ptr %158, i64 %idxprom176
  %160 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %161 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %162 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom178 = sext i32 %162 to i64
  %arrayidx179 = getelementptr inbounds %struct.complex, ptr %161, i64 %idxprom178
  %163 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %164 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %165 = load i32, ptr %c_offset, align 4, !tbaa !8
  %idxprom180 = sext i32 %165 to i64
  %arrayidx181 = getelementptr inbounds %struct.complex, ptr %164, i64 %idxprom180
  %166 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %167 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %168 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call182 = call i32 @ctrsyl_(ptr noundef %153, ptr noundef %154, ptr noundef %155, ptr noundef %156, ptr noundef %157, ptr noundef %arrayidx177, ptr noundef %160, ptr noundef %arrayidx179, ptr noundef %163, ptr noundef %arrayidx181, ptr noundef %166, ptr noundef %167, ptr noundef %168)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end183:                                        ; preds = %cond.end171
  %call184 = call float @slamch_(ptr noundef @.str.5)
  store float %call184, ptr %smlnum, align 4, !tbaa !10
  %169 = load float, ptr %smlnum, align 4, !tbaa !10
  %div185 = fdiv float 1.000000e+00, %169
  store float %div185, ptr %bignum, align 4, !tbaa !10
  %170 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %170, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc196, %if.end183
  %171 = load i32, ptr %l, align 4, !tbaa !8
  %172 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp186 = icmp sle i32 %171, %172
  br i1 %cmp186, label %for.body, label %for.end198

for.body:                                         ; preds = %for.cond
  %173 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %173, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond188

for.cond188:                                      ; preds = %for.inc, %for.body
  %174 = load i32, ptr %k, align 4, !tbaa !8
  %175 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp189 = icmp sle i32 %174, %175
  br i1 %cmp189, label %for.body191, label %for.end

for.body191:                                      ; preds = %for.cond188
  %176 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %177 = load i32, ptr %k, align 4, !tbaa !8
  %178 = load i32, ptr %l, align 4, !tbaa !8
  %179 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul192 = mul nsw i32 %178, %179
  %add193 = add nsw i32 %177, %mul192
  %idxprom194 = sext i32 %add193 to i64
  %arrayidx195 = getelementptr inbounds float, ptr %176, i64 %idxprom194
  store float 1.000000e+00, ptr %arrayidx195, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body191
  %180 = load i32, ptr %k, align 4, !tbaa !8
  %inc = add nsw i32 %180, 1
  store i32 %inc, ptr %k, align 4, !tbaa !8
  br label %for.cond188, !llvm.loop !12

for.end:                                          ; preds = %for.cond188
  br label %for.inc196

for.inc196:                                       ; preds = %for.end
  %181 = load i32, ptr %l, align 4, !tbaa !8
  %inc197 = add nsw i32 %181, 1
  store i32 %inc197, ptr %l, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end198:                                       ; preds = %for.cond
  store float 1.000000e+00, ptr %buf, align 4, !tbaa !10
  %182 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %182, ptr %awrk, align 4, !tbaa !8
  %183 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %183, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond199

for.cond199:                                      ; preds = %for.inc266, %for.end198
  %184 = load i32, ptr %k, align 4, !tbaa !8
  %185 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp200 = icmp sle i32 %184, %185
  br i1 %cmp200, label %for.body202, label %for.end268

for.body202:                                      ; preds = %for.cond199
  %186 = load i32, ptr %k, align 4, !tbaa !8
  %sub203 = sub nsw i32 %186, 1
  %187 = load i32, ptr %nb, align 4, !tbaa !8
  %mul204 = mul nsw i32 %sub203, %187
  %add205 = add nsw i32 %mul204, 1
  store i32 %add205, ptr %k1, align 4, !tbaa !8
  %188 = load i32, ptr %k, align 4, !tbaa !8
  %189 = load i32, ptr %nb, align 4, !tbaa !8
  %mul206 = mul nsw i32 %188, %189
  store i32 %mul206, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x207) #5
  %190 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %190, ptr %_x207, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y208) #5
  %191 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %192 = load i32, ptr %191, align 4, !tbaa !8
  store i32 %192, ptr %_y208, align 4, !tbaa !8
  %193 = load i32, ptr %_x207, align 4, !tbaa !8
  %194 = load i32, ptr %_y208, align 4, !tbaa !8
  %cmp210 = icmp slt i32 %193, %194
  br i1 %cmp210, label %cond.true212, label %cond.false213

cond.true212:                                     ; preds = %for.body202
  %195 = load i32, ptr %_x207, align 4, !tbaa !8
  br label %cond.end214

cond.false213:                                    ; preds = %for.body202
  %196 = load i32, ptr %_y208, align 4, !tbaa !8
  br label %cond.end214

cond.end214:                                      ; preds = %cond.false213, %cond.true212
  %cond215 = phi i32 [ %195, %cond.true212 ], [ %196, %cond.false213 ]
  store i32 %cond215, ptr %tmp209, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y208) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x207) #5
  %197 = load i32, ptr %tmp209, align 4, !tbaa !8
  %add216 = add nsw i32 %197, 1
  store i32 %add216, ptr %k2, align 4, !tbaa !8
  %198 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %198, ptr %i__2, align 4, !tbaa !8
  %199 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %199, ptr %l, align 4, !tbaa !8
  br label %for.cond217

for.cond217:                                      ; preds = %for.inc263, %cond.end214
  %200 = load i32, ptr %l, align 4, !tbaa !8
  %201 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp218 = icmp sle i32 %200, %201
  br i1 %cmp218, label %for.body220, label %for.end265

for.body220:                                      ; preds = %for.cond217
  %202 = load i32, ptr %l, align 4, !tbaa !8
  %sub221 = sub nsw i32 %202, 1
  %203 = load i32, ptr %nb, align 4, !tbaa !8
  %mul222 = mul nsw i32 %sub221, %203
  %add223 = add nsw i32 %mul222, 1
  store i32 %add223, ptr %l1, align 4, !tbaa !8
  %204 = load i32, ptr %l, align 4, !tbaa !8
  %205 = load i32, ptr %nb, align 4, !tbaa !8
  %mul224 = mul nsw i32 %204, %205
  store i32 %mul224, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x225) #5
  %206 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %206, ptr %_x225, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y226) #5
  %207 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %208 = load i32, ptr %207, align 4, !tbaa !8
  store i32 %208, ptr %_y226, align 4, !tbaa !8
  %209 = load i32, ptr %_x225, align 4, !tbaa !8
  %210 = load i32, ptr %_y226, align 4, !tbaa !8
  %cmp228 = icmp slt i32 %209, %210
  br i1 %cmp228, label %cond.true230, label %cond.false231

cond.true230:                                     ; preds = %for.body220
  %211 = load i32, ptr %_x225, align 4, !tbaa !8
  br label %cond.end232

cond.false231:                                    ; preds = %for.body220
  %212 = load i32, ptr %_y226, align 4, !tbaa !8
  br label %cond.end232

cond.end232:                                      ; preds = %cond.false231, %cond.true230
  %cond233 = phi i32 [ %211, %cond.true230 ], [ %212, %cond.false231 ]
  store i32 %cond233, ptr %tmp227, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y226) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x225) #5
  %213 = load i32, ptr %tmp227, align 4, !tbaa !8
  %add234 = add nsw i32 %213, 1
  store i32 %add234, ptr %l2, align 4, !tbaa !8
  %214 = load i32, ptr %notrna, align 4, !tbaa !8
  %tobool235 = icmp ne i32 %214, 0
  br i1 %tobool235, label %if.then236, label %if.else249

if.then236:                                       ; preds = %cond.end232
  %215 = load i32, ptr %k2, align 4, !tbaa !8
  %216 = load i32, ptr %k1, align 4, !tbaa !8
  %sub237 = sub nsw i32 %215, %216
  store i32 %sub237, ptr %i__3, align 4, !tbaa !8
  %217 = load i32, ptr %l2, align 4, !tbaa !8
  %218 = load i32, ptr %l1, align 4, !tbaa !8
  %sub238 = sub nsw i32 %217, %218
  store i32 %sub238, ptr %i__4, align 4, !tbaa !8
  %219 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %220 = load i32, ptr %k1, align 4, !tbaa !8
  %221 = load i32, ptr %l1, align 4, !tbaa !8
  %222 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul239 = mul nsw i32 %221, %222
  %add240 = add nsw i32 %220, %mul239
  %idxprom241 = sext i32 %add240 to i64
  %arrayidx242 = getelementptr inbounds %struct.complex, ptr %219, i64 %idxprom241
  %223 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %224 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call243 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx242, ptr noundef %223, ptr noundef %224)
  %225 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %226 = load i32, ptr %k, align 4, !tbaa !8
  %227 = load i32, ptr %awrk, align 4, !tbaa !8
  %228 = load i32, ptr %l, align 4, !tbaa !8
  %add244 = add nsw i32 %227, %228
  %229 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul245 = mul nsw i32 %add244, %229
  %add246 = add nsw i32 %226, %mul245
  %idxprom247 = sext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds float, ptr %225, i64 %idxprom247
  store float %call243, ptr %arrayidx248, align 4, !tbaa !10
  br label %if.end262

if.else249:                                       ; preds = %cond.end232
  %230 = load i32, ptr %k2, align 4, !tbaa !8
  %231 = load i32, ptr %k1, align 4, !tbaa !8
  %sub250 = sub nsw i32 %230, %231
  store i32 %sub250, ptr %i__3, align 4, !tbaa !8
  %232 = load i32, ptr %l2, align 4, !tbaa !8
  %233 = load i32, ptr %l1, align 4, !tbaa !8
  %sub251 = sub nsw i32 %232, %233
  store i32 %sub251, ptr %i__4, align 4, !tbaa !8
  %234 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %235 = load i32, ptr %k1, align 4, !tbaa !8
  %236 = load i32, ptr %l1, align 4, !tbaa !8
  %237 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul252 = mul nsw i32 %236, %237
  %add253 = add nsw i32 %235, %mul252
  %idxprom254 = sext i32 %add253 to i64
  %arrayidx255 = getelementptr inbounds %struct.complex, ptr %234, i64 %idxprom254
  %238 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %239 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call256 = call float @clange_(ptr noundef @.str.7, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx255, ptr noundef %238, ptr noundef %239)
  %240 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %241 = load i32, ptr %l, align 4, !tbaa !8
  %242 = load i32, ptr %awrk, align 4, !tbaa !8
  %243 = load i32, ptr %k, align 4, !tbaa !8
  %add257 = add nsw i32 %242, %243
  %244 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul258 = mul nsw i32 %add257, %244
  %add259 = add nsw i32 %241, %mul258
  %idxprom260 = sext i32 %add259 to i64
  %arrayidx261 = getelementptr inbounds float, ptr %240, i64 %idxprom260
  store float %call256, ptr %arrayidx261, align 4, !tbaa !10
  br label %if.end262

if.end262:                                        ; preds = %if.else249, %if.then236
  br label %for.inc263

for.inc263:                                       ; preds = %if.end262
  %245 = load i32, ptr %l, align 4, !tbaa !8
  %inc264 = add nsw i32 %245, 1
  store i32 %inc264, ptr %l, align 4, !tbaa !8
  br label %for.cond217, !llvm.loop !15

for.end265:                                       ; preds = %for.cond217
  br label %for.inc266

for.inc266:                                       ; preds = %for.end265
  %246 = load i32, ptr %k, align 4, !tbaa !8
  %inc267 = add nsw i32 %246, 1
  store i32 %inc267, ptr %k, align 4, !tbaa !8
  br label %for.cond199, !llvm.loop !16

for.end268:                                       ; preds = %for.cond199
  %247 = load i32, ptr %nbb, align 4, !tbaa !8
  %248 = load i32, ptr %nba, align 4, !tbaa !8
  %add269 = add nsw i32 %247, %248
  store i32 %add269, ptr %bwrk, align 4, !tbaa !8
  %249 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %249, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond270

for.cond270:                                      ; preds = %for.inc337, %for.end268
  %250 = load i32, ptr %k, align 4, !tbaa !8
  %251 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp271 = icmp sle i32 %250, %251
  br i1 %cmp271, label %for.body273, label %for.end339

for.body273:                                      ; preds = %for.cond270
  %252 = load i32, ptr %k, align 4, !tbaa !8
  %sub274 = sub nsw i32 %252, 1
  %253 = load i32, ptr %nb, align 4, !tbaa !8
  %mul275 = mul nsw i32 %sub274, %253
  %add276 = add nsw i32 %mul275, 1
  store i32 %add276, ptr %k1, align 4, !tbaa !8
  %254 = load i32, ptr %k, align 4, !tbaa !8
  %255 = load i32, ptr %nb, align 4, !tbaa !8
  %mul277 = mul nsw i32 %254, %255
  store i32 %mul277, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x278) #5
  %256 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %256, ptr %_x278, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y279) #5
  %257 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %258 = load i32, ptr %257, align 4, !tbaa !8
  store i32 %258, ptr %_y279, align 4, !tbaa !8
  %259 = load i32, ptr %_x278, align 4, !tbaa !8
  %260 = load i32, ptr %_y279, align 4, !tbaa !8
  %cmp281 = icmp slt i32 %259, %260
  br i1 %cmp281, label %cond.true283, label %cond.false284

cond.true283:                                     ; preds = %for.body273
  %261 = load i32, ptr %_x278, align 4, !tbaa !8
  br label %cond.end285

cond.false284:                                    ; preds = %for.body273
  %262 = load i32, ptr %_y279, align 4, !tbaa !8
  br label %cond.end285

cond.end285:                                      ; preds = %cond.false284, %cond.true283
  %cond286 = phi i32 [ %261, %cond.true283 ], [ %262, %cond.false284 ]
  store i32 %cond286, ptr %tmp280, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y279) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x278) #5
  %263 = load i32, ptr %tmp280, align 4, !tbaa !8
  %add287 = add nsw i32 %263, 1
  store i32 %add287, ptr %k2, align 4, !tbaa !8
  %264 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %264, ptr %i__2, align 4, !tbaa !8
  %265 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %265, ptr %l, align 4, !tbaa !8
  br label %for.cond288

for.cond288:                                      ; preds = %for.inc334, %cond.end285
  %266 = load i32, ptr %l, align 4, !tbaa !8
  %267 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp289 = icmp sle i32 %266, %267
  br i1 %cmp289, label %for.body291, label %for.end336

for.body291:                                      ; preds = %for.cond288
  %268 = load i32, ptr %l, align 4, !tbaa !8
  %sub292 = sub nsw i32 %268, 1
  %269 = load i32, ptr %nb, align 4, !tbaa !8
  %mul293 = mul nsw i32 %sub292, %269
  %add294 = add nsw i32 %mul293, 1
  store i32 %add294, ptr %l1, align 4, !tbaa !8
  %270 = load i32, ptr %l, align 4, !tbaa !8
  %271 = load i32, ptr %nb, align 4, !tbaa !8
  %mul295 = mul nsw i32 %270, %271
  store i32 %mul295, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x296) #5
  %272 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %272, ptr %_x296, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y297) #5
  %273 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %274 = load i32, ptr %273, align 4, !tbaa !8
  store i32 %274, ptr %_y297, align 4, !tbaa !8
  %275 = load i32, ptr %_x296, align 4, !tbaa !8
  %276 = load i32, ptr %_y297, align 4, !tbaa !8
  %cmp299 = icmp slt i32 %275, %276
  br i1 %cmp299, label %cond.true301, label %cond.false302

cond.true301:                                     ; preds = %for.body291
  %277 = load i32, ptr %_x296, align 4, !tbaa !8
  br label %cond.end303

cond.false302:                                    ; preds = %for.body291
  %278 = load i32, ptr %_y297, align 4, !tbaa !8
  br label %cond.end303

cond.end303:                                      ; preds = %cond.false302, %cond.true301
  %cond304 = phi i32 [ %277, %cond.true301 ], [ %278, %cond.false302 ]
  store i32 %cond304, ptr %tmp298, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y297) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x296) #5
  %279 = load i32, ptr %tmp298, align 4, !tbaa !8
  %add305 = add nsw i32 %279, 1
  store i32 %add305, ptr %l2, align 4, !tbaa !8
  %280 = load i32, ptr %notrnb, align 4, !tbaa !8
  %tobool306 = icmp ne i32 %280, 0
  br i1 %tobool306, label %if.then307, label %if.else320

if.then307:                                       ; preds = %cond.end303
  %281 = load i32, ptr %k2, align 4, !tbaa !8
  %282 = load i32, ptr %k1, align 4, !tbaa !8
  %sub308 = sub nsw i32 %281, %282
  store i32 %sub308, ptr %i__3, align 4, !tbaa !8
  %283 = load i32, ptr %l2, align 4, !tbaa !8
  %284 = load i32, ptr %l1, align 4, !tbaa !8
  %sub309 = sub nsw i32 %283, %284
  store i32 %sub309, ptr %i__4, align 4, !tbaa !8
  %285 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %286 = load i32, ptr %k1, align 4, !tbaa !8
  %287 = load i32, ptr %l1, align 4, !tbaa !8
  %288 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul310 = mul nsw i32 %287, %288
  %add311 = add nsw i32 %286, %mul310
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds %struct.complex, ptr %285, i64 %idxprom312
  %289 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %290 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call314 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx313, ptr noundef %289, ptr noundef %290)
  %291 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %292 = load i32, ptr %k, align 4, !tbaa !8
  %293 = load i32, ptr %bwrk, align 4, !tbaa !8
  %294 = load i32, ptr %l, align 4, !tbaa !8
  %add315 = add nsw i32 %293, %294
  %295 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul316 = mul nsw i32 %add315, %295
  %add317 = add nsw i32 %292, %mul316
  %idxprom318 = sext i32 %add317 to i64
  %arrayidx319 = getelementptr inbounds float, ptr %291, i64 %idxprom318
  store float %call314, ptr %arrayidx319, align 4, !tbaa !10
  br label %if.end333

if.else320:                                       ; preds = %cond.end303
  %296 = load i32, ptr %k2, align 4, !tbaa !8
  %297 = load i32, ptr %k1, align 4, !tbaa !8
  %sub321 = sub nsw i32 %296, %297
  store i32 %sub321, ptr %i__3, align 4, !tbaa !8
  %298 = load i32, ptr %l2, align 4, !tbaa !8
  %299 = load i32, ptr %l1, align 4, !tbaa !8
  %sub322 = sub nsw i32 %298, %299
  store i32 %sub322, ptr %i__4, align 4, !tbaa !8
  %300 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %301 = load i32, ptr %k1, align 4, !tbaa !8
  %302 = load i32, ptr %l1, align 4, !tbaa !8
  %303 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul323 = mul nsw i32 %302, %303
  %add324 = add nsw i32 %301, %mul323
  %idxprom325 = sext i32 %add324 to i64
  %arrayidx326 = getelementptr inbounds %struct.complex, ptr %300, i64 %idxprom325
  %304 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %305 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call327 = call float @clange_(ptr noundef @.str.7, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx326, ptr noundef %304, ptr noundef %305)
  %306 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %307 = load i32, ptr %l, align 4, !tbaa !8
  %308 = load i32, ptr %bwrk, align 4, !tbaa !8
  %309 = load i32, ptr %k, align 4, !tbaa !8
  %add328 = add nsw i32 %308, %309
  %310 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul329 = mul nsw i32 %add328, %310
  %add330 = add nsw i32 %307, %mul329
  %idxprom331 = sext i32 %add330 to i64
  %arrayidx332 = getelementptr inbounds float, ptr %306, i64 %idxprom331
  store float %call327, ptr %arrayidx332, align 4, !tbaa !10
  br label %if.end333

if.end333:                                        ; preds = %if.else320, %if.then307
  br label %for.inc334

for.inc334:                                       ; preds = %if.end333
  %311 = load i32, ptr %l, align 4, !tbaa !8
  %inc335 = add nsw i32 %311, 1
  store i32 %inc335, ptr %l, align 4, !tbaa !8
  br label %for.cond288, !llvm.loop !17

for.end336:                                       ; preds = %for.cond288
  br label %for.inc337

for.inc337:                                       ; preds = %for.end336
  %312 = load i32, ptr %k, align 4, !tbaa !8
  %inc338 = add nsw i32 %312, 1
  store i32 %inc338, ptr %k, align 4, !tbaa !8
  br label %for.cond270, !llvm.loop !18

for.end339:                                       ; preds = %for.cond270
  %313 = load ptr, ptr %isgn.addr, align 8, !tbaa !4
  %314 = load i32, ptr %313, align 4, !tbaa !8
  %conv340 = sitofp i32 %314 to float
  store float %conv340, ptr %sgn, align 4, !tbaa !10
  %315 = load float, ptr %sgn, align 4, !tbaa !10
  %r = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %315, ptr %r, align 4, !tbaa !19
  %i = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float 0.000000e+00, ptr %i, align 4, !tbaa !21
  %r341 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %316 = load float, ptr %r341, align 4, !tbaa !19
  %r342 = getelementptr inbounds %struct.complex, ptr %csgn, i32 0, i32 0
  store float %316, ptr %r342, align 4, !tbaa !19
  %i343 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %317 = load float, ptr %i343, align 4, !tbaa !21
  %i344 = getelementptr inbounds %struct.complex, ptr %csgn, i32 0, i32 1
  store float %317, ptr %i344, align 4, !tbaa !21
  %318 = load i32, ptr %notrna, align 4, !tbaa !8
  %tobool345 = icmp ne i32 %318, 0
  br i1 %tobool345, label %land.lhs.true346, label %if.else904

land.lhs.true346:                                 ; preds = %for.end339
  %319 = load i32, ptr %notrnb, align 4, !tbaa !8
  %tobool347 = icmp ne i32 %319, 0
  br i1 %tobool347, label %if.then348, label %if.else904

if.then348:                                       ; preds = %land.lhs.true346
  %320 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %320, ptr %k, align 4, !tbaa !8
  br label %for.cond349

for.cond349:                                      ; preds = %for.inc901, %if.then348
  %321 = load i32, ptr %k, align 4, !tbaa !8
  %cmp350 = icmp sge i32 %321, 1
  br i1 %cmp350, label %for.body352, label %for.end903

for.body352:                                      ; preds = %for.cond349
  %322 = load i32, ptr %k, align 4, !tbaa !8
  %sub353 = sub nsw i32 %322, 1
  %323 = load i32, ptr %nb, align 4, !tbaa !8
  %mul354 = mul nsw i32 %sub353, %323
  %add355 = add nsw i32 %mul354, 1
  store i32 %add355, ptr %k1, align 4, !tbaa !8
  %324 = load i32, ptr %k, align 4, !tbaa !8
  %325 = load i32, ptr %nb, align 4, !tbaa !8
  %mul356 = mul nsw i32 %324, %325
  store i32 %mul356, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x357) #5
  %326 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %326, ptr %_x357, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y358) #5
  %327 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %328 = load i32, ptr %327, align 4, !tbaa !8
  store i32 %328, ptr %_y358, align 4, !tbaa !8
  %329 = load i32, ptr %_x357, align 4, !tbaa !8
  %330 = load i32, ptr %_y358, align 4, !tbaa !8
  %cmp360 = icmp slt i32 %329, %330
  br i1 %cmp360, label %cond.true362, label %cond.false363

cond.true362:                                     ; preds = %for.body352
  %331 = load i32, ptr %_x357, align 4, !tbaa !8
  br label %cond.end364

cond.false363:                                    ; preds = %for.body352
  %332 = load i32, ptr %_y358, align 4, !tbaa !8
  br label %cond.end364

cond.end364:                                      ; preds = %cond.false363, %cond.true362
  %cond365 = phi i32 [ %331, %cond.true362 ], [ %332, %cond.false363 ]
  store i32 %cond365, ptr %tmp359, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y358) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x357) #5
  %333 = load i32, ptr %tmp359, align 4, !tbaa !8
  %add366 = add nsw i32 %333, 1
  store i32 %add366, ptr %k2, align 4, !tbaa !8
  %334 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %334, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond367

for.cond367:                                      ; preds = %for.inc898, %cond.end364
  %335 = load i32, ptr %l, align 4, !tbaa !8
  %336 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp368 = icmp sle i32 %335, %336
  br i1 %cmp368, label %for.body370, label %for.end900

for.body370:                                      ; preds = %for.cond367
  %337 = load i32, ptr %l, align 4, !tbaa !8
  %sub371 = sub nsw i32 %337, 1
  %338 = load i32, ptr %nb, align 4, !tbaa !8
  %mul372 = mul nsw i32 %sub371, %338
  %add373 = add nsw i32 %mul372, 1
  store i32 %add373, ptr %l1, align 4, !tbaa !8
  %339 = load i32, ptr %l, align 4, !tbaa !8
  %340 = load i32, ptr %nb, align 4, !tbaa !8
  %mul374 = mul nsw i32 %339, %340
  store i32 %mul374, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x375) #5
  %341 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %341, ptr %_x375, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y376) #5
  %342 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %343 = load i32, ptr %342, align 4, !tbaa !8
  store i32 %343, ptr %_y376, align 4, !tbaa !8
  %344 = load i32, ptr %_x375, align 4, !tbaa !8
  %345 = load i32, ptr %_y376, align 4, !tbaa !8
  %cmp378 = icmp slt i32 %344, %345
  br i1 %cmp378, label %cond.true380, label %cond.false381

cond.true380:                                     ; preds = %for.body370
  %346 = load i32, ptr %_x375, align 4, !tbaa !8
  br label %cond.end382

cond.false381:                                    ; preds = %for.body370
  %347 = load i32, ptr %_y376, align 4, !tbaa !8
  br label %cond.end382

cond.end382:                                      ; preds = %cond.false381, %cond.true380
  %cond383 = phi i32 [ %346, %cond.true380 ], [ %347, %cond.false381 ]
  store i32 %cond383, ptr %tmp377, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y376) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x375) #5
  %348 = load i32, ptr %tmp377, align 4, !tbaa !8
  %add384 = add nsw i32 %348, 1
  store i32 %add384, ptr %l2, align 4, !tbaa !8
  %349 = load i32, ptr %k2, align 4, !tbaa !8
  %350 = load i32, ptr %k1, align 4, !tbaa !8
  %sub385 = sub nsw i32 %349, %350
  store i32 %sub385, ptr %i__2, align 4, !tbaa !8
  %351 = load i32, ptr %l2, align 4, !tbaa !8
  %352 = load i32, ptr %l1, align 4, !tbaa !8
  %sub386 = sub nsw i32 %351, %352
  store i32 %sub386, ptr %i__3, align 4, !tbaa !8
  %353 = load ptr, ptr %trana.addr, align 8, !tbaa !4
  %354 = load ptr, ptr %tranb.addr, align 8, !tbaa !4
  %355 = load ptr, ptr %isgn.addr, align 8, !tbaa !4
  %356 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %357 = load i32, ptr %k1, align 4, !tbaa !8
  %358 = load i32, ptr %k1, align 4, !tbaa !8
  %359 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul387 = mul nsw i32 %358, %359
  %add388 = add nsw i32 %357, %mul387
  %idxprom389 = sext i32 %add388 to i64
  %arrayidx390 = getelementptr inbounds %struct.complex, ptr %356, i64 %idxprom389
  %360 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %361 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %362 = load i32, ptr %l1, align 4, !tbaa !8
  %363 = load i32, ptr %l1, align 4, !tbaa !8
  %364 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul391 = mul nsw i32 %363, %364
  %add392 = add nsw i32 %362, %mul391
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds %struct.complex, ptr %361, i64 %idxprom393
  %365 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %366 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %367 = load i32, ptr %k1, align 4, !tbaa !8
  %368 = load i32, ptr %l1, align 4, !tbaa !8
  %369 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul395 = mul nsw i32 %368, %369
  %add396 = add nsw i32 %367, %mul395
  %idxprom397 = sext i32 %add396 to i64
  %arrayidx398 = getelementptr inbounds %struct.complex, ptr %366, i64 %idxprom397
  %370 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call399 = call i32 @ctrsyl_(ptr noundef %353, ptr noundef %354, ptr noundef %355, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx390, ptr noundef %360, ptr noundef %arrayidx394, ptr noundef %365, ptr noundef %arrayidx398, ptr noundef %370, ptr noundef %scaloc, ptr noundef %iinfo)
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x400) #5
  %371 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %372 = load i32, ptr %371, align 4, !tbaa !8
  store i32 %372, ptr %_x400, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y401) #5
  %373 = load i32, ptr %iinfo, align 4, !tbaa !8
  store i32 %373, ptr %_y401, align 4, !tbaa !8
  %374 = load i32, ptr %_x400, align 4, !tbaa !8
  %375 = load i32, ptr %_y401, align 4, !tbaa !8
  %cmp403 = icmp sgt i32 %374, %375
  br i1 %cmp403, label %cond.true405, label %cond.false406

cond.true405:                                     ; preds = %cond.end382
  %376 = load i32, ptr %_x400, align 4, !tbaa !8
  br label %cond.end407

cond.false406:                                    ; preds = %cond.end382
  %377 = load i32, ptr %_y401, align 4, !tbaa !8
  br label %cond.end407

cond.end407:                                      ; preds = %cond.false406, %cond.true405
  %cond408 = phi i32 [ %376, %cond.true405 ], [ %377, %cond.false406 ]
  store i32 %cond408, ptr %tmp402, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y401) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x400) #5
  %378 = load i32, ptr %tmp402, align 4, !tbaa !8
  %379 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %378, ptr %379, align 4, !tbaa !8
  %380 = load float, ptr %scaloc, align 4, !tbaa !10
  %381 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %382 = load i32, ptr %k, align 4, !tbaa !8
  %383 = load i32, ptr %l, align 4, !tbaa !8
  %384 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul409 = mul nsw i32 %383, %384
  %add410 = add nsw i32 %382, %mul409
  %idxprom411 = sext i32 %add410 to i64
  %arrayidx412 = getelementptr inbounds float, ptr %381, i64 %idxprom411
  %385 = load float, ptr %arrayidx412, align 4, !tbaa !10
  %mul413 = fmul float %380, %385
  %cmp414 = fcmp oeq float %mul413, 0.000000e+00
  br i1 %cmp414, label %if.then416, label %if.end467

if.then416:                                       ; preds = %cond.end407
  %386 = load float, ptr %scaloc, align 4, !tbaa !10
  %cmp417 = fcmp oeq float %386, 0.000000e+00
  br i1 %cmp417, label %if.then419, label %if.else420

if.then419:                                       ; preds = %if.then416
  store float 0.000000e+00, ptr %buf, align 4, !tbaa !10
  br label %if.end428

if.else420:                                       ; preds = %if.then416
  %387 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv421 = fpext float %387 to double
  %call422 = call double @frexp(double noundef %conv421, ptr noundef %temp) #5
  %388 = load i32, ptr %temp, align 4, !tbaa !8
  %conv423 = sitofp i32 %388 to double
  store double %conv423, ptr %d__1, align 8, !tbaa !22
  %call424 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %389 = load float, ptr %buf, align 4, !tbaa !10
  %conv425 = fpext float %389 to double
  %mul426 = fmul double %conv425, %call424
  %conv427 = fptrunc double %mul426 to float
  store float %conv427, ptr %buf, align 4, !tbaa !10
  br label %if.end428

if.end428:                                        ; preds = %if.else420, %if.then419
  %390 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %390, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %jj, align 4, !tbaa !8
  br label %for.cond429

for.cond429:                                      ; preds = %for.inc464, %if.end428
  %391 = load i32, ptr %jj, align 4, !tbaa !8
  %392 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp430 = icmp sle i32 %391, %392
  br i1 %cmp430, label %for.body432, label %for.end466

for.body432:                                      ; preds = %for.cond429
  %393 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %393, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %ll, align 4, !tbaa !8
  br label %for.cond433

for.cond433:                                      ; preds = %for.inc461, %for.body432
  %394 = load i32, ptr %ll, align 4, !tbaa !8
  %395 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp434 = icmp sle i32 %394, %395
  br i1 %cmp434, label %for.body436, label %for.end463

for.body436:                                      ; preds = %for.cond433
  %396 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv437 = fpext float %396 to double
  %call438 = call double @frexp(double noundef %conv437, ptr noundef %temp) #5
  %397 = load i32, ptr %temp, align 4, !tbaa !8
  %conv439 = sitofp i32 %397 to double
  store double %conv439, ptr %d__1, align 8, !tbaa !22
  %398 = load float, ptr %bignum, align 4, !tbaa !10
  store float %398, ptr %r__1, align 4, !tbaa !10
  %399 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %400 = load i32, ptr %ll, align 4, !tbaa !8
  %401 = load i32, ptr %jj, align 4, !tbaa !8
  %402 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul440 = mul nsw i32 %401, %402
  %add441 = add nsw i32 %400, %mul440
  %idxprom442 = sext i32 %add441 to i64
  %arrayidx443 = getelementptr inbounds float, ptr %399, i64 %idxprom442
  %403 = load float, ptr %arrayidx443, align 4, !tbaa !10
  %conv444 = fpext float %403 to double
  %call445 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %div446 = fdiv double %conv444, %call445
  %conv447 = fptrunc double %div446 to float
  store float %conv447, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x448) #5
  %404 = load float, ptr %r__1, align 4, !tbaa !10
  store float %404, ptr %_x448, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y449) #5
  %405 = load float, ptr %r__2, align 4, !tbaa !10
  store float %405, ptr %_y449, align 4, !tbaa !10
  %406 = load float, ptr %_x448, align 4, !tbaa !10
  %407 = load float, ptr %_y449, align 4, !tbaa !10
  %cmp451 = fcmp olt float %406, %407
  br i1 %cmp451, label %cond.true453, label %cond.false454

cond.true453:                                     ; preds = %for.body436
  %408 = load float, ptr %_x448, align 4, !tbaa !10
  br label %cond.end455

cond.false454:                                    ; preds = %for.body436
  %409 = load float, ptr %_y449, align 4, !tbaa !10
  br label %cond.end455

cond.end455:                                      ; preds = %cond.false454, %cond.true453
  %cond456 = phi float [ %408, %cond.true453 ], [ %409, %cond.false454 ]
  store float %cond456, ptr %tmp450, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y449) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x448) #5
  %410 = load float, ptr %tmp450, align 4, !tbaa !10
  %411 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %412 = load i32, ptr %ll, align 4, !tbaa !8
  %413 = load i32, ptr %jj, align 4, !tbaa !8
  %414 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul457 = mul nsw i32 %413, %414
  %add458 = add nsw i32 %412, %mul457
  %idxprom459 = sext i32 %add458 to i64
  %arrayidx460 = getelementptr inbounds float, ptr %411, i64 %idxprom459
  store float %410, ptr %arrayidx460, align 4, !tbaa !10
  br label %for.inc461

for.inc461:                                       ; preds = %cond.end455
  %415 = load i32, ptr %ll, align 4, !tbaa !8
  %inc462 = add nsw i32 %415, 1
  store i32 %inc462, ptr %ll, align 4, !tbaa !8
  br label %for.cond433, !llvm.loop !24

for.end463:                                       ; preds = %for.cond433
  br label %for.inc464

for.inc464:                                       ; preds = %for.end463
  %416 = load i32, ptr %jj, align 4, !tbaa !8
  %inc465 = add nsw i32 %416, 1
  store i32 %inc465, ptr %jj, align 4, !tbaa !8
  br label %for.cond429, !llvm.loop !25

for.end466:                                       ; preds = %for.cond429
  br label %if.end467

if.end467:                                        ; preds = %for.end466, %cond.end407
  %417 = load float, ptr %scaloc, align 4, !tbaa !10
  %418 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %419 = load i32, ptr %k, align 4, !tbaa !8
  %420 = load i32, ptr %l, align 4, !tbaa !8
  %421 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul468 = mul nsw i32 %420, %421
  %add469 = add nsw i32 %419, %mul468
  %idxprom470 = sext i32 %add469 to i64
  %arrayidx471 = getelementptr inbounds float, ptr %418, i64 %idxprom470
  %422 = load float, ptr %arrayidx471, align 4, !tbaa !10
  %mul472 = fmul float %417, %422
  %423 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %424 = load i32, ptr %k, align 4, !tbaa !8
  %425 = load i32, ptr %l, align 4, !tbaa !8
  %426 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul473 = mul nsw i32 %425, %426
  %add474 = add nsw i32 %424, %mul473
  %idxprom475 = sext i32 %add474 to i64
  %arrayidx476 = getelementptr inbounds float, ptr %423, i64 %idxprom475
  store float %mul472, ptr %arrayidx476, align 4, !tbaa !10
  %427 = load i32, ptr %k2, align 4, !tbaa !8
  %428 = load i32, ptr %k1, align 4, !tbaa !8
  %sub477 = sub nsw i32 %427, %428
  store i32 %sub477, ptr %i__2, align 4, !tbaa !8
  %429 = load i32, ptr %l2, align 4, !tbaa !8
  %430 = load i32, ptr %l1, align 4, !tbaa !8
  %sub478 = sub nsw i32 %429, %430
  store i32 %sub478, ptr %i__3, align 4, !tbaa !8
  %431 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %432 = load i32, ptr %k1, align 4, !tbaa !8
  %433 = load i32, ptr %l1, align 4, !tbaa !8
  %434 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul479 = mul nsw i32 %433, %434
  %add480 = add nsw i32 %432, %mul479
  %idxprom481 = sext i32 %add480 to i64
  %arrayidx482 = getelementptr inbounds %struct.complex, ptr %431, i64 %idxprom481
  %435 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %436 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call483 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx482, ptr noundef %435, ptr noundef %436)
  store float %call483, ptr %xnrm, align 4, !tbaa !10
  %437 = load i32, ptr %k, align 4, !tbaa !8
  %sub484 = sub nsw i32 %437, 1
  store i32 %sub484, ptr %i__, align 4, !tbaa !8
  br label %for.cond485

for.cond485:                                      ; preds = %for.inc687, %if.end467
  %438 = load i32, ptr %i__, align 4, !tbaa !8
  %cmp486 = icmp sge i32 %438, 1
  br i1 %cmp486, label %for.body488, label %for.end688

for.body488:                                      ; preds = %for.cond485
  %439 = load i32, ptr %i__, align 4, !tbaa !8
  %sub489 = sub nsw i32 %439, 1
  %440 = load i32, ptr %nb, align 4, !tbaa !8
  %mul490 = mul nsw i32 %sub489, %440
  %add491 = add nsw i32 %mul490, 1
  store i32 %add491, ptr %i1, align 4, !tbaa !8
  %441 = load i32, ptr %i__, align 4, !tbaa !8
  %442 = load i32, ptr %nb, align 4, !tbaa !8
  %mul492 = mul nsw i32 %441, %442
  store i32 %mul492, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x493) #5
  %443 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %443, ptr %_x493, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y494) #5
  %444 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %445 = load i32, ptr %444, align 4, !tbaa !8
  store i32 %445, ptr %_y494, align 4, !tbaa !8
  %446 = load i32, ptr %_x493, align 4, !tbaa !8
  %447 = load i32, ptr %_y494, align 4, !tbaa !8
  %cmp496 = icmp slt i32 %446, %447
  br i1 %cmp496, label %cond.true498, label %cond.false499

cond.true498:                                     ; preds = %for.body488
  %448 = load i32, ptr %_x493, align 4, !tbaa !8
  br label %cond.end500

cond.false499:                                    ; preds = %for.body488
  %449 = load i32, ptr %_y494, align 4, !tbaa !8
  br label %cond.end500

cond.end500:                                      ; preds = %cond.false499, %cond.true498
  %cond501 = phi i32 [ %448, %cond.true498 ], [ %449, %cond.false499 ]
  store i32 %cond501, ptr %tmp495, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y494) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x493) #5
  %450 = load i32, ptr %tmp495, align 4, !tbaa !8
  %add502 = add nsw i32 %450, 1
  store i32 %add502, ptr %i2, align 4, !tbaa !8
  %451 = load i32, ptr %i2, align 4, !tbaa !8
  %452 = load i32, ptr %i1, align 4, !tbaa !8
  %sub503 = sub nsw i32 %451, %452
  store i32 %sub503, ptr %i__2, align 4, !tbaa !8
  %453 = load i32, ptr %l2, align 4, !tbaa !8
  %454 = load i32, ptr %l1, align 4, !tbaa !8
  %sub504 = sub nsw i32 %453, %454
  store i32 %sub504, ptr %i__3, align 4, !tbaa !8
  %455 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %456 = load i32, ptr %i1, align 4, !tbaa !8
  %457 = load i32, ptr %l1, align 4, !tbaa !8
  %458 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul505 = mul nsw i32 %457, %458
  %add506 = add nsw i32 %456, %mul505
  %idxprom507 = sext i32 %add506 to i64
  %arrayidx508 = getelementptr inbounds %struct.complex, ptr %455, i64 %idxprom507
  %459 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %460 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call509 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx508, ptr noundef %459, ptr noundef %460)
  store float %call509, ptr %cnrm, align 4, !tbaa !10
  %461 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %462 = load i32, ptr %i__, align 4, !tbaa !8
  %463 = load i32, ptr %l, align 4, !tbaa !8
  %464 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul510 = mul nsw i32 %463, %464
  %add511 = add nsw i32 %462, %mul510
  %idxprom512 = sext i32 %add511 to i64
  %arrayidx513 = getelementptr inbounds float, ptr %461, i64 %idxprom512
  %465 = load float, ptr %arrayidx513, align 4, !tbaa !10
  store float %465, ptr %r__1, align 4, !tbaa !10
  %466 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %467 = load i32, ptr %k, align 4, !tbaa !8
  %468 = load i32, ptr %l, align 4, !tbaa !8
  %469 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul514 = mul nsw i32 %468, %469
  %add515 = add nsw i32 %467, %mul514
  %idxprom516 = sext i32 %add515 to i64
  %arrayidx517 = getelementptr inbounds float, ptr %466, i64 %idxprom516
  %470 = load float, ptr %arrayidx517, align 4, !tbaa !10
  store float %470, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x518) #5
  %471 = load float, ptr %r__1, align 4, !tbaa !10
  store float %471, ptr %_x518, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y519) #5
  %472 = load float, ptr %r__2, align 4, !tbaa !10
  store float %472, ptr %_y519, align 4, !tbaa !10
  %473 = load float, ptr %_x518, align 4, !tbaa !10
  %474 = load float, ptr %_y519, align 4, !tbaa !10
  %cmp521 = fcmp olt float %473, %474
  br i1 %cmp521, label %cond.true523, label %cond.false524

cond.true523:                                     ; preds = %cond.end500
  %475 = load float, ptr %_x518, align 4, !tbaa !10
  br label %cond.end525

cond.false524:                                    ; preds = %cond.end500
  %476 = load float, ptr %_y519, align 4, !tbaa !10
  br label %cond.end525

cond.end525:                                      ; preds = %cond.false524, %cond.true523
  %cond526 = phi float [ %475, %cond.true523 ], [ %476, %cond.false524 ]
  store float %cond526, ptr %tmp520, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y519) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x518) #5
  %477 = load float, ptr %tmp520, align 4, !tbaa !10
  store float %477, ptr %scamin, align 4, !tbaa !10
  %478 = load float, ptr %scamin, align 4, !tbaa !10
  %479 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %480 = load i32, ptr %i__, align 4, !tbaa !8
  %481 = load i32, ptr %l, align 4, !tbaa !8
  %482 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul527 = mul nsw i32 %481, %482
  %add528 = add nsw i32 %480, %mul527
  %idxprom529 = sext i32 %add528 to i64
  %arrayidx530 = getelementptr inbounds float, ptr %479, i64 %idxprom529
  %483 = load float, ptr %arrayidx530, align 4, !tbaa !10
  %div531 = fdiv float %478, %483
  %484 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul532 = fmul float %484, %div531
  store float %mul532, ptr %cnrm, align 4, !tbaa !10
  %485 = load float, ptr %scamin, align 4, !tbaa !10
  %486 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %487 = load i32, ptr %k, align 4, !tbaa !8
  %488 = load i32, ptr %l, align 4, !tbaa !8
  %489 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul533 = mul nsw i32 %488, %489
  %add534 = add nsw i32 %487, %mul533
  %idxprom535 = sext i32 %add534 to i64
  %arrayidx536 = getelementptr inbounds float, ptr %486, i64 %idxprom535
  %490 = load float, ptr %arrayidx536, align 4, !tbaa !10
  %div537 = fdiv float %485, %490
  %491 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul538 = fmul float %491, %div537
  store float %mul538, ptr %xnrm, align 4, !tbaa !10
  %492 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %493 = load i32, ptr %i__, align 4, !tbaa !8
  %494 = load i32, ptr %awrk, align 4, !tbaa !8
  %495 = load i32, ptr %k, align 4, !tbaa !8
  %add539 = add nsw i32 %494, %495
  %496 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul540 = mul nsw i32 %add539, %496
  %add541 = add nsw i32 %493, %mul540
  %idxprom542 = sext i32 %add541 to i64
  %arrayidx543 = getelementptr inbounds float, ptr %492, i64 %idxprom542
  %497 = load float, ptr %arrayidx543, align 4, !tbaa !10
  store float %497, ptr %anrm, align 4, !tbaa !10
  %call544 = call float @slarmm_(ptr noundef %anrm, ptr noundef %xnrm, ptr noundef %cnrm)
  store float %call544, ptr %scaloc, align 4, !tbaa !10
  %498 = load float, ptr %scaloc, align 4, !tbaa !10
  %499 = load float, ptr %scamin, align 4, !tbaa !10
  %mul545 = fmul float %498, %499
  %cmp546 = fcmp oeq float %mul545, 0.000000e+00
  br i1 %cmp546, label %if.then548, label %if.end608

if.then548:                                       ; preds = %cond.end525
  %500 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv549 = fpext float %500 to double
  %call550 = call double @frexp(double noundef %conv549, ptr noundef %temp) #5
  %501 = load i32, ptr %temp, align 4, !tbaa !8
  %conv551 = sitofp i32 %501 to double
  store double %conv551, ptr %d__1, align 8, !tbaa !22
  %call552 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %502 = load float, ptr %buf, align 4, !tbaa !10
  %conv553 = fpext float %502 to double
  %mul554 = fmul double %conv553, %call552
  %conv555 = fptrunc double %mul554 to float
  store float %conv555, ptr %buf, align 4, !tbaa !10
  %503 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %503, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %jj, align 4, !tbaa !8
  br label %for.cond556

for.cond556:                                      ; preds = %for.inc591, %if.then548
  %504 = load i32, ptr %jj, align 4, !tbaa !8
  %505 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp557 = icmp sle i32 %504, %505
  br i1 %cmp557, label %for.body559, label %for.end593

for.body559:                                      ; preds = %for.cond556
  %506 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %506, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %ll, align 4, !tbaa !8
  br label %for.cond560

for.cond560:                                      ; preds = %for.inc588, %for.body559
  %507 = load i32, ptr %ll, align 4, !tbaa !8
  %508 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp561 = icmp sle i32 %507, %508
  br i1 %cmp561, label %for.body563, label %for.end590

for.body563:                                      ; preds = %for.cond560
  %509 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv564 = fpext float %509 to double
  %call565 = call double @frexp(double noundef %conv564, ptr noundef %temp) #5
  %510 = load i32, ptr %temp, align 4, !tbaa !8
  %conv566 = sitofp i32 %510 to double
  store double %conv566, ptr %d__1, align 8, !tbaa !22
  %511 = load float, ptr %bignum, align 4, !tbaa !10
  store float %511, ptr %r__1, align 4, !tbaa !10
  %512 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %513 = load i32, ptr %ll, align 4, !tbaa !8
  %514 = load i32, ptr %jj, align 4, !tbaa !8
  %515 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul567 = mul nsw i32 %514, %515
  %add568 = add nsw i32 %513, %mul567
  %idxprom569 = sext i32 %add568 to i64
  %arrayidx570 = getelementptr inbounds float, ptr %512, i64 %idxprom569
  %516 = load float, ptr %arrayidx570, align 4, !tbaa !10
  %conv571 = fpext float %516 to double
  %call572 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %div573 = fdiv double %conv571, %call572
  %conv574 = fptrunc double %div573 to float
  store float %conv574, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x575) #5
  %517 = load float, ptr %r__1, align 4, !tbaa !10
  store float %517, ptr %_x575, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y576) #5
  %518 = load float, ptr %r__2, align 4, !tbaa !10
  store float %518, ptr %_y576, align 4, !tbaa !10
  %519 = load float, ptr %_x575, align 4, !tbaa !10
  %520 = load float, ptr %_y576, align 4, !tbaa !10
  %cmp578 = fcmp olt float %519, %520
  br i1 %cmp578, label %cond.true580, label %cond.false581

cond.true580:                                     ; preds = %for.body563
  %521 = load float, ptr %_x575, align 4, !tbaa !10
  br label %cond.end582

cond.false581:                                    ; preds = %for.body563
  %522 = load float, ptr %_y576, align 4, !tbaa !10
  br label %cond.end582

cond.end582:                                      ; preds = %cond.false581, %cond.true580
  %cond583 = phi float [ %521, %cond.true580 ], [ %522, %cond.false581 ]
  store float %cond583, ptr %tmp577, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y576) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x575) #5
  %523 = load float, ptr %tmp577, align 4, !tbaa !10
  %524 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %525 = load i32, ptr %ll, align 4, !tbaa !8
  %526 = load i32, ptr %jj, align 4, !tbaa !8
  %527 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul584 = mul nsw i32 %526, %527
  %add585 = add nsw i32 %525, %mul584
  %idxprom586 = sext i32 %add585 to i64
  %arrayidx587 = getelementptr inbounds float, ptr %524, i64 %idxprom586
  store float %523, ptr %arrayidx587, align 4, !tbaa !10
  br label %for.inc588

for.inc588:                                       ; preds = %cond.end582
  %528 = load i32, ptr %ll, align 4, !tbaa !8
  %inc589 = add nsw i32 %528, 1
  store i32 %inc589, ptr %ll, align 4, !tbaa !8
  br label %for.cond560, !llvm.loop !26

for.end590:                                       ; preds = %for.cond560
  br label %for.inc591

for.inc591:                                       ; preds = %for.end590
  %529 = load i32, ptr %jj, align 4, !tbaa !8
  %inc592 = add nsw i32 %529, 1
  store i32 %inc592, ptr %jj, align 4, !tbaa !8
  br label %for.cond556, !llvm.loop !27

for.end593:                                       ; preds = %for.cond556
  %530 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv594 = fpext float %530 to double
  %call595 = call double @frexp(double noundef %conv594, ptr noundef %temp) #5
  %531 = load i32, ptr %temp, align 4, !tbaa !8
  %conv596 = sitofp i32 %531 to double
  store double %conv596, ptr %d__1, align 8, !tbaa !22
  %call597 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %532 = load float, ptr %scamin, align 4, !tbaa !10
  %conv598 = fpext float %532 to double
  %div599 = fdiv double %conv598, %call597
  %conv600 = fptrunc double %div599 to float
  store float %conv600, ptr %scamin, align 4, !tbaa !10
  %533 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv601 = fpext float %533 to double
  %call602 = call double @frexp(double noundef %conv601, ptr noundef %temp) #5
  %534 = load i32, ptr %temp, align 4, !tbaa !8
  %conv603 = sitofp i32 %534 to double
  store double %conv603, ptr %d__1, align 8, !tbaa !22
  %call604 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %535 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv605 = fpext float %535 to double
  %div606 = fdiv double %conv605, %call604
  %conv607 = fptrunc double %div606 to float
  store float %conv607, ptr %scaloc, align 4, !tbaa !10
  br label %if.end608

if.end608:                                        ; preds = %for.end593, %cond.end525
  %536 = load float, ptr %scaloc, align 4, !tbaa !10
  %537 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul609 = fmul float %537, %536
  store float %mul609, ptr %cnrm, align 4, !tbaa !10
  %538 = load float, ptr %scaloc, align 4, !tbaa !10
  %539 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul610 = fmul float %539, %538
  store float %mul610, ptr %xnrm, align 4, !tbaa !10
  %540 = load float, ptr %scamin, align 4, !tbaa !10
  %541 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %542 = load i32, ptr %k, align 4, !tbaa !8
  %543 = load i32, ptr %l, align 4, !tbaa !8
  %544 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul611 = mul nsw i32 %543, %544
  %add612 = add nsw i32 %542, %mul611
  %idxprom613 = sext i32 %add612 to i64
  %arrayidx614 = getelementptr inbounds float, ptr %541, i64 %idxprom613
  %545 = load float, ptr %arrayidx614, align 4, !tbaa !10
  %div615 = fdiv float %540, %545
  %546 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul616 = fmul float %div615, %546
  store float %mul616, ptr %scal, align 4, !tbaa !10
  %547 = load float, ptr %scal, align 4, !tbaa !10
  %cmp617 = fcmp une float %547, 1.000000e+00
  br i1 %cmp617, label %if.then619, label %if.end634

if.then619:                                       ; preds = %if.end608
  %548 = load i32, ptr %l2, align 4, !tbaa !8
  %sub620 = sub nsw i32 %548, 1
  store i32 %sub620, ptr %i__2, align 4, !tbaa !8
  %549 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %549, ptr %jj, align 4, !tbaa !8
  br label %for.cond621

for.cond621:                                      ; preds = %for.inc631, %if.then619
  %550 = load i32, ptr %jj, align 4, !tbaa !8
  %551 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp622 = icmp sle i32 %550, %551
  br i1 %cmp622, label %for.body624, label %for.end633

for.body624:                                      ; preds = %for.cond621
  %552 = load i32, ptr %k2, align 4, !tbaa !8
  %553 = load i32, ptr %k1, align 4, !tbaa !8
  %sub625 = sub nsw i32 %552, %553
  store i32 %sub625, ptr %i__3, align 4, !tbaa !8
  %554 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %555 = load i32, ptr %k1, align 4, !tbaa !8
  %556 = load i32, ptr %jj, align 4, !tbaa !8
  %557 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul626 = mul nsw i32 %556, %557
  %add627 = add nsw i32 %555, %mul626
  %idxprom628 = sext i32 %add627 to i64
  %arrayidx629 = getelementptr inbounds %struct.complex, ptr %554, i64 %idxprom628
  %call630 = call i32 @csscal_(ptr noundef %i__3, ptr noundef %scal, ptr noundef %arrayidx629, ptr noundef @c__1)
  br label %for.inc631

for.inc631:                                       ; preds = %for.body624
  %558 = load i32, ptr %jj, align 4, !tbaa !8
  %inc632 = add nsw i32 %558, 1
  store i32 %inc632, ptr %jj, align 4, !tbaa !8
  br label %for.cond621, !llvm.loop !28

for.end633:                                       ; preds = %for.cond621
  br label %if.end634

if.end634:                                        ; preds = %for.end633, %if.end608
  %559 = load float, ptr %scamin, align 4, !tbaa !10
  %560 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %561 = load i32, ptr %i__, align 4, !tbaa !8
  %562 = load i32, ptr %l, align 4, !tbaa !8
  %563 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul635 = mul nsw i32 %562, %563
  %add636 = add nsw i32 %561, %mul635
  %idxprom637 = sext i32 %add636 to i64
  %arrayidx638 = getelementptr inbounds float, ptr %560, i64 %idxprom637
  %564 = load float, ptr %arrayidx638, align 4, !tbaa !10
  %div639 = fdiv float %559, %564
  %565 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul640 = fmul float %div639, %565
  store float %mul640, ptr %scal, align 4, !tbaa !10
  %566 = load float, ptr %scal, align 4, !tbaa !10
  %cmp641 = fcmp une float %566, 1.000000e+00
  br i1 %cmp641, label %if.then643, label %if.end658

if.then643:                                       ; preds = %if.end634
  %567 = load i32, ptr %l2, align 4, !tbaa !8
  %sub644 = sub nsw i32 %567, 1
  store i32 %sub644, ptr %i__2, align 4, !tbaa !8
  %568 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %568, ptr %ll, align 4, !tbaa !8
  br label %for.cond645

for.cond645:                                      ; preds = %for.inc655, %if.then643
  %569 = load i32, ptr %ll, align 4, !tbaa !8
  %570 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp646 = icmp sle i32 %569, %570
  br i1 %cmp646, label %for.body648, label %for.end657

for.body648:                                      ; preds = %for.cond645
  %571 = load i32, ptr %i2, align 4, !tbaa !8
  %572 = load i32, ptr %i1, align 4, !tbaa !8
  %sub649 = sub nsw i32 %571, %572
  store i32 %sub649, ptr %i__3, align 4, !tbaa !8
  %573 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %574 = load i32, ptr %i1, align 4, !tbaa !8
  %575 = load i32, ptr %ll, align 4, !tbaa !8
  %576 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul650 = mul nsw i32 %575, %576
  %add651 = add nsw i32 %574, %mul650
  %idxprom652 = sext i32 %add651 to i64
  %arrayidx653 = getelementptr inbounds %struct.complex, ptr %573, i64 %idxprom652
  %call654 = call i32 @csscal_(ptr noundef %i__3, ptr noundef %scal, ptr noundef %arrayidx653, ptr noundef @c__1)
  br label %for.inc655

for.inc655:                                       ; preds = %for.body648
  %577 = load i32, ptr %ll, align 4, !tbaa !8
  %inc656 = add nsw i32 %577, 1
  store i32 %inc656, ptr %ll, align 4, !tbaa !8
  br label %for.cond645, !llvm.loop !29

for.end657:                                       ; preds = %for.cond645
  br label %if.end658

if.end658:                                        ; preds = %for.end657, %if.end634
  %578 = load float, ptr %scamin, align 4, !tbaa !10
  %579 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul659 = fmul float %578, %579
  %580 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %581 = load i32, ptr %k, align 4, !tbaa !8
  %582 = load i32, ptr %l, align 4, !tbaa !8
  %583 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul660 = mul nsw i32 %582, %583
  %add661 = add nsw i32 %581, %mul660
  %idxprom662 = sext i32 %add661 to i64
  %arrayidx663 = getelementptr inbounds float, ptr %580, i64 %idxprom662
  store float %mul659, ptr %arrayidx663, align 4, !tbaa !10
  %584 = load float, ptr %scamin, align 4, !tbaa !10
  %585 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul664 = fmul float %584, %585
  %586 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %587 = load i32, ptr %i__, align 4, !tbaa !8
  %588 = load i32, ptr %l, align 4, !tbaa !8
  %589 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul665 = mul nsw i32 %588, %589
  %add666 = add nsw i32 %587, %mul665
  %idxprom667 = sext i32 %add666 to i64
  %arrayidx668 = getelementptr inbounds float, ptr %586, i64 %idxprom667
  store float %mul664, ptr %arrayidx668, align 4, !tbaa !10
  %590 = load i32, ptr %i2, align 4, !tbaa !8
  %591 = load i32, ptr %i1, align 4, !tbaa !8
  %sub669 = sub nsw i32 %590, %591
  store i32 %sub669, ptr %i__2, align 4, !tbaa !8
  %592 = load i32, ptr %l2, align 4, !tbaa !8
  %593 = load i32, ptr %l1, align 4, !tbaa !8
  %sub670 = sub nsw i32 %592, %593
  store i32 %sub670, ptr %i__3, align 4, !tbaa !8
  %594 = load i32, ptr %k2, align 4, !tbaa !8
  %595 = load i32, ptr %k1, align 4, !tbaa !8
  %sub671 = sub nsw i32 %594, %595
  store i32 %sub671, ptr %i__4, align 4, !tbaa !8
  %r672 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r672, align 4, !tbaa !19
  %i673 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i673, align 4, !tbaa !21
  %596 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %597 = load i32, ptr %i1, align 4, !tbaa !8
  %598 = load i32, ptr %k1, align 4, !tbaa !8
  %599 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul674 = mul nsw i32 %598, %599
  %add675 = add nsw i32 %597, %mul674
  %idxprom676 = sext i32 %add675 to i64
  %arrayidx677 = getelementptr inbounds %struct.complex, ptr %596, i64 %idxprom676
  %600 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %601 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %602 = load i32, ptr %k1, align 4, !tbaa !8
  %603 = load i32, ptr %l1, align 4, !tbaa !8
  %604 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul678 = mul nsw i32 %603, %604
  %add679 = add nsw i32 %602, %mul678
  %idxprom680 = sext i32 %add679 to i64
  %arrayidx681 = getelementptr inbounds %struct.complex, ptr %601, i64 %idxprom680
  %605 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %606 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %607 = load i32, ptr %i1, align 4, !tbaa !8
  %608 = load i32, ptr %l1, align 4, !tbaa !8
  %609 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul682 = mul nsw i32 %608, %609
  %add683 = add nsw i32 %607, %mul682
  %idxprom684 = sext i32 %add683 to i64
  %arrayidx685 = getelementptr inbounds %struct.complex, ptr %606, i64 %idxprom684
  %610 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call686 = call i32 @cgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %q__1, ptr noundef %arrayidx677, ptr noundef %600, ptr noundef %arrayidx681, ptr noundef %605, ptr noundef @c_b1, ptr noundef %arrayidx685, ptr noundef %610)
  br label %for.inc687

for.inc687:                                       ; preds = %if.end658
  %611 = load i32, ptr %i__, align 4, !tbaa !8
  %dec = add nsw i32 %611, -1
  store i32 %dec, ptr %i__, align 4, !tbaa !8
  br label %for.cond485, !llvm.loop !30

for.end688:                                       ; preds = %for.cond485
  %612 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %612, ptr %i__2, align 4, !tbaa !8
  %613 = load i32, ptr %l, align 4, !tbaa !8
  %add689 = add nsw i32 %613, 1
  store i32 %add689, ptr %j, align 4, !tbaa !8
  br label %for.cond690

for.cond690:                                      ; preds = %for.inc895, %for.end688
  %614 = load i32, ptr %j, align 4, !tbaa !8
  %615 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp691 = icmp sle i32 %614, %615
  br i1 %cmp691, label %for.body693, label %for.end897

for.body693:                                      ; preds = %for.cond690
  %616 = load i32, ptr %j, align 4, !tbaa !8
  %sub694 = sub nsw i32 %616, 1
  %617 = load i32, ptr %nb, align 4, !tbaa !8
  %mul695 = mul nsw i32 %sub694, %617
  %add696 = add nsw i32 %mul695, 1
  store i32 %add696, ptr %j1, align 4, !tbaa !8
  %618 = load i32, ptr %j, align 4, !tbaa !8
  %619 = load i32, ptr %nb, align 4, !tbaa !8
  %mul697 = mul nsw i32 %618, %619
  store i32 %mul697, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x698) #5
  %620 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %620, ptr %_x698, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y699) #5
  %621 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %622 = load i32, ptr %621, align 4, !tbaa !8
  store i32 %622, ptr %_y699, align 4, !tbaa !8
  %623 = load i32, ptr %_x698, align 4, !tbaa !8
  %624 = load i32, ptr %_y699, align 4, !tbaa !8
  %cmp701 = icmp slt i32 %623, %624
  br i1 %cmp701, label %cond.true703, label %cond.false704

cond.true703:                                     ; preds = %for.body693
  %625 = load i32, ptr %_x698, align 4, !tbaa !8
  br label %cond.end705

cond.false704:                                    ; preds = %for.body693
  %626 = load i32, ptr %_y699, align 4, !tbaa !8
  br label %cond.end705

cond.end705:                                      ; preds = %cond.false704, %cond.true703
  %cond706 = phi i32 [ %625, %cond.true703 ], [ %626, %cond.false704 ]
  store i32 %cond706, ptr %tmp700, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y699) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x698) #5
  %627 = load i32, ptr %tmp700, align 4, !tbaa !8
  %add707 = add nsw i32 %627, 1
  store i32 %add707, ptr %j2, align 4, !tbaa !8
  %628 = load i32, ptr %k2, align 4, !tbaa !8
  %629 = load i32, ptr %k1, align 4, !tbaa !8
  %sub708 = sub nsw i32 %628, %629
  store i32 %sub708, ptr %i__3, align 4, !tbaa !8
  %630 = load i32, ptr %j2, align 4, !tbaa !8
  %631 = load i32, ptr %j1, align 4, !tbaa !8
  %sub709 = sub nsw i32 %630, %631
  store i32 %sub709, ptr %i__4, align 4, !tbaa !8
  %632 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %633 = load i32, ptr %k1, align 4, !tbaa !8
  %634 = load i32, ptr %j1, align 4, !tbaa !8
  %635 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul710 = mul nsw i32 %634, %635
  %add711 = add nsw i32 %633, %mul710
  %idxprom712 = sext i32 %add711 to i64
  %arrayidx713 = getelementptr inbounds %struct.complex, ptr %632, i64 %idxprom712
  %636 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %637 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call714 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx713, ptr noundef %636, ptr noundef %637)
  store float %call714, ptr %cnrm, align 4, !tbaa !10
  %638 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %639 = load i32, ptr %k, align 4, !tbaa !8
  %640 = load i32, ptr %j, align 4, !tbaa !8
  %641 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul715 = mul nsw i32 %640, %641
  %add716 = add nsw i32 %639, %mul715
  %idxprom717 = sext i32 %add716 to i64
  %arrayidx718 = getelementptr inbounds float, ptr %638, i64 %idxprom717
  %642 = load float, ptr %arrayidx718, align 4, !tbaa !10
  store float %642, ptr %r__1, align 4, !tbaa !10
  %643 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %644 = load i32, ptr %k, align 4, !tbaa !8
  %645 = load i32, ptr %l, align 4, !tbaa !8
  %646 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul719 = mul nsw i32 %645, %646
  %add720 = add nsw i32 %644, %mul719
  %idxprom721 = sext i32 %add720 to i64
  %arrayidx722 = getelementptr inbounds float, ptr %643, i64 %idxprom721
  %647 = load float, ptr %arrayidx722, align 4, !tbaa !10
  store float %647, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x723) #5
  %648 = load float, ptr %r__1, align 4, !tbaa !10
  store float %648, ptr %_x723, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y724) #5
  %649 = load float, ptr %r__2, align 4, !tbaa !10
  store float %649, ptr %_y724, align 4, !tbaa !10
  %650 = load float, ptr %_x723, align 4, !tbaa !10
  %651 = load float, ptr %_y724, align 4, !tbaa !10
  %cmp726 = fcmp olt float %650, %651
  br i1 %cmp726, label %cond.true728, label %cond.false729

cond.true728:                                     ; preds = %cond.end705
  %652 = load float, ptr %_x723, align 4, !tbaa !10
  br label %cond.end730

cond.false729:                                    ; preds = %cond.end705
  %653 = load float, ptr %_y724, align 4, !tbaa !10
  br label %cond.end730

cond.end730:                                      ; preds = %cond.false729, %cond.true728
  %cond731 = phi float [ %652, %cond.true728 ], [ %653, %cond.false729 ]
  store float %cond731, ptr %tmp725, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y724) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x723) #5
  %654 = load float, ptr %tmp725, align 4, !tbaa !10
  store float %654, ptr %scamin, align 4, !tbaa !10
  %655 = load float, ptr %scamin, align 4, !tbaa !10
  %656 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %657 = load i32, ptr %k, align 4, !tbaa !8
  %658 = load i32, ptr %j, align 4, !tbaa !8
  %659 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul732 = mul nsw i32 %658, %659
  %add733 = add nsw i32 %657, %mul732
  %idxprom734 = sext i32 %add733 to i64
  %arrayidx735 = getelementptr inbounds float, ptr %656, i64 %idxprom734
  %660 = load float, ptr %arrayidx735, align 4, !tbaa !10
  %div736 = fdiv float %655, %660
  %661 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul737 = fmul float %661, %div736
  store float %mul737, ptr %cnrm, align 4, !tbaa !10
  %662 = load float, ptr %scamin, align 4, !tbaa !10
  %663 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %664 = load i32, ptr %k, align 4, !tbaa !8
  %665 = load i32, ptr %l, align 4, !tbaa !8
  %666 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul738 = mul nsw i32 %665, %666
  %add739 = add nsw i32 %664, %mul738
  %idxprom740 = sext i32 %add739 to i64
  %arrayidx741 = getelementptr inbounds float, ptr %663, i64 %idxprom740
  %667 = load float, ptr %arrayidx741, align 4, !tbaa !10
  %div742 = fdiv float %662, %667
  %668 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul743 = fmul float %668, %div742
  store float %mul743, ptr %xnrm, align 4, !tbaa !10
  %669 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %670 = load i32, ptr %l, align 4, !tbaa !8
  %671 = load i32, ptr %bwrk, align 4, !tbaa !8
  %672 = load i32, ptr %j, align 4, !tbaa !8
  %add744 = add nsw i32 %671, %672
  %673 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul745 = mul nsw i32 %add744, %673
  %add746 = add nsw i32 %670, %mul745
  %idxprom747 = sext i32 %add746 to i64
  %arrayidx748 = getelementptr inbounds float, ptr %669, i64 %idxprom747
  %674 = load float, ptr %arrayidx748, align 4, !tbaa !10
  store float %674, ptr %bnrm, align 4, !tbaa !10
  %call749 = call float @slarmm_(ptr noundef %bnrm, ptr noundef %xnrm, ptr noundef %cnrm)
  store float %call749, ptr %scaloc, align 4, !tbaa !10
  %675 = load float, ptr %scaloc, align 4, !tbaa !10
  %676 = load float, ptr %scamin, align 4, !tbaa !10
  %mul750 = fmul float %675, %676
  %cmp751 = fcmp oeq float %mul750, 0.000000e+00
  br i1 %cmp751, label %if.then753, label %if.end813

if.then753:                                       ; preds = %cond.end730
  %677 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv754 = fpext float %677 to double
  %call755 = call double @frexp(double noundef %conv754, ptr noundef %temp) #5
  %678 = load i32, ptr %temp, align 4, !tbaa !8
  %conv756 = sitofp i32 %678 to double
  store double %conv756, ptr %d__1, align 8, !tbaa !22
  %call757 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %679 = load float, ptr %buf, align 4, !tbaa !10
  %conv758 = fpext float %679 to double
  %mul759 = fmul double %conv758, %call757
  %conv760 = fptrunc double %mul759 to float
  store float %conv760, ptr %buf, align 4, !tbaa !10
  %680 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %680, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %jj, align 4, !tbaa !8
  br label %for.cond761

for.cond761:                                      ; preds = %for.inc796, %if.then753
  %681 = load i32, ptr %jj, align 4, !tbaa !8
  %682 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp762 = icmp sle i32 %681, %682
  br i1 %cmp762, label %for.body764, label %for.end798

for.body764:                                      ; preds = %for.cond761
  %683 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %683, ptr %i__4, align 4, !tbaa !8
  store i32 1, ptr %ll, align 4, !tbaa !8
  br label %for.cond765

for.cond765:                                      ; preds = %for.inc793, %for.body764
  %684 = load i32, ptr %ll, align 4, !tbaa !8
  %685 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp766 = icmp sle i32 %684, %685
  br i1 %cmp766, label %for.body768, label %for.end795

for.body768:                                      ; preds = %for.cond765
  %686 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv769 = fpext float %686 to double
  %call770 = call double @frexp(double noundef %conv769, ptr noundef %temp) #5
  %687 = load i32, ptr %temp, align 4, !tbaa !8
  %conv771 = sitofp i32 %687 to double
  store double %conv771, ptr %d__1, align 8, !tbaa !22
  %688 = load float, ptr %bignum, align 4, !tbaa !10
  store float %688, ptr %r__1, align 4, !tbaa !10
  %689 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %690 = load i32, ptr %ll, align 4, !tbaa !8
  %691 = load i32, ptr %jj, align 4, !tbaa !8
  %692 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul772 = mul nsw i32 %691, %692
  %add773 = add nsw i32 %690, %mul772
  %idxprom774 = sext i32 %add773 to i64
  %arrayidx775 = getelementptr inbounds float, ptr %689, i64 %idxprom774
  %693 = load float, ptr %arrayidx775, align 4, !tbaa !10
  %conv776 = fpext float %693 to double
  %call777 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %div778 = fdiv double %conv776, %call777
  %conv779 = fptrunc double %div778 to float
  store float %conv779, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x780) #5
  %694 = load float, ptr %r__1, align 4, !tbaa !10
  store float %694, ptr %_x780, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y781) #5
  %695 = load float, ptr %r__2, align 4, !tbaa !10
  store float %695, ptr %_y781, align 4, !tbaa !10
  %696 = load float, ptr %_x780, align 4, !tbaa !10
  %697 = load float, ptr %_y781, align 4, !tbaa !10
  %cmp783 = fcmp olt float %696, %697
  br i1 %cmp783, label %cond.true785, label %cond.false786

cond.true785:                                     ; preds = %for.body768
  %698 = load float, ptr %_x780, align 4, !tbaa !10
  br label %cond.end787

cond.false786:                                    ; preds = %for.body768
  %699 = load float, ptr %_y781, align 4, !tbaa !10
  br label %cond.end787

cond.end787:                                      ; preds = %cond.false786, %cond.true785
  %cond788 = phi float [ %698, %cond.true785 ], [ %699, %cond.false786 ]
  store float %cond788, ptr %tmp782, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y781) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x780) #5
  %700 = load float, ptr %tmp782, align 4, !tbaa !10
  %701 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %702 = load i32, ptr %ll, align 4, !tbaa !8
  %703 = load i32, ptr %jj, align 4, !tbaa !8
  %704 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul789 = mul nsw i32 %703, %704
  %add790 = add nsw i32 %702, %mul789
  %idxprom791 = sext i32 %add790 to i64
  %arrayidx792 = getelementptr inbounds float, ptr %701, i64 %idxprom791
  store float %700, ptr %arrayidx792, align 4, !tbaa !10
  br label %for.inc793

for.inc793:                                       ; preds = %cond.end787
  %705 = load i32, ptr %ll, align 4, !tbaa !8
  %inc794 = add nsw i32 %705, 1
  store i32 %inc794, ptr %ll, align 4, !tbaa !8
  br label %for.cond765, !llvm.loop !31

for.end795:                                       ; preds = %for.cond765
  br label %for.inc796

for.inc796:                                       ; preds = %for.end795
  %706 = load i32, ptr %jj, align 4, !tbaa !8
  %inc797 = add nsw i32 %706, 1
  store i32 %inc797, ptr %jj, align 4, !tbaa !8
  br label %for.cond761, !llvm.loop !32

for.end798:                                       ; preds = %for.cond761
  %707 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv799 = fpext float %707 to double
  %call800 = call double @frexp(double noundef %conv799, ptr noundef %temp) #5
  %708 = load i32, ptr %temp, align 4, !tbaa !8
  %conv801 = sitofp i32 %708 to double
  store double %conv801, ptr %d__1, align 8, !tbaa !22
  %call802 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %709 = load float, ptr %scamin, align 4, !tbaa !10
  %conv803 = fpext float %709 to double
  %div804 = fdiv double %conv803, %call802
  %conv805 = fptrunc double %div804 to float
  store float %conv805, ptr %scamin, align 4, !tbaa !10
  %710 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv806 = fpext float %710 to double
  %call807 = call double @frexp(double noundef %conv806, ptr noundef %temp) #5
  %711 = load i32, ptr %temp, align 4, !tbaa !8
  %conv808 = sitofp i32 %711 to double
  store double %conv808, ptr %d__1, align 8, !tbaa !22
  %call809 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %712 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv810 = fpext float %712 to double
  %div811 = fdiv double %conv810, %call809
  %conv812 = fptrunc double %div811 to float
  store float %conv812, ptr %scaloc, align 4, !tbaa !10
  br label %if.end813

if.end813:                                        ; preds = %for.end798, %cond.end730
  %713 = load float, ptr %scaloc, align 4, !tbaa !10
  %714 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul814 = fmul float %714, %713
  store float %mul814, ptr %cnrm, align 4, !tbaa !10
  %715 = load float, ptr %scaloc, align 4, !tbaa !10
  %716 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul815 = fmul float %716, %715
  store float %mul815, ptr %xnrm, align 4, !tbaa !10
  %717 = load float, ptr %scamin, align 4, !tbaa !10
  %718 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %719 = load i32, ptr %k, align 4, !tbaa !8
  %720 = load i32, ptr %l, align 4, !tbaa !8
  %721 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul816 = mul nsw i32 %720, %721
  %add817 = add nsw i32 %719, %mul816
  %idxprom818 = sext i32 %add817 to i64
  %arrayidx819 = getelementptr inbounds float, ptr %718, i64 %idxprom818
  %722 = load float, ptr %arrayidx819, align 4, !tbaa !10
  %div820 = fdiv float %717, %722
  %723 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul821 = fmul float %div820, %723
  store float %mul821, ptr %scal, align 4, !tbaa !10
  %724 = load float, ptr %scal, align 4, !tbaa !10
  %cmp822 = fcmp une float %724, 1.000000e+00
  br i1 %cmp822, label %if.then824, label %if.end839

if.then824:                                       ; preds = %if.end813
  %725 = load i32, ptr %l2, align 4, !tbaa !8
  %sub825 = sub nsw i32 %725, 1
  store i32 %sub825, ptr %i__3, align 4, !tbaa !8
  %726 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %726, ptr %ll, align 4, !tbaa !8
  br label %for.cond826

for.cond826:                                      ; preds = %for.inc836, %if.then824
  %727 = load i32, ptr %ll, align 4, !tbaa !8
  %728 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp827 = icmp sle i32 %727, %728
  br i1 %cmp827, label %for.body829, label %for.end838

for.body829:                                      ; preds = %for.cond826
  %729 = load i32, ptr %k2, align 4, !tbaa !8
  %730 = load i32, ptr %k1, align 4, !tbaa !8
  %sub830 = sub nsw i32 %729, %730
  store i32 %sub830, ptr %i__4, align 4, !tbaa !8
  %731 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %732 = load i32, ptr %k1, align 4, !tbaa !8
  %733 = load i32, ptr %ll, align 4, !tbaa !8
  %734 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul831 = mul nsw i32 %733, %734
  %add832 = add nsw i32 %732, %mul831
  %idxprom833 = sext i32 %add832 to i64
  %arrayidx834 = getelementptr inbounds %struct.complex, ptr %731, i64 %idxprom833
  %call835 = call i32 @csscal_(ptr noundef %i__4, ptr noundef %scal, ptr noundef %arrayidx834, ptr noundef @c__1)
  br label %for.inc836

for.inc836:                                       ; preds = %for.body829
  %735 = load i32, ptr %ll, align 4, !tbaa !8
  %inc837 = add nsw i32 %735, 1
  store i32 %inc837, ptr %ll, align 4, !tbaa !8
  br label %for.cond826, !llvm.loop !33

for.end838:                                       ; preds = %for.cond826
  br label %if.end839

if.end839:                                        ; preds = %for.end838, %if.end813
  %736 = load float, ptr %scamin, align 4, !tbaa !10
  %737 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %738 = load i32, ptr %k, align 4, !tbaa !8
  %739 = load i32, ptr %j, align 4, !tbaa !8
  %740 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul840 = mul nsw i32 %739, %740
  %add841 = add nsw i32 %738, %mul840
  %idxprom842 = sext i32 %add841 to i64
  %arrayidx843 = getelementptr inbounds float, ptr %737, i64 %idxprom842
  %741 = load float, ptr %arrayidx843, align 4, !tbaa !10
  %div844 = fdiv float %736, %741
  %742 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul845 = fmul float %div844, %742
  store float %mul845, ptr %scal, align 4, !tbaa !10
  %743 = load float, ptr %scal, align 4, !tbaa !10
  %cmp846 = fcmp une float %743, 1.000000e+00
  br i1 %cmp846, label %if.then848, label %if.end863

if.then848:                                       ; preds = %if.end839
  %744 = load i32, ptr %j2, align 4, !tbaa !8
  %sub849 = sub nsw i32 %744, 1
  store i32 %sub849, ptr %i__3, align 4, !tbaa !8
  %745 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %745, ptr %jj, align 4, !tbaa !8
  br label %for.cond850

for.cond850:                                      ; preds = %for.inc860, %if.then848
  %746 = load i32, ptr %jj, align 4, !tbaa !8
  %747 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp851 = icmp sle i32 %746, %747
  br i1 %cmp851, label %for.body853, label %for.end862

for.body853:                                      ; preds = %for.cond850
  %748 = load i32, ptr %k2, align 4, !tbaa !8
  %749 = load i32, ptr %k1, align 4, !tbaa !8
  %sub854 = sub nsw i32 %748, %749
  store i32 %sub854, ptr %i__4, align 4, !tbaa !8
  %750 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %751 = load i32, ptr %k1, align 4, !tbaa !8
  %752 = load i32, ptr %jj, align 4, !tbaa !8
  %753 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul855 = mul nsw i32 %752, %753
  %add856 = add nsw i32 %751, %mul855
  %idxprom857 = sext i32 %add856 to i64
  %arrayidx858 = getelementptr inbounds %struct.complex, ptr %750, i64 %idxprom857
  %call859 = call i32 @csscal_(ptr noundef %i__4, ptr noundef %scal, ptr noundef %arrayidx858, ptr noundef @c__1)
  br label %for.inc860

for.inc860:                                       ; preds = %for.body853
  %754 = load i32, ptr %jj, align 4, !tbaa !8
  %inc861 = add nsw i32 %754, 1
  store i32 %inc861, ptr %jj, align 4, !tbaa !8
  br label %for.cond850, !llvm.loop !34

for.end862:                                       ; preds = %for.cond850
  br label %if.end863

if.end863:                                        ; preds = %for.end862, %if.end839
  %755 = load float, ptr %scamin, align 4, !tbaa !10
  %756 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul864 = fmul float %755, %756
  %757 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %758 = load i32, ptr %k, align 4, !tbaa !8
  %759 = load i32, ptr %l, align 4, !tbaa !8
  %760 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul865 = mul nsw i32 %759, %760
  %add866 = add nsw i32 %758, %mul865
  %idxprom867 = sext i32 %add866 to i64
  %arrayidx868 = getelementptr inbounds float, ptr %757, i64 %idxprom867
  store float %mul864, ptr %arrayidx868, align 4, !tbaa !10
  %761 = load float, ptr %scamin, align 4, !tbaa !10
  %762 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul869 = fmul float %761, %762
  %763 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %764 = load i32, ptr %k, align 4, !tbaa !8
  %765 = load i32, ptr %j, align 4, !tbaa !8
  %766 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul870 = mul nsw i32 %765, %766
  %add871 = add nsw i32 %764, %mul870
  %idxprom872 = sext i32 %add871 to i64
  %arrayidx873 = getelementptr inbounds float, ptr %763, i64 %idxprom872
  store float %mul869, ptr %arrayidx873, align 4, !tbaa !10
  %767 = load i32, ptr %k2, align 4, !tbaa !8
  %768 = load i32, ptr %k1, align 4, !tbaa !8
  %sub874 = sub nsw i32 %767, %768
  store i32 %sub874, ptr %i__3, align 4, !tbaa !8
  %769 = load i32, ptr %j2, align 4, !tbaa !8
  %770 = load i32, ptr %j1, align 4, !tbaa !8
  %sub875 = sub nsw i32 %769, %770
  store i32 %sub875, ptr %i__4, align 4, !tbaa !8
  %771 = load i32, ptr %l2, align 4, !tbaa !8
  %772 = load i32, ptr %l1, align 4, !tbaa !8
  %sub876 = sub nsw i32 %771, %772
  store i32 %sub876, ptr %i__5, align 4, !tbaa !8
  %r877 = getelementptr inbounds %struct.complex, ptr %csgn, i32 0, i32 0
  %773 = load float, ptr %r877, align 4, !tbaa !19
  %fneg = fneg float %773
  %r878 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %fneg, ptr %r878, align 4, !tbaa !19
  %i879 = getelementptr inbounds %struct.complex, ptr %csgn, i32 0, i32 1
  %774 = load float, ptr %i879, align 4, !tbaa !21
  %fneg880 = fneg float %774
  %i881 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %fneg880, ptr %i881, align 4, !tbaa !21
  %775 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %776 = load i32, ptr %k1, align 4, !tbaa !8
  %777 = load i32, ptr %l1, align 4, !tbaa !8
  %778 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul882 = mul nsw i32 %777, %778
  %add883 = add nsw i32 %776, %mul882
  %idxprom884 = sext i32 %add883 to i64
  %arrayidx885 = getelementptr inbounds %struct.complex, ptr %775, i64 %idxprom884
  %779 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %780 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %781 = load i32, ptr %l1, align 4, !tbaa !8
  %782 = load i32, ptr %j1, align 4, !tbaa !8
  %783 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul886 = mul nsw i32 %782, %783
  %add887 = add nsw i32 %781, %mul886
  %idxprom888 = sext i32 %add887 to i64
  %arrayidx889 = getelementptr inbounds %struct.complex, ptr %780, i64 %idxprom888
  %784 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %785 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %786 = load i32, ptr %k1, align 4, !tbaa !8
  %787 = load i32, ptr %j1, align 4, !tbaa !8
  %788 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul890 = mul nsw i32 %787, %788
  %add891 = add nsw i32 %786, %mul890
  %idxprom892 = sext i32 %add891 to i64
  %arrayidx893 = getelementptr inbounds %struct.complex, ptr %785, i64 %idxprom892
  %789 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call894 = call i32 @cgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %i__5, ptr noundef %q__1, ptr noundef %arrayidx885, ptr noundef %779, ptr noundef %arrayidx889, ptr noundef %784, ptr noundef @c_b1, ptr noundef %arrayidx893, ptr noundef %789)
  br label %for.inc895

for.inc895:                                       ; preds = %if.end863
  %790 = load i32, ptr %j, align 4, !tbaa !8
  %inc896 = add nsw i32 %790, 1
  store i32 %inc896, ptr %j, align 4, !tbaa !8
  br label %for.cond690, !llvm.loop !35

for.end897:                                       ; preds = %for.cond690
  br label %for.inc898

for.inc898:                                       ; preds = %for.end897
  %791 = load i32, ptr %l, align 4, !tbaa !8
  %inc899 = add nsw i32 %791, 1
  store i32 %inc899, ptr %l, align 4, !tbaa !8
  br label %for.cond367, !llvm.loop !36

for.end900:                                       ; preds = %for.cond367
  br label %for.inc901

for.inc901:                                       ; preds = %for.end900
  %792 = load i32, ptr %k, align 4, !tbaa !8
  %dec902 = add nsw i32 %792, -1
  store i32 %dec902, ptr %k, align 4, !tbaa !8
  br label %for.cond349, !llvm.loop !37

for.end903:                                       ; preds = %for.cond349
  br label %if.end2593

if.else904:                                       ; preds = %land.lhs.true346, %for.end339
  %793 = load i32, ptr %notrna, align 4, !tbaa !8
  %tobool905 = icmp ne i32 %793, 0
  br i1 %tobool905, label %if.else1466, label %land.lhs.true906

land.lhs.true906:                                 ; preds = %if.else904
  %794 = load i32, ptr %notrnb, align 4, !tbaa !8
  %tobool907 = icmp ne i32 %794, 0
  br i1 %tobool907, label %if.then908, label %if.else1466

if.then908:                                       ; preds = %land.lhs.true906
  %795 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %795, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond909

for.cond909:                                      ; preds = %for.inc1463, %if.then908
  %796 = load i32, ptr %k, align 4, !tbaa !8
  %797 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp910 = icmp sle i32 %796, %797
  br i1 %cmp910, label %for.body912, label %for.end1465

for.body912:                                      ; preds = %for.cond909
  %798 = load i32, ptr %k, align 4, !tbaa !8
  %sub913 = sub nsw i32 %798, 1
  %799 = load i32, ptr %nb, align 4, !tbaa !8
  %mul914 = mul nsw i32 %sub913, %799
  %add915 = add nsw i32 %mul914, 1
  store i32 %add915, ptr %k1, align 4, !tbaa !8
  %800 = load i32, ptr %k, align 4, !tbaa !8
  %801 = load i32, ptr %nb, align 4, !tbaa !8
  %mul916 = mul nsw i32 %800, %801
  store i32 %mul916, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x917) #5
  %802 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %802, ptr %_x917, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y918) #5
  %803 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %804 = load i32, ptr %803, align 4, !tbaa !8
  store i32 %804, ptr %_y918, align 4, !tbaa !8
  %805 = load i32, ptr %_x917, align 4, !tbaa !8
  %806 = load i32, ptr %_y918, align 4, !tbaa !8
  %cmp920 = icmp slt i32 %805, %806
  br i1 %cmp920, label %cond.true922, label %cond.false923

cond.true922:                                     ; preds = %for.body912
  %807 = load i32, ptr %_x917, align 4, !tbaa !8
  br label %cond.end924

cond.false923:                                    ; preds = %for.body912
  %808 = load i32, ptr %_y918, align 4, !tbaa !8
  br label %cond.end924

cond.end924:                                      ; preds = %cond.false923, %cond.true922
  %cond925 = phi i32 [ %807, %cond.true922 ], [ %808, %cond.false923 ]
  store i32 %cond925, ptr %tmp919, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y918) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x917) #5
  %809 = load i32, ptr %tmp919, align 4, !tbaa !8
  %add926 = add nsw i32 %809, 1
  store i32 %add926, ptr %k2, align 4, !tbaa !8
  %810 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %810, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond927

for.cond927:                                      ; preds = %for.inc1460, %cond.end924
  %811 = load i32, ptr %l, align 4, !tbaa !8
  %812 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp928 = icmp sle i32 %811, %812
  br i1 %cmp928, label %for.body930, label %for.end1462

for.body930:                                      ; preds = %for.cond927
  %813 = load i32, ptr %l, align 4, !tbaa !8
  %sub931 = sub nsw i32 %813, 1
  %814 = load i32, ptr %nb, align 4, !tbaa !8
  %mul932 = mul nsw i32 %sub931, %814
  %add933 = add nsw i32 %mul932, 1
  store i32 %add933, ptr %l1, align 4, !tbaa !8
  %815 = load i32, ptr %l, align 4, !tbaa !8
  %816 = load i32, ptr %nb, align 4, !tbaa !8
  %mul934 = mul nsw i32 %815, %816
  store i32 %mul934, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x935) #5
  %817 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %817, ptr %_x935, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y936) #5
  %818 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %819 = load i32, ptr %818, align 4, !tbaa !8
  store i32 %819, ptr %_y936, align 4, !tbaa !8
  %820 = load i32, ptr %_x935, align 4, !tbaa !8
  %821 = load i32, ptr %_y936, align 4, !tbaa !8
  %cmp938 = icmp slt i32 %820, %821
  br i1 %cmp938, label %cond.true940, label %cond.false941

cond.true940:                                     ; preds = %for.body930
  %822 = load i32, ptr %_x935, align 4, !tbaa !8
  br label %cond.end942

cond.false941:                                    ; preds = %for.body930
  %823 = load i32, ptr %_y936, align 4, !tbaa !8
  br label %cond.end942

cond.end942:                                      ; preds = %cond.false941, %cond.true940
  %cond943 = phi i32 [ %822, %cond.true940 ], [ %823, %cond.false941 ]
  store i32 %cond943, ptr %tmp937, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y936) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x935) #5
  %824 = load i32, ptr %tmp937, align 4, !tbaa !8
  %add944 = add nsw i32 %824, 1
  store i32 %add944, ptr %l2, align 4, !tbaa !8
  %825 = load i32, ptr %k2, align 4, !tbaa !8
  %826 = load i32, ptr %k1, align 4, !tbaa !8
  %sub945 = sub nsw i32 %825, %826
  store i32 %sub945, ptr %i__3, align 4, !tbaa !8
  %827 = load i32, ptr %l2, align 4, !tbaa !8
  %828 = load i32, ptr %l1, align 4, !tbaa !8
  %sub946 = sub nsw i32 %827, %828
  store i32 %sub946, ptr %i__4, align 4, !tbaa !8
  %829 = load ptr, ptr %trana.addr, align 8, !tbaa !4
  %830 = load ptr, ptr %tranb.addr, align 8, !tbaa !4
  %831 = load ptr, ptr %isgn.addr, align 8, !tbaa !4
  %832 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %833 = load i32, ptr %k1, align 4, !tbaa !8
  %834 = load i32, ptr %k1, align 4, !tbaa !8
  %835 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul947 = mul nsw i32 %834, %835
  %add948 = add nsw i32 %833, %mul947
  %idxprom949 = sext i32 %add948 to i64
  %arrayidx950 = getelementptr inbounds %struct.complex, ptr %832, i64 %idxprom949
  %836 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %837 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %838 = load i32, ptr %l1, align 4, !tbaa !8
  %839 = load i32, ptr %l1, align 4, !tbaa !8
  %840 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul951 = mul nsw i32 %839, %840
  %add952 = add nsw i32 %838, %mul951
  %idxprom953 = sext i32 %add952 to i64
  %arrayidx954 = getelementptr inbounds %struct.complex, ptr %837, i64 %idxprom953
  %841 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %842 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %843 = load i32, ptr %k1, align 4, !tbaa !8
  %844 = load i32, ptr %l1, align 4, !tbaa !8
  %845 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul955 = mul nsw i32 %844, %845
  %add956 = add nsw i32 %843, %mul955
  %idxprom957 = sext i32 %add956 to i64
  %arrayidx958 = getelementptr inbounds %struct.complex, ptr %842, i64 %idxprom957
  %846 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call959 = call i32 @ctrsyl_(ptr noundef %829, ptr noundef %830, ptr noundef %831, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx950, ptr noundef %836, ptr noundef %arrayidx954, ptr noundef %841, ptr noundef %arrayidx958, ptr noundef %846, ptr noundef %scaloc, ptr noundef %iinfo)
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x960) #5
  %847 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %848 = load i32, ptr %847, align 4, !tbaa !8
  store i32 %848, ptr %_x960, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y961) #5
  %849 = load i32, ptr %iinfo, align 4, !tbaa !8
  store i32 %849, ptr %_y961, align 4, !tbaa !8
  %850 = load i32, ptr %_x960, align 4, !tbaa !8
  %851 = load i32, ptr %_y961, align 4, !tbaa !8
  %cmp963 = icmp sgt i32 %850, %851
  br i1 %cmp963, label %cond.true965, label %cond.false966

cond.true965:                                     ; preds = %cond.end942
  %852 = load i32, ptr %_x960, align 4, !tbaa !8
  br label %cond.end967

cond.false966:                                    ; preds = %cond.end942
  %853 = load i32, ptr %_y961, align 4, !tbaa !8
  br label %cond.end967

cond.end967:                                      ; preds = %cond.false966, %cond.true965
  %cond968 = phi i32 [ %852, %cond.true965 ], [ %853, %cond.false966 ]
  store i32 %cond968, ptr %tmp962, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y961) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x960) #5
  %854 = load i32, ptr %tmp962, align 4, !tbaa !8
  %855 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %854, ptr %855, align 4, !tbaa !8
  %856 = load float, ptr %scaloc, align 4, !tbaa !10
  %857 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %858 = load i32, ptr %k, align 4, !tbaa !8
  %859 = load i32, ptr %l, align 4, !tbaa !8
  %860 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul969 = mul nsw i32 %859, %860
  %add970 = add nsw i32 %858, %mul969
  %idxprom971 = sext i32 %add970 to i64
  %arrayidx972 = getelementptr inbounds float, ptr %857, i64 %idxprom971
  %861 = load float, ptr %arrayidx972, align 4, !tbaa !10
  %mul973 = fmul float %856, %861
  %cmp974 = fcmp oeq float %mul973, 0.000000e+00
  br i1 %cmp974, label %if.then976, label %if.end1027

if.then976:                                       ; preds = %cond.end967
  %862 = load float, ptr %scaloc, align 4, !tbaa !10
  %cmp977 = fcmp oeq float %862, 0.000000e+00
  br i1 %cmp977, label %if.then979, label %if.else980

if.then979:                                       ; preds = %if.then976
  store float 0.000000e+00, ptr %buf, align 4, !tbaa !10
  br label %if.end988

if.else980:                                       ; preds = %if.then976
  %863 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv981 = fpext float %863 to double
  %call982 = call double @frexp(double noundef %conv981, ptr noundef %temp) #5
  %864 = load i32, ptr %temp, align 4, !tbaa !8
  %conv983 = sitofp i32 %864 to double
  store double %conv983, ptr %d__1, align 8, !tbaa !22
  %call984 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %865 = load float, ptr %buf, align 4, !tbaa !10
  %conv985 = fpext float %865 to double
  %mul986 = fmul double %conv985, %call984
  %conv987 = fptrunc double %mul986 to float
  store float %conv987, ptr %buf, align 4, !tbaa !10
  br label %if.end988

if.end988:                                        ; preds = %if.else980, %if.then979
  %866 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %866, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %jj, align 4, !tbaa !8
  br label %for.cond989

for.cond989:                                      ; preds = %for.inc1024, %if.end988
  %867 = load i32, ptr %jj, align 4, !tbaa !8
  %868 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp990 = icmp sle i32 %867, %868
  br i1 %cmp990, label %for.body992, label %for.end1026

for.body992:                                      ; preds = %for.cond989
  %869 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %869, ptr %i__4, align 4, !tbaa !8
  store i32 1, ptr %ll, align 4, !tbaa !8
  br label %for.cond993

for.cond993:                                      ; preds = %for.inc1021, %for.body992
  %870 = load i32, ptr %ll, align 4, !tbaa !8
  %871 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp994 = icmp sle i32 %870, %871
  br i1 %cmp994, label %for.body996, label %for.end1023

for.body996:                                      ; preds = %for.cond993
  %872 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv997 = fpext float %872 to double
  %call998 = call double @frexp(double noundef %conv997, ptr noundef %temp) #5
  %873 = load i32, ptr %temp, align 4, !tbaa !8
  %conv999 = sitofp i32 %873 to double
  store double %conv999, ptr %d__1, align 8, !tbaa !22
  %874 = load float, ptr %bignum, align 4, !tbaa !10
  store float %874, ptr %r__1, align 4, !tbaa !10
  %875 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %876 = load i32, ptr %ll, align 4, !tbaa !8
  %877 = load i32, ptr %jj, align 4, !tbaa !8
  %878 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1000 = mul nsw i32 %877, %878
  %add1001 = add nsw i32 %876, %mul1000
  %idxprom1002 = sext i32 %add1001 to i64
  %arrayidx1003 = getelementptr inbounds float, ptr %875, i64 %idxprom1002
  %879 = load float, ptr %arrayidx1003, align 4, !tbaa !10
  %conv1004 = fpext float %879 to double
  %call1005 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %div1006 = fdiv double %conv1004, %call1005
  %conv1007 = fptrunc double %div1006 to float
  store float %conv1007, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1008) #5
  %880 = load float, ptr %r__1, align 4, !tbaa !10
  store float %880, ptr %_x1008, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1009) #5
  %881 = load float, ptr %r__2, align 4, !tbaa !10
  store float %881, ptr %_y1009, align 4, !tbaa !10
  %882 = load float, ptr %_x1008, align 4, !tbaa !10
  %883 = load float, ptr %_y1009, align 4, !tbaa !10
  %cmp1011 = fcmp olt float %882, %883
  br i1 %cmp1011, label %cond.true1013, label %cond.false1014

cond.true1013:                                    ; preds = %for.body996
  %884 = load float, ptr %_x1008, align 4, !tbaa !10
  br label %cond.end1015

cond.false1014:                                   ; preds = %for.body996
  %885 = load float, ptr %_y1009, align 4, !tbaa !10
  br label %cond.end1015

cond.end1015:                                     ; preds = %cond.false1014, %cond.true1013
  %cond1016 = phi float [ %884, %cond.true1013 ], [ %885, %cond.false1014 ]
  store float %cond1016, ptr %tmp1010, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1009) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1008) #5
  %886 = load float, ptr %tmp1010, align 4, !tbaa !10
  %887 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %888 = load i32, ptr %ll, align 4, !tbaa !8
  %889 = load i32, ptr %jj, align 4, !tbaa !8
  %890 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1017 = mul nsw i32 %889, %890
  %add1018 = add nsw i32 %888, %mul1017
  %idxprom1019 = sext i32 %add1018 to i64
  %arrayidx1020 = getelementptr inbounds float, ptr %887, i64 %idxprom1019
  store float %886, ptr %arrayidx1020, align 4, !tbaa !10
  br label %for.inc1021

for.inc1021:                                      ; preds = %cond.end1015
  %891 = load i32, ptr %ll, align 4, !tbaa !8
  %inc1022 = add nsw i32 %891, 1
  store i32 %inc1022, ptr %ll, align 4, !tbaa !8
  br label %for.cond993, !llvm.loop !38

for.end1023:                                      ; preds = %for.cond993
  br label %for.inc1024

for.inc1024:                                      ; preds = %for.end1023
  %892 = load i32, ptr %jj, align 4, !tbaa !8
  %inc1025 = add nsw i32 %892, 1
  store i32 %inc1025, ptr %jj, align 4, !tbaa !8
  br label %for.cond989, !llvm.loop !39

for.end1026:                                      ; preds = %for.cond989
  br label %if.end1027

if.end1027:                                       ; preds = %for.end1026, %cond.end967
  %893 = load float, ptr %scaloc, align 4, !tbaa !10
  %894 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %895 = load i32, ptr %k, align 4, !tbaa !8
  %896 = load i32, ptr %l, align 4, !tbaa !8
  %897 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1028 = mul nsw i32 %896, %897
  %add1029 = add nsw i32 %895, %mul1028
  %idxprom1030 = sext i32 %add1029 to i64
  %arrayidx1031 = getelementptr inbounds float, ptr %894, i64 %idxprom1030
  %898 = load float, ptr %arrayidx1031, align 4, !tbaa !10
  %mul1032 = fmul float %893, %898
  %899 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %900 = load i32, ptr %k, align 4, !tbaa !8
  %901 = load i32, ptr %l, align 4, !tbaa !8
  %902 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1033 = mul nsw i32 %901, %902
  %add1034 = add nsw i32 %900, %mul1033
  %idxprom1035 = sext i32 %add1034 to i64
  %arrayidx1036 = getelementptr inbounds float, ptr %899, i64 %idxprom1035
  store float %mul1032, ptr %arrayidx1036, align 4, !tbaa !10
  %903 = load i32, ptr %k2, align 4, !tbaa !8
  %904 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1037 = sub nsw i32 %903, %904
  store i32 %sub1037, ptr %i__3, align 4, !tbaa !8
  %905 = load i32, ptr %l2, align 4, !tbaa !8
  %906 = load i32, ptr %l1, align 4, !tbaa !8
  %sub1038 = sub nsw i32 %905, %906
  store i32 %sub1038, ptr %i__4, align 4, !tbaa !8
  %907 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %908 = load i32, ptr %k1, align 4, !tbaa !8
  %909 = load i32, ptr %l1, align 4, !tbaa !8
  %910 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1039 = mul nsw i32 %909, %910
  %add1040 = add nsw i32 %908, %mul1039
  %idxprom1041 = sext i32 %add1040 to i64
  %arrayidx1042 = getelementptr inbounds %struct.complex, ptr %907, i64 %idxprom1041
  %911 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %912 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call1043 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx1042, ptr noundef %911, ptr noundef %912)
  store float %call1043, ptr %xnrm, align 4, !tbaa !10
  %913 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %913, ptr %i__3, align 4, !tbaa !8
  %914 = load i32, ptr %k, align 4, !tbaa !8
  %add1044 = add nsw i32 %914, 1
  store i32 %add1044, ptr %i__, align 4, !tbaa !8
  br label %for.cond1045

for.cond1045:                                     ; preds = %for.inc1247, %if.end1027
  %915 = load i32, ptr %i__, align 4, !tbaa !8
  %916 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1046 = icmp sle i32 %915, %916
  br i1 %cmp1046, label %for.body1048, label %for.end1249

for.body1048:                                     ; preds = %for.cond1045
  %917 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1049 = sub nsw i32 %917, 1
  %918 = load i32, ptr %nb, align 4, !tbaa !8
  %mul1050 = mul nsw i32 %sub1049, %918
  %add1051 = add nsw i32 %mul1050, 1
  store i32 %add1051, ptr %i1, align 4, !tbaa !8
  %919 = load i32, ptr %i__, align 4, !tbaa !8
  %920 = load i32, ptr %nb, align 4, !tbaa !8
  %mul1052 = mul nsw i32 %919, %920
  store i32 %mul1052, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1053) #5
  %921 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %921, ptr %_x1053, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1054) #5
  %922 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %923 = load i32, ptr %922, align 4, !tbaa !8
  store i32 %923, ptr %_y1054, align 4, !tbaa !8
  %924 = load i32, ptr %_x1053, align 4, !tbaa !8
  %925 = load i32, ptr %_y1054, align 4, !tbaa !8
  %cmp1056 = icmp slt i32 %924, %925
  br i1 %cmp1056, label %cond.true1058, label %cond.false1059

cond.true1058:                                    ; preds = %for.body1048
  %926 = load i32, ptr %_x1053, align 4, !tbaa !8
  br label %cond.end1060

cond.false1059:                                   ; preds = %for.body1048
  %927 = load i32, ptr %_y1054, align 4, !tbaa !8
  br label %cond.end1060

cond.end1060:                                     ; preds = %cond.false1059, %cond.true1058
  %cond1061 = phi i32 [ %926, %cond.true1058 ], [ %927, %cond.false1059 ]
  store i32 %cond1061, ptr %tmp1055, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1054) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1053) #5
  %928 = load i32, ptr %tmp1055, align 4, !tbaa !8
  %add1062 = add nsw i32 %928, 1
  store i32 %add1062, ptr %i2, align 4, !tbaa !8
  %929 = load i32, ptr %i2, align 4, !tbaa !8
  %930 = load i32, ptr %i1, align 4, !tbaa !8
  %sub1063 = sub nsw i32 %929, %930
  store i32 %sub1063, ptr %i__4, align 4, !tbaa !8
  %931 = load i32, ptr %l2, align 4, !tbaa !8
  %932 = load i32, ptr %l1, align 4, !tbaa !8
  %sub1064 = sub nsw i32 %931, %932
  store i32 %sub1064, ptr %i__5, align 4, !tbaa !8
  %933 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %934 = load i32, ptr %i1, align 4, !tbaa !8
  %935 = load i32, ptr %l1, align 4, !tbaa !8
  %936 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1065 = mul nsw i32 %935, %936
  %add1066 = add nsw i32 %934, %mul1065
  %idxprom1067 = sext i32 %add1066 to i64
  %arrayidx1068 = getelementptr inbounds %struct.complex, ptr %933, i64 %idxprom1067
  %937 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %938 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call1069 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__4, ptr noundef %i__5, ptr noundef %arrayidx1068, ptr noundef %937, ptr noundef %938)
  store float %call1069, ptr %cnrm, align 4, !tbaa !10
  %939 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %940 = load i32, ptr %i__, align 4, !tbaa !8
  %941 = load i32, ptr %l, align 4, !tbaa !8
  %942 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1070 = mul nsw i32 %941, %942
  %add1071 = add nsw i32 %940, %mul1070
  %idxprom1072 = sext i32 %add1071 to i64
  %arrayidx1073 = getelementptr inbounds float, ptr %939, i64 %idxprom1072
  %943 = load float, ptr %arrayidx1073, align 4, !tbaa !10
  store float %943, ptr %r__1, align 4, !tbaa !10
  %944 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %945 = load i32, ptr %k, align 4, !tbaa !8
  %946 = load i32, ptr %l, align 4, !tbaa !8
  %947 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1074 = mul nsw i32 %946, %947
  %add1075 = add nsw i32 %945, %mul1074
  %idxprom1076 = sext i32 %add1075 to i64
  %arrayidx1077 = getelementptr inbounds float, ptr %944, i64 %idxprom1076
  %948 = load float, ptr %arrayidx1077, align 4, !tbaa !10
  store float %948, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1078) #5
  %949 = load float, ptr %r__1, align 4, !tbaa !10
  store float %949, ptr %_x1078, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1079) #5
  %950 = load float, ptr %r__2, align 4, !tbaa !10
  store float %950, ptr %_y1079, align 4, !tbaa !10
  %951 = load float, ptr %_x1078, align 4, !tbaa !10
  %952 = load float, ptr %_y1079, align 4, !tbaa !10
  %cmp1081 = fcmp olt float %951, %952
  br i1 %cmp1081, label %cond.true1083, label %cond.false1084

cond.true1083:                                    ; preds = %cond.end1060
  %953 = load float, ptr %_x1078, align 4, !tbaa !10
  br label %cond.end1085

cond.false1084:                                   ; preds = %cond.end1060
  %954 = load float, ptr %_y1079, align 4, !tbaa !10
  br label %cond.end1085

cond.end1085:                                     ; preds = %cond.false1084, %cond.true1083
  %cond1086 = phi float [ %953, %cond.true1083 ], [ %954, %cond.false1084 ]
  store float %cond1086, ptr %tmp1080, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1079) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1078) #5
  %955 = load float, ptr %tmp1080, align 4, !tbaa !10
  store float %955, ptr %scamin, align 4, !tbaa !10
  %956 = load float, ptr %scamin, align 4, !tbaa !10
  %957 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %958 = load i32, ptr %i__, align 4, !tbaa !8
  %959 = load i32, ptr %l, align 4, !tbaa !8
  %960 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1087 = mul nsw i32 %959, %960
  %add1088 = add nsw i32 %958, %mul1087
  %idxprom1089 = sext i32 %add1088 to i64
  %arrayidx1090 = getelementptr inbounds float, ptr %957, i64 %idxprom1089
  %961 = load float, ptr %arrayidx1090, align 4, !tbaa !10
  %div1091 = fdiv float %956, %961
  %962 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul1092 = fmul float %962, %div1091
  store float %mul1092, ptr %cnrm, align 4, !tbaa !10
  %963 = load float, ptr %scamin, align 4, !tbaa !10
  %964 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %965 = load i32, ptr %k, align 4, !tbaa !8
  %966 = load i32, ptr %l, align 4, !tbaa !8
  %967 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1093 = mul nsw i32 %966, %967
  %add1094 = add nsw i32 %965, %mul1093
  %idxprom1095 = sext i32 %add1094 to i64
  %arrayidx1096 = getelementptr inbounds float, ptr %964, i64 %idxprom1095
  %968 = load float, ptr %arrayidx1096, align 4, !tbaa !10
  %div1097 = fdiv float %963, %968
  %969 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul1098 = fmul float %969, %div1097
  store float %mul1098, ptr %xnrm, align 4, !tbaa !10
  %970 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %971 = load i32, ptr %i__, align 4, !tbaa !8
  %972 = load i32, ptr %awrk, align 4, !tbaa !8
  %973 = load i32, ptr %k, align 4, !tbaa !8
  %add1099 = add nsw i32 %972, %973
  %974 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1100 = mul nsw i32 %add1099, %974
  %add1101 = add nsw i32 %971, %mul1100
  %idxprom1102 = sext i32 %add1101 to i64
  %arrayidx1103 = getelementptr inbounds float, ptr %970, i64 %idxprom1102
  %975 = load float, ptr %arrayidx1103, align 4, !tbaa !10
  store float %975, ptr %anrm, align 4, !tbaa !10
  %call1104 = call float @slarmm_(ptr noundef %anrm, ptr noundef %xnrm, ptr noundef %cnrm)
  store float %call1104, ptr %scaloc, align 4, !tbaa !10
  %976 = load float, ptr %scaloc, align 4, !tbaa !10
  %977 = load float, ptr %scamin, align 4, !tbaa !10
  %mul1105 = fmul float %976, %977
  %cmp1106 = fcmp oeq float %mul1105, 0.000000e+00
  br i1 %cmp1106, label %if.then1108, label %if.end1168

if.then1108:                                      ; preds = %cond.end1085
  %978 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1109 = fpext float %978 to double
  %call1110 = call double @frexp(double noundef %conv1109, ptr noundef %temp) #5
  %979 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1111 = sitofp i32 %979 to double
  store double %conv1111, ptr %d__1, align 8, !tbaa !22
  %call1112 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %980 = load float, ptr %buf, align 4, !tbaa !10
  %conv1113 = fpext float %980 to double
  %mul1114 = fmul double %conv1113, %call1112
  %conv1115 = fptrunc double %mul1114 to float
  store float %conv1115, ptr %buf, align 4, !tbaa !10
  %981 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %981, ptr %i__4, align 4, !tbaa !8
  store i32 1, ptr %jj, align 4, !tbaa !8
  br label %for.cond1116

for.cond1116:                                     ; preds = %for.inc1151, %if.then1108
  %982 = load i32, ptr %jj, align 4, !tbaa !8
  %983 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1117 = icmp sle i32 %982, %983
  br i1 %cmp1117, label %for.body1119, label %for.end1153

for.body1119:                                     ; preds = %for.cond1116
  %984 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %984, ptr %i__5, align 4, !tbaa !8
  store i32 1, ptr %ll, align 4, !tbaa !8
  br label %for.cond1120

for.cond1120:                                     ; preds = %for.inc1148, %for.body1119
  %985 = load i32, ptr %ll, align 4, !tbaa !8
  %986 = load i32, ptr %i__5, align 4, !tbaa !8
  %cmp1121 = icmp sle i32 %985, %986
  br i1 %cmp1121, label %for.body1123, label %for.end1150

for.body1123:                                     ; preds = %for.cond1120
  %987 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1124 = fpext float %987 to double
  %call1125 = call double @frexp(double noundef %conv1124, ptr noundef %temp) #5
  %988 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1126 = sitofp i32 %988 to double
  store double %conv1126, ptr %d__1, align 8, !tbaa !22
  %989 = load float, ptr %bignum, align 4, !tbaa !10
  store float %989, ptr %r__1, align 4, !tbaa !10
  %990 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %991 = load i32, ptr %ll, align 4, !tbaa !8
  %992 = load i32, ptr %jj, align 4, !tbaa !8
  %993 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1127 = mul nsw i32 %992, %993
  %add1128 = add nsw i32 %991, %mul1127
  %idxprom1129 = sext i32 %add1128 to i64
  %arrayidx1130 = getelementptr inbounds float, ptr %990, i64 %idxprom1129
  %994 = load float, ptr %arrayidx1130, align 4, !tbaa !10
  %conv1131 = fpext float %994 to double
  %call1132 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %div1133 = fdiv double %conv1131, %call1132
  %conv1134 = fptrunc double %div1133 to float
  store float %conv1134, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1135) #5
  %995 = load float, ptr %r__1, align 4, !tbaa !10
  store float %995, ptr %_x1135, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1136) #5
  %996 = load float, ptr %r__2, align 4, !tbaa !10
  store float %996, ptr %_y1136, align 4, !tbaa !10
  %997 = load float, ptr %_x1135, align 4, !tbaa !10
  %998 = load float, ptr %_y1136, align 4, !tbaa !10
  %cmp1138 = fcmp olt float %997, %998
  br i1 %cmp1138, label %cond.true1140, label %cond.false1141

cond.true1140:                                    ; preds = %for.body1123
  %999 = load float, ptr %_x1135, align 4, !tbaa !10
  br label %cond.end1142

cond.false1141:                                   ; preds = %for.body1123
  %1000 = load float, ptr %_y1136, align 4, !tbaa !10
  br label %cond.end1142

cond.end1142:                                     ; preds = %cond.false1141, %cond.true1140
  %cond1143 = phi float [ %999, %cond.true1140 ], [ %1000, %cond.false1141 ]
  store float %cond1143, ptr %tmp1137, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1136) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1135) #5
  %1001 = load float, ptr %tmp1137, align 4, !tbaa !10
  %1002 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1003 = load i32, ptr %ll, align 4, !tbaa !8
  %1004 = load i32, ptr %jj, align 4, !tbaa !8
  %1005 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1144 = mul nsw i32 %1004, %1005
  %add1145 = add nsw i32 %1003, %mul1144
  %idxprom1146 = sext i32 %add1145 to i64
  %arrayidx1147 = getelementptr inbounds float, ptr %1002, i64 %idxprom1146
  store float %1001, ptr %arrayidx1147, align 4, !tbaa !10
  br label %for.inc1148

for.inc1148:                                      ; preds = %cond.end1142
  %1006 = load i32, ptr %ll, align 4, !tbaa !8
  %inc1149 = add nsw i32 %1006, 1
  store i32 %inc1149, ptr %ll, align 4, !tbaa !8
  br label %for.cond1120, !llvm.loop !40

for.end1150:                                      ; preds = %for.cond1120
  br label %for.inc1151

for.inc1151:                                      ; preds = %for.end1150
  %1007 = load i32, ptr %jj, align 4, !tbaa !8
  %inc1152 = add nsw i32 %1007, 1
  store i32 %inc1152, ptr %jj, align 4, !tbaa !8
  br label %for.cond1116, !llvm.loop !41

for.end1153:                                      ; preds = %for.cond1116
  %1008 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1154 = fpext float %1008 to double
  %call1155 = call double @frexp(double noundef %conv1154, ptr noundef %temp) #5
  %1009 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1156 = sitofp i32 %1009 to double
  store double %conv1156, ptr %d__1, align 8, !tbaa !22
  %call1157 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1010 = load float, ptr %scamin, align 4, !tbaa !10
  %conv1158 = fpext float %1010 to double
  %div1159 = fdiv double %conv1158, %call1157
  %conv1160 = fptrunc double %div1159 to float
  store float %conv1160, ptr %scamin, align 4, !tbaa !10
  %1011 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1161 = fpext float %1011 to double
  %call1162 = call double @frexp(double noundef %conv1161, ptr noundef %temp) #5
  %1012 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1163 = sitofp i32 %1012 to double
  store double %conv1163, ptr %d__1, align 8, !tbaa !22
  %call1164 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1013 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1165 = fpext float %1013 to double
  %div1166 = fdiv double %conv1165, %call1164
  %conv1167 = fptrunc double %div1166 to float
  store float %conv1167, ptr %scaloc, align 4, !tbaa !10
  br label %if.end1168

if.end1168:                                       ; preds = %for.end1153, %cond.end1085
  %1014 = load float, ptr %scaloc, align 4, !tbaa !10
  %1015 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul1169 = fmul float %1015, %1014
  store float %mul1169, ptr %cnrm, align 4, !tbaa !10
  %1016 = load float, ptr %scaloc, align 4, !tbaa !10
  %1017 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul1170 = fmul float %1017, %1016
  store float %mul1170, ptr %xnrm, align 4, !tbaa !10
  %1018 = load float, ptr %scamin, align 4, !tbaa !10
  %1019 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1020 = load i32, ptr %k, align 4, !tbaa !8
  %1021 = load i32, ptr %l, align 4, !tbaa !8
  %1022 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1171 = mul nsw i32 %1021, %1022
  %add1172 = add nsw i32 %1020, %mul1171
  %idxprom1173 = sext i32 %add1172 to i64
  %arrayidx1174 = getelementptr inbounds float, ptr %1019, i64 %idxprom1173
  %1023 = load float, ptr %arrayidx1174, align 4, !tbaa !10
  %div1175 = fdiv float %1018, %1023
  %1024 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1176 = fmul float %div1175, %1024
  store float %mul1176, ptr %scal, align 4, !tbaa !10
  %1025 = load float, ptr %scal, align 4, !tbaa !10
  %cmp1177 = fcmp une float %1025, 1.000000e+00
  br i1 %cmp1177, label %if.then1179, label %if.end1194

if.then1179:                                      ; preds = %if.end1168
  %1026 = load i32, ptr %l2, align 4, !tbaa !8
  %sub1180 = sub nsw i32 %1026, 1
  store i32 %sub1180, ptr %i__4, align 4, !tbaa !8
  %1027 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %1027, ptr %ll, align 4, !tbaa !8
  br label %for.cond1181

for.cond1181:                                     ; preds = %for.inc1191, %if.then1179
  %1028 = load i32, ptr %ll, align 4, !tbaa !8
  %1029 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1182 = icmp sle i32 %1028, %1029
  br i1 %cmp1182, label %for.body1184, label %for.end1193

for.body1184:                                     ; preds = %for.cond1181
  %1030 = load i32, ptr %k2, align 4, !tbaa !8
  %1031 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1185 = sub nsw i32 %1030, %1031
  store i32 %sub1185, ptr %i__5, align 4, !tbaa !8
  %1032 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1033 = load i32, ptr %k1, align 4, !tbaa !8
  %1034 = load i32, ptr %ll, align 4, !tbaa !8
  %1035 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1186 = mul nsw i32 %1034, %1035
  %add1187 = add nsw i32 %1033, %mul1186
  %idxprom1188 = sext i32 %add1187 to i64
  %arrayidx1189 = getelementptr inbounds %struct.complex, ptr %1032, i64 %idxprom1188
  %call1190 = call i32 @csscal_(ptr noundef %i__5, ptr noundef %scal, ptr noundef %arrayidx1189, ptr noundef @c__1)
  br label %for.inc1191

for.inc1191:                                      ; preds = %for.body1184
  %1036 = load i32, ptr %ll, align 4, !tbaa !8
  %inc1192 = add nsw i32 %1036, 1
  store i32 %inc1192, ptr %ll, align 4, !tbaa !8
  br label %for.cond1181, !llvm.loop !42

for.end1193:                                      ; preds = %for.cond1181
  br label %if.end1194

if.end1194:                                       ; preds = %for.end1193, %if.end1168
  %1037 = load float, ptr %scamin, align 4, !tbaa !10
  %1038 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1039 = load i32, ptr %i__, align 4, !tbaa !8
  %1040 = load i32, ptr %l, align 4, !tbaa !8
  %1041 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1195 = mul nsw i32 %1040, %1041
  %add1196 = add nsw i32 %1039, %mul1195
  %idxprom1197 = sext i32 %add1196 to i64
  %arrayidx1198 = getelementptr inbounds float, ptr %1038, i64 %idxprom1197
  %1042 = load float, ptr %arrayidx1198, align 4, !tbaa !10
  %div1199 = fdiv float %1037, %1042
  %1043 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1200 = fmul float %div1199, %1043
  store float %mul1200, ptr %scal, align 4, !tbaa !10
  %1044 = load float, ptr %scal, align 4, !tbaa !10
  %cmp1201 = fcmp une float %1044, 1.000000e+00
  br i1 %cmp1201, label %if.then1203, label %if.end1218

if.then1203:                                      ; preds = %if.end1194
  %1045 = load i32, ptr %l2, align 4, !tbaa !8
  %sub1204 = sub nsw i32 %1045, 1
  store i32 %sub1204, ptr %i__4, align 4, !tbaa !8
  %1046 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %1046, ptr %ll, align 4, !tbaa !8
  br label %for.cond1205

for.cond1205:                                     ; preds = %for.inc1215, %if.then1203
  %1047 = load i32, ptr %ll, align 4, !tbaa !8
  %1048 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1206 = icmp sle i32 %1047, %1048
  br i1 %cmp1206, label %for.body1208, label %for.end1217

for.body1208:                                     ; preds = %for.cond1205
  %1049 = load i32, ptr %i2, align 4, !tbaa !8
  %1050 = load i32, ptr %i1, align 4, !tbaa !8
  %sub1209 = sub nsw i32 %1049, %1050
  store i32 %sub1209, ptr %i__5, align 4, !tbaa !8
  %1051 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1052 = load i32, ptr %i1, align 4, !tbaa !8
  %1053 = load i32, ptr %ll, align 4, !tbaa !8
  %1054 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1210 = mul nsw i32 %1053, %1054
  %add1211 = add nsw i32 %1052, %mul1210
  %idxprom1212 = sext i32 %add1211 to i64
  %arrayidx1213 = getelementptr inbounds %struct.complex, ptr %1051, i64 %idxprom1212
  %call1214 = call i32 @csscal_(ptr noundef %i__5, ptr noundef %scal, ptr noundef %arrayidx1213, ptr noundef @c__1)
  br label %for.inc1215

for.inc1215:                                      ; preds = %for.body1208
  %1055 = load i32, ptr %ll, align 4, !tbaa !8
  %inc1216 = add nsw i32 %1055, 1
  store i32 %inc1216, ptr %ll, align 4, !tbaa !8
  br label %for.cond1205, !llvm.loop !43

for.end1217:                                      ; preds = %for.cond1205
  br label %if.end1218

if.end1218:                                       ; preds = %for.end1217, %if.end1194
  %1056 = load float, ptr %scamin, align 4, !tbaa !10
  %1057 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1219 = fmul float %1056, %1057
  %1058 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1059 = load i32, ptr %k, align 4, !tbaa !8
  %1060 = load i32, ptr %l, align 4, !tbaa !8
  %1061 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1220 = mul nsw i32 %1060, %1061
  %add1221 = add nsw i32 %1059, %mul1220
  %idxprom1222 = sext i32 %add1221 to i64
  %arrayidx1223 = getelementptr inbounds float, ptr %1058, i64 %idxprom1222
  store float %mul1219, ptr %arrayidx1223, align 4, !tbaa !10
  %1062 = load float, ptr %scamin, align 4, !tbaa !10
  %1063 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1224 = fmul float %1062, %1063
  %1064 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1065 = load i32, ptr %i__, align 4, !tbaa !8
  %1066 = load i32, ptr %l, align 4, !tbaa !8
  %1067 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1225 = mul nsw i32 %1066, %1067
  %add1226 = add nsw i32 %1065, %mul1225
  %idxprom1227 = sext i32 %add1226 to i64
  %arrayidx1228 = getelementptr inbounds float, ptr %1064, i64 %idxprom1227
  store float %mul1224, ptr %arrayidx1228, align 4, !tbaa !10
  %1068 = load i32, ptr %i2, align 4, !tbaa !8
  %1069 = load i32, ptr %i1, align 4, !tbaa !8
  %sub1229 = sub nsw i32 %1068, %1069
  store i32 %sub1229, ptr %i__4, align 4, !tbaa !8
  %1070 = load i32, ptr %l2, align 4, !tbaa !8
  %1071 = load i32, ptr %l1, align 4, !tbaa !8
  %sub1230 = sub nsw i32 %1070, %1071
  store i32 %sub1230, ptr %i__5, align 4, !tbaa !8
  %1072 = load i32, ptr %k2, align 4, !tbaa !8
  %1073 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1231 = sub nsw i32 %1072, %1073
  store i32 %sub1231, ptr %i__6, align 4, !tbaa !8
  %r1232 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r1232, align 4, !tbaa !19
  %i1233 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i1233, align 4, !tbaa !21
  %1074 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1075 = load i32, ptr %k1, align 4, !tbaa !8
  %1076 = load i32, ptr %i1, align 4, !tbaa !8
  %1077 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1234 = mul nsw i32 %1076, %1077
  %add1235 = add nsw i32 %1075, %mul1234
  %idxprom1236 = sext i32 %add1235 to i64
  %arrayidx1237 = getelementptr inbounds %struct.complex, ptr %1074, i64 %idxprom1236
  %1078 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1079 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1080 = load i32, ptr %k1, align 4, !tbaa !8
  %1081 = load i32, ptr %l1, align 4, !tbaa !8
  %1082 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1238 = mul nsw i32 %1081, %1082
  %add1239 = add nsw i32 %1080, %mul1238
  %idxprom1240 = sext i32 %add1239 to i64
  %arrayidx1241 = getelementptr inbounds %struct.complex, ptr %1079, i64 %idxprom1240
  %1083 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %1084 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1085 = load i32, ptr %i1, align 4, !tbaa !8
  %1086 = load i32, ptr %l1, align 4, !tbaa !8
  %1087 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1242 = mul nsw i32 %1086, %1087
  %add1243 = add nsw i32 %1085, %mul1242
  %idxprom1244 = sext i32 %add1243 to i64
  %arrayidx1245 = getelementptr inbounds %struct.complex, ptr %1084, i64 %idxprom1244
  %1088 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call1246 = call i32 @cgemm_(ptr noundef @.str.3, ptr noundef @.str, ptr noundef %i__4, ptr noundef %i__5, ptr noundef %i__6, ptr noundef %q__1, ptr noundef %arrayidx1237, ptr noundef %1078, ptr noundef %arrayidx1241, ptr noundef %1083, ptr noundef @c_b1, ptr noundef %arrayidx1245, ptr noundef %1088)
  br label %for.inc1247

for.inc1247:                                      ; preds = %if.end1218
  %1089 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1248 = add nsw i32 %1089, 1
  store i32 %inc1248, ptr %i__, align 4, !tbaa !8
  br label %for.cond1045, !llvm.loop !44

for.end1249:                                      ; preds = %for.cond1045
  %1090 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %1090, ptr %i__3, align 4, !tbaa !8
  %1091 = load i32, ptr %l, align 4, !tbaa !8
  %add1250 = add nsw i32 %1091, 1
  store i32 %add1250, ptr %j, align 4, !tbaa !8
  br label %for.cond1251

for.cond1251:                                     ; preds = %for.inc1457, %for.end1249
  %1092 = load i32, ptr %j, align 4, !tbaa !8
  %1093 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1252 = icmp sle i32 %1092, %1093
  br i1 %cmp1252, label %for.body1254, label %for.end1459

for.body1254:                                     ; preds = %for.cond1251
  %1094 = load i32, ptr %j, align 4, !tbaa !8
  %sub1255 = sub nsw i32 %1094, 1
  %1095 = load i32, ptr %nb, align 4, !tbaa !8
  %mul1256 = mul nsw i32 %sub1255, %1095
  %add1257 = add nsw i32 %mul1256, 1
  store i32 %add1257, ptr %j1, align 4, !tbaa !8
  %1096 = load i32, ptr %j, align 4, !tbaa !8
  %1097 = load i32, ptr %nb, align 4, !tbaa !8
  %mul1258 = mul nsw i32 %1096, %1097
  store i32 %mul1258, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1259) #5
  %1098 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %1098, ptr %_x1259, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1260) #5
  %1099 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1100 = load i32, ptr %1099, align 4, !tbaa !8
  store i32 %1100, ptr %_y1260, align 4, !tbaa !8
  %1101 = load i32, ptr %_x1259, align 4, !tbaa !8
  %1102 = load i32, ptr %_y1260, align 4, !tbaa !8
  %cmp1262 = icmp slt i32 %1101, %1102
  br i1 %cmp1262, label %cond.true1264, label %cond.false1265

cond.true1264:                                    ; preds = %for.body1254
  %1103 = load i32, ptr %_x1259, align 4, !tbaa !8
  br label %cond.end1266

cond.false1265:                                   ; preds = %for.body1254
  %1104 = load i32, ptr %_y1260, align 4, !tbaa !8
  br label %cond.end1266

cond.end1266:                                     ; preds = %cond.false1265, %cond.true1264
  %cond1267 = phi i32 [ %1103, %cond.true1264 ], [ %1104, %cond.false1265 ]
  store i32 %cond1267, ptr %tmp1261, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1260) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1259) #5
  %1105 = load i32, ptr %tmp1261, align 4, !tbaa !8
  %add1268 = add nsw i32 %1105, 1
  store i32 %add1268, ptr %j2, align 4, !tbaa !8
  %1106 = load i32, ptr %k2, align 4, !tbaa !8
  %1107 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1269 = sub nsw i32 %1106, %1107
  store i32 %sub1269, ptr %i__4, align 4, !tbaa !8
  %1108 = load i32, ptr %j2, align 4, !tbaa !8
  %1109 = load i32, ptr %j1, align 4, !tbaa !8
  %sub1270 = sub nsw i32 %1108, %1109
  store i32 %sub1270, ptr %i__5, align 4, !tbaa !8
  %1110 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1111 = load i32, ptr %k1, align 4, !tbaa !8
  %1112 = load i32, ptr %j1, align 4, !tbaa !8
  %1113 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1271 = mul nsw i32 %1112, %1113
  %add1272 = add nsw i32 %1111, %mul1271
  %idxprom1273 = sext i32 %add1272 to i64
  %arrayidx1274 = getelementptr inbounds %struct.complex, ptr %1110, i64 %idxprom1273
  %1114 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %1115 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call1275 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__4, ptr noundef %i__5, ptr noundef %arrayidx1274, ptr noundef %1114, ptr noundef %1115)
  store float %call1275, ptr %cnrm, align 4, !tbaa !10
  %1116 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1117 = load i32, ptr %k, align 4, !tbaa !8
  %1118 = load i32, ptr %j, align 4, !tbaa !8
  %1119 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1276 = mul nsw i32 %1118, %1119
  %add1277 = add nsw i32 %1117, %mul1276
  %idxprom1278 = sext i32 %add1277 to i64
  %arrayidx1279 = getelementptr inbounds float, ptr %1116, i64 %idxprom1278
  %1120 = load float, ptr %arrayidx1279, align 4, !tbaa !10
  store float %1120, ptr %r__1, align 4, !tbaa !10
  %1121 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1122 = load i32, ptr %k, align 4, !tbaa !8
  %1123 = load i32, ptr %l, align 4, !tbaa !8
  %1124 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1280 = mul nsw i32 %1123, %1124
  %add1281 = add nsw i32 %1122, %mul1280
  %idxprom1282 = sext i32 %add1281 to i64
  %arrayidx1283 = getelementptr inbounds float, ptr %1121, i64 %idxprom1282
  %1125 = load float, ptr %arrayidx1283, align 4, !tbaa !10
  store float %1125, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1284) #5
  %1126 = load float, ptr %r__1, align 4, !tbaa !10
  store float %1126, ptr %_x1284, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1285) #5
  %1127 = load float, ptr %r__2, align 4, !tbaa !10
  store float %1127, ptr %_y1285, align 4, !tbaa !10
  %1128 = load float, ptr %_x1284, align 4, !tbaa !10
  %1129 = load float, ptr %_y1285, align 4, !tbaa !10
  %cmp1287 = fcmp olt float %1128, %1129
  br i1 %cmp1287, label %cond.true1289, label %cond.false1290

cond.true1289:                                    ; preds = %cond.end1266
  %1130 = load float, ptr %_x1284, align 4, !tbaa !10
  br label %cond.end1291

cond.false1290:                                   ; preds = %cond.end1266
  %1131 = load float, ptr %_y1285, align 4, !tbaa !10
  br label %cond.end1291

cond.end1291:                                     ; preds = %cond.false1290, %cond.true1289
  %cond1292 = phi float [ %1130, %cond.true1289 ], [ %1131, %cond.false1290 ]
  store float %cond1292, ptr %tmp1286, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1285) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1284) #5
  %1132 = load float, ptr %tmp1286, align 4, !tbaa !10
  store float %1132, ptr %scamin, align 4, !tbaa !10
  %1133 = load float, ptr %scamin, align 4, !tbaa !10
  %1134 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1135 = load i32, ptr %k, align 4, !tbaa !8
  %1136 = load i32, ptr %j, align 4, !tbaa !8
  %1137 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1293 = mul nsw i32 %1136, %1137
  %add1294 = add nsw i32 %1135, %mul1293
  %idxprom1295 = sext i32 %add1294 to i64
  %arrayidx1296 = getelementptr inbounds float, ptr %1134, i64 %idxprom1295
  %1138 = load float, ptr %arrayidx1296, align 4, !tbaa !10
  %div1297 = fdiv float %1133, %1138
  %1139 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul1298 = fmul float %1139, %div1297
  store float %mul1298, ptr %cnrm, align 4, !tbaa !10
  %1140 = load float, ptr %scamin, align 4, !tbaa !10
  %1141 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1142 = load i32, ptr %k, align 4, !tbaa !8
  %1143 = load i32, ptr %l, align 4, !tbaa !8
  %1144 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1299 = mul nsw i32 %1143, %1144
  %add1300 = add nsw i32 %1142, %mul1299
  %idxprom1301 = sext i32 %add1300 to i64
  %arrayidx1302 = getelementptr inbounds float, ptr %1141, i64 %idxprom1301
  %1145 = load float, ptr %arrayidx1302, align 4, !tbaa !10
  %div1303 = fdiv float %1140, %1145
  %1146 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul1304 = fmul float %1146, %div1303
  store float %mul1304, ptr %xnrm, align 4, !tbaa !10
  %1147 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1148 = load i32, ptr %l, align 4, !tbaa !8
  %1149 = load i32, ptr %bwrk, align 4, !tbaa !8
  %1150 = load i32, ptr %j, align 4, !tbaa !8
  %add1305 = add nsw i32 %1149, %1150
  %1151 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1306 = mul nsw i32 %add1305, %1151
  %add1307 = add nsw i32 %1148, %mul1306
  %idxprom1308 = sext i32 %add1307 to i64
  %arrayidx1309 = getelementptr inbounds float, ptr %1147, i64 %idxprom1308
  %1152 = load float, ptr %arrayidx1309, align 4, !tbaa !10
  store float %1152, ptr %bnrm, align 4, !tbaa !10
  %call1310 = call float @slarmm_(ptr noundef %bnrm, ptr noundef %xnrm, ptr noundef %cnrm)
  store float %call1310, ptr %scaloc, align 4, !tbaa !10
  %1153 = load float, ptr %scaloc, align 4, !tbaa !10
  %1154 = load float, ptr %scamin, align 4, !tbaa !10
  %mul1311 = fmul float %1153, %1154
  %cmp1312 = fcmp oeq float %mul1311, 0.000000e+00
  br i1 %cmp1312, label %if.then1314, label %if.end1374

if.then1314:                                      ; preds = %cond.end1291
  %1155 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1315 = fpext float %1155 to double
  %call1316 = call double @frexp(double noundef %conv1315, ptr noundef %temp) #5
  %1156 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1317 = sitofp i32 %1156 to double
  store double %conv1317, ptr %d__1, align 8, !tbaa !22
  %call1318 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1157 = load float, ptr %buf, align 4, !tbaa !10
  %conv1319 = fpext float %1157 to double
  %mul1320 = fmul double %conv1319, %call1318
  %conv1321 = fptrunc double %mul1320 to float
  store float %conv1321, ptr %buf, align 4, !tbaa !10
  %1158 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %1158, ptr %i__4, align 4, !tbaa !8
  store i32 1, ptr %jj, align 4, !tbaa !8
  br label %for.cond1322

for.cond1322:                                     ; preds = %for.inc1357, %if.then1314
  %1159 = load i32, ptr %jj, align 4, !tbaa !8
  %1160 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1323 = icmp sle i32 %1159, %1160
  br i1 %cmp1323, label %for.body1325, label %for.end1359

for.body1325:                                     ; preds = %for.cond1322
  %1161 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %1161, ptr %i__5, align 4, !tbaa !8
  store i32 1, ptr %ll, align 4, !tbaa !8
  br label %for.cond1326

for.cond1326:                                     ; preds = %for.inc1354, %for.body1325
  %1162 = load i32, ptr %ll, align 4, !tbaa !8
  %1163 = load i32, ptr %i__5, align 4, !tbaa !8
  %cmp1327 = icmp sle i32 %1162, %1163
  br i1 %cmp1327, label %for.body1329, label %for.end1356

for.body1329:                                     ; preds = %for.cond1326
  %1164 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1330 = fpext float %1164 to double
  %call1331 = call double @frexp(double noundef %conv1330, ptr noundef %temp) #5
  %1165 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1332 = sitofp i32 %1165 to double
  store double %conv1332, ptr %d__1, align 8, !tbaa !22
  %1166 = load float, ptr %bignum, align 4, !tbaa !10
  store float %1166, ptr %r__1, align 4, !tbaa !10
  %1167 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1168 = load i32, ptr %ll, align 4, !tbaa !8
  %1169 = load i32, ptr %jj, align 4, !tbaa !8
  %1170 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1333 = mul nsw i32 %1169, %1170
  %add1334 = add nsw i32 %1168, %mul1333
  %idxprom1335 = sext i32 %add1334 to i64
  %arrayidx1336 = getelementptr inbounds float, ptr %1167, i64 %idxprom1335
  %1171 = load float, ptr %arrayidx1336, align 4, !tbaa !10
  %conv1337 = fpext float %1171 to double
  %call1338 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %div1339 = fdiv double %conv1337, %call1338
  %conv1340 = fptrunc double %div1339 to float
  store float %conv1340, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1341) #5
  %1172 = load float, ptr %r__1, align 4, !tbaa !10
  store float %1172, ptr %_x1341, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1342) #5
  %1173 = load float, ptr %r__2, align 4, !tbaa !10
  store float %1173, ptr %_y1342, align 4, !tbaa !10
  %1174 = load float, ptr %_x1341, align 4, !tbaa !10
  %1175 = load float, ptr %_y1342, align 4, !tbaa !10
  %cmp1344 = fcmp olt float %1174, %1175
  br i1 %cmp1344, label %cond.true1346, label %cond.false1347

cond.true1346:                                    ; preds = %for.body1329
  %1176 = load float, ptr %_x1341, align 4, !tbaa !10
  br label %cond.end1348

cond.false1347:                                   ; preds = %for.body1329
  %1177 = load float, ptr %_y1342, align 4, !tbaa !10
  br label %cond.end1348

cond.end1348:                                     ; preds = %cond.false1347, %cond.true1346
  %cond1349 = phi float [ %1176, %cond.true1346 ], [ %1177, %cond.false1347 ]
  store float %cond1349, ptr %tmp1343, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1342) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1341) #5
  %1178 = load float, ptr %tmp1343, align 4, !tbaa !10
  %1179 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1180 = load i32, ptr %ll, align 4, !tbaa !8
  %1181 = load i32, ptr %jj, align 4, !tbaa !8
  %1182 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1350 = mul nsw i32 %1181, %1182
  %add1351 = add nsw i32 %1180, %mul1350
  %idxprom1352 = sext i32 %add1351 to i64
  %arrayidx1353 = getelementptr inbounds float, ptr %1179, i64 %idxprom1352
  store float %1178, ptr %arrayidx1353, align 4, !tbaa !10
  br label %for.inc1354

for.inc1354:                                      ; preds = %cond.end1348
  %1183 = load i32, ptr %ll, align 4, !tbaa !8
  %inc1355 = add nsw i32 %1183, 1
  store i32 %inc1355, ptr %ll, align 4, !tbaa !8
  br label %for.cond1326, !llvm.loop !45

for.end1356:                                      ; preds = %for.cond1326
  br label %for.inc1357

for.inc1357:                                      ; preds = %for.end1356
  %1184 = load i32, ptr %jj, align 4, !tbaa !8
  %inc1358 = add nsw i32 %1184, 1
  store i32 %inc1358, ptr %jj, align 4, !tbaa !8
  br label %for.cond1322, !llvm.loop !46

for.end1359:                                      ; preds = %for.cond1322
  %1185 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1360 = fpext float %1185 to double
  %call1361 = call double @frexp(double noundef %conv1360, ptr noundef %temp) #5
  %1186 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1362 = sitofp i32 %1186 to double
  store double %conv1362, ptr %d__1, align 8, !tbaa !22
  %call1363 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1187 = load float, ptr %scamin, align 4, !tbaa !10
  %conv1364 = fpext float %1187 to double
  %div1365 = fdiv double %conv1364, %call1363
  %conv1366 = fptrunc double %div1365 to float
  store float %conv1366, ptr %scamin, align 4, !tbaa !10
  %1188 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1367 = fpext float %1188 to double
  %call1368 = call double @frexp(double noundef %conv1367, ptr noundef %temp) #5
  %1189 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1369 = sitofp i32 %1189 to double
  store double %conv1369, ptr %d__1, align 8, !tbaa !22
  %call1370 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1190 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1371 = fpext float %1190 to double
  %div1372 = fdiv double %conv1371, %call1370
  %conv1373 = fptrunc double %div1372 to float
  store float %conv1373, ptr %scaloc, align 4, !tbaa !10
  br label %if.end1374

if.end1374:                                       ; preds = %for.end1359, %cond.end1291
  %1191 = load float, ptr %scaloc, align 4, !tbaa !10
  %1192 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul1375 = fmul float %1192, %1191
  store float %mul1375, ptr %cnrm, align 4, !tbaa !10
  %1193 = load float, ptr %scaloc, align 4, !tbaa !10
  %1194 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul1376 = fmul float %1194, %1193
  store float %mul1376, ptr %xnrm, align 4, !tbaa !10
  %1195 = load float, ptr %scamin, align 4, !tbaa !10
  %1196 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1197 = load i32, ptr %k, align 4, !tbaa !8
  %1198 = load i32, ptr %l, align 4, !tbaa !8
  %1199 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1377 = mul nsw i32 %1198, %1199
  %add1378 = add nsw i32 %1197, %mul1377
  %idxprom1379 = sext i32 %add1378 to i64
  %arrayidx1380 = getelementptr inbounds float, ptr %1196, i64 %idxprom1379
  %1200 = load float, ptr %arrayidx1380, align 4, !tbaa !10
  %div1381 = fdiv float %1195, %1200
  %1201 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1382 = fmul float %div1381, %1201
  store float %mul1382, ptr %scal, align 4, !tbaa !10
  %1202 = load float, ptr %scal, align 4, !tbaa !10
  %cmp1383 = fcmp une float %1202, 1.000000e+00
  br i1 %cmp1383, label %if.then1385, label %if.end1400

if.then1385:                                      ; preds = %if.end1374
  %1203 = load i32, ptr %l2, align 4, !tbaa !8
  %sub1386 = sub nsw i32 %1203, 1
  store i32 %sub1386, ptr %i__4, align 4, !tbaa !8
  %1204 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %1204, ptr %ll, align 4, !tbaa !8
  br label %for.cond1387

for.cond1387:                                     ; preds = %for.inc1397, %if.then1385
  %1205 = load i32, ptr %ll, align 4, !tbaa !8
  %1206 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1388 = icmp sle i32 %1205, %1206
  br i1 %cmp1388, label %for.body1390, label %for.end1399

for.body1390:                                     ; preds = %for.cond1387
  %1207 = load i32, ptr %k2, align 4, !tbaa !8
  %1208 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1391 = sub nsw i32 %1207, %1208
  store i32 %sub1391, ptr %i__5, align 4, !tbaa !8
  %1209 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1210 = load i32, ptr %k1, align 4, !tbaa !8
  %1211 = load i32, ptr %ll, align 4, !tbaa !8
  %1212 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1392 = mul nsw i32 %1211, %1212
  %add1393 = add nsw i32 %1210, %mul1392
  %idxprom1394 = sext i32 %add1393 to i64
  %arrayidx1395 = getelementptr inbounds %struct.complex, ptr %1209, i64 %idxprom1394
  %call1396 = call i32 @csscal_(ptr noundef %i__5, ptr noundef %scal, ptr noundef %arrayidx1395, ptr noundef @c__1)
  br label %for.inc1397

for.inc1397:                                      ; preds = %for.body1390
  %1213 = load i32, ptr %ll, align 4, !tbaa !8
  %inc1398 = add nsw i32 %1213, 1
  store i32 %inc1398, ptr %ll, align 4, !tbaa !8
  br label %for.cond1387, !llvm.loop !47

for.end1399:                                      ; preds = %for.cond1387
  br label %if.end1400

if.end1400:                                       ; preds = %for.end1399, %if.end1374
  %1214 = load float, ptr %scamin, align 4, !tbaa !10
  %1215 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1216 = load i32, ptr %k, align 4, !tbaa !8
  %1217 = load i32, ptr %j, align 4, !tbaa !8
  %1218 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1401 = mul nsw i32 %1217, %1218
  %add1402 = add nsw i32 %1216, %mul1401
  %idxprom1403 = sext i32 %add1402 to i64
  %arrayidx1404 = getelementptr inbounds float, ptr %1215, i64 %idxprom1403
  %1219 = load float, ptr %arrayidx1404, align 4, !tbaa !10
  %div1405 = fdiv float %1214, %1219
  %1220 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1406 = fmul float %div1405, %1220
  store float %mul1406, ptr %scal, align 4, !tbaa !10
  %1221 = load float, ptr %scal, align 4, !tbaa !10
  %cmp1407 = fcmp une float %1221, 1.000000e+00
  br i1 %cmp1407, label %if.then1409, label %if.end1424

if.then1409:                                      ; preds = %if.end1400
  %1222 = load i32, ptr %j2, align 4, !tbaa !8
  %sub1410 = sub nsw i32 %1222, 1
  store i32 %sub1410, ptr %i__4, align 4, !tbaa !8
  %1223 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %1223, ptr %jj, align 4, !tbaa !8
  br label %for.cond1411

for.cond1411:                                     ; preds = %for.inc1421, %if.then1409
  %1224 = load i32, ptr %jj, align 4, !tbaa !8
  %1225 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1412 = icmp sle i32 %1224, %1225
  br i1 %cmp1412, label %for.body1414, label %for.end1423

for.body1414:                                     ; preds = %for.cond1411
  %1226 = load i32, ptr %k2, align 4, !tbaa !8
  %1227 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1415 = sub nsw i32 %1226, %1227
  store i32 %sub1415, ptr %i__5, align 4, !tbaa !8
  %1228 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1229 = load i32, ptr %k1, align 4, !tbaa !8
  %1230 = load i32, ptr %jj, align 4, !tbaa !8
  %1231 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1416 = mul nsw i32 %1230, %1231
  %add1417 = add nsw i32 %1229, %mul1416
  %idxprom1418 = sext i32 %add1417 to i64
  %arrayidx1419 = getelementptr inbounds %struct.complex, ptr %1228, i64 %idxprom1418
  %call1420 = call i32 @csscal_(ptr noundef %i__5, ptr noundef %scal, ptr noundef %arrayidx1419, ptr noundef @c__1)
  br label %for.inc1421

for.inc1421:                                      ; preds = %for.body1414
  %1232 = load i32, ptr %jj, align 4, !tbaa !8
  %inc1422 = add nsw i32 %1232, 1
  store i32 %inc1422, ptr %jj, align 4, !tbaa !8
  br label %for.cond1411, !llvm.loop !48

for.end1423:                                      ; preds = %for.cond1411
  br label %if.end1424

if.end1424:                                       ; preds = %for.end1423, %if.end1400
  %1233 = load float, ptr %scamin, align 4, !tbaa !10
  %1234 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1425 = fmul float %1233, %1234
  %1235 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1236 = load i32, ptr %k, align 4, !tbaa !8
  %1237 = load i32, ptr %l, align 4, !tbaa !8
  %1238 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1426 = mul nsw i32 %1237, %1238
  %add1427 = add nsw i32 %1236, %mul1426
  %idxprom1428 = sext i32 %add1427 to i64
  %arrayidx1429 = getelementptr inbounds float, ptr %1235, i64 %idxprom1428
  store float %mul1425, ptr %arrayidx1429, align 4, !tbaa !10
  %1239 = load float, ptr %scamin, align 4, !tbaa !10
  %1240 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1430 = fmul float %1239, %1240
  %1241 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1242 = load i32, ptr %k, align 4, !tbaa !8
  %1243 = load i32, ptr %j, align 4, !tbaa !8
  %1244 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1431 = mul nsw i32 %1243, %1244
  %add1432 = add nsw i32 %1242, %mul1431
  %idxprom1433 = sext i32 %add1432 to i64
  %arrayidx1434 = getelementptr inbounds float, ptr %1241, i64 %idxprom1433
  store float %mul1430, ptr %arrayidx1434, align 4, !tbaa !10
  %1245 = load i32, ptr %k2, align 4, !tbaa !8
  %1246 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1435 = sub nsw i32 %1245, %1246
  store i32 %sub1435, ptr %i__4, align 4, !tbaa !8
  %1247 = load i32, ptr %j2, align 4, !tbaa !8
  %1248 = load i32, ptr %j1, align 4, !tbaa !8
  %sub1436 = sub nsw i32 %1247, %1248
  store i32 %sub1436, ptr %i__5, align 4, !tbaa !8
  %1249 = load i32, ptr %l2, align 4, !tbaa !8
  %1250 = load i32, ptr %l1, align 4, !tbaa !8
  %sub1437 = sub nsw i32 %1249, %1250
  store i32 %sub1437, ptr %i__6, align 4, !tbaa !8
  %r1438 = getelementptr inbounds %struct.complex, ptr %csgn, i32 0, i32 0
  %1251 = load float, ptr %r1438, align 4, !tbaa !19
  %fneg1439 = fneg float %1251
  %r1440 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %fneg1439, ptr %r1440, align 4, !tbaa !19
  %i1441 = getelementptr inbounds %struct.complex, ptr %csgn, i32 0, i32 1
  %1252 = load float, ptr %i1441, align 4, !tbaa !21
  %fneg1442 = fneg float %1252
  %i1443 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %fneg1442, ptr %i1443, align 4, !tbaa !21
  %1253 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1254 = load i32, ptr %k1, align 4, !tbaa !8
  %1255 = load i32, ptr %l1, align 4, !tbaa !8
  %1256 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1444 = mul nsw i32 %1255, %1256
  %add1445 = add nsw i32 %1254, %mul1444
  %idxprom1446 = sext i32 %add1445 to i64
  %arrayidx1447 = getelementptr inbounds %struct.complex, ptr %1253, i64 %idxprom1446
  %1257 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %1258 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1259 = load i32, ptr %l1, align 4, !tbaa !8
  %1260 = load i32, ptr %j1, align 4, !tbaa !8
  %1261 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul1448 = mul nsw i32 %1260, %1261
  %add1449 = add nsw i32 %1259, %mul1448
  %idxprom1450 = sext i32 %add1449 to i64
  %arrayidx1451 = getelementptr inbounds %struct.complex, ptr %1258, i64 %idxprom1450
  %1262 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %1263 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1264 = load i32, ptr %k1, align 4, !tbaa !8
  %1265 = load i32, ptr %j1, align 4, !tbaa !8
  %1266 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1452 = mul nsw i32 %1265, %1266
  %add1453 = add nsw i32 %1264, %mul1452
  %idxprom1454 = sext i32 %add1453 to i64
  %arrayidx1455 = getelementptr inbounds %struct.complex, ptr %1263, i64 %idxprom1454
  %1267 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call1456 = call i32 @cgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %i__4, ptr noundef %i__5, ptr noundef %i__6, ptr noundef %q__1, ptr noundef %arrayidx1447, ptr noundef %1257, ptr noundef %arrayidx1451, ptr noundef %1262, ptr noundef @c_b1, ptr noundef %arrayidx1455, ptr noundef %1267)
  br label %for.inc1457

for.inc1457:                                      ; preds = %if.end1424
  %1268 = load i32, ptr %j, align 4, !tbaa !8
  %inc1458 = add nsw i32 %1268, 1
  store i32 %inc1458, ptr %j, align 4, !tbaa !8
  br label %for.cond1251, !llvm.loop !49

for.end1459:                                      ; preds = %for.cond1251
  br label %for.inc1460

for.inc1460:                                      ; preds = %for.end1459
  %1269 = load i32, ptr %l, align 4, !tbaa !8
  %inc1461 = add nsw i32 %1269, 1
  store i32 %inc1461, ptr %l, align 4, !tbaa !8
  br label %for.cond927, !llvm.loop !50

for.end1462:                                      ; preds = %for.cond927
  br label %for.inc1463

for.inc1463:                                      ; preds = %for.end1462
  %1270 = load i32, ptr %k, align 4, !tbaa !8
  %inc1464 = add nsw i32 %1270, 1
  store i32 %inc1464, ptr %k, align 4, !tbaa !8
  br label %for.cond909, !llvm.loop !51

for.end1465:                                      ; preds = %for.cond909
  br label %if.end2592

if.else1466:                                      ; preds = %land.lhs.true906, %if.else904
  %1271 = load i32, ptr %notrna, align 4, !tbaa !8
  %tobool1467 = icmp ne i32 %1271, 0
  br i1 %tobool1467, label %if.else2028, label %land.lhs.true1468

land.lhs.true1468:                                ; preds = %if.else1466
  %1272 = load i32, ptr %notrnb, align 4, !tbaa !8
  %tobool1469 = icmp ne i32 %1272, 0
  br i1 %tobool1469, label %if.else2028, label %if.then1470

if.then1470:                                      ; preds = %land.lhs.true1468
  %1273 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %1273, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond1471

for.cond1471:                                     ; preds = %for.inc2025, %if.then1470
  %1274 = load i32, ptr %k, align 4, !tbaa !8
  %1275 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1472 = icmp sle i32 %1274, %1275
  br i1 %cmp1472, label %for.body1474, label %for.end2027

for.body1474:                                     ; preds = %for.cond1471
  %1276 = load i32, ptr %k, align 4, !tbaa !8
  %sub1475 = sub nsw i32 %1276, 1
  %1277 = load i32, ptr %nb, align 4, !tbaa !8
  %mul1476 = mul nsw i32 %sub1475, %1277
  %add1477 = add nsw i32 %mul1476, 1
  store i32 %add1477, ptr %k1, align 4, !tbaa !8
  %1278 = load i32, ptr %k, align 4, !tbaa !8
  %1279 = load i32, ptr %nb, align 4, !tbaa !8
  %mul1478 = mul nsw i32 %1278, %1279
  store i32 %mul1478, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1479) #5
  %1280 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %1280, ptr %_x1479, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1480) #5
  %1281 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1282 = load i32, ptr %1281, align 4, !tbaa !8
  store i32 %1282, ptr %_y1480, align 4, !tbaa !8
  %1283 = load i32, ptr %_x1479, align 4, !tbaa !8
  %1284 = load i32, ptr %_y1480, align 4, !tbaa !8
  %cmp1482 = icmp slt i32 %1283, %1284
  br i1 %cmp1482, label %cond.true1484, label %cond.false1485

cond.true1484:                                    ; preds = %for.body1474
  %1285 = load i32, ptr %_x1479, align 4, !tbaa !8
  br label %cond.end1486

cond.false1485:                                   ; preds = %for.body1474
  %1286 = load i32, ptr %_y1480, align 4, !tbaa !8
  br label %cond.end1486

cond.end1486:                                     ; preds = %cond.false1485, %cond.true1484
  %cond1487 = phi i32 [ %1285, %cond.true1484 ], [ %1286, %cond.false1485 ]
  store i32 %cond1487, ptr %tmp1481, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1480) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1479) #5
  %1287 = load i32, ptr %tmp1481, align 4, !tbaa !8
  %add1488 = add nsw i32 %1287, 1
  store i32 %add1488, ptr %k2, align 4, !tbaa !8
  %1288 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %1288, ptr %l, align 4, !tbaa !8
  br label %for.cond1489

for.cond1489:                                     ; preds = %for.inc2022, %cond.end1486
  %1289 = load i32, ptr %l, align 4, !tbaa !8
  %cmp1490 = icmp sge i32 %1289, 1
  br i1 %cmp1490, label %for.body1492, label %for.end2024

for.body1492:                                     ; preds = %for.cond1489
  %1290 = load i32, ptr %l, align 4, !tbaa !8
  %sub1493 = sub nsw i32 %1290, 1
  %1291 = load i32, ptr %nb, align 4, !tbaa !8
  %mul1494 = mul nsw i32 %sub1493, %1291
  %add1495 = add nsw i32 %mul1494, 1
  store i32 %add1495, ptr %l1, align 4, !tbaa !8
  %1292 = load i32, ptr %l, align 4, !tbaa !8
  %1293 = load i32, ptr %nb, align 4, !tbaa !8
  %mul1496 = mul nsw i32 %1292, %1293
  store i32 %mul1496, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1497) #5
  %1294 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %1294, ptr %_x1497, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1498) #5
  %1295 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1296 = load i32, ptr %1295, align 4, !tbaa !8
  store i32 %1296, ptr %_y1498, align 4, !tbaa !8
  %1297 = load i32, ptr %_x1497, align 4, !tbaa !8
  %1298 = load i32, ptr %_y1498, align 4, !tbaa !8
  %cmp1500 = icmp slt i32 %1297, %1298
  br i1 %cmp1500, label %cond.true1502, label %cond.false1503

cond.true1502:                                    ; preds = %for.body1492
  %1299 = load i32, ptr %_x1497, align 4, !tbaa !8
  br label %cond.end1504

cond.false1503:                                   ; preds = %for.body1492
  %1300 = load i32, ptr %_y1498, align 4, !tbaa !8
  br label %cond.end1504

cond.end1504:                                     ; preds = %cond.false1503, %cond.true1502
  %cond1505 = phi i32 [ %1299, %cond.true1502 ], [ %1300, %cond.false1503 ]
  store i32 %cond1505, ptr %tmp1499, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1498) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1497) #5
  %1301 = load i32, ptr %tmp1499, align 4, !tbaa !8
  %add1506 = add nsw i32 %1301, 1
  store i32 %add1506, ptr %l2, align 4, !tbaa !8
  %1302 = load i32, ptr %k2, align 4, !tbaa !8
  %1303 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1507 = sub nsw i32 %1302, %1303
  store i32 %sub1507, ptr %i__2, align 4, !tbaa !8
  %1304 = load i32, ptr %l2, align 4, !tbaa !8
  %1305 = load i32, ptr %l1, align 4, !tbaa !8
  %sub1508 = sub nsw i32 %1304, %1305
  store i32 %sub1508, ptr %i__3, align 4, !tbaa !8
  %1306 = load ptr, ptr %trana.addr, align 8, !tbaa !4
  %1307 = load ptr, ptr %tranb.addr, align 8, !tbaa !4
  %1308 = load ptr, ptr %isgn.addr, align 8, !tbaa !4
  %1309 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1310 = load i32, ptr %k1, align 4, !tbaa !8
  %1311 = load i32, ptr %k1, align 4, !tbaa !8
  %1312 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1509 = mul nsw i32 %1311, %1312
  %add1510 = add nsw i32 %1310, %mul1509
  %idxprom1511 = sext i32 %add1510 to i64
  %arrayidx1512 = getelementptr inbounds %struct.complex, ptr %1309, i64 %idxprom1511
  %1313 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1314 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1315 = load i32, ptr %l1, align 4, !tbaa !8
  %1316 = load i32, ptr %l1, align 4, !tbaa !8
  %1317 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul1513 = mul nsw i32 %1316, %1317
  %add1514 = add nsw i32 %1315, %mul1513
  %idxprom1515 = sext i32 %add1514 to i64
  %arrayidx1516 = getelementptr inbounds %struct.complex, ptr %1314, i64 %idxprom1515
  %1318 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %1319 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1320 = load i32, ptr %k1, align 4, !tbaa !8
  %1321 = load i32, ptr %l1, align 4, !tbaa !8
  %1322 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1517 = mul nsw i32 %1321, %1322
  %add1518 = add nsw i32 %1320, %mul1517
  %idxprom1519 = sext i32 %add1518 to i64
  %arrayidx1520 = getelementptr inbounds %struct.complex, ptr %1319, i64 %idxprom1519
  %1323 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call1521 = call i32 @ctrsyl_(ptr noundef %1306, ptr noundef %1307, ptr noundef %1308, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx1512, ptr noundef %1313, ptr noundef %arrayidx1516, ptr noundef %1318, ptr noundef %arrayidx1520, ptr noundef %1323, ptr noundef %scaloc, ptr noundef %iinfo)
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1522) #5
  %1324 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %1325 = load i32, ptr %1324, align 4, !tbaa !8
  store i32 %1325, ptr %_x1522, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1523) #5
  %1326 = load i32, ptr %iinfo, align 4, !tbaa !8
  store i32 %1326, ptr %_y1523, align 4, !tbaa !8
  %1327 = load i32, ptr %_x1522, align 4, !tbaa !8
  %1328 = load i32, ptr %_y1523, align 4, !tbaa !8
  %cmp1525 = icmp sgt i32 %1327, %1328
  br i1 %cmp1525, label %cond.true1527, label %cond.false1528

cond.true1527:                                    ; preds = %cond.end1504
  %1329 = load i32, ptr %_x1522, align 4, !tbaa !8
  br label %cond.end1529

cond.false1528:                                   ; preds = %cond.end1504
  %1330 = load i32, ptr %_y1523, align 4, !tbaa !8
  br label %cond.end1529

cond.end1529:                                     ; preds = %cond.false1528, %cond.true1527
  %cond1530 = phi i32 [ %1329, %cond.true1527 ], [ %1330, %cond.false1528 ]
  store i32 %cond1530, ptr %tmp1524, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1523) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1522) #5
  %1331 = load i32, ptr %tmp1524, align 4, !tbaa !8
  %1332 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %1331, ptr %1332, align 4, !tbaa !8
  %1333 = load float, ptr %scaloc, align 4, !tbaa !10
  %1334 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1335 = load i32, ptr %k, align 4, !tbaa !8
  %1336 = load i32, ptr %l, align 4, !tbaa !8
  %1337 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1531 = mul nsw i32 %1336, %1337
  %add1532 = add nsw i32 %1335, %mul1531
  %idxprom1533 = sext i32 %add1532 to i64
  %arrayidx1534 = getelementptr inbounds float, ptr %1334, i64 %idxprom1533
  %1338 = load float, ptr %arrayidx1534, align 4, !tbaa !10
  %mul1535 = fmul float %1333, %1338
  %cmp1536 = fcmp oeq float %mul1535, 0.000000e+00
  br i1 %cmp1536, label %if.then1538, label %if.end1589

if.then1538:                                      ; preds = %cond.end1529
  %1339 = load float, ptr %scaloc, align 4, !tbaa !10
  %cmp1539 = fcmp oeq float %1339, 0.000000e+00
  br i1 %cmp1539, label %if.then1541, label %if.else1542

if.then1541:                                      ; preds = %if.then1538
  store float 0.000000e+00, ptr %buf, align 4, !tbaa !10
  br label %if.end1550

if.else1542:                                      ; preds = %if.then1538
  %1340 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1543 = fpext float %1340 to double
  %call1544 = call double @frexp(double noundef %conv1543, ptr noundef %temp) #5
  %1341 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1545 = sitofp i32 %1341 to double
  store double %conv1545, ptr %d__1, align 8, !tbaa !22
  %call1546 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1342 = load float, ptr %buf, align 4, !tbaa !10
  %conv1547 = fpext float %1342 to double
  %mul1548 = fmul double %conv1547, %call1546
  %conv1549 = fptrunc double %mul1548 to float
  store float %conv1549, ptr %buf, align 4, !tbaa !10
  br label %if.end1550

if.end1550:                                       ; preds = %if.else1542, %if.then1541
  %1343 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %1343, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %jj, align 4, !tbaa !8
  br label %for.cond1551

for.cond1551:                                     ; preds = %for.inc1586, %if.end1550
  %1344 = load i32, ptr %jj, align 4, !tbaa !8
  %1345 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1552 = icmp sle i32 %1344, %1345
  br i1 %cmp1552, label %for.body1554, label %for.end1588

for.body1554:                                     ; preds = %for.cond1551
  %1346 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %1346, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %ll, align 4, !tbaa !8
  br label %for.cond1555

for.cond1555:                                     ; preds = %for.inc1583, %for.body1554
  %1347 = load i32, ptr %ll, align 4, !tbaa !8
  %1348 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1556 = icmp sle i32 %1347, %1348
  br i1 %cmp1556, label %for.body1558, label %for.end1585

for.body1558:                                     ; preds = %for.cond1555
  %1349 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1559 = fpext float %1349 to double
  %call1560 = call double @frexp(double noundef %conv1559, ptr noundef %temp) #5
  %1350 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1561 = sitofp i32 %1350 to double
  store double %conv1561, ptr %d__1, align 8, !tbaa !22
  %1351 = load float, ptr %bignum, align 4, !tbaa !10
  store float %1351, ptr %r__1, align 4, !tbaa !10
  %1352 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1353 = load i32, ptr %ll, align 4, !tbaa !8
  %1354 = load i32, ptr %jj, align 4, !tbaa !8
  %1355 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1562 = mul nsw i32 %1354, %1355
  %add1563 = add nsw i32 %1353, %mul1562
  %idxprom1564 = sext i32 %add1563 to i64
  %arrayidx1565 = getelementptr inbounds float, ptr %1352, i64 %idxprom1564
  %1356 = load float, ptr %arrayidx1565, align 4, !tbaa !10
  %conv1566 = fpext float %1356 to double
  %call1567 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %div1568 = fdiv double %conv1566, %call1567
  %conv1569 = fptrunc double %div1568 to float
  store float %conv1569, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1570) #5
  %1357 = load float, ptr %r__1, align 4, !tbaa !10
  store float %1357, ptr %_x1570, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1571) #5
  %1358 = load float, ptr %r__2, align 4, !tbaa !10
  store float %1358, ptr %_y1571, align 4, !tbaa !10
  %1359 = load float, ptr %_x1570, align 4, !tbaa !10
  %1360 = load float, ptr %_y1571, align 4, !tbaa !10
  %cmp1573 = fcmp olt float %1359, %1360
  br i1 %cmp1573, label %cond.true1575, label %cond.false1576

cond.true1575:                                    ; preds = %for.body1558
  %1361 = load float, ptr %_x1570, align 4, !tbaa !10
  br label %cond.end1577

cond.false1576:                                   ; preds = %for.body1558
  %1362 = load float, ptr %_y1571, align 4, !tbaa !10
  br label %cond.end1577

cond.end1577:                                     ; preds = %cond.false1576, %cond.true1575
  %cond1578 = phi float [ %1361, %cond.true1575 ], [ %1362, %cond.false1576 ]
  store float %cond1578, ptr %tmp1572, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1571) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1570) #5
  %1363 = load float, ptr %tmp1572, align 4, !tbaa !10
  %1364 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1365 = load i32, ptr %ll, align 4, !tbaa !8
  %1366 = load i32, ptr %jj, align 4, !tbaa !8
  %1367 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1579 = mul nsw i32 %1366, %1367
  %add1580 = add nsw i32 %1365, %mul1579
  %idxprom1581 = sext i32 %add1580 to i64
  %arrayidx1582 = getelementptr inbounds float, ptr %1364, i64 %idxprom1581
  store float %1363, ptr %arrayidx1582, align 4, !tbaa !10
  br label %for.inc1583

for.inc1583:                                      ; preds = %cond.end1577
  %1368 = load i32, ptr %ll, align 4, !tbaa !8
  %inc1584 = add nsw i32 %1368, 1
  store i32 %inc1584, ptr %ll, align 4, !tbaa !8
  br label %for.cond1555, !llvm.loop !52

for.end1585:                                      ; preds = %for.cond1555
  br label %for.inc1586

for.inc1586:                                      ; preds = %for.end1585
  %1369 = load i32, ptr %jj, align 4, !tbaa !8
  %inc1587 = add nsw i32 %1369, 1
  store i32 %inc1587, ptr %jj, align 4, !tbaa !8
  br label %for.cond1551, !llvm.loop !53

for.end1588:                                      ; preds = %for.cond1551
  br label %if.end1589

if.end1589:                                       ; preds = %for.end1588, %cond.end1529
  %1370 = load float, ptr %scaloc, align 4, !tbaa !10
  %1371 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1372 = load i32, ptr %k, align 4, !tbaa !8
  %1373 = load i32, ptr %l, align 4, !tbaa !8
  %1374 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1590 = mul nsw i32 %1373, %1374
  %add1591 = add nsw i32 %1372, %mul1590
  %idxprom1592 = sext i32 %add1591 to i64
  %arrayidx1593 = getelementptr inbounds float, ptr %1371, i64 %idxprom1592
  %1375 = load float, ptr %arrayidx1593, align 4, !tbaa !10
  %mul1594 = fmul float %1370, %1375
  %1376 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1377 = load i32, ptr %k, align 4, !tbaa !8
  %1378 = load i32, ptr %l, align 4, !tbaa !8
  %1379 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1595 = mul nsw i32 %1378, %1379
  %add1596 = add nsw i32 %1377, %mul1595
  %idxprom1597 = sext i32 %add1596 to i64
  %arrayidx1598 = getelementptr inbounds float, ptr %1376, i64 %idxprom1597
  store float %mul1594, ptr %arrayidx1598, align 4, !tbaa !10
  %1380 = load i32, ptr %k2, align 4, !tbaa !8
  %1381 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1599 = sub nsw i32 %1380, %1381
  store i32 %sub1599, ptr %i__2, align 4, !tbaa !8
  %1382 = load i32, ptr %l2, align 4, !tbaa !8
  %1383 = load i32, ptr %l1, align 4, !tbaa !8
  %sub1600 = sub nsw i32 %1382, %1383
  store i32 %sub1600, ptr %i__3, align 4, !tbaa !8
  %1384 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1385 = load i32, ptr %k1, align 4, !tbaa !8
  %1386 = load i32, ptr %l1, align 4, !tbaa !8
  %1387 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1601 = mul nsw i32 %1386, %1387
  %add1602 = add nsw i32 %1385, %mul1601
  %idxprom1603 = sext i32 %add1602 to i64
  %arrayidx1604 = getelementptr inbounds %struct.complex, ptr %1384, i64 %idxprom1603
  %1388 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %1389 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call1605 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx1604, ptr noundef %1388, ptr noundef %1389)
  store float %call1605, ptr %xnrm, align 4, !tbaa !10
  %1390 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %1390, ptr %i__2, align 4, !tbaa !8
  %1391 = load i32, ptr %k, align 4, !tbaa !8
  %add1606 = add nsw i32 %1391, 1
  store i32 %add1606, ptr %i__, align 4, !tbaa !8
  br label %for.cond1607

for.cond1607:                                     ; preds = %for.inc1809, %if.end1589
  %1392 = load i32, ptr %i__, align 4, !tbaa !8
  %1393 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1608 = icmp sle i32 %1392, %1393
  br i1 %cmp1608, label %for.body1610, label %for.end1811

for.body1610:                                     ; preds = %for.cond1607
  %1394 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1611 = sub nsw i32 %1394, 1
  %1395 = load i32, ptr %nb, align 4, !tbaa !8
  %mul1612 = mul nsw i32 %sub1611, %1395
  %add1613 = add nsw i32 %mul1612, 1
  store i32 %add1613, ptr %i1, align 4, !tbaa !8
  %1396 = load i32, ptr %i__, align 4, !tbaa !8
  %1397 = load i32, ptr %nb, align 4, !tbaa !8
  %mul1614 = mul nsw i32 %1396, %1397
  store i32 %mul1614, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1615) #5
  %1398 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %1398, ptr %_x1615, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1616) #5
  %1399 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1400 = load i32, ptr %1399, align 4, !tbaa !8
  store i32 %1400, ptr %_y1616, align 4, !tbaa !8
  %1401 = load i32, ptr %_x1615, align 4, !tbaa !8
  %1402 = load i32, ptr %_y1616, align 4, !tbaa !8
  %cmp1618 = icmp slt i32 %1401, %1402
  br i1 %cmp1618, label %cond.true1620, label %cond.false1621

cond.true1620:                                    ; preds = %for.body1610
  %1403 = load i32, ptr %_x1615, align 4, !tbaa !8
  br label %cond.end1622

cond.false1621:                                   ; preds = %for.body1610
  %1404 = load i32, ptr %_y1616, align 4, !tbaa !8
  br label %cond.end1622

cond.end1622:                                     ; preds = %cond.false1621, %cond.true1620
  %cond1623 = phi i32 [ %1403, %cond.true1620 ], [ %1404, %cond.false1621 ]
  store i32 %cond1623, ptr %tmp1617, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1616) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1615) #5
  %1405 = load i32, ptr %tmp1617, align 4, !tbaa !8
  %add1624 = add nsw i32 %1405, 1
  store i32 %add1624, ptr %i2, align 4, !tbaa !8
  %1406 = load i32, ptr %i2, align 4, !tbaa !8
  %1407 = load i32, ptr %i1, align 4, !tbaa !8
  %sub1625 = sub nsw i32 %1406, %1407
  store i32 %sub1625, ptr %i__3, align 4, !tbaa !8
  %1408 = load i32, ptr %l2, align 4, !tbaa !8
  %1409 = load i32, ptr %l1, align 4, !tbaa !8
  %sub1626 = sub nsw i32 %1408, %1409
  store i32 %sub1626, ptr %i__4, align 4, !tbaa !8
  %1410 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1411 = load i32, ptr %i1, align 4, !tbaa !8
  %1412 = load i32, ptr %l1, align 4, !tbaa !8
  %1413 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1627 = mul nsw i32 %1412, %1413
  %add1628 = add nsw i32 %1411, %mul1627
  %idxprom1629 = sext i32 %add1628 to i64
  %arrayidx1630 = getelementptr inbounds %struct.complex, ptr %1410, i64 %idxprom1629
  %1414 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %1415 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call1631 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx1630, ptr noundef %1414, ptr noundef %1415)
  store float %call1631, ptr %cnrm, align 4, !tbaa !10
  %1416 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1417 = load i32, ptr %i__, align 4, !tbaa !8
  %1418 = load i32, ptr %l, align 4, !tbaa !8
  %1419 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1632 = mul nsw i32 %1418, %1419
  %add1633 = add nsw i32 %1417, %mul1632
  %idxprom1634 = sext i32 %add1633 to i64
  %arrayidx1635 = getelementptr inbounds float, ptr %1416, i64 %idxprom1634
  %1420 = load float, ptr %arrayidx1635, align 4, !tbaa !10
  store float %1420, ptr %r__1, align 4, !tbaa !10
  %1421 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1422 = load i32, ptr %k, align 4, !tbaa !8
  %1423 = load i32, ptr %l, align 4, !tbaa !8
  %1424 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1636 = mul nsw i32 %1423, %1424
  %add1637 = add nsw i32 %1422, %mul1636
  %idxprom1638 = sext i32 %add1637 to i64
  %arrayidx1639 = getelementptr inbounds float, ptr %1421, i64 %idxprom1638
  %1425 = load float, ptr %arrayidx1639, align 4, !tbaa !10
  store float %1425, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1640) #5
  %1426 = load float, ptr %r__1, align 4, !tbaa !10
  store float %1426, ptr %_x1640, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1641) #5
  %1427 = load float, ptr %r__2, align 4, !tbaa !10
  store float %1427, ptr %_y1641, align 4, !tbaa !10
  %1428 = load float, ptr %_x1640, align 4, !tbaa !10
  %1429 = load float, ptr %_y1641, align 4, !tbaa !10
  %cmp1643 = fcmp olt float %1428, %1429
  br i1 %cmp1643, label %cond.true1645, label %cond.false1646

cond.true1645:                                    ; preds = %cond.end1622
  %1430 = load float, ptr %_x1640, align 4, !tbaa !10
  br label %cond.end1647

cond.false1646:                                   ; preds = %cond.end1622
  %1431 = load float, ptr %_y1641, align 4, !tbaa !10
  br label %cond.end1647

cond.end1647:                                     ; preds = %cond.false1646, %cond.true1645
  %cond1648 = phi float [ %1430, %cond.true1645 ], [ %1431, %cond.false1646 ]
  store float %cond1648, ptr %tmp1642, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1641) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1640) #5
  %1432 = load float, ptr %tmp1642, align 4, !tbaa !10
  store float %1432, ptr %scamin, align 4, !tbaa !10
  %1433 = load float, ptr %scamin, align 4, !tbaa !10
  %1434 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1435 = load i32, ptr %i__, align 4, !tbaa !8
  %1436 = load i32, ptr %l, align 4, !tbaa !8
  %1437 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1649 = mul nsw i32 %1436, %1437
  %add1650 = add nsw i32 %1435, %mul1649
  %idxprom1651 = sext i32 %add1650 to i64
  %arrayidx1652 = getelementptr inbounds float, ptr %1434, i64 %idxprom1651
  %1438 = load float, ptr %arrayidx1652, align 4, !tbaa !10
  %div1653 = fdiv float %1433, %1438
  %1439 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul1654 = fmul float %1439, %div1653
  store float %mul1654, ptr %cnrm, align 4, !tbaa !10
  %1440 = load float, ptr %scamin, align 4, !tbaa !10
  %1441 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1442 = load i32, ptr %k, align 4, !tbaa !8
  %1443 = load i32, ptr %l, align 4, !tbaa !8
  %1444 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1655 = mul nsw i32 %1443, %1444
  %add1656 = add nsw i32 %1442, %mul1655
  %idxprom1657 = sext i32 %add1656 to i64
  %arrayidx1658 = getelementptr inbounds float, ptr %1441, i64 %idxprom1657
  %1445 = load float, ptr %arrayidx1658, align 4, !tbaa !10
  %div1659 = fdiv float %1440, %1445
  %1446 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul1660 = fmul float %1446, %div1659
  store float %mul1660, ptr %xnrm, align 4, !tbaa !10
  %1447 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1448 = load i32, ptr %i__, align 4, !tbaa !8
  %1449 = load i32, ptr %awrk, align 4, !tbaa !8
  %1450 = load i32, ptr %k, align 4, !tbaa !8
  %add1661 = add nsw i32 %1449, %1450
  %1451 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1662 = mul nsw i32 %add1661, %1451
  %add1663 = add nsw i32 %1448, %mul1662
  %idxprom1664 = sext i32 %add1663 to i64
  %arrayidx1665 = getelementptr inbounds float, ptr %1447, i64 %idxprom1664
  %1452 = load float, ptr %arrayidx1665, align 4, !tbaa !10
  store float %1452, ptr %anrm, align 4, !tbaa !10
  %call1666 = call float @slarmm_(ptr noundef %anrm, ptr noundef %xnrm, ptr noundef %cnrm)
  store float %call1666, ptr %scaloc, align 4, !tbaa !10
  %1453 = load float, ptr %scaloc, align 4, !tbaa !10
  %1454 = load float, ptr %scamin, align 4, !tbaa !10
  %mul1667 = fmul float %1453, %1454
  %cmp1668 = fcmp oeq float %mul1667, 0.000000e+00
  br i1 %cmp1668, label %if.then1670, label %if.end1730

if.then1670:                                      ; preds = %cond.end1647
  %1455 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1671 = fpext float %1455 to double
  %call1672 = call double @frexp(double noundef %conv1671, ptr noundef %temp) #5
  %1456 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1673 = sitofp i32 %1456 to double
  store double %conv1673, ptr %d__1, align 8, !tbaa !22
  %call1674 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1457 = load float, ptr %buf, align 4, !tbaa !10
  %conv1675 = fpext float %1457 to double
  %mul1676 = fmul double %conv1675, %call1674
  %conv1677 = fptrunc double %mul1676 to float
  store float %conv1677, ptr %buf, align 4, !tbaa !10
  %1458 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %1458, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %jj, align 4, !tbaa !8
  br label %for.cond1678

for.cond1678:                                     ; preds = %for.inc1713, %if.then1670
  %1459 = load i32, ptr %jj, align 4, !tbaa !8
  %1460 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1679 = icmp sle i32 %1459, %1460
  br i1 %cmp1679, label %for.body1681, label %for.end1715

for.body1681:                                     ; preds = %for.cond1678
  %1461 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %1461, ptr %i__4, align 4, !tbaa !8
  store i32 1, ptr %ll, align 4, !tbaa !8
  br label %for.cond1682

for.cond1682:                                     ; preds = %for.inc1710, %for.body1681
  %1462 = load i32, ptr %ll, align 4, !tbaa !8
  %1463 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1683 = icmp sle i32 %1462, %1463
  br i1 %cmp1683, label %for.body1685, label %for.end1712

for.body1685:                                     ; preds = %for.cond1682
  %1464 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1686 = fpext float %1464 to double
  %call1687 = call double @frexp(double noundef %conv1686, ptr noundef %temp) #5
  %1465 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1688 = sitofp i32 %1465 to double
  store double %conv1688, ptr %d__1, align 8, !tbaa !22
  %1466 = load float, ptr %bignum, align 4, !tbaa !10
  store float %1466, ptr %r__1, align 4, !tbaa !10
  %1467 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1468 = load i32, ptr %ll, align 4, !tbaa !8
  %1469 = load i32, ptr %jj, align 4, !tbaa !8
  %1470 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1689 = mul nsw i32 %1469, %1470
  %add1690 = add nsw i32 %1468, %mul1689
  %idxprom1691 = sext i32 %add1690 to i64
  %arrayidx1692 = getelementptr inbounds float, ptr %1467, i64 %idxprom1691
  %1471 = load float, ptr %arrayidx1692, align 4, !tbaa !10
  %conv1693 = fpext float %1471 to double
  %call1694 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %div1695 = fdiv double %conv1693, %call1694
  %conv1696 = fptrunc double %div1695 to float
  store float %conv1696, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1697) #5
  %1472 = load float, ptr %r__1, align 4, !tbaa !10
  store float %1472, ptr %_x1697, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1698) #5
  %1473 = load float, ptr %r__2, align 4, !tbaa !10
  store float %1473, ptr %_y1698, align 4, !tbaa !10
  %1474 = load float, ptr %_x1697, align 4, !tbaa !10
  %1475 = load float, ptr %_y1698, align 4, !tbaa !10
  %cmp1700 = fcmp olt float %1474, %1475
  br i1 %cmp1700, label %cond.true1702, label %cond.false1703

cond.true1702:                                    ; preds = %for.body1685
  %1476 = load float, ptr %_x1697, align 4, !tbaa !10
  br label %cond.end1704

cond.false1703:                                   ; preds = %for.body1685
  %1477 = load float, ptr %_y1698, align 4, !tbaa !10
  br label %cond.end1704

cond.end1704:                                     ; preds = %cond.false1703, %cond.true1702
  %cond1705 = phi float [ %1476, %cond.true1702 ], [ %1477, %cond.false1703 ]
  store float %cond1705, ptr %tmp1699, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1698) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1697) #5
  %1478 = load float, ptr %tmp1699, align 4, !tbaa !10
  %1479 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1480 = load i32, ptr %ll, align 4, !tbaa !8
  %1481 = load i32, ptr %jj, align 4, !tbaa !8
  %1482 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1706 = mul nsw i32 %1481, %1482
  %add1707 = add nsw i32 %1480, %mul1706
  %idxprom1708 = sext i32 %add1707 to i64
  %arrayidx1709 = getelementptr inbounds float, ptr %1479, i64 %idxprom1708
  store float %1478, ptr %arrayidx1709, align 4, !tbaa !10
  br label %for.inc1710

for.inc1710:                                      ; preds = %cond.end1704
  %1483 = load i32, ptr %ll, align 4, !tbaa !8
  %inc1711 = add nsw i32 %1483, 1
  store i32 %inc1711, ptr %ll, align 4, !tbaa !8
  br label %for.cond1682, !llvm.loop !54

for.end1712:                                      ; preds = %for.cond1682
  br label %for.inc1713

for.inc1713:                                      ; preds = %for.end1712
  %1484 = load i32, ptr %jj, align 4, !tbaa !8
  %inc1714 = add nsw i32 %1484, 1
  store i32 %inc1714, ptr %jj, align 4, !tbaa !8
  br label %for.cond1678, !llvm.loop !55

for.end1715:                                      ; preds = %for.cond1678
  %1485 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1716 = fpext float %1485 to double
  %call1717 = call double @frexp(double noundef %conv1716, ptr noundef %temp) #5
  %1486 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1718 = sitofp i32 %1486 to double
  store double %conv1718, ptr %d__1, align 8, !tbaa !22
  %call1719 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1487 = load float, ptr %scamin, align 4, !tbaa !10
  %conv1720 = fpext float %1487 to double
  %div1721 = fdiv double %conv1720, %call1719
  %conv1722 = fptrunc double %div1721 to float
  store float %conv1722, ptr %scamin, align 4, !tbaa !10
  %1488 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1723 = fpext float %1488 to double
  %call1724 = call double @frexp(double noundef %conv1723, ptr noundef %temp) #5
  %1489 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1725 = sitofp i32 %1489 to double
  store double %conv1725, ptr %d__1, align 8, !tbaa !22
  %call1726 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1490 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1727 = fpext float %1490 to double
  %div1728 = fdiv double %conv1727, %call1726
  %conv1729 = fptrunc double %div1728 to float
  store float %conv1729, ptr %scaloc, align 4, !tbaa !10
  br label %if.end1730

if.end1730:                                       ; preds = %for.end1715, %cond.end1647
  %1491 = load float, ptr %scaloc, align 4, !tbaa !10
  %1492 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul1731 = fmul float %1492, %1491
  store float %mul1731, ptr %cnrm, align 4, !tbaa !10
  %1493 = load float, ptr %scaloc, align 4, !tbaa !10
  %1494 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul1732 = fmul float %1494, %1493
  store float %mul1732, ptr %xnrm, align 4, !tbaa !10
  %1495 = load float, ptr %scamin, align 4, !tbaa !10
  %1496 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1497 = load i32, ptr %k, align 4, !tbaa !8
  %1498 = load i32, ptr %l, align 4, !tbaa !8
  %1499 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1733 = mul nsw i32 %1498, %1499
  %add1734 = add nsw i32 %1497, %mul1733
  %idxprom1735 = sext i32 %add1734 to i64
  %arrayidx1736 = getelementptr inbounds float, ptr %1496, i64 %idxprom1735
  %1500 = load float, ptr %arrayidx1736, align 4, !tbaa !10
  %div1737 = fdiv float %1495, %1500
  %1501 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1738 = fmul float %div1737, %1501
  store float %mul1738, ptr %scal, align 4, !tbaa !10
  %1502 = load float, ptr %scal, align 4, !tbaa !10
  %cmp1739 = fcmp une float %1502, 1.000000e+00
  br i1 %cmp1739, label %if.then1741, label %if.end1756

if.then1741:                                      ; preds = %if.end1730
  %1503 = load i32, ptr %l2, align 4, !tbaa !8
  %sub1742 = sub nsw i32 %1503, 1
  store i32 %sub1742, ptr %i__3, align 4, !tbaa !8
  %1504 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %1504, ptr %ll, align 4, !tbaa !8
  br label %for.cond1743

for.cond1743:                                     ; preds = %for.inc1753, %if.then1741
  %1505 = load i32, ptr %ll, align 4, !tbaa !8
  %1506 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1744 = icmp sle i32 %1505, %1506
  br i1 %cmp1744, label %for.body1746, label %for.end1755

for.body1746:                                     ; preds = %for.cond1743
  %1507 = load i32, ptr %k2, align 4, !tbaa !8
  %1508 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1747 = sub nsw i32 %1507, %1508
  store i32 %sub1747, ptr %i__4, align 4, !tbaa !8
  %1509 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1510 = load i32, ptr %k1, align 4, !tbaa !8
  %1511 = load i32, ptr %ll, align 4, !tbaa !8
  %1512 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1748 = mul nsw i32 %1511, %1512
  %add1749 = add nsw i32 %1510, %mul1748
  %idxprom1750 = sext i32 %add1749 to i64
  %arrayidx1751 = getelementptr inbounds %struct.complex, ptr %1509, i64 %idxprom1750
  %call1752 = call i32 @csscal_(ptr noundef %i__4, ptr noundef %scal, ptr noundef %arrayidx1751, ptr noundef @c__1)
  br label %for.inc1753

for.inc1753:                                      ; preds = %for.body1746
  %1513 = load i32, ptr %ll, align 4, !tbaa !8
  %inc1754 = add nsw i32 %1513, 1
  store i32 %inc1754, ptr %ll, align 4, !tbaa !8
  br label %for.cond1743, !llvm.loop !56

for.end1755:                                      ; preds = %for.cond1743
  br label %if.end1756

if.end1756:                                       ; preds = %for.end1755, %if.end1730
  %1514 = load float, ptr %scamin, align 4, !tbaa !10
  %1515 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1516 = load i32, ptr %i__, align 4, !tbaa !8
  %1517 = load i32, ptr %l, align 4, !tbaa !8
  %1518 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1757 = mul nsw i32 %1517, %1518
  %add1758 = add nsw i32 %1516, %mul1757
  %idxprom1759 = sext i32 %add1758 to i64
  %arrayidx1760 = getelementptr inbounds float, ptr %1515, i64 %idxprom1759
  %1519 = load float, ptr %arrayidx1760, align 4, !tbaa !10
  %div1761 = fdiv float %1514, %1519
  %1520 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1762 = fmul float %div1761, %1520
  store float %mul1762, ptr %scal, align 4, !tbaa !10
  %1521 = load float, ptr %scal, align 4, !tbaa !10
  %cmp1763 = fcmp une float %1521, 1.000000e+00
  br i1 %cmp1763, label %if.then1765, label %if.end1780

if.then1765:                                      ; preds = %if.end1756
  %1522 = load i32, ptr %l2, align 4, !tbaa !8
  %sub1766 = sub nsw i32 %1522, 1
  store i32 %sub1766, ptr %i__3, align 4, !tbaa !8
  %1523 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %1523, ptr %ll, align 4, !tbaa !8
  br label %for.cond1767

for.cond1767:                                     ; preds = %for.inc1777, %if.then1765
  %1524 = load i32, ptr %ll, align 4, !tbaa !8
  %1525 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1768 = icmp sle i32 %1524, %1525
  br i1 %cmp1768, label %for.body1770, label %for.end1779

for.body1770:                                     ; preds = %for.cond1767
  %1526 = load i32, ptr %i2, align 4, !tbaa !8
  %1527 = load i32, ptr %i1, align 4, !tbaa !8
  %sub1771 = sub nsw i32 %1526, %1527
  store i32 %sub1771, ptr %i__4, align 4, !tbaa !8
  %1528 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1529 = load i32, ptr %i1, align 4, !tbaa !8
  %1530 = load i32, ptr %ll, align 4, !tbaa !8
  %1531 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1772 = mul nsw i32 %1530, %1531
  %add1773 = add nsw i32 %1529, %mul1772
  %idxprom1774 = sext i32 %add1773 to i64
  %arrayidx1775 = getelementptr inbounds %struct.complex, ptr %1528, i64 %idxprom1774
  %call1776 = call i32 @csscal_(ptr noundef %i__4, ptr noundef %scal, ptr noundef %arrayidx1775, ptr noundef @c__1)
  br label %for.inc1777

for.inc1777:                                      ; preds = %for.body1770
  %1532 = load i32, ptr %ll, align 4, !tbaa !8
  %inc1778 = add nsw i32 %1532, 1
  store i32 %inc1778, ptr %ll, align 4, !tbaa !8
  br label %for.cond1767, !llvm.loop !57

for.end1779:                                      ; preds = %for.cond1767
  br label %if.end1780

if.end1780:                                       ; preds = %for.end1779, %if.end1756
  %1533 = load float, ptr %scamin, align 4, !tbaa !10
  %1534 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1781 = fmul float %1533, %1534
  %1535 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1536 = load i32, ptr %k, align 4, !tbaa !8
  %1537 = load i32, ptr %l, align 4, !tbaa !8
  %1538 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1782 = mul nsw i32 %1537, %1538
  %add1783 = add nsw i32 %1536, %mul1782
  %idxprom1784 = sext i32 %add1783 to i64
  %arrayidx1785 = getelementptr inbounds float, ptr %1535, i64 %idxprom1784
  store float %mul1781, ptr %arrayidx1785, align 4, !tbaa !10
  %1539 = load float, ptr %scamin, align 4, !tbaa !10
  %1540 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1786 = fmul float %1539, %1540
  %1541 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1542 = load i32, ptr %i__, align 4, !tbaa !8
  %1543 = load i32, ptr %l, align 4, !tbaa !8
  %1544 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1787 = mul nsw i32 %1543, %1544
  %add1788 = add nsw i32 %1542, %mul1787
  %idxprom1789 = sext i32 %add1788 to i64
  %arrayidx1790 = getelementptr inbounds float, ptr %1541, i64 %idxprom1789
  store float %mul1786, ptr %arrayidx1790, align 4, !tbaa !10
  %1545 = load i32, ptr %i2, align 4, !tbaa !8
  %1546 = load i32, ptr %i1, align 4, !tbaa !8
  %sub1791 = sub nsw i32 %1545, %1546
  store i32 %sub1791, ptr %i__3, align 4, !tbaa !8
  %1547 = load i32, ptr %l2, align 4, !tbaa !8
  %1548 = load i32, ptr %l1, align 4, !tbaa !8
  %sub1792 = sub nsw i32 %1547, %1548
  store i32 %sub1792, ptr %i__4, align 4, !tbaa !8
  %1549 = load i32, ptr %k2, align 4, !tbaa !8
  %1550 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1793 = sub nsw i32 %1549, %1550
  store i32 %sub1793, ptr %i__5, align 4, !tbaa !8
  %r1794 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r1794, align 4, !tbaa !19
  %i1795 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i1795, align 4, !tbaa !21
  %1551 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1552 = load i32, ptr %k1, align 4, !tbaa !8
  %1553 = load i32, ptr %i1, align 4, !tbaa !8
  %1554 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1796 = mul nsw i32 %1553, %1554
  %add1797 = add nsw i32 %1552, %mul1796
  %idxprom1798 = sext i32 %add1797 to i64
  %arrayidx1799 = getelementptr inbounds %struct.complex, ptr %1551, i64 %idxprom1798
  %1555 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1556 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1557 = load i32, ptr %k1, align 4, !tbaa !8
  %1558 = load i32, ptr %l1, align 4, !tbaa !8
  %1559 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1800 = mul nsw i32 %1558, %1559
  %add1801 = add nsw i32 %1557, %mul1800
  %idxprom1802 = sext i32 %add1801 to i64
  %arrayidx1803 = getelementptr inbounds %struct.complex, ptr %1556, i64 %idxprom1802
  %1560 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %1561 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1562 = load i32, ptr %i1, align 4, !tbaa !8
  %1563 = load i32, ptr %l1, align 4, !tbaa !8
  %1564 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1804 = mul nsw i32 %1563, %1564
  %add1805 = add nsw i32 %1562, %mul1804
  %idxprom1806 = sext i32 %add1805 to i64
  %arrayidx1807 = getelementptr inbounds %struct.complex, ptr %1561, i64 %idxprom1806
  %1565 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call1808 = call i32 @cgemm_(ptr noundef @.str.3, ptr noundef @.str, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %i__5, ptr noundef %q__1, ptr noundef %arrayidx1799, ptr noundef %1555, ptr noundef %arrayidx1803, ptr noundef %1560, ptr noundef @c_b1, ptr noundef %arrayidx1807, ptr noundef %1565)
  br label %for.inc1809

for.inc1809:                                      ; preds = %if.end1780
  %1566 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1810 = add nsw i32 %1566, 1
  store i32 %inc1810, ptr %i__, align 4, !tbaa !8
  br label %for.cond1607, !llvm.loop !58

for.end1811:                                      ; preds = %for.cond1607
  %1567 = load i32, ptr %l, align 4, !tbaa !8
  %sub1812 = sub nsw i32 %1567, 1
  store i32 %sub1812, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond1813

for.cond1813:                                     ; preds = %for.inc2019, %for.end1811
  %1568 = load i32, ptr %j, align 4, !tbaa !8
  %1569 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1814 = icmp sle i32 %1568, %1569
  br i1 %cmp1814, label %for.body1816, label %for.end2021

for.body1816:                                     ; preds = %for.cond1813
  %1570 = load i32, ptr %j, align 4, !tbaa !8
  %sub1817 = sub nsw i32 %1570, 1
  %1571 = load i32, ptr %nb, align 4, !tbaa !8
  %mul1818 = mul nsw i32 %sub1817, %1571
  %add1819 = add nsw i32 %mul1818, 1
  store i32 %add1819, ptr %j1, align 4, !tbaa !8
  %1572 = load i32, ptr %j, align 4, !tbaa !8
  %1573 = load i32, ptr %nb, align 4, !tbaa !8
  %mul1820 = mul nsw i32 %1572, %1573
  store i32 %mul1820, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1821) #5
  %1574 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %1574, ptr %_x1821, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1822) #5
  %1575 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1576 = load i32, ptr %1575, align 4, !tbaa !8
  store i32 %1576, ptr %_y1822, align 4, !tbaa !8
  %1577 = load i32, ptr %_x1821, align 4, !tbaa !8
  %1578 = load i32, ptr %_y1822, align 4, !tbaa !8
  %cmp1824 = icmp slt i32 %1577, %1578
  br i1 %cmp1824, label %cond.true1826, label %cond.false1827

cond.true1826:                                    ; preds = %for.body1816
  %1579 = load i32, ptr %_x1821, align 4, !tbaa !8
  br label %cond.end1828

cond.false1827:                                   ; preds = %for.body1816
  %1580 = load i32, ptr %_y1822, align 4, !tbaa !8
  br label %cond.end1828

cond.end1828:                                     ; preds = %cond.false1827, %cond.true1826
  %cond1829 = phi i32 [ %1579, %cond.true1826 ], [ %1580, %cond.false1827 ]
  store i32 %cond1829, ptr %tmp1823, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1822) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1821) #5
  %1581 = load i32, ptr %tmp1823, align 4, !tbaa !8
  %add1830 = add nsw i32 %1581, 1
  store i32 %add1830, ptr %j2, align 4, !tbaa !8
  %1582 = load i32, ptr %k2, align 4, !tbaa !8
  %1583 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1831 = sub nsw i32 %1582, %1583
  store i32 %sub1831, ptr %i__3, align 4, !tbaa !8
  %1584 = load i32, ptr %j2, align 4, !tbaa !8
  %1585 = load i32, ptr %j1, align 4, !tbaa !8
  %sub1832 = sub nsw i32 %1584, %1585
  store i32 %sub1832, ptr %i__4, align 4, !tbaa !8
  %1586 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1587 = load i32, ptr %k1, align 4, !tbaa !8
  %1588 = load i32, ptr %j1, align 4, !tbaa !8
  %1589 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1833 = mul nsw i32 %1588, %1589
  %add1834 = add nsw i32 %1587, %mul1833
  %idxprom1835 = sext i32 %add1834 to i64
  %arrayidx1836 = getelementptr inbounds %struct.complex, ptr %1586, i64 %idxprom1835
  %1590 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %1591 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call1837 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx1836, ptr noundef %1590, ptr noundef %1591)
  store float %call1837, ptr %cnrm, align 4, !tbaa !10
  %1592 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1593 = load i32, ptr %k, align 4, !tbaa !8
  %1594 = load i32, ptr %j, align 4, !tbaa !8
  %1595 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1838 = mul nsw i32 %1594, %1595
  %add1839 = add nsw i32 %1593, %mul1838
  %idxprom1840 = sext i32 %add1839 to i64
  %arrayidx1841 = getelementptr inbounds float, ptr %1592, i64 %idxprom1840
  %1596 = load float, ptr %arrayidx1841, align 4, !tbaa !10
  store float %1596, ptr %r__1, align 4, !tbaa !10
  %1597 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1598 = load i32, ptr %k, align 4, !tbaa !8
  %1599 = load i32, ptr %l, align 4, !tbaa !8
  %1600 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1842 = mul nsw i32 %1599, %1600
  %add1843 = add nsw i32 %1598, %mul1842
  %idxprom1844 = sext i32 %add1843 to i64
  %arrayidx1845 = getelementptr inbounds float, ptr %1597, i64 %idxprom1844
  %1601 = load float, ptr %arrayidx1845, align 4, !tbaa !10
  store float %1601, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1846) #5
  %1602 = load float, ptr %r__1, align 4, !tbaa !10
  store float %1602, ptr %_x1846, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1847) #5
  %1603 = load float, ptr %r__2, align 4, !tbaa !10
  store float %1603, ptr %_y1847, align 4, !tbaa !10
  %1604 = load float, ptr %_x1846, align 4, !tbaa !10
  %1605 = load float, ptr %_y1847, align 4, !tbaa !10
  %cmp1849 = fcmp olt float %1604, %1605
  br i1 %cmp1849, label %cond.true1851, label %cond.false1852

cond.true1851:                                    ; preds = %cond.end1828
  %1606 = load float, ptr %_x1846, align 4, !tbaa !10
  br label %cond.end1853

cond.false1852:                                   ; preds = %cond.end1828
  %1607 = load float, ptr %_y1847, align 4, !tbaa !10
  br label %cond.end1853

cond.end1853:                                     ; preds = %cond.false1852, %cond.true1851
  %cond1854 = phi float [ %1606, %cond.true1851 ], [ %1607, %cond.false1852 ]
  store float %cond1854, ptr %tmp1848, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1847) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1846) #5
  %1608 = load float, ptr %tmp1848, align 4, !tbaa !10
  store float %1608, ptr %scamin, align 4, !tbaa !10
  %1609 = load float, ptr %scamin, align 4, !tbaa !10
  %1610 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1611 = load i32, ptr %k, align 4, !tbaa !8
  %1612 = load i32, ptr %j, align 4, !tbaa !8
  %1613 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1855 = mul nsw i32 %1612, %1613
  %add1856 = add nsw i32 %1611, %mul1855
  %idxprom1857 = sext i32 %add1856 to i64
  %arrayidx1858 = getelementptr inbounds float, ptr %1610, i64 %idxprom1857
  %1614 = load float, ptr %arrayidx1858, align 4, !tbaa !10
  %div1859 = fdiv float %1609, %1614
  %1615 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul1860 = fmul float %1615, %div1859
  store float %mul1860, ptr %cnrm, align 4, !tbaa !10
  %1616 = load float, ptr %scamin, align 4, !tbaa !10
  %1617 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1618 = load i32, ptr %k, align 4, !tbaa !8
  %1619 = load i32, ptr %l, align 4, !tbaa !8
  %1620 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1861 = mul nsw i32 %1619, %1620
  %add1862 = add nsw i32 %1618, %mul1861
  %idxprom1863 = sext i32 %add1862 to i64
  %arrayidx1864 = getelementptr inbounds float, ptr %1617, i64 %idxprom1863
  %1621 = load float, ptr %arrayidx1864, align 4, !tbaa !10
  %div1865 = fdiv float %1616, %1621
  %1622 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul1866 = fmul float %1622, %div1865
  store float %mul1866, ptr %xnrm, align 4, !tbaa !10
  %1623 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1624 = load i32, ptr %l, align 4, !tbaa !8
  %1625 = load i32, ptr %bwrk, align 4, !tbaa !8
  %1626 = load i32, ptr %j, align 4, !tbaa !8
  %add1867 = add nsw i32 %1625, %1626
  %1627 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1868 = mul nsw i32 %add1867, %1627
  %add1869 = add nsw i32 %1624, %mul1868
  %idxprom1870 = sext i32 %add1869 to i64
  %arrayidx1871 = getelementptr inbounds float, ptr %1623, i64 %idxprom1870
  %1628 = load float, ptr %arrayidx1871, align 4, !tbaa !10
  store float %1628, ptr %bnrm, align 4, !tbaa !10
  %call1872 = call float @slarmm_(ptr noundef %bnrm, ptr noundef %xnrm, ptr noundef %cnrm)
  store float %call1872, ptr %scaloc, align 4, !tbaa !10
  %1629 = load float, ptr %scaloc, align 4, !tbaa !10
  %1630 = load float, ptr %scamin, align 4, !tbaa !10
  %mul1873 = fmul float %1629, %1630
  %cmp1874 = fcmp oeq float %mul1873, 0.000000e+00
  br i1 %cmp1874, label %if.then1876, label %if.end1936

if.then1876:                                      ; preds = %cond.end1853
  %1631 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1877 = fpext float %1631 to double
  %call1878 = call double @frexp(double noundef %conv1877, ptr noundef %temp) #5
  %1632 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1879 = sitofp i32 %1632 to double
  store double %conv1879, ptr %d__1, align 8, !tbaa !22
  %call1880 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1633 = load float, ptr %buf, align 4, !tbaa !10
  %conv1881 = fpext float %1633 to double
  %mul1882 = fmul double %conv1881, %call1880
  %conv1883 = fptrunc double %mul1882 to float
  store float %conv1883, ptr %buf, align 4, !tbaa !10
  %1634 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %1634, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %jj, align 4, !tbaa !8
  br label %for.cond1884

for.cond1884:                                     ; preds = %for.inc1919, %if.then1876
  %1635 = load i32, ptr %jj, align 4, !tbaa !8
  %1636 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1885 = icmp sle i32 %1635, %1636
  br i1 %cmp1885, label %for.body1887, label %for.end1921

for.body1887:                                     ; preds = %for.cond1884
  %1637 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %1637, ptr %i__4, align 4, !tbaa !8
  store i32 1, ptr %ll, align 4, !tbaa !8
  br label %for.cond1888

for.cond1888:                                     ; preds = %for.inc1916, %for.body1887
  %1638 = load i32, ptr %ll, align 4, !tbaa !8
  %1639 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1889 = icmp sle i32 %1638, %1639
  br i1 %cmp1889, label %for.body1891, label %for.end1918

for.body1891:                                     ; preds = %for.cond1888
  %1640 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1892 = fpext float %1640 to double
  %call1893 = call double @frexp(double noundef %conv1892, ptr noundef %temp) #5
  %1641 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1894 = sitofp i32 %1641 to double
  store double %conv1894, ptr %d__1, align 8, !tbaa !22
  %1642 = load float, ptr %bignum, align 4, !tbaa !10
  store float %1642, ptr %r__1, align 4, !tbaa !10
  %1643 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1644 = load i32, ptr %ll, align 4, !tbaa !8
  %1645 = load i32, ptr %jj, align 4, !tbaa !8
  %1646 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1895 = mul nsw i32 %1645, %1646
  %add1896 = add nsw i32 %1644, %mul1895
  %idxprom1897 = sext i32 %add1896 to i64
  %arrayidx1898 = getelementptr inbounds float, ptr %1643, i64 %idxprom1897
  %1647 = load float, ptr %arrayidx1898, align 4, !tbaa !10
  %conv1899 = fpext float %1647 to double
  %call1900 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %div1901 = fdiv double %conv1899, %call1900
  %conv1902 = fptrunc double %div1901 to float
  store float %conv1902, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1903) #5
  %1648 = load float, ptr %r__1, align 4, !tbaa !10
  store float %1648, ptr %_x1903, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1904) #5
  %1649 = load float, ptr %r__2, align 4, !tbaa !10
  store float %1649, ptr %_y1904, align 4, !tbaa !10
  %1650 = load float, ptr %_x1903, align 4, !tbaa !10
  %1651 = load float, ptr %_y1904, align 4, !tbaa !10
  %cmp1906 = fcmp olt float %1650, %1651
  br i1 %cmp1906, label %cond.true1908, label %cond.false1909

cond.true1908:                                    ; preds = %for.body1891
  %1652 = load float, ptr %_x1903, align 4, !tbaa !10
  br label %cond.end1910

cond.false1909:                                   ; preds = %for.body1891
  %1653 = load float, ptr %_y1904, align 4, !tbaa !10
  br label %cond.end1910

cond.end1910:                                     ; preds = %cond.false1909, %cond.true1908
  %cond1911 = phi float [ %1652, %cond.true1908 ], [ %1653, %cond.false1909 ]
  store float %cond1911, ptr %tmp1905, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1904) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1903) #5
  %1654 = load float, ptr %tmp1905, align 4, !tbaa !10
  %1655 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1656 = load i32, ptr %ll, align 4, !tbaa !8
  %1657 = load i32, ptr %jj, align 4, !tbaa !8
  %1658 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1912 = mul nsw i32 %1657, %1658
  %add1913 = add nsw i32 %1656, %mul1912
  %idxprom1914 = sext i32 %add1913 to i64
  %arrayidx1915 = getelementptr inbounds float, ptr %1655, i64 %idxprom1914
  store float %1654, ptr %arrayidx1915, align 4, !tbaa !10
  br label %for.inc1916

for.inc1916:                                      ; preds = %cond.end1910
  %1659 = load i32, ptr %ll, align 4, !tbaa !8
  %inc1917 = add nsw i32 %1659, 1
  store i32 %inc1917, ptr %ll, align 4, !tbaa !8
  br label %for.cond1888, !llvm.loop !59

for.end1918:                                      ; preds = %for.cond1888
  br label %for.inc1919

for.inc1919:                                      ; preds = %for.end1918
  %1660 = load i32, ptr %jj, align 4, !tbaa !8
  %inc1920 = add nsw i32 %1660, 1
  store i32 %inc1920, ptr %jj, align 4, !tbaa !8
  br label %for.cond1884, !llvm.loop !60

for.end1921:                                      ; preds = %for.cond1884
  %1661 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1922 = fpext float %1661 to double
  %call1923 = call double @frexp(double noundef %conv1922, ptr noundef %temp) #5
  %1662 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1924 = sitofp i32 %1662 to double
  store double %conv1924, ptr %d__1, align 8, !tbaa !22
  %call1925 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1663 = load float, ptr %scamin, align 4, !tbaa !10
  %conv1926 = fpext float %1663 to double
  %div1927 = fdiv double %conv1926, %call1925
  %conv1928 = fptrunc double %div1927 to float
  store float %conv1928, ptr %scamin, align 4, !tbaa !10
  %1664 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1929 = fpext float %1664 to double
  %call1930 = call double @frexp(double noundef %conv1929, ptr noundef %temp) #5
  %1665 = load i32, ptr %temp, align 4, !tbaa !8
  %conv1931 = sitofp i32 %1665 to double
  store double %conv1931, ptr %d__1, align 8, !tbaa !22
  %call1932 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1666 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv1933 = fpext float %1666 to double
  %div1934 = fdiv double %conv1933, %call1932
  %conv1935 = fptrunc double %div1934 to float
  store float %conv1935, ptr %scaloc, align 4, !tbaa !10
  br label %if.end1936

if.end1936:                                       ; preds = %for.end1921, %cond.end1853
  %1667 = load float, ptr %scaloc, align 4, !tbaa !10
  %1668 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul1937 = fmul float %1668, %1667
  store float %mul1937, ptr %cnrm, align 4, !tbaa !10
  %1669 = load float, ptr %scaloc, align 4, !tbaa !10
  %1670 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul1938 = fmul float %1670, %1669
  store float %mul1938, ptr %xnrm, align 4, !tbaa !10
  %1671 = load float, ptr %scamin, align 4, !tbaa !10
  %1672 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1673 = load i32, ptr %k, align 4, !tbaa !8
  %1674 = load i32, ptr %l, align 4, !tbaa !8
  %1675 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1939 = mul nsw i32 %1674, %1675
  %add1940 = add nsw i32 %1673, %mul1939
  %idxprom1941 = sext i32 %add1940 to i64
  %arrayidx1942 = getelementptr inbounds float, ptr %1672, i64 %idxprom1941
  %1676 = load float, ptr %arrayidx1942, align 4, !tbaa !10
  %div1943 = fdiv float %1671, %1676
  %1677 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1944 = fmul float %div1943, %1677
  store float %mul1944, ptr %scal, align 4, !tbaa !10
  %1678 = load float, ptr %scal, align 4, !tbaa !10
  %cmp1945 = fcmp une float %1678, 1.000000e+00
  br i1 %cmp1945, label %if.then1947, label %if.end1962

if.then1947:                                      ; preds = %if.end1936
  %1679 = load i32, ptr %l2, align 4, !tbaa !8
  %sub1948 = sub nsw i32 %1679, 1
  store i32 %sub1948, ptr %i__3, align 4, !tbaa !8
  %1680 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %1680, ptr %ll, align 4, !tbaa !8
  br label %for.cond1949

for.cond1949:                                     ; preds = %for.inc1959, %if.then1947
  %1681 = load i32, ptr %ll, align 4, !tbaa !8
  %1682 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1950 = icmp sle i32 %1681, %1682
  br i1 %cmp1950, label %for.body1952, label %for.end1961

for.body1952:                                     ; preds = %for.cond1949
  %1683 = load i32, ptr %k2, align 4, !tbaa !8
  %1684 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1953 = sub nsw i32 %1683, %1684
  store i32 %sub1953, ptr %i__4, align 4, !tbaa !8
  %1685 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1686 = load i32, ptr %k1, align 4, !tbaa !8
  %1687 = load i32, ptr %ll, align 4, !tbaa !8
  %1688 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1954 = mul nsw i32 %1687, %1688
  %add1955 = add nsw i32 %1686, %mul1954
  %idxprom1956 = sext i32 %add1955 to i64
  %arrayidx1957 = getelementptr inbounds %struct.complex, ptr %1685, i64 %idxprom1956
  %call1958 = call i32 @csscal_(ptr noundef %i__4, ptr noundef %scal, ptr noundef %arrayidx1957, ptr noundef @c__1)
  br label %for.inc1959

for.inc1959:                                      ; preds = %for.body1952
  %1689 = load i32, ptr %ll, align 4, !tbaa !8
  %inc1960 = add nsw i32 %1689, 1
  store i32 %inc1960, ptr %ll, align 4, !tbaa !8
  br label %for.cond1949, !llvm.loop !61

for.end1961:                                      ; preds = %for.cond1949
  br label %if.end1962

if.end1962:                                       ; preds = %for.end1961, %if.end1936
  %1690 = load float, ptr %scamin, align 4, !tbaa !10
  %1691 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1692 = load i32, ptr %k, align 4, !tbaa !8
  %1693 = load i32, ptr %j, align 4, !tbaa !8
  %1694 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1963 = mul nsw i32 %1693, %1694
  %add1964 = add nsw i32 %1692, %mul1963
  %idxprom1965 = sext i32 %add1964 to i64
  %arrayidx1966 = getelementptr inbounds float, ptr %1691, i64 %idxprom1965
  %1695 = load float, ptr %arrayidx1966, align 4, !tbaa !10
  %div1967 = fdiv float %1690, %1695
  %1696 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1968 = fmul float %div1967, %1696
  store float %mul1968, ptr %scal, align 4, !tbaa !10
  %1697 = load float, ptr %scal, align 4, !tbaa !10
  %cmp1969 = fcmp une float %1697, 1.000000e+00
  br i1 %cmp1969, label %if.then1971, label %if.end1986

if.then1971:                                      ; preds = %if.end1962
  %1698 = load i32, ptr %j2, align 4, !tbaa !8
  %sub1972 = sub nsw i32 %1698, 1
  store i32 %sub1972, ptr %i__3, align 4, !tbaa !8
  %1699 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %1699, ptr %jj, align 4, !tbaa !8
  br label %for.cond1973

for.cond1973:                                     ; preds = %for.inc1983, %if.then1971
  %1700 = load i32, ptr %jj, align 4, !tbaa !8
  %1701 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1974 = icmp sle i32 %1700, %1701
  br i1 %cmp1974, label %for.body1976, label %for.end1985

for.body1976:                                     ; preds = %for.cond1973
  %1702 = load i32, ptr %k2, align 4, !tbaa !8
  %1703 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1977 = sub nsw i32 %1702, %1703
  store i32 %sub1977, ptr %i__4, align 4, !tbaa !8
  %1704 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1705 = load i32, ptr %k1, align 4, !tbaa !8
  %1706 = load i32, ptr %jj, align 4, !tbaa !8
  %1707 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul1978 = mul nsw i32 %1706, %1707
  %add1979 = add nsw i32 %1705, %mul1978
  %idxprom1980 = sext i32 %add1979 to i64
  %arrayidx1981 = getelementptr inbounds %struct.complex, ptr %1704, i64 %idxprom1980
  %call1982 = call i32 @csscal_(ptr noundef %i__4, ptr noundef %scal, ptr noundef %arrayidx1981, ptr noundef @c__1)
  br label %for.inc1983

for.inc1983:                                      ; preds = %for.body1976
  %1708 = load i32, ptr %jj, align 4, !tbaa !8
  %inc1984 = add nsw i32 %1708, 1
  store i32 %inc1984, ptr %jj, align 4, !tbaa !8
  br label %for.cond1973, !llvm.loop !62

for.end1985:                                      ; preds = %for.cond1973
  br label %if.end1986

if.end1986:                                       ; preds = %for.end1985, %if.end1962
  %1709 = load float, ptr %scamin, align 4, !tbaa !10
  %1710 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1987 = fmul float %1709, %1710
  %1711 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1712 = load i32, ptr %k, align 4, !tbaa !8
  %1713 = load i32, ptr %l, align 4, !tbaa !8
  %1714 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1988 = mul nsw i32 %1713, %1714
  %add1989 = add nsw i32 %1712, %mul1988
  %idxprom1990 = sext i32 %add1989 to i64
  %arrayidx1991 = getelementptr inbounds float, ptr %1711, i64 %idxprom1990
  store float %mul1987, ptr %arrayidx1991, align 4, !tbaa !10
  %1715 = load float, ptr %scamin, align 4, !tbaa !10
  %1716 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul1992 = fmul float %1715, %1716
  %1717 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1718 = load i32, ptr %k, align 4, !tbaa !8
  %1719 = load i32, ptr %j, align 4, !tbaa !8
  %1720 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul1993 = mul nsw i32 %1719, %1720
  %add1994 = add nsw i32 %1718, %mul1993
  %idxprom1995 = sext i32 %add1994 to i64
  %arrayidx1996 = getelementptr inbounds float, ptr %1717, i64 %idxprom1995
  store float %mul1992, ptr %arrayidx1996, align 4, !tbaa !10
  %1721 = load i32, ptr %k2, align 4, !tbaa !8
  %1722 = load i32, ptr %k1, align 4, !tbaa !8
  %sub1997 = sub nsw i32 %1721, %1722
  store i32 %sub1997, ptr %i__3, align 4, !tbaa !8
  %1723 = load i32, ptr %j2, align 4, !tbaa !8
  %1724 = load i32, ptr %j1, align 4, !tbaa !8
  %sub1998 = sub nsw i32 %1723, %1724
  store i32 %sub1998, ptr %i__4, align 4, !tbaa !8
  %1725 = load i32, ptr %l2, align 4, !tbaa !8
  %1726 = load i32, ptr %l1, align 4, !tbaa !8
  %sub1999 = sub nsw i32 %1725, %1726
  store i32 %sub1999, ptr %i__5, align 4, !tbaa !8
  %r2000 = getelementptr inbounds %struct.complex, ptr %csgn, i32 0, i32 0
  %1727 = load float, ptr %r2000, align 4, !tbaa !19
  %fneg2001 = fneg float %1727
  %r2002 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %fneg2001, ptr %r2002, align 4, !tbaa !19
  %i2003 = getelementptr inbounds %struct.complex, ptr %csgn, i32 0, i32 1
  %1728 = load float, ptr %i2003, align 4, !tbaa !21
  %fneg2004 = fneg float %1728
  %i2005 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %fneg2004, ptr %i2005, align 4, !tbaa !21
  %1729 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1730 = load i32, ptr %k1, align 4, !tbaa !8
  %1731 = load i32, ptr %l1, align 4, !tbaa !8
  %1732 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2006 = mul nsw i32 %1731, %1732
  %add2007 = add nsw i32 %1730, %mul2006
  %idxprom2008 = sext i32 %add2007 to i64
  %arrayidx2009 = getelementptr inbounds %struct.complex, ptr %1729, i64 %idxprom2008
  %1733 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %1734 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1735 = load i32, ptr %j1, align 4, !tbaa !8
  %1736 = load i32, ptr %l1, align 4, !tbaa !8
  %1737 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul2010 = mul nsw i32 %1736, %1737
  %add2011 = add nsw i32 %1735, %mul2010
  %idxprom2012 = sext i32 %add2011 to i64
  %arrayidx2013 = getelementptr inbounds %struct.complex, ptr %1734, i64 %idxprom2012
  %1738 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %1739 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1740 = load i32, ptr %k1, align 4, !tbaa !8
  %1741 = load i32, ptr %j1, align 4, !tbaa !8
  %1742 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2014 = mul nsw i32 %1741, %1742
  %add2015 = add nsw i32 %1740, %mul2014
  %idxprom2016 = sext i32 %add2015 to i64
  %arrayidx2017 = getelementptr inbounds %struct.complex, ptr %1739, i64 %idxprom2016
  %1743 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call2018 = call i32 @cgemm_(ptr noundef @.str, ptr noundef @.str.3, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %i__5, ptr noundef %q__1, ptr noundef %arrayidx2009, ptr noundef %1733, ptr noundef %arrayidx2013, ptr noundef %1738, ptr noundef @c_b1, ptr noundef %arrayidx2017, ptr noundef %1743)
  br label %for.inc2019

for.inc2019:                                      ; preds = %if.end1986
  %1744 = load i32, ptr %j, align 4, !tbaa !8
  %inc2020 = add nsw i32 %1744, 1
  store i32 %inc2020, ptr %j, align 4, !tbaa !8
  br label %for.cond1813, !llvm.loop !63

for.end2021:                                      ; preds = %for.cond1813
  br label %for.inc2022

for.inc2022:                                      ; preds = %for.end2021
  %1745 = load i32, ptr %l, align 4, !tbaa !8
  %dec2023 = add nsw i32 %1745, -1
  store i32 %dec2023, ptr %l, align 4, !tbaa !8
  br label %for.cond1489, !llvm.loop !64

for.end2024:                                      ; preds = %for.cond1489
  br label %for.inc2025

for.inc2025:                                      ; preds = %for.end2024
  %1746 = load i32, ptr %k, align 4, !tbaa !8
  %inc2026 = add nsw i32 %1746, 1
  store i32 %inc2026, ptr %k, align 4, !tbaa !8
  br label %for.cond1471, !llvm.loop !65

for.end2027:                                      ; preds = %for.cond1471
  br label %if.end2591

if.else2028:                                      ; preds = %land.lhs.true1468, %if.else1466
  %1747 = load i32, ptr %notrna, align 4, !tbaa !8
  %tobool2029 = icmp ne i32 %1747, 0
  br i1 %tobool2029, label %land.lhs.true2030, label %if.end2590

land.lhs.true2030:                                ; preds = %if.else2028
  %1748 = load i32, ptr %notrnb, align 4, !tbaa !8
  %tobool2031 = icmp ne i32 %1748, 0
  br i1 %tobool2031, label %if.end2590, label %if.then2032

if.then2032:                                      ; preds = %land.lhs.true2030
  %1749 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %1749, ptr %k, align 4, !tbaa !8
  br label %for.cond2033

for.cond2033:                                     ; preds = %for.inc2587, %if.then2032
  %1750 = load i32, ptr %k, align 4, !tbaa !8
  %cmp2034 = icmp sge i32 %1750, 1
  br i1 %cmp2034, label %for.body2036, label %for.end2589

for.body2036:                                     ; preds = %for.cond2033
  %1751 = load i32, ptr %k, align 4, !tbaa !8
  %sub2037 = sub nsw i32 %1751, 1
  %1752 = load i32, ptr %nb, align 4, !tbaa !8
  %mul2038 = mul nsw i32 %sub2037, %1752
  %add2039 = add nsw i32 %mul2038, 1
  store i32 %add2039, ptr %k1, align 4, !tbaa !8
  %1753 = load i32, ptr %k, align 4, !tbaa !8
  %1754 = load i32, ptr %nb, align 4, !tbaa !8
  %mul2040 = mul nsw i32 %1753, %1754
  store i32 %mul2040, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2041) #5
  %1755 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %1755, ptr %_x2041, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2042) #5
  %1756 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1757 = load i32, ptr %1756, align 4, !tbaa !8
  store i32 %1757, ptr %_y2042, align 4, !tbaa !8
  %1758 = load i32, ptr %_x2041, align 4, !tbaa !8
  %1759 = load i32, ptr %_y2042, align 4, !tbaa !8
  %cmp2044 = icmp slt i32 %1758, %1759
  br i1 %cmp2044, label %cond.true2046, label %cond.false2047

cond.true2046:                                    ; preds = %for.body2036
  %1760 = load i32, ptr %_x2041, align 4, !tbaa !8
  br label %cond.end2048

cond.false2047:                                   ; preds = %for.body2036
  %1761 = load i32, ptr %_y2042, align 4, !tbaa !8
  br label %cond.end2048

cond.end2048:                                     ; preds = %cond.false2047, %cond.true2046
  %cond2049 = phi i32 [ %1760, %cond.true2046 ], [ %1761, %cond.false2047 ]
  store i32 %cond2049, ptr %tmp2043, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2042) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2041) #5
  %1762 = load i32, ptr %tmp2043, align 4, !tbaa !8
  %add2050 = add nsw i32 %1762, 1
  store i32 %add2050, ptr %k2, align 4, !tbaa !8
  %1763 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %1763, ptr %l, align 4, !tbaa !8
  br label %for.cond2051

for.cond2051:                                     ; preds = %for.inc2584, %cond.end2048
  %1764 = load i32, ptr %l, align 4, !tbaa !8
  %cmp2052 = icmp sge i32 %1764, 1
  br i1 %cmp2052, label %for.body2054, label %for.end2586

for.body2054:                                     ; preds = %for.cond2051
  %1765 = load i32, ptr %l, align 4, !tbaa !8
  %sub2055 = sub nsw i32 %1765, 1
  %1766 = load i32, ptr %nb, align 4, !tbaa !8
  %mul2056 = mul nsw i32 %sub2055, %1766
  %add2057 = add nsw i32 %mul2056, 1
  store i32 %add2057, ptr %l1, align 4, !tbaa !8
  %1767 = load i32, ptr %l, align 4, !tbaa !8
  %1768 = load i32, ptr %nb, align 4, !tbaa !8
  %mul2058 = mul nsw i32 %1767, %1768
  store i32 %mul2058, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2059) #5
  %1769 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %1769, ptr %_x2059, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2060) #5
  %1770 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1771 = load i32, ptr %1770, align 4, !tbaa !8
  store i32 %1771, ptr %_y2060, align 4, !tbaa !8
  %1772 = load i32, ptr %_x2059, align 4, !tbaa !8
  %1773 = load i32, ptr %_y2060, align 4, !tbaa !8
  %cmp2062 = icmp slt i32 %1772, %1773
  br i1 %cmp2062, label %cond.true2064, label %cond.false2065

cond.true2064:                                    ; preds = %for.body2054
  %1774 = load i32, ptr %_x2059, align 4, !tbaa !8
  br label %cond.end2066

cond.false2065:                                   ; preds = %for.body2054
  %1775 = load i32, ptr %_y2060, align 4, !tbaa !8
  br label %cond.end2066

cond.end2066:                                     ; preds = %cond.false2065, %cond.true2064
  %cond2067 = phi i32 [ %1774, %cond.true2064 ], [ %1775, %cond.false2065 ]
  store i32 %cond2067, ptr %tmp2061, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2060) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2059) #5
  %1776 = load i32, ptr %tmp2061, align 4, !tbaa !8
  %add2068 = add nsw i32 %1776, 1
  store i32 %add2068, ptr %l2, align 4, !tbaa !8
  %1777 = load i32, ptr %k2, align 4, !tbaa !8
  %1778 = load i32, ptr %k1, align 4, !tbaa !8
  %sub2069 = sub nsw i32 %1777, %1778
  store i32 %sub2069, ptr %i__1, align 4, !tbaa !8
  %1779 = load i32, ptr %l2, align 4, !tbaa !8
  %1780 = load i32, ptr %l1, align 4, !tbaa !8
  %sub2070 = sub nsw i32 %1779, %1780
  store i32 %sub2070, ptr %i__2, align 4, !tbaa !8
  %1781 = load ptr, ptr %trana.addr, align 8, !tbaa !4
  %1782 = load ptr, ptr %tranb.addr, align 8, !tbaa !4
  %1783 = load ptr, ptr %isgn.addr, align 8, !tbaa !4
  %1784 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1785 = load i32, ptr %k1, align 4, !tbaa !8
  %1786 = load i32, ptr %k1, align 4, !tbaa !8
  %1787 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul2071 = mul nsw i32 %1786, %1787
  %add2072 = add nsw i32 %1785, %mul2071
  %idxprom2073 = sext i32 %add2072 to i64
  %arrayidx2074 = getelementptr inbounds %struct.complex, ptr %1784, i64 %idxprom2073
  %1788 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1789 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1790 = load i32, ptr %l1, align 4, !tbaa !8
  %1791 = load i32, ptr %l1, align 4, !tbaa !8
  %1792 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul2075 = mul nsw i32 %1791, %1792
  %add2076 = add nsw i32 %1790, %mul2075
  %idxprom2077 = sext i32 %add2076 to i64
  %arrayidx2078 = getelementptr inbounds %struct.complex, ptr %1789, i64 %idxprom2077
  %1793 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %1794 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1795 = load i32, ptr %k1, align 4, !tbaa !8
  %1796 = load i32, ptr %l1, align 4, !tbaa !8
  %1797 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2079 = mul nsw i32 %1796, %1797
  %add2080 = add nsw i32 %1795, %mul2079
  %idxprom2081 = sext i32 %add2080 to i64
  %arrayidx2082 = getelementptr inbounds %struct.complex, ptr %1794, i64 %idxprom2081
  %1798 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call2083 = call i32 @ctrsyl_(ptr noundef %1781, ptr noundef %1782, ptr noundef %1783, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx2074, ptr noundef %1788, ptr noundef %arrayidx2078, ptr noundef %1793, ptr noundef %arrayidx2082, ptr noundef %1798, ptr noundef %scaloc, ptr noundef %iinfo)
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2084) #5
  %1799 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %1800 = load i32, ptr %1799, align 4, !tbaa !8
  store i32 %1800, ptr %_x2084, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2085) #5
  %1801 = load i32, ptr %iinfo, align 4, !tbaa !8
  store i32 %1801, ptr %_y2085, align 4, !tbaa !8
  %1802 = load i32, ptr %_x2084, align 4, !tbaa !8
  %1803 = load i32, ptr %_y2085, align 4, !tbaa !8
  %cmp2087 = icmp sgt i32 %1802, %1803
  br i1 %cmp2087, label %cond.true2089, label %cond.false2090

cond.true2089:                                    ; preds = %cond.end2066
  %1804 = load i32, ptr %_x2084, align 4, !tbaa !8
  br label %cond.end2091

cond.false2090:                                   ; preds = %cond.end2066
  %1805 = load i32, ptr %_y2085, align 4, !tbaa !8
  br label %cond.end2091

cond.end2091:                                     ; preds = %cond.false2090, %cond.true2089
  %cond2092 = phi i32 [ %1804, %cond.true2089 ], [ %1805, %cond.false2090 ]
  store i32 %cond2092, ptr %tmp2086, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2085) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2084) #5
  %1806 = load i32, ptr %tmp2086, align 4, !tbaa !8
  %1807 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %1806, ptr %1807, align 4, !tbaa !8
  %1808 = load float, ptr %scaloc, align 4, !tbaa !10
  %1809 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1810 = load i32, ptr %k, align 4, !tbaa !8
  %1811 = load i32, ptr %l, align 4, !tbaa !8
  %1812 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2093 = mul nsw i32 %1811, %1812
  %add2094 = add nsw i32 %1810, %mul2093
  %idxprom2095 = sext i32 %add2094 to i64
  %arrayidx2096 = getelementptr inbounds float, ptr %1809, i64 %idxprom2095
  %1813 = load float, ptr %arrayidx2096, align 4, !tbaa !10
  %mul2097 = fmul float %1808, %1813
  %cmp2098 = fcmp oeq float %mul2097, 0.000000e+00
  br i1 %cmp2098, label %if.then2100, label %if.end2151

if.then2100:                                      ; preds = %cond.end2091
  %1814 = load float, ptr %scaloc, align 4, !tbaa !10
  %cmp2101 = fcmp oeq float %1814, 0.000000e+00
  br i1 %cmp2101, label %if.then2103, label %if.else2104

if.then2103:                                      ; preds = %if.then2100
  store float 0.000000e+00, ptr %buf, align 4, !tbaa !10
  br label %if.end2112

if.else2104:                                      ; preds = %if.then2100
  %1815 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv2105 = fpext float %1815 to double
  %call2106 = call double @frexp(double noundef %conv2105, ptr noundef %temp) #5
  %1816 = load i32, ptr %temp, align 4, !tbaa !8
  %conv2107 = sitofp i32 %1816 to double
  store double %conv2107, ptr %d__1, align 8, !tbaa !22
  %call2108 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1817 = load float, ptr %buf, align 4, !tbaa !10
  %conv2109 = fpext float %1817 to double
  %mul2110 = fmul double %conv2109, %call2108
  %conv2111 = fptrunc double %mul2110 to float
  store float %conv2111, ptr %buf, align 4, !tbaa !10
  br label %if.end2112

if.end2112:                                       ; preds = %if.else2104, %if.then2103
  %1818 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %1818, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %jj, align 4, !tbaa !8
  br label %for.cond2113

for.cond2113:                                     ; preds = %for.inc2148, %if.end2112
  %1819 = load i32, ptr %jj, align 4, !tbaa !8
  %1820 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp2114 = icmp sle i32 %1819, %1820
  br i1 %cmp2114, label %for.body2116, label %for.end2150

for.body2116:                                     ; preds = %for.cond2113
  %1821 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %1821, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %ll, align 4, !tbaa !8
  br label %for.cond2117

for.cond2117:                                     ; preds = %for.inc2145, %for.body2116
  %1822 = load i32, ptr %ll, align 4, !tbaa !8
  %1823 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp2118 = icmp sle i32 %1822, %1823
  br i1 %cmp2118, label %for.body2120, label %for.end2147

for.body2120:                                     ; preds = %for.cond2117
  %1824 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv2121 = fpext float %1824 to double
  %call2122 = call double @frexp(double noundef %conv2121, ptr noundef %temp) #5
  %1825 = load i32, ptr %temp, align 4, !tbaa !8
  %conv2123 = sitofp i32 %1825 to double
  store double %conv2123, ptr %d__1, align 8, !tbaa !22
  %1826 = load float, ptr %bignum, align 4, !tbaa !10
  store float %1826, ptr %r__1, align 4, !tbaa !10
  %1827 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1828 = load i32, ptr %ll, align 4, !tbaa !8
  %1829 = load i32, ptr %jj, align 4, !tbaa !8
  %1830 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2124 = mul nsw i32 %1829, %1830
  %add2125 = add nsw i32 %1828, %mul2124
  %idxprom2126 = sext i32 %add2125 to i64
  %arrayidx2127 = getelementptr inbounds float, ptr %1827, i64 %idxprom2126
  %1831 = load float, ptr %arrayidx2127, align 4, !tbaa !10
  %conv2128 = fpext float %1831 to double
  %call2129 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %div2130 = fdiv double %conv2128, %call2129
  %conv2131 = fptrunc double %div2130 to float
  store float %conv2131, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2132) #5
  %1832 = load float, ptr %r__1, align 4, !tbaa !10
  store float %1832, ptr %_x2132, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2133) #5
  %1833 = load float, ptr %r__2, align 4, !tbaa !10
  store float %1833, ptr %_y2133, align 4, !tbaa !10
  %1834 = load float, ptr %_x2132, align 4, !tbaa !10
  %1835 = load float, ptr %_y2133, align 4, !tbaa !10
  %cmp2135 = fcmp olt float %1834, %1835
  br i1 %cmp2135, label %cond.true2137, label %cond.false2138

cond.true2137:                                    ; preds = %for.body2120
  %1836 = load float, ptr %_x2132, align 4, !tbaa !10
  br label %cond.end2139

cond.false2138:                                   ; preds = %for.body2120
  %1837 = load float, ptr %_y2133, align 4, !tbaa !10
  br label %cond.end2139

cond.end2139:                                     ; preds = %cond.false2138, %cond.true2137
  %cond2140 = phi float [ %1836, %cond.true2137 ], [ %1837, %cond.false2138 ]
  store float %cond2140, ptr %tmp2134, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2133) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2132) #5
  %1838 = load float, ptr %tmp2134, align 4, !tbaa !10
  %1839 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1840 = load i32, ptr %ll, align 4, !tbaa !8
  %1841 = load i32, ptr %jj, align 4, !tbaa !8
  %1842 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2141 = mul nsw i32 %1841, %1842
  %add2142 = add nsw i32 %1840, %mul2141
  %idxprom2143 = sext i32 %add2142 to i64
  %arrayidx2144 = getelementptr inbounds float, ptr %1839, i64 %idxprom2143
  store float %1838, ptr %arrayidx2144, align 4, !tbaa !10
  br label %for.inc2145

for.inc2145:                                      ; preds = %cond.end2139
  %1843 = load i32, ptr %ll, align 4, !tbaa !8
  %inc2146 = add nsw i32 %1843, 1
  store i32 %inc2146, ptr %ll, align 4, !tbaa !8
  br label %for.cond2117, !llvm.loop !66

for.end2147:                                      ; preds = %for.cond2117
  br label %for.inc2148

for.inc2148:                                      ; preds = %for.end2147
  %1844 = load i32, ptr %jj, align 4, !tbaa !8
  %inc2149 = add nsw i32 %1844, 1
  store i32 %inc2149, ptr %jj, align 4, !tbaa !8
  br label %for.cond2113, !llvm.loop !67

for.end2150:                                      ; preds = %for.cond2113
  br label %if.end2151

if.end2151:                                       ; preds = %for.end2150, %cond.end2091
  %1845 = load float, ptr %scaloc, align 4, !tbaa !10
  %1846 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1847 = load i32, ptr %k, align 4, !tbaa !8
  %1848 = load i32, ptr %l, align 4, !tbaa !8
  %1849 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2152 = mul nsw i32 %1848, %1849
  %add2153 = add nsw i32 %1847, %mul2152
  %idxprom2154 = sext i32 %add2153 to i64
  %arrayidx2155 = getelementptr inbounds float, ptr %1846, i64 %idxprom2154
  %1850 = load float, ptr %arrayidx2155, align 4, !tbaa !10
  %mul2156 = fmul float %1845, %1850
  %1851 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1852 = load i32, ptr %k, align 4, !tbaa !8
  %1853 = load i32, ptr %l, align 4, !tbaa !8
  %1854 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2157 = mul nsw i32 %1853, %1854
  %add2158 = add nsw i32 %1852, %mul2157
  %idxprom2159 = sext i32 %add2158 to i64
  %arrayidx2160 = getelementptr inbounds float, ptr %1851, i64 %idxprom2159
  store float %mul2156, ptr %arrayidx2160, align 4, !tbaa !10
  %1855 = load i32, ptr %k2, align 4, !tbaa !8
  %1856 = load i32, ptr %k1, align 4, !tbaa !8
  %sub2161 = sub nsw i32 %1855, %1856
  store i32 %sub2161, ptr %i__1, align 4, !tbaa !8
  %1857 = load i32, ptr %l2, align 4, !tbaa !8
  %1858 = load i32, ptr %l1, align 4, !tbaa !8
  %sub2162 = sub nsw i32 %1857, %1858
  store i32 %sub2162, ptr %i__2, align 4, !tbaa !8
  %1859 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1860 = load i32, ptr %k1, align 4, !tbaa !8
  %1861 = load i32, ptr %l1, align 4, !tbaa !8
  %1862 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2163 = mul nsw i32 %1861, %1862
  %add2164 = add nsw i32 %1860, %mul2163
  %idxprom2165 = sext i32 %add2164 to i64
  %arrayidx2166 = getelementptr inbounds %struct.complex, ptr %1859, i64 %idxprom2165
  %1863 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %1864 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call2167 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx2166, ptr noundef %1863, ptr noundef %1864)
  store float %call2167, ptr %xnrm, align 4, !tbaa !10
  %1865 = load i32, ptr %k, align 4, !tbaa !8
  %sub2168 = sub nsw i32 %1865, 1
  store i32 %sub2168, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond2169

for.cond2169:                                     ; preds = %for.inc2371, %if.end2151
  %1866 = load i32, ptr %i__, align 4, !tbaa !8
  %1867 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp2170 = icmp sle i32 %1866, %1867
  br i1 %cmp2170, label %for.body2172, label %for.end2373

for.body2172:                                     ; preds = %for.cond2169
  %1868 = load i32, ptr %i__, align 4, !tbaa !8
  %sub2173 = sub nsw i32 %1868, 1
  %1869 = load i32, ptr %nb, align 4, !tbaa !8
  %mul2174 = mul nsw i32 %sub2173, %1869
  %add2175 = add nsw i32 %mul2174, 1
  store i32 %add2175, ptr %i1, align 4, !tbaa !8
  %1870 = load i32, ptr %i__, align 4, !tbaa !8
  %1871 = load i32, ptr %nb, align 4, !tbaa !8
  %mul2176 = mul nsw i32 %1870, %1871
  store i32 %mul2176, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2177) #5
  %1872 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %1872, ptr %_x2177, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2178) #5
  %1873 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1874 = load i32, ptr %1873, align 4, !tbaa !8
  store i32 %1874, ptr %_y2178, align 4, !tbaa !8
  %1875 = load i32, ptr %_x2177, align 4, !tbaa !8
  %1876 = load i32, ptr %_y2178, align 4, !tbaa !8
  %cmp2180 = icmp slt i32 %1875, %1876
  br i1 %cmp2180, label %cond.true2182, label %cond.false2183

cond.true2182:                                    ; preds = %for.body2172
  %1877 = load i32, ptr %_x2177, align 4, !tbaa !8
  br label %cond.end2184

cond.false2183:                                   ; preds = %for.body2172
  %1878 = load i32, ptr %_y2178, align 4, !tbaa !8
  br label %cond.end2184

cond.end2184:                                     ; preds = %cond.false2183, %cond.true2182
  %cond2185 = phi i32 [ %1877, %cond.true2182 ], [ %1878, %cond.false2183 ]
  store i32 %cond2185, ptr %tmp2179, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2178) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2177) #5
  %1879 = load i32, ptr %tmp2179, align 4, !tbaa !8
  %add2186 = add nsw i32 %1879, 1
  store i32 %add2186, ptr %i2, align 4, !tbaa !8
  %1880 = load i32, ptr %i2, align 4, !tbaa !8
  %1881 = load i32, ptr %i1, align 4, !tbaa !8
  %sub2187 = sub nsw i32 %1880, %1881
  store i32 %sub2187, ptr %i__2, align 4, !tbaa !8
  %1882 = load i32, ptr %l2, align 4, !tbaa !8
  %1883 = load i32, ptr %l1, align 4, !tbaa !8
  %sub2188 = sub nsw i32 %1882, %1883
  store i32 %sub2188, ptr %i__3, align 4, !tbaa !8
  %1884 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1885 = load i32, ptr %i1, align 4, !tbaa !8
  %1886 = load i32, ptr %l1, align 4, !tbaa !8
  %1887 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2189 = mul nsw i32 %1886, %1887
  %add2190 = add nsw i32 %1885, %mul2189
  %idxprom2191 = sext i32 %add2190 to i64
  %arrayidx2192 = getelementptr inbounds %struct.complex, ptr %1884, i64 %idxprom2191
  %1888 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %1889 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call2193 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx2192, ptr noundef %1888, ptr noundef %1889)
  store float %call2193, ptr %cnrm, align 4, !tbaa !10
  %1890 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1891 = load i32, ptr %i__, align 4, !tbaa !8
  %1892 = load i32, ptr %l, align 4, !tbaa !8
  %1893 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2194 = mul nsw i32 %1892, %1893
  %add2195 = add nsw i32 %1891, %mul2194
  %idxprom2196 = sext i32 %add2195 to i64
  %arrayidx2197 = getelementptr inbounds float, ptr %1890, i64 %idxprom2196
  %1894 = load float, ptr %arrayidx2197, align 4, !tbaa !10
  store float %1894, ptr %r__1, align 4, !tbaa !10
  %1895 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1896 = load i32, ptr %k, align 4, !tbaa !8
  %1897 = load i32, ptr %l, align 4, !tbaa !8
  %1898 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2198 = mul nsw i32 %1897, %1898
  %add2199 = add nsw i32 %1896, %mul2198
  %idxprom2200 = sext i32 %add2199 to i64
  %arrayidx2201 = getelementptr inbounds float, ptr %1895, i64 %idxprom2200
  %1899 = load float, ptr %arrayidx2201, align 4, !tbaa !10
  store float %1899, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2202) #5
  %1900 = load float, ptr %r__1, align 4, !tbaa !10
  store float %1900, ptr %_x2202, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2203) #5
  %1901 = load float, ptr %r__2, align 4, !tbaa !10
  store float %1901, ptr %_y2203, align 4, !tbaa !10
  %1902 = load float, ptr %_x2202, align 4, !tbaa !10
  %1903 = load float, ptr %_y2203, align 4, !tbaa !10
  %cmp2205 = fcmp olt float %1902, %1903
  br i1 %cmp2205, label %cond.true2207, label %cond.false2208

cond.true2207:                                    ; preds = %cond.end2184
  %1904 = load float, ptr %_x2202, align 4, !tbaa !10
  br label %cond.end2209

cond.false2208:                                   ; preds = %cond.end2184
  %1905 = load float, ptr %_y2203, align 4, !tbaa !10
  br label %cond.end2209

cond.end2209:                                     ; preds = %cond.false2208, %cond.true2207
  %cond2210 = phi float [ %1904, %cond.true2207 ], [ %1905, %cond.false2208 ]
  store float %cond2210, ptr %tmp2204, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2203) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2202) #5
  %1906 = load float, ptr %tmp2204, align 4, !tbaa !10
  store float %1906, ptr %scamin, align 4, !tbaa !10
  %1907 = load float, ptr %scamin, align 4, !tbaa !10
  %1908 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1909 = load i32, ptr %i__, align 4, !tbaa !8
  %1910 = load i32, ptr %l, align 4, !tbaa !8
  %1911 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2211 = mul nsw i32 %1910, %1911
  %add2212 = add nsw i32 %1909, %mul2211
  %idxprom2213 = sext i32 %add2212 to i64
  %arrayidx2214 = getelementptr inbounds float, ptr %1908, i64 %idxprom2213
  %1912 = load float, ptr %arrayidx2214, align 4, !tbaa !10
  %div2215 = fdiv float %1907, %1912
  %1913 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul2216 = fmul float %1913, %div2215
  store float %mul2216, ptr %cnrm, align 4, !tbaa !10
  %1914 = load float, ptr %scamin, align 4, !tbaa !10
  %1915 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1916 = load i32, ptr %k, align 4, !tbaa !8
  %1917 = load i32, ptr %l, align 4, !tbaa !8
  %1918 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2217 = mul nsw i32 %1917, %1918
  %add2218 = add nsw i32 %1916, %mul2217
  %idxprom2219 = sext i32 %add2218 to i64
  %arrayidx2220 = getelementptr inbounds float, ptr %1915, i64 %idxprom2219
  %1919 = load float, ptr %arrayidx2220, align 4, !tbaa !10
  %div2221 = fdiv float %1914, %1919
  %1920 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul2222 = fmul float %1920, %div2221
  store float %mul2222, ptr %xnrm, align 4, !tbaa !10
  %1921 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1922 = load i32, ptr %i__, align 4, !tbaa !8
  %1923 = load i32, ptr %awrk, align 4, !tbaa !8
  %1924 = load i32, ptr %k, align 4, !tbaa !8
  %add2223 = add nsw i32 %1923, %1924
  %1925 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2224 = mul nsw i32 %add2223, %1925
  %add2225 = add nsw i32 %1922, %mul2224
  %idxprom2226 = sext i32 %add2225 to i64
  %arrayidx2227 = getelementptr inbounds float, ptr %1921, i64 %idxprom2226
  %1926 = load float, ptr %arrayidx2227, align 4, !tbaa !10
  store float %1926, ptr %anrm, align 4, !tbaa !10
  %call2228 = call float @slarmm_(ptr noundef %anrm, ptr noundef %xnrm, ptr noundef %cnrm)
  store float %call2228, ptr %scaloc, align 4, !tbaa !10
  %1927 = load float, ptr %scaloc, align 4, !tbaa !10
  %1928 = load float, ptr %scamin, align 4, !tbaa !10
  %mul2229 = fmul float %1927, %1928
  %cmp2230 = fcmp oeq float %mul2229, 0.000000e+00
  br i1 %cmp2230, label %if.then2232, label %if.end2292

if.then2232:                                      ; preds = %cond.end2209
  %1929 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv2233 = fpext float %1929 to double
  %call2234 = call double @frexp(double noundef %conv2233, ptr noundef %temp) #5
  %1930 = load i32, ptr %temp, align 4, !tbaa !8
  %conv2235 = sitofp i32 %1930 to double
  store double %conv2235, ptr %d__1, align 8, !tbaa !22
  %call2236 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1931 = load float, ptr %buf, align 4, !tbaa !10
  %conv2237 = fpext float %1931 to double
  %mul2238 = fmul double %conv2237, %call2236
  %conv2239 = fptrunc double %mul2238 to float
  store float %conv2239, ptr %buf, align 4, !tbaa !10
  %1932 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %1932, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %jj, align 4, !tbaa !8
  br label %for.cond2240

for.cond2240:                                     ; preds = %for.inc2275, %if.then2232
  %1933 = load i32, ptr %jj, align 4, !tbaa !8
  %1934 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp2241 = icmp sle i32 %1933, %1934
  br i1 %cmp2241, label %for.body2243, label %for.end2277

for.body2243:                                     ; preds = %for.cond2240
  %1935 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %1935, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %ll, align 4, !tbaa !8
  br label %for.cond2244

for.cond2244:                                     ; preds = %for.inc2272, %for.body2243
  %1936 = load i32, ptr %ll, align 4, !tbaa !8
  %1937 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2245 = icmp sle i32 %1936, %1937
  br i1 %cmp2245, label %for.body2247, label %for.end2274

for.body2247:                                     ; preds = %for.cond2244
  %1938 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv2248 = fpext float %1938 to double
  %call2249 = call double @frexp(double noundef %conv2248, ptr noundef %temp) #5
  %1939 = load i32, ptr %temp, align 4, !tbaa !8
  %conv2250 = sitofp i32 %1939 to double
  store double %conv2250, ptr %d__1, align 8, !tbaa !22
  %1940 = load float, ptr %bignum, align 4, !tbaa !10
  store float %1940, ptr %r__1, align 4, !tbaa !10
  %1941 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1942 = load i32, ptr %ll, align 4, !tbaa !8
  %1943 = load i32, ptr %jj, align 4, !tbaa !8
  %1944 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2251 = mul nsw i32 %1943, %1944
  %add2252 = add nsw i32 %1942, %mul2251
  %idxprom2253 = sext i32 %add2252 to i64
  %arrayidx2254 = getelementptr inbounds float, ptr %1941, i64 %idxprom2253
  %1945 = load float, ptr %arrayidx2254, align 4, !tbaa !10
  %conv2255 = fpext float %1945 to double
  %call2256 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %div2257 = fdiv double %conv2255, %call2256
  %conv2258 = fptrunc double %div2257 to float
  store float %conv2258, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2259) #5
  %1946 = load float, ptr %r__1, align 4, !tbaa !10
  store float %1946, ptr %_x2259, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2260) #5
  %1947 = load float, ptr %r__2, align 4, !tbaa !10
  store float %1947, ptr %_y2260, align 4, !tbaa !10
  %1948 = load float, ptr %_x2259, align 4, !tbaa !10
  %1949 = load float, ptr %_y2260, align 4, !tbaa !10
  %cmp2262 = fcmp olt float %1948, %1949
  br i1 %cmp2262, label %cond.true2264, label %cond.false2265

cond.true2264:                                    ; preds = %for.body2247
  %1950 = load float, ptr %_x2259, align 4, !tbaa !10
  br label %cond.end2266

cond.false2265:                                   ; preds = %for.body2247
  %1951 = load float, ptr %_y2260, align 4, !tbaa !10
  br label %cond.end2266

cond.end2266:                                     ; preds = %cond.false2265, %cond.true2264
  %cond2267 = phi float [ %1950, %cond.true2264 ], [ %1951, %cond.false2265 ]
  store float %cond2267, ptr %tmp2261, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2260) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2259) #5
  %1952 = load float, ptr %tmp2261, align 4, !tbaa !10
  %1953 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1954 = load i32, ptr %ll, align 4, !tbaa !8
  %1955 = load i32, ptr %jj, align 4, !tbaa !8
  %1956 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2268 = mul nsw i32 %1955, %1956
  %add2269 = add nsw i32 %1954, %mul2268
  %idxprom2270 = sext i32 %add2269 to i64
  %arrayidx2271 = getelementptr inbounds float, ptr %1953, i64 %idxprom2270
  store float %1952, ptr %arrayidx2271, align 4, !tbaa !10
  br label %for.inc2272

for.inc2272:                                      ; preds = %cond.end2266
  %1957 = load i32, ptr %ll, align 4, !tbaa !8
  %inc2273 = add nsw i32 %1957, 1
  store i32 %inc2273, ptr %ll, align 4, !tbaa !8
  br label %for.cond2244, !llvm.loop !68

for.end2274:                                      ; preds = %for.cond2244
  br label %for.inc2275

for.inc2275:                                      ; preds = %for.end2274
  %1958 = load i32, ptr %jj, align 4, !tbaa !8
  %inc2276 = add nsw i32 %1958, 1
  store i32 %inc2276, ptr %jj, align 4, !tbaa !8
  br label %for.cond2240, !llvm.loop !69

for.end2277:                                      ; preds = %for.cond2240
  %1959 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv2278 = fpext float %1959 to double
  %call2279 = call double @frexp(double noundef %conv2278, ptr noundef %temp) #5
  %1960 = load i32, ptr %temp, align 4, !tbaa !8
  %conv2280 = sitofp i32 %1960 to double
  store double %conv2280, ptr %d__1, align 8, !tbaa !22
  %call2281 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1961 = load float, ptr %scamin, align 4, !tbaa !10
  %conv2282 = fpext float %1961 to double
  %div2283 = fdiv double %conv2282, %call2281
  %conv2284 = fptrunc double %div2283 to float
  store float %conv2284, ptr %scamin, align 4, !tbaa !10
  %1962 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv2285 = fpext float %1962 to double
  %call2286 = call double @frexp(double noundef %conv2285, ptr noundef %temp) #5
  %1963 = load i32, ptr %temp, align 4, !tbaa !8
  %conv2287 = sitofp i32 %1963 to double
  store double %conv2287, ptr %d__1, align 8, !tbaa !22
  %call2288 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %1964 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv2289 = fpext float %1964 to double
  %div2290 = fdiv double %conv2289, %call2288
  %conv2291 = fptrunc double %div2290 to float
  store float %conv2291, ptr %scaloc, align 4, !tbaa !10
  br label %if.end2292

if.end2292:                                       ; preds = %for.end2277, %cond.end2209
  %1965 = load float, ptr %scaloc, align 4, !tbaa !10
  %1966 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul2293 = fmul float %1966, %1965
  store float %mul2293, ptr %cnrm, align 4, !tbaa !10
  %1967 = load float, ptr %scaloc, align 4, !tbaa !10
  %1968 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul2294 = fmul float %1968, %1967
  store float %mul2294, ptr %xnrm, align 4, !tbaa !10
  %1969 = load float, ptr %scamin, align 4, !tbaa !10
  %1970 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1971 = load i32, ptr %k, align 4, !tbaa !8
  %1972 = load i32, ptr %l, align 4, !tbaa !8
  %1973 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2295 = mul nsw i32 %1972, %1973
  %add2296 = add nsw i32 %1971, %mul2295
  %idxprom2297 = sext i32 %add2296 to i64
  %arrayidx2298 = getelementptr inbounds float, ptr %1970, i64 %idxprom2297
  %1974 = load float, ptr %arrayidx2298, align 4, !tbaa !10
  %div2299 = fdiv float %1969, %1974
  %1975 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul2300 = fmul float %div2299, %1975
  store float %mul2300, ptr %scal, align 4, !tbaa !10
  %1976 = load float, ptr %scal, align 4, !tbaa !10
  %cmp2301 = fcmp une float %1976, 1.000000e+00
  br i1 %cmp2301, label %if.then2303, label %if.end2318

if.then2303:                                      ; preds = %if.end2292
  %1977 = load i32, ptr %l2, align 4, !tbaa !8
  %sub2304 = sub nsw i32 %1977, 1
  store i32 %sub2304, ptr %i__2, align 4, !tbaa !8
  %1978 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %1978, ptr %ll, align 4, !tbaa !8
  br label %for.cond2305

for.cond2305:                                     ; preds = %for.inc2315, %if.then2303
  %1979 = load i32, ptr %ll, align 4, !tbaa !8
  %1980 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp2306 = icmp sle i32 %1979, %1980
  br i1 %cmp2306, label %for.body2308, label %for.end2317

for.body2308:                                     ; preds = %for.cond2305
  %1981 = load i32, ptr %k2, align 4, !tbaa !8
  %1982 = load i32, ptr %k1, align 4, !tbaa !8
  %sub2309 = sub nsw i32 %1981, %1982
  store i32 %sub2309, ptr %i__3, align 4, !tbaa !8
  %1983 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %1984 = load i32, ptr %k1, align 4, !tbaa !8
  %1985 = load i32, ptr %ll, align 4, !tbaa !8
  %1986 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2310 = mul nsw i32 %1985, %1986
  %add2311 = add nsw i32 %1984, %mul2310
  %idxprom2312 = sext i32 %add2311 to i64
  %arrayidx2313 = getelementptr inbounds %struct.complex, ptr %1983, i64 %idxprom2312
  %call2314 = call i32 @csscal_(ptr noundef %i__3, ptr noundef %scal, ptr noundef %arrayidx2313, ptr noundef @c__1)
  br label %for.inc2315

for.inc2315:                                      ; preds = %for.body2308
  %1987 = load i32, ptr %ll, align 4, !tbaa !8
  %inc2316 = add nsw i32 %1987, 1
  store i32 %inc2316, ptr %ll, align 4, !tbaa !8
  br label %for.cond2305, !llvm.loop !70

for.end2317:                                      ; preds = %for.cond2305
  br label %if.end2318

if.end2318:                                       ; preds = %for.end2317, %if.end2292
  %1988 = load float, ptr %scamin, align 4, !tbaa !10
  %1989 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %1990 = load i32, ptr %i__, align 4, !tbaa !8
  %1991 = load i32, ptr %l, align 4, !tbaa !8
  %1992 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2319 = mul nsw i32 %1991, %1992
  %add2320 = add nsw i32 %1990, %mul2319
  %idxprom2321 = sext i32 %add2320 to i64
  %arrayidx2322 = getelementptr inbounds float, ptr %1989, i64 %idxprom2321
  %1993 = load float, ptr %arrayidx2322, align 4, !tbaa !10
  %div2323 = fdiv float %1988, %1993
  %1994 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul2324 = fmul float %div2323, %1994
  store float %mul2324, ptr %scal, align 4, !tbaa !10
  %1995 = load float, ptr %scal, align 4, !tbaa !10
  %cmp2325 = fcmp une float %1995, 1.000000e+00
  br i1 %cmp2325, label %if.then2327, label %if.end2342

if.then2327:                                      ; preds = %if.end2318
  %1996 = load i32, ptr %l2, align 4, !tbaa !8
  %sub2328 = sub nsw i32 %1996, 1
  store i32 %sub2328, ptr %i__2, align 4, !tbaa !8
  %1997 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %1997, ptr %ll, align 4, !tbaa !8
  br label %for.cond2329

for.cond2329:                                     ; preds = %for.inc2339, %if.then2327
  %1998 = load i32, ptr %ll, align 4, !tbaa !8
  %1999 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp2330 = icmp sle i32 %1998, %1999
  br i1 %cmp2330, label %for.body2332, label %for.end2341

for.body2332:                                     ; preds = %for.cond2329
  %2000 = load i32, ptr %i2, align 4, !tbaa !8
  %2001 = load i32, ptr %i1, align 4, !tbaa !8
  %sub2333 = sub nsw i32 %2000, %2001
  store i32 %sub2333, ptr %i__3, align 4, !tbaa !8
  %2002 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2003 = load i32, ptr %i1, align 4, !tbaa !8
  %2004 = load i32, ptr %ll, align 4, !tbaa !8
  %2005 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2334 = mul nsw i32 %2004, %2005
  %add2335 = add nsw i32 %2003, %mul2334
  %idxprom2336 = sext i32 %add2335 to i64
  %arrayidx2337 = getelementptr inbounds %struct.complex, ptr %2002, i64 %idxprom2336
  %call2338 = call i32 @csscal_(ptr noundef %i__3, ptr noundef %scal, ptr noundef %arrayidx2337, ptr noundef @c__1)
  br label %for.inc2339

for.inc2339:                                      ; preds = %for.body2332
  %2006 = load i32, ptr %ll, align 4, !tbaa !8
  %inc2340 = add nsw i32 %2006, 1
  store i32 %inc2340, ptr %ll, align 4, !tbaa !8
  br label %for.cond2329, !llvm.loop !71

for.end2341:                                      ; preds = %for.cond2329
  br label %if.end2342

if.end2342:                                       ; preds = %for.end2341, %if.end2318
  %2007 = load float, ptr %scamin, align 4, !tbaa !10
  %2008 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul2343 = fmul float %2007, %2008
  %2009 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2010 = load i32, ptr %k, align 4, !tbaa !8
  %2011 = load i32, ptr %l, align 4, !tbaa !8
  %2012 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2344 = mul nsw i32 %2011, %2012
  %add2345 = add nsw i32 %2010, %mul2344
  %idxprom2346 = sext i32 %add2345 to i64
  %arrayidx2347 = getelementptr inbounds float, ptr %2009, i64 %idxprom2346
  store float %mul2343, ptr %arrayidx2347, align 4, !tbaa !10
  %2013 = load float, ptr %scamin, align 4, !tbaa !10
  %2014 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul2348 = fmul float %2013, %2014
  %2015 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2016 = load i32, ptr %i__, align 4, !tbaa !8
  %2017 = load i32, ptr %l, align 4, !tbaa !8
  %2018 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2349 = mul nsw i32 %2017, %2018
  %add2350 = add nsw i32 %2016, %mul2349
  %idxprom2351 = sext i32 %add2350 to i64
  %arrayidx2352 = getelementptr inbounds float, ptr %2015, i64 %idxprom2351
  store float %mul2348, ptr %arrayidx2352, align 4, !tbaa !10
  %2019 = load i32, ptr %i2, align 4, !tbaa !8
  %2020 = load i32, ptr %i1, align 4, !tbaa !8
  %sub2353 = sub nsw i32 %2019, %2020
  store i32 %sub2353, ptr %i__2, align 4, !tbaa !8
  %2021 = load i32, ptr %l2, align 4, !tbaa !8
  %2022 = load i32, ptr %l1, align 4, !tbaa !8
  %sub2354 = sub nsw i32 %2021, %2022
  store i32 %sub2354, ptr %i__3, align 4, !tbaa !8
  %2023 = load i32, ptr %k2, align 4, !tbaa !8
  %2024 = load i32, ptr %k1, align 4, !tbaa !8
  %sub2355 = sub nsw i32 %2023, %2024
  store i32 %sub2355, ptr %i__4, align 4, !tbaa !8
  %r2356 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r2356, align 4, !tbaa !19
  %i2357 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i2357, align 4, !tbaa !21
  %2025 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %2026 = load i32, ptr %i1, align 4, !tbaa !8
  %2027 = load i32, ptr %k1, align 4, !tbaa !8
  %2028 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul2358 = mul nsw i32 %2027, %2028
  %add2359 = add nsw i32 %2026, %mul2358
  %idxprom2360 = sext i32 %add2359 to i64
  %arrayidx2361 = getelementptr inbounds %struct.complex, ptr %2025, i64 %idxprom2360
  %2029 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %2030 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2031 = load i32, ptr %k1, align 4, !tbaa !8
  %2032 = load i32, ptr %l1, align 4, !tbaa !8
  %2033 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2362 = mul nsw i32 %2032, %2033
  %add2363 = add nsw i32 %2031, %mul2362
  %idxprom2364 = sext i32 %add2363 to i64
  %arrayidx2365 = getelementptr inbounds %struct.complex, ptr %2030, i64 %idxprom2364
  %2034 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %2035 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2036 = load i32, ptr %i1, align 4, !tbaa !8
  %2037 = load i32, ptr %l1, align 4, !tbaa !8
  %2038 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2366 = mul nsw i32 %2037, %2038
  %add2367 = add nsw i32 %2036, %mul2366
  %idxprom2368 = sext i32 %add2367 to i64
  %arrayidx2369 = getelementptr inbounds %struct.complex, ptr %2035, i64 %idxprom2368
  %2039 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call2370 = call i32 @cgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %q__1, ptr noundef %arrayidx2361, ptr noundef %2029, ptr noundef %arrayidx2365, ptr noundef %2034, ptr noundef @c_b1, ptr noundef %arrayidx2369, ptr noundef %2039)
  br label %for.inc2371

for.inc2371:                                      ; preds = %if.end2342
  %2040 = load i32, ptr %i__, align 4, !tbaa !8
  %inc2372 = add nsw i32 %2040, 1
  store i32 %inc2372, ptr %i__, align 4, !tbaa !8
  br label %for.cond2169, !llvm.loop !72

for.end2373:                                      ; preds = %for.cond2169
  %2041 = load i32, ptr %l, align 4, !tbaa !8
  %sub2374 = sub nsw i32 %2041, 1
  store i32 %sub2374, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond2375

for.cond2375:                                     ; preds = %for.inc2581, %for.end2373
  %2042 = load i32, ptr %j, align 4, !tbaa !8
  %2043 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp2376 = icmp sle i32 %2042, %2043
  br i1 %cmp2376, label %for.body2378, label %for.end2583

for.body2378:                                     ; preds = %for.cond2375
  %2044 = load i32, ptr %j, align 4, !tbaa !8
  %sub2379 = sub nsw i32 %2044, 1
  %2045 = load i32, ptr %nb, align 4, !tbaa !8
  %mul2380 = mul nsw i32 %sub2379, %2045
  %add2381 = add nsw i32 %mul2380, 1
  store i32 %add2381, ptr %j1, align 4, !tbaa !8
  %2046 = load i32, ptr %j, align 4, !tbaa !8
  %2047 = load i32, ptr %nb, align 4, !tbaa !8
  %mul2382 = mul nsw i32 %2046, %2047
  store i32 %mul2382, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2383) #5
  %2048 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %2048, ptr %_x2383, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2384) #5
  %2049 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2050 = load i32, ptr %2049, align 4, !tbaa !8
  store i32 %2050, ptr %_y2384, align 4, !tbaa !8
  %2051 = load i32, ptr %_x2383, align 4, !tbaa !8
  %2052 = load i32, ptr %_y2384, align 4, !tbaa !8
  %cmp2386 = icmp slt i32 %2051, %2052
  br i1 %cmp2386, label %cond.true2388, label %cond.false2389

cond.true2388:                                    ; preds = %for.body2378
  %2053 = load i32, ptr %_x2383, align 4, !tbaa !8
  br label %cond.end2390

cond.false2389:                                   ; preds = %for.body2378
  %2054 = load i32, ptr %_y2384, align 4, !tbaa !8
  br label %cond.end2390

cond.end2390:                                     ; preds = %cond.false2389, %cond.true2388
  %cond2391 = phi i32 [ %2053, %cond.true2388 ], [ %2054, %cond.false2389 ]
  store i32 %cond2391, ptr %tmp2385, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2384) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2383) #5
  %2055 = load i32, ptr %tmp2385, align 4, !tbaa !8
  %add2392 = add nsw i32 %2055, 1
  store i32 %add2392, ptr %j2, align 4, !tbaa !8
  %2056 = load i32, ptr %k2, align 4, !tbaa !8
  %2057 = load i32, ptr %k1, align 4, !tbaa !8
  %sub2393 = sub nsw i32 %2056, %2057
  store i32 %sub2393, ptr %i__2, align 4, !tbaa !8
  %2058 = load i32, ptr %j2, align 4, !tbaa !8
  %2059 = load i32, ptr %j1, align 4, !tbaa !8
  %sub2394 = sub nsw i32 %2058, %2059
  store i32 %sub2394, ptr %i__3, align 4, !tbaa !8
  %2060 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2061 = load i32, ptr %k1, align 4, !tbaa !8
  %2062 = load i32, ptr %j1, align 4, !tbaa !8
  %2063 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2395 = mul nsw i32 %2062, %2063
  %add2396 = add nsw i32 %2061, %mul2395
  %idxprom2397 = sext i32 %add2396 to i64
  %arrayidx2398 = getelementptr inbounds %struct.complex, ptr %2060, i64 %idxprom2397
  %2064 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %2065 = load ptr, ptr %wnrm, align 8, !tbaa !4
  %call2399 = call float @clange_(ptr noundef @.str.6, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx2398, ptr noundef %2064, ptr noundef %2065)
  store float %call2399, ptr %cnrm, align 4, !tbaa !10
  %2066 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2067 = load i32, ptr %k, align 4, !tbaa !8
  %2068 = load i32, ptr %j, align 4, !tbaa !8
  %2069 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2400 = mul nsw i32 %2068, %2069
  %add2401 = add nsw i32 %2067, %mul2400
  %idxprom2402 = sext i32 %add2401 to i64
  %arrayidx2403 = getelementptr inbounds float, ptr %2066, i64 %idxprom2402
  %2070 = load float, ptr %arrayidx2403, align 4, !tbaa !10
  store float %2070, ptr %r__1, align 4, !tbaa !10
  %2071 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2072 = load i32, ptr %k, align 4, !tbaa !8
  %2073 = load i32, ptr %l, align 4, !tbaa !8
  %2074 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2404 = mul nsw i32 %2073, %2074
  %add2405 = add nsw i32 %2072, %mul2404
  %idxprom2406 = sext i32 %add2405 to i64
  %arrayidx2407 = getelementptr inbounds float, ptr %2071, i64 %idxprom2406
  %2075 = load float, ptr %arrayidx2407, align 4, !tbaa !10
  store float %2075, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2408) #5
  %2076 = load float, ptr %r__1, align 4, !tbaa !10
  store float %2076, ptr %_x2408, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2409) #5
  %2077 = load float, ptr %r__2, align 4, !tbaa !10
  store float %2077, ptr %_y2409, align 4, !tbaa !10
  %2078 = load float, ptr %_x2408, align 4, !tbaa !10
  %2079 = load float, ptr %_y2409, align 4, !tbaa !10
  %cmp2411 = fcmp olt float %2078, %2079
  br i1 %cmp2411, label %cond.true2413, label %cond.false2414

cond.true2413:                                    ; preds = %cond.end2390
  %2080 = load float, ptr %_x2408, align 4, !tbaa !10
  br label %cond.end2415

cond.false2414:                                   ; preds = %cond.end2390
  %2081 = load float, ptr %_y2409, align 4, !tbaa !10
  br label %cond.end2415

cond.end2415:                                     ; preds = %cond.false2414, %cond.true2413
  %cond2416 = phi float [ %2080, %cond.true2413 ], [ %2081, %cond.false2414 ]
  store float %cond2416, ptr %tmp2410, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2409) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2408) #5
  %2082 = load float, ptr %tmp2410, align 4, !tbaa !10
  store float %2082, ptr %scamin, align 4, !tbaa !10
  %2083 = load float, ptr %scamin, align 4, !tbaa !10
  %2084 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2085 = load i32, ptr %k, align 4, !tbaa !8
  %2086 = load i32, ptr %j, align 4, !tbaa !8
  %2087 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2417 = mul nsw i32 %2086, %2087
  %add2418 = add nsw i32 %2085, %mul2417
  %idxprom2419 = sext i32 %add2418 to i64
  %arrayidx2420 = getelementptr inbounds float, ptr %2084, i64 %idxprom2419
  %2088 = load float, ptr %arrayidx2420, align 4, !tbaa !10
  %div2421 = fdiv float %2083, %2088
  %2089 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul2422 = fmul float %2089, %div2421
  store float %mul2422, ptr %cnrm, align 4, !tbaa !10
  %2090 = load float, ptr %scamin, align 4, !tbaa !10
  %2091 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2092 = load i32, ptr %k, align 4, !tbaa !8
  %2093 = load i32, ptr %l, align 4, !tbaa !8
  %2094 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2423 = mul nsw i32 %2093, %2094
  %add2424 = add nsw i32 %2092, %mul2423
  %idxprom2425 = sext i32 %add2424 to i64
  %arrayidx2426 = getelementptr inbounds float, ptr %2091, i64 %idxprom2425
  %2095 = load float, ptr %arrayidx2426, align 4, !tbaa !10
  %div2427 = fdiv float %2090, %2095
  %2096 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul2428 = fmul float %2096, %div2427
  store float %mul2428, ptr %xnrm, align 4, !tbaa !10
  %2097 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2098 = load i32, ptr %l, align 4, !tbaa !8
  %2099 = load i32, ptr %bwrk, align 4, !tbaa !8
  %2100 = load i32, ptr %j, align 4, !tbaa !8
  %add2429 = add nsw i32 %2099, %2100
  %2101 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2430 = mul nsw i32 %add2429, %2101
  %add2431 = add nsw i32 %2098, %mul2430
  %idxprom2432 = sext i32 %add2431 to i64
  %arrayidx2433 = getelementptr inbounds float, ptr %2097, i64 %idxprom2432
  %2102 = load float, ptr %arrayidx2433, align 4, !tbaa !10
  store float %2102, ptr %bnrm, align 4, !tbaa !10
  %call2434 = call float @slarmm_(ptr noundef %bnrm, ptr noundef %xnrm, ptr noundef %cnrm)
  store float %call2434, ptr %scaloc, align 4, !tbaa !10
  %2103 = load float, ptr %scaloc, align 4, !tbaa !10
  %2104 = load float, ptr %scamin, align 4, !tbaa !10
  %mul2435 = fmul float %2103, %2104
  %cmp2436 = fcmp oeq float %mul2435, 0.000000e+00
  br i1 %cmp2436, label %if.then2438, label %if.end2498

if.then2438:                                      ; preds = %cond.end2415
  %2105 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv2439 = fpext float %2105 to double
  %call2440 = call double @frexp(double noundef %conv2439, ptr noundef %temp) #5
  %2106 = load i32, ptr %temp, align 4, !tbaa !8
  %conv2441 = sitofp i32 %2106 to double
  store double %conv2441, ptr %d__1, align 8, !tbaa !22
  %call2442 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %2107 = load float, ptr %buf, align 4, !tbaa !10
  %conv2443 = fpext float %2107 to double
  %mul2444 = fmul double %conv2443, %call2442
  %conv2445 = fptrunc double %mul2444 to float
  store float %conv2445, ptr %buf, align 4, !tbaa !10
  %2108 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %2108, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %jj, align 4, !tbaa !8
  br label %for.cond2446

for.cond2446:                                     ; preds = %for.inc2481, %if.then2438
  %2109 = load i32, ptr %jj, align 4, !tbaa !8
  %2110 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp2447 = icmp sle i32 %2109, %2110
  br i1 %cmp2447, label %for.body2449, label %for.end2483

for.body2449:                                     ; preds = %for.cond2446
  %2111 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %2111, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %ll, align 4, !tbaa !8
  br label %for.cond2450

for.cond2450:                                     ; preds = %for.inc2478, %for.body2449
  %2112 = load i32, ptr %ll, align 4, !tbaa !8
  %2113 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2451 = icmp sle i32 %2112, %2113
  br i1 %cmp2451, label %for.body2453, label %for.end2480

for.body2453:                                     ; preds = %for.cond2450
  %2114 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv2454 = fpext float %2114 to double
  %call2455 = call double @frexp(double noundef %conv2454, ptr noundef %temp) #5
  %2115 = load i32, ptr %temp, align 4, !tbaa !8
  %conv2456 = sitofp i32 %2115 to double
  store double %conv2456, ptr %d__1, align 8, !tbaa !22
  %2116 = load float, ptr %bignum, align 4, !tbaa !10
  store float %2116, ptr %r__1, align 4, !tbaa !10
  %2117 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2118 = load i32, ptr %ll, align 4, !tbaa !8
  %2119 = load i32, ptr %jj, align 4, !tbaa !8
  %2120 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2457 = mul nsw i32 %2119, %2120
  %add2458 = add nsw i32 %2118, %mul2457
  %idxprom2459 = sext i32 %add2458 to i64
  %arrayidx2460 = getelementptr inbounds float, ptr %2117, i64 %idxprom2459
  %2121 = load float, ptr %arrayidx2460, align 4, !tbaa !10
  %conv2461 = fpext float %2121 to double
  %call2462 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %div2463 = fdiv double %conv2461, %call2462
  %conv2464 = fptrunc double %div2463 to float
  store float %conv2464, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2465) #5
  %2122 = load float, ptr %r__1, align 4, !tbaa !10
  store float %2122, ptr %_x2465, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2466) #5
  %2123 = load float, ptr %r__2, align 4, !tbaa !10
  store float %2123, ptr %_y2466, align 4, !tbaa !10
  %2124 = load float, ptr %_x2465, align 4, !tbaa !10
  %2125 = load float, ptr %_y2466, align 4, !tbaa !10
  %cmp2468 = fcmp olt float %2124, %2125
  br i1 %cmp2468, label %cond.true2470, label %cond.false2471

cond.true2470:                                    ; preds = %for.body2453
  %2126 = load float, ptr %_x2465, align 4, !tbaa !10
  br label %cond.end2472

cond.false2471:                                   ; preds = %for.body2453
  %2127 = load float, ptr %_y2466, align 4, !tbaa !10
  br label %cond.end2472

cond.end2472:                                     ; preds = %cond.false2471, %cond.true2470
  %cond2473 = phi float [ %2126, %cond.true2470 ], [ %2127, %cond.false2471 ]
  store float %cond2473, ptr %tmp2467, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2466) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2465) #5
  %2128 = load float, ptr %tmp2467, align 4, !tbaa !10
  %2129 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2130 = load i32, ptr %ll, align 4, !tbaa !8
  %2131 = load i32, ptr %jj, align 4, !tbaa !8
  %2132 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2474 = mul nsw i32 %2131, %2132
  %add2475 = add nsw i32 %2130, %mul2474
  %idxprom2476 = sext i32 %add2475 to i64
  %arrayidx2477 = getelementptr inbounds float, ptr %2129, i64 %idxprom2476
  store float %2128, ptr %arrayidx2477, align 4, !tbaa !10
  br label %for.inc2478

for.inc2478:                                      ; preds = %cond.end2472
  %2133 = load i32, ptr %ll, align 4, !tbaa !8
  %inc2479 = add nsw i32 %2133, 1
  store i32 %inc2479, ptr %ll, align 4, !tbaa !8
  br label %for.cond2450, !llvm.loop !73

for.end2480:                                      ; preds = %for.cond2450
  br label %for.inc2481

for.inc2481:                                      ; preds = %for.end2480
  %2134 = load i32, ptr %jj, align 4, !tbaa !8
  %inc2482 = add nsw i32 %2134, 1
  store i32 %inc2482, ptr %jj, align 4, !tbaa !8
  br label %for.cond2446, !llvm.loop !74

for.end2483:                                      ; preds = %for.cond2446
  %2135 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv2484 = fpext float %2135 to double
  %call2485 = call double @frexp(double noundef %conv2484, ptr noundef %temp) #5
  %2136 = load i32, ptr %temp, align 4, !tbaa !8
  %conv2486 = sitofp i32 %2136 to double
  store double %conv2486, ptr %d__1, align 8, !tbaa !22
  %call2487 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %2137 = load float, ptr %scamin, align 4, !tbaa !10
  %conv2488 = fpext float %2137 to double
  %div2489 = fdiv double %conv2488, %call2487
  %conv2490 = fptrunc double %div2489 to float
  store float %conv2490, ptr %scamin, align 4, !tbaa !10
  %2138 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv2491 = fpext float %2138 to double
  %call2492 = call double @frexp(double noundef %conv2491, ptr noundef %temp) #5
  %2139 = load i32, ptr %temp, align 4, !tbaa !8
  %conv2493 = sitofp i32 %2139 to double
  store double %conv2493, ptr %d__1, align 8, !tbaa !22
  %call2494 = call double @pow_dd(ptr noundef @c_b18, ptr noundef %d__1)
  %2140 = load float, ptr %scaloc, align 4, !tbaa !10
  %conv2495 = fpext float %2140 to double
  %div2496 = fdiv double %conv2495, %call2494
  %conv2497 = fptrunc double %div2496 to float
  store float %conv2497, ptr %scaloc, align 4, !tbaa !10
  br label %if.end2498

if.end2498:                                       ; preds = %for.end2483, %cond.end2415
  %2141 = load float, ptr %scaloc, align 4, !tbaa !10
  %2142 = load float, ptr %cnrm, align 4, !tbaa !10
  %mul2499 = fmul float %2142, %2141
  store float %mul2499, ptr %cnrm, align 4, !tbaa !10
  %2143 = load float, ptr %scaloc, align 4, !tbaa !10
  %2144 = load float, ptr %xnrm, align 4, !tbaa !10
  %mul2500 = fmul float %2144, %2143
  store float %mul2500, ptr %xnrm, align 4, !tbaa !10
  %2145 = load float, ptr %scamin, align 4, !tbaa !10
  %2146 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2147 = load i32, ptr %k, align 4, !tbaa !8
  %2148 = load i32, ptr %l, align 4, !tbaa !8
  %2149 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2501 = mul nsw i32 %2148, %2149
  %add2502 = add nsw i32 %2147, %mul2501
  %idxprom2503 = sext i32 %add2502 to i64
  %arrayidx2504 = getelementptr inbounds float, ptr %2146, i64 %idxprom2503
  %2150 = load float, ptr %arrayidx2504, align 4, !tbaa !10
  %div2505 = fdiv float %2145, %2150
  %2151 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul2506 = fmul float %div2505, %2151
  store float %mul2506, ptr %scal, align 4, !tbaa !10
  %2152 = load float, ptr %scal, align 4, !tbaa !10
  %cmp2507 = fcmp une float %2152, 1.000000e+00
  br i1 %cmp2507, label %if.then2509, label %if.end2524

if.then2509:                                      ; preds = %if.end2498
  %2153 = load i32, ptr %l2, align 4, !tbaa !8
  %sub2510 = sub nsw i32 %2153, 1
  store i32 %sub2510, ptr %i__2, align 4, !tbaa !8
  %2154 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %2154, ptr %jj, align 4, !tbaa !8
  br label %for.cond2511

for.cond2511:                                     ; preds = %for.inc2521, %if.then2509
  %2155 = load i32, ptr %jj, align 4, !tbaa !8
  %2156 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp2512 = icmp sle i32 %2155, %2156
  br i1 %cmp2512, label %for.body2514, label %for.end2523

for.body2514:                                     ; preds = %for.cond2511
  %2157 = load i32, ptr %k2, align 4, !tbaa !8
  %2158 = load i32, ptr %k1, align 4, !tbaa !8
  %sub2515 = sub nsw i32 %2157, %2158
  store i32 %sub2515, ptr %i__3, align 4, !tbaa !8
  %2159 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2160 = load i32, ptr %k1, align 4, !tbaa !8
  %2161 = load i32, ptr %jj, align 4, !tbaa !8
  %2162 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2516 = mul nsw i32 %2161, %2162
  %add2517 = add nsw i32 %2160, %mul2516
  %idxprom2518 = sext i32 %add2517 to i64
  %arrayidx2519 = getelementptr inbounds %struct.complex, ptr %2159, i64 %idxprom2518
  %call2520 = call i32 @csscal_(ptr noundef %i__3, ptr noundef %scal, ptr noundef %arrayidx2519, ptr noundef @c__1)
  br label %for.inc2521

for.inc2521:                                      ; preds = %for.body2514
  %2163 = load i32, ptr %jj, align 4, !tbaa !8
  %inc2522 = add nsw i32 %2163, 1
  store i32 %inc2522, ptr %jj, align 4, !tbaa !8
  br label %for.cond2511, !llvm.loop !75

for.end2523:                                      ; preds = %for.cond2511
  br label %if.end2524

if.end2524:                                       ; preds = %for.end2523, %if.end2498
  %2164 = load float, ptr %scamin, align 4, !tbaa !10
  %2165 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2166 = load i32, ptr %k, align 4, !tbaa !8
  %2167 = load i32, ptr %j, align 4, !tbaa !8
  %2168 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2525 = mul nsw i32 %2167, %2168
  %add2526 = add nsw i32 %2166, %mul2525
  %idxprom2527 = sext i32 %add2526 to i64
  %arrayidx2528 = getelementptr inbounds float, ptr %2165, i64 %idxprom2527
  %2169 = load float, ptr %arrayidx2528, align 4, !tbaa !10
  %div2529 = fdiv float %2164, %2169
  %2170 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul2530 = fmul float %div2529, %2170
  store float %mul2530, ptr %scal, align 4, !tbaa !10
  %2171 = load float, ptr %scal, align 4, !tbaa !10
  %cmp2531 = fcmp une float %2171, 1.000000e+00
  br i1 %cmp2531, label %if.then2533, label %if.end2548

if.then2533:                                      ; preds = %if.end2524
  %2172 = load i32, ptr %j2, align 4, !tbaa !8
  %sub2534 = sub nsw i32 %2172, 1
  store i32 %sub2534, ptr %i__2, align 4, !tbaa !8
  %2173 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %2173, ptr %jj, align 4, !tbaa !8
  br label %for.cond2535

for.cond2535:                                     ; preds = %for.inc2545, %if.then2533
  %2174 = load i32, ptr %jj, align 4, !tbaa !8
  %2175 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp2536 = icmp sle i32 %2174, %2175
  br i1 %cmp2536, label %for.body2538, label %for.end2547

for.body2538:                                     ; preds = %for.cond2535
  %2176 = load i32, ptr %k2, align 4, !tbaa !8
  %2177 = load i32, ptr %k1, align 4, !tbaa !8
  %sub2539 = sub nsw i32 %2176, %2177
  store i32 %sub2539, ptr %i__3, align 4, !tbaa !8
  %2178 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2179 = load i32, ptr %k1, align 4, !tbaa !8
  %2180 = load i32, ptr %jj, align 4, !tbaa !8
  %2181 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2540 = mul nsw i32 %2180, %2181
  %add2541 = add nsw i32 %2179, %mul2540
  %idxprom2542 = sext i32 %add2541 to i64
  %arrayidx2543 = getelementptr inbounds %struct.complex, ptr %2178, i64 %idxprom2542
  %call2544 = call i32 @csscal_(ptr noundef %i__3, ptr noundef %scal, ptr noundef %arrayidx2543, ptr noundef @c__1)
  br label %for.inc2545

for.inc2545:                                      ; preds = %for.body2538
  %2182 = load i32, ptr %jj, align 4, !tbaa !8
  %inc2546 = add nsw i32 %2182, 1
  store i32 %inc2546, ptr %jj, align 4, !tbaa !8
  br label %for.cond2535, !llvm.loop !76

for.end2547:                                      ; preds = %for.cond2535
  br label %if.end2548

if.end2548:                                       ; preds = %for.end2547, %if.end2524
  %2183 = load float, ptr %scamin, align 4, !tbaa !10
  %2184 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul2549 = fmul float %2183, %2184
  %2185 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2186 = load i32, ptr %k, align 4, !tbaa !8
  %2187 = load i32, ptr %l, align 4, !tbaa !8
  %2188 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2550 = mul nsw i32 %2187, %2188
  %add2551 = add nsw i32 %2186, %mul2550
  %idxprom2552 = sext i32 %add2551 to i64
  %arrayidx2553 = getelementptr inbounds float, ptr %2185, i64 %idxprom2552
  store float %mul2549, ptr %arrayidx2553, align 4, !tbaa !10
  %2189 = load float, ptr %scamin, align 4, !tbaa !10
  %2190 = load float, ptr %scaloc, align 4, !tbaa !10
  %mul2554 = fmul float %2189, %2190
  %2191 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2192 = load i32, ptr %k, align 4, !tbaa !8
  %2193 = load i32, ptr %j, align 4, !tbaa !8
  %2194 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2555 = mul nsw i32 %2193, %2194
  %add2556 = add nsw i32 %2192, %mul2555
  %idxprom2557 = sext i32 %add2556 to i64
  %arrayidx2558 = getelementptr inbounds float, ptr %2191, i64 %idxprom2557
  store float %mul2554, ptr %arrayidx2558, align 4, !tbaa !10
  %2195 = load i32, ptr %k2, align 4, !tbaa !8
  %2196 = load i32, ptr %k1, align 4, !tbaa !8
  %sub2559 = sub nsw i32 %2195, %2196
  store i32 %sub2559, ptr %i__2, align 4, !tbaa !8
  %2197 = load i32, ptr %j2, align 4, !tbaa !8
  %2198 = load i32, ptr %j1, align 4, !tbaa !8
  %sub2560 = sub nsw i32 %2197, %2198
  store i32 %sub2560, ptr %i__3, align 4, !tbaa !8
  %2199 = load i32, ptr %l2, align 4, !tbaa !8
  %2200 = load i32, ptr %l1, align 4, !tbaa !8
  %sub2561 = sub nsw i32 %2199, %2200
  store i32 %sub2561, ptr %i__4, align 4, !tbaa !8
  %r2562 = getelementptr inbounds %struct.complex, ptr %csgn, i32 0, i32 0
  %2201 = load float, ptr %r2562, align 4, !tbaa !19
  %fneg2563 = fneg float %2201
  %r2564 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %fneg2563, ptr %r2564, align 4, !tbaa !19
  %i2565 = getelementptr inbounds %struct.complex, ptr %csgn, i32 0, i32 1
  %2202 = load float, ptr %i2565, align 4, !tbaa !21
  %fneg2566 = fneg float %2202
  %i2567 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %fneg2566, ptr %i2567, align 4, !tbaa !21
  %2203 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2204 = load i32, ptr %k1, align 4, !tbaa !8
  %2205 = load i32, ptr %l1, align 4, !tbaa !8
  %2206 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2568 = mul nsw i32 %2205, %2206
  %add2569 = add nsw i32 %2204, %mul2568
  %idxprom2570 = sext i32 %add2569 to i64
  %arrayidx2571 = getelementptr inbounds %struct.complex, ptr %2203, i64 %idxprom2570
  %2207 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %2208 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %2209 = load i32, ptr %j1, align 4, !tbaa !8
  %2210 = load i32, ptr %l1, align 4, !tbaa !8
  %2211 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul2572 = mul nsw i32 %2210, %2211
  %add2573 = add nsw i32 %2209, %mul2572
  %idxprom2574 = sext i32 %add2573 to i64
  %arrayidx2575 = getelementptr inbounds %struct.complex, ptr %2208, i64 %idxprom2574
  %2212 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %2213 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2214 = load i32, ptr %k1, align 4, !tbaa !8
  %2215 = load i32, ptr %j1, align 4, !tbaa !8
  %2216 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2576 = mul nsw i32 %2215, %2216
  %add2577 = add nsw i32 %2214, %mul2576
  %idxprom2578 = sext i32 %add2577 to i64
  %arrayidx2579 = getelementptr inbounds %struct.complex, ptr %2213, i64 %idxprom2578
  %2217 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call2580 = call i32 @cgemm_(ptr noundef @.str, ptr noundef @.str.3, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %q__1, ptr noundef %arrayidx2571, ptr noundef %2207, ptr noundef %arrayidx2575, ptr noundef %2212, ptr noundef @c_b1, ptr noundef %arrayidx2579, ptr noundef %2217)
  br label %for.inc2581

for.inc2581:                                      ; preds = %if.end2548
  %2218 = load i32, ptr %j, align 4, !tbaa !8
  %inc2582 = add nsw i32 %2218, 1
  store i32 %inc2582, ptr %j, align 4, !tbaa !8
  br label %for.cond2375, !llvm.loop !77

for.end2583:                                      ; preds = %for.cond2375
  br label %for.inc2584

for.inc2584:                                      ; preds = %for.end2583
  %2219 = load i32, ptr %l, align 4, !tbaa !8
  %dec2585 = add nsw i32 %2219, -1
  store i32 %dec2585, ptr %l, align 4, !tbaa !8
  br label %for.cond2051, !llvm.loop !78

for.end2586:                                      ; preds = %for.cond2051
  br label %for.inc2587

for.inc2587:                                      ; preds = %for.end2586
  %2220 = load i32, ptr %k, align 4, !tbaa !8
  %dec2588 = add nsw i32 %2220, -1
  store i32 %dec2588, ptr %k, align 4, !tbaa !8
  br label %for.cond2033, !llvm.loop !79

for.end2589:                                      ; preds = %for.cond2033
  br label %if.end2590

if.end2590:                                       ; preds = %for.end2589, %land.lhs.true2030, %if.else2028
  br label %if.end2591

if.end2591:                                       ; preds = %if.end2590, %for.end2027
  br label %if.end2592

if.end2592:                                       ; preds = %if.end2591, %for.end1465
  br label %if.end2593

if.end2593:                                       ; preds = %if.end2592, %for.end903
  %2221 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2222 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %add2594 = add nsw i32 %2222, 1
  %idxprom2595 = sext i32 %add2594 to i64
  %arrayidx2596 = getelementptr inbounds float, ptr %2221, i64 %idxprom2595
  %2223 = load float, ptr %arrayidx2596, align 4, !tbaa !10
  %2224 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  store float %2223, ptr %2224, align 4, !tbaa !10
  %2225 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %2225, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond2597

for.cond2597:                                     ; preds = %for.inc2621, %if.end2593
  %2226 = load i32, ptr %k, align 4, !tbaa !8
  %2227 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp2598 = icmp sle i32 %2226, %2227
  br i1 %cmp2598, label %for.body2600, label %for.end2623

for.body2600:                                     ; preds = %for.cond2597
  %2228 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %2228, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond2601

for.cond2601:                                     ; preds = %for.inc2618, %for.body2600
  %2229 = load i32, ptr %l, align 4, !tbaa !8
  %2230 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp2602 = icmp sle i32 %2229, %2230
  br i1 %cmp2602, label %for.body2604, label %for.end2620

for.body2604:                                     ; preds = %for.cond2601
  %2231 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %2232 = load float, ptr %2231, align 4, !tbaa !10
  store float %2232, ptr %r__1, align 4, !tbaa !10
  %2233 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2234 = load i32, ptr %k, align 4, !tbaa !8
  %2235 = load i32, ptr %l, align 4, !tbaa !8
  %2236 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2605 = mul nsw i32 %2235, %2236
  %add2606 = add nsw i32 %2234, %mul2605
  %idxprom2607 = sext i32 %add2606 to i64
  %arrayidx2608 = getelementptr inbounds float, ptr %2233, i64 %idxprom2607
  %2237 = load float, ptr %arrayidx2608, align 4, !tbaa !10
  store float %2237, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2609) #5
  %2238 = load float, ptr %r__1, align 4, !tbaa !10
  store float %2238, ptr %_x2609, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2610) #5
  %2239 = load float, ptr %r__2, align 4, !tbaa !10
  store float %2239, ptr %_y2610, align 4, !tbaa !10
  %2240 = load float, ptr %_x2609, align 4, !tbaa !10
  %2241 = load float, ptr %_y2610, align 4, !tbaa !10
  %cmp2612 = fcmp olt float %2240, %2241
  br i1 %cmp2612, label %cond.true2614, label %cond.false2615

cond.true2614:                                    ; preds = %for.body2604
  %2242 = load float, ptr %_x2609, align 4, !tbaa !10
  br label %cond.end2616

cond.false2615:                                   ; preds = %for.body2604
  %2243 = load float, ptr %_y2610, align 4, !tbaa !10
  br label %cond.end2616

cond.end2616:                                     ; preds = %cond.false2615, %cond.true2614
  %cond2617 = phi float [ %2242, %cond.true2614 ], [ %2243, %cond.false2615 ]
  store float %cond2617, ptr %tmp2611, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2610) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2609) #5
  %2244 = load float, ptr %tmp2611, align 4, !tbaa !10
  %2245 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  store float %2244, ptr %2245, align 4, !tbaa !10
  br label %for.inc2618

for.inc2618:                                      ; preds = %cond.end2616
  %2246 = load i32, ptr %l, align 4, !tbaa !8
  %inc2619 = add nsw i32 %2246, 1
  store i32 %inc2619, ptr %l, align 4, !tbaa !8
  br label %for.cond2601, !llvm.loop !80

for.end2620:                                      ; preds = %for.cond2601
  br label %for.inc2621

for.inc2621:                                      ; preds = %for.end2620
  %2247 = load i32, ptr %k, align 4, !tbaa !8
  %inc2622 = add nsw i32 %2247, 1
  store i32 %inc2622, ptr %k, align 4, !tbaa !8
  br label %for.cond2597, !llvm.loop !81

for.end2623:                                      ; preds = %for.cond2597
  %2248 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %2249 = load float, ptr %2248, align 4, !tbaa !10
  %cmp2624 = fcmp oeq float %2249, 0.000000e+00
  br i1 %cmp2624, label %if.then2626, label %if.end2646

if.then2626:                                      ; preds = %for.end2623
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2627) #5
  %2250 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %2250, ptr %_x2627, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2628) #5
  %2251 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %2251, ptr %_y2628, align 4, !tbaa !8
  %2252 = load i32, ptr %_x2627, align 4, !tbaa !8
  %2253 = load i32, ptr %_y2628, align 4, !tbaa !8
  %cmp2630 = icmp sgt i32 %2252, %2253
  br i1 %cmp2630, label %cond.true2632, label %cond.false2633

cond.true2632:                                    ; preds = %if.then2626
  %2254 = load i32, ptr %_x2627, align 4, !tbaa !8
  br label %cond.end2634

cond.false2633:                                   ; preds = %if.then2626
  %2255 = load i32, ptr %_y2628, align 4, !tbaa !8
  br label %cond.end2634

cond.end2634:                                     ; preds = %cond.false2633, %cond.true2632
  %cond2635 = phi i32 [ %2254, %cond.true2632 ], [ %2255, %cond.false2633 ]
  store i32 %cond2635, ptr %tmp2629, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2628) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2627) #5
  %2256 = load i32, ptr %tmp2629, align 4, !tbaa !8
  %conv2636 = sitofp i32 %2256 to float
  %2257 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2258 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %add2637 = add nsw i32 %2258, 1
  %idxprom2638 = sext i32 %add2637 to i64
  %arrayidx2639 = getelementptr inbounds float, ptr %2257, i64 %idxprom2638
  store float %conv2636, ptr %arrayidx2639, align 4, !tbaa !10
  %2259 = load i32, ptr %nbb, align 4, !tbaa !8
  %shl2640 = shl i32 %2259, 1
  %2260 = load i32, ptr %nba, align 4, !tbaa !8
  %add2641 = add nsw i32 %shl2640, %2260
  %conv2642 = sitofp i32 %add2641 to float
  %2261 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2262 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %add2643 = add nsw i32 %2262, 2
  %idxprom2644 = sext i32 %add2643 to i64
  %arrayidx2645 = getelementptr inbounds float, ptr %2261, i64 %idxprom2644
  store float %conv2642, ptr %arrayidx2645, align 4, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2646:                                       ; preds = %for.end2623
  %2263 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %2263, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond2647

for.cond2647:                                     ; preds = %for.inc2709, %if.end2646
  %2264 = load i32, ptr %k, align 4, !tbaa !8
  %2265 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp2648 = icmp sle i32 %2264, %2265
  br i1 %cmp2648, label %for.body2650, label %for.end2711

for.body2650:                                     ; preds = %for.cond2647
  %2266 = load i32, ptr %k, align 4, !tbaa !8
  %sub2651 = sub nsw i32 %2266, 1
  %2267 = load i32, ptr %nb, align 4, !tbaa !8
  %mul2652 = mul nsw i32 %sub2651, %2267
  %add2653 = add nsw i32 %mul2652, 1
  store i32 %add2653, ptr %k1, align 4, !tbaa !8
  %2268 = load i32, ptr %k, align 4, !tbaa !8
  %2269 = load i32, ptr %nb, align 4, !tbaa !8
  %mul2654 = mul nsw i32 %2268, %2269
  store i32 %mul2654, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2655) #5
  %2270 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %2270, ptr %_x2655, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2656) #5
  %2271 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %2272 = load i32, ptr %2271, align 4, !tbaa !8
  store i32 %2272, ptr %_y2656, align 4, !tbaa !8
  %2273 = load i32, ptr %_x2655, align 4, !tbaa !8
  %2274 = load i32, ptr %_y2656, align 4, !tbaa !8
  %cmp2658 = icmp slt i32 %2273, %2274
  br i1 %cmp2658, label %cond.true2660, label %cond.false2661

cond.true2660:                                    ; preds = %for.body2650
  %2275 = load i32, ptr %_x2655, align 4, !tbaa !8
  br label %cond.end2662

cond.false2661:                                   ; preds = %for.body2650
  %2276 = load i32, ptr %_y2656, align 4, !tbaa !8
  br label %cond.end2662

cond.end2662:                                     ; preds = %cond.false2661, %cond.true2660
  %cond2663 = phi i32 [ %2275, %cond.true2660 ], [ %2276, %cond.false2661 ]
  store i32 %cond2663, ptr %tmp2657, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2656) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2655) #5
  %2277 = load i32, ptr %tmp2657, align 4, !tbaa !8
  %add2664 = add nsw i32 %2277, 1
  store i32 %add2664, ptr %k2, align 4, !tbaa !8
  %2278 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %2278, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond2665

for.cond2665:                                     ; preds = %for.inc2706, %cond.end2662
  %2279 = load i32, ptr %l, align 4, !tbaa !8
  %2280 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp2666 = icmp sle i32 %2279, %2280
  br i1 %cmp2666, label %for.body2668, label %for.end2708

for.body2668:                                     ; preds = %for.cond2665
  %2281 = load i32, ptr %l, align 4, !tbaa !8
  %sub2669 = sub nsw i32 %2281, 1
  %2282 = load i32, ptr %nb, align 4, !tbaa !8
  %mul2670 = mul nsw i32 %sub2669, %2282
  %add2671 = add nsw i32 %mul2670, 1
  store i32 %add2671, ptr %l1, align 4, !tbaa !8
  %2283 = load i32, ptr %l, align 4, !tbaa !8
  %2284 = load i32, ptr %nb, align 4, !tbaa !8
  %mul2672 = mul nsw i32 %2283, %2284
  store i32 %mul2672, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2673) #5
  %2285 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %2285, ptr %_x2673, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2674) #5
  %2286 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2287 = load i32, ptr %2286, align 4, !tbaa !8
  store i32 %2287, ptr %_y2674, align 4, !tbaa !8
  %2288 = load i32, ptr %_x2673, align 4, !tbaa !8
  %2289 = load i32, ptr %_y2674, align 4, !tbaa !8
  %cmp2676 = icmp slt i32 %2288, %2289
  br i1 %cmp2676, label %cond.true2678, label %cond.false2679

cond.true2678:                                    ; preds = %for.body2668
  %2290 = load i32, ptr %_x2673, align 4, !tbaa !8
  br label %cond.end2680

cond.false2679:                                   ; preds = %for.body2668
  %2291 = load i32, ptr %_y2674, align 4, !tbaa !8
  br label %cond.end2680

cond.end2680:                                     ; preds = %cond.false2679, %cond.true2678
  %cond2681 = phi i32 [ %2290, %cond.true2678 ], [ %2291, %cond.false2679 ]
  store i32 %cond2681, ptr %tmp2675, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2674) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2673) #5
  %2292 = load i32, ptr %tmp2675, align 4, !tbaa !8
  %add2682 = add nsw i32 %2292, 1
  store i32 %add2682, ptr %l2, align 4, !tbaa !8
  %2293 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %2294 = load float, ptr %2293, align 4, !tbaa !10
  %2295 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2296 = load i32, ptr %k, align 4, !tbaa !8
  %2297 = load i32, ptr %l, align 4, !tbaa !8
  %2298 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %mul2683 = mul nsw i32 %2297, %2298
  %add2684 = add nsw i32 %2296, %mul2683
  %idxprom2685 = sext i32 %add2684 to i64
  %arrayidx2686 = getelementptr inbounds float, ptr %2295, i64 %idxprom2685
  %2299 = load float, ptr %arrayidx2686, align 4, !tbaa !10
  %div2687 = fdiv float %2294, %2299
  store float %div2687, ptr %scal, align 4, !tbaa !10
  %2300 = load float, ptr %scal, align 4, !tbaa !10
  %cmp2688 = fcmp une float %2300, 1.000000e+00
  br i1 %cmp2688, label %if.then2690, label %if.end2705

if.then2690:                                      ; preds = %cond.end2680
  %2301 = load i32, ptr %l2, align 4, !tbaa !8
  %sub2691 = sub nsw i32 %2301, 1
  store i32 %sub2691, ptr %i__3, align 4, !tbaa !8
  %2302 = load i32, ptr %l1, align 4, !tbaa !8
  store i32 %2302, ptr %ll, align 4, !tbaa !8
  br label %for.cond2692

for.cond2692:                                     ; preds = %for.inc2702, %if.then2690
  %2303 = load i32, ptr %ll, align 4, !tbaa !8
  %2304 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2693 = icmp sle i32 %2303, %2304
  br i1 %cmp2693, label %for.body2695, label %for.end2704

for.body2695:                                     ; preds = %for.cond2692
  %2305 = load i32, ptr %k2, align 4, !tbaa !8
  %2306 = load i32, ptr %k1, align 4, !tbaa !8
  %sub2696 = sub nsw i32 %2305, %2306
  store i32 %sub2696, ptr %i__4, align 4, !tbaa !8
  %2307 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2308 = load i32, ptr %k1, align 4, !tbaa !8
  %2309 = load i32, ptr %ll, align 4, !tbaa !8
  %2310 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2697 = mul nsw i32 %2309, %2310
  %add2698 = add nsw i32 %2308, %mul2697
  %idxprom2699 = sext i32 %add2698 to i64
  %arrayidx2700 = getelementptr inbounds %struct.complex, ptr %2307, i64 %idxprom2699
  %call2701 = call i32 @csscal_(ptr noundef %i__4, ptr noundef %scal, ptr noundef %arrayidx2700, ptr noundef @c__1)
  br label %for.inc2702

for.inc2702:                                      ; preds = %for.body2695
  %2311 = load i32, ptr %ll, align 4, !tbaa !8
  %inc2703 = add nsw i32 %2311, 1
  store i32 %inc2703, ptr %ll, align 4, !tbaa !8
  br label %for.cond2692, !llvm.loop !82

for.end2704:                                      ; preds = %for.cond2692
  br label %if.end2705

if.end2705:                                       ; preds = %for.end2704, %cond.end2680
  br label %for.inc2706

for.inc2706:                                      ; preds = %if.end2705
  %2312 = load i32, ptr %l, align 4, !tbaa !8
  %inc2707 = add nsw i32 %2312, 1
  store i32 %inc2707, ptr %l, align 4, !tbaa !8
  br label %for.cond2665, !llvm.loop !83

for.end2708:                                      ; preds = %for.cond2665
  br label %for.inc2709

for.inc2709:                                      ; preds = %for.end2708
  %2313 = load i32, ptr %k, align 4, !tbaa !8
  %inc2710 = add nsw i32 %2313, 1
  store i32 %inc2710, ptr %k, align 4, !tbaa !8
  br label %for.cond2647, !llvm.loop !84

for.end2711:                                      ; preds = %for.cond2647
  %2314 = load float, ptr %buf, align 4, !tbaa !10
  %cmp2712 = fcmp une float %2314, 1.000000e+00
  br i1 %cmp2712, label %land.lhs.true2714, label %if.end2731

land.lhs.true2714:                                ; preds = %for.end2711
  %2315 = load float, ptr %buf, align 4, !tbaa !10
  %cmp2715 = fcmp ogt float %2315, 0.000000e+00
  br i1 %cmp2715, label %if.then2717, label %if.end2731

if.then2717:                                      ; preds = %land.lhs.true2714
  %2316 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %2317 = load float, ptr %2316, align 4, !tbaa !10
  %2318 = load float, ptr %smlnum, align 4, !tbaa !10
  %div2718 = fdiv float %2317, %2318
  store float %div2718, ptr %r__1, align 4, !tbaa !10
  %2319 = load float, ptr %buf, align 4, !tbaa !10
  %div2719 = fdiv float 1.000000e+00, %2319
  store float %div2719, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2720) #5
  %2320 = load float, ptr %r__1, align 4, !tbaa !10
  store float %2320, ptr %_x2720, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2721) #5
  %2321 = load float, ptr %r__2, align 4, !tbaa !10
  store float %2321, ptr %_y2721, align 4, !tbaa !10
  %2322 = load float, ptr %_x2720, align 4, !tbaa !10
  %2323 = load float, ptr %_y2721, align 4, !tbaa !10
  %cmp2723 = fcmp olt float %2322, %2323
  br i1 %cmp2723, label %cond.true2725, label %cond.false2726

cond.true2725:                                    ; preds = %if.then2717
  %2324 = load float, ptr %_x2720, align 4, !tbaa !10
  br label %cond.end2727

cond.false2726:                                   ; preds = %if.then2717
  %2325 = load float, ptr %_y2721, align 4, !tbaa !10
  br label %cond.end2727

cond.end2727:                                     ; preds = %cond.false2726, %cond.true2725
  %cond2728 = phi float [ %2324, %cond.true2725 ], [ %2325, %cond.false2726 ]
  store float %cond2728, ptr %tmp2722, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2721) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2720) #5
  %2326 = load float, ptr %tmp2722, align 4, !tbaa !10
  store float %2326, ptr %scaloc, align 4, !tbaa !10
  %2327 = load float, ptr %scaloc, align 4, !tbaa !10
  %2328 = load float, ptr %buf, align 4, !tbaa !10
  %mul2729 = fmul float %2328, %2327
  store float %mul2729, ptr %buf, align 4, !tbaa !10
  %2329 = load float, ptr %scaloc, align 4, !tbaa !10
  %2330 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %2331 = load float, ptr %2330, align 4, !tbaa !10
  %div2730 = fdiv float %2331, %2329
  store float %div2730, ptr %2330, align 4, !tbaa !10
  br label %if.end2731

if.end2731:                                       ; preds = %cond.end2727, %land.lhs.true2714, %for.end2711
  %2332 = load float, ptr %buf, align 4, !tbaa !10
  %cmp2732 = fcmp une float %2332, 1.000000e+00
  br i1 %cmp2732, label %land.lhs.true2734, label %if.end2842

land.lhs.true2734:                                ; preds = %if.end2731
  %2333 = load float, ptr %buf, align 4, !tbaa !10
  %cmp2735 = fcmp ogt float %2333, 0.000000e+00
  br i1 %cmp2735, label %if.then2737, label %if.end2842

if.then2737:                                      ; preds = %land.lhs.true2734
  %2334 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add2738 = add nsw i32 %2334, 1
  store i32 %add2738, ptr %i__1, align 4, !tbaa !8
  %2335 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2336 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom2739 = sext i32 %2336 to i64
  %arrayidx2740 = getelementptr inbounds %struct.complex, ptr %2335, i64 %idxprom2739
  %r2741 = getelementptr inbounds %struct.complex, ptr %arrayidx2740, i32 0, i32 0
  %2337 = load float, ptr %r2741, align 4, !tbaa !19
  store float %2337, ptr %r__1, align 4, !tbaa !10
  %2338 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp2742 = fcmp oge float %2338, 0.000000e+00
  br i1 %cmp2742, label %cond.true2744, label %cond.false2745

cond.true2744:                                    ; preds = %if.then2737
  %2339 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end2747

cond.false2745:                                   ; preds = %if.then2737
  %2340 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg2746 = fneg float %2340
  br label %cond.end2747

cond.end2747:                                     ; preds = %cond.false2745, %cond.true2744
  %cond2748 = phi float [ %2339, %cond.true2744 ], [ %fneg2746, %cond.false2745 ]
  store float %cond2748, ptr %r__3, align 4, !tbaa !10
  %2341 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2342 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add2749 = add nsw i32 %2342, 1
  %idxprom2750 = sext i32 %add2749 to i64
  %arrayidx2751 = getelementptr inbounds %struct.complex, ptr %2341, i64 %idxprom2750
  %call2752 = call double @r_imag(ptr noundef %arrayidx2751)
  %conv2753 = fptrunc double %call2752 to float
  store float %conv2753, ptr %r__2, align 4, !tbaa !10
  %2343 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp2754 = fcmp oge float %2343, 0.000000e+00
  br i1 %cmp2754, label %cond.true2756, label %cond.false2757

cond.true2756:                                    ; preds = %cond.end2747
  %2344 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end2759

cond.false2757:                                   ; preds = %cond.end2747
  %2345 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg2758 = fneg float %2345
  br label %cond.end2759

cond.end2759:                                     ; preds = %cond.false2757, %cond.true2756
  %cond2760 = phi float [ %2344, %cond.true2756 ], [ %fneg2758, %cond.false2757 ]
  store float %cond2760, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2761) #5
  %2346 = load float, ptr %r__3, align 4, !tbaa !10
  store float %2346, ptr %_x2761, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2762) #5
  %2347 = load float, ptr %r__4, align 4, !tbaa !10
  store float %2347, ptr %_y2762, align 4, !tbaa !10
  %2348 = load float, ptr %_x2761, align 4, !tbaa !10
  %2349 = load float, ptr %_y2762, align 4, !tbaa !10
  %cmp2764 = fcmp ogt float %2348, %2349
  br i1 %cmp2764, label %cond.true2766, label %cond.false2767

cond.true2766:                                    ; preds = %cond.end2759
  %2350 = load float, ptr %_x2761, align 4, !tbaa !10
  br label %cond.end2768

cond.false2767:                                   ; preds = %cond.end2759
  %2351 = load float, ptr %_y2762, align 4, !tbaa !10
  br label %cond.end2768

cond.end2768:                                     ; preds = %cond.false2767, %cond.true2766
  %cond2769 = phi float [ %2350, %cond.true2766 ], [ %2351, %cond.false2767 ]
  store float %cond2769, ptr %tmp2763, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2762) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2761) #5
  %2352 = load float, ptr %tmp2763, align 4, !tbaa !10
  store float %2352, ptr %scal, align 4, !tbaa !10
  %2353 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %2354 = load i32, ptr %2353, align 4, !tbaa !8
  store i32 %2354, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond2770

for.cond2770:                                     ; preds = %for.inc2824, %cond.end2768
  %2355 = load i32, ptr %k, align 4, !tbaa !8
  %2356 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp2771 = icmp sle i32 %2355, %2356
  br i1 %cmp2771, label %for.body2773, label %for.end2826

for.body2773:                                     ; preds = %for.cond2770
  %2357 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2358 = load i32, ptr %2357, align 4, !tbaa !8
  store i32 %2358, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond2774

for.cond2774:                                     ; preds = %for.inc2821, %for.body2773
  %2359 = load i32, ptr %l, align 4, !tbaa !8
  %2360 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp2775 = icmp sle i32 %2359, %2360
  br i1 %cmp2775, label %for.body2777, label %for.end2823

for.body2777:                                     ; preds = %for.cond2774
  %2361 = load i32, ptr %k, align 4, !tbaa !8
  %2362 = load i32, ptr %l, align 4, !tbaa !8
  %2363 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2778 = mul nsw i32 %2362, %2363
  %add2779 = add nsw i32 %2361, %mul2778
  store i32 %add2779, ptr %i__3, align 4, !tbaa !8
  %2364 = load float, ptr %scal, align 4, !tbaa !10
  store float %2364, ptr %r__3, align 4, !tbaa !10
  %2365 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2366 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom2780 = sext i32 %2366 to i64
  %arrayidx2781 = getelementptr inbounds %struct.complex, ptr %2365, i64 %idxprom2780
  %r2782 = getelementptr inbounds %struct.complex, ptr %arrayidx2781, i32 0, i32 0
  %2367 = load float, ptr %r2782, align 4, !tbaa !19
  store float %2367, ptr %r__1, align 4, !tbaa !10
  %2368 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp2783 = fcmp oge float %2368, 0.000000e+00
  br i1 %cmp2783, label %cond.true2785, label %cond.false2786

cond.true2785:                                    ; preds = %for.body2777
  %2369 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end2788

cond.false2786:                                   ; preds = %for.body2777
  %2370 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg2787 = fneg float %2370
  br label %cond.end2788

cond.end2788:                                     ; preds = %cond.false2786, %cond.true2785
  %cond2789 = phi float [ %2369, %cond.true2785 ], [ %fneg2787, %cond.false2786 ]
  store float %cond2789, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2790) #5
  %2371 = load float, ptr %r__3, align 4, !tbaa !10
  store float %2371, ptr %_x2790, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2791) #5
  %2372 = load float, ptr %r__4, align 4, !tbaa !10
  store float %2372, ptr %_y2791, align 4, !tbaa !10
  %2373 = load float, ptr %_x2790, align 4, !tbaa !10
  %2374 = load float, ptr %_y2791, align 4, !tbaa !10
  %cmp2793 = fcmp ogt float %2373, %2374
  br i1 %cmp2793, label %cond.true2795, label %cond.false2796

cond.true2795:                                    ; preds = %cond.end2788
  %2375 = load float, ptr %_x2790, align 4, !tbaa !10
  br label %cond.end2797

cond.false2796:                                   ; preds = %cond.end2788
  %2376 = load float, ptr %_y2791, align 4, !tbaa !10
  br label %cond.end2797

cond.end2797:                                     ; preds = %cond.false2796, %cond.true2795
  %cond2798 = phi float [ %2375, %cond.true2795 ], [ %2376, %cond.false2796 ]
  store float %cond2798, ptr %tmp2792, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2791) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2790) #5
  %2377 = load float, ptr %tmp2792, align 4, !tbaa !10
  store float %2377, ptr %r__3, align 4, !tbaa !10
  %2378 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2379 = load i32, ptr %k, align 4, !tbaa !8
  %2380 = load i32, ptr %l, align 4, !tbaa !8
  %2381 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul2799 = mul nsw i32 %2380, %2381
  %add2800 = add nsw i32 %2379, %mul2799
  %idxprom2801 = sext i32 %add2800 to i64
  %arrayidx2802 = getelementptr inbounds %struct.complex, ptr %2378, i64 %idxprom2801
  %call2803 = call double @r_imag(ptr noundef %arrayidx2802)
  %conv2804 = fptrunc double %call2803 to float
  store float %conv2804, ptr %r__2, align 4, !tbaa !10
  %2382 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp2805 = fcmp oge float %2382, 0.000000e+00
  br i1 %cmp2805, label %cond.true2807, label %cond.false2808

cond.true2807:                                    ; preds = %cond.end2797
  %2383 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end2810

cond.false2808:                                   ; preds = %cond.end2797
  %2384 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg2809 = fneg float %2384
  br label %cond.end2810

cond.end2810:                                     ; preds = %cond.false2808, %cond.true2807
  %cond2811 = phi float [ %2383, %cond.true2807 ], [ %fneg2809, %cond.false2808 ]
  store float %cond2811, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2812) #5
  %2385 = load float, ptr %r__3, align 4, !tbaa !10
  store float %2385, ptr %_x2812, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2813) #5
  %2386 = load float, ptr %r__4, align 4, !tbaa !10
  store float %2386, ptr %_y2813, align 4, !tbaa !10
  %2387 = load float, ptr %_x2812, align 4, !tbaa !10
  %2388 = load float, ptr %_y2813, align 4, !tbaa !10
  %cmp2815 = fcmp ogt float %2387, %2388
  br i1 %cmp2815, label %cond.true2817, label %cond.false2818

cond.true2817:                                    ; preds = %cond.end2810
  %2389 = load float, ptr %_x2812, align 4, !tbaa !10
  br label %cond.end2819

cond.false2818:                                   ; preds = %cond.end2810
  %2390 = load float, ptr %_y2813, align 4, !tbaa !10
  br label %cond.end2819

cond.end2819:                                     ; preds = %cond.false2818, %cond.true2817
  %cond2820 = phi float [ %2389, %cond.true2817 ], [ %2390, %cond.false2818 ]
  store float %cond2820, ptr %tmp2814, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2813) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2812) #5
  %2391 = load float, ptr %tmp2814, align 4, !tbaa !10
  store float %2391, ptr %scal, align 4, !tbaa !10
  br label %for.inc2821

for.inc2821:                                      ; preds = %cond.end2819
  %2392 = load i32, ptr %l, align 4, !tbaa !8
  %inc2822 = add nsw i32 %2392, 1
  store i32 %inc2822, ptr %l, align 4, !tbaa !8
  br label %for.cond2774, !llvm.loop !85

for.end2823:                                      ; preds = %for.cond2774
  br label %for.inc2824

for.inc2824:                                      ; preds = %for.end2823
  %2393 = load i32, ptr %k, align 4, !tbaa !8
  %inc2825 = add nsw i32 %2393, 1
  store i32 %inc2825, ptr %k, align 4, !tbaa !8
  br label %for.cond2770, !llvm.loop !86

for.end2826:                                      ; preds = %for.cond2770
  %2394 = load float, ptr %bignum, align 4, !tbaa !10
  %2395 = load float, ptr %scal, align 4, !tbaa !10
  %div2827 = fdiv float %2394, %2395
  store float %div2827, ptr %r__1, align 4, !tbaa !10
  %2396 = load float, ptr %buf, align 4, !tbaa !10
  %div2828 = fdiv float 1.000000e+00, %2396
  store float %div2828, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2829) #5
  %2397 = load float, ptr %r__1, align 4, !tbaa !10
  store float %2397, ptr %_x2829, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2830) #5
  %2398 = load float, ptr %r__2, align 4, !tbaa !10
  store float %2398, ptr %_y2830, align 4, !tbaa !10
  %2399 = load float, ptr %_x2829, align 4, !tbaa !10
  %2400 = load float, ptr %_y2830, align 4, !tbaa !10
  %cmp2832 = fcmp olt float %2399, %2400
  br i1 %cmp2832, label %cond.true2834, label %cond.false2835

cond.true2834:                                    ; preds = %for.end2826
  %2401 = load float, ptr %_x2829, align 4, !tbaa !10
  br label %cond.end2836

cond.false2835:                                   ; preds = %for.end2826
  %2402 = load float, ptr %_y2830, align 4, !tbaa !10
  br label %cond.end2836

cond.end2836:                                     ; preds = %cond.false2835, %cond.true2834
  %cond2837 = phi float [ %2401, %cond.true2834 ], [ %2402, %cond.false2835 ]
  store float %cond2837, ptr %tmp2831, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2830) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2829) #5
  %2403 = load float, ptr %tmp2831, align 4, !tbaa !10
  store float %2403, ptr %scaloc, align 4, !tbaa !10
  %2404 = load float, ptr %scaloc, align 4, !tbaa !10
  %2405 = load float, ptr %buf, align 4, !tbaa !10
  %mul2838 = fmul float %2405, %2404
  store float %mul2838, ptr %buf, align 4, !tbaa !10
  %2406 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %2407 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2408 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %2409 = load i32, ptr %c_offset, align 4, !tbaa !8
  %idxprom2839 = sext i32 %2409 to i64
  %arrayidx2840 = getelementptr inbounds %struct.complex, ptr %2408, i64 %idxprom2839
  %2410 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call2841 = call i32 @clascl_(ptr noundef @.str.8, ptr noundef @c_n1, ptr noundef @c_n1, ptr noundef @c_b106, ptr noundef %scaloc, ptr noundef %2406, ptr noundef %2407, ptr noundef %arrayidx2840, ptr noundef %2410, ptr noundef %iinfo)
  br label %if.end2842

if.end2842:                                       ; preds = %cond.end2836, %land.lhs.true2734, %if.end2731
  %2411 = load float, ptr %buf, align 4, !tbaa !10
  %2412 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %2413 = load float, ptr %2412, align 4, !tbaa !10
  %mul2843 = fmul float %2413, %2411
  store float %mul2843, ptr %2412, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2844) #5
  %2414 = load i32, ptr %nba, align 4, !tbaa !8
  store i32 %2414, ptr %_x2844, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2845) #5
  %2415 = load i32, ptr %nbb, align 4, !tbaa !8
  store i32 %2415, ptr %_y2845, align 4, !tbaa !8
  %2416 = load i32, ptr %_x2844, align 4, !tbaa !8
  %2417 = load i32, ptr %_y2845, align 4, !tbaa !8
  %cmp2847 = icmp sgt i32 %2416, %2417
  br i1 %cmp2847, label %cond.true2849, label %cond.false2850

cond.true2849:                                    ; preds = %if.end2842
  %2418 = load i32, ptr %_x2844, align 4, !tbaa !8
  br label %cond.end2851

cond.false2850:                                   ; preds = %if.end2842
  %2419 = load i32, ptr %_y2845, align 4, !tbaa !8
  br label %cond.end2851

cond.end2851:                                     ; preds = %cond.false2850, %cond.true2849
  %cond2852 = phi i32 [ %2418, %cond.true2849 ], [ %2419, %cond.false2850 ]
  store i32 %cond2852, ptr %tmp2846, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2845) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2844) #5
  %2420 = load i32, ptr %tmp2846, align 4, !tbaa !8
  %conv2853 = sitofp i32 %2420 to float
  %2421 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2422 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %add2854 = add nsw i32 %2422, 1
  %idxprom2855 = sext i32 %add2854 to i64
  %arrayidx2856 = getelementptr inbounds float, ptr %2421, i64 %idxprom2855
  store float %conv2853, ptr %arrayidx2856, align 4, !tbaa !10
  %2423 = load i32, ptr %nbb, align 4, !tbaa !8
  %shl2857 = shl i32 %2423, 1
  %2424 = load i32, ptr %nba, align 4, !tbaa !8
  %add2858 = add nsw i32 %shl2857, %2424
  %conv2859 = sitofp i32 %add2858 to float
  %2425 = load ptr, ptr %swork.addr, align 8, !tbaa !4
  %2426 = load i32, ptr %swork_dim1, align 4, !tbaa !8
  %add2860 = add nsw i32 %2426, 2
  %idxprom2861 = sext i32 %add2860 to i64
  %arrayidx2862 = getelementptr inbounds float, ptr %2425, i64 %idxprom2861
  store float %conv2859, ptr %arrayidx2862, align 4, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end2851, %cond.end2634, %if.then175, %if.then150, %if.then143, %if.then138
  call void @llvm.lifetime.end.p0(i64 4, ptr %lquery) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %smlnum) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %notrnb) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %notrna) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bignum) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %scamin) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %scaloc) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %iinfo) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %xnrm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %wnrm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bwrk) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %awrk) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnrm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %bnrm) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %anrm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %csgn) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %scal) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %sgn) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %buf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbb) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nba) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ll) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %swork_offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %swork_dim1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_dim1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #5
  %2427 = load i32, ptr %retval, align 4
  ret i32 %2427
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #3

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @xerbla_(ptr noundef, ptr noundef) #3

declare i32 @ctrsyl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare float @slamch_(ptr noundef) #3

declare float @clange_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare double @frexp(double noundef, ptr noundef) #4

declare double @pow_dd(ptr noundef, ptr noundef) #3

declare float @slarmm_(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @csscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @cgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare double @r_imag(ptr noundef) #3

declare i32 @clascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = !{!20, !11, i64 0}
!20 = !{!"", !11, i64 0, !11, i64 4}
!21 = !{!20, !11, i64 4}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !6, i64 0}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}

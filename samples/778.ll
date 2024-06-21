; ModuleID = 'samples/778.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/ssbgst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SSBGST\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b8 = internal global float 0.000000e+00, align 4
@c_b9 = internal global float 1.000000e+00, align 4
@c__1 = internal global i32 1, align 4
@c_b20 = internal global float -1.000000e+00, align 4

; Function Attrs: nounwind uwtable
define i32 @ssbgst_(ptr noundef %vect, ptr noundef %uplo, ptr noundef %n, ptr noundef %ka, ptr noundef %kb, ptr noundef %ab, ptr noundef %ldab, ptr noundef %bb, ptr noundef %ldbb, ptr noundef %x, ptr noundef %ldx, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %vect.addr = alloca ptr, align 8
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %ka.addr = alloca ptr, align 8
  %kb.addr = alloca ptr, align 8
  %ab.addr = alloca ptr, align 8
  %ldab.addr = alloca ptr, align 8
  %bb.addr = alloca ptr, align 8
  %ldbb.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ldx.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %ab_dim1 = alloca i32, align 4
  %ab_offset = alloca i32, align 4
  %bb_dim1 = alloca i32, align 4
  %bb_offset = alloca i32, align 4
  %x_dim1 = alloca i32, align 4
  %x_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %t = alloca float, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %ra = alloca float, align 4
  %nr = alloca i32, align 4
  %nx = alloca i32, align 4
  %ka1 = alloca i32, align 4
  %kb1 = alloca i32, align 4
  %ra1 = alloca float, align 4
  %j1t = alloca i32, align 4
  %j2t = alloca i32, align 4
  %bii = alloca float, align 4
  %kbt = alloca i32, align 4
  %nrt = alloca i32, align 4
  %inca = alloca i32, align 4
  %upper = alloca i32, align 4
  %wantx = alloca i32, align 4
  %update = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x67 = alloca i32, align 4
  %_y68 = alloca i32, align 4
  %tmp69 = alloca i32, align 4
  %_x77 = alloca i32, align 4
  %_y78 = alloca i32, align 4
  %tmp79 = alloca i32, align 4
  %_x119 = alloca i32, align 4
  %_y120 = alloca i32, align 4
  %tmp121 = alloca i32, align 4
  %_x212 = alloca i32, align 4
  %_y213 = alloca i32, align 4
  %tmp214 = alloca i32, align 4
  %_x255 = alloca i32, align 4
  %_y256 = alloca i32, align 4
  %tmp257 = alloca i32, align 4
  %_x423 = alloca i32, align 4
  %_y424 = alloca i32, align 4
  %tmp425 = alloca i32, align 4
  %_x444 = alloca i32, align 4
  %_y445 = alloca i32, align 4
  %tmp446 = alloca i32, align 4
  %_x674 = alloca i32, align 4
  %_y675 = alloca i32, align 4
  %tmp676 = alloca i32, align 4
  %_x690 = alloca i32, align 4
  %_y691 = alloca i32, align 4
  %tmp692 = alloca i32, align 4
  %_x842 = alloca i32, align 4
  %_y843 = alloca i32, align 4
  %tmp844 = alloca i32, align 4
  %_x1003 = alloca i32, align 4
  %_y1004 = alloca i32, align 4
  %tmp1005 = alloca i32, align 4
  %_x1107 = alloca i32, align 4
  %_y1108 = alloca i32, align 4
  %tmp1109 = alloca i32, align 4
  %_x1205 = alloca i32, align 4
  %_y1206 = alloca i32, align 4
  %tmp1207 = alloca i32, align 4
  %_x1251 = alloca i32, align 4
  %_y1252 = alloca i32, align 4
  %tmp1253 = alloca i32, align 4
  %_x1424 = alloca i32, align 4
  %_y1425 = alloca i32, align 4
  %tmp1426 = alloca i32, align 4
  %_x1447 = alloca i32, align 4
  %_y1448 = alloca i32, align 4
  %tmp1449 = alloca i32, align 4
  %_x1684 = alloca i32, align 4
  %_y1685 = alloca i32, align 4
  %tmp1686 = alloca i32, align 4
  %_x1700 = alloca i32, align 4
  %_y1701 = alloca i32, align 4
  %tmp1702 = alloca i32, align 4
  %_x1856 = alloca i32, align 4
  %_y1857 = alloca i32, align 4
  %tmp1858 = alloca i32, align 4
  %_x2017 = alloca i32, align 4
  %_y2018 = alloca i32, align 4
  %tmp2019 = alloca i32, align 4
  %_x2103 = alloca i32, align 4
  %_y2104 = alloca i32, align 4
  %tmp2105 = alloca i32, align 4
  %_x2114 = alloca i32, align 4
  %_y2115 = alloca i32, align 4
  %tmp2116 = alloca i32, align 4
  %_x2171 = alloca i32, align 4
  %_y2172 = alloca i32, align 4
  %tmp2173 = alloca i32, align 4
  %_x2267 = alloca i32, align 4
  %_y2268 = alloca i32, align 4
  %tmp2269 = alloca i32, align 4
  %_x2314 = alloca i32, align 4
  %_y2315 = alloca i32, align 4
  %tmp2316 = alloca i32, align 4
  %_x2479 = alloca i32, align 4
  %_y2480 = alloca i32, align 4
  %tmp2481 = alloca i32, align 4
  %_x2502 = alloca i32, align 4
  %_y2503 = alloca i32, align 4
  %tmp2504 = alloca i32, align 4
  %_x2727 = alloca i32, align 4
  %_y2728 = alloca i32, align 4
  %tmp2729 = alloca i32, align 4
  %_x2743 = alloca i32, align 4
  %_y2744 = alloca i32, align 4
  %tmp2745 = alloca i32, align 4
  %_x2918 = alloca i32, align 4
  %_y2919 = alloca i32, align 4
  %tmp2920 = alloca i32, align 4
  %_x3098 = alloca i32, align 4
  %_y3099 = alloca i32, align 4
  %tmp3100 = alloca i32, align 4
  %_x3150 = alloca i32, align 4
  %_y3151 = alloca i32, align 4
  %tmp3152 = alloca i32, align 4
  %_x3204 = alloca i32, align 4
  %_y3205 = alloca i32, align 4
  %tmp3206 = alloca i32, align 4
  %_x3300 = alloca i32, align 4
  %_y3301 = alloca i32, align 4
  %tmp3302 = alloca i32, align 4
  %_x3347 = alloca i32, align 4
  %_y3348 = alloca i32, align 4
  %tmp3349 = alloca i32, align 4
  %_x3514 = alloca i32, align 4
  %_y3515 = alloca i32, align 4
  %tmp3516 = alloca i32, align 4
  %_x3537 = alloca i32, align 4
  %_y3538 = alloca i32, align 4
  %tmp3539 = alloca i32, align 4
  %_x3762 = alloca i32, align 4
  %_y3763 = alloca i32, align 4
  %tmp3764 = alloca i32, align 4
  %_x3778 = alloca i32, align 4
  %_y3779 = alloca i32, align 4
  %tmp3780 = alloca i32, align 4
  %_x3953 = alloca i32, align 4
  %_y3954 = alloca i32, align 4
  %tmp3955 = alloca i32, align 4
  %_x4137 = alloca i32, align 4
  %_y4138 = alloca i32, align 4
  %tmp4139 = alloca i32, align 4
  %_x4194 = alloca i32, align 4
  %_y4195 = alloca i32, align 4
  %tmp4196 = alloca i32, align 4
  store ptr %vect, ptr %vect.addr, align 8, !tbaa !4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %ka, ptr %ka.addr, align 8, !tbaa !4
  store ptr %kb, ptr %kb.addr, align 8, !tbaa !4
  store ptr %ab, ptr %ab.addr, align 8, !tbaa !4
  store ptr %ldab, ptr %ldab.addr, align 8, !tbaa !4
  store ptr %bb, ptr %bb.addr, align 8, !tbaa !4
  store ptr %ldbb, ptr %ldbb.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %ldx, ptr %ldx.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bb_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bb_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i0) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ra) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ka1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kb1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ra1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j1t) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j2t) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bii) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kbt) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrt) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inca) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %update) #4
  %0 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %ab_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %ab_offset, align 4, !tbaa !8
  %3 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %ab.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ldbb.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %bb_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %bb_offset, align 4, !tbaa !8
  %8 = load i32, ptr %bb_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds float, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %bb.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %x_dim1, align 4, !tbaa !8
  %12 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add5 = add nsw i32 1, %12
  store i32 %add5, ptr %x_offset, align 4, !tbaa !8
  %13 = load i32, ptr %x_offset, align 4, !tbaa !8
  %14 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %idx.ext6 = sext i32 %13 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds float, ptr %14, i64 %idx.neg7
  store ptr %add.ptr8, ptr %x.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %15, i32 -1
  store ptr %incdec.ptr, ptr %work.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %vect.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %16, ptr noundef @.str)
  store i32 %call, ptr %wantx, align 4, !tbaa !8
  %17 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call9 = call i32 @lsame_(ptr noundef %17, ptr noundef @.str.1)
  store i32 %call9, ptr %upper, align 4, !tbaa !8
  %18 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %19 = load i32, ptr %18, align 4, !tbaa !8
  %add10 = add nsw i32 %19, 1
  store i32 %add10, ptr %ka1, align 4, !tbaa !8
  %20 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %add11 = add nsw i32 %21, 1
  store i32 %add11, ptr %kb1, align 4, !tbaa !8
  %22 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %22, align 4, !tbaa !8
  %23 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %24 = load ptr, ptr %vect.addr, align 8, !tbaa !4
  %call12 = call i32 @lsame_(ptr noundef %24, ptr noundef @.str.2)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %25 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %25, align 4, !tbaa !8
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true, %entry
  %26 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool14 = icmp ne i32 %26, 0
  br i1 %tobool14, label %if.else19, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.else
  %27 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call16 = call i32 @lsame_(ptr noundef %27, ptr noundef @.str.3)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  %28 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %28, align 4, !tbaa !8
  br label %if.end49

if.else19:                                        ; preds = %land.lhs.true15, %if.else
  %29 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  %cmp = icmp slt i32 %30, 0
  br i1 %cmp, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else19
  %31 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %31, align 4, !tbaa !8
  br label %if.end48

if.else21:                                        ; preds = %if.else19
  %32 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %33 = load i32, ptr %32, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %33, 0
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.else21
  %34 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %34, align 4, !tbaa !8
  br label %if.end47

if.else24:                                        ; preds = %if.else21
  %35 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %cmp25 = icmp slt i32 %36, 0
  br i1 %cmp25, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else24
  %37 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %39 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %40 = load i32, ptr %39, align 4, !tbaa !8
  %cmp26 = icmp sgt i32 %38, %40
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %lor.lhs.false, %if.else24
  %41 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %41, align 4, !tbaa !8
  br label %if.end46

if.else28:                                        ; preds = %lor.lhs.false
  %42 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %43 = load i32, ptr %42, align 4, !tbaa !8
  %44 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %45 = load i32, ptr %44, align 4, !tbaa !8
  %add29 = add nsw i32 %45, 1
  %cmp30 = icmp slt i32 %43, %add29
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.else28
  %46 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -7, ptr %46, align 4, !tbaa !8
  br label %if.end45

if.else32:                                        ; preds = %if.else28
  %47 = load ptr, ptr %ldbb.addr, align 8, !tbaa !4
  %48 = load i32, ptr %47, align 4, !tbaa !8
  %49 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %50 = load i32, ptr %49, align 4, !tbaa !8
  %add33 = add nsw i32 %50, 1
  %cmp34 = icmp slt i32 %48, %add33
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.else32
  %51 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -9, ptr %51, align 4, !tbaa !8
  br label %if.end44

if.else36:                                        ; preds = %if.else32
  %52 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %53 = load i32, ptr %52, align 4, !tbaa !8
  %cmp37 = icmp slt i32 %53, 1
  br i1 %cmp37, label %if.then43, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %if.else36
  %54 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool39 = icmp ne i32 %54, 0
  br i1 %tobool39, label %land.lhs.true40, label %if.end

land.lhs.true40:                                  ; preds = %lor.lhs.false38
  %55 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #4
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #4
  %57 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %58 = load i32, ptr %57, align 4, !tbaa !8
  store i32 %58, ptr %_y, align 4, !tbaa !8
  %59 = load i32, ptr %_x, align 4, !tbaa !8
  %60 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp41 = icmp sgt i32 %59, %60
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true40
  %61 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true40
  %62 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %61, %cond.true ], [ %62, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #4
  %63 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp42 = icmp slt i32 %56, %63
  br i1 %cmp42, label %if.then43, label %if.end

if.then43:                                        ; preds = %cond.end, %if.else36
  %64 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -11, ptr %64, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then43, %cond.end, %lor.lhs.false38
  br label %if.end44

if.end44:                                         ; preds = %if.end, %if.then35
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then31
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then27
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then23
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then20
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then18
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then
  %65 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %66 = load i32, ptr %65, align 4, !tbaa !8
  %cmp51 = icmp ne i32 %66, 0
  br i1 %cmp51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end50
  %67 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %sub = sub nsw i32 0, %68
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call53 = call i32 @xerbla_(ptr noundef @.str.4, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %69 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %70 = load i32, ptr %69, align 4, !tbaa !8
  %cmp55 = icmp eq i32 %70, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end54
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.end54
  %71 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %72 = load i32, ptr %71, align 4, !tbaa !8
  %73 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul = mul nsw i32 %72, %73
  store i32 %mul, ptr %inca, align 4, !tbaa !8
  %74 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool58 = icmp ne i32 %74, 0
  br i1 %tobool58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end57
  %75 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %76 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %77 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %78 = load i32, ptr %x_offset, align 4, !tbaa !8
  %idxprom = sext i32 %78 to i64
  %arrayidx = getelementptr inbounds float, ptr %77, i64 %idxprom
  %79 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %call60 = call i32 @slaset_(ptr noundef @.str.5, ptr noundef %75, ptr noundef %76, ptr noundef @c_b8, ptr noundef @c_b9, ptr noundef %arrayidx, ptr noundef %79)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57
  %80 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %81 = load i32, ptr %80, align 4, !tbaa !8
  %82 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %83 = load i32, ptr %82, align 4, !tbaa !8
  %add62 = add nsw i32 %81, %83
  %div = sdiv i32 %add62, 2
  store i32 %div, ptr %m, align 4, !tbaa !8
  store i32 1, ptr %update, align 4, !tbaa !8
  %84 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %85 = load i32, ptr %84, align 4, !tbaa !8
  %add63 = add nsw i32 %85, 1
  store i32 %add63, ptr %i__, align 4, !tbaa !8
  br label %L10

L10:                                              ; preds = %if.end2098, %if.end92, %if.end61
  %86 = load i32, ptr %update, align 4, !tbaa !8
  %tobool64 = icmp ne i32 %86, 0
  br i1 %tobool64, label %if.then65, label %if.else94

if.then65:                                        ; preds = %L10
  %87 = load i32, ptr %i__, align 4, !tbaa !8
  %dec = add nsw i32 %87, -1
  store i32 %dec, ptr %i__, align 4, !tbaa !8
  %88 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %89 = load i32, ptr %88, align 4, !tbaa !8
  store i32 %89, ptr %i__1, align 4, !tbaa !8
  %90 = load i32, ptr %i__, align 4, !tbaa !8
  %sub66 = sub nsw i32 %90, 1
  store i32 %sub66, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x67) #4
  %91 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %91, ptr %_x67, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y68) #4
  %92 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %92, ptr %_y68, align 4, !tbaa !8
  %93 = load i32, ptr %_x67, align 4, !tbaa !8
  %94 = load i32, ptr %_y68, align 4, !tbaa !8
  %cmp70 = icmp slt i32 %93, %94
  br i1 %cmp70, label %cond.true71, label %cond.false72

cond.true71:                                      ; preds = %if.then65
  %95 = load i32, ptr %_x67, align 4, !tbaa !8
  br label %cond.end73

cond.false72:                                     ; preds = %if.then65
  %96 = load i32, ptr %_y68, align 4, !tbaa !8
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false72, %cond.true71
  %cond74 = phi i32 [ %95, %cond.true71 ], [ %96, %cond.false72 ]
  store i32 %cond74, ptr %tmp69, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y68) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x67) #4
  %97 = load i32, ptr %tmp69, align 4, !tbaa !8
  store i32 %97, ptr %kbt, align 4, !tbaa !8
  %98 = load i32, ptr %i__, align 4, !tbaa !8
  %sub75 = sub nsw i32 %98, 1
  store i32 %sub75, ptr %i0, align 4, !tbaa !8
  %99 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %100 = load i32, ptr %99, align 4, !tbaa !8
  store i32 %100, ptr %i__1, align 4, !tbaa !8
  %101 = load i32, ptr %i__, align 4, !tbaa !8
  %102 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %103 = load i32, ptr %102, align 4, !tbaa !8
  %add76 = add nsw i32 %101, %103
  store i32 %add76, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x77) #4
  %104 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %104, ptr %_x77, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y78) #4
  %105 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %105, ptr %_y78, align 4, !tbaa !8
  %106 = load i32, ptr %_x77, align 4, !tbaa !8
  %107 = load i32, ptr %_y78, align 4, !tbaa !8
  %cmp80 = icmp slt i32 %106, %107
  br i1 %cmp80, label %cond.true81, label %cond.false82

cond.true81:                                      ; preds = %cond.end73
  %108 = load i32, ptr %_x77, align 4, !tbaa !8
  br label %cond.end83

cond.false82:                                     ; preds = %cond.end73
  %109 = load i32, ptr %_y78, align 4, !tbaa !8
  br label %cond.end83

cond.end83:                                       ; preds = %cond.false82, %cond.true81
  %cond84 = phi i32 [ %108, %cond.true81 ], [ %109, %cond.false82 ]
  store i32 %cond84, ptr %tmp79, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y78) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x77) #4
  %110 = load i32, ptr %tmp79, align 4, !tbaa !8
  store i32 %110, ptr %i1, align 4, !tbaa !8
  %111 = load i32, ptr %i__, align 4, !tbaa !8
  %112 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub85 = sub nsw i32 %111, %112
  %113 = load i32, ptr %ka1, align 4, !tbaa !8
  %add86 = add nsw i32 %sub85, %113
  store i32 %add86, ptr %i2, align 4, !tbaa !8
  %114 = load i32, ptr %i__, align 4, !tbaa !8
  %115 = load i32, ptr %m, align 4, !tbaa !8
  %add87 = add nsw i32 %115, 1
  %cmp88 = icmp slt i32 %114, %add87
  br i1 %cmp88, label %if.then89, label %if.end93

if.then89:                                        ; preds = %cond.end83
  store i32 0, ptr %update, align 4, !tbaa !8
  %116 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %116, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  %117 = load i32, ptr %m, align 4, !tbaa !8
  store i32 %117, ptr %i0, align 4, !tbaa !8
  %118 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %119 = load i32, ptr %118, align 4, !tbaa !8
  %cmp90 = icmp eq i32 %119, 0
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.then89
  br label %L480

if.end92:                                         ; preds = %if.then89
  br label %L10

if.end93:                                         ; preds = %cond.end83
  br label %if.end100

if.else94:                                        ; preds = %L10
  %120 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %121 = load i32, ptr %120, align 4, !tbaa !8
  %122 = load i32, ptr %i__, align 4, !tbaa !8
  %add95 = add nsw i32 %122, %121
  store i32 %add95, ptr %i__, align 4, !tbaa !8
  %123 = load i32, ptr %i__, align 4, !tbaa !8
  %124 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %125 = load i32, ptr %124, align 4, !tbaa !8
  %sub96 = sub nsw i32 %125, 1
  %cmp97 = icmp sgt i32 %123, %sub96
  br i1 %cmp97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.else94
  br label %L480

if.end99:                                         ; preds = %if.else94
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.end93
  %126 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool101 = icmp ne i32 %126, 0
  br i1 %tobool101, label %if.then102, label %if.else1085

if.then102:                                       ; preds = %if.end100
  %127 = load i32, ptr %update, align 4, !tbaa !8
  %tobool103 = icmp ne i32 %127, 0
  br i1 %tobool103, label %if.then104, label %if.end330

if.then104:                                       ; preds = %if.then102
  %128 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %129 = load i32, ptr %kb1, align 4, !tbaa !8
  %130 = load i32, ptr %i__, align 4, !tbaa !8
  %131 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul105 = mul nsw i32 %130, %131
  %add106 = add nsw i32 %129, %mul105
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds float, ptr %128, i64 %idxprom107
  %132 = load float, ptr %arrayidx108, align 4, !tbaa !10
  store float %132, ptr %bii, align 4, !tbaa !10
  %133 = load i32, ptr %i1, align 4, !tbaa !8
  store i32 %133, ptr %i__1, align 4, !tbaa !8
  %134 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %134, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then104
  %135 = load i32, ptr %j, align 4, !tbaa !8
  %136 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp109 = icmp sle i32 %135, %136
  br i1 %cmp109, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %137 = load float, ptr %bii, align 4, !tbaa !10
  %138 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %139 = load i32, ptr %i__, align 4, !tbaa !8
  %140 = load i32, ptr %j, align 4, !tbaa !8
  %sub110 = sub nsw i32 %139, %140
  %141 = load i32, ptr %ka1, align 4, !tbaa !8
  %add111 = add nsw i32 %sub110, %141
  %142 = load i32, ptr %j, align 4, !tbaa !8
  %143 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul112 = mul nsw i32 %142, %143
  %add113 = add nsw i32 %add111, %mul112
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds float, ptr %138, i64 %idxprom114
  %144 = load float, ptr %arrayidx115, align 4, !tbaa !10
  %div116 = fdiv float %144, %137
  store float %div116, ptr %arrayidx115, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %145 = load i32, ptr %j, align 4, !tbaa !8
  %inc117 = add nsw i32 %145, 1
  store i32 %inc117, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %146 = load i32, ptr %i__, align 4, !tbaa !8
  %147 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %148 = load i32, ptr %147, align 4, !tbaa !8
  %sub118 = sub nsw i32 %146, %148
  store i32 %sub118, ptr %i__2, align 4, !tbaa !8
  %149 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %149, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x119) #4
  %150 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %150, ptr %_x119, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y120) #4
  %151 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %151, ptr %_y120, align 4, !tbaa !8
  %152 = load i32, ptr %_x119, align 4, !tbaa !8
  %153 = load i32, ptr %_y120, align 4, !tbaa !8
  %cmp122 = icmp sgt i32 %152, %153
  br i1 %cmp122, label %cond.true123, label %cond.false124

cond.true123:                                     ; preds = %for.end
  %154 = load i32, ptr %_x119, align 4, !tbaa !8
  br label %cond.end125

cond.false124:                                    ; preds = %for.end
  %155 = load i32, ptr %_y120, align 4, !tbaa !8
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false124, %cond.true123
  %cond126 = phi i32 [ %154, %cond.true123 ], [ %155, %cond.false124 ]
  store i32 %cond126, ptr %tmp121, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y120) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x119) #4
  %156 = load i32, ptr %tmp121, align 4, !tbaa !8
  store i32 %156, ptr %j, align 4, !tbaa !8
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc137, %cond.end125
  %157 = load i32, ptr %j, align 4, !tbaa !8
  %158 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp128 = icmp sle i32 %157, %158
  br i1 %cmp128, label %for.body129, label %for.end139

for.body129:                                      ; preds = %for.cond127
  %159 = load float, ptr %bii, align 4, !tbaa !10
  %160 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %161 = load i32, ptr %j, align 4, !tbaa !8
  %162 = load i32, ptr %i__, align 4, !tbaa !8
  %sub130 = sub nsw i32 %161, %162
  %163 = load i32, ptr %ka1, align 4, !tbaa !8
  %add131 = add nsw i32 %sub130, %163
  %164 = load i32, ptr %i__, align 4, !tbaa !8
  %165 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul132 = mul nsw i32 %164, %165
  %add133 = add nsw i32 %add131, %mul132
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds float, ptr %160, i64 %idxprom134
  %166 = load float, ptr %arrayidx135, align 4, !tbaa !10
  %div136 = fdiv float %166, %159
  store float %div136, ptr %arrayidx135, align 4, !tbaa !10
  br label %for.inc137

for.inc137:                                       ; preds = %for.body129
  %167 = load i32, ptr %j, align 4, !tbaa !8
  %inc138 = add nsw i32 %167, 1
  store i32 %inc138, ptr %j, align 4, !tbaa !8
  br label %for.cond127, !llvm.loop !14

for.end139:                                       ; preds = %for.cond127
  %168 = load i32, ptr %i__, align 4, !tbaa !8
  %sub140 = sub nsw i32 %168, 1
  store i32 %sub140, ptr %i__3, align 4, !tbaa !8
  %169 = load i32, ptr %i__, align 4, !tbaa !8
  %170 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub141 = sub nsw i32 %169, %170
  store i32 %sub141, ptr %k, align 4, !tbaa !8
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc246, %for.end139
  %171 = load i32, ptr %k, align 4, !tbaa !8
  %172 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp143 = icmp sle i32 %171, %172
  br i1 %cmp143, label %for.body144, label %for.end248

for.body144:                                      ; preds = %for.cond142
  %173 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %173, ptr %i__1, align 4, !tbaa !8
  %174 = load i32, ptr %i__, align 4, !tbaa !8
  %175 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub145 = sub nsw i32 %174, %175
  store i32 %sub145, ptr %j, align 4, !tbaa !8
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc206, %for.body144
  %176 = load i32, ptr %j, align 4, !tbaa !8
  %177 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp147 = icmp sle i32 %176, %177
  br i1 %cmp147, label %for.body148, label %for.end208

for.body148:                                      ; preds = %for.cond146
  %178 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %179 = load i32, ptr %j, align 4, !tbaa !8
  %180 = load i32, ptr %k, align 4, !tbaa !8
  %sub149 = sub nsw i32 %179, %180
  %181 = load i32, ptr %ka1, align 4, !tbaa !8
  %add150 = add nsw i32 %sub149, %181
  %182 = load i32, ptr %k, align 4, !tbaa !8
  %183 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul151 = mul nsw i32 %182, %183
  %add152 = add nsw i32 %add150, %mul151
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds float, ptr %178, i64 %idxprom153
  %184 = load float, ptr %arrayidx154, align 4, !tbaa !10
  %185 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %186 = load i32, ptr %j, align 4, !tbaa !8
  %187 = load i32, ptr %i__, align 4, !tbaa !8
  %sub155 = sub nsw i32 %186, %187
  %188 = load i32, ptr %kb1, align 4, !tbaa !8
  %add156 = add nsw i32 %sub155, %188
  %189 = load i32, ptr %i__, align 4, !tbaa !8
  %190 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul157 = mul nsw i32 %189, %190
  %add158 = add nsw i32 %add156, %mul157
  %idxprom159 = sext i32 %add158 to i64
  %arrayidx160 = getelementptr inbounds float, ptr %185, i64 %idxprom159
  %191 = load float, ptr %arrayidx160, align 4, !tbaa !10
  %192 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %193 = load i32, ptr %k, align 4, !tbaa !8
  %194 = load i32, ptr %i__, align 4, !tbaa !8
  %sub161 = sub nsw i32 %193, %194
  %195 = load i32, ptr %ka1, align 4, !tbaa !8
  %add162 = add nsw i32 %sub161, %195
  %196 = load i32, ptr %i__, align 4, !tbaa !8
  %197 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul163 = mul nsw i32 %196, %197
  %add164 = add nsw i32 %add162, %mul163
  %idxprom165 = sext i32 %add164 to i64
  %arrayidx166 = getelementptr inbounds float, ptr %192, i64 %idxprom165
  %198 = load float, ptr %arrayidx166, align 4, !tbaa !10
  %neg = fneg float %191
  %199 = call float @llvm.fmuladd.f32(float %neg, float %198, float %184)
  %200 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %201 = load i32, ptr %k, align 4, !tbaa !8
  %202 = load i32, ptr %i__, align 4, !tbaa !8
  %sub168 = sub nsw i32 %201, %202
  %203 = load i32, ptr %kb1, align 4, !tbaa !8
  %add169 = add nsw i32 %sub168, %203
  %204 = load i32, ptr %i__, align 4, !tbaa !8
  %205 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul170 = mul nsw i32 %204, %205
  %add171 = add nsw i32 %add169, %mul170
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds float, ptr %200, i64 %idxprom172
  %206 = load float, ptr %arrayidx173, align 4, !tbaa !10
  %207 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %208 = load i32, ptr %j, align 4, !tbaa !8
  %209 = load i32, ptr %i__, align 4, !tbaa !8
  %sub174 = sub nsw i32 %208, %209
  %210 = load i32, ptr %ka1, align 4, !tbaa !8
  %add175 = add nsw i32 %sub174, %210
  %211 = load i32, ptr %i__, align 4, !tbaa !8
  %212 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul176 = mul nsw i32 %211, %212
  %add177 = add nsw i32 %add175, %mul176
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds float, ptr %207, i64 %idxprom178
  %213 = load float, ptr %arrayidx179, align 4, !tbaa !10
  %neg181 = fneg float %206
  %214 = call float @llvm.fmuladd.f32(float %neg181, float %213, float %199)
  %215 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %216 = load i32, ptr %ka1, align 4, !tbaa !8
  %217 = load i32, ptr %i__, align 4, !tbaa !8
  %218 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul182 = mul nsw i32 %217, %218
  %add183 = add nsw i32 %216, %mul182
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds float, ptr %215, i64 %idxprom184
  %219 = load float, ptr %arrayidx185, align 4, !tbaa !10
  %220 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %221 = load i32, ptr %j, align 4, !tbaa !8
  %222 = load i32, ptr %i__, align 4, !tbaa !8
  %sub186 = sub nsw i32 %221, %222
  %223 = load i32, ptr %kb1, align 4, !tbaa !8
  %add187 = add nsw i32 %sub186, %223
  %224 = load i32, ptr %i__, align 4, !tbaa !8
  %225 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul188 = mul nsw i32 %224, %225
  %add189 = add nsw i32 %add187, %mul188
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds float, ptr %220, i64 %idxprom190
  %226 = load float, ptr %arrayidx191, align 4, !tbaa !10
  %mul192 = fmul float %219, %226
  %227 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %228 = load i32, ptr %k, align 4, !tbaa !8
  %229 = load i32, ptr %i__, align 4, !tbaa !8
  %sub193 = sub nsw i32 %228, %229
  %230 = load i32, ptr %kb1, align 4, !tbaa !8
  %add194 = add nsw i32 %sub193, %230
  %231 = load i32, ptr %i__, align 4, !tbaa !8
  %232 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul195 = mul nsw i32 %231, %232
  %add196 = add nsw i32 %add194, %mul195
  %idxprom197 = sext i32 %add196 to i64
  %arrayidx198 = getelementptr inbounds float, ptr %227, i64 %idxprom197
  %233 = load float, ptr %arrayidx198, align 4, !tbaa !10
  %234 = call float @llvm.fmuladd.f32(float %mul192, float %233, float %214)
  %235 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %236 = load i32, ptr %j, align 4, !tbaa !8
  %237 = load i32, ptr %k, align 4, !tbaa !8
  %sub200 = sub nsw i32 %236, %237
  %238 = load i32, ptr %ka1, align 4, !tbaa !8
  %add201 = add nsw i32 %sub200, %238
  %239 = load i32, ptr %k, align 4, !tbaa !8
  %240 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul202 = mul nsw i32 %239, %240
  %add203 = add nsw i32 %add201, %mul202
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds float, ptr %235, i64 %idxprom204
  store float %234, ptr %arrayidx205, align 4, !tbaa !10
  br label %for.inc206

for.inc206:                                       ; preds = %for.body148
  %241 = load i32, ptr %j, align 4, !tbaa !8
  %inc207 = add nsw i32 %241, 1
  store i32 %inc207, ptr %j, align 4, !tbaa !8
  br label %for.cond146, !llvm.loop !15

for.end208:                                       ; preds = %for.cond146
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %242 = load i32, ptr %i__, align 4, !tbaa !8
  %243 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %244 = load i32, ptr %243, align 4, !tbaa !8
  %sub209 = sub nsw i32 %242, %244
  store i32 %sub209, ptr %i__2, align 4, !tbaa !8
  %245 = load i32, ptr %i__, align 4, !tbaa !8
  %246 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub210 = sub nsw i32 %245, %246
  %sub211 = sub nsw i32 %sub210, 1
  store i32 %sub211, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x212) #4
  %247 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %247, ptr %_x212, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y213) #4
  %248 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %248, ptr %_y213, align 4, !tbaa !8
  %249 = load i32, ptr %_x212, align 4, !tbaa !8
  %250 = load i32, ptr %_y213, align 4, !tbaa !8
  %cmp215 = icmp sgt i32 %249, %250
  br i1 %cmp215, label %cond.true216, label %cond.false217

cond.true216:                                     ; preds = %for.end208
  %251 = load i32, ptr %_x212, align 4, !tbaa !8
  br label %cond.end218

cond.false217:                                    ; preds = %for.end208
  %252 = load i32, ptr %_y213, align 4, !tbaa !8
  br label %cond.end218

cond.end218:                                      ; preds = %cond.false217, %cond.true216
  %cond219 = phi i32 [ %251, %cond.true216 ], [ %252, %cond.false217 ]
  store i32 %cond219, ptr %tmp214, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y213) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x212) #4
  %253 = load i32, ptr %tmp214, align 4, !tbaa !8
  store i32 %253, ptr %j, align 4, !tbaa !8
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc243, %cond.end218
  %254 = load i32, ptr %j, align 4, !tbaa !8
  %255 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp221 = icmp sle i32 %254, %255
  br i1 %cmp221, label %for.body222, label %for.end245

for.body222:                                      ; preds = %for.cond220
  %256 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %257 = load i32, ptr %k, align 4, !tbaa !8
  %258 = load i32, ptr %i__, align 4, !tbaa !8
  %sub223 = sub nsw i32 %257, %258
  %259 = load i32, ptr %kb1, align 4, !tbaa !8
  %add224 = add nsw i32 %sub223, %259
  %260 = load i32, ptr %i__, align 4, !tbaa !8
  %261 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul225 = mul nsw i32 %260, %261
  %add226 = add nsw i32 %add224, %mul225
  %idxprom227 = sext i32 %add226 to i64
  %arrayidx228 = getelementptr inbounds float, ptr %256, i64 %idxprom227
  %262 = load float, ptr %arrayidx228, align 4, !tbaa !10
  %263 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %264 = load i32, ptr %j, align 4, !tbaa !8
  %265 = load i32, ptr %i__, align 4, !tbaa !8
  %sub229 = sub nsw i32 %264, %265
  %266 = load i32, ptr %ka1, align 4, !tbaa !8
  %add230 = add nsw i32 %sub229, %266
  %267 = load i32, ptr %i__, align 4, !tbaa !8
  %268 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul231 = mul nsw i32 %267, %268
  %add232 = add nsw i32 %add230, %mul231
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx234 = getelementptr inbounds float, ptr %263, i64 %idxprom233
  %269 = load float, ptr %arrayidx234, align 4, !tbaa !10
  %270 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %271 = load i32, ptr %j, align 4, !tbaa !8
  %272 = load i32, ptr %k, align 4, !tbaa !8
  %sub236 = sub nsw i32 %271, %272
  %273 = load i32, ptr %ka1, align 4, !tbaa !8
  %add237 = add nsw i32 %sub236, %273
  %274 = load i32, ptr %k, align 4, !tbaa !8
  %275 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul238 = mul nsw i32 %274, %275
  %add239 = add nsw i32 %add237, %mul238
  %idxprom240 = sext i32 %add239 to i64
  %arrayidx241 = getelementptr inbounds float, ptr %270, i64 %idxprom240
  %276 = load float, ptr %arrayidx241, align 4, !tbaa !10
  %neg242 = fneg float %262
  %277 = call float @llvm.fmuladd.f32(float %neg242, float %269, float %276)
  store float %277, ptr %arrayidx241, align 4, !tbaa !10
  br label %for.inc243

for.inc243:                                       ; preds = %for.body222
  %278 = load i32, ptr %j, align 4, !tbaa !8
  %inc244 = add nsw i32 %278, 1
  store i32 %inc244, ptr %j, align 4, !tbaa !8
  br label %for.cond220, !llvm.loop !16

for.end245:                                       ; preds = %for.cond220
  br label %for.inc246

for.inc246:                                       ; preds = %for.end245
  %279 = load i32, ptr %k, align 4, !tbaa !8
  %inc247 = add nsw i32 %279, 1
  store i32 %inc247, ptr %k, align 4, !tbaa !8
  br label %for.cond142, !llvm.loop !17

for.end248:                                       ; preds = %for.cond142
  %280 = load i32, ptr %i1, align 4, !tbaa !8
  store i32 %280, ptr %i__3, align 4, !tbaa !8
  %281 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %281, ptr %j, align 4, !tbaa !8
  br label %for.cond249

for.cond249:                                      ; preds = %for.inc289, %for.end248
  %282 = load i32, ptr %j, align 4, !tbaa !8
  %283 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp250 = icmp sle i32 %282, %283
  br i1 %cmp250, label %for.body251, label %for.end291

for.body251:                                      ; preds = %for.cond249
  %284 = load i32, ptr %j, align 4, !tbaa !8
  %285 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %286 = load i32, ptr %285, align 4, !tbaa !8
  %sub252 = sub nsw i32 %284, %286
  store i32 %sub252, ptr %i__4, align 4, !tbaa !8
  %287 = load i32, ptr %i__, align 4, !tbaa !8
  %288 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub253 = sub nsw i32 %287, %288
  store i32 %sub253, ptr %i__1, align 4, !tbaa !8
  %289 = load i32, ptr %i__, align 4, !tbaa !8
  %sub254 = sub nsw i32 %289, 1
  store i32 %sub254, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x255) #4
  %290 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %290, ptr %_x255, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y256) #4
  %291 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %291, ptr %_y256, align 4, !tbaa !8
  %292 = load i32, ptr %_x255, align 4, !tbaa !8
  %293 = load i32, ptr %_y256, align 4, !tbaa !8
  %cmp258 = icmp sgt i32 %292, %293
  br i1 %cmp258, label %cond.true259, label %cond.false260

cond.true259:                                     ; preds = %for.body251
  %294 = load i32, ptr %_x255, align 4, !tbaa !8
  br label %cond.end261

cond.false260:                                    ; preds = %for.body251
  %295 = load i32, ptr %_y256, align 4, !tbaa !8
  br label %cond.end261

cond.end261:                                      ; preds = %cond.false260, %cond.true259
  %cond262 = phi i32 [ %294, %cond.true259 ], [ %295, %cond.false260 ]
  store i32 %cond262, ptr %tmp257, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y256) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x255) #4
  %296 = load i32, ptr %tmp257, align 4, !tbaa !8
  store i32 %296, ptr %k, align 4, !tbaa !8
  br label %for.cond263

for.cond263:                                      ; preds = %for.inc286, %cond.end261
  %297 = load i32, ptr %k, align 4, !tbaa !8
  %298 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp264 = icmp sle i32 %297, %298
  br i1 %cmp264, label %for.body265, label %for.end288

for.body265:                                      ; preds = %for.cond263
  %299 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %300 = load i32, ptr %k, align 4, !tbaa !8
  %301 = load i32, ptr %i__, align 4, !tbaa !8
  %sub266 = sub nsw i32 %300, %301
  %302 = load i32, ptr %kb1, align 4, !tbaa !8
  %add267 = add nsw i32 %sub266, %302
  %303 = load i32, ptr %i__, align 4, !tbaa !8
  %304 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul268 = mul nsw i32 %303, %304
  %add269 = add nsw i32 %add267, %mul268
  %idxprom270 = sext i32 %add269 to i64
  %arrayidx271 = getelementptr inbounds float, ptr %299, i64 %idxprom270
  %305 = load float, ptr %arrayidx271, align 4, !tbaa !10
  %306 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %307 = load i32, ptr %i__, align 4, !tbaa !8
  %308 = load i32, ptr %j, align 4, !tbaa !8
  %sub272 = sub nsw i32 %307, %308
  %309 = load i32, ptr %ka1, align 4, !tbaa !8
  %add273 = add nsw i32 %sub272, %309
  %310 = load i32, ptr %j, align 4, !tbaa !8
  %311 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul274 = mul nsw i32 %310, %311
  %add275 = add nsw i32 %add273, %mul274
  %idxprom276 = sext i32 %add275 to i64
  %arrayidx277 = getelementptr inbounds float, ptr %306, i64 %idxprom276
  %312 = load float, ptr %arrayidx277, align 4, !tbaa !10
  %313 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %314 = load i32, ptr %k, align 4, !tbaa !8
  %315 = load i32, ptr %j, align 4, !tbaa !8
  %sub279 = sub nsw i32 %314, %315
  %316 = load i32, ptr %ka1, align 4, !tbaa !8
  %add280 = add nsw i32 %sub279, %316
  %317 = load i32, ptr %j, align 4, !tbaa !8
  %318 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul281 = mul nsw i32 %317, %318
  %add282 = add nsw i32 %add280, %mul281
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds float, ptr %313, i64 %idxprom283
  %319 = load float, ptr %arrayidx284, align 4, !tbaa !10
  %neg285 = fneg float %305
  %320 = call float @llvm.fmuladd.f32(float %neg285, float %312, float %319)
  store float %320, ptr %arrayidx284, align 4, !tbaa !10
  br label %for.inc286

for.inc286:                                       ; preds = %for.body265
  %321 = load i32, ptr %k, align 4, !tbaa !8
  %inc287 = add nsw i32 %321, 1
  store i32 %inc287, ptr %k, align 4, !tbaa !8
  br label %for.cond263, !llvm.loop !18

for.end288:                                       ; preds = %for.cond263
  br label %for.inc289

for.inc289:                                       ; preds = %for.end288
  %322 = load i32, ptr %j, align 4, !tbaa !8
  %inc290 = add nsw i32 %322, 1
  store i32 %inc290, ptr %j, align 4, !tbaa !8
  br label %for.cond249, !llvm.loop !19

for.end291:                                       ; preds = %for.cond249
  %323 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool292 = icmp ne i32 %323, 0
  br i1 %tobool292, label %if.then293, label %if.end323

if.then293:                                       ; preds = %for.end291
  %324 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %325 = load i32, ptr %324, align 4, !tbaa !8
  %326 = load i32, ptr %m, align 4, !tbaa !8
  %sub294 = sub nsw i32 %325, %326
  store i32 %sub294, ptr %i__3, align 4, !tbaa !8
  %327 = load float, ptr %bii, align 4, !tbaa !10
  %div295 = fdiv float 1.000000e+00, %327
  store float %div295, ptr %r__1, align 4, !tbaa !10
  %328 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %329 = load i32, ptr %m, align 4, !tbaa !8
  %add296 = add nsw i32 %329, 1
  %330 = load i32, ptr %i__, align 4, !tbaa !8
  %331 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul297 = mul nsw i32 %330, %331
  %add298 = add nsw i32 %add296, %mul297
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds float, ptr %328, i64 %idxprom299
  %call301 = call i32 @sscal_(ptr noundef %i__3, ptr noundef %r__1, ptr noundef %arrayidx300, ptr noundef @c__1)
  %332 = load i32, ptr %kbt, align 4, !tbaa !8
  %cmp302 = icmp sgt i32 %332, 0
  br i1 %cmp302, label %if.then303, label %if.end322

if.then303:                                       ; preds = %if.then293
  %333 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %334 = load i32, ptr %333, align 4, !tbaa !8
  %335 = load i32, ptr %m, align 4, !tbaa !8
  %sub304 = sub nsw i32 %334, %335
  store i32 %sub304, ptr %i__3, align 4, !tbaa !8
  %336 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %337 = load i32, ptr %m, align 4, !tbaa !8
  %add305 = add nsw i32 %337, 1
  %338 = load i32, ptr %i__, align 4, !tbaa !8
  %339 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul306 = mul nsw i32 %338, %339
  %add307 = add nsw i32 %add305, %mul306
  %idxprom308 = sext i32 %add307 to i64
  %arrayidx309 = getelementptr inbounds float, ptr %336, i64 %idxprom308
  %340 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %341 = load i32, ptr %kb1, align 4, !tbaa !8
  %342 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub310 = sub nsw i32 %341, %342
  %343 = load i32, ptr %i__, align 4, !tbaa !8
  %344 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul311 = mul nsw i32 %343, %344
  %add312 = add nsw i32 %sub310, %mul311
  %idxprom313 = sext i32 %add312 to i64
  %arrayidx314 = getelementptr inbounds float, ptr %340, i64 %idxprom313
  %345 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %346 = load i32, ptr %m, align 4, !tbaa !8
  %add315 = add nsw i32 %346, 1
  %347 = load i32, ptr %i__, align 4, !tbaa !8
  %348 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub316 = sub nsw i32 %347, %348
  %349 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul317 = mul nsw i32 %sub316, %349
  %add318 = add nsw i32 %add315, %mul317
  %idxprom319 = sext i32 %add318 to i64
  %arrayidx320 = getelementptr inbounds float, ptr %345, i64 %idxprom319
  %350 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %call321 = call i32 @sger_(ptr noundef %i__3, ptr noundef %kbt, ptr noundef @c_b20, ptr noundef %arrayidx309, ptr noundef @c__1, ptr noundef %arrayidx314, ptr noundef @c__1, ptr noundef %arrayidx320, ptr noundef %350)
  br label %if.end322

if.end322:                                        ; preds = %if.then303, %if.then293
  br label %if.end323

if.end323:                                        ; preds = %if.end322, %for.end291
  %351 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %352 = load i32, ptr %i__, align 4, !tbaa !8
  %353 = load i32, ptr %i1, align 4, !tbaa !8
  %sub324 = sub nsw i32 %352, %353
  %354 = load i32, ptr %ka1, align 4, !tbaa !8
  %add325 = add nsw i32 %sub324, %354
  %355 = load i32, ptr %i1, align 4, !tbaa !8
  %356 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul326 = mul nsw i32 %355, %356
  %add327 = add nsw i32 %add325, %mul326
  %idxprom328 = sext i32 %add327 to i64
  %arrayidx329 = getelementptr inbounds float, ptr %351, i64 %idxprom328
  %357 = load float, ptr %arrayidx329, align 4, !tbaa !10
  store float %357, ptr %ra1, align 4, !tbaa !10
  br label %if.end330

if.end330:                                        ; preds = %if.end323, %if.then102
  %358 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %359 = load i32, ptr %358, align 4, !tbaa !8
  %sub331 = sub nsw i32 %359, 1
  store i32 %sub331, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond332

for.cond332:                                      ; preds = %for.inc641, %if.end330
  %360 = load i32, ptr %k, align 4, !tbaa !8
  %361 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp333 = icmp sle i32 %360, %361
  br i1 %cmp333, label %for.body334, label %for.end643

for.body334:                                      ; preds = %for.cond332
  %362 = load i32, ptr %update, align 4, !tbaa !8
  %tobool335 = icmp ne i32 %362, 0
  br i1 %tobool335, label %if.then336, label %if.end418

if.then336:                                       ; preds = %for.body334
  %363 = load i32, ptr %i__, align 4, !tbaa !8
  %364 = load i32, ptr %k, align 4, !tbaa !8
  %sub337 = sub nsw i32 %363, %364
  %365 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %366 = load i32, ptr %365, align 4, !tbaa !8
  %add338 = add nsw i32 %sub337, %366
  %367 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %368 = load i32, ptr %367, align 4, !tbaa !8
  %cmp339 = icmp slt i32 %add338, %368
  br i1 %cmp339, label %land.lhs.true340, label %if.end417

land.lhs.true340:                                 ; preds = %if.then336
  %369 = load i32, ptr %i__, align 4, !tbaa !8
  %370 = load i32, ptr %k, align 4, !tbaa !8
  %sub341 = sub nsw i32 %369, %370
  %cmp342 = icmp sgt i32 %sub341, 1
  br i1 %cmp342, label %if.then343, label %if.end417

if.then343:                                       ; preds = %land.lhs.true340
  %371 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %372 = load i32, ptr %k, align 4, !tbaa !8
  %add344 = add nsw i32 %372, 1
  %373 = load i32, ptr %i__, align 4, !tbaa !8
  %374 = load i32, ptr %k, align 4, !tbaa !8
  %sub345 = sub nsw i32 %373, %374
  %375 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %376 = load i32, ptr %375, align 4, !tbaa !8
  %add346 = add nsw i32 %sub345, %376
  %377 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul347 = mul nsw i32 %add346, %377
  %add348 = add nsw i32 %add344, %mul347
  %idxprom349 = sext i32 %add348 to i64
  %arrayidx350 = getelementptr inbounds float, ptr %371, i64 %idxprom349
  %378 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %379 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %380 = load i32, ptr %379, align 4, !tbaa !8
  %381 = load i32, ptr %i__, align 4, !tbaa !8
  %add351 = add nsw i32 %380, %381
  %382 = load i32, ptr %k, align 4, !tbaa !8
  %sub352 = sub nsw i32 %add351, %382
  %383 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %384 = load i32, ptr %383, align 4, !tbaa !8
  %add353 = add nsw i32 %sub352, %384
  %385 = load i32, ptr %m, align 4, !tbaa !8
  %sub354 = sub nsw i32 %add353, %385
  %idxprom355 = sext i32 %sub354 to i64
  %arrayidx356 = getelementptr inbounds float, ptr %378, i64 %idxprom355
  %386 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %387 = load i32, ptr %i__, align 4, !tbaa !8
  %388 = load i32, ptr %k, align 4, !tbaa !8
  %sub357 = sub nsw i32 %387, %388
  %389 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %390 = load i32, ptr %389, align 4, !tbaa !8
  %add358 = add nsw i32 %sub357, %390
  %391 = load i32, ptr %m, align 4, !tbaa !8
  %sub359 = sub nsw i32 %add358, %391
  %idxprom360 = sext i32 %sub359 to i64
  %arrayidx361 = getelementptr inbounds float, ptr %386, i64 %idxprom360
  %call362 = call i32 @slartg_(ptr noundef %arrayidx350, ptr noundef %ra1, ptr noundef %arrayidx356, ptr noundef %arrayidx361, ptr noundef %ra)
  %392 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %393 = load i32, ptr %kb1, align 4, !tbaa !8
  %394 = load i32, ptr %k, align 4, !tbaa !8
  %sub363 = sub nsw i32 %393, %394
  %395 = load i32, ptr %i__, align 4, !tbaa !8
  %396 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul364 = mul nsw i32 %395, %396
  %add365 = add nsw i32 %sub363, %mul364
  %idxprom366 = sext i32 %add365 to i64
  %arrayidx367 = getelementptr inbounds float, ptr %392, i64 %idxprom366
  %397 = load float, ptr %arrayidx367, align 4, !tbaa !10
  %fneg = fneg float %397
  %398 = load float, ptr %ra1, align 4, !tbaa !10
  %mul368 = fmul float %fneg, %398
  store float %mul368, ptr %t, align 4, !tbaa !10
  %399 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %400 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %401 = load i32, ptr %400, align 4, !tbaa !8
  %402 = load i32, ptr %i__, align 4, !tbaa !8
  %add369 = add nsw i32 %401, %402
  %403 = load i32, ptr %k, align 4, !tbaa !8
  %sub370 = sub nsw i32 %add369, %403
  %404 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %405 = load i32, ptr %404, align 4, !tbaa !8
  %add371 = add nsw i32 %sub370, %405
  %406 = load i32, ptr %m, align 4, !tbaa !8
  %sub372 = sub nsw i32 %add371, %406
  %idxprom373 = sext i32 %sub372 to i64
  %arrayidx374 = getelementptr inbounds float, ptr %399, i64 %idxprom373
  %407 = load float, ptr %arrayidx374, align 4, !tbaa !10
  %408 = load float, ptr %t, align 4, !tbaa !10
  %409 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %410 = load i32, ptr %i__, align 4, !tbaa !8
  %411 = load i32, ptr %k, align 4, !tbaa !8
  %sub376 = sub nsw i32 %410, %411
  %412 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %413 = load i32, ptr %412, align 4, !tbaa !8
  %add377 = add nsw i32 %sub376, %413
  %414 = load i32, ptr %m, align 4, !tbaa !8
  %sub378 = sub nsw i32 %add377, %414
  %idxprom379 = sext i32 %sub378 to i64
  %arrayidx380 = getelementptr inbounds float, ptr %409, i64 %idxprom379
  %415 = load float, ptr %arrayidx380, align 4, !tbaa !10
  %416 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %417 = load i32, ptr %i__, align 4, !tbaa !8
  %418 = load i32, ptr %k, align 4, !tbaa !8
  %sub381 = sub nsw i32 %417, %418
  %419 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %420 = load i32, ptr %419, align 4, !tbaa !8
  %add382 = add nsw i32 %sub381, %420
  %421 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul383 = mul nsw i32 %add382, %421
  %add384 = add nsw i32 %mul383, 1
  %idxprom385 = sext i32 %add384 to i64
  %arrayidx386 = getelementptr inbounds float, ptr %416, i64 %idxprom385
  %422 = load float, ptr %arrayidx386, align 4, !tbaa !10
  %mul387 = fmul float %415, %422
  %neg388 = fneg float %mul387
  %423 = call float @llvm.fmuladd.f32(float %407, float %408, float %neg388)
  %424 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %425 = load i32, ptr %i__, align 4, !tbaa !8
  %426 = load i32, ptr %k, align 4, !tbaa !8
  %sub389 = sub nsw i32 %425, %426
  %idxprom390 = sext i32 %sub389 to i64
  %arrayidx391 = getelementptr inbounds float, ptr %424, i64 %idxprom390
  store float %423, ptr %arrayidx391, align 4, !tbaa !10
  %427 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %428 = load i32, ptr %i__, align 4, !tbaa !8
  %429 = load i32, ptr %k, align 4, !tbaa !8
  %sub392 = sub nsw i32 %428, %429
  %430 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %431 = load i32, ptr %430, align 4, !tbaa !8
  %add393 = add nsw i32 %sub392, %431
  %432 = load i32, ptr %m, align 4, !tbaa !8
  %sub394 = sub nsw i32 %add393, %432
  %idxprom395 = sext i32 %sub394 to i64
  %arrayidx396 = getelementptr inbounds float, ptr %427, i64 %idxprom395
  %433 = load float, ptr %arrayidx396, align 4, !tbaa !10
  %434 = load float, ptr %t, align 4, !tbaa !10
  %435 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %436 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %437 = load i32, ptr %436, align 4, !tbaa !8
  %438 = load i32, ptr %i__, align 4, !tbaa !8
  %add398 = add nsw i32 %437, %438
  %439 = load i32, ptr %k, align 4, !tbaa !8
  %sub399 = sub nsw i32 %add398, %439
  %440 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %441 = load i32, ptr %440, align 4, !tbaa !8
  %add400 = add nsw i32 %sub399, %441
  %442 = load i32, ptr %m, align 4, !tbaa !8
  %sub401 = sub nsw i32 %add400, %442
  %idxprom402 = sext i32 %sub401 to i64
  %arrayidx403 = getelementptr inbounds float, ptr %435, i64 %idxprom402
  %443 = load float, ptr %arrayidx403, align 4, !tbaa !10
  %444 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %445 = load i32, ptr %i__, align 4, !tbaa !8
  %446 = load i32, ptr %k, align 4, !tbaa !8
  %sub404 = sub nsw i32 %445, %446
  %447 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %448 = load i32, ptr %447, align 4, !tbaa !8
  %add405 = add nsw i32 %sub404, %448
  %449 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul406 = mul nsw i32 %add405, %449
  %add407 = add nsw i32 %mul406, 1
  %idxprom408 = sext i32 %add407 to i64
  %arrayidx409 = getelementptr inbounds float, ptr %444, i64 %idxprom408
  %450 = load float, ptr %arrayidx409, align 4, !tbaa !10
  %mul410 = fmul float %443, %450
  %451 = call float @llvm.fmuladd.f32(float %433, float %434, float %mul410)
  %452 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %453 = load i32, ptr %i__, align 4, !tbaa !8
  %454 = load i32, ptr %k, align 4, !tbaa !8
  %sub411 = sub nsw i32 %453, %454
  %455 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %456 = load i32, ptr %455, align 4, !tbaa !8
  %add412 = add nsw i32 %sub411, %456
  %457 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul413 = mul nsw i32 %add412, %457
  %add414 = add nsw i32 %mul413, 1
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds float, ptr %452, i64 %idxprom415
  store float %451, ptr %arrayidx416, align 4, !tbaa !10
  %458 = load float, ptr %ra, align 4, !tbaa !10
  store float %458, ptr %ra1, align 4, !tbaa !10
  br label %if.end417

if.end417:                                        ; preds = %if.then343, %land.lhs.true340, %if.then336
  br label %if.end418

if.end418:                                        ; preds = %if.end417, %for.body334
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %459 = load i32, ptr %k, align 4, !tbaa !8
  %460 = load i32, ptr %i0, align 4, !tbaa !8
  %sub419 = sub nsw i32 %459, %460
  %add420 = add nsw i32 %sub419, 2
  store i32 %add420, ptr %i__4, align 4, !tbaa !8
  %461 = load i32, ptr %i__, align 4, !tbaa !8
  %462 = load i32, ptr %k, align 4, !tbaa !8
  %sub421 = sub nsw i32 %461, %462
  %sub422 = sub nsw i32 %sub421, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x423) #4
  %463 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %463, ptr %_x423, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y424) #4
  %464 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %464, ptr %_y424, align 4, !tbaa !8
  %465 = load i32, ptr %_x423, align 4, !tbaa !8
  %466 = load i32, ptr %_y424, align 4, !tbaa !8
  %cmp426 = icmp sgt i32 %465, %466
  br i1 %cmp426, label %cond.true427, label %cond.false428

cond.true427:                                     ; preds = %if.end418
  %467 = load i32, ptr %_x423, align 4, !tbaa !8
  br label %cond.end429

cond.false428:                                    ; preds = %if.end418
  %468 = load i32, ptr %_y424, align 4, !tbaa !8
  br label %cond.end429

cond.end429:                                      ; preds = %cond.false428, %cond.true427
  %cond430 = phi i32 [ %467, %cond.true427 ], [ %468, %cond.false428 ]
  store i32 %cond430, ptr %tmp425, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y424) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x423) #4
  %469 = load i32, ptr %tmp425, align 4, !tbaa !8
  %470 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul431 = mul nsw i32 %469, %470
  %add432 = add nsw i32 %sub422, %mul431
  store i32 %add432, ptr %j2, align 4, !tbaa !8
  %471 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %472 = load i32, ptr %471, align 4, !tbaa !8
  %473 = load i32, ptr %j2, align 4, !tbaa !8
  %sub433 = sub nsw i32 %472, %473
  %474 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %475 = load i32, ptr %474, align 4, !tbaa !8
  %add434 = add nsw i32 %sub433, %475
  %476 = load i32, ptr %ka1, align 4, !tbaa !8
  %div435 = sdiv i32 %add434, %476
  store i32 %div435, ptr %nr, align 4, !tbaa !8
  %477 = load i32, ptr %j2, align 4, !tbaa !8
  %478 = load i32, ptr %nr, align 4, !tbaa !8
  %sub436 = sub nsw i32 %478, 1
  %479 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul437 = mul nsw i32 %sub436, %479
  %add438 = add nsw i32 %477, %mul437
  store i32 %add438, ptr %j1, align 4, !tbaa !8
  %480 = load i32, ptr %update, align 4, !tbaa !8
  %tobool439 = icmp ne i32 %480, 0
  br i1 %tobool439, label %if.then440, label %if.else452

if.then440:                                       ; preds = %cond.end429
  %481 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %481, ptr %i__2, align 4, !tbaa !8
  %482 = load i32, ptr %i__, align 4, !tbaa !8
  %483 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %484 = load i32, ptr %483, align 4, !tbaa !8
  %shl = shl i32 %484, 1
  %add441 = add nsw i32 %482, %shl
  %485 = load i32, ptr %k, align 4, !tbaa !8
  %sub442 = sub nsw i32 %add441, %485
  %add443 = add nsw i32 %sub442, 1
  store i32 %add443, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x444) #4
  %486 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %486, ptr %_x444, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y445) #4
  %487 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %487, ptr %_y445, align 4, !tbaa !8
  %488 = load i32, ptr %_x444, align 4, !tbaa !8
  %489 = load i32, ptr %_y445, align 4, !tbaa !8
  %cmp447 = icmp sgt i32 %488, %489
  br i1 %cmp447, label %cond.true448, label %cond.false449

cond.true448:                                     ; preds = %if.then440
  %490 = load i32, ptr %_x444, align 4, !tbaa !8
  br label %cond.end450

cond.false449:                                    ; preds = %if.then440
  %491 = load i32, ptr %_y445, align 4, !tbaa !8
  br label %cond.end450

cond.end450:                                      ; preds = %cond.false449, %cond.true448
  %cond451 = phi i32 [ %490, %cond.true448 ], [ %491, %cond.false449 ]
  store i32 %cond451, ptr %tmp446, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y445) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x444) #4
  %492 = load i32, ptr %tmp446, align 4, !tbaa !8
  store i32 %492, ptr %j2t, align 4, !tbaa !8
  br label %if.end453

if.else452:                                       ; preds = %cond.end429
  %493 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %493, ptr %j2t, align 4, !tbaa !8
  br label %if.end453

if.end453:                                        ; preds = %if.else452, %cond.end450
  %494 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %495 = load i32, ptr %494, align 4, !tbaa !8
  %496 = load i32, ptr %j2t, align 4, !tbaa !8
  %sub454 = sub nsw i32 %495, %496
  %497 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %498 = load i32, ptr %497, align 4, !tbaa !8
  %add455 = add nsw i32 %sub454, %498
  %499 = load i32, ptr %ka1, align 4, !tbaa !8
  %div456 = sdiv i32 %add455, %499
  store i32 %div456, ptr %nrt, align 4, !tbaa !8
  %500 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %500, ptr %i__2, align 4, !tbaa !8
  %501 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %501, ptr %i__4, align 4, !tbaa !8
  %502 = load i32, ptr %j2t, align 4, !tbaa !8
  store i32 %502, ptr %j, align 4, !tbaa !8
  br label %for.cond457

for.cond457:                                      ; preds = %for.inc492, %if.end453
  %503 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp458 = icmp slt i32 %503, 0
  br i1 %cmp458, label %cond.true459, label %cond.false461

cond.true459:                                     ; preds = %for.cond457
  %504 = load i32, ptr %j, align 4, !tbaa !8
  %505 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp460 = icmp sge i32 %504, %505
  %conv = zext i1 %cmp460 to i32
  br label %cond.end464

cond.false461:                                    ; preds = %for.cond457
  %506 = load i32, ptr %j, align 4, !tbaa !8
  %507 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp462 = icmp sle i32 %506, %507
  %conv463 = zext i1 %cmp462 to i32
  br label %cond.end464

cond.end464:                                      ; preds = %cond.false461, %cond.true459
  %cond465 = phi i32 [ %conv, %cond.true459 ], [ %conv463, %cond.false461 ]
  %tobool466 = icmp ne i32 %cond465, 0
  br i1 %tobool466, label %for.body467, label %for.end494

for.body467:                                      ; preds = %cond.end464
  %508 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %509 = load i32, ptr %j, align 4, !tbaa !8
  %add468 = add nsw i32 %509, 1
  %510 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul469 = mul nsw i32 %add468, %510
  %add470 = add nsw i32 %mul469, 1
  %idxprom471 = sext i32 %add470 to i64
  %arrayidx472 = getelementptr inbounds float, ptr %508, i64 %idxprom471
  %511 = load float, ptr %arrayidx472, align 4, !tbaa !10
  %512 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %513 = load i32, ptr %j, align 4, !tbaa !8
  %514 = load i32, ptr %m, align 4, !tbaa !8
  %sub473 = sub nsw i32 %513, %514
  %idxprom474 = sext i32 %sub473 to i64
  %arrayidx475 = getelementptr inbounds float, ptr %512, i64 %idxprom474
  %515 = load float, ptr %arrayidx475, align 4, !tbaa !10
  %mul476 = fmul float %515, %511
  store float %mul476, ptr %arrayidx475, align 4, !tbaa !10
  %516 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %517 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %518 = load i32, ptr %517, align 4, !tbaa !8
  %519 = load i32, ptr %j, align 4, !tbaa !8
  %add477 = add nsw i32 %518, %519
  %520 = load i32, ptr %m, align 4, !tbaa !8
  %sub478 = sub nsw i32 %add477, %520
  %idxprom479 = sext i32 %sub478 to i64
  %arrayidx480 = getelementptr inbounds float, ptr %516, i64 %idxprom479
  %521 = load float, ptr %arrayidx480, align 4, !tbaa !10
  %522 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %523 = load i32, ptr %j, align 4, !tbaa !8
  %add481 = add nsw i32 %523, 1
  %524 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul482 = mul nsw i32 %add481, %524
  %add483 = add nsw i32 %mul482, 1
  %idxprom484 = sext i32 %add483 to i64
  %arrayidx485 = getelementptr inbounds float, ptr %522, i64 %idxprom484
  %525 = load float, ptr %arrayidx485, align 4, !tbaa !10
  %mul486 = fmul float %521, %525
  %526 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %527 = load i32, ptr %j, align 4, !tbaa !8
  %add487 = add nsw i32 %527, 1
  %528 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul488 = mul nsw i32 %add487, %528
  %add489 = add nsw i32 %mul488, 1
  %idxprom490 = sext i32 %add489 to i64
  %arrayidx491 = getelementptr inbounds float, ptr %526, i64 %idxprom490
  store float %mul486, ptr %arrayidx491, align 4, !tbaa !10
  br label %for.inc492

for.inc492:                                       ; preds = %for.body467
  %529 = load i32, ptr %i__4, align 4, !tbaa !8
  %530 = load i32, ptr %j, align 4, !tbaa !8
  %add493 = add nsw i32 %530, %529
  store i32 %add493, ptr %j, align 4, !tbaa !8
  br label %for.cond457, !llvm.loop !20

for.end494:                                       ; preds = %cond.end464
  %531 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp495 = icmp sgt i32 %531, 0
  br i1 %cmp495, label %if.then497, label %if.end510

if.then497:                                       ; preds = %for.end494
  %532 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %533 = load i32, ptr %j2t, align 4, !tbaa !8
  %534 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul498 = mul nsw i32 %533, %534
  %add499 = add nsw i32 %mul498, 1
  %idxprom500 = sext i32 %add499 to i64
  %arrayidx501 = getelementptr inbounds float, ptr %532, i64 %idxprom500
  %535 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %536 = load i32, ptr %j2t, align 4, !tbaa !8
  %537 = load i32, ptr %m, align 4, !tbaa !8
  %sub502 = sub nsw i32 %536, %537
  %idxprom503 = sext i32 %sub502 to i64
  %arrayidx504 = getelementptr inbounds float, ptr %535, i64 %idxprom503
  %538 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %539 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %540 = load i32, ptr %539, align 4, !tbaa !8
  %541 = load i32, ptr %j2t, align 4, !tbaa !8
  %add505 = add nsw i32 %540, %541
  %542 = load i32, ptr %m, align 4, !tbaa !8
  %sub506 = sub nsw i32 %add505, %542
  %idxprom507 = sext i32 %sub506 to i64
  %arrayidx508 = getelementptr inbounds float, ptr %538, i64 %idxprom507
  %call509 = call i32 @slargv_(ptr noundef %nrt, ptr noundef %arrayidx501, ptr noundef %inca, ptr noundef %arrayidx504, ptr noundef %ka1, ptr noundef %arrayidx508, ptr noundef %ka1)
  br label %if.end510

if.end510:                                        ; preds = %if.then497, %for.end494
  %543 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp511 = icmp sgt i32 %543, 0
  br i1 %cmp511, label %if.then513, label %if.end563

if.then513:                                       ; preds = %if.end510
  %544 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %545 = load i32, ptr %544, align 4, !tbaa !8
  %sub514 = sub nsw i32 %545, 1
  store i32 %sub514, ptr %i__4, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond515

for.cond515:                                      ; preds = %for.inc538, %if.then513
  %546 = load i32, ptr %l, align 4, !tbaa !8
  %547 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp516 = icmp sle i32 %546, %547
  br i1 %cmp516, label %for.body518, label %for.end540

for.body518:                                      ; preds = %for.cond515
  %548 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %549 = load i32, ptr %ka1, align 4, !tbaa !8
  %550 = load i32, ptr %l, align 4, !tbaa !8
  %sub519 = sub nsw i32 %549, %550
  %551 = load i32, ptr %j2, align 4, !tbaa !8
  %552 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul520 = mul nsw i32 %551, %552
  %add521 = add nsw i32 %sub519, %mul520
  %idxprom522 = sext i32 %add521 to i64
  %arrayidx523 = getelementptr inbounds float, ptr %548, i64 %idxprom522
  %553 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %554 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %555 = load i32, ptr %554, align 4, !tbaa !8
  %556 = load i32, ptr %l, align 4, !tbaa !8
  %sub524 = sub nsw i32 %555, %556
  %557 = load i32, ptr %j2, align 4, !tbaa !8
  %add525 = add nsw i32 %557, 1
  %558 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul526 = mul nsw i32 %add525, %558
  %add527 = add nsw i32 %sub524, %mul526
  %idxprom528 = sext i32 %add527 to i64
  %arrayidx529 = getelementptr inbounds float, ptr %553, i64 %idxprom528
  %559 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %560 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %561 = load i32, ptr %560, align 4, !tbaa !8
  %562 = load i32, ptr %j2, align 4, !tbaa !8
  %add530 = add nsw i32 %561, %562
  %563 = load i32, ptr %m, align 4, !tbaa !8
  %sub531 = sub nsw i32 %add530, %563
  %idxprom532 = sext i32 %sub531 to i64
  %arrayidx533 = getelementptr inbounds float, ptr %559, i64 %idxprom532
  %564 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %565 = load i32, ptr %j2, align 4, !tbaa !8
  %566 = load i32, ptr %m, align 4, !tbaa !8
  %sub534 = sub nsw i32 %565, %566
  %idxprom535 = sext i32 %sub534 to i64
  %arrayidx536 = getelementptr inbounds float, ptr %564, i64 %idxprom535
  %call537 = call i32 @slartv_(ptr noundef %nr, ptr noundef %arrayidx523, ptr noundef %inca, ptr noundef %arrayidx529, ptr noundef %inca, ptr noundef %arrayidx533, ptr noundef %arrayidx536, ptr noundef %ka1)
  br label %for.inc538

for.inc538:                                       ; preds = %for.body518
  %567 = load i32, ptr %l, align 4, !tbaa !8
  %inc539 = add nsw i32 %567, 1
  store i32 %inc539, ptr %l, align 4, !tbaa !8
  br label %for.cond515, !llvm.loop !21

for.end540:                                       ; preds = %for.cond515
  %568 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %569 = load i32, ptr %ka1, align 4, !tbaa !8
  %570 = load i32, ptr %j2, align 4, !tbaa !8
  %571 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul541 = mul nsw i32 %570, %571
  %add542 = add nsw i32 %569, %mul541
  %idxprom543 = sext i32 %add542 to i64
  %arrayidx544 = getelementptr inbounds float, ptr %568, i64 %idxprom543
  %572 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %573 = load i32, ptr %ka1, align 4, !tbaa !8
  %574 = load i32, ptr %j2, align 4, !tbaa !8
  %add545 = add nsw i32 %574, 1
  %575 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul546 = mul nsw i32 %add545, %575
  %add547 = add nsw i32 %573, %mul546
  %idxprom548 = sext i32 %add547 to i64
  %arrayidx549 = getelementptr inbounds float, ptr %572, i64 %idxprom548
  %576 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %577 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %578 = load i32, ptr %577, align 4, !tbaa !8
  %579 = load i32, ptr %j2, align 4, !tbaa !8
  %add550 = add nsw i32 %579, 1
  %580 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul551 = mul nsw i32 %add550, %580
  %add552 = add nsw i32 %578, %mul551
  %idxprom553 = sext i32 %add552 to i64
  %arrayidx554 = getelementptr inbounds float, ptr %576, i64 %idxprom553
  %581 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %582 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %583 = load i32, ptr %582, align 4, !tbaa !8
  %584 = load i32, ptr %j2, align 4, !tbaa !8
  %add555 = add nsw i32 %583, %584
  %585 = load i32, ptr %m, align 4, !tbaa !8
  %sub556 = sub nsw i32 %add555, %585
  %idxprom557 = sext i32 %sub556 to i64
  %arrayidx558 = getelementptr inbounds float, ptr %581, i64 %idxprom557
  %586 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %587 = load i32, ptr %j2, align 4, !tbaa !8
  %588 = load i32, ptr %m, align 4, !tbaa !8
  %sub559 = sub nsw i32 %587, %588
  %idxprom560 = sext i32 %sub559 to i64
  %arrayidx561 = getelementptr inbounds float, ptr %586, i64 %idxprom560
  %call562 = call i32 @slar2v_(ptr noundef %nr, ptr noundef %arrayidx544, ptr noundef %arrayidx549, ptr noundef %arrayidx554, ptr noundef %inca, ptr noundef %arrayidx558, ptr noundef %arrayidx561, ptr noundef %ka1)
  br label %if.end563

if.end563:                                        ; preds = %for.end540, %if.end510
  %589 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %590 = load i32, ptr %589, align 4, !tbaa !8
  %591 = load i32, ptr %k, align 4, !tbaa !8
  %sub564 = sub nsw i32 %590, %591
  %add565 = add nsw i32 %sub564, 1
  store i32 %add565, ptr %i__4, align 4, !tbaa !8
  %592 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %593 = load i32, ptr %592, align 4, !tbaa !8
  %sub566 = sub nsw i32 %593, 1
  store i32 %sub566, ptr %l, align 4, !tbaa !8
  br label %for.cond567

for.cond567:                                      ; preds = %for.inc599, %if.end563
  %594 = load i32, ptr %l, align 4, !tbaa !8
  %595 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp568 = icmp sge i32 %594, %595
  br i1 %cmp568, label %for.body570, label %for.end601

for.body570:                                      ; preds = %for.cond567
  %596 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %597 = load i32, ptr %596, align 4, !tbaa !8
  %598 = load i32, ptr %j2, align 4, !tbaa !8
  %sub571 = sub nsw i32 %597, %598
  %599 = load i32, ptr %l, align 4, !tbaa !8
  %add572 = add nsw i32 %sub571, %599
  %600 = load i32, ptr %ka1, align 4, !tbaa !8
  %div573 = sdiv i32 %add572, %600
  store i32 %div573, ptr %nrt, align 4, !tbaa !8
  %601 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp574 = icmp sgt i32 %601, 0
  br i1 %cmp574, label %if.then576, label %if.end598

if.then576:                                       ; preds = %for.body570
  %602 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %603 = load i32, ptr %l, align 4, !tbaa !8
  %604 = load i32, ptr %j2, align 4, !tbaa !8
  %605 = load i32, ptr %ka1, align 4, !tbaa !8
  %add577 = add nsw i32 %604, %605
  %606 = load i32, ptr %l, align 4, !tbaa !8
  %sub578 = sub nsw i32 %add577, %606
  %607 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul579 = mul nsw i32 %sub578, %607
  %add580 = add nsw i32 %603, %mul579
  %idxprom581 = sext i32 %add580 to i64
  %arrayidx582 = getelementptr inbounds float, ptr %602, i64 %idxprom581
  %608 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %609 = load i32, ptr %l, align 4, !tbaa !8
  %add583 = add nsw i32 %609, 1
  %610 = load i32, ptr %j2, align 4, !tbaa !8
  %611 = load i32, ptr %ka1, align 4, !tbaa !8
  %add584 = add nsw i32 %610, %611
  %612 = load i32, ptr %l, align 4, !tbaa !8
  %sub585 = sub nsw i32 %add584, %612
  %613 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul586 = mul nsw i32 %sub585, %613
  %add587 = add nsw i32 %add583, %mul586
  %idxprom588 = sext i32 %add587 to i64
  %arrayidx589 = getelementptr inbounds float, ptr %608, i64 %idxprom588
  %614 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %615 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %616 = load i32, ptr %615, align 4, !tbaa !8
  %617 = load i32, ptr %j2, align 4, !tbaa !8
  %add590 = add nsw i32 %616, %617
  %618 = load i32, ptr %m, align 4, !tbaa !8
  %sub591 = sub nsw i32 %add590, %618
  %idxprom592 = sext i32 %sub591 to i64
  %arrayidx593 = getelementptr inbounds float, ptr %614, i64 %idxprom592
  %619 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %620 = load i32, ptr %j2, align 4, !tbaa !8
  %621 = load i32, ptr %m, align 4, !tbaa !8
  %sub594 = sub nsw i32 %620, %621
  %idxprom595 = sext i32 %sub594 to i64
  %arrayidx596 = getelementptr inbounds float, ptr %619, i64 %idxprom595
  %call597 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx582, ptr noundef %inca, ptr noundef %arrayidx589, ptr noundef %inca, ptr noundef %arrayidx593, ptr noundef %arrayidx596, ptr noundef %ka1)
  br label %if.end598

if.end598:                                        ; preds = %if.then576, %for.body570
  br label %for.inc599

for.inc599:                                       ; preds = %if.end598
  %622 = load i32, ptr %l, align 4, !tbaa !8
  %dec600 = add nsw i32 %622, -1
  store i32 %dec600, ptr %l, align 4, !tbaa !8
  br label %for.cond567, !llvm.loop !22

for.end601:                                       ; preds = %for.cond567
  %623 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool602 = icmp ne i32 %623, 0
  br i1 %tobool602, label %if.then603, label %if.end640

if.then603:                                       ; preds = %for.end601
  %624 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %624, ptr %i__4, align 4, !tbaa !8
  %625 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %625, ptr %i__2, align 4, !tbaa !8
  %626 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %626, ptr %j, align 4, !tbaa !8
  br label %for.cond604

for.cond604:                                      ; preds = %for.inc637, %if.then603
  %627 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp605 = icmp slt i32 %627, 0
  br i1 %cmp605, label %cond.true607, label %cond.false610

cond.true607:                                     ; preds = %for.cond604
  %628 = load i32, ptr %j, align 4, !tbaa !8
  %629 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp608 = icmp sge i32 %628, %629
  %conv609 = zext i1 %cmp608 to i32
  br label %cond.end613

cond.false610:                                    ; preds = %for.cond604
  %630 = load i32, ptr %j, align 4, !tbaa !8
  %631 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp611 = icmp sle i32 %630, %631
  %conv612 = zext i1 %cmp611 to i32
  br label %cond.end613

cond.end613:                                      ; preds = %cond.false610, %cond.true607
  %cond614 = phi i32 [ %conv609, %cond.true607 ], [ %conv612, %cond.false610 ]
  %tobool615 = icmp ne i32 %cond614, 0
  br i1 %tobool615, label %for.body616, label %for.end639

for.body616:                                      ; preds = %cond.end613
  %632 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %633 = load i32, ptr %632, align 4, !tbaa !8
  %634 = load i32, ptr %m, align 4, !tbaa !8
  %sub617 = sub nsw i32 %633, %634
  store i32 %sub617, ptr %i__1, align 4, !tbaa !8
  %635 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %636 = load i32, ptr %m, align 4, !tbaa !8
  %add618 = add nsw i32 %636, 1
  %637 = load i32, ptr %j, align 4, !tbaa !8
  %638 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul619 = mul nsw i32 %637, %638
  %add620 = add nsw i32 %add618, %mul619
  %idxprom621 = sext i32 %add620 to i64
  %arrayidx622 = getelementptr inbounds float, ptr %635, i64 %idxprom621
  %639 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %640 = load i32, ptr %m, align 4, !tbaa !8
  %add623 = add nsw i32 %640, 1
  %641 = load i32, ptr %j, align 4, !tbaa !8
  %add624 = add nsw i32 %641, 1
  %642 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul625 = mul nsw i32 %add624, %642
  %add626 = add nsw i32 %add623, %mul625
  %idxprom627 = sext i32 %add626 to i64
  %arrayidx628 = getelementptr inbounds float, ptr %639, i64 %idxprom627
  %643 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %644 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %645 = load i32, ptr %644, align 4, !tbaa !8
  %646 = load i32, ptr %j, align 4, !tbaa !8
  %add629 = add nsw i32 %645, %646
  %647 = load i32, ptr %m, align 4, !tbaa !8
  %sub630 = sub nsw i32 %add629, %647
  %idxprom631 = sext i32 %sub630 to i64
  %arrayidx632 = getelementptr inbounds float, ptr %643, i64 %idxprom631
  %648 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %649 = load i32, ptr %j, align 4, !tbaa !8
  %650 = load i32, ptr %m, align 4, !tbaa !8
  %sub633 = sub nsw i32 %649, %650
  %idxprom634 = sext i32 %sub633 to i64
  %arrayidx635 = getelementptr inbounds float, ptr %648, i64 %idxprom634
  %call636 = call i32 @srot_(ptr noundef %i__1, ptr noundef %arrayidx622, ptr noundef @c__1, ptr noundef %arrayidx628, ptr noundef @c__1, ptr noundef %arrayidx632, ptr noundef %arrayidx635)
  br label %for.inc637

for.inc637:                                       ; preds = %for.body616
  %651 = load i32, ptr %i__2, align 4, !tbaa !8
  %652 = load i32, ptr %j, align 4, !tbaa !8
  %add638 = add nsw i32 %652, %651
  store i32 %add638, ptr %j, align 4, !tbaa !8
  br label %for.cond604, !llvm.loop !23

for.end639:                                       ; preds = %cond.end613
  br label %if.end640

if.end640:                                        ; preds = %for.end639, %for.end601
  br label %for.inc641

for.inc641:                                       ; preds = %if.end640
  %653 = load i32, ptr %k, align 4, !tbaa !8
  %inc642 = add nsw i32 %653, 1
  store i32 %inc642, ptr %k, align 4, !tbaa !8
  br label %for.cond332, !llvm.loop !24

for.end643:                                       ; preds = %for.cond332
  %654 = load i32, ptr %update, align 4, !tbaa !8
  %tobool644 = icmp ne i32 %654, 0
  br i1 %tobool644, label %if.then645, label %if.end663

if.then645:                                       ; preds = %for.end643
  %655 = load i32, ptr %i2, align 4, !tbaa !8
  %656 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %657 = load i32, ptr %656, align 4, !tbaa !8
  %cmp646 = icmp sle i32 %655, %657
  br i1 %cmp646, label %land.lhs.true648, label %if.end662

land.lhs.true648:                                 ; preds = %if.then645
  %658 = load i32, ptr %kbt, align 4, !tbaa !8
  %cmp649 = icmp sgt i32 %658, 0
  br i1 %cmp649, label %if.then651, label %if.end662

if.then651:                                       ; preds = %land.lhs.true648
  %659 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %660 = load i32, ptr %kb1, align 4, !tbaa !8
  %661 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub652 = sub nsw i32 %660, %661
  %662 = load i32, ptr %i__, align 4, !tbaa !8
  %663 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul653 = mul nsw i32 %662, %663
  %add654 = add nsw i32 %sub652, %mul653
  %idxprom655 = sext i32 %add654 to i64
  %arrayidx656 = getelementptr inbounds float, ptr %659, i64 %idxprom655
  %664 = load float, ptr %arrayidx656, align 4, !tbaa !10
  %fneg657 = fneg float %664
  %665 = load float, ptr %ra1, align 4, !tbaa !10
  %mul658 = fmul float %fneg657, %665
  %666 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %667 = load i32, ptr %i__, align 4, !tbaa !8
  %668 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub659 = sub nsw i32 %667, %668
  %idxprom660 = sext i32 %sub659 to i64
  %arrayidx661 = getelementptr inbounds float, ptr %666, i64 %idxprom660
  store float %mul658, ptr %arrayidx661, align 4, !tbaa !10
  br label %if.end662

if.end662:                                        ; preds = %if.then651, %land.lhs.true648, %if.then645
  br label %if.end663

if.end663:                                        ; preds = %if.end662, %for.end643
  %669 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %670 = load i32, ptr %669, align 4, !tbaa !8
  store i32 %670, ptr %k, align 4, !tbaa !8
  br label %for.cond664

for.cond664:                                      ; preds = %for.inc831, %if.end663
  %671 = load i32, ptr %k, align 4, !tbaa !8
  %cmp665 = icmp sge i32 %671, 1
  br i1 %cmp665, label %for.body667, label %for.end833

for.body667:                                      ; preds = %for.cond664
  %672 = load i32, ptr %update, align 4, !tbaa !8
  %tobool668 = icmp ne i32 %672, 0
  br i1 %tobool668, label %if.then669, label %if.else685

if.then669:                                       ; preds = %for.body667
  store i32 2, ptr %i__3, align 4, !tbaa !8
  %673 = load i32, ptr %k, align 4, !tbaa !8
  %674 = load i32, ptr %i0, align 4, !tbaa !8
  %sub670 = sub nsw i32 %673, %674
  %add671 = add nsw i32 %sub670, 1
  store i32 %add671, ptr %i__2, align 4, !tbaa !8
  %675 = load i32, ptr %i__, align 4, !tbaa !8
  %676 = load i32, ptr %k, align 4, !tbaa !8
  %sub672 = sub nsw i32 %675, %676
  %sub673 = sub nsw i32 %sub672, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x674) #4
  %677 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %677, ptr %_x674, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y675) #4
  %678 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %678, ptr %_y675, align 4, !tbaa !8
  %679 = load i32, ptr %_x674, align 4, !tbaa !8
  %680 = load i32, ptr %_y675, align 4, !tbaa !8
  %cmp677 = icmp sgt i32 %679, %680
  br i1 %cmp677, label %cond.true679, label %cond.false680

cond.true679:                                     ; preds = %if.then669
  %681 = load i32, ptr %_x674, align 4, !tbaa !8
  br label %cond.end681

cond.false680:                                    ; preds = %if.then669
  %682 = load i32, ptr %_y675, align 4, !tbaa !8
  br label %cond.end681

cond.end681:                                      ; preds = %cond.false680, %cond.true679
  %cond682 = phi i32 [ %681, %cond.true679 ], [ %682, %cond.false680 ]
  store i32 %cond682, ptr %tmp676, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y675) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x674) #4
  %683 = load i32, ptr %tmp676, align 4, !tbaa !8
  %684 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul683 = mul nsw i32 %683, %684
  %add684 = add nsw i32 %sub673, %mul683
  store i32 %add684, ptr %j2, align 4, !tbaa !8
  br label %if.end701

if.else685:                                       ; preds = %for.body667
  store i32 1, ptr %i__3, align 4, !tbaa !8
  %685 = load i32, ptr %k, align 4, !tbaa !8
  %686 = load i32, ptr %i0, align 4, !tbaa !8
  %sub686 = sub nsw i32 %685, %686
  %add687 = add nsw i32 %sub686, 1
  store i32 %add687, ptr %i__2, align 4, !tbaa !8
  %687 = load i32, ptr %i__, align 4, !tbaa !8
  %688 = load i32, ptr %k, align 4, !tbaa !8
  %sub688 = sub nsw i32 %687, %688
  %sub689 = sub nsw i32 %sub688, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x690) #4
  %689 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %689, ptr %_x690, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y691) #4
  %690 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %690, ptr %_y691, align 4, !tbaa !8
  %691 = load i32, ptr %_x690, align 4, !tbaa !8
  %692 = load i32, ptr %_y691, align 4, !tbaa !8
  %cmp693 = icmp sgt i32 %691, %692
  br i1 %cmp693, label %cond.true695, label %cond.false696

cond.true695:                                     ; preds = %if.else685
  %693 = load i32, ptr %_x690, align 4, !tbaa !8
  br label %cond.end697

cond.false696:                                    ; preds = %if.else685
  %694 = load i32, ptr %_y691, align 4, !tbaa !8
  br label %cond.end697

cond.end697:                                      ; preds = %cond.false696, %cond.true695
  %cond698 = phi i32 [ %693, %cond.true695 ], [ %694, %cond.false696 ]
  store i32 %cond698, ptr %tmp692, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y691) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x690) #4
  %695 = load i32, ptr %tmp692, align 4, !tbaa !8
  %696 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul699 = mul nsw i32 %695, %696
  %add700 = add nsw i32 %sub689, %mul699
  store i32 %add700, ptr %j2, align 4, !tbaa !8
  br label %if.end701

if.end701:                                        ; preds = %cond.end697, %cond.end681
  %697 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %698 = load i32, ptr %697, align 4, !tbaa !8
  %699 = load i32, ptr %k, align 4, !tbaa !8
  %sub702 = sub nsw i32 %698, %699
  store i32 %sub702, ptr %l, align 4, !tbaa !8
  br label %for.cond703

for.cond703:                                      ; preds = %for.inc736, %if.end701
  %700 = load i32, ptr %l, align 4, !tbaa !8
  %cmp704 = icmp sge i32 %700, 1
  br i1 %cmp704, label %for.body706, label %for.end738

for.body706:                                      ; preds = %for.cond703
  %701 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %702 = load i32, ptr %701, align 4, !tbaa !8
  %703 = load i32, ptr %j2, align 4, !tbaa !8
  %sub707 = sub nsw i32 %702, %703
  %704 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %705 = load i32, ptr %704, align 4, !tbaa !8
  %add708 = add nsw i32 %sub707, %705
  %706 = load i32, ptr %l, align 4, !tbaa !8
  %add709 = add nsw i32 %add708, %706
  %707 = load i32, ptr %ka1, align 4, !tbaa !8
  %div710 = sdiv i32 %add709, %707
  store i32 %div710, ptr %nrt, align 4, !tbaa !8
  %708 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp711 = icmp sgt i32 %708, 0
  br i1 %cmp711, label %if.then713, label %if.end735

if.then713:                                       ; preds = %for.body706
  %709 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %710 = load i32, ptr %l, align 4, !tbaa !8
  %711 = load i32, ptr %j2, align 4, !tbaa !8
  %712 = load i32, ptr %l, align 4, !tbaa !8
  %sub714 = sub nsw i32 %711, %712
  %add715 = add nsw i32 %sub714, 1
  %713 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul716 = mul nsw i32 %add715, %713
  %add717 = add nsw i32 %710, %mul716
  %idxprom718 = sext i32 %add717 to i64
  %arrayidx719 = getelementptr inbounds float, ptr %709, i64 %idxprom718
  %714 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %715 = load i32, ptr %l, align 4, !tbaa !8
  %add720 = add nsw i32 %715, 1
  %716 = load i32, ptr %j2, align 4, !tbaa !8
  %717 = load i32, ptr %l, align 4, !tbaa !8
  %sub721 = sub nsw i32 %716, %717
  %add722 = add nsw i32 %sub721, 1
  %718 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul723 = mul nsw i32 %add722, %718
  %add724 = add nsw i32 %add720, %mul723
  %idxprom725 = sext i32 %add724 to i64
  %arrayidx726 = getelementptr inbounds float, ptr %714, i64 %idxprom725
  %719 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %720 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %721 = load i32, ptr %720, align 4, !tbaa !8
  %722 = load i32, ptr %j2, align 4, !tbaa !8
  %add727 = add nsw i32 %721, %722
  %723 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %724 = load i32, ptr %723, align 4, !tbaa !8
  %sub728 = sub nsw i32 %add727, %724
  %idxprom729 = sext i32 %sub728 to i64
  %arrayidx730 = getelementptr inbounds float, ptr %719, i64 %idxprom729
  %725 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %726 = load i32, ptr %j2, align 4, !tbaa !8
  %727 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %728 = load i32, ptr %727, align 4, !tbaa !8
  %sub731 = sub nsw i32 %726, %728
  %idxprom732 = sext i32 %sub731 to i64
  %arrayidx733 = getelementptr inbounds float, ptr %725, i64 %idxprom732
  %call734 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx719, ptr noundef %inca, ptr noundef %arrayidx726, ptr noundef %inca, ptr noundef %arrayidx730, ptr noundef %arrayidx733, ptr noundef %ka1)
  br label %if.end735

if.end735:                                        ; preds = %if.then713, %for.body706
  br label %for.inc736

for.inc736:                                       ; preds = %if.end735
  %729 = load i32, ptr %l, align 4, !tbaa !8
  %dec737 = add nsw i32 %729, -1
  store i32 %dec737, ptr %l, align 4, !tbaa !8
  br label %for.cond703, !llvm.loop !25

for.end738:                                       ; preds = %for.cond703
  %730 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %731 = load i32, ptr %730, align 4, !tbaa !8
  %732 = load i32, ptr %j2, align 4, !tbaa !8
  %sub739 = sub nsw i32 %731, %732
  %733 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %734 = load i32, ptr %733, align 4, !tbaa !8
  %add740 = add nsw i32 %sub739, %734
  %735 = load i32, ptr %ka1, align 4, !tbaa !8
  %div741 = sdiv i32 %add740, %735
  store i32 %div741, ptr %nr, align 4, !tbaa !8
  %736 = load i32, ptr %j2, align 4, !tbaa !8
  %737 = load i32, ptr %nr, align 4, !tbaa !8
  %sub742 = sub nsw i32 %737, 1
  %738 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul743 = mul nsw i32 %sub742, %738
  %add744 = add nsw i32 %736, %mul743
  store i32 %add744, ptr %j1, align 4, !tbaa !8
  %739 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %739, ptr %i__3, align 4, !tbaa !8
  %740 = load i32, ptr %ka1, align 4, !tbaa !8
  %sub745 = sub nsw i32 0, %740
  store i32 %sub745, ptr %i__2, align 4, !tbaa !8
  %741 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %741, ptr %j, align 4, !tbaa !8
  br label %for.cond746

for.cond746:                                      ; preds = %for.inc771, %for.end738
  %742 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp747 = icmp slt i32 %742, 0
  br i1 %cmp747, label %cond.true749, label %cond.false752

cond.true749:                                     ; preds = %for.cond746
  %743 = load i32, ptr %j, align 4, !tbaa !8
  %744 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp750 = icmp sge i32 %743, %744
  %conv751 = zext i1 %cmp750 to i32
  br label %cond.end755

cond.false752:                                    ; preds = %for.cond746
  %745 = load i32, ptr %j, align 4, !tbaa !8
  %746 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp753 = icmp sle i32 %745, %746
  %conv754 = zext i1 %cmp753 to i32
  br label %cond.end755

cond.end755:                                      ; preds = %cond.false752, %cond.true749
  %cond756 = phi i32 [ %conv751, %cond.true749 ], [ %conv754, %cond.false752 ]
  %tobool757 = icmp ne i32 %cond756, 0
  br i1 %tobool757, label %for.body758, label %for.end773

for.body758:                                      ; preds = %cond.end755
  %747 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %748 = load i32, ptr %j, align 4, !tbaa !8
  %749 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %750 = load i32, ptr %749, align 4, !tbaa !8
  %sub759 = sub nsw i32 %748, %750
  %idxprom760 = sext i32 %sub759 to i64
  %arrayidx761 = getelementptr inbounds float, ptr %747, i64 %idxprom760
  %751 = load float, ptr %arrayidx761, align 4, !tbaa !10
  %752 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %753 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom762 = sext i32 %753 to i64
  %arrayidx763 = getelementptr inbounds float, ptr %752, i64 %idxprom762
  store float %751, ptr %arrayidx763, align 4, !tbaa !10
  %754 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %755 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %756 = load i32, ptr %755, align 4, !tbaa !8
  %757 = load i32, ptr %j, align 4, !tbaa !8
  %add764 = add nsw i32 %756, %757
  %758 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %759 = load i32, ptr %758, align 4, !tbaa !8
  %sub765 = sub nsw i32 %add764, %759
  %idxprom766 = sext i32 %sub765 to i64
  %arrayidx767 = getelementptr inbounds float, ptr %754, i64 %idxprom766
  %760 = load float, ptr %arrayidx767, align 4, !tbaa !10
  %761 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %762 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %763 = load i32, ptr %762, align 4, !tbaa !8
  %764 = load i32, ptr %j, align 4, !tbaa !8
  %add768 = add nsw i32 %763, %764
  %idxprom769 = sext i32 %add768 to i64
  %arrayidx770 = getelementptr inbounds float, ptr %761, i64 %idxprom769
  store float %760, ptr %arrayidx770, align 4, !tbaa !10
  br label %for.inc771

for.inc771:                                       ; preds = %for.body758
  %765 = load i32, ptr %i__2, align 4, !tbaa !8
  %766 = load i32, ptr %j, align 4, !tbaa !8
  %add772 = add nsw i32 %766, %765
  store i32 %add772, ptr %j, align 4, !tbaa !8
  br label %for.cond746, !llvm.loop !26

for.end773:                                       ; preds = %cond.end755
  %767 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %767, ptr %i__2, align 4, !tbaa !8
  %768 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %768, ptr %i__3, align 4, !tbaa !8
  %769 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %769, ptr %j, align 4, !tbaa !8
  br label %for.cond774

for.cond774:                                      ; preds = %for.inc809, %for.end773
  %770 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp775 = icmp slt i32 %770, 0
  br i1 %cmp775, label %cond.true777, label %cond.false780

cond.true777:                                     ; preds = %for.cond774
  %771 = load i32, ptr %j, align 4, !tbaa !8
  %772 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp778 = icmp sge i32 %771, %772
  %conv779 = zext i1 %cmp778 to i32
  br label %cond.end783

cond.false780:                                    ; preds = %for.cond774
  %773 = load i32, ptr %j, align 4, !tbaa !8
  %774 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp781 = icmp sle i32 %773, %774
  %conv782 = zext i1 %cmp781 to i32
  br label %cond.end783

cond.end783:                                      ; preds = %cond.false780, %cond.true777
  %cond784 = phi i32 [ %conv779, %cond.true777 ], [ %conv782, %cond.false780 ]
  %tobool785 = icmp ne i32 %cond784, 0
  br i1 %tobool785, label %for.body786, label %for.end811

for.body786:                                      ; preds = %cond.end783
  %775 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %776 = load i32, ptr %j, align 4, !tbaa !8
  %add787 = add nsw i32 %776, 1
  %777 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul788 = mul nsw i32 %add787, %777
  %add789 = add nsw i32 %mul788, 1
  %idxprom790 = sext i32 %add789 to i64
  %arrayidx791 = getelementptr inbounds float, ptr %775, i64 %idxprom790
  %778 = load float, ptr %arrayidx791, align 4, !tbaa !10
  %779 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %780 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom792 = sext i32 %780 to i64
  %arrayidx793 = getelementptr inbounds float, ptr %779, i64 %idxprom792
  %781 = load float, ptr %arrayidx793, align 4, !tbaa !10
  %mul794 = fmul float %781, %778
  store float %mul794, ptr %arrayidx793, align 4, !tbaa !10
  %782 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %783 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %784 = load i32, ptr %783, align 4, !tbaa !8
  %785 = load i32, ptr %j, align 4, !tbaa !8
  %add795 = add nsw i32 %784, %785
  %idxprom796 = sext i32 %add795 to i64
  %arrayidx797 = getelementptr inbounds float, ptr %782, i64 %idxprom796
  %786 = load float, ptr %arrayidx797, align 4, !tbaa !10
  %787 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %788 = load i32, ptr %j, align 4, !tbaa !8
  %add798 = add nsw i32 %788, 1
  %789 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul799 = mul nsw i32 %add798, %789
  %add800 = add nsw i32 %mul799, 1
  %idxprom801 = sext i32 %add800 to i64
  %arrayidx802 = getelementptr inbounds float, ptr %787, i64 %idxprom801
  %790 = load float, ptr %arrayidx802, align 4, !tbaa !10
  %mul803 = fmul float %786, %790
  %791 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %792 = load i32, ptr %j, align 4, !tbaa !8
  %add804 = add nsw i32 %792, 1
  %793 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul805 = mul nsw i32 %add804, %793
  %add806 = add nsw i32 %mul805, 1
  %idxprom807 = sext i32 %add806 to i64
  %arrayidx808 = getelementptr inbounds float, ptr %791, i64 %idxprom807
  store float %mul803, ptr %arrayidx808, align 4, !tbaa !10
  br label %for.inc809

for.inc809:                                       ; preds = %for.body786
  %794 = load i32, ptr %i__3, align 4, !tbaa !8
  %795 = load i32, ptr %j, align 4, !tbaa !8
  %add810 = add nsw i32 %795, %794
  store i32 %add810, ptr %j, align 4, !tbaa !8
  br label %for.cond774, !llvm.loop !27

for.end811:                                       ; preds = %cond.end783
  %796 = load i32, ptr %update, align 4, !tbaa !8
  %tobool812 = icmp ne i32 %796, 0
  br i1 %tobool812, label %if.then813, label %if.end830

if.then813:                                       ; preds = %for.end811
  %797 = load i32, ptr %i__, align 4, !tbaa !8
  %798 = load i32, ptr %k, align 4, !tbaa !8
  %sub814 = sub nsw i32 %797, %798
  %799 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %800 = load i32, ptr %799, align 4, !tbaa !8
  %801 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %802 = load i32, ptr %801, align 4, !tbaa !8
  %sub815 = sub nsw i32 %800, %802
  %cmp816 = icmp slt i32 %sub814, %sub815
  br i1 %cmp816, label %land.lhs.true818, label %if.end829

land.lhs.true818:                                 ; preds = %if.then813
  %803 = load i32, ptr %k, align 4, !tbaa !8
  %804 = load i32, ptr %kbt, align 4, !tbaa !8
  %cmp819 = icmp sle i32 %803, %804
  br i1 %cmp819, label %if.then821, label %if.end829

if.then821:                                       ; preds = %land.lhs.true818
  %805 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %806 = load i32, ptr %i__, align 4, !tbaa !8
  %807 = load i32, ptr %k, align 4, !tbaa !8
  %sub822 = sub nsw i32 %806, %807
  %idxprom823 = sext i32 %sub822 to i64
  %arrayidx824 = getelementptr inbounds float, ptr %805, i64 %idxprom823
  %808 = load float, ptr %arrayidx824, align 4, !tbaa !10
  %809 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %810 = load i32, ptr %i__, align 4, !tbaa !8
  %811 = load i32, ptr %k, align 4, !tbaa !8
  %sub825 = sub nsw i32 %810, %811
  %812 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %813 = load i32, ptr %812, align 4, !tbaa !8
  %add826 = add nsw i32 %sub825, %813
  %idxprom827 = sext i32 %add826 to i64
  %arrayidx828 = getelementptr inbounds float, ptr %809, i64 %idxprom827
  store float %808, ptr %arrayidx828, align 4, !tbaa !10
  br label %if.end829

if.end829:                                        ; preds = %if.then821, %land.lhs.true818, %if.then813
  br label %if.end830

if.end830:                                        ; preds = %if.end829, %for.end811
  br label %for.inc831

for.inc831:                                       ; preds = %if.end830
  %814 = load i32, ptr %k, align 4, !tbaa !8
  %dec832 = add nsw i32 %814, -1
  store i32 %dec832, ptr %k, align 4, !tbaa !8
  br label %for.cond664, !llvm.loop !28

for.end833:                                       ; preds = %for.cond664
  %815 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %816 = load i32, ptr %815, align 4, !tbaa !8
  store i32 %816, ptr %k, align 4, !tbaa !8
  br label %for.cond834

for.cond834:                                      ; preds = %for.inc991, %for.end833
  %817 = load i32, ptr %k, align 4, !tbaa !8
  %cmp835 = icmp sge i32 %817, 1
  br i1 %cmp835, label %for.body837, label %for.end993

for.body837:                                      ; preds = %for.cond834
  store i32 1, ptr %i__3, align 4, !tbaa !8
  %818 = load i32, ptr %k, align 4, !tbaa !8
  %819 = load i32, ptr %i0, align 4, !tbaa !8
  %sub838 = sub nsw i32 %818, %819
  %add839 = add nsw i32 %sub838, 1
  store i32 %add839, ptr %i__2, align 4, !tbaa !8
  %820 = load i32, ptr %i__, align 4, !tbaa !8
  %821 = load i32, ptr %k, align 4, !tbaa !8
  %sub840 = sub nsw i32 %820, %821
  %sub841 = sub nsw i32 %sub840, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x842) #4
  %822 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %822, ptr %_x842, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y843) #4
  %823 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %823, ptr %_y843, align 4, !tbaa !8
  %824 = load i32, ptr %_x842, align 4, !tbaa !8
  %825 = load i32, ptr %_y843, align 4, !tbaa !8
  %cmp845 = icmp sgt i32 %824, %825
  br i1 %cmp845, label %cond.true847, label %cond.false848

cond.true847:                                     ; preds = %for.body837
  %826 = load i32, ptr %_x842, align 4, !tbaa !8
  br label %cond.end849

cond.false848:                                    ; preds = %for.body837
  %827 = load i32, ptr %_y843, align 4, !tbaa !8
  br label %cond.end849

cond.end849:                                      ; preds = %cond.false848, %cond.true847
  %cond850 = phi i32 [ %826, %cond.true847 ], [ %827, %cond.false848 ]
  store i32 %cond850, ptr %tmp844, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y843) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x842) #4
  %828 = load i32, ptr %tmp844, align 4, !tbaa !8
  %829 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul851 = mul nsw i32 %828, %829
  %add852 = add nsw i32 %sub841, %mul851
  store i32 %add852, ptr %j2, align 4, !tbaa !8
  %830 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %831 = load i32, ptr %830, align 4, !tbaa !8
  %832 = load i32, ptr %j2, align 4, !tbaa !8
  %sub853 = sub nsw i32 %831, %832
  %833 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %834 = load i32, ptr %833, align 4, !tbaa !8
  %add854 = add nsw i32 %sub853, %834
  %835 = load i32, ptr %ka1, align 4, !tbaa !8
  %div855 = sdiv i32 %add854, %835
  store i32 %div855, ptr %nr, align 4, !tbaa !8
  %836 = load i32, ptr %j2, align 4, !tbaa !8
  %837 = load i32, ptr %nr, align 4, !tbaa !8
  %sub856 = sub nsw i32 %837, 1
  %838 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul857 = mul nsw i32 %sub856, %838
  %add858 = add nsw i32 %836, %mul857
  store i32 %add858, ptr %j1, align 4, !tbaa !8
  %839 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp859 = icmp sgt i32 %839, 0
  br i1 %cmp859, label %if.then861, label %if.end917

if.then861:                                       ; preds = %cond.end849
  %840 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %841 = load i32, ptr %j2, align 4, !tbaa !8
  %842 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul862 = mul nsw i32 %841, %842
  %add863 = add nsw i32 %mul862, 1
  %idxprom864 = sext i32 %add863 to i64
  %arrayidx865 = getelementptr inbounds float, ptr %840, i64 %idxprom864
  %843 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %844 = load i32, ptr %j2, align 4, !tbaa !8
  %idxprom866 = sext i32 %844 to i64
  %arrayidx867 = getelementptr inbounds float, ptr %843, i64 %idxprom866
  %845 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %846 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %847 = load i32, ptr %846, align 4, !tbaa !8
  %848 = load i32, ptr %j2, align 4, !tbaa !8
  %add868 = add nsw i32 %847, %848
  %idxprom869 = sext i32 %add868 to i64
  %arrayidx870 = getelementptr inbounds float, ptr %845, i64 %idxprom869
  %call871 = call i32 @slargv_(ptr noundef %nr, ptr noundef %arrayidx865, ptr noundef %inca, ptr noundef %arrayidx867, ptr noundef %ka1, ptr noundef %arrayidx870, ptr noundef %ka1)
  %849 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %850 = load i32, ptr %849, align 4, !tbaa !8
  %sub872 = sub nsw i32 %850, 1
  store i32 %sub872, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond873

for.cond873:                                      ; preds = %for.inc894, %if.then861
  %851 = load i32, ptr %l, align 4, !tbaa !8
  %852 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp874 = icmp sle i32 %851, %852
  br i1 %cmp874, label %for.body876, label %for.end896

for.body876:                                      ; preds = %for.cond873
  %853 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %854 = load i32, ptr %ka1, align 4, !tbaa !8
  %855 = load i32, ptr %l, align 4, !tbaa !8
  %sub877 = sub nsw i32 %854, %855
  %856 = load i32, ptr %j2, align 4, !tbaa !8
  %857 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul878 = mul nsw i32 %856, %857
  %add879 = add nsw i32 %sub877, %mul878
  %idxprom880 = sext i32 %add879 to i64
  %arrayidx881 = getelementptr inbounds float, ptr %853, i64 %idxprom880
  %858 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %859 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %860 = load i32, ptr %859, align 4, !tbaa !8
  %861 = load i32, ptr %l, align 4, !tbaa !8
  %sub882 = sub nsw i32 %860, %861
  %862 = load i32, ptr %j2, align 4, !tbaa !8
  %add883 = add nsw i32 %862, 1
  %863 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul884 = mul nsw i32 %add883, %863
  %add885 = add nsw i32 %sub882, %mul884
  %idxprom886 = sext i32 %add885 to i64
  %arrayidx887 = getelementptr inbounds float, ptr %858, i64 %idxprom886
  %864 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %865 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %866 = load i32, ptr %865, align 4, !tbaa !8
  %867 = load i32, ptr %j2, align 4, !tbaa !8
  %add888 = add nsw i32 %866, %867
  %idxprom889 = sext i32 %add888 to i64
  %arrayidx890 = getelementptr inbounds float, ptr %864, i64 %idxprom889
  %868 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %869 = load i32, ptr %j2, align 4, !tbaa !8
  %idxprom891 = sext i32 %869 to i64
  %arrayidx892 = getelementptr inbounds float, ptr %868, i64 %idxprom891
  %call893 = call i32 @slartv_(ptr noundef %nr, ptr noundef %arrayidx881, ptr noundef %inca, ptr noundef %arrayidx887, ptr noundef %inca, ptr noundef %arrayidx890, ptr noundef %arrayidx892, ptr noundef %ka1)
  br label %for.inc894

for.inc894:                                       ; preds = %for.body876
  %870 = load i32, ptr %l, align 4, !tbaa !8
  %inc895 = add nsw i32 %870, 1
  store i32 %inc895, ptr %l, align 4, !tbaa !8
  br label %for.cond873, !llvm.loop !29

for.end896:                                       ; preds = %for.cond873
  %871 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %872 = load i32, ptr %ka1, align 4, !tbaa !8
  %873 = load i32, ptr %j2, align 4, !tbaa !8
  %874 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul897 = mul nsw i32 %873, %874
  %add898 = add nsw i32 %872, %mul897
  %idxprom899 = sext i32 %add898 to i64
  %arrayidx900 = getelementptr inbounds float, ptr %871, i64 %idxprom899
  %875 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %876 = load i32, ptr %ka1, align 4, !tbaa !8
  %877 = load i32, ptr %j2, align 4, !tbaa !8
  %add901 = add nsw i32 %877, 1
  %878 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul902 = mul nsw i32 %add901, %878
  %add903 = add nsw i32 %876, %mul902
  %idxprom904 = sext i32 %add903 to i64
  %arrayidx905 = getelementptr inbounds float, ptr %875, i64 %idxprom904
  %879 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %880 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %881 = load i32, ptr %880, align 4, !tbaa !8
  %882 = load i32, ptr %j2, align 4, !tbaa !8
  %add906 = add nsw i32 %882, 1
  %883 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul907 = mul nsw i32 %add906, %883
  %add908 = add nsw i32 %881, %mul907
  %idxprom909 = sext i32 %add908 to i64
  %arrayidx910 = getelementptr inbounds float, ptr %879, i64 %idxprom909
  %884 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %885 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %886 = load i32, ptr %885, align 4, !tbaa !8
  %887 = load i32, ptr %j2, align 4, !tbaa !8
  %add911 = add nsw i32 %886, %887
  %idxprom912 = sext i32 %add911 to i64
  %arrayidx913 = getelementptr inbounds float, ptr %884, i64 %idxprom912
  %888 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %889 = load i32, ptr %j2, align 4, !tbaa !8
  %idxprom914 = sext i32 %889 to i64
  %arrayidx915 = getelementptr inbounds float, ptr %888, i64 %idxprom914
  %call916 = call i32 @slar2v_(ptr noundef %nr, ptr noundef %arrayidx900, ptr noundef %arrayidx905, ptr noundef %arrayidx910, ptr noundef %inca, ptr noundef %arrayidx913, ptr noundef %arrayidx915, ptr noundef %ka1)
  br label %if.end917

if.end917:                                        ; preds = %for.end896, %cond.end849
  %890 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %891 = load i32, ptr %890, align 4, !tbaa !8
  %892 = load i32, ptr %k, align 4, !tbaa !8
  %sub918 = sub nsw i32 %891, %892
  %add919 = add nsw i32 %sub918, 1
  store i32 %add919, ptr %i__3, align 4, !tbaa !8
  %893 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %894 = load i32, ptr %893, align 4, !tbaa !8
  %sub920 = sub nsw i32 %894, 1
  store i32 %sub920, ptr %l, align 4, !tbaa !8
  br label %for.cond921

for.cond921:                                      ; preds = %for.inc951, %if.end917
  %895 = load i32, ptr %l, align 4, !tbaa !8
  %896 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp922 = icmp sge i32 %895, %896
  br i1 %cmp922, label %for.body924, label %for.end953

for.body924:                                      ; preds = %for.cond921
  %897 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %898 = load i32, ptr %897, align 4, !tbaa !8
  %899 = load i32, ptr %j2, align 4, !tbaa !8
  %sub925 = sub nsw i32 %898, %899
  %900 = load i32, ptr %l, align 4, !tbaa !8
  %add926 = add nsw i32 %sub925, %900
  %901 = load i32, ptr %ka1, align 4, !tbaa !8
  %div927 = sdiv i32 %add926, %901
  store i32 %div927, ptr %nrt, align 4, !tbaa !8
  %902 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp928 = icmp sgt i32 %902, 0
  br i1 %cmp928, label %if.then930, label %if.end950

if.then930:                                       ; preds = %for.body924
  %903 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %904 = load i32, ptr %l, align 4, !tbaa !8
  %905 = load i32, ptr %j2, align 4, !tbaa !8
  %906 = load i32, ptr %ka1, align 4, !tbaa !8
  %add931 = add nsw i32 %905, %906
  %907 = load i32, ptr %l, align 4, !tbaa !8
  %sub932 = sub nsw i32 %add931, %907
  %908 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul933 = mul nsw i32 %sub932, %908
  %add934 = add nsw i32 %904, %mul933
  %idxprom935 = sext i32 %add934 to i64
  %arrayidx936 = getelementptr inbounds float, ptr %903, i64 %idxprom935
  %909 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %910 = load i32, ptr %l, align 4, !tbaa !8
  %add937 = add nsw i32 %910, 1
  %911 = load i32, ptr %j2, align 4, !tbaa !8
  %912 = load i32, ptr %ka1, align 4, !tbaa !8
  %add938 = add nsw i32 %911, %912
  %913 = load i32, ptr %l, align 4, !tbaa !8
  %sub939 = sub nsw i32 %add938, %913
  %914 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul940 = mul nsw i32 %sub939, %914
  %add941 = add nsw i32 %add937, %mul940
  %idxprom942 = sext i32 %add941 to i64
  %arrayidx943 = getelementptr inbounds float, ptr %909, i64 %idxprom942
  %915 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %916 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %917 = load i32, ptr %916, align 4, !tbaa !8
  %918 = load i32, ptr %j2, align 4, !tbaa !8
  %add944 = add nsw i32 %917, %918
  %idxprom945 = sext i32 %add944 to i64
  %arrayidx946 = getelementptr inbounds float, ptr %915, i64 %idxprom945
  %919 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %920 = load i32, ptr %j2, align 4, !tbaa !8
  %idxprom947 = sext i32 %920 to i64
  %arrayidx948 = getelementptr inbounds float, ptr %919, i64 %idxprom947
  %call949 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx936, ptr noundef %inca, ptr noundef %arrayidx943, ptr noundef %inca, ptr noundef %arrayidx946, ptr noundef %arrayidx948, ptr noundef %ka1)
  br label %if.end950

if.end950:                                        ; preds = %if.then930, %for.body924
  br label %for.inc951

for.inc951:                                       ; preds = %if.end950
  %921 = load i32, ptr %l, align 4, !tbaa !8
  %dec952 = add nsw i32 %921, -1
  store i32 %dec952, ptr %l, align 4, !tbaa !8
  br label %for.cond921, !llvm.loop !30

for.end953:                                       ; preds = %for.cond921
  %922 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool954 = icmp ne i32 %922, 0
  br i1 %tobool954, label %if.then955, label %if.end990

if.then955:                                       ; preds = %for.end953
  %923 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %923, ptr %i__3, align 4, !tbaa !8
  %924 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %924, ptr %i__2, align 4, !tbaa !8
  %925 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %925, ptr %j, align 4, !tbaa !8
  br label %for.cond956

for.cond956:                                      ; preds = %for.inc987, %if.then955
  %926 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp957 = icmp slt i32 %926, 0
  br i1 %cmp957, label %cond.true959, label %cond.false962

cond.true959:                                     ; preds = %for.cond956
  %927 = load i32, ptr %j, align 4, !tbaa !8
  %928 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp960 = icmp sge i32 %927, %928
  %conv961 = zext i1 %cmp960 to i32
  br label %cond.end965

cond.false962:                                    ; preds = %for.cond956
  %929 = load i32, ptr %j, align 4, !tbaa !8
  %930 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp963 = icmp sle i32 %929, %930
  %conv964 = zext i1 %cmp963 to i32
  br label %cond.end965

cond.end965:                                      ; preds = %cond.false962, %cond.true959
  %cond966 = phi i32 [ %conv961, %cond.true959 ], [ %conv964, %cond.false962 ]
  %tobool967 = icmp ne i32 %cond966, 0
  br i1 %tobool967, label %for.body968, label %for.end989

for.body968:                                      ; preds = %cond.end965
  %931 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %932 = load i32, ptr %931, align 4, !tbaa !8
  %933 = load i32, ptr %m, align 4, !tbaa !8
  %sub969 = sub nsw i32 %932, %933
  store i32 %sub969, ptr %i__4, align 4, !tbaa !8
  %934 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %935 = load i32, ptr %m, align 4, !tbaa !8
  %add970 = add nsw i32 %935, 1
  %936 = load i32, ptr %j, align 4, !tbaa !8
  %937 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul971 = mul nsw i32 %936, %937
  %add972 = add nsw i32 %add970, %mul971
  %idxprom973 = sext i32 %add972 to i64
  %arrayidx974 = getelementptr inbounds float, ptr %934, i64 %idxprom973
  %938 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %939 = load i32, ptr %m, align 4, !tbaa !8
  %add975 = add nsw i32 %939, 1
  %940 = load i32, ptr %j, align 4, !tbaa !8
  %add976 = add nsw i32 %940, 1
  %941 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul977 = mul nsw i32 %add976, %941
  %add978 = add nsw i32 %add975, %mul977
  %idxprom979 = sext i32 %add978 to i64
  %arrayidx980 = getelementptr inbounds float, ptr %938, i64 %idxprom979
  %942 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %943 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %944 = load i32, ptr %943, align 4, !tbaa !8
  %945 = load i32, ptr %j, align 4, !tbaa !8
  %add981 = add nsw i32 %944, %945
  %idxprom982 = sext i32 %add981 to i64
  %arrayidx983 = getelementptr inbounds float, ptr %942, i64 %idxprom982
  %946 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %947 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom984 = sext i32 %947 to i64
  %arrayidx985 = getelementptr inbounds float, ptr %946, i64 %idxprom984
  %call986 = call i32 @srot_(ptr noundef %i__4, ptr noundef %arrayidx974, ptr noundef @c__1, ptr noundef %arrayidx980, ptr noundef @c__1, ptr noundef %arrayidx983, ptr noundef %arrayidx985)
  br label %for.inc987

for.inc987:                                       ; preds = %for.body968
  %948 = load i32, ptr %i__2, align 4, !tbaa !8
  %949 = load i32, ptr %j, align 4, !tbaa !8
  %add988 = add nsw i32 %949, %948
  store i32 %add988, ptr %j, align 4, !tbaa !8
  br label %for.cond956, !llvm.loop !31

for.end989:                                       ; preds = %cond.end965
  br label %if.end990

if.end990:                                        ; preds = %for.end989, %for.end953
  br label %for.inc991

for.inc991:                                       ; preds = %if.end990
  %950 = load i32, ptr %k, align 4, !tbaa !8
  %dec992 = add nsw i32 %950, -1
  store i32 %dec992, ptr %k, align 4, !tbaa !8
  br label %for.cond834, !llvm.loop !32

for.end993:                                       ; preds = %for.cond834
  %951 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %952 = load i32, ptr %951, align 4, !tbaa !8
  %sub994 = sub nsw i32 %952, 1
  store i32 %sub994, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond995

for.cond995:                                      ; preds = %for.inc1050, %for.end993
  %953 = load i32, ptr %k, align 4, !tbaa !8
  %954 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp996 = icmp sle i32 %953, %954
  br i1 %cmp996, label %for.body998, label %for.end1052

for.body998:                                      ; preds = %for.cond995
  store i32 1, ptr %i__3, align 4, !tbaa !8
  %955 = load i32, ptr %k, align 4, !tbaa !8
  %956 = load i32, ptr %i0, align 4, !tbaa !8
  %sub999 = sub nsw i32 %955, %956
  %add1000 = add nsw i32 %sub999, 2
  store i32 %add1000, ptr %i__4, align 4, !tbaa !8
  %957 = load i32, ptr %i__, align 4, !tbaa !8
  %958 = load i32, ptr %k, align 4, !tbaa !8
  %sub1001 = sub nsw i32 %957, %958
  %sub1002 = sub nsw i32 %sub1001, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1003) #4
  %959 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %959, ptr %_x1003, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1004) #4
  %960 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %960, ptr %_y1004, align 4, !tbaa !8
  %961 = load i32, ptr %_x1003, align 4, !tbaa !8
  %962 = load i32, ptr %_y1004, align 4, !tbaa !8
  %cmp1006 = icmp sgt i32 %961, %962
  br i1 %cmp1006, label %cond.true1008, label %cond.false1009

cond.true1008:                                    ; preds = %for.body998
  %963 = load i32, ptr %_x1003, align 4, !tbaa !8
  br label %cond.end1010

cond.false1009:                                   ; preds = %for.body998
  %964 = load i32, ptr %_y1004, align 4, !tbaa !8
  br label %cond.end1010

cond.end1010:                                     ; preds = %cond.false1009, %cond.true1008
  %cond1011 = phi i32 [ %963, %cond.true1008 ], [ %964, %cond.false1009 ]
  store i32 %cond1011, ptr %tmp1005, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1004) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1003) #4
  %965 = load i32, ptr %tmp1005, align 4, !tbaa !8
  %966 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul1012 = mul nsw i32 %965, %966
  %add1013 = add nsw i32 %sub1002, %mul1012
  store i32 %add1013, ptr %j2, align 4, !tbaa !8
  %967 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %968 = load i32, ptr %967, align 4, !tbaa !8
  %969 = load i32, ptr %k, align 4, !tbaa !8
  %sub1014 = sub nsw i32 %968, %969
  store i32 %sub1014, ptr %l, align 4, !tbaa !8
  br label %for.cond1015

for.cond1015:                                     ; preds = %for.inc1047, %cond.end1010
  %970 = load i32, ptr %l, align 4, !tbaa !8
  %cmp1016 = icmp sge i32 %970, 1
  br i1 %cmp1016, label %for.body1018, label %for.end1049

for.body1018:                                     ; preds = %for.cond1015
  %971 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %972 = load i32, ptr %971, align 4, !tbaa !8
  %973 = load i32, ptr %j2, align 4, !tbaa !8
  %sub1019 = sub nsw i32 %972, %973
  %974 = load i32, ptr %l, align 4, !tbaa !8
  %add1020 = add nsw i32 %sub1019, %974
  %975 = load i32, ptr %ka1, align 4, !tbaa !8
  %div1021 = sdiv i32 %add1020, %975
  store i32 %div1021, ptr %nrt, align 4, !tbaa !8
  %976 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp1022 = icmp sgt i32 %976, 0
  br i1 %cmp1022, label %if.then1024, label %if.end1046

if.then1024:                                      ; preds = %for.body1018
  %977 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %978 = load i32, ptr %l, align 4, !tbaa !8
  %979 = load i32, ptr %j2, align 4, !tbaa !8
  %980 = load i32, ptr %ka1, align 4, !tbaa !8
  %add1025 = add nsw i32 %979, %980
  %981 = load i32, ptr %l, align 4, !tbaa !8
  %sub1026 = sub nsw i32 %add1025, %981
  %982 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1027 = mul nsw i32 %sub1026, %982
  %add1028 = add nsw i32 %978, %mul1027
  %idxprom1029 = sext i32 %add1028 to i64
  %arrayidx1030 = getelementptr inbounds float, ptr %977, i64 %idxprom1029
  %983 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %984 = load i32, ptr %l, align 4, !tbaa !8
  %add1031 = add nsw i32 %984, 1
  %985 = load i32, ptr %j2, align 4, !tbaa !8
  %986 = load i32, ptr %ka1, align 4, !tbaa !8
  %add1032 = add nsw i32 %985, %986
  %987 = load i32, ptr %l, align 4, !tbaa !8
  %sub1033 = sub nsw i32 %add1032, %987
  %988 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1034 = mul nsw i32 %sub1033, %988
  %add1035 = add nsw i32 %add1031, %mul1034
  %idxprom1036 = sext i32 %add1035 to i64
  %arrayidx1037 = getelementptr inbounds float, ptr %983, i64 %idxprom1036
  %989 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %990 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %991 = load i32, ptr %990, align 4, !tbaa !8
  %992 = load i32, ptr %j2, align 4, !tbaa !8
  %add1038 = add nsw i32 %991, %992
  %993 = load i32, ptr %m, align 4, !tbaa !8
  %sub1039 = sub nsw i32 %add1038, %993
  %idxprom1040 = sext i32 %sub1039 to i64
  %arrayidx1041 = getelementptr inbounds float, ptr %989, i64 %idxprom1040
  %994 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %995 = load i32, ptr %j2, align 4, !tbaa !8
  %996 = load i32, ptr %m, align 4, !tbaa !8
  %sub1042 = sub nsw i32 %995, %996
  %idxprom1043 = sext i32 %sub1042 to i64
  %arrayidx1044 = getelementptr inbounds float, ptr %994, i64 %idxprom1043
  %call1045 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx1030, ptr noundef %inca, ptr noundef %arrayidx1037, ptr noundef %inca, ptr noundef %arrayidx1041, ptr noundef %arrayidx1044, ptr noundef %ka1)
  br label %if.end1046

if.end1046:                                       ; preds = %if.then1024, %for.body1018
  br label %for.inc1047

for.inc1047:                                      ; preds = %if.end1046
  %997 = load i32, ptr %l, align 4, !tbaa !8
  %dec1048 = add nsw i32 %997, -1
  store i32 %dec1048, ptr %l, align 4, !tbaa !8
  br label %for.cond1015, !llvm.loop !33

for.end1049:                                      ; preds = %for.cond1015
  br label %for.inc1050

for.inc1050:                                      ; preds = %for.end1049
  %998 = load i32, ptr %k, align 4, !tbaa !8
  %inc1051 = add nsw i32 %998, 1
  store i32 %inc1051, ptr %k, align 4, !tbaa !8
  br label %for.cond995, !llvm.loop !34

for.end1052:                                      ; preds = %for.cond995
  %999 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1000 = load i32, ptr %999, align 4, !tbaa !8
  %cmp1053 = icmp sgt i32 %1000, 1
  br i1 %cmp1053, label %if.then1055, label %if.end1084

if.then1055:                                      ; preds = %for.end1052
  %1001 = load i32, ptr %i__, align 4, !tbaa !8
  %1002 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1003 = load i32, ptr %1002, align 4, !tbaa !8
  %sub1056 = sub nsw i32 %1001, %1003
  %1004 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1005 = load i32, ptr %1004, align 4, !tbaa !8
  %shl1057 = shl i32 %1005, 1
  %add1058 = add nsw i32 %sub1056, %shl1057
  %add1059 = add nsw i32 %add1058, 1
  store i32 %add1059, ptr %i__2, align 4, !tbaa !8
  %1006 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1007 = load i32, ptr %1006, align 4, !tbaa !8
  %sub1060 = sub nsw i32 %1007, 1
  store i32 %sub1060, ptr %j, align 4, !tbaa !8
  br label %for.cond1061

for.cond1061:                                     ; preds = %for.inc1081, %if.then1055
  %1008 = load i32, ptr %j, align 4, !tbaa !8
  %1009 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1062 = icmp sge i32 %1008, %1009
  br i1 %cmp1062, label %for.body1064, label %for.end1083

for.body1064:                                     ; preds = %for.cond1061
  %1010 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1011 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1012 = load i32, ptr %1011, align 4, !tbaa !8
  %1013 = load i32, ptr %j, align 4, !tbaa !8
  %add1065 = add nsw i32 %1012, %1013
  %1014 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1015 = load i32, ptr %1014, align 4, !tbaa !8
  %sub1066 = sub nsw i32 %add1065, %1015
  %1016 = load i32, ptr %m, align 4, !tbaa !8
  %sub1067 = sub nsw i32 %sub1066, %1016
  %idxprom1068 = sext i32 %sub1067 to i64
  %arrayidx1069 = getelementptr inbounds float, ptr %1010, i64 %idxprom1068
  %1017 = load float, ptr %arrayidx1069, align 4, !tbaa !10
  %1018 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1019 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1020 = load i32, ptr %1019, align 4, !tbaa !8
  %1021 = load i32, ptr %j, align 4, !tbaa !8
  %add1070 = add nsw i32 %1020, %1021
  %1022 = load i32, ptr %m, align 4, !tbaa !8
  %sub1071 = sub nsw i32 %add1070, %1022
  %idxprom1072 = sext i32 %sub1071 to i64
  %arrayidx1073 = getelementptr inbounds float, ptr %1018, i64 %idxprom1072
  store float %1017, ptr %arrayidx1073, align 4, !tbaa !10
  %1023 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1024 = load i32, ptr %j, align 4, !tbaa !8
  %1025 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1026 = load i32, ptr %1025, align 4, !tbaa !8
  %sub1074 = sub nsw i32 %1024, %1026
  %1027 = load i32, ptr %m, align 4, !tbaa !8
  %sub1075 = sub nsw i32 %sub1074, %1027
  %idxprom1076 = sext i32 %sub1075 to i64
  %arrayidx1077 = getelementptr inbounds float, ptr %1023, i64 %idxprom1076
  %1028 = load float, ptr %arrayidx1077, align 4, !tbaa !10
  %1029 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1030 = load i32, ptr %j, align 4, !tbaa !8
  %1031 = load i32, ptr %m, align 4, !tbaa !8
  %sub1078 = sub nsw i32 %1030, %1031
  %idxprom1079 = sext i32 %sub1078 to i64
  %arrayidx1080 = getelementptr inbounds float, ptr %1029, i64 %idxprom1079
  store float %1028, ptr %arrayidx1080, align 4, !tbaa !10
  br label %for.inc1081

for.inc1081:                                      ; preds = %for.body1064
  %1032 = load i32, ptr %j, align 4, !tbaa !8
  %dec1082 = add nsw i32 %1032, -1
  store i32 %dec1082, ptr %j, align 4, !tbaa !8
  br label %for.cond1061, !llvm.loop !35

for.end1083:                                      ; preds = %for.cond1061
  br label %if.end1084

if.end1084:                                       ; preds = %for.end1083, %for.end1052
  br label %if.end2098

if.else1085:                                      ; preds = %if.end100
  %1033 = load i32, ptr %update, align 4, !tbaa !8
  %tobool1086 = icmp ne i32 %1033, 0
  br i1 %tobool1086, label %if.then1087, label %if.end1331

if.then1087:                                      ; preds = %if.else1085
  %1034 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %1035 = load i32, ptr %i__, align 4, !tbaa !8
  %1036 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul1088 = mul nsw i32 %1035, %1036
  %add1089 = add nsw i32 %mul1088, 1
  %idxprom1090 = sext i32 %add1089 to i64
  %arrayidx1091 = getelementptr inbounds float, ptr %1034, i64 %idxprom1090
  %1037 = load float, ptr %arrayidx1091, align 4, !tbaa !10
  store float %1037, ptr %bii, align 4, !tbaa !10
  %1038 = load i32, ptr %i1, align 4, !tbaa !8
  store i32 %1038, ptr %i__2, align 4, !tbaa !8
  %1039 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %1039, ptr %j, align 4, !tbaa !8
  br label %for.cond1092

for.cond1092:                                     ; preds = %for.inc1103, %if.then1087
  %1040 = load i32, ptr %j, align 4, !tbaa !8
  %1041 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1093 = icmp sle i32 %1040, %1041
  br i1 %cmp1093, label %for.body1095, label %for.end1105

for.body1095:                                     ; preds = %for.cond1092
  %1042 = load float, ptr %bii, align 4, !tbaa !10
  %1043 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1044 = load i32, ptr %j, align 4, !tbaa !8
  %1045 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1096 = sub nsw i32 %1044, %1045
  %add1097 = add nsw i32 %sub1096, 1
  %1046 = load i32, ptr %i__, align 4, !tbaa !8
  %1047 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1098 = mul nsw i32 %1046, %1047
  %add1099 = add nsw i32 %add1097, %mul1098
  %idxprom1100 = sext i32 %add1099 to i64
  %arrayidx1101 = getelementptr inbounds float, ptr %1043, i64 %idxprom1100
  %1048 = load float, ptr %arrayidx1101, align 4, !tbaa !10
  %div1102 = fdiv float %1048, %1042
  store float %div1102, ptr %arrayidx1101, align 4, !tbaa !10
  br label %for.inc1103

for.inc1103:                                      ; preds = %for.body1095
  %1049 = load i32, ptr %j, align 4, !tbaa !8
  %inc1104 = add nsw i32 %1049, 1
  store i32 %inc1104, ptr %j, align 4, !tbaa !8
  br label %for.cond1092, !llvm.loop !36

for.end1105:                                      ; preds = %for.cond1092
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %1050 = load i32, ptr %i__, align 4, !tbaa !8
  %1051 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1052 = load i32, ptr %1051, align 4, !tbaa !8
  %sub1106 = sub nsw i32 %1050, %1052
  store i32 %sub1106, ptr %i__3, align 4, !tbaa !8
  %1053 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %1053, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1107) #4
  %1054 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %1054, ptr %_x1107, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1108) #4
  %1055 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %1055, ptr %_y1108, align 4, !tbaa !8
  %1056 = load i32, ptr %_x1107, align 4, !tbaa !8
  %1057 = load i32, ptr %_y1108, align 4, !tbaa !8
  %cmp1110 = icmp sgt i32 %1056, %1057
  br i1 %cmp1110, label %cond.true1112, label %cond.false1113

cond.true1112:                                    ; preds = %for.end1105
  %1058 = load i32, ptr %_x1107, align 4, !tbaa !8
  br label %cond.end1114

cond.false1113:                                   ; preds = %for.end1105
  %1059 = load i32, ptr %_y1108, align 4, !tbaa !8
  br label %cond.end1114

cond.end1114:                                     ; preds = %cond.false1113, %cond.true1112
  %cond1115 = phi i32 [ %1058, %cond.true1112 ], [ %1059, %cond.false1113 ]
  store i32 %cond1115, ptr %tmp1109, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1108) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1107) #4
  %1060 = load i32, ptr %tmp1109, align 4, !tbaa !8
  store i32 %1060, ptr %j, align 4, !tbaa !8
  br label %for.cond1116

for.cond1116:                                     ; preds = %for.inc1127, %cond.end1114
  %1061 = load i32, ptr %j, align 4, !tbaa !8
  %1062 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1117 = icmp sle i32 %1061, %1062
  br i1 %cmp1117, label %for.body1119, label %for.end1129

for.body1119:                                     ; preds = %for.cond1116
  %1063 = load float, ptr %bii, align 4, !tbaa !10
  %1064 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1065 = load i32, ptr %i__, align 4, !tbaa !8
  %1066 = load i32, ptr %j, align 4, !tbaa !8
  %sub1120 = sub nsw i32 %1065, %1066
  %add1121 = add nsw i32 %sub1120, 1
  %1067 = load i32, ptr %j, align 4, !tbaa !8
  %1068 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1122 = mul nsw i32 %1067, %1068
  %add1123 = add nsw i32 %add1121, %mul1122
  %idxprom1124 = sext i32 %add1123 to i64
  %arrayidx1125 = getelementptr inbounds float, ptr %1064, i64 %idxprom1124
  %1069 = load float, ptr %arrayidx1125, align 4, !tbaa !10
  %div1126 = fdiv float %1069, %1063
  store float %div1126, ptr %arrayidx1125, align 4, !tbaa !10
  br label %for.inc1127

for.inc1127:                                      ; preds = %for.body1119
  %1070 = load i32, ptr %j, align 4, !tbaa !8
  %inc1128 = add nsw i32 %1070, 1
  store i32 %inc1128, ptr %j, align 4, !tbaa !8
  br label %for.cond1116, !llvm.loop !37

for.end1129:                                      ; preds = %for.cond1116
  %1071 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1130 = sub nsw i32 %1071, 1
  store i32 %sub1130, ptr %i__4, align 4, !tbaa !8
  %1072 = load i32, ptr %i__, align 4, !tbaa !8
  %1073 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub1131 = sub nsw i32 %1072, %1073
  store i32 %sub1131, ptr %k, align 4, !tbaa !8
  br label %for.cond1132

for.cond1132:                                     ; preds = %for.inc1241, %for.end1129
  %1074 = load i32, ptr %k, align 4, !tbaa !8
  %1075 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1133 = icmp sle i32 %1074, %1075
  br i1 %cmp1133, label %for.body1135, label %for.end1243

for.body1135:                                     ; preds = %for.cond1132
  %1076 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %1076, ptr %i__2, align 4, !tbaa !8
  %1077 = load i32, ptr %i__, align 4, !tbaa !8
  %1078 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub1136 = sub nsw i32 %1077, %1078
  store i32 %sub1136, ptr %j, align 4, !tbaa !8
  br label %for.cond1137

for.cond1137:                                     ; preds = %for.inc1199, %for.body1135
  %1079 = load i32, ptr %j, align 4, !tbaa !8
  %1080 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1138 = icmp sle i32 %1079, %1080
  br i1 %cmp1138, label %for.body1140, label %for.end1201

for.body1140:                                     ; preds = %for.cond1137
  %1081 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1082 = load i32, ptr %k, align 4, !tbaa !8
  %1083 = load i32, ptr %j, align 4, !tbaa !8
  %sub1141 = sub nsw i32 %1082, %1083
  %add1142 = add nsw i32 %sub1141, 1
  %1084 = load i32, ptr %j, align 4, !tbaa !8
  %1085 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1143 = mul nsw i32 %1084, %1085
  %add1144 = add nsw i32 %add1142, %mul1143
  %idxprom1145 = sext i32 %add1144 to i64
  %arrayidx1146 = getelementptr inbounds float, ptr %1081, i64 %idxprom1145
  %1086 = load float, ptr %arrayidx1146, align 4, !tbaa !10
  %1087 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %1088 = load i32, ptr %i__, align 4, !tbaa !8
  %1089 = load i32, ptr %j, align 4, !tbaa !8
  %sub1147 = sub nsw i32 %1088, %1089
  %add1148 = add nsw i32 %sub1147, 1
  %1090 = load i32, ptr %j, align 4, !tbaa !8
  %1091 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul1149 = mul nsw i32 %1090, %1091
  %add1150 = add nsw i32 %add1148, %mul1149
  %idxprom1151 = sext i32 %add1150 to i64
  %arrayidx1152 = getelementptr inbounds float, ptr %1087, i64 %idxprom1151
  %1092 = load float, ptr %arrayidx1152, align 4, !tbaa !10
  %1093 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1094 = load i32, ptr %i__, align 4, !tbaa !8
  %1095 = load i32, ptr %k, align 4, !tbaa !8
  %sub1153 = sub nsw i32 %1094, %1095
  %add1154 = add nsw i32 %sub1153, 1
  %1096 = load i32, ptr %k, align 4, !tbaa !8
  %1097 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1155 = mul nsw i32 %1096, %1097
  %add1156 = add nsw i32 %add1154, %mul1155
  %idxprom1157 = sext i32 %add1156 to i64
  %arrayidx1158 = getelementptr inbounds float, ptr %1093, i64 %idxprom1157
  %1098 = load float, ptr %arrayidx1158, align 4, !tbaa !10
  %neg1160 = fneg float %1092
  %1099 = call float @llvm.fmuladd.f32(float %neg1160, float %1098, float %1086)
  %1100 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %1101 = load i32, ptr %i__, align 4, !tbaa !8
  %1102 = load i32, ptr %k, align 4, !tbaa !8
  %sub1161 = sub nsw i32 %1101, %1102
  %add1162 = add nsw i32 %sub1161, 1
  %1103 = load i32, ptr %k, align 4, !tbaa !8
  %1104 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul1163 = mul nsw i32 %1103, %1104
  %add1164 = add nsw i32 %add1162, %mul1163
  %idxprom1165 = sext i32 %add1164 to i64
  %arrayidx1166 = getelementptr inbounds float, ptr %1100, i64 %idxprom1165
  %1105 = load float, ptr %arrayidx1166, align 4, !tbaa !10
  %1106 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1107 = load i32, ptr %i__, align 4, !tbaa !8
  %1108 = load i32, ptr %j, align 4, !tbaa !8
  %sub1167 = sub nsw i32 %1107, %1108
  %add1168 = add nsw i32 %sub1167, 1
  %1109 = load i32, ptr %j, align 4, !tbaa !8
  %1110 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1169 = mul nsw i32 %1109, %1110
  %add1170 = add nsw i32 %add1168, %mul1169
  %idxprom1171 = sext i32 %add1170 to i64
  %arrayidx1172 = getelementptr inbounds float, ptr %1106, i64 %idxprom1171
  %1111 = load float, ptr %arrayidx1172, align 4, !tbaa !10
  %neg1174 = fneg float %1105
  %1112 = call float @llvm.fmuladd.f32(float %neg1174, float %1111, float %1099)
  %1113 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1114 = load i32, ptr %i__, align 4, !tbaa !8
  %1115 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1175 = mul nsw i32 %1114, %1115
  %add1176 = add nsw i32 %mul1175, 1
  %idxprom1177 = sext i32 %add1176 to i64
  %arrayidx1178 = getelementptr inbounds float, ptr %1113, i64 %idxprom1177
  %1116 = load float, ptr %arrayidx1178, align 4, !tbaa !10
  %1117 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %1118 = load i32, ptr %i__, align 4, !tbaa !8
  %1119 = load i32, ptr %j, align 4, !tbaa !8
  %sub1179 = sub nsw i32 %1118, %1119
  %add1180 = add nsw i32 %sub1179, 1
  %1120 = load i32, ptr %j, align 4, !tbaa !8
  %1121 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul1181 = mul nsw i32 %1120, %1121
  %add1182 = add nsw i32 %add1180, %mul1181
  %idxprom1183 = sext i32 %add1182 to i64
  %arrayidx1184 = getelementptr inbounds float, ptr %1117, i64 %idxprom1183
  %1122 = load float, ptr %arrayidx1184, align 4, !tbaa !10
  %mul1185 = fmul float %1116, %1122
  %1123 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %1124 = load i32, ptr %i__, align 4, !tbaa !8
  %1125 = load i32, ptr %k, align 4, !tbaa !8
  %sub1186 = sub nsw i32 %1124, %1125
  %add1187 = add nsw i32 %sub1186, 1
  %1126 = load i32, ptr %k, align 4, !tbaa !8
  %1127 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul1188 = mul nsw i32 %1126, %1127
  %add1189 = add nsw i32 %add1187, %mul1188
  %idxprom1190 = sext i32 %add1189 to i64
  %arrayidx1191 = getelementptr inbounds float, ptr %1123, i64 %idxprom1190
  %1128 = load float, ptr %arrayidx1191, align 4, !tbaa !10
  %1129 = call float @llvm.fmuladd.f32(float %mul1185, float %1128, float %1112)
  %1130 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1131 = load i32, ptr %k, align 4, !tbaa !8
  %1132 = load i32, ptr %j, align 4, !tbaa !8
  %sub1193 = sub nsw i32 %1131, %1132
  %add1194 = add nsw i32 %sub1193, 1
  %1133 = load i32, ptr %j, align 4, !tbaa !8
  %1134 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1195 = mul nsw i32 %1133, %1134
  %add1196 = add nsw i32 %add1194, %mul1195
  %idxprom1197 = sext i32 %add1196 to i64
  %arrayidx1198 = getelementptr inbounds float, ptr %1130, i64 %idxprom1197
  store float %1129, ptr %arrayidx1198, align 4, !tbaa !10
  br label %for.inc1199

for.inc1199:                                      ; preds = %for.body1140
  %1135 = load i32, ptr %j, align 4, !tbaa !8
  %inc1200 = add nsw i32 %1135, 1
  store i32 %inc1200, ptr %j, align 4, !tbaa !8
  br label %for.cond1137, !llvm.loop !38

for.end1201:                                      ; preds = %for.cond1137
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %1136 = load i32, ptr %i__, align 4, !tbaa !8
  %1137 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1138 = load i32, ptr %1137, align 4, !tbaa !8
  %sub1202 = sub nsw i32 %1136, %1138
  store i32 %sub1202, ptr %i__3, align 4, !tbaa !8
  %1139 = load i32, ptr %i__, align 4, !tbaa !8
  %1140 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub1203 = sub nsw i32 %1139, %1140
  %sub1204 = sub nsw i32 %sub1203, 1
  store i32 %sub1204, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1205) #4
  %1141 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %1141, ptr %_x1205, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1206) #4
  %1142 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %1142, ptr %_y1206, align 4, !tbaa !8
  %1143 = load i32, ptr %_x1205, align 4, !tbaa !8
  %1144 = load i32, ptr %_y1206, align 4, !tbaa !8
  %cmp1208 = icmp sgt i32 %1143, %1144
  br i1 %cmp1208, label %cond.true1210, label %cond.false1211

cond.true1210:                                    ; preds = %for.end1201
  %1145 = load i32, ptr %_x1205, align 4, !tbaa !8
  br label %cond.end1212

cond.false1211:                                   ; preds = %for.end1201
  %1146 = load i32, ptr %_y1206, align 4, !tbaa !8
  br label %cond.end1212

cond.end1212:                                     ; preds = %cond.false1211, %cond.true1210
  %cond1213 = phi i32 [ %1145, %cond.true1210 ], [ %1146, %cond.false1211 ]
  store i32 %cond1213, ptr %tmp1207, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1206) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1205) #4
  %1147 = load i32, ptr %tmp1207, align 4, !tbaa !8
  store i32 %1147, ptr %j, align 4, !tbaa !8
  br label %for.cond1214

for.cond1214:                                     ; preds = %for.inc1238, %cond.end1212
  %1148 = load i32, ptr %j, align 4, !tbaa !8
  %1149 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1215 = icmp sle i32 %1148, %1149
  br i1 %cmp1215, label %for.body1217, label %for.end1240

for.body1217:                                     ; preds = %for.cond1214
  %1150 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %1151 = load i32, ptr %i__, align 4, !tbaa !8
  %1152 = load i32, ptr %k, align 4, !tbaa !8
  %sub1218 = sub nsw i32 %1151, %1152
  %add1219 = add nsw i32 %sub1218, 1
  %1153 = load i32, ptr %k, align 4, !tbaa !8
  %1154 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul1220 = mul nsw i32 %1153, %1154
  %add1221 = add nsw i32 %add1219, %mul1220
  %idxprom1222 = sext i32 %add1221 to i64
  %arrayidx1223 = getelementptr inbounds float, ptr %1150, i64 %idxprom1222
  %1155 = load float, ptr %arrayidx1223, align 4, !tbaa !10
  %1156 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1157 = load i32, ptr %i__, align 4, !tbaa !8
  %1158 = load i32, ptr %j, align 4, !tbaa !8
  %sub1224 = sub nsw i32 %1157, %1158
  %add1225 = add nsw i32 %sub1224, 1
  %1159 = load i32, ptr %j, align 4, !tbaa !8
  %1160 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1226 = mul nsw i32 %1159, %1160
  %add1227 = add nsw i32 %add1225, %mul1226
  %idxprom1228 = sext i32 %add1227 to i64
  %arrayidx1229 = getelementptr inbounds float, ptr %1156, i64 %idxprom1228
  %1161 = load float, ptr %arrayidx1229, align 4, !tbaa !10
  %1162 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1163 = load i32, ptr %k, align 4, !tbaa !8
  %1164 = load i32, ptr %j, align 4, !tbaa !8
  %sub1231 = sub nsw i32 %1163, %1164
  %add1232 = add nsw i32 %sub1231, 1
  %1165 = load i32, ptr %j, align 4, !tbaa !8
  %1166 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1233 = mul nsw i32 %1165, %1166
  %add1234 = add nsw i32 %add1232, %mul1233
  %idxprom1235 = sext i32 %add1234 to i64
  %arrayidx1236 = getelementptr inbounds float, ptr %1162, i64 %idxprom1235
  %1167 = load float, ptr %arrayidx1236, align 4, !tbaa !10
  %neg1237 = fneg float %1155
  %1168 = call float @llvm.fmuladd.f32(float %neg1237, float %1161, float %1167)
  store float %1168, ptr %arrayidx1236, align 4, !tbaa !10
  br label %for.inc1238

for.inc1238:                                      ; preds = %for.body1217
  %1169 = load i32, ptr %j, align 4, !tbaa !8
  %inc1239 = add nsw i32 %1169, 1
  store i32 %inc1239, ptr %j, align 4, !tbaa !8
  br label %for.cond1214, !llvm.loop !39

for.end1240:                                      ; preds = %for.cond1214
  br label %for.inc1241

for.inc1241:                                      ; preds = %for.end1240
  %1170 = load i32, ptr %k, align 4, !tbaa !8
  %inc1242 = add nsw i32 %1170, 1
  store i32 %inc1242, ptr %k, align 4, !tbaa !8
  br label %for.cond1132, !llvm.loop !40

for.end1243:                                      ; preds = %for.cond1132
  %1171 = load i32, ptr %i1, align 4, !tbaa !8
  store i32 %1171, ptr %i__4, align 4, !tbaa !8
  %1172 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %1172, ptr %j, align 4, !tbaa !8
  br label %for.cond1244

for.cond1244:                                     ; preds = %for.inc1287, %for.end1243
  %1173 = load i32, ptr %j, align 4, !tbaa !8
  %1174 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1245 = icmp sle i32 %1173, %1174
  br i1 %cmp1245, label %for.body1247, label %for.end1289

for.body1247:                                     ; preds = %for.cond1244
  %1175 = load i32, ptr %j, align 4, !tbaa !8
  %1176 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1177 = load i32, ptr %1176, align 4, !tbaa !8
  %sub1248 = sub nsw i32 %1175, %1177
  store i32 %sub1248, ptr %i__1, align 4, !tbaa !8
  %1178 = load i32, ptr %i__, align 4, !tbaa !8
  %1179 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub1249 = sub nsw i32 %1178, %1179
  store i32 %sub1249, ptr %i__2, align 4, !tbaa !8
  %1180 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1250 = sub nsw i32 %1180, 1
  store i32 %sub1250, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1251) #4
  %1181 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %1181, ptr %_x1251, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1252) #4
  %1182 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %1182, ptr %_y1252, align 4, !tbaa !8
  %1183 = load i32, ptr %_x1251, align 4, !tbaa !8
  %1184 = load i32, ptr %_y1252, align 4, !tbaa !8
  %cmp1254 = icmp sgt i32 %1183, %1184
  br i1 %cmp1254, label %cond.true1256, label %cond.false1257

cond.true1256:                                    ; preds = %for.body1247
  %1185 = load i32, ptr %_x1251, align 4, !tbaa !8
  br label %cond.end1258

cond.false1257:                                   ; preds = %for.body1247
  %1186 = load i32, ptr %_y1252, align 4, !tbaa !8
  br label %cond.end1258

cond.end1258:                                     ; preds = %cond.false1257, %cond.true1256
  %cond1259 = phi i32 [ %1185, %cond.true1256 ], [ %1186, %cond.false1257 ]
  store i32 %cond1259, ptr %tmp1253, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1252) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1251) #4
  %1187 = load i32, ptr %tmp1253, align 4, !tbaa !8
  store i32 %1187, ptr %k, align 4, !tbaa !8
  br label %for.cond1260

for.cond1260:                                     ; preds = %for.inc1284, %cond.end1258
  %1188 = load i32, ptr %k, align 4, !tbaa !8
  %1189 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1261 = icmp sle i32 %1188, %1189
  br i1 %cmp1261, label %for.body1263, label %for.end1286

for.body1263:                                     ; preds = %for.cond1260
  %1190 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %1191 = load i32, ptr %i__, align 4, !tbaa !8
  %1192 = load i32, ptr %k, align 4, !tbaa !8
  %sub1264 = sub nsw i32 %1191, %1192
  %add1265 = add nsw i32 %sub1264, 1
  %1193 = load i32, ptr %k, align 4, !tbaa !8
  %1194 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul1266 = mul nsw i32 %1193, %1194
  %add1267 = add nsw i32 %add1265, %mul1266
  %idxprom1268 = sext i32 %add1267 to i64
  %arrayidx1269 = getelementptr inbounds float, ptr %1190, i64 %idxprom1268
  %1195 = load float, ptr %arrayidx1269, align 4, !tbaa !10
  %1196 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1197 = load i32, ptr %j, align 4, !tbaa !8
  %1198 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1270 = sub nsw i32 %1197, %1198
  %add1271 = add nsw i32 %sub1270, 1
  %1199 = load i32, ptr %i__, align 4, !tbaa !8
  %1200 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1272 = mul nsw i32 %1199, %1200
  %add1273 = add nsw i32 %add1271, %mul1272
  %idxprom1274 = sext i32 %add1273 to i64
  %arrayidx1275 = getelementptr inbounds float, ptr %1196, i64 %idxprom1274
  %1201 = load float, ptr %arrayidx1275, align 4, !tbaa !10
  %1202 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1203 = load i32, ptr %j, align 4, !tbaa !8
  %1204 = load i32, ptr %k, align 4, !tbaa !8
  %sub1277 = sub nsw i32 %1203, %1204
  %add1278 = add nsw i32 %sub1277, 1
  %1205 = load i32, ptr %k, align 4, !tbaa !8
  %1206 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1279 = mul nsw i32 %1205, %1206
  %add1280 = add nsw i32 %add1278, %mul1279
  %idxprom1281 = sext i32 %add1280 to i64
  %arrayidx1282 = getelementptr inbounds float, ptr %1202, i64 %idxprom1281
  %1207 = load float, ptr %arrayidx1282, align 4, !tbaa !10
  %neg1283 = fneg float %1195
  %1208 = call float @llvm.fmuladd.f32(float %neg1283, float %1201, float %1207)
  store float %1208, ptr %arrayidx1282, align 4, !tbaa !10
  br label %for.inc1284

for.inc1284:                                      ; preds = %for.body1263
  %1209 = load i32, ptr %k, align 4, !tbaa !8
  %inc1285 = add nsw i32 %1209, 1
  store i32 %inc1285, ptr %k, align 4, !tbaa !8
  br label %for.cond1260, !llvm.loop !41

for.end1286:                                      ; preds = %for.cond1260
  br label %for.inc1287

for.inc1287:                                      ; preds = %for.end1286
  %1210 = load i32, ptr %j, align 4, !tbaa !8
  %inc1288 = add nsw i32 %1210, 1
  store i32 %inc1288, ptr %j, align 4, !tbaa !8
  br label %for.cond1244, !llvm.loop !42

for.end1289:                                      ; preds = %for.cond1244
  %1211 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool1290 = icmp ne i32 %1211, 0
  br i1 %tobool1290, label %if.then1291, label %if.end1324

if.then1291:                                      ; preds = %for.end1289
  %1212 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1213 = load i32, ptr %1212, align 4, !tbaa !8
  %1214 = load i32, ptr %m, align 4, !tbaa !8
  %sub1292 = sub nsw i32 %1213, %1214
  store i32 %sub1292, ptr %i__4, align 4, !tbaa !8
  %1215 = load float, ptr %bii, align 4, !tbaa !10
  %div1293 = fdiv float 1.000000e+00, %1215
  store float %div1293, ptr %r__1, align 4, !tbaa !10
  %1216 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1217 = load i32, ptr %m, align 4, !tbaa !8
  %add1294 = add nsw i32 %1217, 1
  %1218 = load i32, ptr %i__, align 4, !tbaa !8
  %1219 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul1295 = mul nsw i32 %1218, %1219
  %add1296 = add nsw i32 %add1294, %mul1295
  %idxprom1297 = sext i32 %add1296 to i64
  %arrayidx1298 = getelementptr inbounds float, ptr %1216, i64 %idxprom1297
  %call1299 = call i32 @sscal_(ptr noundef %i__4, ptr noundef %r__1, ptr noundef %arrayidx1298, ptr noundef @c__1)
  %1220 = load i32, ptr %kbt, align 4, !tbaa !8
  %cmp1300 = icmp sgt i32 %1220, 0
  br i1 %cmp1300, label %if.then1302, label %if.end1323

if.then1302:                                      ; preds = %if.then1291
  %1221 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1222 = load i32, ptr %1221, align 4, !tbaa !8
  %1223 = load i32, ptr %m, align 4, !tbaa !8
  %sub1303 = sub nsw i32 %1222, %1223
  store i32 %sub1303, ptr %i__4, align 4, !tbaa !8
  %1224 = load ptr, ptr %ldbb.addr, align 8, !tbaa !4
  %1225 = load i32, ptr %1224, align 4, !tbaa !8
  %sub1304 = sub nsw i32 %1225, 1
  store i32 %sub1304, ptr %i__3, align 4, !tbaa !8
  %1226 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1227 = load i32, ptr %m, align 4, !tbaa !8
  %add1305 = add nsw i32 %1227, 1
  %1228 = load i32, ptr %i__, align 4, !tbaa !8
  %1229 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul1306 = mul nsw i32 %1228, %1229
  %add1307 = add nsw i32 %add1305, %mul1306
  %idxprom1308 = sext i32 %add1307 to i64
  %arrayidx1309 = getelementptr inbounds float, ptr %1226, i64 %idxprom1308
  %1230 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %1231 = load i32, ptr %kbt, align 4, !tbaa !8
  %add1310 = add nsw i32 %1231, 1
  %1232 = load i32, ptr %i__, align 4, !tbaa !8
  %1233 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub1311 = sub nsw i32 %1232, %1233
  %1234 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul1312 = mul nsw i32 %sub1311, %1234
  %add1313 = add nsw i32 %add1310, %mul1312
  %idxprom1314 = sext i32 %add1313 to i64
  %arrayidx1315 = getelementptr inbounds float, ptr %1230, i64 %idxprom1314
  %1235 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1236 = load i32, ptr %m, align 4, !tbaa !8
  %add1316 = add nsw i32 %1236, 1
  %1237 = load i32, ptr %i__, align 4, !tbaa !8
  %1238 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub1317 = sub nsw i32 %1237, %1238
  %1239 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul1318 = mul nsw i32 %sub1317, %1239
  %add1319 = add nsw i32 %add1316, %mul1318
  %idxprom1320 = sext i32 %add1319 to i64
  %arrayidx1321 = getelementptr inbounds float, ptr %1235, i64 %idxprom1320
  %1240 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %call1322 = call i32 @sger_(ptr noundef %i__4, ptr noundef %kbt, ptr noundef @c_b20, ptr noundef %arrayidx1309, ptr noundef @c__1, ptr noundef %arrayidx1315, ptr noundef %i__3, ptr noundef %arrayidx1321, ptr noundef %1240)
  br label %if.end1323

if.end1323:                                       ; preds = %if.then1302, %if.then1291
  br label %if.end1324

if.end1324:                                       ; preds = %if.end1323, %for.end1289
  %1241 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1242 = load i32, ptr %i1, align 4, !tbaa !8
  %1243 = load i32, ptr %i__, align 4, !tbaa !8
  %sub1325 = sub nsw i32 %1242, %1243
  %add1326 = add nsw i32 %sub1325, 1
  %1244 = load i32, ptr %i__, align 4, !tbaa !8
  %1245 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1327 = mul nsw i32 %1244, %1245
  %add1328 = add nsw i32 %add1326, %mul1327
  %idxprom1329 = sext i32 %add1328 to i64
  %arrayidx1330 = getelementptr inbounds float, ptr %1241, i64 %idxprom1329
  %1246 = load float, ptr %arrayidx1330, align 4, !tbaa !10
  store float %1246, ptr %ra1, align 4, !tbaa !10
  br label %if.end1331

if.end1331:                                       ; preds = %if.end1324, %if.else1085
  %1247 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1248 = load i32, ptr %1247, align 4, !tbaa !8
  %sub1332 = sub nsw i32 %1248, 1
  store i32 %sub1332, ptr %i__4, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond1333

for.cond1333:                                     ; preds = %for.inc1650, %if.end1331
  %1249 = load i32, ptr %k, align 4, !tbaa !8
  %1250 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1334 = icmp sle i32 %1249, %1250
  br i1 %cmp1334, label %for.body1336, label %for.end1652

for.body1336:                                     ; preds = %for.cond1333
  %1251 = load i32, ptr %update, align 4, !tbaa !8
  %tobool1337 = icmp ne i32 %1251, 0
  br i1 %tobool1337, label %if.then1338, label %if.end1419

if.then1338:                                      ; preds = %for.body1336
  %1252 = load i32, ptr %i__, align 4, !tbaa !8
  %1253 = load i32, ptr %k, align 4, !tbaa !8
  %sub1339 = sub nsw i32 %1252, %1253
  %1254 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1255 = load i32, ptr %1254, align 4, !tbaa !8
  %add1340 = add nsw i32 %sub1339, %1255
  %1256 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1257 = load i32, ptr %1256, align 4, !tbaa !8
  %cmp1341 = icmp slt i32 %add1340, %1257
  br i1 %cmp1341, label %land.lhs.true1343, label %if.end1418

land.lhs.true1343:                                ; preds = %if.then1338
  %1258 = load i32, ptr %i__, align 4, !tbaa !8
  %1259 = load i32, ptr %k, align 4, !tbaa !8
  %sub1344 = sub nsw i32 %1258, %1259
  %cmp1345 = icmp sgt i32 %sub1344, 1
  br i1 %cmp1345, label %if.then1347, label %if.end1418

if.then1347:                                      ; preds = %land.lhs.true1343
  %1260 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1261 = load i32, ptr %ka1, align 4, !tbaa !8
  %1262 = load i32, ptr %k, align 4, !tbaa !8
  %sub1348 = sub nsw i32 %1261, %1262
  %1263 = load i32, ptr %i__, align 4, !tbaa !8
  %1264 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1349 = mul nsw i32 %1263, %1264
  %add1350 = add nsw i32 %sub1348, %mul1349
  %idxprom1351 = sext i32 %add1350 to i64
  %arrayidx1352 = getelementptr inbounds float, ptr %1260, i64 %idxprom1351
  %1265 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1266 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1267 = load i32, ptr %1266, align 4, !tbaa !8
  %1268 = load i32, ptr %i__, align 4, !tbaa !8
  %add1353 = add nsw i32 %1267, %1268
  %1269 = load i32, ptr %k, align 4, !tbaa !8
  %sub1354 = sub nsw i32 %add1353, %1269
  %1270 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1271 = load i32, ptr %1270, align 4, !tbaa !8
  %add1355 = add nsw i32 %sub1354, %1271
  %1272 = load i32, ptr %m, align 4, !tbaa !8
  %sub1356 = sub nsw i32 %add1355, %1272
  %idxprom1357 = sext i32 %sub1356 to i64
  %arrayidx1358 = getelementptr inbounds float, ptr %1265, i64 %idxprom1357
  %1273 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1274 = load i32, ptr %i__, align 4, !tbaa !8
  %1275 = load i32, ptr %k, align 4, !tbaa !8
  %sub1359 = sub nsw i32 %1274, %1275
  %1276 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1277 = load i32, ptr %1276, align 4, !tbaa !8
  %add1360 = add nsw i32 %sub1359, %1277
  %1278 = load i32, ptr %m, align 4, !tbaa !8
  %sub1361 = sub nsw i32 %add1360, %1278
  %idxprom1362 = sext i32 %sub1361 to i64
  %arrayidx1363 = getelementptr inbounds float, ptr %1273, i64 %idxprom1362
  %call1364 = call i32 @slartg_(ptr noundef %arrayidx1352, ptr noundef %ra1, ptr noundef %arrayidx1358, ptr noundef %arrayidx1363, ptr noundef %ra)
  %1279 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %1280 = load i32, ptr %k, align 4, !tbaa !8
  %add1365 = add nsw i32 %1280, 1
  %1281 = load i32, ptr %i__, align 4, !tbaa !8
  %1282 = load i32, ptr %k, align 4, !tbaa !8
  %sub1366 = sub nsw i32 %1281, %1282
  %1283 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul1367 = mul nsw i32 %sub1366, %1283
  %add1368 = add nsw i32 %add1365, %mul1367
  %idxprom1369 = sext i32 %add1368 to i64
  %arrayidx1370 = getelementptr inbounds float, ptr %1279, i64 %idxprom1369
  %1284 = load float, ptr %arrayidx1370, align 4, !tbaa !10
  %fneg1371 = fneg float %1284
  %1285 = load float, ptr %ra1, align 4, !tbaa !10
  %mul1372 = fmul float %fneg1371, %1285
  store float %mul1372, ptr %t, align 4, !tbaa !10
  %1286 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1287 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1288 = load i32, ptr %1287, align 4, !tbaa !8
  %1289 = load i32, ptr %i__, align 4, !tbaa !8
  %add1373 = add nsw i32 %1288, %1289
  %1290 = load i32, ptr %k, align 4, !tbaa !8
  %sub1374 = sub nsw i32 %add1373, %1290
  %1291 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1292 = load i32, ptr %1291, align 4, !tbaa !8
  %add1375 = add nsw i32 %sub1374, %1292
  %1293 = load i32, ptr %m, align 4, !tbaa !8
  %sub1376 = sub nsw i32 %add1375, %1293
  %idxprom1377 = sext i32 %sub1376 to i64
  %arrayidx1378 = getelementptr inbounds float, ptr %1286, i64 %idxprom1377
  %1294 = load float, ptr %arrayidx1378, align 4, !tbaa !10
  %1295 = load float, ptr %t, align 4, !tbaa !10
  %1296 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1297 = load i32, ptr %i__, align 4, !tbaa !8
  %1298 = load i32, ptr %k, align 4, !tbaa !8
  %sub1380 = sub nsw i32 %1297, %1298
  %1299 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1300 = load i32, ptr %1299, align 4, !tbaa !8
  %add1381 = add nsw i32 %sub1380, %1300
  %1301 = load i32, ptr %m, align 4, !tbaa !8
  %sub1382 = sub nsw i32 %add1381, %1301
  %idxprom1383 = sext i32 %sub1382 to i64
  %arrayidx1384 = getelementptr inbounds float, ptr %1296, i64 %idxprom1383
  %1302 = load float, ptr %arrayidx1384, align 4, !tbaa !10
  %1303 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1304 = load i32, ptr %ka1, align 4, !tbaa !8
  %1305 = load i32, ptr %i__, align 4, !tbaa !8
  %1306 = load i32, ptr %k, align 4, !tbaa !8
  %sub1385 = sub nsw i32 %1305, %1306
  %1307 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1386 = mul nsw i32 %sub1385, %1307
  %add1387 = add nsw i32 %1304, %mul1386
  %idxprom1388 = sext i32 %add1387 to i64
  %arrayidx1389 = getelementptr inbounds float, ptr %1303, i64 %idxprom1388
  %1308 = load float, ptr %arrayidx1389, align 4, !tbaa !10
  %mul1390 = fmul float %1302, %1308
  %neg1391 = fneg float %mul1390
  %1309 = call float @llvm.fmuladd.f32(float %1294, float %1295, float %neg1391)
  %1310 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1311 = load i32, ptr %i__, align 4, !tbaa !8
  %1312 = load i32, ptr %k, align 4, !tbaa !8
  %sub1392 = sub nsw i32 %1311, %1312
  %idxprom1393 = sext i32 %sub1392 to i64
  %arrayidx1394 = getelementptr inbounds float, ptr %1310, i64 %idxprom1393
  store float %1309, ptr %arrayidx1394, align 4, !tbaa !10
  %1313 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1314 = load i32, ptr %i__, align 4, !tbaa !8
  %1315 = load i32, ptr %k, align 4, !tbaa !8
  %sub1395 = sub nsw i32 %1314, %1315
  %1316 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1317 = load i32, ptr %1316, align 4, !tbaa !8
  %add1396 = add nsw i32 %sub1395, %1317
  %1318 = load i32, ptr %m, align 4, !tbaa !8
  %sub1397 = sub nsw i32 %add1396, %1318
  %idxprom1398 = sext i32 %sub1397 to i64
  %arrayidx1399 = getelementptr inbounds float, ptr %1313, i64 %idxprom1398
  %1319 = load float, ptr %arrayidx1399, align 4, !tbaa !10
  %1320 = load float, ptr %t, align 4, !tbaa !10
  %1321 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1322 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1323 = load i32, ptr %1322, align 4, !tbaa !8
  %1324 = load i32, ptr %i__, align 4, !tbaa !8
  %add1401 = add nsw i32 %1323, %1324
  %1325 = load i32, ptr %k, align 4, !tbaa !8
  %sub1402 = sub nsw i32 %add1401, %1325
  %1326 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1327 = load i32, ptr %1326, align 4, !tbaa !8
  %add1403 = add nsw i32 %sub1402, %1327
  %1328 = load i32, ptr %m, align 4, !tbaa !8
  %sub1404 = sub nsw i32 %add1403, %1328
  %idxprom1405 = sext i32 %sub1404 to i64
  %arrayidx1406 = getelementptr inbounds float, ptr %1321, i64 %idxprom1405
  %1329 = load float, ptr %arrayidx1406, align 4, !tbaa !10
  %1330 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1331 = load i32, ptr %ka1, align 4, !tbaa !8
  %1332 = load i32, ptr %i__, align 4, !tbaa !8
  %1333 = load i32, ptr %k, align 4, !tbaa !8
  %sub1407 = sub nsw i32 %1332, %1333
  %1334 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1408 = mul nsw i32 %sub1407, %1334
  %add1409 = add nsw i32 %1331, %mul1408
  %idxprom1410 = sext i32 %add1409 to i64
  %arrayidx1411 = getelementptr inbounds float, ptr %1330, i64 %idxprom1410
  %1335 = load float, ptr %arrayidx1411, align 4, !tbaa !10
  %mul1412 = fmul float %1329, %1335
  %1336 = call float @llvm.fmuladd.f32(float %1319, float %1320, float %mul1412)
  %1337 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1338 = load i32, ptr %ka1, align 4, !tbaa !8
  %1339 = load i32, ptr %i__, align 4, !tbaa !8
  %1340 = load i32, ptr %k, align 4, !tbaa !8
  %sub1413 = sub nsw i32 %1339, %1340
  %1341 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1414 = mul nsw i32 %sub1413, %1341
  %add1415 = add nsw i32 %1338, %mul1414
  %idxprom1416 = sext i32 %add1415 to i64
  %arrayidx1417 = getelementptr inbounds float, ptr %1337, i64 %idxprom1416
  store float %1336, ptr %arrayidx1417, align 4, !tbaa !10
  %1342 = load float, ptr %ra, align 4, !tbaa !10
  store float %1342, ptr %ra1, align 4, !tbaa !10
  br label %if.end1418

if.end1418:                                       ; preds = %if.then1347, %land.lhs.true1343, %if.then1338
  br label %if.end1419

if.end1419:                                       ; preds = %if.end1418, %for.body1336
  store i32 1, ptr %i__3, align 4, !tbaa !8
  %1343 = load i32, ptr %k, align 4, !tbaa !8
  %1344 = load i32, ptr %i0, align 4, !tbaa !8
  %sub1420 = sub nsw i32 %1343, %1344
  %add1421 = add nsw i32 %sub1420, 2
  store i32 %add1421, ptr %i__1, align 4, !tbaa !8
  %1345 = load i32, ptr %i__, align 4, !tbaa !8
  %1346 = load i32, ptr %k, align 4, !tbaa !8
  %sub1422 = sub nsw i32 %1345, %1346
  %sub1423 = sub nsw i32 %sub1422, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1424) #4
  %1347 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %1347, ptr %_x1424, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1425) #4
  %1348 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %1348, ptr %_y1425, align 4, !tbaa !8
  %1349 = load i32, ptr %_x1424, align 4, !tbaa !8
  %1350 = load i32, ptr %_y1425, align 4, !tbaa !8
  %cmp1427 = icmp sgt i32 %1349, %1350
  br i1 %cmp1427, label %cond.true1429, label %cond.false1430

cond.true1429:                                    ; preds = %if.end1419
  %1351 = load i32, ptr %_x1424, align 4, !tbaa !8
  br label %cond.end1431

cond.false1430:                                   ; preds = %if.end1419
  %1352 = load i32, ptr %_y1425, align 4, !tbaa !8
  br label %cond.end1431

cond.end1431:                                     ; preds = %cond.false1430, %cond.true1429
  %cond1432 = phi i32 [ %1351, %cond.true1429 ], [ %1352, %cond.false1430 ]
  store i32 %cond1432, ptr %tmp1426, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1425) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1424) #4
  %1353 = load i32, ptr %tmp1426, align 4, !tbaa !8
  %1354 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul1433 = mul nsw i32 %1353, %1354
  %add1434 = add nsw i32 %sub1423, %mul1433
  store i32 %add1434, ptr %j2, align 4, !tbaa !8
  %1355 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1356 = load i32, ptr %1355, align 4, !tbaa !8
  %1357 = load i32, ptr %j2, align 4, !tbaa !8
  %sub1435 = sub nsw i32 %1356, %1357
  %1358 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1359 = load i32, ptr %1358, align 4, !tbaa !8
  %add1436 = add nsw i32 %sub1435, %1359
  %1360 = load i32, ptr %ka1, align 4, !tbaa !8
  %div1437 = sdiv i32 %add1436, %1360
  store i32 %div1437, ptr %nr, align 4, !tbaa !8
  %1361 = load i32, ptr %j2, align 4, !tbaa !8
  %1362 = load i32, ptr %nr, align 4, !tbaa !8
  %sub1438 = sub nsw i32 %1362, 1
  %1363 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul1439 = mul nsw i32 %sub1438, %1363
  %add1440 = add nsw i32 %1361, %mul1439
  store i32 %add1440, ptr %j1, align 4, !tbaa !8
  %1364 = load i32, ptr %update, align 4, !tbaa !8
  %tobool1441 = icmp ne i32 %1364, 0
  br i1 %tobool1441, label %if.then1442, label %if.else1456

if.then1442:                                      ; preds = %cond.end1431
  %1365 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %1365, ptr %i__3, align 4, !tbaa !8
  %1366 = load i32, ptr %i__, align 4, !tbaa !8
  %1367 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1368 = load i32, ptr %1367, align 4, !tbaa !8
  %shl1443 = shl i32 %1368, 1
  %add1444 = add nsw i32 %1366, %shl1443
  %1369 = load i32, ptr %k, align 4, !tbaa !8
  %sub1445 = sub nsw i32 %add1444, %1369
  %add1446 = add nsw i32 %sub1445, 1
  store i32 %add1446, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1447) #4
  %1370 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %1370, ptr %_x1447, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1448) #4
  %1371 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %1371, ptr %_y1448, align 4, !tbaa !8
  %1372 = load i32, ptr %_x1447, align 4, !tbaa !8
  %1373 = load i32, ptr %_y1448, align 4, !tbaa !8
  %cmp1450 = icmp sgt i32 %1372, %1373
  br i1 %cmp1450, label %cond.true1452, label %cond.false1453

cond.true1452:                                    ; preds = %if.then1442
  %1374 = load i32, ptr %_x1447, align 4, !tbaa !8
  br label %cond.end1454

cond.false1453:                                   ; preds = %if.then1442
  %1375 = load i32, ptr %_y1448, align 4, !tbaa !8
  br label %cond.end1454

cond.end1454:                                     ; preds = %cond.false1453, %cond.true1452
  %cond1455 = phi i32 [ %1374, %cond.true1452 ], [ %1375, %cond.false1453 ]
  store i32 %cond1455, ptr %tmp1449, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1448) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1447) #4
  %1376 = load i32, ptr %tmp1449, align 4, !tbaa !8
  store i32 %1376, ptr %j2t, align 4, !tbaa !8
  br label %if.end1457

if.else1456:                                      ; preds = %cond.end1431
  %1377 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %1377, ptr %j2t, align 4, !tbaa !8
  br label %if.end1457

if.end1457:                                       ; preds = %if.else1456, %cond.end1454
  %1378 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1379 = load i32, ptr %1378, align 4, !tbaa !8
  %1380 = load i32, ptr %j2t, align 4, !tbaa !8
  %sub1458 = sub nsw i32 %1379, %1380
  %1381 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1382 = load i32, ptr %1381, align 4, !tbaa !8
  %add1459 = add nsw i32 %sub1458, %1382
  %1383 = load i32, ptr %ka1, align 4, !tbaa !8
  %div1460 = sdiv i32 %add1459, %1383
  store i32 %div1460, ptr %nrt, align 4, !tbaa !8
  %1384 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %1384, ptr %i__3, align 4, !tbaa !8
  %1385 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %1385, ptr %i__1, align 4, !tbaa !8
  %1386 = load i32, ptr %j2t, align 4, !tbaa !8
  store i32 %1386, ptr %j, align 4, !tbaa !8
  br label %for.cond1461

for.cond1461:                                     ; preds = %for.inc1501, %if.end1457
  %1387 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1462 = icmp slt i32 %1387, 0
  br i1 %cmp1462, label %cond.true1464, label %cond.false1467

cond.true1464:                                    ; preds = %for.cond1461
  %1388 = load i32, ptr %j, align 4, !tbaa !8
  %1389 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1465 = icmp sge i32 %1388, %1389
  %conv1466 = zext i1 %cmp1465 to i32
  br label %cond.end1470

cond.false1467:                                   ; preds = %for.cond1461
  %1390 = load i32, ptr %j, align 4, !tbaa !8
  %1391 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1468 = icmp sle i32 %1390, %1391
  %conv1469 = zext i1 %cmp1468 to i32
  br label %cond.end1470

cond.end1470:                                     ; preds = %cond.false1467, %cond.true1464
  %cond1471 = phi i32 [ %conv1466, %cond.true1464 ], [ %conv1469, %cond.false1467 ]
  %tobool1472 = icmp ne i32 %cond1471, 0
  br i1 %tobool1472, label %for.body1473, label %for.end1503

for.body1473:                                     ; preds = %cond.end1470
  %1392 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1393 = load i32, ptr %ka1, align 4, !tbaa !8
  %1394 = load i32, ptr %j, align 4, !tbaa !8
  %1395 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1396 = load i32, ptr %1395, align 4, !tbaa !8
  %sub1474 = sub nsw i32 %1394, %1396
  %add1475 = add nsw i32 %sub1474, 1
  %1397 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1476 = mul nsw i32 %add1475, %1397
  %add1477 = add nsw i32 %1393, %mul1476
  %idxprom1478 = sext i32 %add1477 to i64
  %arrayidx1479 = getelementptr inbounds float, ptr %1392, i64 %idxprom1478
  %1398 = load float, ptr %arrayidx1479, align 4, !tbaa !10
  %1399 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1400 = load i32, ptr %j, align 4, !tbaa !8
  %1401 = load i32, ptr %m, align 4, !tbaa !8
  %sub1480 = sub nsw i32 %1400, %1401
  %idxprom1481 = sext i32 %sub1480 to i64
  %arrayidx1482 = getelementptr inbounds float, ptr %1399, i64 %idxprom1481
  %1402 = load float, ptr %arrayidx1482, align 4, !tbaa !10
  %mul1483 = fmul float %1402, %1398
  store float %mul1483, ptr %arrayidx1482, align 4, !tbaa !10
  %1403 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1404 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1405 = load i32, ptr %1404, align 4, !tbaa !8
  %1406 = load i32, ptr %j, align 4, !tbaa !8
  %add1484 = add nsw i32 %1405, %1406
  %1407 = load i32, ptr %m, align 4, !tbaa !8
  %sub1485 = sub nsw i32 %add1484, %1407
  %idxprom1486 = sext i32 %sub1485 to i64
  %arrayidx1487 = getelementptr inbounds float, ptr %1403, i64 %idxprom1486
  %1408 = load float, ptr %arrayidx1487, align 4, !tbaa !10
  %1409 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1410 = load i32, ptr %ka1, align 4, !tbaa !8
  %1411 = load i32, ptr %j, align 4, !tbaa !8
  %1412 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1413 = load i32, ptr %1412, align 4, !tbaa !8
  %sub1488 = sub nsw i32 %1411, %1413
  %add1489 = add nsw i32 %sub1488, 1
  %1414 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1490 = mul nsw i32 %add1489, %1414
  %add1491 = add nsw i32 %1410, %mul1490
  %idxprom1492 = sext i32 %add1491 to i64
  %arrayidx1493 = getelementptr inbounds float, ptr %1409, i64 %idxprom1492
  %1415 = load float, ptr %arrayidx1493, align 4, !tbaa !10
  %mul1494 = fmul float %1408, %1415
  %1416 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1417 = load i32, ptr %ka1, align 4, !tbaa !8
  %1418 = load i32, ptr %j, align 4, !tbaa !8
  %1419 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1420 = load i32, ptr %1419, align 4, !tbaa !8
  %sub1495 = sub nsw i32 %1418, %1420
  %add1496 = add nsw i32 %sub1495, 1
  %1421 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1497 = mul nsw i32 %add1496, %1421
  %add1498 = add nsw i32 %1417, %mul1497
  %idxprom1499 = sext i32 %add1498 to i64
  %arrayidx1500 = getelementptr inbounds float, ptr %1416, i64 %idxprom1499
  store float %mul1494, ptr %arrayidx1500, align 4, !tbaa !10
  br label %for.inc1501

for.inc1501:                                      ; preds = %for.body1473
  %1422 = load i32, ptr %i__1, align 4, !tbaa !8
  %1423 = load i32, ptr %j, align 4, !tbaa !8
  %add1502 = add nsw i32 %1423, %1422
  store i32 %add1502, ptr %j, align 4, !tbaa !8
  br label %for.cond1461, !llvm.loop !43

for.end1503:                                      ; preds = %cond.end1470
  %1424 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp1504 = icmp sgt i32 %1424, 0
  br i1 %cmp1504, label %if.then1506, label %if.end1520

if.then1506:                                      ; preds = %for.end1503
  %1425 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1426 = load i32, ptr %ka1, align 4, !tbaa !8
  %1427 = load i32, ptr %j2t, align 4, !tbaa !8
  %1428 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1429 = load i32, ptr %1428, align 4, !tbaa !8
  %sub1507 = sub nsw i32 %1427, %1429
  %1430 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1508 = mul nsw i32 %sub1507, %1430
  %add1509 = add nsw i32 %1426, %mul1508
  %idxprom1510 = sext i32 %add1509 to i64
  %arrayidx1511 = getelementptr inbounds float, ptr %1425, i64 %idxprom1510
  %1431 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1432 = load i32, ptr %j2t, align 4, !tbaa !8
  %1433 = load i32, ptr %m, align 4, !tbaa !8
  %sub1512 = sub nsw i32 %1432, %1433
  %idxprom1513 = sext i32 %sub1512 to i64
  %arrayidx1514 = getelementptr inbounds float, ptr %1431, i64 %idxprom1513
  %1434 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1435 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1436 = load i32, ptr %1435, align 4, !tbaa !8
  %1437 = load i32, ptr %j2t, align 4, !tbaa !8
  %add1515 = add nsw i32 %1436, %1437
  %1438 = load i32, ptr %m, align 4, !tbaa !8
  %sub1516 = sub nsw i32 %add1515, %1438
  %idxprom1517 = sext i32 %sub1516 to i64
  %arrayidx1518 = getelementptr inbounds float, ptr %1434, i64 %idxprom1517
  %call1519 = call i32 @slargv_(ptr noundef %nrt, ptr noundef %arrayidx1511, ptr noundef %inca, ptr noundef %arrayidx1514, ptr noundef %ka1, ptr noundef %arrayidx1518, ptr noundef %ka1)
  br label %if.end1520

if.end1520:                                       ; preds = %if.then1506, %for.end1503
  %1439 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp1521 = icmp sgt i32 %1439, 0
  br i1 %cmp1521, label %if.then1523, label %if.end1573

if.then1523:                                      ; preds = %if.end1520
  %1440 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1441 = load i32, ptr %1440, align 4, !tbaa !8
  %sub1524 = sub nsw i32 %1441, 1
  store i32 %sub1524, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond1525

for.cond1525:                                     ; preds = %for.inc1549, %if.then1523
  %1442 = load i32, ptr %l, align 4, !tbaa !8
  %1443 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1526 = icmp sle i32 %1442, %1443
  br i1 %cmp1526, label %for.body1528, label %for.end1551

for.body1528:                                     ; preds = %for.cond1525
  %1444 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1445 = load i32, ptr %l, align 4, !tbaa !8
  %add1529 = add nsw i32 %1445, 1
  %1446 = load i32, ptr %j2, align 4, !tbaa !8
  %1447 = load i32, ptr %l, align 4, !tbaa !8
  %sub1530 = sub nsw i32 %1446, %1447
  %1448 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1531 = mul nsw i32 %sub1530, %1448
  %add1532 = add nsw i32 %add1529, %mul1531
  %idxprom1533 = sext i32 %add1532 to i64
  %arrayidx1534 = getelementptr inbounds float, ptr %1444, i64 %idxprom1533
  %1449 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1450 = load i32, ptr %l, align 4, !tbaa !8
  %add1535 = add nsw i32 %1450, 2
  %1451 = load i32, ptr %j2, align 4, !tbaa !8
  %1452 = load i32, ptr %l, align 4, !tbaa !8
  %sub1536 = sub nsw i32 %1451, %1452
  %1453 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1537 = mul nsw i32 %sub1536, %1453
  %add1538 = add nsw i32 %add1535, %mul1537
  %idxprom1539 = sext i32 %add1538 to i64
  %arrayidx1540 = getelementptr inbounds float, ptr %1449, i64 %idxprom1539
  %1454 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1455 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1456 = load i32, ptr %1455, align 4, !tbaa !8
  %1457 = load i32, ptr %j2, align 4, !tbaa !8
  %add1541 = add nsw i32 %1456, %1457
  %1458 = load i32, ptr %m, align 4, !tbaa !8
  %sub1542 = sub nsw i32 %add1541, %1458
  %idxprom1543 = sext i32 %sub1542 to i64
  %arrayidx1544 = getelementptr inbounds float, ptr %1454, i64 %idxprom1543
  %1459 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1460 = load i32, ptr %j2, align 4, !tbaa !8
  %1461 = load i32, ptr %m, align 4, !tbaa !8
  %sub1545 = sub nsw i32 %1460, %1461
  %idxprom1546 = sext i32 %sub1545 to i64
  %arrayidx1547 = getelementptr inbounds float, ptr %1459, i64 %idxprom1546
  %call1548 = call i32 @slartv_(ptr noundef %nr, ptr noundef %arrayidx1534, ptr noundef %inca, ptr noundef %arrayidx1540, ptr noundef %inca, ptr noundef %arrayidx1544, ptr noundef %arrayidx1547, ptr noundef %ka1)
  br label %for.inc1549

for.inc1549:                                      ; preds = %for.body1528
  %1462 = load i32, ptr %l, align 4, !tbaa !8
  %inc1550 = add nsw i32 %1462, 1
  store i32 %inc1550, ptr %l, align 4, !tbaa !8
  br label %for.cond1525, !llvm.loop !44

for.end1551:                                      ; preds = %for.cond1525
  %1463 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1464 = load i32, ptr %j2, align 4, !tbaa !8
  %1465 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1552 = mul nsw i32 %1464, %1465
  %add1553 = add nsw i32 %mul1552, 1
  %idxprom1554 = sext i32 %add1553 to i64
  %arrayidx1555 = getelementptr inbounds float, ptr %1463, i64 %idxprom1554
  %1466 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1467 = load i32, ptr %j2, align 4, !tbaa !8
  %add1556 = add nsw i32 %1467, 1
  %1468 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1557 = mul nsw i32 %add1556, %1468
  %add1558 = add nsw i32 %mul1557, 1
  %idxprom1559 = sext i32 %add1558 to i64
  %arrayidx1560 = getelementptr inbounds float, ptr %1466, i64 %idxprom1559
  %1469 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1470 = load i32, ptr %j2, align 4, !tbaa !8
  %1471 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1561 = mul nsw i32 %1470, %1471
  %add1562 = add nsw i32 %mul1561, 2
  %idxprom1563 = sext i32 %add1562 to i64
  %arrayidx1564 = getelementptr inbounds float, ptr %1469, i64 %idxprom1563
  %1472 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1473 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1474 = load i32, ptr %1473, align 4, !tbaa !8
  %1475 = load i32, ptr %j2, align 4, !tbaa !8
  %add1565 = add nsw i32 %1474, %1475
  %1476 = load i32, ptr %m, align 4, !tbaa !8
  %sub1566 = sub nsw i32 %add1565, %1476
  %idxprom1567 = sext i32 %sub1566 to i64
  %arrayidx1568 = getelementptr inbounds float, ptr %1472, i64 %idxprom1567
  %1477 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1478 = load i32, ptr %j2, align 4, !tbaa !8
  %1479 = load i32, ptr %m, align 4, !tbaa !8
  %sub1569 = sub nsw i32 %1478, %1479
  %idxprom1570 = sext i32 %sub1569 to i64
  %arrayidx1571 = getelementptr inbounds float, ptr %1477, i64 %idxprom1570
  %call1572 = call i32 @slar2v_(ptr noundef %nr, ptr noundef %arrayidx1555, ptr noundef %arrayidx1560, ptr noundef %arrayidx1564, ptr noundef %inca, ptr noundef %arrayidx1568, ptr noundef %arrayidx1571, ptr noundef %ka1)
  br label %if.end1573

if.end1573:                                       ; preds = %for.end1551, %if.end1520
  %1480 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1481 = load i32, ptr %1480, align 4, !tbaa !8
  %1482 = load i32, ptr %k, align 4, !tbaa !8
  %sub1574 = sub nsw i32 %1481, %1482
  %add1575 = add nsw i32 %sub1574, 1
  store i32 %add1575, ptr %i__1, align 4, !tbaa !8
  %1483 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1484 = load i32, ptr %1483, align 4, !tbaa !8
  %sub1576 = sub nsw i32 %1484, 1
  store i32 %sub1576, ptr %l, align 4, !tbaa !8
  br label %for.cond1577

for.cond1577:                                     ; preds = %for.inc1608, %if.end1573
  %1485 = load i32, ptr %l, align 4, !tbaa !8
  %1486 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1578 = icmp sge i32 %1485, %1486
  br i1 %cmp1578, label %for.body1580, label %for.end1610

for.body1580:                                     ; preds = %for.cond1577
  %1487 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1488 = load i32, ptr %1487, align 4, !tbaa !8
  %1489 = load i32, ptr %j2, align 4, !tbaa !8
  %sub1581 = sub nsw i32 %1488, %1489
  %1490 = load i32, ptr %l, align 4, !tbaa !8
  %add1582 = add nsw i32 %sub1581, %1490
  %1491 = load i32, ptr %ka1, align 4, !tbaa !8
  %div1583 = sdiv i32 %add1582, %1491
  store i32 %div1583, ptr %nrt, align 4, !tbaa !8
  %1492 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp1584 = icmp sgt i32 %1492, 0
  br i1 %cmp1584, label %if.then1586, label %if.end1607

if.then1586:                                      ; preds = %for.body1580
  %1493 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1494 = load i32, ptr %ka1, align 4, !tbaa !8
  %1495 = load i32, ptr %l, align 4, !tbaa !8
  %sub1587 = sub nsw i32 %1494, %1495
  %add1588 = add nsw i32 %sub1587, 1
  %1496 = load i32, ptr %j2, align 4, !tbaa !8
  %1497 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1589 = mul nsw i32 %1496, %1497
  %add1590 = add nsw i32 %add1588, %mul1589
  %idxprom1591 = sext i32 %add1590 to i64
  %arrayidx1592 = getelementptr inbounds float, ptr %1493, i64 %idxprom1591
  %1498 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1499 = load i32, ptr %ka1, align 4, !tbaa !8
  %1500 = load i32, ptr %l, align 4, !tbaa !8
  %sub1593 = sub nsw i32 %1499, %1500
  %1501 = load i32, ptr %j2, align 4, !tbaa !8
  %add1594 = add nsw i32 %1501, 1
  %1502 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1595 = mul nsw i32 %add1594, %1502
  %add1596 = add nsw i32 %sub1593, %mul1595
  %idxprom1597 = sext i32 %add1596 to i64
  %arrayidx1598 = getelementptr inbounds float, ptr %1498, i64 %idxprom1597
  %1503 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1504 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1505 = load i32, ptr %1504, align 4, !tbaa !8
  %1506 = load i32, ptr %j2, align 4, !tbaa !8
  %add1599 = add nsw i32 %1505, %1506
  %1507 = load i32, ptr %m, align 4, !tbaa !8
  %sub1600 = sub nsw i32 %add1599, %1507
  %idxprom1601 = sext i32 %sub1600 to i64
  %arrayidx1602 = getelementptr inbounds float, ptr %1503, i64 %idxprom1601
  %1508 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1509 = load i32, ptr %j2, align 4, !tbaa !8
  %1510 = load i32, ptr %m, align 4, !tbaa !8
  %sub1603 = sub nsw i32 %1509, %1510
  %idxprom1604 = sext i32 %sub1603 to i64
  %arrayidx1605 = getelementptr inbounds float, ptr %1508, i64 %idxprom1604
  %call1606 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx1592, ptr noundef %inca, ptr noundef %arrayidx1598, ptr noundef %inca, ptr noundef %arrayidx1602, ptr noundef %arrayidx1605, ptr noundef %ka1)
  br label %if.end1607

if.end1607:                                       ; preds = %if.then1586, %for.body1580
  br label %for.inc1608

for.inc1608:                                      ; preds = %if.end1607
  %1511 = load i32, ptr %l, align 4, !tbaa !8
  %dec1609 = add nsw i32 %1511, -1
  store i32 %dec1609, ptr %l, align 4, !tbaa !8
  br label %for.cond1577, !llvm.loop !45

for.end1610:                                      ; preds = %for.cond1577
  %1512 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool1611 = icmp ne i32 %1512, 0
  br i1 %tobool1611, label %if.then1612, label %if.end1649

if.then1612:                                      ; preds = %for.end1610
  %1513 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %1513, ptr %i__1, align 4, !tbaa !8
  %1514 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %1514, ptr %i__3, align 4, !tbaa !8
  %1515 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %1515, ptr %j, align 4, !tbaa !8
  br label %for.cond1613

for.cond1613:                                     ; preds = %for.inc1646, %if.then1612
  %1516 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1614 = icmp slt i32 %1516, 0
  br i1 %cmp1614, label %cond.true1616, label %cond.false1619

cond.true1616:                                    ; preds = %for.cond1613
  %1517 = load i32, ptr %j, align 4, !tbaa !8
  %1518 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1617 = icmp sge i32 %1517, %1518
  %conv1618 = zext i1 %cmp1617 to i32
  br label %cond.end1622

cond.false1619:                                   ; preds = %for.cond1613
  %1519 = load i32, ptr %j, align 4, !tbaa !8
  %1520 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1620 = icmp sle i32 %1519, %1520
  %conv1621 = zext i1 %cmp1620 to i32
  br label %cond.end1622

cond.end1622:                                     ; preds = %cond.false1619, %cond.true1616
  %cond1623 = phi i32 [ %conv1618, %cond.true1616 ], [ %conv1621, %cond.false1619 ]
  %tobool1624 = icmp ne i32 %cond1623, 0
  br i1 %tobool1624, label %for.body1625, label %for.end1648

for.body1625:                                     ; preds = %cond.end1622
  %1521 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1522 = load i32, ptr %1521, align 4, !tbaa !8
  %1523 = load i32, ptr %m, align 4, !tbaa !8
  %sub1626 = sub nsw i32 %1522, %1523
  store i32 %sub1626, ptr %i__2, align 4, !tbaa !8
  %1524 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1525 = load i32, ptr %m, align 4, !tbaa !8
  %add1627 = add nsw i32 %1525, 1
  %1526 = load i32, ptr %j, align 4, !tbaa !8
  %1527 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul1628 = mul nsw i32 %1526, %1527
  %add1629 = add nsw i32 %add1627, %mul1628
  %idxprom1630 = sext i32 %add1629 to i64
  %arrayidx1631 = getelementptr inbounds float, ptr %1524, i64 %idxprom1630
  %1528 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1529 = load i32, ptr %m, align 4, !tbaa !8
  %add1632 = add nsw i32 %1529, 1
  %1530 = load i32, ptr %j, align 4, !tbaa !8
  %add1633 = add nsw i32 %1530, 1
  %1531 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul1634 = mul nsw i32 %add1633, %1531
  %add1635 = add nsw i32 %add1632, %mul1634
  %idxprom1636 = sext i32 %add1635 to i64
  %arrayidx1637 = getelementptr inbounds float, ptr %1528, i64 %idxprom1636
  %1532 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1533 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1534 = load i32, ptr %1533, align 4, !tbaa !8
  %1535 = load i32, ptr %j, align 4, !tbaa !8
  %add1638 = add nsw i32 %1534, %1535
  %1536 = load i32, ptr %m, align 4, !tbaa !8
  %sub1639 = sub nsw i32 %add1638, %1536
  %idxprom1640 = sext i32 %sub1639 to i64
  %arrayidx1641 = getelementptr inbounds float, ptr %1532, i64 %idxprom1640
  %1537 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1538 = load i32, ptr %j, align 4, !tbaa !8
  %1539 = load i32, ptr %m, align 4, !tbaa !8
  %sub1642 = sub nsw i32 %1538, %1539
  %idxprom1643 = sext i32 %sub1642 to i64
  %arrayidx1644 = getelementptr inbounds float, ptr %1537, i64 %idxprom1643
  %call1645 = call i32 @srot_(ptr noundef %i__2, ptr noundef %arrayidx1631, ptr noundef @c__1, ptr noundef %arrayidx1637, ptr noundef @c__1, ptr noundef %arrayidx1641, ptr noundef %arrayidx1644)
  br label %for.inc1646

for.inc1646:                                      ; preds = %for.body1625
  %1540 = load i32, ptr %i__3, align 4, !tbaa !8
  %1541 = load i32, ptr %j, align 4, !tbaa !8
  %add1647 = add nsw i32 %1541, %1540
  store i32 %add1647, ptr %j, align 4, !tbaa !8
  br label %for.cond1613, !llvm.loop !46

for.end1648:                                      ; preds = %cond.end1622
  br label %if.end1649

if.end1649:                                       ; preds = %for.end1648, %for.end1610
  br label %for.inc1650

for.inc1650:                                      ; preds = %if.end1649
  %1542 = load i32, ptr %k, align 4, !tbaa !8
  %inc1651 = add nsw i32 %1542, 1
  store i32 %inc1651, ptr %k, align 4, !tbaa !8
  br label %for.cond1333, !llvm.loop !47

for.end1652:                                      ; preds = %for.cond1333
  %1543 = load i32, ptr %update, align 4, !tbaa !8
  %tobool1653 = icmp ne i32 %1543, 0
  br i1 %tobool1653, label %if.then1654, label %if.end1673

if.then1654:                                      ; preds = %for.end1652
  %1544 = load i32, ptr %i2, align 4, !tbaa !8
  %1545 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1546 = load i32, ptr %1545, align 4, !tbaa !8
  %cmp1655 = icmp sle i32 %1544, %1546
  br i1 %cmp1655, label %land.lhs.true1657, label %if.end1672

land.lhs.true1657:                                ; preds = %if.then1654
  %1547 = load i32, ptr %kbt, align 4, !tbaa !8
  %cmp1658 = icmp sgt i32 %1547, 0
  br i1 %cmp1658, label %if.then1660, label %if.end1672

if.then1660:                                      ; preds = %land.lhs.true1657
  %1548 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %1549 = load i32, ptr %kbt, align 4, !tbaa !8
  %add1661 = add nsw i32 %1549, 1
  %1550 = load i32, ptr %i__, align 4, !tbaa !8
  %1551 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub1662 = sub nsw i32 %1550, %1551
  %1552 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul1663 = mul nsw i32 %sub1662, %1552
  %add1664 = add nsw i32 %add1661, %mul1663
  %idxprom1665 = sext i32 %add1664 to i64
  %arrayidx1666 = getelementptr inbounds float, ptr %1548, i64 %idxprom1665
  %1553 = load float, ptr %arrayidx1666, align 4, !tbaa !10
  %fneg1667 = fneg float %1553
  %1554 = load float, ptr %ra1, align 4, !tbaa !10
  %mul1668 = fmul float %fneg1667, %1554
  %1555 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1556 = load i32, ptr %i__, align 4, !tbaa !8
  %1557 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub1669 = sub nsw i32 %1556, %1557
  %idxprom1670 = sext i32 %sub1669 to i64
  %arrayidx1671 = getelementptr inbounds float, ptr %1555, i64 %idxprom1670
  store float %mul1668, ptr %arrayidx1671, align 4, !tbaa !10
  br label %if.end1672

if.end1672:                                       ; preds = %if.then1660, %land.lhs.true1657, %if.then1654
  br label %if.end1673

if.end1673:                                       ; preds = %if.end1672, %for.end1652
  %1558 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1559 = load i32, ptr %1558, align 4, !tbaa !8
  store i32 %1559, ptr %k, align 4, !tbaa !8
  br label %for.cond1674

for.cond1674:                                     ; preds = %for.inc1845, %if.end1673
  %1560 = load i32, ptr %k, align 4, !tbaa !8
  %cmp1675 = icmp sge i32 %1560, 1
  br i1 %cmp1675, label %for.body1677, label %for.end1847

for.body1677:                                     ; preds = %for.cond1674
  %1561 = load i32, ptr %update, align 4, !tbaa !8
  %tobool1678 = icmp ne i32 %1561, 0
  br i1 %tobool1678, label %if.then1679, label %if.else1695

if.then1679:                                      ; preds = %for.body1677
  store i32 2, ptr %i__4, align 4, !tbaa !8
  %1562 = load i32, ptr %k, align 4, !tbaa !8
  %1563 = load i32, ptr %i0, align 4, !tbaa !8
  %sub1680 = sub nsw i32 %1562, %1563
  %add1681 = add nsw i32 %sub1680, 1
  store i32 %add1681, ptr %i__3, align 4, !tbaa !8
  %1564 = load i32, ptr %i__, align 4, !tbaa !8
  %1565 = load i32, ptr %k, align 4, !tbaa !8
  %sub1682 = sub nsw i32 %1564, %1565
  %sub1683 = sub nsw i32 %sub1682, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1684) #4
  %1566 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %1566, ptr %_x1684, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1685) #4
  %1567 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %1567, ptr %_y1685, align 4, !tbaa !8
  %1568 = load i32, ptr %_x1684, align 4, !tbaa !8
  %1569 = load i32, ptr %_y1685, align 4, !tbaa !8
  %cmp1687 = icmp sgt i32 %1568, %1569
  br i1 %cmp1687, label %cond.true1689, label %cond.false1690

cond.true1689:                                    ; preds = %if.then1679
  %1570 = load i32, ptr %_x1684, align 4, !tbaa !8
  br label %cond.end1691

cond.false1690:                                   ; preds = %if.then1679
  %1571 = load i32, ptr %_y1685, align 4, !tbaa !8
  br label %cond.end1691

cond.end1691:                                     ; preds = %cond.false1690, %cond.true1689
  %cond1692 = phi i32 [ %1570, %cond.true1689 ], [ %1571, %cond.false1690 ]
  store i32 %cond1692, ptr %tmp1686, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1685) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1684) #4
  %1572 = load i32, ptr %tmp1686, align 4, !tbaa !8
  %1573 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul1693 = mul nsw i32 %1572, %1573
  %add1694 = add nsw i32 %sub1683, %mul1693
  store i32 %add1694, ptr %j2, align 4, !tbaa !8
  br label %if.end1711

if.else1695:                                      ; preds = %for.body1677
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %1574 = load i32, ptr %k, align 4, !tbaa !8
  %1575 = load i32, ptr %i0, align 4, !tbaa !8
  %sub1696 = sub nsw i32 %1574, %1575
  %add1697 = add nsw i32 %sub1696, 1
  store i32 %add1697, ptr %i__3, align 4, !tbaa !8
  %1576 = load i32, ptr %i__, align 4, !tbaa !8
  %1577 = load i32, ptr %k, align 4, !tbaa !8
  %sub1698 = sub nsw i32 %1576, %1577
  %sub1699 = sub nsw i32 %sub1698, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1700) #4
  %1578 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %1578, ptr %_x1700, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1701) #4
  %1579 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %1579, ptr %_y1701, align 4, !tbaa !8
  %1580 = load i32, ptr %_x1700, align 4, !tbaa !8
  %1581 = load i32, ptr %_y1701, align 4, !tbaa !8
  %cmp1703 = icmp sgt i32 %1580, %1581
  br i1 %cmp1703, label %cond.true1705, label %cond.false1706

cond.true1705:                                    ; preds = %if.else1695
  %1582 = load i32, ptr %_x1700, align 4, !tbaa !8
  br label %cond.end1707

cond.false1706:                                   ; preds = %if.else1695
  %1583 = load i32, ptr %_y1701, align 4, !tbaa !8
  br label %cond.end1707

cond.end1707:                                     ; preds = %cond.false1706, %cond.true1705
  %cond1708 = phi i32 [ %1582, %cond.true1705 ], [ %1583, %cond.false1706 ]
  store i32 %cond1708, ptr %tmp1702, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1701) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1700) #4
  %1584 = load i32, ptr %tmp1702, align 4, !tbaa !8
  %1585 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul1709 = mul nsw i32 %1584, %1585
  %add1710 = add nsw i32 %sub1699, %mul1709
  store i32 %add1710, ptr %j2, align 4, !tbaa !8
  br label %if.end1711

if.end1711:                                       ; preds = %cond.end1707, %cond.end1691
  %1586 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1587 = load i32, ptr %1586, align 4, !tbaa !8
  %1588 = load i32, ptr %k, align 4, !tbaa !8
  %sub1712 = sub nsw i32 %1587, %1588
  store i32 %sub1712, ptr %l, align 4, !tbaa !8
  br label %for.cond1713

for.cond1713:                                     ; preds = %for.inc1747, %if.end1711
  %1589 = load i32, ptr %l, align 4, !tbaa !8
  %cmp1714 = icmp sge i32 %1589, 1
  br i1 %cmp1714, label %for.body1716, label %for.end1749

for.body1716:                                     ; preds = %for.cond1713
  %1590 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1591 = load i32, ptr %1590, align 4, !tbaa !8
  %1592 = load i32, ptr %j2, align 4, !tbaa !8
  %sub1717 = sub nsw i32 %1591, %1592
  %1593 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1594 = load i32, ptr %1593, align 4, !tbaa !8
  %add1718 = add nsw i32 %sub1717, %1594
  %1595 = load i32, ptr %l, align 4, !tbaa !8
  %add1719 = add nsw i32 %add1718, %1595
  %1596 = load i32, ptr %ka1, align 4, !tbaa !8
  %div1720 = sdiv i32 %add1719, %1596
  store i32 %div1720, ptr %nrt, align 4, !tbaa !8
  %1597 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp1721 = icmp sgt i32 %1597, 0
  br i1 %cmp1721, label %if.then1723, label %if.end1746

if.then1723:                                      ; preds = %for.body1716
  %1598 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1599 = load i32, ptr %ka1, align 4, !tbaa !8
  %1600 = load i32, ptr %l, align 4, !tbaa !8
  %sub1724 = sub nsw i32 %1599, %1600
  %add1725 = add nsw i32 %sub1724, 1
  %1601 = load i32, ptr %j2, align 4, !tbaa !8
  %1602 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1603 = load i32, ptr %1602, align 4, !tbaa !8
  %sub1726 = sub nsw i32 %1601, %1603
  %1604 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1727 = mul nsw i32 %sub1726, %1604
  %add1728 = add nsw i32 %add1725, %mul1727
  %idxprom1729 = sext i32 %add1728 to i64
  %arrayidx1730 = getelementptr inbounds float, ptr %1598, i64 %idxprom1729
  %1605 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1606 = load i32, ptr %ka1, align 4, !tbaa !8
  %1607 = load i32, ptr %l, align 4, !tbaa !8
  %sub1731 = sub nsw i32 %1606, %1607
  %1608 = load i32, ptr %j2, align 4, !tbaa !8
  %1609 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1610 = load i32, ptr %1609, align 4, !tbaa !8
  %sub1732 = sub nsw i32 %1608, %1610
  %add1733 = add nsw i32 %sub1732, 1
  %1611 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1734 = mul nsw i32 %add1733, %1611
  %add1735 = add nsw i32 %sub1731, %mul1734
  %idxprom1736 = sext i32 %add1735 to i64
  %arrayidx1737 = getelementptr inbounds float, ptr %1605, i64 %idxprom1736
  %1612 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1613 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1614 = load i32, ptr %1613, align 4, !tbaa !8
  %1615 = load i32, ptr %j2, align 4, !tbaa !8
  %add1738 = add nsw i32 %1614, %1615
  %1616 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1617 = load i32, ptr %1616, align 4, !tbaa !8
  %sub1739 = sub nsw i32 %add1738, %1617
  %idxprom1740 = sext i32 %sub1739 to i64
  %arrayidx1741 = getelementptr inbounds float, ptr %1612, i64 %idxprom1740
  %1618 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1619 = load i32, ptr %j2, align 4, !tbaa !8
  %1620 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1621 = load i32, ptr %1620, align 4, !tbaa !8
  %sub1742 = sub nsw i32 %1619, %1621
  %idxprom1743 = sext i32 %sub1742 to i64
  %arrayidx1744 = getelementptr inbounds float, ptr %1618, i64 %idxprom1743
  %call1745 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx1730, ptr noundef %inca, ptr noundef %arrayidx1737, ptr noundef %inca, ptr noundef %arrayidx1741, ptr noundef %arrayidx1744, ptr noundef %ka1)
  br label %if.end1746

if.end1746:                                       ; preds = %if.then1723, %for.body1716
  br label %for.inc1747

for.inc1747:                                      ; preds = %if.end1746
  %1622 = load i32, ptr %l, align 4, !tbaa !8
  %dec1748 = add nsw i32 %1622, -1
  store i32 %dec1748, ptr %l, align 4, !tbaa !8
  br label %for.cond1713, !llvm.loop !48

for.end1749:                                      ; preds = %for.cond1713
  %1623 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1624 = load i32, ptr %1623, align 4, !tbaa !8
  %1625 = load i32, ptr %j2, align 4, !tbaa !8
  %sub1750 = sub nsw i32 %1624, %1625
  %1626 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1627 = load i32, ptr %1626, align 4, !tbaa !8
  %add1751 = add nsw i32 %sub1750, %1627
  %1628 = load i32, ptr %ka1, align 4, !tbaa !8
  %div1752 = sdiv i32 %add1751, %1628
  store i32 %div1752, ptr %nr, align 4, !tbaa !8
  %1629 = load i32, ptr %j2, align 4, !tbaa !8
  %1630 = load i32, ptr %nr, align 4, !tbaa !8
  %sub1753 = sub nsw i32 %1630, 1
  %1631 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul1754 = mul nsw i32 %sub1753, %1631
  %add1755 = add nsw i32 %1629, %mul1754
  store i32 %add1755, ptr %j1, align 4, !tbaa !8
  %1632 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %1632, ptr %i__4, align 4, !tbaa !8
  %1633 = load i32, ptr %ka1, align 4, !tbaa !8
  %sub1756 = sub nsw i32 0, %1633
  store i32 %sub1756, ptr %i__3, align 4, !tbaa !8
  %1634 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %1634, ptr %j, align 4, !tbaa !8
  br label %for.cond1757

for.cond1757:                                     ; preds = %for.inc1782, %for.end1749
  %1635 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1758 = icmp slt i32 %1635, 0
  br i1 %cmp1758, label %cond.true1760, label %cond.false1763

cond.true1760:                                    ; preds = %for.cond1757
  %1636 = load i32, ptr %j, align 4, !tbaa !8
  %1637 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1761 = icmp sge i32 %1636, %1637
  %conv1762 = zext i1 %cmp1761 to i32
  br label %cond.end1766

cond.false1763:                                   ; preds = %for.cond1757
  %1638 = load i32, ptr %j, align 4, !tbaa !8
  %1639 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1764 = icmp sle i32 %1638, %1639
  %conv1765 = zext i1 %cmp1764 to i32
  br label %cond.end1766

cond.end1766:                                     ; preds = %cond.false1763, %cond.true1760
  %cond1767 = phi i32 [ %conv1762, %cond.true1760 ], [ %conv1765, %cond.false1763 ]
  %tobool1768 = icmp ne i32 %cond1767, 0
  br i1 %tobool1768, label %for.body1769, label %for.end1784

for.body1769:                                     ; preds = %cond.end1766
  %1640 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1641 = load i32, ptr %j, align 4, !tbaa !8
  %1642 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1643 = load i32, ptr %1642, align 4, !tbaa !8
  %sub1770 = sub nsw i32 %1641, %1643
  %idxprom1771 = sext i32 %sub1770 to i64
  %arrayidx1772 = getelementptr inbounds float, ptr %1640, i64 %idxprom1771
  %1644 = load float, ptr %arrayidx1772, align 4, !tbaa !10
  %1645 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1646 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1773 = sext i32 %1646 to i64
  %arrayidx1774 = getelementptr inbounds float, ptr %1645, i64 %idxprom1773
  store float %1644, ptr %arrayidx1774, align 4, !tbaa !10
  %1647 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1648 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1649 = load i32, ptr %1648, align 4, !tbaa !8
  %1650 = load i32, ptr %j, align 4, !tbaa !8
  %add1775 = add nsw i32 %1649, %1650
  %1651 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1652 = load i32, ptr %1651, align 4, !tbaa !8
  %sub1776 = sub nsw i32 %add1775, %1652
  %idxprom1777 = sext i32 %sub1776 to i64
  %arrayidx1778 = getelementptr inbounds float, ptr %1647, i64 %idxprom1777
  %1653 = load float, ptr %arrayidx1778, align 4, !tbaa !10
  %1654 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1655 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1656 = load i32, ptr %1655, align 4, !tbaa !8
  %1657 = load i32, ptr %j, align 4, !tbaa !8
  %add1779 = add nsw i32 %1656, %1657
  %idxprom1780 = sext i32 %add1779 to i64
  %arrayidx1781 = getelementptr inbounds float, ptr %1654, i64 %idxprom1780
  store float %1653, ptr %arrayidx1781, align 4, !tbaa !10
  br label %for.inc1782

for.inc1782:                                      ; preds = %for.body1769
  %1658 = load i32, ptr %i__3, align 4, !tbaa !8
  %1659 = load i32, ptr %j, align 4, !tbaa !8
  %add1783 = add nsw i32 %1659, %1658
  store i32 %add1783, ptr %j, align 4, !tbaa !8
  br label %for.cond1757, !llvm.loop !49

for.end1784:                                      ; preds = %cond.end1766
  %1660 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %1660, ptr %i__3, align 4, !tbaa !8
  %1661 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %1661, ptr %i__4, align 4, !tbaa !8
  %1662 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %1662, ptr %j, align 4, !tbaa !8
  br label %for.cond1785

for.cond1785:                                     ; preds = %for.inc1823, %for.end1784
  %1663 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1786 = icmp slt i32 %1663, 0
  br i1 %cmp1786, label %cond.true1788, label %cond.false1791

cond.true1788:                                    ; preds = %for.cond1785
  %1664 = load i32, ptr %j, align 4, !tbaa !8
  %1665 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1789 = icmp sge i32 %1664, %1665
  %conv1790 = zext i1 %cmp1789 to i32
  br label %cond.end1794

cond.false1791:                                   ; preds = %for.cond1785
  %1666 = load i32, ptr %j, align 4, !tbaa !8
  %1667 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1792 = icmp sle i32 %1666, %1667
  %conv1793 = zext i1 %cmp1792 to i32
  br label %cond.end1794

cond.end1794:                                     ; preds = %cond.false1791, %cond.true1788
  %cond1795 = phi i32 [ %conv1790, %cond.true1788 ], [ %conv1793, %cond.false1791 ]
  %tobool1796 = icmp ne i32 %cond1795, 0
  br i1 %tobool1796, label %for.body1797, label %for.end1825

for.body1797:                                     ; preds = %cond.end1794
  %1668 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1669 = load i32, ptr %ka1, align 4, !tbaa !8
  %1670 = load i32, ptr %j, align 4, !tbaa !8
  %1671 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1672 = load i32, ptr %1671, align 4, !tbaa !8
  %sub1798 = sub nsw i32 %1670, %1672
  %add1799 = add nsw i32 %sub1798, 1
  %1673 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1800 = mul nsw i32 %add1799, %1673
  %add1801 = add nsw i32 %1669, %mul1800
  %idxprom1802 = sext i32 %add1801 to i64
  %arrayidx1803 = getelementptr inbounds float, ptr %1668, i64 %idxprom1802
  %1674 = load float, ptr %arrayidx1803, align 4, !tbaa !10
  %1675 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1676 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1804 = sext i32 %1676 to i64
  %arrayidx1805 = getelementptr inbounds float, ptr %1675, i64 %idxprom1804
  %1677 = load float, ptr %arrayidx1805, align 4, !tbaa !10
  %mul1806 = fmul float %1677, %1674
  store float %mul1806, ptr %arrayidx1805, align 4, !tbaa !10
  %1678 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1679 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1680 = load i32, ptr %1679, align 4, !tbaa !8
  %1681 = load i32, ptr %j, align 4, !tbaa !8
  %add1807 = add nsw i32 %1680, %1681
  %idxprom1808 = sext i32 %add1807 to i64
  %arrayidx1809 = getelementptr inbounds float, ptr %1678, i64 %idxprom1808
  %1682 = load float, ptr %arrayidx1809, align 4, !tbaa !10
  %1683 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1684 = load i32, ptr %ka1, align 4, !tbaa !8
  %1685 = load i32, ptr %j, align 4, !tbaa !8
  %1686 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1687 = load i32, ptr %1686, align 4, !tbaa !8
  %sub1810 = sub nsw i32 %1685, %1687
  %add1811 = add nsw i32 %sub1810, 1
  %1688 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1812 = mul nsw i32 %add1811, %1688
  %add1813 = add nsw i32 %1684, %mul1812
  %idxprom1814 = sext i32 %add1813 to i64
  %arrayidx1815 = getelementptr inbounds float, ptr %1683, i64 %idxprom1814
  %1689 = load float, ptr %arrayidx1815, align 4, !tbaa !10
  %mul1816 = fmul float %1682, %1689
  %1690 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1691 = load i32, ptr %ka1, align 4, !tbaa !8
  %1692 = load i32, ptr %j, align 4, !tbaa !8
  %1693 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1694 = load i32, ptr %1693, align 4, !tbaa !8
  %sub1817 = sub nsw i32 %1692, %1694
  %add1818 = add nsw i32 %sub1817, 1
  %1695 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1819 = mul nsw i32 %add1818, %1695
  %add1820 = add nsw i32 %1691, %mul1819
  %idxprom1821 = sext i32 %add1820 to i64
  %arrayidx1822 = getelementptr inbounds float, ptr %1690, i64 %idxprom1821
  store float %mul1816, ptr %arrayidx1822, align 4, !tbaa !10
  br label %for.inc1823

for.inc1823:                                      ; preds = %for.body1797
  %1696 = load i32, ptr %i__4, align 4, !tbaa !8
  %1697 = load i32, ptr %j, align 4, !tbaa !8
  %add1824 = add nsw i32 %1697, %1696
  store i32 %add1824, ptr %j, align 4, !tbaa !8
  br label %for.cond1785, !llvm.loop !50

for.end1825:                                      ; preds = %cond.end1794
  %1698 = load i32, ptr %update, align 4, !tbaa !8
  %tobool1826 = icmp ne i32 %1698, 0
  br i1 %tobool1826, label %if.then1827, label %if.end1844

if.then1827:                                      ; preds = %for.end1825
  %1699 = load i32, ptr %i__, align 4, !tbaa !8
  %1700 = load i32, ptr %k, align 4, !tbaa !8
  %sub1828 = sub nsw i32 %1699, %1700
  %1701 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1702 = load i32, ptr %1701, align 4, !tbaa !8
  %1703 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1704 = load i32, ptr %1703, align 4, !tbaa !8
  %sub1829 = sub nsw i32 %1702, %1704
  %cmp1830 = icmp slt i32 %sub1828, %sub1829
  br i1 %cmp1830, label %land.lhs.true1832, label %if.end1843

land.lhs.true1832:                                ; preds = %if.then1827
  %1705 = load i32, ptr %k, align 4, !tbaa !8
  %1706 = load i32, ptr %kbt, align 4, !tbaa !8
  %cmp1833 = icmp sle i32 %1705, %1706
  br i1 %cmp1833, label %if.then1835, label %if.end1843

if.then1835:                                      ; preds = %land.lhs.true1832
  %1707 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1708 = load i32, ptr %i__, align 4, !tbaa !8
  %1709 = load i32, ptr %k, align 4, !tbaa !8
  %sub1836 = sub nsw i32 %1708, %1709
  %idxprom1837 = sext i32 %sub1836 to i64
  %arrayidx1838 = getelementptr inbounds float, ptr %1707, i64 %idxprom1837
  %1710 = load float, ptr %arrayidx1838, align 4, !tbaa !10
  %1711 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1712 = load i32, ptr %i__, align 4, !tbaa !8
  %1713 = load i32, ptr %k, align 4, !tbaa !8
  %sub1839 = sub nsw i32 %1712, %1713
  %1714 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1715 = load i32, ptr %1714, align 4, !tbaa !8
  %add1840 = add nsw i32 %sub1839, %1715
  %idxprom1841 = sext i32 %add1840 to i64
  %arrayidx1842 = getelementptr inbounds float, ptr %1711, i64 %idxprom1841
  store float %1710, ptr %arrayidx1842, align 4, !tbaa !10
  br label %if.end1843

if.end1843:                                       ; preds = %if.then1835, %land.lhs.true1832, %if.then1827
  br label %if.end1844

if.end1844:                                       ; preds = %if.end1843, %for.end1825
  br label %for.inc1845

for.inc1845:                                      ; preds = %if.end1844
  %1716 = load i32, ptr %k, align 4, !tbaa !8
  %dec1846 = add nsw i32 %1716, -1
  store i32 %dec1846, ptr %k, align 4, !tbaa !8
  br label %for.cond1674, !llvm.loop !51

for.end1847:                                      ; preds = %for.cond1674
  %1717 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1718 = load i32, ptr %1717, align 4, !tbaa !8
  store i32 %1718, ptr %k, align 4, !tbaa !8
  br label %for.cond1848

for.cond1848:                                     ; preds = %for.inc2005, %for.end1847
  %1719 = load i32, ptr %k, align 4, !tbaa !8
  %cmp1849 = icmp sge i32 %1719, 1
  br i1 %cmp1849, label %for.body1851, label %for.end2007

for.body1851:                                     ; preds = %for.cond1848
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %1720 = load i32, ptr %k, align 4, !tbaa !8
  %1721 = load i32, ptr %i0, align 4, !tbaa !8
  %sub1852 = sub nsw i32 %1720, %1721
  %add1853 = add nsw i32 %sub1852, 1
  store i32 %add1853, ptr %i__3, align 4, !tbaa !8
  %1722 = load i32, ptr %i__, align 4, !tbaa !8
  %1723 = load i32, ptr %k, align 4, !tbaa !8
  %sub1854 = sub nsw i32 %1722, %1723
  %sub1855 = sub nsw i32 %sub1854, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1856) #4
  %1724 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %1724, ptr %_x1856, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1857) #4
  %1725 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %1725, ptr %_y1857, align 4, !tbaa !8
  %1726 = load i32, ptr %_x1856, align 4, !tbaa !8
  %1727 = load i32, ptr %_y1857, align 4, !tbaa !8
  %cmp1859 = icmp sgt i32 %1726, %1727
  br i1 %cmp1859, label %cond.true1861, label %cond.false1862

cond.true1861:                                    ; preds = %for.body1851
  %1728 = load i32, ptr %_x1856, align 4, !tbaa !8
  br label %cond.end1863

cond.false1862:                                   ; preds = %for.body1851
  %1729 = load i32, ptr %_y1857, align 4, !tbaa !8
  br label %cond.end1863

cond.end1863:                                     ; preds = %cond.false1862, %cond.true1861
  %cond1864 = phi i32 [ %1728, %cond.true1861 ], [ %1729, %cond.false1862 ]
  store i32 %cond1864, ptr %tmp1858, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1857) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1856) #4
  %1730 = load i32, ptr %tmp1858, align 4, !tbaa !8
  %1731 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul1865 = mul nsw i32 %1730, %1731
  %add1866 = add nsw i32 %sub1855, %mul1865
  store i32 %add1866, ptr %j2, align 4, !tbaa !8
  %1732 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1733 = load i32, ptr %1732, align 4, !tbaa !8
  %1734 = load i32, ptr %j2, align 4, !tbaa !8
  %sub1867 = sub nsw i32 %1733, %1734
  %1735 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1736 = load i32, ptr %1735, align 4, !tbaa !8
  %add1868 = add nsw i32 %sub1867, %1736
  %1737 = load i32, ptr %ka1, align 4, !tbaa !8
  %div1869 = sdiv i32 %add1868, %1737
  store i32 %div1869, ptr %nr, align 4, !tbaa !8
  %1738 = load i32, ptr %j2, align 4, !tbaa !8
  %1739 = load i32, ptr %nr, align 4, !tbaa !8
  %sub1870 = sub nsw i32 %1739, 1
  %1740 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul1871 = mul nsw i32 %sub1870, %1740
  %add1872 = add nsw i32 %1738, %mul1871
  store i32 %add1872, ptr %j1, align 4, !tbaa !8
  %1741 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp1873 = icmp sgt i32 %1741, 0
  br i1 %cmp1873, label %if.then1875, label %if.end1932

if.then1875:                                      ; preds = %cond.end1863
  %1742 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1743 = load i32, ptr %ka1, align 4, !tbaa !8
  %1744 = load i32, ptr %j2, align 4, !tbaa !8
  %1745 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1746 = load i32, ptr %1745, align 4, !tbaa !8
  %sub1876 = sub nsw i32 %1744, %1746
  %1747 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1877 = mul nsw i32 %sub1876, %1747
  %add1878 = add nsw i32 %1743, %mul1877
  %idxprom1879 = sext i32 %add1878 to i64
  %arrayidx1880 = getelementptr inbounds float, ptr %1742, i64 %idxprom1879
  %1748 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1749 = load i32, ptr %j2, align 4, !tbaa !8
  %idxprom1881 = sext i32 %1749 to i64
  %arrayidx1882 = getelementptr inbounds float, ptr %1748, i64 %idxprom1881
  %1750 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1751 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1752 = load i32, ptr %1751, align 4, !tbaa !8
  %1753 = load i32, ptr %j2, align 4, !tbaa !8
  %add1883 = add nsw i32 %1752, %1753
  %idxprom1884 = sext i32 %add1883 to i64
  %arrayidx1885 = getelementptr inbounds float, ptr %1750, i64 %idxprom1884
  %call1886 = call i32 @slargv_(ptr noundef %nr, ptr noundef %arrayidx1880, ptr noundef %inca, ptr noundef %arrayidx1882, ptr noundef %ka1, ptr noundef %arrayidx1885, ptr noundef %ka1)
  %1754 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1755 = load i32, ptr %1754, align 4, !tbaa !8
  %sub1887 = sub nsw i32 %1755, 1
  store i32 %sub1887, ptr %i__4, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond1888

for.cond1888:                                     ; preds = %for.inc1910, %if.then1875
  %1756 = load i32, ptr %l, align 4, !tbaa !8
  %1757 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1889 = icmp sle i32 %1756, %1757
  br i1 %cmp1889, label %for.body1891, label %for.end1912

for.body1891:                                     ; preds = %for.cond1888
  %1758 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1759 = load i32, ptr %l, align 4, !tbaa !8
  %add1892 = add nsw i32 %1759, 1
  %1760 = load i32, ptr %j2, align 4, !tbaa !8
  %1761 = load i32, ptr %l, align 4, !tbaa !8
  %sub1893 = sub nsw i32 %1760, %1761
  %1762 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1894 = mul nsw i32 %sub1893, %1762
  %add1895 = add nsw i32 %add1892, %mul1894
  %idxprom1896 = sext i32 %add1895 to i64
  %arrayidx1897 = getelementptr inbounds float, ptr %1758, i64 %idxprom1896
  %1763 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1764 = load i32, ptr %l, align 4, !tbaa !8
  %add1898 = add nsw i32 %1764, 2
  %1765 = load i32, ptr %j2, align 4, !tbaa !8
  %1766 = load i32, ptr %l, align 4, !tbaa !8
  %sub1899 = sub nsw i32 %1765, %1766
  %1767 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1900 = mul nsw i32 %sub1899, %1767
  %add1901 = add nsw i32 %add1898, %mul1900
  %idxprom1902 = sext i32 %add1901 to i64
  %arrayidx1903 = getelementptr inbounds float, ptr %1763, i64 %idxprom1902
  %1768 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1769 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1770 = load i32, ptr %1769, align 4, !tbaa !8
  %1771 = load i32, ptr %j2, align 4, !tbaa !8
  %add1904 = add nsw i32 %1770, %1771
  %idxprom1905 = sext i32 %add1904 to i64
  %arrayidx1906 = getelementptr inbounds float, ptr %1768, i64 %idxprom1905
  %1772 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1773 = load i32, ptr %j2, align 4, !tbaa !8
  %idxprom1907 = sext i32 %1773 to i64
  %arrayidx1908 = getelementptr inbounds float, ptr %1772, i64 %idxprom1907
  %call1909 = call i32 @slartv_(ptr noundef %nr, ptr noundef %arrayidx1897, ptr noundef %inca, ptr noundef %arrayidx1903, ptr noundef %inca, ptr noundef %arrayidx1906, ptr noundef %arrayidx1908, ptr noundef %ka1)
  br label %for.inc1910

for.inc1910:                                      ; preds = %for.body1891
  %1774 = load i32, ptr %l, align 4, !tbaa !8
  %inc1911 = add nsw i32 %1774, 1
  store i32 %inc1911, ptr %l, align 4, !tbaa !8
  br label %for.cond1888, !llvm.loop !52

for.end1912:                                      ; preds = %for.cond1888
  %1775 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1776 = load i32, ptr %j2, align 4, !tbaa !8
  %1777 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1913 = mul nsw i32 %1776, %1777
  %add1914 = add nsw i32 %mul1913, 1
  %idxprom1915 = sext i32 %add1914 to i64
  %arrayidx1916 = getelementptr inbounds float, ptr %1775, i64 %idxprom1915
  %1778 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1779 = load i32, ptr %j2, align 4, !tbaa !8
  %add1917 = add nsw i32 %1779, 1
  %1780 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1918 = mul nsw i32 %add1917, %1780
  %add1919 = add nsw i32 %mul1918, 1
  %idxprom1920 = sext i32 %add1919 to i64
  %arrayidx1921 = getelementptr inbounds float, ptr %1778, i64 %idxprom1920
  %1781 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1782 = load i32, ptr %j2, align 4, !tbaa !8
  %1783 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1922 = mul nsw i32 %1782, %1783
  %add1923 = add nsw i32 %mul1922, 2
  %idxprom1924 = sext i32 %add1923 to i64
  %arrayidx1925 = getelementptr inbounds float, ptr %1781, i64 %idxprom1924
  %1784 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1785 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1786 = load i32, ptr %1785, align 4, !tbaa !8
  %1787 = load i32, ptr %j2, align 4, !tbaa !8
  %add1926 = add nsw i32 %1786, %1787
  %idxprom1927 = sext i32 %add1926 to i64
  %arrayidx1928 = getelementptr inbounds float, ptr %1784, i64 %idxprom1927
  %1788 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1789 = load i32, ptr %j2, align 4, !tbaa !8
  %idxprom1929 = sext i32 %1789 to i64
  %arrayidx1930 = getelementptr inbounds float, ptr %1788, i64 %idxprom1929
  %call1931 = call i32 @slar2v_(ptr noundef %nr, ptr noundef %arrayidx1916, ptr noundef %arrayidx1921, ptr noundef %arrayidx1925, ptr noundef %inca, ptr noundef %arrayidx1928, ptr noundef %arrayidx1930, ptr noundef %ka1)
  br label %if.end1932

if.end1932:                                       ; preds = %for.end1912, %cond.end1863
  %1790 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1791 = load i32, ptr %1790, align 4, !tbaa !8
  %1792 = load i32, ptr %k, align 4, !tbaa !8
  %sub1933 = sub nsw i32 %1791, %1792
  %add1934 = add nsw i32 %sub1933, 1
  store i32 %add1934, ptr %i__4, align 4, !tbaa !8
  %1793 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1794 = load i32, ptr %1793, align 4, !tbaa !8
  %sub1935 = sub nsw i32 %1794, 1
  store i32 %sub1935, ptr %l, align 4, !tbaa !8
  br label %for.cond1936

for.cond1936:                                     ; preds = %for.inc1965, %if.end1932
  %1795 = load i32, ptr %l, align 4, !tbaa !8
  %1796 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1937 = icmp sge i32 %1795, %1796
  br i1 %cmp1937, label %for.body1939, label %for.end1967

for.body1939:                                     ; preds = %for.cond1936
  %1797 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1798 = load i32, ptr %1797, align 4, !tbaa !8
  %1799 = load i32, ptr %j2, align 4, !tbaa !8
  %sub1940 = sub nsw i32 %1798, %1799
  %1800 = load i32, ptr %l, align 4, !tbaa !8
  %add1941 = add nsw i32 %sub1940, %1800
  %1801 = load i32, ptr %ka1, align 4, !tbaa !8
  %div1942 = sdiv i32 %add1941, %1801
  store i32 %div1942, ptr %nrt, align 4, !tbaa !8
  %1802 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp1943 = icmp sgt i32 %1802, 0
  br i1 %cmp1943, label %if.then1945, label %if.end1964

if.then1945:                                      ; preds = %for.body1939
  %1803 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1804 = load i32, ptr %ka1, align 4, !tbaa !8
  %1805 = load i32, ptr %l, align 4, !tbaa !8
  %sub1946 = sub nsw i32 %1804, %1805
  %add1947 = add nsw i32 %sub1946, 1
  %1806 = load i32, ptr %j2, align 4, !tbaa !8
  %1807 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1948 = mul nsw i32 %1806, %1807
  %add1949 = add nsw i32 %add1947, %mul1948
  %idxprom1950 = sext i32 %add1949 to i64
  %arrayidx1951 = getelementptr inbounds float, ptr %1803, i64 %idxprom1950
  %1808 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1809 = load i32, ptr %ka1, align 4, !tbaa !8
  %1810 = load i32, ptr %l, align 4, !tbaa !8
  %sub1952 = sub nsw i32 %1809, %1810
  %1811 = load i32, ptr %j2, align 4, !tbaa !8
  %add1953 = add nsw i32 %1811, 1
  %1812 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1954 = mul nsw i32 %add1953, %1812
  %add1955 = add nsw i32 %sub1952, %mul1954
  %idxprom1956 = sext i32 %add1955 to i64
  %arrayidx1957 = getelementptr inbounds float, ptr %1808, i64 %idxprom1956
  %1813 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1814 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1815 = load i32, ptr %1814, align 4, !tbaa !8
  %1816 = load i32, ptr %j2, align 4, !tbaa !8
  %add1958 = add nsw i32 %1815, %1816
  %idxprom1959 = sext i32 %add1958 to i64
  %arrayidx1960 = getelementptr inbounds float, ptr %1813, i64 %idxprom1959
  %1817 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1818 = load i32, ptr %j2, align 4, !tbaa !8
  %idxprom1961 = sext i32 %1818 to i64
  %arrayidx1962 = getelementptr inbounds float, ptr %1817, i64 %idxprom1961
  %call1963 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx1951, ptr noundef %inca, ptr noundef %arrayidx1957, ptr noundef %inca, ptr noundef %arrayidx1960, ptr noundef %arrayidx1962, ptr noundef %ka1)
  br label %if.end1964

if.end1964:                                       ; preds = %if.then1945, %for.body1939
  br label %for.inc1965

for.inc1965:                                      ; preds = %if.end1964
  %1819 = load i32, ptr %l, align 4, !tbaa !8
  %dec1966 = add nsw i32 %1819, -1
  store i32 %dec1966, ptr %l, align 4, !tbaa !8
  br label %for.cond1936, !llvm.loop !53

for.end1967:                                      ; preds = %for.cond1936
  %1820 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool1968 = icmp ne i32 %1820, 0
  br i1 %tobool1968, label %if.then1969, label %if.end2004

if.then1969:                                      ; preds = %for.end1967
  %1821 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %1821, ptr %i__4, align 4, !tbaa !8
  %1822 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %1822, ptr %i__3, align 4, !tbaa !8
  %1823 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %1823, ptr %j, align 4, !tbaa !8
  br label %for.cond1970

for.cond1970:                                     ; preds = %for.inc2001, %if.then1969
  %1824 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1971 = icmp slt i32 %1824, 0
  br i1 %cmp1971, label %cond.true1973, label %cond.false1976

cond.true1973:                                    ; preds = %for.cond1970
  %1825 = load i32, ptr %j, align 4, !tbaa !8
  %1826 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1974 = icmp sge i32 %1825, %1826
  %conv1975 = zext i1 %cmp1974 to i32
  br label %cond.end1979

cond.false1976:                                   ; preds = %for.cond1970
  %1827 = load i32, ptr %j, align 4, !tbaa !8
  %1828 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp1977 = icmp sle i32 %1827, %1828
  %conv1978 = zext i1 %cmp1977 to i32
  br label %cond.end1979

cond.end1979:                                     ; preds = %cond.false1976, %cond.true1973
  %cond1980 = phi i32 [ %conv1975, %cond.true1973 ], [ %conv1978, %cond.false1976 ]
  %tobool1981 = icmp ne i32 %cond1980, 0
  br i1 %tobool1981, label %for.body1982, label %for.end2003

for.body1982:                                     ; preds = %cond.end1979
  %1829 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1830 = load i32, ptr %1829, align 4, !tbaa !8
  %1831 = load i32, ptr %m, align 4, !tbaa !8
  %sub1983 = sub nsw i32 %1830, %1831
  store i32 %sub1983, ptr %i__1, align 4, !tbaa !8
  %1832 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1833 = load i32, ptr %m, align 4, !tbaa !8
  %add1984 = add nsw i32 %1833, 1
  %1834 = load i32, ptr %j, align 4, !tbaa !8
  %1835 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul1985 = mul nsw i32 %1834, %1835
  %add1986 = add nsw i32 %add1984, %mul1985
  %idxprom1987 = sext i32 %add1986 to i64
  %arrayidx1988 = getelementptr inbounds float, ptr %1832, i64 %idxprom1987
  %1836 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1837 = load i32, ptr %m, align 4, !tbaa !8
  %add1989 = add nsw i32 %1837, 1
  %1838 = load i32, ptr %j, align 4, !tbaa !8
  %add1990 = add nsw i32 %1838, 1
  %1839 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul1991 = mul nsw i32 %add1990, %1839
  %add1992 = add nsw i32 %add1989, %mul1991
  %idxprom1993 = sext i32 %add1992 to i64
  %arrayidx1994 = getelementptr inbounds float, ptr %1836, i64 %idxprom1993
  %1840 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1841 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1842 = load i32, ptr %1841, align 4, !tbaa !8
  %1843 = load i32, ptr %j, align 4, !tbaa !8
  %add1995 = add nsw i32 %1842, %1843
  %idxprom1996 = sext i32 %add1995 to i64
  %arrayidx1997 = getelementptr inbounds float, ptr %1840, i64 %idxprom1996
  %1844 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1845 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1998 = sext i32 %1845 to i64
  %arrayidx1999 = getelementptr inbounds float, ptr %1844, i64 %idxprom1998
  %call2000 = call i32 @srot_(ptr noundef %i__1, ptr noundef %arrayidx1988, ptr noundef @c__1, ptr noundef %arrayidx1994, ptr noundef @c__1, ptr noundef %arrayidx1997, ptr noundef %arrayidx1999)
  br label %for.inc2001

for.inc2001:                                      ; preds = %for.body1982
  %1846 = load i32, ptr %i__3, align 4, !tbaa !8
  %1847 = load i32, ptr %j, align 4, !tbaa !8
  %add2002 = add nsw i32 %1847, %1846
  store i32 %add2002, ptr %j, align 4, !tbaa !8
  br label %for.cond1970, !llvm.loop !54

for.end2003:                                      ; preds = %cond.end1979
  br label %if.end2004

if.end2004:                                       ; preds = %for.end2003, %for.end1967
  br label %for.inc2005

for.inc2005:                                      ; preds = %if.end2004
  %1848 = load i32, ptr %k, align 4, !tbaa !8
  %dec2006 = add nsw i32 %1848, -1
  store i32 %dec2006, ptr %k, align 4, !tbaa !8
  br label %for.cond1848, !llvm.loop !55

for.end2007:                                      ; preds = %for.cond1848
  %1849 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1850 = load i32, ptr %1849, align 4, !tbaa !8
  %sub2008 = sub nsw i32 %1850, 1
  store i32 %sub2008, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond2009

for.cond2009:                                     ; preds = %for.inc2063, %for.end2007
  %1851 = load i32, ptr %k, align 4, !tbaa !8
  %1852 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2010 = icmp sle i32 %1851, %1852
  br i1 %cmp2010, label %for.body2012, label %for.end2065

for.body2012:                                     ; preds = %for.cond2009
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %1853 = load i32, ptr %k, align 4, !tbaa !8
  %1854 = load i32, ptr %i0, align 4, !tbaa !8
  %sub2013 = sub nsw i32 %1853, %1854
  %add2014 = add nsw i32 %sub2013, 2
  store i32 %add2014, ptr %i__1, align 4, !tbaa !8
  %1855 = load i32, ptr %i__, align 4, !tbaa !8
  %1856 = load i32, ptr %k, align 4, !tbaa !8
  %sub2015 = sub nsw i32 %1855, %1856
  %sub2016 = sub nsw i32 %sub2015, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2017) #4
  %1857 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %1857, ptr %_x2017, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2018) #4
  %1858 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %1858, ptr %_y2018, align 4, !tbaa !8
  %1859 = load i32, ptr %_x2017, align 4, !tbaa !8
  %1860 = load i32, ptr %_y2018, align 4, !tbaa !8
  %cmp2020 = icmp sgt i32 %1859, %1860
  br i1 %cmp2020, label %cond.true2022, label %cond.false2023

cond.true2022:                                    ; preds = %for.body2012
  %1861 = load i32, ptr %_x2017, align 4, !tbaa !8
  br label %cond.end2024

cond.false2023:                                   ; preds = %for.body2012
  %1862 = load i32, ptr %_y2018, align 4, !tbaa !8
  br label %cond.end2024

cond.end2024:                                     ; preds = %cond.false2023, %cond.true2022
  %cond2025 = phi i32 [ %1861, %cond.true2022 ], [ %1862, %cond.false2023 ]
  store i32 %cond2025, ptr %tmp2019, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2018) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2017) #4
  %1863 = load i32, ptr %tmp2019, align 4, !tbaa !8
  %1864 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul2026 = mul nsw i32 %1863, %1864
  %add2027 = add nsw i32 %sub2016, %mul2026
  store i32 %add2027, ptr %j2, align 4, !tbaa !8
  %1865 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1866 = load i32, ptr %1865, align 4, !tbaa !8
  %1867 = load i32, ptr %k, align 4, !tbaa !8
  %sub2028 = sub nsw i32 %1866, %1867
  store i32 %sub2028, ptr %l, align 4, !tbaa !8
  br label %for.cond2029

for.cond2029:                                     ; preds = %for.inc2060, %cond.end2024
  %1868 = load i32, ptr %l, align 4, !tbaa !8
  %cmp2030 = icmp sge i32 %1868, 1
  br i1 %cmp2030, label %for.body2032, label %for.end2062

for.body2032:                                     ; preds = %for.cond2029
  %1869 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1870 = load i32, ptr %1869, align 4, !tbaa !8
  %1871 = load i32, ptr %j2, align 4, !tbaa !8
  %sub2033 = sub nsw i32 %1870, %1871
  %1872 = load i32, ptr %l, align 4, !tbaa !8
  %add2034 = add nsw i32 %sub2033, %1872
  %1873 = load i32, ptr %ka1, align 4, !tbaa !8
  %div2035 = sdiv i32 %add2034, %1873
  store i32 %div2035, ptr %nrt, align 4, !tbaa !8
  %1874 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp2036 = icmp sgt i32 %1874, 0
  br i1 %cmp2036, label %if.then2038, label %if.end2059

if.then2038:                                      ; preds = %for.body2032
  %1875 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1876 = load i32, ptr %ka1, align 4, !tbaa !8
  %1877 = load i32, ptr %l, align 4, !tbaa !8
  %sub2039 = sub nsw i32 %1876, %1877
  %add2040 = add nsw i32 %sub2039, 1
  %1878 = load i32, ptr %j2, align 4, !tbaa !8
  %1879 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2041 = mul nsw i32 %1878, %1879
  %add2042 = add nsw i32 %add2040, %mul2041
  %idxprom2043 = sext i32 %add2042 to i64
  %arrayidx2044 = getelementptr inbounds float, ptr %1875, i64 %idxprom2043
  %1880 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1881 = load i32, ptr %ka1, align 4, !tbaa !8
  %1882 = load i32, ptr %l, align 4, !tbaa !8
  %sub2045 = sub nsw i32 %1881, %1882
  %1883 = load i32, ptr %j2, align 4, !tbaa !8
  %add2046 = add nsw i32 %1883, 1
  %1884 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2047 = mul nsw i32 %add2046, %1884
  %add2048 = add nsw i32 %sub2045, %mul2047
  %idxprom2049 = sext i32 %add2048 to i64
  %arrayidx2050 = getelementptr inbounds float, ptr %1880, i64 %idxprom2049
  %1885 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1886 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1887 = load i32, ptr %1886, align 4, !tbaa !8
  %1888 = load i32, ptr %j2, align 4, !tbaa !8
  %add2051 = add nsw i32 %1887, %1888
  %1889 = load i32, ptr %m, align 4, !tbaa !8
  %sub2052 = sub nsw i32 %add2051, %1889
  %idxprom2053 = sext i32 %sub2052 to i64
  %arrayidx2054 = getelementptr inbounds float, ptr %1885, i64 %idxprom2053
  %1890 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1891 = load i32, ptr %j2, align 4, !tbaa !8
  %1892 = load i32, ptr %m, align 4, !tbaa !8
  %sub2055 = sub nsw i32 %1891, %1892
  %idxprom2056 = sext i32 %sub2055 to i64
  %arrayidx2057 = getelementptr inbounds float, ptr %1890, i64 %idxprom2056
  %call2058 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx2044, ptr noundef %inca, ptr noundef %arrayidx2050, ptr noundef %inca, ptr noundef %arrayidx2054, ptr noundef %arrayidx2057, ptr noundef %ka1)
  br label %if.end2059

if.end2059:                                       ; preds = %if.then2038, %for.body2032
  br label %for.inc2060

for.inc2060:                                      ; preds = %if.end2059
  %1893 = load i32, ptr %l, align 4, !tbaa !8
  %dec2061 = add nsw i32 %1893, -1
  store i32 %dec2061, ptr %l, align 4, !tbaa !8
  br label %for.cond2029, !llvm.loop !56

for.end2062:                                      ; preds = %for.cond2029
  br label %for.inc2063

for.inc2063:                                      ; preds = %for.end2062
  %1894 = load i32, ptr %k, align 4, !tbaa !8
  %inc2064 = add nsw i32 %1894, 1
  store i32 %inc2064, ptr %k, align 4, !tbaa !8
  br label %for.cond2009, !llvm.loop !57

for.end2065:                                      ; preds = %for.cond2009
  %1895 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1896 = load i32, ptr %1895, align 4, !tbaa !8
  %cmp2066 = icmp sgt i32 %1896, 1
  br i1 %cmp2066, label %if.then2068, label %if.end2097

if.then2068:                                      ; preds = %for.end2065
  %1897 = load i32, ptr %i__, align 4, !tbaa !8
  %1898 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1899 = load i32, ptr %1898, align 4, !tbaa !8
  %sub2069 = sub nsw i32 %1897, %1899
  %1900 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1901 = load i32, ptr %1900, align 4, !tbaa !8
  %shl2070 = shl i32 %1901, 1
  %add2071 = add nsw i32 %sub2069, %shl2070
  %add2072 = add nsw i32 %add2071, 1
  store i32 %add2072, ptr %i__3, align 4, !tbaa !8
  %1902 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1903 = load i32, ptr %1902, align 4, !tbaa !8
  %sub2073 = sub nsw i32 %1903, 1
  store i32 %sub2073, ptr %j, align 4, !tbaa !8
  br label %for.cond2074

for.cond2074:                                     ; preds = %for.inc2094, %if.then2068
  %1904 = load i32, ptr %j, align 4, !tbaa !8
  %1905 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2075 = icmp sge i32 %1904, %1905
  br i1 %cmp2075, label %for.body2077, label %for.end2096

for.body2077:                                     ; preds = %for.cond2074
  %1906 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1907 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1908 = load i32, ptr %1907, align 4, !tbaa !8
  %1909 = load i32, ptr %j, align 4, !tbaa !8
  %add2078 = add nsw i32 %1908, %1909
  %1910 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1911 = load i32, ptr %1910, align 4, !tbaa !8
  %sub2079 = sub nsw i32 %add2078, %1911
  %1912 = load i32, ptr %m, align 4, !tbaa !8
  %sub2080 = sub nsw i32 %sub2079, %1912
  %idxprom2081 = sext i32 %sub2080 to i64
  %arrayidx2082 = getelementptr inbounds float, ptr %1906, i64 %idxprom2081
  %1913 = load float, ptr %arrayidx2082, align 4, !tbaa !10
  %1914 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1915 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1916 = load i32, ptr %1915, align 4, !tbaa !8
  %1917 = load i32, ptr %j, align 4, !tbaa !8
  %add2083 = add nsw i32 %1916, %1917
  %1918 = load i32, ptr %m, align 4, !tbaa !8
  %sub2084 = sub nsw i32 %add2083, %1918
  %idxprom2085 = sext i32 %sub2084 to i64
  %arrayidx2086 = getelementptr inbounds float, ptr %1914, i64 %idxprom2085
  store float %1913, ptr %arrayidx2086, align 4, !tbaa !10
  %1919 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1920 = load i32, ptr %j, align 4, !tbaa !8
  %1921 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1922 = load i32, ptr %1921, align 4, !tbaa !8
  %sub2087 = sub nsw i32 %1920, %1922
  %1923 = load i32, ptr %m, align 4, !tbaa !8
  %sub2088 = sub nsw i32 %sub2087, %1923
  %idxprom2089 = sext i32 %sub2088 to i64
  %arrayidx2090 = getelementptr inbounds float, ptr %1919, i64 %idxprom2089
  %1924 = load float, ptr %arrayidx2090, align 4, !tbaa !10
  %1925 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %1926 = load i32, ptr %j, align 4, !tbaa !8
  %1927 = load i32, ptr %m, align 4, !tbaa !8
  %sub2091 = sub nsw i32 %1926, %1927
  %idxprom2092 = sext i32 %sub2091 to i64
  %arrayidx2093 = getelementptr inbounds float, ptr %1925, i64 %idxprom2092
  store float %1924, ptr %arrayidx2093, align 4, !tbaa !10
  br label %for.inc2094

for.inc2094:                                      ; preds = %for.body2077
  %1928 = load i32, ptr %j, align 4, !tbaa !8
  %dec2095 = add nsw i32 %1928, -1
  store i32 %dec2095, ptr %j, align 4, !tbaa !8
  br label %for.cond2074, !llvm.loop !58

for.end2096:                                      ; preds = %for.cond2074
  br label %if.end2097

if.end2097:                                       ; preds = %for.end2096, %for.end2065
  br label %if.end2098

if.end2098:                                       ; preds = %if.end2097, %if.end1084
  br label %L10

L480:                                             ; preds = %if.then98, %if.then91
  store i32 1, ptr %update, align 4, !tbaa !8
  store i32 0, ptr %i__, align 4, !tbaa !8
  br label %L490

L490:                                             ; preds = %if.end4226, %if.end2133, %L480
  %1929 = load i32, ptr %update, align 4, !tbaa !8
  %tobool2099 = icmp ne i32 %1929, 0
  br i1 %tobool2099, label %if.then2100, label %if.else2135

if.then2100:                                      ; preds = %L490
  %1930 = load i32, ptr %i__, align 4, !tbaa !8
  %inc2101 = add nsw i32 %1930, 1
  store i32 %inc2101, ptr %i__, align 4, !tbaa !8
  %1931 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %1932 = load i32, ptr %1931, align 4, !tbaa !8
  store i32 %1932, ptr %i__3, align 4, !tbaa !8
  %1933 = load i32, ptr %m, align 4, !tbaa !8
  %1934 = load i32, ptr %i__, align 4, !tbaa !8
  %sub2102 = sub nsw i32 %1933, %1934
  store i32 %sub2102, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2103) #4
  %1935 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %1935, ptr %_x2103, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2104) #4
  %1936 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %1936, ptr %_y2104, align 4, !tbaa !8
  %1937 = load i32, ptr %_x2103, align 4, !tbaa !8
  %1938 = load i32, ptr %_y2104, align 4, !tbaa !8
  %cmp2106 = icmp slt i32 %1937, %1938
  br i1 %cmp2106, label %cond.true2108, label %cond.false2109

cond.true2108:                                    ; preds = %if.then2100
  %1939 = load i32, ptr %_x2103, align 4, !tbaa !8
  br label %cond.end2110

cond.false2109:                                   ; preds = %if.then2100
  %1940 = load i32, ptr %_y2104, align 4, !tbaa !8
  br label %cond.end2110

cond.end2110:                                     ; preds = %cond.false2109, %cond.true2108
  %cond2111 = phi i32 [ %1939, %cond.true2108 ], [ %1940, %cond.false2109 ]
  store i32 %cond2111, ptr %tmp2105, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2104) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2103) #4
  %1941 = load i32, ptr %tmp2105, align 4, !tbaa !8
  store i32 %1941, ptr %kbt, align 4, !tbaa !8
  %1942 = load i32, ptr %i__, align 4, !tbaa !8
  %add2112 = add nsw i32 %1942, 1
  store i32 %add2112, ptr %i0, align 4, !tbaa !8
  store i32 1, ptr %i__3, align 4, !tbaa !8
  %1943 = load i32, ptr %i__, align 4, !tbaa !8
  %1944 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1945 = load i32, ptr %1944, align 4, !tbaa !8
  %sub2113 = sub nsw i32 %1943, %1945
  store i32 %sub2113, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2114) #4
  %1946 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %1946, ptr %_x2114, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2115) #4
  %1947 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %1947, ptr %_y2115, align 4, !tbaa !8
  %1948 = load i32, ptr %_x2114, align 4, !tbaa !8
  %1949 = load i32, ptr %_y2115, align 4, !tbaa !8
  %cmp2117 = icmp sgt i32 %1948, %1949
  br i1 %cmp2117, label %cond.true2119, label %cond.false2120

cond.true2119:                                    ; preds = %cond.end2110
  %1950 = load i32, ptr %_x2114, align 4, !tbaa !8
  br label %cond.end2121

cond.false2120:                                   ; preds = %cond.end2110
  %1951 = load i32, ptr %_y2115, align 4, !tbaa !8
  br label %cond.end2121

cond.end2121:                                     ; preds = %cond.false2120, %cond.true2119
  %cond2122 = phi i32 [ %1950, %cond.true2119 ], [ %1951, %cond.false2120 ]
  store i32 %cond2122, ptr %tmp2116, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2115) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2114) #4
  %1952 = load i32, ptr %tmp2116, align 4, !tbaa !8
  store i32 %1952, ptr %i1, align 4, !tbaa !8
  %1953 = load i32, ptr %i__, align 4, !tbaa !8
  %1954 = load i32, ptr %kbt, align 4, !tbaa !8
  %add2123 = add nsw i32 %1953, %1954
  %1955 = load i32, ptr %ka1, align 4, !tbaa !8
  %sub2124 = sub nsw i32 %add2123, %1955
  store i32 %sub2124, ptr %i2, align 4, !tbaa !8
  %1956 = load i32, ptr %i__, align 4, !tbaa !8
  %1957 = load i32, ptr %m, align 4, !tbaa !8
  %cmp2125 = icmp sgt i32 %1956, %1957
  br i1 %cmp2125, label %if.then2127, label %if.end2134

if.then2127:                                      ; preds = %cond.end2121
  store i32 0, ptr %update, align 4, !tbaa !8
  %1958 = load i32, ptr %i__, align 4, !tbaa !8
  %dec2128 = add nsw i32 %1958, -1
  store i32 %dec2128, ptr %i__, align 4, !tbaa !8
  %1959 = load i32, ptr %m, align 4, !tbaa !8
  %add2129 = add nsw i32 %1959, 1
  store i32 %add2129, ptr %i0, align 4, !tbaa !8
  %1960 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1961 = load i32, ptr %1960, align 4, !tbaa !8
  %cmp2130 = icmp eq i32 %1961, 0
  br i1 %cmp2130, label %if.then2132, label %if.end2133

if.then2132:                                      ; preds = %if.then2127
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2133:                                       ; preds = %if.then2127
  br label %L490

if.end2134:                                       ; preds = %cond.end2121
  br label %if.end2141

if.else2135:                                      ; preds = %L490
  %1962 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1963 = load i32, ptr %1962, align 4, !tbaa !8
  %1964 = load i32, ptr %i__, align 4, !tbaa !8
  %sub2136 = sub nsw i32 %1964, %1963
  store i32 %sub2136, ptr %i__, align 4, !tbaa !8
  %1965 = load i32, ptr %i__, align 4, !tbaa !8
  %cmp2137 = icmp slt i32 %1965, 2
  br i1 %cmp2137, label %if.then2139, label %if.end2140

if.then2139:                                      ; preds = %if.else2135
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end2140:                                       ; preds = %if.else2135
  br label %if.end2141

if.end2141:                                       ; preds = %if.end2140, %if.end2134
  %1966 = load i32, ptr %i__, align 4, !tbaa !8
  %1967 = load i32, ptr %m, align 4, !tbaa !8
  %1968 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub2142 = sub nsw i32 %1967, %1968
  %cmp2143 = icmp slt i32 %1966, %sub2142
  br i1 %cmp2143, label %if.then2145, label %if.else2146

if.then2145:                                      ; preds = %if.end2141
  %1969 = load i32, ptr %m, align 4, !tbaa !8
  store i32 %1969, ptr %nx, align 4, !tbaa !8
  br label %if.end2147

if.else2146:                                      ; preds = %if.end2141
  %1970 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1971 = load i32, ptr %1970, align 4, !tbaa !8
  store i32 %1971, ptr %nx, align 4, !tbaa !8
  br label %if.end2147

if.end2147:                                       ; preds = %if.else2146, %if.then2145
  %1972 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool2148 = icmp ne i32 %1972, 0
  br i1 %tobool2148, label %if.then2149, label %if.else3182

if.then2149:                                      ; preds = %if.end2147
  %1973 = load i32, ptr %update, align 4, !tbaa !8
  %tobool2150 = icmp ne i32 %1973, 0
  br i1 %tobool2150, label %if.then2151, label %if.end2389

if.then2151:                                      ; preds = %if.then2149
  %1974 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %1975 = load i32, ptr %kb1, align 4, !tbaa !8
  %1976 = load i32, ptr %i__, align 4, !tbaa !8
  %1977 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul2152 = mul nsw i32 %1976, %1977
  %add2153 = add nsw i32 %1975, %mul2152
  %idxprom2154 = sext i32 %add2153 to i64
  %arrayidx2155 = getelementptr inbounds float, ptr %1974, i64 %idxprom2154
  %1978 = load float, ptr %arrayidx2155, align 4, !tbaa !10
  store float %1978, ptr %bii, align 4, !tbaa !10
  %1979 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %1979, ptr %i__3, align 4, !tbaa !8
  %1980 = load i32, ptr %i1, align 4, !tbaa !8
  store i32 %1980, ptr %j, align 4, !tbaa !8
  br label %for.cond2156

for.cond2156:                                     ; preds = %for.inc2167, %if.then2151
  %1981 = load i32, ptr %j, align 4, !tbaa !8
  %1982 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2157 = icmp sle i32 %1981, %1982
  br i1 %cmp2157, label %for.body2159, label %for.end2169

for.body2159:                                     ; preds = %for.cond2156
  %1983 = load float, ptr %bii, align 4, !tbaa !10
  %1984 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %1985 = load i32, ptr %j, align 4, !tbaa !8
  %1986 = load i32, ptr %i__, align 4, !tbaa !8
  %sub2160 = sub nsw i32 %1985, %1986
  %1987 = load i32, ptr %ka1, align 4, !tbaa !8
  %add2161 = add nsw i32 %sub2160, %1987
  %1988 = load i32, ptr %i__, align 4, !tbaa !8
  %1989 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2162 = mul nsw i32 %1988, %1989
  %add2163 = add nsw i32 %add2161, %mul2162
  %idxprom2164 = sext i32 %add2163 to i64
  %arrayidx2165 = getelementptr inbounds float, ptr %1984, i64 %idxprom2164
  %1990 = load float, ptr %arrayidx2165, align 4, !tbaa !10
  %div2166 = fdiv float %1990, %1983
  store float %div2166, ptr %arrayidx2165, align 4, !tbaa !10
  br label %for.inc2167

for.inc2167:                                      ; preds = %for.body2159
  %1991 = load i32, ptr %j, align 4, !tbaa !8
  %inc2168 = add nsw i32 %1991, 1
  store i32 %inc2168, ptr %j, align 4, !tbaa !8
  br label %for.cond2156, !llvm.loop !59

for.end2169:                                      ; preds = %for.cond2156
  %1992 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1993 = load i32, ptr %1992, align 4, !tbaa !8
  store i32 %1993, ptr %i__4, align 4, !tbaa !8
  %1994 = load i32, ptr %i__, align 4, !tbaa !8
  %1995 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %1996 = load i32, ptr %1995, align 4, !tbaa !8
  %add2170 = add nsw i32 %1994, %1996
  store i32 %add2170, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2171) #4
  %1997 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %1997, ptr %_x2171, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2172) #4
  %1998 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %1998, ptr %_y2172, align 4, !tbaa !8
  %1999 = load i32, ptr %_x2171, align 4, !tbaa !8
  %2000 = load i32, ptr %_y2172, align 4, !tbaa !8
  %cmp2174 = icmp slt i32 %1999, %2000
  br i1 %cmp2174, label %cond.true2176, label %cond.false2177

cond.true2176:                                    ; preds = %for.end2169
  %2001 = load i32, ptr %_x2171, align 4, !tbaa !8
  br label %cond.end2178

cond.false2177:                                   ; preds = %for.end2169
  %2002 = load i32, ptr %_y2172, align 4, !tbaa !8
  br label %cond.end2178

cond.end2178:                                     ; preds = %cond.false2177, %cond.true2176
  %cond2179 = phi i32 [ %2001, %cond.true2176 ], [ %2002, %cond.false2177 ]
  store i32 %cond2179, ptr %tmp2173, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2172) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2171) #4
  %2003 = load i32, ptr %tmp2173, align 4, !tbaa !8
  store i32 %2003, ptr %i__3, align 4, !tbaa !8
  %2004 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %2004, ptr %j, align 4, !tbaa !8
  br label %for.cond2180

for.cond2180:                                     ; preds = %for.inc2191, %cond.end2178
  %2005 = load i32, ptr %j, align 4, !tbaa !8
  %2006 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2181 = icmp sle i32 %2005, %2006
  br i1 %cmp2181, label %for.body2183, label %for.end2193

for.body2183:                                     ; preds = %for.cond2180
  %2007 = load float, ptr %bii, align 4, !tbaa !10
  %2008 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2009 = load i32, ptr %i__, align 4, !tbaa !8
  %2010 = load i32, ptr %j, align 4, !tbaa !8
  %sub2184 = sub nsw i32 %2009, %2010
  %2011 = load i32, ptr %ka1, align 4, !tbaa !8
  %add2185 = add nsw i32 %sub2184, %2011
  %2012 = load i32, ptr %j, align 4, !tbaa !8
  %2013 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2186 = mul nsw i32 %2012, %2013
  %add2187 = add nsw i32 %add2185, %mul2186
  %idxprom2188 = sext i32 %add2187 to i64
  %arrayidx2189 = getelementptr inbounds float, ptr %2008, i64 %idxprom2188
  %2014 = load float, ptr %arrayidx2189, align 4, !tbaa !10
  %div2190 = fdiv float %2014, %2007
  store float %div2190, ptr %arrayidx2189, align 4, !tbaa !10
  br label %for.inc2191

for.inc2191:                                      ; preds = %for.body2183
  %2015 = load i32, ptr %j, align 4, !tbaa !8
  %inc2192 = add nsw i32 %2015, 1
  store i32 %inc2192, ptr %j, align 4, !tbaa !8
  br label %for.cond2180, !llvm.loop !60

for.end2193:                                      ; preds = %for.cond2180
  %2016 = load i32, ptr %i__, align 4, !tbaa !8
  %2017 = load i32, ptr %kbt, align 4, !tbaa !8
  %add2194 = add nsw i32 %2016, %2017
  store i32 %add2194, ptr %i__3, align 4, !tbaa !8
  %2018 = load i32, ptr %i__, align 4, !tbaa !8
  %add2195 = add nsw i32 %2018, 1
  store i32 %add2195, ptr %k, align 4, !tbaa !8
  br label %for.cond2196

for.cond2196:                                     ; preds = %for.inc2305, %for.end2193
  %2019 = load i32, ptr %k, align 4, !tbaa !8
  %2020 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2197 = icmp sle i32 %2019, %2020
  br i1 %cmp2197, label %for.body2199, label %for.end2307

for.body2199:                                     ; preds = %for.cond2196
  %2021 = load i32, ptr %i__, align 4, !tbaa !8
  %2022 = load i32, ptr %kbt, align 4, !tbaa !8
  %add2200 = add nsw i32 %2021, %2022
  store i32 %add2200, ptr %i__4, align 4, !tbaa !8
  %2023 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %2023, ptr %j, align 4, !tbaa !8
  br label %for.cond2201

for.cond2201:                                     ; preds = %for.inc2263, %for.body2199
  %2024 = load i32, ptr %j, align 4, !tbaa !8
  %2025 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp2202 = icmp sle i32 %2024, %2025
  br i1 %cmp2202, label %for.body2204, label %for.end2265

for.body2204:                                     ; preds = %for.cond2201
  %2026 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2027 = load i32, ptr %k, align 4, !tbaa !8
  %2028 = load i32, ptr %j, align 4, !tbaa !8
  %sub2205 = sub nsw i32 %2027, %2028
  %2029 = load i32, ptr %ka1, align 4, !tbaa !8
  %add2206 = add nsw i32 %sub2205, %2029
  %2030 = load i32, ptr %j, align 4, !tbaa !8
  %2031 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2207 = mul nsw i32 %2030, %2031
  %add2208 = add nsw i32 %add2206, %mul2207
  %idxprom2209 = sext i32 %add2208 to i64
  %arrayidx2210 = getelementptr inbounds float, ptr %2026, i64 %idxprom2209
  %2032 = load float, ptr %arrayidx2210, align 4, !tbaa !10
  %2033 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2034 = load i32, ptr %i__, align 4, !tbaa !8
  %2035 = load i32, ptr %j, align 4, !tbaa !8
  %sub2211 = sub nsw i32 %2034, %2035
  %2036 = load i32, ptr %kb1, align 4, !tbaa !8
  %add2212 = add nsw i32 %sub2211, %2036
  %2037 = load i32, ptr %j, align 4, !tbaa !8
  %2038 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul2213 = mul nsw i32 %2037, %2038
  %add2214 = add nsw i32 %add2212, %mul2213
  %idxprom2215 = sext i32 %add2214 to i64
  %arrayidx2216 = getelementptr inbounds float, ptr %2033, i64 %idxprom2215
  %2039 = load float, ptr %arrayidx2216, align 4, !tbaa !10
  %2040 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2041 = load i32, ptr %i__, align 4, !tbaa !8
  %2042 = load i32, ptr %k, align 4, !tbaa !8
  %sub2217 = sub nsw i32 %2041, %2042
  %2043 = load i32, ptr %ka1, align 4, !tbaa !8
  %add2218 = add nsw i32 %sub2217, %2043
  %2044 = load i32, ptr %k, align 4, !tbaa !8
  %2045 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2219 = mul nsw i32 %2044, %2045
  %add2220 = add nsw i32 %add2218, %mul2219
  %idxprom2221 = sext i32 %add2220 to i64
  %arrayidx2222 = getelementptr inbounds float, ptr %2040, i64 %idxprom2221
  %2046 = load float, ptr %arrayidx2222, align 4, !tbaa !10
  %neg2224 = fneg float %2039
  %2047 = call float @llvm.fmuladd.f32(float %neg2224, float %2046, float %2032)
  %2048 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2049 = load i32, ptr %i__, align 4, !tbaa !8
  %2050 = load i32, ptr %k, align 4, !tbaa !8
  %sub2225 = sub nsw i32 %2049, %2050
  %2051 = load i32, ptr %kb1, align 4, !tbaa !8
  %add2226 = add nsw i32 %sub2225, %2051
  %2052 = load i32, ptr %k, align 4, !tbaa !8
  %2053 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul2227 = mul nsw i32 %2052, %2053
  %add2228 = add nsw i32 %add2226, %mul2227
  %idxprom2229 = sext i32 %add2228 to i64
  %arrayidx2230 = getelementptr inbounds float, ptr %2048, i64 %idxprom2229
  %2054 = load float, ptr %arrayidx2230, align 4, !tbaa !10
  %2055 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2056 = load i32, ptr %i__, align 4, !tbaa !8
  %2057 = load i32, ptr %j, align 4, !tbaa !8
  %sub2231 = sub nsw i32 %2056, %2057
  %2058 = load i32, ptr %ka1, align 4, !tbaa !8
  %add2232 = add nsw i32 %sub2231, %2058
  %2059 = load i32, ptr %j, align 4, !tbaa !8
  %2060 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2233 = mul nsw i32 %2059, %2060
  %add2234 = add nsw i32 %add2232, %mul2233
  %idxprom2235 = sext i32 %add2234 to i64
  %arrayidx2236 = getelementptr inbounds float, ptr %2055, i64 %idxprom2235
  %2061 = load float, ptr %arrayidx2236, align 4, !tbaa !10
  %neg2238 = fneg float %2054
  %2062 = call float @llvm.fmuladd.f32(float %neg2238, float %2061, float %2047)
  %2063 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2064 = load i32, ptr %ka1, align 4, !tbaa !8
  %2065 = load i32, ptr %i__, align 4, !tbaa !8
  %2066 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2239 = mul nsw i32 %2065, %2066
  %add2240 = add nsw i32 %2064, %mul2239
  %idxprom2241 = sext i32 %add2240 to i64
  %arrayidx2242 = getelementptr inbounds float, ptr %2063, i64 %idxprom2241
  %2067 = load float, ptr %arrayidx2242, align 4, !tbaa !10
  %2068 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2069 = load i32, ptr %i__, align 4, !tbaa !8
  %2070 = load i32, ptr %j, align 4, !tbaa !8
  %sub2243 = sub nsw i32 %2069, %2070
  %2071 = load i32, ptr %kb1, align 4, !tbaa !8
  %add2244 = add nsw i32 %sub2243, %2071
  %2072 = load i32, ptr %j, align 4, !tbaa !8
  %2073 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul2245 = mul nsw i32 %2072, %2073
  %add2246 = add nsw i32 %add2244, %mul2245
  %idxprom2247 = sext i32 %add2246 to i64
  %arrayidx2248 = getelementptr inbounds float, ptr %2068, i64 %idxprom2247
  %2074 = load float, ptr %arrayidx2248, align 4, !tbaa !10
  %mul2249 = fmul float %2067, %2074
  %2075 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2076 = load i32, ptr %i__, align 4, !tbaa !8
  %2077 = load i32, ptr %k, align 4, !tbaa !8
  %sub2250 = sub nsw i32 %2076, %2077
  %2078 = load i32, ptr %kb1, align 4, !tbaa !8
  %add2251 = add nsw i32 %sub2250, %2078
  %2079 = load i32, ptr %k, align 4, !tbaa !8
  %2080 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul2252 = mul nsw i32 %2079, %2080
  %add2253 = add nsw i32 %add2251, %mul2252
  %idxprom2254 = sext i32 %add2253 to i64
  %arrayidx2255 = getelementptr inbounds float, ptr %2075, i64 %idxprom2254
  %2081 = load float, ptr %arrayidx2255, align 4, !tbaa !10
  %2082 = call float @llvm.fmuladd.f32(float %mul2249, float %2081, float %2062)
  %2083 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2084 = load i32, ptr %k, align 4, !tbaa !8
  %2085 = load i32, ptr %j, align 4, !tbaa !8
  %sub2257 = sub nsw i32 %2084, %2085
  %2086 = load i32, ptr %ka1, align 4, !tbaa !8
  %add2258 = add nsw i32 %sub2257, %2086
  %2087 = load i32, ptr %j, align 4, !tbaa !8
  %2088 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2259 = mul nsw i32 %2087, %2088
  %add2260 = add nsw i32 %add2258, %mul2259
  %idxprom2261 = sext i32 %add2260 to i64
  %arrayidx2262 = getelementptr inbounds float, ptr %2083, i64 %idxprom2261
  store float %2082, ptr %arrayidx2262, align 4, !tbaa !10
  br label %for.inc2263

for.inc2263:                                      ; preds = %for.body2204
  %2089 = load i32, ptr %j, align 4, !tbaa !8
  %inc2264 = add nsw i32 %2089, 1
  store i32 %inc2264, ptr %j, align 4, !tbaa !8
  br label %for.cond2201, !llvm.loop !61

for.end2265:                                      ; preds = %for.cond2201
  %2090 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2091 = load i32, ptr %2090, align 4, !tbaa !8
  store i32 %2091, ptr %i__1, align 4, !tbaa !8
  %2092 = load i32, ptr %i__, align 4, !tbaa !8
  %2093 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2094 = load i32, ptr %2093, align 4, !tbaa !8
  %add2266 = add nsw i32 %2092, %2094
  store i32 %add2266, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2267) #4
  %2095 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %2095, ptr %_x2267, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2268) #4
  %2096 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %2096, ptr %_y2268, align 4, !tbaa !8
  %2097 = load i32, ptr %_x2267, align 4, !tbaa !8
  %2098 = load i32, ptr %_y2268, align 4, !tbaa !8
  %cmp2270 = icmp slt i32 %2097, %2098
  br i1 %cmp2270, label %cond.true2272, label %cond.false2273

cond.true2272:                                    ; preds = %for.end2265
  %2099 = load i32, ptr %_x2267, align 4, !tbaa !8
  br label %cond.end2274

cond.false2273:                                   ; preds = %for.end2265
  %2100 = load i32, ptr %_y2268, align 4, !tbaa !8
  br label %cond.end2274

cond.end2274:                                     ; preds = %cond.false2273, %cond.true2272
  %cond2275 = phi i32 [ %2099, %cond.true2272 ], [ %2100, %cond.false2273 ]
  store i32 %cond2275, ptr %tmp2269, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2268) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2267) #4
  %2101 = load i32, ptr %tmp2269, align 4, !tbaa !8
  store i32 %2101, ptr %i__4, align 4, !tbaa !8
  %2102 = load i32, ptr %i__, align 4, !tbaa !8
  %2103 = load i32, ptr %kbt, align 4, !tbaa !8
  %add2276 = add nsw i32 %2102, %2103
  %add2277 = add nsw i32 %add2276, 1
  store i32 %add2277, ptr %j, align 4, !tbaa !8
  br label %for.cond2278

for.cond2278:                                     ; preds = %for.inc2302, %cond.end2274
  %2104 = load i32, ptr %j, align 4, !tbaa !8
  %2105 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp2279 = icmp sle i32 %2104, %2105
  br i1 %cmp2279, label %for.body2281, label %for.end2304

for.body2281:                                     ; preds = %for.cond2278
  %2106 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2107 = load i32, ptr %i__, align 4, !tbaa !8
  %2108 = load i32, ptr %k, align 4, !tbaa !8
  %sub2282 = sub nsw i32 %2107, %2108
  %2109 = load i32, ptr %kb1, align 4, !tbaa !8
  %add2283 = add nsw i32 %sub2282, %2109
  %2110 = load i32, ptr %k, align 4, !tbaa !8
  %2111 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul2284 = mul nsw i32 %2110, %2111
  %add2285 = add nsw i32 %add2283, %mul2284
  %idxprom2286 = sext i32 %add2285 to i64
  %arrayidx2287 = getelementptr inbounds float, ptr %2106, i64 %idxprom2286
  %2112 = load float, ptr %arrayidx2287, align 4, !tbaa !10
  %2113 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2114 = load i32, ptr %i__, align 4, !tbaa !8
  %2115 = load i32, ptr %j, align 4, !tbaa !8
  %sub2288 = sub nsw i32 %2114, %2115
  %2116 = load i32, ptr %ka1, align 4, !tbaa !8
  %add2289 = add nsw i32 %sub2288, %2116
  %2117 = load i32, ptr %j, align 4, !tbaa !8
  %2118 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2290 = mul nsw i32 %2117, %2118
  %add2291 = add nsw i32 %add2289, %mul2290
  %idxprom2292 = sext i32 %add2291 to i64
  %arrayidx2293 = getelementptr inbounds float, ptr %2113, i64 %idxprom2292
  %2119 = load float, ptr %arrayidx2293, align 4, !tbaa !10
  %2120 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2121 = load i32, ptr %k, align 4, !tbaa !8
  %2122 = load i32, ptr %j, align 4, !tbaa !8
  %sub2295 = sub nsw i32 %2121, %2122
  %2123 = load i32, ptr %ka1, align 4, !tbaa !8
  %add2296 = add nsw i32 %sub2295, %2123
  %2124 = load i32, ptr %j, align 4, !tbaa !8
  %2125 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2297 = mul nsw i32 %2124, %2125
  %add2298 = add nsw i32 %add2296, %mul2297
  %idxprom2299 = sext i32 %add2298 to i64
  %arrayidx2300 = getelementptr inbounds float, ptr %2120, i64 %idxprom2299
  %2126 = load float, ptr %arrayidx2300, align 4, !tbaa !10
  %neg2301 = fneg float %2112
  %2127 = call float @llvm.fmuladd.f32(float %neg2301, float %2119, float %2126)
  store float %2127, ptr %arrayidx2300, align 4, !tbaa !10
  br label %for.inc2302

for.inc2302:                                      ; preds = %for.body2281
  %2128 = load i32, ptr %j, align 4, !tbaa !8
  %inc2303 = add nsw i32 %2128, 1
  store i32 %inc2303, ptr %j, align 4, !tbaa !8
  br label %for.cond2278, !llvm.loop !62

for.end2304:                                      ; preds = %for.cond2278
  br label %for.inc2305

for.inc2305:                                      ; preds = %for.end2304
  %2129 = load i32, ptr %k, align 4, !tbaa !8
  %inc2306 = add nsw i32 %2129, 1
  store i32 %inc2306, ptr %k, align 4, !tbaa !8
  br label %for.cond2196, !llvm.loop !63

for.end2307:                                      ; preds = %for.cond2196
  %2130 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %2130, ptr %i__3, align 4, !tbaa !8
  %2131 = load i32, ptr %i1, align 4, !tbaa !8
  store i32 %2131, ptr %j, align 4, !tbaa !8
  br label %for.cond2308

for.cond2308:                                     ; preds = %for.inc2351, %for.end2307
  %2132 = load i32, ptr %j, align 4, !tbaa !8
  %2133 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2309 = icmp sle i32 %2132, %2133
  br i1 %cmp2309, label %for.body2311, label %for.end2353

for.body2311:                                     ; preds = %for.cond2308
  %2134 = load i32, ptr %j, align 4, !tbaa !8
  %2135 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2136 = load i32, ptr %2135, align 4, !tbaa !8
  %add2312 = add nsw i32 %2134, %2136
  store i32 %add2312, ptr %i__1, align 4, !tbaa !8
  %2137 = load i32, ptr %i__, align 4, !tbaa !8
  %2138 = load i32, ptr %kbt, align 4, !tbaa !8
  %add2313 = add nsw i32 %2137, %2138
  store i32 %add2313, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2314) #4
  %2139 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %2139, ptr %_x2314, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2315) #4
  %2140 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %2140, ptr %_y2315, align 4, !tbaa !8
  %2141 = load i32, ptr %_x2314, align 4, !tbaa !8
  %2142 = load i32, ptr %_y2315, align 4, !tbaa !8
  %cmp2317 = icmp slt i32 %2141, %2142
  br i1 %cmp2317, label %cond.true2319, label %cond.false2320

cond.true2319:                                    ; preds = %for.body2311
  %2143 = load i32, ptr %_x2314, align 4, !tbaa !8
  br label %cond.end2321

cond.false2320:                                   ; preds = %for.body2311
  %2144 = load i32, ptr %_y2315, align 4, !tbaa !8
  br label %cond.end2321

cond.end2321:                                     ; preds = %cond.false2320, %cond.true2319
  %cond2322 = phi i32 [ %2143, %cond.true2319 ], [ %2144, %cond.false2320 ]
  store i32 %cond2322, ptr %tmp2316, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2315) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2314) #4
  %2145 = load i32, ptr %tmp2316, align 4, !tbaa !8
  store i32 %2145, ptr %i__4, align 4, !tbaa !8
  %2146 = load i32, ptr %i__, align 4, !tbaa !8
  %add2323 = add nsw i32 %2146, 1
  store i32 %add2323, ptr %k, align 4, !tbaa !8
  br label %for.cond2324

for.cond2324:                                     ; preds = %for.inc2348, %cond.end2321
  %2147 = load i32, ptr %k, align 4, !tbaa !8
  %2148 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp2325 = icmp sle i32 %2147, %2148
  br i1 %cmp2325, label %for.body2327, label %for.end2350

for.body2327:                                     ; preds = %for.cond2324
  %2149 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2150 = load i32, ptr %i__, align 4, !tbaa !8
  %2151 = load i32, ptr %k, align 4, !tbaa !8
  %sub2328 = sub nsw i32 %2150, %2151
  %2152 = load i32, ptr %kb1, align 4, !tbaa !8
  %add2329 = add nsw i32 %sub2328, %2152
  %2153 = load i32, ptr %k, align 4, !tbaa !8
  %2154 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul2330 = mul nsw i32 %2153, %2154
  %add2331 = add nsw i32 %add2329, %mul2330
  %idxprom2332 = sext i32 %add2331 to i64
  %arrayidx2333 = getelementptr inbounds float, ptr %2149, i64 %idxprom2332
  %2155 = load float, ptr %arrayidx2333, align 4, !tbaa !10
  %2156 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2157 = load i32, ptr %j, align 4, !tbaa !8
  %2158 = load i32, ptr %i__, align 4, !tbaa !8
  %sub2334 = sub nsw i32 %2157, %2158
  %2159 = load i32, ptr %ka1, align 4, !tbaa !8
  %add2335 = add nsw i32 %sub2334, %2159
  %2160 = load i32, ptr %i__, align 4, !tbaa !8
  %2161 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2336 = mul nsw i32 %2160, %2161
  %add2337 = add nsw i32 %add2335, %mul2336
  %idxprom2338 = sext i32 %add2337 to i64
  %arrayidx2339 = getelementptr inbounds float, ptr %2156, i64 %idxprom2338
  %2162 = load float, ptr %arrayidx2339, align 4, !tbaa !10
  %2163 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2164 = load i32, ptr %j, align 4, !tbaa !8
  %2165 = load i32, ptr %k, align 4, !tbaa !8
  %sub2341 = sub nsw i32 %2164, %2165
  %2166 = load i32, ptr %ka1, align 4, !tbaa !8
  %add2342 = add nsw i32 %sub2341, %2166
  %2167 = load i32, ptr %k, align 4, !tbaa !8
  %2168 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2343 = mul nsw i32 %2167, %2168
  %add2344 = add nsw i32 %add2342, %mul2343
  %idxprom2345 = sext i32 %add2344 to i64
  %arrayidx2346 = getelementptr inbounds float, ptr %2163, i64 %idxprom2345
  %2169 = load float, ptr %arrayidx2346, align 4, !tbaa !10
  %neg2347 = fneg float %2155
  %2170 = call float @llvm.fmuladd.f32(float %neg2347, float %2162, float %2169)
  store float %2170, ptr %arrayidx2346, align 4, !tbaa !10
  br label %for.inc2348

for.inc2348:                                      ; preds = %for.body2327
  %2171 = load i32, ptr %k, align 4, !tbaa !8
  %inc2349 = add nsw i32 %2171, 1
  store i32 %inc2349, ptr %k, align 4, !tbaa !8
  br label %for.cond2324, !llvm.loop !64

for.end2350:                                      ; preds = %for.cond2324
  br label %for.inc2351

for.inc2351:                                      ; preds = %for.end2350
  %2172 = load i32, ptr %j, align 4, !tbaa !8
  %inc2352 = add nsw i32 %2172, 1
  store i32 %inc2352, ptr %j, align 4, !tbaa !8
  br label %for.cond2308, !llvm.loop !65

for.end2353:                                      ; preds = %for.cond2308
  %2173 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool2354 = icmp ne i32 %2173, 0
  br i1 %tobool2354, label %if.then2355, label %if.end2382

if.then2355:                                      ; preds = %for.end2353
  %2174 = load float, ptr %bii, align 4, !tbaa !10
  %div2356 = fdiv float 1.000000e+00, %2174
  store float %div2356, ptr %r__1, align 4, !tbaa !10
  %2175 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %2176 = load i32, ptr %i__, align 4, !tbaa !8
  %2177 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul2357 = mul nsw i32 %2176, %2177
  %add2358 = add nsw i32 %mul2357, 1
  %idxprom2359 = sext i32 %add2358 to i64
  %arrayidx2360 = getelementptr inbounds float, ptr %2175, i64 %idxprom2359
  %call2361 = call i32 @sscal_(ptr noundef %nx, ptr noundef %r__1, ptr noundef %arrayidx2360, ptr noundef @c__1)
  %2178 = load i32, ptr %kbt, align 4, !tbaa !8
  %cmp2362 = icmp sgt i32 %2178, 0
  br i1 %cmp2362, label %if.then2364, label %if.end2381

if.then2364:                                      ; preds = %if.then2355
  %2179 = load ptr, ptr %ldbb.addr, align 8, !tbaa !4
  %2180 = load i32, ptr %2179, align 4, !tbaa !8
  %sub2365 = sub nsw i32 %2180, 1
  store i32 %sub2365, ptr %i__3, align 4, !tbaa !8
  %2181 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %2182 = load i32, ptr %i__, align 4, !tbaa !8
  %2183 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul2366 = mul nsw i32 %2182, %2183
  %add2367 = add nsw i32 %mul2366, 1
  %idxprom2368 = sext i32 %add2367 to i64
  %arrayidx2369 = getelementptr inbounds float, ptr %2181, i64 %idxprom2368
  %2184 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2185 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2186 = load i32, ptr %2185, align 4, !tbaa !8
  %2187 = load i32, ptr %i__, align 4, !tbaa !8
  %add2370 = add nsw i32 %2187, 1
  %2188 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul2371 = mul nsw i32 %add2370, %2188
  %add2372 = add nsw i32 %2186, %mul2371
  %idxprom2373 = sext i32 %add2372 to i64
  %arrayidx2374 = getelementptr inbounds float, ptr %2184, i64 %idxprom2373
  %2189 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %2190 = load i32, ptr %i__, align 4, !tbaa !8
  %add2375 = add nsw i32 %2190, 1
  %2191 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul2376 = mul nsw i32 %add2375, %2191
  %add2377 = add nsw i32 %mul2376, 1
  %idxprom2378 = sext i32 %add2377 to i64
  %arrayidx2379 = getelementptr inbounds float, ptr %2189, i64 %idxprom2378
  %2192 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %call2380 = call i32 @sger_(ptr noundef %nx, ptr noundef %kbt, ptr noundef @c_b20, ptr noundef %arrayidx2369, ptr noundef @c__1, ptr noundef %arrayidx2374, ptr noundef %i__3, ptr noundef %arrayidx2379, ptr noundef %2192)
  br label %if.end2381

if.end2381:                                       ; preds = %if.then2364, %if.then2355
  br label %if.end2382

if.end2382:                                       ; preds = %if.end2381, %for.end2353
  %2193 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2194 = load i32, ptr %i1, align 4, !tbaa !8
  %2195 = load i32, ptr %i__, align 4, !tbaa !8
  %sub2383 = sub nsw i32 %2194, %2195
  %2196 = load i32, ptr %ka1, align 4, !tbaa !8
  %add2384 = add nsw i32 %sub2383, %2196
  %2197 = load i32, ptr %i__, align 4, !tbaa !8
  %2198 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2385 = mul nsw i32 %2197, %2198
  %add2386 = add nsw i32 %add2384, %mul2385
  %idxprom2387 = sext i32 %add2386 to i64
  %arrayidx2388 = getelementptr inbounds float, ptr %2193, i64 %idxprom2387
  %2199 = load float, ptr %arrayidx2388, align 4, !tbaa !10
  store float %2199, ptr %ra1, align 4, !tbaa !10
  br label %if.end2389

if.end2389:                                       ; preds = %if.end2382, %if.then2149
  %2200 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2201 = load i32, ptr %2200, align 4, !tbaa !8
  %sub2390 = sub nsw i32 %2201, 1
  store i32 %sub2390, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond2391

for.cond2391:                                     ; preds = %for.inc2691, %if.end2389
  %2202 = load i32, ptr %k, align 4, !tbaa !8
  %2203 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2392 = icmp sle i32 %2202, %2203
  br i1 %cmp2392, label %for.body2394, label %for.end2693

for.body2394:                                     ; preds = %for.cond2391
  %2204 = load i32, ptr %update, align 4, !tbaa !8
  %tobool2395 = icmp ne i32 %2204, 0
  br i1 %tobool2395, label %if.then2396, label %if.end2473

if.then2396:                                      ; preds = %for.body2394
  %2205 = load i32, ptr %i__, align 4, !tbaa !8
  %2206 = load i32, ptr %k, align 4, !tbaa !8
  %add2397 = add nsw i32 %2205, %2206
  %2207 = load i32, ptr %ka1, align 4, !tbaa !8
  %sub2398 = sub nsw i32 %add2397, %2207
  %cmp2399 = icmp sgt i32 %sub2398, 0
  br i1 %cmp2399, label %land.lhs.true2401, label %if.end2472

land.lhs.true2401:                                ; preds = %if.then2396
  %2208 = load i32, ptr %i__, align 4, !tbaa !8
  %2209 = load i32, ptr %k, align 4, !tbaa !8
  %add2402 = add nsw i32 %2208, %2209
  %2210 = load i32, ptr %m, align 4, !tbaa !8
  %cmp2403 = icmp slt i32 %add2402, %2210
  br i1 %cmp2403, label %if.then2405, label %if.end2472

if.then2405:                                      ; preds = %land.lhs.true2401
  %2211 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2212 = load i32, ptr %k, align 4, !tbaa !8
  %add2406 = add nsw i32 %2212, 1
  %2213 = load i32, ptr %i__, align 4, !tbaa !8
  %2214 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2407 = mul nsw i32 %2213, %2214
  %add2408 = add nsw i32 %add2406, %mul2407
  %idxprom2409 = sext i32 %add2408 to i64
  %arrayidx2410 = getelementptr inbounds float, ptr %2211, i64 %idxprom2409
  %2215 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2216 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2217 = load i32, ptr %2216, align 4, !tbaa !8
  %2218 = load i32, ptr %i__, align 4, !tbaa !8
  %add2411 = add nsw i32 %2217, %2218
  %2219 = load i32, ptr %k, align 4, !tbaa !8
  %add2412 = add nsw i32 %add2411, %2219
  %2220 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2221 = load i32, ptr %2220, align 4, !tbaa !8
  %sub2413 = sub nsw i32 %add2412, %2221
  %idxprom2414 = sext i32 %sub2413 to i64
  %arrayidx2415 = getelementptr inbounds float, ptr %2215, i64 %idxprom2414
  %2222 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2223 = load i32, ptr %i__, align 4, !tbaa !8
  %2224 = load i32, ptr %k, align 4, !tbaa !8
  %add2416 = add nsw i32 %2223, %2224
  %2225 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2226 = load i32, ptr %2225, align 4, !tbaa !8
  %sub2417 = sub nsw i32 %add2416, %2226
  %idxprom2418 = sext i32 %sub2417 to i64
  %arrayidx2419 = getelementptr inbounds float, ptr %2222, i64 %idxprom2418
  %call2420 = call i32 @slartg_(ptr noundef %arrayidx2410, ptr noundef %ra1, ptr noundef %arrayidx2415, ptr noundef %arrayidx2419, ptr noundef %ra)
  %2227 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2228 = load i32, ptr %kb1, align 4, !tbaa !8
  %2229 = load i32, ptr %k, align 4, !tbaa !8
  %sub2421 = sub nsw i32 %2228, %2229
  %2230 = load i32, ptr %i__, align 4, !tbaa !8
  %2231 = load i32, ptr %k, align 4, !tbaa !8
  %add2422 = add nsw i32 %2230, %2231
  %2232 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul2423 = mul nsw i32 %add2422, %2232
  %add2424 = add nsw i32 %sub2421, %mul2423
  %idxprom2425 = sext i32 %add2424 to i64
  %arrayidx2426 = getelementptr inbounds float, ptr %2227, i64 %idxprom2425
  %2233 = load float, ptr %arrayidx2426, align 4, !tbaa !10
  %fneg2427 = fneg float %2233
  %2234 = load float, ptr %ra1, align 4, !tbaa !10
  %mul2428 = fmul float %fneg2427, %2234
  store float %mul2428, ptr %t, align 4, !tbaa !10
  %2235 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2236 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2237 = load i32, ptr %2236, align 4, !tbaa !8
  %2238 = load i32, ptr %i__, align 4, !tbaa !8
  %add2429 = add nsw i32 %2237, %2238
  %2239 = load i32, ptr %k, align 4, !tbaa !8
  %add2430 = add nsw i32 %add2429, %2239
  %2240 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2241 = load i32, ptr %2240, align 4, !tbaa !8
  %sub2431 = sub nsw i32 %add2430, %2241
  %idxprom2432 = sext i32 %sub2431 to i64
  %arrayidx2433 = getelementptr inbounds float, ptr %2235, i64 %idxprom2432
  %2242 = load float, ptr %arrayidx2433, align 4, !tbaa !10
  %2243 = load float, ptr %t, align 4, !tbaa !10
  %2244 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2245 = load i32, ptr %i__, align 4, !tbaa !8
  %2246 = load i32, ptr %k, align 4, !tbaa !8
  %add2435 = add nsw i32 %2245, %2246
  %2247 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2248 = load i32, ptr %2247, align 4, !tbaa !8
  %sub2436 = sub nsw i32 %add2435, %2248
  %idxprom2437 = sext i32 %sub2436 to i64
  %arrayidx2438 = getelementptr inbounds float, ptr %2244, i64 %idxprom2437
  %2249 = load float, ptr %arrayidx2438, align 4, !tbaa !10
  %2250 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2251 = load i32, ptr %i__, align 4, !tbaa !8
  %2252 = load i32, ptr %k, align 4, !tbaa !8
  %add2439 = add nsw i32 %2251, %2252
  %2253 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2440 = mul nsw i32 %add2439, %2253
  %add2441 = add nsw i32 %mul2440, 1
  %idxprom2442 = sext i32 %add2441 to i64
  %arrayidx2443 = getelementptr inbounds float, ptr %2250, i64 %idxprom2442
  %2254 = load float, ptr %arrayidx2443, align 4, !tbaa !10
  %mul2444 = fmul float %2249, %2254
  %neg2445 = fneg float %mul2444
  %2255 = call float @llvm.fmuladd.f32(float %2242, float %2243, float %neg2445)
  %2256 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2257 = load i32, ptr %m, align 4, !tbaa !8
  %2258 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2259 = load i32, ptr %2258, align 4, !tbaa !8
  %sub2446 = sub nsw i32 %2257, %2259
  %2260 = load i32, ptr %i__, align 4, !tbaa !8
  %add2447 = add nsw i32 %sub2446, %2260
  %2261 = load i32, ptr %k, align 4, !tbaa !8
  %add2448 = add nsw i32 %add2447, %2261
  %idxprom2449 = sext i32 %add2448 to i64
  %arrayidx2450 = getelementptr inbounds float, ptr %2256, i64 %idxprom2449
  store float %2255, ptr %arrayidx2450, align 4, !tbaa !10
  %2262 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2263 = load i32, ptr %i__, align 4, !tbaa !8
  %2264 = load i32, ptr %k, align 4, !tbaa !8
  %add2451 = add nsw i32 %2263, %2264
  %2265 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2266 = load i32, ptr %2265, align 4, !tbaa !8
  %sub2452 = sub nsw i32 %add2451, %2266
  %idxprom2453 = sext i32 %sub2452 to i64
  %arrayidx2454 = getelementptr inbounds float, ptr %2262, i64 %idxprom2453
  %2267 = load float, ptr %arrayidx2454, align 4, !tbaa !10
  %2268 = load float, ptr %t, align 4, !tbaa !10
  %2269 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2270 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2271 = load i32, ptr %2270, align 4, !tbaa !8
  %2272 = load i32, ptr %i__, align 4, !tbaa !8
  %add2456 = add nsw i32 %2271, %2272
  %2273 = load i32, ptr %k, align 4, !tbaa !8
  %add2457 = add nsw i32 %add2456, %2273
  %2274 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2275 = load i32, ptr %2274, align 4, !tbaa !8
  %sub2458 = sub nsw i32 %add2457, %2275
  %idxprom2459 = sext i32 %sub2458 to i64
  %arrayidx2460 = getelementptr inbounds float, ptr %2269, i64 %idxprom2459
  %2276 = load float, ptr %arrayidx2460, align 4, !tbaa !10
  %2277 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2278 = load i32, ptr %i__, align 4, !tbaa !8
  %2279 = load i32, ptr %k, align 4, !tbaa !8
  %add2461 = add nsw i32 %2278, %2279
  %2280 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2462 = mul nsw i32 %add2461, %2280
  %add2463 = add nsw i32 %mul2462, 1
  %idxprom2464 = sext i32 %add2463 to i64
  %arrayidx2465 = getelementptr inbounds float, ptr %2277, i64 %idxprom2464
  %2281 = load float, ptr %arrayidx2465, align 4, !tbaa !10
  %mul2466 = fmul float %2276, %2281
  %2282 = call float @llvm.fmuladd.f32(float %2267, float %2268, float %mul2466)
  %2283 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2284 = load i32, ptr %i__, align 4, !tbaa !8
  %2285 = load i32, ptr %k, align 4, !tbaa !8
  %add2467 = add nsw i32 %2284, %2285
  %2286 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2468 = mul nsw i32 %add2467, %2286
  %add2469 = add nsw i32 %mul2468, 1
  %idxprom2470 = sext i32 %add2469 to i64
  %arrayidx2471 = getelementptr inbounds float, ptr %2283, i64 %idxprom2470
  store float %2282, ptr %arrayidx2471, align 4, !tbaa !10
  %2287 = load float, ptr %ra, align 4, !tbaa !10
  store float %2287, ptr %ra1, align 4, !tbaa !10
  br label %if.end2472

if.end2472:                                       ; preds = %if.then2405, %land.lhs.true2401, %if.then2396
  br label %if.end2473

if.end2473:                                       ; preds = %if.end2472, %for.body2394
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %2288 = load i32, ptr %k, align 4, !tbaa !8
  %2289 = load i32, ptr %i0, align 4, !tbaa !8
  %add2474 = add nsw i32 %2288, %2289
  %2290 = load i32, ptr %m, align 4, !tbaa !8
  %sub2475 = sub nsw i32 %add2474, %2290
  %add2476 = add nsw i32 %sub2475, 1
  store i32 %add2476, ptr %i__1, align 4, !tbaa !8
  %2291 = load i32, ptr %i__, align 4, !tbaa !8
  %2292 = load i32, ptr %k, align 4, !tbaa !8
  %add2477 = add nsw i32 %2291, %2292
  %add2478 = add nsw i32 %add2477, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2479) #4
  %2293 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %2293, ptr %_x2479, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2480) #4
  %2294 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %2294, ptr %_y2480, align 4, !tbaa !8
  %2295 = load i32, ptr %_x2479, align 4, !tbaa !8
  %2296 = load i32, ptr %_y2480, align 4, !tbaa !8
  %cmp2482 = icmp sgt i32 %2295, %2296
  br i1 %cmp2482, label %cond.true2484, label %cond.false2485

cond.true2484:                                    ; preds = %if.end2473
  %2297 = load i32, ptr %_x2479, align 4, !tbaa !8
  br label %cond.end2486

cond.false2485:                                   ; preds = %if.end2473
  %2298 = load i32, ptr %_y2480, align 4, !tbaa !8
  br label %cond.end2486

cond.end2486:                                     ; preds = %cond.false2485, %cond.true2484
  %cond2487 = phi i32 [ %2297, %cond.true2484 ], [ %2298, %cond.false2485 ]
  store i32 %cond2487, ptr %tmp2481, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2480) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2479) #4
  %2299 = load i32, ptr %tmp2481, align 4, !tbaa !8
  %2300 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul2488 = mul nsw i32 %2299, %2300
  %sub2489 = sub nsw i32 %add2478, %mul2488
  store i32 %sub2489, ptr %j2, align 4, !tbaa !8
  %2301 = load i32, ptr %j2, align 4, !tbaa !8
  %2302 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2303 = load i32, ptr %2302, align 4, !tbaa !8
  %add2490 = add nsw i32 %2301, %2303
  %sub2491 = sub nsw i32 %add2490, 1
  %2304 = load i32, ptr %ka1, align 4, !tbaa !8
  %div2492 = sdiv i32 %sub2491, %2304
  store i32 %div2492, ptr %nr, align 4, !tbaa !8
  %2305 = load i32, ptr %j2, align 4, !tbaa !8
  %2306 = load i32, ptr %nr, align 4, !tbaa !8
  %sub2493 = sub nsw i32 %2306, 1
  %2307 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul2494 = mul nsw i32 %sub2493, %2307
  %sub2495 = sub nsw i32 %2305, %mul2494
  store i32 %sub2495, ptr %j1, align 4, !tbaa !8
  %2308 = load i32, ptr %update, align 4, !tbaa !8
  %tobool2496 = icmp ne i32 %2308, 0
  br i1 %tobool2496, label %if.then2497, label %if.else2511

if.then2497:                                      ; preds = %cond.end2486
  %2309 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %2309, ptr %i__4, align 4, !tbaa !8
  %2310 = load i32, ptr %i__, align 4, !tbaa !8
  %2311 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2312 = load i32, ptr %2311, align 4, !tbaa !8
  %shl2498 = shl i32 %2312, 1
  %sub2499 = sub nsw i32 %2310, %shl2498
  %2313 = load i32, ptr %k, align 4, !tbaa !8
  %add2500 = add nsw i32 %sub2499, %2313
  %sub2501 = sub nsw i32 %add2500, 1
  store i32 %sub2501, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2502) #4
  %2314 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %2314, ptr %_x2502, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2503) #4
  %2315 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %2315, ptr %_y2503, align 4, !tbaa !8
  %2316 = load i32, ptr %_x2502, align 4, !tbaa !8
  %2317 = load i32, ptr %_y2503, align 4, !tbaa !8
  %cmp2505 = icmp slt i32 %2316, %2317
  br i1 %cmp2505, label %cond.true2507, label %cond.false2508

cond.true2507:                                    ; preds = %if.then2497
  %2318 = load i32, ptr %_x2502, align 4, !tbaa !8
  br label %cond.end2509

cond.false2508:                                   ; preds = %if.then2497
  %2319 = load i32, ptr %_y2503, align 4, !tbaa !8
  br label %cond.end2509

cond.end2509:                                     ; preds = %cond.false2508, %cond.true2507
  %cond2510 = phi i32 [ %2318, %cond.true2507 ], [ %2319, %cond.false2508 ]
  store i32 %cond2510, ptr %tmp2504, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2503) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2502) #4
  %2320 = load i32, ptr %tmp2504, align 4, !tbaa !8
  store i32 %2320, ptr %j2t, align 4, !tbaa !8
  br label %if.end2512

if.else2511:                                      ; preds = %cond.end2486
  %2321 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %2321, ptr %j2t, align 4, !tbaa !8
  br label %if.end2512

if.end2512:                                       ; preds = %if.else2511, %cond.end2509
  %2322 = load i32, ptr %j2t, align 4, !tbaa !8
  %2323 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2324 = load i32, ptr %2323, align 4, !tbaa !8
  %add2513 = add nsw i32 %2322, %2324
  %sub2514 = sub nsw i32 %add2513, 1
  %2325 = load i32, ptr %ka1, align 4, !tbaa !8
  %div2515 = sdiv i32 %sub2514, %2325
  store i32 %div2515, ptr %nrt, align 4, !tbaa !8
  %2326 = load i32, ptr %j2t, align 4, !tbaa !8
  store i32 %2326, ptr %i__4, align 4, !tbaa !8
  %2327 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %2327, ptr %i__1, align 4, !tbaa !8
  %2328 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %2328, ptr %j, align 4, !tbaa !8
  br label %for.cond2516

for.cond2516:                                     ; preds = %for.inc2554, %if.end2512
  %2329 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp2517 = icmp slt i32 %2329, 0
  br i1 %cmp2517, label %cond.true2519, label %cond.false2522

cond.true2519:                                    ; preds = %for.cond2516
  %2330 = load i32, ptr %j, align 4, !tbaa !8
  %2331 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp2520 = icmp sge i32 %2330, %2331
  %conv2521 = zext i1 %cmp2520 to i32
  br label %cond.end2525

cond.false2522:                                   ; preds = %for.cond2516
  %2332 = load i32, ptr %j, align 4, !tbaa !8
  %2333 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp2523 = icmp sle i32 %2332, %2333
  %conv2524 = zext i1 %cmp2523 to i32
  br label %cond.end2525

cond.end2525:                                     ; preds = %cond.false2522, %cond.true2519
  %cond2526 = phi i32 [ %conv2521, %cond.true2519 ], [ %conv2524, %cond.false2522 ]
  %tobool2527 = icmp ne i32 %cond2526, 0
  br i1 %tobool2527, label %for.body2528, label %for.end2556

for.body2528:                                     ; preds = %cond.end2525
  %2334 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2335 = load i32, ptr %j, align 4, !tbaa !8
  %2336 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2337 = load i32, ptr %2336, align 4, !tbaa !8
  %add2529 = add nsw i32 %2335, %2337
  %sub2530 = sub nsw i32 %add2529, 1
  %2338 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2531 = mul nsw i32 %sub2530, %2338
  %add2532 = add nsw i32 %mul2531, 1
  %idxprom2533 = sext i32 %add2532 to i64
  %arrayidx2534 = getelementptr inbounds float, ptr %2334, i64 %idxprom2533
  %2339 = load float, ptr %arrayidx2534, align 4, !tbaa !10
  %2340 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2341 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom2535 = sext i32 %2341 to i64
  %arrayidx2536 = getelementptr inbounds float, ptr %2340, i64 %idxprom2535
  %2342 = load float, ptr %arrayidx2536, align 4, !tbaa !10
  %mul2537 = fmul float %2342, %2339
  store float %mul2537, ptr %arrayidx2536, align 4, !tbaa !10
  %2343 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2344 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2345 = load i32, ptr %2344, align 4, !tbaa !8
  %2346 = load i32, ptr %j, align 4, !tbaa !8
  %add2538 = add nsw i32 %2345, %2346
  %idxprom2539 = sext i32 %add2538 to i64
  %arrayidx2540 = getelementptr inbounds float, ptr %2343, i64 %idxprom2539
  %2347 = load float, ptr %arrayidx2540, align 4, !tbaa !10
  %2348 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2349 = load i32, ptr %j, align 4, !tbaa !8
  %2350 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2351 = load i32, ptr %2350, align 4, !tbaa !8
  %add2541 = add nsw i32 %2349, %2351
  %sub2542 = sub nsw i32 %add2541, 1
  %2352 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2543 = mul nsw i32 %sub2542, %2352
  %add2544 = add nsw i32 %mul2543, 1
  %idxprom2545 = sext i32 %add2544 to i64
  %arrayidx2546 = getelementptr inbounds float, ptr %2348, i64 %idxprom2545
  %2353 = load float, ptr %arrayidx2546, align 4, !tbaa !10
  %mul2547 = fmul float %2347, %2353
  %2354 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2355 = load i32, ptr %j, align 4, !tbaa !8
  %2356 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2357 = load i32, ptr %2356, align 4, !tbaa !8
  %add2548 = add nsw i32 %2355, %2357
  %sub2549 = sub nsw i32 %add2548, 1
  %2358 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2550 = mul nsw i32 %sub2549, %2358
  %add2551 = add nsw i32 %mul2550, 1
  %idxprom2552 = sext i32 %add2551 to i64
  %arrayidx2553 = getelementptr inbounds float, ptr %2354, i64 %idxprom2552
  store float %mul2547, ptr %arrayidx2553, align 4, !tbaa !10
  br label %for.inc2554

for.inc2554:                                      ; preds = %for.body2528
  %2359 = load i32, ptr %i__1, align 4, !tbaa !8
  %2360 = load i32, ptr %j, align 4, !tbaa !8
  %add2555 = add nsw i32 %2360, %2359
  store i32 %add2555, ptr %j, align 4, !tbaa !8
  br label %for.cond2516, !llvm.loop !66

for.end2556:                                      ; preds = %cond.end2525
  %2361 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp2557 = icmp sgt i32 %2361, 0
  br i1 %cmp2557, label %if.then2559, label %if.end2571

if.then2559:                                      ; preds = %for.end2556
  %2362 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2363 = load i32, ptr %j1, align 4, !tbaa !8
  %2364 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2365 = load i32, ptr %2364, align 4, !tbaa !8
  %add2560 = add nsw i32 %2363, %2365
  %2366 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2561 = mul nsw i32 %add2560, %2366
  %add2562 = add nsw i32 %mul2561, 1
  %idxprom2563 = sext i32 %add2562 to i64
  %arrayidx2564 = getelementptr inbounds float, ptr %2362, i64 %idxprom2563
  %2367 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2368 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom2565 = sext i32 %2368 to i64
  %arrayidx2566 = getelementptr inbounds float, ptr %2367, i64 %idxprom2565
  %2369 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2370 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2371 = load i32, ptr %2370, align 4, !tbaa !8
  %2372 = load i32, ptr %j1, align 4, !tbaa !8
  %add2567 = add nsw i32 %2371, %2372
  %idxprom2568 = sext i32 %add2567 to i64
  %arrayidx2569 = getelementptr inbounds float, ptr %2369, i64 %idxprom2568
  %call2570 = call i32 @slargv_(ptr noundef %nrt, ptr noundef %arrayidx2564, ptr noundef %inca, ptr noundef %arrayidx2566, ptr noundef %ka1, ptr noundef %arrayidx2569, ptr noundef %ka1)
  br label %if.end2571

if.end2571:                                       ; preds = %if.then2559, %for.end2556
  %2373 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp2572 = icmp sgt i32 %2373, 0
  br i1 %cmp2572, label %if.then2574, label %if.end2620

if.then2574:                                      ; preds = %if.end2571
  %2374 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2375 = load i32, ptr %2374, align 4, !tbaa !8
  %sub2575 = sub nsw i32 %2375, 1
  store i32 %sub2575, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond2576

for.cond2576:                                     ; preds = %for.inc2598, %if.then2574
  %2376 = load i32, ptr %l, align 4, !tbaa !8
  %2377 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp2577 = icmp sle i32 %2376, %2377
  br i1 %cmp2577, label %for.body2579, label %for.end2600

for.body2579:                                     ; preds = %for.cond2576
  %2378 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2379 = load i32, ptr %ka1, align 4, !tbaa !8
  %2380 = load i32, ptr %l, align 4, !tbaa !8
  %sub2580 = sub nsw i32 %2379, %2380
  %2381 = load i32, ptr %j1, align 4, !tbaa !8
  %2382 = load i32, ptr %l, align 4, !tbaa !8
  %add2581 = add nsw i32 %2381, %2382
  %2383 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2582 = mul nsw i32 %add2581, %2383
  %add2583 = add nsw i32 %sub2580, %mul2582
  %idxprom2584 = sext i32 %add2583 to i64
  %arrayidx2585 = getelementptr inbounds float, ptr %2378, i64 %idxprom2584
  %2384 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2385 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2386 = load i32, ptr %2385, align 4, !tbaa !8
  %2387 = load i32, ptr %l, align 4, !tbaa !8
  %sub2586 = sub nsw i32 %2386, %2387
  %2388 = load i32, ptr %j1, align 4, !tbaa !8
  %2389 = load i32, ptr %l, align 4, !tbaa !8
  %add2587 = add nsw i32 %2388, %2389
  %2390 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2588 = mul nsw i32 %add2587, %2390
  %add2589 = add nsw i32 %sub2586, %mul2588
  %idxprom2590 = sext i32 %add2589 to i64
  %arrayidx2591 = getelementptr inbounds float, ptr %2384, i64 %idxprom2590
  %2391 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2392 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2393 = load i32, ptr %2392, align 4, !tbaa !8
  %2394 = load i32, ptr %j1, align 4, !tbaa !8
  %add2592 = add nsw i32 %2393, %2394
  %idxprom2593 = sext i32 %add2592 to i64
  %arrayidx2594 = getelementptr inbounds float, ptr %2391, i64 %idxprom2593
  %2395 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2396 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom2595 = sext i32 %2396 to i64
  %arrayidx2596 = getelementptr inbounds float, ptr %2395, i64 %idxprom2595
  %call2597 = call i32 @slartv_(ptr noundef %nr, ptr noundef %arrayidx2585, ptr noundef %inca, ptr noundef %arrayidx2591, ptr noundef %inca, ptr noundef %arrayidx2594, ptr noundef %arrayidx2596, ptr noundef %ka1)
  br label %for.inc2598

for.inc2598:                                      ; preds = %for.body2579
  %2397 = load i32, ptr %l, align 4, !tbaa !8
  %inc2599 = add nsw i32 %2397, 1
  store i32 %inc2599, ptr %l, align 4, !tbaa !8
  br label %for.cond2576, !llvm.loop !67

for.end2600:                                      ; preds = %for.cond2576
  %2398 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2399 = load i32, ptr %ka1, align 4, !tbaa !8
  %2400 = load i32, ptr %j1, align 4, !tbaa !8
  %2401 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2601 = mul nsw i32 %2400, %2401
  %add2602 = add nsw i32 %2399, %mul2601
  %idxprom2603 = sext i32 %add2602 to i64
  %arrayidx2604 = getelementptr inbounds float, ptr %2398, i64 %idxprom2603
  %2402 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2403 = load i32, ptr %ka1, align 4, !tbaa !8
  %2404 = load i32, ptr %j1, align 4, !tbaa !8
  %sub2605 = sub nsw i32 %2404, 1
  %2405 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2606 = mul nsw i32 %sub2605, %2405
  %add2607 = add nsw i32 %2403, %mul2606
  %idxprom2608 = sext i32 %add2607 to i64
  %arrayidx2609 = getelementptr inbounds float, ptr %2402, i64 %idxprom2608
  %2406 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2407 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2408 = load i32, ptr %2407, align 4, !tbaa !8
  %2409 = load i32, ptr %j1, align 4, !tbaa !8
  %2410 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2610 = mul nsw i32 %2409, %2410
  %add2611 = add nsw i32 %2408, %mul2610
  %idxprom2612 = sext i32 %add2611 to i64
  %arrayidx2613 = getelementptr inbounds float, ptr %2406, i64 %idxprom2612
  %2411 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2412 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2413 = load i32, ptr %2412, align 4, !tbaa !8
  %2414 = load i32, ptr %j1, align 4, !tbaa !8
  %add2614 = add nsw i32 %2413, %2414
  %idxprom2615 = sext i32 %add2614 to i64
  %arrayidx2616 = getelementptr inbounds float, ptr %2411, i64 %idxprom2615
  %2415 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2416 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom2617 = sext i32 %2416 to i64
  %arrayidx2618 = getelementptr inbounds float, ptr %2415, i64 %idxprom2617
  %call2619 = call i32 @slar2v_(ptr noundef %nr, ptr noundef %arrayidx2604, ptr noundef %arrayidx2609, ptr noundef %arrayidx2613, ptr noundef %inca, ptr noundef %arrayidx2616, ptr noundef %arrayidx2618, ptr noundef %ka1)
  br label %if.end2620

if.end2620:                                       ; preds = %for.end2600, %if.end2571
  %2417 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2418 = load i32, ptr %2417, align 4, !tbaa !8
  %2419 = load i32, ptr %k, align 4, !tbaa !8
  %sub2621 = sub nsw i32 %2418, %2419
  %add2622 = add nsw i32 %sub2621, 1
  store i32 %add2622, ptr %i__1, align 4, !tbaa !8
  %2420 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2421 = load i32, ptr %2420, align 4, !tbaa !8
  %sub2623 = sub nsw i32 %2421, 1
  store i32 %sub2623, ptr %l, align 4, !tbaa !8
  br label %for.cond2624

for.cond2624:                                     ; preds = %for.inc2654, %if.end2620
  %2422 = load i32, ptr %l, align 4, !tbaa !8
  %2423 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp2625 = icmp sge i32 %2422, %2423
  br i1 %cmp2625, label %for.body2627, label %for.end2656

for.body2627:                                     ; preds = %for.cond2624
  %2424 = load i32, ptr %j2, align 4, !tbaa !8
  %2425 = load i32, ptr %l, align 4, !tbaa !8
  %add2628 = add nsw i32 %2424, %2425
  %sub2629 = sub nsw i32 %add2628, 1
  %2426 = load i32, ptr %ka1, align 4, !tbaa !8
  %div2630 = sdiv i32 %sub2629, %2426
  store i32 %div2630, ptr %nrt, align 4, !tbaa !8
  %2427 = load i32, ptr %j2, align 4, !tbaa !8
  %2428 = load i32, ptr %nrt, align 4, !tbaa !8
  %sub2631 = sub nsw i32 %2428, 1
  %2429 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul2632 = mul nsw i32 %sub2631, %2429
  %sub2633 = sub nsw i32 %2427, %mul2632
  store i32 %sub2633, ptr %j1t, align 4, !tbaa !8
  %2430 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp2634 = icmp sgt i32 %2430, 0
  br i1 %cmp2634, label %if.then2636, label %if.end2653

if.then2636:                                      ; preds = %for.body2627
  %2431 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2432 = load i32, ptr %l, align 4, !tbaa !8
  %2433 = load i32, ptr %j1t, align 4, !tbaa !8
  %2434 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2637 = mul nsw i32 %2433, %2434
  %add2638 = add nsw i32 %2432, %mul2637
  %idxprom2639 = sext i32 %add2638 to i64
  %arrayidx2640 = getelementptr inbounds float, ptr %2431, i64 %idxprom2639
  %2435 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2436 = load i32, ptr %l, align 4, !tbaa !8
  %add2641 = add nsw i32 %2436, 1
  %2437 = load i32, ptr %j1t, align 4, !tbaa !8
  %sub2642 = sub nsw i32 %2437, 1
  %2438 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2643 = mul nsw i32 %sub2642, %2438
  %add2644 = add nsw i32 %add2641, %mul2643
  %idxprom2645 = sext i32 %add2644 to i64
  %arrayidx2646 = getelementptr inbounds float, ptr %2435, i64 %idxprom2645
  %2439 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2440 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2441 = load i32, ptr %2440, align 4, !tbaa !8
  %2442 = load i32, ptr %j1t, align 4, !tbaa !8
  %add2647 = add nsw i32 %2441, %2442
  %idxprom2648 = sext i32 %add2647 to i64
  %arrayidx2649 = getelementptr inbounds float, ptr %2439, i64 %idxprom2648
  %2443 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2444 = load i32, ptr %j1t, align 4, !tbaa !8
  %idxprom2650 = sext i32 %2444 to i64
  %arrayidx2651 = getelementptr inbounds float, ptr %2443, i64 %idxprom2650
  %call2652 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx2640, ptr noundef %inca, ptr noundef %arrayidx2646, ptr noundef %inca, ptr noundef %arrayidx2649, ptr noundef %arrayidx2651, ptr noundef %ka1)
  br label %if.end2653

if.end2653:                                       ; preds = %if.then2636, %for.body2627
  br label %for.inc2654

for.inc2654:                                      ; preds = %if.end2653
  %2445 = load i32, ptr %l, align 4, !tbaa !8
  %dec2655 = add nsw i32 %2445, -1
  store i32 %dec2655, ptr %l, align 4, !tbaa !8
  br label %for.cond2624, !llvm.loop !68

for.end2656:                                      ; preds = %for.cond2624
  %2446 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool2657 = icmp ne i32 %2446, 0
  br i1 %tobool2657, label %if.then2658, label %if.end2690

if.then2658:                                      ; preds = %for.end2656
  %2447 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %2447, ptr %i__1, align 4, !tbaa !8
  %2448 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %2448, ptr %i__4, align 4, !tbaa !8
  %2449 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %2449, ptr %j, align 4, !tbaa !8
  br label %for.cond2659

for.cond2659:                                     ; preds = %for.inc2687, %if.then2658
  %2450 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp2660 = icmp slt i32 %2450, 0
  br i1 %cmp2660, label %cond.true2662, label %cond.false2665

cond.true2662:                                    ; preds = %for.cond2659
  %2451 = load i32, ptr %j, align 4, !tbaa !8
  %2452 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp2663 = icmp sge i32 %2451, %2452
  %conv2664 = zext i1 %cmp2663 to i32
  br label %cond.end2668

cond.false2665:                                   ; preds = %for.cond2659
  %2453 = load i32, ptr %j, align 4, !tbaa !8
  %2454 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp2666 = icmp sle i32 %2453, %2454
  %conv2667 = zext i1 %cmp2666 to i32
  br label %cond.end2668

cond.end2668:                                     ; preds = %cond.false2665, %cond.true2662
  %cond2669 = phi i32 [ %conv2664, %cond.true2662 ], [ %conv2667, %cond.false2665 ]
  %tobool2670 = icmp ne i32 %cond2669, 0
  br i1 %tobool2670, label %for.body2671, label %for.end2689

for.body2671:                                     ; preds = %cond.end2668
  %2455 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %2456 = load i32, ptr %j, align 4, !tbaa !8
  %2457 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul2672 = mul nsw i32 %2456, %2457
  %add2673 = add nsw i32 %mul2672, 1
  %idxprom2674 = sext i32 %add2673 to i64
  %arrayidx2675 = getelementptr inbounds float, ptr %2455, i64 %idxprom2674
  %2458 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %2459 = load i32, ptr %j, align 4, !tbaa !8
  %sub2676 = sub nsw i32 %2459, 1
  %2460 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul2677 = mul nsw i32 %sub2676, %2460
  %add2678 = add nsw i32 %mul2677, 1
  %idxprom2679 = sext i32 %add2678 to i64
  %arrayidx2680 = getelementptr inbounds float, ptr %2458, i64 %idxprom2679
  %2461 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2462 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2463 = load i32, ptr %2462, align 4, !tbaa !8
  %2464 = load i32, ptr %j, align 4, !tbaa !8
  %add2681 = add nsw i32 %2463, %2464
  %idxprom2682 = sext i32 %add2681 to i64
  %arrayidx2683 = getelementptr inbounds float, ptr %2461, i64 %idxprom2682
  %2465 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2466 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom2684 = sext i32 %2466 to i64
  %arrayidx2685 = getelementptr inbounds float, ptr %2465, i64 %idxprom2684
  %call2686 = call i32 @srot_(ptr noundef %nx, ptr noundef %arrayidx2675, ptr noundef @c__1, ptr noundef %arrayidx2680, ptr noundef @c__1, ptr noundef %arrayidx2683, ptr noundef %arrayidx2685)
  br label %for.inc2687

for.inc2687:                                      ; preds = %for.body2671
  %2467 = load i32, ptr %i__4, align 4, !tbaa !8
  %2468 = load i32, ptr %j, align 4, !tbaa !8
  %add2688 = add nsw i32 %2468, %2467
  store i32 %add2688, ptr %j, align 4, !tbaa !8
  br label %for.cond2659, !llvm.loop !69

for.end2689:                                      ; preds = %cond.end2668
  br label %if.end2690

if.end2690:                                       ; preds = %for.end2689, %for.end2656
  br label %for.inc2691

for.inc2691:                                      ; preds = %if.end2690
  %2469 = load i32, ptr %k, align 4, !tbaa !8
  %inc2692 = add nsw i32 %2469, 1
  store i32 %inc2692, ptr %k, align 4, !tbaa !8
  br label %for.cond2391, !llvm.loop !70

for.end2693:                                      ; preds = %for.cond2391
  %2470 = load i32, ptr %update, align 4, !tbaa !8
  %tobool2694 = icmp ne i32 %2470, 0
  br i1 %tobool2694, label %if.then2695, label %if.end2716

if.then2695:                                      ; preds = %for.end2693
  %2471 = load i32, ptr %i2, align 4, !tbaa !8
  %cmp2696 = icmp sgt i32 %2471, 0
  br i1 %cmp2696, label %land.lhs.true2698, label %if.end2715

land.lhs.true2698:                                ; preds = %if.then2695
  %2472 = load i32, ptr %kbt, align 4, !tbaa !8
  %cmp2699 = icmp sgt i32 %2472, 0
  br i1 %cmp2699, label %if.then2701, label %if.end2715

if.then2701:                                      ; preds = %land.lhs.true2698
  %2473 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2474 = load i32, ptr %kb1, align 4, !tbaa !8
  %2475 = load i32, ptr %kbt, align 4, !tbaa !8
  %sub2702 = sub nsw i32 %2474, %2475
  %2476 = load i32, ptr %i__, align 4, !tbaa !8
  %2477 = load i32, ptr %kbt, align 4, !tbaa !8
  %add2703 = add nsw i32 %2476, %2477
  %2478 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul2704 = mul nsw i32 %add2703, %2478
  %add2705 = add nsw i32 %sub2702, %mul2704
  %idxprom2706 = sext i32 %add2705 to i64
  %arrayidx2707 = getelementptr inbounds float, ptr %2473, i64 %idxprom2706
  %2479 = load float, ptr %arrayidx2707, align 4, !tbaa !10
  %fneg2708 = fneg float %2479
  %2480 = load float, ptr %ra1, align 4, !tbaa !10
  %mul2709 = fmul float %fneg2708, %2480
  %2481 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2482 = load i32, ptr %m, align 4, !tbaa !8
  %2483 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2484 = load i32, ptr %2483, align 4, !tbaa !8
  %sub2710 = sub nsw i32 %2482, %2484
  %2485 = load i32, ptr %i__, align 4, !tbaa !8
  %add2711 = add nsw i32 %sub2710, %2485
  %2486 = load i32, ptr %kbt, align 4, !tbaa !8
  %add2712 = add nsw i32 %add2711, %2486
  %idxprom2713 = sext i32 %add2712 to i64
  %arrayidx2714 = getelementptr inbounds float, ptr %2481, i64 %idxprom2713
  store float %mul2709, ptr %arrayidx2714, align 4, !tbaa !10
  br label %if.end2715

if.end2715:                                       ; preds = %if.then2701, %land.lhs.true2698, %if.then2695
  br label %if.end2716

if.end2716:                                       ; preds = %if.end2715, %for.end2693
  %2487 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2488 = load i32, ptr %2487, align 4, !tbaa !8
  store i32 %2488, ptr %k, align 4, !tbaa !8
  br label %for.cond2717

for.cond2717:                                     ; preds = %for.inc2907, %if.end2716
  %2489 = load i32, ptr %k, align 4, !tbaa !8
  %cmp2718 = icmp sge i32 %2489, 1
  br i1 %cmp2718, label %for.body2720, label %for.end2909

for.body2720:                                     ; preds = %for.cond2717
  %2490 = load i32, ptr %update, align 4, !tbaa !8
  %tobool2721 = icmp ne i32 %2490, 0
  br i1 %tobool2721, label %if.then2722, label %if.else2738

if.then2722:                                      ; preds = %for.body2720
  store i32 2, ptr %i__3, align 4, !tbaa !8
  %2491 = load i32, ptr %k, align 4, !tbaa !8
  %2492 = load i32, ptr %i0, align 4, !tbaa !8
  %add2723 = add nsw i32 %2491, %2492
  %2493 = load i32, ptr %m, align 4, !tbaa !8
  %sub2724 = sub nsw i32 %add2723, %2493
  store i32 %sub2724, ptr %i__4, align 4, !tbaa !8
  %2494 = load i32, ptr %i__, align 4, !tbaa !8
  %2495 = load i32, ptr %k, align 4, !tbaa !8
  %add2725 = add nsw i32 %2494, %2495
  %add2726 = add nsw i32 %add2725, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2727) #4
  %2496 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %2496, ptr %_x2727, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2728) #4
  %2497 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %2497, ptr %_y2728, align 4, !tbaa !8
  %2498 = load i32, ptr %_x2727, align 4, !tbaa !8
  %2499 = load i32, ptr %_y2728, align 4, !tbaa !8
  %cmp2730 = icmp sgt i32 %2498, %2499
  br i1 %cmp2730, label %cond.true2732, label %cond.false2733

cond.true2732:                                    ; preds = %if.then2722
  %2500 = load i32, ptr %_x2727, align 4, !tbaa !8
  br label %cond.end2734

cond.false2733:                                   ; preds = %if.then2722
  %2501 = load i32, ptr %_y2728, align 4, !tbaa !8
  br label %cond.end2734

cond.end2734:                                     ; preds = %cond.false2733, %cond.true2732
  %cond2735 = phi i32 [ %2500, %cond.true2732 ], [ %2501, %cond.false2733 ]
  store i32 %cond2735, ptr %tmp2729, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2728) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2727) #4
  %2502 = load i32, ptr %tmp2729, align 4, !tbaa !8
  %2503 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul2736 = mul nsw i32 %2502, %2503
  %sub2737 = sub nsw i32 %add2726, %mul2736
  store i32 %sub2737, ptr %j2, align 4, !tbaa !8
  br label %if.end2754

if.else2738:                                      ; preds = %for.body2720
  store i32 1, ptr %i__3, align 4, !tbaa !8
  %2504 = load i32, ptr %k, align 4, !tbaa !8
  %2505 = load i32, ptr %i0, align 4, !tbaa !8
  %add2739 = add nsw i32 %2504, %2505
  %2506 = load i32, ptr %m, align 4, !tbaa !8
  %sub2740 = sub nsw i32 %add2739, %2506
  store i32 %sub2740, ptr %i__4, align 4, !tbaa !8
  %2507 = load i32, ptr %i__, align 4, !tbaa !8
  %2508 = load i32, ptr %k, align 4, !tbaa !8
  %add2741 = add nsw i32 %2507, %2508
  %add2742 = add nsw i32 %add2741, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2743) #4
  %2509 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %2509, ptr %_x2743, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2744) #4
  %2510 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %2510, ptr %_y2744, align 4, !tbaa !8
  %2511 = load i32, ptr %_x2743, align 4, !tbaa !8
  %2512 = load i32, ptr %_y2744, align 4, !tbaa !8
  %cmp2746 = icmp sgt i32 %2511, %2512
  br i1 %cmp2746, label %cond.true2748, label %cond.false2749

cond.true2748:                                    ; preds = %if.else2738
  %2513 = load i32, ptr %_x2743, align 4, !tbaa !8
  br label %cond.end2750

cond.false2749:                                   ; preds = %if.else2738
  %2514 = load i32, ptr %_y2744, align 4, !tbaa !8
  br label %cond.end2750

cond.end2750:                                     ; preds = %cond.false2749, %cond.true2748
  %cond2751 = phi i32 [ %2513, %cond.true2748 ], [ %2514, %cond.false2749 ]
  store i32 %cond2751, ptr %tmp2745, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2744) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2743) #4
  %2515 = load i32, ptr %tmp2745, align 4, !tbaa !8
  %2516 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul2752 = mul nsw i32 %2515, %2516
  %sub2753 = sub nsw i32 %add2742, %mul2752
  store i32 %sub2753, ptr %j2, align 4, !tbaa !8
  br label %if.end2754

if.end2754:                                       ; preds = %cond.end2750, %cond.end2734
  %2517 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2518 = load i32, ptr %2517, align 4, !tbaa !8
  %2519 = load i32, ptr %k, align 4, !tbaa !8
  %sub2755 = sub nsw i32 %2518, %2519
  store i32 %sub2755, ptr %l, align 4, !tbaa !8
  br label %for.cond2756

for.cond2756:                                     ; preds = %for.inc2795, %if.end2754
  %2520 = load i32, ptr %l, align 4, !tbaa !8
  %cmp2757 = icmp sge i32 %2520, 1
  br i1 %cmp2757, label %for.body2759, label %for.end2797

for.body2759:                                     ; preds = %for.cond2756
  %2521 = load i32, ptr %j2, align 4, !tbaa !8
  %2522 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2523 = load i32, ptr %2522, align 4, !tbaa !8
  %add2760 = add nsw i32 %2521, %2523
  %2524 = load i32, ptr %l, align 4, !tbaa !8
  %add2761 = add nsw i32 %add2760, %2524
  %sub2762 = sub nsw i32 %add2761, 1
  %2525 = load i32, ptr %ka1, align 4, !tbaa !8
  %div2763 = sdiv i32 %sub2762, %2525
  store i32 %div2763, ptr %nrt, align 4, !tbaa !8
  %2526 = load i32, ptr %j2, align 4, !tbaa !8
  %2527 = load i32, ptr %nrt, align 4, !tbaa !8
  %sub2764 = sub nsw i32 %2527, 1
  %2528 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul2765 = mul nsw i32 %sub2764, %2528
  %sub2766 = sub nsw i32 %2526, %mul2765
  store i32 %sub2766, ptr %j1t, align 4, !tbaa !8
  %2529 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp2767 = icmp sgt i32 %2529, 0
  br i1 %cmp2767, label %if.then2769, label %if.end2794

if.then2769:                                      ; preds = %for.body2759
  %2530 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2531 = load i32, ptr %l, align 4, !tbaa !8
  %2532 = load i32, ptr %j1t, align 4, !tbaa !8
  %2533 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2534 = load i32, ptr %2533, align 4, !tbaa !8
  %add2770 = add nsw i32 %2532, %2534
  %2535 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2771 = mul nsw i32 %add2770, %2535
  %add2772 = add nsw i32 %2531, %mul2771
  %idxprom2773 = sext i32 %add2772 to i64
  %arrayidx2774 = getelementptr inbounds float, ptr %2530, i64 %idxprom2773
  %2536 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2537 = load i32, ptr %l, align 4, !tbaa !8
  %add2775 = add nsw i32 %2537, 1
  %2538 = load i32, ptr %j1t, align 4, !tbaa !8
  %2539 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2540 = load i32, ptr %2539, align 4, !tbaa !8
  %add2776 = add nsw i32 %2538, %2540
  %sub2777 = sub nsw i32 %add2776, 1
  %2541 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2778 = mul nsw i32 %sub2777, %2541
  %add2779 = add nsw i32 %add2775, %mul2778
  %idxprom2780 = sext i32 %add2779 to i64
  %arrayidx2781 = getelementptr inbounds float, ptr %2536, i64 %idxprom2780
  %2542 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2543 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2544 = load i32, ptr %2543, align 4, !tbaa !8
  %2545 = load i32, ptr %m, align 4, !tbaa !8
  %add2782 = add nsw i32 %2544, %2545
  %2546 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2547 = load i32, ptr %2546, align 4, !tbaa !8
  %sub2783 = sub nsw i32 %add2782, %2547
  %2548 = load i32, ptr %j1t, align 4, !tbaa !8
  %add2784 = add nsw i32 %sub2783, %2548
  %2549 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2550 = load i32, ptr %2549, align 4, !tbaa !8
  %add2785 = add nsw i32 %add2784, %2550
  %idxprom2786 = sext i32 %add2785 to i64
  %arrayidx2787 = getelementptr inbounds float, ptr %2542, i64 %idxprom2786
  %2551 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2552 = load i32, ptr %m, align 4, !tbaa !8
  %2553 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2554 = load i32, ptr %2553, align 4, !tbaa !8
  %sub2788 = sub nsw i32 %2552, %2554
  %2555 = load i32, ptr %j1t, align 4, !tbaa !8
  %add2789 = add nsw i32 %sub2788, %2555
  %2556 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2557 = load i32, ptr %2556, align 4, !tbaa !8
  %add2790 = add nsw i32 %add2789, %2557
  %idxprom2791 = sext i32 %add2790 to i64
  %arrayidx2792 = getelementptr inbounds float, ptr %2551, i64 %idxprom2791
  %call2793 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx2774, ptr noundef %inca, ptr noundef %arrayidx2781, ptr noundef %inca, ptr noundef %arrayidx2787, ptr noundef %arrayidx2792, ptr noundef %ka1)
  br label %if.end2794

if.end2794:                                       ; preds = %if.then2769, %for.body2759
  br label %for.inc2795

for.inc2795:                                      ; preds = %if.end2794
  %2558 = load i32, ptr %l, align 4, !tbaa !8
  %dec2796 = add nsw i32 %2558, -1
  store i32 %dec2796, ptr %l, align 4, !tbaa !8
  br label %for.cond2756, !llvm.loop !71

for.end2797:                                      ; preds = %for.cond2756
  %2559 = load i32, ptr %j2, align 4, !tbaa !8
  %2560 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2561 = load i32, ptr %2560, align 4, !tbaa !8
  %add2798 = add nsw i32 %2559, %2561
  %sub2799 = sub nsw i32 %add2798, 1
  %2562 = load i32, ptr %ka1, align 4, !tbaa !8
  %div2800 = sdiv i32 %sub2799, %2562
  store i32 %div2800, ptr %nr, align 4, !tbaa !8
  %2563 = load i32, ptr %j2, align 4, !tbaa !8
  %2564 = load i32, ptr %nr, align 4, !tbaa !8
  %sub2801 = sub nsw i32 %2564, 1
  %2565 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul2802 = mul nsw i32 %sub2801, %2565
  %sub2803 = sub nsw i32 %2563, %mul2802
  store i32 %sub2803, ptr %j1, align 4, !tbaa !8
  %2566 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %2566, ptr %i__3, align 4, !tbaa !8
  %2567 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %2567, ptr %i__4, align 4, !tbaa !8
  %2568 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %2568, ptr %j, align 4, !tbaa !8
  br label %for.cond2804

for.cond2804:                                     ; preds = %for.inc2837, %for.end2797
  %2569 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp2805 = icmp slt i32 %2569, 0
  br i1 %cmp2805, label %cond.true2807, label %cond.false2810

cond.true2807:                                    ; preds = %for.cond2804
  %2570 = load i32, ptr %j, align 4, !tbaa !8
  %2571 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2808 = icmp sge i32 %2570, %2571
  %conv2809 = zext i1 %cmp2808 to i32
  br label %cond.end2813

cond.false2810:                                   ; preds = %for.cond2804
  %2572 = load i32, ptr %j, align 4, !tbaa !8
  %2573 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2811 = icmp sle i32 %2572, %2573
  %conv2812 = zext i1 %cmp2811 to i32
  br label %cond.end2813

cond.end2813:                                     ; preds = %cond.false2810, %cond.true2807
  %cond2814 = phi i32 [ %conv2809, %cond.true2807 ], [ %conv2812, %cond.false2810 ]
  %tobool2815 = icmp ne i32 %cond2814, 0
  br i1 %tobool2815, label %for.body2816, label %for.end2839

for.body2816:                                     ; preds = %cond.end2813
  %2574 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2575 = load i32, ptr %m, align 4, !tbaa !8
  %2576 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2577 = load i32, ptr %2576, align 4, !tbaa !8
  %sub2817 = sub nsw i32 %2575, %2577
  %2578 = load i32, ptr %j, align 4, !tbaa !8
  %add2818 = add nsw i32 %sub2817, %2578
  %2579 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2580 = load i32, ptr %2579, align 4, !tbaa !8
  %add2819 = add nsw i32 %add2818, %2580
  %idxprom2820 = sext i32 %add2819 to i64
  %arrayidx2821 = getelementptr inbounds float, ptr %2574, i64 %idxprom2820
  %2581 = load float, ptr %arrayidx2821, align 4, !tbaa !10
  %2582 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2583 = load i32, ptr %m, align 4, !tbaa !8
  %2584 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2585 = load i32, ptr %2584, align 4, !tbaa !8
  %sub2822 = sub nsw i32 %2583, %2585
  %2586 = load i32, ptr %j, align 4, !tbaa !8
  %add2823 = add nsw i32 %sub2822, %2586
  %idxprom2824 = sext i32 %add2823 to i64
  %arrayidx2825 = getelementptr inbounds float, ptr %2582, i64 %idxprom2824
  store float %2581, ptr %arrayidx2825, align 4, !tbaa !10
  %2587 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2588 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2589 = load i32, ptr %2588, align 4, !tbaa !8
  %2590 = load i32, ptr %m, align 4, !tbaa !8
  %add2826 = add nsw i32 %2589, %2590
  %2591 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2592 = load i32, ptr %2591, align 4, !tbaa !8
  %sub2827 = sub nsw i32 %add2826, %2592
  %2593 = load i32, ptr %j, align 4, !tbaa !8
  %add2828 = add nsw i32 %sub2827, %2593
  %2594 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2595 = load i32, ptr %2594, align 4, !tbaa !8
  %add2829 = add nsw i32 %add2828, %2595
  %idxprom2830 = sext i32 %add2829 to i64
  %arrayidx2831 = getelementptr inbounds float, ptr %2587, i64 %idxprom2830
  %2596 = load float, ptr %arrayidx2831, align 4, !tbaa !10
  %2597 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2598 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2599 = load i32, ptr %2598, align 4, !tbaa !8
  %2600 = load i32, ptr %m, align 4, !tbaa !8
  %add2832 = add nsw i32 %2599, %2600
  %2601 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2602 = load i32, ptr %2601, align 4, !tbaa !8
  %sub2833 = sub nsw i32 %add2832, %2602
  %2603 = load i32, ptr %j, align 4, !tbaa !8
  %add2834 = add nsw i32 %sub2833, %2603
  %idxprom2835 = sext i32 %add2834 to i64
  %arrayidx2836 = getelementptr inbounds float, ptr %2597, i64 %idxprom2835
  store float %2596, ptr %arrayidx2836, align 4, !tbaa !10
  br label %for.inc2837

for.inc2837:                                      ; preds = %for.body2816
  %2604 = load i32, ptr %i__4, align 4, !tbaa !8
  %2605 = load i32, ptr %j, align 4, !tbaa !8
  %add2838 = add nsw i32 %2605, %2604
  store i32 %add2838, ptr %j, align 4, !tbaa !8
  br label %for.cond2804, !llvm.loop !72

for.end2839:                                      ; preds = %cond.end2813
  %2606 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %2606, ptr %i__4, align 4, !tbaa !8
  %2607 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %2607, ptr %i__3, align 4, !tbaa !8
  %2608 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %2608, ptr %j, align 4, !tbaa !8
  br label %for.cond2840

for.cond2840:                                     ; preds = %for.inc2882, %for.end2839
  %2609 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2841 = icmp slt i32 %2609, 0
  br i1 %cmp2841, label %cond.true2843, label %cond.false2846

cond.true2843:                                    ; preds = %for.cond2840
  %2610 = load i32, ptr %j, align 4, !tbaa !8
  %2611 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp2844 = icmp sge i32 %2610, %2611
  %conv2845 = zext i1 %cmp2844 to i32
  br label %cond.end2849

cond.false2846:                                   ; preds = %for.cond2840
  %2612 = load i32, ptr %j, align 4, !tbaa !8
  %2613 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp2847 = icmp sle i32 %2612, %2613
  %conv2848 = zext i1 %cmp2847 to i32
  br label %cond.end2849

cond.end2849:                                     ; preds = %cond.false2846, %cond.true2843
  %cond2850 = phi i32 [ %conv2845, %cond.true2843 ], [ %conv2848, %cond.false2846 ]
  %tobool2851 = icmp ne i32 %cond2850, 0
  br i1 %tobool2851, label %for.body2852, label %for.end2884

for.body2852:                                     ; preds = %cond.end2849
  %2614 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2615 = load i32, ptr %j, align 4, !tbaa !8
  %2616 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2617 = load i32, ptr %2616, align 4, !tbaa !8
  %add2853 = add nsw i32 %2615, %2617
  %sub2854 = sub nsw i32 %add2853, 1
  %2618 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2855 = mul nsw i32 %sub2854, %2618
  %add2856 = add nsw i32 %mul2855, 1
  %idxprom2857 = sext i32 %add2856 to i64
  %arrayidx2858 = getelementptr inbounds float, ptr %2614, i64 %idxprom2857
  %2619 = load float, ptr %arrayidx2858, align 4, !tbaa !10
  %2620 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2621 = load i32, ptr %m, align 4, !tbaa !8
  %2622 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2623 = load i32, ptr %2622, align 4, !tbaa !8
  %sub2859 = sub nsw i32 %2621, %2623
  %2624 = load i32, ptr %j, align 4, !tbaa !8
  %add2860 = add nsw i32 %sub2859, %2624
  %idxprom2861 = sext i32 %add2860 to i64
  %arrayidx2862 = getelementptr inbounds float, ptr %2620, i64 %idxprom2861
  %2625 = load float, ptr %arrayidx2862, align 4, !tbaa !10
  %mul2863 = fmul float %2625, %2619
  store float %mul2863, ptr %arrayidx2862, align 4, !tbaa !10
  %2626 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2627 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2628 = load i32, ptr %2627, align 4, !tbaa !8
  %2629 = load i32, ptr %m, align 4, !tbaa !8
  %add2864 = add nsw i32 %2628, %2629
  %2630 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2631 = load i32, ptr %2630, align 4, !tbaa !8
  %sub2865 = sub nsw i32 %add2864, %2631
  %2632 = load i32, ptr %j, align 4, !tbaa !8
  %add2866 = add nsw i32 %sub2865, %2632
  %idxprom2867 = sext i32 %add2866 to i64
  %arrayidx2868 = getelementptr inbounds float, ptr %2626, i64 %idxprom2867
  %2633 = load float, ptr %arrayidx2868, align 4, !tbaa !10
  %2634 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2635 = load i32, ptr %j, align 4, !tbaa !8
  %2636 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2637 = load i32, ptr %2636, align 4, !tbaa !8
  %add2869 = add nsw i32 %2635, %2637
  %sub2870 = sub nsw i32 %add2869, 1
  %2638 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2871 = mul nsw i32 %sub2870, %2638
  %add2872 = add nsw i32 %mul2871, 1
  %idxprom2873 = sext i32 %add2872 to i64
  %arrayidx2874 = getelementptr inbounds float, ptr %2634, i64 %idxprom2873
  %2639 = load float, ptr %arrayidx2874, align 4, !tbaa !10
  %mul2875 = fmul float %2633, %2639
  %2640 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2641 = load i32, ptr %j, align 4, !tbaa !8
  %2642 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2643 = load i32, ptr %2642, align 4, !tbaa !8
  %add2876 = add nsw i32 %2641, %2643
  %sub2877 = sub nsw i32 %add2876, 1
  %2644 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2878 = mul nsw i32 %sub2877, %2644
  %add2879 = add nsw i32 %mul2878, 1
  %idxprom2880 = sext i32 %add2879 to i64
  %arrayidx2881 = getelementptr inbounds float, ptr %2640, i64 %idxprom2880
  store float %mul2875, ptr %arrayidx2881, align 4, !tbaa !10
  br label %for.inc2882

for.inc2882:                                      ; preds = %for.body2852
  %2645 = load i32, ptr %i__3, align 4, !tbaa !8
  %2646 = load i32, ptr %j, align 4, !tbaa !8
  %add2883 = add nsw i32 %2646, %2645
  store i32 %add2883, ptr %j, align 4, !tbaa !8
  br label %for.cond2840, !llvm.loop !73

for.end2884:                                      ; preds = %cond.end2849
  %2647 = load i32, ptr %update, align 4, !tbaa !8
  %tobool2885 = icmp ne i32 %2647, 0
  br i1 %tobool2885, label %if.then2886, label %if.end2906

if.then2886:                                      ; preds = %for.end2884
  %2648 = load i32, ptr %i__, align 4, !tbaa !8
  %2649 = load i32, ptr %k, align 4, !tbaa !8
  %add2887 = add nsw i32 %2648, %2649
  %2650 = load i32, ptr %ka1, align 4, !tbaa !8
  %cmp2888 = icmp sgt i32 %add2887, %2650
  br i1 %cmp2888, label %land.lhs.true2890, label %if.end2905

land.lhs.true2890:                                ; preds = %if.then2886
  %2651 = load i32, ptr %k, align 4, !tbaa !8
  %2652 = load i32, ptr %kbt, align 4, !tbaa !8
  %cmp2891 = icmp sle i32 %2651, %2652
  br i1 %cmp2891, label %if.then2893, label %if.end2905

if.then2893:                                      ; preds = %land.lhs.true2890
  %2653 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2654 = load i32, ptr %m, align 4, !tbaa !8
  %2655 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2656 = load i32, ptr %2655, align 4, !tbaa !8
  %sub2894 = sub nsw i32 %2654, %2656
  %2657 = load i32, ptr %i__, align 4, !tbaa !8
  %add2895 = add nsw i32 %sub2894, %2657
  %2658 = load i32, ptr %k, align 4, !tbaa !8
  %add2896 = add nsw i32 %add2895, %2658
  %idxprom2897 = sext i32 %add2896 to i64
  %arrayidx2898 = getelementptr inbounds float, ptr %2653, i64 %idxprom2897
  %2659 = load float, ptr %arrayidx2898, align 4, !tbaa !10
  %2660 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2661 = load i32, ptr %m, align 4, !tbaa !8
  %2662 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2663 = load i32, ptr %2662, align 4, !tbaa !8
  %sub2899 = sub nsw i32 %2661, %2663
  %2664 = load i32, ptr %i__, align 4, !tbaa !8
  %add2900 = add nsw i32 %sub2899, %2664
  %2665 = load i32, ptr %k, align 4, !tbaa !8
  %add2901 = add nsw i32 %add2900, %2665
  %2666 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2667 = load i32, ptr %2666, align 4, !tbaa !8
  %sub2902 = sub nsw i32 %add2901, %2667
  %idxprom2903 = sext i32 %sub2902 to i64
  %arrayidx2904 = getelementptr inbounds float, ptr %2660, i64 %idxprom2903
  store float %2659, ptr %arrayidx2904, align 4, !tbaa !10
  br label %if.end2905

if.end2905:                                       ; preds = %if.then2893, %land.lhs.true2890, %if.then2886
  br label %if.end2906

if.end2906:                                       ; preds = %if.end2905, %for.end2884
  br label %for.inc2907

for.inc2907:                                      ; preds = %if.end2906
  %2668 = load i32, ptr %k, align 4, !tbaa !8
  %dec2908 = add nsw i32 %2668, -1
  store i32 %dec2908, ptr %k, align 4, !tbaa !8
  br label %for.cond2717, !llvm.loop !74

for.end2909:                                      ; preds = %for.cond2717
  %2669 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2670 = load i32, ptr %2669, align 4, !tbaa !8
  store i32 %2670, ptr %k, align 4, !tbaa !8
  br label %for.cond2910

for.cond2910:                                     ; preds = %for.inc3085, %for.end2909
  %2671 = load i32, ptr %k, align 4, !tbaa !8
  %cmp2911 = icmp sge i32 %2671, 1
  br i1 %cmp2911, label %for.body2913, label %for.end3087

for.body2913:                                     ; preds = %for.cond2910
  store i32 1, ptr %i__3, align 4, !tbaa !8
  %2672 = load i32, ptr %k, align 4, !tbaa !8
  %2673 = load i32, ptr %i0, align 4, !tbaa !8
  %add2914 = add nsw i32 %2672, %2673
  %2674 = load i32, ptr %m, align 4, !tbaa !8
  %sub2915 = sub nsw i32 %add2914, %2674
  store i32 %sub2915, ptr %i__4, align 4, !tbaa !8
  %2675 = load i32, ptr %i__, align 4, !tbaa !8
  %2676 = load i32, ptr %k, align 4, !tbaa !8
  %add2916 = add nsw i32 %2675, %2676
  %add2917 = add nsw i32 %add2916, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2918) #4
  %2677 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %2677, ptr %_x2918, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2919) #4
  %2678 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %2678, ptr %_y2919, align 4, !tbaa !8
  %2679 = load i32, ptr %_x2918, align 4, !tbaa !8
  %2680 = load i32, ptr %_y2919, align 4, !tbaa !8
  %cmp2921 = icmp sgt i32 %2679, %2680
  br i1 %cmp2921, label %cond.true2923, label %cond.false2924

cond.true2923:                                    ; preds = %for.body2913
  %2681 = load i32, ptr %_x2918, align 4, !tbaa !8
  br label %cond.end2925

cond.false2924:                                   ; preds = %for.body2913
  %2682 = load i32, ptr %_y2919, align 4, !tbaa !8
  br label %cond.end2925

cond.end2925:                                     ; preds = %cond.false2924, %cond.true2923
  %cond2926 = phi i32 [ %2681, %cond.true2923 ], [ %2682, %cond.false2924 ]
  store i32 %cond2926, ptr %tmp2920, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2919) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2918) #4
  %2683 = load i32, ptr %tmp2920, align 4, !tbaa !8
  %2684 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul2927 = mul nsw i32 %2683, %2684
  %sub2928 = sub nsw i32 %add2917, %mul2927
  store i32 %sub2928, ptr %j2, align 4, !tbaa !8
  %2685 = load i32, ptr %j2, align 4, !tbaa !8
  %2686 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2687 = load i32, ptr %2686, align 4, !tbaa !8
  %add2929 = add nsw i32 %2685, %2687
  %sub2930 = sub nsw i32 %add2929, 1
  %2688 = load i32, ptr %ka1, align 4, !tbaa !8
  %div2931 = sdiv i32 %sub2930, %2688
  store i32 %div2931, ptr %nr, align 4, !tbaa !8
  %2689 = load i32, ptr %j2, align 4, !tbaa !8
  %2690 = load i32, ptr %nr, align 4, !tbaa !8
  %sub2932 = sub nsw i32 %2690, 1
  %2691 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul2933 = mul nsw i32 %sub2932, %2691
  %sub2934 = sub nsw i32 %2689, %mul2933
  store i32 %sub2934, ptr %j1, align 4, !tbaa !8
  %2692 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp2935 = icmp sgt i32 %2692, 0
  br i1 %cmp2935, label %if.then2937, label %if.end3006

if.then2937:                                      ; preds = %cond.end2925
  %2693 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2694 = load i32, ptr %j1, align 4, !tbaa !8
  %2695 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2696 = load i32, ptr %2695, align 4, !tbaa !8
  %add2938 = add nsw i32 %2694, %2696
  %2697 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2939 = mul nsw i32 %add2938, %2697
  %add2940 = add nsw i32 %mul2939, 1
  %idxprom2941 = sext i32 %add2940 to i64
  %arrayidx2942 = getelementptr inbounds float, ptr %2693, i64 %idxprom2941
  %2698 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2699 = load i32, ptr %m, align 4, !tbaa !8
  %2700 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2701 = load i32, ptr %2700, align 4, !tbaa !8
  %sub2943 = sub nsw i32 %2699, %2701
  %2702 = load i32, ptr %j1, align 4, !tbaa !8
  %add2944 = add nsw i32 %sub2943, %2702
  %idxprom2945 = sext i32 %add2944 to i64
  %arrayidx2946 = getelementptr inbounds float, ptr %2698, i64 %idxprom2945
  %2703 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2704 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2705 = load i32, ptr %2704, align 4, !tbaa !8
  %2706 = load i32, ptr %m, align 4, !tbaa !8
  %add2947 = add nsw i32 %2705, %2706
  %2707 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2708 = load i32, ptr %2707, align 4, !tbaa !8
  %sub2948 = sub nsw i32 %add2947, %2708
  %2709 = load i32, ptr %j1, align 4, !tbaa !8
  %add2949 = add nsw i32 %sub2948, %2709
  %idxprom2950 = sext i32 %add2949 to i64
  %arrayidx2951 = getelementptr inbounds float, ptr %2703, i64 %idxprom2950
  %call2952 = call i32 @slargv_(ptr noundef %nr, ptr noundef %arrayidx2942, ptr noundef %inca, ptr noundef %arrayidx2946, ptr noundef %ka1, ptr noundef %arrayidx2951, ptr noundef %ka1)
  %2710 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2711 = load i32, ptr %2710, align 4, !tbaa !8
  %sub2953 = sub nsw i32 %2711, 1
  store i32 %sub2953, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond2954

for.cond2954:                                     ; preds = %for.inc2980, %if.then2937
  %2712 = load i32, ptr %l, align 4, !tbaa !8
  %2713 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2955 = icmp sle i32 %2712, %2713
  br i1 %cmp2955, label %for.body2957, label %for.end2982

for.body2957:                                     ; preds = %for.cond2954
  %2714 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2715 = load i32, ptr %ka1, align 4, !tbaa !8
  %2716 = load i32, ptr %l, align 4, !tbaa !8
  %sub2958 = sub nsw i32 %2715, %2716
  %2717 = load i32, ptr %j1, align 4, !tbaa !8
  %2718 = load i32, ptr %l, align 4, !tbaa !8
  %add2959 = add nsw i32 %2717, %2718
  %2719 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2960 = mul nsw i32 %add2959, %2719
  %add2961 = add nsw i32 %sub2958, %mul2960
  %idxprom2962 = sext i32 %add2961 to i64
  %arrayidx2963 = getelementptr inbounds float, ptr %2714, i64 %idxprom2962
  %2720 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2721 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2722 = load i32, ptr %2721, align 4, !tbaa !8
  %2723 = load i32, ptr %l, align 4, !tbaa !8
  %sub2964 = sub nsw i32 %2722, %2723
  %2724 = load i32, ptr %j1, align 4, !tbaa !8
  %2725 = load i32, ptr %l, align 4, !tbaa !8
  %add2965 = add nsw i32 %2724, %2725
  %2726 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2966 = mul nsw i32 %add2965, %2726
  %add2967 = add nsw i32 %sub2964, %mul2966
  %idxprom2968 = sext i32 %add2967 to i64
  %arrayidx2969 = getelementptr inbounds float, ptr %2720, i64 %idxprom2968
  %2727 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2728 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2729 = load i32, ptr %2728, align 4, !tbaa !8
  %2730 = load i32, ptr %m, align 4, !tbaa !8
  %add2970 = add nsw i32 %2729, %2730
  %2731 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2732 = load i32, ptr %2731, align 4, !tbaa !8
  %sub2971 = sub nsw i32 %add2970, %2732
  %2733 = load i32, ptr %j1, align 4, !tbaa !8
  %add2972 = add nsw i32 %sub2971, %2733
  %idxprom2973 = sext i32 %add2972 to i64
  %arrayidx2974 = getelementptr inbounds float, ptr %2727, i64 %idxprom2973
  %2734 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2735 = load i32, ptr %m, align 4, !tbaa !8
  %2736 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2737 = load i32, ptr %2736, align 4, !tbaa !8
  %sub2975 = sub nsw i32 %2735, %2737
  %2738 = load i32, ptr %j1, align 4, !tbaa !8
  %add2976 = add nsw i32 %sub2975, %2738
  %idxprom2977 = sext i32 %add2976 to i64
  %arrayidx2978 = getelementptr inbounds float, ptr %2734, i64 %idxprom2977
  %call2979 = call i32 @slartv_(ptr noundef %nr, ptr noundef %arrayidx2963, ptr noundef %inca, ptr noundef %arrayidx2969, ptr noundef %inca, ptr noundef %arrayidx2974, ptr noundef %arrayidx2978, ptr noundef %ka1)
  br label %for.inc2980

for.inc2980:                                      ; preds = %for.body2957
  %2739 = load i32, ptr %l, align 4, !tbaa !8
  %inc2981 = add nsw i32 %2739, 1
  store i32 %inc2981, ptr %l, align 4, !tbaa !8
  br label %for.cond2954, !llvm.loop !75

for.end2982:                                      ; preds = %for.cond2954
  %2740 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2741 = load i32, ptr %ka1, align 4, !tbaa !8
  %2742 = load i32, ptr %j1, align 4, !tbaa !8
  %2743 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2983 = mul nsw i32 %2742, %2743
  %add2984 = add nsw i32 %2741, %mul2983
  %idxprom2985 = sext i32 %add2984 to i64
  %arrayidx2986 = getelementptr inbounds float, ptr %2740, i64 %idxprom2985
  %2744 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2745 = load i32, ptr %ka1, align 4, !tbaa !8
  %2746 = load i32, ptr %j1, align 4, !tbaa !8
  %sub2987 = sub nsw i32 %2746, 1
  %2747 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2988 = mul nsw i32 %sub2987, %2747
  %add2989 = add nsw i32 %2745, %mul2988
  %idxprom2990 = sext i32 %add2989 to i64
  %arrayidx2991 = getelementptr inbounds float, ptr %2744, i64 %idxprom2990
  %2748 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2749 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2750 = load i32, ptr %2749, align 4, !tbaa !8
  %2751 = load i32, ptr %j1, align 4, !tbaa !8
  %2752 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul2992 = mul nsw i32 %2751, %2752
  %add2993 = add nsw i32 %2750, %mul2992
  %idxprom2994 = sext i32 %add2993 to i64
  %arrayidx2995 = getelementptr inbounds float, ptr %2748, i64 %idxprom2994
  %2753 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2754 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2755 = load i32, ptr %2754, align 4, !tbaa !8
  %2756 = load i32, ptr %m, align 4, !tbaa !8
  %add2996 = add nsw i32 %2755, %2756
  %2757 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2758 = load i32, ptr %2757, align 4, !tbaa !8
  %sub2997 = sub nsw i32 %add2996, %2758
  %2759 = load i32, ptr %j1, align 4, !tbaa !8
  %add2998 = add nsw i32 %sub2997, %2759
  %idxprom2999 = sext i32 %add2998 to i64
  %arrayidx3000 = getelementptr inbounds float, ptr %2753, i64 %idxprom2999
  %2760 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2761 = load i32, ptr %m, align 4, !tbaa !8
  %2762 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2763 = load i32, ptr %2762, align 4, !tbaa !8
  %sub3001 = sub nsw i32 %2761, %2763
  %2764 = load i32, ptr %j1, align 4, !tbaa !8
  %add3002 = add nsw i32 %sub3001, %2764
  %idxprom3003 = sext i32 %add3002 to i64
  %arrayidx3004 = getelementptr inbounds float, ptr %2760, i64 %idxprom3003
  %call3005 = call i32 @slar2v_(ptr noundef %nr, ptr noundef %arrayidx2986, ptr noundef %arrayidx2991, ptr noundef %arrayidx2995, ptr noundef %inca, ptr noundef %arrayidx3000, ptr noundef %arrayidx3004, ptr noundef %ka1)
  br label %if.end3006

if.end3006:                                       ; preds = %for.end2982, %cond.end2925
  %2765 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2766 = load i32, ptr %2765, align 4, !tbaa !8
  %2767 = load i32, ptr %k, align 4, !tbaa !8
  %sub3007 = sub nsw i32 %2766, %2767
  %add3008 = add nsw i32 %sub3007, 1
  store i32 %add3008, ptr %i__3, align 4, !tbaa !8
  %2768 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2769 = load i32, ptr %2768, align 4, !tbaa !8
  %sub3009 = sub nsw i32 %2769, 1
  store i32 %sub3009, ptr %l, align 4, !tbaa !8
  br label %for.cond3010

for.cond3010:                                     ; preds = %for.inc3044, %if.end3006
  %2770 = load i32, ptr %l, align 4, !tbaa !8
  %2771 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp3011 = icmp sge i32 %2770, %2771
  br i1 %cmp3011, label %for.body3013, label %for.end3046

for.body3013:                                     ; preds = %for.cond3010
  %2772 = load i32, ptr %j2, align 4, !tbaa !8
  %2773 = load i32, ptr %l, align 4, !tbaa !8
  %add3014 = add nsw i32 %2772, %2773
  %sub3015 = sub nsw i32 %add3014, 1
  %2774 = load i32, ptr %ka1, align 4, !tbaa !8
  %div3016 = sdiv i32 %sub3015, %2774
  store i32 %div3016, ptr %nrt, align 4, !tbaa !8
  %2775 = load i32, ptr %j2, align 4, !tbaa !8
  %2776 = load i32, ptr %nrt, align 4, !tbaa !8
  %sub3017 = sub nsw i32 %2776, 1
  %2777 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul3018 = mul nsw i32 %sub3017, %2777
  %sub3019 = sub nsw i32 %2775, %mul3018
  store i32 %sub3019, ptr %j1t, align 4, !tbaa !8
  %2778 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp3020 = icmp sgt i32 %2778, 0
  br i1 %cmp3020, label %if.then3022, label %if.end3043

if.then3022:                                      ; preds = %for.body3013
  %2779 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2780 = load i32, ptr %l, align 4, !tbaa !8
  %2781 = load i32, ptr %j1t, align 4, !tbaa !8
  %2782 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3023 = mul nsw i32 %2781, %2782
  %add3024 = add nsw i32 %2780, %mul3023
  %idxprom3025 = sext i32 %add3024 to i64
  %arrayidx3026 = getelementptr inbounds float, ptr %2779, i64 %idxprom3025
  %2783 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2784 = load i32, ptr %l, align 4, !tbaa !8
  %add3027 = add nsw i32 %2784, 1
  %2785 = load i32, ptr %j1t, align 4, !tbaa !8
  %sub3028 = sub nsw i32 %2785, 1
  %2786 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3029 = mul nsw i32 %sub3028, %2786
  %add3030 = add nsw i32 %add3027, %mul3029
  %idxprom3031 = sext i32 %add3030 to i64
  %arrayidx3032 = getelementptr inbounds float, ptr %2783, i64 %idxprom3031
  %2787 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2788 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2789 = load i32, ptr %2788, align 4, !tbaa !8
  %2790 = load i32, ptr %m, align 4, !tbaa !8
  %add3033 = add nsw i32 %2789, %2790
  %2791 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2792 = load i32, ptr %2791, align 4, !tbaa !8
  %sub3034 = sub nsw i32 %add3033, %2792
  %2793 = load i32, ptr %j1t, align 4, !tbaa !8
  %add3035 = add nsw i32 %sub3034, %2793
  %idxprom3036 = sext i32 %add3035 to i64
  %arrayidx3037 = getelementptr inbounds float, ptr %2787, i64 %idxprom3036
  %2794 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2795 = load i32, ptr %m, align 4, !tbaa !8
  %2796 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2797 = load i32, ptr %2796, align 4, !tbaa !8
  %sub3038 = sub nsw i32 %2795, %2797
  %2798 = load i32, ptr %j1t, align 4, !tbaa !8
  %add3039 = add nsw i32 %sub3038, %2798
  %idxprom3040 = sext i32 %add3039 to i64
  %arrayidx3041 = getelementptr inbounds float, ptr %2794, i64 %idxprom3040
  %call3042 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx3026, ptr noundef %inca, ptr noundef %arrayidx3032, ptr noundef %inca, ptr noundef %arrayidx3037, ptr noundef %arrayidx3041, ptr noundef %ka1)
  br label %if.end3043

if.end3043:                                       ; preds = %if.then3022, %for.body3013
  br label %for.inc3044

for.inc3044:                                      ; preds = %if.end3043
  %2799 = load i32, ptr %l, align 4, !tbaa !8
  %dec3045 = add nsw i32 %2799, -1
  store i32 %dec3045, ptr %l, align 4, !tbaa !8
  br label %for.cond3010, !llvm.loop !76

for.end3046:                                      ; preds = %for.cond3010
  %2800 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool3047 = icmp ne i32 %2800, 0
  br i1 %tobool3047, label %if.then3048, label %if.end3084

if.then3048:                                      ; preds = %for.end3046
  %2801 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %2801, ptr %i__3, align 4, !tbaa !8
  %2802 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %2802, ptr %i__4, align 4, !tbaa !8
  %2803 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %2803, ptr %j, align 4, !tbaa !8
  br label %for.cond3049

for.cond3049:                                     ; preds = %for.inc3081, %if.then3048
  %2804 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp3050 = icmp slt i32 %2804, 0
  br i1 %cmp3050, label %cond.true3052, label %cond.false3055

cond.true3052:                                    ; preds = %for.cond3049
  %2805 = load i32, ptr %j, align 4, !tbaa !8
  %2806 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp3053 = icmp sge i32 %2805, %2806
  %conv3054 = zext i1 %cmp3053 to i32
  br label %cond.end3058

cond.false3055:                                   ; preds = %for.cond3049
  %2807 = load i32, ptr %j, align 4, !tbaa !8
  %2808 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp3056 = icmp sle i32 %2807, %2808
  %conv3057 = zext i1 %cmp3056 to i32
  br label %cond.end3058

cond.end3058:                                     ; preds = %cond.false3055, %cond.true3052
  %cond3059 = phi i32 [ %conv3054, %cond.true3052 ], [ %conv3057, %cond.false3055 ]
  %tobool3060 = icmp ne i32 %cond3059, 0
  br i1 %tobool3060, label %for.body3061, label %for.end3083

for.body3061:                                     ; preds = %cond.end3058
  %2809 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %2810 = load i32, ptr %j, align 4, !tbaa !8
  %2811 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul3062 = mul nsw i32 %2810, %2811
  %add3063 = add nsw i32 %mul3062, 1
  %idxprom3064 = sext i32 %add3063 to i64
  %arrayidx3065 = getelementptr inbounds float, ptr %2809, i64 %idxprom3064
  %2812 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %2813 = load i32, ptr %j, align 4, !tbaa !8
  %sub3066 = sub nsw i32 %2813, 1
  %2814 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul3067 = mul nsw i32 %sub3066, %2814
  %add3068 = add nsw i32 %mul3067, 1
  %idxprom3069 = sext i32 %add3068 to i64
  %arrayidx3070 = getelementptr inbounds float, ptr %2812, i64 %idxprom3069
  %2815 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2816 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2817 = load i32, ptr %2816, align 4, !tbaa !8
  %2818 = load i32, ptr %m, align 4, !tbaa !8
  %add3071 = add nsw i32 %2817, %2818
  %2819 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2820 = load i32, ptr %2819, align 4, !tbaa !8
  %sub3072 = sub nsw i32 %add3071, %2820
  %2821 = load i32, ptr %j, align 4, !tbaa !8
  %add3073 = add nsw i32 %sub3072, %2821
  %idxprom3074 = sext i32 %add3073 to i64
  %arrayidx3075 = getelementptr inbounds float, ptr %2815, i64 %idxprom3074
  %2822 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2823 = load i32, ptr %m, align 4, !tbaa !8
  %2824 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2825 = load i32, ptr %2824, align 4, !tbaa !8
  %sub3076 = sub nsw i32 %2823, %2825
  %2826 = load i32, ptr %j, align 4, !tbaa !8
  %add3077 = add nsw i32 %sub3076, %2826
  %idxprom3078 = sext i32 %add3077 to i64
  %arrayidx3079 = getelementptr inbounds float, ptr %2822, i64 %idxprom3078
  %call3080 = call i32 @srot_(ptr noundef %nx, ptr noundef %arrayidx3065, ptr noundef @c__1, ptr noundef %arrayidx3070, ptr noundef @c__1, ptr noundef %arrayidx3075, ptr noundef %arrayidx3079)
  br label %for.inc3081

for.inc3081:                                      ; preds = %for.body3061
  %2827 = load i32, ptr %i__4, align 4, !tbaa !8
  %2828 = load i32, ptr %j, align 4, !tbaa !8
  %add3082 = add nsw i32 %2828, %2827
  store i32 %add3082, ptr %j, align 4, !tbaa !8
  br label %for.cond3049, !llvm.loop !77

for.end3083:                                      ; preds = %cond.end3058
  br label %if.end3084

if.end3084:                                       ; preds = %for.end3083, %for.end3046
  br label %for.inc3085

for.inc3085:                                      ; preds = %if.end3084
  %2829 = load i32, ptr %k, align 4, !tbaa !8
  %dec3086 = add nsw i32 %2829, -1
  store i32 %dec3086, ptr %k, align 4, !tbaa !8
  br label %for.cond2910, !llvm.loop !78

for.end3087:                                      ; preds = %for.cond2910
  %2830 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2831 = load i32, ptr %2830, align 4, !tbaa !8
  %sub3088 = sub nsw i32 %2831, 1
  store i32 %sub3088, ptr %i__4, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond3089

for.cond3089:                                     ; preds = %for.inc3143, %for.end3087
  %2832 = load i32, ptr %k, align 4, !tbaa !8
  %2833 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp3090 = icmp sle i32 %2832, %2833
  br i1 %cmp3090, label %for.body3092, label %for.end3145

for.body3092:                                     ; preds = %for.cond3089
  store i32 1, ptr %i__3, align 4, !tbaa !8
  %2834 = load i32, ptr %k, align 4, !tbaa !8
  %2835 = load i32, ptr %i0, align 4, !tbaa !8
  %add3093 = add nsw i32 %2834, %2835
  %2836 = load i32, ptr %m, align 4, !tbaa !8
  %sub3094 = sub nsw i32 %add3093, %2836
  %add3095 = add nsw i32 %sub3094, 1
  store i32 %add3095, ptr %i__1, align 4, !tbaa !8
  %2837 = load i32, ptr %i__, align 4, !tbaa !8
  %2838 = load i32, ptr %k, align 4, !tbaa !8
  %add3096 = add nsw i32 %2837, %2838
  %add3097 = add nsw i32 %add3096, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x3098) #4
  %2839 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %2839, ptr %_x3098, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y3099) #4
  %2840 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %2840, ptr %_y3099, align 4, !tbaa !8
  %2841 = load i32, ptr %_x3098, align 4, !tbaa !8
  %2842 = load i32, ptr %_y3099, align 4, !tbaa !8
  %cmp3101 = icmp sgt i32 %2841, %2842
  br i1 %cmp3101, label %cond.true3103, label %cond.false3104

cond.true3103:                                    ; preds = %for.body3092
  %2843 = load i32, ptr %_x3098, align 4, !tbaa !8
  br label %cond.end3105

cond.false3104:                                   ; preds = %for.body3092
  %2844 = load i32, ptr %_y3099, align 4, !tbaa !8
  br label %cond.end3105

cond.end3105:                                     ; preds = %cond.false3104, %cond.true3103
  %cond3106 = phi i32 [ %2843, %cond.true3103 ], [ %2844, %cond.false3104 ]
  store i32 %cond3106, ptr %tmp3100, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y3099) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x3098) #4
  %2845 = load i32, ptr %tmp3100, align 4, !tbaa !8
  %2846 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul3107 = mul nsw i32 %2845, %2846
  %sub3108 = sub nsw i32 %add3097, %mul3107
  store i32 %sub3108, ptr %j2, align 4, !tbaa !8
  %2847 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2848 = load i32, ptr %2847, align 4, !tbaa !8
  %2849 = load i32, ptr %k, align 4, !tbaa !8
  %sub3109 = sub nsw i32 %2848, %2849
  store i32 %sub3109, ptr %l, align 4, !tbaa !8
  br label %for.cond3110

for.cond3110:                                     ; preds = %for.inc3140, %cond.end3105
  %2850 = load i32, ptr %l, align 4, !tbaa !8
  %cmp3111 = icmp sge i32 %2850, 1
  br i1 %cmp3111, label %for.body3113, label %for.end3142

for.body3113:                                     ; preds = %for.cond3110
  %2851 = load i32, ptr %j2, align 4, !tbaa !8
  %2852 = load i32, ptr %l, align 4, !tbaa !8
  %add3114 = add nsw i32 %2851, %2852
  %sub3115 = sub nsw i32 %add3114, 1
  %2853 = load i32, ptr %ka1, align 4, !tbaa !8
  %div3116 = sdiv i32 %sub3115, %2853
  store i32 %div3116, ptr %nrt, align 4, !tbaa !8
  %2854 = load i32, ptr %j2, align 4, !tbaa !8
  %2855 = load i32, ptr %nrt, align 4, !tbaa !8
  %sub3117 = sub nsw i32 %2855, 1
  %2856 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul3118 = mul nsw i32 %sub3117, %2856
  %sub3119 = sub nsw i32 %2854, %mul3118
  store i32 %sub3119, ptr %j1t, align 4, !tbaa !8
  %2857 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp3120 = icmp sgt i32 %2857, 0
  br i1 %cmp3120, label %if.then3122, label %if.end3139

if.then3122:                                      ; preds = %for.body3113
  %2858 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2859 = load i32, ptr %l, align 4, !tbaa !8
  %2860 = load i32, ptr %j1t, align 4, !tbaa !8
  %2861 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3123 = mul nsw i32 %2860, %2861
  %add3124 = add nsw i32 %2859, %mul3123
  %idxprom3125 = sext i32 %add3124 to i64
  %arrayidx3126 = getelementptr inbounds float, ptr %2858, i64 %idxprom3125
  %2862 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2863 = load i32, ptr %l, align 4, !tbaa !8
  %add3127 = add nsw i32 %2863, 1
  %2864 = load i32, ptr %j1t, align 4, !tbaa !8
  %sub3128 = sub nsw i32 %2864, 1
  %2865 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3129 = mul nsw i32 %sub3128, %2865
  %add3130 = add nsw i32 %add3127, %mul3129
  %idxprom3131 = sext i32 %add3130 to i64
  %arrayidx3132 = getelementptr inbounds float, ptr %2862, i64 %idxprom3131
  %2866 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2867 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2868 = load i32, ptr %2867, align 4, !tbaa !8
  %2869 = load i32, ptr %j1t, align 4, !tbaa !8
  %add3133 = add nsw i32 %2868, %2869
  %idxprom3134 = sext i32 %add3133 to i64
  %arrayidx3135 = getelementptr inbounds float, ptr %2866, i64 %idxprom3134
  %2870 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2871 = load i32, ptr %j1t, align 4, !tbaa !8
  %idxprom3136 = sext i32 %2871 to i64
  %arrayidx3137 = getelementptr inbounds float, ptr %2870, i64 %idxprom3136
  %call3138 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx3126, ptr noundef %inca, ptr noundef %arrayidx3132, ptr noundef %inca, ptr noundef %arrayidx3135, ptr noundef %arrayidx3137, ptr noundef %ka1)
  br label %if.end3139

if.end3139:                                       ; preds = %if.then3122, %for.body3113
  br label %for.inc3140

for.inc3140:                                      ; preds = %if.end3139
  %2872 = load i32, ptr %l, align 4, !tbaa !8
  %dec3141 = add nsw i32 %2872, -1
  store i32 %dec3141, ptr %l, align 4, !tbaa !8
  br label %for.cond3110, !llvm.loop !79

for.end3142:                                      ; preds = %for.cond3110
  br label %for.inc3143

for.inc3143:                                      ; preds = %for.end3142
  %2873 = load i32, ptr %k, align 4, !tbaa !8
  %inc3144 = add nsw i32 %2873, 1
  store i32 %inc3144, ptr %k, align 4, !tbaa !8
  br label %for.cond3089, !llvm.loop !80

for.end3145:                                      ; preds = %for.cond3089
  %2874 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2875 = load i32, ptr %2874, align 4, !tbaa !8
  %cmp3146 = icmp sgt i32 %2875, 1
  br i1 %cmp3146, label %if.then3148, label %if.end3181

if.then3148:                                      ; preds = %for.end3145
  %2876 = load i32, ptr %i__, align 4, !tbaa !8
  %2877 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %2878 = load i32, ptr %2877, align 4, !tbaa !8
  %add3149 = add nsw i32 %2876, %2878
  store i32 %add3149, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x3150) #4
  %2879 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %2879, ptr %_x3150, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y3151) #4
  %2880 = load i32, ptr %m, align 4, !tbaa !8
  store i32 %2880, ptr %_y3151, align 4, !tbaa !8
  %2881 = load i32, ptr %_x3150, align 4, !tbaa !8
  %2882 = load i32, ptr %_y3151, align 4, !tbaa !8
  %cmp3153 = icmp slt i32 %2881, %2882
  br i1 %cmp3153, label %cond.true3155, label %cond.false3156

cond.true3155:                                    ; preds = %if.then3148
  %2883 = load i32, ptr %_x3150, align 4, !tbaa !8
  br label %cond.end3157

cond.false3156:                                   ; preds = %if.then3148
  %2884 = load i32, ptr %_y3151, align 4, !tbaa !8
  br label %cond.end3157

cond.end3157:                                     ; preds = %cond.false3156, %cond.true3155
  %cond3158 = phi i32 [ %2883, %cond.true3155 ], [ %2884, %cond.false3156 ]
  store i32 %cond3158, ptr %tmp3152, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y3151) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x3150) #4
  %2885 = load i32, ptr %tmp3152, align 4, !tbaa !8
  %2886 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2887 = load i32, ptr %2886, align 4, !tbaa !8
  %shl3159 = shl i32 %2887, 1
  %sub3160 = sub nsw i32 %2885, %shl3159
  %sub3161 = sub nsw i32 %sub3160, 1
  store i32 %sub3161, ptr %i__4, align 4, !tbaa !8
  store i32 2, ptr %j, align 4, !tbaa !8
  br label %for.cond3162

for.cond3162:                                     ; preds = %for.inc3178, %cond.end3157
  %2888 = load i32, ptr %j, align 4, !tbaa !8
  %2889 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp3163 = icmp sle i32 %2888, %2889
  br i1 %cmp3163, label %for.body3165, label %for.end3180

for.body3165:                                     ; preds = %for.cond3162
  %2890 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2891 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2892 = load i32, ptr %2891, align 4, !tbaa !8
  %2893 = load i32, ptr %j, align 4, !tbaa !8
  %add3166 = add nsw i32 %2892, %2893
  %2894 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2895 = load i32, ptr %2894, align 4, !tbaa !8
  %add3167 = add nsw i32 %add3166, %2895
  %idxprom3168 = sext i32 %add3167 to i64
  %arrayidx3169 = getelementptr inbounds float, ptr %2890, i64 %idxprom3168
  %2896 = load float, ptr %arrayidx3169, align 4, !tbaa !10
  %2897 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2898 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2899 = load i32, ptr %2898, align 4, !tbaa !8
  %2900 = load i32, ptr %j, align 4, !tbaa !8
  %add3170 = add nsw i32 %2899, %2900
  %idxprom3171 = sext i32 %add3170 to i64
  %arrayidx3172 = getelementptr inbounds float, ptr %2897, i64 %idxprom3171
  store float %2896, ptr %arrayidx3172, align 4, !tbaa !10
  %2901 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2902 = load i32, ptr %j, align 4, !tbaa !8
  %2903 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2904 = load i32, ptr %2903, align 4, !tbaa !8
  %add3173 = add nsw i32 %2902, %2904
  %idxprom3174 = sext i32 %add3173 to i64
  %arrayidx3175 = getelementptr inbounds float, ptr %2901, i64 %idxprom3174
  %2905 = load float, ptr %arrayidx3175, align 4, !tbaa !10
  %2906 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %2907 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom3176 = sext i32 %2907 to i64
  %arrayidx3177 = getelementptr inbounds float, ptr %2906, i64 %idxprom3176
  store float %2905, ptr %arrayidx3177, align 4, !tbaa !10
  br label %for.inc3178

for.inc3178:                                      ; preds = %for.body3165
  %2908 = load i32, ptr %j, align 4, !tbaa !8
  %inc3179 = add nsw i32 %2908, 1
  store i32 %inc3179, ptr %j, align 4, !tbaa !8
  br label %for.cond3162, !llvm.loop !81

for.end3180:                                      ; preds = %for.cond3162
  br label %if.end3181

if.end3181:                                       ; preds = %for.end3180, %for.end3145
  br label %if.end4226

if.else3182:                                      ; preds = %if.end2147
  %2909 = load i32, ptr %update, align 4, !tbaa !8
  %tobool3183 = icmp ne i32 %2909, 0
  br i1 %tobool3183, label %if.then3184, label %if.end3420

if.then3184:                                      ; preds = %if.else3182
  %2910 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2911 = load i32, ptr %i__, align 4, !tbaa !8
  %2912 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul3185 = mul nsw i32 %2911, %2912
  %add3186 = add nsw i32 %mul3185, 1
  %idxprom3187 = sext i32 %add3186 to i64
  %arrayidx3188 = getelementptr inbounds float, ptr %2910, i64 %idxprom3187
  %2913 = load float, ptr %arrayidx3188, align 4, !tbaa !10
  store float %2913, ptr %bii, align 4, !tbaa !10
  %2914 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %2914, ptr %i__4, align 4, !tbaa !8
  %2915 = load i32, ptr %i1, align 4, !tbaa !8
  store i32 %2915, ptr %j, align 4, !tbaa !8
  br label %for.cond3189

for.cond3189:                                     ; preds = %for.inc3200, %if.then3184
  %2916 = load i32, ptr %j, align 4, !tbaa !8
  %2917 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp3190 = icmp sle i32 %2916, %2917
  br i1 %cmp3190, label %for.body3192, label %for.end3202

for.body3192:                                     ; preds = %for.cond3189
  %2918 = load float, ptr %bii, align 4, !tbaa !10
  %2919 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2920 = load i32, ptr %i__, align 4, !tbaa !8
  %2921 = load i32, ptr %j, align 4, !tbaa !8
  %sub3193 = sub nsw i32 %2920, %2921
  %add3194 = add nsw i32 %sub3193, 1
  %2922 = load i32, ptr %j, align 4, !tbaa !8
  %2923 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3195 = mul nsw i32 %2922, %2923
  %add3196 = add nsw i32 %add3194, %mul3195
  %idxprom3197 = sext i32 %add3196 to i64
  %arrayidx3198 = getelementptr inbounds float, ptr %2919, i64 %idxprom3197
  %2924 = load float, ptr %arrayidx3198, align 4, !tbaa !10
  %div3199 = fdiv float %2924, %2918
  store float %div3199, ptr %arrayidx3198, align 4, !tbaa !10
  br label %for.inc3200

for.inc3200:                                      ; preds = %for.body3192
  %2925 = load i32, ptr %j, align 4, !tbaa !8
  %inc3201 = add nsw i32 %2925, 1
  store i32 %inc3201, ptr %j, align 4, !tbaa !8
  br label %for.cond3189, !llvm.loop !82

for.end3202:                                      ; preds = %for.cond3189
  %2926 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2927 = load i32, ptr %2926, align 4, !tbaa !8
  store i32 %2927, ptr %i__3, align 4, !tbaa !8
  %2928 = load i32, ptr %i__, align 4, !tbaa !8
  %2929 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %2930 = load i32, ptr %2929, align 4, !tbaa !8
  %add3203 = add nsw i32 %2928, %2930
  store i32 %add3203, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x3204) #4
  %2931 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %2931, ptr %_x3204, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y3205) #4
  %2932 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %2932, ptr %_y3205, align 4, !tbaa !8
  %2933 = load i32, ptr %_x3204, align 4, !tbaa !8
  %2934 = load i32, ptr %_y3205, align 4, !tbaa !8
  %cmp3207 = icmp slt i32 %2933, %2934
  br i1 %cmp3207, label %cond.true3209, label %cond.false3210

cond.true3209:                                    ; preds = %for.end3202
  %2935 = load i32, ptr %_x3204, align 4, !tbaa !8
  br label %cond.end3211

cond.false3210:                                   ; preds = %for.end3202
  %2936 = load i32, ptr %_y3205, align 4, !tbaa !8
  br label %cond.end3211

cond.end3211:                                     ; preds = %cond.false3210, %cond.true3209
  %cond3212 = phi i32 [ %2935, %cond.true3209 ], [ %2936, %cond.false3210 ]
  store i32 %cond3212, ptr %tmp3206, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y3205) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x3204) #4
  %2937 = load i32, ptr %tmp3206, align 4, !tbaa !8
  store i32 %2937, ptr %i__4, align 4, !tbaa !8
  %2938 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %2938, ptr %j, align 4, !tbaa !8
  br label %for.cond3213

for.cond3213:                                     ; preds = %for.inc3224, %cond.end3211
  %2939 = load i32, ptr %j, align 4, !tbaa !8
  %2940 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp3214 = icmp sle i32 %2939, %2940
  br i1 %cmp3214, label %for.body3216, label %for.end3226

for.body3216:                                     ; preds = %for.cond3213
  %2941 = load float, ptr %bii, align 4, !tbaa !10
  %2942 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2943 = load i32, ptr %j, align 4, !tbaa !8
  %2944 = load i32, ptr %i__, align 4, !tbaa !8
  %sub3217 = sub nsw i32 %2943, %2944
  %add3218 = add nsw i32 %sub3217, 1
  %2945 = load i32, ptr %i__, align 4, !tbaa !8
  %2946 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3219 = mul nsw i32 %2945, %2946
  %add3220 = add nsw i32 %add3218, %mul3219
  %idxprom3221 = sext i32 %add3220 to i64
  %arrayidx3222 = getelementptr inbounds float, ptr %2942, i64 %idxprom3221
  %2947 = load float, ptr %arrayidx3222, align 4, !tbaa !10
  %div3223 = fdiv float %2947, %2941
  store float %div3223, ptr %arrayidx3222, align 4, !tbaa !10
  br label %for.inc3224

for.inc3224:                                      ; preds = %for.body3216
  %2948 = load i32, ptr %j, align 4, !tbaa !8
  %inc3225 = add nsw i32 %2948, 1
  store i32 %inc3225, ptr %j, align 4, !tbaa !8
  br label %for.cond3213, !llvm.loop !83

for.end3226:                                      ; preds = %for.cond3213
  %2949 = load i32, ptr %i__, align 4, !tbaa !8
  %2950 = load i32, ptr %kbt, align 4, !tbaa !8
  %add3227 = add nsw i32 %2949, %2950
  store i32 %add3227, ptr %i__4, align 4, !tbaa !8
  %2951 = load i32, ptr %i__, align 4, !tbaa !8
  %add3228 = add nsw i32 %2951, 1
  store i32 %add3228, ptr %k, align 4, !tbaa !8
  br label %for.cond3229

for.cond3229:                                     ; preds = %for.inc3338, %for.end3226
  %2952 = load i32, ptr %k, align 4, !tbaa !8
  %2953 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp3230 = icmp sle i32 %2952, %2953
  br i1 %cmp3230, label %for.body3232, label %for.end3340

for.body3232:                                     ; preds = %for.cond3229
  %2954 = load i32, ptr %i__, align 4, !tbaa !8
  %2955 = load i32, ptr %kbt, align 4, !tbaa !8
  %add3233 = add nsw i32 %2954, %2955
  store i32 %add3233, ptr %i__3, align 4, !tbaa !8
  %2956 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %2956, ptr %j, align 4, !tbaa !8
  br label %for.cond3234

for.cond3234:                                     ; preds = %for.inc3296, %for.body3232
  %2957 = load i32, ptr %j, align 4, !tbaa !8
  %2958 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp3235 = icmp sle i32 %2957, %2958
  br i1 %cmp3235, label %for.body3237, label %for.end3298

for.body3237:                                     ; preds = %for.cond3234
  %2959 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2960 = load i32, ptr %j, align 4, !tbaa !8
  %2961 = load i32, ptr %k, align 4, !tbaa !8
  %sub3238 = sub nsw i32 %2960, %2961
  %add3239 = add nsw i32 %sub3238, 1
  %2962 = load i32, ptr %k, align 4, !tbaa !8
  %2963 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3240 = mul nsw i32 %2962, %2963
  %add3241 = add nsw i32 %add3239, %mul3240
  %idxprom3242 = sext i32 %add3241 to i64
  %arrayidx3243 = getelementptr inbounds float, ptr %2959, i64 %idxprom3242
  %2964 = load float, ptr %arrayidx3243, align 4, !tbaa !10
  %2965 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2966 = load i32, ptr %j, align 4, !tbaa !8
  %2967 = load i32, ptr %i__, align 4, !tbaa !8
  %sub3244 = sub nsw i32 %2966, %2967
  %add3245 = add nsw i32 %sub3244, 1
  %2968 = load i32, ptr %i__, align 4, !tbaa !8
  %2969 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul3246 = mul nsw i32 %2968, %2969
  %add3247 = add nsw i32 %add3245, %mul3246
  %idxprom3248 = sext i32 %add3247 to i64
  %arrayidx3249 = getelementptr inbounds float, ptr %2965, i64 %idxprom3248
  %2970 = load float, ptr %arrayidx3249, align 4, !tbaa !10
  %2971 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2972 = load i32, ptr %k, align 4, !tbaa !8
  %2973 = load i32, ptr %i__, align 4, !tbaa !8
  %sub3250 = sub nsw i32 %2972, %2973
  %add3251 = add nsw i32 %sub3250, 1
  %2974 = load i32, ptr %i__, align 4, !tbaa !8
  %2975 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3252 = mul nsw i32 %2974, %2975
  %add3253 = add nsw i32 %add3251, %mul3252
  %idxprom3254 = sext i32 %add3253 to i64
  %arrayidx3255 = getelementptr inbounds float, ptr %2971, i64 %idxprom3254
  %2976 = load float, ptr %arrayidx3255, align 4, !tbaa !10
  %neg3257 = fneg float %2970
  %2977 = call float @llvm.fmuladd.f32(float %neg3257, float %2976, float %2964)
  %2978 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2979 = load i32, ptr %k, align 4, !tbaa !8
  %2980 = load i32, ptr %i__, align 4, !tbaa !8
  %sub3258 = sub nsw i32 %2979, %2980
  %add3259 = add nsw i32 %sub3258, 1
  %2981 = load i32, ptr %i__, align 4, !tbaa !8
  %2982 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul3260 = mul nsw i32 %2981, %2982
  %add3261 = add nsw i32 %add3259, %mul3260
  %idxprom3262 = sext i32 %add3261 to i64
  %arrayidx3263 = getelementptr inbounds float, ptr %2978, i64 %idxprom3262
  %2983 = load float, ptr %arrayidx3263, align 4, !tbaa !10
  %2984 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2985 = load i32, ptr %j, align 4, !tbaa !8
  %2986 = load i32, ptr %i__, align 4, !tbaa !8
  %sub3264 = sub nsw i32 %2985, %2986
  %add3265 = add nsw i32 %sub3264, 1
  %2987 = load i32, ptr %i__, align 4, !tbaa !8
  %2988 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3266 = mul nsw i32 %2987, %2988
  %add3267 = add nsw i32 %add3265, %mul3266
  %idxprom3268 = sext i32 %add3267 to i64
  %arrayidx3269 = getelementptr inbounds float, ptr %2984, i64 %idxprom3268
  %2989 = load float, ptr %arrayidx3269, align 4, !tbaa !10
  %neg3271 = fneg float %2983
  %2990 = call float @llvm.fmuladd.f32(float %neg3271, float %2989, float %2977)
  %2991 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %2992 = load i32, ptr %i__, align 4, !tbaa !8
  %2993 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3272 = mul nsw i32 %2992, %2993
  %add3273 = add nsw i32 %mul3272, 1
  %idxprom3274 = sext i32 %add3273 to i64
  %arrayidx3275 = getelementptr inbounds float, ptr %2991, i64 %idxprom3274
  %2994 = load float, ptr %arrayidx3275, align 4, !tbaa !10
  %2995 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %2996 = load i32, ptr %j, align 4, !tbaa !8
  %2997 = load i32, ptr %i__, align 4, !tbaa !8
  %sub3276 = sub nsw i32 %2996, %2997
  %add3277 = add nsw i32 %sub3276, 1
  %2998 = load i32, ptr %i__, align 4, !tbaa !8
  %2999 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul3278 = mul nsw i32 %2998, %2999
  %add3279 = add nsw i32 %add3277, %mul3278
  %idxprom3280 = sext i32 %add3279 to i64
  %arrayidx3281 = getelementptr inbounds float, ptr %2995, i64 %idxprom3280
  %3000 = load float, ptr %arrayidx3281, align 4, !tbaa !10
  %mul3282 = fmul float %2994, %3000
  %3001 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %3002 = load i32, ptr %k, align 4, !tbaa !8
  %3003 = load i32, ptr %i__, align 4, !tbaa !8
  %sub3283 = sub nsw i32 %3002, %3003
  %add3284 = add nsw i32 %sub3283, 1
  %3004 = load i32, ptr %i__, align 4, !tbaa !8
  %3005 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul3285 = mul nsw i32 %3004, %3005
  %add3286 = add nsw i32 %add3284, %mul3285
  %idxprom3287 = sext i32 %add3286 to i64
  %arrayidx3288 = getelementptr inbounds float, ptr %3001, i64 %idxprom3287
  %3006 = load float, ptr %arrayidx3288, align 4, !tbaa !10
  %3007 = call float @llvm.fmuladd.f32(float %mul3282, float %3006, float %2990)
  %3008 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3009 = load i32, ptr %j, align 4, !tbaa !8
  %3010 = load i32, ptr %k, align 4, !tbaa !8
  %sub3290 = sub nsw i32 %3009, %3010
  %add3291 = add nsw i32 %sub3290, 1
  %3011 = load i32, ptr %k, align 4, !tbaa !8
  %3012 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3292 = mul nsw i32 %3011, %3012
  %add3293 = add nsw i32 %add3291, %mul3292
  %idxprom3294 = sext i32 %add3293 to i64
  %arrayidx3295 = getelementptr inbounds float, ptr %3008, i64 %idxprom3294
  store float %3007, ptr %arrayidx3295, align 4, !tbaa !10
  br label %for.inc3296

for.inc3296:                                      ; preds = %for.body3237
  %3013 = load i32, ptr %j, align 4, !tbaa !8
  %inc3297 = add nsw i32 %3013, 1
  store i32 %inc3297, ptr %j, align 4, !tbaa !8
  br label %for.cond3234, !llvm.loop !84

for.end3298:                                      ; preds = %for.cond3234
  %3014 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3015 = load i32, ptr %3014, align 4, !tbaa !8
  store i32 %3015, ptr %i__1, align 4, !tbaa !8
  %3016 = load i32, ptr %i__, align 4, !tbaa !8
  %3017 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3018 = load i32, ptr %3017, align 4, !tbaa !8
  %add3299 = add nsw i32 %3016, %3018
  store i32 %add3299, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x3300) #4
  %3019 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %3019, ptr %_x3300, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y3301) #4
  %3020 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %3020, ptr %_y3301, align 4, !tbaa !8
  %3021 = load i32, ptr %_x3300, align 4, !tbaa !8
  %3022 = load i32, ptr %_y3301, align 4, !tbaa !8
  %cmp3303 = icmp slt i32 %3021, %3022
  br i1 %cmp3303, label %cond.true3305, label %cond.false3306

cond.true3305:                                    ; preds = %for.end3298
  %3023 = load i32, ptr %_x3300, align 4, !tbaa !8
  br label %cond.end3307

cond.false3306:                                   ; preds = %for.end3298
  %3024 = load i32, ptr %_y3301, align 4, !tbaa !8
  br label %cond.end3307

cond.end3307:                                     ; preds = %cond.false3306, %cond.true3305
  %cond3308 = phi i32 [ %3023, %cond.true3305 ], [ %3024, %cond.false3306 ]
  store i32 %cond3308, ptr %tmp3302, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y3301) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x3300) #4
  %3025 = load i32, ptr %tmp3302, align 4, !tbaa !8
  store i32 %3025, ptr %i__3, align 4, !tbaa !8
  %3026 = load i32, ptr %i__, align 4, !tbaa !8
  %3027 = load i32, ptr %kbt, align 4, !tbaa !8
  %add3309 = add nsw i32 %3026, %3027
  %add3310 = add nsw i32 %add3309, 1
  store i32 %add3310, ptr %j, align 4, !tbaa !8
  br label %for.cond3311

for.cond3311:                                     ; preds = %for.inc3335, %cond.end3307
  %3028 = load i32, ptr %j, align 4, !tbaa !8
  %3029 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp3312 = icmp sle i32 %3028, %3029
  br i1 %cmp3312, label %for.body3314, label %for.end3337

for.body3314:                                     ; preds = %for.cond3311
  %3030 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %3031 = load i32, ptr %k, align 4, !tbaa !8
  %3032 = load i32, ptr %i__, align 4, !tbaa !8
  %sub3315 = sub nsw i32 %3031, %3032
  %add3316 = add nsw i32 %sub3315, 1
  %3033 = load i32, ptr %i__, align 4, !tbaa !8
  %3034 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul3317 = mul nsw i32 %3033, %3034
  %add3318 = add nsw i32 %add3316, %mul3317
  %idxprom3319 = sext i32 %add3318 to i64
  %arrayidx3320 = getelementptr inbounds float, ptr %3030, i64 %idxprom3319
  %3035 = load float, ptr %arrayidx3320, align 4, !tbaa !10
  %3036 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3037 = load i32, ptr %j, align 4, !tbaa !8
  %3038 = load i32, ptr %i__, align 4, !tbaa !8
  %sub3321 = sub nsw i32 %3037, %3038
  %add3322 = add nsw i32 %sub3321, 1
  %3039 = load i32, ptr %i__, align 4, !tbaa !8
  %3040 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3323 = mul nsw i32 %3039, %3040
  %add3324 = add nsw i32 %add3322, %mul3323
  %idxprom3325 = sext i32 %add3324 to i64
  %arrayidx3326 = getelementptr inbounds float, ptr %3036, i64 %idxprom3325
  %3041 = load float, ptr %arrayidx3326, align 4, !tbaa !10
  %3042 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3043 = load i32, ptr %j, align 4, !tbaa !8
  %3044 = load i32, ptr %k, align 4, !tbaa !8
  %sub3328 = sub nsw i32 %3043, %3044
  %add3329 = add nsw i32 %sub3328, 1
  %3045 = load i32, ptr %k, align 4, !tbaa !8
  %3046 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3330 = mul nsw i32 %3045, %3046
  %add3331 = add nsw i32 %add3329, %mul3330
  %idxprom3332 = sext i32 %add3331 to i64
  %arrayidx3333 = getelementptr inbounds float, ptr %3042, i64 %idxprom3332
  %3047 = load float, ptr %arrayidx3333, align 4, !tbaa !10
  %neg3334 = fneg float %3035
  %3048 = call float @llvm.fmuladd.f32(float %neg3334, float %3041, float %3047)
  store float %3048, ptr %arrayidx3333, align 4, !tbaa !10
  br label %for.inc3335

for.inc3335:                                      ; preds = %for.body3314
  %3049 = load i32, ptr %j, align 4, !tbaa !8
  %inc3336 = add nsw i32 %3049, 1
  store i32 %inc3336, ptr %j, align 4, !tbaa !8
  br label %for.cond3311, !llvm.loop !85

for.end3337:                                      ; preds = %for.cond3311
  br label %for.inc3338

for.inc3338:                                      ; preds = %for.end3337
  %3050 = load i32, ptr %k, align 4, !tbaa !8
  %inc3339 = add nsw i32 %3050, 1
  store i32 %inc3339, ptr %k, align 4, !tbaa !8
  br label %for.cond3229, !llvm.loop !86

for.end3340:                                      ; preds = %for.cond3229
  %3051 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %3051, ptr %i__4, align 4, !tbaa !8
  %3052 = load i32, ptr %i1, align 4, !tbaa !8
  store i32 %3052, ptr %j, align 4, !tbaa !8
  br label %for.cond3341

for.cond3341:                                     ; preds = %for.inc3384, %for.end3340
  %3053 = load i32, ptr %j, align 4, !tbaa !8
  %3054 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp3342 = icmp sle i32 %3053, %3054
  br i1 %cmp3342, label %for.body3344, label %for.end3386

for.body3344:                                     ; preds = %for.cond3341
  %3055 = load i32, ptr %j, align 4, !tbaa !8
  %3056 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3057 = load i32, ptr %3056, align 4, !tbaa !8
  %add3345 = add nsw i32 %3055, %3057
  store i32 %add3345, ptr %i__1, align 4, !tbaa !8
  %3058 = load i32, ptr %i__, align 4, !tbaa !8
  %3059 = load i32, ptr %kbt, align 4, !tbaa !8
  %add3346 = add nsw i32 %3058, %3059
  store i32 %add3346, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x3347) #4
  %3060 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %3060, ptr %_x3347, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y3348) #4
  %3061 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %3061, ptr %_y3348, align 4, !tbaa !8
  %3062 = load i32, ptr %_x3347, align 4, !tbaa !8
  %3063 = load i32, ptr %_y3348, align 4, !tbaa !8
  %cmp3350 = icmp slt i32 %3062, %3063
  br i1 %cmp3350, label %cond.true3352, label %cond.false3353

cond.true3352:                                    ; preds = %for.body3344
  %3064 = load i32, ptr %_x3347, align 4, !tbaa !8
  br label %cond.end3354

cond.false3353:                                   ; preds = %for.body3344
  %3065 = load i32, ptr %_y3348, align 4, !tbaa !8
  br label %cond.end3354

cond.end3354:                                     ; preds = %cond.false3353, %cond.true3352
  %cond3355 = phi i32 [ %3064, %cond.true3352 ], [ %3065, %cond.false3353 ]
  store i32 %cond3355, ptr %tmp3349, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y3348) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x3347) #4
  %3066 = load i32, ptr %tmp3349, align 4, !tbaa !8
  store i32 %3066, ptr %i__3, align 4, !tbaa !8
  %3067 = load i32, ptr %i__, align 4, !tbaa !8
  %add3356 = add nsw i32 %3067, 1
  store i32 %add3356, ptr %k, align 4, !tbaa !8
  br label %for.cond3357

for.cond3357:                                     ; preds = %for.inc3381, %cond.end3354
  %3068 = load i32, ptr %k, align 4, !tbaa !8
  %3069 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp3358 = icmp sle i32 %3068, %3069
  br i1 %cmp3358, label %for.body3360, label %for.end3383

for.body3360:                                     ; preds = %for.cond3357
  %3070 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %3071 = load i32, ptr %k, align 4, !tbaa !8
  %3072 = load i32, ptr %i__, align 4, !tbaa !8
  %sub3361 = sub nsw i32 %3071, %3072
  %add3362 = add nsw i32 %sub3361, 1
  %3073 = load i32, ptr %i__, align 4, !tbaa !8
  %3074 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul3363 = mul nsw i32 %3073, %3074
  %add3364 = add nsw i32 %add3362, %mul3363
  %idxprom3365 = sext i32 %add3364 to i64
  %arrayidx3366 = getelementptr inbounds float, ptr %3070, i64 %idxprom3365
  %3075 = load float, ptr %arrayidx3366, align 4, !tbaa !10
  %3076 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3077 = load i32, ptr %i__, align 4, !tbaa !8
  %3078 = load i32, ptr %j, align 4, !tbaa !8
  %sub3367 = sub nsw i32 %3077, %3078
  %add3368 = add nsw i32 %sub3367, 1
  %3079 = load i32, ptr %j, align 4, !tbaa !8
  %3080 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3369 = mul nsw i32 %3079, %3080
  %add3370 = add nsw i32 %add3368, %mul3369
  %idxprom3371 = sext i32 %add3370 to i64
  %arrayidx3372 = getelementptr inbounds float, ptr %3076, i64 %idxprom3371
  %3081 = load float, ptr %arrayidx3372, align 4, !tbaa !10
  %3082 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3083 = load i32, ptr %k, align 4, !tbaa !8
  %3084 = load i32, ptr %j, align 4, !tbaa !8
  %sub3374 = sub nsw i32 %3083, %3084
  %add3375 = add nsw i32 %sub3374, 1
  %3085 = load i32, ptr %j, align 4, !tbaa !8
  %3086 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3376 = mul nsw i32 %3085, %3086
  %add3377 = add nsw i32 %add3375, %mul3376
  %idxprom3378 = sext i32 %add3377 to i64
  %arrayidx3379 = getelementptr inbounds float, ptr %3082, i64 %idxprom3378
  %3087 = load float, ptr %arrayidx3379, align 4, !tbaa !10
  %neg3380 = fneg float %3075
  %3088 = call float @llvm.fmuladd.f32(float %neg3380, float %3081, float %3087)
  store float %3088, ptr %arrayidx3379, align 4, !tbaa !10
  br label %for.inc3381

for.inc3381:                                      ; preds = %for.body3360
  %3089 = load i32, ptr %k, align 4, !tbaa !8
  %inc3382 = add nsw i32 %3089, 1
  store i32 %inc3382, ptr %k, align 4, !tbaa !8
  br label %for.cond3357, !llvm.loop !87

for.end3383:                                      ; preds = %for.cond3357
  br label %for.inc3384

for.inc3384:                                      ; preds = %for.end3383
  %3090 = load i32, ptr %j, align 4, !tbaa !8
  %inc3385 = add nsw i32 %3090, 1
  store i32 %inc3385, ptr %j, align 4, !tbaa !8
  br label %for.cond3341, !llvm.loop !88

for.end3386:                                      ; preds = %for.cond3341
  %3091 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool3387 = icmp ne i32 %3091, 0
  br i1 %tobool3387, label %if.then3388, label %if.end3413

if.then3388:                                      ; preds = %for.end3386
  %3092 = load float, ptr %bii, align 4, !tbaa !10
  %div3389 = fdiv float 1.000000e+00, %3092
  store float %div3389, ptr %r__1, align 4, !tbaa !10
  %3093 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %3094 = load i32, ptr %i__, align 4, !tbaa !8
  %3095 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul3390 = mul nsw i32 %3094, %3095
  %add3391 = add nsw i32 %mul3390, 1
  %idxprom3392 = sext i32 %add3391 to i64
  %arrayidx3393 = getelementptr inbounds float, ptr %3093, i64 %idxprom3392
  %call3394 = call i32 @sscal_(ptr noundef %nx, ptr noundef %r__1, ptr noundef %arrayidx3393, ptr noundef @c__1)
  %3096 = load i32, ptr %kbt, align 4, !tbaa !8
  %cmp3395 = icmp sgt i32 %3096, 0
  br i1 %cmp3395, label %if.then3397, label %if.end3412

if.then3397:                                      ; preds = %if.then3388
  %3097 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %3098 = load i32, ptr %i__, align 4, !tbaa !8
  %3099 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul3398 = mul nsw i32 %3098, %3099
  %add3399 = add nsw i32 %mul3398, 1
  %idxprom3400 = sext i32 %add3399 to i64
  %arrayidx3401 = getelementptr inbounds float, ptr %3097, i64 %idxprom3400
  %3100 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %3101 = load i32, ptr %i__, align 4, !tbaa !8
  %3102 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul3402 = mul nsw i32 %3101, %3102
  %add3403 = add nsw i32 %mul3402, 2
  %idxprom3404 = sext i32 %add3403 to i64
  %arrayidx3405 = getelementptr inbounds float, ptr %3100, i64 %idxprom3404
  %3103 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %3104 = load i32, ptr %i__, align 4, !tbaa !8
  %add3406 = add nsw i32 %3104, 1
  %3105 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul3407 = mul nsw i32 %add3406, %3105
  %add3408 = add nsw i32 %mul3407, 1
  %idxprom3409 = sext i32 %add3408 to i64
  %arrayidx3410 = getelementptr inbounds float, ptr %3103, i64 %idxprom3409
  %3106 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %call3411 = call i32 @sger_(ptr noundef %nx, ptr noundef %kbt, ptr noundef @c_b20, ptr noundef %arrayidx3401, ptr noundef @c__1, ptr noundef %arrayidx3405, ptr noundef @c__1, ptr noundef %arrayidx3410, ptr noundef %3106)
  br label %if.end3412

if.end3412:                                       ; preds = %if.then3397, %if.then3388
  br label %if.end3413

if.end3413:                                       ; preds = %if.end3412, %for.end3386
  %3107 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3108 = load i32, ptr %i__, align 4, !tbaa !8
  %3109 = load i32, ptr %i1, align 4, !tbaa !8
  %sub3414 = sub nsw i32 %3108, %3109
  %add3415 = add nsw i32 %sub3414, 1
  %3110 = load i32, ptr %i1, align 4, !tbaa !8
  %3111 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3416 = mul nsw i32 %3110, %3111
  %add3417 = add nsw i32 %add3415, %mul3416
  %idxprom3418 = sext i32 %add3417 to i64
  %arrayidx3419 = getelementptr inbounds float, ptr %3107, i64 %idxprom3418
  %3112 = load float, ptr %arrayidx3419, align 4, !tbaa !10
  store float %3112, ptr %ra1, align 4, !tbaa !10
  br label %if.end3420

if.end3420:                                       ; preds = %if.end3413, %if.else3182
  %3113 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3114 = load i32, ptr %3113, align 4, !tbaa !8
  %sub3421 = sub nsw i32 %3114, 1
  store i32 %sub3421, ptr %i__4, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond3422

for.cond3422:                                     ; preds = %for.inc3727, %if.end3420
  %3115 = load i32, ptr %k, align 4, !tbaa !8
  %3116 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp3423 = icmp sle i32 %3115, %3116
  br i1 %cmp3423, label %for.body3425, label %for.end3729

for.body3425:                                     ; preds = %for.cond3422
  %3117 = load i32, ptr %update, align 4, !tbaa !8
  %tobool3426 = icmp ne i32 %3117, 0
  br i1 %tobool3426, label %if.then3427, label %if.end3508

if.then3427:                                      ; preds = %for.body3425
  %3118 = load i32, ptr %i__, align 4, !tbaa !8
  %3119 = load i32, ptr %k, align 4, !tbaa !8
  %add3428 = add nsw i32 %3118, %3119
  %3120 = load i32, ptr %ka1, align 4, !tbaa !8
  %sub3429 = sub nsw i32 %add3428, %3120
  %cmp3430 = icmp sgt i32 %sub3429, 0
  br i1 %cmp3430, label %land.lhs.true3432, label %if.end3507

land.lhs.true3432:                                ; preds = %if.then3427
  %3121 = load i32, ptr %i__, align 4, !tbaa !8
  %3122 = load i32, ptr %k, align 4, !tbaa !8
  %add3433 = add nsw i32 %3121, %3122
  %3123 = load i32, ptr %m, align 4, !tbaa !8
  %cmp3434 = icmp slt i32 %add3433, %3123
  br i1 %cmp3434, label %if.then3436, label %if.end3507

if.then3436:                                      ; preds = %land.lhs.true3432
  %3124 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3125 = load i32, ptr %ka1, align 4, !tbaa !8
  %3126 = load i32, ptr %k, align 4, !tbaa !8
  %sub3437 = sub nsw i32 %3125, %3126
  %3127 = load i32, ptr %i__, align 4, !tbaa !8
  %3128 = load i32, ptr %k, align 4, !tbaa !8
  %add3438 = add nsw i32 %3127, %3128
  %3129 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3130 = load i32, ptr %3129, align 4, !tbaa !8
  %sub3439 = sub nsw i32 %add3438, %3130
  %3131 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3440 = mul nsw i32 %sub3439, %3131
  %add3441 = add nsw i32 %sub3437, %mul3440
  %idxprom3442 = sext i32 %add3441 to i64
  %arrayidx3443 = getelementptr inbounds float, ptr %3124, i64 %idxprom3442
  %3132 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3133 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3134 = load i32, ptr %3133, align 4, !tbaa !8
  %3135 = load i32, ptr %i__, align 4, !tbaa !8
  %add3444 = add nsw i32 %3134, %3135
  %3136 = load i32, ptr %k, align 4, !tbaa !8
  %add3445 = add nsw i32 %add3444, %3136
  %3137 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3138 = load i32, ptr %3137, align 4, !tbaa !8
  %sub3446 = sub nsw i32 %add3445, %3138
  %idxprom3447 = sext i32 %sub3446 to i64
  %arrayidx3448 = getelementptr inbounds float, ptr %3132, i64 %idxprom3447
  %3139 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3140 = load i32, ptr %i__, align 4, !tbaa !8
  %3141 = load i32, ptr %k, align 4, !tbaa !8
  %add3449 = add nsw i32 %3140, %3141
  %3142 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3143 = load i32, ptr %3142, align 4, !tbaa !8
  %sub3450 = sub nsw i32 %add3449, %3143
  %idxprom3451 = sext i32 %sub3450 to i64
  %arrayidx3452 = getelementptr inbounds float, ptr %3139, i64 %idxprom3451
  %call3453 = call i32 @slartg_(ptr noundef %arrayidx3443, ptr noundef %ra1, ptr noundef %arrayidx3448, ptr noundef %arrayidx3452, ptr noundef %ra)
  %3144 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %3145 = load i32, ptr %k, align 4, !tbaa !8
  %add3454 = add nsw i32 %3145, 1
  %3146 = load i32, ptr %i__, align 4, !tbaa !8
  %3147 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul3455 = mul nsw i32 %3146, %3147
  %add3456 = add nsw i32 %add3454, %mul3455
  %idxprom3457 = sext i32 %add3456 to i64
  %arrayidx3458 = getelementptr inbounds float, ptr %3144, i64 %idxprom3457
  %3148 = load float, ptr %arrayidx3458, align 4, !tbaa !10
  %fneg3459 = fneg float %3148
  %3149 = load float, ptr %ra1, align 4, !tbaa !10
  %mul3460 = fmul float %fneg3459, %3149
  store float %mul3460, ptr %t, align 4, !tbaa !10
  %3150 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3151 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3152 = load i32, ptr %3151, align 4, !tbaa !8
  %3153 = load i32, ptr %i__, align 4, !tbaa !8
  %add3461 = add nsw i32 %3152, %3153
  %3154 = load i32, ptr %k, align 4, !tbaa !8
  %add3462 = add nsw i32 %add3461, %3154
  %3155 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3156 = load i32, ptr %3155, align 4, !tbaa !8
  %sub3463 = sub nsw i32 %add3462, %3156
  %idxprom3464 = sext i32 %sub3463 to i64
  %arrayidx3465 = getelementptr inbounds float, ptr %3150, i64 %idxprom3464
  %3157 = load float, ptr %arrayidx3465, align 4, !tbaa !10
  %3158 = load float, ptr %t, align 4, !tbaa !10
  %3159 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3160 = load i32, ptr %i__, align 4, !tbaa !8
  %3161 = load i32, ptr %k, align 4, !tbaa !8
  %add3467 = add nsw i32 %3160, %3161
  %3162 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3163 = load i32, ptr %3162, align 4, !tbaa !8
  %sub3468 = sub nsw i32 %add3467, %3163
  %idxprom3469 = sext i32 %sub3468 to i64
  %arrayidx3470 = getelementptr inbounds float, ptr %3159, i64 %idxprom3469
  %3164 = load float, ptr %arrayidx3470, align 4, !tbaa !10
  %3165 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3166 = load i32, ptr %ka1, align 4, !tbaa !8
  %3167 = load i32, ptr %i__, align 4, !tbaa !8
  %3168 = load i32, ptr %k, align 4, !tbaa !8
  %add3471 = add nsw i32 %3167, %3168
  %3169 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3170 = load i32, ptr %3169, align 4, !tbaa !8
  %sub3472 = sub nsw i32 %add3471, %3170
  %3171 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3473 = mul nsw i32 %sub3472, %3171
  %add3474 = add nsw i32 %3166, %mul3473
  %idxprom3475 = sext i32 %add3474 to i64
  %arrayidx3476 = getelementptr inbounds float, ptr %3165, i64 %idxprom3475
  %3172 = load float, ptr %arrayidx3476, align 4, !tbaa !10
  %mul3477 = fmul float %3164, %3172
  %neg3478 = fneg float %mul3477
  %3173 = call float @llvm.fmuladd.f32(float %3157, float %3158, float %neg3478)
  %3174 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3175 = load i32, ptr %m, align 4, !tbaa !8
  %3176 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3177 = load i32, ptr %3176, align 4, !tbaa !8
  %sub3479 = sub nsw i32 %3175, %3177
  %3178 = load i32, ptr %i__, align 4, !tbaa !8
  %add3480 = add nsw i32 %sub3479, %3178
  %3179 = load i32, ptr %k, align 4, !tbaa !8
  %add3481 = add nsw i32 %add3480, %3179
  %idxprom3482 = sext i32 %add3481 to i64
  %arrayidx3483 = getelementptr inbounds float, ptr %3174, i64 %idxprom3482
  store float %3173, ptr %arrayidx3483, align 4, !tbaa !10
  %3180 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3181 = load i32, ptr %i__, align 4, !tbaa !8
  %3182 = load i32, ptr %k, align 4, !tbaa !8
  %add3484 = add nsw i32 %3181, %3182
  %3183 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3184 = load i32, ptr %3183, align 4, !tbaa !8
  %sub3485 = sub nsw i32 %add3484, %3184
  %idxprom3486 = sext i32 %sub3485 to i64
  %arrayidx3487 = getelementptr inbounds float, ptr %3180, i64 %idxprom3486
  %3185 = load float, ptr %arrayidx3487, align 4, !tbaa !10
  %3186 = load float, ptr %t, align 4, !tbaa !10
  %3187 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3188 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3189 = load i32, ptr %3188, align 4, !tbaa !8
  %3190 = load i32, ptr %i__, align 4, !tbaa !8
  %add3489 = add nsw i32 %3189, %3190
  %3191 = load i32, ptr %k, align 4, !tbaa !8
  %add3490 = add nsw i32 %add3489, %3191
  %3192 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3193 = load i32, ptr %3192, align 4, !tbaa !8
  %sub3491 = sub nsw i32 %add3490, %3193
  %idxprom3492 = sext i32 %sub3491 to i64
  %arrayidx3493 = getelementptr inbounds float, ptr %3187, i64 %idxprom3492
  %3194 = load float, ptr %arrayidx3493, align 4, !tbaa !10
  %3195 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3196 = load i32, ptr %ka1, align 4, !tbaa !8
  %3197 = load i32, ptr %i__, align 4, !tbaa !8
  %3198 = load i32, ptr %k, align 4, !tbaa !8
  %add3494 = add nsw i32 %3197, %3198
  %3199 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3200 = load i32, ptr %3199, align 4, !tbaa !8
  %sub3495 = sub nsw i32 %add3494, %3200
  %3201 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3496 = mul nsw i32 %sub3495, %3201
  %add3497 = add nsw i32 %3196, %mul3496
  %idxprom3498 = sext i32 %add3497 to i64
  %arrayidx3499 = getelementptr inbounds float, ptr %3195, i64 %idxprom3498
  %3202 = load float, ptr %arrayidx3499, align 4, !tbaa !10
  %mul3500 = fmul float %3194, %3202
  %3203 = call float @llvm.fmuladd.f32(float %3185, float %3186, float %mul3500)
  %3204 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3205 = load i32, ptr %ka1, align 4, !tbaa !8
  %3206 = load i32, ptr %i__, align 4, !tbaa !8
  %3207 = load i32, ptr %k, align 4, !tbaa !8
  %add3501 = add nsw i32 %3206, %3207
  %3208 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3209 = load i32, ptr %3208, align 4, !tbaa !8
  %sub3502 = sub nsw i32 %add3501, %3209
  %3210 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3503 = mul nsw i32 %sub3502, %3210
  %add3504 = add nsw i32 %3205, %mul3503
  %idxprom3505 = sext i32 %add3504 to i64
  %arrayidx3506 = getelementptr inbounds float, ptr %3204, i64 %idxprom3505
  store float %3203, ptr %arrayidx3506, align 4, !tbaa !10
  %3211 = load float, ptr %ra, align 4, !tbaa !10
  store float %3211, ptr %ra1, align 4, !tbaa !10
  br label %if.end3507

if.end3507:                                       ; preds = %if.then3436, %land.lhs.true3432, %if.then3427
  br label %if.end3508

if.end3508:                                       ; preds = %if.end3507, %for.body3425
  store i32 1, ptr %i__3, align 4, !tbaa !8
  %3212 = load i32, ptr %k, align 4, !tbaa !8
  %3213 = load i32, ptr %i0, align 4, !tbaa !8
  %add3509 = add nsw i32 %3212, %3213
  %3214 = load i32, ptr %m, align 4, !tbaa !8
  %sub3510 = sub nsw i32 %add3509, %3214
  %add3511 = add nsw i32 %sub3510, 1
  store i32 %add3511, ptr %i__1, align 4, !tbaa !8
  %3215 = load i32, ptr %i__, align 4, !tbaa !8
  %3216 = load i32, ptr %k, align 4, !tbaa !8
  %add3512 = add nsw i32 %3215, %3216
  %add3513 = add nsw i32 %add3512, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x3514) #4
  %3217 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %3217, ptr %_x3514, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y3515) #4
  %3218 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %3218, ptr %_y3515, align 4, !tbaa !8
  %3219 = load i32, ptr %_x3514, align 4, !tbaa !8
  %3220 = load i32, ptr %_y3515, align 4, !tbaa !8
  %cmp3517 = icmp sgt i32 %3219, %3220
  br i1 %cmp3517, label %cond.true3519, label %cond.false3520

cond.true3519:                                    ; preds = %if.end3508
  %3221 = load i32, ptr %_x3514, align 4, !tbaa !8
  br label %cond.end3521

cond.false3520:                                   ; preds = %if.end3508
  %3222 = load i32, ptr %_y3515, align 4, !tbaa !8
  br label %cond.end3521

cond.end3521:                                     ; preds = %cond.false3520, %cond.true3519
  %cond3522 = phi i32 [ %3221, %cond.true3519 ], [ %3222, %cond.false3520 ]
  store i32 %cond3522, ptr %tmp3516, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y3515) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x3514) #4
  %3223 = load i32, ptr %tmp3516, align 4, !tbaa !8
  %3224 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul3523 = mul nsw i32 %3223, %3224
  %sub3524 = sub nsw i32 %add3513, %mul3523
  store i32 %sub3524, ptr %j2, align 4, !tbaa !8
  %3225 = load i32, ptr %j2, align 4, !tbaa !8
  %3226 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3227 = load i32, ptr %3226, align 4, !tbaa !8
  %add3525 = add nsw i32 %3225, %3227
  %sub3526 = sub nsw i32 %add3525, 1
  %3228 = load i32, ptr %ka1, align 4, !tbaa !8
  %div3527 = sdiv i32 %sub3526, %3228
  store i32 %div3527, ptr %nr, align 4, !tbaa !8
  %3229 = load i32, ptr %j2, align 4, !tbaa !8
  %3230 = load i32, ptr %nr, align 4, !tbaa !8
  %sub3528 = sub nsw i32 %3230, 1
  %3231 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul3529 = mul nsw i32 %sub3528, %3231
  %sub3530 = sub nsw i32 %3229, %mul3529
  store i32 %sub3530, ptr %j1, align 4, !tbaa !8
  %3232 = load i32, ptr %update, align 4, !tbaa !8
  %tobool3531 = icmp ne i32 %3232, 0
  br i1 %tobool3531, label %if.then3532, label %if.else3546

if.then3532:                                      ; preds = %cond.end3521
  %3233 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %3233, ptr %i__3, align 4, !tbaa !8
  %3234 = load i32, ptr %i__, align 4, !tbaa !8
  %3235 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3236 = load i32, ptr %3235, align 4, !tbaa !8
  %shl3533 = shl i32 %3236, 1
  %sub3534 = sub nsw i32 %3234, %shl3533
  %3237 = load i32, ptr %k, align 4, !tbaa !8
  %add3535 = add nsw i32 %sub3534, %3237
  %sub3536 = sub nsw i32 %add3535, 1
  store i32 %sub3536, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x3537) #4
  %3238 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %3238, ptr %_x3537, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y3538) #4
  %3239 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %3239, ptr %_y3538, align 4, !tbaa !8
  %3240 = load i32, ptr %_x3537, align 4, !tbaa !8
  %3241 = load i32, ptr %_y3538, align 4, !tbaa !8
  %cmp3540 = icmp slt i32 %3240, %3241
  br i1 %cmp3540, label %cond.true3542, label %cond.false3543

cond.true3542:                                    ; preds = %if.then3532
  %3242 = load i32, ptr %_x3537, align 4, !tbaa !8
  br label %cond.end3544

cond.false3543:                                   ; preds = %if.then3532
  %3243 = load i32, ptr %_y3538, align 4, !tbaa !8
  br label %cond.end3544

cond.end3544:                                     ; preds = %cond.false3543, %cond.true3542
  %cond3545 = phi i32 [ %3242, %cond.true3542 ], [ %3243, %cond.false3543 ]
  store i32 %cond3545, ptr %tmp3539, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y3538) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x3537) #4
  %3244 = load i32, ptr %tmp3539, align 4, !tbaa !8
  store i32 %3244, ptr %j2t, align 4, !tbaa !8
  br label %if.end3547

if.else3546:                                      ; preds = %cond.end3521
  %3245 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %3245, ptr %j2t, align 4, !tbaa !8
  br label %if.end3547

if.end3547:                                       ; preds = %if.else3546, %cond.end3544
  %3246 = load i32, ptr %j2t, align 4, !tbaa !8
  %3247 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3248 = load i32, ptr %3247, align 4, !tbaa !8
  %add3548 = add nsw i32 %3246, %3248
  %sub3549 = sub nsw i32 %add3548, 1
  %3249 = load i32, ptr %ka1, align 4, !tbaa !8
  %div3550 = sdiv i32 %sub3549, %3249
  store i32 %div3550, ptr %nrt, align 4, !tbaa !8
  %3250 = load i32, ptr %j2t, align 4, !tbaa !8
  store i32 %3250, ptr %i__3, align 4, !tbaa !8
  %3251 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %3251, ptr %i__1, align 4, !tbaa !8
  %3252 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %3252, ptr %j, align 4, !tbaa !8
  br label %for.cond3551

for.cond3551:                                     ; preds = %for.inc3586, %if.end3547
  %3253 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp3552 = icmp slt i32 %3253, 0
  br i1 %cmp3552, label %cond.true3554, label %cond.false3557

cond.true3554:                                    ; preds = %for.cond3551
  %3254 = load i32, ptr %j, align 4, !tbaa !8
  %3255 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp3555 = icmp sge i32 %3254, %3255
  %conv3556 = zext i1 %cmp3555 to i32
  br label %cond.end3560

cond.false3557:                                   ; preds = %for.cond3551
  %3256 = load i32, ptr %j, align 4, !tbaa !8
  %3257 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp3558 = icmp sle i32 %3256, %3257
  %conv3559 = zext i1 %cmp3558 to i32
  br label %cond.end3560

cond.end3560:                                     ; preds = %cond.false3557, %cond.true3554
  %cond3561 = phi i32 [ %conv3556, %cond.true3554 ], [ %conv3559, %cond.false3557 ]
  %tobool3562 = icmp ne i32 %cond3561, 0
  br i1 %tobool3562, label %for.body3563, label %for.end3588

for.body3563:                                     ; preds = %cond.end3560
  %3258 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3259 = load i32, ptr %ka1, align 4, !tbaa !8
  %3260 = load i32, ptr %j, align 4, !tbaa !8
  %sub3564 = sub nsw i32 %3260, 1
  %3261 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3565 = mul nsw i32 %sub3564, %3261
  %add3566 = add nsw i32 %3259, %mul3565
  %idxprom3567 = sext i32 %add3566 to i64
  %arrayidx3568 = getelementptr inbounds float, ptr %3258, i64 %idxprom3567
  %3262 = load float, ptr %arrayidx3568, align 4, !tbaa !10
  %3263 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3264 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom3569 = sext i32 %3264 to i64
  %arrayidx3570 = getelementptr inbounds float, ptr %3263, i64 %idxprom3569
  %3265 = load float, ptr %arrayidx3570, align 4, !tbaa !10
  %mul3571 = fmul float %3265, %3262
  store float %mul3571, ptr %arrayidx3570, align 4, !tbaa !10
  %3266 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3267 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3268 = load i32, ptr %3267, align 4, !tbaa !8
  %3269 = load i32, ptr %j, align 4, !tbaa !8
  %add3572 = add nsw i32 %3268, %3269
  %idxprom3573 = sext i32 %add3572 to i64
  %arrayidx3574 = getelementptr inbounds float, ptr %3266, i64 %idxprom3573
  %3270 = load float, ptr %arrayidx3574, align 4, !tbaa !10
  %3271 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3272 = load i32, ptr %ka1, align 4, !tbaa !8
  %3273 = load i32, ptr %j, align 4, !tbaa !8
  %sub3575 = sub nsw i32 %3273, 1
  %3274 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3576 = mul nsw i32 %sub3575, %3274
  %add3577 = add nsw i32 %3272, %mul3576
  %idxprom3578 = sext i32 %add3577 to i64
  %arrayidx3579 = getelementptr inbounds float, ptr %3271, i64 %idxprom3578
  %3275 = load float, ptr %arrayidx3579, align 4, !tbaa !10
  %mul3580 = fmul float %3270, %3275
  %3276 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3277 = load i32, ptr %ka1, align 4, !tbaa !8
  %3278 = load i32, ptr %j, align 4, !tbaa !8
  %sub3581 = sub nsw i32 %3278, 1
  %3279 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3582 = mul nsw i32 %sub3581, %3279
  %add3583 = add nsw i32 %3277, %mul3582
  %idxprom3584 = sext i32 %add3583 to i64
  %arrayidx3585 = getelementptr inbounds float, ptr %3276, i64 %idxprom3584
  store float %mul3580, ptr %arrayidx3585, align 4, !tbaa !10
  br label %for.inc3586

for.inc3586:                                      ; preds = %for.body3563
  %3280 = load i32, ptr %i__1, align 4, !tbaa !8
  %3281 = load i32, ptr %j, align 4, !tbaa !8
  %add3587 = add nsw i32 %3281, %3280
  store i32 %add3587, ptr %j, align 4, !tbaa !8
  br label %for.cond3551, !llvm.loop !89

for.end3588:                                      ; preds = %cond.end3560
  %3282 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp3589 = icmp sgt i32 %3282, 0
  br i1 %cmp3589, label %if.then3591, label %if.end3602

if.then3591:                                      ; preds = %for.end3588
  %3283 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3284 = load i32, ptr %ka1, align 4, !tbaa !8
  %3285 = load i32, ptr %j1, align 4, !tbaa !8
  %3286 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3592 = mul nsw i32 %3285, %3286
  %add3593 = add nsw i32 %3284, %mul3592
  %idxprom3594 = sext i32 %add3593 to i64
  %arrayidx3595 = getelementptr inbounds float, ptr %3283, i64 %idxprom3594
  %3287 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3288 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom3596 = sext i32 %3288 to i64
  %arrayidx3597 = getelementptr inbounds float, ptr %3287, i64 %idxprom3596
  %3289 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3290 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3291 = load i32, ptr %3290, align 4, !tbaa !8
  %3292 = load i32, ptr %j1, align 4, !tbaa !8
  %add3598 = add nsw i32 %3291, %3292
  %idxprom3599 = sext i32 %add3598 to i64
  %arrayidx3600 = getelementptr inbounds float, ptr %3289, i64 %idxprom3599
  %call3601 = call i32 @slargv_(ptr noundef %nrt, ptr noundef %arrayidx3595, ptr noundef %inca, ptr noundef %arrayidx3597, ptr noundef %ka1, ptr noundef %arrayidx3600, ptr noundef %ka1)
  br label %if.end3602

if.end3602:                                       ; preds = %if.then3591, %for.end3588
  %3293 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp3603 = icmp sgt i32 %3293, 0
  br i1 %cmp3603, label %if.then3605, label %if.end3651

if.then3605:                                      ; preds = %if.end3602
  %3294 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3295 = load i32, ptr %3294, align 4, !tbaa !8
  %sub3606 = sub nsw i32 %3295, 1
  store i32 %sub3606, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond3607

for.cond3607:                                     ; preds = %for.inc3628, %if.then3605
  %3296 = load i32, ptr %l, align 4, !tbaa !8
  %3297 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp3608 = icmp sle i32 %3296, %3297
  br i1 %cmp3608, label %for.body3610, label %for.end3630

for.body3610:                                     ; preds = %for.cond3607
  %3298 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3299 = load i32, ptr %l, align 4, !tbaa !8
  %add3611 = add nsw i32 %3299, 1
  %3300 = load i32, ptr %j1, align 4, !tbaa !8
  %3301 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3612 = mul nsw i32 %3300, %3301
  %add3613 = add nsw i32 %add3611, %mul3612
  %idxprom3614 = sext i32 %add3613 to i64
  %arrayidx3615 = getelementptr inbounds float, ptr %3298, i64 %idxprom3614
  %3302 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3303 = load i32, ptr %l, align 4, !tbaa !8
  %add3616 = add nsw i32 %3303, 2
  %3304 = load i32, ptr %j1, align 4, !tbaa !8
  %sub3617 = sub nsw i32 %3304, 1
  %3305 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3618 = mul nsw i32 %sub3617, %3305
  %add3619 = add nsw i32 %add3616, %mul3618
  %idxprom3620 = sext i32 %add3619 to i64
  %arrayidx3621 = getelementptr inbounds float, ptr %3302, i64 %idxprom3620
  %3306 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3307 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3308 = load i32, ptr %3307, align 4, !tbaa !8
  %3309 = load i32, ptr %j1, align 4, !tbaa !8
  %add3622 = add nsw i32 %3308, %3309
  %idxprom3623 = sext i32 %add3622 to i64
  %arrayidx3624 = getelementptr inbounds float, ptr %3306, i64 %idxprom3623
  %3310 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3311 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom3625 = sext i32 %3311 to i64
  %arrayidx3626 = getelementptr inbounds float, ptr %3310, i64 %idxprom3625
  %call3627 = call i32 @slartv_(ptr noundef %nr, ptr noundef %arrayidx3615, ptr noundef %inca, ptr noundef %arrayidx3621, ptr noundef %inca, ptr noundef %arrayidx3624, ptr noundef %arrayidx3626, ptr noundef %ka1)
  br label %for.inc3628

for.inc3628:                                      ; preds = %for.body3610
  %3312 = load i32, ptr %l, align 4, !tbaa !8
  %inc3629 = add nsw i32 %3312, 1
  store i32 %inc3629, ptr %l, align 4, !tbaa !8
  br label %for.cond3607, !llvm.loop !90

for.end3630:                                      ; preds = %for.cond3607
  %3313 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3314 = load i32, ptr %j1, align 4, !tbaa !8
  %3315 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3631 = mul nsw i32 %3314, %3315
  %add3632 = add nsw i32 %mul3631, 1
  %idxprom3633 = sext i32 %add3632 to i64
  %arrayidx3634 = getelementptr inbounds float, ptr %3313, i64 %idxprom3633
  %3316 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3317 = load i32, ptr %j1, align 4, !tbaa !8
  %sub3635 = sub nsw i32 %3317, 1
  %3318 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3636 = mul nsw i32 %sub3635, %3318
  %add3637 = add nsw i32 %mul3636, 1
  %idxprom3638 = sext i32 %add3637 to i64
  %arrayidx3639 = getelementptr inbounds float, ptr %3316, i64 %idxprom3638
  %3319 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3320 = load i32, ptr %j1, align 4, !tbaa !8
  %sub3640 = sub nsw i32 %3320, 1
  %3321 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3641 = mul nsw i32 %sub3640, %3321
  %add3642 = add nsw i32 %mul3641, 2
  %idxprom3643 = sext i32 %add3642 to i64
  %arrayidx3644 = getelementptr inbounds float, ptr %3319, i64 %idxprom3643
  %3322 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3323 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3324 = load i32, ptr %3323, align 4, !tbaa !8
  %3325 = load i32, ptr %j1, align 4, !tbaa !8
  %add3645 = add nsw i32 %3324, %3325
  %idxprom3646 = sext i32 %add3645 to i64
  %arrayidx3647 = getelementptr inbounds float, ptr %3322, i64 %idxprom3646
  %3326 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3327 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom3648 = sext i32 %3327 to i64
  %arrayidx3649 = getelementptr inbounds float, ptr %3326, i64 %idxprom3648
  %call3650 = call i32 @slar2v_(ptr noundef %nr, ptr noundef %arrayidx3634, ptr noundef %arrayidx3639, ptr noundef %arrayidx3644, ptr noundef %inca, ptr noundef %arrayidx3647, ptr noundef %arrayidx3649, ptr noundef %ka1)
  br label %if.end3651

if.end3651:                                       ; preds = %for.end3630, %if.end3602
  %3328 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3329 = load i32, ptr %3328, align 4, !tbaa !8
  %3330 = load i32, ptr %k, align 4, !tbaa !8
  %sub3652 = sub nsw i32 %3329, %3330
  %add3653 = add nsw i32 %sub3652, 1
  store i32 %add3653, ptr %i__1, align 4, !tbaa !8
  %3331 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3332 = load i32, ptr %3331, align 4, !tbaa !8
  %sub3654 = sub nsw i32 %3332, 1
  store i32 %sub3654, ptr %l, align 4, !tbaa !8
  br label %for.cond3655

for.cond3655:                                     ; preds = %for.inc3690, %if.end3651
  %3333 = load i32, ptr %l, align 4, !tbaa !8
  %3334 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp3656 = icmp sge i32 %3333, %3334
  br i1 %cmp3656, label %for.body3658, label %for.end3692

for.body3658:                                     ; preds = %for.cond3655
  %3335 = load i32, ptr %j2, align 4, !tbaa !8
  %3336 = load i32, ptr %l, align 4, !tbaa !8
  %add3659 = add nsw i32 %3335, %3336
  %sub3660 = sub nsw i32 %add3659, 1
  %3337 = load i32, ptr %ka1, align 4, !tbaa !8
  %div3661 = sdiv i32 %sub3660, %3337
  store i32 %div3661, ptr %nrt, align 4, !tbaa !8
  %3338 = load i32, ptr %j2, align 4, !tbaa !8
  %3339 = load i32, ptr %nrt, align 4, !tbaa !8
  %sub3662 = sub nsw i32 %3339, 1
  %3340 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul3663 = mul nsw i32 %sub3662, %3340
  %sub3664 = sub nsw i32 %3338, %mul3663
  store i32 %sub3664, ptr %j1t, align 4, !tbaa !8
  %3341 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp3665 = icmp sgt i32 %3341, 0
  br i1 %cmp3665, label %if.then3667, label %if.end3689

if.then3667:                                      ; preds = %for.body3658
  %3342 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3343 = load i32, ptr %ka1, align 4, !tbaa !8
  %3344 = load i32, ptr %l, align 4, !tbaa !8
  %sub3668 = sub nsw i32 %3343, %3344
  %add3669 = add nsw i32 %sub3668, 1
  %3345 = load i32, ptr %j1t, align 4, !tbaa !8
  %3346 = load i32, ptr %ka1, align 4, !tbaa !8
  %sub3670 = sub nsw i32 %3345, %3346
  %3347 = load i32, ptr %l, align 4, !tbaa !8
  %add3671 = add nsw i32 %sub3670, %3347
  %3348 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3672 = mul nsw i32 %add3671, %3348
  %add3673 = add nsw i32 %add3669, %mul3672
  %idxprom3674 = sext i32 %add3673 to i64
  %arrayidx3675 = getelementptr inbounds float, ptr %3342, i64 %idxprom3674
  %3349 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3350 = load i32, ptr %ka1, align 4, !tbaa !8
  %3351 = load i32, ptr %l, align 4, !tbaa !8
  %sub3676 = sub nsw i32 %3350, %3351
  %3352 = load i32, ptr %j1t, align 4, !tbaa !8
  %3353 = load i32, ptr %ka1, align 4, !tbaa !8
  %sub3677 = sub nsw i32 %3352, %3353
  %3354 = load i32, ptr %l, align 4, !tbaa !8
  %add3678 = add nsw i32 %sub3677, %3354
  %3355 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3679 = mul nsw i32 %add3678, %3355
  %add3680 = add nsw i32 %sub3676, %mul3679
  %idxprom3681 = sext i32 %add3680 to i64
  %arrayidx3682 = getelementptr inbounds float, ptr %3349, i64 %idxprom3681
  %3356 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3357 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3358 = load i32, ptr %3357, align 4, !tbaa !8
  %3359 = load i32, ptr %j1t, align 4, !tbaa !8
  %add3683 = add nsw i32 %3358, %3359
  %idxprom3684 = sext i32 %add3683 to i64
  %arrayidx3685 = getelementptr inbounds float, ptr %3356, i64 %idxprom3684
  %3360 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3361 = load i32, ptr %j1t, align 4, !tbaa !8
  %idxprom3686 = sext i32 %3361 to i64
  %arrayidx3687 = getelementptr inbounds float, ptr %3360, i64 %idxprom3686
  %call3688 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx3675, ptr noundef %inca, ptr noundef %arrayidx3682, ptr noundef %inca, ptr noundef %arrayidx3685, ptr noundef %arrayidx3687, ptr noundef %ka1)
  br label %if.end3689

if.end3689:                                       ; preds = %if.then3667, %for.body3658
  br label %for.inc3690

for.inc3690:                                      ; preds = %if.end3689
  %3362 = load i32, ptr %l, align 4, !tbaa !8
  %dec3691 = add nsw i32 %3362, -1
  store i32 %dec3691, ptr %l, align 4, !tbaa !8
  br label %for.cond3655, !llvm.loop !91

for.end3692:                                      ; preds = %for.cond3655
  %3363 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool3693 = icmp ne i32 %3363, 0
  br i1 %tobool3693, label %if.then3694, label %if.end3726

if.then3694:                                      ; preds = %for.end3692
  %3364 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %3364, ptr %i__1, align 4, !tbaa !8
  %3365 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %3365, ptr %i__3, align 4, !tbaa !8
  %3366 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %3366, ptr %j, align 4, !tbaa !8
  br label %for.cond3695

for.cond3695:                                     ; preds = %for.inc3723, %if.then3694
  %3367 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp3696 = icmp slt i32 %3367, 0
  br i1 %cmp3696, label %cond.true3698, label %cond.false3701

cond.true3698:                                    ; preds = %for.cond3695
  %3368 = load i32, ptr %j, align 4, !tbaa !8
  %3369 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp3699 = icmp sge i32 %3368, %3369
  %conv3700 = zext i1 %cmp3699 to i32
  br label %cond.end3704

cond.false3701:                                   ; preds = %for.cond3695
  %3370 = load i32, ptr %j, align 4, !tbaa !8
  %3371 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp3702 = icmp sle i32 %3370, %3371
  %conv3703 = zext i1 %cmp3702 to i32
  br label %cond.end3704

cond.end3704:                                     ; preds = %cond.false3701, %cond.true3698
  %cond3705 = phi i32 [ %conv3700, %cond.true3698 ], [ %conv3703, %cond.false3701 ]
  %tobool3706 = icmp ne i32 %cond3705, 0
  br i1 %tobool3706, label %for.body3707, label %for.end3725

for.body3707:                                     ; preds = %cond.end3704
  %3372 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %3373 = load i32, ptr %j, align 4, !tbaa !8
  %3374 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul3708 = mul nsw i32 %3373, %3374
  %add3709 = add nsw i32 %mul3708, 1
  %idxprom3710 = sext i32 %add3709 to i64
  %arrayidx3711 = getelementptr inbounds float, ptr %3372, i64 %idxprom3710
  %3375 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %3376 = load i32, ptr %j, align 4, !tbaa !8
  %sub3712 = sub nsw i32 %3376, 1
  %3377 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul3713 = mul nsw i32 %sub3712, %3377
  %add3714 = add nsw i32 %mul3713, 1
  %idxprom3715 = sext i32 %add3714 to i64
  %arrayidx3716 = getelementptr inbounds float, ptr %3375, i64 %idxprom3715
  %3378 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3379 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3380 = load i32, ptr %3379, align 4, !tbaa !8
  %3381 = load i32, ptr %j, align 4, !tbaa !8
  %add3717 = add nsw i32 %3380, %3381
  %idxprom3718 = sext i32 %add3717 to i64
  %arrayidx3719 = getelementptr inbounds float, ptr %3378, i64 %idxprom3718
  %3382 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3383 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom3720 = sext i32 %3383 to i64
  %arrayidx3721 = getelementptr inbounds float, ptr %3382, i64 %idxprom3720
  %call3722 = call i32 @srot_(ptr noundef %nx, ptr noundef %arrayidx3711, ptr noundef @c__1, ptr noundef %arrayidx3716, ptr noundef @c__1, ptr noundef %arrayidx3719, ptr noundef %arrayidx3721)
  br label %for.inc3723

for.inc3723:                                      ; preds = %for.body3707
  %3384 = load i32, ptr %i__3, align 4, !tbaa !8
  %3385 = load i32, ptr %j, align 4, !tbaa !8
  %add3724 = add nsw i32 %3385, %3384
  store i32 %add3724, ptr %j, align 4, !tbaa !8
  br label %for.cond3695, !llvm.loop !92

for.end3725:                                      ; preds = %cond.end3704
  br label %if.end3726

if.end3726:                                       ; preds = %for.end3725, %for.end3692
  br label %for.inc3727

for.inc3727:                                      ; preds = %if.end3726
  %3386 = load i32, ptr %k, align 4, !tbaa !8
  %inc3728 = add nsw i32 %3386, 1
  store i32 %inc3728, ptr %k, align 4, !tbaa !8
  br label %for.cond3422, !llvm.loop !93

for.end3729:                                      ; preds = %for.cond3422
  %3387 = load i32, ptr %update, align 4, !tbaa !8
  %tobool3730 = icmp ne i32 %3387, 0
  br i1 %tobool3730, label %if.then3731, label %if.end3751

if.then3731:                                      ; preds = %for.end3729
  %3388 = load i32, ptr %i2, align 4, !tbaa !8
  %cmp3732 = icmp sgt i32 %3388, 0
  br i1 %cmp3732, label %land.lhs.true3734, label %if.end3750

land.lhs.true3734:                                ; preds = %if.then3731
  %3389 = load i32, ptr %kbt, align 4, !tbaa !8
  %cmp3735 = icmp sgt i32 %3389, 0
  br i1 %cmp3735, label %if.then3737, label %if.end3750

if.then3737:                                      ; preds = %land.lhs.true3734
  %3390 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %3391 = load i32, ptr %kbt, align 4, !tbaa !8
  %add3738 = add nsw i32 %3391, 1
  %3392 = load i32, ptr %i__, align 4, !tbaa !8
  %3393 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %mul3739 = mul nsw i32 %3392, %3393
  %add3740 = add nsw i32 %add3738, %mul3739
  %idxprom3741 = sext i32 %add3740 to i64
  %arrayidx3742 = getelementptr inbounds float, ptr %3390, i64 %idxprom3741
  %3394 = load float, ptr %arrayidx3742, align 4, !tbaa !10
  %fneg3743 = fneg float %3394
  %3395 = load float, ptr %ra1, align 4, !tbaa !10
  %mul3744 = fmul float %fneg3743, %3395
  %3396 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3397 = load i32, ptr %m, align 4, !tbaa !8
  %3398 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3399 = load i32, ptr %3398, align 4, !tbaa !8
  %sub3745 = sub nsw i32 %3397, %3399
  %3400 = load i32, ptr %i__, align 4, !tbaa !8
  %add3746 = add nsw i32 %sub3745, %3400
  %3401 = load i32, ptr %kbt, align 4, !tbaa !8
  %add3747 = add nsw i32 %add3746, %3401
  %idxprom3748 = sext i32 %add3747 to i64
  %arrayidx3749 = getelementptr inbounds float, ptr %3396, i64 %idxprom3748
  store float %mul3744, ptr %arrayidx3749, align 4, !tbaa !10
  br label %if.end3750

if.end3750:                                       ; preds = %if.then3737, %land.lhs.true3734, %if.then3731
  br label %if.end3751

if.end3751:                                       ; preds = %if.end3750, %for.end3729
  %3402 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3403 = load i32, ptr %3402, align 4, !tbaa !8
  store i32 %3403, ptr %k, align 4, !tbaa !8
  br label %for.cond3752

for.cond3752:                                     ; preds = %for.inc3942, %if.end3751
  %3404 = load i32, ptr %k, align 4, !tbaa !8
  %cmp3753 = icmp sge i32 %3404, 1
  br i1 %cmp3753, label %for.body3755, label %for.end3944

for.body3755:                                     ; preds = %for.cond3752
  %3405 = load i32, ptr %update, align 4, !tbaa !8
  %tobool3756 = icmp ne i32 %3405, 0
  br i1 %tobool3756, label %if.then3757, label %if.else3773

if.then3757:                                      ; preds = %for.body3755
  store i32 2, ptr %i__4, align 4, !tbaa !8
  %3406 = load i32, ptr %k, align 4, !tbaa !8
  %3407 = load i32, ptr %i0, align 4, !tbaa !8
  %add3758 = add nsw i32 %3406, %3407
  %3408 = load i32, ptr %m, align 4, !tbaa !8
  %sub3759 = sub nsw i32 %add3758, %3408
  store i32 %sub3759, ptr %i__3, align 4, !tbaa !8
  %3409 = load i32, ptr %i__, align 4, !tbaa !8
  %3410 = load i32, ptr %k, align 4, !tbaa !8
  %add3760 = add nsw i32 %3409, %3410
  %add3761 = add nsw i32 %add3760, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x3762) #4
  %3411 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %3411, ptr %_x3762, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y3763) #4
  %3412 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %3412, ptr %_y3763, align 4, !tbaa !8
  %3413 = load i32, ptr %_x3762, align 4, !tbaa !8
  %3414 = load i32, ptr %_y3763, align 4, !tbaa !8
  %cmp3765 = icmp sgt i32 %3413, %3414
  br i1 %cmp3765, label %cond.true3767, label %cond.false3768

cond.true3767:                                    ; preds = %if.then3757
  %3415 = load i32, ptr %_x3762, align 4, !tbaa !8
  br label %cond.end3769

cond.false3768:                                   ; preds = %if.then3757
  %3416 = load i32, ptr %_y3763, align 4, !tbaa !8
  br label %cond.end3769

cond.end3769:                                     ; preds = %cond.false3768, %cond.true3767
  %cond3770 = phi i32 [ %3415, %cond.true3767 ], [ %3416, %cond.false3768 ]
  store i32 %cond3770, ptr %tmp3764, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y3763) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x3762) #4
  %3417 = load i32, ptr %tmp3764, align 4, !tbaa !8
  %3418 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul3771 = mul nsw i32 %3417, %3418
  %sub3772 = sub nsw i32 %add3761, %mul3771
  store i32 %sub3772, ptr %j2, align 4, !tbaa !8
  br label %if.end3789

if.else3773:                                      ; preds = %for.body3755
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %3419 = load i32, ptr %k, align 4, !tbaa !8
  %3420 = load i32, ptr %i0, align 4, !tbaa !8
  %add3774 = add nsw i32 %3419, %3420
  %3421 = load i32, ptr %m, align 4, !tbaa !8
  %sub3775 = sub nsw i32 %add3774, %3421
  store i32 %sub3775, ptr %i__3, align 4, !tbaa !8
  %3422 = load i32, ptr %i__, align 4, !tbaa !8
  %3423 = load i32, ptr %k, align 4, !tbaa !8
  %add3776 = add nsw i32 %3422, %3423
  %add3777 = add nsw i32 %add3776, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x3778) #4
  %3424 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %3424, ptr %_x3778, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y3779) #4
  %3425 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %3425, ptr %_y3779, align 4, !tbaa !8
  %3426 = load i32, ptr %_x3778, align 4, !tbaa !8
  %3427 = load i32, ptr %_y3779, align 4, !tbaa !8
  %cmp3781 = icmp sgt i32 %3426, %3427
  br i1 %cmp3781, label %cond.true3783, label %cond.false3784

cond.true3783:                                    ; preds = %if.else3773
  %3428 = load i32, ptr %_x3778, align 4, !tbaa !8
  br label %cond.end3785

cond.false3784:                                   ; preds = %if.else3773
  %3429 = load i32, ptr %_y3779, align 4, !tbaa !8
  br label %cond.end3785

cond.end3785:                                     ; preds = %cond.false3784, %cond.true3783
  %cond3786 = phi i32 [ %3428, %cond.true3783 ], [ %3429, %cond.false3784 ]
  store i32 %cond3786, ptr %tmp3780, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y3779) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x3778) #4
  %3430 = load i32, ptr %tmp3780, align 4, !tbaa !8
  %3431 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul3787 = mul nsw i32 %3430, %3431
  %sub3788 = sub nsw i32 %add3777, %mul3787
  store i32 %sub3788, ptr %j2, align 4, !tbaa !8
  br label %if.end3789

if.end3789:                                       ; preds = %cond.end3785, %cond.end3769
  %3432 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3433 = load i32, ptr %3432, align 4, !tbaa !8
  %3434 = load i32, ptr %k, align 4, !tbaa !8
  %sub3790 = sub nsw i32 %3433, %3434
  store i32 %sub3790, ptr %l, align 4, !tbaa !8
  br label %for.cond3791

for.cond3791:                                     ; preds = %for.inc3833, %if.end3789
  %3435 = load i32, ptr %l, align 4, !tbaa !8
  %cmp3792 = icmp sge i32 %3435, 1
  br i1 %cmp3792, label %for.body3794, label %for.end3835

for.body3794:                                     ; preds = %for.cond3791
  %3436 = load i32, ptr %j2, align 4, !tbaa !8
  %3437 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3438 = load i32, ptr %3437, align 4, !tbaa !8
  %add3795 = add nsw i32 %3436, %3438
  %3439 = load i32, ptr %l, align 4, !tbaa !8
  %add3796 = add nsw i32 %add3795, %3439
  %sub3797 = sub nsw i32 %add3796, 1
  %3440 = load i32, ptr %ka1, align 4, !tbaa !8
  %div3798 = sdiv i32 %sub3797, %3440
  store i32 %div3798, ptr %nrt, align 4, !tbaa !8
  %3441 = load i32, ptr %j2, align 4, !tbaa !8
  %3442 = load i32, ptr %nrt, align 4, !tbaa !8
  %sub3799 = sub nsw i32 %3442, 1
  %3443 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul3800 = mul nsw i32 %sub3799, %3443
  %sub3801 = sub nsw i32 %3441, %mul3800
  store i32 %sub3801, ptr %j1t, align 4, !tbaa !8
  %3444 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp3802 = icmp sgt i32 %3444, 0
  br i1 %cmp3802, label %if.then3804, label %if.end3832

if.then3804:                                      ; preds = %for.body3794
  %3445 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3446 = load i32, ptr %ka1, align 4, !tbaa !8
  %3447 = load i32, ptr %l, align 4, !tbaa !8
  %sub3805 = sub nsw i32 %3446, %3447
  %add3806 = add nsw i32 %sub3805, 1
  %3448 = load i32, ptr %j1t, align 4, !tbaa !8
  %3449 = load i32, ptr %l, align 4, !tbaa !8
  %add3807 = add nsw i32 %3448, %3449
  %sub3808 = sub nsw i32 %add3807, 1
  %3450 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3809 = mul nsw i32 %sub3808, %3450
  %add3810 = add nsw i32 %add3806, %mul3809
  %idxprom3811 = sext i32 %add3810 to i64
  %arrayidx3812 = getelementptr inbounds float, ptr %3445, i64 %idxprom3811
  %3451 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3452 = load i32, ptr %ka1, align 4, !tbaa !8
  %3453 = load i32, ptr %l, align 4, !tbaa !8
  %sub3813 = sub nsw i32 %3452, %3453
  %3454 = load i32, ptr %j1t, align 4, !tbaa !8
  %3455 = load i32, ptr %l, align 4, !tbaa !8
  %add3814 = add nsw i32 %3454, %3455
  %sub3815 = sub nsw i32 %add3814, 1
  %3456 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3816 = mul nsw i32 %sub3815, %3456
  %add3817 = add nsw i32 %sub3813, %mul3816
  %idxprom3818 = sext i32 %add3817 to i64
  %arrayidx3819 = getelementptr inbounds float, ptr %3451, i64 %idxprom3818
  %3457 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3458 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3459 = load i32, ptr %3458, align 4, !tbaa !8
  %3460 = load i32, ptr %m, align 4, !tbaa !8
  %add3820 = add nsw i32 %3459, %3460
  %3461 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3462 = load i32, ptr %3461, align 4, !tbaa !8
  %sub3821 = sub nsw i32 %add3820, %3462
  %3463 = load i32, ptr %j1t, align 4, !tbaa !8
  %add3822 = add nsw i32 %sub3821, %3463
  %3464 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3465 = load i32, ptr %3464, align 4, !tbaa !8
  %add3823 = add nsw i32 %add3822, %3465
  %idxprom3824 = sext i32 %add3823 to i64
  %arrayidx3825 = getelementptr inbounds float, ptr %3457, i64 %idxprom3824
  %3466 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3467 = load i32, ptr %m, align 4, !tbaa !8
  %3468 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3469 = load i32, ptr %3468, align 4, !tbaa !8
  %sub3826 = sub nsw i32 %3467, %3469
  %3470 = load i32, ptr %j1t, align 4, !tbaa !8
  %add3827 = add nsw i32 %sub3826, %3470
  %3471 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3472 = load i32, ptr %3471, align 4, !tbaa !8
  %add3828 = add nsw i32 %add3827, %3472
  %idxprom3829 = sext i32 %add3828 to i64
  %arrayidx3830 = getelementptr inbounds float, ptr %3466, i64 %idxprom3829
  %call3831 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx3812, ptr noundef %inca, ptr noundef %arrayidx3819, ptr noundef %inca, ptr noundef %arrayidx3825, ptr noundef %arrayidx3830, ptr noundef %ka1)
  br label %if.end3832

if.end3832:                                       ; preds = %if.then3804, %for.body3794
  br label %for.inc3833

for.inc3833:                                      ; preds = %if.end3832
  %3473 = load i32, ptr %l, align 4, !tbaa !8
  %dec3834 = add nsw i32 %3473, -1
  store i32 %dec3834, ptr %l, align 4, !tbaa !8
  br label %for.cond3791, !llvm.loop !94

for.end3835:                                      ; preds = %for.cond3791
  %3474 = load i32, ptr %j2, align 4, !tbaa !8
  %3475 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3476 = load i32, ptr %3475, align 4, !tbaa !8
  %add3836 = add nsw i32 %3474, %3476
  %sub3837 = sub nsw i32 %add3836, 1
  %3477 = load i32, ptr %ka1, align 4, !tbaa !8
  %div3838 = sdiv i32 %sub3837, %3477
  store i32 %div3838, ptr %nr, align 4, !tbaa !8
  %3478 = load i32, ptr %j2, align 4, !tbaa !8
  %3479 = load i32, ptr %nr, align 4, !tbaa !8
  %sub3839 = sub nsw i32 %3479, 1
  %3480 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul3840 = mul nsw i32 %sub3839, %3480
  %sub3841 = sub nsw i32 %3478, %mul3840
  store i32 %sub3841, ptr %j1, align 4, !tbaa !8
  %3481 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %3481, ptr %i__4, align 4, !tbaa !8
  %3482 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %3482, ptr %i__3, align 4, !tbaa !8
  %3483 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %3483, ptr %j, align 4, !tbaa !8
  br label %for.cond3842

for.cond3842:                                     ; preds = %for.inc3875, %for.end3835
  %3484 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp3843 = icmp slt i32 %3484, 0
  br i1 %cmp3843, label %cond.true3845, label %cond.false3848

cond.true3845:                                    ; preds = %for.cond3842
  %3485 = load i32, ptr %j, align 4, !tbaa !8
  %3486 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp3846 = icmp sge i32 %3485, %3486
  %conv3847 = zext i1 %cmp3846 to i32
  br label %cond.end3851

cond.false3848:                                   ; preds = %for.cond3842
  %3487 = load i32, ptr %j, align 4, !tbaa !8
  %3488 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp3849 = icmp sle i32 %3487, %3488
  %conv3850 = zext i1 %cmp3849 to i32
  br label %cond.end3851

cond.end3851:                                     ; preds = %cond.false3848, %cond.true3845
  %cond3852 = phi i32 [ %conv3847, %cond.true3845 ], [ %conv3850, %cond.false3848 ]
  %tobool3853 = icmp ne i32 %cond3852, 0
  br i1 %tobool3853, label %for.body3854, label %for.end3877

for.body3854:                                     ; preds = %cond.end3851
  %3489 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3490 = load i32, ptr %m, align 4, !tbaa !8
  %3491 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3492 = load i32, ptr %3491, align 4, !tbaa !8
  %sub3855 = sub nsw i32 %3490, %3492
  %3493 = load i32, ptr %j, align 4, !tbaa !8
  %add3856 = add nsw i32 %sub3855, %3493
  %3494 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3495 = load i32, ptr %3494, align 4, !tbaa !8
  %add3857 = add nsw i32 %add3856, %3495
  %idxprom3858 = sext i32 %add3857 to i64
  %arrayidx3859 = getelementptr inbounds float, ptr %3489, i64 %idxprom3858
  %3496 = load float, ptr %arrayidx3859, align 4, !tbaa !10
  %3497 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3498 = load i32, ptr %m, align 4, !tbaa !8
  %3499 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3500 = load i32, ptr %3499, align 4, !tbaa !8
  %sub3860 = sub nsw i32 %3498, %3500
  %3501 = load i32, ptr %j, align 4, !tbaa !8
  %add3861 = add nsw i32 %sub3860, %3501
  %idxprom3862 = sext i32 %add3861 to i64
  %arrayidx3863 = getelementptr inbounds float, ptr %3497, i64 %idxprom3862
  store float %3496, ptr %arrayidx3863, align 4, !tbaa !10
  %3502 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3503 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3504 = load i32, ptr %3503, align 4, !tbaa !8
  %3505 = load i32, ptr %m, align 4, !tbaa !8
  %add3864 = add nsw i32 %3504, %3505
  %3506 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3507 = load i32, ptr %3506, align 4, !tbaa !8
  %sub3865 = sub nsw i32 %add3864, %3507
  %3508 = load i32, ptr %j, align 4, !tbaa !8
  %add3866 = add nsw i32 %sub3865, %3508
  %3509 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3510 = load i32, ptr %3509, align 4, !tbaa !8
  %add3867 = add nsw i32 %add3866, %3510
  %idxprom3868 = sext i32 %add3867 to i64
  %arrayidx3869 = getelementptr inbounds float, ptr %3502, i64 %idxprom3868
  %3511 = load float, ptr %arrayidx3869, align 4, !tbaa !10
  %3512 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3513 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3514 = load i32, ptr %3513, align 4, !tbaa !8
  %3515 = load i32, ptr %m, align 4, !tbaa !8
  %add3870 = add nsw i32 %3514, %3515
  %3516 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3517 = load i32, ptr %3516, align 4, !tbaa !8
  %sub3871 = sub nsw i32 %add3870, %3517
  %3518 = load i32, ptr %j, align 4, !tbaa !8
  %add3872 = add nsw i32 %sub3871, %3518
  %idxprom3873 = sext i32 %add3872 to i64
  %arrayidx3874 = getelementptr inbounds float, ptr %3512, i64 %idxprom3873
  store float %3511, ptr %arrayidx3874, align 4, !tbaa !10
  br label %for.inc3875

for.inc3875:                                      ; preds = %for.body3854
  %3519 = load i32, ptr %i__3, align 4, !tbaa !8
  %3520 = load i32, ptr %j, align 4, !tbaa !8
  %add3876 = add nsw i32 %3520, %3519
  store i32 %add3876, ptr %j, align 4, !tbaa !8
  br label %for.cond3842, !llvm.loop !95

for.end3877:                                      ; preds = %cond.end3851
  %3521 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %3521, ptr %i__3, align 4, !tbaa !8
  %3522 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %3522, ptr %i__4, align 4, !tbaa !8
  %3523 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %3523, ptr %j, align 4, !tbaa !8
  br label %for.cond3878

for.cond3878:                                     ; preds = %for.inc3917, %for.end3877
  %3524 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp3879 = icmp slt i32 %3524, 0
  br i1 %cmp3879, label %cond.true3881, label %cond.false3884

cond.true3881:                                    ; preds = %for.cond3878
  %3525 = load i32, ptr %j, align 4, !tbaa !8
  %3526 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp3882 = icmp sge i32 %3525, %3526
  %conv3883 = zext i1 %cmp3882 to i32
  br label %cond.end3887

cond.false3884:                                   ; preds = %for.cond3878
  %3527 = load i32, ptr %j, align 4, !tbaa !8
  %3528 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp3885 = icmp sle i32 %3527, %3528
  %conv3886 = zext i1 %cmp3885 to i32
  br label %cond.end3887

cond.end3887:                                     ; preds = %cond.false3884, %cond.true3881
  %cond3888 = phi i32 [ %conv3883, %cond.true3881 ], [ %conv3886, %cond.false3884 ]
  %tobool3889 = icmp ne i32 %cond3888, 0
  br i1 %tobool3889, label %for.body3890, label %for.end3919

for.body3890:                                     ; preds = %cond.end3887
  %3529 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3530 = load i32, ptr %ka1, align 4, !tbaa !8
  %3531 = load i32, ptr %j, align 4, !tbaa !8
  %sub3891 = sub nsw i32 %3531, 1
  %3532 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3892 = mul nsw i32 %sub3891, %3532
  %add3893 = add nsw i32 %3530, %mul3892
  %idxprom3894 = sext i32 %add3893 to i64
  %arrayidx3895 = getelementptr inbounds float, ptr %3529, i64 %idxprom3894
  %3533 = load float, ptr %arrayidx3895, align 4, !tbaa !10
  %3534 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3535 = load i32, ptr %m, align 4, !tbaa !8
  %3536 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3537 = load i32, ptr %3536, align 4, !tbaa !8
  %sub3896 = sub nsw i32 %3535, %3537
  %3538 = load i32, ptr %j, align 4, !tbaa !8
  %add3897 = add nsw i32 %sub3896, %3538
  %idxprom3898 = sext i32 %add3897 to i64
  %arrayidx3899 = getelementptr inbounds float, ptr %3534, i64 %idxprom3898
  %3539 = load float, ptr %arrayidx3899, align 4, !tbaa !10
  %mul3900 = fmul float %3539, %3533
  store float %mul3900, ptr %arrayidx3899, align 4, !tbaa !10
  %3540 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3541 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3542 = load i32, ptr %3541, align 4, !tbaa !8
  %3543 = load i32, ptr %m, align 4, !tbaa !8
  %add3901 = add nsw i32 %3542, %3543
  %3544 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3545 = load i32, ptr %3544, align 4, !tbaa !8
  %sub3902 = sub nsw i32 %add3901, %3545
  %3546 = load i32, ptr %j, align 4, !tbaa !8
  %add3903 = add nsw i32 %sub3902, %3546
  %idxprom3904 = sext i32 %add3903 to i64
  %arrayidx3905 = getelementptr inbounds float, ptr %3540, i64 %idxprom3904
  %3547 = load float, ptr %arrayidx3905, align 4, !tbaa !10
  %3548 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3549 = load i32, ptr %ka1, align 4, !tbaa !8
  %3550 = load i32, ptr %j, align 4, !tbaa !8
  %sub3906 = sub nsw i32 %3550, 1
  %3551 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3907 = mul nsw i32 %sub3906, %3551
  %add3908 = add nsw i32 %3549, %mul3907
  %idxprom3909 = sext i32 %add3908 to i64
  %arrayidx3910 = getelementptr inbounds float, ptr %3548, i64 %idxprom3909
  %3552 = load float, ptr %arrayidx3910, align 4, !tbaa !10
  %mul3911 = fmul float %3547, %3552
  %3553 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3554 = load i32, ptr %ka1, align 4, !tbaa !8
  %3555 = load i32, ptr %j, align 4, !tbaa !8
  %sub3912 = sub nsw i32 %3555, 1
  %3556 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3913 = mul nsw i32 %sub3912, %3556
  %add3914 = add nsw i32 %3554, %mul3913
  %idxprom3915 = sext i32 %add3914 to i64
  %arrayidx3916 = getelementptr inbounds float, ptr %3553, i64 %idxprom3915
  store float %mul3911, ptr %arrayidx3916, align 4, !tbaa !10
  br label %for.inc3917

for.inc3917:                                      ; preds = %for.body3890
  %3557 = load i32, ptr %i__4, align 4, !tbaa !8
  %3558 = load i32, ptr %j, align 4, !tbaa !8
  %add3918 = add nsw i32 %3558, %3557
  store i32 %add3918, ptr %j, align 4, !tbaa !8
  br label %for.cond3878, !llvm.loop !96

for.end3919:                                      ; preds = %cond.end3887
  %3559 = load i32, ptr %update, align 4, !tbaa !8
  %tobool3920 = icmp ne i32 %3559, 0
  br i1 %tobool3920, label %if.then3921, label %if.end3941

if.then3921:                                      ; preds = %for.end3919
  %3560 = load i32, ptr %i__, align 4, !tbaa !8
  %3561 = load i32, ptr %k, align 4, !tbaa !8
  %add3922 = add nsw i32 %3560, %3561
  %3562 = load i32, ptr %ka1, align 4, !tbaa !8
  %cmp3923 = icmp sgt i32 %add3922, %3562
  br i1 %cmp3923, label %land.lhs.true3925, label %if.end3940

land.lhs.true3925:                                ; preds = %if.then3921
  %3563 = load i32, ptr %k, align 4, !tbaa !8
  %3564 = load i32, ptr %kbt, align 4, !tbaa !8
  %cmp3926 = icmp sle i32 %3563, %3564
  br i1 %cmp3926, label %if.then3928, label %if.end3940

if.then3928:                                      ; preds = %land.lhs.true3925
  %3565 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3566 = load i32, ptr %m, align 4, !tbaa !8
  %3567 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3568 = load i32, ptr %3567, align 4, !tbaa !8
  %sub3929 = sub nsw i32 %3566, %3568
  %3569 = load i32, ptr %i__, align 4, !tbaa !8
  %add3930 = add nsw i32 %sub3929, %3569
  %3570 = load i32, ptr %k, align 4, !tbaa !8
  %add3931 = add nsw i32 %add3930, %3570
  %idxprom3932 = sext i32 %add3931 to i64
  %arrayidx3933 = getelementptr inbounds float, ptr %3565, i64 %idxprom3932
  %3571 = load float, ptr %arrayidx3933, align 4, !tbaa !10
  %3572 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3573 = load i32, ptr %m, align 4, !tbaa !8
  %3574 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3575 = load i32, ptr %3574, align 4, !tbaa !8
  %sub3934 = sub nsw i32 %3573, %3575
  %3576 = load i32, ptr %i__, align 4, !tbaa !8
  %add3935 = add nsw i32 %sub3934, %3576
  %3577 = load i32, ptr %k, align 4, !tbaa !8
  %add3936 = add nsw i32 %add3935, %3577
  %3578 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3579 = load i32, ptr %3578, align 4, !tbaa !8
  %sub3937 = sub nsw i32 %add3936, %3579
  %idxprom3938 = sext i32 %sub3937 to i64
  %arrayidx3939 = getelementptr inbounds float, ptr %3572, i64 %idxprom3938
  store float %3571, ptr %arrayidx3939, align 4, !tbaa !10
  br label %if.end3940

if.end3940:                                       ; preds = %if.then3928, %land.lhs.true3925, %if.then3921
  br label %if.end3941

if.end3941:                                       ; preds = %if.end3940, %for.end3919
  br label %for.inc3942

for.inc3942:                                      ; preds = %if.end3941
  %3580 = load i32, ptr %k, align 4, !tbaa !8
  %dec3943 = add nsw i32 %3580, -1
  store i32 %dec3943, ptr %k, align 4, !tbaa !8
  br label %for.cond3752, !llvm.loop !97

for.end3944:                                      ; preds = %for.cond3752
  %3581 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3582 = load i32, ptr %3581, align 4, !tbaa !8
  store i32 %3582, ptr %k, align 4, !tbaa !8
  br label %for.cond3945

for.cond3945:                                     ; preds = %for.inc4124, %for.end3944
  %3583 = load i32, ptr %k, align 4, !tbaa !8
  %cmp3946 = icmp sge i32 %3583, 1
  br i1 %cmp3946, label %for.body3948, label %for.end4126

for.body3948:                                     ; preds = %for.cond3945
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %3584 = load i32, ptr %k, align 4, !tbaa !8
  %3585 = load i32, ptr %i0, align 4, !tbaa !8
  %add3949 = add nsw i32 %3584, %3585
  %3586 = load i32, ptr %m, align 4, !tbaa !8
  %sub3950 = sub nsw i32 %add3949, %3586
  store i32 %sub3950, ptr %i__3, align 4, !tbaa !8
  %3587 = load i32, ptr %i__, align 4, !tbaa !8
  %3588 = load i32, ptr %k, align 4, !tbaa !8
  %add3951 = add nsw i32 %3587, %3588
  %add3952 = add nsw i32 %add3951, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x3953) #4
  %3589 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %3589, ptr %_x3953, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y3954) #4
  %3590 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %3590, ptr %_y3954, align 4, !tbaa !8
  %3591 = load i32, ptr %_x3953, align 4, !tbaa !8
  %3592 = load i32, ptr %_y3954, align 4, !tbaa !8
  %cmp3956 = icmp sgt i32 %3591, %3592
  br i1 %cmp3956, label %cond.true3958, label %cond.false3959

cond.true3958:                                    ; preds = %for.body3948
  %3593 = load i32, ptr %_x3953, align 4, !tbaa !8
  br label %cond.end3960

cond.false3959:                                   ; preds = %for.body3948
  %3594 = load i32, ptr %_y3954, align 4, !tbaa !8
  br label %cond.end3960

cond.end3960:                                     ; preds = %cond.false3959, %cond.true3958
  %cond3961 = phi i32 [ %3593, %cond.true3958 ], [ %3594, %cond.false3959 ]
  store i32 %cond3961, ptr %tmp3955, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y3954) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x3953) #4
  %3595 = load i32, ptr %tmp3955, align 4, !tbaa !8
  %3596 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul3962 = mul nsw i32 %3595, %3596
  %sub3963 = sub nsw i32 %add3952, %mul3962
  store i32 %sub3963, ptr %j2, align 4, !tbaa !8
  %3597 = load i32, ptr %j2, align 4, !tbaa !8
  %3598 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3599 = load i32, ptr %3598, align 4, !tbaa !8
  %add3964 = add nsw i32 %3597, %3599
  %sub3965 = sub nsw i32 %add3964, 1
  %3600 = load i32, ptr %ka1, align 4, !tbaa !8
  %div3966 = sdiv i32 %sub3965, %3600
  store i32 %div3966, ptr %nr, align 4, !tbaa !8
  %3601 = load i32, ptr %j2, align 4, !tbaa !8
  %3602 = load i32, ptr %nr, align 4, !tbaa !8
  %sub3967 = sub nsw i32 %3602, 1
  %3603 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul3968 = mul nsw i32 %sub3967, %3603
  %sub3969 = sub nsw i32 %3601, %mul3968
  store i32 %sub3969, ptr %j1, align 4, !tbaa !8
  %3604 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp3970 = icmp sgt i32 %3604, 0
  br i1 %cmp3970, label %if.then3972, label %if.end4040

if.then3972:                                      ; preds = %cond.end3960
  %3605 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3606 = load i32, ptr %ka1, align 4, !tbaa !8
  %3607 = load i32, ptr %j1, align 4, !tbaa !8
  %3608 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3973 = mul nsw i32 %3607, %3608
  %add3974 = add nsw i32 %3606, %mul3973
  %idxprom3975 = sext i32 %add3974 to i64
  %arrayidx3976 = getelementptr inbounds float, ptr %3605, i64 %idxprom3975
  %3609 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3610 = load i32, ptr %m, align 4, !tbaa !8
  %3611 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3612 = load i32, ptr %3611, align 4, !tbaa !8
  %sub3977 = sub nsw i32 %3610, %3612
  %3613 = load i32, ptr %j1, align 4, !tbaa !8
  %add3978 = add nsw i32 %sub3977, %3613
  %idxprom3979 = sext i32 %add3978 to i64
  %arrayidx3980 = getelementptr inbounds float, ptr %3609, i64 %idxprom3979
  %3614 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3615 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3616 = load i32, ptr %3615, align 4, !tbaa !8
  %3617 = load i32, ptr %m, align 4, !tbaa !8
  %add3981 = add nsw i32 %3616, %3617
  %3618 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3619 = load i32, ptr %3618, align 4, !tbaa !8
  %sub3982 = sub nsw i32 %add3981, %3619
  %3620 = load i32, ptr %j1, align 4, !tbaa !8
  %add3983 = add nsw i32 %sub3982, %3620
  %idxprom3984 = sext i32 %add3983 to i64
  %arrayidx3985 = getelementptr inbounds float, ptr %3614, i64 %idxprom3984
  %call3986 = call i32 @slargv_(ptr noundef %nr, ptr noundef %arrayidx3976, ptr noundef %inca, ptr noundef %arrayidx3980, ptr noundef %ka1, ptr noundef %arrayidx3985, ptr noundef %ka1)
  %3621 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3622 = load i32, ptr %3621, align 4, !tbaa !8
  %sub3987 = sub nsw i32 %3622, 1
  store i32 %sub3987, ptr %i__4, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond3988

for.cond3988:                                     ; preds = %for.inc4013, %if.then3972
  %3623 = load i32, ptr %l, align 4, !tbaa !8
  %3624 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp3989 = icmp sle i32 %3623, %3624
  br i1 %cmp3989, label %for.body3991, label %for.end4015

for.body3991:                                     ; preds = %for.cond3988
  %3625 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3626 = load i32, ptr %l, align 4, !tbaa !8
  %add3992 = add nsw i32 %3626, 1
  %3627 = load i32, ptr %j1, align 4, !tbaa !8
  %3628 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3993 = mul nsw i32 %3627, %3628
  %add3994 = add nsw i32 %add3992, %mul3993
  %idxprom3995 = sext i32 %add3994 to i64
  %arrayidx3996 = getelementptr inbounds float, ptr %3625, i64 %idxprom3995
  %3629 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3630 = load i32, ptr %l, align 4, !tbaa !8
  %add3997 = add nsw i32 %3630, 2
  %3631 = load i32, ptr %j1, align 4, !tbaa !8
  %sub3998 = sub nsw i32 %3631, 1
  %3632 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul3999 = mul nsw i32 %sub3998, %3632
  %add4000 = add nsw i32 %add3997, %mul3999
  %idxprom4001 = sext i32 %add4000 to i64
  %arrayidx4002 = getelementptr inbounds float, ptr %3629, i64 %idxprom4001
  %3633 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3634 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3635 = load i32, ptr %3634, align 4, !tbaa !8
  %3636 = load i32, ptr %m, align 4, !tbaa !8
  %add4003 = add nsw i32 %3635, %3636
  %3637 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3638 = load i32, ptr %3637, align 4, !tbaa !8
  %sub4004 = sub nsw i32 %add4003, %3638
  %3639 = load i32, ptr %j1, align 4, !tbaa !8
  %add4005 = add nsw i32 %sub4004, %3639
  %idxprom4006 = sext i32 %add4005 to i64
  %arrayidx4007 = getelementptr inbounds float, ptr %3633, i64 %idxprom4006
  %3640 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3641 = load i32, ptr %m, align 4, !tbaa !8
  %3642 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3643 = load i32, ptr %3642, align 4, !tbaa !8
  %sub4008 = sub nsw i32 %3641, %3643
  %3644 = load i32, ptr %j1, align 4, !tbaa !8
  %add4009 = add nsw i32 %sub4008, %3644
  %idxprom4010 = sext i32 %add4009 to i64
  %arrayidx4011 = getelementptr inbounds float, ptr %3640, i64 %idxprom4010
  %call4012 = call i32 @slartv_(ptr noundef %nr, ptr noundef %arrayidx3996, ptr noundef %inca, ptr noundef %arrayidx4002, ptr noundef %inca, ptr noundef %arrayidx4007, ptr noundef %arrayidx4011, ptr noundef %ka1)
  br label %for.inc4013

for.inc4013:                                      ; preds = %for.body3991
  %3645 = load i32, ptr %l, align 4, !tbaa !8
  %inc4014 = add nsw i32 %3645, 1
  store i32 %inc4014, ptr %l, align 4, !tbaa !8
  br label %for.cond3988, !llvm.loop !98

for.end4015:                                      ; preds = %for.cond3988
  %3646 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3647 = load i32, ptr %j1, align 4, !tbaa !8
  %3648 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul4016 = mul nsw i32 %3647, %3648
  %add4017 = add nsw i32 %mul4016, 1
  %idxprom4018 = sext i32 %add4017 to i64
  %arrayidx4019 = getelementptr inbounds float, ptr %3646, i64 %idxprom4018
  %3649 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3650 = load i32, ptr %j1, align 4, !tbaa !8
  %sub4020 = sub nsw i32 %3650, 1
  %3651 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul4021 = mul nsw i32 %sub4020, %3651
  %add4022 = add nsw i32 %mul4021, 1
  %idxprom4023 = sext i32 %add4022 to i64
  %arrayidx4024 = getelementptr inbounds float, ptr %3649, i64 %idxprom4023
  %3652 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3653 = load i32, ptr %j1, align 4, !tbaa !8
  %sub4025 = sub nsw i32 %3653, 1
  %3654 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul4026 = mul nsw i32 %sub4025, %3654
  %add4027 = add nsw i32 %mul4026, 2
  %idxprom4028 = sext i32 %add4027 to i64
  %arrayidx4029 = getelementptr inbounds float, ptr %3652, i64 %idxprom4028
  %3655 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3656 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3657 = load i32, ptr %3656, align 4, !tbaa !8
  %3658 = load i32, ptr %m, align 4, !tbaa !8
  %add4030 = add nsw i32 %3657, %3658
  %3659 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3660 = load i32, ptr %3659, align 4, !tbaa !8
  %sub4031 = sub nsw i32 %add4030, %3660
  %3661 = load i32, ptr %j1, align 4, !tbaa !8
  %add4032 = add nsw i32 %sub4031, %3661
  %idxprom4033 = sext i32 %add4032 to i64
  %arrayidx4034 = getelementptr inbounds float, ptr %3655, i64 %idxprom4033
  %3662 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3663 = load i32, ptr %m, align 4, !tbaa !8
  %3664 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3665 = load i32, ptr %3664, align 4, !tbaa !8
  %sub4035 = sub nsw i32 %3663, %3665
  %3666 = load i32, ptr %j1, align 4, !tbaa !8
  %add4036 = add nsw i32 %sub4035, %3666
  %idxprom4037 = sext i32 %add4036 to i64
  %arrayidx4038 = getelementptr inbounds float, ptr %3662, i64 %idxprom4037
  %call4039 = call i32 @slar2v_(ptr noundef %nr, ptr noundef %arrayidx4019, ptr noundef %arrayidx4024, ptr noundef %arrayidx4029, ptr noundef %inca, ptr noundef %arrayidx4034, ptr noundef %arrayidx4038, ptr noundef %ka1)
  br label %if.end4040

if.end4040:                                       ; preds = %for.end4015, %cond.end3960
  %3667 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3668 = load i32, ptr %3667, align 4, !tbaa !8
  %3669 = load i32, ptr %k, align 4, !tbaa !8
  %sub4041 = sub nsw i32 %3668, %3669
  %add4042 = add nsw i32 %sub4041, 1
  store i32 %add4042, ptr %i__4, align 4, !tbaa !8
  %3670 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3671 = load i32, ptr %3670, align 4, !tbaa !8
  %sub4043 = sub nsw i32 %3671, 1
  store i32 %sub4043, ptr %l, align 4, !tbaa !8
  br label %for.cond4044

for.cond4044:                                     ; preds = %for.inc4083, %if.end4040
  %3672 = load i32, ptr %l, align 4, !tbaa !8
  %3673 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp4045 = icmp sge i32 %3672, %3673
  br i1 %cmp4045, label %for.body4047, label %for.end4085

for.body4047:                                     ; preds = %for.cond4044
  %3674 = load i32, ptr %j2, align 4, !tbaa !8
  %3675 = load i32, ptr %l, align 4, !tbaa !8
  %add4048 = add nsw i32 %3674, %3675
  %sub4049 = sub nsw i32 %add4048, 1
  %3676 = load i32, ptr %ka1, align 4, !tbaa !8
  %div4050 = sdiv i32 %sub4049, %3676
  store i32 %div4050, ptr %nrt, align 4, !tbaa !8
  %3677 = load i32, ptr %j2, align 4, !tbaa !8
  %3678 = load i32, ptr %nrt, align 4, !tbaa !8
  %sub4051 = sub nsw i32 %3678, 1
  %3679 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul4052 = mul nsw i32 %sub4051, %3679
  %sub4053 = sub nsw i32 %3677, %mul4052
  store i32 %sub4053, ptr %j1t, align 4, !tbaa !8
  %3680 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp4054 = icmp sgt i32 %3680, 0
  br i1 %cmp4054, label %if.then4056, label %if.end4082

if.then4056:                                      ; preds = %for.body4047
  %3681 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3682 = load i32, ptr %ka1, align 4, !tbaa !8
  %3683 = load i32, ptr %l, align 4, !tbaa !8
  %sub4057 = sub nsw i32 %3682, %3683
  %add4058 = add nsw i32 %sub4057, 1
  %3684 = load i32, ptr %j1t, align 4, !tbaa !8
  %3685 = load i32, ptr %ka1, align 4, !tbaa !8
  %sub4059 = sub nsw i32 %3684, %3685
  %3686 = load i32, ptr %l, align 4, !tbaa !8
  %add4060 = add nsw i32 %sub4059, %3686
  %3687 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul4061 = mul nsw i32 %add4060, %3687
  %add4062 = add nsw i32 %add4058, %mul4061
  %idxprom4063 = sext i32 %add4062 to i64
  %arrayidx4064 = getelementptr inbounds float, ptr %3681, i64 %idxprom4063
  %3688 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3689 = load i32, ptr %ka1, align 4, !tbaa !8
  %3690 = load i32, ptr %l, align 4, !tbaa !8
  %sub4065 = sub nsw i32 %3689, %3690
  %3691 = load i32, ptr %j1t, align 4, !tbaa !8
  %3692 = load i32, ptr %ka1, align 4, !tbaa !8
  %sub4066 = sub nsw i32 %3691, %3692
  %3693 = load i32, ptr %l, align 4, !tbaa !8
  %add4067 = add nsw i32 %sub4066, %3693
  %3694 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul4068 = mul nsw i32 %add4067, %3694
  %add4069 = add nsw i32 %sub4065, %mul4068
  %idxprom4070 = sext i32 %add4069 to i64
  %arrayidx4071 = getelementptr inbounds float, ptr %3688, i64 %idxprom4070
  %3695 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3696 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3697 = load i32, ptr %3696, align 4, !tbaa !8
  %3698 = load i32, ptr %m, align 4, !tbaa !8
  %add4072 = add nsw i32 %3697, %3698
  %3699 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3700 = load i32, ptr %3699, align 4, !tbaa !8
  %sub4073 = sub nsw i32 %add4072, %3700
  %3701 = load i32, ptr %j1t, align 4, !tbaa !8
  %add4074 = add nsw i32 %sub4073, %3701
  %idxprom4075 = sext i32 %add4074 to i64
  %arrayidx4076 = getelementptr inbounds float, ptr %3695, i64 %idxprom4075
  %3702 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3703 = load i32, ptr %m, align 4, !tbaa !8
  %3704 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3705 = load i32, ptr %3704, align 4, !tbaa !8
  %sub4077 = sub nsw i32 %3703, %3705
  %3706 = load i32, ptr %j1t, align 4, !tbaa !8
  %add4078 = add nsw i32 %sub4077, %3706
  %idxprom4079 = sext i32 %add4078 to i64
  %arrayidx4080 = getelementptr inbounds float, ptr %3702, i64 %idxprom4079
  %call4081 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx4064, ptr noundef %inca, ptr noundef %arrayidx4071, ptr noundef %inca, ptr noundef %arrayidx4076, ptr noundef %arrayidx4080, ptr noundef %ka1)
  br label %if.end4082

if.end4082:                                       ; preds = %if.then4056, %for.body4047
  br label %for.inc4083

for.inc4083:                                      ; preds = %if.end4082
  %3707 = load i32, ptr %l, align 4, !tbaa !8
  %dec4084 = add nsw i32 %3707, -1
  store i32 %dec4084, ptr %l, align 4, !tbaa !8
  br label %for.cond4044, !llvm.loop !99

for.end4085:                                      ; preds = %for.cond4044
  %3708 = load i32, ptr %wantx, align 4, !tbaa !8
  %tobool4086 = icmp ne i32 %3708, 0
  br i1 %tobool4086, label %if.then4087, label %if.end4123

if.then4087:                                      ; preds = %for.end4085
  %3709 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %3709, ptr %i__4, align 4, !tbaa !8
  %3710 = load i32, ptr %ka1, align 4, !tbaa !8
  store i32 %3710, ptr %i__3, align 4, !tbaa !8
  %3711 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %3711, ptr %j, align 4, !tbaa !8
  br label %for.cond4088

for.cond4088:                                     ; preds = %for.inc4120, %if.then4087
  %3712 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp4089 = icmp slt i32 %3712, 0
  br i1 %cmp4089, label %cond.true4091, label %cond.false4094

cond.true4091:                                    ; preds = %for.cond4088
  %3713 = load i32, ptr %j, align 4, !tbaa !8
  %3714 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp4092 = icmp sge i32 %3713, %3714
  %conv4093 = zext i1 %cmp4092 to i32
  br label %cond.end4097

cond.false4094:                                   ; preds = %for.cond4088
  %3715 = load i32, ptr %j, align 4, !tbaa !8
  %3716 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp4095 = icmp sle i32 %3715, %3716
  %conv4096 = zext i1 %cmp4095 to i32
  br label %cond.end4097

cond.end4097:                                     ; preds = %cond.false4094, %cond.true4091
  %cond4098 = phi i32 [ %conv4093, %cond.true4091 ], [ %conv4096, %cond.false4094 ]
  %tobool4099 = icmp ne i32 %cond4098, 0
  br i1 %tobool4099, label %for.body4100, label %for.end4122

for.body4100:                                     ; preds = %cond.end4097
  %3717 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %3718 = load i32, ptr %j, align 4, !tbaa !8
  %3719 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul4101 = mul nsw i32 %3718, %3719
  %add4102 = add nsw i32 %mul4101, 1
  %idxprom4103 = sext i32 %add4102 to i64
  %arrayidx4104 = getelementptr inbounds float, ptr %3717, i64 %idxprom4103
  %3720 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %3721 = load i32, ptr %j, align 4, !tbaa !8
  %sub4105 = sub nsw i32 %3721, 1
  %3722 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul4106 = mul nsw i32 %sub4105, %3722
  %add4107 = add nsw i32 %mul4106, 1
  %idxprom4108 = sext i32 %add4107 to i64
  %arrayidx4109 = getelementptr inbounds float, ptr %3720, i64 %idxprom4108
  %3723 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3724 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3725 = load i32, ptr %3724, align 4, !tbaa !8
  %3726 = load i32, ptr %m, align 4, !tbaa !8
  %add4110 = add nsw i32 %3725, %3726
  %3727 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3728 = load i32, ptr %3727, align 4, !tbaa !8
  %sub4111 = sub nsw i32 %add4110, %3728
  %3729 = load i32, ptr %j, align 4, !tbaa !8
  %add4112 = add nsw i32 %sub4111, %3729
  %idxprom4113 = sext i32 %add4112 to i64
  %arrayidx4114 = getelementptr inbounds float, ptr %3723, i64 %idxprom4113
  %3730 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3731 = load i32, ptr %m, align 4, !tbaa !8
  %3732 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3733 = load i32, ptr %3732, align 4, !tbaa !8
  %sub4115 = sub nsw i32 %3731, %3733
  %3734 = load i32, ptr %j, align 4, !tbaa !8
  %add4116 = add nsw i32 %sub4115, %3734
  %idxprom4117 = sext i32 %add4116 to i64
  %arrayidx4118 = getelementptr inbounds float, ptr %3730, i64 %idxprom4117
  %call4119 = call i32 @srot_(ptr noundef %nx, ptr noundef %arrayidx4104, ptr noundef @c__1, ptr noundef %arrayidx4109, ptr noundef @c__1, ptr noundef %arrayidx4114, ptr noundef %arrayidx4118)
  br label %for.inc4120

for.inc4120:                                      ; preds = %for.body4100
  %3735 = load i32, ptr %i__3, align 4, !tbaa !8
  %3736 = load i32, ptr %j, align 4, !tbaa !8
  %add4121 = add nsw i32 %3736, %3735
  store i32 %add4121, ptr %j, align 4, !tbaa !8
  br label %for.cond4088, !llvm.loop !100

for.end4122:                                      ; preds = %cond.end4097
  br label %if.end4123

if.end4123:                                       ; preds = %for.end4122, %for.end4085
  br label %for.inc4124

for.inc4124:                                      ; preds = %if.end4123
  %3737 = load i32, ptr %k, align 4, !tbaa !8
  %dec4125 = add nsw i32 %3737, -1
  store i32 %dec4125, ptr %k, align 4, !tbaa !8
  br label %for.cond3945, !llvm.loop !101

for.end4126:                                      ; preds = %for.cond3945
  %3738 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3739 = load i32, ptr %3738, align 4, !tbaa !8
  %sub4127 = sub nsw i32 %3739, 1
  store i32 %sub4127, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %for.cond4128

for.cond4128:                                     ; preds = %for.inc4187, %for.end4126
  %3740 = load i32, ptr %k, align 4, !tbaa !8
  %3741 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp4129 = icmp sle i32 %3740, %3741
  br i1 %cmp4129, label %for.body4131, label %for.end4189

for.body4131:                                     ; preds = %for.cond4128
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %3742 = load i32, ptr %k, align 4, !tbaa !8
  %3743 = load i32, ptr %i0, align 4, !tbaa !8
  %add4132 = add nsw i32 %3742, %3743
  %3744 = load i32, ptr %m, align 4, !tbaa !8
  %sub4133 = sub nsw i32 %add4132, %3744
  %add4134 = add nsw i32 %sub4133, 1
  store i32 %add4134, ptr %i__1, align 4, !tbaa !8
  %3745 = load i32, ptr %i__, align 4, !tbaa !8
  %3746 = load i32, ptr %k, align 4, !tbaa !8
  %add4135 = add nsw i32 %3745, %3746
  %add4136 = add nsw i32 %add4135, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x4137) #4
  %3747 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %3747, ptr %_x4137, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y4138) #4
  %3748 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %3748, ptr %_y4138, align 4, !tbaa !8
  %3749 = load i32, ptr %_x4137, align 4, !tbaa !8
  %3750 = load i32, ptr %_y4138, align 4, !tbaa !8
  %cmp4140 = icmp sgt i32 %3749, %3750
  br i1 %cmp4140, label %cond.true4142, label %cond.false4143

cond.true4142:                                    ; preds = %for.body4131
  %3751 = load i32, ptr %_x4137, align 4, !tbaa !8
  br label %cond.end4144

cond.false4143:                                   ; preds = %for.body4131
  %3752 = load i32, ptr %_y4138, align 4, !tbaa !8
  br label %cond.end4144

cond.end4144:                                     ; preds = %cond.false4143, %cond.true4142
  %cond4145 = phi i32 [ %3751, %cond.true4142 ], [ %3752, %cond.false4143 ]
  store i32 %cond4145, ptr %tmp4139, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y4138) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x4137) #4
  %3753 = load i32, ptr %tmp4139, align 4, !tbaa !8
  %3754 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul4146 = mul nsw i32 %3753, %3754
  %sub4147 = sub nsw i32 %add4136, %mul4146
  store i32 %sub4147, ptr %j2, align 4, !tbaa !8
  %3755 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3756 = load i32, ptr %3755, align 4, !tbaa !8
  %3757 = load i32, ptr %k, align 4, !tbaa !8
  %sub4148 = sub nsw i32 %3756, %3757
  store i32 %sub4148, ptr %l, align 4, !tbaa !8
  br label %for.cond4149

for.cond4149:                                     ; preds = %for.inc4184, %cond.end4144
  %3758 = load i32, ptr %l, align 4, !tbaa !8
  %cmp4150 = icmp sge i32 %3758, 1
  br i1 %cmp4150, label %for.body4152, label %for.end4186

for.body4152:                                     ; preds = %for.cond4149
  %3759 = load i32, ptr %j2, align 4, !tbaa !8
  %3760 = load i32, ptr %l, align 4, !tbaa !8
  %add4153 = add nsw i32 %3759, %3760
  %sub4154 = sub nsw i32 %add4153, 1
  %3761 = load i32, ptr %ka1, align 4, !tbaa !8
  %div4155 = sdiv i32 %sub4154, %3761
  store i32 %div4155, ptr %nrt, align 4, !tbaa !8
  %3762 = load i32, ptr %j2, align 4, !tbaa !8
  %3763 = load i32, ptr %nrt, align 4, !tbaa !8
  %sub4156 = sub nsw i32 %3763, 1
  %3764 = load i32, ptr %ka1, align 4, !tbaa !8
  %mul4157 = mul nsw i32 %sub4156, %3764
  %sub4158 = sub nsw i32 %3762, %mul4157
  store i32 %sub4158, ptr %j1t, align 4, !tbaa !8
  %3765 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp4159 = icmp sgt i32 %3765, 0
  br i1 %cmp4159, label %if.then4161, label %if.end4183

if.then4161:                                      ; preds = %for.body4152
  %3766 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3767 = load i32, ptr %ka1, align 4, !tbaa !8
  %3768 = load i32, ptr %l, align 4, !tbaa !8
  %sub4162 = sub nsw i32 %3767, %3768
  %add4163 = add nsw i32 %sub4162, 1
  %3769 = load i32, ptr %j1t, align 4, !tbaa !8
  %3770 = load i32, ptr %ka1, align 4, !tbaa !8
  %sub4164 = sub nsw i32 %3769, %3770
  %3771 = load i32, ptr %l, align 4, !tbaa !8
  %add4165 = add nsw i32 %sub4164, %3771
  %3772 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul4166 = mul nsw i32 %add4165, %3772
  %add4167 = add nsw i32 %add4163, %mul4166
  %idxprom4168 = sext i32 %add4167 to i64
  %arrayidx4169 = getelementptr inbounds float, ptr %3766, i64 %idxprom4168
  %3773 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %3774 = load i32, ptr %ka1, align 4, !tbaa !8
  %3775 = load i32, ptr %l, align 4, !tbaa !8
  %sub4170 = sub nsw i32 %3774, %3775
  %3776 = load i32, ptr %j1t, align 4, !tbaa !8
  %3777 = load i32, ptr %ka1, align 4, !tbaa !8
  %sub4171 = sub nsw i32 %3776, %3777
  %3778 = load i32, ptr %l, align 4, !tbaa !8
  %add4172 = add nsw i32 %sub4171, %3778
  %3779 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul4173 = mul nsw i32 %add4172, %3779
  %add4174 = add nsw i32 %sub4170, %mul4173
  %idxprom4175 = sext i32 %add4174 to i64
  %arrayidx4176 = getelementptr inbounds float, ptr %3773, i64 %idxprom4175
  %3780 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3781 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3782 = load i32, ptr %3781, align 4, !tbaa !8
  %3783 = load i32, ptr %j1t, align 4, !tbaa !8
  %add4177 = add nsw i32 %3782, %3783
  %idxprom4178 = sext i32 %add4177 to i64
  %arrayidx4179 = getelementptr inbounds float, ptr %3780, i64 %idxprom4178
  %3784 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3785 = load i32, ptr %j1t, align 4, !tbaa !8
  %idxprom4180 = sext i32 %3785 to i64
  %arrayidx4181 = getelementptr inbounds float, ptr %3784, i64 %idxprom4180
  %call4182 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx4169, ptr noundef %inca, ptr noundef %arrayidx4176, ptr noundef %inca, ptr noundef %arrayidx4179, ptr noundef %arrayidx4181, ptr noundef %ka1)
  br label %if.end4183

if.end4183:                                       ; preds = %if.then4161, %for.body4152
  br label %for.inc4184

for.inc4184:                                      ; preds = %if.end4183
  %3786 = load i32, ptr %l, align 4, !tbaa !8
  %dec4185 = add nsw i32 %3786, -1
  store i32 %dec4185, ptr %l, align 4, !tbaa !8
  br label %for.cond4149, !llvm.loop !102

for.end4186:                                      ; preds = %for.cond4149
  br label %for.inc4187

for.inc4187:                                      ; preds = %for.end4186
  %3787 = load i32, ptr %k, align 4, !tbaa !8
  %inc4188 = add nsw i32 %3787, 1
  store i32 %inc4188, ptr %k, align 4, !tbaa !8
  br label %for.cond4128, !llvm.loop !103

for.end4189:                                      ; preds = %for.cond4128
  %3788 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3789 = load i32, ptr %3788, align 4, !tbaa !8
  %cmp4190 = icmp sgt i32 %3789, 1
  br i1 %cmp4190, label %if.then4192, label %if.end4225

if.then4192:                                      ; preds = %for.end4189
  %3790 = load i32, ptr %i__, align 4, !tbaa !8
  %3791 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %3792 = load i32, ptr %3791, align 4, !tbaa !8
  %add4193 = add nsw i32 %3790, %3792
  store i32 %add4193, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x4194) #4
  %3793 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %3793, ptr %_x4194, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y4195) #4
  %3794 = load i32, ptr %m, align 4, !tbaa !8
  store i32 %3794, ptr %_y4195, align 4, !tbaa !8
  %3795 = load i32, ptr %_x4194, align 4, !tbaa !8
  %3796 = load i32, ptr %_y4195, align 4, !tbaa !8
  %cmp4197 = icmp slt i32 %3795, %3796
  br i1 %cmp4197, label %cond.true4199, label %cond.false4200

cond.true4199:                                    ; preds = %if.then4192
  %3797 = load i32, ptr %_x4194, align 4, !tbaa !8
  br label %cond.end4201

cond.false4200:                                   ; preds = %if.then4192
  %3798 = load i32, ptr %_y4195, align 4, !tbaa !8
  br label %cond.end4201

cond.end4201:                                     ; preds = %cond.false4200, %cond.true4199
  %cond4202 = phi i32 [ %3797, %cond.true4199 ], [ %3798, %cond.false4200 ]
  store i32 %cond4202, ptr %tmp4196, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y4195) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x4194) #4
  %3799 = load i32, ptr %tmp4196, align 4, !tbaa !8
  %3800 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3801 = load i32, ptr %3800, align 4, !tbaa !8
  %shl4203 = shl i32 %3801, 1
  %sub4204 = sub nsw i32 %3799, %shl4203
  %sub4205 = sub nsw i32 %sub4204, 1
  store i32 %sub4205, ptr %i__3, align 4, !tbaa !8
  store i32 2, ptr %j, align 4, !tbaa !8
  br label %for.cond4206

for.cond4206:                                     ; preds = %for.inc4222, %cond.end4201
  %3802 = load i32, ptr %j, align 4, !tbaa !8
  %3803 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp4207 = icmp sle i32 %3802, %3803
  br i1 %cmp4207, label %for.body4209, label %for.end4224

for.body4209:                                     ; preds = %for.cond4206
  %3804 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3805 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3806 = load i32, ptr %3805, align 4, !tbaa !8
  %3807 = load i32, ptr %j, align 4, !tbaa !8
  %add4210 = add nsw i32 %3806, %3807
  %3808 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3809 = load i32, ptr %3808, align 4, !tbaa !8
  %add4211 = add nsw i32 %add4210, %3809
  %idxprom4212 = sext i32 %add4211 to i64
  %arrayidx4213 = getelementptr inbounds float, ptr %3804, i64 %idxprom4212
  %3810 = load float, ptr %arrayidx4213, align 4, !tbaa !10
  %3811 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3812 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %3813 = load i32, ptr %3812, align 4, !tbaa !8
  %3814 = load i32, ptr %j, align 4, !tbaa !8
  %add4214 = add nsw i32 %3813, %3814
  %idxprom4215 = sext i32 %add4214 to i64
  %arrayidx4216 = getelementptr inbounds float, ptr %3811, i64 %idxprom4215
  store float %3810, ptr %arrayidx4216, align 4, !tbaa !10
  %3815 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3816 = load i32, ptr %j, align 4, !tbaa !8
  %3817 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %3818 = load i32, ptr %3817, align 4, !tbaa !8
  %add4217 = add nsw i32 %3816, %3818
  %idxprom4218 = sext i32 %add4217 to i64
  %arrayidx4219 = getelementptr inbounds float, ptr %3815, i64 %idxprom4218
  %3819 = load float, ptr %arrayidx4219, align 4, !tbaa !10
  %3820 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %3821 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom4220 = sext i32 %3821 to i64
  %arrayidx4221 = getelementptr inbounds float, ptr %3820, i64 %idxprom4220
  store float %3819, ptr %arrayidx4221, align 4, !tbaa !10
  br label %for.inc4222

for.inc4222:                                      ; preds = %for.body4209
  %3822 = load i32, ptr %j, align 4, !tbaa !8
  %inc4223 = add nsw i32 %3822, 1
  store i32 %inc4223, ptr %j, align 4, !tbaa !8
  br label %for.cond4206, !llvm.loop !104

for.end4224:                                      ; preds = %for.cond4206
  br label %if.end4225

if.end4225:                                       ; preds = %for.end4224, %for.end4189
  br label %if.end4226

if.end4226:                                       ; preds = %if.end4225, %if.end3181
  br label %L490

cleanup:                                          ; preds = %if.then2139, %if.then2132, %if.then56, %if.then52
  call void @llvm.lifetime.end.p0(i64 4, ptr %update) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %inca) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kbt) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bii) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j2t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j1t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ra1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kb1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ka1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ra) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_dim1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bb_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bb_dim1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab_dim1) #4
  %3823 = load i32, ptr %retval, align 4
  ret i32 %3823
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @slaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare i32 @sscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @sger_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @slartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @slargv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @slartv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @slar2v_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @srot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
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
!87 = distinct !{!87, !13}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}

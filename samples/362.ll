; ModuleID = 'samples/362.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/clatrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"CLATRS\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@c__1 = internal global i32 1, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@c_b40 = internal global float 5.000000e-01, align 4

; Function Attrs: nounwind uwtable
define i32 @clatrs_(ptr noundef %uplo, ptr noundef %trans, ptr noundef %diag, ptr noundef %normin, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %x, ptr noundef %scale, ptr noundef %cnorm, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %diag.addr = alloca ptr, align 8
  %normin.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %scale.addr = alloca ptr, align 8
  %cnorm.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %r__3 = alloca float, align 4
  %r__4 = alloca float, align 4
  %q__1 = alloca %struct.complex, align 4
  %q__2 = alloca %struct.complex, align 4
  %q__3 = alloca %struct.complex, align 4
  %q__4 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %xj = alloca float, align 4
  %rec = alloca float, align 4
  %tjj = alloca float, align 4
  %jinc = alloca i32, align 4
  %xbnd = alloca float, align 4
  %imax = alloca i32, align 4
  %tmax = alloca float, align 4
  %tjjs = alloca %struct.complex, align 4
  %xmax = alloca float, align 4
  %grow = alloca float, align 4
  %tscal = alloca float, align 4
  %uscal = alloca %struct.complex, align 4
  %jlast = alloca i32, align 4
  %csumj = alloca %struct.complex, align 4
  %upper = alloca i32, align 4
  %bignum = alloca float, align 4
  %notran = alloca i32, align 4
  %jfirst = alloca i32, align 4
  %smlnum = alloca float, align 4
  %nounit = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x114 = alloca float, align 4
  %_y115 = alloca float, align 4
  %tmp116 = alloca float, align 4
  %_x134 = alloca float, align 4
  %_y135 = alloca float, align 4
  %tmp136 = alloca float, align 4
  %_x172 = alloca float, align 4
  %_y173 = alloca float, align 4
  %tmp174 = alloca float, align 4
  %_x194 = alloca float, align 4
  %_y195 = alloca float, align 4
  %tmp196 = alloca float, align 4
  %_x354 = alloca float, align 4
  %_y355 = alloca float, align 4
  %tmp356 = alloca float, align 4
  %_x378 = alloca float, align 4
  %_y379 = alloca float, align 4
  %tmp380 = alloca float, align 4
  %_x435 = alloca float, align 4
  %_y436 = alloca float, align 4
  %tmp437 = alloca float, align 4
  %_x445 = alloca float, align 4
  %_y446 = alloca float, align 4
  %tmp447 = alloca float, align 4
  %_x473 = alloca float, align 4
  %_y474 = alloca float, align 4
  %tmp475 = alloca float, align 4
  %_x483 = alloca float, align 4
  %_y484 = alloca float, align 4
  %tmp485 = alloca float, align 4
  %_x529 = alloca float, align 4
  %_y530 = alloca float, align 4
  %tmp531 = alloca float, align 4
  %_x560 = alloca float, align 4
  %_y561 = alloca float, align 4
  %tmp562 = alloca float, align 4
  %_x610 = alloca float, align 4
  %_y611 = alloca float, align 4
  %tmp612 = alloca float, align 4
  %_x620 = alloca float, align 4
  %_y621 = alloca float, align 4
  %tmp622 = alloca float, align 4
  %_x630 = alloca float, align 4
  %_y631 = alloca float, align 4
  %tmp632 = alloca float, align 4
  %_x1073 = alloca float, align 4
  %_y1074 = alloca float, align 4
  %tmp1075 = alloca float, align 4
  %_x1134 = alloca float, align 4
  %_y1135 = alloca float, align 4
  %tmp1136 = alloca float, align 4
  %_x1554 = alloca float, align 4
  %_y1555 = alloca float, align 4
  %tmp1556 = alloca float, align 4
  %_x1603 = alloca float, align 4
  %_y1604 = alloca float, align 4
  %tmp1605 = alloca float, align 4
  %_x1671 = alloca float, align 4
  %_y1672 = alloca float, align 4
  %tmp1673 = alloca float, align 4
  %_x2105 = alloca float, align 4
  %_y2106 = alloca float, align 4
  %tmp2107 = alloca float, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !4
  store ptr %diag, ptr %diag.addr, align 8, !tbaa !4
  store ptr %normin, ptr %normin.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %scale, ptr %scale.addr, align 8, !tbaa !4
  store ptr %cnorm, ptr %cnorm.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %xj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rec) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tjj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jinc) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %xbnd) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %imax) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmax) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tjjs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %xmax) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %grow) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tscal) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %uscal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jlast) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %csumj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bignum) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %notran) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jfirst) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %smlnum) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %nounit) #4
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
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %x.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds float, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %cnorm.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %7, align 4, !tbaa !8
  %8 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %8, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4, !tbaa !8
  %9 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call2 = call i32 @lsame_(ptr noundef %9, ptr noundef @.str.1)
  store i32 %call2, ptr %notran, align 4, !tbaa !8
  %10 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call3 = call i32 @lsame_(ptr noundef %10, ptr noundef @.str.1)
  store i32 %call3, ptr %nounit, align 4, !tbaa !8
  %11 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call4 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %13, align 4, !tbaa !8
  br label %if.end37

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load i32, ptr %notran, align 4, !tbaa !8
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.else14, label %land.lhs.true7

land.lhs.true7:                                   ; preds = %if.else
  %15 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call8 = call i32 @lsame_(ptr noundef %15, ptr noundef @.str.3)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else14, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %16 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call11 = call i32 @lsame_(ptr noundef %16, ptr noundef @.str.4)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.else14, label %if.then13

if.then13:                                        ; preds = %land.lhs.true10
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %17, align 4, !tbaa !8
  br label %if.end36

if.else14:                                        ; preds = %land.lhs.true10, %land.lhs.true7, %if.else
  %18 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.else20, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.else14
  %19 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call17 = call i32 @lsame_(ptr noundef %19, ptr noundef @.str)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else20, label %if.then19

if.then19:                                        ; preds = %land.lhs.true16
  %20 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %20, align 4, !tbaa !8
  br label %if.end35

if.else20:                                        ; preds = %land.lhs.true16, %if.else14
  %21 = load ptr, ptr %normin.addr, align 8, !tbaa !4
  %call21 = call i32 @lsame_(ptr noundef %21, ptr noundef @.str.5)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else27, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.else20
  %22 = load ptr, ptr %normin.addr, align 8, !tbaa !4
  %call24 = call i32 @lsame_(ptr noundef %22, ptr noundef @.str.1)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.else27, label %if.then26

if.then26:                                        ; preds = %land.lhs.true23
  %23 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %23, align 4, !tbaa !8
  br label %if.end34

if.else27:                                        ; preds = %land.lhs.true23, %if.else20
  %24 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %cmp = icmp slt i32 %25, 0
  br i1 %cmp, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else27
  %26 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %26, align 4, !tbaa !8
  br label %if.end33

if.else29:                                        ; preds = %if.else27
  %27 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #4
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #4
  %29 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  store i32 %30, ptr %_y, align 4, !tbaa !8
  %31 = load i32, ptr %_x, align 4, !tbaa !8
  %32 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp30 = icmp sgt i32 %31, %32
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else29
  %33 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else29
  %34 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %34, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #4
  %35 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp31 = icmp slt i32 %28, %35
  br i1 %cmp31, label %if.then32, label %if.end

if.then32:                                        ; preds = %cond.end
  %36 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -7, ptr %36, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then32, %cond.end
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then28
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then26
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then19
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then13
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then
  %37 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %cmp38 = icmp ne i32 %38, 0
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end37
  %39 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %40 = load i32, ptr %39, align 4, !tbaa !8
  %sub = sub nsw i32 0, %40
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call40 = call i32 @xerbla_(ptr noundef @.str.6, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %41 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  store float 1.000000e+00, ptr %41, align 4, !tbaa !10
  %42 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %43 = load i32, ptr %42, align 4, !tbaa !8
  %cmp42 = icmp eq i32 %43, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end44:                                         ; preds = %if.end41
  %call45 = call float @slamch_(ptr noundef @.str.7)
  %call46 = call float @slamch_(ptr noundef @.str.8)
  %div = fdiv float %call45, %call46
  store float %div, ptr %smlnum, align 4, !tbaa !10
  %44 = load float, ptr %smlnum, align 4, !tbaa !10
  %div47 = fdiv float 1.000000e+00, %44
  store float %div47, ptr %bignum, align 4, !tbaa !10
  %45 = load ptr, ptr %normin.addr, align 8, !tbaa !4
  %call48 = call i32 @lsame_(ptr noundef %45, ptr noundef @.str.1)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then50, label %if.end79

if.then50:                                        ; preds = %if.end44
  %46 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool51 = icmp ne i32 %46, 0
  br i1 %tobool51, label %if.then52, label %if.else59

if.then52:                                        ; preds = %if.then50
  %47 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %48 = load i32, ptr %47, align 4, !tbaa !8
  store i32 %48, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then52
  %49 = load i32, ptr %j, align 4, !tbaa !8
  %50 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp53 = icmp sle i32 %49, %50
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, ptr %j, align 4, !tbaa !8
  %sub54 = sub nsw i32 %51, 1
  store i32 %sub54, ptr %i__2, align 4, !tbaa !8
  %52 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %53 = load i32, ptr %j, align 4, !tbaa !8
  %54 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %53, %54
  %add55 = add nsw i32 %mul, 1
  %idxprom = sext i32 %add55 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %52, i64 %idxprom
  %call56 = call float @scasum_(ptr noundef %i__2, ptr noundef %arrayidx, ptr noundef @c__1)
  %55 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %56 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom57 = sext i32 %56 to i64
  %arrayidx58 = getelementptr inbounds float, ptr %55, i64 %idxprom57
  store float %call56, ptr %arrayidx58, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  br label %if.end78

if.else59:                                        ; preds = %if.then50
  %58 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %sub60 = sub nsw i32 %59, 1
  store i32 %sub60, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc73, %if.else59
  %60 = load i32, ptr %j, align 4, !tbaa !8
  %61 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp62 = icmp sle i32 %60, %61
  br i1 %cmp62, label %for.body63, label %for.end75

for.body63:                                       ; preds = %for.cond61
  %62 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %63 = load i32, ptr %62, align 4, !tbaa !8
  %64 = load i32, ptr %j, align 4, !tbaa !8
  %sub64 = sub nsw i32 %63, %64
  store i32 %sub64, ptr %i__2, align 4, !tbaa !8
  %65 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %66 = load i32, ptr %j, align 4, !tbaa !8
  %add65 = add nsw i32 %66, 1
  %67 = load i32, ptr %j, align 4, !tbaa !8
  %68 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul66 = mul nsw i32 %67, %68
  %add67 = add nsw i32 %add65, %mul66
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds %struct.complex, ptr %65, i64 %idxprom68
  %call70 = call float @scasum_(ptr noundef %i__2, ptr noundef %arrayidx69, ptr noundef @c__1)
  %69 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %70 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom71 = sext i32 %70 to i64
  %arrayidx72 = getelementptr inbounds float, ptr %69, i64 %idxprom71
  store float %call70, ptr %arrayidx72, align 4, !tbaa !10
  br label %for.inc73

for.inc73:                                        ; preds = %for.body63
  %71 = load i32, ptr %j, align 4, !tbaa !8
  %inc74 = add nsw i32 %71, 1
  store i32 %inc74, ptr %j, align 4, !tbaa !8
  br label %for.cond61, !llvm.loop !14

for.end75:                                        ; preds = %for.cond61
  %72 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %73 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %74 = load i32, ptr %73, align 4, !tbaa !8
  %idxprom76 = sext i32 %74 to i64
  %arrayidx77 = getelementptr inbounds float, ptr %72, i64 %idxprom76
  store float 0.000000e+00, ptr %arrayidx77, align 4, !tbaa !10
  br label %if.end78

if.end78:                                         ; preds = %for.end75, %for.end
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end44
  %75 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %76 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %arrayidx80 = getelementptr inbounds float, ptr %76, i64 1
  %call81 = call i32 @isamax_(ptr noundef %75, ptr noundef %arrayidx80, ptr noundef @c__1)
  store i32 %call81, ptr %imax, align 4, !tbaa !8
  %77 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %78 = load i32, ptr %imax, align 4, !tbaa !8
  %idxprom82 = sext i32 %78 to i64
  %arrayidx83 = getelementptr inbounds float, ptr %77, i64 %idxprom82
  %79 = load float, ptr %arrayidx83, align 4, !tbaa !10
  store float %79, ptr %tmax, align 4, !tbaa !10
  %80 = load float, ptr %tmax, align 4, !tbaa !10
  %81 = load float, ptr %bignum, align 4, !tbaa !10
  %mul84 = fmul float %81, 5.000000e-01
  %cmp85 = fcmp ole float %80, %mul84
  br i1 %cmp85, label %if.then86, label %if.else87

if.then86:                                        ; preds = %if.end79
  store float 1.000000e+00, ptr %tscal, align 4, !tbaa !10
  br label %if.end327

if.else87:                                        ; preds = %if.end79
  %82 = load float, ptr %tmax, align 4, !tbaa !10
  %call88 = call float @slamch_(ptr noundef @.str.9)
  %cmp89 = fcmp ole float %82, %call88
  br i1 %cmp89, label %if.then90, label %if.else95

if.then90:                                        ; preds = %if.else87
  %83 = load float, ptr %smlnum, align 4, !tbaa !10
  %84 = load float, ptr %tmax, align 4, !tbaa !10
  %mul91 = fmul float %83, %84
  %div92 = fdiv float 5.000000e-01, %mul91
  store float %div92, ptr %tscal, align 4, !tbaa !10
  %85 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %86 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds float, ptr %86, i64 1
  %call94 = call i32 @sscal_(ptr noundef %85, ptr noundef %tscal, ptr noundef %arrayidx93, ptr noundef @c__1)
  br label %if.end326

if.else95:                                        ; preds = %if.else87
  store float 0.000000e+00, ptr %tmax, align 4, !tbaa !10
  %87 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool96 = icmp ne i32 %87, 0
  br i1 %tobool96, label %if.then97, label %if.else149

if.then97:                                        ; preds = %if.else95
  %88 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %89 = load i32, ptr %88, align 4, !tbaa !8
  store i32 %89, ptr %i__1, align 4, !tbaa !8
  store i32 2, ptr %j, align 4, !tbaa !8
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc146, %if.then97
  %90 = load i32, ptr %j, align 4, !tbaa !8
  %91 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp99 = icmp sle i32 %90, %91
  br i1 %cmp99, label %for.body100, label %for.end148

for.body100:                                      ; preds = %for.cond98
  %92 = load i32, ptr %j, align 4, !tbaa !8
  %sub101 = sub nsw i32 %92, 1
  store i32 %sub101, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc143, %for.body100
  %93 = load i32, ptr %i__, align 4, !tbaa !8
  %94 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp103 = icmp sle i32 %93, %94
  br i1 %cmp103, label %for.body104, label %for.end145

for.body104:                                      ; preds = %for.cond102
  %95 = load i32, ptr %i__, align 4, !tbaa !8
  %96 = load i32, ptr %j, align 4, !tbaa !8
  %97 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul105 = mul nsw i32 %96, %97
  %add106 = add nsw i32 %95, %mul105
  store i32 %add106, ptr %i__3, align 4, !tbaa !8
  %98 = load float, ptr %tmax, align 4, !tbaa !10
  store float %98, ptr %r__3, align 4, !tbaa !10
  %99 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %100 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom107 = sext i32 %100 to i64
  %arrayidx108 = getelementptr inbounds %struct.complex, ptr %99, i64 %idxprom107
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx108, i32 0, i32 0
  %101 = load float, ptr %r, align 4, !tbaa !15
  store float %101, ptr %r__1, align 4, !tbaa !10
  %102 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp109 = fcmp oge float %102, 0.000000e+00
  br i1 %cmp109, label %cond.true110, label %cond.false111

cond.true110:                                     ; preds = %for.body104
  %103 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end112

cond.false111:                                    ; preds = %for.body104
  %104 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg = fneg float %104
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false111, %cond.true110
  %cond113 = phi float [ %103, %cond.true110 ], [ %fneg, %cond.false111 ]
  store float %cond113, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x114) #4
  %105 = load float, ptr %r__3, align 4, !tbaa !10
  store float %105, ptr %_x114, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y115) #4
  %106 = load float, ptr %r__4, align 4, !tbaa !10
  store float %106, ptr %_y115, align 4, !tbaa !10
  %107 = load float, ptr %_x114, align 4, !tbaa !10
  %108 = load float, ptr %_y115, align 4, !tbaa !10
  %cmp117 = fcmp ogt float %107, %108
  br i1 %cmp117, label %cond.true118, label %cond.false119

cond.true118:                                     ; preds = %cond.end112
  %109 = load float, ptr %_x114, align 4, !tbaa !10
  br label %cond.end120

cond.false119:                                    ; preds = %cond.end112
  %110 = load float, ptr %_y115, align 4, !tbaa !10
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false119, %cond.true118
  %cond121 = phi float [ %109, %cond.true118 ], [ %110, %cond.false119 ]
  store float %cond121, ptr %tmp116, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y115) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x114) #4
  %111 = load float, ptr %tmp116, align 4, !tbaa !10
  store float %111, ptr %r__3, align 4, !tbaa !10
  %112 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %113 = load i32, ptr %i__, align 4, !tbaa !8
  %114 = load i32, ptr %j, align 4, !tbaa !8
  %115 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul122 = mul nsw i32 %114, %115
  %add123 = add nsw i32 %113, %mul122
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds %struct.complex, ptr %112, i64 %idxprom124
  %call126 = call double @r_imag(ptr noundef %arrayidx125)
  %conv = fptrunc double %call126 to float
  store float %conv, ptr %r__2, align 4, !tbaa !10
  %116 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp127 = fcmp oge float %116, 0.000000e+00
  br i1 %cmp127, label %cond.true129, label %cond.false130

cond.true129:                                     ; preds = %cond.end120
  %117 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end132

cond.false130:                                    ; preds = %cond.end120
  %118 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg131 = fneg float %118
  br label %cond.end132

cond.end132:                                      ; preds = %cond.false130, %cond.true129
  %cond133 = phi float [ %117, %cond.true129 ], [ %fneg131, %cond.false130 ]
  store float %cond133, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x134) #4
  %119 = load float, ptr %r__3, align 4, !tbaa !10
  store float %119, ptr %_x134, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y135) #4
  %120 = load float, ptr %r__4, align 4, !tbaa !10
  store float %120, ptr %_y135, align 4, !tbaa !10
  %121 = load float, ptr %_x134, align 4, !tbaa !10
  %122 = load float, ptr %_y135, align 4, !tbaa !10
  %cmp137 = fcmp ogt float %121, %122
  br i1 %cmp137, label %cond.true139, label %cond.false140

cond.true139:                                     ; preds = %cond.end132
  %123 = load float, ptr %_x134, align 4, !tbaa !10
  br label %cond.end141

cond.false140:                                    ; preds = %cond.end132
  %124 = load float, ptr %_y135, align 4, !tbaa !10
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false140, %cond.true139
  %cond142 = phi float [ %123, %cond.true139 ], [ %124, %cond.false140 ]
  store float %cond142, ptr %tmp136, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y135) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x134) #4
  %125 = load float, ptr %tmp136, align 4, !tbaa !10
  store float %125, ptr %tmax, align 4, !tbaa !10
  br label %for.inc143

for.inc143:                                       ; preds = %cond.end141
  %126 = load i32, ptr %i__, align 4, !tbaa !8
  %inc144 = add nsw i32 %126, 1
  store i32 %inc144, ptr %i__, align 4, !tbaa !8
  br label %for.cond102, !llvm.loop !17

for.end145:                                       ; preds = %for.cond102
  br label %for.inc146

for.inc146:                                       ; preds = %for.end145
  %127 = load i32, ptr %j, align 4, !tbaa !8
  %inc147 = add nsw i32 %127, 1
  store i32 %inc147, ptr %j, align 4, !tbaa !8
  br label %for.cond98, !llvm.loop !18

for.end148:                                       ; preds = %for.cond98
  br label %if.end209

if.else149:                                       ; preds = %if.else95
  %128 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %129 = load i32, ptr %128, align 4, !tbaa !8
  %sub150 = sub nsw i32 %129, 1
  store i32 %sub150, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc206, %if.else149
  %130 = load i32, ptr %j, align 4, !tbaa !8
  %131 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp152 = icmp sle i32 %130, %131
  br i1 %cmp152, label %for.body154, label %for.end208

for.body154:                                      ; preds = %for.cond151
  %132 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %133 = load i32, ptr %132, align 4, !tbaa !8
  store i32 %133, ptr %i__2, align 4, !tbaa !8
  %134 = load i32, ptr %j, align 4, !tbaa !8
  %add155 = add nsw i32 %134, 1
  store i32 %add155, ptr %i__, align 4, !tbaa !8
  br label %for.cond156

for.cond156:                                      ; preds = %for.inc203, %for.body154
  %135 = load i32, ptr %i__, align 4, !tbaa !8
  %136 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp157 = icmp sle i32 %135, %136
  br i1 %cmp157, label %for.body159, label %for.end205

for.body159:                                      ; preds = %for.cond156
  %137 = load i32, ptr %i__, align 4, !tbaa !8
  %138 = load i32, ptr %j, align 4, !tbaa !8
  %139 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul160 = mul nsw i32 %138, %139
  %add161 = add nsw i32 %137, %mul160
  store i32 %add161, ptr %i__3, align 4, !tbaa !8
  %140 = load float, ptr %tmax, align 4, !tbaa !10
  store float %140, ptr %r__3, align 4, !tbaa !10
  %141 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %142 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom162 = sext i32 %142 to i64
  %arrayidx163 = getelementptr inbounds %struct.complex, ptr %141, i64 %idxprom162
  %r164 = getelementptr inbounds %struct.complex, ptr %arrayidx163, i32 0, i32 0
  %143 = load float, ptr %r164, align 4, !tbaa !15
  store float %143, ptr %r__1, align 4, !tbaa !10
  %144 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp165 = fcmp oge float %144, 0.000000e+00
  br i1 %cmp165, label %cond.true167, label %cond.false168

cond.true167:                                     ; preds = %for.body159
  %145 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end170

cond.false168:                                    ; preds = %for.body159
  %146 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg169 = fneg float %146
  br label %cond.end170

cond.end170:                                      ; preds = %cond.false168, %cond.true167
  %cond171 = phi float [ %145, %cond.true167 ], [ %fneg169, %cond.false168 ]
  store float %cond171, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x172) #4
  %147 = load float, ptr %r__3, align 4, !tbaa !10
  store float %147, ptr %_x172, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y173) #4
  %148 = load float, ptr %r__4, align 4, !tbaa !10
  store float %148, ptr %_y173, align 4, !tbaa !10
  %149 = load float, ptr %_x172, align 4, !tbaa !10
  %150 = load float, ptr %_y173, align 4, !tbaa !10
  %cmp175 = fcmp ogt float %149, %150
  br i1 %cmp175, label %cond.true177, label %cond.false178

cond.true177:                                     ; preds = %cond.end170
  %151 = load float, ptr %_x172, align 4, !tbaa !10
  br label %cond.end179

cond.false178:                                    ; preds = %cond.end170
  %152 = load float, ptr %_y173, align 4, !tbaa !10
  br label %cond.end179

cond.end179:                                      ; preds = %cond.false178, %cond.true177
  %cond180 = phi float [ %151, %cond.true177 ], [ %152, %cond.false178 ]
  store float %cond180, ptr %tmp174, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y173) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x172) #4
  %153 = load float, ptr %tmp174, align 4, !tbaa !10
  store float %153, ptr %r__3, align 4, !tbaa !10
  %154 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %155 = load i32, ptr %i__, align 4, !tbaa !8
  %156 = load i32, ptr %j, align 4, !tbaa !8
  %157 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul181 = mul nsw i32 %156, %157
  %add182 = add nsw i32 %155, %mul181
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds %struct.complex, ptr %154, i64 %idxprom183
  %call185 = call double @r_imag(ptr noundef %arrayidx184)
  %conv186 = fptrunc double %call185 to float
  store float %conv186, ptr %r__2, align 4, !tbaa !10
  %158 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp187 = fcmp oge float %158, 0.000000e+00
  br i1 %cmp187, label %cond.true189, label %cond.false190

cond.true189:                                     ; preds = %cond.end179
  %159 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end192

cond.false190:                                    ; preds = %cond.end179
  %160 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg191 = fneg float %160
  br label %cond.end192

cond.end192:                                      ; preds = %cond.false190, %cond.true189
  %cond193 = phi float [ %159, %cond.true189 ], [ %fneg191, %cond.false190 ]
  store float %cond193, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x194) #4
  %161 = load float, ptr %r__3, align 4, !tbaa !10
  store float %161, ptr %_x194, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y195) #4
  %162 = load float, ptr %r__4, align 4, !tbaa !10
  store float %162, ptr %_y195, align 4, !tbaa !10
  %163 = load float, ptr %_x194, align 4, !tbaa !10
  %164 = load float, ptr %_y195, align 4, !tbaa !10
  %cmp197 = fcmp ogt float %163, %164
  br i1 %cmp197, label %cond.true199, label %cond.false200

cond.true199:                                     ; preds = %cond.end192
  %165 = load float, ptr %_x194, align 4, !tbaa !10
  br label %cond.end201

cond.false200:                                    ; preds = %cond.end192
  %166 = load float, ptr %_y195, align 4, !tbaa !10
  br label %cond.end201

cond.end201:                                      ; preds = %cond.false200, %cond.true199
  %cond202 = phi float [ %165, %cond.true199 ], [ %166, %cond.false200 ]
  store float %cond202, ptr %tmp196, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y195) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x194) #4
  %167 = load float, ptr %tmp196, align 4, !tbaa !10
  store float %167, ptr %tmax, align 4, !tbaa !10
  br label %for.inc203

for.inc203:                                       ; preds = %cond.end201
  %168 = load i32, ptr %i__, align 4, !tbaa !8
  %inc204 = add nsw i32 %168, 1
  store i32 %inc204, ptr %i__, align 4, !tbaa !8
  br label %for.cond156, !llvm.loop !19

for.end205:                                       ; preds = %for.cond156
  br label %for.inc206

for.inc206:                                       ; preds = %for.end205
  %169 = load i32, ptr %j, align 4, !tbaa !8
  %inc207 = add nsw i32 %169, 1
  store i32 %inc207, ptr %j, align 4, !tbaa !8
  br label %for.cond151, !llvm.loop !20

for.end208:                                       ; preds = %for.cond151
  br label %if.end209

if.end209:                                        ; preds = %for.end208, %for.end148
  %170 = load float, ptr %tmax, align 4, !tbaa !10
  %call210 = call float @slamch_(ptr noundef @.str.9)
  %cmp211 = fcmp ole float %170, %call210
  br i1 %cmp211, label %if.then213, label %if.else320

if.then213:                                       ; preds = %if.end209
  %171 = load float, ptr %smlnum, align 4, !tbaa !10
  %172 = load float, ptr %tmax, align 4, !tbaa !10
  %mul214 = fmul float %171, %172
  %div215 = fdiv float 1.000000e+00, %mul214
  store float %div215, ptr %tscal, align 4, !tbaa !10
  %173 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %174 = load i32, ptr %173, align 4, !tbaa !8
  store i32 %174, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond216

for.cond216:                                      ; preds = %for.inc317, %if.then213
  %175 = load i32, ptr %j, align 4, !tbaa !8
  %176 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp217 = icmp sle i32 %175, %176
  br i1 %cmp217, label %for.body219, label %for.end319

for.body219:                                      ; preds = %for.cond216
  %177 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %178 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom220 = sext i32 %178 to i64
  %arrayidx221 = getelementptr inbounds float, ptr %177, i64 %idxprom220
  %179 = load float, ptr %arrayidx221, align 4, !tbaa !10
  %call222 = call float @slamch_(ptr noundef @.str.9)
  %cmp223 = fcmp ole float %179, %call222
  br i1 %cmp223, label %if.then225, label %if.else229

if.then225:                                       ; preds = %for.body219
  %180 = load float, ptr %tscal, align 4, !tbaa !10
  %181 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %182 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom226 = sext i32 %182 to i64
  %arrayidx227 = getelementptr inbounds float, ptr %181, i64 %idxprom226
  %183 = load float, ptr %arrayidx227, align 4, !tbaa !10
  %mul228 = fmul float %183, %180
  store float %mul228, ptr %arrayidx227, align 4, !tbaa !10
  br label %if.end316

if.else229:                                       ; preds = %for.body219
  %184 = load float, ptr %tscal, align 4, !tbaa !10
  %mul230 = fmul float %184, 2.000000e+00
  store float %mul230, ptr %tscal, align 4, !tbaa !10
  %185 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %186 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom231 = sext i32 %186 to i64
  %arrayidx232 = getelementptr inbounds float, ptr %185, i64 %idxprom231
  store float 0.000000e+00, ptr %arrayidx232, align 4, !tbaa !10
  %187 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool233 = icmp ne i32 %187, 0
  br i1 %tobool233, label %if.then234, label %if.else274

if.then234:                                       ; preds = %if.else229
  %188 = load i32, ptr %j, align 4, !tbaa !8
  %sub235 = sub nsw i32 %188, 1
  store i32 %sub235, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond236

for.cond236:                                      ; preds = %for.inc271, %if.then234
  %189 = load i32, ptr %i__, align 4, !tbaa !8
  %190 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp237 = icmp sle i32 %189, %190
  br i1 %cmp237, label %for.body239, label %for.end273

for.body239:                                      ; preds = %for.cond236
  %191 = load i32, ptr %i__, align 4, !tbaa !8
  %192 = load i32, ptr %j, align 4, !tbaa !8
  %193 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul240 = mul nsw i32 %192, %193
  %add241 = add nsw i32 %191, %mul240
  store i32 %add241, ptr %i__3, align 4, !tbaa !8
  %194 = load float, ptr %tscal, align 4, !tbaa !10
  %195 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %196 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom242 = sext i32 %196 to i64
  %arrayidx243 = getelementptr inbounds %struct.complex, ptr %195, i64 %idxprom242
  %r244 = getelementptr inbounds %struct.complex, ptr %arrayidx243, i32 0, i32 0
  %197 = load float, ptr %r244, align 4, !tbaa !15
  %div245 = fdiv float %197, 2.000000e+00
  store float %div245, ptr %r__1, align 4, !tbaa !10
  %198 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp246 = fcmp oge float %198, 0.000000e+00
  br i1 %cmp246, label %cond.true248, label %cond.false249

cond.true248:                                     ; preds = %for.body239
  %199 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end251

cond.false249:                                    ; preds = %for.body239
  %200 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg250 = fneg float %200
  br label %cond.end251

cond.end251:                                      ; preds = %cond.false249, %cond.true248
  %cond252 = phi float [ %199, %cond.true248 ], [ %fneg250, %cond.false249 ]
  %201 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %202 = load i32, ptr %i__, align 4, !tbaa !8
  %203 = load i32, ptr %j, align 4, !tbaa !8
  %204 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul253 = mul nsw i32 %203, %204
  %add254 = add nsw i32 %202, %mul253
  %idxprom255 = sext i32 %add254 to i64
  %arrayidx256 = getelementptr inbounds %struct.complex, ptr %201, i64 %idxprom255
  %call257 = call double @r_imag(ptr noundef %arrayidx256)
  %div258 = fdiv double %call257, 2.000000e+00
  %conv259 = fptrunc double %div258 to float
  store float %conv259, ptr %r__2, align 4, !tbaa !10
  %205 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp260 = fcmp oge float %205, 0.000000e+00
  br i1 %cmp260, label %cond.true262, label %cond.false263

cond.true262:                                     ; preds = %cond.end251
  %206 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end265

cond.false263:                                    ; preds = %cond.end251
  %207 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg264 = fneg float %207
  br label %cond.end265

cond.end265:                                      ; preds = %cond.false263, %cond.true262
  %cond266 = phi float [ %206, %cond.true262 ], [ %fneg264, %cond.false263 ]
  %add267 = fadd float %cond252, %cond266
  %208 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %209 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom269 = sext i32 %209 to i64
  %arrayidx270 = getelementptr inbounds float, ptr %208, i64 %idxprom269
  %210 = load float, ptr %arrayidx270, align 4, !tbaa !10
  %211 = call float @llvm.fmuladd.f32(float %194, float %add267, float %210)
  store float %211, ptr %arrayidx270, align 4, !tbaa !10
  br label %for.inc271

for.inc271:                                       ; preds = %cond.end265
  %212 = load i32, ptr %i__, align 4, !tbaa !8
  %inc272 = add nsw i32 %212, 1
  store i32 %inc272, ptr %i__, align 4, !tbaa !8
  br label %for.cond236, !llvm.loop !21

for.end273:                                       ; preds = %for.cond236
  br label %if.end314

if.else274:                                       ; preds = %if.else229
  %213 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %214 = load i32, ptr %213, align 4, !tbaa !8
  store i32 %214, ptr %i__2, align 4, !tbaa !8
  %215 = load i32, ptr %j, align 4, !tbaa !8
  %add275 = add nsw i32 %215, 1
  store i32 %add275, ptr %i__, align 4, !tbaa !8
  br label %for.cond276

for.cond276:                                      ; preds = %for.inc311, %if.else274
  %216 = load i32, ptr %i__, align 4, !tbaa !8
  %217 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp277 = icmp sle i32 %216, %217
  br i1 %cmp277, label %for.body279, label %for.end313

for.body279:                                      ; preds = %for.cond276
  %218 = load i32, ptr %i__, align 4, !tbaa !8
  %219 = load i32, ptr %j, align 4, !tbaa !8
  %220 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul280 = mul nsw i32 %219, %220
  %add281 = add nsw i32 %218, %mul280
  store i32 %add281, ptr %i__3, align 4, !tbaa !8
  %221 = load float, ptr %tscal, align 4, !tbaa !10
  %222 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %223 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom282 = sext i32 %223 to i64
  %arrayidx283 = getelementptr inbounds %struct.complex, ptr %222, i64 %idxprom282
  %r284 = getelementptr inbounds %struct.complex, ptr %arrayidx283, i32 0, i32 0
  %224 = load float, ptr %r284, align 4, !tbaa !15
  %div285 = fdiv float %224, 2.000000e+00
  store float %div285, ptr %r__1, align 4, !tbaa !10
  %225 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp286 = fcmp oge float %225, 0.000000e+00
  br i1 %cmp286, label %cond.true288, label %cond.false289

cond.true288:                                     ; preds = %for.body279
  %226 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end291

cond.false289:                                    ; preds = %for.body279
  %227 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg290 = fneg float %227
  br label %cond.end291

cond.end291:                                      ; preds = %cond.false289, %cond.true288
  %cond292 = phi float [ %226, %cond.true288 ], [ %fneg290, %cond.false289 ]
  %228 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %229 = load i32, ptr %i__, align 4, !tbaa !8
  %230 = load i32, ptr %j, align 4, !tbaa !8
  %231 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul293 = mul nsw i32 %230, %231
  %add294 = add nsw i32 %229, %mul293
  %idxprom295 = sext i32 %add294 to i64
  %arrayidx296 = getelementptr inbounds %struct.complex, ptr %228, i64 %idxprom295
  %call297 = call double @r_imag(ptr noundef %arrayidx296)
  %div298 = fdiv double %call297, 2.000000e+00
  %conv299 = fptrunc double %div298 to float
  store float %conv299, ptr %r__2, align 4, !tbaa !10
  %232 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp300 = fcmp oge float %232, 0.000000e+00
  br i1 %cmp300, label %cond.true302, label %cond.false303

cond.true302:                                     ; preds = %cond.end291
  %233 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end305

cond.false303:                                    ; preds = %cond.end291
  %234 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg304 = fneg float %234
  br label %cond.end305

cond.end305:                                      ; preds = %cond.false303, %cond.true302
  %cond306 = phi float [ %233, %cond.true302 ], [ %fneg304, %cond.false303 ]
  %add307 = fadd float %cond292, %cond306
  %235 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %236 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom309 = sext i32 %236 to i64
  %arrayidx310 = getelementptr inbounds float, ptr %235, i64 %idxprom309
  %237 = load float, ptr %arrayidx310, align 4, !tbaa !10
  %238 = call float @llvm.fmuladd.f32(float %221, float %add307, float %237)
  store float %238, ptr %arrayidx310, align 4, !tbaa !10
  br label %for.inc311

for.inc311:                                       ; preds = %cond.end305
  %239 = load i32, ptr %i__, align 4, !tbaa !8
  %inc312 = add nsw i32 %239, 1
  store i32 %inc312, ptr %i__, align 4, !tbaa !8
  br label %for.cond276, !llvm.loop !22

for.end313:                                       ; preds = %for.cond276
  br label %if.end314

if.end314:                                        ; preds = %for.end313, %for.end273
  %240 = load float, ptr %tscal, align 4, !tbaa !10
  %mul315 = fmul float %240, 5.000000e-01
  store float %mul315, ptr %tscal, align 4, !tbaa !10
  br label %if.end316

if.end316:                                        ; preds = %if.end314, %if.then225
  br label %for.inc317

for.inc317:                                       ; preds = %if.end316
  %241 = load i32, ptr %j, align 4, !tbaa !8
  %inc318 = add nsw i32 %241, 1
  store i32 %inc318, ptr %j, align 4, !tbaa !8
  br label %for.cond216, !llvm.loop !23

for.end319:                                       ; preds = %for.cond216
  br label %if.end325

if.else320:                                       ; preds = %if.end209
  %242 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %243 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %244 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %245 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %246 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %247 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom321 = sext i32 %247 to i64
  %arrayidx322 = getelementptr inbounds %struct.complex, ptr %246, i64 %idxprom321
  %248 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %249 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx323 = getelementptr inbounds %struct.complex, ptr %249, i64 1
  %call324 = call i32 @ctrsv_(ptr noundef %242, ptr noundef %243, ptr noundef %244, ptr noundef %245, ptr noundef %arrayidx322, ptr noundef %248, ptr noundef %arrayidx323, ptr noundef @c__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end325:                                        ; preds = %for.end319
  br label %if.end326

if.end326:                                        ; preds = %if.end325, %if.then90
  br label %if.end327

if.end327:                                        ; preds = %if.end326, %if.then86
  store float 0.000000e+00, ptr %xmax, align 4, !tbaa !10
  %250 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %251 = load i32, ptr %250, align 4, !tbaa !8
  store i32 %251, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond328

for.cond328:                                      ; preds = %for.inc363, %if.end327
  %252 = load i32, ptr %j, align 4, !tbaa !8
  %253 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp329 = icmp sle i32 %252, %253
  br i1 %cmp329, label %for.body331, label %for.end365

for.body331:                                      ; preds = %for.cond328
  %254 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %254, ptr %i__2, align 4, !tbaa !8
  %255 = load float, ptr %xmax, align 4, !tbaa !10
  store float %255, ptr %r__3, align 4, !tbaa !10
  %256 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %257 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom332 = sext i32 %257 to i64
  %arrayidx333 = getelementptr inbounds %struct.complex, ptr %256, i64 %idxprom332
  %r334 = getelementptr inbounds %struct.complex, ptr %arrayidx333, i32 0, i32 0
  %258 = load float, ptr %r334, align 4, !tbaa !15
  %div335 = fdiv float %258, 2.000000e+00
  store float %div335, ptr %r__1, align 4, !tbaa !10
  %259 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp336 = fcmp oge float %259, 0.000000e+00
  br i1 %cmp336, label %cond.true338, label %cond.false339

cond.true338:                                     ; preds = %for.body331
  %260 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end341

cond.false339:                                    ; preds = %for.body331
  %261 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg340 = fneg float %261
  br label %cond.end341

cond.end341:                                      ; preds = %cond.false339, %cond.true338
  %cond342 = phi float [ %260, %cond.true338 ], [ %fneg340, %cond.false339 ]
  %262 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %263 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom343 = sext i32 %263 to i64
  %arrayidx344 = getelementptr inbounds %struct.complex, ptr %262, i64 %idxprom343
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx344, i32 0, i32 1
  %264 = load float, ptr %i, align 4, !tbaa !24
  %div345 = fdiv float %264, 2.000000e+00
  store float %div345, ptr %r__2, align 4, !tbaa !10
  %265 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp346 = fcmp oge float %265, 0.000000e+00
  br i1 %cmp346, label %cond.true348, label %cond.false349

cond.true348:                                     ; preds = %cond.end341
  %266 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end351

cond.false349:                                    ; preds = %cond.end341
  %267 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg350 = fneg float %267
  br label %cond.end351

cond.end351:                                      ; preds = %cond.false349, %cond.true348
  %cond352 = phi float [ %266, %cond.true348 ], [ %fneg350, %cond.false349 ]
  %add353 = fadd float %cond342, %cond352
  store float %add353, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x354) #4
  %268 = load float, ptr %r__3, align 4, !tbaa !10
  store float %268, ptr %_x354, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y355) #4
  %269 = load float, ptr %r__4, align 4, !tbaa !10
  store float %269, ptr %_y355, align 4, !tbaa !10
  %270 = load float, ptr %_x354, align 4, !tbaa !10
  %271 = load float, ptr %_y355, align 4, !tbaa !10
  %cmp357 = fcmp ogt float %270, %271
  br i1 %cmp357, label %cond.true359, label %cond.false360

cond.true359:                                     ; preds = %cond.end351
  %272 = load float, ptr %_x354, align 4, !tbaa !10
  br label %cond.end361

cond.false360:                                    ; preds = %cond.end351
  %273 = load float, ptr %_y355, align 4, !tbaa !10
  br label %cond.end361

cond.end361:                                      ; preds = %cond.false360, %cond.true359
  %cond362 = phi float [ %272, %cond.true359 ], [ %273, %cond.false360 ]
  store float %cond362, ptr %tmp356, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y355) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x354) #4
  %274 = load float, ptr %tmp356, align 4, !tbaa !10
  store float %274, ptr %xmax, align 4, !tbaa !10
  br label %for.inc363

for.inc363:                                       ; preds = %cond.end361
  %275 = load i32, ptr %j, align 4, !tbaa !8
  %inc364 = add nsw i32 %275, 1
  store i32 %inc364, ptr %j, align 4, !tbaa !8
  br label %for.cond328, !llvm.loop !25

for.end365:                                       ; preds = %for.cond328
  %276 = load float, ptr %xmax, align 4, !tbaa !10
  store float %276, ptr %xbnd, align 4, !tbaa !10
  %277 = load i32, ptr %notran, align 4, !tbaa !8
  %tobool366 = icmp ne i32 %277, 0
  br i1 %tobool366, label %if.then367, label %if.else518

if.then367:                                       ; preds = %for.end365
  %278 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool368 = icmp ne i32 %278, 0
  br i1 %tobool368, label %if.then369, label %if.else370

if.then369:                                       ; preds = %if.then367
  %279 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %280 = load i32, ptr %279, align 4, !tbaa !8
  store i32 %280, ptr %jfirst, align 4, !tbaa !8
  store i32 1, ptr %jlast, align 4, !tbaa !8
  store i32 -1, ptr %jinc, align 4, !tbaa !8
  br label %if.end371

if.else370:                                       ; preds = %if.then367
  store i32 1, ptr %jfirst, align 4, !tbaa !8
  %281 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %282 = load i32, ptr %281, align 4, !tbaa !8
  store i32 %282, ptr %jlast, align 4, !tbaa !8
  store i32 1, ptr %jinc, align 4, !tbaa !8
  br label %if.end371

if.end371:                                        ; preds = %if.else370, %if.then369
  %283 = load float, ptr %tscal, align 4, !tbaa !10
  %cmp372 = fcmp une float %283, 1.000000e+00
  br i1 %cmp372, label %if.then374, label %if.end375

if.then374:                                       ; preds = %if.end371
  store float 0.000000e+00, ptr %grow, align 4, !tbaa !10
  br label %L60

if.end375:                                        ; preds = %if.end371
  %284 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool376 = icmp ne i32 %284, 0
  br i1 %tobool376, label %if.then377, label %if.else472

if.then377:                                       ; preds = %if.end375
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x378) #4
  %285 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %285, ptr %_x378, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y379) #4
  %286 = load float, ptr %smlnum, align 4, !tbaa !10
  store float %286, ptr %_y379, align 4, !tbaa !10
  %287 = load float, ptr %_x378, align 4, !tbaa !10
  %288 = load float, ptr %_y379, align 4, !tbaa !10
  %cmp381 = fcmp ogt float %287, %288
  br i1 %cmp381, label %cond.true383, label %cond.false384

cond.true383:                                     ; preds = %if.then377
  %289 = load float, ptr %_x378, align 4, !tbaa !10
  br label %cond.end385

cond.false384:                                    ; preds = %if.then377
  %290 = load float, ptr %_y379, align 4, !tbaa !10
  br label %cond.end385

cond.end385:                                      ; preds = %cond.false384, %cond.true383
  %cond386 = phi float [ %289, %cond.true383 ], [ %290, %cond.false384 ]
  store float %cond386, ptr %tmp380, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y379) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x378) #4
  %291 = load float, ptr %tmp380, align 4, !tbaa !10
  %div387 = fdiv float 5.000000e-01, %291
  store float %div387, ptr %grow, align 4, !tbaa !10
  %292 = load float, ptr %grow, align 4, !tbaa !10
  store float %292, ptr %xbnd, align 4, !tbaa !10
  %293 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %293, ptr %i__1, align 4, !tbaa !8
  %294 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %294, ptr %i__2, align 4, !tbaa !8
  %295 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %295, ptr %j, align 4, !tbaa !8
  br label %for.cond388

for.cond388:                                      ; preds = %for.inc469, %cond.end385
  %296 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp389 = icmp slt i32 %296, 0
  br i1 %cmp389, label %cond.true391, label %cond.false394

cond.true391:                                     ; preds = %for.cond388
  %297 = load i32, ptr %j, align 4, !tbaa !8
  %298 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp392 = icmp sge i32 %297, %298
  %conv393 = zext i1 %cmp392 to i32
  br label %cond.end397

cond.false394:                                    ; preds = %for.cond388
  %299 = load i32, ptr %j, align 4, !tbaa !8
  %300 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp395 = icmp sle i32 %299, %300
  %conv396 = zext i1 %cmp395 to i32
  br label %cond.end397

cond.end397:                                      ; preds = %cond.false394, %cond.true391
  %cond398 = phi i32 [ %conv393, %cond.true391 ], [ %conv396, %cond.false394 ]
  %tobool399 = icmp ne i32 %cond398, 0
  br i1 %tobool399, label %for.body400, label %for.end471

for.body400:                                      ; preds = %cond.end397
  %301 = load float, ptr %grow, align 4, !tbaa !10
  %302 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp401 = fcmp ole float %301, %302
  br i1 %cmp401, label %if.then403, label %if.end404

if.then403:                                       ; preds = %for.body400
  br label %L60

if.end404:                                        ; preds = %for.body400
  %303 = load i32, ptr %j, align 4, !tbaa !8
  %304 = load i32, ptr %j, align 4, !tbaa !8
  %305 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul405 = mul nsw i32 %304, %305
  %add406 = add nsw i32 %303, %mul405
  store i32 %add406, ptr %i__3, align 4, !tbaa !8
  %306 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %307 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom407 = sext i32 %307 to i64
  %arrayidx408 = getelementptr inbounds %struct.complex, ptr %306, i64 %idxprom407
  %r409 = getelementptr inbounds %struct.complex, ptr %arrayidx408, i32 0, i32 0
  %308 = load float, ptr %r409, align 4, !tbaa !15
  %r410 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  store float %308, ptr %r410, align 4, !tbaa !15
  %309 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %310 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom411 = sext i32 %310 to i64
  %arrayidx412 = getelementptr inbounds %struct.complex, ptr %309, i64 %idxprom411
  %i413 = getelementptr inbounds %struct.complex, ptr %arrayidx412, i32 0, i32 1
  %311 = load float, ptr %i413, align 4, !tbaa !24
  %i414 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  store float %311, ptr %i414, align 4, !tbaa !24
  %r415 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  %312 = load float, ptr %r415, align 4, !tbaa !15
  store float %312, ptr %r__1, align 4, !tbaa !10
  %313 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp416 = fcmp oge float %313, 0.000000e+00
  br i1 %cmp416, label %cond.true418, label %cond.false419

cond.true418:                                     ; preds = %if.end404
  %314 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end421

cond.false419:                                    ; preds = %if.end404
  %315 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg420 = fneg float %315
  br label %cond.end421

cond.end421:                                      ; preds = %cond.false419, %cond.true418
  %cond422 = phi float [ %314, %cond.true418 ], [ %fneg420, %cond.false419 ]
  %i423 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  %316 = load float, ptr %i423, align 4, !tbaa !24
  store float %316, ptr %r__2, align 4, !tbaa !10
  %317 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp424 = fcmp oge float %317, 0.000000e+00
  br i1 %cmp424, label %cond.true426, label %cond.false427

cond.true426:                                     ; preds = %cond.end421
  %318 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end429

cond.false427:                                    ; preds = %cond.end421
  %319 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg428 = fneg float %319
  br label %cond.end429

cond.end429:                                      ; preds = %cond.false427, %cond.true426
  %cond430 = phi float [ %318, %cond.true426 ], [ %fneg428, %cond.false427 ]
  %add431 = fadd float %cond422, %cond430
  store float %add431, ptr %tjj, align 4, !tbaa !10
  %320 = load float, ptr %tjj, align 4, !tbaa !10
  %321 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp432 = fcmp oge float %320, %321
  br i1 %cmp432, label %if.then434, label %if.else454

if.then434:                                       ; preds = %cond.end429
  %322 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %322, ptr %r__1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x435) #4
  store float 1.000000e+00, ptr %_x435, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y436) #4
  %323 = load float, ptr %tjj, align 4, !tbaa !10
  store float %323, ptr %_y436, align 4, !tbaa !10
  %324 = load float, ptr %_x435, align 4, !tbaa !10
  %325 = load float, ptr %_y436, align 4, !tbaa !10
  %cmp438 = fcmp olt float %324, %325
  br i1 %cmp438, label %cond.true440, label %cond.false441

cond.true440:                                     ; preds = %if.then434
  %326 = load float, ptr %_x435, align 4, !tbaa !10
  br label %cond.end442

cond.false441:                                    ; preds = %if.then434
  %327 = load float, ptr %_y436, align 4, !tbaa !10
  br label %cond.end442

cond.end442:                                      ; preds = %cond.false441, %cond.true440
  %cond443 = phi float [ %326, %cond.true440 ], [ %327, %cond.false441 ]
  store float %cond443, ptr %tmp437, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y436) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x435) #4
  %328 = load float, ptr %tmp437, align 4, !tbaa !10
  %329 = load float, ptr %grow, align 4, !tbaa !10
  %mul444 = fmul float %328, %329
  store float %mul444, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x445) #4
  %330 = load float, ptr %r__1, align 4, !tbaa !10
  store float %330, ptr %_x445, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y446) #4
  %331 = load float, ptr %r__2, align 4, !tbaa !10
  store float %331, ptr %_y446, align 4, !tbaa !10
  %332 = load float, ptr %_x445, align 4, !tbaa !10
  %333 = load float, ptr %_y446, align 4, !tbaa !10
  %cmp448 = fcmp olt float %332, %333
  br i1 %cmp448, label %cond.true450, label %cond.false451

cond.true450:                                     ; preds = %cond.end442
  %334 = load float, ptr %_x445, align 4, !tbaa !10
  br label %cond.end452

cond.false451:                                    ; preds = %cond.end442
  %335 = load float, ptr %_y446, align 4, !tbaa !10
  br label %cond.end452

cond.end452:                                      ; preds = %cond.false451, %cond.true450
  %cond453 = phi float [ %334, %cond.true450 ], [ %335, %cond.false451 ]
  store float %cond453, ptr %tmp447, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y446) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x445) #4
  %336 = load float, ptr %tmp447, align 4, !tbaa !10
  store float %336, ptr %xbnd, align 4, !tbaa !10
  br label %if.end455

if.else454:                                       ; preds = %cond.end429
  store float 0.000000e+00, ptr %xbnd, align 4, !tbaa !10
  br label %if.end455

if.end455:                                        ; preds = %if.else454, %cond.end452
  %337 = load float, ptr %tjj, align 4, !tbaa !10
  %338 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %339 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom456 = sext i32 %339 to i64
  %arrayidx457 = getelementptr inbounds float, ptr %338, i64 %idxprom456
  %340 = load float, ptr %arrayidx457, align 4, !tbaa !10
  %add458 = fadd float %337, %340
  %341 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp459 = fcmp oge float %add458, %341
  br i1 %cmp459, label %if.then461, label %if.else467

if.then461:                                       ; preds = %if.end455
  %342 = load float, ptr %tjj, align 4, !tbaa !10
  %343 = load float, ptr %tjj, align 4, !tbaa !10
  %344 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %345 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom462 = sext i32 %345 to i64
  %arrayidx463 = getelementptr inbounds float, ptr %344, i64 %idxprom462
  %346 = load float, ptr %arrayidx463, align 4, !tbaa !10
  %add464 = fadd float %343, %346
  %div465 = fdiv float %342, %add464
  %347 = load float, ptr %grow, align 4, !tbaa !10
  %mul466 = fmul float %347, %div465
  store float %mul466, ptr %grow, align 4, !tbaa !10
  br label %if.end468

if.else467:                                       ; preds = %if.end455
  store float 0.000000e+00, ptr %grow, align 4, !tbaa !10
  br label %if.end468

if.end468:                                        ; preds = %if.else467, %if.then461
  br label %for.inc469

for.inc469:                                       ; preds = %if.end468
  %348 = load i32, ptr %i__2, align 4, !tbaa !8
  %349 = load i32, ptr %j, align 4, !tbaa !8
  %add470 = add nsw i32 %349, %348
  store i32 %add470, ptr %j, align 4, !tbaa !8
  br label %for.cond388, !llvm.loop !26

for.end471:                                       ; preds = %cond.end397
  %350 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %350, ptr %grow, align 4, !tbaa !10
  br label %if.end517

if.else472:                                       ; preds = %if.end375
  store float 1.000000e+00, ptr %r__1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x473) #4
  %351 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %351, ptr %_x473, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y474) #4
  %352 = load float, ptr %smlnum, align 4, !tbaa !10
  store float %352, ptr %_y474, align 4, !tbaa !10
  %353 = load float, ptr %_x473, align 4, !tbaa !10
  %354 = load float, ptr %_y474, align 4, !tbaa !10
  %cmp476 = fcmp ogt float %353, %354
  br i1 %cmp476, label %cond.true478, label %cond.false479

cond.true478:                                     ; preds = %if.else472
  %355 = load float, ptr %_x473, align 4, !tbaa !10
  br label %cond.end480

cond.false479:                                    ; preds = %if.else472
  %356 = load float, ptr %_y474, align 4, !tbaa !10
  br label %cond.end480

cond.end480:                                      ; preds = %cond.false479, %cond.true478
  %cond481 = phi float [ %355, %cond.true478 ], [ %356, %cond.false479 ]
  store float %cond481, ptr %tmp475, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y474) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x473) #4
  %357 = load float, ptr %tmp475, align 4, !tbaa !10
  %div482 = fdiv float 5.000000e-01, %357
  store float %div482, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x483) #4
  %358 = load float, ptr %r__1, align 4, !tbaa !10
  store float %358, ptr %_x483, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y484) #4
  %359 = load float, ptr %r__2, align 4, !tbaa !10
  store float %359, ptr %_y484, align 4, !tbaa !10
  %360 = load float, ptr %_x483, align 4, !tbaa !10
  %361 = load float, ptr %_y484, align 4, !tbaa !10
  %cmp486 = fcmp olt float %360, %361
  br i1 %cmp486, label %cond.true488, label %cond.false489

cond.true488:                                     ; preds = %cond.end480
  %362 = load float, ptr %_x483, align 4, !tbaa !10
  br label %cond.end490

cond.false489:                                    ; preds = %cond.end480
  %363 = load float, ptr %_y484, align 4, !tbaa !10
  br label %cond.end490

cond.end490:                                      ; preds = %cond.false489, %cond.true488
  %cond491 = phi float [ %362, %cond.true488 ], [ %363, %cond.false489 ]
  store float %cond491, ptr %tmp485, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y484) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x483) #4
  %364 = load float, ptr %tmp485, align 4, !tbaa !10
  store float %364, ptr %grow, align 4, !tbaa !10
  %365 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %365, ptr %i__2, align 4, !tbaa !8
  %366 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %366, ptr %i__1, align 4, !tbaa !8
  %367 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %367, ptr %j, align 4, !tbaa !8
  br label %for.cond492

for.cond492:                                      ; preds = %for.inc514, %cond.end490
  %368 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp493 = icmp slt i32 %368, 0
  br i1 %cmp493, label %cond.true495, label %cond.false498

cond.true495:                                     ; preds = %for.cond492
  %369 = load i32, ptr %j, align 4, !tbaa !8
  %370 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp496 = icmp sge i32 %369, %370
  %conv497 = zext i1 %cmp496 to i32
  br label %cond.end501

cond.false498:                                    ; preds = %for.cond492
  %371 = load i32, ptr %j, align 4, !tbaa !8
  %372 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp499 = icmp sle i32 %371, %372
  %conv500 = zext i1 %cmp499 to i32
  br label %cond.end501

cond.end501:                                      ; preds = %cond.false498, %cond.true495
  %cond502 = phi i32 [ %conv497, %cond.true495 ], [ %conv500, %cond.false498 ]
  %tobool503 = icmp ne i32 %cond502, 0
  br i1 %tobool503, label %for.body504, label %for.end516

for.body504:                                      ; preds = %cond.end501
  %373 = load float, ptr %grow, align 4, !tbaa !10
  %374 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp505 = fcmp ole float %373, %374
  br i1 %cmp505, label %if.then507, label %if.end508

if.then507:                                       ; preds = %for.body504
  br label %L60

if.end508:                                        ; preds = %for.body504
  %375 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %376 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom509 = sext i32 %376 to i64
  %arrayidx510 = getelementptr inbounds float, ptr %375, i64 %idxprom509
  %377 = load float, ptr %arrayidx510, align 4, !tbaa !10
  %add511 = fadd float %377, 1.000000e+00
  %div512 = fdiv float 1.000000e+00, %add511
  %378 = load float, ptr %grow, align 4, !tbaa !10
  %mul513 = fmul float %378, %div512
  store float %mul513, ptr %grow, align 4, !tbaa !10
  br label %for.inc514

for.inc514:                                       ; preds = %if.end508
  %379 = load i32, ptr %i__1, align 4, !tbaa !8
  %380 = load i32, ptr %j, align 4, !tbaa !8
  %add515 = add nsw i32 %380, %379
  store i32 %add515, ptr %j, align 4, !tbaa !8
  br label %for.cond492, !llvm.loop !27

for.end516:                                       ; preds = %cond.end501
  br label %if.end517

if.end517:                                        ; preds = %for.end516, %for.end471
  br label %L60

L60:                                              ; preds = %if.end517, %if.then507, %if.then403, %if.then374
  br label %if.end664

if.else518:                                       ; preds = %for.end365
  %381 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool519 = icmp ne i32 %381, 0
  br i1 %tobool519, label %if.then520, label %if.else521

if.then520:                                       ; preds = %if.else518
  store i32 1, ptr %jfirst, align 4, !tbaa !8
  %382 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %383 = load i32, ptr %382, align 4, !tbaa !8
  store i32 %383, ptr %jlast, align 4, !tbaa !8
  store i32 1, ptr %jinc, align 4, !tbaa !8
  br label %if.end522

if.else521:                                       ; preds = %if.else518
  %384 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %385 = load i32, ptr %384, align 4, !tbaa !8
  store i32 %385, ptr %jfirst, align 4, !tbaa !8
  store i32 1, ptr %jlast, align 4, !tbaa !8
  store i32 -1, ptr %jinc, align 4, !tbaa !8
  br label %if.end522

if.end522:                                        ; preds = %if.else521, %if.then520
  %386 = load float, ptr %tscal, align 4, !tbaa !10
  %cmp523 = fcmp une float %386, 1.000000e+00
  br i1 %cmp523, label %if.then525, label %if.end526

if.then525:                                       ; preds = %if.end522
  store float 0.000000e+00, ptr %grow, align 4, !tbaa !10
  br label %L90

if.end526:                                        ; preds = %if.end522
  %387 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool527 = icmp ne i32 %387, 0
  br i1 %tobool527, label %if.then528, label %if.else619

if.then528:                                       ; preds = %if.end526
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x529) #4
  %388 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %388, ptr %_x529, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y530) #4
  %389 = load float, ptr %smlnum, align 4, !tbaa !10
  store float %389, ptr %_y530, align 4, !tbaa !10
  %390 = load float, ptr %_x529, align 4, !tbaa !10
  %391 = load float, ptr %_y530, align 4, !tbaa !10
  %cmp532 = fcmp ogt float %390, %391
  br i1 %cmp532, label %cond.true534, label %cond.false535

cond.true534:                                     ; preds = %if.then528
  %392 = load float, ptr %_x529, align 4, !tbaa !10
  br label %cond.end536

cond.false535:                                    ; preds = %if.then528
  %393 = load float, ptr %_y530, align 4, !tbaa !10
  br label %cond.end536

cond.end536:                                      ; preds = %cond.false535, %cond.true534
  %cond537 = phi float [ %392, %cond.true534 ], [ %393, %cond.false535 ]
  store float %cond537, ptr %tmp531, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y530) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x529) #4
  %394 = load float, ptr %tmp531, align 4, !tbaa !10
  %div538 = fdiv float 5.000000e-01, %394
  store float %div538, ptr %grow, align 4, !tbaa !10
  %395 = load float, ptr %grow, align 4, !tbaa !10
  store float %395, ptr %xbnd, align 4, !tbaa !10
  %396 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %396, ptr %i__1, align 4, !tbaa !8
  %397 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %397, ptr %i__2, align 4, !tbaa !8
  %398 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %398, ptr %j, align 4, !tbaa !8
  br label %for.cond539

for.cond539:                                      ; preds = %for.inc607, %cond.end536
  %399 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp540 = icmp slt i32 %399, 0
  br i1 %cmp540, label %cond.true542, label %cond.false545

cond.true542:                                     ; preds = %for.cond539
  %400 = load i32, ptr %j, align 4, !tbaa !8
  %401 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp543 = icmp sge i32 %400, %401
  %conv544 = zext i1 %cmp543 to i32
  br label %cond.end548

cond.false545:                                    ; preds = %for.cond539
  %402 = load i32, ptr %j, align 4, !tbaa !8
  %403 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp546 = icmp sle i32 %402, %403
  %conv547 = zext i1 %cmp546 to i32
  br label %cond.end548

cond.end548:                                      ; preds = %cond.false545, %cond.true542
  %cond549 = phi i32 [ %conv544, %cond.true542 ], [ %conv547, %cond.false545 ]
  %tobool550 = icmp ne i32 %cond549, 0
  br i1 %tobool550, label %for.body551, label %for.end609

for.body551:                                      ; preds = %cond.end548
  %404 = load float, ptr %grow, align 4, !tbaa !10
  %405 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp552 = fcmp ole float %404, %405
  br i1 %cmp552, label %if.then554, label %if.end555

if.then554:                                       ; preds = %for.body551
  br label %L90

if.end555:                                        ; preds = %for.body551
  %406 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %407 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom556 = sext i32 %407 to i64
  %arrayidx557 = getelementptr inbounds float, ptr %406, i64 %idxprom556
  %408 = load float, ptr %arrayidx557, align 4, !tbaa !10
  %add558 = fadd float %408, 1.000000e+00
  store float %add558, ptr %xj, align 4, !tbaa !10
  %409 = load float, ptr %grow, align 4, !tbaa !10
  store float %409, ptr %r__1, align 4, !tbaa !10
  %410 = load float, ptr %xbnd, align 4, !tbaa !10
  %411 = load float, ptr %xj, align 4, !tbaa !10
  %div559 = fdiv float %410, %411
  store float %div559, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x560) #4
  %412 = load float, ptr %r__1, align 4, !tbaa !10
  store float %412, ptr %_x560, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y561) #4
  %413 = load float, ptr %r__2, align 4, !tbaa !10
  store float %413, ptr %_y561, align 4, !tbaa !10
  %414 = load float, ptr %_x560, align 4, !tbaa !10
  %415 = load float, ptr %_y561, align 4, !tbaa !10
  %cmp563 = fcmp olt float %414, %415
  br i1 %cmp563, label %cond.true565, label %cond.false566

cond.true565:                                     ; preds = %if.end555
  %416 = load float, ptr %_x560, align 4, !tbaa !10
  br label %cond.end567

cond.false566:                                    ; preds = %if.end555
  %417 = load float, ptr %_y561, align 4, !tbaa !10
  br label %cond.end567

cond.end567:                                      ; preds = %cond.false566, %cond.true565
  %cond568 = phi float [ %416, %cond.true565 ], [ %417, %cond.false566 ]
  store float %cond568, ptr %tmp562, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y561) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x560) #4
  %418 = load float, ptr %tmp562, align 4, !tbaa !10
  store float %418, ptr %grow, align 4, !tbaa !10
  %419 = load i32, ptr %j, align 4, !tbaa !8
  %420 = load i32, ptr %j, align 4, !tbaa !8
  %421 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul569 = mul nsw i32 %420, %421
  %add570 = add nsw i32 %419, %mul569
  store i32 %add570, ptr %i__3, align 4, !tbaa !8
  %422 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %423 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom571 = sext i32 %423 to i64
  %arrayidx572 = getelementptr inbounds %struct.complex, ptr %422, i64 %idxprom571
  %r573 = getelementptr inbounds %struct.complex, ptr %arrayidx572, i32 0, i32 0
  %424 = load float, ptr %r573, align 4, !tbaa !15
  %r574 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  store float %424, ptr %r574, align 4, !tbaa !15
  %425 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %426 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom575 = sext i32 %426 to i64
  %arrayidx576 = getelementptr inbounds %struct.complex, ptr %425, i64 %idxprom575
  %i577 = getelementptr inbounds %struct.complex, ptr %arrayidx576, i32 0, i32 1
  %427 = load float, ptr %i577, align 4, !tbaa !24
  %i578 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  store float %427, ptr %i578, align 4, !tbaa !24
  %r579 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  %428 = load float, ptr %r579, align 4, !tbaa !15
  store float %428, ptr %r__1, align 4, !tbaa !10
  %429 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp580 = fcmp oge float %429, 0.000000e+00
  br i1 %cmp580, label %cond.true582, label %cond.false583

cond.true582:                                     ; preds = %cond.end567
  %430 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end585

cond.false583:                                    ; preds = %cond.end567
  %431 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg584 = fneg float %431
  br label %cond.end585

cond.end585:                                      ; preds = %cond.false583, %cond.true582
  %cond586 = phi float [ %430, %cond.true582 ], [ %fneg584, %cond.false583 ]
  %i587 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  %432 = load float, ptr %i587, align 4, !tbaa !24
  store float %432, ptr %r__2, align 4, !tbaa !10
  %433 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp588 = fcmp oge float %433, 0.000000e+00
  br i1 %cmp588, label %cond.true590, label %cond.false591

cond.true590:                                     ; preds = %cond.end585
  %434 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end593

cond.false591:                                    ; preds = %cond.end585
  %435 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg592 = fneg float %435
  br label %cond.end593

cond.end593:                                      ; preds = %cond.false591, %cond.true590
  %cond594 = phi float [ %434, %cond.true590 ], [ %fneg592, %cond.false591 ]
  %add595 = fadd float %cond586, %cond594
  store float %add595, ptr %tjj, align 4, !tbaa !10
  %436 = load float, ptr %tjj, align 4, !tbaa !10
  %437 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp596 = fcmp oge float %436, %437
  br i1 %cmp596, label %if.then598, label %if.else605

if.then598:                                       ; preds = %cond.end593
  %438 = load float, ptr %xj, align 4, !tbaa !10
  %439 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp599 = fcmp ogt float %438, %439
  br i1 %cmp599, label %if.then601, label %if.end604

if.then601:                                       ; preds = %if.then598
  %440 = load float, ptr %tjj, align 4, !tbaa !10
  %441 = load float, ptr %xj, align 4, !tbaa !10
  %div602 = fdiv float %440, %441
  %442 = load float, ptr %xbnd, align 4, !tbaa !10
  %mul603 = fmul float %442, %div602
  store float %mul603, ptr %xbnd, align 4, !tbaa !10
  br label %if.end604

if.end604:                                        ; preds = %if.then601, %if.then598
  br label %if.end606

if.else605:                                       ; preds = %cond.end593
  store float 0.000000e+00, ptr %xbnd, align 4, !tbaa !10
  br label %if.end606

if.end606:                                        ; preds = %if.else605, %if.end604
  br label %for.inc607

for.inc607:                                       ; preds = %if.end606
  %443 = load i32, ptr %i__2, align 4, !tbaa !8
  %444 = load i32, ptr %j, align 4, !tbaa !8
  %add608 = add nsw i32 %444, %443
  store i32 %add608, ptr %j, align 4, !tbaa !8
  br label %for.cond539, !llvm.loop !28

for.end609:                                       ; preds = %cond.end548
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x610) #4
  %445 = load float, ptr %grow, align 4, !tbaa !10
  store float %445, ptr %_x610, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y611) #4
  %446 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %446, ptr %_y611, align 4, !tbaa !10
  %447 = load float, ptr %_x610, align 4, !tbaa !10
  %448 = load float, ptr %_y611, align 4, !tbaa !10
  %cmp613 = fcmp olt float %447, %448
  br i1 %cmp613, label %cond.true615, label %cond.false616

cond.true615:                                     ; preds = %for.end609
  %449 = load float, ptr %_x610, align 4, !tbaa !10
  br label %cond.end617

cond.false616:                                    ; preds = %for.end609
  %450 = load float, ptr %_y611, align 4, !tbaa !10
  br label %cond.end617

cond.end617:                                      ; preds = %cond.false616, %cond.true615
  %cond618 = phi float [ %449, %cond.true615 ], [ %450, %cond.false616 ]
  store float %cond618, ptr %tmp612, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y611) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x610) #4
  %451 = load float, ptr %tmp612, align 4, !tbaa !10
  store float %451, ptr %grow, align 4, !tbaa !10
  br label %if.end663

if.else619:                                       ; preds = %if.end526
  store float 1.000000e+00, ptr %r__1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x620) #4
  %452 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %452, ptr %_x620, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y621) #4
  %453 = load float, ptr %smlnum, align 4, !tbaa !10
  store float %453, ptr %_y621, align 4, !tbaa !10
  %454 = load float, ptr %_x620, align 4, !tbaa !10
  %455 = load float, ptr %_y621, align 4, !tbaa !10
  %cmp623 = fcmp ogt float %454, %455
  br i1 %cmp623, label %cond.true625, label %cond.false626

cond.true625:                                     ; preds = %if.else619
  %456 = load float, ptr %_x620, align 4, !tbaa !10
  br label %cond.end627

cond.false626:                                    ; preds = %if.else619
  %457 = load float, ptr %_y621, align 4, !tbaa !10
  br label %cond.end627

cond.end627:                                      ; preds = %cond.false626, %cond.true625
  %cond628 = phi float [ %456, %cond.true625 ], [ %457, %cond.false626 ]
  store float %cond628, ptr %tmp622, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y621) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x620) #4
  %458 = load float, ptr %tmp622, align 4, !tbaa !10
  %div629 = fdiv float 5.000000e-01, %458
  store float %div629, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x630) #4
  %459 = load float, ptr %r__1, align 4, !tbaa !10
  store float %459, ptr %_x630, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y631) #4
  %460 = load float, ptr %r__2, align 4, !tbaa !10
  store float %460, ptr %_y631, align 4, !tbaa !10
  %461 = load float, ptr %_x630, align 4, !tbaa !10
  %462 = load float, ptr %_y631, align 4, !tbaa !10
  %cmp633 = fcmp olt float %461, %462
  br i1 %cmp633, label %cond.true635, label %cond.false636

cond.true635:                                     ; preds = %cond.end627
  %463 = load float, ptr %_x630, align 4, !tbaa !10
  br label %cond.end637

cond.false636:                                    ; preds = %cond.end627
  %464 = load float, ptr %_y631, align 4, !tbaa !10
  br label %cond.end637

cond.end637:                                      ; preds = %cond.false636, %cond.true635
  %cond638 = phi float [ %463, %cond.true635 ], [ %464, %cond.false636 ]
  store float %cond638, ptr %tmp632, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y631) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x630) #4
  %465 = load float, ptr %tmp632, align 4, !tbaa !10
  store float %465, ptr %grow, align 4, !tbaa !10
  %466 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %466, ptr %i__2, align 4, !tbaa !8
  %467 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %467, ptr %i__1, align 4, !tbaa !8
  %468 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %468, ptr %j, align 4, !tbaa !8
  br label %for.cond639

for.cond639:                                      ; preds = %for.inc660, %cond.end637
  %469 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp640 = icmp slt i32 %469, 0
  br i1 %cmp640, label %cond.true642, label %cond.false645

cond.true642:                                     ; preds = %for.cond639
  %470 = load i32, ptr %j, align 4, !tbaa !8
  %471 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp643 = icmp sge i32 %470, %471
  %conv644 = zext i1 %cmp643 to i32
  br label %cond.end648

cond.false645:                                    ; preds = %for.cond639
  %472 = load i32, ptr %j, align 4, !tbaa !8
  %473 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp646 = icmp sle i32 %472, %473
  %conv647 = zext i1 %cmp646 to i32
  br label %cond.end648

cond.end648:                                      ; preds = %cond.false645, %cond.true642
  %cond649 = phi i32 [ %conv644, %cond.true642 ], [ %conv647, %cond.false645 ]
  %tobool650 = icmp ne i32 %cond649, 0
  br i1 %tobool650, label %for.body651, label %for.end662

for.body651:                                      ; preds = %cond.end648
  %474 = load float, ptr %grow, align 4, !tbaa !10
  %475 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp652 = fcmp ole float %474, %475
  br i1 %cmp652, label %if.then654, label %if.end655

if.then654:                                       ; preds = %for.body651
  br label %L90

if.end655:                                        ; preds = %for.body651
  %476 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %477 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom656 = sext i32 %477 to i64
  %arrayidx657 = getelementptr inbounds float, ptr %476, i64 %idxprom656
  %478 = load float, ptr %arrayidx657, align 4, !tbaa !10
  %add658 = fadd float %478, 1.000000e+00
  store float %add658, ptr %xj, align 4, !tbaa !10
  %479 = load float, ptr %xj, align 4, !tbaa !10
  %480 = load float, ptr %grow, align 4, !tbaa !10
  %div659 = fdiv float %480, %479
  store float %div659, ptr %grow, align 4, !tbaa !10
  br label %for.inc660

for.inc660:                                       ; preds = %if.end655
  %481 = load i32, ptr %i__1, align 4, !tbaa !8
  %482 = load i32, ptr %j, align 4, !tbaa !8
  %add661 = add nsw i32 %482, %481
  store i32 %add661, ptr %j, align 4, !tbaa !8
  br label %for.cond639, !llvm.loop !29

for.end662:                                       ; preds = %cond.end648
  br label %if.end663

if.end663:                                        ; preds = %for.end662, %cond.end617
  br label %L90

L90:                                              ; preds = %if.end663, %if.then654, %if.then554, %if.then525
  br label %if.end664

if.end664:                                        ; preds = %L90, %L60
  %483 = load float, ptr %grow, align 4, !tbaa !10
  %484 = load float, ptr %tscal, align 4, !tbaa !10
  %mul665 = fmul float %483, %484
  %485 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp666 = fcmp ogt float %mul665, %485
  br i1 %cmp666, label %if.then668, label %if.else673

if.then668:                                       ; preds = %if.end664
  %486 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %487 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %488 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %489 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %490 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %491 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom669 = sext i32 %491 to i64
  %arrayidx670 = getelementptr inbounds %struct.complex, ptr %490, i64 %idxprom669
  %492 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %493 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx671 = getelementptr inbounds %struct.complex, ptr %493, i64 1
  %call672 = call i32 @ctrsv_(ptr noundef %486, ptr noundef %487, ptr noundef %488, ptr noundef %489, ptr noundef %arrayidx670, ptr noundef %492, ptr noundef %arrayidx671, ptr noundef @c__1)
  br label %if.end2120

if.else673:                                       ; preds = %if.end664
  %494 = load float, ptr %xmax, align 4, !tbaa !10
  %495 = load float, ptr %bignum, align 4, !tbaa !10
  %mul674 = fmul float %495, 5.000000e-01
  %cmp675 = fcmp ogt float %494, %mul674
  br i1 %cmp675, label %if.then677, label %if.else682

if.then677:                                       ; preds = %if.else673
  %496 = load float, ptr %bignum, align 4, !tbaa !10
  %mul678 = fmul float %496, 5.000000e-01
  %497 = load float, ptr %xmax, align 4, !tbaa !10
  %div679 = fdiv float %mul678, %497
  %498 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  store float %div679, ptr %498, align 4, !tbaa !10
  %499 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %500 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %501 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx680 = getelementptr inbounds %struct.complex, ptr %501, i64 1
  %call681 = call i32 @csscal_(ptr noundef %499, ptr noundef %500, ptr noundef %arrayidx680, ptr noundef @c__1)
  %502 = load float, ptr %bignum, align 4, !tbaa !10
  store float %502, ptr %xmax, align 4, !tbaa !10
  br label %if.end684

if.else682:                                       ; preds = %if.else673
  %503 = load float, ptr %xmax, align 4, !tbaa !10
  %mul683 = fmul float %503, 2.000000e+00
  store float %mul683, ptr %xmax, align 4, !tbaa !10
  br label %if.end684

if.end684:                                        ; preds = %if.else682, %if.then677
  %504 = load i32, ptr %notran, align 4, !tbaa !8
  %tobool685 = icmp ne i32 %504, 0
  br i1 %tobool685, label %if.then686, label %if.else1033

if.then686:                                       ; preds = %if.end684
  %505 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %505, ptr %i__1, align 4, !tbaa !8
  %506 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %506, ptr %i__2, align 4, !tbaa !8
  %507 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %507, ptr %j, align 4, !tbaa !8
  br label %for.cond687

for.cond687:                                      ; preds = %for.inc1030, %if.then686
  %508 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp688 = icmp slt i32 %508, 0
  br i1 %cmp688, label %cond.true690, label %cond.false693

cond.true690:                                     ; preds = %for.cond687
  %509 = load i32, ptr %j, align 4, !tbaa !8
  %510 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp691 = icmp sge i32 %509, %510
  %conv692 = zext i1 %cmp691 to i32
  br label %cond.end696

cond.false693:                                    ; preds = %for.cond687
  %511 = load i32, ptr %j, align 4, !tbaa !8
  %512 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp694 = icmp sle i32 %511, %512
  %conv695 = zext i1 %cmp694 to i32
  br label %cond.end696

cond.end696:                                      ; preds = %cond.false693, %cond.true690
  %cond697 = phi i32 [ %conv692, %cond.true690 ], [ %conv695, %cond.false693 ]
  %tobool698 = icmp ne i32 %cond697, 0
  br i1 %tobool698, label %for.body699, label %for.end1032

for.body699:                                      ; preds = %cond.end696
  %513 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %513, ptr %i__3, align 4, !tbaa !8
  %514 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %515 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom700 = sext i32 %515 to i64
  %arrayidx701 = getelementptr inbounds %struct.complex, ptr %514, i64 %idxprom700
  %r702 = getelementptr inbounds %struct.complex, ptr %arrayidx701, i32 0, i32 0
  %516 = load float, ptr %r702, align 4, !tbaa !15
  store float %516, ptr %r__1, align 4, !tbaa !10
  %517 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp703 = fcmp oge float %517, 0.000000e+00
  br i1 %cmp703, label %cond.true705, label %cond.false706

cond.true705:                                     ; preds = %for.body699
  %518 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end708

cond.false706:                                    ; preds = %for.body699
  %519 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg707 = fneg float %519
  br label %cond.end708

cond.end708:                                      ; preds = %cond.false706, %cond.true705
  %cond709 = phi float [ %518, %cond.true705 ], [ %fneg707, %cond.false706 ]
  %520 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %521 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom710 = sext i32 %521 to i64
  %arrayidx711 = getelementptr inbounds %struct.complex, ptr %520, i64 %idxprom710
  %i712 = getelementptr inbounds %struct.complex, ptr %arrayidx711, i32 0, i32 1
  %522 = load float, ptr %i712, align 4, !tbaa !24
  store float %522, ptr %r__2, align 4, !tbaa !10
  %523 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp713 = fcmp oge float %523, 0.000000e+00
  br i1 %cmp713, label %cond.true715, label %cond.false716

cond.true715:                                     ; preds = %cond.end708
  %524 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end718

cond.false716:                                    ; preds = %cond.end708
  %525 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg717 = fneg float %525
  br label %cond.end718

cond.end718:                                      ; preds = %cond.false716, %cond.true715
  %cond719 = phi float [ %524, %cond.true715 ], [ %fneg717, %cond.false716 ]
  %add720 = fadd float %cond709, %cond719
  store float %add720, ptr %xj, align 4, !tbaa !10
  %526 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool721 = icmp ne i32 %526, 0
  br i1 %tobool721, label %if.then722, label %if.else739

if.then722:                                       ; preds = %cond.end718
  %527 = load i32, ptr %j, align 4, !tbaa !8
  %528 = load i32, ptr %j, align 4, !tbaa !8
  %529 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul723 = mul nsw i32 %528, %529
  %add724 = add nsw i32 %527, %mul723
  store i32 %add724, ptr %i__3, align 4, !tbaa !8
  %530 = load float, ptr %tscal, align 4, !tbaa !10
  %531 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %532 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom725 = sext i32 %532 to i64
  %arrayidx726 = getelementptr inbounds %struct.complex, ptr %531, i64 %idxprom725
  %r727 = getelementptr inbounds %struct.complex, ptr %arrayidx726, i32 0, i32 0
  %533 = load float, ptr %r727, align 4, !tbaa !15
  %mul728 = fmul float %530, %533
  %r729 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul728, ptr %r729, align 4, !tbaa !15
  %534 = load float, ptr %tscal, align 4, !tbaa !10
  %535 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %536 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom730 = sext i32 %536 to i64
  %arrayidx731 = getelementptr inbounds %struct.complex, ptr %535, i64 %idxprom730
  %i732 = getelementptr inbounds %struct.complex, ptr %arrayidx731, i32 0, i32 1
  %537 = load float, ptr %i732, align 4, !tbaa !24
  %mul733 = fmul float %534, %537
  %i734 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul733, ptr %i734, align 4, !tbaa !24
  %r735 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %538 = load float, ptr %r735, align 4, !tbaa !15
  %r736 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  store float %538, ptr %r736, align 4, !tbaa !15
  %i737 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %539 = load float, ptr %i737, align 4, !tbaa !24
  %i738 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  store float %539, ptr %i738, align 4, !tbaa !24
  br label %if.end746

if.else739:                                       ; preds = %cond.end718
  %540 = load float, ptr %tscal, align 4, !tbaa !10
  %r740 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  store float %540, ptr %r740, align 4, !tbaa !15
  %i741 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  store float 0.000000e+00, ptr %i741, align 4, !tbaa !24
  %541 = load float, ptr %tscal, align 4, !tbaa !10
  %cmp742 = fcmp oeq float %541, 1.000000e+00
  br i1 %cmp742, label %if.then744, label %if.end745

if.then744:                                       ; preds = %if.else739
  br label %L105

if.end745:                                        ; preds = %if.else739
  br label %if.end746

if.end746:                                        ; preds = %if.end745, %if.then722
  %r747 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  %542 = load float, ptr %r747, align 4, !tbaa !15
  store float %542, ptr %r__1, align 4, !tbaa !10
  %543 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp748 = fcmp oge float %543, 0.000000e+00
  br i1 %cmp748, label %cond.true750, label %cond.false751

cond.true750:                                     ; preds = %if.end746
  %544 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end753

cond.false751:                                    ; preds = %if.end746
  %545 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg752 = fneg float %545
  br label %cond.end753

cond.end753:                                      ; preds = %cond.false751, %cond.true750
  %cond754 = phi float [ %544, %cond.true750 ], [ %fneg752, %cond.false751 ]
  %i755 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  %546 = load float, ptr %i755, align 4, !tbaa !24
  store float %546, ptr %r__2, align 4, !tbaa !10
  %547 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp756 = fcmp oge float %547, 0.000000e+00
  br i1 %cmp756, label %cond.true758, label %cond.false759

cond.true758:                                     ; preds = %cond.end753
  %548 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end761

cond.false759:                                    ; preds = %cond.end753
  %549 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg760 = fneg float %549
  br label %cond.end761

cond.end761:                                      ; preds = %cond.false759, %cond.true758
  %cond762 = phi float [ %548, %cond.true758 ], [ %fneg760, %cond.false759 ]
  %add763 = fadd float %cond754, %cond762
  store float %add763, ptr %tjj, align 4, !tbaa !10
  %550 = load float, ptr %tjj, align 4, !tbaa !10
  %551 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp764 = fcmp ogt float %550, %551
  br i1 %cmp764, label %if.then766, label %if.else812

if.then766:                                       ; preds = %cond.end761
  %552 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp767 = fcmp olt float %552, 1.000000e+00
  br i1 %cmp767, label %if.then769, label %if.end780

if.then769:                                       ; preds = %if.then766
  %553 = load float, ptr %xj, align 4, !tbaa !10
  %554 = load float, ptr %tjj, align 4, !tbaa !10
  %555 = load float, ptr %bignum, align 4, !tbaa !10
  %mul770 = fmul float %554, %555
  %cmp771 = fcmp ogt float %553, %mul770
  br i1 %cmp771, label %if.then773, label %if.end779

if.then773:                                       ; preds = %if.then769
  %556 = load float, ptr %xj, align 4, !tbaa !10
  %div774 = fdiv float 1.000000e+00, %556
  store float %div774, ptr %rec, align 4, !tbaa !10
  %557 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %558 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx775 = getelementptr inbounds %struct.complex, ptr %558, i64 1
  %call776 = call i32 @csscal_(ptr noundef %557, ptr noundef %rec, ptr noundef %arrayidx775, ptr noundef @c__1)
  %559 = load float, ptr %rec, align 4, !tbaa !10
  %560 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %561 = load float, ptr %560, align 4, !tbaa !10
  %mul777 = fmul float %561, %559
  store float %mul777, ptr %560, align 4, !tbaa !10
  %562 = load float, ptr %rec, align 4, !tbaa !10
  %563 = load float, ptr %xmax, align 4, !tbaa !10
  %mul778 = fmul float %563, %562
  store float %mul778, ptr %xmax, align 4, !tbaa !10
  br label %if.end779

if.end779:                                        ; preds = %if.then773, %if.then769
  br label %if.end780

if.end780:                                        ; preds = %if.end779, %if.then766
  %564 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %564, ptr %i__3, align 4, !tbaa !8
  %565 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %566 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom781 = sext i32 %566 to i64
  %arrayidx782 = getelementptr inbounds %struct.complex, ptr %565, i64 %idxprom781
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx782, ptr noundef %tjjs)
  %r783 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %567 = load float, ptr %r783, align 4, !tbaa !15
  %568 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %569 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom784 = sext i32 %569 to i64
  %arrayidx785 = getelementptr inbounds %struct.complex, ptr %568, i64 %idxprom784
  %r786 = getelementptr inbounds %struct.complex, ptr %arrayidx785, i32 0, i32 0
  store float %567, ptr %r786, align 4, !tbaa !15
  %i787 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %570 = load float, ptr %i787, align 4, !tbaa !24
  %571 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %572 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom788 = sext i32 %572 to i64
  %arrayidx789 = getelementptr inbounds %struct.complex, ptr %571, i64 %idxprom788
  %i790 = getelementptr inbounds %struct.complex, ptr %arrayidx789, i32 0, i32 1
  store float %570, ptr %i790, align 4, !tbaa !24
  %573 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %573, ptr %i__3, align 4, !tbaa !8
  %574 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %575 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom791 = sext i32 %575 to i64
  %arrayidx792 = getelementptr inbounds %struct.complex, ptr %574, i64 %idxprom791
  %r793 = getelementptr inbounds %struct.complex, ptr %arrayidx792, i32 0, i32 0
  %576 = load float, ptr %r793, align 4, !tbaa !15
  store float %576, ptr %r__1, align 4, !tbaa !10
  %577 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp794 = fcmp oge float %577, 0.000000e+00
  br i1 %cmp794, label %cond.true796, label %cond.false797

cond.true796:                                     ; preds = %if.end780
  %578 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end799

cond.false797:                                    ; preds = %if.end780
  %579 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg798 = fneg float %579
  br label %cond.end799

cond.end799:                                      ; preds = %cond.false797, %cond.true796
  %cond800 = phi float [ %578, %cond.true796 ], [ %fneg798, %cond.false797 ]
  %580 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %581 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom801 = sext i32 %581 to i64
  %arrayidx802 = getelementptr inbounds %struct.complex, ptr %580, i64 %idxprom801
  %i803 = getelementptr inbounds %struct.complex, ptr %arrayidx802, i32 0, i32 1
  %582 = load float, ptr %i803, align 4, !tbaa !24
  store float %582, ptr %r__2, align 4, !tbaa !10
  %583 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp804 = fcmp oge float %583, 0.000000e+00
  br i1 %cmp804, label %cond.true806, label %cond.false807

cond.true806:                                     ; preds = %cond.end799
  %584 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end809

cond.false807:                                    ; preds = %cond.end799
  %585 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg808 = fneg float %585
  br label %cond.end809

cond.end809:                                      ; preds = %cond.false807, %cond.true806
  %cond810 = phi float [ %584, %cond.true806 ], [ %fneg808, %cond.false807 ]
  %add811 = fadd float %cond800, %cond810
  store float %add811, ptr %xj, align 4, !tbaa !10
  br label %if.end888

if.else812:                                       ; preds = %cond.end761
  %586 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp813 = fcmp ogt float %586, 0.000000e+00
  br i1 %cmp813, label %if.then815, label %if.else867

if.then815:                                       ; preds = %if.else812
  %587 = load float, ptr %xj, align 4, !tbaa !10
  %588 = load float, ptr %tjj, align 4, !tbaa !10
  %589 = load float, ptr %bignum, align 4, !tbaa !10
  %mul816 = fmul float %588, %589
  %cmp817 = fcmp ogt float %587, %mul816
  br i1 %cmp817, label %if.then819, label %if.end835

if.then819:                                       ; preds = %if.then815
  %590 = load float, ptr %tjj, align 4, !tbaa !10
  %591 = load float, ptr %bignum, align 4, !tbaa !10
  %mul820 = fmul float %590, %591
  %592 = load float, ptr %xj, align 4, !tbaa !10
  %div821 = fdiv float %mul820, %592
  store float %div821, ptr %rec, align 4, !tbaa !10
  %593 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %594 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom822 = sext i32 %594 to i64
  %arrayidx823 = getelementptr inbounds float, ptr %593, i64 %idxprom822
  %595 = load float, ptr %arrayidx823, align 4, !tbaa !10
  %cmp824 = fcmp ogt float %595, 1.000000e+00
  br i1 %cmp824, label %if.then826, label %if.end830

if.then826:                                       ; preds = %if.then819
  %596 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %597 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom827 = sext i32 %597 to i64
  %arrayidx828 = getelementptr inbounds float, ptr %596, i64 %idxprom827
  %598 = load float, ptr %arrayidx828, align 4, !tbaa !10
  %599 = load float, ptr %rec, align 4, !tbaa !10
  %div829 = fdiv float %599, %598
  store float %div829, ptr %rec, align 4, !tbaa !10
  br label %if.end830

if.end830:                                        ; preds = %if.then826, %if.then819
  %600 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %601 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx831 = getelementptr inbounds %struct.complex, ptr %601, i64 1
  %call832 = call i32 @csscal_(ptr noundef %600, ptr noundef %rec, ptr noundef %arrayidx831, ptr noundef @c__1)
  %602 = load float, ptr %rec, align 4, !tbaa !10
  %603 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %604 = load float, ptr %603, align 4, !tbaa !10
  %mul833 = fmul float %604, %602
  store float %mul833, ptr %603, align 4, !tbaa !10
  %605 = load float, ptr %rec, align 4, !tbaa !10
  %606 = load float, ptr %xmax, align 4, !tbaa !10
  %mul834 = fmul float %606, %605
  store float %mul834, ptr %xmax, align 4, !tbaa !10
  br label %if.end835

if.end835:                                        ; preds = %if.end830, %if.then815
  %607 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %607, ptr %i__3, align 4, !tbaa !8
  %608 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %609 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom836 = sext i32 %609 to i64
  %arrayidx837 = getelementptr inbounds %struct.complex, ptr %608, i64 %idxprom836
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx837, ptr noundef %tjjs)
  %r838 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %610 = load float, ptr %r838, align 4, !tbaa !15
  %611 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %612 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom839 = sext i32 %612 to i64
  %arrayidx840 = getelementptr inbounds %struct.complex, ptr %611, i64 %idxprom839
  %r841 = getelementptr inbounds %struct.complex, ptr %arrayidx840, i32 0, i32 0
  store float %610, ptr %r841, align 4, !tbaa !15
  %i842 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %613 = load float, ptr %i842, align 4, !tbaa !24
  %614 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %615 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom843 = sext i32 %615 to i64
  %arrayidx844 = getelementptr inbounds %struct.complex, ptr %614, i64 %idxprom843
  %i845 = getelementptr inbounds %struct.complex, ptr %arrayidx844, i32 0, i32 1
  store float %613, ptr %i845, align 4, !tbaa !24
  %616 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %616, ptr %i__3, align 4, !tbaa !8
  %617 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %618 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom846 = sext i32 %618 to i64
  %arrayidx847 = getelementptr inbounds %struct.complex, ptr %617, i64 %idxprom846
  %r848 = getelementptr inbounds %struct.complex, ptr %arrayidx847, i32 0, i32 0
  %619 = load float, ptr %r848, align 4, !tbaa !15
  store float %619, ptr %r__1, align 4, !tbaa !10
  %620 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp849 = fcmp oge float %620, 0.000000e+00
  br i1 %cmp849, label %cond.true851, label %cond.false852

cond.true851:                                     ; preds = %if.end835
  %621 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end854

cond.false852:                                    ; preds = %if.end835
  %622 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg853 = fneg float %622
  br label %cond.end854

cond.end854:                                      ; preds = %cond.false852, %cond.true851
  %cond855 = phi float [ %621, %cond.true851 ], [ %fneg853, %cond.false852 ]
  %623 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %624 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom856 = sext i32 %624 to i64
  %arrayidx857 = getelementptr inbounds %struct.complex, ptr %623, i64 %idxprom856
  %i858 = getelementptr inbounds %struct.complex, ptr %arrayidx857, i32 0, i32 1
  %625 = load float, ptr %i858, align 4, !tbaa !24
  store float %625, ptr %r__2, align 4, !tbaa !10
  %626 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp859 = fcmp oge float %626, 0.000000e+00
  br i1 %cmp859, label %cond.true861, label %cond.false862

cond.true861:                                     ; preds = %cond.end854
  %627 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end864

cond.false862:                                    ; preds = %cond.end854
  %628 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg863 = fneg float %628
  br label %cond.end864

cond.end864:                                      ; preds = %cond.false862, %cond.true861
  %cond865 = phi float [ %627, %cond.true861 ], [ %fneg863, %cond.false862 ]
  %add866 = fadd float %cond855, %cond865
  store float %add866, ptr %xj, align 4, !tbaa !10
  br label %if.end887

if.else867:                                       ; preds = %if.else812
  %629 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %630 = load i32, ptr %629, align 4, !tbaa !8
  store i32 %630, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond868

for.cond868:                                      ; preds = %for.inc878, %if.else867
  %631 = load i32, ptr %i__, align 4, !tbaa !8
  %632 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp869 = icmp sle i32 %631, %632
  br i1 %cmp869, label %for.body871, label %for.end880

for.body871:                                      ; preds = %for.cond868
  %633 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %633, ptr %i__4, align 4, !tbaa !8
  %634 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %635 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom872 = sext i32 %635 to i64
  %arrayidx873 = getelementptr inbounds %struct.complex, ptr %634, i64 %idxprom872
  %r874 = getelementptr inbounds %struct.complex, ptr %arrayidx873, i32 0, i32 0
  store float 0.000000e+00, ptr %r874, align 4, !tbaa !15
  %636 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %637 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom875 = sext i32 %637 to i64
  %arrayidx876 = getelementptr inbounds %struct.complex, ptr %636, i64 %idxprom875
  %i877 = getelementptr inbounds %struct.complex, ptr %arrayidx876, i32 0, i32 1
  store float 0.000000e+00, ptr %i877, align 4, !tbaa !24
  br label %for.inc878

for.inc878:                                       ; preds = %for.body871
  %638 = load i32, ptr %i__, align 4, !tbaa !8
  %inc879 = add nsw i32 %638, 1
  store i32 %inc879, ptr %i__, align 4, !tbaa !8
  br label %for.cond868, !llvm.loop !30

for.end880:                                       ; preds = %for.cond868
  %639 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %639, ptr %i__3, align 4, !tbaa !8
  %640 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %641 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom881 = sext i32 %641 to i64
  %arrayidx882 = getelementptr inbounds %struct.complex, ptr %640, i64 %idxprom881
  %r883 = getelementptr inbounds %struct.complex, ptr %arrayidx882, i32 0, i32 0
  store float 1.000000e+00, ptr %r883, align 4, !tbaa !15
  %642 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %643 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom884 = sext i32 %643 to i64
  %arrayidx885 = getelementptr inbounds %struct.complex, ptr %642, i64 %idxprom884
  %i886 = getelementptr inbounds %struct.complex, ptr %arrayidx885, i32 0, i32 1
  store float 0.000000e+00, ptr %i886, align 4, !tbaa !24
  store float 1.000000e+00, ptr %xj, align 4, !tbaa !10
  %644 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  store float 0.000000e+00, ptr %644, align 4, !tbaa !10
  store float 0.000000e+00, ptr %xmax, align 4, !tbaa !10
  br label %if.end887

if.end887:                                        ; preds = %for.end880, %cond.end864
  br label %if.end888

if.end888:                                        ; preds = %if.end887, %cond.end809
  br label %L105

L105:                                             ; preds = %if.end888, %if.then744
  %645 = load float, ptr %xj, align 4, !tbaa !10
  %cmp889 = fcmp ogt float %645, 1.000000e+00
  br i1 %cmp889, label %if.then891, label %if.else905

if.then891:                                       ; preds = %L105
  %646 = load float, ptr %xj, align 4, !tbaa !10
  %div892 = fdiv float 1.000000e+00, %646
  store float %div892, ptr %rec, align 4, !tbaa !10
  %647 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %648 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom893 = sext i32 %648 to i64
  %arrayidx894 = getelementptr inbounds float, ptr %647, i64 %idxprom893
  %649 = load float, ptr %arrayidx894, align 4, !tbaa !10
  %650 = load float, ptr %bignum, align 4, !tbaa !10
  %651 = load float, ptr %xmax, align 4, !tbaa !10
  %sub895 = fsub float %650, %651
  %652 = load float, ptr %rec, align 4, !tbaa !10
  %mul896 = fmul float %sub895, %652
  %cmp897 = fcmp ogt float %649, %mul896
  br i1 %cmp897, label %if.then899, label %if.end904

if.then899:                                       ; preds = %if.then891
  %653 = load float, ptr %rec, align 4, !tbaa !10
  %mul900 = fmul float %653, 5.000000e-01
  store float %mul900, ptr %rec, align 4, !tbaa !10
  %654 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %655 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx901 = getelementptr inbounds %struct.complex, ptr %655, i64 1
  %call902 = call i32 @csscal_(ptr noundef %654, ptr noundef %rec, ptr noundef %arrayidx901, ptr noundef @c__1)
  %656 = load float, ptr %rec, align 4, !tbaa !10
  %657 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %658 = load float, ptr %657, align 4, !tbaa !10
  %mul903 = fmul float %658, %656
  store float %mul903, ptr %657, align 4, !tbaa !10
  br label %if.end904

if.end904:                                        ; preds = %if.then899, %if.then891
  br label %if.end917

if.else905:                                       ; preds = %L105
  %659 = load float, ptr %xj, align 4, !tbaa !10
  %660 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %661 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom906 = sext i32 %661 to i64
  %arrayidx907 = getelementptr inbounds float, ptr %660, i64 %idxprom906
  %662 = load float, ptr %arrayidx907, align 4, !tbaa !10
  %mul908 = fmul float %659, %662
  %663 = load float, ptr %bignum, align 4, !tbaa !10
  %664 = load float, ptr %xmax, align 4, !tbaa !10
  %sub909 = fsub float %663, %664
  %cmp910 = fcmp ogt float %mul908, %sub909
  br i1 %cmp910, label %if.then912, label %if.end916

if.then912:                                       ; preds = %if.else905
  %665 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %666 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx913 = getelementptr inbounds %struct.complex, ptr %666, i64 1
  %call914 = call i32 @csscal_(ptr noundef %665, ptr noundef @c_b40, ptr noundef %arrayidx913, ptr noundef @c__1)
  %667 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %668 = load float, ptr %667, align 4, !tbaa !10
  %mul915 = fmul float %668, 5.000000e-01
  store float %mul915, ptr %667, align 4, !tbaa !10
  br label %if.end916

if.end916:                                        ; preds = %if.then912, %if.else905
  br label %if.end917

if.end917:                                        ; preds = %if.end916, %if.end904
  %669 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool918 = icmp ne i32 %669, 0
  br i1 %tobool918, label %if.then919, label %if.else971

if.then919:                                       ; preds = %if.end917
  %670 = load i32, ptr %j, align 4, !tbaa !8
  %cmp920 = icmp sgt i32 %670, 1
  br i1 %cmp920, label %if.then922, label %if.end970

if.then922:                                       ; preds = %if.then919
  %671 = load i32, ptr %j, align 4, !tbaa !8
  %sub923 = sub nsw i32 %671, 1
  store i32 %sub923, ptr %i__3, align 4, !tbaa !8
  %672 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %672, ptr %i__4, align 4, !tbaa !8
  %673 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %674 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom924 = sext i32 %674 to i64
  %arrayidx925 = getelementptr inbounds %struct.complex, ptr %673, i64 %idxprom924
  %r926 = getelementptr inbounds %struct.complex, ptr %arrayidx925, i32 0, i32 0
  %675 = load float, ptr %r926, align 4, !tbaa !15
  %fneg927 = fneg float %675
  %r928 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %fneg927, ptr %r928, align 4, !tbaa !15
  %676 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %677 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom929 = sext i32 %677 to i64
  %arrayidx930 = getelementptr inbounds %struct.complex, ptr %676, i64 %idxprom929
  %i931 = getelementptr inbounds %struct.complex, ptr %arrayidx930, i32 0, i32 1
  %678 = load float, ptr %i931, align 4, !tbaa !24
  %fneg932 = fneg float %678
  %i933 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %fneg932, ptr %i933, align 4, !tbaa !24
  %679 = load float, ptr %tscal, align 4, !tbaa !10
  %r934 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %680 = load float, ptr %r934, align 4, !tbaa !15
  %mul935 = fmul float %679, %680
  %r936 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul935, ptr %r936, align 4, !tbaa !15
  %681 = load float, ptr %tscal, align 4, !tbaa !10
  %i937 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %682 = load float, ptr %i937, align 4, !tbaa !24
  %mul938 = fmul float %681, %682
  %i939 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul938, ptr %i939, align 4, !tbaa !24
  %683 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %684 = load i32, ptr %j, align 4, !tbaa !8
  %685 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul940 = mul nsw i32 %684, %685
  %add941 = add nsw i32 %mul940, 1
  %idxprom942 = sext i32 %add941 to i64
  %arrayidx943 = getelementptr inbounds %struct.complex, ptr %683, i64 %idxprom942
  %686 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx944 = getelementptr inbounds %struct.complex, ptr %686, i64 1
  %call945 = call i32 @caxpy_(ptr noundef %i__3, ptr noundef %q__1, ptr noundef %arrayidx943, ptr noundef @c__1, ptr noundef %arrayidx944, ptr noundef @c__1)
  %687 = load i32, ptr %j, align 4, !tbaa !8
  %sub946 = sub nsw i32 %687, 1
  store i32 %sub946, ptr %i__3, align 4, !tbaa !8
  %688 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx947 = getelementptr inbounds %struct.complex, ptr %688, i64 1
  %call948 = call i32 @icamax_(ptr noundef %i__3, ptr noundef %arrayidx947, ptr noundef @c__1)
  store i32 %call948, ptr %i__, align 4, !tbaa !8
  %689 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %689, ptr %i__3, align 4, !tbaa !8
  %690 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %691 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom949 = sext i32 %691 to i64
  %arrayidx950 = getelementptr inbounds %struct.complex, ptr %690, i64 %idxprom949
  %r951 = getelementptr inbounds %struct.complex, ptr %arrayidx950, i32 0, i32 0
  %692 = load float, ptr %r951, align 4, !tbaa !15
  store float %692, ptr %r__1, align 4, !tbaa !10
  %693 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp952 = fcmp oge float %693, 0.000000e+00
  br i1 %cmp952, label %cond.true954, label %cond.false955

cond.true954:                                     ; preds = %if.then922
  %694 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end957

cond.false955:                                    ; preds = %if.then922
  %695 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg956 = fneg float %695
  br label %cond.end957

cond.end957:                                      ; preds = %cond.false955, %cond.true954
  %cond958 = phi float [ %694, %cond.true954 ], [ %fneg956, %cond.false955 ]
  %696 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %697 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom959 = sext i32 %697 to i64
  %arrayidx960 = getelementptr inbounds %struct.complex, ptr %696, i64 %idxprom959
  %i961 = getelementptr inbounds %struct.complex, ptr %arrayidx960, i32 0, i32 1
  %698 = load float, ptr %i961, align 4, !tbaa !24
  store float %698, ptr %r__2, align 4, !tbaa !10
  %699 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp962 = fcmp oge float %699, 0.000000e+00
  br i1 %cmp962, label %cond.true964, label %cond.false965

cond.true964:                                     ; preds = %cond.end957
  %700 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end967

cond.false965:                                    ; preds = %cond.end957
  %701 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg966 = fneg float %701
  br label %cond.end967

cond.end967:                                      ; preds = %cond.false965, %cond.true964
  %cond968 = phi float [ %700, %cond.true964 ], [ %fneg966, %cond.false965 ]
  %add969 = fadd float %cond958, %cond968
  store float %add969, ptr %xmax, align 4, !tbaa !10
  br label %if.end970

if.end970:                                        ; preds = %cond.end967, %if.then919
  br label %if.end1029

if.else971:                                       ; preds = %if.end917
  %702 = load i32, ptr %j, align 4, !tbaa !8
  %703 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %704 = load i32, ptr %703, align 4, !tbaa !8
  %cmp972 = icmp slt i32 %702, %704
  br i1 %cmp972, label %if.then974, label %if.end1028

if.then974:                                       ; preds = %if.else971
  %705 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %706 = load i32, ptr %705, align 4, !tbaa !8
  %707 = load i32, ptr %j, align 4, !tbaa !8
  %sub975 = sub nsw i32 %706, %707
  store i32 %sub975, ptr %i__3, align 4, !tbaa !8
  %708 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %708, ptr %i__4, align 4, !tbaa !8
  %709 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %710 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom976 = sext i32 %710 to i64
  %arrayidx977 = getelementptr inbounds %struct.complex, ptr %709, i64 %idxprom976
  %r978 = getelementptr inbounds %struct.complex, ptr %arrayidx977, i32 0, i32 0
  %711 = load float, ptr %r978, align 4, !tbaa !15
  %fneg979 = fneg float %711
  %r980 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %fneg979, ptr %r980, align 4, !tbaa !15
  %712 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %713 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom981 = sext i32 %713 to i64
  %arrayidx982 = getelementptr inbounds %struct.complex, ptr %712, i64 %idxprom981
  %i983 = getelementptr inbounds %struct.complex, ptr %arrayidx982, i32 0, i32 1
  %714 = load float, ptr %i983, align 4, !tbaa !24
  %fneg984 = fneg float %714
  %i985 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %fneg984, ptr %i985, align 4, !tbaa !24
  %715 = load float, ptr %tscal, align 4, !tbaa !10
  %r986 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %716 = load float, ptr %r986, align 4, !tbaa !15
  %mul987 = fmul float %715, %716
  %r988 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul987, ptr %r988, align 4, !tbaa !15
  %717 = load float, ptr %tscal, align 4, !tbaa !10
  %i989 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %718 = load float, ptr %i989, align 4, !tbaa !24
  %mul990 = fmul float %717, %718
  %i991 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul990, ptr %i991, align 4, !tbaa !24
  %719 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %720 = load i32, ptr %j, align 4, !tbaa !8
  %add992 = add nsw i32 %720, 1
  %721 = load i32, ptr %j, align 4, !tbaa !8
  %722 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul993 = mul nsw i32 %721, %722
  %add994 = add nsw i32 %add992, %mul993
  %idxprom995 = sext i32 %add994 to i64
  %arrayidx996 = getelementptr inbounds %struct.complex, ptr %719, i64 %idxprom995
  %723 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %724 = load i32, ptr %j, align 4, !tbaa !8
  %add997 = add nsw i32 %724, 1
  %idxprom998 = sext i32 %add997 to i64
  %arrayidx999 = getelementptr inbounds %struct.complex, ptr %723, i64 %idxprom998
  %call1000 = call i32 @caxpy_(ptr noundef %i__3, ptr noundef %q__1, ptr noundef %arrayidx996, ptr noundef @c__1, ptr noundef %arrayidx999, ptr noundef @c__1)
  %725 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %726 = load i32, ptr %725, align 4, !tbaa !8
  %727 = load i32, ptr %j, align 4, !tbaa !8
  %sub1001 = sub nsw i32 %726, %727
  store i32 %sub1001, ptr %i__3, align 4, !tbaa !8
  %728 = load i32, ptr %j, align 4, !tbaa !8
  %729 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %730 = load i32, ptr %j, align 4, !tbaa !8
  %add1002 = add nsw i32 %730, 1
  %idxprom1003 = sext i32 %add1002 to i64
  %arrayidx1004 = getelementptr inbounds %struct.complex, ptr %729, i64 %idxprom1003
  %call1005 = call i32 @icamax_(ptr noundef %i__3, ptr noundef %arrayidx1004, ptr noundef @c__1)
  %add1006 = add nsw i32 %728, %call1005
  store i32 %add1006, ptr %i__, align 4, !tbaa !8
  %731 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %731, ptr %i__3, align 4, !tbaa !8
  %732 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %733 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1007 = sext i32 %733 to i64
  %arrayidx1008 = getelementptr inbounds %struct.complex, ptr %732, i64 %idxprom1007
  %r1009 = getelementptr inbounds %struct.complex, ptr %arrayidx1008, i32 0, i32 0
  %734 = load float, ptr %r1009, align 4, !tbaa !15
  store float %734, ptr %r__1, align 4, !tbaa !10
  %735 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp1010 = fcmp oge float %735, 0.000000e+00
  br i1 %cmp1010, label %cond.true1012, label %cond.false1013

cond.true1012:                                    ; preds = %if.then974
  %736 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end1015

cond.false1013:                                   ; preds = %if.then974
  %737 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg1014 = fneg float %737
  br label %cond.end1015

cond.end1015:                                     ; preds = %cond.false1013, %cond.true1012
  %cond1016 = phi float [ %736, %cond.true1012 ], [ %fneg1014, %cond.false1013 ]
  %738 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %739 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom1017 = sext i32 %739 to i64
  %arrayidx1018 = getelementptr inbounds %struct.complex, ptr %738, i64 %idxprom1017
  %i1019 = getelementptr inbounds %struct.complex, ptr %arrayidx1018, i32 0, i32 1
  %740 = load float, ptr %i1019, align 4, !tbaa !24
  store float %740, ptr %r__2, align 4, !tbaa !10
  %741 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp1020 = fcmp oge float %741, 0.000000e+00
  br i1 %cmp1020, label %cond.true1022, label %cond.false1023

cond.true1022:                                    ; preds = %cond.end1015
  %742 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end1025

cond.false1023:                                   ; preds = %cond.end1015
  %743 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg1024 = fneg float %743
  br label %cond.end1025

cond.end1025:                                     ; preds = %cond.false1023, %cond.true1022
  %cond1026 = phi float [ %742, %cond.true1022 ], [ %fneg1024, %cond.false1023 ]
  %add1027 = fadd float %cond1016, %cond1026
  store float %add1027, ptr %xmax, align 4, !tbaa !10
  br label %if.end1028

if.end1028:                                       ; preds = %cond.end1025, %if.else971
  br label %if.end1029

if.end1029:                                       ; preds = %if.end1028, %if.end970
  br label %for.inc1030

for.inc1030:                                      ; preds = %if.end1029
  %744 = load i32, ptr %i__2, align 4, !tbaa !8
  %745 = load i32, ptr %j, align 4, !tbaa !8
  %add1031 = add nsw i32 %745, %744
  store i32 %add1031, ptr %j, align 4, !tbaa !8
  br label %for.cond687, !llvm.loop !31

for.end1032:                                      ; preds = %cond.end696
  br label %if.end2118

if.else1033:                                      ; preds = %if.end684
  %746 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call1034 = call i32 @lsame_(ptr noundef %746, ptr noundef @.str.3)
  %tobool1035 = icmp ne i32 %call1034, 0
  br i1 %tobool1035, label %if.then1036, label %if.else1566

if.then1036:                                      ; preds = %if.else1033
  %747 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %747, ptr %i__2, align 4, !tbaa !8
  %748 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %748, ptr %i__1, align 4, !tbaa !8
  %749 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %749, ptr %j, align 4, !tbaa !8
  br label %for.cond1037

for.cond1037:                                     ; preds = %for.inc1563, %if.then1036
  %750 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1038 = icmp slt i32 %750, 0
  br i1 %cmp1038, label %cond.true1040, label %cond.false1043

cond.true1040:                                    ; preds = %for.cond1037
  %751 = load i32, ptr %j, align 4, !tbaa !8
  %752 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1041 = icmp sge i32 %751, %752
  %conv1042 = zext i1 %cmp1041 to i32
  br label %cond.end1046

cond.false1043:                                   ; preds = %for.cond1037
  %753 = load i32, ptr %j, align 4, !tbaa !8
  %754 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1044 = icmp sle i32 %753, %754
  %conv1045 = zext i1 %cmp1044 to i32
  br label %cond.end1046

cond.end1046:                                     ; preds = %cond.false1043, %cond.true1040
  %cond1047 = phi i32 [ %conv1042, %cond.true1040 ], [ %conv1045, %cond.false1043 ]
  %tobool1048 = icmp ne i32 %cond1047, 0
  br i1 %tobool1048, label %for.body1049, label %for.end1565

for.body1049:                                     ; preds = %cond.end1046
  %755 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %755, ptr %i__3, align 4, !tbaa !8
  %756 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %757 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1050 = sext i32 %757 to i64
  %arrayidx1051 = getelementptr inbounds %struct.complex, ptr %756, i64 %idxprom1050
  %r1052 = getelementptr inbounds %struct.complex, ptr %arrayidx1051, i32 0, i32 0
  %758 = load float, ptr %r1052, align 4, !tbaa !15
  store float %758, ptr %r__1, align 4, !tbaa !10
  %759 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp1053 = fcmp oge float %759, 0.000000e+00
  br i1 %cmp1053, label %cond.true1055, label %cond.false1056

cond.true1055:                                    ; preds = %for.body1049
  %760 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end1058

cond.false1056:                                   ; preds = %for.body1049
  %761 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg1057 = fneg float %761
  br label %cond.end1058

cond.end1058:                                     ; preds = %cond.false1056, %cond.true1055
  %cond1059 = phi float [ %760, %cond.true1055 ], [ %fneg1057, %cond.false1056 ]
  %762 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %763 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1060 = sext i32 %763 to i64
  %arrayidx1061 = getelementptr inbounds %struct.complex, ptr %762, i64 %idxprom1060
  %i1062 = getelementptr inbounds %struct.complex, ptr %arrayidx1061, i32 0, i32 1
  %764 = load float, ptr %i1062, align 4, !tbaa !24
  store float %764, ptr %r__2, align 4, !tbaa !10
  %765 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp1063 = fcmp oge float %765, 0.000000e+00
  br i1 %cmp1063, label %cond.true1065, label %cond.false1066

cond.true1065:                                    ; preds = %cond.end1058
  %766 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end1068

cond.false1066:                                   ; preds = %cond.end1058
  %767 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg1067 = fneg float %767
  br label %cond.end1068

cond.end1068:                                     ; preds = %cond.false1066, %cond.true1065
  %cond1069 = phi float [ %766, %cond.true1065 ], [ %fneg1067, %cond.false1066 ]
  %add1070 = fadd float %cond1059, %cond1069
  store float %add1070, ptr %xj, align 4, !tbaa !10
  %768 = load float, ptr %tscal, align 4, !tbaa !10
  %r1071 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  store float %768, ptr %r1071, align 4, !tbaa !15
  %i1072 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  store float 0.000000e+00, ptr %i1072, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1073) #4
  %769 = load float, ptr %xmax, align 4, !tbaa !10
  store float %769, ptr %_x1073, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1074) #4
  store float 1.000000e+00, ptr %_y1074, align 4, !tbaa !10
  %770 = load float, ptr %_x1073, align 4, !tbaa !10
  %771 = load float, ptr %_y1074, align 4, !tbaa !10
  %cmp1076 = fcmp ogt float %770, %771
  br i1 %cmp1076, label %cond.true1078, label %cond.false1079

cond.true1078:                                    ; preds = %cond.end1068
  %772 = load float, ptr %_x1073, align 4, !tbaa !10
  br label %cond.end1080

cond.false1079:                                   ; preds = %cond.end1068
  %773 = load float, ptr %_y1074, align 4, !tbaa !10
  br label %cond.end1080

cond.end1080:                                     ; preds = %cond.false1079, %cond.true1078
  %cond1081 = phi float [ %772, %cond.true1078 ], [ %773, %cond.false1079 ]
  store float %cond1081, ptr %tmp1075, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1074) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1073) #4
  %774 = load float, ptr %tmp1075, align 4, !tbaa !10
  %div1082 = fdiv float 1.000000e+00, %774
  store float %div1082, ptr %rec, align 4, !tbaa !10
  %775 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %776 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1083 = sext i32 %776 to i64
  %arrayidx1084 = getelementptr inbounds float, ptr %775, i64 %idxprom1083
  %777 = load float, ptr %arrayidx1084, align 4, !tbaa !10
  %778 = load float, ptr %bignum, align 4, !tbaa !10
  %779 = load float, ptr %xj, align 4, !tbaa !10
  %sub1085 = fsub float %778, %779
  %780 = load float, ptr %rec, align 4, !tbaa !10
  %mul1086 = fmul float %sub1085, %780
  %cmp1087 = fcmp ogt float %777, %mul1086
  br i1 %cmp1087, label %if.then1089, label %if.end1156

if.then1089:                                      ; preds = %cond.end1080
  %781 = load float, ptr %rec, align 4, !tbaa !10
  %mul1090 = fmul float %781, 5.000000e-01
  store float %mul1090, ptr %rec, align 4, !tbaa !10
  %782 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool1091 = icmp ne i32 %782, 0
  br i1 %tobool1091, label %if.then1092, label %if.else1109

if.then1092:                                      ; preds = %if.then1089
  %783 = load i32, ptr %j, align 4, !tbaa !8
  %784 = load i32, ptr %j, align 4, !tbaa !8
  %785 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1093 = mul nsw i32 %784, %785
  %add1094 = add nsw i32 %783, %mul1093
  store i32 %add1094, ptr %i__3, align 4, !tbaa !8
  %786 = load float, ptr %tscal, align 4, !tbaa !10
  %787 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %788 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1095 = sext i32 %788 to i64
  %arrayidx1096 = getelementptr inbounds %struct.complex, ptr %787, i64 %idxprom1095
  %r1097 = getelementptr inbounds %struct.complex, ptr %arrayidx1096, i32 0, i32 0
  %789 = load float, ptr %r1097, align 4, !tbaa !15
  %mul1098 = fmul float %786, %789
  %r1099 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul1098, ptr %r1099, align 4, !tbaa !15
  %790 = load float, ptr %tscal, align 4, !tbaa !10
  %791 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %792 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1100 = sext i32 %792 to i64
  %arrayidx1101 = getelementptr inbounds %struct.complex, ptr %791, i64 %idxprom1100
  %i1102 = getelementptr inbounds %struct.complex, ptr %arrayidx1101, i32 0, i32 1
  %793 = load float, ptr %i1102, align 4, !tbaa !24
  %mul1103 = fmul float %790, %793
  %i1104 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul1103, ptr %i1104, align 4, !tbaa !24
  %r1105 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %794 = load float, ptr %r1105, align 4, !tbaa !15
  %r1106 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  store float %794, ptr %r1106, align 4, !tbaa !15
  %i1107 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %795 = load float, ptr %i1107, align 4, !tbaa !24
  %i1108 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  store float %795, ptr %i1108, align 4, !tbaa !24
  br label %if.end1112

if.else1109:                                      ; preds = %if.then1089
  %796 = load float, ptr %tscal, align 4, !tbaa !10
  %r1110 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  store float %796, ptr %r1110, align 4, !tbaa !15
  %i1111 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  store float 0.000000e+00, ptr %i1111, align 4, !tbaa !24
  br label %if.end1112

if.end1112:                                       ; preds = %if.else1109, %if.then1092
  %r1113 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  %797 = load float, ptr %r1113, align 4, !tbaa !15
  store float %797, ptr %r__1, align 4, !tbaa !10
  %798 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp1114 = fcmp oge float %798, 0.000000e+00
  br i1 %cmp1114, label %cond.true1116, label %cond.false1117

cond.true1116:                                    ; preds = %if.end1112
  %799 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end1119

cond.false1117:                                   ; preds = %if.end1112
  %800 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg1118 = fneg float %800
  br label %cond.end1119

cond.end1119:                                     ; preds = %cond.false1117, %cond.true1116
  %cond1120 = phi float [ %799, %cond.true1116 ], [ %fneg1118, %cond.false1117 ]
  %i1121 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  %801 = load float, ptr %i1121, align 4, !tbaa !24
  store float %801, ptr %r__2, align 4, !tbaa !10
  %802 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp1122 = fcmp oge float %802, 0.000000e+00
  br i1 %cmp1122, label %cond.true1124, label %cond.false1125

cond.true1124:                                    ; preds = %cond.end1119
  %803 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end1127

cond.false1125:                                   ; preds = %cond.end1119
  %804 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg1126 = fneg float %804
  br label %cond.end1127

cond.end1127:                                     ; preds = %cond.false1125, %cond.true1124
  %cond1128 = phi float [ %803, %cond.true1124 ], [ %fneg1126, %cond.false1125 ]
  %add1129 = fadd float %cond1120, %cond1128
  store float %add1129, ptr %tjj, align 4, !tbaa !10
  %805 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp1130 = fcmp ogt float %805, 1.000000e+00
  br i1 %cmp1130, label %if.then1132, label %if.end1147

if.then1132:                                      ; preds = %cond.end1127
  store float 1.000000e+00, ptr %r__1, align 4, !tbaa !10
  %806 = load float, ptr %rec, align 4, !tbaa !10
  %807 = load float, ptr %tjj, align 4, !tbaa !10
  %mul1133 = fmul float %806, %807
  store float %mul1133, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1134) #4
  %808 = load float, ptr %r__1, align 4, !tbaa !10
  store float %808, ptr %_x1134, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1135) #4
  %809 = load float, ptr %r__2, align 4, !tbaa !10
  store float %809, ptr %_y1135, align 4, !tbaa !10
  %810 = load float, ptr %_x1134, align 4, !tbaa !10
  %811 = load float, ptr %_y1135, align 4, !tbaa !10
  %cmp1137 = fcmp olt float %810, %811
  br i1 %cmp1137, label %cond.true1139, label %cond.false1140

cond.true1139:                                    ; preds = %if.then1132
  %812 = load float, ptr %_x1134, align 4, !tbaa !10
  br label %cond.end1141

cond.false1140:                                   ; preds = %if.then1132
  %813 = load float, ptr %_y1135, align 4, !tbaa !10
  br label %cond.end1141

cond.end1141:                                     ; preds = %cond.false1140, %cond.true1139
  %cond1142 = phi float [ %812, %cond.true1139 ], [ %813, %cond.false1140 ]
  store float %cond1142, ptr %tmp1136, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1135) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1134) #4
  %814 = load float, ptr %tmp1136, align 4, !tbaa !10
  store float %814, ptr %rec, align 4, !tbaa !10
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %uscal, ptr noundef %tjjs)
  %r1143 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %815 = load float, ptr %r1143, align 4, !tbaa !15
  %r1144 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  store float %815, ptr %r1144, align 4, !tbaa !15
  %i1145 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %816 = load float, ptr %i1145, align 4, !tbaa !24
  %i1146 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  store float %816, ptr %i1146, align 4, !tbaa !24
  br label %if.end1147

if.end1147:                                       ; preds = %cond.end1141, %cond.end1127
  %817 = load float, ptr %rec, align 4, !tbaa !10
  %cmp1148 = fcmp olt float %817, 1.000000e+00
  br i1 %cmp1148, label %if.then1150, label %if.end1155

if.then1150:                                      ; preds = %if.end1147
  %818 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %819 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx1151 = getelementptr inbounds %struct.complex, ptr %819, i64 1
  %call1152 = call i32 @csscal_(ptr noundef %818, ptr noundef %rec, ptr noundef %arrayidx1151, ptr noundef @c__1)
  %820 = load float, ptr %rec, align 4, !tbaa !10
  %821 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %822 = load float, ptr %821, align 4, !tbaa !10
  %mul1153 = fmul float %822, %820
  store float %mul1153, ptr %821, align 4, !tbaa !10
  %823 = load float, ptr %rec, align 4, !tbaa !10
  %824 = load float, ptr %xmax, align 4, !tbaa !10
  %mul1154 = fmul float %824, %823
  store float %mul1154, ptr %xmax, align 4, !tbaa !10
  br label %if.end1155

if.end1155:                                       ; preds = %if.then1150, %if.end1147
  br label %if.end1156

if.end1156:                                       ; preds = %if.end1155, %cond.end1080
  %r1157 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  store float 0.000000e+00, ptr %r1157, align 4, !tbaa !15
  %i1158 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  store float 0.000000e+00, ptr %i1158, align 4, !tbaa !24
  %r1159 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  %825 = load float, ptr %r1159, align 4, !tbaa !15
  %cmp1160 = fcmp oeq float %825, 1.000000e+00
  br i1 %cmp1160, label %land.lhs.true1162, label %if.else1198

land.lhs.true1162:                                ; preds = %if.end1156
  %i1163 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  %826 = load float, ptr %i1163, align 4, !tbaa !24
  %cmp1164 = fcmp oeq float %826, 0.000000e+00
  br i1 %cmp1164, label %if.then1166, label %if.else1198

if.then1166:                                      ; preds = %land.lhs.true1162
  %827 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool1167 = icmp ne i32 %827, 0
  br i1 %tobool1167, label %if.then1168, label %if.else1179

if.then1168:                                      ; preds = %if.then1166
  %828 = load i32, ptr %j, align 4, !tbaa !8
  %sub1169 = sub nsw i32 %828, 1
  store i32 %sub1169, ptr %i__3, align 4, !tbaa !8
  %829 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %830 = load i32, ptr %j, align 4, !tbaa !8
  %831 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1170 = mul nsw i32 %830, %831
  %add1171 = add nsw i32 %mul1170, 1
  %idxprom1172 = sext i32 %add1171 to i64
  %arrayidx1173 = getelementptr inbounds %struct.complex, ptr %829, i64 %idxprom1172
  %832 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx1174 = getelementptr inbounds %struct.complex, ptr %832, i64 1
  call void @cdotu_f2c_(ptr noundef %q__1, ptr noundef %i__3, ptr noundef %arrayidx1173, ptr noundef @c__1, ptr noundef %arrayidx1174, ptr noundef @c__1)
  %r1175 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %833 = load float, ptr %r1175, align 4, !tbaa !15
  %r1176 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  store float %833, ptr %r1176, align 4, !tbaa !15
  %i1177 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %834 = load float, ptr %i1177, align 4, !tbaa !24
  %i1178 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  store float %834, ptr %i1178, align 4, !tbaa !24
  br label %if.end1197

if.else1179:                                      ; preds = %if.then1166
  %835 = load i32, ptr %j, align 4, !tbaa !8
  %836 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %837 = load i32, ptr %836, align 4, !tbaa !8
  %cmp1180 = icmp slt i32 %835, %837
  br i1 %cmp1180, label %if.then1182, label %if.end1196

if.then1182:                                      ; preds = %if.else1179
  %838 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %839 = load i32, ptr %838, align 4, !tbaa !8
  %840 = load i32, ptr %j, align 4, !tbaa !8
  %sub1183 = sub nsw i32 %839, %840
  store i32 %sub1183, ptr %i__3, align 4, !tbaa !8
  %841 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %842 = load i32, ptr %j, align 4, !tbaa !8
  %add1184 = add nsw i32 %842, 1
  %843 = load i32, ptr %j, align 4, !tbaa !8
  %844 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1185 = mul nsw i32 %843, %844
  %add1186 = add nsw i32 %add1184, %mul1185
  %idxprom1187 = sext i32 %add1186 to i64
  %arrayidx1188 = getelementptr inbounds %struct.complex, ptr %841, i64 %idxprom1187
  %845 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %846 = load i32, ptr %j, align 4, !tbaa !8
  %add1189 = add nsw i32 %846, 1
  %idxprom1190 = sext i32 %add1189 to i64
  %arrayidx1191 = getelementptr inbounds %struct.complex, ptr %845, i64 %idxprom1190
  call void @cdotu_f2c_(ptr noundef %q__1, ptr noundef %i__3, ptr noundef %arrayidx1188, ptr noundef @c__1, ptr noundef %arrayidx1191, ptr noundef @c__1)
  %r1192 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %847 = load float, ptr %r1192, align 4, !tbaa !15
  %r1193 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  store float %847, ptr %r1193, align 4, !tbaa !15
  %i1194 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %848 = load float, ptr %i1194, align 4, !tbaa !24
  %i1195 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  store float %848, ptr %i1195, align 4, !tbaa !24
  br label %if.end1196

if.end1196:                                       ; preds = %if.then1182, %if.else1179
  br label %if.end1197

if.end1197:                                       ; preds = %if.end1196, %if.then1168
  br label %if.end1342

if.else1198:                                      ; preds = %land.lhs.true1162, %if.end1156
  %849 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool1199 = icmp ne i32 %849, 0
  br i1 %tobool1199, label %if.then1200, label %if.else1268

if.then1200:                                      ; preds = %if.else1198
  %850 = load i32, ptr %j, align 4, !tbaa !8
  %sub1201 = sub nsw i32 %850, 1
  store i32 %sub1201, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond1202

for.cond1202:                                     ; preds = %for.inc1265, %if.then1200
  %851 = load i32, ptr %i__, align 4, !tbaa !8
  %852 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1203 = icmp sle i32 %851, %852
  br i1 %cmp1203, label %for.body1205, label %for.end1267

for.body1205:                                     ; preds = %for.cond1202
  %853 = load i32, ptr %i__, align 4, !tbaa !8
  %854 = load i32, ptr %j, align 4, !tbaa !8
  %855 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1206 = mul nsw i32 %854, %855
  %add1207 = add nsw i32 %853, %mul1206
  store i32 %add1207, ptr %i__4, align 4, !tbaa !8
  %856 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %857 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1208 = sext i32 %857 to i64
  %arrayidx1209 = getelementptr inbounds %struct.complex, ptr %856, i64 %idxprom1208
  %r1210 = getelementptr inbounds %struct.complex, ptr %arrayidx1209, i32 0, i32 0
  %858 = load float, ptr %r1210, align 4, !tbaa !15
  %r1211 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  %859 = load float, ptr %r1211, align 4, !tbaa !15
  %860 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %861 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1213 = sext i32 %861 to i64
  %arrayidx1214 = getelementptr inbounds %struct.complex, ptr %860, i64 %idxprom1213
  %i1215 = getelementptr inbounds %struct.complex, ptr %arrayidx1214, i32 0, i32 1
  %862 = load float, ptr %i1215, align 4, !tbaa !24
  %i1216 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  %863 = load float, ptr %i1216, align 4, !tbaa !24
  %mul1217 = fmul float %862, %863
  %neg = fneg float %mul1217
  %864 = call float @llvm.fmuladd.f32(float %858, float %859, float %neg)
  %r1218 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %864, ptr %r1218, align 4, !tbaa !15
  %865 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %866 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1219 = sext i32 %866 to i64
  %arrayidx1220 = getelementptr inbounds %struct.complex, ptr %865, i64 %idxprom1219
  %r1221 = getelementptr inbounds %struct.complex, ptr %arrayidx1220, i32 0, i32 0
  %867 = load float, ptr %r1221, align 4, !tbaa !15
  %i1222 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  %868 = load float, ptr %i1222, align 4, !tbaa !24
  %869 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %870 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1224 = sext i32 %870 to i64
  %arrayidx1225 = getelementptr inbounds %struct.complex, ptr %869, i64 %idxprom1224
  %i1226 = getelementptr inbounds %struct.complex, ptr %arrayidx1225, i32 0, i32 1
  %871 = load float, ptr %i1226, align 4, !tbaa !24
  %r1227 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  %872 = load float, ptr %r1227, align 4, !tbaa !15
  %mul1228 = fmul float %871, %872
  %873 = call float @llvm.fmuladd.f32(float %867, float %868, float %mul1228)
  %i1229 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %873, ptr %i1229, align 4, !tbaa !24
  %874 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %874, ptr %i__5, align 4, !tbaa !8
  %r1230 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %875 = load float, ptr %r1230, align 4, !tbaa !15
  %876 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %877 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom1231 = sext i32 %877 to i64
  %arrayidx1232 = getelementptr inbounds %struct.complex, ptr %876, i64 %idxprom1231
  %r1233 = getelementptr inbounds %struct.complex, ptr %arrayidx1232, i32 0, i32 0
  %878 = load float, ptr %r1233, align 4, !tbaa !15
  %i1235 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %879 = load float, ptr %i1235, align 4, !tbaa !24
  %880 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %881 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom1236 = sext i32 %881 to i64
  %arrayidx1237 = getelementptr inbounds %struct.complex, ptr %880, i64 %idxprom1236
  %i1238 = getelementptr inbounds %struct.complex, ptr %arrayidx1237, i32 0, i32 1
  %882 = load float, ptr %i1238, align 4, !tbaa !24
  %mul1239 = fmul float %879, %882
  %neg1240 = fneg float %mul1239
  %883 = call float @llvm.fmuladd.f32(float %875, float %878, float %neg1240)
  %r1241 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %883, ptr %r1241, align 4, !tbaa !15
  %r1242 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %884 = load float, ptr %r1242, align 4, !tbaa !15
  %885 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %886 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom1243 = sext i32 %886 to i64
  %arrayidx1244 = getelementptr inbounds %struct.complex, ptr %885, i64 %idxprom1243
  %i1245 = getelementptr inbounds %struct.complex, ptr %arrayidx1244, i32 0, i32 1
  %887 = load float, ptr %i1245, align 4, !tbaa !24
  %i1247 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %888 = load float, ptr %i1247, align 4, !tbaa !24
  %889 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %890 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom1248 = sext i32 %890 to i64
  %arrayidx1249 = getelementptr inbounds %struct.complex, ptr %889, i64 %idxprom1248
  %r1250 = getelementptr inbounds %struct.complex, ptr %arrayidx1249, i32 0, i32 0
  %891 = load float, ptr %r1250, align 4, !tbaa !15
  %mul1251 = fmul float %888, %891
  %892 = call float @llvm.fmuladd.f32(float %884, float %887, float %mul1251)
  %i1252 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %892, ptr %i1252, align 4, !tbaa !24
  %r1253 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  %893 = load float, ptr %r1253, align 4, !tbaa !15
  %r1254 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %894 = load float, ptr %r1254, align 4, !tbaa !15
  %add1255 = fadd float %893, %894
  %r1256 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add1255, ptr %r1256, align 4, !tbaa !15
  %i1257 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  %895 = load float, ptr %i1257, align 4, !tbaa !24
  %i1258 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %896 = load float, ptr %i1258, align 4, !tbaa !24
  %add1259 = fadd float %895, %896
  %i1260 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add1259, ptr %i1260, align 4, !tbaa !24
  %r1261 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %897 = load float, ptr %r1261, align 4, !tbaa !15
  %r1262 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  store float %897, ptr %r1262, align 4, !tbaa !15
  %i1263 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %898 = load float, ptr %i1263, align 4, !tbaa !24
  %i1264 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  store float %898, ptr %i1264, align 4, !tbaa !24
  br label %for.inc1265

for.inc1265:                                      ; preds = %for.body1205
  %899 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1266 = add nsw i32 %899, 1
  store i32 %inc1266, ptr %i__, align 4, !tbaa !8
  br label %for.cond1202, !llvm.loop !32

for.end1267:                                      ; preds = %for.cond1202
  br label %if.end1341

if.else1268:                                      ; preds = %if.else1198
  %900 = load i32, ptr %j, align 4, !tbaa !8
  %901 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %902 = load i32, ptr %901, align 4, !tbaa !8
  %cmp1269 = icmp slt i32 %900, %902
  br i1 %cmp1269, label %if.then1271, label %if.end1340

if.then1271:                                      ; preds = %if.else1268
  %903 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %904 = load i32, ptr %903, align 4, !tbaa !8
  store i32 %904, ptr %i__3, align 4, !tbaa !8
  %905 = load i32, ptr %j, align 4, !tbaa !8
  %add1272 = add nsw i32 %905, 1
  store i32 %add1272, ptr %i__, align 4, !tbaa !8
  br label %for.cond1273

for.cond1273:                                     ; preds = %for.inc1337, %if.then1271
  %906 = load i32, ptr %i__, align 4, !tbaa !8
  %907 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1274 = icmp sle i32 %906, %907
  br i1 %cmp1274, label %for.body1276, label %for.end1339

for.body1276:                                     ; preds = %for.cond1273
  %908 = load i32, ptr %i__, align 4, !tbaa !8
  %909 = load i32, ptr %j, align 4, !tbaa !8
  %910 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1277 = mul nsw i32 %909, %910
  %add1278 = add nsw i32 %908, %mul1277
  store i32 %add1278, ptr %i__4, align 4, !tbaa !8
  %911 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %912 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1279 = sext i32 %912 to i64
  %arrayidx1280 = getelementptr inbounds %struct.complex, ptr %911, i64 %idxprom1279
  %r1281 = getelementptr inbounds %struct.complex, ptr %arrayidx1280, i32 0, i32 0
  %913 = load float, ptr %r1281, align 4, !tbaa !15
  %r1282 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  %914 = load float, ptr %r1282, align 4, !tbaa !15
  %915 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %916 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1284 = sext i32 %916 to i64
  %arrayidx1285 = getelementptr inbounds %struct.complex, ptr %915, i64 %idxprom1284
  %i1286 = getelementptr inbounds %struct.complex, ptr %arrayidx1285, i32 0, i32 1
  %917 = load float, ptr %i1286, align 4, !tbaa !24
  %i1287 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  %918 = load float, ptr %i1287, align 4, !tbaa !24
  %mul1288 = fmul float %917, %918
  %neg1289 = fneg float %mul1288
  %919 = call float @llvm.fmuladd.f32(float %913, float %914, float %neg1289)
  %r1290 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %919, ptr %r1290, align 4, !tbaa !15
  %920 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %921 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1291 = sext i32 %921 to i64
  %arrayidx1292 = getelementptr inbounds %struct.complex, ptr %920, i64 %idxprom1291
  %r1293 = getelementptr inbounds %struct.complex, ptr %arrayidx1292, i32 0, i32 0
  %922 = load float, ptr %r1293, align 4, !tbaa !15
  %i1294 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  %923 = load float, ptr %i1294, align 4, !tbaa !24
  %924 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %925 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1296 = sext i32 %925 to i64
  %arrayidx1297 = getelementptr inbounds %struct.complex, ptr %924, i64 %idxprom1296
  %i1298 = getelementptr inbounds %struct.complex, ptr %arrayidx1297, i32 0, i32 1
  %926 = load float, ptr %i1298, align 4, !tbaa !24
  %r1299 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  %927 = load float, ptr %r1299, align 4, !tbaa !15
  %mul1300 = fmul float %926, %927
  %928 = call float @llvm.fmuladd.f32(float %922, float %923, float %mul1300)
  %i1301 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %928, ptr %i1301, align 4, !tbaa !24
  %929 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %929, ptr %i__5, align 4, !tbaa !8
  %r1302 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %930 = load float, ptr %r1302, align 4, !tbaa !15
  %931 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %932 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom1303 = sext i32 %932 to i64
  %arrayidx1304 = getelementptr inbounds %struct.complex, ptr %931, i64 %idxprom1303
  %r1305 = getelementptr inbounds %struct.complex, ptr %arrayidx1304, i32 0, i32 0
  %933 = load float, ptr %r1305, align 4, !tbaa !15
  %i1307 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %934 = load float, ptr %i1307, align 4, !tbaa !24
  %935 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %936 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom1308 = sext i32 %936 to i64
  %arrayidx1309 = getelementptr inbounds %struct.complex, ptr %935, i64 %idxprom1308
  %i1310 = getelementptr inbounds %struct.complex, ptr %arrayidx1309, i32 0, i32 1
  %937 = load float, ptr %i1310, align 4, !tbaa !24
  %mul1311 = fmul float %934, %937
  %neg1312 = fneg float %mul1311
  %938 = call float @llvm.fmuladd.f32(float %930, float %933, float %neg1312)
  %r1313 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %938, ptr %r1313, align 4, !tbaa !15
  %r1314 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %939 = load float, ptr %r1314, align 4, !tbaa !15
  %940 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %941 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom1315 = sext i32 %941 to i64
  %arrayidx1316 = getelementptr inbounds %struct.complex, ptr %940, i64 %idxprom1315
  %i1317 = getelementptr inbounds %struct.complex, ptr %arrayidx1316, i32 0, i32 1
  %942 = load float, ptr %i1317, align 4, !tbaa !24
  %i1319 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %943 = load float, ptr %i1319, align 4, !tbaa !24
  %944 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %945 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom1320 = sext i32 %945 to i64
  %arrayidx1321 = getelementptr inbounds %struct.complex, ptr %944, i64 %idxprom1320
  %r1322 = getelementptr inbounds %struct.complex, ptr %arrayidx1321, i32 0, i32 0
  %946 = load float, ptr %r1322, align 4, !tbaa !15
  %mul1323 = fmul float %943, %946
  %947 = call float @llvm.fmuladd.f32(float %939, float %942, float %mul1323)
  %i1324 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %947, ptr %i1324, align 4, !tbaa !24
  %r1325 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  %948 = load float, ptr %r1325, align 4, !tbaa !15
  %r1326 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %949 = load float, ptr %r1326, align 4, !tbaa !15
  %add1327 = fadd float %948, %949
  %r1328 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add1327, ptr %r1328, align 4, !tbaa !15
  %i1329 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  %950 = load float, ptr %i1329, align 4, !tbaa !24
  %i1330 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %951 = load float, ptr %i1330, align 4, !tbaa !24
  %add1331 = fadd float %950, %951
  %i1332 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add1331, ptr %i1332, align 4, !tbaa !24
  %r1333 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %952 = load float, ptr %r1333, align 4, !tbaa !15
  %r1334 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  store float %952, ptr %r1334, align 4, !tbaa !15
  %i1335 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %953 = load float, ptr %i1335, align 4, !tbaa !24
  %i1336 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  store float %953, ptr %i1336, align 4, !tbaa !24
  br label %for.inc1337

for.inc1337:                                      ; preds = %for.body1276
  %954 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1338 = add nsw i32 %954, 1
  store i32 %inc1338, ptr %i__, align 4, !tbaa !8
  br label %for.cond1273, !llvm.loop !33

for.end1339:                                      ; preds = %for.cond1273
  br label %if.end1340

if.end1340:                                       ; preds = %for.end1339, %if.else1268
  br label %if.end1341

if.end1341:                                       ; preds = %if.end1340, %for.end1267
  br label %if.end1342

if.end1342:                                       ; preds = %if.end1341, %if.end1197
  %955 = load float, ptr %tscal, align 4, !tbaa !10
  %r1343 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %955, ptr %r1343, align 4, !tbaa !15
  %i1344 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float 0.000000e+00, ptr %i1344, align 4, !tbaa !24
  %r1345 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  %956 = load float, ptr %r1345, align 4, !tbaa !15
  %r1346 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %957 = load float, ptr %r1346, align 4, !tbaa !15
  %cmp1347 = fcmp oeq float %956, %957
  br i1 %cmp1347, label %land.lhs.true1349, label %if.else1513

land.lhs.true1349:                                ; preds = %if.end1342
  %i1350 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  %958 = load float, ptr %i1350, align 4, !tbaa !24
  %i1351 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %959 = load float, ptr %i1351, align 4, !tbaa !24
  %cmp1352 = fcmp oeq float %958, %959
  br i1 %cmp1352, label %if.then1354, label %if.else1513

if.then1354:                                      ; preds = %land.lhs.true1349
  %960 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %960, ptr %i__3, align 4, !tbaa !8
  %961 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %961, ptr %i__4, align 4, !tbaa !8
  %962 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %963 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1355 = sext i32 %963 to i64
  %arrayidx1356 = getelementptr inbounds %struct.complex, ptr %962, i64 %idxprom1355
  %r1357 = getelementptr inbounds %struct.complex, ptr %arrayidx1356, i32 0, i32 0
  %964 = load float, ptr %r1357, align 4, !tbaa !15
  %r1358 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  %965 = load float, ptr %r1358, align 4, !tbaa !15
  %sub1359 = fsub float %964, %965
  %r1360 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub1359, ptr %r1360, align 4, !tbaa !15
  %966 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %967 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1361 = sext i32 %967 to i64
  %arrayidx1362 = getelementptr inbounds %struct.complex, ptr %966, i64 %idxprom1361
  %i1363 = getelementptr inbounds %struct.complex, ptr %arrayidx1362, i32 0, i32 1
  %968 = load float, ptr %i1363, align 4, !tbaa !24
  %i1364 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  %969 = load float, ptr %i1364, align 4, !tbaa !24
  %sub1365 = fsub float %968, %969
  %i1366 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub1365, ptr %i1366, align 4, !tbaa !24
  %r1367 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %970 = load float, ptr %r1367, align 4, !tbaa !15
  %971 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %972 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1368 = sext i32 %972 to i64
  %arrayidx1369 = getelementptr inbounds %struct.complex, ptr %971, i64 %idxprom1368
  %r1370 = getelementptr inbounds %struct.complex, ptr %arrayidx1369, i32 0, i32 0
  store float %970, ptr %r1370, align 4, !tbaa !15
  %i1371 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %973 = load float, ptr %i1371, align 4, !tbaa !24
  %974 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %975 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1372 = sext i32 %975 to i64
  %arrayidx1373 = getelementptr inbounds %struct.complex, ptr %974, i64 %idxprom1372
  %i1374 = getelementptr inbounds %struct.complex, ptr %arrayidx1373, i32 0, i32 1
  store float %973, ptr %i1374, align 4, !tbaa !24
  %976 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %976, ptr %i__3, align 4, !tbaa !8
  %977 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %978 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1375 = sext i32 %978 to i64
  %arrayidx1376 = getelementptr inbounds %struct.complex, ptr %977, i64 %idxprom1375
  %r1377 = getelementptr inbounds %struct.complex, ptr %arrayidx1376, i32 0, i32 0
  %979 = load float, ptr %r1377, align 4, !tbaa !15
  store float %979, ptr %r__1, align 4, !tbaa !10
  %980 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp1378 = fcmp oge float %980, 0.000000e+00
  br i1 %cmp1378, label %cond.true1380, label %cond.false1381

cond.true1380:                                    ; preds = %if.then1354
  %981 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end1383

cond.false1381:                                   ; preds = %if.then1354
  %982 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg1382 = fneg float %982
  br label %cond.end1383

cond.end1383:                                     ; preds = %cond.false1381, %cond.true1380
  %cond1384 = phi float [ %981, %cond.true1380 ], [ %fneg1382, %cond.false1381 ]
  %983 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %984 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1385 = sext i32 %984 to i64
  %arrayidx1386 = getelementptr inbounds %struct.complex, ptr %983, i64 %idxprom1385
  %i1387 = getelementptr inbounds %struct.complex, ptr %arrayidx1386, i32 0, i32 1
  %985 = load float, ptr %i1387, align 4, !tbaa !24
  store float %985, ptr %r__2, align 4, !tbaa !10
  %986 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp1388 = fcmp oge float %986, 0.000000e+00
  br i1 %cmp1388, label %cond.true1390, label %cond.false1391

cond.true1390:                                    ; preds = %cond.end1383
  %987 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end1393

cond.false1391:                                   ; preds = %cond.end1383
  %988 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg1392 = fneg float %988
  br label %cond.end1393

cond.end1393:                                     ; preds = %cond.false1391, %cond.true1390
  %cond1394 = phi float [ %987, %cond.true1390 ], [ %fneg1392, %cond.false1391 ]
  %add1395 = fadd float %cond1384, %cond1394
  store float %add1395, ptr %xj, align 4, !tbaa !10
  %989 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool1396 = icmp ne i32 %989, 0
  br i1 %tobool1396, label %if.then1397, label %if.else1414

if.then1397:                                      ; preds = %cond.end1393
  %990 = load i32, ptr %j, align 4, !tbaa !8
  %991 = load i32, ptr %j, align 4, !tbaa !8
  %992 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1398 = mul nsw i32 %991, %992
  %add1399 = add nsw i32 %990, %mul1398
  store i32 %add1399, ptr %i__3, align 4, !tbaa !8
  %993 = load float, ptr %tscal, align 4, !tbaa !10
  %994 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %995 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1400 = sext i32 %995 to i64
  %arrayidx1401 = getelementptr inbounds %struct.complex, ptr %994, i64 %idxprom1400
  %r1402 = getelementptr inbounds %struct.complex, ptr %arrayidx1401, i32 0, i32 0
  %996 = load float, ptr %r1402, align 4, !tbaa !15
  %mul1403 = fmul float %993, %996
  %r1404 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul1403, ptr %r1404, align 4, !tbaa !15
  %997 = load float, ptr %tscal, align 4, !tbaa !10
  %998 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %999 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1405 = sext i32 %999 to i64
  %arrayidx1406 = getelementptr inbounds %struct.complex, ptr %998, i64 %idxprom1405
  %i1407 = getelementptr inbounds %struct.complex, ptr %arrayidx1406, i32 0, i32 1
  %1000 = load float, ptr %i1407, align 4, !tbaa !24
  %mul1408 = fmul float %997, %1000
  %i1409 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul1408, ptr %i1409, align 4, !tbaa !24
  %r1410 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1001 = load float, ptr %r1410, align 4, !tbaa !15
  %r1411 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  store float %1001, ptr %r1411, align 4, !tbaa !15
  %i1412 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1002 = load float, ptr %i1412, align 4, !tbaa !24
  %i1413 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  store float %1002, ptr %i1413, align 4, !tbaa !24
  br label %if.end1421

if.else1414:                                      ; preds = %cond.end1393
  %1003 = load float, ptr %tscal, align 4, !tbaa !10
  %r1415 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  store float %1003, ptr %r1415, align 4, !tbaa !15
  %i1416 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  store float 0.000000e+00, ptr %i1416, align 4, !tbaa !24
  %1004 = load float, ptr %tscal, align 4, !tbaa !10
  %cmp1417 = fcmp oeq float %1004, 1.000000e+00
  br i1 %cmp1417, label %if.then1419, label %if.end1420

if.then1419:                                      ; preds = %if.else1414
  br label %L145

if.end1420:                                       ; preds = %if.else1414
  br label %if.end1421

if.end1421:                                       ; preds = %if.end1420, %if.then1397
  %r1422 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  %1005 = load float, ptr %r1422, align 4, !tbaa !15
  store float %1005, ptr %r__1, align 4, !tbaa !10
  %1006 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp1423 = fcmp oge float %1006, 0.000000e+00
  br i1 %cmp1423, label %cond.true1425, label %cond.false1426

cond.true1425:                                    ; preds = %if.end1421
  %1007 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end1428

cond.false1426:                                   ; preds = %if.end1421
  %1008 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg1427 = fneg float %1008
  br label %cond.end1428

cond.end1428:                                     ; preds = %cond.false1426, %cond.true1425
  %cond1429 = phi float [ %1007, %cond.true1425 ], [ %fneg1427, %cond.false1426 ]
  %i1430 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  %1009 = load float, ptr %i1430, align 4, !tbaa !24
  store float %1009, ptr %r__2, align 4, !tbaa !10
  %1010 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp1431 = fcmp oge float %1010, 0.000000e+00
  br i1 %cmp1431, label %cond.true1433, label %cond.false1434

cond.true1433:                                    ; preds = %cond.end1428
  %1011 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end1436

cond.false1434:                                   ; preds = %cond.end1428
  %1012 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg1435 = fneg float %1012
  br label %cond.end1436

cond.end1436:                                     ; preds = %cond.false1434, %cond.true1433
  %cond1437 = phi float [ %1011, %cond.true1433 ], [ %fneg1435, %cond.false1434 ]
  %add1438 = fadd float %cond1429, %cond1437
  store float %add1438, ptr %tjj, align 4, !tbaa !10
  %1013 = load float, ptr %tjj, align 4, !tbaa !10
  %1014 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp1439 = fcmp ogt float %1013, %1014
  br i1 %cmp1439, label %if.then1441, label %if.else1466

if.then1441:                                      ; preds = %cond.end1436
  %1015 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp1442 = fcmp olt float %1015, 1.000000e+00
  br i1 %cmp1442, label %if.then1444, label %if.end1455

if.then1444:                                      ; preds = %if.then1441
  %1016 = load float, ptr %xj, align 4, !tbaa !10
  %1017 = load float, ptr %tjj, align 4, !tbaa !10
  %1018 = load float, ptr %bignum, align 4, !tbaa !10
  %mul1445 = fmul float %1017, %1018
  %cmp1446 = fcmp ogt float %1016, %mul1445
  br i1 %cmp1446, label %if.then1448, label %if.end1454

if.then1448:                                      ; preds = %if.then1444
  %1019 = load float, ptr %xj, align 4, !tbaa !10
  %div1449 = fdiv float 1.000000e+00, %1019
  store float %div1449, ptr %rec, align 4, !tbaa !10
  %1020 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1021 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx1450 = getelementptr inbounds %struct.complex, ptr %1021, i64 1
  %call1451 = call i32 @csscal_(ptr noundef %1020, ptr noundef %rec, ptr noundef %arrayidx1450, ptr noundef @c__1)
  %1022 = load float, ptr %rec, align 4, !tbaa !10
  %1023 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %1024 = load float, ptr %1023, align 4, !tbaa !10
  %mul1452 = fmul float %1024, %1022
  store float %mul1452, ptr %1023, align 4, !tbaa !10
  %1025 = load float, ptr %rec, align 4, !tbaa !10
  %1026 = load float, ptr %xmax, align 4, !tbaa !10
  %mul1453 = fmul float %1026, %1025
  store float %mul1453, ptr %xmax, align 4, !tbaa !10
  br label %if.end1454

if.end1454:                                       ; preds = %if.then1448, %if.then1444
  br label %if.end1455

if.end1455:                                       ; preds = %if.end1454, %if.then1441
  %1027 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1027, ptr %i__3, align 4, !tbaa !8
  %1028 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1029 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1456 = sext i32 %1029 to i64
  %arrayidx1457 = getelementptr inbounds %struct.complex, ptr %1028, i64 %idxprom1456
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx1457, ptr noundef %tjjs)
  %r1458 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1030 = load float, ptr %r1458, align 4, !tbaa !15
  %1031 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1032 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1459 = sext i32 %1032 to i64
  %arrayidx1460 = getelementptr inbounds %struct.complex, ptr %1031, i64 %idxprom1459
  %r1461 = getelementptr inbounds %struct.complex, ptr %arrayidx1460, i32 0, i32 0
  store float %1030, ptr %r1461, align 4, !tbaa !15
  %i1462 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1033 = load float, ptr %i1462, align 4, !tbaa !24
  %1034 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1035 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1463 = sext i32 %1035 to i64
  %arrayidx1464 = getelementptr inbounds %struct.complex, ptr %1034, i64 %idxprom1463
  %i1465 = getelementptr inbounds %struct.complex, ptr %arrayidx1464, i32 0, i32 1
  store float %1033, ptr %i1465, align 4, !tbaa !24
  br label %if.end1512

if.else1466:                                      ; preds = %cond.end1436
  %1036 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp1467 = fcmp ogt float %1036, 0.000000e+00
  br i1 %cmp1467, label %if.then1469, label %if.else1491

if.then1469:                                      ; preds = %if.else1466
  %1037 = load float, ptr %xj, align 4, !tbaa !10
  %1038 = load float, ptr %tjj, align 4, !tbaa !10
  %1039 = load float, ptr %bignum, align 4, !tbaa !10
  %mul1470 = fmul float %1038, %1039
  %cmp1471 = fcmp ogt float %1037, %mul1470
  br i1 %cmp1471, label %if.then1473, label %if.end1480

if.then1473:                                      ; preds = %if.then1469
  %1040 = load float, ptr %tjj, align 4, !tbaa !10
  %1041 = load float, ptr %bignum, align 4, !tbaa !10
  %mul1474 = fmul float %1040, %1041
  %1042 = load float, ptr %xj, align 4, !tbaa !10
  %div1475 = fdiv float %mul1474, %1042
  store float %div1475, ptr %rec, align 4, !tbaa !10
  %1043 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1044 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx1476 = getelementptr inbounds %struct.complex, ptr %1044, i64 1
  %call1477 = call i32 @csscal_(ptr noundef %1043, ptr noundef %rec, ptr noundef %arrayidx1476, ptr noundef @c__1)
  %1045 = load float, ptr %rec, align 4, !tbaa !10
  %1046 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %1047 = load float, ptr %1046, align 4, !tbaa !10
  %mul1478 = fmul float %1047, %1045
  store float %mul1478, ptr %1046, align 4, !tbaa !10
  %1048 = load float, ptr %rec, align 4, !tbaa !10
  %1049 = load float, ptr %xmax, align 4, !tbaa !10
  %mul1479 = fmul float %1049, %1048
  store float %mul1479, ptr %xmax, align 4, !tbaa !10
  br label %if.end1480

if.end1480:                                       ; preds = %if.then1473, %if.then1469
  %1050 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1050, ptr %i__3, align 4, !tbaa !8
  %1051 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1052 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1481 = sext i32 %1052 to i64
  %arrayidx1482 = getelementptr inbounds %struct.complex, ptr %1051, i64 %idxprom1481
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx1482, ptr noundef %tjjs)
  %r1483 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1053 = load float, ptr %r1483, align 4, !tbaa !15
  %1054 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1055 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1484 = sext i32 %1055 to i64
  %arrayidx1485 = getelementptr inbounds %struct.complex, ptr %1054, i64 %idxprom1484
  %r1486 = getelementptr inbounds %struct.complex, ptr %arrayidx1485, i32 0, i32 0
  store float %1053, ptr %r1486, align 4, !tbaa !15
  %i1487 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1056 = load float, ptr %i1487, align 4, !tbaa !24
  %1057 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1058 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1488 = sext i32 %1058 to i64
  %arrayidx1489 = getelementptr inbounds %struct.complex, ptr %1057, i64 %idxprom1488
  %i1490 = getelementptr inbounds %struct.complex, ptr %arrayidx1489, i32 0, i32 1
  store float %1056, ptr %i1490, align 4, !tbaa !24
  br label %if.end1511

if.else1491:                                      ; preds = %if.else1466
  %1059 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1060 = load i32, ptr %1059, align 4, !tbaa !8
  store i32 %1060, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond1492

for.cond1492:                                     ; preds = %for.inc1502, %if.else1491
  %1061 = load i32, ptr %i__, align 4, !tbaa !8
  %1062 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1493 = icmp sle i32 %1061, %1062
  br i1 %cmp1493, label %for.body1495, label %for.end1504

for.body1495:                                     ; preds = %for.cond1492
  %1063 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %1063, ptr %i__4, align 4, !tbaa !8
  %1064 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1065 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1496 = sext i32 %1065 to i64
  %arrayidx1497 = getelementptr inbounds %struct.complex, ptr %1064, i64 %idxprom1496
  %r1498 = getelementptr inbounds %struct.complex, ptr %arrayidx1497, i32 0, i32 0
  store float 0.000000e+00, ptr %r1498, align 4, !tbaa !15
  %1066 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1067 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1499 = sext i32 %1067 to i64
  %arrayidx1500 = getelementptr inbounds %struct.complex, ptr %1066, i64 %idxprom1499
  %i1501 = getelementptr inbounds %struct.complex, ptr %arrayidx1500, i32 0, i32 1
  store float 0.000000e+00, ptr %i1501, align 4, !tbaa !24
  br label %for.inc1502

for.inc1502:                                      ; preds = %for.body1495
  %1068 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1503 = add nsw i32 %1068, 1
  store i32 %inc1503, ptr %i__, align 4, !tbaa !8
  br label %for.cond1492, !llvm.loop !34

for.end1504:                                      ; preds = %for.cond1492
  %1069 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1069, ptr %i__3, align 4, !tbaa !8
  %1070 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1071 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1505 = sext i32 %1071 to i64
  %arrayidx1506 = getelementptr inbounds %struct.complex, ptr %1070, i64 %idxprom1505
  %r1507 = getelementptr inbounds %struct.complex, ptr %arrayidx1506, i32 0, i32 0
  store float 1.000000e+00, ptr %r1507, align 4, !tbaa !15
  %1072 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1073 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1508 = sext i32 %1073 to i64
  %arrayidx1509 = getelementptr inbounds %struct.complex, ptr %1072, i64 %idxprom1508
  %i1510 = getelementptr inbounds %struct.complex, ptr %arrayidx1509, i32 0, i32 1
  store float 0.000000e+00, ptr %i1510, align 4, !tbaa !24
  %1074 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  store float 0.000000e+00, ptr %1074, align 4, !tbaa !10
  store float 0.000000e+00, ptr %xmax, align 4, !tbaa !10
  br label %if.end1511

if.end1511:                                       ; preds = %for.end1504, %if.end1480
  br label %if.end1512

if.end1512:                                       ; preds = %if.end1511, %if.end1455
  br label %L145

L145:                                             ; preds = %if.end1512, %if.then1419
  br label %if.end1532

if.else1513:                                      ; preds = %land.lhs.true1349, %if.end1342
  %1075 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1075, ptr %i__3, align 4, !tbaa !8
  %1076 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1077 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1514 = sext i32 %1077 to i64
  %arrayidx1515 = getelementptr inbounds %struct.complex, ptr %1076, i64 %idxprom1514
  call void @cladiv_f2c_(ptr noundef %q__2, ptr noundef %arrayidx1515, ptr noundef %tjjs)
  %r1516 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1078 = load float, ptr %r1516, align 4, !tbaa !15
  %r1517 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  %1079 = load float, ptr %r1517, align 4, !tbaa !15
  %sub1518 = fsub float %1078, %1079
  %r1519 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub1518, ptr %r1519, align 4, !tbaa !15
  %i1520 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1080 = load float, ptr %i1520, align 4, !tbaa !24
  %i1521 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  %1081 = load float, ptr %i1521, align 4, !tbaa !24
  %sub1522 = fsub float %1080, %1081
  %i1523 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub1522, ptr %i1523, align 4, !tbaa !24
  %r1524 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1082 = load float, ptr %r1524, align 4, !tbaa !15
  %1083 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1084 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1525 = sext i32 %1084 to i64
  %arrayidx1526 = getelementptr inbounds %struct.complex, ptr %1083, i64 %idxprom1525
  %r1527 = getelementptr inbounds %struct.complex, ptr %arrayidx1526, i32 0, i32 0
  store float %1082, ptr %r1527, align 4, !tbaa !15
  %i1528 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1085 = load float, ptr %i1528, align 4, !tbaa !24
  %1086 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1087 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1529 = sext i32 %1087 to i64
  %arrayidx1530 = getelementptr inbounds %struct.complex, ptr %1086, i64 %idxprom1529
  %i1531 = getelementptr inbounds %struct.complex, ptr %arrayidx1530, i32 0, i32 1
  store float %1085, ptr %i1531, align 4, !tbaa !24
  br label %if.end1532

if.end1532:                                       ; preds = %if.else1513, %L145
  %1088 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1088, ptr %i__3, align 4, !tbaa !8
  %1089 = load float, ptr %xmax, align 4, !tbaa !10
  store float %1089, ptr %r__3, align 4, !tbaa !10
  %1090 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1091 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1533 = sext i32 %1091 to i64
  %arrayidx1534 = getelementptr inbounds %struct.complex, ptr %1090, i64 %idxprom1533
  %r1535 = getelementptr inbounds %struct.complex, ptr %arrayidx1534, i32 0, i32 0
  %1092 = load float, ptr %r1535, align 4, !tbaa !15
  store float %1092, ptr %r__1, align 4, !tbaa !10
  %1093 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp1536 = fcmp oge float %1093, 0.000000e+00
  br i1 %cmp1536, label %cond.true1538, label %cond.false1539

cond.true1538:                                    ; preds = %if.end1532
  %1094 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end1541

cond.false1539:                                   ; preds = %if.end1532
  %1095 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg1540 = fneg float %1095
  br label %cond.end1541

cond.end1541:                                     ; preds = %cond.false1539, %cond.true1538
  %cond1542 = phi float [ %1094, %cond.true1538 ], [ %fneg1540, %cond.false1539 ]
  %1096 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1097 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1543 = sext i32 %1097 to i64
  %arrayidx1544 = getelementptr inbounds %struct.complex, ptr %1096, i64 %idxprom1543
  %i1545 = getelementptr inbounds %struct.complex, ptr %arrayidx1544, i32 0, i32 1
  %1098 = load float, ptr %i1545, align 4, !tbaa !24
  store float %1098, ptr %r__2, align 4, !tbaa !10
  %1099 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp1546 = fcmp oge float %1099, 0.000000e+00
  br i1 %cmp1546, label %cond.true1548, label %cond.false1549

cond.true1548:                                    ; preds = %cond.end1541
  %1100 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end1551

cond.false1549:                                   ; preds = %cond.end1541
  %1101 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg1550 = fneg float %1101
  br label %cond.end1551

cond.end1551:                                     ; preds = %cond.false1549, %cond.true1548
  %cond1552 = phi float [ %1100, %cond.true1548 ], [ %fneg1550, %cond.false1549 ]
  %add1553 = fadd float %cond1542, %cond1552
  store float %add1553, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1554) #4
  %1102 = load float, ptr %r__3, align 4, !tbaa !10
  store float %1102, ptr %_x1554, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1555) #4
  %1103 = load float, ptr %r__4, align 4, !tbaa !10
  store float %1103, ptr %_y1555, align 4, !tbaa !10
  %1104 = load float, ptr %_x1554, align 4, !tbaa !10
  %1105 = load float, ptr %_y1555, align 4, !tbaa !10
  %cmp1557 = fcmp ogt float %1104, %1105
  br i1 %cmp1557, label %cond.true1559, label %cond.false1560

cond.true1559:                                    ; preds = %cond.end1551
  %1106 = load float, ptr %_x1554, align 4, !tbaa !10
  br label %cond.end1561

cond.false1560:                                   ; preds = %cond.end1551
  %1107 = load float, ptr %_y1555, align 4, !tbaa !10
  br label %cond.end1561

cond.end1561:                                     ; preds = %cond.false1560, %cond.true1559
  %cond1562 = phi float [ %1106, %cond.true1559 ], [ %1107, %cond.false1560 ]
  store float %cond1562, ptr %tmp1556, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1555) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1554) #4
  %1108 = load float, ptr %tmp1556, align 4, !tbaa !10
  store float %1108, ptr %xmax, align 4, !tbaa !10
  br label %for.inc1563

for.inc1563:                                      ; preds = %cond.end1561
  %1109 = load i32, ptr %i__1, align 4, !tbaa !8
  %1110 = load i32, ptr %j, align 4, !tbaa !8
  %add1564 = add nsw i32 %1110, %1109
  store i32 %add1564, ptr %j, align 4, !tbaa !8
  br label %for.cond1037, !llvm.loop !35

for.end1565:                                      ; preds = %cond.end1046
  br label %if.end2117

if.else1566:                                      ; preds = %if.else1033
  %1111 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %1111, ptr %i__1, align 4, !tbaa !8
  %1112 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %1112, ptr %i__2, align 4, !tbaa !8
  %1113 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %1113, ptr %j, align 4, !tbaa !8
  br label %for.cond1567

for.cond1567:                                     ; preds = %for.inc2114, %if.else1566
  %1114 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1568 = icmp slt i32 %1114, 0
  br i1 %cmp1568, label %cond.true1570, label %cond.false1573

cond.true1570:                                    ; preds = %for.cond1567
  %1115 = load i32, ptr %j, align 4, !tbaa !8
  %1116 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1571 = icmp sge i32 %1115, %1116
  %conv1572 = zext i1 %cmp1571 to i32
  br label %cond.end1576

cond.false1573:                                   ; preds = %for.cond1567
  %1117 = load i32, ptr %j, align 4, !tbaa !8
  %1118 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1574 = icmp sle i32 %1117, %1118
  %conv1575 = zext i1 %cmp1574 to i32
  br label %cond.end1576

cond.end1576:                                     ; preds = %cond.false1573, %cond.true1570
  %cond1577 = phi i32 [ %conv1572, %cond.true1570 ], [ %conv1575, %cond.false1573 ]
  %tobool1578 = icmp ne i32 %cond1577, 0
  br i1 %tobool1578, label %for.body1579, label %for.end2116

for.body1579:                                     ; preds = %cond.end1576
  %1119 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1119, ptr %i__3, align 4, !tbaa !8
  %1120 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1121 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1580 = sext i32 %1121 to i64
  %arrayidx1581 = getelementptr inbounds %struct.complex, ptr %1120, i64 %idxprom1580
  %r1582 = getelementptr inbounds %struct.complex, ptr %arrayidx1581, i32 0, i32 0
  %1122 = load float, ptr %r1582, align 4, !tbaa !15
  store float %1122, ptr %r__1, align 4, !tbaa !10
  %1123 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp1583 = fcmp oge float %1123, 0.000000e+00
  br i1 %cmp1583, label %cond.true1585, label %cond.false1586

cond.true1585:                                    ; preds = %for.body1579
  %1124 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end1588

cond.false1586:                                   ; preds = %for.body1579
  %1125 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg1587 = fneg float %1125
  br label %cond.end1588

cond.end1588:                                     ; preds = %cond.false1586, %cond.true1585
  %cond1589 = phi float [ %1124, %cond.true1585 ], [ %fneg1587, %cond.false1586 ]
  %1126 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1127 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1590 = sext i32 %1127 to i64
  %arrayidx1591 = getelementptr inbounds %struct.complex, ptr %1126, i64 %idxprom1590
  %i1592 = getelementptr inbounds %struct.complex, ptr %arrayidx1591, i32 0, i32 1
  %1128 = load float, ptr %i1592, align 4, !tbaa !24
  store float %1128, ptr %r__2, align 4, !tbaa !10
  %1129 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp1593 = fcmp oge float %1129, 0.000000e+00
  br i1 %cmp1593, label %cond.true1595, label %cond.false1596

cond.true1595:                                    ; preds = %cond.end1588
  %1130 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end1598

cond.false1596:                                   ; preds = %cond.end1588
  %1131 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg1597 = fneg float %1131
  br label %cond.end1598

cond.end1598:                                     ; preds = %cond.false1596, %cond.true1595
  %cond1599 = phi float [ %1130, %cond.true1595 ], [ %fneg1597, %cond.false1596 ]
  %add1600 = fadd float %cond1589, %cond1599
  store float %add1600, ptr %xj, align 4, !tbaa !10
  %1132 = load float, ptr %tscal, align 4, !tbaa !10
  %r1601 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  store float %1132, ptr %r1601, align 4, !tbaa !15
  %i1602 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  store float 0.000000e+00, ptr %i1602, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1603) #4
  %1133 = load float, ptr %xmax, align 4, !tbaa !10
  store float %1133, ptr %_x1603, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1604) #4
  store float 1.000000e+00, ptr %_y1604, align 4, !tbaa !10
  %1134 = load float, ptr %_x1603, align 4, !tbaa !10
  %1135 = load float, ptr %_y1604, align 4, !tbaa !10
  %cmp1606 = fcmp ogt float %1134, %1135
  br i1 %cmp1606, label %cond.true1608, label %cond.false1609

cond.true1608:                                    ; preds = %cond.end1598
  %1136 = load float, ptr %_x1603, align 4, !tbaa !10
  br label %cond.end1610

cond.false1609:                                   ; preds = %cond.end1598
  %1137 = load float, ptr %_y1604, align 4, !tbaa !10
  br label %cond.end1610

cond.end1610:                                     ; preds = %cond.false1609, %cond.true1608
  %cond1611 = phi float [ %1136, %cond.true1608 ], [ %1137, %cond.false1609 ]
  store float %cond1611, ptr %tmp1605, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1604) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1603) #4
  %1138 = load float, ptr %tmp1605, align 4, !tbaa !10
  %div1612 = fdiv float 1.000000e+00, %1138
  store float %div1612, ptr %rec, align 4, !tbaa !10
  %1139 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %1140 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1613 = sext i32 %1140 to i64
  %arrayidx1614 = getelementptr inbounds float, ptr %1139, i64 %idxprom1613
  %1141 = load float, ptr %arrayidx1614, align 4, !tbaa !10
  %1142 = load float, ptr %bignum, align 4, !tbaa !10
  %1143 = load float, ptr %xj, align 4, !tbaa !10
  %sub1615 = fsub float %1142, %1143
  %1144 = load float, ptr %rec, align 4, !tbaa !10
  %mul1616 = fmul float %sub1615, %1144
  %cmp1617 = fcmp ogt float %1141, %mul1616
  br i1 %cmp1617, label %if.then1619, label %if.end1693

if.then1619:                                      ; preds = %cond.end1610
  %1145 = load float, ptr %rec, align 4, !tbaa !10
  %mul1620 = fmul float %1145, 5.000000e-01
  store float %mul1620, ptr %rec, align 4, !tbaa !10
  %1146 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool1621 = icmp ne i32 %1146, 0
  br i1 %tobool1621, label %if.then1622, label %if.else1646

if.then1622:                                      ; preds = %if.then1619
  %1147 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1148 = load i32, ptr %j, align 4, !tbaa !8
  %1149 = load i32, ptr %j, align 4, !tbaa !8
  %1150 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1623 = mul nsw i32 %1149, %1150
  %add1624 = add nsw i32 %1148, %mul1623
  %idxprom1625 = sext i32 %add1624 to i64
  %arrayidx1626 = getelementptr inbounds %struct.complex, ptr %1147, i64 %idxprom1625
  %r1627 = getelementptr inbounds %struct.complex, ptr %arrayidx1626, i32 0, i32 0
  %1151 = load float, ptr %r1627, align 4, !tbaa !15
  %r1628 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %1151, ptr %r1628, align 4, !tbaa !15
  %1152 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1153 = load i32, ptr %j, align 4, !tbaa !8
  %1154 = load i32, ptr %j, align 4, !tbaa !8
  %1155 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1629 = mul nsw i32 %1154, %1155
  %add1630 = add nsw i32 %1153, %mul1629
  %idxprom1631 = sext i32 %add1630 to i64
  %arrayidx1632 = getelementptr inbounds %struct.complex, ptr %1152, i64 %idxprom1631
  %i1633 = getelementptr inbounds %struct.complex, ptr %arrayidx1632, i32 0, i32 1
  %1156 = load float, ptr %i1633, align 4, !tbaa !24
  %fneg1634 = fneg float %1156
  %i1635 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %fneg1634, ptr %i1635, align 4, !tbaa !24
  %1157 = load float, ptr %tscal, align 4, !tbaa !10
  %r1636 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1158 = load float, ptr %r1636, align 4, !tbaa !15
  %mul1637 = fmul float %1157, %1158
  %r1638 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul1637, ptr %r1638, align 4, !tbaa !15
  %1159 = load float, ptr %tscal, align 4, !tbaa !10
  %i1639 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1160 = load float, ptr %i1639, align 4, !tbaa !24
  %mul1640 = fmul float %1159, %1160
  %i1641 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul1640, ptr %i1641, align 4, !tbaa !24
  %r1642 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1161 = load float, ptr %r1642, align 4, !tbaa !15
  %r1643 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  store float %1161, ptr %r1643, align 4, !tbaa !15
  %i1644 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1162 = load float, ptr %i1644, align 4, !tbaa !24
  %i1645 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  store float %1162, ptr %i1645, align 4, !tbaa !24
  br label %if.end1649

if.else1646:                                      ; preds = %if.then1619
  %1163 = load float, ptr %tscal, align 4, !tbaa !10
  %r1647 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  store float %1163, ptr %r1647, align 4, !tbaa !15
  %i1648 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  store float 0.000000e+00, ptr %i1648, align 4, !tbaa !24
  br label %if.end1649

if.end1649:                                       ; preds = %if.else1646, %if.then1622
  %r1650 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  %1164 = load float, ptr %r1650, align 4, !tbaa !15
  store float %1164, ptr %r__1, align 4, !tbaa !10
  %1165 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp1651 = fcmp oge float %1165, 0.000000e+00
  br i1 %cmp1651, label %cond.true1653, label %cond.false1654

cond.true1653:                                    ; preds = %if.end1649
  %1166 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end1656

cond.false1654:                                   ; preds = %if.end1649
  %1167 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg1655 = fneg float %1167
  br label %cond.end1656

cond.end1656:                                     ; preds = %cond.false1654, %cond.true1653
  %cond1657 = phi float [ %1166, %cond.true1653 ], [ %fneg1655, %cond.false1654 ]
  %i1658 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  %1168 = load float, ptr %i1658, align 4, !tbaa !24
  store float %1168, ptr %r__2, align 4, !tbaa !10
  %1169 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp1659 = fcmp oge float %1169, 0.000000e+00
  br i1 %cmp1659, label %cond.true1661, label %cond.false1662

cond.true1661:                                    ; preds = %cond.end1656
  %1170 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end1664

cond.false1662:                                   ; preds = %cond.end1656
  %1171 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg1663 = fneg float %1171
  br label %cond.end1664

cond.end1664:                                     ; preds = %cond.false1662, %cond.true1661
  %cond1665 = phi float [ %1170, %cond.true1661 ], [ %fneg1663, %cond.false1662 ]
  %add1666 = fadd float %cond1657, %cond1665
  store float %add1666, ptr %tjj, align 4, !tbaa !10
  %1172 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp1667 = fcmp ogt float %1172, 1.000000e+00
  br i1 %cmp1667, label %if.then1669, label %if.end1684

if.then1669:                                      ; preds = %cond.end1664
  store float 1.000000e+00, ptr %r__1, align 4, !tbaa !10
  %1173 = load float, ptr %rec, align 4, !tbaa !10
  %1174 = load float, ptr %tjj, align 4, !tbaa !10
  %mul1670 = fmul float %1173, %1174
  store float %mul1670, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x1671) #4
  %1175 = load float, ptr %r__1, align 4, !tbaa !10
  store float %1175, ptr %_x1671, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y1672) #4
  %1176 = load float, ptr %r__2, align 4, !tbaa !10
  store float %1176, ptr %_y1672, align 4, !tbaa !10
  %1177 = load float, ptr %_x1671, align 4, !tbaa !10
  %1178 = load float, ptr %_y1672, align 4, !tbaa !10
  %cmp1674 = fcmp olt float %1177, %1178
  br i1 %cmp1674, label %cond.true1676, label %cond.false1677

cond.true1676:                                    ; preds = %if.then1669
  %1179 = load float, ptr %_x1671, align 4, !tbaa !10
  br label %cond.end1678

cond.false1677:                                   ; preds = %if.then1669
  %1180 = load float, ptr %_y1672, align 4, !tbaa !10
  br label %cond.end1678

cond.end1678:                                     ; preds = %cond.false1677, %cond.true1676
  %cond1679 = phi float [ %1179, %cond.true1676 ], [ %1180, %cond.false1677 ]
  store float %cond1679, ptr %tmp1673, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y1672) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x1671) #4
  %1181 = load float, ptr %tmp1673, align 4, !tbaa !10
  store float %1181, ptr %rec, align 4, !tbaa !10
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %uscal, ptr noundef %tjjs)
  %r1680 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1182 = load float, ptr %r1680, align 4, !tbaa !15
  %r1681 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  store float %1182, ptr %r1681, align 4, !tbaa !15
  %i1682 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1183 = load float, ptr %i1682, align 4, !tbaa !24
  %i1683 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  store float %1183, ptr %i1683, align 4, !tbaa !24
  br label %if.end1684

if.end1684:                                       ; preds = %cond.end1678, %cond.end1664
  %1184 = load float, ptr %rec, align 4, !tbaa !10
  %cmp1685 = fcmp olt float %1184, 1.000000e+00
  br i1 %cmp1685, label %if.then1687, label %if.end1692

if.then1687:                                      ; preds = %if.end1684
  %1185 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1186 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx1688 = getelementptr inbounds %struct.complex, ptr %1186, i64 1
  %call1689 = call i32 @csscal_(ptr noundef %1185, ptr noundef %rec, ptr noundef %arrayidx1688, ptr noundef @c__1)
  %1187 = load float, ptr %rec, align 4, !tbaa !10
  %1188 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %1189 = load float, ptr %1188, align 4, !tbaa !10
  %mul1690 = fmul float %1189, %1187
  store float %mul1690, ptr %1188, align 4, !tbaa !10
  %1190 = load float, ptr %rec, align 4, !tbaa !10
  %1191 = load float, ptr %xmax, align 4, !tbaa !10
  %mul1691 = fmul float %1191, %1190
  store float %mul1691, ptr %xmax, align 4, !tbaa !10
  br label %if.end1692

if.end1692:                                       ; preds = %if.then1687, %if.end1684
  br label %if.end1693

if.end1693:                                       ; preds = %if.end1692, %cond.end1610
  %r1694 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  store float 0.000000e+00, ptr %r1694, align 4, !tbaa !15
  %i1695 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  store float 0.000000e+00, ptr %i1695, align 4, !tbaa !24
  %r1696 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  %1192 = load float, ptr %r1696, align 4, !tbaa !15
  %cmp1697 = fcmp oeq float %1192, 1.000000e+00
  br i1 %cmp1697, label %land.lhs.true1699, label %if.else1735

land.lhs.true1699:                                ; preds = %if.end1693
  %i1700 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  %1193 = load float, ptr %i1700, align 4, !tbaa !24
  %cmp1701 = fcmp oeq float %1193, 0.000000e+00
  br i1 %cmp1701, label %if.then1703, label %if.else1735

if.then1703:                                      ; preds = %land.lhs.true1699
  %1194 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool1704 = icmp ne i32 %1194, 0
  br i1 %tobool1704, label %if.then1705, label %if.else1716

if.then1705:                                      ; preds = %if.then1703
  %1195 = load i32, ptr %j, align 4, !tbaa !8
  %sub1706 = sub nsw i32 %1195, 1
  store i32 %sub1706, ptr %i__3, align 4, !tbaa !8
  %1196 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1197 = load i32, ptr %j, align 4, !tbaa !8
  %1198 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1707 = mul nsw i32 %1197, %1198
  %add1708 = add nsw i32 %mul1707, 1
  %idxprom1709 = sext i32 %add1708 to i64
  %arrayidx1710 = getelementptr inbounds %struct.complex, ptr %1196, i64 %idxprom1709
  %1199 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx1711 = getelementptr inbounds %struct.complex, ptr %1199, i64 1
  call void @cdotc_f2c_(ptr noundef %q__1, ptr noundef %i__3, ptr noundef %arrayidx1710, ptr noundef @c__1, ptr noundef %arrayidx1711, ptr noundef @c__1)
  %r1712 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1200 = load float, ptr %r1712, align 4, !tbaa !15
  %r1713 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  store float %1200, ptr %r1713, align 4, !tbaa !15
  %i1714 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1201 = load float, ptr %i1714, align 4, !tbaa !24
  %i1715 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  store float %1201, ptr %i1715, align 4, !tbaa !24
  br label %if.end1734

if.else1716:                                      ; preds = %if.then1703
  %1202 = load i32, ptr %j, align 4, !tbaa !8
  %1203 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1204 = load i32, ptr %1203, align 4, !tbaa !8
  %cmp1717 = icmp slt i32 %1202, %1204
  br i1 %cmp1717, label %if.then1719, label %if.end1733

if.then1719:                                      ; preds = %if.else1716
  %1205 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1206 = load i32, ptr %1205, align 4, !tbaa !8
  %1207 = load i32, ptr %j, align 4, !tbaa !8
  %sub1720 = sub nsw i32 %1206, %1207
  store i32 %sub1720, ptr %i__3, align 4, !tbaa !8
  %1208 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1209 = load i32, ptr %j, align 4, !tbaa !8
  %add1721 = add nsw i32 %1209, 1
  %1210 = load i32, ptr %j, align 4, !tbaa !8
  %1211 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1722 = mul nsw i32 %1210, %1211
  %add1723 = add nsw i32 %add1721, %mul1722
  %idxprom1724 = sext i32 %add1723 to i64
  %arrayidx1725 = getelementptr inbounds %struct.complex, ptr %1208, i64 %idxprom1724
  %1212 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1213 = load i32, ptr %j, align 4, !tbaa !8
  %add1726 = add nsw i32 %1213, 1
  %idxprom1727 = sext i32 %add1726 to i64
  %arrayidx1728 = getelementptr inbounds %struct.complex, ptr %1212, i64 %idxprom1727
  call void @cdotc_f2c_(ptr noundef %q__1, ptr noundef %i__3, ptr noundef %arrayidx1725, ptr noundef @c__1, ptr noundef %arrayidx1728, ptr noundef @c__1)
  %r1729 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1214 = load float, ptr %r1729, align 4, !tbaa !15
  %r1730 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  store float %1214, ptr %r1730, align 4, !tbaa !15
  %i1731 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1215 = load float, ptr %i1731, align 4, !tbaa !24
  %i1732 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  store float %1215, ptr %i1732, align 4, !tbaa !24
  br label %if.end1733

if.end1733:                                       ; preds = %if.then1719, %if.else1716
  br label %if.end1734

if.end1734:                                       ; preds = %if.end1733, %if.then1705
  br label %if.end1886

if.else1735:                                      ; preds = %land.lhs.true1699, %if.end1693
  %1216 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool1736 = icmp ne i32 %1216, 0
  br i1 %tobool1736, label %if.then1737, label %if.else1809

if.then1737:                                      ; preds = %if.else1735
  %1217 = load i32, ptr %j, align 4, !tbaa !8
  %sub1738 = sub nsw i32 %1217, 1
  store i32 %sub1738, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond1739

for.cond1739:                                     ; preds = %for.inc1806, %if.then1737
  %1218 = load i32, ptr %i__, align 4, !tbaa !8
  %1219 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1740 = icmp sle i32 %1218, %1219
  br i1 %cmp1740, label %for.body1742, label %for.end1808

for.body1742:                                     ; preds = %for.cond1739
  %1220 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1221 = load i32, ptr %i__, align 4, !tbaa !8
  %1222 = load i32, ptr %j, align 4, !tbaa !8
  %1223 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1743 = mul nsw i32 %1222, %1223
  %add1744 = add nsw i32 %1221, %mul1743
  %idxprom1745 = sext i32 %add1744 to i64
  %arrayidx1746 = getelementptr inbounds %struct.complex, ptr %1220, i64 %idxprom1745
  %r1747 = getelementptr inbounds %struct.complex, ptr %arrayidx1746, i32 0, i32 0
  %1224 = load float, ptr %r1747, align 4, !tbaa !15
  %r1748 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %1224, ptr %r1748, align 4, !tbaa !15
  %1225 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1226 = load i32, ptr %i__, align 4, !tbaa !8
  %1227 = load i32, ptr %j, align 4, !tbaa !8
  %1228 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1749 = mul nsw i32 %1227, %1228
  %add1750 = add nsw i32 %1226, %mul1749
  %idxprom1751 = sext i32 %add1750 to i64
  %arrayidx1752 = getelementptr inbounds %struct.complex, ptr %1225, i64 %idxprom1751
  %i1753 = getelementptr inbounds %struct.complex, ptr %arrayidx1752, i32 0, i32 1
  %1229 = load float, ptr %i1753, align 4, !tbaa !24
  %fneg1754 = fneg float %1229
  %i1755 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %fneg1754, ptr %i1755, align 4, !tbaa !24
  %r1756 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1230 = load float, ptr %r1756, align 4, !tbaa !15
  %r1757 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  %1231 = load float, ptr %r1757, align 4, !tbaa !15
  %i1759 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1232 = load float, ptr %i1759, align 4, !tbaa !24
  %i1760 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  %1233 = load float, ptr %i1760, align 4, !tbaa !24
  %mul1761 = fmul float %1232, %1233
  %neg1762 = fneg float %mul1761
  %1234 = call float @llvm.fmuladd.f32(float %1230, float %1231, float %neg1762)
  %r1763 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %1234, ptr %r1763, align 4, !tbaa !15
  %r1764 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1235 = load float, ptr %r1764, align 4, !tbaa !15
  %i1765 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  %1236 = load float, ptr %i1765, align 4, !tbaa !24
  %i1767 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1237 = load float, ptr %i1767, align 4, !tbaa !24
  %r1768 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  %1238 = load float, ptr %r1768, align 4, !tbaa !15
  %mul1769 = fmul float %1237, %1238
  %1239 = call float @llvm.fmuladd.f32(float %1235, float %1236, float %mul1769)
  %i1770 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %1239, ptr %i1770, align 4, !tbaa !24
  %1240 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %1240, ptr %i__4, align 4, !tbaa !8
  %r1771 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1241 = load float, ptr %r1771, align 4, !tbaa !15
  %1242 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1243 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1772 = sext i32 %1243 to i64
  %arrayidx1773 = getelementptr inbounds %struct.complex, ptr %1242, i64 %idxprom1772
  %r1774 = getelementptr inbounds %struct.complex, ptr %arrayidx1773, i32 0, i32 0
  %1244 = load float, ptr %r1774, align 4, !tbaa !15
  %i1776 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1245 = load float, ptr %i1776, align 4, !tbaa !24
  %1246 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1247 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1777 = sext i32 %1247 to i64
  %arrayidx1778 = getelementptr inbounds %struct.complex, ptr %1246, i64 %idxprom1777
  %i1779 = getelementptr inbounds %struct.complex, ptr %arrayidx1778, i32 0, i32 1
  %1248 = load float, ptr %i1779, align 4, !tbaa !24
  %mul1780 = fmul float %1245, %1248
  %neg1781 = fneg float %mul1780
  %1249 = call float @llvm.fmuladd.f32(float %1241, float %1244, float %neg1781)
  %r1782 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %1249, ptr %r1782, align 4, !tbaa !15
  %r1783 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1250 = load float, ptr %r1783, align 4, !tbaa !15
  %1251 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1252 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1784 = sext i32 %1252 to i64
  %arrayidx1785 = getelementptr inbounds %struct.complex, ptr %1251, i64 %idxprom1784
  %i1786 = getelementptr inbounds %struct.complex, ptr %arrayidx1785, i32 0, i32 1
  %1253 = load float, ptr %i1786, align 4, !tbaa !24
  %i1788 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1254 = load float, ptr %i1788, align 4, !tbaa !24
  %1255 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1256 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1789 = sext i32 %1256 to i64
  %arrayidx1790 = getelementptr inbounds %struct.complex, ptr %1255, i64 %idxprom1789
  %r1791 = getelementptr inbounds %struct.complex, ptr %arrayidx1790, i32 0, i32 0
  %1257 = load float, ptr %r1791, align 4, !tbaa !15
  %mul1792 = fmul float %1254, %1257
  %1258 = call float @llvm.fmuladd.f32(float %1250, float %1253, float %mul1792)
  %i1793 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %1258, ptr %i1793, align 4, !tbaa !24
  %r1794 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  %1259 = load float, ptr %r1794, align 4, !tbaa !15
  %r1795 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1260 = load float, ptr %r1795, align 4, !tbaa !15
  %add1796 = fadd float %1259, %1260
  %r1797 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add1796, ptr %r1797, align 4, !tbaa !15
  %i1798 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  %1261 = load float, ptr %i1798, align 4, !tbaa !24
  %i1799 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1262 = load float, ptr %i1799, align 4, !tbaa !24
  %add1800 = fadd float %1261, %1262
  %i1801 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add1800, ptr %i1801, align 4, !tbaa !24
  %r1802 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1263 = load float, ptr %r1802, align 4, !tbaa !15
  %r1803 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  store float %1263, ptr %r1803, align 4, !tbaa !15
  %i1804 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1264 = load float, ptr %i1804, align 4, !tbaa !24
  %i1805 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  store float %1264, ptr %i1805, align 4, !tbaa !24
  br label %for.inc1806

for.inc1806:                                      ; preds = %for.body1742
  %1265 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1807 = add nsw i32 %1265, 1
  store i32 %inc1807, ptr %i__, align 4, !tbaa !8
  br label %for.cond1739, !llvm.loop !36

for.end1808:                                      ; preds = %for.cond1739
  br label %if.end1885

if.else1809:                                      ; preds = %if.else1735
  %1266 = load i32, ptr %j, align 4, !tbaa !8
  %1267 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1268 = load i32, ptr %1267, align 4, !tbaa !8
  %cmp1810 = icmp slt i32 %1266, %1268
  br i1 %cmp1810, label %if.then1812, label %if.end1884

if.then1812:                                      ; preds = %if.else1809
  %1269 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1270 = load i32, ptr %1269, align 4, !tbaa !8
  store i32 %1270, ptr %i__3, align 4, !tbaa !8
  %1271 = load i32, ptr %j, align 4, !tbaa !8
  %add1813 = add nsw i32 %1271, 1
  store i32 %add1813, ptr %i__, align 4, !tbaa !8
  br label %for.cond1814

for.cond1814:                                     ; preds = %for.inc1881, %if.then1812
  %1272 = load i32, ptr %i__, align 4, !tbaa !8
  %1273 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1815 = icmp sle i32 %1272, %1273
  br i1 %cmp1815, label %for.body1817, label %for.end1883

for.body1817:                                     ; preds = %for.cond1814
  %1274 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1275 = load i32, ptr %i__, align 4, !tbaa !8
  %1276 = load i32, ptr %j, align 4, !tbaa !8
  %1277 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1818 = mul nsw i32 %1276, %1277
  %add1819 = add nsw i32 %1275, %mul1818
  %idxprom1820 = sext i32 %add1819 to i64
  %arrayidx1821 = getelementptr inbounds %struct.complex, ptr %1274, i64 %idxprom1820
  %r1822 = getelementptr inbounds %struct.complex, ptr %arrayidx1821, i32 0, i32 0
  %1278 = load float, ptr %r1822, align 4, !tbaa !15
  %r1823 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %1278, ptr %r1823, align 4, !tbaa !15
  %1279 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1280 = load i32, ptr %i__, align 4, !tbaa !8
  %1281 = load i32, ptr %j, align 4, !tbaa !8
  %1282 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1824 = mul nsw i32 %1281, %1282
  %add1825 = add nsw i32 %1280, %mul1824
  %idxprom1826 = sext i32 %add1825 to i64
  %arrayidx1827 = getelementptr inbounds %struct.complex, ptr %1279, i64 %idxprom1826
  %i1828 = getelementptr inbounds %struct.complex, ptr %arrayidx1827, i32 0, i32 1
  %1283 = load float, ptr %i1828, align 4, !tbaa !24
  %fneg1829 = fneg float %1283
  %i1830 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %fneg1829, ptr %i1830, align 4, !tbaa !24
  %r1831 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1284 = load float, ptr %r1831, align 4, !tbaa !15
  %r1832 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  %1285 = load float, ptr %r1832, align 4, !tbaa !15
  %i1834 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1286 = load float, ptr %i1834, align 4, !tbaa !24
  %i1835 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  %1287 = load float, ptr %i1835, align 4, !tbaa !24
  %mul1836 = fmul float %1286, %1287
  %neg1837 = fneg float %mul1836
  %1288 = call float @llvm.fmuladd.f32(float %1284, float %1285, float %neg1837)
  %r1838 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %1288, ptr %r1838, align 4, !tbaa !15
  %r1839 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %1289 = load float, ptr %r1839, align 4, !tbaa !15
  %i1840 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  %1290 = load float, ptr %i1840, align 4, !tbaa !24
  %i1842 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %1291 = load float, ptr %i1842, align 4, !tbaa !24
  %r1843 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  %1292 = load float, ptr %r1843, align 4, !tbaa !15
  %mul1844 = fmul float %1291, %1292
  %1293 = call float @llvm.fmuladd.f32(float %1289, float %1290, float %mul1844)
  %i1845 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %1293, ptr %i1845, align 4, !tbaa !24
  %1294 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %1294, ptr %i__4, align 4, !tbaa !8
  %r1846 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1295 = load float, ptr %r1846, align 4, !tbaa !15
  %1296 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1297 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1847 = sext i32 %1297 to i64
  %arrayidx1848 = getelementptr inbounds %struct.complex, ptr %1296, i64 %idxprom1847
  %r1849 = getelementptr inbounds %struct.complex, ptr %arrayidx1848, i32 0, i32 0
  %1298 = load float, ptr %r1849, align 4, !tbaa !15
  %i1851 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1299 = load float, ptr %i1851, align 4, !tbaa !24
  %1300 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1301 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1852 = sext i32 %1301 to i64
  %arrayidx1853 = getelementptr inbounds %struct.complex, ptr %1300, i64 %idxprom1852
  %i1854 = getelementptr inbounds %struct.complex, ptr %arrayidx1853, i32 0, i32 1
  %1302 = load float, ptr %i1854, align 4, !tbaa !24
  %mul1855 = fmul float %1299, %1302
  %neg1856 = fneg float %mul1855
  %1303 = call float @llvm.fmuladd.f32(float %1295, float %1298, float %neg1856)
  %r1857 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %1303, ptr %r1857, align 4, !tbaa !15
  %r1858 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %1304 = load float, ptr %r1858, align 4, !tbaa !15
  %1305 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1306 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1859 = sext i32 %1306 to i64
  %arrayidx1860 = getelementptr inbounds %struct.complex, ptr %1305, i64 %idxprom1859
  %i1861 = getelementptr inbounds %struct.complex, ptr %arrayidx1860, i32 0, i32 1
  %1307 = load float, ptr %i1861, align 4, !tbaa !24
  %i1863 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %1308 = load float, ptr %i1863, align 4, !tbaa !24
  %1309 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1310 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1864 = sext i32 %1310 to i64
  %arrayidx1865 = getelementptr inbounds %struct.complex, ptr %1309, i64 %idxprom1864
  %r1866 = getelementptr inbounds %struct.complex, ptr %arrayidx1865, i32 0, i32 0
  %1311 = load float, ptr %r1866, align 4, !tbaa !15
  %mul1867 = fmul float %1308, %1311
  %1312 = call float @llvm.fmuladd.f32(float %1304, float %1307, float %mul1867)
  %i1868 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %1312, ptr %i1868, align 4, !tbaa !24
  %r1869 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  %1313 = load float, ptr %r1869, align 4, !tbaa !15
  %r1870 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1314 = load float, ptr %r1870, align 4, !tbaa !15
  %add1871 = fadd float %1313, %1314
  %r1872 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %add1871, ptr %r1872, align 4, !tbaa !15
  %i1873 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  %1315 = load float, ptr %i1873, align 4, !tbaa !24
  %i1874 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1316 = load float, ptr %i1874, align 4, !tbaa !24
  %add1875 = fadd float %1315, %1316
  %i1876 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %add1875, ptr %i1876, align 4, !tbaa !24
  %r1877 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1317 = load float, ptr %r1877, align 4, !tbaa !15
  %r1878 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  store float %1317, ptr %r1878, align 4, !tbaa !15
  %i1879 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1318 = load float, ptr %i1879, align 4, !tbaa !24
  %i1880 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  store float %1318, ptr %i1880, align 4, !tbaa !24
  br label %for.inc1881

for.inc1881:                                      ; preds = %for.body1817
  %1319 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1882 = add nsw i32 %1319, 1
  store i32 %inc1882, ptr %i__, align 4, !tbaa !8
  br label %for.cond1814, !llvm.loop !37

for.end1883:                                      ; preds = %for.cond1814
  br label %if.end1884

if.end1884:                                       ; preds = %for.end1883, %if.else1809
  br label %if.end1885

if.end1885:                                       ; preds = %if.end1884, %for.end1808
  br label %if.end1886

if.end1886:                                       ; preds = %if.end1885, %if.end1734
  %1320 = load float, ptr %tscal, align 4, !tbaa !10
  %r1887 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %1320, ptr %r1887, align 4, !tbaa !15
  %i1888 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float 0.000000e+00, ptr %i1888, align 4, !tbaa !24
  %r1889 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 0
  %1321 = load float, ptr %r1889, align 4, !tbaa !15
  %r1890 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1322 = load float, ptr %r1890, align 4, !tbaa !15
  %cmp1891 = fcmp oeq float %1321, %1322
  br i1 %cmp1891, label %land.lhs.true1893, label %if.else2064

land.lhs.true1893:                                ; preds = %if.end1886
  %i1894 = getelementptr inbounds %struct.complex, ptr %uscal, i32 0, i32 1
  %1323 = load float, ptr %i1894, align 4, !tbaa !24
  %i1895 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1324 = load float, ptr %i1895, align 4, !tbaa !24
  %cmp1896 = fcmp oeq float %1323, %1324
  br i1 %cmp1896, label %if.then1898, label %if.else2064

if.then1898:                                      ; preds = %land.lhs.true1893
  %1325 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1325, ptr %i__3, align 4, !tbaa !8
  %1326 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1326, ptr %i__4, align 4, !tbaa !8
  %1327 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1328 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1899 = sext i32 %1328 to i64
  %arrayidx1900 = getelementptr inbounds %struct.complex, ptr %1327, i64 %idxprom1899
  %r1901 = getelementptr inbounds %struct.complex, ptr %arrayidx1900, i32 0, i32 0
  %1329 = load float, ptr %r1901, align 4, !tbaa !15
  %r1902 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  %1330 = load float, ptr %r1902, align 4, !tbaa !15
  %sub1903 = fsub float %1329, %1330
  %r1904 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub1903, ptr %r1904, align 4, !tbaa !15
  %1331 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1332 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1905 = sext i32 %1332 to i64
  %arrayidx1906 = getelementptr inbounds %struct.complex, ptr %1331, i64 %idxprom1905
  %i1907 = getelementptr inbounds %struct.complex, ptr %arrayidx1906, i32 0, i32 1
  %1333 = load float, ptr %i1907, align 4, !tbaa !24
  %i1908 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  %1334 = load float, ptr %i1908, align 4, !tbaa !24
  %sub1909 = fsub float %1333, %1334
  %i1910 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub1909, ptr %i1910, align 4, !tbaa !24
  %r1911 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1335 = load float, ptr %r1911, align 4, !tbaa !15
  %1336 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1337 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1912 = sext i32 %1337 to i64
  %arrayidx1913 = getelementptr inbounds %struct.complex, ptr %1336, i64 %idxprom1912
  %r1914 = getelementptr inbounds %struct.complex, ptr %arrayidx1913, i32 0, i32 0
  store float %1335, ptr %r1914, align 4, !tbaa !15
  %i1915 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1338 = load float, ptr %i1915, align 4, !tbaa !24
  %1339 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1340 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1916 = sext i32 %1340 to i64
  %arrayidx1917 = getelementptr inbounds %struct.complex, ptr %1339, i64 %idxprom1916
  %i1918 = getelementptr inbounds %struct.complex, ptr %arrayidx1917, i32 0, i32 1
  store float %1338, ptr %i1918, align 4, !tbaa !24
  %1341 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1341, ptr %i__3, align 4, !tbaa !8
  %1342 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1343 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1919 = sext i32 %1343 to i64
  %arrayidx1920 = getelementptr inbounds %struct.complex, ptr %1342, i64 %idxprom1919
  %r1921 = getelementptr inbounds %struct.complex, ptr %arrayidx1920, i32 0, i32 0
  %1344 = load float, ptr %r1921, align 4, !tbaa !15
  store float %1344, ptr %r__1, align 4, !tbaa !10
  %1345 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp1922 = fcmp oge float %1345, 0.000000e+00
  br i1 %cmp1922, label %cond.true1924, label %cond.false1925

cond.true1924:                                    ; preds = %if.then1898
  %1346 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end1927

cond.false1925:                                   ; preds = %if.then1898
  %1347 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg1926 = fneg float %1347
  br label %cond.end1927

cond.end1927:                                     ; preds = %cond.false1925, %cond.true1924
  %cond1928 = phi float [ %1346, %cond.true1924 ], [ %fneg1926, %cond.false1925 ]
  %1348 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1349 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1929 = sext i32 %1349 to i64
  %arrayidx1930 = getelementptr inbounds %struct.complex, ptr %1348, i64 %idxprom1929
  %i1931 = getelementptr inbounds %struct.complex, ptr %arrayidx1930, i32 0, i32 1
  %1350 = load float, ptr %i1931, align 4, !tbaa !24
  store float %1350, ptr %r__2, align 4, !tbaa !10
  %1351 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp1932 = fcmp oge float %1351, 0.000000e+00
  br i1 %cmp1932, label %cond.true1934, label %cond.false1935

cond.true1934:                                    ; preds = %cond.end1927
  %1352 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end1937

cond.false1935:                                   ; preds = %cond.end1927
  %1353 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg1936 = fneg float %1353
  br label %cond.end1937

cond.end1937:                                     ; preds = %cond.false1935, %cond.true1934
  %cond1938 = phi float [ %1352, %cond.true1934 ], [ %fneg1936, %cond.false1935 ]
  %add1939 = fadd float %cond1928, %cond1938
  store float %add1939, ptr %xj, align 4, !tbaa !10
  %1354 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool1940 = icmp ne i32 %1354, 0
  br i1 %tobool1940, label %if.then1941, label %if.else1965

if.then1941:                                      ; preds = %cond.end1937
  %1355 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1356 = load i32, ptr %j, align 4, !tbaa !8
  %1357 = load i32, ptr %j, align 4, !tbaa !8
  %1358 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1942 = mul nsw i32 %1357, %1358
  %add1943 = add nsw i32 %1356, %mul1942
  %idxprom1944 = sext i32 %add1943 to i64
  %arrayidx1945 = getelementptr inbounds %struct.complex, ptr %1355, i64 %idxprom1944
  %r1946 = getelementptr inbounds %struct.complex, ptr %arrayidx1945, i32 0, i32 0
  %1359 = load float, ptr %r1946, align 4, !tbaa !15
  %r1947 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %1359, ptr %r1947, align 4, !tbaa !15
  %1360 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1361 = load i32, ptr %j, align 4, !tbaa !8
  %1362 = load i32, ptr %j, align 4, !tbaa !8
  %1363 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1948 = mul nsw i32 %1362, %1363
  %add1949 = add nsw i32 %1361, %mul1948
  %idxprom1950 = sext i32 %add1949 to i64
  %arrayidx1951 = getelementptr inbounds %struct.complex, ptr %1360, i64 %idxprom1950
  %i1952 = getelementptr inbounds %struct.complex, ptr %arrayidx1951, i32 0, i32 1
  %1364 = load float, ptr %i1952, align 4, !tbaa !24
  %fneg1953 = fneg float %1364
  %i1954 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %fneg1953, ptr %i1954, align 4, !tbaa !24
  %1365 = load float, ptr %tscal, align 4, !tbaa !10
  %r1955 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1366 = load float, ptr %r1955, align 4, !tbaa !15
  %mul1956 = fmul float %1365, %1366
  %r1957 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul1956, ptr %r1957, align 4, !tbaa !15
  %1367 = load float, ptr %tscal, align 4, !tbaa !10
  %i1958 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1368 = load float, ptr %i1958, align 4, !tbaa !24
  %mul1959 = fmul float %1367, %1368
  %i1960 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul1959, ptr %i1960, align 4, !tbaa !24
  %r1961 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1369 = load float, ptr %r1961, align 4, !tbaa !15
  %r1962 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  store float %1369, ptr %r1962, align 4, !tbaa !15
  %i1963 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1370 = load float, ptr %i1963, align 4, !tbaa !24
  %i1964 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  store float %1370, ptr %i1964, align 4, !tbaa !24
  br label %if.end1972

if.else1965:                                      ; preds = %cond.end1937
  %1371 = load float, ptr %tscal, align 4, !tbaa !10
  %r1966 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  store float %1371, ptr %r1966, align 4, !tbaa !15
  %i1967 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  store float 0.000000e+00, ptr %i1967, align 4, !tbaa !24
  %1372 = load float, ptr %tscal, align 4, !tbaa !10
  %cmp1968 = fcmp oeq float %1372, 1.000000e+00
  br i1 %cmp1968, label %if.then1970, label %if.end1971

if.then1970:                                      ; preds = %if.else1965
  br label %L185

if.end1971:                                       ; preds = %if.else1965
  br label %if.end1972

if.end1972:                                       ; preds = %if.end1971, %if.then1941
  %r1973 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 0
  %1373 = load float, ptr %r1973, align 4, !tbaa !15
  store float %1373, ptr %r__1, align 4, !tbaa !10
  %1374 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp1974 = fcmp oge float %1374, 0.000000e+00
  br i1 %cmp1974, label %cond.true1976, label %cond.false1977

cond.true1976:                                    ; preds = %if.end1972
  %1375 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end1979

cond.false1977:                                   ; preds = %if.end1972
  %1376 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg1978 = fneg float %1376
  br label %cond.end1979

cond.end1979:                                     ; preds = %cond.false1977, %cond.true1976
  %cond1980 = phi float [ %1375, %cond.true1976 ], [ %fneg1978, %cond.false1977 ]
  %i1981 = getelementptr inbounds %struct.complex, ptr %tjjs, i32 0, i32 1
  %1377 = load float, ptr %i1981, align 4, !tbaa !24
  store float %1377, ptr %r__2, align 4, !tbaa !10
  %1378 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp1982 = fcmp oge float %1378, 0.000000e+00
  br i1 %cmp1982, label %cond.true1984, label %cond.false1985

cond.true1984:                                    ; preds = %cond.end1979
  %1379 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end1987

cond.false1985:                                   ; preds = %cond.end1979
  %1380 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg1986 = fneg float %1380
  br label %cond.end1987

cond.end1987:                                     ; preds = %cond.false1985, %cond.true1984
  %cond1988 = phi float [ %1379, %cond.true1984 ], [ %fneg1986, %cond.false1985 ]
  %add1989 = fadd float %cond1980, %cond1988
  store float %add1989, ptr %tjj, align 4, !tbaa !10
  %1381 = load float, ptr %tjj, align 4, !tbaa !10
  %1382 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp1990 = fcmp ogt float %1381, %1382
  br i1 %cmp1990, label %if.then1992, label %if.else2017

if.then1992:                                      ; preds = %cond.end1987
  %1383 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp1993 = fcmp olt float %1383, 1.000000e+00
  br i1 %cmp1993, label %if.then1995, label %if.end2006

if.then1995:                                      ; preds = %if.then1992
  %1384 = load float, ptr %xj, align 4, !tbaa !10
  %1385 = load float, ptr %tjj, align 4, !tbaa !10
  %1386 = load float, ptr %bignum, align 4, !tbaa !10
  %mul1996 = fmul float %1385, %1386
  %cmp1997 = fcmp ogt float %1384, %mul1996
  br i1 %cmp1997, label %if.then1999, label %if.end2005

if.then1999:                                      ; preds = %if.then1995
  %1387 = load float, ptr %xj, align 4, !tbaa !10
  %div2000 = fdiv float 1.000000e+00, %1387
  store float %div2000, ptr %rec, align 4, !tbaa !10
  %1388 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1389 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx2001 = getelementptr inbounds %struct.complex, ptr %1389, i64 1
  %call2002 = call i32 @csscal_(ptr noundef %1388, ptr noundef %rec, ptr noundef %arrayidx2001, ptr noundef @c__1)
  %1390 = load float, ptr %rec, align 4, !tbaa !10
  %1391 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %1392 = load float, ptr %1391, align 4, !tbaa !10
  %mul2003 = fmul float %1392, %1390
  store float %mul2003, ptr %1391, align 4, !tbaa !10
  %1393 = load float, ptr %rec, align 4, !tbaa !10
  %1394 = load float, ptr %xmax, align 4, !tbaa !10
  %mul2004 = fmul float %1394, %1393
  store float %mul2004, ptr %xmax, align 4, !tbaa !10
  br label %if.end2005

if.end2005:                                       ; preds = %if.then1999, %if.then1995
  br label %if.end2006

if.end2006:                                       ; preds = %if.end2005, %if.then1992
  %1395 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1395, ptr %i__3, align 4, !tbaa !8
  %1396 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1397 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom2007 = sext i32 %1397 to i64
  %arrayidx2008 = getelementptr inbounds %struct.complex, ptr %1396, i64 %idxprom2007
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx2008, ptr noundef %tjjs)
  %r2009 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1398 = load float, ptr %r2009, align 4, !tbaa !15
  %1399 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1400 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom2010 = sext i32 %1400 to i64
  %arrayidx2011 = getelementptr inbounds %struct.complex, ptr %1399, i64 %idxprom2010
  %r2012 = getelementptr inbounds %struct.complex, ptr %arrayidx2011, i32 0, i32 0
  store float %1398, ptr %r2012, align 4, !tbaa !15
  %i2013 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1401 = load float, ptr %i2013, align 4, !tbaa !24
  %1402 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1403 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom2014 = sext i32 %1403 to i64
  %arrayidx2015 = getelementptr inbounds %struct.complex, ptr %1402, i64 %idxprom2014
  %i2016 = getelementptr inbounds %struct.complex, ptr %arrayidx2015, i32 0, i32 1
  store float %1401, ptr %i2016, align 4, !tbaa !24
  br label %if.end2063

if.else2017:                                      ; preds = %cond.end1987
  %1404 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp2018 = fcmp ogt float %1404, 0.000000e+00
  br i1 %cmp2018, label %if.then2020, label %if.else2042

if.then2020:                                      ; preds = %if.else2017
  %1405 = load float, ptr %xj, align 4, !tbaa !10
  %1406 = load float, ptr %tjj, align 4, !tbaa !10
  %1407 = load float, ptr %bignum, align 4, !tbaa !10
  %mul2021 = fmul float %1406, %1407
  %cmp2022 = fcmp ogt float %1405, %mul2021
  br i1 %cmp2022, label %if.then2024, label %if.end2031

if.then2024:                                      ; preds = %if.then2020
  %1408 = load float, ptr %tjj, align 4, !tbaa !10
  %1409 = load float, ptr %bignum, align 4, !tbaa !10
  %mul2025 = fmul float %1408, %1409
  %1410 = load float, ptr %xj, align 4, !tbaa !10
  %div2026 = fdiv float %mul2025, %1410
  store float %div2026, ptr %rec, align 4, !tbaa !10
  %1411 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1412 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx2027 = getelementptr inbounds %struct.complex, ptr %1412, i64 1
  %call2028 = call i32 @csscal_(ptr noundef %1411, ptr noundef %rec, ptr noundef %arrayidx2027, ptr noundef @c__1)
  %1413 = load float, ptr %rec, align 4, !tbaa !10
  %1414 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %1415 = load float, ptr %1414, align 4, !tbaa !10
  %mul2029 = fmul float %1415, %1413
  store float %mul2029, ptr %1414, align 4, !tbaa !10
  %1416 = load float, ptr %rec, align 4, !tbaa !10
  %1417 = load float, ptr %xmax, align 4, !tbaa !10
  %mul2030 = fmul float %1417, %1416
  store float %mul2030, ptr %xmax, align 4, !tbaa !10
  br label %if.end2031

if.end2031:                                       ; preds = %if.then2024, %if.then2020
  %1418 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1418, ptr %i__3, align 4, !tbaa !8
  %1419 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1420 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom2032 = sext i32 %1420 to i64
  %arrayidx2033 = getelementptr inbounds %struct.complex, ptr %1419, i64 %idxprom2032
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx2033, ptr noundef %tjjs)
  %r2034 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1421 = load float, ptr %r2034, align 4, !tbaa !15
  %1422 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1423 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom2035 = sext i32 %1423 to i64
  %arrayidx2036 = getelementptr inbounds %struct.complex, ptr %1422, i64 %idxprom2035
  %r2037 = getelementptr inbounds %struct.complex, ptr %arrayidx2036, i32 0, i32 0
  store float %1421, ptr %r2037, align 4, !tbaa !15
  %i2038 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1424 = load float, ptr %i2038, align 4, !tbaa !24
  %1425 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1426 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom2039 = sext i32 %1426 to i64
  %arrayidx2040 = getelementptr inbounds %struct.complex, ptr %1425, i64 %idxprom2039
  %i2041 = getelementptr inbounds %struct.complex, ptr %arrayidx2040, i32 0, i32 1
  store float %1424, ptr %i2041, align 4, !tbaa !24
  br label %if.end2062

if.else2042:                                      ; preds = %if.else2017
  %1427 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1428 = load i32, ptr %1427, align 4, !tbaa !8
  store i32 %1428, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond2043

for.cond2043:                                     ; preds = %for.inc2053, %if.else2042
  %1429 = load i32, ptr %i__, align 4, !tbaa !8
  %1430 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp2044 = icmp sle i32 %1429, %1430
  br i1 %cmp2044, label %for.body2046, label %for.end2055

for.body2046:                                     ; preds = %for.cond2043
  %1431 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %1431, ptr %i__4, align 4, !tbaa !8
  %1432 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1433 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom2047 = sext i32 %1433 to i64
  %arrayidx2048 = getelementptr inbounds %struct.complex, ptr %1432, i64 %idxprom2047
  %r2049 = getelementptr inbounds %struct.complex, ptr %arrayidx2048, i32 0, i32 0
  store float 0.000000e+00, ptr %r2049, align 4, !tbaa !15
  %1434 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1435 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom2050 = sext i32 %1435 to i64
  %arrayidx2051 = getelementptr inbounds %struct.complex, ptr %1434, i64 %idxprom2050
  %i2052 = getelementptr inbounds %struct.complex, ptr %arrayidx2051, i32 0, i32 1
  store float 0.000000e+00, ptr %i2052, align 4, !tbaa !24
  br label %for.inc2053

for.inc2053:                                      ; preds = %for.body2046
  %1436 = load i32, ptr %i__, align 4, !tbaa !8
  %inc2054 = add nsw i32 %1436, 1
  store i32 %inc2054, ptr %i__, align 4, !tbaa !8
  br label %for.cond2043, !llvm.loop !38

for.end2055:                                      ; preds = %for.cond2043
  %1437 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1437, ptr %i__3, align 4, !tbaa !8
  %1438 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1439 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom2056 = sext i32 %1439 to i64
  %arrayidx2057 = getelementptr inbounds %struct.complex, ptr %1438, i64 %idxprom2056
  %r2058 = getelementptr inbounds %struct.complex, ptr %arrayidx2057, i32 0, i32 0
  store float 1.000000e+00, ptr %r2058, align 4, !tbaa !15
  %1440 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1441 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom2059 = sext i32 %1441 to i64
  %arrayidx2060 = getelementptr inbounds %struct.complex, ptr %1440, i64 %idxprom2059
  %i2061 = getelementptr inbounds %struct.complex, ptr %arrayidx2060, i32 0, i32 1
  store float 0.000000e+00, ptr %i2061, align 4, !tbaa !24
  %1442 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  store float 0.000000e+00, ptr %1442, align 4, !tbaa !10
  store float 0.000000e+00, ptr %xmax, align 4, !tbaa !10
  br label %if.end2062

if.end2062:                                       ; preds = %for.end2055, %if.end2031
  br label %if.end2063

if.end2063:                                       ; preds = %if.end2062, %if.end2006
  br label %L185

L185:                                             ; preds = %if.end2063, %if.then1970
  br label %if.end2083

if.else2064:                                      ; preds = %land.lhs.true1893, %if.end1886
  %1443 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1443, ptr %i__3, align 4, !tbaa !8
  %1444 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1445 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom2065 = sext i32 %1445 to i64
  %arrayidx2066 = getelementptr inbounds %struct.complex, ptr %1444, i64 %idxprom2065
  call void @cladiv_f2c_(ptr noundef %q__2, ptr noundef %arrayidx2066, ptr noundef %tjjs)
  %r2067 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %1446 = load float, ptr %r2067, align 4, !tbaa !15
  %r2068 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 0
  %1447 = load float, ptr %r2068, align 4, !tbaa !15
  %sub2069 = fsub float %1446, %1447
  %r2070 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub2069, ptr %r2070, align 4, !tbaa !15
  %i2071 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %1448 = load float, ptr %i2071, align 4, !tbaa !24
  %i2072 = getelementptr inbounds %struct.complex, ptr %csumj, i32 0, i32 1
  %1449 = load float, ptr %i2072, align 4, !tbaa !24
  %sub2073 = fsub float %1448, %1449
  %i2074 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub2073, ptr %i2074, align 4, !tbaa !24
  %r2075 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %1450 = load float, ptr %r2075, align 4, !tbaa !15
  %1451 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1452 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom2076 = sext i32 %1452 to i64
  %arrayidx2077 = getelementptr inbounds %struct.complex, ptr %1451, i64 %idxprom2076
  %r2078 = getelementptr inbounds %struct.complex, ptr %arrayidx2077, i32 0, i32 0
  store float %1450, ptr %r2078, align 4, !tbaa !15
  %i2079 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %1453 = load float, ptr %i2079, align 4, !tbaa !24
  %1454 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1455 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom2080 = sext i32 %1455 to i64
  %arrayidx2081 = getelementptr inbounds %struct.complex, ptr %1454, i64 %idxprom2080
  %i2082 = getelementptr inbounds %struct.complex, ptr %arrayidx2081, i32 0, i32 1
  store float %1453, ptr %i2082, align 4, !tbaa !24
  br label %if.end2083

if.end2083:                                       ; preds = %if.else2064, %L185
  %1456 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %1456, ptr %i__3, align 4, !tbaa !8
  %1457 = load float, ptr %xmax, align 4, !tbaa !10
  store float %1457, ptr %r__3, align 4, !tbaa !10
  %1458 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1459 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom2084 = sext i32 %1459 to i64
  %arrayidx2085 = getelementptr inbounds %struct.complex, ptr %1458, i64 %idxprom2084
  %r2086 = getelementptr inbounds %struct.complex, ptr %arrayidx2085, i32 0, i32 0
  %1460 = load float, ptr %r2086, align 4, !tbaa !15
  store float %1460, ptr %r__1, align 4, !tbaa !10
  %1461 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp2087 = fcmp oge float %1461, 0.000000e+00
  br i1 %cmp2087, label %cond.true2089, label %cond.false2090

cond.true2089:                                    ; preds = %if.end2083
  %1462 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end2092

cond.false2090:                                   ; preds = %if.end2083
  %1463 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg2091 = fneg float %1463
  br label %cond.end2092

cond.end2092:                                     ; preds = %cond.false2090, %cond.true2089
  %cond2093 = phi float [ %1462, %cond.true2089 ], [ %fneg2091, %cond.false2090 ]
  %1464 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %1465 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom2094 = sext i32 %1465 to i64
  %arrayidx2095 = getelementptr inbounds %struct.complex, ptr %1464, i64 %idxprom2094
  %i2096 = getelementptr inbounds %struct.complex, ptr %arrayidx2095, i32 0, i32 1
  %1466 = load float, ptr %i2096, align 4, !tbaa !24
  store float %1466, ptr %r__2, align 4, !tbaa !10
  %1467 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp2097 = fcmp oge float %1467, 0.000000e+00
  br i1 %cmp2097, label %cond.true2099, label %cond.false2100

cond.true2099:                                    ; preds = %cond.end2092
  %1468 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end2102

cond.false2100:                                   ; preds = %cond.end2092
  %1469 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg2101 = fneg float %1469
  br label %cond.end2102

cond.end2102:                                     ; preds = %cond.false2100, %cond.true2099
  %cond2103 = phi float [ %1468, %cond.true2099 ], [ %fneg2101, %cond.false2100 ]
  %add2104 = fadd float %cond2093, %cond2103
  store float %add2104, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x2105) #4
  %1470 = load float, ptr %r__3, align 4, !tbaa !10
  store float %1470, ptr %_x2105, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y2106) #4
  %1471 = load float, ptr %r__4, align 4, !tbaa !10
  store float %1471, ptr %_y2106, align 4, !tbaa !10
  %1472 = load float, ptr %_x2105, align 4, !tbaa !10
  %1473 = load float, ptr %_y2106, align 4, !tbaa !10
  %cmp2108 = fcmp ogt float %1472, %1473
  br i1 %cmp2108, label %cond.true2110, label %cond.false2111

cond.true2110:                                    ; preds = %cond.end2102
  %1474 = load float, ptr %_x2105, align 4, !tbaa !10
  br label %cond.end2112

cond.false2111:                                   ; preds = %cond.end2102
  %1475 = load float, ptr %_y2106, align 4, !tbaa !10
  br label %cond.end2112

cond.end2112:                                     ; preds = %cond.false2111, %cond.true2110
  %cond2113 = phi float [ %1474, %cond.true2110 ], [ %1475, %cond.false2111 ]
  store float %cond2113, ptr %tmp2107, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y2106) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x2105) #4
  %1476 = load float, ptr %tmp2107, align 4, !tbaa !10
  store float %1476, ptr %xmax, align 4, !tbaa !10
  br label %for.inc2114

for.inc2114:                                      ; preds = %cond.end2112
  %1477 = load i32, ptr %i__2, align 4, !tbaa !8
  %1478 = load i32, ptr %j, align 4, !tbaa !8
  %add2115 = add nsw i32 %1478, %1477
  store i32 %add2115, ptr %j, align 4, !tbaa !8
  br label %for.cond1567, !llvm.loop !39

for.end2116:                                      ; preds = %cond.end1576
  br label %if.end2117

if.end2117:                                       ; preds = %for.end2116, %for.end1565
  br label %if.end2118

if.end2118:                                       ; preds = %if.end2117, %for.end1032
  %1479 = load float, ptr %tscal, align 4, !tbaa !10
  %1480 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %1481 = load float, ptr %1480, align 4, !tbaa !10
  %div2119 = fdiv float %1481, %1479
  store float %div2119, ptr %1480, align 4, !tbaa !10
  br label %if.end2120

if.end2120:                                       ; preds = %if.end2118, %if.then668
  %1482 = load float, ptr %tscal, align 4, !tbaa !10
  %cmp2121 = fcmp une float %1482, 1.000000e+00
  br i1 %cmp2121, label %if.then2123, label %if.end2127

if.then2123:                                      ; preds = %if.end2120
  %1483 = load float, ptr %tscal, align 4, !tbaa !10
  %div2124 = fdiv float 1.000000e+00, %1483
  store float %div2124, ptr %r__1, align 4, !tbaa !10
  %1484 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1485 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %arrayidx2125 = getelementptr inbounds float, ptr %1485, i64 1
  %call2126 = call i32 @sscal_(ptr noundef %1484, ptr noundef %r__1, ptr noundef %arrayidx2125, ptr noundef @c__1)
  br label %if.end2127

if.end2127:                                       ; preds = %if.then2123, %if.end2120
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2127, %if.else320, %if.then43, %if.then39
  call void @llvm.lifetime.end.p0(i64 4, ptr %nounit) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %smlnum) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jfirst) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %notran) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bignum) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %csumj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jlast) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %uscal) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tscal) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %grow) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %xmax) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tjjs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmax) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %imax) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %xbnd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jinc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tjj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rec) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %xj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #4
  %1486 = load i32, ptr %retval, align 4
  ret i32 %1486
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare float @slamch_(ptr noundef) #2

declare float @scasum_(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @isamax_(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @sscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare double @r_imag(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare i32 @ctrsv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @csscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @cladiv_f2c_(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @caxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @icamax_(ptr noundef, ptr noundef, ptr noundef) #2

declare void @cdotu_f2c_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @cdotc_f2c_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!15 = !{!16, !11, i64 0}
!16 = !{!"", !11, i64 0, !11, i64 4}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = !{!16, !11, i64 4}
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

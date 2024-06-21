; ModuleID = 'samples/35.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/slatrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SLATRS\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@c__1 = internal global i32 1, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@c_b46 = internal global float 5.000000e-01, align 4

; Function Attrs: nounwind uwtable
define i32 @slatrs_(ptr noundef %uplo, ptr noundef %trans, ptr noundef %diag, ptr noundef %normin, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %x, ptr noundef %scale, ptr noundef %cnorm, ptr noundef %info) #0 {
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
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %r__3 = alloca float, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %xj = alloca float, align 4
  %rec = alloca float, align 4
  %tjj = alloca float, align 4
  %jinc = alloca i32, align 4
  %xbnd = alloca float, align 4
  %imax = alloca i32, align 4
  %tmax = alloca float, align 4
  %tjjs = alloca float, align 4
  %xmax = alloca float, align 4
  %grow = alloca float, align 4
  %sumj = alloca float, align 4
  %tscal = alloca float, align 4
  %uscal = alloca float, align 4
  %jlast = alloca i32, align 4
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
  %_x106 = alloca float, align 4
  %_y107 = alloca float, align 4
  %tmp108 = alloca float, align 4
  %_x129 = alloca float, align 4
  %_y130 = alloca float, align 4
  %tmp131 = alloca float, align 4
  %_x236 = alloca float, align 4
  %_y237 = alloca float, align 4
  %tmp238 = alloca float, align 4
  %_x271 = alloca float, align 4
  %_y272 = alloca float, align 4
  %tmp273 = alloca float, align 4
  %_x281 = alloca float, align 4
  %_y282 = alloca float, align 4
  %tmp283 = alloca float, align 4
  %_x307 = alloca float, align 4
  %_y308 = alloca float, align 4
  %tmp309 = alloca float, align 4
  %_x317 = alloca float, align 4
  %_y318 = alloca float, align 4
  %tmp319 = alloca float, align 4
  %_x363 = alloca float, align 4
  %_y364 = alloca float, align 4
  %tmp365 = alloca float, align 4
  %_x394 = alloca float, align 4
  %_y395 = alloca float, align 4
  %tmp396 = alloca float, align 4
  %_x423 = alloca float, align 4
  %_y424 = alloca float, align 4
  %tmp425 = alloca float, align 4
  %_x433 = alloca float, align 4
  %_y434 = alloca float, align 4
  %tmp435 = alloca float, align 4
  %_x443 = alloca float, align 4
  %_y444 = alloca float, align 4
  %tmp445 = alloca float, align 4
  %_x736 = alloca float, align 4
  %_y737 = alloca float, align 4
  %tmp738 = alloca float, align 4
  %_x774 = alloca float, align 4
  %_y775 = alloca float, align 4
  %tmp776 = alloca float, align 4
  %_x968 = alloca float, align 4
  %_y969 = alloca float, align 4
  %tmp970 = alloca float, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %xj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rec) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tjj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jinc) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %xbnd) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %imax) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmax) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tjjs) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %xmax) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %grow) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sumj) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tscal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %uscal) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %jlast) #4
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
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %5, i32 -1
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
  %arrayidx = getelementptr inbounds float, ptr %52, i64 %idxprom
  %call56 = call float @sasum_(ptr noundef %i__2, ptr noundef %arrayidx, ptr noundef @c__1)
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
  %arrayidx69 = getelementptr inbounds float, ptr %65, i64 %idxprom68
  %call70 = call float @sasum_(ptr noundef %i__2, ptr noundef %arrayidx69, ptr noundef @c__1)
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
  %cmp84 = fcmp ole float %80, %81
  br i1 %cmp84, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.end79
  store float 1.000000e+00, ptr %tscal, align 4, !tbaa !10
  br label %if.end214

if.else86:                                        ; preds = %if.end79
  %82 = load float, ptr %tmax, align 4, !tbaa !10
  %call87 = call float @slamch_(ptr noundef @.str.9)
  %cmp88 = fcmp ole float %82, %call87
  br i1 %cmp88, label %if.then89, label %if.else94

if.then89:                                        ; preds = %if.else86
  %83 = load float, ptr %smlnum, align 4, !tbaa !10
  %84 = load float, ptr %tmax, align 4, !tbaa !10
  %mul90 = fmul float %83, %84
  %div91 = fdiv float 1.000000e+00, %mul90
  store float %div91, ptr %tscal, align 4, !tbaa !10
  %85 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %86 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %arrayidx92 = getelementptr inbounds float, ptr %86, i64 1
  %call93 = call i32 @sscal_(ptr noundef %85, ptr noundef %tscal, ptr noundef %arrayidx92, ptr noundef @c__1)
  br label %if.end213

if.else94:                                        ; preds = %if.else86
  store float 0.000000e+00, ptr %tmax, align 4, !tbaa !10
  %87 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool95 = icmp ne i32 %87, 0
  br i1 %tobool95, label %if.then96, label %if.else117

if.then96:                                        ; preds = %if.else94
  %88 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %89 = load i32, ptr %88, align 4, !tbaa !8
  store i32 %89, ptr %i__1, align 4, !tbaa !8
  store i32 2, ptr %j, align 4, !tbaa !8
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc114, %if.then96
  %90 = load i32, ptr %j, align 4, !tbaa !8
  %91 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp98 = icmp sle i32 %90, %91
  br i1 %cmp98, label %for.body99, label %for.end116

for.body99:                                       ; preds = %for.cond97
  %92 = load i32, ptr %j, align 4, !tbaa !8
  %sub100 = sub nsw i32 %92, 1
  store i32 %sub100, ptr %i__2, align 4, !tbaa !8
  %93 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %94 = load i32, ptr %j, align 4, !tbaa !8
  %95 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul101 = mul nsw i32 %94, %95
  %add102 = add nsw i32 %mul101, 1
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds float, ptr %93, i64 %idxprom103
  %call105 = call float @slange_(ptr noundef @.str.10, ptr noundef %i__2, ptr noundef @c__1, ptr noundef %arrayidx104, ptr noundef @c__1, ptr noundef %sumj)
  store float %call105, ptr %r__1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x106) #4
  %96 = load float, ptr %r__1, align 4, !tbaa !10
  store float %96, ptr %_x106, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y107) #4
  %97 = load float, ptr %tmax, align 4, !tbaa !10
  store float %97, ptr %_y107, align 4, !tbaa !10
  %98 = load float, ptr %_x106, align 4, !tbaa !10
  %99 = load float, ptr %_y107, align 4, !tbaa !10
  %cmp109 = fcmp ogt float %98, %99
  br i1 %cmp109, label %cond.true110, label %cond.false111

cond.true110:                                     ; preds = %for.body99
  %100 = load float, ptr %_x106, align 4, !tbaa !10
  br label %cond.end112

cond.false111:                                    ; preds = %for.body99
  %101 = load float, ptr %_y107, align 4, !tbaa !10
  br label %cond.end112

cond.end112:                                      ; preds = %cond.false111, %cond.true110
  %cond113 = phi float [ %100, %cond.true110 ], [ %101, %cond.false111 ]
  store float %cond113, ptr %tmp108, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y107) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x106) #4
  %102 = load float, ptr %tmp108, align 4, !tbaa !10
  store float %102, ptr %tmax, align 4, !tbaa !10
  br label %for.inc114

for.inc114:                                       ; preds = %cond.end112
  %103 = load i32, ptr %j, align 4, !tbaa !8
  %inc115 = add nsw i32 %103, 1
  store i32 %inc115, ptr %j, align 4, !tbaa !8
  br label %for.cond97, !llvm.loop !15

for.end116:                                       ; preds = %for.cond97
  br label %if.end140

if.else117:                                       ; preds = %if.else94
  %104 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %105 = load i32, ptr %104, align 4, !tbaa !8
  %sub118 = sub nsw i32 %105, 1
  store i32 %sub118, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc137, %if.else117
  %106 = load i32, ptr %j, align 4, !tbaa !8
  %107 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp120 = icmp sle i32 %106, %107
  br i1 %cmp120, label %for.body121, label %for.end139

for.body121:                                      ; preds = %for.cond119
  %108 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %109 = load i32, ptr %108, align 4, !tbaa !8
  %110 = load i32, ptr %j, align 4, !tbaa !8
  %sub122 = sub nsw i32 %109, %110
  store i32 %sub122, ptr %i__2, align 4, !tbaa !8
  %111 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %112 = load i32, ptr %j, align 4, !tbaa !8
  %add123 = add nsw i32 %112, 1
  %113 = load i32, ptr %j, align 4, !tbaa !8
  %114 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul124 = mul nsw i32 %113, %114
  %add125 = add nsw i32 %add123, %mul124
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds float, ptr %111, i64 %idxprom126
  %call128 = call float @slange_(ptr noundef @.str.10, ptr noundef %i__2, ptr noundef @c__1, ptr noundef %arrayidx127, ptr noundef @c__1, ptr noundef %sumj)
  store float %call128, ptr %r__1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x129) #4
  %115 = load float, ptr %r__1, align 4, !tbaa !10
  store float %115, ptr %_x129, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y130) #4
  %116 = load float, ptr %tmax, align 4, !tbaa !10
  store float %116, ptr %_y130, align 4, !tbaa !10
  %117 = load float, ptr %_x129, align 4, !tbaa !10
  %118 = load float, ptr %_y130, align 4, !tbaa !10
  %cmp132 = fcmp ogt float %117, %118
  br i1 %cmp132, label %cond.true133, label %cond.false134

cond.true133:                                     ; preds = %for.body121
  %119 = load float, ptr %_x129, align 4, !tbaa !10
  br label %cond.end135

cond.false134:                                    ; preds = %for.body121
  %120 = load float, ptr %_y130, align 4, !tbaa !10
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false134, %cond.true133
  %cond136 = phi float [ %119, %cond.true133 ], [ %120, %cond.false134 ]
  store float %cond136, ptr %tmp131, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y130) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x129) #4
  %121 = load float, ptr %tmp131, align 4, !tbaa !10
  store float %121, ptr %tmax, align 4, !tbaa !10
  br label %for.inc137

for.inc137:                                       ; preds = %cond.end135
  %122 = load i32, ptr %j, align 4, !tbaa !8
  %inc138 = add nsw i32 %122, 1
  store i32 %inc138, ptr %j, align 4, !tbaa !8
  br label %for.cond119, !llvm.loop !16

for.end139:                                       ; preds = %for.cond119
  br label %if.end140

if.end140:                                        ; preds = %for.end139, %for.end116
  %123 = load float, ptr %tmax, align 4, !tbaa !10
  %call141 = call float @slamch_(ptr noundef @.str.9)
  %cmp142 = fcmp ole float %123, %call141
  br i1 %cmp142, label %if.then143, label %if.else207

if.then143:                                       ; preds = %if.end140
  %124 = load float, ptr %smlnum, align 4, !tbaa !10
  %125 = load float, ptr %tmax, align 4, !tbaa !10
  %mul144 = fmul float %124, %125
  %div145 = fdiv float 1.000000e+00, %mul144
  store float %div145, ptr %tscal, align 4, !tbaa !10
  %126 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %127 = load i32, ptr %126, align 4, !tbaa !8
  store i32 %127, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc204, %if.then143
  %128 = load i32, ptr %j, align 4, !tbaa !8
  %129 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp147 = icmp sle i32 %128, %129
  br i1 %cmp147, label %for.body148, label %for.end206

for.body148:                                      ; preds = %for.cond146
  %130 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %131 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom149 = sext i32 %131 to i64
  %arrayidx150 = getelementptr inbounds float, ptr %130, i64 %idxprom149
  %132 = load float, ptr %arrayidx150, align 4, !tbaa !10
  %call151 = call float @slamch_(ptr noundef @.str.9)
  %cmp152 = fcmp ole float %132, %call151
  br i1 %cmp152, label %if.then153, label %if.else157

if.then153:                                       ; preds = %for.body148
  %133 = load float, ptr %tscal, align 4, !tbaa !10
  %134 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %135 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom154 = sext i32 %135 to i64
  %arrayidx155 = getelementptr inbounds float, ptr %134, i64 %idxprom154
  %136 = load float, ptr %arrayidx155, align 4, !tbaa !10
  %mul156 = fmul float %136, %133
  store float %mul156, ptr %arrayidx155, align 4, !tbaa !10
  br label %if.end203

if.else157:                                       ; preds = %for.body148
  %137 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %138 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom158 = sext i32 %138 to i64
  %arrayidx159 = getelementptr inbounds float, ptr %137, i64 %idxprom158
  store float 0.000000e+00, ptr %arrayidx159, align 4, !tbaa !10
  %139 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool160 = icmp ne i32 %139, 0
  br i1 %tobool160, label %if.then161, label %if.else181

if.then161:                                       ; preds = %if.else157
  %140 = load i32, ptr %j, align 4, !tbaa !8
  %sub162 = sub nsw i32 %140, 1
  store i32 %sub162, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc178, %if.then161
  %141 = load i32, ptr %i__, align 4, !tbaa !8
  %142 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp164 = icmp sle i32 %141, %142
  br i1 %cmp164, label %for.body165, label %for.end180

for.body165:                                      ; preds = %for.cond163
  %143 = load float, ptr %tscal, align 4, !tbaa !10
  %144 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %145 = load i32, ptr %i__, align 4, !tbaa !8
  %146 = load i32, ptr %j, align 4, !tbaa !8
  %147 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul166 = mul nsw i32 %146, %147
  %add167 = add nsw i32 %145, %mul166
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds float, ptr %144, i64 %idxprom168
  %148 = load float, ptr %arrayidx169, align 4, !tbaa !10
  store float %148, ptr %r__1, align 4, !tbaa !10
  %149 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp170 = fcmp oge float %149, 0.000000e+00
  br i1 %cmp170, label %cond.true171, label %cond.false172

cond.true171:                                     ; preds = %for.body165
  %150 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end173

cond.false172:                                    ; preds = %for.body165
  %151 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg = fneg float %151
  br label %cond.end173

cond.end173:                                      ; preds = %cond.false172, %cond.true171
  %cond174 = phi float [ %150, %cond.true171 ], [ %fneg, %cond.false172 ]
  %152 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %153 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom176 = sext i32 %153 to i64
  %arrayidx177 = getelementptr inbounds float, ptr %152, i64 %idxprom176
  %154 = load float, ptr %arrayidx177, align 4, !tbaa !10
  %155 = call float @llvm.fmuladd.f32(float %143, float %cond174, float %154)
  store float %155, ptr %arrayidx177, align 4, !tbaa !10
  br label %for.inc178

for.inc178:                                       ; preds = %cond.end173
  %156 = load i32, ptr %i__, align 4, !tbaa !8
  %inc179 = add nsw i32 %156, 1
  store i32 %inc179, ptr %i__, align 4, !tbaa !8
  br label %for.cond163, !llvm.loop !17

for.end180:                                       ; preds = %for.cond163
  br label %if.end202

if.else181:                                       ; preds = %if.else157
  %157 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %158 = load i32, ptr %157, align 4, !tbaa !8
  store i32 %158, ptr %i__2, align 4, !tbaa !8
  %159 = load i32, ptr %j, align 4, !tbaa !8
  %add182 = add nsw i32 %159, 1
  store i32 %add182, ptr %i__, align 4, !tbaa !8
  br label %for.cond183

for.cond183:                                      ; preds = %for.inc199, %if.else181
  %160 = load i32, ptr %i__, align 4, !tbaa !8
  %161 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp184 = icmp sle i32 %160, %161
  br i1 %cmp184, label %for.body185, label %for.end201

for.body185:                                      ; preds = %for.cond183
  %162 = load float, ptr %tscal, align 4, !tbaa !10
  %163 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %164 = load i32, ptr %i__, align 4, !tbaa !8
  %165 = load i32, ptr %j, align 4, !tbaa !8
  %166 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul186 = mul nsw i32 %165, %166
  %add187 = add nsw i32 %164, %mul186
  %idxprom188 = sext i32 %add187 to i64
  %arrayidx189 = getelementptr inbounds float, ptr %163, i64 %idxprom188
  %167 = load float, ptr %arrayidx189, align 4, !tbaa !10
  store float %167, ptr %r__1, align 4, !tbaa !10
  %168 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp190 = fcmp oge float %168, 0.000000e+00
  br i1 %cmp190, label %cond.true191, label %cond.false192

cond.true191:                                     ; preds = %for.body185
  %169 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end194

cond.false192:                                    ; preds = %for.body185
  %170 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg193 = fneg float %170
  br label %cond.end194

cond.end194:                                      ; preds = %cond.false192, %cond.true191
  %cond195 = phi float [ %169, %cond.true191 ], [ %fneg193, %cond.false192 ]
  %171 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %172 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom197 = sext i32 %172 to i64
  %arrayidx198 = getelementptr inbounds float, ptr %171, i64 %idxprom197
  %173 = load float, ptr %arrayidx198, align 4, !tbaa !10
  %174 = call float @llvm.fmuladd.f32(float %162, float %cond195, float %173)
  store float %174, ptr %arrayidx198, align 4, !tbaa !10
  br label %for.inc199

for.inc199:                                       ; preds = %cond.end194
  %175 = load i32, ptr %i__, align 4, !tbaa !8
  %inc200 = add nsw i32 %175, 1
  store i32 %inc200, ptr %i__, align 4, !tbaa !8
  br label %for.cond183, !llvm.loop !18

for.end201:                                       ; preds = %for.cond183
  br label %if.end202

if.end202:                                        ; preds = %for.end201, %for.end180
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %if.then153
  br label %for.inc204

for.inc204:                                       ; preds = %if.end203
  %176 = load i32, ptr %j, align 4, !tbaa !8
  %inc205 = add nsw i32 %176, 1
  store i32 %inc205, ptr %j, align 4, !tbaa !8
  br label %for.cond146, !llvm.loop !19

for.end206:                                       ; preds = %for.cond146
  br label %if.end212

if.else207:                                       ; preds = %if.end140
  %177 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %178 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %179 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %180 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %181 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %182 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom208 = sext i32 %182 to i64
  %arrayidx209 = getelementptr inbounds float, ptr %181, i64 %idxprom208
  %183 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %184 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx210 = getelementptr inbounds float, ptr %184, i64 1
  %call211 = call i32 @strsv_(ptr noundef %177, ptr noundef %178, ptr noundef %179, ptr noundef %180, ptr noundef %arrayidx209, ptr noundef %183, ptr noundef %arrayidx210, ptr noundef @c__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end212:                                        ; preds = %for.end206
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %if.then89
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.then85
  %185 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %186 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx215 = getelementptr inbounds float, ptr %186, i64 1
  %call216 = call i32 @isamax_(ptr noundef %185, ptr noundef %arrayidx215, ptr noundef @c__1)
  store i32 %call216, ptr %j, align 4, !tbaa !8
  %187 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %188 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom217 = sext i32 %188 to i64
  %arrayidx218 = getelementptr inbounds float, ptr %187, i64 %idxprom217
  %189 = load float, ptr %arrayidx218, align 4, !tbaa !10
  store float %189, ptr %r__1, align 4, !tbaa !10
  %190 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp219 = fcmp oge float %190, 0.000000e+00
  br i1 %cmp219, label %cond.true220, label %cond.false221

cond.true220:                                     ; preds = %if.end214
  %191 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end223

cond.false221:                                    ; preds = %if.end214
  %192 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg222 = fneg float %192
  br label %cond.end223

cond.end223:                                      ; preds = %cond.false221, %cond.true220
  %cond224 = phi float [ %191, %cond.true220 ], [ %fneg222, %cond.false221 ]
  store float %cond224, ptr %xmax, align 4, !tbaa !10
  %193 = load float, ptr %xmax, align 4, !tbaa !10
  store float %193, ptr %xbnd, align 4, !tbaa !10
  %194 = load i32, ptr %notran, align 4, !tbaa !8
  %tobool225 = icmp ne i32 %194, 0
  br i1 %tobool225, label %if.then226, label %if.else352

if.then226:                                       ; preds = %cond.end223
  %195 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool227 = icmp ne i32 %195, 0
  br i1 %tobool227, label %if.then228, label %if.else229

if.then228:                                       ; preds = %if.then226
  %196 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %197 = load i32, ptr %196, align 4, !tbaa !8
  store i32 %197, ptr %jfirst, align 4, !tbaa !8
  store i32 1, ptr %jlast, align 4, !tbaa !8
  store i32 -1, ptr %jinc, align 4, !tbaa !8
  br label %if.end230

if.else229:                                       ; preds = %if.then226
  store i32 1, ptr %jfirst, align 4, !tbaa !8
  %198 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %199 = load i32, ptr %198, align 4, !tbaa !8
  store i32 %199, ptr %jlast, align 4, !tbaa !8
  store i32 1, ptr %jinc, align 4, !tbaa !8
  br label %if.end230

if.end230:                                        ; preds = %if.else229, %if.then228
  %200 = load float, ptr %tscal, align 4, !tbaa !10
  %cmp231 = fcmp une float %200, 1.000000e+00
  br i1 %cmp231, label %if.then232, label %if.end233

if.then232:                                       ; preds = %if.end230
  store float 0.000000e+00, ptr %grow, align 4, !tbaa !10
  br label %L50

if.end233:                                        ; preds = %if.end230
  %201 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool234 = icmp ne i32 %201, 0
  br i1 %tobool234, label %if.then235, label %if.else306

if.then235:                                       ; preds = %if.end233
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x236) #4
  %202 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %202, ptr %_x236, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y237) #4
  %203 = load float, ptr %smlnum, align 4, !tbaa !10
  store float %203, ptr %_y237, align 4, !tbaa !10
  %204 = load float, ptr %_x236, align 4, !tbaa !10
  %205 = load float, ptr %_y237, align 4, !tbaa !10
  %cmp239 = fcmp ogt float %204, %205
  br i1 %cmp239, label %cond.true240, label %cond.false241

cond.true240:                                     ; preds = %if.then235
  %206 = load float, ptr %_x236, align 4, !tbaa !10
  br label %cond.end242

cond.false241:                                    ; preds = %if.then235
  %207 = load float, ptr %_y237, align 4, !tbaa !10
  br label %cond.end242

cond.end242:                                      ; preds = %cond.false241, %cond.true240
  %cond243 = phi float [ %206, %cond.true240 ], [ %207, %cond.false241 ]
  store float %cond243, ptr %tmp238, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y237) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x236) #4
  %208 = load float, ptr %tmp238, align 4, !tbaa !10
  %div244 = fdiv float 1.000000e+00, %208
  store float %div244, ptr %grow, align 4, !tbaa !10
  %209 = load float, ptr %grow, align 4, !tbaa !10
  store float %209, ptr %xbnd, align 4, !tbaa !10
  %210 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %210, ptr %i__1, align 4, !tbaa !8
  %211 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %211, ptr %i__2, align 4, !tbaa !8
  %212 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %212, ptr %j, align 4, !tbaa !8
  br label %for.cond245

for.cond245:                                      ; preds = %for.inc303, %cond.end242
  %213 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp246 = icmp slt i32 %213, 0
  br i1 %cmp246, label %cond.true247, label %cond.false249

cond.true247:                                     ; preds = %for.cond245
  %214 = load i32, ptr %j, align 4, !tbaa !8
  %215 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp248 = icmp sge i32 %214, %215
  %conv = zext i1 %cmp248 to i32
  br label %cond.end252

cond.false249:                                    ; preds = %for.cond245
  %216 = load i32, ptr %j, align 4, !tbaa !8
  %217 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp250 = icmp sle i32 %216, %217
  %conv251 = zext i1 %cmp250 to i32
  br label %cond.end252

cond.end252:                                      ; preds = %cond.false249, %cond.true247
  %cond253 = phi i32 [ %conv, %cond.true247 ], [ %conv251, %cond.false249 ]
  %tobool254 = icmp ne i32 %cond253, 0
  br i1 %tobool254, label %for.body255, label %for.end305

for.body255:                                      ; preds = %cond.end252
  %218 = load float, ptr %grow, align 4, !tbaa !10
  %219 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp256 = fcmp ole float %218, %219
  br i1 %cmp256, label %if.then258, label %if.end259

if.then258:                                       ; preds = %for.body255
  br label %L50

if.end259:                                        ; preds = %for.body255
  %220 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %221 = load i32, ptr %j, align 4, !tbaa !8
  %222 = load i32, ptr %j, align 4, !tbaa !8
  %223 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul260 = mul nsw i32 %222, %223
  %add261 = add nsw i32 %221, %mul260
  %idxprom262 = sext i32 %add261 to i64
  %arrayidx263 = getelementptr inbounds float, ptr %220, i64 %idxprom262
  %224 = load float, ptr %arrayidx263, align 4, !tbaa !10
  store float %224, ptr %r__1, align 4, !tbaa !10
  %225 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp264 = fcmp oge float %225, 0.000000e+00
  br i1 %cmp264, label %cond.true266, label %cond.false267

cond.true266:                                     ; preds = %if.end259
  %226 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end269

cond.false267:                                    ; preds = %if.end259
  %227 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg268 = fneg float %227
  br label %cond.end269

cond.end269:                                      ; preds = %cond.false267, %cond.true266
  %cond270 = phi float [ %226, %cond.true266 ], [ %fneg268, %cond.false267 ]
  store float %cond270, ptr %tjj, align 4, !tbaa !10
  %228 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %228, ptr %r__1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x271) #4
  store float 1.000000e+00, ptr %_x271, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y272) #4
  %229 = load float, ptr %tjj, align 4, !tbaa !10
  store float %229, ptr %_y272, align 4, !tbaa !10
  %230 = load float, ptr %_x271, align 4, !tbaa !10
  %231 = load float, ptr %_y272, align 4, !tbaa !10
  %cmp274 = fcmp olt float %230, %231
  br i1 %cmp274, label %cond.true276, label %cond.false277

cond.true276:                                     ; preds = %cond.end269
  %232 = load float, ptr %_x271, align 4, !tbaa !10
  br label %cond.end278

cond.false277:                                    ; preds = %cond.end269
  %233 = load float, ptr %_y272, align 4, !tbaa !10
  br label %cond.end278

cond.end278:                                      ; preds = %cond.false277, %cond.true276
  %cond279 = phi float [ %232, %cond.true276 ], [ %233, %cond.false277 ]
  store float %cond279, ptr %tmp273, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y272) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x271) #4
  %234 = load float, ptr %tmp273, align 4, !tbaa !10
  %235 = load float, ptr %grow, align 4, !tbaa !10
  %mul280 = fmul float %234, %235
  store float %mul280, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x281) #4
  %236 = load float, ptr %r__1, align 4, !tbaa !10
  store float %236, ptr %_x281, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y282) #4
  %237 = load float, ptr %r__2, align 4, !tbaa !10
  store float %237, ptr %_y282, align 4, !tbaa !10
  %238 = load float, ptr %_x281, align 4, !tbaa !10
  %239 = load float, ptr %_y282, align 4, !tbaa !10
  %cmp284 = fcmp olt float %238, %239
  br i1 %cmp284, label %cond.true286, label %cond.false287

cond.true286:                                     ; preds = %cond.end278
  %240 = load float, ptr %_x281, align 4, !tbaa !10
  br label %cond.end288

cond.false287:                                    ; preds = %cond.end278
  %241 = load float, ptr %_y282, align 4, !tbaa !10
  br label %cond.end288

cond.end288:                                      ; preds = %cond.false287, %cond.true286
  %cond289 = phi float [ %240, %cond.true286 ], [ %241, %cond.false287 ]
  store float %cond289, ptr %tmp283, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y282) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x281) #4
  %242 = load float, ptr %tmp283, align 4, !tbaa !10
  store float %242, ptr %xbnd, align 4, !tbaa !10
  %243 = load float, ptr %tjj, align 4, !tbaa !10
  %244 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %245 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom290 = sext i32 %245 to i64
  %arrayidx291 = getelementptr inbounds float, ptr %244, i64 %idxprom290
  %246 = load float, ptr %arrayidx291, align 4, !tbaa !10
  %add292 = fadd float %243, %246
  %247 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp293 = fcmp oge float %add292, %247
  br i1 %cmp293, label %if.then295, label %if.else301

if.then295:                                       ; preds = %cond.end288
  %248 = load float, ptr %tjj, align 4, !tbaa !10
  %249 = load float, ptr %tjj, align 4, !tbaa !10
  %250 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %251 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom296 = sext i32 %251 to i64
  %arrayidx297 = getelementptr inbounds float, ptr %250, i64 %idxprom296
  %252 = load float, ptr %arrayidx297, align 4, !tbaa !10
  %add298 = fadd float %249, %252
  %div299 = fdiv float %248, %add298
  %253 = load float, ptr %grow, align 4, !tbaa !10
  %mul300 = fmul float %253, %div299
  store float %mul300, ptr %grow, align 4, !tbaa !10
  br label %if.end302

if.else301:                                       ; preds = %cond.end288
  store float 0.000000e+00, ptr %grow, align 4, !tbaa !10
  br label %if.end302

if.end302:                                        ; preds = %if.else301, %if.then295
  br label %for.inc303

for.inc303:                                       ; preds = %if.end302
  %254 = load i32, ptr %i__2, align 4, !tbaa !8
  %255 = load i32, ptr %j, align 4, !tbaa !8
  %add304 = add nsw i32 %255, %254
  store i32 %add304, ptr %j, align 4, !tbaa !8
  br label %for.cond245, !llvm.loop !20

for.end305:                                       ; preds = %cond.end252
  %256 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %256, ptr %grow, align 4, !tbaa !10
  br label %if.end351

if.else306:                                       ; preds = %if.end233
  store float 1.000000e+00, ptr %r__1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x307) #4
  %257 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %257, ptr %_x307, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y308) #4
  %258 = load float, ptr %smlnum, align 4, !tbaa !10
  store float %258, ptr %_y308, align 4, !tbaa !10
  %259 = load float, ptr %_x307, align 4, !tbaa !10
  %260 = load float, ptr %_y308, align 4, !tbaa !10
  %cmp310 = fcmp ogt float %259, %260
  br i1 %cmp310, label %cond.true312, label %cond.false313

cond.true312:                                     ; preds = %if.else306
  %261 = load float, ptr %_x307, align 4, !tbaa !10
  br label %cond.end314

cond.false313:                                    ; preds = %if.else306
  %262 = load float, ptr %_y308, align 4, !tbaa !10
  br label %cond.end314

cond.end314:                                      ; preds = %cond.false313, %cond.true312
  %cond315 = phi float [ %261, %cond.true312 ], [ %262, %cond.false313 ]
  store float %cond315, ptr %tmp309, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y308) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x307) #4
  %263 = load float, ptr %tmp309, align 4, !tbaa !10
  %div316 = fdiv float 1.000000e+00, %263
  store float %div316, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x317) #4
  %264 = load float, ptr %r__1, align 4, !tbaa !10
  store float %264, ptr %_x317, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y318) #4
  %265 = load float, ptr %r__2, align 4, !tbaa !10
  store float %265, ptr %_y318, align 4, !tbaa !10
  %266 = load float, ptr %_x317, align 4, !tbaa !10
  %267 = load float, ptr %_y318, align 4, !tbaa !10
  %cmp320 = fcmp olt float %266, %267
  br i1 %cmp320, label %cond.true322, label %cond.false323

cond.true322:                                     ; preds = %cond.end314
  %268 = load float, ptr %_x317, align 4, !tbaa !10
  br label %cond.end324

cond.false323:                                    ; preds = %cond.end314
  %269 = load float, ptr %_y318, align 4, !tbaa !10
  br label %cond.end324

cond.end324:                                      ; preds = %cond.false323, %cond.true322
  %cond325 = phi float [ %268, %cond.true322 ], [ %269, %cond.false323 ]
  store float %cond325, ptr %tmp319, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y318) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x317) #4
  %270 = load float, ptr %tmp319, align 4, !tbaa !10
  store float %270, ptr %grow, align 4, !tbaa !10
  %271 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %271, ptr %i__2, align 4, !tbaa !8
  %272 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %272, ptr %i__1, align 4, !tbaa !8
  %273 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %273, ptr %j, align 4, !tbaa !8
  br label %for.cond326

for.cond326:                                      ; preds = %for.inc348, %cond.end324
  %274 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp327 = icmp slt i32 %274, 0
  br i1 %cmp327, label %cond.true329, label %cond.false332

cond.true329:                                     ; preds = %for.cond326
  %275 = load i32, ptr %j, align 4, !tbaa !8
  %276 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp330 = icmp sge i32 %275, %276
  %conv331 = zext i1 %cmp330 to i32
  br label %cond.end335

cond.false332:                                    ; preds = %for.cond326
  %277 = load i32, ptr %j, align 4, !tbaa !8
  %278 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp333 = icmp sle i32 %277, %278
  %conv334 = zext i1 %cmp333 to i32
  br label %cond.end335

cond.end335:                                      ; preds = %cond.false332, %cond.true329
  %cond336 = phi i32 [ %conv331, %cond.true329 ], [ %conv334, %cond.false332 ]
  %tobool337 = icmp ne i32 %cond336, 0
  br i1 %tobool337, label %for.body338, label %for.end350

for.body338:                                      ; preds = %cond.end335
  %279 = load float, ptr %grow, align 4, !tbaa !10
  %280 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp339 = fcmp ole float %279, %280
  br i1 %cmp339, label %if.then341, label %if.end342

if.then341:                                       ; preds = %for.body338
  br label %L50

if.end342:                                        ; preds = %for.body338
  %281 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %282 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom343 = sext i32 %282 to i64
  %arrayidx344 = getelementptr inbounds float, ptr %281, i64 %idxprom343
  %283 = load float, ptr %arrayidx344, align 4, !tbaa !10
  %add345 = fadd float %283, 1.000000e+00
  %div346 = fdiv float 1.000000e+00, %add345
  %284 = load float, ptr %grow, align 4, !tbaa !10
  %mul347 = fmul float %284, %div346
  store float %mul347, ptr %grow, align 4, !tbaa !10
  br label %for.inc348

for.inc348:                                       ; preds = %if.end342
  %285 = load i32, ptr %i__1, align 4, !tbaa !8
  %286 = load i32, ptr %j, align 4, !tbaa !8
  %add349 = add nsw i32 %286, %285
  store i32 %add349, ptr %j, align 4, !tbaa !8
  br label %for.cond326, !llvm.loop !21

for.end350:                                       ; preds = %cond.end335
  br label %if.end351

if.end351:                                        ; preds = %for.end350, %for.end305
  br label %L50

L50:                                              ; preds = %if.end351, %if.then341, %if.then258, %if.then232
  br label %if.end477

if.else352:                                       ; preds = %cond.end223
  %287 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool353 = icmp ne i32 %287, 0
  br i1 %tobool353, label %if.then354, label %if.else355

if.then354:                                       ; preds = %if.else352
  store i32 1, ptr %jfirst, align 4, !tbaa !8
  %288 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %289 = load i32, ptr %288, align 4, !tbaa !8
  store i32 %289, ptr %jlast, align 4, !tbaa !8
  store i32 1, ptr %jinc, align 4, !tbaa !8
  br label %if.end356

if.else355:                                       ; preds = %if.else352
  %290 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %291 = load i32, ptr %290, align 4, !tbaa !8
  store i32 %291, ptr %jfirst, align 4, !tbaa !8
  store i32 1, ptr %jlast, align 4, !tbaa !8
  store i32 -1, ptr %jinc, align 4, !tbaa !8
  br label %if.end356

if.end356:                                        ; preds = %if.else355, %if.then354
  %292 = load float, ptr %tscal, align 4, !tbaa !10
  %cmp357 = fcmp une float %292, 1.000000e+00
  br i1 %cmp357, label %if.then359, label %if.end360

if.then359:                                       ; preds = %if.end356
  store float 0.000000e+00, ptr %grow, align 4, !tbaa !10
  br label %L80

if.end360:                                        ; preds = %if.end356
  %293 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool361 = icmp ne i32 %293, 0
  br i1 %tobool361, label %if.then362, label %if.else432

if.then362:                                       ; preds = %if.end360
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x363) #4
  %294 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %294, ptr %_x363, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y364) #4
  %295 = load float, ptr %smlnum, align 4, !tbaa !10
  store float %295, ptr %_y364, align 4, !tbaa !10
  %296 = load float, ptr %_x363, align 4, !tbaa !10
  %297 = load float, ptr %_y364, align 4, !tbaa !10
  %cmp366 = fcmp ogt float %296, %297
  br i1 %cmp366, label %cond.true368, label %cond.false369

cond.true368:                                     ; preds = %if.then362
  %298 = load float, ptr %_x363, align 4, !tbaa !10
  br label %cond.end370

cond.false369:                                    ; preds = %if.then362
  %299 = load float, ptr %_y364, align 4, !tbaa !10
  br label %cond.end370

cond.end370:                                      ; preds = %cond.false369, %cond.true368
  %cond371 = phi float [ %298, %cond.true368 ], [ %299, %cond.false369 ]
  store float %cond371, ptr %tmp365, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y364) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x363) #4
  %300 = load float, ptr %tmp365, align 4, !tbaa !10
  %div372 = fdiv float 1.000000e+00, %300
  store float %div372, ptr %grow, align 4, !tbaa !10
  %301 = load float, ptr %grow, align 4, !tbaa !10
  store float %301, ptr %xbnd, align 4, !tbaa !10
  %302 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %302, ptr %i__1, align 4, !tbaa !8
  %303 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %303, ptr %i__2, align 4, !tbaa !8
  %304 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %304, ptr %j, align 4, !tbaa !8
  br label %for.cond373

for.cond373:                                      ; preds = %for.inc420, %cond.end370
  %305 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp374 = icmp slt i32 %305, 0
  br i1 %cmp374, label %cond.true376, label %cond.false379

cond.true376:                                     ; preds = %for.cond373
  %306 = load i32, ptr %j, align 4, !tbaa !8
  %307 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp377 = icmp sge i32 %306, %307
  %conv378 = zext i1 %cmp377 to i32
  br label %cond.end382

cond.false379:                                    ; preds = %for.cond373
  %308 = load i32, ptr %j, align 4, !tbaa !8
  %309 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp380 = icmp sle i32 %308, %309
  %conv381 = zext i1 %cmp380 to i32
  br label %cond.end382

cond.end382:                                      ; preds = %cond.false379, %cond.true376
  %cond383 = phi i32 [ %conv378, %cond.true376 ], [ %conv381, %cond.false379 ]
  %tobool384 = icmp ne i32 %cond383, 0
  br i1 %tobool384, label %for.body385, label %for.end422

for.body385:                                      ; preds = %cond.end382
  %310 = load float, ptr %grow, align 4, !tbaa !10
  %311 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp386 = fcmp ole float %310, %311
  br i1 %cmp386, label %if.then388, label %if.end389

if.then388:                                       ; preds = %for.body385
  br label %L80

if.end389:                                        ; preds = %for.body385
  %312 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %313 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom390 = sext i32 %313 to i64
  %arrayidx391 = getelementptr inbounds float, ptr %312, i64 %idxprom390
  %314 = load float, ptr %arrayidx391, align 4, !tbaa !10
  %add392 = fadd float %314, 1.000000e+00
  store float %add392, ptr %xj, align 4, !tbaa !10
  %315 = load float, ptr %grow, align 4, !tbaa !10
  store float %315, ptr %r__1, align 4, !tbaa !10
  %316 = load float, ptr %xbnd, align 4, !tbaa !10
  %317 = load float, ptr %xj, align 4, !tbaa !10
  %div393 = fdiv float %316, %317
  store float %div393, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x394) #4
  %318 = load float, ptr %r__1, align 4, !tbaa !10
  store float %318, ptr %_x394, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y395) #4
  %319 = load float, ptr %r__2, align 4, !tbaa !10
  store float %319, ptr %_y395, align 4, !tbaa !10
  %320 = load float, ptr %_x394, align 4, !tbaa !10
  %321 = load float, ptr %_y395, align 4, !tbaa !10
  %cmp397 = fcmp olt float %320, %321
  br i1 %cmp397, label %cond.true399, label %cond.false400

cond.true399:                                     ; preds = %if.end389
  %322 = load float, ptr %_x394, align 4, !tbaa !10
  br label %cond.end401

cond.false400:                                    ; preds = %if.end389
  %323 = load float, ptr %_y395, align 4, !tbaa !10
  br label %cond.end401

cond.end401:                                      ; preds = %cond.false400, %cond.true399
  %cond402 = phi float [ %322, %cond.true399 ], [ %323, %cond.false400 ]
  store float %cond402, ptr %tmp396, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y395) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x394) #4
  %324 = load float, ptr %tmp396, align 4, !tbaa !10
  store float %324, ptr %grow, align 4, !tbaa !10
  %325 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %326 = load i32, ptr %j, align 4, !tbaa !8
  %327 = load i32, ptr %j, align 4, !tbaa !8
  %328 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul403 = mul nsw i32 %327, %328
  %add404 = add nsw i32 %326, %mul403
  %idxprom405 = sext i32 %add404 to i64
  %arrayidx406 = getelementptr inbounds float, ptr %325, i64 %idxprom405
  %329 = load float, ptr %arrayidx406, align 4, !tbaa !10
  store float %329, ptr %r__1, align 4, !tbaa !10
  %330 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp407 = fcmp oge float %330, 0.000000e+00
  br i1 %cmp407, label %cond.true409, label %cond.false410

cond.true409:                                     ; preds = %cond.end401
  %331 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end412

cond.false410:                                    ; preds = %cond.end401
  %332 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg411 = fneg float %332
  br label %cond.end412

cond.end412:                                      ; preds = %cond.false410, %cond.true409
  %cond413 = phi float [ %331, %cond.true409 ], [ %fneg411, %cond.false410 ]
  store float %cond413, ptr %tjj, align 4, !tbaa !10
  %333 = load float, ptr %xj, align 4, !tbaa !10
  %334 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp414 = fcmp ogt float %333, %334
  br i1 %cmp414, label %if.then416, label %if.end419

if.then416:                                       ; preds = %cond.end412
  %335 = load float, ptr %tjj, align 4, !tbaa !10
  %336 = load float, ptr %xj, align 4, !tbaa !10
  %div417 = fdiv float %335, %336
  %337 = load float, ptr %xbnd, align 4, !tbaa !10
  %mul418 = fmul float %337, %div417
  store float %mul418, ptr %xbnd, align 4, !tbaa !10
  br label %if.end419

if.end419:                                        ; preds = %if.then416, %cond.end412
  br label %for.inc420

for.inc420:                                       ; preds = %if.end419
  %338 = load i32, ptr %i__2, align 4, !tbaa !8
  %339 = load i32, ptr %j, align 4, !tbaa !8
  %add421 = add nsw i32 %339, %338
  store i32 %add421, ptr %j, align 4, !tbaa !8
  br label %for.cond373, !llvm.loop !22

for.end422:                                       ; preds = %cond.end382
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x423) #4
  %340 = load float, ptr %grow, align 4, !tbaa !10
  store float %340, ptr %_x423, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y424) #4
  %341 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %341, ptr %_y424, align 4, !tbaa !10
  %342 = load float, ptr %_x423, align 4, !tbaa !10
  %343 = load float, ptr %_y424, align 4, !tbaa !10
  %cmp426 = fcmp olt float %342, %343
  br i1 %cmp426, label %cond.true428, label %cond.false429

cond.true428:                                     ; preds = %for.end422
  %344 = load float, ptr %_x423, align 4, !tbaa !10
  br label %cond.end430

cond.false429:                                    ; preds = %for.end422
  %345 = load float, ptr %_y424, align 4, !tbaa !10
  br label %cond.end430

cond.end430:                                      ; preds = %cond.false429, %cond.true428
  %cond431 = phi float [ %344, %cond.true428 ], [ %345, %cond.false429 ]
  store float %cond431, ptr %tmp425, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y424) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x423) #4
  %346 = load float, ptr %tmp425, align 4, !tbaa !10
  store float %346, ptr %grow, align 4, !tbaa !10
  br label %if.end476

if.else432:                                       ; preds = %if.end360
  store float 1.000000e+00, ptr %r__1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x433) #4
  %347 = load float, ptr %xbnd, align 4, !tbaa !10
  store float %347, ptr %_x433, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y434) #4
  %348 = load float, ptr %smlnum, align 4, !tbaa !10
  store float %348, ptr %_y434, align 4, !tbaa !10
  %349 = load float, ptr %_x433, align 4, !tbaa !10
  %350 = load float, ptr %_y434, align 4, !tbaa !10
  %cmp436 = fcmp ogt float %349, %350
  br i1 %cmp436, label %cond.true438, label %cond.false439

cond.true438:                                     ; preds = %if.else432
  %351 = load float, ptr %_x433, align 4, !tbaa !10
  br label %cond.end440

cond.false439:                                    ; preds = %if.else432
  %352 = load float, ptr %_y434, align 4, !tbaa !10
  br label %cond.end440

cond.end440:                                      ; preds = %cond.false439, %cond.true438
  %cond441 = phi float [ %351, %cond.true438 ], [ %352, %cond.false439 ]
  store float %cond441, ptr %tmp435, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y434) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x433) #4
  %353 = load float, ptr %tmp435, align 4, !tbaa !10
  %div442 = fdiv float 1.000000e+00, %353
  store float %div442, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x443) #4
  %354 = load float, ptr %r__1, align 4, !tbaa !10
  store float %354, ptr %_x443, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y444) #4
  %355 = load float, ptr %r__2, align 4, !tbaa !10
  store float %355, ptr %_y444, align 4, !tbaa !10
  %356 = load float, ptr %_x443, align 4, !tbaa !10
  %357 = load float, ptr %_y444, align 4, !tbaa !10
  %cmp446 = fcmp olt float %356, %357
  br i1 %cmp446, label %cond.true448, label %cond.false449

cond.true448:                                     ; preds = %cond.end440
  %358 = load float, ptr %_x443, align 4, !tbaa !10
  br label %cond.end450

cond.false449:                                    ; preds = %cond.end440
  %359 = load float, ptr %_y444, align 4, !tbaa !10
  br label %cond.end450

cond.end450:                                      ; preds = %cond.false449, %cond.true448
  %cond451 = phi float [ %358, %cond.true448 ], [ %359, %cond.false449 ]
  store float %cond451, ptr %tmp445, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y444) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x443) #4
  %360 = load float, ptr %tmp445, align 4, !tbaa !10
  store float %360, ptr %grow, align 4, !tbaa !10
  %361 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %361, ptr %i__2, align 4, !tbaa !8
  %362 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %362, ptr %i__1, align 4, !tbaa !8
  %363 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %363, ptr %j, align 4, !tbaa !8
  br label %for.cond452

for.cond452:                                      ; preds = %for.inc473, %cond.end450
  %364 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp453 = icmp slt i32 %364, 0
  br i1 %cmp453, label %cond.true455, label %cond.false458

cond.true455:                                     ; preds = %for.cond452
  %365 = load i32, ptr %j, align 4, !tbaa !8
  %366 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp456 = icmp sge i32 %365, %366
  %conv457 = zext i1 %cmp456 to i32
  br label %cond.end461

cond.false458:                                    ; preds = %for.cond452
  %367 = load i32, ptr %j, align 4, !tbaa !8
  %368 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp459 = icmp sle i32 %367, %368
  %conv460 = zext i1 %cmp459 to i32
  br label %cond.end461

cond.end461:                                      ; preds = %cond.false458, %cond.true455
  %cond462 = phi i32 [ %conv457, %cond.true455 ], [ %conv460, %cond.false458 ]
  %tobool463 = icmp ne i32 %cond462, 0
  br i1 %tobool463, label %for.body464, label %for.end475

for.body464:                                      ; preds = %cond.end461
  %369 = load float, ptr %grow, align 4, !tbaa !10
  %370 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp465 = fcmp ole float %369, %370
  br i1 %cmp465, label %if.then467, label %if.end468

if.then467:                                       ; preds = %for.body464
  br label %L80

if.end468:                                        ; preds = %for.body464
  %371 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %372 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom469 = sext i32 %372 to i64
  %arrayidx470 = getelementptr inbounds float, ptr %371, i64 %idxprom469
  %373 = load float, ptr %arrayidx470, align 4, !tbaa !10
  %add471 = fadd float %373, 1.000000e+00
  store float %add471, ptr %xj, align 4, !tbaa !10
  %374 = load float, ptr %xj, align 4, !tbaa !10
  %375 = load float, ptr %grow, align 4, !tbaa !10
  %div472 = fdiv float %375, %374
  store float %div472, ptr %grow, align 4, !tbaa !10
  br label %for.inc473

for.inc473:                                       ; preds = %if.end468
  %376 = load i32, ptr %i__1, align 4, !tbaa !8
  %377 = load i32, ptr %j, align 4, !tbaa !8
  %add474 = add nsw i32 %377, %376
  store i32 %add474, ptr %j, align 4, !tbaa !8
  br label %for.cond452, !llvm.loop !23

for.end475:                                       ; preds = %cond.end461
  br label %if.end476

if.end476:                                        ; preds = %for.end475, %cond.end430
  br label %L80

L80:                                              ; preds = %if.end476, %if.then467, %if.then388, %if.then359
  br label %if.end477

if.end477:                                        ; preds = %L80, %L50
  %378 = load float, ptr %grow, align 4, !tbaa !10
  %379 = load float, ptr %tscal, align 4, !tbaa !10
  %mul478 = fmul float %378, %379
  %380 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp479 = fcmp ogt float %mul478, %380
  br i1 %cmp479, label %if.then481, label %if.else486

if.then481:                                       ; preds = %if.end477
  %381 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %382 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %383 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %384 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %385 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %386 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom482 = sext i32 %386 to i64
  %arrayidx483 = getelementptr inbounds float, ptr %385, i64 %idxprom482
  %387 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %388 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx484 = getelementptr inbounds float, ptr %388, i64 1
  %call485 = call i32 @strsv_(ptr noundef %381, ptr noundef %382, ptr noundef %383, ptr noundef %384, ptr noundef %arrayidx483, ptr noundef %387, ptr noundef %arrayidx484, ptr noundef @c__1)
  br label %if.end982

if.else486:                                       ; preds = %if.end477
  %389 = load float, ptr %xmax, align 4, !tbaa !10
  %390 = load float, ptr %bignum, align 4, !tbaa !10
  %cmp487 = fcmp ogt float %389, %390
  br i1 %cmp487, label %if.then489, label %if.end493

if.then489:                                       ; preds = %if.else486
  %391 = load float, ptr %bignum, align 4, !tbaa !10
  %392 = load float, ptr %xmax, align 4, !tbaa !10
  %div490 = fdiv float %391, %392
  %393 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  store float %div490, ptr %393, align 4, !tbaa !10
  %394 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %395 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %396 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx491 = getelementptr inbounds float, ptr %396, i64 1
  %call492 = call i32 @sscal_(ptr noundef %394, ptr noundef %395, ptr noundef %arrayidx491, ptr noundef @c__1)
  %397 = load float, ptr %bignum, align 4, !tbaa !10
  store float %397, ptr %xmax, align 4, !tbaa !10
  br label %if.end493

if.end493:                                        ; preds = %if.then489, %if.else486
  %398 = load i32, ptr %notran, align 4, !tbaa !8
  %tobool494 = icmp ne i32 %398, 0
  br i1 %tobool494, label %if.then495, label %if.else713

if.then495:                                       ; preds = %if.end493
  %399 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %399, ptr %i__1, align 4, !tbaa !8
  %400 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %400, ptr %i__2, align 4, !tbaa !8
  %401 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %401, ptr %j, align 4, !tbaa !8
  br label %for.cond496

for.cond496:                                      ; preds = %for.inc710, %if.then495
  %402 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp497 = icmp slt i32 %402, 0
  br i1 %cmp497, label %cond.true499, label %cond.false502

cond.true499:                                     ; preds = %for.cond496
  %403 = load i32, ptr %j, align 4, !tbaa !8
  %404 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp500 = icmp sge i32 %403, %404
  %conv501 = zext i1 %cmp500 to i32
  br label %cond.end505

cond.false502:                                    ; preds = %for.cond496
  %405 = load i32, ptr %j, align 4, !tbaa !8
  %406 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp503 = icmp sle i32 %405, %406
  %conv504 = zext i1 %cmp503 to i32
  br label %cond.end505

cond.end505:                                      ; preds = %cond.false502, %cond.true499
  %cond506 = phi i32 [ %conv501, %cond.true499 ], [ %conv504, %cond.false502 ]
  %tobool507 = icmp ne i32 %cond506, 0
  br i1 %tobool507, label %for.body508, label %for.end712

for.body508:                                      ; preds = %cond.end505
  %407 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %408 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom509 = sext i32 %408 to i64
  %arrayidx510 = getelementptr inbounds float, ptr %407, i64 %idxprom509
  %409 = load float, ptr %arrayidx510, align 4, !tbaa !10
  store float %409, ptr %r__1, align 4, !tbaa !10
  %410 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp511 = fcmp oge float %410, 0.000000e+00
  br i1 %cmp511, label %cond.true513, label %cond.false514

cond.true513:                                     ; preds = %for.body508
  %411 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end516

cond.false514:                                    ; preds = %for.body508
  %412 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg515 = fneg float %412
  br label %cond.end516

cond.end516:                                      ; preds = %cond.false514, %cond.true513
  %cond517 = phi float [ %411, %cond.true513 ], [ %fneg515, %cond.false514 ]
  store float %cond517, ptr %xj, align 4, !tbaa !10
  %413 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool518 = icmp ne i32 %413, 0
  br i1 %tobool518, label %if.then519, label %if.else525

if.then519:                                       ; preds = %cond.end516
  %414 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %415 = load i32, ptr %j, align 4, !tbaa !8
  %416 = load i32, ptr %j, align 4, !tbaa !8
  %417 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul520 = mul nsw i32 %416, %417
  %add521 = add nsw i32 %415, %mul520
  %idxprom522 = sext i32 %add521 to i64
  %arrayidx523 = getelementptr inbounds float, ptr %414, i64 %idxprom522
  %418 = load float, ptr %arrayidx523, align 4, !tbaa !10
  %419 = load float, ptr %tscal, align 4, !tbaa !10
  %mul524 = fmul float %418, %419
  store float %mul524, ptr %tjjs, align 4, !tbaa !10
  br label %if.end530

if.else525:                                       ; preds = %cond.end516
  %420 = load float, ptr %tscal, align 4, !tbaa !10
  store float %420, ptr %tjjs, align 4, !tbaa !10
  %421 = load float, ptr %tscal, align 4, !tbaa !10
  %cmp526 = fcmp oeq float %421, 1.000000e+00
  br i1 %cmp526, label %if.then528, label %if.end529

if.then528:                                       ; preds = %if.else525
  br label %L95

if.end529:                                        ; preds = %if.else525
  br label %if.end530

if.end530:                                        ; preds = %if.end529, %if.then519
  %422 = load float, ptr %tjjs, align 4, !tbaa !10
  %cmp531 = fcmp oge float %422, 0.000000e+00
  br i1 %cmp531, label %cond.true533, label %cond.false534

cond.true533:                                     ; preds = %if.end530
  %423 = load float, ptr %tjjs, align 4, !tbaa !10
  br label %cond.end536

cond.false534:                                    ; preds = %if.end530
  %424 = load float, ptr %tjjs, align 4, !tbaa !10
  %fneg535 = fneg float %424
  br label %cond.end536

cond.end536:                                      ; preds = %cond.false534, %cond.true533
  %cond537 = phi float [ %423, %cond.true533 ], [ %fneg535, %cond.false534 ]
  store float %cond537, ptr %tjj, align 4, !tbaa !10
  %425 = load float, ptr %tjj, align 4, !tbaa !10
  %426 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp538 = fcmp ogt float %425, %426
  br i1 %cmp538, label %if.then540, label %if.else567

if.then540:                                       ; preds = %cond.end536
  %427 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp541 = fcmp olt float %427, 1.000000e+00
  br i1 %cmp541, label %if.then543, label %if.end554

if.then543:                                       ; preds = %if.then540
  %428 = load float, ptr %xj, align 4, !tbaa !10
  %429 = load float, ptr %tjj, align 4, !tbaa !10
  %430 = load float, ptr %bignum, align 4, !tbaa !10
  %mul544 = fmul float %429, %430
  %cmp545 = fcmp ogt float %428, %mul544
  br i1 %cmp545, label %if.then547, label %if.end553

if.then547:                                       ; preds = %if.then543
  %431 = load float, ptr %xj, align 4, !tbaa !10
  %div548 = fdiv float 1.000000e+00, %431
  store float %div548, ptr %rec, align 4, !tbaa !10
  %432 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %433 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx549 = getelementptr inbounds float, ptr %433, i64 1
  %call550 = call i32 @sscal_(ptr noundef %432, ptr noundef %rec, ptr noundef %arrayidx549, ptr noundef @c__1)
  %434 = load float, ptr %rec, align 4, !tbaa !10
  %435 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %436 = load float, ptr %435, align 4, !tbaa !10
  %mul551 = fmul float %436, %434
  store float %mul551, ptr %435, align 4, !tbaa !10
  %437 = load float, ptr %rec, align 4, !tbaa !10
  %438 = load float, ptr %xmax, align 4, !tbaa !10
  %mul552 = fmul float %438, %437
  store float %mul552, ptr %xmax, align 4, !tbaa !10
  br label %if.end553

if.end553:                                        ; preds = %if.then547, %if.then543
  br label %if.end554

if.end554:                                        ; preds = %if.end553, %if.then540
  %439 = load float, ptr %tjjs, align 4, !tbaa !10
  %440 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %441 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom555 = sext i32 %441 to i64
  %arrayidx556 = getelementptr inbounds float, ptr %440, i64 %idxprom555
  %442 = load float, ptr %arrayidx556, align 4, !tbaa !10
  %div557 = fdiv float %442, %439
  store float %div557, ptr %arrayidx556, align 4, !tbaa !10
  %443 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %444 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom558 = sext i32 %444 to i64
  %arrayidx559 = getelementptr inbounds float, ptr %443, i64 %idxprom558
  %445 = load float, ptr %arrayidx559, align 4, !tbaa !10
  store float %445, ptr %r__1, align 4, !tbaa !10
  %446 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp560 = fcmp oge float %446, 0.000000e+00
  br i1 %cmp560, label %cond.true562, label %cond.false563

cond.true562:                                     ; preds = %if.end554
  %447 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end565

cond.false563:                                    ; preds = %if.end554
  %448 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg564 = fneg float %448
  br label %cond.end565

cond.end565:                                      ; preds = %cond.false563, %cond.true562
  %cond566 = phi float [ %447, %cond.true562 ], [ %fneg564, %cond.false563 ]
  store float %cond566, ptr %xj, align 4, !tbaa !10
  br label %if.end616

if.else567:                                       ; preds = %cond.end536
  %449 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp568 = fcmp ogt float %449, 0.000000e+00
  br i1 %cmp568, label %if.then570, label %if.else603

if.then570:                                       ; preds = %if.else567
  %450 = load float, ptr %xj, align 4, !tbaa !10
  %451 = load float, ptr %tjj, align 4, !tbaa !10
  %452 = load float, ptr %bignum, align 4, !tbaa !10
  %mul571 = fmul float %451, %452
  %cmp572 = fcmp ogt float %450, %mul571
  br i1 %cmp572, label %if.then574, label %if.end590

if.then574:                                       ; preds = %if.then570
  %453 = load float, ptr %tjj, align 4, !tbaa !10
  %454 = load float, ptr %bignum, align 4, !tbaa !10
  %mul575 = fmul float %453, %454
  %455 = load float, ptr %xj, align 4, !tbaa !10
  %div576 = fdiv float %mul575, %455
  store float %div576, ptr %rec, align 4, !tbaa !10
  %456 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %457 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom577 = sext i32 %457 to i64
  %arrayidx578 = getelementptr inbounds float, ptr %456, i64 %idxprom577
  %458 = load float, ptr %arrayidx578, align 4, !tbaa !10
  %cmp579 = fcmp ogt float %458, 1.000000e+00
  br i1 %cmp579, label %if.then581, label %if.end585

if.then581:                                       ; preds = %if.then574
  %459 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %460 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom582 = sext i32 %460 to i64
  %arrayidx583 = getelementptr inbounds float, ptr %459, i64 %idxprom582
  %461 = load float, ptr %arrayidx583, align 4, !tbaa !10
  %462 = load float, ptr %rec, align 4, !tbaa !10
  %div584 = fdiv float %462, %461
  store float %div584, ptr %rec, align 4, !tbaa !10
  br label %if.end585

if.end585:                                        ; preds = %if.then581, %if.then574
  %463 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %464 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx586 = getelementptr inbounds float, ptr %464, i64 1
  %call587 = call i32 @sscal_(ptr noundef %463, ptr noundef %rec, ptr noundef %arrayidx586, ptr noundef @c__1)
  %465 = load float, ptr %rec, align 4, !tbaa !10
  %466 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %467 = load float, ptr %466, align 4, !tbaa !10
  %mul588 = fmul float %467, %465
  store float %mul588, ptr %466, align 4, !tbaa !10
  %468 = load float, ptr %rec, align 4, !tbaa !10
  %469 = load float, ptr %xmax, align 4, !tbaa !10
  %mul589 = fmul float %469, %468
  store float %mul589, ptr %xmax, align 4, !tbaa !10
  br label %if.end590

if.end590:                                        ; preds = %if.end585, %if.then570
  %470 = load float, ptr %tjjs, align 4, !tbaa !10
  %471 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %472 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom591 = sext i32 %472 to i64
  %arrayidx592 = getelementptr inbounds float, ptr %471, i64 %idxprom591
  %473 = load float, ptr %arrayidx592, align 4, !tbaa !10
  %div593 = fdiv float %473, %470
  store float %div593, ptr %arrayidx592, align 4, !tbaa !10
  %474 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %475 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom594 = sext i32 %475 to i64
  %arrayidx595 = getelementptr inbounds float, ptr %474, i64 %idxprom594
  %476 = load float, ptr %arrayidx595, align 4, !tbaa !10
  store float %476, ptr %r__1, align 4, !tbaa !10
  %477 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp596 = fcmp oge float %477, 0.000000e+00
  br i1 %cmp596, label %cond.true598, label %cond.false599

cond.true598:                                     ; preds = %if.end590
  %478 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end601

cond.false599:                                    ; preds = %if.end590
  %479 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg600 = fneg float %479
  br label %cond.end601

cond.end601:                                      ; preds = %cond.false599, %cond.true598
  %cond602 = phi float [ %478, %cond.true598 ], [ %fneg600, %cond.false599 ]
  store float %cond602, ptr %xj, align 4, !tbaa !10
  br label %if.end615

if.else603:                                       ; preds = %if.else567
  %480 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %481 = load i32, ptr %480, align 4, !tbaa !8
  store i32 %481, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond604

for.cond604:                                      ; preds = %for.inc610, %if.else603
  %482 = load i32, ptr %i__, align 4, !tbaa !8
  %483 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp605 = icmp sle i32 %482, %483
  br i1 %cmp605, label %for.body607, label %for.end612

for.body607:                                      ; preds = %for.cond604
  %484 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %485 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom608 = sext i32 %485 to i64
  %arrayidx609 = getelementptr inbounds float, ptr %484, i64 %idxprom608
  store float 0.000000e+00, ptr %arrayidx609, align 4, !tbaa !10
  br label %for.inc610

for.inc610:                                       ; preds = %for.body607
  %486 = load i32, ptr %i__, align 4, !tbaa !8
  %inc611 = add nsw i32 %486, 1
  store i32 %inc611, ptr %i__, align 4, !tbaa !8
  br label %for.cond604, !llvm.loop !24

for.end612:                                       ; preds = %for.cond604
  %487 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %488 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom613 = sext i32 %488 to i64
  %arrayidx614 = getelementptr inbounds float, ptr %487, i64 %idxprom613
  store float 1.000000e+00, ptr %arrayidx614, align 4, !tbaa !10
  store float 1.000000e+00, ptr %xj, align 4, !tbaa !10
  %489 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  store float 0.000000e+00, ptr %489, align 4, !tbaa !10
  store float 0.000000e+00, ptr %xmax, align 4, !tbaa !10
  br label %if.end615

if.end615:                                        ; preds = %for.end612, %cond.end601
  br label %if.end616

if.end616:                                        ; preds = %if.end615, %cond.end565
  br label %L95

L95:                                              ; preds = %if.end616, %if.then528
  %490 = load float, ptr %xj, align 4, !tbaa !10
  %cmp617 = fcmp ogt float %490, 1.000000e+00
  br i1 %cmp617, label %if.then619, label %if.else633

if.then619:                                       ; preds = %L95
  %491 = load float, ptr %xj, align 4, !tbaa !10
  %div620 = fdiv float 1.000000e+00, %491
  store float %div620, ptr %rec, align 4, !tbaa !10
  %492 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %493 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom621 = sext i32 %493 to i64
  %arrayidx622 = getelementptr inbounds float, ptr %492, i64 %idxprom621
  %494 = load float, ptr %arrayidx622, align 4, !tbaa !10
  %495 = load float, ptr %bignum, align 4, !tbaa !10
  %496 = load float, ptr %xmax, align 4, !tbaa !10
  %sub623 = fsub float %495, %496
  %497 = load float, ptr %rec, align 4, !tbaa !10
  %mul624 = fmul float %sub623, %497
  %cmp625 = fcmp ogt float %494, %mul624
  br i1 %cmp625, label %if.then627, label %if.end632

if.then627:                                       ; preds = %if.then619
  %498 = load float, ptr %rec, align 4, !tbaa !10
  %mul628 = fmul float %498, 5.000000e-01
  store float %mul628, ptr %rec, align 4, !tbaa !10
  %499 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %500 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx629 = getelementptr inbounds float, ptr %500, i64 1
  %call630 = call i32 @sscal_(ptr noundef %499, ptr noundef %rec, ptr noundef %arrayidx629, ptr noundef @c__1)
  %501 = load float, ptr %rec, align 4, !tbaa !10
  %502 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %503 = load float, ptr %502, align 4, !tbaa !10
  %mul631 = fmul float %503, %501
  store float %mul631, ptr %502, align 4, !tbaa !10
  br label %if.end632

if.end632:                                        ; preds = %if.then627, %if.then619
  br label %if.end645

if.else633:                                       ; preds = %L95
  %504 = load float, ptr %xj, align 4, !tbaa !10
  %505 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %506 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom634 = sext i32 %506 to i64
  %arrayidx635 = getelementptr inbounds float, ptr %505, i64 %idxprom634
  %507 = load float, ptr %arrayidx635, align 4, !tbaa !10
  %mul636 = fmul float %504, %507
  %508 = load float, ptr %bignum, align 4, !tbaa !10
  %509 = load float, ptr %xmax, align 4, !tbaa !10
  %sub637 = fsub float %508, %509
  %cmp638 = fcmp ogt float %mul636, %sub637
  br i1 %cmp638, label %if.then640, label %if.end644

if.then640:                                       ; preds = %if.else633
  %510 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %511 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx641 = getelementptr inbounds float, ptr %511, i64 1
  %call642 = call i32 @sscal_(ptr noundef %510, ptr noundef @c_b46, ptr noundef %arrayidx641, ptr noundef @c__1)
  %512 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %513 = load float, ptr %512, align 4, !tbaa !10
  %mul643 = fmul float %513, 5.000000e-01
  store float %mul643, ptr %512, align 4, !tbaa !10
  br label %if.end644

if.end644:                                        ; preds = %if.then640, %if.else633
  br label %if.end645

if.end645:                                        ; preds = %if.end644, %if.end632
  %514 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool646 = icmp ne i32 %514, 0
  br i1 %tobool646, label %if.then647, label %if.else675

if.then647:                                       ; preds = %if.end645
  %515 = load i32, ptr %j, align 4, !tbaa !8
  %cmp648 = icmp sgt i32 %515, 1
  br i1 %cmp648, label %if.then650, label %if.end674

if.then650:                                       ; preds = %if.then647
  %516 = load i32, ptr %j, align 4, !tbaa !8
  %sub651 = sub nsw i32 %516, 1
  store i32 %sub651, ptr %i__3, align 4, !tbaa !8
  %517 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %518 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom652 = sext i32 %518 to i64
  %arrayidx653 = getelementptr inbounds float, ptr %517, i64 %idxprom652
  %519 = load float, ptr %arrayidx653, align 4, !tbaa !10
  %fneg654 = fneg float %519
  %520 = load float, ptr %tscal, align 4, !tbaa !10
  %mul655 = fmul float %fneg654, %520
  store float %mul655, ptr %r__1, align 4, !tbaa !10
  %521 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %522 = load i32, ptr %j, align 4, !tbaa !8
  %523 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul656 = mul nsw i32 %522, %523
  %add657 = add nsw i32 %mul656, 1
  %idxprom658 = sext i32 %add657 to i64
  %arrayidx659 = getelementptr inbounds float, ptr %521, i64 %idxprom658
  %524 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx660 = getelementptr inbounds float, ptr %524, i64 1
  %call661 = call i32 @saxpy_(ptr noundef %i__3, ptr noundef %r__1, ptr noundef %arrayidx659, ptr noundef @c__1, ptr noundef %arrayidx660, ptr noundef @c__1)
  %525 = load i32, ptr %j, align 4, !tbaa !8
  %sub662 = sub nsw i32 %525, 1
  store i32 %sub662, ptr %i__3, align 4, !tbaa !8
  %526 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx663 = getelementptr inbounds float, ptr %526, i64 1
  %call664 = call i32 @isamax_(ptr noundef %i__3, ptr noundef %arrayidx663, ptr noundef @c__1)
  store i32 %call664, ptr %i__, align 4, !tbaa !8
  %527 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %528 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom665 = sext i32 %528 to i64
  %arrayidx666 = getelementptr inbounds float, ptr %527, i64 %idxprom665
  %529 = load float, ptr %arrayidx666, align 4, !tbaa !10
  store float %529, ptr %r__1, align 4, !tbaa !10
  %530 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp667 = fcmp oge float %530, 0.000000e+00
  br i1 %cmp667, label %cond.true669, label %cond.false670

cond.true669:                                     ; preds = %if.then650
  %531 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end672

cond.false670:                                    ; preds = %if.then650
  %532 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg671 = fneg float %532
  br label %cond.end672

cond.end672:                                      ; preds = %cond.false670, %cond.true669
  %cond673 = phi float [ %531, %cond.true669 ], [ %fneg671, %cond.false670 ]
  store float %cond673, ptr %xmax, align 4, !tbaa !10
  br label %if.end674

if.end674:                                        ; preds = %cond.end672, %if.then647
  br label %if.end709

if.else675:                                       ; preds = %if.end645
  %533 = load i32, ptr %j, align 4, !tbaa !8
  %534 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %535 = load i32, ptr %534, align 4, !tbaa !8
  %cmp676 = icmp slt i32 %533, %535
  br i1 %cmp676, label %if.then678, label %if.end708

if.then678:                                       ; preds = %if.else675
  %536 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %537 = load i32, ptr %536, align 4, !tbaa !8
  %538 = load i32, ptr %j, align 4, !tbaa !8
  %sub679 = sub nsw i32 %537, %538
  store i32 %sub679, ptr %i__3, align 4, !tbaa !8
  %539 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %540 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom680 = sext i32 %540 to i64
  %arrayidx681 = getelementptr inbounds float, ptr %539, i64 %idxprom680
  %541 = load float, ptr %arrayidx681, align 4, !tbaa !10
  %fneg682 = fneg float %541
  %542 = load float, ptr %tscal, align 4, !tbaa !10
  %mul683 = fmul float %fneg682, %542
  store float %mul683, ptr %r__1, align 4, !tbaa !10
  %543 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %544 = load i32, ptr %j, align 4, !tbaa !8
  %add684 = add nsw i32 %544, 1
  %545 = load i32, ptr %j, align 4, !tbaa !8
  %546 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul685 = mul nsw i32 %545, %546
  %add686 = add nsw i32 %add684, %mul685
  %idxprom687 = sext i32 %add686 to i64
  %arrayidx688 = getelementptr inbounds float, ptr %543, i64 %idxprom687
  %547 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %548 = load i32, ptr %j, align 4, !tbaa !8
  %add689 = add nsw i32 %548, 1
  %idxprom690 = sext i32 %add689 to i64
  %arrayidx691 = getelementptr inbounds float, ptr %547, i64 %idxprom690
  %call692 = call i32 @saxpy_(ptr noundef %i__3, ptr noundef %r__1, ptr noundef %arrayidx688, ptr noundef @c__1, ptr noundef %arrayidx691, ptr noundef @c__1)
  %549 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %550 = load i32, ptr %549, align 4, !tbaa !8
  %551 = load i32, ptr %j, align 4, !tbaa !8
  %sub693 = sub nsw i32 %550, %551
  store i32 %sub693, ptr %i__3, align 4, !tbaa !8
  %552 = load i32, ptr %j, align 4, !tbaa !8
  %553 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %554 = load i32, ptr %j, align 4, !tbaa !8
  %add694 = add nsw i32 %554, 1
  %idxprom695 = sext i32 %add694 to i64
  %arrayidx696 = getelementptr inbounds float, ptr %553, i64 %idxprom695
  %call697 = call i32 @isamax_(ptr noundef %i__3, ptr noundef %arrayidx696, ptr noundef @c__1)
  %add698 = add nsw i32 %552, %call697
  store i32 %add698, ptr %i__, align 4, !tbaa !8
  %555 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %556 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom699 = sext i32 %556 to i64
  %arrayidx700 = getelementptr inbounds float, ptr %555, i64 %idxprom699
  %557 = load float, ptr %arrayidx700, align 4, !tbaa !10
  store float %557, ptr %r__1, align 4, !tbaa !10
  %558 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp701 = fcmp oge float %558, 0.000000e+00
  br i1 %cmp701, label %cond.true703, label %cond.false704

cond.true703:                                     ; preds = %if.then678
  %559 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end706

cond.false704:                                    ; preds = %if.then678
  %560 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg705 = fneg float %560
  br label %cond.end706

cond.end706:                                      ; preds = %cond.false704, %cond.true703
  %cond707 = phi float [ %559, %cond.true703 ], [ %fneg705, %cond.false704 ]
  store float %cond707, ptr %xmax, align 4, !tbaa !10
  br label %if.end708

if.end708:                                        ; preds = %cond.end706, %if.else675
  br label %if.end709

if.end709:                                        ; preds = %if.end708, %if.end674
  br label %for.inc710

for.inc710:                                       ; preds = %if.end709
  %561 = load i32, ptr %i__2, align 4, !tbaa !8
  %562 = load i32, ptr %j, align 4, !tbaa !8
  %add711 = add nsw i32 %562, %561
  store i32 %add711, ptr %j, align 4, !tbaa !8
  br label %for.cond496, !llvm.loop !25

for.end712:                                       ; preds = %cond.end505
  br label %if.end980

if.else713:                                       ; preds = %if.end493
  %563 = load i32, ptr %jlast, align 4, !tbaa !8
  store i32 %563, ptr %i__2, align 4, !tbaa !8
  %564 = load i32, ptr %jinc, align 4, !tbaa !8
  store i32 %564, ptr %i__1, align 4, !tbaa !8
  %565 = load i32, ptr %jfirst, align 4, !tbaa !8
  store i32 %565, ptr %j, align 4, !tbaa !8
  br label %for.cond714

for.cond714:                                      ; preds = %for.inc977, %if.else713
  %566 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp715 = icmp slt i32 %566, 0
  br i1 %cmp715, label %cond.true717, label %cond.false720

cond.true717:                                     ; preds = %for.cond714
  %567 = load i32, ptr %j, align 4, !tbaa !8
  %568 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp718 = icmp sge i32 %567, %568
  %conv719 = zext i1 %cmp718 to i32
  br label %cond.end723

cond.false720:                                    ; preds = %for.cond714
  %569 = load i32, ptr %j, align 4, !tbaa !8
  %570 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp721 = icmp sle i32 %569, %570
  %conv722 = zext i1 %cmp721 to i32
  br label %cond.end723

cond.end723:                                      ; preds = %cond.false720, %cond.true717
  %cond724 = phi i32 [ %conv719, %cond.true717 ], [ %conv722, %cond.false720 ]
  %tobool725 = icmp ne i32 %cond724, 0
  br i1 %tobool725, label %for.body726, label %for.end979

for.body726:                                      ; preds = %cond.end723
  %571 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %572 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom727 = sext i32 %572 to i64
  %arrayidx728 = getelementptr inbounds float, ptr %571, i64 %idxprom727
  %573 = load float, ptr %arrayidx728, align 4, !tbaa !10
  store float %573, ptr %r__1, align 4, !tbaa !10
  %574 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp729 = fcmp oge float %574, 0.000000e+00
  br i1 %cmp729, label %cond.true731, label %cond.false732

cond.true731:                                     ; preds = %for.body726
  %575 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end734

cond.false732:                                    ; preds = %for.body726
  %576 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg733 = fneg float %576
  br label %cond.end734

cond.end734:                                      ; preds = %cond.false732, %cond.true731
  %cond735 = phi float [ %575, %cond.true731 ], [ %fneg733, %cond.false732 ]
  store float %cond735, ptr %xj, align 4, !tbaa !10
  %577 = load float, ptr %tscal, align 4, !tbaa !10
  store float %577, ptr %uscal, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x736) #4
  %578 = load float, ptr %xmax, align 4, !tbaa !10
  store float %578, ptr %_x736, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y737) #4
  store float 1.000000e+00, ptr %_y737, align 4, !tbaa !10
  %579 = load float, ptr %_x736, align 4, !tbaa !10
  %580 = load float, ptr %_y737, align 4, !tbaa !10
  %cmp739 = fcmp ogt float %579, %580
  br i1 %cmp739, label %cond.true741, label %cond.false742

cond.true741:                                     ; preds = %cond.end734
  %581 = load float, ptr %_x736, align 4, !tbaa !10
  br label %cond.end743

cond.false742:                                    ; preds = %cond.end734
  %582 = load float, ptr %_y737, align 4, !tbaa !10
  br label %cond.end743

cond.end743:                                      ; preds = %cond.false742, %cond.true741
  %cond744 = phi float [ %581, %cond.true741 ], [ %582, %cond.false742 ]
  store float %cond744, ptr %tmp738, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y737) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x736) #4
  %583 = load float, ptr %tmp738, align 4, !tbaa !10
  %div745 = fdiv float 1.000000e+00, %583
  store float %div745, ptr %rec, align 4, !tbaa !10
  %584 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %585 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom746 = sext i32 %585 to i64
  %arrayidx747 = getelementptr inbounds float, ptr %584, i64 %idxprom746
  %586 = load float, ptr %arrayidx747, align 4, !tbaa !10
  %587 = load float, ptr %bignum, align 4, !tbaa !10
  %588 = load float, ptr %xj, align 4, !tbaa !10
  %sub748 = fsub float %587, %588
  %589 = load float, ptr %rec, align 4, !tbaa !10
  %mul749 = fmul float %sub748, %589
  %cmp750 = fcmp ogt float %586, %mul749
  br i1 %cmp750, label %if.then752, label %if.end793

if.then752:                                       ; preds = %cond.end743
  %590 = load float, ptr %rec, align 4, !tbaa !10
  %mul753 = fmul float %590, 5.000000e-01
  store float %mul753, ptr %rec, align 4, !tbaa !10
  %591 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool754 = icmp ne i32 %591, 0
  br i1 %tobool754, label %if.then755, label %if.else761

if.then755:                                       ; preds = %if.then752
  %592 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %593 = load i32, ptr %j, align 4, !tbaa !8
  %594 = load i32, ptr %j, align 4, !tbaa !8
  %595 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul756 = mul nsw i32 %594, %595
  %add757 = add nsw i32 %593, %mul756
  %idxprom758 = sext i32 %add757 to i64
  %arrayidx759 = getelementptr inbounds float, ptr %592, i64 %idxprom758
  %596 = load float, ptr %arrayidx759, align 4, !tbaa !10
  %597 = load float, ptr %tscal, align 4, !tbaa !10
  %mul760 = fmul float %596, %597
  store float %mul760, ptr %tjjs, align 4, !tbaa !10
  br label %if.end762

if.else761:                                       ; preds = %if.then752
  %598 = load float, ptr %tscal, align 4, !tbaa !10
  store float %598, ptr %tjjs, align 4, !tbaa !10
  br label %if.end762

if.end762:                                        ; preds = %if.else761, %if.then755
  %599 = load float, ptr %tjjs, align 4, !tbaa !10
  %cmp763 = fcmp oge float %599, 0.000000e+00
  br i1 %cmp763, label %cond.true765, label %cond.false766

cond.true765:                                     ; preds = %if.end762
  %600 = load float, ptr %tjjs, align 4, !tbaa !10
  br label %cond.end768

cond.false766:                                    ; preds = %if.end762
  %601 = load float, ptr %tjjs, align 4, !tbaa !10
  %fneg767 = fneg float %601
  br label %cond.end768

cond.end768:                                      ; preds = %cond.false766, %cond.true765
  %cond769 = phi float [ %600, %cond.true765 ], [ %fneg767, %cond.false766 ]
  store float %cond769, ptr %tjj, align 4, !tbaa !10
  %602 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp770 = fcmp ogt float %602, 1.000000e+00
  br i1 %cmp770, label %if.then772, label %if.end784

if.then772:                                       ; preds = %cond.end768
  store float 1.000000e+00, ptr %r__1, align 4, !tbaa !10
  %603 = load float, ptr %rec, align 4, !tbaa !10
  %604 = load float, ptr %tjj, align 4, !tbaa !10
  %mul773 = fmul float %603, %604
  store float %mul773, ptr %r__2, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x774) #4
  %605 = load float, ptr %r__1, align 4, !tbaa !10
  store float %605, ptr %_x774, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y775) #4
  %606 = load float, ptr %r__2, align 4, !tbaa !10
  store float %606, ptr %_y775, align 4, !tbaa !10
  %607 = load float, ptr %_x774, align 4, !tbaa !10
  %608 = load float, ptr %_y775, align 4, !tbaa !10
  %cmp777 = fcmp olt float %607, %608
  br i1 %cmp777, label %cond.true779, label %cond.false780

cond.true779:                                     ; preds = %if.then772
  %609 = load float, ptr %_x774, align 4, !tbaa !10
  br label %cond.end781

cond.false780:                                    ; preds = %if.then772
  %610 = load float, ptr %_y775, align 4, !tbaa !10
  br label %cond.end781

cond.end781:                                      ; preds = %cond.false780, %cond.true779
  %cond782 = phi float [ %609, %cond.true779 ], [ %610, %cond.false780 ]
  store float %cond782, ptr %tmp776, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y775) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x774) #4
  %611 = load float, ptr %tmp776, align 4, !tbaa !10
  store float %611, ptr %rec, align 4, !tbaa !10
  %612 = load float, ptr %tjjs, align 4, !tbaa !10
  %613 = load float, ptr %uscal, align 4, !tbaa !10
  %div783 = fdiv float %613, %612
  store float %div783, ptr %uscal, align 4, !tbaa !10
  br label %if.end784

if.end784:                                        ; preds = %cond.end781, %cond.end768
  %614 = load float, ptr %rec, align 4, !tbaa !10
  %cmp785 = fcmp olt float %614, 1.000000e+00
  br i1 %cmp785, label %if.then787, label %if.end792

if.then787:                                       ; preds = %if.end784
  %615 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %616 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx788 = getelementptr inbounds float, ptr %616, i64 1
  %call789 = call i32 @sscal_(ptr noundef %615, ptr noundef %rec, ptr noundef %arrayidx788, ptr noundef @c__1)
  %617 = load float, ptr %rec, align 4, !tbaa !10
  %618 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %619 = load float, ptr %618, align 4, !tbaa !10
  %mul790 = fmul float %619, %617
  store float %mul790, ptr %618, align 4, !tbaa !10
  %620 = load float, ptr %rec, align 4, !tbaa !10
  %621 = load float, ptr %xmax, align 4, !tbaa !10
  %mul791 = fmul float %621, %620
  store float %mul791, ptr %xmax, align 4, !tbaa !10
  br label %if.end792

if.end792:                                        ; preds = %if.then787, %if.end784
  br label %if.end793

if.end793:                                        ; preds = %if.end792, %cond.end743
  store float 0.000000e+00, ptr %sumj, align 4, !tbaa !10
  %622 = load float, ptr %uscal, align 4, !tbaa !10
  %cmp794 = fcmp oeq float %622, 1.000000e+00
  br i1 %cmp794, label %if.then796, label %if.else822

if.then796:                                       ; preds = %if.end793
  %623 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool797 = icmp ne i32 %623, 0
  br i1 %tobool797, label %if.then798, label %if.else806

if.then798:                                       ; preds = %if.then796
  %624 = load i32, ptr %j, align 4, !tbaa !8
  %sub799 = sub nsw i32 %624, 1
  store i32 %sub799, ptr %i__3, align 4, !tbaa !8
  %625 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %626 = load i32, ptr %j, align 4, !tbaa !8
  %627 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul800 = mul nsw i32 %626, %627
  %add801 = add nsw i32 %mul800, 1
  %idxprom802 = sext i32 %add801 to i64
  %arrayidx803 = getelementptr inbounds float, ptr %625, i64 %idxprom802
  %628 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx804 = getelementptr inbounds float, ptr %628, i64 1
  %call805 = call float @sdot_(ptr noundef %i__3, ptr noundef %arrayidx803, ptr noundef @c__1, ptr noundef %arrayidx804, ptr noundef @c__1)
  store float %call805, ptr %sumj, align 4, !tbaa !10
  br label %if.end821

if.else806:                                       ; preds = %if.then796
  %629 = load i32, ptr %j, align 4, !tbaa !8
  %630 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %631 = load i32, ptr %630, align 4, !tbaa !8
  %cmp807 = icmp slt i32 %629, %631
  br i1 %cmp807, label %if.then809, label %if.end820

if.then809:                                       ; preds = %if.else806
  %632 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %633 = load i32, ptr %632, align 4, !tbaa !8
  %634 = load i32, ptr %j, align 4, !tbaa !8
  %sub810 = sub nsw i32 %633, %634
  store i32 %sub810, ptr %i__3, align 4, !tbaa !8
  %635 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %636 = load i32, ptr %j, align 4, !tbaa !8
  %add811 = add nsw i32 %636, 1
  %637 = load i32, ptr %j, align 4, !tbaa !8
  %638 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul812 = mul nsw i32 %637, %638
  %add813 = add nsw i32 %add811, %mul812
  %idxprom814 = sext i32 %add813 to i64
  %arrayidx815 = getelementptr inbounds float, ptr %635, i64 %idxprom814
  %639 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %640 = load i32, ptr %j, align 4, !tbaa !8
  %add816 = add nsw i32 %640, 1
  %idxprom817 = sext i32 %add816 to i64
  %arrayidx818 = getelementptr inbounds float, ptr %639, i64 %idxprom817
  %call819 = call float @sdot_(ptr noundef %i__3, ptr noundef %arrayidx815, ptr noundef @c__1, ptr noundef %arrayidx818, ptr noundef @c__1)
  store float %call819, ptr %sumj, align 4, !tbaa !10
  br label %if.end820

if.end820:                                        ; preds = %if.then809, %if.else806
  br label %if.end821

if.end821:                                        ; preds = %if.end820, %if.then798
  br label %if.end863

if.else822:                                       ; preds = %if.end793
  %641 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool823 = icmp ne i32 %641, 0
  br i1 %tobool823, label %if.then824, label %if.else841

if.then824:                                       ; preds = %if.else822
  %642 = load i32, ptr %j, align 4, !tbaa !8
  %sub825 = sub nsw i32 %642, 1
  store i32 %sub825, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond826

for.cond826:                                      ; preds = %for.inc838, %if.then824
  %643 = load i32, ptr %i__, align 4, !tbaa !8
  %644 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp827 = icmp sle i32 %643, %644
  br i1 %cmp827, label %for.body829, label %for.end840

for.body829:                                      ; preds = %for.cond826
  %645 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %646 = load i32, ptr %i__, align 4, !tbaa !8
  %647 = load i32, ptr %j, align 4, !tbaa !8
  %648 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul830 = mul nsw i32 %647, %648
  %add831 = add nsw i32 %646, %mul830
  %idxprom832 = sext i32 %add831 to i64
  %arrayidx833 = getelementptr inbounds float, ptr %645, i64 %idxprom832
  %649 = load float, ptr %arrayidx833, align 4, !tbaa !10
  %650 = load float, ptr %uscal, align 4, !tbaa !10
  %mul834 = fmul float %649, %650
  %651 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %652 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom835 = sext i32 %652 to i64
  %arrayidx836 = getelementptr inbounds float, ptr %651, i64 %idxprom835
  %653 = load float, ptr %arrayidx836, align 4, !tbaa !10
  %654 = load float, ptr %sumj, align 4, !tbaa !10
  %655 = call float @llvm.fmuladd.f32(float %mul834, float %653, float %654)
  store float %655, ptr %sumj, align 4, !tbaa !10
  br label %for.inc838

for.inc838:                                       ; preds = %for.body829
  %656 = load i32, ptr %i__, align 4, !tbaa !8
  %inc839 = add nsw i32 %656, 1
  store i32 %inc839, ptr %i__, align 4, !tbaa !8
  br label %for.cond826, !llvm.loop !26

for.end840:                                       ; preds = %for.cond826
  br label %if.end862

if.else841:                                       ; preds = %if.else822
  %657 = load i32, ptr %j, align 4, !tbaa !8
  %658 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %659 = load i32, ptr %658, align 4, !tbaa !8
  %cmp842 = icmp slt i32 %657, %659
  br i1 %cmp842, label %if.then844, label %if.end861

if.then844:                                       ; preds = %if.else841
  %660 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %661 = load i32, ptr %660, align 4, !tbaa !8
  store i32 %661, ptr %i__3, align 4, !tbaa !8
  %662 = load i32, ptr %j, align 4, !tbaa !8
  %add845 = add nsw i32 %662, 1
  store i32 %add845, ptr %i__, align 4, !tbaa !8
  br label %for.cond846

for.cond846:                                      ; preds = %for.inc858, %if.then844
  %663 = load i32, ptr %i__, align 4, !tbaa !8
  %664 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp847 = icmp sle i32 %663, %664
  br i1 %cmp847, label %for.body849, label %for.end860

for.body849:                                      ; preds = %for.cond846
  %665 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %666 = load i32, ptr %i__, align 4, !tbaa !8
  %667 = load i32, ptr %j, align 4, !tbaa !8
  %668 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul850 = mul nsw i32 %667, %668
  %add851 = add nsw i32 %666, %mul850
  %idxprom852 = sext i32 %add851 to i64
  %arrayidx853 = getelementptr inbounds float, ptr %665, i64 %idxprom852
  %669 = load float, ptr %arrayidx853, align 4, !tbaa !10
  %670 = load float, ptr %uscal, align 4, !tbaa !10
  %mul854 = fmul float %669, %670
  %671 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %672 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom855 = sext i32 %672 to i64
  %arrayidx856 = getelementptr inbounds float, ptr %671, i64 %idxprom855
  %673 = load float, ptr %arrayidx856, align 4, !tbaa !10
  %674 = load float, ptr %sumj, align 4, !tbaa !10
  %675 = call float @llvm.fmuladd.f32(float %mul854, float %673, float %674)
  store float %675, ptr %sumj, align 4, !tbaa !10
  br label %for.inc858

for.inc858:                                       ; preds = %for.body849
  %676 = load i32, ptr %i__, align 4, !tbaa !8
  %inc859 = add nsw i32 %676, 1
  store i32 %inc859, ptr %i__, align 4, !tbaa !8
  br label %for.cond846, !llvm.loop !27

for.end860:                                       ; preds = %for.cond846
  br label %if.end861

if.end861:                                        ; preds = %for.end860, %if.else841
  br label %if.end862

if.end862:                                        ; preds = %if.end861, %for.end840
  br label %if.end863

if.end863:                                        ; preds = %if.end862, %if.end821
  %677 = load float, ptr %uscal, align 4, !tbaa !10
  %678 = load float, ptr %tscal, align 4, !tbaa !10
  %cmp864 = fcmp oeq float %677, %678
  br i1 %cmp864, label %if.then866, label %if.else951

if.then866:                                       ; preds = %if.end863
  %679 = load float, ptr %sumj, align 4, !tbaa !10
  %680 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %681 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom867 = sext i32 %681 to i64
  %arrayidx868 = getelementptr inbounds float, ptr %680, i64 %idxprom867
  %682 = load float, ptr %arrayidx868, align 4, !tbaa !10
  %sub869 = fsub float %682, %679
  store float %sub869, ptr %arrayidx868, align 4, !tbaa !10
  %683 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %684 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom870 = sext i32 %684 to i64
  %arrayidx871 = getelementptr inbounds float, ptr %683, i64 %idxprom870
  %685 = load float, ptr %arrayidx871, align 4, !tbaa !10
  store float %685, ptr %r__1, align 4, !tbaa !10
  %686 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp872 = fcmp oge float %686, 0.000000e+00
  br i1 %cmp872, label %cond.true874, label %cond.false875

cond.true874:                                     ; preds = %if.then866
  %687 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end877

cond.false875:                                    ; preds = %if.then866
  %688 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg876 = fneg float %688
  br label %cond.end877

cond.end877:                                      ; preds = %cond.false875, %cond.true874
  %cond878 = phi float [ %687, %cond.true874 ], [ %fneg876, %cond.false875 ]
  store float %cond878, ptr %xj, align 4, !tbaa !10
  %689 = load i32, ptr %nounit, align 4, !tbaa !8
  %tobool879 = icmp ne i32 %689, 0
  br i1 %tobool879, label %if.then880, label %if.else886

if.then880:                                       ; preds = %cond.end877
  %690 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %691 = load i32, ptr %j, align 4, !tbaa !8
  %692 = load i32, ptr %j, align 4, !tbaa !8
  %693 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul881 = mul nsw i32 %692, %693
  %add882 = add nsw i32 %691, %mul881
  %idxprom883 = sext i32 %add882 to i64
  %arrayidx884 = getelementptr inbounds float, ptr %690, i64 %idxprom883
  %694 = load float, ptr %arrayidx884, align 4, !tbaa !10
  %695 = load float, ptr %tscal, align 4, !tbaa !10
  %mul885 = fmul float %694, %695
  store float %mul885, ptr %tjjs, align 4, !tbaa !10
  br label %if.end891

if.else886:                                       ; preds = %cond.end877
  %696 = load float, ptr %tscal, align 4, !tbaa !10
  store float %696, ptr %tjjs, align 4, !tbaa !10
  %697 = load float, ptr %tscal, align 4, !tbaa !10
  %cmp887 = fcmp oeq float %697, 1.000000e+00
  br i1 %cmp887, label %if.then889, label %if.end890

if.then889:                                       ; preds = %if.else886
  br label %L135

if.end890:                                        ; preds = %if.else886
  br label %if.end891

if.end891:                                        ; preds = %if.end890, %if.then880
  %698 = load float, ptr %tjjs, align 4, !tbaa !10
  %cmp892 = fcmp oge float %698, 0.000000e+00
  br i1 %cmp892, label %cond.true894, label %cond.false895

cond.true894:                                     ; preds = %if.end891
  %699 = load float, ptr %tjjs, align 4, !tbaa !10
  br label %cond.end897

cond.false895:                                    ; preds = %if.end891
  %700 = load float, ptr %tjjs, align 4, !tbaa !10
  %fneg896 = fneg float %700
  br label %cond.end897

cond.end897:                                      ; preds = %cond.false895, %cond.true894
  %cond898 = phi float [ %699, %cond.true894 ], [ %fneg896, %cond.false895 ]
  store float %cond898, ptr %tjj, align 4, !tbaa !10
  %701 = load float, ptr %tjj, align 4, !tbaa !10
  %702 = load float, ptr %smlnum, align 4, !tbaa !10
  %cmp899 = fcmp ogt float %701, %702
  br i1 %cmp899, label %if.then901, label %if.else919

if.then901:                                       ; preds = %cond.end897
  %703 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp902 = fcmp olt float %703, 1.000000e+00
  br i1 %cmp902, label %if.then904, label %if.end915

if.then904:                                       ; preds = %if.then901
  %704 = load float, ptr %xj, align 4, !tbaa !10
  %705 = load float, ptr %tjj, align 4, !tbaa !10
  %706 = load float, ptr %bignum, align 4, !tbaa !10
  %mul905 = fmul float %705, %706
  %cmp906 = fcmp ogt float %704, %mul905
  br i1 %cmp906, label %if.then908, label %if.end914

if.then908:                                       ; preds = %if.then904
  %707 = load float, ptr %xj, align 4, !tbaa !10
  %div909 = fdiv float 1.000000e+00, %707
  store float %div909, ptr %rec, align 4, !tbaa !10
  %708 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %709 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx910 = getelementptr inbounds float, ptr %709, i64 1
  %call911 = call i32 @sscal_(ptr noundef %708, ptr noundef %rec, ptr noundef %arrayidx910, ptr noundef @c__1)
  %710 = load float, ptr %rec, align 4, !tbaa !10
  %711 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %712 = load float, ptr %711, align 4, !tbaa !10
  %mul912 = fmul float %712, %710
  store float %mul912, ptr %711, align 4, !tbaa !10
  %713 = load float, ptr %rec, align 4, !tbaa !10
  %714 = load float, ptr %xmax, align 4, !tbaa !10
  %mul913 = fmul float %714, %713
  store float %mul913, ptr %xmax, align 4, !tbaa !10
  br label %if.end914

if.end914:                                        ; preds = %if.then908, %if.then904
  br label %if.end915

if.end915:                                        ; preds = %if.end914, %if.then901
  %715 = load float, ptr %tjjs, align 4, !tbaa !10
  %716 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %717 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom916 = sext i32 %717 to i64
  %arrayidx917 = getelementptr inbounds float, ptr %716, i64 %idxprom916
  %718 = load float, ptr %arrayidx917, align 4, !tbaa !10
  %div918 = fdiv float %718, %715
  store float %div918, ptr %arrayidx917, align 4, !tbaa !10
  br label %if.end950

if.else919:                                       ; preds = %cond.end897
  %719 = load float, ptr %tjj, align 4, !tbaa !10
  %cmp920 = fcmp ogt float %719, 0.000000e+00
  br i1 %cmp920, label %if.then922, label %if.else937

if.then922:                                       ; preds = %if.else919
  %720 = load float, ptr %xj, align 4, !tbaa !10
  %721 = load float, ptr %tjj, align 4, !tbaa !10
  %722 = load float, ptr %bignum, align 4, !tbaa !10
  %mul923 = fmul float %721, %722
  %cmp924 = fcmp ogt float %720, %mul923
  br i1 %cmp924, label %if.then926, label %if.end933

if.then926:                                       ; preds = %if.then922
  %723 = load float, ptr %tjj, align 4, !tbaa !10
  %724 = load float, ptr %bignum, align 4, !tbaa !10
  %mul927 = fmul float %723, %724
  %725 = load float, ptr %xj, align 4, !tbaa !10
  %div928 = fdiv float %mul927, %725
  store float %div928, ptr %rec, align 4, !tbaa !10
  %726 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %727 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx929 = getelementptr inbounds float, ptr %727, i64 1
  %call930 = call i32 @sscal_(ptr noundef %726, ptr noundef %rec, ptr noundef %arrayidx929, ptr noundef @c__1)
  %728 = load float, ptr %rec, align 4, !tbaa !10
  %729 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %730 = load float, ptr %729, align 4, !tbaa !10
  %mul931 = fmul float %730, %728
  store float %mul931, ptr %729, align 4, !tbaa !10
  %731 = load float, ptr %rec, align 4, !tbaa !10
  %732 = load float, ptr %xmax, align 4, !tbaa !10
  %mul932 = fmul float %732, %731
  store float %mul932, ptr %xmax, align 4, !tbaa !10
  br label %if.end933

if.end933:                                        ; preds = %if.then926, %if.then922
  %733 = load float, ptr %tjjs, align 4, !tbaa !10
  %734 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %735 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom934 = sext i32 %735 to i64
  %arrayidx935 = getelementptr inbounds float, ptr %734, i64 %idxprom934
  %736 = load float, ptr %arrayidx935, align 4, !tbaa !10
  %div936 = fdiv float %736, %733
  store float %div936, ptr %arrayidx935, align 4, !tbaa !10
  br label %if.end949

if.else937:                                       ; preds = %if.else919
  %737 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %738 = load i32, ptr %737, align 4, !tbaa !8
  store i32 %738, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond938

for.cond938:                                      ; preds = %for.inc944, %if.else937
  %739 = load i32, ptr %i__, align 4, !tbaa !8
  %740 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp939 = icmp sle i32 %739, %740
  br i1 %cmp939, label %for.body941, label %for.end946

for.body941:                                      ; preds = %for.cond938
  %741 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %742 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom942 = sext i32 %742 to i64
  %arrayidx943 = getelementptr inbounds float, ptr %741, i64 %idxprom942
  store float 0.000000e+00, ptr %arrayidx943, align 4, !tbaa !10
  br label %for.inc944

for.inc944:                                       ; preds = %for.body941
  %743 = load i32, ptr %i__, align 4, !tbaa !8
  %inc945 = add nsw i32 %743, 1
  store i32 %inc945, ptr %i__, align 4, !tbaa !8
  br label %for.cond938, !llvm.loop !28

for.end946:                                       ; preds = %for.cond938
  %744 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %745 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom947 = sext i32 %745 to i64
  %arrayidx948 = getelementptr inbounds float, ptr %744, i64 %idxprom947
  store float 1.000000e+00, ptr %arrayidx948, align 4, !tbaa !10
  %746 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  store float 0.000000e+00, ptr %746, align 4, !tbaa !10
  store float 0.000000e+00, ptr %xmax, align 4, !tbaa !10
  br label %if.end949

if.end949:                                        ; preds = %for.end946, %if.end933
  br label %if.end950

if.end950:                                        ; preds = %if.end949, %if.end915
  br label %L135

L135:                                             ; preds = %if.end950, %if.then889
  br label %if.end958

if.else951:                                       ; preds = %if.end863
  %747 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %748 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom952 = sext i32 %748 to i64
  %arrayidx953 = getelementptr inbounds float, ptr %747, i64 %idxprom952
  %749 = load float, ptr %arrayidx953, align 4, !tbaa !10
  %750 = load float, ptr %tjjs, align 4, !tbaa !10
  %div954 = fdiv float %749, %750
  %751 = load float, ptr %sumj, align 4, !tbaa !10
  %sub955 = fsub float %div954, %751
  %752 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %753 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom956 = sext i32 %753 to i64
  %arrayidx957 = getelementptr inbounds float, ptr %752, i64 %idxprom956
  store float %sub955, ptr %arrayidx957, align 4, !tbaa !10
  br label %if.end958

if.end958:                                        ; preds = %if.else951, %L135
  %754 = load float, ptr %xmax, align 4, !tbaa !10
  store float %754, ptr %r__2, align 4, !tbaa !10
  %755 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %756 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom959 = sext i32 %756 to i64
  %arrayidx960 = getelementptr inbounds float, ptr %755, i64 %idxprom959
  %757 = load float, ptr %arrayidx960, align 4, !tbaa !10
  store float %757, ptr %r__1, align 4, !tbaa !10
  %758 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp961 = fcmp oge float %758, 0.000000e+00
  br i1 %cmp961, label %cond.true963, label %cond.false964

cond.true963:                                     ; preds = %if.end958
  %759 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end966

cond.false964:                                    ; preds = %if.end958
  %760 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg965 = fneg float %760
  br label %cond.end966

cond.end966:                                      ; preds = %cond.false964, %cond.true963
  %cond967 = phi float [ %759, %cond.true963 ], [ %fneg965, %cond.false964 ]
  store float %cond967, ptr %r__3, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x968) #4
  %761 = load float, ptr %r__2, align 4, !tbaa !10
  store float %761, ptr %_x968, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y969) #4
  %762 = load float, ptr %r__3, align 4, !tbaa !10
  store float %762, ptr %_y969, align 4, !tbaa !10
  %763 = load float, ptr %_x968, align 4, !tbaa !10
  %764 = load float, ptr %_y969, align 4, !tbaa !10
  %cmp971 = fcmp ogt float %763, %764
  br i1 %cmp971, label %cond.true973, label %cond.false974

cond.true973:                                     ; preds = %cond.end966
  %765 = load float, ptr %_x968, align 4, !tbaa !10
  br label %cond.end975

cond.false974:                                    ; preds = %cond.end966
  %766 = load float, ptr %_y969, align 4, !tbaa !10
  br label %cond.end975

cond.end975:                                      ; preds = %cond.false974, %cond.true973
  %cond976 = phi float [ %765, %cond.true973 ], [ %766, %cond.false974 ]
  store float %cond976, ptr %tmp970, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y969) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x968) #4
  %767 = load float, ptr %tmp970, align 4, !tbaa !10
  store float %767, ptr %xmax, align 4, !tbaa !10
  br label %for.inc977

for.inc977:                                       ; preds = %cond.end975
  %768 = load i32, ptr %i__1, align 4, !tbaa !8
  %769 = load i32, ptr %j, align 4, !tbaa !8
  %add978 = add nsw i32 %769, %768
  store i32 %add978, ptr %j, align 4, !tbaa !8
  br label %for.cond714, !llvm.loop !29

for.end979:                                       ; preds = %cond.end723
  br label %if.end980

if.end980:                                        ; preds = %for.end979, %for.end712
  %770 = load float, ptr %tscal, align 4, !tbaa !10
  %771 = load ptr, ptr %scale.addr, align 8, !tbaa !4
  %772 = load float, ptr %771, align 4, !tbaa !10
  %div981 = fdiv float %772, %770
  store float %div981, ptr %771, align 4, !tbaa !10
  br label %if.end982

if.end982:                                        ; preds = %if.end980, %if.then481
  %773 = load float, ptr %tscal, align 4, !tbaa !10
  %cmp983 = fcmp une float %773, 1.000000e+00
  br i1 %cmp983, label %if.then985, label %if.end989

if.then985:                                       ; preds = %if.end982
  %774 = load float, ptr %tscal, align 4, !tbaa !10
  %div986 = fdiv float 1.000000e+00, %774
  store float %div986, ptr %r__1, align 4, !tbaa !10
  %775 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %776 = load ptr, ptr %cnorm.addr, align 8, !tbaa !4
  %arrayidx987 = getelementptr inbounds float, ptr %776, i64 1
  %call988 = call i32 @sscal_(ptr noundef %775, ptr noundef %r__1, ptr noundef %arrayidx987, ptr noundef @c__1)
  br label %if.end989

if.end989:                                        ; preds = %if.then985, %if.end982
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end989, %if.else207, %if.then43, %if.then39
  call void @llvm.lifetime.end.p0(i64 4, ptr %nounit) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %smlnum) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jfirst) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %notran) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bignum) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jlast) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %uscal) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tscal) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sumj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %grow) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %xmax) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tjjs) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmax) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %imax) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %xbnd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jinc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tjj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rec) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %xj) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #4
  %777 = load i32, ptr %retval, align 4
  ret i32 %777
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare float @slamch_(ptr noundef) #2

declare float @sasum_(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @isamax_(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @sscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare float @slange_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare i32 @strsv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @saxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare float @sdot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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

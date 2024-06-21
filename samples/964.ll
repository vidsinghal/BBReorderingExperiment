; ModuleID = 'samples/964.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/zla_porcond_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ZLA_PORCOND_X\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define double @zla_porcond_x_(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %af, ptr noundef %ldaf, ptr noundef %x, ptr noundef %info, ptr noundef %work, ptr noundef %rwork) #0 {
entry:
  %retval = alloca double, align 8
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %af.addr = alloca ptr, align 8
  %ldaf.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %rwork.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %af_dim1 = alloca i32, align 4
  %af_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %ret_val = alloca double, align 8
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %z__1 = alloca %struct.doublecomplex, align 8
  %z__2 = alloca %struct.doublecomplex, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %up = alloca i32, align 4
  %tmp = alloca double, align 8
  %kase = alloca i32, align 4
  %isave = alloca [3 x i32], align 4
  %anorm = alloca double, align 8
  %upper = alloca i32, align 4
  %ainvnm = alloca double, align 8
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %_x16 = alloca i32, align 4
  %_y17 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x151 = alloca double, align 8
  %_y152 = alloca double, align 8
  %tmp153 = alloca double, align 8
  %_x287 = alloca double, align 8
  %_y288 = alloca double, align 8
  %tmp289 = alloca double, align 8
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %af, ptr %af.addr, align 8, !tbaa !4
  store ptr %ldaf, ptr %ldaf.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %rwork, ptr %rwork.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %af_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %af_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_val) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__2) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__1) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %up) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kase) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr %isave) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %anorm) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ainvnm) #4
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
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ldaf.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %af_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %af_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %af_offset, align 4, !tbaa !8
  %8 = load i32, ptr %af_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %af.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %af.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.doublecomplex, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %x.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds %struct.doublecomplex, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %work.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds double, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %rwork.addr, align 8, !tbaa !4
  store double 0.000000e+00, ptr %ret_val, align 8, !tbaa !10
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %13, align 4, !tbaa !8
  %14 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %14, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4, !tbaa !8
  %15 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %16 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call7 = call i32 @lsame_(ptr noundef %16, ptr noundef @.str.1)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %17, align 4, !tbaa !8
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %19 = load i32, ptr %18, align 4, !tbaa !8
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else
  %20 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %20, align 4, !tbaa !8
  br label %if.end27

if.else10:                                        ; preds = %if.else
  %21 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #4
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #4
  %23 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  store i32 %24, ptr %_y, align 4, !tbaa !8
  %25 = load i32, ptr %_x, align 4, !tbaa !8
  %26 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp12 = icmp sgt i32 %25, %26
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else10
  %27 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else10
  %28 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %28, %cond.false ]
  store i32 %cond, ptr %tmp11, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #4
  %29 = load i32, ptr %tmp11, align 4, !tbaa !8
  %cmp13 = icmp slt i32 %22, %29
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %cond.end
  %30 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %30, align 4, !tbaa !8
  br label %if.end26

if.else15:                                        ; preds = %cond.end
  %31 = load ptr, ptr %ldaf.addr, align 8, !tbaa !4
  %32 = load i32, ptr %31, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x16) #4
  store i32 1, ptr %_x16, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y17) #4
  %33 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %34 = load i32, ptr %33, align 4, !tbaa !8
  store i32 %34, ptr %_y17, align 4, !tbaa !8
  %35 = load i32, ptr %_x16, align 4, !tbaa !8
  %36 = load i32, ptr %_y17, align 4, !tbaa !8
  %cmp19 = icmp sgt i32 %35, %36
  br i1 %cmp19, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %if.else15
  %37 = load i32, ptr %_x16, align 4, !tbaa !8
  br label %cond.end22

cond.false21:                                     ; preds = %if.else15
  %38 = load i32, ptr %_y17, align 4, !tbaa !8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.true20
  %cond23 = phi i32 [ %37, %cond.true20 ], [ %38, %cond.false21 ]
  store i32 %cond23, ptr %tmp18, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y17) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x16) #4
  %39 = load i32, ptr %tmp18, align 4, !tbaa !8
  %cmp24 = icmp slt i32 %32, %39
  br i1 %cmp24, label %if.then25, label %if.end

if.then25:                                        ; preds = %cond.end22
  %40 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -6, ptr %40, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then25, %cond.end22
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then14
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then9
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then
  %41 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %42 = load i32, ptr %41, align 4, !tbaa !8
  %cmp29 = icmp ne i32 %42, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end28
  %43 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %44 = load i32, ptr %43, align 4, !tbaa !8
  %sub = sub nsw i32 0, %44
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call31 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  %45 = load double, ptr %ret_val, align 8, !tbaa !10
  store double %45, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  store i32 0, ptr %up, align 4, !tbaa !8
  %46 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call33 = call i32 @lsame_(ptr noundef %46, ptr noundef @.str)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  store i32 1, ptr %up, align 4, !tbaa !8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32
  store double 0.000000e+00, ptr %anorm, align 8, !tbaa !10
  %47 = load i32, ptr %up, align 4, !tbaa !8
  %tobool37 = icmp ne i32 %47, 0
  br i1 %tobool37, label %if.then38, label %if.else162

if.then38:                                        ; preds = %if.end36
  %48 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %49 = load i32, ptr %48, align 4, !tbaa !8
  store i32 %49, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc159, %if.then38
  %50 = load i32, ptr %i__, align 4, !tbaa !8
  %51 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp39 = icmp sle i32 %50, %51
  br i1 %cmp39, label %for.body, label %for.end161

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, ptr %tmp, align 8, !tbaa !10
  %52 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %52, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc, %for.body
  %53 = load i32, ptr %j, align 4, !tbaa !8
  %54 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp41 = icmp sle i32 %53, %54
  br i1 %cmp41, label %for.body42, label %for.end

for.body42:                                       ; preds = %for.cond40
  %55 = load i32, ptr %j, align 4, !tbaa !8
  %56 = load i32, ptr %i__, align 4, !tbaa !8
  %57 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %56, %57
  %add43 = add nsw i32 %55, %mul
  store i32 %add43, ptr %i__3, align 4, !tbaa !8
  %58 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %58, ptr %i__4, align 4, !tbaa !8
  %59 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %60 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom = sext i32 %60 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %59, i64 %idxprom
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  %61 = load double, ptr %r, align 8, !tbaa !12
  %62 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %63 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom44 = sext i32 %63 to i64
  %arrayidx45 = getelementptr inbounds %struct.doublecomplex, ptr %62, i64 %idxprom44
  %r46 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx45, i32 0, i32 0
  %64 = load double, ptr %r46, align 8, !tbaa !12
  %65 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %66 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom48 = sext i32 %66 to i64
  %arrayidx49 = getelementptr inbounds %struct.doublecomplex, ptr %65, i64 %idxprom48
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx49, i32 0, i32 1
  %67 = load double, ptr %i, align 8, !tbaa !14
  %68 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %69 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom50 = sext i32 %69 to i64
  %arrayidx51 = getelementptr inbounds %struct.doublecomplex, ptr %68, i64 %idxprom50
  %i52 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx51, i32 0, i32 1
  %70 = load double, ptr %i52, align 8, !tbaa !14
  %mul53 = fmul double %67, %70
  %neg = fneg double %mul53
  %71 = call double @llvm.fmuladd.f64(double %61, double %64, double %neg)
  %r54 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %71, ptr %r54, align 8, !tbaa !12
  %72 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %73 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom55 = sext i32 %73 to i64
  %arrayidx56 = getelementptr inbounds %struct.doublecomplex, ptr %72, i64 %idxprom55
  %r57 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx56, i32 0, i32 0
  %74 = load double, ptr %r57, align 8, !tbaa !12
  %75 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %76 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom58 = sext i32 %76 to i64
  %arrayidx59 = getelementptr inbounds %struct.doublecomplex, ptr %75, i64 %idxprom58
  %i60 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx59, i32 0, i32 1
  %77 = load double, ptr %i60, align 8, !tbaa !14
  %78 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %79 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom62 = sext i32 %79 to i64
  %arrayidx63 = getelementptr inbounds %struct.doublecomplex, ptr %78, i64 %idxprom62
  %i64 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx63, i32 0, i32 1
  %80 = load double, ptr %i64, align 8, !tbaa !14
  %81 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %82 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom65 = sext i32 %82 to i64
  %arrayidx66 = getelementptr inbounds %struct.doublecomplex, ptr %81, i64 %idxprom65
  %r67 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx66, i32 0, i32 0
  %83 = load double, ptr %r67, align 8, !tbaa !12
  %mul68 = fmul double %80, %83
  %84 = call double @llvm.fmuladd.f64(double %74, double %77, double %mul68)
  %i69 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %84, ptr %i69, align 8, !tbaa !14
  %r70 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %85 = load double, ptr %r70, align 8, !tbaa !12
  %r71 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %85, ptr %r71, align 8, !tbaa !12
  %i72 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %86 = load double, ptr %i72, align 8, !tbaa !14
  %i73 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %86, ptr %i73, align 8, !tbaa !14
  %r74 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %87 = load double, ptr %r74, align 8, !tbaa !12
  store double %87, ptr %d__1, align 8, !tbaa !10
  %88 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp75 = fcmp oge double %88, 0.000000e+00
  br i1 %cmp75, label %cond.true76, label %cond.false77

cond.true76:                                      ; preds = %for.body42
  %89 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end78

cond.false77:                                     ; preds = %for.body42
  %90 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg = fneg double %90
  br label %cond.end78

cond.end78:                                       ; preds = %cond.false77, %cond.true76
  %cond79 = phi double [ %89, %cond.true76 ], [ %fneg, %cond.false77 ]
  %call80 = call double @d_imag(ptr noundef %z__1)
  store double %call80, ptr %d__2, align 8, !tbaa !10
  %91 = load double, ptr %d__2, align 8, !tbaa !10
  %cmp81 = fcmp oge double %91, 0.000000e+00
  br i1 %cmp81, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %cond.end78
  %92 = load double, ptr %d__2, align 8, !tbaa !10
  br label %cond.end85

cond.false83:                                     ; preds = %cond.end78
  %93 = load double, ptr %d__2, align 8, !tbaa !10
  %fneg84 = fneg double %93
  br label %cond.end85

cond.end85:                                       ; preds = %cond.false83, %cond.true82
  %cond86 = phi double [ %92, %cond.true82 ], [ %fneg84, %cond.false83 ]
  %add87 = fadd double %cond79, %cond86
  %94 = load double, ptr %tmp, align 8, !tbaa !10
  %add88 = fadd double %94, %add87
  store double %add88, ptr %tmp, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %cond.end85
  %95 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %95, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond40, !llvm.loop !15

for.end:                                          ; preds = %for.cond40
  %96 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %97 = load i32, ptr %96, align 4, !tbaa !8
  store i32 %97, ptr %i__2, align 4, !tbaa !8
  %98 = load i32, ptr %i__, align 4, !tbaa !8
  %add89 = add nsw i32 %98, 1
  store i32 %add89, ptr %j, align 4, !tbaa !8
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc146, %for.end
  %99 = load i32, ptr %j, align 4, !tbaa !8
  %100 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp91 = icmp sle i32 %99, %100
  br i1 %cmp91, label %for.body92, label %for.end148

for.body92:                                       ; preds = %for.cond90
  %101 = load i32, ptr %i__, align 4, !tbaa !8
  %102 = load i32, ptr %j, align 4, !tbaa !8
  %103 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul93 = mul nsw i32 %102, %103
  %add94 = add nsw i32 %101, %mul93
  store i32 %add94, ptr %i__3, align 4, !tbaa !8
  %104 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %104, ptr %i__4, align 4, !tbaa !8
  %105 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %106 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom95 = sext i32 %106 to i64
  %arrayidx96 = getelementptr inbounds %struct.doublecomplex, ptr %105, i64 %idxprom95
  %r97 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx96, i32 0, i32 0
  %107 = load double, ptr %r97, align 8, !tbaa !12
  %108 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %109 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom98 = sext i32 %109 to i64
  %arrayidx99 = getelementptr inbounds %struct.doublecomplex, ptr %108, i64 %idxprom98
  %r100 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx99, i32 0, i32 0
  %110 = load double, ptr %r100, align 8, !tbaa !12
  %111 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %112 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom102 = sext i32 %112 to i64
  %arrayidx103 = getelementptr inbounds %struct.doublecomplex, ptr %111, i64 %idxprom102
  %i104 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx103, i32 0, i32 1
  %113 = load double, ptr %i104, align 8, !tbaa !14
  %114 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %115 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom105 = sext i32 %115 to i64
  %arrayidx106 = getelementptr inbounds %struct.doublecomplex, ptr %114, i64 %idxprom105
  %i107 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx106, i32 0, i32 1
  %116 = load double, ptr %i107, align 8, !tbaa !14
  %mul108 = fmul double %113, %116
  %neg109 = fneg double %mul108
  %117 = call double @llvm.fmuladd.f64(double %107, double %110, double %neg109)
  %r110 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %117, ptr %r110, align 8, !tbaa !12
  %118 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %119 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom111 = sext i32 %119 to i64
  %arrayidx112 = getelementptr inbounds %struct.doublecomplex, ptr %118, i64 %idxprom111
  %r113 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx112, i32 0, i32 0
  %120 = load double, ptr %r113, align 8, !tbaa !12
  %121 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %122 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom114 = sext i32 %122 to i64
  %arrayidx115 = getelementptr inbounds %struct.doublecomplex, ptr %121, i64 %idxprom114
  %i116 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx115, i32 0, i32 1
  %123 = load double, ptr %i116, align 8, !tbaa !14
  %124 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %125 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom118 = sext i32 %125 to i64
  %arrayidx119 = getelementptr inbounds %struct.doublecomplex, ptr %124, i64 %idxprom118
  %i120 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx119, i32 0, i32 1
  %126 = load double, ptr %i120, align 8, !tbaa !14
  %127 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %128 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom121 = sext i32 %128 to i64
  %arrayidx122 = getelementptr inbounds %struct.doublecomplex, ptr %127, i64 %idxprom121
  %r123 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx122, i32 0, i32 0
  %129 = load double, ptr %r123, align 8, !tbaa !12
  %mul124 = fmul double %126, %129
  %130 = call double @llvm.fmuladd.f64(double %120, double %123, double %mul124)
  %i125 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %130, ptr %i125, align 8, !tbaa !14
  %r126 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %131 = load double, ptr %r126, align 8, !tbaa !12
  %r127 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %131, ptr %r127, align 8, !tbaa !12
  %i128 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %132 = load double, ptr %i128, align 8, !tbaa !14
  %i129 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %132, ptr %i129, align 8, !tbaa !14
  %r130 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %133 = load double, ptr %r130, align 8, !tbaa !12
  store double %133, ptr %d__1, align 8, !tbaa !10
  %134 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp131 = fcmp oge double %134, 0.000000e+00
  br i1 %cmp131, label %cond.true132, label %cond.false133

cond.true132:                                     ; preds = %for.body92
  %135 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end135

cond.false133:                                    ; preds = %for.body92
  %136 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg134 = fneg double %136
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false133, %cond.true132
  %cond136 = phi double [ %135, %cond.true132 ], [ %fneg134, %cond.false133 ]
  %call137 = call double @d_imag(ptr noundef %z__1)
  store double %call137, ptr %d__2, align 8, !tbaa !10
  %137 = load double, ptr %d__2, align 8, !tbaa !10
  %cmp138 = fcmp oge double %137, 0.000000e+00
  br i1 %cmp138, label %cond.true139, label %cond.false140

cond.true139:                                     ; preds = %cond.end135
  %138 = load double, ptr %d__2, align 8, !tbaa !10
  br label %cond.end142

cond.false140:                                    ; preds = %cond.end135
  %139 = load double, ptr %d__2, align 8, !tbaa !10
  %fneg141 = fneg double %139
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false140, %cond.true139
  %cond143 = phi double [ %138, %cond.true139 ], [ %fneg141, %cond.false140 ]
  %add144 = fadd double %cond136, %cond143
  %140 = load double, ptr %tmp, align 8, !tbaa !10
  %add145 = fadd double %140, %add144
  store double %add145, ptr %tmp, align 8, !tbaa !10
  br label %for.inc146

for.inc146:                                       ; preds = %cond.end142
  %141 = load i32, ptr %j, align 4, !tbaa !8
  %inc147 = add nsw i32 %141, 1
  store i32 %inc147, ptr %j, align 4, !tbaa !8
  br label %for.cond90, !llvm.loop !17

for.end148:                                       ; preds = %for.cond90
  %142 = load double, ptr %tmp, align 8, !tbaa !10
  %143 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %144 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom149 = sext i32 %144 to i64
  %arrayidx150 = getelementptr inbounds double, ptr %143, i64 %idxprom149
  store double %142, ptr %arrayidx150, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %_x151) #4
  %145 = load double, ptr %anorm, align 8, !tbaa !10
  store double %145, ptr %_x151, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %_y152) #4
  %146 = load double, ptr %tmp, align 8, !tbaa !10
  store double %146, ptr %_y152, align 8, !tbaa !10
  %147 = load double, ptr %_x151, align 8, !tbaa !10
  %148 = load double, ptr %_y152, align 8, !tbaa !10
  %cmp154 = fcmp ogt double %147, %148
  br i1 %cmp154, label %cond.true155, label %cond.false156

cond.true155:                                     ; preds = %for.end148
  %149 = load double, ptr %_x151, align 8, !tbaa !10
  br label %cond.end157

cond.false156:                                    ; preds = %for.end148
  %150 = load double, ptr %_y152, align 8, !tbaa !10
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false156, %cond.true155
  %cond158 = phi double [ %149, %cond.true155 ], [ %150, %cond.false156 ]
  store double %cond158, ptr %tmp153, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %_y152) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_x151) #4
  %151 = load double, ptr %tmp153, align 8, !tbaa !10
  store double %151, ptr %anorm, align 8, !tbaa !10
  br label %for.inc159

for.inc159:                                       ; preds = %cond.end157
  %152 = load i32, ptr %i__, align 4, !tbaa !8
  %inc160 = add nsw i32 %152, 1
  store i32 %inc160, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !18

for.end161:                                       ; preds = %for.cond
  br label %if.end298

if.else162:                                       ; preds = %if.end36
  %153 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %154 = load i32, ptr %153, align 4, !tbaa !8
  store i32 %154, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc295, %if.else162
  %155 = load i32, ptr %i__, align 4, !tbaa !8
  %156 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp164 = icmp sle i32 %155, %156
  br i1 %cmp164, label %for.body165, label %for.end297

for.body165:                                      ; preds = %for.cond163
  store double 0.000000e+00, ptr %tmp, align 8, !tbaa !10
  %157 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %157, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc222, %for.body165
  %158 = load i32, ptr %j, align 4, !tbaa !8
  %159 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp167 = icmp sle i32 %158, %159
  br i1 %cmp167, label %for.body168, label %for.end224

for.body168:                                      ; preds = %for.cond166
  %160 = load i32, ptr %i__, align 4, !tbaa !8
  %161 = load i32, ptr %j, align 4, !tbaa !8
  %162 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul169 = mul nsw i32 %161, %162
  %add170 = add nsw i32 %160, %mul169
  store i32 %add170, ptr %i__3, align 4, !tbaa !8
  %163 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %163, ptr %i__4, align 4, !tbaa !8
  %164 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %165 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom171 = sext i32 %165 to i64
  %arrayidx172 = getelementptr inbounds %struct.doublecomplex, ptr %164, i64 %idxprom171
  %r173 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx172, i32 0, i32 0
  %166 = load double, ptr %r173, align 8, !tbaa !12
  %167 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %168 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom174 = sext i32 %168 to i64
  %arrayidx175 = getelementptr inbounds %struct.doublecomplex, ptr %167, i64 %idxprom174
  %r176 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx175, i32 0, i32 0
  %169 = load double, ptr %r176, align 8, !tbaa !12
  %170 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %171 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom178 = sext i32 %171 to i64
  %arrayidx179 = getelementptr inbounds %struct.doublecomplex, ptr %170, i64 %idxprom178
  %i180 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx179, i32 0, i32 1
  %172 = load double, ptr %i180, align 8, !tbaa !14
  %173 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %174 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom181 = sext i32 %174 to i64
  %arrayidx182 = getelementptr inbounds %struct.doublecomplex, ptr %173, i64 %idxprom181
  %i183 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx182, i32 0, i32 1
  %175 = load double, ptr %i183, align 8, !tbaa !14
  %mul184 = fmul double %172, %175
  %neg185 = fneg double %mul184
  %176 = call double @llvm.fmuladd.f64(double %166, double %169, double %neg185)
  %r186 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %176, ptr %r186, align 8, !tbaa !12
  %177 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %178 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom187 = sext i32 %178 to i64
  %arrayidx188 = getelementptr inbounds %struct.doublecomplex, ptr %177, i64 %idxprom187
  %r189 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx188, i32 0, i32 0
  %179 = load double, ptr %r189, align 8, !tbaa !12
  %180 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %181 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom190 = sext i32 %181 to i64
  %arrayidx191 = getelementptr inbounds %struct.doublecomplex, ptr %180, i64 %idxprom190
  %i192 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx191, i32 0, i32 1
  %182 = load double, ptr %i192, align 8, !tbaa !14
  %183 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %184 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom194 = sext i32 %184 to i64
  %arrayidx195 = getelementptr inbounds %struct.doublecomplex, ptr %183, i64 %idxprom194
  %i196 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx195, i32 0, i32 1
  %185 = load double, ptr %i196, align 8, !tbaa !14
  %186 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %187 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom197 = sext i32 %187 to i64
  %arrayidx198 = getelementptr inbounds %struct.doublecomplex, ptr %186, i64 %idxprom197
  %r199 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx198, i32 0, i32 0
  %188 = load double, ptr %r199, align 8, !tbaa !12
  %mul200 = fmul double %185, %188
  %189 = call double @llvm.fmuladd.f64(double %179, double %182, double %mul200)
  %i201 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %189, ptr %i201, align 8, !tbaa !14
  %r202 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %190 = load double, ptr %r202, align 8, !tbaa !12
  %r203 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %190, ptr %r203, align 8, !tbaa !12
  %i204 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %191 = load double, ptr %i204, align 8, !tbaa !14
  %i205 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %191, ptr %i205, align 8, !tbaa !14
  %r206 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %192 = load double, ptr %r206, align 8, !tbaa !12
  store double %192, ptr %d__1, align 8, !tbaa !10
  %193 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp207 = fcmp oge double %193, 0.000000e+00
  br i1 %cmp207, label %cond.true208, label %cond.false209

cond.true208:                                     ; preds = %for.body168
  %194 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end211

cond.false209:                                    ; preds = %for.body168
  %195 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg210 = fneg double %195
  br label %cond.end211

cond.end211:                                      ; preds = %cond.false209, %cond.true208
  %cond212 = phi double [ %194, %cond.true208 ], [ %fneg210, %cond.false209 ]
  %call213 = call double @d_imag(ptr noundef %z__1)
  store double %call213, ptr %d__2, align 8, !tbaa !10
  %196 = load double, ptr %d__2, align 8, !tbaa !10
  %cmp214 = fcmp oge double %196, 0.000000e+00
  br i1 %cmp214, label %cond.true215, label %cond.false216

cond.true215:                                     ; preds = %cond.end211
  %197 = load double, ptr %d__2, align 8, !tbaa !10
  br label %cond.end218

cond.false216:                                    ; preds = %cond.end211
  %198 = load double, ptr %d__2, align 8, !tbaa !10
  %fneg217 = fneg double %198
  br label %cond.end218

cond.end218:                                      ; preds = %cond.false216, %cond.true215
  %cond219 = phi double [ %197, %cond.true215 ], [ %fneg217, %cond.false216 ]
  %add220 = fadd double %cond212, %cond219
  %199 = load double, ptr %tmp, align 8, !tbaa !10
  %add221 = fadd double %199, %add220
  store double %add221, ptr %tmp, align 8, !tbaa !10
  br label %for.inc222

for.inc222:                                       ; preds = %cond.end218
  %200 = load i32, ptr %j, align 4, !tbaa !8
  %inc223 = add nsw i32 %200, 1
  store i32 %inc223, ptr %j, align 4, !tbaa !8
  br label %for.cond166, !llvm.loop !19

for.end224:                                       ; preds = %for.cond166
  %201 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %202 = load i32, ptr %201, align 4, !tbaa !8
  store i32 %202, ptr %i__2, align 4, !tbaa !8
  %203 = load i32, ptr %i__, align 4, !tbaa !8
  %add225 = add nsw i32 %203, 1
  store i32 %add225, ptr %j, align 4, !tbaa !8
  br label %for.cond226

for.cond226:                                      ; preds = %for.inc282, %for.end224
  %204 = load i32, ptr %j, align 4, !tbaa !8
  %205 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp227 = icmp sle i32 %204, %205
  br i1 %cmp227, label %for.body228, label %for.end284

for.body228:                                      ; preds = %for.cond226
  %206 = load i32, ptr %j, align 4, !tbaa !8
  %207 = load i32, ptr %i__, align 4, !tbaa !8
  %208 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul229 = mul nsw i32 %207, %208
  %add230 = add nsw i32 %206, %mul229
  store i32 %add230, ptr %i__3, align 4, !tbaa !8
  %209 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %209, ptr %i__4, align 4, !tbaa !8
  %210 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %211 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom231 = sext i32 %211 to i64
  %arrayidx232 = getelementptr inbounds %struct.doublecomplex, ptr %210, i64 %idxprom231
  %r233 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx232, i32 0, i32 0
  %212 = load double, ptr %r233, align 8, !tbaa !12
  %213 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %214 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom234 = sext i32 %214 to i64
  %arrayidx235 = getelementptr inbounds %struct.doublecomplex, ptr %213, i64 %idxprom234
  %r236 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx235, i32 0, i32 0
  %215 = load double, ptr %r236, align 8, !tbaa !12
  %216 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %217 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom238 = sext i32 %217 to i64
  %arrayidx239 = getelementptr inbounds %struct.doublecomplex, ptr %216, i64 %idxprom238
  %i240 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx239, i32 0, i32 1
  %218 = load double, ptr %i240, align 8, !tbaa !14
  %219 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %220 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom241 = sext i32 %220 to i64
  %arrayidx242 = getelementptr inbounds %struct.doublecomplex, ptr %219, i64 %idxprom241
  %i243 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx242, i32 0, i32 1
  %221 = load double, ptr %i243, align 8, !tbaa !14
  %mul244 = fmul double %218, %221
  %neg245 = fneg double %mul244
  %222 = call double @llvm.fmuladd.f64(double %212, double %215, double %neg245)
  %r246 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %222, ptr %r246, align 8, !tbaa !12
  %223 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %224 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom247 = sext i32 %224 to i64
  %arrayidx248 = getelementptr inbounds %struct.doublecomplex, ptr %223, i64 %idxprom247
  %r249 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx248, i32 0, i32 0
  %225 = load double, ptr %r249, align 8, !tbaa !12
  %226 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %227 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom250 = sext i32 %227 to i64
  %arrayidx251 = getelementptr inbounds %struct.doublecomplex, ptr %226, i64 %idxprom250
  %i252 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx251, i32 0, i32 1
  %228 = load double, ptr %i252, align 8, !tbaa !14
  %229 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %230 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom254 = sext i32 %230 to i64
  %arrayidx255 = getelementptr inbounds %struct.doublecomplex, ptr %229, i64 %idxprom254
  %i256 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx255, i32 0, i32 1
  %231 = load double, ptr %i256, align 8, !tbaa !14
  %232 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %233 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom257 = sext i32 %233 to i64
  %arrayidx258 = getelementptr inbounds %struct.doublecomplex, ptr %232, i64 %idxprom257
  %r259 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx258, i32 0, i32 0
  %234 = load double, ptr %r259, align 8, !tbaa !12
  %mul260 = fmul double %231, %234
  %235 = call double @llvm.fmuladd.f64(double %225, double %228, double %mul260)
  %i261 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %235, ptr %i261, align 8, !tbaa !14
  %r262 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %236 = load double, ptr %r262, align 8, !tbaa !12
  %r263 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %236, ptr %r263, align 8, !tbaa !12
  %i264 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %237 = load double, ptr %i264, align 8, !tbaa !14
  %i265 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %237, ptr %i265, align 8, !tbaa !14
  %r266 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %238 = load double, ptr %r266, align 8, !tbaa !12
  store double %238, ptr %d__1, align 8, !tbaa !10
  %239 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp267 = fcmp oge double %239, 0.000000e+00
  br i1 %cmp267, label %cond.true268, label %cond.false269

cond.true268:                                     ; preds = %for.body228
  %240 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end271

cond.false269:                                    ; preds = %for.body228
  %241 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg270 = fneg double %241
  br label %cond.end271

cond.end271:                                      ; preds = %cond.false269, %cond.true268
  %cond272 = phi double [ %240, %cond.true268 ], [ %fneg270, %cond.false269 ]
  %call273 = call double @d_imag(ptr noundef %z__1)
  store double %call273, ptr %d__2, align 8, !tbaa !10
  %242 = load double, ptr %d__2, align 8, !tbaa !10
  %cmp274 = fcmp oge double %242, 0.000000e+00
  br i1 %cmp274, label %cond.true275, label %cond.false276

cond.true275:                                     ; preds = %cond.end271
  %243 = load double, ptr %d__2, align 8, !tbaa !10
  br label %cond.end278

cond.false276:                                    ; preds = %cond.end271
  %244 = load double, ptr %d__2, align 8, !tbaa !10
  %fneg277 = fneg double %244
  br label %cond.end278

cond.end278:                                      ; preds = %cond.false276, %cond.true275
  %cond279 = phi double [ %243, %cond.true275 ], [ %fneg277, %cond.false276 ]
  %add280 = fadd double %cond272, %cond279
  %245 = load double, ptr %tmp, align 8, !tbaa !10
  %add281 = fadd double %245, %add280
  store double %add281, ptr %tmp, align 8, !tbaa !10
  br label %for.inc282

for.inc282:                                       ; preds = %cond.end278
  %246 = load i32, ptr %j, align 4, !tbaa !8
  %inc283 = add nsw i32 %246, 1
  store i32 %inc283, ptr %j, align 4, !tbaa !8
  br label %for.cond226, !llvm.loop !20

for.end284:                                       ; preds = %for.cond226
  %247 = load double, ptr %tmp, align 8, !tbaa !10
  %248 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %249 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom285 = sext i32 %249 to i64
  %arrayidx286 = getelementptr inbounds double, ptr %248, i64 %idxprom285
  store double %247, ptr %arrayidx286, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %_x287) #4
  %250 = load double, ptr %anorm, align 8, !tbaa !10
  store double %250, ptr %_x287, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %_y288) #4
  %251 = load double, ptr %tmp, align 8, !tbaa !10
  store double %251, ptr %_y288, align 8, !tbaa !10
  %252 = load double, ptr %_x287, align 8, !tbaa !10
  %253 = load double, ptr %_y288, align 8, !tbaa !10
  %cmp290 = fcmp ogt double %252, %253
  br i1 %cmp290, label %cond.true291, label %cond.false292

cond.true291:                                     ; preds = %for.end284
  %254 = load double, ptr %_x287, align 8, !tbaa !10
  br label %cond.end293

cond.false292:                                    ; preds = %for.end284
  %255 = load double, ptr %_y288, align 8, !tbaa !10
  br label %cond.end293

cond.end293:                                      ; preds = %cond.false292, %cond.true291
  %cond294 = phi double [ %254, %cond.true291 ], [ %255, %cond.false292 ]
  store double %cond294, ptr %tmp289, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %_y288) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %_x287) #4
  %256 = load double, ptr %tmp289, align 8, !tbaa !10
  store double %256, ptr %anorm, align 8, !tbaa !10
  br label %for.inc295

for.inc295:                                       ; preds = %cond.end293
  %257 = load i32, ptr %i__, align 4, !tbaa !8
  %inc296 = add nsw i32 %257, 1
  store i32 %inc296, ptr %i__, align 4, !tbaa !8
  br label %for.cond163, !llvm.loop !21

for.end297:                                       ; preds = %for.cond163
  br label %if.end298

if.end298:                                        ; preds = %for.end297, %for.end161
  %258 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %259 = load i32, ptr %258, align 4, !tbaa !8
  %cmp299 = icmp eq i32 %259, 0
  br i1 %cmp299, label %if.then300, label %if.else301

if.then300:                                       ; preds = %if.end298
  store double 1.000000e+00, ptr %ret_val, align 8, !tbaa !10
  %260 = load double, ptr %ret_val, align 8, !tbaa !10
  store double %260, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else301:                                       ; preds = %if.end298
  %261 = load double, ptr %anorm, align 8, !tbaa !10
  %cmp302 = fcmp oeq double %261, 0.000000e+00
  br i1 %cmp302, label %if.then303, label %if.end304

if.then303:                                       ; preds = %if.else301
  %262 = load double, ptr %ret_val, align 8, !tbaa !10
  store double %262, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end304:                                        ; preds = %if.else301
  br label %if.end305

if.end305:                                        ; preds = %if.end304
  store double 0.000000e+00, ptr %ainvnm, align 8, !tbaa !10
  store i32 0, ptr %kase, align 4, !tbaa !8
  br label %L10

L10:                                              ; preds = %if.end432, %if.end305
  %263 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %264 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %265 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %266 = load i32, ptr %265, align 4, !tbaa !8
  %add306 = add nsw i32 %266, 1
  %idxprom307 = sext i32 %add306 to i64
  %arrayidx308 = getelementptr inbounds %struct.doublecomplex, ptr %264, i64 %idxprom307
  %267 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx309 = getelementptr inbounds %struct.doublecomplex, ptr %267, i64 1
  %arraydecay = getelementptr inbounds [3 x i32], ptr %isave, i64 0, i64 0
  %call310 = call i32 @zlacn2_(ptr noundef %263, ptr noundef %arrayidx308, ptr noundef %arrayidx309, ptr noundef %ainvnm, ptr noundef %kase, ptr noundef %arraydecay)
  %268 = load i32, ptr %kase, align 4, !tbaa !8
  %cmp311 = icmp ne i32 %268, 0
  br i1 %cmp311, label %if.then312, label %if.end433

if.then312:                                       ; preds = %L10
  %269 = load i32, ptr %kase, align 4, !tbaa !8
  %cmp313 = icmp eq i32 %269, 2
  br i1 %cmp313, label %if.then314, label %if.else373

if.then314:                                       ; preds = %if.then312
  %270 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %271 = load i32, ptr %270, align 4, !tbaa !8
  store i32 %271, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond315

for.cond315:                                      ; preds = %for.inc340, %if.then314
  %272 = load i32, ptr %i__, align 4, !tbaa !8
  %273 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp316 = icmp sle i32 %272, %273
  br i1 %cmp316, label %for.body317, label %for.end342

for.body317:                                      ; preds = %for.cond315
  %274 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %274, ptr %i__2, align 4, !tbaa !8
  %275 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %275, ptr %i__3, align 4, !tbaa !8
  %276 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %276, ptr %i__4, align 4, !tbaa !8
  %277 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %278 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom318 = sext i32 %278 to i64
  %arrayidx319 = getelementptr inbounds double, ptr %277, i64 %idxprom318
  %279 = load double, ptr %arrayidx319, align 8, !tbaa !10
  %280 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %281 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom320 = sext i32 %281 to i64
  %arrayidx321 = getelementptr inbounds %struct.doublecomplex, ptr %280, i64 %idxprom320
  %r322 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx321, i32 0, i32 0
  %282 = load double, ptr %r322, align 8, !tbaa !12
  %mul323 = fmul double %279, %282
  %r324 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul323, ptr %r324, align 8, !tbaa !12
  %283 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %284 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom325 = sext i32 %284 to i64
  %arrayidx326 = getelementptr inbounds double, ptr %283, i64 %idxprom325
  %285 = load double, ptr %arrayidx326, align 8, !tbaa !10
  %286 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %287 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom327 = sext i32 %287 to i64
  %arrayidx328 = getelementptr inbounds %struct.doublecomplex, ptr %286, i64 %idxprom327
  %i329 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx328, i32 0, i32 1
  %288 = load double, ptr %i329, align 8, !tbaa !14
  %mul330 = fmul double %285, %288
  %i331 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul330, ptr %i331, align 8, !tbaa !14
  %r332 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %289 = load double, ptr %r332, align 8, !tbaa !12
  %290 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %291 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom333 = sext i32 %291 to i64
  %arrayidx334 = getelementptr inbounds %struct.doublecomplex, ptr %290, i64 %idxprom333
  %r335 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx334, i32 0, i32 0
  store double %289, ptr %r335, align 8, !tbaa !12
  %i336 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %292 = load double, ptr %i336, align 8, !tbaa !14
  %293 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %294 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom337 = sext i32 %294 to i64
  %arrayidx338 = getelementptr inbounds %struct.doublecomplex, ptr %293, i64 %idxprom337
  %i339 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx338, i32 0, i32 1
  store double %292, ptr %i339, align 8, !tbaa !14
  br label %for.inc340

for.inc340:                                       ; preds = %for.body317
  %295 = load i32, ptr %i__, align 4, !tbaa !8
  %inc341 = add nsw i32 %295, 1
  store i32 %inc341, ptr %i__, align 4, !tbaa !8
  br label %for.cond315, !llvm.loop !22

for.end342:                                       ; preds = %for.cond315
  %296 = load i32, ptr %up, align 4, !tbaa !8
  %tobool343 = icmp ne i32 %296, 0
  br i1 %tobool343, label %if.then344, label %if.else349

if.then344:                                       ; preds = %for.end342
  %297 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %298 = load ptr, ptr %af.addr, align 8, !tbaa !4
  %299 = load i32, ptr %af_offset, align 4, !tbaa !8
  %idxprom345 = sext i32 %299 to i64
  %arrayidx346 = getelementptr inbounds %struct.doublecomplex, ptr %298, i64 %idxprom345
  %300 = load ptr, ptr %ldaf.addr, align 8, !tbaa !4
  %301 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx347 = getelementptr inbounds %struct.doublecomplex, ptr %301, i64 1
  %302 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %303 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call348 = call i32 @zpotrs_(ptr noundef @.str, ptr noundef %297, ptr noundef @c__1, ptr noundef %arrayidx346, ptr noundef %300, ptr noundef %arrayidx347, ptr noundef %302, ptr noundef %303)
  br label %if.end354

if.else349:                                       ; preds = %for.end342
  %304 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %305 = load ptr, ptr %af.addr, align 8, !tbaa !4
  %306 = load i32, ptr %af_offset, align 4, !tbaa !8
  %idxprom350 = sext i32 %306 to i64
  %arrayidx351 = getelementptr inbounds %struct.doublecomplex, ptr %305, i64 %idxprom350
  %307 = load ptr, ptr %ldaf.addr, align 8, !tbaa !4
  %308 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx352 = getelementptr inbounds %struct.doublecomplex, ptr %308, i64 1
  %309 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %310 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call353 = call i32 @zpotrs_(ptr noundef @.str.1, ptr noundef %304, ptr noundef @c__1, ptr noundef %arrayidx351, ptr noundef %307, ptr noundef %arrayidx352, ptr noundef %309, ptr noundef %310)
  br label %if.end354

if.end354:                                        ; preds = %if.else349, %if.then344
  %311 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %312 = load i32, ptr %311, align 4, !tbaa !8
  store i32 %312, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond355

for.cond355:                                      ; preds = %for.inc370, %if.end354
  %313 = load i32, ptr %i__, align 4, !tbaa !8
  %314 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp356 = icmp sle i32 %313, %314
  br i1 %cmp356, label %for.body357, label %for.end372

for.body357:                                      ; preds = %for.cond355
  %315 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %315, ptr %i__2, align 4, !tbaa !8
  %316 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %317 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom358 = sext i32 %317 to i64
  %arrayidx359 = getelementptr inbounds %struct.doublecomplex, ptr %316, i64 %idxprom358
  %318 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %319 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom360 = sext i32 %319 to i64
  %arrayidx361 = getelementptr inbounds %struct.doublecomplex, ptr %318, i64 %idxprom360
  call void @zladiv_f2c_(ptr noundef %z__1, ptr noundef %arrayidx359, ptr noundef %arrayidx361)
  %r362 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %320 = load double, ptr %r362, align 8, !tbaa !12
  %321 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %322 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom363 = sext i32 %322 to i64
  %arrayidx364 = getelementptr inbounds %struct.doublecomplex, ptr %321, i64 %idxprom363
  %r365 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx364, i32 0, i32 0
  store double %320, ptr %r365, align 8, !tbaa !12
  %i366 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %323 = load double, ptr %i366, align 8, !tbaa !14
  %324 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %325 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom367 = sext i32 %325 to i64
  %arrayidx368 = getelementptr inbounds %struct.doublecomplex, ptr %324, i64 %idxprom367
  %i369 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx368, i32 0, i32 1
  store double %323, ptr %i369, align 8, !tbaa !14
  br label %for.inc370

for.inc370:                                       ; preds = %for.body357
  %326 = load i32, ptr %i__, align 4, !tbaa !8
  %inc371 = add nsw i32 %326, 1
  store i32 %inc371, ptr %i__, align 4, !tbaa !8
  br label %for.cond355, !llvm.loop !23

for.end372:                                       ; preds = %for.cond355
  br label %if.end432

if.else373:                                       ; preds = %if.then312
  %327 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %328 = load i32, ptr %327, align 4, !tbaa !8
  store i32 %328, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond374

for.cond374:                                      ; preds = %for.inc389, %if.else373
  %329 = load i32, ptr %i__, align 4, !tbaa !8
  %330 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp375 = icmp sle i32 %329, %330
  br i1 %cmp375, label %for.body376, label %for.end391

for.body376:                                      ; preds = %for.cond374
  %331 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %331, ptr %i__2, align 4, !tbaa !8
  %332 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %333 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom377 = sext i32 %333 to i64
  %arrayidx378 = getelementptr inbounds %struct.doublecomplex, ptr %332, i64 %idxprom377
  %334 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %335 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom379 = sext i32 %335 to i64
  %arrayidx380 = getelementptr inbounds %struct.doublecomplex, ptr %334, i64 %idxprom379
  call void @zladiv_f2c_(ptr noundef %z__1, ptr noundef %arrayidx378, ptr noundef %arrayidx380)
  %r381 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %336 = load double, ptr %r381, align 8, !tbaa !12
  %337 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %338 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom382 = sext i32 %338 to i64
  %arrayidx383 = getelementptr inbounds %struct.doublecomplex, ptr %337, i64 %idxprom382
  %r384 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx383, i32 0, i32 0
  store double %336, ptr %r384, align 8, !tbaa !12
  %i385 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %339 = load double, ptr %i385, align 8, !tbaa !14
  %340 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %341 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom386 = sext i32 %341 to i64
  %arrayidx387 = getelementptr inbounds %struct.doublecomplex, ptr %340, i64 %idxprom386
  %i388 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx387, i32 0, i32 1
  store double %339, ptr %i388, align 8, !tbaa !14
  br label %for.inc389

for.inc389:                                       ; preds = %for.body376
  %342 = load i32, ptr %i__, align 4, !tbaa !8
  %inc390 = add nsw i32 %342, 1
  store i32 %inc390, ptr %i__, align 4, !tbaa !8
  br label %for.cond374, !llvm.loop !24

for.end391:                                       ; preds = %for.cond374
  %343 = load i32, ptr %up, align 4, !tbaa !8
  %tobool392 = icmp ne i32 %343, 0
  br i1 %tobool392, label %if.then393, label %if.else398

if.then393:                                       ; preds = %for.end391
  %344 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %345 = load ptr, ptr %af.addr, align 8, !tbaa !4
  %346 = load i32, ptr %af_offset, align 4, !tbaa !8
  %idxprom394 = sext i32 %346 to i64
  %arrayidx395 = getelementptr inbounds %struct.doublecomplex, ptr %345, i64 %idxprom394
  %347 = load ptr, ptr %ldaf.addr, align 8, !tbaa !4
  %348 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx396 = getelementptr inbounds %struct.doublecomplex, ptr %348, i64 1
  %349 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %350 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call397 = call i32 @zpotrs_(ptr noundef @.str, ptr noundef %344, ptr noundef @c__1, ptr noundef %arrayidx395, ptr noundef %347, ptr noundef %arrayidx396, ptr noundef %349, ptr noundef %350)
  br label %if.end403

if.else398:                                       ; preds = %for.end391
  %351 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %352 = load ptr, ptr %af.addr, align 8, !tbaa !4
  %353 = load i32, ptr %af_offset, align 4, !tbaa !8
  %idxprom399 = sext i32 %353 to i64
  %arrayidx400 = getelementptr inbounds %struct.doublecomplex, ptr %352, i64 %idxprom399
  %354 = load ptr, ptr %ldaf.addr, align 8, !tbaa !4
  %355 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx401 = getelementptr inbounds %struct.doublecomplex, ptr %355, i64 1
  %356 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %357 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call402 = call i32 @zpotrs_(ptr noundef @.str.1, ptr noundef %351, ptr noundef @c__1, ptr noundef %arrayidx400, ptr noundef %354, ptr noundef %arrayidx401, ptr noundef %356, ptr noundef %357)
  br label %if.end403

if.end403:                                        ; preds = %if.else398, %if.then393
  %358 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %359 = load i32, ptr %358, align 4, !tbaa !8
  store i32 %359, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond404

for.cond404:                                      ; preds = %for.inc429, %if.end403
  %360 = load i32, ptr %i__, align 4, !tbaa !8
  %361 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp405 = icmp sle i32 %360, %361
  br i1 %cmp405, label %for.body406, label %for.end431

for.body406:                                      ; preds = %for.cond404
  %362 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %362, ptr %i__2, align 4, !tbaa !8
  %363 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %363, ptr %i__3, align 4, !tbaa !8
  %364 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %364, ptr %i__4, align 4, !tbaa !8
  %365 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %366 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom407 = sext i32 %366 to i64
  %arrayidx408 = getelementptr inbounds double, ptr %365, i64 %idxprom407
  %367 = load double, ptr %arrayidx408, align 8, !tbaa !10
  %368 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %369 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom409 = sext i32 %369 to i64
  %arrayidx410 = getelementptr inbounds %struct.doublecomplex, ptr %368, i64 %idxprom409
  %r411 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx410, i32 0, i32 0
  %370 = load double, ptr %r411, align 8, !tbaa !12
  %mul412 = fmul double %367, %370
  %r413 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul412, ptr %r413, align 8, !tbaa !12
  %371 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %372 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom414 = sext i32 %372 to i64
  %arrayidx415 = getelementptr inbounds double, ptr %371, i64 %idxprom414
  %373 = load double, ptr %arrayidx415, align 8, !tbaa !10
  %374 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %375 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom416 = sext i32 %375 to i64
  %arrayidx417 = getelementptr inbounds %struct.doublecomplex, ptr %374, i64 %idxprom416
  %i418 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx417, i32 0, i32 1
  %376 = load double, ptr %i418, align 8, !tbaa !14
  %mul419 = fmul double %373, %376
  %i420 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul419, ptr %i420, align 8, !tbaa !14
  %r421 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %377 = load double, ptr %r421, align 8, !tbaa !12
  %378 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %379 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom422 = sext i32 %379 to i64
  %arrayidx423 = getelementptr inbounds %struct.doublecomplex, ptr %378, i64 %idxprom422
  %r424 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx423, i32 0, i32 0
  store double %377, ptr %r424, align 8, !tbaa !12
  %i425 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %380 = load double, ptr %i425, align 8, !tbaa !14
  %381 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %382 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom426 = sext i32 %382 to i64
  %arrayidx427 = getelementptr inbounds %struct.doublecomplex, ptr %381, i64 %idxprom426
  %i428 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx427, i32 0, i32 1
  store double %380, ptr %i428, align 8, !tbaa !14
  br label %for.inc429

for.inc429:                                       ; preds = %for.body406
  %383 = load i32, ptr %i__, align 4, !tbaa !8
  %inc430 = add nsw i32 %383, 1
  store i32 %inc430, ptr %i__, align 4, !tbaa !8
  br label %for.cond404, !llvm.loop !25

for.end431:                                       ; preds = %for.cond404
  br label %if.end432

if.end432:                                        ; preds = %for.end431, %for.end372
  br label %L10

if.end433:                                        ; preds = %L10
  %384 = load double, ptr %ainvnm, align 8, !tbaa !10
  %cmp434 = fcmp une double %384, 0.000000e+00
  br i1 %cmp434, label %if.then435, label %if.end436

if.then435:                                       ; preds = %if.end433
  %385 = load double, ptr %ainvnm, align 8, !tbaa !10
  %div = fdiv double 1.000000e+00, %385
  store double %div, ptr %ret_val, align 8, !tbaa !10
  br label %if.end436

if.end436:                                        ; preds = %if.then435, %if.end433
  %386 = load double, ptr %ret_val, align 8, !tbaa !10
  store double %386, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end436, %if.then303, %if.then300, %if.then30
  call void @llvm.lifetime.end.p0(i64 8, ptr %ainvnm) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %anorm) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr %isave) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kase) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %up) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__2) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_val) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %af_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %af_dim1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #4
  %387 = load double, ptr %retval, align 8
  ret double %387
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare double @d_imag(ptr noundef) #2

declare i32 @zlacn2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zpotrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @zladiv_f2c_(ptr noundef, ptr noundef, ptr noundef) #2

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
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 8}
!14 = !{!13, !11, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}

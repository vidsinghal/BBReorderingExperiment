; ModuleID = 'samples/212.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zla_syrcond_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ZLA_SYRCOND_X\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: noinline nounwind optnone uwtable
define double @zla_syrcond_x_(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %af, ptr noundef %ldaf, ptr noundef %ipiv, ptr noundef %x, ptr noundef %info, ptr noundef %work, ptr noundef %rwork) #0 {
entry:
  %retval = alloca double, align 8
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %af.addr = alloca ptr, align 8
  %ldaf.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
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
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %af, ptr %af.addr, align 8
  store ptr %ldaf, ptr %ldaf.addr, align 8
  store ptr %ipiv, ptr %ipiv.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %rwork, ptr %rwork.addr, align 8
  %0 = load ptr, ptr %lda.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %a_dim1, align 4
  %2 = load i32, ptr %a_dim1, align 4
  %add = add nsw i32 1, %2
  store i32 %add, ptr %a_offset, align 4
  %3 = load i32, ptr %a_offset, align 4
  %4 = load ptr, ptr %a.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %5 = load ptr, ptr %ldaf.addr, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %af_dim1, align 4
  %7 = load i32, ptr %af_dim1, align 4
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %af_offset, align 4
  %8 = load i32, ptr %af_offset, align 4
  %9 = load ptr, ptr %af.addr, align 8
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %af.addr, align 8
  %10 = load ptr, ptr %ipiv.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8
  %11 = load ptr, ptr %x.addr, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.doublecomplex, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %x.addr, align 8
  %12 = load ptr, ptr %work.addr, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.doublecomplex, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %work.addr, align 8
  %13 = load ptr, ptr %rwork.addr, align 8
  %incdec.ptr7 = getelementptr inbounds double, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %rwork.addr, align 8
  store double 0.000000e+00, ptr %ret_val, align 8
  %14 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %14, align 4
  %15 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %15, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4
  %16 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %17 = load ptr, ptr %uplo.addr, align 8
  %call8 = call i32 @lsame_(ptr noundef %17, ptr noundef @.str.1)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %18 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %18, align 4
  br label %if.end25

if.else:                                          ; preds = %land.lhs.true, %entry
  %19 = load ptr, ptr %n.addr, align 8
  %20 = load i32, ptr %19, align 4
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  %21 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %21, align 4
  br label %if.end24

if.else11:                                        ; preds = %if.else
  %22 = load ptr, ptr %lda.addr, align 8
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %n.addr, align 8
  %25 = load i32, ptr %24, align 4
  %cmp12 = icmp sge i32 1, %25
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else11
  br label %cond.end

cond.false:                                       ; preds = %if.else11
  %26 = load ptr, ptr %n.addr, align 8
  %27 = load i32, ptr %26, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %27, %cond.false ]
  %cmp13 = icmp slt i32 %23, %cond
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %cond.end
  %28 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %28, align 4
  br label %if.end23

if.else15:                                        ; preds = %cond.end
  %29 = load ptr, ptr %ldaf.addr, align 8
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %n.addr, align 8
  %32 = load i32, ptr %31, align 4
  %cmp16 = icmp sge i32 1, %32
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %if.else15
  br label %cond.end19

cond.false18:                                     ; preds = %if.else15
  %33 = load ptr, ptr %n.addr, align 8
  %34 = load i32, ptr %33, align 4
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i32 [ 1, %cond.true17 ], [ %34, %cond.false18 ]
  %cmp21 = icmp slt i32 %30, %cond20
  br i1 %cmp21, label %if.then22, label %if.end

if.then22:                                        ; preds = %cond.end19
  %35 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %35, align 4
  br label %if.end

if.end:                                           ; preds = %if.then22, %cond.end19
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then14
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then10
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  %36 = load ptr, ptr %info.addr, align 8
  %37 = load i32, ptr %36, align 4
  %cmp26 = icmp ne i32 %37, 0
  br i1 %cmp26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end25
  %38 = load ptr, ptr %info.addr, align 8
  %39 = load i32, ptr %38, align 4
  %sub = sub nsw i32 0, %39
  store i32 %sub, ptr %i__1, align 4
  %call28 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  %40 = load double, ptr %ret_val, align 8
  store double %40, ptr %retval, align 8
  br label %return

if.end29:                                         ; preds = %if.end25
  store i32 0, ptr %up, align 4
  %41 = load ptr, ptr %uplo.addr, align 8
  %call30 = call i32 @lsame_(ptr noundef %41, ptr noundef @.str)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  store i32 1, ptr %up, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29
  store double 0.000000e+00, ptr %anorm, align 8
  %42 = load i32, ptr %up, align 4
  %tobool34 = icmp ne i32 %42, 0
  br i1 %tobool34, label %if.then35, label %if.else156

if.then35:                                        ; preds = %if.end33
  %43 = load ptr, ptr %n.addr, align 8
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc153, %if.then35
  %45 = load i32, ptr %i__, align 4
  %46 = load i32, ptr %i__1, align 4
  %cmp36 = icmp sle i32 %45, %46
  br i1 %cmp36, label %for.body, label %for.end155

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, ptr %tmp, align 8
  %47 = load i32, ptr %i__, align 4
  store i32 %47, ptr %i__2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc, %for.body
  %48 = load i32, ptr %j, align 4
  %49 = load i32, ptr %i__2, align 4
  %cmp38 = icmp sle i32 %48, %49
  br i1 %cmp38, label %for.body39, label %for.end

for.body39:                                       ; preds = %for.cond37
  %50 = load i32, ptr %j, align 4
  %51 = load i32, ptr %i__, align 4
  %52 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %51, %52
  %add40 = add nsw i32 %50, %mul
  store i32 %add40, ptr %i__3, align 4
  %53 = load i32, ptr %j, align 4
  store i32 %53, ptr %i__4, align 4
  %54 = load ptr, ptr %a.addr, align 8
  %55 = load i32, ptr %i__3, align 4
  %idxprom = sext i32 %55 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %54, i64 %idxprom
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  %56 = load double, ptr %r, align 8
  %57 = load ptr, ptr %x.addr, align 8
  %58 = load i32, ptr %i__4, align 4
  %idxprom41 = sext i32 %58 to i64
  %arrayidx42 = getelementptr inbounds %struct.doublecomplex, ptr %57, i64 %idxprom41
  %r43 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx42, i32 0, i32 0
  %59 = load double, ptr %r43, align 8
  %60 = load ptr, ptr %a.addr, align 8
  %61 = load i32, ptr %i__3, align 4
  %idxprom45 = sext i32 %61 to i64
  %arrayidx46 = getelementptr inbounds %struct.doublecomplex, ptr %60, i64 %idxprom45
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx46, i32 0, i32 1
  %62 = load double, ptr %i, align 8
  %63 = load ptr, ptr %x.addr, align 8
  %64 = load i32, ptr %i__4, align 4
  %idxprom47 = sext i32 %64 to i64
  %arrayidx48 = getelementptr inbounds %struct.doublecomplex, ptr %63, i64 %idxprom47
  %i49 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx48, i32 0, i32 1
  %65 = load double, ptr %i49, align 8
  %mul50 = fmul double %62, %65
  %neg = fneg double %mul50
  %66 = call double @llvm.fmuladd.f64(double %56, double %59, double %neg)
  %r51 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %66, ptr %r51, align 8
  %67 = load ptr, ptr %a.addr, align 8
  %68 = load i32, ptr %i__3, align 4
  %idxprom52 = sext i32 %68 to i64
  %arrayidx53 = getelementptr inbounds %struct.doublecomplex, ptr %67, i64 %idxprom52
  %r54 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx53, i32 0, i32 0
  %69 = load double, ptr %r54, align 8
  %70 = load ptr, ptr %x.addr, align 8
  %71 = load i32, ptr %i__4, align 4
  %idxprom55 = sext i32 %71 to i64
  %arrayidx56 = getelementptr inbounds %struct.doublecomplex, ptr %70, i64 %idxprom55
  %i57 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx56, i32 0, i32 1
  %72 = load double, ptr %i57, align 8
  %73 = load ptr, ptr %a.addr, align 8
  %74 = load i32, ptr %i__3, align 4
  %idxprom59 = sext i32 %74 to i64
  %arrayidx60 = getelementptr inbounds %struct.doublecomplex, ptr %73, i64 %idxprom59
  %i61 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx60, i32 0, i32 1
  %75 = load double, ptr %i61, align 8
  %76 = load ptr, ptr %x.addr, align 8
  %77 = load i32, ptr %i__4, align 4
  %idxprom62 = sext i32 %77 to i64
  %arrayidx63 = getelementptr inbounds %struct.doublecomplex, ptr %76, i64 %idxprom62
  %r64 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx63, i32 0, i32 0
  %78 = load double, ptr %r64, align 8
  %mul65 = fmul double %75, %78
  %79 = call double @llvm.fmuladd.f64(double %69, double %72, double %mul65)
  %i66 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %79, ptr %i66, align 8
  %r67 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %80 = load double, ptr %r67, align 8
  %r68 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %80, ptr %r68, align 8
  %i69 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %81 = load double, ptr %i69, align 8
  %i70 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %81, ptr %i70, align 8
  %r71 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %82 = load double, ptr %r71, align 8
  store double %82, ptr %d__1, align 8
  %83 = load double, ptr %d__1, align 8
  %cmp72 = fcmp oge double %83, 0.000000e+00
  br i1 %cmp72, label %cond.true73, label %cond.false74

cond.true73:                                      ; preds = %for.body39
  %84 = load double, ptr %d__1, align 8
  br label %cond.end75

cond.false74:                                     ; preds = %for.body39
  %85 = load double, ptr %d__1, align 8
  %fneg = fneg double %85
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false74, %cond.true73
  %cond76 = phi double [ %84, %cond.true73 ], [ %fneg, %cond.false74 ]
  %call77 = call double @d_imag(ptr noundef %z__1)
  store double %call77, ptr %d__2, align 8
  %86 = load double, ptr %d__2, align 8
  %cmp78 = fcmp oge double %86, 0.000000e+00
  br i1 %cmp78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %cond.end75
  %87 = load double, ptr %d__2, align 8
  br label %cond.end82

cond.false80:                                     ; preds = %cond.end75
  %88 = load double, ptr %d__2, align 8
  %fneg81 = fneg double %88
  br label %cond.end82

cond.end82:                                       ; preds = %cond.false80, %cond.true79
  %cond83 = phi double [ %87, %cond.true79 ], [ %fneg81, %cond.false80 ]
  %add84 = fadd double %cond76, %cond83
  %89 = load double, ptr %tmp, align 8
  %add85 = fadd double %89, %add84
  store double %add85, ptr %tmp, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end82
  %90 = load i32, ptr %j, align 4
  %inc = add nsw i32 %90, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond37, !llvm.loop !5

for.end:                                          ; preds = %for.cond37
  %91 = load ptr, ptr %n.addr, align 8
  %92 = load i32, ptr %91, align 4
  store i32 %92, ptr %i__2, align 4
  %93 = load i32, ptr %i__, align 4
  %add86 = add nsw i32 %93, 1
  store i32 %add86, ptr %j, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc143, %for.end
  %94 = load i32, ptr %j, align 4
  %95 = load i32, ptr %i__2, align 4
  %cmp88 = icmp sle i32 %94, %95
  br i1 %cmp88, label %for.body89, label %for.end145

for.body89:                                       ; preds = %for.cond87
  %96 = load i32, ptr %i__, align 4
  %97 = load i32, ptr %j, align 4
  %98 = load i32, ptr %a_dim1, align 4
  %mul90 = mul nsw i32 %97, %98
  %add91 = add nsw i32 %96, %mul90
  store i32 %add91, ptr %i__3, align 4
  %99 = load i32, ptr %j, align 4
  store i32 %99, ptr %i__4, align 4
  %100 = load ptr, ptr %a.addr, align 8
  %101 = load i32, ptr %i__3, align 4
  %idxprom92 = sext i32 %101 to i64
  %arrayidx93 = getelementptr inbounds %struct.doublecomplex, ptr %100, i64 %idxprom92
  %r94 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx93, i32 0, i32 0
  %102 = load double, ptr %r94, align 8
  %103 = load ptr, ptr %x.addr, align 8
  %104 = load i32, ptr %i__4, align 4
  %idxprom95 = sext i32 %104 to i64
  %arrayidx96 = getelementptr inbounds %struct.doublecomplex, ptr %103, i64 %idxprom95
  %r97 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx96, i32 0, i32 0
  %105 = load double, ptr %r97, align 8
  %106 = load ptr, ptr %a.addr, align 8
  %107 = load i32, ptr %i__3, align 4
  %idxprom99 = sext i32 %107 to i64
  %arrayidx100 = getelementptr inbounds %struct.doublecomplex, ptr %106, i64 %idxprom99
  %i101 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx100, i32 0, i32 1
  %108 = load double, ptr %i101, align 8
  %109 = load ptr, ptr %x.addr, align 8
  %110 = load i32, ptr %i__4, align 4
  %idxprom102 = sext i32 %110 to i64
  %arrayidx103 = getelementptr inbounds %struct.doublecomplex, ptr %109, i64 %idxprom102
  %i104 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx103, i32 0, i32 1
  %111 = load double, ptr %i104, align 8
  %mul105 = fmul double %108, %111
  %neg106 = fneg double %mul105
  %112 = call double @llvm.fmuladd.f64(double %102, double %105, double %neg106)
  %r107 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %112, ptr %r107, align 8
  %113 = load ptr, ptr %a.addr, align 8
  %114 = load i32, ptr %i__3, align 4
  %idxprom108 = sext i32 %114 to i64
  %arrayidx109 = getelementptr inbounds %struct.doublecomplex, ptr %113, i64 %idxprom108
  %r110 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx109, i32 0, i32 0
  %115 = load double, ptr %r110, align 8
  %116 = load ptr, ptr %x.addr, align 8
  %117 = load i32, ptr %i__4, align 4
  %idxprom111 = sext i32 %117 to i64
  %arrayidx112 = getelementptr inbounds %struct.doublecomplex, ptr %116, i64 %idxprom111
  %i113 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx112, i32 0, i32 1
  %118 = load double, ptr %i113, align 8
  %119 = load ptr, ptr %a.addr, align 8
  %120 = load i32, ptr %i__3, align 4
  %idxprom115 = sext i32 %120 to i64
  %arrayidx116 = getelementptr inbounds %struct.doublecomplex, ptr %119, i64 %idxprom115
  %i117 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx116, i32 0, i32 1
  %121 = load double, ptr %i117, align 8
  %122 = load ptr, ptr %x.addr, align 8
  %123 = load i32, ptr %i__4, align 4
  %idxprom118 = sext i32 %123 to i64
  %arrayidx119 = getelementptr inbounds %struct.doublecomplex, ptr %122, i64 %idxprom118
  %r120 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx119, i32 0, i32 0
  %124 = load double, ptr %r120, align 8
  %mul121 = fmul double %121, %124
  %125 = call double @llvm.fmuladd.f64(double %115, double %118, double %mul121)
  %i122 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %125, ptr %i122, align 8
  %r123 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %126 = load double, ptr %r123, align 8
  %r124 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %126, ptr %r124, align 8
  %i125 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %127 = load double, ptr %i125, align 8
  %i126 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %127, ptr %i126, align 8
  %r127 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %128 = load double, ptr %r127, align 8
  store double %128, ptr %d__1, align 8
  %129 = load double, ptr %d__1, align 8
  %cmp128 = fcmp oge double %129, 0.000000e+00
  br i1 %cmp128, label %cond.true129, label %cond.false130

cond.true129:                                     ; preds = %for.body89
  %130 = load double, ptr %d__1, align 8
  br label %cond.end132

cond.false130:                                    ; preds = %for.body89
  %131 = load double, ptr %d__1, align 8
  %fneg131 = fneg double %131
  br label %cond.end132

cond.end132:                                      ; preds = %cond.false130, %cond.true129
  %cond133 = phi double [ %130, %cond.true129 ], [ %fneg131, %cond.false130 ]
  %call134 = call double @d_imag(ptr noundef %z__1)
  store double %call134, ptr %d__2, align 8
  %132 = load double, ptr %d__2, align 8
  %cmp135 = fcmp oge double %132, 0.000000e+00
  br i1 %cmp135, label %cond.true136, label %cond.false137

cond.true136:                                     ; preds = %cond.end132
  %133 = load double, ptr %d__2, align 8
  br label %cond.end139

cond.false137:                                    ; preds = %cond.end132
  %134 = load double, ptr %d__2, align 8
  %fneg138 = fneg double %134
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false137, %cond.true136
  %cond140 = phi double [ %133, %cond.true136 ], [ %fneg138, %cond.false137 ]
  %add141 = fadd double %cond133, %cond140
  %135 = load double, ptr %tmp, align 8
  %add142 = fadd double %135, %add141
  store double %add142, ptr %tmp, align 8
  br label %for.inc143

for.inc143:                                       ; preds = %cond.end139
  %136 = load i32, ptr %j, align 4
  %inc144 = add nsw i32 %136, 1
  store i32 %inc144, ptr %j, align 4
  br label %for.cond87, !llvm.loop !7

for.end145:                                       ; preds = %for.cond87
  %137 = load double, ptr %tmp, align 8
  %138 = load ptr, ptr %rwork.addr, align 8
  %139 = load i32, ptr %i__, align 4
  %idxprom146 = sext i32 %139 to i64
  %arrayidx147 = getelementptr inbounds double, ptr %138, i64 %idxprom146
  store double %137, ptr %arrayidx147, align 8
  %140 = load double, ptr %anorm, align 8
  %141 = load double, ptr %tmp, align 8
  %cmp148 = fcmp oge double %140, %141
  br i1 %cmp148, label %cond.true149, label %cond.false150

cond.true149:                                     ; preds = %for.end145
  %142 = load double, ptr %anorm, align 8
  br label %cond.end151

cond.false150:                                    ; preds = %for.end145
  %143 = load double, ptr %tmp, align 8
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false150, %cond.true149
  %cond152 = phi double [ %142, %cond.true149 ], [ %143, %cond.false150 ]
  store double %cond152, ptr %anorm, align 8
  br label %for.inc153

for.inc153:                                       ; preds = %cond.end151
  %144 = load i32, ptr %i__, align 4
  %inc154 = add nsw i32 %144, 1
  store i32 %inc154, ptr %i__, align 4
  br label %for.cond, !llvm.loop !8

for.end155:                                       ; preds = %for.cond
  br label %if.end289

if.else156:                                       ; preds = %if.end33
  %145 = load ptr, ptr %n.addr, align 8
  %146 = load i32, ptr %145, align 4
  store i32 %146, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond157

for.cond157:                                      ; preds = %for.inc286, %if.else156
  %147 = load i32, ptr %i__, align 4
  %148 = load i32, ptr %i__1, align 4
  %cmp158 = icmp sle i32 %147, %148
  br i1 %cmp158, label %for.body159, label %for.end288

for.body159:                                      ; preds = %for.cond157
  store double 0.000000e+00, ptr %tmp, align 8
  %149 = load i32, ptr %i__, align 4
  store i32 %149, ptr %i__2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc216, %for.body159
  %150 = load i32, ptr %j, align 4
  %151 = load i32, ptr %i__2, align 4
  %cmp161 = icmp sle i32 %150, %151
  br i1 %cmp161, label %for.body162, label %for.end218

for.body162:                                      ; preds = %for.cond160
  %152 = load i32, ptr %i__, align 4
  %153 = load i32, ptr %j, align 4
  %154 = load i32, ptr %a_dim1, align 4
  %mul163 = mul nsw i32 %153, %154
  %add164 = add nsw i32 %152, %mul163
  store i32 %add164, ptr %i__3, align 4
  %155 = load i32, ptr %j, align 4
  store i32 %155, ptr %i__4, align 4
  %156 = load ptr, ptr %a.addr, align 8
  %157 = load i32, ptr %i__3, align 4
  %idxprom165 = sext i32 %157 to i64
  %arrayidx166 = getelementptr inbounds %struct.doublecomplex, ptr %156, i64 %idxprom165
  %r167 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx166, i32 0, i32 0
  %158 = load double, ptr %r167, align 8
  %159 = load ptr, ptr %x.addr, align 8
  %160 = load i32, ptr %i__4, align 4
  %idxprom168 = sext i32 %160 to i64
  %arrayidx169 = getelementptr inbounds %struct.doublecomplex, ptr %159, i64 %idxprom168
  %r170 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx169, i32 0, i32 0
  %161 = load double, ptr %r170, align 8
  %162 = load ptr, ptr %a.addr, align 8
  %163 = load i32, ptr %i__3, align 4
  %idxprom172 = sext i32 %163 to i64
  %arrayidx173 = getelementptr inbounds %struct.doublecomplex, ptr %162, i64 %idxprom172
  %i174 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx173, i32 0, i32 1
  %164 = load double, ptr %i174, align 8
  %165 = load ptr, ptr %x.addr, align 8
  %166 = load i32, ptr %i__4, align 4
  %idxprom175 = sext i32 %166 to i64
  %arrayidx176 = getelementptr inbounds %struct.doublecomplex, ptr %165, i64 %idxprom175
  %i177 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx176, i32 0, i32 1
  %167 = load double, ptr %i177, align 8
  %mul178 = fmul double %164, %167
  %neg179 = fneg double %mul178
  %168 = call double @llvm.fmuladd.f64(double %158, double %161, double %neg179)
  %r180 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %168, ptr %r180, align 8
  %169 = load ptr, ptr %a.addr, align 8
  %170 = load i32, ptr %i__3, align 4
  %idxprom181 = sext i32 %170 to i64
  %arrayidx182 = getelementptr inbounds %struct.doublecomplex, ptr %169, i64 %idxprom181
  %r183 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx182, i32 0, i32 0
  %171 = load double, ptr %r183, align 8
  %172 = load ptr, ptr %x.addr, align 8
  %173 = load i32, ptr %i__4, align 4
  %idxprom184 = sext i32 %173 to i64
  %arrayidx185 = getelementptr inbounds %struct.doublecomplex, ptr %172, i64 %idxprom184
  %i186 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx185, i32 0, i32 1
  %174 = load double, ptr %i186, align 8
  %175 = load ptr, ptr %a.addr, align 8
  %176 = load i32, ptr %i__3, align 4
  %idxprom188 = sext i32 %176 to i64
  %arrayidx189 = getelementptr inbounds %struct.doublecomplex, ptr %175, i64 %idxprom188
  %i190 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx189, i32 0, i32 1
  %177 = load double, ptr %i190, align 8
  %178 = load ptr, ptr %x.addr, align 8
  %179 = load i32, ptr %i__4, align 4
  %idxprom191 = sext i32 %179 to i64
  %arrayidx192 = getelementptr inbounds %struct.doublecomplex, ptr %178, i64 %idxprom191
  %r193 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx192, i32 0, i32 0
  %180 = load double, ptr %r193, align 8
  %mul194 = fmul double %177, %180
  %181 = call double @llvm.fmuladd.f64(double %171, double %174, double %mul194)
  %i195 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %181, ptr %i195, align 8
  %r196 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %182 = load double, ptr %r196, align 8
  %r197 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %182, ptr %r197, align 8
  %i198 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %183 = load double, ptr %i198, align 8
  %i199 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %183, ptr %i199, align 8
  %r200 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %184 = load double, ptr %r200, align 8
  store double %184, ptr %d__1, align 8
  %185 = load double, ptr %d__1, align 8
  %cmp201 = fcmp oge double %185, 0.000000e+00
  br i1 %cmp201, label %cond.true202, label %cond.false203

cond.true202:                                     ; preds = %for.body162
  %186 = load double, ptr %d__1, align 8
  br label %cond.end205

cond.false203:                                    ; preds = %for.body162
  %187 = load double, ptr %d__1, align 8
  %fneg204 = fneg double %187
  br label %cond.end205

cond.end205:                                      ; preds = %cond.false203, %cond.true202
  %cond206 = phi double [ %186, %cond.true202 ], [ %fneg204, %cond.false203 ]
  %call207 = call double @d_imag(ptr noundef %z__1)
  store double %call207, ptr %d__2, align 8
  %188 = load double, ptr %d__2, align 8
  %cmp208 = fcmp oge double %188, 0.000000e+00
  br i1 %cmp208, label %cond.true209, label %cond.false210

cond.true209:                                     ; preds = %cond.end205
  %189 = load double, ptr %d__2, align 8
  br label %cond.end212

cond.false210:                                    ; preds = %cond.end205
  %190 = load double, ptr %d__2, align 8
  %fneg211 = fneg double %190
  br label %cond.end212

cond.end212:                                      ; preds = %cond.false210, %cond.true209
  %cond213 = phi double [ %189, %cond.true209 ], [ %fneg211, %cond.false210 ]
  %add214 = fadd double %cond206, %cond213
  %191 = load double, ptr %tmp, align 8
  %add215 = fadd double %191, %add214
  store double %add215, ptr %tmp, align 8
  br label %for.inc216

for.inc216:                                       ; preds = %cond.end212
  %192 = load i32, ptr %j, align 4
  %inc217 = add nsw i32 %192, 1
  store i32 %inc217, ptr %j, align 4
  br label %for.cond160, !llvm.loop !9

for.end218:                                       ; preds = %for.cond160
  %193 = load ptr, ptr %n.addr, align 8
  %194 = load i32, ptr %193, align 4
  store i32 %194, ptr %i__2, align 4
  %195 = load i32, ptr %i__, align 4
  %add219 = add nsw i32 %195, 1
  store i32 %add219, ptr %j, align 4
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc276, %for.end218
  %196 = load i32, ptr %j, align 4
  %197 = load i32, ptr %i__2, align 4
  %cmp221 = icmp sle i32 %196, %197
  br i1 %cmp221, label %for.body222, label %for.end278

for.body222:                                      ; preds = %for.cond220
  %198 = load i32, ptr %j, align 4
  %199 = load i32, ptr %i__, align 4
  %200 = load i32, ptr %a_dim1, align 4
  %mul223 = mul nsw i32 %199, %200
  %add224 = add nsw i32 %198, %mul223
  store i32 %add224, ptr %i__3, align 4
  %201 = load i32, ptr %j, align 4
  store i32 %201, ptr %i__4, align 4
  %202 = load ptr, ptr %a.addr, align 8
  %203 = load i32, ptr %i__3, align 4
  %idxprom225 = sext i32 %203 to i64
  %arrayidx226 = getelementptr inbounds %struct.doublecomplex, ptr %202, i64 %idxprom225
  %r227 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx226, i32 0, i32 0
  %204 = load double, ptr %r227, align 8
  %205 = load ptr, ptr %x.addr, align 8
  %206 = load i32, ptr %i__4, align 4
  %idxprom228 = sext i32 %206 to i64
  %arrayidx229 = getelementptr inbounds %struct.doublecomplex, ptr %205, i64 %idxprom228
  %r230 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx229, i32 0, i32 0
  %207 = load double, ptr %r230, align 8
  %208 = load ptr, ptr %a.addr, align 8
  %209 = load i32, ptr %i__3, align 4
  %idxprom232 = sext i32 %209 to i64
  %arrayidx233 = getelementptr inbounds %struct.doublecomplex, ptr %208, i64 %idxprom232
  %i234 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx233, i32 0, i32 1
  %210 = load double, ptr %i234, align 8
  %211 = load ptr, ptr %x.addr, align 8
  %212 = load i32, ptr %i__4, align 4
  %idxprom235 = sext i32 %212 to i64
  %arrayidx236 = getelementptr inbounds %struct.doublecomplex, ptr %211, i64 %idxprom235
  %i237 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx236, i32 0, i32 1
  %213 = load double, ptr %i237, align 8
  %mul238 = fmul double %210, %213
  %neg239 = fneg double %mul238
  %214 = call double @llvm.fmuladd.f64(double %204, double %207, double %neg239)
  %r240 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %214, ptr %r240, align 8
  %215 = load ptr, ptr %a.addr, align 8
  %216 = load i32, ptr %i__3, align 4
  %idxprom241 = sext i32 %216 to i64
  %arrayidx242 = getelementptr inbounds %struct.doublecomplex, ptr %215, i64 %idxprom241
  %r243 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx242, i32 0, i32 0
  %217 = load double, ptr %r243, align 8
  %218 = load ptr, ptr %x.addr, align 8
  %219 = load i32, ptr %i__4, align 4
  %idxprom244 = sext i32 %219 to i64
  %arrayidx245 = getelementptr inbounds %struct.doublecomplex, ptr %218, i64 %idxprom244
  %i246 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx245, i32 0, i32 1
  %220 = load double, ptr %i246, align 8
  %221 = load ptr, ptr %a.addr, align 8
  %222 = load i32, ptr %i__3, align 4
  %idxprom248 = sext i32 %222 to i64
  %arrayidx249 = getelementptr inbounds %struct.doublecomplex, ptr %221, i64 %idxprom248
  %i250 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx249, i32 0, i32 1
  %223 = load double, ptr %i250, align 8
  %224 = load ptr, ptr %x.addr, align 8
  %225 = load i32, ptr %i__4, align 4
  %idxprom251 = sext i32 %225 to i64
  %arrayidx252 = getelementptr inbounds %struct.doublecomplex, ptr %224, i64 %idxprom251
  %r253 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx252, i32 0, i32 0
  %226 = load double, ptr %r253, align 8
  %mul254 = fmul double %223, %226
  %227 = call double @llvm.fmuladd.f64(double %217, double %220, double %mul254)
  %i255 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %227, ptr %i255, align 8
  %r256 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %228 = load double, ptr %r256, align 8
  %r257 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %228, ptr %r257, align 8
  %i258 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %229 = load double, ptr %i258, align 8
  %i259 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %229, ptr %i259, align 8
  %r260 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %230 = load double, ptr %r260, align 8
  store double %230, ptr %d__1, align 8
  %231 = load double, ptr %d__1, align 8
  %cmp261 = fcmp oge double %231, 0.000000e+00
  br i1 %cmp261, label %cond.true262, label %cond.false263

cond.true262:                                     ; preds = %for.body222
  %232 = load double, ptr %d__1, align 8
  br label %cond.end265

cond.false263:                                    ; preds = %for.body222
  %233 = load double, ptr %d__1, align 8
  %fneg264 = fneg double %233
  br label %cond.end265

cond.end265:                                      ; preds = %cond.false263, %cond.true262
  %cond266 = phi double [ %232, %cond.true262 ], [ %fneg264, %cond.false263 ]
  %call267 = call double @d_imag(ptr noundef %z__1)
  store double %call267, ptr %d__2, align 8
  %234 = load double, ptr %d__2, align 8
  %cmp268 = fcmp oge double %234, 0.000000e+00
  br i1 %cmp268, label %cond.true269, label %cond.false270

cond.true269:                                     ; preds = %cond.end265
  %235 = load double, ptr %d__2, align 8
  br label %cond.end272

cond.false270:                                    ; preds = %cond.end265
  %236 = load double, ptr %d__2, align 8
  %fneg271 = fneg double %236
  br label %cond.end272

cond.end272:                                      ; preds = %cond.false270, %cond.true269
  %cond273 = phi double [ %235, %cond.true269 ], [ %fneg271, %cond.false270 ]
  %add274 = fadd double %cond266, %cond273
  %237 = load double, ptr %tmp, align 8
  %add275 = fadd double %237, %add274
  store double %add275, ptr %tmp, align 8
  br label %for.inc276

for.inc276:                                       ; preds = %cond.end272
  %238 = load i32, ptr %j, align 4
  %inc277 = add nsw i32 %238, 1
  store i32 %inc277, ptr %j, align 4
  br label %for.cond220, !llvm.loop !10

for.end278:                                       ; preds = %for.cond220
  %239 = load double, ptr %tmp, align 8
  %240 = load ptr, ptr %rwork.addr, align 8
  %241 = load i32, ptr %i__, align 4
  %idxprom279 = sext i32 %241 to i64
  %arrayidx280 = getelementptr inbounds double, ptr %240, i64 %idxprom279
  store double %239, ptr %arrayidx280, align 8
  %242 = load double, ptr %anorm, align 8
  %243 = load double, ptr %tmp, align 8
  %cmp281 = fcmp oge double %242, %243
  br i1 %cmp281, label %cond.true282, label %cond.false283

cond.true282:                                     ; preds = %for.end278
  %244 = load double, ptr %anorm, align 8
  br label %cond.end284

cond.false283:                                    ; preds = %for.end278
  %245 = load double, ptr %tmp, align 8
  br label %cond.end284

cond.end284:                                      ; preds = %cond.false283, %cond.true282
  %cond285 = phi double [ %244, %cond.true282 ], [ %245, %cond.false283 ]
  store double %cond285, ptr %anorm, align 8
  br label %for.inc286

for.inc286:                                       ; preds = %cond.end284
  %246 = load i32, ptr %i__, align 4
  %inc287 = add nsw i32 %246, 1
  store i32 %inc287, ptr %i__, align 4
  br label %for.cond157, !llvm.loop !11

for.end288:                                       ; preds = %for.cond157
  br label %if.end289

if.end289:                                        ; preds = %for.end288, %for.end155
  %247 = load ptr, ptr %n.addr, align 8
  %248 = load i32, ptr %247, align 4
  %cmp290 = icmp eq i32 %248, 0
  br i1 %cmp290, label %if.then291, label %if.else292

if.then291:                                       ; preds = %if.end289
  store double 1.000000e+00, ptr %ret_val, align 8
  %249 = load double, ptr %ret_val, align 8
  store double %249, ptr %retval, align 8
  br label %return

if.else292:                                       ; preds = %if.end289
  %250 = load double, ptr %anorm, align 8
  %cmp293 = fcmp oeq double %250, 0.000000e+00
  br i1 %cmp293, label %if.then294, label %if.end295

if.then294:                                       ; preds = %if.else292
  %251 = load double, ptr %ret_val, align 8
  store double %251, ptr %retval, align 8
  br label %return

if.end295:                                        ; preds = %if.else292
  br label %if.end296

if.end296:                                        ; preds = %if.end295
  store double 0.000000e+00, ptr %ainvnm, align 8
  store i32 0, ptr %kase, align 4
  br label %L10

L10:                                              ; preds = %if.end427, %if.end296
  %252 = load ptr, ptr %n.addr, align 8
  %253 = load ptr, ptr %work.addr, align 8
  %254 = load ptr, ptr %n.addr, align 8
  %255 = load i32, ptr %254, align 4
  %add297 = add nsw i32 %255, 1
  %idxprom298 = sext i32 %add297 to i64
  %arrayidx299 = getelementptr inbounds %struct.doublecomplex, ptr %253, i64 %idxprom298
  %256 = load ptr, ptr %work.addr, align 8
  %arrayidx300 = getelementptr inbounds %struct.doublecomplex, ptr %256, i64 1
  %arraydecay = getelementptr inbounds [3 x i32], ptr %isave, i64 0, i64 0
  %call301 = call i32 @zlacn2_(ptr noundef %252, ptr noundef %arrayidx299, ptr noundef %arrayidx300, ptr noundef %ainvnm, ptr noundef %kase, ptr noundef %arraydecay)
  %257 = load i32, ptr %kase, align 4
  %cmp302 = icmp ne i32 %257, 0
  br i1 %cmp302, label %if.then303, label %if.end428

if.then303:                                       ; preds = %L10
  %258 = load i32, ptr %kase, align 4
  %cmp304 = icmp eq i32 %258, 2
  br i1 %cmp304, label %if.then305, label %if.else366

if.then305:                                       ; preds = %if.then303
  %259 = load ptr, ptr %n.addr, align 8
  %260 = load i32, ptr %259, align 4
  store i32 %260, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond306

for.cond306:                                      ; preds = %for.inc331, %if.then305
  %261 = load i32, ptr %i__, align 4
  %262 = load i32, ptr %i__1, align 4
  %cmp307 = icmp sle i32 %261, %262
  br i1 %cmp307, label %for.body308, label %for.end333

for.body308:                                      ; preds = %for.cond306
  %263 = load i32, ptr %i__, align 4
  store i32 %263, ptr %i__2, align 4
  %264 = load i32, ptr %i__, align 4
  store i32 %264, ptr %i__3, align 4
  %265 = load i32, ptr %i__, align 4
  store i32 %265, ptr %i__4, align 4
  %266 = load ptr, ptr %rwork.addr, align 8
  %267 = load i32, ptr %i__4, align 4
  %idxprom309 = sext i32 %267 to i64
  %arrayidx310 = getelementptr inbounds double, ptr %266, i64 %idxprom309
  %268 = load double, ptr %arrayidx310, align 8
  %269 = load ptr, ptr %work.addr, align 8
  %270 = load i32, ptr %i__3, align 4
  %idxprom311 = sext i32 %270 to i64
  %arrayidx312 = getelementptr inbounds %struct.doublecomplex, ptr %269, i64 %idxprom311
  %r313 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx312, i32 0, i32 0
  %271 = load double, ptr %r313, align 8
  %mul314 = fmul double %268, %271
  %r315 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul314, ptr %r315, align 8
  %272 = load ptr, ptr %rwork.addr, align 8
  %273 = load i32, ptr %i__4, align 4
  %idxprom316 = sext i32 %273 to i64
  %arrayidx317 = getelementptr inbounds double, ptr %272, i64 %idxprom316
  %274 = load double, ptr %arrayidx317, align 8
  %275 = load ptr, ptr %work.addr, align 8
  %276 = load i32, ptr %i__3, align 4
  %idxprom318 = sext i32 %276 to i64
  %arrayidx319 = getelementptr inbounds %struct.doublecomplex, ptr %275, i64 %idxprom318
  %i320 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx319, i32 0, i32 1
  %277 = load double, ptr %i320, align 8
  %mul321 = fmul double %274, %277
  %i322 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul321, ptr %i322, align 8
  %r323 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %278 = load double, ptr %r323, align 8
  %279 = load ptr, ptr %work.addr, align 8
  %280 = load i32, ptr %i__2, align 4
  %idxprom324 = sext i32 %280 to i64
  %arrayidx325 = getelementptr inbounds %struct.doublecomplex, ptr %279, i64 %idxprom324
  %r326 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx325, i32 0, i32 0
  store double %278, ptr %r326, align 8
  %i327 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %281 = load double, ptr %i327, align 8
  %282 = load ptr, ptr %work.addr, align 8
  %283 = load i32, ptr %i__2, align 4
  %idxprom328 = sext i32 %283 to i64
  %arrayidx329 = getelementptr inbounds %struct.doublecomplex, ptr %282, i64 %idxprom328
  %i330 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx329, i32 0, i32 1
  store double %281, ptr %i330, align 8
  br label %for.inc331

for.inc331:                                       ; preds = %for.body308
  %284 = load i32, ptr %i__, align 4
  %inc332 = add nsw i32 %284, 1
  store i32 %inc332, ptr %i__, align 4
  br label %for.cond306, !llvm.loop !12

for.end333:                                       ; preds = %for.cond306
  %285 = load i32, ptr %up, align 4
  %tobool334 = icmp ne i32 %285, 0
  br i1 %tobool334, label %if.then335, label %if.else341

if.then335:                                       ; preds = %for.end333
  %286 = load ptr, ptr %n.addr, align 8
  %287 = load ptr, ptr %af.addr, align 8
  %288 = load i32, ptr %af_offset, align 4
  %idxprom336 = sext i32 %288 to i64
  %arrayidx337 = getelementptr inbounds %struct.doublecomplex, ptr %287, i64 %idxprom336
  %289 = load ptr, ptr %ldaf.addr, align 8
  %290 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx338 = getelementptr inbounds i32, ptr %290, i64 1
  %291 = load ptr, ptr %work.addr, align 8
  %arrayidx339 = getelementptr inbounds %struct.doublecomplex, ptr %291, i64 1
  %292 = load ptr, ptr %n.addr, align 8
  %293 = load ptr, ptr %info.addr, align 8
  %call340 = call i32 @zsytrs_(ptr noundef @.str, ptr noundef %286, ptr noundef @c__1, ptr noundef %arrayidx337, ptr noundef %289, ptr noundef %arrayidx338, ptr noundef %arrayidx339, ptr noundef %292, ptr noundef %293)
  br label %if.end347

if.else341:                                       ; preds = %for.end333
  %294 = load ptr, ptr %n.addr, align 8
  %295 = load ptr, ptr %af.addr, align 8
  %296 = load i32, ptr %af_offset, align 4
  %idxprom342 = sext i32 %296 to i64
  %arrayidx343 = getelementptr inbounds %struct.doublecomplex, ptr %295, i64 %idxprom342
  %297 = load ptr, ptr %ldaf.addr, align 8
  %298 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx344 = getelementptr inbounds i32, ptr %298, i64 1
  %299 = load ptr, ptr %work.addr, align 8
  %arrayidx345 = getelementptr inbounds %struct.doublecomplex, ptr %299, i64 1
  %300 = load ptr, ptr %n.addr, align 8
  %301 = load ptr, ptr %info.addr, align 8
  %call346 = call i32 @zsytrs_(ptr noundef @.str.1, ptr noundef %294, ptr noundef @c__1, ptr noundef %arrayidx343, ptr noundef %297, ptr noundef %arrayidx344, ptr noundef %arrayidx345, ptr noundef %300, ptr noundef %301)
  br label %if.end347

if.end347:                                        ; preds = %if.else341, %if.then335
  %302 = load ptr, ptr %n.addr, align 8
  %303 = load i32, ptr %302, align 4
  store i32 %303, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond348

for.cond348:                                      ; preds = %for.inc363, %if.end347
  %304 = load i32, ptr %i__, align 4
  %305 = load i32, ptr %i__1, align 4
  %cmp349 = icmp sle i32 %304, %305
  br i1 %cmp349, label %for.body350, label %for.end365

for.body350:                                      ; preds = %for.cond348
  %306 = load i32, ptr %i__, align 4
  store i32 %306, ptr %i__2, align 4
  %307 = load ptr, ptr %work.addr, align 8
  %308 = load i32, ptr %i__, align 4
  %idxprom351 = sext i32 %308 to i64
  %arrayidx352 = getelementptr inbounds %struct.doublecomplex, ptr %307, i64 %idxprom351
  %309 = load ptr, ptr %x.addr, align 8
  %310 = load i32, ptr %i__, align 4
  %idxprom353 = sext i32 %310 to i64
  %arrayidx354 = getelementptr inbounds %struct.doublecomplex, ptr %309, i64 %idxprom353
  call void @z_div(ptr noundef %z__1, ptr noundef %arrayidx352, ptr noundef %arrayidx354)
  %r355 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %311 = load double, ptr %r355, align 8
  %312 = load ptr, ptr %work.addr, align 8
  %313 = load i32, ptr %i__2, align 4
  %idxprom356 = sext i32 %313 to i64
  %arrayidx357 = getelementptr inbounds %struct.doublecomplex, ptr %312, i64 %idxprom356
  %r358 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx357, i32 0, i32 0
  store double %311, ptr %r358, align 8
  %i359 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %314 = load double, ptr %i359, align 8
  %315 = load ptr, ptr %work.addr, align 8
  %316 = load i32, ptr %i__2, align 4
  %idxprom360 = sext i32 %316 to i64
  %arrayidx361 = getelementptr inbounds %struct.doublecomplex, ptr %315, i64 %idxprom360
  %i362 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx361, i32 0, i32 1
  store double %314, ptr %i362, align 8
  br label %for.inc363

for.inc363:                                       ; preds = %for.body350
  %317 = load i32, ptr %i__, align 4
  %inc364 = add nsw i32 %317, 1
  store i32 %inc364, ptr %i__, align 4
  br label %for.cond348, !llvm.loop !13

for.end365:                                       ; preds = %for.cond348
  br label %if.end427

if.else366:                                       ; preds = %if.then303
  %318 = load ptr, ptr %n.addr, align 8
  %319 = load i32, ptr %318, align 4
  store i32 %319, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond367

for.cond367:                                      ; preds = %for.inc382, %if.else366
  %320 = load i32, ptr %i__, align 4
  %321 = load i32, ptr %i__1, align 4
  %cmp368 = icmp sle i32 %320, %321
  br i1 %cmp368, label %for.body369, label %for.end384

for.body369:                                      ; preds = %for.cond367
  %322 = load i32, ptr %i__, align 4
  store i32 %322, ptr %i__2, align 4
  %323 = load ptr, ptr %work.addr, align 8
  %324 = load i32, ptr %i__, align 4
  %idxprom370 = sext i32 %324 to i64
  %arrayidx371 = getelementptr inbounds %struct.doublecomplex, ptr %323, i64 %idxprom370
  %325 = load ptr, ptr %x.addr, align 8
  %326 = load i32, ptr %i__, align 4
  %idxprom372 = sext i32 %326 to i64
  %arrayidx373 = getelementptr inbounds %struct.doublecomplex, ptr %325, i64 %idxprom372
  call void @z_div(ptr noundef %z__1, ptr noundef %arrayidx371, ptr noundef %arrayidx373)
  %r374 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %327 = load double, ptr %r374, align 8
  %328 = load ptr, ptr %work.addr, align 8
  %329 = load i32, ptr %i__2, align 4
  %idxprom375 = sext i32 %329 to i64
  %arrayidx376 = getelementptr inbounds %struct.doublecomplex, ptr %328, i64 %idxprom375
  %r377 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx376, i32 0, i32 0
  store double %327, ptr %r377, align 8
  %i378 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %330 = load double, ptr %i378, align 8
  %331 = load ptr, ptr %work.addr, align 8
  %332 = load i32, ptr %i__2, align 4
  %idxprom379 = sext i32 %332 to i64
  %arrayidx380 = getelementptr inbounds %struct.doublecomplex, ptr %331, i64 %idxprom379
  %i381 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx380, i32 0, i32 1
  store double %330, ptr %i381, align 8
  br label %for.inc382

for.inc382:                                       ; preds = %for.body369
  %333 = load i32, ptr %i__, align 4
  %inc383 = add nsw i32 %333, 1
  store i32 %inc383, ptr %i__, align 4
  br label %for.cond367, !llvm.loop !14

for.end384:                                       ; preds = %for.cond367
  %334 = load i32, ptr %up, align 4
  %tobool385 = icmp ne i32 %334, 0
  br i1 %tobool385, label %if.then386, label %if.else392

if.then386:                                       ; preds = %for.end384
  %335 = load ptr, ptr %n.addr, align 8
  %336 = load ptr, ptr %af.addr, align 8
  %337 = load i32, ptr %af_offset, align 4
  %idxprom387 = sext i32 %337 to i64
  %arrayidx388 = getelementptr inbounds %struct.doublecomplex, ptr %336, i64 %idxprom387
  %338 = load ptr, ptr %ldaf.addr, align 8
  %339 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx389 = getelementptr inbounds i32, ptr %339, i64 1
  %340 = load ptr, ptr %work.addr, align 8
  %arrayidx390 = getelementptr inbounds %struct.doublecomplex, ptr %340, i64 1
  %341 = load ptr, ptr %n.addr, align 8
  %342 = load ptr, ptr %info.addr, align 8
  %call391 = call i32 @zsytrs_(ptr noundef @.str, ptr noundef %335, ptr noundef @c__1, ptr noundef %arrayidx388, ptr noundef %338, ptr noundef %arrayidx389, ptr noundef %arrayidx390, ptr noundef %341, ptr noundef %342)
  br label %if.end398

if.else392:                                       ; preds = %for.end384
  %343 = load ptr, ptr %n.addr, align 8
  %344 = load ptr, ptr %af.addr, align 8
  %345 = load i32, ptr %af_offset, align 4
  %idxprom393 = sext i32 %345 to i64
  %arrayidx394 = getelementptr inbounds %struct.doublecomplex, ptr %344, i64 %idxprom393
  %346 = load ptr, ptr %ldaf.addr, align 8
  %347 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx395 = getelementptr inbounds i32, ptr %347, i64 1
  %348 = load ptr, ptr %work.addr, align 8
  %arrayidx396 = getelementptr inbounds %struct.doublecomplex, ptr %348, i64 1
  %349 = load ptr, ptr %n.addr, align 8
  %350 = load ptr, ptr %info.addr, align 8
  %call397 = call i32 @zsytrs_(ptr noundef @.str.1, ptr noundef %343, ptr noundef @c__1, ptr noundef %arrayidx394, ptr noundef %346, ptr noundef %arrayidx395, ptr noundef %arrayidx396, ptr noundef %349, ptr noundef %350)
  br label %if.end398

if.end398:                                        ; preds = %if.else392, %if.then386
  %351 = load ptr, ptr %n.addr, align 8
  %352 = load i32, ptr %351, align 4
  store i32 %352, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond399

for.cond399:                                      ; preds = %for.inc424, %if.end398
  %353 = load i32, ptr %i__, align 4
  %354 = load i32, ptr %i__1, align 4
  %cmp400 = icmp sle i32 %353, %354
  br i1 %cmp400, label %for.body401, label %for.end426

for.body401:                                      ; preds = %for.cond399
  %355 = load i32, ptr %i__, align 4
  store i32 %355, ptr %i__2, align 4
  %356 = load i32, ptr %i__, align 4
  store i32 %356, ptr %i__3, align 4
  %357 = load i32, ptr %i__, align 4
  store i32 %357, ptr %i__4, align 4
  %358 = load ptr, ptr %rwork.addr, align 8
  %359 = load i32, ptr %i__4, align 4
  %idxprom402 = sext i32 %359 to i64
  %arrayidx403 = getelementptr inbounds double, ptr %358, i64 %idxprom402
  %360 = load double, ptr %arrayidx403, align 8
  %361 = load ptr, ptr %work.addr, align 8
  %362 = load i32, ptr %i__3, align 4
  %idxprom404 = sext i32 %362 to i64
  %arrayidx405 = getelementptr inbounds %struct.doublecomplex, ptr %361, i64 %idxprom404
  %r406 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx405, i32 0, i32 0
  %363 = load double, ptr %r406, align 8
  %mul407 = fmul double %360, %363
  %r408 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul407, ptr %r408, align 8
  %364 = load ptr, ptr %rwork.addr, align 8
  %365 = load i32, ptr %i__4, align 4
  %idxprom409 = sext i32 %365 to i64
  %arrayidx410 = getelementptr inbounds double, ptr %364, i64 %idxprom409
  %366 = load double, ptr %arrayidx410, align 8
  %367 = load ptr, ptr %work.addr, align 8
  %368 = load i32, ptr %i__3, align 4
  %idxprom411 = sext i32 %368 to i64
  %arrayidx412 = getelementptr inbounds %struct.doublecomplex, ptr %367, i64 %idxprom411
  %i413 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx412, i32 0, i32 1
  %369 = load double, ptr %i413, align 8
  %mul414 = fmul double %366, %369
  %i415 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul414, ptr %i415, align 8
  %r416 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %370 = load double, ptr %r416, align 8
  %371 = load ptr, ptr %work.addr, align 8
  %372 = load i32, ptr %i__2, align 4
  %idxprom417 = sext i32 %372 to i64
  %arrayidx418 = getelementptr inbounds %struct.doublecomplex, ptr %371, i64 %idxprom417
  %r419 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx418, i32 0, i32 0
  store double %370, ptr %r419, align 8
  %i420 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %373 = load double, ptr %i420, align 8
  %374 = load ptr, ptr %work.addr, align 8
  %375 = load i32, ptr %i__2, align 4
  %idxprom421 = sext i32 %375 to i64
  %arrayidx422 = getelementptr inbounds %struct.doublecomplex, ptr %374, i64 %idxprom421
  %i423 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx422, i32 0, i32 1
  store double %373, ptr %i423, align 8
  br label %for.inc424

for.inc424:                                       ; preds = %for.body401
  %376 = load i32, ptr %i__, align 4
  %inc425 = add nsw i32 %376, 1
  store i32 %inc425, ptr %i__, align 4
  br label %for.cond399, !llvm.loop !15

for.end426:                                       ; preds = %for.cond399
  br label %if.end427

if.end427:                                        ; preds = %for.end426, %for.end365
  br label %L10

if.end428:                                        ; preds = %L10
  %377 = load double, ptr %ainvnm, align 8
  %cmp429 = fcmp une double %377, 0.000000e+00
  br i1 %cmp429, label %if.then430, label %if.end431

if.then430:                                       ; preds = %if.end428
  %378 = load double, ptr %ainvnm, align 8
  %div = fdiv double 1.000000e+00, %378
  store double %div, ptr %ret_val, align 8
  br label %if.end431

if.end431:                                        ; preds = %if.then430, %if.end428
  %379 = load double, ptr %ret_val, align 8
  store double %379, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end431, %if.then294, %if.then291, %if.then27
  %380 = load double, ptr %retval, align 8
  ret double %380
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare double @d_imag(ptr noundef) #1

declare i32 @zlacn2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zsytrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @z_div(ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}

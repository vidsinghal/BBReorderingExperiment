; ModuleID = 'samples/97.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/zheswapr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define i32 @zheswapr_(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %i1, ptr noundef %i2) #0 {
entry:
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %i1.addr = alloca ptr, align 8
  %i2.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %z__1 = alloca %struct.doublecomplex, align 8
  %i__ = alloca i32, align 4
  %tmp = alloca %struct.doublecomplex, align 8
  %upper = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %i1, ptr %i1.addr, align 8, !tbaa !4
  store ptr %i2, ptr %i2.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #3
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
  %5 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %5, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4, !tbaa !8
  %6 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %8 = load i32, ptr %7, align 4, !tbaa !8
  %sub = sub nsw i32 %8, 1
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  %12 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %11, %12
  %add1 = add nsw i32 %mul, 1
  %idxprom = sext i32 %add1 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %9, i64 %idxprom
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  %16 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul2 = mul nsw i32 %15, %16
  %add3 = add nsw i32 %mul2, 1
  %idxprom4 = sext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds %struct.doublecomplex, ptr %13, i64 %idxprom4
  %call6 = call i32 @zswap_(ptr noundef %i__1, ptr noundef %arrayidx, ptr noundef @c__1, ptr noundef %arrayidx5, ptr noundef @c__1)
  %17 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  %19 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %21 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul7 = mul nsw i32 %20, %21
  %add8 = add nsw i32 %18, %mul7
  store i32 %add8, ptr %i__1, align 4, !tbaa !8
  %22 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %23 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom9 = sext i32 %23 to i64
  %arrayidx10 = getelementptr inbounds %struct.doublecomplex, ptr %22, i64 %idxprom9
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx10, i32 0, i32 0
  %24 = load double, ptr %r, align 8, !tbaa !10
  %r11 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 0
  store double %24, ptr %r11, align 8, !tbaa !10
  %25 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %26 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom12 = sext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds %struct.doublecomplex, ptr %25, i64 %idxprom12
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx13, i32 0, i32 1
  %27 = load double, ptr %i, align 8, !tbaa !13
  %i14 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 1
  store double %27, ptr %i14, align 8, !tbaa !13
  %28 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %30 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !8
  %32 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul15 = mul nsw i32 %31, %32
  %add16 = add nsw i32 %29, %mul15
  store i32 %add16, ptr %i__1, align 4, !tbaa !8
  %33 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %34 = load i32, ptr %33, align 4, !tbaa !8
  %35 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %37 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul17 = mul nsw i32 %36, %37
  %add18 = add nsw i32 %34, %mul17
  store i32 %add18, ptr %i__2, align 4, !tbaa !8
  %38 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %39 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom19 = sext i32 %39 to i64
  %arrayidx20 = getelementptr inbounds %struct.doublecomplex, ptr %38, i64 %idxprom19
  %r21 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx20, i32 0, i32 0
  %40 = load double, ptr %r21, align 8, !tbaa !10
  %41 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %42 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom22 = sext i32 %42 to i64
  %arrayidx23 = getelementptr inbounds %struct.doublecomplex, ptr %41, i64 %idxprom22
  %r24 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx23, i32 0, i32 0
  store double %40, ptr %r24, align 8, !tbaa !10
  %43 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %44 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom25 = sext i32 %44 to i64
  %arrayidx26 = getelementptr inbounds %struct.doublecomplex, ptr %43, i64 %idxprom25
  %i27 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx26, i32 0, i32 1
  %45 = load double, ptr %i27, align 8, !tbaa !13
  %46 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %47 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom28 = sext i32 %47 to i64
  %arrayidx29 = getelementptr inbounds %struct.doublecomplex, ptr %46, i64 %idxprom28
  %i30 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx29, i32 0, i32 1
  store double %45, ptr %i30, align 8, !tbaa !13
  %48 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %49 = load i32, ptr %48, align 4, !tbaa !8
  %50 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %51 = load i32, ptr %50, align 4, !tbaa !8
  %52 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul31 = mul nsw i32 %51, %52
  %add32 = add nsw i32 %49, %mul31
  store i32 %add32, ptr %i__1, align 4, !tbaa !8
  %r33 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 0
  %53 = load double, ptr %r33, align 8, !tbaa !10
  %54 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %55 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom34 = sext i32 %55 to i64
  %arrayidx35 = getelementptr inbounds %struct.doublecomplex, ptr %54, i64 %idxprom34
  %r36 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx35, i32 0, i32 0
  store double %53, ptr %r36, align 8, !tbaa !10
  %i37 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 1
  %56 = load double, ptr %i37, align 8, !tbaa !13
  %57 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %58 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom38 = sext i32 %58 to i64
  %arrayidx39 = getelementptr inbounds %struct.doublecomplex, ptr %57, i64 %idxprom38
  %i40 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx39, i32 0, i32 1
  store double %56, ptr %i40, align 8, !tbaa !13
  %59 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %60 = load i32, ptr %59, align 4, !tbaa !8
  %61 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %62 = load i32, ptr %61, align 4, !tbaa !8
  %sub41 = sub nsw i32 %60, %62
  %sub42 = sub nsw i32 %sub41, 1
  store i32 %sub42, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %63 = load i32, ptr %i__, align 4, !tbaa !8
  %64 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp = icmp sle i32 %63, %64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %65 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %66 = load i32, ptr %65, align 4, !tbaa !8
  %67 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %69 = load i32, ptr %i__, align 4, !tbaa !8
  %add43 = add nsw i32 %68, %69
  %70 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul44 = mul nsw i32 %add43, %70
  %add45 = add nsw i32 %66, %mul44
  store i32 %add45, ptr %i__2, align 4, !tbaa !8
  %71 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %72 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom46 = sext i32 %72 to i64
  %arrayidx47 = getelementptr inbounds %struct.doublecomplex, ptr %71, i64 %idxprom46
  %r48 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx47, i32 0, i32 0
  %73 = load double, ptr %r48, align 8, !tbaa !10
  %r49 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 0
  store double %73, ptr %r49, align 8, !tbaa !10
  %74 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %75 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom50 = sext i32 %75 to i64
  %arrayidx51 = getelementptr inbounds %struct.doublecomplex, ptr %74, i64 %idxprom50
  %i52 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx51, i32 0, i32 1
  %76 = load double, ptr %i52, align 8, !tbaa !13
  %i53 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 1
  store double %76, ptr %i53, align 8, !tbaa !13
  %77 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %78 = load i32, ptr %77, align 4, !tbaa !8
  %79 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %80 = load i32, ptr %79, align 4, !tbaa !8
  %81 = load i32, ptr %i__, align 4, !tbaa !8
  %add54 = add nsw i32 %80, %81
  %82 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul55 = mul nsw i32 %add54, %82
  %add56 = add nsw i32 %78, %mul55
  store i32 %add56, ptr %i__2, align 4, !tbaa !8
  %83 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %84 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %85 = load i32, ptr %84, align 4, !tbaa !8
  %86 = load i32, ptr %i__, align 4, !tbaa !8
  %add57 = add nsw i32 %85, %86
  %87 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %88 = load i32, ptr %87, align 4, !tbaa !8
  %89 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul58 = mul nsw i32 %88, %89
  %add59 = add nsw i32 %add57, %mul58
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds %struct.doublecomplex, ptr %83, i64 %idxprom60
  call void @d_cnjg(ptr noundef %z__1, ptr noundef %arrayidx61)
  %r62 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %90 = load double, ptr %r62, align 8, !tbaa !10
  %91 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %92 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom63 = sext i32 %92 to i64
  %arrayidx64 = getelementptr inbounds %struct.doublecomplex, ptr %91, i64 %idxprom63
  %r65 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx64, i32 0, i32 0
  store double %90, ptr %r65, align 8, !tbaa !10
  %i66 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %93 = load double, ptr %i66, align 8, !tbaa !13
  %94 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %95 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom67 = sext i32 %95 to i64
  %arrayidx68 = getelementptr inbounds %struct.doublecomplex, ptr %94, i64 %idxprom67
  %i69 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx68, i32 0, i32 1
  store double %93, ptr %i69, align 8, !tbaa !13
  %96 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %97 = load i32, ptr %96, align 4, !tbaa !8
  %98 = load i32, ptr %i__, align 4, !tbaa !8
  %add70 = add nsw i32 %97, %98
  %99 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %100 = load i32, ptr %99, align 4, !tbaa !8
  %101 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul71 = mul nsw i32 %100, %101
  %add72 = add nsw i32 %add70, %mul71
  store i32 %add72, ptr %i__2, align 4, !tbaa !8
  call void @d_cnjg(ptr noundef %z__1, ptr noundef %tmp)
  %r73 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %102 = load double, ptr %r73, align 8, !tbaa !10
  %103 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %104 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom74 = sext i32 %104 to i64
  %arrayidx75 = getelementptr inbounds %struct.doublecomplex, ptr %103, i64 %idxprom74
  %r76 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx75, i32 0, i32 0
  store double %102, ptr %r76, align 8, !tbaa !10
  %i77 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %105 = load double, ptr %i77, align 8, !tbaa !13
  %106 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %107 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom78 = sext i32 %107 to i64
  %arrayidx79 = getelementptr inbounds %struct.doublecomplex, ptr %106, i64 %idxprom78
  %i80 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx79, i32 0, i32 1
  store double %105, ptr %i80, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %108 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %108, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %109 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %110 = load i32, ptr %109, align 4, !tbaa !8
  %111 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %112 = load i32, ptr %111, align 4, !tbaa !8
  %113 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul81 = mul nsw i32 %112, %113
  %add82 = add nsw i32 %110, %mul81
  store i32 %add82, ptr %i__1, align 4, !tbaa !8
  %114 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %115 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %116 = load i32, ptr %115, align 4, !tbaa !8
  %117 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %118 = load i32, ptr %117, align 4, !tbaa !8
  %119 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul83 = mul nsw i32 %118, %119
  %add84 = add nsw i32 %116, %mul83
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds %struct.doublecomplex, ptr %114, i64 %idxprom85
  call void @d_cnjg(ptr noundef %z__1, ptr noundef %arrayidx86)
  %r87 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %120 = load double, ptr %r87, align 8, !tbaa !10
  %121 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %122 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom88 = sext i32 %122 to i64
  %arrayidx89 = getelementptr inbounds %struct.doublecomplex, ptr %121, i64 %idxprom88
  %r90 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx89, i32 0, i32 0
  store double %120, ptr %r90, align 8, !tbaa !10
  %i91 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %123 = load double, ptr %i91, align 8, !tbaa !13
  %124 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %125 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom92 = sext i32 %125 to i64
  %arrayidx93 = getelementptr inbounds %struct.doublecomplex, ptr %124, i64 %idxprom92
  %i94 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx93, i32 0, i32 1
  store double %123, ptr %i94, align 8, !tbaa !13
  %126 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %127 = load i32, ptr %126, align 4, !tbaa !8
  store i32 %127, ptr %i__1, align 4, !tbaa !8
  %128 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %129 = load i32, ptr %128, align 4, !tbaa !8
  %add95 = add nsw i32 %129, 1
  store i32 %add95, ptr %i__, align 4, !tbaa !8
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc135, %for.end
  %130 = load i32, ptr %i__, align 4, !tbaa !8
  %131 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp97 = icmp sle i32 %130, %131
  br i1 %cmp97, label %for.body98, label %for.end137

for.body98:                                       ; preds = %for.cond96
  %132 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %133 = load i32, ptr %132, align 4, !tbaa !8
  %134 = load i32, ptr %i__, align 4, !tbaa !8
  %135 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul99 = mul nsw i32 %134, %135
  %add100 = add nsw i32 %133, %mul99
  store i32 %add100, ptr %i__2, align 4, !tbaa !8
  %136 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %137 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom101 = sext i32 %137 to i64
  %arrayidx102 = getelementptr inbounds %struct.doublecomplex, ptr %136, i64 %idxprom101
  %r103 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx102, i32 0, i32 0
  %138 = load double, ptr %r103, align 8, !tbaa !10
  %r104 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 0
  store double %138, ptr %r104, align 8, !tbaa !10
  %139 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %140 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom105 = sext i32 %140 to i64
  %arrayidx106 = getelementptr inbounds %struct.doublecomplex, ptr %139, i64 %idxprom105
  %i107 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx106, i32 0, i32 1
  %141 = load double, ptr %i107, align 8, !tbaa !13
  %i108 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 1
  store double %141, ptr %i108, align 8, !tbaa !13
  %142 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %143 = load i32, ptr %142, align 4, !tbaa !8
  %144 = load i32, ptr %i__, align 4, !tbaa !8
  %145 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul109 = mul nsw i32 %144, %145
  %add110 = add nsw i32 %143, %mul109
  store i32 %add110, ptr %i__2, align 4, !tbaa !8
  %146 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %147 = load i32, ptr %146, align 4, !tbaa !8
  %148 = load i32, ptr %i__, align 4, !tbaa !8
  %149 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul111 = mul nsw i32 %148, %149
  %add112 = add nsw i32 %147, %mul111
  store i32 %add112, ptr %i__3, align 4, !tbaa !8
  %150 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %151 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom113 = sext i32 %151 to i64
  %arrayidx114 = getelementptr inbounds %struct.doublecomplex, ptr %150, i64 %idxprom113
  %r115 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx114, i32 0, i32 0
  %152 = load double, ptr %r115, align 8, !tbaa !10
  %153 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %154 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom116 = sext i32 %154 to i64
  %arrayidx117 = getelementptr inbounds %struct.doublecomplex, ptr %153, i64 %idxprom116
  %r118 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx117, i32 0, i32 0
  store double %152, ptr %r118, align 8, !tbaa !10
  %155 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %156 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom119 = sext i32 %156 to i64
  %arrayidx120 = getelementptr inbounds %struct.doublecomplex, ptr %155, i64 %idxprom119
  %i121 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx120, i32 0, i32 1
  %157 = load double, ptr %i121, align 8, !tbaa !13
  %158 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %159 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom122 = sext i32 %159 to i64
  %arrayidx123 = getelementptr inbounds %struct.doublecomplex, ptr %158, i64 %idxprom122
  %i124 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx123, i32 0, i32 1
  store double %157, ptr %i124, align 8, !tbaa !13
  %160 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %161 = load i32, ptr %160, align 4, !tbaa !8
  %162 = load i32, ptr %i__, align 4, !tbaa !8
  %163 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul125 = mul nsw i32 %162, %163
  %add126 = add nsw i32 %161, %mul125
  store i32 %add126, ptr %i__2, align 4, !tbaa !8
  %r127 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 0
  %164 = load double, ptr %r127, align 8, !tbaa !10
  %165 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %166 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom128 = sext i32 %166 to i64
  %arrayidx129 = getelementptr inbounds %struct.doublecomplex, ptr %165, i64 %idxprom128
  %r130 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx129, i32 0, i32 0
  store double %164, ptr %r130, align 8, !tbaa !10
  %i131 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 1
  %167 = load double, ptr %i131, align 8, !tbaa !13
  %168 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %169 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom132 = sext i32 %169 to i64
  %arrayidx133 = getelementptr inbounds %struct.doublecomplex, ptr %168, i64 %idxprom132
  %i134 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx133, i32 0, i32 1
  store double %167, ptr %i134, align 8, !tbaa !13
  br label %for.inc135

for.inc135:                                       ; preds = %for.body98
  %170 = load i32, ptr %i__, align 4, !tbaa !8
  %inc136 = add nsw i32 %170, 1
  store i32 %inc136, ptr %i__, align 4, !tbaa !8
  br label %for.cond96, !llvm.loop !16

for.end137:                                       ; preds = %for.cond96
  br label %if.end

if.else:                                          ; preds = %entry
  %171 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %172 = load i32, ptr %171, align 4, !tbaa !8
  %sub138 = sub nsw i32 %172, 1
  store i32 %sub138, ptr %i__1, align 4, !tbaa !8
  %173 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %174 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %175 = load i32, ptr %174, align 4, !tbaa !8
  %176 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add139 = add nsw i32 %175, %176
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds %struct.doublecomplex, ptr %173, i64 %idxprom140
  %177 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %178 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %179 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %180 = load i32, ptr %179, align 4, !tbaa !8
  %181 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add142 = add nsw i32 %180, %181
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds %struct.doublecomplex, ptr %178, i64 %idxprom143
  %182 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call145 = call i32 @zswap_(ptr noundef %i__1, ptr noundef %arrayidx141, ptr noundef %177, ptr noundef %arrayidx144, ptr noundef %182)
  %183 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %184 = load i32, ptr %183, align 4, !tbaa !8
  %185 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %186 = load i32, ptr %185, align 4, !tbaa !8
  %187 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul146 = mul nsw i32 %186, %187
  %add147 = add nsw i32 %184, %mul146
  store i32 %add147, ptr %i__1, align 4, !tbaa !8
  %188 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %189 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom148 = sext i32 %189 to i64
  %arrayidx149 = getelementptr inbounds %struct.doublecomplex, ptr %188, i64 %idxprom148
  %r150 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx149, i32 0, i32 0
  %190 = load double, ptr %r150, align 8, !tbaa !10
  %r151 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 0
  store double %190, ptr %r151, align 8, !tbaa !10
  %191 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %192 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom152 = sext i32 %192 to i64
  %arrayidx153 = getelementptr inbounds %struct.doublecomplex, ptr %191, i64 %idxprom152
  %i154 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx153, i32 0, i32 1
  %193 = load double, ptr %i154, align 8, !tbaa !13
  %i155 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 1
  store double %193, ptr %i155, align 8, !tbaa !13
  %194 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %195 = load i32, ptr %194, align 4, !tbaa !8
  %196 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %197 = load i32, ptr %196, align 4, !tbaa !8
  %198 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul156 = mul nsw i32 %197, %198
  %add157 = add nsw i32 %195, %mul156
  store i32 %add157, ptr %i__1, align 4, !tbaa !8
  %199 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %200 = load i32, ptr %199, align 4, !tbaa !8
  %201 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %202 = load i32, ptr %201, align 4, !tbaa !8
  %203 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul158 = mul nsw i32 %202, %203
  %add159 = add nsw i32 %200, %mul158
  store i32 %add159, ptr %i__2, align 4, !tbaa !8
  %204 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %205 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom160 = sext i32 %205 to i64
  %arrayidx161 = getelementptr inbounds %struct.doublecomplex, ptr %204, i64 %idxprom160
  %r162 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx161, i32 0, i32 0
  %206 = load double, ptr %r162, align 8, !tbaa !10
  %207 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %208 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom163 = sext i32 %208 to i64
  %arrayidx164 = getelementptr inbounds %struct.doublecomplex, ptr %207, i64 %idxprom163
  %r165 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx164, i32 0, i32 0
  store double %206, ptr %r165, align 8, !tbaa !10
  %209 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %210 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom166 = sext i32 %210 to i64
  %arrayidx167 = getelementptr inbounds %struct.doublecomplex, ptr %209, i64 %idxprom166
  %i168 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx167, i32 0, i32 1
  %211 = load double, ptr %i168, align 8, !tbaa !13
  %212 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %213 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom169 = sext i32 %213 to i64
  %arrayidx170 = getelementptr inbounds %struct.doublecomplex, ptr %212, i64 %idxprom169
  %i171 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx170, i32 0, i32 1
  store double %211, ptr %i171, align 8, !tbaa !13
  %214 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %215 = load i32, ptr %214, align 4, !tbaa !8
  %216 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %217 = load i32, ptr %216, align 4, !tbaa !8
  %218 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul172 = mul nsw i32 %217, %218
  %add173 = add nsw i32 %215, %mul172
  store i32 %add173, ptr %i__1, align 4, !tbaa !8
  %r174 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 0
  %219 = load double, ptr %r174, align 8, !tbaa !10
  %220 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %221 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom175 = sext i32 %221 to i64
  %arrayidx176 = getelementptr inbounds %struct.doublecomplex, ptr %220, i64 %idxprom175
  %r177 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx176, i32 0, i32 0
  store double %219, ptr %r177, align 8, !tbaa !10
  %i178 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 1
  %222 = load double, ptr %i178, align 8, !tbaa !13
  %223 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %224 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom179 = sext i32 %224 to i64
  %arrayidx180 = getelementptr inbounds %struct.doublecomplex, ptr %223, i64 %idxprom179
  %i181 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx180, i32 0, i32 1
  store double %222, ptr %i181, align 8, !tbaa !13
  %225 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %226 = load i32, ptr %225, align 4, !tbaa !8
  %227 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %228 = load i32, ptr %227, align 4, !tbaa !8
  %sub182 = sub nsw i32 %226, %228
  %sub183 = sub nsw i32 %sub182, 1
  store i32 %sub183, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc225, %if.else
  %229 = load i32, ptr %i__, align 4, !tbaa !8
  %230 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp185 = icmp sle i32 %229, %230
  br i1 %cmp185, label %for.body186, label %for.end227

for.body186:                                      ; preds = %for.cond184
  %231 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %232 = load i32, ptr %231, align 4, !tbaa !8
  %233 = load i32, ptr %i__, align 4, !tbaa !8
  %add187 = add nsw i32 %232, %233
  %234 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %235 = load i32, ptr %234, align 4, !tbaa !8
  %236 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul188 = mul nsw i32 %235, %236
  %add189 = add nsw i32 %add187, %mul188
  store i32 %add189, ptr %i__2, align 4, !tbaa !8
  %237 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %238 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom190 = sext i32 %238 to i64
  %arrayidx191 = getelementptr inbounds %struct.doublecomplex, ptr %237, i64 %idxprom190
  %r192 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx191, i32 0, i32 0
  %239 = load double, ptr %r192, align 8, !tbaa !10
  %r193 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 0
  store double %239, ptr %r193, align 8, !tbaa !10
  %240 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %241 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom194 = sext i32 %241 to i64
  %arrayidx195 = getelementptr inbounds %struct.doublecomplex, ptr %240, i64 %idxprom194
  %i196 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx195, i32 0, i32 1
  %242 = load double, ptr %i196, align 8, !tbaa !13
  %i197 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 1
  store double %242, ptr %i197, align 8, !tbaa !13
  %243 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %244 = load i32, ptr %243, align 4, !tbaa !8
  %245 = load i32, ptr %i__, align 4, !tbaa !8
  %add198 = add nsw i32 %244, %245
  %246 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %247 = load i32, ptr %246, align 4, !tbaa !8
  %248 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul199 = mul nsw i32 %247, %248
  %add200 = add nsw i32 %add198, %mul199
  store i32 %add200, ptr %i__2, align 4, !tbaa !8
  %249 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %250 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %251 = load i32, ptr %250, align 4, !tbaa !8
  %252 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %253 = load i32, ptr %252, align 4, !tbaa !8
  %254 = load i32, ptr %i__, align 4, !tbaa !8
  %add201 = add nsw i32 %253, %254
  %255 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul202 = mul nsw i32 %add201, %255
  %add203 = add nsw i32 %251, %mul202
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds %struct.doublecomplex, ptr %249, i64 %idxprom204
  call void @d_cnjg(ptr noundef %z__1, ptr noundef %arrayidx205)
  %r206 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %256 = load double, ptr %r206, align 8, !tbaa !10
  %257 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %258 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom207 = sext i32 %258 to i64
  %arrayidx208 = getelementptr inbounds %struct.doublecomplex, ptr %257, i64 %idxprom207
  %r209 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx208, i32 0, i32 0
  store double %256, ptr %r209, align 8, !tbaa !10
  %i210 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %259 = load double, ptr %i210, align 8, !tbaa !13
  %260 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %261 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom211 = sext i32 %261 to i64
  %arrayidx212 = getelementptr inbounds %struct.doublecomplex, ptr %260, i64 %idxprom211
  %i213 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx212, i32 0, i32 1
  store double %259, ptr %i213, align 8, !tbaa !13
  %262 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %263 = load i32, ptr %262, align 4, !tbaa !8
  %264 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %265 = load i32, ptr %264, align 4, !tbaa !8
  %266 = load i32, ptr %i__, align 4, !tbaa !8
  %add214 = add nsw i32 %265, %266
  %267 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul215 = mul nsw i32 %add214, %267
  %add216 = add nsw i32 %263, %mul215
  store i32 %add216, ptr %i__2, align 4, !tbaa !8
  call void @d_cnjg(ptr noundef %z__1, ptr noundef %tmp)
  %r217 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %268 = load double, ptr %r217, align 8, !tbaa !10
  %269 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %270 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom218 = sext i32 %270 to i64
  %arrayidx219 = getelementptr inbounds %struct.doublecomplex, ptr %269, i64 %idxprom218
  %r220 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx219, i32 0, i32 0
  store double %268, ptr %r220, align 8, !tbaa !10
  %i221 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %271 = load double, ptr %i221, align 8, !tbaa !13
  %272 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %273 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom222 = sext i32 %273 to i64
  %arrayidx223 = getelementptr inbounds %struct.doublecomplex, ptr %272, i64 %idxprom222
  %i224 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx223, i32 0, i32 1
  store double %271, ptr %i224, align 8, !tbaa !13
  br label %for.inc225

for.inc225:                                       ; preds = %for.body186
  %274 = load i32, ptr %i__, align 4, !tbaa !8
  %inc226 = add nsw i32 %274, 1
  store i32 %inc226, ptr %i__, align 4, !tbaa !8
  br label %for.cond184, !llvm.loop !17

for.end227:                                       ; preds = %for.cond184
  %275 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %276 = load i32, ptr %275, align 4, !tbaa !8
  %277 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %278 = load i32, ptr %277, align 4, !tbaa !8
  %279 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul228 = mul nsw i32 %278, %279
  %add229 = add nsw i32 %276, %mul228
  store i32 %add229, ptr %i__1, align 4, !tbaa !8
  %280 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %281 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %282 = load i32, ptr %281, align 4, !tbaa !8
  %283 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %284 = load i32, ptr %283, align 4, !tbaa !8
  %285 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul230 = mul nsw i32 %284, %285
  %add231 = add nsw i32 %282, %mul230
  %idxprom232 = sext i32 %add231 to i64
  %arrayidx233 = getelementptr inbounds %struct.doublecomplex, ptr %280, i64 %idxprom232
  call void @d_cnjg(ptr noundef %z__1, ptr noundef %arrayidx233)
  %r234 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %286 = load double, ptr %r234, align 8, !tbaa !10
  %287 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %288 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom235 = sext i32 %288 to i64
  %arrayidx236 = getelementptr inbounds %struct.doublecomplex, ptr %287, i64 %idxprom235
  %r237 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx236, i32 0, i32 0
  store double %286, ptr %r237, align 8, !tbaa !10
  %i238 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %289 = load double, ptr %i238, align 8, !tbaa !13
  %290 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %291 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom239 = sext i32 %291 to i64
  %arrayidx240 = getelementptr inbounds %struct.doublecomplex, ptr %290, i64 %idxprom239
  %i241 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx240, i32 0, i32 1
  store double %289, ptr %i241, align 8, !tbaa !13
  %292 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %293 = load i32, ptr %292, align 4, !tbaa !8
  store i32 %293, ptr %i__1, align 4, !tbaa !8
  %294 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %295 = load i32, ptr %294, align 4, !tbaa !8
  %add242 = add nsw i32 %295, 1
  store i32 %add242, ptr %i__, align 4, !tbaa !8
  br label %for.cond243

for.cond243:                                      ; preds = %for.inc282, %for.end227
  %296 = load i32, ptr %i__, align 4, !tbaa !8
  %297 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp244 = icmp sle i32 %296, %297
  br i1 %cmp244, label %for.body245, label %for.end284

for.body245:                                      ; preds = %for.cond243
  %298 = load i32, ptr %i__, align 4, !tbaa !8
  %299 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %300 = load i32, ptr %299, align 4, !tbaa !8
  %301 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul246 = mul nsw i32 %300, %301
  %add247 = add nsw i32 %298, %mul246
  store i32 %add247, ptr %i__2, align 4, !tbaa !8
  %302 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %303 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom248 = sext i32 %303 to i64
  %arrayidx249 = getelementptr inbounds %struct.doublecomplex, ptr %302, i64 %idxprom248
  %r250 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx249, i32 0, i32 0
  %304 = load double, ptr %r250, align 8, !tbaa !10
  %r251 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 0
  store double %304, ptr %r251, align 8, !tbaa !10
  %305 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %306 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom252 = sext i32 %306 to i64
  %arrayidx253 = getelementptr inbounds %struct.doublecomplex, ptr %305, i64 %idxprom252
  %i254 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx253, i32 0, i32 1
  %307 = load double, ptr %i254, align 8, !tbaa !13
  %i255 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 1
  store double %307, ptr %i255, align 8, !tbaa !13
  %308 = load i32, ptr %i__, align 4, !tbaa !8
  %309 = load ptr, ptr %i1.addr, align 8, !tbaa !4
  %310 = load i32, ptr %309, align 4, !tbaa !8
  %311 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul256 = mul nsw i32 %310, %311
  %add257 = add nsw i32 %308, %mul256
  store i32 %add257, ptr %i__2, align 4, !tbaa !8
  %312 = load i32, ptr %i__, align 4, !tbaa !8
  %313 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %314 = load i32, ptr %313, align 4, !tbaa !8
  %315 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul258 = mul nsw i32 %314, %315
  %add259 = add nsw i32 %312, %mul258
  store i32 %add259, ptr %i__3, align 4, !tbaa !8
  %316 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %317 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom260 = sext i32 %317 to i64
  %arrayidx261 = getelementptr inbounds %struct.doublecomplex, ptr %316, i64 %idxprom260
  %r262 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx261, i32 0, i32 0
  %318 = load double, ptr %r262, align 8, !tbaa !10
  %319 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %320 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom263 = sext i32 %320 to i64
  %arrayidx264 = getelementptr inbounds %struct.doublecomplex, ptr %319, i64 %idxprom263
  %r265 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx264, i32 0, i32 0
  store double %318, ptr %r265, align 8, !tbaa !10
  %321 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %322 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom266 = sext i32 %322 to i64
  %arrayidx267 = getelementptr inbounds %struct.doublecomplex, ptr %321, i64 %idxprom266
  %i268 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx267, i32 0, i32 1
  %323 = load double, ptr %i268, align 8, !tbaa !13
  %324 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %325 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom269 = sext i32 %325 to i64
  %arrayidx270 = getelementptr inbounds %struct.doublecomplex, ptr %324, i64 %idxprom269
  %i271 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx270, i32 0, i32 1
  store double %323, ptr %i271, align 8, !tbaa !13
  %326 = load i32, ptr %i__, align 4, !tbaa !8
  %327 = load ptr, ptr %i2.addr, align 8, !tbaa !4
  %328 = load i32, ptr %327, align 4, !tbaa !8
  %329 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul272 = mul nsw i32 %328, %329
  %add273 = add nsw i32 %326, %mul272
  store i32 %add273, ptr %i__2, align 4, !tbaa !8
  %r274 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 0
  %330 = load double, ptr %r274, align 8, !tbaa !10
  %331 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %332 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom275 = sext i32 %332 to i64
  %arrayidx276 = getelementptr inbounds %struct.doublecomplex, ptr %331, i64 %idxprom275
  %r277 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx276, i32 0, i32 0
  store double %330, ptr %r277, align 8, !tbaa !10
  %i278 = getelementptr inbounds %struct.doublecomplex, ptr %tmp, i32 0, i32 1
  %333 = load double, ptr %i278, align 8, !tbaa !13
  %334 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %335 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom279 = sext i32 %335 to i64
  %arrayidx280 = getelementptr inbounds %struct.doublecomplex, ptr %334, i64 %idxprom279
  %i281 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx280, i32 0, i32 1
  store double %333, ptr %i281, align 8, !tbaa !13
  br label %for.inc282

for.inc282:                                       ; preds = %for.body245
  %336 = load i32, ptr %i__, align 4, !tbaa !8
  %inc283 = add nsw i32 %336, 1
  store i32 %inc283, ptr %i__, align 4, !tbaa !8
  br label %for.cond243, !llvm.loop !18

for.end284:                                       ; preds = %for.cond243
  br label %if.end

if.end:                                           ; preds = %for.end284, %for.end137
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

declare i32 @zswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @d_cnjg(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 8}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !12, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}

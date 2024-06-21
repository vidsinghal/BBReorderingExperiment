; ModuleID = 'samples/195.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/clahrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c_b2 = internal global %struct.complex { float 1.000000e+00, float 0.000000e+00 }, align 4
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Conjugate transpose\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@c_b1 = internal global %struct.complex zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define i32 @clahrd_(ptr noundef %n, ptr noundef %k, ptr noundef %nb, ptr noundef %a, ptr noundef %lda, ptr noundef %tau, ptr noundef %t, ptr noundef %ldt, ptr noundef %y, ptr noundef %ldy) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %nb.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %ldt.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %ldy.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %t_dim1 = alloca i32, align 4
  %t_offset = alloca i32, align 4
  %y_dim1 = alloca i32, align 4
  %y_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %q__1 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %ei = alloca %struct.complex, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %nb, ptr %nb.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %tau, ptr %tau.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %ldt, ptr %ldt.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %ldy, ptr %ldy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ei) #3
  %0 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %tau.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %2 = load i32, ptr %1, align 4, !tbaa !8
  store i32 %2, ptr %a_dim1, align 4, !tbaa !8
  %3 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %3
  store i32 %add, ptr %a_offset, align 4, !tbaa !8
  %4 = load i32, ptr %a_offset, align 4, !tbaa !8
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %4 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %5, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ldt.addr, align 8, !tbaa !4
  %7 = load i32, ptr %6, align 4, !tbaa !8
  store i32 %7, ptr %t_dim1, align 4, !tbaa !8
  %8 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %8
  store i32 %add1, ptr %t_offset, align 4, !tbaa !8
  %9 = load i32, ptr %t_offset, align 4, !tbaa !8
  %10 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %t.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %12 = load i32, ptr %11, align 4, !tbaa !8
  store i32 %12, ptr %y_dim1, align 4, !tbaa !8
  %13 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add5 = add nsw i32 1, %13
  store i32 %add5, ptr %y_offset, align 4, !tbaa !8
  %14 = load i32, ptr %y_offset, align 4, !tbaa !8
  %15 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %idx.ext6 = sext i32 %14 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds %struct.complex, ptr %15, i64 %idx.neg7
  store ptr %add.ptr8, ptr %y.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %17 = load i32, ptr %16, align 4, !tbaa !8
  %cmp = icmp sle i32 %17, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %19 = load i32, ptr %18, align 4, !tbaa !8
  store i32 %19, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, ptr %i__, align 4, !tbaa !8
  %21 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp9 = icmp sle i32 %20, %21
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, ptr %i__, align 4, !tbaa !8
  %cmp10 = icmp sgt i32 %22, 1
  br i1 %cmp10, label %if.then11, label %if.end137

if.then11:                                        ; preds = %for.body
  %23 = load i32, ptr %i__, align 4, !tbaa !8
  %sub = sub nsw i32 %23, 1
  store i32 %sub, ptr %i__2, align 4, !tbaa !8
  %24 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %27 = load i32, ptr %i__, align 4, !tbaa !8
  %add12 = add nsw i32 %26, %27
  %sub13 = sub nsw i32 %add12, 1
  %28 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add14 = add nsw i32 %sub13, %28
  %idxprom = sext i32 %add14 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %24, i64 %idxprom
  %29 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call = call i32 @clacgv_(ptr noundef %i__2, ptr noundef %arrayidx, ptr noundef %29)
  %30 = load i32, ptr %i__, align 4, !tbaa !8
  %sub15 = sub nsw i32 %30, 1
  store i32 %sub15, ptr %i__2, align 4, !tbaa !8
  %r = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r, align 4, !tbaa !10
  %i = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i, align 4, !tbaa !13
  %31 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %32 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %33 = load i32, ptr %y_offset, align 4, !tbaa !8
  %idxprom16 = sext i32 %33 to i64
  %arrayidx17 = getelementptr inbounds %struct.complex, ptr %32, i64 %idxprom16
  %34 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %36 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %37 = load i32, ptr %36, align 4, !tbaa !8
  %38 = load i32, ptr %i__, align 4, !tbaa !8
  %add18 = add nsw i32 %37, %38
  %sub19 = sub nsw i32 %add18, 1
  %39 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add20 = add nsw i32 %sub19, %39
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds %struct.complex, ptr %35, i64 %idxprom21
  %40 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %42 = load i32, ptr %i__, align 4, !tbaa !8
  %43 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %42, %43
  %add23 = add nsw i32 %mul, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds %struct.complex, ptr %41, i64 %idxprom24
  %call26 = call i32 @cgemv_(ptr noundef @.str, ptr noundef %31, ptr noundef %i__2, ptr noundef %q__1, ptr noundef %arrayidx17, ptr noundef %34, ptr noundef %arrayidx22, ptr noundef %40, ptr noundef @c_b2, ptr noundef %arrayidx25, ptr noundef @c__1)
  %44 = load i32, ptr %i__, align 4, !tbaa !8
  %sub27 = sub nsw i32 %44, 1
  store i32 %sub27, ptr %i__2, align 4, !tbaa !8
  %45 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %47 = load i32, ptr %46, align 4, !tbaa !8
  %48 = load i32, ptr %i__, align 4, !tbaa !8
  %add28 = add nsw i32 %47, %48
  %sub29 = sub nsw i32 %add28, 1
  %49 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add30 = add nsw i32 %sub29, %49
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds %struct.complex, ptr %45, i64 %idxprom31
  %50 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call33 = call i32 @clacgv_(ptr noundef %i__2, ptr noundef %arrayidx32, ptr noundef %50)
  %51 = load i32, ptr %i__, align 4, !tbaa !8
  %sub34 = sub nsw i32 %51, 1
  store i32 %sub34, ptr %i__2, align 4, !tbaa !8
  %52 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %54 = load i32, ptr %53, align 4, !tbaa !8
  %add35 = add nsw i32 %54, 1
  %55 = load i32, ptr %i__, align 4, !tbaa !8
  %56 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul36 = mul nsw i32 %55, %56
  %add37 = add nsw i32 %add35, %mul36
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds %struct.complex, ptr %52, i64 %idxprom38
  %57 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %60 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul40 = mul nsw i32 %59, %60
  %add41 = add nsw i32 %mul40, 1
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds %struct.complex, ptr %57, i64 %idxprom42
  %call44 = call i32 @ccopy_(ptr noundef %i__2, ptr noundef %arrayidx39, ptr noundef @c__1, ptr noundef %arrayidx43, ptr noundef @c__1)
  %61 = load i32, ptr %i__, align 4, !tbaa !8
  %sub45 = sub nsw i32 %61, 1
  store i32 %sub45, ptr %i__2, align 4, !tbaa !8
  %62 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %63 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %64 = load i32, ptr %63, align 4, !tbaa !8
  %add46 = add nsw i32 %64, 1
  %65 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add47 = add nsw i32 %add46, %65
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds %struct.complex, ptr %62, i64 %idxprom48
  %66 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %67 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %68 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %69 = load i32, ptr %68, align 4, !tbaa !8
  %70 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul50 = mul nsw i32 %69, %70
  %add51 = add nsw i32 %mul50, 1
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds %struct.complex, ptr %67, i64 %idxprom52
  %call54 = call i32 @ctrmv_(ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef %i__2, ptr noundef %arrayidx49, ptr noundef %66, ptr noundef %arrayidx53, ptr noundef @c__1)
  %71 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %72 = load i32, ptr %71, align 4, !tbaa !8
  %73 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %74 = load i32, ptr %73, align 4, !tbaa !8
  %sub55 = sub nsw i32 %72, %74
  %75 = load i32, ptr %i__, align 4, !tbaa !8
  %sub56 = sub nsw i32 %sub55, %75
  %add57 = add nsw i32 %sub56, 1
  store i32 %add57, ptr %i__2, align 4, !tbaa !8
  %76 = load i32, ptr %i__, align 4, !tbaa !8
  %sub58 = sub nsw i32 %76, 1
  store i32 %sub58, ptr %i__3, align 4, !tbaa !8
  %77 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %78 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %79 = load i32, ptr %78, align 4, !tbaa !8
  %80 = load i32, ptr %i__, align 4, !tbaa !8
  %add59 = add nsw i32 %79, %80
  %81 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add60 = add nsw i32 %add59, %81
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds %struct.complex, ptr %77, i64 %idxprom61
  %82 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %83 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %84 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %85 = load i32, ptr %84, align 4, !tbaa !8
  %86 = load i32, ptr %i__, align 4, !tbaa !8
  %add63 = add nsw i32 %85, %86
  %87 = load i32, ptr %i__, align 4, !tbaa !8
  %88 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul64 = mul nsw i32 %87, %88
  %add65 = add nsw i32 %add63, %mul64
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds %struct.complex, ptr %83, i64 %idxprom66
  %89 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %90 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %91 = load i32, ptr %90, align 4, !tbaa !8
  %92 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul68 = mul nsw i32 %91, %92
  %add69 = add nsw i32 %mul68, 1
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds %struct.complex, ptr %89, i64 %idxprom70
  %call72 = call i32 @cgemv_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx62, ptr noundef %82, ptr noundef %arrayidx67, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx71, ptr noundef @c__1)
  %93 = load i32, ptr %i__, align 4, !tbaa !8
  %sub73 = sub nsw i32 %93, 1
  store i32 %sub73, ptr %i__2, align 4, !tbaa !8
  %94 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %95 = load i32, ptr %t_offset, align 4, !tbaa !8
  %idxprom74 = sext i32 %95 to i64
  %arrayidx75 = getelementptr inbounds %struct.complex, ptr %94, i64 %idxprom74
  %96 = load ptr, ptr %ldt.addr, align 8, !tbaa !4
  %97 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %98 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %99 = load i32, ptr %98, align 4, !tbaa !8
  %100 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul76 = mul nsw i32 %99, %100
  %add77 = add nsw i32 %mul76, 1
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds %struct.complex, ptr %97, i64 %idxprom78
  %call80 = call i32 @ctrmv_(ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef %i__2, ptr noundef %arrayidx75, ptr noundef %96, ptr noundef %arrayidx79, ptr noundef @c__1)
  %101 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %102 = load i32, ptr %101, align 4, !tbaa !8
  %103 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %104 = load i32, ptr %103, align 4, !tbaa !8
  %sub81 = sub nsw i32 %102, %104
  %105 = load i32, ptr %i__, align 4, !tbaa !8
  %sub82 = sub nsw i32 %sub81, %105
  %add83 = add nsw i32 %sub82, 1
  store i32 %add83, ptr %i__2, align 4, !tbaa !8
  %106 = load i32, ptr %i__, align 4, !tbaa !8
  %sub84 = sub nsw i32 %106, 1
  store i32 %sub84, ptr %i__3, align 4, !tbaa !8
  %r85 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r85, align 4, !tbaa !10
  %i86 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i86, align 4, !tbaa !13
  %107 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %108 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %109 = load i32, ptr %108, align 4, !tbaa !8
  %110 = load i32, ptr %i__, align 4, !tbaa !8
  %add87 = add nsw i32 %109, %110
  %111 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add88 = add nsw i32 %add87, %111
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds %struct.complex, ptr %107, i64 %idxprom89
  %112 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %113 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %114 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %115 = load i32, ptr %114, align 4, !tbaa !8
  %116 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul91 = mul nsw i32 %115, %116
  %add92 = add nsw i32 %mul91, 1
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds %struct.complex, ptr %113, i64 %idxprom93
  %117 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %118 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %119 = load i32, ptr %118, align 4, !tbaa !8
  %120 = load i32, ptr %i__, align 4, !tbaa !8
  %add95 = add nsw i32 %119, %120
  %121 = load i32, ptr %i__, align 4, !tbaa !8
  %122 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul96 = mul nsw i32 %121, %122
  %add97 = add nsw i32 %add95, %mul96
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds %struct.complex, ptr %117, i64 %idxprom98
  %call100 = call i32 @cgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %q__1, ptr noundef %arrayidx90, ptr noundef %112, ptr noundef %arrayidx94, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx99, ptr noundef @c__1)
  %123 = load i32, ptr %i__, align 4, !tbaa !8
  %sub101 = sub nsw i32 %123, 1
  store i32 %sub101, ptr %i__2, align 4, !tbaa !8
  %124 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %125 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %126 = load i32, ptr %125, align 4, !tbaa !8
  %add102 = add nsw i32 %126, 1
  %127 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add103 = add nsw i32 %add102, %127
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds %struct.complex, ptr %124, i64 %idxprom104
  %128 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %129 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %130 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %131 = load i32, ptr %130, align 4, !tbaa !8
  %132 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul106 = mul nsw i32 %131, %132
  %add107 = add nsw i32 %mul106, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds %struct.complex, ptr %129, i64 %idxprom108
  %call110 = call i32 @ctrmv_(ptr noundef @.str.1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef %i__2, ptr noundef %arrayidx105, ptr noundef %128, ptr noundef %arrayidx109, ptr noundef @c__1)
  %133 = load i32, ptr %i__, align 4, !tbaa !8
  %sub111 = sub nsw i32 %133, 1
  store i32 %sub111, ptr %i__2, align 4, !tbaa !8
  %r112 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r112, align 4, !tbaa !10
  %i113 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i113, align 4, !tbaa !13
  %134 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %135 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %136 = load i32, ptr %135, align 4, !tbaa !8
  %137 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul114 = mul nsw i32 %136, %137
  %add115 = add nsw i32 %mul114, 1
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds %struct.complex, ptr %134, i64 %idxprom116
  %138 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %139 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %140 = load i32, ptr %139, align 4, !tbaa !8
  %add118 = add nsw i32 %140, 1
  %141 = load i32, ptr %i__, align 4, !tbaa !8
  %142 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul119 = mul nsw i32 %141, %142
  %add120 = add nsw i32 %add118, %mul119
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds %struct.complex, ptr %138, i64 %idxprom121
  %call123 = call i32 @caxpy_(ptr noundef %i__2, ptr noundef %q__1, ptr noundef %arrayidx117, ptr noundef @c__1, ptr noundef %arrayidx122, ptr noundef @c__1)
  %143 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %144 = load i32, ptr %143, align 4, !tbaa !8
  %145 = load i32, ptr %i__, align 4, !tbaa !8
  %add124 = add nsw i32 %144, %145
  %sub125 = sub nsw i32 %add124, 1
  %146 = load i32, ptr %i__, align 4, !tbaa !8
  %sub126 = sub nsw i32 %146, 1
  %147 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul127 = mul nsw i32 %sub126, %147
  %add128 = add nsw i32 %sub125, %mul127
  store i32 %add128, ptr %i__2, align 4, !tbaa !8
  %r129 = getelementptr inbounds %struct.complex, ptr %ei, i32 0, i32 0
  %148 = load float, ptr %r129, align 4, !tbaa !10
  %149 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %150 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom130 = sext i32 %150 to i64
  %arrayidx131 = getelementptr inbounds %struct.complex, ptr %149, i64 %idxprom130
  %r132 = getelementptr inbounds %struct.complex, ptr %arrayidx131, i32 0, i32 0
  store float %148, ptr %r132, align 4, !tbaa !10
  %i133 = getelementptr inbounds %struct.complex, ptr %ei, i32 0, i32 1
  %151 = load float, ptr %i133, align 4, !tbaa !13
  %152 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %153 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom134 = sext i32 %153 to i64
  %arrayidx135 = getelementptr inbounds %struct.complex, ptr %152, i64 %idxprom134
  %i136 = getelementptr inbounds %struct.complex, ptr %arrayidx135, i32 0, i32 1
  store float %151, ptr %i136, align 4, !tbaa !13
  br label %if.end137

if.end137:                                        ; preds = %if.then11, %for.body
  %154 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %155 = load i32, ptr %154, align 4, !tbaa !8
  %156 = load i32, ptr %i__, align 4, !tbaa !8
  %add138 = add nsw i32 %155, %156
  %157 = load i32, ptr %i__, align 4, !tbaa !8
  %158 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul139 = mul nsw i32 %157, %158
  %add140 = add nsw i32 %add138, %mul139
  store i32 %add140, ptr %i__2, align 4, !tbaa !8
  %159 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %160 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom141 = sext i32 %160 to i64
  %arrayidx142 = getelementptr inbounds %struct.complex, ptr %159, i64 %idxprom141
  %r143 = getelementptr inbounds %struct.complex, ptr %arrayidx142, i32 0, i32 0
  %161 = load float, ptr %r143, align 4, !tbaa !10
  %r144 = getelementptr inbounds %struct.complex, ptr %ei, i32 0, i32 0
  store float %161, ptr %r144, align 4, !tbaa !10
  %162 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %163 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom145 = sext i32 %163 to i64
  %arrayidx146 = getelementptr inbounds %struct.complex, ptr %162, i64 %idxprom145
  %i147 = getelementptr inbounds %struct.complex, ptr %arrayidx146, i32 0, i32 1
  %164 = load float, ptr %i147, align 4, !tbaa !13
  %i148 = getelementptr inbounds %struct.complex, ptr %ei, i32 0, i32 1
  store float %164, ptr %i148, align 4, !tbaa !13
  %165 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %166 = load i32, ptr %165, align 4, !tbaa !8
  %167 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %168 = load i32, ptr %167, align 4, !tbaa !8
  %sub149 = sub nsw i32 %166, %168
  %169 = load i32, ptr %i__, align 4, !tbaa !8
  %sub150 = sub nsw i32 %sub149, %169
  %add151 = add nsw i32 %sub150, 1
  store i32 %add151, ptr %i__2, align 4, !tbaa !8
  %170 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %171 = load i32, ptr %170, align 4, !tbaa !8
  %172 = load i32, ptr %i__, align 4, !tbaa !8
  %add152 = add nsw i32 %171, %172
  %add153 = add nsw i32 %add152, 1
  store i32 %add153, ptr %i__3, align 4, !tbaa !8
  %173 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %174 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %174, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %175 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %176 = load i32, ptr %175, align 4, !tbaa !8
  store i32 %176, ptr %_y, align 4, !tbaa !8
  %177 = load i32, ptr %_x, align 4, !tbaa !8
  %178 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp154 = icmp slt i32 %177, %178
  br i1 %cmp154, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end137
  %179 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end137
  %180 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %179, %cond.true ], [ %180, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %181 = load i32, ptr %tmp, align 4, !tbaa !8
  %182 = load i32, ptr %i__, align 4, !tbaa !8
  %183 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul155 = mul nsw i32 %182, %183
  %add156 = add nsw i32 %181, %mul155
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds %struct.complex, ptr %173, i64 %idxprom157
  %184 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %185 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom159 = sext i32 %185 to i64
  %arrayidx160 = getelementptr inbounds %struct.complex, ptr %184, i64 %idxprom159
  %call161 = call i32 @clarfg_(ptr noundef %i__2, ptr noundef %ei, ptr noundef %arrayidx158, ptr noundef @c__1, ptr noundef %arrayidx160)
  %186 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %187 = load i32, ptr %186, align 4, !tbaa !8
  %188 = load i32, ptr %i__, align 4, !tbaa !8
  %add162 = add nsw i32 %187, %188
  %189 = load i32, ptr %i__, align 4, !tbaa !8
  %190 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul163 = mul nsw i32 %189, %190
  %add164 = add nsw i32 %add162, %mul163
  store i32 %add164, ptr %i__2, align 4, !tbaa !8
  %191 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %192 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom165 = sext i32 %192 to i64
  %arrayidx166 = getelementptr inbounds %struct.complex, ptr %191, i64 %idxprom165
  %r167 = getelementptr inbounds %struct.complex, ptr %arrayidx166, i32 0, i32 0
  store float 1.000000e+00, ptr %r167, align 4, !tbaa !10
  %193 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %194 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom168 = sext i32 %194 to i64
  %arrayidx169 = getelementptr inbounds %struct.complex, ptr %193, i64 %idxprom168
  %i170 = getelementptr inbounds %struct.complex, ptr %arrayidx169, i32 0, i32 1
  store float 0.000000e+00, ptr %i170, align 4, !tbaa !13
  %195 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %196 = load i32, ptr %195, align 4, !tbaa !8
  %197 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %198 = load i32, ptr %197, align 4, !tbaa !8
  %sub171 = sub nsw i32 %196, %198
  %199 = load i32, ptr %i__, align 4, !tbaa !8
  %sub172 = sub nsw i32 %sub171, %199
  %add173 = add nsw i32 %sub172, 1
  store i32 %add173, ptr %i__2, align 4, !tbaa !8
  %200 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %201 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %202 = load i32, ptr %i__, align 4, !tbaa !8
  %add174 = add nsw i32 %202, 1
  %203 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul175 = mul nsw i32 %add174, %203
  %add176 = add nsw i32 %mul175, 1
  %idxprom177 = sext i32 %add176 to i64
  %arrayidx178 = getelementptr inbounds %struct.complex, ptr %201, i64 %idxprom177
  %204 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %205 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %206 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %207 = load i32, ptr %206, align 4, !tbaa !8
  %208 = load i32, ptr %i__, align 4, !tbaa !8
  %add179 = add nsw i32 %207, %208
  %209 = load i32, ptr %i__, align 4, !tbaa !8
  %210 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul180 = mul nsw i32 %209, %210
  %add181 = add nsw i32 %add179, %mul180
  %idxprom182 = sext i32 %add181 to i64
  %arrayidx183 = getelementptr inbounds %struct.complex, ptr %205, i64 %idxprom182
  %211 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %212 = load i32, ptr %i__, align 4, !tbaa !8
  %213 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul184 = mul nsw i32 %212, %213
  %add185 = add nsw i32 %mul184, 1
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds %struct.complex, ptr %211, i64 %idxprom186
  %call188 = call i32 @cgemv_(ptr noundef @.str, ptr noundef %200, ptr noundef %i__2, ptr noundef @c_b2, ptr noundef %arrayidx178, ptr noundef %204, ptr noundef %arrayidx183, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx187, ptr noundef @c__1)
  %214 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %215 = load i32, ptr %214, align 4, !tbaa !8
  %216 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %217 = load i32, ptr %216, align 4, !tbaa !8
  %sub189 = sub nsw i32 %215, %217
  %218 = load i32, ptr %i__, align 4, !tbaa !8
  %sub190 = sub nsw i32 %sub189, %218
  %add191 = add nsw i32 %sub190, 1
  store i32 %add191, ptr %i__2, align 4, !tbaa !8
  %219 = load i32, ptr %i__, align 4, !tbaa !8
  %sub192 = sub nsw i32 %219, 1
  store i32 %sub192, ptr %i__3, align 4, !tbaa !8
  %220 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %221 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %222 = load i32, ptr %221, align 4, !tbaa !8
  %223 = load i32, ptr %i__, align 4, !tbaa !8
  %add193 = add nsw i32 %222, %223
  %224 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add194 = add nsw i32 %add193, %224
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds %struct.complex, ptr %220, i64 %idxprom195
  %225 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %226 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %227 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %228 = load i32, ptr %227, align 4, !tbaa !8
  %229 = load i32, ptr %i__, align 4, !tbaa !8
  %add197 = add nsw i32 %228, %229
  %230 = load i32, ptr %i__, align 4, !tbaa !8
  %231 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul198 = mul nsw i32 %230, %231
  %add199 = add nsw i32 %add197, %mul198
  %idxprom200 = sext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds %struct.complex, ptr %226, i64 %idxprom200
  %232 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %233 = load i32, ptr %i__, align 4, !tbaa !8
  %234 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul202 = mul nsw i32 %233, %234
  %add203 = add nsw i32 %mul202, 1
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds %struct.complex, ptr %232, i64 %idxprom204
  %call206 = call i32 @cgemv_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx196, ptr noundef %225, ptr noundef %arrayidx201, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx205, ptr noundef @c__1)
  %235 = load i32, ptr %i__, align 4, !tbaa !8
  %sub207 = sub nsw i32 %235, 1
  store i32 %sub207, ptr %i__2, align 4, !tbaa !8
  %r208 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r208, align 4, !tbaa !10
  %i209 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i209, align 4, !tbaa !13
  %236 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %237 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %238 = load i32, ptr %y_offset, align 4, !tbaa !8
  %idxprom210 = sext i32 %238 to i64
  %arrayidx211 = getelementptr inbounds %struct.complex, ptr %237, i64 %idxprom210
  %239 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %240 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %241 = load i32, ptr %i__, align 4, !tbaa !8
  %242 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul212 = mul nsw i32 %241, %242
  %add213 = add nsw i32 %mul212, 1
  %idxprom214 = sext i32 %add213 to i64
  %arrayidx215 = getelementptr inbounds %struct.complex, ptr %240, i64 %idxprom214
  %243 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %244 = load i32, ptr %i__, align 4, !tbaa !8
  %245 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul216 = mul nsw i32 %244, %245
  %add217 = add nsw i32 %mul216, 1
  %idxprom218 = sext i32 %add217 to i64
  %arrayidx219 = getelementptr inbounds %struct.complex, ptr %243, i64 %idxprom218
  %call220 = call i32 @cgemv_(ptr noundef @.str, ptr noundef %236, ptr noundef %i__2, ptr noundef %q__1, ptr noundef %arrayidx211, ptr noundef %239, ptr noundef %arrayidx215, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx219, ptr noundef @c__1)
  %246 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %247 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %248 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom221 = sext i32 %248 to i64
  %arrayidx222 = getelementptr inbounds %struct.complex, ptr %247, i64 %idxprom221
  %249 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %250 = load i32, ptr %i__, align 4, !tbaa !8
  %251 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul223 = mul nsw i32 %250, %251
  %add224 = add nsw i32 %mul223, 1
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds %struct.complex, ptr %249, i64 %idxprom225
  %call227 = call i32 @cscal_(ptr noundef %246, ptr noundef %arrayidx222, ptr noundef %arrayidx226, ptr noundef @c__1)
  %252 = load i32, ptr %i__, align 4, !tbaa !8
  %sub228 = sub nsw i32 %252, 1
  store i32 %sub228, ptr %i__2, align 4, !tbaa !8
  %253 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %253, ptr %i__3, align 4, !tbaa !8
  %254 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %255 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom229 = sext i32 %255 to i64
  %arrayidx230 = getelementptr inbounds %struct.complex, ptr %254, i64 %idxprom229
  %r231 = getelementptr inbounds %struct.complex, ptr %arrayidx230, i32 0, i32 0
  %256 = load float, ptr %r231, align 4, !tbaa !10
  %fneg = fneg float %256
  %r232 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %fneg, ptr %r232, align 4, !tbaa !10
  %257 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %258 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom233 = sext i32 %258 to i64
  %arrayidx234 = getelementptr inbounds %struct.complex, ptr %257, i64 %idxprom233
  %i235 = getelementptr inbounds %struct.complex, ptr %arrayidx234, i32 0, i32 1
  %259 = load float, ptr %i235, align 4, !tbaa !13
  %fneg236 = fneg float %259
  %i237 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %fneg236, ptr %i237, align 4, !tbaa !13
  %260 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %261 = load i32, ptr %i__, align 4, !tbaa !8
  %262 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul238 = mul nsw i32 %261, %262
  %add239 = add nsw i32 %mul238, 1
  %idxprom240 = sext i32 %add239 to i64
  %arrayidx241 = getelementptr inbounds %struct.complex, ptr %260, i64 %idxprom240
  %call242 = call i32 @cscal_(ptr noundef %i__2, ptr noundef %q__1, ptr noundef %arrayidx241, ptr noundef @c__1)
  %263 = load i32, ptr %i__, align 4, !tbaa !8
  %sub243 = sub nsw i32 %263, 1
  store i32 %sub243, ptr %i__2, align 4, !tbaa !8
  %264 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %265 = load i32, ptr %t_offset, align 4, !tbaa !8
  %idxprom244 = sext i32 %265 to i64
  %arrayidx245 = getelementptr inbounds %struct.complex, ptr %264, i64 %idxprom244
  %266 = load ptr, ptr %ldt.addr, align 8, !tbaa !4
  %267 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %268 = load i32, ptr %i__, align 4, !tbaa !8
  %269 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul246 = mul nsw i32 %268, %269
  %add247 = add nsw i32 %mul246, 1
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx249 = getelementptr inbounds %struct.complex, ptr %267, i64 %idxprom248
  %call250 = call i32 @ctrmv_(ptr noundef @.str.4, ptr noundef @.str, ptr noundef @.str.5, ptr noundef %i__2, ptr noundef %arrayidx245, ptr noundef %266, ptr noundef %arrayidx249, ptr noundef @c__1)
  %270 = load i32, ptr %i__, align 4, !tbaa !8
  %271 = load i32, ptr %i__, align 4, !tbaa !8
  %272 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul251 = mul nsw i32 %271, %272
  %add252 = add nsw i32 %270, %mul251
  store i32 %add252, ptr %i__2, align 4, !tbaa !8
  %273 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %273, ptr %i__3, align 4, !tbaa !8
  %274 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %275 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom253 = sext i32 %275 to i64
  %arrayidx254 = getelementptr inbounds %struct.complex, ptr %274, i64 %idxprom253
  %r255 = getelementptr inbounds %struct.complex, ptr %arrayidx254, i32 0, i32 0
  %276 = load float, ptr %r255, align 4, !tbaa !10
  %277 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %278 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom256 = sext i32 %278 to i64
  %arrayidx257 = getelementptr inbounds %struct.complex, ptr %277, i64 %idxprom256
  %r258 = getelementptr inbounds %struct.complex, ptr %arrayidx257, i32 0, i32 0
  store float %276, ptr %r258, align 4, !tbaa !10
  %279 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %280 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom259 = sext i32 %280 to i64
  %arrayidx260 = getelementptr inbounds %struct.complex, ptr %279, i64 %idxprom259
  %i261 = getelementptr inbounds %struct.complex, ptr %arrayidx260, i32 0, i32 1
  %281 = load float, ptr %i261, align 4, !tbaa !13
  %282 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %283 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom262 = sext i32 %283 to i64
  %arrayidx263 = getelementptr inbounds %struct.complex, ptr %282, i64 %idxprom262
  %i264 = getelementptr inbounds %struct.complex, ptr %arrayidx263, i32 0, i32 1
  store float %281, ptr %i264, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %284 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %284, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %285 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %286 = load i32, ptr %285, align 4, !tbaa !8
  %287 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %288 = load i32, ptr %287, align 4, !tbaa !8
  %add265 = add nsw i32 %286, %288
  %289 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %290 = load i32, ptr %289, align 4, !tbaa !8
  %291 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul266 = mul nsw i32 %290, %291
  %add267 = add nsw i32 %add265, %mul266
  store i32 %add267, ptr %i__1, align 4, !tbaa !8
  %r268 = getelementptr inbounds %struct.complex, ptr %ei, i32 0, i32 0
  %292 = load float, ptr %r268, align 4, !tbaa !10
  %293 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %294 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom269 = sext i32 %294 to i64
  %arrayidx270 = getelementptr inbounds %struct.complex, ptr %293, i64 %idxprom269
  %r271 = getelementptr inbounds %struct.complex, ptr %arrayidx270, i32 0, i32 0
  store float %292, ptr %r271, align 4, !tbaa !10
  %i272 = getelementptr inbounds %struct.complex, ptr %ei, i32 0, i32 1
  %295 = load float, ptr %i272, align 4, !tbaa !13
  %296 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %297 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom273 = sext i32 %297 to i64
  %arrayidx274 = getelementptr inbounds %struct.complex, ptr %296, i64 %idxprom273
  %i275 = getelementptr inbounds %struct.complex, ptr %arrayidx274, i32 0, i32 1
  store float %295, ptr %i275, align 4, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ei) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %298 = load i32, ptr %retval, align 4
  ret i32 %298
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @clacgv_(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ccopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ctrmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @caxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @clarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @cscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!11 = !{!"", !12, i64 0, !12, i64 4}
!12 = !{!"float", !6, i64 0}
!13 = !{!11, !12, i64 4}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}

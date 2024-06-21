; ModuleID = 'samples/436.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zlatrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c_b2 = internal global %struct.doublecomplex { double 1.000000e+00, double 0.000000e+00 }, align 8
@c__1 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@c_b1 = internal global %struct.doublecomplex zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Conjugate transpose\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zlatrd_(ptr noundef %uplo, ptr noundef %n, ptr noundef %nb, ptr noundef %a, ptr noundef %lda, ptr noundef %e, ptr noundef %tau, ptr noundef %w, ptr noundef %ldw) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nb.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %ldw.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %w_dim1 = alloca i32, align 4
  %w_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %z__1 = alloca %struct.doublecomplex, align 8
  %z__2 = alloca %struct.doublecomplex, align 8
  %z__3 = alloca %struct.doublecomplex, align 8
  %z__4 = alloca %struct.doublecomplex, align 8
  %i__ = alloca i32, align 4
  %iw = alloca i32, align 4
  %alpha = alloca %struct.doublecomplex, align 8
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %e, ptr %e.addr, align 8
  store ptr %tau, ptr %tau.addr, align 8
  store ptr %w, ptr %w.addr, align 8
  store ptr %ldw, ptr %ldw.addr, align 8
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
  %5 = load ptr, ptr %e.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %e.addr, align 8
  %6 = load ptr, ptr %tau.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.doublecomplex, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %tau.addr, align 8
  %7 = load ptr, ptr %ldw.addr, align 8
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %w_dim1, align 4
  %9 = load i32, ptr %w_dim1, align 4
  %add2 = add nsw i32 1, %9
  store i32 %add2, ptr %w_offset, align 4
  %10 = load i32, ptr %w_offset, align 4
  %11 = load ptr, ptr %w.addr, align 8
  %idx.ext3 = sext i32 %10 to i64
  %idx.neg4 = sub i64 0, %idx.ext3
  %add.ptr5 = getelementptr inbounds %struct.doublecomplex, ptr %11, i64 %idx.neg4
  store ptr %add.ptr5, ptr %w.addr, align 8
  %12 = load ptr, ptr %n.addr, align 8
  %13 = load i32, ptr %12, align 4
  %cmp = icmp sle i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %14 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %14, ptr noundef @.str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %15 = load ptr, ptr %n.addr, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %nb.addr, align 8
  %18 = load i32, ptr %17, align 4
  %sub = sub nsw i32 %16, %18
  %add7 = add nsw i32 %sub, 1
  store i32 %add7, ptr %i__1, align 4
  %19 = load ptr, ptr %n.addr, align 8
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %21 = load i32, ptr %i__, align 4
  %22 = load i32, ptr %i__1, align 4
  %cmp8 = icmp sge i32 %21, %22
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, ptr %i__, align 4
  %24 = load ptr, ptr %n.addr, align 8
  %25 = load i32, ptr %24, align 4
  %sub9 = sub nsw i32 %23, %25
  %26 = load ptr, ptr %nb.addr, align 8
  %27 = load i32, ptr %26, align 4
  %add10 = add nsw i32 %sub9, %27
  store i32 %add10, ptr %iw, align 4
  %28 = load i32, ptr %i__, align 4
  %29 = load ptr, ptr %n.addr, align 8
  %30 = load i32, ptr %29, align 4
  %cmp11 = icmp slt i32 %28, %30
  br i1 %cmp11, label %if.then12, label %if.end98

if.then12:                                        ; preds = %for.body
  %31 = load i32, ptr %i__, align 4
  %32 = load i32, ptr %i__, align 4
  %33 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %32, %33
  %add13 = add nsw i32 %31, %mul
  store i32 %add13, ptr %i__2, align 4
  %34 = load i32, ptr %i__, align 4
  %35 = load i32, ptr %i__, align 4
  %36 = load i32, ptr %a_dim1, align 4
  %mul14 = mul nsw i32 %35, %36
  %add15 = add nsw i32 %34, %mul14
  store i32 %add15, ptr %i__3, align 4
  %37 = load ptr, ptr %a.addr, align 8
  %38 = load i32, ptr %i__3, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %37, i64 %idxprom
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  %39 = load double, ptr %r, align 8
  store double %39, ptr %d__1, align 8
  %40 = load double, ptr %d__1, align 8
  %41 = load ptr, ptr %a.addr, align 8
  %42 = load i32, ptr %i__2, align 4
  %idxprom16 = sext i32 %42 to i64
  %arrayidx17 = getelementptr inbounds %struct.doublecomplex, ptr %41, i64 %idxprom16
  %r18 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx17, i32 0, i32 0
  store double %40, ptr %r18, align 8
  %43 = load ptr, ptr %a.addr, align 8
  %44 = load i32, ptr %i__2, align 4
  %idxprom19 = sext i32 %44 to i64
  %arrayidx20 = getelementptr inbounds %struct.doublecomplex, ptr %43, i64 %idxprom19
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx20, i32 0, i32 1
  store double 0.000000e+00, ptr %i, align 8
  %45 = load ptr, ptr %n.addr, align 8
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %i__, align 4
  %sub21 = sub nsw i32 %46, %47
  store i32 %sub21, ptr %i__2, align 4
  %48 = load ptr, ptr %w.addr, align 8
  %49 = load i32, ptr %i__, align 4
  %50 = load i32, ptr %iw, align 4
  %add22 = add nsw i32 %50, 1
  %51 = load i32, ptr %w_dim1, align 4
  %mul23 = mul nsw i32 %add22, %51
  %add24 = add nsw i32 %49, %mul23
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds %struct.doublecomplex, ptr %48, i64 %idxprom25
  %52 = load ptr, ptr %ldw.addr, align 8
  %call27 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx26, ptr noundef %52)
  %53 = load ptr, ptr %n.addr, align 8
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %i__, align 4
  %sub28 = sub nsw i32 %54, %55
  store i32 %sub28, ptr %i__2, align 4
  %r29 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r29, align 8
  %i30 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i30, align 8
  %56 = load ptr, ptr %a.addr, align 8
  %57 = load i32, ptr %i__, align 4
  %add31 = add nsw i32 %57, 1
  %58 = load i32, ptr %a_dim1, align 4
  %mul32 = mul nsw i32 %add31, %58
  %add33 = add nsw i32 %mul32, 1
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds %struct.doublecomplex, ptr %56, i64 %idxprom34
  %59 = load ptr, ptr %lda.addr, align 8
  %60 = load ptr, ptr %w.addr, align 8
  %61 = load i32, ptr %i__, align 4
  %62 = load i32, ptr %iw, align 4
  %add36 = add nsw i32 %62, 1
  %63 = load i32, ptr %w_dim1, align 4
  %mul37 = mul nsw i32 %add36, %63
  %add38 = add nsw i32 %61, %mul37
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds %struct.doublecomplex, ptr %60, i64 %idxprom39
  %64 = load ptr, ptr %ldw.addr, align 8
  %65 = load ptr, ptr %a.addr, align 8
  %66 = load i32, ptr %i__, align 4
  %67 = load i32, ptr %a_dim1, align 4
  %mul41 = mul nsw i32 %66, %67
  %add42 = add nsw i32 %mul41, 1
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds %struct.doublecomplex, ptr %65, i64 %idxprom43
  %call45 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__, ptr noundef %i__2, ptr noundef %z__1, ptr noundef %arrayidx35, ptr noundef %59, ptr noundef %arrayidx40, ptr noundef %64, ptr noundef @c_b2, ptr noundef %arrayidx44, ptr noundef @c__1)
  %68 = load ptr, ptr %n.addr, align 8
  %69 = load i32, ptr %68, align 4
  %70 = load i32, ptr %i__, align 4
  %sub46 = sub nsw i32 %69, %70
  store i32 %sub46, ptr %i__2, align 4
  %71 = load ptr, ptr %w.addr, align 8
  %72 = load i32, ptr %i__, align 4
  %73 = load i32, ptr %iw, align 4
  %add47 = add nsw i32 %73, 1
  %74 = load i32, ptr %w_dim1, align 4
  %mul48 = mul nsw i32 %add47, %74
  %add49 = add nsw i32 %72, %mul48
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds %struct.doublecomplex, ptr %71, i64 %idxprom50
  %75 = load ptr, ptr %ldw.addr, align 8
  %call52 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx51, ptr noundef %75)
  %76 = load ptr, ptr %n.addr, align 8
  %77 = load i32, ptr %76, align 4
  %78 = load i32, ptr %i__, align 4
  %sub53 = sub nsw i32 %77, %78
  store i32 %sub53, ptr %i__2, align 4
  %79 = load ptr, ptr %a.addr, align 8
  %80 = load i32, ptr %i__, align 4
  %81 = load i32, ptr %i__, align 4
  %add54 = add nsw i32 %81, 1
  %82 = load i32, ptr %a_dim1, align 4
  %mul55 = mul nsw i32 %add54, %82
  %add56 = add nsw i32 %80, %mul55
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds %struct.doublecomplex, ptr %79, i64 %idxprom57
  %83 = load ptr, ptr %lda.addr, align 8
  %call59 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx58, ptr noundef %83)
  %84 = load ptr, ptr %n.addr, align 8
  %85 = load i32, ptr %84, align 4
  %86 = load i32, ptr %i__, align 4
  %sub60 = sub nsw i32 %85, %86
  store i32 %sub60, ptr %i__2, align 4
  %r61 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r61, align 8
  %i62 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i62, align 8
  %87 = load ptr, ptr %w.addr, align 8
  %88 = load i32, ptr %iw, align 4
  %add63 = add nsw i32 %88, 1
  %89 = load i32, ptr %w_dim1, align 4
  %mul64 = mul nsw i32 %add63, %89
  %add65 = add nsw i32 %mul64, 1
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds %struct.doublecomplex, ptr %87, i64 %idxprom66
  %90 = load ptr, ptr %ldw.addr, align 8
  %91 = load ptr, ptr %a.addr, align 8
  %92 = load i32, ptr %i__, align 4
  %93 = load i32, ptr %i__, align 4
  %add68 = add nsw i32 %93, 1
  %94 = load i32, ptr %a_dim1, align 4
  %mul69 = mul nsw i32 %add68, %94
  %add70 = add nsw i32 %92, %mul69
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds %struct.doublecomplex, ptr %91, i64 %idxprom71
  %95 = load ptr, ptr %lda.addr, align 8
  %96 = load ptr, ptr %a.addr, align 8
  %97 = load i32, ptr %i__, align 4
  %98 = load i32, ptr %a_dim1, align 4
  %mul73 = mul nsw i32 %97, %98
  %add74 = add nsw i32 %mul73, 1
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds %struct.doublecomplex, ptr %96, i64 %idxprom75
  %call77 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__, ptr noundef %i__2, ptr noundef %z__1, ptr noundef %arrayidx67, ptr noundef %90, ptr noundef %arrayidx72, ptr noundef %95, ptr noundef @c_b2, ptr noundef %arrayidx76, ptr noundef @c__1)
  %99 = load ptr, ptr %n.addr, align 8
  %100 = load i32, ptr %99, align 4
  %101 = load i32, ptr %i__, align 4
  %sub78 = sub nsw i32 %100, %101
  store i32 %sub78, ptr %i__2, align 4
  %102 = load ptr, ptr %a.addr, align 8
  %103 = load i32, ptr %i__, align 4
  %104 = load i32, ptr %i__, align 4
  %add79 = add nsw i32 %104, 1
  %105 = load i32, ptr %a_dim1, align 4
  %mul80 = mul nsw i32 %add79, %105
  %add81 = add nsw i32 %103, %mul80
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds %struct.doublecomplex, ptr %102, i64 %idxprom82
  %106 = load ptr, ptr %lda.addr, align 8
  %call84 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx83, ptr noundef %106)
  %107 = load i32, ptr %i__, align 4
  %108 = load i32, ptr %i__, align 4
  %109 = load i32, ptr %a_dim1, align 4
  %mul85 = mul nsw i32 %108, %109
  %add86 = add nsw i32 %107, %mul85
  store i32 %add86, ptr %i__2, align 4
  %110 = load i32, ptr %i__, align 4
  %111 = load i32, ptr %i__, align 4
  %112 = load i32, ptr %a_dim1, align 4
  %mul87 = mul nsw i32 %111, %112
  %add88 = add nsw i32 %110, %mul87
  store i32 %add88, ptr %i__3, align 4
  %113 = load ptr, ptr %a.addr, align 8
  %114 = load i32, ptr %i__3, align 4
  %idxprom89 = sext i32 %114 to i64
  %arrayidx90 = getelementptr inbounds %struct.doublecomplex, ptr %113, i64 %idxprom89
  %r91 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx90, i32 0, i32 0
  %115 = load double, ptr %r91, align 8
  store double %115, ptr %d__1, align 8
  %116 = load double, ptr %d__1, align 8
  %117 = load ptr, ptr %a.addr, align 8
  %118 = load i32, ptr %i__2, align 4
  %idxprom92 = sext i32 %118 to i64
  %arrayidx93 = getelementptr inbounds %struct.doublecomplex, ptr %117, i64 %idxprom92
  %r94 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx93, i32 0, i32 0
  store double %116, ptr %r94, align 8
  %119 = load ptr, ptr %a.addr, align 8
  %120 = load i32, ptr %i__2, align 4
  %idxprom95 = sext i32 %120 to i64
  %arrayidx96 = getelementptr inbounds %struct.doublecomplex, ptr %119, i64 %idxprom95
  %i97 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx96, i32 0, i32 1
  store double 0.000000e+00, ptr %i97, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.then12, %for.body
  %121 = load i32, ptr %i__, align 4
  %cmp99 = icmp sgt i32 %121, 1
  br i1 %cmp99, label %if.then100, label %if.end293

if.then100:                                       ; preds = %if.end98
  %122 = load i32, ptr %i__, align 4
  %sub101 = sub nsw i32 %122, 1
  %123 = load i32, ptr %i__, align 4
  %124 = load i32, ptr %a_dim1, align 4
  %mul102 = mul nsw i32 %123, %124
  %add103 = add nsw i32 %sub101, %mul102
  store i32 %add103, ptr %i__2, align 4
  %125 = load ptr, ptr %a.addr, align 8
  %126 = load i32, ptr %i__2, align 4
  %idxprom104 = sext i32 %126 to i64
  %arrayidx105 = getelementptr inbounds %struct.doublecomplex, ptr %125, i64 %idxprom104
  %r106 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx105, i32 0, i32 0
  %127 = load double, ptr %r106, align 8
  %r107 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  store double %127, ptr %r107, align 8
  %128 = load ptr, ptr %a.addr, align 8
  %129 = load i32, ptr %i__2, align 4
  %idxprom108 = sext i32 %129 to i64
  %arrayidx109 = getelementptr inbounds %struct.doublecomplex, ptr %128, i64 %idxprom108
  %i110 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx109, i32 0, i32 1
  %130 = load double, ptr %i110, align 8
  %i111 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 1
  store double %130, ptr %i111, align 8
  %131 = load i32, ptr %i__, align 4
  %sub112 = sub nsw i32 %131, 1
  store i32 %sub112, ptr %i__2, align 4
  %132 = load ptr, ptr %a.addr, align 8
  %133 = load i32, ptr %i__, align 4
  %134 = load i32, ptr %a_dim1, align 4
  %mul113 = mul nsw i32 %133, %134
  %add114 = add nsw i32 %mul113, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds %struct.doublecomplex, ptr %132, i64 %idxprom115
  %135 = load ptr, ptr %tau.addr, align 8
  %136 = load i32, ptr %i__, align 4
  %sub117 = sub nsw i32 %136, 1
  %idxprom118 = sext i32 %sub117 to i64
  %arrayidx119 = getelementptr inbounds %struct.doublecomplex, ptr %135, i64 %idxprom118
  %call120 = call i32 @zlarfg_(ptr noundef %i__2, ptr noundef %alpha, ptr noundef %arrayidx116, ptr noundef @c__1, ptr noundef %arrayidx119)
  %137 = load i32, ptr %i__, align 4
  %sub121 = sub nsw i32 %137, 1
  store i32 %sub121, ptr %i__2, align 4
  %r122 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  %138 = load double, ptr %r122, align 8
  %139 = load ptr, ptr %e.addr, align 8
  %140 = load i32, ptr %i__2, align 4
  %idxprom123 = sext i32 %140 to i64
  %arrayidx124 = getelementptr inbounds double, ptr %139, i64 %idxprom123
  store double %138, ptr %arrayidx124, align 8
  %141 = load i32, ptr %i__, align 4
  %sub125 = sub nsw i32 %141, 1
  %142 = load i32, ptr %i__, align 4
  %143 = load i32, ptr %a_dim1, align 4
  %mul126 = mul nsw i32 %142, %143
  %add127 = add nsw i32 %sub125, %mul126
  store i32 %add127, ptr %i__2, align 4
  %144 = load ptr, ptr %a.addr, align 8
  %145 = load i32, ptr %i__2, align 4
  %idxprom128 = sext i32 %145 to i64
  %arrayidx129 = getelementptr inbounds %struct.doublecomplex, ptr %144, i64 %idxprom128
  %r130 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx129, i32 0, i32 0
  store double 1.000000e+00, ptr %r130, align 8
  %146 = load ptr, ptr %a.addr, align 8
  %147 = load i32, ptr %i__2, align 4
  %idxprom131 = sext i32 %147 to i64
  %arrayidx132 = getelementptr inbounds %struct.doublecomplex, ptr %146, i64 %idxprom131
  %i133 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx132, i32 0, i32 1
  store double 0.000000e+00, ptr %i133, align 8
  %148 = load i32, ptr %i__, align 4
  %sub134 = sub nsw i32 %148, 1
  store i32 %sub134, ptr %i__2, align 4
  %149 = load ptr, ptr %a.addr, align 8
  %150 = load i32, ptr %a_offset, align 4
  %idxprom135 = sext i32 %150 to i64
  %arrayidx136 = getelementptr inbounds %struct.doublecomplex, ptr %149, i64 %idxprom135
  %151 = load ptr, ptr %lda.addr, align 8
  %152 = load ptr, ptr %a.addr, align 8
  %153 = load i32, ptr %i__, align 4
  %154 = load i32, ptr %a_dim1, align 4
  %mul137 = mul nsw i32 %153, %154
  %add138 = add nsw i32 %mul137, 1
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds %struct.doublecomplex, ptr %152, i64 %idxprom139
  %155 = load ptr, ptr %w.addr, align 8
  %156 = load i32, ptr %iw, align 4
  %157 = load i32, ptr %w_dim1, align 4
  %mul141 = mul nsw i32 %156, %157
  %add142 = add nsw i32 %mul141, 1
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds %struct.doublecomplex, ptr %155, i64 %idxprom143
  %call145 = call i32 @zhemv_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef @c_b2, ptr noundef %arrayidx136, ptr noundef %151, ptr noundef %arrayidx140, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx144, ptr noundef @c__1)
  %158 = load i32, ptr %i__, align 4
  %159 = load ptr, ptr %n.addr, align 8
  %160 = load i32, ptr %159, align 4
  %cmp146 = icmp slt i32 %158, %160
  br i1 %cmp146, label %if.then147, label %if.end220

if.then147:                                       ; preds = %if.then100
  %161 = load i32, ptr %i__, align 4
  %sub148 = sub nsw i32 %161, 1
  store i32 %sub148, ptr %i__2, align 4
  %162 = load ptr, ptr %n.addr, align 8
  %163 = load i32, ptr %162, align 4
  %164 = load i32, ptr %i__, align 4
  %sub149 = sub nsw i32 %163, %164
  store i32 %sub149, ptr %i__3, align 4
  %165 = load ptr, ptr %w.addr, align 8
  %166 = load i32, ptr %iw, align 4
  %add150 = add nsw i32 %166, 1
  %167 = load i32, ptr %w_dim1, align 4
  %mul151 = mul nsw i32 %add150, %167
  %add152 = add nsw i32 %mul151, 1
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds %struct.doublecomplex, ptr %165, i64 %idxprom153
  %168 = load ptr, ptr %ldw.addr, align 8
  %169 = load ptr, ptr %a.addr, align 8
  %170 = load i32, ptr %i__, align 4
  %171 = load i32, ptr %a_dim1, align 4
  %mul155 = mul nsw i32 %170, %171
  %add156 = add nsw i32 %mul155, 1
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds %struct.doublecomplex, ptr %169, i64 %idxprom157
  %172 = load ptr, ptr %w.addr, align 8
  %173 = load i32, ptr %i__, align 4
  %add159 = add nsw i32 %173, 1
  %174 = load i32, ptr %iw, align 4
  %175 = load i32, ptr %w_dim1, align 4
  %mul160 = mul nsw i32 %174, %175
  %add161 = add nsw i32 %add159, %mul160
  %idxprom162 = sext i32 %add161 to i64
  %arrayidx163 = getelementptr inbounds %struct.doublecomplex, ptr %172, i64 %idxprom162
  %call164 = call i32 @zgemv_(ptr noundef @.str.3, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx154, ptr noundef %168, ptr noundef %arrayidx158, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx163, ptr noundef @c__1)
  %176 = load i32, ptr %i__, align 4
  %sub165 = sub nsw i32 %176, 1
  store i32 %sub165, ptr %i__2, align 4
  %177 = load ptr, ptr %n.addr, align 8
  %178 = load i32, ptr %177, align 4
  %179 = load i32, ptr %i__, align 4
  %sub166 = sub nsw i32 %178, %179
  store i32 %sub166, ptr %i__3, align 4
  %r167 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r167, align 8
  %i168 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i168, align 8
  %180 = load ptr, ptr %a.addr, align 8
  %181 = load i32, ptr %i__, align 4
  %add169 = add nsw i32 %181, 1
  %182 = load i32, ptr %a_dim1, align 4
  %mul170 = mul nsw i32 %add169, %182
  %add171 = add nsw i32 %mul170, 1
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds %struct.doublecomplex, ptr %180, i64 %idxprom172
  %183 = load ptr, ptr %lda.addr, align 8
  %184 = load ptr, ptr %w.addr, align 8
  %185 = load i32, ptr %i__, align 4
  %add174 = add nsw i32 %185, 1
  %186 = load i32, ptr %iw, align 4
  %187 = load i32, ptr %w_dim1, align 4
  %mul175 = mul nsw i32 %186, %187
  %add176 = add nsw i32 %add174, %mul175
  %idxprom177 = sext i32 %add176 to i64
  %arrayidx178 = getelementptr inbounds %struct.doublecomplex, ptr %184, i64 %idxprom177
  %188 = load ptr, ptr %w.addr, align 8
  %189 = load i32, ptr %iw, align 4
  %190 = load i32, ptr %w_dim1, align 4
  %mul179 = mul nsw i32 %189, %190
  %add180 = add nsw i32 %mul179, 1
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds %struct.doublecomplex, ptr %188, i64 %idxprom181
  %call183 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx173, ptr noundef %183, ptr noundef %arrayidx178, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx182, ptr noundef @c__1)
  %191 = load i32, ptr %i__, align 4
  %sub184 = sub nsw i32 %191, 1
  store i32 %sub184, ptr %i__2, align 4
  %192 = load ptr, ptr %n.addr, align 8
  %193 = load i32, ptr %192, align 4
  %194 = load i32, ptr %i__, align 4
  %sub185 = sub nsw i32 %193, %194
  store i32 %sub185, ptr %i__3, align 4
  %195 = load ptr, ptr %a.addr, align 8
  %196 = load i32, ptr %i__, align 4
  %add186 = add nsw i32 %196, 1
  %197 = load i32, ptr %a_dim1, align 4
  %mul187 = mul nsw i32 %add186, %197
  %add188 = add nsw i32 %mul187, 1
  %idxprom189 = sext i32 %add188 to i64
  %arrayidx190 = getelementptr inbounds %struct.doublecomplex, ptr %195, i64 %idxprom189
  %198 = load ptr, ptr %lda.addr, align 8
  %199 = load ptr, ptr %a.addr, align 8
  %200 = load i32, ptr %i__, align 4
  %201 = load i32, ptr %a_dim1, align 4
  %mul191 = mul nsw i32 %200, %201
  %add192 = add nsw i32 %mul191, 1
  %idxprom193 = sext i32 %add192 to i64
  %arrayidx194 = getelementptr inbounds %struct.doublecomplex, ptr %199, i64 %idxprom193
  %202 = load ptr, ptr %w.addr, align 8
  %203 = load i32, ptr %i__, align 4
  %add195 = add nsw i32 %203, 1
  %204 = load i32, ptr %iw, align 4
  %205 = load i32, ptr %w_dim1, align 4
  %mul196 = mul nsw i32 %204, %205
  %add197 = add nsw i32 %add195, %mul196
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds %struct.doublecomplex, ptr %202, i64 %idxprom198
  %call200 = call i32 @zgemv_(ptr noundef @.str.3, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx190, ptr noundef %198, ptr noundef %arrayidx194, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx199, ptr noundef @c__1)
  %206 = load i32, ptr %i__, align 4
  %sub201 = sub nsw i32 %206, 1
  store i32 %sub201, ptr %i__2, align 4
  %207 = load ptr, ptr %n.addr, align 8
  %208 = load i32, ptr %207, align 4
  %209 = load i32, ptr %i__, align 4
  %sub202 = sub nsw i32 %208, %209
  store i32 %sub202, ptr %i__3, align 4
  %r203 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r203, align 8
  %i204 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i204, align 8
  %210 = load ptr, ptr %w.addr, align 8
  %211 = load i32, ptr %iw, align 4
  %add205 = add nsw i32 %211, 1
  %212 = load i32, ptr %w_dim1, align 4
  %mul206 = mul nsw i32 %add205, %212
  %add207 = add nsw i32 %mul206, 1
  %idxprom208 = sext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds %struct.doublecomplex, ptr %210, i64 %idxprom208
  %213 = load ptr, ptr %ldw.addr, align 8
  %214 = load ptr, ptr %w.addr, align 8
  %215 = load i32, ptr %i__, align 4
  %add210 = add nsw i32 %215, 1
  %216 = load i32, ptr %iw, align 4
  %217 = load i32, ptr %w_dim1, align 4
  %mul211 = mul nsw i32 %216, %217
  %add212 = add nsw i32 %add210, %mul211
  %idxprom213 = sext i32 %add212 to i64
  %arrayidx214 = getelementptr inbounds %struct.doublecomplex, ptr %214, i64 %idxprom213
  %218 = load ptr, ptr %w.addr, align 8
  %219 = load i32, ptr %iw, align 4
  %220 = load i32, ptr %w_dim1, align 4
  %mul215 = mul nsw i32 %219, %220
  %add216 = add nsw i32 %mul215, 1
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds %struct.doublecomplex, ptr %218, i64 %idxprom217
  %call219 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx209, ptr noundef %213, ptr noundef %arrayidx214, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx218, ptr noundef @c__1)
  br label %if.end220

if.end220:                                        ; preds = %if.then147, %if.then100
  %221 = load i32, ptr %i__, align 4
  %sub221 = sub nsw i32 %221, 1
  store i32 %sub221, ptr %i__2, align 4
  %222 = load ptr, ptr %tau.addr, align 8
  %223 = load i32, ptr %i__, align 4
  %sub222 = sub nsw i32 %223, 1
  %idxprom223 = sext i32 %sub222 to i64
  %arrayidx224 = getelementptr inbounds %struct.doublecomplex, ptr %222, i64 %idxprom223
  %224 = load ptr, ptr %w.addr, align 8
  %225 = load i32, ptr %iw, align 4
  %226 = load i32, ptr %w_dim1, align 4
  %mul225 = mul nsw i32 %225, %226
  %add226 = add nsw i32 %mul225, 1
  %idxprom227 = sext i32 %add226 to i64
  %arrayidx228 = getelementptr inbounds %struct.doublecomplex, ptr %224, i64 %idxprom227
  %call229 = call i32 @zscal_(ptr noundef %i__2, ptr noundef %arrayidx224, ptr noundef %arrayidx228, ptr noundef @c__1)
  %r230 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  store double -5.000000e-01, ptr %r230, align 8
  %i231 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  store double -0.000000e+00, ptr %i231, align 8
  %227 = load i32, ptr %i__, align 4
  %sub232 = sub nsw i32 %227, 1
  store i32 %sub232, ptr %i__2, align 4
  %r233 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  %228 = load double, ptr %r233, align 8
  %229 = load ptr, ptr %tau.addr, align 8
  %230 = load i32, ptr %i__2, align 4
  %idxprom234 = sext i32 %230 to i64
  %arrayidx235 = getelementptr inbounds %struct.doublecomplex, ptr %229, i64 %idxprom234
  %r236 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx235, i32 0, i32 0
  %231 = load double, ptr %r236, align 8
  %i238 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  %232 = load double, ptr %i238, align 8
  %233 = load ptr, ptr %tau.addr, align 8
  %234 = load i32, ptr %i__2, align 4
  %idxprom239 = sext i32 %234 to i64
  %arrayidx240 = getelementptr inbounds %struct.doublecomplex, ptr %233, i64 %idxprom239
  %i241 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx240, i32 0, i32 1
  %235 = load double, ptr %i241, align 8
  %mul242 = fmul double %232, %235
  %neg = fneg double %mul242
  %236 = call double @llvm.fmuladd.f64(double %228, double %231, double %neg)
  %r243 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %236, ptr %r243, align 8
  %r244 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  %237 = load double, ptr %r244, align 8
  %238 = load ptr, ptr %tau.addr, align 8
  %239 = load i32, ptr %i__2, align 4
  %idxprom245 = sext i32 %239 to i64
  %arrayidx246 = getelementptr inbounds %struct.doublecomplex, ptr %238, i64 %idxprom245
  %i247 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx246, i32 0, i32 1
  %240 = load double, ptr %i247, align 8
  %i249 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  %241 = load double, ptr %i249, align 8
  %242 = load ptr, ptr %tau.addr, align 8
  %243 = load i32, ptr %i__2, align 4
  %idxprom250 = sext i32 %243 to i64
  %arrayidx251 = getelementptr inbounds %struct.doublecomplex, ptr %242, i64 %idxprom250
  %r252 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx251, i32 0, i32 0
  %244 = load double, ptr %r252, align 8
  %mul253 = fmul double %241, %244
  %245 = call double @llvm.fmuladd.f64(double %237, double %240, double %mul253)
  %i254 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %245, ptr %i254, align 8
  %246 = load i32, ptr %i__, align 4
  %sub255 = sub nsw i32 %246, 1
  store i32 %sub255, ptr %i__3, align 4
  %247 = load ptr, ptr %w.addr, align 8
  %248 = load i32, ptr %iw, align 4
  %249 = load i32, ptr %w_dim1, align 4
  %mul256 = mul nsw i32 %248, %249
  %add257 = add nsw i32 %mul256, 1
  %idxprom258 = sext i32 %add257 to i64
  %arrayidx259 = getelementptr inbounds %struct.doublecomplex, ptr %247, i64 %idxprom258
  %250 = load ptr, ptr %a.addr, align 8
  %251 = load i32, ptr %i__, align 4
  %252 = load i32, ptr %a_dim1, align 4
  %mul260 = mul nsw i32 %251, %252
  %add261 = add nsw i32 %mul260, 1
  %idxprom262 = sext i32 %add261 to i64
  %arrayidx263 = getelementptr inbounds %struct.doublecomplex, ptr %250, i64 %idxprom262
  call void @zdotc_f2c_(ptr noundef %z__4, ptr noundef %i__3, ptr noundef %arrayidx259, ptr noundef @c__1, ptr noundef %arrayidx263, ptr noundef @c__1)
  %r264 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %253 = load double, ptr %r264, align 8
  %r265 = getelementptr inbounds %struct.doublecomplex, ptr %z__4, i32 0, i32 0
  %254 = load double, ptr %r265, align 8
  %i267 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %255 = load double, ptr %i267, align 8
  %i268 = getelementptr inbounds %struct.doublecomplex, ptr %z__4, i32 0, i32 1
  %256 = load double, ptr %i268, align 8
  %mul269 = fmul double %255, %256
  %neg270 = fneg double %mul269
  %257 = call double @llvm.fmuladd.f64(double %253, double %254, double %neg270)
  %r271 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %257, ptr %r271, align 8
  %r272 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %258 = load double, ptr %r272, align 8
  %i273 = getelementptr inbounds %struct.doublecomplex, ptr %z__4, i32 0, i32 1
  %259 = load double, ptr %i273, align 8
  %i275 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %260 = load double, ptr %i275, align 8
  %r276 = getelementptr inbounds %struct.doublecomplex, ptr %z__4, i32 0, i32 0
  %261 = load double, ptr %r276, align 8
  %mul277 = fmul double %260, %261
  %262 = call double @llvm.fmuladd.f64(double %258, double %259, double %mul277)
  %i278 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %262, ptr %i278, align 8
  %r279 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %263 = load double, ptr %r279, align 8
  %r280 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  store double %263, ptr %r280, align 8
  %i281 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %264 = load double, ptr %i281, align 8
  %i282 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 1
  store double %264, ptr %i282, align 8
  %265 = load i32, ptr %i__, align 4
  %sub283 = sub nsw i32 %265, 1
  store i32 %sub283, ptr %i__2, align 4
  %266 = load ptr, ptr %a.addr, align 8
  %267 = load i32, ptr %i__, align 4
  %268 = load i32, ptr %a_dim1, align 4
  %mul284 = mul nsw i32 %267, %268
  %add285 = add nsw i32 %mul284, 1
  %idxprom286 = sext i32 %add285 to i64
  %arrayidx287 = getelementptr inbounds %struct.doublecomplex, ptr %266, i64 %idxprom286
  %269 = load ptr, ptr %w.addr, align 8
  %270 = load i32, ptr %iw, align 4
  %271 = load i32, ptr %w_dim1, align 4
  %mul288 = mul nsw i32 %270, %271
  %add289 = add nsw i32 %mul288, 1
  %idxprom290 = sext i32 %add289 to i64
  %arrayidx291 = getelementptr inbounds %struct.doublecomplex, ptr %269, i64 %idxprom290
  %call292 = call i32 @zaxpy_(ptr noundef %i__2, ptr noundef %alpha, ptr noundef %arrayidx287, ptr noundef @c__1, ptr noundef %arrayidx291, ptr noundef @c__1)
  br label %if.end293

if.end293:                                        ; preds = %if.end220, %if.end98
  br label %for.inc

for.inc:                                          ; preds = %if.end293
  %272 = load i32, ptr %i__, align 4
  %dec = add nsw i32 %272, -1
  store i32 %dec, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end575

if.else:                                          ; preds = %if.end
  %273 = load ptr, ptr %nb.addr, align 8
  %274 = load i32, ptr %273, align 4
  store i32 %274, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond294

for.cond294:                                      ; preds = %for.inc573, %if.else
  %275 = load i32, ptr %i__, align 4
  %276 = load i32, ptr %i__1, align 4
  %cmp295 = icmp sle i32 %275, %276
  br i1 %cmp295, label %for.body296, label %for.end574

for.body296:                                      ; preds = %for.cond294
  %277 = load i32, ptr %i__, align 4
  %278 = load i32, ptr %i__, align 4
  %279 = load i32, ptr %a_dim1, align 4
  %mul297 = mul nsw i32 %278, %279
  %add298 = add nsw i32 %277, %mul297
  store i32 %add298, ptr %i__2, align 4
  %280 = load i32, ptr %i__, align 4
  %281 = load i32, ptr %i__, align 4
  %282 = load i32, ptr %a_dim1, align 4
  %mul299 = mul nsw i32 %281, %282
  %add300 = add nsw i32 %280, %mul299
  store i32 %add300, ptr %i__3, align 4
  %283 = load ptr, ptr %a.addr, align 8
  %284 = load i32, ptr %i__3, align 4
  %idxprom301 = sext i32 %284 to i64
  %arrayidx302 = getelementptr inbounds %struct.doublecomplex, ptr %283, i64 %idxprom301
  %r303 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx302, i32 0, i32 0
  %285 = load double, ptr %r303, align 8
  store double %285, ptr %d__1, align 8
  %286 = load double, ptr %d__1, align 8
  %287 = load ptr, ptr %a.addr, align 8
  %288 = load i32, ptr %i__2, align 4
  %idxprom304 = sext i32 %288 to i64
  %arrayidx305 = getelementptr inbounds %struct.doublecomplex, ptr %287, i64 %idxprom304
  %r306 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx305, i32 0, i32 0
  store double %286, ptr %r306, align 8
  %289 = load ptr, ptr %a.addr, align 8
  %290 = load i32, ptr %i__2, align 4
  %idxprom307 = sext i32 %290 to i64
  %arrayidx308 = getelementptr inbounds %struct.doublecomplex, ptr %289, i64 %idxprom307
  %i309 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx308, i32 0, i32 1
  store double 0.000000e+00, ptr %i309, align 8
  %291 = load i32, ptr %i__, align 4
  %sub310 = sub nsw i32 %291, 1
  store i32 %sub310, ptr %i__2, align 4
  %292 = load ptr, ptr %w.addr, align 8
  %293 = load i32, ptr %i__, align 4
  %294 = load i32, ptr %w_dim1, align 4
  %add311 = add nsw i32 %293, %294
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds %struct.doublecomplex, ptr %292, i64 %idxprom312
  %295 = load ptr, ptr %ldw.addr, align 8
  %call314 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx313, ptr noundef %295)
  %296 = load ptr, ptr %n.addr, align 8
  %297 = load i32, ptr %296, align 4
  %298 = load i32, ptr %i__, align 4
  %sub315 = sub nsw i32 %297, %298
  %add316 = add nsw i32 %sub315, 1
  store i32 %add316, ptr %i__2, align 4
  %299 = load i32, ptr %i__, align 4
  %sub317 = sub nsw i32 %299, 1
  store i32 %sub317, ptr %i__3, align 4
  %r318 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r318, align 8
  %i319 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i319, align 8
  %300 = load ptr, ptr %a.addr, align 8
  %301 = load i32, ptr %i__, align 4
  %302 = load i32, ptr %a_dim1, align 4
  %add320 = add nsw i32 %301, %302
  %idxprom321 = sext i32 %add320 to i64
  %arrayidx322 = getelementptr inbounds %struct.doublecomplex, ptr %300, i64 %idxprom321
  %303 = load ptr, ptr %lda.addr, align 8
  %304 = load ptr, ptr %w.addr, align 8
  %305 = load i32, ptr %i__, align 4
  %306 = load i32, ptr %w_dim1, align 4
  %add323 = add nsw i32 %305, %306
  %idxprom324 = sext i32 %add323 to i64
  %arrayidx325 = getelementptr inbounds %struct.doublecomplex, ptr %304, i64 %idxprom324
  %307 = load ptr, ptr %ldw.addr, align 8
  %308 = load ptr, ptr %a.addr, align 8
  %309 = load i32, ptr %i__, align 4
  %310 = load i32, ptr %i__, align 4
  %311 = load i32, ptr %a_dim1, align 4
  %mul326 = mul nsw i32 %310, %311
  %add327 = add nsw i32 %309, %mul326
  %idxprom328 = sext i32 %add327 to i64
  %arrayidx329 = getelementptr inbounds %struct.doublecomplex, ptr %308, i64 %idxprom328
  %call330 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx322, ptr noundef %303, ptr noundef %arrayidx325, ptr noundef %307, ptr noundef @c_b2, ptr noundef %arrayidx329, ptr noundef @c__1)
  %312 = load i32, ptr %i__, align 4
  %sub331 = sub nsw i32 %312, 1
  store i32 %sub331, ptr %i__2, align 4
  %313 = load ptr, ptr %w.addr, align 8
  %314 = load i32, ptr %i__, align 4
  %315 = load i32, ptr %w_dim1, align 4
  %add332 = add nsw i32 %314, %315
  %idxprom333 = sext i32 %add332 to i64
  %arrayidx334 = getelementptr inbounds %struct.doublecomplex, ptr %313, i64 %idxprom333
  %316 = load ptr, ptr %ldw.addr, align 8
  %call335 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx334, ptr noundef %316)
  %317 = load i32, ptr %i__, align 4
  %sub336 = sub nsw i32 %317, 1
  store i32 %sub336, ptr %i__2, align 4
  %318 = load ptr, ptr %a.addr, align 8
  %319 = load i32, ptr %i__, align 4
  %320 = load i32, ptr %a_dim1, align 4
  %add337 = add nsw i32 %319, %320
  %idxprom338 = sext i32 %add337 to i64
  %arrayidx339 = getelementptr inbounds %struct.doublecomplex, ptr %318, i64 %idxprom338
  %321 = load ptr, ptr %lda.addr, align 8
  %call340 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx339, ptr noundef %321)
  %322 = load ptr, ptr %n.addr, align 8
  %323 = load i32, ptr %322, align 4
  %324 = load i32, ptr %i__, align 4
  %sub341 = sub nsw i32 %323, %324
  %add342 = add nsw i32 %sub341, 1
  store i32 %add342, ptr %i__2, align 4
  %325 = load i32, ptr %i__, align 4
  %sub343 = sub nsw i32 %325, 1
  store i32 %sub343, ptr %i__3, align 4
  %r344 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r344, align 8
  %i345 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i345, align 8
  %326 = load ptr, ptr %w.addr, align 8
  %327 = load i32, ptr %i__, align 4
  %328 = load i32, ptr %w_dim1, align 4
  %add346 = add nsw i32 %327, %328
  %idxprom347 = sext i32 %add346 to i64
  %arrayidx348 = getelementptr inbounds %struct.doublecomplex, ptr %326, i64 %idxprom347
  %329 = load ptr, ptr %ldw.addr, align 8
  %330 = load ptr, ptr %a.addr, align 8
  %331 = load i32, ptr %i__, align 4
  %332 = load i32, ptr %a_dim1, align 4
  %add349 = add nsw i32 %331, %332
  %idxprom350 = sext i32 %add349 to i64
  %arrayidx351 = getelementptr inbounds %struct.doublecomplex, ptr %330, i64 %idxprom350
  %333 = load ptr, ptr %lda.addr, align 8
  %334 = load ptr, ptr %a.addr, align 8
  %335 = load i32, ptr %i__, align 4
  %336 = load i32, ptr %i__, align 4
  %337 = load i32, ptr %a_dim1, align 4
  %mul352 = mul nsw i32 %336, %337
  %add353 = add nsw i32 %335, %mul352
  %idxprom354 = sext i32 %add353 to i64
  %arrayidx355 = getelementptr inbounds %struct.doublecomplex, ptr %334, i64 %idxprom354
  %call356 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx348, ptr noundef %329, ptr noundef %arrayidx351, ptr noundef %333, ptr noundef @c_b2, ptr noundef %arrayidx355, ptr noundef @c__1)
  %338 = load i32, ptr %i__, align 4
  %sub357 = sub nsw i32 %338, 1
  store i32 %sub357, ptr %i__2, align 4
  %339 = load ptr, ptr %a.addr, align 8
  %340 = load i32, ptr %i__, align 4
  %341 = load i32, ptr %a_dim1, align 4
  %add358 = add nsw i32 %340, %341
  %idxprom359 = sext i32 %add358 to i64
  %arrayidx360 = getelementptr inbounds %struct.doublecomplex, ptr %339, i64 %idxprom359
  %342 = load ptr, ptr %lda.addr, align 8
  %call361 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx360, ptr noundef %342)
  %343 = load i32, ptr %i__, align 4
  %344 = load i32, ptr %i__, align 4
  %345 = load i32, ptr %a_dim1, align 4
  %mul362 = mul nsw i32 %344, %345
  %add363 = add nsw i32 %343, %mul362
  store i32 %add363, ptr %i__2, align 4
  %346 = load i32, ptr %i__, align 4
  %347 = load i32, ptr %i__, align 4
  %348 = load i32, ptr %a_dim1, align 4
  %mul364 = mul nsw i32 %347, %348
  %add365 = add nsw i32 %346, %mul364
  store i32 %add365, ptr %i__3, align 4
  %349 = load ptr, ptr %a.addr, align 8
  %350 = load i32, ptr %i__3, align 4
  %idxprom366 = sext i32 %350 to i64
  %arrayidx367 = getelementptr inbounds %struct.doublecomplex, ptr %349, i64 %idxprom366
  %r368 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx367, i32 0, i32 0
  %351 = load double, ptr %r368, align 8
  store double %351, ptr %d__1, align 8
  %352 = load double, ptr %d__1, align 8
  %353 = load ptr, ptr %a.addr, align 8
  %354 = load i32, ptr %i__2, align 4
  %idxprom369 = sext i32 %354 to i64
  %arrayidx370 = getelementptr inbounds %struct.doublecomplex, ptr %353, i64 %idxprom369
  %r371 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx370, i32 0, i32 0
  store double %352, ptr %r371, align 8
  %355 = load ptr, ptr %a.addr, align 8
  %356 = load i32, ptr %i__2, align 4
  %idxprom372 = sext i32 %356 to i64
  %arrayidx373 = getelementptr inbounds %struct.doublecomplex, ptr %355, i64 %idxprom372
  %i374 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx373, i32 0, i32 1
  store double 0.000000e+00, ptr %i374, align 8
  %357 = load i32, ptr %i__, align 4
  %358 = load ptr, ptr %n.addr, align 8
  %359 = load i32, ptr %358, align 4
  %cmp375 = icmp slt i32 %357, %359
  br i1 %cmp375, label %if.then376, label %if.end572

if.then376:                                       ; preds = %for.body296
  %360 = load i32, ptr %i__, align 4
  %add377 = add nsw i32 %360, 1
  %361 = load i32, ptr %i__, align 4
  %362 = load i32, ptr %a_dim1, align 4
  %mul378 = mul nsw i32 %361, %362
  %add379 = add nsw i32 %add377, %mul378
  store i32 %add379, ptr %i__2, align 4
  %363 = load ptr, ptr %a.addr, align 8
  %364 = load i32, ptr %i__2, align 4
  %idxprom380 = sext i32 %364 to i64
  %arrayidx381 = getelementptr inbounds %struct.doublecomplex, ptr %363, i64 %idxprom380
  %r382 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx381, i32 0, i32 0
  %365 = load double, ptr %r382, align 8
  %r383 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  store double %365, ptr %r383, align 8
  %366 = load ptr, ptr %a.addr, align 8
  %367 = load i32, ptr %i__2, align 4
  %idxprom384 = sext i32 %367 to i64
  %arrayidx385 = getelementptr inbounds %struct.doublecomplex, ptr %366, i64 %idxprom384
  %i386 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx385, i32 0, i32 1
  %368 = load double, ptr %i386, align 8
  %i387 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 1
  store double %368, ptr %i387, align 8
  %369 = load ptr, ptr %n.addr, align 8
  %370 = load i32, ptr %369, align 4
  %371 = load i32, ptr %i__, align 4
  %sub388 = sub nsw i32 %370, %371
  store i32 %sub388, ptr %i__2, align 4
  %372 = load i32, ptr %i__, align 4
  %add389 = add nsw i32 %372, 2
  store i32 %add389, ptr %i__3, align 4
  %373 = load ptr, ptr %a.addr, align 8
  %374 = load i32, ptr %i__3, align 4
  %375 = load ptr, ptr %n.addr, align 8
  %376 = load i32, ptr %375, align 4
  %cmp390 = icmp sle i32 %374, %376
  br i1 %cmp390, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then376
  %377 = load i32, ptr %i__3, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then376
  %378 = load ptr, ptr %n.addr, align 8
  %379 = load i32, ptr %378, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %377, %cond.true ], [ %379, %cond.false ]
  %380 = load i32, ptr %i__, align 4
  %381 = load i32, ptr %a_dim1, align 4
  %mul391 = mul nsw i32 %380, %381
  %add392 = add nsw i32 %cond, %mul391
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds %struct.doublecomplex, ptr %373, i64 %idxprom393
  %382 = load ptr, ptr %tau.addr, align 8
  %383 = load i32, ptr %i__, align 4
  %idxprom395 = sext i32 %383 to i64
  %arrayidx396 = getelementptr inbounds %struct.doublecomplex, ptr %382, i64 %idxprom395
  %call397 = call i32 @zlarfg_(ptr noundef %i__2, ptr noundef %alpha, ptr noundef %arrayidx394, ptr noundef @c__1, ptr noundef %arrayidx396)
  %384 = load i32, ptr %i__, align 4
  store i32 %384, ptr %i__2, align 4
  %r398 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  %385 = load double, ptr %r398, align 8
  %386 = load ptr, ptr %e.addr, align 8
  %387 = load i32, ptr %i__2, align 4
  %idxprom399 = sext i32 %387 to i64
  %arrayidx400 = getelementptr inbounds double, ptr %386, i64 %idxprom399
  store double %385, ptr %arrayidx400, align 8
  %388 = load i32, ptr %i__, align 4
  %add401 = add nsw i32 %388, 1
  %389 = load i32, ptr %i__, align 4
  %390 = load i32, ptr %a_dim1, align 4
  %mul402 = mul nsw i32 %389, %390
  %add403 = add nsw i32 %add401, %mul402
  store i32 %add403, ptr %i__2, align 4
  %391 = load ptr, ptr %a.addr, align 8
  %392 = load i32, ptr %i__2, align 4
  %idxprom404 = sext i32 %392 to i64
  %arrayidx405 = getelementptr inbounds %struct.doublecomplex, ptr %391, i64 %idxprom404
  %r406 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx405, i32 0, i32 0
  store double 1.000000e+00, ptr %r406, align 8
  %393 = load ptr, ptr %a.addr, align 8
  %394 = load i32, ptr %i__2, align 4
  %idxprom407 = sext i32 %394 to i64
  %arrayidx408 = getelementptr inbounds %struct.doublecomplex, ptr %393, i64 %idxprom407
  %i409 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx408, i32 0, i32 1
  store double 0.000000e+00, ptr %i409, align 8
  %395 = load ptr, ptr %n.addr, align 8
  %396 = load i32, ptr %395, align 4
  %397 = load i32, ptr %i__, align 4
  %sub410 = sub nsw i32 %396, %397
  store i32 %sub410, ptr %i__2, align 4
  %398 = load ptr, ptr %a.addr, align 8
  %399 = load i32, ptr %i__, align 4
  %add411 = add nsw i32 %399, 1
  %400 = load i32, ptr %i__, align 4
  %add412 = add nsw i32 %400, 1
  %401 = load i32, ptr %a_dim1, align 4
  %mul413 = mul nsw i32 %add412, %401
  %add414 = add nsw i32 %add411, %mul413
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds %struct.doublecomplex, ptr %398, i64 %idxprom415
  %402 = load ptr, ptr %lda.addr, align 8
  %403 = load ptr, ptr %a.addr, align 8
  %404 = load i32, ptr %i__, align 4
  %add417 = add nsw i32 %404, 1
  %405 = load i32, ptr %i__, align 4
  %406 = load i32, ptr %a_dim1, align 4
  %mul418 = mul nsw i32 %405, %406
  %add419 = add nsw i32 %add417, %mul418
  %idxprom420 = sext i32 %add419 to i64
  %arrayidx421 = getelementptr inbounds %struct.doublecomplex, ptr %403, i64 %idxprom420
  %407 = load ptr, ptr %w.addr, align 8
  %408 = load i32, ptr %i__, align 4
  %add422 = add nsw i32 %408, 1
  %409 = load i32, ptr %i__, align 4
  %410 = load i32, ptr %w_dim1, align 4
  %mul423 = mul nsw i32 %409, %410
  %add424 = add nsw i32 %add422, %mul423
  %idxprom425 = sext i32 %add424 to i64
  %arrayidx426 = getelementptr inbounds %struct.doublecomplex, ptr %407, i64 %idxprom425
  %call427 = call i32 @zhemv_(ptr noundef @.str.4, ptr noundef %i__2, ptr noundef @c_b2, ptr noundef %arrayidx416, ptr noundef %402, ptr noundef %arrayidx421, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx426, ptr noundef @c__1)
  %411 = load ptr, ptr %n.addr, align 8
  %412 = load i32, ptr %411, align 4
  %413 = load i32, ptr %i__, align 4
  %sub428 = sub nsw i32 %412, %413
  store i32 %sub428, ptr %i__2, align 4
  %414 = load i32, ptr %i__, align 4
  %sub429 = sub nsw i32 %414, 1
  store i32 %sub429, ptr %i__3, align 4
  %415 = load ptr, ptr %w.addr, align 8
  %416 = load i32, ptr %i__, align 4
  %add430 = add nsw i32 %416, 1
  %417 = load i32, ptr %w_dim1, align 4
  %add431 = add nsw i32 %add430, %417
  %idxprom432 = sext i32 %add431 to i64
  %arrayidx433 = getelementptr inbounds %struct.doublecomplex, ptr %415, i64 %idxprom432
  %418 = load ptr, ptr %ldw.addr, align 8
  %419 = load ptr, ptr %a.addr, align 8
  %420 = load i32, ptr %i__, align 4
  %add434 = add nsw i32 %420, 1
  %421 = load i32, ptr %i__, align 4
  %422 = load i32, ptr %a_dim1, align 4
  %mul435 = mul nsw i32 %421, %422
  %add436 = add nsw i32 %add434, %mul435
  %idxprom437 = sext i32 %add436 to i64
  %arrayidx438 = getelementptr inbounds %struct.doublecomplex, ptr %419, i64 %idxprom437
  %423 = load ptr, ptr %w.addr, align 8
  %424 = load i32, ptr %i__, align 4
  %425 = load i32, ptr %w_dim1, align 4
  %mul439 = mul nsw i32 %424, %425
  %add440 = add nsw i32 %mul439, 1
  %idxprom441 = sext i32 %add440 to i64
  %arrayidx442 = getelementptr inbounds %struct.doublecomplex, ptr %423, i64 %idxprom441
  %call443 = call i32 @zgemv_(ptr noundef @.str.3, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx433, ptr noundef %418, ptr noundef %arrayidx438, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx442, ptr noundef @c__1)
  %426 = load ptr, ptr %n.addr, align 8
  %427 = load i32, ptr %426, align 4
  %428 = load i32, ptr %i__, align 4
  %sub444 = sub nsw i32 %427, %428
  store i32 %sub444, ptr %i__2, align 4
  %429 = load i32, ptr %i__, align 4
  %sub445 = sub nsw i32 %429, 1
  store i32 %sub445, ptr %i__3, align 4
  %r446 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r446, align 8
  %i447 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i447, align 8
  %430 = load ptr, ptr %a.addr, align 8
  %431 = load i32, ptr %i__, align 4
  %add448 = add nsw i32 %431, 1
  %432 = load i32, ptr %a_dim1, align 4
  %add449 = add nsw i32 %add448, %432
  %idxprom450 = sext i32 %add449 to i64
  %arrayidx451 = getelementptr inbounds %struct.doublecomplex, ptr %430, i64 %idxprom450
  %433 = load ptr, ptr %lda.addr, align 8
  %434 = load ptr, ptr %w.addr, align 8
  %435 = load i32, ptr %i__, align 4
  %436 = load i32, ptr %w_dim1, align 4
  %mul452 = mul nsw i32 %435, %436
  %add453 = add nsw i32 %mul452, 1
  %idxprom454 = sext i32 %add453 to i64
  %arrayidx455 = getelementptr inbounds %struct.doublecomplex, ptr %434, i64 %idxprom454
  %437 = load ptr, ptr %w.addr, align 8
  %438 = load i32, ptr %i__, align 4
  %add456 = add nsw i32 %438, 1
  %439 = load i32, ptr %i__, align 4
  %440 = load i32, ptr %w_dim1, align 4
  %mul457 = mul nsw i32 %439, %440
  %add458 = add nsw i32 %add456, %mul457
  %idxprom459 = sext i32 %add458 to i64
  %arrayidx460 = getelementptr inbounds %struct.doublecomplex, ptr %437, i64 %idxprom459
  %call461 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx451, ptr noundef %433, ptr noundef %arrayidx455, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx460, ptr noundef @c__1)
  %441 = load ptr, ptr %n.addr, align 8
  %442 = load i32, ptr %441, align 4
  %443 = load i32, ptr %i__, align 4
  %sub462 = sub nsw i32 %442, %443
  store i32 %sub462, ptr %i__2, align 4
  %444 = load i32, ptr %i__, align 4
  %sub463 = sub nsw i32 %444, 1
  store i32 %sub463, ptr %i__3, align 4
  %445 = load ptr, ptr %a.addr, align 8
  %446 = load i32, ptr %i__, align 4
  %add464 = add nsw i32 %446, 1
  %447 = load i32, ptr %a_dim1, align 4
  %add465 = add nsw i32 %add464, %447
  %idxprom466 = sext i32 %add465 to i64
  %arrayidx467 = getelementptr inbounds %struct.doublecomplex, ptr %445, i64 %idxprom466
  %448 = load ptr, ptr %lda.addr, align 8
  %449 = load ptr, ptr %a.addr, align 8
  %450 = load i32, ptr %i__, align 4
  %add468 = add nsw i32 %450, 1
  %451 = load i32, ptr %i__, align 4
  %452 = load i32, ptr %a_dim1, align 4
  %mul469 = mul nsw i32 %451, %452
  %add470 = add nsw i32 %add468, %mul469
  %idxprom471 = sext i32 %add470 to i64
  %arrayidx472 = getelementptr inbounds %struct.doublecomplex, ptr %449, i64 %idxprom471
  %453 = load ptr, ptr %w.addr, align 8
  %454 = load i32, ptr %i__, align 4
  %455 = load i32, ptr %w_dim1, align 4
  %mul473 = mul nsw i32 %454, %455
  %add474 = add nsw i32 %mul473, 1
  %idxprom475 = sext i32 %add474 to i64
  %arrayidx476 = getelementptr inbounds %struct.doublecomplex, ptr %453, i64 %idxprom475
  %call477 = call i32 @zgemv_(ptr noundef @.str.3, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx467, ptr noundef %448, ptr noundef %arrayidx472, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx476, ptr noundef @c__1)
  %456 = load ptr, ptr %n.addr, align 8
  %457 = load i32, ptr %456, align 4
  %458 = load i32, ptr %i__, align 4
  %sub478 = sub nsw i32 %457, %458
  store i32 %sub478, ptr %i__2, align 4
  %459 = load i32, ptr %i__, align 4
  %sub479 = sub nsw i32 %459, 1
  store i32 %sub479, ptr %i__3, align 4
  %r480 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r480, align 8
  %i481 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i481, align 8
  %460 = load ptr, ptr %w.addr, align 8
  %461 = load i32, ptr %i__, align 4
  %add482 = add nsw i32 %461, 1
  %462 = load i32, ptr %w_dim1, align 4
  %add483 = add nsw i32 %add482, %462
  %idxprom484 = sext i32 %add483 to i64
  %arrayidx485 = getelementptr inbounds %struct.doublecomplex, ptr %460, i64 %idxprom484
  %463 = load ptr, ptr %ldw.addr, align 8
  %464 = load ptr, ptr %w.addr, align 8
  %465 = load i32, ptr %i__, align 4
  %466 = load i32, ptr %w_dim1, align 4
  %mul486 = mul nsw i32 %465, %466
  %add487 = add nsw i32 %mul486, 1
  %idxprom488 = sext i32 %add487 to i64
  %arrayidx489 = getelementptr inbounds %struct.doublecomplex, ptr %464, i64 %idxprom488
  %467 = load ptr, ptr %w.addr, align 8
  %468 = load i32, ptr %i__, align 4
  %add490 = add nsw i32 %468, 1
  %469 = load i32, ptr %i__, align 4
  %470 = load i32, ptr %w_dim1, align 4
  %mul491 = mul nsw i32 %469, %470
  %add492 = add nsw i32 %add490, %mul491
  %idxprom493 = sext i32 %add492 to i64
  %arrayidx494 = getelementptr inbounds %struct.doublecomplex, ptr %467, i64 %idxprom493
  %call495 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx485, ptr noundef %463, ptr noundef %arrayidx489, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx494, ptr noundef @c__1)
  %471 = load ptr, ptr %n.addr, align 8
  %472 = load i32, ptr %471, align 4
  %473 = load i32, ptr %i__, align 4
  %sub496 = sub nsw i32 %472, %473
  store i32 %sub496, ptr %i__2, align 4
  %474 = load ptr, ptr %tau.addr, align 8
  %475 = load i32, ptr %i__, align 4
  %idxprom497 = sext i32 %475 to i64
  %arrayidx498 = getelementptr inbounds %struct.doublecomplex, ptr %474, i64 %idxprom497
  %476 = load ptr, ptr %w.addr, align 8
  %477 = load i32, ptr %i__, align 4
  %add499 = add nsw i32 %477, 1
  %478 = load i32, ptr %i__, align 4
  %479 = load i32, ptr %w_dim1, align 4
  %mul500 = mul nsw i32 %478, %479
  %add501 = add nsw i32 %add499, %mul500
  %idxprom502 = sext i32 %add501 to i64
  %arrayidx503 = getelementptr inbounds %struct.doublecomplex, ptr %476, i64 %idxprom502
  %call504 = call i32 @zscal_(ptr noundef %i__2, ptr noundef %arrayidx498, ptr noundef %arrayidx503, ptr noundef @c__1)
  %r505 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  store double -5.000000e-01, ptr %r505, align 8
  %i506 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  store double -0.000000e+00, ptr %i506, align 8
  %480 = load i32, ptr %i__, align 4
  store i32 %480, ptr %i__2, align 4
  %r507 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  %481 = load double, ptr %r507, align 8
  %482 = load ptr, ptr %tau.addr, align 8
  %483 = load i32, ptr %i__2, align 4
  %idxprom508 = sext i32 %483 to i64
  %arrayidx509 = getelementptr inbounds %struct.doublecomplex, ptr %482, i64 %idxprom508
  %r510 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx509, i32 0, i32 0
  %484 = load double, ptr %r510, align 8
  %i512 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  %485 = load double, ptr %i512, align 8
  %486 = load ptr, ptr %tau.addr, align 8
  %487 = load i32, ptr %i__2, align 4
  %idxprom513 = sext i32 %487 to i64
  %arrayidx514 = getelementptr inbounds %struct.doublecomplex, ptr %486, i64 %idxprom513
  %i515 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx514, i32 0, i32 1
  %488 = load double, ptr %i515, align 8
  %mul516 = fmul double %485, %488
  %neg517 = fneg double %mul516
  %489 = call double @llvm.fmuladd.f64(double %481, double %484, double %neg517)
  %r518 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %489, ptr %r518, align 8
  %r519 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  %490 = load double, ptr %r519, align 8
  %491 = load ptr, ptr %tau.addr, align 8
  %492 = load i32, ptr %i__2, align 4
  %idxprom520 = sext i32 %492 to i64
  %arrayidx521 = getelementptr inbounds %struct.doublecomplex, ptr %491, i64 %idxprom520
  %i522 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx521, i32 0, i32 1
  %493 = load double, ptr %i522, align 8
  %i524 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  %494 = load double, ptr %i524, align 8
  %495 = load ptr, ptr %tau.addr, align 8
  %496 = load i32, ptr %i__2, align 4
  %idxprom525 = sext i32 %496 to i64
  %arrayidx526 = getelementptr inbounds %struct.doublecomplex, ptr %495, i64 %idxprom525
  %r527 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx526, i32 0, i32 0
  %497 = load double, ptr %r527, align 8
  %mul528 = fmul double %494, %497
  %498 = call double @llvm.fmuladd.f64(double %490, double %493, double %mul528)
  %i529 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %498, ptr %i529, align 8
  %499 = load ptr, ptr %n.addr, align 8
  %500 = load i32, ptr %499, align 4
  %501 = load i32, ptr %i__, align 4
  %sub530 = sub nsw i32 %500, %501
  store i32 %sub530, ptr %i__3, align 4
  %502 = load ptr, ptr %w.addr, align 8
  %503 = load i32, ptr %i__, align 4
  %add531 = add nsw i32 %503, 1
  %504 = load i32, ptr %i__, align 4
  %505 = load i32, ptr %w_dim1, align 4
  %mul532 = mul nsw i32 %504, %505
  %add533 = add nsw i32 %add531, %mul532
  %idxprom534 = sext i32 %add533 to i64
  %arrayidx535 = getelementptr inbounds %struct.doublecomplex, ptr %502, i64 %idxprom534
  %506 = load ptr, ptr %a.addr, align 8
  %507 = load i32, ptr %i__, align 4
  %add536 = add nsw i32 %507, 1
  %508 = load i32, ptr %i__, align 4
  %509 = load i32, ptr %a_dim1, align 4
  %mul537 = mul nsw i32 %508, %509
  %add538 = add nsw i32 %add536, %mul537
  %idxprom539 = sext i32 %add538 to i64
  %arrayidx540 = getelementptr inbounds %struct.doublecomplex, ptr %506, i64 %idxprom539
  call void @zdotc_f2c_(ptr noundef %z__4, ptr noundef %i__3, ptr noundef %arrayidx535, ptr noundef @c__1, ptr noundef %arrayidx540, ptr noundef @c__1)
  %r541 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %510 = load double, ptr %r541, align 8
  %r542 = getelementptr inbounds %struct.doublecomplex, ptr %z__4, i32 0, i32 0
  %511 = load double, ptr %r542, align 8
  %i544 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %512 = load double, ptr %i544, align 8
  %i545 = getelementptr inbounds %struct.doublecomplex, ptr %z__4, i32 0, i32 1
  %513 = load double, ptr %i545, align 8
  %mul546 = fmul double %512, %513
  %neg547 = fneg double %mul546
  %514 = call double @llvm.fmuladd.f64(double %510, double %511, double %neg547)
  %r548 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %514, ptr %r548, align 8
  %r549 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %515 = load double, ptr %r549, align 8
  %i550 = getelementptr inbounds %struct.doublecomplex, ptr %z__4, i32 0, i32 1
  %516 = load double, ptr %i550, align 8
  %i552 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %517 = load double, ptr %i552, align 8
  %r553 = getelementptr inbounds %struct.doublecomplex, ptr %z__4, i32 0, i32 0
  %518 = load double, ptr %r553, align 8
  %mul554 = fmul double %517, %518
  %519 = call double @llvm.fmuladd.f64(double %515, double %516, double %mul554)
  %i555 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %519, ptr %i555, align 8
  %r556 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %520 = load double, ptr %r556, align 8
  %r557 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  store double %520, ptr %r557, align 8
  %i558 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %521 = load double, ptr %i558, align 8
  %i559 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 1
  store double %521, ptr %i559, align 8
  %522 = load ptr, ptr %n.addr, align 8
  %523 = load i32, ptr %522, align 4
  %524 = load i32, ptr %i__, align 4
  %sub560 = sub nsw i32 %523, %524
  store i32 %sub560, ptr %i__2, align 4
  %525 = load ptr, ptr %a.addr, align 8
  %526 = load i32, ptr %i__, align 4
  %add561 = add nsw i32 %526, 1
  %527 = load i32, ptr %i__, align 4
  %528 = load i32, ptr %a_dim1, align 4
  %mul562 = mul nsw i32 %527, %528
  %add563 = add nsw i32 %add561, %mul562
  %idxprom564 = sext i32 %add563 to i64
  %arrayidx565 = getelementptr inbounds %struct.doublecomplex, ptr %525, i64 %idxprom564
  %529 = load ptr, ptr %w.addr, align 8
  %530 = load i32, ptr %i__, align 4
  %add566 = add nsw i32 %530, 1
  %531 = load i32, ptr %i__, align 4
  %532 = load i32, ptr %w_dim1, align 4
  %mul567 = mul nsw i32 %531, %532
  %add568 = add nsw i32 %add566, %mul567
  %idxprom569 = sext i32 %add568 to i64
  %arrayidx570 = getelementptr inbounds %struct.doublecomplex, ptr %529, i64 %idxprom569
  %call571 = call i32 @zaxpy_(ptr noundef %i__2, ptr noundef %alpha, ptr noundef %arrayidx565, ptr noundef @c__1, ptr noundef %arrayidx570, ptr noundef @c__1)
  br label %if.end572

if.end572:                                        ; preds = %cond.end, %for.body296
  br label %for.inc573

for.inc573:                                       ; preds = %if.end572
  %533 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %533, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond294, !llvm.loop !7

for.end574:                                       ; preds = %for.cond294
  br label %if.end575

if.end575:                                        ; preds = %for.end574, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end575, %if.then
  %534 = load i32, ptr %retval, align 4
  ret i32 %534
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @zlacgv_(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zhemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare void @zdotc_f2c_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zaxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

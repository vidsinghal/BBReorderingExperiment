; ModuleID = 'samples/540.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/csytrs2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"CSYTRS2\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@c_b1 = internal global %struct.complex { float 1.000000e+00, float 0.000000e+00 }, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"R\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @csytrs2_(ptr noundef %uplo, ptr noundef %n, ptr noundef %nrhs, ptr noundef %a, ptr noundef %lda, ptr noundef %ipiv, ptr noundef %b, ptr noundef %ldb, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %q__1 = alloca %struct.complex, align 4
  %q__2 = alloca %struct.complex, align 4
  %q__3 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ak = alloca %struct.complex, align 4
  %bk = alloca %struct.complex, align 4
  %kp = alloca i32, align 4
  %akm1 = alloca %struct.complex, align 4
  %bkm1 = alloca %struct.complex, align 4
  %akm1k = alloca %struct.complex, align 4
  %denom = alloca %struct.complex, align 4
  %iinfo = alloca i32, align 4
  %upper = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %nrhs, ptr %nrhs.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %ipiv, ptr %ipiv.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %info, ptr %info.addr, align 8
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
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %5 = load ptr, ptr %ipiv.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8
  %6 = load ptr, ptr %ldb.addr, align 8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %b_dim1, align 4
  %8 = load i32, ptr %b_dim1, align 4
  %add1 = add nsw i32 1, %8
  store i32 %add1, ptr %b_offset, align 4
  %9 = load i32, ptr %b_offset, align 4
  %10 = load ptr, ptr %b.addr, align 8
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8
  %11 = load ptr, ptr %work.addr, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.complex, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %work.addr, align 8
  %12 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %13, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4
  %14 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %15 = load ptr, ptr %uplo.addr, align 8
  %call6 = call i32 @lsame_(ptr noundef %15, ptr noundef @.str.1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %16 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %16, align 4
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true, %entry
  %17 = load ptr, ptr %n.addr, align 8
  %18 = load i32, ptr %17, align 4
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  %19 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %19, align 4
  br label %if.end26

if.else9:                                         ; preds = %if.else
  %20 = load ptr, ptr %nrhs.addr, align 8
  %21 = load i32, ptr %20, align 4
  %cmp10 = icmp slt i32 %21, 0
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else9
  %22 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %22, align 4
  br label %if.end25

if.else12:                                        ; preds = %if.else9
  %23 = load ptr, ptr %lda.addr, align 8
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %n.addr, align 8
  %26 = load i32, ptr %25, align 4
  %cmp13 = icmp sge i32 1, %26
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else12
  br label %cond.end

cond.false:                                       ; preds = %if.else12
  %27 = load ptr, ptr %n.addr, align 8
  %28 = load i32, ptr %27, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %28, %cond.false ]
  %cmp14 = icmp slt i32 %24, %cond
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %cond.end
  %29 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %29, align 4
  br label %if.end24

if.else16:                                        ; preds = %cond.end
  %30 = load ptr, ptr %ldb.addr, align 8
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %n.addr, align 8
  %33 = load i32, ptr %32, align 4
  %cmp17 = icmp sge i32 1, %33
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %if.else16
  br label %cond.end20

cond.false19:                                     ; preds = %if.else16
  %34 = load ptr, ptr %n.addr, align 8
  %35 = load i32, ptr %34, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i32 [ 1, %cond.true18 ], [ %35, %cond.false19 ]
  %cmp22 = icmp slt i32 %31, %cond21
  br i1 %cmp22, label %if.then23, label %if.end

if.then23:                                        ; preds = %cond.end20
  %36 = load ptr, ptr %info.addr, align 8
  store i32 -8, ptr %36, align 4
  br label %if.end

if.end:                                           ; preds = %if.then23, %cond.end20
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then15
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then11
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then8
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then
  %37 = load ptr, ptr %info.addr, align 8
  %38 = load i32, ptr %37, align 4
  %cmp28 = icmp ne i32 %38, 0
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end27
  %39 = load ptr, ptr %info.addr, align 8
  %40 = load i32, ptr %39, align 4
  %sub = sub nsw i32 0, %40
  store i32 %sub, ptr %i__1, align 4
  %call30 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end27
  %41 = load ptr, ptr %n.addr, align 8
  %42 = load i32, ptr %41, align 4
  %cmp32 = icmp eq i32 %42, 0
  br i1 %cmp32, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31
  %43 = load ptr, ptr %nrhs.addr, align 8
  %44 = load i32, ptr %43, align 4
  %cmp33 = icmp eq i32 %44, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %lor.lhs.false, %if.end31
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false
  %45 = load ptr, ptr %uplo.addr, align 8
  %46 = load ptr, ptr %n.addr, align 8
  %47 = load ptr, ptr %a.addr, align 8
  %48 = load i32, ptr %a_offset, align 4
  %idxprom = sext i32 %48 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %47, i64 %idxprom
  %49 = load ptr, ptr %lda.addr, align 8
  %50 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %50, i64 1
  %51 = load ptr, ptr %work.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.complex, ptr %51, i64 1
  %call38 = call i32 @csyconv_(ptr noundef %45, ptr noundef @.str.3, ptr noundef %46, ptr noundef %arrayidx, ptr noundef %49, ptr noundef %arrayidx36, ptr noundef %arrayidx37, ptr noundef %iinfo)
  %52 = load i32, ptr %upper, align 4
  %tobool39 = icmp ne i32 %52, 0
  br i1 %tobool39, label %if.then40, label %if.else295

if.then40:                                        ; preds = %if.end35
  %53 = load ptr, ptr %n.addr, align 8
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end78, %if.then40
  %55 = load i32, ptr %k, align 4
  %cmp41 = icmp sge i32 %55, 1
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %56 = load ptr, ptr %ipiv.addr, align 8
  %57 = load i32, ptr %k, align 4
  %idxprom42 = sext i32 %57 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %56, i64 %idxprom42
  %58 = load i32, ptr %arrayidx43, align 4
  %cmp44 = icmp sgt i32 %58, 0
  br i1 %cmp44, label %if.then45, label %if.else58

if.then45:                                        ; preds = %while.body
  %59 = load ptr, ptr %ipiv.addr, align 8
  %60 = load i32, ptr %k, align 4
  %idxprom46 = sext i32 %60 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %59, i64 %idxprom46
  %61 = load i32, ptr %arrayidx47, align 4
  store i32 %61, ptr %kp, align 4
  %62 = load i32, ptr %kp, align 4
  %63 = load i32, ptr %k, align 4
  %cmp48 = icmp ne i32 %62, %63
  br i1 %cmp48, label %if.then49, label %if.end57

if.then49:                                        ; preds = %if.then45
  %64 = load ptr, ptr %nrhs.addr, align 8
  %65 = load ptr, ptr %b.addr, align 8
  %66 = load i32, ptr %k, align 4
  %67 = load i32, ptr %b_dim1, align 4
  %add50 = add nsw i32 %66, %67
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds %struct.complex, ptr %65, i64 %idxprom51
  %68 = load ptr, ptr %ldb.addr, align 8
  %69 = load ptr, ptr %b.addr, align 8
  %70 = load i32, ptr %kp, align 4
  %71 = load i32, ptr %b_dim1, align 4
  %add53 = add nsw i32 %70, %71
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds %struct.complex, ptr %69, i64 %idxprom54
  %72 = load ptr, ptr %ldb.addr, align 8
  %call56 = call i32 @cswap_(ptr noundef %64, ptr noundef %arrayidx52, ptr noundef %68, ptr noundef %arrayidx55, ptr noundef %72)
  br label %if.end57

if.end57:                                         ; preds = %if.then49, %if.then45
  %73 = load i32, ptr %k, align 4
  %dec = add nsw i32 %73, -1
  store i32 %dec, ptr %k, align 4
  br label %if.end78

if.else58:                                        ; preds = %while.body
  %74 = load ptr, ptr %ipiv.addr, align 8
  %75 = load i32, ptr %k, align 4
  %idxprom59 = sext i32 %75 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %74, i64 %idxprom59
  %76 = load i32, ptr %arrayidx60, align 4
  %sub61 = sub nsw i32 0, %76
  store i32 %sub61, ptr %kp, align 4
  %77 = load i32, ptr %kp, align 4
  %78 = load ptr, ptr %ipiv.addr, align 8
  %79 = load i32, ptr %k, align 4
  %sub62 = sub nsw i32 %79, 1
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %78, i64 %idxprom63
  %80 = load i32, ptr %arrayidx64, align 4
  %sub65 = sub nsw i32 0, %80
  %cmp66 = icmp eq i32 %77, %sub65
  br i1 %cmp66, label %if.then67, label %if.end76

if.then67:                                        ; preds = %if.else58
  %81 = load ptr, ptr %nrhs.addr, align 8
  %82 = load ptr, ptr %b.addr, align 8
  %83 = load i32, ptr %k, align 4
  %sub68 = sub nsw i32 %83, 1
  %84 = load i32, ptr %b_dim1, align 4
  %add69 = add nsw i32 %sub68, %84
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds %struct.complex, ptr %82, i64 %idxprom70
  %85 = load ptr, ptr %ldb.addr, align 8
  %86 = load ptr, ptr %b.addr, align 8
  %87 = load i32, ptr %kp, align 4
  %88 = load i32, ptr %b_dim1, align 4
  %add72 = add nsw i32 %87, %88
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds %struct.complex, ptr %86, i64 %idxprom73
  %89 = load ptr, ptr %ldb.addr, align 8
  %call75 = call i32 @cswap_(ptr noundef %81, ptr noundef %arrayidx71, ptr noundef %85, ptr noundef %arrayidx74, ptr noundef %89)
  br label %if.end76

if.end76:                                         ; preds = %if.then67, %if.else58
  %90 = load i32, ptr %k, align 4
  %add77 = add nsw i32 %90, -2
  store i32 %add77, ptr %k, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.end76, %if.end57
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %91 = load ptr, ptr %n.addr, align 8
  %92 = load ptr, ptr %nrhs.addr, align 8
  %93 = load ptr, ptr %a.addr, align 8
  %94 = load i32, ptr %a_offset, align 4
  %idxprom79 = sext i32 %94 to i64
  %arrayidx80 = getelementptr inbounds %struct.complex, ptr %93, i64 %idxprom79
  %95 = load ptr, ptr %lda.addr, align 8
  %96 = load ptr, ptr %b.addr, align 8
  %97 = load i32, ptr %b_offset, align 4
  %idxprom81 = sext i32 %97 to i64
  %arrayidx82 = getelementptr inbounds %struct.complex, ptr %96, i64 %idxprom81
  %98 = load ptr, ptr %ldb.addr, align 8
  %call83 = call i32 @ctrsm_(ptr noundef @.str.1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %91, ptr noundef %92, ptr noundef @c_b1, ptr noundef %arrayidx80, ptr noundef %95, ptr noundef %arrayidx82, ptr noundef %98)
  %99 = load ptr, ptr %n.addr, align 8
  %100 = load i32, ptr %99, align 4
  store i32 %100, ptr %i__, align 4
  br label %while.cond84

while.cond84:                                     ; preds = %if.end244, %while.end
  %101 = load i32, ptr %i__, align 4
  %cmp85 = icmp sge i32 %101, 1
  br i1 %cmp85, label %while.body86, label %while.end246

while.body86:                                     ; preds = %while.cond84
  %102 = load ptr, ptr %ipiv.addr, align 8
  %103 = load i32, ptr %i__, align 4
  %idxprom87 = sext i32 %103 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %102, i64 %idxprom87
  %104 = load i32, ptr %arrayidx88, align 4
  %cmp89 = icmp sgt i32 %104, 0
  br i1 %cmp89, label %if.then90, label %if.else98

if.then90:                                        ; preds = %while.body86
  %105 = load ptr, ptr %a.addr, align 8
  %106 = load i32, ptr %i__, align 4
  %107 = load i32, ptr %i__, align 4
  %108 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %107, %108
  %add91 = add nsw i32 %106, %mul
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds %struct.complex, ptr %105, i64 %idxprom92
  call void @c_div(ptr noundef %q__1, ptr noundef @c_b1, ptr noundef %arrayidx93)
  %109 = load ptr, ptr %nrhs.addr, align 8
  %110 = load ptr, ptr %b.addr, align 8
  %111 = load i32, ptr %i__, align 4
  %112 = load i32, ptr %b_dim1, align 4
  %add94 = add nsw i32 %111, %112
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds %struct.complex, ptr %110, i64 %idxprom95
  %113 = load ptr, ptr %ldb.addr, align 8
  %call97 = call i32 @cscal_(ptr noundef %109, ptr noundef %q__1, ptr noundef %arrayidx96, ptr noundef %113)
  br label %if.end244

if.else98:                                        ; preds = %while.body86
  %114 = load i32, ptr %i__, align 4
  %cmp99 = icmp sgt i32 %114, 1
  br i1 %cmp99, label %if.then100, label %if.end243

if.then100:                                       ; preds = %if.else98
  %115 = load ptr, ptr %ipiv.addr, align 8
  %116 = load i32, ptr %i__, align 4
  %sub101 = sub nsw i32 %116, 1
  %idxprom102 = sext i32 %sub101 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %115, i64 %idxprom102
  %117 = load i32, ptr %arrayidx103, align 4
  %118 = load ptr, ptr %ipiv.addr, align 8
  %119 = load i32, ptr %i__, align 4
  %idxprom104 = sext i32 %119 to i64
  %arrayidx105 = getelementptr inbounds i32, ptr %118, i64 %idxprom104
  %120 = load i32, ptr %arrayidx105, align 4
  %cmp106 = icmp eq i32 %117, %120
  br i1 %cmp106, label %if.then107, label %if.end242

if.then107:                                       ; preds = %if.then100
  %121 = load i32, ptr %i__, align 4
  store i32 %121, ptr %i__1, align 4
  %122 = load ptr, ptr %work.addr, align 8
  %123 = load i32, ptr %i__1, align 4
  %idxprom108 = sext i32 %123 to i64
  %arrayidx109 = getelementptr inbounds %struct.complex, ptr %122, i64 %idxprom108
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx109, i32 0, i32 0
  %124 = load float, ptr %r, align 4
  %r110 = getelementptr inbounds %struct.complex, ptr %akm1k, i32 0, i32 0
  store float %124, ptr %r110, align 4
  %125 = load ptr, ptr %work.addr, align 8
  %126 = load i32, ptr %i__1, align 4
  %idxprom111 = sext i32 %126 to i64
  %arrayidx112 = getelementptr inbounds %struct.complex, ptr %125, i64 %idxprom111
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx112, i32 0, i32 1
  %127 = load float, ptr %i, align 4
  %i113 = getelementptr inbounds %struct.complex, ptr %akm1k, i32 0, i32 1
  store float %127, ptr %i113, align 4
  %128 = load ptr, ptr %a.addr, align 8
  %129 = load i32, ptr %i__, align 4
  %sub114 = sub nsw i32 %129, 1
  %130 = load i32, ptr %i__, align 4
  %sub115 = sub nsw i32 %130, 1
  %131 = load i32, ptr %a_dim1, align 4
  %mul116 = mul nsw i32 %sub115, %131
  %add117 = add nsw i32 %sub114, %mul116
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx119 = getelementptr inbounds %struct.complex, ptr %128, i64 %idxprom118
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx119, ptr noundef %akm1k)
  %r120 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %132 = load float, ptr %r120, align 4
  %r121 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  store float %132, ptr %r121, align 4
  %i122 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %133 = load float, ptr %i122, align 4
  %i123 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  store float %133, ptr %i123, align 4
  %134 = load ptr, ptr %a.addr, align 8
  %135 = load i32, ptr %i__, align 4
  %136 = load i32, ptr %i__, align 4
  %137 = load i32, ptr %a_dim1, align 4
  %mul124 = mul nsw i32 %136, %137
  %add125 = add nsw i32 %135, %mul124
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds %struct.complex, ptr %134, i64 %idxprom126
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx127, ptr noundef %akm1k)
  %r128 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %138 = load float, ptr %r128, align 4
  %r129 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  store float %138, ptr %r129, align 4
  %i130 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %139 = load float, ptr %i130, align 4
  %i131 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  store float %139, ptr %i131, align 4
  %r132 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %140 = load float, ptr %r132, align 4
  %r133 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %141 = load float, ptr %r133, align 4
  %i135 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %142 = load float, ptr %i135, align 4
  %i136 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %143 = load float, ptr %i136, align 4
  %mul137 = fmul float %142, %143
  %neg = fneg float %mul137
  %144 = call float @llvm.fmuladd.f32(float %140, float %141, float %neg)
  %r138 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %144, ptr %r138, align 4
  %r139 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %145 = load float, ptr %r139, align 4
  %i140 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %146 = load float, ptr %i140, align 4
  %i142 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %147 = load float, ptr %i142, align 4
  %r143 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %148 = load float, ptr %r143, align 4
  %mul144 = fmul float %147, %148
  %149 = call float @llvm.fmuladd.f32(float %145, float %146, float %mul144)
  %i145 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %149, ptr %i145, align 4
  %r146 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %150 = load float, ptr %r146, align 4
  %sub147 = fsub float %150, 1.000000e+00
  %r148 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub147, ptr %r148, align 4
  %i149 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %151 = load float, ptr %i149, align 4
  %sub150 = fsub float %151, 0.000000e+00
  %i151 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub150, ptr %i151, align 4
  %r152 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %152 = load float, ptr %r152, align 4
  %r153 = getelementptr inbounds %struct.complex, ptr %denom, i32 0, i32 0
  store float %152, ptr %r153, align 4
  %i154 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %153 = load float, ptr %i154, align 4
  %i155 = getelementptr inbounds %struct.complex, ptr %denom, i32 0, i32 1
  store float %153, ptr %i155, align 4
  %154 = load ptr, ptr %nrhs.addr, align 8
  %155 = load i32, ptr %154, align 4
  store i32 %155, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then107
  %156 = load i32, ptr %j, align 4
  %157 = load i32, ptr %i__1, align 4
  %cmp156 = icmp sle i32 %156, %157
  br i1 %cmp156, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %158 = load ptr, ptr %b.addr, align 8
  %159 = load i32, ptr %i__, align 4
  %sub157 = sub nsw i32 %159, 1
  %160 = load i32, ptr %j, align 4
  %161 = load i32, ptr %b_dim1, align 4
  %mul158 = mul nsw i32 %160, %161
  %add159 = add nsw i32 %sub157, %mul158
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds %struct.complex, ptr %158, i64 %idxprom160
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx161, ptr noundef %akm1k)
  %r162 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %162 = load float, ptr %r162, align 4
  %r163 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  store float %162, ptr %r163, align 4
  %i164 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %163 = load float, ptr %i164, align 4
  %i165 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  store float %163, ptr %i165, align 4
  %164 = load ptr, ptr %b.addr, align 8
  %165 = load i32, ptr %i__, align 4
  %166 = load i32, ptr %j, align 4
  %167 = load i32, ptr %b_dim1, align 4
  %mul166 = mul nsw i32 %166, %167
  %add167 = add nsw i32 %165, %mul166
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds %struct.complex, ptr %164, i64 %idxprom168
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx169, ptr noundef %akm1k)
  %r170 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %168 = load float, ptr %r170, align 4
  %r171 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  store float %168, ptr %r171, align 4
  %i172 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %169 = load float, ptr %i172, align 4
  %i173 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  store float %169, ptr %i173, align 4
  %170 = load i32, ptr %i__, align 4
  %sub174 = sub nsw i32 %170, 1
  %171 = load i32, ptr %j, align 4
  %172 = load i32, ptr %b_dim1, align 4
  %mul175 = mul nsw i32 %171, %172
  %add176 = add nsw i32 %sub174, %mul175
  store i32 %add176, ptr %i__2, align 4
  %r177 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %173 = load float, ptr %r177, align 4
  %r178 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  %174 = load float, ptr %r178, align 4
  %i180 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %175 = load float, ptr %i180, align 4
  %i181 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  %176 = load float, ptr %i181, align 4
  %mul182 = fmul float %175, %176
  %neg183 = fneg float %mul182
  %177 = call float @llvm.fmuladd.f32(float %173, float %174, float %neg183)
  %r184 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %177, ptr %r184, align 4
  %r185 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %178 = load float, ptr %r185, align 4
  %i186 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  %179 = load float, ptr %i186, align 4
  %i188 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %180 = load float, ptr %i188, align 4
  %r189 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  %181 = load float, ptr %r189, align 4
  %mul190 = fmul float %180, %181
  %182 = call float @llvm.fmuladd.f32(float %178, float %179, float %mul190)
  %i191 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %182, ptr %i191, align 4
  %r192 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %183 = load float, ptr %r192, align 4
  %r193 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  %184 = load float, ptr %r193, align 4
  %sub194 = fsub float %183, %184
  %r195 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub194, ptr %r195, align 4
  %i196 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %185 = load float, ptr %i196, align 4
  %i197 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  %186 = load float, ptr %i197, align 4
  %sub198 = fsub float %185, %186
  %i199 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub198, ptr %i199, align 4
  call void @c_div(ptr noundef %q__1, ptr noundef %q__2, ptr noundef %denom)
  %r200 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %187 = load float, ptr %r200, align 4
  %188 = load ptr, ptr %b.addr, align 8
  %189 = load i32, ptr %i__2, align 4
  %idxprom201 = sext i32 %189 to i64
  %arrayidx202 = getelementptr inbounds %struct.complex, ptr %188, i64 %idxprom201
  %r203 = getelementptr inbounds %struct.complex, ptr %arrayidx202, i32 0, i32 0
  store float %187, ptr %r203, align 4
  %i204 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %190 = load float, ptr %i204, align 4
  %191 = load ptr, ptr %b.addr, align 8
  %192 = load i32, ptr %i__2, align 4
  %idxprom205 = sext i32 %192 to i64
  %arrayidx206 = getelementptr inbounds %struct.complex, ptr %191, i64 %idxprom205
  %i207 = getelementptr inbounds %struct.complex, ptr %arrayidx206, i32 0, i32 1
  store float %190, ptr %i207, align 4
  %193 = load i32, ptr %i__, align 4
  %194 = load i32, ptr %j, align 4
  %195 = load i32, ptr %b_dim1, align 4
  %mul208 = mul nsw i32 %194, %195
  %add209 = add nsw i32 %193, %mul208
  store i32 %add209, ptr %i__2, align 4
  %r210 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %196 = load float, ptr %r210, align 4
  %r211 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  %197 = load float, ptr %r211, align 4
  %i213 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %198 = load float, ptr %i213, align 4
  %i214 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  %199 = load float, ptr %i214, align 4
  %mul215 = fmul float %198, %199
  %neg216 = fneg float %mul215
  %200 = call float @llvm.fmuladd.f32(float %196, float %197, float %neg216)
  %r217 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %200, ptr %r217, align 4
  %r218 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %201 = load float, ptr %r218, align 4
  %i219 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  %202 = load float, ptr %i219, align 4
  %i221 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %203 = load float, ptr %i221, align 4
  %r222 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  %204 = load float, ptr %r222, align 4
  %mul223 = fmul float %203, %204
  %205 = call float @llvm.fmuladd.f32(float %201, float %202, float %mul223)
  %i224 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %205, ptr %i224, align 4
  %r225 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %206 = load float, ptr %r225, align 4
  %r226 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  %207 = load float, ptr %r226, align 4
  %sub227 = fsub float %206, %207
  %r228 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub227, ptr %r228, align 4
  %i229 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %208 = load float, ptr %i229, align 4
  %i230 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  %209 = load float, ptr %i230, align 4
  %sub231 = fsub float %208, %209
  %i232 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub231, ptr %i232, align 4
  call void @c_div(ptr noundef %q__1, ptr noundef %q__2, ptr noundef %denom)
  %r233 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %210 = load float, ptr %r233, align 4
  %211 = load ptr, ptr %b.addr, align 8
  %212 = load i32, ptr %i__2, align 4
  %idxprom234 = sext i32 %212 to i64
  %arrayidx235 = getelementptr inbounds %struct.complex, ptr %211, i64 %idxprom234
  %r236 = getelementptr inbounds %struct.complex, ptr %arrayidx235, i32 0, i32 0
  store float %210, ptr %r236, align 4
  %i237 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %213 = load float, ptr %i237, align 4
  %214 = load ptr, ptr %b.addr, align 8
  %215 = load i32, ptr %i__2, align 4
  %idxprom238 = sext i32 %215 to i64
  %arrayidx239 = getelementptr inbounds %struct.complex, ptr %214, i64 %idxprom238
  %i240 = getelementptr inbounds %struct.complex, ptr %arrayidx239, i32 0, i32 1
  store float %213, ptr %i240, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %216 = load i32, ptr %j, align 4
  %inc = add nsw i32 %216, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %217 = load i32, ptr %i__, align 4
  %dec241 = add nsw i32 %217, -1
  store i32 %dec241, ptr %i__, align 4
  br label %if.end242

if.end242:                                        ; preds = %for.end, %if.then100
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.else98
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %if.then90
  %218 = load i32, ptr %i__, align 4
  %dec245 = add nsw i32 %218, -1
  store i32 %dec245, ptr %i__, align 4
  br label %while.cond84, !llvm.loop !8

while.end246:                                     ; preds = %while.cond84
  %219 = load ptr, ptr %n.addr, align 8
  %220 = load ptr, ptr %nrhs.addr, align 8
  %221 = load ptr, ptr %a.addr, align 8
  %222 = load i32, ptr %a_offset, align 4
  %idxprom247 = sext i32 %222 to i64
  %arrayidx248 = getelementptr inbounds %struct.complex, ptr %221, i64 %idxprom247
  %223 = load ptr, ptr %lda.addr, align 8
  %224 = load ptr, ptr %b.addr, align 8
  %225 = load i32, ptr %b_offset, align 4
  %idxprom249 = sext i32 %225 to i64
  %arrayidx250 = getelementptr inbounds %struct.complex, ptr %224, i64 %idxprom249
  %226 = load ptr, ptr %ldb.addr, align 8
  %call251 = call i32 @ctrsm_(ptr noundef @.str.1, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str, ptr noundef %219, ptr noundef %220, ptr noundef @c_b1, ptr noundef %arrayidx248, ptr noundef %223, ptr noundef %arrayidx250, ptr noundef %226)
  store i32 1, ptr %k, align 4
  br label %while.cond252

while.cond252:                                    ; preds = %if.end293, %while.end246
  %227 = load i32, ptr %k, align 4
  %228 = load ptr, ptr %n.addr, align 8
  %229 = load i32, ptr %228, align 4
  %cmp253 = icmp sle i32 %227, %229
  br i1 %cmp253, label %while.body254, label %while.end294

while.body254:                                    ; preds = %while.cond252
  %230 = load ptr, ptr %ipiv.addr, align 8
  %231 = load i32, ptr %k, align 4
  %idxprom255 = sext i32 %231 to i64
  %arrayidx256 = getelementptr inbounds i32, ptr %230, i64 %idxprom255
  %232 = load i32, ptr %arrayidx256, align 4
  %cmp257 = icmp sgt i32 %232, 0
  br i1 %cmp257, label %if.then258, label %if.else272

if.then258:                                       ; preds = %while.body254
  %233 = load ptr, ptr %ipiv.addr, align 8
  %234 = load i32, ptr %k, align 4
  %idxprom259 = sext i32 %234 to i64
  %arrayidx260 = getelementptr inbounds i32, ptr %233, i64 %idxprom259
  %235 = load i32, ptr %arrayidx260, align 4
  store i32 %235, ptr %kp, align 4
  %236 = load i32, ptr %kp, align 4
  %237 = load i32, ptr %k, align 4
  %cmp261 = icmp ne i32 %236, %237
  br i1 %cmp261, label %if.then262, label %if.end270

if.then262:                                       ; preds = %if.then258
  %238 = load ptr, ptr %nrhs.addr, align 8
  %239 = load ptr, ptr %b.addr, align 8
  %240 = load i32, ptr %k, align 4
  %241 = load i32, ptr %b_dim1, align 4
  %add263 = add nsw i32 %240, %241
  %idxprom264 = sext i32 %add263 to i64
  %arrayidx265 = getelementptr inbounds %struct.complex, ptr %239, i64 %idxprom264
  %242 = load ptr, ptr %ldb.addr, align 8
  %243 = load ptr, ptr %b.addr, align 8
  %244 = load i32, ptr %kp, align 4
  %245 = load i32, ptr %b_dim1, align 4
  %add266 = add nsw i32 %244, %245
  %idxprom267 = sext i32 %add266 to i64
  %arrayidx268 = getelementptr inbounds %struct.complex, ptr %243, i64 %idxprom267
  %246 = load ptr, ptr %ldb.addr, align 8
  %call269 = call i32 @cswap_(ptr noundef %238, ptr noundef %arrayidx265, ptr noundef %242, ptr noundef %arrayidx268, ptr noundef %246)
  br label %if.end270

if.end270:                                        ; preds = %if.then262, %if.then258
  %247 = load i32, ptr %k, align 4
  %inc271 = add nsw i32 %247, 1
  store i32 %inc271, ptr %k, align 4
  br label %if.end293

if.else272:                                       ; preds = %while.body254
  %248 = load ptr, ptr %ipiv.addr, align 8
  %249 = load i32, ptr %k, align 4
  %idxprom273 = sext i32 %249 to i64
  %arrayidx274 = getelementptr inbounds i32, ptr %248, i64 %idxprom273
  %250 = load i32, ptr %arrayidx274, align 4
  %sub275 = sub nsw i32 0, %250
  store i32 %sub275, ptr %kp, align 4
  %251 = load i32, ptr %k, align 4
  %252 = load ptr, ptr %n.addr, align 8
  %253 = load i32, ptr %252, align 4
  %cmp276 = icmp slt i32 %251, %253
  br i1 %cmp276, label %land.lhs.true277, label %if.end291

land.lhs.true277:                                 ; preds = %if.else272
  %254 = load i32, ptr %kp, align 4
  %255 = load ptr, ptr %ipiv.addr, align 8
  %256 = load i32, ptr %k, align 4
  %add278 = add nsw i32 %256, 1
  %idxprom279 = sext i32 %add278 to i64
  %arrayidx280 = getelementptr inbounds i32, ptr %255, i64 %idxprom279
  %257 = load i32, ptr %arrayidx280, align 4
  %sub281 = sub nsw i32 0, %257
  %cmp282 = icmp eq i32 %254, %sub281
  br i1 %cmp282, label %if.then283, label %if.end291

if.then283:                                       ; preds = %land.lhs.true277
  %258 = load ptr, ptr %nrhs.addr, align 8
  %259 = load ptr, ptr %b.addr, align 8
  %260 = load i32, ptr %k, align 4
  %261 = load i32, ptr %b_dim1, align 4
  %add284 = add nsw i32 %260, %261
  %idxprom285 = sext i32 %add284 to i64
  %arrayidx286 = getelementptr inbounds %struct.complex, ptr %259, i64 %idxprom285
  %262 = load ptr, ptr %ldb.addr, align 8
  %263 = load ptr, ptr %b.addr, align 8
  %264 = load i32, ptr %kp, align 4
  %265 = load i32, ptr %b_dim1, align 4
  %add287 = add nsw i32 %264, %265
  %idxprom288 = sext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds %struct.complex, ptr %263, i64 %idxprom288
  %266 = load ptr, ptr %ldb.addr, align 8
  %call290 = call i32 @cswap_(ptr noundef %258, ptr noundef %arrayidx286, ptr noundef %262, ptr noundef %arrayidx289, ptr noundef %266)
  br label %if.end291

if.end291:                                        ; preds = %if.then283, %land.lhs.true277, %if.else272
  %267 = load i32, ptr %k, align 4
  %add292 = add nsw i32 %267, 2
  store i32 %add292, ptr %k, align 4
  br label %if.end293

if.end293:                                        ; preds = %if.end291, %if.end270
  br label %while.cond252, !llvm.loop !9

while.end294:                                     ; preds = %while.cond252
  br label %if.end552

if.else295:                                       ; preds = %if.end35
  store i32 1, ptr %k, align 4
  br label %while.cond296

while.cond296:                                    ; preds = %if.end336, %if.else295
  %268 = load i32, ptr %k, align 4
  %269 = load ptr, ptr %n.addr, align 8
  %270 = load i32, ptr %269, align 4
  %cmp297 = icmp sle i32 %268, %270
  br i1 %cmp297, label %while.body298, label %while.end337

while.body298:                                    ; preds = %while.cond296
  %271 = load ptr, ptr %ipiv.addr, align 8
  %272 = load i32, ptr %k, align 4
  %idxprom299 = sext i32 %272 to i64
  %arrayidx300 = getelementptr inbounds i32, ptr %271, i64 %idxprom299
  %273 = load i32, ptr %arrayidx300, align 4
  %cmp301 = icmp sgt i32 %273, 0
  br i1 %cmp301, label %if.then302, label %if.else316

if.then302:                                       ; preds = %while.body298
  %274 = load ptr, ptr %ipiv.addr, align 8
  %275 = load i32, ptr %k, align 4
  %idxprom303 = sext i32 %275 to i64
  %arrayidx304 = getelementptr inbounds i32, ptr %274, i64 %idxprom303
  %276 = load i32, ptr %arrayidx304, align 4
  store i32 %276, ptr %kp, align 4
  %277 = load i32, ptr %kp, align 4
  %278 = load i32, ptr %k, align 4
  %cmp305 = icmp ne i32 %277, %278
  br i1 %cmp305, label %if.then306, label %if.end314

if.then306:                                       ; preds = %if.then302
  %279 = load ptr, ptr %nrhs.addr, align 8
  %280 = load ptr, ptr %b.addr, align 8
  %281 = load i32, ptr %k, align 4
  %282 = load i32, ptr %b_dim1, align 4
  %add307 = add nsw i32 %281, %282
  %idxprom308 = sext i32 %add307 to i64
  %arrayidx309 = getelementptr inbounds %struct.complex, ptr %280, i64 %idxprom308
  %283 = load ptr, ptr %ldb.addr, align 8
  %284 = load ptr, ptr %b.addr, align 8
  %285 = load i32, ptr %kp, align 4
  %286 = load i32, ptr %b_dim1, align 4
  %add310 = add nsw i32 %285, %286
  %idxprom311 = sext i32 %add310 to i64
  %arrayidx312 = getelementptr inbounds %struct.complex, ptr %284, i64 %idxprom311
  %287 = load ptr, ptr %ldb.addr, align 8
  %call313 = call i32 @cswap_(ptr noundef %279, ptr noundef %arrayidx309, ptr noundef %283, ptr noundef %arrayidx312, ptr noundef %287)
  br label %if.end314

if.end314:                                        ; preds = %if.then306, %if.then302
  %288 = load i32, ptr %k, align 4
  %inc315 = add nsw i32 %288, 1
  store i32 %inc315, ptr %k, align 4
  br label %if.end336

if.else316:                                       ; preds = %while.body298
  %289 = load ptr, ptr %ipiv.addr, align 8
  %290 = load i32, ptr %k, align 4
  %add317 = add nsw i32 %290, 1
  %idxprom318 = sext i32 %add317 to i64
  %arrayidx319 = getelementptr inbounds i32, ptr %289, i64 %idxprom318
  %291 = load i32, ptr %arrayidx319, align 4
  %sub320 = sub nsw i32 0, %291
  store i32 %sub320, ptr %kp, align 4
  %292 = load i32, ptr %kp, align 4
  %293 = load ptr, ptr %ipiv.addr, align 8
  %294 = load i32, ptr %k, align 4
  %idxprom321 = sext i32 %294 to i64
  %arrayidx322 = getelementptr inbounds i32, ptr %293, i64 %idxprom321
  %295 = load i32, ptr %arrayidx322, align 4
  %sub323 = sub nsw i32 0, %295
  %cmp324 = icmp eq i32 %292, %sub323
  br i1 %cmp324, label %if.then325, label %if.end334

if.then325:                                       ; preds = %if.else316
  %296 = load ptr, ptr %nrhs.addr, align 8
  %297 = load ptr, ptr %b.addr, align 8
  %298 = load i32, ptr %k, align 4
  %add326 = add nsw i32 %298, 1
  %299 = load i32, ptr %b_dim1, align 4
  %add327 = add nsw i32 %add326, %299
  %idxprom328 = sext i32 %add327 to i64
  %arrayidx329 = getelementptr inbounds %struct.complex, ptr %297, i64 %idxprom328
  %300 = load ptr, ptr %ldb.addr, align 8
  %301 = load ptr, ptr %b.addr, align 8
  %302 = load i32, ptr %kp, align 4
  %303 = load i32, ptr %b_dim1, align 4
  %add330 = add nsw i32 %302, %303
  %idxprom331 = sext i32 %add330 to i64
  %arrayidx332 = getelementptr inbounds %struct.complex, ptr %301, i64 %idxprom331
  %304 = load ptr, ptr %ldb.addr, align 8
  %call333 = call i32 @cswap_(ptr noundef %296, ptr noundef %arrayidx329, ptr noundef %300, ptr noundef %arrayidx332, ptr noundef %304)
  br label %if.end334

if.end334:                                        ; preds = %if.then325, %if.else316
  %305 = load i32, ptr %k, align 4
  %add335 = add nsw i32 %305, 2
  store i32 %add335, ptr %k, align 4
  br label %if.end336

if.end336:                                        ; preds = %if.end334, %if.end314
  br label %while.cond296, !llvm.loop !10

while.end337:                                     ; preds = %while.cond296
  %306 = load ptr, ptr %n.addr, align 8
  %307 = load ptr, ptr %nrhs.addr, align 8
  %308 = load ptr, ptr %a.addr, align 8
  %309 = load i32, ptr %a_offset, align 4
  %idxprom338 = sext i32 %309 to i64
  %arrayidx339 = getelementptr inbounds %struct.complex, ptr %308, i64 %idxprom338
  %310 = load ptr, ptr %lda.addr, align 8
  %311 = load ptr, ptr %b.addr, align 8
  %312 = load i32, ptr %b_offset, align 4
  %idxprom340 = sext i32 %312 to i64
  %arrayidx341 = getelementptr inbounds %struct.complex, ptr %311, i64 %idxprom340
  %313 = load ptr, ptr %ldb.addr, align 8
  %call342 = call i32 @ctrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %306, ptr noundef %307, ptr noundef @c_b1, ptr noundef %arrayidx339, ptr noundef %310, ptr noundef %arrayidx341, ptr noundef %313)
  store i32 1, ptr %i__, align 4
  br label %while.cond343

while.cond343:                                    ; preds = %if.end501, %while.end337
  %314 = load i32, ptr %i__, align 4
  %315 = load ptr, ptr %n.addr, align 8
  %316 = load i32, ptr %315, align 4
  %cmp344 = icmp sle i32 %314, %316
  br i1 %cmp344, label %while.body345, label %while.end503

while.body345:                                    ; preds = %while.cond343
  %317 = load ptr, ptr %ipiv.addr, align 8
  %318 = load i32, ptr %i__, align 4
  %idxprom346 = sext i32 %318 to i64
  %arrayidx347 = getelementptr inbounds i32, ptr %317, i64 %idxprom346
  %319 = load i32, ptr %arrayidx347, align 4
  %cmp348 = icmp sgt i32 %319, 0
  br i1 %cmp348, label %if.then349, label %if.else358

if.then349:                                       ; preds = %while.body345
  %320 = load ptr, ptr %a.addr, align 8
  %321 = load i32, ptr %i__, align 4
  %322 = load i32, ptr %i__, align 4
  %323 = load i32, ptr %a_dim1, align 4
  %mul350 = mul nsw i32 %322, %323
  %add351 = add nsw i32 %321, %mul350
  %idxprom352 = sext i32 %add351 to i64
  %arrayidx353 = getelementptr inbounds %struct.complex, ptr %320, i64 %idxprom352
  call void @c_div(ptr noundef %q__1, ptr noundef @c_b1, ptr noundef %arrayidx353)
  %324 = load ptr, ptr %nrhs.addr, align 8
  %325 = load ptr, ptr %b.addr, align 8
  %326 = load i32, ptr %i__, align 4
  %327 = load i32, ptr %b_dim1, align 4
  %add354 = add nsw i32 %326, %327
  %idxprom355 = sext i32 %add354 to i64
  %arrayidx356 = getelementptr inbounds %struct.complex, ptr %325, i64 %idxprom355
  %328 = load ptr, ptr %ldb.addr, align 8
  %call357 = call i32 @cscal_(ptr noundef %324, ptr noundef %q__1, ptr noundef %arrayidx356, ptr noundef %328)
  br label %if.end501

if.else358:                                       ; preds = %while.body345
  %329 = load i32, ptr %i__, align 4
  store i32 %329, ptr %i__1, align 4
  %330 = load ptr, ptr %work.addr, align 8
  %331 = load i32, ptr %i__1, align 4
  %idxprom359 = sext i32 %331 to i64
  %arrayidx360 = getelementptr inbounds %struct.complex, ptr %330, i64 %idxprom359
  %r361 = getelementptr inbounds %struct.complex, ptr %arrayidx360, i32 0, i32 0
  %332 = load float, ptr %r361, align 4
  %r362 = getelementptr inbounds %struct.complex, ptr %akm1k, i32 0, i32 0
  store float %332, ptr %r362, align 4
  %333 = load ptr, ptr %work.addr, align 8
  %334 = load i32, ptr %i__1, align 4
  %idxprom363 = sext i32 %334 to i64
  %arrayidx364 = getelementptr inbounds %struct.complex, ptr %333, i64 %idxprom363
  %i365 = getelementptr inbounds %struct.complex, ptr %arrayidx364, i32 0, i32 1
  %335 = load float, ptr %i365, align 4
  %i366 = getelementptr inbounds %struct.complex, ptr %akm1k, i32 0, i32 1
  store float %335, ptr %i366, align 4
  %336 = load ptr, ptr %a.addr, align 8
  %337 = load i32, ptr %i__, align 4
  %338 = load i32, ptr %i__, align 4
  %339 = load i32, ptr %a_dim1, align 4
  %mul367 = mul nsw i32 %338, %339
  %add368 = add nsw i32 %337, %mul367
  %idxprom369 = sext i32 %add368 to i64
  %arrayidx370 = getelementptr inbounds %struct.complex, ptr %336, i64 %idxprom369
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx370, ptr noundef %akm1k)
  %r371 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %340 = load float, ptr %r371, align 4
  %r372 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  store float %340, ptr %r372, align 4
  %i373 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %341 = load float, ptr %i373, align 4
  %i374 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  store float %341, ptr %i374, align 4
  %342 = load ptr, ptr %a.addr, align 8
  %343 = load i32, ptr %i__, align 4
  %add375 = add nsw i32 %343, 1
  %344 = load i32, ptr %i__, align 4
  %add376 = add nsw i32 %344, 1
  %345 = load i32, ptr %a_dim1, align 4
  %mul377 = mul nsw i32 %add376, %345
  %add378 = add nsw i32 %add375, %mul377
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds %struct.complex, ptr %342, i64 %idxprom379
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx380, ptr noundef %akm1k)
  %r381 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %346 = load float, ptr %r381, align 4
  %r382 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  store float %346, ptr %r382, align 4
  %i383 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %347 = load float, ptr %i383, align 4
  %i384 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  store float %347, ptr %i384, align 4
  %r385 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %348 = load float, ptr %r385, align 4
  %r386 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %349 = load float, ptr %r386, align 4
  %i388 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %350 = load float, ptr %i388, align 4
  %i389 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %351 = load float, ptr %i389, align 4
  %mul390 = fmul float %350, %351
  %neg391 = fneg float %mul390
  %352 = call float @llvm.fmuladd.f32(float %348, float %349, float %neg391)
  %r392 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %352, ptr %r392, align 4
  %r393 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %353 = load float, ptr %r393, align 4
  %i394 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %354 = load float, ptr %i394, align 4
  %i396 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %355 = load float, ptr %i396, align 4
  %r397 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %356 = load float, ptr %r397, align 4
  %mul398 = fmul float %355, %356
  %357 = call float @llvm.fmuladd.f32(float %353, float %354, float %mul398)
  %i399 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %357, ptr %i399, align 4
  %r400 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %358 = load float, ptr %r400, align 4
  %sub401 = fsub float %358, 1.000000e+00
  %r402 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub401, ptr %r402, align 4
  %i403 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %359 = load float, ptr %i403, align 4
  %sub404 = fsub float %359, 0.000000e+00
  %i405 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub404, ptr %i405, align 4
  %r406 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %360 = load float, ptr %r406, align 4
  %r407 = getelementptr inbounds %struct.complex, ptr %denom, i32 0, i32 0
  store float %360, ptr %r407, align 4
  %i408 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %361 = load float, ptr %i408, align 4
  %i409 = getelementptr inbounds %struct.complex, ptr %denom, i32 0, i32 1
  store float %361, ptr %i409, align 4
  %362 = load ptr, ptr %nrhs.addr, align 8
  %363 = load i32, ptr %362, align 4
  store i32 %363, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond410

for.cond410:                                      ; preds = %for.inc497, %if.else358
  %364 = load i32, ptr %j, align 4
  %365 = load i32, ptr %i__1, align 4
  %cmp411 = icmp sle i32 %364, %365
  br i1 %cmp411, label %for.body412, label %for.end499

for.body412:                                      ; preds = %for.cond410
  %366 = load ptr, ptr %b.addr, align 8
  %367 = load i32, ptr %i__, align 4
  %368 = load i32, ptr %j, align 4
  %369 = load i32, ptr %b_dim1, align 4
  %mul413 = mul nsw i32 %368, %369
  %add414 = add nsw i32 %367, %mul413
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds %struct.complex, ptr %366, i64 %idxprom415
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx416, ptr noundef %akm1k)
  %r417 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %370 = load float, ptr %r417, align 4
  %r418 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  store float %370, ptr %r418, align 4
  %i419 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %371 = load float, ptr %i419, align 4
  %i420 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  store float %371, ptr %i420, align 4
  %372 = load ptr, ptr %b.addr, align 8
  %373 = load i32, ptr %i__, align 4
  %add421 = add nsw i32 %373, 1
  %374 = load i32, ptr %j, align 4
  %375 = load i32, ptr %b_dim1, align 4
  %mul422 = mul nsw i32 %374, %375
  %add423 = add nsw i32 %add421, %mul422
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds %struct.complex, ptr %372, i64 %idxprom424
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx425, ptr noundef %akm1k)
  %r426 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %376 = load float, ptr %r426, align 4
  %r427 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  store float %376, ptr %r427, align 4
  %i428 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %377 = load float, ptr %i428, align 4
  %i429 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  store float %377, ptr %i429, align 4
  %378 = load i32, ptr %i__, align 4
  %379 = load i32, ptr %j, align 4
  %380 = load i32, ptr %b_dim1, align 4
  %mul430 = mul nsw i32 %379, %380
  %add431 = add nsw i32 %378, %mul430
  store i32 %add431, ptr %i__2, align 4
  %r432 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %381 = load float, ptr %r432, align 4
  %r433 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  %382 = load float, ptr %r433, align 4
  %i435 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %383 = load float, ptr %i435, align 4
  %i436 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  %384 = load float, ptr %i436, align 4
  %mul437 = fmul float %383, %384
  %neg438 = fneg float %mul437
  %385 = call float @llvm.fmuladd.f32(float %381, float %382, float %neg438)
  %r439 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %385, ptr %r439, align 4
  %r440 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %386 = load float, ptr %r440, align 4
  %i441 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  %387 = load float, ptr %i441, align 4
  %i443 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %388 = load float, ptr %i443, align 4
  %r444 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  %389 = load float, ptr %r444, align 4
  %mul445 = fmul float %388, %389
  %390 = call float @llvm.fmuladd.f32(float %386, float %387, float %mul445)
  %i446 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %390, ptr %i446, align 4
  %r447 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %391 = load float, ptr %r447, align 4
  %r448 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  %392 = load float, ptr %r448, align 4
  %sub449 = fsub float %391, %392
  %r450 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub449, ptr %r450, align 4
  %i451 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %393 = load float, ptr %i451, align 4
  %i452 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  %394 = load float, ptr %i452, align 4
  %sub453 = fsub float %393, %394
  %i454 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub453, ptr %i454, align 4
  call void @c_div(ptr noundef %q__1, ptr noundef %q__2, ptr noundef %denom)
  %r455 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %395 = load float, ptr %r455, align 4
  %396 = load ptr, ptr %b.addr, align 8
  %397 = load i32, ptr %i__2, align 4
  %idxprom456 = sext i32 %397 to i64
  %arrayidx457 = getelementptr inbounds %struct.complex, ptr %396, i64 %idxprom456
  %r458 = getelementptr inbounds %struct.complex, ptr %arrayidx457, i32 0, i32 0
  store float %395, ptr %r458, align 4
  %i459 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %398 = load float, ptr %i459, align 4
  %399 = load ptr, ptr %b.addr, align 8
  %400 = load i32, ptr %i__2, align 4
  %idxprom460 = sext i32 %400 to i64
  %arrayidx461 = getelementptr inbounds %struct.complex, ptr %399, i64 %idxprom460
  %i462 = getelementptr inbounds %struct.complex, ptr %arrayidx461, i32 0, i32 1
  store float %398, ptr %i462, align 4
  %401 = load i32, ptr %i__, align 4
  %add463 = add nsw i32 %401, 1
  %402 = load i32, ptr %j, align 4
  %403 = load i32, ptr %b_dim1, align 4
  %mul464 = mul nsw i32 %402, %403
  %add465 = add nsw i32 %add463, %mul464
  store i32 %add465, ptr %i__2, align 4
  %r466 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %404 = load float, ptr %r466, align 4
  %r467 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  %405 = load float, ptr %r467, align 4
  %i469 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %406 = load float, ptr %i469, align 4
  %i470 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  %407 = load float, ptr %i470, align 4
  %mul471 = fmul float %406, %407
  %neg472 = fneg float %mul471
  %408 = call float @llvm.fmuladd.f32(float %404, float %405, float %neg472)
  %r473 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %408, ptr %r473, align 4
  %r474 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %409 = load float, ptr %r474, align 4
  %i475 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  %410 = load float, ptr %i475, align 4
  %i477 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %411 = load float, ptr %i477, align 4
  %r478 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  %412 = load float, ptr %r478, align 4
  %mul479 = fmul float %411, %412
  %413 = call float @llvm.fmuladd.f32(float %409, float %410, float %mul479)
  %i480 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %413, ptr %i480, align 4
  %r481 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %414 = load float, ptr %r481, align 4
  %r482 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  %415 = load float, ptr %r482, align 4
  %sub483 = fsub float %414, %415
  %r484 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub483, ptr %r484, align 4
  %i485 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %416 = load float, ptr %i485, align 4
  %i486 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  %417 = load float, ptr %i486, align 4
  %sub487 = fsub float %416, %417
  %i488 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub487, ptr %i488, align 4
  call void @c_div(ptr noundef %q__1, ptr noundef %q__2, ptr noundef %denom)
  %r489 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %418 = load float, ptr %r489, align 4
  %419 = load ptr, ptr %b.addr, align 8
  %420 = load i32, ptr %i__2, align 4
  %idxprom490 = sext i32 %420 to i64
  %arrayidx491 = getelementptr inbounds %struct.complex, ptr %419, i64 %idxprom490
  %r492 = getelementptr inbounds %struct.complex, ptr %arrayidx491, i32 0, i32 0
  store float %418, ptr %r492, align 4
  %i493 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %421 = load float, ptr %i493, align 4
  %422 = load ptr, ptr %b.addr, align 8
  %423 = load i32, ptr %i__2, align 4
  %idxprom494 = sext i32 %423 to i64
  %arrayidx495 = getelementptr inbounds %struct.complex, ptr %422, i64 %idxprom494
  %i496 = getelementptr inbounds %struct.complex, ptr %arrayidx495, i32 0, i32 1
  store float %421, ptr %i496, align 4
  br label %for.inc497

for.inc497:                                       ; preds = %for.body412
  %424 = load i32, ptr %j, align 4
  %inc498 = add nsw i32 %424, 1
  store i32 %inc498, ptr %j, align 4
  br label %for.cond410, !llvm.loop !11

for.end499:                                       ; preds = %for.cond410
  %425 = load i32, ptr %i__, align 4
  %inc500 = add nsw i32 %425, 1
  store i32 %inc500, ptr %i__, align 4
  br label %if.end501

if.end501:                                        ; preds = %for.end499, %if.then349
  %426 = load i32, ptr %i__, align 4
  %inc502 = add nsw i32 %426, 1
  store i32 %inc502, ptr %i__, align 4
  br label %while.cond343, !llvm.loop !12

while.end503:                                     ; preds = %while.cond343
  %427 = load ptr, ptr %n.addr, align 8
  %428 = load ptr, ptr %nrhs.addr, align 8
  %429 = load ptr, ptr %a.addr, align 8
  %430 = load i32, ptr %a_offset, align 4
  %idxprom504 = sext i32 %430 to i64
  %arrayidx505 = getelementptr inbounds %struct.complex, ptr %429, i64 %idxprom504
  %431 = load ptr, ptr %lda.addr, align 8
  %432 = load ptr, ptr %b.addr, align 8
  %433 = load i32, ptr %b_offset, align 4
  %idxprom506 = sext i32 %433 to i64
  %arrayidx507 = getelementptr inbounds %struct.complex, ptr %432, i64 %idxprom506
  %434 = load ptr, ptr %ldb.addr, align 8
  %call508 = call i32 @ctrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.5, ptr noundef @.str, ptr noundef %427, ptr noundef %428, ptr noundef @c_b1, ptr noundef %arrayidx505, ptr noundef %431, ptr noundef %arrayidx507, ptr noundef %434)
  %435 = load ptr, ptr %n.addr, align 8
  %436 = load i32, ptr %435, align 4
  store i32 %436, ptr %k, align 4
  br label %while.cond509

while.cond509:                                    ; preds = %if.end550, %while.end503
  %437 = load i32, ptr %k, align 4
  %cmp510 = icmp sge i32 %437, 1
  br i1 %cmp510, label %while.body511, label %while.end551

while.body511:                                    ; preds = %while.cond509
  %438 = load ptr, ptr %ipiv.addr, align 8
  %439 = load i32, ptr %k, align 4
  %idxprom512 = sext i32 %439 to i64
  %arrayidx513 = getelementptr inbounds i32, ptr %438, i64 %idxprom512
  %440 = load i32, ptr %arrayidx513, align 4
  %cmp514 = icmp sgt i32 %440, 0
  br i1 %cmp514, label %if.then515, label %if.else529

if.then515:                                       ; preds = %while.body511
  %441 = load ptr, ptr %ipiv.addr, align 8
  %442 = load i32, ptr %k, align 4
  %idxprom516 = sext i32 %442 to i64
  %arrayidx517 = getelementptr inbounds i32, ptr %441, i64 %idxprom516
  %443 = load i32, ptr %arrayidx517, align 4
  store i32 %443, ptr %kp, align 4
  %444 = load i32, ptr %kp, align 4
  %445 = load i32, ptr %k, align 4
  %cmp518 = icmp ne i32 %444, %445
  br i1 %cmp518, label %if.then519, label %if.end527

if.then519:                                       ; preds = %if.then515
  %446 = load ptr, ptr %nrhs.addr, align 8
  %447 = load ptr, ptr %b.addr, align 8
  %448 = load i32, ptr %k, align 4
  %449 = load i32, ptr %b_dim1, align 4
  %add520 = add nsw i32 %448, %449
  %idxprom521 = sext i32 %add520 to i64
  %arrayidx522 = getelementptr inbounds %struct.complex, ptr %447, i64 %idxprom521
  %450 = load ptr, ptr %ldb.addr, align 8
  %451 = load ptr, ptr %b.addr, align 8
  %452 = load i32, ptr %kp, align 4
  %453 = load i32, ptr %b_dim1, align 4
  %add523 = add nsw i32 %452, %453
  %idxprom524 = sext i32 %add523 to i64
  %arrayidx525 = getelementptr inbounds %struct.complex, ptr %451, i64 %idxprom524
  %454 = load ptr, ptr %ldb.addr, align 8
  %call526 = call i32 @cswap_(ptr noundef %446, ptr noundef %arrayidx522, ptr noundef %450, ptr noundef %arrayidx525, ptr noundef %454)
  br label %if.end527

if.end527:                                        ; preds = %if.then519, %if.then515
  %455 = load i32, ptr %k, align 4
  %dec528 = add nsw i32 %455, -1
  store i32 %dec528, ptr %k, align 4
  br label %if.end550

if.else529:                                       ; preds = %while.body511
  %456 = load ptr, ptr %ipiv.addr, align 8
  %457 = load i32, ptr %k, align 4
  %idxprom530 = sext i32 %457 to i64
  %arrayidx531 = getelementptr inbounds i32, ptr %456, i64 %idxprom530
  %458 = load i32, ptr %arrayidx531, align 4
  %sub532 = sub nsw i32 0, %458
  store i32 %sub532, ptr %kp, align 4
  %459 = load i32, ptr %k, align 4
  %cmp533 = icmp sgt i32 %459, 1
  br i1 %cmp533, label %land.lhs.true534, label %if.end548

land.lhs.true534:                                 ; preds = %if.else529
  %460 = load i32, ptr %kp, align 4
  %461 = load ptr, ptr %ipiv.addr, align 8
  %462 = load i32, ptr %k, align 4
  %sub535 = sub nsw i32 %462, 1
  %idxprom536 = sext i32 %sub535 to i64
  %arrayidx537 = getelementptr inbounds i32, ptr %461, i64 %idxprom536
  %463 = load i32, ptr %arrayidx537, align 4
  %sub538 = sub nsw i32 0, %463
  %cmp539 = icmp eq i32 %460, %sub538
  br i1 %cmp539, label %if.then540, label %if.end548

if.then540:                                       ; preds = %land.lhs.true534
  %464 = load ptr, ptr %nrhs.addr, align 8
  %465 = load ptr, ptr %b.addr, align 8
  %466 = load i32, ptr %k, align 4
  %467 = load i32, ptr %b_dim1, align 4
  %add541 = add nsw i32 %466, %467
  %idxprom542 = sext i32 %add541 to i64
  %arrayidx543 = getelementptr inbounds %struct.complex, ptr %465, i64 %idxprom542
  %468 = load ptr, ptr %ldb.addr, align 8
  %469 = load ptr, ptr %b.addr, align 8
  %470 = load i32, ptr %kp, align 4
  %471 = load i32, ptr %b_dim1, align 4
  %add544 = add nsw i32 %470, %471
  %idxprom545 = sext i32 %add544 to i64
  %arrayidx546 = getelementptr inbounds %struct.complex, ptr %469, i64 %idxprom545
  %472 = load ptr, ptr %ldb.addr, align 8
  %call547 = call i32 @cswap_(ptr noundef %464, ptr noundef %arrayidx543, ptr noundef %468, ptr noundef %arrayidx546, ptr noundef %472)
  br label %if.end548

if.end548:                                        ; preds = %if.then540, %land.lhs.true534, %if.else529
  %473 = load i32, ptr %k, align 4
  %add549 = add nsw i32 %473, -2
  store i32 %add549, ptr %k, align 4
  br label %if.end550

if.end550:                                        ; preds = %if.end548, %if.end527
  br label %while.cond509, !llvm.loop !13

while.end551:                                     ; preds = %while.cond509
  br label %if.end552

if.end552:                                        ; preds = %while.end551, %while.end294
  %474 = load ptr, ptr %uplo.addr, align 8
  %475 = load ptr, ptr %n.addr, align 8
  %476 = load ptr, ptr %a.addr, align 8
  %477 = load i32, ptr %a_offset, align 4
  %idxprom553 = sext i32 %477 to i64
  %arrayidx554 = getelementptr inbounds %struct.complex, ptr %476, i64 %idxprom553
  %478 = load ptr, ptr %lda.addr, align 8
  %479 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx555 = getelementptr inbounds i32, ptr %479, i64 1
  %480 = load ptr, ptr %work.addr, align 8
  %arrayidx556 = getelementptr inbounds %struct.complex, ptr %480, i64 1
  %call557 = call i32 @csyconv_(ptr noundef %474, ptr noundef @.str.6, ptr noundef %475, ptr noundef %arrayidx554, ptr noundef %478, ptr noundef %arrayidx555, ptr noundef %arrayidx556, ptr noundef %iinfo)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end552, %if.then34, %if.then29
  %481 = load i32, ptr %retval, align 4
  ret i32 %481
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @csyconv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @cswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ctrsm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @c_div(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @cscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

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

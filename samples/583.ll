; ModuleID = 'samples/583.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zhetrs_rook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ZHETRS_ROOK\00", align 1
@c__1 = internal global i32 1, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Conjugate transpose\00", align 1
@c_b1 = internal global %struct.doublecomplex { double 1.000000e+00, double 0.000000e+00 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zhetrs_rook_(ptr noundef %uplo, ptr noundef %n, ptr noundef %nrhs, ptr noundef %a, ptr noundef %lda, ptr noundef %ipiv, ptr noundef %b, ptr noundef %ldb, ptr noundef %info) #0 {
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
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %z__1 = alloca %struct.doublecomplex, align 8
  %z__2 = alloca %struct.doublecomplex, align 8
  %z__3 = alloca %struct.doublecomplex, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca double, align 8
  %ak = alloca %struct.doublecomplex, align 8
  %bk = alloca %struct.doublecomplex, align 8
  %kp = alloca i32, align 4
  %akm1 = alloca %struct.doublecomplex, align 8
  %bkm1 = alloca %struct.doublecomplex, align 8
  %akm1k = alloca %struct.doublecomplex, align 8
  %denom = alloca %struct.doublecomplex, align 8
  %upper = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %nrhs, ptr %nrhs.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %ipiv, ptr %ipiv.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
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
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
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
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8
  %11 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %11, align 4
  %12 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %12, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4
  %13 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %14 = load ptr, ptr %uplo.addr, align 8
  %call5 = call i32 @lsame_(ptr noundef %14, ptr noundef @.str.1)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %15, align 4
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load ptr, ptr %n.addr, align 8
  %17 = load i32, ptr %16, align 4
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %18 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %18, align 4
  br label %if.end25

if.else8:                                         ; preds = %if.else
  %19 = load ptr, ptr %nrhs.addr, align 8
  %20 = load i32, ptr %19, align 4
  %cmp9 = icmp slt i32 %20, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  %21 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %21, align 4
  br label %if.end24

if.else11:                                        ; preds = %if.else8
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
  store i32 -5, ptr %28, align 4
  br label %if.end23

if.else15:                                        ; preds = %cond.end
  %29 = load ptr, ptr %ldb.addr, align 8
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
  store i32 -8, ptr %35, align 4
  br label %if.end

if.end:                                           ; preds = %if.then22, %cond.end19
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then14
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then10
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then7
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then
  %36 = load ptr, ptr %info.addr, align 8
  %37 = load i32, ptr %36, align 4
  %cmp27 = icmp ne i32 %37, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end26
  %38 = load ptr, ptr %info.addr, align 8
  %39 = load i32, ptr %38, align 4
  %sub = sub nsw i32 0, %39
  store i32 %sub, ptr %i__1, align 4
  %call29 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end26
  %40 = load ptr, ptr %n.addr, align 8
  %41 = load i32, ptr %40, align 4
  %cmp31 = icmp eq i32 %41, 0
  br i1 %cmp31, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end30
  %42 = load ptr, ptr %nrhs.addr, align 8
  %43 = load i32, ptr %42, align 4
  %cmp32 = icmp eq i32 %43, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %lor.lhs.false, %if.end30
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %lor.lhs.false
  %44 = load i32, ptr %upper, align 4
  %tobool35 = icmp ne i32 %44, 0
  br i1 %tobool35, label %if.then36, label %if.else399

if.then36:                                        ; preds = %if.end34
  %45 = load ptr, ptr %n.addr, align 8
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %k, align 4
  br label %L10

L10:                                              ; preds = %if.end273, %if.then36
  %47 = load i32, ptr %k, align 4
  %cmp37 = icmp slt i32 %47, 1
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %L10
  br label %L30

if.end39:                                         ; preds = %L10
  %48 = load ptr, ptr %ipiv.addr, align 8
  %49 = load i32, ptr %k, align 4
  %idxprom = sext i32 %49 to i64
  %arrayidx = getelementptr inbounds i32, ptr %48, i64 %idxprom
  %50 = load i32, ptr %arrayidx, align 4
  %cmp40 = icmp sgt i32 %50, 0
  br i1 %cmp40, label %if.then41, label %if.else74

if.then41:                                        ; preds = %if.end39
  %51 = load ptr, ptr %ipiv.addr, align 8
  %52 = load i32, ptr %k, align 4
  %idxprom42 = sext i32 %52 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %51, i64 %idxprom42
  %53 = load i32, ptr %arrayidx43, align 4
  store i32 %53, ptr %kp, align 4
  %54 = load i32, ptr %kp, align 4
  %55 = load i32, ptr %k, align 4
  %cmp44 = icmp ne i32 %54, %55
  br i1 %cmp44, label %if.then45, label %if.end53

if.then45:                                        ; preds = %if.then41
  %56 = load ptr, ptr %nrhs.addr, align 8
  %57 = load ptr, ptr %b.addr, align 8
  %58 = load i32, ptr %k, align 4
  %59 = load i32, ptr %b_dim1, align 4
  %add46 = add nsw i32 %58, %59
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds %struct.doublecomplex, ptr %57, i64 %idxprom47
  %60 = load ptr, ptr %ldb.addr, align 8
  %61 = load ptr, ptr %b.addr, align 8
  %62 = load i32, ptr %kp, align 4
  %63 = load i32, ptr %b_dim1, align 4
  %add49 = add nsw i32 %62, %63
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds %struct.doublecomplex, ptr %61, i64 %idxprom50
  %64 = load ptr, ptr %ldb.addr, align 8
  %call52 = call i32 @zswap_(ptr noundef %56, ptr noundef %arrayidx48, ptr noundef %60, ptr noundef %arrayidx51, ptr noundef %64)
  br label %if.end53

if.end53:                                         ; preds = %if.then45, %if.then41
  %65 = load i32, ptr %k, align 4
  %sub54 = sub nsw i32 %65, 1
  store i32 %sub54, ptr %i__1, align 4
  %r = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r, align 8
  %i = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i, align 8
  %66 = load ptr, ptr %nrhs.addr, align 8
  %67 = load ptr, ptr %a.addr, align 8
  %68 = load i32, ptr %k, align 4
  %69 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %68, %69
  %add55 = add nsw i32 %mul, 1
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds %struct.doublecomplex, ptr %67, i64 %idxprom56
  %70 = load ptr, ptr %b.addr, align 8
  %71 = load i32, ptr %k, align 4
  %72 = load i32, ptr %b_dim1, align 4
  %add58 = add nsw i32 %71, %72
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds %struct.doublecomplex, ptr %70, i64 %idxprom59
  %73 = load ptr, ptr %ldb.addr, align 8
  %74 = load ptr, ptr %b.addr, align 8
  %75 = load i32, ptr %b_dim1, align 4
  %add61 = add nsw i32 %75, 1
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds %struct.doublecomplex, ptr %74, i64 %idxprom62
  %76 = load ptr, ptr %ldb.addr, align 8
  %call64 = call i32 @zgeru_(ptr noundef %i__1, ptr noundef %66, ptr noundef %z__1, ptr noundef %arrayidx57, ptr noundef @c__1, ptr noundef %arrayidx60, ptr noundef %73, ptr noundef %arrayidx63, ptr noundef %76)
  %77 = load i32, ptr %k, align 4
  %78 = load i32, ptr %k, align 4
  %79 = load i32, ptr %a_dim1, align 4
  %mul65 = mul nsw i32 %78, %79
  %add66 = add nsw i32 %77, %mul65
  store i32 %add66, ptr %i__1, align 4
  %80 = load ptr, ptr %a.addr, align 8
  %81 = load i32, ptr %i__1, align 4
  %idxprom67 = sext i32 %81 to i64
  %arrayidx68 = getelementptr inbounds %struct.doublecomplex, ptr %80, i64 %idxprom67
  %r69 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx68, i32 0, i32 0
  %82 = load double, ptr %r69, align 8
  %div = fdiv double 1.000000e+00, %82
  store double %div, ptr %s, align 8
  %83 = load ptr, ptr %nrhs.addr, align 8
  %84 = load ptr, ptr %b.addr, align 8
  %85 = load i32, ptr %k, align 4
  %86 = load i32, ptr %b_dim1, align 4
  %add70 = add nsw i32 %85, %86
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds %struct.doublecomplex, ptr %84, i64 %idxprom71
  %87 = load ptr, ptr %ldb.addr, align 8
  %call73 = call i32 @zdscal_(ptr noundef %83, ptr noundef %s, ptr noundef %arrayidx72, ptr noundef %87)
  %88 = load i32, ptr %k, align 4
  %dec = add nsw i32 %88, -1
  store i32 %dec, ptr %k, align 4
  br label %if.end273

if.else74:                                        ; preds = %if.end39
  %89 = load ptr, ptr %ipiv.addr, align 8
  %90 = load i32, ptr %k, align 4
  %idxprom75 = sext i32 %90 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %89, i64 %idxprom75
  %91 = load i32, ptr %arrayidx76, align 4
  %sub77 = sub nsw i32 0, %91
  store i32 %sub77, ptr %kp, align 4
  %92 = load i32, ptr %kp, align 4
  %93 = load i32, ptr %k, align 4
  %cmp78 = icmp ne i32 %92, %93
  br i1 %cmp78, label %if.then79, label %if.end87

if.then79:                                        ; preds = %if.else74
  %94 = load ptr, ptr %nrhs.addr, align 8
  %95 = load ptr, ptr %b.addr, align 8
  %96 = load i32, ptr %k, align 4
  %97 = load i32, ptr %b_dim1, align 4
  %add80 = add nsw i32 %96, %97
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds %struct.doublecomplex, ptr %95, i64 %idxprom81
  %98 = load ptr, ptr %ldb.addr, align 8
  %99 = load ptr, ptr %b.addr, align 8
  %100 = load i32, ptr %kp, align 4
  %101 = load i32, ptr %b_dim1, align 4
  %add83 = add nsw i32 %100, %101
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds %struct.doublecomplex, ptr %99, i64 %idxprom84
  %102 = load ptr, ptr %ldb.addr, align 8
  %call86 = call i32 @zswap_(ptr noundef %94, ptr noundef %arrayidx82, ptr noundef %98, ptr noundef %arrayidx85, ptr noundef %102)
  br label %if.end87

if.end87:                                         ; preds = %if.then79, %if.else74
  %103 = load ptr, ptr %ipiv.addr, align 8
  %104 = load i32, ptr %k, align 4
  %sub88 = sub nsw i32 %104, 1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %103, i64 %idxprom89
  %105 = load i32, ptr %arrayidx90, align 4
  %sub91 = sub nsw i32 0, %105
  store i32 %sub91, ptr %kp, align 4
  %106 = load i32, ptr %kp, align 4
  %107 = load i32, ptr %k, align 4
  %sub92 = sub nsw i32 %107, 1
  %cmp93 = icmp ne i32 %106, %sub92
  br i1 %cmp93, label %if.then94, label %if.end103

if.then94:                                        ; preds = %if.end87
  %108 = load ptr, ptr %nrhs.addr, align 8
  %109 = load ptr, ptr %b.addr, align 8
  %110 = load i32, ptr %k, align 4
  %sub95 = sub nsw i32 %110, 1
  %111 = load i32, ptr %b_dim1, align 4
  %add96 = add nsw i32 %sub95, %111
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds %struct.doublecomplex, ptr %109, i64 %idxprom97
  %112 = load ptr, ptr %ldb.addr, align 8
  %113 = load ptr, ptr %b.addr, align 8
  %114 = load i32, ptr %kp, align 4
  %115 = load i32, ptr %b_dim1, align 4
  %add99 = add nsw i32 %114, %115
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds %struct.doublecomplex, ptr %113, i64 %idxprom100
  %116 = load ptr, ptr %ldb.addr, align 8
  %call102 = call i32 @zswap_(ptr noundef %108, ptr noundef %arrayidx98, ptr noundef %112, ptr noundef %arrayidx101, ptr noundef %116)
  br label %if.end103

if.end103:                                        ; preds = %if.then94, %if.end87
  %117 = load i32, ptr %k, align 4
  %sub104 = sub nsw i32 %117, 2
  store i32 %sub104, ptr %i__1, align 4
  %r105 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r105, align 8
  %i106 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i106, align 8
  %118 = load ptr, ptr %nrhs.addr, align 8
  %119 = load ptr, ptr %a.addr, align 8
  %120 = load i32, ptr %k, align 4
  %121 = load i32, ptr %a_dim1, align 4
  %mul107 = mul nsw i32 %120, %121
  %add108 = add nsw i32 %mul107, 1
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds %struct.doublecomplex, ptr %119, i64 %idxprom109
  %122 = load ptr, ptr %b.addr, align 8
  %123 = load i32, ptr %k, align 4
  %124 = load i32, ptr %b_dim1, align 4
  %add111 = add nsw i32 %123, %124
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds %struct.doublecomplex, ptr %122, i64 %idxprom112
  %125 = load ptr, ptr %ldb.addr, align 8
  %126 = load ptr, ptr %b.addr, align 8
  %127 = load i32, ptr %b_dim1, align 4
  %add114 = add nsw i32 %127, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds %struct.doublecomplex, ptr %126, i64 %idxprom115
  %128 = load ptr, ptr %ldb.addr, align 8
  %call117 = call i32 @zgeru_(ptr noundef %i__1, ptr noundef %118, ptr noundef %z__1, ptr noundef %arrayidx110, ptr noundef @c__1, ptr noundef %arrayidx113, ptr noundef %125, ptr noundef %arrayidx116, ptr noundef %128)
  %129 = load i32, ptr %k, align 4
  %sub118 = sub nsw i32 %129, 2
  store i32 %sub118, ptr %i__1, align 4
  %r119 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r119, align 8
  %i120 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i120, align 8
  %130 = load ptr, ptr %nrhs.addr, align 8
  %131 = load ptr, ptr %a.addr, align 8
  %132 = load i32, ptr %k, align 4
  %sub121 = sub nsw i32 %132, 1
  %133 = load i32, ptr %a_dim1, align 4
  %mul122 = mul nsw i32 %sub121, %133
  %add123 = add nsw i32 %mul122, 1
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds %struct.doublecomplex, ptr %131, i64 %idxprom124
  %134 = load ptr, ptr %b.addr, align 8
  %135 = load i32, ptr %k, align 4
  %sub126 = sub nsw i32 %135, 1
  %136 = load i32, ptr %b_dim1, align 4
  %add127 = add nsw i32 %sub126, %136
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds %struct.doublecomplex, ptr %134, i64 %idxprom128
  %137 = load ptr, ptr %ldb.addr, align 8
  %138 = load ptr, ptr %b.addr, align 8
  %139 = load i32, ptr %b_dim1, align 4
  %add130 = add nsw i32 %139, 1
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds %struct.doublecomplex, ptr %138, i64 %idxprom131
  %140 = load ptr, ptr %ldb.addr, align 8
  %call133 = call i32 @zgeru_(ptr noundef %i__1, ptr noundef %130, ptr noundef %z__1, ptr noundef %arrayidx125, ptr noundef @c__1, ptr noundef %arrayidx129, ptr noundef %137, ptr noundef %arrayidx132, ptr noundef %140)
  %141 = load i32, ptr %k, align 4
  %sub134 = sub nsw i32 %141, 1
  %142 = load i32, ptr %k, align 4
  %143 = load i32, ptr %a_dim1, align 4
  %mul135 = mul nsw i32 %142, %143
  %add136 = add nsw i32 %sub134, %mul135
  store i32 %add136, ptr %i__1, align 4
  %144 = load ptr, ptr %a.addr, align 8
  %145 = load i32, ptr %i__1, align 4
  %idxprom137 = sext i32 %145 to i64
  %arrayidx138 = getelementptr inbounds %struct.doublecomplex, ptr %144, i64 %idxprom137
  %r139 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx138, i32 0, i32 0
  %146 = load double, ptr %r139, align 8
  %r140 = getelementptr inbounds %struct.doublecomplex, ptr %akm1k, i32 0, i32 0
  store double %146, ptr %r140, align 8
  %147 = load ptr, ptr %a.addr, align 8
  %148 = load i32, ptr %i__1, align 4
  %idxprom141 = sext i32 %148 to i64
  %arrayidx142 = getelementptr inbounds %struct.doublecomplex, ptr %147, i64 %idxprom141
  %i143 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx142, i32 0, i32 1
  %149 = load double, ptr %i143, align 8
  %i144 = getelementptr inbounds %struct.doublecomplex, ptr %akm1k, i32 0, i32 1
  store double %149, ptr %i144, align 8
  %150 = load ptr, ptr %a.addr, align 8
  %151 = load i32, ptr %k, align 4
  %sub145 = sub nsw i32 %151, 1
  %152 = load i32, ptr %k, align 4
  %sub146 = sub nsw i32 %152, 1
  %153 = load i32, ptr %a_dim1, align 4
  %mul147 = mul nsw i32 %sub146, %153
  %add148 = add nsw i32 %sub145, %mul147
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds %struct.doublecomplex, ptr %150, i64 %idxprom149
  call void @z_div(ptr noundef %z__1, ptr noundef %arrayidx150, ptr noundef %akm1k)
  %r151 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %154 = load double, ptr %r151, align 8
  %r152 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 0
  store double %154, ptr %r152, align 8
  %i153 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %155 = load double, ptr %i153, align 8
  %i154 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 1
  store double %155, ptr %i154, align 8
  call void @d_cnjg(ptr noundef %z__2, ptr noundef %akm1k)
  %156 = load ptr, ptr %a.addr, align 8
  %157 = load i32, ptr %k, align 4
  %158 = load i32, ptr %k, align 4
  %159 = load i32, ptr %a_dim1, align 4
  %mul155 = mul nsw i32 %158, %159
  %add156 = add nsw i32 %157, %mul155
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds %struct.doublecomplex, ptr %156, i64 %idxprom157
  call void @z_div(ptr noundef %z__1, ptr noundef %arrayidx158, ptr noundef %z__2)
  %r159 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %160 = load double, ptr %r159, align 8
  %r160 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 0
  store double %160, ptr %r160, align 8
  %i161 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %161 = load double, ptr %i161, align 8
  %i162 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 1
  store double %161, ptr %i162, align 8
  %r163 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 0
  %162 = load double, ptr %r163, align 8
  %r164 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 0
  %163 = load double, ptr %r164, align 8
  %i166 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 1
  %164 = load double, ptr %i166, align 8
  %i167 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 1
  %165 = load double, ptr %i167, align 8
  %mul168 = fmul double %164, %165
  %neg = fneg double %mul168
  %166 = call double @llvm.fmuladd.f64(double %162, double %163, double %neg)
  %r169 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %166, ptr %r169, align 8
  %r170 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 0
  %167 = load double, ptr %r170, align 8
  %i171 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 1
  %168 = load double, ptr %i171, align 8
  %i173 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 1
  %169 = load double, ptr %i173, align 8
  %r174 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 0
  %170 = load double, ptr %r174, align 8
  %mul175 = fmul double %169, %170
  %171 = call double @llvm.fmuladd.f64(double %167, double %168, double %mul175)
  %i176 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %171, ptr %i176, align 8
  %r177 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %172 = load double, ptr %r177, align 8
  %sub178 = fsub double %172, 1.000000e+00
  %r179 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %sub178, ptr %r179, align 8
  %i180 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %173 = load double, ptr %i180, align 8
  %sub181 = fsub double %173, 0.000000e+00
  %i182 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %sub181, ptr %i182, align 8
  %r183 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %174 = load double, ptr %r183, align 8
  %r184 = getelementptr inbounds %struct.doublecomplex, ptr %denom, i32 0, i32 0
  store double %174, ptr %r184, align 8
  %i185 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %175 = load double, ptr %i185, align 8
  %i186 = getelementptr inbounds %struct.doublecomplex, ptr %denom, i32 0, i32 1
  store double %175, ptr %i186, align 8
  %176 = load ptr, ptr %nrhs.addr, align 8
  %177 = load i32, ptr %176, align 4
  store i32 %177, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end103
  %178 = load i32, ptr %j, align 4
  %179 = load i32, ptr %i__1, align 4
  %cmp187 = icmp sle i32 %178, %179
  br i1 %cmp187, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %180 = load ptr, ptr %b.addr, align 8
  %181 = load i32, ptr %k, align 4
  %sub188 = sub nsw i32 %181, 1
  %182 = load i32, ptr %j, align 4
  %183 = load i32, ptr %b_dim1, align 4
  %mul189 = mul nsw i32 %182, %183
  %add190 = add nsw i32 %sub188, %mul189
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds %struct.doublecomplex, ptr %180, i64 %idxprom191
  call void @z_div(ptr noundef %z__1, ptr noundef %arrayidx192, ptr noundef %akm1k)
  %r193 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %184 = load double, ptr %r193, align 8
  %r194 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 0
  store double %184, ptr %r194, align 8
  %i195 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %185 = load double, ptr %i195, align 8
  %i196 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 1
  store double %185, ptr %i196, align 8
  call void @d_cnjg(ptr noundef %z__2, ptr noundef %akm1k)
  %186 = load ptr, ptr %b.addr, align 8
  %187 = load i32, ptr %k, align 4
  %188 = load i32, ptr %j, align 4
  %189 = load i32, ptr %b_dim1, align 4
  %mul197 = mul nsw i32 %188, %189
  %add198 = add nsw i32 %187, %mul197
  %idxprom199 = sext i32 %add198 to i64
  %arrayidx200 = getelementptr inbounds %struct.doublecomplex, ptr %186, i64 %idxprom199
  call void @z_div(ptr noundef %z__1, ptr noundef %arrayidx200, ptr noundef %z__2)
  %r201 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %190 = load double, ptr %r201, align 8
  %r202 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 0
  store double %190, ptr %r202, align 8
  %i203 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %191 = load double, ptr %i203, align 8
  %i204 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 1
  store double %191, ptr %i204, align 8
  %192 = load i32, ptr %k, align 4
  %sub205 = sub nsw i32 %192, 1
  %193 = load i32, ptr %j, align 4
  %194 = load i32, ptr %b_dim1, align 4
  %mul206 = mul nsw i32 %193, %194
  %add207 = add nsw i32 %sub205, %mul206
  store i32 %add207, ptr %i__2, align 4
  %r208 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 0
  %195 = load double, ptr %r208, align 8
  %r209 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 0
  %196 = load double, ptr %r209, align 8
  %i211 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 1
  %197 = load double, ptr %i211, align 8
  %i212 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 1
  %198 = load double, ptr %i212, align 8
  %mul213 = fmul double %197, %198
  %neg214 = fneg double %mul213
  %199 = call double @llvm.fmuladd.f64(double %195, double %196, double %neg214)
  %r215 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  store double %199, ptr %r215, align 8
  %r216 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 0
  %200 = load double, ptr %r216, align 8
  %i217 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 1
  %201 = load double, ptr %i217, align 8
  %i219 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 1
  %202 = load double, ptr %i219, align 8
  %r220 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 0
  %203 = load double, ptr %r220, align 8
  %mul221 = fmul double %202, %203
  %204 = call double @llvm.fmuladd.f64(double %200, double %201, double %mul221)
  %i222 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  store double %204, ptr %i222, align 8
  %r223 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  %205 = load double, ptr %r223, align 8
  %r224 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 0
  %206 = load double, ptr %r224, align 8
  %sub225 = fsub double %205, %206
  %r226 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %sub225, ptr %r226, align 8
  %i227 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  %207 = load double, ptr %i227, align 8
  %i228 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 1
  %208 = load double, ptr %i228, align 8
  %sub229 = fsub double %207, %208
  %i230 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %sub229, ptr %i230, align 8
  call void @z_div(ptr noundef %z__1, ptr noundef %z__2, ptr noundef %denom)
  %r231 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %209 = load double, ptr %r231, align 8
  %210 = load ptr, ptr %b.addr, align 8
  %211 = load i32, ptr %i__2, align 4
  %idxprom232 = sext i32 %211 to i64
  %arrayidx233 = getelementptr inbounds %struct.doublecomplex, ptr %210, i64 %idxprom232
  %r234 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx233, i32 0, i32 0
  store double %209, ptr %r234, align 8
  %i235 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %212 = load double, ptr %i235, align 8
  %213 = load ptr, ptr %b.addr, align 8
  %214 = load i32, ptr %i__2, align 4
  %idxprom236 = sext i32 %214 to i64
  %arrayidx237 = getelementptr inbounds %struct.doublecomplex, ptr %213, i64 %idxprom236
  %i238 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx237, i32 0, i32 1
  store double %212, ptr %i238, align 8
  %215 = load i32, ptr %k, align 4
  %216 = load i32, ptr %j, align 4
  %217 = load i32, ptr %b_dim1, align 4
  %mul239 = mul nsw i32 %216, %217
  %add240 = add nsw i32 %215, %mul239
  store i32 %add240, ptr %i__2, align 4
  %r241 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 0
  %218 = load double, ptr %r241, align 8
  %r242 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 0
  %219 = load double, ptr %r242, align 8
  %i244 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 1
  %220 = load double, ptr %i244, align 8
  %i245 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 1
  %221 = load double, ptr %i245, align 8
  %mul246 = fmul double %220, %221
  %neg247 = fneg double %mul246
  %222 = call double @llvm.fmuladd.f64(double %218, double %219, double %neg247)
  %r248 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  store double %222, ptr %r248, align 8
  %r249 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 0
  %223 = load double, ptr %r249, align 8
  %i250 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 1
  %224 = load double, ptr %i250, align 8
  %i252 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 1
  %225 = load double, ptr %i252, align 8
  %r253 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 0
  %226 = load double, ptr %r253, align 8
  %mul254 = fmul double %225, %226
  %227 = call double @llvm.fmuladd.f64(double %223, double %224, double %mul254)
  %i255 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  store double %227, ptr %i255, align 8
  %r256 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  %228 = load double, ptr %r256, align 8
  %r257 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 0
  %229 = load double, ptr %r257, align 8
  %sub258 = fsub double %228, %229
  %r259 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %sub258, ptr %r259, align 8
  %i260 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  %230 = load double, ptr %i260, align 8
  %i261 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 1
  %231 = load double, ptr %i261, align 8
  %sub262 = fsub double %230, %231
  %i263 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %sub262, ptr %i263, align 8
  call void @z_div(ptr noundef %z__1, ptr noundef %z__2, ptr noundef %denom)
  %r264 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %232 = load double, ptr %r264, align 8
  %233 = load ptr, ptr %b.addr, align 8
  %234 = load i32, ptr %i__2, align 4
  %idxprom265 = sext i32 %234 to i64
  %arrayidx266 = getelementptr inbounds %struct.doublecomplex, ptr %233, i64 %idxprom265
  %r267 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx266, i32 0, i32 0
  store double %232, ptr %r267, align 8
  %i268 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %235 = load double, ptr %i268, align 8
  %236 = load ptr, ptr %b.addr, align 8
  %237 = load i32, ptr %i__2, align 4
  %idxprom269 = sext i32 %237 to i64
  %arrayidx270 = getelementptr inbounds %struct.doublecomplex, ptr %236, i64 %idxprom269
  %i271 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx270, i32 0, i32 1
  store double %235, ptr %i271, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %238 = load i32, ptr %j, align 4
  %inc = add nsw i32 %238, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %239 = load i32, ptr %k, align 4
  %add272 = add nsw i32 %239, -2
  store i32 %add272, ptr %k, align 4
  br label %if.end273

if.end273:                                        ; preds = %for.end, %if.end53
  br label %L10

L30:                                              ; preds = %if.then38
  store i32 1, ptr %k, align 4
  br label %L40

L40:                                              ; preds = %if.end398, %L30
  %240 = load i32, ptr %k, align 4
  %241 = load ptr, ptr %n.addr, align 8
  %242 = load i32, ptr %241, align 4
  %cmp274 = icmp sgt i32 %240, %242
  br i1 %cmp274, label %if.then275, label %if.end276

if.then275:                                       ; preds = %L40
  br label %L50

if.end276:                                        ; preds = %L40
  %243 = load ptr, ptr %ipiv.addr, align 8
  %244 = load i32, ptr %k, align 4
  %idxprom277 = sext i32 %244 to i64
  %arrayidx278 = getelementptr inbounds i32, ptr %243, i64 %idxprom277
  %245 = load i32, ptr %arrayidx278, align 4
  %cmp279 = icmp sgt i32 %245, 0
  br i1 %cmp279, label %if.then280, label %if.else318

if.then280:                                       ; preds = %if.end276
  %246 = load i32, ptr %k, align 4
  %cmp281 = icmp sgt i32 %246, 1
  br i1 %cmp281, label %if.then282, label %if.end304

if.then282:                                       ; preds = %if.then280
  %247 = load ptr, ptr %nrhs.addr, align 8
  %248 = load ptr, ptr %b.addr, align 8
  %249 = load i32, ptr %k, align 4
  %250 = load i32, ptr %b_dim1, align 4
  %add283 = add nsw i32 %249, %250
  %idxprom284 = sext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds %struct.doublecomplex, ptr %248, i64 %idxprom284
  %251 = load ptr, ptr %ldb.addr, align 8
  %call286 = call i32 @zlacgv_(ptr noundef %247, ptr noundef %arrayidx285, ptr noundef %251)
  %252 = load i32, ptr %k, align 4
  %sub287 = sub nsw i32 %252, 1
  store i32 %sub287, ptr %i__1, align 4
  %r288 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r288, align 8
  %i289 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i289, align 8
  %253 = load ptr, ptr %nrhs.addr, align 8
  %254 = load ptr, ptr %b.addr, align 8
  %255 = load i32, ptr %b_offset, align 4
  %idxprom290 = sext i32 %255 to i64
  %arrayidx291 = getelementptr inbounds %struct.doublecomplex, ptr %254, i64 %idxprom290
  %256 = load ptr, ptr %ldb.addr, align 8
  %257 = load ptr, ptr %a.addr, align 8
  %258 = load i32, ptr %k, align 4
  %259 = load i32, ptr %a_dim1, align 4
  %mul292 = mul nsw i32 %258, %259
  %add293 = add nsw i32 %mul292, 1
  %idxprom294 = sext i32 %add293 to i64
  %arrayidx295 = getelementptr inbounds %struct.doublecomplex, ptr %257, i64 %idxprom294
  %260 = load ptr, ptr %b.addr, align 8
  %261 = load i32, ptr %k, align 4
  %262 = load i32, ptr %b_dim1, align 4
  %add296 = add nsw i32 %261, %262
  %idxprom297 = sext i32 %add296 to i64
  %arrayidx298 = getelementptr inbounds %struct.doublecomplex, ptr %260, i64 %idxprom297
  %263 = load ptr, ptr %ldb.addr, align 8
  %call299 = call i32 @zgemv_(ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %253, ptr noundef %z__1, ptr noundef %arrayidx291, ptr noundef %256, ptr noundef %arrayidx295, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx298, ptr noundef %263)
  %264 = load ptr, ptr %nrhs.addr, align 8
  %265 = load ptr, ptr %b.addr, align 8
  %266 = load i32, ptr %k, align 4
  %267 = load i32, ptr %b_dim1, align 4
  %add300 = add nsw i32 %266, %267
  %idxprom301 = sext i32 %add300 to i64
  %arrayidx302 = getelementptr inbounds %struct.doublecomplex, ptr %265, i64 %idxprom301
  %268 = load ptr, ptr %ldb.addr, align 8
  %call303 = call i32 @zlacgv_(ptr noundef %264, ptr noundef %arrayidx302, ptr noundef %268)
  br label %if.end304

if.end304:                                        ; preds = %if.then282, %if.then280
  %269 = load ptr, ptr %ipiv.addr, align 8
  %270 = load i32, ptr %k, align 4
  %idxprom305 = sext i32 %270 to i64
  %arrayidx306 = getelementptr inbounds i32, ptr %269, i64 %idxprom305
  %271 = load i32, ptr %arrayidx306, align 4
  store i32 %271, ptr %kp, align 4
  %272 = load i32, ptr %kp, align 4
  %273 = load i32, ptr %k, align 4
  %cmp307 = icmp ne i32 %272, %273
  br i1 %cmp307, label %if.then308, label %if.end316

if.then308:                                       ; preds = %if.end304
  %274 = load ptr, ptr %nrhs.addr, align 8
  %275 = load ptr, ptr %b.addr, align 8
  %276 = load i32, ptr %k, align 4
  %277 = load i32, ptr %b_dim1, align 4
  %add309 = add nsw i32 %276, %277
  %idxprom310 = sext i32 %add309 to i64
  %arrayidx311 = getelementptr inbounds %struct.doublecomplex, ptr %275, i64 %idxprom310
  %278 = load ptr, ptr %ldb.addr, align 8
  %279 = load ptr, ptr %b.addr, align 8
  %280 = load i32, ptr %kp, align 4
  %281 = load i32, ptr %b_dim1, align 4
  %add312 = add nsw i32 %280, %281
  %idxprom313 = sext i32 %add312 to i64
  %arrayidx314 = getelementptr inbounds %struct.doublecomplex, ptr %279, i64 %idxprom313
  %282 = load ptr, ptr %ldb.addr, align 8
  %call315 = call i32 @zswap_(ptr noundef %274, ptr noundef %arrayidx311, ptr noundef %278, ptr noundef %arrayidx314, ptr noundef %282)
  br label %if.end316

if.end316:                                        ; preds = %if.then308, %if.end304
  %283 = load i32, ptr %k, align 4
  %inc317 = add nsw i32 %283, 1
  store i32 %inc317, ptr %k, align 4
  br label %if.end398

if.else318:                                       ; preds = %if.end276
  %284 = load i32, ptr %k, align 4
  %cmp319 = icmp sgt i32 %284, 1
  br i1 %cmp319, label %if.then320, label %if.end367

if.then320:                                       ; preds = %if.else318
  %285 = load ptr, ptr %nrhs.addr, align 8
  %286 = load ptr, ptr %b.addr, align 8
  %287 = load i32, ptr %k, align 4
  %288 = load i32, ptr %b_dim1, align 4
  %add321 = add nsw i32 %287, %288
  %idxprom322 = sext i32 %add321 to i64
  %arrayidx323 = getelementptr inbounds %struct.doublecomplex, ptr %286, i64 %idxprom322
  %289 = load ptr, ptr %ldb.addr, align 8
  %call324 = call i32 @zlacgv_(ptr noundef %285, ptr noundef %arrayidx323, ptr noundef %289)
  %290 = load i32, ptr %k, align 4
  %sub325 = sub nsw i32 %290, 1
  store i32 %sub325, ptr %i__1, align 4
  %r326 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r326, align 8
  %i327 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i327, align 8
  %291 = load ptr, ptr %nrhs.addr, align 8
  %292 = load ptr, ptr %b.addr, align 8
  %293 = load i32, ptr %b_offset, align 4
  %idxprom328 = sext i32 %293 to i64
  %arrayidx329 = getelementptr inbounds %struct.doublecomplex, ptr %292, i64 %idxprom328
  %294 = load ptr, ptr %ldb.addr, align 8
  %295 = load ptr, ptr %a.addr, align 8
  %296 = load i32, ptr %k, align 4
  %297 = load i32, ptr %a_dim1, align 4
  %mul330 = mul nsw i32 %296, %297
  %add331 = add nsw i32 %mul330, 1
  %idxprom332 = sext i32 %add331 to i64
  %arrayidx333 = getelementptr inbounds %struct.doublecomplex, ptr %295, i64 %idxprom332
  %298 = load ptr, ptr %b.addr, align 8
  %299 = load i32, ptr %k, align 4
  %300 = load i32, ptr %b_dim1, align 4
  %add334 = add nsw i32 %299, %300
  %idxprom335 = sext i32 %add334 to i64
  %arrayidx336 = getelementptr inbounds %struct.doublecomplex, ptr %298, i64 %idxprom335
  %301 = load ptr, ptr %ldb.addr, align 8
  %call337 = call i32 @zgemv_(ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %291, ptr noundef %z__1, ptr noundef %arrayidx329, ptr noundef %294, ptr noundef %arrayidx333, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx336, ptr noundef %301)
  %302 = load ptr, ptr %nrhs.addr, align 8
  %303 = load ptr, ptr %b.addr, align 8
  %304 = load i32, ptr %k, align 4
  %305 = load i32, ptr %b_dim1, align 4
  %add338 = add nsw i32 %304, %305
  %idxprom339 = sext i32 %add338 to i64
  %arrayidx340 = getelementptr inbounds %struct.doublecomplex, ptr %303, i64 %idxprom339
  %306 = load ptr, ptr %ldb.addr, align 8
  %call341 = call i32 @zlacgv_(ptr noundef %302, ptr noundef %arrayidx340, ptr noundef %306)
  %307 = load ptr, ptr %nrhs.addr, align 8
  %308 = load ptr, ptr %b.addr, align 8
  %309 = load i32, ptr %k, align 4
  %add342 = add nsw i32 %309, 1
  %310 = load i32, ptr %b_dim1, align 4
  %add343 = add nsw i32 %add342, %310
  %idxprom344 = sext i32 %add343 to i64
  %arrayidx345 = getelementptr inbounds %struct.doublecomplex, ptr %308, i64 %idxprom344
  %311 = load ptr, ptr %ldb.addr, align 8
  %call346 = call i32 @zlacgv_(ptr noundef %307, ptr noundef %arrayidx345, ptr noundef %311)
  %312 = load i32, ptr %k, align 4
  %sub347 = sub nsw i32 %312, 1
  store i32 %sub347, ptr %i__1, align 4
  %r348 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r348, align 8
  %i349 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i349, align 8
  %313 = load ptr, ptr %nrhs.addr, align 8
  %314 = load ptr, ptr %b.addr, align 8
  %315 = load i32, ptr %b_offset, align 4
  %idxprom350 = sext i32 %315 to i64
  %arrayidx351 = getelementptr inbounds %struct.doublecomplex, ptr %314, i64 %idxprom350
  %316 = load ptr, ptr %ldb.addr, align 8
  %317 = load ptr, ptr %a.addr, align 8
  %318 = load i32, ptr %k, align 4
  %add352 = add nsw i32 %318, 1
  %319 = load i32, ptr %a_dim1, align 4
  %mul353 = mul nsw i32 %add352, %319
  %add354 = add nsw i32 %mul353, 1
  %idxprom355 = sext i32 %add354 to i64
  %arrayidx356 = getelementptr inbounds %struct.doublecomplex, ptr %317, i64 %idxprom355
  %320 = load ptr, ptr %b.addr, align 8
  %321 = load i32, ptr %k, align 4
  %add357 = add nsw i32 %321, 1
  %322 = load i32, ptr %b_dim1, align 4
  %add358 = add nsw i32 %add357, %322
  %idxprom359 = sext i32 %add358 to i64
  %arrayidx360 = getelementptr inbounds %struct.doublecomplex, ptr %320, i64 %idxprom359
  %323 = load ptr, ptr %ldb.addr, align 8
  %call361 = call i32 @zgemv_(ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %313, ptr noundef %z__1, ptr noundef %arrayidx351, ptr noundef %316, ptr noundef %arrayidx356, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx360, ptr noundef %323)
  %324 = load ptr, ptr %nrhs.addr, align 8
  %325 = load ptr, ptr %b.addr, align 8
  %326 = load i32, ptr %k, align 4
  %add362 = add nsw i32 %326, 1
  %327 = load i32, ptr %b_dim1, align 4
  %add363 = add nsw i32 %add362, %327
  %idxprom364 = sext i32 %add363 to i64
  %arrayidx365 = getelementptr inbounds %struct.doublecomplex, ptr %325, i64 %idxprom364
  %328 = load ptr, ptr %ldb.addr, align 8
  %call366 = call i32 @zlacgv_(ptr noundef %324, ptr noundef %arrayidx365, ptr noundef %328)
  br label %if.end367

if.end367:                                        ; preds = %if.then320, %if.else318
  %329 = load ptr, ptr %ipiv.addr, align 8
  %330 = load i32, ptr %k, align 4
  %idxprom368 = sext i32 %330 to i64
  %arrayidx369 = getelementptr inbounds i32, ptr %329, i64 %idxprom368
  %331 = load i32, ptr %arrayidx369, align 4
  %sub370 = sub nsw i32 0, %331
  store i32 %sub370, ptr %kp, align 4
  %332 = load i32, ptr %kp, align 4
  %333 = load i32, ptr %k, align 4
  %cmp371 = icmp ne i32 %332, %333
  br i1 %cmp371, label %if.then372, label %if.end380

if.then372:                                       ; preds = %if.end367
  %334 = load ptr, ptr %nrhs.addr, align 8
  %335 = load ptr, ptr %b.addr, align 8
  %336 = load i32, ptr %k, align 4
  %337 = load i32, ptr %b_dim1, align 4
  %add373 = add nsw i32 %336, %337
  %idxprom374 = sext i32 %add373 to i64
  %arrayidx375 = getelementptr inbounds %struct.doublecomplex, ptr %335, i64 %idxprom374
  %338 = load ptr, ptr %ldb.addr, align 8
  %339 = load ptr, ptr %b.addr, align 8
  %340 = load i32, ptr %kp, align 4
  %341 = load i32, ptr %b_dim1, align 4
  %add376 = add nsw i32 %340, %341
  %idxprom377 = sext i32 %add376 to i64
  %arrayidx378 = getelementptr inbounds %struct.doublecomplex, ptr %339, i64 %idxprom377
  %342 = load ptr, ptr %ldb.addr, align 8
  %call379 = call i32 @zswap_(ptr noundef %334, ptr noundef %arrayidx375, ptr noundef %338, ptr noundef %arrayidx378, ptr noundef %342)
  br label %if.end380

if.end380:                                        ; preds = %if.then372, %if.end367
  %343 = load ptr, ptr %ipiv.addr, align 8
  %344 = load i32, ptr %k, align 4
  %add381 = add nsw i32 %344, 1
  %idxprom382 = sext i32 %add381 to i64
  %arrayidx383 = getelementptr inbounds i32, ptr %343, i64 %idxprom382
  %345 = load i32, ptr %arrayidx383, align 4
  %sub384 = sub nsw i32 0, %345
  store i32 %sub384, ptr %kp, align 4
  %346 = load i32, ptr %kp, align 4
  %347 = load i32, ptr %k, align 4
  %add385 = add nsw i32 %347, 1
  %cmp386 = icmp ne i32 %346, %add385
  br i1 %cmp386, label %if.then387, label %if.end396

if.then387:                                       ; preds = %if.end380
  %348 = load ptr, ptr %nrhs.addr, align 8
  %349 = load ptr, ptr %b.addr, align 8
  %350 = load i32, ptr %k, align 4
  %add388 = add nsw i32 %350, 1
  %351 = load i32, ptr %b_dim1, align 4
  %add389 = add nsw i32 %add388, %351
  %idxprom390 = sext i32 %add389 to i64
  %arrayidx391 = getelementptr inbounds %struct.doublecomplex, ptr %349, i64 %idxprom390
  %352 = load ptr, ptr %ldb.addr, align 8
  %353 = load ptr, ptr %b.addr, align 8
  %354 = load i32, ptr %kp, align 4
  %355 = load i32, ptr %b_dim1, align 4
  %add392 = add nsw i32 %354, %355
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds %struct.doublecomplex, ptr %353, i64 %idxprom393
  %356 = load ptr, ptr %ldb.addr, align 8
  %call395 = call i32 @zswap_(ptr noundef %348, ptr noundef %arrayidx391, ptr noundef %352, ptr noundef %arrayidx394, ptr noundef %356)
  br label %if.end396

if.end396:                                        ; preds = %if.then387, %if.end380
  %357 = load i32, ptr %k, align 4
  %add397 = add nsw i32 %357, 2
  store i32 %add397, ptr %k, align 4
  br label %if.end398

if.end398:                                        ; preds = %if.end396, %if.end316
  br label %L40

L50:                                              ; preds = %if.then275
  br label %if.end799

if.else399:                                       ; preds = %if.end34
  store i32 1, ptr %k, align 4
  br label %L60

L60:                                              ; preds = %if.end664, %if.else399
  %358 = load i32, ptr %k, align 4
  %359 = load ptr, ptr %n.addr, align 8
  %360 = load i32, ptr %359, align 4
  %cmp400 = icmp sgt i32 %358, %360
  br i1 %cmp400, label %if.then401, label %if.end402

if.then401:                                       ; preds = %L60
  br label %L80

if.end402:                                        ; preds = %L60
  %361 = load ptr, ptr %ipiv.addr, align 8
  %362 = load i32, ptr %k, align 4
  %idxprom403 = sext i32 %362 to i64
  %arrayidx404 = getelementptr inbounds i32, ptr %361, i64 %idxprom403
  %363 = load i32, ptr %arrayidx404, align 4
  %cmp405 = icmp sgt i32 %363, 0
  br i1 %cmp405, label %if.then406, label %if.else449

if.then406:                                       ; preds = %if.end402
  %364 = load ptr, ptr %ipiv.addr, align 8
  %365 = load i32, ptr %k, align 4
  %idxprom407 = sext i32 %365 to i64
  %arrayidx408 = getelementptr inbounds i32, ptr %364, i64 %idxprom407
  %366 = load i32, ptr %arrayidx408, align 4
  store i32 %366, ptr %kp, align 4
  %367 = load i32, ptr %kp, align 4
  %368 = load i32, ptr %k, align 4
  %cmp409 = icmp ne i32 %367, %368
  br i1 %cmp409, label %if.then410, label %if.end418

if.then410:                                       ; preds = %if.then406
  %369 = load ptr, ptr %nrhs.addr, align 8
  %370 = load ptr, ptr %b.addr, align 8
  %371 = load i32, ptr %k, align 4
  %372 = load i32, ptr %b_dim1, align 4
  %add411 = add nsw i32 %371, %372
  %idxprom412 = sext i32 %add411 to i64
  %arrayidx413 = getelementptr inbounds %struct.doublecomplex, ptr %370, i64 %idxprom412
  %373 = load ptr, ptr %ldb.addr, align 8
  %374 = load ptr, ptr %b.addr, align 8
  %375 = load i32, ptr %kp, align 4
  %376 = load i32, ptr %b_dim1, align 4
  %add414 = add nsw i32 %375, %376
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds %struct.doublecomplex, ptr %374, i64 %idxprom415
  %377 = load ptr, ptr %ldb.addr, align 8
  %call417 = call i32 @zswap_(ptr noundef %369, ptr noundef %arrayidx413, ptr noundef %373, ptr noundef %arrayidx416, ptr noundef %377)
  br label %if.end418

if.end418:                                        ; preds = %if.then410, %if.then406
  %378 = load i32, ptr %k, align 4
  %379 = load ptr, ptr %n.addr, align 8
  %380 = load i32, ptr %379, align 4
  %cmp419 = icmp slt i32 %378, %380
  br i1 %cmp419, label %if.then420, label %if.end437

if.then420:                                       ; preds = %if.end418
  %381 = load ptr, ptr %n.addr, align 8
  %382 = load i32, ptr %381, align 4
  %383 = load i32, ptr %k, align 4
  %sub421 = sub nsw i32 %382, %383
  store i32 %sub421, ptr %i__1, align 4
  %r422 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r422, align 8
  %i423 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i423, align 8
  %384 = load ptr, ptr %nrhs.addr, align 8
  %385 = load ptr, ptr %a.addr, align 8
  %386 = load i32, ptr %k, align 4
  %add424 = add nsw i32 %386, 1
  %387 = load i32, ptr %k, align 4
  %388 = load i32, ptr %a_dim1, align 4
  %mul425 = mul nsw i32 %387, %388
  %add426 = add nsw i32 %add424, %mul425
  %idxprom427 = sext i32 %add426 to i64
  %arrayidx428 = getelementptr inbounds %struct.doublecomplex, ptr %385, i64 %idxprom427
  %389 = load ptr, ptr %b.addr, align 8
  %390 = load i32, ptr %k, align 4
  %391 = load i32, ptr %b_dim1, align 4
  %add429 = add nsw i32 %390, %391
  %idxprom430 = sext i32 %add429 to i64
  %arrayidx431 = getelementptr inbounds %struct.doublecomplex, ptr %389, i64 %idxprom430
  %392 = load ptr, ptr %ldb.addr, align 8
  %393 = load ptr, ptr %b.addr, align 8
  %394 = load i32, ptr %k, align 4
  %add432 = add nsw i32 %394, 1
  %395 = load i32, ptr %b_dim1, align 4
  %add433 = add nsw i32 %add432, %395
  %idxprom434 = sext i32 %add433 to i64
  %arrayidx435 = getelementptr inbounds %struct.doublecomplex, ptr %393, i64 %idxprom434
  %396 = load ptr, ptr %ldb.addr, align 8
  %call436 = call i32 @zgeru_(ptr noundef %i__1, ptr noundef %384, ptr noundef %z__1, ptr noundef %arrayidx428, ptr noundef @c__1, ptr noundef %arrayidx431, ptr noundef %392, ptr noundef %arrayidx435, ptr noundef %396)
  br label %if.end437

if.end437:                                        ; preds = %if.then420, %if.end418
  %397 = load i32, ptr %k, align 4
  %398 = load i32, ptr %k, align 4
  %399 = load i32, ptr %a_dim1, align 4
  %mul438 = mul nsw i32 %398, %399
  %add439 = add nsw i32 %397, %mul438
  store i32 %add439, ptr %i__1, align 4
  %400 = load ptr, ptr %a.addr, align 8
  %401 = load i32, ptr %i__1, align 4
  %idxprom440 = sext i32 %401 to i64
  %arrayidx441 = getelementptr inbounds %struct.doublecomplex, ptr %400, i64 %idxprom440
  %r442 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx441, i32 0, i32 0
  %402 = load double, ptr %r442, align 8
  %div443 = fdiv double 1.000000e+00, %402
  store double %div443, ptr %s, align 8
  %403 = load ptr, ptr %nrhs.addr, align 8
  %404 = load ptr, ptr %b.addr, align 8
  %405 = load i32, ptr %k, align 4
  %406 = load i32, ptr %b_dim1, align 4
  %add444 = add nsw i32 %405, %406
  %idxprom445 = sext i32 %add444 to i64
  %arrayidx446 = getelementptr inbounds %struct.doublecomplex, ptr %404, i64 %idxprom445
  %407 = load ptr, ptr %ldb.addr, align 8
  %call447 = call i32 @zdscal_(ptr noundef %403, ptr noundef %s, ptr noundef %arrayidx446, ptr noundef %407)
  %408 = load i32, ptr %k, align 4
  %inc448 = add nsw i32 %408, 1
  store i32 %inc448, ptr %k, align 4
  br label %if.end664

if.else449:                                       ; preds = %if.end402
  %409 = load ptr, ptr %ipiv.addr, align 8
  %410 = load i32, ptr %k, align 4
  %idxprom450 = sext i32 %410 to i64
  %arrayidx451 = getelementptr inbounds i32, ptr %409, i64 %idxprom450
  %411 = load i32, ptr %arrayidx451, align 4
  %sub452 = sub nsw i32 0, %411
  store i32 %sub452, ptr %kp, align 4
  %412 = load i32, ptr %kp, align 4
  %413 = load i32, ptr %k, align 4
  %cmp453 = icmp ne i32 %412, %413
  br i1 %cmp453, label %if.then454, label %if.end462

if.then454:                                       ; preds = %if.else449
  %414 = load ptr, ptr %nrhs.addr, align 8
  %415 = load ptr, ptr %b.addr, align 8
  %416 = load i32, ptr %k, align 4
  %417 = load i32, ptr %b_dim1, align 4
  %add455 = add nsw i32 %416, %417
  %idxprom456 = sext i32 %add455 to i64
  %arrayidx457 = getelementptr inbounds %struct.doublecomplex, ptr %415, i64 %idxprom456
  %418 = load ptr, ptr %ldb.addr, align 8
  %419 = load ptr, ptr %b.addr, align 8
  %420 = load i32, ptr %kp, align 4
  %421 = load i32, ptr %b_dim1, align 4
  %add458 = add nsw i32 %420, %421
  %idxprom459 = sext i32 %add458 to i64
  %arrayidx460 = getelementptr inbounds %struct.doublecomplex, ptr %419, i64 %idxprom459
  %422 = load ptr, ptr %ldb.addr, align 8
  %call461 = call i32 @zswap_(ptr noundef %414, ptr noundef %arrayidx457, ptr noundef %418, ptr noundef %arrayidx460, ptr noundef %422)
  br label %if.end462

if.end462:                                        ; preds = %if.then454, %if.else449
  %423 = load ptr, ptr %ipiv.addr, align 8
  %424 = load i32, ptr %k, align 4
  %add463 = add nsw i32 %424, 1
  %idxprom464 = sext i32 %add463 to i64
  %arrayidx465 = getelementptr inbounds i32, ptr %423, i64 %idxprom464
  %425 = load i32, ptr %arrayidx465, align 4
  %sub466 = sub nsw i32 0, %425
  store i32 %sub466, ptr %kp, align 4
  %426 = load i32, ptr %kp, align 4
  %427 = load i32, ptr %k, align 4
  %add467 = add nsw i32 %427, 1
  %cmp468 = icmp ne i32 %426, %add467
  br i1 %cmp468, label %if.then469, label %if.end478

if.then469:                                       ; preds = %if.end462
  %428 = load ptr, ptr %nrhs.addr, align 8
  %429 = load ptr, ptr %b.addr, align 8
  %430 = load i32, ptr %k, align 4
  %add470 = add nsw i32 %430, 1
  %431 = load i32, ptr %b_dim1, align 4
  %add471 = add nsw i32 %add470, %431
  %idxprom472 = sext i32 %add471 to i64
  %arrayidx473 = getelementptr inbounds %struct.doublecomplex, ptr %429, i64 %idxprom472
  %432 = load ptr, ptr %ldb.addr, align 8
  %433 = load ptr, ptr %b.addr, align 8
  %434 = load i32, ptr %kp, align 4
  %435 = load i32, ptr %b_dim1, align 4
  %add474 = add nsw i32 %434, %435
  %idxprom475 = sext i32 %add474 to i64
  %arrayidx476 = getelementptr inbounds %struct.doublecomplex, ptr %433, i64 %idxprom475
  %436 = load ptr, ptr %ldb.addr, align 8
  %call477 = call i32 @zswap_(ptr noundef %428, ptr noundef %arrayidx473, ptr noundef %432, ptr noundef %arrayidx476, ptr noundef %436)
  br label %if.end478

if.end478:                                        ; preds = %if.then469, %if.end462
  %437 = load i32, ptr %k, align 4
  %438 = load ptr, ptr %n.addr, align 8
  %439 = load i32, ptr %438, align 4
  %sub479 = sub nsw i32 %439, 1
  %cmp480 = icmp slt i32 %437, %sub479
  br i1 %cmp480, label %if.then481, label %if.end518

if.then481:                                       ; preds = %if.end478
  %440 = load ptr, ptr %n.addr, align 8
  %441 = load i32, ptr %440, align 4
  %442 = load i32, ptr %k, align 4
  %sub482 = sub nsw i32 %441, %442
  %sub483 = sub nsw i32 %sub482, 1
  store i32 %sub483, ptr %i__1, align 4
  %r484 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r484, align 8
  %i485 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i485, align 8
  %443 = load ptr, ptr %nrhs.addr, align 8
  %444 = load ptr, ptr %a.addr, align 8
  %445 = load i32, ptr %k, align 4
  %add486 = add nsw i32 %445, 2
  %446 = load i32, ptr %k, align 4
  %447 = load i32, ptr %a_dim1, align 4
  %mul487 = mul nsw i32 %446, %447
  %add488 = add nsw i32 %add486, %mul487
  %idxprom489 = sext i32 %add488 to i64
  %arrayidx490 = getelementptr inbounds %struct.doublecomplex, ptr %444, i64 %idxprom489
  %448 = load ptr, ptr %b.addr, align 8
  %449 = load i32, ptr %k, align 4
  %450 = load i32, ptr %b_dim1, align 4
  %add491 = add nsw i32 %449, %450
  %idxprom492 = sext i32 %add491 to i64
  %arrayidx493 = getelementptr inbounds %struct.doublecomplex, ptr %448, i64 %idxprom492
  %451 = load ptr, ptr %ldb.addr, align 8
  %452 = load ptr, ptr %b.addr, align 8
  %453 = load i32, ptr %k, align 4
  %add494 = add nsw i32 %453, 2
  %454 = load i32, ptr %b_dim1, align 4
  %add495 = add nsw i32 %add494, %454
  %idxprom496 = sext i32 %add495 to i64
  %arrayidx497 = getelementptr inbounds %struct.doublecomplex, ptr %452, i64 %idxprom496
  %455 = load ptr, ptr %ldb.addr, align 8
  %call498 = call i32 @zgeru_(ptr noundef %i__1, ptr noundef %443, ptr noundef %z__1, ptr noundef %arrayidx490, ptr noundef @c__1, ptr noundef %arrayidx493, ptr noundef %451, ptr noundef %arrayidx497, ptr noundef %455)
  %456 = load ptr, ptr %n.addr, align 8
  %457 = load i32, ptr %456, align 4
  %458 = load i32, ptr %k, align 4
  %sub499 = sub nsw i32 %457, %458
  %sub500 = sub nsw i32 %sub499, 1
  store i32 %sub500, ptr %i__1, align 4
  %r501 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r501, align 8
  %i502 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i502, align 8
  %459 = load ptr, ptr %nrhs.addr, align 8
  %460 = load ptr, ptr %a.addr, align 8
  %461 = load i32, ptr %k, align 4
  %add503 = add nsw i32 %461, 2
  %462 = load i32, ptr %k, align 4
  %add504 = add nsw i32 %462, 1
  %463 = load i32, ptr %a_dim1, align 4
  %mul505 = mul nsw i32 %add504, %463
  %add506 = add nsw i32 %add503, %mul505
  %idxprom507 = sext i32 %add506 to i64
  %arrayidx508 = getelementptr inbounds %struct.doublecomplex, ptr %460, i64 %idxprom507
  %464 = load ptr, ptr %b.addr, align 8
  %465 = load i32, ptr %k, align 4
  %add509 = add nsw i32 %465, 1
  %466 = load i32, ptr %b_dim1, align 4
  %add510 = add nsw i32 %add509, %466
  %idxprom511 = sext i32 %add510 to i64
  %arrayidx512 = getelementptr inbounds %struct.doublecomplex, ptr %464, i64 %idxprom511
  %467 = load ptr, ptr %ldb.addr, align 8
  %468 = load ptr, ptr %b.addr, align 8
  %469 = load i32, ptr %k, align 4
  %add513 = add nsw i32 %469, 2
  %470 = load i32, ptr %b_dim1, align 4
  %add514 = add nsw i32 %add513, %470
  %idxprom515 = sext i32 %add514 to i64
  %arrayidx516 = getelementptr inbounds %struct.doublecomplex, ptr %468, i64 %idxprom515
  %471 = load ptr, ptr %ldb.addr, align 8
  %call517 = call i32 @zgeru_(ptr noundef %i__1, ptr noundef %459, ptr noundef %z__1, ptr noundef %arrayidx508, ptr noundef @c__1, ptr noundef %arrayidx512, ptr noundef %467, ptr noundef %arrayidx516, ptr noundef %471)
  br label %if.end518

if.end518:                                        ; preds = %if.then481, %if.end478
  %472 = load i32, ptr %k, align 4
  %add519 = add nsw i32 %472, 1
  %473 = load i32, ptr %k, align 4
  %474 = load i32, ptr %a_dim1, align 4
  %mul520 = mul nsw i32 %473, %474
  %add521 = add nsw i32 %add519, %mul520
  store i32 %add521, ptr %i__1, align 4
  %475 = load ptr, ptr %a.addr, align 8
  %476 = load i32, ptr %i__1, align 4
  %idxprom522 = sext i32 %476 to i64
  %arrayidx523 = getelementptr inbounds %struct.doublecomplex, ptr %475, i64 %idxprom522
  %r524 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx523, i32 0, i32 0
  %477 = load double, ptr %r524, align 8
  %r525 = getelementptr inbounds %struct.doublecomplex, ptr %akm1k, i32 0, i32 0
  store double %477, ptr %r525, align 8
  %478 = load ptr, ptr %a.addr, align 8
  %479 = load i32, ptr %i__1, align 4
  %idxprom526 = sext i32 %479 to i64
  %arrayidx527 = getelementptr inbounds %struct.doublecomplex, ptr %478, i64 %idxprom526
  %i528 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx527, i32 0, i32 1
  %480 = load double, ptr %i528, align 8
  %i529 = getelementptr inbounds %struct.doublecomplex, ptr %akm1k, i32 0, i32 1
  store double %480, ptr %i529, align 8
  call void @d_cnjg(ptr noundef %z__2, ptr noundef %akm1k)
  %481 = load ptr, ptr %a.addr, align 8
  %482 = load i32, ptr %k, align 4
  %483 = load i32, ptr %k, align 4
  %484 = load i32, ptr %a_dim1, align 4
  %mul530 = mul nsw i32 %483, %484
  %add531 = add nsw i32 %482, %mul530
  %idxprom532 = sext i32 %add531 to i64
  %arrayidx533 = getelementptr inbounds %struct.doublecomplex, ptr %481, i64 %idxprom532
  call void @z_div(ptr noundef %z__1, ptr noundef %arrayidx533, ptr noundef %z__2)
  %r534 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %485 = load double, ptr %r534, align 8
  %r535 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 0
  store double %485, ptr %r535, align 8
  %i536 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %486 = load double, ptr %i536, align 8
  %i537 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 1
  store double %486, ptr %i537, align 8
  %487 = load ptr, ptr %a.addr, align 8
  %488 = load i32, ptr %k, align 4
  %add538 = add nsw i32 %488, 1
  %489 = load i32, ptr %k, align 4
  %add539 = add nsw i32 %489, 1
  %490 = load i32, ptr %a_dim1, align 4
  %mul540 = mul nsw i32 %add539, %490
  %add541 = add nsw i32 %add538, %mul540
  %idxprom542 = sext i32 %add541 to i64
  %arrayidx543 = getelementptr inbounds %struct.doublecomplex, ptr %487, i64 %idxprom542
  call void @z_div(ptr noundef %z__1, ptr noundef %arrayidx543, ptr noundef %akm1k)
  %r544 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %491 = load double, ptr %r544, align 8
  %r545 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 0
  store double %491, ptr %r545, align 8
  %i546 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %492 = load double, ptr %i546, align 8
  %i547 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 1
  store double %492, ptr %i547, align 8
  %r548 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 0
  %493 = load double, ptr %r548, align 8
  %r549 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 0
  %494 = load double, ptr %r549, align 8
  %i551 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 1
  %495 = load double, ptr %i551, align 8
  %i552 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 1
  %496 = load double, ptr %i552, align 8
  %mul553 = fmul double %495, %496
  %neg554 = fneg double %mul553
  %497 = call double @llvm.fmuladd.f64(double %493, double %494, double %neg554)
  %r555 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %497, ptr %r555, align 8
  %r556 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 0
  %498 = load double, ptr %r556, align 8
  %i557 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 1
  %499 = load double, ptr %i557, align 8
  %i559 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 1
  %500 = load double, ptr %i559, align 8
  %r560 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 0
  %501 = load double, ptr %r560, align 8
  %mul561 = fmul double %500, %501
  %502 = call double @llvm.fmuladd.f64(double %498, double %499, double %mul561)
  %i562 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %502, ptr %i562, align 8
  %r563 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  %503 = load double, ptr %r563, align 8
  %sub564 = fsub double %503, 1.000000e+00
  %r565 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %sub564, ptr %r565, align 8
  %i566 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  %504 = load double, ptr %i566, align 8
  %sub567 = fsub double %504, 0.000000e+00
  %i568 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %sub567, ptr %i568, align 8
  %r569 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %505 = load double, ptr %r569, align 8
  %r570 = getelementptr inbounds %struct.doublecomplex, ptr %denom, i32 0, i32 0
  store double %505, ptr %r570, align 8
  %i571 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %506 = load double, ptr %i571, align 8
  %i572 = getelementptr inbounds %struct.doublecomplex, ptr %denom, i32 0, i32 1
  store double %506, ptr %i572, align 8
  %507 = load ptr, ptr %nrhs.addr, align 8
  %508 = load i32, ptr %507, align 4
  store i32 %508, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond573

for.cond573:                                      ; preds = %for.inc660, %if.end518
  %509 = load i32, ptr %j, align 4
  %510 = load i32, ptr %i__1, align 4
  %cmp574 = icmp sle i32 %509, %510
  br i1 %cmp574, label %for.body575, label %for.end662

for.body575:                                      ; preds = %for.cond573
  call void @d_cnjg(ptr noundef %z__2, ptr noundef %akm1k)
  %511 = load ptr, ptr %b.addr, align 8
  %512 = load i32, ptr %k, align 4
  %513 = load i32, ptr %j, align 4
  %514 = load i32, ptr %b_dim1, align 4
  %mul576 = mul nsw i32 %513, %514
  %add577 = add nsw i32 %512, %mul576
  %idxprom578 = sext i32 %add577 to i64
  %arrayidx579 = getelementptr inbounds %struct.doublecomplex, ptr %511, i64 %idxprom578
  call void @z_div(ptr noundef %z__1, ptr noundef %arrayidx579, ptr noundef %z__2)
  %r580 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %515 = load double, ptr %r580, align 8
  %r581 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 0
  store double %515, ptr %r581, align 8
  %i582 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %516 = load double, ptr %i582, align 8
  %i583 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 1
  store double %516, ptr %i583, align 8
  %517 = load ptr, ptr %b.addr, align 8
  %518 = load i32, ptr %k, align 4
  %add584 = add nsw i32 %518, 1
  %519 = load i32, ptr %j, align 4
  %520 = load i32, ptr %b_dim1, align 4
  %mul585 = mul nsw i32 %519, %520
  %add586 = add nsw i32 %add584, %mul585
  %idxprom587 = sext i32 %add586 to i64
  %arrayidx588 = getelementptr inbounds %struct.doublecomplex, ptr %517, i64 %idxprom587
  call void @z_div(ptr noundef %z__1, ptr noundef %arrayidx588, ptr noundef %akm1k)
  %r589 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %521 = load double, ptr %r589, align 8
  %r590 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 0
  store double %521, ptr %r590, align 8
  %i591 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %522 = load double, ptr %i591, align 8
  %i592 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 1
  store double %522, ptr %i592, align 8
  %523 = load i32, ptr %k, align 4
  %524 = load i32, ptr %j, align 4
  %525 = load i32, ptr %b_dim1, align 4
  %mul593 = mul nsw i32 %524, %525
  %add594 = add nsw i32 %523, %mul593
  store i32 %add594, ptr %i__2, align 4
  %r595 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 0
  %526 = load double, ptr %r595, align 8
  %r596 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 0
  %527 = load double, ptr %r596, align 8
  %i598 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 1
  %528 = load double, ptr %i598, align 8
  %i599 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 1
  %529 = load double, ptr %i599, align 8
  %mul600 = fmul double %528, %529
  %neg601 = fneg double %mul600
  %530 = call double @llvm.fmuladd.f64(double %526, double %527, double %neg601)
  %r602 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  store double %530, ptr %r602, align 8
  %r603 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 0
  %531 = load double, ptr %r603, align 8
  %i604 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 1
  %532 = load double, ptr %i604, align 8
  %i606 = getelementptr inbounds %struct.doublecomplex, ptr %ak, i32 0, i32 1
  %533 = load double, ptr %i606, align 8
  %r607 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 0
  %534 = load double, ptr %r607, align 8
  %mul608 = fmul double %533, %534
  %535 = call double @llvm.fmuladd.f64(double %531, double %532, double %mul608)
  %i609 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  store double %535, ptr %i609, align 8
  %r610 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  %536 = load double, ptr %r610, align 8
  %r611 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 0
  %537 = load double, ptr %r611, align 8
  %sub612 = fsub double %536, %537
  %r613 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %sub612, ptr %r613, align 8
  %i614 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  %538 = load double, ptr %i614, align 8
  %i615 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 1
  %539 = load double, ptr %i615, align 8
  %sub616 = fsub double %538, %539
  %i617 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %sub616, ptr %i617, align 8
  call void @z_div(ptr noundef %z__1, ptr noundef %z__2, ptr noundef %denom)
  %r618 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %540 = load double, ptr %r618, align 8
  %541 = load ptr, ptr %b.addr, align 8
  %542 = load i32, ptr %i__2, align 4
  %idxprom619 = sext i32 %542 to i64
  %arrayidx620 = getelementptr inbounds %struct.doublecomplex, ptr %541, i64 %idxprom619
  %r621 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx620, i32 0, i32 0
  store double %540, ptr %r621, align 8
  %i622 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %543 = load double, ptr %i622, align 8
  %544 = load ptr, ptr %b.addr, align 8
  %545 = load i32, ptr %i__2, align 4
  %idxprom623 = sext i32 %545 to i64
  %arrayidx624 = getelementptr inbounds %struct.doublecomplex, ptr %544, i64 %idxprom623
  %i625 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx624, i32 0, i32 1
  store double %543, ptr %i625, align 8
  %546 = load i32, ptr %k, align 4
  %add626 = add nsw i32 %546, 1
  %547 = load i32, ptr %j, align 4
  %548 = load i32, ptr %b_dim1, align 4
  %mul627 = mul nsw i32 %547, %548
  %add628 = add nsw i32 %add626, %mul627
  store i32 %add628, ptr %i__2, align 4
  %r629 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 0
  %549 = load double, ptr %r629, align 8
  %r630 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 0
  %550 = load double, ptr %r630, align 8
  %i632 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 1
  %551 = load double, ptr %i632, align 8
  %i633 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 1
  %552 = load double, ptr %i633, align 8
  %mul634 = fmul double %551, %552
  %neg635 = fneg double %mul634
  %553 = call double @llvm.fmuladd.f64(double %549, double %550, double %neg635)
  %r636 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  store double %553, ptr %r636, align 8
  %r637 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 0
  %554 = load double, ptr %r637, align 8
  %i638 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 1
  %555 = load double, ptr %i638, align 8
  %i640 = getelementptr inbounds %struct.doublecomplex, ptr %akm1, i32 0, i32 1
  %556 = load double, ptr %i640, align 8
  %r641 = getelementptr inbounds %struct.doublecomplex, ptr %bk, i32 0, i32 0
  %557 = load double, ptr %r641, align 8
  %mul642 = fmul double %556, %557
  %558 = call double @llvm.fmuladd.f64(double %554, double %555, double %mul642)
  %i643 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  store double %558, ptr %i643, align 8
  %r644 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 0
  %559 = load double, ptr %r644, align 8
  %r645 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 0
  %560 = load double, ptr %r645, align 8
  %sub646 = fsub double %559, %560
  %r647 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 0
  store double %sub646, ptr %r647, align 8
  %i648 = getelementptr inbounds %struct.doublecomplex, ptr %z__3, i32 0, i32 1
  %561 = load double, ptr %i648, align 8
  %i649 = getelementptr inbounds %struct.doublecomplex, ptr %bkm1, i32 0, i32 1
  %562 = load double, ptr %i649, align 8
  %sub650 = fsub double %561, %562
  %i651 = getelementptr inbounds %struct.doublecomplex, ptr %z__2, i32 0, i32 1
  store double %sub650, ptr %i651, align 8
  call void @z_div(ptr noundef %z__1, ptr noundef %z__2, ptr noundef %denom)
  %r652 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %563 = load double, ptr %r652, align 8
  %564 = load ptr, ptr %b.addr, align 8
  %565 = load i32, ptr %i__2, align 4
  %idxprom653 = sext i32 %565 to i64
  %arrayidx654 = getelementptr inbounds %struct.doublecomplex, ptr %564, i64 %idxprom653
  %r655 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx654, i32 0, i32 0
  store double %563, ptr %r655, align 8
  %i656 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %566 = load double, ptr %i656, align 8
  %567 = load ptr, ptr %b.addr, align 8
  %568 = load i32, ptr %i__2, align 4
  %idxprom657 = sext i32 %568 to i64
  %arrayidx658 = getelementptr inbounds %struct.doublecomplex, ptr %567, i64 %idxprom657
  %i659 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx658, i32 0, i32 1
  store double %566, ptr %i659, align 8
  br label %for.inc660

for.inc660:                                       ; preds = %for.body575
  %569 = load i32, ptr %j, align 4
  %inc661 = add nsw i32 %569, 1
  store i32 %inc661, ptr %j, align 4
  br label %for.cond573, !llvm.loop !7

for.end662:                                       ; preds = %for.cond573
  %570 = load i32, ptr %k, align 4
  %add663 = add nsw i32 %570, 2
  store i32 %add663, ptr %k, align 4
  br label %if.end664

if.end664:                                        ; preds = %for.end662, %if.end437
  br label %L60

L80:                                              ; preds = %if.then401
  %571 = load ptr, ptr %n.addr, align 8
  %572 = load i32, ptr %571, align 4
  store i32 %572, ptr %k, align 4
  br label %L90

L90:                                              ; preds = %if.end798, %L80
  %573 = load i32, ptr %k, align 4
  %cmp665 = icmp slt i32 %573, 1
  br i1 %cmp665, label %if.then666, label %if.end667

if.then666:                                       ; preds = %L90
  br label %L100

if.end667:                                        ; preds = %L90
  %574 = load ptr, ptr %ipiv.addr, align 8
  %575 = load i32, ptr %k, align 4
  %idxprom668 = sext i32 %575 to i64
  %arrayidx669 = getelementptr inbounds i32, ptr %574, i64 %idxprom668
  %576 = load i32, ptr %arrayidx669, align 4
  %cmp670 = icmp sgt i32 %576, 0
  br i1 %cmp670, label %if.then671, label %if.else712

if.then671:                                       ; preds = %if.end667
  %577 = load i32, ptr %k, align 4
  %578 = load ptr, ptr %n.addr, align 8
  %579 = load i32, ptr %578, align 4
  %cmp672 = icmp slt i32 %577, %579
  br i1 %cmp672, label %if.then673, label %if.end698

if.then673:                                       ; preds = %if.then671
  %580 = load ptr, ptr %nrhs.addr, align 8
  %581 = load ptr, ptr %b.addr, align 8
  %582 = load i32, ptr %k, align 4
  %583 = load i32, ptr %b_dim1, align 4
  %add674 = add nsw i32 %582, %583
  %idxprom675 = sext i32 %add674 to i64
  %arrayidx676 = getelementptr inbounds %struct.doublecomplex, ptr %581, i64 %idxprom675
  %584 = load ptr, ptr %ldb.addr, align 8
  %call677 = call i32 @zlacgv_(ptr noundef %580, ptr noundef %arrayidx676, ptr noundef %584)
  %585 = load ptr, ptr %n.addr, align 8
  %586 = load i32, ptr %585, align 4
  %587 = load i32, ptr %k, align 4
  %sub678 = sub nsw i32 %586, %587
  store i32 %sub678, ptr %i__1, align 4
  %r679 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r679, align 8
  %i680 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i680, align 8
  %588 = load ptr, ptr %nrhs.addr, align 8
  %589 = load ptr, ptr %b.addr, align 8
  %590 = load i32, ptr %k, align 4
  %add681 = add nsw i32 %590, 1
  %591 = load i32, ptr %b_dim1, align 4
  %add682 = add nsw i32 %add681, %591
  %idxprom683 = sext i32 %add682 to i64
  %arrayidx684 = getelementptr inbounds %struct.doublecomplex, ptr %589, i64 %idxprom683
  %592 = load ptr, ptr %ldb.addr, align 8
  %593 = load ptr, ptr %a.addr, align 8
  %594 = load i32, ptr %k, align 4
  %add685 = add nsw i32 %594, 1
  %595 = load i32, ptr %k, align 4
  %596 = load i32, ptr %a_dim1, align 4
  %mul686 = mul nsw i32 %595, %596
  %add687 = add nsw i32 %add685, %mul686
  %idxprom688 = sext i32 %add687 to i64
  %arrayidx689 = getelementptr inbounds %struct.doublecomplex, ptr %593, i64 %idxprom688
  %597 = load ptr, ptr %b.addr, align 8
  %598 = load i32, ptr %k, align 4
  %599 = load i32, ptr %b_dim1, align 4
  %add690 = add nsw i32 %598, %599
  %idxprom691 = sext i32 %add690 to i64
  %arrayidx692 = getelementptr inbounds %struct.doublecomplex, ptr %597, i64 %idxprom691
  %600 = load ptr, ptr %ldb.addr, align 8
  %call693 = call i32 @zgemv_(ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %588, ptr noundef %z__1, ptr noundef %arrayidx684, ptr noundef %592, ptr noundef %arrayidx689, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx692, ptr noundef %600)
  %601 = load ptr, ptr %nrhs.addr, align 8
  %602 = load ptr, ptr %b.addr, align 8
  %603 = load i32, ptr %k, align 4
  %604 = load i32, ptr %b_dim1, align 4
  %add694 = add nsw i32 %603, %604
  %idxprom695 = sext i32 %add694 to i64
  %arrayidx696 = getelementptr inbounds %struct.doublecomplex, ptr %602, i64 %idxprom695
  %605 = load ptr, ptr %ldb.addr, align 8
  %call697 = call i32 @zlacgv_(ptr noundef %601, ptr noundef %arrayidx696, ptr noundef %605)
  br label %if.end698

if.end698:                                        ; preds = %if.then673, %if.then671
  %606 = load ptr, ptr %ipiv.addr, align 8
  %607 = load i32, ptr %k, align 4
  %idxprom699 = sext i32 %607 to i64
  %arrayidx700 = getelementptr inbounds i32, ptr %606, i64 %idxprom699
  %608 = load i32, ptr %arrayidx700, align 4
  store i32 %608, ptr %kp, align 4
  %609 = load i32, ptr %kp, align 4
  %610 = load i32, ptr %k, align 4
  %cmp701 = icmp ne i32 %609, %610
  br i1 %cmp701, label %if.then702, label %if.end710

if.then702:                                       ; preds = %if.end698
  %611 = load ptr, ptr %nrhs.addr, align 8
  %612 = load ptr, ptr %b.addr, align 8
  %613 = load i32, ptr %k, align 4
  %614 = load i32, ptr %b_dim1, align 4
  %add703 = add nsw i32 %613, %614
  %idxprom704 = sext i32 %add703 to i64
  %arrayidx705 = getelementptr inbounds %struct.doublecomplex, ptr %612, i64 %idxprom704
  %615 = load ptr, ptr %ldb.addr, align 8
  %616 = load ptr, ptr %b.addr, align 8
  %617 = load i32, ptr %kp, align 4
  %618 = load i32, ptr %b_dim1, align 4
  %add706 = add nsw i32 %617, %618
  %idxprom707 = sext i32 %add706 to i64
  %arrayidx708 = getelementptr inbounds %struct.doublecomplex, ptr %616, i64 %idxprom707
  %619 = load ptr, ptr %ldb.addr, align 8
  %call709 = call i32 @zswap_(ptr noundef %611, ptr noundef %arrayidx705, ptr noundef %615, ptr noundef %arrayidx708, ptr noundef %619)
  br label %if.end710

if.end710:                                        ; preds = %if.then702, %if.end698
  %620 = load i32, ptr %k, align 4
  %dec711 = add nsw i32 %620, -1
  store i32 %dec711, ptr %k, align 4
  br label %if.end798

if.else712:                                       ; preds = %if.end667
  %621 = load i32, ptr %k, align 4
  %622 = load ptr, ptr %n.addr, align 8
  %623 = load i32, ptr %622, align 4
  %cmp713 = icmp slt i32 %621, %623
  br i1 %cmp713, label %if.then714, label %if.end767

if.then714:                                       ; preds = %if.else712
  %624 = load ptr, ptr %nrhs.addr, align 8
  %625 = load ptr, ptr %b.addr, align 8
  %626 = load i32, ptr %k, align 4
  %627 = load i32, ptr %b_dim1, align 4
  %add715 = add nsw i32 %626, %627
  %idxprom716 = sext i32 %add715 to i64
  %arrayidx717 = getelementptr inbounds %struct.doublecomplex, ptr %625, i64 %idxprom716
  %628 = load ptr, ptr %ldb.addr, align 8
  %call718 = call i32 @zlacgv_(ptr noundef %624, ptr noundef %arrayidx717, ptr noundef %628)
  %629 = load ptr, ptr %n.addr, align 8
  %630 = load i32, ptr %629, align 4
  %631 = load i32, ptr %k, align 4
  %sub719 = sub nsw i32 %630, %631
  store i32 %sub719, ptr %i__1, align 4
  %r720 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r720, align 8
  %i721 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i721, align 8
  %632 = load ptr, ptr %nrhs.addr, align 8
  %633 = load ptr, ptr %b.addr, align 8
  %634 = load i32, ptr %k, align 4
  %add722 = add nsw i32 %634, 1
  %635 = load i32, ptr %b_dim1, align 4
  %add723 = add nsw i32 %add722, %635
  %idxprom724 = sext i32 %add723 to i64
  %arrayidx725 = getelementptr inbounds %struct.doublecomplex, ptr %633, i64 %idxprom724
  %636 = load ptr, ptr %ldb.addr, align 8
  %637 = load ptr, ptr %a.addr, align 8
  %638 = load i32, ptr %k, align 4
  %add726 = add nsw i32 %638, 1
  %639 = load i32, ptr %k, align 4
  %640 = load i32, ptr %a_dim1, align 4
  %mul727 = mul nsw i32 %639, %640
  %add728 = add nsw i32 %add726, %mul727
  %idxprom729 = sext i32 %add728 to i64
  %arrayidx730 = getelementptr inbounds %struct.doublecomplex, ptr %637, i64 %idxprom729
  %641 = load ptr, ptr %b.addr, align 8
  %642 = load i32, ptr %k, align 4
  %643 = load i32, ptr %b_dim1, align 4
  %add731 = add nsw i32 %642, %643
  %idxprom732 = sext i32 %add731 to i64
  %arrayidx733 = getelementptr inbounds %struct.doublecomplex, ptr %641, i64 %idxprom732
  %644 = load ptr, ptr %ldb.addr, align 8
  %call734 = call i32 @zgemv_(ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %632, ptr noundef %z__1, ptr noundef %arrayidx725, ptr noundef %636, ptr noundef %arrayidx730, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx733, ptr noundef %644)
  %645 = load ptr, ptr %nrhs.addr, align 8
  %646 = load ptr, ptr %b.addr, align 8
  %647 = load i32, ptr %k, align 4
  %648 = load i32, ptr %b_dim1, align 4
  %add735 = add nsw i32 %647, %648
  %idxprom736 = sext i32 %add735 to i64
  %arrayidx737 = getelementptr inbounds %struct.doublecomplex, ptr %646, i64 %idxprom736
  %649 = load ptr, ptr %ldb.addr, align 8
  %call738 = call i32 @zlacgv_(ptr noundef %645, ptr noundef %arrayidx737, ptr noundef %649)
  %650 = load ptr, ptr %nrhs.addr, align 8
  %651 = load ptr, ptr %b.addr, align 8
  %652 = load i32, ptr %k, align 4
  %sub739 = sub nsw i32 %652, 1
  %653 = load i32, ptr %b_dim1, align 4
  %add740 = add nsw i32 %sub739, %653
  %idxprom741 = sext i32 %add740 to i64
  %arrayidx742 = getelementptr inbounds %struct.doublecomplex, ptr %651, i64 %idxprom741
  %654 = load ptr, ptr %ldb.addr, align 8
  %call743 = call i32 @zlacgv_(ptr noundef %650, ptr noundef %arrayidx742, ptr noundef %654)
  %655 = load ptr, ptr %n.addr, align 8
  %656 = load i32, ptr %655, align 4
  %657 = load i32, ptr %k, align 4
  %sub744 = sub nsw i32 %656, %657
  store i32 %sub744, ptr %i__1, align 4
  %r745 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r745, align 8
  %i746 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i746, align 8
  %658 = load ptr, ptr %nrhs.addr, align 8
  %659 = load ptr, ptr %b.addr, align 8
  %660 = load i32, ptr %k, align 4
  %add747 = add nsw i32 %660, 1
  %661 = load i32, ptr %b_dim1, align 4
  %add748 = add nsw i32 %add747, %661
  %idxprom749 = sext i32 %add748 to i64
  %arrayidx750 = getelementptr inbounds %struct.doublecomplex, ptr %659, i64 %idxprom749
  %662 = load ptr, ptr %ldb.addr, align 8
  %663 = load ptr, ptr %a.addr, align 8
  %664 = load i32, ptr %k, align 4
  %add751 = add nsw i32 %664, 1
  %665 = load i32, ptr %k, align 4
  %sub752 = sub nsw i32 %665, 1
  %666 = load i32, ptr %a_dim1, align 4
  %mul753 = mul nsw i32 %sub752, %666
  %add754 = add nsw i32 %add751, %mul753
  %idxprom755 = sext i32 %add754 to i64
  %arrayidx756 = getelementptr inbounds %struct.doublecomplex, ptr %663, i64 %idxprom755
  %667 = load ptr, ptr %b.addr, align 8
  %668 = load i32, ptr %k, align 4
  %sub757 = sub nsw i32 %668, 1
  %669 = load i32, ptr %b_dim1, align 4
  %add758 = add nsw i32 %sub757, %669
  %idxprom759 = sext i32 %add758 to i64
  %arrayidx760 = getelementptr inbounds %struct.doublecomplex, ptr %667, i64 %idxprom759
  %670 = load ptr, ptr %ldb.addr, align 8
  %call761 = call i32 @zgemv_(ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %658, ptr noundef %z__1, ptr noundef %arrayidx750, ptr noundef %662, ptr noundef %arrayidx756, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx760, ptr noundef %670)
  %671 = load ptr, ptr %nrhs.addr, align 8
  %672 = load ptr, ptr %b.addr, align 8
  %673 = load i32, ptr %k, align 4
  %sub762 = sub nsw i32 %673, 1
  %674 = load i32, ptr %b_dim1, align 4
  %add763 = add nsw i32 %sub762, %674
  %idxprom764 = sext i32 %add763 to i64
  %arrayidx765 = getelementptr inbounds %struct.doublecomplex, ptr %672, i64 %idxprom764
  %675 = load ptr, ptr %ldb.addr, align 8
  %call766 = call i32 @zlacgv_(ptr noundef %671, ptr noundef %arrayidx765, ptr noundef %675)
  br label %if.end767

if.end767:                                        ; preds = %if.then714, %if.else712
  %676 = load ptr, ptr %ipiv.addr, align 8
  %677 = load i32, ptr %k, align 4
  %idxprom768 = sext i32 %677 to i64
  %arrayidx769 = getelementptr inbounds i32, ptr %676, i64 %idxprom768
  %678 = load i32, ptr %arrayidx769, align 4
  %sub770 = sub nsw i32 0, %678
  store i32 %sub770, ptr %kp, align 4
  %679 = load i32, ptr %kp, align 4
  %680 = load i32, ptr %k, align 4
  %cmp771 = icmp ne i32 %679, %680
  br i1 %cmp771, label %if.then772, label %if.end780

if.then772:                                       ; preds = %if.end767
  %681 = load ptr, ptr %nrhs.addr, align 8
  %682 = load ptr, ptr %b.addr, align 8
  %683 = load i32, ptr %k, align 4
  %684 = load i32, ptr %b_dim1, align 4
  %add773 = add nsw i32 %683, %684
  %idxprom774 = sext i32 %add773 to i64
  %arrayidx775 = getelementptr inbounds %struct.doublecomplex, ptr %682, i64 %idxprom774
  %685 = load ptr, ptr %ldb.addr, align 8
  %686 = load ptr, ptr %b.addr, align 8
  %687 = load i32, ptr %kp, align 4
  %688 = load i32, ptr %b_dim1, align 4
  %add776 = add nsw i32 %687, %688
  %idxprom777 = sext i32 %add776 to i64
  %arrayidx778 = getelementptr inbounds %struct.doublecomplex, ptr %686, i64 %idxprom777
  %689 = load ptr, ptr %ldb.addr, align 8
  %call779 = call i32 @zswap_(ptr noundef %681, ptr noundef %arrayidx775, ptr noundef %685, ptr noundef %arrayidx778, ptr noundef %689)
  br label %if.end780

if.end780:                                        ; preds = %if.then772, %if.end767
  %690 = load ptr, ptr %ipiv.addr, align 8
  %691 = load i32, ptr %k, align 4
  %sub781 = sub nsw i32 %691, 1
  %idxprom782 = sext i32 %sub781 to i64
  %arrayidx783 = getelementptr inbounds i32, ptr %690, i64 %idxprom782
  %692 = load i32, ptr %arrayidx783, align 4
  %sub784 = sub nsw i32 0, %692
  store i32 %sub784, ptr %kp, align 4
  %693 = load i32, ptr %kp, align 4
  %694 = load i32, ptr %k, align 4
  %sub785 = sub nsw i32 %694, 1
  %cmp786 = icmp ne i32 %693, %sub785
  br i1 %cmp786, label %if.then787, label %if.end796

if.then787:                                       ; preds = %if.end780
  %695 = load ptr, ptr %nrhs.addr, align 8
  %696 = load ptr, ptr %b.addr, align 8
  %697 = load i32, ptr %k, align 4
  %sub788 = sub nsw i32 %697, 1
  %698 = load i32, ptr %b_dim1, align 4
  %add789 = add nsw i32 %sub788, %698
  %idxprom790 = sext i32 %add789 to i64
  %arrayidx791 = getelementptr inbounds %struct.doublecomplex, ptr %696, i64 %idxprom790
  %699 = load ptr, ptr %ldb.addr, align 8
  %700 = load ptr, ptr %b.addr, align 8
  %701 = load i32, ptr %kp, align 4
  %702 = load i32, ptr %b_dim1, align 4
  %add792 = add nsw i32 %701, %702
  %idxprom793 = sext i32 %add792 to i64
  %arrayidx794 = getelementptr inbounds %struct.doublecomplex, ptr %700, i64 %idxprom793
  %703 = load ptr, ptr %ldb.addr, align 8
  %call795 = call i32 @zswap_(ptr noundef %695, ptr noundef %arrayidx791, ptr noundef %699, ptr noundef %arrayidx794, ptr noundef %703)
  br label %if.end796

if.end796:                                        ; preds = %if.then787, %if.end780
  %704 = load i32, ptr %k, align 4
  %add797 = add nsw i32 %704, -2
  store i32 %add797, ptr %k, align 4
  br label %if.end798

if.end798:                                        ; preds = %if.end796, %if.end710
  br label %L90

L100:                                             ; preds = %if.then666
  br label %if.end799

if.end799:                                        ; preds = %L100, %L50
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end799, %if.then33, %if.then28
  %705 = load i32, ptr %retval, align 4
  ret i32 %705
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @zswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgeru_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zdscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @z_div(ptr noundef, ptr noundef, ptr noundef) #1

declare void @d_cnjg(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @zlacgv_(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

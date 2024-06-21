; ModuleID = 'samples/170.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zunghr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@c__1 = internal global i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"ZUNGQR\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ZUNGHR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zunghr_(ptr noundef %n, ptr noundef %ilo, ptr noundef %ihi, ptr noundef %a, ptr noundef %lda, ptr noundef %tau, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %ilo.addr = alloca ptr, align 8
  %ihi.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %nb = alloca i32, align 4
  %nh = alloca i32, align 4
  %iinfo = alloca i32, align 4
  %lwkopt = alloca i32, align 4
  %lquery = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  store ptr %ilo, ptr %ilo.addr, align 8
  store ptr %ihi, ptr %ihi.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %tau, ptr %tau.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %lwork, ptr %lwork.addr, align 8
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
  %5 = load ptr, ptr %tau.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.doublecomplex, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %tau.addr, align 8
  %6 = load ptr, ptr %work.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.doublecomplex, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %work.addr, align 8
  %7 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %ihi.addr, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %ilo.addr, align 8
  %11 = load i32, ptr %10, align 4
  %sub = sub nsw i32 %9, %11
  store i32 %sub, ptr %nh, align 4
  %12 = load ptr, ptr %lwork.addr, align 8
  %13 = load i32, ptr %12, align 4
  %cmp = icmp eq i32 %13, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4
  %14 = load ptr, ptr %n.addr, align 8
  %15 = load i32, ptr %14, align 4
  %cmp2 = icmp slt i32 %15, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %16, align 4
  br label %if.end47

if.else:                                          ; preds = %entry
  %17 = load ptr, ptr %ilo.addr, align 8
  %18 = load i32, ptr %17, align 4
  %cmp4 = icmp slt i32 %18, 1
  br i1 %cmp4, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %19 = load ptr, ptr %ilo.addr, align 8
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %n.addr, align 8
  %22 = load i32, ptr %21, align 4
  %cmp6 = icmp sge i32 1, %22
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %23 = load ptr, ptr %n.addr, align 8
  %24 = load i32, ptr %23, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %24, %cond.false ]
  %cmp8 = icmp sgt i32 %20, %cond
  br i1 %cmp8, label %if.then10, label %if.else11

if.then10:                                        ; preds = %cond.end, %if.else
  %25 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %25, align 4
  br label %if.end46

if.else11:                                        ; preds = %cond.end
  %26 = load ptr, ptr %ihi.addr, align 8
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %ilo.addr, align 8
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %n.addr, align 8
  %31 = load i32, ptr %30, align 4
  %cmp12 = icmp sle i32 %29, %31
  br i1 %cmp12, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %if.else11
  %32 = load ptr, ptr %ilo.addr, align 8
  %33 = load i32, ptr %32, align 4
  br label %cond.end16

cond.false15:                                     ; preds = %if.else11
  %34 = load ptr, ptr %n.addr, align 8
  %35 = load i32, ptr %34, align 4
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.true14
  %cond17 = phi i32 [ %33, %cond.true14 ], [ %35, %cond.false15 ]
  %cmp18 = icmp slt i32 %27, %cond17
  br i1 %cmp18, label %if.then23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %cond.end16
  %36 = load ptr, ptr %ihi.addr, align 8
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %n.addr, align 8
  %39 = load i32, ptr %38, align 4
  %cmp21 = icmp sgt i32 %37, %39
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %lor.lhs.false20, %cond.end16
  %40 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %40, align 4
  br label %if.end45

if.else24:                                        ; preds = %lor.lhs.false20
  %41 = load ptr, ptr %lda.addr, align 8
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %n.addr, align 8
  %44 = load i32, ptr %43, align 4
  %cmp25 = icmp sge i32 1, %44
  br i1 %cmp25, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %if.else24
  br label %cond.end29

cond.false28:                                     ; preds = %if.else24
  %45 = load ptr, ptr %n.addr, align 8
  %46 = load i32, ptr %45, align 4
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %cond.true27
  %cond30 = phi i32 [ 1, %cond.true27 ], [ %46, %cond.false28 ]
  %cmp31 = icmp slt i32 %42, %cond30
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %cond.end29
  %47 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %47, align 4
  br label %if.end44

if.else34:                                        ; preds = %cond.end29
  %48 = load ptr, ptr %lwork.addr, align 8
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %nh, align 4
  %cmp35 = icmp sge i32 1, %50
  br i1 %cmp35, label %cond.true37, label %cond.false38

cond.true37:                                      ; preds = %if.else34
  br label %cond.end39

cond.false38:                                     ; preds = %if.else34
  %51 = load i32, ptr %nh, align 4
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %cond.true37
  %cond40 = phi i32 [ 1, %cond.true37 ], [ %51, %cond.false38 ]
  %cmp41 = icmp slt i32 %49, %cond40
  br i1 %cmp41, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end39
  %52 = load i32, ptr %lquery, align 4
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %if.end, label %if.then43

if.then43:                                        ; preds = %land.lhs.true
  %53 = load ptr, ptr %info.addr, align 8
  store i32 -8, ptr %53, align 4
  br label %if.end

if.end:                                           ; preds = %if.then43, %land.lhs.true, %cond.end39
  br label %if.end44

if.end44:                                         ; preds = %if.end, %if.then33
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then23
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then10
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then
  %54 = load ptr, ptr %info.addr, align 8
  %55 = load i32, ptr %54, align 4
  %cmp48 = icmp eq i32 %55, 0
  br i1 %cmp48, label %if.then50, label %if.end59

if.then50:                                        ; preds = %if.end47
  %call = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %nh, ptr noundef %nh, ptr noundef %nh, ptr noundef @c_n1)
  store i32 %call, ptr %nb, align 4
  %56 = load i32, ptr %nh, align 4
  %cmp51 = icmp sge i32 1, %56
  br i1 %cmp51, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %if.then50
  br label %cond.end55

cond.false54:                                     ; preds = %if.then50
  %57 = load i32, ptr %nh, align 4
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %cond.true53
  %cond56 = phi i32 [ 1, %cond.true53 ], [ %57, %cond.false54 ]
  %58 = load i32, ptr %nb, align 4
  %mul = mul nsw i32 %cond56, %58
  store i32 %mul, ptr %lwkopt, align 4
  %59 = load i32, ptr %lwkopt, align 4
  %conv57 = sitofp i32 %59 to double
  %60 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %60, i64 1
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  store double %conv57, ptr %r, align 8
  %61 = load ptr, ptr %work.addr, align 8
  %arrayidx58 = getelementptr inbounds %struct.doublecomplex, ptr %61, i64 1
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx58, i32 0, i32 1
  store double 0.000000e+00, ptr %i, align 8
  br label %if.end59

if.end59:                                         ; preds = %cond.end55, %if.end47
  %62 = load ptr, ptr %info.addr, align 8
  %63 = load i32, ptr %62, align 4
  %cmp60 = icmp ne i32 %63, 0
  br i1 %cmp60, label %if.then62, label %if.else65

if.then62:                                        ; preds = %if.end59
  %64 = load ptr, ptr %info.addr, align 8
  %65 = load i32, ptr %64, align 4
  %sub63 = sub nsw i32 0, %65
  store i32 %sub63, ptr %i__1, align 4
  %call64 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else65:                                        ; preds = %if.end59
  %66 = load i32, ptr %lquery, align 4
  %tobool66 = icmp ne i32 %66, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.else65
  store i32 0, ptr %retval, align 4
  br label %return

if.end68:                                         ; preds = %if.else65
  br label %if.end69

if.end69:                                         ; preds = %if.end68
  %67 = load ptr, ptr %n.addr, align 8
  %68 = load i32, ptr %67, align 4
  %cmp70 = icmp eq i32 %68, 0
  br i1 %cmp70, label %if.then72, label %if.end77

if.then72:                                        ; preds = %if.end69
  %69 = load ptr, ptr %work.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct.doublecomplex, ptr %69, i64 1
  %r74 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx73, i32 0, i32 0
  store double 1.000000e+00, ptr %r74, align 8
  %70 = load ptr, ptr %work.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.doublecomplex, ptr %70, i64 1
  %i76 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx75, i32 0, i32 1
  store double 0.000000e+00, ptr %i76, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end77:                                         ; preds = %if.end69
  %71 = load ptr, ptr %ilo.addr, align 8
  %72 = load i32, ptr %71, align 4
  %add78 = add nsw i32 %72, 1
  store i32 %add78, ptr %i__1, align 4
  %73 = load ptr, ptr %ihi.addr, align 8
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc134, %if.end77
  %75 = load i32, ptr %j, align 4
  %76 = load i32, ptr %i__1, align 4
  %cmp79 = icmp sge i32 %75, %76
  br i1 %cmp79, label %for.body, label %for.end135

for.body:                                         ; preds = %for.cond
  %77 = load i32, ptr %j, align 4
  %sub81 = sub nsw i32 %77, 1
  store i32 %sub81, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc, %for.body
  %78 = load i32, ptr %i__, align 4
  %79 = load i32, ptr %i__2, align 4
  %cmp83 = icmp sle i32 %78, %79
  br i1 %cmp83, label %for.body85, label %for.end

for.body85:                                       ; preds = %for.cond82
  %80 = load i32, ptr %i__, align 4
  %81 = load i32, ptr %j, align 4
  %82 = load i32, ptr %a_dim1, align 4
  %mul86 = mul nsw i32 %81, %82
  %add87 = add nsw i32 %80, %mul86
  store i32 %add87, ptr %i__3, align 4
  %83 = load ptr, ptr %a.addr, align 8
  %84 = load i32, ptr %i__3, align 4
  %idxprom = sext i32 %84 to i64
  %arrayidx88 = getelementptr inbounds %struct.doublecomplex, ptr %83, i64 %idxprom
  %r89 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx88, i32 0, i32 0
  store double 0.000000e+00, ptr %r89, align 8
  %85 = load ptr, ptr %a.addr, align 8
  %86 = load i32, ptr %i__3, align 4
  %idxprom90 = sext i32 %86 to i64
  %arrayidx91 = getelementptr inbounds %struct.doublecomplex, ptr %85, i64 %idxprom90
  %i92 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx91, i32 0, i32 1
  store double 0.000000e+00, ptr %i92, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body85
  %87 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond82, !llvm.loop !5

for.end:                                          ; preds = %for.cond82
  %88 = load ptr, ptr %ihi.addr, align 8
  %89 = load i32, ptr %88, align 4
  store i32 %89, ptr %i__2, align 4
  %90 = load i32, ptr %j, align 4
  %add93 = add nsw i32 %90, 1
  store i32 %add93, ptr %i__, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc115, %for.end
  %91 = load i32, ptr %i__, align 4
  %92 = load i32, ptr %i__2, align 4
  %cmp95 = icmp sle i32 %91, %92
  br i1 %cmp95, label %for.body97, label %for.end117

for.body97:                                       ; preds = %for.cond94
  %93 = load i32, ptr %i__, align 4
  %94 = load i32, ptr %j, align 4
  %95 = load i32, ptr %a_dim1, align 4
  %mul98 = mul nsw i32 %94, %95
  %add99 = add nsw i32 %93, %mul98
  store i32 %add99, ptr %i__3, align 4
  %96 = load i32, ptr %i__, align 4
  %97 = load i32, ptr %j, align 4
  %sub100 = sub nsw i32 %97, 1
  %98 = load i32, ptr %a_dim1, align 4
  %mul101 = mul nsw i32 %sub100, %98
  %add102 = add nsw i32 %96, %mul101
  store i32 %add102, ptr %i__4, align 4
  %99 = load ptr, ptr %a.addr, align 8
  %100 = load i32, ptr %i__4, align 4
  %idxprom103 = sext i32 %100 to i64
  %arrayidx104 = getelementptr inbounds %struct.doublecomplex, ptr %99, i64 %idxprom103
  %r105 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx104, i32 0, i32 0
  %101 = load double, ptr %r105, align 8
  %102 = load ptr, ptr %a.addr, align 8
  %103 = load i32, ptr %i__3, align 4
  %idxprom106 = sext i32 %103 to i64
  %arrayidx107 = getelementptr inbounds %struct.doublecomplex, ptr %102, i64 %idxprom106
  %r108 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx107, i32 0, i32 0
  store double %101, ptr %r108, align 8
  %104 = load ptr, ptr %a.addr, align 8
  %105 = load i32, ptr %i__4, align 4
  %idxprom109 = sext i32 %105 to i64
  %arrayidx110 = getelementptr inbounds %struct.doublecomplex, ptr %104, i64 %idxprom109
  %i111 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx110, i32 0, i32 1
  %106 = load double, ptr %i111, align 8
  %107 = load ptr, ptr %a.addr, align 8
  %108 = load i32, ptr %i__3, align 4
  %idxprom112 = sext i32 %108 to i64
  %arrayidx113 = getelementptr inbounds %struct.doublecomplex, ptr %107, i64 %idxprom112
  %i114 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx113, i32 0, i32 1
  store double %106, ptr %i114, align 8
  br label %for.inc115

for.inc115:                                       ; preds = %for.body97
  %109 = load i32, ptr %i__, align 4
  %inc116 = add nsw i32 %109, 1
  store i32 %inc116, ptr %i__, align 4
  br label %for.cond94, !llvm.loop !7

for.end117:                                       ; preds = %for.cond94
  %110 = load ptr, ptr %n.addr, align 8
  %111 = load i32, ptr %110, align 4
  store i32 %111, ptr %i__2, align 4
  %112 = load ptr, ptr %ihi.addr, align 8
  %113 = load i32, ptr %112, align 4
  %add118 = add nsw i32 %113, 1
  store i32 %add118, ptr %i__, align 4
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc131, %for.end117
  %114 = load i32, ptr %i__, align 4
  %115 = load i32, ptr %i__2, align 4
  %cmp120 = icmp sle i32 %114, %115
  br i1 %cmp120, label %for.body122, label %for.end133

for.body122:                                      ; preds = %for.cond119
  %116 = load i32, ptr %i__, align 4
  %117 = load i32, ptr %j, align 4
  %118 = load i32, ptr %a_dim1, align 4
  %mul123 = mul nsw i32 %117, %118
  %add124 = add nsw i32 %116, %mul123
  store i32 %add124, ptr %i__3, align 4
  %119 = load ptr, ptr %a.addr, align 8
  %120 = load i32, ptr %i__3, align 4
  %idxprom125 = sext i32 %120 to i64
  %arrayidx126 = getelementptr inbounds %struct.doublecomplex, ptr %119, i64 %idxprom125
  %r127 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx126, i32 0, i32 0
  store double 0.000000e+00, ptr %r127, align 8
  %121 = load ptr, ptr %a.addr, align 8
  %122 = load i32, ptr %i__3, align 4
  %idxprom128 = sext i32 %122 to i64
  %arrayidx129 = getelementptr inbounds %struct.doublecomplex, ptr %121, i64 %idxprom128
  %i130 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx129, i32 0, i32 1
  store double 0.000000e+00, ptr %i130, align 8
  br label %for.inc131

for.inc131:                                       ; preds = %for.body122
  %123 = load i32, ptr %i__, align 4
  %inc132 = add nsw i32 %123, 1
  store i32 %inc132, ptr %i__, align 4
  br label %for.cond119, !llvm.loop !8

for.end133:                                       ; preds = %for.cond119
  br label %for.inc134

for.inc134:                                       ; preds = %for.end133
  %124 = load i32, ptr %j, align 4
  %dec = add nsw i32 %124, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond, !llvm.loop !9

for.end135:                                       ; preds = %for.cond
  %125 = load ptr, ptr %ilo.addr, align 8
  %126 = load i32, ptr %125, align 4
  store i32 %126, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc163, %for.end135
  %127 = load i32, ptr %j, align 4
  %128 = load i32, ptr %i__1, align 4
  %cmp137 = icmp sle i32 %127, %128
  br i1 %cmp137, label %for.body139, label %for.end165

for.body139:                                      ; preds = %for.cond136
  %129 = load ptr, ptr %n.addr, align 8
  %130 = load i32, ptr %129, align 4
  store i32 %130, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond140

for.cond140:                                      ; preds = %for.inc152, %for.body139
  %131 = load i32, ptr %i__, align 4
  %132 = load i32, ptr %i__2, align 4
  %cmp141 = icmp sle i32 %131, %132
  br i1 %cmp141, label %for.body143, label %for.end154

for.body143:                                      ; preds = %for.cond140
  %133 = load i32, ptr %i__, align 4
  %134 = load i32, ptr %j, align 4
  %135 = load i32, ptr %a_dim1, align 4
  %mul144 = mul nsw i32 %134, %135
  %add145 = add nsw i32 %133, %mul144
  store i32 %add145, ptr %i__3, align 4
  %136 = load ptr, ptr %a.addr, align 8
  %137 = load i32, ptr %i__3, align 4
  %idxprom146 = sext i32 %137 to i64
  %arrayidx147 = getelementptr inbounds %struct.doublecomplex, ptr %136, i64 %idxprom146
  %r148 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx147, i32 0, i32 0
  store double 0.000000e+00, ptr %r148, align 8
  %138 = load ptr, ptr %a.addr, align 8
  %139 = load i32, ptr %i__3, align 4
  %idxprom149 = sext i32 %139 to i64
  %arrayidx150 = getelementptr inbounds %struct.doublecomplex, ptr %138, i64 %idxprom149
  %i151 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx150, i32 0, i32 1
  store double 0.000000e+00, ptr %i151, align 8
  br label %for.inc152

for.inc152:                                       ; preds = %for.body143
  %140 = load i32, ptr %i__, align 4
  %inc153 = add nsw i32 %140, 1
  store i32 %inc153, ptr %i__, align 4
  br label %for.cond140, !llvm.loop !10

for.end154:                                       ; preds = %for.cond140
  %141 = load i32, ptr %j, align 4
  %142 = load i32, ptr %j, align 4
  %143 = load i32, ptr %a_dim1, align 4
  %mul155 = mul nsw i32 %142, %143
  %add156 = add nsw i32 %141, %mul155
  store i32 %add156, ptr %i__2, align 4
  %144 = load ptr, ptr %a.addr, align 8
  %145 = load i32, ptr %i__2, align 4
  %idxprom157 = sext i32 %145 to i64
  %arrayidx158 = getelementptr inbounds %struct.doublecomplex, ptr %144, i64 %idxprom157
  %r159 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx158, i32 0, i32 0
  store double 1.000000e+00, ptr %r159, align 8
  %146 = load ptr, ptr %a.addr, align 8
  %147 = load i32, ptr %i__2, align 4
  %idxprom160 = sext i32 %147 to i64
  %arrayidx161 = getelementptr inbounds %struct.doublecomplex, ptr %146, i64 %idxprom160
  %i162 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx161, i32 0, i32 1
  store double 0.000000e+00, ptr %i162, align 8
  br label %for.inc163

for.inc163:                                       ; preds = %for.end154
  %148 = load i32, ptr %j, align 4
  %inc164 = add nsw i32 %148, 1
  store i32 %inc164, ptr %j, align 4
  br label %for.cond136, !llvm.loop !11

for.end165:                                       ; preds = %for.cond136
  %149 = load ptr, ptr %n.addr, align 8
  %150 = load i32, ptr %149, align 4
  store i32 %150, ptr %i__1, align 4
  %151 = load ptr, ptr %ihi.addr, align 8
  %152 = load i32, ptr %151, align 4
  %add166 = add nsw i32 %152, 1
  store i32 %add166, ptr %j, align 4
  br label %for.cond167

for.cond167:                                      ; preds = %for.inc194, %for.end165
  %153 = load i32, ptr %j, align 4
  %154 = load i32, ptr %i__1, align 4
  %cmp168 = icmp sle i32 %153, %154
  br i1 %cmp168, label %for.body170, label %for.end196

for.body170:                                      ; preds = %for.cond167
  %155 = load ptr, ptr %n.addr, align 8
  %156 = load i32, ptr %155, align 4
  store i32 %156, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond171

for.cond171:                                      ; preds = %for.inc183, %for.body170
  %157 = load i32, ptr %i__, align 4
  %158 = load i32, ptr %i__2, align 4
  %cmp172 = icmp sle i32 %157, %158
  br i1 %cmp172, label %for.body174, label %for.end185

for.body174:                                      ; preds = %for.cond171
  %159 = load i32, ptr %i__, align 4
  %160 = load i32, ptr %j, align 4
  %161 = load i32, ptr %a_dim1, align 4
  %mul175 = mul nsw i32 %160, %161
  %add176 = add nsw i32 %159, %mul175
  store i32 %add176, ptr %i__3, align 4
  %162 = load ptr, ptr %a.addr, align 8
  %163 = load i32, ptr %i__3, align 4
  %idxprom177 = sext i32 %163 to i64
  %arrayidx178 = getelementptr inbounds %struct.doublecomplex, ptr %162, i64 %idxprom177
  %r179 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx178, i32 0, i32 0
  store double 0.000000e+00, ptr %r179, align 8
  %164 = load ptr, ptr %a.addr, align 8
  %165 = load i32, ptr %i__3, align 4
  %idxprom180 = sext i32 %165 to i64
  %arrayidx181 = getelementptr inbounds %struct.doublecomplex, ptr %164, i64 %idxprom180
  %i182 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx181, i32 0, i32 1
  store double 0.000000e+00, ptr %i182, align 8
  br label %for.inc183

for.inc183:                                       ; preds = %for.body174
  %166 = load i32, ptr %i__, align 4
  %inc184 = add nsw i32 %166, 1
  store i32 %inc184, ptr %i__, align 4
  br label %for.cond171, !llvm.loop !12

for.end185:                                       ; preds = %for.cond171
  %167 = load i32, ptr %j, align 4
  %168 = load i32, ptr %j, align 4
  %169 = load i32, ptr %a_dim1, align 4
  %mul186 = mul nsw i32 %168, %169
  %add187 = add nsw i32 %167, %mul186
  store i32 %add187, ptr %i__2, align 4
  %170 = load ptr, ptr %a.addr, align 8
  %171 = load i32, ptr %i__2, align 4
  %idxprom188 = sext i32 %171 to i64
  %arrayidx189 = getelementptr inbounds %struct.doublecomplex, ptr %170, i64 %idxprom188
  %r190 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx189, i32 0, i32 0
  store double 1.000000e+00, ptr %r190, align 8
  %172 = load ptr, ptr %a.addr, align 8
  %173 = load i32, ptr %i__2, align 4
  %idxprom191 = sext i32 %173 to i64
  %arrayidx192 = getelementptr inbounds %struct.doublecomplex, ptr %172, i64 %idxprom191
  %i193 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx192, i32 0, i32 1
  store double 0.000000e+00, ptr %i193, align 8
  br label %for.inc194

for.inc194:                                       ; preds = %for.end185
  %174 = load i32, ptr %j, align 4
  %inc195 = add nsw i32 %174, 1
  store i32 %inc195, ptr %j, align 4
  br label %for.cond167, !llvm.loop !13

for.end196:                                       ; preds = %for.cond167
  %175 = load i32, ptr %nh, align 4
  %cmp197 = icmp sgt i32 %175, 0
  br i1 %cmp197, label %if.then199, label %if.end210

if.then199:                                       ; preds = %for.end196
  %176 = load ptr, ptr %a.addr, align 8
  %177 = load ptr, ptr %ilo.addr, align 8
  %178 = load i32, ptr %177, align 4
  %add200 = add nsw i32 %178, 1
  %179 = load ptr, ptr %ilo.addr, align 8
  %180 = load i32, ptr %179, align 4
  %add201 = add nsw i32 %180, 1
  %181 = load i32, ptr %a_dim1, align 4
  %mul202 = mul nsw i32 %add201, %181
  %add203 = add nsw i32 %add200, %mul202
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds %struct.doublecomplex, ptr %176, i64 %idxprom204
  %182 = load ptr, ptr %lda.addr, align 8
  %183 = load ptr, ptr %tau.addr, align 8
  %184 = load ptr, ptr %ilo.addr, align 8
  %185 = load i32, ptr %184, align 4
  %idxprom206 = sext i32 %185 to i64
  %arrayidx207 = getelementptr inbounds %struct.doublecomplex, ptr %183, i64 %idxprom206
  %186 = load ptr, ptr %work.addr, align 8
  %arrayidx208 = getelementptr inbounds %struct.doublecomplex, ptr %186, i64 1
  %187 = load ptr, ptr %lwork.addr, align 8
  %call209 = call i32 @zungqr_(ptr noundef %nh, ptr noundef %nh, ptr noundef %nh, ptr noundef %arrayidx205, ptr noundef %182, ptr noundef %arrayidx207, ptr noundef %arrayidx208, ptr noundef %187, ptr noundef %iinfo)
  br label %if.end210

if.end210:                                        ; preds = %if.then199, %for.end196
  %188 = load i32, ptr %lwkopt, align 4
  %conv211 = sitofp i32 %188 to double
  %189 = load ptr, ptr %work.addr, align 8
  %arrayidx212 = getelementptr inbounds %struct.doublecomplex, ptr %189, i64 1
  %r213 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx212, i32 0, i32 0
  store double %conv211, ptr %r213, align 8
  %190 = load ptr, ptr %work.addr, align 8
  %arrayidx214 = getelementptr inbounds %struct.doublecomplex, ptr %190, i64 1
  %i215 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx214, i32 0, i32 1
  store double 0.000000e+00, ptr %i215, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end210, %if.then72, %if.then67, %if.then62
  %191 = load i32, ptr %retval, align 4
  ret i32 %191
}

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @zungqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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

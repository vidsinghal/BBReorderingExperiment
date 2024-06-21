; ModuleID = 'samples/20.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/flamec/hetd/zungtr_fla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@c__1 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ZUNGQL\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"ZUNGQR\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ZUNGTR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zungtr_fla(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %tau, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
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
  %iinfo = alloca i32, align 4
  %upper = alloca i32, align 4
  %lwkopt = alloca i32, align 4
  %lquery = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
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
  %8 = load ptr, ptr %lwork.addr, align 8
  %9 = load i32, ptr %8, align 4
  %cmp = icmp eq i32 %9, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4
  %10 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %10, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4
  %11 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %uplo.addr, align 8
  %call2 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %13, align 4
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load ptr, ptr %n.addr, align 8
  %15 = load i32, ptr %14, align 4
  %cmp4 = icmp slt i32 %15, 0
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  %16 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %16, align 4
  br label %if.end26

if.else7:                                         ; preds = %if.else
  %17 = load ptr, ptr %lda.addr, align 8
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %n.addr, align 8
  %20 = load i32, ptr %19, align 4
  %cmp8 = icmp sge i32 1, %20
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else7
  br label %cond.end

cond.false:                                       ; preds = %if.else7
  %21 = load ptr, ptr %n.addr, align 8
  %22 = load i32, ptr %21, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %22, %cond.false ]
  %cmp10 = icmp slt i32 %18, %cond
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %cond.end
  %23 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %23, align 4
  br label %if.end25

if.else13:                                        ; preds = %cond.end
  store i32 1, ptr %i__1, align 4
  %24 = load ptr, ptr %n.addr, align 8
  %25 = load i32, ptr %24, align 4
  %sub = sub nsw i32 %25, 1
  store i32 %sub, ptr %i__2, align 4
  %26 = load ptr, ptr %lwork.addr, align 8
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %i__1, align 4
  %29 = load i32, ptr %i__2, align 4
  %cmp14 = icmp sge i32 %28, %29
  br i1 %cmp14, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %if.else13
  %30 = load i32, ptr %i__1, align 4
  br label %cond.end18

cond.false17:                                     ; preds = %if.else13
  %31 = load i32, ptr %i__2, align 4
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi i32 [ %30, %cond.true16 ], [ %31, %cond.false17 ]
  %cmp20 = icmp slt i32 %27, %cond19
  br i1 %cmp20, label %land.lhs.true22, label %if.end

land.lhs.true22:                                  ; preds = %cond.end18
  %32 = load i32, ptr %lquery, align 4
  %tobool23 = icmp ne i32 %32, 0
  br i1 %tobool23, label %if.end, label %if.then24

if.then24:                                        ; preds = %land.lhs.true22
  %33 = load ptr, ptr %info.addr, align 8
  store i32 -7, ptr %33, align 4
  br label %if.end

if.end:                                           ; preds = %if.then24, %land.lhs.true22, %cond.end18
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then12
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then6
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then
  %34 = load ptr, ptr %info.addr, align 8
  %35 = load i32, ptr %34, align 4
  %cmp28 = icmp eq i32 %35, 0
  br i1 %cmp28, label %if.then30, label %if.end52

if.then30:                                        ; preds = %if.end27
  %36 = load i32, ptr %upper, align 4
  %tobool31 = icmp ne i32 %36, 0
  br i1 %tobool31, label %if.then32, label %if.else37

if.then32:                                        ; preds = %if.then30
  %37 = load ptr, ptr %n.addr, align 8
  %38 = load i32, ptr %37, align 4
  %sub33 = sub nsw i32 %38, 1
  store i32 %sub33, ptr %i__1, align 4
  %39 = load ptr, ptr %n.addr, align 8
  %40 = load i32, ptr %39, align 4
  %sub34 = sub nsw i32 %40, 1
  store i32 %sub34, ptr %i__2, align 4
  %41 = load ptr, ptr %n.addr, align 8
  %42 = load i32, ptr %41, align 4
  %sub35 = sub nsw i32 %42, 1
  store i32 %sub35, ptr %i__3, align 4
  %call36 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_n1)
  store i32 %call36, ptr %nb, align 4
  br label %if.end42

if.else37:                                        ; preds = %if.then30
  %43 = load ptr, ptr %n.addr, align 8
  %44 = load i32, ptr %43, align 4
  %sub38 = sub nsw i32 %44, 1
  store i32 %sub38, ptr %i__1, align 4
  %45 = load ptr, ptr %n.addr, align 8
  %46 = load i32, ptr %45, align 4
  %sub39 = sub nsw i32 %46, 1
  store i32 %sub39, ptr %i__2, align 4
  %47 = load ptr, ptr %n.addr, align 8
  %48 = load i32, ptr %47, align 4
  %sub40 = sub nsw i32 %48, 1
  store i32 %sub40, ptr %i__3, align 4
  %call41 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.4, ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_n1)
  store i32 %call41, ptr %nb, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.then32
  store i32 1, ptr %i__1, align 4
  %49 = load ptr, ptr %n.addr, align 8
  %50 = load i32, ptr %49, align 4
  %sub43 = sub nsw i32 %50, 1
  store i32 %sub43, ptr %i__2, align 4
  %51 = load i32, ptr %i__1, align 4
  %52 = load i32, ptr %i__2, align 4
  %cmp44 = icmp sge i32 %51, %52
  br i1 %cmp44, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %if.end42
  %53 = load i32, ptr %i__1, align 4
  br label %cond.end48

cond.false47:                                     ; preds = %if.end42
  %54 = load i32, ptr %i__2, align 4
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %cond.true46
  %cond49 = phi i32 [ %53, %cond.true46 ], [ %54, %cond.false47 ]
  %55 = load i32, ptr %nb, align 4
  %mul = mul nsw i32 %cond49, %55
  store i32 %mul, ptr %lwkopt, align 4
  %56 = load i32, ptr %lwkopt, align 4
  %conv50 = sitofp i32 %56 to double
  %57 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %57, i64 1
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  store double %conv50, ptr %r, align 8
  %58 = load ptr, ptr %work.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.doublecomplex, ptr %58, i64 1
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx51, i32 0, i32 1
  store double 0.000000e+00, ptr %i, align 8
  br label %if.end52

if.end52:                                         ; preds = %cond.end48, %if.end27
  %59 = load ptr, ptr %info.addr, align 8
  %60 = load i32, ptr %59, align 4
  %cmp53 = icmp ne i32 %60, 0
  br i1 %cmp53, label %if.then55, label %if.else58

if.then55:                                        ; preds = %if.end52
  %61 = load ptr, ptr %info.addr, align 8
  %62 = load i32, ptr %61, align 4
  %sub56 = sub nsw i32 0, %62
  store i32 %sub56, ptr %i__1, align 4
  %call57 = call i32 @xerbla_(ptr noundef @.str.5, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else58:                                        ; preds = %if.end52
  %63 = load i32, ptr %lquery, align 4
  %tobool59 = icmp ne i32 %63, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.else58
  store i32 0, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.else58
  br label %if.end62

if.end62:                                         ; preds = %if.end61
  %64 = load ptr, ptr %n.addr, align 8
  %65 = load i32, ptr %64, align 4
  %cmp63 = icmp eq i32 %65, 0
  br i1 %cmp63, label %if.then65, label %if.end70

if.then65:                                        ; preds = %if.end62
  %66 = load ptr, ptr %work.addr, align 8
  %arrayidx66 = getelementptr inbounds %struct.doublecomplex, ptr %66, i64 1
  %r67 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx66, i32 0, i32 0
  store double 1.000000e+00, ptr %r67, align 8
  %67 = load ptr, ptr %work.addr, align 8
  %arrayidx68 = getelementptr inbounds %struct.doublecomplex, ptr %67, i64 1
  %i69 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx68, i32 0, i32 1
  store double 0.000000e+00, ptr %i69, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end62
  %68 = load i32, ptr %upper, align 4
  %tobool71 = icmp ne i32 %68, 0
  br i1 %tobool71, label %if.then72, label %if.else140

if.then72:                                        ; preds = %if.end70
  %69 = load ptr, ptr %n.addr, align 8
  %70 = load i32, ptr %69, align 4
  %sub73 = sub nsw i32 %70, 1
  store i32 %sub73, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc105, %if.then72
  %71 = load i32, ptr %j, align 4
  %72 = load i32, ptr %i__1, align 4
  %cmp74 = icmp sle i32 %71, %72
  br i1 %cmp74, label %for.body, label %for.end107

for.body:                                         ; preds = %for.cond
  %73 = load i32, ptr %j, align 4
  %sub76 = sub nsw i32 %73, 1
  store i32 %sub76, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc, %for.body
  %74 = load i32, ptr %i__, align 4
  %75 = load i32, ptr %i__2, align 4
  %cmp78 = icmp sle i32 %74, %75
  br i1 %cmp78, label %for.body80, label %for.end

for.body80:                                       ; preds = %for.cond77
  %76 = load i32, ptr %i__, align 4
  %77 = load i32, ptr %j, align 4
  %78 = load i32, ptr %a_dim1, align 4
  %mul81 = mul nsw i32 %77, %78
  %add82 = add nsw i32 %76, %mul81
  store i32 %add82, ptr %i__3, align 4
  %79 = load i32, ptr %i__, align 4
  %80 = load i32, ptr %j, align 4
  %add83 = add nsw i32 %80, 1
  %81 = load i32, ptr %a_dim1, align 4
  %mul84 = mul nsw i32 %add83, %81
  %add85 = add nsw i32 %79, %mul84
  store i32 %add85, ptr %i__4, align 4
  %82 = load ptr, ptr %a.addr, align 8
  %83 = load i32, ptr %i__4, align 4
  %idxprom = sext i32 %83 to i64
  %arrayidx86 = getelementptr inbounds %struct.doublecomplex, ptr %82, i64 %idxprom
  %r87 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx86, i32 0, i32 0
  %84 = load double, ptr %r87, align 8
  %85 = load ptr, ptr %a.addr, align 8
  %86 = load i32, ptr %i__3, align 4
  %idxprom88 = sext i32 %86 to i64
  %arrayidx89 = getelementptr inbounds %struct.doublecomplex, ptr %85, i64 %idxprom88
  %r90 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx89, i32 0, i32 0
  store double %84, ptr %r90, align 8
  %87 = load ptr, ptr %a.addr, align 8
  %88 = load i32, ptr %i__4, align 4
  %idxprom91 = sext i32 %88 to i64
  %arrayidx92 = getelementptr inbounds %struct.doublecomplex, ptr %87, i64 %idxprom91
  %i93 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx92, i32 0, i32 1
  %89 = load double, ptr %i93, align 8
  %90 = load ptr, ptr %a.addr, align 8
  %91 = load i32, ptr %i__3, align 4
  %idxprom94 = sext i32 %91 to i64
  %arrayidx95 = getelementptr inbounds %struct.doublecomplex, ptr %90, i64 %idxprom94
  %i96 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx95, i32 0, i32 1
  store double %89, ptr %i96, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body80
  %92 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond77, !llvm.loop !5

for.end:                                          ; preds = %for.cond77
  %93 = load ptr, ptr %n.addr, align 8
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %j, align 4
  %96 = load i32, ptr %a_dim1, align 4
  %mul97 = mul nsw i32 %95, %96
  %add98 = add nsw i32 %94, %mul97
  store i32 %add98, ptr %i__2, align 4
  %97 = load ptr, ptr %a.addr, align 8
  %98 = load i32, ptr %i__2, align 4
  %idxprom99 = sext i32 %98 to i64
  %arrayidx100 = getelementptr inbounds %struct.doublecomplex, ptr %97, i64 %idxprom99
  %r101 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx100, i32 0, i32 0
  store double 0.000000e+00, ptr %r101, align 8
  %99 = load ptr, ptr %a.addr, align 8
  %100 = load i32, ptr %i__2, align 4
  %idxprom102 = sext i32 %100 to i64
  %arrayidx103 = getelementptr inbounds %struct.doublecomplex, ptr %99, i64 %idxprom102
  %i104 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx103, i32 0, i32 1
  store double 0.000000e+00, ptr %i104, align 8
  br label %for.inc105

for.inc105:                                       ; preds = %for.end
  %101 = load i32, ptr %j, align 4
  %inc106 = add nsw i32 %101, 1
  store i32 %inc106, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end107:                                       ; preds = %for.cond
  %102 = load ptr, ptr %n.addr, align 8
  %103 = load i32, ptr %102, align 4
  %sub108 = sub nsw i32 %103, 1
  store i32 %sub108, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc121, %for.end107
  %104 = load i32, ptr %i__, align 4
  %105 = load i32, ptr %i__1, align 4
  %cmp110 = icmp sle i32 %104, %105
  br i1 %cmp110, label %for.body112, label %for.end123

for.body112:                                      ; preds = %for.cond109
  %106 = load i32, ptr %i__, align 4
  %107 = load ptr, ptr %n.addr, align 8
  %108 = load i32, ptr %107, align 4
  %109 = load i32, ptr %a_dim1, align 4
  %mul113 = mul nsw i32 %108, %109
  %add114 = add nsw i32 %106, %mul113
  store i32 %add114, ptr %i__2, align 4
  %110 = load ptr, ptr %a.addr, align 8
  %111 = load i32, ptr %i__2, align 4
  %idxprom115 = sext i32 %111 to i64
  %arrayidx116 = getelementptr inbounds %struct.doublecomplex, ptr %110, i64 %idxprom115
  %r117 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx116, i32 0, i32 0
  store double 0.000000e+00, ptr %r117, align 8
  %112 = load ptr, ptr %a.addr, align 8
  %113 = load i32, ptr %i__2, align 4
  %idxprom118 = sext i32 %113 to i64
  %arrayidx119 = getelementptr inbounds %struct.doublecomplex, ptr %112, i64 %idxprom118
  %i120 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx119, i32 0, i32 1
  store double 0.000000e+00, ptr %i120, align 8
  br label %for.inc121

for.inc121:                                       ; preds = %for.body112
  %114 = load i32, ptr %i__, align 4
  %inc122 = add nsw i32 %114, 1
  store i32 %inc122, ptr %i__, align 4
  br label %for.cond109, !llvm.loop !8

for.end123:                                       ; preds = %for.cond109
  %115 = load ptr, ptr %n.addr, align 8
  %116 = load i32, ptr %115, align 4
  %117 = load ptr, ptr %n.addr, align 8
  %118 = load i32, ptr %117, align 4
  %119 = load i32, ptr %a_dim1, align 4
  %mul124 = mul nsw i32 %118, %119
  %add125 = add nsw i32 %116, %mul124
  store i32 %add125, ptr %i__1, align 4
  %120 = load ptr, ptr %a.addr, align 8
  %121 = load i32, ptr %i__1, align 4
  %idxprom126 = sext i32 %121 to i64
  %arrayidx127 = getelementptr inbounds %struct.doublecomplex, ptr %120, i64 %idxprom126
  %r128 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx127, i32 0, i32 0
  store double 1.000000e+00, ptr %r128, align 8
  %122 = load ptr, ptr %a.addr, align 8
  %123 = load i32, ptr %i__1, align 4
  %idxprom129 = sext i32 %123 to i64
  %arrayidx130 = getelementptr inbounds %struct.doublecomplex, ptr %122, i64 %idxprom129
  %i131 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx130, i32 0, i32 1
  store double 0.000000e+00, ptr %i131, align 8
  %124 = load ptr, ptr %n.addr, align 8
  %125 = load i32, ptr %124, align 4
  %sub132 = sub nsw i32 %125, 1
  store i32 %sub132, ptr %i__1, align 4
  %126 = load ptr, ptr %n.addr, align 8
  %127 = load i32, ptr %126, align 4
  %sub133 = sub nsw i32 %127, 1
  store i32 %sub133, ptr %i__2, align 4
  %128 = load ptr, ptr %n.addr, align 8
  %129 = load i32, ptr %128, align 4
  %sub134 = sub nsw i32 %129, 1
  store i32 %sub134, ptr %i__3, align 4
  %130 = load ptr, ptr %a.addr, align 8
  %131 = load i32, ptr %a_offset, align 4
  %idxprom135 = sext i32 %131 to i64
  %arrayidx136 = getelementptr inbounds %struct.doublecomplex, ptr %130, i64 %idxprom135
  %132 = load ptr, ptr %lda.addr, align 8
  %133 = load ptr, ptr %tau.addr, align 8
  %arrayidx137 = getelementptr inbounds %struct.doublecomplex, ptr %133, i64 1
  %134 = load ptr, ptr %work.addr, align 8
  %arrayidx138 = getelementptr inbounds %struct.doublecomplex, ptr %134, i64 1
  %135 = load ptr, ptr %lwork.addr, align 8
  %call139 = call i32 @zungql_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx136, ptr noundef %132, ptr noundef %arrayidx137, ptr noundef %arrayidx138, ptr noundef %135, ptr noundef %iinfo)
  br label %if.end214

if.else140:                                       ; preds = %if.end70
  %136 = load ptr, ptr %n.addr, align 8
  %137 = load i32, ptr %136, align 4
  store i32 %137, ptr %j, align 4
  br label %for.cond141

for.cond141:                                      ; preds = %for.inc178, %if.else140
  %138 = load i32, ptr %j, align 4
  %cmp142 = icmp sge i32 %138, 2
  br i1 %cmp142, label %for.body144, label %for.end179

for.body144:                                      ; preds = %for.cond141
  %139 = load i32, ptr %j, align 4
  %140 = load i32, ptr %a_dim1, align 4
  %mul145 = mul nsw i32 %139, %140
  %add146 = add nsw i32 %mul145, 1
  store i32 %add146, ptr %i__1, align 4
  %141 = load ptr, ptr %a.addr, align 8
  %142 = load i32, ptr %i__1, align 4
  %idxprom147 = sext i32 %142 to i64
  %arrayidx148 = getelementptr inbounds %struct.doublecomplex, ptr %141, i64 %idxprom147
  %r149 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx148, i32 0, i32 0
  store double 0.000000e+00, ptr %r149, align 8
  %143 = load ptr, ptr %a.addr, align 8
  %144 = load i32, ptr %i__1, align 4
  %idxprom150 = sext i32 %144 to i64
  %arrayidx151 = getelementptr inbounds %struct.doublecomplex, ptr %143, i64 %idxprom150
  %i152 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx151, i32 0, i32 1
  store double 0.000000e+00, ptr %i152, align 8
  %145 = load ptr, ptr %n.addr, align 8
  %146 = load i32, ptr %145, align 4
  store i32 %146, ptr %i__1, align 4
  %147 = load i32, ptr %j, align 4
  %add153 = add nsw i32 %147, 1
  store i32 %add153, ptr %i__, align 4
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc175, %for.body144
  %148 = load i32, ptr %i__, align 4
  %149 = load i32, ptr %i__1, align 4
  %cmp155 = icmp sle i32 %148, %149
  br i1 %cmp155, label %for.body157, label %for.end177

for.body157:                                      ; preds = %for.cond154
  %150 = load i32, ptr %i__, align 4
  %151 = load i32, ptr %j, align 4
  %152 = load i32, ptr %a_dim1, align 4
  %mul158 = mul nsw i32 %151, %152
  %add159 = add nsw i32 %150, %mul158
  store i32 %add159, ptr %i__2, align 4
  %153 = load i32, ptr %i__, align 4
  %154 = load i32, ptr %j, align 4
  %sub160 = sub nsw i32 %154, 1
  %155 = load i32, ptr %a_dim1, align 4
  %mul161 = mul nsw i32 %sub160, %155
  %add162 = add nsw i32 %153, %mul161
  store i32 %add162, ptr %i__3, align 4
  %156 = load ptr, ptr %a.addr, align 8
  %157 = load i32, ptr %i__3, align 4
  %idxprom163 = sext i32 %157 to i64
  %arrayidx164 = getelementptr inbounds %struct.doublecomplex, ptr %156, i64 %idxprom163
  %r165 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx164, i32 0, i32 0
  %158 = load double, ptr %r165, align 8
  %159 = load ptr, ptr %a.addr, align 8
  %160 = load i32, ptr %i__2, align 4
  %idxprom166 = sext i32 %160 to i64
  %arrayidx167 = getelementptr inbounds %struct.doublecomplex, ptr %159, i64 %idxprom166
  %r168 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx167, i32 0, i32 0
  store double %158, ptr %r168, align 8
  %161 = load ptr, ptr %a.addr, align 8
  %162 = load i32, ptr %i__3, align 4
  %idxprom169 = sext i32 %162 to i64
  %arrayidx170 = getelementptr inbounds %struct.doublecomplex, ptr %161, i64 %idxprom169
  %i171 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx170, i32 0, i32 1
  %163 = load double, ptr %i171, align 8
  %164 = load ptr, ptr %a.addr, align 8
  %165 = load i32, ptr %i__2, align 4
  %idxprom172 = sext i32 %165 to i64
  %arrayidx173 = getelementptr inbounds %struct.doublecomplex, ptr %164, i64 %idxprom172
  %i174 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx173, i32 0, i32 1
  store double %163, ptr %i174, align 8
  br label %for.inc175

for.inc175:                                       ; preds = %for.body157
  %166 = load i32, ptr %i__, align 4
  %inc176 = add nsw i32 %166, 1
  store i32 %inc176, ptr %i__, align 4
  br label %for.cond154, !llvm.loop !9

for.end177:                                       ; preds = %for.cond154
  br label %for.inc178

for.inc178:                                       ; preds = %for.end177
  %167 = load i32, ptr %j, align 4
  %dec = add nsw i32 %167, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond141, !llvm.loop !10

for.end179:                                       ; preds = %for.cond141
  %168 = load i32, ptr %a_dim1, align 4
  %add180 = add nsw i32 %168, 1
  store i32 %add180, ptr %i__1, align 4
  %169 = load ptr, ptr %a.addr, align 8
  %170 = load i32, ptr %i__1, align 4
  %idxprom181 = sext i32 %170 to i64
  %arrayidx182 = getelementptr inbounds %struct.doublecomplex, ptr %169, i64 %idxprom181
  %r183 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx182, i32 0, i32 0
  store double 1.000000e+00, ptr %r183, align 8
  %171 = load ptr, ptr %a.addr, align 8
  %172 = load i32, ptr %i__1, align 4
  %idxprom184 = sext i32 %172 to i64
  %arrayidx185 = getelementptr inbounds %struct.doublecomplex, ptr %171, i64 %idxprom184
  %i186 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx185, i32 0, i32 1
  store double 0.000000e+00, ptr %i186, align 8
  %173 = load ptr, ptr %n.addr, align 8
  %174 = load i32, ptr %173, align 4
  store i32 %174, ptr %i__1, align 4
  store i32 2, ptr %i__, align 4
  br label %for.cond187

for.cond187:                                      ; preds = %for.inc198, %for.end179
  %175 = load i32, ptr %i__, align 4
  %176 = load i32, ptr %i__1, align 4
  %cmp188 = icmp sle i32 %175, %176
  br i1 %cmp188, label %for.body190, label %for.end200

for.body190:                                      ; preds = %for.cond187
  %177 = load i32, ptr %i__, align 4
  %178 = load i32, ptr %a_dim1, align 4
  %add191 = add nsw i32 %177, %178
  store i32 %add191, ptr %i__2, align 4
  %179 = load ptr, ptr %a.addr, align 8
  %180 = load i32, ptr %i__2, align 4
  %idxprom192 = sext i32 %180 to i64
  %arrayidx193 = getelementptr inbounds %struct.doublecomplex, ptr %179, i64 %idxprom192
  %r194 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx193, i32 0, i32 0
  store double 0.000000e+00, ptr %r194, align 8
  %181 = load ptr, ptr %a.addr, align 8
  %182 = load i32, ptr %i__2, align 4
  %idxprom195 = sext i32 %182 to i64
  %arrayidx196 = getelementptr inbounds %struct.doublecomplex, ptr %181, i64 %idxprom195
  %i197 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx196, i32 0, i32 1
  store double 0.000000e+00, ptr %i197, align 8
  br label %for.inc198

for.inc198:                                       ; preds = %for.body190
  %183 = load i32, ptr %i__, align 4
  %inc199 = add nsw i32 %183, 1
  store i32 %inc199, ptr %i__, align 4
  br label %for.cond187, !llvm.loop !11

for.end200:                                       ; preds = %for.cond187
  %184 = load ptr, ptr %n.addr, align 8
  %185 = load i32, ptr %184, align 4
  %cmp201 = icmp sgt i32 %185, 1
  br i1 %cmp201, label %if.then203, label %if.end213

if.then203:                                       ; preds = %for.end200
  %186 = load ptr, ptr %n.addr, align 8
  %187 = load i32, ptr %186, align 4
  %sub204 = sub nsw i32 %187, 1
  store i32 %sub204, ptr %i__1, align 4
  %188 = load ptr, ptr %n.addr, align 8
  %189 = load i32, ptr %188, align 4
  %sub205 = sub nsw i32 %189, 1
  store i32 %sub205, ptr %i__2, align 4
  %190 = load ptr, ptr %n.addr, align 8
  %191 = load i32, ptr %190, align 4
  %sub206 = sub nsw i32 %191, 1
  store i32 %sub206, ptr %i__3, align 4
  %192 = load ptr, ptr %a.addr, align 8
  %193 = load i32, ptr %a_dim1, align 4
  %shl = shl i32 %193, 1
  %add207 = add nsw i32 %shl, 2
  %idxprom208 = sext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds %struct.doublecomplex, ptr %192, i64 %idxprom208
  %194 = load ptr, ptr %lda.addr, align 8
  %195 = load ptr, ptr %tau.addr, align 8
  %arrayidx210 = getelementptr inbounds %struct.doublecomplex, ptr %195, i64 1
  %196 = load ptr, ptr %work.addr, align 8
  %arrayidx211 = getelementptr inbounds %struct.doublecomplex, ptr %196, i64 1
  %197 = load ptr, ptr %lwork.addr, align 8
  %call212 = call i32 @zungqr_fla(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx209, ptr noundef %194, ptr noundef %arrayidx210, ptr noundef %arrayidx211, ptr noundef %197, ptr noundef %iinfo)
  br label %if.end213

if.end213:                                        ; preds = %if.then203, %for.end200
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %for.end123
  %198 = load i32, ptr %lwkopt, align 4
  %conv215 = sitofp i32 %198 to double
  %199 = load ptr, ptr %work.addr, align 8
  %arrayidx216 = getelementptr inbounds %struct.doublecomplex, ptr %199, i64 1
  %r217 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx216, i32 0, i32 0
  store double %conv215, ptr %r217, align 8
  %200 = load ptr, ptr %work.addr, align 8
  %arrayidx218 = getelementptr inbounds %struct.doublecomplex, ptr %200, i64 1
  %i219 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx218, i32 0, i32 1
  store double 0.000000e+00, ptr %i219, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end214, %if.then65, %if.then60, %if.then55
  %201 = load i32, ptr %retval, align 4
  ret i32 %201
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @zungql_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zungqr_fla(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

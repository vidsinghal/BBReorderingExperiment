; ModuleID = 'samples/515.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/flamec/hetd/dsytd2_fla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DSYTD2\00", align 1
@c__1 = internal global i32 1, align 4
@c_b8 = internal global double 0.000000e+00, align 8
@c_b14 = internal global double -1.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dsytd2_fla(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %d__, ptr noundef %e, ptr noundef %tau, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %taui = alloca double, align 8
  %alpha = alloca double, align 8
  %upper = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %d__, ptr %d__.addr, align 8
  store ptr %e, ptr %e.addr, align 8
  store ptr %tau, ptr %tau.addr, align 8
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
  %add.ptr = getelementptr inbounds double, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %5 = load ptr, ptr %d__.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %d__.addr, align 8
  %6 = load ptr, ptr %e.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %e.addr, align 8
  %7 = load ptr, ptr %tau.addr, align 8
  %incdec.ptr2 = getelementptr inbounds double, ptr %7, i32 -1
  store ptr %incdec.ptr2, ptr %tau.addr, align 8
  %8 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %9, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4
  %10 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %uplo.addr, align 8
  %call3 = call i32 @lsame_(ptr noundef %11, ptr noundef @.str.1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %12, align 4
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load ptr, ptr %n.addr, align 8
  %14 = load i32, ptr %13, align 4
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %15 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %15, align 4
  br label %if.end10

if.else6:                                         ; preds = %if.else
  %16 = load ptr, ptr %lda.addr, align 8
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %n.addr, align 8
  %19 = load i32, ptr %18, align 4
  %cmp7 = icmp sge i32 1, %19
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else6
  br label %cond.end

cond.false:                                       ; preds = %if.else6
  %20 = load ptr, ptr %n.addr, align 8
  %21 = load i32, ptr %20, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %21, %cond.false ]
  %cmp8 = icmp slt i32 %17, %cond
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %cond.end
  %22 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %22, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %cond.end
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then5
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %23 = load ptr, ptr %info.addr, align 8
  %24 = load i32, ptr %23, align 4
  %cmp12 = icmp ne i32 %24, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %25 = load ptr, ptr %info.addr, align 8
  %26 = load i32, ptr %25, align 4
  %sub = sub nsw i32 0, %26
  store i32 %sub, ptr %i__1, align 4
  %call14 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  %27 = load ptr, ptr %n.addr, align 8
  %28 = load i32, ptr %27, align 4
  %cmp16 = icmp sle i32 %28, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end15
  %29 = load i32, ptr %upper, align 4
  %tobool19 = icmp ne i32 %29, 0
  br i1 %tobool19, label %if.then20, label %if.else102

if.then20:                                        ; preds = %if.end18
  %30 = load ptr, ptr %n.addr, align 8
  %31 = load i32, ptr %30, align 4
  %sub21 = sub nsw i32 %31, 1
  store i32 %sub21, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then20
  %32 = load i32, ptr %i__, align 4
  %cmp22 = icmp sge i32 %32, 1
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %a.addr, align 8
  %34 = load i32, ptr %i__, align 4
  %35 = load i32, ptr %i__, align 4
  %add23 = add nsw i32 %35, 1
  %36 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %add23, %36
  %add24 = add nsw i32 %34, %mul
  %idxprom = sext i32 %add24 to i64
  %arrayidx = getelementptr inbounds double, ptr %33, i64 %idxprom
  %37 = load ptr, ptr %a.addr, align 8
  %38 = load i32, ptr %i__, align 4
  %add25 = add nsw i32 %38, 1
  %39 = load i32, ptr %a_dim1, align 4
  %mul26 = mul nsw i32 %add25, %39
  %add27 = add nsw i32 %mul26, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds double, ptr %37, i64 %idxprom28
  %call30 = call i32 @dlarfg_(ptr noundef %i__, ptr noundef %arrayidx, ptr noundef %arrayidx29, ptr noundef @c__1, ptr noundef %taui)
  %40 = load ptr, ptr %a.addr, align 8
  %41 = load i32, ptr %i__, align 4
  %42 = load i32, ptr %i__, align 4
  %add31 = add nsw i32 %42, 1
  %43 = load i32, ptr %a_dim1, align 4
  %mul32 = mul nsw i32 %add31, %43
  %add33 = add nsw i32 %41, %mul32
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds double, ptr %40, i64 %idxprom34
  %44 = load double, ptr %arrayidx35, align 8
  %45 = load ptr, ptr %e.addr, align 8
  %46 = load i32, ptr %i__, align 4
  %idxprom36 = sext i32 %46 to i64
  %arrayidx37 = getelementptr inbounds double, ptr %45, i64 %idxprom36
  store double %44, ptr %arrayidx37, align 8
  %47 = load double, ptr %taui, align 8
  %cmp38 = fcmp une double %47, 0.000000e+00
  br i1 %cmp38, label %if.then39, label %if.end86

if.then39:                                        ; preds = %for.body
  %48 = load ptr, ptr %a.addr, align 8
  %49 = load i32, ptr %i__, align 4
  %50 = load i32, ptr %i__, align 4
  %add40 = add nsw i32 %50, 1
  %51 = load i32, ptr %a_dim1, align 4
  %mul41 = mul nsw i32 %add40, %51
  %add42 = add nsw i32 %49, %mul41
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds double, ptr %48, i64 %idxprom43
  store double 1.000000e+00, ptr %arrayidx44, align 8
  %52 = load ptr, ptr %uplo.addr, align 8
  %53 = load ptr, ptr %a.addr, align 8
  %54 = load i32, ptr %a_offset, align 4
  %idxprom45 = sext i32 %54 to i64
  %arrayidx46 = getelementptr inbounds double, ptr %53, i64 %idxprom45
  %55 = load ptr, ptr %lda.addr, align 8
  %56 = load ptr, ptr %a.addr, align 8
  %57 = load i32, ptr %i__, align 4
  %add47 = add nsw i32 %57, 1
  %58 = load i32, ptr %a_dim1, align 4
  %mul48 = mul nsw i32 %add47, %58
  %add49 = add nsw i32 %mul48, 1
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds double, ptr %56, i64 %idxprom50
  %59 = load ptr, ptr %tau.addr, align 8
  %arrayidx52 = getelementptr inbounds double, ptr %59, i64 1
  %call53 = call i32 @dsymv_(ptr noundef %52, ptr noundef %i__, ptr noundef %taui, ptr noundef %arrayidx46, ptr noundef %55, ptr noundef %arrayidx51, ptr noundef @c__1, ptr noundef @c_b8, ptr noundef %arrayidx52, ptr noundef @c__1)
  %60 = load double, ptr %taui, align 8
  %mul54 = fmul double %60, -5.000000e-01
  %61 = load ptr, ptr %tau.addr, align 8
  %arrayidx55 = getelementptr inbounds double, ptr %61, i64 1
  %62 = load ptr, ptr %a.addr, align 8
  %63 = load i32, ptr %i__, align 4
  %add56 = add nsw i32 %63, 1
  %64 = load i32, ptr %a_dim1, align 4
  %mul57 = mul nsw i32 %add56, %64
  %add58 = add nsw i32 %mul57, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds double, ptr %62, i64 %idxprom59
  %call61 = call double @ddot_(ptr noundef %i__, ptr noundef %arrayidx55, ptr noundef @c__1, ptr noundef %arrayidx60, ptr noundef @c__1)
  %mul62 = fmul double %mul54, %call61
  store double %mul62, ptr %alpha, align 8
  %65 = load ptr, ptr %a.addr, align 8
  %66 = load i32, ptr %i__, align 4
  %add63 = add nsw i32 %66, 1
  %67 = load i32, ptr %a_dim1, align 4
  %mul64 = mul nsw i32 %add63, %67
  %add65 = add nsw i32 %mul64, 1
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds double, ptr %65, i64 %idxprom66
  %68 = load ptr, ptr %tau.addr, align 8
  %arrayidx68 = getelementptr inbounds double, ptr %68, i64 1
  %call69 = call i32 @daxpy_(ptr noundef %i__, ptr noundef %alpha, ptr noundef %arrayidx67, ptr noundef @c__1, ptr noundef %arrayidx68, ptr noundef @c__1)
  %69 = load ptr, ptr %uplo.addr, align 8
  %70 = load ptr, ptr %a.addr, align 8
  %71 = load i32, ptr %i__, align 4
  %add70 = add nsw i32 %71, 1
  %72 = load i32, ptr %a_dim1, align 4
  %mul71 = mul nsw i32 %add70, %72
  %add72 = add nsw i32 %mul71, 1
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds double, ptr %70, i64 %idxprom73
  %73 = load ptr, ptr %tau.addr, align 8
  %arrayidx75 = getelementptr inbounds double, ptr %73, i64 1
  %74 = load ptr, ptr %a.addr, align 8
  %75 = load i32, ptr %a_offset, align 4
  %idxprom76 = sext i32 %75 to i64
  %arrayidx77 = getelementptr inbounds double, ptr %74, i64 %idxprom76
  %76 = load ptr, ptr %lda.addr, align 8
  %call78 = call i32 @dsyr2_(ptr noundef %69, ptr noundef %i__, ptr noundef @c_b14, ptr noundef %arrayidx74, ptr noundef @c__1, ptr noundef %arrayidx75, ptr noundef @c__1, ptr noundef %arrayidx77, ptr noundef %76)
  %77 = load ptr, ptr %e.addr, align 8
  %78 = load i32, ptr %i__, align 4
  %idxprom79 = sext i32 %78 to i64
  %arrayidx80 = getelementptr inbounds double, ptr %77, i64 %idxprom79
  %79 = load double, ptr %arrayidx80, align 8
  %80 = load ptr, ptr %a.addr, align 8
  %81 = load i32, ptr %i__, align 4
  %82 = load i32, ptr %i__, align 4
  %add81 = add nsw i32 %82, 1
  %83 = load i32, ptr %a_dim1, align 4
  %mul82 = mul nsw i32 %add81, %83
  %add83 = add nsw i32 %81, %mul82
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds double, ptr %80, i64 %idxprom84
  store double %79, ptr %arrayidx85, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then39, %for.body
  %84 = load ptr, ptr %a.addr, align 8
  %85 = load i32, ptr %i__, align 4
  %add87 = add nsw i32 %85, 1
  %86 = load i32, ptr %i__, align 4
  %add88 = add nsw i32 %86, 1
  %87 = load i32, ptr %a_dim1, align 4
  %mul89 = mul nsw i32 %add88, %87
  %add90 = add nsw i32 %add87, %mul89
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds double, ptr %84, i64 %idxprom91
  %88 = load double, ptr %arrayidx92, align 8
  %89 = load ptr, ptr %d__.addr, align 8
  %90 = load i32, ptr %i__, align 4
  %add93 = add nsw i32 %90, 1
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds double, ptr %89, i64 %idxprom94
  store double %88, ptr %arrayidx95, align 8
  %91 = load double, ptr %taui, align 8
  %92 = load ptr, ptr %tau.addr, align 8
  %93 = load i32, ptr %i__, align 4
  %idxprom96 = sext i32 %93 to i64
  %arrayidx97 = getelementptr inbounds double, ptr %92, i64 %idxprom96
  store double %91, ptr %arrayidx97, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end86
  %94 = load i32, ptr %i__, align 4
  %dec = add nsw i32 %94, -1
  store i32 %dec, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %95 = load ptr, ptr %a.addr, align 8
  %96 = load i32, ptr %a_dim1, align 4
  %add98 = add nsw i32 %96, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds double, ptr %95, i64 %idxprom99
  %97 = load double, ptr %arrayidx100, align 8
  %98 = load ptr, ptr %d__.addr, align 8
  %arrayidx101 = getelementptr inbounds double, ptr %98, i64 1
  store double %97, ptr %arrayidx101, align 8
  br label %if.end212

if.else102:                                       ; preds = %if.end18
  %99 = load ptr, ptr %n.addr, align 8
  %100 = load i32, ptr %99, align 4
  %sub103 = sub nsw i32 %100, 1
  store i32 %sub103, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc204, %if.else102
  %101 = load i32, ptr %i__, align 4
  %102 = load i32, ptr %i__1, align 4
  %cmp105 = icmp sle i32 %101, %102
  br i1 %cmp105, label %for.body106, label %for.end205

for.body106:                                      ; preds = %for.cond104
  %103 = load ptr, ptr %n.addr, align 8
  %104 = load i32, ptr %103, align 4
  %105 = load i32, ptr %i__, align 4
  %sub107 = sub nsw i32 %104, %105
  store i32 %sub107, ptr %i__2, align 4
  %106 = load i32, ptr %i__, align 4
  %add108 = add nsw i32 %106, 2
  store i32 %add108, ptr %i__3, align 4
  %107 = load ptr, ptr %a.addr, align 8
  %108 = load i32, ptr %i__, align 4
  %add109 = add nsw i32 %108, 1
  %109 = load i32, ptr %i__, align 4
  %110 = load i32, ptr %a_dim1, align 4
  %mul110 = mul nsw i32 %109, %110
  %add111 = add nsw i32 %add109, %mul110
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds double, ptr %107, i64 %idxprom112
  %111 = load ptr, ptr %a.addr, align 8
  %112 = load i32, ptr %i__3, align 4
  %113 = load ptr, ptr %n.addr, align 8
  %114 = load i32, ptr %113, align 4
  %cmp114 = icmp sle i32 %112, %114
  br i1 %cmp114, label %cond.true115, label %cond.false116

cond.true115:                                     ; preds = %for.body106
  %115 = load i32, ptr %i__3, align 4
  br label %cond.end117

cond.false116:                                    ; preds = %for.body106
  %116 = load ptr, ptr %n.addr, align 8
  %117 = load i32, ptr %116, align 4
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false116, %cond.true115
  %cond118 = phi i32 [ %115, %cond.true115 ], [ %117, %cond.false116 ]
  %118 = load i32, ptr %i__, align 4
  %119 = load i32, ptr %a_dim1, align 4
  %mul119 = mul nsw i32 %118, %119
  %add120 = add nsw i32 %cond118, %mul119
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds double, ptr %111, i64 %idxprom121
  %call123 = call i32 @dlarfg_(ptr noundef %i__2, ptr noundef %arrayidx113, ptr noundef %arrayidx122, ptr noundef @c__1, ptr noundef %taui)
  %120 = load ptr, ptr %a.addr, align 8
  %121 = load i32, ptr %i__, align 4
  %add124 = add nsw i32 %121, 1
  %122 = load i32, ptr %i__, align 4
  %123 = load i32, ptr %a_dim1, align 4
  %mul125 = mul nsw i32 %122, %123
  %add126 = add nsw i32 %add124, %mul125
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds double, ptr %120, i64 %idxprom127
  %124 = load double, ptr %arrayidx128, align 8
  %125 = load ptr, ptr %e.addr, align 8
  %126 = load i32, ptr %i__, align 4
  %idxprom129 = sext i32 %126 to i64
  %arrayidx130 = getelementptr inbounds double, ptr %125, i64 %idxprom129
  store double %124, ptr %arrayidx130, align 8
  %127 = load double, ptr %taui, align 8
  %cmp131 = fcmp une double %127, 0.000000e+00
  br i1 %cmp131, label %if.then132, label %if.end195

if.then132:                                       ; preds = %cond.end117
  %128 = load ptr, ptr %a.addr, align 8
  %129 = load i32, ptr %i__, align 4
  %add133 = add nsw i32 %129, 1
  %130 = load i32, ptr %i__, align 4
  %131 = load i32, ptr %a_dim1, align 4
  %mul134 = mul nsw i32 %130, %131
  %add135 = add nsw i32 %add133, %mul134
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds double, ptr %128, i64 %idxprom136
  store double 1.000000e+00, ptr %arrayidx137, align 8
  %132 = load ptr, ptr %n.addr, align 8
  %133 = load i32, ptr %132, align 4
  %134 = load i32, ptr %i__, align 4
  %sub138 = sub nsw i32 %133, %134
  store i32 %sub138, ptr %i__2, align 4
  %135 = load ptr, ptr %uplo.addr, align 8
  %136 = load ptr, ptr %a.addr, align 8
  %137 = load i32, ptr %i__, align 4
  %add139 = add nsw i32 %137, 1
  %138 = load i32, ptr %i__, align 4
  %add140 = add nsw i32 %138, 1
  %139 = load i32, ptr %a_dim1, align 4
  %mul141 = mul nsw i32 %add140, %139
  %add142 = add nsw i32 %add139, %mul141
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds double, ptr %136, i64 %idxprom143
  %140 = load ptr, ptr %lda.addr, align 8
  %141 = load ptr, ptr %a.addr, align 8
  %142 = load i32, ptr %i__, align 4
  %add145 = add nsw i32 %142, 1
  %143 = load i32, ptr %i__, align 4
  %144 = load i32, ptr %a_dim1, align 4
  %mul146 = mul nsw i32 %143, %144
  %add147 = add nsw i32 %add145, %mul146
  %idxprom148 = sext i32 %add147 to i64
  %arrayidx149 = getelementptr inbounds double, ptr %141, i64 %idxprom148
  %145 = load ptr, ptr %tau.addr, align 8
  %146 = load i32, ptr %i__, align 4
  %idxprom150 = sext i32 %146 to i64
  %arrayidx151 = getelementptr inbounds double, ptr %145, i64 %idxprom150
  %call152 = call i32 @dsymv_(ptr noundef %135, ptr noundef %i__2, ptr noundef %taui, ptr noundef %arrayidx144, ptr noundef %140, ptr noundef %arrayidx149, ptr noundef @c__1, ptr noundef @c_b8, ptr noundef %arrayidx151, ptr noundef @c__1)
  %147 = load ptr, ptr %n.addr, align 8
  %148 = load i32, ptr %147, align 4
  %149 = load i32, ptr %i__, align 4
  %sub153 = sub nsw i32 %148, %149
  store i32 %sub153, ptr %i__2, align 4
  %150 = load double, ptr %taui, align 8
  %mul154 = fmul double %150, -5.000000e-01
  %151 = load ptr, ptr %tau.addr, align 8
  %152 = load i32, ptr %i__, align 4
  %idxprom155 = sext i32 %152 to i64
  %arrayidx156 = getelementptr inbounds double, ptr %151, i64 %idxprom155
  %153 = load ptr, ptr %a.addr, align 8
  %154 = load i32, ptr %i__, align 4
  %add157 = add nsw i32 %154, 1
  %155 = load i32, ptr %i__, align 4
  %156 = load i32, ptr %a_dim1, align 4
  %mul158 = mul nsw i32 %155, %156
  %add159 = add nsw i32 %add157, %mul158
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds double, ptr %153, i64 %idxprom160
  %call162 = call double @ddot_(ptr noundef %i__2, ptr noundef %arrayidx156, ptr noundef @c__1, ptr noundef %arrayidx161, ptr noundef @c__1)
  %mul163 = fmul double %mul154, %call162
  store double %mul163, ptr %alpha, align 8
  %157 = load ptr, ptr %n.addr, align 8
  %158 = load i32, ptr %157, align 4
  %159 = load i32, ptr %i__, align 4
  %sub164 = sub nsw i32 %158, %159
  store i32 %sub164, ptr %i__2, align 4
  %160 = load ptr, ptr %a.addr, align 8
  %161 = load i32, ptr %i__, align 4
  %add165 = add nsw i32 %161, 1
  %162 = load i32, ptr %i__, align 4
  %163 = load i32, ptr %a_dim1, align 4
  %mul166 = mul nsw i32 %162, %163
  %add167 = add nsw i32 %add165, %mul166
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds double, ptr %160, i64 %idxprom168
  %164 = load ptr, ptr %tau.addr, align 8
  %165 = load i32, ptr %i__, align 4
  %idxprom170 = sext i32 %165 to i64
  %arrayidx171 = getelementptr inbounds double, ptr %164, i64 %idxprom170
  %call172 = call i32 @daxpy_(ptr noundef %i__2, ptr noundef %alpha, ptr noundef %arrayidx169, ptr noundef @c__1, ptr noundef %arrayidx171, ptr noundef @c__1)
  %166 = load ptr, ptr %n.addr, align 8
  %167 = load i32, ptr %166, align 4
  %168 = load i32, ptr %i__, align 4
  %sub173 = sub nsw i32 %167, %168
  store i32 %sub173, ptr %i__2, align 4
  %169 = load ptr, ptr %uplo.addr, align 8
  %170 = load ptr, ptr %a.addr, align 8
  %171 = load i32, ptr %i__, align 4
  %add174 = add nsw i32 %171, 1
  %172 = load i32, ptr %i__, align 4
  %173 = load i32, ptr %a_dim1, align 4
  %mul175 = mul nsw i32 %172, %173
  %add176 = add nsw i32 %add174, %mul175
  %idxprom177 = sext i32 %add176 to i64
  %arrayidx178 = getelementptr inbounds double, ptr %170, i64 %idxprom177
  %174 = load ptr, ptr %tau.addr, align 8
  %175 = load i32, ptr %i__, align 4
  %idxprom179 = sext i32 %175 to i64
  %arrayidx180 = getelementptr inbounds double, ptr %174, i64 %idxprom179
  %176 = load ptr, ptr %a.addr, align 8
  %177 = load i32, ptr %i__, align 4
  %add181 = add nsw i32 %177, 1
  %178 = load i32, ptr %i__, align 4
  %add182 = add nsw i32 %178, 1
  %179 = load i32, ptr %a_dim1, align 4
  %mul183 = mul nsw i32 %add182, %179
  %add184 = add nsw i32 %add181, %mul183
  %idxprom185 = sext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds double, ptr %176, i64 %idxprom185
  %180 = load ptr, ptr %lda.addr, align 8
  %call187 = call i32 @dsyr2_(ptr noundef %169, ptr noundef %i__2, ptr noundef @c_b14, ptr noundef %arrayidx178, ptr noundef @c__1, ptr noundef %arrayidx180, ptr noundef @c__1, ptr noundef %arrayidx186, ptr noundef %180)
  %181 = load ptr, ptr %e.addr, align 8
  %182 = load i32, ptr %i__, align 4
  %idxprom188 = sext i32 %182 to i64
  %arrayidx189 = getelementptr inbounds double, ptr %181, i64 %idxprom188
  %183 = load double, ptr %arrayidx189, align 8
  %184 = load ptr, ptr %a.addr, align 8
  %185 = load i32, ptr %i__, align 4
  %add190 = add nsw i32 %185, 1
  %186 = load i32, ptr %i__, align 4
  %187 = load i32, ptr %a_dim1, align 4
  %mul191 = mul nsw i32 %186, %187
  %add192 = add nsw i32 %add190, %mul191
  %idxprom193 = sext i32 %add192 to i64
  %arrayidx194 = getelementptr inbounds double, ptr %184, i64 %idxprom193
  store double %183, ptr %arrayidx194, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.then132, %cond.end117
  %188 = load ptr, ptr %a.addr, align 8
  %189 = load i32, ptr %i__, align 4
  %190 = load i32, ptr %i__, align 4
  %191 = load i32, ptr %a_dim1, align 4
  %mul196 = mul nsw i32 %190, %191
  %add197 = add nsw i32 %189, %mul196
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds double, ptr %188, i64 %idxprom198
  %192 = load double, ptr %arrayidx199, align 8
  %193 = load ptr, ptr %d__.addr, align 8
  %194 = load i32, ptr %i__, align 4
  %idxprom200 = sext i32 %194 to i64
  %arrayidx201 = getelementptr inbounds double, ptr %193, i64 %idxprom200
  store double %192, ptr %arrayidx201, align 8
  %195 = load double, ptr %taui, align 8
  %196 = load ptr, ptr %tau.addr, align 8
  %197 = load i32, ptr %i__, align 4
  %idxprom202 = sext i32 %197 to i64
  %arrayidx203 = getelementptr inbounds double, ptr %196, i64 %idxprom202
  store double %195, ptr %arrayidx203, align 8
  br label %for.inc204

for.inc204:                                       ; preds = %if.end195
  %198 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %198, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond104, !llvm.loop !7

for.end205:                                       ; preds = %for.cond104
  %199 = load ptr, ptr %a.addr, align 8
  %200 = load ptr, ptr %n.addr, align 8
  %201 = load i32, ptr %200, align 4
  %202 = load ptr, ptr %n.addr, align 8
  %203 = load i32, ptr %202, align 4
  %204 = load i32, ptr %a_dim1, align 4
  %mul206 = mul nsw i32 %203, %204
  %add207 = add nsw i32 %201, %mul206
  %idxprom208 = sext i32 %add207 to i64
  %arrayidx209 = getelementptr inbounds double, ptr %199, i64 %idxprom208
  %205 = load double, ptr %arrayidx209, align 8
  %206 = load ptr, ptr %d__.addr, align 8
  %207 = load ptr, ptr %n.addr, align 8
  %208 = load i32, ptr %207, align 4
  %idxprom210 = sext i32 %208 to i64
  %arrayidx211 = getelementptr inbounds double, ptr %206, i64 %idxprom210
  store double %205, ptr %arrayidx211, align 8
  br label %if.end212

if.end212:                                        ; preds = %for.end205, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end212, %if.then17, %if.then13
  %209 = load i32, ptr %retval, align 4
  ret i32 %209
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @dlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dsymv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare double @ddot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dsyr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

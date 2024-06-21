; ModuleID = 'samples/527.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dsytf2_rook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"DSYTF2_ROOK\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dsytf2_rook_(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %ipiv, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca i32, align 4
  %t = alloca double, align 8
  %d11 = alloca double, align 8
  %d12 = alloca double, align 8
  %d21 = alloca double, align 8
  %d22 = alloca double, align 8
  %ii = alloca i32, align 4
  %kk = alloca i32, align 4
  %kp = alloca i32, align 4
  %wk = alloca double, align 8
  %wkm1 = alloca double, align 8
  %wkp1 = alloca double, align 8
  %done = alloca i32, align 4
  %imax = alloca i32, align 4
  %jmax = alloca i32, align 4
  %alpha = alloca double, align 8
  %dtemp = alloca double, align 8
  %sfmin = alloca double, align 8
  %itemp = alloca i32, align 4
  %kstep = alloca i32, align 4
  %upper = alloca i32, align 4
  %absakk = alloca double, align 8
  %colmax = alloca double, align 8
  %rowmax = alloca double, align 8
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %ipiv, ptr %ipiv.addr, align 8
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
  %5 = load ptr, ptr %ipiv.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8
  %6 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %6, align 4
  %7 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %7, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4
  %8 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %9 = load ptr, ptr %uplo.addr, align 8
  %call1 = call i32 @lsame_(ptr noundef %9, ptr noundef @.str.1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %10, align 4
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %n.addr, align 8
  %12 = load i32, ptr %11, align 4
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %13 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %13, align 4
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %14 = load ptr, ptr %lda.addr, align 8
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %n.addr, align 8
  %17 = load i32, ptr %16, align 4
  %cmp5 = icmp sge i32 1, %17
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else4
  br label %cond.end

cond.false:                                       ; preds = %if.else4
  %18 = load ptr, ptr %n.addr, align 8
  %19 = load i32, ptr %18, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %19, %cond.false ]
  %cmp6 = icmp slt i32 %15, %cond
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %cond.end
  %20 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %cond.end
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  %21 = load ptr, ptr %info.addr, align 8
  %22 = load i32, ptr %21, align 4
  %cmp10 = icmp ne i32 %22, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %23 = load ptr, ptr %info.addr, align 8
  %24 = load i32, ptr %23, align 4
  %sub = sub nsw i32 0, %24
  store i32 %sub, ptr %i__1, align 4
  %call12 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %call14 = call double @sqrt(double noundef 1.700000e+01) #4
  %add15 = fadd double %call14, 1.000000e+00
  %div = fdiv double %add15, 8.000000e+00
  store double %div, ptr %alpha, align 8
  %call16 = call double @dlamch_(ptr noundef @.str.3)
  store double %call16, ptr %sfmin, align 8
  %25 = load i32, ptr %upper, align 4
  %tobool17 = icmp ne i32 %25, 0
  br i1 %tobool17, label %if.then18, label %if.else423

if.then18:                                        ; preds = %if.end13
  %26 = load ptr, ptr %n.addr, align 8
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %k, align 4
  br label %L10

L10:                                              ; preds = %if.end421, %if.then18
  %28 = load i32, ptr %k, align 4
  %cmp19 = icmp slt i32 %28, 1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %L10
  br label %L70

if.end21:                                         ; preds = %L10
  store i32 1, ptr %kstep, align 4
  %29 = load i32, ptr %k, align 4
  store i32 %29, ptr %p, align 4
  %30 = load ptr, ptr %a.addr, align 8
  %31 = load i32, ptr %k, align 4
  %32 = load i32, ptr %k, align 4
  %33 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %32, %33
  %add22 = add nsw i32 %31, %mul
  %idxprom = sext i32 %add22 to i64
  %arrayidx = getelementptr inbounds double, ptr %30, i64 %idxprom
  %34 = load double, ptr %arrayidx, align 8
  store double %34, ptr %d__1, align 8
  %35 = load double, ptr %d__1, align 8
  %cmp23 = fcmp oge double %35, 0.000000e+00
  br i1 %cmp23, label %cond.true24, label %cond.false25

cond.true24:                                      ; preds = %if.end21
  %36 = load double, ptr %d__1, align 8
  br label %cond.end26

cond.false25:                                     ; preds = %if.end21
  %37 = load double, ptr %d__1, align 8
  %fneg = fneg double %37
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false25, %cond.true24
  %cond27 = phi double [ %36, %cond.true24 ], [ %fneg, %cond.false25 ]
  store double %cond27, ptr %absakk, align 8
  %38 = load i32, ptr %k, align 4
  %cmp28 = icmp sgt i32 %38, 1
  br i1 %cmp28, label %if.then29, label %if.else46

if.then29:                                        ; preds = %cond.end26
  %39 = load i32, ptr %k, align 4
  %sub30 = sub nsw i32 %39, 1
  store i32 %sub30, ptr %i__1, align 4
  %40 = load ptr, ptr %a.addr, align 8
  %41 = load i32, ptr %k, align 4
  %42 = load i32, ptr %a_dim1, align 4
  %mul31 = mul nsw i32 %41, %42
  %add32 = add nsw i32 %mul31, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds double, ptr %40, i64 %idxprom33
  %call35 = call i32 @idamax_(ptr noundef %i__1, ptr noundef %arrayidx34, ptr noundef @c__1)
  store i32 %call35, ptr %imax, align 4
  %43 = load ptr, ptr %a.addr, align 8
  %44 = load i32, ptr %imax, align 4
  %45 = load i32, ptr %k, align 4
  %46 = load i32, ptr %a_dim1, align 4
  %mul36 = mul nsw i32 %45, %46
  %add37 = add nsw i32 %44, %mul36
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %43, i64 %idxprom38
  %47 = load double, ptr %arrayidx39, align 8
  store double %47, ptr %d__1, align 8
  %48 = load double, ptr %d__1, align 8
  %cmp40 = fcmp oge double %48, 0.000000e+00
  br i1 %cmp40, label %cond.true41, label %cond.false42

cond.true41:                                      ; preds = %if.then29
  %49 = load double, ptr %d__1, align 8
  br label %cond.end44

cond.false42:                                     ; preds = %if.then29
  %50 = load double, ptr %d__1, align 8
  %fneg43 = fneg double %50
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false42, %cond.true41
  %cond45 = phi double [ %49, %cond.true41 ], [ %fneg43, %cond.false42 ]
  store double %cond45, ptr %colmax, align 8
  br label %if.end47

if.else46:                                        ; preds = %cond.end26
  store double 0.000000e+00, ptr %colmax, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %cond.end44
  %51 = load double, ptr %absakk, align 8
  %52 = load double, ptr %colmax, align 8
  %cmp48 = fcmp oge double %51, %52
  br i1 %cmp48, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %if.end47
  %53 = load double, ptr %absakk, align 8
  br label %cond.end51

cond.false50:                                     ; preds = %if.end47
  %54 = load double, ptr %colmax, align 8
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false50, %cond.true49
  %cond52 = phi double [ %53, %cond.true49 ], [ %54, %cond.false50 ]
  %cmp53 = fcmp oeq double %cond52, 0.000000e+00
  br i1 %cmp53, label %if.then54, label %if.else58

if.then54:                                        ; preds = %cond.end51
  %55 = load ptr, ptr %info.addr, align 8
  %56 = load i32, ptr %55, align 4
  %cmp55 = icmp eq i32 %56, 0
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then54
  %57 = load i32, ptr %k, align 4
  %58 = load ptr, ptr %info.addr, align 8
  store i32 %57, ptr %58, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then54
  %59 = load i32, ptr %k, align 4
  store i32 %59, ptr %kp, align 4
  br label %if.end408

if.else58:                                        ; preds = %cond.end51
  %60 = load double, ptr %absakk, align 8
  %61 = load double, ptr %alpha, align 8
  %62 = load double, ptr %colmax, align 8
  %mul59 = fmul double %61, %62
  %cmp60 = fcmp olt double %60, %mul59
  br i1 %cmp60, label %if.else62, label %if.then61

if.then61:                                        ; preds = %if.else58
  %63 = load i32, ptr %k, align 4
  store i32 %63, ptr %kp, align 4
  br label %if.end130

if.else62:                                        ; preds = %if.else58
  store i32 0, ptr %done, align 4
  br label %L12

L12:                                              ; preds = %if.then128, %if.else62
  %64 = load i32, ptr %imax, align 4
  %65 = load i32, ptr %k, align 4
  %cmp63 = icmp ne i32 %64, %65
  br i1 %cmp63, label %if.then64, label %if.else83

if.then64:                                        ; preds = %L12
  %66 = load i32, ptr %k, align 4
  %67 = load i32, ptr %imax, align 4
  %sub65 = sub nsw i32 %66, %67
  store i32 %sub65, ptr %i__1, align 4
  %68 = load i32, ptr %imax, align 4
  %69 = load ptr, ptr %a.addr, align 8
  %70 = load i32, ptr %imax, align 4
  %71 = load i32, ptr %imax, align 4
  %add66 = add nsw i32 %71, 1
  %72 = load i32, ptr %a_dim1, align 4
  %mul67 = mul nsw i32 %add66, %72
  %add68 = add nsw i32 %70, %mul67
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds double, ptr %69, i64 %idxprom69
  %73 = load ptr, ptr %lda.addr, align 8
  %call71 = call i32 @idamax_(ptr noundef %i__1, ptr noundef %arrayidx70, ptr noundef %73)
  %add72 = add nsw i32 %68, %call71
  store i32 %add72, ptr %jmax, align 4
  %74 = load ptr, ptr %a.addr, align 8
  %75 = load i32, ptr %imax, align 4
  %76 = load i32, ptr %jmax, align 4
  %77 = load i32, ptr %a_dim1, align 4
  %mul73 = mul nsw i32 %76, %77
  %add74 = add nsw i32 %75, %mul73
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds double, ptr %74, i64 %idxprom75
  %78 = load double, ptr %arrayidx76, align 8
  store double %78, ptr %d__1, align 8
  %79 = load double, ptr %d__1, align 8
  %cmp77 = fcmp oge double %79, 0.000000e+00
  br i1 %cmp77, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %if.then64
  %80 = load double, ptr %d__1, align 8
  br label %cond.end81

cond.false79:                                     ; preds = %if.then64
  %81 = load double, ptr %d__1, align 8
  %fneg80 = fneg double %81
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false79, %cond.true78
  %cond82 = phi double [ %80, %cond.true78 ], [ %fneg80, %cond.false79 ]
  store double %cond82, ptr %rowmax, align 8
  br label %if.end84

if.else83:                                        ; preds = %L12
  store double 0.000000e+00, ptr %rowmax, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %cond.end81
  %82 = load i32, ptr %imax, align 4
  %cmp85 = icmp sgt i32 %82, 1
  br i1 %cmp85, label %if.then86, label %if.end106

if.then86:                                        ; preds = %if.end84
  %83 = load i32, ptr %imax, align 4
  %sub87 = sub nsw i32 %83, 1
  store i32 %sub87, ptr %i__1, align 4
  %84 = load ptr, ptr %a.addr, align 8
  %85 = load i32, ptr %imax, align 4
  %86 = load i32, ptr %a_dim1, align 4
  %mul88 = mul nsw i32 %85, %86
  %add89 = add nsw i32 %mul88, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds double, ptr %84, i64 %idxprom90
  %call92 = call i32 @idamax_(ptr noundef %i__1, ptr noundef %arrayidx91, ptr noundef @c__1)
  store i32 %call92, ptr %itemp, align 4
  %87 = load ptr, ptr %a.addr, align 8
  %88 = load i32, ptr %itemp, align 4
  %89 = load i32, ptr %imax, align 4
  %90 = load i32, ptr %a_dim1, align 4
  %mul93 = mul nsw i32 %89, %90
  %add94 = add nsw i32 %88, %mul93
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds double, ptr %87, i64 %idxprom95
  %91 = load double, ptr %arrayidx96, align 8
  store double %91, ptr %d__1, align 8
  %92 = load double, ptr %d__1, align 8
  %cmp97 = fcmp oge double %92, 0.000000e+00
  br i1 %cmp97, label %cond.true98, label %cond.false99

cond.true98:                                      ; preds = %if.then86
  %93 = load double, ptr %d__1, align 8
  br label %cond.end101

cond.false99:                                     ; preds = %if.then86
  %94 = load double, ptr %d__1, align 8
  %fneg100 = fneg double %94
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false99, %cond.true98
  %cond102 = phi double [ %93, %cond.true98 ], [ %fneg100, %cond.false99 ]
  store double %cond102, ptr %dtemp, align 8
  %95 = load double, ptr %dtemp, align 8
  %96 = load double, ptr %rowmax, align 8
  %cmp103 = fcmp ogt double %95, %96
  br i1 %cmp103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %cond.end101
  %97 = load double, ptr %dtemp, align 8
  store double %97, ptr %rowmax, align 8
  %98 = load i32, ptr %itemp, align 4
  store i32 %98, ptr %jmax, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %cond.end101
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.end84
  %99 = load ptr, ptr %a.addr, align 8
  %100 = load i32, ptr %imax, align 4
  %101 = load i32, ptr %imax, align 4
  %102 = load i32, ptr %a_dim1, align 4
  %mul107 = mul nsw i32 %101, %102
  %add108 = add nsw i32 %100, %mul107
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds double, ptr %99, i64 %idxprom109
  %103 = load double, ptr %arrayidx110, align 8
  store double %103, ptr %d__1, align 8
  %104 = load double, ptr %d__1, align 8
  %cmp111 = fcmp oge double %104, 0.000000e+00
  br i1 %cmp111, label %cond.true112, label %cond.false113

cond.true112:                                     ; preds = %if.end106
  %105 = load double, ptr %d__1, align 8
  br label %cond.end115

cond.false113:                                    ; preds = %if.end106
  %106 = load double, ptr %d__1, align 8
  %fneg114 = fneg double %106
  br label %cond.end115

cond.end115:                                      ; preds = %cond.false113, %cond.true112
  %cond116 = phi double [ %105, %cond.true112 ], [ %fneg114, %cond.false113 ]
  %107 = load double, ptr %alpha, align 8
  %108 = load double, ptr %rowmax, align 8
  %mul117 = fmul double %107, %108
  %cmp118 = fcmp olt double %cond116, %mul117
  br i1 %cmp118, label %if.else120, label %if.then119

if.then119:                                       ; preds = %cond.end115
  %109 = load i32, ptr %imax, align 4
  store i32 %109, ptr %kp, align 4
  store i32 1, ptr %done, align 4
  br label %if.end126

if.else120:                                       ; preds = %cond.end115
  %110 = load i32, ptr %p, align 4
  %111 = load i32, ptr %jmax, align 4
  %cmp121 = icmp eq i32 %110, %111
  br i1 %cmp121, label %if.then123, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else120
  %112 = load double, ptr %rowmax, align 8
  %113 = load double, ptr %colmax, align 8
  %cmp122 = fcmp ole double %112, %113
  br i1 %cmp122, label %if.then123, label %if.else124

if.then123:                                       ; preds = %lor.lhs.false, %if.else120
  %114 = load i32, ptr %imax, align 4
  store i32 %114, ptr %kp, align 4
  store i32 2, ptr %kstep, align 4
  store i32 1, ptr %done, align 4
  br label %if.end125

if.else124:                                       ; preds = %lor.lhs.false
  %115 = load i32, ptr %imax, align 4
  store i32 %115, ptr %p, align 4
  %116 = load double, ptr %rowmax, align 8
  store double %116, ptr %colmax, align 8
  %117 = load i32, ptr %jmax, align 4
  store i32 %117, ptr %imax, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.else124, %if.then123
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then119
  %118 = load i32, ptr %done, align 4
  %tobool127 = icmp ne i32 %118, 0
  br i1 %tobool127, label %if.end129, label %if.then128

if.then128:                                       ; preds = %if.end126
  br label %L12

if.end129:                                        ; preds = %if.end126
  br label %if.end130

if.end130:                                        ; preds = %if.end129, %if.then61
  %119 = load i32, ptr %kstep, align 4
  %cmp131 = icmp eq i32 %119, 2
  br i1 %cmp131, label %land.lhs.true132, label %if.end181

land.lhs.true132:                                 ; preds = %if.end130
  %120 = load i32, ptr %p, align 4
  %121 = load i32, ptr %k, align 4
  %cmp133 = icmp ne i32 %120, %121
  br i1 %cmp133, label %if.then134, label %if.end181

if.then134:                                       ; preds = %land.lhs.true132
  %122 = load i32, ptr %p, align 4
  %cmp135 = icmp sgt i32 %122, 1
  br i1 %cmp135, label %if.then136, label %if.end147

if.then136:                                       ; preds = %if.then134
  %123 = load i32, ptr %p, align 4
  %sub137 = sub nsw i32 %123, 1
  store i32 %sub137, ptr %i__1, align 4
  %124 = load ptr, ptr %a.addr, align 8
  %125 = load i32, ptr %k, align 4
  %126 = load i32, ptr %a_dim1, align 4
  %mul138 = mul nsw i32 %125, %126
  %add139 = add nsw i32 %mul138, 1
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds double, ptr %124, i64 %idxprom140
  %127 = load ptr, ptr %a.addr, align 8
  %128 = load i32, ptr %p, align 4
  %129 = load i32, ptr %a_dim1, align 4
  %mul142 = mul nsw i32 %128, %129
  %add143 = add nsw i32 %mul142, 1
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds double, ptr %127, i64 %idxprom144
  %call146 = call i32 @dswap_(ptr noundef %i__1, ptr noundef %arrayidx141, ptr noundef @c__1, ptr noundef %arrayidx145, ptr noundef @c__1)
  br label %if.end147

if.end147:                                        ; preds = %if.then136, %if.then134
  %130 = load i32, ptr %p, align 4
  %131 = load i32, ptr %k, align 4
  %sub148 = sub nsw i32 %131, 1
  %cmp149 = icmp slt i32 %130, %sub148
  br i1 %cmp149, label %if.then150, label %if.end164

if.then150:                                       ; preds = %if.end147
  %132 = load i32, ptr %k, align 4
  %133 = load i32, ptr %p, align 4
  %sub151 = sub nsw i32 %132, %133
  %sub152 = sub nsw i32 %sub151, 1
  store i32 %sub152, ptr %i__1, align 4
  %134 = load ptr, ptr %a.addr, align 8
  %135 = load i32, ptr %p, align 4
  %add153 = add nsw i32 %135, 1
  %136 = load i32, ptr %k, align 4
  %137 = load i32, ptr %a_dim1, align 4
  %mul154 = mul nsw i32 %136, %137
  %add155 = add nsw i32 %add153, %mul154
  %idxprom156 = sext i32 %add155 to i64
  %arrayidx157 = getelementptr inbounds double, ptr %134, i64 %idxprom156
  %138 = load ptr, ptr %a.addr, align 8
  %139 = load i32, ptr %p, align 4
  %140 = load i32, ptr %p, align 4
  %add158 = add nsw i32 %140, 1
  %141 = load i32, ptr %a_dim1, align 4
  %mul159 = mul nsw i32 %add158, %141
  %add160 = add nsw i32 %139, %mul159
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds double, ptr %138, i64 %idxprom161
  %142 = load ptr, ptr %lda.addr, align 8
  %call163 = call i32 @dswap_(ptr noundef %i__1, ptr noundef %arrayidx157, ptr noundef @c__1, ptr noundef %arrayidx162, ptr noundef %142)
  br label %if.end164

if.end164:                                        ; preds = %if.then150, %if.end147
  %143 = load ptr, ptr %a.addr, align 8
  %144 = load i32, ptr %k, align 4
  %145 = load i32, ptr %k, align 4
  %146 = load i32, ptr %a_dim1, align 4
  %mul165 = mul nsw i32 %145, %146
  %add166 = add nsw i32 %144, %mul165
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds double, ptr %143, i64 %idxprom167
  %147 = load double, ptr %arrayidx168, align 8
  store double %147, ptr %t, align 8
  %148 = load ptr, ptr %a.addr, align 8
  %149 = load i32, ptr %p, align 4
  %150 = load i32, ptr %p, align 4
  %151 = load i32, ptr %a_dim1, align 4
  %mul169 = mul nsw i32 %150, %151
  %add170 = add nsw i32 %149, %mul169
  %idxprom171 = sext i32 %add170 to i64
  %arrayidx172 = getelementptr inbounds double, ptr %148, i64 %idxprom171
  %152 = load double, ptr %arrayidx172, align 8
  %153 = load ptr, ptr %a.addr, align 8
  %154 = load i32, ptr %k, align 4
  %155 = load i32, ptr %k, align 4
  %156 = load i32, ptr %a_dim1, align 4
  %mul173 = mul nsw i32 %155, %156
  %add174 = add nsw i32 %154, %mul173
  %idxprom175 = sext i32 %add174 to i64
  %arrayidx176 = getelementptr inbounds double, ptr %153, i64 %idxprom175
  store double %152, ptr %arrayidx176, align 8
  %157 = load double, ptr %t, align 8
  %158 = load ptr, ptr %a.addr, align 8
  %159 = load i32, ptr %p, align 4
  %160 = load i32, ptr %p, align 4
  %161 = load i32, ptr %a_dim1, align 4
  %mul177 = mul nsw i32 %160, %161
  %add178 = add nsw i32 %159, %mul177
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds double, ptr %158, i64 %idxprom179
  store double %157, ptr %arrayidx180, align 8
  br label %if.end181

if.end181:                                        ; preds = %if.end164, %land.lhs.true132, %if.end130
  %162 = load i32, ptr %k, align 4
  %163 = load i32, ptr %kstep, align 4
  %sub182 = sub nsw i32 %162, %163
  %add183 = add nsw i32 %sub182, 1
  store i32 %add183, ptr %kk, align 4
  %164 = load i32, ptr %kp, align 4
  %165 = load i32, ptr %kk, align 4
  %cmp184 = icmp ne i32 %164, %165
  br i1 %cmp184, label %if.then185, label %if.end255

if.then185:                                       ; preds = %if.end181
  %166 = load i32, ptr %kp, align 4
  %cmp186 = icmp sgt i32 %166, 1
  br i1 %cmp186, label %if.then187, label %if.end198

if.then187:                                       ; preds = %if.then185
  %167 = load i32, ptr %kp, align 4
  %sub188 = sub nsw i32 %167, 1
  store i32 %sub188, ptr %i__1, align 4
  %168 = load ptr, ptr %a.addr, align 8
  %169 = load i32, ptr %kk, align 4
  %170 = load i32, ptr %a_dim1, align 4
  %mul189 = mul nsw i32 %169, %170
  %add190 = add nsw i32 %mul189, 1
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds double, ptr %168, i64 %idxprom191
  %171 = load ptr, ptr %a.addr, align 8
  %172 = load i32, ptr %kp, align 4
  %173 = load i32, ptr %a_dim1, align 4
  %mul193 = mul nsw i32 %172, %173
  %add194 = add nsw i32 %mul193, 1
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds double, ptr %171, i64 %idxprom195
  %call197 = call i32 @dswap_(ptr noundef %i__1, ptr noundef %arrayidx192, ptr noundef @c__1, ptr noundef %arrayidx196, ptr noundef @c__1)
  br label %if.end198

if.end198:                                        ; preds = %if.then187, %if.then185
  %174 = load i32, ptr %kk, align 4
  %cmp199 = icmp sgt i32 %174, 1
  br i1 %cmp199, label %land.lhs.true200, label %if.end217

land.lhs.true200:                                 ; preds = %if.end198
  %175 = load i32, ptr %kp, align 4
  %176 = load i32, ptr %kk, align 4
  %sub201 = sub nsw i32 %176, 1
  %cmp202 = icmp slt i32 %175, %sub201
  br i1 %cmp202, label %if.then203, label %if.end217

if.then203:                                       ; preds = %land.lhs.true200
  %177 = load i32, ptr %kk, align 4
  %178 = load i32, ptr %kp, align 4
  %sub204 = sub nsw i32 %177, %178
  %sub205 = sub nsw i32 %sub204, 1
  store i32 %sub205, ptr %i__1, align 4
  %179 = load ptr, ptr %a.addr, align 8
  %180 = load i32, ptr %kp, align 4
  %add206 = add nsw i32 %180, 1
  %181 = load i32, ptr %kk, align 4
  %182 = load i32, ptr %a_dim1, align 4
  %mul207 = mul nsw i32 %181, %182
  %add208 = add nsw i32 %add206, %mul207
  %idxprom209 = sext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds double, ptr %179, i64 %idxprom209
  %183 = load ptr, ptr %a.addr, align 8
  %184 = load i32, ptr %kp, align 4
  %185 = load i32, ptr %kp, align 4
  %add211 = add nsw i32 %185, 1
  %186 = load i32, ptr %a_dim1, align 4
  %mul212 = mul nsw i32 %add211, %186
  %add213 = add nsw i32 %184, %mul212
  %idxprom214 = sext i32 %add213 to i64
  %arrayidx215 = getelementptr inbounds double, ptr %183, i64 %idxprom214
  %187 = load ptr, ptr %lda.addr, align 8
  %call216 = call i32 @dswap_(ptr noundef %i__1, ptr noundef %arrayidx210, ptr noundef @c__1, ptr noundef %arrayidx215, ptr noundef %187)
  br label %if.end217

if.end217:                                        ; preds = %if.then203, %land.lhs.true200, %if.end198
  %188 = load ptr, ptr %a.addr, align 8
  %189 = load i32, ptr %kk, align 4
  %190 = load i32, ptr %kk, align 4
  %191 = load i32, ptr %a_dim1, align 4
  %mul218 = mul nsw i32 %190, %191
  %add219 = add nsw i32 %189, %mul218
  %idxprom220 = sext i32 %add219 to i64
  %arrayidx221 = getelementptr inbounds double, ptr %188, i64 %idxprom220
  %192 = load double, ptr %arrayidx221, align 8
  store double %192, ptr %t, align 8
  %193 = load ptr, ptr %a.addr, align 8
  %194 = load i32, ptr %kp, align 4
  %195 = load i32, ptr %kp, align 4
  %196 = load i32, ptr %a_dim1, align 4
  %mul222 = mul nsw i32 %195, %196
  %add223 = add nsw i32 %194, %mul222
  %idxprom224 = sext i32 %add223 to i64
  %arrayidx225 = getelementptr inbounds double, ptr %193, i64 %idxprom224
  %197 = load double, ptr %arrayidx225, align 8
  %198 = load ptr, ptr %a.addr, align 8
  %199 = load i32, ptr %kk, align 4
  %200 = load i32, ptr %kk, align 4
  %201 = load i32, ptr %a_dim1, align 4
  %mul226 = mul nsw i32 %200, %201
  %add227 = add nsw i32 %199, %mul226
  %idxprom228 = sext i32 %add227 to i64
  %arrayidx229 = getelementptr inbounds double, ptr %198, i64 %idxprom228
  store double %197, ptr %arrayidx229, align 8
  %202 = load double, ptr %t, align 8
  %203 = load ptr, ptr %a.addr, align 8
  %204 = load i32, ptr %kp, align 4
  %205 = load i32, ptr %kp, align 4
  %206 = load i32, ptr %a_dim1, align 4
  %mul230 = mul nsw i32 %205, %206
  %add231 = add nsw i32 %204, %mul230
  %idxprom232 = sext i32 %add231 to i64
  %arrayidx233 = getelementptr inbounds double, ptr %203, i64 %idxprom232
  store double %202, ptr %arrayidx233, align 8
  %207 = load i32, ptr %kstep, align 4
  %cmp234 = icmp eq i32 %207, 2
  br i1 %cmp234, label %if.then235, label %if.end254

if.then235:                                       ; preds = %if.end217
  %208 = load ptr, ptr %a.addr, align 8
  %209 = load i32, ptr %k, align 4
  %sub236 = sub nsw i32 %209, 1
  %210 = load i32, ptr %k, align 4
  %211 = load i32, ptr %a_dim1, align 4
  %mul237 = mul nsw i32 %210, %211
  %add238 = add nsw i32 %sub236, %mul237
  %idxprom239 = sext i32 %add238 to i64
  %arrayidx240 = getelementptr inbounds double, ptr %208, i64 %idxprom239
  %212 = load double, ptr %arrayidx240, align 8
  store double %212, ptr %t, align 8
  %213 = load ptr, ptr %a.addr, align 8
  %214 = load i32, ptr %kp, align 4
  %215 = load i32, ptr %k, align 4
  %216 = load i32, ptr %a_dim1, align 4
  %mul241 = mul nsw i32 %215, %216
  %add242 = add nsw i32 %214, %mul241
  %idxprom243 = sext i32 %add242 to i64
  %arrayidx244 = getelementptr inbounds double, ptr %213, i64 %idxprom243
  %217 = load double, ptr %arrayidx244, align 8
  %218 = load ptr, ptr %a.addr, align 8
  %219 = load i32, ptr %k, align 4
  %sub245 = sub nsw i32 %219, 1
  %220 = load i32, ptr %k, align 4
  %221 = load i32, ptr %a_dim1, align 4
  %mul246 = mul nsw i32 %220, %221
  %add247 = add nsw i32 %sub245, %mul246
  %idxprom248 = sext i32 %add247 to i64
  %arrayidx249 = getelementptr inbounds double, ptr %218, i64 %idxprom248
  store double %217, ptr %arrayidx249, align 8
  %222 = load double, ptr %t, align 8
  %223 = load ptr, ptr %a.addr, align 8
  %224 = load i32, ptr %kp, align 4
  %225 = load i32, ptr %k, align 4
  %226 = load i32, ptr %a_dim1, align 4
  %mul250 = mul nsw i32 %225, %226
  %add251 = add nsw i32 %224, %mul250
  %idxprom252 = sext i32 %add251 to i64
  %arrayidx253 = getelementptr inbounds double, ptr %223, i64 %idxprom252
  store double %222, ptr %arrayidx253, align 8
  br label %if.end254

if.end254:                                        ; preds = %if.then235, %if.end217
  br label %if.end255

if.end255:                                        ; preds = %if.end254, %if.end181
  %227 = load i32, ptr %kstep, align 4
  %cmp256 = icmp eq i32 %227, 1
  br i1 %cmp256, label %if.then257, label %if.else315

if.then257:                                       ; preds = %if.end255
  %228 = load i32, ptr %k, align 4
  %cmp258 = icmp sgt i32 %228, 1
  br i1 %cmp258, label %if.then259, label %if.end314

if.then259:                                       ; preds = %if.then257
  %229 = load ptr, ptr %a.addr, align 8
  %230 = load i32, ptr %k, align 4
  %231 = load i32, ptr %k, align 4
  %232 = load i32, ptr %a_dim1, align 4
  %mul260 = mul nsw i32 %231, %232
  %add261 = add nsw i32 %230, %mul260
  %idxprom262 = sext i32 %add261 to i64
  %arrayidx263 = getelementptr inbounds double, ptr %229, i64 %idxprom262
  %233 = load double, ptr %arrayidx263, align 8
  store double %233, ptr %d__1, align 8
  %234 = load double, ptr %d__1, align 8
  %cmp264 = fcmp oge double %234, 0.000000e+00
  br i1 %cmp264, label %cond.true265, label %cond.false266

cond.true265:                                     ; preds = %if.then259
  %235 = load double, ptr %d__1, align 8
  br label %cond.end268

cond.false266:                                    ; preds = %if.then259
  %236 = load double, ptr %d__1, align 8
  %fneg267 = fneg double %236
  br label %cond.end268

cond.end268:                                      ; preds = %cond.false266, %cond.true265
  %cond269 = phi double [ %235, %cond.true265 ], [ %fneg267, %cond.false266 ]
  %237 = load double, ptr %sfmin, align 8
  %cmp270 = fcmp oge double %cond269, %237
  br i1 %cmp270, label %if.then271, label %if.else292

if.then271:                                       ; preds = %cond.end268
  %238 = load ptr, ptr %a.addr, align 8
  %239 = load i32, ptr %k, align 4
  %240 = load i32, ptr %k, align 4
  %241 = load i32, ptr %a_dim1, align 4
  %mul272 = mul nsw i32 %240, %241
  %add273 = add nsw i32 %239, %mul272
  %idxprom274 = sext i32 %add273 to i64
  %arrayidx275 = getelementptr inbounds double, ptr %238, i64 %idxprom274
  %242 = load double, ptr %arrayidx275, align 8
  %div276 = fdiv double 1.000000e+00, %242
  store double %div276, ptr %d11, align 8
  %243 = load i32, ptr %k, align 4
  %sub277 = sub nsw i32 %243, 1
  store i32 %sub277, ptr %i__1, align 4
  %244 = load double, ptr %d11, align 8
  %fneg278 = fneg double %244
  store double %fneg278, ptr %d__1, align 8
  %245 = load ptr, ptr %uplo.addr, align 8
  %246 = load ptr, ptr %a.addr, align 8
  %247 = load i32, ptr %k, align 4
  %248 = load i32, ptr %a_dim1, align 4
  %mul279 = mul nsw i32 %247, %248
  %add280 = add nsw i32 %mul279, 1
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds double, ptr %246, i64 %idxprom281
  %249 = load ptr, ptr %a.addr, align 8
  %250 = load i32, ptr %a_offset, align 4
  %idxprom283 = sext i32 %250 to i64
  %arrayidx284 = getelementptr inbounds double, ptr %249, i64 %idxprom283
  %251 = load ptr, ptr %lda.addr, align 8
  %call285 = call i32 @dsyr_(ptr noundef %245, ptr noundef %i__1, ptr noundef %d__1, ptr noundef %arrayidx282, ptr noundef @c__1, ptr noundef %arrayidx284, ptr noundef %251)
  %252 = load i32, ptr %k, align 4
  %sub286 = sub nsw i32 %252, 1
  store i32 %sub286, ptr %i__1, align 4
  %253 = load ptr, ptr %a.addr, align 8
  %254 = load i32, ptr %k, align 4
  %255 = load i32, ptr %a_dim1, align 4
  %mul287 = mul nsw i32 %254, %255
  %add288 = add nsw i32 %mul287, 1
  %idxprom289 = sext i32 %add288 to i64
  %arrayidx290 = getelementptr inbounds double, ptr %253, i64 %idxprom289
  %call291 = call i32 @dscal_(ptr noundef %i__1, ptr noundef %d11, ptr noundef %arrayidx290, ptr noundef @c__1)
  br label %if.end313

if.else292:                                       ; preds = %cond.end268
  %256 = load ptr, ptr %a.addr, align 8
  %257 = load i32, ptr %k, align 4
  %258 = load i32, ptr %k, align 4
  %259 = load i32, ptr %a_dim1, align 4
  %mul293 = mul nsw i32 %258, %259
  %add294 = add nsw i32 %257, %mul293
  %idxprom295 = sext i32 %add294 to i64
  %arrayidx296 = getelementptr inbounds double, ptr %256, i64 %idxprom295
  %260 = load double, ptr %arrayidx296, align 8
  store double %260, ptr %d11, align 8
  %261 = load i32, ptr %k, align 4
  %sub297 = sub nsw i32 %261, 1
  store i32 %sub297, ptr %i__1, align 4
  store i32 1, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else292
  %262 = load i32, ptr %ii, align 4
  %263 = load i32, ptr %i__1, align 4
  %cmp298 = icmp sle i32 %262, %263
  br i1 %cmp298, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %264 = load double, ptr %d11, align 8
  %265 = load ptr, ptr %a.addr, align 8
  %266 = load i32, ptr %ii, align 4
  %267 = load i32, ptr %k, align 4
  %268 = load i32, ptr %a_dim1, align 4
  %mul299 = mul nsw i32 %267, %268
  %add300 = add nsw i32 %266, %mul299
  %idxprom301 = sext i32 %add300 to i64
  %arrayidx302 = getelementptr inbounds double, ptr %265, i64 %idxprom301
  %269 = load double, ptr %arrayidx302, align 8
  %div303 = fdiv double %269, %264
  store double %div303, ptr %arrayidx302, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %270 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %270, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %271 = load i32, ptr %k, align 4
  %sub304 = sub nsw i32 %271, 1
  store i32 %sub304, ptr %i__1, align 4
  %272 = load double, ptr %d11, align 8
  %fneg305 = fneg double %272
  store double %fneg305, ptr %d__1, align 8
  %273 = load ptr, ptr %uplo.addr, align 8
  %274 = load ptr, ptr %a.addr, align 8
  %275 = load i32, ptr %k, align 4
  %276 = load i32, ptr %a_dim1, align 4
  %mul306 = mul nsw i32 %275, %276
  %add307 = add nsw i32 %mul306, 1
  %idxprom308 = sext i32 %add307 to i64
  %arrayidx309 = getelementptr inbounds double, ptr %274, i64 %idxprom308
  %277 = load ptr, ptr %a.addr, align 8
  %278 = load i32, ptr %a_offset, align 4
  %idxprom310 = sext i32 %278 to i64
  %arrayidx311 = getelementptr inbounds double, ptr %277, i64 %idxprom310
  %279 = load ptr, ptr %lda.addr, align 8
  %call312 = call i32 @dsyr_(ptr noundef %273, ptr noundef %i__1, ptr noundef %d__1, ptr noundef %arrayidx309, ptr noundef @c__1, ptr noundef %arrayidx311, ptr noundef %279)
  br label %if.end313

if.end313:                                        ; preds = %for.end, %if.then271
  br label %if.end314

if.end314:                                        ; preds = %if.end313, %if.then257
  br label %if.end407

if.else315:                                       ; preds = %if.end255
  %280 = load i32, ptr %k, align 4
  %cmp316 = icmp sgt i32 %280, 2
  br i1 %cmp316, label %if.then317, label %if.end406

if.then317:                                       ; preds = %if.else315
  %281 = load ptr, ptr %a.addr, align 8
  %282 = load i32, ptr %k, align 4
  %sub318 = sub nsw i32 %282, 1
  %283 = load i32, ptr %k, align 4
  %284 = load i32, ptr %a_dim1, align 4
  %mul319 = mul nsw i32 %283, %284
  %add320 = add nsw i32 %sub318, %mul319
  %idxprom321 = sext i32 %add320 to i64
  %arrayidx322 = getelementptr inbounds double, ptr %281, i64 %idxprom321
  %285 = load double, ptr %arrayidx322, align 8
  store double %285, ptr %d12, align 8
  %286 = load ptr, ptr %a.addr, align 8
  %287 = load i32, ptr %k, align 4
  %sub323 = sub nsw i32 %287, 1
  %288 = load i32, ptr %k, align 4
  %sub324 = sub nsw i32 %288, 1
  %289 = load i32, ptr %a_dim1, align 4
  %mul325 = mul nsw i32 %sub324, %289
  %add326 = add nsw i32 %sub323, %mul325
  %idxprom327 = sext i32 %add326 to i64
  %arrayidx328 = getelementptr inbounds double, ptr %286, i64 %idxprom327
  %290 = load double, ptr %arrayidx328, align 8
  %291 = load double, ptr %d12, align 8
  %div329 = fdiv double %290, %291
  store double %div329, ptr %d22, align 8
  %292 = load ptr, ptr %a.addr, align 8
  %293 = load i32, ptr %k, align 4
  %294 = load i32, ptr %k, align 4
  %295 = load i32, ptr %a_dim1, align 4
  %mul330 = mul nsw i32 %294, %295
  %add331 = add nsw i32 %293, %mul330
  %idxprom332 = sext i32 %add331 to i64
  %arrayidx333 = getelementptr inbounds double, ptr %292, i64 %idxprom332
  %296 = load double, ptr %arrayidx333, align 8
  %297 = load double, ptr %d12, align 8
  %div334 = fdiv double %296, %297
  store double %div334, ptr %d11, align 8
  %298 = load double, ptr %d11, align 8
  %299 = load double, ptr %d22, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %299, double -1.000000e+00)
  %div336 = fdiv double 1.000000e+00, %300
  store double %div336, ptr %t, align 8
  %301 = load i32, ptr %k, align 4
  %sub337 = sub nsw i32 %301, 2
  store i32 %sub337, ptr %j, align 4
  br label %for.cond338

for.cond338:                                      ; preds = %for.inc403, %if.then317
  %302 = load i32, ptr %j, align 4
  %cmp339 = icmp sge i32 %302, 1
  br i1 %cmp339, label %for.body340, label %for.end405

for.body340:                                      ; preds = %for.cond338
  %303 = load double, ptr %t, align 8
  %304 = load double, ptr %d11, align 8
  %305 = load ptr, ptr %a.addr, align 8
  %306 = load i32, ptr %j, align 4
  %307 = load i32, ptr %k, align 4
  %sub341 = sub nsw i32 %307, 1
  %308 = load i32, ptr %a_dim1, align 4
  %mul342 = mul nsw i32 %sub341, %308
  %add343 = add nsw i32 %306, %mul342
  %idxprom344 = sext i32 %add343 to i64
  %arrayidx345 = getelementptr inbounds double, ptr %305, i64 %idxprom344
  %309 = load double, ptr %arrayidx345, align 8
  %310 = load ptr, ptr %a.addr, align 8
  %311 = load i32, ptr %j, align 4
  %312 = load i32, ptr %k, align 4
  %313 = load i32, ptr %a_dim1, align 4
  %mul347 = mul nsw i32 %312, %313
  %add348 = add nsw i32 %311, %mul347
  %idxprom349 = sext i32 %add348 to i64
  %arrayidx350 = getelementptr inbounds double, ptr %310, i64 %idxprom349
  %314 = load double, ptr %arrayidx350, align 8
  %neg = fneg double %314
  %315 = call double @llvm.fmuladd.f64(double %304, double %309, double %neg)
  %mul351 = fmul double %303, %315
  store double %mul351, ptr %wkm1, align 8
  %316 = load double, ptr %t, align 8
  %317 = load double, ptr %d22, align 8
  %318 = load ptr, ptr %a.addr, align 8
  %319 = load i32, ptr %j, align 4
  %320 = load i32, ptr %k, align 4
  %321 = load i32, ptr %a_dim1, align 4
  %mul352 = mul nsw i32 %320, %321
  %add353 = add nsw i32 %319, %mul352
  %idxprom354 = sext i32 %add353 to i64
  %arrayidx355 = getelementptr inbounds double, ptr %318, i64 %idxprom354
  %322 = load double, ptr %arrayidx355, align 8
  %323 = load ptr, ptr %a.addr, align 8
  %324 = load i32, ptr %j, align 4
  %325 = load i32, ptr %k, align 4
  %sub357 = sub nsw i32 %325, 1
  %326 = load i32, ptr %a_dim1, align 4
  %mul358 = mul nsw i32 %sub357, %326
  %add359 = add nsw i32 %324, %mul358
  %idxprom360 = sext i32 %add359 to i64
  %arrayidx361 = getelementptr inbounds double, ptr %323, i64 %idxprom360
  %327 = load double, ptr %arrayidx361, align 8
  %neg362 = fneg double %327
  %328 = call double @llvm.fmuladd.f64(double %317, double %322, double %neg362)
  %mul363 = fmul double %316, %328
  store double %mul363, ptr %wk, align 8
  %329 = load i32, ptr %j, align 4
  store i32 %329, ptr %i__, align 4
  br label %for.cond364

for.cond364:                                      ; preds = %for.inc390, %for.body340
  %330 = load i32, ptr %i__, align 4
  %cmp365 = icmp sge i32 %330, 1
  br i1 %cmp365, label %for.body366, label %for.end391

for.body366:                                      ; preds = %for.cond364
  %331 = load ptr, ptr %a.addr, align 8
  %332 = load i32, ptr %i__, align 4
  %333 = load i32, ptr %j, align 4
  %334 = load i32, ptr %a_dim1, align 4
  %mul367 = mul nsw i32 %333, %334
  %add368 = add nsw i32 %332, %mul367
  %idxprom369 = sext i32 %add368 to i64
  %arrayidx370 = getelementptr inbounds double, ptr %331, i64 %idxprom369
  %335 = load double, ptr %arrayidx370, align 8
  %336 = load ptr, ptr %a.addr, align 8
  %337 = load i32, ptr %i__, align 4
  %338 = load i32, ptr %k, align 4
  %339 = load i32, ptr %a_dim1, align 4
  %mul371 = mul nsw i32 %338, %339
  %add372 = add nsw i32 %337, %mul371
  %idxprom373 = sext i32 %add372 to i64
  %arrayidx374 = getelementptr inbounds double, ptr %336, i64 %idxprom373
  %340 = load double, ptr %arrayidx374, align 8
  %341 = load double, ptr %d12, align 8
  %div375 = fdiv double %340, %341
  %342 = load double, ptr %wk, align 8
  %neg377 = fneg double %div375
  %343 = call double @llvm.fmuladd.f64(double %neg377, double %342, double %335)
  %344 = load ptr, ptr %a.addr, align 8
  %345 = load i32, ptr %i__, align 4
  %346 = load i32, ptr %k, align 4
  %sub378 = sub nsw i32 %346, 1
  %347 = load i32, ptr %a_dim1, align 4
  %mul379 = mul nsw i32 %sub378, %347
  %add380 = add nsw i32 %345, %mul379
  %idxprom381 = sext i32 %add380 to i64
  %arrayidx382 = getelementptr inbounds double, ptr %344, i64 %idxprom381
  %348 = load double, ptr %arrayidx382, align 8
  %349 = load double, ptr %d12, align 8
  %div383 = fdiv double %348, %349
  %350 = load double, ptr %wkm1, align 8
  %neg385 = fneg double %div383
  %351 = call double @llvm.fmuladd.f64(double %neg385, double %350, double %343)
  %352 = load ptr, ptr %a.addr, align 8
  %353 = load i32, ptr %i__, align 4
  %354 = load i32, ptr %j, align 4
  %355 = load i32, ptr %a_dim1, align 4
  %mul386 = mul nsw i32 %354, %355
  %add387 = add nsw i32 %353, %mul386
  %idxprom388 = sext i32 %add387 to i64
  %arrayidx389 = getelementptr inbounds double, ptr %352, i64 %idxprom388
  store double %351, ptr %arrayidx389, align 8
  br label %for.inc390

for.inc390:                                       ; preds = %for.body366
  %356 = load i32, ptr %i__, align 4
  %dec = add nsw i32 %356, -1
  store i32 %dec, ptr %i__, align 4
  br label %for.cond364, !llvm.loop !7

for.end391:                                       ; preds = %for.cond364
  %357 = load double, ptr %wk, align 8
  %358 = load double, ptr %d12, align 8
  %div392 = fdiv double %357, %358
  %359 = load ptr, ptr %a.addr, align 8
  %360 = load i32, ptr %j, align 4
  %361 = load i32, ptr %k, align 4
  %362 = load i32, ptr %a_dim1, align 4
  %mul393 = mul nsw i32 %361, %362
  %add394 = add nsw i32 %360, %mul393
  %idxprom395 = sext i32 %add394 to i64
  %arrayidx396 = getelementptr inbounds double, ptr %359, i64 %idxprom395
  store double %div392, ptr %arrayidx396, align 8
  %363 = load double, ptr %wkm1, align 8
  %364 = load double, ptr %d12, align 8
  %div397 = fdiv double %363, %364
  %365 = load ptr, ptr %a.addr, align 8
  %366 = load i32, ptr %j, align 4
  %367 = load i32, ptr %k, align 4
  %sub398 = sub nsw i32 %367, 1
  %368 = load i32, ptr %a_dim1, align 4
  %mul399 = mul nsw i32 %sub398, %368
  %add400 = add nsw i32 %366, %mul399
  %idxprom401 = sext i32 %add400 to i64
  %arrayidx402 = getelementptr inbounds double, ptr %365, i64 %idxprom401
  store double %div397, ptr %arrayidx402, align 8
  br label %for.inc403

for.inc403:                                       ; preds = %for.end391
  %369 = load i32, ptr %j, align 4
  %dec404 = add nsw i32 %369, -1
  store i32 %dec404, ptr %j, align 4
  br label %for.cond338, !llvm.loop !8

for.end405:                                       ; preds = %for.cond338
  br label %if.end406

if.end406:                                        ; preds = %for.end405, %if.else315
  br label %if.end407

if.end407:                                        ; preds = %if.end406, %if.end314
  br label %if.end408

if.end408:                                        ; preds = %if.end407, %if.end57
  %370 = load i32, ptr %kstep, align 4
  %cmp409 = icmp eq i32 %370, 1
  br i1 %cmp409, label %if.then410, label %if.else413

if.then410:                                       ; preds = %if.end408
  %371 = load i32, ptr %kp, align 4
  %372 = load ptr, ptr %ipiv.addr, align 8
  %373 = load i32, ptr %k, align 4
  %idxprom411 = sext i32 %373 to i64
  %arrayidx412 = getelementptr inbounds i32, ptr %372, i64 %idxprom411
  store i32 %371, ptr %arrayidx412, align 4
  br label %if.end421

if.else413:                                       ; preds = %if.end408
  %374 = load i32, ptr %p, align 4
  %sub414 = sub nsw i32 0, %374
  %375 = load ptr, ptr %ipiv.addr, align 8
  %376 = load i32, ptr %k, align 4
  %idxprom415 = sext i32 %376 to i64
  %arrayidx416 = getelementptr inbounds i32, ptr %375, i64 %idxprom415
  store i32 %sub414, ptr %arrayidx416, align 4
  %377 = load i32, ptr %kp, align 4
  %sub417 = sub nsw i32 0, %377
  %378 = load ptr, ptr %ipiv.addr, align 8
  %379 = load i32, ptr %k, align 4
  %sub418 = sub nsw i32 %379, 1
  %idxprom419 = sext i32 %sub418 to i64
  %arrayidx420 = getelementptr inbounds i32, ptr %378, i64 %idxprom419
  store i32 %sub417, ptr %arrayidx420, align 4
  br label %if.end421

if.end421:                                        ; preds = %if.else413, %if.then410
  %380 = load i32, ptr %kstep, align 4
  %381 = load i32, ptr %k, align 4
  %sub422 = sub nsw i32 %381, %380
  store i32 %sub422, ptr %k, align 4
  br label %L10

if.else423:                                       ; preds = %if.end13
  store i32 1, ptr %k, align 4
  br label %L40

L40:                                              ; preds = %if.end858, %if.else423
  %382 = load i32, ptr %k, align 4
  %383 = load ptr, ptr %n.addr, align 8
  %384 = load i32, ptr %383, align 4
  %cmp424 = icmp sgt i32 %382, %384
  br i1 %cmp424, label %if.then425, label %if.end426

if.then425:                                       ; preds = %L40
  br label %L70

if.end426:                                        ; preds = %L40
  store i32 1, ptr %kstep, align 4
  %385 = load i32, ptr %k, align 4
  store i32 %385, ptr %p, align 4
  %386 = load ptr, ptr %a.addr, align 8
  %387 = load i32, ptr %k, align 4
  %388 = load i32, ptr %k, align 4
  %389 = load i32, ptr %a_dim1, align 4
  %mul427 = mul nsw i32 %388, %389
  %add428 = add nsw i32 %387, %mul427
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds double, ptr %386, i64 %idxprom429
  %390 = load double, ptr %arrayidx430, align 8
  store double %390, ptr %d__1, align 8
  %391 = load double, ptr %d__1, align 8
  %cmp431 = fcmp oge double %391, 0.000000e+00
  br i1 %cmp431, label %cond.true432, label %cond.false433

cond.true432:                                     ; preds = %if.end426
  %392 = load double, ptr %d__1, align 8
  br label %cond.end435

cond.false433:                                    ; preds = %if.end426
  %393 = load double, ptr %d__1, align 8
  %fneg434 = fneg double %393
  br label %cond.end435

cond.end435:                                      ; preds = %cond.false433, %cond.true432
  %cond436 = phi double [ %392, %cond.true432 ], [ %fneg434, %cond.false433 ]
  store double %cond436, ptr %absakk, align 8
  %394 = load i32, ptr %k, align 4
  %395 = load ptr, ptr %n.addr, align 8
  %396 = load i32, ptr %395, align 4
  %cmp437 = icmp slt i32 %394, %396
  br i1 %cmp437, label %if.then438, label %if.else457

if.then438:                                       ; preds = %cond.end435
  %397 = load ptr, ptr %n.addr, align 8
  %398 = load i32, ptr %397, align 4
  %399 = load i32, ptr %k, align 4
  %sub439 = sub nsw i32 %398, %399
  store i32 %sub439, ptr %i__1, align 4
  %400 = load i32, ptr %k, align 4
  %401 = load ptr, ptr %a.addr, align 8
  %402 = load i32, ptr %k, align 4
  %add440 = add nsw i32 %402, 1
  %403 = load i32, ptr %k, align 4
  %404 = load i32, ptr %a_dim1, align 4
  %mul441 = mul nsw i32 %403, %404
  %add442 = add nsw i32 %add440, %mul441
  %idxprom443 = sext i32 %add442 to i64
  %arrayidx444 = getelementptr inbounds double, ptr %401, i64 %idxprom443
  %call445 = call i32 @idamax_(ptr noundef %i__1, ptr noundef %arrayidx444, ptr noundef @c__1)
  %add446 = add nsw i32 %400, %call445
  store i32 %add446, ptr %imax, align 4
  %405 = load ptr, ptr %a.addr, align 8
  %406 = load i32, ptr %imax, align 4
  %407 = load i32, ptr %k, align 4
  %408 = load i32, ptr %a_dim1, align 4
  %mul447 = mul nsw i32 %407, %408
  %add448 = add nsw i32 %406, %mul447
  %idxprom449 = sext i32 %add448 to i64
  %arrayidx450 = getelementptr inbounds double, ptr %405, i64 %idxprom449
  %409 = load double, ptr %arrayidx450, align 8
  store double %409, ptr %d__1, align 8
  %410 = load double, ptr %d__1, align 8
  %cmp451 = fcmp oge double %410, 0.000000e+00
  br i1 %cmp451, label %cond.true452, label %cond.false453

cond.true452:                                     ; preds = %if.then438
  %411 = load double, ptr %d__1, align 8
  br label %cond.end455

cond.false453:                                    ; preds = %if.then438
  %412 = load double, ptr %d__1, align 8
  %fneg454 = fneg double %412
  br label %cond.end455

cond.end455:                                      ; preds = %cond.false453, %cond.true452
  %cond456 = phi double [ %411, %cond.true452 ], [ %fneg454, %cond.false453 ]
  store double %cond456, ptr %colmax, align 8
  br label %if.end458

if.else457:                                       ; preds = %cond.end435
  store double 0.000000e+00, ptr %colmax, align 8
  br label %if.end458

if.end458:                                        ; preds = %if.else457, %cond.end455
  %413 = load double, ptr %absakk, align 8
  %414 = load double, ptr %colmax, align 8
  %cmp459 = fcmp oge double %413, %414
  br i1 %cmp459, label %cond.true460, label %cond.false461

cond.true460:                                     ; preds = %if.end458
  %415 = load double, ptr %absakk, align 8
  br label %cond.end462

cond.false461:                                    ; preds = %if.end458
  %416 = load double, ptr %colmax, align 8
  br label %cond.end462

cond.end462:                                      ; preds = %cond.false461, %cond.true460
  %cond463 = phi double [ %415, %cond.true460 ], [ %416, %cond.false461 ]
  %cmp464 = fcmp oeq double %cond463, 0.000000e+00
  br i1 %cmp464, label %if.then465, label %if.else469

if.then465:                                       ; preds = %cond.end462
  %417 = load ptr, ptr %info.addr, align 8
  %418 = load i32, ptr %417, align 4
  %cmp466 = icmp eq i32 %418, 0
  br i1 %cmp466, label %if.then467, label %if.end468

if.then467:                                       ; preds = %if.then465
  %419 = load i32, ptr %k, align 4
  %420 = load ptr, ptr %info.addr, align 8
  store i32 %419, ptr %420, align 4
  br label %if.end468

if.end468:                                        ; preds = %if.then467, %if.then465
  %421 = load i32, ptr %k, align 4
  store i32 %421, ptr %kp, align 4
  br label %if.end845

if.else469:                                       ; preds = %cond.end462
  %422 = load double, ptr %absakk, align 8
  %423 = load double, ptr %alpha, align 8
  %424 = load double, ptr %colmax, align 8
  %mul470 = fmul double %423, %424
  %cmp471 = fcmp olt double %422, %mul470
  br i1 %cmp471, label %if.else473, label %if.then472

if.then472:                                       ; preds = %if.else469
  %425 = load i32, ptr %k, align 4
  store i32 %425, ptr %kp, align 4
  br label %if.end544

if.else473:                                       ; preds = %if.else469
  store i32 0, ptr %done, align 4
  br label %L42

L42:                                              ; preds = %if.then542, %if.else473
  %426 = load i32, ptr %imax, align 4
  %427 = load i32, ptr %k, align 4
  %cmp474 = icmp ne i32 %426, %427
  br i1 %cmp474, label %if.then475, label %if.else494

if.then475:                                       ; preds = %L42
  %428 = load i32, ptr %imax, align 4
  %429 = load i32, ptr %k, align 4
  %sub476 = sub nsw i32 %428, %429
  store i32 %sub476, ptr %i__1, align 4
  %430 = load i32, ptr %k, align 4
  %sub477 = sub nsw i32 %430, 1
  %431 = load ptr, ptr %a.addr, align 8
  %432 = load i32, ptr %imax, align 4
  %433 = load i32, ptr %k, align 4
  %434 = load i32, ptr %a_dim1, align 4
  %mul478 = mul nsw i32 %433, %434
  %add479 = add nsw i32 %432, %mul478
  %idxprom480 = sext i32 %add479 to i64
  %arrayidx481 = getelementptr inbounds double, ptr %431, i64 %idxprom480
  %435 = load ptr, ptr %lda.addr, align 8
  %call482 = call i32 @idamax_(ptr noundef %i__1, ptr noundef %arrayidx481, ptr noundef %435)
  %add483 = add nsw i32 %sub477, %call482
  store i32 %add483, ptr %jmax, align 4
  %436 = load ptr, ptr %a.addr, align 8
  %437 = load i32, ptr %imax, align 4
  %438 = load i32, ptr %jmax, align 4
  %439 = load i32, ptr %a_dim1, align 4
  %mul484 = mul nsw i32 %438, %439
  %add485 = add nsw i32 %437, %mul484
  %idxprom486 = sext i32 %add485 to i64
  %arrayidx487 = getelementptr inbounds double, ptr %436, i64 %idxprom486
  %440 = load double, ptr %arrayidx487, align 8
  store double %440, ptr %d__1, align 8
  %441 = load double, ptr %d__1, align 8
  %cmp488 = fcmp oge double %441, 0.000000e+00
  br i1 %cmp488, label %cond.true489, label %cond.false490

cond.true489:                                     ; preds = %if.then475
  %442 = load double, ptr %d__1, align 8
  br label %cond.end492

cond.false490:                                    ; preds = %if.then475
  %443 = load double, ptr %d__1, align 8
  %fneg491 = fneg double %443
  br label %cond.end492

cond.end492:                                      ; preds = %cond.false490, %cond.true489
  %cond493 = phi double [ %442, %cond.true489 ], [ %fneg491, %cond.false490 ]
  store double %cond493, ptr %rowmax, align 8
  br label %if.end495

if.else494:                                       ; preds = %L42
  store double 0.000000e+00, ptr %rowmax, align 8
  br label %if.end495

if.end495:                                        ; preds = %if.else494, %cond.end492
  %444 = load i32, ptr %imax, align 4
  %445 = load ptr, ptr %n.addr, align 8
  %446 = load i32, ptr %445, align 4
  %cmp496 = icmp slt i32 %444, %446
  br i1 %cmp496, label %if.then497, label %if.end519

if.then497:                                       ; preds = %if.end495
  %447 = load ptr, ptr %n.addr, align 8
  %448 = load i32, ptr %447, align 4
  %449 = load i32, ptr %imax, align 4
  %sub498 = sub nsw i32 %448, %449
  store i32 %sub498, ptr %i__1, align 4
  %450 = load i32, ptr %imax, align 4
  %451 = load ptr, ptr %a.addr, align 8
  %452 = load i32, ptr %imax, align 4
  %add499 = add nsw i32 %452, 1
  %453 = load i32, ptr %imax, align 4
  %454 = load i32, ptr %a_dim1, align 4
  %mul500 = mul nsw i32 %453, %454
  %add501 = add nsw i32 %add499, %mul500
  %idxprom502 = sext i32 %add501 to i64
  %arrayidx503 = getelementptr inbounds double, ptr %451, i64 %idxprom502
  %call504 = call i32 @idamax_(ptr noundef %i__1, ptr noundef %arrayidx503, ptr noundef @c__1)
  %add505 = add nsw i32 %450, %call504
  store i32 %add505, ptr %itemp, align 4
  %455 = load ptr, ptr %a.addr, align 8
  %456 = load i32, ptr %itemp, align 4
  %457 = load i32, ptr %imax, align 4
  %458 = load i32, ptr %a_dim1, align 4
  %mul506 = mul nsw i32 %457, %458
  %add507 = add nsw i32 %456, %mul506
  %idxprom508 = sext i32 %add507 to i64
  %arrayidx509 = getelementptr inbounds double, ptr %455, i64 %idxprom508
  %459 = load double, ptr %arrayidx509, align 8
  store double %459, ptr %d__1, align 8
  %460 = load double, ptr %d__1, align 8
  %cmp510 = fcmp oge double %460, 0.000000e+00
  br i1 %cmp510, label %cond.true511, label %cond.false512

cond.true511:                                     ; preds = %if.then497
  %461 = load double, ptr %d__1, align 8
  br label %cond.end514

cond.false512:                                    ; preds = %if.then497
  %462 = load double, ptr %d__1, align 8
  %fneg513 = fneg double %462
  br label %cond.end514

cond.end514:                                      ; preds = %cond.false512, %cond.true511
  %cond515 = phi double [ %461, %cond.true511 ], [ %fneg513, %cond.false512 ]
  store double %cond515, ptr %dtemp, align 8
  %463 = load double, ptr %dtemp, align 8
  %464 = load double, ptr %rowmax, align 8
  %cmp516 = fcmp ogt double %463, %464
  br i1 %cmp516, label %if.then517, label %if.end518

if.then517:                                       ; preds = %cond.end514
  %465 = load double, ptr %dtemp, align 8
  store double %465, ptr %rowmax, align 8
  %466 = load i32, ptr %itemp, align 4
  store i32 %466, ptr %jmax, align 4
  br label %if.end518

if.end518:                                        ; preds = %if.then517, %cond.end514
  br label %if.end519

if.end519:                                        ; preds = %if.end518, %if.end495
  %467 = load ptr, ptr %a.addr, align 8
  %468 = load i32, ptr %imax, align 4
  %469 = load i32, ptr %imax, align 4
  %470 = load i32, ptr %a_dim1, align 4
  %mul520 = mul nsw i32 %469, %470
  %add521 = add nsw i32 %468, %mul520
  %idxprom522 = sext i32 %add521 to i64
  %arrayidx523 = getelementptr inbounds double, ptr %467, i64 %idxprom522
  %471 = load double, ptr %arrayidx523, align 8
  store double %471, ptr %d__1, align 8
  %472 = load double, ptr %d__1, align 8
  %cmp524 = fcmp oge double %472, 0.000000e+00
  br i1 %cmp524, label %cond.true525, label %cond.false526

cond.true525:                                     ; preds = %if.end519
  %473 = load double, ptr %d__1, align 8
  br label %cond.end528

cond.false526:                                    ; preds = %if.end519
  %474 = load double, ptr %d__1, align 8
  %fneg527 = fneg double %474
  br label %cond.end528

cond.end528:                                      ; preds = %cond.false526, %cond.true525
  %cond529 = phi double [ %473, %cond.true525 ], [ %fneg527, %cond.false526 ]
  %475 = load double, ptr %alpha, align 8
  %476 = load double, ptr %rowmax, align 8
  %mul530 = fmul double %475, %476
  %cmp531 = fcmp olt double %cond529, %mul530
  br i1 %cmp531, label %if.else533, label %if.then532

if.then532:                                       ; preds = %cond.end528
  %477 = load i32, ptr %imax, align 4
  store i32 %477, ptr %kp, align 4
  store i32 1, ptr %done, align 4
  br label %if.end540

if.else533:                                       ; preds = %cond.end528
  %478 = load i32, ptr %p, align 4
  %479 = load i32, ptr %jmax, align 4
  %cmp534 = icmp eq i32 %478, %479
  br i1 %cmp534, label %if.then537, label %lor.lhs.false535

lor.lhs.false535:                                 ; preds = %if.else533
  %480 = load double, ptr %rowmax, align 8
  %481 = load double, ptr %colmax, align 8
  %cmp536 = fcmp ole double %480, %481
  br i1 %cmp536, label %if.then537, label %if.else538

if.then537:                                       ; preds = %lor.lhs.false535, %if.else533
  %482 = load i32, ptr %imax, align 4
  store i32 %482, ptr %kp, align 4
  store i32 2, ptr %kstep, align 4
  store i32 1, ptr %done, align 4
  br label %if.end539

if.else538:                                       ; preds = %lor.lhs.false535
  %483 = load i32, ptr %imax, align 4
  store i32 %483, ptr %p, align 4
  %484 = load double, ptr %rowmax, align 8
  store double %484, ptr %colmax, align 8
  %485 = load i32, ptr %jmax, align 4
  store i32 %485, ptr %imax, align 4
  br label %if.end539

if.end539:                                        ; preds = %if.else538, %if.then537
  br label %if.end540

if.end540:                                        ; preds = %if.end539, %if.then532
  %486 = load i32, ptr %done, align 4
  %tobool541 = icmp ne i32 %486, 0
  br i1 %tobool541, label %if.end543, label %if.then542

if.then542:                                       ; preds = %if.end540
  br label %L42

if.end543:                                        ; preds = %if.end540
  br label %if.end544

if.end544:                                        ; preds = %if.end543, %if.then472
  %487 = load i32, ptr %kstep, align 4
  %cmp545 = icmp eq i32 %487, 2
  br i1 %cmp545, label %land.lhs.true546, label %if.end597

land.lhs.true546:                                 ; preds = %if.end544
  %488 = load i32, ptr %p, align 4
  %489 = load i32, ptr %k, align 4
  %cmp547 = icmp ne i32 %488, %489
  br i1 %cmp547, label %if.then548, label %if.end597

if.then548:                                       ; preds = %land.lhs.true546
  %490 = load i32, ptr %p, align 4
  %491 = load ptr, ptr %n.addr, align 8
  %492 = load i32, ptr %491, align 4
  %cmp549 = icmp slt i32 %490, %492
  br i1 %cmp549, label %if.then550, label %if.end563

if.then550:                                       ; preds = %if.then548
  %493 = load ptr, ptr %n.addr, align 8
  %494 = load i32, ptr %493, align 4
  %495 = load i32, ptr %p, align 4
  %sub551 = sub nsw i32 %494, %495
  store i32 %sub551, ptr %i__1, align 4
  %496 = load ptr, ptr %a.addr, align 8
  %497 = load i32, ptr %p, align 4
  %add552 = add nsw i32 %497, 1
  %498 = load i32, ptr %k, align 4
  %499 = load i32, ptr %a_dim1, align 4
  %mul553 = mul nsw i32 %498, %499
  %add554 = add nsw i32 %add552, %mul553
  %idxprom555 = sext i32 %add554 to i64
  %arrayidx556 = getelementptr inbounds double, ptr %496, i64 %idxprom555
  %500 = load ptr, ptr %a.addr, align 8
  %501 = load i32, ptr %p, align 4
  %add557 = add nsw i32 %501, 1
  %502 = load i32, ptr %p, align 4
  %503 = load i32, ptr %a_dim1, align 4
  %mul558 = mul nsw i32 %502, %503
  %add559 = add nsw i32 %add557, %mul558
  %idxprom560 = sext i32 %add559 to i64
  %arrayidx561 = getelementptr inbounds double, ptr %500, i64 %idxprom560
  %call562 = call i32 @dswap_(ptr noundef %i__1, ptr noundef %arrayidx556, ptr noundef @c__1, ptr noundef %arrayidx561, ptr noundef @c__1)
  br label %if.end563

if.end563:                                        ; preds = %if.then550, %if.then548
  %504 = load i32, ptr %p, align 4
  %505 = load i32, ptr %k, align 4
  %add564 = add nsw i32 %505, 1
  %cmp565 = icmp sgt i32 %504, %add564
  br i1 %cmp565, label %if.then566, label %if.end580

if.then566:                                       ; preds = %if.end563
  %506 = load i32, ptr %p, align 4
  %507 = load i32, ptr %k, align 4
  %sub567 = sub nsw i32 %506, %507
  %sub568 = sub nsw i32 %sub567, 1
  store i32 %sub568, ptr %i__1, align 4
  %508 = load ptr, ptr %a.addr, align 8
  %509 = load i32, ptr %k, align 4
  %add569 = add nsw i32 %509, 1
  %510 = load i32, ptr %k, align 4
  %511 = load i32, ptr %a_dim1, align 4
  %mul570 = mul nsw i32 %510, %511
  %add571 = add nsw i32 %add569, %mul570
  %idxprom572 = sext i32 %add571 to i64
  %arrayidx573 = getelementptr inbounds double, ptr %508, i64 %idxprom572
  %512 = load ptr, ptr %a.addr, align 8
  %513 = load i32, ptr %p, align 4
  %514 = load i32, ptr %k, align 4
  %add574 = add nsw i32 %514, 1
  %515 = load i32, ptr %a_dim1, align 4
  %mul575 = mul nsw i32 %add574, %515
  %add576 = add nsw i32 %513, %mul575
  %idxprom577 = sext i32 %add576 to i64
  %arrayidx578 = getelementptr inbounds double, ptr %512, i64 %idxprom577
  %516 = load ptr, ptr %lda.addr, align 8
  %call579 = call i32 @dswap_(ptr noundef %i__1, ptr noundef %arrayidx573, ptr noundef @c__1, ptr noundef %arrayidx578, ptr noundef %516)
  br label %if.end580

if.end580:                                        ; preds = %if.then566, %if.end563
  %517 = load ptr, ptr %a.addr, align 8
  %518 = load i32, ptr %k, align 4
  %519 = load i32, ptr %k, align 4
  %520 = load i32, ptr %a_dim1, align 4
  %mul581 = mul nsw i32 %519, %520
  %add582 = add nsw i32 %518, %mul581
  %idxprom583 = sext i32 %add582 to i64
  %arrayidx584 = getelementptr inbounds double, ptr %517, i64 %idxprom583
  %521 = load double, ptr %arrayidx584, align 8
  store double %521, ptr %t, align 8
  %522 = load ptr, ptr %a.addr, align 8
  %523 = load i32, ptr %p, align 4
  %524 = load i32, ptr %p, align 4
  %525 = load i32, ptr %a_dim1, align 4
  %mul585 = mul nsw i32 %524, %525
  %add586 = add nsw i32 %523, %mul585
  %idxprom587 = sext i32 %add586 to i64
  %arrayidx588 = getelementptr inbounds double, ptr %522, i64 %idxprom587
  %526 = load double, ptr %arrayidx588, align 8
  %527 = load ptr, ptr %a.addr, align 8
  %528 = load i32, ptr %k, align 4
  %529 = load i32, ptr %k, align 4
  %530 = load i32, ptr %a_dim1, align 4
  %mul589 = mul nsw i32 %529, %530
  %add590 = add nsw i32 %528, %mul589
  %idxprom591 = sext i32 %add590 to i64
  %arrayidx592 = getelementptr inbounds double, ptr %527, i64 %idxprom591
  store double %526, ptr %arrayidx592, align 8
  %531 = load double, ptr %t, align 8
  %532 = load ptr, ptr %a.addr, align 8
  %533 = load i32, ptr %p, align 4
  %534 = load i32, ptr %p, align 4
  %535 = load i32, ptr %a_dim1, align 4
  %mul593 = mul nsw i32 %534, %535
  %add594 = add nsw i32 %533, %mul593
  %idxprom595 = sext i32 %add594 to i64
  %arrayidx596 = getelementptr inbounds double, ptr %532, i64 %idxprom595
  store double %531, ptr %arrayidx596, align 8
  br label %if.end597

if.end597:                                        ; preds = %if.end580, %land.lhs.true546, %if.end544
  %536 = load i32, ptr %k, align 4
  %537 = load i32, ptr %kstep, align 4
  %add598 = add nsw i32 %536, %537
  %sub599 = sub nsw i32 %add598, 1
  store i32 %sub599, ptr %kk, align 4
  %538 = load i32, ptr %kp, align 4
  %539 = load i32, ptr %kk, align 4
  %cmp600 = icmp ne i32 %538, %539
  br i1 %cmp600, label %if.then601, label %if.end673

if.then601:                                       ; preds = %if.end597
  %540 = load i32, ptr %kp, align 4
  %541 = load ptr, ptr %n.addr, align 8
  %542 = load i32, ptr %541, align 4
  %cmp602 = icmp slt i32 %540, %542
  br i1 %cmp602, label %if.then603, label %if.end616

if.then603:                                       ; preds = %if.then601
  %543 = load ptr, ptr %n.addr, align 8
  %544 = load i32, ptr %543, align 4
  %545 = load i32, ptr %kp, align 4
  %sub604 = sub nsw i32 %544, %545
  store i32 %sub604, ptr %i__1, align 4
  %546 = load ptr, ptr %a.addr, align 8
  %547 = load i32, ptr %kp, align 4
  %add605 = add nsw i32 %547, 1
  %548 = load i32, ptr %kk, align 4
  %549 = load i32, ptr %a_dim1, align 4
  %mul606 = mul nsw i32 %548, %549
  %add607 = add nsw i32 %add605, %mul606
  %idxprom608 = sext i32 %add607 to i64
  %arrayidx609 = getelementptr inbounds double, ptr %546, i64 %idxprom608
  %550 = load ptr, ptr %a.addr, align 8
  %551 = load i32, ptr %kp, align 4
  %add610 = add nsw i32 %551, 1
  %552 = load i32, ptr %kp, align 4
  %553 = load i32, ptr %a_dim1, align 4
  %mul611 = mul nsw i32 %552, %553
  %add612 = add nsw i32 %add610, %mul611
  %idxprom613 = sext i32 %add612 to i64
  %arrayidx614 = getelementptr inbounds double, ptr %550, i64 %idxprom613
  %call615 = call i32 @dswap_(ptr noundef %i__1, ptr noundef %arrayidx609, ptr noundef @c__1, ptr noundef %arrayidx614, ptr noundef @c__1)
  br label %if.end616

if.end616:                                        ; preds = %if.then603, %if.then601
  %554 = load i32, ptr %kk, align 4
  %555 = load ptr, ptr %n.addr, align 8
  %556 = load i32, ptr %555, align 4
  %cmp617 = icmp slt i32 %554, %556
  br i1 %cmp617, label %land.lhs.true618, label %if.end635

land.lhs.true618:                                 ; preds = %if.end616
  %557 = load i32, ptr %kp, align 4
  %558 = load i32, ptr %kk, align 4
  %add619 = add nsw i32 %558, 1
  %cmp620 = icmp sgt i32 %557, %add619
  br i1 %cmp620, label %if.then621, label %if.end635

if.then621:                                       ; preds = %land.lhs.true618
  %559 = load i32, ptr %kp, align 4
  %560 = load i32, ptr %kk, align 4
  %sub622 = sub nsw i32 %559, %560
  %sub623 = sub nsw i32 %sub622, 1
  store i32 %sub623, ptr %i__1, align 4
  %561 = load ptr, ptr %a.addr, align 8
  %562 = load i32, ptr %kk, align 4
  %add624 = add nsw i32 %562, 1
  %563 = load i32, ptr %kk, align 4
  %564 = load i32, ptr %a_dim1, align 4
  %mul625 = mul nsw i32 %563, %564
  %add626 = add nsw i32 %add624, %mul625
  %idxprom627 = sext i32 %add626 to i64
  %arrayidx628 = getelementptr inbounds double, ptr %561, i64 %idxprom627
  %565 = load ptr, ptr %a.addr, align 8
  %566 = load i32, ptr %kp, align 4
  %567 = load i32, ptr %kk, align 4
  %add629 = add nsw i32 %567, 1
  %568 = load i32, ptr %a_dim1, align 4
  %mul630 = mul nsw i32 %add629, %568
  %add631 = add nsw i32 %566, %mul630
  %idxprom632 = sext i32 %add631 to i64
  %arrayidx633 = getelementptr inbounds double, ptr %565, i64 %idxprom632
  %569 = load ptr, ptr %lda.addr, align 8
  %call634 = call i32 @dswap_(ptr noundef %i__1, ptr noundef %arrayidx628, ptr noundef @c__1, ptr noundef %arrayidx633, ptr noundef %569)
  br label %if.end635

if.end635:                                        ; preds = %if.then621, %land.lhs.true618, %if.end616
  %570 = load ptr, ptr %a.addr, align 8
  %571 = load i32, ptr %kk, align 4
  %572 = load i32, ptr %kk, align 4
  %573 = load i32, ptr %a_dim1, align 4
  %mul636 = mul nsw i32 %572, %573
  %add637 = add nsw i32 %571, %mul636
  %idxprom638 = sext i32 %add637 to i64
  %arrayidx639 = getelementptr inbounds double, ptr %570, i64 %idxprom638
  %574 = load double, ptr %arrayidx639, align 8
  store double %574, ptr %t, align 8
  %575 = load ptr, ptr %a.addr, align 8
  %576 = load i32, ptr %kp, align 4
  %577 = load i32, ptr %kp, align 4
  %578 = load i32, ptr %a_dim1, align 4
  %mul640 = mul nsw i32 %577, %578
  %add641 = add nsw i32 %576, %mul640
  %idxprom642 = sext i32 %add641 to i64
  %arrayidx643 = getelementptr inbounds double, ptr %575, i64 %idxprom642
  %579 = load double, ptr %arrayidx643, align 8
  %580 = load ptr, ptr %a.addr, align 8
  %581 = load i32, ptr %kk, align 4
  %582 = load i32, ptr %kk, align 4
  %583 = load i32, ptr %a_dim1, align 4
  %mul644 = mul nsw i32 %582, %583
  %add645 = add nsw i32 %581, %mul644
  %idxprom646 = sext i32 %add645 to i64
  %arrayidx647 = getelementptr inbounds double, ptr %580, i64 %idxprom646
  store double %579, ptr %arrayidx647, align 8
  %584 = load double, ptr %t, align 8
  %585 = load ptr, ptr %a.addr, align 8
  %586 = load i32, ptr %kp, align 4
  %587 = load i32, ptr %kp, align 4
  %588 = load i32, ptr %a_dim1, align 4
  %mul648 = mul nsw i32 %587, %588
  %add649 = add nsw i32 %586, %mul648
  %idxprom650 = sext i32 %add649 to i64
  %arrayidx651 = getelementptr inbounds double, ptr %585, i64 %idxprom650
  store double %584, ptr %arrayidx651, align 8
  %589 = load i32, ptr %kstep, align 4
  %cmp652 = icmp eq i32 %589, 2
  br i1 %cmp652, label %if.then653, label %if.end672

if.then653:                                       ; preds = %if.end635
  %590 = load ptr, ptr %a.addr, align 8
  %591 = load i32, ptr %k, align 4
  %add654 = add nsw i32 %591, 1
  %592 = load i32, ptr %k, align 4
  %593 = load i32, ptr %a_dim1, align 4
  %mul655 = mul nsw i32 %592, %593
  %add656 = add nsw i32 %add654, %mul655
  %idxprom657 = sext i32 %add656 to i64
  %arrayidx658 = getelementptr inbounds double, ptr %590, i64 %idxprom657
  %594 = load double, ptr %arrayidx658, align 8
  store double %594, ptr %t, align 8
  %595 = load ptr, ptr %a.addr, align 8
  %596 = load i32, ptr %kp, align 4
  %597 = load i32, ptr %k, align 4
  %598 = load i32, ptr %a_dim1, align 4
  %mul659 = mul nsw i32 %597, %598
  %add660 = add nsw i32 %596, %mul659
  %idxprom661 = sext i32 %add660 to i64
  %arrayidx662 = getelementptr inbounds double, ptr %595, i64 %idxprom661
  %599 = load double, ptr %arrayidx662, align 8
  %600 = load ptr, ptr %a.addr, align 8
  %601 = load i32, ptr %k, align 4
  %add663 = add nsw i32 %601, 1
  %602 = load i32, ptr %k, align 4
  %603 = load i32, ptr %a_dim1, align 4
  %mul664 = mul nsw i32 %602, %603
  %add665 = add nsw i32 %add663, %mul664
  %idxprom666 = sext i32 %add665 to i64
  %arrayidx667 = getelementptr inbounds double, ptr %600, i64 %idxprom666
  store double %599, ptr %arrayidx667, align 8
  %604 = load double, ptr %t, align 8
  %605 = load ptr, ptr %a.addr, align 8
  %606 = load i32, ptr %kp, align 4
  %607 = load i32, ptr %k, align 4
  %608 = load i32, ptr %a_dim1, align 4
  %mul668 = mul nsw i32 %607, %608
  %add669 = add nsw i32 %606, %mul668
  %idxprom670 = sext i32 %add669 to i64
  %arrayidx671 = getelementptr inbounds double, ptr %605, i64 %idxprom670
  store double %604, ptr %arrayidx671, align 8
  br label %if.end672

if.end672:                                        ; preds = %if.then653, %if.end635
  br label %if.end673

if.end673:                                        ; preds = %if.end672, %if.end597
  %609 = load i32, ptr %kstep, align 4
  %cmp674 = icmp eq i32 %609, 1
  br i1 %cmp674, label %if.then675, label %if.else749

if.then675:                                       ; preds = %if.end673
  %610 = load i32, ptr %k, align 4
  %611 = load ptr, ptr %n.addr, align 8
  %612 = load i32, ptr %611, align 4
  %cmp676 = icmp slt i32 %610, %612
  br i1 %cmp676, label %if.then677, label %if.end748

if.then677:                                       ; preds = %if.then675
  %613 = load ptr, ptr %a.addr, align 8
  %614 = load i32, ptr %k, align 4
  %615 = load i32, ptr %k, align 4
  %616 = load i32, ptr %a_dim1, align 4
  %mul678 = mul nsw i32 %615, %616
  %add679 = add nsw i32 %614, %mul678
  %idxprom680 = sext i32 %add679 to i64
  %arrayidx681 = getelementptr inbounds double, ptr %613, i64 %idxprom680
  %617 = load double, ptr %arrayidx681, align 8
  store double %617, ptr %d__1, align 8
  %618 = load double, ptr %d__1, align 8
  %cmp682 = fcmp oge double %618, 0.000000e+00
  br i1 %cmp682, label %cond.true683, label %cond.false684

cond.true683:                                     ; preds = %if.then677
  %619 = load double, ptr %d__1, align 8
  br label %cond.end686

cond.false684:                                    ; preds = %if.then677
  %620 = load double, ptr %d__1, align 8
  %fneg685 = fneg double %620
  br label %cond.end686

cond.end686:                                      ; preds = %cond.false684, %cond.true683
  %cond687 = phi double [ %619, %cond.true683 ], [ %fneg685, %cond.false684 ]
  %621 = load double, ptr %sfmin, align 8
  %cmp688 = fcmp oge double %cond687, %621
  br i1 %cmp688, label %if.then689, label %if.else716

if.then689:                                       ; preds = %cond.end686
  %622 = load ptr, ptr %a.addr, align 8
  %623 = load i32, ptr %k, align 4
  %624 = load i32, ptr %k, align 4
  %625 = load i32, ptr %a_dim1, align 4
  %mul690 = mul nsw i32 %624, %625
  %add691 = add nsw i32 %623, %mul690
  %idxprom692 = sext i32 %add691 to i64
  %arrayidx693 = getelementptr inbounds double, ptr %622, i64 %idxprom692
  %626 = load double, ptr %arrayidx693, align 8
  %div694 = fdiv double 1.000000e+00, %626
  store double %div694, ptr %d11, align 8
  %627 = load ptr, ptr %n.addr, align 8
  %628 = load i32, ptr %627, align 4
  %629 = load i32, ptr %k, align 4
  %sub695 = sub nsw i32 %628, %629
  store i32 %sub695, ptr %i__1, align 4
  %630 = load double, ptr %d11, align 8
  %fneg696 = fneg double %630
  store double %fneg696, ptr %d__1, align 8
  %631 = load ptr, ptr %uplo.addr, align 8
  %632 = load ptr, ptr %a.addr, align 8
  %633 = load i32, ptr %k, align 4
  %add697 = add nsw i32 %633, 1
  %634 = load i32, ptr %k, align 4
  %635 = load i32, ptr %a_dim1, align 4
  %mul698 = mul nsw i32 %634, %635
  %add699 = add nsw i32 %add697, %mul698
  %idxprom700 = sext i32 %add699 to i64
  %arrayidx701 = getelementptr inbounds double, ptr %632, i64 %idxprom700
  %636 = load ptr, ptr %a.addr, align 8
  %637 = load i32, ptr %k, align 4
  %add702 = add nsw i32 %637, 1
  %638 = load i32, ptr %k, align 4
  %add703 = add nsw i32 %638, 1
  %639 = load i32, ptr %a_dim1, align 4
  %mul704 = mul nsw i32 %add703, %639
  %add705 = add nsw i32 %add702, %mul704
  %idxprom706 = sext i32 %add705 to i64
  %arrayidx707 = getelementptr inbounds double, ptr %636, i64 %idxprom706
  %640 = load ptr, ptr %lda.addr, align 8
  %call708 = call i32 @dsyr_(ptr noundef %631, ptr noundef %i__1, ptr noundef %d__1, ptr noundef %arrayidx701, ptr noundef @c__1, ptr noundef %arrayidx707, ptr noundef %640)
  %641 = load ptr, ptr %n.addr, align 8
  %642 = load i32, ptr %641, align 4
  %643 = load i32, ptr %k, align 4
  %sub709 = sub nsw i32 %642, %643
  store i32 %sub709, ptr %i__1, align 4
  %644 = load ptr, ptr %a.addr, align 8
  %645 = load i32, ptr %k, align 4
  %add710 = add nsw i32 %645, 1
  %646 = load i32, ptr %k, align 4
  %647 = load i32, ptr %a_dim1, align 4
  %mul711 = mul nsw i32 %646, %647
  %add712 = add nsw i32 %add710, %mul711
  %idxprom713 = sext i32 %add712 to i64
  %arrayidx714 = getelementptr inbounds double, ptr %644, i64 %idxprom713
  %call715 = call i32 @dscal_(ptr noundef %i__1, ptr noundef %d11, ptr noundef %arrayidx714, ptr noundef @c__1)
  br label %if.end747

if.else716:                                       ; preds = %cond.end686
  %648 = load ptr, ptr %a.addr, align 8
  %649 = load i32, ptr %k, align 4
  %650 = load i32, ptr %k, align 4
  %651 = load i32, ptr %a_dim1, align 4
  %mul717 = mul nsw i32 %650, %651
  %add718 = add nsw i32 %649, %mul717
  %idxprom719 = sext i32 %add718 to i64
  %arrayidx720 = getelementptr inbounds double, ptr %648, i64 %idxprom719
  %652 = load double, ptr %arrayidx720, align 8
  store double %652, ptr %d11, align 8
  %653 = load ptr, ptr %n.addr, align 8
  %654 = load i32, ptr %653, align 4
  store i32 %654, ptr %i__1, align 4
  %655 = load i32, ptr %k, align 4
  %add721 = add nsw i32 %655, 1
  store i32 %add721, ptr %ii, align 4
  br label %for.cond722

for.cond722:                                      ; preds = %for.inc730, %if.else716
  %656 = load i32, ptr %ii, align 4
  %657 = load i32, ptr %i__1, align 4
  %cmp723 = icmp sle i32 %656, %657
  br i1 %cmp723, label %for.body724, label %for.end732

for.body724:                                      ; preds = %for.cond722
  %658 = load double, ptr %d11, align 8
  %659 = load ptr, ptr %a.addr, align 8
  %660 = load i32, ptr %ii, align 4
  %661 = load i32, ptr %k, align 4
  %662 = load i32, ptr %a_dim1, align 4
  %mul725 = mul nsw i32 %661, %662
  %add726 = add nsw i32 %660, %mul725
  %idxprom727 = sext i32 %add726 to i64
  %arrayidx728 = getelementptr inbounds double, ptr %659, i64 %idxprom727
  %663 = load double, ptr %arrayidx728, align 8
  %div729 = fdiv double %663, %658
  store double %div729, ptr %arrayidx728, align 8
  br label %for.inc730

for.inc730:                                       ; preds = %for.body724
  %664 = load i32, ptr %ii, align 4
  %inc731 = add nsw i32 %664, 1
  store i32 %inc731, ptr %ii, align 4
  br label %for.cond722, !llvm.loop !9

for.end732:                                       ; preds = %for.cond722
  %665 = load ptr, ptr %n.addr, align 8
  %666 = load i32, ptr %665, align 4
  %667 = load i32, ptr %k, align 4
  %sub733 = sub nsw i32 %666, %667
  store i32 %sub733, ptr %i__1, align 4
  %668 = load double, ptr %d11, align 8
  %fneg734 = fneg double %668
  store double %fneg734, ptr %d__1, align 8
  %669 = load ptr, ptr %uplo.addr, align 8
  %670 = load ptr, ptr %a.addr, align 8
  %671 = load i32, ptr %k, align 4
  %add735 = add nsw i32 %671, 1
  %672 = load i32, ptr %k, align 4
  %673 = load i32, ptr %a_dim1, align 4
  %mul736 = mul nsw i32 %672, %673
  %add737 = add nsw i32 %add735, %mul736
  %idxprom738 = sext i32 %add737 to i64
  %arrayidx739 = getelementptr inbounds double, ptr %670, i64 %idxprom738
  %674 = load ptr, ptr %a.addr, align 8
  %675 = load i32, ptr %k, align 4
  %add740 = add nsw i32 %675, 1
  %676 = load i32, ptr %k, align 4
  %add741 = add nsw i32 %676, 1
  %677 = load i32, ptr %a_dim1, align 4
  %mul742 = mul nsw i32 %add741, %677
  %add743 = add nsw i32 %add740, %mul742
  %idxprom744 = sext i32 %add743 to i64
  %arrayidx745 = getelementptr inbounds double, ptr %674, i64 %idxprom744
  %678 = load ptr, ptr %lda.addr, align 8
  %call746 = call i32 @dsyr_(ptr noundef %669, ptr noundef %i__1, ptr noundef %d__1, ptr noundef %arrayidx739, ptr noundef @c__1, ptr noundef %arrayidx745, ptr noundef %678)
  br label %if.end747

if.end747:                                        ; preds = %for.end732, %if.then689
  br label %if.end748

if.end748:                                        ; preds = %if.end747, %if.then675
  br label %if.end844

if.else749:                                       ; preds = %if.end673
  %679 = load i32, ptr %k, align 4
  %680 = load ptr, ptr %n.addr, align 8
  %681 = load i32, ptr %680, align 4
  %sub750 = sub nsw i32 %681, 1
  %cmp751 = icmp slt i32 %679, %sub750
  br i1 %cmp751, label %if.then752, label %if.end843

if.then752:                                       ; preds = %if.else749
  %682 = load ptr, ptr %a.addr, align 8
  %683 = load i32, ptr %k, align 4
  %add753 = add nsw i32 %683, 1
  %684 = load i32, ptr %k, align 4
  %685 = load i32, ptr %a_dim1, align 4
  %mul754 = mul nsw i32 %684, %685
  %add755 = add nsw i32 %add753, %mul754
  %idxprom756 = sext i32 %add755 to i64
  %arrayidx757 = getelementptr inbounds double, ptr %682, i64 %idxprom756
  %686 = load double, ptr %arrayidx757, align 8
  store double %686, ptr %d21, align 8
  %687 = load ptr, ptr %a.addr, align 8
  %688 = load i32, ptr %k, align 4
  %add758 = add nsw i32 %688, 1
  %689 = load i32, ptr %k, align 4
  %add759 = add nsw i32 %689, 1
  %690 = load i32, ptr %a_dim1, align 4
  %mul760 = mul nsw i32 %add759, %690
  %add761 = add nsw i32 %add758, %mul760
  %idxprom762 = sext i32 %add761 to i64
  %arrayidx763 = getelementptr inbounds double, ptr %687, i64 %idxprom762
  %691 = load double, ptr %arrayidx763, align 8
  %692 = load double, ptr %d21, align 8
  %div764 = fdiv double %691, %692
  store double %div764, ptr %d11, align 8
  %693 = load ptr, ptr %a.addr, align 8
  %694 = load i32, ptr %k, align 4
  %695 = load i32, ptr %k, align 4
  %696 = load i32, ptr %a_dim1, align 4
  %mul765 = mul nsw i32 %695, %696
  %add766 = add nsw i32 %694, %mul765
  %idxprom767 = sext i32 %add766 to i64
  %arrayidx768 = getelementptr inbounds double, ptr %693, i64 %idxprom767
  %697 = load double, ptr %arrayidx768, align 8
  %698 = load double, ptr %d21, align 8
  %div769 = fdiv double %697, %698
  store double %div769, ptr %d22, align 8
  %699 = load double, ptr %d11, align 8
  %700 = load double, ptr %d22, align 8
  %701 = call double @llvm.fmuladd.f64(double %699, double %700, double -1.000000e+00)
  %div771 = fdiv double 1.000000e+00, %701
  store double %div771, ptr %t, align 8
  %702 = load ptr, ptr %n.addr, align 8
  %703 = load i32, ptr %702, align 4
  store i32 %703, ptr %i__1, align 4
  %704 = load i32, ptr %k, align 4
  %add772 = add nsw i32 %704, 2
  store i32 %add772, ptr %j, align 4
  br label %for.cond773

for.cond773:                                      ; preds = %for.inc840, %if.then752
  %705 = load i32, ptr %j, align 4
  %706 = load i32, ptr %i__1, align 4
  %cmp774 = icmp sle i32 %705, %706
  br i1 %cmp774, label %for.body775, label %for.end842

for.body775:                                      ; preds = %for.cond773
  %707 = load double, ptr %t, align 8
  %708 = load double, ptr %d11, align 8
  %709 = load ptr, ptr %a.addr, align 8
  %710 = load i32, ptr %j, align 4
  %711 = load i32, ptr %k, align 4
  %712 = load i32, ptr %a_dim1, align 4
  %mul776 = mul nsw i32 %711, %712
  %add777 = add nsw i32 %710, %mul776
  %idxprom778 = sext i32 %add777 to i64
  %arrayidx779 = getelementptr inbounds double, ptr %709, i64 %idxprom778
  %713 = load double, ptr %arrayidx779, align 8
  %714 = load ptr, ptr %a.addr, align 8
  %715 = load i32, ptr %j, align 4
  %716 = load i32, ptr %k, align 4
  %add781 = add nsw i32 %716, 1
  %717 = load i32, ptr %a_dim1, align 4
  %mul782 = mul nsw i32 %add781, %717
  %add783 = add nsw i32 %715, %mul782
  %idxprom784 = sext i32 %add783 to i64
  %arrayidx785 = getelementptr inbounds double, ptr %714, i64 %idxprom784
  %718 = load double, ptr %arrayidx785, align 8
  %neg786 = fneg double %718
  %719 = call double @llvm.fmuladd.f64(double %708, double %713, double %neg786)
  %mul787 = fmul double %707, %719
  store double %mul787, ptr %wk, align 8
  %720 = load double, ptr %t, align 8
  %721 = load double, ptr %d22, align 8
  %722 = load ptr, ptr %a.addr, align 8
  %723 = load i32, ptr %j, align 4
  %724 = load i32, ptr %k, align 4
  %add788 = add nsw i32 %724, 1
  %725 = load i32, ptr %a_dim1, align 4
  %mul789 = mul nsw i32 %add788, %725
  %add790 = add nsw i32 %723, %mul789
  %idxprom791 = sext i32 %add790 to i64
  %arrayidx792 = getelementptr inbounds double, ptr %722, i64 %idxprom791
  %726 = load double, ptr %arrayidx792, align 8
  %727 = load ptr, ptr %a.addr, align 8
  %728 = load i32, ptr %j, align 4
  %729 = load i32, ptr %k, align 4
  %730 = load i32, ptr %a_dim1, align 4
  %mul794 = mul nsw i32 %729, %730
  %add795 = add nsw i32 %728, %mul794
  %idxprom796 = sext i32 %add795 to i64
  %arrayidx797 = getelementptr inbounds double, ptr %727, i64 %idxprom796
  %731 = load double, ptr %arrayidx797, align 8
  %neg798 = fneg double %731
  %732 = call double @llvm.fmuladd.f64(double %721, double %726, double %neg798)
  %mul799 = fmul double %720, %732
  store double %mul799, ptr %wkp1, align 8
  %733 = load ptr, ptr %n.addr, align 8
  %734 = load i32, ptr %733, align 4
  store i32 %734, ptr %i__2, align 4
  %735 = load i32, ptr %j, align 4
  store i32 %735, ptr %i__, align 4
  br label %for.cond800

for.cond800:                                      ; preds = %for.inc826, %for.body775
  %736 = load i32, ptr %i__, align 4
  %737 = load i32, ptr %i__2, align 4
  %cmp801 = icmp sle i32 %736, %737
  br i1 %cmp801, label %for.body802, label %for.end828

for.body802:                                      ; preds = %for.cond800
  %738 = load ptr, ptr %a.addr, align 8
  %739 = load i32, ptr %i__, align 4
  %740 = load i32, ptr %j, align 4
  %741 = load i32, ptr %a_dim1, align 4
  %mul803 = mul nsw i32 %740, %741
  %add804 = add nsw i32 %739, %mul803
  %idxprom805 = sext i32 %add804 to i64
  %arrayidx806 = getelementptr inbounds double, ptr %738, i64 %idxprom805
  %742 = load double, ptr %arrayidx806, align 8
  %743 = load ptr, ptr %a.addr, align 8
  %744 = load i32, ptr %i__, align 4
  %745 = load i32, ptr %k, align 4
  %746 = load i32, ptr %a_dim1, align 4
  %mul807 = mul nsw i32 %745, %746
  %add808 = add nsw i32 %744, %mul807
  %idxprom809 = sext i32 %add808 to i64
  %arrayidx810 = getelementptr inbounds double, ptr %743, i64 %idxprom809
  %747 = load double, ptr %arrayidx810, align 8
  %748 = load double, ptr %d21, align 8
  %div811 = fdiv double %747, %748
  %749 = load double, ptr %wk, align 8
  %neg813 = fneg double %div811
  %750 = call double @llvm.fmuladd.f64(double %neg813, double %749, double %742)
  %751 = load ptr, ptr %a.addr, align 8
  %752 = load i32, ptr %i__, align 4
  %753 = load i32, ptr %k, align 4
  %add814 = add nsw i32 %753, 1
  %754 = load i32, ptr %a_dim1, align 4
  %mul815 = mul nsw i32 %add814, %754
  %add816 = add nsw i32 %752, %mul815
  %idxprom817 = sext i32 %add816 to i64
  %arrayidx818 = getelementptr inbounds double, ptr %751, i64 %idxprom817
  %755 = load double, ptr %arrayidx818, align 8
  %756 = load double, ptr %d21, align 8
  %div819 = fdiv double %755, %756
  %757 = load double, ptr %wkp1, align 8
  %neg821 = fneg double %div819
  %758 = call double @llvm.fmuladd.f64(double %neg821, double %757, double %750)
  %759 = load ptr, ptr %a.addr, align 8
  %760 = load i32, ptr %i__, align 4
  %761 = load i32, ptr %j, align 4
  %762 = load i32, ptr %a_dim1, align 4
  %mul822 = mul nsw i32 %761, %762
  %add823 = add nsw i32 %760, %mul822
  %idxprom824 = sext i32 %add823 to i64
  %arrayidx825 = getelementptr inbounds double, ptr %759, i64 %idxprom824
  store double %758, ptr %arrayidx825, align 8
  br label %for.inc826

for.inc826:                                       ; preds = %for.body802
  %763 = load i32, ptr %i__, align 4
  %inc827 = add nsw i32 %763, 1
  store i32 %inc827, ptr %i__, align 4
  br label %for.cond800, !llvm.loop !10

for.end828:                                       ; preds = %for.cond800
  %764 = load double, ptr %wk, align 8
  %765 = load double, ptr %d21, align 8
  %div829 = fdiv double %764, %765
  %766 = load ptr, ptr %a.addr, align 8
  %767 = load i32, ptr %j, align 4
  %768 = load i32, ptr %k, align 4
  %769 = load i32, ptr %a_dim1, align 4
  %mul830 = mul nsw i32 %768, %769
  %add831 = add nsw i32 %767, %mul830
  %idxprom832 = sext i32 %add831 to i64
  %arrayidx833 = getelementptr inbounds double, ptr %766, i64 %idxprom832
  store double %div829, ptr %arrayidx833, align 8
  %770 = load double, ptr %wkp1, align 8
  %771 = load double, ptr %d21, align 8
  %div834 = fdiv double %770, %771
  %772 = load ptr, ptr %a.addr, align 8
  %773 = load i32, ptr %j, align 4
  %774 = load i32, ptr %k, align 4
  %add835 = add nsw i32 %774, 1
  %775 = load i32, ptr %a_dim1, align 4
  %mul836 = mul nsw i32 %add835, %775
  %add837 = add nsw i32 %773, %mul836
  %idxprom838 = sext i32 %add837 to i64
  %arrayidx839 = getelementptr inbounds double, ptr %772, i64 %idxprom838
  store double %div834, ptr %arrayidx839, align 8
  br label %for.inc840

for.inc840:                                       ; preds = %for.end828
  %776 = load i32, ptr %j, align 4
  %inc841 = add nsw i32 %776, 1
  store i32 %inc841, ptr %j, align 4
  br label %for.cond773, !llvm.loop !11

for.end842:                                       ; preds = %for.cond773
  br label %if.end843

if.end843:                                        ; preds = %for.end842, %if.else749
  br label %if.end844

if.end844:                                        ; preds = %if.end843, %if.end748
  br label %if.end845

if.end845:                                        ; preds = %if.end844, %if.end468
  %777 = load i32, ptr %kstep, align 4
  %cmp846 = icmp eq i32 %777, 1
  br i1 %cmp846, label %if.then847, label %if.else850

if.then847:                                       ; preds = %if.end845
  %778 = load i32, ptr %kp, align 4
  %779 = load ptr, ptr %ipiv.addr, align 8
  %780 = load i32, ptr %k, align 4
  %idxprom848 = sext i32 %780 to i64
  %arrayidx849 = getelementptr inbounds i32, ptr %779, i64 %idxprom848
  store i32 %778, ptr %arrayidx849, align 4
  br label %if.end858

if.else850:                                       ; preds = %if.end845
  %781 = load i32, ptr %p, align 4
  %sub851 = sub nsw i32 0, %781
  %782 = load ptr, ptr %ipiv.addr, align 8
  %783 = load i32, ptr %k, align 4
  %idxprom852 = sext i32 %783 to i64
  %arrayidx853 = getelementptr inbounds i32, ptr %782, i64 %idxprom852
  store i32 %sub851, ptr %arrayidx853, align 4
  %784 = load i32, ptr %kp, align 4
  %sub854 = sub nsw i32 0, %784
  %785 = load ptr, ptr %ipiv.addr, align 8
  %786 = load i32, ptr %k, align 4
  %add855 = add nsw i32 %786, 1
  %idxprom856 = sext i32 %add855 to i64
  %arrayidx857 = getelementptr inbounds i32, ptr %785, i64 %idxprom856
  store i32 %sub854, ptr %arrayidx857, align 4
  br label %if.end858

if.end858:                                        ; preds = %if.else850, %if.then847
  %787 = load i32, ptr %kstep, align 4
  %788 = load i32, ptr %k, align 4
  %add859 = add nsw i32 %788, %787
  store i32 %add859, ptr %k, align 4
  br label %L40

L70:                                              ; preds = %if.then425, %if.then20
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %L70, %if.then11
  %789 = load i32, ptr %retval, align 4
  ret i32 %789
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

declare double @dlamch_(ptr noundef) #1

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dsyr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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

; ModuleID = 'samples/468.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dgeequb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DGEEQUB\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dgeequb_(ptr noundef %m, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %r__, ptr noundef %c__, ptr noundef %rowcnd, ptr noundef %colcnd, ptr noundef %amax, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %r__.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %rowcnd.addr = alloca ptr, align 8
  %colcnd.addr = alloca ptr, align 8
  %amax.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %d__3 = alloca double, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %radix = alloca double, align 8
  %rcmin = alloca double, align 8
  %rcmax = alloca double, align 8
  %bignum = alloca double, align 8
  %logrdx = alloca double, align 8
  %smlnum = alloca double, align 8
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %r__, ptr %r__.addr, align 8
  store ptr %c__, ptr %c__.addr, align 8
  store ptr %rowcnd, ptr %rowcnd.addr, align 8
  store ptr %colcnd, ptr %colcnd.addr, align 8
  store ptr %amax, ptr %amax.addr, align 8
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
  %5 = load ptr, ptr %r__.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %r__.addr, align 8
  %6 = load ptr, ptr %c__.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %c__.addr, align 8
  %7 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %m.addr, align 8
  %9 = load i32, ptr %8, align 4
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %10, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %n.addr, align 8
  %12 = load i32, ptr %11, align 4
  %cmp2 = icmp slt i32 %12, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %13 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %13, align 4
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %14 = load ptr, ptr %lda.addr, align 8
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %m.addr, align 8
  %17 = load i32, ptr %16, align 4
  %cmp5 = icmp sge i32 1, %17
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else4
  br label %cond.end

cond.false:                                       ; preds = %if.else4
  %18 = load ptr, ptr %m.addr, align 8
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
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  %23 = load ptr, ptr %info.addr, align 8
  %24 = load i32, ptr %23, align 4
  %sub = sub nsw i32 0, %24
  store i32 %sub, ptr %i__1, align 4
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end9
  %25 = load ptr, ptr %m.addr, align 8
  %26 = load i32, ptr %25, align 4
  %cmp13 = icmp eq i32 %26, 0
  br i1 %cmp13, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %27 = load ptr, ptr %n.addr, align 8
  %28 = load i32, ptr %27, align 4
  %cmp14 = icmp eq i32 %28, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.end12
  %29 = load ptr, ptr %rowcnd.addr, align 8
  store double 1.000000e+00, ptr %29, align 8
  %30 = load ptr, ptr %colcnd.addr, align 8
  store double 1.000000e+00, ptr %30, align 8
  %31 = load ptr, ptr %amax.addr, align 8
  store double 0.000000e+00, ptr %31, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %lor.lhs.false
  %call17 = call double @dlamch_(ptr noundef @.str.1)
  store double %call17, ptr %smlnum, align 8
  %32 = load double, ptr %smlnum, align 8
  %div = fdiv double 1.000000e+00, %32
  store double %div, ptr %bignum, align 8
  %call18 = call double @dlamch_(ptr noundef @.str.2)
  store double %call18, ptr %radix, align 8
  %33 = load double, ptr %radix, align 8
  %call19 = call double @log(double noundef %33) #3
  store double %call19, ptr %logrdx, align 8
  %34 = load ptr, ptr %m.addr, align 8
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %36 = load i32, ptr %i__, align 4
  %37 = load i32, ptr %i__1, align 4
  %cmp20 = icmp sle i32 %36, %37
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %r__.addr, align 8
  %39 = load i32, ptr %i__, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx = getelementptr inbounds double, ptr %38, i64 %idxprom
  store double 0.000000e+00, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %41 = load ptr, ptr %n.addr, align 8
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc47, %for.end
  %43 = load i32, ptr %j, align 4
  %44 = load i32, ptr %i__1, align 4
  %cmp22 = icmp sle i32 %43, %44
  br i1 %cmp22, label %for.body23, label %for.end49

for.body23:                                       ; preds = %for.cond21
  %45 = load ptr, ptr %m.addr, align 8
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.body23
  %47 = load i32, ptr %i__, align 4
  %48 = load i32, ptr %i__2, align 4
  %cmp25 = icmp sle i32 %47, %48
  br i1 %cmp25, label %for.body26, label %for.end46

for.body26:                                       ; preds = %for.cond24
  %49 = load ptr, ptr %r__.addr, align 8
  %50 = load i32, ptr %i__, align 4
  %idxprom27 = sext i32 %50 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %49, i64 %idxprom27
  %51 = load double, ptr %arrayidx28, align 8
  store double %51, ptr %d__2, align 8
  %52 = load ptr, ptr %a.addr, align 8
  %53 = load i32, ptr %i__, align 4
  %54 = load i32, ptr %j, align 4
  %55 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %54, %55
  %add29 = add nsw i32 %53, %mul
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds double, ptr %52, i64 %idxprom30
  %56 = load double, ptr %arrayidx31, align 8
  store double %56, ptr %d__1, align 8
  %57 = load double, ptr %d__1, align 8
  %cmp32 = fcmp oge double %57, 0.000000e+00
  br i1 %cmp32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %for.body26
  %58 = load double, ptr %d__1, align 8
  br label %cond.end35

cond.false34:                                     ; preds = %for.body26
  %59 = load double, ptr %d__1, align 8
  %fneg = fneg double %59
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %cond.true33
  %cond36 = phi double [ %58, %cond.true33 ], [ %fneg, %cond.false34 ]
  store double %cond36, ptr %d__3, align 8
  %60 = load double, ptr %d__2, align 8
  %61 = load double, ptr %d__3, align 8
  %cmp37 = fcmp oge double %60, %61
  br i1 %cmp37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %cond.end35
  %62 = load double, ptr %d__2, align 8
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end35
  %63 = load double, ptr %d__3, align 8
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.true38
  %cond41 = phi double [ %62, %cond.true38 ], [ %63, %cond.false39 ]
  %64 = load ptr, ptr %r__.addr, align 8
  %65 = load i32, ptr %i__, align 4
  %idxprom42 = sext i32 %65 to i64
  %arrayidx43 = getelementptr inbounds double, ptr %64, i64 %idxprom42
  store double %cond41, ptr %arrayidx43, align 8
  br label %for.inc44

for.inc44:                                        ; preds = %cond.end40
  %66 = load i32, ptr %i__, align 4
  %inc45 = add nsw i32 %66, 1
  store i32 %inc45, ptr %i__, align 4
  br label %for.cond24, !llvm.loop !7

for.end46:                                        ; preds = %for.cond24
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %67 = load i32, ptr %j, align 4
  %inc48 = add nsw i32 %67, 1
  store i32 %inc48, ptr %j, align 4
  br label %for.cond21, !llvm.loop !8

for.end49:                                        ; preds = %for.cond21
  %68 = load ptr, ptr %m.addr, align 8
  %69 = load i32, ptr %68, align 4
  store i32 %69, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc65, %for.end49
  %70 = load i32, ptr %i__, align 4
  %71 = load i32, ptr %i__1, align 4
  %cmp51 = icmp sle i32 %70, %71
  br i1 %cmp51, label %for.body52, label %for.end67

for.body52:                                       ; preds = %for.cond50
  %72 = load ptr, ptr %r__.addr, align 8
  %73 = load i32, ptr %i__, align 4
  %idxprom53 = sext i32 %73 to i64
  %arrayidx54 = getelementptr inbounds double, ptr %72, i64 %idxprom53
  %74 = load double, ptr %arrayidx54, align 8
  %cmp55 = fcmp ogt double %74, 0.000000e+00
  br i1 %cmp55, label %if.then56, label %if.end64

if.then56:                                        ; preds = %for.body52
  %75 = load ptr, ptr %r__.addr, align 8
  %76 = load i32, ptr %i__, align 4
  %idxprom57 = sext i32 %76 to i64
  %arrayidx58 = getelementptr inbounds double, ptr %75, i64 %idxprom57
  %77 = load double, ptr %arrayidx58, align 8
  %call59 = call double @log(double noundef %77) #3
  %78 = load double, ptr %logrdx, align 8
  %div60 = fdiv double %call59, %78
  %conv = fptosi double %div60 to i32
  store i32 %conv, ptr %i__2, align 4
  %call61 = call double @pow_di(ptr noundef %radix, ptr noundef %i__2)
  %79 = load ptr, ptr %r__.addr, align 8
  %80 = load i32, ptr %i__, align 4
  %idxprom62 = sext i32 %80 to i64
  %arrayidx63 = getelementptr inbounds double, ptr %79, i64 %idxprom62
  store double %call61, ptr %arrayidx63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then56, %for.body52
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %81 = load i32, ptr %i__, align 4
  %inc66 = add nsw i32 %81, 1
  store i32 %inc66, ptr %i__, align 4
  br label %for.cond50, !llvm.loop !9

for.end67:                                        ; preds = %for.cond50
  %82 = load double, ptr %bignum, align 8
  store double %82, ptr %rcmin, align 8
  store double 0.000000e+00, ptr %rcmax, align 8
  %83 = load ptr, ptr %m.addr, align 8
  %84 = load i32, ptr %83, align 4
  store i32 %84, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc88, %for.end67
  %85 = load i32, ptr %i__, align 4
  %86 = load i32, ptr %i__1, align 4
  %cmp69 = icmp sle i32 %85, %86
  br i1 %cmp69, label %for.body71, label %for.end90

for.body71:                                       ; preds = %for.cond68
  %87 = load double, ptr %rcmax, align 8
  store double %87, ptr %d__1, align 8
  %88 = load ptr, ptr %r__.addr, align 8
  %89 = load i32, ptr %i__, align 4
  %idxprom72 = sext i32 %89 to i64
  %arrayidx73 = getelementptr inbounds double, ptr %88, i64 %idxprom72
  %90 = load double, ptr %arrayidx73, align 8
  store double %90, ptr %d__2, align 8
  %91 = load double, ptr %d__1, align 8
  %92 = load double, ptr %d__2, align 8
  %cmp74 = fcmp oge double %91, %92
  br i1 %cmp74, label %cond.true76, label %cond.false77

cond.true76:                                      ; preds = %for.body71
  %93 = load double, ptr %d__1, align 8
  br label %cond.end78

cond.false77:                                     ; preds = %for.body71
  %94 = load double, ptr %d__2, align 8
  br label %cond.end78

cond.end78:                                       ; preds = %cond.false77, %cond.true76
  %cond79 = phi double [ %93, %cond.true76 ], [ %94, %cond.false77 ]
  store double %cond79, ptr %rcmax, align 8
  %95 = load double, ptr %rcmin, align 8
  store double %95, ptr %d__1, align 8
  %96 = load ptr, ptr %r__.addr, align 8
  %97 = load i32, ptr %i__, align 4
  %idxprom80 = sext i32 %97 to i64
  %arrayidx81 = getelementptr inbounds double, ptr %96, i64 %idxprom80
  %98 = load double, ptr %arrayidx81, align 8
  store double %98, ptr %d__2, align 8
  %99 = load double, ptr %d__1, align 8
  %100 = load double, ptr %d__2, align 8
  %cmp82 = fcmp ole double %99, %100
  br i1 %cmp82, label %cond.true84, label %cond.false85

cond.true84:                                      ; preds = %cond.end78
  %101 = load double, ptr %d__1, align 8
  br label %cond.end86

cond.false85:                                     ; preds = %cond.end78
  %102 = load double, ptr %d__2, align 8
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false85, %cond.true84
  %cond87 = phi double [ %101, %cond.true84 ], [ %102, %cond.false85 ]
  store double %cond87, ptr %rcmin, align 8
  br label %for.inc88

for.inc88:                                        ; preds = %cond.end86
  %103 = load i32, ptr %i__, align 4
  %inc89 = add nsw i32 %103, 1
  store i32 %inc89, ptr %i__, align 4
  br label %for.cond68, !llvm.loop !10

for.end90:                                        ; preds = %for.cond68
  %104 = load double, ptr %rcmax, align 8
  %105 = load ptr, ptr %amax.addr, align 8
  store double %104, ptr %105, align 8
  %106 = load double, ptr %rcmin, align 8
  %cmp91 = fcmp oeq double %106, 0.000000e+00
  br i1 %cmp91, label %if.then93, label %if.else107

if.then93:                                        ; preds = %for.end90
  %107 = load ptr, ptr %m.addr, align 8
  %108 = load i32, ptr %107, align 4
  store i32 %108, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc104, %if.then93
  %109 = load i32, ptr %i__, align 4
  %110 = load i32, ptr %i__1, align 4
  %cmp95 = icmp sle i32 %109, %110
  br i1 %cmp95, label %for.body97, label %for.end106

for.body97:                                       ; preds = %for.cond94
  %111 = load ptr, ptr %r__.addr, align 8
  %112 = load i32, ptr %i__, align 4
  %idxprom98 = sext i32 %112 to i64
  %arrayidx99 = getelementptr inbounds double, ptr %111, i64 %idxprom98
  %113 = load double, ptr %arrayidx99, align 8
  %cmp100 = fcmp oeq double %113, 0.000000e+00
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %for.body97
  %114 = load i32, ptr %i__, align 4
  %115 = load ptr, ptr %info.addr, align 8
  store i32 %114, ptr %115, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end103:                                        ; preds = %for.body97
  br label %for.inc104

for.inc104:                                       ; preds = %if.end103
  %116 = load i32, ptr %i__, align 4
  %inc105 = add nsw i32 %116, 1
  store i32 %inc105, ptr %i__, align 4
  br label %for.cond94, !llvm.loop !11

for.end106:                                       ; preds = %for.cond94
  br label %if.end145

if.else107:                                       ; preds = %for.end90
  %117 = load ptr, ptr %m.addr, align 8
  %118 = load i32, ptr %117, align 4
  store i32 %118, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc129, %if.else107
  %119 = load i32, ptr %i__, align 4
  %120 = load i32, ptr %i__1, align 4
  %cmp109 = icmp sle i32 %119, %120
  br i1 %cmp109, label %for.body111, label %for.end131

for.body111:                                      ; preds = %for.cond108
  %121 = load ptr, ptr %r__.addr, align 8
  %122 = load i32, ptr %i__, align 4
  %idxprom112 = sext i32 %122 to i64
  %arrayidx113 = getelementptr inbounds double, ptr %121, i64 %idxprom112
  %123 = load double, ptr %arrayidx113, align 8
  store double %123, ptr %d__2, align 8
  %124 = load double, ptr %d__2, align 8
  %125 = load double, ptr %smlnum, align 8
  %cmp114 = fcmp oge double %124, %125
  br i1 %cmp114, label %cond.true116, label %cond.false117

cond.true116:                                     ; preds = %for.body111
  %126 = load double, ptr %d__2, align 8
  br label %cond.end118

cond.false117:                                    ; preds = %for.body111
  %127 = load double, ptr %smlnum, align 8
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false117, %cond.true116
  %cond119 = phi double [ %126, %cond.true116 ], [ %127, %cond.false117 ]
  store double %cond119, ptr %d__1, align 8
  %128 = load double, ptr %d__1, align 8
  %129 = load double, ptr %bignum, align 8
  %cmp120 = fcmp ole double %128, %129
  br i1 %cmp120, label %cond.true122, label %cond.false123

cond.true122:                                     ; preds = %cond.end118
  %130 = load double, ptr %d__1, align 8
  br label %cond.end124

cond.false123:                                    ; preds = %cond.end118
  %131 = load double, ptr %bignum, align 8
  br label %cond.end124

cond.end124:                                      ; preds = %cond.false123, %cond.true122
  %cond125 = phi double [ %130, %cond.true122 ], [ %131, %cond.false123 ]
  %div126 = fdiv double 1.000000e+00, %cond125
  %132 = load ptr, ptr %r__.addr, align 8
  %133 = load i32, ptr %i__, align 4
  %idxprom127 = sext i32 %133 to i64
  %arrayidx128 = getelementptr inbounds double, ptr %132, i64 %idxprom127
  store double %div126, ptr %arrayidx128, align 8
  br label %for.inc129

for.inc129:                                       ; preds = %cond.end124
  %134 = load i32, ptr %i__, align 4
  %inc130 = add nsw i32 %134, 1
  store i32 %inc130, ptr %i__, align 4
  br label %for.cond108, !llvm.loop !12

for.end131:                                       ; preds = %for.cond108
  %135 = load double, ptr %rcmin, align 8
  %136 = load double, ptr %smlnum, align 8
  %cmp132 = fcmp oge double %135, %136
  br i1 %cmp132, label %cond.true134, label %cond.false135

cond.true134:                                     ; preds = %for.end131
  %137 = load double, ptr %rcmin, align 8
  br label %cond.end136

cond.false135:                                    ; preds = %for.end131
  %138 = load double, ptr %smlnum, align 8
  br label %cond.end136

cond.end136:                                      ; preds = %cond.false135, %cond.true134
  %cond137 = phi double [ %137, %cond.true134 ], [ %138, %cond.false135 ]
  %139 = load double, ptr %rcmax, align 8
  %140 = load double, ptr %bignum, align 8
  %cmp138 = fcmp ole double %139, %140
  br i1 %cmp138, label %cond.true140, label %cond.false141

cond.true140:                                     ; preds = %cond.end136
  %141 = load double, ptr %rcmax, align 8
  br label %cond.end142

cond.false141:                                    ; preds = %cond.end136
  %142 = load double, ptr %bignum, align 8
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false141, %cond.true140
  %cond143 = phi double [ %141, %cond.true140 ], [ %142, %cond.false141 ]
  %div144 = fdiv double %cond137, %cond143
  %143 = load ptr, ptr %rowcnd.addr, align 8
  store double %div144, ptr %143, align 8
  br label %if.end145

if.end145:                                        ; preds = %cond.end142, %for.end106
  %144 = load ptr, ptr %n.addr, align 8
  %145 = load i32, ptr %144, align 4
  store i32 %145, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc152, %if.end145
  %146 = load i32, ptr %j, align 4
  %147 = load i32, ptr %i__1, align 4
  %cmp147 = icmp sle i32 %146, %147
  br i1 %cmp147, label %for.body149, label %for.end154

for.body149:                                      ; preds = %for.cond146
  %148 = load ptr, ptr %c__.addr, align 8
  %149 = load i32, ptr %j, align 4
  %idxprom150 = sext i32 %149 to i64
  %arrayidx151 = getelementptr inbounds double, ptr %148, i64 %idxprom150
  store double 0.000000e+00, ptr %arrayidx151, align 8
  br label %for.inc152

for.inc152:                                       ; preds = %for.body149
  %150 = load i32, ptr %j, align 4
  %inc153 = add nsw i32 %150, 1
  store i32 %inc153, ptr %j, align 4
  br label %for.cond146, !llvm.loop !13

for.end154:                                       ; preds = %for.cond146
  %151 = load ptr, ptr %n.addr, align 8
  %152 = load i32, ptr %151, align 4
  store i32 %152, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc204, %for.end154
  %153 = load i32, ptr %j, align 4
  %154 = load i32, ptr %i__1, align 4
  %cmp156 = icmp sle i32 %153, %154
  br i1 %cmp156, label %for.body158, label %for.end206

for.body158:                                      ; preds = %for.cond155
  %155 = load ptr, ptr %m.addr, align 8
  %156 = load i32, ptr %155, align 4
  store i32 %156, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc187, %for.body158
  %157 = load i32, ptr %i__, align 4
  %158 = load i32, ptr %i__2, align 4
  %cmp160 = icmp sle i32 %157, %158
  br i1 %cmp160, label %for.body162, label %for.end189

for.body162:                                      ; preds = %for.cond159
  %159 = load ptr, ptr %c__.addr, align 8
  %160 = load i32, ptr %j, align 4
  %idxprom163 = sext i32 %160 to i64
  %arrayidx164 = getelementptr inbounds double, ptr %159, i64 %idxprom163
  %161 = load double, ptr %arrayidx164, align 8
  store double %161, ptr %d__2, align 8
  %162 = load ptr, ptr %a.addr, align 8
  %163 = load i32, ptr %i__, align 4
  %164 = load i32, ptr %j, align 4
  %165 = load i32, ptr %a_dim1, align 4
  %mul165 = mul nsw i32 %164, %165
  %add166 = add nsw i32 %163, %mul165
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds double, ptr %162, i64 %idxprom167
  %166 = load double, ptr %arrayidx168, align 8
  store double %166, ptr %d__1, align 8
  %167 = load double, ptr %d__1, align 8
  %cmp169 = fcmp oge double %167, 0.000000e+00
  br i1 %cmp169, label %cond.true171, label %cond.false172

cond.true171:                                     ; preds = %for.body162
  %168 = load double, ptr %d__1, align 8
  br label %cond.end174

cond.false172:                                    ; preds = %for.body162
  %169 = load double, ptr %d__1, align 8
  %fneg173 = fneg double %169
  br label %cond.end174

cond.end174:                                      ; preds = %cond.false172, %cond.true171
  %cond175 = phi double [ %168, %cond.true171 ], [ %fneg173, %cond.false172 ]
  %170 = load ptr, ptr %r__.addr, align 8
  %171 = load i32, ptr %i__, align 4
  %idxprom176 = sext i32 %171 to i64
  %arrayidx177 = getelementptr inbounds double, ptr %170, i64 %idxprom176
  %172 = load double, ptr %arrayidx177, align 8
  %mul178 = fmul double %cond175, %172
  store double %mul178, ptr %d__3, align 8
  %173 = load double, ptr %d__2, align 8
  %174 = load double, ptr %d__3, align 8
  %cmp179 = fcmp oge double %173, %174
  br i1 %cmp179, label %cond.true181, label %cond.false182

cond.true181:                                     ; preds = %cond.end174
  %175 = load double, ptr %d__2, align 8
  br label %cond.end183

cond.false182:                                    ; preds = %cond.end174
  %176 = load double, ptr %d__3, align 8
  br label %cond.end183

cond.end183:                                      ; preds = %cond.false182, %cond.true181
  %cond184 = phi double [ %175, %cond.true181 ], [ %176, %cond.false182 ]
  %177 = load ptr, ptr %c__.addr, align 8
  %178 = load i32, ptr %j, align 4
  %idxprom185 = sext i32 %178 to i64
  %arrayidx186 = getelementptr inbounds double, ptr %177, i64 %idxprom185
  store double %cond184, ptr %arrayidx186, align 8
  br label %for.inc187

for.inc187:                                       ; preds = %cond.end183
  %179 = load i32, ptr %i__, align 4
  %inc188 = add nsw i32 %179, 1
  store i32 %inc188, ptr %i__, align 4
  br label %for.cond159, !llvm.loop !14

for.end189:                                       ; preds = %for.cond159
  %180 = load ptr, ptr %c__.addr, align 8
  %181 = load i32, ptr %j, align 4
  %idxprom190 = sext i32 %181 to i64
  %arrayidx191 = getelementptr inbounds double, ptr %180, i64 %idxprom190
  %182 = load double, ptr %arrayidx191, align 8
  %cmp192 = fcmp ogt double %182, 0.000000e+00
  br i1 %cmp192, label %if.then194, label %if.end203

if.then194:                                       ; preds = %for.end189
  %183 = load ptr, ptr %c__.addr, align 8
  %184 = load i32, ptr %j, align 4
  %idxprom195 = sext i32 %184 to i64
  %arrayidx196 = getelementptr inbounds double, ptr %183, i64 %idxprom195
  %185 = load double, ptr %arrayidx196, align 8
  %call197 = call double @log(double noundef %185) #3
  %186 = load double, ptr %logrdx, align 8
  %div198 = fdiv double %call197, %186
  %conv199 = fptosi double %div198 to i32
  store i32 %conv199, ptr %i__2, align 4
  %call200 = call double @pow_di(ptr noundef %radix, ptr noundef %i__2)
  %187 = load ptr, ptr %c__.addr, align 8
  %188 = load i32, ptr %j, align 4
  %idxprom201 = sext i32 %188 to i64
  %arrayidx202 = getelementptr inbounds double, ptr %187, i64 %idxprom201
  store double %call200, ptr %arrayidx202, align 8
  br label %if.end203

if.end203:                                        ; preds = %if.then194, %for.end189
  br label %for.inc204

for.inc204:                                       ; preds = %if.end203
  %189 = load i32, ptr %j, align 4
  %inc205 = add nsw i32 %189, 1
  store i32 %inc205, ptr %j, align 4
  br label %for.cond155, !llvm.loop !15

for.end206:                                       ; preds = %for.cond155
  %190 = load double, ptr %bignum, align 8
  store double %190, ptr %rcmin, align 8
  store double 0.000000e+00, ptr %rcmax, align 8
  %191 = load ptr, ptr %n.addr, align 8
  %192 = load i32, ptr %191, align 4
  store i32 %192, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond207

for.cond207:                                      ; preds = %for.inc227, %for.end206
  %193 = load i32, ptr %j, align 4
  %194 = load i32, ptr %i__1, align 4
  %cmp208 = icmp sle i32 %193, %194
  br i1 %cmp208, label %for.body210, label %for.end229

for.body210:                                      ; preds = %for.cond207
  %195 = load double, ptr %rcmin, align 8
  store double %195, ptr %d__1, align 8
  %196 = load ptr, ptr %c__.addr, align 8
  %197 = load i32, ptr %j, align 4
  %idxprom211 = sext i32 %197 to i64
  %arrayidx212 = getelementptr inbounds double, ptr %196, i64 %idxprom211
  %198 = load double, ptr %arrayidx212, align 8
  store double %198, ptr %d__2, align 8
  %199 = load double, ptr %d__1, align 8
  %200 = load double, ptr %d__2, align 8
  %cmp213 = fcmp ole double %199, %200
  br i1 %cmp213, label %cond.true215, label %cond.false216

cond.true215:                                     ; preds = %for.body210
  %201 = load double, ptr %d__1, align 8
  br label %cond.end217

cond.false216:                                    ; preds = %for.body210
  %202 = load double, ptr %d__2, align 8
  br label %cond.end217

cond.end217:                                      ; preds = %cond.false216, %cond.true215
  %cond218 = phi double [ %201, %cond.true215 ], [ %202, %cond.false216 ]
  store double %cond218, ptr %rcmin, align 8
  %203 = load double, ptr %rcmax, align 8
  store double %203, ptr %d__1, align 8
  %204 = load ptr, ptr %c__.addr, align 8
  %205 = load i32, ptr %j, align 4
  %idxprom219 = sext i32 %205 to i64
  %arrayidx220 = getelementptr inbounds double, ptr %204, i64 %idxprom219
  %206 = load double, ptr %arrayidx220, align 8
  store double %206, ptr %d__2, align 8
  %207 = load double, ptr %d__1, align 8
  %208 = load double, ptr %d__2, align 8
  %cmp221 = fcmp oge double %207, %208
  br i1 %cmp221, label %cond.true223, label %cond.false224

cond.true223:                                     ; preds = %cond.end217
  %209 = load double, ptr %d__1, align 8
  br label %cond.end225

cond.false224:                                    ; preds = %cond.end217
  %210 = load double, ptr %d__2, align 8
  br label %cond.end225

cond.end225:                                      ; preds = %cond.false224, %cond.true223
  %cond226 = phi double [ %209, %cond.true223 ], [ %210, %cond.false224 ]
  store double %cond226, ptr %rcmax, align 8
  br label %for.inc227

for.inc227:                                       ; preds = %cond.end225
  %211 = load i32, ptr %j, align 4
  %inc228 = add nsw i32 %211, 1
  store i32 %inc228, ptr %j, align 4
  br label %for.cond207, !llvm.loop !16

for.end229:                                       ; preds = %for.cond207
  %212 = load double, ptr %rcmin, align 8
  %cmp230 = fcmp oeq double %212, 0.000000e+00
  br i1 %cmp230, label %if.then232, label %if.else247

if.then232:                                       ; preds = %for.end229
  %213 = load ptr, ptr %n.addr, align 8
  %214 = load i32, ptr %213, align 4
  store i32 %214, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond233

for.cond233:                                      ; preds = %for.inc244, %if.then232
  %215 = load i32, ptr %j, align 4
  %216 = load i32, ptr %i__1, align 4
  %cmp234 = icmp sle i32 %215, %216
  br i1 %cmp234, label %for.body236, label %for.end246

for.body236:                                      ; preds = %for.cond233
  %217 = load ptr, ptr %c__.addr, align 8
  %218 = load i32, ptr %j, align 4
  %idxprom237 = sext i32 %218 to i64
  %arrayidx238 = getelementptr inbounds double, ptr %217, i64 %idxprom237
  %219 = load double, ptr %arrayidx238, align 8
  %cmp239 = fcmp oeq double %219, 0.000000e+00
  br i1 %cmp239, label %if.then241, label %if.end243

if.then241:                                       ; preds = %for.body236
  %220 = load ptr, ptr %m.addr, align 8
  %221 = load i32, ptr %220, align 4
  %222 = load i32, ptr %j, align 4
  %add242 = add nsw i32 %221, %222
  %223 = load ptr, ptr %info.addr, align 8
  store i32 %add242, ptr %223, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end243:                                        ; preds = %for.body236
  br label %for.inc244

for.inc244:                                       ; preds = %if.end243
  %224 = load i32, ptr %j, align 4
  %inc245 = add nsw i32 %224, 1
  store i32 %inc245, ptr %j, align 4
  br label %for.cond233, !llvm.loop !17

for.end246:                                       ; preds = %for.cond233
  br label %if.end285

if.else247:                                       ; preds = %for.end229
  %225 = load ptr, ptr %n.addr, align 8
  %226 = load i32, ptr %225, align 4
  store i32 %226, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond248

for.cond248:                                      ; preds = %for.inc269, %if.else247
  %227 = load i32, ptr %j, align 4
  %228 = load i32, ptr %i__1, align 4
  %cmp249 = icmp sle i32 %227, %228
  br i1 %cmp249, label %for.body251, label %for.end271

for.body251:                                      ; preds = %for.cond248
  %229 = load ptr, ptr %c__.addr, align 8
  %230 = load i32, ptr %j, align 4
  %idxprom252 = sext i32 %230 to i64
  %arrayidx253 = getelementptr inbounds double, ptr %229, i64 %idxprom252
  %231 = load double, ptr %arrayidx253, align 8
  store double %231, ptr %d__2, align 8
  %232 = load double, ptr %d__2, align 8
  %233 = load double, ptr %smlnum, align 8
  %cmp254 = fcmp oge double %232, %233
  br i1 %cmp254, label %cond.true256, label %cond.false257

cond.true256:                                     ; preds = %for.body251
  %234 = load double, ptr %d__2, align 8
  br label %cond.end258

cond.false257:                                    ; preds = %for.body251
  %235 = load double, ptr %smlnum, align 8
  br label %cond.end258

cond.end258:                                      ; preds = %cond.false257, %cond.true256
  %cond259 = phi double [ %234, %cond.true256 ], [ %235, %cond.false257 ]
  store double %cond259, ptr %d__1, align 8
  %236 = load double, ptr %d__1, align 8
  %237 = load double, ptr %bignum, align 8
  %cmp260 = fcmp ole double %236, %237
  br i1 %cmp260, label %cond.true262, label %cond.false263

cond.true262:                                     ; preds = %cond.end258
  %238 = load double, ptr %d__1, align 8
  br label %cond.end264

cond.false263:                                    ; preds = %cond.end258
  %239 = load double, ptr %bignum, align 8
  br label %cond.end264

cond.end264:                                      ; preds = %cond.false263, %cond.true262
  %cond265 = phi double [ %238, %cond.true262 ], [ %239, %cond.false263 ]
  %div266 = fdiv double 1.000000e+00, %cond265
  %240 = load ptr, ptr %c__.addr, align 8
  %241 = load i32, ptr %j, align 4
  %idxprom267 = sext i32 %241 to i64
  %arrayidx268 = getelementptr inbounds double, ptr %240, i64 %idxprom267
  store double %div266, ptr %arrayidx268, align 8
  br label %for.inc269

for.inc269:                                       ; preds = %cond.end264
  %242 = load i32, ptr %j, align 4
  %inc270 = add nsw i32 %242, 1
  store i32 %inc270, ptr %j, align 4
  br label %for.cond248, !llvm.loop !18

for.end271:                                       ; preds = %for.cond248
  %243 = load double, ptr %rcmin, align 8
  %244 = load double, ptr %smlnum, align 8
  %cmp272 = fcmp oge double %243, %244
  br i1 %cmp272, label %cond.true274, label %cond.false275

cond.true274:                                     ; preds = %for.end271
  %245 = load double, ptr %rcmin, align 8
  br label %cond.end276

cond.false275:                                    ; preds = %for.end271
  %246 = load double, ptr %smlnum, align 8
  br label %cond.end276

cond.end276:                                      ; preds = %cond.false275, %cond.true274
  %cond277 = phi double [ %245, %cond.true274 ], [ %246, %cond.false275 ]
  %247 = load double, ptr %rcmax, align 8
  %248 = load double, ptr %bignum, align 8
  %cmp278 = fcmp ole double %247, %248
  br i1 %cmp278, label %cond.true280, label %cond.false281

cond.true280:                                     ; preds = %cond.end276
  %249 = load double, ptr %rcmax, align 8
  br label %cond.end282

cond.false281:                                    ; preds = %cond.end276
  %250 = load double, ptr %bignum, align 8
  br label %cond.end282

cond.end282:                                      ; preds = %cond.false281, %cond.true280
  %cond283 = phi double [ %249, %cond.true280 ], [ %250, %cond.false281 ]
  %div284 = fdiv double %cond277, %cond283
  %251 = load ptr, ptr %colcnd.addr, align 8
  store double %div284, ptr %251, align 8
  br label %if.end285

if.end285:                                        ; preds = %cond.end282, %for.end246
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end285, %if.then241, %if.then102, %if.then15, %if.then11
  %252 = load i32, ptr %retval, align 4
  ret i32 %252
}

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare double @dlamch_(ptr noundef) #1

; Function Attrs: nounwind
declare double @log(double noundef) #2

declare double @pow_di(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}

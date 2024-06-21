; ModuleID = 'samples/603.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zgbsvx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ZGBSVX\00", align 1
@c__1 = internal global i32 1, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zgbsvx_(ptr noundef %fact, ptr noundef %trans, ptr noundef %n, ptr noundef %kl, ptr noundef %ku, ptr noundef %nrhs, ptr noundef %ab, ptr noundef %ldab, ptr noundef %afb, ptr noundef %ldafb, ptr noundef %ipiv, ptr noundef %equed, ptr noundef %r__, ptr noundef %c__, ptr noundef %b, ptr noundef %ldb, ptr noundef %x, ptr noundef %ldx, ptr noundef %rcond, ptr noundef %ferr, ptr noundef %berr, ptr noundef %work, ptr noundef %rwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %fact.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %kl.addr = alloca ptr, align 8
  %ku.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %ab.addr = alloca ptr, align 8
  %ldab.addr = alloca ptr, align 8
  %afb.addr = alloca ptr, align 8
  %ldafb.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %equed.addr = alloca ptr, align 8
  %r__.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ldx.addr = alloca ptr, align 8
  %rcond.addr = alloca ptr, align 8
  %ferr.addr = alloca ptr, align 8
  %berr.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %rwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %ab_dim1 = alloca i32, align 4
  %ab_offset = alloca i32, align 4
  %afb_dim1 = alloca i32, align 4
  %afb_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %x_dim1 = alloca i32, align 4
  %x_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %z__1 = alloca %struct.doublecomplex, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %amax = alloca double, align 8
  %norm = alloca [1 x i8], align 1
  %rcmin = alloca double, align 8
  %rcmax = alloca double, align 8
  %anorm = alloca double, align 8
  %equil = alloca i32, align 4
  %colcnd = alloca double, align 8
  %nofact = alloca i32, align 4
  %bignum = alloca double, align 8
  %infequ = alloca i32, align 4
  %colequ = alloca i32, align 4
  %rowcnd = alloca double, align 8
  %notran = alloca i32, align 4
  %smlnum = alloca double, align 8
  %rowequ = alloca i32, align 4
  %rpvgrw = alloca double, align 8
  store ptr %fact, ptr %fact.addr, align 8
  store ptr %trans, ptr %trans.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %kl, ptr %kl.addr, align 8
  store ptr %ku, ptr %ku.addr, align 8
  store ptr %nrhs, ptr %nrhs.addr, align 8
  store ptr %ab, ptr %ab.addr, align 8
  store ptr %ldab, ptr %ldab.addr, align 8
  store ptr %afb, ptr %afb.addr, align 8
  store ptr %ldafb, ptr %ldafb.addr, align 8
  store ptr %ipiv, ptr %ipiv.addr, align 8
  store ptr %equed, ptr %equed.addr, align 8
  store ptr %r__, ptr %r__.addr, align 8
  store ptr %c__, ptr %c__.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %ldx, ptr %ldx.addr, align 8
  store ptr %rcond, ptr %rcond.addr, align 8
  store ptr %ferr, ptr %ferr.addr, align 8
  store ptr %berr, ptr %berr.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %rwork, ptr %rwork.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %ldab.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %ab_dim1, align 4
  %2 = load i32, ptr %ab_dim1, align 4
  %add = add nsw i32 1, %2
  store i32 %add, ptr %ab_offset, align 4
  %3 = load i32, ptr %ab_offset, align 4
  %4 = load ptr, ptr %ab.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %ab.addr, align 8
  %5 = load ptr, ptr %ldafb.addr, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %afb_dim1, align 4
  %7 = load i32, ptr %afb_dim1, align 4
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %afb_offset, align 4
  %8 = load i32, ptr %afb_offset, align 4
  %9 = load ptr, ptr %afb.addr, align 8
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %afb.addr, align 8
  %10 = load ptr, ptr %ipiv.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8
  %11 = load ptr, ptr %r__.addr, align 8
  %incdec.ptr5 = getelementptr inbounds double, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %r__.addr, align 8
  %12 = load ptr, ptr %c__.addr, align 8
  %incdec.ptr6 = getelementptr inbounds double, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %c__.addr, align 8
  %13 = load ptr, ptr %ldb.addr, align 8
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %b_dim1, align 4
  %15 = load i32, ptr %b_dim1, align 4
  %add7 = add nsw i32 1, %15
  store i32 %add7, ptr %b_offset, align 4
  %16 = load i32, ptr %b_offset, align 4
  %17 = load ptr, ptr %b.addr, align 8
  %idx.ext8 = sext i32 %16 to i64
  %idx.neg9 = sub i64 0, %idx.ext8
  %add.ptr10 = getelementptr inbounds %struct.doublecomplex, ptr %17, i64 %idx.neg9
  store ptr %add.ptr10, ptr %b.addr, align 8
  %18 = load ptr, ptr %ldx.addr, align 8
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %x_dim1, align 4
  %20 = load i32, ptr %x_dim1, align 4
  %add11 = add nsw i32 1, %20
  store i32 %add11, ptr %x_offset, align 4
  %21 = load i32, ptr %x_offset, align 4
  %22 = load ptr, ptr %x.addr, align 8
  %idx.ext12 = sext i32 %21 to i64
  %idx.neg13 = sub i64 0, %idx.ext12
  %add.ptr14 = getelementptr inbounds %struct.doublecomplex, ptr %22, i64 %idx.neg13
  store ptr %add.ptr14, ptr %x.addr, align 8
  %23 = load ptr, ptr %ferr.addr, align 8
  %incdec.ptr15 = getelementptr inbounds double, ptr %23, i32 -1
  store ptr %incdec.ptr15, ptr %ferr.addr, align 8
  %24 = load ptr, ptr %berr.addr, align 8
  %incdec.ptr16 = getelementptr inbounds double, ptr %24, i32 -1
  store ptr %incdec.ptr16, ptr %berr.addr, align 8
  %25 = load ptr, ptr %work.addr, align 8
  %incdec.ptr17 = getelementptr inbounds %struct.doublecomplex, ptr %25, i32 -1
  store ptr %incdec.ptr17, ptr %work.addr, align 8
  %26 = load ptr, ptr %rwork.addr, align 8
  %incdec.ptr18 = getelementptr inbounds double, ptr %26, i32 -1
  store ptr %incdec.ptr18, ptr %rwork.addr, align 8
  %27 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %27, align 4
  %28 = load ptr, ptr %fact.addr, align 8
  %call = call i32 @lsame_(ptr noundef %28, ptr noundef @.str)
  store i32 %call, ptr %nofact, align 4
  %29 = load ptr, ptr %fact.addr, align 8
  %call19 = call i32 @lsame_(ptr noundef %29, ptr noundef @.str.1)
  store i32 %call19, ptr %equil, align 4
  %30 = load ptr, ptr %trans.addr, align 8
  %call20 = call i32 @lsame_(ptr noundef %30, ptr noundef @.str)
  store i32 %call20, ptr %notran, align 4
  %31 = load i32, ptr %nofact, align 4
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %32 = load i32, ptr %equil, align 4
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %33 = load ptr, ptr %equed.addr, align 8
  store i8 78, ptr %33, align 1
  store i32 0, ptr %rowequ, align 4
  store i32 0, ptr %colequ, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %34 = load ptr, ptr %equed.addr, align 8
  %call22 = call i32 @lsame_(ptr noundef %34, ptr noundef @.str.2)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %35 = load ptr, ptr %equed.addr, align 8
  %call24 = call i32 @lsame_(ptr noundef %35, ptr noundef @.str.3)
  %tobool25 = icmp ne i32 %call24, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else
  %36 = phi i1 [ true, %if.else ], [ %tobool25, %lor.rhs ]
  %lor.ext = zext i1 %36 to i32
  store i32 %lor.ext, ptr %rowequ, align 4
  %37 = load ptr, ptr %equed.addr, align 8
  %call26 = call i32 @lsame_(ptr noundef %37, ptr noundef @.str.4)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %lor.end31, label %lor.rhs28

lor.rhs28:                                        ; preds = %lor.end
  %38 = load ptr, ptr %equed.addr, align 8
  %call29 = call i32 @lsame_(ptr noundef %38, ptr noundef @.str.3)
  %tobool30 = icmp ne i32 %call29, 0
  br label %lor.end31

lor.end31:                                        ; preds = %lor.rhs28, %lor.end
  %39 = phi i1 [ true, %lor.end ], [ %tobool30, %lor.rhs28 ]
  %lor.ext32 = zext i1 %39 to i32
  store i32 %lor.ext32, ptr %colequ, align 4
  %call33 = call double @dlamch_(ptr noundef @.str.5)
  store double %call33, ptr %smlnum, align 8
  %40 = load double, ptr %smlnum, align 8
  %div = fdiv double 1.000000e+00, %40
  store double %div, ptr %bignum, align 8
  br label %if.end

if.end:                                           ; preds = %lor.end31, %if.then
  %41 = load i32, ptr %nofact, align 4
  %tobool34 = icmp ne i32 %41, 0
  br i1 %tobool34, label %if.else40, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %42 = load i32, ptr %equil, align 4
  %tobool35 = icmp ne i32 %42, 0
  br i1 %tobool35, label %if.else40, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true
  %43 = load ptr, ptr %fact.addr, align 8
  %call37 = call i32 @lsame_(ptr noundef %43, ptr noundef @.str.6)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.else40, label %if.then39

if.then39:                                        ; preds = %land.lhs.true36
  %44 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %44, align 4
  br label %if.end185

if.else40:                                        ; preds = %land.lhs.true36, %land.lhs.true, %if.end
  %45 = load i32, ptr %notran, align 4
  %tobool41 = icmp ne i32 %45, 0
  br i1 %tobool41, label %if.else49, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %if.else40
  %46 = load ptr, ptr %trans.addr, align 8
  %call43 = call i32 @lsame_(ptr noundef %46, ptr noundef @.str.7)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.else49, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %land.lhs.true42
  %47 = load ptr, ptr %trans.addr, align 8
  %call46 = call i32 @lsame_(ptr noundef %47, ptr noundef @.str.4)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else49, label %if.then48

if.then48:                                        ; preds = %land.lhs.true45
  %48 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %48, align 4
  br label %if.end184

if.else49:                                        ; preds = %land.lhs.true45, %land.lhs.true42, %if.else40
  %49 = load ptr, ptr %n.addr, align 8
  %50 = load i32, ptr %49, align 4
  %cmp = icmp slt i32 %50, 0
  br i1 %cmp, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else49
  %51 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %51, align 4
  br label %if.end183

if.else51:                                        ; preds = %if.else49
  %52 = load ptr, ptr %kl.addr, align 8
  %53 = load i32, ptr %52, align 4
  %cmp52 = icmp slt i32 %53, 0
  br i1 %cmp52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.else51
  %54 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %54, align 4
  br label %if.end182

if.else54:                                        ; preds = %if.else51
  %55 = load ptr, ptr %ku.addr, align 8
  %56 = load i32, ptr %55, align 4
  %cmp55 = icmp slt i32 %56, 0
  br i1 %cmp55, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.else54
  %57 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %57, align 4
  br label %if.end181

if.else57:                                        ; preds = %if.else54
  %58 = load ptr, ptr %nrhs.addr, align 8
  %59 = load i32, ptr %58, align 4
  %cmp58 = icmp slt i32 %59, 0
  br i1 %cmp58, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.else57
  %60 = load ptr, ptr %info.addr, align 8
  store i32 -6, ptr %60, align 4
  br label %if.end180

if.else60:                                        ; preds = %if.else57
  %61 = load ptr, ptr %ldab.addr, align 8
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %kl.addr, align 8
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %ku.addr, align 8
  %66 = load i32, ptr %65, align 4
  %add61 = add nsw i32 %64, %66
  %add62 = add nsw i32 %add61, 1
  %cmp63 = icmp slt i32 %62, %add62
  br i1 %cmp63, label %if.then64, label %if.else65

if.then64:                                        ; preds = %if.else60
  %67 = load ptr, ptr %info.addr, align 8
  store i32 -8, ptr %67, align 4
  br label %if.end179

if.else65:                                        ; preds = %if.else60
  %68 = load ptr, ptr %ldafb.addr, align 8
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %kl.addr, align 8
  %71 = load i32, ptr %70, align 4
  %shl = shl i32 %71, 1
  %72 = load ptr, ptr %ku.addr, align 8
  %73 = load i32, ptr %72, align 4
  %add66 = add nsw i32 %shl, %73
  %add67 = add nsw i32 %add66, 1
  %cmp68 = icmp slt i32 %69, %add67
  br i1 %cmp68, label %if.then69, label %if.else70

if.then69:                                        ; preds = %if.else65
  %74 = load ptr, ptr %info.addr, align 8
  store i32 -10, ptr %74, align 4
  br label %if.end178

if.else70:                                        ; preds = %if.else65
  %75 = load ptr, ptr %fact.addr, align 8
  %call71 = call i32 @lsame_(ptr noundef %75, ptr noundef @.str.6)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %land.lhs.true73, label %if.else81

land.lhs.true73:                                  ; preds = %if.else70
  %76 = load i32, ptr %rowequ, align 4
  %tobool74 = icmp ne i32 %76, 0
  br i1 %tobool74, label %if.else81, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %land.lhs.true73
  %77 = load i32, ptr %colequ, align 4
  %tobool76 = icmp ne i32 %77, 0
  br i1 %tobool76, label %if.else81, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false75
  %78 = load ptr, ptr %equed.addr, align 8
  %call78 = call i32 @lsame_(ptr noundef %78, ptr noundef @.str)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.else81, label %if.then80

if.then80:                                        ; preds = %lor.lhs.false77
  %79 = load ptr, ptr %info.addr, align 8
  store i32 -12, ptr %79, align 4
  br label %if.end177

if.else81:                                        ; preds = %lor.lhs.false77, %lor.lhs.false75, %land.lhs.true73, %if.else70
  %80 = load i32, ptr %rowequ, align 4
  %tobool82 = icmp ne i32 %80, 0
  br i1 %tobool82, label %if.then83, label %if.end112

if.then83:                                        ; preds = %if.else81
  %81 = load double, ptr %bignum, align 8
  store double %81, ptr %rcmin, align 8
  store double 0.000000e+00, ptr %rcmax, align 8
  %82 = load ptr, ptr %n.addr, align 8
  %83 = load i32, ptr %82, align 4
  store i32 %83, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then83
  %84 = load i32, ptr %j, align 4
  %85 = load i32, ptr %i__1, align 4
  %cmp84 = icmp sle i32 %84, %85
  br i1 %cmp84, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %86 = load double, ptr %rcmin, align 8
  store double %86, ptr %d__1, align 8
  %87 = load ptr, ptr %r__.addr, align 8
  %88 = load i32, ptr %j, align 4
  %idxprom = sext i32 %88 to i64
  %arrayidx = getelementptr inbounds double, ptr %87, i64 %idxprom
  %89 = load double, ptr %arrayidx, align 8
  store double %89, ptr %d__2, align 8
  %90 = load double, ptr %d__1, align 8
  %91 = load double, ptr %d__2, align 8
  %cmp85 = fcmp ole double %90, %91
  br i1 %cmp85, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %92 = load double, ptr %d__1, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %93 = load double, ptr %d__2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %92, %cond.true ], [ %93, %cond.false ]
  store double %cond, ptr %rcmin, align 8
  %94 = load double, ptr %rcmax, align 8
  store double %94, ptr %d__1, align 8
  %95 = load ptr, ptr %r__.addr, align 8
  %96 = load i32, ptr %j, align 4
  %idxprom86 = sext i32 %96 to i64
  %arrayidx87 = getelementptr inbounds double, ptr %95, i64 %idxprom86
  %97 = load double, ptr %arrayidx87, align 8
  store double %97, ptr %d__2, align 8
  %98 = load double, ptr %d__1, align 8
  %99 = load double, ptr %d__2, align 8
  %cmp88 = fcmp oge double %98, %99
  br i1 %cmp88, label %cond.true89, label %cond.false90

cond.true89:                                      ; preds = %cond.end
  %100 = load double, ptr %d__1, align 8
  br label %cond.end91

cond.false90:                                     ; preds = %cond.end
  %101 = load double, ptr %d__2, align 8
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false90, %cond.true89
  %cond92 = phi double [ %100, %cond.true89 ], [ %101, %cond.false90 ]
  store double %cond92, ptr %rcmax, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end91
  %102 = load i32, ptr %j, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %103 = load double, ptr %rcmin, align 8
  %cmp93 = fcmp ole double %103, 0.000000e+00
  br i1 %cmp93, label %if.then94, label %if.else95

if.then94:                                        ; preds = %for.end
  %104 = load ptr, ptr %info.addr, align 8
  store i32 -13, ptr %104, align 4
  br label %if.end111

if.else95:                                        ; preds = %for.end
  %105 = load ptr, ptr %n.addr, align 8
  %106 = load i32, ptr %105, align 4
  %cmp96 = icmp sgt i32 %106, 0
  br i1 %cmp96, label %if.then97, label %if.else109

if.then97:                                        ; preds = %if.else95
  %107 = load double, ptr %rcmin, align 8
  %108 = load double, ptr %smlnum, align 8
  %cmp98 = fcmp oge double %107, %108
  br i1 %cmp98, label %cond.true99, label %cond.false100

cond.true99:                                      ; preds = %if.then97
  %109 = load double, ptr %rcmin, align 8
  br label %cond.end101

cond.false100:                                    ; preds = %if.then97
  %110 = load double, ptr %smlnum, align 8
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false100, %cond.true99
  %cond102 = phi double [ %109, %cond.true99 ], [ %110, %cond.false100 ]
  %111 = load double, ptr %rcmax, align 8
  %112 = load double, ptr %bignum, align 8
  %cmp103 = fcmp ole double %111, %112
  br i1 %cmp103, label %cond.true104, label %cond.false105

cond.true104:                                     ; preds = %cond.end101
  %113 = load double, ptr %rcmax, align 8
  br label %cond.end106

cond.false105:                                    ; preds = %cond.end101
  %114 = load double, ptr %bignum, align 8
  br label %cond.end106

cond.end106:                                      ; preds = %cond.false105, %cond.true104
  %cond107 = phi double [ %113, %cond.true104 ], [ %114, %cond.false105 ]
  %div108 = fdiv double %cond102, %cond107
  store double %div108, ptr %rowcnd, align 8
  br label %if.end110

if.else109:                                       ; preds = %if.else95
  store double 1.000000e+00, ptr %rowcnd, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.else109, %cond.end106
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then94
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.else81
  %115 = load i32, ptr %colequ, align 4
  %tobool113 = icmp ne i32 %115, 0
  br i1 %tobool113, label %land.lhs.true114, label %if.end156

land.lhs.true114:                                 ; preds = %if.end112
  %116 = load ptr, ptr %info.addr, align 8
  %117 = load i32, ptr %116, align 4
  %cmp115 = icmp eq i32 %117, 0
  br i1 %cmp115, label %if.then116, label %if.end156

if.then116:                                       ; preds = %land.lhs.true114
  %118 = load double, ptr %bignum, align 8
  store double %118, ptr %rcmin, align 8
  store double 0.000000e+00, ptr %rcmax, align 8
  %119 = load ptr, ptr %n.addr, align 8
  %120 = load i32, ptr %119, align 4
  store i32 %120, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc134, %if.then116
  %121 = load i32, ptr %j, align 4
  %122 = load i32, ptr %i__1, align 4
  %cmp118 = icmp sle i32 %121, %122
  br i1 %cmp118, label %for.body119, label %for.end136

for.body119:                                      ; preds = %for.cond117
  %123 = load double, ptr %rcmin, align 8
  store double %123, ptr %d__1, align 8
  %124 = load ptr, ptr %c__.addr, align 8
  %125 = load i32, ptr %j, align 4
  %idxprom120 = sext i32 %125 to i64
  %arrayidx121 = getelementptr inbounds double, ptr %124, i64 %idxprom120
  %126 = load double, ptr %arrayidx121, align 8
  store double %126, ptr %d__2, align 8
  %127 = load double, ptr %d__1, align 8
  %128 = load double, ptr %d__2, align 8
  %cmp122 = fcmp ole double %127, %128
  br i1 %cmp122, label %cond.true123, label %cond.false124

cond.true123:                                     ; preds = %for.body119
  %129 = load double, ptr %d__1, align 8
  br label %cond.end125

cond.false124:                                    ; preds = %for.body119
  %130 = load double, ptr %d__2, align 8
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false124, %cond.true123
  %cond126 = phi double [ %129, %cond.true123 ], [ %130, %cond.false124 ]
  store double %cond126, ptr %rcmin, align 8
  %131 = load double, ptr %rcmax, align 8
  store double %131, ptr %d__1, align 8
  %132 = load ptr, ptr %c__.addr, align 8
  %133 = load i32, ptr %j, align 4
  %idxprom127 = sext i32 %133 to i64
  %arrayidx128 = getelementptr inbounds double, ptr %132, i64 %idxprom127
  %134 = load double, ptr %arrayidx128, align 8
  store double %134, ptr %d__2, align 8
  %135 = load double, ptr %d__1, align 8
  %136 = load double, ptr %d__2, align 8
  %cmp129 = fcmp oge double %135, %136
  br i1 %cmp129, label %cond.true130, label %cond.false131

cond.true130:                                     ; preds = %cond.end125
  %137 = load double, ptr %d__1, align 8
  br label %cond.end132

cond.false131:                                    ; preds = %cond.end125
  %138 = load double, ptr %d__2, align 8
  br label %cond.end132

cond.end132:                                      ; preds = %cond.false131, %cond.true130
  %cond133 = phi double [ %137, %cond.true130 ], [ %138, %cond.false131 ]
  store double %cond133, ptr %rcmax, align 8
  br label %for.inc134

for.inc134:                                       ; preds = %cond.end132
  %139 = load i32, ptr %j, align 4
  %inc135 = add nsw i32 %139, 1
  store i32 %inc135, ptr %j, align 4
  br label %for.cond117, !llvm.loop !7

for.end136:                                       ; preds = %for.cond117
  %140 = load double, ptr %rcmin, align 8
  %cmp137 = fcmp ole double %140, 0.000000e+00
  br i1 %cmp137, label %if.then138, label %if.else139

if.then138:                                       ; preds = %for.end136
  %141 = load ptr, ptr %info.addr, align 8
  store i32 -14, ptr %141, align 4
  br label %if.end155

if.else139:                                       ; preds = %for.end136
  %142 = load ptr, ptr %n.addr, align 8
  %143 = load i32, ptr %142, align 4
  %cmp140 = icmp sgt i32 %143, 0
  br i1 %cmp140, label %if.then141, label %if.else153

if.then141:                                       ; preds = %if.else139
  %144 = load double, ptr %rcmin, align 8
  %145 = load double, ptr %smlnum, align 8
  %cmp142 = fcmp oge double %144, %145
  br i1 %cmp142, label %cond.true143, label %cond.false144

cond.true143:                                     ; preds = %if.then141
  %146 = load double, ptr %rcmin, align 8
  br label %cond.end145

cond.false144:                                    ; preds = %if.then141
  %147 = load double, ptr %smlnum, align 8
  br label %cond.end145

cond.end145:                                      ; preds = %cond.false144, %cond.true143
  %cond146 = phi double [ %146, %cond.true143 ], [ %147, %cond.false144 ]
  %148 = load double, ptr %rcmax, align 8
  %149 = load double, ptr %bignum, align 8
  %cmp147 = fcmp ole double %148, %149
  br i1 %cmp147, label %cond.true148, label %cond.false149

cond.true148:                                     ; preds = %cond.end145
  %150 = load double, ptr %rcmax, align 8
  br label %cond.end150

cond.false149:                                    ; preds = %cond.end145
  %151 = load double, ptr %bignum, align 8
  br label %cond.end150

cond.end150:                                      ; preds = %cond.false149, %cond.true148
  %cond151 = phi double [ %150, %cond.true148 ], [ %151, %cond.false149 ]
  %div152 = fdiv double %cond146, %cond151
  store double %div152, ptr %colcnd, align 8
  br label %if.end154

if.else153:                                       ; preds = %if.else139
  store double 1.000000e+00, ptr %colcnd, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.else153, %cond.end150
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.then138
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %land.lhs.true114, %if.end112
  %152 = load ptr, ptr %info.addr, align 8
  %153 = load i32, ptr %152, align 4
  %cmp157 = icmp eq i32 %153, 0
  br i1 %cmp157, label %if.then158, label %if.end176

if.then158:                                       ; preds = %if.end156
  %154 = load ptr, ptr %ldb.addr, align 8
  %155 = load i32, ptr %154, align 4
  %156 = load ptr, ptr %n.addr, align 8
  %157 = load i32, ptr %156, align 4
  %cmp159 = icmp sge i32 1, %157
  br i1 %cmp159, label %cond.true160, label %cond.false161

cond.true160:                                     ; preds = %if.then158
  br label %cond.end162

cond.false161:                                    ; preds = %if.then158
  %158 = load ptr, ptr %n.addr, align 8
  %159 = load i32, ptr %158, align 4
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false161, %cond.true160
  %cond163 = phi i32 [ 1, %cond.true160 ], [ %159, %cond.false161 ]
  %cmp164 = icmp slt i32 %155, %cond163
  br i1 %cmp164, label %if.then165, label %if.else166

if.then165:                                       ; preds = %cond.end162
  %160 = load ptr, ptr %info.addr, align 8
  store i32 -16, ptr %160, align 4
  br label %if.end175

if.else166:                                       ; preds = %cond.end162
  %161 = load ptr, ptr %ldx.addr, align 8
  %162 = load i32, ptr %161, align 4
  %163 = load ptr, ptr %n.addr, align 8
  %164 = load i32, ptr %163, align 4
  %cmp167 = icmp sge i32 1, %164
  br i1 %cmp167, label %cond.true168, label %cond.false169

cond.true168:                                     ; preds = %if.else166
  br label %cond.end170

cond.false169:                                    ; preds = %if.else166
  %165 = load ptr, ptr %n.addr, align 8
  %166 = load i32, ptr %165, align 4
  br label %cond.end170

cond.end170:                                      ; preds = %cond.false169, %cond.true168
  %cond171 = phi i32 [ 1, %cond.true168 ], [ %166, %cond.false169 ]
  %cmp172 = icmp slt i32 %162, %cond171
  br i1 %cmp172, label %if.then173, label %if.end174

if.then173:                                       ; preds = %cond.end170
  %167 = load ptr, ptr %info.addr, align 8
  store i32 -18, ptr %167, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then173, %cond.end170
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.then165
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.end156
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.then80
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.then69
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.then64
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.then59
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.then56
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.then53
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.then50
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.then48
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.then39
  %168 = load ptr, ptr %info.addr, align 8
  %169 = load i32, ptr %168, align 4
  %cmp186 = icmp ne i32 %169, 0
  br i1 %cmp186, label %if.then187, label %if.end189

if.then187:                                       ; preds = %if.end185
  %170 = load ptr, ptr %info.addr, align 8
  %171 = load i32, ptr %170, align 4
  %sub = sub nsw i32 0, %171
  store i32 %sub, ptr %i__1, align 4
  %call188 = call i32 @xerbla_(ptr noundef @.str.8, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end189:                                        ; preds = %if.end185
  %172 = load i32, ptr %equil, align 4
  %tobool190 = icmp ne i32 %172, 0
  br i1 %tobool190, label %if.then191, label %if.end219

if.then191:                                       ; preds = %if.end189
  %173 = load ptr, ptr %n.addr, align 8
  %174 = load ptr, ptr %n.addr, align 8
  %175 = load ptr, ptr %kl.addr, align 8
  %176 = load ptr, ptr %ku.addr, align 8
  %177 = load ptr, ptr %ab.addr, align 8
  %178 = load i32, ptr %ab_offset, align 4
  %idxprom192 = sext i32 %178 to i64
  %arrayidx193 = getelementptr inbounds %struct.doublecomplex, ptr %177, i64 %idxprom192
  %179 = load ptr, ptr %ldab.addr, align 8
  %180 = load ptr, ptr %r__.addr, align 8
  %arrayidx194 = getelementptr inbounds double, ptr %180, i64 1
  %181 = load ptr, ptr %c__.addr, align 8
  %arrayidx195 = getelementptr inbounds double, ptr %181, i64 1
  %call196 = call i32 @zgbequ_(ptr noundef %173, ptr noundef %174, ptr noundef %175, ptr noundef %176, ptr noundef %arrayidx193, ptr noundef %179, ptr noundef %arrayidx194, ptr noundef %arrayidx195, ptr noundef %rowcnd, ptr noundef %colcnd, ptr noundef %amax, ptr noundef %infequ)
  %182 = load i32, ptr %infequ, align 4
  %cmp197 = icmp eq i32 %182, 0
  br i1 %cmp197, label %if.then198, label %if.end218

if.then198:                                       ; preds = %if.then191
  %183 = load ptr, ptr %n.addr, align 8
  %184 = load ptr, ptr %n.addr, align 8
  %185 = load ptr, ptr %kl.addr, align 8
  %186 = load ptr, ptr %ku.addr, align 8
  %187 = load ptr, ptr %ab.addr, align 8
  %188 = load i32, ptr %ab_offset, align 4
  %idxprom199 = sext i32 %188 to i64
  %arrayidx200 = getelementptr inbounds %struct.doublecomplex, ptr %187, i64 %idxprom199
  %189 = load ptr, ptr %ldab.addr, align 8
  %190 = load ptr, ptr %r__.addr, align 8
  %arrayidx201 = getelementptr inbounds double, ptr %190, i64 1
  %191 = load ptr, ptr %c__.addr, align 8
  %arrayidx202 = getelementptr inbounds double, ptr %191, i64 1
  %192 = load ptr, ptr %equed.addr, align 8
  %call203 = call i32 @zlaqgb_(ptr noundef %183, ptr noundef %184, ptr noundef %185, ptr noundef %186, ptr noundef %arrayidx200, ptr noundef %189, ptr noundef %arrayidx201, ptr noundef %arrayidx202, ptr noundef %rowcnd, ptr noundef %colcnd, ptr noundef %amax, ptr noundef %192)
  %193 = load ptr, ptr %equed.addr, align 8
  %call204 = call i32 @lsame_(ptr noundef %193, ptr noundef @.str.2)
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %lor.end209, label %lor.rhs206

lor.rhs206:                                       ; preds = %if.then198
  %194 = load ptr, ptr %equed.addr, align 8
  %call207 = call i32 @lsame_(ptr noundef %194, ptr noundef @.str.3)
  %tobool208 = icmp ne i32 %call207, 0
  br label %lor.end209

lor.end209:                                       ; preds = %lor.rhs206, %if.then198
  %195 = phi i1 [ true, %if.then198 ], [ %tobool208, %lor.rhs206 ]
  %lor.ext210 = zext i1 %195 to i32
  store i32 %lor.ext210, ptr %rowequ, align 4
  %196 = load ptr, ptr %equed.addr, align 8
  %call211 = call i32 @lsame_(ptr noundef %196, ptr noundef @.str.4)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %lor.end216, label %lor.rhs213

lor.rhs213:                                       ; preds = %lor.end209
  %197 = load ptr, ptr %equed.addr, align 8
  %call214 = call i32 @lsame_(ptr noundef %197, ptr noundef @.str.3)
  %tobool215 = icmp ne i32 %call214, 0
  br label %lor.end216

lor.end216:                                       ; preds = %lor.rhs213, %lor.end209
  %198 = phi i1 [ true, %lor.end209 ], [ %tobool215, %lor.rhs213 ]
  %lor.ext217 = zext i1 %198 to i32
  store i32 %lor.ext217, ptr %colequ, align 4
  br label %if.end218

if.end218:                                        ; preds = %lor.end216, %if.then191
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.end189
  %199 = load i32, ptr %notran, align 4
  %tobool220 = icmp ne i32 %199, 0
  br i1 %tobool220, label %if.then221, label %if.else260

if.then221:                                       ; preds = %if.end219
  %200 = load i32, ptr %rowequ, align 4
  %tobool222 = icmp ne i32 %200, 0
  br i1 %tobool222, label %if.then223, label %if.end259

if.then223:                                       ; preds = %if.then221
  %201 = load ptr, ptr %nrhs.addr, align 8
  %202 = load i32, ptr %201, align 4
  store i32 %202, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond224

for.cond224:                                      ; preds = %for.inc256, %if.then223
  %203 = load i32, ptr %j, align 4
  %204 = load i32, ptr %i__1, align 4
  %cmp225 = icmp sle i32 %203, %204
  br i1 %cmp225, label %for.body226, label %for.end258

for.body226:                                      ; preds = %for.cond224
  %205 = load ptr, ptr %n.addr, align 8
  %206 = load i32, ptr %205, align 4
  store i32 %206, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond227

for.cond227:                                      ; preds = %for.inc253, %for.body226
  %207 = load i32, ptr %i__, align 4
  %208 = load i32, ptr %i__2, align 4
  %cmp228 = icmp sle i32 %207, %208
  br i1 %cmp228, label %for.body229, label %for.end255

for.body229:                                      ; preds = %for.cond227
  %209 = load i32, ptr %i__, align 4
  %210 = load i32, ptr %j, align 4
  %211 = load i32, ptr %b_dim1, align 4
  %mul = mul nsw i32 %210, %211
  %add230 = add nsw i32 %209, %mul
  store i32 %add230, ptr %i__3, align 4
  %212 = load i32, ptr %i__, align 4
  store i32 %212, ptr %i__4, align 4
  %213 = load i32, ptr %i__, align 4
  %214 = load i32, ptr %j, align 4
  %215 = load i32, ptr %b_dim1, align 4
  %mul231 = mul nsw i32 %214, %215
  %add232 = add nsw i32 %213, %mul231
  store i32 %add232, ptr %i__5, align 4
  %216 = load ptr, ptr %r__.addr, align 8
  %217 = load i32, ptr %i__4, align 4
  %idxprom233 = sext i32 %217 to i64
  %arrayidx234 = getelementptr inbounds double, ptr %216, i64 %idxprom233
  %218 = load double, ptr %arrayidx234, align 8
  %219 = load ptr, ptr %b.addr, align 8
  %220 = load i32, ptr %i__5, align 4
  %idxprom235 = sext i32 %220 to i64
  %arrayidx236 = getelementptr inbounds %struct.doublecomplex, ptr %219, i64 %idxprom235
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx236, i32 0, i32 0
  %221 = load double, ptr %r, align 8
  %mul237 = fmul double %218, %221
  %r238 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul237, ptr %r238, align 8
  %222 = load ptr, ptr %r__.addr, align 8
  %223 = load i32, ptr %i__4, align 4
  %idxprom239 = sext i32 %223 to i64
  %arrayidx240 = getelementptr inbounds double, ptr %222, i64 %idxprom239
  %224 = load double, ptr %arrayidx240, align 8
  %225 = load ptr, ptr %b.addr, align 8
  %226 = load i32, ptr %i__5, align 4
  %idxprom241 = sext i32 %226 to i64
  %arrayidx242 = getelementptr inbounds %struct.doublecomplex, ptr %225, i64 %idxprom241
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx242, i32 0, i32 1
  %227 = load double, ptr %i, align 8
  %mul243 = fmul double %224, %227
  %i244 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul243, ptr %i244, align 8
  %r245 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %228 = load double, ptr %r245, align 8
  %229 = load ptr, ptr %b.addr, align 8
  %230 = load i32, ptr %i__3, align 4
  %idxprom246 = sext i32 %230 to i64
  %arrayidx247 = getelementptr inbounds %struct.doublecomplex, ptr %229, i64 %idxprom246
  %r248 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx247, i32 0, i32 0
  store double %228, ptr %r248, align 8
  %i249 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %231 = load double, ptr %i249, align 8
  %232 = load ptr, ptr %b.addr, align 8
  %233 = load i32, ptr %i__3, align 4
  %idxprom250 = sext i32 %233 to i64
  %arrayidx251 = getelementptr inbounds %struct.doublecomplex, ptr %232, i64 %idxprom250
  %i252 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx251, i32 0, i32 1
  store double %231, ptr %i252, align 8
  br label %for.inc253

for.inc253:                                       ; preds = %for.body229
  %234 = load i32, ptr %i__, align 4
  %inc254 = add nsw i32 %234, 1
  store i32 %inc254, ptr %i__, align 4
  br label %for.cond227, !llvm.loop !8

for.end255:                                       ; preds = %for.cond227
  br label %for.inc256

for.inc256:                                       ; preds = %for.end255
  %235 = load i32, ptr %j, align 4
  %inc257 = add nsw i32 %235, 1
  store i32 %inc257, ptr %j, align 4
  br label %for.cond224, !llvm.loop !9

for.end258:                                       ; preds = %for.cond224
  br label %if.end259

if.end259:                                        ; preds = %for.end258, %if.then221
  br label %if.end302

if.else260:                                       ; preds = %if.end219
  %236 = load i32, ptr %colequ, align 4
  %tobool261 = icmp ne i32 %236, 0
  br i1 %tobool261, label %if.then262, label %if.end301

if.then262:                                       ; preds = %if.else260
  %237 = load ptr, ptr %nrhs.addr, align 8
  %238 = load i32, ptr %237, align 4
  store i32 %238, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond263

for.cond263:                                      ; preds = %for.inc298, %if.then262
  %239 = load i32, ptr %j, align 4
  %240 = load i32, ptr %i__1, align 4
  %cmp264 = icmp sle i32 %239, %240
  br i1 %cmp264, label %for.body265, label %for.end300

for.body265:                                      ; preds = %for.cond263
  %241 = load ptr, ptr %n.addr, align 8
  %242 = load i32, ptr %241, align 4
  store i32 %242, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond266

for.cond266:                                      ; preds = %for.inc295, %for.body265
  %243 = load i32, ptr %i__, align 4
  %244 = load i32, ptr %i__2, align 4
  %cmp267 = icmp sle i32 %243, %244
  br i1 %cmp267, label %for.body268, label %for.end297

for.body268:                                      ; preds = %for.cond266
  %245 = load i32, ptr %i__, align 4
  %246 = load i32, ptr %j, align 4
  %247 = load i32, ptr %b_dim1, align 4
  %mul269 = mul nsw i32 %246, %247
  %add270 = add nsw i32 %245, %mul269
  store i32 %add270, ptr %i__3, align 4
  %248 = load i32, ptr %i__, align 4
  store i32 %248, ptr %i__4, align 4
  %249 = load i32, ptr %i__, align 4
  %250 = load i32, ptr %j, align 4
  %251 = load i32, ptr %b_dim1, align 4
  %mul271 = mul nsw i32 %250, %251
  %add272 = add nsw i32 %249, %mul271
  store i32 %add272, ptr %i__5, align 4
  %252 = load ptr, ptr %c__.addr, align 8
  %253 = load i32, ptr %i__4, align 4
  %idxprom273 = sext i32 %253 to i64
  %arrayidx274 = getelementptr inbounds double, ptr %252, i64 %idxprom273
  %254 = load double, ptr %arrayidx274, align 8
  %255 = load ptr, ptr %b.addr, align 8
  %256 = load i32, ptr %i__5, align 4
  %idxprom275 = sext i32 %256 to i64
  %arrayidx276 = getelementptr inbounds %struct.doublecomplex, ptr %255, i64 %idxprom275
  %r277 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx276, i32 0, i32 0
  %257 = load double, ptr %r277, align 8
  %mul278 = fmul double %254, %257
  %r279 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul278, ptr %r279, align 8
  %258 = load ptr, ptr %c__.addr, align 8
  %259 = load i32, ptr %i__4, align 4
  %idxprom280 = sext i32 %259 to i64
  %arrayidx281 = getelementptr inbounds double, ptr %258, i64 %idxprom280
  %260 = load double, ptr %arrayidx281, align 8
  %261 = load ptr, ptr %b.addr, align 8
  %262 = load i32, ptr %i__5, align 4
  %idxprom282 = sext i32 %262 to i64
  %arrayidx283 = getelementptr inbounds %struct.doublecomplex, ptr %261, i64 %idxprom282
  %i284 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx283, i32 0, i32 1
  %263 = load double, ptr %i284, align 8
  %mul285 = fmul double %260, %263
  %i286 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul285, ptr %i286, align 8
  %r287 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %264 = load double, ptr %r287, align 8
  %265 = load ptr, ptr %b.addr, align 8
  %266 = load i32, ptr %i__3, align 4
  %idxprom288 = sext i32 %266 to i64
  %arrayidx289 = getelementptr inbounds %struct.doublecomplex, ptr %265, i64 %idxprom288
  %r290 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx289, i32 0, i32 0
  store double %264, ptr %r290, align 8
  %i291 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %267 = load double, ptr %i291, align 8
  %268 = load ptr, ptr %b.addr, align 8
  %269 = load i32, ptr %i__3, align 4
  %idxprom292 = sext i32 %269 to i64
  %arrayidx293 = getelementptr inbounds %struct.doublecomplex, ptr %268, i64 %idxprom292
  %i294 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx293, i32 0, i32 1
  store double %267, ptr %i294, align 8
  br label %for.inc295

for.inc295:                                       ; preds = %for.body268
  %270 = load i32, ptr %i__, align 4
  %inc296 = add nsw i32 %270, 1
  store i32 %inc296, ptr %i__, align 4
  br label %for.cond266, !llvm.loop !10

for.end297:                                       ; preds = %for.cond266
  br label %for.inc298

for.inc298:                                       ; preds = %for.end297
  %271 = load i32, ptr %j, align 4
  %inc299 = add nsw i32 %271, 1
  store i32 %inc299, ptr %j, align 4
  br label %for.cond263, !llvm.loop !11

for.end300:                                       ; preds = %for.cond263
  br label %if.end301

if.end301:                                        ; preds = %for.end300, %if.else260
  br label %if.end302

if.end302:                                        ; preds = %if.end301, %if.end259
  %272 = load i32, ptr %nofact, align 4
  %tobool303 = icmp ne i32 %272, 0
  br i1 %tobool303, label %if.then306, label %lor.lhs.false304

lor.lhs.false304:                                 ; preds = %if.end302
  %273 = load i32, ptr %equil, align 4
  %tobool305 = icmp ne i32 %273, 0
  br i1 %tobool305, label %if.then306, label %if.end415

if.then306:                                       ; preds = %lor.lhs.false304, %if.end302
  %274 = load ptr, ptr %n.addr, align 8
  %275 = load i32, ptr %274, align 4
  store i32 %275, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond307

for.cond307:                                      ; preds = %for.inc340, %if.then306
  %276 = load i32, ptr %j, align 4
  %277 = load i32, ptr %i__1, align 4
  %cmp308 = icmp sle i32 %276, %277
  br i1 %cmp308, label %for.body309, label %for.end342

for.body309:                                      ; preds = %for.cond307
  %278 = load i32, ptr %j, align 4
  %279 = load ptr, ptr %ku.addr, align 8
  %280 = load i32, ptr %279, align 4
  %sub310 = sub nsw i32 %278, %280
  store i32 %sub310, ptr %i__2, align 4
  %281 = load i32, ptr %i__2, align 4
  %cmp311 = icmp sge i32 %281, 1
  br i1 %cmp311, label %cond.true312, label %cond.false313

cond.true312:                                     ; preds = %for.body309
  %282 = load i32, ptr %i__2, align 4
  br label %cond.end314

cond.false313:                                    ; preds = %for.body309
  br label %cond.end314

cond.end314:                                      ; preds = %cond.false313, %cond.true312
  %cond315 = phi i32 [ %282, %cond.true312 ], [ 1, %cond.false313 ]
  store i32 %cond315, ptr %j1, align 4
  %283 = load i32, ptr %j, align 4
  %284 = load ptr, ptr %kl.addr, align 8
  %285 = load i32, ptr %284, align 4
  %add316 = add nsw i32 %283, %285
  store i32 %add316, ptr %i__2, align 4
  %286 = load i32, ptr %i__2, align 4
  %287 = load ptr, ptr %n.addr, align 8
  %288 = load i32, ptr %287, align 4
  %cmp317 = icmp sle i32 %286, %288
  br i1 %cmp317, label %cond.true318, label %cond.false319

cond.true318:                                     ; preds = %cond.end314
  %289 = load i32, ptr %i__2, align 4
  br label %cond.end320

cond.false319:                                    ; preds = %cond.end314
  %290 = load ptr, ptr %n.addr, align 8
  %291 = load i32, ptr %290, align 4
  br label %cond.end320

cond.end320:                                      ; preds = %cond.false319, %cond.true318
  %cond321 = phi i32 [ %289, %cond.true318 ], [ %291, %cond.false319 ]
  store i32 %cond321, ptr %j2, align 4
  %292 = load i32, ptr %j2, align 4
  %293 = load i32, ptr %j1, align 4
  %sub322 = sub nsw i32 %292, %293
  %add323 = add nsw i32 %sub322, 1
  store i32 %add323, ptr %i__2, align 4
  %294 = load ptr, ptr %ab.addr, align 8
  %295 = load ptr, ptr %ku.addr, align 8
  %296 = load i32, ptr %295, align 4
  %add324 = add nsw i32 %296, 1
  %297 = load i32, ptr %j, align 4
  %sub325 = sub nsw i32 %add324, %297
  %298 = load i32, ptr %j1, align 4
  %add326 = add nsw i32 %sub325, %298
  %299 = load i32, ptr %j, align 4
  %300 = load i32, ptr %ab_dim1, align 4
  %mul327 = mul nsw i32 %299, %300
  %add328 = add nsw i32 %add326, %mul327
  %idxprom329 = sext i32 %add328 to i64
  %arrayidx330 = getelementptr inbounds %struct.doublecomplex, ptr %294, i64 %idxprom329
  %301 = load ptr, ptr %afb.addr, align 8
  %302 = load ptr, ptr %kl.addr, align 8
  %303 = load i32, ptr %302, align 4
  %304 = load ptr, ptr %ku.addr, align 8
  %305 = load i32, ptr %304, align 4
  %add331 = add nsw i32 %303, %305
  %add332 = add nsw i32 %add331, 1
  %306 = load i32, ptr %j, align 4
  %sub333 = sub nsw i32 %add332, %306
  %307 = load i32, ptr %j1, align 4
  %add334 = add nsw i32 %sub333, %307
  %308 = load i32, ptr %j, align 4
  %309 = load i32, ptr %afb_dim1, align 4
  %mul335 = mul nsw i32 %308, %309
  %add336 = add nsw i32 %add334, %mul335
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds %struct.doublecomplex, ptr %301, i64 %idxprom337
  %call339 = call i32 @zcopy_(ptr noundef %i__2, ptr noundef %arrayidx330, ptr noundef @c__1, ptr noundef %arrayidx338, ptr noundef @c__1)
  br label %for.inc340

for.inc340:                                       ; preds = %cond.end320
  %310 = load i32, ptr %j, align 4
  %inc341 = add nsw i32 %310, 1
  store i32 %inc341, ptr %j, align 4
  br label %for.cond307, !llvm.loop !12

for.end342:                                       ; preds = %for.cond307
  %311 = load ptr, ptr %n.addr, align 8
  %312 = load ptr, ptr %n.addr, align 8
  %313 = load ptr, ptr %kl.addr, align 8
  %314 = load ptr, ptr %ku.addr, align 8
  %315 = load ptr, ptr %afb.addr, align 8
  %316 = load i32, ptr %afb_offset, align 4
  %idxprom343 = sext i32 %316 to i64
  %arrayidx344 = getelementptr inbounds %struct.doublecomplex, ptr %315, i64 %idxprom343
  %317 = load ptr, ptr %ldafb.addr, align 8
  %318 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx345 = getelementptr inbounds i32, ptr %318, i64 1
  %319 = load ptr, ptr %info.addr, align 8
  %call346 = call i32 @zgbtrf_(ptr noundef %311, ptr noundef %312, ptr noundef %313, ptr noundef %314, ptr noundef %arrayidx344, ptr noundef %317, ptr noundef %arrayidx345, ptr noundef %319)
  %320 = load ptr, ptr %info.addr, align 8
  %321 = load i32, ptr %320, align 4
  %cmp347 = icmp sgt i32 %321, 0
  br i1 %cmp347, label %if.then348, label %if.end414

if.then348:                                       ; preds = %for.end342
  store double 0.000000e+00, ptr %anorm, align 8
  %322 = load ptr, ptr %info.addr, align 8
  %323 = load i32, ptr %322, align 4
  store i32 %323, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond349

for.cond349:                                      ; preds = %for.inc385, %if.then348
  %324 = load i32, ptr %j, align 4
  %325 = load i32, ptr %i__1, align 4
  %cmp350 = icmp sle i32 %324, %325
  br i1 %cmp350, label %for.body351, label %for.end387

for.body351:                                      ; preds = %for.cond349
  %326 = load ptr, ptr %ku.addr, align 8
  %327 = load i32, ptr %326, align 4
  %add352 = add nsw i32 %327, 2
  %328 = load i32, ptr %j, align 4
  %sub353 = sub nsw i32 %add352, %328
  store i32 %sub353, ptr %i__2, align 4
  %329 = load ptr, ptr %n.addr, align 8
  %330 = load i32, ptr %329, align 4
  %331 = load ptr, ptr %ku.addr, align 8
  %332 = load i32, ptr %331, align 4
  %add354 = add nsw i32 %330, %332
  %add355 = add nsw i32 %add354, 1
  %333 = load i32, ptr %j, align 4
  %sub356 = sub nsw i32 %add355, %333
  store i32 %sub356, ptr %i__4, align 4
  %334 = load ptr, ptr %kl.addr, align 8
  %335 = load i32, ptr %334, align 4
  %336 = load ptr, ptr %ku.addr, align 8
  %337 = load i32, ptr %336, align 4
  %add357 = add nsw i32 %335, %337
  %add358 = add nsw i32 %add357, 1
  store i32 %add358, ptr %i__5, align 4
  %338 = load i32, ptr %i__4, align 4
  %339 = load i32, ptr %i__5, align 4
  %cmp359 = icmp sle i32 %338, %339
  br i1 %cmp359, label %cond.true360, label %cond.false361

cond.true360:                                     ; preds = %for.body351
  %340 = load i32, ptr %i__4, align 4
  br label %cond.end362

cond.false361:                                    ; preds = %for.body351
  %341 = load i32, ptr %i__5, align 4
  br label %cond.end362

cond.end362:                                      ; preds = %cond.false361, %cond.true360
  %cond363 = phi i32 [ %340, %cond.true360 ], [ %341, %cond.false361 ]
  store i32 %cond363, ptr %i__3, align 4
  %342 = load i32, ptr %i__2, align 4
  %cmp364 = icmp sge i32 %342, 1
  br i1 %cmp364, label %cond.true365, label %cond.false366

cond.true365:                                     ; preds = %cond.end362
  %343 = load i32, ptr %i__2, align 4
  br label %cond.end367

cond.false366:                                    ; preds = %cond.end362
  br label %cond.end367

cond.end367:                                      ; preds = %cond.false366, %cond.true365
  %cond368 = phi i32 [ %343, %cond.true365 ], [ 1, %cond.false366 ]
  store i32 %cond368, ptr %i__, align 4
  br label %for.cond369

for.cond369:                                      ; preds = %for.inc382, %cond.end367
  %344 = load i32, ptr %i__, align 4
  %345 = load i32, ptr %i__3, align 4
  %cmp370 = icmp sle i32 %344, %345
  br i1 %cmp370, label %for.body371, label %for.end384

for.body371:                                      ; preds = %for.cond369
  %346 = load double, ptr %anorm, align 8
  store double %346, ptr %d__1, align 8
  %347 = load ptr, ptr %ab.addr, align 8
  %348 = load i32, ptr %i__, align 4
  %349 = load i32, ptr %j, align 4
  %350 = load i32, ptr %ab_dim1, align 4
  %mul372 = mul nsw i32 %349, %350
  %add373 = add nsw i32 %348, %mul372
  %idxprom374 = sext i32 %add373 to i64
  %arrayidx375 = getelementptr inbounds %struct.doublecomplex, ptr %347, i64 %idxprom374
  %call376 = call double @z_abs(ptr noundef %arrayidx375)
  store double %call376, ptr %d__2, align 8
  %351 = load double, ptr %d__1, align 8
  %352 = load double, ptr %d__2, align 8
  %cmp377 = fcmp oge double %351, %352
  br i1 %cmp377, label %cond.true378, label %cond.false379

cond.true378:                                     ; preds = %for.body371
  %353 = load double, ptr %d__1, align 8
  br label %cond.end380

cond.false379:                                    ; preds = %for.body371
  %354 = load double, ptr %d__2, align 8
  br label %cond.end380

cond.end380:                                      ; preds = %cond.false379, %cond.true378
  %cond381 = phi double [ %353, %cond.true378 ], [ %354, %cond.false379 ]
  store double %cond381, ptr %anorm, align 8
  br label %for.inc382

for.inc382:                                       ; preds = %cond.end380
  %355 = load i32, ptr %i__, align 4
  %inc383 = add nsw i32 %355, 1
  store i32 %inc383, ptr %i__, align 4
  br label %for.cond369, !llvm.loop !13

for.end384:                                       ; preds = %for.cond369
  br label %for.inc385

for.inc385:                                       ; preds = %for.end384
  %356 = load i32, ptr %j, align 4
  %inc386 = add nsw i32 %356, 1
  store i32 %inc386, ptr %j, align 4
  br label %for.cond349, !llvm.loop !14

for.end387:                                       ; preds = %for.cond349
  %357 = load ptr, ptr %info.addr, align 8
  %358 = load i32, ptr %357, align 4
  %sub388 = sub nsw i32 %358, 1
  store i32 %sub388, ptr %i__3, align 4
  %359 = load ptr, ptr %kl.addr, align 8
  %360 = load i32, ptr %359, align 4
  %361 = load ptr, ptr %ku.addr, align 8
  %362 = load i32, ptr %361, align 4
  %add389 = add nsw i32 %360, %362
  store i32 %add389, ptr %i__2, align 4
  %363 = load i32, ptr %i__3, align 4
  %364 = load i32, ptr %i__2, align 4
  %cmp390 = icmp sle i32 %363, %364
  br i1 %cmp390, label %cond.true391, label %cond.false392

cond.true391:                                     ; preds = %for.end387
  %365 = load i32, ptr %i__3, align 4
  br label %cond.end393

cond.false392:                                    ; preds = %for.end387
  %366 = load i32, ptr %i__2, align 4
  br label %cond.end393

cond.end393:                                      ; preds = %cond.false392, %cond.true391
  %cond394 = phi i32 [ %365, %cond.true391 ], [ %366, %cond.false392 ]
  store i32 %cond394, ptr %i__1, align 4
  store i32 1, ptr %i__4, align 4
  %367 = load ptr, ptr %kl.addr, align 8
  %368 = load i32, ptr %367, align 4
  %369 = load ptr, ptr %ku.addr, align 8
  %370 = load i32, ptr %369, align 4
  %add395 = add nsw i32 %368, %370
  %add396 = add nsw i32 %add395, 2
  %371 = load ptr, ptr %info.addr, align 8
  %372 = load i32, ptr %371, align 4
  %sub397 = sub nsw i32 %add396, %372
  store i32 %sub397, ptr %i__5, align 4
  %373 = load ptr, ptr %info.addr, align 8
  %374 = load ptr, ptr %afb.addr, align 8
  %375 = load i32, ptr %i__4, align 4
  %376 = load i32, ptr %i__5, align 4
  %cmp398 = icmp sge i32 %375, %376
  br i1 %cmp398, label %cond.true399, label %cond.false400

cond.true399:                                     ; preds = %cond.end393
  %377 = load i32, ptr %i__4, align 4
  br label %cond.end401

cond.false400:                                    ; preds = %cond.end393
  %378 = load i32, ptr %i__5, align 4
  br label %cond.end401

cond.end401:                                      ; preds = %cond.false400, %cond.true399
  %cond402 = phi i32 [ %377, %cond.true399 ], [ %378, %cond.false400 ]
  %379 = load i32, ptr %afb_dim1, align 4
  %add403 = add nsw i32 %cond402, %379
  %idxprom404 = sext i32 %add403 to i64
  %arrayidx405 = getelementptr inbounds %struct.doublecomplex, ptr %374, i64 %idxprom404
  %380 = load ptr, ptr %ldafb.addr, align 8
  %381 = load ptr, ptr %rwork.addr, align 8
  %arrayidx406 = getelementptr inbounds double, ptr %381, i64 1
  %call407 = call double @zlantb_(ptr noundef @.str.9, ptr noundef @.str.10, ptr noundef @.str, ptr noundef %373, ptr noundef %i__1, ptr noundef %arrayidx405, ptr noundef %380, ptr noundef %arrayidx406)
  store double %call407, ptr %rpvgrw, align 8
  %382 = load double, ptr %rpvgrw, align 8
  %cmp408 = fcmp oeq double %382, 0.000000e+00
  br i1 %cmp408, label %if.then409, label %if.else410

if.then409:                                       ; preds = %cond.end401
  store double 1.000000e+00, ptr %rpvgrw, align 8
  br label %if.end412

if.else410:                                       ; preds = %cond.end401
  %383 = load double, ptr %anorm, align 8
  %384 = load double, ptr %rpvgrw, align 8
  %div411 = fdiv double %383, %384
  store double %div411, ptr %rpvgrw, align 8
  br label %if.end412

if.end412:                                        ; preds = %if.else410, %if.then409
  %385 = load double, ptr %rpvgrw, align 8
  %386 = load ptr, ptr %rwork.addr, align 8
  %arrayidx413 = getelementptr inbounds double, ptr %386, i64 1
  store double %385, ptr %arrayidx413, align 8
  %387 = load ptr, ptr %rcond.addr, align 8
  store double 0.000000e+00, ptr %387, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end414:                                        ; preds = %for.end342
  br label %if.end415

if.end415:                                        ; preds = %if.end414, %lor.lhs.false304
  %388 = load i32, ptr %notran, align 4
  %tobool416 = icmp ne i32 %388, 0
  br i1 %tobool416, label %if.then417, label %if.else418

if.then417:                                       ; preds = %if.end415
  %arraydecay = getelementptr inbounds [1 x i8], ptr %norm, i64 0, i64 0
  store i8 49, ptr %arraydecay, align 1
  br label %if.end420

if.else418:                                       ; preds = %if.end415
  %arraydecay419 = getelementptr inbounds [1 x i8], ptr %norm, i64 0, i64 0
  store i8 73, ptr %arraydecay419, align 1
  br label %if.end420

if.end420:                                        ; preds = %if.else418, %if.then417
  %arraydecay421 = getelementptr inbounds [1 x i8], ptr %norm, i64 0, i64 0
  %389 = load ptr, ptr %n.addr, align 8
  %390 = load ptr, ptr %kl.addr, align 8
  %391 = load ptr, ptr %ku.addr, align 8
  %392 = load ptr, ptr %ab.addr, align 8
  %393 = load i32, ptr %ab_offset, align 4
  %idxprom422 = sext i32 %393 to i64
  %arrayidx423 = getelementptr inbounds %struct.doublecomplex, ptr %392, i64 %idxprom422
  %394 = load ptr, ptr %ldab.addr, align 8
  %395 = load ptr, ptr %rwork.addr, align 8
  %arrayidx424 = getelementptr inbounds double, ptr %395, i64 1
  %call425 = call double @zlangb_(ptr noundef %arraydecay421, ptr noundef %389, ptr noundef %390, ptr noundef %391, ptr noundef %arrayidx423, ptr noundef %394, ptr noundef %arrayidx424)
  store double %call425, ptr %anorm, align 8
  %396 = load ptr, ptr %kl.addr, align 8
  %397 = load i32, ptr %396, align 4
  %398 = load ptr, ptr %ku.addr, align 8
  %399 = load i32, ptr %398, align 4
  %add426 = add nsw i32 %397, %399
  store i32 %add426, ptr %i__1, align 4
  %400 = load ptr, ptr %n.addr, align 8
  %401 = load ptr, ptr %afb.addr, align 8
  %402 = load i32, ptr %afb_offset, align 4
  %idxprom427 = sext i32 %402 to i64
  %arrayidx428 = getelementptr inbounds %struct.doublecomplex, ptr %401, i64 %idxprom427
  %403 = load ptr, ptr %ldafb.addr, align 8
  %404 = load ptr, ptr %rwork.addr, align 8
  %arrayidx429 = getelementptr inbounds double, ptr %404, i64 1
  %call430 = call double @zlantb_(ptr noundef @.str.9, ptr noundef @.str.10, ptr noundef @.str, ptr noundef %400, ptr noundef %i__1, ptr noundef %arrayidx428, ptr noundef %403, ptr noundef %arrayidx429)
  store double %call430, ptr %rpvgrw, align 8
  %405 = load double, ptr %rpvgrw, align 8
  %cmp431 = fcmp oeq double %405, 0.000000e+00
  br i1 %cmp431, label %if.then432, label %if.else433

if.then432:                                       ; preds = %if.end420
  store double 1.000000e+00, ptr %rpvgrw, align 8
  br label %if.end439

if.else433:                                       ; preds = %if.end420
  %406 = load ptr, ptr %n.addr, align 8
  %407 = load ptr, ptr %kl.addr, align 8
  %408 = load ptr, ptr %ku.addr, align 8
  %409 = load ptr, ptr %ab.addr, align 8
  %410 = load i32, ptr %ab_offset, align 4
  %idxprom434 = sext i32 %410 to i64
  %arrayidx435 = getelementptr inbounds %struct.doublecomplex, ptr %409, i64 %idxprom434
  %411 = load ptr, ptr %ldab.addr, align 8
  %412 = load ptr, ptr %rwork.addr, align 8
  %arrayidx436 = getelementptr inbounds double, ptr %412, i64 1
  %call437 = call double @zlangb_(ptr noundef @.str.9, ptr noundef %406, ptr noundef %407, ptr noundef %408, ptr noundef %arrayidx435, ptr noundef %411, ptr noundef %arrayidx436)
  %413 = load double, ptr %rpvgrw, align 8
  %div438 = fdiv double %call437, %413
  store double %div438, ptr %rpvgrw, align 8
  br label %if.end439

if.end439:                                        ; preds = %if.else433, %if.then432
  %arraydecay440 = getelementptr inbounds [1 x i8], ptr %norm, i64 0, i64 0
  %414 = load ptr, ptr %n.addr, align 8
  %415 = load ptr, ptr %kl.addr, align 8
  %416 = load ptr, ptr %ku.addr, align 8
  %417 = load ptr, ptr %afb.addr, align 8
  %418 = load i32, ptr %afb_offset, align 4
  %idxprom441 = sext i32 %418 to i64
  %arrayidx442 = getelementptr inbounds %struct.doublecomplex, ptr %417, i64 %idxprom441
  %419 = load ptr, ptr %ldafb.addr, align 8
  %420 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx443 = getelementptr inbounds i32, ptr %420, i64 1
  %421 = load ptr, ptr %rcond.addr, align 8
  %422 = load ptr, ptr %work.addr, align 8
  %arrayidx444 = getelementptr inbounds %struct.doublecomplex, ptr %422, i64 1
  %423 = load ptr, ptr %rwork.addr, align 8
  %arrayidx445 = getelementptr inbounds double, ptr %423, i64 1
  %424 = load ptr, ptr %info.addr, align 8
  %call446 = call i32 @zgbcon_(ptr noundef %arraydecay440, ptr noundef %414, ptr noundef %415, ptr noundef %416, ptr noundef %arrayidx442, ptr noundef %419, ptr noundef %arrayidx443, ptr noundef %anorm, ptr noundef %421, ptr noundef %arrayidx444, ptr noundef %arrayidx445, ptr noundef %424)
  %425 = load ptr, ptr %n.addr, align 8
  %426 = load ptr, ptr %nrhs.addr, align 8
  %427 = load ptr, ptr %b.addr, align 8
  %428 = load i32, ptr %b_offset, align 4
  %idxprom447 = sext i32 %428 to i64
  %arrayidx448 = getelementptr inbounds %struct.doublecomplex, ptr %427, i64 %idxprom447
  %429 = load ptr, ptr %ldb.addr, align 8
  %430 = load ptr, ptr %x.addr, align 8
  %431 = load i32, ptr %x_offset, align 4
  %idxprom449 = sext i32 %431 to i64
  %arrayidx450 = getelementptr inbounds %struct.doublecomplex, ptr %430, i64 %idxprom449
  %432 = load ptr, ptr %ldx.addr, align 8
  %call451 = call i32 @zlacpy_(ptr noundef @.str.11, ptr noundef %425, ptr noundef %426, ptr noundef %arrayidx448, ptr noundef %429, ptr noundef %arrayidx450, ptr noundef %432)
  %433 = load ptr, ptr %trans.addr, align 8
  %434 = load ptr, ptr %n.addr, align 8
  %435 = load ptr, ptr %kl.addr, align 8
  %436 = load ptr, ptr %ku.addr, align 8
  %437 = load ptr, ptr %nrhs.addr, align 8
  %438 = load ptr, ptr %afb.addr, align 8
  %439 = load i32, ptr %afb_offset, align 4
  %idxprom452 = sext i32 %439 to i64
  %arrayidx453 = getelementptr inbounds %struct.doublecomplex, ptr %438, i64 %idxprom452
  %440 = load ptr, ptr %ldafb.addr, align 8
  %441 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx454 = getelementptr inbounds i32, ptr %441, i64 1
  %442 = load ptr, ptr %x.addr, align 8
  %443 = load i32, ptr %x_offset, align 4
  %idxprom455 = sext i32 %443 to i64
  %arrayidx456 = getelementptr inbounds %struct.doublecomplex, ptr %442, i64 %idxprom455
  %444 = load ptr, ptr %ldx.addr, align 8
  %445 = load ptr, ptr %info.addr, align 8
  %call457 = call i32 @zgbtrs_(ptr noundef %433, ptr noundef %434, ptr noundef %435, ptr noundef %436, ptr noundef %437, ptr noundef %arrayidx453, ptr noundef %440, ptr noundef %arrayidx454, ptr noundef %arrayidx456, ptr noundef %444, ptr noundef %445)
  %446 = load ptr, ptr %trans.addr, align 8
  %447 = load ptr, ptr %n.addr, align 8
  %448 = load ptr, ptr %kl.addr, align 8
  %449 = load ptr, ptr %ku.addr, align 8
  %450 = load ptr, ptr %nrhs.addr, align 8
  %451 = load ptr, ptr %ab.addr, align 8
  %452 = load i32, ptr %ab_offset, align 4
  %idxprom458 = sext i32 %452 to i64
  %arrayidx459 = getelementptr inbounds %struct.doublecomplex, ptr %451, i64 %idxprom458
  %453 = load ptr, ptr %ldab.addr, align 8
  %454 = load ptr, ptr %afb.addr, align 8
  %455 = load i32, ptr %afb_offset, align 4
  %idxprom460 = sext i32 %455 to i64
  %arrayidx461 = getelementptr inbounds %struct.doublecomplex, ptr %454, i64 %idxprom460
  %456 = load ptr, ptr %ldafb.addr, align 8
  %457 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx462 = getelementptr inbounds i32, ptr %457, i64 1
  %458 = load ptr, ptr %b.addr, align 8
  %459 = load i32, ptr %b_offset, align 4
  %idxprom463 = sext i32 %459 to i64
  %arrayidx464 = getelementptr inbounds %struct.doublecomplex, ptr %458, i64 %idxprom463
  %460 = load ptr, ptr %ldb.addr, align 8
  %461 = load ptr, ptr %x.addr, align 8
  %462 = load i32, ptr %x_offset, align 4
  %idxprom465 = sext i32 %462 to i64
  %arrayidx466 = getelementptr inbounds %struct.doublecomplex, ptr %461, i64 %idxprom465
  %463 = load ptr, ptr %ldx.addr, align 8
  %464 = load ptr, ptr %ferr.addr, align 8
  %arrayidx467 = getelementptr inbounds double, ptr %464, i64 1
  %465 = load ptr, ptr %berr.addr, align 8
  %arrayidx468 = getelementptr inbounds double, ptr %465, i64 1
  %466 = load ptr, ptr %work.addr, align 8
  %arrayidx469 = getelementptr inbounds %struct.doublecomplex, ptr %466, i64 1
  %467 = load ptr, ptr %rwork.addr, align 8
  %arrayidx470 = getelementptr inbounds double, ptr %467, i64 1
  %468 = load ptr, ptr %info.addr, align 8
  %call471 = call i32 @zgbrfs_(ptr noundef %446, ptr noundef %447, ptr noundef %448, ptr noundef %449, ptr noundef %450, ptr noundef %arrayidx459, ptr noundef %453, ptr noundef %arrayidx461, ptr noundef %456, ptr noundef %arrayidx462, ptr noundef %arrayidx464, ptr noundef %460, ptr noundef %arrayidx466, ptr noundef %463, ptr noundef %arrayidx467, ptr noundef %arrayidx468, ptr noundef %arrayidx469, ptr noundef %arrayidx470, ptr noundef %468)
  %469 = load i32, ptr %notran, align 4
  %tobool472 = icmp ne i32 %469, 0
  br i1 %tobool472, label %if.then473, label %if.else524

if.then473:                                       ; preds = %if.end439
  %470 = load i32, ptr %colequ, align 4
  %tobool474 = icmp ne i32 %470, 0
  br i1 %tobool474, label %if.then475, label %if.end523

if.then475:                                       ; preds = %if.then473
  %471 = load ptr, ptr %nrhs.addr, align 8
  %472 = load i32, ptr %471, align 4
  store i32 %472, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond476

for.cond476:                                      ; preds = %for.inc511, %if.then475
  %473 = load i32, ptr %j, align 4
  %474 = load i32, ptr %i__1, align 4
  %cmp477 = icmp sle i32 %473, %474
  br i1 %cmp477, label %for.body478, label %for.end513

for.body478:                                      ; preds = %for.cond476
  %475 = load ptr, ptr %n.addr, align 8
  %476 = load i32, ptr %475, align 4
  store i32 %476, ptr %i__3, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond479

for.cond479:                                      ; preds = %for.inc508, %for.body478
  %477 = load i32, ptr %i__, align 4
  %478 = load i32, ptr %i__3, align 4
  %cmp480 = icmp sle i32 %477, %478
  br i1 %cmp480, label %for.body481, label %for.end510

for.body481:                                      ; preds = %for.cond479
  %479 = load i32, ptr %i__, align 4
  %480 = load i32, ptr %j, align 4
  %481 = load i32, ptr %x_dim1, align 4
  %mul482 = mul nsw i32 %480, %481
  %add483 = add nsw i32 %479, %mul482
  store i32 %add483, ptr %i__2, align 4
  %482 = load i32, ptr %i__, align 4
  store i32 %482, ptr %i__4, align 4
  %483 = load i32, ptr %i__, align 4
  %484 = load i32, ptr %j, align 4
  %485 = load i32, ptr %x_dim1, align 4
  %mul484 = mul nsw i32 %484, %485
  %add485 = add nsw i32 %483, %mul484
  store i32 %add485, ptr %i__5, align 4
  %486 = load ptr, ptr %c__.addr, align 8
  %487 = load i32, ptr %i__4, align 4
  %idxprom486 = sext i32 %487 to i64
  %arrayidx487 = getelementptr inbounds double, ptr %486, i64 %idxprom486
  %488 = load double, ptr %arrayidx487, align 8
  %489 = load ptr, ptr %x.addr, align 8
  %490 = load i32, ptr %i__5, align 4
  %idxprom488 = sext i32 %490 to i64
  %arrayidx489 = getelementptr inbounds %struct.doublecomplex, ptr %489, i64 %idxprom488
  %r490 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx489, i32 0, i32 0
  %491 = load double, ptr %r490, align 8
  %mul491 = fmul double %488, %491
  %r492 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul491, ptr %r492, align 8
  %492 = load ptr, ptr %c__.addr, align 8
  %493 = load i32, ptr %i__4, align 4
  %idxprom493 = sext i32 %493 to i64
  %arrayidx494 = getelementptr inbounds double, ptr %492, i64 %idxprom493
  %494 = load double, ptr %arrayidx494, align 8
  %495 = load ptr, ptr %x.addr, align 8
  %496 = load i32, ptr %i__5, align 4
  %idxprom495 = sext i32 %496 to i64
  %arrayidx496 = getelementptr inbounds %struct.doublecomplex, ptr %495, i64 %idxprom495
  %i497 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx496, i32 0, i32 1
  %497 = load double, ptr %i497, align 8
  %mul498 = fmul double %494, %497
  %i499 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul498, ptr %i499, align 8
  %r500 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %498 = load double, ptr %r500, align 8
  %499 = load ptr, ptr %x.addr, align 8
  %500 = load i32, ptr %i__2, align 4
  %idxprom501 = sext i32 %500 to i64
  %arrayidx502 = getelementptr inbounds %struct.doublecomplex, ptr %499, i64 %idxprom501
  %r503 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx502, i32 0, i32 0
  store double %498, ptr %r503, align 8
  %i504 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %501 = load double, ptr %i504, align 8
  %502 = load ptr, ptr %x.addr, align 8
  %503 = load i32, ptr %i__2, align 4
  %idxprom505 = sext i32 %503 to i64
  %arrayidx506 = getelementptr inbounds %struct.doublecomplex, ptr %502, i64 %idxprom505
  %i507 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx506, i32 0, i32 1
  store double %501, ptr %i507, align 8
  br label %for.inc508

for.inc508:                                       ; preds = %for.body481
  %504 = load i32, ptr %i__, align 4
  %inc509 = add nsw i32 %504, 1
  store i32 %inc509, ptr %i__, align 4
  br label %for.cond479, !llvm.loop !15

for.end510:                                       ; preds = %for.cond479
  br label %for.inc511

for.inc511:                                       ; preds = %for.end510
  %505 = load i32, ptr %j, align 4
  %inc512 = add nsw i32 %505, 1
  store i32 %inc512, ptr %j, align 4
  br label %for.cond476, !llvm.loop !16

for.end513:                                       ; preds = %for.cond476
  %506 = load ptr, ptr %nrhs.addr, align 8
  %507 = load i32, ptr %506, align 4
  store i32 %507, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond514

for.cond514:                                      ; preds = %for.inc520, %for.end513
  %508 = load i32, ptr %j, align 4
  %509 = load i32, ptr %i__1, align 4
  %cmp515 = icmp sle i32 %508, %509
  br i1 %cmp515, label %for.body516, label %for.end522

for.body516:                                      ; preds = %for.cond514
  %510 = load double, ptr %colcnd, align 8
  %511 = load ptr, ptr %ferr.addr, align 8
  %512 = load i32, ptr %j, align 4
  %idxprom517 = sext i32 %512 to i64
  %arrayidx518 = getelementptr inbounds double, ptr %511, i64 %idxprom517
  %513 = load double, ptr %arrayidx518, align 8
  %div519 = fdiv double %513, %510
  store double %div519, ptr %arrayidx518, align 8
  br label %for.inc520

for.inc520:                                       ; preds = %for.body516
  %514 = load i32, ptr %j, align 4
  %inc521 = add nsw i32 %514, 1
  store i32 %inc521, ptr %j, align 4
  br label %for.cond514, !llvm.loop !17

for.end522:                                       ; preds = %for.cond514
  br label %if.end523

if.end523:                                        ; preds = %for.end522, %if.then473
  br label %if.end575

if.else524:                                       ; preds = %if.end439
  %515 = load i32, ptr %rowequ, align 4
  %tobool525 = icmp ne i32 %515, 0
  br i1 %tobool525, label %if.then526, label %if.end574

if.then526:                                       ; preds = %if.else524
  %516 = load ptr, ptr %nrhs.addr, align 8
  %517 = load i32, ptr %516, align 4
  store i32 %517, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond527

for.cond527:                                      ; preds = %for.inc562, %if.then526
  %518 = load i32, ptr %j, align 4
  %519 = load i32, ptr %i__1, align 4
  %cmp528 = icmp sle i32 %518, %519
  br i1 %cmp528, label %for.body529, label %for.end564

for.body529:                                      ; preds = %for.cond527
  %520 = load ptr, ptr %n.addr, align 8
  %521 = load i32, ptr %520, align 4
  store i32 %521, ptr %i__3, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond530

for.cond530:                                      ; preds = %for.inc559, %for.body529
  %522 = load i32, ptr %i__, align 4
  %523 = load i32, ptr %i__3, align 4
  %cmp531 = icmp sle i32 %522, %523
  br i1 %cmp531, label %for.body532, label %for.end561

for.body532:                                      ; preds = %for.cond530
  %524 = load i32, ptr %i__, align 4
  %525 = load i32, ptr %j, align 4
  %526 = load i32, ptr %x_dim1, align 4
  %mul533 = mul nsw i32 %525, %526
  %add534 = add nsw i32 %524, %mul533
  store i32 %add534, ptr %i__2, align 4
  %527 = load i32, ptr %i__, align 4
  store i32 %527, ptr %i__4, align 4
  %528 = load i32, ptr %i__, align 4
  %529 = load i32, ptr %j, align 4
  %530 = load i32, ptr %x_dim1, align 4
  %mul535 = mul nsw i32 %529, %530
  %add536 = add nsw i32 %528, %mul535
  store i32 %add536, ptr %i__5, align 4
  %531 = load ptr, ptr %r__.addr, align 8
  %532 = load i32, ptr %i__4, align 4
  %idxprom537 = sext i32 %532 to i64
  %arrayidx538 = getelementptr inbounds double, ptr %531, i64 %idxprom537
  %533 = load double, ptr %arrayidx538, align 8
  %534 = load ptr, ptr %x.addr, align 8
  %535 = load i32, ptr %i__5, align 4
  %idxprom539 = sext i32 %535 to i64
  %arrayidx540 = getelementptr inbounds %struct.doublecomplex, ptr %534, i64 %idxprom539
  %r541 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx540, i32 0, i32 0
  %536 = load double, ptr %r541, align 8
  %mul542 = fmul double %533, %536
  %r543 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double %mul542, ptr %r543, align 8
  %537 = load ptr, ptr %r__.addr, align 8
  %538 = load i32, ptr %i__4, align 4
  %idxprom544 = sext i32 %538 to i64
  %arrayidx545 = getelementptr inbounds double, ptr %537, i64 %idxprom544
  %539 = load double, ptr %arrayidx545, align 8
  %540 = load ptr, ptr %x.addr, align 8
  %541 = load i32, ptr %i__5, align 4
  %idxprom546 = sext i32 %541 to i64
  %arrayidx547 = getelementptr inbounds %struct.doublecomplex, ptr %540, i64 %idxprom546
  %i548 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx547, i32 0, i32 1
  %542 = load double, ptr %i548, align 8
  %mul549 = fmul double %539, %542
  %i550 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double %mul549, ptr %i550, align 8
  %r551 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  %543 = load double, ptr %r551, align 8
  %544 = load ptr, ptr %x.addr, align 8
  %545 = load i32, ptr %i__2, align 4
  %idxprom552 = sext i32 %545 to i64
  %arrayidx553 = getelementptr inbounds %struct.doublecomplex, ptr %544, i64 %idxprom552
  %r554 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx553, i32 0, i32 0
  store double %543, ptr %r554, align 8
  %i555 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  %546 = load double, ptr %i555, align 8
  %547 = load ptr, ptr %x.addr, align 8
  %548 = load i32, ptr %i__2, align 4
  %idxprom556 = sext i32 %548 to i64
  %arrayidx557 = getelementptr inbounds %struct.doublecomplex, ptr %547, i64 %idxprom556
  %i558 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx557, i32 0, i32 1
  store double %546, ptr %i558, align 8
  br label %for.inc559

for.inc559:                                       ; preds = %for.body532
  %549 = load i32, ptr %i__, align 4
  %inc560 = add nsw i32 %549, 1
  store i32 %inc560, ptr %i__, align 4
  br label %for.cond530, !llvm.loop !18

for.end561:                                       ; preds = %for.cond530
  br label %for.inc562

for.inc562:                                       ; preds = %for.end561
  %550 = load i32, ptr %j, align 4
  %inc563 = add nsw i32 %550, 1
  store i32 %inc563, ptr %j, align 4
  br label %for.cond527, !llvm.loop !19

for.end564:                                       ; preds = %for.cond527
  %551 = load ptr, ptr %nrhs.addr, align 8
  %552 = load i32, ptr %551, align 4
  store i32 %552, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond565

for.cond565:                                      ; preds = %for.inc571, %for.end564
  %553 = load i32, ptr %j, align 4
  %554 = load i32, ptr %i__1, align 4
  %cmp566 = icmp sle i32 %553, %554
  br i1 %cmp566, label %for.body567, label %for.end573

for.body567:                                      ; preds = %for.cond565
  %555 = load double, ptr %rowcnd, align 8
  %556 = load ptr, ptr %ferr.addr, align 8
  %557 = load i32, ptr %j, align 4
  %idxprom568 = sext i32 %557 to i64
  %arrayidx569 = getelementptr inbounds double, ptr %556, i64 %idxprom568
  %558 = load double, ptr %arrayidx569, align 8
  %div570 = fdiv double %558, %555
  store double %div570, ptr %arrayidx569, align 8
  br label %for.inc571

for.inc571:                                       ; preds = %for.body567
  %559 = load i32, ptr %j, align 4
  %inc572 = add nsw i32 %559, 1
  store i32 %inc572, ptr %j, align 4
  br label %for.cond565, !llvm.loop !20

for.end573:                                       ; preds = %for.cond565
  br label %if.end574

if.end574:                                        ; preds = %for.end573, %if.else524
  br label %if.end575

if.end575:                                        ; preds = %if.end574, %if.end523
  %560 = load ptr, ptr %rcond.addr, align 8
  %561 = load double, ptr %560, align 8
  %call576 = call double @dlamch_(ptr noundef @.str.12)
  %cmp577 = fcmp olt double %561, %call576
  br i1 %cmp577, label %if.then578, label %if.end580

if.then578:                                       ; preds = %if.end575
  %562 = load ptr, ptr %n.addr, align 8
  %563 = load i32, ptr %562, align 4
  %add579 = add nsw i32 %563, 1
  %564 = load ptr, ptr %info.addr, align 8
  store i32 %add579, ptr %564, align 4
  br label %if.end580

if.end580:                                        ; preds = %if.then578, %if.end575
  %565 = load double, ptr %rpvgrw, align 8
  %566 = load ptr, ptr %rwork.addr, align 8
  %arrayidx581 = getelementptr inbounds double, ptr %566, i64 1
  store double %565, ptr %arrayidx581, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end580, %if.end412, %if.then187
  %567 = load i32, ptr %retval, align 4
  ret i32 %567
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare double @dlamch_(ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @zgbequ_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zlaqgb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgbtrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare double @z_abs(ptr noundef) #1

declare double @zlantb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare double @zlangb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgbcon_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgbtrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgbrfs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}

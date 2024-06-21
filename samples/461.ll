; ModuleID = 'samples/461.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/ztfsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ZTFSM \00", align 1
@c_b1 = internal global %struct.doublecomplex { double 1.000000e+00, double 0.000000e+00 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ztfsm_(ptr noundef %transr, ptr noundef %side, ptr noundef %uplo, ptr noundef %trans, ptr noundef %diag, ptr noundef %m, ptr noundef %n, ptr noundef %alpha, ptr noundef %a, ptr noundef %b, ptr noundef %ldb) #0 {
entry:
  %retval = alloca i32, align 4
  %transr.addr = alloca ptr, align 8
  %side.addr = alloca ptr, align 8
  %uplo.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %diag.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %z__1 = alloca %struct.doublecomplex, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %info = alloca i32, align 4
  %normaltransr = alloca i32, align 4
  %lside = alloca i32, align 4
  %lower = alloca i32, align 4
  %misodd = alloca i32, align 4
  %nisodd = alloca i32, align 4
  %notrans = alloca i32, align 4
  store ptr %transr, ptr %transr.addr, align 8
  store ptr %side, ptr %side.addr, align 8
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %trans, ptr %trans.addr, align 8
  store ptr %diag, ptr %diag.addr, align 8
  store ptr %m, ptr %m.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %alpha, ptr %alpha.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
  %0 = load ptr, ptr %ldb.addr, align 8
  %1 = load i32, ptr %0, align 4
  %sub = sub nsw i32 %1, 1
  %sub1 = sub nsw i32 %sub, 0
  %add = add nsw i32 %sub1, 1
  store i32 %add, ptr %b_dim1, align 4
  %2 = load i32, ptr %b_dim1, align 4
  %mul = mul nsw i32 %2, 0
  %add2 = add nsw i32 0, %mul
  store i32 %add2, ptr %b_offset, align 4
  %3 = load i32, ptr %b_offset, align 4
  %4 = load ptr, ptr %b.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %b.addr, align 8
  store i32 0, ptr %info, align 4
  %5 = load ptr, ptr %transr.addr, align 8
  %call = call i32 @lsame_(ptr noundef %5, ptr noundef @.str)
  store i32 %call, ptr %normaltransr, align 4
  %6 = load ptr, ptr %side.addr, align 8
  %call3 = call i32 @lsame_(ptr noundef %6, ptr noundef @.str.1)
  store i32 %call3, ptr %lside, align 4
  %7 = load ptr, ptr %uplo.addr, align 8
  %call4 = call i32 @lsame_(ptr noundef %7, ptr noundef @.str.1)
  store i32 %call4, ptr %lower, align 4
  %8 = load ptr, ptr %trans.addr, align 8
  %call5 = call i32 @lsame_(ptr noundef %8, ptr noundef @.str)
  store i32 %call5, ptr %notrans, align 4
  %9 = load i32, ptr %normaltransr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %transr.addr, align 8
  %call6 = call i32 @lsame_(ptr noundef %10, ptr noundef @.str.2)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %info, align 4
  br label %if.end47

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load i32, ptr %lside, align 4
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.else13, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.else
  %12 = load ptr, ptr %side.addr, align 8
  %call10 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.3)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else13, label %if.then12

if.then12:                                        ; preds = %land.lhs.true9
  store i32 -2, ptr %info, align 4
  br label %if.end46

if.else13:                                        ; preds = %land.lhs.true9, %if.else
  %13 = load i32, ptr %lower, align 4
  %tobool14 = icmp ne i32 %13, 0
  br i1 %tobool14, label %if.else19, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.else13
  %14 = load ptr, ptr %uplo.addr, align 8
  %call16 = call i32 @lsame_(ptr noundef %14, ptr noundef @.str.4)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  store i32 -3, ptr %info, align 4
  br label %if.end45

if.else19:                                        ; preds = %land.lhs.true15, %if.else13
  %15 = load i32, ptr %notrans, align 4
  %tobool20 = icmp ne i32 %15, 0
  br i1 %tobool20, label %if.else25, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.else19
  %16 = load ptr, ptr %trans.addr, align 8
  %call22 = call i32 @lsame_(ptr noundef %16, ptr noundef @.str.2)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else25, label %if.then24

if.then24:                                        ; preds = %land.lhs.true21
  store i32 -4, ptr %info, align 4
  br label %if.end44

if.else25:                                        ; preds = %land.lhs.true21, %if.else19
  %17 = load ptr, ptr %diag.addr, align 8
  %call26 = call i32 @lsame_(ptr noundef %17, ptr noundef @.str)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else32, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.else25
  %18 = load ptr, ptr %diag.addr, align 8
  %call29 = call i32 @lsame_(ptr noundef %18, ptr noundef @.str.4)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.else32, label %if.then31

if.then31:                                        ; preds = %land.lhs.true28
  store i32 -5, ptr %info, align 4
  br label %if.end43

if.else32:                                        ; preds = %land.lhs.true28, %if.else25
  %19 = load ptr, ptr %m.addr, align 8
  %20 = load i32, ptr %19, align 4
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else32
  store i32 -6, ptr %info, align 4
  br label %if.end42

if.else34:                                        ; preds = %if.else32
  %21 = load ptr, ptr %n.addr, align 8
  %22 = load i32, ptr %21, align 4
  %cmp35 = icmp slt i32 %22, 0
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else34
  store i32 -7, ptr %info, align 4
  br label %if.end41

if.else37:                                        ; preds = %if.else34
  %23 = load ptr, ptr %ldb.addr, align 8
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %m.addr, align 8
  %26 = load i32, ptr %25, align 4
  %cmp38 = icmp sge i32 1, %26
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else37
  br label %cond.end

cond.false:                                       ; preds = %if.else37
  %27 = load ptr, ptr %m.addr, align 8
  %28 = load i32, ptr %27, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %28, %cond.false ]
  %cmp39 = icmp slt i32 %24, %cond
  br i1 %cmp39, label %if.then40, label %if.end

if.then40:                                        ; preds = %cond.end
  store i32 -11, ptr %info, align 4
  br label %if.end

if.end:                                           ; preds = %if.then40, %cond.end
  br label %if.end41

if.end41:                                         ; preds = %if.end, %if.then36
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then33
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then31
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then24
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then18
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then12
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then
  %29 = load i32, ptr %info, align 4
  %cmp48 = icmp ne i32 %29, 0
  br i1 %cmp48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end47
  %30 = load i32, ptr %info, align 4
  %sub50 = sub nsw i32 0, %30
  store i32 %sub50, ptr %i__1, align 4
  %call51 = call i32 @xerbla_(ptr noundef @.str.5, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.end47
  %31 = load ptr, ptr %m.addr, align 8
  %32 = load i32, ptr %31, align 4
  %cmp53 = icmp eq i32 %32, 0
  br i1 %cmp53, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end52
  %33 = load ptr, ptr %n.addr, align 8
  %34 = load i32, ptr %33, align 4
  %cmp54 = icmp eq i32 %34, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %lor.lhs.false, %if.end52
  store i32 0, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %lor.lhs.false
  %35 = load ptr, ptr %alpha.addr, align 8
  %r = getelementptr inbounds %struct.doublecomplex, ptr %35, i32 0, i32 0
  %36 = load double, ptr %r, align 8
  %cmp57 = fcmp oeq double %36, 0.000000e+00
  br i1 %cmp57, label %land.lhs.true58, label %if.end76

land.lhs.true58:                                  ; preds = %if.end56
  %37 = load ptr, ptr %alpha.addr, align 8
  %i = getelementptr inbounds %struct.doublecomplex, ptr %37, i32 0, i32 1
  %38 = load double, ptr %i, align 8
  %cmp59 = fcmp oeq double %38, 0.000000e+00
  br i1 %cmp59, label %if.then60, label %if.end76

if.then60:                                        ; preds = %land.lhs.true58
  %39 = load ptr, ptr %n.addr, align 8
  %40 = load i32, ptr %39, align 4
  %sub61 = sub nsw i32 %40, 1
  store i32 %sub61, ptr %i__1, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc73, %if.then60
  %41 = load i32, ptr %j, align 4
  %42 = load i32, ptr %i__1, align 4
  %cmp62 = icmp sle i32 %41, %42
  br i1 %cmp62, label %for.body, label %for.end75

for.body:                                         ; preds = %for.cond
  %43 = load ptr, ptr %m.addr, align 8
  %44 = load i32, ptr %43, align 4
  %sub63 = sub nsw i32 %44, 1
  store i32 %sub63, ptr %i__2, align 4
  store i32 0, ptr %i__, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc, %for.body
  %45 = load i32, ptr %i__, align 4
  %46 = load i32, ptr %i__2, align 4
  %cmp65 = icmp sle i32 %45, %46
  br i1 %cmp65, label %for.body66, label %for.end

for.body66:                                       ; preds = %for.cond64
  %47 = load i32, ptr %i__, align 4
  %48 = load i32, ptr %j, align 4
  %49 = load i32, ptr %b_dim1, align 4
  %mul67 = mul nsw i32 %48, %49
  %add68 = add nsw i32 %47, %mul67
  store i32 %add68, ptr %i__3, align 4
  %50 = load ptr, ptr %b.addr, align 8
  %51 = load i32, ptr %i__3, align 4
  %idxprom = sext i32 %51 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %50, i64 %idxprom
  %r69 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  store double 0.000000e+00, ptr %r69, align 8
  %52 = load ptr, ptr %b.addr, align 8
  %53 = load i32, ptr %i__3, align 4
  %idxprom70 = sext i32 %53 to i64
  %arrayidx71 = getelementptr inbounds %struct.doublecomplex, ptr %52, i64 %idxprom70
  %i72 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx71, i32 0, i32 1
  store double 0.000000e+00, ptr %i72, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body66
  %54 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond64, !llvm.loop !5

for.end:                                          ; preds = %for.cond64
  br label %for.inc73

for.inc73:                                        ; preds = %for.end
  %55 = load i32, ptr %j, align 4
  %inc74 = add nsw i32 %55, 1
  store i32 %inc74, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end75:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %land.lhs.true58, %if.end56
  %56 = load i32, ptr %lside, align 4
  %tobool77 = icmp ne i32 %56, 0
  br i1 %tobool77, label %if.then78, label %if.else479

if.then78:                                        ; preds = %if.end76
  %57 = load ptr, ptr %m.addr, align 8
  %58 = load i32, ptr %57, align 4
  %rem = srem i32 %58, 2
  %cmp79 = icmp eq i32 %rem, 0
  br i1 %cmp79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.then78
  store i32 0, ptr %misodd, align 4
  %59 = load ptr, ptr %m.addr, align 8
  %60 = load i32, ptr %59, align 4
  %div = sdiv i32 %60, 2
  store i32 %div, ptr %k, align 4
  br label %if.end90

if.else81:                                        ; preds = %if.then78
  store i32 1, ptr %misodd, align 4
  %61 = load i32, ptr %lower, align 4
  %tobool82 = icmp ne i32 %61, 0
  br i1 %tobool82, label %if.then83, label %if.else86

if.then83:                                        ; preds = %if.else81
  %62 = load ptr, ptr %m.addr, align 8
  %63 = load i32, ptr %62, align 4
  %div84 = sdiv i32 %63, 2
  store i32 %div84, ptr %m2, align 4
  %64 = load ptr, ptr %m.addr, align 8
  %65 = load i32, ptr %64, align 4
  %66 = load i32, ptr %m2, align 4
  %sub85 = sub nsw i32 %65, %66
  store i32 %sub85, ptr %m1, align 4
  br label %if.end89

if.else86:                                        ; preds = %if.else81
  %67 = load ptr, ptr %m.addr, align 8
  %68 = load i32, ptr %67, align 4
  %div87 = sdiv i32 %68, 2
  store i32 %div87, ptr %m1, align 4
  %69 = load ptr, ptr %m.addr, align 8
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %m1, align 4
  %sub88 = sub nsw i32 %70, %71
  store i32 %sub88, ptr %m2, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.else86, %if.then83
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then80
  %72 = load i32, ptr %misodd, align 4
  %tobool91 = icmp ne i32 %72, 0
  br i1 %tobool91, label %if.then92, label %if.else289

if.then92:                                        ; preds = %if.end90
  %73 = load i32, ptr %normaltransr, align 4
  %tobool93 = icmp ne i32 %73, 0
  br i1 %tobool93, label %if.then94, label %if.else189

if.then94:                                        ; preds = %if.then92
  %74 = load i32, ptr %lower, align 4
  %tobool95 = icmp ne i32 %74, 0
  br i1 %tobool95, label %if.then96, label %if.else149

if.then96:                                        ; preds = %if.then94
  %75 = load i32, ptr %notrans, align 4
  %tobool97 = icmp ne i32 %75, 0
  br i1 %tobool97, label %if.then98, label %if.else123

if.then98:                                        ; preds = %if.then96
  %76 = load ptr, ptr %m.addr, align 8
  %77 = load i32, ptr %76, align 4
  %cmp99 = icmp eq i32 %77, 1
  br i1 %cmp99, label %if.then100, label %if.else104

if.then100:                                       ; preds = %if.then98
  %78 = load ptr, ptr %diag.addr, align 8
  %79 = load ptr, ptr %n.addr, align 8
  %80 = load ptr, ptr %alpha.addr, align 8
  %81 = load ptr, ptr %a.addr, align 8
  %82 = load ptr, ptr %m.addr, align 8
  %83 = load ptr, ptr %b.addr, align 8
  %84 = load i32, ptr %b_offset, align 4
  %idxprom101 = sext i32 %84 to i64
  %arrayidx102 = getelementptr inbounds %struct.doublecomplex, ptr %83, i64 %idxprom101
  %85 = load ptr, ptr %ldb.addr, align 8
  %call103 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %78, ptr noundef %m1, ptr noundef %79, ptr noundef %80, ptr noundef %81, ptr noundef %82, ptr noundef %arrayidx102, ptr noundef %85)
  br label %if.end122

if.else104:                                       ; preds = %if.then98
  %86 = load ptr, ptr %diag.addr, align 8
  %87 = load ptr, ptr %n.addr, align 8
  %88 = load ptr, ptr %alpha.addr, align 8
  %89 = load ptr, ptr %a.addr, align 8
  %90 = load ptr, ptr %m.addr, align 8
  %91 = load ptr, ptr %b.addr, align 8
  %92 = load i32, ptr %b_offset, align 4
  %idxprom105 = sext i32 %92 to i64
  %arrayidx106 = getelementptr inbounds %struct.doublecomplex, ptr %91, i64 %idxprom105
  %93 = load ptr, ptr %ldb.addr, align 8
  %call107 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %86, ptr noundef %m1, ptr noundef %87, ptr noundef %88, ptr noundef %89, ptr noundef %90, ptr noundef %arrayidx106, ptr noundef %93)
  %r108 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r108, align 8
  %i109 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i109, align 8
  %94 = load ptr, ptr %n.addr, align 8
  %95 = load ptr, ptr %a.addr, align 8
  %96 = load i32, ptr %m1, align 4
  %idxprom110 = sext i32 %96 to i64
  %arrayidx111 = getelementptr inbounds %struct.doublecomplex, ptr %95, i64 %idxprom110
  %97 = load ptr, ptr %m.addr, align 8
  %98 = load ptr, ptr %b.addr, align 8
  %99 = load i32, ptr %b_offset, align 4
  %idxprom112 = sext i32 %99 to i64
  %arrayidx113 = getelementptr inbounds %struct.doublecomplex, ptr %98, i64 %idxprom112
  %100 = load ptr, ptr %ldb.addr, align 8
  %101 = load ptr, ptr %alpha.addr, align 8
  %102 = load ptr, ptr %b.addr, align 8
  %103 = load i32, ptr %m1, align 4
  %idxprom114 = sext i32 %103 to i64
  %arrayidx115 = getelementptr inbounds %struct.doublecomplex, ptr %102, i64 %idxprom114
  %104 = load ptr, ptr %ldb.addr, align 8
  %call116 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %m2, ptr noundef %94, ptr noundef %m1, ptr noundef %z__1, ptr noundef %arrayidx111, ptr noundef %97, ptr noundef %arrayidx113, ptr noundef %100, ptr noundef %101, ptr noundef %arrayidx115, ptr noundef %104)
  %105 = load ptr, ptr %diag.addr, align 8
  %106 = load ptr, ptr %n.addr, align 8
  %107 = load ptr, ptr %a.addr, align 8
  %108 = load ptr, ptr %m.addr, align 8
  %109 = load i32, ptr %108, align 4
  %idxprom117 = sext i32 %109 to i64
  %arrayidx118 = getelementptr inbounds %struct.doublecomplex, ptr %107, i64 %idxprom117
  %110 = load ptr, ptr %m.addr, align 8
  %111 = load ptr, ptr %b.addr, align 8
  %112 = load i32, ptr %m1, align 4
  %idxprom119 = sext i32 %112 to i64
  %arrayidx120 = getelementptr inbounds %struct.doublecomplex, ptr %111, i64 %idxprom119
  %113 = load ptr, ptr %ldb.addr, align 8
  %call121 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %105, ptr noundef %m2, ptr noundef %106, ptr noundef @c_b1, ptr noundef %arrayidx118, ptr noundef %110, ptr noundef %arrayidx120, ptr noundef %113)
  br label %if.end122

if.end122:                                        ; preds = %if.else104, %if.then100
  br label %if.end148

if.else123:                                       ; preds = %if.then96
  %114 = load ptr, ptr %m.addr, align 8
  %115 = load i32, ptr %114, align 4
  %cmp124 = icmp eq i32 %115, 1
  br i1 %cmp124, label %if.then125, label %if.else129

if.then125:                                       ; preds = %if.else123
  %116 = load ptr, ptr %diag.addr, align 8
  %117 = load ptr, ptr %n.addr, align 8
  %118 = load ptr, ptr %alpha.addr, align 8
  %119 = load ptr, ptr %a.addr, align 8
  %120 = load ptr, ptr %m.addr, align 8
  %121 = load ptr, ptr %b.addr, align 8
  %122 = load i32, ptr %b_offset, align 4
  %idxprom126 = sext i32 %122 to i64
  %arrayidx127 = getelementptr inbounds %struct.doublecomplex, ptr %121, i64 %idxprom126
  %123 = load ptr, ptr %ldb.addr, align 8
  %call128 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %116, ptr noundef %m1, ptr noundef %117, ptr noundef %118, ptr noundef %119, ptr noundef %120, ptr noundef %arrayidx127, ptr noundef %123)
  br label %if.end147

if.else129:                                       ; preds = %if.else123
  %124 = load ptr, ptr %diag.addr, align 8
  %125 = load ptr, ptr %n.addr, align 8
  %126 = load ptr, ptr %alpha.addr, align 8
  %127 = load ptr, ptr %a.addr, align 8
  %128 = load ptr, ptr %m.addr, align 8
  %129 = load i32, ptr %128, align 4
  %idxprom130 = sext i32 %129 to i64
  %arrayidx131 = getelementptr inbounds %struct.doublecomplex, ptr %127, i64 %idxprom130
  %130 = load ptr, ptr %m.addr, align 8
  %131 = load ptr, ptr %b.addr, align 8
  %132 = load i32, ptr %m1, align 4
  %idxprom132 = sext i32 %132 to i64
  %arrayidx133 = getelementptr inbounds %struct.doublecomplex, ptr %131, i64 %idxprom132
  %133 = load ptr, ptr %ldb.addr, align 8
  %call134 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %124, ptr noundef %m2, ptr noundef %125, ptr noundef %126, ptr noundef %arrayidx131, ptr noundef %130, ptr noundef %arrayidx133, ptr noundef %133)
  %r135 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r135, align 8
  %i136 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i136, align 8
  %134 = load ptr, ptr %n.addr, align 8
  %135 = load ptr, ptr %a.addr, align 8
  %136 = load i32, ptr %m1, align 4
  %idxprom137 = sext i32 %136 to i64
  %arrayidx138 = getelementptr inbounds %struct.doublecomplex, ptr %135, i64 %idxprom137
  %137 = load ptr, ptr %m.addr, align 8
  %138 = load ptr, ptr %b.addr, align 8
  %139 = load i32, ptr %m1, align 4
  %idxprom139 = sext i32 %139 to i64
  %arrayidx140 = getelementptr inbounds %struct.doublecomplex, ptr %138, i64 %idxprom139
  %140 = load ptr, ptr %ldb.addr, align 8
  %141 = load ptr, ptr %alpha.addr, align 8
  %142 = load ptr, ptr %b.addr, align 8
  %143 = load i32, ptr %b_offset, align 4
  %idxprom141 = sext i32 %143 to i64
  %arrayidx142 = getelementptr inbounds %struct.doublecomplex, ptr %142, i64 %idxprom141
  %144 = load ptr, ptr %ldb.addr, align 8
  %call143 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %m1, ptr noundef %134, ptr noundef %m2, ptr noundef %z__1, ptr noundef %arrayidx138, ptr noundef %137, ptr noundef %arrayidx140, ptr noundef %140, ptr noundef %141, ptr noundef %arrayidx142, ptr noundef %144)
  %145 = load ptr, ptr %diag.addr, align 8
  %146 = load ptr, ptr %n.addr, align 8
  %147 = load ptr, ptr %a.addr, align 8
  %148 = load ptr, ptr %m.addr, align 8
  %149 = load ptr, ptr %b.addr, align 8
  %150 = load i32, ptr %b_offset, align 4
  %idxprom144 = sext i32 %150 to i64
  %arrayidx145 = getelementptr inbounds %struct.doublecomplex, ptr %149, i64 %idxprom144
  %151 = load ptr, ptr %ldb.addr, align 8
  %call146 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %145, ptr noundef %m1, ptr noundef %146, ptr noundef @c_b1, ptr noundef %147, ptr noundef %148, ptr noundef %arrayidx145, ptr noundef %151)
  br label %if.end147

if.end147:                                        ; preds = %if.else129, %if.then125
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.end122
  br label %if.end188

if.else149:                                       ; preds = %if.then94
  %152 = load i32, ptr %notrans, align 4
  %tobool150 = icmp ne i32 %152, 0
  br i1 %tobool150, label %if.else169, label %if.then151

if.then151:                                       ; preds = %if.else149
  %153 = load ptr, ptr %diag.addr, align 8
  %154 = load ptr, ptr %n.addr, align 8
  %155 = load ptr, ptr %alpha.addr, align 8
  %156 = load ptr, ptr %a.addr, align 8
  %157 = load i32, ptr %m2, align 4
  %idxprom152 = sext i32 %157 to i64
  %arrayidx153 = getelementptr inbounds %struct.doublecomplex, ptr %156, i64 %idxprom152
  %158 = load ptr, ptr %m.addr, align 8
  %159 = load ptr, ptr %b.addr, align 8
  %160 = load i32, ptr %b_offset, align 4
  %idxprom154 = sext i32 %160 to i64
  %arrayidx155 = getelementptr inbounds %struct.doublecomplex, ptr %159, i64 %idxprom154
  %161 = load ptr, ptr %ldb.addr, align 8
  %call156 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %153, ptr noundef %m1, ptr noundef %154, ptr noundef %155, ptr noundef %arrayidx153, ptr noundef %158, ptr noundef %arrayidx155, ptr noundef %161)
  %r157 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r157, align 8
  %i158 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i158, align 8
  %162 = load ptr, ptr %n.addr, align 8
  %163 = load ptr, ptr %a.addr, align 8
  %164 = load ptr, ptr %m.addr, align 8
  %165 = load ptr, ptr %b.addr, align 8
  %166 = load i32, ptr %b_offset, align 4
  %idxprom159 = sext i32 %166 to i64
  %arrayidx160 = getelementptr inbounds %struct.doublecomplex, ptr %165, i64 %idxprom159
  %167 = load ptr, ptr %ldb.addr, align 8
  %168 = load ptr, ptr %alpha.addr, align 8
  %169 = load ptr, ptr %b.addr, align 8
  %170 = load i32, ptr %m1, align 4
  %idxprom161 = sext i32 %170 to i64
  %arrayidx162 = getelementptr inbounds %struct.doublecomplex, ptr %169, i64 %idxprom161
  %171 = load ptr, ptr %ldb.addr, align 8
  %call163 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %m2, ptr noundef %162, ptr noundef %m1, ptr noundef %z__1, ptr noundef %163, ptr noundef %164, ptr noundef %arrayidx160, ptr noundef %167, ptr noundef %168, ptr noundef %arrayidx162, ptr noundef %171)
  %172 = load ptr, ptr %diag.addr, align 8
  %173 = load ptr, ptr %n.addr, align 8
  %174 = load ptr, ptr %a.addr, align 8
  %175 = load i32, ptr %m1, align 4
  %idxprom164 = sext i32 %175 to i64
  %arrayidx165 = getelementptr inbounds %struct.doublecomplex, ptr %174, i64 %idxprom164
  %176 = load ptr, ptr %m.addr, align 8
  %177 = load ptr, ptr %b.addr, align 8
  %178 = load i32, ptr %m1, align 4
  %idxprom166 = sext i32 %178 to i64
  %arrayidx167 = getelementptr inbounds %struct.doublecomplex, ptr %177, i64 %idxprom166
  %179 = load ptr, ptr %ldb.addr, align 8
  %call168 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %172, ptr noundef %m2, ptr noundef %173, ptr noundef @c_b1, ptr noundef %arrayidx165, ptr noundef %176, ptr noundef %arrayidx167, ptr noundef %179)
  br label %if.end187

if.else169:                                       ; preds = %if.else149
  %180 = load ptr, ptr %diag.addr, align 8
  %181 = load ptr, ptr %n.addr, align 8
  %182 = load ptr, ptr %alpha.addr, align 8
  %183 = load ptr, ptr %a.addr, align 8
  %184 = load i32, ptr %m1, align 4
  %idxprom170 = sext i32 %184 to i64
  %arrayidx171 = getelementptr inbounds %struct.doublecomplex, ptr %183, i64 %idxprom170
  %185 = load ptr, ptr %m.addr, align 8
  %186 = load ptr, ptr %b.addr, align 8
  %187 = load i32, ptr %m1, align 4
  %idxprom172 = sext i32 %187 to i64
  %arrayidx173 = getelementptr inbounds %struct.doublecomplex, ptr %186, i64 %idxprom172
  %188 = load ptr, ptr %ldb.addr, align 8
  %call174 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %180, ptr noundef %m2, ptr noundef %181, ptr noundef %182, ptr noundef %arrayidx171, ptr noundef %185, ptr noundef %arrayidx173, ptr noundef %188)
  %r175 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r175, align 8
  %i176 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i176, align 8
  %189 = load ptr, ptr %n.addr, align 8
  %190 = load ptr, ptr %a.addr, align 8
  %191 = load ptr, ptr %m.addr, align 8
  %192 = load ptr, ptr %b.addr, align 8
  %193 = load i32, ptr %m1, align 4
  %idxprom177 = sext i32 %193 to i64
  %arrayidx178 = getelementptr inbounds %struct.doublecomplex, ptr %192, i64 %idxprom177
  %194 = load ptr, ptr %ldb.addr, align 8
  %195 = load ptr, ptr %alpha.addr, align 8
  %196 = load ptr, ptr %b.addr, align 8
  %197 = load i32, ptr %b_offset, align 4
  %idxprom179 = sext i32 %197 to i64
  %arrayidx180 = getelementptr inbounds %struct.doublecomplex, ptr %196, i64 %idxprom179
  %198 = load ptr, ptr %ldb.addr, align 8
  %call181 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %m1, ptr noundef %189, ptr noundef %m2, ptr noundef %z__1, ptr noundef %190, ptr noundef %191, ptr noundef %arrayidx178, ptr noundef %194, ptr noundef %195, ptr noundef %arrayidx180, ptr noundef %198)
  %199 = load ptr, ptr %diag.addr, align 8
  %200 = load ptr, ptr %n.addr, align 8
  %201 = load ptr, ptr %a.addr, align 8
  %202 = load i32, ptr %m2, align 4
  %idxprom182 = sext i32 %202 to i64
  %arrayidx183 = getelementptr inbounds %struct.doublecomplex, ptr %201, i64 %idxprom182
  %203 = load ptr, ptr %m.addr, align 8
  %204 = load ptr, ptr %b.addr, align 8
  %205 = load i32, ptr %b_offset, align 4
  %idxprom184 = sext i32 %205 to i64
  %arrayidx185 = getelementptr inbounds %struct.doublecomplex, ptr %204, i64 %idxprom184
  %206 = load ptr, ptr %ldb.addr, align 8
  %call186 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %199, ptr noundef %m1, ptr noundef %200, ptr noundef @c_b1, ptr noundef %arrayidx183, ptr noundef %203, ptr noundef %arrayidx185, ptr noundef %206)
  br label %if.end187

if.end187:                                        ; preds = %if.else169, %if.then151
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %if.end148
  br label %if.end288

if.else189:                                       ; preds = %if.then92
  %207 = load i32, ptr %lower, align 4
  %tobool190 = icmp ne i32 %207, 0
  br i1 %tobool190, label %if.then191, label %if.else244

if.then191:                                       ; preds = %if.else189
  %208 = load i32, ptr %notrans, align 4
  %tobool192 = icmp ne i32 %208, 0
  br i1 %tobool192, label %if.then193, label %if.else218

if.then193:                                       ; preds = %if.then191
  %209 = load ptr, ptr %m.addr, align 8
  %210 = load i32, ptr %209, align 4
  %cmp194 = icmp eq i32 %210, 1
  br i1 %cmp194, label %if.then195, label %if.else199

if.then195:                                       ; preds = %if.then193
  %211 = load ptr, ptr %diag.addr, align 8
  %212 = load ptr, ptr %n.addr, align 8
  %213 = load ptr, ptr %alpha.addr, align 8
  %214 = load ptr, ptr %a.addr, align 8
  %215 = load ptr, ptr %b.addr, align 8
  %216 = load i32, ptr %b_offset, align 4
  %idxprom196 = sext i32 %216 to i64
  %arrayidx197 = getelementptr inbounds %struct.doublecomplex, ptr %215, i64 %idxprom196
  %217 = load ptr, ptr %ldb.addr, align 8
  %call198 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %211, ptr noundef %m1, ptr noundef %212, ptr noundef %213, ptr noundef %214, ptr noundef %m1, ptr noundef %arrayidx197, ptr noundef %217)
  br label %if.end217

if.else199:                                       ; preds = %if.then193
  %218 = load ptr, ptr %diag.addr, align 8
  %219 = load ptr, ptr %n.addr, align 8
  %220 = load ptr, ptr %alpha.addr, align 8
  %221 = load ptr, ptr %a.addr, align 8
  %222 = load ptr, ptr %b.addr, align 8
  %223 = load i32, ptr %b_offset, align 4
  %idxprom200 = sext i32 %223 to i64
  %arrayidx201 = getelementptr inbounds %struct.doublecomplex, ptr %222, i64 %idxprom200
  %224 = load ptr, ptr %ldb.addr, align 8
  %call202 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %218, ptr noundef %m1, ptr noundef %219, ptr noundef %220, ptr noundef %221, ptr noundef %m1, ptr noundef %arrayidx201, ptr noundef %224)
  %r203 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r203, align 8
  %i204 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i204, align 8
  %225 = load ptr, ptr %n.addr, align 8
  %226 = load ptr, ptr %a.addr, align 8
  %227 = load i32, ptr %m1, align 4
  %228 = load i32, ptr %m1, align 4
  %mul205 = mul nsw i32 %227, %228
  %idxprom206 = sext i32 %mul205 to i64
  %arrayidx207 = getelementptr inbounds %struct.doublecomplex, ptr %226, i64 %idxprom206
  %229 = load ptr, ptr %b.addr, align 8
  %230 = load i32, ptr %b_offset, align 4
  %idxprom208 = sext i32 %230 to i64
  %arrayidx209 = getelementptr inbounds %struct.doublecomplex, ptr %229, i64 %idxprom208
  %231 = load ptr, ptr %ldb.addr, align 8
  %232 = load ptr, ptr %alpha.addr, align 8
  %233 = load ptr, ptr %b.addr, align 8
  %234 = load i32, ptr %m1, align 4
  %idxprom210 = sext i32 %234 to i64
  %arrayidx211 = getelementptr inbounds %struct.doublecomplex, ptr %233, i64 %idxprom210
  %235 = load ptr, ptr %ldb.addr, align 8
  %call212 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %m2, ptr noundef %225, ptr noundef %m1, ptr noundef %z__1, ptr noundef %arrayidx207, ptr noundef %m1, ptr noundef %arrayidx209, ptr noundef %231, ptr noundef %232, ptr noundef %arrayidx211, ptr noundef %235)
  %236 = load ptr, ptr %diag.addr, align 8
  %237 = load ptr, ptr %n.addr, align 8
  %238 = load ptr, ptr %a.addr, align 8
  %arrayidx213 = getelementptr inbounds %struct.doublecomplex, ptr %238, i64 1
  %239 = load ptr, ptr %b.addr, align 8
  %240 = load i32, ptr %m1, align 4
  %idxprom214 = sext i32 %240 to i64
  %arrayidx215 = getelementptr inbounds %struct.doublecomplex, ptr %239, i64 %idxprom214
  %241 = load ptr, ptr %ldb.addr, align 8
  %call216 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %236, ptr noundef %m2, ptr noundef %237, ptr noundef @c_b1, ptr noundef %arrayidx213, ptr noundef %m1, ptr noundef %arrayidx215, ptr noundef %241)
  br label %if.end217

if.end217:                                        ; preds = %if.else199, %if.then195
  br label %if.end243

if.else218:                                       ; preds = %if.then191
  %242 = load ptr, ptr %m.addr, align 8
  %243 = load i32, ptr %242, align 4
  %cmp219 = icmp eq i32 %243, 1
  br i1 %cmp219, label %if.then220, label %if.else224

if.then220:                                       ; preds = %if.else218
  %244 = load ptr, ptr %diag.addr, align 8
  %245 = load ptr, ptr %n.addr, align 8
  %246 = load ptr, ptr %alpha.addr, align 8
  %247 = load ptr, ptr %a.addr, align 8
  %248 = load ptr, ptr %b.addr, align 8
  %249 = load i32, ptr %b_offset, align 4
  %idxprom221 = sext i32 %249 to i64
  %arrayidx222 = getelementptr inbounds %struct.doublecomplex, ptr %248, i64 %idxprom221
  %250 = load ptr, ptr %ldb.addr, align 8
  %call223 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %244, ptr noundef %m1, ptr noundef %245, ptr noundef %246, ptr noundef %247, ptr noundef %m1, ptr noundef %arrayidx222, ptr noundef %250)
  br label %if.end242

if.else224:                                       ; preds = %if.else218
  %251 = load ptr, ptr %diag.addr, align 8
  %252 = load ptr, ptr %n.addr, align 8
  %253 = load ptr, ptr %alpha.addr, align 8
  %254 = load ptr, ptr %a.addr, align 8
  %arrayidx225 = getelementptr inbounds %struct.doublecomplex, ptr %254, i64 1
  %255 = load ptr, ptr %b.addr, align 8
  %256 = load i32, ptr %m1, align 4
  %idxprom226 = sext i32 %256 to i64
  %arrayidx227 = getelementptr inbounds %struct.doublecomplex, ptr %255, i64 %idxprom226
  %257 = load ptr, ptr %ldb.addr, align 8
  %call228 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %251, ptr noundef %m2, ptr noundef %252, ptr noundef %253, ptr noundef %arrayidx225, ptr noundef %m1, ptr noundef %arrayidx227, ptr noundef %257)
  %r229 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r229, align 8
  %i230 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i230, align 8
  %258 = load ptr, ptr %n.addr, align 8
  %259 = load ptr, ptr %a.addr, align 8
  %260 = load i32, ptr %m1, align 4
  %261 = load i32, ptr %m1, align 4
  %mul231 = mul nsw i32 %260, %261
  %idxprom232 = sext i32 %mul231 to i64
  %arrayidx233 = getelementptr inbounds %struct.doublecomplex, ptr %259, i64 %idxprom232
  %262 = load ptr, ptr %b.addr, align 8
  %263 = load i32, ptr %m1, align 4
  %idxprom234 = sext i32 %263 to i64
  %arrayidx235 = getelementptr inbounds %struct.doublecomplex, ptr %262, i64 %idxprom234
  %264 = load ptr, ptr %ldb.addr, align 8
  %265 = load ptr, ptr %alpha.addr, align 8
  %266 = load ptr, ptr %b.addr, align 8
  %267 = load i32, ptr %b_offset, align 4
  %idxprom236 = sext i32 %267 to i64
  %arrayidx237 = getelementptr inbounds %struct.doublecomplex, ptr %266, i64 %idxprom236
  %268 = load ptr, ptr %ldb.addr, align 8
  %call238 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %m1, ptr noundef %258, ptr noundef %m2, ptr noundef %z__1, ptr noundef %arrayidx233, ptr noundef %m1, ptr noundef %arrayidx235, ptr noundef %264, ptr noundef %265, ptr noundef %arrayidx237, ptr noundef %268)
  %269 = load ptr, ptr %diag.addr, align 8
  %270 = load ptr, ptr %n.addr, align 8
  %271 = load ptr, ptr %a.addr, align 8
  %272 = load ptr, ptr %b.addr, align 8
  %273 = load i32, ptr %b_offset, align 4
  %idxprom239 = sext i32 %273 to i64
  %arrayidx240 = getelementptr inbounds %struct.doublecomplex, ptr %272, i64 %idxprom239
  %274 = load ptr, ptr %ldb.addr, align 8
  %call241 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %269, ptr noundef %m1, ptr noundef %270, ptr noundef @c_b1, ptr noundef %271, ptr noundef %m1, ptr noundef %arrayidx240, ptr noundef %274)
  br label %if.end242

if.end242:                                        ; preds = %if.else224, %if.then220
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.end217
  br label %if.end287

if.else244:                                       ; preds = %if.else189
  %275 = load i32, ptr %notrans, align 4
  %tobool245 = icmp ne i32 %275, 0
  br i1 %tobool245, label %if.else266, label %if.then246

if.then246:                                       ; preds = %if.else244
  %276 = load ptr, ptr %diag.addr, align 8
  %277 = load ptr, ptr %n.addr, align 8
  %278 = load ptr, ptr %alpha.addr, align 8
  %279 = load ptr, ptr %a.addr, align 8
  %280 = load i32, ptr %m2, align 4
  %281 = load i32, ptr %m2, align 4
  %mul247 = mul nsw i32 %280, %281
  %idxprom248 = sext i32 %mul247 to i64
  %arrayidx249 = getelementptr inbounds %struct.doublecomplex, ptr %279, i64 %idxprom248
  %282 = load ptr, ptr %b.addr, align 8
  %283 = load i32, ptr %b_offset, align 4
  %idxprom250 = sext i32 %283 to i64
  %arrayidx251 = getelementptr inbounds %struct.doublecomplex, ptr %282, i64 %idxprom250
  %284 = load ptr, ptr %ldb.addr, align 8
  %call252 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %276, ptr noundef %m1, ptr noundef %277, ptr noundef %278, ptr noundef %arrayidx249, ptr noundef %m2, ptr noundef %arrayidx251, ptr noundef %284)
  %r253 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r253, align 8
  %i254 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i254, align 8
  %285 = load ptr, ptr %n.addr, align 8
  %286 = load ptr, ptr %a.addr, align 8
  %287 = load ptr, ptr %b.addr, align 8
  %288 = load i32, ptr %b_offset, align 4
  %idxprom255 = sext i32 %288 to i64
  %arrayidx256 = getelementptr inbounds %struct.doublecomplex, ptr %287, i64 %idxprom255
  %289 = load ptr, ptr %ldb.addr, align 8
  %290 = load ptr, ptr %alpha.addr, align 8
  %291 = load ptr, ptr %b.addr, align 8
  %292 = load i32, ptr %m1, align 4
  %idxprom257 = sext i32 %292 to i64
  %arrayidx258 = getelementptr inbounds %struct.doublecomplex, ptr %291, i64 %idxprom257
  %293 = load ptr, ptr %ldb.addr, align 8
  %call259 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %m2, ptr noundef %285, ptr noundef %m1, ptr noundef %z__1, ptr noundef %286, ptr noundef %m2, ptr noundef %arrayidx256, ptr noundef %289, ptr noundef %290, ptr noundef %arrayidx258, ptr noundef %293)
  %294 = load ptr, ptr %diag.addr, align 8
  %295 = load ptr, ptr %n.addr, align 8
  %296 = load ptr, ptr %a.addr, align 8
  %297 = load i32, ptr %m1, align 4
  %298 = load i32, ptr %m2, align 4
  %mul260 = mul nsw i32 %297, %298
  %idxprom261 = sext i32 %mul260 to i64
  %arrayidx262 = getelementptr inbounds %struct.doublecomplex, ptr %296, i64 %idxprom261
  %299 = load ptr, ptr %b.addr, align 8
  %300 = load i32, ptr %m1, align 4
  %idxprom263 = sext i32 %300 to i64
  %arrayidx264 = getelementptr inbounds %struct.doublecomplex, ptr %299, i64 %idxprom263
  %301 = load ptr, ptr %ldb.addr, align 8
  %call265 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %294, ptr noundef %m2, ptr noundef %295, ptr noundef @c_b1, ptr noundef %arrayidx262, ptr noundef %m2, ptr noundef %arrayidx264, ptr noundef %301)
  br label %if.end286

if.else266:                                       ; preds = %if.else244
  %302 = load ptr, ptr %diag.addr, align 8
  %303 = load ptr, ptr %n.addr, align 8
  %304 = load ptr, ptr %alpha.addr, align 8
  %305 = load ptr, ptr %a.addr, align 8
  %306 = load i32, ptr %m1, align 4
  %307 = load i32, ptr %m2, align 4
  %mul267 = mul nsw i32 %306, %307
  %idxprom268 = sext i32 %mul267 to i64
  %arrayidx269 = getelementptr inbounds %struct.doublecomplex, ptr %305, i64 %idxprom268
  %308 = load ptr, ptr %b.addr, align 8
  %309 = load i32, ptr %m1, align 4
  %idxprom270 = sext i32 %309 to i64
  %arrayidx271 = getelementptr inbounds %struct.doublecomplex, ptr %308, i64 %idxprom270
  %310 = load ptr, ptr %ldb.addr, align 8
  %call272 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %302, ptr noundef %m2, ptr noundef %303, ptr noundef %304, ptr noundef %arrayidx269, ptr noundef %m2, ptr noundef %arrayidx271, ptr noundef %310)
  %r273 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r273, align 8
  %i274 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i274, align 8
  %311 = load ptr, ptr %n.addr, align 8
  %312 = load ptr, ptr %a.addr, align 8
  %313 = load ptr, ptr %b.addr, align 8
  %314 = load i32, ptr %m1, align 4
  %idxprom275 = sext i32 %314 to i64
  %arrayidx276 = getelementptr inbounds %struct.doublecomplex, ptr %313, i64 %idxprom275
  %315 = load ptr, ptr %ldb.addr, align 8
  %316 = load ptr, ptr %alpha.addr, align 8
  %317 = load ptr, ptr %b.addr, align 8
  %318 = load i32, ptr %b_offset, align 4
  %idxprom277 = sext i32 %318 to i64
  %arrayidx278 = getelementptr inbounds %struct.doublecomplex, ptr %317, i64 %idxprom277
  %319 = load ptr, ptr %ldb.addr, align 8
  %call279 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %m1, ptr noundef %311, ptr noundef %m2, ptr noundef %z__1, ptr noundef %312, ptr noundef %m2, ptr noundef %arrayidx276, ptr noundef %315, ptr noundef %316, ptr noundef %arrayidx278, ptr noundef %319)
  %320 = load ptr, ptr %diag.addr, align 8
  %321 = load ptr, ptr %n.addr, align 8
  %322 = load ptr, ptr %a.addr, align 8
  %323 = load i32, ptr %m2, align 4
  %324 = load i32, ptr %m2, align 4
  %mul280 = mul nsw i32 %323, %324
  %idxprom281 = sext i32 %mul280 to i64
  %arrayidx282 = getelementptr inbounds %struct.doublecomplex, ptr %322, i64 %idxprom281
  %325 = load ptr, ptr %b.addr, align 8
  %326 = load i32, ptr %b_offset, align 4
  %idxprom283 = sext i32 %326 to i64
  %arrayidx284 = getelementptr inbounds %struct.doublecomplex, ptr %325, i64 %idxprom283
  %327 = load ptr, ptr %ldb.addr, align 8
  %call285 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %320, ptr noundef %m1, ptr noundef %321, ptr noundef @c_b1, ptr noundef %arrayidx282, ptr noundef %m2, ptr noundef %arrayidx284, ptr noundef %327)
  br label %if.end286

if.end286:                                        ; preds = %if.else266, %if.then246
  br label %if.end287

if.end287:                                        ; preds = %if.end286, %if.end243
  br label %if.end288

if.end288:                                        ; preds = %if.end287, %if.end188
  br label %if.end478

if.else289:                                       ; preds = %if.end90
  %328 = load i32, ptr %normaltransr, align 4
  %tobool290 = icmp ne i32 %328, 0
  br i1 %tobool290, label %if.then291, label %if.else386

if.then291:                                       ; preds = %if.else289
  %329 = load i32, ptr %lower, align 4
  %tobool292 = icmp ne i32 %329, 0
  br i1 %tobool292, label %if.then293, label %if.else338

if.then293:                                       ; preds = %if.then291
  %330 = load i32, ptr %notrans, align 4
  %tobool294 = icmp ne i32 %330, 0
  br i1 %tobool294, label %if.then295, label %if.else316

if.then295:                                       ; preds = %if.then293
  %331 = load ptr, ptr %m.addr, align 8
  %332 = load i32, ptr %331, align 4
  %add296 = add nsw i32 %332, 1
  store i32 %add296, ptr %i__1, align 4
  %333 = load ptr, ptr %diag.addr, align 8
  %334 = load ptr, ptr %n.addr, align 8
  %335 = load ptr, ptr %alpha.addr, align 8
  %336 = load ptr, ptr %a.addr, align 8
  %arrayidx297 = getelementptr inbounds %struct.doublecomplex, ptr %336, i64 1
  %337 = load ptr, ptr %b.addr, align 8
  %338 = load i32, ptr %b_offset, align 4
  %idxprom298 = sext i32 %338 to i64
  %arrayidx299 = getelementptr inbounds %struct.doublecomplex, ptr %337, i64 %idxprom298
  %339 = load ptr, ptr %ldb.addr, align 8
  %call300 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %333, ptr noundef %k, ptr noundef %334, ptr noundef %335, ptr noundef %arrayidx297, ptr noundef %i__1, ptr noundef %arrayidx299, ptr noundef %339)
  %r301 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r301, align 8
  %i302 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i302, align 8
  %340 = load ptr, ptr %m.addr, align 8
  %341 = load i32, ptr %340, align 4
  %add303 = add nsw i32 %341, 1
  store i32 %add303, ptr %i__1, align 4
  %342 = load ptr, ptr %n.addr, align 8
  %343 = load ptr, ptr %a.addr, align 8
  %344 = load i32, ptr %k, align 4
  %add304 = add nsw i32 %344, 1
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds %struct.doublecomplex, ptr %343, i64 %idxprom305
  %345 = load ptr, ptr %b.addr, align 8
  %346 = load i32, ptr %b_offset, align 4
  %idxprom307 = sext i32 %346 to i64
  %arrayidx308 = getelementptr inbounds %struct.doublecomplex, ptr %345, i64 %idxprom307
  %347 = load ptr, ptr %ldb.addr, align 8
  %348 = load ptr, ptr %alpha.addr, align 8
  %349 = load ptr, ptr %b.addr, align 8
  %350 = load i32, ptr %k, align 4
  %idxprom309 = sext i32 %350 to i64
  %arrayidx310 = getelementptr inbounds %struct.doublecomplex, ptr %349, i64 %idxprom309
  %351 = load ptr, ptr %ldb.addr, align 8
  %call311 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %k, ptr noundef %342, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx306, ptr noundef %i__1, ptr noundef %arrayidx308, ptr noundef %347, ptr noundef %348, ptr noundef %arrayidx310, ptr noundef %351)
  %352 = load ptr, ptr %m.addr, align 8
  %353 = load i32, ptr %352, align 4
  %add312 = add nsw i32 %353, 1
  store i32 %add312, ptr %i__1, align 4
  %354 = load ptr, ptr %diag.addr, align 8
  %355 = load ptr, ptr %n.addr, align 8
  %356 = load ptr, ptr %a.addr, align 8
  %357 = load ptr, ptr %b.addr, align 8
  %358 = load i32, ptr %k, align 4
  %idxprom313 = sext i32 %358 to i64
  %arrayidx314 = getelementptr inbounds %struct.doublecomplex, ptr %357, i64 %idxprom313
  %359 = load ptr, ptr %ldb.addr, align 8
  %call315 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %354, ptr noundef %k, ptr noundef %355, ptr noundef @c_b1, ptr noundef %356, ptr noundef %i__1, ptr noundef %arrayidx314, ptr noundef %359)
  br label %if.end337

if.else316:                                       ; preds = %if.then293
  %360 = load ptr, ptr %m.addr, align 8
  %361 = load i32, ptr %360, align 4
  %add317 = add nsw i32 %361, 1
  store i32 %add317, ptr %i__1, align 4
  %362 = load ptr, ptr %diag.addr, align 8
  %363 = load ptr, ptr %n.addr, align 8
  %364 = load ptr, ptr %alpha.addr, align 8
  %365 = load ptr, ptr %a.addr, align 8
  %366 = load ptr, ptr %b.addr, align 8
  %367 = load i32, ptr %k, align 4
  %idxprom318 = sext i32 %367 to i64
  %arrayidx319 = getelementptr inbounds %struct.doublecomplex, ptr %366, i64 %idxprom318
  %368 = load ptr, ptr %ldb.addr, align 8
  %call320 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %362, ptr noundef %k, ptr noundef %363, ptr noundef %364, ptr noundef %365, ptr noundef %i__1, ptr noundef %arrayidx319, ptr noundef %368)
  %r321 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r321, align 8
  %i322 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i322, align 8
  %369 = load ptr, ptr %m.addr, align 8
  %370 = load i32, ptr %369, align 4
  %add323 = add nsw i32 %370, 1
  store i32 %add323, ptr %i__1, align 4
  %371 = load ptr, ptr %n.addr, align 8
  %372 = load ptr, ptr %a.addr, align 8
  %373 = load i32, ptr %k, align 4
  %add324 = add nsw i32 %373, 1
  %idxprom325 = sext i32 %add324 to i64
  %arrayidx326 = getelementptr inbounds %struct.doublecomplex, ptr %372, i64 %idxprom325
  %374 = load ptr, ptr %b.addr, align 8
  %375 = load i32, ptr %k, align 4
  %idxprom327 = sext i32 %375 to i64
  %arrayidx328 = getelementptr inbounds %struct.doublecomplex, ptr %374, i64 %idxprom327
  %376 = load ptr, ptr %ldb.addr, align 8
  %377 = load ptr, ptr %alpha.addr, align 8
  %378 = load ptr, ptr %b.addr, align 8
  %379 = load i32, ptr %b_offset, align 4
  %idxprom329 = sext i32 %379 to i64
  %arrayidx330 = getelementptr inbounds %struct.doublecomplex, ptr %378, i64 %idxprom329
  %380 = load ptr, ptr %ldb.addr, align 8
  %call331 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %k, ptr noundef %371, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx326, ptr noundef %i__1, ptr noundef %arrayidx328, ptr noundef %376, ptr noundef %377, ptr noundef %arrayidx330, ptr noundef %380)
  %381 = load ptr, ptr %m.addr, align 8
  %382 = load i32, ptr %381, align 4
  %add332 = add nsw i32 %382, 1
  store i32 %add332, ptr %i__1, align 4
  %383 = load ptr, ptr %diag.addr, align 8
  %384 = load ptr, ptr %n.addr, align 8
  %385 = load ptr, ptr %a.addr, align 8
  %arrayidx333 = getelementptr inbounds %struct.doublecomplex, ptr %385, i64 1
  %386 = load ptr, ptr %b.addr, align 8
  %387 = load i32, ptr %b_offset, align 4
  %idxprom334 = sext i32 %387 to i64
  %arrayidx335 = getelementptr inbounds %struct.doublecomplex, ptr %386, i64 %idxprom334
  %388 = load ptr, ptr %ldb.addr, align 8
  %call336 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %383, ptr noundef %k, ptr noundef %384, ptr noundef @c_b1, ptr noundef %arrayidx333, ptr noundef %i__1, ptr noundef %arrayidx335, ptr noundef %388)
  br label %if.end337

if.end337:                                        ; preds = %if.else316, %if.then295
  br label %if.end385

if.else338:                                       ; preds = %if.then291
  %389 = load i32, ptr %notrans, align 4
  %tobool339 = icmp ne i32 %389, 0
  br i1 %tobool339, label %if.else362, label %if.then340

if.then340:                                       ; preds = %if.else338
  %390 = load ptr, ptr %m.addr, align 8
  %391 = load i32, ptr %390, align 4
  %add341 = add nsw i32 %391, 1
  store i32 %add341, ptr %i__1, align 4
  %392 = load ptr, ptr %diag.addr, align 8
  %393 = load ptr, ptr %n.addr, align 8
  %394 = load ptr, ptr %alpha.addr, align 8
  %395 = load ptr, ptr %a.addr, align 8
  %396 = load i32, ptr %k, align 4
  %add342 = add nsw i32 %396, 1
  %idxprom343 = sext i32 %add342 to i64
  %arrayidx344 = getelementptr inbounds %struct.doublecomplex, ptr %395, i64 %idxprom343
  %397 = load ptr, ptr %b.addr, align 8
  %398 = load i32, ptr %b_offset, align 4
  %idxprom345 = sext i32 %398 to i64
  %arrayidx346 = getelementptr inbounds %struct.doublecomplex, ptr %397, i64 %idxprom345
  %399 = load ptr, ptr %ldb.addr, align 8
  %call347 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %392, ptr noundef %k, ptr noundef %393, ptr noundef %394, ptr noundef %arrayidx344, ptr noundef %i__1, ptr noundef %arrayidx346, ptr noundef %399)
  %r348 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r348, align 8
  %i349 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i349, align 8
  %400 = load ptr, ptr %m.addr, align 8
  %401 = load i32, ptr %400, align 4
  %add350 = add nsw i32 %401, 1
  store i32 %add350, ptr %i__1, align 4
  %402 = load ptr, ptr %n.addr, align 8
  %403 = load ptr, ptr %a.addr, align 8
  %404 = load ptr, ptr %b.addr, align 8
  %405 = load i32, ptr %b_offset, align 4
  %idxprom351 = sext i32 %405 to i64
  %arrayidx352 = getelementptr inbounds %struct.doublecomplex, ptr %404, i64 %idxprom351
  %406 = load ptr, ptr %ldb.addr, align 8
  %407 = load ptr, ptr %alpha.addr, align 8
  %408 = load ptr, ptr %b.addr, align 8
  %409 = load i32, ptr %k, align 4
  %idxprom353 = sext i32 %409 to i64
  %arrayidx354 = getelementptr inbounds %struct.doublecomplex, ptr %408, i64 %idxprom353
  %410 = load ptr, ptr %ldb.addr, align 8
  %call355 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %k, ptr noundef %402, ptr noundef %k, ptr noundef %z__1, ptr noundef %403, ptr noundef %i__1, ptr noundef %arrayidx352, ptr noundef %406, ptr noundef %407, ptr noundef %arrayidx354, ptr noundef %410)
  %411 = load ptr, ptr %m.addr, align 8
  %412 = load i32, ptr %411, align 4
  %add356 = add nsw i32 %412, 1
  store i32 %add356, ptr %i__1, align 4
  %413 = load ptr, ptr %diag.addr, align 8
  %414 = load ptr, ptr %n.addr, align 8
  %415 = load ptr, ptr %a.addr, align 8
  %416 = load i32, ptr %k, align 4
  %idxprom357 = sext i32 %416 to i64
  %arrayidx358 = getelementptr inbounds %struct.doublecomplex, ptr %415, i64 %idxprom357
  %417 = load ptr, ptr %b.addr, align 8
  %418 = load i32, ptr %k, align 4
  %idxprom359 = sext i32 %418 to i64
  %arrayidx360 = getelementptr inbounds %struct.doublecomplex, ptr %417, i64 %idxprom359
  %419 = load ptr, ptr %ldb.addr, align 8
  %call361 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %413, ptr noundef %k, ptr noundef %414, ptr noundef @c_b1, ptr noundef %arrayidx358, ptr noundef %i__1, ptr noundef %arrayidx360, ptr noundef %419)
  br label %if.end384

if.else362:                                       ; preds = %if.else338
  %420 = load ptr, ptr %m.addr, align 8
  %421 = load i32, ptr %420, align 4
  %add363 = add nsw i32 %421, 1
  store i32 %add363, ptr %i__1, align 4
  %422 = load ptr, ptr %diag.addr, align 8
  %423 = load ptr, ptr %n.addr, align 8
  %424 = load ptr, ptr %alpha.addr, align 8
  %425 = load ptr, ptr %a.addr, align 8
  %426 = load i32, ptr %k, align 4
  %idxprom364 = sext i32 %426 to i64
  %arrayidx365 = getelementptr inbounds %struct.doublecomplex, ptr %425, i64 %idxprom364
  %427 = load ptr, ptr %b.addr, align 8
  %428 = load i32, ptr %k, align 4
  %idxprom366 = sext i32 %428 to i64
  %arrayidx367 = getelementptr inbounds %struct.doublecomplex, ptr %427, i64 %idxprom366
  %429 = load ptr, ptr %ldb.addr, align 8
  %call368 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %422, ptr noundef %k, ptr noundef %423, ptr noundef %424, ptr noundef %arrayidx365, ptr noundef %i__1, ptr noundef %arrayidx367, ptr noundef %429)
  %r369 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r369, align 8
  %i370 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i370, align 8
  %430 = load ptr, ptr %m.addr, align 8
  %431 = load i32, ptr %430, align 4
  %add371 = add nsw i32 %431, 1
  store i32 %add371, ptr %i__1, align 4
  %432 = load ptr, ptr %n.addr, align 8
  %433 = load ptr, ptr %a.addr, align 8
  %434 = load ptr, ptr %b.addr, align 8
  %435 = load i32, ptr %k, align 4
  %idxprom372 = sext i32 %435 to i64
  %arrayidx373 = getelementptr inbounds %struct.doublecomplex, ptr %434, i64 %idxprom372
  %436 = load ptr, ptr %ldb.addr, align 8
  %437 = load ptr, ptr %alpha.addr, align 8
  %438 = load ptr, ptr %b.addr, align 8
  %439 = load i32, ptr %b_offset, align 4
  %idxprom374 = sext i32 %439 to i64
  %arrayidx375 = getelementptr inbounds %struct.doublecomplex, ptr %438, i64 %idxprom374
  %440 = load ptr, ptr %ldb.addr, align 8
  %call376 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %k, ptr noundef %432, ptr noundef %k, ptr noundef %z__1, ptr noundef %433, ptr noundef %i__1, ptr noundef %arrayidx373, ptr noundef %436, ptr noundef %437, ptr noundef %arrayidx375, ptr noundef %440)
  %441 = load ptr, ptr %m.addr, align 8
  %442 = load i32, ptr %441, align 4
  %add377 = add nsw i32 %442, 1
  store i32 %add377, ptr %i__1, align 4
  %443 = load ptr, ptr %diag.addr, align 8
  %444 = load ptr, ptr %n.addr, align 8
  %445 = load ptr, ptr %a.addr, align 8
  %446 = load i32, ptr %k, align 4
  %add378 = add nsw i32 %446, 1
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds %struct.doublecomplex, ptr %445, i64 %idxprom379
  %447 = load ptr, ptr %b.addr, align 8
  %448 = load i32, ptr %b_offset, align 4
  %idxprom381 = sext i32 %448 to i64
  %arrayidx382 = getelementptr inbounds %struct.doublecomplex, ptr %447, i64 %idxprom381
  %449 = load ptr, ptr %ldb.addr, align 8
  %call383 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %443, ptr noundef %k, ptr noundef %444, ptr noundef @c_b1, ptr noundef %arrayidx380, ptr noundef %i__1, ptr noundef %arrayidx382, ptr noundef %449)
  br label %if.end384

if.end384:                                        ; preds = %if.else362, %if.then340
  br label %if.end385

if.end385:                                        ; preds = %if.end384, %if.end337
  br label %if.end477

if.else386:                                       ; preds = %if.else289
  %450 = load i32, ptr %lower, align 4
  %tobool387 = icmp ne i32 %450, 0
  br i1 %tobool387, label %if.then388, label %if.else431

if.then388:                                       ; preds = %if.else386
  %451 = load i32, ptr %notrans, align 4
  %tobool389 = icmp ne i32 %451, 0
  br i1 %tobool389, label %if.then390, label %if.else410

if.then390:                                       ; preds = %if.then388
  %452 = load ptr, ptr %diag.addr, align 8
  %453 = load ptr, ptr %n.addr, align 8
  %454 = load ptr, ptr %alpha.addr, align 8
  %455 = load ptr, ptr %a.addr, align 8
  %456 = load i32, ptr %k, align 4
  %idxprom391 = sext i32 %456 to i64
  %arrayidx392 = getelementptr inbounds %struct.doublecomplex, ptr %455, i64 %idxprom391
  %457 = load ptr, ptr %b.addr, align 8
  %458 = load i32, ptr %b_offset, align 4
  %idxprom393 = sext i32 %458 to i64
  %arrayidx394 = getelementptr inbounds %struct.doublecomplex, ptr %457, i64 %idxprom393
  %459 = load ptr, ptr %ldb.addr, align 8
  %call395 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %452, ptr noundef %k, ptr noundef %453, ptr noundef %454, ptr noundef %arrayidx392, ptr noundef %k, ptr noundef %arrayidx394, ptr noundef %459)
  %r396 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r396, align 8
  %i397 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i397, align 8
  %460 = load ptr, ptr %n.addr, align 8
  %461 = load ptr, ptr %a.addr, align 8
  %462 = load i32, ptr %k, align 4
  %463 = load i32, ptr %k, align 4
  %add398 = add nsw i32 %463, 1
  %mul399 = mul nsw i32 %462, %add398
  %idxprom400 = sext i32 %mul399 to i64
  %arrayidx401 = getelementptr inbounds %struct.doublecomplex, ptr %461, i64 %idxprom400
  %464 = load ptr, ptr %b.addr, align 8
  %465 = load i32, ptr %b_offset, align 4
  %idxprom402 = sext i32 %465 to i64
  %arrayidx403 = getelementptr inbounds %struct.doublecomplex, ptr %464, i64 %idxprom402
  %466 = load ptr, ptr %ldb.addr, align 8
  %467 = load ptr, ptr %alpha.addr, align 8
  %468 = load ptr, ptr %b.addr, align 8
  %469 = load i32, ptr %k, align 4
  %idxprom404 = sext i32 %469 to i64
  %arrayidx405 = getelementptr inbounds %struct.doublecomplex, ptr %468, i64 %idxprom404
  %470 = load ptr, ptr %ldb.addr, align 8
  %call406 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %k, ptr noundef %460, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx401, ptr noundef %k, ptr noundef %arrayidx403, ptr noundef %466, ptr noundef %467, ptr noundef %arrayidx405, ptr noundef %470)
  %471 = load ptr, ptr %diag.addr, align 8
  %472 = load ptr, ptr %n.addr, align 8
  %473 = load ptr, ptr %a.addr, align 8
  %474 = load ptr, ptr %b.addr, align 8
  %475 = load i32, ptr %k, align 4
  %idxprom407 = sext i32 %475 to i64
  %arrayidx408 = getelementptr inbounds %struct.doublecomplex, ptr %474, i64 %idxprom407
  %476 = load ptr, ptr %ldb.addr, align 8
  %call409 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %471, ptr noundef %k, ptr noundef %472, ptr noundef @c_b1, ptr noundef %473, ptr noundef %k, ptr noundef %arrayidx408, ptr noundef %476)
  br label %if.end430

if.else410:                                       ; preds = %if.then388
  %477 = load ptr, ptr %diag.addr, align 8
  %478 = load ptr, ptr %n.addr, align 8
  %479 = load ptr, ptr %alpha.addr, align 8
  %480 = load ptr, ptr %a.addr, align 8
  %481 = load ptr, ptr %b.addr, align 8
  %482 = load i32, ptr %k, align 4
  %idxprom411 = sext i32 %482 to i64
  %arrayidx412 = getelementptr inbounds %struct.doublecomplex, ptr %481, i64 %idxprom411
  %483 = load ptr, ptr %ldb.addr, align 8
  %call413 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %477, ptr noundef %k, ptr noundef %478, ptr noundef %479, ptr noundef %480, ptr noundef %k, ptr noundef %arrayidx412, ptr noundef %483)
  %r414 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r414, align 8
  %i415 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i415, align 8
  %484 = load ptr, ptr %n.addr, align 8
  %485 = load ptr, ptr %a.addr, align 8
  %486 = load i32, ptr %k, align 4
  %487 = load i32, ptr %k, align 4
  %add416 = add nsw i32 %487, 1
  %mul417 = mul nsw i32 %486, %add416
  %idxprom418 = sext i32 %mul417 to i64
  %arrayidx419 = getelementptr inbounds %struct.doublecomplex, ptr %485, i64 %idxprom418
  %488 = load ptr, ptr %b.addr, align 8
  %489 = load i32, ptr %k, align 4
  %idxprom420 = sext i32 %489 to i64
  %arrayidx421 = getelementptr inbounds %struct.doublecomplex, ptr %488, i64 %idxprom420
  %490 = load ptr, ptr %ldb.addr, align 8
  %491 = load ptr, ptr %alpha.addr, align 8
  %492 = load ptr, ptr %b.addr, align 8
  %493 = load i32, ptr %b_offset, align 4
  %idxprom422 = sext i32 %493 to i64
  %arrayidx423 = getelementptr inbounds %struct.doublecomplex, ptr %492, i64 %idxprom422
  %494 = load ptr, ptr %ldb.addr, align 8
  %call424 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %k, ptr noundef %484, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx419, ptr noundef %k, ptr noundef %arrayidx421, ptr noundef %490, ptr noundef %491, ptr noundef %arrayidx423, ptr noundef %494)
  %495 = load ptr, ptr %diag.addr, align 8
  %496 = load ptr, ptr %n.addr, align 8
  %497 = load ptr, ptr %a.addr, align 8
  %498 = load i32, ptr %k, align 4
  %idxprom425 = sext i32 %498 to i64
  %arrayidx426 = getelementptr inbounds %struct.doublecomplex, ptr %497, i64 %idxprom425
  %499 = load ptr, ptr %b.addr, align 8
  %500 = load i32, ptr %b_offset, align 4
  %idxprom427 = sext i32 %500 to i64
  %arrayidx428 = getelementptr inbounds %struct.doublecomplex, ptr %499, i64 %idxprom427
  %501 = load ptr, ptr %ldb.addr, align 8
  %call429 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %495, ptr noundef %k, ptr noundef %496, ptr noundef @c_b1, ptr noundef %arrayidx426, ptr noundef %k, ptr noundef %arrayidx428, ptr noundef %501)
  br label %if.end430

if.end430:                                        ; preds = %if.else410, %if.then390
  br label %if.end476

if.else431:                                       ; preds = %if.else386
  %502 = load i32, ptr %notrans, align 4
  %tobool432 = icmp ne i32 %502, 0
  br i1 %tobool432, label %if.else454, label %if.then433

if.then433:                                       ; preds = %if.else431
  %503 = load ptr, ptr %diag.addr, align 8
  %504 = load ptr, ptr %n.addr, align 8
  %505 = load ptr, ptr %alpha.addr, align 8
  %506 = load ptr, ptr %a.addr, align 8
  %507 = load i32, ptr %k, align 4
  %508 = load i32, ptr %k, align 4
  %add434 = add nsw i32 %508, 1
  %mul435 = mul nsw i32 %507, %add434
  %idxprom436 = sext i32 %mul435 to i64
  %arrayidx437 = getelementptr inbounds %struct.doublecomplex, ptr %506, i64 %idxprom436
  %509 = load ptr, ptr %b.addr, align 8
  %510 = load i32, ptr %b_offset, align 4
  %idxprom438 = sext i32 %510 to i64
  %arrayidx439 = getelementptr inbounds %struct.doublecomplex, ptr %509, i64 %idxprom438
  %511 = load ptr, ptr %ldb.addr, align 8
  %call440 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %503, ptr noundef %k, ptr noundef %504, ptr noundef %505, ptr noundef %arrayidx437, ptr noundef %k, ptr noundef %arrayidx439, ptr noundef %511)
  %r441 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r441, align 8
  %i442 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i442, align 8
  %512 = load ptr, ptr %n.addr, align 8
  %513 = load ptr, ptr %a.addr, align 8
  %514 = load ptr, ptr %b.addr, align 8
  %515 = load i32, ptr %b_offset, align 4
  %idxprom443 = sext i32 %515 to i64
  %arrayidx444 = getelementptr inbounds %struct.doublecomplex, ptr %514, i64 %idxprom443
  %516 = load ptr, ptr %ldb.addr, align 8
  %517 = load ptr, ptr %alpha.addr, align 8
  %518 = load ptr, ptr %b.addr, align 8
  %519 = load i32, ptr %k, align 4
  %idxprom445 = sext i32 %519 to i64
  %arrayidx446 = getelementptr inbounds %struct.doublecomplex, ptr %518, i64 %idxprom445
  %520 = load ptr, ptr %ldb.addr, align 8
  %call447 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %k, ptr noundef %512, ptr noundef %k, ptr noundef %z__1, ptr noundef %513, ptr noundef %k, ptr noundef %arrayidx444, ptr noundef %516, ptr noundef %517, ptr noundef %arrayidx446, ptr noundef %520)
  %521 = load ptr, ptr %diag.addr, align 8
  %522 = load ptr, ptr %n.addr, align 8
  %523 = load ptr, ptr %a.addr, align 8
  %524 = load i32, ptr %k, align 4
  %525 = load i32, ptr %k, align 4
  %mul448 = mul nsw i32 %524, %525
  %idxprom449 = sext i32 %mul448 to i64
  %arrayidx450 = getelementptr inbounds %struct.doublecomplex, ptr %523, i64 %idxprom449
  %526 = load ptr, ptr %b.addr, align 8
  %527 = load i32, ptr %k, align 4
  %idxprom451 = sext i32 %527 to i64
  %arrayidx452 = getelementptr inbounds %struct.doublecomplex, ptr %526, i64 %idxprom451
  %528 = load ptr, ptr %ldb.addr, align 8
  %call453 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %521, ptr noundef %k, ptr noundef %522, ptr noundef @c_b1, ptr noundef %arrayidx450, ptr noundef %k, ptr noundef %arrayidx452, ptr noundef %528)
  br label %if.end475

if.else454:                                       ; preds = %if.else431
  %529 = load ptr, ptr %diag.addr, align 8
  %530 = load ptr, ptr %n.addr, align 8
  %531 = load ptr, ptr %alpha.addr, align 8
  %532 = load ptr, ptr %a.addr, align 8
  %533 = load i32, ptr %k, align 4
  %534 = load i32, ptr %k, align 4
  %mul455 = mul nsw i32 %533, %534
  %idxprom456 = sext i32 %mul455 to i64
  %arrayidx457 = getelementptr inbounds %struct.doublecomplex, ptr %532, i64 %idxprom456
  %535 = load ptr, ptr %b.addr, align 8
  %536 = load i32, ptr %k, align 4
  %idxprom458 = sext i32 %536 to i64
  %arrayidx459 = getelementptr inbounds %struct.doublecomplex, ptr %535, i64 %idxprom458
  %537 = load ptr, ptr %ldb.addr, align 8
  %call460 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %529, ptr noundef %k, ptr noundef %530, ptr noundef %531, ptr noundef %arrayidx457, ptr noundef %k, ptr noundef %arrayidx459, ptr noundef %537)
  %r461 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r461, align 8
  %i462 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i462, align 8
  %538 = load ptr, ptr %n.addr, align 8
  %539 = load ptr, ptr %a.addr, align 8
  %540 = load ptr, ptr %b.addr, align 8
  %541 = load i32, ptr %k, align 4
  %idxprom463 = sext i32 %541 to i64
  %arrayidx464 = getelementptr inbounds %struct.doublecomplex, ptr %540, i64 %idxprom463
  %542 = load ptr, ptr %ldb.addr, align 8
  %543 = load ptr, ptr %alpha.addr, align 8
  %544 = load ptr, ptr %b.addr, align 8
  %545 = load i32, ptr %b_offset, align 4
  %idxprom465 = sext i32 %545 to i64
  %arrayidx466 = getelementptr inbounds %struct.doublecomplex, ptr %544, i64 %idxprom465
  %546 = load ptr, ptr %ldb.addr, align 8
  %call467 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %k, ptr noundef %538, ptr noundef %k, ptr noundef %z__1, ptr noundef %539, ptr noundef %k, ptr noundef %arrayidx464, ptr noundef %542, ptr noundef %543, ptr noundef %arrayidx466, ptr noundef %546)
  %547 = load ptr, ptr %diag.addr, align 8
  %548 = load ptr, ptr %n.addr, align 8
  %549 = load ptr, ptr %a.addr, align 8
  %550 = load i32, ptr %k, align 4
  %551 = load i32, ptr %k, align 4
  %add468 = add nsw i32 %551, 1
  %mul469 = mul nsw i32 %550, %add468
  %idxprom470 = sext i32 %mul469 to i64
  %arrayidx471 = getelementptr inbounds %struct.doublecomplex, ptr %549, i64 %idxprom470
  %552 = load ptr, ptr %b.addr, align 8
  %553 = load i32, ptr %b_offset, align 4
  %idxprom472 = sext i32 %553 to i64
  %arrayidx473 = getelementptr inbounds %struct.doublecomplex, ptr %552, i64 %idxprom472
  %554 = load ptr, ptr %ldb.addr, align 8
  %call474 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %547, ptr noundef %k, ptr noundef %548, ptr noundef @c_b1, ptr noundef %arrayidx471, ptr noundef %k, ptr noundef %arrayidx473, ptr noundef %554)
  br label %if.end475

if.end475:                                        ; preds = %if.else454, %if.then433
  br label %if.end476

if.end476:                                        ; preds = %if.end475, %if.end430
  br label %if.end477

if.end477:                                        ; preds = %if.end476, %if.end385
  br label %if.end478

if.end478:                                        ; preds = %if.end477, %if.end288
  br label %if.end822

if.else479:                                       ; preds = %if.end76
  %555 = load ptr, ptr %n.addr, align 8
  %556 = load i32, ptr %555, align 4
  %rem480 = srem i32 %556, 2
  %cmp481 = icmp eq i32 %rem480, 0
  br i1 %cmp481, label %if.then482, label %if.else484

if.then482:                                       ; preds = %if.else479
  store i32 0, ptr %nisodd, align 4
  %557 = load ptr, ptr %n.addr, align 8
  %558 = load i32, ptr %557, align 4
  %div483 = sdiv i32 %558, 2
  store i32 %div483, ptr %k, align 4
  br label %if.end493

if.else484:                                       ; preds = %if.else479
  store i32 1, ptr %nisodd, align 4
  %559 = load i32, ptr %lower, align 4
  %tobool485 = icmp ne i32 %559, 0
  br i1 %tobool485, label %if.then486, label %if.else489

if.then486:                                       ; preds = %if.else484
  %560 = load ptr, ptr %n.addr, align 8
  %561 = load i32, ptr %560, align 4
  %div487 = sdiv i32 %561, 2
  store i32 %div487, ptr %n2, align 4
  %562 = load ptr, ptr %n.addr, align 8
  %563 = load i32, ptr %562, align 4
  %564 = load i32, ptr %n2, align 4
  %sub488 = sub nsw i32 %563, %564
  store i32 %sub488, ptr %n1, align 4
  br label %if.end492

if.else489:                                       ; preds = %if.else484
  %565 = load ptr, ptr %n.addr, align 8
  %566 = load i32, ptr %565, align 4
  %div490 = sdiv i32 %566, 2
  store i32 %div490, ptr %n1, align 4
  %567 = load ptr, ptr %n.addr, align 8
  %568 = load i32, ptr %567, align 4
  %569 = load i32, ptr %n1, align 4
  %sub491 = sub nsw i32 %568, %569
  store i32 %sub491, ptr %n2, align 4
  br label %if.end492

if.end492:                                        ; preds = %if.else489, %if.then486
  br label %if.end493

if.end493:                                        ; preds = %if.end492, %if.then482
  %570 = load i32, ptr %nisodd, align 4
  %tobool494 = icmp ne i32 %570, 0
  br i1 %tobool494, label %if.then495, label %if.else648

if.then495:                                       ; preds = %if.end493
  %571 = load i32, ptr %normaltransr, align 4
  %tobool496 = icmp ne i32 %571, 0
  br i1 %tobool496, label %if.then497, label %if.else570

if.then497:                                       ; preds = %if.then495
  %572 = load i32, ptr %lower, align 4
  %tobool498 = icmp ne i32 %572, 0
  br i1 %tobool498, label %if.then499, label %if.else534

if.then499:                                       ; preds = %if.then497
  %573 = load i32, ptr %notrans, align 4
  %tobool500 = icmp ne i32 %573, 0
  br i1 %tobool500, label %if.then501, label %if.else517

if.then501:                                       ; preds = %if.then499
  %574 = load ptr, ptr %diag.addr, align 8
  %575 = load ptr, ptr %m.addr, align 8
  %576 = load ptr, ptr %alpha.addr, align 8
  %577 = load ptr, ptr %a.addr, align 8
  %578 = load ptr, ptr %n.addr, align 8
  %579 = load i32, ptr %578, align 4
  %idxprom502 = sext i32 %579 to i64
  %arrayidx503 = getelementptr inbounds %struct.doublecomplex, ptr %577, i64 %idxprom502
  %580 = load ptr, ptr %n.addr, align 8
  %581 = load ptr, ptr %b.addr, align 8
  %582 = load i32, ptr %n1, align 4
  %583 = load i32, ptr %b_dim1, align 4
  %mul504 = mul nsw i32 %582, %583
  %idxprom505 = sext i32 %mul504 to i64
  %arrayidx506 = getelementptr inbounds %struct.doublecomplex, ptr %581, i64 %idxprom505
  %584 = load ptr, ptr %ldb.addr, align 8
  %call507 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %574, ptr noundef %575, ptr noundef %n2, ptr noundef %576, ptr noundef %arrayidx503, ptr noundef %580, ptr noundef %arrayidx506, ptr noundef %584)
  %r508 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r508, align 8
  %i509 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i509, align 8
  %585 = load ptr, ptr %m.addr, align 8
  %586 = load ptr, ptr %b.addr, align 8
  %587 = load i32, ptr %n1, align 4
  %588 = load i32, ptr %b_dim1, align 4
  %mul510 = mul nsw i32 %587, %588
  %idxprom511 = sext i32 %mul510 to i64
  %arrayidx512 = getelementptr inbounds %struct.doublecomplex, ptr %586, i64 %idxprom511
  %589 = load ptr, ptr %ldb.addr, align 8
  %590 = load ptr, ptr %a.addr, align 8
  %591 = load i32, ptr %n1, align 4
  %idxprom513 = sext i32 %591 to i64
  %arrayidx514 = getelementptr inbounds %struct.doublecomplex, ptr %590, i64 %idxprom513
  %592 = load ptr, ptr %n.addr, align 8
  %593 = load ptr, ptr %alpha.addr, align 8
  %594 = load ptr, ptr %b.addr, align 8
  %595 = load ptr, ptr %ldb.addr, align 8
  %call515 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %585, ptr noundef %n1, ptr noundef %n2, ptr noundef %z__1, ptr noundef %arrayidx512, ptr noundef %589, ptr noundef %arrayidx514, ptr noundef %592, ptr noundef %593, ptr noundef %594, ptr noundef %595)
  %596 = load ptr, ptr %diag.addr, align 8
  %597 = load ptr, ptr %m.addr, align 8
  %598 = load ptr, ptr %a.addr, align 8
  %599 = load ptr, ptr %n.addr, align 8
  %600 = load ptr, ptr %b.addr, align 8
  %601 = load ptr, ptr %ldb.addr, align 8
  %call516 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %596, ptr noundef %597, ptr noundef %n1, ptr noundef @c_b1, ptr noundef %598, ptr noundef %599, ptr noundef %600, ptr noundef %601)
  br label %if.end533

if.else517:                                       ; preds = %if.then499
  %602 = load ptr, ptr %diag.addr, align 8
  %603 = load ptr, ptr %m.addr, align 8
  %604 = load ptr, ptr %alpha.addr, align 8
  %605 = load ptr, ptr %a.addr, align 8
  %606 = load ptr, ptr %n.addr, align 8
  %607 = load ptr, ptr %b.addr, align 8
  %608 = load ptr, ptr %ldb.addr, align 8
  %call518 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %602, ptr noundef %603, ptr noundef %n1, ptr noundef %604, ptr noundef %605, ptr noundef %606, ptr noundef %607, ptr noundef %608)
  %r519 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r519, align 8
  %i520 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i520, align 8
  %609 = load ptr, ptr %m.addr, align 8
  %610 = load ptr, ptr %b.addr, align 8
  %611 = load ptr, ptr %ldb.addr, align 8
  %612 = load ptr, ptr %a.addr, align 8
  %613 = load i32, ptr %n1, align 4
  %idxprom521 = sext i32 %613 to i64
  %arrayidx522 = getelementptr inbounds %struct.doublecomplex, ptr %612, i64 %idxprom521
  %614 = load ptr, ptr %n.addr, align 8
  %615 = load ptr, ptr %alpha.addr, align 8
  %616 = load ptr, ptr %b.addr, align 8
  %617 = load i32, ptr %n1, align 4
  %618 = load i32, ptr %b_dim1, align 4
  %mul523 = mul nsw i32 %617, %618
  %idxprom524 = sext i32 %mul523 to i64
  %arrayidx525 = getelementptr inbounds %struct.doublecomplex, ptr %616, i64 %idxprom524
  %619 = load ptr, ptr %ldb.addr, align 8
  %call526 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %609, ptr noundef %n2, ptr noundef %n1, ptr noundef %z__1, ptr noundef %610, ptr noundef %611, ptr noundef %arrayidx522, ptr noundef %614, ptr noundef %615, ptr noundef %arrayidx525, ptr noundef %619)
  %620 = load ptr, ptr %diag.addr, align 8
  %621 = load ptr, ptr %m.addr, align 8
  %622 = load ptr, ptr %a.addr, align 8
  %623 = load ptr, ptr %n.addr, align 8
  %624 = load i32, ptr %623, align 4
  %idxprom527 = sext i32 %624 to i64
  %arrayidx528 = getelementptr inbounds %struct.doublecomplex, ptr %622, i64 %idxprom527
  %625 = load ptr, ptr %n.addr, align 8
  %626 = load ptr, ptr %b.addr, align 8
  %627 = load i32, ptr %n1, align 4
  %628 = load i32, ptr %b_dim1, align 4
  %mul529 = mul nsw i32 %627, %628
  %idxprom530 = sext i32 %mul529 to i64
  %arrayidx531 = getelementptr inbounds %struct.doublecomplex, ptr %626, i64 %idxprom530
  %629 = load ptr, ptr %ldb.addr, align 8
  %call532 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %620, ptr noundef %621, ptr noundef %n2, ptr noundef @c_b1, ptr noundef %arrayidx528, ptr noundef %625, ptr noundef %arrayidx531, ptr noundef %629)
  br label %if.end533

if.end533:                                        ; preds = %if.else517, %if.then501
  br label %if.end569

if.else534:                                       ; preds = %if.then497
  %630 = load i32, ptr %notrans, align 4
  %tobool535 = icmp ne i32 %630, 0
  br i1 %tobool535, label %if.then536, label %if.else552

if.then536:                                       ; preds = %if.else534
  %631 = load ptr, ptr %diag.addr, align 8
  %632 = load ptr, ptr %m.addr, align 8
  %633 = load ptr, ptr %alpha.addr, align 8
  %634 = load ptr, ptr %a.addr, align 8
  %635 = load i32, ptr %n2, align 4
  %idxprom537 = sext i32 %635 to i64
  %arrayidx538 = getelementptr inbounds %struct.doublecomplex, ptr %634, i64 %idxprom537
  %636 = load ptr, ptr %n.addr, align 8
  %637 = load ptr, ptr %b.addr, align 8
  %638 = load ptr, ptr %ldb.addr, align 8
  %call539 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %631, ptr noundef %632, ptr noundef %n1, ptr noundef %633, ptr noundef %arrayidx538, ptr noundef %636, ptr noundef %637, ptr noundef %638)
  %r540 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r540, align 8
  %i541 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i541, align 8
  %639 = load ptr, ptr %m.addr, align 8
  %640 = load ptr, ptr %b.addr, align 8
  %641 = load ptr, ptr %ldb.addr, align 8
  %642 = load ptr, ptr %a.addr, align 8
  %643 = load ptr, ptr %n.addr, align 8
  %644 = load ptr, ptr %alpha.addr, align 8
  %645 = load ptr, ptr %b.addr, align 8
  %646 = load i32, ptr %n1, align 4
  %647 = load i32, ptr %b_dim1, align 4
  %mul542 = mul nsw i32 %646, %647
  %idxprom543 = sext i32 %mul542 to i64
  %arrayidx544 = getelementptr inbounds %struct.doublecomplex, ptr %645, i64 %idxprom543
  %648 = load ptr, ptr %ldb.addr, align 8
  %call545 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %639, ptr noundef %n2, ptr noundef %n1, ptr noundef %z__1, ptr noundef %640, ptr noundef %641, ptr noundef %642, ptr noundef %643, ptr noundef %644, ptr noundef %arrayidx544, ptr noundef %648)
  %649 = load ptr, ptr %diag.addr, align 8
  %650 = load ptr, ptr %m.addr, align 8
  %651 = load ptr, ptr %a.addr, align 8
  %652 = load i32, ptr %n1, align 4
  %idxprom546 = sext i32 %652 to i64
  %arrayidx547 = getelementptr inbounds %struct.doublecomplex, ptr %651, i64 %idxprom546
  %653 = load ptr, ptr %n.addr, align 8
  %654 = load ptr, ptr %b.addr, align 8
  %655 = load i32, ptr %n1, align 4
  %656 = load i32, ptr %b_dim1, align 4
  %mul548 = mul nsw i32 %655, %656
  %idxprom549 = sext i32 %mul548 to i64
  %arrayidx550 = getelementptr inbounds %struct.doublecomplex, ptr %654, i64 %idxprom549
  %657 = load ptr, ptr %ldb.addr, align 8
  %call551 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %649, ptr noundef %650, ptr noundef %n2, ptr noundef @c_b1, ptr noundef %arrayidx547, ptr noundef %653, ptr noundef %arrayidx550, ptr noundef %657)
  br label %if.end568

if.else552:                                       ; preds = %if.else534
  %658 = load ptr, ptr %diag.addr, align 8
  %659 = load ptr, ptr %m.addr, align 8
  %660 = load ptr, ptr %alpha.addr, align 8
  %661 = load ptr, ptr %a.addr, align 8
  %662 = load i32, ptr %n1, align 4
  %idxprom553 = sext i32 %662 to i64
  %arrayidx554 = getelementptr inbounds %struct.doublecomplex, ptr %661, i64 %idxprom553
  %663 = load ptr, ptr %n.addr, align 8
  %664 = load ptr, ptr %b.addr, align 8
  %665 = load i32, ptr %n1, align 4
  %666 = load i32, ptr %b_dim1, align 4
  %mul555 = mul nsw i32 %665, %666
  %idxprom556 = sext i32 %mul555 to i64
  %arrayidx557 = getelementptr inbounds %struct.doublecomplex, ptr %664, i64 %idxprom556
  %667 = load ptr, ptr %ldb.addr, align 8
  %call558 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %658, ptr noundef %659, ptr noundef %n2, ptr noundef %660, ptr noundef %arrayidx554, ptr noundef %663, ptr noundef %arrayidx557, ptr noundef %667)
  %r559 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r559, align 8
  %i560 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i560, align 8
  %668 = load ptr, ptr %m.addr, align 8
  %669 = load ptr, ptr %b.addr, align 8
  %670 = load i32, ptr %n1, align 4
  %671 = load i32, ptr %b_dim1, align 4
  %mul561 = mul nsw i32 %670, %671
  %idxprom562 = sext i32 %mul561 to i64
  %arrayidx563 = getelementptr inbounds %struct.doublecomplex, ptr %669, i64 %idxprom562
  %672 = load ptr, ptr %ldb.addr, align 8
  %673 = load ptr, ptr %a.addr, align 8
  %674 = load ptr, ptr %n.addr, align 8
  %675 = load ptr, ptr %alpha.addr, align 8
  %676 = load ptr, ptr %b.addr, align 8
  %677 = load ptr, ptr %ldb.addr, align 8
  %call564 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %668, ptr noundef %n1, ptr noundef %n2, ptr noundef %z__1, ptr noundef %arrayidx563, ptr noundef %672, ptr noundef %673, ptr noundef %674, ptr noundef %675, ptr noundef %676, ptr noundef %677)
  %678 = load ptr, ptr %diag.addr, align 8
  %679 = load ptr, ptr %m.addr, align 8
  %680 = load ptr, ptr %a.addr, align 8
  %681 = load i32, ptr %n2, align 4
  %idxprom565 = sext i32 %681 to i64
  %arrayidx566 = getelementptr inbounds %struct.doublecomplex, ptr %680, i64 %idxprom565
  %682 = load ptr, ptr %n.addr, align 8
  %683 = load ptr, ptr %b.addr, align 8
  %684 = load ptr, ptr %ldb.addr, align 8
  %call567 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %678, ptr noundef %679, ptr noundef %n1, ptr noundef @c_b1, ptr noundef %arrayidx566, ptr noundef %682, ptr noundef %683, ptr noundef %684)
  br label %if.end568

if.end568:                                        ; preds = %if.else552, %if.then536
  br label %if.end569

if.end569:                                        ; preds = %if.end568, %if.end533
  br label %if.end647

if.else570:                                       ; preds = %if.then495
  %685 = load i32, ptr %lower, align 4
  %tobool571 = icmp ne i32 %685, 0
  br i1 %tobool571, label %if.then572, label %if.else607

if.then572:                                       ; preds = %if.else570
  %686 = load i32, ptr %notrans, align 4
  %tobool573 = icmp ne i32 %686, 0
  br i1 %tobool573, label %if.then574, label %if.else590

if.then574:                                       ; preds = %if.then572
  %687 = load ptr, ptr %diag.addr, align 8
  %688 = load ptr, ptr %m.addr, align 8
  %689 = load ptr, ptr %alpha.addr, align 8
  %690 = load ptr, ptr %a.addr, align 8
  %arrayidx575 = getelementptr inbounds %struct.doublecomplex, ptr %690, i64 1
  %691 = load ptr, ptr %b.addr, align 8
  %692 = load i32, ptr %n1, align 4
  %693 = load i32, ptr %b_dim1, align 4
  %mul576 = mul nsw i32 %692, %693
  %idxprom577 = sext i32 %mul576 to i64
  %arrayidx578 = getelementptr inbounds %struct.doublecomplex, ptr %691, i64 %idxprom577
  %694 = load ptr, ptr %ldb.addr, align 8
  %call579 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %687, ptr noundef %688, ptr noundef %n2, ptr noundef %689, ptr noundef %arrayidx575, ptr noundef %n1, ptr noundef %arrayidx578, ptr noundef %694)
  %r580 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r580, align 8
  %i581 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i581, align 8
  %695 = load ptr, ptr %m.addr, align 8
  %696 = load ptr, ptr %b.addr, align 8
  %697 = load i32, ptr %n1, align 4
  %698 = load i32, ptr %b_dim1, align 4
  %mul582 = mul nsw i32 %697, %698
  %idxprom583 = sext i32 %mul582 to i64
  %arrayidx584 = getelementptr inbounds %struct.doublecomplex, ptr %696, i64 %idxprom583
  %699 = load ptr, ptr %ldb.addr, align 8
  %700 = load ptr, ptr %a.addr, align 8
  %701 = load i32, ptr %n1, align 4
  %702 = load i32, ptr %n1, align 4
  %mul585 = mul nsw i32 %701, %702
  %idxprom586 = sext i32 %mul585 to i64
  %arrayidx587 = getelementptr inbounds %struct.doublecomplex, ptr %700, i64 %idxprom586
  %703 = load ptr, ptr %alpha.addr, align 8
  %704 = load ptr, ptr %b.addr, align 8
  %705 = load ptr, ptr %ldb.addr, align 8
  %call588 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %695, ptr noundef %n1, ptr noundef %n2, ptr noundef %z__1, ptr noundef %arrayidx584, ptr noundef %699, ptr noundef %arrayidx587, ptr noundef %n1, ptr noundef %703, ptr noundef %704, ptr noundef %705)
  %706 = load ptr, ptr %diag.addr, align 8
  %707 = load ptr, ptr %m.addr, align 8
  %708 = load ptr, ptr %a.addr, align 8
  %709 = load ptr, ptr %b.addr, align 8
  %710 = load ptr, ptr %ldb.addr, align 8
  %call589 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %706, ptr noundef %707, ptr noundef %n1, ptr noundef @c_b1, ptr noundef %708, ptr noundef %n1, ptr noundef %709, ptr noundef %710)
  br label %if.end606

if.else590:                                       ; preds = %if.then572
  %711 = load ptr, ptr %diag.addr, align 8
  %712 = load ptr, ptr %m.addr, align 8
  %713 = load ptr, ptr %alpha.addr, align 8
  %714 = load ptr, ptr %a.addr, align 8
  %715 = load ptr, ptr %b.addr, align 8
  %716 = load ptr, ptr %ldb.addr, align 8
  %call591 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %711, ptr noundef %712, ptr noundef %n1, ptr noundef %713, ptr noundef %714, ptr noundef %n1, ptr noundef %715, ptr noundef %716)
  %r592 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r592, align 8
  %i593 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i593, align 8
  %717 = load ptr, ptr %m.addr, align 8
  %718 = load ptr, ptr %b.addr, align 8
  %719 = load ptr, ptr %ldb.addr, align 8
  %720 = load ptr, ptr %a.addr, align 8
  %721 = load i32, ptr %n1, align 4
  %722 = load i32, ptr %n1, align 4
  %mul594 = mul nsw i32 %721, %722
  %idxprom595 = sext i32 %mul594 to i64
  %arrayidx596 = getelementptr inbounds %struct.doublecomplex, ptr %720, i64 %idxprom595
  %723 = load ptr, ptr %alpha.addr, align 8
  %724 = load ptr, ptr %b.addr, align 8
  %725 = load i32, ptr %n1, align 4
  %726 = load i32, ptr %b_dim1, align 4
  %mul597 = mul nsw i32 %725, %726
  %idxprom598 = sext i32 %mul597 to i64
  %arrayidx599 = getelementptr inbounds %struct.doublecomplex, ptr %724, i64 %idxprom598
  %727 = load ptr, ptr %ldb.addr, align 8
  %call600 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %717, ptr noundef %n2, ptr noundef %n1, ptr noundef %z__1, ptr noundef %718, ptr noundef %719, ptr noundef %arrayidx596, ptr noundef %n1, ptr noundef %723, ptr noundef %arrayidx599, ptr noundef %727)
  %728 = load ptr, ptr %diag.addr, align 8
  %729 = load ptr, ptr %m.addr, align 8
  %730 = load ptr, ptr %a.addr, align 8
  %arrayidx601 = getelementptr inbounds %struct.doublecomplex, ptr %730, i64 1
  %731 = load ptr, ptr %b.addr, align 8
  %732 = load i32, ptr %n1, align 4
  %733 = load i32, ptr %b_dim1, align 4
  %mul602 = mul nsw i32 %732, %733
  %idxprom603 = sext i32 %mul602 to i64
  %arrayidx604 = getelementptr inbounds %struct.doublecomplex, ptr %731, i64 %idxprom603
  %734 = load ptr, ptr %ldb.addr, align 8
  %call605 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %728, ptr noundef %729, ptr noundef %n2, ptr noundef @c_b1, ptr noundef %arrayidx601, ptr noundef %n1, ptr noundef %arrayidx604, ptr noundef %734)
  br label %if.end606

if.end606:                                        ; preds = %if.else590, %if.then574
  br label %if.end646

if.else607:                                       ; preds = %if.else570
  %735 = load i32, ptr %notrans, align 4
  %tobool608 = icmp ne i32 %735, 0
  br i1 %tobool608, label %if.then609, label %if.else627

if.then609:                                       ; preds = %if.else607
  %736 = load ptr, ptr %diag.addr, align 8
  %737 = load ptr, ptr %m.addr, align 8
  %738 = load ptr, ptr %alpha.addr, align 8
  %739 = load ptr, ptr %a.addr, align 8
  %740 = load i32, ptr %n2, align 4
  %741 = load i32, ptr %n2, align 4
  %mul610 = mul nsw i32 %740, %741
  %idxprom611 = sext i32 %mul610 to i64
  %arrayidx612 = getelementptr inbounds %struct.doublecomplex, ptr %739, i64 %idxprom611
  %742 = load ptr, ptr %b.addr, align 8
  %743 = load ptr, ptr %ldb.addr, align 8
  %call613 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %736, ptr noundef %737, ptr noundef %n1, ptr noundef %738, ptr noundef %arrayidx612, ptr noundef %n2, ptr noundef %742, ptr noundef %743)
  %r614 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r614, align 8
  %i615 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i615, align 8
  %744 = load ptr, ptr %m.addr, align 8
  %745 = load ptr, ptr %b.addr, align 8
  %746 = load ptr, ptr %ldb.addr, align 8
  %747 = load ptr, ptr %a.addr, align 8
  %748 = load ptr, ptr %alpha.addr, align 8
  %749 = load ptr, ptr %b.addr, align 8
  %750 = load i32, ptr %n1, align 4
  %751 = load i32, ptr %b_dim1, align 4
  %mul616 = mul nsw i32 %750, %751
  %idxprom617 = sext i32 %mul616 to i64
  %arrayidx618 = getelementptr inbounds %struct.doublecomplex, ptr %749, i64 %idxprom617
  %752 = load ptr, ptr %ldb.addr, align 8
  %call619 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %744, ptr noundef %n2, ptr noundef %n1, ptr noundef %z__1, ptr noundef %745, ptr noundef %746, ptr noundef %747, ptr noundef %n2, ptr noundef %748, ptr noundef %arrayidx618, ptr noundef %752)
  %753 = load ptr, ptr %diag.addr, align 8
  %754 = load ptr, ptr %m.addr, align 8
  %755 = load ptr, ptr %a.addr, align 8
  %756 = load i32, ptr %n1, align 4
  %757 = load i32, ptr %n2, align 4
  %mul620 = mul nsw i32 %756, %757
  %idxprom621 = sext i32 %mul620 to i64
  %arrayidx622 = getelementptr inbounds %struct.doublecomplex, ptr %755, i64 %idxprom621
  %758 = load ptr, ptr %b.addr, align 8
  %759 = load i32, ptr %n1, align 4
  %760 = load i32, ptr %b_dim1, align 4
  %mul623 = mul nsw i32 %759, %760
  %idxprom624 = sext i32 %mul623 to i64
  %arrayidx625 = getelementptr inbounds %struct.doublecomplex, ptr %758, i64 %idxprom624
  %761 = load ptr, ptr %ldb.addr, align 8
  %call626 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %753, ptr noundef %754, ptr noundef %n2, ptr noundef @c_b1, ptr noundef %arrayidx622, ptr noundef %n2, ptr noundef %arrayidx625, ptr noundef %761)
  br label %if.end645

if.else627:                                       ; preds = %if.else607
  %762 = load ptr, ptr %diag.addr, align 8
  %763 = load ptr, ptr %m.addr, align 8
  %764 = load ptr, ptr %alpha.addr, align 8
  %765 = load ptr, ptr %a.addr, align 8
  %766 = load i32, ptr %n1, align 4
  %767 = load i32, ptr %n2, align 4
  %mul628 = mul nsw i32 %766, %767
  %idxprom629 = sext i32 %mul628 to i64
  %arrayidx630 = getelementptr inbounds %struct.doublecomplex, ptr %765, i64 %idxprom629
  %768 = load ptr, ptr %b.addr, align 8
  %769 = load i32, ptr %n1, align 4
  %770 = load i32, ptr %b_dim1, align 4
  %mul631 = mul nsw i32 %769, %770
  %idxprom632 = sext i32 %mul631 to i64
  %arrayidx633 = getelementptr inbounds %struct.doublecomplex, ptr %768, i64 %idxprom632
  %771 = load ptr, ptr %ldb.addr, align 8
  %call634 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %762, ptr noundef %763, ptr noundef %n2, ptr noundef %764, ptr noundef %arrayidx630, ptr noundef %n2, ptr noundef %arrayidx633, ptr noundef %771)
  %r635 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r635, align 8
  %i636 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i636, align 8
  %772 = load ptr, ptr %m.addr, align 8
  %773 = load ptr, ptr %b.addr, align 8
  %774 = load i32, ptr %n1, align 4
  %775 = load i32, ptr %b_dim1, align 4
  %mul637 = mul nsw i32 %774, %775
  %idxprom638 = sext i32 %mul637 to i64
  %arrayidx639 = getelementptr inbounds %struct.doublecomplex, ptr %773, i64 %idxprom638
  %776 = load ptr, ptr %ldb.addr, align 8
  %777 = load ptr, ptr %a.addr, align 8
  %778 = load ptr, ptr %alpha.addr, align 8
  %779 = load ptr, ptr %b.addr, align 8
  %780 = load ptr, ptr %ldb.addr, align 8
  %call640 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %772, ptr noundef %n1, ptr noundef %n2, ptr noundef %z__1, ptr noundef %arrayidx639, ptr noundef %776, ptr noundef %777, ptr noundef %n2, ptr noundef %778, ptr noundef %779, ptr noundef %780)
  %781 = load ptr, ptr %diag.addr, align 8
  %782 = load ptr, ptr %m.addr, align 8
  %783 = load ptr, ptr %a.addr, align 8
  %784 = load i32, ptr %n2, align 4
  %785 = load i32, ptr %n2, align 4
  %mul641 = mul nsw i32 %784, %785
  %idxprom642 = sext i32 %mul641 to i64
  %arrayidx643 = getelementptr inbounds %struct.doublecomplex, ptr %783, i64 %idxprom642
  %786 = load ptr, ptr %b.addr, align 8
  %787 = load ptr, ptr %ldb.addr, align 8
  %call644 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %781, ptr noundef %782, ptr noundef %n1, ptr noundef @c_b1, ptr noundef %arrayidx643, ptr noundef %n2, ptr noundef %786, ptr noundef %787)
  br label %if.end645

if.end645:                                        ; preds = %if.else627, %if.then609
  br label %if.end646

if.end646:                                        ; preds = %if.end645, %if.end606
  br label %if.end647

if.end647:                                        ; preds = %if.end646, %if.end569
  br label %if.end821

if.else648:                                       ; preds = %if.end493
  %788 = load i32, ptr %normaltransr, align 4
  %tobool649 = icmp ne i32 %788, 0
  br i1 %tobool649, label %if.then650, label %if.else737

if.then650:                                       ; preds = %if.else648
  %789 = load i32, ptr %lower, align 4
  %tobool651 = icmp ne i32 %789, 0
  br i1 %tobool651, label %if.then652, label %if.else693

if.then652:                                       ; preds = %if.then650
  %790 = load i32, ptr %notrans, align 4
  %tobool653 = icmp ne i32 %790, 0
  br i1 %tobool653, label %if.then654, label %if.else673

if.then654:                                       ; preds = %if.then652
  %791 = load ptr, ptr %n.addr, align 8
  %792 = load i32, ptr %791, align 4
  %add655 = add nsw i32 %792, 1
  store i32 %add655, ptr %i__1, align 4
  %793 = load ptr, ptr %diag.addr, align 8
  %794 = load ptr, ptr %m.addr, align 8
  %795 = load ptr, ptr %alpha.addr, align 8
  %796 = load ptr, ptr %a.addr, align 8
  %797 = load ptr, ptr %b.addr, align 8
  %798 = load i32, ptr %k, align 4
  %799 = load i32, ptr %b_dim1, align 4
  %mul656 = mul nsw i32 %798, %799
  %idxprom657 = sext i32 %mul656 to i64
  %arrayidx658 = getelementptr inbounds %struct.doublecomplex, ptr %797, i64 %idxprom657
  %800 = load ptr, ptr %ldb.addr, align 8
  %call659 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %793, ptr noundef %794, ptr noundef %k, ptr noundef %795, ptr noundef %796, ptr noundef %i__1, ptr noundef %arrayidx658, ptr noundef %800)
  %r660 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r660, align 8
  %i661 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i661, align 8
  %801 = load ptr, ptr %n.addr, align 8
  %802 = load i32, ptr %801, align 4
  %add662 = add nsw i32 %802, 1
  store i32 %add662, ptr %i__1, align 4
  %803 = load ptr, ptr %m.addr, align 8
  %804 = load ptr, ptr %b.addr, align 8
  %805 = load i32, ptr %k, align 4
  %806 = load i32, ptr %b_dim1, align 4
  %mul663 = mul nsw i32 %805, %806
  %idxprom664 = sext i32 %mul663 to i64
  %arrayidx665 = getelementptr inbounds %struct.doublecomplex, ptr %804, i64 %idxprom664
  %807 = load ptr, ptr %ldb.addr, align 8
  %808 = load ptr, ptr %a.addr, align 8
  %809 = load i32, ptr %k, align 4
  %add666 = add nsw i32 %809, 1
  %idxprom667 = sext i32 %add666 to i64
  %arrayidx668 = getelementptr inbounds %struct.doublecomplex, ptr %808, i64 %idxprom667
  %810 = load ptr, ptr %alpha.addr, align 8
  %811 = load ptr, ptr %b.addr, align 8
  %812 = load ptr, ptr %ldb.addr, align 8
  %call669 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %803, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx665, ptr noundef %807, ptr noundef %arrayidx668, ptr noundef %i__1, ptr noundef %810, ptr noundef %811, ptr noundef %812)
  %813 = load ptr, ptr %n.addr, align 8
  %814 = load i32, ptr %813, align 4
  %add670 = add nsw i32 %814, 1
  store i32 %add670, ptr %i__1, align 4
  %815 = load ptr, ptr %diag.addr, align 8
  %816 = load ptr, ptr %m.addr, align 8
  %817 = load ptr, ptr %a.addr, align 8
  %arrayidx671 = getelementptr inbounds %struct.doublecomplex, ptr %817, i64 1
  %818 = load ptr, ptr %b.addr, align 8
  %819 = load ptr, ptr %ldb.addr, align 8
  %call672 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %815, ptr noundef %816, ptr noundef %k, ptr noundef @c_b1, ptr noundef %arrayidx671, ptr noundef %i__1, ptr noundef %818, ptr noundef %819)
  br label %if.end692

if.else673:                                       ; preds = %if.then652
  %820 = load ptr, ptr %n.addr, align 8
  %821 = load i32, ptr %820, align 4
  %add674 = add nsw i32 %821, 1
  store i32 %add674, ptr %i__1, align 4
  %822 = load ptr, ptr %diag.addr, align 8
  %823 = load ptr, ptr %m.addr, align 8
  %824 = load ptr, ptr %alpha.addr, align 8
  %825 = load ptr, ptr %a.addr, align 8
  %arrayidx675 = getelementptr inbounds %struct.doublecomplex, ptr %825, i64 1
  %826 = load ptr, ptr %b.addr, align 8
  %827 = load ptr, ptr %ldb.addr, align 8
  %call676 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %822, ptr noundef %823, ptr noundef %k, ptr noundef %824, ptr noundef %arrayidx675, ptr noundef %i__1, ptr noundef %826, ptr noundef %827)
  %r677 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r677, align 8
  %i678 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i678, align 8
  %828 = load ptr, ptr %n.addr, align 8
  %829 = load i32, ptr %828, align 4
  %add679 = add nsw i32 %829, 1
  store i32 %add679, ptr %i__1, align 4
  %830 = load ptr, ptr %m.addr, align 8
  %831 = load ptr, ptr %b.addr, align 8
  %832 = load ptr, ptr %ldb.addr, align 8
  %833 = load ptr, ptr %a.addr, align 8
  %834 = load i32, ptr %k, align 4
  %add680 = add nsw i32 %834, 1
  %idxprom681 = sext i32 %add680 to i64
  %arrayidx682 = getelementptr inbounds %struct.doublecomplex, ptr %833, i64 %idxprom681
  %835 = load ptr, ptr %alpha.addr, align 8
  %836 = load ptr, ptr %b.addr, align 8
  %837 = load i32, ptr %k, align 4
  %838 = load i32, ptr %b_dim1, align 4
  %mul683 = mul nsw i32 %837, %838
  %idxprom684 = sext i32 %mul683 to i64
  %arrayidx685 = getelementptr inbounds %struct.doublecomplex, ptr %836, i64 %idxprom684
  %839 = load ptr, ptr %ldb.addr, align 8
  %call686 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %830, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %831, ptr noundef %832, ptr noundef %arrayidx682, ptr noundef %i__1, ptr noundef %835, ptr noundef %arrayidx685, ptr noundef %839)
  %840 = load ptr, ptr %n.addr, align 8
  %841 = load i32, ptr %840, align 4
  %add687 = add nsw i32 %841, 1
  store i32 %add687, ptr %i__1, align 4
  %842 = load ptr, ptr %diag.addr, align 8
  %843 = load ptr, ptr %m.addr, align 8
  %844 = load ptr, ptr %a.addr, align 8
  %845 = load ptr, ptr %b.addr, align 8
  %846 = load i32, ptr %k, align 4
  %847 = load i32, ptr %b_dim1, align 4
  %mul688 = mul nsw i32 %846, %847
  %idxprom689 = sext i32 %mul688 to i64
  %arrayidx690 = getelementptr inbounds %struct.doublecomplex, ptr %845, i64 %idxprom689
  %848 = load ptr, ptr %ldb.addr, align 8
  %call691 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %842, ptr noundef %843, ptr noundef %k, ptr noundef @c_b1, ptr noundef %844, ptr noundef %i__1, ptr noundef %arrayidx690, ptr noundef %848)
  br label %if.end692

if.end692:                                        ; preds = %if.else673, %if.then654
  br label %if.end736

if.else693:                                       ; preds = %if.then650
  %849 = load i32, ptr %notrans, align 4
  %tobool694 = icmp ne i32 %849, 0
  br i1 %tobool694, label %if.then695, label %if.else715

if.then695:                                       ; preds = %if.else693
  %850 = load ptr, ptr %n.addr, align 8
  %851 = load i32, ptr %850, align 4
  %add696 = add nsw i32 %851, 1
  store i32 %add696, ptr %i__1, align 4
  %852 = load ptr, ptr %diag.addr, align 8
  %853 = load ptr, ptr %m.addr, align 8
  %854 = load ptr, ptr %alpha.addr, align 8
  %855 = load ptr, ptr %a.addr, align 8
  %856 = load i32, ptr %k, align 4
  %add697 = add nsw i32 %856, 1
  %idxprom698 = sext i32 %add697 to i64
  %arrayidx699 = getelementptr inbounds %struct.doublecomplex, ptr %855, i64 %idxprom698
  %857 = load ptr, ptr %b.addr, align 8
  %858 = load ptr, ptr %ldb.addr, align 8
  %call700 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %852, ptr noundef %853, ptr noundef %k, ptr noundef %854, ptr noundef %arrayidx699, ptr noundef %i__1, ptr noundef %857, ptr noundef %858)
  %r701 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r701, align 8
  %i702 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i702, align 8
  %859 = load ptr, ptr %n.addr, align 8
  %860 = load i32, ptr %859, align 4
  %add703 = add nsw i32 %860, 1
  store i32 %add703, ptr %i__1, align 4
  %861 = load ptr, ptr %m.addr, align 8
  %862 = load ptr, ptr %b.addr, align 8
  %863 = load ptr, ptr %ldb.addr, align 8
  %864 = load ptr, ptr %a.addr, align 8
  %865 = load ptr, ptr %alpha.addr, align 8
  %866 = load ptr, ptr %b.addr, align 8
  %867 = load i32, ptr %k, align 4
  %868 = load i32, ptr %b_dim1, align 4
  %mul704 = mul nsw i32 %867, %868
  %idxprom705 = sext i32 %mul704 to i64
  %arrayidx706 = getelementptr inbounds %struct.doublecomplex, ptr %866, i64 %idxprom705
  %869 = load ptr, ptr %ldb.addr, align 8
  %call707 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %861, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %862, ptr noundef %863, ptr noundef %864, ptr noundef %i__1, ptr noundef %865, ptr noundef %arrayidx706, ptr noundef %869)
  %870 = load ptr, ptr %n.addr, align 8
  %871 = load i32, ptr %870, align 4
  %add708 = add nsw i32 %871, 1
  store i32 %add708, ptr %i__1, align 4
  %872 = load ptr, ptr %diag.addr, align 8
  %873 = load ptr, ptr %m.addr, align 8
  %874 = load ptr, ptr %a.addr, align 8
  %875 = load i32, ptr %k, align 4
  %idxprom709 = sext i32 %875 to i64
  %arrayidx710 = getelementptr inbounds %struct.doublecomplex, ptr %874, i64 %idxprom709
  %876 = load ptr, ptr %b.addr, align 8
  %877 = load i32, ptr %k, align 4
  %878 = load i32, ptr %b_dim1, align 4
  %mul711 = mul nsw i32 %877, %878
  %idxprom712 = sext i32 %mul711 to i64
  %arrayidx713 = getelementptr inbounds %struct.doublecomplex, ptr %876, i64 %idxprom712
  %879 = load ptr, ptr %ldb.addr, align 8
  %call714 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %872, ptr noundef %873, ptr noundef %k, ptr noundef @c_b1, ptr noundef %arrayidx710, ptr noundef %i__1, ptr noundef %arrayidx713, ptr noundef %879)
  br label %if.end735

if.else715:                                       ; preds = %if.else693
  %880 = load ptr, ptr %n.addr, align 8
  %881 = load i32, ptr %880, align 4
  %add716 = add nsw i32 %881, 1
  store i32 %add716, ptr %i__1, align 4
  %882 = load ptr, ptr %diag.addr, align 8
  %883 = load ptr, ptr %m.addr, align 8
  %884 = load ptr, ptr %alpha.addr, align 8
  %885 = load ptr, ptr %a.addr, align 8
  %886 = load i32, ptr %k, align 4
  %idxprom717 = sext i32 %886 to i64
  %arrayidx718 = getelementptr inbounds %struct.doublecomplex, ptr %885, i64 %idxprom717
  %887 = load ptr, ptr %b.addr, align 8
  %888 = load i32, ptr %k, align 4
  %889 = load i32, ptr %b_dim1, align 4
  %mul719 = mul nsw i32 %888, %889
  %idxprom720 = sext i32 %mul719 to i64
  %arrayidx721 = getelementptr inbounds %struct.doublecomplex, ptr %887, i64 %idxprom720
  %890 = load ptr, ptr %ldb.addr, align 8
  %call722 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %882, ptr noundef %883, ptr noundef %k, ptr noundef %884, ptr noundef %arrayidx718, ptr noundef %i__1, ptr noundef %arrayidx721, ptr noundef %890)
  %r723 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r723, align 8
  %i724 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i724, align 8
  %891 = load ptr, ptr %n.addr, align 8
  %892 = load i32, ptr %891, align 4
  %add725 = add nsw i32 %892, 1
  store i32 %add725, ptr %i__1, align 4
  %893 = load ptr, ptr %m.addr, align 8
  %894 = load ptr, ptr %b.addr, align 8
  %895 = load i32, ptr %k, align 4
  %896 = load i32, ptr %b_dim1, align 4
  %mul726 = mul nsw i32 %895, %896
  %idxprom727 = sext i32 %mul726 to i64
  %arrayidx728 = getelementptr inbounds %struct.doublecomplex, ptr %894, i64 %idxprom727
  %897 = load ptr, ptr %ldb.addr, align 8
  %898 = load ptr, ptr %a.addr, align 8
  %899 = load ptr, ptr %alpha.addr, align 8
  %900 = load ptr, ptr %b.addr, align 8
  %901 = load ptr, ptr %ldb.addr, align 8
  %call729 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %893, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx728, ptr noundef %897, ptr noundef %898, ptr noundef %i__1, ptr noundef %899, ptr noundef %900, ptr noundef %901)
  %902 = load ptr, ptr %n.addr, align 8
  %903 = load i32, ptr %902, align 4
  %add730 = add nsw i32 %903, 1
  store i32 %add730, ptr %i__1, align 4
  %904 = load ptr, ptr %diag.addr, align 8
  %905 = load ptr, ptr %m.addr, align 8
  %906 = load ptr, ptr %a.addr, align 8
  %907 = load i32, ptr %k, align 4
  %add731 = add nsw i32 %907, 1
  %idxprom732 = sext i32 %add731 to i64
  %arrayidx733 = getelementptr inbounds %struct.doublecomplex, ptr %906, i64 %idxprom732
  %908 = load ptr, ptr %b.addr, align 8
  %909 = load ptr, ptr %ldb.addr, align 8
  %call734 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %904, ptr noundef %905, ptr noundef %k, ptr noundef @c_b1, ptr noundef %arrayidx733, ptr noundef %i__1, ptr noundef %908, ptr noundef %909)
  br label %if.end735

if.end735:                                        ; preds = %if.else715, %if.then695
  br label %if.end736

if.end736:                                        ; preds = %if.end735, %if.end692
  br label %if.end820

if.else737:                                       ; preds = %if.else648
  %910 = load i32, ptr %lower, align 4
  %tobool738 = icmp ne i32 %910, 0
  br i1 %tobool738, label %if.then739, label %if.else778

if.then739:                                       ; preds = %if.else737
  %911 = load i32, ptr %notrans, align 4
  %tobool740 = icmp ne i32 %911, 0
  br i1 %tobool740, label %if.then741, label %if.else759

if.then741:                                       ; preds = %if.then739
  %912 = load ptr, ptr %diag.addr, align 8
  %913 = load ptr, ptr %m.addr, align 8
  %914 = load ptr, ptr %alpha.addr, align 8
  %915 = load ptr, ptr %a.addr, align 8
  %916 = load ptr, ptr %b.addr, align 8
  %917 = load i32, ptr %k, align 4
  %918 = load i32, ptr %b_dim1, align 4
  %mul742 = mul nsw i32 %917, %918
  %idxprom743 = sext i32 %mul742 to i64
  %arrayidx744 = getelementptr inbounds %struct.doublecomplex, ptr %916, i64 %idxprom743
  %919 = load ptr, ptr %ldb.addr, align 8
  %call745 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %912, ptr noundef %913, ptr noundef %k, ptr noundef %914, ptr noundef %915, ptr noundef %k, ptr noundef %arrayidx744, ptr noundef %919)
  %r746 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r746, align 8
  %i747 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i747, align 8
  %920 = load ptr, ptr %m.addr, align 8
  %921 = load ptr, ptr %b.addr, align 8
  %922 = load i32, ptr %k, align 4
  %923 = load i32, ptr %b_dim1, align 4
  %mul748 = mul nsw i32 %922, %923
  %idxprom749 = sext i32 %mul748 to i64
  %arrayidx750 = getelementptr inbounds %struct.doublecomplex, ptr %921, i64 %idxprom749
  %924 = load ptr, ptr %ldb.addr, align 8
  %925 = load ptr, ptr %a.addr, align 8
  %926 = load i32, ptr %k, align 4
  %add751 = add nsw i32 %926, 1
  %927 = load i32, ptr %k, align 4
  %mul752 = mul nsw i32 %add751, %927
  %idxprom753 = sext i32 %mul752 to i64
  %arrayidx754 = getelementptr inbounds %struct.doublecomplex, ptr %925, i64 %idxprom753
  %928 = load ptr, ptr %alpha.addr, align 8
  %929 = load ptr, ptr %b.addr, align 8
  %930 = load ptr, ptr %ldb.addr, align 8
  %call755 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %920, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx750, ptr noundef %924, ptr noundef %arrayidx754, ptr noundef %k, ptr noundef %928, ptr noundef %929, ptr noundef %930)
  %931 = load ptr, ptr %diag.addr, align 8
  %932 = load ptr, ptr %m.addr, align 8
  %933 = load ptr, ptr %a.addr, align 8
  %934 = load i32, ptr %k, align 4
  %idxprom756 = sext i32 %934 to i64
  %arrayidx757 = getelementptr inbounds %struct.doublecomplex, ptr %933, i64 %idxprom756
  %935 = load ptr, ptr %b.addr, align 8
  %936 = load ptr, ptr %ldb.addr, align 8
  %call758 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %931, ptr noundef %932, ptr noundef %k, ptr noundef @c_b1, ptr noundef %arrayidx757, ptr noundef %k, ptr noundef %935, ptr noundef %936)
  br label %if.end777

if.else759:                                       ; preds = %if.then739
  %937 = load ptr, ptr %diag.addr, align 8
  %938 = load ptr, ptr %m.addr, align 8
  %939 = load ptr, ptr %alpha.addr, align 8
  %940 = load ptr, ptr %a.addr, align 8
  %941 = load i32, ptr %k, align 4
  %idxprom760 = sext i32 %941 to i64
  %arrayidx761 = getelementptr inbounds %struct.doublecomplex, ptr %940, i64 %idxprom760
  %942 = load ptr, ptr %b.addr, align 8
  %943 = load ptr, ptr %ldb.addr, align 8
  %call762 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %937, ptr noundef %938, ptr noundef %k, ptr noundef %939, ptr noundef %arrayidx761, ptr noundef %k, ptr noundef %942, ptr noundef %943)
  %r763 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r763, align 8
  %i764 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i764, align 8
  %944 = load ptr, ptr %m.addr, align 8
  %945 = load ptr, ptr %b.addr, align 8
  %946 = load ptr, ptr %ldb.addr, align 8
  %947 = load ptr, ptr %a.addr, align 8
  %948 = load i32, ptr %k, align 4
  %add765 = add nsw i32 %948, 1
  %949 = load i32, ptr %k, align 4
  %mul766 = mul nsw i32 %add765, %949
  %idxprom767 = sext i32 %mul766 to i64
  %arrayidx768 = getelementptr inbounds %struct.doublecomplex, ptr %947, i64 %idxprom767
  %950 = load ptr, ptr %alpha.addr, align 8
  %951 = load ptr, ptr %b.addr, align 8
  %952 = load i32, ptr %k, align 4
  %953 = load i32, ptr %b_dim1, align 4
  %mul769 = mul nsw i32 %952, %953
  %idxprom770 = sext i32 %mul769 to i64
  %arrayidx771 = getelementptr inbounds %struct.doublecomplex, ptr %951, i64 %idxprom770
  %954 = load ptr, ptr %ldb.addr, align 8
  %call772 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %944, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %945, ptr noundef %946, ptr noundef %arrayidx768, ptr noundef %k, ptr noundef %950, ptr noundef %arrayidx771, ptr noundef %954)
  %955 = load ptr, ptr %diag.addr, align 8
  %956 = load ptr, ptr %m.addr, align 8
  %957 = load ptr, ptr %a.addr, align 8
  %958 = load ptr, ptr %b.addr, align 8
  %959 = load i32, ptr %k, align 4
  %960 = load i32, ptr %b_dim1, align 4
  %mul773 = mul nsw i32 %959, %960
  %idxprom774 = sext i32 %mul773 to i64
  %arrayidx775 = getelementptr inbounds %struct.doublecomplex, ptr %958, i64 %idxprom774
  %961 = load ptr, ptr %ldb.addr, align 8
  %call776 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %955, ptr noundef %956, ptr noundef %k, ptr noundef @c_b1, ptr noundef %957, ptr noundef %k, ptr noundef %arrayidx775, ptr noundef %961)
  br label %if.end777

if.end777:                                        ; preds = %if.else759, %if.then741
  br label %if.end819

if.else778:                                       ; preds = %if.else737
  %962 = load i32, ptr %notrans, align 4
  %tobool779 = icmp ne i32 %962, 0
  br i1 %tobool779, label %if.then780, label %if.else799

if.then780:                                       ; preds = %if.else778
  %963 = load ptr, ptr %diag.addr, align 8
  %964 = load ptr, ptr %m.addr, align 8
  %965 = load ptr, ptr %alpha.addr, align 8
  %966 = load ptr, ptr %a.addr, align 8
  %967 = load i32, ptr %k, align 4
  %add781 = add nsw i32 %967, 1
  %968 = load i32, ptr %k, align 4
  %mul782 = mul nsw i32 %add781, %968
  %idxprom783 = sext i32 %mul782 to i64
  %arrayidx784 = getelementptr inbounds %struct.doublecomplex, ptr %966, i64 %idxprom783
  %969 = load ptr, ptr %b.addr, align 8
  %970 = load ptr, ptr %ldb.addr, align 8
  %call785 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %963, ptr noundef %964, ptr noundef %k, ptr noundef %965, ptr noundef %arrayidx784, ptr noundef %k, ptr noundef %969, ptr noundef %970)
  %r786 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r786, align 8
  %i787 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i787, align 8
  %971 = load ptr, ptr %m.addr, align 8
  %972 = load ptr, ptr %b.addr, align 8
  %973 = load ptr, ptr %ldb.addr, align 8
  %974 = load ptr, ptr %a.addr, align 8
  %975 = load ptr, ptr %alpha.addr, align 8
  %976 = load ptr, ptr %b.addr, align 8
  %977 = load i32, ptr %k, align 4
  %978 = load i32, ptr %b_dim1, align 4
  %mul788 = mul nsw i32 %977, %978
  %idxprom789 = sext i32 %mul788 to i64
  %arrayidx790 = getelementptr inbounds %struct.doublecomplex, ptr %976, i64 %idxprom789
  %979 = load ptr, ptr %ldb.addr, align 8
  %call791 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %971, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %972, ptr noundef %973, ptr noundef %974, ptr noundef %k, ptr noundef %975, ptr noundef %arrayidx790, ptr noundef %979)
  %980 = load ptr, ptr %diag.addr, align 8
  %981 = load ptr, ptr %m.addr, align 8
  %982 = load ptr, ptr %a.addr, align 8
  %983 = load i32, ptr %k, align 4
  %984 = load i32, ptr %k, align 4
  %mul792 = mul nsw i32 %983, %984
  %idxprom793 = sext i32 %mul792 to i64
  %arrayidx794 = getelementptr inbounds %struct.doublecomplex, ptr %982, i64 %idxprom793
  %985 = load ptr, ptr %b.addr, align 8
  %986 = load i32, ptr %k, align 4
  %987 = load i32, ptr %b_dim1, align 4
  %mul795 = mul nsw i32 %986, %987
  %idxprom796 = sext i32 %mul795 to i64
  %arrayidx797 = getelementptr inbounds %struct.doublecomplex, ptr %985, i64 %idxprom796
  %988 = load ptr, ptr %ldb.addr, align 8
  %call798 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %980, ptr noundef %981, ptr noundef %k, ptr noundef @c_b1, ptr noundef %arrayidx794, ptr noundef %k, ptr noundef %arrayidx797, ptr noundef %988)
  br label %if.end818

if.else799:                                       ; preds = %if.else778
  %989 = load ptr, ptr %diag.addr, align 8
  %990 = load ptr, ptr %m.addr, align 8
  %991 = load ptr, ptr %alpha.addr, align 8
  %992 = load ptr, ptr %a.addr, align 8
  %993 = load i32, ptr %k, align 4
  %994 = load i32, ptr %k, align 4
  %mul800 = mul nsw i32 %993, %994
  %idxprom801 = sext i32 %mul800 to i64
  %arrayidx802 = getelementptr inbounds %struct.doublecomplex, ptr %992, i64 %idxprom801
  %995 = load ptr, ptr %b.addr, align 8
  %996 = load i32, ptr %k, align 4
  %997 = load i32, ptr %b_dim1, align 4
  %mul803 = mul nsw i32 %996, %997
  %idxprom804 = sext i32 %mul803 to i64
  %arrayidx805 = getelementptr inbounds %struct.doublecomplex, ptr %995, i64 %idxprom804
  %998 = load ptr, ptr %ldb.addr, align 8
  %call806 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %989, ptr noundef %990, ptr noundef %k, ptr noundef %991, ptr noundef %arrayidx802, ptr noundef %k, ptr noundef %arrayidx805, ptr noundef %998)
  %r807 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r807, align 8
  %i808 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i808, align 8
  %999 = load ptr, ptr %m.addr, align 8
  %1000 = load ptr, ptr %b.addr, align 8
  %1001 = load i32, ptr %k, align 4
  %1002 = load i32, ptr %b_dim1, align 4
  %mul809 = mul nsw i32 %1001, %1002
  %idxprom810 = sext i32 %mul809 to i64
  %arrayidx811 = getelementptr inbounds %struct.doublecomplex, ptr %1000, i64 %idxprom810
  %1003 = load ptr, ptr %ldb.addr, align 8
  %1004 = load ptr, ptr %a.addr, align 8
  %1005 = load ptr, ptr %alpha.addr, align 8
  %1006 = load ptr, ptr %b.addr, align 8
  %1007 = load ptr, ptr %ldb.addr, align 8
  %call812 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %999, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx811, ptr noundef %1003, ptr noundef %1004, ptr noundef %k, ptr noundef %1005, ptr noundef %1006, ptr noundef %1007)
  %1008 = load ptr, ptr %diag.addr, align 8
  %1009 = load ptr, ptr %m.addr, align 8
  %1010 = load ptr, ptr %a.addr, align 8
  %1011 = load i32, ptr %k, align 4
  %add813 = add nsw i32 %1011, 1
  %1012 = load i32, ptr %k, align 4
  %mul814 = mul nsw i32 %add813, %1012
  %idxprom815 = sext i32 %mul814 to i64
  %arrayidx816 = getelementptr inbounds %struct.doublecomplex, ptr %1010, i64 %idxprom815
  %1013 = load ptr, ptr %b.addr, align 8
  %1014 = load ptr, ptr %ldb.addr, align 8
  %call817 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %1008, ptr noundef %1009, ptr noundef %k, ptr noundef @c_b1, ptr noundef %arrayidx816, ptr noundef %k, ptr noundef %1013, ptr noundef %1014)
  br label %if.end818

if.end818:                                        ; preds = %if.else799, %if.then780
  br label %if.end819

if.end819:                                        ; preds = %if.end818, %if.end777
  br label %if.end820

if.end820:                                        ; preds = %if.end819, %if.end736
  br label %if.end821

if.end821:                                        ; preds = %if.end820, %if.end647
  br label %if.end822

if.end822:                                        ; preds = %if.end821, %if.end478
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end822, %for.end75, %if.then55, %if.then49
  %1015 = load i32, ptr %retval, align 4
  ret i32 %1015
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @ztrsm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @zgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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

; ModuleID = 'samples/346.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/ztfsm.c"
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

; Function Attrs: nounwind uwtable
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
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %transr, ptr %transr.addr, align 8, !tbaa !4
  store ptr %side, ptr %side.addr, align 8, !tbaa !4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !4
  store ptr %diag, ptr %diag.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %normaltransr) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lside) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lower) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %misodd) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nisodd) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %notrans) #3
  %0 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  %sub = sub nsw i32 %1, 1
  %sub1 = sub nsw i32 %sub, 0
  %add = add nsw i32 %sub1, 1
  store i32 %add, ptr %b_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %2, 0
  %add2 = add nsw i32 0, %mul
  store i32 %add2, ptr %b_offset, align 4, !tbaa !8
  %3 = load i32, ptr %b_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %b.addr, align 8, !tbaa !4
  store i32 0, ptr %info, align 4, !tbaa !8
  %5 = load ptr, ptr %transr.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %5, ptr noundef @.str)
  store i32 %call, ptr %normaltransr, align 4, !tbaa !8
  %6 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call3 = call i32 @lsame_(ptr noundef %6, ptr noundef @.str.1)
  store i32 %call3, ptr %lside, align 4, !tbaa !8
  %7 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call4 = call i32 @lsame_(ptr noundef %7, ptr noundef @.str.1)
  store i32 %call4, ptr %lower, align 4, !tbaa !8
  %8 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call5 = call i32 @lsame_(ptr noundef %8, ptr noundef @.str)
  store i32 %call5, ptr %notrans, align 4, !tbaa !8
  %9 = load i32, ptr %normaltransr, align 4, !tbaa !8
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %transr.addr, align 8, !tbaa !4
  %call6 = call i32 @lsame_(ptr noundef %10, ptr noundef @.str.2)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %info, align 4, !tbaa !8
  br label %if.end47

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load i32, ptr %lside, align 4, !tbaa !8
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.else13, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.else
  %12 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call10 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.3)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else13, label %if.then12

if.then12:                                        ; preds = %land.lhs.true9
  store i32 -2, ptr %info, align 4, !tbaa !8
  br label %if.end46

if.else13:                                        ; preds = %land.lhs.true9, %if.else
  %13 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool14 = icmp ne i32 %13, 0
  br i1 %tobool14, label %if.else19, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %if.else13
  %14 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call16 = call i32 @lsame_(ptr noundef %14, ptr noundef @.str.4)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  store i32 -3, ptr %info, align 4, !tbaa !8
  br label %if.end45

if.else19:                                        ; preds = %land.lhs.true15, %if.else13
  %15 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool20 = icmp ne i32 %15, 0
  br i1 %tobool20, label %if.else25, label %land.lhs.true21

land.lhs.true21:                                  ; preds = %if.else19
  %16 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call22 = call i32 @lsame_(ptr noundef %16, ptr noundef @.str.2)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else25, label %if.then24

if.then24:                                        ; preds = %land.lhs.true21
  store i32 -4, ptr %info, align 4, !tbaa !8
  br label %if.end44

if.else25:                                        ; preds = %land.lhs.true21, %if.else19
  %17 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call26 = call i32 @lsame_(ptr noundef %17, ptr noundef @.str)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else32, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.else25
  %18 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call29 = call i32 @lsame_(ptr noundef %18, ptr noundef @.str.4)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.else32, label %if.then31

if.then31:                                        ; preds = %land.lhs.true28
  store i32 -5, ptr %info, align 4, !tbaa !8
  br label %if.end43

if.else32:                                        ; preds = %land.lhs.true28, %if.else25
  %19 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else32
  store i32 -6, ptr %info, align 4, !tbaa !8
  br label %if.end42

if.else34:                                        ; preds = %if.else32
  %21 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %cmp35 = icmp slt i32 %22, 0
  br i1 %cmp35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else34
  store i32 -7, ptr %info, align 4, !tbaa !8
  br label %if.end41

if.else37:                                        ; preds = %if.else34
  %23 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %25 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  store i32 %26, ptr %_y, align 4, !tbaa !8
  %27 = load i32, ptr %_x, align 4, !tbaa !8
  %28 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp38 = icmp sgt i32 %27, %28
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else37
  %29 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else37
  %30 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %30, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %31 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp39 = icmp slt i32 %24, %31
  br i1 %cmp39, label %if.then40, label %if.end

if.then40:                                        ; preds = %cond.end
  store i32 -11, ptr %info, align 4, !tbaa !8
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
  %32 = load i32, ptr %info, align 4, !tbaa !8
  %cmp48 = icmp ne i32 %32, 0
  br i1 %cmp48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end47
  %33 = load i32, ptr %info, align 4, !tbaa !8
  %sub50 = sub nsw i32 0, %33
  store i32 %sub50, ptr %i__1, align 4, !tbaa !8
  %call51 = call i32 @xerbla_(ptr noundef @.str.5, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %34 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %35 = load i32, ptr %34, align 4, !tbaa !8
  %cmp53 = icmp eq i32 %35, 0
  br i1 %cmp53, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end52
  %36 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %37 = load i32, ptr %36, align 4, !tbaa !8
  %cmp54 = icmp eq i32 %37, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %lor.lhs.false, %if.end52
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false
  %38 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r = getelementptr inbounds %struct.doublecomplex, ptr %38, i32 0, i32 0
  %39 = load double, ptr %r, align 8, !tbaa !10
  %cmp57 = fcmp oeq double %39, 0.000000e+00
  br i1 %cmp57, label %land.lhs.true58, label %if.end76

land.lhs.true58:                                  ; preds = %if.end56
  %40 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i = getelementptr inbounds %struct.doublecomplex, ptr %40, i32 0, i32 1
  %41 = load double, ptr %i, align 8, !tbaa !13
  %cmp59 = fcmp oeq double %41, 0.000000e+00
  br i1 %cmp59, label %if.then60, label %if.end76

if.then60:                                        ; preds = %land.lhs.true58
  %42 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %43 = load i32, ptr %42, align 4, !tbaa !8
  %sub61 = sub nsw i32 %43, 1
  store i32 %sub61, ptr %i__1, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc73, %if.then60
  %44 = load i32, ptr %j, align 4, !tbaa !8
  %45 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp62 = icmp sle i32 %44, %45
  br i1 %cmp62, label %for.body, label %for.end75

for.body:                                         ; preds = %for.cond
  %46 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %47 = load i32, ptr %46, align 4, !tbaa !8
  %sub63 = sub nsw i32 %47, 1
  store i32 %sub63, ptr %i__2, align 4, !tbaa !8
  store i32 0, ptr %i__, align 4, !tbaa !8
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc, %for.body
  %48 = load i32, ptr %i__, align 4, !tbaa !8
  %49 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp65 = icmp sle i32 %48, %49
  br i1 %cmp65, label %for.body66, label %for.end

for.body66:                                       ; preds = %for.cond64
  %50 = load i32, ptr %i__, align 4, !tbaa !8
  %51 = load i32, ptr %j, align 4, !tbaa !8
  %52 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul67 = mul nsw i32 %51, %52
  %add68 = add nsw i32 %50, %mul67
  store i32 %add68, ptr %i__3, align 4, !tbaa !8
  %53 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %54 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom = sext i32 %54 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %53, i64 %idxprom
  %r69 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  store double 0.000000e+00, ptr %r69, align 8, !tbaa !10
  %55 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %56 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom70 = sext i32 %56 to i64
  %arrayidx71 = getelementptr inbounds %struct.doublecomplex, ptr %55, i64 %idxprom70
  %i72 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx71, i32 0, i32 1
  store double 0.000000e+00, ptr %i72, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body66
  %57 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond64, !llvm.loop !14

for.end:                                          ; preds = %for.cond64
  br label %for.inc73

for.inc73:                                        ; preds = %for.end
  %58 = load i32, ptr %j, align 4, !tbaa !8
  %inc74 = add nsw i32 %58, 1
  store i32 %inc74, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !16

for.end75:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end76:                                         ; preds = %land.lhs.true58, %if.end56
  %59 = load i32, ptr %lside, align 4, !tbaa !8
  %tobool77 = icmp ne i32 %59, 0
  br i1 %tobool77, label %if.then78, label %if.else479

if.then78:                                        ; preds = %if.end76
  %60 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %61 = load i32, ptr %60, align 4, !tbaa !8
  %rem = srem i32 %61, 2
  %cmp79 = icmp eq i32 %rem, 0
  br i1 %cmp79, label %if.then80, label %if.else81

if.then80:                                        ; preds = %if.then78
  store i32 0, ptr %misodd, align 4, !tbaa !8
  %62 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %63 = load i32, ptr %62, align 4, !tbaa !8
  %div = sdiv i32 %63, 2
  store i32 %div, ptr %k, align 4, !tbaa !8
  br label %if.end90

if.else81:                                        ; preds = %if.then78
  store i32 1, ptr %misodd, align 4, !tbaa !8
  %64 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool82 = icmp ne i32 %64, 0
  br i1 %tobool82, label %if.then83, label %if.else86

if.then83:                                        ; preds = %if.else81
  %65 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %66 = load i32, ptr %65, align 4, !tbaa !8
  %div84 = sdiv i32 %66, 2
  store i32 %div84, ptr %m2, align 4, !tbaa !8
  %67 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %69 = load i32, ptr %m2, align 4, !tbaa !8
  %sub85 = sub nsw i32 %68, %69
  store i32 %sub85, ptr %m1, align 4, !tbaa !8
  br label %if.end89

if.else86:                                        ; preds = %if.else81
  %70 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %71 = load i32, ptr %70, align 4, !tbaa !8
  %div87 = sdiv i32 %71, 2
  store i32 %div87, ptr %m1, align 4, !tbaa !8
  %72 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %73 = load i32, ptr %72, align 4, !tbaa !8
  %74 = load i32, ptr %m1, align 4, !tbaa !8
  %sub88 = sub nsw i32 %73, %74
  store i32 %sub88, ptr %m2, align 4, !tbaa !8
  br label %if.end89

if.end89:                                         ; preds = %if.else86, %if.then83
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then80
  %75 = load i32, ptr %misodd, align 4, !tbaa !8
  %tobool91 = icmp ne i32 %75, 0
  br i1 %tobool91, label %if.then92, label %if.else289

if.then92:                                        ; preds = %if.end90
  %76 = load i32, ptr %normaltransr, align 4, !tbaa !8
  %tobool93 = icmp ne i32 %76, 0
  br i1 %tobool93, label %if.then94, label %if.else189

if.then94:                                        ; preds = %if.then92
  %77 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool95 = icmp ne i32 %77, 0
  br i1 %tobool95, label %if.then96, label %if.else149

if.then96:                                        ; preds = %if.then94
  %78 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool97 = icmp ne i32 %78, 0
  br i1 %tobool97, label %if.then98, label %if.else123

if.then98:                                        ; preds = %if.then96
  %79 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %80 = load i32, ptr %79, align 4, !tbaa !8
  %cmp99 = icmp eq i32 %80, 1
  br i1 %cmp99, label %if.then100, label %if.else104

if.then100:                                       ; preds = %if.then98
  %81 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %82 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %83 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %84 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %85 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %86 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %87 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom101 = sext i32 %87 to i64
  %arrayidx102 = getelementptr inbounds %struct.doublecomplex, ptr %86, i64 %idxprom101
  %88 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call103 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %81, ptr noundef %m1, ptr noundef %82, ptr noundef %83, ptr noundef %84, ptr noundef %85, ptr noundef %arrayidx102, ptr noundef %88)
  br label %if.end122

if.else104:                                       ; preds = %if.then98
  %89 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %90 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %91 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %92 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %93 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %94 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %95 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom105 = sext i32 %95 to i64
  %arrayidx106 = getelementptr inbounds %struct.doublecomplex, ptr %94, i64 %idxprom105
  %96 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call107 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %89, ptr noundef %m1, ptr noundef %90, ptr noundef %91, ptr noundef %92, ptr noundef %93, ptr noundef %arrayidx106, ptr noundef %96)
  %r108 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r108, align 8, !tbaa !10
  %i109 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i109, align 8, !tbaa !13
  %97 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %98 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %99 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom110 = sext i32 %99 to i64
  %arrayidx111 = getelementptr inbounds %struct.doublecomplex, ptr %98, i64 %idxprom110
  %100 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %101 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %102 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom112 = sext i32 %102 to i64
  %arrayidx113 = getelementptr inbounds %struct.doublecomplex, ptr %101, i64 %idxprom112
  %103 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %104 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %105 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %106 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom114 = sext i32 %106 to i64
  %arrayidx115 = getelementptr inbounds %struct.doublecomplex, ptr %105, i64 %idxprom114
  %107 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call116 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %m2, ptr noundef %97, ptr noundef %m1, ptr noundef %z__1, ptr noundef %arrayidx111, ptr noundef %100, ptr noundef %arrayidx113, ptr noundef %103, ptr noundef %104, ptr noundef %arrayidx115, ptr noundef %107)
  %108 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %109 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %110 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %111 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %112 = load i32, ptr %111, align 4, !tbaa !8
  %idxprom117 = sext i32 %112 to i64
  %arrayidx118 = getelementptr inbounds %struct.doublecomplex, ptr %110, i64 %idxprom117
  %113 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %114 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %115 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom119 = sext i32 %115 to i64
  %arrayidx120 = getelementptr inbounds %struct.doublecomplex, ptr %114, i64 %idxprom119
  %116 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call121 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %108, ptr noundef %m2, ptr noundef %109, ptr noundef @c_b1, ptr noundef %arrayidx118, ptr noundef %113, ptr noundef %arrayidx120, ptr noundef %116)
  br label %if.end122

if.end122:                                        ; preds = %if.else104, %if.then100
  br label %if.end148

if.else123:                                       ; preds = %if.then96
  %117 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %118 = load i32, ptr %117, align 4, !tbaa !8
  %cmp124 = icmp eq i32 %118, 1
  br i1 %cmp124, label %if.then125, label %if.else129

if.then125:                                       ; preds = %if.else123
  %119 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %120 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %121 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %122 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %123 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %125 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom126 = sext i32 %125 to i64
  %arrayidx127 = getelementptr inbounds %struct.doublecomplex, ptr %124, i64 %idxprom126
  %126 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call128 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %119, ptr noundef %m1, ptr noundef %120, ptr noundef %121, ptr noundef %122, ptr noundef %123, ptr noundef %arrayidx127, ptr noundef %126)
  br label %if.end147

if.else129:                                       ; preds = %if.else123
  %127 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %128 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %129 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %130 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %131 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %132 = load i32, ptr %131, align 4, !tbaa !8
  %idxprom130 = sext i32 %132 to i64
  %arrayidx131 = getelementptr inbounds %struct.doublecomplex, ptr %130, i64 %idxprom130
  %133 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %134 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %135 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom132 = sext i32 %135 to i64
  %arrayidx133 = getelementptr inbounds %struct.doublecomplex, ptr %134, i64 %idxprom132
  %136 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call134 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %127, ptr noundef %m2, ptr noundef %128, ptr noundef %129, ptr noundef %arrayidx131, ptr noundef %133, ptr noundef %arrayidx133, ptr noundef %136)
  %r135 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r135, align 8, !tbaa !10
  %i136 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i136, align 8, !tbaa !13
  %137 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %138 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %139 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom137 = sext i32 %139 to i64
  %arrayidx138 = getelementptr inbounds %struct.doublecomplex, ptr %138, i64 %idxprom137
  %140 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %141 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %142 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom139 = sext i32 %142 to i64
  %arrayidx140 = getelementptr inbounds %struct.doublecomplex, ptr %141, i64 %idxprom139
  %143 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %144 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %145 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %146 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom141 = sext i32 %146 to i64
  %arrayidx142 = getelementptr inbounds %struct.doublecomplex, ptr %145, i64 %idxprom141
  %147 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call143 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %m1, ptr noundef %137, ptr noundef %m2, ptr noundef %z__1, ptr noundef %arrayidx138, ptr noundef %140, ptr noundef %arrayidx140, ptr noundef %143, ptr noundef %144, ptr noundef %arrayidx142, ptr noundef %147)
  %148 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %149 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %150 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %151 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %152 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %153 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom144 = sext i32 %153 to i64
  %arrayidx145 = getelementptr inbounds %struct.doublecomplex, ptr %152, i64 %idxprom144
  %154 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call146 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %148, ptr noundef %m1, ptr noundef %149, ptr noundef @c_b1, ptr noundef %150, ptr noundef %151, ptr noundef %arrayidx145, ptr noundef %154)
  br label %if.end147

if.end147:                                        ; preds = %if.else129, %if.then125
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.end122
  br label %if.end188

if.else149:                                       ; preds = %if.then94
  %155 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool150 = icmp ne i32 %155, 0
  br i1 %tobool150, label %if.else169, label %if.then151

if.then151:                                       ; preds = %if.else149
  %156 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %157 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %158 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %159 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %160 = load i32, ptr %m2, align 4, !tbaa !8
  %idxprom152 = sext i32 %160 to i64
  %arrayidx153 = getelementptr inbounds %struct.doublecomplex, ptr %159, i64 %idxprom152
  %161 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %162 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %163 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom154 = sext i32 %163 to i64
  %arrayidx155 = getelementptr inbounds %struct.doublecomplex, ptr %162, i64 %idxprom154
  %164 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call156 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %156, ptr noundef %m1, ptr noundef %157, ptr noundef %158, ptr noundef %arrayidx153, ptr noundef %161, ptr noundef %arrayidx155, ptr noundef %164)
  %r157 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r157, align 8, !tbaa !10
  %i158 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i158, align 8, !tbaa !13
  %165 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %166 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %167 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %168 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %169 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom159 = sext i32 %169 to i64
  %arrayidx160 = getelementptr inbounds %struct.doublecomplex, ptr %168, i64 %idxprom159
  %170 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %171 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %172 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %173 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom161 = sext i32 %173 to i64
  %arrayidx162 = getelementptr inbounds %struct.doublecomplex, ptr %172, i64 %idxprom161
  %174 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call163 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %m2, ptr noundef %165, ptr noundef %m1, ptr noundef %z__1, ptr noundef %166, ptr noundef %167, ptr noundef %arrayidx160, ptr noundef %170, ptr noundef %171, ptr noundef %arrayidx162, ptr noundef %174)
  %175 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %176 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %177 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %178 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom164 = sext i32 %178 to i64
  %arrayidx165 = getelementptr inbounds %struct.doublecomplex, ptr %177, i64 %idxprom164
  %179 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %180 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %181 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom166 = sext i32 %181 to i64
  %arrayidx167 = getelementptr inbounds %struct.doublecomplex, ptr %180, i64 %idxprom166
  %182 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call168 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %175, ptr noundef %m2, ptr noundef %176, ptr noundef @c_b1, ptr noundef %arrayidx165, ptr noundef %179, ptr noundef %arrayidx167, ptr noundef %182)
  br label %if.end187

if.else169:                                       ; preds = %if.else149
  %183 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %184 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %185 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %186 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %187 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom170 = sext i32 %187 to i64
  %arrayidx171 = getelementptr inbounds %struct.doublecomplex, ptr %186, i64 %idxprom170
  %188 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %189 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %190 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom172 = sext i32 %190 to i64
  %arrayidx173 = getelementptr inbounds %struct.doublecomplex, ptr %189, i64 %idxprom172
  %191 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call174 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %183, ptr noundef %m2, ptr noundef %184, ptr noundef %185, ptr noundef %arrayidx171, ptr noundef %188, ptr noundef %arrayidx173, ptr noundef %191)
  %r175 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r175, align 8, !tbaa !10
  %i176 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i176, align 8, !tbaa !13
  %192 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %193 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %194 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %195 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %196 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom177 = sext i32 %196 to i64
  %arrayidx178 = getelementptr inbounds %struct.doublecomplex, ptr %195, i64 %idxprom177
  %197 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %198 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %199 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %200 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom179 = sext i32 %200 to i64
  %arrayidx180 = getelementptr inbounds %struct.doublecomplex, ptr %199, i64 %idxprom179
  %201 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call181 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %m1, ptr noundef %192, ptr noundef %m2, ptr noundef %z__1, ptr noundef %193, ptr noundef %194, ptr noundef %arrayidx178, ptr noundef %197, ptr noundef %198, ptr noundef %arrayidx180, ptr noundef %201)
  %202 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %203 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %204 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %205 = load i32, ptr %m2, align 4, !tbaa !8
  %idxprom182 = sext i32 %205 to i64
  %arrayidx183 = getelementptr inbounds %struct.doublecomplex, ptr %204, i64 %idxprom182
  %206 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %207 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %208 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom184 = sext i32 %208 to i64
  %arrayidx185 = getelementptr inbounds %struct.doublecomplex, ptr %207, i64 %idxprom184
  %209 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call186 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %202, ptr noundef %m1, ptr noundef %203, ptr noundef @c_b1, ptr noundef %arrayidx183, ptr noundef %206, ptr noundef %arrayidx185, ptr noundef %209)
  br label %if.end187

if.end187:                                        ; preds = %if.else169, %if.then151
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %if.end148
  br label %if.end288

if.else189:                                       ; preds = %if.then92
  %210 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool190 = icmp ne i32 %210, 0
  br i1 %tobool190, label %if.then191, label %if.else244

if.then191:                                       ; preds = %if.else189
  %211 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool192 = icmp ne i32 %211, 0
  br i1 %tobool192, label %if.then193, label %if.else218

if.then193:                                       ; preds = %if.then191
  %212 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %213 = load i32, ptr %212, align 4, !tbaa !8
  %cmp194 = icmp eq i32 %213, 1
  br i1 %cmp194, label %if.then195, label %if.else199

if.then195:                                       ; preds = %if.then193
  %214 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %215 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %216 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %217 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %218 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %219 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom196 = sext i32 %219 to i64
  %arrayidx197 = getelementptr inbounds %struct.doublecomplex, ptr %218, i64 %idxprom196
  %220 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call198 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %214, ptr noundef %m1, ptr noundef %215, ptr noundef %216, ptr noundef %217, ptr noundef %m1, ptr noundef %arrayidx197, ptr noundef %220)
  br label %if.end217

if.else199:                                       ; preds = %if.then193
  %221 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %222 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %223 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %224 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %225 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %226 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom200 = sext i32 %226 to i64
  %arrayidx201 = getelementptr inbounds %struct.doublecomplex, ptr %225, i64 %idxprom200
  %227 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call202 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %221, ptr noundef %m1, ptr noundef %222, ptr noundef %223, ptr noundef %224, ptr noundef %m1, ptr noundef %arrayidx201, ptr noundef %227)
  %r203 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r203, align 8, !tbaa !10
  %i204 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i204, align 8, !tbaa !13
  %228 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %229 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %230 = load i32, ptr %m1, align 4, !tbaa !8
  %231 = load i32, ptr %m1, align 4, !tbaa !8
  %mul205 = mul nsw i32 %230, %231
  %idxprom206 = sext i32 %mul205 to i64
  %arrayidx207 = getelementptr inbounds %struct.doublecomplex, ptr %229, i64 %idxprom206
  %232 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %233 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom208 = sext i32 %233 to i64
  %arrayidx209 = getelementptr inbounds %struct.doublecomplex, ptr %232, i64 %idxprom208
  %234 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %235 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %236 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %237 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom210 = sext i32 %237 to i64
  %arrayidx211 = getelementptr inbounds %struct.doublecomplex, ptr %236, i64 %idxprom210
  %238 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call212 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %m2, ptr noundef %228, ptr noundef %m1, ptr noundef %z__1, ptr noundef %arrayidx207, ptr noundef %m1, ptr noundef %arrayidx209, ptr noundef %234, ptr noundef %235, ptr noundef %arrayidx211, ptr noundef %238)
  %239 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %240 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %241 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx213 = getelementptr inbounds %struct.doublecomplex, ptr %241, i64 1
  %242 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %243 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom214 = sext i32 %243 to i64
  %arrayidx215 = getelementptr inbounds %struct.doublecomplex, ptr %242, i64 %idxprom214
  %244 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call216 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %239, ptr noundef %m2, ptr noundef %240, ptr noundef @c_b1, ptr noundef %arrayidx213, ptr noundef %m1, ptr noundef %arrayidx215, ptr noundef %244)
  br label %if.end217

if.end217:                                        ; preds = %if.else199, %if.then195
  br label %if.end243

if.else218:                                       ; preds = %if.then191
  %245 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %246 = load i32, ptr %245, align 4, !tbaa !8
  %cmp219 = icmp eq i32 %246, 1
  br i1 %cmp219, label %if.then220, label %if.else224

if.then220:                                       ; preds = %if.else218
  %247 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %248 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %249 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %250 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %251 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %252 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom221 = sext i32 %252 to i64
  %arrayidx222 = getelementptr inbounds %struct.doublecomplex, ptr %251, i64 %idxprom221
  %253 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call223 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %247, ptr noundef %m1, ptr noundef %248, ptr noundef %249, ptr noundef %250, ptr noundef %m1, ptr noundef %arrayidx222, ptr noundef %253)
  br label %if.end242

if.else224:                                       ; preds = %if.else218
  %254 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %255 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %256 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %257 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx225 = getelementptr inbounds %struct.doublecomplex, ptr %257, i64 1
  %258 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %259 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom226 = sext i32 %259 to i64
  %arrayidx227 = getelementptr inbounds %struct.doublecomplex, ptr %258, i64 %idxprom226
  %260 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call228 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %254, ptr noundef %m2, ptr noundef %255, ptr noundef %256, ptr noundef %arrayidx225, ptr noundef %m1, ptr noundef %arrayidx227, ptr noundef %260)
  %r229 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r229, align 8, !tbaa !10
  %i230 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i230, align 8, !tbaa !13
  %261 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %262 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %263 = load i32, ptr %m1, align 4, !tbaa !8
  %264 = load i32, ptr %m1, align 4, !tbaa !8
  %mul231 = mul nsw i32 %263, %264
  %idxprom232 = sext i32 %mul231 to i64
  %arrayidx233 = getelementptr inbounds %struct.doublecomplex, ptr %262, i64 %idxprom232
  %265 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %266 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom234 = sext i32 %266 to i64
  %arrayidx235 = getelementptr inbounds %struct.doublecomplex, ptr %265, i64 %idxprom234
  %267 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %268 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %269 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %270 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom236 = sext i32 %270 to i64
  %arrayidx237 = getelementptr inbounds %struct.doublecomplex, ptr %269, i64 %idxprom236
  %271 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call238 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %m1, ptr noundef %261, ptr noundef %m2, ptr noundef %z__1, ptr noundef %arrayidx233, ptr noundef %m1, ptr noundef %arrayidx235, ptr noundef %267, ptr noundef %268, ptr noundef %arrayidx237, ptr noundef %271)
  %272 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %273 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %274 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %275 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %276 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom239 = sext i32 %276 to i64
  %arrayidx240 = getelementptr inbounds %struct.doublecomplex, ptr %275, i64 %idxprom239
  %277 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call241 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %272, ptr noundef %m1, ptr noundef %273, ptr noundef @c_b1, ptr noundef %274, ptr noundef %m1, ptr noundef %arrayidx240, ptr noundef %277)
  br label %if.end242

if.end242:                                        ; preds = %if.else224, %if.then220
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.end217
  br label %if.end287

if.else244:                                       ; preds = %if.else189
  %278 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool245 = icmp ne i32 %278, 0
  br i1 %tobool245, label %if.else266, label %if.then246

if.then246:                                       ; preds = %if.else244
  %279 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %280 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %281 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %282 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %283 = load i32, ptr %m2, align 4, !tbaa !8
  %284 = load i32, ptr %m2, align 4, !tbaa !8
  %mul247 = mul nsw i32 %283, %284
  %idxprom248 = sext i32 %mul247 to i64
  %arrayidx249 = getelementptr inbounds %struct.doublecomplex, ptr %282, i64 %idxprom248
  %285 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %286 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom250 = sext i32 %286 to i64
  %arrayidx251 = getelementptr inbounds %struct.doublecomplex, ptr %285, i64 %idxprom250
  %287 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call252 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %279, ptr noundef %m1, ptr noundef %280, ptr noundef %281, ptr noundef %arrayidx249, ptr noundef %m2, ptr noundef %arrayidx251, ptr noundef %287)
  %r253 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r253, align 8, !tbaa !10
  %i254 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i254, align 8, !tbaa !13
  %288 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %289 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %290 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %291 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom255 = sext i32 %291 to i64
  %arrayidx256 = getelementptr inbounds %struct.doublecomplex, ptr %290, i64 %idxprom255
  %292 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %293 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %294 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %295 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom257 = sext i32 %295 to i64
  %arrayidx258 = getelementptr inbounds %struct.doublecomplex, ptr %294, i64 %idxprom257
  %296 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call259 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %m2, ptr noundef %288, ptr noundef %m1, ptr noundef %z__1, ptr noundef %289, ptr noundef %m2, ptr noundef %arrayidx256, ptr noundef %292, ptr noundef %293, ptr noundef %arrayidx258, ptr noundef %296)
  %297 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %298 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %299 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %300 = load i32, ptr %m1, align 4, !tbaa !8
  %301 = load i32, ptr %m2, align 4, !tbaa !8
  %mul260 = mul nsw i32 %300, %301
  %idxprom261 = sext i32 %mul260 to i64
  %arrayidx262 = getelementptr inbounds %struct.doublecomplex, ptr %299, i64 %idxprom261
  %302 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %303 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom263 = sext i32 %303 to i64
  %arrayidx264 = getelementptr inbounds %struct.doublecomplex, ptr %302, i64 %idxprom263
  %304 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call265 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %297, ptr noundef %m2, ptr noundef %298, ptr noundef @c_b1, ptr noundef %arrayidx262, ptr noundef %m2, ptr noundef %arrayidx264, ptr noundef %304)
  br label %if.end286

if.else266:                                       ; preds = %if.else244
  %305 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %306 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %307 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %308 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %309 = load i32, ptr %m1, align 4, !tbaa !8
  %310 = load i32, ptr %m2, align 4, !tbaa !8
  %mul267 = mul nsw i32 %309, %310
  %idxprom268 = sext i32 %mul267 to i64
  %arrayidx269 = getelementptr inbounds %struct.doublecomplex, ptr %308, i64 %idxprom268
  %311 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %312 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom270 = sext i32 %312 to i64
  %arrayidx271 = getelementptr inbounds %struct.doublecomplex, ptr %311, i64 %idxprom270
  %313 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call272 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %305, ptr noundef %m2, ptr noundef %306, ptr noundef %307, ptr noundef %arrayidx269, ptr noundef %m2, ptr noundef %arrayidx271, ptr noundef %313)
  %r273 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r273, align 8, !tbaa !10
  %i274 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i274, align 8, !tbaa !13
  %314 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %315 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %316 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %317 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom275 = sext i32 %317 to i64
  %arrayidx276 = getelementptr inbounds %struct.doublecomplex, ptr %316, i64 %idxprom275
  %318 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %319 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %320 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %321 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom277 = sext i32 %321 to i64
  %arrayidx278 = getelementptr inbounds %struct.doublecomplex, ptr %320, i64 %idxprom277
  %322 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call279 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %m1, ptr noundef %314, ptr noundef %m2, ptr noundef %z__1, ptr noundef %315, ptr noundef %m2, ptr noundef %arrayidx276, ptr noundef %318, ptr noundef %319, ptr noundef %arrayidx278, ptr noundef %322)
  %323 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %324 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %325 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %326 = load i32, ptr %m2, align 4, !tbaa !8
  %327 = load i32, ptr %m2, align 4, !tbaa !8
  %mul280 = mul nsw i32 %326, %327
  %idxprom281 = sext i32 %mul280 to i64
  %arrayidx282 = getelementptr inbounds %struct.doublecomplex, ptr %325, i64 %idxprom281
  %328 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %329 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom283 = sext i32 %329 to i64
  %arrayidx284 = getelementptr inbounds %struct.doublecomplex, ptr %328, i64 %idxprom283
  %330 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call285 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %323, ptr noundef %m1, ptr noundef %324, ptr noundef @c_b1, ptr noundef %arrayidx282, ptr noundef %m2, ptr noundef %arrayidx284, ptr noundef %330)
  br label %if.end286

if.end286:                                        ; preds = %if.else266, %if.then246
  br label %if.end287

if.end287:                                        ; preds = %if.end286, %if.end243
  br label %if.end288

if.end288:                                        ; preds = %if.end287, %if.end188
  br label %if.end478

if.else289:                                       ; preds = %if.end90
  %331 = load i32, ptr %normaltransr, align 4, !tbaa !8
  %tobool290 = icmp ne i32 %331, 0
  br i1 %tobool290, label %if.then291, label %if.else386

if.then291:                                       ; preds = %if.else289
  %332 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool292 = icmp ne i32 %332, 0
  br i1 %tobool292, label %if.then293, label %if.else338

if.then293:                                       ; preds = %if.then291
  %333 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool294 = icmp ne i32 %333, 0
  br i1 %tobool294, label %if.then295, label %if.else316

if.then295:                                       ; preds = %if.then293
  %334 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %335 = load i32, ptr %334, align 4, !tbaa !8
  %add296 = add nsw i32 %335, 1
  store i32 %add296, ptr %i__1, align 4, !tbaa !8
  %336 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %337 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %338 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %339 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx297 = getelementptr inbounds %struct.doublecomplex, ptr %339, i64 1
  %340 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %341 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom298 = sext i32 %341 to i64
  %arrayidx299 = getelementptr inbounds %struct.doublecomplex, ptr %340, i64 %idxprom298
  %342 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call300 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %336, ptr noundef %k, ptr noundef %337, ptr noundef %338, ptr noundef %arrayidx297, ptr noundef %i__1, ptr noundef %arrayidx299, ptr noundef %342)
  %r301 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r301, align 8, !tbaa !10
  %i302 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i302, align 8, !tbaa !13
  %343 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %344 = load i32, ptr %343, align 4, !tbaa !8
  %add303 = add nsw i32 %344, 1
  store i32 %add303, ptr %i__1, align 4, !tbaa !8
  %345 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %346 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %347 = load i32, ptr %k, align 4, !tbaa !8
  %add304 = add nsw i32 %347, 1
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds %struct.doublecomplex, ptr %346, i64 %idxprom305
  %348 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %349 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom307 = sext i32 %349 to i64
  %arrayidx308 = getelementptr inbounds %struct.doublecomplex, ptr %348, i64 %idxprom307
  %350 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %351 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %352 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %353 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom309 = sext i32 %353 to i64
  %arrayidx310 = getelementptr inbounds %struct.doublecomplex, ptr %352, i64 %idxprom309
  %354 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call311 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %k, ptr noundef %345, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx306, ptr noundef %i__1, ptr noundef %arrayidx308, ptr noundef %350, ptr noundef %351, ptr noundef %arrayidx310, ptr noundef %354)
  %355 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %356 = load i32, ptr %355, align 4, !tbaa !8
  %add312 = add nsw i32 %356, 1
  store i32 %add312, ptr %i__1, align 4, !tbaa !8
  %357 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %358 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %359 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %360 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %361 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom313 = sext i32 %361 to i64
  %arrayidx314 = getelementptr inbounds %struct.doublecomplex, ptr %360, i64 %idxprom313
  %362 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call315 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %357, ptr noundef %k, ptr noundef %358, ptr noundef @c_b1, ptr noundef %359, ptr noundef %i__1, ptr noundef %arrayidx314, ptr noundef %362)
  br label %if.end337

if.else316:                                       ; preds = %if.then293
  %363 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %364 = load i32, ptr %363, align 4, !tbaa !8
  %add317 = add nsw i32 %364, 1
  store i32 %add317, ptr %i__1, align 4, !tbaa !8
  %365 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %366 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %367 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %368 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %369 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %370 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom318 = sext i32 %370 to i64
  %arrayidx319 = getelementptr inbounds %struct.doublecomplex, ptr %369, i64 %idxprom318
  %371 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call320 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %365, ptr noundef %k, ptr noundef %366, ptr noundef %367, ptr noundef %368, ptr noundef %i__1, ptr noundef %arrayidx319, ptr noundef %371)
  %r321 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r321, align 8, !tbaa !10
  %i322 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i322, align 8, !tbaa !13
  %372 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %373 = load i32, ptr %372, align 4, !tbaa !8
  %add323 = add nsw i32 %373, 1
  store i32 %add323, ptr %i__1, align 4, !tbaa !8
  %374 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %375 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %376 = load i32, ptr %k, align 4, !tbaa !8
  %add324 = add nsw i32 %376, 1
  %idxprom325 = sext i32 %add324 to i64
  %arrayidx326 = getelementptr inbounds %struct.doublecomplex, ptr %375, i64 %idxprom325
  %377 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %378 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom327 = sext i32 %378 to i64
  %arrayidx328 = getelementptr inbounds %struct.doublecomplex, ptr %377, i64 %idxprom327
  %379 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %380 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %381 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %382 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom329 = sext i32 %382 to i64
  %arrayidx330 = getelementptr inbounds %struct.doublecomplex, ptr %381, i64 %idxprom329
  %383 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call331 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %k, ptr noundef %374, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx326, ptr noundef %i__1, ptr noundef %arrayidx328, ptr noundef %379, ptr noundef %380, ptr noundef %arrayidx330, ptr noundef %383)
  %384 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %385 = load i32, ptr %384, align 4, !tbaa !8
  %add332 = add nsw i32 %385, 1
  store i32 %add332, ptr %i__1, align 4, !tbaa !8
  %386 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %387 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %388 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx333 = getelementptr inbounds %struct.doublecomplex, ptr %388, i64 1
  %389 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %390 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom334 = sext i32 %390 to i64
  %arrayidx335 = getelementptr inbounds %struct.doublecomplex, ptr %389, i64 %idxprom334
  %391 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call336 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %386, ptr noundef %k, ptr noundef %387, ptr noundef @c_b1, ptr noundef %arrayidx333, ptr noundef %i__1, ptr noundef %arrayidx335, ptr noundef %391)
  br label %if.end337

if.end337:                                        ; preds = %if.else316, %if.then295
  br label %if.end385

if.else338:                                       ; preds = %if.then291
  %392 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool339 = icmp ne i32 %392, 0
  br i1 %tobool339, label %if.else362, label %if.then340

if.then340:                                       ; preds = %if.else338
  %393 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %394 = load i32, ptr %393, align 4, !tbaa !8
  %add341 = add nsw i32 %394, 1
  store i32 %add341, ptr %i__1, align 4, !tbaa !8
  %395 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %396 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %397 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %398 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %399 = load i32, ptr %k, align 4, !tbaa !8
  %add342 = add nsw i32 %399, 1
  %idxprom343 = sext i32 %add342 to i64
  %arrayidx344 = getelementptr inbounds %struct.doublecomplex, ptr %398, i64 %idxprom343
  %400 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %401 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom345 = sext i32 %401 to i64
  %arrayidx346 = getelementptr inbounds %struct.doublecomplex, ptr %400, i64 %idxprom345
  %402 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call347 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %395, ptr noundef %k, ptr noundef %396, ptr noundef %397, ptr noundef %arrayidx344, ptr noundef %i__1, ptr noundef %arrayidx346, ptr noundef %402)
  %r348 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r348, align 8, !tbaa !10
  %i349 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i349, align 8, !tbaa !13
  %403 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %404 = load i32, ptr %403, align 4, !tbaa !8
  %add350 = add nsw i32 %404, 1
  store i32 %add350, ptr %i__1, align 4, !tbaa !8
  %405 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %406 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %407 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %408 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom351 = sext i32 %408 to i64
  %arrayidx352 = getelementptr inbounds %struct.doublecomplex, ptr %407, i64 %idxprom351
  %409 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %410 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %411 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %412 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom353 = sext i32 %412 to i64
  %arrayidx354 = getelementptr inbounds %struct.doublecomplex, ptr %411, i64 %idxprom353
  %413 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call355 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %k, ptr noundef %405, ptr noundef %k, ptr noundef %z__1, ptr noundef %406, ptr noundef %i__1, ptr noundef %arrayidx352, ptr noundef %409, ptr noundef %410, ptr noundef %arrayidx354, ptr noundef %413)
  %414 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %415 = load i32, ptr %414, align 4, !tbaa !8
  %add356 = add nsw i32 %415, 1
  store i32 %add356, ptr %i__1, align 4, !tbaa !8
  %416 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %417 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %418 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %419 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom357 = sext i32 %419 to i64
  %arrayidx358 = getelementptr inbounds %struct.doublecomplex, ptr %418, i64 %idxprom357
  %420 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %421 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom359 = sext i32 %421 to i64
  %arrayidx360 = getelementptr inbounds %struct.doublecomplex, ptr %420, i64 %idxprom359
  %422 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call361 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %416, ptr noundef %k, ptr noundef %417, ptr noundef @c_b1, ptr noundef %arrayidx358, ptr noundef %i__1, ptr noundef %arrayidx360, ptr noundef %422)
  br label %if.end384

if.else362:                                       ; preds = %if.else338
  %423 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %424 = load i32, ptr %423, align 4, !tbaa !8
  %add363 = add nsw i32 %424, 1
  store i32 %add363, ptr %i__1, align 4, !tbaa !8
  %425 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %426 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %427 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %428 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %429 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom364 = sext i32 %429 to i64
  %arrayidx365 = getelementptr inbounds %struct.doublecomplex, ptr %428, i64 %idxprom364
  %430 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %431 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom366 = sext i32 %431 to i64
  %arrayidx367 = getelementptr inbounds %struct.doublecomplex, ptr %430, i64 %idxprom366
  %432 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call368 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %425, ptr noundef %k, ptr noundef %426, ptr noundef %427, ptr noundef %arrayidx365, ptr noundef %i__1, ptr noundef %arrayidx367, ptr noundef %432)
  %r369 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r369, align 8, !tbaa !10
  %i370 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i370, align 8, !tbaa !13
  %433 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %434 = load i32, ptr %433, align 4, !tbaa !8
  %add371 = add nsw i32 %434, 1
  store i32 %add371, ptr %i__1, align 4, !tbaa !8
  %435 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %436 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %437 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %438 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom372 = sext i32 %438 to i64
  %arrayidx373 = getelementptr inbounds %struct.doublecomplex, ptr %437, i64 %idxprom372
  %439 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %440 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %441 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %442 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom374 = sext i32 %442 to i64
  %arrayidx375 = getelementptr inbounds %struct.doublecomplex, ptr %441, i64 %idxprom374
  %443 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call376 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %k, ptr noundef %435, ptr noundef %k, ptr noundef %z__1, ptr noundef %436, ptr noundef %i__1, ptr noundef %arrayidx373, ptr noundef %439, ptr noundef %440, ptr noundef %arrayidx375, ptr noundef %443)
  %444 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %445 = load i32, ptr %444, align 4, !tbaa !8
  %add377 = add nsw i32 %445, 1
  store i32 %add377, ptr %i__1, align 4, !tbaa !8
  %446 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %447 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %448 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %449 = load i32, ptr %k, align 4, !tbaa !8
  %add378 = add nsw i32 %449, 1
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds %struct.doublecomplex, ptr %448, i64 %idxprom379
  %450 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %451 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom381 = sext i32 %451 to i64
  %arrayidx382 = getelementptr inbounds %struct.doublecomplex, ptr %450, i64 %idxprom381
  %452 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call383 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %446, ptr noundef %k, ptr noundef %447, ptr noundef @c_b1, ptr noundef %arrayidx380, ptr noundef %i__1, ptr noundef %arrayidx382, ptr noundef %452)
  br label %if.end384

if.end384:                                        ; preds = %if.else362, %if.then340
  br label %if.end385

if.end385:                                        ; preds = %if.end384, %if.end337
  br label %if.end477

if.else386:                                       ; preds = %if.else289
  %453 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool387 = icmp ne i32 %453, 0
  br i1 %tobool387, label %if.then388, label %if.else431

if.then388:                                       ; preds = %if.else386
  %454 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool389 = icmp ne i32 %454, 0
  br i1 %tobool389, label %if.then390, label %if.else410

if.then390:                                       ; preds = %if.then388
  %455 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %456 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %457 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %458 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %459 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom391 = sext i32 %459 to i64
  %arrayidx392 = getelementptr inbounds %struct.doublecomplex, ptr %458, i64 %idxprom391
  %460 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %461 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom393 = sext i32 %461 to i64
  %arrayidx394 = getelementptr inbounds %struct.doublecomplex, ptr %460, i64 %idxprom393
  %462 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call395 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %455, ptr noundef %k, ptr noundef %456, ptr noundef %457, ptr noundef %arrayidx392, ptr noundef %k, ptr noundef %arrayidx394, ptr noundef %462)
  %r396 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r396, align 8, !tbaa !10
  %i397 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i397, align 8, !tbaa !13
  %463 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %464 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %465 = load i32, ptr %k, align 4, !tbaa !8
  %466 = load i32, ptr %k, align 4, !tbaa !8
  %add398 = add nsw i32 %466, 1
  %mul399 = mul nsw i32 %465, %add398
  %idxprom400 = sext i32 %mul399 to i64
  %arrayidx401 = getelementptr inbounds %struct.doublecomplex, ptr %464, i64 %idxprom400
  %467 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %468 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom402 = sext i32 %468 to i64
  %arrayidx403 = getelementptr inbounds %struct.doublecomplex, ptr %467, i64 %idxprom402
  %469 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %470 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %471 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %472 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom404 = sext i32 %472 to i64
  %arrayidx405 = getelementptr inbounds %struct.doublecomplex, ptr %471, i64 %idxprom404
  %473 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call406 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %k, ptr noundef %463, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx401, ptr noundef %k, ptr noundef %arrayidx403, ptr noundef %469, ptr noundef %470, ptr noundef %arrayidx405, ptr noundef %473)
  %474 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %475 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %476 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %477 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %478 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom407 = sext i32 %478 to i64
  %arrayidx408 = getelementptr inbounds %struct.doublecomplex, ptr %477, i64 %idxprom407
  %479 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call409 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %474, ptr noundef %k, ptr noundef %475, ptr noundef @c_b1, ptr noundef %476, ptr noundef %k, ptr noundef %arrayidx408, ptr noundef %479)
  br label %if.end430

if.else410:                                       ; preds = %if.then388
  %480 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %481 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %482 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %483 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %484 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %485 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom411 = sext i32 %485 to i64
  %arrayidx412 = getelementptr inbounds %struct.doublecomplex, ptr %484, i64 %idxprom411
  %486 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call413 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %480, ptr noundef %k, ptr noundef %481, ptr noundef %482, ptr noundef %483, ptr noundef %k, ptr noundef %arrayidx412, ptr noundef %486)
  %r414 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r414, align 8, !tbaa !10
  %i415 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i415, align 8, !tbaa !13
  %487 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %488 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %489 = load i32, ptr %k, align 4, !tbaa !8
  %490 = load i32, ptr %k, align 4, !tbaa !8
  %add416 = add nsw i32 %490, 1
  %mul417 = mul nsw i32 %489, %add416
  %idxprom418 = sext i32 %mul417 to i64
  %arrayidx419 = getelementptr inbounds %struct.doublecomplex, ptr %488, i64 %idxprom418
  %491 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %492 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom420 = sext i32 %492 to i64
  %arrayidx421 = getelementptr inbounds %struct.doublecomplex, ptr %491, i64 %idxprom420
  %493 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %494 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %495 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %496 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom422 = sext i32 %496 to i64
  %arrayidx423 = getelementptr inbounds %struct.doublecomplex, ptr %495, i64 %idxprom422
  %497 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call424 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %k, ptr noundef %487, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx419, ptr noundef %k, ptr noundef %arrayidx421, ptr noundef %493, ptr noundef %494, ptr noundef %arrayidx423, ptr noundef %497)
  %498 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %499 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %500 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %501 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom425 = sext i32 %501 to i64
  %arrayidx426 = getelementptr inbounds %struct.doublecomplex, ptr %500, i64 %idxprom425
  %502 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %503 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom427 = sext i32 %503 to i64
  %arrayidx428 = getelementptr inbounds %struct.doublecomplex, ptr %502, i64 %idxprom427
  %504 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call429 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %498, ptr noundef %k, ptr noundef %499, ptr noundef @c_b1, ptr noundef %arrayidx426, ptr noundef %k, ptr noundef %arrayidx428, ptr noundef %504)
  br label %if.end430

if.end430:                                        ; preds = %if.else410, %if.then390
  br label %if.end476

if.else431:                                       ; preds = %if.else386
  %505 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool432 = icmp ne i32 %505, 0
  br i1 %tobool432, label %if.else454, label %if.then433

if.then433:                                       ; preds = %if.else431
  %506 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %507 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %508 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %509 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %510 = load i32, ptr %k, align 4, !tbaa !8
  %511 = load i32, ptr %k, align 4, !tbaa !8
  %add434 = add nsw i32 %511, 1
  %mul435 = mul nsw i32 %510, %add434
  %idxprom436 = sext i32 %mul435 to i64
  %arrayidx437 = getelementptr inbounds %struct.doublecomplex, ptr %509, i64 %idxprom436
  %512 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %513 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom438 = sext i32 %513 to i64
  %arrayidx439 = getelementptr inbounds %struct.doublecomplex, ptr %512, i64 %idxprom438
  %514 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call440 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %506, ptr noundef %k, ptr noundef %507, ptr noundef %508, ptr noundef %arrayidx437, ptr noundef %k, ptr noundef %arrayidx439, ptr noundef %514)
  %r441 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r441, align 8, !tbaa !10
  %i442 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i442, align 8, !tbaa !13
  %515 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %516 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %517 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %518 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom443 = sext i32 %518 to i64
  %arrayidx444 = getelementptr inbounds %struct.doublecomplex, ptr %517, i64 %idxprom443
  %519 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %520 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %521 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %522 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom445 = sext i32 %522 to i64
  %arrayidx446 = getelementptr inbounds %struct.doublecomplex, ptr %521, i64 %idxprom445
  %523 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call447 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %k, ptr noundef %515, ptr noundef %k, ptr noundef %z__1, ptr noundef %516, ptr noundef %k, ptr noundef %arrayidx444, ptr noundef %519, ptr noundef %520, ptr noundef %arrayidx446, ptr noundef %523)
  %524 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %525 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %526 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %527 = load i32, ptr %k, align 4, !tbaa !8
  %528 = load i32, ptr %k, align 4, !tbaa !8
  %mul448 = mul nsw i32 %527, %528
  %idxprom449 = sext i32 %mul448 to i64
  %arrayidx450 = getelementptr inbounds %struct.doublecomplex, ptr %526, i64 %idxprom449
  %529 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %530 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom451 = sext i32 %530 to i64
  %arrayidx452 = getelementptr inbounds %struct.doublecomplex, ptr %529, i64 %idxprom451
  %531 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call453 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %524, ptr noundef %k, ptr noundef %525, ptr noundef @c_b1, ptr noundef %arrayidx450, ptr noundef %k, ptr noundef %arrayidx452, ptr noundef %531)
  br label %if.end475

if.else454:                                       ; preds = %if.else431
  %532 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %533 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %534 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %535 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %536 = load i32, ptr %k, align 4, !tbaa !8
  %537 = load i32, ptr %k, align 4, !tbaa !8
  %mul455 = mul nsw i32 %536, %537
  %idxprom456 = sext i32 %mul455 to i64
  %arrayidx457 = getelementptr inbounds %struct.doublecomplex, ptr %535, i64 %idxprom456
  %538 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %539 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom458 = sext i32 %539 to i64
  %arrayidx459 = getelementptr inbounds %struct.doublecomplex, ptr %538, i64 %idxprom458
  %540 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call460 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %532, ptr noundef %k, ptr noundef %533, ptr noundef %534, ptr noundef %arrayidx457, ptr noundef %k, ptr noundef %arrayidx459, ptr noundef %540)
  %r461 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r461, align 8, !tbaa !10
  %i462 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i462, align 8, !tbaa !13
  %541 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %542 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %543 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %544 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom463 = sext i32 %544 to i64
  %arrayidx464 = getelementptr inbounds %struct.doublecomplex, ptr %543, i64 %idxprom463
  %545 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %546 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %547 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %548 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom465 = sext i32 %548 to i64
  %arrayidx466 = getelementptr inbounds %struct.doublecomplex, ptr %547, i64 %idxprom465
  %549 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call467 = call i32 @zgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %k, ptr noundef %541, ptr noundef %k, ptr noundef %z__1, ptr noundef %542, ptr noundef %k, ptr noundef %arrayidx464, ptr noundef %545, ptr noundef %546, ptr noundef %arrayidx466, ptr noundef %549)
  %550 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %551 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %552 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %553 = load i32, ptr %k, align 4, !tbaa !8
  %554 = load i32, ptr %k, align 4, !tbaa !8
  %add468 = add nsw i32 %554, 1
  %mul469 = mul nsw i32 %553, %add468
  %idxprom470 = sext i32 %mul469 to i64
  %arrayidx471 = getelementptr inbounds %struct.doublecomplex, ptr %552, i64 %idxprom470
  %555 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %556 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom472 = sext i32 %556 to i64
  %arrayidx473 = getelementptr inbounds %struct.doublecomplex, ptr %555, i64 %idxprom472
  %557 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call474 = call i32 @ztrsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %550, ptr noundef %k, ptr noundef %551, ptr noundef @c_b1, ptr noundef %arrayidx471, ptr noundef %k, ptr noundef %arrayidx473, ptr noundef %557)
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
  %558 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %559 = load i32, ptr %558, align 4, !tbaa !8
  %rem480 = srem i32 %559, 2
  %cmp481 = icmp eq i32 %rem480, 0
  br i1 %cmp481, label %if.then482, label %if.else484

if.then482:                                       ; preds = %if.else479
  store i32 0, ptr %nisodd, align 4, !tbaa !8
  %560 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %561 = load i32, ptr %560, align 4, !tbaa !8
  %div483 = sdiv i32 %561, 2
  store i32 %div483, ptr %k, align 4, !tbaa !8
  br label %if.end493

if.else484:                                       ; preds = %if.else479
  store i32 1, ptr %nisodd, align 4, !tbaa !8
  %562 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool485 = icmp ne i32 %562, 0
  br i1 %tobool485, label %if.then486, label %if.else489

if.then486:                                       ; preds = %if.else484
  %563 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %564 = load i32, ptr %563, align 4, !tbaa !8
  %div487 = sdiv i32 %564, 2
  store i32 %div487, ptr %n2, align 4, !tbaa !8
  %565 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %566 = load i32, ptr %565, align 4, !tbaa !8
  %567 = load i32, ptr %n2, align 4, !tbaa !8
  %sub488 = sub nsw i32 %566, %567
  store i32 %sub488, ptr %n1, align 4, !tbaa !8
  br label %if.end492

if.else489:                                       ; preds = %if.else484
  %568 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %569 = load i32, ptr %568, align 4, !tbaa !8
  %div490 = sdiv i32 %569, 2
  store i32 %div490, ptr %n1, align 4, !tbaa !8
  %570 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %571 = load i32, ptr %570, align 4, !tbaa !8
  %572 = load i32, ptr %n1, align 4, !tbaa !8
  %sub491 = sub nsw i32 %571, %572
  store i32 %sub491, ptr %n2, align 4, !tbaa !8
  br label %if.end492

if.end492:                                        ; preds = %if.else489, %if.then486
  br label %if.end493

if.end493:                                        ; preds = %if.end492, %if.then482
  %573 = load i32, ptr %nisodd, align 4, !tbaa !8
  %tobool494 = icmp ne i32 %573, 0
  br i1 %tobool494, label %if.then495, label %if.else648

if.then495:                                       ; preds = %if.end493
  %574 = load i32, ptr %normaltransr, align 4, !tbaa !8
  %tobool496 = icmp ne i32 %574, 0
  br i1 %tobool496, label %if.then497, label %if.else570

if.then497:                                       ; preds = %if.then495
  %575 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool498 = icmp ne i32 %575, 0
  br i1 %tobool498, label %if.then499, label %if.else534

if.then499:                                       ; preds = %if.then497
  %576 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool500 = icmp ne i32 %576, 0
  br i1 %tobool500, label %if.then501, label %if.else517

if.then501:                                       ; preds = %if.then499
  %577 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %578 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %579 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %580 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %581 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %582 = load i32, ptr %581, align 4, !tbaa !8
  %idxprom502 = sext i32 %582 to i64
  %arrayidx503 = getelementptr inbounds %struct.doublecomplex, ptr %580, i64 %idxprom502
  %583 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %584 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %585 = load i32, ptr %n1, align 4, !tbaa !8
  %586 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul504 = mul nsw i32 %585, %586
  %idxprom505 = sext i32 %mul504 to i64
  %arrayidx506 = getelementptr inbounds %struct.doublecomplex, ptr %584, i64 %idxprom505
  %587 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call507 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %577, ptr noundef %578, ptr noundef %n2, ptr noundef %579, ptr noundef %arrayidx503, ptr noundef %583, ptr noundef %arrayidx506, ptr noundef %587)
  %r508 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r508, align 8, !tbaa !10
  %i509 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i509, align 8, !tbaa !13
  %588 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %589 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %590 = load i32, ptr %n1, align 4, !tbaa !8
  %591 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul510 = mul nsw i32 %590, %591
  %idxprom511 = sext i32 %mul510 to i64
  %arrayidx512 = getelementptr inbounds %struct.doublecomplex, ptr %589, i64 %idxprom511
  %592 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %593 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %594 = load i32, ptr %n1, align 4, !tbaa !8
  %idxprom513 = sext i32 %594 to i64
  %arrayidx514 = getelementptr inbounds %struct.doublecomplex, ptr %593, i64 %idxprom513
  %595 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %596 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %597 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %598 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call515 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %588, ptr noundef %n1, ptr noundef %n2, ptr noundef %z__1, ptr noundef %arrayidx512, ptr noundef %592, ptr noundef %arrayidx514, ptr noundef %595, ptr noundef %596, ptr noundef %597, ptr noundef %598)
  %599 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %600 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %601 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %602 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %603 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %604 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call516 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %599, ptr noundef %600, ptr noundef %n1, ptr noundef @c_b1, ptr noundef %601, ptr noundef %602, ptr noundef %603, ptr noundef %604)
  br label %if.end533

if.else517:                                       ; preds = %if.then499
  %605 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %606 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %607 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %608 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %609 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %610 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %611 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call518 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %605, ptr noundef %606, ptr noundef %n1, ptr noundef %607, ptr noundef %608, ptr noundef %609, ptr noundef %610, ptr noundef %611)
  %r519 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r519, align 8, !tbaa !10
  %i520 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i520, align 8, !tbaa !13
  %612 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %613 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %614 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %615 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %616 = load i32, ptr %n1, align 4, !tbaa !8
  %idxprom521 = sext i32 %616 to i64
  %arrayidx522 = getelementptr inbounds %struct.doublecomplex, ptr %615, i64 %idxprom521
  %617 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %618 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %619 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %620 = load i32, ptr %n1, align 4, !tbaa !8
  %621 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul523 = mul nsw i32 %620, %621
  %idxprom524 = sext i32 %mul523 to i64
  %arrayidx525 = getelementptr inbounds %struct.doublecomplex, ptr %619, i64 %idxprom524
  %622 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call526 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %612, ptr noundef %n2, ptr noundef %n1, ptr noundef %z__1, ptr noundef %613, ptr noundef %614, ptr noundef %arrayidx522, ptr noundef %617, ptr noundef %618, ptr noundef %arrayidx525, ptr noundef %622)
  %623 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %624 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %625 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %626 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %627 = load i32, ptr %626, align 4, !tbaa !8
  %idxprom527 = sext i32 %627 to i64
  %arrayidx528 = getelementptr inbounds %struct.doublecomplex, ptr %625, i64 %idxprom527
  %628 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %629 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %630 = load i32, ptr %n1, align 4, !tbaa !8
  %631 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul529 = mul nsw i32 %630, %631
  %idxprom530 = sext i32 %mul529 to i64
  %arrayidx531 = getelementptr inbounds %struct.doublecomplex, ptr %629, i64 %idxprom530
  %632 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call532 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %623, ptr noundef %624, ptr noundef %n2, ptr noundef @c_b1, ptr noundef %arrayidx528, ptr noundef %628, ptr noundef %arrayidx531, ptr noundef %632)
  br label %if.end533

if.end533:                                        ; preds = %if.else517, %if.then501
  br label %if.end569

if.else534:                                       ; preds = %if.then497
  %633 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool535 = icmp ne i32 %633, 0
  br i1 %tobool535, label %if.then536, label %if.else552

if.then536:                                       ; preds = %if.else534
  %634 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %635 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %636 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %637 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %638 = load i32, ptr %n2, align 4, !tbaa !8
  %idxprom537 = sext i32 %638 to i64
  %arrayidx538 = getelementptr inbounds %struct.doublecomplex, ptr %637, i64 %idxprom537
  %639 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %640 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %641 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call539 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %634, ptr noundef %635, ptr noundef %n1, ptr noundef %636, ptr noundef %arrayidx538, ptr noundef %639, ptr noundef %640, ptr noundef %641)
  %r540 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r540, align 8, !tbaa !10
  %i541 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i541, align 8, !tbaa !13
  %642 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %643 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %644 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %645 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %646 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %647 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %648 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %649 = load i32, ptr %n1, align 4, !tbaa !8
  %650 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul542 = mul nsw i32 %649, %650
  %idxprom543 = sext i32 %mul542 to i64
  %arrayidx544 = getelementptr inbounds %struct.doublecomplex, ptr %648, i64 %idxprom543
  %651 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call545 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %642, ptr noundef %n2, ptr noundef %n1, ptr noundef %z__1, ptr noundef %643, ptr noundef %644, ptr noundef %645, ptr noundef %646, ptr noundef %647, ptr noundef %arrayidx544, ptr noundef %651)
  %652 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %653 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %654 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %655 = load i32, ptr %n1, align 4, !tbaa !8
  %idxprom546 = sext i32 %655 to i64
  %arrayidx547 = getelementptr inbounds %struct.doublecomplex, ptr %654, i64 %idxprom546
  %656 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %657 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %658 = load i32, ptr %n1, align 4, !tbaa !8
  %659 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul548 = mul nsw i32 %658, %659
  %idxprom549 = sext i32 %mul548 to i64
  %arrayidx550 = getelementptr inbounds %struct.doublecomplex, ptr %657, i64 %idxprom549
  %660 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call551 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %652, ptr noundef %653, ptr noundef %n2, ptr noundef @c_b1, ptr noundef %arrayidx547, ptr noundef %656, ptr noundef %arrayidx550, ptr noundef %660)
  br label %if.end568

if.else552:                                       ; preds = %if.else534
  %661 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %662 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %663 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %664 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %665 = load i32, ptr %n1, align 4, !tbaa !8
  %idxprom553 = sext i32 %665 to i64
  %arrayidx554 = getelementptr inbounds %struct.doublecomplex, ptr %664, i64 %idxprom553
  %666 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %667 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %668 = load i32, ptr %n1, align 4, !tbaa !8
  %669 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul555 = mul nsw i32 %668, %669
  %idxprom556 = sext i32 %mul555 to i64
  %arrayidx557 = getelementptr inbounds %struct.doublecomplex, ptr %667, i64 %idxprom556
  %670 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call558 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %661, ptr noundef %662, ptr noundef %n2, ptr noundef %663, ptr noundef %arrayidx554, ptr noundef %666, ptr noundef %arrayidx557, ptr noundef %670)
  %r559 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r559, align 8, !tbaa !10
  %i560 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i560, align 8, !tbaa !13
  %671 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %672 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %673 = load i32, ptr %n1, align 4, !tbaa !8
  %674 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul561 = mul nsw i32 %673, %674
  %idxprom562 = sext i32 %mul561 to i64
  %arrayidx563 = getelementptr inbounds %struct.doublecomplex, ptr %672, i64 %idxprom562
  %675 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %676 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %677 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %678 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %679 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %680 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call564 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %671, ptr noundef %n1, ptr noundef %n2, ptr noundef %z__1, ptr noundef %arrayidx563, ptr noundef %675, ptr noundef %676, ptr noundef %677, ptr noundef %678, ptr noundef %679, ptr noundef %680)
  %681 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %682 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %683 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %684 = load i32, ptr %n2, align 4, !tbaa !8
  %idxprom565 = sext i32 %684 to i64
  %arrayidx566 = getelementptr inbounds %struct.doublecomplex, ptr %683, i64 %idxprom565
  %685 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %686 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %687 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call567 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %681, ptr noundef %682, ptr noundef %n1, ptr noundef @c_b1, ptr noundef %arrayidx566, ptr noundef %685, ptr noundef %686, ptr noundef %687)
  br label %if.end568

if.end568:                                        ; preds = %if.else552, %if.then536
  br label %if.end569

if.end569:                                        ; preds = %if.end568, %if.end533
  br label %if.end647

if.else570:                                       ; preds = %if.then495
  %688 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool571 = icmp ne i32 %688, 0
  br i1 %tobool571, label %if.then572, label %if.else607

if.then572:                                       ; preds = %if.else570
  %689 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool573 = icmp ne i32 %689, 0
  br i1 %tobool573, label %if.then574, label %if.else590

if.then574:                                       ; preds = %if.then572
  %690 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %691 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %692 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %693 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx575 = getelementptr inbounds %struct.doublecomplex, ptr %693, i64 1
  %694 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %695 = load i32, ptr %n1, align 4, !tbaa !8
  %696 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul576 = mul nsw i32 %695, %696
  %idxprom577 = sext i32 %mul576 to i64
  %arrayidx578 = getelementptr inbounds %struct.doublecomplex, ptr %694, i64 %idxprom577
  %697 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call579 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %690, ptr noundef %691, ptr noundef %n2, ptr noundef %692, ptr noundef %arrayidx575, ptr noundef %n1, ptr noundef %arrayidx578, ptr noundef %697)
  %r580 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r580, align 8, !tbaa !10
  %i581 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i581, align 8, !tbaa !13
  %698 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %699 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %700 = load i32, ptr %n1, align 4, !tbaa !8
  %701 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul582 = mul nsw i32 %700, %701
  %idxprom583 = sext i32 %mul582 to i64
  %arrayidx584 = getelementptr inbounds %struct.doublecomplex, ptr %699, i64 %idxprom583
  %702 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %703 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %704 = load i32, ptr %n1, align 4, !tbaa !8
  %705 = load i32, ptr %n1, align 4, !tbaa !8
  %mul585 = mul nsw i32 %704, %705
  %idxprom586 = sext i32 %mul585 to i64
  %arrayidx587 = getelementptr inbounds %struct.doublecomplex, ptr %703, i64 %idxprom586
  %706 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %707 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %708 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call588 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %698, ptr noundef %n1, ptr noundef %n2, ptr noundef %z__1, ptr noundef %arrayidx584, ptr noundef %702, ptr noundef %arrayidx587, ptr noundef %n1, ptr noundef %706, ptr noundef %707, ptr noundef %708)
  %709 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %710 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %711 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %712 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %713 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call589 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %709, ptr noundef %710, ptr noundef %n1, ptr noundef @c_b1, ptr noundef %711, ptr noundef %n1, ptr noundef %712, ptr noundef %713)
  br label %if.end606

if.else590:                                       ; preds = %if.then572
  %714 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %715 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %716 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %717 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %718 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %719 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call591 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %714, ptr noundef %715, ptr noundef %n1, ptr noundef %716, ptr noundef %717, ptr noundef %n1, ptr noundef %718, ptr noundef %719)
  %r592 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r592, align 8, !tbaa !10
  %i593 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i593, align 8, !tbaa !13
  %720 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %721 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %722 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %723 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %724 = load i32, ptr %n1, align 4, !tbaa !8
  %725 = load i32, ptr %n1, align 4, !tbaa !8
  %mul594 = mul nsw i32 %724, %725
  %idxprom595 = sext i32 %mul594 to i64
  %arrayidx596 = getelementptr inbounds %struct.doublecomplex, ptr %723, i64 %idxprom595
  %726 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %727 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %728 = load i32, ptr %n1, align 4, !tbaa !8
  %729 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul597 = mul nsw i32 %728, %729
  %idxprom598 = sext i32 %mul597 to i64
  %arrayidx599 = getelementptr inbounds %struct.doublecomplex, ptr %727, i64 %idxprom598
  %730 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call600 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %720, ptr noundef %n2, ptr noundef %n1, ptr noundef %z__1, ptr noundef %721, ptr noundef %722, ptr noundef %arrayidx596, ptr noundef %n1, ptr noundef %726, ptr noundef %arrayidx599, ptr noundef %730)
  %731 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %732 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %733 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx601 = getelementptr inbounds %struct.doublecomplex, ptr %733, i64 1
  %734 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %735 = load i32, ptr %n1, align 4, !tbaa !8
  %736 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul602 = mul nsw i32 %735, %736
  %idxprom603 = sext i32 %mul602 to i64
  %arrayidx604 = getelementptr inbounds %struct.doublecomplex, ptr %734, i64 %idxprom603
  %737 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call605 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %731, ptr noundef %732, ptr noundef %n2, ptr noundef @c_b1, ptr noundef %arrayidx601, ptr noundef %n1, ptr noundef %arrayidx604, ptr noundef %737)
  br label %if.end606

if.end606:                                        ; preds = %if.else590, %if.then574
  br label %if.end646

if.else607:                                       ; preds = %if.else570
  %738 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool608 = icmp ne i32 %738, 0
  br i1 %tobool608, label %if.then609, label %if.else627

if.then609:                                       ; preds = %if.else607
  %739 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %740 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %741 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %742 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %743 = load i32, ptr %n2, align 4, !tbaa !8
  %744 = load i32, ptr %n2, align 4, !tbaa !8
  %mul610 = mul nsw i32 %743, %744
  %idxprom611 = sext i32 %mul610 to i64
  %arrayidx612 = getelementptr inbounds %struct.doublecomplex, ptr %742, i64 %idxprom611
  %745 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %746 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call613 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %739, ptr noundef %740, ptr noundef %n1, ptr noundef %741, ptr noundef %arrayidx612, ptr noundef %n2, ptr noundef %745, ptr noundef %746)
  %r614 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r614, align 8, !tbaa !10
  %i615 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i615, align 8, !tbaa !13
  %747 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %748 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %749 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %750 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %751 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %752 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %753 = load i32, ptr %n1, align 4, !tbaa !8
  %754 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul616 = mul nsw i32 %753, %754
  %idxprom617 = sext i32 %mul616 to i64
  %arrayidx618 = getelementptr inbounds %struct.doublecomplex, ptr %752, i64 %idxprom617
  %755 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call619 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %747, ptr noundef %n2, ptr noundef %n1, ptr noundef %z__1, ptr noundef %748, ptr noundef %749, ptr noundef %750, ptr noundef %n2, ptr noundef %751, ptr noundef %arrayidx618, ptr noundef %755)
  %756 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %757 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %758 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %759 = load i32, ptr %n1, align 4, !tbaa !8
  %760 = load i32, ptr %n2, align 4, !tbaa !8
  %mul620 = mul nsw i32 %759, %760
  %idxprom621 = sext i32 %mul620 to i64
  %arrayidx622 = getelementptr inbounds %struct.doublecomplex, ptr %758, i64 %idxprom621
  %761 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %762 = load i32, ptr %n1, align 4, !tbaa !8
  %763 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul623 = mul nsw i32 %762, %763
  %idxprom624 = sext i32 %mul623 to i64
  %arrayidx625 = getelementptr inbounds %struct.doublecomplex, ptr %761, i64 %idxprom624
  %764 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call626 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %756, ptr noundef %757, ptr noundef %n2, ptr noundef @c_b1, ptr noundef %arrayidx622, ptr noundef %n2, ptr noundef %arrayidx625, ptr noundef %764)
  br label %if.end645

if.else627:                                       ; preds = %if.else607
  %765 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %766 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %767 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %768 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %769 = load i32, ptr %n1, align 4, !tbaa !8
  %770 = load i32, ptr %n2, align 4, !tbaa !8
  %mul628 = mul nsw i32 %769, %770
  %idxprom629 = sext i32 %mul628 to i64
  %arrayidx630 = getelementptr inbounds %struct.doublecomplex, ptr %768, i64 %idxprom629
  %771 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %772 = load i32, ptr %n1, align 4, !tbaa !8
  %773 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul631 = mul nsw i32 %772, %773
  %idxprom632 = sext i32 %mul631 to i64
  %arrayidx633 = getelementptr inbounds %struct.doublecomplex, ptr %771, i64 %idxprom632
  %774 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call634 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %765, ptr noundef %766, ptr noundef %n2, ptr noundef %767, ptr noundef %arrayidx630, ptr noundef %n2, ptr noundef %arrayidx633, ptr noundef %774)
  %r635 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r635, align 8, !tbaa !10
  %i636 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i636, align 8, !tbaa !13
  %775 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %776 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %777 = load i32, ptr %n1, align 4, !tbaa !8
  %778 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul637 = mul nsw i32 %777, %778
  %idxprom638 = sext i32 %mul637 to i64
  %arrayidx639 = getelementptr inbounds %struct.doublecomplex, ptr %776, i64 %idxprom638
  %779 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %780 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %781 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %782 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %783 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call640 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %775, ptr noundef %n1, ptr noundef %n2, ptr noundef %z__1, ptr noundef %arrayidx639, ptr noundef %779, ptr noundef %780, ptr noundef %n2, ptr noundef %781, ptr noundef %782, ptr noundef %783)
  %784 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %785 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %786 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %787 = load i32, ptr %n2, align 4, !tbaa !8
  %788 = load i32, ptr %n2, align 4, !tbaa !8
  %mul641 = mul nsw i32 %787, %788
  %idxprom642 = sext i32 %mul641 to i64
  %arrayidx643 = getelementptr inbounds %struct.doublecomplex, ptr %786, i64 %idxprom642
  %789 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %790 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call644 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %784, ptr noundef %785, ptr noundef %n1, ptr noundef @c_b1, ptr noundef %arrayidx643, ptr noundef %n2, ptr noundef %789, ptr noundef %790)
  br label %if.end645

if.end645:                                        ; preds = %if.else627, %if.then609
  br label %if.end646

if.end646:                                        ; preds = %if.end645, %if.end606
  br label %if.end647

if.end647:                                        ; preds = %if.end646, %if.end569
  br label %if.end821

if.else648:                                       ; preds = %if.end493
  %791 = load i32, ptr %normaltransr, align 4, !tbaa !8
  %tobool649 = icmp ne i32 %791, 0
  br i1 %tobool649, label %if.then650, label %if.else737

if.then650:                                       ; preds = %if.else648
  %792 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool651 = icmp ne i32 %792, 0
  br i1 %tobool651, label %if.then652, label %if.else693

if.then652:                                       ; preds = %if.then650
  %793 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool653 = icmp ne i32 %793, 0
  br i1 %tobool653, label %if.then654, label %if.else673

if.then654:                                       ; preds = %if.then652
  %794 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %795 = load i32, ptr %794, align 4, !tbaa !8
  %add655 = add nsw i32 %795, 1
  store i32 %add655, ptr %i__1, align 4, !tbaa !8
  %796 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %797 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %798 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %799 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %800 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %801 = load i32, ptr %k, align 4, !tbaa !8
  %802 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul656 = mul nsw i32 %801, %802
  %idxprom657 = sext i32 %mul656 to i64
  %arrayidx658 = getelementptr inbounds %struct.doublecomplex, ptr %800, i64 %idxprom657
  %803 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call659 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %796, ptr noundef %797, ptr noundef %k, ptr noundef %798, ptr noundef %799, ptr noundef %i__1, ptr noundef %arrayidx658, ptr noundef %803)
  %r660 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r660, align 8, !tbaa !10
  %i661 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i661, align 8, !tbaa !13
  %804 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %805 = load i32, ptr %804, align 4, !tbaa !8
  %add662 = add nsw i32 %805, 1
  store i32 %add662, ptr %i__1, align 4, !tbaa !8
  %806 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %807 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %808 = load i32, ptr %k, align 4, !tbaa !8
  %809 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul663 = mul nsw i32 %808, %809
  %idxprom664 = sext i32 %mul663 to i64
  %arrayidx665 = getelementptr inbounds %struct.doublecomplex, ptr %807, i64 %idxprom664
  %810 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %811 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %812 = load i32, ptr %k, align 4, !tbaa !8
  %add666 = add nsw i32 %812, 1
  %idxprom667 = sext i32 %add666 to i64
  %arrayidx668 = getelementptr inbounds %struct.doublecomplex, ptr %811, i64 %idxprom667
  %813 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %814 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %815 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call669 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %806, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx665, ptr noundef %810, ptr noundef %arrayidx668, ptr noundef %i__1, ptr noundef %813, ptr noundef %814, ptr noundef %815)
  %816 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %817 = load i32, ptr %816, align 4, !tbaa !8
  %add670 = add nsw i32 %817, 1
  store i32 %add670, ptr %i__1, align 4, !tbaa !8
  %818 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %819 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %820 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx671 = getelementptr inbounds %struct.doublecomplex, ptr %820, i64 1
  %821 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %822 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call672 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %818, ptr noundef %819, ptr noundef %k, ptr noundef @c_b1, ptr noundef %arrayidx671, ptr noundef %i__1, ptr noundef %821, ptr noundef %822)
  br label %if.end692

if.else673:                                       ; preds = %if.then652
  %823 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %824 = load i32, ptr %823, align 4, !tbaa !8
  %add674 = add nsw i32 %824, 1
  store i32 %add674, ptr %i__1, align 4, !tbaa !8
  %825 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %826 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %827 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %828 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx675 = getelementptr inbounds %struct.doublecomplex, ptr %828, i64 1
  %829 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %830 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call676 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %825, ptr noundef %826, ptr noundef %k, ptr noundef %827, ptr noundef %arrayidx675, ptr noundef %i__1, ptr noundef %829, ptr noundef %830)
  %r677 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r677, align 8, !tbaa !10
  %i678 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i678, align 8, !tbaa !13
  %831 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %832 = load i32, ptr %831, align 4, !tbaa !8
  %add679 = add nsw i32 %832, 1
  store i32 %add679, ptr %i__1, align 4, !tbaa !8
  %833 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %834 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %835 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %836 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %837 = load i32, ptr %k, align 4, !tbaa !8
  %add680 = add nsw i32 %837, 1
  %idxprom681 = sext i32 %add680 to i64
  %arrayidx682 = getelementptr inbounds %struct.doublecomplex, ptr %836, i64 %idxprom681
  %838 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %839 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %840 = load i32, ptr %k, align 4, !tbaa !8
  %841 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul683 = mul nsw i32 %840, %841
  %idxprom684 = sext i32 %mul683 to i64
  %arrayidx685 = getelementptr inbounds %struct.doublecomplex, ptr %839, i64 %idxprom684
  %842 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call686 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %833, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %834, ptr noundef %835, ptr noundef %arrayidx682, ptr noundef %i__1, ptr noundef %838, ptr noundef %arrayidx685, ptr noundef %842)
  %843 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %844 = load i32, ptr %843, align 4, !tbaa !8
  %add687 = add nsw i32 %844, 1
  store i32 %add687, ptr %i__1, align 4, !tbaa !8
  %845 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %846 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %847 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %848 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %849 = load i32, ptr %k, align 4, !tbaa !8
  %850 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul688 = mul nsw i32 %849, %850
  %idxprom689 = sext i32 %mul688 to i64
  %arrayidx690 = getelementptr inbounds %struct.doublecomplex, ptr %848, i64 %idxprom689
  %851 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call691 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %845, ptr noundef %846, ptr noundef %k, ptr noundef @c_b1, ptr noundef %847, ptr noundef %i__1, ptr noundef %arrayidx690, ptr noundef %851)
  br label %if.end692

if.end692:                                        ; preds = %if.else673, %if.then654
  br label %if.end736

if.else693:                                       ; preds = %if.then650
  %852 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool694 = icmp ne i32 %852, 0
  br i1 %tobool694, label %if.then695, label %if.else715

if.then695:                                       ; preds = %if.else693
  %853 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %854 = load i32, ptr %853, align 4, !tbaa !8
  %add696 = add nsw i32 %854, 1
  store i32 %add696, ptr %i__1, align 4, !tbaa !8
  %855 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %856 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %857 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %858 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %859 = load i32, ptr %k, align 4, !tbaa !8
  %add697 = add nsw i32 %859, 1
  %idxprom698 = sext i32 %add697 to i64
  %arrayidx699 = getelementptr inbounds %struct.doublecomplex, ptr %858, i64 %idxprom698
  %860 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %861 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call700 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %855, ptr noundef %856, ptr noundef %k, ptr noundef %857, ptr noundef %arrayidx699, ptr noundef %i__1, ptr noundef %860, ptr noundef %861)
  %r701 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r701, align 8, !tbaa !10
  %i702 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i702, align 8, !tbaa !13
  %862 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %863 = load i32, ptr %862, align 4, !tbaa !8
  %add703 = add nsw i32 %863, 1
  store i32 %add703, ptr %i__1, align 4, !tbaa !8
  %864 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %865 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %866 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %867 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %868 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %869 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %870 = load i32, ptr %k, align 4, !tbaa !8
  %871 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul704 = mul nsw i32 %870, %871
  %idxprom705 = sext i32 %mul704 to i64
  %arrayidx706 = getelementptr inbounds %struct.doublecomplex, ptr %869, i64 %idxprom705
  %872 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call707 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %864, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %865, ptr noundef %866, ptr noundef %867, ptr noundef %i__1, ptr noundef %868, ptr noundef %arrayidx706, ptr noundef %872)
  %873 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %874 = load i32, ptr %873, align 4, !tbaa !8
  %add708 = add nsw i32 %874, 1
  store i32 %add708, ptr %i__1, align 4, !tbaa !8
  %875 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %876 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %877 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %878 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom709 = sext i32 %878 to i64
  %arrayidx710 = getelementptr inbounds %struct.doublecomplex, ptr %877, i64 %idxprom709
  %879 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %880 = load i32, ptr %k, align 4, !tbaa !8
  %881 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul711 = mul nsw i32 %880, %881
  %idxprom712 = sext i32 %mul711 to i64
  %arrayidx713 = getelementptr inbounds %struct.doublecomplex, ptr %879, i64 %idxprom712
  %882 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call714 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %875, ptr noundef %876, ptr noundef %k, ptr noundef @c_b1, ptr noundef %arrayidx710, ptr noundef %i__1, ptr noundef %arrayidx713, ptr noundef %882)
  br label %if.end735

if.else715:                                       ; preds = %if.else693
  %883 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %884 = load i32, ptr %883, align 4, !tbaa !8
  %add716 = add nsw i32 %884, 1
  store i32 %add716, ptr %i__1, align 4, !tbaa !8
  %885 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %886 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %887 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %888 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %889 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom717 = sext i32 %889 to i64
  %arrayidx718 = getelementptr inbounds %struct.doublecomplex, ptr %888, i64 %idxprom717
  %890 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %891 = load i32, ptr %k, align 4, !tbaa !8
  %892 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul719 = mul nsw i32 %891, %892
  %idxprom720 = sext i32 %mul719 to i64
  %arrayidx721 = getelementptr inbounds %struct.doublecomplex, ptr %890, i64 %idxprom720
  %893 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call722 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %885, ptr noundef %886, ptr noundef %k, ptr noundef %887, ptr noundef %arrayidx718, ptr noundef %i__1, ptr noundef %arrayidx721, ptr noundef %893)
  %r723 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r723, align 8, !tbaa !10
  %i724 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i724, align 8, !tbaa !13
  %894 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %895 = load i32, ptr %894, align 4, !tbaa !8
  %add725 = add nsw i32 %895, 1
  store i32 %add725, ptr %i__1, align 4, !tbaa !8
  %896 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %897 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %898 = load i32, ptr %k, align 4, !tbaa !8
  %899 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul726 = mul nsw i32 %898, %899
  %idxprom727 = sext i32 %mul726 to i64
  %arrayidx728 = getelementptr inbounds %struct.doublecomplex, ptr %897, i64 %idxprom727
  %900 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %901 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %902 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %903 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %904 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call729 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %896, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx728, ptr noundef %900, ptr noundef %901, ptr noundef %i__1, ptr noundef %902, ptr noundef %903, ptr noundef %904)
  %905 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %906 = load i32, ptr %905, align 4, !tbaa !8
  %add730 = add nsw i32 %906, 1
  store i32 %add730, ptr %i__1, align 4, !tbaa !8
  %907 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %908 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %909 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %910 = load i32, ptr %k, align 4, !tbaa !8
  %add731 = add nsw i32 %910, 1
  %idxprom732 = sext i32 %add731 to i64
  %arrayidx733 = getelementptr inbounds %struct.doublecomplex, ptr %909, i64 %idxprom732
  %911 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %912 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call734 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %907, ptr noundef %908, ptr noundef %k, ptr noundef @c_b1, ptr noundef %arrayidx733, ptr noundef %i__1, ptr noundef %911, ptr noundef %912)
  br label %if.end735

if.end735:                                        ; preds = %if.else715, %if.then695
  br label %if.end736

if.end736:                                        ; preds = %if.end735, %if.end692
  br label %if.end820

if.else737:                                       ; preds = %if.else648
  %913 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool738 = icmp ne i32 %913, 0
  br i1 %tobool738, label %if.then739, label %if.else778

if.then739:                                       ; preds = %if.else737
  %914 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool740 = icmp ne i32 %914, 0
  br i1 %tobool740, label %if.then741, label %if.else759

if.then741:                                       ; preds = %if.then739
  %915 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %916 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %917 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %918 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %919 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %920 = load i32, ptr %k, align 4, !tbaa !8
  %921 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul742 = mul nsw i32 %920, %921
  %idxprom743 = sext i32 %mul742 to i64
  %arrayidx744 = getelementptr inbounds %struct.doublecomplex, ptr %919, i64 %idxprom743
  %922 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call745 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %915, ptr noundef %916, ptr noundef %k, ptr noundef %917, ptr noundef %918, ptr noundef %k, ptr noundef %arrayidx744, ptr noundef %922)
  %r746 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r746, align 8, !tbaa !10
  %i747 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i747, align 8, !tbaa !13
  %923 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %924 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %925 = load i32, ptr %k, align 4, !tbaa !8
  %926 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul748 = mul nsw i32 %925, %926
  %idxprom749 = sext i32 %mul748 to i64
  %arrayidx750 = getelementptr inbounds %struct.doublecomplex, ptr %924, i64 %idxprom749
  %927 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %928 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %929 = load i32, ptr %k, align 4, !tbaa !8
  %add751 = add nsw i32 %929, 1
  %930 = load i32, ptr %k, align 4, !tbaa !8
  %mul752 = mul nsw i32 %add751, %930
  %idxprom753 = sext i32 %mul752 to i64
  %arrayidx754 = getelementptr inbounds %struct.doublecomplex, ptr %928, i64 %idxprom753
  %931 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %932 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %933 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call755 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %923, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx750, ptr noundef %927, ptr noundef %arrayidx754, ptr noundef %k, ptr noundef %931, ptr noundef %932, ptr noundef %933)
  %934 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %935 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %936 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %937 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom756 = sext i32 %937 to i64
  %arrayidx757 = getelementptr inbounds %struct.doublecomplex, ptr %936, i64 %idxprom756
  %938 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %939 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call758 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %934, ptr noundef %935, ptr noundef %k, ptr noundef @c_b1, ptr noundef %arrayidx757, ptr noundef %k, ptr noundef %938, ptr noundef %939)
  br label %if.end777

if.else759:                                       ; preds = %if.then739
  %940 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %941 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %942 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %943 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %944 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom760 = sext i32 %944 to i64
  %arrayidx761 = getelementptr inbounds %struct.doublecomplex, ptr %943, i64 %idxprom760
  %945 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %946 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call762 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %940, ptr noundef %941, ptr noundef %k, ptr noundef %942, ptr noundef %arrayidx761, ptr noundef %k, ptr noundef %945, ptr noundef %946)
  %r763 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r763, align 8, !tbaa !10
  %i764 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i764, align 8, !tbaa !13
  %947 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %948 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %949 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %950 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %951 = load i32, ptr %k, align 4, !tbaa !8
  %add765 = add nsw i32 %951, 1
  %952 = load i32, ptr %k, align 4, !tbaa !8
  %mul766 = mul nsw i32 %add765, %952
  %idxprom767 = sext i32 %mul766 to i64
  %arrayidx768 = getelementptr inbounds %struct.doublecomplex, ptr %950, i64 %idxprom767
  %953 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %954 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %955 = load i32, ptr %k, align 4, !tbaa !8
  %956 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul769 = mul nsw i32 %955, %956
  %idxprom770 = sext i32 %mul769 to i64
  %arrayidx771 = getelementptr inbounds %struct.doublecomplex, ptr %954, i64 %idxprom770
  %957 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call772 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %947, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %948, ptr noundef %949, ptr noundef %arrayidx768, ptr noundef %k, ptr noundef %953, ptr noundef %arrayidx771, ptr noundef %957)
  %958 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %959 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %960 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %961 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %962 = load i32, ptr %k, align 4, !tbaa !8
  %963 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul773 = mul nsw i32 %962, %963
  %idxprom774 = sext i32 %mul773 to i64
  %arrayidx775 = getelementptr inbounds %struct.doublecomplex, ptr %961, i64 %idxprom774
  %964 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call776 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %958, ptr noundef %959, ptr noundef %k, ptr noundef @c_b1, ptr noundef %960, ptr noundef %k, ptr noundef %arrayidx775, ptr noundef %964)
  br label %if.end777

if.end777:                                        ; preds = %if.else759, %if.then741
  br label %if.end819

if.else778:                                       ; preds = %if.else737
  %965 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool779 = icmp ne i32 %965, 0
  br i1 %tobool779, label %if.then780, label %if.else799

if.then780:                                       ; preds = %if.else778
  %966 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %967 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %968 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %969 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %970 = load i32, ptr %k, align 4, !tbaa !8
  %add781 = add nsw i32 %970, 1
  %971 = load i32, ptr %k, align 4, !tbaa !8
  %mul782 = mul nsw i32 %add781, %971
  %idxprom783 = sext i32 %mul782 to i64
  %arrayidx784 = getelementptr inbounds %struct.doublecomplex, ptr %969, i64 %idxprom783
  %972 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %973 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call785 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %966, ptr noundef %967, ptr noundef %k, ptr noundef %968, ptr noundef %arrayidx784, ptr noundef %k, ptr noundef %972, ptr noundef %973)
  %r786 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r786, align 8, !tbaa !10
  %i787 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i787, align 8, !tbaa !13
  %974 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %975 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %976 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %977 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %978 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %979 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %980 = load i32, ptr %k, align 4, !tbaa !8
  %981 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul788 = mul nsw i32 %980, %981
  %idxprom789 = sext i32 %mul788 to i64
  %arrayidx790 = getelementptr inbounds %struct.doublecomplex, ptr %979, i64 %idxprom789
  %982 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call791 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %974, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %975, ptr noundef %976, ptr noundef %977, ptr noundef %k, ptr noundef %978, ptr noundef %arrayidx790, ptr noundef %982)
  %983 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %984 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %985 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %986 = load i32, ptr %k, align 4, !tbaa !8
  %987 = load i32, ptr %k, align 4, !tbaa !8
  %mul792 = mul nsw i32 %986, %987
  %idxprom793 = sext i32 %mul792 to i64
  %arrayidx794 = getelementptr inbounds %struct.doublecomplex, ptr %985, i64 %idxprom793
  %988 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %989 = load i32, ptr %k, align 4, !tbaa !8
  %990 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul795 = mul nsw i32 %989, %990
  %idxprom796 = sext i32 %mul795 to i64
  %arrayidx797 = getelementptr inbounds %struct.doublecomplex, ptr %988, i64 %idxprom796
  %991 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call798 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %983, ptr noundef %984, ptr noundef %k, ptr noundef @c_b1, ptr noundef %arrayidx794, ptr noundef %k, ptr noundef %arrayidx797, ptr noundef %991)
  br label %if.end818

if.else799:                                       ; preds = %if.else778
  %992 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %993 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %994 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %995 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %996 = load i32, ptr %k, align 4, !tbaa !8
  %997 = load i32, ptr %k, align 4, !tbaa !8
  %mul800 = mul nsw i32 %996, %997
  %idxprom801 = sext i32 %mul800 to i64
  %arrayidx802 = getelementptr inbounds %struct.doublecomplex, ptr %995, i64 %idxprom801
  %998 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %999 = load i32, ptr %k, align 4, !tbaa !8
  %1000 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul803 = mul nsw i32 %999, %1000
  %idxprom804 = sext i32 %mul803 to i64
  %arrayidx805 = getelementptr inbounds %struct.doublecomplex, ptr %998, i64 %idxprom804
  %1001 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call806 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %992, ptr noundef %993, ptr noundef %k, ptr noundef %994, ptr noundef %arrayidx802, ptr noundef %k, ptr noundef %arrayidx805, ptr noundef %1001)
  %r807 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r807, align 8, !tbaa !10
  %i808 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i808, align 8, !tbaa !13
  %1002 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1003 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1004 = load i32, ptr %k, align 4, !tbaa !8
  %1005 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul809 = mul nsw i32 %1004, %1005
  %idxprom810 = sext i32 %mul809 to i64
  %arrayidx811 = getelementptr inbounds %struct.doublecomplex, ptr %1003, i64 %idxprom810
  %1006 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %1007 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1008 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %1009 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1010 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call812 = call i32 @zgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %1002, ptr noundef %k, ptr noundef %k, ptr noundef %z__1, ptr noundef %arrayidx811, ptr noundef %1006, ptr noundef %1007, ptr noundef %k, ptr noundef %1008, ptr noundef %1009, ptr noundef %1010)
  %1011 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %1012 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1013 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1014 = load i32, ptr %k, align 4, !tbaa !8
  %add813 = add nsw i32 %1014, 1
  %1015 = load i32, ptr %k, align 4, !tbaa !8
  %mul814 = mul nsw i32 %add813, %1015
  %idxprom815 = sext i32 %mul814 to i64
  %arrayidx816 = getelementptr inbounds %struct.doublecomplex, ptr %1013, i64 %idxprom815
  %1016 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1017 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call817 = call i32 @ztrsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %1011, ptr noundef %1012, ptr noundef %k, ptr noundef @c_b1, ptr noundef %arrayidx816, ptr noundef %k, ptr noundef %1016, ptr noundef %1017)
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
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end822, %for.end75, %if.then55, %if.then49
  call void @llvm.lifetime.end.p0(i64 4, ptr %notrans) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nisodd) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %misodd) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lower) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lside) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %normaltransr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #3
  %1018 = load i32, ptr %retval, align 4
  ret i32 %1018
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @ztrsm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 8}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !12, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}

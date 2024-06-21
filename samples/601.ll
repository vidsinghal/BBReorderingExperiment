; ModuleID = 'samples/601.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/stfsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"STFSM \00", align 1
@c_b23 = internal global float -1.000000e+00, align 4
@c_b27 = internal global float 1.000000e+00, align 4

; Function Attrs: nounwind uwtable
define i32 @stfsm_(ptr noundef %transr, ptr noundef %side, ptr noundef %uplo, ptr noundef %trans, ptr noundef %diag, ptr noundef %m, ptr noundef %n, ptr noundef %alpha, ptr noundef %a, ptr noundef %b, ptr noundef %ldb) #0 {
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
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
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
  %39 = load float, ptr %38, align 4, !tbaa !10
  %cmp57 = fcmp oeq float %39, 0.000000e+00
  br i1 %cmp57, label %if.then58, label %if.end70

if.then58:                                        ; preds = %if.end56
  %40 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %sub59 = sub nsw i32 %41, 1
  store i32 %sub59, ptr %i__1, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc67, %if.then58
  %42 = load i32, ptr %j, align 4, !tbaa !8
  %43 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp60 = icmp sle i32 %42, %43
  br i1 %cmp60, label %for.body, label %for.end69

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %45 = load i32, ptr %44, align 4, !tbaa !8
  %sub61 = sub nsw i32 %45, 1
  store i32 %sub61, ptr %i__2, align 4, !tbaa !8
  store i32 0, ptr %i__, align 4, !tbaa !8
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc, %for.body
  %46 = load i32, ptr %i__, align 4, !tbaa !8
  %47 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp63 = icmp sle i32 %46, %47
  br i1 %cmp63, label %for.body64, label %for.end

for.body64:                                       ; preds = %for.cond62
  %48 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %49 = load i32, ptr %i__, align 4, !tbaa !8
  %50 = load i32, ptr %j, align 4, !tbaa !8
  %51 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul65 = mul nsw i32 %50, %51
  %add66 = add nsw i32 %49, %mul65
  %idxprom = sext i32 %add66 to i64
  %arrayidx = getelementptr inbounds float, ptr %48, i64 %idxprom
  store float 0.000000e+00, ptr %arrayidx, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body64
  %52 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %52, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond62, !llvm.loop !12

for.end:                                          ; preds = %for.cond62
  br label %for.inc67

for.inc67:                                        ; preds = %for.end
  %53 = load i32, ptr %j, align 4, !tbaa !8
  %inc68 = add nsw i32 %53, 1
  store i32 %inc68, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end69:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.end56
  %54 = load i32, ptr %lside, align 4, !tbaa !8
  %tobool71 = icmp ne i32 %54, 0
  br i1 %tobool71, label %if.then72, label %if.else441

if.then72:                                        ; preds = %if.end70
  %55 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !8
  %rem = srem i32 %56, 2
  %cmp73 = icmp eq i32 %rem, 0
  br i1 %cmp73, label %if.then74, label %if.else75

if.then74:                                        ; preds = %if.then72
  store i32 0, ptr %misodd, align 4, !tbaa !8
  %57 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %58 = load i32, ptr %57, align 4, !tbaa !8
  %div = sdiv i32 %58, 2
  store i32 %div, ptr %k, align 4, !tbaa !8
  br label %if.end84

if.else75:                                        ; preds = %if.then72
  store i32 1, ptr %misodd, align 4, !tbaa !8
  %59 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool76 = icmp ne i32 %59, 0
  br i1 %tobool76, label %if.then77, label %if.else80

if.then77:                                        ; preds = %if.else75
  %60 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %61 = load i32, ptr %60, align 4, !tbaa !8
  %div78 = sdiv i32 %61, 2
  store i32 %div78, ptr %m2, align 4, !tbaa !8
  %62 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %63 = load i32, ptr %62, align 4, !tbaa !8
  %64 = load i32, ptr %m2, align 4, !tbaa !8
  %sub79 = sub nsw i32 %63, %64
  store i32 %sub79, ptr %m1, align 4, !tbaa !8
  br label %if.end83

if.else80:                                        ; preds = %if.else75
  %65 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %66 = load i32, ptr %65, align 4, !tbaa !8
  %div81 = sdiv i32 %66, 2
  store i32 %div81, ptr %m1, align 4, !tbaa !8
  %67 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %69 = load i32, ptr %m1, align 4, !tbaa !8
  %sub82 = sub nsw i32 %68, %69
  store i32 %sub82, ptr %m2, align 4, !tbaa !8
  br label %if.end83

if.end83:                                         ; preds = %if.else80, %if.then77
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then74
  %70 = load i32, ptr %misodd, align 4, !tbaa !8
  %tobool85 = icmp ne i32 %70, 0
  br i1 %tobool85, label %if.then86, label %if.else267

if.then86:                                        ; preds = %if.end84
  %71 = load i32, ptr %normaltransr, align 4, !tbaa !8
  %tobool87 = icmp ne i32 %71, 0
  br i1 %tobool87, label %if.then88, label %if.else175

if.then88:                                        ; preds = %if.then86
  %72 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool89 = icmp ne i32 %72, 0
  br i1 %tobool89, label %if.then90, label %if.else139

if.then90:                                        ; preds = %if.then88
  %73 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool91 = icmp ne i32 %73, 0
  br i1 %tobool91, label %if.then92, label %if.else115

if.then92:                                        ; preds = %if.then90
  %74 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %75 = load i32, ptr %74, align 4, !tbaa !8
  %cmp93 = icmp eq i32 %75, 1
  br i1 %cmp93, label %if.then94, label %if.else98

if.then94:                                        ; preds = %if.then92
  %76 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %77 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %78 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %79 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %80 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %81 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %82 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom95 = sext i32 %82 to i64
  %arrayidx96 = getelementptr inbounds float, ptr %81, i64 %idxprom95
  %83 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call97 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %76, ptr noundef %m1, ptr noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %arrayidx96, ptr noundef %83)
  br label %if.end114

if.else98:                                        ; preds = %if.then92
  %84 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %85 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %86 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %87 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %88 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %89 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %90 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom99 = sext i32 %90 to i64
  %arrayidx100 = getelementptr inbounds float, ptr %89, i64 %idxprom99
  %91 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call101 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %84, ptr noundef %m1, ptr noundef %85, ptr noundef %86, ptr noundef %87, ptr noundef %88, ptr noundef %arrayidx100, ptr noundef %91)
  %92 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %93 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %94 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom102 = sext i32 %94 to i64
  %arrayidx103 = getelementptr inbounds float, ptr %93, i64 %idxprom102
  %95 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %96 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %97 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom104 = sext i32 %97 to i64
  %arrayidx105 = getelementptr inbounds float, ptr %96, i64 %idxprom104
  %98 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %99 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %100 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %101 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom106 = sext i32 %101 to i64
  %arrayidx107 = getelementptr inbounds float, ptr %100, i64 %idxprom106
  %102 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call108 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %m2, ptr noundef %92, ptr noundef %m1, ptr noundef @c_b23, ptr noundef %arrayidx103, ptr noundef %95, ptr noundef %arrayidx105, ptr noundef %98, ptr noundef %99, ptr noundef %arrayidx107, ptr noundef %102)
  %103 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %104 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %105 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %106 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %107 = load i32, ptr %106, align 4, !tbaa !8
  %idxprom109 = sext i32 %107 to i64
  %arrayidx110 = getelementptr inbounds float, ptr %105, i64 %idxprom109
  %108 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %109 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %110 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom111 = sext i32 %110 to i64
  %arrayidx112 = getelementptr inbounds float, ptr %109, i64 %idxprom111
  %111 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call113 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %103, ptr noundef %m2, ptr noundef %104, ptr noundef @c_b27, ptr noundef %arrayidx110, ptr noundef %108, ptr noundef %arrayidx112, ptr noundef %111)
  br label %if.end114

if.end114:                                        ; preds = %if.else98, %if.then94
  br label %if.end138

if.else115:                                       ; preds = %if.then90
  %112 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %113 = load i32, ptr %112, align 4, !tbaa !8
  %cmp116 = icmp eq i32 %113, 1
  br i1 %cmp116, label %if.then117, label %if.else121

if.then117:                                       ; preds = %if.else115
  %114 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %115 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %116 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %117 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %118 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %119 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %120 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom118 = sext i32 %120 to i64
  %arrayidx119 = getelementptr inbounds float, ptr %119, i64 %idxprom118
  %121 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call120 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %114, ptr noundef %m1, ptr noundef %115, ptr noundef %116, ptr noundef %117, ptr noundef %118, ptr noundef %arrayidx119, ptr noundef %121)
  br label %if.end137

if.else121:                                       ; preds = %if.else115
  %122 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %123 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %125 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %126 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %127 = load i32, ptr %126, align 4, !tbaa !8
  %idxprom122 = sext i32 %127 to i64
  %arrayidx123 = getelementptr inbounds float, ptr %125, i64 %idxprom122
  %128 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %129 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %130 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom124 = sext i32 %130 to i64
  %arrayidx125 = getelementptr inbounds float, ptr %129, i64 %idxprom124
  %131 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call126 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %122, ptr noundef %m2, ptr noundef %123, ptr noundef %124, ptr noundef %arrayidx123, ptr noundef %128, ptr noundef %arrayidx125, ptr noundef %131)
  %132 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %133 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %134 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom127 = sext i32 %134 to i64
  %arrayidx128 = getelementptr inbounds float, ptr %133, i64 %idxprom127
  %135 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %136 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %137 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom129 = sext i32 %137 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %136, i64 %idxprom129
  %138 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %139 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %140 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %141 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom131 = sext i32 %141 to i64
  %arrayidx132 = getelementptr inbounds float, ptr %140, i64 %idxprom131
  %142 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call133 = call i32 @sgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %m1, ptr noundef %132, ptr noundef %m2, ptr noundef @c_b23, ptr noundef %arrayidx128, ptr noundef %135, ptr noundef %arrayidx130, ptr noundef %138, ptr noundef %139, ptr noundef %arrayidx132, ptr noundef %142)
  %143 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %144 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %145 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %146 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %147 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %148 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom134 = sext i32 %148 to i64
  %arrayidx135 = getelementptr inbounds float, ptr %147, i64 %idxprom134
  %149 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call136 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %143, ptr noundef %m1, ptr noundef %144, ptr noundef @c_b27, ptr noundef %145, ptr noundef %146, ptr noundef %arrayidx135, ptr noundef %149)
  br label %if.end137

if.end137:                                        ; preds = %if.else121, %if.then117
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end114
  br label %if.end174

if.else139:                                       ; preds = %if.then88
  %150 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool140 = icmp ne i32 %150, 0
  br i1 %tobool140, label %if.else157, label %if.then141

if.then141:                                       ; preds = %if.else139
  %151 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %152 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %153 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %154 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %155 = load i32, ptr %m2, align 4, !tbaa !8
  %idxprom142 = sext i32 %155 to i64
  %arrayidx143 = getelementptr inbounds float, ptr %154, i64 %idxprom142
  %156 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %157 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %158 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom144 = sext i32 %158 to i64
  %arrayidx145 = getelementptr inbounds float, ptr %157, i64 %idxprom144
  %159 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call146 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %151, ptr noundef %m1, ptr noundef %152, ptr noundef %153, ptr noundef %arrayidx143, ptr noundef %156, ptr noundef %arrayidx145, ptr noundef %159)
  %160 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %161 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %162 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %163 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %164 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom147 = sext i32 %164 to i64
  %arrayidx148 = getelementptr inbounds float, ptr %163, i64 %idxprom147
  %165 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %166 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %167 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %168 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom149 = sext i32 %168 to i64
  %arrayidx150 = getelementptr inbounds float, ptr %167, i64 %idxprom149
  %169 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call151 = call i32 @sgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %m2, ptr noundef %160, ptr noundef %m1, ptr noundef @c_b23, ptr noundef %161, ptr noundef %162, ptr noundef %arrayidx148, ptr noundef %165, ptr noundef %166, ptr noundef %arrayidx150, ptr noundef %169)
  %170 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %171 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %172 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %173 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom152 = sext i32 %173 to i64
  %arrayidx153 = getelementptr inbounds float, ptr %172, i64 %idxprom152
  %174 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %175 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %176 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom154 = sext i32 %176 to i64
  %arrayidx155 = getelementptr inbounds float, ptr %175, i64 %idxprom154
  %177 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call156 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %170, ptr noundef %m2, ptr noundef %171, ptr noundef @c_b27, ptr noundef %arrayidx153, ptr noundef %174, ptr noundef %arrayidx155, ptr noundef %177)
  br label %if.end173

if.else157:                                       ; preds = %if.else139
  %178 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %179 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %180 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %181 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %182 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom158 = sext i32 %182 to i64
  %arrayidx159 = getelementptr inbounds float, ptr %181, i64 %idxprom158
  %183 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %184 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %185 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom160 = sext i32 %185 to i64
  %arrayidx161 = getelementptr inbounds float, ptr %184, i64 %idxprom160
  %186 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call162 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %178, ptr noundef %m2, ptr noundef %179, ptr noundef %180, ptr noundef %arrayidx159, ptr noundef %183, ptr noundef %arrayidx161, ptr noundef %186)
  %187 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %188 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %189 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %190 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %191 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom163 = sext i32 %191 to i64
  %arrayidx164 = getelementptr inbounds float, ptr %190, i64 %idxprom163
  %192 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %193 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %194 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %195 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom165 = sext i32 %195 to i64
  %arrayidx166 = getelementptr inbounds float, ptr %194, i64 %idxprom165
  %196 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call167 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %m1, ptr noundef %187, ptr noundef %m2, ptr noundef @c_b23, ptr noundef %188, ptr noundef %189, ptr noundef %arrayidx164, ptr noundef %192, ptr noundef %193, ptr noundef %arrayidx166, ptr noundef %196)
  %197 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %198 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %199 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %200 = load i32, ptr %m2, align 4, !tbaa !8
  %idxprom168 = sext i32 %200 to i64
  %arrayidx169 = getelementptr inbounds float, ptr %199, i64 %idxprom168
  %201 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %202 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %203 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom170 = sext i32 %203 to i64
  %arrayidx171 = getelementptr inbounds float, ptr %202, i64 %idxprom170
  %204 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call172 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %197, ptr noundef %m1, ptr noundef %198, ptr noundef @c_b27, ptr noundef %arrayidx169, ptr noundef %201, ptr noundef %arrayidx171, ptr noundef %204)
  br label %if.end173

if.end173:                                        ; preds = %if.else157, %if.then141
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.end138
  br label %if.end266

if.else175:                                       ; preds = %if.then86
  %205 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool176 = icmp ne i32 %205, 0
  br i1 %tobool176, label %if.then177, label %if.else226

if.then177:                                       ; preds = %if.else175
  %206 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool178 = icmp ne i32 %206, 0
  br i1 %tobool178, label %if.then179, label %if.else202

if.then179:                                       ; preds = %if.then177
  %207 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %208 = load i32, ptr %207, align 4, !tbaa !8
  %cmp180 = icmp eq i32 %208, 1
  br i1 %cmp180, label %if.then181, label %if.else185

if.then181:                                       ; preds = %if.then179
  %209 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %210 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %211 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %212 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %213 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %214 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom182 = sext i32 %214 to i64
  %arrayidx183 = getelementptr inbounds float, ptr %213, i64 %idxprom182
  %215 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call184 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %209, ptr noundef %m1, ptr noundef %210, ptr noundef %211, ptr noundef %212, ptr noundef %m1, ptr noundef %arrayidx183, ptr noundef %215)
  br label %if.end201

if.else185:                                       ; preds = %if.then179
  %216 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %217 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %218 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %219 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %220 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %221 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom186 = sext i32 %221 to i64
  %arrayidx187 = getelementptr inbounds float, ptr %220, i64 %idxprom186
  %222 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call188 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %216, ptr noundef %m1, ptr noundef %217, ptr noundef %218, ptr noundef %219, ptr noundef %m1, ptr noundef %arrayidx187, ptr noundef %222)
  %223 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %224 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %225 = load i32, ptr %m1, align 4, !tbaa !8
  %226 = load i32, ptr %m1, align 4, !tbaa !8
  %mul189 = mul nsw i32 %225, %226
  %idxprom190 = sext i32 %mul189 to i64
  %arrayidx191 = getelementptr inbounds float, ptr %224, i64 %idxprom190
  %227 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %228 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom192 = sext i32 %228 to i64
  %arrayidx193 = getelementptr inbounds float, ptr %227, i64 %idxprom192
  %229 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %230 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %231 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %232 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom194 = sext i32 %232 to i64
  %arrayidx195 = getelementptr inbounds float, ptr %231, i64 %idxprom194
  %233 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call196 = call i32 @sgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %m2, ptr noundef %223, ptr noundef %m1, ptr noundef @c_b23, ptr noundef %arrayidx191, ptr noundef %m1, ptr noundef %arrayidx193, ptr noundef %229, ptr noundef %230, ptr noundef %arrayidx195, ptr noundef %233)
  %234 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %235 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %236 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx197 = getelementptr inbounds float, ptr %236, i64 1
  %237 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %238 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom198 = sext i32 %238 to i64
  %arrayidx199 = getelementptr inbounds float, ptr %237, i64 %idxprom198
  %239 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call200 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %234, ptr noundef %m2, ptr noundef %235, ptr noundef @c_b27, ptr noundef %arrayidx197, ptr noundef %m1, ptr noundef %arrayidx199, ptr noundef %239)
  br label %if.end201

if.end201:                                        ; preds = %if.else185, %if.then181
  br label %if.end225

if.else202:                                       ; preds = %if.then177
  %240 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %241 = load i32, ptr %240, align 4, !tbaa !8
  %cmp203 = icmp eq i32 %241, 1
  br i1 %cmp203, label %if.then204, label %if.else208

if.then204:                                       ; preds = %if.else202
  %242 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %243 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %244 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %245 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %246 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %247 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom205 = sext i32 %247 to i64
  %arrayidx206 = getelementptr inbounds float, ptr %246, i64 %idxprom205
  %248 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call207 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %242, ptr noundef %m1, ptr noundef %243, ptr noundef %244, ptr noundef %245, ptr noundef %m1, ptr noundef %arrayidx206, ptr noundef %248)
  br label %if.end224

if.else208:                                       ; preds = %if.else202
  %249 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %250 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %251 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %252 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx209 = getelementptr inbounds float, ptr %252, i64 1
  %253 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %254 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom210 = sext i32 %254 to i64
  %arrayidx211 = getelementptr inbounds float, ptr %253, i64 %idxprom210
  %255 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call212 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %249, ptr noundef %m2, ptr noundef %250, ptr noundef %251, ptr noundef %arrayidx209, ptr noundef %m1, ptr noundef %arrayidx211, ptr noundef %255)
  %256 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %257 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %258 = load i32, ptr %m1, align 4, !tbaa !8
  %259 = load i32, ptr %m1, align 4, !tbaa !8
  %mul213 = mul nsw i32 %258, %259
  %idxprom214 = sext i32 %mul213 to i64
  %arrayidx215 = getelementptr inbounds float, ptr %257, i64 %idxprom214
  %260 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %261 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom216 = sext i32 %261 to i64
  %arrayidx217 = getelementptr inbounds float, ptr %260, i64 %idxprom216
  %262 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %263 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %264 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %265 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom218 = sext i32 %265 to i64
  %arrayidx219 = getelementptr inbounds float, ptr %264, i64 %idxprom218
  %266 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call220 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %m1, ptr noundef %256, ptr noundef %m2, ptr noundef @c_b23, ptr noundef %arrayidx215, ptr noundef %m1, ptr noundef %arrayidx217, ptr noundef %262, ptr noundef %263, ptr noundef %arrayidx219, ptr noundef %266)
  %267 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %268 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %269 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %270 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %271 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom221 = sext i32 %271 to i64
  %arrayidx222 = getelementptr inbounds float, ptr %270, i64 %idxprom221
  %272 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call223 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %267, ptr noundef %m1, ptr noundef %268, ptr noundef @c_b27, ptr noundef %269, ptr noundef %m1, ptr noundef %arrayidx222, ptr noundef %272)
  br label %if.end224

if.end224:                                        ; preds = %if.else208, %if.then204
  br label %if.end225

if.end225:                                        ; preds = %if.end224, %if.end201
  br label %if.end265

if.else226:                                       ; preds = %if.else175
  %273 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool227 = icmp ne i32 %273, 0
  br i1 %tobool227, label %if.else246, label %if.then228

if.then228:                                       ; preds = %if.else226
  %274 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %275 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %276 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %277 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %278 = load i32, ptr %m2, align 4, !tbaa !8
  %279 = load i32, ptr %m2, align 4, !tbaa !8
  %mul229 = mul nsw i32 %278, %279
  %idxprom230 = sext i32 %mul229 to i64
  %arrayidx231 = getelementptr inbounds float, ptr %277, i64 %idxprom230
  %280 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %281 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom232 = sext i32 %281 to i64
  %arrayidx233 = getelementptr inbounds float, ptr %280, i64 %idxprom232
  %282 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call234 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %274, ptr noundef %m1, ptr noundef %275, ptr noundef %276, ptr noundef %arrayidx231, ptr noundef %m2, ptr noundef %arrayidx233, ptr noundef %282)
  %283 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %284 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %285 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %286 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom235 = sext i32 %286 to i64
  %arrayidx236 = getelementptr inbounds float, ptr %285, i64 %idxprom235
  %287 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %288 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %289 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %290 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom237 = sext i32 %290 to i64
  %arrayidx238 = getelementptr inbounds float, ptr %289, i64 %idxprom237
  %291 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call239 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %m2, ptr noundef %283, ptr noundef %m1, ptr noundef @c_b23, ptr noundef %284, ptr noundef %m2, ptr noundef %arrayidx236, ptr noundef %287, ptr noundef %288, ptr noundef %arrayidx238, ptr noundef %291)
  %292 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %293 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %294 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %295 = load i32, ptr %m1, align 4, !tbaa !8
  %296 = load i32, ptr %m2, align 4, !tbaa !8
  %mul240 = mul nsw i32 %295, %296
  %idxprom241 = sext i32 %mul240 to i64
  %arrayidx242 = getelementptr inbounds float, ptr %294, i64 %idxprom241
  %297 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %298 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom243 = sext i32 %298 to i64
  %arrayidx244 = getelementptr inbounds float, ptr %297, i64 %idxprom243
  %299 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call245 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %292, ptr noundef %m2, ptr noundef %293, ptr noundef @c_b27, ptr noundef %arrayidx242, ptr noundef %m2, ptr noundef %arrayidx244, ptr noundef %299)
  br label %if.end264

if.else246:                                       ; preds = %if.else226
  %300 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %301 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %302 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %303 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %304 = load i32, ptr %m1, align 4, !tbaa !8
  %305 = load i32, ptr %m2, align 4, !tbaa !8
  %mul247 = mul nsw i32 %304, %305
  %idxprom248 = sext i32 %mul247 to i64
  %arrayidx249 = getelementptr inbounds float, ptr %303, i64 %idxprom248
  %306 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %307 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom250 = sext i32 %307 to i64
  %arrayidx251 = getelementptr inbounds float, ptr %306, i64 %idxprom250
  %308 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call252 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %300, ptr noundef %m2, ptr noundef %301, ptr noundef %302, ptr noundef %arrayidx249, ptr noundef %m2, ptr noundef %arrayidx251, ptr noundef %308)
  %309 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %310 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %311 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %312 = load i32, ptr %m1, align 4, !tbaa !8
  %idxprom253 = sext i32 %312 to i64
  %arrayidx254 = getelementptr inbounds float, ptr %311, i64 %idxprom253
  %313 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %314 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %315 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %316 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom255 = sext i32 %316 to i64
  %arrayidx256 = getelementptr inbounds float, ptr %315, i64 %idxprom255
  %317 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call257 = call i32 @sgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %m1, ptr noundef %309, ptr noundef %m2, ptr noundef @c_b23, ptr noundef %310, ptr noundef %m2, ptr noundef %arrayidx254, ptr noundef %313, ptr noundef %314, ptr noundef %arrayidx256, ptr noundef %317)
  %318 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %319 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %320 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %321 = load i32, ptr %m2, align 4, !tbaa !8
  %322 = load i32, ptr %m2, align 4, !tbaa !8
  %mul258 = mul nsw i32 %321, %322
  %idxprom259 = sext i32 %mul258 to i64
  %arrayidx260 = getelementptr inbounds float, ptr %320, i64 %idxprom259
  %323 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %324 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom261 = sext i32 %324 to i64
  %arrayidx262 = getelementptr inbounds float, ptr %323, i64 %idxprom261
  %325 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call263 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %318, ptr noundef %m1, ptr noundef %319, ptr noundef @c_b27, ptr noundef %arrayidx260, ptr noundef %m2, ptr noundef %arrayidx262, ptr noundef %325)
  br label %if.end264

if.end264:                                        ; preds = %if.else246, %if.then228
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.end225
  br label %if.end266

if.end266:                                        ; preds = %if.end265, %if.end174
  br label %if.end440

if.else267:                                       ; preds = %if.end84
  %326 = load i32, ptr %normaltransr, align 4, !tbaa !8
  %tobool268 = icmp ne i32 %326, 0
  br i1 %tobool268, label %if.then269, label %if.else356

if.then269:                                       ; preds = %if.else267
  %327 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool270 = icmp ne i32 %327, 0
  br i1 %tobool270, label %if.then271, label %if.else312

if.then271:                                       ; preds = %if.then269
  %328 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool272 = icmp ne i32 %328, 0
  br i1 %tobool272, label %if.then273, label %if.else292

if.then273:                                       ; preds = %if.then271
  %329 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %330 = load i32, ptr %329, align 4, !tbaa !8
  %add274 = add nsw i32 %330, 1
  store i32 %add274, ptr %i__1, align 4, !tbaa !8
  %331 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %332 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %333 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %334 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx275 = getelementptr inbounds float, ptr %334, i64 1
  %335 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %336 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom276 = sext i32 %336 to i64
  %arrayidx277 = getelementptr inbounds float, ptr %335, i64 %idxprom276
  %337 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call278 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %331, ptr noundef %k, ptr noundef %332, ptr noundef %333, ptr noundef %arrayidx275, ptr noundef %i__1, ptr noundef %arrayidx277, ptr noundef %337)
  %338 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %339 = load i32, ptr %338, align 4, !tbaa !8
  %add279 = add nsw i32 %339, 1
  store i32 %add279, ptr %i__1, align 4, !tbaa !8
  %340 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %341 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %342 = load i32, ptr %k, align 4, !tbaa !8
  %add280 = add nsw i32 %342, 1
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds float, ptr %341, i64 %idxprom281
  %343 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %344 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom283 = sext i32 %344 to i64
  %arrayidx284 = getelementptr inbounds float, ptr %343, i64 %idxprom283
  %345 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %346 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %347 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %348 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom285 = sext i32 %348 to i64
  %arrayidx286 = getelementptr inbounds float, ptr %347, i64 %idxprom285
  %349 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call287 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %k, ptr noundef %340, ptr noundef %k, ptr noundef @c_b23, ptr noundef %arrayidx282, ptr noundef %i__1, ptr noundef %arrayidx284, ptr noundef %345, ptr noundef %346, ptr noundef %arrayidx286, ptr noundef %349)
  %350 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %351 = load i32, ptr %350, align 4, !tbaa !8
  %add288 = add nsw i32 %351, 1
  store i32 %add288, ptr %i__1, align 4, !tbaa !8
  %352 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %353 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %354 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %355 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %356 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom289 = sext i32 %356 to i64
  %arrayidx290 = getelementptr inbounds float, ptr %355, i64 %idxprom289
  %357 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call291 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %352, ptr noundef %k, ptr noundef %353, ptr noundef @c_b27, ptr noundef %354, ptr noundef %i__1, ptr noundef %arrayidx290, ptr noundef %357)
  br label %if.end311

if.else292:                                       ; preds = %if.then271
  %358 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %359 = load i32, ptr %358, align 4, !tbaa !8
  %add293 = add nsw i32 %359, 1
  store i32 %add293, ptr %i__1, align 4, !tbaa !8
  %360 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %361 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %362 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %363 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %364 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %365 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom294 = sext i32 %365 to i64
  %arrayidx295 = getelementptr inbounds float, ptr %364, i64 %idxprom294
  %366 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call296 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %360, ptr noundef %k, ptr noundef %361, ptr noundef %362, ptr noundef %363, ptr noundef %i__1, ptr noundef %arrayidx295, ptr noundef %366)
  %367 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %368 = load i32, ptr %367, align 4, !tbaa !8
  %add297 = add nsw i32 %368, 1
  store i32 %add297, ptr %i__1, align 4, !tbaa !8
  %369 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %370 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %371 = load i32, ptr %k, align 4, !tbaa !8
  %add298 = add nsw i32 %371, 1
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds float, ptr %370, i64 %idxprom299
  %372 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %373 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom301 = sext i32 %373 to i64
  %arrayidx302 = getelementptr inbounds float, ptr %372, i64 %idxprom301
  %374 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %375 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %376 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %377 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom303 = sext i32 %377 to i64
  %arrayidx304 = getelementptr inbounds float, ptr %376, i64 %idxprom303
  %378 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call305 = call i32 @sgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %k, ptr noundef %369, ptr noundef %k, ptr noundef @c_b23, ptr noundef %arrayidx300, ptr noundef %i__1, ptr noundef %arrayidx302, ptr noundef %374, ptr noundef %375, ptr noundef %arrayidx304, ptr noundef %378)
  %379 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %380 = load i32, ptr %379, align 4, !tbaa !8
  %add306 = add nsw i32 %380, 1
  store i32 %add306, ptr %i__1, align 4, !tbaa !8
  %381 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %382 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %383 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx307 = getelementptr inbounds float, ptr %383, i64 1
  %384 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %385 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom308 = sext i32 %385 to i64
  %arrayidx309 = getelementptr inbounds float, ptr %384, i64 %idxprom308
  %386 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call310 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %381, ptr noundef %k, ptr noundef %382, ptr noundef @c_b27, ptr noundef %arrayidx307, ptr noundef %i__1, ptr noundef %arrayidx309, ptr noundef %386)
  br label %if.end311

if.end311:                                        ; preds = %if.else292, %if.then273
  br label %if.end355

if.else312:                                       ; preds = %if.then269
  %387 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool313 = icmp ne i32 %387, 0
  br i1 %tobool313, label %if.else334, label %if.then314

if.then314:                                       ; preds = %if.else312
  %388 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %389 = load i32, ptr %388, align 4, !tbaa !8
  %add315 = add nsw i32 %389, 1
  store i32 %add315, ptr %i__1, align 4, !tbaa !8
  %390 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %391 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %392 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %393 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %394 = load i32, ptr %k, align 4, !tbaa !8
  %add316 = add nsw i32 %394, 1
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds float, ptr %393, i64 %idxprom317
  %395 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %396 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom319 = sext i32 %396 to i64
  %arrayidx320 = getelementptr inbounds float, ptr %395, i64 %idxprom319
  %397 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call321 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %390, ptr noundef %k, ptr noundef %391, ptr noundef %392, ptr noundef %arrayidx318, ptr noundef %i__1, ptr noundef %arrayidx320, ptr noundef %397)
  %398 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %399 = load i32, ptr %398, align 4, !tbaa !8
  %add322 = add nsw i32 %399, 1
  store i32 %add322, ptr %i__1, align 4, !tbaa !8
  %400 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %401 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %402 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %403 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom323 = sext i32 %403 to i64
  %arrayidx324 = getelementptr inbounds float, ptr %402, i64 %idxprom323
  %404 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %405 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %406 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %407 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom325 = sext i32 %407 to i64
  %arrayidx326 = getelementptr inbounds float, ptr %406, i64 %idxprom325
  %408 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call327 = call i32 @sgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %k, ptr noundef %400, ptr noundef %k, ptr noundef @c_b23, ptr noundef %401, ptr noundef %i__1, ptr noundef %arrayidx324, ptr noundef %404, ptr noundef %405, ptr noundef %arrayidx326, ptr noundef %408)
  %409 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %410 = load i32, ptr %409, align 4, !tbaa !8
  %add328 = add nsw i32 %410, 1
  store i32 %add328, ptr %i__1, align 4, !tbaa !8
  %411 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %412 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %413 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %414 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom329 = sext i32 %414 to i64
  %arrayidx330 = getelementptr inbounds float, ptr %413, i64 %idxprom329
  %415 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %416 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom331 = sext i32 %416 to i64
  %arrayidx332 = getelementptr inbounds float, ptr %415, i64 %idxprom331
  %417 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call333 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %411, ptr noundef %k, ptr noundef %412, ptr noundef @c_b27, ptr noundef %arrayidx330, ptr noundef %i__1, ptr noundef %arrayidx332, ptr noundef %417)
  br label %if.end354

if.else334:                                       ; preds = %if.else312
  %418 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %419 = load i32, ptr %418, align 4, !tbaa !8
  %add335 = add nsw i32 %419, 1
  store i32 %add335, ptr %i__1, align 4, !tbaa !8
  %420 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %421 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %422 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %423 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %424 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom336 = sext i32 %424 to i64
  %arrayidx337 = getelementptr inbounds float, ptr %423, i64 %idxprom336
  %425 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %426 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom338 = sext i32 %426 to i64
  %arrayidx339 = getelementptr inbounds float, ptr %425, i64 %idxprom338
  %427 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call340 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %420, ptr noundef %k, ptr noundef %421, ptr noundef %422, ptr noundef %arrayidx337, ptr noundef %i__1, ptr noundef %arrayidx339, ptr noundef %427)
  %428 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %429 = load i32, ptr %428, align 4, !tbaa !8
  %add341 = add nsw i32 %429, 1
  store i32 %add341, ptr %i__1, align 4, !tbaa !8
  %430 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %431 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %432 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %433 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom342 = sext i32 %433 to i64
  %arrayidx343 = getelementptr inbounds float, ptr %432, i64 %idxprom342
  %434 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %435 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %436 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %437 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom344 = sext i32 %437 to i64
  %arrayidx345 = getelementptr inbounds float, ptr %436, i64 %idxprom344
  %438 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call346 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %k, ptr noundef %430, ptr noundef %k, ptr noundef @c_b23, ptr noundef %431, ptr noundef %i__1, ptr noundef %arrayidx343, ptr noundef %434, ptr noundef %435, ptr noundef %arrayidx345, ptr noundef %438)
  %439 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %440 = load i32, ptr %439, align 4, !tbaa !8
  %add347 = add nsw i32 %440, 1
  store i32 %add347, ptr %i__1, align 4, !tbaa !8
  %441 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %442 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %443 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %444 = load i32, ptr %k, align 4, !tbaa !8
  %add348 = add nsw i32 %444, 1
  %idxprom349 = sext i32 %add348 to i64
  %arrayidx350 = getelementptr inbounds float, ptr %443, i64 %idxprom349
  %445 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %446 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom351 = sext i32 %446 to i64
  %arrayidx352 = getelementptr inbounds float, ptr %445, i64 %idxprom351
  %447 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call353 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %441, ptr noundef %k, ptr noundef %442, ptr noundef @c_b27, ptr noundef %arrayidx350, ptr noundef %i__1, ptr noundef %arrayidx352, ptr noundef %447)
  br label %if.end354

if.end354:                                        ; preds = %if.else334, %if.then314
  br label %if.end355

if.end355:                                        ; preds = %if.end354, %if.end311
  br label %if.end439

if.else356:                                       ; preds = %if.else267
  %448 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool357 = icmp ne i32 %448, 0
  br i1 %tobool357, label %if.then358, label %if.else397

if.then358:                                       ; preds = %if.else356
  %449 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool359 = icmp ne i32 %449, 0
  br i1 %tobool359, label %if.then360, label %if.else378

if.then360:                                       ; preds = %if.then358
  %450 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %451 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %452 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %453 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %454 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom361 = sext i32 %454 to i64
  %arrayidx362 = getelementptr inbounds float, ptr %453, i64 %idxprom361
  %455 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %456 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom363 = sext i32 %456 to i64
  %arrayidx364 = getelementptr inbounds float, ptr %455, i64 %idxprom363
  %457 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call365 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %450, ptr noundef %k, ptr noundef %451, ptr noundef %452, ptr noundef %arrayidx362, ptr noundef %k, ptr noundef %arrayidx364, ptr noundef %457)
  %458 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %459 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %460 = load i32, ptr %k, align 4, !tbaa !8
  %461 = load i32, ptr %k, align 4, !tbaa !8
  %add366 = add nsw i32 %461, 1
  %mul367 = mul nsw i32 %460, %add366
  %idxprom368 = sext i32 %mul367 to i64
  %arrayidx369 = getelementptr inbounds float, ptr %459, i64 %idxprom368
  %462 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %463 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom370 = sext i32 %463 to i64
  %arrayidx371 = getelementptr inbounds float, ptr %462, i64 %idxprom370
  %464 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %465 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %466 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %467 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom372 = sext i32 %467 to i64
  %arrayidx373 = getelementptr inbounds float, ptr %466, i64 %idxprom372
  %468 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call374 = call i32 @sgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %k, ptr noundef %458, ptr noundef %k, ptr noundef @c_b23, ptr noundef %arrayidx369, ptr noundef %k, ptr noundef %arrayidx371, ptr noundef %464, ptr noundef %465, ptr noundef %arrayidx373, ptr noundef %468)
  %469 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %470 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %471 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %472 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %473 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom375 = sext i32 %473 to i64
  %arrayidx376 = getelementptr inbounds float, ptr %472, i64 %idxprom375
  %474 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call377 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %469, ptr noundef %k, ptr noundef %470, ptr noundef @c_b27, ptr noundef %471, ptr noundef %k, ptr noundef %arrayidx376, ptr noundef %474)
  br label %if.end396

if.else378:                                       ; preds = %if.then358
  %475 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %476 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %477 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %478 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %479 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %480 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom379 = sext i32 %480 to i64
  %arrayidx380 = getelementptr inbounds float, ptr %479, i64 %idxprom379
  %481 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call381 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %475, ptr noundef %k, ptr noundef %476, ptr noundef %477, ptr noundef %478, ptr noundef %k, ptr noundef %arrayidx380, ptr noundef %481)
  %482 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %483 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %484 = load i32, ptr %k, align 4, !tbaa !8
  %485 = load i32, ptr %k, align 4, !tbaa !8
  %add382 = add nsw i32 %485, 1
  %mul383 = mul nsw i32 %484, %add382
  %idxprom384 = sext i32 %mul383 to i64
  %arrayidx385 = getelementptr inbounds float, ptr %483, i64 %idxprom384
  %486 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %487 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom386 = sext i32 %487 to i64
  %arrayidx387 = getelementptr inbounds float, ptr %486, i64 %idxprom386
  %488 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %489 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %490 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %491 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom388 = sext i32 %491 to i64
  %arrayidx389 = getelementptr inbounds float, ptr %490, i64 %idxprom388
  %492 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call390 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %k, ptr noundef %482, ptr noundef %k, ptr noundef @c_b23, ptr noundef %arrayidx385, ptr noundef %k, ptr noundef %arrayidx387, ptr noundef %488, ptr noundef %489, ptr noundef %arrayidx389, ptr noundef %492)
  %493 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %494 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %495 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %496 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom391 = sext i32 %496 to i64
  %arrayidx392 = getelementptr inbounds float, ptr %495, i64 %idxprom391
  %497 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %498 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom393 = sext i32 %498 to i64
  %arrayidx394 = getelementptr inbounds float, ptr %497, i64 %idxprom393
  %499 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call395 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %493, ptr noundef %k, ptr noundef %494, ptr noundef @c_b27, ptr noundef %arrayidx392, ptr noundef %k, ptr noundef %arrayidx394, ptr noundef %499)
  br label %if.end396

if.end396:                                        ; preds = %if.else378, %if.then360
  br label %if.end438

if.else397:                                       ; preds = %if.else356
  %500 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool398 = icmp ne i32 %500, 0
  br i1 %tobool398, label %if.else418, label %if.then399

if.then399:                                       ; preds = %if.else397
  %501 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %502 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %503 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %504 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %505 = load i32, ptr %k, align 4, !tbaa !8
  %506 = load i32, ptr %k, align 4, !tbaa !8
  %add400 = add nsw i32 %506, 1
  %mul401 = mul nsw i32 %505, %add400
  %idxprom402 = sext i32 %mul401 to i64
  %arrayidx403 = getelementptr inbounds float, ptr %504, i64 %idxprom402
  %507 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %508 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom404 = sext i32 %508 to i64
  %arrayidx405 = getelementptr inbounds float, ptr %507, i64 %idxprom404
  %509 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call406 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %501, ptr noundef %k, ptr noundef %502, ptr noundef %503, ptr noundef %arrayidx403, ptr noundef %k, ptr noundef %arrayidx405, ptr noundef %509)
  %510 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %511 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %512 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %513 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom407 = sext i32 %513 to i64
  %arrayidx408 = getelementptr inbounds float, ptr %512, i64 %idxprom407
  %514 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %515 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %516 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %517 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom409 = sext i32 %517 to i64
  %arrayidx410 = getelementptr inbounds float, ptr %516, i64 %idxprom409
  %518 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call411 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %k, ptr noundef %510, ptr noundef %k, ptr noundef @c_b23, ptr noundef %511, ptr noundef %k, ptr noundef %arrayidx408, ptr noundef %514, ptr noundef %515, ptr noundef %arrayidx410, ptr noundef %518)
  %519 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %520 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %521 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %522 = load i32, ptr %k, align 4, !tbaa !8
  %523 = load i32, ptr %k, align 4, !tbaa !8
  %mul412 = mul nsw i32 %522, %523
  %idxprom413 = sext i32 %mul412 to i64
  %arrayidx414 = getelementptr inbounds float, ptr %521, i64 %idxprom413
  %524 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %525 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom415 = sext i32 %525 to i64
  %arrayidx416 = getelementptr inbounds float, ptr %524, i64 %idxprom415
  %526 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call417 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %519, ptr noundef %k, ptr noundef %520, ptr noundef @c_b27, ptr noundef %arrayidx414, ptr noundef %k, ptr noundef %arrayidx416, ptr noundef %526)
  br label %if.end437

if.else418:                                       ; preds = %if.else397
  %527 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %528 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %529 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %530 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %531 = load i32, ptr %k, align 4, !tbaa !8
  %532 = load i32, ptr %k, align 4, !tbaa !8
  %mul419 = mul nsw i32 %531, %532
  %idxprom420 = sext i32 %mul419 to i64
  %arrayidx421 = getelementptr inbounds float, ptr %530, i64 %idxprom420
  %533 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %534 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom422 = sext i32 %534 to i64
  %arrayidx423 = getelementptr inbounds float, ptr %533, i64 %idxprom422
  %535 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call424 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %527, ptr noundef %k, ptr noundef %528, ptr noundef %529, ptr noundef %arrayidx421, ptr noundef %k, ptr noundef %arrayidx423, ptr noundef %535)
  %536 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %537 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %538 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %539 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom425 = sext i32 %539 to i64
  %arrayidx426 = getelementptr inbounds float, ptr %538, i64 %idxprom425
  %540 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %541 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %542 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %543 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom427 = sext i32 %543 to i64
  %arrayidx428 = getelementptr inbounds float, ptr %542, i64 %idxprom427
  %544 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call429 = call i32 @sgemm_(ptr noundef @.str.2, ptr noundef @.str, ptr noundef %k, ptr noundef %536, ptr noundef %k, ptr noundef @c_b23, ptr noundef %537, ptr noundef %k, ptr noundef %arrayidx426, ptr noundef %540, ptr noundef %541, ptr noundef %arrayidx428, ptr noundef %544)
  %545 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %546 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %547 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %548 = load i32, ptr %k, align 4, !tbaa !8
  %549 = load i32, ptr %k, align 4, !tbaa !8
  %add430 = add nsw i32 %549, 1
  %mul431 = mul nsw i32 %548, %add430
  %idxprom432 = sext i32 %mul431 to i64
  %arrayidx433 = getelementptr inbounds float, ptr %547, i64 %idxprom432
  %550 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %551 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom434 = sext i32 %551 to i64
  %arrayidx435 = getelementptr inbounds float, ptr %550, i64 %idxprom434
  %552 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call436 = call i32 @strsm_(ptr noundef @.str.1, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %545, ptr noundef %k, ptr noundef %546, ptr noundef @c_b27, ptr noundef %arrayidx433, ptr noundef %k, ptr noundef %arrayidx435, ptr noundef %552)
  br label %if.end437

if.end437:                                        ; preds = %if.else418, %if.then399
  br label %if.end438

if.end438:                                        ; preds = %if.end437, %if.end396
  br label %if.end439

if.end439:                                        ; preds = %if.end438, %if.end355
  br label %if.end440

if.end440:                                        ; preds = %if.end439, %if.end266
  br label %if.end752

if.else441:                                       ; preds = %if.end70
  %553 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %554 = load i32, ptr %553, align 4, !tbaa !8
  %rem442 = srem i32 %554, 2
  %cmp443 = icmp eq i32 %rem442, 0
  br i1 %cmp443, label %if.then444, label %if.else446

if.then444:                                       ; preds = %if.else441
  store i32 0, ptr %nisodd, align 4, !tbaa !8
  %555 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %556 = load i32, ptr %555, align 4, !tbaa !8
  %div445 = sdiv i32 %556, 2
  store i32 %div445, ptr %k, align 4, !tbaa !8
  br label %if.end455

if.else446:                                       ; preds = %if.else441
  store i32 1, ptr %nisodd, align 4, !tbaa !8
  %557 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool447 = icmp ne i32 %557, 0
  br i1 %tobool447, label %if.then448, label %if.else451

if.then448:                                       ; preds = %if.else446
  %558 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %559 = load i32, ptr %558, align 4, !tbaa !8
  %div449 = sdiv i32 %559, 2
  store i32 %div449, ptr %n2, align 4, !tbaa !8
  %560 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %561 = load i32, ptr %560, align 4, !tbaa !8
  %562 = load i32, ptr %n2, align 4, !tbaa !8
  %sub450 = sub nsw i32 %561, %562
  store i32 %sub450, ptr %n1, align 4, !tbaa !8
  br label %if.end454

if.else451:                                       ; preds = %if.else446
  %563 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %564 = load i32, ptr %563, align 4, !tbaa !8
  %div452 = sdiv i32 %564, 2
  store i32 %div452, ptr %n1, align 4, !tbaa !8
  %565 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %566 = load i32, ptr %565, align 4, !tbaa !8
  %567 = load i32, ptr %n1, align 4, !tbaa !8
  %sub453 = sub nsw i32 %566, %567
  store i32 %sub453, ptr %n2, align 4, !tbaa !8
  br label %if.end454

if.end454:                                        ; preds = %if.else451, %if.then448
  br label %if.end455

if.end455:                                        ; preds = %if.end454, %if.then444
  %568 = load i32, ptr %nisodd, align 4, !tbaa !8
  %tobool456 = icmp ne i32 %568, 0
  br i1 %tobool456, label %if.then457, label %if.else594

if.then457:                                       ; preds = %if.end455
  %569 = load i32, ptr %normaltransr, align 4, !tbaa !8
  %tobool458 = icmp ne i32 %569, 0
  br i1 %tobool458, label %if.then459, label %if.else524

if.then459:                                       ; preds = %if.then457
  %570 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool460 = icmp ne i32 %570, 0
  br i1 %tobool460, label %if.then461, label %if.else492

if.then461:                                       ; preds = %if.then459
  %571 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool462 = icmp ne i32 %571, 0
  br i1 %tobool462, label %if.then463, label %if.else477

if.then463:                                       ; preds = %if.then461
  %572 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %573 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %574 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %575 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %576 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %577 = load i32, ptr %576, align 4, !tbaa !8
  %idxprom464 = sext i32 %577 to i64
  %arrayidx465 = getelementptr inbounds float, ptr %575, i64 %idxprom464
  %578 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %579 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %580 = load i32, ptr %n1, align 4, !tbaa !8
  %581 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul466 = mul nsw i32 %580, %581
  %idxprom467 = sext i32 %mul466 to i64
  %arrayidx468 = getelementptr inbounds float, ptr %579, i64 %idxprom467
  %582 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call469 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %572, ptr noundef %573, ptr noundef %n2, ptr noundef %574, ptr noundef %arrayidx465, ptr noundef %578, ptr noundef %arrayidx468, ptr noundef %582)
  %583 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %584 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %585 = load i32, ptr %n1, align 4, !tbaa !8
  %586 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul470 = mul nsw i32 %585, %586
  %idxprom471 = sext i32 %mul470 to i64
  %arrayidx472 = getelementptr inbounds float, ptr %584, i64 %idxprom471
  %587 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %588 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %589 = load i32, ptr %n1, align 4, !tbaa !8
  %idxprom473 = sext i32 %589 to i64
  %arrayidx474 = getelementptr inbounds float, ptr %588, i64 %idxprom473
  %590 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %591 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %592 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %593 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call475 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %583, ptr noundef %n1, ptr noundef %n2, ptr noundef @c_b23, ptr noundef %arrayidx472, ptr noundef %587, ptr noundef %arrayidx474, ptr noundef %590, ptr noundef %591, ptr noundef %592, ptr noundef %593)
  %594 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %595 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %596 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %597 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %598 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %599 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call476 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %594, ptr noundef %595, ptr noundef %n1, ptr noundef @c_b27, ptr noundef %596, ptr noundef %597, ptr noundef %598, ptr noundef %599)
  br label %if.end491

if.else477:                                       ; preds = %if.then461
  %600 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %601 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %602 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %603 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %604 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %605 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %606 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call478 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %600, ptr noundef %601, ptr noundef %n1, ptr noundef %602, ptr noundef %603, ptr noundef %604, ptr noundef %605, ptr noundef %606)
  %607 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %608 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %609 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %610 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %611 = load i32, ptr %n1, align 4, !tbaa !8
  %idxprom479 = sext i32 %611 to i64
  %arrayidx480 = getelementptr inbounds float, ptr %610, i64 %idxprom479
  %612 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %613 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %614 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %615 = load i32, ptr %n1, align 4, !tbaa !8
  %616 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul481 = mul nsw i32 %615, %616
  %idxprom482 = sext i32 %mul481 to i64
  %arrayidx483 = getelementptr inbounds float, ptr %614, i64 %idxprom482
  %617 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call484 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %607, ptr noundef %n2, ptr noundef %n1, ptr noundef @c_b23, ptr noundef %608, ptr noundef %609, ptr noundef %arrayidx480, ptr noundef %612, ptr noundef %613, ptr noundef %arrayidx483, ptr noundef %617)
  %618 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %619 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %620 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %621 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %622 = load i32, ptr %621, align 4, !tbaa !8
  %idxprom485 = sext i32 %622 to i64
  %arrayidx486 = getelementptr inbounds float, ptr %620, i64 %idxprom485
  %623 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %624 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %625 = load i32, ptr %n1, align 4, !tbaa !8
  %626 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul487 = mul nsw i32 %625, %626
  %idxprom488 = sext i32 %mul487 to i64
  %arrayidx489 = getelementptr inbounds float, ptr %624, i64 %idxprom488
  %627 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call490 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %618, ptr noundef %619, ptr noundef %n2, ptr noundef @c_b27, ptr noundef %arrayidx486, ptr noundef %623, ptr noundef %arrayidx489, ptr noundef %627)
  br label %if.end491

if.end491:                                        ; preds = %if.else477, %if.then463
  br label %if.end523

if.else492:                                       ; preds = %if.then459
  %628 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool493 = icmp ne i32 %628, 0
  br i1 %tobool493, label %if.then494, label %if.else508

if.then494:                                       ; preds = %if.else492
  %629 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %630 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %631 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %632 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %633 = load i32, ptr %n2, align 4, !tbaa !8
  %idxprom495 = sext i32 %633 to i64
  %arrayidx496 = getelementptr inbounds float, ptr %632, i64 %idxprom495
  %634 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %635 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %636 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call497 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %629, ptr noundef %630, ptr noundef %n1, ptr noundef %631, ptr noundef %arrayidx496, ptr noundef %634, ptr noundef %635, ptr noundef %636)
  %637 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %638 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %639 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %640 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %641 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %642 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %643 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %644 = load i32, ptr %n1, align 4, !tbaa !8
  %645 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul498 = mul nsw i32 %644, %645
  %idxprom499 = sext i32 %mul498 to i64
  %arrayidx500 = getelementptr inbounds float, ptr %643, i64 %idxprom499
  %646 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call501 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %637, ptr noundef %n2, ptr noundef %n1, ptr noundef @c_b23, ptr noundef %638, ptr noundef %639, ptr noundef %640, ptr noundef %641, ptr noundef %642, ptr noundef %arrayidx500, ptr noundef %646)
  %647 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %648 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %649 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %650 = load i32, ptr %n1, align 4, !tbaa !8
  %idxprom502 = sext i32 %650 to i64
  %arrayidx503 = getelementptr inbounds float, ptr %649, i64 %idxprom502
  %651 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %652 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %653 = load i32, ptr %n1, align 4, !tbaa !8
  %654 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul504 = mul nsw i32 %653, %654
  %idxprom505 = sext i32 %mul504 to i64
  %arrayidx506 = getelementptr inbounds float, ptr %652, i64 %idxprom505
  %655 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call507 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %647, ptr noundef %648, ptr noundef %n2, ptr noundef @c_b27, ptr noundef %arrayidx503, ptr noundef %651, ptr noundef %arrayidx506, ptr noundef %655)
  br label %if.end522

if.else508:                                       ; preds = %if.else492
  %656 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %657 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %658 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %659 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %660 = load i32, ptr %n1, align 4, !tbaa !8
  %idxprom509 = sext i32 %660 to i64
  %arrayidx510 = getelementptr inbounds float, ptr %659, i64 %idxprom509
  %661 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %662 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %663 = load i32, ptr %n1, align 4, !tbaa !8
  %664 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul511 = mul nsw i32 %663, %664
  %idxprom512 = sext i32 %mul511 to i64
  %arrayidx513 = getelementptr inbounds float, ptr %662, i64 %idxprom512
  %665 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call514 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %656, ptr noundef %657, ptr noundef %n2, ptr noundef %658, ptr noundef %arrayidx510, ptr noundef %661, ptr noundef %arrayidx513, ptr noundef %665)
  %666 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %667 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %668 = load i32, ptr %n1, align 4, !tbaa !8
  %669 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul515 = mul nsw i32 %668, %669
  %idxprom516 = sext i32 %mul515 to i64
  %arrayidx517 = getelementptr inbounds float, ptr %667, i64 %idxprom516
  %670 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %671 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %672 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %673 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %674 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %675 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call518 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %666, ptr noundef %n1, ptr noundef %n2, ptr noundef @c_b23, ptr noundef %arrayidx517, ptr noundef %670, ptr noundef %671, ptr noundef %672, ptr noundef %673, ptr noundef %674, ptr noundef %675)
  %676 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %677 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %678 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %679 = load i32, ptr %n2, align 4, !tbaa !8
  %idxprom519 = sext i32 %679 to i64
  %arrayidx520 = getelementptr inbounds float, ptr %678, i64 %idxprom519
  %680 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %681 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %682 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call521 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %676, ptr noundef %677, ptr noundef %n1, ptr noundef @c_b27, ptr noundef %arrayidx520, ptr noundef %680, ptr noundef %681, ptr noundef %682)
  br label %if.end522

if.end522:                                        ; preds = %if.else508, %if.then494
  br label %if.end523

if.end523:                                        ; preds = %if.end522, %if.end491
  br label %if.end593

if.else524:                                       ; preds = %if.then457
  %683 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool525 = icmp ne i32 %683, 0
  br i1 %tobool525, label %if.then526, label %if.else557

if.then526:                                       ; preds = %if.else524
  %684 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool527 = icmp ne i32 %684, 0
  br i1 %tobool527, label %if.then528, label %if.else542

if.then528:                                       ; preds = %if.then526
  %685 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %686 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %687 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %688 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx529 = getelementptr inbounds float, ptr %688, i64 1
  %689 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %690 = load i32, ptr %n1, align 4, !tbaa !8
  %691 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul530 = mul nsw i32 %690, %691
  %idxprom531 = sext i32 %mul530 to i64
  %arrayidx532 = getelementptr inbounds float, ptr %689, i64 %idxprom531
  %692 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call533 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %685, ptr noundef %686, ptr noundef %n2, ptr noundef %687, ptr noundef %arrayidx529, ptr noundef %n1, ptr noundef %arrayidx532, ptr noundef %692)
  %693 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %694 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %695 = load i32, ptr %n1, align 4, !tbaa !8
  %696 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul534 = mul nsw i32 %695, %696
  %idxprom535 = sext i32 %mul534 to i64
  %arrayidx536 = getelementptr inbounds float, ptr %694, i64 %idxprom535
  %697 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %698 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %699 = load i32, ptr %n1, align 4, !tbaa !8
  %700 = load i32, ptr %n1, align 4, !tbaa !8
  %mul537 = mul nsw i32 %699, %700
  %idxprom538 = sext i32 %mul537 to i64
  %arrayidx539 = getelementptr inbounds float, ptr %698, i64 %idxprom538
  %701 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %702 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %703 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call540 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %693, ptr noundef %n1, ptr noundef %n2, ptr noundef @c_b23, ptr noundef %arrayidx536, ptr noundef %697, ptr noundef %arrayidx539, ptr noundef %n1, ptr noundef %701, ptr noundef %702, ptr noundef %703)
  %704 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %705 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %706 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %707 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %708 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call541 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %704, ptr noundef %705, ptr noundef %n1, ptr noundef @c_b27, ptr noundef %706, ptr noundef %n1, ptr noundef %707, ptr noundef %708)
  br label %if.end556

if.else542:                                       ; preds = %if.then526
  %709 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %710 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %711 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %712 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %713 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %714 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call543 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %709, ptr noundef %710, ptr noundef %n1, ptr noundef %711, ptr noundef %712, ptr noundef %n1, ptr noundef %713, ptr noundef %714)
  %715 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %716 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %717 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %718 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %719 = load i32, ptr %n1, align 4, !tbaa !8
  %720 = load i32, ptr %n1, align 4, !tbaa !8
  %mul544 = mul nsw i32 %719, %720
  %idxprom545 = sext i32 %mul544 to i64
  %arrayidx546 = getelementptr inbounds float, ptr %718, i64 %idxprom545
  %721 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %722 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %723 = load i32, ptr %n1, align 4, !tbaa !8
  %724 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul547 = mul nsw i32 %723, %724
  %idxprom548 = sext i32 %mul547 to i64
  %arrayidx549 = getelementptr inbounds float, ptr %722, i64 %idxprom548
  %725 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call550 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %715, ptr noundef %n2, ptr noundef %n1, ptr noundef @c_b23, ptr noundef %716, ptr noundef %717, ptr noundef %arrayidx546, ptr noundef %n1, ptr noundef %721, ptr noundef %arrayidx549, ptr noundef %725)
  %726 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %727 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %728 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx551 = getelementptr inbounds float, ptr %728, i64 1
  %729 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %730 = load i32, ptr %n1, align 4, !tbaa !8
  %731 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul552 = mul nsw i32 %730, %731
  %idxprom553 = sext i32 %mul552 to i64
  %arrayidx554 = getelementptr inbounds float, ptr %729, i64 %idxprom553
  %732 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call555 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %726, ptr noundef %727, ptr noundef %n2, ptr noundef @c_b27, ptr noundef %arrayidx551, ptr noundef %n1, ptr noundef %arrayidx554, ptr noundef %732)
  br label %if.end556

if.end556:                                        ; preds = %if.else542, %if.then528
  br label %if.end592

if.else557:                                       ; preds = %if.else524
  %733 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool558 = icmp ne i32 %733, 0
  br i1 %tobool558, label %if.then559, label %if.else575

if.then559:                                       ; preds = %if.else557
  %734 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %735 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %736 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %737 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %738 = load i32, ptr %n2, align 4, !tbaa !8
  %739 = load i32, ptr %n2, align 4, !tbaa !8
  %mul560 = mul nsw i32 %738, %739
  %idxprom561 = sext i32 %mul560 to i64
  %arrayidx562 = getelementptr inbounds float, ptr %737, i64 %idxprom561
  %740 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %741 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call563 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %734, ptr noundef %735, ptr noundef %n1, ptr noundef %736, ptr noundef %arrayidx562, ptr noundef %n2, ptr noundef %740, ptr noundef %741)
  %742 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %743 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %744 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %745 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %746 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %747 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %748 = load i32, ptr %n1, align 4, !tbaa !8
  %749 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul564 = mul nsw i32 %748, %749
  %idxprom565 = sext i32 %mul564 to i64
  %arrayidx566 = getelementptr inbounds float, ptr %747, i64 %idxprom565
  %750 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call567 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %742, ptr noundef %n2, ptr noundef %n1, ptr noundef @c_b23, ptr noundef %743, ptr noundef %744, ptr noundef %745, ptr noundef %n2, ptr noundef %746, ptr noundef %arrayidx566, ptr noundef %750)
  %751 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %752 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %753 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %754 = load i32, ptr %n1, align 4, !tbaa !8
  %755 = load i32, ptr %n2, align 4, !tbaa !8
  %mul568 = mul nsw i32 %754, %755
  %idxprom569 = sext i32 %mul568 to i64
  %arrayidx570 = getelementptr inbounds float, ptr %753, i64 %idxprom569
  %756 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %757 = load i32, ptr %n1, align 4, !tbaa !8
  %758 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul571 = mul nsw i32 %757, %758
  %idxprom572 = sext i32 %mul571 to i64
  %arrayidx573 = getelementptr inbounds float, ptr %756, i64 %idxprom572
  %759 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call574 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %751, ptr noundef %752, ptr noundef %n2, ptr noundef @c_b27, ptr noundef %arrayidx570, ptr noundef %n2, ptr noundef %arrayidx573, ptr noundef %759)
  br label %if.end591

if.else575:                                       ; preds = %if.else557
  %760 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %761 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %762 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %763 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %764 = load i32, ptr %n1, align 4, !tbaa !8
  %765 = load i32, ptr %n2, align 4, !tbaa !8
  %mul576 = mul nsw i32 %764, %765
  %idxprom577 = sext i32 %mul576 to i64
  %arrayidx578 = getelementptr inbounds float, ptr %763, i64 %idxprom577
  %766 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %767 = load i32, ptr %n1, align 4, !tbaa !8
  %768 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul579 = mul nsw i32 %767, %768
  %idxprom580 = sext i32 %mul579 to i64
  %arrayidx581 = getelementptr inbounds float, ptr %766, i64 %idxprom580
  %769 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call582 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %760, ptr noundef %761, ptr noundef %n2, ptr noundef %762, ptr noundef %arrayidx578, ptr noundef %n2, ptr noundef %arrayidx581, ptr noundef %769)
  %770 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %771 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %772 = load i32, ptr %n1, align 4, !tbaa !8
  %773 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul583 = mul nsw i32 %772, %773
  %idxprom584 = sext i32 %mul583 to i64
  %arrayidx585 = getelementptr inbounds float, ptr %771, i64 %idxprom584
  %774 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %775 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %776 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %777 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %778 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call586 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %770, ptr noundef %n1, ptr noundef %n2, ptr noundef @c_b23, ptr noundef %arrayidx585, ptr noundef %774, ptr noundef %775, ptr noundef %n2, ptr noundef %776, ptr noundef %777, ptr noundef %778)
  %779 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %780 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %781 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %782 = load i32, ptr %n2, align 4, !tbaa !8
  %783 = load i32, ptr %n2, align 4, !tbaa !8
  %mul587 = mul nsw i32 %782, %783
  %idxprom588 = sext i32 %mul587 to i64
  %arrayidx589 = getelementptr inbounds float, ptr %781, i64 %idxprom588
  %784 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %785 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call590 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %779, ptr noundef %780, ptr noundef %n1, ptr noundef @c_b27, ptr noundef %arrayidx589, ptr noundef %n2, ptr noundef %784, ptr noundef %785)
  br label %if.end591

if.end591:                                        ; preds = %if.else575, %if.then559
  br label %if.end592

if.end592:                                        ; preds = %if.end591, %if.end556
  br label %if.end593

if.end593:                                        ; preds = %if.end592, %if.end523
  br label %if.end751

if.else594:                                       ; preds = %if.end455
  %786 = load i32, ptr %normaltransr, align 4, !tbaa !8
  %tobool595 = icmp ne i32 %786, 0
  br i1 %tobool595, label %if.then596, label %if.else675

if.then596:                                       ; preds = %if.else594
  %787 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool597 = icmp ne i32 %787, 0
  br i1 %tobool597, label %if.then598, label %if.else635

if.then598:                                       ; preds = %if.then596
  %788 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool599 = icmp ne i32 %788, 0
  br i1 %tobool599, label %if.then600, label %if.else617

if.then600:                                       ; preds = %if.then598
  %789 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %790 = load i32, ptr %789, align 4, !tbaa !8
  %add601 = add nsw i32 %790, 1
  store i32 %add601, ptr %i__1, align 4, !tbaa !8
  %791 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %792 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %793 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %794 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %795 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %796 = load i32, ptr %k, align 4, !tbaa !8
  %797 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul602 = mul nsw i32 %796, %797
  %idxprom603 = sext i32 %mul602 to i64
  %arrayidx604 = getelementptr inbounds float, ptr %795, i64 %idxprom603
  %798 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call605 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %791, ptr noundef %792, ptr noundef %k, ptr noundef %793, ptr noundef %794, ptr noundef %i__1, ptr noundef %arrayidx604, ptr noundef %798)
  %799 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %800 = load i32, ptr %799, align 4, !tbaa !8
  %add606 = add nsw i32 %800, 1
  store i32 %add606, ptr %i__1, align 4, !tbaa !8
  %801 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %802 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %803 = load i32, ptr %k, align 4, !tbaa !8
  %804 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul607 = mul nsw i32 %803, %804
  %idxprom608 = sext i32 %mul607 to i64
  %arrayidx609 = getelementptr inbounds float, ptr %802, i64 %idxprom608
  %805 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %806 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %807 = load i32, ptr %k, align 4, !tbaa !8
  %add610 = add nsw i32 %807, 1
  %idxprom611 = sext i32 %add610 to i64
  %arrayidx612 = getelementptr inbounds float, ptr %806, i64 %idxprom611
  %808 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %809 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %810 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call613 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %801, ptr noundef %k, ptr noundef %k, ptr noundef @c_b23, ptr noundef %arrayidx609, ptr noundef %805, ptr noundef %arrayidx612, ptr noundef %i__1, ptr noundef %808, ptr noundef %809, ptr noundef %810)
  %811 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %812 = load i32, ptr %811, align 4, !tbaa !8
  %add614 = add nsw i32 %812, 1
  store i32 %add614, ptr %i__1, align 4, !tbaa !8
  %813 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %814 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %815 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx615 = getelementptr inbounds float, ptr %815, i64 1
  %816 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %817 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call616 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %813, ptr noundef %814, ptr noundef %k, ptr noundef @c_b27, ptr noundef %arrayidx615, ptr noundef %i__1, ptr noundef %816, ptr noundef %817)
  br label %if.end634

if.else617:                                       ; preds = %if.then598
  %818 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %819 = load i32, ptr %818, align 4, !tbaa !8
  %add618 = add nsw i32 %819, 1
  store i32 %add618, ptr %i__1, align 4, !tbaa !8
  %820 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %821 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %822 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %823 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %arrayidx619 = getelementptr inbounds float, ptr %823, i64 1
  %824 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %825 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call620 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %820, ptr noundef %821, ptr noundef %k, ptr noundef %822, ptr noundef %arrayidx619, ptr noundef %i__1, ptr noundef %824, ptr noundef %825)
  %826 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %827 = load i32, ptr %826, align 4, !tbaa !8
  %add621 = add nsw i32 %827, 1
  store i32 %add621, ptr %i__1, align 4, !tbaa !8
  %828 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %829 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %830 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %831 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %832 = load i32, ptr %k, align 4, !tbaa !8
  %add622 = add nsw i32 %832, 1
  %idxprom623 = sext i32 %add622 to i64
  %arrayidx624 = getelementptr inbounds float, ptr %831, i64 %idxprom623
  %833 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %834 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %835 = load i32, ptr %k, align 4, !tbaa !8
  %836 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul625 = mul nsw i32 %835, %836
  %idxprom626 = sext i32 %mul625 to i64
  %arrayidx627 = getelementptr inbounds float, ptr %834, i64 %idxprom626
  %837 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call628 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %828, ptr noundef %k, ptr noundef %k, ptr noundef @c_b23, ptr noundef %829, ptr noundef %830, ptr noundef %arrayidx624, ptr noundef %i__1, ptr noundef %833, ptr noundef %arrayidx627, ptr noundef %837)
  %838 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %839 = load i32, ptr %838, align 4, !tbaa !8
  %add629 = add nsw i32 %839, 1
  store i32 %add629, ptr %i__1, align 4, !tbaa !8
  %840 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %841 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %842 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %843 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %844 = load i32, ptr %k, align 4, !tbaa !8
  %845 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul630 = mul nsw i32 %844, %845
  %idxprom631 = sext i32 %mul630 to i64
  %arrayidx632 = getelementptr inbounds float, ptr %843, i64 %idxprom631
  %846 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call633 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %840, ptr noundef %841, ptr noundef %k, ptr noundef @c_b27, ptr noundef %842, ptr noundef %i__1, ptr noundef %arrayidx632, ptr noundef %846)
  br label %if.end634

if.end634:                                        ; preds = %if.else617, %if.then600
  br label %if.end674

if.else635:                                       ; preds = %if.then596
  %847 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool636 = icmp ne i32 %847, 0
  br i1 %tobool636, label %if.then637, label %if.else655

if.then637:                                       ; preds = %if.else635
  %848 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %849 = load i32, ptr %848, align 4, !tbaa !8
  %add638 = add nsw i32 %849, 1
  store i32 %add638, ptr %i__1, align 4, !tbaa !8
  %850 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %851 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %852 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %853 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %854 = load i32, ptr %k, align 4, !tbaa !8
  %add639 = add nsw i32 %854, 1
  %idxprom640 = sext i32 %add639 to i64
  %arrayidx641 = getelementptr inbounds float, ptr %853, i64 %idxprom640
  %855 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %856 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call642 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %850, ptr noundef %851, ptr noundef %k, ptr noundef %852, ptr noundef %arrayidx641, ptr noundef %i__1, ptr noundef %855, ptr noundef %856)
  %857 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %858 = load i32, ptr %857, align 4, !tbaa !8
  %add643 = add nsw i32 %858, 1
  store i32 %add643, ptr %i__1, align 4, !tbaa !8
  %859 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %860 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %861 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %862 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %863 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %864 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %865 = load i32, ptr %k, align 4, !tbaa !8
  %866 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul644 = mul nsw i32 %865, %866
  %idxprom645 = sext i32 %mul644 to i64
  %arrayidx646 = getelementptr inbounds float, ptr %864, i64 %idxprom645
  %867 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call647 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %859, ptr noundef %k, ptr noundef %k, ptr noundef @c_b23, ptr noundef %860, ptr noundef %861, ptr noundef %862, ptr noundef %i__1, ptr noundef %863, ptr noundef %arrayidx646, ptr noundef %867)
  %868 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %869 = load i32, ptr %868, align 4, !tbaa !8
  %add648 = add nsw i32 %869, 1
  store i32 %add648, ptr %i__1, align 4, !tbaa !8
  %870 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %871 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %872 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %873 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom649 = sext i32 %873 to i64
  %arrayidx650 = getelementptr inbounds float, ptr %872, i64 %idxprom649
  %874 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %875 = load i32, ptr %k, align 4, !tbaa !8
  %876 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul651 = mul nsw i32 %875, %876
  %idxprom652 = sext i32 %mul651 to i64
  %arrayidx653 = getelementptr inbounds float, ptr %874, i64 %idxprom652
  %877 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call654 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %870, ptr noundef %871, ptr noundef %k, ptr noundef @c_b27, ptr noundef %arrayidx650, ptr noundef %i__1, ptr noundef %arrayidx653, ptr noundef %877)
  br label %if.end673

if.else655:                                       ; preds = %if.else635
  %878 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %879 = load i32, ptr %878, align 4, !tbaa !8
  %add656 = add nsw i32 %879, 1
  store i32 %add656, ptr %i__1, align 4, !tbaa !8
  %880 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %881 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %882 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %883 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %884 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom657 = sext i32 %884 to i64
  %arrayidx658 = getelementptr inbounds float, ptr %883, i64 %idxprom657
  %885 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %886 = load i32, ptr %k, align 4, !tbaa !8
  %887 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul659 = mul nsw i32 %886, %887
  %idxprom660 = sext i32 %mul659 to i64
  %arrayidx661 = getelementptr inbounds float, ptr %885, i64 %idxprom660
  %888 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call662 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %880, ptr noundef %881, ptr noundef %k, ptr noundef %882, ptr noundef %arrayidx658, ptr noundef %i__1, ptr noundef %arrayidx661, ptr noundef %888)
  %889 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %890 = load i32, ptr %889, align 4, !tbaa !8
  %add663 = add nsw i32 %890, 1
  store i32 %add663, ptr %i__1, align 4, !tbaa !8
  %891 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %892 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %893 = load i32, ptr %k, align 4, !tbaa !8
  %894 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul664 = mul nsw i32 %893, %894
  %idxprom665 = sext i32 %mul664 to i64
  %arrayidx666 = getelementptr inbounds float, ptr %892, i64 %idxprom665
  %895 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %896 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %897 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %898 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %899 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call667 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %891, ptr noundef %k, ptr noundef %k, ptr noundef @c_b23, ptr noundef %arrayidx666, ptr noundef %895, ptr noundef %896, ptr noundef %i__1, ptr noundef %897, ptr noundef %898, ptr noundef %899)
  %900 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %901 = load i32, ptr %900, align 4, !tbaa !8
  %add668 = add nsw i32 %901, 1
  store i32 %add668, ptr %i__1, align 4, !tbaa !8
  %902 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %903 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %904 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %905 = load i32, ptr %k, align 4, !tbaa !8
  %add669 = add nsw i32 %905, 1
  %idxprom670 = sext i32 %add669 to i64
  %arrayidx671 = getelementptr inbounds float, ptr %904, i64 %idxprom670
  %906 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %907 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call672 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %902, ptr noundef %903, ptr noundef %k, ptr noundef @c_b27, ptr noundef %arrayidx671, ptr noundef %i__1, ptr noundef %906, ptr noundef %907)
  br label %if.end673

if.end673:                                        ; preds = %if.else655, %if.then637
  br label %if.end674

if.end674:                                        ; preds = %if.end673, %if.end634
  br label %if.end750

if.else675:                                       ; preds = %if.else594
  %908 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool676 = icmp ne i32 %908, 0
  br i1 %tobool676, label %if.then677, label %if.else712

if.then677:                                       ; preds = %if.else675
  %909 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool678 = icmp ne i32 %909, 0
  br i1 %tobool678, label %if.then679, label %if.else695

if.then679:                                       ; preds = %if.then677
  %910 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %911 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %912 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %913 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %914 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %915 = load i32, ptr %k, align 4, !tbaa !8
  %916 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul680 = mul nsw i32 %915, %916
  %idxprom681 = sext i32 %mul680 to i64
  %arrayidx682 = getelementptr inbounds float, ptr %914, i64 %idxprom681
  %917 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call683 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %910, ptr noundef %911, ptr noundef %k, ptr noundef %912, ptr noundef %913, ptr noundef %k, ptr noundef %arrayidx682, ptr noundef %917)
  %918 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %919 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %920 = load i32, ptr %k, align 4, !tbaa !8
  %921 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul684 = mul nsw i32 %920, %921
  %idxprom685 = sext i32 %mul684 to i64
  %arrayidx686 = getelementptr inbounds float, ptr %919, i64 %idxprom685
  %922 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %923 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %924 = load i32, ptr %k, align 4, !tbaa !8
  %add687 = add nsw i32 %924, 1
  %925 = load i32, ptr %k, align 4, !tbaa !8
  %mul688 = mul nsw i32 %add687, %925
  %idxprom689 = sext i32 %mul688 to i64
  %arrayidx690 = getelementptr inbounds float, ptr %923, i64 %idxprom689
  %926 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %927 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %928 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call691 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %918, ptr noundef %k, ptr noundef %k, ptr noundef @c_b23, ptr noundef %arrayidx686, ptr noundef %922, ptr noundef %arrayidx690, ptr noundef %k, ptr noundef %926, ptr noundef %927, ptr noundef %928)
  %929 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %930 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %931 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %932 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom692 = sext i32 %932 to i64
  %arrayidx693 = getelementptr inbounds float, ptr %931, i64 %idxprom692
  %933 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %934 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call694 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %929, ptr noundef %930, ptr noundef %k, ptr noundef @c_b27, ptr noundef %arrayidx693, ptr noundef %k, ptr noundef %933, ptr noundef %934)
  br label %if.end711

if.else695:                                       ; preds = %if.then677
  %935 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %936 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %937 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %938 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %939 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom696 = sext i32 %939 to i64
  %arrayidx697 = getelementptr inbounds float, ptr %938, i64 %idxprom696
  %940 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %941 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call698 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %935, ptr noundef %936, ptr noundef %k, ptr noundef %937, ptr noundef %arrayidx697, ptr noundef %k, ptr noundef %940, ptr noundef %941)
  %942 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %943 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %944 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %945 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %946 = load i32, ptr %k, align 4, !tbaa !8
  %add699 = add nsw i32 %946, 1
  %947 = load i32, ptr %k, align 4, !tbaa !8
  %mul700 = mul nsw i32 %add699, %947
  %idxprom701 = sext i32 %mul700 to i64
  %arrayidx702 = getelementptr inbounds float, ptr %945, i64 %idxprom701
  %948 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %949 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %950 = load i32, ptr %k, align 4, !tbaa !8
  %951 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul703 = mul nsw i32 %950, %951
  %idxprom704 = sext i32 %mul703 to i64
  %arrayidx705 = getelementptr inbounds float, ptr %949, i64 %idxprom704
  %952 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call706 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %942, ptr noundef %k, ptr noundef %k, ptr noundef @c_b23, ptr noundef %943, ptr noundef %944, ptr noundef %arrayidx702, ptr noundef %k, ptr noundef %948, ptr noundef %arrayidx705, ptr noundef %952)
  %953 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %954 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %955 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %956 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %957 = load i32, ptr %k, align 4, !tbaa !8
  %958 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul707 = mul nsw i32 %957, %958
  %idxprom708 = sext i32 %mul707 to i64
  %arrayidx709 = getelementptr inbounds float, ptr %956, i64 %idxprom708
  %959 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call710 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %953, ptr noundef %954, ptr noundef %k, ptr noundef @c_b27, ptr noundef %955, ptr noundef %k, ptr noundef %arrayidx709, ptr noundef %959)
  br label %if.end711

if.end711:                                        ; preds = %if.else695, %if.then679
  br label %if.end749

if.else712:                                       ; preds = %if.else675
  %960 = load i32, ptr %notrans, align 4, !tbaa !8
  %tobool713 = icmp ne i32 %960, 0
  br i1 %tobool713, label %if.then714, label %if.else731

if.then714:                                       ; preds = %if.else712
  %961 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %962 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %963 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %964 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %965 = load i32, ptr %k, align 4, !tbaa !8
  %add715 = add nsw i32 %965, 1
  %966 = load i32, ptr %k, align 4, !tbaa !8
  %mul716 = mul nsw i32 %add715, %966
  %idxprom717 = sext i32 %mul716 to i64
  %arrayidx718 = getelementptr inbounds float, ptr %964, i64 %idxprom717
  %967 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %968 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call719 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str, ptr noundef %961, ptr noundef %962, ptr noundef %k, ptr noundef %963, ptr noundef %arrayidx718, ptr noundef %k, ptr noundef %967, ptr noundef %968)
  %969 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %970 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %971 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %972 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %973 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %974 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %975 = load i32, ptr %k, align 4, !tbaa !8
  %976 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul720 = mul nsw i32 %975, %976
  %idxprom721 = sext i32 %mul720 to i64
  %arrayidx722 = getelementptr inbounds float, ptr %974, i64 %idxprom721
  %977 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call723 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str.2, ptr noundef %969, ptr noundef %k, ptr noundef %k, ptr noundef @c_b23, ptr noundef %970, ptr noundef %971, ptr noundef %972, ptr noundef %k, ptr noundef %973, ptr noundef %arrayidx722, ptr noundef %977)
  %978 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %979 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %980 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %981 = load i32, ptr %k, align 4, !tbaa !8
  %982 = load i32, ptr %k, align 4, !tbaa !8
  %mul724 = mul nsw i32 %981, %982
  %idxprom725 = sext i32 %mul724 to i64
  %arrayidx726 = getelementptr inbounds float, ptr %980, i64 %idxprom725
  %983 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %984 = load i32, ptr %k, align 4, !tbaa !8
  %985 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul727 = mul nsw i32 %984, %985
  %idxprom728 = sext i32 %mul727 to i64
  %arrayidx729 = getelementptr inbounds float, ptr %983, i64 %idxprom728
  %986 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call730 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %978, ptr noundef %979, ptr noundef %k, ptr noundef @c_b27, ptr noundef %arrayidx726, ptr noundef %k, ptr noundef %arrayidx729, ptr noundef %986)
  br label %if.end748

if.else731:                                       ; preds = %if.else712
  %987 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %988 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %989 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %990 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %991 = load i32, ptr %k, align 4, !tbaa !8
  %992 = load i32, ptr %k, align 4, !tbaa !8
  %mul732 = mul nsw i32 %991, %992
  %idxprom733 = sext i32 %mul732 to i64
  %arrayidx734 = getelementptr inbounds float, ptr %990, i64 %idxprom733
  %993 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %994 = load i32, ptr %k, align 4, !tbaa !8
  %995 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul735 = mul nsw i32 %994, %995
  %idxprom736 = sext i32 %mul735 to i64
  %arrayidx737 = getelementptr inbounds float, ptr %993, i64 %idxprom736
  %996 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call738 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @.str, ptr noundef %987, ptr noundef %988, ptr noundef %k, ptr noundef %989, ptr noundef %arrayidx734, ptr noundef %k, ptr noundef %arrayidx737, ptr noundef %996)
  %997 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %998 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %999 = load i32, ptr %k, align 4, !tbaa !8
  %1000 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul739 = mul nsw i32 %999, %1000
  %idxprom740 = sext i32 %mul739 to i64
  %arrayidx741 = getelementptr inbounds float, ptr %998, i64 %idxprom740
  %1001 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %1002 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1003 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %1004 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1005 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call742 = call i32 @sgemm_(ptr noundef @.str, ptr noundef @.str, ptr noundef %997, ptr noundef %k, ptr noundef %k, ptr noundef @c_b23, ptr noundef %arrayidx741, ptr noundef %1001, ptr noundef %1002, ptr noundef %k, ptr noundef %1003, ptr noundef %1004, ptr noundef %1005)
  %1006 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %1007 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1008 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1009 = load i32, ptr %k, align 4, !tbaa !8
  %add743 = add nsw i32 %1009, 1
  %1010 = load i32, ptr %k, align 4, !tbaa !8
  %mul744 = mul nsw i32 %add743, %1010
  %idxprom745 = sext i32 %mul744 to i64
  %arrayidx746 = getelementptr inbounds float, ptr %1008, i64 %idxprom745
  %1011 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1012 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call747 = call i32 @strsm_(ptr noundef @.str.3, ptr noundef @.str.4, ptr noundef @.str.2, ptr noundef %1006, ptr noundef %1007, ptr noundef %k, ptr noundef @c_b27, ptr noundef %arrayidx746, ptr noundef %k, ptr noundef %1011, ptr noundef %1012)
  br label %if.end748

if.end748:                                        ; preds = %if.else731, %if.then714
  br label %if.end749

if.end749:                                        ; preds = %if.end748, %if.end711
  br label %if.end750

if.end750:                                        ; preds = %if.end749, %if.end674
  br label %if.end751

if.end751:                                        ; preds = %if.end750, %if.end593
  br label %if.end752

if.end752:                                        ; preds = %if.end751, %if.end440
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end752, %for.end69, %if.then55, %if.then49
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
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #3
  %1013 = load i32, ptr %retval, align 4
  ret i32 %1013
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @strsm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @sgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}

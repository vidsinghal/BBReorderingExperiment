; ModuleID = 'samples/723.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/blas/ztrmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3p_netlib_doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ZTRMM \00", align 1

; Function Attrs: nounwind uwtable
define i32 @v3p_netlib_ztrmm_(ptr noundef %side, ptr noundef %uplo, ptr noundef %transa, ptr noundef %diag, ptr noundef %m, ptr noundef %n, ptr noundef %alpha, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, i64 noundef %side_len, i64 noundef %uplo_len, i64 noundef %transa_len, i64 noundef %diag_len) #0 {
entry:
  %retval = alloca i32, align 4
  %side.addr = alloca ptr, align 8
  %uplo.addr = alloca ptr, align 8
  %transa.addr = alloca ptr, align 8
  %diag.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %side_len.addr = alloca i64, align 8
  %uplo_len.addr = alloca i64, align 8
  %transa_len.addr = alloca i64, align 8
  %diag_len.addr = alloca i64, align 8
  %a_dim1 = alloca i64, align 8
  %a_offset = alloca i64, align 8
  %b_dim1 = alloca i64, align 8
  %b_offset = alloca i64, align 8
  %i__1 = alloca i64, align 8
  %i__2 = alloca i64, align 8
  %i__3 = alloca i64, align 8
  %i__4 = alloca i64, align 8
  %i__5 = alloca i64, align 8
  %i__6 = alloca i64, align 8
  %z__1 = alloca %struct.v3p_netlib_doublecomplex, align 8
  %z__2 = alloca %struct.v3p_netlib_doublecomplex, align 8
  %z__3 = alloca %struct.v3p_netlib_doublecomplex, align 8
  %i__ = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %info = alloca i64, align 8
  %temp = alloca %struct.v3p_netlib_doublecomplex, align 8
  %lside = alloca i64, align 8
  %nrowa = alloca i64, align 8
  %upper = alloca i64, align 8
  %noconj = alloca i64, align 8
  %nounit = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %side, ptr %side.addr, align 8, !tbaa !4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %transa, ptr %transa.addr, align 8, !tbaa !4
  store ptr %diag, ptr %diag.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store i64 %side_len, ptr %side_len.addr, align 8, !tbaa !8
  store i64 %uplo_len, ptr %uplo_len.addr, align 8, !tbaa !8
  store i64 %transa_len, ptr %transa_len.addr, align 8, !tbaa !8
  store i64 %diag_len, ptr %diag_len.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_dim1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_offset) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_dim1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_offset) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__5) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__6) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__1) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__2) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr %temp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %lside) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrowa) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %upper) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %noconj) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nounit) #4
  %0 = load i64, ptr %side_len.addr, align 8, !tbaa !8
  %1 = load i64, ptr %uplo_len.addr, align 8, !tbaa !8
  %2 = load i64, ptr %transa_len.addr, align 8, !tbaa !8
  %3 = load i64, ptr %diag_len.addr, align 8, !tbaa !8
  %4 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %5 = load i64, ptr %4, align 8, !tbaa !8
  store i64 %5, ptr %a_dim1, align 8, !tbaa !8
  %6 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %add = add nsw i64 1, %6
  store i64 %add, ptr %a_offset, align 8, !tbaa !8
  %7 = load i64, ptr %a_offset, align 8, !tbaa !8
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.neg = sub i64 0, %7
  %add.ptr = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %8, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %10 = load i64, ptr %9, align 8, !tbaa !8
  store i64 %10, ptr %b_dim1, align 8, !tbaa !8
  %11 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %add1 = add nsw i64 1, %11
  store i64 %add1, ptr %b_offset, align 8, !tbaa !8
  %12 = load i64, ptr %b_offset, align 8, !tbaa !8
  %13 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %idx.neg2 = sub i64 0, %12
  %add.ptr3 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %13, i64 %idx.neg2
  store ptr %add.ptr3, ptr %b.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call = call i64 @v3p_netlib_lsame_(ptr noundef %14, ptr noundef @.str, i64 noundef 1, i64 noundef 1)
  store i64 %call, ptr %lside, align 8, !tbaa !8
  %15 = load i64, ptr %lside, align 8, !tbaa !8
  %tobool = icmp ne i64 %15, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %17 = load i64, ptr %16, align 8, !tbaa !8
  store i64 %17, ptr %nrowa, align 8, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %19 = load i64, ptr %18, align 8, !tbaa !8
  store i64 %19, ptr %nrowa, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load ptr, ptr %transa.addr, align 8, !tbaa !4
  %call4 = call i64 @v3p_netlib_lsame_(ptr noundef %20, ptr noundef @.str.1, i64 noundef 1, i64 noundef 1)
  store i64 %call4, ptr %noconj, align 8, !tbaa !8
  %21 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call5 = call i64 @v3p_netlib_lsame_(ptr noundef %21, ptr noundef @.str.2, i64 noundef 1, i64 noundef 1)
  store i64 %call5, ptr %nounit, align 8, !tbaa !8
  %22 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call6 = call i64 @v3p_netlib_lsame_(ptr noundef %22, ptr noundef @.str.3, i64 noundef 1, i64 noundef 1)
  store i64 %call6, ptr %upper, align 8, !tbaa !8
  store i64 0, ptr %info, align 8, !tbaa !8
  %23 = load i64, ptr %lside, align 8, !tbaa !8
  %tobool7 = icmp ne i64 %23, 0
  br i1 %tobool7, label %if.else11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %24 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call8 = call i64 @v3p_netlib_lsame_(ptr noundef %24, ptr noundef @.str.4, i64 noundef 1, i64 noundef 1)
  %tobool9 = icmp ne i64 %call8, 0
  br i1 %tobool9, label %if.else11, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  store i64 1, ptr %info, align 8, !tbaa !8
  br label %if.end58

if.else11:                                        ; preds = %land.lhs.true, %if.end
  %25 = load i64, ptr %upper, align 8, !tbaa !8
  %tobool12 = icmp ne i64 %25, 0
  br i1 %tobool12, label %if.else17, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.else11
  %26 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call14 = call i64 @v3p_netlib_lsame_(ptr noundef %26, ptr noundef @.str, i64 noundef 1, i64 noundef 1)
  %tobool15 = icmp ne i64 %call14, 0
  br i1 %tobool15, label %if.else17, label %if.then16

if.then16:                                        ; preds = %land.lhs.true13
  store i64 2, ptr %info, align 8, !tbaa !8
  br label %if.end57

if.else17:                                        ; preds = %land.lhs.true13, %if.else11
  %27 = load ptr, ptr %transa.addr, align 8, !tbaa !4
  %call18 = call i64 @v3p_netlib_lsame_(ptr noundef %27, ptr noundef @.str.2, i64 noundef 1, i64 noundef 1)
  %tobool19 = icmp ne i64 %call18, 0
  br i1 %tobool19, label %if.else27, label %land.lhs.true20

land.lhs.true20:                                  ; preds = %if.else17
  %28 = load ptr, ptr %transa.addr, align 8, !tbaa !4
  %call21 = call i64 @v3p_netlib_lsame_(ptr noundef %28, ptr noundef @.str.1, i64 noundef 1, i64 noundef 1)
  %tobool22 = icmp ne i64 %call21, 0
  br i1 %tobool22, label %if.else27, label %land.lhs.true23

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %29 = load ptr, ptr %transa.addr, align 8, !tbaa !4
  %call24 = call i64 @v3p_netlib_lsame_(ptr noundef %29, ptr noundef @.str.5, i64 noundef 1, i64 noundef 1)
  %tobool25 = icmp ne i64 %call24, 0
  br i1 %tobool25, label %if.else27, label %if.then26

if.then26:                                        ; preds = %land.lhs.true23
  store i64 3, ptr %info, align 8, !tbaa !8
  br label %if.end56

if.else27:                                        ; preds = %land.lhs.true23, %land.lhs.true20, %if.else17
  %30 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call28 = call i64 @v3p_netlib_lsame_(ptr noundef %30, ptr noundef @.str.3, i64 noundef 1, i64 noundef 1)
  %tobool29 = icmp ne i64 %call28, 0
  br i1 %tobool29, label %if.else34, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.else27
  %31 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %call31 = call i64 @v3p_netlib_lsame_(ptr noundef %31, ptr noundef @.str.2, i64 noundef 1, i64 noundef 1)
  %tobool32 = icmp ne i64 %call31, 0
  br i1 %tobool32, label %if.else34, label %if.then33

if.then33:                                        ; preds = %land.lhs.true30
  store i64 4, ptr %info, align 8, !tbaa !8
  br label %if.end55

if.else34:                                        ; preds = %land.lhs.true30, %if.else27
  %32 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %33 = load i64, ptr %32, align 8, !tbaa !8
  %cmp = icmp slt i64 %33, 0
  br i1 %cmp, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.else34
  store i64 5, ptr %info, align 8, !tbaa !8
  br label %if.end54

if.else36:                                        ; preds = %if.else34
  %34 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %35 = load i64, ptr %34, align 8, !tbaa !8
  %cmp37 = icmp slt i64 %35, 0
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else36
  store i64 6, ptr %info, align 8, !tbaa !8
  br label %if.end53

if.else39:                                        ; preds = %if.else36
  %36 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %37 = load i64, ptr %36, align 8, !tbaa !8
  %38 = load i64, ptr %nrowa, align 8, !tbaa !8
  %cmp40 = icmp sge i64 1, %38
  br i1 %cmp40, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else39
  br label %cond.end

cond.false:                                       ; preds = %if.else39
  %39 = load i64, ptr %nrowa, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %39, %cond.false ]
  %cmp41 = icmp slt i64 %37, %cond
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %cond.end
  store i64 9, ptr %info, align 8, !tbaa !8
  br label %if.end52

if.else43:                                        ; preds = %cond.end
  %40 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %41 = load i64, ptr %40, align 8, !tbaa !8
  %42 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %43 = load i64, ptr %42, align 8, !tbaa !8
  %cmp44 = icmp sge i64 1, %43
  br i1 %cmp44, label %cond.true45, label %cond.false46

cond.true45:                                      ; preds = %if.else43
  br label %cond.end47

cond.false46:                                     ; preds = %if.else43
  %44 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %45 = load i64, ptr %44, align 8, !tbaa !8
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.true45
  %cond48 = phi i64 [ 1, %cond.true45 ], [ %45, %cond.false46 ]
  %cmp49 = icmp slt i64 %41, %cond48
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %cond.end47
  store i64 11, ptr %info, align 8, !tbaa !8
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %cond.end47
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then42
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then38
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then35
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then33
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then26
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then16
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then10
  %46 = load i64, ptr %info, align 8, !tbaa !8
  %cmp59 = icmp ne i64 %46, 0
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end58
  %call61 = call i32 @v3p_netlib_xerbla_(ptr noundef @.str.6, ptr noundef %info, i64 noundef 6)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end62:                                         ; preds = %if.end58
  %47 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %48 = load i64, ptr %47, align 8, !tbaa !8
  %cmp63 = icmp eq i64 %48, 0
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end62
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.end62
  %49 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %49, i32 0, i32 0
  %50 = load double, ptr %r, align 8, !tbaa !10
  %cmp66 = fcmp oeq double %50, 0.000000e+00
  br i1 %cmp66, label %land.lhs.true67, label %if.end81

land.lhs.true67:                                  ; preds = %if.end65
  %51 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %51, i32 0, i32 1
  %52 = load double, ptr %i, align 8, !tbaa !13
  %cmp68 = fcmp oeq double %52, 0.000000e+00
  br i1 %cmp68, label %if.then69, label %if.end81

if.then69:                                        ; preds = %land.lhs.true67
  %53 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %54 = load i64, ptr %53, align 8, !tbaa !8
  store i64 %54, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %j, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc78, %if.then69
  %55 = load i64, ptr %j, align 8, !tbaa !8
  %56 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp70 = icmp sle i64 %55, %56
  br i1 %cmp70, label %for.body, label %for.end80

for.body:                                         ; preds = %for.cond
  %57 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %58 = load i64, ptr %57, align 8, !tbaa !8
  store i64 %58, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc, %for.body
  %59 = load i64, ptr %i__, align 8, !tbaa !8
  %60 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp72 = icmp sle i64 %59, %60
  br i1 %cmp72, label %for.body73, label %for.end

for.body73:                                       ; preds = %for.cond71
  %61 = load i64, ptr %i__, align 8, !tbaa !8
  %62 = load i64, ptr %j, align 8, !tbaa !8
  %63 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul = mul nsw i64 %62, %63
  %add74 = add nsw i64 %61, %mul
  store i64 %add74, ptr %i__3, align 8, !tbaa !8
  %64 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %65 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %64, i64 %65
  %r75 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx, i32 0, i32 0
  store double 0.000000e+00, ptr %r75, align 8, !tbaa !10
  %66 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %67 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx76 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %66, i64 %67
  %i77 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx76, i32 0, i32 1
  store double 0.000000e+00, ptr %i77, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body73
  %68 = load i64, ptr %i__, align 8, !tbaa !8
  %inc = add nsw i64 %68, 1
  store i64 %inc, ptr %i__, align 8, !tbaa !8
  br label %for.cond71, !llvm.loop !14

for.end:                                          ; preds = %for.cond71
  br label %for.inc78

for.inc78:                                        ; preds = %for.end
  %69 = load i64, ptr %j, align 8, !tbaa !8
  %inc79 = add nsw i64 %69, 1
  store i64 %inc79, ptr %j, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !16

for.end80:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end81:                                         ; preds = %land.lhs.true67, %if.end65
  %70 = load i64, ptr %lside, align 8, !tbaa !8
  %tobool82 = icmp ne i64 %70, 0
  br i1 %tobool82, label %if.then83, label %if.else745

if.then83:                                        ; preds = %if.end81
  %71 = load ptr, ptr %transa.addr, align 8, !tbaa !4
  %call84 = call i64 @v3p_netlib_lsame_(ptr noundef %71, ptr noundef @.str.2, i64 noundef 1, i64 noundef 1)
  %tobool85 = icmp ne i64 %call84, 0
  br i1 %tobool85, label %if.then86, label %if.else361

if.then86:                                        ; preds = %if.then83
  %72 = load i64, ptr %upper, align 8, !tbaa !8
  %tobool87 = icmp ne i64 %72, 0
  br i1 %tobool87, label %if.then88, label %if.else218

if.then88:                                        ; preds = %if.then86
  %73 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %74 = load i64, ptr %73, align 8, !tbaa !8
  store i64 %74, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %j, align 8, !tbaa !8
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc215, %if.then88
  %75 = load i64, ptr %j, align 8, !tbaa !8
  %76 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp90 = icmp sle i64 %75, %76
  br i1 %cmp90, label %for.body91, label %for.end217

for.body91:                                       ; preds = %for.cond89
  %77 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %78 = load i64, ptr %77, align 8, !tbaa !8
  store i64 %78, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %k, align 8, !tbaa !8
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc212, %for.body91
  %79 = load i64, ptr %k, align 8, !tbaa !8
  %80 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp93 = icmp sle i64 %79, %80
  br i1 %cmp93, label %for.body94, label %for.end214

for.body94:                                       ; preds = %for.cond92
  %81 = load i64, ptr %k, align 8, !tbaa !8
  %82 = load i64, ptr %j, align 8, !tbaa !8
  %83 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul95 = mul nsw i64 %82, %83
  %add96 = add nsw i64 %81, %mul95
  store i64 %add96, ptr %i__3, align 8, !tbaa !8
  %84 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %85 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx97 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %84, i64 %85
  %r98 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx97, i32 0, i32 0
  %86 = load double, ptr %r98, align 8, !tbaa !10
  %cmp99 = fcmp une double %86, 0.000000e+00
  br i1 %cmp99, label %if.then103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body94
  %87 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %88 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx100 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %87, i64 %88
  %i101 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx100, i32 0, i32 1
  %89 = load double, ptr %i101, align 8, !tbaa !13
  %cmp102 = fcmp une double %89, 0.000000e+00
  br i1 %cmp102, label %if.then103, label %if.end211

if.then103:                                       ; preds = %lor.lhs.false, %for.body94
  %90 = load i64, ptr %k, align 8, !tbaa !8
  %91 = load i64, ptr %j, align 8, !tbaa !8
  %92 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul104 = mul nsw i64 %91, %92
  %add105 = add nsw i64 %90, %mul104
  store i64 %add105, ptr %i__3, align 8, !tbaa !8
  %93 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r106 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %93, i32 0, i32 0
  %94 = load double, ptr %r106, align 8, !tbaa !10
  %95 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %96 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx107 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %95, i64 %96
  %r108 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx107, i32 0, i32 0
  %97 = load double, ptr %r108, align 8, !tbaa !10
  %98 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i110 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %98, i32 0, i32 1
  %99 = load double, ptr %i110, align 8, !tbaa !13
  %100 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %101 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx111 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %100, i64 %101
  %i112 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx111, i32 0, i32 1
  %102 = load double, ptr %i112, align 8, !tbaa !13
  %mul113 = fmul double %99, %102
  %neg = fneg double %mul113
  %103 = call double @llvm.fmuladd.f64(double %94, double %97, double %neg)
  %r114 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %103, ptr %r114, align 8, !tbaa !10
  %104 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r115 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %104, i32 0, i32 0
  %105 = load double, ptr %r115, align 8, !tbaa !10
  %106 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %107 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx116 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %106, i64 %107
  %i117 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx116, i32 0, i32 1
  %108 = load double, ptr %i117, align 8, !tbaa !13
  %109 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i119 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %109, i32 0, i32 1
  %110 = load double, ptr %i119, align 8, !tbaa !13
  %111 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %112 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx120 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %111, i64 %112
  %r121 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx120, i32 0, i32 0
  %113 = load double, ptr %r121, align 8, !tbaa !10
  %mul122 = fmul double %110, %113
  %114 = call double @llvm.fmuladd.f64(double %105, double %108, double %mul122)
  %i123 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %114, ptr %i123, align 8, !tbaa !13
  %r124 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %115 = load double, ptr %r124, align 8, !tbaa !10
  %r125 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %115, ptr %r125, align 8, !tbaa !10
  %i126 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %116 = load double, ptr %i126, align 8, !tbaa !13
  %i127 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %116, ptr %i127, align 8, !tbaa !13
  %117 = load i64, ptr %k, align 8, !tbaa !8
  %sub = sub nsw i64 %117, 1
  store i64 %sub, ptr %i__3, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc172, %if.then103
  %118 = load i64, ptr %i__, align 8, !tbaa !8
  %119 = load i64, ptr %i__3, align 8, !tbaa !8
  %cmp129 = icmp sle i64 %118, %119
  br i1 %cmp129, label %for.body130, label %for.end174

for.body130:                                      ; preds = %for.cond128
  %120 = load i64, ptr %i__, align 8, !tbaa !8
  %121 = load i64, ptr %j, align 8, !tbaa !8
  %122 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul131 = mul nsw i64 %121, %122
  %add132 = add nsw i64 %120, %mul131
  store i64 %add132, ptr %i__4, align 8, !tbaa !8
  %123 = load i64, ptr %i__, align 8, !tbaa !8
  %124 = load i64, ptr %j, align 8, !tbaa !8
  %125 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul133 = mul nsw i64 %124, %125
  %add134 = add nsw i64 %123, %mul133
  store i64 %add134, ptr %i__5, align 8, !tbaa !8
  %126 = load i64, ptr %i__, align 8, !tbaa !8
  %127 = load i64, ptr %k, align 8, !tbaa !8
  %128 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul135 = mul nsw i64 %127, %128
  %add136 = add nsw i64 %126, %mul135
  store i64 %add136, ptr %i__6, align 8, !tbaa !8
  %r137 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %129 = load double, ptr %r137, align 8, !tbaa !10
  %130 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %131 = load i64, ptr %i__6, align 8, !tbaa !8
  %arrayidx138 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %130, i64 %131
  %r139 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx138, i32 0, i32 0
  %132 = load double, ptr %r139, align 8, !tbaa !10
  %i141 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %133 = load double, ptr %i141, align 8, !tbaa !13
  %134 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %135 = load i64, ptr %i__6, align 8, !tbaa !8
  %arrayidx142 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %134, i64 %135
  %i143 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx142, i32 0, i32 1
  %136 = load double, ptr %i143, align 8, !tbaa !13
  %mul144 = fmul double %133, %136
  %neg145 = fneg double %mul144
  %137 = call double @llvm.fmuladd.f64(double %129, double %132, double %neg145)
  %r146 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  store double %137, ptr %r146, align 8, !tbaa !10
  %r147 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %138 = load double, ptr %r147, align 8, !tbaa !10
  %139 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %140 = load i64, ptr %i__6, align 8, !tbaa !8
  %arrayidx148 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %139, i64 %140
  %i149 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx148, i32 0, i32 1
  %141 = load double, ptr %i149, align 8, !tbaa !13
  %i151 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %142 = load double, ptr %i151, align 8, !tbaa !13
  %143 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %144 = load i64, ptr %i__6, align 8, !tbaa !8
  %arrayidx152 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %143, i64 %144
  %r153 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx152, i32 0, i32 0
  %145 = load double, ptr %r153, align 8, !tbaa !10
  %mul154 = fmul double %142, %145
  %146 = call double @llvm.fmuladd.f64(double %138, double %141, double %mul154)
  %i155 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  store double %146, ptr %i155, align 8, !tbaa !13
  %147 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %148 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx156 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %147, i64 %148
  %r157 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx156, i32 0, i32 0
  %149 = load double, ptr %r157, align 8, !tbaa !10
  %r158 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %150 = load double, ptr %r158, align 8, !tbaa !10
  %add159 = fadd double %149, %150
  %r160 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %add159, ptr %r160, align 8, !tbaa !10
  %151 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %152 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx161 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %151, i64 %152
  %i162 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx161, i32 0, i32 1
  %153 = load double, ptr %i162, align 8, !tbaa !13
  %i163 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %154 = load double, ptr %i163, align 8, !tbaa !13
  %add164 = fadd double %153, %154
  %i165 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %add164, ptr %i165, align 8, !tbaa !13
  %r166 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %155 = load double, ptr %r166, align 8, !tbaa !10
  %156 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %157 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx167 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %156, i64 %157
  %r168 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx167, i32 0, i32 0
  store double %155, ptr %r168, align 8, !tbaa !10
  %i169 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %158 = load double, ptr %i169, align 8, !tbaa !13
  %159 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %160 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx170 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %159, i64 %160
  %i171 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx170, i32 0, i32 1
  store double %158, ptr %i171, align 8, !tbaa !13
  br label %for.inc172

for.inc172:                                       ; preds = %for.body130
  %161 = load i64, ptr %i__, align 8, !tbaa !8
  %inc173 = add nsw i64 %161, 1
  store i64 %inc173, ptr %i__, align 8, !tbaa !8
  br label %for.cond128, !llvm.loop !17

for.end174:                                       ; preds = %for.cond128
  %162 = load i64, ptr %nounit, align 8, !tbaa !8
  %tobool175 = icmp ne i64 %162, 0
  br i1 %tobool175, label %if.then176, label %if.end202

if.then176:                                       ; preds = %for.end174
  %163 = load i64, ptr %k, align 8, !tbaa !8
  %164 = load i64, ptr %k, align 8, !tbaa !8
  %165 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul177 = mul nsw i64 %164, %165
  %add178 = add nsw i64 %163, %mul177
  store i64 %add178, ptr %i__3, align 8, !tbaa !8
  %r179 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %166 = load double, ptr %r179, align 8, !tbaa !10
  %167 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %168 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx180 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %167, i64 %168
  %r181 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx180, i32 0, i32 0
  %169 = load double, ptr %r181, align 8, !tbaa !10
  %i183 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %170 = load double, ptr %i183, align 8, !tbaa !13
  %171 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %172 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx184 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %171, i64 %172
  %i185 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx184, i32 0, i32 1
  %173 = load double, ptr %i185, align 8, !tbaa !13
  %mul186 = fmul double %170, %173
  %neg187 = fneg double %mul186
  %174 = call double @llvm.fmuladd.f64(double %166, double %169, double %neg187)
  %r188 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %174, ptr %r188, align 8, !tbaa !10
  %r189 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %175 = load double, ptr %r189, align 8, !tbaa !10
  %176 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %177 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx190 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %176, i64 %177
  %i191 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx190, i32 0, i32 1
  %178 = load double, ptr %i191, align 8, !tbaa !13
  %i193 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %179 = load double, ptr %i193, align 8, !tbaa !13
  %180 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %181 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx194 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %180, i64 %181
  %r195 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx194, i32 0, i32 0
  %182 = load double, ptr %r195, align 8, !tbaa !10
  %mul196 = fmul double %179, %182
  %183 = call double @llvm.fmuladd.f64(double %175, double %178, double %mul196)
  %i197 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %183, ptr %i197, align 8, !tbaa !13
  %r198 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %184 = load double, ptr %r198, align 8, !tbaa !10
  %r199 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %184, ptr %r199, align 8, !tbaa !10
  %i200 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %185 = load double, ptr %i200, align 8, !tbaa !13
  %i201 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %185, ptr %i201, align 8, !tbaa !13
  br label %if.end202

if.end202:                                        ; preds = %if.then176, %for.end174
  %186 = load i64, ptr %k, align 8, !tbaa !8
  %187 = load i64, ptr %j, align 8, !tbaa !8
  %188 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul203 = mul nsw i64 %187, %188
  %add204 = add nsw i64 %186, %mul203
  store i64 %add204, ptr %i__3, align 8, !tbaa !8
  %r205 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %189 = load double, ptr %r205, align 8, !tbaa !10
  %190 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %191 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx206 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %190, i64 %191
  %r207 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx206, i32 0, i32 0
  store double %189, ptr %r207, align 8, !tbaa !10
  %i208 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %192 = load double, ptr %i208, align 8, !tbaa !13
  %193 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %194 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx209 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %193, i64 %194
  %i210 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx209, i32 0, i32 1
  store double %192, ptr %i210, align 8, !tbaa !13
  br label %if.end211

if.end211:                                        ; preds = %if.end202, %lor.lhs.false
  br label %for.inc212

for.inc212:                                       ; preds = %if.end211
  %195 = load i64, ptr %k, align 8, !tbaa !8
  %inc213 = add nsw i64 %195, 1
  store i64 %inc213, ptr %k, align 8, !tbaa !8
  br label %for.cond92, !llvm.loop !18

for.end214:                                       ; preds = %for.cond92
  br label %for.inc215

for.inc215:                                       ; preds = %for.end214
  %196 = load i64, ptr %j, align 8, !tbaa !8
  %inc216 = add nsw i64 %196, 1
  store i64 %inc216, ptr %j, align 8, !tbaa !8
  br label %for.cond89, !llvm.loop !19

for.end217:                                       ; preds = %for.cond89
  br label %if.end360

if.else218:                                       ; preds = %if.then86
  %197 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %198 = load i64, ptr %197, align 8, !tbaa !8
  store i64 %198, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %j, align 8, !tbaa !8
  br label %for.cond219

for.cond219:                                      ; preds = %for.inc357, %if.else218
  %199 = load i64, ptr %j, align 8, !tbaa !8
  %200 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp220 = icmp sle i64 %199, %200
  br i1 %cmp220, label %for.body221, label %for.end359

for.body221:                                      ; preds = %for.cond219
  %201 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %202 = load i64, ptr %201, align 8, !tbaa !8
  store i64 %202, ptr %k, align 8, !tbaa !8
  br label %for.cond222

for.cond222:                                      ; preds = %for.inc355, %for.body221
  %203 = load i64, ptr %k, align 8, !tbaa !8
  %cmp223 = icmp sge i64 %203, 1
  br i1 %cmp223, label %for.body224, label %for.end356

for.body224:                                      ; preds = %for.cond222
  %204 = load i64, ptr %k, align 8, !tbaa !8
  %205 = load i64, ptr %j, align 8, !tbaa !8
  %206 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul225 = mul nsw i64 %205, %206
  %add226 = add nsw i64 %204, %mul225
  store i64 %add226, ptr %i__2, align 8, !tbaa !8
  %207 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %208 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx227 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %207, i64 %208
  %r228 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx227, i32 0, i32 0
  %209 = load double, ptr %r228, align 8, !tbaa !10
  %cmp229 = fcmp une double %209, 0.000000e+00
  br i1 %cmp229, label %if.then234, label %lor.lhs.false230

lor.lhs.false230:                                 ; preds = %for.body224
  %210 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %211 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx231 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %210, i64 %211
  %i232 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx231, i32 0, i32 1
  %212 = load double, ptr %i232, align 8, !tbaa !13
  %cmp233 = fcmp une double %212, 0.000000e+00
  br i1 %cmp233, label %if.then234, label %if.end354

if.then234:                                       ; preds = %lor.lhs.false230, %for.body224
  %213 = load i64, ptr %k, align 8, !tbaa !8
  %214 = load i64, ptr %j, align 8, !tbaa !8
  %215 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul235 = mul nsw i64 %214, %215
  %add236 = add nsw i64 %213, %mul235
  store i64 %add236, ptr %i__2, align 8, !tbaa !8
  %216 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r237 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %216, i32 0, i32 0
  %217 = load double, ptr %r237, align 8, !tbaa !10
  %218 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %219 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx238 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %218, i64 %219
  %r239 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx238, i32 0, i32 0
  %220 = load double, ptr %r239, align 8, !tbaa !10
  %221 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i241 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %221, i32 0, i32 1
  %222 = load double, ptr %i241, align 8, !tbaa !13
  %223 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %224 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx242 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %223, i64 %224
  %i243 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx242, i32 0, i32 1
  %225 = load double, ptr %i243, align 8, !tbaa !13
  %mul244 = fmul double %222, %225
  %neg245 = fneg double %mul244
  %226 = call double @llvm.fmuladd.f64(double %217, double %220, double %neg245)
  %r246 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %226, ptr %r246, align 8, !tbaa !10
  %227 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r247 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %227, i32 0, i32 0
  %228 = load double, ptr %r247, align 8, !tbaa !10
  %229 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %230 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx248 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %229, i64 %230
  %i249 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx248, i32 0, i32 1
  %231 = load double, ptr %i249, align 8, !tbaa !13
  %232 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i251 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %232, i32 0, i32 1
  %233 = load double, ptr %i251, align 8, !tbaa !13
  %234 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %235 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx252 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %234, i64 %235
  %r253 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx252, i32 0, i32 0
  %236 = load double, ptr %r253, align 8, !tbaa !10
  %mul254 = fmul double %233, %236
  %237 = call double @llvm.fmuladd.f64(double %228, double %231, double %mul254)
  %i255 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %237, ptr %i255, align 8, !tbaa !13
  %r256 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %238 = load double, ptr %r256, align 8, !tbaa !10
  %r257 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %238, ptr %r257, align 8, !tbaa !10
  %i258 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %239 = load double, ptr %i258, align 8, !tbaa !13
  %i259 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %239, ptr %i259, align 8, !tbaa !13
  %240 = load i64, ptr %k, align 8, !tbaa !8
  %241 = load i64, ptr %j, align 8, !tbaa !8
  %242 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul260 = mul nsw i64 %241, %242
  %add261 = add nsw i64 %240, %mul260
  store i64 %add261, ptr %i__2, align 8, !tbaa !8
  %r262 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %243 = load double, ptr %r262, align 8, !tbaa !10
  %244 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %245 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx263 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %244, i64 %245
  %r264 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx263, i32 0, i32 0
  store double %243, ptr %r264, align 8, !tbaa !10
  %i265 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %246 = load double, ptr %i265, align 8, !tbaa !13
  %247 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %248 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx266 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %247, i64 %248
  %i267 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx266, i32 0, i32 1
  store double %246, ptr %i267, align 8, !tbaa !13
  %249 = load i64, ptr %nounit, align 8, !tbaa !8
  %tobool268 = icmp ne i64 %249, 0
  br i1 %tobool268, label %if.then269, label %if.end305

if.then269:                                       ; preds = %if.then234
  %250 = load i64, ptr %k, align 8, !tbaa !8
  %251 = load i64, ptr %j, align 8, !tbaa !8
  %252 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul270 = mul nsw i64 %251, %252
  %add271 = add nsw i64 %250, %mul270
  store i64 %add271, ptr %i__2, align 8, !tbaa !8
  %253 = load i64, ptr %k, align 8, !tbaa !8
  %254 = load i64, ptr %j, align 8, !tbaa !8
  %255 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul272 = mul nsw i64 %254, %255
  %add273 = add nsw i64 %253, %mul272
  store i64 %add273, ptr %i__3, align 8, !tbaa !8
  %256 = load i64, ptr %k, align 8, !tbaa !8
  %257 = load i64, ptr %k, align 8, !tbaa !8
  %258 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul274 = mul nsw i64 %257, %258
  %add275 = add nsw i64 %256, %mul274
  store i64 %add275, ptr %i__4, align 8, !tbaa !8
  %259 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %260 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx276 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %259, i64 %260
  %r277 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx276, i32 0, i32 0
  %261 = load double, ptr %r277, align 8, !tbaa !10
  %262 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %263 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx278 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %262, i64 %263
  %r279 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx278, i32 0, i32 0
  %264 = load double, ptr %r279, align 8, !tbaa !10
  %265 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %266 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx281 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %265, i64 %266
  %i282 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx281, i32 0, i32 1
  %267 = load double, ptr %i282, align 8, !tbaa !13
  %268 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %269 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx283 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %268, i64 %269
  %i284 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx283, i32 0, i32 1
  %270 = load double, ptr %i284, align 8, !tbaa !13
  %mul285 = fmul double %267, %270
  %neg286 = fneg double %mul285
  %271 = call double @llvm.fmuladd.f64(double %261, double %264, double %neg286)
  %r287 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %271, ptr %r287, align 8, !tbaa !10
  %272 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %273 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx288 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %272, i64 %273
  %r289 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx288, i32 0, i32 0
  %274 = load double, ptr %r289, align 8, !tbaa !10
  %275 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %276 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx290 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %275, i64 %276
  %i291 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx290, i32 0, i32 1
  %277 = load double, ptr %i291, align 8, !tbaa !13
  %278 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %279 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx293 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %278, i64 %279
  %i294 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx293, i32 0, i32 1
  %280 = load double, ptr %i294, align 8, !tbaa !13
  %281 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %282 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx295 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %281, i64 %282
  %r296 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx295, i32 0, i32 0
  %283 = load double, ptr %r296, align 8, !tbaa !10
  %mul297 = fmul double %280, %283
  %284 = call double @llvm.fmuladd.f64(double %274, double %277, double %mul297)
  %i298 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %284, ptr %i298, align 8, !tbaa !13
  %r299 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %285 = load double, ptr %r299, align 8, !tbaa !10
  %286 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %287 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx300 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %286, i64 %287
  %r301 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx300, i32 0, i32 0
  store double %285, ptr %r301, align 8, !tbaa !10
  %i302 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %288 = load double, ptr %i302, align 8, !tbaa !13
  %289 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %290 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx303 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %289, i64 %290
  %i304 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx303, i32 0, i32 1
  store double %288, ptr %i304, align 8, !tbaa !13
  br label %if.end305

if.end305:                                        ; preds = %if.then269, %if.then234
  %291 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %292 = load i64, ptr %291, align 8, !tbaa !8
  store i64 %292, ptr %i__2, align 8, !tbaa !8
  %293 = load i64, ptr %k, align 8, !tbaa !8
  %add306 = add nsw i64 %293, 1
  store i64 %add306, ptr %i__, align 8, !tbaa !8
  br label %for.cond307

for.cond307:                                      ; preds = %for.inc351, %if.end305
  %294 = load i64, ptr %i__, align 8, !tbaa !8
  %295 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp308 = icmp sle i64 %294, %295
  br i1 %cmp308, label %for.body309, label %for.end353

for.body309:                                      ; preds = %for.cond307
  %296 = load i64, ptr %i__, align 8, !tbaa !8
  %297 = load i64, ptr %j, align 8, !tbaa !8
  %298 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul310 = mul nsw i64 %297, %298
  %add311 = add nsw i64 %296, %mul310
  store i64 %add311, ptr %i__3, align 8, !tbaa !8
  %299 = load i64, ptr %i__, align 8, !tbaa !8
  %300 = load i64, ptr %j, align 8, !tbaa !8
  %301 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul312 = mul nsw i64 %300, %301
  %add313 = add nsw i64 %299, %mul312
  store i64 %add313, ptr %i__4, align 8, !tbaa !8
  %302 = load i64, ptr %i__, align 8, !tbaa !8
  %303 = load i64, ptr %k, align 8, !tbaa !8
  %304 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul314 = mul nsw i64 %303, %304
  %add315 = add nsw i64 %302, %mul314
  store i64 %add315, ptr %i__5, align 8, !tbaa !8
  %r316 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %305 = load double, ptr %r316, align 8, !tbaa !10
  %306 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %307 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx317 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %306, i64 %307
  %r318 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx317, i32 0, i32 0
  %308 = load double, ptr %r318, align 8, !tbaa !10
  %i320 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %309 = load double, ptr %i320, align 8, !tbaa !13
  %310 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %311 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx321 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %310, i64 %311
  %i322 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx321, i32 0, i32 1
  %312 = load double, ptr %i322, align 8, !tbaa !13
  %mul323 = fmul double %309, %312
  %neg324 = fneg double %mul323
  %313 = call double @llvm.fmuladd.f64(double %305, double %308, double %neg324)
  %r325 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  store double %313, ptr %r325, align 8, !tbaa !10
  %r326 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %314 = load double, ptr %r326, align 8, !tbaa !10
  %315 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %316 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx327 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %315, i64 %316
  %i328 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx327, i32 0, i32 1
  %317 = load double, ptr %i328, align 8, !tbaa !13
  %i330 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %318 = load double, ptr %i330, align 8, !tbaa !13
  %319 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %320 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx331 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %319, i64 %320
  %r332 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx331, i32 0, i32 0
  %321 = load double, ptr %r332, align 8, !tbaa !10
  %mul333 = fmul double %318, %321
  %322 = call double @llvm.fmuladd.f64(double %314, double %317, double %mul333)
  %i334 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  store double %322, ptr %i334, align 8, !tbaa !13
  %323 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %324 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx335 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %323, i64 %324
  %r336 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx335, i32 0, i32 0
  %325 = load double, ptr %r336, align 8, !tbaa !10
  %r337 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %326 = load double, ptr %r337, align 8, !tbaa !10
  %add338 = fadd double %325, %326
  %r339 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %add338, ptr %r339, align 8, !tbaa !10
  %327 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %328 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx340 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %327, i64 %328
  %i341 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx340, i32 0, i32 1
  %329 = load double, ptr %i341, align 8, !tbaa !13
  %i342 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %330 = load double, ptr %i342, align 8, !tbaa !13
  %add343 = fadd double %329, %330
  %i344 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %add343, ptr %i344, align 8, !tbaa !13
  %r345 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %331 = load double, ptr %r345, align 8, !tbaa !10
  %332 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %333 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx346 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %332, i64 %333
  %r347 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx346, i32 0, i32 0
  store double %331, ptr %r347, align 8, !tbaa !10
  %i348 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %334 = load double, ptr %i348, align 8, !tbaa !13
  %335 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %336 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx349 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %335, i64 %336
  %i350 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx349, i32 0, i32 1
  store double %334, ptr %i350, align 8, !tbaa !13
  br label %for.inc351

for.inc351:                                       ; preds = %for.body309
  %337 = load i64, ptr %i__, align 8, !tbaa !8
  %inc352 = add nsw i64 %337, 1
  store i64 %inc352, ptr %i__, align 8, !tbaa !8
  br label %for.cond307, !llvm.loop !20

for.end353:                                       ; preds = %for.cond307
  br label %if.end354

if.end354:                                        ; preds = %for.end353, %lor.lhs.false230
  br label %for.inc355

for.inc355:                                       ; preds = %if.end354
  %338 = load i64, ptr %k, align 8, !tbaa !8
  %dec = add nsw i64 %338, -1
  store i64 %dec, ptr %k, align 8, !tbaa !8
  br label %for.cond222, !llvm.loop !21

for.end356:                                       ; preds = %for.cond222
  br label %for.inc357

for.inc357:                                       ; preds = %for.end356
  %339 = load i64, ptr %j, align 8, !tbaa !8
  %inc358 = add nsw i64 %339, 1
  store i64 %inc358, ptr %j, align 8, !tbaa !8
  br label %for.cond219, !llvm.loop !22

for.end359:                                       ; preds = %for.cond219
  br label %if.end360

if.end360:                                        ; preds = %for.end359, %for.end217
  br label %if.end744

if.else361:                                       ; preds = %if.then83
  %340 = load i64, ptr %upper, align 8, !tbaa !8
  %tobool362 = icmp ne i64 %340, 0
  br i1 %tobool362, label %if.then363, label %if.else553

if.then363:                                       ; preds = %if.else361
  %341 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %342 = load i64, ptr %341, align 8, !tbaa !8
  store i64 %342, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %j, align 8, !tbaa !8
  br label %for.cond364

for.cond364:                                      ; preds = %for.inc550, %if.then363
  %343 = load i64, ptr %j, align 8, !tbaa !8
  %344 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp365 = icmp sle i64 %343, %344
  br i1 %cmp365, label %for.body366, label %for.end552

for.body366:                                      ; preds = %for.cond364
  %345 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %346 = load i64, ptr %345, align 8, !tbaa !8
  store i64 %346, ptr %i__, align 8, !tbaa !8
  br label %for.cond367

for.cond367:                                      ; preds = %for.inc547, %for.body366
  %347 = load i64, ptr %i__, align 8, !tbaa !8
  %cmp368 = icmp sge i64 %347, 1
  br i1 %cmp368, label %for.body369, label %for.end549

for.body369:                                      ; preds = %for.cond367
  %348 = load i64, ptr %i__, align 8, !tbaa !8
  %349 = load i64, ptr %j, align 8, !tbaa !8
  %350 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul370 = mul nsw i64 %349, %350
  %add371 = add nsw i64 %348, %mul370
  store i64 %add371, ptr %i__2, align 8, !tbaa !8
  %351 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %352 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx372 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %351, i64 %352
  %r373 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx372, i32 0, i32 0
  %353 = load double, ptr %r373, align 8, !tbaa !10
  %r374 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %353, ptr %r374, align 8, !tbaa !10
  %354 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %355 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx375 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %354, i64 %355
  %i376 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx375, i32 0, i32 1
  %356 = load double, ptr %i376, align 8, !tbaa !13
  %i377 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %356, ptr %i377, align 8, !tbaa !13
  %357 = load i64, ptr %noconj, align 8, !tbaa !8
  %tobool378 = icmp ne i64 %357, 0
  br i1 %tobool378, label %if.then379, label %if.else454

if.then379:                                       ; preds = %for.body369
  %358 = load i64, ptr %nounit, align 8, !tbaa !8
  %tobool380 = icmp ne i64 %358, 0
  br i1 %tobool380, label %if.then381, label %if.end407

if.then381:                                       ; preds = %if.then379
  %359 = load i64, ptr %i__, align 8, !tbaa !8
  %360 = load i64, ptr %i__, align 8, !tbaa !8
  %361 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul382 = mul nsw i64 %360, %361
  %add383 = add nsw i64 %359, %mul382
  store i64 %add383, ptr %i__2, align 8, !tbaa !8
  %r384 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %362 = load double, ptr %r384, align 8, !tbaa !10
  %363 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %364 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx385 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %363, i64 %364
  %r386 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx385, i32 0, i32 0
  %365 = load double, ptr %r386, align 8, !tbaa !10
  %i388 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %366 = load double, ptr %i388, align 8, !tbaa !13
  %367 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %368 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx389 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %367, i64 %368
  %i390 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx389, i32 0, i32 1
  %369 = load double, ptr %i390, align 8, !tbaa !13
  %mul391 = fmul double %366, %369
  %neg392 = fneg double %mul391
  %370 = call double @llvm.fmuladd.f64(double %362, double %365, double %neg392)
  %r393 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %370, ptr %r393, align 8, !tbaa !10
  %r394 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %371 = load double, ptr %r394, align 8, !tbaa !10
  %372 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %373 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx395 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %372, i64 %373
  %i396 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx395, i32 0, i32 1
  %374 = load double, ptr %i396, align 8, !tbaa !13
  %i398 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %375 = load double, ptr %i398, align 8, !tbaa !13
  %376 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %377 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx399 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %376, i64 %377
  %r400 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx399, i32 0, i32 0
  %378 = load double, ptr %r400, align 8, !tbaa !10
  %mul401 = fmul double %375, %378
  %379 = call double @llvm.fmuladd.f64(double %371, double %374, double %mul401)
  %i402 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %379, ptr %i402, align 8, !tbaa !13
  %r403 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %380 = load double, ptr %r403, align 8, !tbaa !10
  %r404 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %380, ptr %r404, align 8, !tbaa !10
  %i405 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %381 = load double, ptr %i405, align 8, !tbaa !13
  %i406 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %381, ptr %i406, align 8, !tbaa !13
  br label %if.end407

if.end407:                                        ; preds = %if.then381, %if.then379
  %382 = load i64, ptr %i__, align 8, !tbaa !8
  %sub408 = sub nsw i64 %382, 1
  store i64 %sub408, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %k, align 8, !tbaa !8
  br label %for.cond409

for.cond409:                                      ; preds = %for.inc451, %if.end407
  %383 = load i64, ptr %k, align 8, !tbaa !8
  %384 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp410 = icmp sle i64 %383, %384
  br i1 %cmp410, label %for.body411, label %for.end453

for.body411:                                      ; preds = %for.cond409
  %385 = load i64, ptr %k, align 8, !tbaa !8
  %386 = load i64, ptr %i__, align 8, !tbaa !8
  %387 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul412 = mul nsw i64 %386, %387
  %add413 = add nsw i64 %385, %mul412
  store i64 %add413, ptr %i__3, align 8, !tbaa !8
  %388 = load i64, ptr %k, align 8, !tbaa !8
  %389 = load i64, ptr %j, align 8, !tbaa !8
  %390 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul414 = mul nsw i64 %389, %390
  %add415 = add nsw i64 %388, %mul414
  store i64 %add415, ptr %i__4, align 8, !tbaa !8
  %391 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %392 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx416 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %391, i64 %392
  %r417 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx416, i32 0, i32 0
  %393 = load double, ptr %r417, align 8, !tbaa !10
  %394 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %395 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx418 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %394, i64 %395
  %r419 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx418, i32 0, i32 0
  %396 = load double, ptr %r419, align 8, !tbaa !10
  %397 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %398 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx421 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %397, i64 %398
  %i422 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx421, i32 0, i32 1
  %399 = load double, ptr %i422, align 8, !tbaa !13
  %400 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %401 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx423 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %400, i64 %401
  %i424 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx423, i32 0, i32 1
  %402 = load double, ptr %i424, align 8, !tbaa !13
  %mul425 = fmul double %399, %402
  %neg426 = fneg double %mul425
  %403 = call double @llvm.fmuladd.f64(double %393, double %396, double %neg426)
  %r427 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  store double %403, ptr %r427, align 8, !tbaa !10
  %404 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %405 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx428 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %404, i64 %405
  %r429 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx428, i32 0, i32 0
  %406 = load double, ptr %r429, align 8, !tbaa !10
  %407 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %408 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx430 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %407, i64 %408
  %i431 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx430, i32 0, i32 1
  %409 = load double, ptr %i431, align 8, !tbaa !13
  %410 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %411 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx433 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %410, i64 %411
  %i434 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx433, i32 0, i32 1
  %412 = load double, ptr %i434, align 8, !tbaa !13
  %413 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %414 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx435 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %413, i64 %414
  %r436 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx435, i32 0, i32 0
  %415 = load double, ptr %r436, align 8, !tbaa !10
  %mul437 = fmul double %412, %415
  %416 = call double @llvm.fmuladd.f64(double %406, double %409, double %mul437)
  %i438 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  store double %416, ptr %i438, align 8, !tbaa !13
  %r439 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %417 = load double, ptr %r439, align 8, !tbaa !10
  %r440 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %418 = load double, ptr %r440, align 8, !tbaa !10
  %add441 = fadd double %417, %418
  %r442 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %add441, ptr %r442, align 8, !tbaa !10
  %i443 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %419 = load double, ptr %i443, align 8, !tbaa !13
  %i444 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %420 = load double, ptr %i444, align 8, !tbaa !13
  %add445 = fadd double %419, %420
  %i446 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %add445, ptr %i446, align 8, !tbaa !13
  %r447 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %421 = load double, ptr %r447, align 8, !tbaa !10
  %r448 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %421, ptr %r448, align 8, !tbaa !10
  %i449 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %422 = load double, ptr %i449, align 8, !tbaa !13
  %i450 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %422, ptr %i450, align 8, !tbaa !13
  br label %for.inc451

for.inc451:                                       ; preds = %for.body411
  %423 = load i64, ptr %k, align 8, !tbaa !8
  %inc452 = add nsw i64 %423, 1
  store i64 %inc452, ptr %k, align 8, !tbaa !8
  br label %for.cond409, !llvm.loop !23

for.end453:                                       ; preds = %for.cond409
  br label %if.end523

if.else454:                                       ; preds = %for.body369
  %424 = load i64, ptr %nounit, align 8, !tbaa !8
  %tobool455 = icmp ne i64 %424, 0
  br i1 %tobool455, label %if.then456, label %if.end479

if.then456:                                       ; preds = %if.else454
  %425 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %426 = load i64, ptr %i__, align 8, !tbaa !8
  %427 = load i64, ptr %i__, align 8, !tbaa !8
  %428 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul457 = mul nsw i64 %427, %428
  %add458 = add nsw i64 %426, %mul457
  %arrayidx459 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %425, i64 %add458
  call void @v3p_netlib_d_cnjg(ptr noundef %z__2, ptr noundef %arrayidx459)
  %r460 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %429 = load double, ptr %r460, align 8, !tbaa !10
  %r461 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %430 = load double, ptr %r461, align 8, !tbaa !10
  %i463 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %431 = load double, ptr %i463, align 8, !tbaa !13
  %i464 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %432 = load double, ptr %i464, align 8, !tbaa !13
  %mul465 = fmul double %431, %432
  %neg466 = fneg double %mul465
  %433 = call double @llvm.fmuladd.f64(double %429, double %430, double %neg466)
  %r467 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %433, ptr %r467, align 8, !tbaa !10
  %r468 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %434 = load double, ptr %r468, align 8, !tbaa !10
  %i469 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %435 = load double, ptr %i469, align 8, !tbaa !13
  %i471 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %436 = load double, ptr %i471, align 8, !tbaa !13
  %r472 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %437 = load double, ptr %r472, align 8, !tbaa !10
  %mul473 = fmul double %436, %437
  %438 = call double @llvm.fmuladd.f64(double %434, double %435, double %mul473)
  %i474 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %438, ptr %i474, align 8, !tbaa !13
  %r475 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %439 = load double, ptr %r475, align 8, !tbaa !10
  %r476 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %439, ptr %r476, align 8, !tbaa !10
  %i477 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %440 = load double, ptr %i477, align 8, !tbaa !13
  %i478 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %440, ptr %i478, align 8, !tbaa !13
  br label %if.end479

if.end479:                                        ; preds = %if.then456, %if.else454
  %441 = load i64, ptr %i__, align 8, !tbaa !8
  %sub480 = sub nsw i64 %441, 1
  store i64 %sub480, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %k, align 8, !tbaa !8
  br label %for.cond481

for.cond481:                                      ; preds = %for.inc520, %if.end479
  %442 = load i64, ptr %k, align 8, !tbaa !8
  %443 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp482 = icmp sle i64 %442, %443
  br i1 %cmp482, label %for.body483, label %for.end522

for.body483:                                      ; preds = %for.cond481
  %444 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %445 = load i64, ptr %k, align 8, !tbaa !8
  %446 = load i64, ptr %i__, align 8, !tbaa !8
  %447 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul484 = mul nsw i64 %446, %447
  %add485 = add nsw i64 %445, %mul484
  %arrayidx486 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %444, i64 %add485
  call void @v3p_netlib_d_cnjg(ptr noundef %z__3, ptr noundef %arrayidx486)
  %448 = load i64, ptr %k, align 8, !tbaa !8
  %449 = load i64, ptr %j, align 8, !tbaa !8
  %450 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul487 = mul nsw i64 %449, %450
  %add488 = add nsw i64 %448, %mul487
  store i64 %add488, ptr %i__3, align 8, !tbaa !8
  %r489 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__3, i32 0, i32 0
  %451 = load double, ptr %r489, align 8, !tbaa !10
  %452 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %453 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx490 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %452, i64 %453
  %r491 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx490, i32 0, i32 0
  %454 = load double, ptr %r491, align 8, !tbaa !10
  %i493 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__3, i32 0, i32 1
  %455 = load double, ptr %i493, align 8, !tbaa !13
  %456 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %457 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx494 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %456, i64 %457
  %i495 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx494, i32 0, i32 1
  %458 = load double, ptr %i495, align 8, !tbaa !13
  %mul496 = fmul double %455, %458
  %neg497 = fneg double %mul496
  %459 = call double @llvm.fmuladd.f64(double %451, double %454, double %neg497)
  %r498 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  store double %459, ptr %r498, align 8, !tbaa !10
  %r499 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__3, i32 0, i32 0
  %460 = load double, ptr %r499, align 8, !tbaa !10
  %461 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %462 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx500 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %461, i64 %462
  %i501 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx500, i32 0, i32 1
  %463 = load double, ptr %i501, align 8, !tbaa !13
  %i503 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__3, i32 0, i32 1
  %464 = load double, ptr %i503, align 8, !tbaa !13
  %465 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %466 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx504 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %465, i64 %466
  %r505 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx504, i32 0, i32 0
  %467 = load double, ptr %r505, align 8, !tbaa !10
  %mul506 = fmul double %464, %467
  %468 = call double @llvm.fmuladd.f64(double %460, double %463, double %mul506)
  %i507 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  store double %468, ptr %i507, align 8, !tbaa !13
  %r508 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %469 = load double, ptr %r508, align 8, !tbaa !10
  %r509 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %470 = load double, ptr %r509, align 8, !tbaa !10
  %add510 = fadd double %469, %470
  %r511 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %add510, ptr %r511, align 8, !tbaa !10
  %i512 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %471 = load double, ptr %i512, align 8, !tbaa !13
  %i513 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %472 = load double, ptr %i513, align 8, !tbaa !13
  %add514 = fadd double %471, %472
  %i515 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %add514, ptr %i515, align 8, !tbaa !13
  %r516 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %473 = load double, ptr %r516, align 8, !tbaa !10
  %r517 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %473, ptr %r517, align 8, !tbaa !10
  %i518 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %474 = load double, ptr %i518, align 8, !tbaa !13
  %i519 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %474, ptr %i519, align 8, !tbaa !13
  br label %for.inc520

for.inc520:                                       ; preds = %for.body483
  %475 = load i64, ptr %k, align 8, !tbaa !8
  %inc521 = add nsw i64 %475, 1
  store i64 %inc521, ptr %k, align 8, !tbaa !8
  br label %for.cond481, !llvm.loop !24

for.end522:                                       ; preds = %for.cond481
  br label %if.end523

if.end523:                                        ; preds = %for.end522, %for.end453
  %476 = load i64, ptr %i__, align 8, !tbaa !8
  %477 = load i64, ptr %j, align 8, !tbaa !8
  %478 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul524 = mul nsw i64 %477, %478
  %add525 = add nsw i64 %476, %mul524
  store i64 %add525, ptr %i__2, align 8, !tbaa !8
  %479 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r526 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %479, i32 0, i32 0
  %480 = load double, ptr %r526, align 8, !tbaa !10
  %r527 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %481 = load double, ptr %r527, align 8, !tbaa !10
  %482 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i529 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %482, i32 0, i32 1
  %483 = load double, ptr %i529, align 8, !tbaa !13
  %i530 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %484 = load double, ptr %i530, align 8, !tbaa !13
  %mul531 = fmul double %483, %484
  %neg532 = fneg double %mul531
  %485 = call double @llvm.fmuladd.f64(double %480, double %481, double %neg532)
  %r533 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %485, ptr %r533, align 8, !tbaa !10
  %486 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r534 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %486, i32 0, i32 0
  %487 = load double, ptr %r534, align 8, !tbaa !10
  %i535 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %488 = load double, ptr %i535, align 8, !tbaa !13
  %489 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i537 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %489, i32 0, i32 1
  %490 = load double, ptr %i537, align 8, !tbaa !13
  %r538 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %491 = load double, ptr %r538, align 8, !tbaa !10
  %mul539 = fmul double %490, %491
  %492 = call double @llvm.fmuladd.f64(double %487, double %488, double %mul539)
  %i540 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %492, ptr %i540, align 8, !tbaa !13
  %r541 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %493 = load double, ptr %r541, align 8, !tbaa !10
  %494 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %495 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx542 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %494, i64 %495
  %r543 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx542, i32 0, i32 0
  store double %493, ptr %r543, align 8, !tbaa !10
  %i544 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %496 = load double, ptr %i544, align 8, !tbaa !13
  %497 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %498 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx545 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %497, i64 %498
  %i546 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx545, i32 0, i32 1
  store double %496, ptr %i546, align 8, !tbaa !13
  br label %for.inc547

for.inc547:                                       ; preds = %if.end523
  %499 = load i64, ptr %i__, align 8, !tbaa !8
  %dec548 = add nsw i64 %499, -1
  store i64 %dec548, ptr %i__, align 8, !tbaa !8
  br label %for.cond367, !llvm.loop !25

for.end549:                                       ; preds = %for.cond367
  br label %for.inc550

for.inc550:                                       ; preds = %for.end549
  %500 = load i64, ptr %j, align 8, !tbaa !8
  %inc551 = add nsw i64 %500, 1
  store i64 %inc551, ptr %j, align 8, !tbaa !8
  br label %for.cond364, !llvm.loop !26

for.end552:                                       ; preds = %for.cond364
  br label %if.end743

if.else553:                                       ; preds = %if.else361
  %501 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %502 = load i64, ptr %501, align 8, !tbaa !8
  store i64 %502, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %j, align 8, !tbaa !8
  br label %for.cond554

for.cond554:                                      ; preds = %for.inc740, %if.else553
  %503 = load i64, ptr %j, align 8, !tbaa !8
  %504 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp555 = icmp sle i64 %503, %504
  br i1 %cmp555, label %for.body556, label %for.end742

for.body556:                                      ; preds = %for.cond554
  %505 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %506 = load i64, ptr %505, align 8, !tbaa !8
  store i64 %506, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond557

for.cond557:                                      ; preds = %for.inc737, %for.body556
  %507 = load i64, ptr %i__, align 8, !tbaa !8
  %508 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp558 = icmp sle i64 %507, %508
  br i1 %cmp558, label %for.body559, label %for.end739

for.body559:                                      ; preds = %for.cond557
  %509 = load i64, ptr %i__, align 8, !tbaa !8
  %510 = load i64, ptr %j, align 8, !tbaa !8
  %511 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul560 = mul nsw i64 %510, %511
  %add561 = add nsw i64 %509, %mul560
  store i64 %add561, ptr %i__3, align 8, !tbaa !8
  %512 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %513 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx562 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %512, i64 %513
  %r563 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx562, i32 0, i32 0
  %514 = load double, ptr %r563, align 8, !tbaa !10
  %r564 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %514, ptr %r564, align 8, !tbaa !10
  %515 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %516 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx565 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %515, i64 %516
  %i566 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx565, i32 0, i32 1
  %517 = load double, ptr %i566, align 8, !tbaa !13
  %i567 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %517, ptr %i567, align 8, !tbaa !13
  %518 = load i64, ptr %noconj, align 8, !tbaa !8
  %tobool568 = icmp ne i64 %518, 0
  br i1 %tobool568, label %if.then569, label %if.else644

if.then569:                                       ; preds = %for.body559
  %519 = load i64, ptr %nounit, align 8, !tbaa !8
  %tobool570 = icmp ne i64 %519, 0
  br i1 %tobool570, label %if.then571, label %if.end597

if.then571:                                       ; preds = %if.then569
  %520 = load i64, ptr %i__, align 8, !tbaa !8
  %521 = load i64, ptr %i__, align 8, !tbaa !8
  %522 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul572 = mul nsw i64 %521, %522
  %add573 = add nsw i64 %520, %mul572
  store i64 %add573, ptr %i__3, align 8, !tbaa !8
  %r574 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %523 = load double, ptr %r574, align 8, !tbaa !10
  %524 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %525 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx575 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %524, i64 %525
  %r576 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx575, i32 0, i32 0
  %526 = load double, ptr %r576, align 8, !tbaa !10
  %i578 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %527 = load double, ptr %i578, align 8, !tbaa !13
  %528 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %529 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx579 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %528, i64 %529
  %i580 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx579, i32 0, i32 1
  %530 = load double, ptr %i580, align 8, !tbaa !13
  %mul581 = fmul double %527, %530
  %neg582 = fneg double %mul581
  %531 = call double @llvm.fmuladd.f64(double %523, double %526, double %neg582)
  %r583 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %531, ptr %r583, align 8, !tbaa !10
  %r584 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %532 = load double, ptr %r584, align 8, !tbaa !10
  %533 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %534 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx585 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %533, i64 %534
  %i586 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx585, i32 0, i32 1
  %535 = load double, ptr %i586, align 8, !tbaa !13
  %i588 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %536 = load double, ptr %i588, align 8, !tbaa !13
  %537 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %538 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx589 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %537, i64 %538
  %r590 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx589, i32 0, i32 0
  %539 = load double, ptr %r590, align 8, !tbaa !10
  %mul591 = fmul double %536, %539
  %540 = call double @llvm.fmuladd.f64(double %532, double %535, double %mul591)
  %i592 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %540, ptr %i592, align 8, !tbaa !13
  %r593 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %541 = load double, ptr %r593, align 8, !tbaa !10
  %r594 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %541, ptr %r594, align 8, !tbaa !10
  %i595 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %542 = load double, ptr %i595, align 8, !tbaa !13
  %i596 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %542, ptr %i596, align 8, !tbaa !13
  br label %if.end597

if.end597:                                        ; preds = %if.then571, %if.then569
  %543 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %544 = load i64, ptr %543, align 8, !tbaa !8
  store i64 %544, ptr %i__3, align 8, !tbaa !8
  %545 = load i64, ptr %i__, align 8, !tbaa !8
  %add598 = add nsw i64 %545, 1
  store i64 %add598, ptr %k, align 8, !tbaa !8
  br label %for.cond599

for.cond599:                                      ; preds = %for.inc641, %if.end597
  %546 = load i64, ptr %k, align 8, !tbaa !8
  %547 = load i64, ptr %i__3, align 8, !tbaa !8
  %cmp600 = icmp sle i64 %546, %547
  br i1 %cmp600, label %for.body601, label %for.end643

for.body601:                                      ; preds = %for.cond599
  %548 = load i64, ptr %k, align 8, !tbaa !8
  %549 = load i64, ptr %i__, align 8, !tbaa !8
  %550 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul602 = mul nsw i64 %549, %550
  %add603 = add nsw i64 %548, %mul602
  store i64 %add603, ptr %i__4, align 8, !tbaa !8
  %551 = load i64, ptr %k, align 8, !tbaa !8
  %552 = load i64, ptr %j, align 8, !tbaa !8
  %553 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul604 = mul nsw i64 %552, %553
  %add605 = add nsw i64 %551, %mul604
  store i64 %add605, ptr %i__5, align 8, !tbaa !8
  %554 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %555 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx606 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %554, i64 %555
  %r607 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx606, i32 0, i32 0
  %556 = load double, ptr %r607, align 8, !tbaa !10
  %557 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %558 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx608 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %557, i64 %558
  %r609 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx608, i32 0, i32 0
  %559 = load double, ptr %r609, align 8, !tbaa !10
  %560 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %561 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx611 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %560, i64 %561
  %i612 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx611, i32 0, i32 1
  %562 = load double, ptr %i612, align 8, !tbaa !13
  %563 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %564 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx613 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %563, i64 %564
  %i614 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx613, i32 0, i32 1
  %565 = load double, ptr %i614, align 8, !tbaa !13
  %mul615 = fmul double %562, %565
  %neg616 = fneg double %mul615
  %566 = call double @llvm.fmuladd.f64(double %556, double %559, double %neg616)
  %r617 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  store double %566, ptr %r617, align 8, !tbaa !10
  %567 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %568 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx618 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %567, i64 %568
  %r619 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx618, i32 0, i32 0
  %569 = load double, ptr %r619, align 8, !tbaa !10
  %570 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %571 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx620 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %570, i64 %571
  %i621 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx620, i32 0, i32 1
  %572 = load double, ptr %i621, align 8, !tbaa !13
  %573 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %574 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx623 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %573, i64 %574
  %i624 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx623, i32 0, i32 1
  %575 = load double, ptr %i624, align 8, !tbaa !13
  %576 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %577 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx625 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %576, i64 %577
  %r626 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx625, i32 0, i32 0
  %578 = load double, ptr %r626, align 8, !tbaa !10
  %mul627 = fmul double %575, %578
  %579 = call double @llvm.fmuladd.f64(double %569, double %572, double %mul627)
  %i628 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  store double %579, ptr %i628, align 8, !tbaa !13
  %r629 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %580 = load double, ptr %r629, align 8, !tbaa !10
  %r630 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %581 = load double, ptr %r630, align 8, !tbaa !10
  %add631 = fadd double %580, %581
  %r632 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %add631, ptr %r632, align 8, !tbaa !10
  %i633 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %582 = load double, ptr %i633, align 8, !tbaa !13
  %i634 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %583 = load double, ptr %i634, align 8, !tbaa !13
  %add635 = fadd double %582, %583
  %i636 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %add635, ptr %i636, align 8, !tbaa !13
  %r637 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %584 = load double, ptr %r637, align 8, !tbaa !10
  %r638 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %584, ptr %r638, align 8, !tbaa !10
  %i639 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %585 = load double, ptr %i639, align 8, !tbaa !13
  %i640 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %585, ptr %i640, align 8, !tbaa !13
  br label %for.inc641

for.inc641:                                       ; preds = %for.body601
  %586 = load i64, ptr %k, align 8, !tbaa !8
  %inc642 = add nsw i64 %586, 1
  store i64 %inc642, ptr %k, align 8, !tbaa !8
  br label %for.cond599, !llvm.loop !27

for.end643:                                       ; preds = %for.cond599
  br label %if.end713

if.else644:                                       ; preds = %for.body559
  %587 = load i64, ptr %nounit, align 8, !tbaa !8
  %tobool645 = icmp ne i64 %587, 0
  br i1 %tobool645, label %if.then646, label %if.end669

if.then646:                                       ; preds = %if.else644
  %588 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %589 = load i64, ptr %i__, align 8, !tbaa !8
  %590 = load i64, ptr %i__, align 8, !tbaa !8
  %591 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul647 = mul nsw i64 %590, %591
  %add648 = add nsw i64 %589, %mul647
  %arrayidx649 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %588, i64 %add648
  call void @v3p_netlib_d_cnjg(ptr noundef %z__2, ptr noundef %arrayidx649)
  %r650 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %592 = load double, ptr %r650, align 8, !tbaa !10
  %r651 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %593 = load double, ptr %r651, align 8, !tbaa !10
  %i653 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %594 = load double, ptr %i653, align 8, !tbaa !13
  %i654 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %595 = load double, ptr %i654, align 8, !tbaa !13
  %mul655 = fmul double %594, %595
  %neg656 = fneg double %mul655
  %596 = call double @llvm.fmuladd.f64(double %592, double %593, double %neg656)
  %r657 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %596, ptr %r657, align 8, !tbaa !10
  %r658 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %597 = load double, ptr %r658, align 8, !tbaa !10
  %i659 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %598 = load double, ptr %i659, align 8, !tbaa !13
  %i661 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %599 = load double, ptr %i661, align 8, !tbaa !13
  %r662 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %600 = load double, ptr %r662, align 8, !tbaa !10
  %mul663 = fmul double %599, %600
  %601 = call double @llvm.fmuladd.f64(double %597, double %598, double %mul663)
  %i664 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %601, ptr %i664, align 8, !tbaa !13
  %r665 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %602 = load double, ptr %r665, align 8, !tbaa !10
  %r666 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %602, ptr %r666, align 8, !tbaa !10
  %i667 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %603 = load double, ptr %i667, align 8, !tbaa !13
  %i668 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %603, ptr %i668, align 8, !tbaa !13
  br label %if.end669

if.end669:                                        ; preds = %if.then646, %if.else644
  %604 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %605 = load i64, ptr %604, align 8, !tbaa !8
  store i64 %605, ptr %i__3, align 8, !tbaa !8
  %606 = load i64, ptr %i__, align 8, !tbaa !8
  %add670 = add nsw i64 %606, 1
  store i64 %add670, ptr %k, align 8, !tbaa !8
  br label %for.cond671

for.cond671:                                      ; preds = %for.inc710, %if.end669
  %607 = load i64, ptr %k, align 8, !tbaa !8
  %608 = load i64, ptr %i__3, align 8, !tbaa !8
  %cmp672 = icmp sle i64 %607, %608
  br i1 %cmp672, label %for.body673, label %for.end712

for.body673:                                      ; preds = %for.cond671
  %609 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %610 = load i64, ptr %k, align 8, !tbaa !8
  %611 = load i64, ptr %i__, align 8, !tbaa !8
  %612 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul674 = mul nsw i64 %611, %612
  %add675 = add nsw i64 %610, %mul674
  %arrayidx676 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %609, i64 %add675
  call void @v3p_netlib_d_cnjg(ptr noundef %z__3, ptr noundef %arrayidx676)
  %613 = load i64, ptr %k, align 8, !tbaa !8
  %614 = load i64, ptr %j, align 8, !tbaa !8
  %615 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul677 = mul nsw i64 %614, %615
  %add678 = add nsw i64 %613, %mul677
  store i64 %add678, ptr %i__4, align 8, !tbaa !8
  %r679 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__3, i32 0, i32 0
  %616 = load double, ptr %r679, align 8, !tbaa !10
  %617 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %618 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx680 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %617, i64 %618
  %r681 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx680, i32 0, i32 0
  %619 = load double, ptr %r681, align 8, !tbaa !10
  %i683 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__3, i32 0, i32 1
  %620 = load double, ptr %i683, align 8, !tbaa !13
  %621 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %622 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx684 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %621, i64 %622
  %i685 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx684, i32 0, i32 1
  %623 = load double, ptr %i685, align 8, !tbaa !13
  %mul686 = fmul double %620, %623
  %neg687 = fneg double %mul686
  %624 = call double @llvm.fmuladd.f64(double %616, double %619, double %neg687)
  %r688 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  store double %624, ptr %r688, align 8, !tbaa !10
  %r689 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__3, i32 0, i32 0
  %625 = load double, ptr %r689, align 8, !tbaa !10
  %626 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %627 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx690 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %626, i64 %627
  %i691 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx690, i32 0, i32 1
  %628 = load double, ptr %i691, align 8, !tbaa !13
  %i693 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__3, i32 0, i32 1
  %629 = load double, ptr %i693, align 8, !tbaa !13
  %630 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %631 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx694 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %630, i64 %631
  %r695 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx694, i32 0, i32 0
  %632 = load double, ptr %r695, align 8, !tbaa !10
  %mul696 = fmul double %629, %632
  %633 = call double @llvm.fmuladd.f64(double %625, double %628, double %mul696)
  %i697 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  store double %633, ptr %i697, align 8, !tbaa !13
  %r698 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %634 = load double, ptr %r698, align 8, !tbaa !10
  %r699 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %635 = load double, ptr %r699, align 8, !tbaa !10
  %add700 = fadd double %634, %635
  %r701 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %add700, ptr %r701, align 8, !tbaa !10
  %i702 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %636 = load double, ptr %i702, align 8, !tbaa !13
  %i703 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %637 = load double, ptr %i703, align 8, !tbaa !13
  %add704 = fadd double %636, %637
  %i705 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %add704, ptr %i705, align 8, !tbaa !13
  %r706 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %638 = load double, ptr %r706, align 8, !tbaa !10
  %r707 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %638, ptr %r707, align 8, !tbaa !10
  %i708 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %639 = load double, ptr %i708, align 8, !tbaa !13
  %i709 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %639, ptr %i709, align 8, !tbaa !13
  br label %for.inc710

for.inc710:                                       ; preds = %for.body673
  %640 = load i64, ptr %k, align 8, !tbaa !8
  %inc711 = add nsw i64 %640, 1
  store i64 %inc711, ptr %k, align 8, !tbaa !8
  br label %for.cond671, !llvm.loop !28

for.end712:                                       ; preds = %for.cond671
  br label %if.end713

if.end713:                                        ; preds = %for.end712, %for.end643
  %641 = load i64, ptr %i__, align 8, !tbaa !8
  %642 = load i64, ptr %j, align 8, !tbaa !8
  %643 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul714 = mul nsw i64 %642, %643
  %add715 = add nsw i64 %641, %mul714
  store i64 %add715, ptr %i__3, align 8, !tbaa !8
  %644 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r716 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %644, i32 0, i32 0
  %645 = load double, ptr %r716, align 8, !tbaa !10
  %r717 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %646 = load double, ptr %r717, align 8, !tbaa !10
  %647 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i719 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %647, i32 0, i32 1
  %648 = load double, ptr %i719, align 8, !tbaa !13
  %i720 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %649 = load double, ptr %i720, align 8, !tbaa !13
  %mul721 = fmul double %648, %649
  %neg722 = fneg double %mul721
  %650 = call double @llvm.fmuladd.f64(double %645, double %646, double %neg722)
  %r723 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %650, ptr %r723, align 8, !tbaa !10
  %651 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r724 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %651, i32 0, i32 0
  %652 = load double, ptr %r724, align 8, !tbaa !10
  %i725 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %653 = load double, ptr %i725, align 8, !tbaa !13
  %654 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i727 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %654, i32 0, i32 1
  %655 = load double, ptr %i727, align 8, !tbaa !13
  %r728 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %656 = load double, ptr %r728, align 8, !tbaa !10
  %mul729 = fmul double %655, %656
  %657 = call double @llvm.fmuladd.f64(double %652, double %653, double %mul729)
  %i730 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %657, ptr %i730, align 8, !tbaa !13
  %r731 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %658 = load double, ptr %r731, align 8, !tbaa !10
  %659 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %660 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx732 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %659, i64 %660
  %r733 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx732, i32 0, i32 0
  store double %658, ptr %r733, align 8, !tbaa !10
  %i734 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %661 = load double, ptr %i734, align 8, !tbaa !13
  %662 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %663 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx735 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %662, i64 %663
  %i736 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx735, i32 0, i32 1
  store double %661, ptr %i736, align 8, !tbaa !13
  br label %for.inc737

for.inc737:                                       ; preds = %if.end713
  %664 = load i64, ptr %i__, align 8, !tbaa !8
  %inc738 = add nsw i64 %664, 1
  store i64 %inc738, ptr %i__, align 8, !tbaa !8
  br label %for.cond557, !llvm.loop !29

for.end739:                                       ; preds = %for.cond557
  br label %for.inc740

for.inc740:                                       ; preds = %for.end739
  %665 = load i64, ptr %j, align 8, !tbaa !8
  %inc741 = add nsw i64 %665, 1
  store i64 %inc741, ptr %j, align 8, !tbaa !8
  br label %for.cond554, !llvm.loop !30

for.end742:                                       ; preds = %for.cond554
  br label %if.end743

if.end743:                                        ; preds = %for.end742, %for.end552
  br label %if.end744

if.end744:                                        ; preds = %if.end743, %if.end360
  br label %if.end1529

if.else745:                                       ; preds = %if.end81
  %666 = load ptr, ptr %transa.addr, align 8, !tbaa !4
  %call746 = call i64 @v3p_netlib_lsame_(ptr noundef %666, ptr noundef @.str.2, i64 noundef 1, i64 noundef 1)
  %tobool747 = icmp ne i64 %call746, 0
  br i1 %tobool747, label %if.then748, label %if.else1079

if.then748:                                       ; preds = %if.else745
  %667 = load i64, ptr %upper, align 8, !tbaa !8
  %tobool749 = icmp ne i64 %667, 0
  br i1 %tobool749, label %if.then750, label %if.else914

if.then750:                                       ; preds = %if.then748
  %668 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %669 = load i64, ptr %668, align 8, !tbaa !8
  store i64 %669, ptr %j, align 8, !tbaa !8
  br label %for.cond751

for.cond751:                                      ; preds = %for.inc911, %if.then750
  %670 = load i64, ptr %j, align 8, !tbaa !8
  %cmp752 = icmp sge i64 %670, 1
  br i1 %cmp752, label %for.body753, label %for.end913

for.body753:                                      ; preds = %for.cond751
  %671 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r754 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %671, i32 0, i32 0
  %672 = load double, ptr %r754, align 8, !tbaa !10
  %r755 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %672, ptr %r755, align 8, !tbaa !10
  %673 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i756 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %673, i32 0, i32 1
  %674 = load double, ptr %i756, align 8, !tbaa !13
  %i757 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %674, ptr %i757, align 8, !tbaa !13
  %675 = load i64, ptr %nounit, align 8, !tbaa !8
  %tobool758 = icmp ne i64 %675, 0
  br i1 %tobool758, label %if.then759, label %if.end785

if.then759:                                       ; preds = %for.body753
  %676 = load i64, ptr %j, align 8, !tbaa !8
  %677 = load i64, ptr %j, align 8, !tbaa !8
  %678 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul760 = mul nsw i64 %677, %678
  %add761 = add nsw i64 %676, %mul760
  store i64 %add761, ptr %i__1, align 8, !tbaa !8
  %r762 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %679 = load double, ptr %r762, align 8, !tbaa !10
  %680 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %681 = load i64, ptr %i__1, align 8, !tbaa !8
  %arrayidx763 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %680, i64 %681
  %r764 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx763, i32 0, i32 0
  %682 = load double, ptr %r764, align 8, !tbaa !10
  %i766 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %683 = load double, ptr %i766, align 8, !tbaa !13
  %684 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %685 = load i64, ptr %i__1, align 8, !tbaa !8
  %arrayidx767 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %684, i64 %685
  %i768 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx767, i32 0, i32 1
  %686 = load double, ptr %i768, align 8, !tbaa !13
  %mul769 = fmul double %683, %686
  %neg770 = fneg double %mul769
  %687 = call double @llvm.fmuladd.f64(double %679, double %682, double %neg770)
  %r771 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %687, ptr %r771, align 8, !tbaa !10
  %r772 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %688 = load double, ptr %r772, align 8, !tbaa !10
  %689 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %690 = load i64, ptr %i__1, align 8, !tbaa !8
  %arrayidx773 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %689, i64 %690
  %i774 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx773, i32 0, i32 1
  %691 = load double, ptr %i774, align 8, !tbaa !13
  %i776 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %692 = load double, ptr %i776, align 8, !tbaa !13
  %693 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %694 = load i64, ptr %i__1, align 8, !tbaa !8
  %arrayidx777 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %693, i64 %694
  %r778 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx777, i32 0, i32 0
  %695 = load double, ptr %r778, align 8, !tbaa !10
  %mul779 = fmul double %692, %695
  %696 = call double @llvm.fmuladd.f64(double %688, double %691, double %mul779)
  %i780 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %696, ptr %i780, align 8, !tbaa !13
  %r781 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %697 = load double, ptr %r781, align 8, !tbaa !10
  %r782 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %697, ptr %r782, align 8, !tbaa !10
  %i783 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %698 = load double, ptr %i783, align 8, !tbaa !13
  %i784 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %698, ptr %i784, align 8, !tbaa !13
  br label %if.end785

if.end785:                                        ; preds = %if.then759, %for.body753
  %699 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %700 = load i64, ptr %699, align 8, !tbaa !8
  store i64 %700, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond786

for.cond786:                                      ; preds = %for.inc818, %if.end785
  %701 = load i64, ptr %i__, align 8, !tbaa !8
  %702 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp787 = icmp sle i64 %701, %702
  br i1 %cmp787, label %for.body788, label %for.end820

for.body788:                                      ; preds = %for.cond786
  %703 = load i64, ptr %i__, align 8, !tbaa !8
  %704 = load i64, ptr %j, align 8, !tbaa !8
  %705 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul789 = mul nsw i64 %704, %705
  %add790 = add nsw i64 %703, %mul789
  store i64 %add790, ptr %i__2, align 8, !tbaa !8
  %706 = load i64, ptr %i__, align 8, !tbaa !8
  %707 = load i64, ptr %j, align 8, !tbaa !8
  %708 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul791 = mul nsw i64 %707, %708
  %add792 = add nsw i64 %706, %mul791
  store i64 %add792, ptr %i__3, align 8, !tbaa !8
  %r793 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %709 = load double, ptr %r793, align 8, !tbaa !10
  %710 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %711 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx794 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %710, i64 %711
  %r795 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx794, i32 0, i32 0
  %712 = load double, ptr %r795, align 8, !tbaa !10
  %i797 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %713 = load double, ptr %i797, align 8, !tbaa !13
  %714 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %715 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx798 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %714, i64 %715
  %i799 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx798, i32 0, i32 1
  %716 = load double, ptr %i799, align 8, !tbaa !13
  %mul800 = fmul double %713, %716
  %neg801 = fneg double %mul800
  %717 = call double @llvm.fmuladd.f64(double %709, double %712, double %neg801)
  %r802 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %717, ptr %r802, align 8, !tbaa !10
  %r803 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %718 = load double, ptr %r803, align 8, !tbaa !10
  %719 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %720 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx804 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %719, i64 %720
  %i805 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx804, i32 0, i32 1
  %721 = load double, ptr %i805, align 8, !tbaa !13
  %i807 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %722 = load double, ptr %i807, align 8, !tbaa !13
  %723 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %724 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx808 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %723, i64 %724
  %r809 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx808, i32 0, i32 0
  %725 = load double, ptr %r809, align 8, !tbaa !10
  %mul810 = fmul double %722, %725
  %726 = call double @llvm.fmuladd.f64(double %718, double %721, double %mul810)
  %i811 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %726, ptr %i811, align 8, !tbaa !13
  %r812 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %727 = load double, ptr %r812, align 8, !tbaa !10
  %728 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %729 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx813 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %728, i64 %729
  %r814 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx813, i32 0, i32 0
  store double %727, ptr %r814, align 8, !tbaa !10
  %i815 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %730 = load double, ptr %i815, align 8, !tbaa !13
  %731 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %732 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx816 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %731, i64 %732
  %i817 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx816, i32 0, i32 1
  store double %730, ptr %i817, align 8, !tbaa !13
  br label %for.inc818

for.inc818:                                       ; preds = %for.body788
  %733 = load i64, ptr %i__, align 8, !tbaa !8
  %inc819 = add nsw i64 %733, 1
  store i64 %inc819, ptr %i__, align 8, !tbaa !8
  br label %for.cond786, !llvm.loop !31

for.end820:                                       ; preds = %for.cond786
  %734 = load i64, ptr %j, align 8, !tbaa !8
  %sub821 = sub nsw i64 %734, 1
  store i64 %sub821, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %k, align 8, !tbaa !8
  br label %for.cond822

for.cond822:                                      ; preds = %for.inc908, %for.end820
  %735 = load i64, ptr %k, align 8, !tbaa !8
  %736 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp823 = icmp sle i64 %735, %736
  br i1 %cmp823, label %for.body824, label %for.end910

for.body824:                                      ; preds = %for.cond822
  %737 = load i64, ptr %k, align 8, !tbaa !8
  %738 = load i64, ptr %j, align 8, !tbaa !8
  %739 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul825 = mul nsw i64 %738, %739
  %add826 = add nsw i64 %737, %mul825
  store i64 %add826, ptr %i__2, align 8, !tbaa !8
  %740 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %741 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx827 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %740, i64 %741
  %r828 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx827, i32 0, i32 0
  %742 = load double, ptr %r828, align 8, !tbaa !10
  %cmp829 = fcmp une double %742, 0.000000e+00
  br i1 %cmp829, label %if.then834, label %lor.lhs.false830

lor.lhs.false830:                                 ; preds = %for.body824
  %743 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %744 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx831 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %743, i64 %744
  %i832 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx831, i32 0, i32 1
  %745 = load double, ptr %i832, align 8, !tbaa !13
  %cmp833 = fcmp une double %745, 0.000000e+00
  br i1 %cmp833, label %if.then834, label %if.end907

if.then834:                                       ; preds = %lor.lhs.false830, %for.body824
  %746 = load i64, ptr %k, align 8, !tbaa !8
  %747 = load i64, ptr %j, align 8, !tbaa !8
  %748 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul835 = mul nsw i64 %747, %748
  %add836 = add nsw i64 %746, %mul835
  store i64 %add836, ptr %i__2, align 8, !tbaa !8
  %749 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r837 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %749, i32 0, i32 0
  %750 = load double, ptr %r837, align 8, !tbaa !10
  %751 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %752 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx838 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %751, i64 %752
  %r839 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx838, i32 0, i32 0
  %753 = load double, ptr %r839, align 8, !tbaa !10
  %754 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i841 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %754, i32 0, i32 1
  %755 = load double, ptr %i841, align 8, !tbaa !13
  %756 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %757 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx842 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %756, i64 %757
  %i843 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx842, i32 0, i32 1
  %758 = load double, ptr %i843, align 8, !tbaa !13
  %mul844 = fmul double %755, %758
  %neg845 = fneg double %mul844
  %759 = call double @llvm.fmuladd.f64(double %750, double %753, double %neg845)
  %r846 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %759, ptr %r846, align 8, !tbaa !10
  %760 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r847 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %760, i32 0, i32 0
  %761 = load double, ptr %r847, align 8, !tbaa !10
  %762 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %763 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx848 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %762, i64 %763
  %i849 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx848, i32 0, i32 1
  %764 = load double, ptr %i849, align 8, !tbaa !13
  %765 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i851 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %765, i32 0, i32 1
  %766 = load double, ptr %i851, align 8, !tbaa !13
  %767 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %768 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx852 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %767, i64 %768
  %r853 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx852, i32 0, i32 0
  %769 = load double, ptr %r853, align 8, !tbaa !10
  %mul854 = fmul double %766, %769
  %770 = call double @llvm.fmuladd.f64(double %761, double %764, double %mul854)
  %i855 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %770, ptr %i855, align 8, !tbaa !13
  %r856 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %771 = load double, ptr %r856, align 8, !tbaa !10
  %r857 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %771, ptr %r857, align 8, !tbaa !10
  %i858 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %772 = load double, ptr %i858, align 8, !tbaa !13
  %i859 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %772, ptr %i859, align 8, !tbaa !13
  %773 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %774 = load i64, ptr %773, align 8, !tbaa !8
  store i64 %774, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond860

for.cond860:                                      ; preds = %for.inc904, %if.then834
  %775 = load i64, ptr %i__, align 8, !tbaa !8
  %776 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp861 = icmp sle i64 %775, %776
  br i1 %cmp861, label %for.body862, label %for.end906

for.body862:                                      ; preds = %for.cond860
  %777 = load i64, ptr %i__, align 8, !tbaa !8
  %778 = load i64, ptr %j, align 8, !tbaa !8
  %779 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul863 = mul nsw i64 %778, %779
  %add864 = add nsw i64 %777, %mul863
  store i64 %add864, ptr %i__3, align 8, !tbaa !8
  %780 = load i64, ptr %i__, align 8, !tbaa !8
  %781 = load i64, ptr %j, align 8, !tbaa !8
  %782 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul865 = mul nsw i64 %781, %782
  %add866 = add nsw i64 %780, %mul865
  store i64 %add866, ptr %i__4, align 8, !tbaa !8
  %783 = load i64, ptr %i__, align 8, !tbaa !8
  %784 = load i64, ptr %k, align 8, !tbaa !8
  %785 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul867 = mul nsw i64 %784, %785
  %add868 = add nsw i64 %783, %mul867
  store i64 %add868, ptr %i__5, align 8, !tbaa !8
  %r869 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %786 = load double, ptr %r869, align 8, !tbaa !10
  %787 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %788 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx870 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %787, i64 %788
  %r871 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx870, i32 0, i32 0
  %789 = load double, ptr %r871, align 8, !tbaa !10
  %i873 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %790 = load double, ptr %i873, align 8, !tbaa !13
  %791 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %792 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx874 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %791, i64 %792
  %i875 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx874, i32 0, i32 1
  %793 = load double, ptr %i875, align 8, !tbaa !13
  %mul876 = fmul double %790, %793
  %neg877 = fneg double %mul876
  %794 = call double @llvm.fmuladd.f64(double %786, double %789, double %neg877)
  %r878 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  store double %794, ptr %r878, align 8, !tbaa !10
  %r879 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %795 = load double, ptr %r879, align 8, !tbaa !10
  %796 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %797 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx880 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %796, i64 %797
  %i881 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx880, i32 0, i32 1
  %798 = load double, ptr %i881, align 8, !tbaa !13
  %i883 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %799 = load double, ptr %i883, align 8, !tbaa !13
  %800 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %801 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx884 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %800, i64 %801
  %r885 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx884, i32 0, i32 0
  %802 = load double, ptr %r885, align 8, !tbaa !10
  %mul886 = fmul double %799, %802
  %803 = call double @llvm.fmuladd.f64(double %795, double %798, double %mul886)
  %i887 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  store double %803, ptr %i887, align 8, !tbaa !13
  %804 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %805 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx888 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %804, i64 %805
  %r889 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx888, i32 0, i32 0
  %806 = load double, ptr %r889, align 8, !tbaa !10
  %r890 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %807 = load double, ptr %r890, align 8, !tbaa !10
  %add891 = fadd double %806, %807
  %r892 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %add891, ptr %r892, align 8, !tbaa !10
  %808 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %809 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx893 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %808, i64 %809
  %i894 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx893, i32 0, i32 1
  %810 = load double, ptr %i894, align 8, !tbaa !13
  %i895 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %811 = load double, ptr %i895, align 8, !tbaa !13
  %add896 = fadd double %810, %811
  %i897 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %add896, ptr %i897, align 8, !tbaa !13
  %r898 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %812 = load double, ptr %r898, align 8, !tbaa !10
  %813 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %814 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx899 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %813, i64 %814
  %r900 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx899, i32 0, i32 0
  store double %812, ptr %r900, align 8, !tbaa !10
  %i901 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %815 = load double, ptr %i901, align 8, !tbaa !13
  %816 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %817 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx902 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %816, i64 %817
  %i903 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx902, i32 0, i32 1
  store double %815, ptr %i903, align 8, !tbaa !13
  br label %for.inc904

for.inc904:                                       ; preds = %for.body862
  %818 = load i64, ptr %i__, align 8, !tbaa !8
  %inc905 = add nsw i64 %818, 1
  store i64 %inc905, ptr %i__, align 8, !tbaa !8
  br label %for.cond860, !llvm.loop !32

for.end906:                                       ; preds = %for.cond860
  br label %if.end907

if.end907:                                        ; preds = %for.end906, %lor.lhs.false830
  br label %for.inc908

for.inc908:                                       ; preds = %if.end907
  %819 = load i64, ptr %k, align 8, !tbaa !8
  %inc909 = add nsw i64 %819, 1
  store i64 %inc909, ptr %k, align 8, !tbaa !8
  br label %for.cond822, !llvm.loop !33

for.end910:                                       ; preds = %for.cond822
  br label %for.inc911

for.inc911:                                       ; preds = %for.end910
  %820 = load i64, ptr %j, align 8, !tbaa !8
  %dec912 = add nsw i64 %820, -1
  store i64 %dec912, ptr %j, align 8, !tbaa !8
  br label %for.cond751, !llvm.loop !34

for.end913:                                       ; preds = %for.cond751
  br label %if.end1078

if.else914:                                       ; preds = %if.then748
  %821 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %822 = load i64, ptr %821, align 8, !tbaa !8
  store i64 %822, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %j, align 8, !tbaa !8
  br label %for.cond915

for.cond915:                                      ; preds = %for.inc1075, %if.else914
  %823 = load i64, ptr %j, align 8, !tbaa !8
  %824 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp916 = icmp sle i64 %823, %824
  br i1 %cmp916, label %for.body917, label %for.end1077

for.body917:                                      ; preds = %for.cond915
  %825 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r918 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %825, i32 0, i32 0
  %826 = load double, ptr %r918, align 8, !tbaa !10
  %r919 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %826, ptr %r919, align 8, !tbaa !10
  %827 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i920 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %827, i32 0, i32 1
  %828 = load double, ptr %i920, align 8, !tbaa !13
  %i921 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %828, ptr %i921, align 8, !tbaa !13
  %829 = load i64, ptr %nounit, align 8, !tbaa !8
  %tobool922 = icmp ne i64 %829, 0
  br i1 %tobool922, label %if.then923, label %if.end949

if.then923:                                       ; preds = %for.body917
  %830 = load i64, ptr %j, align 8, !tbaa !8
  %831 = load i64, ptr %j, align 8, !tbaa !8
  %832 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul924 = mul nsw i64 %831, %832
  %add925 = add nsw i64 %830, %mul924
  store i64 %add925, ptr %i__2, align 8, !tbaa !8
  %r926 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %833 = load double, ptr %r926, align 8, !tbaa !10
  %834 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %835 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx927 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %834, i64 %835
  %r928 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx927, i32 0, i32 0
  %836 = load double, ptr %r928, align 8, !tbaa !10
  %i930 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %837 = load double, ptr %i930, align 8, !tbaa !13
  %838 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %839 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx931 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %838, i64 %839
  %i932 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx931, i32 0, i32 1
  %840 = load double, ptr %i932, align 8, !tbaa !13
  %mul933 = fmul double %837, %840
  %neg934 = fneg double %mul933
  %841 = call double @llvm.fmuladd.f64(double %833, double %836, double %neg934)
  %r935 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %841, ptr %r935, align 8, !tbaa !10
  %r936 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %842 = load double, ptr %r936, align 8, !tbaa !10
  %843 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %844 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx937 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %843, i64 %844
  %i938 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx937, i32 0, i32 1
  %845 = load double, ptr %i938, align 8, !tbaa !13
  %i940 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %846 = load double, ptr %i940, align 8, !tbaa !13
  %847 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %848 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx941 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %847, i64 %848
  %r942 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx941, i32 0, i32 0
  %849 = load double, ptr %r942, align 8, !tbaa !10
  %mul943 = fmul double %846, %849
  %850 = call double @llvm.fmuladd.f64(double %842, double %845, double %mul943)
  %i944 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %850, ptr %i944, align 8, !tbaa !13
  %r945 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %851 = load double, ptr %r945, align 8, !tbaa !10
  %r946 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %851, ptr %r946, align 8, !tbaa !10
  %i947 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %852 = load double, ptr %i947, align 8, !tbaa !13
  %i948 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %852, ptr %i948, align 8, !tbaa !13
  br label %if.end949

if.end949:                                        ; preds = %if.then923, %for.body917
  %853 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %854 = load i64, ptr %853, align 8, !tbaa !8
  store i64 %854, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond950

for.cond950:                                      ; preds = %for.inc982, %if.end949
  %855 = load i64, ptr %i__, align 8, !tbaa !8
  %856 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp951 = icmp sle i64 %855, %856
  br i1 %cmp951, label %for.body952, label %for.end984

for.body952:                                      ; preds = %for.cond950
  %857 = load i64, ptr %i__, align 8, !tbaa !8
  %858 = load i64, ptr %j, align 8, !tbaa !8
  %859 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul953 = mul nsw i64 %858, %859
  %add954 = add nsw i64 %857, %mul953
  store i64 %add954, ptr %i__3, align 8, !tbaa !8
  %860 = load i64, ptr %i__, align 8, !tbaa !8
  %861 = load i64, ptr %j, align 8, !tbaa !8
  %862 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul955 = mul nsw i64 %861, %862
  %add956 = add nsw i64 %860, %mul955
  store i64 %add956, ptr %i__4, align 8, !tbaa !8
  %r957 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %863 = load double, ptr %r957, align 8, !tbaa !10
  %864 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %865 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx958 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %864, i64 %865
  %r959 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx958, i32 0, i32 0
  %866 = load double, ptr %r959, align 8, !tbaa !10
  %i961 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %867 = load double, ptr %i961, align 8, !tbaa !13
  %868 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %869 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx962 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %868, i64 %869
  %i963 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx962, i32 0, i32 1
  %870 = load double, ptr %i963, align 8, !tbaa !13
  %mul964 = fmul double %867, %870
  %neg965 = fneg double %mul964
  %871 = call double @llvm.fmuladd.f64(double %863, double %866, double %neg965)
  %r966 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %871, ptr %r966, align 8, !tbaa !10
  %r967 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %872 = load double, ptr %r967, align 8, !tbaa !10
  %873 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %874 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx968 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %873, i64 %874
  %i969 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx968, i32 0, i32 1
  %875 = load double, ptr %i969, align 8, !tbaa !13
  %i971 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %876 = load double, ptr %i971, align 8, !tbaa !13
  %877 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %878 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx972 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %877, i64 %878
  %r973 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx972, i32 0, i32 0
  %879 = load double, ptr %r973, align 8, !tbaa !10
  %mul974 = fmul double %876, %879
  %880 = call double @llvm.fmuladd.f64(double %872, double %875, double %mul974)
  %i975 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %880, ptr %i975, align 8, !tbaa !13
  %r976 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %881 = load double, ptr %r976, align 8, !tbaa !10
  %882 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %883 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx977 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %882, i64 %883
  %r978 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx977, i32 0, i32 0
  store double %881, ptr %r978, align 8, !tbaa !10
  %i979 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %884 = load double, ptr %i979, align 8, !tbaa !13
  %885 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %886 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx980 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %885, i64 %886
  %i981 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx980, i32 0, i32 1
  store double %884, ptr %i981, align 8, !tbaa !13
  br label %for.inc982

for.inc982:                                       ; preds = %for.body952
  %887 = load i64, ptr %i__, align 8, !tbaa !8
  %inc983 = add nsw i64 %887, 1
  store i64 %inc983, ptr %i__, align 8, !tbaa !8
  br label %for.cond950, !llvm.loop !35

for.end984:                                       ; preds = %for.cond950
  %888 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %889 = load i64, ptr %888, align 8, !tbaa !8
  store i64 %889, ptr %i__2, align 8, !tbaa !8
  %890 = load i64, ptr %j, align 8, !tbaa !8
  %add985 = add nsw i64 %890, 1
  store i64 %add985, ptr %k, align 8, !tbaa !8
  br label %for.cond986

for.cond986:                                      ; preds = %for.inc1072, %for.end984
  %891 = load i64, ptr %k, align 8, !tbaa !8
  %892 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp987 = icmp sle i64 %891, %892
  br i1 %cmp987, label %for.body988, label %for.end1074

for.body988:                                      ; preds = %for.cond986
  %893 = load i64, ptr %k, align 8, !tbaa !8
  %894 = load i64, ptr %j, align 8, !tbaa !8
  %895 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul989 = mul nsw i64 %894, %895
  %add990 = add nsw i64 %893, %mul989
  store i64 %add990, ptr %i__3, align 8, !tbaa !8
  %896 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %897 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx991 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %896, i64 %897
  %r992 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx991, i32 0, i32 0
  %898 = load double, ptr %r992, align 8, !tbaa !10
  %cmp993 = fcmp une double %898, 0.000000e+00
  br i1 %cmp993, label %if.then998, label %lor.lhs.false994

lor.lhs.false994:                                 ; preds = %for.body988
  %899 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %900 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx995 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %899, i64 %900
  %i996 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx995, i32 0, i32 1
  %901 = load double, ptr %i996, align 8, !tbaa !13
  %cmp997 = fcmp une double %901, 0.000000e+00
  br i1 %cmp997, label %if.then998, label %if.end1071

if.then998:                                       ; preds = %lor.lhs.false994, %for.body988
  %902 = load i64, ptr %k, align 8, !tbaa !8
  %903 = load i64, ptr %j, align 8, !tbaa !8
  %904 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul999 = mul nsw i64 %903, %904
  %add1000 = add nsw i64 %902, %mul999
  store i64 %add1000, ptr %i__3, align 8, !tbaa !8
  %905 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r1001 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %905, i32 0, i32 0
  %906 = load double, ptr %r1001, align 8, !tbaa !10
  %907 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %908 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1002 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %907, i64 %908
  %r1003 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1002, i32 0, i32 0
  %909 = load double, ptr %r1003, align 8, !tbaa !10
  %910 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i1005 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %910, i32 0, i32 1
  %911 = load double, ptr %i1005, align 8, !tbaa !13
  %912 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %913 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1006 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %912, i64 %913
  %i1007 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1006, i32 0, i32 1
  %914 = load double, ptr %i1007, align 8, !tbaa !13
  %mul1008 = fmul double %911, %914
  %neg1009 = fneg double %mul1008
  %915 = call double @llvm.fmuladd.f64(double %906, double %909, double %neg1009)
  %r1010 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %915, ptr %r1010, align 8, !tbaa !10
  %916 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r1011 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %916, i32 0, i32 0
  %917 = load double, ptr %r1011, align 8, !tbaa !10
  %918 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %919 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1012 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %918, i64 %919
  %i1013 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1012, i32 0, i32 1
  %920 = load double, ptr %i1013, align 8, !tbaa !13
  %921 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i1015 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %921, i32 0, i32 1
  %922 = load double, ptr %i1015, align 8, !tbaa !13
  %923 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %924 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1016 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %923, i64 %924
  %r1017 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1016, i32 0, i32 0
  %925 = load double, ptr %r1017, align 8, !tbaa !10
  %mul1018 = fmul double %922, %925
  %926 = call double @llvm.fmuladd.f64(double %917, double %920, double %mul1018)
  %i1019 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %926, ptr %i1019, align 8, !tbaa !13
  %r1020 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %927 = load double, ptr %r1020, align 8, !tbaa !10
  %r1021 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %927, ptr %r1021, align 8, !tbaa !10
  %i1022 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %928 = load double, ptr %i1022, align 8, !tbaa !13
  %i1023 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %928, ptr %i1023, align 8, !tbaa !13
  %929 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %930 = load i64, ptr %929, align 8, !tbaa !8
  store i64 %930, ptr %i__3, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond1024

for.cond1024:                                     ; preds = %for.inc1068, %if.then998
  %931 = load i64, ptr %i__, align 8, !tbaa !8
  %932 = load i64, ptr %i__3, align 8, !tbaa !8
  %cmp1025 = icmp sle i64 %931, %932
  br i1 %cmp1025, label %for.body1026, label %for.end1070

for.body1026:                                     ; preds = %for.cond1024
  %933 = load i64, ptr %i__, align 8, !tbaa !8
  %934 = load i64, ptr %j, align 8, !tbaa !8
  %935 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1027 = mul nsw i64 %934, %935
  %add1028 = add nsw i64 %933, %mul1027
  store i64 %add1028, ptr %i__4, align 8, !tbaa !8
  %936 = load i64, ptr %i__, align 8, !tbaa !8
  %937 = load i64, ptr %j, align 8, !tbaa !8
  %938 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1029 = mul nsw i64 %937, %938
  %add1030 = add nsw i64 %936, %mul1029
  store i64 %add1030, ptr %i__5, align 8, !tbaa !8
  %939 = load i64, ptr %i__, align 8, !tbaa !8
  %940 = load i64, ptr %k, align 8, !tbaa !8
  %941 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1031 = mul nsw i64 %940, %941
  %add1032 = add nsw i64 %939, %mul1031
  store i64 %add1032, ptr %i__6, align 8, !tbaa !8
  %r1033 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %942 = load double, ptr %r1033, align 8, !tbaa !10
  %943 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %944 = load i64, ptr %i__6, align 8, !tbaa !8
  %arrayidx1034 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %943, i64 %944
  %r1035 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1034, i32 0, i32 0
  %945 = load double, ptr %r1035, align 8, !tbaa !10
  %i1037 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %946 = load double, ptr %i1037, align 8, !tbaa !13
  %947 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %948 = load i64, ptr %i__6, align 8, !tbaa !8
  %arrayidx1038 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %947, i64 %948
  %i1039 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1038, i32 0, i32 1
  %949 = load double, ptr %i1039, align 8, !tbaa !13
  %mul1040 = fmul double %946, %949
  %neg1041 = fneg double %mul1040
  %950 = call double @llvm.fmuladd.f64(double %942, double %945, double %neg1041)
  %r1042 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  store double %950, ptr %r1042, align 8, !tbaa !10
  %r1043 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %951 = load double, ptr %r1043, align 8, !tbaa !10
  %952 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %953 = load i64, ptr %i__6, align 8, !tbaa !8
  %arrayidx1044 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %952, i64 %953
  %i1045 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1044, i32 0, i32 1
  %954 = load double, ptr %i1045, align 8, !tbaa !13
  %i1047 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %955 = load double, ptr %i1047, align 8, !tbaa !13
  %956 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %957 = load i64, ptr %i__6, align 8, !tbaa !8
  %arrayidx1048 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %956, i64 %957
  %r1049 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1048, i32 0, i32 0
  %958 = load double, ptr %r1049, align 8, !tbaa !10
  %mul1050 = fmul double %955, %958
  %959 = call double @llvm.fmuladd.f64(double %951, double %954, double %mul1050)
  %i1051 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  store double %959, ptr %i1051, align 8, !tbaa !13
  %960 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %961 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx1052 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %960, i64 %961
  %r1053 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1052, i32 0, i32 0
  %962 = load double, ptr %r1053, align 8, !tbaa !10
  %r1054 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %963 = load double, ptr %r1054, align 8, !tbaa !10
  %add1055 = fadd double %962, %963
  %r1056 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %add1055, ptr %r1056, align 8, !tbaa !10
  %964 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %965 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx1057 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %964, i64 %965
  %i1058 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1057, i32 0, i32 1
  %966 = load double, ptr %i1058, align 8, !tbaa !13
  %i1059 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %967 = load double, ptr %i1059, align 8, !tbaa !13
  %add1060 = fadd double %966, %967
  %i1061 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %add1060, ptr %i1061, align 8, !tbaa !13
  %r1062 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %968 = load double, ptr %r1062, align 8, !tbaa !10
  %969 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %970 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx1063 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %969, i64 %970
  %r1064 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1063, i32 0, i32 0
  store double %968, ptr %r1064, align 8, !tbaa !10
  %i1065 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %971 = load double, ptr %i1065, align 8, !tbaa !13
  %972 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %973 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx1066 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %972, i64 %973
  %i1067 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1066, i32 0, i32 1
  store double %971, ptr %i1067, align 8, !tbaa !13
  br label %for.inc1068

for.inc1068:                                      ; preds = %for.body1026
  %974 = load i64, ptr %i__, align 8, !tbaa !8
  %inc1069 = add nsw i64 %974, 1
  store i64 %inc1069, ptr %i__, align 8, !tbaa !8
  br label %for.cond1024, !llvm.loop !36

for.end1070:                                      ; preds = %for.cond1024
  br label %if.end1071

if.end1071:                                       ; preds = %for.end1070, %lor.lhs.false994
  br label %for.inc1072

for.inc1072:                                      ; preds = %if.end1071
  %975 = load i64, ptr %k, align 8, !tbaa !8
  %inc1073 = add nsw i64 %975, 1
  store i64 %inc1073, ptr %k, align 8, !tbaa !8
  br label %for.cond986, !llvm.loop !37

for.end1074:                                      ; preds = %for.cond986
  br label %for.inc1075

for.inc1075:                                      ; preds = %for.end1074
  %976 = load i64, ptr %j, align 8, !tbaa !8
  %inc1076 = add nsw i64 %976, 1
  store i64 %inc1076, ptr %j, align 8, !tbaa !8
  br label %for.cond915, !llvm.loop !38

for.end1077:                                      ; preds = %for.cond915
  br label %if.end1078

if.end1078:                                       ; preds = %for.end1077, %for.end913
  br label %if.end1528

if.else1079:                                      ; preds = %if.else745
  %977 = load i64, ptr %upper, align 8, !tbaa !8
  %tobool1080 = icmp ne i64 %977, 0
  br i1 %tobool1080, label %if.then1081, label %if.else1304

if.then1081:                                      ; preds = %if.else1079
  %978 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %979 = load i64, ptr %978, align 8, !tbaa !8
  store i64 %979, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %k, align 8, !tbaa !8
  br label %for.cond1082

for.cond1082:                                     ; preds = %for.inc1301, %if.then1081
  %980 = load i64, ptr %k, align 8, !tbaa !8
  %981 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp1083 = icmp sle i64 %980, %981
  br i1 %cmp1083, label %for.body1084, label %for.end1303

for.body1084:                                     ; preds = %for.cond1082
  %982 = load i64, ptr %k, align 8, !tbaa !8
  %sub1085 = sub nsw i64 %982, 1
  store i64 %sub1085, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %j, align 8, !tbaa !8
  br label %for.cond1086

for.cond1086:                                     ; preds = %for.inc1198, %for.body1084
  %983 = load i64, ptr %j, align 8, !tbaa !8
  %984 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp1087 = icmp sle i64 %983, %984
  br i1 %cmp1087, label %for.body1088, label %for.end1200

for.body1088:                                     ; preds = %for.cond1086
  %985 = load i64, ptr %j, align 8, !tbaa !8
  %986 = load i64, ptr %k, align 8, !tbaa !8
  %987 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul1089 = mul nsw i64 %986, %987
  %add1090 = add nsw i64 %985, %mul1089
  store i64 %add1090, ptr %i__3, align 8, !tbaa !8
  %988 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %989 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1091 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %988, i64 %989
  %r1092 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1091, i32 0, i32 0
  %990 = load double, ptr %r1092, align 8, !tbaa !10
  %cmp1093 = fcmp une double %990, 0.000000e+00
  br i1 %cmp1093, label %if.then1098, label %lor.lhs.false1094

lor.lhs.false1094:                                ; preds = %for.body1088
  %991 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %992 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1095 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %991, i64 %992
  %i1096 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1095, i32 0, i32 1
  %993 = load double, ptr %i1096, align 8, !tbaa !13
  %cmp1097 = fcmp une double %993, 0.000000e+00
  br i1 %cmp1097, label %if.then1098, label %if.end1197

if.then1098:                                      ; preds = %lor.lhs.false1094, %for.body1088
  %994 = load i64, ptr %noconj, align 8, !tbaa !8
  %tobool1099 = icmp ne i64 %994, 0
  br i1 %tobool1099, label %if.then1100, label %if.else1126

if.then1100:                                      ; preds = %if.then1098
  %995 = load i64, ptr %j, align 8, !tbaa !8
  %996 = load i64, ptr %k, align 8, !tbaa !8
  %997 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul1101 = mul nsw i64 %996, %997
  %add1102 = add nsw i64 %995, %mul1101
  store i64 %add1102, ptr %i__3, align 8, !tbaa !8
  %998 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r1103 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %998, i32 0, i32 0
  %999 = load double, ptr %r1103, align 8, !tbaa !10
  %1000 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1001 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1104 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1000, i64 %1001
  %r1105 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1104, i32 0, i32 0
  %1002 = load double, ptr %r1105, align 8, !tbaa !10
  %1003 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i1107 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1003, i32 0, i32 1
  %1004 = load double, ptr %i1107, align 8, !tbaa !13
  %1005 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1006 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1108 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1005, i64 %1006
  %i1109 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1108, i32 0, i32 1
  %1007 = load double, ptr %i1109, align 8, !tbaa !13
  %mul1110 = fmul double %1004, %1007
  %neg1111 = fneg double %mul1110
  %1008 = call double @llvm.fmuladd.f64(double %999, double %1002, double %neg1111)
  %r1112 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %1008, ptr %r1112, align 8, !tbaa !10
  %1009 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r1113 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1009, i32 0, i32 0
  %1010 = load double, ptr %r1113, align 8, !tbaa !10
  %1011 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1012 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1114 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1011, i64 %1012
  %i1115 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1114, i32 0, i32 1
  %1013 = load double, ptr %i1115, align 8, !tbaa !13
  %1014 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i1117 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1014, i32 0, i32 1
  %1015 = load double, ptr %i1117, align 8, !tbaa !13
  %1016 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1017 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1118 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1016, i64 %1017
  %r1119 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1118, i32 0, i32 0
  %1018 = load double, ptr %r1119, align 8, !tbaa !10
  %mul1120 = fmul double %1015, %1018
  %1019 = call double @llvm.fmuladd.f64(double %1010, double %1013, double %mul1120)
  %i1121 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %1019, ptr %i1121, align 8, !tbaa !13
  %r1122 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %1020 = load double, ptr %r1122, align 8, !tbaa !10
  %r1123 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %1020, ptr %r1123, align 8, !tbaa !10
  %i1124 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %1021 = load double, ptr %i1124, align 8, !tbaa !13
  %i1125 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %1021, ptr %i1125, align 8, !tbaa !13
  br label %if.end1149

if.else1126:                                      ; preds = %if.then1098
  %1022 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1023 = load i64, ptr %j, align 8, !tbaa !8
  %1024 = load i64, ptr %k, align 8, !tbaa !8
  %1025 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul1127 = mul nsw i64 %1024, %1025
  %add1128 = add nsw i64 %1023, %mul1127
  %arrayidx1129 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1022, i64 %add1128
  call void @v3p_netlib_d_cnjg(ptr noundef %z__2, ptr noundef %arrayidx1129)
  %1026 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r1130 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1026, i32 0, i32 0
  %1027 = load double, ptr %r1130, align 8, !tbaa !10
  %r1131 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %1028 = load double, ptr %r1131, align 8, !tbaa !10
  %1029 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i1133 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1029, i32 0, i32 1
  %1030 = load double, ptr %i1133, align 8, !tbaa !13
  %i1134 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %1031 = load double, ptr %i1134, align 8, !tbaa !13
  %mul1135 = fmul double %1030, %1031
  %neg1136 = fneg double %mul1135
  %1032 = call double @llvm.fmuladd.f64(double %1027, double %1028, double %neg1136)
  %r1137 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %1032, ptr %r1137, align 8, !tbaa !10
  %1033 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r1138 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1033, i32 0, i32 0
  %1034 = load double, ptr %r1138, align 8, !tbaa !10
  %i1139 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %1035 = load double, ptr %i1139, align 8, !tbaa !13
  %1036 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i1141 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1036, i32 0, i32 1
  %1037 = load double, ptr %i1141, align 8, !tbaa !13
  %r1142 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %1038 = load double, ptr %r1142, align 8, !tbaa !10
  %mul1143 = fmul double %1037, %1038
  %1039 = call double @llvm.fmuladd.f64(double %1034, double %1035, double %mul1143)
  %i1144 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %1039, ptr %i1144, align 8, !tbaa !13
  %r1145 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %1040 = load double, ptr %r1145, align 8, !tbaa !10
  %r1146 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %1040, ptr %r1146, align 8, !tbaa !10
  %i1147 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %1041 = load double, ptr %i1147, align 8, !tbaa !13
  %i1148 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %1041, ptr %i1148, align 8, !tbaa !13
  br label %if.end1149

if.end1149:                                       ; preds = %if.else1126, %if.then1100
  %1042 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1043 = load i64, ptr %1042, align 8, !tbaa !8
  store i64 %1043, ptr %i__3, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond1150

for.cond1150:                                     ; preds = %for.inc1194, %if.end1149
  %1044 = load i64, ptr %i__, align 8, !tbaa !8
  %1045 = load i64, ptr %i__3, align 8, !tbaa !8
  %cmp1151 = icmp sle i64 %1044, %1045
  br i1 %cmp1151, label %for.body1152, label %for.end1196

for.body1152:                                     ; preds = %for.cond1150
  %1046 = load i64, ptr %i__, align 8, !tbaa !8
  %1047 = load i64, ptr %j, align 8, !tbaa !8
  %1048 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1153 = mul nsw i64 %1047, %1048
  %add1154 = add nsw i64 %1046, %mul1153
  store i64 %add1154, ptr %i__4, align 8, !tbaa !8
  %1049 = load i64, ptr %i__, align 8, !tbaa !8
  %1050 = load i64, ptr %j, align 8, !tbaa !8
  %1051 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1155 = mul nsw i64 %1050, %1051
  %add1156 = add nsw i64 %1049, %mul1155
  store i64 %add1156, ptr %i__5, align 8, !tbaa !8
  %1052 = load i64, ptr %i__, align 8, !tbaa !8
  %1053 = load i64, ptr %k, align 8, !tbaa !8
  %1054 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1157 = mul nsw i64 %1053, %1054
  %add1158 = add nsw i64 %1052, %mul1157
  store i64 %add1158, ptr %i__6, align 8, !tbaa !8
  %r1159 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1055 = load double, ptr %r1159, align 8, !tbaa !10
  %1056 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1057 = load i64, ptr %i__6, align 8, !tbaa !8
  %arrayidx1160 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1056, i64 %1057
  %r1161 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1160, i32 0, i32 0
  %1058 = load double, ptr %r1161, align 8, !tbaa !10
  %i1163 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1059 = load double, ptr %i1163, align 8, !tbaa !13
  %1060 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1061 = load i64, ptr %i__6, align 8, !tbaa !8
  %arrayidx1164 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1060, i64 %1061
  %i1165 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1164, i32 0, i32 1
  %1062 = load double, ptr %i1165, align 8, !tbaa !13
  %mul1166 = fmul double %1059, %1062
  %neg1167 = fneg double %mul1166
  %1063 = call double @llvm.fmuladd.f64(double %1055, double %1058, double %neg1167)
  %r1168 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  store double %1063, ptr %r1168, align 8, !tbaa !10
  %r1169 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1064 = load double, ptr %r1169, align 8, !tbaa !10
  %1065 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1066 = load i64, ptr %i__6, align 8, !tbaa !8
  %arrayidx1170 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1065, i64 %1066
  %i1171 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1170, i32 0, i32 1
  %1067 = load double, ptr %i1171, align 8, !tbaa !13
  %i1173 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1068 = load double, ptr %i1173, align 8, !tbaa !13
  %1069 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1070 = load i64, ptr %i__6, align 8, !tbaa !8
  %arrayidx1174 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1069, i64 %1070
  %r1175 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1174, i32 0, i32 0
  %1071 = load double, ptr %r1175, align 8, !tbaa !10
  %mul1176 = fmul double %1068, %1071
  %1072 = call double @llvm.fmuladd.f64(double %1064, double %1067, double %mul1176)
  %i1177 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  store double %1072, ptr %i1177, align 8, !tbaa !13
  %1073 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1074 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx1178 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1073, i64 %1074
  %r1179 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1178, i32 0, i32 0
  %1075 = load double, ptr %r1179, align 8, !tbaa !10
  %r1180 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %1076 = load double, ptr %r1180, align 8, !tbaa !10
  %add1181 = fadd double %1075, %1076
  %r1182 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %add1181, ptr %r1182, align 8, !tbaa !10
  %1077 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1078 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx1183 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1077, i64 %1078
  %i1184 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1183, i32 0, i32 1
  %1079 = load double, ptr %i1184, align 8, !tbaa !13
  %i1185 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %1080 = load double, ptr %i1185, align 8, !tbaa !13
  %add1186 = fadd double %1079, %1080
  %i1187 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %add1186, ptr %i1187, align 8, !tbaa !13
  %r1188 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %1081 = load double, ptr %r1188, align 8, !tbaa !10
  %1082 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1083 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx1189 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1082, i64 %1083
  %r1190 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1189, i32 0, i32 0
  store double %1081, ptr %r1190, align 8, !tbaa !10
  %i1191 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %1084 = load double, ptr %i1191, align 8, !tbaa !13
  %1085 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1086 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx1192 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1085, i64 %1086
  %i1193 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1192, i32 0, i32 1
  store double %1084, ptr %i1193, align 8, !tbaa !13
  br label %for.inc1194

for.inc1194:                                      ; preds = %for.body1152
  %1087 = load i64, ptr %i__, align 8, !tbaa !8
  %inc1195 = add nsw i64 %1087, 1
  store i64 %inc1195, ptr %i__, align 8, !tbaa !8
  br label %for.cond1150, !llvm.loop !39

for.end1196:                                      ; preds = %for.cond1150
  br label %if.end1197

if.end1197:                                       ; preds = %for.end1196, %lor.lhs.false1094
  br label %for.inc1198

for.inc1198:                                      ; preds = %if.end1197
  %1088 = load i64, ptr %j, align 8, !tbaa !8
  %inc1199 = add nsw i64 %1088, 1
  store i64 %inc1199, ptr %j, align 8, !tbaa !8
  br label %for.cond1086, !llvm.loop !40

for.end1200:                                      ; preds = %for.cond1086
  %1089 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r1201 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1089, i32 0, i32 0
  %1090 = load double, ptr %r1201, align 8, !tbaa !10
  %r1202 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %1090, ptr %r1202, align 8, !tbaa !10
  %1091 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i1203 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1091, i32 0, i32 1
  %1092 = load double, ptr %i1203, align 8, !tbaa !13
  %i1204 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %1092, ptr %i1204, align 8, !tbaa !13
  %1093 = load i64, ptr %nounit, align 8, !tbaa !8
  %tobool1205 = icmp ne i64 %1093, 0
  br i1 %tobool1205, label %if.then1206, label %if.end1258

if.then1206:                                      ; preds = %for.end1200
  %1094 = load i64, ptr %noconj, align 8, !tbaa !8
  %tobool1207 = icmp ne i64 %1094, 0
  br i1 %tobool1207, label %if.then1208, label %if.else1234

if.then1208:                                      ; preds = %if.then1206
  %1095 = load i64, ptr %k, align 8, !tbaa !8
  %1096 = load i64, ptr %k, align 8, !tbaa !8
  %1097 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul1209 = mul nsw i64 %1096, %1097
  %add1210 = add nsw i64 %1095, %mul1209
  store i64 %add1210, ptr %i__2, align 8, !tbaa !8
  %r1211 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1098 = load double, ptr %r1211, align 8, !tbaa !10
  %1099 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1100 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx1212 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1099, i64 %1100
  %r1213 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1212, i32 0, i32 0
  %1101 = load double, ptr %r1213, align 8, !tbaa !10
  %i1215 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1102 = load double, ptr %i1215, align 8, !tbaa !13
  %1103 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1104 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx1216 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1103, i64 %1104
  %i1217 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1216, i32 0, i32 1
  %1105 = load double, ptr %i1217, align 8, !tbaa !13
  %mul1218 = fmul double %1102, %1105
  %neg1219 = fneg double %mul1218
  %1106 = call double @llvm.fmuladd.f64(double %1098, double %1101, double %neg1219)
  %r1220 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %1106, ptr %r1220, align 8, !tbaa !10
  %r1221 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1107 = load double, ptr %r1221, align 8, !tbaa !10
  %1108 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1109 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx1222 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1108, i64 %1109
  %i1223 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1222, i32 0, i32 1
  %1110 = load double, ptr %i1223, align 8, !tbaa !13
  %i1225 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1111 = load double, ptr %i1225, align 8, !tbaa !13
  %1112 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1113 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx1226 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1112, i64 %1113
  %r1227 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1226, i32 0, i32 0
  %1114 = load double, ptr %r1227, align 8, !tbaa !10
  %mul1228 = fmul double %1111, %1114
  %1115 = call double @llvm.fmuladd.f64(double %1107, double %1110, double %mul1228)
  %i1229 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %1115, ptr %i1229, align 8, !tbaa !13
  %r1230 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %1116 = load double, ptr %r1230, align 8, !tbaa !10
  %r1231 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %1116, ptr %r1231, align 8, !tbaa !10
  %i1232 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %1117 = load double, ptr %i1232, align 8, !tbaa !13
  %i1233 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %1117, ptr %i1233, align 8, !tbaa !13
  br label %if.end1257

if.else1234:                                      ; preds = %if.then1206
  %1118 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1119 = load i64, ptr %k, align 8, !tbaa !8
  %1120 = load i64, ptr %k, align 8, !tbaa !8
  %1121 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul1235 = mul nsw i64 %1120, %1121
  %add1236 = add nsw i64 %1119, %mul1235
  %arrayidx1237 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1118, i64 %add1236
  call void @v3p_netlib_d_cnjg(ptr noundef %z__2, ptr noundef %arrayidx1237)
  %r1238 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1122 = load double, ptr %r1238, align 8, !tbaa !10
  %r1239 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %1123 = load double, ptr %r1239, align 8, !tbaa !10
  %i1241 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1124 = load double, ptr %i1241, align 8, !tbaa !13
  %i1242 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %1125 = load double, ptr %i1242, align 8, !tbaa !13
  %mul1243 = fmul double %1124, %1125
  %neg1244 = fneg double %mul1243
  %1126 = call double @llvm.fmuladd.f64(double %1122, double %1123, double %neg1244)
  %r1245 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %1126, ptr %r1245, align 8, !tbaa !10
  %r1246 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1127 = load double, ptr %r1246, align 8, !tbaa !10
  %i1247 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %1128 = load double, ptr %i1247, align 8, !tbaa !13
  %i1249 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1129 = load double, ptr %i1249, align 8, !tbaa !13
  %r1250 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %1130 = load double, ptr %r1250, align 8, !tbaa !10
  %mul1251 = fmul double %1129, %1130
  %1131 = call double @llvm.fmuladd.f64(double %1127, double %1128, double %mul1251)
  %i1252 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %1131, ptr %i1252, align 8, !tbaa !13
  %r1253 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %1132 = load double, ptr %r1253, align 8, !tbaa !10
  %r1254 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %1132, ptr %r1254, align 8, !tbaa !10
  %i1255 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %1133 = load double, ptr %i1255, align 8, !tbaa !13
  %i1256 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %1133, ptr %i1256, align 8, !tbaa !13
  br label %if.end1257

if.end1257:                                       ; preds = %if.else1234, %if.then1208
  br label %if.end1258

if.end1258:                                       ; preds = %if.end1257, %for.end1200
  %r1259 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1134 = load double, ptr %r1259, align 8, !tbaa !10
  %cmp1260 = fcmp une double %1134, 1.000000e+00
  br i1 %cmp1260, label %if.then1264, label %lor.lhs.false1261

lor.lhs.false1261:                                ; preds = %if.end1258
  %i1262 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1135 = load double, ptr %i1262, align 8, !tbaa !13
  %cmp1263 = fcmp une double %1135, 0.000000e+00
  br i1 %cmp1263, label %if.then1264, label %if.end1300

if.then1264:                                      ; preds = %lor.lhs.false1261, %if.end1258
  %1136 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1137 = load i64, ptr %1136, align 8, !tbaa !8
  store i64 %1137, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond1265

for.cond1265:                                     ; preds = %for.inc1297, %if.then1264
  %1138 = load i64, ptr %i__, align 8, !tbaa !8
  %1139 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp1266 = icmp sle i64 %1138, %1139
  br i1 %cmp1266, label %for.body1267, label %for.end1299

for.body1267:                                     ; preds = %for.cond1265
  %1140 = load i64, ptr %i__, align 8, !tbaa !8
  %1141 = load i64, ptr %k, align 8, !tbaa !8
  %1142 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1268 = mul nsw i64 %1141, %1142
  %add1269 = add nsw i64 %1140, %mul1268
  store i64 %add1269, ptr %i__3, align 8, !tbaa !8
  %1143 = load i64, ptr %i__, align 8, !tbaa !8
  %1144 = load i64, ptr %k, align 8, !tbaa !8
  %1145 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1270 = mul nsw i64 %1144, %1145
  %add1271 = add nsw i64 %1143, %mul1270
  store i64 %add1271, ptr %i__4, align 8, !tbaa !8
  %r1272 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1146 = load double, ptr %r1272, align 8, !tbaa !10
  %1147 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1148 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx1273 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1147, i64 %1148
  %r1274 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1273, i32 0, i32 0
  %1149 = load double, ptr %r1274, align 8, !tbaa !10
  %i1276 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1150 = load double, ptr %i1276, align 8, !tbaa !13
  %1151 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1152 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx1277 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1151, i64 %1152
  %i1278 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1277, i32 0, i32 1
  %1153 = load double, ptr %i1278, align 8, !tbaa !13
  %mul1279 = fmul double %1150, %1153
  %neg1280 = fneg double %mul1279
  %1154 = call double @llvm.fmuladd.f64(double %1146, double %1149, double %neg1280)
  %r1281 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %1154, ptr %r1281, align 8, !tbaa !10
  %r1282 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1155 = load double, ptr %r1282, align 8, !tbaa !10
  %1156 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1157 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx1283 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1156, i64 %1157
  %i1284 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1283, i32 0, i32 1
  %1158 = load double, ptr %i1284, align 8, !tbaa !13
  %i1286 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1159 = load double, ptr %i1286, align 8, !tbaa !13
  %1160 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1161 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx1287 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1160, i64 %1161
  %r1288 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1287, i32 0, i32 0
  %1162 = load double, ptr %r1288, align 8, !tbaa !10
  %mul1289 = fmul double %1159, %1162
  %1163 = call double @llvm.fmuladd.f64(double %1155, double %1158, double %mul1289)
  %i1290 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %1163, ptr %i1290, align 8, !tbaa !13
  %r1291 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %1164 = load double, ptr %r1291, align 8, !tbaa !10
  %1165 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1166 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1292 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1165, i64 %1166
  %r1293 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1292, i32 0, i32 0
  store double %1164, ptr %r1293, align 8, !tbaa !10
  %i1294 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %1167 = load double, ptr %i1294, align 8, !tbaa !13
  %1168 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1169 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1295 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1168, i64 %1169
  %i1296 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1295, i32 0, i32 1
  store double %1167, ptr %i1296, align 8, !tbaa !13
  br label %for.inc1297

for.inc1297:                                      ; preds = %for.body1267
  %1170 = load i64, ptr %i__, align 8, !tbaa !8
  %inc1298 = add nsw i64 %1170, 1
  store i64 %inc1298, ptr %i__, align 8, !tbaa !8
  br label %for.cond1265, !llvm.loop !41

for.end1299:                                      ; preds = %for.cond1265
  br label %if.end1300

if.end1300:                                       ; preds = %for.end1299, %lor.lhs.false1261
  br label %for.inc1301

for.inc1301:                                      ; preds = %if.end1300
  %1171 = load i64, ptr %k, align 8, !tbaa !8
  %inc1302 = add nsw i64 %1171, 1
  store i64 %inc1302, ptr %k, align 8, !tbaa !8
  br label %for.cond1082, !llvm.loop !42

for.end1303:                                      ; preds = %for.cond1082
  br label %if.end1527

if.else1304:                                      ; preds = %if.else1079
  %1172 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1173 = load i64, ptr %1172, align 8, !tbaa !8
  store i64 %1173, ptr %k, align 8, !tbaa !8
  br label %for.cond1305

for.cond1305:                                     ; preds = %for.inc1524, %if.else1304
  %1174 = load i64, ptr %k, align 8, !tbaa !8
  %cmp1306 = icmp sge i64 %1174, 1
  br i1 %cmp1306, label %for.body1307, label %for.end1526

for.body1307:                                     ; preds = %for.cond1305
  %1175 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %1176 = load i64, ptr %1175, align 8, !tbaa !8
  store i64 %1176, ptr %i__1, align 8, !tbaa !8
  %1177 = load i64, ptr %k, align 8, !tbaa !8
  %add1308 = add nsw i64 %1177, 1
  store i64 %add1308, ptr %j, align 8, !tbaa !8
  br label %for.cond1309

for.cond1309:                                     ; preds = %for.inc1421, %for.body1307
  %1178 = load i64, ptr %j, align 8, !tbaa !8
  %1179 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp1310 = icmp sle i64 %1178, %1179
  br i1 %cmp1310, label %for.body1311, label %for.end1423

for.body1311:                                     ; preds = %for.cond1309
  %1180 = load i64, ptr %j, align 8, !tbaa !8
  %1181 = load i64, ptr %k, align 8, !tbaa !8
  %1182 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul1312 = mul nsw i64 %1181, %1182
  %add1313 = add nsw i64 %1180, %mul1312
  store i64 %add1313, ptr %i__2, align 8, !tbaa !8
  %1183 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1184 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx1314 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1183, i64 %1184
  %r1315 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1314, i32 0, i32 0
  %1185 = load double, ptr %r1315, align 8, !tbaa !10
  %cmp1316 = fcmp une double %1185, 0.000000e+00
  br i1 %cmp1316, label %if.then1321, label %lor.lhs.false1317

lor.lhs.false1317:                                ; preds = %for.body1311
  %1186 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1187 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx1318 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1186, i64 %1187
  %i1319 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1318, i32 0, i32 1
  %1188 = load double, ptr %i1319, align 8, !tbaa !13
  %cmp1320 = fcmp une double %1188, 0.000000e+00
  br i1 %cmp1320, label %if.then1321, label %if.end1420

if.then1321:                                      ; preds = %lor.lhs.false1317, %for.body1311
  %1189 = load i64, ptr %noconj, align 8, !tbaa !8
  %tobool1322 = icmp ne i64 %1189, 0
  br i1 %tobool1322, label %if.then1323, label %if.else1349

if.then1323:                                      ; preds = %if.then1321
  %1190 = load i64, ptr %j, align 8, !tbaa !8
  %1191 = load i64, ptr %k, align 8, !tbaa !8
  %1192 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul1324 = mul nsw i64 %1191, %1192
  %add1325 = add nsw i64 %1190, %mul1324
  store i64 %add1325, ptr %i__2, align 8, !tbaa !8
  %1193 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r1326 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1193, i32 0, i32 0
  %1194 = load double, ptr %r1326, align 8, !tbaa !10
  %1195 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1196 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx1327 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1195, i64 %1196
  %r1328 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1327, i32 0, i32 0
  %1197 = load double, ptr %r1328, align 8, !tbaa !10
  %1198 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i1330 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1198, i32 0, i32 1
  %1199 = load double, ptr %i1330, align 8, !tbaa !13
  %1200 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1201 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx1331 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1200, i64 %1201
  %i1332 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1331, i32 0, i32 1
  %1202 = load double, ptr %i1332, align 8, !tbaa !13
  %mul1333 = fmul double %1199, %1202
  %neg1334 = fneg double %mul1333
  %1203 = call double @llvm.fmuladd.f64(double %1194, double %1197, double %neg1334)
  %r1335 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %1203, ptr %r1335, align 8, !tbaa !10
  %1204 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r1336 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1204, i32 0, i32 0
  %1205 = load double, ptr %r1336, align 8, !tbaa !10
  %1206 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1207 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx1337 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1206, i64 %1207
  %i1338 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1337, i32 0, i32 1
  %1208 = load double, ptr %i1338, align 8, !tbaa !13
  %1209 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i1340 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1209, i32 0, i32 1
  %1210 = load double, ptr %i1340, align 8, !tbaa !13
  %1211 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1212 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx1341 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1211, i64 %1212
  %r1342 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1341, i32 0, i32 0
  %1213 = load double, ptr %r1342, align 8, !tbaa !10
  %mul1343 = fmul double %1210, %1213
  %1214 = call double @llvm.fmuladd.f64(double %1205, double %1208, double %mul1343)
  %i1344 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %1214, ptr %i1344, align 8, !tbaa !13
  %r1345 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %1215 = load double, ptr %r1345, align 8, !tbaa !10
  %r1346 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %1215, ptr %r1346, align 8, !tbaa !10
  %i1347 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %1216 = load double, ptr %i1347, align 8, !tbaa !13
  %i1348 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %1216, ptr %i1348, align 8, !tbaa !13
  br label %if.end1372

if.else1349:                                      ; preds = %if.then1321
  %1217 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1218 = load i64, ptr %j, align 8, !tbaa !8
  %1219 = load i64, ptr %k, align 8, !tbaa !8
  %1220 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul1350 = mul nsw i64 %1219, %1220
  %add1351 = add nsw i64 %1218, %mul1350
  %arrayidx1352 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1217, i64 %add1351
  call void @v3p_netlib_d_cnjg(ptr noundef %z__2, ptr noundef %arrayidx1352)
  %1221 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r1353 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1221, i32 0, i32 0
  %1222 = load double, ptr %r1353, align 8, !tbaa !10
  %r1354 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %1223 = load double, ptr %r1354, align 8, !tbaa !10
  %1224 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i1356 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1224, i32 0, i32 1
  %1225 = load double, ptr %i1356, align 8, !tbaa !13
  %i1357 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %1226 = load double, ptr %i1357, align 8, !tbaa !13
  %mul1358 = fmul double %1225, %1226
  %neg1359 = fneg double %mul1358
  %1227 = call double @llvm.fmuladd.f64(double %1222, double %1223, double %neg1359)
  %r1360 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %1227, ptr %r1360, align 8, !tbaa !10
  %1228 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r1361 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1228, i32 0, i32 0
  %1229 = load double, ptr %r1361, align 8, !tbaa !10
  %i1362 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %1230 = load double, ptr %i1362, align 8, !tbaa !13
  %1231 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i1364 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1231, i32 0, i32 1
  %1232 = load double, ptr %i1364, align 8, !tbaa !13
  %r1365 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %1233 = load double, ptr %r1365, align 8, !tbaa !10
  %mul1366 = fmul double %1232, %1233
  %1234 = call double @llvm.fmuladd.f64(double %1229, double %1230, double %mul1366)
  %i1367 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %1234, ptr %i1367, align 8, !tbaa !13
  %r1368 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %1235 = load double, ptr %r1368, align 8, !tbaa !10
  %r1369 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %1235, ptr %r1369, align 8, !tbaa !10
  %i1370 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %1236 = load double, ptr %i1370, align 8, !tbaa !13
  %i1371 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %1236, ptr %i1371, align 8, !tbaa !13
  br label %if.end1372

if.end1372:                                       ; preds = %if.else1349, %if.then1323
  %1237 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1238 = load i64, ptr %1237, align 8, !tbaa !8
  store i64 %1238, ptr %i__2, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond1373

for.cond1373:                                     ; preds = %for.inc1417, %if.end1372
  %1239 = load i64, ptr %i__, align 8, !tbaa !8
  %1240 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp1374 = icmp sle i64 %1239, %1240
  br i1 %cmp1374, label %for.body1375, label %for.end1419

for.body1375:                                     ; preds = %for.cond1373
  %1241 = load i64, ptr %i__, align 8, !tbaa !8
  %1242 = load i64, ptr %j, align 8, !tbaa !8
  %1243 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1376 = mul nsw i64 %1242, %1243
  %add1377 = add nsw i64 %1241, %mul1376
  store i64 %add1377, ptr %i__3, align 8, !tbaa !8
  %1244 = load i64, ptr %i__, align 8, !tbaa !8
  %1245 = load i64, ptr %j, align 8, !tbaa !8
  %1246 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1378 = mul nsw i64 %1245, %1246
  %add1379 = add nsw i64 %1244, %mul1378
  store i64 %add1379, ptr %i__4, align 8, !tbaa !8
  %1247 = load i64, ptr %i__, align 8, !tbaa !8
  %1248 = load i64, ptr %k, align 8, !tbaa !8
  %1249 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1380 = mul nsw i64 %1248, %1249
  %add1381 = add nsw i64 %1247, %mul1380
  store i64 %add1381, ptr %i__5, align 8, !tbaa !8
  %r1382 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1250 = load double, ptr %r1382, align 8, !tbaa !10
  %1251 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1252 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx1383 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1251, i64 %1252
  %r1384 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1383, i32 0, i32 0
  %1253 = load double, ptr %r1384, align 8, !tbaa !10
  %i1386 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1254 = load double, ptr %i1386, align 8, !tbaa !13
  %1255 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1256 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx1387 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1255, i64 %1256
  %i1388 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1387, i32 0, i32 1
  %1257 = load double, ptr %i1388, align 8, !tbaa !13
  %mul1389 = fmul double %1254, %1257
  %neg1390 = fneg double %mul1389
  %1258 = call double @llvm.fmuladd.f64(double %1250, double %1253, double %neg1390)
  %r1391 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  store double %1258, ptr %r1391, align 8, !tbaa !10
  %r1392 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1259 = load double, ptr %r1392, align 8, !tbaa !10
  %1260 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1261 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx1393 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1260, i64 %1261
  %i1394 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1393, i32 0, i32 1
  %1262 = load double, ptr %i1394, align 8, !tbaa !13
  %i1396 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1263 = load double, ptr %i1396, align 8, !tbaa !13
  %1264 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1265 = load i64, ptr %i__5, align 8, !tbaa !8
  %arrayidx1397 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1264, i64 %1265
  %r1398 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1397, i32 0, i32 0
  %1266 = load double, ptr %r1398, align 8, !tbaa !10
  %mul1399 = fmul double %1263, %1266
  %1267 = call double @llvm.fmuladd.f64(double %1259, double %1262, double %mul1399)
  %i1400 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  store double %1267, ptr %i1400, align 8, !tbaa !13
  %1268 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1269 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx1401 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1268, i64 %1269
  %r1402 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1401, i32 0, i32 0
  %1270 = load double, ptr %r1402, align 8, !tbaa !10
  %r1403 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %1271 = load double, ptr %r1403, align 8, !tbaa !10
  %add1404 = fadd double %1270, %1271
  %r1405 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %add1404, ptr %r1405, align 8, !tbaa !10
  %1272 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1273 = load i64, ptr %i__4, align 8, !tbaa !8
  %arrayidx1406 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1272, i64 %1273
  %i1407 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1406, i32 0, i32 1
  %1274 = load double, ptr %i1407, align 8, !tbaa !13
  %i1408 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %1275 = load double, ptr %i1408, align 8, !tbaa !13
  %add1409 = fadd double %1274, %1275
  %i1410 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %add1409, ptr %i1410, align 8, !tbaa !13
  %r1411 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %1276 = load double, ptr %r1411, align 8, !tbaa !10
  %1277 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1278 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1412 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1277, i64 %1278
  %r1413 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1412, i32 0, i32 0
  store double %1276, ptr %r1413, align 8, !tbaa !10
  %i1414 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %1279 = load double, ptr %i1414, align 8, !tbaa !13
  %1280 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1281 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1415 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1280, i64 %1281
  %i1416 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1415, i32 0, i32 1
  store double %1279, ptr %i1416, align 8, !tbaa !13
  br label %for.inc1417

for.inc1417:                                      ; preds = %for.body1375
  %1282 = load i64, ptr %i__, align 8, !tbaa !8
  %inc1418 = add nsw i64 %1282, 1
  store i64 %inc1418, ptr %i__, align 8, !tbaa !8
  br label %for.cond1373, !llvm.loop !43

for.end1419:                                      ; preds = %for.cond1373
  br label %if.end1420

if.end1420:                                       ; preds = %for.end1419, %lor.lhs.false1317
  br label %for.inc1421

for.inc1421:                                      ; preds = %if.end1420
  %1283 = load i64, ptr %j, align 8, !tbaa !8
  %inc1422 = add nsw i64 %1283, 1
  store i64 %inc1422, ptr %j, align 8, !tbaa !8
  br label %for.cond1309, !llvm.loop !44

for.end1423:                                      ; preds = %for.cond1309
  %1284 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %r1424 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1284, i32 0, i32 0
  %1285 = load double, ptr %r1424, align 8, !tbaa !10
  %r1425 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %1285, ptr %r1425, align 8, !tbaa !10
  %1286 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %i1426 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1286, i32 0, i32 1
  %1287 = load double, ptr %i1426, align 8, !tbaa !13
  %i1427 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %1287, ptr %i1427, align 8, !tbaa !13
  %1288 = load i64, ptr %nounit, align 8, !tbaa !8
  %tobool1428 = icmp ne i64 %1288, 0
  br i1 %tobool1428, label %if.then1429, label %if.end1481

if.then1429:                                      ; preds = %for.end1423
  %1289 = load i64, ptr %noconj, align 8, !tbaa !8
  %tobool1430 = icmp ne i64 %1289, 0
  br i1 %tobool1430, label %if.then1431, label %if.else1457

if.then1431:                                      ; preds = %if.then1429
  %1290 = load i64, ptr %k, align 8, !tbaa !8
  %1291 = load i64, ptr %k, align 8, !tbaa !8
  %1292 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul1432 = mul nsw i64 %1291, %1292
  %add1433 = add nsw i64 %1290, %mul1432
  store i64 %add1433, ptr %i__1, align 8, !tbaa !8
  %r1434 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1293 = load double, ptr %r1434, align 8, !tbaa !10
  %1294 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1295 = load i64, ptr %i__1, align 8, !tbaa !8
  %arrayidx1435 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1294, i64 %1295
  %r1436 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1435, i32 0, i32 0
  %1296 = load double, ptr %r1436, align 8, !tbaa !10
  %i1438 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1297 = load double, ptr %i1438, align 8, !tbaa !13
  %1298 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1299 = load i64, ptr %i__1, align 8, !tbaa !8
  %arrayidx1439 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1298, i64 %1299
  %i1440 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1439, i32 0, i32 1
  %1300 = load double, ptr %i1440, align 8, !tbaa !13
  %mul1441 = fmul double %1297, %1300
  %neg1442 = fneg double %mul1441
  %1301 = call double @llvm.fmuladd.f64(double %1293, double %1296, double %neg1442)
  %r1443 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %1301, ptr %r1443, align 8, !tbaa !10
  %r1444 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1302 = load double, ptr %r1444, align 8, !tbaa !10
  %1303 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1304 = load i64, ptr %i__1, align 8, !tbaa !8
  %arrayidx1445 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1303, i64 %1304
  %i1446 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1445, i32 0, i32 1
  %1305 = load double, ptr %i1446, align 8, !tbaa !13
  %i1448 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1306 = load double, ptr %i1448, align 8, !tbaa !13
  %1307 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1308 = load i64, ptr %i__1, align 8, !tbaa !8
  %arrayidx1449 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1307, i64 %1308
  %r1450 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1449, i32 0, i32 0
  %1309 = load double, ptr %r1450, align 8, !tbaa !10
  %mul1451 = fmul double %1306, %1309
  %1310 = call double @llvm.fmuladd.f64(double %1302, double %1305, double %mul1451)
  %i1452 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %1310, ptr %i1452, align 8, !tbaa !13
  %r1453 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %1311 = load double, ptr %r1453, align 8, !tbaa !10
  %r1454 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %1311, ptr %r1454, align 8, !tbaa !10
  %i1455 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %1312 = load double, ptr %i1455, align 8, !tbaa !13
  %i1456 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %1312, ptr %i1456, align 8, !tbaa !13
  br label %if.end1480

if.else1457:                                      ; preds = %if.then1429
  %1313 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1314 = load i64, ptr %k, align 8, !tbaa !8
  %1315 = load i64, ptr %k, align 8, !tbaa !8
  %1316 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul1458 = mul nsw i64 %1315, %1316
  %add1459 = add nsw i64 %1314, %mul1458
  %arrayidx1460 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1313, i64 %add1459
  call void @v3p_netlib_d_cnjg(ptr noundef %z__2, ptr noundef %arrayidx1460)
  %r1461 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1317 = load double, ptr %r1461, align 8, !tbaa !10
  %r1462 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %1318 = load double, ptr %r1462, align 8, !tbaa !10
  %i1464 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1319 = load double, ptr %i1464, align 8, !tbaa !13
  %i1465 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %1320 = load double, ptr %i1465, align 8, !tbaa !13
  %mul1466 = fmul double %1319, %1320
  %neg1467 = fneg double %mul1466
  %1321 = call double @llvm.fmuladd.f64(double %1317, double %1318, double %neg1467)
  %r1468 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %1321, ptr %r1468, align 8, !tbaa !10
  %r1469 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1322 = load double, ptr %r1469, align 8, !tbaa !10
  %i1470 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 1
  %1323 = load double, ptr %i1470, align 8, !tbaa !13
  %i1472 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1324 = load double, ptr %i1472, align 8, !tbaa !13
  %r1473 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__2, i32 0, i32 0
  %1325 = load double, ptr %r1473, align 8, !tbaa !10
  %mul1474 = fmul double %1324, %1325
  %1326 = call double @llvm.fmuladd.f64(double %1322, double %1323, double %mul1474)
  %i1475 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %1326, ptr %i1475, align 8, !tbaa !13
  %r1476 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %1327 = load double, ptr %r1476, align 8, !tbaa !10
  %r1477 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  store double %1327, ptr %r1477, align 8, !tbaa !10
  %i1478 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %1328 = load double, ptr %i1478, align 8, !tbaa !13
  %i1479 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  store double %1328, ptr %i1479, align 8, !tbaa !13
  br label %if.end1480

if.end1480:                                       ; preds = %if.else1457, %if.then1431
  br label %if.end1481

if.end1481:                                       ; preds = %if.end1480, %for.end1423
  %r1482 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1329 = load double, ptr %r1482, align 8, !tbaa !10
  %cmp1483 = fcmp une double %1329, 1.000000e+00
  br i1 %cmp1483, label %if.then1487, label %lor.lhs.false1484

lor.lhs.false1484:                                ; preds = %if.end1481
  %i1485 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1330 = load double, ptr %i1485, align 8, !tbaa !13
  %cmp1486 = fcmp une double %1330, 0.000000e+00
  br i1 %cmp1486, label %if.then1487, label %if.end1523

if.then1487:                                      ; preds = %lor.lhs.false1484, %if.end1481
  %1331 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1332 = load i64, ptr %1331, align 8, !tbaa !8
  store i64 %1332, ptr %i__1, align 8, !tbaa !8
  store i64 1, ptr %i__, align 8, !tbaa !8
  br label %for.cond1488

for.cond1488:                                     ; preds = %for.inc1520, %if.then1487
  %1333 = load i64, ptr %i__, align 8, !tbaa !8
  %1334 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp1489 = icmp sle i64 %1333, %1334
  br i1 %cmp1489, label %for.body1490, label %for.end1522

for.body1490:                                     ; preds = %for.cond1488
  %1335 = load i64, ptr %i__, align 8, !tbaa !8
  %1336 = load i64, ptr %k, align 8, !tbaa !8
  %1337 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1491 = mul nsw i64 %1336, %1337
  %add1492 = add nsw i64 %1335, %mul1491
  store i64 %add1492, ptr %i__2, align 8, !tbaa !8
  %1338 = load i64, ptr %i__, align 8, !tbaa !8
  %1339 = load i64, ptr %k, align 8, !tbaa !8
  %1340 = load i64, ptr %b_dim1, align 8, !tbaa !8
  %mul1493 = mul nsw i64 %1339, %1340
  %add1494 = add nsw i64 %1338, %mul1493
  store i64 %add1494, ptr %i__3, align 8, !tbaa !8
  %r1495 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1341 = load double, ptr %r1495, align 8, !tbaa !10
  %1342 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1343 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1496 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1342, i64 %1343
  %r1497 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1496, i32 0, i32 0
  %1344 = load double, ptr %r1497, align 8, !tbaa !10
  %i1499 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1345 = load double, ptr %i1499, align 8, !tbaa !13
  %1346 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1347 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1500 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1346, i64 %1347
  %i1501 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1500, i32 0, i32 1
  %1348 = load double, ptr %i1501, align 8, !tbaa !13
  %mul1502 = fmul double %1345, %1348
  %neg1503 = fneg double %mul1502
  %1349 = call double @llvm.fmuladd.f64(double %1341, double %1344, double %neg1503)
  %r1504 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  store double %1349, ptr %r1504, align 8, !tbaa !10
  %r1505 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 0
  %1350 = load double, ptr %r1505, align 8, !tbaa !10
  %1351 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1352 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1506 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1351, i64 %1352
  %i1507 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1506, i32 0, i32 1
  %1353 = load double, ptr %i1507, align 8, !tbaa !13
  %i1509 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %temp, i32 0, i32 1
  %1354 = load double, ptr %i1509, align 8, !tbaa !13
  %1355 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1356 = load i64, ptr %i__3, align 8, !tbaa !8
  %arrayidx1510 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1355, i64 %1356
  %r1511 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1510, i32 0, i32 0
  %1357 = load double, ptr %r1511, align 8, !tbaa !10
  %mul1512 = fmul double %1354, %1357
  %1358 = call double @llvm.fmuladd.f64(double %1350, double %1353, double %mul1512)
  %i1513 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  store double %1358, ptr %i1513, align 8, !tbaa !13
  %r1514 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 0
  %1359 = load double, ptr %r1514, align 8, !tbaa !10
  %1360 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1361 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx1515 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1360, i64 %1361
  %r1516 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1515, i32 0, i32 0
  store double %1359, ptr %r1516, align 8, !tbaa !10
  %i1517 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %z__1, i32 0, i32 1
  %1362 = load double, ptr %i1517, align 8, !tbaa !13
  %1363 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %1364 = load i64, ptr %i__2, align 8, !tbaa !8
  %arrayidx1518 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %1363, i64 %1364
  %i1519 = getelementptr inbounds %struct.v3p_netlib_doublecomplex, ptr %arrayidx1518, i32 0, i32 1
  store double %1362, ptr %i1519, align 8, !tbaa !13
  br label %for.inc1520

for.inc1520:                                      ; preds = %for.body1490
  %1365 = load i64, ptr %i__, align 8, !tbaa !8
  %inc1521 = add nsw i64 %1365, 1
  store i64 %inc1521, ptr %i__, align 8, !tbaa !8
  br label %for.cond1488, !llvm.loop !45

for.end1522:                                      ; preds = %for.cond1488
  br label %if.end1523

if.end1523:                                       ; preds = %for.end1522, %lor.lhs.false1484
  br label %for.inc1524

for.inc1524:                                      ; preds = %if.end1523
  %1366 = load i64, ptr %k, align 8, !tbaa !8
  %dec1525 = add nsw i64 %1366, -1
  store i64 %dec1525, ptr %k, align 8, !tbaa !8
  br label %for.cond1305, !llvm.loop !46

for.end1526:                                      ; preds = %for.cond1305
  br label %if.end1527

if.end1527:                                       ; preds = %for.end1526, %for.end1303
  br label %if.end1528

if.end1528:                                       ; preds = %if.end1527, %if.end1078
  br label %if.end1529

if.end1529:                                       ; preds = %if.end1528, %if.end744
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1529, %for.end80, %if.then64, %if.then60
  call void @llvm.lifetime.end.p0(i64 8, ptr %nounit) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %noconj) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %upper) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrowa) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %lside) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__3) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__2) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__4) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_offset) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_dim1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_offset) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_dim1) #4
  %1367 = load i32, ptr %retval, align 4
  ret i32 %1367
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @v3p_netlib_lsame_(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

declare i32 @v3p_netlib_xerbla_(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @v3p_netlib_d_cnjg(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 8}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !12, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}

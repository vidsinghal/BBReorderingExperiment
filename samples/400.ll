; ModuleID = 'samples/400.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/ztgsja.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ZTGSJA\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b1 = internal global %struct.doublecomplex zeroinitializer, align 8
@c_b2 = internal global %struct.doublecomplex { double 1.000000e+00, double 0.000000e+00 }, align 8
@c__1 = internal global i32 1, align 4
@c_b39 = internal global double -1.000000e+00, align 8
@c_b42 = internal global double 1.000000e+00, align 8

; Function Attrs: nounwind uwtable
define i32 @ztgsja_(ptr noundef %jobu, ptr noundef %jobv, ptr noundef %jobq, ptr noundef %m, ptr noundef %p, ptr noundef %n, ptr noundef %k, ptr noundef %l, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %tola, ptr noundef %tolb, ptr noundef %alpha, ptr noundef %beta, ptr noundef %u, ptr noundef %ldu, ptr noundef %v, ptr noundef %ldv, ptr noundef %q, ptr noundef %ldq, ptr noundef %work, ptr noundef %ncycle, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %jobu.addr = alloca ptr, align 8
  %jobv.addr = alloca ptr, align 8
  %jobq.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %tola.addr = alloca ptr, align 8
  %tolb.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %ldu.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ldv.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %ldq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %ncycle.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %q_dim1 = alloca i32, align 4
  %q_offset = alloca i32, align 4
  %u_dim1 = alloca i32, align 4
  %u_offset = alloca i32, align 4
  %v_dim1 = alloca i32, align 4
  %v_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %z__1 = alloca %struct.doublecomplex, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %a1 = alloca double, align 8
  %b1 = alloca double, align 8
  %a3 = alloca double, align 8
  %b3 = alloca double, align 8
  %a2 = alloca %struct.doublecomplex, align 8
  %b2 = alloca %struct.doublecomplex, align 8
  %csq = alloca double, align 8
  %csu = alloca double, align 8
  %csv = alloca double, align 8
  %snq = alloca %struct.doublecomplex, align 8
  %rwk = alloca double, align 8
  %snu = alloca %struct.doublecomplex, align 8
  %snv = alloca %struct.doublecomplex, align 8
  %gamma = alloca double, align 8
  %initq = alloca i32, align 4
  %initu = alloca i32, align 4
  %initv = alloca i32, align 4
  %wantq = alloca i32, align 4
  %upper = alloca i32, align 4
  %error = alloca double, align 8
  %ssmin = alloca double, align 8
  %wantu = alloca i32, align 4
  %wantv = alloca i32, align 4
  %kcycle = alloca i32, align 4
  %hugenum = alloca double, align 8
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x68 = alloca i32, align 4
  %_y69 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x271 = alloca i32, align 4
  %_y272 = alloca i32, align 4
  %tmp273 = alloca i32, align 4
  %_x490 = alloca i32, align 4
  %_y491 = alloca i32, align 4
  %tmp492 = alloca i32, align 4
  %_x531 = alloca double, align 8
  %_y532 = alloca double, align 8
  %tmp533 = alloca double, align 8
  %_x547 = alloca double, align 8
  %_y548 = alloca double, align 8
  %tmp549 = alloca double, align 8
  %_x573 = alloca i32, align 4
  %_y574 = alloca i32, align 4
  %tmp575 = alloca i32, align 4
  store ptr %jobu, ptr %jobu.addr, align 8, !tbaa !4
  store ptr %jobv, ptr %jobv.addr, align 8, !tbaa !4
  store ptr %jobq, ptr %jobq.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %l, ptr %l.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store ptr %tola, ptr %tola.addr, align 8, !tbaa !4
  store ptr %tolb, ptr %tolb.addr, align 8, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !4
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !4
  store ptr %u, ptr %u.addr, align 8, !tbaa !4
  store ptr %ldu, ptr %ldu.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %ldv, ptr %ldv.addr, align 8, !tbaa !4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %ldq, ptr %ldq.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %ncycle, ptr %ncycle.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %u_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %u_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %v_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %v_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a3) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %b3) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %a2) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %b2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %csq) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %csu) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %csv) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %snq) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rwk) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %snu) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %snv) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %gamma) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %initq) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %initu) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %initv) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantq) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %error) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ssmin) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantu) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantv) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %kcycle) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %hugenum) #3
  %0 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %a_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %a_offset, align 4, !tbaa !8
  %3 = load i32, ptr %a_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %b_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %b_offset, align 4, !tbaa !8
  %8 = load i32, ptr %b_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.doublecomplex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %alpha.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds double, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %beta.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !8
  store i32 %13, ptr %u_dim1, align 4, !tbaa !8
  %14 = load i32, ptr %u_dim1, align 4, !tbaa !8
  %add6 = add nsw i32 1, %14
  store i32 %add6, ptr %u_offset, align 4, !tbaa !8
  %15 = load i32, ptr %u_offset, align 4, !tbaa !8
  %16 = load ptr, ptr %u.addr, align 8, !tbaa !4
  %idx.ext7 = sext i32 %15 to i64
  %idx.neg8 = sub i64 0, %idx.ext7
  %add.ptr9 = getelementptr inbounds %struct.doublecomplex, ptr %16, i64 %idx.neg8
  store ptr %add.ptr9, ptr %u.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  store i32 %18, ptr %v_dim1, align 4, !tbaa !8
  %19 = load i32, ptr %v_dim1, align 4, !tbaa !8
  %add10 = add nsw i32 1, %19
  store i32 %add10, ptr %v_offset, align 4, !tbaa !8
  %20 = load i32, ptr %v_offset, align 4, !tbaa !8
  %21 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %idx.ext11 = sext i32 %20 to i64
  %idx.neg12 = sub i64 0, %idx.ext11
  %add.ptr13 = getelementptr inbounds %struct.doublecomplex, ptr %21, i64 %idx.neg12
  store ptr %add.ptr13, ptr %v.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  store i32 %23, ptr %q_dim1, align 4, !tbaa !8
  %24 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %add14 = add nsw i32 1, %24
  store i32 %add14, ptr %q_offset, align 4, !tbaa !8
  %25 = load i32, ptr %q_offset, align 4, !tbaa !8
  %26 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %idx.ext15 = sext i32 %25 to i64
  %idx.neg16 = sub i64 0, %idx.ext15
  %add.ptr17 = getelementptr inbounds %struct.doublecomplex, ptr %26, i64 %idx.neg16
  store ptr %add.ptr17, ptr %q.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr18 = getelementptr inbounds %struct.doublecomplex, ptr %27, i32 -1
  store ptr %incdec.ptr18, ptr %work.addr, align 8, !tbaa !4
  store double 0x7FEFFFFFFFFFFFFF, ptr %hugenum, align 8, !tbaa !10
  %28 = load ptr, ptr %jobu.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %28, ptr noundef @.str)
  store i32 %call, ptr %initu, align 4, !tbaa !8
  %29 = load i32, ptr %initu, align 4, !tbaa !8
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %30 = load ptr, ptr %jobu.addr, align 8, !tbaa !4
  %call19 = call i32 @lsame_(ptr noundef %30, ptr noundef @.str.1)
  %tobool20 = icmp ne i32 %call19, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %31 = phi i1 [ true, %entry ], [ %tobool20, %lor.rhs ]
  %lor.ext = zext i1 %31 to i32
  store i32 %lor.ext, ptr %wantu, align 4, !tbaa !8
  %32 = load ptr, ptr %jobv.addr, align 8, !tbaa !4
  %call21 = call i32 @lsame_(ptr noundef %32, ptr noundef @.str)
  store i32 %call21, ptr %initv, align 4, !tbaa !8
  %33 = load i32, ptr %initv, align 4, !tbaa !8
  %tobool22 = icmp ne i32 %33, 0
  br i1 %tobool22, label %lor.end26, label %lor.rhs23

lor.rhs23:                                        ; preds = %lor.end
  %34 = load ptr, ptr %jobv.addr, align 8, !tbaa !4
  %call24 = call i32 @lsame_(ptr noundef %34, ptr noundef @.str.2)
  %tobool25 = icmp ne i32 %call24, 0
  br label %lor.end26

lor.end26:                                        ; preds = %lor.rhs23, %lor.end
  %35 = phi i1 [ true, %lor.end ], [ %tobool25, %lor.rhs23 ]
  %lor.ext27 = zext i1 %35 to i32
  store i32 %lor.ext27, ptr %wantv, align 4, !tbaa !8
  %36 = load ptr, ptr %jobq.addr, align 8, !tbaa !4
  %call28 = call i32 @lsame_(ptr noundef %36, ptr noundef @.str)
  store i32 %call28, ptr %initq, align 4, !tbaa !8
  %37 = load i32, ptr %initq, align 4, !tbaa !8
  %tobool29 = icmp ne i32 %37, 0
  br i1 %tobool29, label %lor.end33, label %lor.rhs30

lor.rhs30:                                        ; preds = %lor.end26
  %38 = load ptr, ptr %jobq.addr, align 8, !tbaa !4
  %call31 = call i32 @lsame_(ptr noundef %38, ptr noundef @.str.3)
  %tobool32 = icmp ne i32 %call31, 0
  br label %lor.end33

lor.end33:                                        ; preds = %lor.rhs30, %lor.end26
  %39 = phi i1 [ true, %lor.end26 ], [ %tobool32, %lor.rhs30 ]
  %lor.ext34 = zext i1 %39 to i32
  store i32 %lor.ext34, ptr %wantq, align 4, !tbaa !8
  %40 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %40, align 4, !tbaa !8
  %41 = load i32, ptr %initu, align 4, !tbaa !8
  %tobool35 = icmp ne i32 %41, 0
  br i1 %tobool35, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end33
  %42 = load i32, ptr %wantu, align 4, !tbaa !8
  %tobool36 = icmp ne i32 %42, 0
  br i1 %tobool36, label %if.else, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %43 = load ptr, ptr %jobu.addr, align 8, !tbaa !4
  %call38 = call i32 @lsame_(ptr noundef %43, ptr noundef @.str.4)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false37
  %44 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %44, align 4, !tbaa !8
  br label %if.end107

if.else:                                          ; preds = %lor.lhs.false37, %lor.lhs.false, %lor.end33
  %45 = load i32, ptr %initv, align 4, !tbaa !8
  %tobool40 = icmp ne i32 %45, 0
  br i1 %tobool40, label %if.else47, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.else
  %46 = load i32, ptr %wantv, align 4, !tbaa !8
  %tobool42 = icmp ne i32 %46, 0
  br i1 %tobool42, label %if.else47, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false41
  %47 = load ptr, ptr %jobv.addr, align 8, !tbaa !4
  %call44 = call i32 @lsame_(ptr noundef %47, ptr noundef @.str.4)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.else47, label %if.then46

if.then46:                                        ; preds = %lor.lhs.false43
  %48 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %48, align 4, !tbaa !8
  br label %if.end106

if.else47:                                        ; preds = %lor.lhs.false43, %lor.lhs.false41, %if.else
  %49 = load i32, ptr %initq, align 4, !tbaa !8
  %tobool48 = icmp ne i32 %49, 0
  br i1 %tobool48, label %if.else55, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.else47
  %50 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool50 = icmp ne i32 %50, 0
  br i1 %tobool50, label %if.else55, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false49
  %51 = load ptr, ptr %jobq.addr, align 8, !tbaa !4
  %call52 = call i32 @lsame_(ptr noundef %51, ptr noundef @.str.4)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.else55, label %if.then54

if.then54:                                        ; preds = %lor.lhs.false51
  %52 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %52, align 4, !tbaa !8
  br label %if.end105

if.else55:                                        ; preds = %lor.lhs.false51, %lor.lhs.false49, %if.else47
  %53 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %54 = load i32, ptr %53, align 4, !tbaa !8
  %cmp = icmp slt i32 %54, 0
  br i1 %cmp, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.else55
  %55 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %55, align 4, !tbaa !8
  br label %if.end104

if.else57:                                        ; preds = %if.else55
  %56 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %57 = load i32, ptr %56, align 4, !tbaa !8
  %cmp58 = icmp slt i32 %57, 0
  br i1 %cmp58, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.else57
  %58 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %58, align 4, !tbaa !8
  br label %if.end103

if.else60:                                        ; preds = %if.else57
  %59 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %60 = load i32, ptr %59, align 4, !tbaa !8
  %cmp61 = icmp slt i32 %60, 0
  br i1 %cmp61, label %if.then62, label %if.else63

if.then62:                                        ; preds = %if.else60
  %61 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -6, ptr %61, align 4, !tbaa !8
  br label %if.end102

if.else63:                                        ; preds = %if.else60
  %62 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %63 = load i32, ptr %62, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %64 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %65 = load i32, ptr %64, align 4, !tbaa !8
  store i32 %65, ptr %_y, align 4, !tbaa !8
  %66 = load i32, ptr %_x, align 4, !tbaa !8
  %67 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp64 = icmp sgt i32 %66, %67
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else63
  %68 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else63
  %69 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %68, %cond.true ], [ %69, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %70 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp65 = icmp slt i32 %63, %70
  br i1 %cmp65, label %if.then66, label %if.else67

if.then66:                                        ; preds = %cond.end
  %71 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -10, ptr %71, align 4, !tbaa !8
  br label %if.end101

if.else67:                                        ; preds = %cond.end
  %72 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %73 = load i32, ptr %72, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x68) #3
  store i32 1, ptr %_x68, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y69) #3
  %74 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %75 = load i32, ptr %74, align 4, !tbaa !8
  store i32 %75, ptr %_y69, align 4, !tbaa !8
  %76 = load i32, ptr %_x68, align 4, !tbaa !8
  %77 = load i32, ptr %_y69, align 4, !tbaa !8
  %cmp71 = icmp sgt i32 %76, %77
  br i1 %cmp71, label %cond.true72, label %cond.false73

cond.true72:                                      ; preds = %if.else67
  %78 = load i32, ptr %_x68, align 4, !tbaa !8
  br label %cond.end74

cond.false73:                                     ; preds = %if.else67
  %79 = load i32, ptr %_y69, align 4, !tbaa !8
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false73, %cond.true72
  %cond75 = phi i32 [ %78, %cond.true72 ], [ %79, %cond.false73 ]
  store i32 %cond75, ptr %tmp70, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y69) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x68) #3
  %80 = load i32, ptr %tmp70, align 4, !tbaa !8
  %cmp76 = icmp slt i32 %73, %80
  br i1 %cmp76, label %if.then77, label %if.else78

if.then77:                                        ; preds = %cond.end74
  %81 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -12, ptr %81, align 4, !tbaa !8
  br label %if.end100

if.else78:                                        ; preds = %cond.end74
  %82 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %83 = load i32, ptr %82, align 4, !tbaa !8
  %cmp79 = icmp slt i32 %83, 1
  br i1 %cmp79, label %if.then83, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %if.else78
  %84 = load i32, ptr %wantu, align 4, !tbaa !8
  %tobool81 = icmp ne i32 %84, 0
  br i1 %tobool81, label %land.lhs.true, label %if.else84

land.lhs.true:                                    ; preds = %lor.lhs.false80
  %85 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %86 = load i32, ptr %85, align 4, !tbaa !8
  %87 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %88 = load i32, ptr %87, align 4, !tbaa !8
  %cmp82 = icmp slt i32 %86, %88
  br i1 %cmp82, label %if.then83, label %if.else84

if.then83:                                        ; preds = %land.lhs.true, %if.else78
  %89 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -18, ptr %89, align 4, !tbaa !8
  br label %if.end99

if.else84:                                        ; preds = %land.lhs.true, %lor.lhs.false80
  %90 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %91 = load i32, ptr %90, align 4, !tbaa !8
  %cmp85 = icmp slt i32 %91, 1
  br i1 %cmp85, label %if.then90, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %if.else84
  %92 = load i32, ptr %wantv, align 4, !tbaa !8
  %tobool87 = icmp ne i32 %92, 0
  br i1 %tobool87, label %land.lhs.true88, label %if.else91

land.lhs.true88:                                  ; preds = %lor.lhs.false86
  %93 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %94 = load i32, ptr %93, align 4, !tbaa !8
  %95 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %96 = load i32, ptr %95, align 4, !tbaa !8
  %cmp89 = icmp slt i32 %94, %96
  br i1 %cmp89, label %if.then90, label %if.else91

if.then90:                                        ; preds = %land.lhs.true88, %if.else84
  %97 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -20, ptr %97, align 4, !tbaa !8
  br label %if.end98

if.else91:                                        ; preds = %land.lhs.true88, %lor.lhs.false86
  %98 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %99 = load i32, ptr %98, align 4, !tbaa !8
  %cmp92 = icmp slt i32 %99, 1
  br i1 %cmp92, label %if.then97, label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %if.else91
  %100 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool94 = icmp ne i32 %100, 0
  br i1 %tobool94, label %land.lhs.true95, label %if.end

land.lhs.true95:                                  ; preds = %lor.lhs.false93
  %101 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %102 = load i32, ptr %101, align 4, !tbaa !8
  %103 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %104 = load i32, ptr %103, align 4, !tbaa !8
  %cmp96 = icmp slt i32 %102, %104
  br i1 %cmp96, label %if.then97, label %if.end

if.then97:                                        ; preds = %land.lhs.true95, %if.else91
  %105 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -22, ptr %105, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then97, %land.lhs.true95, %lor.lhs.false93
  br label %if.end98

if.end98:                                         ; preds = %if.end, %if.then90
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then83
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then77
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then66
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then62
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then59
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then56
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then54
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then46
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.then
  %106 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %107 = load i32, ptr %106, align 4, !tbaa !8
  %cmp108 = icmp ne i32 %107, 0
  br i1 %cmp108, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.end107
  %108 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %109 = load i32, ptr %108, align 4, !tbaa !8
  %sub = sub nsw i32 0, %109
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call110 = call i32 @xerbla_(ptr noundef @.str.5, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end111:                                        ; preds = %if.end107
  %110 = load i32, ptr %initu, align 4, !tbaa !8
  %tobool112 = icmp ne i32 %110, 0
  br i1 %tobool112, label %if.then113, label %if.end115

if.then113:                                       ; preds = %if.end111
  %111 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %112 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %113 = load ptr, ptr %u.addr, align 8, !tbaa !4
  %114 = load i32, ptr %u_offset, align 4, !tbaa !8
  %idxprom = sext i32 %114 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %113, i64 %idxprom
  %115 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %call114 = call i32 @zlaset_(ptr noundef @.str.6, ptr noundef %111, ptr noundef %112, ptr noundef @c_b1, ptr noundef @c_b2, ptr noundef %arrayidx, ptr noundef %115)
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end111
  %116 = load i32, ptr %initv, align 4, !tbaa !8
  %tobool116 = icmp ne i32 %116, 0
  br i1 %tobool116, label %if.then117, label %if.end121

if.then117:                                       ; preds = %if.end115
  %117 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %118 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %119 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %120 = load i32, ptr %v_offset, align 4, !tbaa !8
  %idxprom118 = sext i32 %120 to i64
  %arrayidx119 = getelementptr inbounds %struct.doublecomplex, ptr %119, i64 %idxprom118
  %121 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %call120 = call i32 @zlaset_(ptr noundef @.str.6, ptr noundef %117, ptr noundef %118, ptr noundef @c_b1, ptr noundef @c_b2, ptr noundef %arrayidx119, ptr noundef %121)
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.end115
  %122 = load i32, ptr %initq, align 4, !tbaa !8
  %tobool122 = icmp ne i32 %122, 0
  br i1 %tobool122, label %if.then123, label %if.end127

if.then123:                                       ; preds = %if.end121
  %123 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %125 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %126 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom124 = sext i32 %126 to i64
  %arrayidx125 = getelementptr inbounds %struct.doublecomplex, ptr %125, i64 %idxprom124
  %127 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %call126 = call i32 @zlaset_(ptr noundef @.str.6, ptr noundef %123, ptr noundef %124, ptr noundef @c_b1, ptr noundef @c_b2, ptr noundef %arrayidx125, ptr noundef %127)
  br label %if.end127

if.end127:                                        ; preds = %if.then123, %if.end121
  store i32 0, ptr %upper, align 4, !tbaa !8
  store i32 1, ptr %kcycle, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc559, %if.end127
  %128 = load i32, ptr %kcycle, align 4, !tbaa !8
  %cmp128 = icmp sle i32 %128, 40
  br i1 %cmp128, label %for.body, label %for.end561

for.body:                                         ; preds = %for.cond
  %129 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool129 = icmp ne i32 %129, 0
  %lnot = xor i1 %tobool129, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %upper, align 4, !tbaa !8
  %130 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %131 = load i32, ptr %130, align 4, !tbaa !8
  %sub130 = sub nsw i32 %131, 1
  store i32 %sub130, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond131

for.cond131:                                      ; preds = %for.inc484, %for.body
  %132 = load i32, ptr %i__, align 4, !tbaa !8
  %133 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp132 = icmp sle i32 %132, %133
  br i1 %cmp132, label %for.body133, label %for.end486

for.body133:                                      ; preds = %for.cond131
  %134 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %135 = load i32, ptr %134, align 4, !tbaa !8
  store i32 %135, ptr %i__2, align 4, !tbaa !8
  %136 = load i32, ptr %i__, align 4, !tbaa !8
  %add134 = add nsw i32 %136, 1
  store i32 %add134, ptr %j, align 4, !tbaa !8
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc, %for.body133
  %137 = load i32, ptr %j, align 4, !tbaa !8
  %138 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp136 = icmp sle i32 %137, %138
  br i1 %cmp136, label %for.body137, label %for.end

for.body137:                                      ; preds = %for.cond135
  store double 0.000000e+00, ptr %a1, align 8, !tbaa !10
  %r = getelementptr inbounds %struct.doublecomplex, ptr %a2, i32 0, i32 0
  store double 0.000000e+00, ptr %r, align 8, !tbaa !12
  %i = getelementptr inbounds %struct.doublecomplex, ptr %a2, i32 0, i32 1
  store double 0.000000e+00, ptr %i, align 8, !tbaa !14
  store double 0.000000e+00, ptr %a3, align 8, !tbaa !10
  %139 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %140 = load i32, ptr %139, align 4, !tbaa !8
  %141 = load i32, ptr %i__, align 4, !tbaa !8
  %add138 = add nsw i32 %140, %141
  %142 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %143 = load i32, ptr %142, align 4, !tbaa !8
  %cmp139 = icmp sle i32 %add138, %143
  br i1 %cmp139, label %if.then140, label %if.end148

if.then140:                                       ; preds = %for.body137
  %144 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %145 = load i32, ptr %144, align 4, !tbaa !8
  %146 = load i32, ptr %i__, align 4, !tbaa !8
  %add141 = add nsw i32 %145, %146
  %147 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %148 = load i32, ptr %147, align 4, !tbaa !8
  %149 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %150 = load i32, ptr %149, align 4, !tbaa !8
  %sub142 = sub nsw i32 %148, %150
  %151 = load i32, ptr %i__, align 4, !tbaa !8
  %add143 = add nsw i32 %sub142, %151
  %152 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %add143, %152
  %add144 = add nsw i32 %add141, %mul
  store i32 %add144, ptr %i__3, align 4, !tbaa !8
  %153 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %154 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom145 = sext i32 %154 to i64
  %arrayidx146 = getelementptr inbounds %struct.doublecomplex, ptr %153, i64 %idxprom145
  %r147 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx146, i32 0, i32 0
  %155 = load double, ptr %r147, align 8, !tbaa !12
  store double %155, ptr %a1, align 8, !tbaa !10
  br label %if.end148

if.end148:                                        ; preds = %if.then140, %for.body137
  %156 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %157 = load i32, ptr %156, align 4, !tbaa !8
  %158 = load i32, ptr %j, align 4, !tbaa !8
  %add149 = add nsw i32 %157, %158
  %159 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %160 = load i32, ptr %159, align 4, !tbaa !8
  %cmp150 = icmp sle i32 %add149, %160
  br i1 %cmp150, label %if.then151, label %if.end160

if.then151:                                       ; preds = %if.end148
  %161 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %162 = load i32, ptr %161, align 4, !tbaa !8
  %163 = load i32, ptr %j, align 4, !tbaa !8
  %add152 = add nsw i32 %162, %163
  %164 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %165 = load i32, ptr %164, align 4, !tbaa !8
  %166 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %167 = load i32, ptr %166, align 4, !tbaa !8
  %sub153 = sub nsw i32 %165, %167
  %168 = load i32, ptr %j, align 4, !tbaa !8
  %add154 = add nsw i32 %sub153, %168
  %169 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul155 = mul nsw i32 %add154, %169
  %add156 = add nsw i32 %add152, %mul155
  store i32 %add156, ptr %i__3, align 4, !tbaa !8
  %170 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %171 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom157 = sext i32 %171 to i64
  %arrayidx158 = getelementptr inbounds %struct.doublecomplex, ptr %170, i64 %idxprom157
  %r159 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx158, i32 0, i32 0
  %172 = load double, ptr %r159, align 8, !tbaa !12
  store double %172, ptr %a3, align 8, !tbaa !10
  br label %if.end160

if.end160:                                        ; preds = %if.then151, %if.end148
  %173 = load i32, ptr %i__, align 4, !tbaa !8
  %174 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %175 = load i32, ptr %174, align 4, !tbaa !8
  %176 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %177 = load i32, ptr %176, align 4, !tbaa !8
  %sub161 = sub nsw i32 %175, %177
  %178 = load i32, ptr %i__, align 4, !tbaa !8
  %add162 = add nsw i32 %sub161, %178
  %179 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul163 = mul nsw i32 %add162, %179
  %add164 = add nsw i32 %173, %mul163
  store i32 %add164, ptr %i__3, align 4, !tbaa !8
  %180 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %181 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom165 = sext i32 %181 to i64
  %arrayidx166 = getelementptr inbounds %struct.doublecomplex, ptr %180, i64 %idxprom165
  %r167 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx166, i32 0, i32 0
  %182 = load double, ptr %r167, align 8, !tbaa !12
  store double %182, ptr %b1, align 8, !tbaa !10
  %183 = load i32, ptr %j, align 4, !tbaa !8
  %184 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %185 = load i32, ptr %184, align 4, !tbaa !8
  %186 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %187 = load i32, ptr %186, align 4, !tbaa !8
  %sub168 = sub nsw i32 %185, %187
  %188 = load i32, ptr %j, align 4, !tbaa !8
  %add169 = add nsw i32 %sub168, %188
  %189 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul170 = mul nsw i32 %add169, %189
  %add171 = add nsw i32 %183, %mul170
  store i32 %add171, ptr %i__3, align 4, !tbaa !8
  %190 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %191 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom172 = sext i32 %191 to i64
  %arrayidx173 = getelementptr inbounds %struct.doublecomplex, ptr %190, i64 %idxprom172
  %r174 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx173, i32 0, i32 0
  %192 = load double, ptr %r174, align 8, !tbaa !12
  store double %192, ptr %b3, align 8, !tbaa !10
  %193 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool175 = icmp ne i32 %193, 0
  br i1 %tobool175, label %if.then176, label %if.else206

if.then176:                                       ; preds = %if.end160
  %194 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %195 = load i32, ptr %194, align 4, !tbaa !8
  %196 = load i32, ptr %i__, align 4, !tbaa !8
  %add177 = add nsw i32 %195, %196
  %197 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %198 = load i32, ptr %197, align 4, !tbaa !8
  %cmp178 = icmp sle i32 %add177, %198
  br i1 %cmp178, label %if.then179, label %if.end193

if.then179:                                       ; preds = %if.then176
  %199 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %200 = load i32, ptr %199, align 4, !tbaa !8
  %201 = load i32, ptr %i__, align 4, !tbaa !8
  %add180 = add nsw i32 %200, %201
  %202 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %203 = load i32, ptr %202, align 4, !tbaa !8
  %204 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %205 = load i32, ptr %204, align 4, !tbaa !8
  %sub181 = sub nsw i32 %203, %205
  %206 = load i32, ptr %j, align 4, !tbaa !8
  %add182 = add nsw i32 %sub181, %206
  %207 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul183 = mul nsw i32 %add182, %207
  %add184 = add nsw i32 %add180, %mul183
  store i32 %add184, ptr %i__3, align 4, !tbaa !8
  %208 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %209 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom185 = sext i32 %209 to i64
  %arrayidx186 = getelementptr inbounds %struct.doublecomplex, ptr %208, i64 %idxprom185
  %r187 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx186, i32 0, i32 0
  %210 = load double, ptr %r187, align 8, !tbaa !12
  %r188 = getelementptr inbounds %struct.doublecomplex, ptr %a2, i32 0, i32 0
  store double %210, ptr %r188, align 8, !tbaa !12
  %211 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %212 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom189 = sext i32 %212 to i64
  %arrayidx190 = getelementptr inbounds %struct.doublecomplex, ptr %211, i64 %idxprom189
  %i191 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx190, i32 0, i32 1
  %213 = load double, ptr %i191, align 8, !tbaa !14
  %i192 = getelementptr inbounds %struct.doublecomplex, ptr %a2, i32 0, i32 1
  store double %213, ptr %i192, align 8, !tbaa !14
  br label %if.end193

if.end193:                                        ; preds = %if.then179, %if.then176
  %214 = load i32, ptr %i__, align 4, !tbaa !8
  %215 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %216 = load i32, ptr %215, align 4, !tbaa !8
  %217 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %218 = load i32, ptr %217, align 4, !tbaa !8
  %sub194 = sub nsw i32 %216, %218
  %219 = load i32, ptr %j, align 4, !tbaa !8
  %add195 = add nsw i32 %sub194, %219
  %220 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul196 = mul nsw i32 %add195, %220
  %add197 = add nsw i32 %214, %mul196
  store i32 %add197, ptr %i__3, align 4, !tbaa !8
  %221 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %222 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom198 = sext i32 %222 to i64
  %arrayidx199 = getelementptr inbounds %struct.doublecomplex, ptr %221, i64 %idxprom198
  %r200 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx199, i32 0, i32 0
  %223 = load double, ptr %r200, align 8, !tbaa !12
  %r201 = getelementptr inbounds %struct.doublecomplex, ptr %b2, i32 0, i32 0
  store double %223, ptr %r201, align 8, !tbaa !12
  %224 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %225 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom202 = sext i32 %225 to i64
  %arrayidx203 = getelementptr inbounds %struct.doublecomplex, ptr %224, i64 %idxprom202
  %i204 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx203, i32 0, i32 1
  %226 = load double, ptr %i204, align 8, !tbaa !14
  %i205 = getelementptr inbounds %struct.doublecomplex, ptr %b2, i32 0, i32 1
  store double %226, ptr %i205, align 8, !tbaa !14
  br label %if.end236

if.else206:                                       ; preds = %if.end160
  %227 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %228 = load i32, ptr %227, align 4, !tbaa !8
  %229 = load i32, ptr %j, align 4, !tbaa !8
  %add207 = add nsw i32 %228, %229
  %230 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %231 = load i32, ptr %230, align 4, !tbaa !8
  %cmp208 = icmp sle i32 %add207, %231
  br i1 %cmp208, label %if.then209, label %if.end223

if.then209:                                       ; preds = %if.else206
  %232 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %233 = load i32, ptr %232, align 4, !tbaa !8
  %234 = load i32, ptr %j, align 4, !tbaa !8
  %add210 = add nsw i32 %233, %234
  %235 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %236 = load i32, ptr %235, align 4, !tbaa !8
  %237 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %238 = load i32, ptr %237, align 4, !tbaa !8
  %sub211 = sub nsw i32 %236, %238
  %239 = load i32, ptr %i__, align 4, !tbaa !8
  %add212 = add nsw i32 %sub211, %239
  %240 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul213 = mul nsw i32 %add212, %240
  %add214 = add nsw i32 %add210, %mul213
  store i32 %add214, ptr %i__3, align 4, !tbaa !8
  %241 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %242 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom215 = sext i32 %242 to i64
  %arrayidx216 = getelementptr inbounds %struct.doublecomplex, ptr %241, i64 %idxprom215
  %r217 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx216, i32 0, i32 0
  %243 = load double, ptr %r217, align 8, !tbaa !12
  %r218 = getelementptr inbounds %struct.doublecomplex, ptr %a2, i32 0, i32 0
  store double %243, ptr %r218, align 8, !tbaa !12
  %244 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %245 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom219 = sext i32 %245 to i64
  %arrayidx220 = getelementptr inbounds %struct.doublecomplex, ptr %244, i64 %idxprom219
  %i221 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx220, i32 0, i32 1
  %246 = load double, ptr %i221, align 8, !tbaa !14
  %i222 = getelementptr inbounds %struct.doublecomplex, ptr %a2, i32 0, i32 1
  store double %246, ptr %i222, align 8, !tbaa !14
  br label %if.end223

if.end223:                                        ; preds = %if.then209, %if.else206
  %247 = load i32, ptr %j, align 4, !tbaa !8
  %248 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %249 = load i32, ptr %248, align 4, !tbaa !8
  %250 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %251 = load i32, ptr %250, align 4, !tbaa !8
  %sub224 = sub nsw i32 %249, %251
  %252 = load i32, ptr %i__, align 4, !tbaa !8
  %add225 = add nsw i32 %sub224, %252
  %253 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul226 = mul nsw i32 %add225, %253
  %add227 = add nsw i32 %247, %mul226
  store i32 %add227, ptr %i__3, align 4, !tbaa !8
  %254 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %255 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom228 = sext i32 %255 to i64
  %arrayidx229 = getelementptr inbounds %struct.doublecomplex, ptr %254, i64 %idxprom228
  %r230 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx229, i32 0, i32 0
  %256 = load double, ptr %r230, align 8, !tbaa !12
  %r231 = getelementptr inbounds %struct.doublecomplex, ptr %b2, i32 0, i32 0
  store double %256, ptr %r231, align 8, !tbaa !12
  %257 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %258 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom232 = sext i32 %258 to i64
  %arrayidx233 = getelementptr inbounds %struct.doublecomplex, ptr %257, i64 %idxprom232
  %i234 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx233, i32 0, i32 1
  %259 = load double, ptr %i234, align 8, !tbaa !14
  %i235 = getelementptr inbounds %struct.doublecomplex, ptr %b2, i32 0, i32 1
  store double %259, ptr %i235, align 8, !tbaa !14
  br label %if.end236

if.end236:                                        ; preds = %if.end223, %if.end193
  %call237 = call i32 @zlags2_(ptr noundef %upper, ptr noundef %a1, ptr noundef %a2, ptr noundef %a3, ptr noundef %b1, ptr noundef %b2, ptr noundef %b3, ptr noundef %csu, ptr noundef %snu, ptr noundef %csv, ptr noundef %snv, ptr noundef %csq, ptr noundef %snq)
  %260 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %261 = load i32, ptr %260, align 4, !tbaa !8
  %262 = load i32, ptr %j, align 4, !tbaa !8
  %add238 = add nsw i32 %261, %262
  %263 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %264 = load i32, ptr %263, align 4, !tbaa !8
  %cmp239 = icmp sle i32 %add238, %264
  br i1 %cmp239, label %if.then240, label %if.end256

if.then240:                                       ; preds = %if.end236
  call void @d_cnjg(ptr noundef %z__1, ptr noundef %snu)
  %265 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %266 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %267 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %268 = load i32, ptr %267, align 4, !tbaa !8
  %269 = load i32, ptr %j, align 4, !tbaa !8
  %add241 = add nsw i32 %268, %269
  %270 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %271 = load i32, ptr %270, align 4, !tbaa !8
  %272 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %273 = load i32, ptr %272, align 4, !tbaa !8
  %sub242 = sub nsw i32 %271, %273
  %add243 = add nsw i32 %sub242, 1
  %274 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul244 = mul nsw i32 %add243, %274
  %add245 = add nsw i32 %add241, %mul244
  %idxprom246 = sext i32 %add245 to i64
  %arrayidx247 = getelementptr inbounds %struct.doublecomplex, ptr %266, i64 %idxprom246
  %275 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %276 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %277 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %278 = load i32, ptr %277, align 4, !tbaa !8
  %279 = load i32, ptr %i__, align 4, !tbaa !8
  %add248 = add nsw i32 %278, %279
  %280 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %281 = load i32, ptr %280, align 4, !tbaa !8
  %282 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %283 = load i32, ptr %282, align 4, !tbaa !8
  %sub249 = sub nsw i32 %281, %283
  %add250 = add nsw i32 %sub249, 1
  %284 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul251 = mul nsw i32 %add250, %284
  %add252 = add nsw i32 %add248, %mul251
  %idxprom253 = sext i32 %add252 to i64
  %arrayidx254 = getelementptr inbounds %struct.doublecomplex, ptr %276, i64 %idxprom253
  %285 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call255 = call i32 @zrot_(ptr noundef %265, ptr noundef %arrayidx247, ptr noundef %275, ptr noundef %arrayidx254, ptr noundef %285, ptr noundef %csu, ptr noundef %z__1)
  br label %if.end256

if.end256:                                        ; preds = %if.then240, %if.end236
  call void @d_cnjg(ptr noundef %z__1, ptr noundef %snv)
  %286 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %287 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %288 = load i32, ptr %j, align 4, !tbaa !8
  %289 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %290 = load i32, ptr %289, align 4, !tbaa !8
  %291 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %292 = load i32, ptr %291, align 4, !tbaa !8
  %sub257 = sub nsw i32 %290, %292
  %add258 = add nsw i32 %sub257, 1
  %293 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul259 = mul nsw i32 %add258, %293
  %add260 = add nsw i32 %288, %mul259
  %idxprom261 = sext i32 %add260 to i64
  %arrayidx262 = getelementptr inbounds %struct.doublecomplex, ptr %287, i64 %idxprom261
  %294 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %295 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %296 = load i32, ptr %i__, align 4, !tbaa !8
  %297 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %298 = load i32, ptr %297, align 4, !tbaa !8
  %299 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %300 = load i32, ptr %299, align 4, !tbaa !8
  %sub263 = sub nsw i32 %298, %300
  %add264 = add nsw i32 %sub263, 1
  %301 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul265 = mul nsw i32 %add264, %301
  %add266 = add nsw i32 %296, %mul265
  %idxprom267 = sext i32 %add266 to i64
  %arrayidx268 = getelementptr inbounds %struct.doublecomplex, ptr %295, i64 %idxprom267
  %302 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call269 = call i32 @zrot_(ptr noundef %286, ptr noundef %arrayidx262, ptr noundef %294, ptr noundef %arrayidx268, ptr noundef %302, ptr noundef %csv, ptr noundef %z__1)
  %303 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %304 = load i32, ptr %303, align 4, !tbaa !8
  %305 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %306 = load i32, ptr %305, align 4, !tbaa !8
  %add270 = add nsw i32 %304, %306
  store i32 %add270, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x271) #3
  %307 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %307, ptr %_x271, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y272) #3
  %308 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %309 = load i32, ptr %308, align 4, !tbaa !8
  store i32 %309, ptr %_y272, align 4, !tbaa !8
  %310 = load i32, ptr %_x271, align 4, !tbaa !8
  %311 = load i32, ptr %_y272, align 4, !tbaa !8
  %cmp274 = icmp slt i32 %310, %311
  br i1 %cmp274, label %cond.true275, label %cond.false276

cond.true275:                                     ; preds = %if.end256
  %312 = load i32, ptr %_x271, align 4, !tbaa !8
  br label %cond.end277

cond.false276:                                    ; preds = %if.end256
  %313 = load i32, ptr %_y272, align 4, !tbaa !8
  br label %cond.end277

cond.end277:                                      ; preds = %cond.false276, %cond.true275
  %cond278 = phi i32 [ %312, %cond.true275 ], [ %313, %cond.false276 ]
  store i32 %cond278, ptr %tmp273, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y272) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x271) #3
  %314 = load i32, ptr %tmp273, align 4, !tbaa !8
  store i32 %314, ptr %i__3, align 4, !tbaa !8
  %315 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %316 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %317 = load i32, ptr %316, align 4, !tbaa !8
  %318 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %319 = load i32, ptr %318, align 4, !tbaa !8
  %sub279 = sub nsw i32 %317, %319
  %320 = load i32, ptr %j, align 4, !tbaa !8
  %add280 = add nsw i32 %sub279, %320
  %321 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul281 = mul nsw i32 %add280, %321
  %add282 = add nsw i32 %mul281, 1
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds %struct.doublecomplex, ptr %315, i64 %idxprom283
  %322 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %323 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %324 = load i32, ptr %323, align 4, !tbaa !8
  %325 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %326 = load i32, ptr %325, align 4, !tbaa !8
  %sub285 = sub nsw i32 %324, %326
  %327 = load i32, ptr %i__, align 4, !tbaa !8
  %add286 = add nsw i32 %sub285, %327
  %328 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul287 = mul nsw i32 %add286, %328
  %add288 = add nsw i32 %mul287, 1
  %idxprom289 = sext i32 %add288 to i64
  %arrayidx290 = getelementptr inbounds %struct.doublecomplex, ptr %322, i64 %idxprom289
  %call291 = call i32 @zrot_(ptr noundef %i__3, ptr noundef %arrayidx284, ptr noundef @c__1, ptr noundef %arrayidx290, ptr noundef @c__1, ptr noundef %csq, ptr noundef %snq)
  %329 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %330 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %331 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %332 = load i32, ptr %331, align 4, !tbaa !8
  %333 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %334 = load i32, ptr %333, align 4, !tbaa !8
  %sub292 = sub nsw i32 %332, %334
  %335 = load i32, ptr %j, align 4, !tbaa !8
  %add293 = add nsw i32 %sub292, %335
  %336 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul294 = mul nsw i32 %add293, %336
  %add295 = add nsw i32 %mul294, 1
  %idxprom296 = sext i32 %add295 to i64
  %arrayidx297 = getelementptr inbounds %struct.doublecomplex, ptr %330, i64 %idxprom296
  %337 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %338 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %339 = load i32, ptr %338, align 4, !tbaa !8
  %340 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %341 = load i32, ptr %340, align 4, !tbaa !8
  %sub298 = sub nsw i32 %339, %341
  %342 = load i32, ptr %i__, align 4, !tbaa !8
  %add299 = add nsw i32 %sub298, %342
  %343 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul300 = mul nsw i32 %add299, %343
  %add301 = add nsw i32 %mul300, 1
  %idxprom302 = sext i32 %add301 to i64
  %arrayidx303 = getelementptr inbounds %struct.doublecomplex, ptr %337, i64 %idxprom302
  %call304 = call i32 @zrot_(ptr noundef %329, ptr noundef %arrayidx297, ptr noundef @c__1, ptr noundef %arrayidx303, ptr noundef @c__1, ptr noundef %csq, ptr noundef %snq)
  %344 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool305 = icmp ne i32 %344, 0
  br i1 %tobool305, label %if.then306, label %if.else332

if.then306:                                       ; preds = %cond.end277
  %345 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %346 = load i32, ptr %345, align 4, !tbaa !8
  %347 = load i32, ptr %i__, align 4, !tbaa !8
  %add307 = add nsw i32 %346, %347
  %348 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %349 = load i32, ptr %348, align 4, !tbaa !8
  %cmp308 = icmp sle i32 %add307, %349
  br i1 %cmp308, label %if.then309, label %if.end321

if.then309:                                       ; preds = %if.then306
  %350 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %351 = load i32, ptr %350, align 4, !tbaa !8
  %352 = load i32, ptr %i__, align 4, !tbaa !8
  %add310 = add nsw i32 %351, %352
  %353 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %354 = load i32, ptr %353, align 4, !tbaa !8
  %355 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %356 = load i32, ptr %355, align 4, !tbaa !8
  %sub311 = sub nsw i32 %354, %356
  %357 = load i32, ptr %j, align 4, !tbaa !8
  %add312 = add nsw i32 %sub311, %357
  %358 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul313 = mul nsw i32 %add312, %358
  %add314 = add nsw i32 %add310, %mul313
  store i32 %add314, ptr %i__3, align 4, !tbaa !8
  %359 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %360 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom315 = sext i32 %360 to i64
  %arrayidx316 = getelementptr inbounds %struct.doublecomplex, ptr %359, i64 %idxprom315
  %r317 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx316, i32 0, i32 0
  store double 0.000000e+00, ptr %r317, align 8, !tbaa !12
  %361 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %362 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom318 = sext i32 %362 to i64
  %arrayidx319 = getelementptr inbounds %struct.doublecomplex, ptr %361, i64 %idxprom318
  %i320 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx319, i32 0, i32 1
  store double 0.000000e+00, ptr %i320, align 8, !tbaa !14
  br label %if.end321

if.end321:                                        ; preds = %if.then309, %if.then306
  %363 = load i32, ptr %i__, align 4, !tbaa !8
  %364 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %365 = load i32, ptr %364, align 4, !tbaa !8
  %366 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %367 = load i32, ptr %366, align 4, !tbaa !8
  %sub322 = sub nsw i32 %365, %367
  %368 = load i32, ptr %j, align 4, !tbaa !8
  %add323 = add nsw i32 %sub322, %368
  %369 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul324 = mul nsw i32 %add323, %369
  %add325 = add nsw i32 %363, %mul324
  store i32 %add325, ptr %i__3, align 4, !tbaa !8
  %370 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %371 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom326 = sext i32 %371 to i64
  %arrayidx327 = getelementptr inbounds %struct.doublecomplex, ptr %370, i64 %idxprom326
  %r328 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx327, i32 0, i32 0
  store double 0.000000e+00, ptr %r328, align 8, !tbaa !12
  %372 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %373 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom329 = sext i32 %373 to i64
  %arrayidx330 = getelementptr inbounds %struct.doublecomplex, ptr %372, i64 %idxprom329
  %i331 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx330, i32 0, i32 1
  store double 0.000000e+00, ptr %i331, align 8, !tbaa !14
  br label %if.end358

if.else332:                                       ; preds = %cond.end277
  %374 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %375 = load i32, ptr %374, align 4, !tbaa !8
  %376 = load i32, ptr %j, align 4, !tbaa !8
  %add333 = add nsw i32 %375, %376
  %377 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %378 = load i32, ptr %377, align 4, !tbaa !8
  %cmp334 = icmp sle i32 %add333, %378
  br i1 %cmp334, label %if.then335, label %if.end347

if.then335:                                       ; preds = %if.else332
  %379 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %380 = load i32, ptr %379, align 4, !tbaa !8
  %381 = load i32, ptr %j, align 4, !tbaa !8
  %add336 = add nsw i32 %380, %381
  %382 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %383 = load i32, ptr %382, align 4, !tbaa !8
  %384 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %385 = load i32, ptr %384, align 4, !tbaa !8
  %sub337 = sub nsw i32 %383, %385
  %386 = load i32, ptr %i__, align 4, !tbaa !8
  %add338 = add nsw i32 %sub337, %386
  %387 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul339 = mul nsw i32 %add338, %387
  %add340 = add nsw i32 %add336, %mul339
  store i32 %add340, ptr %i__3, align 4, !tbaa !8
  %388 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %389 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom341 = sext i32 %389 to i64
  %arrayidx342 = getelementptr inbounds %struct.doublecomplex, ptr %388, i64 %idxprom341
  %r343 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx342, i32 0, i32 0
  store double 0.000000e+00, ptr %r343, align 8, !tbaa !12
  %390 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %391 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom344 = sext i32 %391 to i64
  %arrayidx345 = getelementptr inbounds %struct.doublecomplex, ptr %390, i64 %idxprom344
  %i346 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx345, i32 0, i32 1
  store double 0.000000e+00, ptr %i346, align 8, !tbaa !14
  br label %if.end347

if.end347:                                        ; preds = %if.then335, %if.else332
  %392 = load i32, ptr %j, align 4, !tbaa !8
  %393 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %394 = load i32, ptr %393, align 4, !tbaa !8
  %395 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %396 = load i32, ptr %395, align 4, !tbaa !8
  %sub348 = sub nsw i32 %394, %396
  %397 = load i32, ptr %i__, align 4, !tbaa !8
  %add349 = add nsw i32 %sub348, %397
  %398 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul350 = mul nsw i32 %add349, %398
  %add351 = add nsw i32 %392, %mul350
  store i32 %add351, ptr %i__3, align 4, !tbaa !8
  %399 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %400 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom352 = sext i32 %400 to i64
  %arrayidx353 = getelementptr inbounds %struct.doublecomplex, ptr %399, i64 %idxprom352
  %r354 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx353, i32 0, i32 0
  store double 0.000000e+00, ptr %r354, align 8, !tbaa !12
  %401 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %402 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom355 = sext i32 %402 to i64
  %arrayidx356 = getelementptr inbounds %struct.doublecomplex, ptr %401, i64 %idxprom355
  %i357 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx356, i32 0, i32 1
  store double 0.000000e+00, ptr %i357, align 8, !tbaa !14
  br label %if.end358

if.end358:                                        ; preds = %if.end347, %if.end321
  %403 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %404 = load i32, ptr %403, align 4, !tbaa !8
  %405 = load i32, ptr %i__, align 4, !tbaa !8
  %add359 = add nsw i32 %404, %405
  %406 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %407 = load i32, ptr %406, align 4, !tbaa !8
  %cmp360 = icmp sle i32 %add359, %407
  br i1 %cmp360, label %if.then361, label %if.end381

if.then361:                                       ; preds = %if.end358
  %408 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %409 = load i32, ptr %408, align 4, !tbaa !8
  %410 = load i32, ptr %i__, align 4, !tbaa !8
  %add362 = add nsw i32 %409, %410
  %411 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %412 = load i32, ptr %411, align 4, !tbaa !8
  %413 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %414 = load i32, ptr %413, align 4, !tbaa !8
  %sub363 = sub nsw i32 %412, %414
  %415 = load i32, ptr %i__, align 4, !tbaa !8
  %add364 = add nsw i32 %sub363, %415
  %416 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul365 = mul nsw i32 %add364, %416
  %add366 = add nsw i32 %add362, %mul365
  store i32 %add366, ptr %i__3, align 4, !tbaa !8
  %417 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %418 = load i32, ptr %417, align 4, !tbaa !8
  %419 = load i32, ptr %i__, align 4, !tbaa !8
  %add367 = add nsw i32 %418, %419
  %420 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %421 = load i32, ptr %420, align 4, !tbaa !8
  %422 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %423 = load i32, ptr %422, align 4, !tbaa !8
  %sub368 = sub nsw i32 %421, %423
  %424 = load i32, ptr %i__, align 4, !tbaa !8
  %add369 = add nsw i32 %sub368, %424
  %425 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul370 = mul nsw i32 %add369, %425
  %add371 = add nsw i32 %add367, %mul370
  store i32 %add371, ptr %i__4, align 4, !tbaa !8
  %426 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %427 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom372 = sext i32 %427 to i64
  %arrayidx373 = getelementptr inbounds %struct.doublecomplex, ptr %426, i64 %idxprom372
  %r374 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx373, i32 0, i32 0
  %428 = load double, ptr %r374, align 8, !tbaa !12
  store double %428, ptr %d__1, align 8, !tbaa !10
  %429 = load double, ptr %d__1, align 8, !tbaa !10
  %430 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %431 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom375 = sext i32 %431 to i64
  %arrayidx376 = getelementptr inbounds %struct.doublecomplex, ptr %430, i64 %idxprom375
  %r377 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx376, i32 0, i32 0
  store double %429, ptr %r377, align 8, !tbaa !12
  %432 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %433 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom378 = sext i32 %433 to i64
  %arrayidx379 = getelementptr inbounds %struct.doublecomplex, ptr %432, i64 %idxprom378
  %i380 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx379, i32 0, i32 1
  store double 0.000000e+00, ptr %i380, align 8, !tbaa !14
  br label %if.end381

if.end381:                                        ; preds = %if.then361, %if.end358
  %434 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %435 = load i32, ptr %434, align 4, !tbaa !8
  %436 = load i32, ptr %j, align 4, !tbaa !8
  %add382 = add nsw i32 %435, %436
  %437 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %438 = load i32, ptr %437, align 4, !tbaa !8
  %cmp383 = icmp sle i32 %add382, %438
  br i1 %cmp383, label %if.then384, label %if.end404

if.then384:                                       ; preds = %if.end381
  %439 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %440 = load i32, ptr %439, align 4, !tbaa !8
  %441 = load i32, ptr %j, align 4, !tbaa !8
  %add385 = add nsw i32 %440, %441
  %442 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %443 = load i32, ptr %442, align 4, !tbaa !8
  %444 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %445 = load i32, ptr %444, align 4, !tbaa !8
  %sub386 = sub nsw i32 %443, %445
  %446 = load i32, ptr %j, align 4, !tbaa !8
  %add387 = add nsw i32 %sub386, %446
  %447 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul388 = mul nsw i32 %add387, %447
  %add389 = add nsw i32 %add385, %mul388
  store i32 %add389, ptr %i__3, align 4, !tbaa !8
  %448 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %449 = load i32, ptr %448, align 4, !tbaa !8
  %450 = load i32, ptr %j, align 4, !tbaa !8
  %add390 = add nsw i32 %449, %450
  %451 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %452 = load i32, ptr %451, align 4, !tbaa !8
  %453 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %454 = load i32, ptr %453, align 4, !tbaa !8
  %sub391 = sub nsw i32 %452, %454
  %455 = load i32, ptr %j, align 4, !tbaa !8
  %add392 = add nsw i32 %sub391, %455
  %456 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul393 = mul nsw i32 %add392, %456
  %add394 = add nsw i32 %add390, %mul393
  store i32 %add394, ptr %i__4, align 4, !tbaa !8
  %457 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %458 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom395 = sext i32 %458 to i64
  %arrayidx396 = getelementptr inbounds %struct.doublecomplex, ptr %457, i64 %idxprom395
  %r397 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx396, i32 0, i32 0
  %459 = load double, ptr %r397, align 8, !tbaa !12
  store double %459, ptr %d__1, align 8, !tbaa !10
  %460 = load double, ptr %d__1, align 8, !tbaa !10
  %461 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %462 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom398 = sext i32 %462 to i64
  %arrayidx399 = getelementptr inbounds %struct.doublecomplex, ptr %461, i64 %idxprom398
  %r400 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx399, i32 0, i32 0
  store double %460, ptr %r400, align 8, !tbaa !12
  %463 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %464 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom401 = sext i32 %464 to i64
  %arrayidx402 = getelementptr inbounds %struct.doublecomplex, ptr %463, i64 %idxprom401
  %i403 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx402, i32 0, i32 1
  store double 0.000000e+00, ptr %i403, align 8, !tbaa !14
  br label %if.end404

if.end404:                                        ; preds = %if.then384, %if.end381
  %465 = load i32, ptr %i__, align 4, !tbaa !8
  %466 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %467 = load i32, ptr %466, align 4, !tbaa !8
  %468 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %469 = load i32, ptr %468, align 4, !tbaa !8
  %sub405 = sub nsw i32 %467, %469
  %470 = load i32, ptr %i__, align 4, !tbaa !8
  %add406 = add nsw i32 %sub405, %470
  %471 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul407 = mul nsw i32 %add406, %471
  %add408 = add nsw i32 %465, %mul407
  store i32 %add408, ptr %i__3, align 4, !tbaa !8
  %472 = load i32, ptr %i__, align 4, !tbaa !8
  %473 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %474 = load i32, ptr %473, align 4, !tbaa !8
  %475 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %476 = load i32, ptr %475, align 4, !tbaa !8
  %sub409 = sub nsw i32 %474, %476
  %477 = load i32, ptr %i__, align 4, !tbaa !8
  %add410 = add nsw i32 %sub409, %477
  %478 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul411 = mul nsw i32 %add410, %478
  %add412 = add nsw i32 %472, %mul411
  store i32 %add412, ptr %i__4, align 4, !tbaa !8
  %479 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %480 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom413 = sext i32 %480 to i64
  %arrayidx414 = getelementptr inbounds %struct.doublecomplex, ptr %479, i64 %idxprom413
  %r415 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx414, i32 0, i32 0
  %481 = load double, ptr %r415, align 8, !tbaa !12
  store double %481, ptr %d__1, align 8, !tbaa !10
  %482 = load double, ptr %d__1, align 8, !tbaa !10
  %483 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %484 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom416 = sext i32 %484 to i64
  %arrayidx417 = getelementptr inbounds %struct.doublecomplex, ptr %483, i64 %idxprom416
  %r418 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx417, i32 0, i32 0
  store double %482, ptr %r418, align 8, !tbaa !12
  %485 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %486 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom419 = sext i32 %486 to i64
  %arrayidx420 = getelementptr inbounds %struct.doublecomplex, ptr %485, i64 %idxprom419
  %i421 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx420, i32 0, i32 1
  store double 0.000000e+00, ptr %i421, align 8, !tbaa !14
  %487 = load i32, ptr %j, align 4, !tbaa !8
  %488 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %489 = load i32, ptr %488, align 4, !tbaa !8
  %490 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %491 = load i32, ptr %490, align 4, !tbaa !8
  %sub422 = sub nsw i32 %489, %491
  %492 = load i32, ptr %j, align 4, !tbaa !8
  %add423 = add nsw i32 %sub422, %492
  %493 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul424 = mul nsw i32 %add423, %493
  %add425 = add nsw i32 %487, %mul424
  store i32 %add425, ptr %i__3, align 4, !tbaa !8
  %494 = load i32, ptr %j, align 4, !tbaa !8
  %495 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %496 = load i32, ptr %495, align 4, !tbaa !8
  %497 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %498 = load i32, ptr %497, align 4, !tbaa !8
  %sub426 = sub nsw i32 %496, %498
  %499 = load i32, ptr %j, align 4, !tbaa !8
  %add427 = add nsw i32 %sub426, %499
  %500 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul428 = mul nsw i32 %add427, %500
  %add429 = add nsw i32 %494, %mul428
  store i32 %add429, ptr %i__4, align 4, !tbaa !8
  %501 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %502 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom430 = sext i32 %502 to i64
  %arrayidx431 = getelementptr inbounds %struct.doublecomplex, ptr %501, i64 %idxprom430
  %r432 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx431, i32 0, i32 0
  %503 = load double, ptr %r432, align 8, !tbaa !12
  store double %503, ptr %d__1, align 8, !tbaa !10
  %504 = load double, ptr %d__1, align 8, !tbaa !10
  %505 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %506 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom433 = sext i32 %506 to i64
  %arrayidx434 = getelementptr inbounds %struct.doublecomplex, ptr %505, i64 %idxprom433
  %r435 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx434, i32 0, i32 0
  store double %504, ptr %r435, align 8, !tbaa !12
  %507 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %508 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom436 = sext i32 %508 to i64
  %arrayidx437 = getelementptr inbounds %struct.doublecomplex, ptr %507, i64 %idxprom436
  %i438 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx437, i32 0, i32 1
  store double 0.000000e+00, ptr %i438, align 8, !tbaa !14
  %509 = load i32, ptr %wantu, align 4, !tbaa !8
  %tobool439 = icmp ne i32 %509, 0
  br i1 %tobool439, label %land.lhs.true440, label %if.end455

land.lhs.true440:                                 ; preds = %if.end404
  %510 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %511 = load i32, ptr %510, align 4, !tbaa !8
  %512 = load i32, ptr %j, align 4, !tbaa !8
  %add441 = add nsw i32 %511, %512
  %513 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %514 = load i32, ptr %513, align 4, !tbaa !8
  %cmp442 = icmp sle i32 %add441, %514
  br i1 %cmp442, label %if.then443, label %if.end455

if.then443:                                       ; preds = %land.lhs.true440
  %515 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %516 = load ptr, ptr %u.addr, align 8, !tbaa !4
  %517 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %518 = load i32, ptr %517, align 4, !tbaa !8
  %519 = load i32, ptr %j, align 4, !tbaa !8
  %add444 = add nsw i32 %518, %519
  %520 = load i32, ptr %u_dim1, align 4, !tbaa !8
  %mul445 = mul nsw i32 %add444, %520
  %add446 = add nsw i32 %mul445, 1
  %idxprom447 = sext i32 %add446 to i64
  %arrayidx448 = getelementptr inbounds %struct.doublecomplex, ptr %516, i64 %idxprom447
  %521 = load ptr, ptr %u.addr, align 8, !tbaa !4
  %522 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %523 = load i32, ptr %522, align 4, !tbaa !8
  %524 = load i32, ptr %i__, align 4, !tbaa !8
  %add449 = add nsw i32 %523, %524
  %525 = load i32, ptr %u_dim1, align 4, !tbaa !8
  %mul450 = mul nsw i32 %add449, %525
  %add451 = add nsw i32 %mul450, 1
  %idxprom452 = sext i32 %add451 to i64
  %arrayidx453 = getelementptr inbounds %struct.doublecomplex, ptr %521, i64 %idxprom452
  %call454 = call i32 @zrot_(ptr noundef %515, ptr noundef %arrayidx448, ptr noundef @c__1, ptr noundef %arrayidx453, ptr noundef @c__1, ptr noundef %csu, ptr noundef %snu)
  br label %if.end455

if.end455:                                        ; preds = %if.then443, %land.lhs.true440, %if.end404
  %526 = load i32, ptr %wantv, align 4, !tbaa !8
  %tobool456 = icmp ne i32 %526, 0
  br i1 %tobool456, label %if.then457, label %if.end467

if.then457:                                       ; preds = %if.end455
  %527 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %528 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %529 = load i32, ptr %j, align 4, !tbaa !8
  %530 = load i32, ptr %v_dim1, align 4, !tbaa !8
  %mul458 = mul nsw i32 %529, %530
  %add459 = add nsw i32 %mul458, 1
  %idxprom460 = sext i32 %add459 to i64
  %arrayidx461 = getelementptr inbounds %struct.doublecomplex, ptr %528, i64 %idxprom460
  %531 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %532 = load i32, ptr %i__, align 4, !tbaa !8
  %533 = load i32, ptr %v_dim1, align 4, !tbaa !8
  %mul462 = mul nsw i32 %532, %533
  %add463 = add nsw i32 %mul462, 1
  %idxprom464 = sext i32 %add463 to i64
  %arrayidx465 = getelementptr inbounds %struct.doublecomplex, ptr %531, i64 %idxprom464
  %call466 = call i32 @zrot_(ptr noundef %527, ptr noundef %arrayidx461, ptr noundef @c__1, ptr noundef %arrayidx465, ptr noundef @c__1, ptr noundef %csv, ptr noundef %snv)
  br label %if.end467

if.end467:                                        ; preds = %if.then457, %if.end455
  %534 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool468 = icmp ne i32 %534, 0
  br i1 %tobool468, label %if.then469, label %if.end483

if.then469:                                       ; preds = %if.end467
  %535 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %536 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %537 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %538 = load i32, ptr %537, align 4, !tbaa !8
  %539 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %540 = load i32, ptr %539, align 4, !tbaa !8
  %sub470 = sub nsw i32 %538, %540
  %541 = load i32, ptr %j, align 4, !tbaa !8
  %add471 = add nsw i32 %sub470, %541
  %542 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul472 = mul nsw i32 %add471, %542
  %add473 = add nsw i32 %mul472, 1
  %idxprom474 = sext i32 %add473 to i64
  %arrayidx475 = getelementptr inbounds %struct.doublecomplex, ptr %536, i64 %idxprom474
  %543 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %544 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %545 = load i32, ptr %544, align 4, !tbaa !8
  %546 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %547 = load i32, ptr %546, align 4, !tbaa !8
  %sub476 = sub nsw i32 %545, %547
  %548 = load i32, ptr %i__, align 4, !tbaa !8
  %add477 = add nsw i32 %sub476, %548
  %549 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul478 = mul nsw i32 %add477, %549
  %add479 = add nsw i32 %mul478, 1
  %idxprom480 = sext i32 %add479 to i64
  %arrayidx481 = getelementptr inbounds %struct.doublecomplex, ptr %543, i64 %idxprom480
  %call482 = call i32 @zrot_(ptr noundef %535, ptr noundef %arrayidx475, ptr noundef @c__1, ptr noundef %arrayidx481, ptr noundef @c__1, ptr noundef %csq, ptr noundef %snq)
  br label %if.end483

if.end483:                                        ; preds = %if.then469, %if.end467
  br label %for.inc

for.inc:                                          ; preds = %if.end483
  %550 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %550, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond135, !llvm.loop !15

for.end:                                          ; preds = %for.cond135
  br label %for.inc484

for.inc484:                                       ; preds = %for.end
  %551 = load i32, ptr %i__, align 4, !tbaa !8
  %inc485 = add nsw i32 %551, 1
  store i32 %inc485, ptr %i__, align 4, !tbaa !8
  br label %for.cond131, !llvm.loop !17

for.end486:                                       ; preds = %for.cond131
  %552 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool487 = icmp ne i32 %552, 0
  br i1 %tobool487, label %if.end558, label %if.then488

if.then488:                                       ; preds = %for.end486
  store double 0.000000e+00, ptr %error, align 8, !tbaa !10
  %553 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %554 = load i32, ptr %553, align 4, !tbaa !8
  store i32 %554, ptr %i__2, align 4, !tbaa !8
  %555 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %556 = load i32, ptr %555, align 4, !tbaa !8
  %557 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %558 = load i32, ptr %557, align 4, !tbaa !8
  %sub489 = sub nsw i32 %556, %558
  store i32 %sub489, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x490) #3
  %559 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %559, ptr %_x490, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y491) #3
  %560 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %560, ptr %_y491, align 4, !tbaa !8
  %561 = load i32, ptr %_x490, align 4, !tbaa !8
  %562 = load i32, ptr %_y491, align 4, !tbaa !8
  %cmp493 = icmp slt i32 %561, %562
  br i1 %cmp493, label %cond.true494, label %cond.false495

cond.true494:                                     ; preds = %if.then488
  %563 = load i32, ptr %_x490, align 4, !tbaa !8
  br label %cond.end496

cond.false495:                                    ; preds = %if.then488
  %564 = load i32, ptr %_y491, align 4, !tbaa !8
  br label %cond.end496

cond.end496:                                      ; preds = %cond.false495, %cond.true494
  %cond497 = phi i32 [ %563, %cond.true494 ], [ %564, %cond.false495 ]
  store i32 %cond497, ptr %tmp492, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y491) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x490) #3
  %565 = load i32, ptr %tmp492, align 4, !tbaa !8
  store i32 %565, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond498

for.cond498:                                      ; preds = %for.inc539, %cond.end496
  %566 = load i32, ptr %i__, align 4, !tbaa !8
  %567 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp499 = icmp sle i32 %566, %567
  br i1 %cmp499, label %for.body500, label %for.end541

for.body500:                                      ; preds = %for.cond498
  %568 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %569 = load i32, ptr %568, align 4, !tbaa !8
  %570 = load i32, ptr %i__, align 4, !tbaa !8
  %sub501 = sub nsw i32 %569, %570
  %add502 = add nsw i32 %sub501, 1
  store i32 %add502, ptr %i__2, align 4, !tbaa !8
  %571 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %572 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %573 = load i32, ptr %572, align 4, !tbaa !8
  %574 = load i32, ptr %i__, align 4, !tbaa !8
  %add503 = add nsw i32 %573, %574
  %575 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %576 = load i32, ptr %575, align 4, !tbaa !8
  %577 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %578 = load i32, ptr %577, align 4, !tbaa !8
  %sub504 = sub nsw i32 %576, %578
  %579 = load i32, ptr %i__, align 4, !tbaa !8
  %add505 = add nsw i32 %sub504, %579
  %580 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul506 = mul nsw i32 %add505, %580
  %add507 = add nsw i32 %add503, %mul506
  %idxprom508 = sext i32 %add507 to i64
  %arrayidx509 = getelementptr inbounds %struct.doublecomplex, ptr %571, i64 %idxprom508
  %581 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %582 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx510 = getelementptr inbounds %struct.doublecomplex, ptr %582, i64 1
  %call511 = call i32 @zcopy_(ptr noundef %i__2, ptr noundef %arrayidx509, ptr noundef %581, ptr noundef %arrayidx510, ptr noundef @c__1)
  %583 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %584 = load i32, ptr %583, align 4, !tbaa !8
  %585 = load i32, ptr %i__, align 4, !tbaa !8
  %sub512 = sub nsw i32 %584, %585
  %add513 = add nsw i32 %sub512, 1
  store i32 %add513, ptr %i__2, align 4, !tbaa !8
  %586 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %587 = load i32, ptr %i__, align 4, !tbaa !8
  %588 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %589 = load i32, ptr %588, align 4, !tbaa !8
  %590 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %591 = load i32, ptr %590, align 4, !tbaa !8
  %sub514 = sub nsw i32 %589, %591
  %592 = load i32, ptr %i__, align 4, !tbaa !8
  %add515 = add nsw i32 %sub514, %592
  %593 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul516 = mul nsw i32 %add515, %593
  %add517 = add nsw i32 %587, %mul516
  %idxprom518 = sext i32 %add517 to i64
  %arrayidx519 = getelementptr inbounds %struct.doublecomplex, ptr %586, i64 %idxprom518
  %594 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %595 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %596 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %597 = load i32, ptr %596, align 4, !tbaa !8
  %add520 = add nsw i32 %597, 1
  %idxprom521 = sext i32 %add520 to i64
  %arrayidx522 = getelementptr inbounds %struct.doublecomplex, ptr %595, i64 %idxprom521
  %call523 = call i32 @zcopy_(ptr noundef %i__2, ptr noundef %arrayidx519, ptr noundef %594, ptr noundef %arrayidx522, ptr noundef @c__1)
  %598 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %599 = load i32, ptr %598, align 4, !tbaa !8
  %600 = load i32, ptr %i__, align 4, !tbaa !8
  %sub524 = sub nsw i32 %599, %600
  %add525 = add nsw i32 %sub524, 1
  store i32 %add525, ptr %i__2, align 4, !tbaa !8
  %601 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx526 = getelementptr inbounds %struct.doublecomplex, ptr %601, i64 1
  %602 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %603 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %604 = load i32, ptr %603, align 4, !tbaa !8
  %add527 = add nsw i32 %604, 1
  %idxprom528 = sext i32 %add527 to i64
  %arrayidx529 = getelementptr inbounds %struct.doublecomplex, ptr %602, i64 %idxprom528
  %call530 = call i32 @zlapll_(ptr noundef %i__2, ptr noundef %arrayidx526, ptr noundef @c__1, ptr noundef %arrayidx529, ptr noundef @c__1, ptr noundef %ssmin)
  call void @llvm.lifetime.start.p0(i64 8, ptr %_x531) #3
  %605 = load double, ptr %error, align 8, !tbaa !10
  store double %605, ptr %_x531, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %_y532) #3
  %606 = load double, ptr %ssmin, align 8, !tbaa !10
  store double %606, ptr %_y532, align 8, !tbaa !10
  %607 = load double, ptr %_x531, align 8, !tbaa !10
  %608 = load double, ptr %_y532, align 8, !tbaa !10
  %cmp534 = fcmp ogt double %607, %608
  br i1 %cmp534, label %cond.true535, label %cond.false536

cond.true535:                                     ; preds = %for.body500
  %609 = load double, ptr %_x531, align 8, !tbaa !10
  br label %cond.end537

cond.false536:                                    ; preds = %for.body500
  %610 = load double, ptr %_y532, align 8, !tbaa !10
  br label %cond.end537

cond.end537:                                      ; preds = %cond.false536, %cond.true535
  %cond538 = phi double [ %609, %cond.true535 ], [ %610, %cond.false536 ]
  store double %cond538, ptr %tmp533, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %_y532) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %_x531) #3
  %611 = load double, ptr %tmp533, align 8, !tbaa !10
  store double %611, ptr %error, align 8, !tbaa !10
  br label %for.inc539

for.inc539:                                       ; preds = %cond.end537
  %612 = load i32, ptr %i__, align 4, !tbaa !8
  %inc540 = add nsw i32 %612, 1
  store i32 %inc540, ptr %i__, align 4, !tbaa !8
  br label %for.cond498, !llvm.loop !18

for.end541:                                       ; preds = %for.cond498
  %613 = load double, ptr %error, align 8, !tbaa !10
  %cmp542 = fcmp oge double %613, 0.000000e+00
  br i1 %cmp542, label %cond.true543, label %cond.false544

cond.true543:                                     ; preds = %for.end541
  %614 = load double, ptr %error, align 8, !tbaa !10
  br label %cond.end545

cond.false544:                                    ; preds = %for.end541
  %615 = load double, ptr %error, align 8, !tbaa !10
  %fneg = fneg double %615
  br label %cond.end545

cond.end545:                                      ; preds = %cond.false544, %cond.true543
  %cond546 = phi double [ %614, %cond.true543 ], [ %fneg, %cond.false544 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr %_x547) #3
  %616 = load ptr, ptr %tola.addr, align 8, !tbaa !4
  %617 = load double, ptr %616, align 8, !tbaa !10
  store double %617, ptr %_x547, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %_y548) #3
  %618 = load ptr, ptr %tolb.addr, align 8, !tbaa !4
  %619 = load double, ptr %618, align 8, !tbaa !10
  store double %619, ptr %_y548, align 8, !tbaa !10
  %620 = load double, ptr %_x547, align 8, !tbaa !10
  %621 = load double, ptr %_y548, align 8, !tbaa !10
  %cmp550 = fcmp olt double %620, %621
  br i1 %cmp550, label %cond.true551, label %cond.false552

cond.true551:                                     ; preds = %cond.end545
  %622 = load double, ptr %_x547, align 8, !tbaa !10
  br label %cond.end553

cond.false552:                                    ; preds = %cond.end545
  %623 = load double, ptr %_y548, align 8, !tbaa !10
  br label %cond.end553

cond.end553:                                      ; preds = %cond.false552, %cond.true551
  %cond554 = phi double [ %622, %cond.true551 ], [ %623, %cond.false552 ]
  store double %cond554, ptr %tmp549, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %_y548) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %_x547) #3
  %624 = load double, ptr %tmp549, align 8, !tbaa !10
  %cmp555 = fcmp ole double %cond546, %624
  br i1 %cmp555, label %if.then556, label %if.end557

if.then556:                                       ; preds = %cond.end553
  br label %L50

if.end557:                                        ; preds = %cond.end553
  br label %if.end558

if.end558:                                        ; preds = %if.end557, %for.end486
  br label %for.inc559

for.inc559:                                       ; preds = %if.end558
  %625 = load i32, ptr %kcycle, align 4, !tbaa !8
  %inc560 = add nsw i32 %625, 1
  store i32 %inc560, ptr %kcycle, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !19

for.end561:                                       ; preds = %for.cond
  %626 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 1, ptr %626, align 4, !tbaa !8
  br label %L100

L50:                                              ; preds = %if.then556
  %627 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %628 = load i32, ptr %627, align 4, !tbaa !8
  store i32 %628, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond562

for.cond562:                                      ; preds = %for.inc569, %L50
  %629 = load i32, ptr %i__, align 4, !tbaa !8
  %630 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp563 = icmp sle i32 %629, %630
  br i1 %cmp563, label %for.body564, label %for.end571

for.body564:                                      ; preds = %for.cond562
  %631 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %632 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom565 = sext i32 %632 to i64
  %arrayidx566 = getelementptr inbounds double, ptr %631, i64 %idxprom565
  store double 1.000000e+00, ptr %arrayidx566, align 8, !tbaa !10
  %633 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %634 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom567 = sext i32 %634 to i64
  %arrayidx568 = getelementptr inbounds double, ptr %633, i64 %idxprom567
  store double 0.000000e+00, ptr %arrayidx568, align 8, !tbaa !10
  br label %for.inc569

for.inc569:                                       ; preds = %for.body564
  %635 = load i32, ptr %i__, align 4, !tbaa !8
  %inc570 = add nsw i32 %635, 1
  store i32 %inc570, ptr %i__, align 4, !tbaa !8
  br label %for.cond562, !llvm.loop !20

for.end571:                                       ; preds = %for.cond562
  %636 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %637 = load i32, ptr %636, align 4, !tbaa !8
  store i32 %637, ptr %i__2, align 4, !tbaa !8
  %638 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %639 = load i32, ptr %638, align 4, !tbaa !8
  %640 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %641 = load i32, ptr %640, align 4, !tbaa !8
  %sub572 = sub nsw i32 %639, %641
  store i32 %sub572, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x573) #3
  %642 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %642, ptr %_x573, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y574) #3
  %643 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %643, ptr %_y574, align 4, !tbaa !8
  %644 = load i32, ptr %_x573, align 4, !tbaa !8
  %645 = load i32, ptr %_y574, align 4, !tbaa !8
  %cmp576 = icmp slt i32 %644, %645
  br i1 %cmp576, label %cond.true577, label %cond.false578

cond.true577:                                     ; preds = %for.end571
  %646 = load i32, ptr %_x573, align 4, !tbaa !8
  br label %cond.end579

cond.false578:                                    ; preds = %for.end571
  %647 = load i32, ptr %_y574, align 4, !tbaa !8
  br label %cond.end579

cond.end579:                                      ; preds = %cond.false578, %cond.true577
  %cond580 = phi i32 [ %646, %cond.true577 ], [ %647, %cond.false578 ]
  store i32 %cond580, ptr %tmp575, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y574) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x573) #3
  %648 = load i32, ptr %tmp575, align 4, !tbaa !8
  store i32 %648, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond581

for.cond581:                                      ; preds = %for.inc714, %cond.end579
  %649 = load i32, ptr %i__, align 4, !tbaa !8
  %650 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp582 = icmp sle i32 %649, %650
  br i1 %cmp582, label %for.body583, label %for.end716

for.body583:                                      ; preds = %for.cond581
  %651 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %652 = load i32, ptr %651, align 4, !tbaa !8
  %653 = load i32, ptr %i__, align 4, !tbaa !8
  %add584 = add nsw i32 %652, %653
  %654 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %655 = load i32, ptr %654, align 4, !tbaa !8
  %656 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %657 = load i32, ptr %656, align 4, !tbaa !8
  %sub585 = sub nsw i32 %655, %657
  %658 = load i32, ptr %i__, align 4, !tbaa !8
  %add586 = add nsw i32 %sub585, %658
  %659 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul587 = mul nsw i32 %add586, %659
  %add588 = add nsw i32 %add584, %mul587
  store i32 %add588, ptr %i__2, align 4, !tbaa !8
  %660 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %661 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom589 = sext i32 %661 to i64
  %arrayidx590 = getelementptr inbounds %struct.doublecomplex, ptr %660, i64 %idxprom589
  %r591 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx590, i32 0, i32 0
  %662 = load double, ptr %r591, align 8, !tbaa !12
  store double %662, ptr %a1, align 8, !tbaa !10
  %663 = load i32, ptr %i__, align 4, !tbaa !8
  %664 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %665 = load i32, ptr %664, align 4, !tbaa !8
  %666 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %667 = load i32, ptr %666, align 4, !tbaa !8
  %sub592 = sub nsw i32 %665, %667
  %668 = load i32, ptr %i__, align 4, !tbaa !8
  %add593 = add nsw i32 %sub592, %668
  %669 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul594 = mul nsw i32 %add593, %669
  %add595 = add nsw i32 %663, %mul594
  store i32 %add595, ptr %i__2, align 4, !tbaa !8
  %670 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %671 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom596 = sext i32 %671 to i64
  %arrayidx597 = getelementptr inbounds %struct.doublecomplex, ptr %670, i64 %idxprom596
  %r598 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx597, i32 0, i32 0
  %672 = load double, ptr %r598, align 8, !tbaa !12
  store double %672, ptr %b1, align 8, !tbaa !10
  %673 = load double, ptr %b1, align 8, !tbaa !10
  %674 = load double, ptr %a1, align 8, !tbaa !10
  %div = fdiv double %673, %674
  store double %div, ptr %gamma, align 8, !tbaa !10
  %675 = load double, ptr %gamma, align 8, !tbaa !10
  %676 = load double, ptr %hugenum, align 8, !tbaa !10
  %cmp599 = fcmp ole double %675, %676
  br i1 %cmp599, label %land.lhs.true600, label %if.else690

land.lhs.true600:                                 ; preds = %for.body583
  %677 = load double, ptr %gamma, align 8, !tbaa !10
  %678 = load double, ptr %hugenum, align 8, !tbaa !10
  %fneg601 = fneg double %678
  %cmp602 = fcmp oge double %677, %fneg601
  br i1 %cmp602, label %if.then603, label %if.else690

if.then603:                                       ; preds = %land.lhs.true600
  %679 = load double, ptr %gamma, align 8, !tbaa !10
  %cmp604 = fcmp olt double %679, 0.000000e+00
  br i1 %cmp604, label %if.then605, label %if.end623

if.then605:                                       ; preds = %if.then603
  %680 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %681 = load i32, ptr %680, align 4, !tbaa !8
  %682 = load i32, ptr %i__, align 4, !tbaa !8
  %sub606 = sub nsw i32 %681, %682
  %add607 = add nsw i32 %sub606, 1
  store i32 %add607, ptr %i__2, align 4, !tbaa !8
  %683 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %684 = load i32, ptr %i__, align 4, !tbaa !8
  %685 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %686 = load i32, ptr %685, align 4, !tbaa !8
  %687 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %688 = load i32, ptr %687, align 4, !tbaa !8
  %sub608 = sub nsw i32 %686, %688
  %689 = load i32, ptr %i__, align 4, !tbaa !8
  %add609 = add nsw i32 %sub608, %689
  %690 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul610 = mul nsw i32 %add609, %690
  %add611 = add nsw i32 %684, %mul610
  %idxprom612 = sext i32 %add611 to i64
  %arrayidx613 = getelementptr inbounds %struct.doublecomplex, ptr %683, i64 %idxprom612
  %691 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call614 = call i32 @zdscal_(ptr noundef %i__2, ptr noundef @c_b39, ptr noundef %arrayidx613, ptr noundef %691)
  %692 = load i32, ptr %wantv, align 4, !tbaa !8
  %tobool615 = icmp ne i32 %692, 0
  br i1 %tobool615, label %if.then616, label %if.end622

if.then616:                                       ; preds = %if.then605
  %693 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %694 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %695 = load i32, ptr %i__, align 4, !tbaa !8
  %696 = load i32, ptr %v_dim1, align 4, !tbaa !8
  %mul617 = mul nsw i32 %695, %696
  %add618 = add nsw i32 %mul617, 1
  %idxprom619 = sext i32 %add618 to i64
  %arrayidx620 = getelementptr inbounds %struct.doublecomplex, ptr %694, i64 %idxprom619
  %call621 = call i32 @zdscal_(ptr noundef %693, ptr noundef @c_b39, ptr noundef %arrayidx620, ptr noundef @c__1)
  br label %if.end622

if.end622:                                        ; preds = %if.then616, %if.then605
  br label %if.end623

if.end623:                                        ; preds = %if.end622, %if.then603
  %697 = load double, ptr %gamma, align 8, !tbaa !10
  %cmp624 = fcmp oge double %697, 0.000000e+00
  br i1 %cmp624, label %cond.true625, label %cond.false626

cond.true625:                                     ; preds = %if.end623
  %698 = load double, ptr %gamma, align 8, !tbaa !10
  br label %cond.end628

cond.false626:                                    ; preds = %if.end623
  %699 = load double, ptr %gamma, align 8, !tbaa !10
  %fneg627 = fneg double %699
  br label %cond.end628

cond.end628:                                      ; preds = %cond.false626, %cond.true625
  %cond629 = phi double [ %698, %cond.true625 ], [ %fneg627, %cond.false626 ]
  store double %cond629, ptr %d__1, align 8, !tbaa !10
  %700 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %701 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %702 = load i32, ptr %701, align 4, !tbaa !8
  %703 = load i32, ptr %i__, align 4, !tbaa !8
  %add630 = add nsw i32 %702, %703
  %idxprom631 = sext i32 %add630 to i64
  %arrayidx632 = getelementptr inbounds double, ptr %700, i64 %idxprom631
  %704 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %705 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %706 = load i32, ptr %705, align 4, !tbaa !8
  %707 = load i32, ptr %i__, align 4, !tbaa !8
  %add633 = add nsw i32 %706, %707
  %idxprom634 = sext i32 %add633 to i64
  %arrayidx635 = getelementptr inbounds double, ptr %704, i64 %idxprom634
  %call636 = call i32 @dlartg_(ptr noundef %d__1, ptr noundef @c_b42, ptr noundef %arrayidx632, ptr noundef %arrayidx635, ptr noundef %rwk)
  %708 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %709 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %710 = load i32, ptr %709, align 4, !tbaa !8
  %711 = load i32, ptr %i__, align 4, !tbaa !8
  %add637 = add nsw i32 %710, %711
  %idxprom638 = sext i32 %add637 to i64
  %arrayidx639 = getelementptr inbounds double, ptr %708, i64 %idxprom638
  %712 = load double, ptr %arrayidx639, align 8, !tbaa !10
  %713 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %714 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %715 = load i32, ptr %714, align 4, !tbaa !8
  %716 = load i32, ptr %i__, align 4, !tbaa !8
  %add640 = add nsw i32 %715, %716
  %idxprom641 = sext i32 %add640 to i64
  %arrayidx642 = getelementptr inbounds double, ptr %713, i64 %idxprom641
  %717 = load double, ptr %arrayidx642, align 8, !tbaa !10
  %cmp643 = fcmp oge double %712, %717
  br i1 %cmp643, label %if.then644, label %if.else659

if.then644:                                       ; preds = %cond.end628
  %718 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %719 = load i32, ptr %718, align 4, !tbaa !8
  %720 = load i32, ptr %i__, align 4, !tbaa !8
  %sub645 = sub nsw i32 %719, %720
  %add646 = add nsw i32 %sub645, 1
  store i32 %add646, ptr %i__2, align 4, !tbaa !8
  %721 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %722 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %723 = load i32, ptr %722, align 4, !tbaa !8
  %724 = load i32, ptr %i__, align 4, !tbaa !8
  %add647 = add nsw i32 %723, %724
  %idxprom648 = sext i32 %add647 to i64
  %arrayidx649 = getelementptr inbounds double, ptr %721, i64 %idxprom648
  %725 = load double, ptr %arrayidx649, align 8, !tbaa !10
  %div650 = fdiv double 1.000000e+00, %725
  store double %div650, ptr %d__1, align 8, !tbaa !10
  %726 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %727 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %728 = load i32, ptr %727, align 4, !tbaa !8
  %729 = load i32, ptr %i__, align 4, !tbaa !8
  %add651 = add nsw i32 %728, %729
  %730 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %731 = load i32, ptr %730, align 4, !tbaa !8
  %732 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %733 = load i32, ptr %732, align 4, !tbaa !8
  %sub652 = sub nsw i32 %731, %733
  %734 = load i32, ptr %i__, align 4, !tbaa !8
  %add653 = add nsw i32 %sub652, %734
  %735 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul654 = mul nsw i32 %add653, %735
  %add655 = add nsw i32 %add651, %mul654
  %idxprom656 = sext i32 %add655 to i64
  %arrayidx657 = getelementptr inbounds %struct.doublecomplex, ptr %726, i64 %idxprom656
  %736 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call658 = call i32 @zdscal_(ptr noundef %i__2, ptr noundef %d__1, ptr noundef %arrayidx657, ptr noundef %736)
  br label %if.end689

if.else659:                                       ; preds = %cond.end628
  %737 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %738 = load i32, ptr %737, align 4, !tbaa !8
  %739 = load i32, ptr %i__, align 4, !tbaa !8
  %sub660 = sub nsw i32 %738, %739
  %add661 = add nsw i32 %sub660, 1
  store i32 %add661, ptr %i__2, align 4, !tbaa !8
  %740 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %741 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %742 = load i32, ptr %741, align 4, !tbaa !8
  %743 = load i32, ptr %i__, align 4, !tbaa !8
  %add662 = add nsw i32 %742, %743
  %idxprom663 = sext i32 %add662 to i64
  %arrayidx664 = getelementptr inbounds double, ptr %740, i64 %idxprom663
  %744 = load double, ptr %arrayidx664, align 8, !tbaa !10
  %div665 = fdiv double 1.000000e+00, %744
  store double %div665, ptr %d__1, align 8, !tbaa !10
  %745 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %746 = load i32, ptr %i__, align 4, !tbaa !8
  %747 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %748 = load i32, ptr %747, align 4, !tbaa !8
  %749 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %750 = load i32, ptr %749, align 4, !tbaa !8
  %sub666 = sub nsw i32 %748, %750
  %751 = load i32, ptr %i__, align 4, !tbaa !8
  %add667 = add nsw i32 %sub666, %751
  %752 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul668 = mul nsw i32 %add667, %752
  %add669 = add nsw i32 %746, %mul668
  %idxprom670 = sext i32 %add669 to i64
  %arrayidx671 = getelementptr inbounds %struct.doublecomplex, ptr %745, i64 %idxprom670
  %753 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call672 = call i32 @zdscal_(ptr noundef %i__2, ptr noundef %d__1, ptr noundef %arrayidx671, ptr noundef %753)
  %754 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %755 = load i32, ptr %754, align 4, !tbaa !8
  %756 = load i32, ptr %i__, align 4, !tbaa !8
  %sub673 = sub nsw i32 %755, %756
  %add674 = add nsw i32 %sub673, 1
  store i32 %add674, ptr %i__2, align 4, !tbaa !8
  %757 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %758 = load i32, ptr %i__, align 4, !tbaa !8
  %759 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %760 = load i32, ptr %759, align 4, !tbaa !8
  %761 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %762 = load i32, ptr %761, align 4, !tbaa !8
  %sub675 = sub nsw i32 %760, %762
  %763 = load i32, ptr %i__, align 4, !tbaa !8
  %add676 = add nsw i32 %sub675, %763
  %764 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul677 = mul nsw i32 %add676, %764
  %add678 = add nsw i32 %758, %mul677
  %idxprom679 = sext i32 %add678 to i64
  %arrayidx680 = getelementptr inbounds %struct.doublecomplex, ptr %757, i64 %idxprom679
  %765 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %766 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %767 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %768 = load i32, ptr %767, align 4, !tbaa !8
  %769 = load i32, ptr %i__, align 4, !tbaa !8
  %add681 = add nsw i32 %768, %769
  %770 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %771 = load i32, ptr %770, align 4, !tbaa !8
  %772 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %773 = load i32, ptr %772, align 4, !tbaa !8
  %sub682 = sub nsw i32 %771, %773
  %774 = load i32, ptr %i__, align 4, !tbaa !8
  %add683 = add nsw i32 %sub682, %774
  %775 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul684 = mul nsw i32 %add683, %775
  %add685 = add nsw i32 %add681, %mul684
  %idxprom686 = sext i32 %add685 to i64
  %arrayidx687 = getelementptr inbounds %struct.doublecomplex, ptr %766, i64 %idxprom686
  %776 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call688 = call i32 @zcopy_(ptr noundef %i__2, ptr noundef %arrayidx680, ptr noundef %765, ptr noundef %arrayidx687, ptr noundef %776)
  br label %if.end689

if.end689:                                        ; preds = %if.else659, %if.then644
  br label %if.end713

if.else690:                                       ; preds = %land.lhs.true600, %for.body583
  %777 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %778 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %779 = load i32, ptr %778, align 4, !tbaa !8
  %780 = load i32, ptr %i__, align 4, !tbaa !8
  %add691 = add nsw i32 %779, %780
  %idxprom692 = sext i32 %add691 to i64
  %arrayidx693 = getelementptr inbounds double, ptr %777, i64 %idxprom692
  store double 0.000000e+00, ptr %arrayidx693, align 8, !tbaa !10
  %781 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %782 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %783 = load i32, ptr %782, align 4, !tbaa !8
  %784 = load i32, ptr %i__, align 4, !tbaa !8
  %add694 = add nsw i32 %783, %784
  %idxprom695 = sext i32 %add694 to i64
  %arrayidx696 = getelementptr inbounds double, ptr %781, i64 %idxprom695
  store double 1.000000e+00, ptr %arrayidx696, align 8, !tbaa !10
  %785 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %786 = load i32, ptr %785, align 4, !tbaa !8
  %787 = load i32, ptr %i__, align 4, !tbaa !8
  %sub697 = sub nsw i32 %786, %787
  %add698 = add nsw i32 %sub697, 1
  store i32 %add698, ptr %i__2, align 4, !tbaa !8
  %788 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %789 = load i32, ptr %i__, align 4, !tbaa !8
  %790 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %791 = load i32, ptr %790, align 4, !tbaa !8
  %792 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %793 = load i32, ptr %792, align 4, !tbaa !8
  %sub699 = sub nsw i32 %791, %793
  %794 = load i32, ptr %i__, align 4, !tbaa !8
  %add700 = add nsw i32 %sub699, %794
  %795 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul701 = mul nsw i32 %add700, %795
  %add702 = add nsw i32 %789, %mul701
  %idxprom703 = sext i32 %add702 to i64
  %arrayidx704 = getelementptr inbounds %struct.doublecomplex, ptr %788, i64 %idxprom703
  %796 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %797 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %798 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %799 = load i32, ptr %798, align 4, !tbaa !8
  %800 = load i32, ptr %i__, align 4, !tbaa !8
  %add705 = add nsw i32 %799, %800
  %801 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %802 = load i32, ptr %801, align 4, !tbaa !8
  %803 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %804 = load i32, ptr %803, align 4, !tbaa !8
  %sub706 = sub nsw i32 %802, %804
  %805 = load i32, ptr %i__, align 4, !tbaa !8
  %add707 = add nsw i32 %sub706, %805
  %806 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul708 = mul nsw i32 %add707, %806
  %add709 = add nsw i32 %add705, %mul708
  %idxprom710 = sext i32 %add709 to i64
  %arrayidx711 = getelementptr inbounds %struct.doublecomplex, ptr %797, i64 %idxprom710
  %807 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call712 = call i32 @zcopy_(ptr noundef %i__2, ptr noundef %arrayidx704, ptr noundef %796, ptr noundef %arrayidx711, ptr noundef %807)
  br label %if.end713

if.end713:                                        ; preds = %if.else690, %if.end689
  br label %for.inc714

for.inc714:                                       ; preds = %if.end713
  %808 = load i32, ptr %i__, align 4, !tbaa !8
  %inc715 = add nsw i32 %808, 1
  store i32 %inc715, ptr %i__, align 4, !tbaa !8
  br label %for.cond581, !llvm.loop !21

for.end716:                                       ; preds = %for.cond581
  %809 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %810 = load i32, ptr %809, align 4, !tbaa !8
  %811 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %812 = load i32, ptr %811, align 4, !tbaa !8
  %add717 = add nsw i32 %810, %812
  store i32 %add717, ptr %i__1, align 4, !tbaa !8
  %813 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %814 = load i32, ptr %813, align 4, !tbaa !8
  %add718 = add nsw i32 %814, 1
  store i32 %add718, ptr %i__, align 4, !tbaa !8
  br label %for.cond719

for.cond719:                                      ; preds = %for.inc726, %for.end716
  %815 = load i32, ptr %i__, align 4, !tbaa !8
  %816 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp720 = icmp sle i32 %815, %816
  br i1 %cmp720, label %for.body721, label %for.end728

for.body721:                                      ; preds = %for.cond719
  %817 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %818 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom722 = sext i32 %818 to i64
  %arrayidx723 = getelementptr inbounds double, ptr %817, i64 %idxprom722
  store double 0.000000e+00, ptr %arrayidx723, align 8, !tbaa !10
  %819 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %820 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom724 = sext i32 %820 to i64
  %arrayidx725 = getelementptr inbounds double, ptr %819, i64 %idxprom724
  store double 1.000000e+00, ptr %arrayidx725, align 8, !tbaa !10
  br label %for.inc726

for.inc726:                                       ; preds = %for.body721
  %821 = load i32, ptr %i__, align 4, !tbaa !8
  %inc727 = add nsw i32 %821, 1
  store i32 %inc727, ptr %i__, align 4, !tbaa !8
  br label %for.cond719, !llvm.loop !22

for.end728:                                       ; preds = %for.cond719
  %822 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %823 = load i32, ptr %822, align 4, !tbaa !8
  %824 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %825 = load i32, ptr %824, align 4, !tbaa !8
  %add729 = add nsw i32 %823, %825
  %826 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %827 = load i32, ptr %826, align 4, !tbaa !8
  %cmp730 = icmp slt i32 %add729, %827
  br i1 %cmp730, label %if.then731, label %if.end744

if.then731:                                       ; preds = %for.end728
  %828 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %829 = load i32, ptr %828, align 4, !tbaa !8
  store i32 %829, ptr %i__1, align 4, !tbaa !8
  %830 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %831 = load i32, ptr %830, align 4, !tbaa !8
  %832 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %833 = load i32, ptr %832, align 4, !tbaa !8
  %add732 = add nsw i32 %831, %833
  %add733 = add nsw i32 %add732, 1
  store i32 %add733, ptr %i__, align 4, !tbaa !8
  br label %for.cond734

for.cond734:                                      ; preds = %for.inc741, %if.then731
  %834 = load i32, ptr %i__, align 4, !tbaa !8
  %835 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp735 = icmp sle i32 %834, %835
  br i1 %cmp735, label %for.body736, label %for.end743

for.body736:                                      ; preds = %for.cond734
  %836 = load ptr, ptr %alpha.addr, align 8, !tbaa !4
  %837 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom737 = sext i32 %837 to i64
  %arrayidx738 = getelementptr inbounds double, ptr %836, i64 %idxprom737
  store double 0.000000e+00, ptr %arrayidx738, align 8, !tbaa !10
  %838 = load ptr, ptr %beta.addr, align 8, !tbaa !4
  %839 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom739 = sext i32 %839 to i64
  %arrayidx740 = getelementptr inbounds double, ptr %838, i64 %idxprom739
  store double 0.000000e+00, ptr %arrayidx740, align 8, !tbaa !10
  br label %for.inc741

for.inc741:                                       ; preds = %for.body736
  %840 = load i32, ptr %i__, align 4, !tbaa !8
  %inc742 = add nsw i32 %840, 1
  store i32 %inc742, ptr %i__, align 4, !tbaa !8
  br label %for.cond734, !llvm.loop !23

for.end743:                                       ; preds = %for.cond734
  br label %if.end744

if.end744:                                        ; preds = %for.end743, %for.end728
  br label %L100

L100:                                             ; preds = %if.end744, %for.end561
  %841 = load i32, ptr %kcycle, align 4, !tbaa !8
  %842 = load ptr, ptr %ncycle.addr, align 8, !tbaa !4
  store i32 %841, ptr %842, align 4, !tbaa !8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %L100, %if.then109
  call void @llvm.lifetime.end.p0(i64 8, ptr %hugenum) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %kcycle) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantv) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantu) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ssmin) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %error) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantq) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %initv) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %initu) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %initq) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %gamma) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %snv) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %snu) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rwk) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %snq) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %csv) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %csu) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %csq) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %b2) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %a2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b3) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a3) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %b1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %v_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %v_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %u_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %u_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %843 = load i32, ptr %retval, align 4
  ret i32 %843
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @zlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zlags2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @d_cnjg(ptr noundef, ptr noundef) #2

declare i32 @zrot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zlapll_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zdscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!11 = !{!"double", !6, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 8}
!14 = !{!13, !11, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}

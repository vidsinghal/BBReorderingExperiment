; ModuleID = 'samples/193.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/dggsvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DGGSVP\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b12 = internal global double 0.000000e+00, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@c_b22 = internal global double 1.000000e+00, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dggsvp_(ptr noundef %jobu, ptr noundef %jobv, ptr noundef %jobq, ptr noundef %m, ptr noundef %p, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %tola, ptr noundef %tolb, ptr noundef %k, ptr noundef %l, ptr noundef %u, ptr noundef %ldu, ptr noundef %v, ptr noundef %ldv, ptr noundef %q, ptr noundef %ldq, ptr noundef %iwork, ptr noundef %tau, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %jobu.addr = alloca ptr, align 8
  %jobv.addr = alloca ptr, align 8
  %jobq.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %tola.addr = alloca ptr, align 8
  %tolb.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %ldu.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ldv.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %ldq.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
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
  %d__1 = alloca double, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %wantq = alloca i32, align 4
  %wantu = alloca i32, align 4
  %wantv = alloca i32, align 4
  %forwrd = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x47 = alloca i32, align 4
  %_y48 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x102 = alloca i32, align 4
  %_y103 = alloca i32, align 4
  %tmp104 = alloca i32, align 4
  %_x144 = alloca i32, align 4
  %_y145 = alloca i32, align 4
  %tmp146 = alloca i32, align 4
  %_x264 = alloca i32, align 4
  %_y265 = alloca i32, align 4
  %tmp266 = alloca i32, align 4
  %_x293 = alloca i32, align 4
  %_y294 = alloca i32, align 4
  %tmp295 = alloca i32, align 4
  %_x330 = alloca i32, align 4
  %_y331 = alloca i32, align 4
  %tmp332 = alloca i32, align 4
  %_x447 = alloca i32, align 4
  %_y448 = alloca i32, align 4
  %tmp449 = alloca i32, align 4
  store ptr %jobu, ptr %jobu.addr, align 8, !tbaa !4
  store ptr %jobv, ptr %jobv.addr, align 8, !tbaa !4
  store ptr %jobq, ptr %jobq.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store ptr %tola, ptr %tola.addr, align 8, !tbaa !4
  store ptr %tolb, ptr %tolb.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %l, ptr %l.addr, align 8, !tbaa !4
  store ptr %u, ptr %u.addr, align 8, !tbaa !4
  store ptr %ldu, ptr %ldu.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %ldv, ptr %ldv.addr, align 8, !tbaa !4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %ldq, ptr %ldq.addr, align 8, !tbaa !4
  store ptr %iwork, ptr %iwork.addr, align 8, !tbaa !4
  store ptr %tau, ptr %tau.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantq) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantu) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantv) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %forwrd) #3
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
  %add.ptr = getelementptr inbounds double, ptr %4, i64 %idx.neg
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
  %add.ptr4 = getelementptr inbounds double, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %u_dim1, align 4, !tbaa !8
  %12 = load i32, ptr %u_dim1, align 4, !tbaa !8
  %add5 = add nsw i32 1, %12
  store i32 %add5, ptr %u_offset, align 4, !tbaa !8
  %13 = load i32, ptr %u_offset, align 4, !tbaa !8
  %14 = load ptr, ptr %u.addr, align 8, !tbaa !4
  %idx.ext6 = sext i32 %13 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds double, ptr %14, i64 %idx.neg7
  store ptr %add.ptr8, ptr %u.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  store i32 %16, ptr %v_dim1, align 4, !tbaa !8
  %17 = load i32, ptr %v_dim1, align 4, !tbaa !8
  %add9 = add nsw i32 1, %17
  store i32 %add9, ptr %v_offset, align 4, !tbaa !8
  %18 = load i32, ptr %v_offset, align 4, !tbaa !8
  %19 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %idx.ext10 = sext i32 %18 to i64
  %idx.neg11 = sub i64 0, %idx.ext10
  %add.ptr12 = getelementptr inbounds double, ptr %19, i64 %idx.neg11
  store ptr %add.ptr12, ptr %v.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  store i32 %21, ptr %q_dim1, align 4, !tbaa !8
  %22 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %add13 = add nsw i32 1, %22
  store i32 %add13, ptr %q_offset, align 4, !tbaa !8
  %23 = load i32, ptr %q_offset, align 4, !tbaa !8
  %24 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %idx.ext14 = sext i32 %23 to i64
  %idx.neg15 = sub i64 0, %idx.ext14
  %add.ptr16 = getelementptr inbounds double, ptr %24, i64 %idx.neg15
  store ptr %add.ptr16, ptr %q.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %25, i32 -1
  store ptr %incdec.ptr, ptr %iwork.addr, align 8, !tbaa !4
  %26 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %incdec.ptr17 = getelementptr inbounds double, ptr %26, i32 -1
  store ptr %incdec.ptr17, ptr %tau.addr, align 8, !tbaa !4
  %27 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr18 = getelementptr inbounds double, ptr %27, i32 -1
  store ptr %incdec.ptr18, ptr %work.addr, align 8, !tbaa !4
  %28 = load ptr, ptr %jobu.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %28, ptr noundef @.str)
  store i32 %call, ptr %wantu, align 4, !tbaa !8
  %29 = load ptr, ptr %jobv.addr, align 8, !tbaa !4
  %call19 = call i32 @lsame_(ptr noundef %29, ptr noundef @.str.1)
  store i32 %call19, ptr %wantv, align 4, !tbaa !8
  %30 = load ptr, ptr %jobq.addr, align 8, !tbaa !4
  %call20 = call i32 @lsame_(ptr noundef %30, ptr noundef @.str.2)
  store i32 %call20, ptr %wantq, align 4, !tbaa !8
  store i32 1, ptr %forwrd, align 4, !tbaa !8
  %31 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %31, align 4, !tbaa !8
  %32 = load i32, ptr %wantu, align 4, !tbaa !8
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %33 = load ptr, ptr %jobu.addr, align 8, !tbaa !4
  %call21 = call i32 @lsame_(ptr noundef %33, ptr noundef @.str.3)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %34 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %34, align 4, !tbaa !8
  br label %if.end86

if.else:                                          ; preds = %lor.lhs.false, %entry
  %35 = load i32, ptr %wantv, align 4, !tbaa !8
  %tobool23 = icmp ne i32 %35, 0
  br i1 %tobool23, label %if.else28, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.else
  %36 = load ptr, ptr %jobv.addr, align 8, !tbaa !4
  %call25 = call i32 @lsame_(ptr noundef %36, ptr noundef @.str.3)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.else28, label %if.then27

if.then27:                                        ; preds = %lor.lhs.false24
  %37 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %37, align 4, !tbaa !8
  br label %if.end85

if.else28:                                        ; preds = %lor.lhs.false24, %if.else
  %38 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool29 = icmp ne i32 %38, 0
  br i1 %tobool29, label %if.else34, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %if.else28
  %39 = load ptr, ptr %jobq.addr, align 8, !tbaa !4
  %call31 = call i32 @lsame_(ptr noundef %39, ptr noundef @.str.3)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.else34, label %if.then33

if.then33:                                        ; preds = %lor.lhs.false30
  %40 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %40, align 4, !tbaa !8
  br label %if.end84

if.else34:                                        ; preds = %lor.lhs.false30, %if.else28
  %41 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %42 = load i32, ptr %41, align 4, !tbaa !8
  %cmp = icmp slt i32 %42, 0
  br i1 %cmp, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.else34
  %43 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %43, align 4, !tbaa !8
  br label %if.end83

if.else36:                                        ; preds = %if.else34
  %44 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %45 = load i32, ptr %44, align 4, !tbaa !8
  %cmp37 = icmp slt i32 %45, 0
  br i1 %cmp37, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else36
  %46 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %46, align 4, !tbaa !8
  br label %if.end82

if.else39:                                        ; preds = %if.else36
  %47 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %48 = load i32, ptr %47, align 4, !tbaa !8
  %cmp40 = icmp slt i32 %48, 0
  br i1 %cmp40, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else39
  %49 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -6, ptr %49, align 4, !tbaa !8
  br label %if.end81

if.else42:                                        ; preds = %if.else39
  %50 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %51 = load i32, ptr %50, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %52 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %53 = load i32, ptr %52, align 4, !tbaa !8
  store i32 %53, ptr %_y, align 4, !tbaa !8
  %54 = load i32, ptr %_x, align 4, !tbaa !8
  %55 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp43 = icmp sgt i32 %54, %55
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else42
  %56 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else42
  %57 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %56, %cond.true ], [ %57, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %58 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp44 = icmp slt i32 %51, %58
  br i1 %cmp44, label %if.then45, label %if.else46

if.then45:                                        ; preds = %cond.end
  %59 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -8, ptr %59, align 4, !tbaa !8
  br label %if.end80

if.else46:                                        ; preds = %cond.end
  %60 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %61 = load i32, ptr %60, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x47) #3
  store i32 1, ptr %_x47, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y48) #3
  %62 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %63 = load i32, ptr %62, align 4, !tbaa !8
  store i32 %63, ptr %_y48, align 4, !tbaa !8
  %64 = load i32, ptr %_x47, align 4, !tbaa !8
  %65 = load i32, ptr %_y48, align 4, !tbaa !8
  %cmp50 = icmp sgt i32 %64, %65
  br i1 %cmp50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %if.else46
  %66 = load i32, ptr %_x47, align 4, !tbaa !8
  br label %cond.end53

cond.false52:                                     ; preds = %if.else46
  %67 = load i32, ptr %_y48, align 4, !tbaa !8
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %cond.true51
  %cond54 = phi i32 [ %66, %cond.true51 ], [ %67, %cond.false52 ]
  store i32 %cond54, ptr %tmp49, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y48) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x47) #3
  %68 = load i32, ptr %tmp49, align 4, !tbaa !8
  %cmp55 = icmp slt i32 %61, %68
  br i1 %cmp55, label %if.then56, label %if.else57

if.then56:                                        ; preds = %cond.end53
  %69 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -10, ptr %69, align 4, !tbaa !8
  br label %if.end79

if.else57:                                        ; preds = %cond.end53
  %70 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %71 = load i32, ptr %70, align 4, !tbaa !8
  %cmp58 = icmp slt i32 %71, 1
  br i1 %cmp58, label %if.then62, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.else57
  %72 = load i32, ptr %wantu, align 4, !tbaa !8
  %tobool60 = icmp ne i32 %72, 0
  br i1 %tobool60, label %land.lhs.true, label %if.else63

land.lhs.true:                                    ; preds = %lor.lhs.false59
  %73 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %74 = load i32, ptr %73, align 4, !tbaa !8
  %75 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %76 = load i32, ptr %75, align 4, !tbaa !8
  %cmp61 = icmp slt i32 %74, %76
  br i1 %cmp61, label %if.then62, label %if.else63

if.then62:                                        ; preds = %land.lhs.true, %if.else57
  %77 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -16, ptr %77, align 4, !tbaa !8
  br label %if.end78

if.else63:                                        ; preds = %land.lhs.true, %lor.lhs.false59
  %78 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %79 = load i32, ptr %78, align 4, !tbaa !8
  %cmp64 = icmp slt i32 %79, 1
  br i1 %cmp64, label %if.then69, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.else63
  %80 = load i32, ptr %wantv, align 4, !tbaa !8
  %tobool66 = icmp ne i32 %80, 0
  br i1 %tobool66, label %land.lhs.true67, label %if.else70

land.lhs.true67:                                  ; preds = %lor.lhs.false65
  %81 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %82 = load i32, ptr %81, align 4, !tbaa !8
  %83 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %84 = load i32, ptr %83, align 4, !tbaa !8
  %cmp68 = icmp slt i32 %82, %84
  br i1 %cmp68, label %if.then69, label %if.else70

if.then69:                                        ; preds = %land.lhs.true67, %if.else63
  %85 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -18, ptr %85, align 4, !tbaa !8
  br label %if.end77

if.else70:                                        ; preds = %land.lhs.true67, %lor.lhs.false65
  %86 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %87 = load i32, ptr %86, align 4, !tbaa !8
  %cmp71 = icmp slt i32 %87, 1
  br i1 %cmp71, label %if.then76, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.else70
  %88 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool73 = icmp ne i32 %88, 0
  br i1 %tobool73, label %land.lhs.true74, label %if.end

land.lhs.true74:                                  ; preds = %lor.lhs.false72
  %89 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %90 = load i32, ptr %89, align 4, !tbaa !8
  %91 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %92 = load i32, ptr %91, align 4, !tbaa !8
  %cmp75 = icmp slt i32 %90, %92
  br i1 %cmp75, label %if.then76, label %if.end

if.then76:                                        ; preds = %land.lhs.true74, %if.else70
  %93 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -20, ptr %93, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then76, %land.lhs.true74, %lor.lhs.false72
  br label %if.end77

if.end77:                                         ; preds = %if.end, %if.then69
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then62
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then56
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then45
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then41
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then38
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then35
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then33
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then27
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then
  %94 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %95 = load i32, ptr %94, align 4, !tbaa !8
  %cmp87 = icmp ne i32 %95, 0
  br i1 %cmp87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end86
  %96 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %97 = load i32, ptr %96, align 4, !tbaa !8
  %sub = sub nsw i32 0, %97
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call89 = call i32 @xerbla_(ptr noundef @.str.4, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end90:                                         ; preds = %if.end86
  %98 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %99 = load i32, ptr %98, align 4, !tbaa !8
  store i32 %99, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end90
  %100 = load i32, ptr %i__, align 4, !tbaa !8
  %101 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp91 = icmp sle i32 %100, %101
  br i1 %cmp91, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %102 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %103 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom = sext i32 %103 to i64
  %arrayidx = getelementptr inbounds i32, ptr %102, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %104 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %104, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %105 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %106 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %107 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %108 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom92 = sext i32 %108 to i64
  %arrayidx93 = getelementptr inbounds double, ptr %107, i64 %idxprom92
  %109 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %110 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %arrayidx94 = getelementptr inbounds i32, ptr %110, i64 1
  %111 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx95 = getelementptr inbounds double, ptr %111, i64 1
  %112 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx96 = getelementptr inbounds double, ptr %112, i64 1
  %113 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call97 = call i32 @dgeqpf_(ptr noundef %105, ptr noundef %106, ptr noundef %arrayidx93, ptr noundef %109, ptr noundef %arrayidx94, ptr noundef %arrayidx95, ptr noundef %arrayidx96, ptr noundef %113)
  %114 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %115 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %116 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %117 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom98 = sext i32 %117 to i64
  %arrayidx99 = getelementptr inbounds double, ptr %116, i64 %idxprom98
  %118 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %119 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %arrayidx100 = getelementptr inbounds i32, ptr %119, i64 1
  %call101 = call i32 @dlapmt_(ptr noundef %forwrd, ptr noundef %114, ptr noundef %115, ptr noundef %arrayidx99, ptr noundef %118, ptr noundef %arrayidx100)
  %120 = load ptr, ptr %l.addr, align 8, !tbaa !4
  store i32 0, ptr %120, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x102) #3
  %121 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %122 = load i32, ptr %121, align 4, !tbaa !8
  store i32 %122, ptr %_x102, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y103) #3
  %123 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %124 = load i32, ptr %123, align 4, !tbaa !8
  store i32 %124, ptr %_y103, align 4, !tbaa !8
  %125 = load i32, ptr %_x102, align 4, !tbaa !8
  %126 = load i32, ptr %_y103, align 4, !tbaa !8
  %cmp105 = icmp slt i32 %125, %126
  br i1 %cmp105, label %cond.true106, label %cond.false107

cond.true106:                                     ; preds = %for.end
  %127 = load i32, ptr %_x102, align 4, !tbaa !8
  br label %cond.end108

cond.false107:                                    ; preds = %for.end
  %128 = load i32, ptr %_y103, align 4, !tbaa !8
  br label %cond.end108

cond.end108:                                      ; preds = %cond.false107, %cond.true106
  %cond109 = phi i32 [ %127, %cond.true106 ], [ %128, %cond.false107 ]
  store i32 %cond109, ptr %tmp104, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y103) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x102) #3
  %129 = load i32, ptr %tmp104, align 4, !tbaa !8
  store i32 %129, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc125, %cond.end108
  %130 = load i32, ptr %i__, align 4, !tbaa !8
  %131 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp111 = icmp sle i32 %130, %131
  br i1 %cmp111, label %for.body112, label %for.end127

for.body112:                                      ; preds = %for.cond110
  %132 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %133 = load i32, ptr %i__, align 4, !tbaa !8
  %134 = load i32, ptr %i__, align 4, !tbaa !8
  %135 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %134, %135
  %add113 = add nsw i32 %133, %mul
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds double, ptr %132, i64 %idxprom114
  %136 = load double, ptr %arrayidx115, align 8, !tbaa !12
  store double %136, ptr %d__1, align 8, !tbaa !12
  %137 = load double, ptr %d__1, align 8, !tbaa !12
  %cmp116 = fcmp oge double %137, 0.000000e+00
  br i1 %cmp116, label %cond.true117, label %cond.false118

cond.true117:                                     ; preds = %for.body112
  %138 = load double, ptr %d__1, align 8, !tbaa !12
  br label %cond.end119

cond.false118:                                    ; preds = %for.body112
  %139 = load double, ptr %d__1, align 8, !tbaa !12
  %fneg = fneg double %139
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false118, %cond.true117
  %cond120 = phi double [ %138, %cond.true117 ], [ %fneg, %cond.false118 ]
  %140 = load ptr, ptr %tolb.addr, align 8, !tbaa !4
  %141 = load double, ptr %140, align 8, !tbaa !12
  %cmp121 = fcmp ogt double %cond120, %141
  br i1 %cmp121, label %if.then122, label %if.end124

if.then122:                                       ; preds = %cond.end119
  %142 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %143 = load i32, ptr %142, align 4, !tbaa !8
  %inc123 = add nsw i32 %143, 1
  store i32 %inc123, ptr %142, align 4, !tbaa !8
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %cond.end119
  br label %for.inc125

for.inc125:                                       ; preds = %if.end124
  %144 = load i32, ptr %i__, align 4, !tbaa !8
  %inc126 = add nsw i32 %144, 1
  store i32 %inc126, ptr %i__, align 4, !tbaa !8
  br label %for.cond110, !llvm.loop !14

for.end127:                                       ; preds = %for.cond110
  %145 = load i32, ptr %wantv, align 4, !tbaa !8
  %tobool128 = icmp ne i32 %145, 0
  br i1 %tobool128, label %if.then129, label %if.end157

if.then129:                                       ; preds = %for.end127
  %146 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %147 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %148 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %149 = load i32, ptr %v_offset, align 4, !tbaa !8
  %idxprom130 = sext i32 %149 to i64
  %arrayidx131 = getelementptr inbounds double, ptr %148, i64 %idxprom130
  %150 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %call132 = call i32 @dlaset_(ptr noundef @.str.5, ptr noundef %146, ptr noundef %147, ptr noundef @c_b12, ptr noundef @c_b12, ptr noundef %arrayidx131, ptr noundef %150)
  %151 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %152 = load i32, ptr %151, align 4, !tbaa !8
  %cmp133 = icmp sgt i32 %152, 1
  br i1 %cmp133, label %if.then134, label %if.end143

if.then134:                                       ; preds = %if.then129
  %153 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %154 = load i32, ptr %153, align 4, !tbaa !8
  %sub135 = sub nsw i32 %154, 1
  store i32 %sub135, ptr %i__1, align 4, !tbaa !8
  %155 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %156 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %157 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add136 = add nsw i32 %157, 2
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds double, ptr %156, i64 %idxprom137
  %158 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %159 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %160 = load i32, ptr %v_dim1, align 4, !tbaa !8
  %add139 = add nsw i32 %160, 2
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds double, ptr %159, i64 %idxprom140
  %161 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %call142 = call i32 @dlacpy_(ptr noundef @.str.6, ptr noundef %i__1, ptr noundef %155, ptr noundef %arrayidx138, ptr noundef %158, ptr noundef %arrayidx141, ptr noundef %161)
  br label %if.end143

if.end143:                                        ; preds = %if.then134, %if.then129
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x144) #3
  %162 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %163 = load i32, ptr %162, align 4, !tbaa !8
  store i32 %163, ptr %_x144, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y145) #3
  %164 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %165 = load i32, ptr %164, align 4, !tbaa !8
  store i32 %165, ptr %_y145, align 4, !tbaa !8
  %166 = load i32, ptr %_x144, align 4, !tbaa !8
  %167 = load i32, ptr %_y145, align 4, !tbaa !8
  %cmp147 = icmp slt i32 %166, %167
  br i1 %cmp147, label %cond.true148, label %cond.false149

cond.true148:                                     ; preds = %if.end143
  %168 = load i32, ptr %_x144, align 4, !tbaa !8
  br label %cond.end150

cond.false149:                                    ; preds = %if.end143
  %169 = load i32, ptr %_y145, align 4, !tbaa !8
  br label %cond.end150

cond.end150:                                      ; preds = %cond.false149, %cond.true148
  %cond151 = phi i32 [ %168, %cond.true148 ], [ %169, %cond.false149 ]
  store i32 %cond151, ptr %tmp146, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y145) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x144) #3
  %170 = load i32, ptr %tmp146, align 4, !tbaa !8
  store i32 %170, ptr %i__1, align 4, !tbaa !8
  %171 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %172 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %173 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %174 = load i32, ptr %v_offset, align 4, !tbaa !8
  %idxprom152 = sext i32 %174 to i64
  %arrayidx153 = getelementptr inbounds double, ptr %173, i64 %idxprom152
  %175 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %176 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx154 = getelementptr inbounds double, ptr %176, i64 1
  %177 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx155 = getelementptr inbounds double, ptr %177, i64 1
  %178 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call156 = call i32 @dorg2r_(ptr noundef %171, ptr noundef %172, ptr noundef %i__1, ptr noundef %arrayidx153, ptr noundef %175, ptr noundef %arrayidx154, ptr noundef %arrayidx155, ptr noundef %178)
  br label %if.end157

if.end157:                                        ; preds = %cond.end150, %for.end127
  %179 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %180 = load i32, ptr %179, align 4, !tbaa !8
  %sub158 = sub nsw i32 %180, 1
  store i32 %sub158, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc173, %if.end157
  %181 = load i32, ptr %j, align 4, !tbaa !8
  %182 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp160 = icmp sle i32 %181, %182
  br i1 %cmp160, label %for.body161, label %for.end175

for.body161:                                      ; preds = %for.cond159
  %183 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %184 = load i32, ptr %183, align 4, !tbaa !8
  store i32 %184, ptr %i__2, align 4, !tbaa !8
  %185 = load i32, ptr %j, align 4, !tbaa !8
  %add162 = add nsw i32 %185, 1
  store i32 %add162, ptr %i__, align 4, !tbaa !8
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc170, %for.body161
  %186 = load i32, ptr %i__, align 4, !tbaa !8
  %187 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp164 = icmp sle i32 %186, %187
  br i1 %cmp164, label %for.body165, label %for.end172

for.body165:                                      ; preds = %for.cond163
  %188 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %189 = load i32, ptr %i__, align 4, !tbaa !8
  %190 = load i32, ptr %j, align 4, !tbaa !8
  %191 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul166 = mul nsw i32 %190, %191
  %add167 = add nsw i32 %189, %mul166
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds double, ptr %188, i64 %idxprom168
  store double 0.000000e+00, ptr %arrayidx169, align 8, !tbaa !12
  br label %for.inc170

for.inc170:                                       ; preds = %for.body165
  %192 = load i32, ptr %i__, align 4, !tbaa !8
  %inc171 = add nsw i32 %192, 1
  store i32 %inc171, ptr %i__, align 4, !tbaa !8
  br label %for.cond163, !llvm.loop !15

for.end172:                                       ; preds = %for.cond163
  br label %for.inc173

for.inc173:                                       ; preds = %for.end172
  %193 = load i32, ptr %j, align 4, !tbaa !8
  %inc174 = add nsw i32 %193, 1
  store i32 %inc174, ptr %j, align 4, !tbaa !8
  br label %for.cond159, !llvm.loop !16

for.end175:                                       ; preds = %for.cond159
  %194 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %195 = load i32, ptr %194, align 4, !tbaa !8
  %196 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %197 = load i32, ptr %196, align 4, !tbaa !8
  %cmp176 = icmp sgt i32 %195, %197
  br i1 %cmp176, label %if.then177, label %if.end184

if.then177:                                       ; preds = %for.end175
  %198 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %199 = load i32, ptr %198, align 4, !tbaa !8
  %200 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %201 = load i32, ptr %200, align 4, !tbaa !8
  %sub178 = sub nsw i32 %199, %201
  store i32 %sub178, ptr %i__1, align 4, !tbaa !8
  %202 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %203 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %204 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %205 = load i32, ptr %204, align 4, !tbaa !8
  %add179 = add nsw i32 %205, 1
  %206 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add180 = add nsw i32 %add179, %206
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds double, ptr %203, i64 %idxprom181
  %207 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call183 = call i32 @dlaset_(ptr noundef @.str.5, ptr noundef %i__1, ptr noundef %202, ptr noundef @c_b12, ptr noundef @c_b12, ptr noundef %arrayidx182, ptr noundef %207)
  br label %if.end184

if.end184:                                        ; preds = %if.then177, %for.end175
  %208 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool185 = icmp ne i32 %208, 0
  br i1 %tobool185, label %if.then186, label %if.end194

if.then186:                                       ; preds = %if.end184
  %209 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %210 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %211 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %212 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom187 = sext i32 %212 to i64
  %arrayidx188 = getelementptr inbounds double, ptr %211, i64 %idxprom187
  %213 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %call189 = call i32 @dlaset_(ptr noundef @.str.5, ptr noundef %209, ptr noundef %210, ptr noundef @c_b12, ptr noundef @c_b22, ptr noundef %arrayidx188, ptr noundef %213)
  %214 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %215 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %216 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %217 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom190 = sext i32 %217 to i64
  %arrayidx191 = getelementptr inbounds double, ptr %216, i64 %idxprom190
  %218 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %219 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %arrayidx192 = getelementptr inbounds i32, ptr %219, i64 1
  %call193 = call i32 @dlapmt_(ptr noundef %forwrd, ptr noundef %214, ptr noundef %215, ptr noundef %arrayidx191, ptr noundef %218, ptr noundef %arrayidx192)
  br label %if.end194

if.end194:                                        ; preds = %if.then186, %if.end184
  %220 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %221 = load i32, ptr %220, align 4, !tbaa !8
  %222 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %223 = load i32, ptr %222, align 4, !tbaa !8
  %cmp195 = icmp sge i32 %221, %223
  br i1 %cmp195, label %land.lhs.true196, label %if.end246

land.lhs.true196:                                 ; preds = %if.end194
  %224 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %225 = load i32, ptr %224, align 4, !tbaa !8
  %226 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %227 = load i32, ptr %226, align 4, !tbaa !8
  %cmp197 = icmp ne i32 %225, %227
  br i1 %cmp197, label %if.then198, label %if.end246

if.then198:                                       ; preds = %land.lhs.true196
  %228 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %229 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %230 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %231 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom199 = sext i32 %231 to i64
  %arrayidx200 = getelementptr inbounds double, ptr %230, i64 %idxprom199
  %232 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %233 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx201 = getelementptr inbounds double, ptr %233, i64 1
  %234 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx202 = getelementptr inbounds double, ptr %234, i64 1
  %235 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call203 = call i32 @dgerq2_(ptr noundef %228, ptr noundef %229, ptr noundef %arrayidx200, ptr noundef %232, ptr noundef %arrayidx201, ptr noundef %arrayidx202, ptr noundef %235)
  %236 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %237 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %238 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %239 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %240 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom204 = sext i32 %240 to i64
  %arrayidx205 = getelementptr inbounds double, ptr %239, i64 %idxprom204
  %241 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %242 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx206 = getelementptr inbounds double, ptr %242, i64 1
  %243 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %244 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom207 = sext i32 %244 to i64
  %arrayidx208 = getelementptr inbounds double, ptr %243, i64 %idxprom207
  %245 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %246 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx209 = getelementptr inbounds double, ptr %246, i64 1
  %247 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call210 = call i32 @dormr2_(ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef %236, ptr noundef %237, ptr noundef %238, ptr noundef %arrayidx205, ptr noundef %241, ptr noundef %arrayidx206, ptr noundef %arrayidx208, ptr noundef %245, ptr noundef %arrayidx209, ptr noundef %247)
  %248 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool211 = icmp ne i32 %248, 0
  br i1 %tobool211, label %if.then212, label %if.end220

if.then212:                                       ; preds = %if.then198
  %249 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %250 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %251 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %252 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %253 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom213 = sext i32 %253 to i64
  %arrayidx214 = getelementptr inbounds double, ptr %252, i64 %idxprom213
  %254 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %255 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx215 = getelementptr inbounds double, ptr %255, i64 1
  %256 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %257 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom216 = sext i32 %257 to i64
  %arrayidx217 = getelementptr inbounds double, ptr %256, i64 %idxprom216
  %258 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %259 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx218 = getelementptr inbounds double, ptr %259, i64 1
  %260 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call219 = call i32 @dormr2_(ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef %249, ptr noundef %250, ptr noundef %251, ptr noundef %arrayidx214, ptr noundef %254, ptr noundef %arrayidx215, ptr noundef %arrayidx217, ptr noundef %258, ptr noundef %arrayidx218, ptr noundef %260)
  br label %if.end220

if.end220:                                        ; preds = %if.then212, %if.then198
  %261 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %262 = load i32, ptr %261, align 4, !tbaa !8
  %263 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %264 = load i32, ptr %263, align 4, !tbaa !8
  %sub221 = sub nsw i32 %262, %264
  store i32 %sub221, ptr %i__1, align 4, !tbaa !8
  %265 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %266 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %267 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom222 = sext i32 %267 to i64
  %arrayidx223 = getelementptr inbounds double, ptr %266, i64 %idxprom222
  %268 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call224 = call i32 @dlaset_(ptr noundef @.str.5, ptr noundef %265, ptr noundef %i__1, ptr noundef @c_b12, ptr noundef @c_b12, ptr noundef %arrayidx223, ptr noundef %268)
  %269 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %270 = load i32, ptr %269, align 4, !tbaa !8
  store i32 %270, ptr %i__1, align 4, !tbaa !8
  %271 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %272 = load i32, ptr %271, align 4, !tbaa !8
  %273 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %274 = load i32, ptr %273, align 4, !tbaa !8
  %sub225 = sub nsw i32 %272, %274
  %add226 = add nsw i32 %sub225, 1
  store i32 %add226, ptr %j, align 4, !tbaa !8
  br label %for.cond227

for.cond227:                                      ; preds = %for.inc243, %if.end220
  %275 = load i32, ptr %j, align 4, !tbaa !8
  %276 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp228 = icmp sle i32 %275, %276
  br i1 %cmp228, label %for.body229, label %for.end245

for.body229:                                      ; preds = %for.cond227
  %277 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %278 = load i32, ptr %277, align 4, !tbaa !8
  store i32 %278, ptr %i__2, align 4, !tbaa !8
  %279 = load i32, ptr %j, align 4, !tbaa !8
  %280 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %281 = load i32, ptr %280, align 4, !tbaa !8
  %sub230 = sub nsw i32 %279, %281
  %282 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %283 = load i32, ptr %282, align 4, !tbaa !8
  %add231 = add nsw i32 %sub230, %283
  %add232 = add nsw i32 %add231, 1
  store i32 %add232, ptr %i__, align 4, !tbaa !8
  br label %for.cond233

for.cond233:                                      ; preds = %for.inc240, %for.body229
  %284 = load i32, ptr %i__, align 4, !tbaa !8
  %285 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp234 = icmp sle i32 %284, %285
  br i1 %cmp234, label %for.body235, label %for.end242

for.body235:                                      ; preds = %for.cond233
  %286 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %287 = load i32, ptr %i__, align 4, !tbaa !8
  %288 = load i32, ptr %j, align 4, !tbaa !8
  %289 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul236 = mul nsw i32 %288, %289
  %add237 = add nsw i32 %287, %mul236
  %idxprom238 = sext i32 %add237 to i64
  %arrayidx239 = getelementptr inbounds double, ptr %286, i64 %idxprom238
  store double 0.000000e+00, ptr %arrayidx239, align 8, !tbaa !12
  br label %for.inc240

for.inc240:                                       ; preds = %for.body235
  %290 = load i32, ptr %i__, align 4, !tbaa !8
  %inc241 = add nsw i32 %290, 1
  store i32 %inc241, ptr %i__, align 4, !tbaa !8
  br label %for.cond233, !llvm.loop !17

for.end242:                                       ; preds = %for.cond233
  br label %for.inc243

for.inc243:                                       ; preds = %for.end242
  %291 = load i32, ptr %j, align 4, !tbaa !8
  %inc244 = add nsw i32 %291, 1
  store i32 %inc244, ptr %j, align 4, !tbaa !8
  br label %for.cond227, !llvm.loop !18

for.end245:                                       ; preds = %for.cond227
  br label %if.end246

if.end246:                                        ; preds = %for.end245, %land.lhs.true196, %if.end194
  %292 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %293 = load i32, ptr %292, align 4, !tbaa !8
  %294 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %295 = load i32, ptr %294, align 4, !tbaa !8
  %sub247 = sub nsw i32 %293, %295
  store i32 %sub247, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond248

for.cond248:                                      ; preds = %for.inc253, %if.end246
  %296 = load i32, ptr %i__, align 4, !tbaa !8
  %297 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp249 = icmp sle i32 %296, %297
  br i1 %cmp249, label %for.body250, label %for.end255

for.body250:                                      ; preds = %for.cond248
  %298 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %299 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom251 = sext i32 %299 to i64
  %arrayidx252 = getelementptr inbounds i32, ptr %298, i64 %idxprom251
  store i32 0, ptr %arrayidx252, align 4, !tbaa !8
  br label %for.inc253

for.inc253:                                       ; preds = %for.body250
  %300 = load i32, ptr %i__, align 4, !tbaa !8
  %inc254 = add nsw i32 %300, 1
  store i32 %inc254, ptr %i__, align 4, !tbaa !8
  br label %for.cond248, !llvm.loop !19

for.end255:                                       ; preds = %for.cond248
  %301 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %302 = load i32, ptr %301, align 4, !tbaa !8
  %303 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %304 = load i32, ptr %303, align 4, !tbaa !8
  %sub256 = sub nsw i32 %302, %304
  store i32 %sub256, ptr %i__1, align 4, !tbaa !8
  %305 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %306 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %307 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom257 = sext i32 %307 to i64
  %arrayidx258 = getelementptr inbounds double, ptr %306, i64 %idxprom257
  %308 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %309 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %arrayidx259 = getelementptr inbounds i32, ptr %309, i64 1
  %310 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx260 = getelementptr inbounds double, ptr %310, i64 1
  %311 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx261 = getelementptr inbounds double, ptr %311, i64 1
  %312 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call262 = call i32 @dgeqpf_(ptr noundef %305, ptr noundef %i__1, ptr noundef %arrayidx258, ptr noundef %308, ptr noundef %arrayidx259, ptr noundef %arrayidx260, ptr noundef %arrayidx261, ptr noundef %312)
  %313 = load ptr, ptr %k.addr, align 8, !tbaa !4
  store i32 0, ptr %313, align 4, !tbaa !8
  %314 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %315 = load i32, ptr %314, align 4, !tbaa !8
  store i32 %315, ptr %i__2, align 4, !tbaa !8
  %316 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %317 = load i32, ptr %316, align 4, !tbaa !8
  %318 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %319 = load i32, ptr %318, align 4, !tbaa !8
  %sub263 = sub nsw i32 %317, %319
  store i32 %sub263, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x264) #3
  %320 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %320, ptr %_x264, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y265) #3
  %321 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %321, ptr %_y265, align 4, !tbaa !8
  %322 = load i32, ptr %_x264, align 4, !tbaa !8
  %323 = load i32, ptr %_y265, align 4, !tbaa !8
  %cmp267 = icmp slt i32 %322, %323
  br i1 %cmp267, label %cond.true268, label %cond.false269

cond.true268:                                     ; preds = %for.end255
  %324 = load i32, ptr %_x264, align 4, !tbaa !8
  br label %cond.end270

cond.false269:                                    ; preds = %for.end255
  %325 = load i32, ptr %_y265, align 4, !tbaa !8
  br label %cond.end270

cond.end270:                                      ; preds = %cond.false269, %cond.true268
  %cond271 = phi i32 [ %324, %cond.true268 ], [ %325, %cond.false269 ]
  store i32 %cond271, ptr %tmp266, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y265) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x264) #3
  %326 = load i32, ptr %tmp266, align 4, !tbaa !8
  store i32 %326, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond272

for.cond272:                                      ; preds = %for.inc289, %cond.end270
  %327 = load i32, ptr %i__, align 4, !tbaa !8
  %328 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp273 = icmp sle i32 %327, %328
  br i1 %cmp273, label %for.body274, label %for.end291

for.body274:                                      ; preds = %for.cond272
  %329 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %330 = load i32, ptr %i__, align 4, !tbaa !8
  %331 = load i32, ptr %i__, align 4, !tbaa !8
  %332 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul275 = mul nsw i32 %331, %332
  %add276 = add nsw i32 %330, %mul275
  %idxprom277 = sext i32 %add276 to i64
  %arrayidx278 = getelementptr inbounds double, ptr %329, i64 %idxprom277
  %333 = load double, ptr %arrayidx278, align 8, !tbaa !12
  store double %333, ptr %d__1, align 8, !tbaa !12
  %334 = load double, ptr %d__1, align 8, !tbaa !12
  %cmp279 = fcmp oge double %334, 0.000000e+00
  br i1 %cmp279, label %cond.true280, label %cond.false281

cond.true280:                                     ; preds = %for.body274
  %335 = load double, ptr %d__1, align 8, !tbaa !12
  br label %cond.end283

cond.false281:                                    ; preds = %for.body274
  %336 = load double, ptr %d__1, align 8, !tbaa !12
  %fneg282 = fneg double %336
  br label %cond.end283

cond.end283:                                      ; preds = %cond.false281, %cond.true280
  %cond284 = phi double [ %335, %cond.true280 ], [ %fneg282, %cond.false281 ]
  %337 = load ptr, ptr %tola.addr, align 8, !tbaa !4
  %338 = load double, ptr %337, align 8, !tbaa !12
  %cmp285 = fcmp ogt double %cond284, %338
  br i1 %cmp285, label %if.then286, label %if.end288

if.then286:                                       ; preds = %cond.end283
  %339 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %340 = load i32, ptr %339, align 4, !tbaa !8
  %inc287 = add nsw i32 %340, 1
  store i32 %inc287, ptr %339, align 4, !tbaa !8
  br label %if.end288

if.end288:                                        ; preds = %if.then286, %cond.end283
  br label %for.inc289

for.inc289:                                       ; preds = %if.end288
  %341 = load i32, ptr %i__, align 4, !tbaa !8
  %inc290 = add nsw i32 %341, 1
  store i32 %inc290, ptr %i__, align 4, !tbaa !8
  br label %for.cond272, !llvm.loop !20

for.end291:                                       ; preds = %for.cond272
  %342 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %343 = load i32, ptr %342, align 4, !tbaa !8
  store i32 %343, ptr %i__2, align 4, !tbaa !8
  %344 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %345 = load i32, ptr %344, align 4, !tbaa !8
  %346 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %347 = load i32, ptr %346, align 4, !tbaa !8
  %sub292 = sub nsw i32 %345, %347
  store i32 %sub292, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x293) #3
  %348 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %348, ptr %_x293, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y294) #3
  %349 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %349, ptr %_y294, align 4, !tbaa !8
  %350 = load i32, ptr %_x293, align 4, !tbaa !8
  %351 = load i32, ptr %_y294, align 4, !tbaa !8
  %cmp296 = icmp slt i32 %350, %351
  br i1 %cmp296, label %cond.true297, label %cond.false298

cond.true297:                                     ; preds = %for.end291
  %352 = load i32, ptr %_x293, align 4, !tbaa !8
  br label %cond.end299

cond.false298:                                    ; preds = %for.end291
  %353 = load i32, ptr %_y294, align 4, !tbaa !8
  br label %cond.end299

cond.end299:                                      ; preds = %cond.false298, %cond.true297
  %cond300 = phi i32 [ %352, %cond.true297 ], [ %353, %cond.false298 ]
  store i32 %cond300, ptr %tmp295, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y294) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x293) #3
  %354 = load i32, ptr %tmp295, align 4, !tbaa !8
  store i32 %354, ptr %i__1, align 4, !tbaa !8
  %355 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %356 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %357 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %358 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom301 = sext i32 %358 to i64
  %arrayidx302 = getelementptr inbounds double, ptr %357, i64 %idxprom301
  %359 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %360 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx303 = getelementptr inbounds double, ptr %360, i64 1
  %361 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %362 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %363 = load i32, ptr %362, align 4, !tbaa !8
  %364 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %365 = load i32, ptr %364, align 4, !tbaa !8
  %sub304 = sub nsw i32 %363, %365
  %add305 = add nsw i32 %sub304, 1
  %366 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul306 = mul nsw i32 %add305, %366
  %add307 = add nsw i32 %mul306, 1
  %idxprom308 = sext i32 %add307 to i64
  %arrayidx309 = getelementptr inbounds double, ptr %361, i64 %idxprom308
  %367 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %368 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx310 = getelementptr inbounds double, ptr %368, i64 1
  %369 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call311 = call i32 @dorm2r_(ptr noundef @.str.9, ptr noundef @.str.8, ptr noundef %355, ptr noundef %356, ptr noundef %i__1, ptr noundef %arrayidx302, ptr noundef %359, ptr noundef %arrayidx303, ptr noundef %arrayidx309, ptr noundef %367, ptr noundef %arrayidx310, ptr noundef %369)
  %370 = load i32, ptr %wantu, align 4, !tbaa !8
  %tobool312 = icmp ne i32 %370, 0
  br i1 %tobool312, label %if.then313, label %if.end343

if.then313:                                       ; preds = %cond.end299
  %371 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %372 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %373 = load ptr, ptr %u.addr, align 8, !tbaa !4
  %374 = load i32, ptr %u_offset, align 4, !tbaa !8
  %idxprom314 = sext i32 %374 to i64
  %arrayidx315 = getelementptr inbounds double, ptr %373, i64 %idxprom314
  %375 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %call316 = call i32 @dlaset_(ptr noundef @.str.5, ptr noundef %371, ptr noundef %372, ptr noundef @c_b12, ptr noundef @c_b12, ptr noundef %arrayidx315, ptr noundef %375)
  %376 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %377 = load i32, ptr %376, align 4, !tbaa !8
  %cmp317 = icmp sgt i32 %377, 1
  br i1 %cmp317, label %if.then318, label %if.end328

if.then318:                                       ; preds = %if.then313
  %378 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %379 = load i32, ptr %378, align 4, !tbaa !8
  %sub319 = sub nsw i32 %379, 1
  store i32 %sub319, ptr %i__1, align 4, !tbaa !8
  %380 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %381 = load i32, ptr %380, align 4, !tbaa !8
  %382 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %383 = load i32, ptr %382, align 4, !tbaa !8
  %sub320 = sub nsw i32 %381, %383
  store i32 %sub320, ptr %i__2, align 4, !tbaa !8
  %384 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %385 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add321 = add nsw i32 %385, 2
  %idxprom322 = sext i32 %add321 to i64
  %arrayidx323 = getelementptr inbounds double, ptr %384, i64 %idxprom322
  %386 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %387 = load ptr, ptr %u.addr, align 8, !tbaa !4
  %388 = load i32, ptr %u_dim1, align 4, !tbaa !8
  %add324 = add nsw i32 %388, 2
  %idxprom325 = sext i32 %add324 to i64
  %arrayidx326 = getelementptr inbounds double, ptr %387, i64 %idxprom325
  %389 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %call327 = call i32 @dlacpy_(ptr noundef @.str.6, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx323, ptr noundef %386, ptr noundef %arrayidx326, ptr noundef %389)
  br label %if.end328

if.end328:                                        ; preds = %if.then318, %if.then313
  %390 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %391 = load i32, ptr %390, align 4, !tbaa !8
  store i32 %391, ptr %i__2, align 4, !tbaa !8
  %392 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %393 = load i32, ptr %392, align 4, !tbaa !8
  %394 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %395 = load i32, ptr %394, align 4, !tbaa !8
  %sub329 = sub nsw i32 %393, %395
  store i32 %sub329, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x330) #3
  %396 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %396, ptr %_x330, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y331) #3
  %397 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %397, ptr %_y331, align 4, !tbaa !8
  %398 = load i32, ptr %_x330, align 4, !tbaa !8
  %399 = load i32, ptr %_y331, align 4, !tbaa !8
  %cmp333 = icmp slt i32 %398, %399
  br i1 %cmp333, label %cond.true334, label %cond.false335

cond.true334:                                     ; preds = %if.end328
  %400 = load i32, ptr %_x330, align 4, !tbaa !8
  br label %cond.end336

cond.false335:                                    ; preds = %if.end328
  %401 = load i32, ptr %_y331, align 4, !tbaa !8
  br label %cond.end336

cond.end336:                                      ; preds = %cond.false335, %cond.true334
  %cond337 = phi i32 [ %400, %cond.true334 ], [ %401, %cond.false335 ]
  store i32 %cond337, ptr %tmp332, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y331) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x330) #3
  %402 = load i32, ptr %tmp332, align 4, !tbaa !8
  store i32 %402, ptr %i__1, align 4, !tbaa !8
  %403 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %404 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %405 = load ptr, ptr %u.addr, align 8, !tbaa !4
  %406 = load i32, ptr %u_offset, align 4, !tbaa !8
  %idxprom338 = sext i32 %406 to i64
  %arrayidx339 = getelementptr inbounds double, ptr %405, i64 %idxprom338
  %407 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %408 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx340 = getelementptr inbounds double, ptr %408, i64 1
  %409 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx341 = getelementptr inbounds double, ptr %409, i64 1
  %410 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call342 = call i32 @dorg2r_(ptr noundef %403, ptr noundef %404, ptr noundef %i__1, ptr noundef %arrayidx339, ptr noundef %407, ptr noundef %arrayidx340, ptr noundef %arrayidx341, ptr noundef %410)
  br label %if.end343

if.end343:                                        ; preds = %cond.end336, %cond.end299
  %411 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool344 = icmp ne i32 %411, 0
  br i1 %tobool344, label %if.then345, label %if.end351

if.then345:                                       ; preds = %if.end343
  %412 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %413 = load i32, ptr %412, align 4, !tbaa !8
  %414 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %415 = load i32, ptr %414, align 4, !tbaa !8
  %sub346 = sub nsw i32 %413, %415
  store i32 %sub346, ptr %i__1, align 4, !tbaa !8
  %416 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %417 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %418 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom347 = sext i32 %418 to i64
  %arrayidx348 = getelementptr inbounds double, ptr %417, i64 %idxprom347
  %419 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %420 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %arrayidx349 = getelementptr inbounds i32, ptr %420, i64 1
  %call350 = call i32 @dlapmt_(ptr noundef %forwrd, ptr noundef %416, ptr noundef %i__1, ptr noundef %arrayidx348, ptr noundef %419, ptr noundef %arrayidx349)
  br label %if.end351

if.end351:                                        ; preds = %if.then345, %if.end343
  %421 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %422 = load i32, ptr %421, align 4, !tbaa !8
  %sub352 = sub nsw i32 %422, 1
  store i32 %sub352, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond353

for.cond353:                                      ; preds = %for.inc367, %if.end351
  %423 = load i32, ptr %j, align 4, !tbaa !8
  %424 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp354 = icmp sle i32 %423, %424
  br i1 %cmp354, label %for.body355, label %for.end369

for.body355:                                      ; preds = %for.cond353
  %425 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %426 = load i32, ptr %425, align 4, !tbaa !8
  store i32 %426, ptr %i__2, align 4, !tbaa !8
  %427 = load i32, ptr %j, align 4, !tbaa !8
  %add356 = add nsw i32 %427, 1
  store i32 %add356, ptr %i__, align 4, !tbaa !8
  br label %for.cond357

for.cond357:                                      ; preds = %for.inc364, %for.body355
  %428 = load i32, ptr %i__, align 4, !tbaa !8
  %429 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp358 = icmp sle i32 %428, %429
  br i1 %cmp358, label %for.body359, label %for.end366

for.body359:                                      ; preds = %for.cond357
  %430 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %431 = load i32, ptr %i__, align 4, !tbaa !8
  %432 = load i32, ptr %j, align 4, !tbaa !8
  %433 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul360 = mul nsw i32 %432, %433
  %add361 = add nsw i32 %431, %mul360
  %idxprom362 = sext i32 %add361 to i64
  %arrayidx363 = getelementptr inbounds double, ptr %430, i64 %idxprom362
  store double 0.000000e+00, ptr %arrayidx363, align 8, !tbaa !12
  br label %for.inc364

for.inc364:                                       ; preds = %for.body359
  %434 = load i32, ptr %i__, align 4, !tbaa !8
  %inc365 = add nsw i32 %434, 1
  store i32 %inc365, ptr %i__, align 4, !tbaa !8
  br label %for.cond357, !llvm.loop !21

for.end366:                                       ; preds = %for.cond357
  br label %for.inc367

for.inc367:                                       ; preds = %for.end366
  %435 = load i32, ptr %j, align 4, !tbaa !8
  %inc368 = add nsw i32 %435, 1
  store i32 %inc368, ptr %j, align 4, !tbaa !8
  br label %for.cond353, !llvm.loop !22

for.end369:                                       ; preds = %for.cond353
  %436 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %437 = load i32, ptr %436, align 4, !tbaa !8
  %438 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %439 = load i32, ptr %438, align 4, !tbaa !8
  %cmp370 = icmp sgt i32 %437, %439
  br i1 %cmp370, label %if.then371, label %if.end379

if.then371:                                       ; preds = %for.end369
  %440 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %441 = load i32, ptr %440, align 4, !tbaa !8
  %442 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %443 = load i32, ptr %442, align 4, !tbaa !8
  %sub372 = sub nsw i32 %441, %443
  store i32 %sub372, ptr %i__1, align 4, !tbaa !8
  %444 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %445 = load i32, ptr %444, align 4, !tbaa !8
  %446 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %447 = load i32, ptr %446, align 4, !tbaa !8
  %sub373 = sub nsw i32 %445, %447
  store i32 %sub373, ptr %i__2, align 4, !tbaa !8
  %448 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %449 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %450 = load i32, ptr %449, align 4, !tbaa !8
  %add374 = add nsw i32 %450, 1
  %451 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add375 = add nsw i32 %add374, %451
  %idxprom376 = sext i32 %add375 to i64
  %arrayidx377 = getelementptr inbounds double, ptr %448, i64 %idxprom376
  %452 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call378 = call i32 @dlaset_(ptr noundef @.str.5, ptr noundef %i__1, ptr noundef %i__2, ptr noundef @c_b12, ptr noundef @c_b12, ptr noundef %arrayidx377, ptr noundef %452)
  br label %if.end379

if.end379:                                        ; preds = %if.then371, %for.end369
  %453 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %454 = load i32, ptr %453, align 4, !tbaa !8
  %455 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %456 = load i32, ptr %455, align 4, !tbaa !8
  %sub380 = sub nsw i32 %454, %456
  %457 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %458 = load i32, ptr %457, align 4, !tbaa !8
  %cmp381 = icmp sgt i32 %sub380, %458
  br i1 %cmp381, label %if.then382, label %if.end429

if.then382:                                       ; preds = %if.end379
  %459 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %460 = load i32, ptr %459, align 4, !tbaa !8
  %461 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %462 = load i32, ptr %461, align 4, !tbaa !8
  %sub383 = sub nsw i32 %460, %462
  store i32 %sub383, ptr %i__1, align 4, !tbaa !8
  %463 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %464 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %465 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom384 = sext i32 %465 to i64
  %arrayidx385 = getelementptr inbounds double, ptr %464, i64 %idxprom384
  %466 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %467 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx386 = getelementptr inbounds double, ptr %467, i64 1
  %468 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx387 = getelementptr inbounds double, ptr %468, i64 1
  %469 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call388 = call i32 @dgerq2_(ptr noundef %463, ptr noundef %i__1, ptr noundef %arrayidx385, ptr noundef %466, ptr noundef %arrayidx386, ptr noundef %arrayidx387, ptr noundef %469)
  %470 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool389 = icmp ne i32 %470, 0
  br i1 %tobool389, label %if.then390, label %if.end399

if.then390:                                       ; preds = %if.then382
  %471 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %472 = load i32, ptr %471, align 4, !tbaa !8
  %473 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %474 = load i32, ptr %473, align 4, !tbaa !8
  %sub391 = sub nsw i32 %472, %474
  store i32 %sub391, ptr %i__1, align 4, !tbaa !8
  %475 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %476 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %477 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %478 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom392 = sext i32 %478 to i64
  %arrayidx393 = getelementptr inbounds double, ptr %477, i64 %idxprom392
  %479 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %480 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx394 = getelementptr inbounds double, ptr %480, i64 1
  %481 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %482 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom395 = sext i32 %482 to i64
  %arrayidx396 = getelementptr inbounds double, ptr %481, i64 %idxprom395
  %483 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %484 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx397 = getelementptr inbounds double, ptr %484, i64 1
  %485 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call398 = call i32 @dormr2_(ptr noundef @.str.7, ptr noundef @.str.8, ptr noundef %475, ptr noundef %i__1, ptr noundef %476, ptr noundef %arrayidx393, ptr noundef %479, ptr noundef %arrayidx394, ptr noundef %arrayidx396, ptr noundef %483, ptr noundef %arrayidx397, ptr noundef %485)
  br label %if.end399

if.end399:                                        ; preds = %if.then390, %if.then382
  %486 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %487 = load i32, ptr %486, align 4, !tbaa !8
  %488 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %489 = load i32, ptr %488, align 4, !tbaa !8
  %sub400 = sub nsw i32 %487, %489
  %490 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %491 = load i32, ptr %490, align 4, !tbaa !8
  %sub401 = sub nsw i32 %sub400, %491
  store i32 %sub401, ptr %i__1, align 4, !tbaa !8
  %492 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %493 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %494 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom402 = sext i32 %494 to i64
  %arrayidx403 = getelementptr inbounds double, ptr %493, i64 %idxprom402
  %495 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call404 = call i32 @dlaset_(ptr noundef @.str.5, ptr noundef %492, ptr noundef %i__1, ptr noundef @c_b12, ptr noundef @c_b12, ptr noundef %arrayidx403, ptr noundef %495)
  %496 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %497 = load i32, ptr %496, align 4, !tbaa !8
  %498 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %499 = load i32, ptr %498, align 4, !tbaa !8
  %sub405 = sub nsw i32 %497, %499
  store i32 %sub405, ptr %i__1, align 4, !tbaa !8
  %500 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %501 = load i32, ptr %500, align 4, !tbaa !8
  %502 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %503 = load i32, ptr %502, align 4, !tbaa !8
  %sub406 = sub nsw i32 %501, %503
  %504 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %505 = load i32, ptr %504, align 4, !tbaa !8
  %sub407 = sub nsw i32 %sub406, %505
  %add408 = add nsw i32 %sub407, 1
  store i32 %add408, ptr %j, align 4, !tbaa !8
  br label %for.cond409

for.cond409:                                      ; preds = %for.inc426, %if.end399
  %506 = load i32, ptr %j, align 4, !tbaa !8
  %507 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp410 = icmp sle i32 %506, %507
  br i1 %cmp410, label %for.body411, label %for.end428

for.body411:                                      ; preds = %for.cond409
  %508 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %509 = load i32, ptr %508, align 4, !tbaa !8
  store i32 %509, ptr %i__2, align 4, !tbaa !8
  %510 = load i32, ptr %j, align 4, !tbaa !8
  %511 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %512 = load i32, ptr %511, align 4, !tbaa !8
  %sub412 = sub nsw i32 %510, %512
  %513 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %514 = load i32, ptr %513, align 4, !tbaa !8
  %add413 = add nsw i32 %sub412, %514
  %515 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %516 = load i32, ptr %515, align 4, !tbaa !8
  %add414 = add nsw i32 %add413, %516
  %add415 = add nsw i32 %add414, 1
  store i32 %add415, ptr %i__, align 4, !tbaa !8
  br label %for.cond416

for.cond416:                                      ; preds = %for.inc423, %for.body411
  %517 = load i32, ptr %i__, align 4, !tbaa !8
  %518 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp417 = icmp sle i32 %517, %518
  br i1 %cmp417, label %for.body418, label %for.end425

for.body418:                                      ; preds = %for.cond416
  %519 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %520 = load i32, ptr %i__, align 4, !tbaa !8
  %521 = load i32, ptr %j, align 4, !tbaa !8
  %522 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul419 = mul nsw i32 %521, %522
  %add420 = add nsw i32 %520, %mul419
  %idxprom421 = sext i32 %add420 to i64
  %arrayidx422 = getelementptr inbounds double, ptr %519, i64 %idxprom421
  store double 0.000000e+00, ptr %arrayidx422, align 8, !tbaa !12
  br label %for.inc423

for.inc423:                                       ; preds = %for.body418
  %523 = load i32, ptr %i__, align 4, !tbaa !8
  %inc424 = add nsw i32 %523, 1
  store i32 %inc424, ptr %i__, align 4, !tbaa !8
  br label %for.cond416, !llvm.loop !23

for.end425:                                       ; preds = %for.cond416
  br label %for.inc426

for.inc426:                                       ; preds = %for.end425
  %524 = load i32, ptr %j, align 4, !tbaa !8
  %inc427 = add nsw i32 %524, 1
  store i32 %inc427, ptr %j, align 4, !tbaa !8
  br label %for.cond409, !llvm.loop !24

for.end428:                                       ; preds = %for.cond409
  br label %if.end429

if.end429:                                        ; preds = %for.end428, %if.end379
  %525 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %526 = load i32, ptr %525, align 4, !tbaa !8
  %527 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %528 = load i32, ptr %527, align 4, !tbaa !8
  %cmp430 = icmp sgt i32 %526, %528
  br i1 %cmp430, label %if.then431, label %if.end493

if.then431:                                       ; preds = %if.end429
  %529 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %530 = load i32, ptr %529, align 4, !tbaa !8
  %531 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %532 = load i32, ptr %531, align 4, !tbaa !8
  %sub432 = sub nsw i32 %530, %532
  store i32 %sub432, ptr %i__1, align 4, !tbaa !8
  %533 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %534 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %535 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %536 = load i32, ptr %535, align 4, !tbaa !8
  %add433 = add nsw i32 %536, 1
  %537 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %538 = load i32, ptr %537, align 4, !tbaa !8
  %539 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %540 = load i32, ptr %539, align 4, !tbaa !8
  %sub434 = sub nsw i32 %538, %540
  %add435 = add nsw i32 %sub434, 1
  %541 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul436 = mul nsw i32 %add435, %541
  %add437 = add nsw i32 %add433, %mul436
  %idxprom438 = sext i32 %add437 to i64
  %arrayidx439 = getelementptr inbounds double, ptr %534, i64 %idxprom438
  %542 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %543 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx440 = getelementptr inbounds double, ptr %543, i64 1
  %544 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx441 = getelementptr inbounds double, ptr %544, i64 1
  %545 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call442 = call i32 @dgeqr2_(ptr noundef %i__1, ptr noundef %533, ptr noundef %arrayidx439, ptr noundef %542, ptr noundef %arrayidx440, ptr noundef %arrayidx441, ptr noundef %545)
  %546 = load i32, ptr %wantu, align 4, !tbaa !8
  %tobool443 = icmp ne i32 %546, 0
  br i1 %tobool443, label %if.then444, label %if.end470

if.then444:                                       ; preds = %if.then431
  %547 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %548 = load i32, ptr %547, align 4, !tbaa !8
  %549 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %550 = load i32, ptr %549, align 4, !tbaa !8
  %sub445 = sub nsw i32 %548, %550
  store i32 %sub445, ptr %i__1, align 4, !tbaa !8
  %551 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %552 = load i32, ptr %551, align 4, !tbaa !8
  %553 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %554 = load i32, ptr %553, align 4, !tbaa !8
  %sub446 = sub nsw i32 %552, %554
  store i32 %sub446, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x447) #3
  %555 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %555, ptr %_x447, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y448) #3
  %556 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %557 = load i32, ptr %556, align 4, !tbaa !8
  store i32 %557, ptr %_y448, align 4, !tbaa !8
  %558 = load i32, ptr %_x447, align 4, !tbaa !8
  %559 = load i32, ptr %_y448, align 4, !tbaa !8
  %cmp450 = icmp slt i32 %558, %559
  br i1 %cmp450, label %cond.true451, label %cond.false452

cond.true451:                                     ; preds = %if.then444
  %560 = load i32, ptr %_x447, align 4, !tbaa !8
  br label %cond.end453

cond.false452:                                    ; preds = %if.then444
  %561 = load i32, ptr %_y448, align 4, !tbaa !8
  br label %cond.end453

cond.end453:                                      ; preds = %cond.false452, %cond.true451
  %cond454 = phi i32 [ %560, %cond.true451 ], [ %561, %cond.false452 ]
  store i32 %cond454, ptr %tmp449, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y448) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x447) #3
  %562 = load i32, ptr %tmp449, align 4, !tbaa !8
  store i32 %562, ptr %i__2, align 4, !tbaa !8
  %563 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %564 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %565 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %566 = load i32, ptr %565, align 4, !tbaa !8
  %add455 = add nsw i32 %566, 1
  %567 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %568 = load i32, ptr %567, align 4, !tbaa !8
  %569 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %570 = load i32, ptr %569, align 4, !tbaa !8
  %sub456 = sub nsw i32 %568, %570
  %add457 = add nsw i32 %sub456, 1
  %571 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul458 = mul nsw i32 %add457, %571
  %add459 = add nsw i32 %add455, %mul458
  %idxprom460 = sext i32 %add459 to i64
  %arrayidx461 = getelementptr inbounds double, ptr %564, i64 %idxprom460
  %572 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %573 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx462 = getelementptr inbounds double, ptr %573, i64 1
  %574 = load ptr, ptr %u.addr, align 8, !tbaa !4
  %575 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %576 = load i32, ptr %575, align 4, !tbaa !8
  %add463 = add nsw i32 %576, 1
  %577 = load i32, ptr %u_dim1, align 4, !tbaa !8
  %mul464 = mul nsw i32 %add463, %577
  %add465 = add nsw i32 %mul464, 1
  %idxprom466 = sext i32 %add465 to i64
  %arrayidx467 = getelementptr inbounds double, ptr %574, i64 %idxprom466
  %578 = load ptr, ptr %ldu.addr, align 8, !tbaa !4
  %579 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx468 = getelementptr inbounds double, ptr %579, i64 1
  %580 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call469 = call i32 @dorm2r_(ptr noundef @.str.7, ptr noundef @.str.10, ptr noundef %563, ptr noundef %i__1, ptr noundef %i__2, ptr noundef %arrayidx461, ptr noundef %572, ptr noundef %arrayidx462, ptr noundef %arrayidx467, ptr noundef %578, ptr noundef %arrayidx468, ptr noundef %580)
  br label %if.end470

if.end470:                                        ; preds = %cond.end453, %if.then431
  %581 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %582 = load i32, ptr %581, align 4, !tbaa !8
  store i32 %582, ptr %i__1, align 4, !tbaa !8
  %583 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %584 = load i32, ptr %583, align 4, !tbaa !8
  %585 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %586 = load i32, ptr %585, align 4, !tbaa !8
  %sub471 = sub nsw i32 %584, %586
  %add472 = add nsw i32 %sub471, 1
  store i32 %add472, ptr %j, align 4, !tbaa !8
  br label %for.cond473

for.cond473:                                      ; preds = %for.inc490, %if.end470
  %587 = load i32, ptr %j, align 4, !tbaa !8
  %588 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp474 = icmp sle i32 %587, %588
  br i1 %cmp474, label %for.body475, label %for.end492

for.body475:                                      ; preds = %for.cond473
  %589 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %590 = load i32, ptr %589, align 4, !tbaa !8
  store i32 %590, ptr %i__2, align 4, !tbaa !8
  %591 = load i32, ptr %j, align 4, !tbaa !8
  %592 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %593 = load i32, ptr %592, align 4, !tbaa !8
  %sub476 = sub nsw i32 %591, %593
  %594 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %595 = load i32, ptr %594, align 4, !tbaa !8
  %add477 = add nsw i32 %sub476, %595
  %596 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %597 = load i32, ptr %596, align 4, !tbaa !8
  %add478 = add nsw i32 %add477, %597
  %add479 = add nsw i32 %add478, 1
  store i32 %add479, ptr %i__, align 4, !tbaa !8
  br label %for.cond480

for.cond480:                                      ; preds = %for.inc487, %for.body475
  %598 = load i32, ptr %i__, align 4, !tbaa !8
  %599 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp481 = icmp sle i32 %598, %599
  br i1 %cmp481, label %for.body482, label %for.end489

for.body482:                                      ; preds = %for.cond480
  %600 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %601 = load i32, ptr %i__, align 4, !tbaa !8
  %602 = load i32, ptr %j, align 4, !tbaa !8
  %603 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul483 = mul nsw i32 %602, %603
  %add484 = add nsw i32 %601, %mul483
  %idxprom485 = sext i32 %add484 to i64
  %arrayidx486 = getelementptr inbounds double, ptr %600, i64 %idxprom485
  store double 0.000000e+00, ptr %arrayidx486, align 8, !tbaa !12
  br label %for.inc487

for.inc487:                                       ; preds = %for.body482
  %604 = load i32, ptr %i__, align 4, !tbaa !8
  %inc488 = add nsw i32 %604, 1
  store i32 %inc488, ptr %i__, align 4, !tbaa !8
  br label %for.cond480, !llvm.loop !25

for.end489:                                       ; preds = %for.cond480
  br label %for.inc490

for.inc490:                                       ; preds = %for.end489
  %605 = load i32, ptr %j, align 4, !tbaa !8
  %inc491 = add nsw i32 %605, 1
  store i32 %inc491, ptr %j, align 4, !tbaa !8
  br label %for.cond473, !llvm.loop !26

for.end492:                                       ; preds = %for.cond473
  br label %if.end493

if.end493:                                        ; preds = %for.end492, %if.end429
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end493, %if.then88
  call void @llvm.lifetime.end.p0(i64 4, ptr %forwrd) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantv) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantu) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantq) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #3
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
  %606 = load i32, ptr %retval, align 4
  ret i32 %606
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @dgeqpf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dlapmt_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dorg2r_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dgerq2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dormr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dorm2r_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dgeqr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}

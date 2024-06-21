; ModuleID = 'samples/790.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/lapack/single/sorm2r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SORM2R\00", align 1
@c__1 = internal global i64 1, align 8

; Function Attrs: nounwind uwtable
define i32 @v3p_netlib_sorm2r_(ptr noundef %side, ptr noundef %trans, ptr noundef %m, ptr noundef %n, ptr noundef %k, ptr noundef %a, ptr noundef %lda, ptr noundef %tau, ptr noundef %c__, ptr noundef %ldc, ptr noundef %work, ptr noundef %info, i64 noundef %side_len, i64 noundef %trans_len) #0 {
entry:
  %retval = alloca i32, align 4
  %side.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %ldc.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %side_len.addr = alloca i64, align 8
  %trans_len.addr = alloca i64, align 8
  %a_dim1 = alloca i64, align 8
  %a_offset = alloca i64, align 8
  %c_dim1 = alloca i64, align 8
  %c_offset = alloca i64, align 8
  %i__1 = alloca i64, align 8
  %i__2 = alloca i64, align 8
  %i__ = alloca i64, align 8
  %i1 = alloca i64, align 8
  %i2 = alloca i64, align 8
  %i3 = alloca i64, align 8
  %ic = alloca i64, align 8
  %jc = alloca i64, align 8
  %mi = alloca i64, align 8
  %ni = alloca i64, align 8
  %nq = alloca i64, align 8
  %aii = alloca float, align 4
  %left = alloca i64, align 8
  %notran = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %side, ptr %side.addr, align 8, !tbaa !4
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %tau, ptr %tau.addr, align 8, !tbaa !4
  store ptr %c__, ptr %c__.addr, align 8, !tbaa !4
  store ptr %ldc, ptr %ldc.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  store i64 %side_len, ptr %side_len.addr, align 8, !tbaa !8
  store i64 %trans_len, ptr %trans_len.addr, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_dim1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_offset) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i3) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ic) #3
  store i64 0, ptr %ic, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %jc) #3
  store i64 0, ptr %jc, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %mi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ni) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %nq) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %aii) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %notran) #3
  %0 = load i64, ptr %side_len.addr, align 8, !tbaa !8
  %1 = load i64, ptr %trans_len.addr, align 8, !tbaa !8
  %2 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %3 = load i64, ptr %2, align 8, !tbaa !8
  store i64 %3, ptr %a_dim1, align 8, !tbaa !8
  %4 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %add = add nsw i64 1, %4
  store i64 %add, ptr %a_offset, align 8, !tbaa !8
  %5 = load i64, ptr %a_offset, align 8, !tbaa !8
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.neg = sub i64 0, %5
  %add.ptr = getelementptr inbounds float, ptr %6, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %7, i32 -1
  store ptr %incdec.ptr, ptr %tau.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %9 = load i64, ptr %8, align 8, !tbaa !8
  store i64 %9, ptr %c_dim1, align 8, !tbaa !8
  %10 = load i64, ptr %c_dim1, align 8, !tbaa !8
  %add1 = add nsw i64 1, %10
  store i64 %add1, ptr %c_offset, align 8, !tbaa !8
  %11 = load i64, ptr %c_offset, align 8, !tbaa !8
  %12 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %idx.neg2 = sub i64 0, %11
  %add.ptr3 = getelementptr inbounds float, ptr %12, i64 %idx.neg2
  store ptr %add.ptr3, ptr %c__.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr4 = getelementptr inbounds float, ptr %13, i32 -1
  store ptr %incdec.ptr4, ptr %work.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 0, ptr %14, align 8, !tbaa !8
  %15 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call = call i64 @v3p_netlib_lsame_(ptr noundef %15, ptr noundef @.str, i64 noundef 1, i64 noundef 1)
  store i64 %call, ptr %left, align 8, !tbaa !8
  %16 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call5 = call i64 @v3p_netlib_lsame_(ptr noundef %16, ptr noundef @.str.1, i64 noundef 1, i64 noundef 1)
  store i64 %call5, ptr %notran, align 8, !tbaa !8
  %17 = load i64, ptr %left, align 8, !tbaa !8
  %tobool = icmp ne i64 %17, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %19 = load i64, ptr %18, align 8, !tbaa !8
  store i64 %19, ptr %nq, align 8, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %21 = load i64, ptr %20, align 8, !tbaa !8
  store i64 %21, ptr %nq, align 8, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load i64, ptr %left, align 8, !tbaa !8
  %tobool6 = icmp ne i64 %22, 0
  br i1 %tobool6, label %if.else10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %23 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call7 = call i64 @v3p_netlib_lsame_(ptr noundef %23, ptr noundef @.str.2, i64 noundef 1, i64 noundef 1)
  %tobool8 = icmp ne i64 %call7, 0
  br i1 %tobool8, label %if.else10, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  %24 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 -1, ptr %24, align 8, !tbaa !8
  br label %if.end43

if.else10:                                        ; preds = %land.lhs.true, %if.end
  %25 = load i64, ptr %notran, align 8, !tbaa !8
  %tobool11 = icmp ne i64 %25, 0
  br i1 %tobool11, label %if.else16, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %if.else10
  %26 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call13 = call i64 @v3p_netlib_lsame_(ptr noundef %26, ptr noundef @.str.3, i64 noundef 1, i64 noundef 1)
  %tobool14 = icmp ne i64 %call13, 0
  br i1 %tobool14, label %if.else16, label %if.then15

if.then15:                                        ; preds = %land.lhs.true12
  %27 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 -2, ptr %27, align 8, !tbaa !8
  br label %if.end42

if.else16:                                        ; preds = %land.lhs.true12, %if.else10
  %28 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %29 = load i64, ptr %28, align 8, !tbaa !8
  %cmp = icmp slt i64 %29, 0
  br i1 %cmp, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else16
  %30 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 -3, ptr %30, align 8, !tbaa !8
  br label %if.end41

if.else18:                                        ; preds = %if.else16
  %31 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %32 = load i64, ptr %31, align 8, !tbaa !8
  %cmp19 = icmp slt i64 %32, 0
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else18
  %33 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 -4, ptr %33, align 8, !tbaa !8
  br label %if.end40

if.else21:                                        ; preds = %if.else18
  %34 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %35 = load i64, ptr %34, align 8, !tbaa !8
  %cmp22 = icmp slt i64 %35, 0
  br i1 %cmp22, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else21
  %36 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %37 = load i64, ptr %36, align 8, !tbaa !8
  %38 = load i64, ptr %nq, align 8, !tbaa !8
  %cmp23 = icmp sgt i64 %37, %38
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %lor.lhs.false, %if.else21
  %39 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 -5, ptr %39, align 8, !tbaa !8
  br label %if.end39

if.else25:                                        ; preds = %lor.lhs.false
  %40 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %41 = load i64, ptr %40, align 8, !tbaa !8
  %42 = load i64, ptr %nq, align 8, !tbaa !8
  %cmp26 = icmp sge i64 1, %42
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else25
  br label %cond.end

cond.false:                                       ; preds = %if.else25
  %43 = load i64, ptr %nq, align 8, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %43, %cond.false ]
  %cmp27 = icmp slt i64 %41, %cond
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %cond.end
  %44 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 -7, ptr %44, align 8, !tbaa !8
  br label %if.end38

if.else29:                                        ; preds = %cond.end
  %45 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %46 = load i64, ptr %45, align 8, !tbaa !8
  %47 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %48 = load i64, ptr %47, align 8, !tbaa !8
  %cmp30 = icmp sge i64 1, %48
  br i1 %cmp30, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %if.else29
  br label %cond.end33

cond.false32:                                     ; preds = %if.else29
  %49 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %50 = load i64, ptr %49, align 8, !tbaa !8
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.true31
  %cond34 = phi i64 [ 1, %cond.true31 ], [ %50, %cond.false32 ]
  %cmp35 = icmp slt i64 %46, %cond34
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %cond.end33
  %51 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 -10, ptr %51, align 8, !tbaa !8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %cond.end33
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then28
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then24
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then20
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then17
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then15
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then9
  %52 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %53 = load i64, ptr %52, align 8, !tbaa !8
  %cmp44 = icmp ne i64 %53, 0
  br i1 %cmp44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end43
  %54 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %55 = load i64, ptr %54, align 8, !tbaa !8
  %sub = sub nsw i64 0, %55
  store i64 %sub, ptr %i__1, align 8, !tbaa !8
  %call46 = call i32 @v3p_netlib_xerbla_(ptr noundef @.str.4, ptr noundef %i__1, i64 noundef 6)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %56 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %57 = load i64, ptr %56, align 8, !tbaa !8
  %cmp48 = icmp eq i64 %57, 0
  br i1 %cmp48, label %if.then53, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.end47
  %58 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %59 = load i64, ptr %58, align 8, !tbaa !8
  %cmp50 = icmp eq i64 %59, 0
  br i1 %cmp50, label %if.then53, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false49
  %60 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %61 = load i64, ptr %60, align 8, !tbaa !8
  %cmp52 = icmp eq i64 %61, 0
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false51, %lor.lhs.false49, %if.end47
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end54:                                         ; preds = %lor.lhs.false51
  %62 = load i64, ptr %left, align 8, !tbaa !8
  %tobool55 = icmp ne i64 %62, 0
  br i1 %tobool55, label %land.lhs.true56, label %lor.lhs.false58

land.lhs.true56:                                  ; preds = %if.end54
  %63 = load i64, ptr %notran, align 8, !tbaa !8
  %tobool57 = icmp ne i64 %63, 0
  br i1 %tobool57, label %lor.lhs.false58, label %if.then62

lor.lhs.false58:                                  ; preds = %land.lhs.true56, %if.end54
  %64 = load i64, ptr %left, align 8, !tbaa !8
  %tobool59 = icmp ne i64 %64, 0
  br i1 %tobool59, label %if.else63, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %lor.lhs.false58
  %65 = load i64, ptr %notran, align 8, !tbaa !8
  %tobool61 = icmp ne i64 %65, 0
  br i1 %tobool61, label %if.then62, label %if.else63

if.then62:                                        ; preds = %land.lhs.true60, %land.lhs.true56
  store i64 1, ptr %i1, align 8, !tbaa !8
  %66 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %67 = load i64, ptr %66, align 8, !tbaa !8
  store i64 %67, ptr %i2, align 8, !tbaa !8
  store i64 1, ptr %i3, align 8, !tbaa !8
  br label %if.end64

if.else63:                                        ; preds = %land.lhs.true60, %lor.lhs.false58
  %68 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %69 = load i64, ptr %68, align 8, !tbaa !8
  store i64 %69, ptr %i1, align 8, !tbaa !8
  store i64 1, ptr %i2, align 8, !tbaa !8
  store i64 -1, ptr %i3, align 8, !tbaa !8
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %if.then62
  %70 = load i64, ptr %left, align 8, !tbaa !8
  %tobool65 = icmp ne i64 %70, 0
  br i1 %tobool65, label %if.then66, label %if.else67

if.then66:                                        ; preds = %if.end64
  %71 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %72 = load i64, ptr %71, align 8, !tbaa !8
  store i64 %72, ptr %ni, align 8, !tbaa !8
  store i64 1, ptr %jc, align 8, !tbaa !8
  br label %if.end68

if.else67:                                        ; preds = %if.end64
  %73 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %74 = load i64, ptr %73, align 8, !tbaa !8
  store i64 %74, ptr %mi, align 8, !tbaa !8
  store i64 1, ptr %ic, align 8, !tbaa !8
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then66
  %75 = load i64, ptr %i2, align 8, !tbaa !8
  store i64 %75, ptr %i__1, align 8, !tbaa !8
  %76 = load i64, ptr %i3, align 8, !tbaa !8
  store i64 %76, ptr %i__2, align 8, !tbaa !8
  %77 = load i64, ptr %i1, align 8, !tbaa !8
  store i64 %77, ptr %i__, align 8, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end68
  %78 = load i64, ptr %i__2, align 8, !tbaa !8
  %cmp69 = icmp slt i64 %78, 0
  br i1 %cmp69, label %cond.true70, label %cond.false72

cond.true70:                                      ; preds = %for.cond
  %79 = load i64, ptr %i__, align 8, !tbaa !8
  %80 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp71 = icmp sge i64 %79, %80
  %conv = zext i1 %cmp71 to i32
  br label %cond.end75

cond.false72:                                     ; preds = %for.cond
  %81 = load i64, ptr %i__, align 8, !tbaa !8
  %82 = load i64, ptr %i__1, align 8, !tbaa !8
  %cmp73 = icmp sle i64 %81, %82
  %conv74 = zext i1 %cmp73 to i32
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false72, %cond.true70
  %cond76 = phi i32 [ %conv, %cond.true70 ], [ %conv74, %cond.false72 ]
  %tobool77 = icmp ne i32 %cond76, 0
  br i1 %tobool77, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end75
  %83 = load i64, ptr %left, align 8, !tbaa !8
  %tobool78 = icmp ne i64 %83, 0
  br i1 %tobool78, label %if.then79, label %if.else82

if.then79:                                        ; preds = %for.body
  %84 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %85 = load i64, ptr %84, align 8, !tbaa !8
  %86 = load i64, ptr %i__, align 8, !tbaa !8
  %sub80 = sub nsw i64 %85, %86
  %add81 = add nsw i64 %sub80, 1
  store i64 %add81, ptr %mi, align 8, !tbaa !8
  %87 = load i64, ptr %i__, align 8, !tbaa !8
  store i64 %87, ptr %ic, align 8, !tbaa !8
  br label %if.end85

if.else82:                                        ; preds = %for.body
  %88 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %89 = load i64, ptr %88, align 8, !tbaa !8
  %90 = load i64, ptr %i__, align 8, !tbaa !8
  %sub83 = sub nsw i64 %89, %90
  %add84 = add nsw i64 %sub83, 1
  store i64 %add84, ptr %ni, align 8, !tbaa !8
  %91 = load i64, ptr %i__, align 8, !tbaa !8
  store i64 %91, ptr %jc, align 8, !tbaa !8
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then79
  %92 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %93 = load i64, ptr %i__, align 8, !tbaa !8
  %94 = load i64, ptr %i__, align 8, !tbaa !8
  %95 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul = mul nsw i64 %94, %95
  %add86 = add nsw i64 %93, %mul
  %arrayidx = getelementptr inbounds float, ptr %92, i64 %add86
  %96 = load float, ptr %arrayidx, align 4, !tbaa !10
  store float %96, ptr %aii, align 4, !tbaa !10
  %97 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %98 = load i64, ptr %i__, align 8, !tbaa !8
  %99 = load i64, ptr %i__, align 8, !tbaa !8
  %100 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul87 = mul nsw i64 %99, %100
  %add88 = add nsw i64 %98, %mul87
  %arrayidx89 = getelementptr inbounds float, ptr %97, i64 %add88
  store float 1.000000e+00, ptr %arrayidx89, align 4, !tbaa !10
  %101 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %102 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %103 = load i64, ptr %i__, align 8, !tbaa !8
  %104 = load i64, ptr %i__, align 8, !tbaa !8
  %105 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul90 = mul nsw i64 %104, %105
  %add91 = add nsw i64 %103, %mul90
  %arrayidx92 = getelementptr inbounds float, ptr %102, i64 %add91
  %106 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %107 = load i64, ptr %i__, align 8, !tbaa !8
  %arrayidx93 = getelementptr inbounds float, ptr %106, i64 %107
  %108 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %109 = load i64, ptr %ic, align 8, !tbaa !8
  %110 = load i64, ptr %jc, align 8, !tbaa !8
  %111 = load i64, ptr %c_dim1, align 8, !tbaa !8
  %mul94 = mul nsw i64 %110, %111
  %add95 = add nsw i64 %109, %mul94
  %arrayidx96 = getelementptr inbounds float, ptr %108, i64 %add95
  %112 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %113 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx97 = getelementptr inbounds float, ptr %113, i64 1
  %call98 = call i32 @v3p_netlib_slarf_(ptr noundef %101, ptr noundef %mi, ptr noundef %ni, ptr noundef %arrayidx92, ptr noundef @c__1, ptr noundef %arrayidx93, ptr noundef %arrayidx96, ptr noundef %112, ptr noundef %arrayidx97, i64 noundef 1)
  %114 = load float, ptr %aii, align 4, !tbaa !10
  %115 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %116 = load i64, ptr %i__, align 8, !tbaa !8
  %117 = load i64, ptr %i__, align 8, !tbaa !8
  %118 = load i64, ptr %a_dim1, align 8, !tbaa !8
  %mul99 = mul nsw i64 %117, %118
  %add100 = add nsw i64 %116, %mul99
  %arrayidx101 = getelementptr inbounds float, ptr %115, i64 %add100
  store float %114, ptr %arrayidx101, align 4, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %if.end85
  %119 = load i64, ptr %i__2, align 8, !tbaa !8
  %120 = load i64, ptr %i__, align 8, !tbaa !8
  %add102 = add nsw i64 %120, %119
  store i64 %add102, ptr %i__, align 8, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %cond.end75
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then53, %if.then45
  call void @llvm.lifetime.end.p0(i64 8, ptr %notran) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %aii) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %nq) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ni) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %mi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %jc) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ic) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i3) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_offset) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_dim1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_dim1) #3
  %121 = load i32, ptr %retval, align 4
  ret i32 %121
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @v3p_netlib_lsame_(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

declare i32 @v3p_netlib_xerbla_(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @v3p_netlib_slarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
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
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}

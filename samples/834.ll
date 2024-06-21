; ModuleID = 'samples/834.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/cunm22.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"CUNM22\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Non-Unit\00", align 1
@c_b1 = internal global %struct.complex { float 1.000000e+00, float 0.000000e+00 }, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"No Transpose\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"Conjugate\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Right\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cunm22_(ptr noundef %side, ptr noundef %trans, ptr noundef %m, ptr noundef %n, ptr noundef %n1, ptr noundef %n2, ptr noundef %q, ptr noundef %ldq, ptr noundef %c__, ptr noundef %ldc, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %side.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %n1.addr = alloca ptr, align 8
  %n2.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %ldq.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %ldc.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %q_dim1 = alloca i32, align 4
  %q_offset = alloca i32, align 4
  %c_dim1 = alloca i32, align 4
  %c_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %q__1 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %nb = alloca i32, align 4
  %nq = alloca i32, align 4
  %nw = alloca i32, align 4
  %len = alloca i32, align 4
  %left = alloca i32, align 4
  %notran = alloca i32, align 4
  %ldwork = alloca i32, align 4
  %lwkopt = alloca i32, align 4
  %lquery = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x50 = alloca i32, align 4
  %_y51 = alloca i32, align 4
  %tmp52 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x133 = alloca i32, align 4
  %_y134 = alloca i32, align 4
  %tmp135 = alloca i32, align 4
  %_x142 = alloca i32, align 4
  %_y143 = alloca i32, align 4
  %tmp144 = alloca i32, align 4
  %_x168 = alloca i32, align 4
  %_y169 = alloca i32, align 4
  %tmp170 = alloca i32, align 4
  %_x253 = alloca i32, align 4
  %_y254 = alloca i32, align 4
  %tmp255 = alloca i32, align 4
  %_x343 = alloca i32, align 4
  %_y344 = alloca i32, align 4
  %tmp345 = alloca i32, align 4
  %_x430 = alloca i32, align 4
  %_y431 = alloca i32, align 4
  %tmp432 = alloca i32, align 4
  store ptr %side, ptr %side.addr, align 8, !tbaa !4
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %n1, ptr %n1.addr, align 8, !tbaa !4
  store ptr %n2, ptr %n2.addr, align 8, !tbaa !4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %ldq, ptr %ldq.addr, align 8, !tbaa !4
  store ptr %c__, ptr %c__.addr, align 8, !tbaa !4
  store ptr %ldc, ptr %ldc.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %q_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nq) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nw) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %notran) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ldwork) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lwkopt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lquery) #3
  %0 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %q_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %q_offset, align 4, !tbaa !8
  %3 = load i32, ptr %q_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %q.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %c_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %c_offset, align 4, !tbaa !8
  %8 = load i32, ptr %c_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %c__.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %work.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %11, align 4, !tbaa !8
  %12 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %12, ptr noundef @.str)
  store i32 %call, ptr %left, align 4, !tbaa !8
  %13 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call5 = call i32 @lsame_(ptr noundef %13, ptr noundef @.str.1)
  store i32 %call5, ptr %notran, align 4, !tbaa !8
  %14 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  %cmp = icmp eq i32 %15, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4, !tbaa !8
  %16 = load i32, ptr %left, align 4, !tbaa !8
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %17 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  store i32 %18, ptr %nq, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  store i32 %20, ptr %nq, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load i32, ptr %nq, align 4, !tbaa !8
  store i32 %21, ptr %nw, align 4, !tbaa !8
  %22 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %cmp6 = icmp eq i32 %23, 0
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %24 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %cmp8 = icmp eq i32 %25, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  store i32 1, ptr %nw, align 4, !tbaa !8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %26 = load i32, ptr %left, align 4, !tbaa !8
  %tobool12 = icmp ne i32 %26, 0
  br i1 %tobool12, label %if.else16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  %27 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call13 = call i32 @lsame_(ptr noundef %27, ptr noundef @.str.2)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else16, label %if.then15

if.then15:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %28, align 4, !tbaa !8
  br label %if.end76

if.else16:                                        ; preds = %land.lhs.true, %if.end11
  %29 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call17 = call i32 @lsame_(ptr noundef %29, ptr noundef @.str.1)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else23, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.else16
  %30 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call20 = call i32 @lsame_(ptr noundef %30, ptr noundef @.str.3)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.else23, label %if.then22

if.then22:                                        ; preds = %land.lhs.true19
  %31 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %31, align 4, !tbaa !8
  br label %if.end75

if.else23:                                        ; preds = %land.lhs.true19, %if.else16
  %32 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %33 = load i32, ptr %32, align 4, !tbaa !8
  %cmp24 = icmp slt i32 %33, 0
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else23
  %34 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %34, align 4, !tbaa !8
  br label %if.end74

if.else27:                                        ; preds = %if.else23
  %35 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %cmp28 = icmp slt i32 %36, 0
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else27
  %37 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %37, align 4, !tbaa !8
  br label %if.end73

if.else31:                                        ; preds = %if.else27
  %38 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %39 = load i32, ptr %38, align 4, !tbaa !8
  %cmp32 = icmp slt i32 %39, 0
  br i1 %cmp32, label %if.then38, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.else31
  %40 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %42 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %43 = load i32, ptr %42, align 4, !tbaa !8
  %add35 = add nsw i32 %41, %43
  %44 = load i32, ptr %nq, align 4, !tbaa !8
  %cmp36 = icmp ne i32 %add35, %44
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %lor.lhs.false34, %if.else31
  %45 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %45, align 4, !tbaa !8
  br label %if.end72

if.else39:                                        ; preds = %lor.lhs.false34
  %46 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %47 = load i32, ptr %46, align 4, !tbaa !8
  %cmp40 = icmp slt i32 %47, 0
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else39
  %48 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -6, ptr %48, align 4, !tbaa !8
  br label %if.end71

if.else43:                                        ; preds = %if.else39
  %49 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %50 = load i32, ptr %49, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %51 = load i32, ptr %nq, align 4, !tbaa !8
  store i32 %51, ptr %_y, align 4, !tbaa !8
  %52 = load i32, ptr %_x, align 4, !tbaa !8
  %53 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp44 = icmp sgt i32 %52, %53
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else43
  %54 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else43
  %55 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %54, %cond.true ], [ %55, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %56 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp46 = icmp slt i32 %50, %56
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %cond.end
  %57 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -8, ptr %57, align 4, !tbaa !8
  br label %if.end70

if.else49:                                        ; preds = %cond.end
  %58 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %59 = load i32, ptr %58, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x50) #3
  store i32 1, ptr %_x50, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y51) #3
  %60 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %61 = load i32, ptr %60, align 4, !tbaa !8
  store i32 %61, ptr %_y51, align 4, !tbaa !8
  %62 = load i32, ptr %_x50, align 4, !tbaa !8
  %63 = load i32, ptr %_y51, align 4, !tbaa !8
  %cmp53 = icmp sgt i32 %62, %63
  br i1 %cmp53, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %if.else49
  %64 = load i32, ptr %_x50, align 4, !tbaa !8
  br label %cond.end57

cond.false56:                                     ; preds = %if.else49
  %65 = load i32, ptr %_y51, align 4, !tbaa !8
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %cond.true55
  %cond58 = phi i32 [ %64, %cond.true55 ], [ %65, %cond.false56 ]
  store i32 %cond58, ptr %tmp52, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y51) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x50) #3
  %66 = load i32, ptr %tmp52, align 4, !tbaa !8
  %cmp59 = icmp slt i32 %59, %66
  br i1 %cmp59, label %if.then61, label %if.else62

if.then61:                                        ; preds = %cond.end57
  %67 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -10, ptr %67, align 4, !tbaa !8
  br label %if.end69

if.else62:                                        ; preds = %cond.end57
  %68 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %69 = load i32, ptr %68, align 4, !tbaa !8
  %70 = load i32, ptr %nw, align 4, !tbaa !8
  %cmp63 = icmp slt i32 %69, %70
  br i1 %cmp63, label %land.lhs.true65, label %if.end68

land.lhs.true65:                                  ; preds = %if.else62
  %71 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool66 = icmp ne i32 %71, 0
  br i1 %tobool66, label %if.end68, label %if.then67

if.then67:                                        ; preds = %land.lhs.true65
  %72 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -12, ptr %72, align 4, !tbaa !8
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %land.lhs.true65, %if.else62
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then61
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then48
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then42
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then38
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then30
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then26
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then22
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then15
  %73 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %74 = load i32, ptr %73, align 4, !tbaa !8
  %cmp77 = icmp eq i32 %74, 0
  br i1 %cmp77, label %if.then79, label %if.end86

if.then79:                                        ; preds = %if.end76
  %75 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %76 = load i32, ptr %75, align 4, !tbaa !8
  %77 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %78 = load i32, ptr %77, align 4, !tbaa !8
  %mul = mul nsw i32 %76, %78
  store i32 %mul, ptr %lwkopt, align 4, !tbaa !8
  %79 = load i32, ptr %lwkopt, align 4, !tbaa !8
  %conv80 = sitofp i32 %79 to float
  %r = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %conv80, ptr %r, align 4, !tbaa !10
  %i = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float 0.000000e+00, ptr %i, align 4, !tbaa !13
  %r81 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %80 = load float, ptr %r81, align 4, !tbaa !10
  %81 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.complex, ptr %81, i64 1
  %r82 = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  store float %80, ptr %r82, align 4, !tbaa !10
  %i83 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %82 = load float, ptr %i83, align 4, !tbaa !13
  %83 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds %struct.complex, ptr %83, i64 1
  %i85 = getelementptr inbounds %struct.complex, ptr %arrayidx84, i32 0, i32 1
  store float %82, ptr %i85, align 4, !tbaa !13
  br label %if.end86

if.end86:                                         ; preds = %if.then79, %if.end76
  %84 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %85 = load i32, ptr %84, align 4, !tbaa !8
  %cmp87 = icmp ne i32 %85, 0
  br i1 %cmp87, label %if.then89, label %if.else91

if.then89:                                        ; preds = %if.end86
  %86 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %87 = load i32, ptr %86, align 4, !tbaa !8
  %sub = sub nsw i32 0, %87
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call90 = call i32 @xerbla_(ptr noundef @.str.4, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else91:                                        ; preds = %if.end86
  %88 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool92 = icmp ne i32 %88, 0
  br i1 %tobool92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.else91
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end94:                                         ; preds = %if.else91
  br label %if.end95

if.end95:                                         ; preds = %if.end94
  %89 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %90 = load i32, ptr %89, align 4, !tbaa !8
  %cmp96 = icmp eq i32 %90, 0
  br i1 %cmp96, label %if.then101, label %lor.lhs.false98

lor.lhs.false98:                                  ; preds = %if.end95
  %91 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %92 = load i32, ptr %91, align 4, !tbaa !8
  %cmp99 = icmp eq i32 %92, 0
  br i1 %cmp99, label %if.then101, label %if.end106

if.then101:                                       ; preds = %lor.lhs.false98, %if.end95
  %93 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx102 = getelementptr inbounds %struct.complex, ptr %93, i64 1
  %r103 = getelementptr inbounds %struct.complex, ptr %arrayidx102, i32 0, i32 0
  store float 1.000000e+00, ptr %r103, align 4, !tbaa !10
  %94 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx104 = getelementptr inbounds %struct.complex, ptr %94, i64 1
  %i105 = getelementptr inbounds %struct.complex, ptr %arrayidx104, i32 0, i32 1
  store float 0.000000e+00, ptr %i105, align 4, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end106:                                        ; preds = %lor.lhs.false98
  %95 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %96 = load i32, ptr %95, align 4, !tbaa !8
  %cmp107 = icmp eq i32 %96, 0
  br i1 %cmp107, label %if.then109, label %if.else118

if.then109:                                       ; preds = %if.end106
  %97 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %98 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %99 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %100 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %101 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %102 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom = sext i32 %102 to i64
  %arrayidx110 = getelementptr inbounds %struct.complex, ptr %101, i64 %idxprom
  %103 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %104 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %105 = load i32, ptr %c_offset, align 4, !tbaa !8
  %idxprom111 = sext i32 %105 to i64
  %arrayidx112 = getelementptr inbounds %struct.complex, ptr %104, i64 %idxprom111
  %106 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call113 = call i32 @ctrmm_(ptr noundef %97, ptr noundef @.str.5, ptr noundef %98, ptr noundef @.str.6, ptr noundef %99, ptr noundef %100, ptr noundef @c_b1, ptr noundef %arrayidx110, ptr noundef %103, ptr noundef %arrayidx112, ptr noundef %106)
  %107 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx114 = getelementptr inbounds %struct.complex, ptr %107, i64 1
  %r115 = getelementptr inbounds %struct.complex, ptr %arrayidx114, i32 0, i32 0
  store float 1.000000e+00, ptr %r115, align 4, !tbaa !10
  %108 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx116 = getelementptr inbounds %struct.complex, ptr %108, i64 1
  %i117 = getelementptr inbounds %struct.complex, ptr %arrayidx116, i32 0, i32 1
  store float 0.000000e+00, ptr %i117, align 4, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else118:                                       ; preds = %if.end106
  %109 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %110 = load i32, ptr %109, align 4, !tbaa !8
  %cmp119 = icmp eq i32 %110, 0
  br i1 %cmp119, label %if.then121, label %if.end131

if.then121:                                       ; preds = %if.else118
  %111 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %112 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %113 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %114 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %115 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %116 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom122 = sext i32 %116 to i64
  %arrayidx123 = getelementptr inbounds %struct.complex, ptr %115, i64 %idxprom122
  %117 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %118 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %119 = load i32, ptr %c_offset, align 4, !tbaa !8
  %idxprom124 = sext i32 %119 to i64
  %arrayidx125 = getelementptr inbounds %struct.complex, ptr %118, i64 %idxprom124
  %120 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call126 = call i32 @ctrmm_(ptr noundef %111, ptr noundef @.str.7, ptr noundef %112, ptr noundef @.str.6, ptr noundef %113, ptr noundef %114, ptr noundef @c_b1, ptr noundef %arrayidx123, ptr noundef %117, ptr noundef %arrayidx125, ptr noundef %120)
  %121 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx127 = getelementptr inbounds %struct.complex, ptr %121, i64 1
  %r128 = getelementptr inbounds %struct.complex, ptr %arrayidx127, i32 0, i32 0
  store float 1.000000e+00, ptr %r128, align 4, !tbaa !10
  %122 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx129 = getelementptr inbounds %struct.complex, ptr %122, i64 1
  %i130 = getelementptr inbounds %struct.complex, ptr %arrayidx129, i32 0, i32 1
  store float 0.000000e+00, ptr %i130, align 4, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end131:                                        ; preds = %if.else118
  br label %if.end132

if.end132:                                        ; preds = %if.end131
  store i32 1, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x133) #3
  %123 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %124 = load i32, ptr %123, align 4, !tbaa !8
  store i32 %124, ptr %_x133, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y134) #3
  %125 = load i32, ptr %lwkopt, align 4, !tbaa !8
  store i32 %125, ptr %_y134, align 4, !tbaa !8
  %126 = load i32, ptr %_x133, align 4, !tbaa !8
  %127 = load i32, ptr %_y134, align 4, !tbaa !8
  %cmp136 = icmp slt i32 %126, %127
  br i1 %cmp136, label %cond.true138, label %cond.false139

cond.true138:                                     ; preds = %if.end132
  %128 = load i32, ptr %_x133, align 4, !tbaa !8
  br label %cond.end140

cond.false139:                                    ; preds = %if.end132
  %129 = load i32, ptr %_y134, align 4, !tbaa !8
  br label %cond.end140

cond.end140:                                      ; preds = %cond.false139, %cond.true138
  %cond141 = phi i32 [ %128, %cond.true138 ], [ %129, %cond.false139 ]
  store i32 %cond141, ptr %tmp135, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y134) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x133) #3
  %130 = load i32, ptr %tmp135, align 4, !tbaa !8
  %131 = load i32, ptr %nq, align 4, !tbaa !8
  %div = sdiv i32 %130, %131
  store i32 %div, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x142) #3
  %132 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %132, ptr %_x142, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y143) #3
  %133 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %133, ptr %_y143, align 4, !tbaa !8
  %134 = load i32, ptr %_x142, align 4, !tbaa !8
  %135 = load i32, ptr %_y143, align 4, !tbaa !8
  %cmp145 = icmp sgt i32 %134, %135
  br i1 %cmp145, label %cond.true147, label %cond.false148

cond.true147:                                     ; preds = %cond.end140
  %136 = load i32, ptr %_x142, align 4, !tbaa !8
  br label %cond.end149

cond.false148:                                    ; preds = %cond.end140
  %137 = load i32, ptr %_y143, align 4, !tbaa !8
  br label %cond.end149

cond.end149:                                      ; preds = %cond.false148, %cond.true147
  %cond150 = phi i32 [ %136, %cond.true147 ], [ %137, %cond.false148 ]
  store i32 %cond150, ptr %tmp144, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y143) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x142) #3
  %138 = load i32, ptr %tmp144, align 4, !tbaa !8
  store i32 %138, ptr %nb, align 4, !tbaa !8
  %139 = load i32, ptr %left, align 4, !tbaa !8
  %tobool151 = icmp ne i32 %139, 0
  br i1 %tobool151, label %if.then152, label %if.else325

if.then152:                                       ; preds = %cond.end149
  %140 = load i32, ptr %notran, align 4, !tbaa !8
  %tobool153 = icmp ne i32 %140, 0
  br i1 %tobool153, label %if.then154, label %if.else237

if.then154:                                       ; preds = %if.then152
  %141 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %142 = load i32, ptr %141, align 4, !tbaa !8
  store i32 %142, ptr %i__1, align 4, !tbaa !8
  %143 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %143, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then154
  %144 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp155 = icmp slt i32 %144, 0
  br i1 %cmp155, label %cond.true157, label %cond.false160

cond.true157:                                     ; preds = %for.cond
  %145 = load i32, ptr %i__, align 4, !tbaa !8
  %146 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp158 = icmp sge i32 %145, %146
  %conv159 = zext i1 %cmp158 to i32
  br label %cond.end163

cond.false160:                                    ; preds = %for.cond
  %147 = load i32, ptr %i__, align 4, !tbaa !8
  %148 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp161 = icmp sle i32 %147, %148
  %conv162 = zext i1 %cmp161 to i32
  br label %cond.end163

cond.end163:                                      ; preds = %cond.false160, %cond.true157
  %cond164 = phi i32 [ %conv159, %cond.true157 ], [ %conv162, %cond.false160 ]
  %tobool165 = icmp ne i32 %cond164, 0
  br i1 %tobool165, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end163
  %149 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %149, ptr %i__3, align 4, !tbaa !8
  %150 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %151 = load i32, ptr %150, align 4, !tbaa !8
  %152 = load i32, ptr %i__, align 4, !tbaa !8
  %sub166 = sub nsw i32 %151, %152
  %add167 = add nsw i32 %sub166, 1
  store i32 %add167, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x168) #3
  %153 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %153, ptr %_x168, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y169) #3
  %154 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %154, ptr %_y169, align 4, !tbaa !8
  %155 = load i32, ptr %_x168, align 4, !tbaa !8
  %156 = load i32, ptr %_y169, align 4, !tbaa !8
  %cmp171 = icmp slt i32 %155, %156
  br i1 %cmp171, label %cond.true173, label %cond.false174

cond.true173:                                     ; preds = %for.body
  %157 = load i32, ptr %_x168, align 4, !tbaa !8
  br label %cond.end175

cond.false174:                                    ; preds = %for.body
  %158 = load i32, ptr %_y169, align 4, !tbaa !8
  br label %cond.end175

cond.end175:                                      ; preds = %cond.false174, %cond.true173
  %cond176 = phi i32 [ %157, %cond.true173 ], [ %158, %cond.false174 ]
  store i32 %cond176, ptr %tmp170, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y169) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x168) #3
  %159 = load i32, ptr %tmp170, align 4, !tbaa !8
  store i32 %159, ptr %len, align 4, !tbaa !8
  %160 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %161 = load i32, ptr %160, align 4, !tbaa !8
  store i32 %161, ptr %ldwork, align 4, !tbaa !8
  %162 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %163 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %164 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %165 = load i32, ptr %164, align 4, !tbaa !8
  %add177 = add nsw i32 %165, 1
  %166 = load i32, ptr %i__, align 4, !tbaa !8
  %167 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul178 = mul nsw i32 %166, %167
  %add179 = add nsw i32 %add177, %mul178
  %idxprom180 = sext i32 %add179 to i64
  %arrayidx181 = getelementptr inbounds %struct.complex, ptr %163, i64 %idxprom180
  %168 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %169 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx182 = getelementptr inbounds %struct.complex, ptr %169, i64 1
  %call183 = call i32 @clacpy_(ptr noundef @.str.8, ptr noundef %162, ptr noundef %len, ptr noundef %arrayidx181, ptr noundef %168, ptr noundef %arrayidx182, ptr noundef %ldwork)
  %170 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %171 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %172 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %173 = load i32, ptr %172, align 4, !tbaa !8
  %add184 = add nsw i32 %173, 1
  %174 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul185 = mul nsw i32 %add184, %174
  %add186 = add nsw i32 %mul185, 1
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds %struct.complex, ptr %171, i64 %idxprom187
  %175 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %176 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx189 = getelementptr inbounds %struct.complex, ptr %176, i64 1
  %call190 = call i32 @ctrmm_(ptr noundef @.str.9, ptr noundef @.str.7, ptr noundef @.str.10, ptr noundef @.str.6, ptr noundef %170, ptr noundef %len, ptr noundef @c_b1, ptr noundef %arrayidx188, ptr noundef %175, ptr noundef %arrayidx189, ptr noundef %ldwork)
  %177 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %178 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %179 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %180 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom191 = sext i32 %180 to i64
  %arrayidx192 = getelementptr inbounds %struct.complex, ptr %179, i64 %idxprom191
  %181 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %182 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %183 = load i32, ptr %i__, align 4, !tbaa !8
  %184 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul193 = mul nsw i32 %183, %184
  %add194 = add nsw i32 %mul193, 1
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds %struct.complex, ptr %182, i64 %idxprom195
  %185 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %186 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx197 = getelementptr inbounds %struct.complex, ptr %186, i64 1
  %call198 = call i32 @cgemm_(ptr noundef @.str.10, ptr noundef @.str.10, ptr noundef %177, ptr noundef %len, ptr noundef %178, ptr noundef @c_b1, ptr noundef %arrayidx192, ptr noundef %181, ptr noundef %arrayidx196, ptr noundef %185, ptr noundef @c_b1, ptr noundef %arrayidx197, ptr noundef %ldwork)
  %187 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %188 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %189 = load i32, ptr %i__, align 4, !tbaa !8
  %190 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul199 = mul nsw i32 %189, %190
  %add200 = add nsw i32 %mul199, 1
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds %struct.complex, ptr %188, i64 %idxprom201
  %191 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %192 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %193 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %194 = load i32, ptr %193, align 4, !tbaa !8
  %add203 = add nsw i32 %194, 1
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds %struct.complex, ptr %192, i64 %idxprom204
  %call206 = call i32 @clacpy_(ptr noundef @.str.8, ptr noundef %187, ptr noundef %len, ptr noundef %arrayidx202, ptr noundef %191, ptr noundef %arrayidx205, ptr noundef %ldwork)
  %195 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %196 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %197 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %198 = load i32, ptr %197, align 4, !tbaa !8
  %add207 = add nsw i32 %198, 1
  %199 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %add208 = add nsw i32 %add207, %199
  %idxprom209 = sext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds %struct.complex, ptr %196, i64 %idxprom209
  %200 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %201 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %202 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %203 = load i32, ptr %202, align 4, !tbaa !8
  %add211 = add nsw i32 %203, 1
  %idxprom212 = sext i32 %add211 to i64
  %arrayidx213 = getelementptr inbounds %struct.complex, ptr %201, i64 %idxprom212
  %call214 = call i32 @ctrmm_(ptr noundef @.str.9, ptr noundef @.str.5, ptr noundef @.str.10, ptr noundef @.str.6, ptr noundef %195, ptr noundef %len, ptr noundef @c_b1, ptr noundef %arrayidx210, ptr noundef %200, ptr noundef %arrayidx213, ptr noundef %ldwork)
  %204 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %205 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %206 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %207 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %208 = load i32, ptr %207, align 4, !tbaa !8
  %add215 = add nsw i32 %208, 1
  %209 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %210 = load i32, ptr %209, align 4, !tbaa !8
  %add216 = add nsw i32 %210, 1
  %211 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul217 = mul nsw i32 %add216, %211
  %add218 = add nsw i32 %add215, %mul217
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds %struct.complex, ptr %206, i64 %idxprom219
  %212 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %213 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %214 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %215 = load i32, ptr %214, align 4, !tbaa !8
  %add221 = add nsw i32 %215, 1
  %216 = load i32, ptr %i__, align 4, !tbaa !8
  %217 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul222 = mul nsw i32 %216, %217
  %add223 = add nsw i32 %add221, %mul222
  %idxprom224 = sext i32 %add223 to i64
  %arrayidx225 = getelementptr inbounds %struct.complex, ptr %213, i64 %idxprom224
  %218 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %219 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %220 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %221 = load i32, ptr %220, align 4, !tbaa !8
  %add226 = add nsw i32 %221, 1
  %idxprom227 = sext i32 %add226 to i64
  %arrayidx228 = getelementptr inbounds %struct.complex, ptr %219, i64 %idxprom227
  %call229 = call i32 @cgemm_(ptr noundef @.str.10, ptr noundef @.str.10, ptr noundef %204, ptr noundef %len, ptr noundef %205, ptr noundef @c_b1, ptr noundef %arrayidx220, ptr noundef %212, ptr noundef %arrayidx225, ptr noundef %218, ptr noundef @c_b1, ptr noundef %arrayidx228, ptr noundef %ldwork)
  %222 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %223 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx230 = getelementptr inbounds %struct.complex, ptr %223, i64 1
  %224 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %225 = load i32, ptr %i__, align 4, !tbaa !8
  %226 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul231 = mul nsw i32 %225, %226
  %add232 = add nsw i32 %mul231, 1
  %idxprom233 = sext i32 %add232 to i64
  %arrayidx234 = getelementptr inbounds %struct.complex, ptr %224, i64 %idxprom233
  %227 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call235 = call i32 @clacpy_(ptr noundef @.str.8, ptr noundef %222, ptr noundef %len, ptr noundef %arrayidx230, ptr noundef %ldwork, ptr noundef %arrayidx234, ptr noundef %227)
  br label %for.inc

for.inc:                                          ; preds = %cond.end175
  %228 = load i32, ptr %i__2, align 4, !tbaa !8
  %229 = load i32, ptr %i__, align 4, !tbaa !8
  %add236 = add nsw i32 %229, %228
  store i32 %add236, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %cond.end163
  br label %if.end324

if.else237:                                       ; preds = %if.then152
  %230 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %231 = load i32, ptr %230, align 4, !tbaa !8
  store i32 %231, ptr %i__2, align 4, !tbaa !8
  %232 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %232, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond238

for.cond238:                                      ; preds = %for.inc321, %if.else237
  %233 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp239 = icmp slt i32 %233, 0
  br i1 %cmp239, label %cond.true241, label %cond.false244

cond.true241:                                     ; preds = %for.cond238
  %234 = load i32, ptr %i__, align 4, !tbaa !8
  %235 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp242 = icmp sge i32 %234, %235
  %conv243 = zext i1 %cmp242 to i32
  br label %cond.end247

cond.false244:                                    ; preds = %for.cond238
  %236 = load i32, ptr %i__, align 4, !tbaa !8
  %237 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp245 = icmp sle i32 %236, %237
  %conv246 = zext i1 %cmp245 to i32
  br label %cond.end247

cond.end247:                                      ; preds = %cond.false244, %cond.true241
  %cond248 = phi i32 [ %conv243, %cond.true241 ], [ %conv246, %cond.false244 ]
  %tobool249 = icmp ne i32 %cond248, 0
  br i1 %tobool249, label %for.body250, label %for.end323

for.body250:                                      ; preds = %cond.end247
  %238 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %238, ptr %i__3, align 4, !tbaa !8
  %239 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %240 = load i32, ptr %239, align 4, !tbaa !8
  %241 = load i32, ptr %i__, align 4, !tbaa !8
  %sub251 = sub nsw i32 %240, %241
  %add252 = add nsw i32 %sub251, 1
  store i32 %add252, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x253) #3
  %242 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %242, ptr %_x253, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y254) #3
  %243 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %243, ptr %_y254, align 4, !tbaa !8
  %244 = load i32, ptr %_x253, align 4, !tbaa !8
  %245 = load i32, ptr %_y254, align 4, !tbaa !8
  %cmp256 = icmp slt i32 %244, %245
  br i1 %cmp256, label %cond.true258, label %cond.false259

cond.true258:                                     ; preds = %for.body250
  %246 = load i32, ptr %_x253, align 4, !tbaa !8
  br label %cond.end260

cond.false259:                                    ; preds = %for.body250
  %247 = load i32, ptr %_y254, align 4, !tbaa !8
  br label %cond.end260

cond.end260:                                      ; preds = %cond.false259, %cond.true258
  %cond261 = phi i32 [ %246, %cond.true258 ], [ %247, %cond.false259 ]
  store i32 %cond261, ptr %tmp255, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y254) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x253) #3
  %248 = load i32, ptr %tmp255, align 4, !tbaa !8
  store i32 %248, ptr %len, align 4, !tbaa !8
  %249 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %250 = load i32, ptr %249, align 4, !tbaa !8
  store i32 %250, ptr %ldwork, align 4, !tbaa !8
  %251 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %252 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %253 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %254 = load i32, ptr %253, align 4, !tbaa !8
  %add262 = add nsw i32 %254, 1
  %255 = load i32, ptr %i__, align 4, !tbaa !8
  %256 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul263 = mul nsw i32 %255, %256
  %add264 = add nsw i32 %add262, %mul263
  %idxprom265 = sext i32 %add264 to i64
  %arrayidx266 = getelementptr inbounds %struct.complex, ptr %252, i64 %idxprom265
  %257 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %258 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx267 = getelementptr inbounds %struct.complex, ptr %258, i64 1
  %call268 = call i32 @clacpy_(ptr noundef @.str.8, ptr noundef %251, ptr noundef %len, ptr noundef %arrayidx266, ptr noundef %257, ptr noundef %arrayidx267, ptr noundef %ldwork)
  %259 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %260 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %261 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %262 = load i32, ptr %261, align 4, !tbaa !8
  %add269 = add nsw i32 %262, 1
  %263 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %add270 = add nsw i32 %add269, %263
  %idxprom271 = sext i32 %add270 to i64
  %arrayidx272 = getelementptr inbounds %struct.complex, ptr %260, i64 %idxprom271
  %264 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %265 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx273 = getelementptr inbounds %struct.complex, ptr %265, i64 1
  %call274 = call i32 @ctrmm_(ptr noundef @.str.9, ptr noundef @.str.5, ptr noundef @.str.11, ptr noundef @.str.6, ptr noundef %259, ptr noundef %len, ptr noundef @c_b1, ptr noundef %arrayidx272, ptr noundef %264, ptr noundef %arrayidx273, ptr noundef %ldwork)
  %266 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %267 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %268 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %269 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom275 = sext i32 %269 to i64
  %arrayidx276 = getelementptr inbounds %struct.complex, ptr %268, i64 %idxprom275
  %270 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %271 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %272 = load i32, ptr %i__, align 4, !tbaa !8
  %273 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul277 = mul nsw i32 %272, %273
  %add278 = add nsw i32 %mul277, 1
  %idxprom279 = sext i32 %add278 to i64
  %arrayidx280 = getelementptr inbounds %struct.complex, ptr %271, i64 %idxprom279
  %274 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %275 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx281 = getelementptr inbounds %struct.complex, ptr %275, i64 1
  %call282 = call i32 @cgemm_(ptr noundef @.str.11, ptr noundef @.str.10, ptr noundef %266, ptr noundef %len, ptr noundef %267, ptr noundef @c_b1, ptr noundef %arrayidx276, ptr noundef %270, ptr noundef %arrayidx280, ptr noundef %274, ptr noundef @c_b1, ptr noundef %arrayidx281, ptr noundef %ldwork)
  %276 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %277 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %278 = load i32, ptr %i__, align 4, !tbaa !8
  %279 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul283 = mul nsw i32 %278, %279
  %add284 = add nsw i32 %mul283, 1
  %idxprom285 = sext i32 %add284 to i64
  %arrayidx286 = getelementptr inbounds %struct.complex, ptr %277, i64 %idxprom285
  %280 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %281 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %282 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %283 = load i32, ptr %282, align 4, !tbaa !8
  %add287 = add nsw i32 %283, 1
  %idxprom288 = sext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds %struct.complex, ptr %281, i64 %idxprom288
  %call290 = call i32 @clacpy_(ptr noundef @.str.8, ptr noundef %276, ptr noundef %len, ptr noundef %arrayidx286, ptr noundef %280, ptr noundef %arrayidx289, ptr noundef %ldwork)
  %284 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %285 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %286 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %287 = load i32, ptr %286, align 4, !tbaa !8
  %add291 = add nsw i32 %287, 1
  %288 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul292 = mul nsw i32 %add291, %288
  %add293 = add nsw i32 %mul292, 1
  %idxprom294 = sext i32 %add293 to i64
  %arrayidx295 = getelementptr inbounds %struct.complex, ptr %285, i64 %idxprom294
  %289 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %290 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %291 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %292 = load i32, ptr %291, align 4, !tbaa !8
  %add296 = add nsw i32 %292, 1
  %idxprom297 = sext i32 %add296 to i64
  %arrayidx298 = getelementptr inbounds %struct.complex, ptr %290, i64 %idxprom297
  %call299 = call i32 @ctrmm_(ptr noundef @.str.9, ptr noundef @.str.7, ptr noundef @.str.11, ptr noundef @.str.6, ptr noundef %284, ptr noundef %len, ptr noundef @c_b1, ptr noundef %arrayidx295, ptr noundef %289, ptr noundef %arrayidx298, ptr noundef %ldwork)
  %293 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %294 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %295 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %296 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %297 = load i32, ptr %296, align 4, !tbaa !8
  %add300 = add nsw i32 %297, 1
  %298 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %299 = load i32, ptr %298, align 4, !tbaa !8
  %add301 = add nsw i32 %299, 1
  %300 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul302 = mul nsw i32 %add301, %300
  %add303 = add nsw i32 %add300, %mul302
  %idxprom304 = sext i32 %add303 to i64
  %arrayidx305 = getelementptr inbounds %struct.complex, ptr %295, i64 %idxprom304
  %301 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %302 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %303 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %304 = load i32, ptr %303, align 4, !tbaa !8
  %add306 = add nsw i32 %304, 1
  %305 = load i32, ptr %i__, align 4, !tbaa !8
  %306 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul307 = mul nsw i32 %305, %306
  %add308 = add nsw i32 %add306, %mul307
  %idxprom309 = sext i32 %add308 to i64
  %arrayidx310 = getelementptr inbounds %struct.complex, ptr %302, i64 %idxprom309
  %307 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %308 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %309 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %310 = load i32, ptr %309, align 4, !tbaa !8
  %add311 = add nsw i32 %310, 1
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds %struct.complex, ptr %308, i64 %idxprom312
  %call314 = call i32 @cgemm_(ptr noundef @.str.11, ptr noundef @.str.10, ptr noundef %293, ptr noundef %len, ptr noundef %294, ptr noundef @c_b1, ptr noundef %arrayidx305, ptr noundef %301, ptr noundef %arrayidx310, ptr noundef %307, ptr noundef @c_b1, ptr noundef %arrayidx313, ptr noundef %ldwork)
  %311 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %312 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx315 = getelementptr inbounds %struct.complex, ptr %312, i64 1
  %313 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %314 = load i32, ptr %i__, align 4, !tbaa !8
  %315 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul316 = mul nsw i32 %314, %315
  %add317 = add nsw i32 %mul316, 1
  %idxprom318 = sext i32 %add317 to i64
  %arrayidx319 = getelementptr inbounds %struct.complex, ptr %313, i64 %idxprom318
  %316 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call320 = call i32 @clacpy_(ptr noundef @.str.8, ptr noundef %311, ptr noundef %len, ptr noundef %arrayidx315, ptr noundef %ldwork, ptr noundef %arrayidx319, ptr noundef %316)
  br label %for.inc321

for.inc321:                                       ; preds = %cond.end260
  %317 = load i32, ptr %i__1, align 4, !tbaa !8
  %318 = load i32, ptr %i__, align 4, !tbaa !8
  %add322 = add nsw i32 %318, %317
  store i32 %add322, ptr %i__, align 4, !tbaa !8
  br label %for.cond238, !llvm.loop !16

for.end323:                                       ; preds = %cond.end247
  br label %if.end324

if.end324:                                        ; preds = %for.end323, %for.end
  br label %if.end502

if.else325:                                       ; preds = %cond.end149
  %319 = load i32, ptr %notran, align 4, !tbaa !8
  %tobool326 = icmp ne i32 %319, 0
  br i1 %tobool326, label %if.then327, label %if.else414

if.then327:                                       ; preds = %if.else325
  %320 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %321 = load i32, ptr %320, align 4, !tbaa !8
  store i32 %321, ptr %i__1, align 4, !tbaa !8
  %322 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %322, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond328

for.cond328:                                      ; preds = %for.inc411, %if.then327
  %323 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp329 = icmp slt i32 %323, 0
  br i1 %cmp329, label %cond.true331, label %cond.false334

cond.true331:                                     ; preds = %for.cond328
  %324 = load i32, ptr %i__, align 4, !tbaa !8
  %325 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp332 = icmp sge i32 %324, %325
  %conv333 = zext i1 %cmp332 to i32
  br label %cond.end337

cond.false334:                                    ; preds = %for.cond328
  %326 = load i32, ptr %i__, align 4, !tbaa !8
  %327 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp335 = icmp sle i32 %326, %327
  %conv336 = zext i1 %cmp335 to i32
  br label %cond.end337

cond.end337:                                      ; preds = %cond.false334, %cond.true331
  %cond338 = phi i32 [ %conv333, %cond.true331 ], [ %conv336, %cond.false334 ]
  %tobool339 = icmp ne i32 %cond338, 0
  br i1 %tobool339, label %for.body340, label %for.end413

for.body340:                                      ; preds = %cond.end337
  %328 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %328, ptr %i__3, align 4, !tbaa !8
  %329 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %330 = load i32, ptr %329, align 4, !tbaa !8
  %331 = load i32, ptr %i__, align 4, !tbaa !8
  %sub341 = sub nsw i32 %330, %331
  %add342 = add nsw i32 %sub341, 1
  store i32 %add342, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x343) #3
  %332 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %332, ptr %_x343, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y344) #3
  %333 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %333, ptr %_y344, align 4, !tbaa !8
  %334 = load i32, ptr %_x343, align 4, !tbaa !8
  %335 = load i32, ptr %_y344, align 4, !tbaa !8
  %cmp346 = icmp slt i32 %334, %335
  br i1 %cmp346, label %cond.true348, label %cond.false349

cond.true348:                                     ; preds = %for.body340
  %336 = load i32, ptr %_x343, align 4, !tbaa !8
  br label %cond.end350

cond.false349:                                    ; preds = %for.body340
  %337 = load i32, ptr %_y344, align 4, !tbaa !8
  br label %cond.end350

cond.end350:                                      ; preds = %cond.false349, %cond.true348
  %cond351 = phi i32 [ %336, %cond.true348 ], [ %337, %cond.false349 ]
  store i32 %cond351, ptr %tmp345, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y344) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x343) #3
  %338 = load i32, ptr %tmp345, align 4, !tbaa !8
  store i32 %338, ptr %len, align 4, !tbaa !8
  %339 = load i32, ptr %len, align 4, !tbaa !8
  store i32 %339, ptr %ldwork, align 4, !tbaa !8
  %340 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %341 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %342 = load i32, ptr %i__, align 4, !tbaa !8
  %343 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %344 = load i32, ptr %343, align 4, !tbaa !8
  %add352 = add nsw i32 %344, 1
  %345 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul353 = mul nsw i32 %add352, %345
  %add354 = add nsw i32 %342, %mul353
  %idxprom355 = sext i32 %add354 to i64
  %arrayidx356 = getelementptr inbounds %struct.complex, ptr %341, i64 %idxprom355
  %346 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %347 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx357 = getelementptr inbounds %struct.complex, ptr %347, i64 1
  %call358 = call i32 @clacpy_(ptr noundef @.str.8, ptr noundef %len, ptr noundef %340, ptr noundef %arrayidx356, ptr noundef %346, ptr noundef %arrayidx357, ptr noundef %ldwork)
  %348 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %349 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %350 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %351 = load i32, ptr %350, align 4, !tbaa !8
  %add359 = add nsw i32 %351, 1
  %352 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %add360 = add nsw i32 %add359, %352
  %idxprom361 = sext i32 %add360 to i64
  %arrayidx362 = getelementptr inbounds %struct.complex, ptr %349, i64 %idxprom361
  %353 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %354 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx363 = getelementptr inbounds %struct.complex, ptr %354, i64 1
  %call364 = call i32 @ctrmm_(ptr noundef @.str.12, ptr noundef @.str.5, ptr noundef @.str.10, ptr noundef @.str.6, ptr noundef %len, ptr noundef %348, ptr noundef @c_b1, ptr noundef %arrayidx362, ptr noundef %353, ptr noundef %arrayidx363, ptr noundef %ldwork)
  %355 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %356 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %357 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %358 = load i32, ptr %i__, align 4, !tbaa !8
  %359 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add365 = add nsw i32 %358, %359
  %idxprom366 = sext i32 %add365 to i64
  %arrayidx367 = getelementptr inbounds %struct.complex, ptr %357, i64 %idxprom366
  %360 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %361 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %362 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom368 = sext i32 %362 to i64
  %arrayidx369 = getelementptr inbounds %struct.complex, ptr %361, i64 %idxprom368
  %363 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %364 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx370 = getelementptr inbounds %struct.complex, ptr %364, i64 1
  %call371 = call i32 @cgemm_(ptr noundef @.str.10, ptr noundef @.str.10, ptr noundef %len, ptr noundef %355, ptr noundef %356, ptr noundef @c_b1, ptr noundef %arrayidx367, ptr noundef %360, ptr noundef %arrayidx369, ptr noundef %363, ptr noundef @c_b1, ptr noundef %arrayidx370, ptr noundef %ldwork)
  %365 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %366 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %367 = load i32, ptr %i__, align 4, !tbaa !8
  %368 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add372 = add nsw i32 %367, %368
  %idxprom373 = sext i32 %add372 to i64
  %arrayidx374 = getelementptr inbounds %struct.complex, ptr %366, i64 %idxprom373
  %369 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %370 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %371 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %372 = load i32, ptr %371, align 4, !tbaa !8
  %373 = load i32, ptr %ldwork, align 4, !tbaa !8
  %mul375 = mul nsw i32 %372, %373
  %add376 = add nsw i32 %mul375, 1
  %idxprom377 = sext i32 %add376 to i64
  %arrayidx378 = getelementptr inbounds %struct.complex, ptr %370, i64 %idxprom377
  %call379 = call i32 @clacpy_(ptr noundef @.str.8, ptr noundef %len, ptr noundef %365, ptr noundef %arrayidx374, ptr noundef %369, ptr noundef %arrayidx378, ptr noundef %ldwork)
  %374 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %375 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %376 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %377 = load i32, ptr %376, align 4, !tbaa !8
  %add380 = add nsw i32 %377, 1
  %378 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul381 = mul nsw i32 %add380, %378
  %add382 = add nsw i32 %mul381, 1
  %idxprom383 = sext i32 %add382 to i64
  %arrayidx384 = getelementptr inbounds %struct.complex, ptr %375, i64 %idxprom383
  %379 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %380 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %381 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %382 = load i32, ptr %381, align 4, !tbaa !8
  %383 = load i32, ptr %ldwork, align 4, !tbaa !8
  %mul385 = mul nsw i32 %382, %383
  %add386 = add nsw i32 %mul385, 1
  %idxprom387 = sext i32 %add386 to i64
  %arrayidx388 = getelementptr inbounds %struct.complex, ptr %380, i64 %idxprom387
  %call389 = call i32 @ctrmm_(ptr noundef @.str.12, ptr noundef @.str.7, ptr noundef @.str.10, ptr noundef @.str.6, ptr noundef %len, ptr noundef %374, ptr noundef @c_b1, ptr noundef %arrayidx384, ptr noundef %379, ptr noundef %arrayidx388, ptr noundef %ldwork)
  %384 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %385 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %386 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %387 = load i32, ptr %i__, align 4, !tbaa !8
  %388 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %389 = load i32, ptr %388, align 4, !tbaa !8
  %add390 = add nsw i32 %389, 1
  %390 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul391 = mul nsw i32 %add390, %390
  %add392 = add nsw i32 %387, %mul391
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds %struct.complex, ptr %386, i64 %idxprom393
  %391 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %392 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %393 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %394 = load i32, ptr %393, align 4, !tbaa !8
  %add395 = add nsw i32 %394, 1
  %395 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %396 = load i32, ptr %395, align 4, !tbaa !8
  %add396 = add nsw i32 %396, 1
  %397 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul397 = mul nsw i32 %add396, %397
  %add398 = add nsw i32 %add395, %mul397
  %idxprom399 = sext i32 %add398 to i64
  %arrayidx400 = getelementptr inbounds %struct.complex, ptr %392, i64 %idxprom399
  %398 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %399 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %400 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %401 = load i32, ptr %400, align 4, !tbaa !8
  %402 = load i32, ptr %ldwork, align 4, !tbaa !8
  %mul401 = mul nsw i32 %401, %402
  %add402 = add nsw i32 %mul401, 1
  %idxprom403 = sext i32 %add402 to i64
  %arrayidx404 = getelementptr inbounds %struct.complex, ptr %399, i64 %idxprom403
  %call405 = call i32 @cgemm_(ptr noundef @.str.10, ptr noundef @.str.10, ptr noundef %len, ptr noundef %384, ptr noundef %385, ptr noundef @c_b1, ptr noundef %arrayidx394, ptr noundef %391, ptr noundef %arrayidx400, ptr noundef %398, ptr noundef @c_b1, ptr noundef %arrayidx404, ptr noundef %ldwork)
  %403 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %404 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx406 = getelementptr inbounds %struct.complex, ptr %404, i64 1
  %405 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %406 = load i32, ptr %i__, align 4, !tbaa !8
  %407 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add407 = add nsw i32 %406, %407
  %idxprom408 = sext i32 %add407 to i64
  %arrayidx409 = getelementptr inbounds %struct.complex, ptr %405, i64 %idxprom408
  %408 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call410 = call i32 @clacpy_(ptr noundef @.str.8, ptr noundef %len, ptr noundef %403, ptr noundef %arrayidx406, ptr noundef %ldwork, ptr noundef %arrayidx409, ptr noundef %408)
  br label %for.inc411

for.inc411:                                       ; preds = %cond.end350
  %409 = load i32, ptr %i__2, align 4, !tbaa !8
  %410 = load i32, ptr %i__, align 4, !tbaa !8
  %add412 = add nsw i32 %410, %409
  store i32 %add412, ptr %i__, align 4, !tbaa !8
  br label %for.cond328, !llvm.loop !17

for.end413:                                       ; preds = %cond.end337
  br label %if.end501

if.else414:                                       ; preds = %if.else325
  %411 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %412 = load i32, ptr %411, align 4, !tbaa !8
  store i32 %412, ptr %i__2, align 4, !tbaa !8
  %413 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %413, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond415

for.cond415:                                      ; preds = %for.inc498, %if.else414
  %414 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp416 = icmp slt i32 %414, 0
  br i1 %cmp416, label %cond.true418, label %cond.false421

cond.true418:                                     ; preds = %for.cond415
  %415 = load i32, ptr %i__, align 4, !tbaa !8
  %416 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp419 = icmp sge i32 %415, %416
  %conv420 = zext i1 %cmp419 to i32
  br label %cond.end424

cond.false421:                                    ; preds = %for.cond415
  %417 = load i32, ptr %i__, align 4, !tbaa !8
  %418 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp422 = icmp sle i32 %417, %418
  %conv423 = zext i1 %cmp422 to i32
  br label %cond.end424

cond.end424:                                      ; preds = %cond.false421, %cond.true418
  %cond425 = phi i32 [ %conv420, %cond.true418 ], [ %conv423, %cond.false421 ]
  %tobool426 = icmp ne i32 %cond425, 0
  br i1 %tobool426, label %for.body427, label %for.end500

for.body427:                                      ; preds = %cond.end424
  %419 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %419, ptr %i__3, align 4, !tbaa !8
  %420 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %421 = load i32, ptr %420, align 4, !tbaa !8
  %422 = load i32, ptr %i__, align 4, !tbaa !8
  %sub428 = sub nsw i32 %421, %422
  %add429 = add nsw i32 %sub428, 1
  store i32 %add429, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x430) #3
  %423 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %423, ptr %_x430, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y431) #3
  %424 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %424, ptr %_y431, align 4, !tbaa !8
  %425 = load i32, ptr %_x430, align 4, !tbaa !8
  %426 = load i32, ptr %_y431, align 4, !tbaa !8
  %cmp433 = icmp slt i32 %425, %426
  br i1 %cmp433, label %cond.true435, label %cond.false436

cond.true435:                                     ; preds = %for.body427
  %427 = load i32, ptr %_x430, align 4, !tbaa !8
  br label %cond.end437

cond.false436:                                    ; preds = %for.body427
  %428 = load i32, ptr %_y431, align 4, !tbaa !8
  br label %cond.end437

cond.end437:                                      ; preds = %cond.false436, %cond.true435
  %cond438 = phi i32 [ %427, %cond.true435 ], [ %428, %cond.false436 ]
  store i32 %cond438, ptr %tmp432, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y431) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x430) #3
  %429 = load i32, ptr %tmp432, align 4, !tbaa !8
  store i32 %429, ptr %len, align 4, !tbaa !8
  %430 = load i32, ptr %len, align 4, !tbaa !8
  store i32 %430, ptr %ldwork, align 4, !tbaa !8
  %431 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %432 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %433 = load i32, ptr %i__, align 4, !tbaa !8
  %434 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %435 = load i32, ptr %434, align 4, !tbaa !8
  %add439 = add nsw i32 %435, 1
  %436 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul440 = mul nsw i32 %add439, %436
  %add441 = add nsw i32 %433, %mul440
  %idxprom442 = sext i32 %add441 to i64
  %arrayidx443 = getelementptr inbounds %struct.complex, ptr %432, i64 %idxprom442
  %437 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %438 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx444 = getelementptr inbounds %struct.complex, ptr %438, i64 1
  %call445 = call i32 @clacpy_(ptr noundef @.str.8, ptr noundef %len, ptr noundef %431, ptr noundef %arrayidx443, ptr noundef %437, ptr noundef %arrayidx444, ptr noundef %ldwork)
  %439 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %440 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %441 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %442 = load i32, ptr %441, align 4, !tbaa !8
  %add446 = add nsw i32 %442, 1
  %443 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul447 = mul nsw i32 %add446, %443
  %add448 = add nsw i32 %mul447, 1
  %idxprom449 = sext i32 %add448 to i64
  %arrayidx450 = getelementptr inbounds %struct.complex, ptr %440, i64 %idxprom449
  %444 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %445 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx451 = getelementptr inbounds %struct.complex, ptr %445, i64 1
  %call452 = call i32 @ctrmm_(ptr noundef @.str.12, ptr noundef @.str.7, ptr noundef @.str.11, ptr noundef @.str.6, ptr noundef %len, ptr noundef %439, ptr noundef @c_b1, ptr noundef %arrayidx450, ptr noundef %444, ptr noundef %arrayidx451, ptr noundef %ldwork)
  %446 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %447 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %448 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %449 = load i32, ptr %i__, align 4, !tbaa !8
  %450 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add453 = add nsw i32 %449, %450
  %idxprom454 = sext i32 %add453 to i64
  %arrayidx455 = getelementptr inbounds %struct.complex, ptr %448, i64 %idxprom454
  %451 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %452 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %453 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom456 = sext i32 %453 to i64
  %arrayidx457 = getelementptr inbounds %struct.complex, ptr %452, i64 %idxprom456
  %454 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %455 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx458 = getelementptr inbounds %struct.complex, ptr %455, i64 1
  %call459 = call i32 @cgemm_(ptr noundef @.str.10, ptr noundef @.str.11, ptr noundef %len, ptr noundef %446, ptr noundef %447, ptr noundef @c_b1, ptr noundef %arrayidx455, ptr noundef %451, ptr noundef %arrayidx457, ptr noundef %454, ptr noundef @c_b1, ptr noundef %arrayidx458, ptr noundef %ldwork)
  %456 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %457 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %458 = load i32, ptr %i__, align 4, !tbaa !8
  %459 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add460 = add nsw i32 %458, %459
  %idxprom461 = sext i32 %add460 to i64
  %arrayidx462 = getelementptr inbounds %struct.complex, ptr %457, i64 %idxprom461
  %460 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %461 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %462 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %463 = load i32, ptr %462, align 4, !tbaa !8
  %464 = load i32, ptr %ldwork, align 4, !tbaa !8
  %mul463 = mul nsw i32 %463, %464
  %add464 = add nsw i32 %mul463, 1
  %idxprom465 = sext i32 %add464 to i64
  %arrayidx466 = getelementptr inbounds %struct.complex, ptr %461, i64 %idxprom465
  %call467 = call i32 @clacpy_(ptr noundef @.str.8, ptr noundef %len, ptr noundef %456, ptr noundef %arrayidx462, ptr noundef %460, ptr noundef %arrayidx466, ptr noundef %ldwork)
  %465 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %466 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %467 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %468 = load i32, ptr %467, align 4, !tbaa !8
  %add468 = add nsw i32 %468, 1
  %469 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %add469 = add nsw i32 %add468, %469
  %idxprom470 = sext i32 %add469 to i64
  %arrayidx471 = getelementptr inbounds %struct.complex, ptr %466, i64 %idxprom470
  %470 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %471 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %472 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %473 = load i32, ptr %472, align 4, !tbaa !8
  %474 = load i32, ptr %ldwork, align 4, !tbaa !8
  %mul472 = mul nsw i32 %473, %474
  %add473 = add nsw i32 %mul472, 1
  %idxprom474 = sext i32 %add473 to i64
  %arrayidx475 = getelementptr inbounds %struct.complex, ptr %471, i64 %idxprom474
  %call476 = call i32 @ctrmm_(ptr noundef @.str.12, ptr noundef @.str.5, ptr noundef @.str.11, ptr noundef @.str.6, ptr noundef %len, ptr noundef %465, ptr noundef @c_b1, ptr noundef %arrayidx471, ptr noundef %470, ptr noundef %arrayidx475, ptr noundef %ldwork)
  %475 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %476 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %477 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %478 = load i32, ptr %i__, align 4, !tbaa !8
  %479 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %480 = load i32, ptr %479, align 4, !tbaa !8
  %add477 = add nsw i32 %480, 1
  %481 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul478 = mul nsw i32 %add477, %481
  %add479 = add nsw i32 %478, %mul478
  %idxprom480 = sext i32 %add479 to i64
  %arrayidx481 = getelementptr inbounds %struct.complex, ptr %477, i64 %idxprom480
  %482 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %483 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %484 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %485 = load i32, ptr %484, align 4, !tbaa !8
  %add482 = add nsw i32 %485, 1
  %486 = load ptr, ptr %n2.addr, align 8, !tbaa !4
  %487 = load i32, ptr %486, align 4, !tbaa !8
  %add483 = add nsw i32 %487, 1
  %488 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul484 = mul nsw i32 %add483, %488
  %add485 = add nsw i32 %add482, %mul484
  %idxprom486 = sext i32 %add485 to i64
  %arrayidx487 = getelementptr inbounds %struct.complex, ptr %483, i64 %idxprom486
  %489 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %490 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %491 = load ptr, ptr %n1.addr, align 8, !tbaa !4
  %492 = load i32, ptr %491, align 4, !tbaa !8
  %493 = load i32, ptr %ldwork, align 4, !tbaa !8
  %mul488 = mul nsw i32 %492, %493
  %add489 = add nsw i32 %mul488, 1
  %idxprom490 = sext i32 %add489 to i64
  %arrayidx491 = getelementptr inbounds %struct.complex, ptr %490, i64 %idxprom490
  %call492 = call i32 @cgemm_(ptr noundef @.str.10, ptr noundef @.str.11, ptr noundef %len, ptr noundef %475, ptr noundef %476, ptr noundef @c_b1, ptr noundef %arrayidx481, ptr noundef %482, ptr noundef %arrayidx487, ptr noundef %489, ptr noundef @c_b1, ptr noundef %arrayidx491, ptr noundef %ldwork)
  %494 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %495 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx493 = getelementptr inbounds %struct.complex, ptr %495, i64 1
  %496 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %497 = load i32, ptr %i__, align 4, !tbaa !8
  %498 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add494 = add nsw i32 %497, %498
  %idxprom495 = sext i32 %add494 to i64
  %arrayidx496 = getelementptr inbounds %struct.complex, ptr %496, i64 %idxprom495
  %499 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call497 = call i32 @clacpy_(ptr noundef @.str.8, ptr noundef %len, ptr noundef %494, ptr noundef %arrayidx493, ptr noundef %ldwork, ptr noundef %arrayidx496, ptr noundef %499)
  br label %for.inc498

for.inc498:                                       ; preds = %cond.end437
  %500 = load i32, ptr %i__1, align 4, !tbaa !8
  %501 = load i32, ptr %i__, align 4, !tbaa !8
  %add499 = add nsw i32 %501, %500
  store i32 %add499, ptr %i__, align 4, !tbaa !8
  br label %for.cond415, !llvm.loop !18

for.end500:                                       ; preds = %cond.end424
  br label %if.end501

if.end501:                                        ; preds = %for.end500, %for.end413
  br label %if.end502

if.end502:                                        ; preds = %if.end501, %if.end324
  %502 = load i32, ptr %lwkopt, align 4, !tbaa !8
  %conv503 = sitofp i32 %502 to float
  %r504 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %conv503, ptr %r504, align 4, !tbaa !10
  %i505 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float 0.000000e+00, ptr %i505, align 4, !tbaa !13
  %r506 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %503 = load float, ptr %r506, align 4, !tbaa !10
  %504 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx507 = getelementptr inbounds %struct.complex, ptr %504, i64 1
  %r508 = getelementptr inbounds %struct.complex, ptr %arrayidx507, i32 0, i32 0
  store float %503, ptr %r508, align 4, !tbaa !10
  %i509 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %505 = load float, ptr %i509, align 4, !tbaa !13
  %506 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx510 = getelementptr inbounds %struct.complex, ptr %506, i64 1
  %i511 = getelementptr inbounds %struct.complex, ptr %arrayidx510, i32 0, i32 1
  store float %505, ptr %i511, align 4, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end502, %if.then121, %if.then109, %if.then101, %if.then93, %if.then89
  call void @llvm.lifetime.end.p0(i64 4, ptr %lquery) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lwkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ldwork) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %notran) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nw) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nq) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q_dim1) #3
  %507 = load i32, ptr %retval, align 4
  ret i32 %507
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @ctrmm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @clacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!11 = !{!"", !12, i64 0, !12, i64 4}
!12 = !{!"float", !6, i64 0}
!13 = !{!11, !12, i64 4}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}

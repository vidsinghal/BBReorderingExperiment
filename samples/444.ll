; ModuleID = 'samples/444.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/check/cunmqr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@c__1 = internal global i32 1, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"CUNMQR\00", align 1
@c_n1 = internal global i32 -1, align 4

; Function Attrs: nounwind uwtable
define i32 @cunmqr_check(ptr noundef %side, ptr noundef %trans, ptr noundef %m, ptr noundef %n, ptr noundef %k, ptr noundef %a, ptr noundef %lda, ptr noundef %tau, ptr noundef %c__, ptr noundef %ldc, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
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
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %c_dim1 = alloca i32, align 4
  %c_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %ch__1 = alloca [2 x i8], align 1
  %nb = alloca i32, align 4
  %nq = alloca i32, align 4
  %nw = alloca i32, align 4
  %left = alloca i32, align 4
  %notran = alloca i32, align 4
  %lwkopt = alloca i32, align 4
  %lquery = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x38 = alloca i32, align 4
  %_y39 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %_x51 = alloca i32, align 4
  %_y52 = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  %_x77 = alloca i32, align 4
  %_y78 = alloca i32, align 4
  %tmp79 = alloca i32, align 4
  %_x86 = alloca i32, align 4
  %_y87 = alloca i32, align 4
  %tmp88 = alloca i32, align 4
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
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 2, ptr %ch__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nq) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nw) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %notran) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lwkopt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lquery) #3
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
  %add.ptr = getelementptr inbounds %struct.scomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.scomplex, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %tau.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %7 = load i32, ptr %6, align 4, !tbaa !8
  store i32 %7, ptr %c_dim1, align 4, !tbaa !8
  %8 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %8
  store i32 %add1, ptr %c_offset, align 4, !tbaa !8
  %9 = load i32, ptr %c_offset, align 4, !tbaa !8
  %10 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.scomplex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %c__.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds %struct.scomplex, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %work.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %12, align 4, !tbaa !8
  %13 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %13, ptr noundef @.str)
  store i32 %call, ptr %left, align 4, !tbaa !8
  %14 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call6 = call i32 @lsame_(ptr noundef %14, ptr noundef @.str.1)
  store i32 %call6, ptr %notran, align 4, !tbaa !8
  %15 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %cmp = icmp eq i32 %16, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4, !tbaa !8
  %17 = load i32, ptr %left, align 4, !tbaa !8
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %19 = load i32, ptr %18, align 4, !tbaa !8
  store i32 %19, ptr %nq, align 4, !tbaa !8
  %20 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  store i32 %21, ptr %nw, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  store i32 %23, ptr %nq, align 4, !tbaa !8
  %24 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  store i32 %25, ptr %nw, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load i32, ptr %left, align 4, !tbaa !8
  %tobool7 = icmp ne i32 %26, 0
  br i1 %tobool7, label %if.else11, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %27 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call8 = call i32 @lsame_(ptr noundef %27, ptr noundef @.str.2)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.else11, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %28, align 4, !tbaa !8
  br label %if.end72

if.else11:                                        ; preds = %land.lhs.true, %if.end
  %29 = load i32, ptr %notran, align 4, !tbaa !8
  %tobool12 = icmp ne i32 %29, 0
  br i1 %tobool12, label %if.else17, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.else11
  %30 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call14 = call i32 @lsame_(ptr noundef %30, ptr noundef @.str.3)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.else17, label %if.then16

if.then16:                                        ; preds = %land.lhs.true13
  %31 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %31, align 4, !tbaa !8
  br label %if.end71

if.else17:                                        ; preds = %land.lhs.true13, %if.else11
  %32 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %33 = load i32, ptr %32, align 4, !tbaa !8
  %cmp18 = icmp slt i32 %33, 0
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else17
  %34 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %34, align 4, !tbaa !8
  br label %if.end70

if.else21:                                        ; preds = %if.else17
  %35 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %36, 0
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else21
  %37 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %37, align 4, !tbaa !8
  br label %if.end69

if.else25:                                        ; preds = %if.else21
  %38 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %39 = load i32, ptr %38, align 4, !tbaa !8
  %cmp26 = icmp slt i32 %39, 0
  br i1 %cmp26, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else25
  %40 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %42 = load i32, ptr %nq, align 4, !tbaa !8
  %cmp28 = icmp sgt i32 %41, %42
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %lor.lhs.false, %if.else25
  %43 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %43, align 4, !tbaa !8
  br label %if.end68

if.else31:                                        ; preds = %lor.lhs.false
  %44 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %45 = load i32, ptr %44, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %46 = load i32, ptr %nq, align 4, !tbaa !8
  store i32 %46, ptr %_y, align 4, !tbaa !8
  %47 = load i32, ptr %_x, align 4, !tbaa !8
  %48 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp32 = icmp sgt i32 %47, %48
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else31
  %49 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else31
  %50 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %49, %cond.true ], [ %50, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %51 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp34 = icmp slt i32 %45, %51
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %cond.end
  %52 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -7, ptr %52, align 4, !tbaa !8
  br label %if.end67

if.else37:                                        ; preds = %cond.end
  %53 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %54 = load i32, ptr %53, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x38) #3
  store i32 1, ptr %_x38, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y39) #3
  %55 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !8
  store i32 %56, ptr %_y39, align 4, !tbaa !8
  %57 = load i32, ptr %_x38, align 4, !tbaa !8
  %58 = load i32, ptr %_y39, align 4, !tbaa !8
  %cmp41 = icmp sgt i32 %57, %58
  br i1 %cmp41, label %cond.true43, label %cond.false44

cond.true43:                                      ; preds = %if.else37
  %59 = load i32, ptr %_x38, align 4, !tbaa !8
  br label %cond.end45

cond.false44:                                     ; preds = %if.else37
  %60 = load i32, ptr %_y39, align 4, !tbaa !8
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false44, %cond.true43
  %cond46 = phi i32 [ %59, %cond.true43 ], [ %60, %cond.false44 ]
  store i32 %cond46, ptr %tmp40, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y39) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x38) #3
  %61 = load i32, ptr %tmp40, align 4, !tbaa !8
  %cmp47 = icmp slt i32 %54, %61
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %cond.end45
  %62 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -10, ptr %62, align 4, !tbaa !8
  br label %if.end66

if.else50:                                        ; preds = %cond.end45
  %63 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %64 = load i32, ptr %63, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x51) #3
  store i32 1, ptr %_x51, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y52) #3
  %65 = load i32, ptr %nw, align 4, !tbaa !8
  store i32 %65, ptr %_y52, align 4, !tbaa !8
  %66 = load i32, ptr %_x51, align 4, !tbaa !8
  %67 = load i32, ptr %_y52, align 4, !tbaa !8
  %cmp54 = icmp sgt i32 %66, %67
  br i1 %cmp54, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %if.else50
  %68 = load i32, ptr %_x51, align 4, !tbaa !8
  br label %cond.end58

cond.false57:                                     ; preds = %if.else50
  %69 = load i32, ptr %_y52, align 4, !tbaa !8
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %cond.true56
  %cond59 = phi i32 [ %68, %cond.true56 ], [ %69, %cond.false57 ]
  store i32 %cond59, ptr %tmp53, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y52) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x51) #3
  %70 = load i32, ptr %tmp53, align 4, !tbaa !8
  %cmp60 = icmp slt i32 %64, %70
  br i1 %cmp60, label %land.lhs.true62, label %if.end65

land.lhs.true62:                                  ; preds = %cond.end58
  %71 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool63 = icmp ne i32 %71, 0
  br i1 %tobool63, label %if.end65, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  %72 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -12, ptr %72, align 4, !tbaa !8
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %land.lhs.true62, %cond.end58
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then49
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then36
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then30
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then24
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then20
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then16
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then10
  %73 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %74 = load i32, ptr %73, align 4, !tbaa !8
  %cmp73 = icmp eq i32 %74, 0
  br i1 %cmp73, label %if.then75, label %if.end97

if.then75:                                        ; preds = %if.end72
  store i32 64, ptr %i__1, align 4, !tbaa !8
  %arraydecay = getelementptr inbounds [2 x i8], ptr %ch__1, i64 0, i64 0
  %75 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %76 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %77 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %call76 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.4, ptr noundef %arraydecay, ptr noundef %75, ptr noundef %76, ptr noundef %77, ptr noundef @c_n1)
  store i32 %call76, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x77) #3
  %78 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %78, ptr %_x77, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y78) #3
  %79 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %79, ptr %_y78, align 4, !tbaa !8
  %80 = load i32, ptr %_x77, align 4, !tbaa !8
  %81 = load i32, ptr %_y78, align 4, !tbaa !8
  %cmp80 = icmp slt i32 %80, %81
  br i1 %cmp80, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %if.then75
  %82 = load i32, ptr %_x77, align 4, !tbaa !8
  br label %cond.end84

cond.false83:                                     ; preds = %if.then75
  %83 = load i32, ptr %_y78, align 4, !tbaa !8
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false83, %cond.true82
  %cond85 = phi i32 [ %82, %cond.true82 ], [ %83, %cond.false83 ]
  store i32 %cond85, ptr %tmp79, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y78) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x77) #3
  %84 = load i32, ptr %tmp79, align 4, !tbaa !8
  store i32 %84, ptr %nb, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x86) #3
  store i32 1, ptr %_x86, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y87) #3
  %85 = load i32, ptr %nw, align 4, !tbaa !8
  store i32 %85, ptr %_y87, align 4, !tbaa !8
  %86 = load i32, ptr %_x86, align 4, !tbaa !8
  %87 = load i32, ptr %_y87, align 4, !tbaa !8
  %cmp89 = icmp sgt i32 %86, %87
  br i1 %cmp89, label %cond.true91, label %cond.false92

cond.true91:                                      ; preds = %cond.end84
  %88 = load i32, ptr %_x86, align 4, !tbaa !8
  br label %cond.end93

cond.false92:                                     ; preds = %cond.end84
  %89 = load i32, ptr %_y87, align 4, !tbaa !8
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false92, %cond.true91
  %cond94 = phi i32 [ %88, %cond.true91 ], [ %89, %cond.false92 ]
  store i32 %cond94, ptr %tmp88, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y87) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x86) #3
  %90 = load i32, ptr %tmp88, align 4, !tbaa !8
  %91 = load i32, ptr %nb, align 4, !tbaa !8
  %mul = mul nsw i32 %90, %91
  store i32 %mul, ptr %lwkopt, align 4, !tbaa !8
  %92 = load i32, ptr %lwkopt, align 4, !tbaa !8
  %conv95 = sitofp i32 %92 to float
  %93 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.scomplex, ptr %93, i64 1
  %real = getelementptr inbounds %struct.scomplex, ptr %arrayidx, i32 0, i32 0
  store float %conv95, ptr %real, align 4, !tbaa !10
  %94 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx96 = getelementptr inbounds %struct.scomplex, ptr %94, i64 1
  %imag = getelementptr inbounds %struct.scomplex, ptr %arrayidx96, i32 0, i32 1
  store float 0.000000e+00, ptr %imag, align 4, !tbaa !13
  br label %if.end97

if.end97:                                         ; preds = %cond.end93, %if.end72
  %95 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %96 = load i32, ptr %95, align 4, !tbaa !8
  %cmp98 = icmp ne i32 %96, 0
  br i1 %cmp98, label %if.then100, label %if.else102

if.then100:                                       ; preds = %if.end97
  %97 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %98 = load i32, ptr %97, align 4, !tbaa !8
  %sub = sub nsw i32 0, %98
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call101 = call i32 @xerbla_(ptr noundef @.str.4, ptr noundef %i__1)
  store i32 312, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else102:                                       ; preds = %if.end97
  %99 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool103 = icmp ne i32 %99, 0
  br i1 %tobool103, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.else102
  store i32 112, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end105:                                        ; preds = %if.else102
  br label %if.end106

if.end106:                                        ; preds = %if.end105
  %100 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %101 = load i32, ptr %100, align 4, !tbaa !8
  %cmp107 = icmp eq i32 %101, 0
  br i1 %cmp107, label %if.then115, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %if.end106
  %102 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %103 = load i32, ptr %102, align 4, !tbaa !8
  %cmp110 = icmp eq i32 %103, 0
  br i1 %cmp110, label %if.then115, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false109
  %104 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %105 = load i32, ptr %104, align 4, !tbaa !8
  %cmp113 = icmp eq i32 %105, 0
  br i1 %cmp113, label %if.then115, label %if.end120

if.then115:                                       ; preds = %lor.lhs.false112, %lor.lhs.false109, %if.end106
  %106 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx116 = getelementptr inbounds %struct.scomplex, ptr %106, i64 1
  %real117 = getelementptr inbounds %struct.scomplex, ptr %arrayidx116, i32 0, i32 0
  store float 1.000000e+00, ptr %real117, align 4, !tbaa !10
  %107 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx118 = getelementptr inbounds %struct.scomplex, ptr %107, i64 1
  %imag119 = getelementptr inbounds %struct.scomplex, ptr %arrayidx118, i32 0, i32 1
  store float 0.000000e+00, ptr %imag119, align 4, !tbaa !13
  store i32 212, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end120:                                        ; preds = %lor.lhs.false112
  store i32 512, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.then115, %if.then104, %if.then100
  call void @llvm.lifetime.end.p0(i64 4, ptr %lquery) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lwkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %notran) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nw) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nq) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr %ch__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %108 = load i32, ptr %retval, align 4
  ret i32 %108
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

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
!11 = !{!"scomplex", !12, i64 0, !12, i64 4}
!12 = !{!"float", !6, i64 0}
!13 = !{!11, !12, i64 4}

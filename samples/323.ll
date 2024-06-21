; ModuleID = 'samples/323.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/ztpqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [7 x i8] c"ZTPQRT\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"F\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ztpqrt_(ptr noundef %m, ptr noundef %n, ptr noundef %l, ptr noundef %nb, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %t, ptr noundef %ldt, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %nb.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %ldt.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %t_dim1 = alloca i32, align 4
  %t_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %ib = alloca i32, align 4
  %lb = alloca i32, align 4
  %mb = alloca i32, align 4
  %iinfo = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x15 = alloca i32, align 4
  %_y16 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %_x33 = alloca i32, align 4
  %_y34 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %_x44 = alloca i32, align 4
  %_y45 = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x81 = alloca i32, align 4
  %_y82 = alloca i32, align 4
  %tmp83 = alloca i32, align 4
  %_x94 = alloca i32, align 4
  %_y95 = alloca i32, align 4
  %tmp96 = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %l, ptr %l.addr, align 8, !tbaa !4
  store ptr %nb, ptr %nb.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %ldt, ptr %ldt.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ib) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %mb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iinfo) #3
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
  %10 = load ptr, ptr %ldt.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %t_dim1, align 4, !tbaa !8
  %12 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %add5 = add nsw i32 1, %12
  store i32 %add5, ptr %t_offset, align 4, !tbaa !8
  %13 = load i32, ptr %t_offset, align 4, !tbaa !8
  %14 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %idx.ext6 = sext i32 %13 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds %struct.doublecomplex, ptr %14, i64 %idx.neg7
  store ptr %add.ptr8, ptr %t.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.doublecomplex, ptr %15, i32 -1
  store ptr %incdec.ptr, ptr %work.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %16, align 4, !tbaa !8
  %17 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %19 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %19, align 4, !tbaa !8
  br label %if.end62

if.else:                                          ; preds = %entry
  %20 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %cmp9 = icmp slt i32 %21, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  %22 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %22, align 4, !tbaa !8
  br label %if.end61

if.else11:                                        ; preds = %if.else
  %23 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %24, 0
  br i1 %cmp12, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else11
  %25 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %27 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  store i32 %28, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %29 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  store i32 %30, ptr %_y, align 4, !tbaa !8
  %31 = load i32, ptr %_x, align 4, !tbaa !8
  %32 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp13 = icmp slt i32 %31, %32
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  %33 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %34 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %34, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %35 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp14 = icmp sgt i32 %26, %35
  br i1 %cmp14, label %land.lhs.true, label %if.else25

land.lhs.true:                                    ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x15) #3
  %36 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %37 = load i32, ptr %36, align 4, !tbaa !8
  store i32 %37, ptr %_x15, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y16) #3
  %38 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %39 = load i32, ptr %38, align 4, !tbaa !8
  store i32 %39, ptr %_y16, align 4, !tbaa !8
  %40 = load i32, ptr %_x15, align 4, !tbaa !8
  %41 = load i32, ptr %_y16, align 4, !tbaa !8
  %cmp18 = icmp slt i32 %40, %41
  br i1 %cmp18, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %land.lhs.true
  %42 = load i32, ptr %_x15, align 4, !tbaa !8
  br label %cond.end21

cond.false20:                                     ; preds = %land.lhs.true
  %43 = load i32, ptr %_y16, align 4, !tbaa !8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i32 [ %42, %cond.true19 ], [ %43, %cond.false20 ]
  store i32 %cond22, ptr %tmp17, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y16) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x15) #3
  %44 = load i32, ptr %tmp17, align 4, !tbaa !8
  %cmp23 = icmp sge i32 %44, 0
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %cond.end21, %if.else11
  %45 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %45, align 4, !tbaa !8
  br label %if.end60

if.else25:                                        ; preds = %cond.end21, %cond.end
  %46 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %47 = load i32, ptr %46, align 4, !tbaa !8
  %cmp26 = icmp slt i32 %47, 1
  br i1 %cmp26, label %if.then31, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.else25
  %48 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %49 = load i32, ptr %48, align 4, !tbaa !8
  %50 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %51 = load i32, ptr %50, align 4, !tbaa !8
  %cmp28 = icmp sgt i32 %49, %51
  br i1 %cmp28, label %land.lhs.true29, label %if.else32

land.lhs.true29:                                  ; preds = %lor.lhs.false27
  %52 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %53 = load i32, ptr %52, align 4, !tbaa !8
  %cmp30 = icmp sgt i32 %53, 0
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %land.lhs.true29, %if.else25
  %54 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %54, align 4, !tbaa !8
  br label %if.end59

if.else32:                                        ; preds = %land.lhs.true29, %lor.lhs.false27
  %55 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x33) #3
  store i32 1, ptr %_x33, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y34) #3
  %57 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %58 = load i32, ptr %57, align 4, !tbaa !8
  store i32 %58, ptr %_y34, align 4, !tbaa !8
  %59 = load i32, ptr %_x33, align 4, !tbaa !8
  %60 = load i32, ptr %_y34, align 4, !tbaa !8
  %cmp36 = icmp sgt i32 %59, %60
  br i1 %cmp36, label %cond.true37, label %cond.false38

cond.true37:                                      ; preds = %if.else32
  %61 = load i32, ptr %_x33, align 4, !tbaa !8
  br label %cond.end39

cond.false38:                                     ; preds = %if.else32
  %62 = load i32, ptr %_y34, align 4, !tbaa !8
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %cond.true37
  %cond40 = phi i32 [ %61, %cond.true37 ], [ %62, %cond.false38 ]
  store i32 %cond40, ptr %tmp35, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y34) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x33) #3
  %63 = load i32, ptr %tmp35, align 4, !tbaa !8
  %cmp41 = icmp slt i32 %56, %63
  br i1 %cmp41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %cond.end39
  %64 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -6, ptr %64, align 4, !tbaa !8
  br label %if.end58

if.else43:                                        ; preds = %cond.end39
  %65 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %66 = load i32, ptr %65, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x44) #3
  store i32 1, ptr %_x44, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y45) #3
  %67 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  store i32 %68, ptr %_y45, align 4, !tbaa !8
  %69 = load i32, ptr %_x44, align 4, !tbaa !8
  %70 = load i32, ptr %_y45, align 4, !tbaa !8
  %cmp47 = icmp sgt i32 %69, %70
  br i1 %cmp47, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %if.else43
  %71 = load i32, ptr %_x44, align 4, !tbaa !8
  br label %cond.end50

cond.false49:                                     ; preds = %if.else43
  %72 = load i32, ptr %_y45, align 4, !tbaa !8
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %cond.true48
  %cond51 = phi i32 [ %71, %cond.true48 ], [ %72, %cond.false49 ]
  store i32 %cond51, ptr %tmp46, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y45) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x44) #3
  %73 = load i32, ptr %tmp46, align 4, !tbaa !8
  %cmp52 = icmp slt i32 %66, %73
  br i1 %cmp52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %cond.end50
  %74 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -8, ptr %74, align 4, !tbaa !8
  br label %if.end57

if.else54:                                        ; preds = %cond.end50
  %75 = load ptr, ptr %ldt.addr, align 8, !tbaa !4
  %76 = load i32, ptr %75, align 4, !tbaa !8
  %77 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %78 = load i32, ptr %77, align 4, !tbaa !8
  %cmp55 = icmp slt i32 %76, %78
  br i1 %cmp55, label %if.then56, label %if.end

if.then56:                                        ; preds = %if.else54
  %79 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -10, ptr %79, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then56, %if.else54
  br label %if.end57

if.end57:                                         ; preds = %if.end, %if.then53
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then42
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then31
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then24
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then10
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then
  %80 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %81 = load i32, ptr %80, align 4, !tbaa !8
  %cmp63 = icmp ne i32 %81, 0
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end62
  %82 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %83 = load i32, ptr %82, align 4, !tbaa !8
  %sub = sub nsw i32 0, %83
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.end62
  %84 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %85 = load i32, ptr %84, align 4, !tbaa !8
  %cmp66 = icmp eq i32 %85, 0
  br i1 %cmp66, label %if.then69, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %if.end65
  %86 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %87 = load i32, ptr %86, align 4, !tbaa !8
  %cmp68 = icmp eq i32 %87, 0
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %lor.lhs.false67, %if.end65
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %lor.lhs.false67
  %88 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %89 = load i32, ptr %88, align 4, !tbaa !8
  store i32 %89, ptr %i__1, align 4, !tbaa !8
  %90 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %91 = load i32, ptr %90, align 4, !tbaa !8
  store i32 %91, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end70
  %92 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp71 = icmp slt i32 %92, 0
  br i1 %cmp71, label %cond.true72, label %cond.false74

cond.true72:                                      ; preds = %for.cond
  %93 = load i32, ptr %i__, align 4, !tbaa !8
  %94 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp73 = icmp sge i32 %93, %94
  %conv = zext i1 %cmp73 to i32
  br label %cond.end77

cond.false74:                                     ; preds = %for.cond
  %95 = load i32, ptr %i__, align 4, !tbaa !8
  %96 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp75 = icmp sle i32 %95, %96
  %conv76 = zext i1 %cmp75 to i32
  br label %cond.end77

cond.end77:                                       ; preds = %cond.false74, %cond.true72
  %cond78 = phi i32 [ %conv, %cond.true72 ], [ %conv76, %cond.false74 ]
  %tobool = icmp ne i32 %cond78, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end77
  %97 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %98 = load i32, ptr %97, align 4, !tbaa !8
  %99 = load i32, ptr %i__, align 4, !tbaa !8
  %sub79 = sub nsw i32 %98, %99
  %add80 = add nsw i32 %sub79, 1
  store i32 %add80, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x81) #3
  %100 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %100, ptr %_x81, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y82) #3
  %101 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %102 = load i32, ptr %101, align 4, !tbaa !8
  store i32 %102, ptr %_y82, align 4, !tbaa !8
  %103 = load i32, ptr %_x81, align 4, !tbaa !8
  %104 = load i32, ptr %_y82, align 4, !tbaa !8
  %cmp84 = icmp slt i32 %103, %104
  br i1 %cmp84, label %cond.true86, label %cond.false87

cond.true86:                                      ; preds = %for.body
  %105 = load i32, ptr %_x81, align 4, !tbaa !8
  br label %cond.end88

cond.false87:                                     ; preds = %for.body
  %106 = load i32, ptr %_y82, align 4, !tbaa !8
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false87, %cond.true86
  %cond89 = phi i32 [ %105, %cond.true86 ], [ %106, %cond.false87 ]
  store i32 %cond89, ptr %tmp83, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y82) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x81) #3
  %107 = load i32, ptr %tmp83, align 4, !tbaa !8
  store i32 %107, ptr %ib, align 4, !tbaa !8
  %108 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %109 = load i32, ptr %108, align 4, !tbaa !8
  %110 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %111 = load i32, ptr %110, align 4, !tbaa !8
  %sub90 = sub nsw i32 %109, %111
  %112 = load i32, ptr %i__, align 4, !tbaa !8
  %add91 = add nsw i32 %sub90, %112
  %113 = load i32, ptr %ib, align 4, !tbaa !8
  %add92 = add nsw i32 %add91, %113
  %sub93 = sub nsw i32 %add92, 1
  store i32 %sub93, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x94) #3
  %114 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %114, ptr %_x94, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y95) #3
  %115 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %116 = load i32, ptr %115, align 4, !tbaa !8
  store i32 %116, ptr %_y95, align 4, !tbaa !8
  %117 = load i32, ptr %_x94, align 4, !tbaa !8
  %118 = load i32, ptr %_y95, align 4, !tbaa !8
  %cmp97 = icmp slt i32 %117, %118
  br i1 %cmp97, label %cond.true99, label %cond.false100

cond.true99:                                      ; preds = %cond.end88
  %119 = load i32, ptr %_x94, align 4, !tbaa !8
  br label %cond.end101

cond.false100:                                    ; preds = %cond.end88
  %120 = load i32, ptr %_y95, align 4, !tbaa !8
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false100, %cond.true99
  %cond102 = phi i32 [ %119, %cond.true99 ], [ %120, %cond.false100 ]
  store i32 %cond102, ptr %tmp96, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y95) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x94) #3
  %121 = load i32, ptr %tmp96, align 4, !tbaa !8
  store i32 %121, ptr %mb, align 4, !tbaa !8
  %122 = load i32, ptr %i__, align 4, !tbaa !8
  %123 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %124 = load i32, ptr %123, align 4, !tbaa !8
  %cmp103 = icmp sge i32 %122, %124
  br i1 %cmp103, label %if.then105, label %if.else106

if.then105:                                       ; preds = %cond.end101
  store i32 0, ptr %lb, align 4, !tbaa !8
  br label %if.end111

if.else106:                                       ; preds = %cond.end101
  %125 = load i32, ptr %mb, align 4, !tbaa !8
  %126 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %127 = load i32, ptr %126, align 4, !tbaa !8
  %sub107 = sub nsw i32 %125, %127
  %128 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %129 = load i32, ptr %128, align 4, !tbaa !8
  %add108 = add nsw i32 %sub107, %129
  %130 = load i32, ptr %i__, align 4, !tbaa !8
  %sub109 = sub nsw i32 %add108, %130
  %add110 = add nsw i32 %sub109, 1
  store i32 %add110, ptr %lb, align 4, !tbaa !8
  br label %if.end111

if.end111:                                        ; preds = %if.else106, %if.then105
  %131 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %132 = load i32, ptr %i__, align 4, !tbaa !8
  %133 = load i32, ptr %i__, align 4, !tbaa !8
  %134 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %133, %134
  %add112 = add nsw i32 %132, %mul
  %idxprom = sext i32 %add112 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %131, i64 %idxprom
  %135 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %136 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %137 = load i32, ptr %i__, align 4, !tbaa !8
  %138 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul113 = mul nsw i32 %137, %138
  %add114 = add nsw i32 %mul113, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds %struct.doublecomplex, ptr %136, i64 %idxprom115
  %139 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %140 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %141 = load i32, ptr %i__, align 4, !tbaa !8
  %142 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul117 = mul nsw i32 %141, %142
  %add118 = add nsw i32 %mul117, 1
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds %struct.doublecomplex, ptr %140, i64 %idxprom119
  %143 = load ptr, ptr %ldt.addr, align 8, !tbaa !4
  %call121 = call i32 @ztpqrt2_(ptr noundef %mb, ptr noundef %ib, ptr noundef %lb, ptr noundef %arrayidx, ptr noundef %135, ptr noundef %arrayidx116, ptr noundef %139, ptr noundef %arrayidx120, ptr noundef %143, ptr noundef %iinfo)
  %144 = load i32, ptr %i__, align 4, !tbaa !8
  %145 = load i32, ptr %ib, align 4, !tbaa !8
  %add122 = add nsw i32 %144, %145
  %146 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %147 = load i32, ptr %146, align 4, !tbaa !8
  %cmp123 = icmp sle i32 %add122, %147
  br i1 %cmp123, label %if.then125, label %if.end149

if.then125:                                       ; preds = %if.end111
  %148 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %149 = load i32, ptr %148, align 4, !tbaa !8
  %150 = load i32, ptr %i__, align 4, !tbaa !8
  %sub126 = sub nsw i32 %149, %150
  %151 = load i32, ptr %ib, align 4, !tbaa !8
  %sub127 = sub nsw i32 %sub126, %151
  %add128 = add nsw i32 %sub127, 1
  store i32 %add128, ptr %i__3, align 4, !tbaa !8
  %152 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %153 = load i32, ptr %i__, align 4, !tbaa !8
  %154 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul129 = mul nsw i32 %153, %154
  %add130 = add nsw i32 %mul129, 1
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds %struct.doublecomplex, ptr %152, i64 %idxprom131
  %155 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %156 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %157 = load i32, ptr %i__, align 4, !tbaa !8
  %158 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %mul133 = mul nsw i32 %157, %158
  %add134 = add nsw i32 %mul133, 1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds %struct.doublecomplex, ptr %156, i64 %idxprom135
  %159 = load ptr, ptr %ldt.addr, align 8, !tbaa !4
  %160 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %161 = load i32, ptr %i__, align 4, !tbaa !8
  %162 = load i32, ptr %i__, align 4, !tbaa !8
  %163 = load i32, ptr %ib, align 4, !tbaa !8
  %add137 = add nsw i32 %162, %163
  %164 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul138 = mul nsw i32 %add137, %164
  %add139 = add nsw i32 %161, %mul138
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds %struct.doublecomplex, ptr %160, i64 %idxprom140
  %165 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %166 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %167 = load i32, ptr %i__, align 4, !tbaa !8
  %168 = load i32, ptr %ib, align 4, !tbaa !8
  %add142 = add nsw i32 %167, %168
  %169 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul143 = mul nsw i32 %add142, %169
  %add144 = add nsw i32 %mul143, 1
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds %struct.doublecomplex, ptr %166, i64 %idxprom145
  %170 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %171 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx147 = getelementptr inbounds %struct.doublecomplex, ptr %171, i64 1
  %call148 = call i32 @ztprfb_(ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.2, ptr noundef %mb, ptr noundef %i__3, ptr noundef %ib, ptr noundef %lb, ptr noundef %arrayidx132, ptr noundef %155, ptr noundef %arrayidx136, ptr noundef %159, ptr noundef %arrayidx141, ptr noundef %165, ptr noundef %arrayidx146, ptr noundef %170, ptr noundef %arrayidx147, ptr noundef %ib)
  br label %if.end149

if.end149:                                        ; preds = %if.then125, %if.end111
  br label %for.inc

for.inc:                                          ; preds = %if.end149
  %172 = load i32, ptr %i__2, align 4, !tbaa !8
  %173 = load i32, ptr %i__, align 4, !tbaa !8
  %add150 = add nsw i32 %173, %172
  store i32 %add150, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %cond.end77
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then69, %if.then64
  call void @llvm.lifetime.end.p0(i64 4, ptr %iinfo) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %mb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ib) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %174 = load i32, ptr %retval, align 4
  ret i32 %174
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @ztpqrt2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ztprfb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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

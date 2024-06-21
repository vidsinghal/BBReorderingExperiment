; ModuleID = 'samples/291.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/cunbdb1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [8 x i8] c"CUNBDB1\00", align 1
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"R\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cunbdb1_(ptr noundef %m, ptr noundef %p, ptr noundef %q, ptr noundef %x11, ptr noundef %ldx11, ptr noundef %x21, ptr noundef %ldx21, ptr noundef %theta, ptr noundef %phi, ptr noundef %taup1, ptr noundef %taup2, ptr noundef %tauq1, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %x11.addr = alloca ptr, align 8
  %ldx11.addr = alloca ptr, align 8
  %x21.addr = alloca ptr, align 8
  %ldx21.addr = alloca ptr, align 8
  %theta.addr = alloca ptr, align 8
  %phi.addr = alloca ptr, align 8
  %taup1.addr = alloca ptr, align 8
  %taup2.addr = alloca ptr, align 8
  %tauq1.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %x11_dim1 = alloca i32, align 4
  %x11_offset = alloca i32, align 4
  %x21_dim1 = alloca i32, align 4
  %x21_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %q__1 = alloca %struct.complex, align 4
  %lworkmin = alloca i32, align 4
  %lworkopt = alloca i32, align 4
  %c__ = alloca float, align 4
  %i__ = alloca i32, align 4
  %s = alloca float, align 4
  %childinfo = alloca i32, align 4
  %ilarf = alloca i32, align 4
  %llarf = alloca i32, align 4
  %lquery = alloca i32, align 4
  %iorbdb5 = alloca i32, align 4
  %lorbdb5 = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x33 = alloca i32, align 4
  %_y34 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  %_x55 = alloca i32, align 4
  %_y56 = alloca i32, align 4
  %tmp57 = alloca i32, align 4
  %_x65 = alloca i32, align 4
  %_y66 = alloca i32, align 4
  %tmp67 = alloca i32, align 4
  %_x79 = alloca i32, align 4
  %_y80 = alloca i32, align 4
  %tmp81 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %x11, ptr %x11.addr, align 8, !tbaa !4
  store ptr %ldx11, ptr %ldx11.addr, align 8, !tbaa !4
  store ptr %x21, ptr %x21.addr, align 8, !tbaa !4
  store ptr %ldx21, ptr %ldx21.addr, align 8, !tbaa !4
  store ptr %theta, ptr %theta.addr, align 8, !tbaa !4
  store ptr %phi, ptr %phi.addr, align 8, !tbaa !4
  store ptr %taup1, ptr %taup1.addr, align 8, !tbaa !4
  store ptr %taup2, ptr %taup2.addr, align 8, !tbaa !4
  store ptr %tauq1, ptr %tauq1.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x11_dim1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %x11_offset) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %x21_dim1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %x21_offset) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %lworkmin) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %lworkopt) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c__) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %childinfo) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ilarf) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %llarf) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %lquery) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %iorbdb5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %lorbdb5) #5
  %0 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %x11_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %x11_offset, align 4, !tbaa !8
  %3 = load i32, ptr %x11_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %x11.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %x21_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %x21_offset, align 4, !tbaa !8
  %8 = load i32, ptr %x21_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %x21.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %theta.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %phi.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds float, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %phi.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %taup1.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds %struct.complex, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %taup1.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %taup2.addr, align 8, !tbaa !4
  %incdec.ptr7 = getelementptr inbounds %struct.complex, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %taup2.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %tauq1.addr, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds %struct.complex, ptr %14, i32 -1
  store ptr %incdec.ptr8, ptr %tauq1.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr9 = getelementptr inbounds %struct.complex, ptr %15, i32 -1
  store ptr %incdec.ptr9, ptr %work.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %16, align 4, !tbaa !8
  %17 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  %cmp = icmp eq i32 %18, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4, !tbaa !8
  %19 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %20, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %21, align 4, !tbaa !8
  br label %if.end48

if.else:                                          ; preds = %entry
  %22 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %24 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %23, %25
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %26 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %28 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %sub = sub nsw i32 %27, %29
  %30 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !8
  %cmp14 = icmp slt i32 %sub, %31
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %lor.lhs.false, %if.else
  %32 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %32, align 4, !tbaa !8
  br label %if.end47

if.else17:                                        ; preds = %lor.lhs.false
  %33 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %34 = load i32, ptr %33, align 4, !tbaa !8
  %cmp18 = icmp slt i32 %34, 0
  br i1 %cmp18, label %if.then24, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.else17
  %35 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %37 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %sub21 = sub nsw i32 %36, %38
  %39 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %40 = load i32, ptr %39, align 4, !tbaa !8
  %cmp22 = icmp slt i32 %sub21, %40
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %lor.lhs.false20, %if.else17
  %41 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %41, align 4, !tbaa !8
  br label %if.end46

if.else25:                                        ; preds = %lor.lhs.false20
  %42 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %43 = load i32, ptr %42, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #5
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #5
  %44 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %45 = load i32, ptr %44, align 4, !tbaa !8
  store i32 %45, ptr %_y, align 4, !tbaa !8
  %46 = load i32, ptr %_x, align 4, !tbaa !8
  %47 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp26 = icmp sgt i32 %46, %47
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else25
  %48 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else25
  %49 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %48, %cond.true ], [ %49, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #5
  %50 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp28 = icmp slt i32 %43, %50
  br i1 %cmp28, label %if.then30, label %if.else31

if.then30:                                        ; preds = %cond.end
  %51 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %51, align 4, !tbaa !8
  br label %if.end45

if.else31:                                        ; preds = %cond.end
  store i32 1, ptr %i__1, align 4, !tbaa !8
  %52 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %53 = load i32, ptr %52, align 4, !tbaa !8
  %54 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %sub32 = sub nsw i32 %53, %55
  store i32 %sub32, ptr %i__2, align 4, !tbaa !8
  %56 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %57 = load i32, ptr %56, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x33) #5
  %58 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %58, ptr %_x33, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y34) #5
  %59 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %59, ptr %_y34, align 4, !tbaa !8
  %60 = load i32, ptr %_x33, align 4, !tbaa !8
  %61 = load i32, ptr %_y34, align 4, !tbaa !8
  %cmp36 = icmp sgt i32 %60, %61
  br i1 %cmp36, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %if.else31
  %62 = load i32, ptr %_x33, align 4, !tbaa !8
  br label %cond.end40

cond.false39:                                     ; preds = %if.else31
  %63 = load i32, ptr %_y34, align 4, !tbaa !8
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.true38
  %cond41 = phi i32 [ %62, %cond.true38 ], [ %63, %cond.false39 ]
  store i32 %cond41, ptr %tmp35, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y34) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x33) #5
  %64 = load i32, ptr %tmp35, align 4, !tbaa !8
  %cmp42 = icmp slt i32 %57, %64
  br i1 %cmp42, label %if.then44, label %if.end

if.then44:                                        ; preds = %cond.end40
  %65 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -7, ptr %65, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then44, %cond.end40
  br label %if.end45

if.end45:                                         ; preds = %if.end, %if.then30
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then24
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then16
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then
  %66 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %67 = load i32, ptr %66, align 4, !tbaa !8
  %cmp49 = icmp eq i32 %67, 0
  br i1 %cmp49, label %if.then51, label %if.end94

if.then51:                                        ; preds = %if.end48
  store i32 2, ptr %ilarf, align 4, !tbaa !8
  %68 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %69 = load i32, ptr %68, align 4, !tbaa !8
  %sub52 = sub nsw i32 %69, 1
  store i32 %sub52, ptr %i__1, align 4, !tbaa !8
  %70 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %71 = load i32, ptr %70, align 4, !tbaa !8
  %72 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %73 = load i32, ptr %72, align 4, !tbaa !8
  %sub53 = sub nsw i32 %71, %73
  %sub54 = sub nsw i32 %sub53, 1
  store i32 %sub54, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x55) #5
  %74 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %74, ptr %_x55, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y56) #5
  %75 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %75, ptr %_y56, align 4, !tbaa !8
  %76 = load i32, ptr %_x55, align 4, !tbaa !8
  %77 = load i32, ptr %_y56, align 4, !tbaa !8
  %cmp58 = icmp sgt i32 %76, %77
  br i1 %cmp58, label %cond.true60, label %cond.false61

cond.true60:                                      ; preds = %if.then51
  %78 = load i32, ptr %_x55, align 4, !tbaa !8
  br label %cond.end62

cond.false61:                                     ; preds = %if.then51
  %79 = load i32, ptr %_y56, align 4, !tbaa !8
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false61, %cond.true60
  %cond63 = phi i32 [ %78, %cond.true60 ], [ %79, %cond.false61 ]
  store i32 %cond63, ptr %tmp57, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y56) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x55) #5
  %80 = load i32, ptr %tmp57, align 4, !tbaa !8
  store i32 %80, ptr %i__1, align 4, !tbaa !8
  %81 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %82 = load i32, ptr %81, align 4, !tbaa !8
  %sub64 = sub nsw i32 %82, 1
  store i32 %sub64, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x65) #5
  %83 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %83, ptr %_x65, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y66) #5
  %84 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %84, ptr %_y66, align 4, !tbaa !8
  %85 = load i32, ptr %_x65, align 4, !tbaa !8
  %86 = load i32, ptr %_y66, align 4, !tbaa !8
  %cmp68 = icmp sgt i32 %85, %86
  br i1 %cmp68, label %cond.true70, label %cond.false71

cond.true70:                                      ; preds = %cond.end62
  %87 = load i32, ptr %_x65, align 4, !tbaa !8
  br label %cond.end72

cond.false71:                                     ; preds = %cond.end62
  %88 = load i32, ptr %_y66, align 4, !tbaa !8
  br label %cond.end72

cond.end72:                                       ; preds = %cond.false71, %cond.true70
  %cond73 = phi i32 [ %87, %cond.true70 ], [ %88, %cond.false71 ]
  store i32 %cond73, ptr %tmp67, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y66) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x65) #5
  %89 = load i32, ptr %tmp67, align 4, !tbaa !8
  store i32 %89, ptr %llarf, align 4, !tbaa !8
  store i32 2, ptr %iorbdb5, align 4, !tbaa !8
  %90 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %91 = load i32, ptr %90, align 4, !tbaa !8
  %sub74 = sub nsw i32 %91, 2
  store i32 %sub74, ptr %lorbdb5, align 4, !tbaa !8
  %92 = load i32, ptr %ilarf, align 4, !tbaa !8
  %93 = load i32, ptr %llarf, align 4, !tbaa !8
  %add75 = add nsw i32 %92, %93
  %sub76 = sub nsw i32 %add75, 1
  store i32 %sub76, ptr %i__1, align 4, !tbaa !8
  %94 = load i32, ptr %iorbdb5, align 4, !tbaa !8
  %95 = load i32, ptr %lorbdb5, align 4, !tbaa !8
  %add77 = add nsw i32 %94, %95
  %sub78 = sub nsw i32 %add77, 1
  store i32 %sub78, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x79) #5
  %96 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %96, ptr %_x79, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y80) #5
  %97 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %97, ptr %_y80, align 4, !tbaa !8
  %98 = load i32, ptr %_x79, align 4, !tbaa !8
  %99 = load i32, ptr %_y80, align 4, !tbaa !8
  %cmp82 = icmp sgt i32 %98, %99
  br i1 %cmp82, label %cond.true84, label %cond.false85

cond.true84:                                      ; preds = %cond.end72
  %100 = load i32, ptr %_x79, align 4, !tbaa !8
  br label %cond.end86

cond.false85:                                     ; preds = %cond.end72
  %101 = load i32, ptr %_y80, align 4, !tbaa !8
  br label %cond.end86

cond.end86:                                       ; preds = %cond.false85, %cond.true84
  %cond87 = phi i32 [ %100, %cond.true84 ], [ %101, %cond.false85 ]
  store i32 %cond87, ptr %tmp81, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y80) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x79) #5
  %102 = load i32, ptr %tmp81, align 4, !tbaa !8
  store i32 %102, ptr %lworkopt, align 4, !tbaa !8
  %103 = load i32, ptr %lworkopt, align 4, !tbaa !8
  store i32 %103, ptr %lworkmin, align 4, !tbaa !8
  %104 = load i32, ptr %lworkopt, align 4, !tbaa !8
  %conv88 = sitofp i32 %104 to float
  %105 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.complex, ptr %105, i64 1
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  store float %conv88, ptr %r, align 4, !tbaa !10
  %106 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx89 = getelementptr inbounds %struct.complex, ptr %106, i64 1
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx89, i32 0, i32 1
  store float 0.000000e+00, ptr %i, align 4, !tbaa !13
  %107 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %108 = load i32, ptr %107, align 4, !tbaa !8
  %109 = load i32, ptr %lworkmin, align 4, !tbaa !8
  %cmp90 = icmp slt i32 %108, %109
  br i1 %cmp90, label %land.lhs.true, label %if.end93

land.lhs.true:                                    ; preds = %cond.end86
  %110 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool = icmp ne i32 %110, 0
  br i1 %tobool, label %if.end93, label %if.then92

if.then92:                                        ; preds = %land.lhs.true
  %111 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -14, ptr %111, align 4, !tbaa !8
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %land.lhs.true, %cond.end86
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end48
  %112 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %113 = load i32, ptr %112, align 4, !tbaa !8
  %cmp95 = icmp ne i32 %113, 0
  br i1 %cmp95, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.end94
  %114 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %115 = load i32, ptr %114, align 4, !tbaa !8
  %sub98 = sub nsw i32 0, %115
  store i32 %sub98, ptr %i__1, align 4, !tbaa !8
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else99:                                        ; preds = %if.end94
  %116 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool100 = icmp ne i32 %116, 0
  br i1 %tobool100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.else99
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end102:                                        ; preds = %if.else99
  br label %if.end103

if.end103:                                        ; preds = %if.end102
  %117 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %118 = load i32, ptr %117, align 4, !tbaa !8
  store i32 %118, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end103
  %119 = load i32, ptr %i__, align 4, !tbaa !8
  %120 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp104 = icmp sle i32 %119, %120
  br i1 %cmp104, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %121 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %122 = load i32, ptr %121, align 4, !tbaa !8
  %123 = load i32, ptr %i__, align 4, !tbaa !8
  %sub106 = sub nsw i32 %122, %123
  %add107 = add nsw i32 %sub106, 1
  store i32 %add107, ptr %i__2, align 4, !tbaa !8
  %124 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %125 = load i32, ptr %i__, align 4, !tbaa !8
  %126 = load i32, ptr %i__, align 4, !tbaa !8
  %127 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %126, %127
  %add108 = add nsw i32 %125, %mul
  %idxprom = sext i32 %add108 to i64
  %arrayidx109 = getelementptr inbounds %struct.complex, ptr %124, i64 %idxprom
  %128 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %129 = load i32, ptr %i__, align 4, !tbaa !8
  %add110 = add nsw i32 %129, 1
  %130 = load i32, ptr %i__, align 4, !tbaa !8
  %131 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %mul111 = mul nsw i32 %130, %131
  %add112 = add nsw i32 %add110, %mul111
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds %struct.complex, ptr %128, i64 %idxprom113
  %132 = load ptr, ptr %taup1.addr, align 8, !tbaa !4
  %133 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom115 = sext i32 %133 to i64
  %arrayidx116 = getelementptr inbounds %struct.complex, ptr %132, i64 %idxprom115
  %call117 = call i32 @clarfgp_(ptr noundef %i__2, ptr noundef %arrayidx109, ptr noundef %arrayidx114, ptr noundef @c__1, ptr noundef %arrayidx116)
  %134 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %135 = load i32, ptr %134, align 4, !tbaa !8
  %136 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %137 = load i32, ptr %136, align 4, !tbaa !8
  %sub118 = sub nsw i32 %135, %137
  %138 = load i32, ptr %i__, align 4, !tbaa !8
  %sub119 = sub nsw i32 %sub118, %138
  %add120 = add nsw i32 %sub119, 1
  store i32 %add120, ptr %i__2, align 4, !tbaa !8
  %139 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %140 = load i32, ptr %i__, align 4, !tbaa !8
  %141 = load i32, ptr %i__, align 4, !tbaa !8
  %142 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul121 = mul nsw i32 %141, %142
  %add122 = add nsw i32 %140, %mul121
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds %struct.complex, ptr %139, i64 %idxprom123
  %143 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %144 = load i32, ptr %i__, align 4, !tbaa !8
  %add125 = add nsw i32 %144, 1
  %145 = load i32, ptr %i__, align 4, !tbaa !8
  %146 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul126 = mul nsw i32 %145, %146
  %add127 = add nsw i32 %add125, %mul126
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds %struct.complex, ptr %143, i64 %idxprom128
  %147 = load ptr, ptr %taup2.addr, align 8, !tbaa !4
  %148 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom130 = sext i32 %148 to i64
  %arrayidx131 = getelementptr inbounds %struct.complex, ptr %147, i64 %idxprom130
  %call132 = call i32 @clarfgp_(ptr noundef %i__2, ptr noundef %arrayidx124, ptr noundef %arrayidx129, ptr noundef @c__1, ptr noundef %arrayidx131)
  %149 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %150 = load i32, ptr %i__, align 4, !tbaa !8
  %151 = load i32, ptr %i__, align 4, !tbaa !8
  %152 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul133 = mul nsw i32 %151, %152
  %add134 = add nsw i32 %150, %mul133
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds %struct.complex, ptr %149, i64 %idxprom135
  %r137 = getelementptr inbounds %struct.complex, ptr %arrayidx136, i32 0, i32 0
  %153 = load float, ptr %r137, align 4, !tbaa !10
  %conv138 = fpext float %153 to double
  %154 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %155 = load i32, ptr %i__, align 4, !tbaa !8
  %156 = load i32, ptr %i__, align 4, !tbaa !8
  %157 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %mul139 = mul nsw i32 %156, %157
  %add140 = add nsw i32 %155, %mul139
  %idxprom141 = sext i32 %add140 to i64
  %arrayidx142 = getelementptr inbounds %struct.complex, ptr %154, i64 %idxprom141
  %r143 = getelementptr inbounds %struct.complex, ptr %arrayidx142, i32 0, i32 0
  %158 = load float, ptr %r143, align 4, !tbaa !10
  %conv144 = fpext float %158 to double
  %call145 = call double @atan2(double noundef %conv138, double noundef %conv144) #5
  %conv146 = fptrunc double %call145 to float
  %159 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %160 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom147 = sext i32 %160 to i64
  %arrayidx148 = getelementptr inbounds float, ptr %159, i64 %idxprom147
  store float %conv146, ptr %arrayidx148, align 4, !tbaa !14
  %161 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %162 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom149 = sext i32 %162 to i64
  %arrayidx150 = getelementptr inbounds float, ptr %161, i64 %idxprom149
  %163 = load float, ptr %arrayidx150, align 4, !tbaa !14
  %conv151 = fpext float %163 to double
  %call152 = call double @cos(double noundef %conv151) #5
  %conv153 = fptrunc double %call152 to float
  store float %conv153, ptr %c__, align 4, !tbaa !14
  %164 = load ptr, ptr %theta.addr, align 8, !tbaa !4
  %165 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom154 = sext i32 %165 to i64
  %arrayidx155 = getelementptr inbounds float, ptr %164, i64 %idxprom154
  %166 = load float, ptr %arrayidx155, align 4, !tbaa !14
  %conv156 = fpext float %166 to double
  %call157 = call double @sin(double noundef %conv156) #5
  %conv158 = fptrunc double %call157 to float
  store float %conv158, ptr %s, align 4, !tbaa !14
  %167 = load i32, ptr %i__, align 4, !tbaa !8
  %168 = load i32, ptr %i__, align 4, !tbaa !8
  %169 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %mul159 = mul nsw i32 %168, %169
  %add160 = add nsw i32 %167, %mul159
  store i32 %add160, ptr %i__2, align 4, !tbaa !8
  %170 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %171 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom161 = sext i32 %171 to i64
  %arrayidx162 = getelementptr inbounds %struct.complex, ptr %170, i64 %idxprom161
  %r163 = getelementptr inbounds %struct.complex, ptr %arrayidx162, i32 0, i32 0
  store float 1.000000e+00, ptr %r163, align 4, !tbaa !10
  %172 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %173 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom164 = sext i32 %173 to i64
  %arrayidx165 = getelementptr inbounds %struct.complex, ptr %172, i64 %idxprom164
  %i166 = getelementptr inbounds %struct.complex, ptr %arrayidx165, i32 0, i32 1
  store float 0.000000e+00, ptr %i166, align 4, !tbaa !13
  %174 = load i32, ptr %i__, align 4, !tbaa !8
  %175 = load i32, ptr %i__, align 4, !tbaa !8
  %176 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul167 = mul nsw i32 %175, %176
  %add168 = add nsw i32 %174, %mul167
  store i32 %add168, ptr %i__2, align 4, !tbaa !8
  %177 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %178 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom169 = sext i32 %178 to i64
  %arrayidx170 = getelementptr inbounds %struct.complex, ptr %177, i64 %idxprom169
  %r171 = getelementptr inbounds %struct.complex, ptr %arrayidx170, i32 0, i32 0
  store float 1.000000e+00, ptr %r171, align 4, !tbaa !10
  %179 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %180 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom172 = sext i32 %180 to i64
  %arrayidx173 = getelementptr inbounds %struct.complex, ptr %179, i64 %idxprom172
  %i174 = getelementptr inbounds %struct.complex, ptr %arrayidx173, i32 0, i32 1
  store float 0.000000e+00, ptr %i174, align 4, !tbaa !13
  %181 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %182 = load i32, ptr %181, align 4, !tbaa !8
  %183 = load i32, ptr %i__, align 4, !tbaa !8
  %sub175 = sub nsw i32 %182, %183
  %add176 = add nsw i32 %sub175, 1
  store i32 %add176, ptr %i__2, align 4, !tbaa !8
  %184 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %185 = load i32, ptr %184, align 4, !tbaa !8
  %186 = load i32, ptr %i__, align 4, !tbaa !8
  %sub177 = sub nsw i32 %185, %186
  store i32 %sub177, ptr %i__3, align 4, !tbaa !8
  %187 = load ptr, ptr %taup1.addr, align 8, !tbaa !4
  %188 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom178 = sext i32 %188 to i64
  %arrayidx179 = getelementptr inbounds %struct.complex, ptr %187, i64 %idxprom178
  call void @r_cnjg(ptr noundef %q__1, ptr noundef %arrayidx179)
  %189 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %190 = load i32, ptr %i__, align 4, !tbaa !8
  %191 = load i32, ptr %i__, align 4, !tbaa !8
  %192 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %mul180 = mul nsw i32 %191, %192
  %add181 = add nsw i32 %190, %mul180
  %idxprom182 = sext i32 %add181 to i64
  %arrayidx183 = getelementptr inbounds %struct.complex, ptr %189, i64 %idxprom182
  %193 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %194 = load i32, ptr %i__, align 4, !tbaa !8
  %195 = load i32, ptr %i__, align 4, !tbaa !8
  %add184 = add nsw i32 %195, 1
  %196 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %mul185 = mul nsw i32 %add184, %196
  %add186 = add nsw i32 %194, %mul185
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds %struct.complex, ptr %193, i64 %idxprom187
  %197 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %198 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %199 = load i32, ptr %ilarf, align 4, !tbaa !8
  %idxprom189 = sext i32 %199 to i64
  %arrayidx190 = getelementptr inbounds %struct.complex, ptr %198, i64 %idxprom189
  %call191 = call i32 @clarf_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx183, ptr noundef @c__1, ptr noundef %q__1, ptr noundef %arrayidx188, ptr noundef %197, ptr noundef %arrayidx190)
  %200 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %201 = load i32, ptr %200, align 4, !tbaa !8
  %202 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %203 = load i32, ptr %202, align 4, !tbaa !8
  %sub192 = sub nsw i32 %201, %203
  %204 = load i32, ptr %i__, align 4, !tbaa !8
  %sub193 = sub nsw i32 %sub192, %204
  %add194 = add nsw i32 %sub193, 1
  store i32 %add194, ptr %i__2, align 4, !tbaa !8
  %205 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %206 = load i32, ptr %205, align 4, !tbaa !8
  %207 = load i32, ptr %i__, align 4, !tbaa !8
  %sub195 = sub nsw i32 %206, %207
  store i32 %sub195, ptr %i__3, align 4, !tbaa !8
  %208 = load ptr, ptr %taup2.addr, align 8, !tbaa !4
  %209 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom196 = sext i32 %209 to i64
  %arrayidx197 = getelementptr inbounds %struct.complex, ptr %208, i64 %idxprom196
  call void @r_cnjg(ptr noundef %q__1, ptr noundef %arrayidx197)
  %210 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %211 = load i32, ptr %i__, align 4, !tbaa !8
  %212 = load i32, ptr %i__, align 4, !tbaa !8
  %213 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul198 = mul nsw i32 %212, %213
  %add199 = add nsw i32 %211, %mul198
  %idxprom200 = sext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds %struct.complex, ptr %210, i64 %idxprom200
  %214 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %215 = load i32, ptr %i__, align 4, !tbaa !8
  %216 = load i32, ptr %i__, align 4, !tbaa !8
  %add202 = add nsw i32 %216, 1
  %217 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul203 = mul nsw i32 %add202, %217
  %add204 = add nsw i32 %215, %mul203
  %idxprom205 = sext i32 %add204 to i64
  %arrayidx206 = getelementptr inbounds %struct.complex, ptr %214, i64 %idxprom205
  %218 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %219 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %220 = load i32, ptr %ilarf, align 4, !tbaa !8
  %idxprom207 = sext i32 %220 to i64
  %arrayidx208 = getelementptr inbounds %struct.complex, ptr %219, i64 %idxprom207
  %call209 = call i32 @clarf_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx201, ptr noundef @c__1, ptr noundef %q__1, ptr noundef %arrayidx206, ptr noundef %218, ptr noundef %arrayidx208)
  %221 = load i32, ptr %i__, align 4, !tbaa !8
  %222 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %223 = load i32, ptr %222, align 4, !tbaa !8
  %cmp210 = icmp slt i32 %221, %223
  br i1 %cmp210, label %if.then212, label %if.end365

if.then212:                                       ; preds = %for.body
  %224 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %225 = load i32, ptr %224, align 4, !tbaa !8
  %226 = load i32, ptr %i__, align 4, !tbaa !8
  %sub213 = sub nsw i32 %225, %226
  store i32 %sub213, ptr %i__2, align 4, !tbaa !8
  %227 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %228 = load i32, ptr %i__, align 4, !tbaa !8
  %229 = load i32, ptr %i__, align 4, !tbaa !8
  %add214 = add nsw i32 %229, 1
  %230 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %mul215 = mul nsw i32 %add214, %230
  %add216 = add nsw i32 %228, %mul215
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds %struct.complex, ptr %227, i64 %idxprom217
  %231 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %232 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %233 = load i32, ptr %i__, align 4, !tbaa !8
  %234 = load i32, ptr %i__, align 4, !tbaa !8
  %add219 = add nsw i32 %234, 1
  %235 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul220 = mul nsw i32 %add219, %235
  %add221 = add nsw i32 %233, %mul220
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds %struct.complex, ptr %232, i64 %idxprom222
  %236 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %call224 = call i32 @csrot_(ptr noundef %i__2, ptr noundef %arrayidx218, ptr noundef %231, ptr noundef %arrayidx223, ptr noundef %236, ptr noundef %c__, ptr noundef %s)
  %237 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %238 = load i32, ptr %237, align 4, !tbaa !8
  %239 = load i32, ptr %i__, align 4, !tbaa !8
  %sub225 = sub nsw i32 %238, %239
  store i32 %sub225, ptr %i__2, align 4, !tbaa !8
  %240 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %241 = load i32, ptr %i__, align 4, !tbaa !8
  %242 = load i32, ptr %i__, align 4, !tbaa !8
  %add226 = add nsw i32 %242, 1
  %243 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul227 = mul nsw i32 %add226, %243
  %add228 = add nsw i32 %241, %mul227
  %idxprom229 = sext i32 %add228 to i64
  %arrayidx230 = getelementptr inbounds %struct.complex, ptr %240, i64 %idxprom229
  %244 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %call231 = call i32 @clacgv_(ptr noundef %i__2, ptr noundef %arrayidx230, ptr noundef %244)
  %245 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %246 = load i32, ptr %245, align 4, !tbaa !8
  %247 = load i32, ptr %i__, align 4, !tbaa !8
  %sub232 = sub nsw i32 %246, %247
  store i32 %sub232, ptr %i__2, align 4, !tbaa !8
  %248 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %249 = load i32, ptr %i__, align 4, !tbaa !8
  %250 = load i32, ptr %i__, align 4, !tbaa !8
  %add233 = add nsw i32 %250, 1
  %251 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul234 = mul nsw i32 %add233, %251
  %add235 = add nsw i32 %249, %mul234
  %idxprom236 = sext i32 %add235 to i64
  %arrayidx237 = getelementptr inbounds %struct.complex, ptr %248, i64 %idxprom236
  %252 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %253 = load i32, ptr %i__, align 4, !tbaa !8
  %254 = load i32, ptr %i__, align 4, !tbaa !8
  %add238 = add nsw i32 %254, 2
  %255 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul239 = mul nsw i32 %add238, %255
  %add240 = add nsw i32 %253, %mul239
  %idxprom241 = sext i32 %add240 to i64
  %arrayidx242 = getelementptr inbounds %struct.complex, ptr %252, i64 %idxprom241
  %256 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %257 = load ptr, ptr %tauq1.addr, align 8, !tbaa !4
  %258 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom243 = sext i32 %258 to i64
  %arrayidx244 = getelementptr inbounds %struct.complex, ptr %257, i64 %idxprom243
  %call245 = call i32 @clarfgp_(ptr noundef %i__2, ptr noundef %arrayidx237, ptr noundef %arrayidx242, ptr noundef %256, ptr noundef %arrayidx244)
  %259 = load i32, ptr %i__, align 4, !tbaa !8
  %260 = load i32, ptr %i__, align 4, !tbaa !8
  %add246 = add nsw i32 %260, 1
  %261 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul247 = mul nsw i32 %add246, %261
  %add248 = add nsw i32 %259, %mul247
  store i32 %add248, ptr %i__2, align 4, !tbaa !8
  %262 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %263 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom249 = sext i32 %263 to i64
  %arrayidx250 = getelementptr inbounds %struct.complex, ptr %262, i64 %idxprom249
  %r251 = getelementptr inbounds %struct.complex, ptr %arrayidx250, i32 0, i32 0
  %264 = load float, ptr %r251, align 4, !tbaa !10
  store float %264, ptr %s, align 4, !tbaa !14
  %265 = load i32, ptr %i__, align 4, !tbaa !8
  %266 = load i32, ptr %i__, align 4, !tbaa !8
  %add252 = add nsw i32 %266, 1
  %267 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul253 = mul nsw i32 %add252, %267
  %add254 = add nsw i32 %265, %mul253
  store i32 %add254, ptr %i__2, align 4, !tbaa !8
  %268 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %269 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom255 = sext i32 %269 to i64
  %arrayidx256 = getelementptr inbounds %struct.complex, ptr %268, i64 %idxprom255
  %r257 = getelementptr inbounds %struct.complex, ptr %arrayidx256, i32 0, i32 0
  store float 1.000000e+00, ptr %r257, align 4, !tbaa !10
  %270 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %271 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom258 = sext i32 %271 to i64
  %arrayidx259 = getelementptr inbounds %struct.complex, ptr %270, i64 %idxprom258
  %i260 = getelementptr inbounds %struct.complex, ptr %arrayidx259, i32 0, i32 1
  store float 0.000000e+00, ptr %i260, align 4, !tbaa !13
  %272 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %273 = load i32, ptr %272, align 4, !tbaa !8
  %274 = load i32, ptr %i__, align 4, !tbaa !8
  %sub261 = sub nsw i32 %273, %274
  store i32 %sub261, ptr %i__2, align 4, !tbaa !8
  %275 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %276 = load i32, ptr %275, align 4, !tbaa !8
  %277 = load i32, ptr %i__, align 4, !tbaa !8
  %sub262 = sub nsw i32 %276, %277
  store i32 %sub262, ptr %i__3, align 4, !tbaa !8
  %278 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %279 = load i32, ptr %i__, align 4, !tbaa !8
  %280 = load i32, ptr %i__, align 4, !tbaa !8
  %add263 = add nsw i32 %280, 1
  %281 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul264 = mul nsw i32 %add263, %281
  %add265 = add nsw i32 %279, %mul264
  %idxprom266 = sext i32 %add265 to i64
  %arrayidx267 = getelementptr inbounds %struct.complex, ptr %278, i64 %idxprom266
  %282 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %283 = load ptr, ptr %tauq1.addr, align 8, !tbaa !4
  %284 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom268 = sext i32 %284 to i64
  %arrayidx269 = getelementptr inbounds %struct.complex, ptr %283, i64 %idxprom268
  %285 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %286 = load i32, ptr %i__, align 4, !tbaa !8
  %add270 = add nsw i32 %286, 1
  %287 = load i32, ptr %i__, align 4, !tbaa !8
  %add271 = add nsw i32 %287, 1
  %288 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %mul272 = mul nsw i32 %add271, %288
  %add273 = add nsw i32 %add270, %mul272
  %idxprom274 = sext i32 %add273 to i64
  %arrayidx275 = getelementptr inbounds %struct.complex, ptr %285, i64 %idxprom274
  %289 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %290 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %291 = load i32, ptr %ilarf, align 4, !tbaa !8
  %idxprom276 = sext i32 %291 to i64
  %arrayidx277 = getelementptr inbounds %struct.complex, ptr %290, i64 %idxprom276
  %call278 = call i32 @clarf_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx267, ptr noundef %282, ptr noundef %arrayidx269, ptr noundef %arrayidx275, ptr noundef %289, ptr noundef %arrayidx277)
  %292 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %293 = load i32, ptr %292, align 4, !tbaa !8
  %294 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %295 = load i32, ptr %294, align 4, !tbaa !8
  %sub279 = sub nsw i32 %293, %295
  %296 = load i32, ptr %i__, align 4, !tbaa !8
  %sub280 = sub nsw i32 %sub279, %296
  store i32 %sub280, ptr %i__2, align 4, !tbaa !8
  %297 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %298 = load i32, ptr %297, align 4, !tbaa !8
  %299 = load i32, ptr %i__, align 4, !tbaa !8
  %sub281 = sub nsw i32 %298, %299
  store i32 %sub281, ptr %i__3, align 4, !tbaa !8
  %300 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %301 = load i32, ptr %i__, align 4, !tbaa !8
  %302 = load i32, ptr %i__, align 4, !tbaa !8
  %add282 = add nsw i32 %302, 1
  %303 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul283 = mul nsw i32 %add282, %303
  %add284 = add nsw i32 %301, %mul283
  %idxprom285 = sext i32 %add284 to i64
  %arrayidx286 = getelementptr inbounds %struct.complex, ptr %300, i64 %idxprom285
  %304 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %305 = load ptr, ptr %tauq1.addr, align 8, !tbaa !4
  %306 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom287 = sext i32 %306 to i64
  %arrayidx288 = getelementptr inbounds %struct.complex, ptr %305, i64 %idxprom287
  %307 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %308 = load i32, ptr %i__, align 4, !tbaa !8
  %add289 = add nsw i32 %308, 1
  %309 = load i32, ptr %i__, align 4, !tbaa !8
  %add290 = add nsw i32 %309, 1
  %310 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul291 = mul nsw i32 %add290, %310
  %add292 = add nsw i32 %add289, %mul291
  %idxprom293 = sext i32 %add292 to i64
  %arrayidx294 = getelementptr inbounds %struct.complex, ptr %307, i64 %idxprom293
  %311 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %312 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %313 = load i32, ptr %ilarf, align 4, !tbaa !8
  %idxprom295 = sext i32 %313 to i64
  %arrayidx296 = getelementptr inbounds %struct.complex, ptr %312, i64 %idxprom295
  %call297 = call i32 @clarf_(ptr noundef @.str.2, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx286, ptr noundef %304, ptr noundef %arrayidx288, ptr noundef %arrayidx294, ptr noundef %311, ptr noundef %arrayidx296)
  %314 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %315 = load i32, ptr %314, align 4, !tbaa !8
  %316 = load i32, ptr %i__, align 4, !tbaa !8
  %sub298 = sub nsw i32 %315, %316
  store i32 %sub298, ptr %i__2, align 4, !tbaa !8
  %317 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %318 = load i32, ptr %i__, align 4, !tbaa !8
  %319 = load i32, ptr %i__, align 4, !tbaa !8
  %add299 = add nsw i32 %319, 1
  %320 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul300 = mul nsw i32 %add299, %320
  %add301 = add nsw i32 %318, %mul300
  %idxprom302 = sext i32 %add301 to i64
  %arrayidx303 = getelementptr inbounds %struct.complex, ptr %317, i64 %idxprom302
  %321 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %call304 = call i32 @clacgv_(ptr noundef %i__2, ptr noundef %arrayidx303, ptr noundef %321)
  %322 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %323 = load i32, ptr %322, align 4, !tbaa !8
  %324 = load i32, ptr %i__, align 4, !tbaa !8
  %sub305 = sub nsw i32 %323, %324
  store i32 %sub305, ptr %i__2, align 4, !tbaa !8
  %325 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %326 = load i32, ptr %i__, align 4, !tbaa !8
  %add306 = add nsw i32 %326, 1
  %327 = load i32, ptr %i__, align 4, !tbaa !8
  %add307 = add nsw i32 %327, 1
  %328 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %mul308 = mul nsw i32 %add307, %328
  %add309 = add nsw i32 %add306, %mul308
  %idxprom310 = sext i32 %add309 to i64
  %arrayidx311 = getelementptr inbounds %struct.complex, ptr %325, i64 %idxprom310
  %call312 = call float @scnrm2_(ptr noundef %i__2, ptr noundef %arrayidx311, ptr noundef @c__1)
  store float %call312, ptr %r__1, align 4, !tbaa !14
  %329 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %330 = load i32, ptr %329, align 4, !tbaa !8
  %331 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %332 = load i32, ptr %331, align 4, !tbaa !8
  %sub313 = sub nsw i32 %330, %332
  %333 = load i32, ptr %i__, align 4, !tbaa !8
  %sub314 = sub nsw i32 %sub313, %333
  store i32 %sub314, ptr %i__3, align 4, !tbaa !8
  %334 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %335 = load i32, ptr %i__, align 4, !tbaa !8
  %add315 = add nsw i32 %335, 1
  %336 = load i32, ptr %i__, align 4, !tbaa !8
  %add316 = add nsw i32 %336, 1
  %337 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul317 = mul nsw i32 %add316, %337
  %add318 = add nsw i32 %add315, %mul317
  %idxprom319 = sext i32 %add318 to i64
  %arrayidx320 = getelementptr inbounds %struct.complex, ptr %334, i64 %idxprom319
  %call321 = call float @scnrm2_(ptr noundef %i__3, ptr noundef %arrayidx320, ptr noundef @c__1)
  store float %call321, ptr %r__2, align 4, !tbaa !14
  %338 = load float, ptr %r__1, align 4, !tbaa !14
  %339 = load float, ptr %r__1, align 4, !tbaa !14
  %340 = load float, ptr %r__2, align 4, !tbaa !14
  %341 = load float, ptr %r__2, align 4, !tbaa !14
  %mul323 = fmul float %340, %341
  %342 = call float @llvm.fmuladd.f32(float %338, float %339, float %mul323)
  %conv324 = fpext float %342 to double
  %call325 = call double @sqrt(double noundef %conv324) #5
  %conv326 = fptrunc double %call325 to float
  store float %conv326, ptr %c__, align 4, !tbaa !14
  %343 = load float, ptr %s, align 4, !tbaa !14
  %conv327 = fpext float %343 to double
  %344 = load float, ptr %c__, align 4, !tbaa !14
  %conv328 = fpext float %344 to double
  %call329 = call double @atan2(double noundef %conv327, double noundef %conv328) #5
  %conv330 = fptrunc double %call329 to float
  %345 = load ptr, ptr %phi.addr, align 8, !tbaa !4
  %346 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom331 = sext i32 %346 to i64
  %arrayidx332 = getelementptr inbounds float, ptr %345, i64 %idxprom331
  store float %conv330, ptr %arrayidx332, align 4, !tbaa !14
  %347 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %348 = load i32, ptr %347, align 4, !tbaa !8
  %349 = load i32, ptr %i__, align 4, !tbaa !8
  %sub333 = sub nsw i32 %348, %349
  store i32 %sub333, ptr %i__2, align 4, !tbaa !8
  %350 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %351 = load i32, ptr %350, align 4, !tbaa !8
  %352 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %353 = load i32, ptr %352, align 4, !tbaa !8
  %sub334 = sub nsw i32 %351, %353
  %354 = load i32, ptr %i__, align 4, !tbaa !8
  %sub335 = sub nsw i32 %sub334, %354
  store i32 %sub335, ptr %i__3, align 4, !tbaa !8
  %355 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %356 = load i32, ptr %355, align 4, !tbaa !8
  %357 = load i32, ptr %i__, align 4, !tbaa !8
  %sub336 = sub nsw i32 %356, %357
  %sub337 = sub nsw i32 %sub336, 1
  store i32 %sub337, ptr %i__4, align 4, !tbaa !8
  %358 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %359 = load i32, ptr %i__, align 4, !tbaa !8
  %add338 = add nsw i32 %359, 1
  %360 = load i32, ptr %i__, align 4, !tbaa !8
  %add339 = add nsw i32 %360, 1
  %361 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %mul340 = mul nsw i32 %add339, %361
  %add341 = add nsw i32 %add338, %mul340
  %idxprom342 = sext i32 %add341 to i64
  %arrayidx343 = getelementptr inbounds %struct.complex, ptr %358, i64 %idxprom342
  %362 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %363 = load i32, ptr %i__, align 4, !tbaa !8
  %add344 = add nsw i32 %363, 1
  %364 = load i32, ptr %i__, align 4, !tbaa !8
  %add345 = add nsw i32 %364, 1
  %365 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul346 = mul nsw i32 %add345, %365
  %add347 = add nsw i32 %add344, %mul346
  %idxprom348 = sext i32 %add347 to i64
  %arrayidx349 = getelementptr inbounds %struct.complex, ptr %362, i64 %idxprom348
  %366 = load ptr, ptr %x11.addr, align 8, !tbaa !4
  %367 = load i32, ptr %i__, align 4, !tbaa !8
  %add350 = add nsw i32 %367, 1
  %368 = load i32, ptr %i__, align 4, !tbaa !8
  %add351 = add nsw i32 %368, 2
  %369 = load i32, ptr %x11_dim1, align 4, !tbaa !8
  %mul352 = mul nsw i32 %add351, %369
  %add353 = add nsw i32 %add350, %mul352
  %idxprom354 = sext i32 %add353 to i64
  %arrayidx355 = getelementptr inbounds %struct.complex, ptr %366, i64 %idxprom354
  %370 = load ptr, ptr %ldx11.addr, align 8, !tbaa !4
  %371 = load ptr, ptr %x21.addr, align 8, !tbaa !4
  %372 = load i32, ptr %i__, align 4, !tbaa !8
  %add356 = add nsw i32 %372, 1
  %373 = load i32, ptr %i__, align 4, !tbaa !8
  %add357 = add nsw i32 %373, 2
  %374 = load i32, ptr %x21_dim1, align 4, !tbaa !8
  %mul358 = mul nsw i32 %add357, %374
  %add359 = add nsw i32 %add356, %mul358
  %idxprom360 = sext i32 %add359 to i64
  %arrayidx361 = getelementptr inbounds %struct.complex, ptr %371, i64 %idxprom360
  %375 = load ptr, ptr %ldx21.addr, align 8, !tbaa !4
  %376 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %377 = load i32, ptr %iorbdb5, align 4, !tbaa !8
  %idxprom362 = sext i32 %377 to i64
  %arrayidx363 = getelementptr inbounds %struct.complex, ptr %376, i64 %idxprom362
  %call364 = call i32 @cunbdb5_(ptr noundef %i__2, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %arrayidx343, ptr noundef @c__1, ptr noundef %arrayidx349, ptr noundef @c__1, ptr noundef %arrayidx355, ptr noundef %370, ptr noundef %arrayidx361, ptr noundef %375, ptr noundef %arrayidx363, ptr noundef %lorbdb5, ptr noundef %childinfo)
  br label %if.end365

if.end365:                                        ; preds = %if.then212, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end365
  %378 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %378, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then101, %if.then97
  call void @llvm.lifetime.end.p0(i64 4, ptr %lorbdb5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %iorbdb5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %lquery) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %llarf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ilarf) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %childinfo) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %c__) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %lworkopt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %lworkmin) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x21_offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x21_dim1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x11_offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x11_dim1) #5
  %379 = load i32, ptr %retval, align 4
  ret i32 %379
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @clarfgp_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare double @atan2(double noundef, double noundef) #3

; Function Attrs: nounwind
declare double @cos(double noundef) #3

; Function Attrs: nounwind
declare double @sin(double noundef) #3

declare void @r_cnjg(ptr noundef, ptr noundef) #2

declare i32 @clarf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @csrot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @clacgv_(ptr noundef, ptr noundef, ptr noundef) #2

declare float @scnrm2_(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare i32 @cunbdb5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!14 = !{!12, !12, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}

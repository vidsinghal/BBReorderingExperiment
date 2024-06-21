; ModuleID = 'samples/101.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/cgemlq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"CGEMLQ\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cgemlq_(ptr noundef %side, ptr noundef %trans, ptr noundef %m, ptr noundef %n, ptr noundef %k, ptr noundef %a, ptr noundef %lda, ptr noundef %t, ptr noundef %tsize, ptr noundef %c__, ptr noundef %ldc, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %side.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %tsize.addr = alloca ptr, align 8
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
  %r__1 = alloca float, align 4
  %mb = alloca i32, align 4
  %nb = alloca i32, align 4
  %mn = alloca i32, align 4
  %lw = alloca i32, align 4
  %left = alloca i32, align 4
  %tran = alloca i32, align 4
  %right = alloca i32, align 4
  %nblcks = alloca i32, align 4
  %notran = alloca i32, align 4
  %lquery = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x67 = alloca i32, align 4
  %_y68 = alloca i32, align 4
  %tmp69 = alloca i32, align 4
  %_x80 = alloca i32, align 4
  %_y81 = alloca i32, align 4
  %tmp82 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x121 = alloca i32, align 4
  %_y122 = alloca i32, align 4
  %tmp123 = alloca i32, align 4
  %_x130 = alloca i32, align 4
  %_y131 = alloca i32, align 4
  %tmp132 = alloca i32, align 4
  %_x143 = alloca i32, align 4
  %_y144 = alloca i32, align 4
  %tmp145 = alloca i32, align 4
  %_x165 = alloca i32, align 4
  %_y166 = alloca i32, align 4
  %tmp167 = alloca i32, align 4
  store ptr %side, ptr %side.addr, align 8, !tbaa !4
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %tsize, ptr %tsize.addr, align 8, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %mb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lw) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %left) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tran) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %right) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nblcks) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %notran) #3
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
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %t.addr, align 8, !tbaa !4
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
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %c__.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds %struct.complex, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %work.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !8
  %cmp = icmp eq i32 %13, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4, !tbaa !8
  %14 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %14, ptr noundef @.str)
  store i32 %call, ptr %notran, align 4, !tbaa !8
  %15 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call6 = call i32 @lsame_(ptr noundef %15, ptr noundef @.str.1)
  store i32 %call6, ptr %tran, align 4, !tbaa !8
  %16 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call7 = call i32 @lsame_(ptr noundef %16, ptr noundef @.str.2)
  store i32 %call7, ptr %left, align 4, !tbaa !8
  %17 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call8 = call i32 @lsame_(ptr noundef %17, ptr noundef @.str.3)
  store i32 %call8, ptr %right, align 4, !tbaa !8
  %18 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.complex, ptr %18, i64 2
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  %19 = load float, ptr %r, align 4, !tbaa !10
  %conv9 = fptosi float %19 to i32
  store i32 %conv9, ptr %mb, align 4, !tbaa !8
  %20 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %arrayidx10 = getelementptr inbounds %struct.complex, ptr %20, i64 3
  %r11 = getelementptr inbounds %struct.complex, ptr %arrayidx10, i32 0, i32 0
  %21 = load float, ptr %r11, align 4, !tbaa !10
  %conv12 = fptosi float %21 to i32
  store i32 %conv12, ptr %nb, align 4, !tbaa !8
  %22 = load i32, ptr %left, align 4, !tbaa !8
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %23 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  %25 = load i32, ptr %mb, align 4, !tbaa !8
  %mul = mul nsw i32 %24, %25
  store i32 %mul, ptr %lw, align 4, !tbaa !8
  %26 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  store i32 %27, ptr %mn, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %29 = load i32, ptr %28, align 4, !tbaa !8
  %30 = load i32, ptr %mb, align 4, !tbaa !8
  %mul13 = mul nsw i32 %29, %30
  store i32 %mul13, ptr %lw, align 4, !tbaa !8
  %31 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %32 = load i32, ptr %31, align 4, !tbaa !8
  store i32 %32, ptr %mn, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = load i32, ptr %nb, align 4, !tbaa !8
  %34 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %35 = load i32, ptr %34, align 4, !tbaa !8
  %cmp14 = icmp sgt i32 %33, %35
  br i1 %cmp14, label %land.lhs.true, label %if.else31

land.lhs.true:                                    ; preds = %if.end
  %36 = load i32, ptr %mn, align 4, !tbaa !8
  %37 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %cmp16 = icmp sgt i32 %36, %38
  br i1 %cmp16, label %if.then18, label %if.else31

if.then18:                                        ; preds = %land.lhs.true
  %39 = load i32, ptr %mn, align 4, !tbaa !8
  %40 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !8
  %sub = sub nsw i32 %39, %41
  %42 = load i32, ptr %nb, align 4, !tbaa !8
  %43 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %44 = load i32, ptr %43, align 4, !tbaa !8
  %sub19 = sub nsw i32 %42, %44
  %rem = srem i32 %sub, %sub19
  %cmp20 = icmp eq i32 %rem, 0
  br i1 %cmp20, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.then18
  %45 = load i32, ptr %mn, align 4, !tbaa !8
  %46 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %47 = load i32, ptr %46, align 4, !tbaa !8
  %sub23 = sub nsw i32 %45, %47
  %48 = load i32, ptr %nb, align 4, !tbaa !8
  %49 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %50 = load i32, ptr %49, align 4, !tbaa !8
  %sub24 = sub nsw i32 %48, %50
  %div = sdiv i32 %sub23, %sub24
  store i32 %div, ptr %nblcks, align 4, !tbaa !8
  br label %if.end30

if.else25:                                        ; preds = %if.then18
  %51 = load i32, ptr %mn, align 4, !tbaa !8
  %52 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %53 = load i32, ptr %52, align 4, !tbaa !8
  %sub26 = sub nsw i32 %51, %53
  %54 = load i32, ptr %nb, align 4, !tbaa !8
  %55 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !8
  %sub27 = sub nsw i32 %54, %56
  %div28 = sdiv i32 %sub26, %sub27
  %add29 = add nsw i32 %div28, 1
  store i32 %add29, ptr %nblcks, align 4, !tbaa !8
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.then22
  br label %if.end32

if.else31:                                        ; preds = %land.lhs.true, %if.end
  store i32 1, ptr %nblcks, align 4, !tbaa !8
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.end30
  %57 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %57, align 4, !tbaa !8
  %58 = load i32, ptr %left, align 4, !tbaa !8
  %tobool33 = icmp ne i32 %58, 0
  br i1 %tobool33, label %if.else37, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.end32
  %59 = load i32, ptr %right, align 4, !tbaa !8
  %tobool35 = icmp ne i32 %59, 0
  br i1 %tobool35, label %if.else37, label %if.then36

if.then36:                                        ; preds = %land.lhs.true34
  %60 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %60, align 4, !tbaa !8
  br label %if.end102

if.else37:                                        ; preds = %land.lhs.true34, %if.end32
  %61 = load i32, ptr %tran, align 4, !tbaa !8
  %tobool38 = icmp ne i32 %61, 0
  br i1 %tobool38, label %if.else42, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.else37
  %62 = load i32, ptr %notran, align 4, !tbaa !8
  %tobool40 = icmp ne i32 %62, 0
  br i1 %tobool40, label %if.else42, label %if.then41

if.then41:                                        ; preds = %land.lhs.true39
  %63 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %63, align 4, !tbaa !8
  br label %if.end101

if.else42:                                        ; preds = %land.lhs.true39, %if.else37
  %64 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %65 = load i32, ptr %64, align 4, !tbaa !8
  %cmp43 = icmp slt i32 %65, 0
  br i1 %cmp43, label %if.then45, label %if.else46

if.then45:                                        ; preds = %if.else42
  %66 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %66, align 4, !tbaa !8
  br label %if.end100

if.else46:                                        ; preds = %if.else42
  %67 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %cmp47 = icmp slt i32 %68, 0
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.else46
  %69 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %69, align 4, !tbaa !8
  br label %if.end99

if.else50:                                        ; preds = %if.else46
  %70 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %71 = load i32, ptr %70, align 4, !tbaa !8
  %cmp51 = icmp slt i32 %71, 0
  br i1 %cmp51, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else50
  %72 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %73 = load i32, ptr %72, align 4, !tbaa !8
  %74 = load i32, ptr %mn, align 4, !tbaa !8
  %cmp53 = icmp sgt i32 %73, %74
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %lor.lhs.false, %if.else50
  %75 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %75, align 4, !tbaa !8
  br label %if.end98

if.else56:                                        ; preds = %lor.lhs.false
  %76 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %77 = load i32, ptr %76, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %78 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %79 = load i32, ptr %78, align 4, !tbaa !8
  store i32 %79, ptr %_y, align 4, !tbaa !8
  %80 = load i32, ptr %_x, align 4, !tbaa !8
  %81 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp57 = icmp sgt i32 %80, %81
  br i1 %cmp57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else56
  %82 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else56
  %83 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %82, %cond.true ], [ %83, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %84 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp59 = icmp slt i32 %77, %84
  br i1 %cmp59, label %if.then61, label %if.else62

if.then61:                                        ; preds = %cond.end
  %85 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -7, ptr %85, align 4, !tbaa !8
  br label %if.end97

if.else62:                                        ; preds = %cond.end
  %86 = load ptr, ptr %tsize.addr, align 8, !tbaa !4
  %87 = load i32, ptr %86, align 4, !tbaa !8
  %cmp63 = icmp slt i32 %87, 5
  br i1 %cmp63, label %if.then65, label %if.else66

if.then65:                                        ; preds = %if.else62
  %88 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -9, ptr %88, align 4, !tbaa !8
  br label %if.end96

if.else66:                                        ; preds = %if.else62
  %89 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %90 = load i32, ptr %89, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x67) #3
  store i32 1, ptr %_x67, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y68) #3
  %91 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %92 = load i32, ptr %91, align 4, !tbaa !8
  store i32 %92, ptr %_y68, align 4, !tbaa !8
  %93 = load i32, ptr %_x67, align 4, !tbaa !8
  %94 = load i32, ptr %_y68, align 4, !tbaa !8
  %cmp70 = icmp sgt i32 %93, %94
  br i1 %cmp70, label %cond.true72, label %cond.false73

cond.true72:                                      ; preds = %if.else66
  %95 = load i32, ptr %_x67, align 4, !tbaa !8
  br label %cond.end74

cond.false73:                                     ; preds = %if.else66
  %96 = load i32, ptr %_y68, align 4, !tbaa !8
  br label %cond.end74

cond.end74:                                       ; preds = %cond.false73, %cond.true72
  %cond75 = phi i32 [ %95, %cond.true72 ], [ %96, %cond.false73 ]
  store i32 %cond75, ptr %tmp69, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y68) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x67) #3
  %97 = load i32, ptr %tmp69, align 4, !tbaa !8
  %cmp76 = icmp slt i32 %90, %97
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %cond.end74
  %98 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -11, ptr %98, align 4, !tbaa !8
  br label %if.end95

if.else79:                                        ; preds = %cond.end74
  %99 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %100 = load i32, ptr %99, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x80) #3
  store i32 1, ptr %_x80, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y81) #3
  %101 = load i32, ptr %lw, align 4, !tbaa !8
  store i32 %101, ptr %_y81, align 4, !tbaa !8
  %102 = load i32, ptr %_x80, align 4, !tbaa !8
  %103 = load i32, ptr %_y81, align 4, !tbaa !8
  %cmp83 = icmp sgt i32 %102, %103
  br i1 %cmp83, label %cond.true85, label %cond.false86

cond.true85:                                      ; preds = %if.else79
  %104 = load i32, ptr %_x80, align 4, !tbaa !8
  br label %cond.end87

cond.false86:                                     ; preds = %if.else79
  %105 = load i32, ptr %_y81, align 4, !tbaa !8
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false86, %cond.true85
  %cond88 = phi i32 [ %104, %cond.true85 ], [ %105, %cond.false86 ]
  store i32 %cond88, ptr %tmp82, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y81) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x80) #3
  %106 = load i32, ptr %tmp82, align 4, !tbaa !8
  %cmp89 = icmp slt i32 %100, %106
  br i1 %cmp89, label %land.lhs.true91, label %if.end94

land.lhs.true91:                                  ; preds = %cond.end87
  %107 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool92 = icmp ne i32 %107, 0
  br i1 %tobool92, label %if.end94, label %if.then93

if.then93:                                        ; preds = %land.lhs.true91
  %108 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -13, ptr %108, align 4, !tbaa !8
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %land.lhs.true91, %cond.end87
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then78
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then65
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then61
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then55
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then49
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then45
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then41
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then36
  %109 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %110 = load i32, ptr %109, align 4, !tbaa !8
  %cmp103 = icmp eq i32 %110, 0
  br i1 %cmp103, label %if.then105, label %if.end110

if.then105:                                       ; preds = %if.end102
  %111 = load i32, ptr %lw, align 4, !tbaa !8
  %conv106 = sitofp i32 %111 to float
  store float %conv106, ptr %r__1, align 4, !tbaa !13
  %112 = load float, ptr %r__1, align 4, !tbaa !13
  %113 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx107 = getelementptr inbounds %struct.complex, ptr %113, i64 1
  %r108 = getelementptr inbounds %struct.complex, ptr %arrayidx107, i32 0, i32 0
  store float %112, ptr %r108, align 4, !tbaa !10
  %114 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx109 = getelementptr inbounds %struct.complex, ptr %114, i64 1
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx109, i32 0, i32 1
  store float 0.000000e+00, ptr %i, align 4, !tbaa !14
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %if.end102
  %115 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %116 = load i32, ptr %115, align 4, !tbaa !8
  %cmp111 = icmp ne i32 %116, 0
  br i1 %cmp111, label %if.then113, label %if.else116

if.then113:                                       ; preds = %if.end110
  %117 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %118 = load i32, ptr %117, align 4, !tbaa !8
  %sub114 = sub nsw i32 0, %118
  store i32 %sub114, ptr %i__1, align 4, !tbaa !8
  %call115 = call i32 @xerbla_(ptr noundef @.str.4, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else116:                                       ; preds = %if.end110
  %119 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool117 = icmp ne i32 %119, 0
  br i1 %tobool117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.else116
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end119:                                        ; preds = %if.else116
  br label %if.end120

if.end120:                                        ; preds = %if.end119
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x121) #3
  %120 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %121 = load i32, ptr %120, align 4, !tbaa !8
  store i32 %121, ptr %_x121, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y122) #3
  %122 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %123 = load i32, ptr %122, align 4, !tbaa !8
  store i32 %123, ptr %_y122, align 4, !tbaa !8
  %124 = load i32, ptr %_x121, align 4, !tbaa !8
  %125 = load i32, ptr %_y122, align 4, !tbaa !8
  %cmp124 = icmp slt i32 %124, %125
  br i1 %cmp124, label %cond.true126, label %cond.false127

cond.true126:                                     ; preds = %if.end120
  %126 = load i32, ptr %_x121, align 4, !tbaa !8
  br label %cond.end128

cond.false127:                                    ; preds = %if.end120
  %127 = load i32, ptr %_y122, align 4, !tbaa !8
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false127, %cond.true126
  %cond129 = phi i32 [ %126, %cond.true126 ], [ %127, %cond.false127 ]
  store i32 %cond129, ptr %tmp123, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y122) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x121) #3
  %128 = load i32, ptr %tmp123, align 4, !tbaa !8
  store i32 %128, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x130) #3
  %129 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %129, ptr %_x130, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y131) #3
  %130 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %131 = load i32, ptr %130, align 4, !tbaa !8
  store i32 %131, ptr %_y131, align 4, !tbaa !8
  %132 = load i32, ptr %_x130, align 4, !tbaa !8
  %133 = load i32, ptr %_y131, align 4, !tbaa !8
  %cmp133 = icmp slt i32 %132, %133
  br i1 %cmp133, label %cond.true135, label %cond.false136

cond.true135:                                     ; preds = %cond.end128
  %134 = load i32, ptr %_x130, align 4, !tbaa !8
  br label %cond.end137

cond.false136:                                    ; preds = %cond.end128
  %135 = load i32, ptr %_y131, align 4, !tbaa !8
  br label %cond.end137

cond.end137:                                      ; preds = %cond.false136, %cond.true135
  %cond138 = phi i32 [ %134, %cond.true135 ], [ %135, %cond.false136 ]
  store i32 %cond138, ptr %tmp132, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y131) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x130) #3
  %136 = load i32, ptr %tmp132, align 4, !tbaa !8
  %cmp139 = icmp eq i32 %136, 0
  br i1 %cmp139, label %if.then141, label %if.end142

if.then141:                                       ; preds = %cond.end137
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end142:                                        ; preds = %cond.end137
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x143) #3
  %137 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %138 = load i32, ptr %137, align 4, !tbaa !8
  store i32 %138, ptr %_x143, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y144) #3
  %139 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %140 = load i32, ptr %139, align 4, !tbaa !8
  store i32 %140, ptr %_y144, align 4, !tbaa !8
  %141 = load i32, ptr %_x143, align 4, !tbaa !8
  %142 = load i32, ptr %_y144, align 4, !tbaa !8
  %cmp146 = icmp sgt i32 %141, %142
  br i1 %cmp146, label %cond.true148, label %cond.false149

cond.true148:                                     ; preds = %if.end142
  %143 = load i32, ptr %_x143, align 4, !tbaa !8
  br label %cond.end150

cond.false149:                                    ; preds = %if.end142
  %144 = load i32, ptr %_y144, align 4, !tbaa !8
  br label %cond.end150

cond.end150:                                      ; preds = %cond.false149, %cond.true148
  %cond151 = phi i32 [ %143, %cond.true148 ], [ %144, %cond.false149 ]
  store i32 %cond151, ptr %tmp145, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y144) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x143) #3
  %145 = load i32, ptr %tmp145, align 4, !tbaa !8
  store i32 %145, ptr %i__1, align 4, !tbaa !8
  %146 = load i32, ptr %left, align 4, !tbaa !8
  %tobool152 = icmp ne i32 %146, 0
  br i1 %tobool152, label %land.lhs.true153, label %lor.lhs.false156

land.lhs.true153:                                 ; preds = %cond.end150
  %147 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %148 = load i32, ptr %147, align 4, !tbaa !8
  %149 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %150 = load i32, ptr %149, align 4, !tbaa !8
  %cmp154 = icmp sle i32 %148, %150
  br i1 %cmp154, label %if.then176, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %land.lhs.true153, %cond.end150
  %151 = load i32, ptr %right, align 4, !tbaa !8
  %tobool157 = icmp ne i32 %151, 0
  br i1 %tobool157, label %land.lhs.true158, label %lor.lhs.false161

land.lhs.true158:                                 ; preds = %lor.lhs.false156
  %152 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %153 = load i32, ptr %152, align 4, !tbaa !8
  %154 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %155 = load i32, ptr %154, align 4, !tbaa !8
  %cmp159 = icmp sle i32 %153, %155
  br i1 %cmp159, label %if.then176, label %lor.lhs.false161

lor.lhs.false161:                                 ; preds = %land.lhs.true158, %lor.lhs.false156
  %156 = load i32, ptr %nb, align 4, !tbaa !8
  %157 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %158 = load i32, ptr %157, align 4, !tbaa !8
  %cmp162 = icmp sle i32 %156, %158
  br i1 %cmp162, label %if.then176, label %lor.lhs.false164

lor.lhs.false164:                                 ; preds = %lor.lhs.false161
  %159 = load i32, ptr %nb, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x165) #3
  %160 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %160, ptr %_x165, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y166) #3
  %161 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %162 = load i32, ptr %161, align 4, !tbaa !8
  store i32 %162, ptr %_y166, align 4, !tbaa !8
  %163 = load i32, ptr %_x165, align 4, !tbaa !8
  %164 = load i32, ptr %_y166, align 4, !tbaa !8
  %cmp168 = icmp sgt i32 %163, %164
  br i1 %cmp168, label %cond.true170, label %cond.false171

cond.true170:                                     ; preds = %lor.lhs.false164
  %165 = load i32, ptr %_x165, align 4, !tbaa !8
  br label %cond.end172

cond.false171:                                    ; preds = %lor.lhs.false164
  %166 = load i32, ptr %_y166, align 4, !tbaa !8
  br label %cond.end172

cond.end172:                                      ; preds = %cond.false171, %cond.true170
  %cond173 = phi i32 [ %165, %cond.true170 ], [ %166, %cond.false171 ]
  store i32 %cond173, ptr %tmp167, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y166) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x165) #3
  %167 = load i32, ptr %tmp167, align 4, !tbaa !8
  %cmp174 = icmp sge i32 %159, %167
  br i1 %cmp174, label %if.then176, label %if.else183

if.then176:                                       ; preds = %cond.end172, %lor.lhs.false161, %land.lhs.true158, %land.lhs.true153
  %168 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %169 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %170 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %171 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %172 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %173 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %174 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom = sext i32 %174 to i64
  %arrayidx177 = getelementptr inbounds %struct.complex, ptr %173, i64 %idxprom
  %175 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %176 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %arrayidx178 = getelementptr inbounds %struct.complex, ptr %176, i64 6
  %177 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %178 = load i32, ptr %c_offset, align 4, !tbaa !8
  %idxprom179 = sext i32 %178 to i64
  %arrayidx180 = getelementptr inbounds %struct.complex, ptr %177, i64 %idxprom179
  %179 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %180 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx181 = getelementptr inbounds %struct.complex, ptr %180, i64 1
  %181 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call182 = call i32 @cgemlqt_(ptr noundef %168, ptr noundef %169, ptr noundef %170, ptr noundef %171, ptr noundef %172, ptr noundef %mb, ptr noundef %arrayidx177, ptr noundef %175, ptr noundef %arrayidx178, ptr noundef %mb, ptr noundef %arrayidx180, ptr noundef %179, ptr noundef %arrayidx181, ptr noundef %181)
  br label %if.end191

if.else183:                                       ; preds = %cond.end172
  %182 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %183 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %184 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %185 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %186 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %187 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %188 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom184 = sext i32 %188 to i64
  %arrayidx185 = getelementptr inbounds %struct.complex, ptr %187, i64 %idxprom184
  %189 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %190 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %arrayidx186 = getelementptr inbounds %struct.complex, ptr %190, i64 6
  %191 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %192 = load i32, ptr %c_offset, align 4, !tbaa !8
  %idxprom187 = sext i32 %192 to i64
  %arrayidx188 = getelementptr inbounds %struct.complex, ptr %191, i64 %idxprom187
  %193 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %194 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx189 = getelementptr inbounds %struct.complex, ptr %194, i64 1
  %195 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %196 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call190 = call i32 @clamswlq_(ptr noundef %182, ptr noundef %183, ptr noundef %184, ptr noundef %185, ptr noundef %186, ptr noundef %mb, ptr noundef %nb, ptr noundef %arrayidx185, ptr noundef %189, ptr noundef %arrayidx186, ptr noundef %mb, ptr noundef %arrayidx188, ptr noundef %193, ptr noundef %arrayidx189, ptr noundef %195, ptr noundef %196)
  br label %if.end191

if.end191:                                        ; preds = %if.else183, %if.then176
  %197 = load i32, ptr %lw, align 4, !tbaa !8
  %conv192 = sitofp i32 %197 to float
  store float %conv192, ptr %r__1, align 4, !tbaa !13
  %198 = load float, ptr %r__1, align 4, !tbaa !13
  %199 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx193 = getelementptr inbounds %struct.complex, ptr %199, i64 1
  %r194 = getelementptr inbounds %struct.complex, ptr %arrayidx193, i32 0, i32 0
  store float %198, ptr %r194, align 4, !tbaa !10
  %200 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx195 = getelementptr inbounds %struct.complex, ptr %200, i64 1
  %i196 = getelementptr inbounds %struct.complex, ptr %arrayidx195, i32 0, i32 1
  store float 0.000000e+00, ptr %i196, align 4, !tbaa !14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end191, %if.then141, %if.then118, %if.then113
  call void @llvm.lifetime.end.p0(i64 4, ptr %lquery) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %notran) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nblcks) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %right) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %tran) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %left) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lw) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %mb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %201 = load i32, ptr %retval, align 4
  ret i32 %201
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @cgemlqt_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @clamswlq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!13 = !{!12, !12, i64 0}
!14 = !{!11, !12, i64 4}

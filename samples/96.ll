; ModuleID = 'samples/96.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/chbgvx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"CHBGVX\00", align 1
@c__1 = internal global i32 1, align 4
@c_b2 = internal global %struct.complex { float 1.000000e+00, float 0.000000e+00 }, align 4
@c_b1 = internal global %struct.complex zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define i32 @chbgvx_(ptr noundef %jobz, ptr noundef %range, ptr noundef %uplo, ptr noundef %n, ptr noundef %ka, ptr noundef %kb, ptr noundef %ab, ptr noundef %ldab, ptr noundef %bb, ptr noundef %ldbb, ptr noundef %q, ptr noundef %ldq, ptr noundef %vl, ptr noundef %vu, ptr noundef %il, ptr noundef %iu, ptr noundef %abstol, ptr noundef %m, ptr noundef %w, ptr noundef %z__, ptr noundef %ldz, ptr noundef %work, ptr noundef %rwork, ptr noundef %iwork, ptr noundef %ifail, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %jobz.addr = alloca ptr, align 8
  %range.addr = alloca ptr, align 8
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %ka.addr = alloca ptr, align 8
  %kb.addr = alloca ptr, align 8
  %ab.addr = alloca ptr, align 8
  %ldab.addr = alloca ptr, align 8
  %bb.addr = alloca ptr, align 8
  %ldbb.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %ldq.addr = alloca ptr, align 8
  %vl.addr = alloca ptr, align 8
  %vu.addr = alloca ptr, align 8
  %il.addr = alloca ptr, align 8
  %iu.addr = alloca ptr, align 8
  %abstol.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %ldz.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %rwork.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %ifail.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %ab_dim1 = alloca i32, align 4
  %ab_offset = alloca i32, align 4
  %bb_dim1 = alloca i32, align 4
  %bb_offset = alloca i32, align 4
  %q_dim1 = alloca i32, align 4
  %q_offset = alloca i32, align 4
  %z_dim1 = alloca i32, align 4
  %z_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %tmp1 = alloca float, align 4
  %indd = alloca i32, align 4
  %inde = alloca i32, align 4
  %vect = alloca [1 x i8], align 1
  %test = alloca i32, align 4
  %itmp1 = alloca i32, align 4
  %indee = alloca i32, align 4
  %iinfo = alloca i32, align 4
  %order = alloca [1 x i8], align 1
  %upper = alloca i32, align 4
  %wantz = alloca i32, align 4
  %alleig = alloca i32, align 4
  %indeig = alloca i32, align 4
  %indibl = alloca i32, align 4
  %valeig = alloca i32, align 4
  %indiwk = alloca i32, align 4
  %indisp = alloca i32, align 4
  %indrwk = alloca i32, align 4
  %indwrk = alloca i32, align 4
  %nsplit = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x75 = alloca i32, align 4
  %_y76 = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %jobz, ptr %jobz.addr, align 8, !tbaa !4
  store ptr %range, ptr %range.addr, align 8, !tbaa !4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %ka, ptr %ka.addr, align 8, !tbaa !4
  store ptr %kb, ptr %kb.addr, align 8, !tbaa !4
  store ptr %ab, ptr %ab.addr, align 8, !tbaa !4
  store ptr %ldab, ptr %ldab.addr, align 8, !tbaa !4
  store ptr %bb, ptr %bb.addr, align 8, !tbaa !4
  store ptr %ldbb, ptr %ldbb.addr, align 8, !tbaa !4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %ldq, ptr %ldq.addr, align 8, !tbaa !4
  store ptr %vl, ptr %vl.addr, align 8, !tbaa !4
  store ptr %vu, ptr %vu.addr, align 8, !tbaa !4
  store ptr %il, ptr %il.addr, align 8, !tbaa !4
  store ptr %iu, ptr %iu.addr, align 8, !tbaa !4
  store ptr %abstol, ptr %abstol.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %w, ptr %w.addr, align 8, !tbaa !4
  store ptr %z__, ptr %z__.addr, align 8, !tbaa !4
  store ptr %ldz, ptr %ldz.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %rwork, ptr %rwork.addr, align 8, !tbaa !4
  store ptr %iwork, ptr %iwork.addr, align 8, !tbaa !4
  store ptr %ifail, ptr %ifail.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %bb_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %bb_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %indd) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %inde) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %vect) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %test) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %itmp1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %indee) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iinfo) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %order) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %alleig) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %indeig) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %indibl) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %valeig) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %indiwk) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %indisp) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %indrwk) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %indwrk) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsplit) #3
  %0 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %ab_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %ab_offset, align 4, !tbaa !8
  %3 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %ab.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ldbb.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %bb_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %bb_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %bb_offset, align 4, !tbaa !8
  %8 = load i32, ptr %bb_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %bb.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %q_dim1, align 4, !tbaa !8
  %12 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %add5 = add nsw i32 1, %12
  store i32 %add5, ptr %q_offset, align 4, !tbaa !8
  %13 = load i32, ptr %q_offset, align 4, !tbaa !8
  %14 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %idx.ext6 = sext i32 %13 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds %struct.complex, ptr %14, i64 %idx.neg7
  store ptr %add.ptr8, ptr %q.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %15, i32 -1
  store ptr %incdec.ptr, ptr %w.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %17 = load i32, ptr %16, align 4, !tbaa !8
  store i32 %17, ptr %z_dim1, align 4, !tbaa !8
  %18 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %add9 = add nsw i32 1, %18
  store i32 %add9, ptr %z_offset, align 4, !tbaa !8
  %19 = load i32, ptr %z_offset, align 4, !tbaa !8
  %20 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %idx.ext10 = sext i32 %19 to i64
  %idx.neg11 = sub i64 0, %idx.ext10
  %add.ptr12 = getelementptr inbounds %struct.complex, ptr %20, i64 %idx.neg11
  store ptr %add.ptr12, ptr %z__.addr, align 8, !tbaa !4
  %21 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr13 = getelementptr inbounds %struct.complex, ptr %21, i32 -1
  store ptr %incdec.ptr13, ptr %work.addr, align 8, !tbaa !4
  %22 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %incdec.ptr14 = getelementptr inbounds float, ptr %22, i32 -1
  store ptr %incdec.ptr14, ptr %rwork.addr, align 8, !tbaa !4
  %23 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %incdec.ptr15 = getelementptr inbounds i32, ptr %23, i32 -1
  store ptr %incdec.ptr15, ptr %iwork.addr, align 8, !tbaa !4
  %24 = load ptr, ptr %ifail.addr, align 8, !tbaa !4
  %incdec.ptr16 = getelementptr inbounds i32, ptr %24, i32 -1
  store ptr %incdec.ptr16, ptr %ifail.addr, align 8, !tbaa !4
  %25 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %25, ptr noundef @.str)
  store i32 %call, ptr %wantz, align 4, !tbaa !8
  %26 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call17 = call i32 @lsame_(ptr noundef %26, ptr noundef @.str.1)
  store i32 %call17, ptr %upper, align 4, !tbaa !8
  %27 = load ptr, ptr %range.addr, align 8, !tbaa !4
  %call18 = call i32 @lsame_(ptr noundef %27, ptr noundef @.str.2)
  store i32 %call18, ptr %alleig, align 4, !tbaa !8
  %28 = load ptr, ptr %range.addr, align 8, !tbaa !4
  %call19 = call i32 @lsame_(ptr noundef %28, ptr noundef @.str)
  store i32 %call19, ptr %valeig, align 4, !tbaa !8
  %29 = load ptr, ptr %range.addr, align 8, !tbaa !4
  %call20 = call i32 @lsame_(ptr noundef %29, ptr noundef @.str.3)
  store i32 %call20, ptr %indeig, align 4, !tbaa !8
  %30 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %30, align 4, !tbaa !8
  %31 = load i32, ptr %wantz, align 4, !tbaa !8
  %tobool = icmp ne i32 %31, 0
  br i1 %tobool, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %32 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %call21 = call i32 @lsame_(ptr noundef %32, ptr noundef @.str.4)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %33 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %33, align 4, !tbaa !8
  br label %if.end99

if.else:                                          ; preds = %lor.lhs.false, %entry
  %34 = load i32, ptr %alleig, align 4, !tbaa !8
  %tobool23 = icmp ne i32 %34, 0
  br i1 %tobool23, label %if.else29, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.else
  %35 = load i32, ptr %valeig, align 4, !tbaa !8
  %tobool25 = icmp ne i32 %35, 0
  br i1 %tobool25, label %if.else29, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %36 = load i32, ptr %indeig, align 4, !tbaa !8
  %tobool27 = icmp ne i32 %36, 0
  br i1 %tobool27, label %if.else29, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false26
  %37 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %37, align 4, !tbaa !8
  br label %if.end98

if.else29:                                        ; preds = %lor.lhs.false26, %lor.lhs.false24, %if.else
  %38 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool30 = icmp ne i32 %38, 0
  br i1 %tobool30, label %if.else35, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.else29
  %39 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call32 = call i32 @lsame_(ptr noundef %39, ptr noundef @.str.5)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else35, label %if.then34

if.then34:                                        ; preds = %lor.lhs.false31
  %40 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %40, align 4, !tbaa !8
  br label %if.end97

if.else35:                                        ; preds = %lor.lhs.false31, %if.else29
  %41 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %42 = load i32, ptr %41, align 4, !tbaa !8
  %cmp = icmp slt i32 %42, 0
  br i1 %cmp, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else35
  %43 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %43, align 4, !tbaa !8
  br label %if.end96

if.else37:                                        ; preds = %if.else35
  %44 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %45 = load i32, ptr %44, align 4, !tbaa !8
  %cmp38 = icmp slt i32 %45, 0
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else37
  %46 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %46, align 4, !tbaa !8
  br label %if.end95

if.else40:                                        ; preds = %if.else37
  %47 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %48 = load i32, ptr %47, align 4, !tbaa !8
  %cmp41 = icmp slt i32 %48, 0
  br i1 %cmp41, label %if.then44, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.else40
  %49 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %50 = load i32, ptr %49, align 4, !tbaa !8
  %51 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %52 = load i32, ptr %51, align 4, !tbaa !8
  %cmp43 = icmp sgt i32 %50, %52
  br i1 %cmp43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %lor.lhs.false42, %if.else40
  %53 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -6, ptr %53, align 4, !tbaa !8
  br label %if.end94

if.else45:                                        ; preds = %lor.lhs.false42
  %54 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %56 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %57 = load i32, ptr %56, align 4, !tbaa !8
  %add46 = add nsw i32 %57, 1
  %cmp47 = icmp slt i32 %55, %add46
  br i1 %cmp47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else45
  %58 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -8, ptr %58, align 4, !tbaa !8
  br label %if.end93

if.else49:                                        ; preds = %if.else45
  %59 = load ptr, ptr %ldbb.addr, align 8, !tbaa !4
  %60 = load i32, ptr %59, align 4, !tbaa !8
  %61 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %62 = load i32, ptr %61, align 4, !tbaa !8
  %add50 = add nsw i32 %62, 1
  %cmp51 = icmp slt i32 %60, %add50
  br i1 %cmp51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.else49
  %63 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -10, ptr %63, align 4, !tbaa !8
  br label %if.end92

if.else53:                                        ; preds = %if.else49
  %64 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %65 = load i32, ptr %64, align 4, !tbaa !8
  %cmp54 = icmp slt i32 %65, 1
  br i1 %cmp54, label %if.then58, label %lor.lhs.false55

lor.lhs.false55:                                  ; preds = %if.else53
  %66 = load i32, ptr %wantz, align 4, !tbaa !8
  %tobool56 = icmp ne i32 %66, 0
  br i1 %tobool56, label %land.lhs.true, label %if.else59

land.lhs.true:                                    ; preds = %lor.lhs.false55
  %67 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %69 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %70 = load i32, ptr %69, align 4, !tbaa !8
  %cmp57 = icmp slt i32 %68, %70
  br i1 %cmp57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %land.lhs.true, %if.else53
  %71 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -12, ptr %71, align 4, !tbaa !8
  br label %if.end91

if.else59:                                        ; preds = %land.lhs.true, %lor.lhs.false55
  %72 = load i32, ptr %valeig, align 4, !tbaa !8
  %tobool60 = icmp ne i32 %72, 0
  br i1 %tobool60, label %if.then61, label %if.else66

if.then61:                                        ; preds = %if.else59
  %73 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %74 = load i32, ptr %73, align 4, !tbaa !8
  %cmp62 = icmp sgt i32 %74, 0
  br i1 %cmp62, label %land.lhs.true63, label %if.end

land.lhs.true63:                                  ; preds = %if.then61
  %75 = load ptr, ptr %vu.addr, align 8, !tbaa !4
  %76 = load float, ptr %75, align 4, !tbaa !10
  %77 = load ptr, ptr %vl.addr, align 8, !tbaa !4
  %78 = load float, ptr %77, align 4, !tbaa !10
  %cmp64 = fcmp ole float %76, %78
  br i1 %cmp64, label %if.then65, label %if.end

if.then65:                                        ; preds = %land.lhs.true63
  %79 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -14, ptr %79, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then65, %land.lhs.true63, %if.then61
  br label %if.end90

if.else66:                                        ; preds = %if.else59
  %80 = load i32, ptr %indeig, align 4, !tbaa !8
  %tobool67 = icmp ne i32 %80, 0
  br i1 %tobool67, label %if.then68, label %if.end89

if.then68:                                        ; preds = %if.else66
  %81 = load ptr, ptr %il.addr, align 8, !tbaa !4
  %82 = load i32, ptr %81, align 4, !tbaa !8
  %cmp69 = icmp slt i32 %82, 1
  br i1 %cmp69, label %if.then73, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.then68
  %83 = load ptr, ptr %il.addr, align 8, !tbaa !4
  %84 = load i32, ptr %83, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %85 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %86 = load i32, ptr %85, align 4, !tbaa !8
  store i32 %86, ptr %_y, align 4, !tbaa !8
  %87 = load i32, ptr %_x, align 4, !tbaa !8
  %88 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp71 = icmp sgt i32 %87, %88
  br i1 %cmp71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false70
  %89 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false70
  %90 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %89, %cond.true ], [ %90, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %91 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp72 = icmp sgt i32 %84, %91
  br i1 %cmp72, label %if.then73, label %if.else74

if.then73:                                        ; preds = %cond.end, %if.then68
  %92 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -15, ptr %92, align 4, !tbaa !8
  br label %if.end88

if.else74:                                        ; preds = %cond.end
  %93 = load ptr, ptr %iu.addr, align 8, !tbaa !4
  %94 = load i32, ptr %93, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x75) #3
  %95 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %96 = load i32, ptr %95, align 4, !tbaa !8
  store i32 %96, ptr %_x75, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y76) #3
  %97 = load ptr, ptr %il.addr, align 8, !tbaa !4
  %98 = load i32, ptr %97, align 4, !tbaa !8
  store i32 %98, ptr %_y76, align 4, !tbaa !8
  %99 = load i32, ptr %_x75, align 4, !tbaa !8
  %100 = load i32, ptr %_y76, align 4, !tbaa !8
  %cmp78 = icmp slt i32 %99, %100
  br i1 %cmp78, label %cond.true79, label %cond.false80

cond.true79:                                      ; preds = %if.else74
  %101 = load i32, ptr %_x75, align 4, !tbaa !8
  br label %cond.end81

cond.false80:                                     ; preds = %if.else74
  %102 = load i32, ptr %_y76, align 4, !tbaa !8
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false80, %cond.true79
  %cond82 = phi i32 [ %101, %cond.true79 ], [ %102, %cond.false80 ]
  store i32 %cond82, ptr %tmp77, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y76) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x75) #3
  %103 = load i32, ptr %tmp77, align 4, !tbaa !8
  %cmp83 = icmp slt i32 %94, %103
  br i1 %cmp83, label %if.then86, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %cond.end81
  %104 = load ptr, ptr %iu.addr, align 8, !tbaa !4
  %105 = load i32, ptr %104, align 4, !tbaa !8
  %106 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %107 = load i32, ptr %106, align 4, !tbaa !8
  %cmp85 = icmp sgt i32 %105, %107
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %lor.lhs.false84, %cond.end81
  %108 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -16, ptr %108, align 4, !tbaa !8
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %lor.lhs.false84
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then73
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.else66
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then58
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then52
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then48
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.then44
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then39
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then36
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then34
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then28
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then
  %109 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %110 = load i32, ptr %109, align 4, !tbaa !8
  %cmp100 = icmp eq i32 %110, 0
  br i1 %cmp100, label %if.then101, label %if.end109

if.then101:                                       ; preds = %if.end99
  %111 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %112 = load i32, ptr %111, align 4, !tbaa !8
  %cmp102 = icmp slt i32 %112, 1
  br i1 %cmp102, label %if.then107, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %if.then101
  %113 = load i32, ptr %wantz, align 4, !tbaa !8
  %tobool104 = icmp ne i32 %113, 0
  br i1 %tobool104, label %land.lhs.true105, label %if.end108

land.lhs.true105:                                 ; preds = %lor.lhs.false103
  %114 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %115 = load i32, ptr %114, align 4, !tbaa !8
  %116 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %117 = load i32, ptr %116, align 4, !tbaa !8
  %cmp106 = icmp slt i32 %115, %117
  br i1 %cmp106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %land.lhs.true105, %if.then101
  %118 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -21, ptr %118, align 4, !tbaa !8
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %land.lhs.true105, %lor.lhs.false103
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end99
  %119 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %120 = load i32, ptr %119, align 4, !tbaa !8
  %cmp110 = icmp ne i32 %120, 0
  br i1 %cmp110, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.end109
  %121 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %122 = load i32, ptr %121, align 4, !tbaa !8
  %sub = sub nsw i32 0, %122
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call112 = call i32 @xerbla_(ptr noundef @.str.6, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end113:                                        ; preds = %if.end109
  %123 = load ptr, ptr %m.addr, align 8, !tbaa !4
  store i32 0, ptr %123, align 4, !tbaa !8
  %124 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %125 = load i32, ptr %124, align 4, !tbaa !8
  %cmp114 = icmp eq i32 %125, 0
  br i1 %cmp114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.end113
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end116:                                        ; preds = %if.end113
  %126 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %127 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %128 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %129 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %130 = load i32, ptr %bb_offset, align 4, !tbaa !8
  %idxprom = sext i32 %130 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %129, i64 %idxprom
  %131 = load ptr, ptr %ldbb.addr, align 8, !tbaa !4
  %132 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call117 = call i32 @cpbstf_(ptr noundef %126, ptr noundef %127, ptr noundef %128, ptr noundef %arrayidx, ptr noundef %131, ptr noundef %132)
  %133 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %134 = load i32, ptr %133, align 4, !tbaa !8
  %cmp118 = icmp ne i32 %134, 0
  br i1 %cmp118, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.end116
  %135 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %136 = load i32, ptr %135, align 4, !tbaa !8
  %137 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %138 = load i32, ptr %137, align 4, !tbaa !8
  %add120 = add nsw i32 %136, %138
  %139 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %add120, ptr %139, align 4, !tbaa !8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end121:                                        ; preds = %if.end116
  %140 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %141 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %142 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %143 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %144 = load ptr, ptr %kb.addr, align 8, !tbaa !4
  %145 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %146 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %idxprom122 = sext i32 %146 to i64
  %arrayidx123 = getelementptr inbounds %struct.complex, ptr %145, i64 %idxprom122
  %147 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %148 = load ptr, ptr %bb.addr, align 8, !tbaa !4
  %149 = load i32, ptr %bb_offset, align 4, !tbaa !8
  %idxprom124 = sext i32 %149 to i64
  %arrayidx125 = getelementptr inbounds %struct.complex, ptr %148, i64 %idxprom124
  %150 = load ptr, ptr %ldbb.addr, align 8, !tbaa !4
  %151 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %152 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom126 = sext i32 %152 to i64
  %arrayidx127 = getelementptr inbounds %struct.complex, ptr %151, i64 %idxprom126
  %153 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %154 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx128 = getelementptr inbounds %struct.complex, ptr %154, i64 1
  %155 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %arrayidx129 = getelementptr inbounds float, ptr %155, i64 1
  %call130 = call i32 @chbgst_(ptr noundef %140, ptr noundef %141, ptr noundef %142, ptr noundef %143, ptr noundef %144, ptr noundef %arrayidx123, ptr noundef %147, ptr noundef %arrayidx125, ptr noundef %150, ptr noundef %arrayidx127, ptr noundef %153, ptr noundef %arrayidx128, ptr noundef %arrayidx129, ptr noundef %iinfo)
  store i32 1, ptr %indibl, align 4, !tbaa !8
  store i32 1, ptr %indd, align 4, !tbaa !8
  %156 = load i32, ptr %indd, align 4, !tbaa !8
  %157 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %158 = load i32, ptr %157, align 4, !tbaa !8
  %add131 = add nsw i32 %156, %158
  store i32 %add131, ptr %inde, align 4, !tbaa !8
  %159 = load i32, ptr %inde, align 4, !tbaa !8
  %160 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %161 = load i32, ptr %160, align 4, !tbaa !8
  %add132 = add nsw i32 %159, %161
  store i32 %add132, ptr %indrwk, align 4, !tbaa !8
  store i32 1, ptr %indwrk, align 4, !tbaa !8
  %162 = load i32, ptr %wantz, align 4, !tbaa !8
  %tobool133 = icmp ne i32 %162, 0
  br i1 %tobool133, label %if.then134, label %if.else135

if.then134:                                       ; preds = %if.end121
  %arraydecay = getelementptr inbounds [1 x i8], ptr %vect, i64 0, i64 0
  store i8 85, ptr %arraydecay, align 1, !tbaa !12
  br label %if.end137

if.else135:                                       ; preds = %if.end121
  %arraydecay136 = getelementptr inbounds [1 x i8], ptr %vect, i64 0, i64 0
  store i8 78, ptr %arraydecay136, align 1, !tbaa !12
  br label %if.end137

if.end137:                                        ; preds = %if.else135, %if.then134
  %arraydecay138 = getelementptr inbounds [1 x i8], ptr %vect, i64 0, i64 0
  %163 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %164 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %165 = load ptr, ptr %ka.addr, align 8, !tbaa !4
  %166 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %167 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %idxprom139 = sext i32 %167 to i64
  %arrayidx140 = getelementptr inbounds %struct.complex, ptr %166, i64 %idxprom139
  %168 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %169 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %170 = load i32, ptr %indd, align 4, !tbaa !8
  %idxprom141 = sext i32 %170 to i64
  %arrayidx142 = getelementptr inbounds float, ptr %169, i64 %idxprom141
  %171 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %172 = load i32, ptr %inde, align 4, !tbaa !8
  %idxprom143 = sext i32 %172 to i64
  %arrayidx144 = getelementptr inbounds float, ptr %171, i64 %idxprom143
  %173 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %174 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom145 = sext i32 %174 to i64
  %arrayidx146 = getelementptr inbounds %struct.complex, ptr %173, i64 %idxprom145
  %175 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %176 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %177 = load i32, ptr %indwrk, align 4, !tbaa !8
  %idxprom147 = sext i32 %177 to i64
  %arrayidx148 = getelementptr inbounds %struct.complex, ptr %176, i64 %idxprom147
  %call149 = call i32 @chbtrd_(ptr noundef %arraydecay138, ptr noundef %163, ptr noundef %164, ptr noundef %165, ptr noundef %arrayidx140, ptr noundef %168, ptr noundef %arrayidx142, ptr noundef %arrayidx144, ptr noundef %arrayidx146, ptr noundef %175, ptr noundef %arrayidx148, ptr noundef %iinfo)
  store i32 0, ptr %test, align 4, !tbaa !8
  %178 = load i32, ptr %indeig, align 4, !tbaa !8
  %tobool150 = icmp ne i32 %178, 0
  br i1 %tobool150, label %if.then151, label %if.end157

if.then151:                                       ; preds = %if.end137
  %179 = load ptr, ptr %il.addr, align 8, !tbaa !4
  %180 = load i32, ptr %179, align 4, !tbaa !8
  %cmp152 = icmp eq i32 %180, 1
  br i1 %cmp152, label %land.lhs.true153, label %if.end156

land.lhs.true153:                                 ; preds = %if.then151
  %181 = load ptr, ptr %iu.addr, align 8, !tbaa !4
  %182 = load i32, ptr %181, align 4, !tbaa !8
  %183 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %184 = load i32, ptr %183, align 4, !tbaa !8
  %cmp154 = icmp eq i32 %182, %184
  br i1 %cmp154, label %if.then155, label %if.end156

if.then155:                                       ; preds = %land.lhs.true153
  store i32 1, ptr %test, align 4, !tbaa !8
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %land.lhs.true153, %if.then151
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %if.end137
  %185 = load i32, ptr %alleig, align 4, !tbaa !8
  %tobool158 = icmp ne i32 %185, 0
  br i1 %tobool158, label %land.lhs.true161, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %if.end157
  %186 = load i32, ptr %test, align 4, !tbaa !8
  %tobool160 = icmp ne i32 %186, 0
  br i1 %tobool160, label %land.lhs.true161, label %if.end205

land.lhs.true161:                                 ; preds = %lor.lhs.false159, %if.end157
  %187 = load ptr, ptr %abstol.addr, align 8, !tbaa !4
  %188 = load float, ptr %187, align 4, !tbaa !10
  %cmp162 = fcmp ole float %188, 0.000000e+00
  br i1 %cmp162, label %if.then163, label %if.end205

if.then163:                                       ; preds = %land.lhs.true161
  %189 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %190 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %191 = load i32, ptr %indd, align 4, !tbaa !8
  %idxprom164 = sext i32 %191 to i64
  %arrayidx165 = getelementptr inbounds float, ptr %190, i64 %idxprom164
  %192 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx166 = getelementptr inbounds float, ptr %192, i64 1
  %call167 = call i32 @scopy_(ptr noundef %189, ptr noundef %arrayidx165, ptr noundef @c__1, ptr noundef %arrayidx166, ptr noundef @c__1)
  %193 = load i32, ptr %indrwk, align 4, !tbaa !8
  %194 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %195 = load i32, ptr %194, align 4, !tbaa !8
  %shl = shl i32 %195, 1
  %add168 = add nsw i32 %193, %shl
  store i32 %add168, ptr %indee, align 4, !tbaa !8
  %196 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %197 = load i32, ptr %196, align 4, !tbaa !8
  %sub169 = sub nsw i32 %197, 1
  store i32 %sub169, ptr %i__1, align 4, !tbaa !8
  %198 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %199 = load i32, ptr %inde, align 4, !tbaa !8
  %idxprom170 = sext i32 %199 to i64
  %arrayidx171 = getelementptr inbounds float, ptr %198, i64 %idxprom170
  %200 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %201 = load i32, ptr %indee, align 4, !tbaa !8
  %idxprom172 = sext i32 %201 to i64
  %arrayidx173 = getelementptr inbounds float, ptr %200, i64 %idxprom172
  %call174 = call i32 @scopy_(ptr noundef %i__1, ptr noundef %arrayidx171, ptr noundef @c__1, ptr noundef %arrayidx173, ptr noundef @c__1)
  %202 = load i32, ptr %wantz, align 4, !tbaa !8
  %tobool175 = icmp ne i32 %202, 0
  br i1 %tobool175, label %if.else181, label %if.then176

if.then176:                                       ; preds = %if.then163
  %203 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %204 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx177 = getelementptr inbounds float, ptr %204, i64 1
  %205 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %206 = load i32, ptr %indee, align 4, !tbaa !8
  %idxprom178 = sext i32 %206 to i64
  %arrayidx179 = getelementptr inbounds float, ptr %205, i64 %idxprom178
  %207 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call180 = call i32 @ssterf_(ptr noundef %203, ptr noundef %arrayidx177, ptr noundef %arrayidx179, ptr noundef %207)
  br label %if.end201

if.else181:                                       ; preds = %if.then163
  %208 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %209 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %210 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %211 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom182 = sext i32 %211 to i64
  %arrayidx183 = getelementptr inbounds %struct.complex, ptr %210, i64 %idxprom182
  %212 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %213 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %214 = load i32, ptr %z_offset, align 4, !tbaa !8
  %idxprom184 = sext i32 %214 to i64
  %arrayidx185 = getelementptr inbounds %struct.complex, ptr %213, i64 %idxprom184
  %215 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %call186 = call i32 @clacpy_(ptr noundef @.str.2, ptr noundef %208, ptr noundef %209, ptr noundef %arrayidx183, ptr noundef %212, ptr noundef %arrayidx185, ptr noundef %215)
  %216 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %217 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %218 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx187 = getelementptr inbounds float, ptr %218, i64 1
  %219 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %220 = load i32, ptr %indee, align 4, !tbaa !8
  %idxprom188 = sext i32 %220 to i64
  %arrayidx189 = getelementptr inbounds float, ptr %219, i64 %idxprom188
  %221 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %222 = load i32, ptr %z_offset, align 4, !tbaa !8
  %idxprom190 = sext i32 %222 to i64
  %arrayidx191 = getelementptr inbounds %struct.complex, ptr %221, i64 %idxprom190
  %223 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %224 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %225 = load i32, ptr %indrwk, align 4, !tbaa !8
  %idxprom192 = sext i32 %225 to i64
  %arrayidx193 = getelementptr inbounds float, ptr %224, i64 %idxprom192
  %226 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call194 = call i32 @csteqr_(ptr noundef %216, ptr noundef %217, ptr noundef %arrayidx187, ptr noundef %arrayidx189, ptr noundef %arrayidx191, ptr noundef %223, ptr noundef %arrayidx193, ptr noundef %226)
  %227 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %228 = load i32, ptr %227, align 4, !tbaa !8
  %cmp195 = icmp eq i32 %228, 0
  br i1 %cmp195, label %if.then196, label %if.end200

if.then196:                                       ; preds = %if.else181
  %229 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %230 = load i32, ptr %229, align 4, !tbaa !8
  store i32 %230, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then196
  %231 = load i32, ptr %i__, align 4, !tbaa !8
  %232 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp197 = icmp sle i32 %231, %232
  br i1 %cmp197, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %233 = load ptr, ptr %ifail.addr, align 8, !tbaa !4
  %234 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom198 = sext i32 %234 to i64
  %arrayidx199 = getelementptr inbounds i32, ptr %233, i64 %idxprom198
  store i32 0, ptr %arrayidx199, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %235 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %235, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  br label %if.end200

if.end200:                                        ; preds = %for.end, %if.else181
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.then176
  %236 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %237 = load i32, ptr %236, align 4, !tbaa !8
  %cmp202 = icmp eq i32 %237, 0
  br i1 %cmp202, label %if.then203, label %if.end204

if.then203:                                       ; preds = %if.end201
  %238 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %239 = load i32, ptr %238, align 4, !tbaa !8
  %240 = load ptr, ptr %m.addr, align 8, !tbaa !4
  store i32 %239, ptr %240, align 4, !tbaa !8
  br label %L30

if.end204:                                        ; preds = %if.end201
  %241 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %241, align 4, !tbaa !8
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %land.lhs.true161, %lor.lhs.false159
  %242 = load i32, ptr %wantz, align 4, !tbaa !8
  %tobool206 = icmp ne i32 %242, 0
  br i1 %tobool206, label %if.then207, label %if.else209

if.then207:                                       ; preds = %if.end205
  %arraydecay208 = getelementptr inbounds [1 x i8], ptr %order, i64 0, i64 0
  store i8 66, ptr %arraydecay208, align 1, !tbaa !12
  br label %if.end211

if.else209:                                       ; preds = %if.end205
  %arraydecay210 = getelementptr inbounds [1 x i8], ptr %order, i64 0, i64 0
  store i8 69, ptr %arraydecay210, align 1, !tbaa !12
  br label %if.end211

if.end211:                                        ; preds = %if.else209, %if.then207
  %243 = load i32, ptr %indibl, align 4, !tbaa !8
  %244 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %245 = load i32, ptr %244, align 4, !tbaa !8
  %add212 = add nsw i32 %243, %245
  store i32 %add212, ptr %indisp, align 4, !tbaa !8
  %246 = load i32, ptr %indisp, align 4, !tbaa !8
  %247 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %248 = load i32, ptr %247, align 4, !tbaa !8
  %add213 = add nsw i32 %246, %248
  store i32 %add213, ptr %indiwk, align 4, !tbaa !8
  %249 = load ptr, ptr %range.addr, align 8, !tbaa !4
  %arraydecay214 = getelementptr inbounds [1 x i8], ptr %order, i64 0, i64 0
  %250 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %251 = load ptr, ptr %vl.addr, align 8, !tbaa !4
  %252 = load ptr, ptr %vu.addr, align 8, !tbaa !4
  %253 = load ptr, ptr %il.addr, align 8, !tbaa !4
  %254 = load ptr, ptr %iu.addr, align 8, !tbaa !4
  %255 = load ptr, ptr %abstol.addr, align 8, !tbaa !4
  %256 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %257 = load i32, ptr %indd, align 4, !tbaa !8
  %idxprom215 = sext i32 %257 to i64
  %arrayidx216 = getelementptr inbounds float, ptr %256, i64 %idxprom215
  %258 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %259 = load i32, ptr %inde, align 4, !tbaa !8
  %idxprom217 = sext i32 %259 to i64
  %arrayidx218 = getelementptr inbounds float, ptr %258, i64 %idxprom217
  %260 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %261 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx219 = getelementptr inbounds float, ptr %261, i64 1
  %262 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %263 = load i32, ptr %indibl, align 4, !tbaa !8
  %idxprom220 = sext i32 %263 to i64
  %arrayidx221 = getelementptr inbounds i32, ptr %262, i64 %idxprom220
  %264 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %265 = load i32, ptr %indisp, align 4, !tbaa !8
  %idxprom222 = sext i32 %265 to i64
  %arrayidx223 = getelementptr inbounds i32, ptr %264, i64 %idxprom222
  %266 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %267 = load i32, ptr %indrwk, align 4, !tbaa !8
  %idxprom224 = sext i32 %267 to i64
  %arrayidx225 = getelementptr inbounds float, ptr %266, i64 %idxprom224
  %268 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %269 = load i32, ptr %indiwk, align 4, !tbaa !8
  %idxprom226 = sext i32 %269 to i64
  %arrayidx227 = getelementptr inbounds i32, ptr %268, i64 %idxprom226
  %270 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call228 = call i32 @sstebz_(ptr noundef %249, ptr noundef %arraydecay214, ptr noundef %250, ptr noundef %251, ptr noundef %252, ptr noundef %253, ptr noundef %254, ptr noundef %255, ptr noundef %arrayidx216, ptr noundef %arrayidx218, ptr noundef %260, ptr noundef %nsplit, ptr noundef %arrayidx219, ptr noundef %arrayidx221, ptr noundef %arrayidx223, ptr noundef %arrayidx225, ptr noundef %arrayidx227, ptr noundef %270)
  %271 = load i32, ptr %wantz, align 4, !tbaa !8
  %tobool229 = icmp ne i32 %271, 0
  br i1 %tobool229, label %if.then230, label %if.end267

if.then230:                                       ; preds = %if.end211
  %272 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %273 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %274 = load i32, ptr %indd, align 4, !tbaa !8
  %idxprom231 = sext i32 %274 to i64
  %arrayidx232 = getelementptr inbounds float, ptr %273, i64 %idxprom231
  %275 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %276 = load i32, ptr %inde, align 4, !tbaa !8
  %idxprom233 = sext i32 %276 to i64
  %arrayidx234 = getelementptr inbounds float, ptr %275, i64 %idxprom233
  %277 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %278 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx235 = getelementptr inbounds float, ptr %278, i64 1
  %279 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %280 = load i32, ptr %indibl, align 4, !tbaa !8
  %idxprom236 = sext i32 %280 to i64
  %arrayidx237 = getelementptr inbounds i32, ptr %279, i64 %idxprom236
  %281 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %282 = load i32, ptr %indisp, align 4, !tbaa !8
  %idxprom238 = sext i32 %282 to i64
  %arrayidx239 = getelementptr inbounds i32, ptr %281, i64 %idxprom238
  %283 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %284 = load i32, ptr %z_offset, align 4, !tbaa !8
  %idxprom240 = sext i32 %284 to i64
  %arrayidx241 = getelementptr inbounds %struct.complex, ptr %283, i64 %idxprom240
  %285 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %286 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %287 = load i32, ptr %indrwk, align 4, !tbaa !8
  %idxprom242 = sext i32 %287 to i64
  %arrayidx243 = getelementptr inbounds float, ptr %286, i64 %idxprom242
  %288 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %289 = load i32, ptr %indiwk, align 4, !tbaa !8
  %idxprom244 = sext i32 %289 to i64
  %arrayidx245 = getelementptr inbounds i32, ptr %288, i64 %idxprom244
  %290 = load ptr, ptr %ifail.addr, align 8, !tbaa !4
  %arrayidx246 = getelementptr inbounds i32, ptr %290, i64 1
  %291 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call247 = call i32 @cstein_(ptr noundef %272, ptr noundef %arrayidx232, ptr noundef %arrayidx234, ptr noundef %277, ptr noundef %arrayidx235, ptr noundef %arrayidx237, ptr noundef %arrayidx239, ptr noundef %arrayidx241, ptr noundef %285, ptr noundef %arrayidx243, ptr noundef %arrayidx245, ptr noundef %arrayidx246, ptr noundef %291)
  %292 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %293 = load i32, ptr %292, align 4, !tbaa !8
  store i32 %293, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond248

for.cond248:                                      ; preds = %for.inc264, %if.then230
  %294 = load i32, ptr %j, align 4, !tbaa !8
  %295 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp249 = icmp sle i32 %294, %295
  br i1 %cmp249, label %for.body250, label %for.end266

for.body250:                                      ; preds = %for.cond248
  %296 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %297 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %298 = load i32, ptr %j, align 4, !tbaa !8
  %299 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %298, %299
  %add251 = add nsw i32 %mul, 1
  %idxprom252 = sext i32 %add251 to i64
  %arrayidx253 = getelementptr inbounds %struct.complex, ptr %297, i64 %idxprom252
  %300 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx254 = getelementptr inbounds %struct.complex, ptr %300, i64 1
  %call255 = call i32 @ccopy_(ptr noundef %296, ptr noundef %arrayidx253, ptr noundef @c__1, ptr noundef %arrayidx254, ptr noundef @c__1)
  %301 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %302 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %303 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %304 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom256 = sext i32 %304 to i64
  %arrayidx257 = getelementptr inbounds %struct.complex, ptr %303, i64 %idxprom256
  %305 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %306 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx258 = getelementptr inbounds %struct.complex, ptr %306, i64 1
  %307 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %308 = load i32, ptr %j, align 4, !tbaa !8
  %309 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul259 = mul nsw i32 %308, %309
  %add260 = add nsw i32 %mul259, 1
  %idxprom261 = sext i32 %add260 to i64
  %arrayidx262 = getelementptr inbounds %struct.complex, ptr %307, i64 %idxprom261
  %call263 = call i32 @cgemv_(ptr noundef @.str.4, ptr noundef %301, ptr noundef %302, ptr noundef @c_b2, ptr noundef %arrayidx257, ptr noundef %305, ptr noundef %arrayidx258, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx262, ptr noundef @c__1)
  br label %for.inc264

for.inc264:                                       ; preds = %for.body250
  %310 = load i32, ptr %j, align 4, !tbaa !8
  %inc265 = add nsw i32 %310, 1
  store i32 %inc265, ptr %j, align 4, !tbaa !8
  br label %for.cond248, !llvm.loop !15

for.end266:                                       ; preds = %for.cond248
  br label %if.end267

if.end267:                                        ; preds = %for.end266, %if.end211
  br label %L30

L30:                                              ; preds = %if.end267, %if.then203
  %311 = load i32, ptr %wantz, align 4, !tbaa !8
  %tobool268 = icmp ne i32 %311, 0
  br i1 %tobool268, label %if.then269, label %if.end338

if.then269:                                       ; preds = %L30
  %312 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %313 = load i32, ptr %312, align 4, !tbaa !8
  %sub270 = sub nsw i32 %313, 1
  store i32 %sub270, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond271

for.cond271:                                      ; preds = %for.inc335, %if.then269
  %314 = load i32, ptr %j, align 4, !tbaa !8
  %315 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp272 = icmp sle i32 %314, %315
  br i1 %cmp272, label %for.body273, label %for.end337

for.body273:                                      ; preds = %for.cond271
  store i32 0, ptr %i__, align 4, !tbaa !8
  %316 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %317 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom274 = sext i32 %317 to i64
  %arrayidx275 = getelementptr inbounds float, ptr %316, i64 %idxprom274
  %318 = load float, ptr %arrayidx275, align 4, !tbaa !10
  store float %318, ptr %tmp1, align 4, !tbaa !10
  %319 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %320 = load i32, ptr %319, align 4, !tbaa !8
  store i32 %320, ptr %i__2, align 4, !tbaa !8
  %321 = load i32, ptr %j, align 4, !tbaa !8
  %add276 = add nsw i32 %321, 1
  store i32 %add276, ptr %jj, align 4, !tbaa !8
  br label %for.cond277

for.cond277:                                      ; preds = %for.inc287, %for.body273
  %322 = load i32, ptr %jj, align 4, !tbaa !8
  %323 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp278 = icmp sle i32 %322, %323
  br i1 %cmp278, label %for.body279, label %for.end289

for.body279:                                      ; preds = %for.cond277
  %324 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %325 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom280 = sext i32 %325 to i64
  %arrayidx281 = getelementptr inbounds float, ptr %324, i64 %idxprom280
  %326 = load float, ptr %arrayidx281, align 4, !tbaa !10
  %327 = load float, ptr %tmp1, align 4, !tbaa !10
  %cmp282 = fcmp olt float %326, %327
  br i1 %cmp282, label %if.then283, label %if.end286

if.then283:                                       ; preds = %for.body279
  %328 = load i32, ptr %jj, align 4, !tbaa !8
  store i32 %328, ptr %i__, align 4, !tbaa !8
  %329 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %330 = load i32, ptr %jj, align 4, !tbaa !8
  %idxprom284 = sext i32 %330 to i64
  %arrayidx285 = getelementptr inbounds float, ptr %329, i64 %idxprom284
  %331 = load float, ptr %arrayidx285, align 4, !tbaa !10
  store float %331, ptr %tmp1, align 4, !tbaa !10
  br label %if.end286

if.end286:                                        ; preds = %if.then283, %for.body279
  br label %for.inc287

for.inc287:                                       ; preds = %if.end286
  %332 = load i32, ptr %jj, align 4, !tbaa !8
  %inc288 = add nsw i32 %332, 1
  store i32 %inc288, ptr %jj, align 4, !tbaa !8
  br label %for.cond277, !llvm.loop !16

for.end289:                                       ; preds = %for.cond277
  %333 = load i32, ptr %i__, align 4, !tbaa !8
  %cmp290 = icmp ne i32 %333, 0
  br i1 %cmp290, label %if.then291, label %if.end334

if.then291:                                       ; preds = %for.end289
  %334 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %335 = load i32, ptr %indibl, align 4, !tbaa !8
  %336 = load i32, ptr %i__, align 4, !tbaa !8
  %add292 = add nsw i32 %335, %336
  %sub293 = sub nsw i32 %add292, 1
  %idxprom294 = sext i32 %sub293 to i64
  %arrayidx295 = getelementptr inbounds i32, ptr %334, i64 %idxprom294
  %337 = load i32, ptr %arrayidx295, align 4, !tbaa !8
  store i32 %337, ptr %itmp1, align 4, !tbaa !8
  %338 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %339 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom296 = sext i32 %339 to i64
  %arrayidx297 = getelementptr inbounds float, ptr %338, i64 %idxprom296
  %340 = load float, ptr %arrayidx297, align 4, !tbaa !10
  %341 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %342 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom298 = sext i32 %342 to i64
  %arrayidx299 = getelementptr inbounds float, ptr %341, i64 %idxprom298
  store float %340, ptr %arrayidx299, align 4, !tbaa !10
  %343 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %344 = load i32, ptr %indibl, align 4, !tbaa !8
  %345 = load i32, ptr %j, align 4, !tbaa !8
  %add300 = add nsw i32 %344, %345
  %sub301 = sub nsw i32 %add300, 1
  %idxprom302 = sext i32 %sub301 to i64
  %arrayidx303 = getelementptr inbounds i32, ptr %343, i64 %idxprom302
  %346 = load i32, ptr %arrayidx303, align 4, !tbaa !8
  %347 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %348 = load i32, ptr %indibl, align 4, !tbaa !8
  %349 = load i32, ptr %i__, align 4, !tbaa !8
  %add304 = add nsw i32 %348, %349
  %sub305 = sub nsw i32 %add304, 1
  %idxprom306 = sext i32 %sub305 to i64
  %arrayidx307 = getelementptr inbounds i32, ptr %347, i64 %idxprom306
  store i32 %346, ptr %arrayidx307, align 4, !tbaa !8
  %350 = load float, ptr %tmp1, align 4, !tbaa !10
  %351 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %352 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom308 = sext i32 %352 to i64
  %arrayidx309 = getelementptr inbounds float, ptr %351, i64 %idxprom308
  store float %350, ptr %arrayidx309, align 4, !tbaa !10
  %353 = load i32, ptr %itmp1, align 4, !tbaa !8
  %354 = load ptr, ptr %iwork.addr, align 8, !tbaa !4
  %355 = load i32, ptr %indibl, align 4, !tbaa !8
  %356 = load i32, ptr %j, align 4, !tbaa !8
  %add310 = add nsw i32 %355, %356
  %sub311 = sub nsw i32 %add310, 1
  %idxprom312 = sext i32 %sub311 to i64
  %arrayidx313 = getelementptr inbounds i32, ptr %354, i64 %idxprom312
  store i32 %353, ptr %arrayidx313, align 4, !tbaa !8
  %357 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %358 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %359 = load i32, ptr %i__, align 4, !tbaa !8
  %360 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul314 = mul nsw i32 %359, %360
  %add315 = add nsw i32 %mul314, 1
  %idxprom316 = sext i32 %add315 to i64
  %arrayidx317 = getelementptr inbounds %struct.complex, ptr %358, i64 %idxprom316
  %361 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %362 = load i32, ptr %j, align 4, !tbaa !8
  %363 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %mul318 = mul nsw i32 %362, %363
  %add319 = add nsw i32 %mul318, 1
  %idxprom320 = sext i32 %add319 to i64
  %arrayidx321 = getelementptr inbounds %struct.complex, ptr %361, i64 %idxprom320
  %call322 = call i32 @cswap_(ptr noundef %357, ptr noundef %arrayidx317, ptr noundef @c__1, ptr noundef %arrayidx321, ptr noundef @c__1)
  %364 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %365 = load i32, ptr %364, align 4, !tbaa !8
  %cmp323 = icmp ne i32 %365, 0
  br i1 %cmp323, label %if.then324, label %if.end333

if.then324:                                       ; preds = %if.then291
  %366 = load ptr, ptr %ifail.addr, align 8, !tbaa !4
  %367 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom325 = sext i32 %367 to i64
  %arrayidx326 = getelementptr inbounds i32, ptr %366, i64 %idxprom325
  %368 = load i32, ptr %arrayidx326, align 4, !tbaa !8
  store i32 %368, ptr %itmp1, align 4, !tbaa !8
  %369 = load ptr, ptr %ifail.addr, align 8, !tbaa !4
  %370 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom327 = sext i32 %370 to i64
  %arrayidx328 = getelementptr inbounds i32, ptr %369, i64 %idxprom327
  %371 = load i32, ptr %arrayidx328, align 4, !tbaa !8
  %372 = load ptr, ptr %ifail.addr, align 8, !tbaa !4
  %373 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom329 = sext i32 %373 to i64
  %arrayidx330 = getelementptr inbounds i32, ptr %372, i64 %idxprom329
  store i32 %371, ptr %arrayidx330, align 4, !tbaa !8
  %374 = load i32, ptr %itmp1, align 4, !tbaa !8
  %375 = load ptr, ptr %ifail.addr, align 8, !tbaa !4
  %376 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom331 = sext i32 %376 to i64
  %arrayidx332 = getelementptr inbounds i32, ptr %375, i64 %idxprom331
  store i32 %374, ptr %arrayidx332, align 4, !tbaa !8
  br label %if.end333

if.end333:                                        ; preds = %if.then324, %if.then291
  br label %if.end334

if.end334:                                        ; preds = %if.end333, %for.end289
  br label %for.inc335

for.inc335:                                       ; preds = %if.end334
  %377 = load i32, ptr %j, align 4, !tbaa !8
  %inc336 = add nsw i32 %377, 1
  store i32 %inc336, ptr %j, align 4, !tbaa !8
  br label %for.cond271, !llvm.loop !17

for.end337:                                       ; preds = %for.cond271
  br label %if.end338

if.end338:                                        ; preds = %for.end337, %L30
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end338, %if.then119, %if.then115, %if.then111
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsplit) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %indwrk) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %indrwk) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %indisp) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %indiwk) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %valeig) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %indibl) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %indeig) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %alleig) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %order) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iinfo) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %indee) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %itmp1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %test) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %vect) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %inde) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %indd) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %bb_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %bb_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab_dim1) #3
  %378 = load i32, ptr %retval, align 4
  ret i32 %378
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @cpbstf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @chbgst_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @chbtrd_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @scopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ssterf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @clacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @csteqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @sstebz_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cstein_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ccopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}

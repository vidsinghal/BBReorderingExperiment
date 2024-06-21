; ModuleID = 'samples/651.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/zlabrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@c_b2 = internal global %struct.doublecomplex { double 1.000000e+00, double 0.000000e+00 }, align 8
@c__1 = internal global i32 1, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Conjugate transpose\00", align 1
@c_b1 = internal global %struct.doublecomplex zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define i32 @zlabrd_(ptr noundef %m, ptr noundef %n, ptr noundef %nb, ptr noundef %a, ptr noundef %lda, ptr noundef %d__, ptr noundef %e, ptr noundef %tauq, ptr noundef %taup, ptr noundef %x, ptr noundef %ldx, ptr noundef %y, ptr noundef %ldy) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nb.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %tauq.addr = alloca ptr, align 8
  %taup.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ldx.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %ldy.addr = alloca ptr, align 8
  %ret_val = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %nb, ptr %nb.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %d__, ptr %d__.addr, align 8, !tbaa !4
  store ptr %e, ptr %e.addr, align 8, !tbaa !4
  store ptr %tauq, ptr %tauq.addr, align 8, !tbaa !4
  store ptr %taup, ptr %taup.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %ldx, ptr %ldx.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %ldy, ptr %ldy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret_val) #3
  %0 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %tauq.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %taup.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %call = call i32 @fla_zlabrd(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  store i32 %call, ptr %ret_val, align 4, !tbaa !8
  %13 = load i32, ptr %ret_val, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret_val) #3
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @fla_zlabrd(ptr noundef %m, ptr noundef %n, ptr noundef %nb, ptr noundef %a, ptr noundef %lda, ptr noundef %d__, ptr noundef %e, ptr noundef %tauq, ptr noundef %taup, ptr noundef %x, ptr noundef %ldx, ptr noundef %y, ptr noundef %ldy) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nb.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %tauq.addr = alloca ptr, align 8
  %taup.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ldx.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %ldy.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %x_dim1 = alloca i32, align 4
  %x_offset = alloca i32, align 4
  %y_dim1 = alloca i32, align 4
  %y_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %z__1 = alloca %struct.doublecomplex, align 8
  %i__ = alloca i32, align 4
  %alpha = alloca %struct.doublecomplex, align 8
  %thread_id = alloca i32, align 4
  %actual_num_threads = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x260 = alloca i32, align 4
  %_y261 = alloca i32, align 4
  %tmp262 = alloca i32, align 4
  %_x472 = alloca i32, align 4
  %_y473 = alloca i32, align 4
  %tmp474 = alloca i32, align 4
  %_x664 = alloca i32, align 4
  %_y665 = alloca i32, align 4
  %tmp666 = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %nb, ptr %nb.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %d__, ptr %d__.addr, align 8, !tbaa !4
  store ptr %e, ptr %e.addr, align 8, !tbaa !4
  store ptr %tauq, ptr %tauq.addr, align 8, !tbaa !4
  store ptr %taup, ptr %taup.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %ldx, ptr %ldx.addr, align 8, !tbaa !4
  store ptr %y, ptr %y.addr, align 8, !tbaa !4
  store ptr %ldy, ptr %ldy.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__5) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %z__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %thread_id) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %actual_num_threads) #3
  call void (...) @aocl_fla_init()
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
  %5 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %d__.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds double, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %e.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %tauq.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds %struct.doublecomplex, ptr %7, i32 -1
  store ptr %incdec.ptr2, ptr %tauq.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %taup.addr, align 8, !tbaa !4
  %incdec.ptr3 = getelementptr inbounds %struct.doublecomplex, ptr %8, i32 -1
  store ptr %incdec.ptr3, ptr %taup.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %10 = load i32, ptr %9, align 4, !tbaa !8
  store i32 %10, ptr %x_dim1, align 4, !tbaa !8
  %11 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add4 = add nsw i32 1, %11
  store i32 %add4, ptr %x_offset, align 4, !tbaa !8
  %12 = load i32, ptr %x_offset, align 4, !tbaa !8
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %idx.ext5 = sext i32 %12 to i64
  %idx.neg6 = sub i64 0, %idx.ext5
  %add.ptr7 = getelementptr inbounds %struct.doublecomplex, ptr %13, i64 %idx.neg6
  store ptr %add.ptr7, ptr %x.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  store i32 %15, ptr %y_dim1, align 4, !tbaa !8
  %16 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add8 = add nsw i32 1, %16
  store i32 %add8, ptr %y_offset, align 4, !tbaa !8
  %17 = load i32, ptr %y_offset, align 4, !tbaa !8
  %18 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %idx.ext9 = sext i32 %17 to i64
  %idx.neg10 = sub i64 0, %idx.ext9
  %add.ptr11 = getelementptr inbounds %struct.doublecomplex, ptr %18, i64 %idx.neg10
  store ptr %add.ptr11, ptr %y.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %cmp = icmp sle i32 %20, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %21 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !8
  %cmp12 = icmp sle i32 %22, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %23 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  %25 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %cmp13 = icmp sge i32 %24, %26
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %27 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  store i32 %28, ptr %i__1, align 4, !tbaa !8
  store i32 0, ptr %thread_id, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then14
  %29 = load i32, ptr %i__, align 4, !tbaa !8
  %30 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp15 = icmp sle i32 %29, %30
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, ptr %thread_id, align 4, !tbaa !8
  %cmp16 = icmp eq i32 %31, 0
  br i1 %cmp16, label %if.then17, label %if.end78

if.then17:                                        ; preds = %for.body
  %32 = load i32, ptr %i__, align 4, !tbaa !8
  %sub = sub nsw i32 %32, 1
  store i32 %sub, ptr %i__2, align 4, !tbaa !8
  %33 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %34 = load i32, ptr %i__, align 4, !tbaa !8
  %35 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add18 = add nsw i32 %34, %35
  %idxprom = sext i32 %add18 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %33, i64 %idxprom
  %36 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %call = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx, ptr noundef %36)
  %37 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %39 = load i32, ptr %i__, align 4, !tbaa !8
  %sub19 = sub nsw i32 %38, %39
  %add20 = add nsw i32 %sub19, 1
  store i32 %add20, ptr %i__2, align 4, !tbaa !8
  %40 = load i32, ptr %i__, align 4, !tbaa !8
  %sub21 = sub nsw i32 %40, 1
  store i32 %sub21, ptr %i__3, align 4, !tbaa !8
  %r = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r, align 8, !tbaa !10
  %i = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i, align 8, !tbaa !13
  %41 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %42 = load i32, ptr %i__, align 4, !tbaa !8
  %43 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add22 = add nsw i32 %42, %43
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds %struct.doublecomplex, ptr %41, i64 %idxprom23
  %44 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %45 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %46 = load i32, ptr %i__, align 4, !tbaa !8
  %47 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add25 = add nsw i32 %46, %47
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds %struct.doublecomplex, ptr %45, i64 %idxprom26
  %48 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %49 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %50 = load i32, ptr %i__, align 4, !tbaa !8
  %51 = load i32, ptr %i__, align 4, !tbaa !8
  %52 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %51, %52
  %add28 = add nsw i32 %50, %mul
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds %struct.doublecomplex, ptr %49, i64 %idxprom29
  %call31 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx24, ptr noundef %44, ptr noundef %arrayidx27, ptr noundef %48, ptr noundef @c_b2, ptr noundef %arrayidx30, ptr noundef @c__1)
  %53 = load i32, ptr %i__, align 4, !tbaa !8
  %sub32 = sub nsw i32 %53, 1
  store i32 %sub32, ptr %i__2, align 4, !tbaa !8
  %54 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %55 = load i32, ptr %i__, align 4, !tbaa !8
  %56 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add33 = add nsw i32 %55, %56
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds %struct.doublecomplex, ptr %54, i64 %idxprom34
  %57 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %call36 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx35, ptr noundef %57)
  %58 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %60 = load i32, ptr %i__, align 4, !tbaa !8
  %sub37 = sub nsw i32 %59, %60
  %add38 = add nsw i32 %sub37, 1
  store i32 %add38, ptr %i__2, align 4, !tbaa !8
  %61 = load i32, ptr %i__, align 4, !tbaa !8
  %sub39 = sub nsw i32 %61, 1
  store i32 %sub39, ptr %i__3, align 4, !tbaa !8
  %r40 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r40, align 8, !tbaa !10
  %i41 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i41, align 8, !tbaa !13
  %62 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %63 = load i32, ptr %i__, align 4, !tbaa !8
  %64 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add42 = add nsw i32 %63, %64
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds %struct.doublecomplex, ptr %62, i64 %idxprom43
  %65 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %67 = load i32, ptr %i__, align 4, !tbaa !8
  %68 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul45 = mul nsw i32 %67, %68
  %add46 = add nsw i32 %mul45, 1
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds %struct.doublecomplex, ptr %66, i64 %idxprom47
  %69 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %70 = load i32, ptr %i__, align 4, !tbaa !8
  %71 = load i32, ptr %i__, align 4, !tbaa !8
  %72 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul49 = mul nsw i32 %71, %72
  %add50 = add nsw i32 %70, %mul49
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds %struct.doublecomplex, ptr %69, i64 %idxprom51
  %call53 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx44, ptr noundef %65, ptr noundef %arrayidx48, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx52, ptr noundef @c__1)
  %73 = load i32, ptr %i__, align 4, !tbaa !8
  %74 = load i32, ptr %i__, align 4, !tbaa !8
  %75 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul54 = mul nsw i32 %74, %75
  %add55 = add nsw i32 %73, %mul54
  store i32 %add55, ptr %i__2, align 4, !tbaa !8
  %76 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %77 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom56 = sext i32 %77 to i64
  %arrayidx57 = getelementptr inbounds %struct.doublecomplex, ptr %76, i64 %idxprom56
  %r58 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx57, i32 0, i32 0
  %78 = load double, ptr %r58, align 8, !tbaa !10
  %r59 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  store double %78, ptr %r59, align 8, !tbaa !10
  %79 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %80 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom60 = sext i32 %80 to i64
  %arrayidx61 = getelementptr inbounds %struct.doublecomplex, ptr %79, i64 %idxprom60
  %i62 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx61, i32 0, i32 1
  %81 = load double, ptr %i62, align 8, !tbaa !13
  %i63 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 1
  store double %81, ptr %i63, align 8, !tbaa !13
  %82 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %83 = load i32, ptr %82, align 4, !tbaa !8
  %84 = load i32, ptr %i__, align 4, !tbaa !8
  %sub64 = sub nsw i32 %83, %84
  %add65 = add nsw i32 %sub64, 1
  store i32 %add65, ptr %i__2, align 4, !tbaa !8
  %85 = load i32, ptr %i__, align 4, !tbaa !8
  %add66 = add nsw i32 %85, 1
  store i32 %add66, ptr %i__3, align 4, !tbaa !8
  %86 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %87 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %87, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %88 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %89 = load i32, ptr %88, align 4, !tbaa !8
  store i32 %89, ptr %_y, align 4, !tbaa !8
  %90 = load i32, ptr %_x, align 4, !tbaa !8
  %91 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp67 = icmp slt i32 %90, %91
  br i1 %cmp67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then17
  %92 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.then17
  %93 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %92, %cond.true ], [ %93, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %94 = load i32, ptr %tmp, align 4, !tbaa !8
  %95 = load i32, ptr %i__, align 4, !tbaa !8
  %96 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul68 = mul nsw i32 %95, %96
  %add69 = add nsw i32 %94, %mul68
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds %struct.doublecomplex, ptr %86, i64 %idxprom70
  %97 = load ptr, ptr %tauq.addr, align 8, !tbaa !4
  %98 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom72 = sext i32 %98 to i64
  %arrayidx73 = getelementptr inbounds %struct.doublecomplex, ptr %97, i64 %idxprom72
  %call74 = call i32 @zlarfg_(ptr noundef %i__2, ptr noundef %alpha, ptr noundef %arrayidx71, ptr noundef @c__1, ptr noundef %arrayidx73)
  %99 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %99, ptr %i__2, align 4, !tbaa !8
  %r75 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  %100 = load double, ptr %r75, align 8, !tbaa !10
  %101 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %102 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom76 = sext i32 %102 to i64
  %arrayidx77 = getelementptr inbounds double, ptr %101, i64 %idxprom76
  store double %100, ptr %arrayidx77, align 8, !tbaa !14
  br label %if.end78

if.end78:                                         ; preds = %cond.end, %for.body
  %103 = load i32, ptr %i__, align 4, !tbaa !8
  %104 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %105 = load i32, ptr %104, align 4, !tbaa !8
  %cmp79 = icmp slt i32 %103, %105
  br i1 %cmp79, label %if.then80, label %if.end393

if.then80:                                        ; preds = %if.end78
  %106 = load i32, ptr %thread_id, align 4, !tbaa !8
  %cmp81 = icmp eq i32 %106, 0
  br i1 %cmp81, label %if.then82, label %if.end91

if.then82:                                        ; preds = %if.then80
  %107 = load i32, ptr %i__, align 4, !tbaa !8
  %108 = load i32, ptr %i__, align 4, !tbaa !8
  %109 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul83 = mul nsw i32 %108, %109
  %add84 = add nsw i32 %107, %mul83
  store i32 %add84, ptr %i__2, align 4, !tbaa !8
  %110 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %111 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom85 = sext i32 %111 to i64
  %arrayidx86 = getelementptr inbounds %struct.doublecomplex, ptr %110, i64 %idxprom85
  %r87 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx86, i32 0, i32 0
  store double 1.000000e+00, ptr %r87, align 8, !tbaa !10
  %112 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %113 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom88 = sext i32 %113 to i64
  %arrayidx89 = getelementptr inbounds %struct.doublecomplex, ptr %112, i64 %idxprom88
  %i90 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx89, i32 0, i32 1
  store double 0.000000e+00, ptr %i90, align 8, !tbaa !13
  br label %if.end91

if.end91:                                         ; preds = %if.then82, %if.then80
  %114 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %115 = load i32, ptr %114, align 4, !tbaa !8
  %116 = load i32, ptr %i__, align 4, !tbaa !8
  %sub92 = sub nsw i32 %115, %116
  %add93 = add nsw i32 %sub92, 1
  store i32 %add93, ptr %i__2, align 4, !tbaa !8
  %117 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %118 = load i32, ptr %117, align 4, !tbaa !8
  %119 = load i32, ptr %i__, align 4, !tbaa !8
  %sub94 = sub nsw i32 %118, %119
  store i32 %sub94, ptr %i__3, align 4, !tbaa !8
  %120 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %121 = load i32, ptr %i__, align 4, !tbaa !8
  %122 = load i32, ptr %i__, align 4, !tbaa !8
  %add95 = add nsw i32 %122, 1
  %123 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul96 = mul nsw i32 %add95, %123
  %add97 = add nsw i32 %121, %mul96
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds %struct.doublecomplex, ptr %120, i64 %idxprom98
  %124 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %125 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %126 = load i32, ptr %i__, align 4, !tbaa !8
  %127 = load i32, ptr %i__, align 4, !tbaa !8
  %128 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul100 = mul nsw i32 %127, %128
  %add101 = add nsw i32 %126, %mul100
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds %struct.doublecomplex, ptr %125, i64 %idxprom102
  %129 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %130 = load i32, ptr %i__, align 4, !tbaa !8
  %add104 = add nsw i32 %130, 1
  %131 = load i32, ptr %i__, align 4, !tbaa !8
  %132 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul105 = mul nsw i32 %131, %132
  %add106 = add nsw i32 %add104, %mul105
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds %struct.doublecomplex, ptr %129, i64 %idxprom107
  %call109 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx99, ptr noundef %124, ptr noundef %arrayidx103, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx108, ptr noundef @c__1)
  %133 = load i32, ptr %thread_id, align 4, !tbaa !8
  %cmp110 = icmp eq i32 %133, 0
  br i1 %cmp110, label %if.then111, label %if.end287

if.then111:                                       ; preds = %if.end91
  %134 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %135 = load i32, ptr %134, align 4, !tbaa !8
  %136 = load i32, ptr %i__, align 4, !tbaa !8
  %sub112 = sub nsw i32 %135, %136
  %add113 = add nsw i32 %sub112, 1
  store i32 %add113, ptr %i__2, align 4, !tbaa !8
  %137 = load i32, ptr %i__, align 4, !tbaa !8
  %sub114 = sub nsw i32 %137, 1
  store i32 %sub114, ptr %i__3, align 4, !tbaa !8
  %138 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %139 = load i32, ptr %i__, align 4, !tbaa !8
  %140 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add115 = add nsw i32 %139, %140
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds %struct.doublecomplex, ptr %138, i64 %idxprom116
  %141 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %142 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %143 = load i32, ptr %i__, align 4, !tbaa !8
  %144 = load i32, ptr %i__, align 4, !tbaa !8
  %145 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul118 = mul nsw i32 %144, %145
  %add119 = add nsw i32 %143, %mul118
  %idxprom120 = sext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds %struct.doublecomplex, ptr %142, i64 %idxprom120
  %146 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %147 = load i32, ptr %i__, align 4, !tbaa !8
  %148 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul122 = mul nsw i32 %147, %148
  %add123 = add nsw i32 %mul122, 1
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds %struct.doublecomplex, ptr %146, i64 %idxprom124
  %call126 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx117, ptr noundef %141, ptr noundef %arrayidx121, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx125, ptr noundef @c__1)
  %149 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %150 = load i32, ptr %149, align 4, !tbaa !8
  %151 = load i32, ptr %i__, align 4, !tbaa !8
  %sub127 = sub nsw i32 %150, %151
  store i32 %sub127, ptr %i__2, align 4, !tbaa !8
  %152 = load i32, ptr %i__, align 4, !tbaa !8
  %sub128 = sub nsw i32 %152, 1
  store i32 %sub128, ptr %i__3, align 4, !tbaa !8
  %r129 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r129, align 8, !tbaa !10
  %i130 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i130, align 8, !tbaa !13
  %153 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %154 = load i32, ptr %i__, align 4, !tbaa !8
  %add131 = add nsw i32 %154, 1
  %155 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add132 = add nsw i32 %add131, %155
  %idxprom133 = sext i32 %add132 to i64
  %arrayidx134 = getelementptr inbounds %struct.doublecomplex, ptr %153, i64 %idxprom133
  %156 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %157 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %158 = load i32, ptr %i__, align 4, !tbaa !8
  %159 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul135 = mul nsw i32 %158, %159
  %add136 = add nsw i32 %mul135, 1
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds %struct.doublecomplex, ptr %157, i64 %idxprom137
  %160 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %161 = load i32, ptr %i__, align 4, !tbaa !8
  %add139 = add nsw i32 %161, 1
  %162 = load i32, ptr %i__, align 4, !tbaa !8
  %163 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul140 = mul nsw i32 %162, %163
  %add141 = add nsw i32 %add139, %mul140
  %idxprom142 = sext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds %struct.doublecomplex, ptr %160, i64 %idxprom142
  %call144 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx134, ptr noundef %156, ptr noundef %arrayidx138, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx143, ptr noundef @c__1)
  %164 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %165 = load i32, ptr %164, align 4, !tbaa !8
  %166 = load i32, ptr %i__, align 4, !tbaa !8
  %sub145 = sub nsw i32 %165, %166
  %add146 = add nsw i32 %sub145, 1
  store i32 %add146, ptr %i__2, align 4, !tbaa !8
  %167 = load i32, ptr %i__, align 4, !tbaa !8
  %sub147 = sub nsw i32 %167, 1
  store i32 %sub147, ptr %i__3, align 4, !tbaa !8
  %168 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %169 = load i32, ptr %i__, align 4, !tbaa !8
  %170 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add148 = add nsw i32 %169, %170
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds %struct.doublecomplex, ptr %168, i64 %idxprom149
  %171 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %172 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %173 = load i32, ptr %i__, align 4, !tbaa !8
  %174 = load i32, ptr %i__, align 4, !tbaa !8
  %175 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul151 = mul nsw i32 %174, %175
  %add152 = add nsw i32 %173, %mul151
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds %struct.doublecomplex, ptr %172, i64 %idxprom153
  %176 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %177 = load i32, ptr %i__, align 4, !tbaa !8
  %178 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul155 = mul nsw i32 %177, %178
  %add156 = add nsw i32 %mul155, 1
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds %struct.doublecomplex, ptr %176, i64 %idxprom157
  %call159 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx150, ptr noundef %171, ptr noundef %arrayidx154, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx158, ptr noundef @c__1)
  %179 = load i32, ptr %i__, align 4, !tbaa !8
  %sub160 = sub nsw i32 %179, 1
  store i32 %sub160, ptr %i__2, align 4, !tbaa !8
  %180 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %181 = load i32, ptr %180, align 4, !tbaa !8
  %182 = load i32, ptr %i__, align 4, !tbaa !8
  %sub161 = sub nsw i32 %181, %182
  store i32 %sub161, ptr %i__3, align 4, !tbaa !8
  %r162 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r162, align 8, !tbaa !10
  %i163 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i163, align 8, !tbaa !13
  %183 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %184 = load i32, ptr %i__, align 4, !tbaa !8
  %add164 = add nsw i32 %184, 1
  %185 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul165 = mul nsw i32 %add164, %185
  %add166 = add nsw i32 %mul165, 1
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds %struct.doublecomplex, ptr %183, i64 %idxprom167
  %186 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %187 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %188 = load i32, ptr %i__, align 4, !tbaa !8
  %189 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul169 = mul nsw i32 %188, %189
  %add170 = add nsw i32 %mul169, 1
  %idxprom171 = sext i32 %add170 to i64
  %arrayidx172 = getelementptr inbounds %struct.doublecomplex, ptr %187, i64 %idxprom171
  %190 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %191 = load i32, ptr %i__, align 4, !tbaa !8
  %add173 = add nsw i32 %191, 1
  %192 = load i32, ptr %i__, align 4, !tbaa !8
  %193 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul174 = mul nsw i32 %192, %193
  %add175 = add nsw i32 %add173, %mul174
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds %struct.doublecomplex, ptr %190, i64 %idxprom176
  %call178 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx168, ptr noundef %186, ptr noundef %arrayidx172, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx177, ptr noundef @c__1)
  %194 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %195 = load i32, ptr %194, align 4, !tbaa !8
  %196 = load i32, ptr %i__, align 4, !tbaa !8
  %sub179 = sub nsw i32 %195, %196
  store i32 %sub179, ptr %i__2, align 4, !tbaa !8
  %197 = load ptr, ptr %tauq.addr, align 8, !tbaa !4
  %198 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom180 = sext i32 %198 to i64
  %arrayidx181 = getelementptr inbounds %struct.doublecomplex, ptr %197, i64 %idxprom180
  %199 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %200 = load i32, ptr %i__, align 4, !tbaa !8
  %add182 = add nsw i32 %200, 1
  %201 = load i32, ptr %i__, align 4, !tbaa !8
  %202 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul183 = mul nsw i32 %201, %202
  %add184 = add nsw i32 %add182, %mul183
  %idxprom185 = sext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds %struct.doublecomplex, ptr %199, i64 %idxprom185
  %call187 = call i32 @zscal_(ptr noundef %i__2, ptr noundef %arrayidx181, ptr noundef %arrayidx186, ptr noundef @c__1)
  %203 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %204 = load i32, ptr %203, align 4, !tbaa !8
  %205 = load i32, ptr %i__, align 4, !tbaa !8
  %sub188 = sub nsw i32 %204, %205
  store i32 %sub188, ptr %i__2, align 4, !tbaa !8
  %206 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %207 = load i32, ptr %i__, align 4, !tbaa !8
  %208 = load i32, ptr %i__, align 4, !tbaa !8
  %add189 = add nsw i32 %208, 1
  %209 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul190 = mul nsw i32 %add189, %209
  %add191 = add nsw i32 %207, %mul190
  %idxprom192 = sext i32 %add191 to i64
  %arrayidx193 = getelementptr inbounds %struct.doublecomplex, ptr %206, i64 %idxprom192
  %210 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call194 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx193, ptr noundef %210)
  %211 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %212 = load i32, ptr %i__, align 4, !tbaa !8
  %213 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add195 = add nsw i32 %212, %213
  %idxprom196 = sext i32 %add195 to i64
  %arrayidx197 = getelementptr inbounds %struct.doublecomplex, ptr %211, i64 %idxprom196
  %214 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call198 = call i32 @zlacgv_(ptr noundef %i__, ptr noundef %arrayidx197, ptr noundef %214)
  %215 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %216 = load i32, ptr %215, align 4, !tbaa !8
  %217 = load i32, ptr %i__, align 4, !tbaa !8
  %sub199 = sub nsw i32 %216, %217
  store i32 %sub199, ptr %i__2, align 4, !tbaa !8
  %r200 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r200, align 8, !tbaa !10
  %i201 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i201, align 8, !tbaa !13
  %218 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %219 = load i32, ptr %i__, align 4, !tbaa !8
  %add202 = add nsw i32 %219, 1
  %220 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add203 = add nsw i32 %add202, %220
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds %struct.doublecomplex, ptr %218, i64 %idxprom204
  %221 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %222 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %223 = load i32, ptr %i__, align 4, !tbaa !8
  %224 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add206 = add nsw i32 %223, %224
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds %struct.doublecomplex, ptr %222, i64 %idxprom207
  %225 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %226 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %227 = load i32, ptr %i__, align 4, !tbaa !8
  %228 = load i32, ptr %i__, align 4, !tbaa !8
  %add209 = add nsw i32 %228, 1
  %229 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul210 = mul nsw i32 %add209, %229
  %add211 = add nsw i32 %227, %mul210
  %idxprom212 = sext i32 %add211 to i64
  %arrayidx213 = getelementptr inbounds %struct.doublecomplex, ptr %226, i64 %idxprom212
  %230 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call214 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__, ptr noundef %z__1, ptr noundef %arrayidx205, ptr noundef %221, ptr noundef %arrayidx208, ptr noundef %225, ptr noundef @c_b2, ptr noundef %arrayidx213, ptr noundef %230)
  %231 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %232 = load i32, ptr %i__, align 4, !tbaa !8
  %233 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add215 = add nsw i32 %232, %233
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds %struct.doublecomplex, ptr %231, i64 %idxprom216
  %234 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call218 = call i32 @zlacgv_(ptr noundef %i__, ptr noundef %arrayidx217, ptr noundef %234)
  %235 = load i32, ptr %i__, align 4, !tbaa !8
  %sub219 = sub nsw i32 %235, 1
  store i32 %sub219, ptr %i__2, align 4, !tbaa !8
  %236 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %237 = load i32, ptr %i__, align 4, !tbaa !8
  %238 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add220 = add nsw i32 %237, %238
  %idxprom221 = sext i32 %add220 to i64
  %arrayidx222 = getelementptr inbounds %struct.doublecomplex, ptr %236, i64 %idxprom221
  %239 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %call223 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx222, ptr noundef %239)
  %240 = load i32, ptr %i__, align 4, !tbaa !8
  %sub224 = sub nsw i32 %240, 1
  store i32 %sub224, ptr %i__2, align 4, !tbaa !8
  %241 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %242 = load i32, ptr %241, align 4, !tbaa !8
  %243 = load i32, ptr %i__, align 4, !tbaa !8
  %sub225 = sub nsw i32 %242, %243
  store i32 %sub225, ptr %i__3, align 4, !tbaa !8
  %r226 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r226, align 8, !tbaa !10
  %i227 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i227, align 8, !tbaa !13
  %244 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %245 = load i32, ptr %i__, align 4, !tbaa !8
  %add228 = add nsw i32 %245, 1
  %246 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul229 = mul nsw i32 %add228, %246
  %add230 = add nsw i32 %mul229, 1
  %idxprom231 = sext i32 %add230 to i64
  %arrayidx232 = getelementptr inbounds %struct.doublecomplex, ptr %244, i64 %idxprom231
  %247 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %248 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %249 = load i32, ptr %i__, align 4, !tbaa !8
  %250 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add233 = add nsw i32 %249, %250
  %idxprom234 = sext i32 %add233 to i64
  %arrayidx235 = getelementptr inbounds %struct.doublecomplex, ptr %248, i64 %idxprom234
  %251 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %252 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %253 = load i32, ptr %i__, align 4, !tbaa !8
  %254 = load i32, ptr %i__, align 4, !tbaa !8
  %add236 = add nsw i32 %254, 1
  %255 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul237 = mul nsw i32 %add236, %255
  %add238 = add nsw i32 %253, %mul237
  %idxprom239 = sext i32 %add238 to i64
  %arrayidx240 = getelementptr inbounds %struct.doublecomplex, ptr %252, i64 %idxprom239
  %256 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call241 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx232, ptr noundef %247, ptr noundef %arrayidx235, ptr noundef %251, ptr noundef @c_b2, ptr noundef %arrayidx240, ptr noundef %256)
  %257 = load i32, ptr %i__, align 4, !tbaa !8
  %sub242 = sub nsw i32 %257, 1
  store i32 %sub242, ptr %i__2, align 4, !tbaa !8
  %258 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %259 = load i32, ptr %i__, align 4, !tbaa !8
  %260 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add243 = add nsw i32 %259, %260
  %idxprom244 = sext i32 %add243 to i64
  %arrayidx245 = getelementptr inbounds %struct.doublecomplex, ptr %258, i64 %idxprom244
  %261 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %call246 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx245, ptr noundef %261)
  %262 = load i32, ptr %i__, align 4, !tbaa !8
  %263 = load i32, ptr %i__, align 4, !tbaa !8
  %add247 = add nsw i32 %263, 1
  %264 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul248 = mul nsw i32 %add247, %264
  %add249 = add nsw i32 %262, %mul248
  store i32 %add249, ptr %i__2, align 4, !tbaa !8
  %265 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %266 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom250 = sext i32 %266 to i64
  %arrayidx251 = getelementptr inbounds %struct.doublecomplex, ptr %265, i64 %idxprom250
  %r252 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx251, i32 0, i32 0
  %267 = load double, ptr %r252, align 8, !tbaa !10
  %r253 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  store double %267, ptr %r253, align 8, !tbaa !10
  %268 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %269 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom254 = sext i32 %269 to i64
  %arrayidx255 = getelementptr inbounds %struct.doublecomplex, ptr %268, i64 %idxprom254
  %i256 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx255, i32 0, i32 1
  %270 = load double, ptr %i256, align 8, !tbaa !13
  %i257 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 1
  store double %270, ptr %i257, align 8, !tbaa !13
  %271 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %272 = load i32, ptr %271, align 4, !tbaa !8
  %273 = load i32, ptr %i__, align 4, !tbaa !8
  %sub258 = sub nsw i32 %272, %273
  store i32 %sub258, ptr %i__2, align 4, !tbaa !8
  %274 = load i32, ptr %i__, align 4, !tbaa !8
  %add259 = add nsw i32 %274, 2
  store i32 %add259, ptr %i__3, align 4, !tbaa !8
  %275 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %276 = load i32, ptr %i__, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x260) #3
  %277 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %277, ptr %_x260, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y261) #3
  %278 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %279 = load i32, ptr %278, align 4, !tbaa !8
  store i32 %279, ptr %_y261, align 4, !tbaa !8
  %280 = load i32, ptr %_x260, align 4, !tbaa !8
  %281 = load i32, ptr %_y261, align 4, !tbaa !8
  %cmp263 = icmp slt i32 %280, %281
  br i1 %cmp263, label %cond.true264, label %cond.false265

cond.true264:                                     ; preds = %if.then111
  %282 = load i32, ptr %_x260, align 4, !tbaa !8
  br label %cond.end266

cond.false265:                                    ; preds = %if.then111
  %283 = load i32, ptr %_y261, align 4, !tbaa !8
  br label %cond.end266

cond.end266:                                      ; preds = %cond.false265, %cond.true264
  %cond267 = phi i32 [ %282, %cond.true264 ], [ %283, %cond.false265 ]
  store i32 %cond267, ptr %tmp262, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y261) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x260) #3
  %284 = load i32, ptr %tmp262, align 4, !tbaa !8
  %285 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul268 = mul nsw i32 %284, %285
  %add269 = add nsw i32 %276, %mul268
  %idxprom270 = sext i32 %add269 to i64
  %arrayidx271 = getelementptr inbounds %struct.doublecomplex, ptr %275, i64 %idxprom270
  %286 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %287 = load ptr, ptr %taup.addr, align 8, !tbaa !4
  %288 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom272 = sext i32 %288 to i64
  %arrayidx273 = getelementptr inbounds %struct.doublecomplex, ptr %287, i64 %idxprom272
  %call274 = call i32 @zlarfg_(ptr noundef %i__2, ptr noundef %alpha, ptr noundef %arrayidx271, ptr noundef %286, ptr noundef %arrayidx273)
  %289 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %289, ptr %i__2, align 4, !tbaa !8
  %r275 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  %290 = load double, ptr %r275, align 8, !tbaa !10
  %291 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %292 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom276 = sext i32 %292 to i64
  %arrayidx277 = getelementptr inbounds double, ptr %291, i64 %idxprom276
  store double %290, ptr %arrayidx277, align 8, !tbaa !14
  %293 = load i32, ptr %i__, align 4, !tbaa !8
  %294 = load i32, ptr %i__, align 4, !tbaa !8
  %add278 = add nsw i32 %294, 1
  %295 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul279 = mul nsw i32 %add278, %295
  %add280 = add nsw i32 %293, %mul279
  store i32 %add280, ptr %i__2, align 4, !tbaa !8
  %296 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %297 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom281 = sext i32 %297 to i64
  %arrayidx282 = getelementptr inbounds %struct.doublecomplex, ptr %296, i64 %idxprom281
  %r283 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx282, i32 0, i32 0
  store double 1.000000e+00, ptr %r283, align 8, !tbaa !10
  %298 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %299 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom284 = sext i32 %299 to i64
  %arrayidx285 = getelementptr inbounds %struct.doublecomplex, ptr %298, i64 %idxprom284
  %i286 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx285, i32 0, i32 1
  store double 0.000000e+00, ptr %i286, align 8, !tbaa !13
  br label %if.end287

if.end287:                                        ; preds = %cond.end266, %if.end91
  %300 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %301 = load i32, ptr %300, align 4, !tbaa !8
  %302 = load i32, ptr %i__, align 4, !tbaa !8
  %sub288 = sub nsw i32 %301, %302
  store i32 %sub288, ptr %i__2, align 4, !tbaa !8
  %303 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %304 = load i32, ptr %303, align 4, !tbaa !8
  %305 = load i32, ptr %i__, align 4, !tbaa !8
  %sub289 = sub nsw i32 %304, %305
  store i32 %sub289, ptr %i__3, align 4, !tbaa !8
  %306 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %307 = load i32, ptr %i__, align 4, !tbaa !8
  %add290 = add nsw i32 %307, 1
  %308 = load i32, ptr %i__, align 4, !tbaa !8
  %add291 = add nsw i32 %308, 1
  %309 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul292 = mul nsw i32 %add291, %309
  %add293 = add nsw i32 %add290, %mul292
  %idxprom294 = sext i32 %add293 to i64
  %arrayidx295 = getelementptr inbounds %struct.doublecomplex, ptr %306, i64 %idxprom294
  %310 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %311 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %312 = load i32, ptr %i__, align 4, !tbaa !8
  %313 = load i32, ptr %i__, align 4, !tbaa !8
  %add296 = add nsw i32 %313, 1
  %314 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul297 = mul nsw i32 %add296, %314
  %add298 = add nsw i32 %312, %mul297
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds %struct.doublecomplex, ptr %311, i64 %idxprom299
  %315 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %316 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %317 = load i32, ptr %i__, align 4, !tbaa !8
  %add301 = add nsw i32 %317, 1
  %318 = load i32, ptr %i__, align 4, !tbaa !8
  %319 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul302 = mul nsw i32 %318, %319
  %add303 = add nsw i32 %add301, %mul302
  %idxprom304 = sext i32 %add303 to i64
  %arrayidx305 = getelementptr inbounds %struct.doublecomplex, ptr %316, i64 %idxprom304
  %call306 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx295, ptr noundef %310, ptr noundef %arrayidx300, ptr noundef %315, ptr noundef @c_b1, ptr noundef %arrayidx305, ptr noundef @c__1)
  %320 = load i32, ptr %thread_id, align 4, !tbaa !8
  %cmp307 = icmp eq i32 %320, 0
  br i1 %cmp307, label %if.then308, label %if.end392

if.then308:                                       ; preds = %if.end287
  %321 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %322 = load i32, ptr %321, align 4, !tbaa !8
  %323 = load i32, ptr %i__, align 4, !tbaa !8
  %sub309 = sub nsw i32 %322, %323
  store i32 %sub309, ptr %i__2, align 4, !tbaa !8
  %324 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %325 = load i32, ptr %i__, align 4, !tbaa !8
  %add310 = add nsw i32 %325, 1
  %326 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add311 = add nsw i32 %add310, %326
  %idxprom312 = sext i32 %add311 to i64
  %arrayidx313 = getelementptr inbounds %struct.doublecomplex, ptr %324, i64 %idxprom312
  %327 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %328 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %329 = load i32, ptr %i__, align 4, !tbaa !8
  %330 = load i32, ptr %i__, align 4, !tbaa !8
  %add314 = add nsw i32 %330, 1
  %331 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul315 = mul nsw i32 %add314, %331
  %add316 = add nsw i32 %329, %mul315
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds %struct.doublecomplex, ptr %328, i64 %idxprom317
  %332 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %333 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %334 = load i32, ptr %i__, align 4, !tbaa !8
  %335 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul319 = mul nsw i32 %334, %335
  %add320 = add nsw i32 %mul319, 1
  %idxprom321 = sext i32 %add320 to i64
  %arrayidx322 = getelementptr inbounds %struct.doublecomplex, ptr %333, i64 %idxprom321
  %call323 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__, ptr noundef @c_b2, ptr noundef %arrayidx313, ptr noundef %327, ptr noundef %arrayidx318, ptr noundef %332, ptr noundef @c_b1, ptr noundef %arrayidx322, ptr noundef @c__1)
  %336 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %337 = load i32, ptr %336, align 4, !tbaa !8
  %338 = load i32, ptr %i__, align 4, !tbaa !8
  %sub324 = sub nsw i32 %337, %338
  store i32 %sub324, ptr %i__2, align 4, !tbaa !8
  %r325 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r325, align 8, !tbaa !10
  %i326 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i326, align 8, !tbaa !13
  %339 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %340 = load i32, ptr %i__, align 4, !tbaa !8
  %add327 = add nsw i32 %340, 1
  %341 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add328 = add nsw i32 %add327, %341
  %idxprom329 = sext i32 %add328 to i64
  %arrayidx330 = getelementptr inbounds %struct.doublecomplex, ptr %339, i64 %idxprom329
  %342 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %343 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %344 = load i32, ptr %i__, align 4, !tbaa !8
  %345 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul331 = mul nsw i32 %344, %345
  %add332 = add nsw i32 %mul331, 1
  %idxprom333 = sext i32 %add332 to i64
  %arrayidx334 = getelementptr inbounds %struct.doublecomplex, ptr %343, i64 %idxprom333
  %346 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %347 = load i32, ptr %i__, align 4, !tbaa !8
  %add335 = add nsw i32 %347, 1
  %348 = load i32, ptr %i__, align 4, !tbaa !8
  %349 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul336 = mul nsw i32 %348, %349
  %add337 = add nsw i32 %add335, %mul336
  %idxprom338 = sext i32 %add337 to i64
  %arrayidx339 = getelementptr inbounds %struct.doublecomplex, ptr %346, i64 %idxprom338
  %call340 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__, ptr noundef %z__1, ptr noundef %arrayidx330, ptr noundef %342, ptr noundef %arrayidx334, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx339, ptr noundef @c__1)
  %350 = load i32, ptr %i__, align 4, !tbaa !8
  %sub341 = sub nsw i32 %350, 1
  store i32 %sub341, ptr %i__2, align 4, !tbaa !8
  %351 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %352 = load i32, ptr %351, align 4, !tbaa !8
  %353 = load i32, ptr %i__, align 4, !tbaa !8
  %sub342 = sub nsw i32 %352, %353
  store i32 %sub342, ptr %i__3, align 4, !tbaa !8
  %354 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %355 = load i32, ptr %i__, align 4, !tbaa !8
  %add343 = add nsw i32 %355, 1
  %356 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul344 = mul nsw i32 %add343, %356
  %add345 = add nsw i32 %mul344, 1
  %idxprom346 = sext i32 %add345 to i64
  %arrayidx347 = getelementptr inbounds %struct.doublecomplex, ptr %354, i64 %idxprom346
  %357 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %358 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %359 = load i32, ptr %i__, align 4, !tbaa !8
  %360 = load i32, ptr %i__, align 4, !tbaa !8
  %add348 = add nsw i32 %360, 1
  %361 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul349 = mul nsw i32 %add348, %361
  %add350 = add nsw i32 %359, %mul349
  %idxprom351 = sext i32 %add350 to i64
  %arrayidx352 = getelementptr inbounds %struct.doublecomplex, ptr %358, i64 %idxprom351
  %362 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %363 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %364 = load i32, ptr %i__, align 4, !tbaa !8
  %365 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul353 = mul nsw i32 %364, %365
  %add354 = add nsw i32 %mul353, 1
  %idxprom355 = sext i32 %add354 to i64
  %arrayidx356 = getelementptr inbounds %struct.doublecomplex, ptr %363, i64 %idxprom355
  %call357 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx347, ptr noundef %357, ptr noundef %arrayidx352, ptr noundef %362, ptr noundef @c_b1, ptr noundef %arrayidx356, ptr noundef @c__1)
  %366 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %367 = load i32, ptr %366, align 4, !tbaa !8
  %368 = load i32, ptr %i__, align 4, !tbaa !8
  %sub358 = sub nsw i32 %367, %368
  store i32 %sub358, ptr %i__2, align 4, !tbaa !8
  %369 = load i32, ptr %i__, align 4, !tbaa !8
  %sub359 = sub nsw i32 %369, 1
  store i32 %sub359, ptr %i__3, align 4, !tbaa !8
  %r360 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r360, align 8, !tbaa !10
  %i361 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i361, align 8, !tbaa !13
  %370 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %371 = load i32, ptr %i__, align 4, !tbaa !8
  %add362 = add nsw i32 %371, 1
  %372 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add363 = add nsw i32 %add362, %372
  %idxprom364 = sext i32 %add363 to i64
  %arrayidx365 = getelementptr inbounds %struct.doublecomplex, ptr %370, i64 %idxprom364
  %373 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %374 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %375 = load i32, ptr %i__, align 4, !tbaa !8
  %376 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul366 = mul nsw i32 %375, %376
  %add367 = add nsw i32 %mul366, 1
  %idxprom368 = sext i32 %add367 to i64
  %arrayidx369 = getelementptr inbounds %struct.doublecomplex, ptr %374, i64 %idxprom368
  %377 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %378 = load i32, ptr %i__, align 4, !tbaa !8
  %add370 = add nsw i32 %378, 1
  %379 = load i32, ptr %i__, align 4, !tbaa !8
  %380 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul371 = mul nsw i32 %379, %380
  %add372 = add nsw i32 %add370, %mul371
  %idxprom373 = sext i32 %add372 to i64
  %arrayidx374 = getelementptr inbounds %struct.doublecomplex, ptr %377, i64 %idxprom373
  %call375 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx365, ptr noundef %373, ptr noundef %arrayidx369, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx374, ptr noundef @c__1)
  %381 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %382 = load i32, ptr %381, align 4, !tbaa !8
  %383 = load i32, ptr %i__, align 4, !tbaa !8
  %sub376 = sub nsw i32 %382, %383
  store i32 %sub376, ptr %i__2, align 4, !tbaa !8
  %384 = load ptr, ptr %taup.addr, align 8, !tbaa !4
  %385 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom377 = sext i32 %385 to i64
  %arrayidx378 = getelementptr inbounds %struct.doublecomplex, ptr %384, i64 %idxprom377
  %386 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %387 = load i32, ptr %i__, align 4, !tbaa !8
  %add379 = add nsw i32 %387, 1
  %388 = load i32, ptr %i__, align 4, !tbaa !8
  %389 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul380 = mul nsw i32 %388, %389
  %add381 = add nsw i32 %add379, %mul380
  %idxprom382 = sext i32 %add381 to i64
  %arrayidx383 = getelementptr inbounds %struct.doublecomplex, ptr %386, i64 %idxprom382
  %call384 = call i32 @zscal_(ptr noundef %i__2, ptr noundef %arrayidx378, ptr noundef %arrayidx383, ptr noundef @c__1)
  %390 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %391 = load i32, ptr %390, align 4, !tbaa !8
  %392 = load i32, ptr %i__, align 4, !tbaa !8
  %sub385 = sub nsw i32 %391, %392
  store i32 %sub385, ptr %i__2, align 4, !tbaa !8
  %393 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %394 = load i32, ptr %i__, align 4, !tbaa !8
  %395 = load i32, ptr %i__, align 4, !tbaa !8
  %add386 = add nsw i32 %395, 1
  %396 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul387 = mul nsw i32 %add386, %396
  %add388 = add nsw i32 %394, %mul387
  %idxprom389 = sext i32 %add388 to i64
  %arrayidx390 = getelementptr inbounds %struct.doublecomplex, ptr %393, i64 %idxprom389
  %397 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call391 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx390, ptr noundef %397)
  br label %if.end392

if.end392:                                        ; preds = %if.then308, %if.end287
  br label %if.end393

if.end393:                                        ; preds = %if.end392, %if.end78
  br label %for.inc

for.inc:                                          ; preds = %if.end393
  %398 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %398, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  br label %if.end805

if.else:                                          ; preds = %if.end
  %399 = load ptr, ptr %nb.addr, align 8, !tbaa !4
  %400 = load i32, ptr %399, align 4, !tbaa !8
  store i32 %400, ptr %i__1, align 4, !tbaa !8
  store i32 0, ptr %thread_id, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond394

for.cond394:                                      ; preds = %for.inc802, %if.else
  %401 = load i32, ptr %i__, align 4, !tbaa !8
  %402 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp395 = icmp sle i32 %401, %402
  br i1 %cmp395, label %for.body396, label %for.end804

for.body396:                                      ; preds = %for.cond394
  %403 = load i32, ptr %thread_id, align 4, !tbaa !8
  %cmp397 = icmp eq i32 %403, 0
  br i1 %cmp397, label %if.then398, label %if.end490

if.then398:                                       ; preds = %for.body396
  %404 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %405 = load i32, ptr %404, align 4, !tbaa !8
  %406 = load i32, ptr %i__, align 4, !tbaa !8
  %sub399 = sub nsw i32 %405, %406
  %add400 = add nsw i32 %sub399, 1
  store i32 %add400, ptr %i__2, align 4, !tbaa !8
  %407 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %408 = load i32, ptr %i__, align 4, !tbaa !8
  %409 = load i32, ptr %i__, align 4, !tbaa !8
  %410 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul401 = mul nsw i32 %409, %410
  %add402 = add nsw i32 %408, %mul401
  %idxprom403 = sext i32 %add402 to i64
  %arrayidx404 = getelementptr inbounds %struct.doublecomplex, ptr %407, i64 %idxprom403
  %411 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call405 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx404, ptr noundef %411)
  %412 = load i32, ptr %i__, align 4, !tbaa !8
  %sub406 = sub nsw i32 %412, 1
  store i32 %sub406, ptr %i__2, align 4, !tbaa !8
  %413 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %414 = load i32, ptr %i__, align 4, !tbaa !8
  %415 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add407 = add nsw i32 %414, %415
  %idxprom408 = sext i32 %add407 to i64
  %arrayidx409 = getelementptr inbounds %struct.doublecomplex, ptr %413, i64 %idxprom408
  %416 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call410 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx409, ptr noundef %416)
  %417 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %418 = load i32, ptr %417, align 4, !tbaa !8
  %419 = load i32, ptr %i__, align 4, !tbaa !8
  %sub411 = sub nsw i32 %418, %419
  %add412 = add nsw i32 %sub411, 1
  store i32 %add412, ptr %i__2, align 4, !tbaa !8
  %420 = load i32, ptr %i__, align 4, !tbaa !8
  %sub413 = sub nsw i32 %420, 1
  store i32 %sub413, ptr %i__3, align 4, !tbaa !8
  %r414 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r414, align 8, !tbaa !10
  %i415 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i415, align 8, !tbaa !13
  %421 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %422 = load i32, ptr %i__, align 4, !tbaa !8
  %423 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add416 = add nsw i32 %422, %423
  %idxprom417 = sext i32 %add416 to i64
  %arrayidx418 = getelementptr inbounds %struct.doublecomplex, ptr %421, i64 %idxprom417
  %424 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %425 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %426 = load i32, ptr %i__, align 4, !tbaa !8
  %427 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add419 = add nsw i32 %426, %427
  %idxprom420 = sext i32 %add419 to i64
  %arrayidx421 = getelementptr inbounds %struct.doublecomplex, ptr %425, i64 %idxprom420
  %428 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %429 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %430 = load i32, ptr %i__, align 4, !tbaa !8
  %431 = load i32, ptr %i__, align 4, !tbaa !8
  %432 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul422 = mul nsw i32 %431, %432
  %add423 = add nsw i32 %430, %mul422
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds %struct.doublecomplex, ptr %429, i64 %idxprom424
  %433 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call426 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx418, ptr noundef %424, ptr noundef %arrayidx421, ptr noundef %428, ptr noundef @c_b2, ptr noundef %arrayidx425, ptr noundef %433)
  %434 = load i32, ptr %i__, align 4, !tbaa !8
  %sub427 = sub nsw i32 %434, 1
  store i32 %sub427, ptr %i__2, align 4, !tbaa !8
  %435 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %436 = load i32, ptr %i__, align 4, !tbaa !8
  %437 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add428 = add nsw i32 %436, %437
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds %struct.doublecomplex, ptr %435, i64 %idxprom429
  %438 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call431 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx430, ptr noundef %438)
  %439 = load i32, ptr %i__, align 4, !tbaa !8
  %sub432 = sub nsw i32 %439, 1
  store i32 %sub432, ptr %i__2, align 4, !tbaa !8
  %440 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %441 = load i32, ptr %i__, align 4, !tbaa !8
  %442 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add433 = add nsw i32 %441, %442
  %idxprom434 = sext i32 %add433 to i64
  %arrayidx435 = getelementptr inbounds %struct.doublecomplex, ptr %440, i64 %idxprom434
  %443 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %call436 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx435, ptr noundef %443)
  %444 = load i32, ptr %i__, align 4, !tbaa !8
  %sub437 = sub nsw i32 %444, 1
  store i32 %sub437, ptr %i__2, align 4, !tbaa !8
  %445 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %446 = load i32, ptr %445, align 4, !tbaa !8
  %447 = load i32, ptr %i__, align 4, !tbaa !8
  %sub438 = sub nsw i32 %446, %447
  %add439 = add nsw i32 %sub438, 1
  store i32 %add439, ptr %i__3, align 4, !tbaa !8
  %r440 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r440, align 8, !tbaa !10
  %i441 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i441, align 8, !tbaa !13
  %448 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %449 = load i32, ptr %i__, align 4, !tbaa !8
  %450 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul442 = mul nsw i32 %449, %450
  %add443 = add nsw i32 %mul442, 1
  %idxprom444 = sext i32 %add443 to i64
  %arrayidx445 = getelementptr inbounds %struct.doublecomplex, ptr %448, i64 %idxprom444
  %451 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %452 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %453 = load i32, ptr %i__, align 4, !tbaa !8
  %454 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add446 = add nsw i32 %453, %454
  %idxprom447 = sext i32 %add446 to i64
  %arrayidx448 = getelementptr inbounds %struct.doublecomplex, ptr %452, i64 %idxprom447
  %455 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %456 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %457 = load i32, ptr %i__, align 4, !tbaa !8
  %458 = load i32, ptr %i__, align 4, !tbaa !8
  %459 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul449 = mul nsw i32 %458, %459
  %add450 = add nsw i32 %457, %mul449
  %idxprom451 = sext i32 %add450 to i64
  %arrayidx452 = getelementptr inbounds %struct.doublecomplex, ptr %456, i64 %idxprom451
  %460 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call453 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx445, ptr noundef %451, ptr noundef %arrayidx448, ptr noundef %455, ptr noundef @c_b2, ptr noundef %arrayidx452, ptr noundef %460)
  %461 = load i32, ptr %i__, align 4, !tbaa !8
  %sub454 = sub nsw i32 %461, 1
  store i32 %sub454, ptr %i__2, align 4, !tbaa !8
  %462 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %463 = load i32, ptr %i__, align 4, !tbaa !8
  %464 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add455 = add nsw i32 %463, %464
  %idxprom456 = sext i32 %add455 to i64
  %arrayidx457 = getelementptr inbounds %struct.doublecomplex, ptr %462, i64 %idxprom456
  %465 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %call458 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx457, ptr noundef %465)
  %466 = load i32, ptr %i__, align 4, !tbaa !8
  %467 = load i32, ptr %i__, align 4, !tbaa !8
  %468 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul459 = mul nsw i32 %467, %468
  %add460 = add nsw i32 %466, %mul459
  store i32 %add460, ptr %i__2, align 4, !tbaa !8
  %469 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %470 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom461 = sext i32 %470 to i64
  %arrayidx462 = getelementptr inbounds %struct.doublecomplex, ptr %469, i64 %idxprom461
  %r463 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx462, i32 0, i32 0
  %471 = load double, ptr %r463, align 8, !tbaa !10
  %r464 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  store double %471, ptr %r464, align 8, !tbaa !10
  %472 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %473 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom465 = sext i32 %473 to i64
  %arrayidx466 = getelementptr inbounds %struct.doublecomplex, ptr %472, i64 %idxprom465
  %i467 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx466, i32 0, i32 1
  %474 = load double, ptr %i467, align 8, !tbaa !13
  %i468 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 1
  store double %474, ptr %i468, align 8, !tbaa !13
  %475 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %476 = load i32, ptr %475, align 4, !tbaa !8
  %477 = load i32, ptr %i__, align 4, !tbaa !8
  %sub469 = sub nsw i32 %476, %477
  %add470 = add nsw i32 %sub469, 1
  store i32 %add470, ptr %i__2, align 4, !tbaa !8
  %478 = load i32, ptr %i__, align 4, !tbaa !8
  %add471 = add nsw i32 %478, 1
  store i32 %add471, ptr %i__3, align 4, !tbaa !8
  %479 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %480 = load i32, ptr %i__, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x472) #3
  %481 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %481, ptr %_x472, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y473) #3
  %482 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %483 = load i32, ptr %482, align 4, !tbaa !8
  store i32 %483, ptr %_y473, align 4, !tbaa !8
  %484 = load i32, ptr %_x472, align 4, !tbaa !8
  %485 = load i32, ptr %_y473, align 4, !tbaa !8
  %cmp475 = icmp slt i32 %484, %485
  br i1 %cmp475, label %cond.true476, label %cond.false477

cond.true476:                                     ; preds = %if.then398
  %486 = load i32, ptr %_x472, align 4, !tbaa !8
  br label %cond.end478

cond.false477:                                    ; preds = %if.then398
  %487 = load i32, ptr %_y473, align 4, !tbaa !8
  br label %cond.end478

cond.end478:                                      ; preds = %cond.false477, %cond.true476
  %cond479 = phi i32 [ %486, %cond.true476 ], [ %487, %cond.false477 ]
  store i32 %cond479, ptr %tmp474, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y473) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x472) #3
  %488 = load i32, ptr %tmp474, align 4, !tbaa !8
  %489 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul480 = mul nsw i32 %488, %489
  %add481 = add nsw i32 %480, %mul480
  %idxprom482 = sext i32 %add481 to i64
  %arrayidx483 = getelementptr inbounds %struct.doublecomplex, ptr %479, i64 %idxprom482
  %490 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %491 = load ptr, ptr %taup.addr, align 8, !tbaa !4
  %492 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom484 = sext i32 %492 to i64
  %arrayidx485 = getelementptr inbounds %struct.doublecomplex, ptr %491, i64 %idxprom484
  %call486 = call i32 @zlarfg_(ptr noundef %i__2, ptr noundef %alpha, ptr noundef %arrayidx483, ptr noundef %490, ptr noundef %arrayidx485)
  %493 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %493, ptr %i__2, align 4, !tbaa !8
  %r487 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  %494 = load double, ptr %r487, align 8, !tbaa !10
  %495 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %496 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom488 = sext i32 %496 to i64
  %arrayidx489 = getelementptr inbounds double, ptr %495, i64 %idxprom488
  store double %494, ptr %arrayidx489, align 8, !tbaa !14
  br label %if.end490

if.end490:                                        ; preds = %cond.end478, %for.body396
  %497 = load i32, ptr %i__, align 4, !tbaa !8
  %498 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %499 = load i32, ptr %498, align 4, !tbaa !8
  %cmp491 = icmp slt i32 %497, %499
  br i1 %cmp491, label %if.then492, label %if.else790

if.then492:                                       ; preds = %if.end490
  %500 = load i32, ptr %thread_id, align 4, !tbaa !8
  %cmp493 = icmp eq i32 %500, 0
  br i1 %cmp493, label %if.then494, label %if.end503

if.then494:                                       ; preds = %if.then492
  %501 = load i32, ptr %i__, align 4, !tbaa !8
  %502 = load i32, ptr %i__, align 4, !tbaa !8
  %503 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul495 = mul nsw i32 %502, %503
  %add496 = add nsw i32 %501, %mul495
  store i32 %add496, ptr %i__2, align 4, !tbaa !8
  %504 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %505 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom497 = sext i32 %505 to i64
  %arrayidx498 = getelementptr inbounds %struct.doublecomplex, ptr %504, i64 %idxprom497
  %r499 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx498, i32 0, i32 0
  store double 1.000000e+00, ptr %r499, align 8, !tbaa !10
  %506 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %507 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom500 = sext i32 %507 to i64
  %arrayidx501 = getelementptr inbounds %struct.doublecomplex, ptr %506, i64 %idxprom500
  %i502 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx501, i32 0, i32 1
  store double 0.000000e+00, ptr %i502, align 8, !tbaa !13
  br label %if.end503

if.end503:                                        ; preds = %if.then494, %if.then492
  %508 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %509 = load i32, ptr %508, align 4, !tbaa !8
  %510 = load i32, ptr %i__, align 4, !tbaa !8
  %sub504 = sub nsw i32 %509, %510
  store i32 %sub504, ptr %i__2, align 4, !tbaa !8
  %511 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %512 = load i32, ptr %511, align 4, !tbaa !8
  %513 = load i32, ptr %i__, align 4, !tbaa !8
  %sub505 = sub nsw i32 %512, %513
  %add506 = add nsw i32 %sub505, 1
  store i32 %add506, ptr %i__3, align 4, !tbaa !8
  %514 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %515 = load i32, ptr %i__, align 4, !tbaa !8
  %add507 = add nsw i32 %515, 1
  %516 = load i32, ptr %i__, align 4, !tbaa !8
  %517 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul508 = mul nsw i32 %516, %517
  %add509 = add nsw i32 %add507, %mul508
  %idxprom510 = sext i32 %add509 to i64
  %arrayidx511 = getelementptr inbounds %struct.doublecomplex, ptr %514, i64 %idxprom510
  %518 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %519 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %520 = load i32, ptr %i__, align 4, !tbaa !8
  %521 = load i32, ptr %i__, align 4, !tbaa !8
  %522 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul512 = mul nsw i32 %521, %522
  %add513 = add nsw i32 %520, %mul512
  %idxprom514 = sext i32 %add513 to i64
  %arrayidx515 = getelementptr inbounds %struct.doublecomplex, ptr %519, i64 %idxprom514
  %523 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %524 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %525 = load i32, ptr %i__, align 4, !tbaa !8
  %add516 = add nsw i32 %525, 1
  %526 = load i32, ptr %i__, align 4, !tbaa !8
  %527 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul517 = mul nsw i32 %526, %527
  %add518 = add nsw i32 %add516, %mul517
  %idxprom519 = sext i32 %add518 to i64
  %arrayidx520 = getelementptr inbounds %struct.doublecomplex, ptr %524, i64 %idxprom519
  %call521 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx511, ptr noundef %518, ptr noundef %arrayidx515, ptr noundef %523, ptr noundef @c_b1, ptr noundef %arrayidx520, ptr noundef @c__1)
  %528 = load i32, ptr %thread_id, align 4, !tbaa !8
  %cmp522 = icmp eq i32 %528, 0
  br i1 %cmp522, label %if.then523, label %if.end691

if.then523:                                       ; preds = %if.end503
  %529 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %530 = load i32, ptr %529, align 4, !tbaa !8
  %531 = load i32, ptr %i__, align 4, !tbaa !8
  %sub524 = sub nsw i32 %530, %531
  %add525 = add nsw i32 %sub524, 1
  store i32 %add525, ptr %i__2, align 4, !tbaa !8
  %532 = load i32, ptr %i__, align 4, !tbaa !8
  %sub526 = sub nsw i32 %532, 1
  store i32 %sub526, ptr %i__3, align 4, !tbaa !8
  %533 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %534 = load i32, ptr %i__, align 4, !tbaa !8
  %535 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add527 = add nsw i32 %534, %535
  %idxprom528 = sext i32 %add527 to i64
  %arrayidx529 = getelementptr inbounds %struct.doublecomplex, ptr %533, i64 %idxprom528
  %536 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %537 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %538 = load i32, ptr %i__, align 4, !tbaa !8
  %539 = load i32, ptr %i__, align 4, !tbaa !8
  %540 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul530 = mul nsw i32 %539, %540
  %add531 = add nsw i32 %538, %mul530
  %idxprom532 = sext i32 %add531 to i64
  %arrayidx533 = getelementptr inbounds %struct.doublecomplex, ptr %537, i64 %idxprom532
  %541 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %542 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %543 = load i32, ptr %i__, align 4, !tbaa !8
  %544 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul534 = mul nsw i32 %543, %544
  %add535 = add nsw i32 %mul534, 1
  %idxprom536 = sext i32 %add535 to i64
  %arrayidx537 = getelementptr inbounds %struct.doublecomplex, ptr %542, i64 %idxprom536
  %call538 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx529, ptr noundef %536, ptr noundef %arrayidx533, ptr noundef %541, ptr noundef @c_b1, ptr noundef %arrayidx537, ptr noundef @c__1)
  %545 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %546 = load i32, ptr %545, align 4, !tbaa !8
  %547 = load i32, ptr %i__, align 4, !tbaa !8
  %sub539 = sub nsw i32 %546, %547
  store i32 %sub539, ptr %i__2, align 4, !tbaa !8
  %548 = load i32, ptr %i__, align 4, !tbaa !8
  %sub540 = sub nsw i32 %548, 1
  store i32 %sub540, ptr %i__3, align 4, !tbaa !8
  %r541 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r541, align 8, !tbaa !10
  %i542 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i542, align 8, !tbaa !13
  %549 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %550 = load i32, ptr %i__, align 4, !tbaa !8
  %add543 = add nsw i32 %550, 1
  %551 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add544 = add nsw i32 %add543, %551
  %idxprom545 = sext i32 %add544 to i64
  %arrayidx546 = getelementptr inbounds %struct.doublecomplex, ptr %549, i64 %idxprom545
  %552 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %553 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %554 = load i32, ptr %i__, align 4, !tbaa !8
  %555 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul547 = mul nsw i32 %554, %555
  %add548 = add nsw i32 %mul547, 1
  %idxprom549 = sext i32 %add548 to i64
  %arrayidx550 = getelementptr inbounds %struct.doublecomplex, ptr %553, i64 %idxprom549
  %556 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %557 = load i32, ptr %i__, align 4, !tbaa !8
  %add551 = add nsw i32 %557, 1
  %558 = load i32, ptr %i__, align 4, !tbaa !8
  %559 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul552 = mul nsw i32 %558, %559
  %add553 = add nsw i32 %add551, %mul552
  %idxprom554 = sext i32 %add553 to i64
  %arrayidx555 = getelementptr inbounds %struct.doublecomplex, ptr %556, i64 %idxprom554
  %call556 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx546, ptr noundef %552, ptr noundef %arrayidx550, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx555, ptr noundef @c__1)
  %560 = load i32, ptr %i__, align 4, !tbaa !8
  %sub557 = sub nsw i32 %560, 1
  store i32 %sub557, ptr %i__2, align 4, !tbaa !8
  %561 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %562 = load i32, ptr %561, align 4, !tbaa !8
  %563 = load i32, ptr %i__, align 4, !tbaa !8
  %sub558 = sub nsw i32 %562, %563
  %add559 = add nsw i32 %sub558, 1
  store i32 %add559, ptr %i__3, align 4, !tbaa !8
  %564 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %565 = load i32, ptr %i__, align 4, !tbaa !8
  %566 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul560 = mul nsw i32 %565, %566
  %add561 = add nsw i32 %mul560, 1
  %idxprom562 = sext i32 %add561 to i64
  %arrayidx563 = getelementptr inbounds %struct.doublecomplex, ptr %564, i64 %idxprom562
  %567 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %568 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %569 = load i32, ptr %i__, align 4, !tbaa !8
  %570 = load i32, ptr %i__, align 4, !tbaa !8
  %571 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul564 = mul nsw i32 %570, %571
  %add565 = add nsw i32 %569, %mul564
  %idxprom566 = sext i32 %add565 to i64
  %arrayidx567 = getelementptr inbounds %struct.doublecomplex, ptr %568, i64 %idxprom566
  %572 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %573 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %574 = load i32, ptr %i__, align 4, !tbaa !8
  %575 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul568 = mul nsw i32 %574, %575
  %add569 = add nsw i32 %mul568, 1
  %idxprom570 = sext i32 %add569 to i64
  %arrayidx571 = getelementptr inbounds %struct.doublecomplex, ptr %573, i64 %idxprom570
  %call572 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx563, ptr noundef %567, ptr noundef %arrayidx567, ptr noundef %572, ptr noundef @c_b1, ptr noundef %arrayidx571, ptr noundef @c__1)
  %576 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %577 = load i32, ptr %576, align 4, !tbaa !8
  %578 = load i32, ptr %i__, align 4, !tbaa !8
  %sub573 = sub nsw i32 %577, %578
  store i32 %sub573, ptr %i__2, align 4, !tbaa !8
  %579 = load i32, ptr %i__, align 4, !tbaa !8
  %sub574 = sub nsw i32 %579, 1
  store i32 %sub574, ptr %i__3, align 4, !tbaa !8
  %r575 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r575, align 8, !tbaa !10
  %i576 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i576, align 8, !tbaa !13
  %580 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %581 = load i32, ptr %i__, align 4, !tbaa !8
  %add577 = add nsw i32 %581, 1
  %582 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add578 = add nsw i32 %add577, %582
  %idxprom579 = sext i32 %add578 to i64
  %arrayidx580 = getelementptr inbounds %struct.doublecomplex, ptr %580, i64 %idxprom579
  %583 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %584 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %585 = load i32, ptr %i__, align 4, !tbaa !8
  %586 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul581 = mul nsw i32 %585, %586
  %add582 = add nsw i32 %mul581, 1
  %idxprom583 = sext i32 %add582 to i64
  %arrayidx584 = getelementptr inbounds %struct.doublecomplex, ptr %584, i64 %idxprom583
  %587 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %588 = load i32, ptr %i__, align 4, !tbaa !8
  %add585 = add nsw i32 %588, 1
  %589 = load i32, ptr %i__, align 4, !tbaa !8
  %590 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul586 = mul nsw i32 %589, %590
  %add587 = add nsw i32 %add585, %mul586
  %idxprom588 = sext i32 %add587 to i64
  %arrayidx589 = getelementptr inbounds %struct.doublecomplex, ptr %587, i64 %idxprom588
  %call590 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx580, ptr noundef %583, ptr noundef %arrayidx584, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx589, ptr noundef @c__1)
  %591 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %592 = load i32, ptr %591, align 4, !tbaa !8
  %593 = load i32, ptr %i__, align 4, !tbaa !8
  %sub591 = sub nsw i32 %592, %593
  store i32 %sub591, ptr %i__2, align 4, !tbaa !8
  %594 = load ptr, ptr %taup.addr, align 8, !tbaa !4
  %595 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom592 = sext i32 %595 to i64
  %arrayidx593 = getelementptr inbounds %struct.doublecomplex, ptr %594, i64 %idxprom592
  %596 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %597 = load i32, ptr %i__, align 4, !tbaa !8
  %add594 = add nsw i32 %597, 1
  %598 = load i32, ptr %i__, align 4, !tbaa !8
  %599 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %mul595 = mul nsw i32 %598, %599
  %add596 = add nsw i32 %add594, %mul595
  %idxprom597 = sext i32 %add596 to i64
  %arrayidx598 = getelementptr inbounds %struct.doublecomplex, ptr %596, i64 %idxprom597
  %call599 = call i32 @zscal_(ptr noundef %i__2, ptr noundef %arrayidx593, ptr noundef %arrayidx598, ptr noundef @c__1)
  %600 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %601 = load i32, ptr %600, align 4, !tbaa !8
  %602 = load i32, ptr %i__, align 4, !tbaa !8
  %sub600 = sub nsw i32 %601, %602
  %add601 = add nsw i32 %sub600, 1
  store i32 %add601, ptr %i__2, align 4, !tbaa !8
  %603 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %604 = load i32, ptr %i__, align 4, !tbaa !8
  %605 = load i32, ptr %i__, align 4, !tbaa !8
  %606 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul602 = mul nsw i32 %605, %606
  %add603 = add nsw i32 %604, %mul602
  %idxprom604 = sext i32 %add603 to i64
  %arrayidx605 = getelementptr inbounds %struct.doublecomplex, ptr %603, i64 %idxprom604
  %607 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call606 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx605, ptr noundef %607)
  %608 = load i32, ptr %i__, align 4, !tbaa !8
  %sub607 = sub nsw i32 %608, 1
  store i32 %sub607, ptr %i__2, align 4, !tbaa !8
  %609 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %610 = load i32, ptr %i__, align 4, !tbaa !8
  %611 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add608 = add nsw i32 %610, %611
  %idxprom609 = sext i32 %add608 to i64
  %arrayidx610 = getelementptr inbounds %struct.doublecomplex, ptr %609, i64 %idxprom609
  %612 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %call611 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx610, ptr noundef %612)
  %613 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %614 = load i32, ptr %613, align 4, !tbaa !8
  %615 = load i32, ptr %i__, align 4, !tbaa !8
  %sub612 = sub nsw i32 %614, %615
  store i32 %sub612, ptr %i__2, align 4, !tbaa !8
  %616 = load i32, ptr %i__, align 4, !tbaa !8
  %sub613 = sub nsw i32 %616, 1
  store i32 %sub613, ptr %i__3, align 4, !tbaa !8
  %r614 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r614, align 8, !tbaa !10
  %i615 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i615, align 8, !tbaa !13
  %617 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %618 = load i32, ptr %i__, align 4, !tbaa !8
  %add616 = add nsw i32 %618, 1
  %619 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add617 = add nsw i32 %add616, %619
  %idxprom618 = sext i32 %add617 to i64
  %arrayidx619 = getelementptr inbounds %struct.doublecomplex, ptr %617, i64 %idxprom618
  %620 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %621 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %622 = load i32, ptr %i__, align 4, !tbaa !8
  %623 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add620 = add nsw i32 %622, %623
  %idxprom621 = sext i32 %add620 to i64
  %arrayidx622 = getelementptr inbounds %struct.doublecomplex, ptr %621, i64 %idxprom621
  %624 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %625 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %626 = load i32, ptr %i__, align 4, !tbaa !8
  %add623 = add nsw i32 %626, 1
  %627 = load i32, ptr %i__, align 4, !tbaa !8
  %628 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul624 = mul nsw i32 %627, %628
  %add625 = add nsw i32 %add623, %mul624
  %idxprom626 = sext i32 %add625 to i64
  %arrayidx627 = getelementptr inbounds %struct.doublecomplex, ptr %625, i64 %idxprom626
  %call628 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx619, ptr noundef %620, ptr noundef %arrayidx622, ptr noundef %624, ptr noundef @c_b2, ptr noundef %arrayidx627, ptr noundef @c__1)
  %629 = load i32, ptr %i__, align 4, !tbaa !8
  %sub629 = sub nsw i32 %629, 1
  store i32 %sub629, ptr %i__2, align 4, !tbaa !8
  %630 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %631 = load i32, ptr %i__, align 4, !tbaa !8
  %632 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add630 = add nsw i32 %631, %632
  %idxprom631 = sext i32 %add630 to i64
  %arrayidx632 = getelementptr inbounds %struct.doublecomplex, ptr %630, i64 %idxprom631
  %633 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %call633 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx632, ptr noundef %633)
  %634 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %635 = load i32, ptr %634, align 4, !tbaa !8
  %636 = load i32, ptr %i__, align 4, !tbaa !8
  %sub634 = sub nsw i32 %635, %636
  store i32 %sub634, ptr %i__2, align 4, !tbaa !8
  %r635 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r635, align 8, !tbaa !10
  %i636 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i636, align 8, !tbaa !13
  %637 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %638 = load i32, ptr %i__, align 4, !tbaa !8
  %add637 = add nsw i32 %638, 1
  %639 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add638 = add nsw i32 %add637, %639
  %idxprom639 = sext i32 %add638 to i64
  %arrayidx640 = getelementptr inbounds %struct.doublecomplex, ptr %637, i64 %idxprom639
  %640 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %641 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %642 = load i32, ptr %i__, align 4, !tbaa !8
  %643 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul641 = mul nsw i32 %642, %643
  %add642 = add nsw i32 %mul641, 1
  %idxprom643 = sext i32 %add642 to i64
  %arrayidx644 = getelementptr inbounds %struct.doublecomplex, ptr %641, i64 %idxprom643
  %644 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %645 = load i32, ptr %i__, align 4, !tbaa !8
  %add645 = add nsw i32 %645, 1
  %646 = load i32, ptr %i__, align 4, !tbaa !8
  %647 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul646 = mul nsw i32 %646, %647
  %add647 = add nsw i32 %add645, %mul646
  %idxprom648 = sext i32 %add647 to i64
  %arrayidx649 = getelementptr inbounds %struct.doublecomplex, ptr %644, i64 %idxprom648
  %call650 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__, ptr noundef %z__1, ptr noundef %arrayidx640, ptr noundef %640, ptr noundef %arrayidx644, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx649, ptr noundef @c__1)
  %648 = load i32, ptr %i__, align 4, !tbaa !8
  %add651 = add nsw i32 %648, 1
  %649 = load i32, ptr %i__, align 4, !tbaa !8
  %650 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul652 = mul nsw i32 %649, %650
  %add653 = add nsw i32 %add651, %mul652
  store i32 %add653, ptr %i__2, align 4, !tbaa !8
  %651 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %652 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom654 = sext i32 %652 to i64
  %arrayidx655 = getelementptr inbounds %struct.doublecomplex, ptr %651, i64 %idxprom654
  %r656 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx655, i32 0, i32 0
  %653 = load double, ptr %r656, align 8, !tbaa !10
  %r657 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  store double %653, ptr %r657, align 8, !tbaa !10
  %654 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %655 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom658 = sext i32 %655 to i64
  %arrayidx659 = getelementptr inbounds %struct.doublecomplex, ptr %654, i64 %idxprom658
  %i660 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx659, i32 0, i32 1
  %656 = load double, ptr %i660, align 8, !tbaa !13
  %i661 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 1
  store double %656, ptr %i661, align 8, !tbaa !13
  %657 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %658 = load i32, ptr %657, align 4, !tbaa !8
  %659 = load i32, ptr %i__, align 4, !tbaa !8
  %sub662 = sub nsw i32 %658, %659
  store i32 %sub662, ptr %i__2, align 4, !tbaa !8
  %660 = load i32, ptr %i__, align 4, !tbaa !8
  %add663 = add nsw i32 %660, 2
  store i32 %add663, ptr %i__3, align 4, !tbaa !8
  %661 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x664) #3
  %662 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %662, ptr %_x664, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y665) #3
  %663 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %664 = load i32, ptr %663, align 4, !tbaa !8
  store i32 %664, ptr %_y665, align 4, !tbaa !8
  %665 = load i32, ptr %_x664, align 4, !tbaa !8
  %666 = load i32, ptr %_y665, align 4, !tbaa !8
  %cmp667 = icmp slt i32 %665, %666
  br i1 %cmp667, label %cond.true668, label %cond.false669

cond.true668:                                     ; preds = %if.then523
  %667 = load i32, ptr %_x664, align 4, !tbaa !8
  br label %cond.end670

cond.false669:                                    ; preds = %if.then523
  %668 = load i32, ptr %_y665, align 4, !tbaa !8
  br label %cond.end670

cond.end670:                                      ; preds = %cond.false669, %cond.true668
  %cond671 = phi i32 [ %667, %cond.true668 ], [ %668, %cond.false669 ]
  store i32 %cond671, ptr %tmp666, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y665) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x664) #3
  %669 = load i32, ptr %tmp666, align 4, !tbaa !8
  %670 = load i32, ptr %i__, align 4, !tbaa !8
  %671 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul672 = mul nsw i32 %670, %671
  %add673 = add nsw i32 %669, %mul672
  %idxprom674 = sext i32 %add673 to i64
  %arrayidx675 = getelementptr inbounds %struct.doublecomplex, ptr %661, i64 %idxprom674
  %672 = load ptr, ptr %tauq.addr, align 8, !tbaa !4
  %673 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom676 = sext i32 %673 to i64
  %arrayidx677 = getelementptr inbounds %struct.doublecomplex, ptr %672, i64 %idxprom676
  %call678 = call i32 @zlarfg_(ptr noundef %i__2, ptr noundef %alpha, ptr noundef %arrayidx675, ptr noundef @c__1, ptr noundef %arrayidx677)
  %674 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %674, ptr %i__2, align 4, !tbaa !8
  %r679 = getelementptr inbounds %struct.doublecomplex, ptr %alpha, i32 0, i32 0
  %675 = load double, ptr %r679, align 8, !tbaa !10
  %676 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %677 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom680 = sext i32 %677 to i64
  %arrayidx681 = getelementptr inbounds double, ptr %676, i64 %idxprom680
  store double %675, ptr %arrayidx681, align 8, !tbaa !14
  %678 = load i32, ptr %i__, align 4, !tbaa !8
  %add682 = add nsw i32 %678, 1
  %679 = load i32, ptr %i__, align 4, !tbaa !8
  %680 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul683 = mul nsw i32 %679, %680
  %add684 = add nsw i32 %add682, %mul683
  store i32 %add684, ptr %i__2, align 4, !tbaa !8
  %681 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %682 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom685 = sext i32 %682 to i64
  %arrayidx686 = getelementptr inbounds %struct.doublecomplex, ptr %681, i64 %idxprom685
  %r687 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx686, i32 0, i32 0
  store double 1.000000e+00, ptr %r687, align 8, !tbaa !10
  %683 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %684 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom688 = sext i32 %684 to i64
  %arrayidx689 = getelementptr inbounds %struct.doublecomplex, ptr %683, i64 %idxprom688
  %i690 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx689, i32 0, i32 1
  store double 0.000000e+00, ptr %i690, align 8, !tbaa !13
  br label %if.end691

if.end691:                                        ; preds = %cond.end670, %if.end503
  %685 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %686 = load i32, ptr %685, align 4, !tbaa !8
  %687 = load i32, ptr %i__, align 4, !tbaa !8
  %sub692 = sub nsw i32 %686, %687
  store i32 %sub692, ptr %i__2, align 4, !tbaa !8
  %688 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %689 = load i32, ptr %688, align 4, !tbaa !8
  %690 = load i32, ptr %i__, align 4, !tbaa !8
  %sub693 = sub nsw i32 %689, %690
  store i32 %sub693, ptr %i__3, align 4, !tbaa !8
  %691 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %692 = load i32, ptr %i__, align 4, !tbaa !8
  %add694 = add nsw i32 %692, 1
  %693 = load i32, ptr %i__, align 4, !tbaa !8
  %add695 = add nsw i32 %693, 1
  %694 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul696 = mul nsw i32 %add695, %694
  %add697 = add nsw i32 %add694, %mul696
  %idxprom698 = sext i32 %add697 to i64
  %arrayidx699 = getelementptr inbounds %struct.doublecomplex, ptr %691, i64 %idxprom698
  %695 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %696 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %697 = load i32, ptr %i__, align 4, !tbaa !8
  %add700 = add nsw i32 %697, 1
  %698 = load i32, ptr %i__, align 4, !tbaa !8
  %699 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul701 = mul nsw i32 %698, %699
  %add702 = add nsw i32 %add700, %mul701
  %idxprom703 = sext i32 %add702 to i64
  %arrayidx704 = getelementptr inbounds %struct.doublecomplex, ptr %696, i64 %idxprom703
  %700 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %701 = load i32, ptr %i__, align 4, !tbaa !8
  %add705 = add nsw i32 %701, 1
  %702 = load i32, ptr %i__, align 4, !tbaa !8
  %703 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul706 = mul nsw i32 %702, %703
  %add707 = add nsw i32 %add705, %mul706
  %idxprom708 = sext i32 %add707 to i64
  %arrayidx709 = getelementptr inbounds %struct.doublecomplex, ptr %700, i64 %idxprom708
  %call710 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx699, ptr noundef %695, ptr noundef %arrayidx704, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx709, ptr noundef @c__1)
  %704 = load i32, ptr %thread_id, align 4, !tbaa !8
  %cmp711 = icmp eq i32 %704, 0
  br i1 %cmp711, label %if.then712, label %if.end789

if.then712:                                       ; preds = %if.end691
  %705 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %706 = load i32, ptr %705, align 4, !tbaa !8
  %707 = load i32, ptr %i__, align 4, !tbaa !8
  %sub713 = sub nsw i32 %706, %707
  store i32 %sub713, ptr %i__2, align 4, !tbaa !8
  %708 = load i32, ptr %i__, align 4, !tbaa !8
  %sub714 = sub nsw i32 %708, 1
  store i32 %sub714, ptr %i__3, align 4, !tbaa !8
  %709 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %710 = load i32, ptr %i__, align 4, !tbaa !8
  %add715 = add nsw i32 %710, 1
  %711 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add716 = add nsw i32 %add715, %711
  %idxprom717 = sext i32 %add716 to i64
  %arrayidx718 = getelementptr inbounds %struct.doublecomplex, ptr %709, i64 %idxprom717
  %712 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %713 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %714 = load i32, ptr %i__, align 4, !tbaa !8
  %add719 = add nsw i32 %714, 1
  %715 = load i32, ptr %i__, align 4, !tbaa !8
  %716 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul720 = mul nsw i32 %715, %716
  %add721 = add nsw i32 %add719, %mul720
  %idxprom722 = sext i32 %add721 to i64
  %arrayidx723 = getelementptr inbounds %struct.doublecomplex, ptr %713, i64 %idxprom722
  %717 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %718 = load i32, ptr %i__, align 4, !tbaa !8
  %719 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul724 = mul nsw i32 %718, %719
  %add725 = add nsw i32 %mul724, 1
  %idxprom726 = sext i32 %add725 to i64
  %arrayidx727 = getelementptr inbounds %struct.doublecomplex, ptr %717, i64 %idxprom726
  %call728 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b2, ptr noundef %arrayidx718, ptr noundef %712, ptr noundef %arrayidx723, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx727, ptr noundef @c__1)
  %720 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %721 = load i32, ptr %720, align 4, !tbaa !8
  %722 = load i32, ptr %i__, align 4, !tbaa !8
  %sub729 = sub nsw i32 %721, %722
  store i32 %sub729, ptr %i__2, align 4, !tbaa !8
  %723 = load i32, ptr %i__, align 4, !tbaa !8
  %sub730 = sub nsw i32 %723, 1
  store i32 %sub730, ptr %i__3, align 4, !tbaa !8
  %r731 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r731, align 8, !tbaa !10
  %i732 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i732, align 8, !tbaa !13
  %724 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %725 = load i32, ptr %i__, align 4, !tbaa !8
  %add733 = add nsw i32 %725, 1
  %726 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %add734 = add nsw i32 %add733, %726
  %idxprom735 = sext i32 %add734 to i64
  %arrayidx736 = getelementptr inbounds %struct.doublecomplex, ptr %724, i64 %idxprom735
  %727 = load ptr, ptr %ldy.addr, align 8, !tbaa !4
  %728 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %729 = load i32, ptr %i__, align 4, !tbaa !8
  %730 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul737 = mul nsw i32 %729, %730
  %add738 = add nsw i32 %mul737, 1
  %idxprom739 = sext i32 %add738 to i64
  %arrayidx740 = getelementptr inbounds %struct.doublecomplex, ptr %728, i64 %idxprom739
  %731 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %732 = load i32, ptr %i__, align 4, !tbaa !8
  %add741 = add nsw i32 %732, 1
  %733 = load i32, ptr %i__, align 4, !tbaa !8
  %734 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul742 = mul nsw i32 %733, %734
  %add743 = add nsw i32 %add741, %mul742
  %idxprom744 = sext i32 %add743 to i64
  %arrayidx745 = getelementptr inbounds %struct.doublecomplex, ptr %731, i64 %idxprom744
  %call746 = call i32 @zgemv_(ptr noundef @.str, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %z__1, ptr noundef %arrayidx736, ptr noundef %727, ptr noundef %arrayidx740, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx745, ptr noundef @c__1)
  %735 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %736 = load i32, ptr %735, align 4, !tbaa !8
  %737 = load i32, ptr %i__, align 4, !tbaa !8
  %sub747 = sub nsw i32 %736, %737
  store i32 %sub747, ptr %i__2, align 4, !tbaa !8
  %738 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %739 = load i32, ptr %i__, align 4, !tbaa !8
  %add748 = add nsw i32 %739, 1
  %740 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add749 = add nsw i32 %add748, %740
  %idxprom750 = sext i32 %add749 to i64
  %arrayidx751 = getelementptr inbounds %struct.doublecomplex, ptr %738, i64 %idxprom750
  %741 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %742 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %743 = load i32, ptr %i__, align 4, !tbaa !8
  %add752 = add nsw i32 %743, 1
  %744 = load i32, ptr %i__, align 4, !tbaa !8
  %745 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul753 = mul nsw i32 %744, %745
  %add754 = add nsw i32 %add752, %mul753
  %idxprom755 = sext i32 %add754 to i64
  %arrayidx756 = getelementptr inbounds %struct.doublecomplex, ptr %742, i64 %idxprom755
  %746 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %747 = load i32, ptr %i__, align 4, !tbaa !8
  %748 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul757 = mul nsw i32 %747, %748
  %add758 = add nsw i32 %mul757, 1
  %idxprom759 = sext i32 %add758 to i64
  %arrayidx760 = getelementptr inbounds %struct.doublecomplex, ptr %746, i64 %idxprom759
  %call761 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__2, ptr noundef %i__, ptr noundef @c_b2, ptr noundef %arrayidx751, ptr noundef %741, ptr noundef %arrayidx756, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx760, ptr noundef @c__1)
  %749 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %750 = load i32, ptr %749, align 4, !tbaa !8
  %751 = load i32, ptr %i__, align 4, !tbaa !8
  %sub762 = sub nsw i32 %750, %751
  store i32 %sub762, ptr %i__2, align 4, !tbaa !8
  %r763 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 0
  store double -1.000000e+00, ptr %r763, align 8, !tbaa !10
  %i764 = getelementptr inbounds %struct.doublecomplex, ptr %z__1, i32 0, i32 1
  store double -0.000000e+00, ptr %i764, align 8, !tbaa !13
  %752 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %753 = load i32, ptr %i__, align 4, !tbaa !8
  %add765 = add nsw i32 %753, 1
  %754 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul766 = mul nsw i32 %add765, %754
  %add767 = add nsw i32 %mul766, 1
  %idxprom768 = sext i32 %add767 to i64
  %arrayidx769 = getelementptr inbounds %struct.doublecomplex, ptr %752, i64 %idxprom768
  %755 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %756 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %757 = load i32, ptr %i__, align 4, !tbaa !8
  %758 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul770 = mul nsw i32 %757, %758
  %add771 = add nsw i32 %mul770, 1
  %idxprom772 = sext i32 %add771 to i64
  %arrayidx773 = getelementptr inbounds %struct.doublecomplex, ptr %756, i64 %idxprom772
  %759 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %760 = load i32, ptr %i__, align 4, !tbaa !8
  %add774 = add nsw i32 %760, 1
  %761 = load i32, ptr %i__, align 4, !tbaa !8
  %762 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul775 = mul nsw i32 %761, %762
  %add776 = add nsw i32 %add774, %mul775
  %idxprom777 = sext i32 %add776 to i64
  %arrayidx778 = getelementptr inbounds %struct.doublecomplex, ptr %759, i64 %idxprom777
  %call779 = call i32 @zgemv_(ptr noundef @.str.1, ptr noundef %i__, ptr noundef %i__2, ptr noundef %z__1, ptr noundef %arrayidx769, ptr noundef %755, ptr noundef %arrayidx773, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx778, ptr noundef @c__1)
  %763 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %764 = load i32, ptr %763, align 4, !tbaa !8
  %765 = load i32, ptr %i__, align 4, !tbaa !8
  %sub780 = sub nsw i32 %764, %765
  store i32 %sub780, ptr %i__2, align 4, !tbaa !8
  %766 = load ptr, ptr %tauq.addr, align 8, !tbaa !4
  %767 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom781 = sext i32 %767 to i64
  %arrayidx782 = getelementptr inbounds %struct.doublecomplex, ptr %766, i64 %idxprom781
  %768 = load ptr, ptr %y.addr, align 8, !tbaa !4
  %769 = load i32, ptr %i__, align 4, !tbaa !8
  %add783 = add nsw i32 %769, 1
  %770 = load i32, ptr %i__, align 4, !tbaa !8
  %771 = load i32, ptr %y_dim1, align 4, !tbaa !8
  %mul784 = mul nsw i32 %770, %771
  %add785 = add nsw i32 %add783, %mul784
  %idxprom786 = sext i32 %add785 to i64
  %arrayidx787 = getelementptr inbounds %struct.doublecomplex, ptr %768, i64 %idxprom786
  %call788 = call i32 @zscal_(ptr noundef %i__2, ptr noundef %arrayidx782, ptr noundef %arrayidx787, ptr noundef @c__1)
  br label %if.end789

if.end789:                                        ; preds = %if.then712, %if.end691
  br label %if.end801

if.else790:                                       ; preds = %if.end490
  %772 = load i32, ptr %thread_id, align 4, !tbaa !8
  %cmp791 = icmp eq i32 %772, 0
  br i1 %cmp791, label %if.then792, label %if.end800

if.then792:                                       ; preds = %if.else790
  %773 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %774 = load i32, ptr %773, align 4, !tbaa !8
  %775 = load i32, ptr %i__, align 4, !tbaa !8
  %sub793 = sub nsw i32 %774, %775
  %add794 = add nsw i32 %sub793, 1
  store i32 %add794, ptr %i__2, align 4, !tbaa !8
  %776 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %777 = load i32, ptr %i__, align 4, !tbaa !8
  %778 = load i32, ptr %i__, align 4, !tbaa !8
  %779 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul795 = mul nsw i32 %778, %779
  %add796 = add nsw i32 %777, %mul795
  %idxprom797 = sext i32 %add796 to i64
  %arrayidx798 = getelementptr inbounds %struct.doublecomplex, ptr %776, i64 %idxprom797
  %780 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call799 = call i32 @zlacgv_(ptr noundef %i__2, ptr noundef %arrayidx798, ptr noundef %780)
  br label %if.end800

if.end800:                                        ; preds = %if.then792, %if.else790
  br label %if.end801

if.end801:                                        ; preds = %if.end800, %if.end789
  br label %for.inc802

for.inc802:                                       ; preds = %if.end801
  %781 = load i32, ptr %i__, align 4, !tbaa !8
  %inc803 = add nsw i32 %781, 1
  store i32 %inc803, ptr %i__, align 4, !tbaa !8
  br label %for.cond394, !llvm.loop !17

for.end804:                                       ; preds = %for.cond394
  br label %if.end805

if.end805:                                        ; preds = %for.end804, %for.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end805, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %actual_num_threads) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %thread_id) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr %z__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %782 = load i32, ptr %retval, align 4
  ret i32 %782
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @aocl_fla_init(...) #2

declare i32 @zlacgv_(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!11 = !{!"", !12, i64 0, !12, i64 8}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !12, i64 8}
!14 = !{!12, !12, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}

; ModuleID = 'samples/89.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/csytf2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CSYTF2\00", align 1
@c__1 = internal global i32 1, align 4
@c_b1 = internal global %struct.complex { float 1.000000e+00, float 0.000000e+00 }, align 4

; Function Attrs: nounwind uwtable
define i32 @csytf2_(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %ipiv, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %i__6 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %r__3 = alloca float, align 4
  %r__4 = alloca float, align 4
  %q__1 = alloca %struct.complex, align 4
  %q__2 = alloca %struct.complex, align 4
  %q__3 = alloca %struct.complex, align 4
  %q__4 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca %struct.complex, align 4
  %r1 = alloca %struct.complex, align 4
  %d11 = alloca %struct.complex, align 4
  %d12 = alloca %struct.complex, align 4
  %d21 = alloca %struct.complex, align 4
  %d22 = alloca %struct.complex, align 4
  %kk = alloca i32, align 4
  %kp = alloca i32, align 4
  %wk = alloca %struct.complex, align 4
  %wkm1 = alloca %struct.complex, align 4
  %wkp1 = alloca %struct.complex, align 4
  %imax = alloca i32, align 4
  %jmax = alloca i32, align 4
  %alpha = alloca float, align 4
  %kstep = alloca i32, align 4
  %upper = alloca i32, align 4
  %absakk = alloca float, align 4
  %colmax = alloca float, align 4
  %rowmax = alloca float, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x80 = alloca float, align 4
  %_y81 = alloca float, align 4
  %tmp82 = alloca float, align 4
  %_x173 = alloca float, align 4
  %_y174 = alloca float, align 4
  %tmp175 = alloca float, align 4
  %_x742 = alloca float, align 4
  %_y743 = alloca float, align 4
  %tmp744 = alloca float, align 4
  %_x838 = alloca float, align 4
  %_y839 = alloca float, align 4
  %tmp840 = alloca float, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %ipiv, ptr %ipiv.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__4) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__4) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d11) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d21) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d22) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %kk) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %kp) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %wk) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %wkm1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %wkp1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %imax) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %jmax) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %alpha) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %kstep) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %absakk) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %colmax) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %rowmax) #5
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
  %5 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %6, align 4, !tbaa !8
  %7 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %7, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4, !tbaa !8
  %8 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %9 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call1 = call i32 @lsame_(ptr noundef %9, ptr noundef @.str.1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %10, align 4, !tbaa !8
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %12 = load i32, ptr %11, align 4, !tbaa !8
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %13, align 4, !tbaa !8
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %14 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #5
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #5
  %16 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %17 = load i32, ptr %16, align 4, !tbaa !8
  store i32 %17, ptr %_y, align 4, !tbaa !8
  %18 = load i32, ptr %_x, align 4, !tbaa !8
  %19 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp5 = icmp sgt i32 %18, %19
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else4
  %20 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else4
  %21 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #5
  %22 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %15, %22
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %cond.end
  %23 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %23, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then7, %cond.end
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  %24 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %cmp10 = icmp ne i32 %25, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %26 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %sub = sub nsw i32 0, %27
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call12 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = call double @sqrt(double noundef 1.700000e+01) #5
  %add15 = fadd double %call14, 1.000000e+00
  %div = fdiv double %add15, 8.000000e+00
  %conv = fptrunc double %div to float
  store float %conv, ptr %alpha, align 4, !tbaa !10
  %28 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool16 = icmp ne i32 %28, 0
  br i1 %tobool16, label %if.then17, label %if.else672

if.then17:                                        ; preds = %if.end13
  %29 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  store i32 %30, ptr %k, align 4, !tbaa !8
  br label %L10

L10:                                              ; preds = %if.end670, %if.then17
  %31 = load i32, ptr %k, align 4, !tbaa !8
  %cmp18 = icmp slt i32 %31, 1
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %L10
  br label %L70

if.end21:                                         ; preds = %L10
  store i32 1, ptr %kstep, align 4, !tbaa !8
  %32 = load i32, ptr %k, align 4, !tbaa !8
  %33 = load i32, ptr %k, align 4, !tbaa !8
  %34 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %33, %34
  %add22 = add nsw i32 %32, %mul
  store i32 %add22, ptr %i__1, align 4, !tbaa !8
  %35 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %36 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %35, i64 %idxprom
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  %37 = load float, ptr %r, align 4, !tbaa !12
  store float %37, ptr %r__1, align 4, !tbaa !10
  %38 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp23 = fcmp oge float %38, 0.000000e+00
  br i1 %cmp23, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %if.end21
  %39 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end27

cond.false26:                                     ; preds = %if.end21
  %40 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg = fneg float %40
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.true25
  %cond28 = phi float [ %39, %cond.true25 ], [ %fneg, %cond.false26 ]
  %41 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %42 = load i32, ptr %k, align 4, !tbaa !8
  %43 = load i32, ptr %k, align 4, !tbaa !8
  %44 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul29 = mul nsw i32 %43, %44
  %add30 = add nsw i32 %42, %mul29
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds %struct.complex, ptr %41, i64 %idxprom31
  %call33 = call double @r_imag(ptr noundef %arrayidx32)
  %conv34 = fptrunc double %call33 to float
  store float %conv34, ptr %r__2, align 4, !tbaa !10
  %45 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp35 = fcmp oge float %45, 0.000000e+00
  br i1 %cmp35, label %cond.true37, label %cond.false38

cond.true37:                                      ; preds = %cond.end27
  %46 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end40

cond.false38:                                     ; preds = %cond.end27
  %47 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg39 = fneg float %47
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false38, %cond.true37
  %cond41 = phi float [ %46, %cond.true37 ], [ %fneg39, %cond.false38 ]
  %add42 = fadd float %cond28, %cond41
  store float %add42, ptr %absakk, align 4, !tbaa !10
  %48 = load i32, ptr %k, align 4, !tbaa !8
  %cmp43 = icmp sgt i32 %48, 1
  br i1 %cmp43, label %if.then45, label %if.else78

if.then45:                                        ; preds = %cond.end40
  %49 = load i32, ptr %k, align 4, !tbaa !8
  %sub46 = sub nsw i32 %49, 1
  store i32 %sub46, ptr %i__1, align 4, !tbaa !8
  %50 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %51 = load i32, ptr %k, align 4, !tbaa !8
  %52 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul47 = mul nsw i32 %51, %52
  %add48 = add nsw i32 %mul47, 1
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds %struct.complex, ptr %50, i64 %idxprom49
  %call51 = call i32 @icamax_(ptr noundef %i__1, ptr noundef %arrayidx50, ptr noundef @c__1)
  store i32 %call51, ptr %imax, align 4, !tbaa !8
  %53 = load i32, ptr %imax, align 4, !tbaa !8
  %54 = load i32, ptr %k, align 4, !tbaa !8
  %55 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul52 = mul nsw i32 %54, %55
  %add53 = add nsw i32 %53, %mul52
  store i32 %add53, ptr %i__1, align 4, !tbaa !8
  %56 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %57 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom54 = sext i32 %57 to i64
  %arrayidx55 = getelementptr inbounds %struct.complex, ptr %56, i64 %idxprom54
  %r56 = getelementptr inbounds %struct.complex, ptr %arrayidx55, i32 0, i32 0
  %58 = load float, ptr %r56, align 4, !tbaa !12
  store float %58, ptr %r__1, align 4, !tbaa !10
  %59 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp57 = fcmp oge float %59, 0.000000e+00
  br i1 %cmp57, label %cond.true59, label %cond.false60

cond.true59:                                      ; preds = %if.then45
  %60 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end62

cond.false60:                                     ; preds = %if.then45
  %61 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg61 = fneg float %61
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false60, %cond.true59
  %cond63 = phi float [ %60, %cond.true59 ], [ %fneg61, %cond.false60 ]
  %62 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %63 = load i32, ptr %imax, align 4, !tbaa !8
  %64 = load i32, ptr %k, align 4, !tbaa !8
  %65 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul64 = mul nsw i32 %64, %65
  %add65 = add nsw i32 %63, %mul64
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds %struct.complex, ptr %62, i64 %idxprom66
  %call68 = call double @r_imag(ptr noundef %arrayidx67)
  %conv69 = fptrunc double %call68 to float
  store float %conv69, ptr %r__2, align 4, !tbaa !10
  %66 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp70 = fcmp oge float %66, 0.000000e+00
  br i1 %cmp70, label %cond.true72, label %cond.false73

cond.true72:                                      ; preds = %cond.end62
  %67 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end75

cond.false73:                                     ; preds = %cond.end62
  %68 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg74 = fneg float %68
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false73, %cond.true72
  %cond76 = phi float [ %67, %cond.true72 ], [ %fneg74, %cond.false73 ]
  %add77 = fadd float %cond63, %cond76
  store float %add77, ptr %colmax, align 4, !tbaa !10
  br label %if.end79

if.else78:                                        ; preds = %cond.end40
  store float 0.000000e+00, ptr %colmax, align 4, !tbaa !10
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %cond.end75
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x80) #5
  %69 = load float, ptr %absakk, align 4, !tbaa !10
  store float %69, ptr %_x80, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y81) #5
  %70 = load float, ptr %colmax, align 4, !tbaa !10
  store float %70, ptr %_y81, align 4, !tbaa !10
  %71 = load float, ptr %_x80, align 4, !tbaa !10
  %72 = load float, ptr %_y81, align 4, !tbaa !10
  %cmp83 = fcmp ogt float %71, %72
  br i1 %cmp83, label %cond.true85, label %cond.false86

cond.true85:                                      ; preds = %if.end79
  %73 = load float, ptr %_x80, align 4, !tbaa !10
  br label %cond.end87

cond.false86:                                     ; preds = %if.end79
  %74 = load float, ptr %_y81, align 4, !tbaa !10
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false86, %cond.true85
  %cond88 = phi float [ %73, %cond.true85 ], [ %74, %cond.false86 ]
  store float %cond88, ptr %tmp82, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y81) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x80) #5
  %75 = load float, ptr %tmp82, align 4, !tbaa !10
  %cmp89 = fcmp oeq float %75, 0.000000e+00
  br i1 %cmp89, label %if.then93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end87
  %call91 = call i32 @sisnan_(ptr noundef %absakk)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then93, label %if.else98

if.then93:                                        ; preds = %lor.lhs.false, %cond.end87
  %76 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %77 = load i32, ptr %76, align 4, !tbaa !8
  %cmp94 = icmp eq i32 %77, 0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.then93
  %78 = load i32, ptr %k, align 4, !tbaa !8
  %79 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %78, ptr %79, align 4, !tbaa !8
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.then93
  %80 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %80, ptr %kp, align 4, !tbaa !8
  br label %if.end656

if.else98:                                        ; preds = %lor.lhs.false
  %81 = load float, ptr %absakk, align 4, !tbaa !10
  %82 = load float, ptr %alpha, align 4, !tbaa !10
  %83 = load float, ptr %colmax, align 4, !tbaa !10
  %mul99 = fmul float %82, %83
  %cmp100 = fcmp oge float %81, %mul99
  br i1 %cmp100, label %if.then102, label %if.else103

if.then102:                                       ; preds = %if.else98
  %84 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %84, ptr %kp, align 4, !tbaa !8
  br label %if.end223

if.else103:                                       ; preds = %if.else98
  %85 = load i32, ptr %k, align 4, !tbaa !8
  %86 = load i32, ptr %imax, align 4, !tbaa !8
  %sub104 = sub nsw i32 %85, %86
  store i32 %sub104, ptr %i__1, align 4, !tbaa !8
  %87 = load i32, ptr %imax, align 4, !tbaa !8
  %88 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %89 = load i32, ptr %imax, align 4, !tbaa !8
  %90 = load i32, ptr %imax, align 4, !tbaa !8
  %add105 = add nsw i32 %90, 1
  %91 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul106 = mul nsw i32 %add105, %91
  %add107 = add nsw i32 %89, %mul106
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds %struct.complex, ptr %88, i64 %idxprom108
  %92 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call110 = call i32 @icamax_(ptr noundef %i__1, ptr noundef %arrayidx109, ptr noundef %92)
  %add111 = add nsw i32 %87, %call110
  store i32 %add111, ptr %jmax, align 4, !tbaa !8
  %93 = load i32, ptr %imax, align 4, !tbaa !8
  %94 = load i32, ptr %jmax, align 4, !tbaa !8
  %95 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul112 = mul nsw i32 %94, %95
  %add113 = add nsw i32 %93, %mul112
  store i32 %add113, ptr %i__1, align 4, !tbaa !8
  %96 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %97 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom114 = sext i32 %97 to i64
  %arrayidx115 = getelementptr inbounds %struct.complex, ptr %96, i64 %idxprom114
  %r116 = getelementptr inbounds %struct.complex, ptr %arrayidx115, i32 0, i32 0
  %98 = load float, ptr %r116, align 4, !tbaa !12
  store float %98, ptr %r__1, align 4, !tbaa !10
  %99 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp117 = fcmp oge float %99, 0.000000e+00
  br i1 %cmp117, label %cond.true119, label %cond.false120

cond.true119:                                     ; preds = %if.else103
  %100 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end122

cond.false120:                                    ; preds = %if.else103
  %101 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg121 = fneg float %101
  br label %cond.end122

cond.end122:                                      ; preds = %cond.false120, %cond.true119
  %cond123 = phi float [ %100, %cond.true119 ], [ %fneg121, %cond.false120 ]
  %102 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %103 = load i32, ptr %imax, align 4, !tbaa !8
  %104 = load i32, ptr %jmax, align 4, !tbaa !8
  %105 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul124 = mul nsw i32 %104, %105
  %add125 = add nsw i32 %103, %mul124
  %idxprom126 = sext i32 %add125 to i64
  %arrayidx127 = getelementptr inbounds %struct.complex, ptr %102, i64 %idxprom126
  %call128 = call double @r_imag(ptr noundef %arrayidx127)
  %conv129 = fptrunc double %call128 to float
  store float %conv129, ptr %r__2, align 4, !tbaa !10
  %106 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp130 = fcmp oge float %106, 0.000000e+00
  br i1 %cmp130, label %cond.true132, label %cond.false133

cond.true132:                                     ; preds = %cond.end122
  %107 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end135

cond.false133:                                    ; preds = %cond.end122
  %108 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg134 = fneg float %108
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false133, %cond.true132
  %cond136 = phi float [ %107, %cond.true132 ], [ %fneg134, %cond.false133 ]
  %add137 = fadd float %cond123, %cond136
  store float %add137, ptr %rowmax, align 4, !tbaa !10
  %109 = load i32, ptr %imax, align 4, !tbaa !8
  %cmp138 = icmp sgt i32 %109, 1
  br i1 %cmp138, label %if.then140, label %if.end182

if.then140:                                       ; preds = %cond.end135
  %110 = load i32, ptr %imax, align 4, !tbaa !8
  %sub141 = sub nsw i32 %110, 1
  store i32 %sub141, ptr %i__1, align 4, !tbaa !8
  %111 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %112 = load i32, ptr %imax, align 4, !tbaa !8
  %113 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul142 = mul nsw i32 %112, %113
  %add143 = add nsw i32 %mul142, 1
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds %struct.complex, ptr %111, i64 %idxprom144
  %call146 = call i32 @icamax_(ptr noundef %i__1, ptr noundef %arrayidx145, ptr noundef @c__1)
  store i32 %call146, ptr %jmax, align 4, !tbaa !8
  %114 = load i32, ptr %jmax, align 4, !tbaa !8
  %115 = load i32, ptr %imax, align 4, !tbaa !8
  %116 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul147 = mul nsw i32 %115, %116
  %add148 = add nsw i32 %114, %mul147
  store i32 %add148, ptr %i__1, align 4, !tbaa !8
  %117 = load float, ptr %rowmax, align 4, !tbaa !10
  store float %117, ptr %r__3, align 4, !tbaa !10
  %118 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %119 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom149 = sext i32 %119 to i64
  %arrayidx150 = getelementptr inbounds %struct.complex, ptr %118, i64 %idxprom149
  %r151 = getelementptr inbounds %struct.complex, ptr %arrayidx150, i32 0, i32 0
  %120 = load float, ptr %r151, align 4, !tbaa !12
  store float %120, ptr %r__1, align 4, !tbaa !10
  %121 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp152 = fcmp oge float %121, 0.000000e+00
  br i1 %cmp152, label %cond.true154, label %cond.false155

cond.true154:                                     ; preds = %if.then140
  %122 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end157

cond.false155:                                    ; preds = %if.then140
  %123 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg156 = fneg float %123
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false155, %cond.true154
  %cond158 = phi float [ %122, %cond.true154 ], [ %fneg156, %cond.false155 ]
  %124 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %125 = load i32, ptr %jmax, align 4, !tbaa !8
  %126 = load i32, ptr %imax, align 4, !tbaa !8
  %127 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul159 = mul nsw i32 %126, %127
  %add160 = add nsw i32 %125, %mul159
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds %struct.complex, ptr %124, i64 %idxprom161
  %call163 = call double @r_imag(ptr noundef %arrayidx162)
  %conv164 = fptrunc double %call163 to float
  store float %conv164, ptr %r__2, align 4, !tbaa !10
  %128 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp165 = fcmp oge float %128, 0.000000e+00
  br i1 %cmp165, label %cond.true167, label %cond.false168

cond.true167:                                     ; preds = %cond.end157
  %129 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end170

cond.false168:                                    ; preds = %cond.end157
  %130 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg169 = fneg float %130
  br label %cond.end170

cond.end170:                                      ; preds = %cond.false168, %cond.true167
  %cond171 = phi float [ %129, %cond.true167 ], [ %fneg169, %cond.false168 ]
  %add172 = fadd float %cond158, %cond171
  store float %add172, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x173) #5
  %131 = load float, ptr %r__3, align 4, !tbaa !10
  store float %131, ptr %_x173, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y174) #5
  %132 = load float, ptr %r__4, align 4, !tbaa !10
  store float %132, ptr %_y174, align 4, !tbaa !10
  %133 = load float, ptr %_x173, align 4, !tbaa !10
  %134 = load float, ptr %_y174, align 4, !tbaa !10
  %cmp176 = fcmp ogt float %133, %134
  br i1 %cmp176, label %cond.true178, label %cond.false179

cond.true178:                                     ; preds = %cond.end170
  %135 = load float, ptr %_x173, align 4, !tbaa !10
  br label %cond.end180

cond.false179:                                    ; preds = %cond.end170
  %136 = load float, ptr %_y174, align 4, !tbaa !10
  br label %cond.end180

cond.end180:                                      ; preds = %cond.false179, %cond.true178
  %cond181 = phi float [ %135, %cond.true178 ], [ %136, %cond.false179 ]
  store float %cond181, ptr %tmp175, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y174) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x173) #5
  %137 = load float, ptr %tmp175, align 4, !tbaa !10
  store float %137, ptr %rowmax, align 4, !tbaa !10
  br label %if.end182

if.end182:                                        ; preds = %cond.end180, %cond.end135
  %138 = load float, ptr %absakk, align 4, !tbaa !10
  %139 = load float, ptr %alpha, align 4, !tbaa !10
  %140 = load float, ptr %colmax, align 4, !tbaa !10
  %mul183 = fmul float %139, %140
  %141 = load float, ptr %colmax, align 4, !tbaa !10
  %142 = load float, ptr %rowmax, align 4, !tbaa !10
  %div184 = fdiv float %141, %142
  %mul185 = fmul float %mul183, %div184
  %cmp186 = fcmp oge float %138, %mul185
  br i1 %cmp186, label %if.then188, label %if.else189

if.then188:                                       ; preds = %if.end182
  %143 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %143, ptr %kp, align 4, !tbaa !8
  br label %if.end222

if.else189:                                       ; preds = %if.end182
  %144 = load i32, ptr %imax, align 4, !tbaa !8
  %145 = load i32, ptr %imax, align 4, !tbaa !8
  %146 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul190 = mul nsw i32 %145, %146
  %add191 = add nsw i32 %144, %mul190
  store i32 %add191, ptr %i__1, align 4, !tbaa !8
  %147 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %148 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom192 = sext i32 %148 to i64
  %arrayidx193 = getelementptr inbounds %struct.complex, ptr %147, i64 %idxprom192
  %r194 = getelementptr inbounds %struct.complex, ptr %arrayidx193, i32 0, i32 0
  %149 = load float, ptr %r194, align 4, !tbaa !12
  store float %149, ptr %r__1, align 4, !tbaa !10
  %150 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp195 = fcmp oge float %150, 0.000000e+00
  br i1 %cmp195, label %cond.true197, label %cond.false198

cond.true197:                                     ; preds = %if.else189
  %151 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end200

cond.false198:                                    ; preds = %if.else189
  %152 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg199 = fneg float %152
  br label %cond.end200

cond.end200:                                      ; preds = %cond.false198, %cond.true197
  %cond201 = phi float [ %151, %cond.true197 ], [ %fneg199, %cond.false198 ]
  %153 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %154 = load i32, ptr %imax, align 4, !tbaa !8
  %155 = load i32, ptr %imax, align 4, !tbaa !8
  %156 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul202 = mul nsw i32 %155, %156
  %add203 = add nsw i32 %154, %mul202
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds %struct.complex, ptr %153, i64 %idxprom204
  %call206 = call double @r_imag(ptr noundef %arrayidx205)
  %conv207 = fptrunc double %call206 to float
  store float %conv207, ptr %r__2, align 4, !tbaa !10
  %157 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp208 = fcmp oge float %157, 0.000000e+00
  br i1 %cmp208, label %cond.true210, label %cond.false211

cond.true210:                                     ; preds = %cond.end200
  %158 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end213

cond.false211:                                    ; preds = %cond.end200
  %159 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg212 = fneg float %159
  br label %cond.end213

cond.end213:                                      ; preds = %cond.false211, %cond.true210
  %cond214 = phi float [ %158, %cond.true210 ], [ %fneg212, %cond.false211 ]
  %add215 = fadd float %cond201, %cond214
  %160 = load float, ptr %alpha, align 4, !tbaa !10
  %161 = load float, ptr %rowmax, align 4, !tbaa !10
  %mul216 = fmul float %160, %161
  %cmp217 = fcmp oge float %add215, %mul216
  br i1 %cmp217, label %if.then219, label %if.else220

if.then219:                                       ; preds = %cond.end213
  %162 = load i32, ptr %imax, align 4, !tbaa !8
  store i32 %162, ptr %kp, align 4, !tbaa !8
  br label %if.end221

if.else220:                                       ; preds = %cond.end213
  %163 = load i32, ptr %imax, align 4, !tbaa !8
  store i32 %163, ptr %kp, align 4, !tbaa !8
  store i32 2, ptr %kstep, align 4, !tbaa !8
  br label %if.end221

if.end221:                                        ; preds = %if.else220, %if.then219
  br label %if.end222

if.end222:                                        ; preds = %if.end221, %if.then188
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %if.then102
  %164 = load i32, ptr %k, align 4, !tbaa !8
  %165 = load i32, ptr %kstep, align 4, !tbaa !8
  %sub224 = sub nsw i32 %164, %165
  %add225 = add nsw i32 %sub224, 1
  store i32 %add225, ptr %kk, align 4, !tbaa !8
  %166 = load i32, ptr %kp, align 4, !tbaa !8
  %167 = load i32, ptr %kk, align 4, !tbaa !8
  %cmp226 = icmp ne i32 %166, %167
  br i1 %cmp226, label %if.then228, label %if.end329

if.then228:                                       ; preds = %if.end223
  %168 = load i32, ptr %kp, align 4, !tbaa !8
  %sub229 = sub nsw i32 %168, 1
  store i32 %sub229, ptr %i__1, align 4, !tbaa !8
  %169 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %170 = load i32, ptr %kk, align 4, !tbaa !8
  %171 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul230 = mul nsw i32 %170, %171
  %add231 = add nsw i32 %mul230, 1
  %idxprom232 = sext i32 %add231 to i64
  %arrayidx233 = getelementptr inbounds %struct.complex, ptr %169, i64 %idxprom232
  %172 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %173 = load i32, ptr %kp, align 4, !tbaa !8
  %174 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul234 = mul nsw i32 %173, %174
  %add235 = add nsw i32 %mul234, 1
  %idxprom236 = sext i32 %add235 to i64
  %arrayidx237 = getelementptr inbounds %struct.complex, ptr %172, i64 %idxprom236
  %call238 = call i32 @cswap_(ptr noundef %i__1, ptr noundef %arrayidx233, ptr noundef @c__1, ptr noundef %arrayidx237, ptr noundef @c__1)
  %175 = load i32, ptr %kk, align 4, !tbaa !8
  %176 = load i32, ptr %kp, align 4, !tbaa !8
  %sub239 = sub nsw i32 %175, %176
  %sub240 = sub nsw i32 %sub239, 1
  store i32 %sub240, ptr %i__1, align 4, !tbaa !8
  %177 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %178 = load i32, ptr %kp, align 4, !tbaa !8
  %add241 = add nsw i32 %178, 1
  %179 = load i32, ptr %kk, align 4, !tbaa !8
  %180 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul242 = mul nsw i32 %179, %180
  %add243 = add nsw i32 %add241, %mul242
  %idxprom244 = sext i32 %add243 to i64
  %arrayidx245 = getelementptr inbounds %struct.complex, ptr %177, i64 %idxprom244
  %181 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %182 = load i32, ptr %kp, align 4, !tbaa !8
  %183 = load i32, ptr %kp, align 4, !tbaa !8
  %add246 = add nsw i32 %183, 1
  %184 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul247 = mul nsw i32 %add246, %184
  %add248 = add nsw i32 %182, %mul247
  %idxprom249 = sext i32 %add248 to i64
  %arrayidx250 = getelementptr inbounds %struct.complex, ptr %181, i64 %idxprom249
  %185 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call251 = call i32 @cswap_(ptr noundef %i__1, ptr noundef %arrayidx245, ptr noundef @c__1, ptr noundef %arrayidx250, ptr noundef %185)
  %186 = load i32, ptr %kk, align 4, !tbaa !8
  %187 = load i32, ptr %kk, align 4, !tbaa !8
  %188 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul252 = mul nsw i32 %187, %188
  %add253 = add nsw i32 %186, %mul252
  store i32 %add253, ptr %i__1, align 4, !tbaa !8
  %189 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %190 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom254 = sext i32 %190 to i64
  %arrayidx255 = getelementptr inbounds %struct.complex, ptr %189, i64 %idxprom254
  %r256 = getelementptr inbounds %struct.complex, ptr %arrayidx255, i32 0, i32 0
  %191 = load float, ptr %r256, align 4, !tbaa !12
  %r257 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  store float %191, ptr %r257, align 4, !tbaa !12
  %192 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %193 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom258 = sext i32 %193 to i64
  %arrayidx259 = getelementptr inbounds %struct.complex, ptr %192, i64 %idxprom258
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx259, i32 0, i32 1
  %194 = load float, ptr %i, align 4, !tbaa !14
  %i260 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  store float %194, ptr %i260, align 4, !tbaa !14
  %195 = load i32, ptr %kk, align 4, !tbaa !8
  %196 = load i32, ptr %kk, align 4, !tbaa !8
  %197 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul261 = mul nsw i32 %196, %197
  %add262 = add nsw i32 %195, %mul261
  store i32 %add262, ptr %i__1, align 4, !tbaa !8
  %198 = load i32, ptr %kp, align 4, !tbaa !8
  %199 = load i32, ptr %kp, align 4, !tbaa !8
  %200 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul263 = mul nsw i32 %199, %200
  %add264 = add nsw i32 %198, %mul263
  store i32 %add264, ptr %i__2, align 4, !tbaa !8
  %201 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %202 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom265 = sext i32 %202 to i64
  %arrayidx266 = getelementptr inbounds %struct.complex, ptr %201, i64 %idxprom265
  %r267 = getelementptr inbounds %struct.complex, ptr %arrayidx266, i32 0, i32 0
  %203 = load float, ptr %r267, align 4, !tbaa !12
  %204 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %205 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom268 = sext i32 %205 to i64
  %arrayidx269 = getelementptr inbounds %struct.complex, ptr %204, i64 %idxprom268
  %r270 = getelementptr inbounds %struct.complex, ptr %arrayidx269, i32 0, i32 0
  store float %203, ptr %r270, align 4, !tbaa !12
  %206 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %207 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom271 = sext i32 %207 to i64
  %arrayidx272 = getelementptr inbounds %struct.complex, ptr %206, i64 %idxprom271
  %i273 = getelementptr inbounds %struct.complex, ptr %arrayidx272, i32 0, i32 1
  %208 = load float, ptr %i273, align 4, !tbaa !14
  %209 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %210 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom274 = sext i32 %210 to i64
  %arrayidx275 = getelementptr inbounds %struct.complex, ptr %209, i64 %idxprom274
  %i276 = getelementptr inbounds %struct.complex, ptr %arrayidx275, i32 0, i32 1
  store float %208, ptr %i276, align 4, !tbaa !14
  %211 = load i32, ptr %kp, align 4, !tbaa !8
  %212 = load i32, ptr %kp, align 4, !tbaa !8
  %213 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul277 = mul nsw i32 %212, %213
  %add278 = add nsw i32 %211, %mul277
  store i32 %add278, ptr %i__1, align 4, !tbaa !8
  %r279 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  %214 = load float, ptr %r279, align 4, !tbaa !12
  %215 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %216 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom280 = sext i32 %216 to i64
  %arrayidx281 = getelementptr inbounds %struct.complex, ptr %215, i64 %idxprom280
  %r282 = getelementptr inbounds %struct.complex, ptr %arrayidx281, i32 0, i32 0
  store float %214, ptr %r282, align 4, !tbaa !12
  %i283 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  %217 = load float, ptr %i283, align 4, !tbaa !14
  %218 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %219 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom284 = sext i32 %219 to i64
  %arrayidx285 = getelementptr inbounds %struct.complex, ptr %218, i64 %idxprom284
  %i286 = getelementptr inbounds %struct.complex, ptr %arrayidx285, i32 0, i32 1
  store float %217, ptr %i286, align 4, !tbaa !14
  %220 = load i32, ptr %kstep, align 4, !tbaa !8
  %cmp287 = icmp eq i32 %220, 2
  br i1 %cmp287, label %if.then289, label %if.end328

if.then289:                                       ; preds = %if.then228
  %221 = load i32, ptr %k, align 4, !tbaa !8
  %sub290 = sub nsw i32 %221, 1
  %222 = load i32, ptr %k, align 4, !tbaa !8
  %223 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul291 = mul nsw i32 %222, %223
  %add292 = add nsw i32 %sub290, %mul291
  store i32 %add292, ptr %i__1, align 4, !tbaa !8
  %224 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %225 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom293 = sext i32 %225 to i64
  %arrayidx294 = getelementptr inbounds %struct.complex, ptr %224, i64 %idxprom293
  %r295 = getelementptr inbounds %struct.complex, ptr %arrayidx294, i32 0, i32 0
  %226 = load float, ptr %r295, align 4, !tbaa !12
  %r296 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  store float %226, ptr %r296, align 4, !tbaa !12
  %227 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %228 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom297 = sext i32 %228 to i64
  %arrayidx298 = getelementptr inbounds %struct.complex, ptr %227, i64 %idxprom297
  %i299 = getelementptr inbounds %struct.complex, ptr %arrayidx298, i32 0, i32 1
  %229 = load float, ptr %i299, align 4, !tbaa !14
  %i300 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  store float %229, ptr %i300, align 4, !tbaa !14
  %230 = load i32, ptr %k, align 4, !tbaa !8
  %sub301 = sub nsw i32 %230, 1
  %231 = load i32, ptr %k, align 4, !tbaa !8
  %232 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul302 = mul nsw i32 %231, %232
  %add303 = add nsw i32 %sub301, %mul302
  store i32 %add303, ptr %i__1, align 4, !tbaa !8
  %233 = load i32, ptr %kp, align 4, !tbaa !8
  %234 = load i32, ptr %k, align 4, !tbaa !8
  %235 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul304 = mul nsw i32 %234, %235
  %add305 = add nsw i32 %233, %mul304
  store i32 %add305, ptr %i__2, align 4, !tbaa !8
  %236 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %237 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom306 = sext i32 %237 to i64
  %arrayidx307 = getelementptr inbounds %struct.complex, ptr %236, i64 %idxprom306
  %r308 = getelementptr inbounds %struct.complex, ptr %arrayidx307, i32 0, i32 0
  %238 = load float, ptr %r308, align 4, !tbaa !12
  %239 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %240 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom309 = sext i32 %240 to i64
  %arrayidx310 = getelementptr inbounds %struct.complex, ptr %239, i64 %idxprom309
  %r311 = getelementptr inbounds %struct.complex, ptr %arrayidx310, i32 0, i32 0
  store float %238, ptr %r311, align 4, !tbaa !12
  %241 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %242 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom312 = sext i32 %242 to i64
  %arrayidx313 = getelementptr inbounds %struct.complex, ptr %241, i64 %idxprom312
  %i314 = getelementptr inbounds %struct.complex, ptr %arrayidx313, i32 0, i32 1
  %243 = load float, ptr %i314, align 4, !tbaa !14
  %244 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %245 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom315 = sext i32 %245 to i64
  %arrayidx316 = getelementptr inbounds %struct.complex, ptr %244, i64 %idxprom315
  %i317 = getelementptr inbounds %struct.complex, ptr %arrayidx316, i32 0, i32 1
  store float %243, ptr %i317, align 4, !tbaa !14
  %246 = load i32, ptr %kp, align 4, !tbaa !8
  %247 = load i32, ptr %k, align 4, !tbaa !8
  %248 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul318 = mul nsw i32 %247, %248
  %add319 = add nsw i32 %246, %mul318
  store i32 %add319, ptr %i__1, align 4, !tbaa !8
  %r320 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  %249 = load float, ptr %r320, align 4, !tbaa !12
  %250 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %251 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom321 = sext i32 %251 to i64
  %arrayidx322 = getelementptr inbounds %struct.complex, ptr %250, i64 %idxprom321
  %r323 = getelementptr inbounds %struct.complex, ptr %arrayidx322, i32 0, i32 0
  store float %249, ptr %r323, align 4, !tbaa !12
  %i324 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  %252 = load float, ptr %i324, align 4, !tbaa !14
  %253 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %254 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom325 = sext i32 %254 to i64
  %arrayidx326 = getelementptr inbounds %struct.complex, ptr %253, i64 %idxprom325
  %i327 = getelementptr inbounds %struct.complex, ptr %arrayidx326, i32 0, i32 1
  store float %252, ptr %i327, align 4, !tbaa !14
  br label %if.end328

if.end328:                                        ; preds = %if.then289, %if.then228
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %if.end223
  %255 = load i32, ptr %kstep, align 4, !tbaa !8
  %cmp330 = icmp eq i32 %255, 1
  br i1 %cmp330, label %if.then332, label %if.else361

if.then332:                                       ; preds = %if.end329
  %256 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %257 = load i32, ptr %k, align 4, !tbaa !8
  %258 = load i32, ptr %k, align 4, !tbaa !8
  %259 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul333 = mul nsw i32 %258, %259
  %add334 = add nsw i32 %257, %mul333
  %idxprom335 = sext i32 %add334 to i64
  %arrayidx336 = getelementptr inbounds %struct.complex, ptr %256, i64 %idxprom335
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef @c_b1, ptr noundef %arrayidx336)
  %r337 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %260 = load float, ptr %r337, align 4, !tbaa !12
  %r338 = getelementptr inbounds %struct.complex, ptr %r1, i32 0, i32 0
  store float %260, ptr %r338, align 4, !tbaa !12
  %i339 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %261 = load float, ptr %i339, align 4, !tbaa !14
  %i340 = getelementptr inbounds %struct.complex, ptr %r1, i32 0, i32 1
  store float %261, ptr %i340, align 4, !tbaa !14
  %262 = load i32, ptr %k, align 4, !tbaa !8
  %sub341 = sub nsw i32 %262, 1
  store i32 %sub341, ptr %i__1, align 4, !tbaa !8
  %r342 = getelementptr inbounds %struct.complex, ptr %r1, i32 0, i32 0
  %263 = load float, ptr %r342, align 4, !tbaa !12
  %fneg343 = fneg float %263
  %r344 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %fneg343, ptr %r344, align 4, !tbaa !12
  %i345 = getelementptr inbounds %struct.complex, ptr %r1, i32 0, i32 1
  %264 = load float, ptr %i345, align 4, !tbaa !14
  %fneg346 = fneg float %264
  %i347 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %fneg346, ptr %i347, align 4, !tbaa !14
  %265 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %266 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %267 = load i32, ptr %k, align 4, !tbaa !8
  %268 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul348 = mul nsw i32 %267, %268
  %add349 = add nsw i32 %mul348, 1
  %idxprom350 = sext i32 %add349 to i64
  %arrayidx351 = getelementptr inbounds %struct.complex, ptr %266, i64 %idxprom350
  %269 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %270 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom352 = sext i32 %270 to i64
  %arrayidx353 = getelementptr inbounds %struct.complex, ptr %269, i64 %idxprom352
  %271 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call354 = call i32 @csyr_(ptr noundef %265, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx351, ptr noundef @c__1, ptr noundef %arrayidx353, ptr noundef %271)
  %272 = load i32, ptr %k, align 4, !tbaa !8
  %sub355 = sub nsw i32 %272, 1
  store i32 %sub355, ptr %i__1, align 4, !tbaa !8
  %273 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %274 = load i32, ptr %k, align 4, !tbaa !8
  %275 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul356 = mul nsw i32 %274, %275
  %add357 = add nsw i32 %mul356, 1
  %idxprom358 = sext i32 %add357 to i64
  %arrayidx359 = getelementptr inbounds %struct.complex, ptr %273, i64 %idxprom358
  %call360 = call i32 @cscal_(ptr noundef %i__1, ptr noundef %r1, ptr noundef %arrayidx359, ptr noundef @c__1)
  br label %if.end655

if.else361:                                       ; preds = %if.end329
  %276 = load i32, ptr %k, align 4, !tbaa !8
  %cmp362 = icmp sgt i32 %276, 2
  br i1 %cmp362, label %if.then364, label %if.end654

if.then364:                                       ; preds = %if.else361
  %277 = load i32, ptr %k, align 4, !tbaa !8
  %sub365 = sub nsw i32 %277, 1
  %278 = load i32, ptr %k, align 4, !tbaa !8
  %279 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul366 = mul nsw i32 %278, %279
  %add367 = add nsw i32 %sub365, %mul366
  store i32 %add367, ptr %i__1, align 4, !tbaa !8
  %280 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %281 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom368 = sext i32 %281 to i64
  %arrayidx369 = getelementptr inbounds %struct.complex, ptr %280, i64 %idxprom368
  %r370 = getelementptr inbounds %struct.complex, ptr %arrayidx369, i32 0, i32 0
  %282 = load float, ptr %r370, align 4, !tbaa !12
  %r371 = getelementptr inbounds %struct.complex, ptr %d12, i32 0, i32 0
  store float %282, ptr %r371, align 4, !tbaa !12
  %283 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %284 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom372 = sext i32 %284 to i64
  %arrayidx373 = getelementptr inbounds %struct.complex, ptr %283, i64 %idxprom372
  %i374 = getelementptr inbounds %struct.complex, ptr %arrayidx373, i32 0, i32 1
  %285 = load float, ptr %i374, align 4, !tbaa !14
  %i375 = getelementptr inbounds %struct.complex, ptr %d12, i32 0, i32 1
  store float %285, ptr %i375, align 4, !tbaa !14
  %286 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %287 = load i32, ptr %k, align 4, !tbaa !8
  %sub376 = sub nsw i32 %287, 1
  %288 = load i32, ptr %k, align 4, !tbaa !8
  %sub377 = sub nsw i32 %288, 1
  %289 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul378 = mul nsw i32 %sub377, %289
  %add379 = add nsw i32 %sub376, %mul378
  %idxprom380 = sext i32 %add379 to i64
  %arrayidx381 = getelementptr inbounds %struct.complex, ptr %286, i64 %idxprom380
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx381, ptr noundef %d12)
  %r382 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %290 = load float, ptr %r382, align 4, !tbaa !12
  %r383 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 0
  store float %290, ptr %r383, align 4, !tbaa !12
  %i384 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %291 = load float, ptr %i384, align 4, !tbaa !14
  %i385 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 1
  store float %291, ptr %i385, align 4, !tbaa !14
  %292 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %293 = load i32, ptr %k, align 4, !tbaa !8
  %294 = load i32, ptr %k, align 4, !tbaa !8
  %295 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul386 = mul nsw i32 %294, %295
  %add387 = add nsw i32 %293, %mul386
  %idxprom388 = sext i32 %add387 to i64
  %arrayidx389 = getelementptr inbounds %struct.complex, ptr %292, i64 %idxprom388
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx389, ptr noundef %d12)
  %r390 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %296 = load float, ptr %r390, align 4, !tbaa !12
  %r391 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 0
  store float %296, ptr %r391, align 4, !tbaa !12
  %i392 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %297 = load float, ptr %i392, align 4, !tbaa !14
  %i393 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 1
  store float %297, ptr %i393, align 4, !tbaa !14
  %r394 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 0
  %298 = load float, ptr %r394, align 4, !tbaa !12
  %r395 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 0
  %299 = load float, ptr %r395, align 4, !tbaa !12
  %i397 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 1
  %300 = load float, ptr %i397, align 4, !tbaa !14
  %i398 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 1
  %301 = load float, ptr %i398, align 4, !tbaa !14
  %mul399 = fmul float %300, %301
  %neg = fneg float %mul399
  %302 = call float @llvm.fmuladd.f32(float %298, float %299, float %neg)
  %r400 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %302, ptr %r400, align 4, !tbaa !12
  %r401 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 0
  %303 = load float, ptr %r401, align 4, !tbaa !12
  %i402 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 1
  %304 = load float, ptr %i402, align 4, !tbaa !14
  %i404 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 1
  %305 = load float, ptr %i404, align 4, !tbaa !14
  %r405 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 0
  %306 = load float, ptr %r405, align 4, !tbaa !12
  %mul406 = fmul float %305, %306
  %307 = call float @llvm.fmuladd.f32(float %303, float %304, float %mul406)
  %i407 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %307, ptr %i407, align 4, !tbaa !14
  %r408 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %308 = load float, ptr %r408, align 4, !tbaa !12
  %sub409 = fsub float %308, 1.000000e+00
  %r410 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub409, ptr %r410, align 4, !tbaa !12
  %i411 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %309 = load float, ptr %i411, align 4, !tbaa !14
  %sub412 = fsub float %309, 0.000000e+00
  %i413 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub412, ptr %i413, align 4, !tbaa !14
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef @c_b1, ptr noundef %q__2)
  %r414 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %310 = load float, ptr %r414, align 4, !tbaa !12
  %r415 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  store float %310, ptr %r415, align 4, !tbaa !12
  %i416 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %311 = load float, ptr %i416, align 4, !tbaa !14
  %i417 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  store float %311, ptr %i417, align 4, !tbaa !14
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %t, ptr noundef %d12)
  %r418 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %312 = load float, ptr %r418, align 4, !tbaa !12
  %r419 = getelementptr inbounds %struct.complex, ptr %d12, i32 0, i32 0
  store float %312, ptr %r419, align 4, !tbaa !12
  %i420 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %313 = load float, ptr %i420, align 4, !tbaa !14
  %i421 = getelementptr inbounds %struct.complex, ptr %d12, i32 0, i32 1
  store float %313, ptr %i421, align 4, !tbaa !14
  %314 = load i32, ptr %k, align 4, !tbaa !8
  %sub422 = sub nsw i32 %314, 2
  store i32 %sub422, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc651, %if.then364
  %315 = load i32, ptr %j, align 4, !tbaa !8
  %cmp423 = icmp sge i32 %315, 1
  br i1 %cmp423, label %for.body, label %for.end653

for.body:                                         ; preds = %for.cond
  %316 = load i32, ptr %j, align 4, !tbaa !8
  %317 = load i32, ptr %k, align 4, !tbaa !8
  %sub425 = sub nsw i32 %317, 1
  %318 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul426 = mul nsw i32 %sub425, %318
  %add427 = add nsw i32 %316, %mul426
  store i32 %add427, ptr %i__1, align 4, !tbaa !8
  %r428 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 0
  %319 = load float, ptr %r428, align 4, !tbaa !12
  %320 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %321 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom429 = sext i32 %321 to i64
  %arrayidx430 = getelementptr inbounds %struct.complex, ptr %320, i64 %idxprom429
  %r431 = getelementptr inbounds %struct.complex, ptr %arrayidx430, i32 0, i32 0
  %322 = load float, ptr %r431, align 4, !tbaa !12
  %i433 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 1
  %323 = load float, ptr %i433, align 4, !tbaa !14
  %324 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %325 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom434 = sext i32 %325 to i64
  %arrayidx435 = getelementptr inbounds %struct.complex, ptr %324, i64 %idxprom434
  %i436 = getelementptr inbounds %struct.complex, ptr %arrayidx435, i32 0, i32 1
  %326 = load float, ptr %i436, align 4, !tbaa !14
  %mul437 = fmul float %323, %326
  %neg438 = fneg float %mul437
  %327 = call float @llvm.fmuladd.f32(float %319, float %322, float %neg438)
  %r439 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %327, ptr %r439, align 4, !tbaa !12
  %r440 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 0
  %328 = load float, ptr %r440, align 4, !tbaa !12
  %329 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %330 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom441 = sext i32 %330 to i64
  %arrayidx442 = getelementptr inbounds %struct.complex, ptr %329, i64 %idxprom441
  %i443 = getelementptr inbounds %struct.complex, ptr %arrayidx442, i32 0, i32 1
  %331 = load float, ptr %i443, align 4, !tbaa !14
  %i445 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 1
  %332 = load float, ptr %i445, align 4, !tbaa !14
  %333 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %334 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom446 = sext i32 %334 to i64
  %arrayidx447 = getelementptr inbounds %struct.complex, ptr %333, i64 %idxprom446
  %r448 = getelementptr inbounds %struct.complex, ptr %arrayidx447, i32 0, i32 0
  %335 = load float, ptr %r448, align 4, !tbaa !12
  %mul449 = fmul float %332, %335
  %336 = call float @llvm.fmuladd.f32(float %328, float %331, float %mul449)
  %i450 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %336, ptr %i450, align 4, !tbaa !14
  %337 = load i32, ptr %j, align 4, !tbaa !8
  %338 = load i32, ptr %k, align 4, !tbaa !8
  %339 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul451 = mul nsw i32 %338, %339
  %add452 = add nsw i32 %337, %mul451
  store i32 %add452, ptr %i__2, align 4, !tbaa !8
  %r453 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %340 = load float, ptr %r453, align 4, !tbaa !12
  %341 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %342 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom454 = sext i32 %342 to i64
  %arrayidx455 = getelementptr inbounds %struct.complex, ptr %341, i64 %idxprom454
  %r456 = getelementptr inbounds %struct.complex, ptr %arrayidx455, i32 0, i32 0
  %343 = load float, ptr %r456, align 4, !tbaa !12
  %sub457 = fsub float %340, %343
  %r458 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub457, ptr %r458, align 4, !tbaa !12
  %i459 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %344 = load float, ptr %i459, align 4, !tbaa !14
  %345 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %346 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom460 = sext i32 %346 to i64
  %arrayidx461 = getelementptr inbounds %struct.complex, ptr %345, i64 %idxprom460
  %i462 = getelementptr inbounds %struct.complex, ptr %arrayidx461, i32 0, i32 1
  %347 = load float, ptr %i462, align 4, !tbaa !14
  %sub463 = fsub float %344, %347
  %i464 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub463, ptr %i464, align 4, !tbaa !14
  %r465 = getelementptr inbounds %struct.complex, ptr %d12, i32 0, i32 0
  %348 = load float, ptr %r465, align 4, !tbaa !12
  %r466 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %349 = load float, ptr %r466, align 4, !tbaa !12
  %i468 = getelementptr inbounds %struct.complex, ptr %d12, i32 0, i32 1
  %350 = load float, ptr %i468, align 4, !tbaa !14
  %i469 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %351 = load float, ptr %i469, align 4, !tbaa !14
  %mul470 = fmul float %350, %351
  %neg471 = fneg float %mul470
  %352 = call float @llvm.fmuladd.f32(float %348, float %349, float %neg471)
  %r472 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %352, ptr %r472, align 4, !tbaa !12
  %r473 = getelementptr inbounds %struct.complex, ptr %d12, i32 0, i32 0
  %353 = load float, ptr %r473, align 4, !tbaa !12
  %i474 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %354 = load float, ptr %i474, align 4, !tbaa !14
  %i476 = getelementptr inbounds %struct.complex, ptr %d12, i32 0, i32 1
  %355 = load float, ptr %i476, align 4, !tbaa !14
  %r477 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %356 = load float, ptr %r477, align 4, !tbaa !12
  %mul478 = fmul float %355, %356
  %357 = call float @llvm.fmuladd.f32(float %353, float %354, float %mul478)
  %i479 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %357, ptr %i479, align 4, !tbaa !14
  %r480 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %358 = load float, ptr %r480, align 4, !tbaa !12
  %r481 = getelementptr inbounds %struct.complex, ptr %wkm1, i32 0, i32 0
  store float %358, ptr %r481, align 4, !tbaa !12
  %i482 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %359 = load float, ptr %i482, align 4, !tbaa !14
  %i483 = getelementptr inbounds %struct.complex, ptr %wkm1, i32 0, i32 1
  store float %359, ptr %i483, align 4, !tbaa !14
  %360 = load i32, ptr %j, align 4, !tbaa !8
  %361 = load i32, ptr %k, align 4, !tbaa !8
  %362 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul484 = mul nsw i32 %361, %362
  %add485 = add nsw i32 %360, %mul484
  store i32 %add485, ptr %i__1, align 4, !tbaa !8
  %r486 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 0
  %363 = load float, ptr %r486, align 4, !tbaa !12
  %364 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %365 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom487 = sext i32 %365 to i64
  %arrayidx488 = getelementptr inbounds %struct.complex, ptr %364, i64 %idxprom487
  %r489 = getelementptr inbounds %struct.complex, ptr %arrayidx488, i32 0, i32 0
  %366 = load float, ptr %r489, align 4, !tbaa !12
  %i491 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 1
  %367 = load float, ptr %i491, align 4, !tbaa !14
  %368 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %369 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom492 = sext i32 %369 to i64
  %arrayidx493 = getelementptr inbounds %struct.complex, ptr %368, i64 %idxprom492
  %i494 = getelementptr inbounds %struct.complex, ptr %arrayidx493, i32 0, i32 1
  %370 = load float, ptr %i494, align 4, !tbaa !14
  %mul495 = fmul float %367, %370
  %neg496 = fneg float %mul495
  %371 = call float @llvm.fmuladd.f32(float %363, float %366, float %neg496)
  %r497 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %371, ptr %r497, align 4, !tbaa !12
  %r498 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 0
  %372 = load float, ptr %r498, align 4, !tbaa !12
  %373 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %374 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom499 = sext i32 %374 to i64
  %arrayidx500 = getelementptr inbounds %struct.complex, ptr %373, i64 %idxprom499
  %i501 = getelementptr inbounds %struct.complex, ptr %arrayidx500, i32 0, i32 1
  %375 = load float, ptr %i501, align 4, !tbaa !14
  %i503 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 1
  %376 = load float, ptr %i503, align 4, !tbaa !14
  %377 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %378 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom504 = sext i32 %378 to i64
  %arrayidx505 = getelementptr inbounds %struct.complex, ptr %377, i64 %idxprom504
  %r506 = getelementptr inbounds %struct.complex, ptr %arrayidx505, i32 0, i32 0
  %379 = load float, ptr %r506, align 4, !tbaa !12
  %mul507 = fmul float %376, %379
  %380 = call float @llvm.fmuladd.f32(float %372, float %375, float %mul507)
  %i508 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %380, ptr %i508, align 4, !tbaa !14
  %381 = load i32, ptr %j, align 4, !tbaa !8
  %382 = load i32, ptr %k, align 4, !tbaa !8
  %sub509 = sub nsw i32 %382, 1
  %383 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul510 = mul nsw i32 %sub509, %383
  %add511 = add nsw i32 %381, %mul510
  store i32 %add511, ptr %i__2, align 4, !tbaa !8
  %r512 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %384 = load float, ptr %r512, align 4, !tbaa !12
  %385 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %386 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom513 = sext i32 %386 to i64
  %arrayidx514 = getelementptr inbounds %struct.complex, ptr %385, i64 %idxprom513
  %r515 = getelementptr inbounds %struct.complex, ptr %arrayidx514, i32 0, i32 0
  %387 = load float, ptr %r515, align 4, !tbaa !12
  %sub516 = fsub float %384, %387
  %r517 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub516, ptr %r517, align 4, !tbaa !12
  %i518 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %388 = load float, ptr %i518, align 4, !tbaa !14
  %389 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %390 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom519 = sext i32 %390 to i64
  %arrayidx520 = getelementptr inbounds %struct.complex, ptr %389, i64 %idxprom519
  %i521 = getelementptr inbounds %struct.complex, ptr %arrayidx520, i32 0, i32 1
  %391 = load float, ptr %i521, align 4, !tbaa !14
  %sub522 = fsub float %388, %391
  %i523 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub522, ptr %i523, align 4, !tbaa !14
  %r524 = getelementptr inbounds %struct.complex, ptr %d12, i32 0, i32 0
  %392 = load float, ptr %r524, align 4, !tbaa !12
  %r525 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %393 = load float, ptr %r525, align 4, !tbaa !12
  %i527 = getelementptr inbounds %struct.complex, ptr %d12, i32 0, i32 1
  %394 = load float, ptr %i527, align 4, !tbaa !14
  %i528 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %395 = load float, ptr %i528, align 4, !tbaa !14
  %mul529 = fmul float %394, %395
  %neg530 = fneg float %mul529
  %396 = call float @llvm.fmuladd.f32(float %392, float %393, float %neg530)
  %r531 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %396, ptr %r531, align 4, !tbaa !12
  %r532 = getelementptr inbounds %struct.complex, ptr %d12, i32 0, i32 0
  %397 = load float, ptr %r532, align 4, !tbaa !12
  %i533 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %398 = load float, ptr %i533, align 4, !tbaa !14
  %i535 = getelementptr inbounds %struct.complex, ptr %d12, i32 0, i32 1
  %399 = load float, ptr %i535, align 4, !tbaa !14
  %r536 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %400 = load float, ptr %r536, align 4, !tbaa !12
  %mul537 = fmul float %399, %400
  %401 = call float @llvm.fmuladd.f32(float %397, float %398, float %mul537)
  %i538 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %401, ptr %i538, align 4, !tbaa !14
  %r539 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %402 = load float, ptr %r539, align 4, !tbaa !12
  %r540 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 0
  store float %402, ptr %r540, align 4, !tbaa !12
  %i541 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %403 = load float, ptr %i541, align 4, !tbaa !14
  %i542 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 1
  store float %403, ptr %i542, align 4, !tbaa !14
  %404 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %404, ptr %i__, align 4, !tbaa !8
  br label %for.cond543

for.cond543:                                      ; preds = %for.inc, %for.body
  %405 = load i32, ptr %i__, align 4, !tbaa !8
  %cmp544 = icmp sge i32 %405, 1
  br i1 %cmp544, label %for.body546, label %for.end

for.body546:                                      ; preds = %for.cond543
  %406 = load i32, ptr %i__, align 4, !tbaa !8
  %407 = load i32, ptr %j, align 4, !tbaa !8
  %408 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul547 = mul nsw i32 %407, %408
  %add548 = add nsw i32 %406, %mul547
  store i32 %add548, ptr %i__1, align 4, !tbaa !8
  %409 = load i32, ptr %i__, align 4, !tbaa !8
  %410 = load i32, ptr %j, align 4, !tbaa !8
  %411 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul549 = mul nsw i32 %410, %411
  %add550 = add nsw i32 %409, %mul549
  store i32 %add550, ptr %i__2, align 4, !tbaa !8
  %412 = load i32, ptr %i__, align 4, !tbaa !8
  %413 = load i32, ptr %k, align 4, !tbaa !8
  %414 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul551 = mul nsw i32 %413, %414
  %add552 = add nsw i32 %412, %mul551
  store i32 %add552, ptr %i__3, align 4, !tbaa !8
  %415 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %416 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom553 = sext i32 %416 to i64
  %arrayidx554 = getelementptr inbounds %struct.complex, ptr %415, i64 %idxprom553
  %r555 = getelementptr inbounds %struct.complex, ptr %arrayidx554, i32 0, i32 0
  %417 = load float, ptr %r555, align 4, !tbaa !12
  %r556 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 0
  %418 = load float, ptr %r556, align 4, !tbaa !12
  %419 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %420 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom558 = sext i32 %420 to i64
  %arrayidx559 = getelementptr inbounds %struct.complex, ptr %419, i64 %idxprom558
  %i560 = getelementptr inbounds %struct.complex, ptr %arrayidx559, i32 0, i32 1
  %421 = load float, ptr %i560, align 4, !tbaa !14
  %i561 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 1
  %422 = load float, ptr %i561, align 4, !tbaa !14
  %mul562 = fmul float %421, %422
  %neg563 = fneg float %mul562
  %423 = call float @llvm.fmuladd.f32(float %417, float %418, float %neg563)
  %r564 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %423, ptr %r564, align 4, !tbaa !12
  %424 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %425 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom565 = sext i32 %425 to i64
  %arrayidx566 = getelementptr inbounds %struct.complex, ptr %424, i64 %idxprom565
  %r567 = getelementptr inbounds %struct.complex, ptr %arrayidx566, i32 0, i32 0
  %426 = load float, ptr %r567, align 4, !tbaa !12
  %i568 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 1
  %427 = load float, ptr %i568, align 4, !tbaa !14
  %428 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %429 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom570 = sext i32 %429 to i64
  %arrayidx571 = getelementptr inbounds %struct.complex, ptr %428, i64 %idxprom570
  %i572 = getelementptr inbounds %struct.complex, ptr %arrayidx571, i32 0, i32 1
  %430 = load float, ptr %i572, align 4, !tbaa !14
  %r573 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 0
  %431 = load float, ptr %r573, align 4, !tbaa !12
  %mul574 = fmul float %430, %431
  %432 = call float @llvm.fmuladd.f32(float %426, float %427, float %mul574)
  %i575 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %432, ptr %i575, align 4, !tbaa !14
  %433 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %434 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom576 = sext i32 %434 to i64
  %arrayidx577 = getelementptr inbounds %struct.complex, ptr %433, i64 %idxprom576
  %r578 = getelementptr inbounds %struct.complex, ptr %arrayidx577, i32 0, i32 0
  %435 = load float, ptr %r578, align 4, !tbaa !12
  %r579 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %436 = load float, ptr %r579, align 4, !tbaa !12
  %sub580 = fsub float %435, %436
  %r581 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub580, ptr %r581, align 4, !tbaa !12
  %437 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %438 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom582 = sext i32 %438 to i64
  %arrayidx583 = getelementptr inbounds %struct.complex, ptr %437, i64 %idxprom582
  %i584 = getelementptr inbounds %struct.complex, ptr %arrayidx583, i32 0, i32 1
  %439 = load float, ptr %i584, align 4, !tbaa !14
  %i585 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %440 = load float, ptr %i585, align 4, !tbaa !14
  %sub586 = fsub float %439, %440
  %i587 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub586, ptr %i587, align 4, !tbaa !14
  %441 = load i32, ptr %i__, align 4, !tbaa !8
  %442 = load i32, ptr %k, align 4, !tbaa !8
  %sub588 = sub nsw i32 %442, 1
  %443 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul589 = mul nsw i32 %sub588, %443
  %add590 = add nsw i32 %441, %mul589
  store i32 %add590, ptr %i__4, align 4, !tbaa !8
  %444 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %445 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom591 = sext i32 %445 to i64
  %arrayidx592 = getelementptr inbounds %struct.complex, ptr %444, i64 %idxprom591
  %r593 = getelementptr inbounds %struct.complex, ptr %arrayidx592, i32 0, i32 0
  %446 = load float, ptr %r593, align 4, !tbaa !12
  %r594 = getelementptr inbounds %struct.complex, ptr %wkm1, i32 0, i32 0
  %447 = load float, ptr %r594, align 4, !tbaa !12
  %448 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %449 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom596 = sext i32 %449 to i64
  %arrayidx597 = getelementptr inbounds %struct.complex, ptr %448, i64 %idxprom596
  %i598 = getelementptr inbounds %struct.complex, ptr %arrayidx597, i32 0, i32 1
  %450 = load float, ptr %i598, align 4, !tbaa !14
  %i599 = getelementptr inbounds %struct.complex, ptr %wkm1, i32 0, i32 1
  %451 = load float, ptr %i599, align 4, !tbaa !14
  %mul600 = fmul float %450, %451
  %neg601 = fneg float %mul600
  %452 = call float @llvm.fmuladd.f32(float %446, float %447, float %neg601)
  %r602 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %452, ptr %r602, align 4, !tbaa !12
  %453 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %454 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom603 = sext i32 %454 to i64
  %arrayidx604 = getelementptr inbounds %struct.complex, ptr %453, i64 %idxprom603
  %r605 = getelementptr inbounds %struct.complex, ptr %arrayidx604, i32 0, i32 0
  %455 = load float, ptr %r605, align 4, !tbaa !12
  %i606 = getelementptr inbounds %struct.complex, ptr %wkm1, i32 0, i32 1
  %456 = load float, ptr %i606, align 4, !tbaa !14
  %457 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %458 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom608 = sext i32 %458 to i64
  %arrayidx609 = getelementptr inbounds %struct.complex, ptr %457, i64 %idxprom608
  %i610 = getelementptr inbounds %struct.complex, ptr %arrayidx609, i32 0, i32 1
  %459 = load float, ptr %i610, align 4, !tbaa !14
  %r611 = getelementptr inbounds %struct.complex, ptr %wkm1, i32 0, i32 0
  %460 = load float, ptr %r611, align 4, !tbaa !12
  %mul612 = fmul float %459, %460
  %461 = call float @llvm.fmuladd.f32(float %455, float %456, float %mul612)
  %i613 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %461, ptr %i613, align 4, !tbaa !14
  %r614 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %462 = load float, ptr %r614, align 4, !tbaa !12
  %r615 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %463 = load float, ptr %r615, align 4, !tbaa !12
  %sub616 = fsub float %462, %463
  %r617 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub616, ptr %r617, align 4, !tbaa !12
  %i618 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %464 = load float, ptr %i618, align 4, !tbaa !14
  %i619 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %465 = load float, ptr %i619, align 4, !tbaa !14
  %sub620 = fsub float %464, %465
  %i621 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub620, ptr %i621, align 4, !tbaa !14
  %r622 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %466 = load float, ptr %r622, align 4, !tbaa !12
  %467 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %468 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom623 = sext i32 %468 to i64
  %arrayidx624 = getelementptr inbounds %struct.complex, ptr %467, i64 %idxprom623
  %r625 = getelementptr inbounds %struct.complex, ptr %arrayidx624, i32 0, i32 0
  store float %466, ptr %r625, align 4, !tbaa !12
  %i626 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %469 = load float, ptr %i626, align 4, !tbaa !14
  %470 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %471 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom627 = sext i32 %471 to i64
  %arrayidx628 = getelementptr inbounds %struct.complex, ptr %470, i64 %idxprom627
  %i629 = getelementptr inbounds %struct.complex, ptr %arrayidx628, i32 0, i32 1
  store float %469, ptr %i629, align 4, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body546
  %472 = load i32, ptr %i__, align 4, !tbaa !8
  %dec = add nsw i32 %472, -1
  store i32 %dec, ptr %i__, align 4, !tbaa !8
  br label %for.cond543, !llvm.loop !15

for.end:                                          ; preds = %for.cond543
  %473 = load i32, ptr %j, align 4, !tbaa !8
  %474 = load i32, ptr %k, align 4, !tbaa !8
  %475 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul630 = mul nsw i32 %474, %475
  %add631 = add nsw i32 %473, %mul630
  store i32 %add631, ptr %i__1, align 4, !tbaa !8
  %r632 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 0
  %476 = load float, ptr %r632, align 4, !tbaa !12
  %477 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %478 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom633 = sext i32 %478 to i64
  %arrayidx634 = getelementptr inbounds %struct.complex, ptr %477, i64 %idxprom633
  %r635 = getelementptr inbounds %struct.complex, ptr %arrayidx634, i32 0, i32 0
  store float %476, ptr %r635, align 4, !tbaa !12
  %i636 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 1
  %479 = load float, ptr %i636, align 4, !tbaa !14
  %480 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %481 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom637 = sext i32 %481 to i64
  %arrayidx638 = getelementptr inbounds %struct.complex, ptr %480, i64 %idxprom637
  %i639 = getelementptr inbounds %struct.complex, ptr %arrayidx638, i32 0, i32 1
  store float %479, ptr %i639, align 4, !tbaa !14
  %482 = load i32, ptr %j, align 4, !tbaa !8
  %483 = load i32, ptr %k, align 4, !tbaa !8
  %sub640 = sub nsw i32 %483, 1
  %484 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul641 = mul nsw i32 %sub640, %484
  %add642 = add nsw i32 %482, %mul641
  store i32 %add642, ptr %i__1, align 4, !tbaa !8
  %r643 = getelementptr inbounds %struct.complex, ptr %wkm1, i32 0, i32 0
  %485 = load float, ptr %r643, align 4, !tbaa !12
  %486 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %487 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom644 = sext i32 %487 to i64
  %arrayidx645 = getelementptr inbounds %struct.complex, ptr %486, i64 %idxprom644
  %r646 = getelementptr inbounds %struct.complex, ptr %arrayidx645, i32 0, i32 0
  store float %485, ptr %r646, align 4, !tbaa !12
  %i647 = getelementptr inbounds %struct.complex, ptr %wkm1, i32 0, i32 1
  %488 = load float, ptr %i647, align 4, !tbaa !14
  %489 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %490 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom648 = sext i32 %490 to i64
  %arrayidx649 = getelementptr inbounds %struct.complex, ptr %489, i64 %idxprom648
  %i650 = getelementptr inbounds %struct.complex, ptr %arrayidx649, i32 0, i32 1
  store float %488, ptr %i650, align 4, !tbaa !14
  br label %for.inc651

for.inc651:                                       ; preds = %for.end
  %491 = load i32, ptr %j, align 4, !tbaa !8
  %dec652 = add nsw i32 %491, -1
  store i32 %dec652, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !17

for.end653:                                       ; preds = %for.cond
  br label %if.end654

if.end654:                                        ; preds = %for.end653, %if.else361
  br label %if.end655

if.end655:                                        ; preds = %if.end654, %if.then332
  br label %if.end656

if.end656:                                        ; preds = %if.end655, %if.end97
  %492 = load i32, ptr %kstep, align 4, !tbaa !8
  %cmp657 = icmp eq i32 %492, 1
  br i1 %cmp657, label %if.then659, label %if.else662

if.then659:                                       ; preds = %if.end656
  %493 = load i32, ptr %kp, align 4, !tbaa !8
  %494 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %495 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom660 = sext i32 %495 to i64
  %arrayidx661 = getelementptr inbounds i32, ptr %494, i64 %idxprom660
  store i32 %493, ptr %arrayidx661, align 4, !tbaa !8
  br label %if.end670

if.else662:                                       ; preds = %if.end656
  %496 = load i32, ptr %kp, align 4, !tbaa !8
  %sub663 = sub nsw i32 0, %496
  %497 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %498 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom664 = sext i32 %498 to i64
  %arrayidx665 = getelementptr inbounds i32, ptr %497, i64 %idxprom664
  store i32 %sub663, ptr %arrayidx665, align 4, !tbaa !8
  %499 = load i32, ptr %kp, align 4, !tbaa !8
  %sub666 = sub nsw i32 0, %499
  %500 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %501 = load i32, ptr %k, align 4, !tbaa !8
  %sub667 = sub nsw i32 %501, 1
  %idxprom668 = sext i32 %sub667 to i64
  %arrayidx669 = getelementptr inbounds i32, ptr %500, i64 %idxprom668
  store i32 %sub666, ptr %arrayidx669, align 4, !tbaa !8
  br label %if.end670

if.end670:                                        ; preds = %if.else662, %if.then659
  %502 = load i32, ptr %kstep, align 4, !tbaa !8
  %503 = load i32, ptr %k, align 4, !tbaa !8
  %sub671 = sub nsw i32 %503, %502
  store i32 %sub671, ptr %k, align 4, !tbaa !8
  br label %L10

if.else672:                                       ; preds = %if.end13
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %L40

L40:                                              ; preds = %if.end1358, %if.else672
  %504 = load i32, ptr %k, align 4, !tbaa !8
  %505 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %506 = load i32, ptr %505, align 4, !tbaa !8
  %cmp673 = icmp sgt i32 %504, %506
  br i1 %cmp673, label %if.then675, label %if.end676

if.then675:                                       ; preds = %L40
  br label %L70

if.end676:                                        ; preds = %L40
  store i32 1, ptr %kstep, align 4, !tbaa !8
  %507 = load i32, ptr %k, align 4, !tbaa !8
  %508 = load i32, ptr %k, align 4, !tbaa !8
  %509 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul677 = mul nsw i32 %508, %509
  %add678 = add nsw i32 %507, %mul677
  store i32 %add678, ptr %i__1, align 4, !tbaa !8
  %510 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %511 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom679 = sext i32 %511 to i64
  %arrayidx680 = getelementptr inbounds %struct.complex, ptr %510, i64 %idxprom679
  %r681 = getelementptr inbounds %struct.complex, ptr %arrayidx680, i32 0, i32 0
  %512 = load float, ptr %r681, align 4, !tbaa !12
  store float %512, ptr %r__1, align 4, !tbaa !10
  %513 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp682 = fcmp oge float %513, 0.000000e+00
  br i1 %cmp682, label %cond.true684, label %cond.false685

cond.true684:                                     ; preds = %if.end676
  %514 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end687

cond.false685:                                    ; preds = %if.end676
  %515 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg686 = fneg float %515
  br label %cond.end687

cond.end687:                                      ; preds = %cond.false685, %cond.true684
  %cond688 = phi float [ %514, %cond.true684 ], [ %fneg686, %cond.false685 ]
  %516 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %517 = load i32, ptr %k, align 4, !tbaa !8
  %518 = load i32, ptr %k, align 4, !tbaa !8
  %519 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul689 = mul nsw i32 %518, %519
  %add690 = add nsw i32 %517, %mul689
  %idxprom691 = sext i32 %add690 to i64
  %arrayidx692 = getelementptr inbounds %struct.complex, ptr %516, i64 %idxprom691
  %call693 = call double @r_imag(ptr noundef %arrayidx692)
  %conv694 = fptrunc double %call693 to float
  store float %conv694, ptr %r__2, align 4, !tbaa !10
  %520 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp695 = fcmp oge float %520, 0.000000e+00
  br i1 %cmp695, label %cond.true697, label %cond.false698

cond.true697:                                     ; preds = %cond.end687
  %521 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end700

cond.false698:                                    ; preds = %cond.end687
  %522 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg699 = fneg float %522
  br label %cond.end700

cond.end700:                                      ; preds = %cond.false698, %cond.true697
  %cond701 = phi float [ %521, %cond.true697 ], [ %fneg699, %cond.false698 ]
  %add702 = fadd float %cond688, %cond701
  store float %add702, ptr %absakk, align 4, !tbaa !10
  %523 = load i32, ptr %k, align 4, !tbaa !8
  %524 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %525 = load i32, ptr %524, align 4, !tbaa !8
  %cmp703 = icmp slt i32 %523, %525
  br i1 %cmp703, label %if.then705, label %if.else740

if.then705:                                       ; preds = %cond.end700
  %526 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %527 = load i32, ptr %526, align 4, !tbaa !8
  %528 = load i32, ptr %k, align 4, !tbaa !8
  %sub706 = sub nsw i32 %527, %528
  store i32 %sub706, ptr %i__1, align 4, !tbaa !8
  %529 = load i32, ptr %k, align 4, !tbaa !8
  %530 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %531 = load i32, ptr %k, align 4, !tbaa !8
  %add707 = add nsw i32 %531, 1
  %532 = load i32, ptr %k, align 4, !tbaa !8
  %533 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul708 = mul nsw i32 %532, %533
  %add709 = add nsw i32 %add707, %mul708
  %idxprom710 = sext i32 %add709 to i64
  %arrayidx711 = getelementptr inbounds %struct.complex, ptr %530, i64 %idxprom710
  %call712 = call i32 @icamax_(ptr noundef %i__1, ptr noundef %arrayidx711, ptr noundef @c__1)
  %add713 = add nsw i32 %529, %call712
  store i32 %add713, ptr %imax, align 4, !tbaa !8
  %534 = load i32, ptr %imax, align 4, !tbaa !8
  %535 = load i32, ptr %k, align 4, !tbaa !8
  %536 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul714 = mul nsw i32 %535, %536
  %add715 = add nsw i32 %534, %mul714
  store i32 %add715, ptr %i__1, align 4, !tbaa !8
  %537 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %538 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom716 = sext i32 %538 to i64
  %arrayidx717 = getelementptr inbounds %struct.complex, ptr %537, i64 %idxprom716
  %r718 = getelementptr inbounds %struct.complex, ptr %arrayidx717, i32 0, i32 0
  %539 = load float, ptr %r718, align 4, !tbaa !12
  store float %539, ptr %r__1, align 4, !tbaa !10
  %540 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp719 = fcmp oge float %540, 0.000000e+00
  br i1 %cmp719, label %cond.true721, label %cond.false722

cond.true721:                                     ; preds = %if.then705
  %541 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end724

cond.false722:                                    ; preds = %if.then705
  %542 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg723 = fneg float %542
  br label %cond.end724

cond.end724:                                      ; preds = %cond.false722, %cond.true721
  %cond725 = phi float [ %541, %cond.true721 ], [ %fneg723, %cond.false722 ]
  %543 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %544 = load i32, ptr %imax, align 4, !tbaa !8
  %545 = load i32, ptr %k, align 4, !tbaa !8
  %546 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul726 = mul nsw i32 %545, %546
  %add727 = add nsw i32 %544, %mul726
  %idxprom728 = sext i32 %add727 to i64
  %arrayidx729 = getelementptr inbounds %struct.complex, ptr %543, i64 %idxprom728
  %call730 = call double @r_imag(ptr noundef %arrayidx729)
  %conv731 = fptrunc double %call730 to float
  store float %conv731, ptr %r__2, align 4, !tbaa !10
  %547 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp732 = fcmp oge float %547, 0.000000e+00
  br i1 %cmp732, label %cond.true734, label %cond.false735

cond.true734:                                     ; preds = %cond.end724
  %548 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end737

cond.false735:                                    ; preds = %cond.end724
  %549 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg736 = fneg float %549
  br label %cond.end737

cond.end737:                                      ; preds = %cond.false735, %cond.true734
  %cond738 = phi float [ %548, %cond.true734 ], [ %fneg736, %cond.false735 ]
  %add739 = fadd float %cond725, %cond738
  store float %add739, ptr %colmax, align 4, !tbaa !10
  br label %if.end741

if.else740:                                       ; preds = %cond.end700
  store float 0.000000e+00, ptr %colmax, align 4, !tbaa !10
  br label %if.end741

if.end741:                                        ; preds = %if.else740, %cond.end737
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x742) #5
  %550 = load float, ptr %absakk, align 4, !tbaa !10
  store float %550, ptr %_x742, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y743) #5
  %551 = load float, ptr %colmax, align 4, !tbaa !10
  store float %551, ptr %_y743, align 4, !tbaa !10
  %552 = load float, ptr %_x742, align 4, !tbaa !10
  %553 = load float, ptr %_y743, align 4, !tbaa !10
  %cmp745 = fcmp ogt float %552, %553
  br i1 %cmp745, label %cond.true747, label %cond.false748

cond.true747:                                     ; preds = %if.end741
  %554 = load float, ptr %_x742, align 4, !tbaa !10
  br label %cond.end749

cond.false748:                                    ; preds = %if.end741
  %555 = load float, ptr %_y743, align 4, !tbaa !10
  br label %cond.end749

cond.end749:                                      ; preds = %cond.false748, %cond.true747
  %cond750 = phi float [ %554, %cond.true747 ], [ %555, %cond.false748 ]
  store float %cond750, ptr %tmp744, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y743) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x742) #5
  %556 = load float, ptr %tmp744, align 4, !tbaa !10
  %cmp751 = fcmp oeq float %556, 0.000000e+00
  br i1 %cmp751, label %if.then756, label %lor.lhs.false753

lor.lhs.false753:                                 ; preds = %cond.end749
  %call754 = call i32 @sisnan_(ptr noundef %absakk)
  %tobool755 = icmp ne i32 %call754, 0
  br i1 %tobool755, label %if.then756, label %if.else761

if.then756:                                       ; preds = %lor.lhs.false753, %cond.end749
  %557 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %558 = load i32, ptr %557, align 4, !tbaa !8
  %cmp757 = icmp eq i32 %558, 0
  br i1 %cmp757, label %if.then759, label %if.end760

if.then759:                                       ; preds = %if.then756
  %559 = load i32, ptr %k, align 4, !tbaa !8
  %560 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %559, ptr %560, align 4, !tbaa !8
  br label %if.end760

if.end760:                                        ; preds = %if.then759, %if.then756
  %561 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %561, ptr %kp, align 4, !tbaa !8
  br label %if.end1344

if.else761:                                       ; preds = %lor.lhs.false753
  %562 = load float, ptr %absakk, align 4, !tbaa !10
  %563 = load float, ptr %alpha, align 4, !tbaa !10
  %564 = load float, ptr %colmax, align 4, !tbaa !10
  %mul762 = fmul float %563, %564
  %cmp763 = fcmp oge float %562, %mul762
  br i1 %cmp763, label %if.then765, label %if.else766

if.then765:                                       ; preds = %if.else761
  %565 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %565, ptr %kp, align 4, !tbaa !8
  br label %if.end888

if.else766:                                       ; preds = %if.else761
  %566 = load i32, ptr %imax, align 4, !tbaa !8
  %567 = load i32, ptr %k, align 4, !tbaa !8
  %sub767 = sub nsw i32 %566, %567
  store i32 %sub767, ptr %i__1, align 4, !tbaa !8
  %568 = load i32, ptr %k, align 4, !tbaa !8
  %sub768 = sub nsw i32 %568, 1
  %569 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %570 = load i32, ptr %imax, align 4, !tbaa !8
  %571 = load i32, ptr %k, align 4, !tbaa !8
  %572 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul769 = mul nsw i32 %571, %572
  %add770 = add nsw i32 %570, %mul769
  %idxprom771 = sext i32 %add770 to i64
  %arrayidx772 = getelementptr inbounds %struct.complex, ptr %569, i64 %idxprom771
  %573 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call773 = call i32 @icamax_(ptr noundef %i__1, ptr noundef %arrayidx772, ptr noundef %573)
  %add774 = add nsw i32 %sub768, %call773
  store i32 %add774, ptr %jmax, align 4, !tbaa !8
  %574 = load i32, ptr %imax, align 4, !tbaa !8
  %575 = load i32, ptr %jmax, align 4, !tbaa !8
  %576 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul775 = mul nsw i32 %575, %576
  %add776 = add nsw i32 %574, %mul775
  store i32 %add776, ptr %i__1, align 4, !tbaa !8
  %577 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %578 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom777 = sext i32 %578 to i64
  %arrayidx778 = getelementptr inbounds %struct.complex, ptr %577, i64 %idxprom777
  %r779 = getelementptr inbounds %struct.complex, ptr %arrayidx778, i32 0, i32 0
  %579 = load float, ptr %r779, align 4, !tbaa !12
  store float %579, ptr %r__1, align 4, !tbaa !10
  %580 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp780 = fcmp oge float %580, 0.000000e+00
  br i1 %cmp780, label %cond.true782, label %cond.false783

cond.true782:                                     ; preds = %if.else766
  %581 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end785

cond.false783:                                    ; preds = %if.else766
  %582 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg784 = fneg float %582
  br label %cond.end785

cond.end785:                                      ; preds = %cond.false783, %cond.true782
  %cond786 = phi float [ %581, %cond.true782 ], [ %fneg784, %cond.false783 ]
  %583 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %584 = load i32, ptr %imax, align 4, !tbaa !8
  %585 = load i32, ptr %jmax, align 4, !tbaa !8
  %586 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul787 = mul nsw i32 %585, %586
  %add788 = add nsw i32 %584, %mul787
  %idxprom789 = sext i32 %add788 to i64
  %arrayidx790 = getelementptr inbounds %struct.complex, ptr %583, i64 %idxprom789
  %call791 = call double @r_imag(ptr noundef %arrayidx790)
  %conv792 = fptrunc double %call791 to float
  store float %conv792, ptr %r__2, align 4, !tbaa !10
  %587 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp793 = fcmp oge float %587, 0.000000e+00
  br i1 %cmp793, label %cond.true795, label %cond.false796

cond.true795:                                     ; preds = %cond.end785
  %588 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end798

cond.false796:                                    ; preds = %cond.end785
  %589 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg797 = fneg float %589
  br label %cond.end798

cond.end798:                                      ; preds = %cond.false796, %cond.true795
  %cond799 = phi float [ %588, %cond.true795 ], [ %fneg797, %cond.false796 ]
  %add800 = fadd float %cond786, %cond799
  store float %add800, ptr %rowmax, align 4, !tbaa !10
  %590 = load i32, ptr %imax, align 4, !tbaa !8
  %591 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %592 = load i32, ptr %591, align 4, !tbaa !8
  %cmp801 = icmp slt i32 %590, %592
  br i1 %cmp801, label %if.then803, label %if.end847

if.then803:                                       ; preds = %cond.end798
  %593 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %594 = load i32, ptr %593, align 4, !tbaa !8
  %595 = load i32, ptr %imax, align 4, !tbaa !8
  %sub804 = sub nsw i32 %594, %595
  store i32 %sub804, ptr %i__1, align 4, !tbaa !8
  %596 = load i32, ptr %imax, align 4, !tbaa !8
  %597 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %598 = load i32, ptr %imax, align 4, !tbaa !8
  %add805 = add nsw i32 %598, 1
  %599 = load i32, ptr %imax, align 4, !tbaa !8
  %600 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul806 = mul nsw i32 %599, %600
  %add807 = add nsw i32 %add805, %mul806
  %idxprom808 = sext i32 %add807 to i64
  %arrayidx809 = getelementptr inbounds %struct.complex, ptr %597, i64 %idxprom808
  %call810 = call i32 @icamax_(ptr noundef %i__1, ptr noundef %arrayidx809, ptr noundef @c__1)
  %add811 = add nsw i32 %596, %call810
  store i32 %add811, ptr %jmax, align 4, !tbaa !8
  %601 = load i32, ptr %jmax, align 4, !tbaa !8
  %602 = load i32, ptr %imax, align 4, !tbaa !8
  %603 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul812 = mul nsw i32 %602, %603
  %add813 = add nsw i32 %601, %mul812
  store i32 %add813, ptr %i__1, align 4, !tbaa !8
  %604 = load float, ptr %rowmax, align 4, !tbaa !10
  store float %604, ptr %r__3, align 4, !tbaa !10
  %605 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %606 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom814 = sext i32 %606 to i64
  %arrayidx815 = getelementptr inbounds %struct.complex, ptr %605, i64 %idxprom814
  %r816 = getelementptr inbounds %struct.complex, ptr %arrayidx815, i32 0, i32 0
  %607 = load float, ptr %r816, align 4, !tbaa !12
  store float %607, ptr %r__1, align 4, !tbaa !10
  %608 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp817 = fcmp oge float %608, 0.000000e+00
  br i1 %cmp817, label %cond.true819, label %cond.false820

cond.true819:                                     ; preds = %if.then803
  %609 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end822

cond.false820:                                    ; preds = %if.then803
  %610 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg821 = fneg float %610
  br label %cond.end822

cond.end822:                                      ; preds = %cond.false820, %cond.true819
  %cond823 = phi float [ %609, %cond.true819 ], [ %fneg821, %cond.false820 ]
  %611 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %612 = load i32, ptr %jmax, align 4, !tbaa !8
  %613 = load i32, ptr %imax, align 4, !tbaa !8
  %614 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul824 = mul nsw i32 %613, %614
  %add825 = add nsw i32 %612, %mul824
  %idxprom826 = sext i32 %add825 to i64
  %arrayidx827 = getelementptr inbounds %struct.complex, ptr %611, i64 %idxprom826
  %call828 = call double @r_imag(ptr noundef %arrayidx827)
  %conv829 = fptrunc double %call828 to float
  store float %conv829, ptr %r__2, align 4, !tbaa !10
  %615 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp830 = fcmp oge float %615, 0.000000e+00
  br i1 %cmp830, label %cond.true832, label %cond.false833

cond.true832:                                     ; preds = %cond.end822
  %616 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end835

cond.false833:                                    ; preds = %cond.end822
  %617 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg834 = fneg float %617
  br label %cond.end835

cond.end835:                                      ; preds = %cond.false833, %cond.true832
  %cond836 = phi float [ %616, %cond.true832 ], [ %fneg834, %cond.false833 ]
  %add837 = fadd float %cond823, %cond836
  store float %add837, ptr %r__4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x838) #5
  %618 = load float, ptr %r__3, align 4, !tbaa !10
  store float %618, ptr %_x838, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y839) #5
  %619 = load float, ptr %r__4, align 4, !tbaa !10
  store float %619, ptr %_y839, align 4, !tbaa !10
  %620 = load float, ptr %_x838, align 4, !tbaa !10
  %621 = load float, ptr %_y839, align 4, !tbaa !10
  %cmp841 = fcmp ogt float %620, %621
  br i1 %cmp841, label %cond.true843, label %cond.false844

cond.true843:                                     ; preds = %cond.end835
  %622 = load float, ptr %_x838, align 4, !tbaa !10
  br label %cond.end845

cond.false844:                                    ; preds = %cond.end835
  %623 = load float, ptr %_y839, align 4, !tbaa !10
  br label %cond.end845

cond.end845:                                      ; preds = %cond.false844, %cond.true843
  %cond846 = phi float [ %622, %cond.true843 ], [ %623, %cond.false844 ]
  store float %cond846, ptr %tmp840, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y839) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x838) #5
  %624 = load float, ptr %tmp840, align 4, !tbaa !10
  store float %624, ptr %rowmax, align 4, !tbaa !10
  br label %if.end847

if.end847:                                        ; preds = %cond.end845, %cond.end798
  %625 = load float, ptr %absakk, align 4, !tbaa !10
  %626 = load float, ptr %alpha, align 4, !tbaa !10
  %627 = load float, ptr %colmax, align 4, !tbaa !10
  %mul848 = fmul float %626, %627
  %628 = load float, ptr %colmax, align 4, !tbaa !10
  %629 = load float, ptr %rowmax, align 4, !tbaa !10
  %div849 = fdiv float %628, %629
  %mul850 = fmul float %mul848, %div849
  %cmp851 = fcmp oge float %625, %mul850
  br i1 %cmp851, label %if.then853, label %if.else854

if.then853:                                       ; preds = %if.end847
  %630 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %630, ptr %kp, align 4, !tbaa !8
  br label %if.end887

if.else854:                                       ; preds = %if.end847
  %631 = load i32, ptr %imax, align 4, !tbaa !8
  %632 = load i32, ptr %imax, align 4, !tbaa !8
  %633 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul855 = mul nsw i32 %632, %633
  %add856 = add nsw i32 %631, %mul855
  store i32 %add856, ptr %i__1, align 4, !tbaa !8
  %634 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %635 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom857 = sext i32 %635 to i64
  %arrayidx858 = getelementptr inbounds %struct.complex, ptr %634, i64 %idxprom857
  %r859 = getelementptr inbounds %struct.complex, ptr %arrayidx858, i32 0, i32 0
  %636 = load float, ptr %r859, align 4, !tbaa !12
  store float %636, ptr %r__1, align 4, !tbaa !10
  %637 = load float, ptr %r__1, align 4, !tbaa !10
  %cmp860 = fcmp oge float %637, 0.000000e+00
  br i1 %cmp860, label %cond.true862, label %cond.false863

cond.true862:                                     ; preds = %if.else854
  %638 = load float, ptr %r__1, align 4, !tbaa !10
  br label %cond.end865

cond.false863:                                    ; preds = %if.else854
  %639 = load float, ptr %r__1, align 4, !tbaa !10
  %fneg864 = fneg float %639
  br label %cond.end865

cond.end865:                                      ; preds = %cond.false863, %cond.true862
  %cond866 = phi float [ %638, %cond.true862 ], [ %fneg864, %cond.false863 ]
  %640 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %641 = load i32, ptr %imax, align 4, !tbaa !8
  %642 = load i32, ptr %imax, align 4, !tbaa !8
  %643 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul867 = mul nsw i32 %642, %643
  %add868 = add nsw i32 %641, %mul867
  %idxprom869 = sext i32 %add868 to i64
  %arrayidx870 = getelementptr inbounds %struct.complex, ptr %640, i64 %idxprom869
  %call871 = call double @r_imag(ptr noundef %arrayidx870)
  %conv872 = fptrunc double %call871 to float
  store float %conv872, ptr %r__2, align 4, !tbaa !10
  %644 = load float, ptr %r__2, align 4, !tbaa !10
  %cmp873 = fcmp oge float %644, 0.000000e+00
  br i1 %cmp873, label %cond.true875, label %cond.false876

cond.true875:                                     ; preds = %cond.end865
  %645 = load float, ptr %r__2, align 4, !tbaa !10
  br label %cond.end878

cond.false876:                                    ; preds = %cond.end865
  %646 = load float, ptr %r__2, align 4, !tbaa !10
  %fneg877 = fneg float %646
  br label %cond.end878

cond.end878:                                      ; preds = %cond.false876, %cond.true875
  %cond879 = phi float [ %645, %cond.true875 ], [ %fneg877, %cond.false876 ]
  %add880 = fadd float %cond866, %cond879
  %647 = load float, ptr %alpha, align 4, !tbaa !10
  %648 = load float, ptr %rowmax, align 4, !tbaa !10
  %mul881 = fmul float %647, %648
  %cmp882 = fcmp oge float %add880, %mul881
  br i1 %cmp882, label %if.then884, label %if.else885

if.then884:                                       ; preds = %cond.end878
  %649 = load i32, ptr %imax, align 4, !tbaa !8
  store i32 %649, ptr %kp, align 4, !tbaa !8
  br label %if.end886

if.else885:                                       ; preds = %cond.end878
  %650 = load i32, ptr %imax, align 4, !tbaa !8
  store i32 %650, ptr %kp, align 4, !tbaa !8
  store i32 2, ptr %kstep, align 4, !tbaa !8
  br label %if.end886

if.end886:                                        ; preds = %if.else885, %if.then884
  br label %if.end887

if.end887:                                        ; preds = %if.end886, %if.then853
  br label %if.end888

if.end888:                                        ; preds = %if.end887, %if.then765
  %651 = load i32, ptr %k, align 4, !tbaa !8
  %652 = load i32, ptr %kstep, align 4, !tbaa !8
  %add889 = add nsw i32 %651, %652
  %sub890 = sub nsw i32 %add889, 1
  store i32 %sub890, ptr %kk, align 4, !tbaa !8
  %653 = load i32, ptr %kp, align 4, !tbaa !8
  %654 = load i32, ptr %kk, align 4, !tbaa !8
  %cmp891 = icmp ne i32 %653, %654
  br i1 %cmp891, label %if.then893, label %if.end1001

if.then893:                                       ; preds = %if.end888
  %655 = load i32, ptr %kp, align 4, !tbaa !8
  %656 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %657 = load i32, ptr %656, align 4, !tbaa !8
  %cmp894 = icmp slt i32 %655, %657
  br i1 %cmp894, label %if.then896, label %if.end909

if.then896:                                       ; preds = %if.then893
  %658 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %659 = load i32, ptr %658, align 4, !tbaa !8
  %660 = load i32, ptr %kp, align 4, !tbaa !8
  %sub897 = sub nsw i32 %659, %660
  store i32 %sub897, ptr %i__1, align 4, !tbaa !8
  %661 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %662 = load i32, ptr %kp, align 4, !tbaa !8
  %add898 = add nsw i32 %662, 1
  %663 = load i32, ptr %kk, align 4, !tbaa !8
  %664 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul899 = mul nsw i32 %663, %664
  %add900 = add nsw i32 %add898, %mul899
  %idxprom901 = sext i32 %add900 to i64
  %arrayidx902 = getelementptr inbounds %struct.complex, ptr %661, i64 %idxprom901
  %665 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %666 = load i32, ptr %kp, align 4, !tbaa !8
  %add903 = add nsw i32 %666, 1
  %667 = load i32, ptr %kp, align 4, !tbaa !8
  %668 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul904 = mul nsw i32 %667, %668
  %add905 = add nsw i32 %add903, %mul904
  %idxprom906 = sext i32 %add905 to i64
  %arrayidx907 = getelementptr inbounds %struct.complex, ptr %665, i64 %idxprom906
  %call908 = call i32 @cswap_(ptr noundef %i__1, ptr noundef %arrayidx902, ptr noundef @c__1, ptr noundef %arrayidx907, ptr noundef @c__1)
  br label %if.end909

if.end909:                                        ; preds = %if.then896, %if.then893
  %669 = load i32, ptr %kp, align 4, !tbaa !8
  %670 = load i32, ptr %kk, align 4, !tbaa !8
  %sub910 = sub nsw i32 %669, %670
  %sub911 = sub nsw i32 %sub910, 1
  store i32 %sub911, ptr %i__1, align 4, !tbaa !8
  %671 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %672 = load i32, ptr %kk, align 4, !tbaa !8
  %add912 = add nsw i32 %672, 1
  %673 = load i32, ptr %kk, align 4, !tbaa !8
  %674 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul913 = mul nsw i32 %673, %674
  %add914 = add nsw i32 %add912, %mul913
  %idxprom915 = sext i32 %add914 to i64
  %arrayidx916 = getelementptr inbounds %struct.complex, ptr %671, i64 %idxprom915
  %675 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %676 = load i32, ptr %kp, align 4, !tbaa !8
  %677 = load i32, ptr %kk, align 4, !tbaa !8
  %add917 = add nsw i32 %677, 1
  %678 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul918 = mul nsw i32 %add917, %678
  %add919 = add nsw i32 %676, %mul918
  %idxprom920 = sext i32 %add919 to i64
  %arrayidx921 = getelementptr inbounds %struct.complex, ptr %675, i64 %idxprom920
  %679 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call922 = call i32 @cswap_(ptr noundef %i__1, ptr noundef %arrayidx916, ptr noundef @c__1, ptr noundef %arrayidx921, ptr noundef %679)
  %680 = load i32, ptr %kk, align 4, !tbaa !8
  %681 = load i32, ptr %kk, align 4, !tbaa !8
  %682 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul923 = mul nsw i32 %681, %682
  %add924 = add nsw i32 %680, %mul923
  store i32 %add924, ptr %i__1, align 4, !tbaa !8
  %683 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %684 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom925 = sext i32 %684 to i64
  %arrayidx926 = getelementptr inbounds %struct.complex, ptr %683, i64 %idxprom925
  %r927 = getelementptr inbounds %struct.complex, ptr %arrayidx926, i32 0, i32 0
  %685 = load float, ptr %r927, align 4, !tbaa !12
  %r928 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  store float %685, ptr %r928, align 4, !tbaa !12
  %686 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %687 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom929 = sext i32 %687 to i64
  %arrayidx930 = getelementptr inbounds %struct.complex, ptr %686, i64 %idxprom929
  %i931 = getelementptr inbounds %struct.complex, ptr %arrayidx930, i32 0, i32 1
  %688 = load float, ptr %i931, align 4, !tbaa !14
  %i932 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  store float %688, ptr %i932, align 4, !tbaa !14
  %689 = load i32, ptr %kk, align 4, !tbaa !8
  %690 = load i32, ptr %kk, align 4, !tbaa !8
  %691 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul933 = mul nsw i32 %690, %691
  %add934 = add nsw i32 %689, %mul933
  store i32 %add934, ptr %i__1, align 4, !tbaa !8
  %692 = load i32, ptr %kp, align 4, !tbaa !8
  %693 = load i32, ptr %kp, align 4, !tbaa !8
  %694 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul935 = mul nsw i32 %693, %694
  %add936 = add nsw i32 %692, %mul935
  store i32 %add936, ptr %i__2, align 4, !tbaa !8
  %695 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %696 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom937 = sext i32 %696 to i64
  %arrayidx938 = getelementptr inbounds %struct.complex, ptr %695, i64 %idxprom937
  %r939 = getelementptr inbounds %struct.complex, ptr %arrayidx938, i32 0, i32 0
  %697 = load float, ptr %r939, align 4, !tbaa !12
  %698 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %699 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom940 = sext i32 %699 to i64
  %arrayidx941 = getelementptr inbounds %struct.complex, ptr %698, i64 %idxprom940
  %r942 = getelementptr inbounds %struct.complex, ptr %arrayidx941, i32 0, i32 0
  store float %697, ptr %r942, align 4, !tbaa !12
  %700 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %701 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom943 = sext i32 %701 to i64
  %arrayidx944 = getelementptr inbounds %struct.complex, ptr %700, i64 %idxprom943
  %i945 = getelementptr inbounds %struct.complex, ptr %arrayidx944, i32 0, i32 1
  %702 = load float, ptr %i945, align 4, !tbaa !14
  %703 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %704 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom946 = sext i32 %704 to i64
  %arrayidx947 = getelementptr inbounds %struct.complex, ptr %703, i64 %idxprom946
  %i948 = getelementptr inbounds %struct.complex, ptr %arrayidx947, i32 0, i32 1
  store float %702, ptr %i948, align 4, !tbaa !14
  %705 = load i32, ptr %kp, align 4, !tbaa !8
  %706 = load i32, ptr %kp, align 4, !tbaa !8
  %707 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul949 = mul nsw i32 %706, %707
  %add950 = add nsw i32 %705, %mul949
  store i32 %add950, ptr %i__1, align 4, !tbaa !8
  %r951 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  %708 = load float, ptr %r951, align 4, !tbaa !12
  %709 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %710 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom952 = sext i32 %710 to i64
  %arrayidx953 = getelementptr inbounds %struct.complex, ptr %709, i64 %idxprom952
  %r954 = getelementptr inbounds %struct.complex, ptr %arrayidx953, i32 0, i32 0
  store float %708, ptr %r954, align 4, !tbaa !12
  %i955 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  %711 = load float, ptr %i955, align 4, !tbaa !14
  %712 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %713 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom956 = sext i32 %713 to i64
  %arrayidx957 = getelementptr inbounds %struct.complex, ptr %712, i64 %idxprom956
  %i958 = getelementptr inbounds %struct.complex, ptr %arrayidx957, i32 0, i32 1
  store float %711, ptr %i958, align 4, !tbaa !14
  %714 = load i32, ptr %kstep, align 4, !tbaa !8
  %cmp959 = icmp eq i32 %714, 2
  br i1 %cmp959, label %if.then961, label %if.end1000

if.then961:                                       ; preds = %if.end909
  %715 = load i32, ptr %k, align 4, !tbaa !8
  %add962 = add nsw i32 %715, 1
  %716 = load i32, ptr %k, align 4, !tbaa !8
  %717 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul963 = mul nsw i32 %716, %717
  %add964 = add nsw i32 %add962, %mul963
  store i32 %add964, ptr %i__1, align 4, !tbaa !8
  %718 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %719 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom965 = sext i32 %719 to i64
  %arrayidx966 = getelementptr inbounds %struct.complex, ptr %718, i64 %idxprom965
  %r967 = getelementptr inbounds %struct.complex, ptr %arrayidx966, i32 0, i32 0
  %720 = load float, ptr %r967, align 4, !tbaa !12
  %r968 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  store float %720, ptr %r968, align 4, !tbaa !12
  %721 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %722 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom969 = sext i32 %722 to i64
  %arrayidx970 = getelementptr inbounds %struct.complex, ptr %721, i64 %idxprom969
  %i971 = getelementptr inbounds %struct.complex, ptr %arrayidx970, i32 0, i32 1
  %723 = load float, ptr %i971, align 4, !tbaa !14
  %i972 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  store float %723, ptr %i972, align 4, !tbaa !14
  %724 = load i32, ptr %k, align 4, !tbaa !8
  %add973 = add nsw i32 %724, 1
  %725 = load i32, ptr %k, align 4, !tbaa !8
  %726 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul974 = mul nsw i32 %725, %726
  %add975 = add nsw i32 %add973, %mul974
  store i32 %add975, ptr %i__1, align 4, !tbaa !8
  %727 = load i32, ptr %kp, align 4, !tbaa !8
  %728 = load i32, ptr %k, align 4, !tbaa !8
  %729 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul976 = mul nsw i32 %728, %729
  %add977 = add nsw i32 %727, %mul976
  store i32 %add977, ptr %i__2, align 4, !tbaa !8
  %730 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %731 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom978 = sext i32 %731 to i64
  %arrayidx979 = getelementptr inbounds %struct.complex, ptr %730, i64 %idxprom978
  %r980 = getelementptr inbounds %struct.complex, ptr %arrayidx979, i32 0, i32 0
  %732 = load float, ptr %r980, align 4, !tbaa !12
  %733 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %734 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom981 = sext i32 %734 to i64
  %arrayidx982 = getelementptr inbounds %struct.complex, ptr %733, i64 %idxprom981
  %r983 = getelementptr inbounds %struct.complex, ptr %arrayidx982, i32 0, i32 0
  store float %732, ptr %r983, align 4, !tbaa !12
  %735 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %736 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom984 = sext i32 %736 to i64
  %arrayidx985 = getelementptr inbounds %struct.complex, ptr %735, i64 %idxprom984
  %i986 = getelementptr inbounds %struct.complex, ptr %arrayidx985, i32 0, i32 1
  %737 = load float, ptr %i986, align 4, !tbaa !14
  %738 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %739 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom987 = sext i32 %739 to i64
  %arrayidx988 = getelementptr inbounds %struct.complex, ptr %738, i64 %idxprom987
  %i989 = getelementptr inbounds %struct.complex, ptr %arrayidx988, i32 0, i32 1
  store float %737, ptr %i989, align 4, !tbaa !14
  %740 = load i32, ptr %kp, align 4, !tbaa !8
  %741 = load i32, ptr %k, align 4, !tbaa !8
  %742 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul990 = mul nsw i32 %741, %742
  %add991 = add nsw i32 %740, %mul990
  store i32 %add991, ptr %i__1, align 4, !tbaa !8
  %r992 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  %743 = load float, ptr %r992, align 4, !tbaa !12
  %744 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %745 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom993 = sext i32 %745 to i64
  %arrayidx994 = getelementptr inbounds %struct.complex, ptr %744, i64 %idxprom993
  %r995 = getelementptr inbounds %struct.complex, ptr %arrayidx994, i32 0, i32 0
  store float %743, ptr %r995, align 4, !tbaa !12
  %i996 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  %746 = load float, ptr %i996, align 4, !tbaa !14
  %747 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %748 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom997 = sext i32 %748 to i64
  %arrayidx998 = getelementptr inbounds %struct.complex, ptr %747, i64 %idxprom997
  %i999 = getelementptr inbounds %struct.complex, ptr %arrayidx998, i32 0, i32 1
  store float %746, ptr %i999, align 4, !tbaa !14
  br label %if.end1000

if.end1000:                                       ; preds = %if.then961, %if.end909
  br label %if.end1001

if.end1001:                                       ; preds = %if.end1000, %if.end888
  %749 = load i32, ptr %kstep, align 4, !tbaa !8
  %cmp1002 = icmp eq i32 %749, 1
  br i1 %cmp1002, label %if.then1004, label %if.else1043

if.then1004:                                      ; preds = %if.end1001
  %750 = load i32, ptr %k, align 4, !tbaa !8
  %751 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %752 = load i32, ptr %751, align 4, !tbaa !8
  %cmp1005 = icmp slt i32 %750, %752
  br i1 %cmp1005, label %if.then1007, label %if.end1042

if.then1007:                                      ; preds = %if.then1004
  %753 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %754 = load i32, ptr %k, align 4, !tbaa !8
  %755 = load i32, ptr %k, align 4, !tbaa !8
  %756 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1008 = mul nsw i32 %755, %756
  %add1009 = add nsw i32 %754, %mul1008
  %idxprom1010 = sext i32 %add1009 to i64
  %arrayidx1011 = getelementptr inbounds %struct.complex, ptr %753, i64 %idxprom1010
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef @c_b1, ptr noundef %arrayidx1011)
  %r1012 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %757 = load float, ptr %r1012, align 4, !tbaa !12
  %r1013 = getelementptr inbounds %struct.complex, ptr %r1, i32 0, i32 0
  store float %757, ptr %r1013, align 4, !tbaa !12
  %i1014 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %758 = load float, ptr %i1014, align 4, !tbaa !14
  %i1015 = getelementptr inbounds %struct.complex, ptr %r1, i32 0, i32 1
  store float %758, ptr %i1015, align 4, !tbaa !14
  %759 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %760 = load i32, ptr %759, align 4, !tbaa !8
  %761 = load i32, ptr %k, align 4, !tbaa !8
  %sub1016 = sub nsw i32 %760, %761
  store i32 %sub1016, ptr %i__1, align 4, !tbaa !8
  %r1017 = getelementptr inbounds %struct.complex, ptr %r1, i32 0, i32 0
  %762 = load float, ptr %r1017, align 4, !tbaa !12
  %fneg1018 = fneg float %762
  %r1019 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %fneg1018, ptr %r1019, align 4, !tbaa !12
  %i1020 = getelementptr inbounds %struct.complex, ptr %r1, i32 0, i32 1
  %763 = load float, ptr %i1020, align 4, !tbaa !14
  %fneg1021 = fneg float %763
  %i1022 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %fneg1021, ptr %i1022, align 4, !tbaa !14
  %764 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %765 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %766 = load i32, ptr %k, align 4, !tbaa !8
  %add1023 = add nsw i32 %766, 1
  %767 = load i32, ptr %k, align 4, !tbaa !8
  %768 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1024 = mul nsw i32 %767, %768
  %add1025 = add nsw i32 %add1023, %mul1024
  %idxprom1026 = sext i32 %add1025 to i64
  %arrayidx1027 = getelementptr inbounds %struct.complex, ptr %765, i64 %idxprom1026
  %769 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %770 = load i32, ptr %k, align 4, !tbaa !8
  %add1028 = add nsw i32 %770, 1
  %771 = load i32, ptr %k, align 4, !tbaa !8
  %add1029 = add nsw i32 %771, 1
  %772 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1030 = mul nsw i32 %add1029, %772
  %add1031 = add nsw i32 %add1028, %mul1030
  %idxprom1032 = sext i32 %add1031 to i64
  %arrayidx1033 = getelementptr inbounds %struct.complex, ptr %769, i64 %idxprom1032
  %773 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %call1034 = call i32 @csyr_(ptr noundef %764, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx1027, ptr noundef @c__1, ptr noundef %arrayidx1033, ptr noundef %773)
  %774 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %775 = load i32, ptr %774, align 4, !tbaa !8
  %776 = load i32, ptr %k, align 4, !tbaa !8
  %sub1035 = sub nsw i32 %775, %776
  store i32 %sub1035, ptr %i__1, align 4, !tbaa !8
  %777 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %778 = load i32, ptr %k, align 4, !tbaa !8
  %add1036 = add nsw i32 %778, 1
  %779 = load i32, ptr %k, align 4, !tbaa !8
  %780 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1037 = mul nsw i32 %779, %780
  %add1038 = add nsw i32 %add1036, %mul1037
  %idxprom1039 = sext i32 %add1038 to i64
  %arrayidx1040 = getelementptr inbounds %struct.complex, ptr %777, i64 %idxprom1039
  %call1041 = call i32 @cscal_(ptr noundef %i__1, ptr noundef %r1, ptr noundef %arrayidx1040, ptr noundef @c__1)
  br label %if.end1042

if.end1042:                                       ; preds = %if.then1007, %if.then1004
  br label %if.end1343

if.else1043:                                      ; preds = %if.end1001
  %781 = load i32, ptr %k, align 4, !tbaa !8
  %782 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %783 = load i32, ptr %782, align 4, !tbaa !8
  %sub1044 = sub nsw i32 %783, 1
  %cmp1045 = icmp slt i32 %781, %sub1044
  br i1 %cmp1045, label %if.then1047, label %if.end1342

if.then1047:                                      ; preds = %if.else1043
  %784 = load i32, ptr %k, align 4, !tbaa !8
  %add1048 = add nsw i32 %784, 1
  %785 = load i32, ptr %k, align 4, !tbaa !8
  %786 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1049 = mul nsw i32 %785, %786
  %add1050 = add nsw i32 %add1048, %mul1049
  store i32 %add1050, ptr %i__1, align 4, !tbaa !8
  %787 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %788 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom1051 = sext i32 %788 to i64
  %arrayidx1052 = getelementptr inbounds %struct.complex, ptr %787, i64 %idxprom1051
  %r1053 = getelementptr inbounds %struct.complex, ptr %arrayidx1052, i32 0, i32 0
  %789 = load float, ptr %r1053, align 4, !tbaa !12
  %r1054 = getelementptr inbounds %struct.complex, ptr %d21, i32 0, i32 0
  store float %789, ptr %r1054, align 4, !tbaa !12
  %790 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %791 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom1055 = sext i32 %791 to i64
  %arrayidx1056 = getelementptr inbounds %struct.complex, ptr %790, i64 %idxprom1055
  %i1057 = getelementptr inbounds %struct.complex, ptr %arrayidx1056, i32 0, i32 1
  %792 = load float, ptr %i1057, align 4, !tbaa !14
  %i1058 = getelementptr inbounds %struct.complex, ptr %d21, i32 0, i32 1
  store float %792, ptr %i1058, align 4, !tbaa !14
  %793 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %794 = load i32, ptr %k, align 4, !tbaa !8
  %add1059 = add nsw i32 %794, 1
  %795 = load i32, ptr %k, align 4, !tbaa !8
  %add1060 = add nsw i32 %795, 1
  %796 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1061 = mul nsw i32 %add1060, %796
  %add1062 = add nsw i32 %add1059, %mul1061
  %idxprom1063 = sext i32 %add1062 to i64
  %arrayidx1064 = getelementptr inbounds %struct.complex, ptr %793, i64 %idxprom1063
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx1064, ptr noundef %d21)
  %r1065 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %797 = load float, ptr %r1065, align 4, !tbaa !12
  %r1066 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 0
  store float %797, ptr %r1066, align 4, !tbaa !12
  %i1067 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %798 = load float, ptr %i1067, align 4, !tbaa !14
  %i1068 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 1
  store float %798, ptr %i1068, align 4, !tbaa !14
  %799 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %800 = load i32, ptr %k, align 4, !tbaa !8
  %801 = load i32, ptr %k, align 4, !tbaa !8
  %802 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1069 = mul nsw i32 %801, %802
  %add1070 = add nsw i32 %800, %mul1069
  %idxprom1071 = sext i32 %add1070 to i64
  %arrayidx1072 = getelementptr inbounds %struct.complex, ptr %799, i64 %idxprom1071
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx1072, ptr noundef %d21)
  %r1073 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %803 = load float, ptr %r1073, align 4, !tbaa !12
  %r1074 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 0
  store float %803, ptr %r1074, align 4, !tbaa !12
  %i1075 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %804 = load float, ptr %i1075, align 4, !tbaa !14
  %i1076 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 1
  store float %804, ptr %i1076, align 4, !tbaa !14
  %r1077 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 0
  %805 = load float, ptr %r1077, align 4, !tbaa !12
  %r1078 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 0
  %806 = load float, ptr %r1078, align 4, !tbaa !12
  %i1080 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 1
  %807 = load float, ptr %i1080, align 4, !tbaa !14
  %i1081 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 1
  %808 = load float, ptr %i1081, align 4, !tbaa !14
  %mul1082 = fmul float %807, %808
  %neg1083 = fneg float %mul1082
  %809 = call float @llvm.fmuladd.f32(float %805, float %806, float %neg1083)
  %r1084 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %809, ptr %r1084, align 4, !tbaa !12
  %r1085 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 0
  %810 = load float, ptr %r1085, align 4, !tbaa !12
  %i1086 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 1
  %811 = load float, ptr %i1086, align 4, !tbaa !14
  %i1088 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 1
  %812 = load float, ptr %i1088, align 4, !tbaa !14
  %r1089 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 0
  %813 = load float, ptr %r1089, align 4, !tbaa !12
  %mul1090 = fmul float %812, %813
  %814 = call float @llvm.fmuladd.f32(float %810, float %811, float %mul1090)
  %i1091 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %814, ptr %i1091, align 4, !tbaa !14
  %r1092 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %815 = load float, ptr %r1092, align 4, !tbaa !12
  %sub1093 = fsub float %815, 1.000000e+00
  %r1094 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub1093, ptr %r1094, align 4, !tbaa !12
  %i1095 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %816 = load float, ptr %i1095, align 4, !tbaa !14
  %sub1096 = fsub float %816, 0.000000e+00
  %i1097 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub1096, ptr %i1097, align 4, !tbaa !14
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef @c_b1, ptr noundef %q__2)
  %r1098 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %817 = load float, ptr %r1098, align 4, !tbaa !12
  %r1099 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  store float %817, ptr %r1099, align 4, !tbaa !12
  %i1100 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %818 = load float, ptr %i1100, align 4, !tbaa !14
  %i1101 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  store float %818, ptr %i1101, align 4, !tbaa !14
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %t, ptr noundef %d21)
  %r1102 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %819 = load float, ptr %r1102, align 4, !tbaa !12
  %r1103 = getelementptr inbounds %struct.complex, ptr %d21, i32 0, i32 0
  store float %819, ptr %r1103, align 4, !tbaa !12
  %i1104 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %820 = load float, ptr %i1104, align 4, !tbaa !14
  %i1105 = getelementptr inbounds %struct.complex, ptr %d21, i32 0, i32 1
  store float %820, ptr %i1105, align 4, !tbaa !14
  %821 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %822 = load i32, ptr %821, align 4, !tbaa !8
  store i32 %822, ptr %i__1, align 4, !tbaa !8
  %823 = load i32, ptr %k, align 4, !tbaa !8
  %add1106 = add nsw i32 %823, 2
  store i32 %add1106, ptr %j, align 4, !tbaa !8
  br label %for.cond1107

for.cond1107:                                     ; preds = %for.inc1339, %if.then1047
  %824 = load i32, ptr %j, align 4, !tbaa !8
  %825 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1108 = icmp sle i32 %824, %825
  br i1 %cmp1108, label %for.body1110, label %for.end1341

for.body1110:                                     ; preds = %for.cond1107
  %826 = load i32, ptr %j, align 4, !tbaa !8
  %827 = load i32, ptr %k, align 4, !tbaa !8
  %828 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1111 = mul nsw i32 %827, %828
  %add1112 = add nsw i32 %826, %mul1111
  store i32 %add1112, ptr %i__2, align 4, !tbaa !8
  %r1113 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 0
  %829 = load float, ptr %r1113, align 4, !tbaa !12
  %830 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %831 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1114 = sext i32 %831 to i64
  %arrayidx1115 = getelementptr inbounds %struct.complex, ptr %830, i64 %idxprom1114
  %r1116 = getelementptr inbounds %struct.complex, ptr %arrayidx1115, i32 0, i32 0
  %832 = load float, ptr %r1116, align 4, !tbaa !12
  %i1118 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 1
  %833 = load float, ptr %i1118, align 4, !tbaa !14
  %834 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %835 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1119 = sext i32 %835 to i64
  %arrayidx1120 = getelementptr inbounds %struct.complex, ptr %834, i64 %idxprom1119
  %i1121 = getelementptr inbounds %struct.complex, ptr %arrayidx1120, i32 0, i32 1
  %836 = load float, ptr %i1121, align 4, !tbaa !14
  %mul1122 = fmul float %833, %836
  %neg1123 = fneg float %mul1122
  %837 = call float @llvm.fmuladd.f32(float %829, float %832, float %neg1123)
  %r1124 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %837, ptr %r1124, align 4, !tbaa !12
  %r1125 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 0
  %838 = load float, ptr %r1125, align 4, !tbaa !12
  %839 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %840 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1126 = sext i32 %840 to i64
  %arrayidx1127 = getelementptr inbounds %struct.complex, ptr %839, i64 %idxprom1126
  %i1128 = getelementptr inbounds %struct.complex, ptr %arrayidx1127, i32 0, i32 1
  %841 = load float, ptr %i1128, align 4, !tbaa !14
  %i1130 = getelementptr inbounds %struct.complex, ptr %d11, i32 0, i32 1
  %842 = load float, ptr %i1130, align 4, !tbaa !14
  %843 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %844 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1131 = sext i32 %844 to i64
  %arrayidx1132 = getelementptr inbounds %struct.complex, ptr %843, i64 %idxprom1131
  %r1133 = getelementptr inbounds %struct.complex, ptr %arrayidx1132, i32 0, i32 0
  %845 = load float, ptr %r1133, align 4, !tbaa !12
  %mul1134 = fmul float %842, %845
  %846 = call float @llvm.fmuladd.f32(float %838, float %841, float %mul1134)
  %i1135 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %846, ptr %i1135, align 4, !tbaa !14
  %847 = load i32, ptr %j, align 4, !tbaa !8
  %848 = load i32, ptr %k, align 4, !tbaa !8
  %add1136 = add nsw i32 %848, 1
  %849 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1137 = mul nsw i32 %add1136, %849
  %add1138 = add nsw i32 %847, %mul1137
  store i32 %add1138, ptr %i__3, align 4, !tbaa !8
  %r1139 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %850 = load float, ptr %r1139, align 4, !tbaa !12
  %851 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %852 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1140 = sext i32 %852 to i64
  %arrayidx1141 = getelementptr inbounds %struct.complex, ptr %851, i64 %idxprom1140
  %r1142 = getelementptr inbounds %struct.complex, ptr %arrayidx1141, i32 0, i32 0
  %853 = load float, ptr %r1142, align 4, !tbaa !12
  %sub1143 = fsub float %850, %853
  %r1144 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub1143, ptr %r1144, align 4, !tbaa !12
  %i1145 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %854 = load float, ptr %i1145, align 4, !tbaa !14
  %855 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %856 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1146 = sext i32 %856 to i64
  %arrayidx1147 = getelementptr inbounds %struct.complex, ptr %855, i64 %idxprom1146
  %i1148 = getelementptr inbounds %struct.complex, ptr %arrayidx1147, i32 0, i32 1
  %857 = load float, ptr %i1148, align 4, !tbaa !14
  %sub1149 = fsub float %854, %857
  %i1150 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub1149, ptr %i1150, align 4, !tbaa !14
  %r1151 = getelementptr inbounds %struct.complex, ptr %d21, i32 0, i32 0
  %858 = load float, ptr %r1151, align 4, !tbaa !12
  %r1152 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %859 = load float, ptr %r1152, align 4, !tbaa !12
  %i1154 = getelementptr inbounds %struct.complex, ptr %d21, i32 0, i32 1
  %860 = load float, ptr %i1154, align 4, !tbaa !14
  %i1155 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %861 = load float, ptr %i1155, align 4, !tbaa !14
  %mul1156 = fmul float %860, %861
  %neg1157 = fneg float %mul1156
  %862 = call float @llvm.fmuladd.f32(float %858, float %859, float %neg1157)
  %r1158 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %862, ptr %r1158, align 4, !tbaa !12
  %r1159 = getelementptr inbounds %struct.complex, ptr %d21, i32 0, i32 0
  %863 = load float, ptr %r1159, align 4, !tbaa !12
  %i1160 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %864 = load float, ptr %i1160, align 4, !tbaa !14
  %i1162 = getelementptr inbounds %struct.complex, ptr %d21, i32 0, i32 1
  %865 = load float, ptr %i1162, align 4, !tbaa !14
  %r1163 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %866 = load float, ptr %r1163, align 4, !tbaa !12
  %mul1164 = fmul float %865, %866
  %867 = call float @llvm.fmuladd.f32(float %863, float %864, float %mul1164)
  %i1165 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %867, ptr %i1165, align 4, !tbaa !14
  %r1166 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %868 = load float, ptr %r1166, align 4, !tbaa !12
  %r1167 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 0
  store float %868, ptr %r1167, align 4, !tbaa !12
  %i1168 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %869 = load float, ptr %i1168, align 4, !tbaa !14
  %i1169 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 1
  store float %869, ptr %i1169, align 4, !tbaa !14
  %870 = load i32, ptr %j, align 4, !tbaa !8
  %871 = load i32, ptr %k, align 4, !tbaa !8
  %add1170 = add nsw i32 %871, 1
  %872 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1171 = mul nsw i32 %add1170, %872
  %add1172 = add nsw i32 %870, %mul1171
  store i32 %add1172, ptr %i__2, align 4, !tbaa !8
  %r1173 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 0
  %873 = load float, ptr %r1173, align 4, !tbaa !12
  %874 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %875 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1174 = sext i32 %875 to i64
  %arrayidx1175 = getelementptr inbounds %struct.complex, ptr %874, i64 %idxprom1174
  %r1176 = getelementptr inbounds %struct.complex, ptr %arrayidx1175, i32 0, i32 0
  %876 = load float, ptr %r1176, align 4, !tbaa !12
  %i1178 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 1
  %877 = load float, ptr %i1178, align 4, !tbaa !14
  %878 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %879 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1179 = sext i32 %879 to i64
  %arrayidx1180 = getelementptr inbounds %struct.complex, ptr %878, i64 %idxprom1179
  %i1181 = getelementptr inbounds %struct.complex, ptr %arrayidx1180, i32 0, i32 1
  %880 = load float, ptr %i1181, align 4, !tbaa !14
  %mul1182 = fmul float %877, %880
  %neg1183 = fneg float %mul1182
  %881 = call float @llvm.fmuladd.f32(float %873, float %876, float %neg1183)
  %r1184 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %881, ptr %r1184, align 4, !tbaa !12
  %r1185 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 0
  %882 = load float, ptr %r1185, align 4, !tbaa !12
  %883 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %884 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1186 = sext i32 %884 to i64
  %arrayidx1187 = getelementptr inbounds %struct.complex, ptr %883, i64 %idxprom1186
  %i1188 = getelementptr inbounds %struct.complex, ptr %arrayidx1187, i32 0, i32 1
  %885 = load float, ptr %i1188, align 4, !tbaa !14
  %i1190 = getelementptr inbounds %struct.complex, ptr %d22, i32 0, i32 1
  %886 = load float, ptr %i1190, align 4, !tbaa !14
  %887 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %888 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1191 = sext i32 %888 to i64
  %arrayidx1192 = getelementptr inbounds %struct.complex, ptr %887, i64 %idxprom1191
  %r1193 = getelementptr inbounds %struct.complex, ptr %arrayidx1192, i32 0, i32 0
  %889 = load float, ptr %r1193, align 4, !tbaa !12
  %mul1194 = fmul float %886, %889
  %890 = call float @llvm.fmuladd.f32(float %882, float %885, float %mul1194)
  %i1195 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %890, ptr %i1195, align 4, !tbaa !14
  %891 = load i32, ptr %j, align 4, !tbaa !8
  %892 = load i32, ptr %k, align 4, !tbaa !8
  %893 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1196 = mul nsw i32 %892, %893
  %add1197 = add nsw i32 %891, %mul1196
  store i32 %add1197, ptr %i__3, align 4, !tbaa !8
  %r1198 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %894 = load float, ptr %r1198, align 4, !tbaa !12
  %895 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %896 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1199 = sext i32 %896 to i64
  %arrayidx1200 = getelementptr inbounds %struct.complex, ptr %895, i64 %idxprom1199
  %r1201 = getelementptr inbounds %struct.complex, ptr %arrayidx1200, i32 0, i32 0
  %897 = load float, ptr %r1201, align 4, !tbaa !12
  %sub1202 = fsub float %894, %897
  %r1203 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub1202, ptr %r1203, align 4, !tbaa !12
  %i1204 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %898 = load float, ptr %i1204, align 4, !tbaa !14
  %899 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %900 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1205 = sext i32 %900 to i64
  %arrayidx1206 = getelementptr inbounds %struct.complex, ptr %899, i64 %idxprom1205
  %i1207 = getelementptr inbounds %struct.complex, ptr %arrayidx1206, i32 0, i32 1
  %901 = load float, ptr %i1207, align 4, !tbaa !14
  %sub1208 = fsub float %898, %901
  %i1209 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub1208, ptr %i1209, align 4, !tbaa !14
  %r1210 = getelementptr inbounds %struct.complex, ptr %d21, i32 0, i32 0
  %902 = load float, ptr %r1210, align 4, !tbaa !12
  %r1211 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %903 = load float, ptr %r1211, align 4, !tbaa !12
  %i1213 = getelementptr inbounds %struct.complex, ptr %d21, i32 0, i32 1
  %904 = load float, ptr %i1213, align 4, !tbaa !14
  %i1214 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %905 = load float, ptr %i1214, align 4, !tbaa !14
  %mul1215 = fmul float %904, %905
  %neg1216 = fneg float %mul1215
  %906 = call float @llvm.fmuladd.f32(float %902, float %903, float %neg1216)
  %r1217 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %906, ptr %r1217, align 4, !tbaa !12
  %r1218 = getelementptr inbounds %struct.complex, ptr %d21, i32 0, i32 0
  %907 = load float, ptr %r1218, align 4, !tbaa !12
  %i1219 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %908 = load float, ptr %i1219, align 4, !tbaa !14
  %i1221 = getelementptr inbounds %struct.complex, ptr %d21, i32 0, i32 1
  %909 = load float, ptr %i1221, align 4, !tbaa !14
  %r1222 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %910 = load float, ptr %r1222, align 4, !tbaa !12
  %mul1223 = fmul float %909, %910
  %911 = call float @llvm.fmuladd.f32(float %907, float %908, float %mul1223)
  %i1224 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %911, ptr %i1224, align 4, !tbaa !14
  %r1225 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %912 = load float, ptr %r1225, align 4, !tbaa !12
  %r1226 = getelementptr inbounds %struct.complex, ptr %wkp1, i32 0, i32 0
  store float %912, ptr %r1226, align 4, !tbaa !12
  %i1227 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %913 = load float, ptr %i1227, align 4, !tbaa !14
  %i1228 = getelementptr inbounds %struct.complex, ptr %wkp1, i32 0, i32 1
  store float %913, ptr %i1228, align 4, !tbaa !14
  %914 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %915 = load i32, ptr %914, align 4, !tbaa !8
  store i32 %915, ptr %i__2, align 4, !tbaa !8
  %916 = load i32, ptr %j, align 4, !tbaa !8
  store i32 %916, ptr %i__, align 4, !tbaa !8
  br label %for.cond1229

for.cond1229:                                     ; preds = %for.inc1316, %for.body1110
  %917 = load i32, ptr %i__, align 4, !tbaa !8
  %918 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1230 = icmp sle i32 %917, %918
  br i1 %cmp1230, label %for.body1232, label %for.end1317

for.body1232:                                     ; preds = %for.cond1229
  %919 = load i32, ptr %i__, align 4, !tbaa !8
  %920 = load i32, ptr %j, align 4, !tbaa !8
  %921 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1233 = mul nsw i32 %920, %921
  %add1234 = add nsw i32 %919, %mul1233
  store i32 %add1234, ptr %i__3, align 4, !tbaa !8
  %922 = load i32, ptr %i__, align 4, !tbaa !8
  %923 = load i32, ptr %j, align 4, !tbaa !8
  %924 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1235 = mul nsw i32 %923, %924
  %add1236 = add nsw i32 %922, %mul1235
  store i32 %add1236, ptr %i__4, align 4, !tbaa !8
  %925 = load i32, ptr %i__, align 4, !tbaa !8
  %926 = load i32, ptr %k, align 4, !tbaa !8
  %927 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1237 = mul nsw i32 %926, %927
  %add1238 = add nsw i32 %925, %mul1237
  store i32 %add1238, ptr %i__5, align 4, !tbaa !8
  %928 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %929 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom1239 = sext i32 %929 to i64
  %arrayidx1240 = getelementptr inbounds %struct.complex, ptr %928, i64 %idxprom1239
  %r1241 = getelementptr inbounds %struct.complex, ptr %arrayidx1240, i32 0, i32 0
  %930 = load float, ptr %r1241, align 4, !tbaa !12
  %r1242 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 0
  %931 = load float, ptr %r1242, align 4, !tbaa !12
  %932 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %933 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom1244 = sext i32 %933 to i64
  %arrayidx1245 = getelementptr inbounds %struct.complex, ptr %932, i64 %idxprom1244
  %i1246 = getelementptr inbounds %struct.complex, ptr %arrayidx1245, i32 0, i32 1
  %934 = load float, ptr %i1246, align 4, !tbaa !14
  %i1247 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 1
  %935 = load float, ptr %i1247, align 4, !tbaa !14
  %mul1248 = fmul float %934, %935
  %neg1249 = fneg float %mul1248
  %936 = call float @llvm.fmuladd.f32(float %930, float %931, float %neg1249)
  %r1250 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %936, ptr %r1250, align 4, !tbaa !12
  %937 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %938 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom1251 = sext i32 %938 to i64
  %arrayidx1252 = getelementptr inbounds %struct.complex, ptr %937, i64 %idxprom1251
  %r1253 = getelementptr inbounds %struct.complex, ptr %arrayidx1252, i32 0, i32 0
  %939 = load float, ptr %r1253, align 4, !tbaa !12
  %i1254 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 1
  %940 = load float, ptr %i1254, align 4, !tbaa !14
  %941 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %942 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom1256 = sext i32 %942 to i64
  %arrayidx1257 = getelementptr inbounds %struct.complex, ptr %941, i64 %idxprom1256
  %i1258 = getelementptr inbounds %struct.complex, ptr %arrayidx1257, i32 0, i32 1
  %943 = load float, ptr %i1258, align 4, !tbaa !14
  %r1259 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 0
  %944 = load float, ptr %r1259, align 4, !tbaa !12
  %mul1260 = fmul float %943, %944
  %945 = call float @llvm.fmuladd.f32(float %939, float %940, float %mul1260)
  %i1261 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %945, ptr %i1261, align 4, !tbaa !14
  %946 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %947 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1262 = sext i32 %947 to i64
  %arrayidx1263 = getelementptr inbounds %struct.complex, ptr %946, i64 %idxprom1262
  %r1264 = getelementptr inbounds %struct.complex, ptr %arrayidx1263, i32 0, i32 0
  %948 = load float, ptr %r1264, align 4, !tbaa !12
  %r1265 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %949 = load float, ptr %r1265, align 4, !tbaa !12
  %sub1266 = fsub float %948, %949
  %r1267 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub1266, ptr %r1267, align 4, !tbaa !12
  %950 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %951 = load i32, ptr %i__4, align 4, !tbaa !8
  %idxprom1268 = sext i32 %951 to i64
  %arrayidx1269 = getelementptr inbounds %struct.complex, ptr %950, i64 %idxprom1268
  %i1270 = getelementptr inbounds %struct.complex, ptr %arrayidx1269, i32 0, i32 1
  %952 = load float, ptr %i1270, align 4, !tbaa !14
  %i1271 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %953 = load float, ptr %i1271, align 4, !tbaa !14
  %sub1272 = fsub float %952, %953
  %i1273 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub1272, ptr %i1273, align 4, !tbaa !14
  %954 = load i32, ptr %i__, align 4, !tbaa !8
  %955 = load i32, ptr %k, align 4, !tbaa !8
  %add1274 = add nsw i32 %955, 1
  %956 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1275 = mul nsw i32 %add1274, %956
  %add1276 = add nsw i32 %954, %mul1275
  store i32 %add1276, ptr %i__6, align 4, !tbaa !8
  %957 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %958 = load i32, ptr %i__6, align 4, !tbaa !8
  %idxprom1277 = sext i32 %958 to i64
  %arrayidx1278 = getelementptr inbounds %struct.complex, ptr %957, i64 %idxprom1277
  %r1279 = getelementptr inbounds %struct.complex, ptr %arrayidx1278, i32 0, i32 0
  %959 = load float, ptr %r1279, align 4, !tbaa !12
  %r1280 = getelementptr inbounds %struct.complex, ptr %wkp1, i32 0, i32 0
  %960 = load float, ptr %r1280, align 4, !tbaa !12
  %961 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %962 = load i32, ptr %i__6, align 4, !tbaa !8
  %idxprom1282 = sext i32 %962 to i64
  %arrayidx1283 = getelementptr inbounds %struct.complex, ptr %961, i64 %idxprom1282
  %i1284 = getelementptr inbounds %struct.complex, ptr %arrayidx1283, i32 0, i32 1
  %963 = load float, ptr %i1284, align 4, !tbaa !14
  %i1285 = getelementptr inbounds %struct.complex, ptr %wkp1, i32 0, i32 1
  %964 = load float, ptr %i1285, align 4, !tbaa !14
  %mul1286 = fmul float %963, %964
  %neg1287 = fneg float %mul1286
  %965 = call float @llvm.fmuladd.f32(float %959, float %960, float %neg1287)
  %r1288 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  store float %965, ptr %r1288, align 4, !tbaa !12
  %966 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %967 = load i32, ptr %i__6, align 4, !tbaa !8
  %idxprom1289 = sext i32 %967 to i64
  %arrayidx1290 = getelementptr inbounds %struct.complex, ptr %966, i64 %idxprom1289
  %r1291 = getelementptr inbounds %struct.complex, ptr %arrayidx1290, i32 0, i32 0
  %968 = load float, ptr %r1291, align 4, !tbaa !12
  %i1292 = getelementptr inbounds %struct.complex, ptr %wkp1, i32 0, i32 1
  %969 = load float, ptr %i1292, align 4, !tbaa !14
  %970 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %971 = load i32, ptr %i__6, align 4, !tbaa !8
  %idxprom1294 = sext i32 %971 to i64
  %arrayidx1295 = getelementptr inbounds %struct.complex, ptr %970, i64 %idxprom1294
  %i1296 = getelementptr inbounds %struct.complex, ptr %arrayidx1295, i32 0, i32 1
  %972 = load float, ptr %i1296, align 4, !tbaa !14
  %r1297 = getelementptr inbounds %struct.complex, ptr %wkp1, i32 0, i32 0
  %973 = load float, ptr %r1297, align 4, !tbaa !12
  %mul1298 = fmul float %972, %973
  %974 = call float @llvm.fmuladd.f32(float %968, float %969, float %mul1298)
  %i1299 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  store float %974, ptr %i1299, align 4, !tbaa !14
  %r1300 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %975 = load float, ptr %r1300, align 4, !tbaa !12
  %r1301 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 0
  %976 = load float, ptr %r1301, align 4, !tbaa !12
  %sub1302 = fsub float %975, %976
  %r1303 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub1302, ptr %r1303, align 4, !tbaa !12
  %i1304 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %977 = load float, ptr %i1304, align 4, !tbaa !14
  %i1305 = getelementptr inbounds %struct.complex, ptr %q__4, i32 0, i32 1
  %978 = load float, ptr %i1305, align 4, !tbaa !14
  %sub1306 = fsub float %977, %978
  %i1307 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub1306, ptr %i1307, align 4, !tbaa !14
  %r1308 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %979 = load float, ptr %r1308, align 4, !tbaa !12
  %980 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %981 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1309 = sext i32 %981 to i64
  %arrayidx1310 = getelementptr inbounds %struct.complex, ptr %980, i64 %idxprom1309
  %r1311 = getelementptr inbounds %struct.complex, ptr %arrayidx1310, i32 0, i32 0
  store float %979, ptr %r1311, align 4, !tbaa !12
  %i1312 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %982 = load float, ptr %i1312, align 4, !tbaa !14
  %983 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %984 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom1313 = sext i32 %984 to i64
  %arrayidx1314 = getelementptr inbounds %struct.complex, ptr %983, i64 %idxprom1313
  %i1315 = getelementptr inbounds %struct.complex, ptr %arrayidx1314, i32 0, i32 1
  store float %982, ptr %i1315, align 4, !tbaa !14
  br label %for.inc1316

for.inc1316:                                      ; preds = %for.body1232
  %985 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %985, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond1229, !llvm.loop !18

for.end1317:                                      ; preds = %for.cond1229
  %986 = load i32, ptr %j, align 4, !tbaa !8
  %987 = load i32, ptr %k, align 4, !tbaa !8
  %988 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1318 = mul nsw i32 %987, %988
  %add1319 = add nsw i32 %986, %mul1318
  store i32 %add1319, ptr %i__2, align 4, !tbaa !8
  %r1320 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 0
  %989 = load float, ptr %r1320, align 4, !tbaa !12
  %990 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %991 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1321 = sext i32 %991 to i64
  %arrayidx1322 = getelementptr inbounds %struct.complex, ptr %990, i64 %idxprom1321
  %r1323 = getelementptr inbounds %struct.complex, ptr %arrayidx1322, i32 0, i32 0
  store float %989, ptr %r1323, align 4, !tbaa !12
  %i1324 = getelementptr inbounds %struct.complex, ptr %wk, i32 0, i32 1
  %992 = load float, ptr %i1324, align 4, !tbaa !14
  %993 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %994 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1325 = sext i32 %994 to i64
  %arrayidx1326 = getelementptr inbounds %struct.complex, ptr %993, i64 %idxprom1325
  %i1327 = getelementptr inbounds %struct.complex, ptr %arrayidx1326, i32 0, i32 1
  store float %992, ptr %i1327, align 4, !tbaa !14
  %995 = load i32, ptr %j, align 4, !tbaa !8
  %996 = load i32, ptr %k, align 4, !tbaa !8
  %add1328 = add nsw i32 %996, 1
  %997 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul1329 = mul nsw i32 %add1328, %997
  %add1330 = add nsw i32 %995, %mul1329
  store i32 %add1330, ptr %i__2, align 4, !tbaa !8
  %r1331 = getelementptr inbounds %struct.complex, ptr %wkp1, i32 0, i32 0
  %998 = load float, ptr %r1331, align 4, !tbaa !12
  %999 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1000 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1332 = sext i32 %1000 to i64
  %arrayidx1333 = getelementptr inbounds %struct.complex, ptr %999, i64 %idxprom1332
  %r1334 = getelementptr inbounds %struct.complex, ptr %arrayidx1333, i32 0, i32 0
  store float %998, ptr %r1334, align 4, !tbaa !12
  %i1335 = getelementptr inbounds %struct.complex, ptr %wkp1, i32 0, i32 1
  %1001 = load float, ptr %i1335, align 4, !tbaa !14
  %1002 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %1003 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom1336 = sext i32 %1003 to i64
  %arrayidx1337 = getelementptr inbounds %struct.complex, ptr %1002, i64 %idxprom1336
  %i1338 = getelementptr inbounds %struct.complex, ptr %arrayidx1337, i32 0, i32 1
  store float %1001, ptr %i1338, align 4, !tbaa !14
  br label %for.inc1339

for.inc1339:                                      ; preds = %for.end1317
  %1004 = load i32, ptr %j, align 4, !tbaa !8
  %inc1340 = add nsw i32 %1004, 1
  store i32 %inc1340, ptr %j, align 4, !tbaa !8
  br label %for.cond1107, !llvm.loop !19

for.end1341:                                      ; preds = %for.cond1107
  br label %if.end1342

if.end1342:                                       ; preds = %for.end1341, %if.else1043
  br label %if.end1343

if.end1343:                                       ; preds = %if.end1342, %if.end1042
  br label %if.end1344

if.end1344:                                       ; preds = %if.end1343, %if.end760
  %1005 = load i32, ptr %kstep, align 4, !tbaa !8
  %cmp1345 = icmp eq i32 %1005, 1
  br i1 %cmp1345, label %if.then1347, label %if.else1350

if.then1347:                                      ; preds = %if.end1344
  %1006 = load i32, ptr %kp, align 4, !tbaa !8
  %1007 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %1008 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom1348 = sext i32 %1008 to i64
  %arrayidx1349 = getelementptr inbounds i32, ptr %1007, i64 %idxprom1348
  store i32 %1006, ptr %arrayidx1349, align 4, !tbaa !8
  br label %if.end1358

if.else1350:                                      ; preds = %if.end1344
  %1009 = load i32, ptr %kp, align 4, !tbaa !8
  %sub1351 = sub nsw i32 0, %1009
  %1010 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %1011 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom1352 = sext i32 %1011 to i64
  %arrayidx1353 = getelementptr inbounds i32, ptr %1010, i64 %idxprom1352
  store i32 %sub1351, ptr %arrayidx1353, align 4, !tbaa !8
  %1012 = load i32, ptr %kp, align 4, !tbaa !8
  %sub1354 = sub nsw i32 0, %1012
  %1013 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %1014 = load i32, ptr %k, align 4, !tbaa !8
  %add1355 = add nsw i32 %1014, 1
  %idxprom1356 = sext i32 %add1355 to i64
  %arrayidx1357 = getelementptr inbounds i32, ptr %1013, i64 %idxprom1356
  store i32 %sub1354, ptr %arrayidx1357, align 4, !tbaa !8
  br label %if.end1358

if.end1358:                                       ; preds = %if.else1350, %if.then1347
  %1015 = load i32, ptr %kstep, align 4, !tbaa !8
  %1016 = load i32, ptr %k, align 4, !tbaa !8
  %add1359 = add nsw i32 %1016, %1015
  store i32 %add1359, ptr %k, align 4, !tbaa !8
  br label %L40

L70:                                              ; preds = %if.then675, %if.then20
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %L70, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %rowmax) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %colmax) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %absakk) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %kstep) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %alpha) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %jmax) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %imax) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %wkp1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %wkm1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %wk) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %kp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %kk) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d22) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d21) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d12) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #5
  %1017 = load i32, ptr %retval, align 4
  ret i32 %1017
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

declare double @r_imag(ptr noundef) #2

declare i32 @icamax_(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @sisnan_(ptr noundef) #2

declare i32 @cswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @cladiv_f2c_(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @csyr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

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
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 4}
!14 = !{!13, !11, i64 4}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}

; ModuleID = 'samples/693.bc'
source_filename = "/local-ssd/itk-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv-build/aidengro/spack-stage-itk-5.2.1-7ktpnbhfi55zw2mpeqkqyun5hqdvk4sv/spack-src/Modules/ThirdParty/VNL/src/vxl/v3p/netlib/minpack/lmder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v3p_netlib_lmder_.one = internal global double 1.000000e+00, align 8
@v3p_netlib_lmder_.p1 = internal global double 1.000000e-01, align 8
@v3p_netlib_lmder_.p5 = internal global double 5.000000e-01, align 8
@v3p_netlib_lmder_.p25 = internal global double 2.500000e-01, align 8
@v3p_netlib_lmder_.p75 = internal global double 7.500000e-01, align 8
@v3p_netlib_lmder_.p0001 = internal global double 1.000000e-04, align 8
@v3p_netlib_lmder_.zero = internal global double 0.000000e+00, align 8
@c__1 = internal global i64 1, align 8
@c_true = internal global i64 1, align 8

; Function Attrs: nounwind uwtable
define i32 @v3p_netlib_lmder_(ptr noundef %fcn, ptr noundef %m, ptr noundef %n, ptr noundef %x, ptr noundef %fvec, ptr noundef %fjac, ptr noundef %ldfjac, ptr noundef %ftol, ptr noundef %xtol, ptr noundef %gtol, ptr noundef %maxfev, ptr noundef %diag, ptr noundef %mode, ptr noundef %factor, ptr noundef %nprint, ptr noundef %info, ptr noundef %nfev, ptr noundef %njev, ptr noundef %ipvt, ptr noundef %qtf, ptr noundef %wa1, ptr noundef %wa2, ptr noundef %wa3, ptr noundef %wa4, ptr noundef %userdata) #0 {
entry:
  %fcn.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %fvec.addr = alloca ptr, align 8
  %fjac.addr = alloca ptr, align 8
  %ldfjac.addr = alloca ptr, align 8
  %ftol.addr = alloca ptr, align 8
  %xtol.addr = alloca ptr, align 8
  %gtol.addr = alloca ptr, align 8
  %maxfev.addr = alloca ptr, align 8
  %diag.addr = alloca ptr, align 8
  %mode.addr = alloca ptr, align 8
  %factor.addr = alloca ptr, align 8
  %nprint.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %nfev.addr = alloca ptr, align 8
  %njev.addr = alloca ptr, align 8
  %ipvt.addr = alloca ptr, align 8
  %qtf.addr = alloca ptr, align 8
  %wa1.addr = alloca ptr, align 8
  %wa2.addr = alloca ptr, align 8
  %wa3.addr = alloca ptr, align 8
  %wa4.addr = alloca ptr, align 8
  %userdata.addr = alloca ptr, align 8
  %fjac_dim1 = alloca i64, align 8
  %fjac_offset = alloca i64, align 8
  %i__1 = alloca i64, align 8
  %i__2 = alloca i64, align 8
  %d__1 = alloca double, align 8
  %d__2 = alloca double, align 8
  %d__3 = alloca double, align 8
  %i__ = alloca i64, align 8
  %j = alloca i64, align 8
  %l = alloca i64, align 8
  %par = alloca double, align 8
  %sum = alloca double, align 8
  %iter = alloca i64, align 8
  %temp = alloca double, align 8
  %temp1 = alloca double, align 8
  %temp2 = alloca double, align 8
  %iflag = alloca i64, align 8
  %delta = alloca double, align 8
  %ratio = alloca double, align 8
  %fnorm = alloca double, align 8
  %gnorm = alloca double, align 8
  %pnorm = alloca double, align 8
  %xnorm = alloca double, align 8
  %fnorm1 = alloca double, align 8
  %actred = alloca double, align 8
  %dirder = alloca double, align 8
  %epsmch = alloca double, align 8
  %prered = alloca double, align 8
  store ptr %fcn, ptr %fcn.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %fvec, ptr %fvec.addr, align 8, !tbaa !4
  store ptr %fjac, ptr %fjac.addr, align 8, !tbaa !4
  store ptr %ldfjac, ptr %ldfjac.addr, align 8, !tbaa !4
  store ptr %ftol, ptr %ftol.addr, align 8, !tbaa !4
  store ptr %xtol, ptr %xtol.addr, align 8, !tbaa !4
  store ptr %gtol, ptr %gtol.addr, align 8, !tbaa !4
  store ptr %maxfev, ptr %maxfev.addr, align 8, !tbaa !4
  store ptr %diag, ptr %diag.addr, align 8, !tbaa !4
  store ptr %mode, ptr %mode.addr, align 8, !tbaa !4
  store ptr %factor, ptr %factor.addr, align 8, !tbaa !4
  store ptr %nprint, ptr %nprint.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  store ptr %nfev, ptr %nfev.addr, align 8, !tbaa !4
  store ptr %njev, ptr %njev.addr, align 8, !tbaa !4
  store ptr %ipvt, ptr %ipvt.addr, align 8, !tbaa !4
  store ptr %qtf, ptr %qtf.addr, align 8, !tbaa !4
  store ptr %wa1, ptr %wa1.addr, align 8, !tbaa !4
  store ptr %wa2, ptr %wa2.addr, align 8, !tbaa !4
  store ptr %wa3, ptr %wa3.addr, align 8, !tbaa !4
  store ptr %wa4, ptr %wa4.addr, align 8, !tbaa !4
  store ptr %userdata, ptr %userdata.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fjac_dim1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %fjac_offset) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__3) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %i__) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %par) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %iter) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #5
  store double 0.000000e+00, ptr %temp, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %iflag) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ratio) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnorm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %gnorm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnorm) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %xnorm) #5
  store double 0.000000e+00, ptr %xnorm, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnorm1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %actred) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %dirder) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %epsmch) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %prered) #5
  %0 = load ptr, ptr %wa4.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %wa4.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %fvec.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds double, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %fvec.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %wa3.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds double, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %wa3.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %incdec.ptr3 = getelementptr inbounds double, ptr %3, i32 -1
  store ptr %incdec.ptr3, ptr %wa2.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %wa1.addr, align 8, !tbaa !4
  %incdec.ptr4 = getelementptr inbounds double, ptr %4, i32 -1
  store ptr %incdec.ptr4, ptr %wa1.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %qtf.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr5, ptr %qtf.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ipvt.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds i64, ptr %6, i32 -1
  store ptr %incdec.ptr6, ptr %ipvt.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %incdec.ptr7 = getelementptr inbounds double, ptr %7, i32 -1
  store ptr %incdec.ptr7, ptr %diag.addr, align 8, !tbaa !4
  %8 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds double, ptr %8, i32 -1
  store ptr %incdec.ptr8, ptr %x.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %ldfjac.addr, align 8, !tbaa !4
  %10 = load i64, ptr %9, align 8, !tbaa !10
  store i64 %10, ptr %fjac_dim1, align 8, !tbaa !10
  %11 = load i64, ptr %fjac_dim1, align 8, !tbaa !10
  %add = add nsw i64 1, %11
  store i64 %add, ptr %fjac_offset, align 8, !tbaa !10
  %12 = load i64, ptr %fjac_offset, align 8, !tbaa !10
  %13 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %idx.neg = sub i64 0, %12
  %add.ptr = getelementptr inbounds double, ptr %13, i64 %idx.neg
  store ptr %add.ptr, ptr %fjac.addr, align 8, !tbaa !4
  %call = call double @v3p_netlib_dpmpar_(ptr noundef @c__1)
  store double %call, ptr %epsmch, align 8, !tbaa !8
  %14 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 0, ptr %14, align 8, !tbaa !10
  store i64 0, ptr %iflag, align 8, !tbaa !10
  %15 = load ptr, ptr %nfev.addr, align 8, !tbaa !4
  store i64 0, ptr %15, align 8, !tbaa !10
  %16 = load ptr, ptr %njev.addr, align 8, !tbaa !4
  store i64 0, ptr %16, align 8, !tbaa !10
  %17 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %18 = load i64, ptr %17, align 8, !tbaa !10
  %cmp = icmp sle i64 %18, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %19 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %20 = load i64, ptr %19, align 8, !tbaa !10
  %21 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %22 = load i64, ptr %21, align 8, !tbaa !10
  %cmp9 = icmp slt i64 %20, %22
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %23 = load ptr, ptr %ldfjac.addr, align 8, !tbaa !4
  %24 = load i64, ptr %23, align 8, !tbaa !10
  %25 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %26 = load i64, ptr %25, align 8, !tbaa !10
  %cmp11 = icmp slt i64 %24, %26
  br i1 %cmp11, label %if.then, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %27 = load ptr, ptr %ftol.addr, align 8, !tbaa !4
  %28 = load double, ptr %27, align 8, !tbaa !8
  %29 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp13 = fcmp olt double %28, %29
  br i1 %cmp13, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %30 = load ptr, ptr %xtol.addr, align 8, !tbaa !4
  %31 = load double, ptr %30, align 8, !tbaa !8
  %32 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp15 = fcmp olt double %31, %32
  br i1 %cmp15, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %33 = load ptr, ptr %gtol.addr, align 8, !tbaa !4
  %34 = load double, ptr %33, align 8, !tbaa !8
  %35 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp17 = fcmp olt double %34, %35
  br i1 %cmp17, label %if.then, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %36 = load ptr, ptr %maxfev.addr, align 8, !tbaa !4
  %37 = load i64, ptr %36, align 8, !tbaa !10
  %cmp19 = icmp sle i64 %37, 0
  br i1 %cmp19, label %if.then, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %38 = load ptr, ptr %factor.addr, align 8, !tbaa !4
  %39 = load double, ptr %38, align 8, !tbaa !8
  %40 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp21 = fcmp ole double %39, %40
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false20, %lor.lhs.false18, %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false, %entry
  br label %L300

if.end:                                           ; preds = %lor.lhs.false20
  %41 = load ptr, ptr %mode.addr, align 8, !tbaa !4
  %42 = load i64, ptr %41, align 8, !tbaa !10
  %cmp22 = icmp ne i64 %42, 2
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end
  br label %L20

if.end24:                                         ; preds = %if.end
  %43 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %44 = load i64, ptr %43, align 8, !tbaa !10
  store i64 %44, ptr %i__1, align 8, !tbaa !10
  store i64 1, ptr %j, align 8, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end24
  %45 = load i64, ptr %j, align 8, !tbaa !10
  %46 = load i64, ptr %i__1, align 8, !tbaa !10
  %cmp25 = icmp sle i64 %45, %46
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %48 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx = getelementptr inbounds double, ptr %47, i64 %48
  %49 = load double, ptr %arrayidx, align 8, !tbaa !8
  %50 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp26 = fcmp ole double %49, %50
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body
  br label %L300

if.end28:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %51 = load i64, ptr %j, align 8, !tbaa !10
  %inc = add nsw i64 %51, 1
  store i64 %inc, ptr %j, align 8, !tbaa !10
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  br label %L20

L20:                                              ; preds = %for.end, %if.then23
  store i64 1, ptr %iflag, align 8, !tbaa !10
  %52 = load ptr, ptr %fcn.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %55 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx29 = getelementptr inbounds double, ptr %55, i64 1
  %56 = load ptr, ptr %fvec.addr, align 8, !tbaa !4
  %arrayidx30 = getelementptr inbounds double, ptr %56, i64 1
  %57 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %58 = load i64, ptr %fjac_offset, align 8, !tbaa !10
  %arrayidx31 = getelementptr inbounds double, ptr %57, i64 %58
  %59 = load ptr, ptr %ldfjac.addr, align 8, !tbaa !4
  %60 = load ptr, ptr %userdata.addr, align 8, !tbaa !4
  call void %52(ptr noundef %53, ptr noundef %54, ptr noundef %arrayidx29, ptr noundef %arrayidx30, ptr noundef %arrayidx31, ptr noundef %59, ptr noundef %iflag, ptr noundef %60)
  %61 = load ptr, ptr %nfev.addr, align 8, !tbaa !4
  store i64 1, ptr %61, align 8, !tbaa !10
  %62 = load i64, ptr %iflag, align 8, !tbaa !10
  %cmp32 = icmp slt i64 %62, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %L20
  br label %L300

if.end34:                                         ; preds = %L20
  %63 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %64 = load ptr, ptr %fvec.addr, align 8, !tbaa !4
  %arrayidx35 = getelementptr inbounds double, ptr %64, i64 1
  %call36 = call double @v3p_netlib_enorm_(ptr noundef %63, ptr noundef %arrayidx35)
  store double %call36, ptr %fnorm, align 8, !tbaa !8
  %65 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  store double %65, ptr %par, align 8, !tbaa !8
  store i64 1, ptr %iter, align 8, !tbaa !10
  br label %L30

L30:                                              ; preds = %if.end417, %if.end34
  store i64 2, ptr %iflag, align 8, !tbaa !10
  %66 = load ptr, ptr %fcn.addr, align 8, !tbaa !4
  %67 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %68 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %69 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx37 = getelementptr inbounds double, ptr %69, i64 1
  %70 = load ptr, ptr %fvec.addr, align 8, !tbaa !4
  %arrayidx38 = getelementptr inbounds double, ptr %70, i64 1
  %71 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %72 = load i64, ptr %fjac_offset, align 8, !tbaa !10
  %arrayidx39 = getelementptr inbounds double, ptr %71, i64 %72
  %73 = load ptr, ptr %ldfjac.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %userdata.addr, align 8, !tbaa !4
  call void %66(ptr noundef %67, ptr noundef %68, ptr noundef %arrayidx37, ptr noundef %arrayidx38, ptr noundef %arrayidx39, ptr noundef %73, ptr noundef %iflag, ptr noundef %74)
  %75 = load ptr, ptr %njev.addr, align 8, !tbaa !4
  %76 = load i64, ptr %75, align 8, !tbaa !10
  %inc40 = add nsw i64 %76, 1
  store i64 %inc40, ptr %75, align 8, !tbaa !10
  %77 = load i64, ptr %iflag, align 8, !tbaa !10
  %cmp41 = icmp slt i64 %77, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %L30
  br label %L300

if.end43:                                         ; preds = %L30
  %78 = load ptr, ptr %nprint.addr, align 8, !tbaa !4
  %79 = load i64, ptr %78, align 8, !tbaa !10
  %cmp44 = icmp sle i64 %79, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end43
  br label %L40

if.end46:                                         ; preds = %if.end43
  store i64 0, ptr %iflag, align 8, !tbaa !10
  %80 = load i64, ptr %iter, align 8, !tbaa !10
  %sub = sub nsw i64 %80, 1
  %81 = load ptr, ptr %nprint.addr, align 8, !tbaa !4
  %82 = load i64, ptr %81, align 8, !tbaa !10
  %rem = srem i64 %sub, %82
  %cmp47 = icmp eq i64 %rem, 0
  br i1 %cmp47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end46
  %83 = load ptr, ptr %fcn.addr, align 8, !tbaa !4
  %84 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %85 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %86 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx49 = getelementptr inbounds double, ptr %86, i64 1
  %87 = load ptr, ptr %fvec.addr, align 8, !tbaa !4
  %arrayidx50 = getelementptr inbounds double, ptr %87, i64 1
  %88 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %89 = load i64, ptr %fjac_offset, align 8, !tbaa !10
  %arrayidx51 = getelementptr inbounds double, ptr %88, i64 %89
  %90 = load ptr, ptr %ldfjac.addr, align 8, !tbaa !4
  %91 = load ptr, ptr %userdata.addr, align 8, !tbaa !4
  call void %83(ptr noundef %84, ptr noundef %85, ptr noundef %arrayidx49, ptr noundef %arrayidx50, ptr noundef %arrayidx51, ptr noundef %90, ptr noundef %iflag, ptr noundef %91)
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end46
  %92 = load i64, ptr %iflag, align 8, !tbaa !10
  %cmp53 = icmp slt i64 %92, 0
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end52
  br label %L300

if.end55:                                         ; preds = %if.end52
  br label %L40

L40:                                              ; preds = %if.end55, %if.then45
  %93 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %94 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %95 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %96 = load i64, ptr %fjac_offset, align 8, !tbaa !10
  %arrayidx56 = getelementptr inbounds double, ptr %95, i64 %96
  %97 = load ptr, ptr %ldfjac.addr, align 8, !tbaa !4
  %98 = load ptr, ptr %ipvt.addr, align 8, !tbaa !4
  %arrayidx57 = getelementptr inbounds i64, ptr %98, i64 1
  %99 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %100 = load ptr, ptr %wa1.addr, align 8, !tbaa !4
  %arrayidx58 = getelementptr inbounds double, ptr %100, i64 1
  %101 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %arrayidx59 = getelementptr inbounds double, ptr %101, i64 1
  %102 = load ptr, ptr %wa3.addr, align 8, !tbaa !4
  %arrayidx60 = getelementptr inbounds double, ptr %102, i64 1
  %call61 = call i32 @v3p_netlib_qrfac_(ptr noundef %93, ptr noundef %94, ptr noundef %arrayidx56, ptr noundef %97, ptr noundef @c_true, ptr noundef %arrayidx57, ptr noundef %99, ptr noundef %arrayidx58, ptr noundef %arrayidx59, ptr noundef %arrayidx60)
  %103 = load i64, ptr %iter, align 8, !tbaa !10
  %cmp62 = icmp ne i64 %103, 1
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %L40
  br label %L80

if.end64:                                         ; preds = %L40
  %104 = load ptr, ptr %mode.addr, align 8, !tbaa !4
  %105 = load i64, ptr %104, align 8, !tbaa !10
  %cmp65 = icmp eq i64 %105, 2
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end64
  br label %L60

if.end67:                                         ; preds = %if.end64
  %106 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %107 = load i64, ptr %106, align 8, !tbaa !10
  store i64 %107, ptr %i__1, align 8, !tbaa !10
  store i64 1, ptr %j, align 8, !tbaa !10
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc78, %if.end67
  %108 = load i64, ptr %j, align 8, !tbaa !10
  %109 = load i64, ptr %i__1, align 8, !tbaa !10
  %cmp69 = icmp sle i64 %108, %109
  br i1 %cmp69, label %for.body70, label %for.end80

for.body70:                                       ; preds = %for.cond68
  %110 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %111 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx71 = getelementptr inbounds double, ptr %110, i64 %111
  %112 = load double, ptr %arrayidx71, align 8, !tbaa !8
  %113 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %114 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx72 = getelementptr inbounds double, ptr %113, i64 %114
  store double %112, ptr %arrayidx72, align 8, !tbaa !8
  %115 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %116 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx73 = getelementptr inbounds double, ptr %115, i64 %116
  %117 = load double, ptr %arrayidx73, align 8, !tbaa !8
  %118 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp74 = fcmp oeq double %117, %118
  br i1 %cmp74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %for.body70
  %119 = load double, ptr @v3p_netlib_lmder_.one, align 8, !tbaa !8
  %120 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %121 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx76 = getelementptr inbounds double, ptr %120, i64 %121
  store double %119, ptr %arrayidx76, align 8, !tbaa !8
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %for.body70
  br label %for.inc78

for.inc78:                                        ; preds = %if.end77
  %122 = load i64, ptr %j, align 8, !tbaa !10
  %inc79 = add nsw i64 %122, 1
  store i64 %inc79, ptr %j, align 8, !tbaa !10
  br label %for.cond68, !llvm.loop !14

for.end80:                                        ; preds = %for.cond68
  br label %L60

L60:                                              ; preds = %for.end80, %if.then66
  %123 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %124 = load i64, ptr %123, align 8, !tbaa !10
  store i64 %124, ptr %i__1, align 8, !tbaa !10
  store i64 1, ptr %j, align 8, !tbaa !10
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc87, %L60
  %125 = load i64, ptr %j, align 8, !tbaa !10
  %126 = load i64, ptr %i__1, align 8, !tbaa !10
  %cmp82 = icmp sle i64 %125, %126
  br i1 %cmp82, label %for.body83, label %for.end89

for.body83:                                       ; preds = %for.cond81
  %127 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %128 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx84 = getelementptr inbounds double, ptr %127, i64 %128
  %129 = load double, ptr %arrayidx84, align 8, !tbaa !8
  %130 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %131 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx85 = getelementptr inbounds double, ptr %130, i64 %131
  %132 = load double, ptr %arrayidx85, align 8, !tbaa !8
  %mul = fmul double %129, %132
  %133 = load ptr, ptr %wa3.addr, align 8, !tbaa !4
  %134 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx86 = getelementptr inbounds double, ptr %133, i64 %134
  store double %mul, ptr %arrayidx86, align 8, !tbaa !8
  br label %for.inc87

for.inc87:                                        ; preds = %for.body83
  %135 = load i64, ptr %j, align 8, !tbaa !10
  %inc88 = add nsw i64 %135, 1
  store i64 %inc88, ptr %j, align 8, !tbaa !10
  br label %for.cond81, !llvm.loop !15

for.end89:                                        ; preds = %for.cond81
  %136 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %137 = load ptr, ptr %wa3.addr, align 8, !tbaa !4
  %arrayidx90 = getelementptr inbounds double, ptr %137, i64 1
  %call91 = call double @v3p_netlib_enorm_(ptr noundef %136, ptr noundef %arrayidx90)
  store double %call91, ptr %xnorm, align 8, !tbaa !8
  %138 = load ptr, ptr %factor.addr, align 8, !tbaa !4
  %139 = load double, ptr %138, align 8, !tbaa !8
  %140 = load double, ptr %xnorm, align 8, !tbaa !8
  %mul92 = fmul double %139, %140
  store double %mul92, ptr %delta, align 8, !tbaa !8
  %141 = load double, ptr %delta, align 8, !tbaa !8
  %142 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp93 = fcmp oeq double %141, %142
  br i1 %cmp93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %for.end89
  %143 = load ptr, ptr %factor.addr, align 8, !tbaa !4
  %144 = load double, ptr %143, align 8, !tbaa !8
  store double %144, ptr %delta, align 8, !tbaa !8
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %for.end89
  br label %L80

L80:                                              ; preds = %if.end95, %if.then63
  %145 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %146 = load i64, ptr %145, align 8, !tbaa !10
  store i64 %146, ptr %i__1, align 8, !tbaa !10
  store i64 1, ptr %i__, align 8, !tbaa !10
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc101, %L80
  %147 = load i64, ptr %i__, align 8, !tbaa !10
  %148 = load i64, ptr %i__1, align 8, !tbaa !10
  %cmp97 = icmp sle i64 %147, %148
  br i1 %cmp97, label %for.body98, label %for.end103

for.body98:                                       ; preds = %for.cond96
  %149 = load ptr, ptr %fvec.addr, align 8, !tbaa !4
  %150 = load i64, ptr %i__, align 8, !tbaa !10
  %arrayidx99 = getelementptr inbounds double, ptr %149, i64 %150
  %151 = load double, ptr %arrayidx99, align 8, !tbaa !8
  %152 = load ptr, ptr %wa4.addr, align 8, !tbaa !4
  %153 = load i64, ptr %i__, align 8, !tbaa !10
  %arrayidx100 = getelementptr inbounds double, ptr %152, i64 %153
  store double %151, ptr %arrayidx100, align 8, !tbaa !8
  br label %for.inc101

for.inc101:                                       ; preds = %for.body98
  %154 = load i64, ptr %i__, align 8, !tbaa !10
  %inc102 = add nsw i64 %154, 1
  store i64 %inc102, ptr %i__, align 8, !tbaa !10
  br label %for.cond96, !llvm.loop !16

for.end103:                                       ; preds = %for.cond96
  %155 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %156 = load i64, ptr %155, align 8, !tbaa !10
  store i64 %156, ptr %i__1, align 8, !tbaa !10
  store i64 1, ptr %j, align 8, !tbaa !10
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc144, %for.end103
  %157 = load i64, ptr %j, align 8, !tbaa !10
  %158 = load i64, ptr %i__1, align 8, !tbaa !10
  %cmp105 = icmp sle i64 %157, %158
  br i1 %cmp105, label %for.body106, label %for.end146

for.body106:                                      ; preds = %for.cond104
  %159 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %160 = load i64, ptr %j, align 8, !tbaa !10
  %161 = load i64, ptr %j, align 8, !tbaa !10
  %162 = load i64, ptr %fjac_dim1, align 8, !tbaa !10
  %mul107 = mul nsw i64 %161, %162
  %add108 = add nsw i64 %160, %mul107
  %arrayidx109 = getelementptr inbounds double, ptr %159, i64 %add108
  %163 = load double, ptr %arrayidx109, align 8, !tbaa !8
  %164 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp110 = fcmp oeq double %163, %164
  br i1 %cmp110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %for.body106
  br label %L120

if.end112:                                        ; preds = %for.body106
  %165 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  store double %165, ptr %sum, align 8, !tbaa !8
  %166 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %167 = load i64, ptr %166, align 8, !tbaa !10
  store i64 %167, ptr %i__2, align 8, !tbaa !10
  %168 = load i64, ptr %j, align 8, !tbaa !10
  store i64 %168, ptr %i__, align 8, !tbaa !10
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc121, %if.end112
  %169 = load i64, ptr %i__, align 8, !tbaa !10
  %170 = load i64, ptr %i__2, align 8, !tbaa !10
  %cmp114 = icmp sle i64 %169, %170
  br i1 %cmp114, label %for.body115, label %for.end123

for.body115:                                      ; preds = %for.cond113
  %171 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %172 = load i64, ptr %i__, align 8, !tbaa !10
  %173 = load i64, ptr %j, align 8, !tbaa !10
  %174 = load i64, ptr %fjac_dim1, align 8, !tbaa !10
  %mul116 = mul nsw i64 %173, %174
  %add117 = add nsw i64 %172, %mul116
  %arrayidx118 = getelementptr inbounds double, ptr %171, i64 %add117
  %175 = load double, ptr %arrayidx118, align 8, !tbaa !8
  %176 = load ptr, ptr %wa4.addr, align 8, !tbaa !4
  %177 = load i64, ptr %i__, align 8, !tbaa !10
  %arrayidx119 = getelementptr inbounds double, ptr %176, i64 %177
  %178 = load double, ptr %arrayidx119, align 8, !tbaa !8
  %179 = load double, ptr %sum, align 8, !tbaa !8
  %180 = call double @llvm.fmuladd.f64(double %175, double %178, double %179)
  store double %180, ptr %sum, align 8, !tbaa !8
  br label %for.inc121

for.inc121:                                       ; preds = %for.body115
  %181 = load i64, ptr %i__, align 8, !tbaa !10
  %inc122 = add nsw i64 %181, 1
  store i64 %inc122, ptr %i__, align 8, !tbaa !10
  br label %for.cond113, !llvm.loop !17

for.end123:                                       ; preds = %for.cond113
  %182 = load double, ptr %sum, align 8, !tbaa !8
  %fneg = fneg double %182
  %183 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %184 = load i64, ptr %j, align 8, !tbaa !10
  %185 = load i64, ptr %j, align 8, !tbaa !10
  %186 = load i64, ptr %fjac_dim1, align 8, !tbaa !10
  %mul124 = mul nsw i64 %185, %186
  %add125 = add nsw i64 %184, %mul124
  %arrayidx126 = getelementptr inbounds double, ptr %183, i64 %add125
  %187 = load double, ptr %arrayidx126, align 8, !tbaa !8
  %div = fdiv double %fneg, %187
  store double %div, ptr %temp, align 8, !tbaa !8
  %188 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %189 = load i64, ptr %188, align 8, !tbaa !10
  store i64 %189, ptr %i__2, align 8, !tbaa !10
  %190 = load i64, ptr %j, align 8, !tbaa !10
  store i64 %190, ptr %i__, align 8, !tbaa !10
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc135, %for.end123
  %191 = load i64, ptr %i__, align 8, !tbaa !10
  %192 = load i64, ptr %i__2, align 8, !tbaa !10
  %cmp128 = icmp sle i64 %191, %192
  br i1 %cmp128, label %for.body129, label %for.end137

for.body129:                                      ; preds = %for.cond127
  %193 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %194 = load i64, ptr %i__, align 8, !tbaa !10
  %195 = load i64, ptr %j, align 8, !tbaa !10
  %196 = load i64, ptr %fjac_dim1, align 8, !tbaa !10
  %mul130 = mul nsw i64 %195, %196
  %add131 = add nsw i64 %194, %mul130
  %arrayidx132 = getelementptr inbounds double, ptr %193, i64 %add131
  %197 = load double, ptr %arrayidx132, align 8, !tbaa !8
  %198 = load double, ptr %temp, align 8, !tbaa !8
  %199 = load ptr, ptr %wa4.addr, align 8, !tbaa !4
  %200 = load i64, ptr %i__, align 8, !tbaa !10
  %arrayidx134 = getelementptr inbounds double, ptr %199, i64 %200
  %201 = load double, ptr %arrayidx134, align 8, !tbaa !8
  %202 = call double @llvm.fmuladd.f64(double %197, double %198, double %201)
  store double %202, ptr %arrayidx134, align 8, !tbaa !8
  br label %for.inc135

for.inc135:                                       ; preds = %for.body129
  %203 = load i64, ptr %i__, align 8, !tbaa !10
  %inc136 = add nsw i64 %203, 1
  store i64 %inc136, ptr %i__, align 8, !tbaa !10
  br label %for.cond127, !llvm.loop !18

for.end137:                                       ; preds = %for.cond127
  br label %L120

L120:                                             ; preds = %for.end137, %if.then111
  %204 = load ptr, ptr %wa1.addr, align 8, !tbaa !4
  %205 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx138 = getelementptr inbounds double, ptr %204, i64 %205
  %206 = load double, ptr %arrayidx138, align 8, !tbaa !8
  %207 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %208 = load i64, ptr %j, align 8, !tbaa !10
  %209 = load i64, ptr %j, align 8, !tbaa !10
  %210 = load i64, ptr %fjac_dim1, align 8, !tbaa !10
  %mul139 = mul nsw i64 %209, %210
  %add140 = add nsw i64 %208, %mul139
  %arrayidx141 = getelementptr inbounds double, ptr %207, i64 %add140
  store double %206, ptr %arrayidx141, align 8, !tbaa !8
  %211 = load ptr, ptr %wa4.addr, align 8, !tbaa !4
  %212 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx142 = getelementptr inbounds double, ptr %211, i64 %212
  %213 = load double, ptr %arrayidx142, align 8, !tbaa !8
  %214 = load ptr, ptr %qtf.addr, align 8, !tbaa !4
  %215 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx143 = getelementptr inbounds double, ptr %214, i64 %215
  store double %213, ptr %arrayidx143, align 8, !tbaa !8
  br label %for.inc144

for.inc144:                                       ; preds = %L120
  %216 = load i64, ptr %j, align 8, !tbaa !10
  %inc145 = add nsw i64 %216, 1
  store i64 %inc145, ptr %j, align 8, !tbaa !10
  br label %for.cond104, !llvm.loop !19

for.end146:                                       ; preds = %for.cond104
  %217 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  store double %217, ptr %gnorm, align 8, !tbaa !8
  %218 = load double, ptr %fnorm, align 8, !tbaa !8
  %219 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp147 = fcmp oeq double %218, %219
  br i1 %cmp147, label %if.then148, label %if.end149

if.then148:                                       ; preds = %for.end146
  br label %L170

if.end149:                                        ; preds = %for.end146
  %220 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %221 = load i64, ptr %220, align 8, !tbaa !10
  store i64 %221, ptr %i__1, align 8, !tbaa !10
  store i64 1, ptr %j, align 8, !tbaa !10
  br label %for.cond150

for.cond150:                                      ; preds = %for.inc179, %if.end149
  %222 = load i64, ptr %j, align 8, !tbaa !10
  %223 = load i64, ptr %i__1, align 8, !tbaa !10
  %cmp151 = icmp sle i64 %222, %223
  br i1 %cmp151, label %for.body152, label %for.end181

for.body152:                                      ; preds = %for.cond150
  %224 = load ptr, ptr %ipvt.addr, align 8, !tbaa !4
  %225 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx153 = getelementptr inbounds i64, ptr %224, i64 %225
  %226 = load i64, ptr %arrayidx153, align 8, !tbaa !10
  store i64 %226, ptr %l, align 8, !tbaa !10
  %227 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %228 = load i64, ptr %l, align 8, !tbaa !10
  %arrayidx154 = getelementptr inbounds double, ptr %227, i64 %228
  %229 = load double, ptr %arrayidx154, align 8, !tbaa !8
  %230 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp155 = fcmp oeq double %229, %230
  br i1 %cmp155, label %if.then156, label %if.end157

if.then156:                                       ; preds = %for.body152
  br label %L150

if.end157:                                        ; preds = %for.body152
  %231 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  store double %231, ptr %sum, align 8, !tbaa !8
  %232 = load i64, ptr %j, align 8, !tbaa !10
  store i64 %232, ptr %i__2, align 8, !tbaa !10
  store i64 1, ptr %i__, align 8, !tbaa !10
  br label %for.cond158

for.cond158:                                      ; preds = %for.inc167, %if.end157
  %233 = load i64, ptr %i__, align 8, !tbaa !10
  %234 = load i64, ptr %i__2, align 8, !tbaa !10
  %cmp159 = icmp sle i64 %233, %234
  br i1 %cmp159, label %for.body160, label %for.end169

for.body160:                                      ; preds = %for.cond158
  %235 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %236 = load i64, ptr %i__, align 8, !tbaa !10
  %237 = load i64, ptr %j, align 8, !tbaa !10
  %238 = load i64, ptr %fjac_dim1, align 8, !tbaa !10
  %mul161 = mul nsw i64 %237, %238
  %add162 = add nsw i64 %236, %mul161
  %arrayidx163 = getelementptr inbounds double, ptr %235, i64 %add162
  %239 = load double, ptr %arrayidx163, align 8, !tbaa !8
  %240 = load ptr, ptr %qtf.addr, align 8, !tbaa !4
  %241 = load i64, ptr %i__, align 8, !tbaa !10
  %arrayidx164 = getelementptr inbounds double, ptr %240, i64 %241
  %242 = load double, ptr %arrayidx164, align 8, !tbaa !8
  %243 = load double, ptr %fnorm, align 8, !tbaa !8
  %div165 = fdiv double %242, %243
  %244 = load double, ptr %sum, align 8, !tbaa !8
  %245 = call double @llvm.fmuladd.f64(double %239, double %div165, double %244)
  store double %245, ptr %sum, align 8, !tbaa !8
  br label %for.inc167

for.inc167:                                       ; preds = %for.body160
  %246 = load i64, ptr %i__, align 8, !tbaa !10
  %inc168 = add nsw i64 %246, 1
  store i64 %inc168, ptr %i__, align 8, !tbaa !10
  br label %for.cond158, !llvm.loop !20

for.end169:                                       ; preds = %for.cond158
  %247 = load double, ptr %gnorm, align 8, !tbaa !8
  store double %247, ptr %d__2, align 8, !tbaa !8
  %248 = load double, ptr %sum, align 8, !tbaa !8
  %249 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %250 = load i64, ptr %l, align 8, !tbaa !10
  %arrayidx170 = getelementptr inbounds double, ptr %249, i64 %250
  %251 = load double, ptr %arrayidx170, align 8, !tbaa !8
  %div171 = fdiv double %248, %251
  store double %div171, ptr %d__1, align 8, !tbaa !8
  %252 = load double, ptr %d__1, align 8, !tbaa !8
  %cmp172 = fcmp oge double %252, 0.000000e+00
  br i1 %cmp172, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end169
  %253 = load double, ptr %d__1, align 8, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %for.end169
  %254 = load double, ptr %d__1, align 8, !tbaa !8
  %fneg173 = fneg double %254
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %253, %cond.true ], [ %fneg173, %cond.false ]
  store double %cond, ptr %d__3, align 8, !tbaa !8
  %255 = load double, ptr %d__2, align 8, !tbaa !8
  %256 = load double, ptr %d__3, align 8, !tbaa !8
  %cmp174 = fcmp oge double %255, %256
  br i1 %cmp174, label %cond.true175, label %cond.false176

cond.true175:                                     ; preds = %cond.end
  %257 = load double, ptr %d__2, align 8, !tbaa !8
  br label %cond.end177

cond.false176:                                    ; preds = %cond.end
  %258 = load double, ptr %d__3, align 8, !tbaa !8
  br label %cond.end177

cond.end177:                                      ; preds = %cond.false176, %cond.true175
  %cond178 = phi double [ %257, %cond.true175 ], [ %258, %cond.false176 ]
  store double %cond178, ptr %gnorm, align 8, !tbaa !8
  br label %L150

L150:                                             ; preds = %cond.end177, %if.then156
  br label %for.inc179

for.inc179:                                       ; preds = %L150
  %259 = load i64, ptr %j, align 8, !tbaa !10
  %inc180 = add nsw i64 %259, 1
  store i64 %inc180, ptr %j, align 8, !tbaa !10
  br label %for.cond150, !llvm.loop !21

for.end181:                                       ; preds = %for.cond150
  br label %L170

L170:                                             ; preds = %for.end181, %if.then148
  %260 = load double, ptr %gnorm, align 8, !tbaa !8
  %261 = load ptr, ptr %gtol.addr, align 8, !tbaa !4
  %262 = load double, ptr %261, align 8, !tbaa !8
  %cmp182 = fcmp ole double %260, %262
  br i1 %cmp182, label %if.then183, label %if.end184

if.then183:                                       ; preds = %L170
  %263 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 4, ptr %263, align 8, !tbaa !10
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %L170
  %264 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %265 = load i64, ptr %264, align 8, !tbaa !10
  %cmp185 = icmp ne i64 %265, 0
  br i1 %cmp185, label %if.then186, label %if.end187

if.then186:                                       ; preds = %if.end184
  br label %L300

if.end187:                                        ; preds = %if.end184
  %266 = load ptr, ptr %mode.addr, align 8, !tbaa !4
  %267 = load i64, ptr %266, align 8, !tbaa !10
  %cmp188 = icmp eq i64 %267, 2
  br i1 %cmp188, label %if.then189, label %if.end190

if.then189:                                       ; preds = %if.end187
  br label %L190

if.end190:                                        ; preds = %if.end187
  %268 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %269 = load i64, ptr %268, align 8, !tbaa !10
  store i64 %269, ptr %i__1, align 8, !tbaa !10
  store i64 1, ptr %j, align 8, !tbaa !10
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc202, %if.end190
  %270 = load i64, ptr %j, align 8, !tbaa !10
  %271 = load i64, ptr %i__1, align 8, !tbaa !10
  %cmp192 = icmp sle i64 %270, %271
  br i1 %cmp192, label %for.body193, label %for.end204

for.body193:                                      ; preds = %for.cond191
  %272 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %273 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx194 = getelementptr inbounds double, ptr %272, i64 %273
  %274 = load double, ptr %arrayidx194, align 8, !tbaa !8
  store double %274, ptr %d__1, align 8, !tbaa !8
  %275 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %276 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx195 = getelementptr inbounds double, ptr %275, i64 %276
  %277 = load double, ptr %arrayidx195, align 8, !tbaa !8
  store double %277, ptr %d__2, align 8, !tbaa !8
  %278 = load double, ptr %d__1, align 8, !tbaa !8
  %279 = load double, ptr %d__2, align 8, !tbaa !8
  %cmp196 = fcmp oge double %278, %279
  br i1 %cmp196, label %cond.true197, label %cond.false198

cond.true197:                                     ; preds = %for.body193
  %280 = load double, ptr %d__1, align 8, !tbaa !8
  br label %cond.end199

cond.false198:                                    ; preds = %for.body193
  %281 = load double, ptr %d__2, align 8, !tbaa !8
  br label %cond.end199

cond.end199:                                      ; preds = %cond.false198, %cond.true197
  %cond200 = phi double [ %280, %cond.true197 ], [ %281, %cond.false198 ]
  %282 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %283 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx201 = getelementptr inbounds double, ptr %282, i64 %283
  store double %cond200, ptr %arrayidx201, align 8, !tbaa !8
  br label %for.inc202

for.inc202:                                       ; preds = %cond.end199
  %284 = load i64, ptr %j, align 8, !tbaa !10
  %inc203 = add nsw i64 %284, 1
  store i64 %inc203, ptr %j, align 8, !tbaa !10
  br label %for.cond191, !llvm.loop !22

for.end204:                                       ; preds = %for.cond191
  br label %L190

L190:                                             ; preds = %for.end204, %if.then189
  br label %L200

L200:                                             ; preds = %if.then416, %L190
  %285 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %286 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %287 = load i64, ptr %fjac_offset, align 8, !tbaa !10
  %arrayidx205 = getelementptr inbounds double, ptr %286, i64 %287
  %288 = load ptr, ptr %ldfjac.addr, align 8, !tbaa !4
  %289 = load ptr, ptr %ipvt.addr, align 8, !tbaa !4
  %arrayidx206 = getelementptr inbounds i64, ptr %289, i64 1
  %290 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %arrayidx207 = getelementptr inbounds double, ptr %290, i64 1
  %291 = load ptr, ptr %qtf.addr, align 8, !tbaa !4
  %arrayidx208 = getelementptr inbounds double, ptr %291, i64 1
  %292 = load ptr, ptr %wa1.addr, align 8, !tbaa !4
  %arrayidx209 = getelementptr inbounds double, ptr %292, i64 1
  %293 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %arrayidx210 = getelementptr inbounds double, ptr %293, i64 1
  %294 = load ptr, ptr %wa3.addr, align 8, !tbaa !4
  %arrayidx211 = getelementptr inbounds double, ptr %294, i64 1
  %295 = load ptr, ptr %wa4.addr, align 8, !tbaa !4
  %arrayidx212 = getelementptr inbounds double, ptr %295, i64 1
  %call213 = call i32 @v3p_netlib_lmpar_(ptr noundef %285, ptr noundef %arrayidx205, ptr noundef %288, ptr noundef %arrayidx206, ptr noundef %arrayidx207, ptr noundef %arrayidx208, ptr noundef %delta, ptr noundef %par, ptr noundef %arrayidx209, ptr noundef %arrayidx210, ptr noundef %arrayidx211, ptr noundef %arrayidx212)
  %296 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %297 = load i64, ptr %296, align 8, !tbaa !10
  store i64 %297, ptr %i__1, align 8, !tbaa !10
  store i64 1, ptr %j, align 8, !tbaa !10
  br label %for.cond214

for.cond214:                                      ; preds = %for.inc228, %L200
  %298 = load i64, ptr %j, align 8, !tbaa !10
  %299 = load i64, ptr %i__1, align 8, !tbaa !10
  %cmp215 = icmp sle i64 %298, %299
  br i1 %cmp215, label %for.body216, label %for.end230

for.body216:                                      ; preds = %for.cond214
  %300 = load ptr, ptr %wa1.addr, align 8, !tbaa !4
  %301 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx217 = getelementptr inbounds double, ptr %300, i64 %301
  %302 = load double, ptr %arrayidx217, align 8, !tbaa !8
  %fneg218 = fneg double %302
  %303 = load ptr, ptr %wa1.addr, align 8, !tbaa !4
  %304 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx219 = getelementptr inbounds double, ptr %303, i64 %304
  store double %fneg218, ptr %arrayidx219, align 8, !tbaa !8
  %305 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %306 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx220 = getelementptr inbounds double, ptr %305, i64 %306
  %307 = load double, ptr %arrayidx220, align 8, !tbaa !8
  %308 = load ptr, ptr %wa1.addr, align 8, !tbaa !4
  %309 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx221 = getelementptr inbounds double, ptr %308, i64 %309
  %310 = load double, ptr %arrayidx221, align 8, !tbaa !8
  %add222 = fadd double %307, %310
  %311 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %312 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx223 = getelementptr inbounds double, ptr %311, i64 %312
  store double %add222, ptr %arrayidx223, align 8, !tbaa !8
  %313 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %314 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx224 = getelementptr inbounds double, ptr %313, i64 %314
  %315 = load double, ptr %arrayidx224, align 8, !tbaa !8
  %316 = load ptr, ptr %wa1.addr, align 8, !tbaa !4
  %317 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx225 = getelementptr inbounds double, ptr %316, i64 %317
  %318 = load double, ptr %arrayidx225, align 8, !tbaa !8
  %mul226 = fmul double %315, %318
  %319 = load ptr, ptr %wa3.addr, align 8, !tbaa !4
  %320 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx227 = getelementptr inbounds double, ptr %319, i64 %320
  store double %mul226, ptr %arrayidx227, align 8, !tbaa !8
  br label %for.inc228

for.inc228:                                       ; preds = %for.body216
  %321 = load i64, ptr %j, align 8, !tbaa !10
  %inc229 = add nsw i64 %321, 1
  store i64 %inc229, ptr %j, align 8, !tbaa !10
  br label %for.cond214, !llvm.loop !23

for.end230:                                       ; preds = %for.cond214
  %322 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %323 = load ptr, ptr %wa3.addr, align 8, !tbaa !4
  %arrayidx231 = getelementptr inbounds double, ptr %323, i64 1
  %call232 = call double @v3p_netlib_enorm_(ptr noundef %322, ptr noundef %arrayidx231)
  store double %call232, ptr %pnorm, align 8, !tbaa !8
  %324 = load i64, ptr %iter, align 8, !tbaa !10
  %cmp233 = icmp eq i64 %324, 1
  br i1 %cmp233, label %if.then234, label %if.end240

if.then234:                                       ; preds = %for.end230
  %325 = load double, ptr %delta, align 8, !tbaa !8
  %326 = load double, ptr %pnorm, align 8, !tbaa !8
  %cmp235 = fcmp ole double %325, %326
  br i1 %cmp235, label %cond.true236, label %cond.false237

cond.true236:                                     ; preds = %if.then234
  %327 = load double, ptr %delta, align 8, !tbaa !8
  br label %cond.end238

cond.false237:                                    ; preds = %if.then234
  %328 = load double, ptr %pnorm, align 8, !tbaa !8
  br label %cond.end238

cond.end238:                                      ; preds = %cond.false237, %cond.true236
  %cond239 = phi double [ %327, %cond.true236 ], [ %328, %cond.false237 ]
  store double %cond239, ptr %delta, align 8, !tbaa !8
  br label %if.end240

if.end240:                                        ; preds = %cond.end238, %for.end230
  store i64 1, ptr %iflag, align 8, !tbaa !10
  %329 = load ptr, ptr %fcn.addr, align 8, !tbaa !4
  %330 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %331 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %332 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %arrayidx241 = getelementptr inbounds double, ptr %332, i64 1
  %333 = load ptr, ptr %wa4.addr, align 8, !tbaa !4
  %arrayidx242 = getelementptr inbounds double, ptr %333, i64 1
  %334 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %335 = load i64, ptr %fjac_offset, align 8, !tbaa !10
  %arrayidx243 = getelementptr inbounds double, ptr %334, i64 %335
  %336 = load ptr, ptr %ldfjac.addr, align 8, !tbaa !4
  %337 = load ptr, ptr %userdata.addr, align 8, !tbaa !4
  call void %329(ptr noundef %330, ptr noundef %331, ptr noundef %arrayidx241, ptr noundef %arrayidx242, ptr noundef %arrayidx243, ptr noundef %336, ptr noundef %iflag, ptr noundef %337)
  %338 = load ptr, ptr %nfev.addr, align 8, !tbaa !4
  %339 = load i64, ptr %338, align 8, !tbaa !10
  %inc244 = add nsw i64 %339, 1
  store i64 %inc244, ptr %338, align 8, !tbaa !10
  %340 = load i64, ptr %iflag, align 8, !tbaa !10
  %cmp245 = icmp slt i64 %340, 0
  br i1 %cmp245, label %if.then246, label %if.end247

if.then246:                                       ; preds = %if.end240
  br label %L300

if.end247:                                        ; preds = %if.end240
  %341 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %342 = load ptr, ptr %wa4.addr, align 8, !tbaa !4
  %arrayidx248 = getelementptr inbounds double, ptr %342, i64 1
  %call249 = call double @v3p_netlib_enorm_(ptr noundef %341, ptr noundef %arrayidx248)
  store double %call249, ptr %fnorm1, align 8, !tbaa !8
  %343 = load double, ptr @v3p_netlib_lmder_.one, align 8, !tbaa !8
  %fneg250 = fneg double %343
  store double %fneg250, ptr %actred, align 8, !tbaa !8
  %344 = load double, ptr @v3p_netlib_lmder_.p1, align 8, !tbaa !8
  %345 = load double, ptr %fnorm1, align 8, !tbaa !8
  %mul251 = fmul double %344, %345
  %346 = load double, ptr %fnorm, align 8, !tbaa !8
  %cmp252 = fcmp olt double %mul251, %346
  br i1 %cmp252, label %if.then253, label %if.end256

if.then253:                                       ; preds = %if.end247
  %347 = load double, ptr %fnorm1, align 8, !tbaa !8
  %348 = load double, ptr %fnorm, align 8, !tbaa !8
  %div254 = fdiv double %347, %348
  store double %div254, ptr %d__1, align 8, !tbaa !8
  %349 = load double, ptr @v3p_netlib_lmder_.one, align 8, !tbaa !8
  %350 = load double, ptr %d__1, align 8, !tbaa !8
  %351 = load double, ptr %d__1, align 8, !tbaa !8
  %neg = fneg double %350
  %352 = call double @llvm.fmuladd.f64(double %neg, double %351, double %349)
  store double %352, ptr %actred, align 8, !tbaa !8
  br label %if.end256

if.end256:                                        ; preds = %if.then253, %if.end247
  %353 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %354 = load i64, ptr %353, align 8, !tbaa !10
  store i64 %354, ptr %i__1, align 8, !tbaa !10
  store i64 1, ptr %j, align 8, !tbaa !10
  br label %for.cond257

for.cond257:                                      ; preds = %for.inc274, %if.end256
  %355 = load i64, ptr %j, align 8, !tbaa !10
  %356 = load i64, ptr %i__1, align 8, !tbaa !10
  %cmp258 = icmp sle i64 %355, %356
  br i1 %cmp258, label %for.body259, label %for.end276

for.body259:                                      ; preds = %for.cond257
  %357 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %358 = load ptr, ptr %wa3.addr, align 8, !tbaa !4
  %359 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx260 = getelementptr inbounds double, ptr %358, i64 %359
  store double %357, ptr %arrayidx260, align 8, !tbaa !8
  %360 = load ptr, ptr %ipvt.addr, align 8, !tbaa !4
  %361 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx261 = getelementptr inbounds i64, ptr %360, i64 %361
  %362 = load i64, ptr %arrayidx261, align 8, !tbaa !10
  store i64 %362, ptr %l, align 8, !tbaa !10
  %363 = load ptr, ptr %wa1.addr, align 8, !tbaa !4
  %364 = load i64, ptr %l, align 8, !tbaa !10
  %arrayidx262 = getelementptr inbounds double, ptr %363, i64 %364
  %365 = load double, ptr %arrayidx262, align 8, !tbaa !8
  store double %365, ptr %temp, align 8, !tbaa !8
  %366 = load i64, ptr %j, align 8, !tbaa !10
  store i64 %366, ptr %i__2, align 8, !tbaa !10
  store i64 1, ptr %i__, align 8, !tbaa !10
  br label %for.cond263

for.cond263:                                      ; preds = %for.inc271, %for.body259
  %367 = load i64, ptr %i__, align 8, !tbaa !10
  %368 = load i64, ptr %i__2, align 8, !tbaa !10
  %cmp264 = icmp sle i64 %367, %368
  br i1 %cmp264, label %for.body265, label %for.end273

for.body265:                                      ; preds = %for.cond263
  %369 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %370 = load i64, ptr %i__, align 8, !tbaa !10
  %371 = load i64, ptr %j, align 8, !tbaa !10
  %372 = load i64, ptr %fjac_dim1, align 8, !tbaa !10
  %mul266 = mul nsw i64 %371, %372
  %add267 = add nsw i64 %370, %mul266
  %arrayidx268 = getelementptr inbounds double, ptr %369, i64 %add267
  %373 = load double, ptr %arrayidx268, align 8, !tbaa !8
  %374 = load double, ptr %temp, align 8, !tbaa !8
  %375 = load ptr, ptr %wa3.addr, align 8, !tbaa !4
  %376 = load i64, ptr %i__, align 8, !tbaa !10
  %arrayidx270 = getelementptr inbounds double, ptr %375, i64 %376
  %377 = load double, ptr %arrayidx270, align 8, !tbaa !8
  %378 = call double @llvm.fmuladd.f64(double %373, double %374, double %377)
  store double %378, ptr %arrayidx270, align 8, !tbaa !8
  br label %for.inc271

for.inc271:                                       ; preds = %for.body265
  %379 = load i64, ptr %i__, align 8, !tbaa !10
  %inc272 = add nsw i64 %379, 1
  store i64 %inc272, ptr %i__, align 8, !tbaa !10
  br label %for.cond263, !llvm.loop !24

for.end273:                                       ; preds = %for.cond263
  br label %for.inc274

for.inc274:                                       ; preds = %for.end273
  %380 = load i64, ptr %j, align 8, !tbaa !10
  %inc275 = add nsw i64 %380, 1
  store i64 %inc275, ptr %j, align 8, !tbaa !10
  br label %for.cond257, !llvm.loop !25

for.end276:                                       ; preds = %for.cond257
  %381 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %382 = load ptr, ptr %wa3.addr, align 8, !tbaa !4
  %arrayidx277 = getelementptr inbounds double, ptr %382, i64 1
  %call278 = call double @v3p_netlib_enorm_(ptr noundef %381, ptr noundef %arrayidx277)
  %383 = load double, ptr %fnorm, align 8, !tbaa !8
  %div279 = fdiv double %call278, %383
  store double %div279, ptr %temp1, align 8, !tbaa !8
  %384 = load double, ptr %par, align 8, !tbaa !8
  %call280 = call double @sqrt(double noundef %384) #5
  %385 = load double, ptr %pnorm, align 8, !tbaa !8
  %mul281 = fmul double %call280, %385
  %386 = load double, ptr %fnorm, align 8, !tbaa !8
  %div282 = fdiv double %mul281, %386
  store double %div282, ptr %temp2, align 8, !tbaa !8
  %387 = load double, ptr %temp1, align 8, !tbaa !8
  store double %387, ptr %d__1, align 8, !tbaa !8
  %388 = load double, ptr %temp2, align 8, !tbaa !8
  store double %388, ptr %d__2, align 8, !tbaa !8
  %389 = load double, ptr %d__1, align 8, !tbaa !8
  %390 = load double, ptr %d__1, align 8, !tbaa !8
  %391 = load double, ptr %d__2, align 8, !tbaa !8
  %392 = load double, ptr %d__2, align 8, !tbaa !8
  %mul284 = fmul double %391, %392
  %393 = load double, ptr @v3p_netlib_lmder_.p5, align 8, !tbaa !8
  %div285 = fdiv double %mul284, %393
  %394 = call double @llvm.fmuladd.f64(double %389, double %390, double %div285)
  store double %394, ptr %prered, align 8, !tbaa !8
  %395 = load double, ptr %temp1, align 8, !tbaa !8
  store double %395, ptr %d__1, align 8, !tbaa !8
  %396 = load double, ptr %temp2, align 8, !tbaa !8
  store double %396, ptr %d__2, align 8, !tbaa !8
  %397 = load double, ptr %d__1, align 8, !tbaa !8
  %398 = load double, ptr %d__1, align 8, !tbaa !8
  %399 = load double, ptr %d__2, align 8, !tbaa !8
  %400 = load double, ptr %d__2, align 8, !tbaa !8
  %mul287 = fmul double %399, %400
  %401 = call double @llvm.fmuladd.f64(double %397, double %398, double %mul287)
  %fneg288 = fneg double %401
  store double %fneg288, ptr %dirder, align 8, !tbaa !8
  %402 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  store double %402, ptr %ratio, align 8, !tbaa !8
  %403 = load double, ptr %prered, align 8, !tbaa !8
  %404 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp289 = fcmp une double %403, %404
  br i1 %cmp289, label %if.then290, label %if.end292

if.then290:                                       ; preds = %for.end276
  %405 = load double, ptr %actred, align 8, !tbaa !8
  %406 = load double, ptr %prered, align 8, !tbaa !8
  %div291 = fdiv double %405, %406
  store double %div291, ptr %ratio, align 8, !tbaa !8
  br label %if.end292

if.end292:                                        ; preds = %if.then290, %for.end276
  %407 = load double, ptr %ratio, align 8, !tbaa !8
  %408 = load double, ptr @v3p_netlib_lmder_.p25, align 8, !tbaa !8
  %cmp293 = fcmp ogt double %407, %408
  br i1 %cmp293, label %if.then294, label %if.end295

if.then294:                                       ; preds = %if.end292
  br label %L240

if.end295:                                        ; preds = %if.end292
  %409 = load double, ptr %actred, align 8, !tbaa !8
  %410 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp296 = fcmp oge double %409, %410
  br i1 %cmp296, label %if.then297, label %if.end298

if.then297:                                       ; preds = %if.end295
  %411 = load double, ptr @v3p_netlib_lmder_.p5, align 8, !tbaa !8
  store double %411, ptr %temp, align 8, !tbaa !8
  br label %if.end298

if.end298:                                        ; preds = %if.then297, %if.end295
  %412 = load double, ptr %actred, align 8, !tbaa !8
  %413 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp299 = fcmp olt double %412, %413
  br i1 %cmp299, label %if.then300, label %if.end304

if.then300:                                       ; preds = %if.end298
  %414 = load double, ptr @v3p_netlib_lmder_.p5, align 8, !tbaa !8
  %415 = load double, ptr %dirder, align 8, !tbaa !8
  %mul301 = fmul double %414, %415
  %416 = load double, ptr %dirder, align 8, !tbaa !8
  %417 = load double, ptr @v3p_netlib_lmder_.p5, align 8, !tbaa !8
  %418 = load double, ptr %actred, align 8, !tbaa !8
  %419 = call double @llvm.fmuladd.f64(double %417, double %418, double %416)
  %div303 = fdiv double %mul301, %419
  store double %div303, ptr %temp, align 8, !tbaa !8
  br label %if.end304

if.end304:                                        ; preds = %if.then300, %if.end298
  %420 = load double, ptr @v3p_netlib_lmder_.p1, align 8, !tbaa !8
  %421 = load double, ptr %fnorm1, align 8, !tbaa !8
  %mul305 = fmul double %420, %421
  %422 = load double, ptr %fnorm, align 8, !tbaa !8
  %cmp306 = fcmp oge double %mul305, %422
  br i1 %cmp306, label %if.then309, label %lor.lhs.false307

lor.lhs.false307:                                 ; preds = %if.end304
  %423 = load double, ptr %temp, align 8, !tbaa !8
  %424 = load double, ptr @v3p_netlib_lmder_.p1, align 8, !tbaa !8
  %cmp308 = fcmp olt double %423, %424
  br i1 %cmp308, label %if.then309, label %if.end310

if.then309:                                       ; preds = %lor.lhs.false307, %if.end304
  %425 = load double, ptr @v3p_netlib_lmder_.p1, align 8, !tbaa !8
  store double %425, ptr %temp, align 8, !tbaa !8
  br label %if.end310

if.end310:                                        ; preds = %if.then309, %lor.lhs.false307
  %426 = load double, ptr %delta, align 8, !tbaa !8
  store double %426, ptr %d__1, align 8, !tbaa !8
  %427 = load double, ptr %pnorm, align 8, !tbaa !8
  %428 = load double, ptr @v3p_netlib_lmder_.p1, align 8, !tbaa !8
  %div311 = fdiv double %427, %428
  store double %div311, ptr %d__2, align 8, !tbaa !8
  %429 = load double, ptr %temp, align 8, !tbaa !8
  %430 = load double, ptr %d__1, align 8, !tbaa !8
  %431 = load double, ptr %d__2, align 8, !tbaa !8
  %cmp312 = fcmp ole double %430, %431
  br i1 %cmp312, label %cond.true313, label %cond.false314

cond.true313:                                     ; preds = %if.end310
  %432 = load double, ptr %d__1, align 8, !tbaa !8
  br label %cond.end315

cond.false314:                                    ; preds = %if.end310
  %433 = load double, ptr %d__2, align 8, !tbaa !8
  br label %cond.end315

cond.end315:                                      ; preds = %cond.false314, %cond.true313
  %cond316 = phi double [ %432, %cond.true313 ], [ %433, %cond.false314 ]
  %mul317 = fmul double %429, %cond316
  store double %mul317, ptr %delta, align 8, !tbaa !8
  %434 = load double, ptr %temp, align 8, !tbaa !8
  %435 = load double, ptr %par, align 8, !tbaa !8
  %div318 = fdiv double %435, %434
  store double %div318, ptr %par, align 8, !tbaa !8
  br label %L260

L240:                                             ; preds = %if.then294
  %436 = load double, ptr %par, align 8, !tbaa !8
  %437 = load double, ptr @v3p_netlib_lmder_.zero, align 8, !tbaa !8
  %cmp319 = fcmp une double %436, %437
  br i1 %cmp319, label %land.lhs.true, label %if.end322

land.lhs.true:                                    ; preds = %L240
  %438 = load double, ptr %ratio, align 8, !tbaa !8
  %439 = load double, ptr @v3p_netlib_lmder_.p75, align 8, !tbaa !8
  %cmp320 = fcmp olt double %438, %439
  br i1 %cmp320, label %if.then321, label %if.end322

if.then321:                                       ; preds = %land.lhs.true
  br label %L250

if.end322:                                        ; preds = %land.lhs.true, %L240
  %440 = load double, ptr %pnorm, align 8, !tbaa !8
  %441 = load double, ptr @v3p_netlib_lmder_.p5, align 8, !tbaa !8
  %div323 = fdiv double %440, %441
  store double %div323, ptr %delta, align 8, !tbaa !8
  %442 = load double, ptr @v3p_netlib_lmder_.p5, align 8, !tbaa !8
  %443 = load double, ptr %par, align 8, !tbaa !8
  %mul324 = fmul double %442, %443
  store double %mul324, ptr %par, align 8, !tbaa !8
  br label %L250

L250:                                             ; preds = %if.end322, %if.then321
  br label %L260

L260:                                             ; preds = %L250, %cond.end315
  %444 = load double, ptr %ratio, align 8, !tbaa !8
  %445 = load double, ptr @v3p_netlib_lmder_.p0001, align 8, !tbaa !8
  %cmp325 = fcmp olt double %444, %445
  br i1 %cmp325, label %if.then326, label %if.end327

if.then326:                                       ; preds = %L260
  br label %L290

if.end327:                                        ; preds = %L260
  %446 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %447 = load i64, ptr %446, align 8, !tbaa !10
  store i64 %447, ptr %i__1, align 8, !tbaa !10
  store i64 1, ptr %j, align 8, !tbaa !10
  br label %for.cond328

for.cond328:                                      ; preds = %for.inc337, %if.end327
  %448 = load i64, ptr %j, align 8, !tbaa !10
  %449 = load i64, ptr %i__1, align 8, !tbaa !10
  %cmp329 = icmp sle i64 %448, %449
  br i1 %cmp329, label %for.body330, label %for.end339

for.body330:                                      ; preds = %for.cond328
  %450 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %451 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx331 = getelementptr inbounds double, ptr %450, i64 %451
  %452 = load double, ptr %arrayidx331, align 8, !tbaa !8
  %453 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %454 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx332 = getelementptr inbounds double, ptr %453, i64 %454
  store double %452, ptr %arrayidx332, align 8, !tbaa !8
  %455 = load ptr, ptr %diag.addr, align 8, !tbaa !4
  %456 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx333 = getelementptr inbounds double, ptr %455, i64 %456
  %457 = load double, ptr %arrayidx333, align 8, !tbaa !8
  %458 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %459 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx334 = getelementptr inbounds double, ptr %458, i64 %459
  %460 = load double, ptr %arrayidx334, align 8, !tbaa !8
  %mul335 = fmul double %457, %460
  %461 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %462 = load i64, ptr %j, align 8, !tbaa !10
  %arrayidx336 = getelementptr inbounds double, ptr %461, i64 %462
  store double %mul335, ptr %arrayidx336, align 8, !tbaa !8
  br label %for.inc337

for.inc337:                                       ; preds = %for.body330
  %463 = load i64, ptr %j, align 8, !tbaa !10
  %inc338 = add nsw i64 %463, 1
  store i64 %inc338, ptr %j, align 8, !tbaa !10
  br label %for.cond328, !llvm.loop !26

for.end339:                                       ; preds = %for.cond328
  %464 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %465 = load i64, ptr %464, align 8, !tbaa !10
  store i64 %465, ptr %i__1, align 8, !tbaa !10
  store i64 1, ptr %i__, align 8, !tbaa !10
  br label %for.cond340

for.cond340:                                      ; preds = %for.inc345, %for.end339
  %466 = load i64, ptr %i__, align 8, !tbaa !10
  %467 = load i64, ptr %i__1, align 8, !tbaa !10
  %cmp341 = icmp sle i64 %466, %467
  br i1 %cmp341, label %for.body342, label %for.end347

for.body342:                                      ; preds = %for.cond340
  %468 = load ptr, ptr %wa4.addr, align 8, !tbaa !4
  %469 = load i64, ptr %i__, align 8, !tbaa !10
  %arrayidx343 = getelementptr inbounds double, ptr %468, i64 %469
  %470 = load double, ptr %arrayidx343, align 8, !tbaa !8
  %471 = load ptr, ptr %fvec.addr, align 8, !tbaa !4
  %472 = load i64, ptr %i__, align 8, !tbaa !10
  %arrayidx344 = getelementptr inbounds double, ptr %471, i64 %472
  store double %470, ptr %arrayidx344, align 8, !tbaa !8
  br label %for.inc345

for.inc345:                                       ; preds = %for.body342
  %473 = load i64, ptr %i__, align 8, !tbaa !10
  %inc346 = add nsw i64 %473, 1
  store i64 %inc346, ptr %i__, align 8, !tbaa !10
  br label %for.cond340, !llvm.loop !27

for.end347:                                       ; preds = %for.cond340
  %474 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %475 = load ptr, ptr %wa2.addr, align 8, !tbaa !4
  %arrayidx348 = getelementptr inbounds double, ptr %475, i64 1
  %call349 = call double @v3p_netlib_enorm_(ptr noundef %474, ptr noundef %arrayidx348)
  store double %call349, ptr %xnorm, align 8, !tbaa !8
  %476 = load double, ptr %fnorm1, align 8, !tbaa !8
  store double %476, ptr %fnorm, align 8, !tbaa !8
  %477 = load i64, ptr %iter, align 8, !tbaa !10
  %inc350 = add nsw i64 %477, 1
  store i64 %inc350, ptr %iter, align 8, !tbaa !10
  br label %L290

L290:                                             ; preds = %for.end347, %if.then326
  %478 = load double, ptr %actred, align 8, !tbaa !8
  %cmp351 = fcmp oge double %478, 0.000000e+00
  br i1 %cmp351, label %cond.true352, label %cond.false353

cond.true352:                                     ; preds = %L290
  %479 = load double, ptr %actred, align 8, !tbaa !8
  br label %cond.end355

cond.false353:                                    ; preds = %L290
  %480 = load double, ptr %actred, align 8, !tbaa !8
  %fneg354 = fneg double %480
  br label %cond.end355

cond.end355:                                      ; preds = %cond.false353, %cond.true352
  %cond356 = phi double [ %479, %cond.true352 ], [ %fneg354, %cond.false353 ]
  %481 = load ptr, ptr %ftol.addr, align 8, !tbaa !4
  %482 = load double, ptr %481, align 8, !tbaa !8
  %cmp357 = fcmp ole double %cond356, %482
  br i1 %cmp357, label %land.lhs.true358, label %if.end364

land.lhs.true358:                                 ; preds = %cond.end355
  %483 = load double, ptr %prered, align 8, !tbaa !8
  %484 = load ptr, ptr %ftol.addr, align 8, !tbaa !4
  %485 = load double, ptr %484, align 8, !tbaa !8
  %cmp359 = fcmp ole double %483, %485
  br i1 %cmp359, label %land.lhs.true360, label %if.end364

land.lhs.true360:                                 ; preds = %land.lhs.true358
  %486 = load double, ptr @v3p_netlib_lmder_.p5, align 8, !tbaa !8
  %487 = load double, ptr %ratio, align 8, !tbaa !8
  %mul361 = fmul double %486, %487
  %488 = load double, ptr @v3p_netlib_lmder_.one, align 8, !tbaa !8
  %cmp362 = fcmp ole double %mul361, %488
  br i1 %cmp362, label %if.then363, label %if.end364

if.then363:                                       ; preds = %land.lhs.true360
  %489 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 1, ptr %489, align 8, !tbaa !10
  br label %if.end364

if.end364:                                        ; preds = %if.then363, %land.lhs.true360, %land.lhs.true358, %cond.end355
  %490 = load double, ptr %delta, align 8, !tbaa !8
  %491 = load ptr, ptr %xtol.addr, align 8, !tbaa !4
  %492 = load double, ptr %491, align 8, !tbaa !8
  %493 = load double, ptr %xnorm, align 8, !tbaa !8
  %mul365 = fmul double %492, %493
  %cmp366 = fcmp ole double %490, %mul365
  br i1 %cmp366, label %if.then367, label %if.end368

if.then367:                                       ; preds = %if.end364
  %494 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 2, ptr %494, align 8, !tbaa !10
  br label %if.end368

if.end368:                                        ; preds = %if.then367, %if.end364
  %495 = load double, ptr %actred, align 8, !tbaa !8
  %cmp369 = fcmp oge double %495, 0.000000e+00
  br i1 %cmp369, label %cond.true370, label %cond.false371

cond.true370:                                     ; preds = %if.end368
  %496 = load double, ptr %actred, align 8, !tbaa !8
  br label %cond.end373

cond.false371:                                    ; preds = %if.end368
  %497 = load double, ptr %actred, align 8, !tbaa !8
  %fneg372 = fneg double %497
  br label %cond.end373

cond.end373:                                      ; preds = %cond.false371, %cond.true370
  %cond374 = phi double [ %496, %cond.true370 ], [ %fneg372, %cond.false371 ]
  %498 = load ptr, ptr %ftol.addr, align 8, !tbaa !4
  %499 = load double, ptr %498, align 8, !tbaa !8
  %cmp375 = fcmp ole double %cond374, %499
  br i1 %cmp375, label %land.lhs.true376, label %if.end384

land.lhs.true376:                                 ; preds = %cond.end373
  %500 = load double, ptr %prered, align 8, !tbaa !8
  %501 = load ptr, ptr %ftol.addr, align 8, !tbaa !4
  %502 = load double, ptr %501, align 8, !tbaa !8
  %cmp377 = fcmp ole double %500, %502
  br i1 %cmp377, label %land.lhs.true378, label %if.end384

land.lhs.true378:                                 ; preds = %land.lhs.true376
  %503 = load double, ptr @v3p_netlib_lmder_.p5, align 8, !tbaa !8
  %504 = load double, ptr %ratio, align 8, !tbaa !8
  %mul379 = fmul double %503, %504
  %505 = load double, ptr @v3p_netlib_lmder_.one, align 8, !tbaa !8
  %cmp380 = fcmp ole double %mul379, %505
  br i1 %cmp380, label %land.lhs.true381, label %if.end384

land.lhs.true381:                                 ; preds = %land.lhs.true378
  %506 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %507 = load i64, ptr %506, align 8, !tbaa !10
  %cmp382 = icmp eq i64 %507, 2
  br i1 %cmp382, label %if.then383, label %if.end384

if.then383:                                       ; preds = %land.lhs.true381
  %508 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 3, ptr %508, align 8, !tbaa !10
  br label %if.end384

if.end384:                                        ; preds = %if.then383, %land.lhs.true381, %land.lhs.true378, %land.lhs.true376, %cond.end373
  %509 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %510 = load i64, ptr %509, align 8, !tbaa !10
  %cmp385 = icmp ne i64 %510, 0
  br i1 %cmp385, label %if.then386, label %if.end387

if.then386:                                       ; preds = %if.end384
  br label %L300

if.end387:                                        ; preds = %if.end384
  %511 = load ptr, ptr %nfev.addr, align 8, !tbaa !4
  %512 = load i64, ptr %511, align 8, !tbaa !10
  %513 = load ptr, ptr %maxfev.addr, align 8, !tbaa !4
  %514 = load i64, ptr %513, align 8, !tbaa !10
  %cmp388 = icmp sge i64 %512, %514
  br i1 %cmp388, label %if.then389, label %if.end390

if.then389:                                       ; preds = %if.end387
  %515 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 5, ptr %515, align 8, !tbaa !10
  br label %if.end390

if.end390:                                        ; preds = %if.then389, %if.end387
  %516 = load double, ptr %actred, align 8, !tbaa !8
  %cmp391 = fcmp oge double %516, 0.000000e+00
  br i1 %cmp391, label %cond.true392, label %cond.false393

cond.true392:                                     ; preds = %if.end390
  %517 = load double, ptr %actred, align 8, !tbaa !8
  br label %cond.end395

cond.false393:                                    ; preds = %if.end390
  %518 = load double, ptr %actred, align 8, !tbaa !8
  %fneg394 = fneg double %518
  br label %cond.end395

cond.end395:                                      ; preds = %cond.false393, %cond.true392
  %cond396 = phi double [ %517, %cond.true392 ], [ %fneg394, %cond.false393 ]
  %519 = load double, ptr %epsmch, align 8, !tbaa !8
  %cmp397 = fcmp ole double %cond396, %519
  br i1 %cmp397, label %land.lhs.true398, label %if.end404

land.lhs.true398:                                 ; preds = %cond.end395
  %520 = load double, ptr %prered, align 8, !tbaa !8
  %521 = load double, ptr %epsmch, align 8, !tbaa !8
  %cmp399 = fcmp ole double %520, %521
  br i1 %cmp399, label %land.lhs.true400, label %if.end404

land.lhs.true400:                                 ; preds = %land.lhs.true398
  %522 = load double, ptr @v3p_netlib_lmder_.p5, align 8, !tbaa !8
  %523 = load double, ptr %ratio, align 8, !tbaa !8
  %mul401 = fmul double %522, %523
  %524 = load double, ptr @v3p_netlib_lmder_.one, align 8, !tbaa !8
  %cmp402 = fcmp ole double %mul401, %524
  br i1 %cmp402, label %if.then403, label %if.end404

if.then403:                                       ; preds = %land.lhs.true400
  %525 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 6, ptr %525, align 8, !tbaa !10
  br label %if.end404

if.end404:                                        ; preds = %if.then403, %land.lhs.true400, %land.lhs.true398, %cond.end395
  %526 = load double, ptr %delta, align 8, !tbaa !8
  %527 = load double, ptr %epsmch, align 8, !tbaa !8
  %528 = load double, ptr %xnorm, align 8, !tbaa !8
  %mul405 = fmul double %527, %528
  %cmp406 = fcmp ole double %526, %mul405
  br i1 %cmp406, label %if.then407, label %if.end408

if.then407:                                       ; preds = %if.end404
  %529 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 7, ptr %529, align 8, !tbaa !10
  br label %if.end408

if.end408:                                        ; preds = %if.then407, %if.end404
  %530 = load double, ptr %gnorm, align 8, !tbaa !8
  %531 = load double, ptr %epsmch, align 8, !tbaa !8
  %cmp409 = fcmp ole double %530, %531
  br i1 %cmp409, label %if.then410, label %if.end411

if.then410:                                       ; preds = %if.end408
  %532 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 8, ptr %532, align 8, !tbaa !10
  br label %if.end411

if.end411:                                        ; preds = %if.then410, %if.end408
  %533 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %534 = load i64, ptr %533, align 8, !tbaa !10
  %cmp412 = icmp ne i64 %534, 0
  br i1 %cmp412, label %if.then413, label %if.end414

if.then413:                                       ; preds = %if.end411
  br label %L300

if.end414:                                        ; preds = %if.end411
  %535 = load double, ptr %ratio, align 8, !tbaa !8
  %536 = load double, ptr @v3p_netlib_lmder_.p0001, align 8, !tbaa !8
  %cmp415 = fcmp olt double %535, %536
  br i1 %cmp415, label %if.then416, label %if.end417

if.then416:                                       ; preds = %if.end414
  br label %L200

if.end417:                                        ; preds = %if.end414
  br label %L30

L300:                                             ; preds = %if.then413, %if.then386, %if.then246, %if.then186, %if.then54, %if.then42, %if.then33, %if.then27, %if.then
  %537 = load i64, ptr %iflag, align 8, !tbaa !10
  %cmp418 = icmp slt i64 %537, 0
  br i1 %cmp418, label %if.then419, label %if.end420

if.then419:                                       ; preds = %L300
  %538 = load i64, ptr %iflag, align 8, !tbaa !10
  %539 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i64 %538, ptr %539, align 8, !tbaa !10
  br label %if.end420

if.end420:                                        ; preds = %if.then419, %L300
  store i64 0, ptr %iflag, align 8, !tbaa !10
  %540 = load ptr, ptr %nprint.addr, align 8, !tbaa !4
  %541 = load i64, ptr %540, align 8, !tbaa !10
  %cmp421 = icmp sgt i64 %541, 0
  br i1 %cmp421, label %if.then422, label %if.end426

if.then422:                                       ; preds = %if.end420
  %542 = load ptr, ptr %fcn.addr, align 8, !tbaa !4
  %543 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %544 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %545 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %arrayidx423 = getelementptr inbounds double, ptr %545, i64 1
  %546 = load ptr, ptr %fvec.addr, align 8, !tbaa !4
  %arrayidx424 = getelementptr inbounds double, ptr %546, i64 1
  %547 = load ptr, ptr %fjac.addr, align 8, !tbaa !4
  %548 = load i64, ptr %fjac_offset, align 8, !tbaa !10
  %arrayidx425 = getelementptr inbounds double, ptr %547, i64 %548
  %549 = load ptr, ptr %ldfjac.addr, align 8, !tbaa !4
  %550 = load ptr, ptr %userdata.addr, align 8, !tbaa !4
  call void %542(ptr noundef %543, ptr noundef %544, ptr noundef %arrayidx423, ptr noundef %arrayidx424, ptr noundef %arrayidx425, ptr noundef %549, ptr noundef %iflag, ptr noundef %550)
  br label %if.end426

if.end426:                                        ; preds = %if.then422, %if.end420
  call void @llvm.lifetime.end.p0(i64 8, ptr %prered) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %epsmch) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %dirder) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %actred) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnorm1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %xnorm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnorm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %gnorm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnorm) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ratio) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %iflag) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %iter) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %par) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %i__1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %fjac_offset) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %fjac_dim1) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare double @v3p_netlib_dpmpar_(ptr noundef) #2

declare double @v3p_netlib_enorm_(ptr noundef, ptr noundef) #2

declare i32 @v3p_netlib_qrfac_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @v3p_netlib_lmpar_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="corei7" "target-features"="+cmov,+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
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
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}

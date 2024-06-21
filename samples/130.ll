; ModuleID = 'samples/130.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/base/flamec/blis/util/bl1_invert2s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scomplex = type { float, float }
%struct.dcomplex = type { double, double }

; Function Attrs: nounwind uwtable
define void @bl1_sinvert2s(i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta) #0 {
entry:
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %one = alloca float, align 4
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %one) #4
  store float 1.000000e+00, ptr %one, align 4, !tbaa !9
  %0 = load float, ptr %one, align 4, !tbaa !9
  %1 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %2 = load float, ptr %1, align 4, !tbaa !9
  %div = fdiv float %0, %2
  %3 = load ptr, ptr %beta.addr, align 8, !tbaa !7
  store float %div, ptr %3, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 4, ptr %one) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @bl1_dinvert2s(i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta) #0 {
entry:
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %one = alloca double, align 8
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %one) #4
  store double 1.000000e+00, ptr %one, align 8, !tbaa !11
  %0 = load double, ptr %one, align 8, !tbaa !11
  %1 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %2 = load double, ptr %1, align 8, !tbaa !11
  %div = fdiv double %0, %2
  %3 = load ptr, ptr %beta.addr, align 8, !tbaa !7
  store double %div, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %one) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @bl1_cinvert2s(i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta) #0 {
entry:
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %temp = alloca float, align 4
  %s = alloca float, align 4
  %xr_s = alloca float, align 4
  %xi_s = alloca float, align 4
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %xr_s) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %xi_s) #4
  %0 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real = getelementptr inbounds %struct.scomplex, ptr %0, i32 0, i32 0
  %1 = load float, ptr %real, align 4, !tbaa !13
  %conv = fpext float %1 to double
  %cmp = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real2 = getelementptr inbounds %struct.scomplex, ptr %2, i32 0, i32 0
  %3 = load float, ptr %real2, align 4, !tbaa !13
  %fneg = fneg float %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real3 = getelementptr inbounds %struct.scomplex, ptr %4, i32 0, i32 0
  %5 = load float, ptr %real3, align 4, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %fneg, %cond.true ], [ %5, %cond.false ]
  %6 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag = getelementptr inbounds %struct.scomplex, ptr %6, i32 0, i32 1
  %7 = load float, ptr %imag, align 4, !tbaa !15
  %conv4 = fpext float %7 to double
  %cmp5 = fcmp ole double %conv4, 0.000000e+00
  br i1 %cmp5, label %cond.true7, label %cond.false10

cond.true7:                                       ; preds = %cond.end
  %8 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag8 = getelementptr inbounds %struct.scomplex, ptr %8, i32 0, i32 1
  %9 = load float, ptr %imag8, align 4, !tbaa !15
  %fneg9 = fneg float %9
  br label %cond.end12

cond.false10:                                     ; preds = %cond.end
  %10 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag11 = getelementptr inbounds %struct.scomplex, ptr %10, i32 0, i32 1
  %11 = load float, ptr %imag11, align 4, !tbaa !15
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false10, %cond.true7
  %cond13 = phi float [ %fneg9, %cond.true7 ], [ %11, %cond.false10 ]
  %cmp14 = fcmp ogt float %cond, %cond13
  br i1 %cmp14, label %cond.true16, label %cond.false28

cond.true16:                                      ; preds = %cond.end12
  %12 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real17 = getelementptr inbounds %struct.scomplex, ptr %12, i32 0, i32 0
  %13 = load float, ptr %real17, align 4, !tbaa !13
  %conv18 = fpext float %13 to double
  %cmp19 = fcmp ole double %conv18, 0.000000e+00
  br i1 %cmp19, label %cond.true21, label %cond.false24

cond.true21:                                      ; preds = %cond.true16
  %14 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real22 = getelementptr inbounds %struct.scomplex, ptr %14, i32 0, i32 0
  %15 = load float, ptr %real22, align 4, !tbaa !13
  %fneg23 = fneg float %15
  br label %cond.end26

cond.false24:                                     ; preds = %cond.true16
  %16 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real25 = getelementptr inbounds %struct.scomplex, ptr %16, i32 0, i32 0
  %17 = load float, ptr %real25, align 4, !tbaa !13
  br label %cond.end26

cond.end26:                                       ; preds = %cond.false24, %cond.true21
  %cond27 = phi float [ %fneg23, %cond.true21 ], [ %17, %cond.false24 ]
  br label %cond.end40

cond.false28:                                     ; preds = %cond.end12
  %18 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag29 = getelementptr inbounds %struct.scomplex, ptr %18, i32 0, i32 1
  %19 = load float, ptr %imag29, align 4, !tbaa !15
  %conv30 = fpext float %19 to double
  %cmp31 = fcmp ole double %conv30, 0.000000e+00
  br i1 %cmp31, label %cond.true33, label %cond.false36

cond.true33:                                      ; preds = %cond.false28
  %20 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag34 = getelementptr inbounds %struct.scomplex, ptr %20, i32 0, i32 1
  %21 = load float, ptr %imag34, align 4, !tbaa !15
  %fneg35 = fneg float %21
  br label %cond.end38

cond.false36:                                     ; preds = %cond.false28
  %22 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag37 = getelementptr inbounds %struct.scomplex, ptr %22, i32 0, i32 1
  %23 = load float, ptr %imag37, align 4, !tbaa !15
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false36, %cond.true33
  %cond39 = phi float [ %fneg35, %cond.true33 ], [ %23, %cond.false36 ]
  br label %cond.end40

cond.end40:                                       ; preds = %cond.end38, %cond.end26
  %cond41 = phi float [ %cond27, %cond.end26 ], [ %cond39, %cond.end38 ]
  store float %cond41, ptr %s, align 4, !tbaa !9
  %24 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real42 = getelementptr inbounds %struct.scomplex, ptr %24, i32 0, i32 0
  %25 = load float, ptr %real42, align 4, !tbaa !13
  %26 = load float, ptr %s, align 4, !tbaa !9
  %div = fdiv float %25, %26
  store float %div, ptr %xr_s, align 4, !tbaa !9
  %27 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag43 = getelementptr inbounds %struct.scomplex, ptr %27, i32 0, i32 1
  %28 = load float, ptr %imag43, align 4, !tbaa !15
  %29 = load float, ptr %s, align 4, !tbaa !9
  %div44 = fdiv float %28, %29
  store float %div44, ptr %xi_s, align 4, !tbaa !9
  %30 = load float, ptr %xr_s, align 4, !tbaa !9
  %31 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real45 = getelementptr inbounds %struct.scomplex, ptr %31, i32 0, i32 0
  %32 = load float, ptr %real45, align 4, !tbaa !13
  %33 = load float, ptr %xi_s, align 4, !tbaa !9
  %34 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag46 = getelementptr inbounds %struct.scomplex, ptr %34, i32 0, i32 1
  %35 = load float, ptr %imag46, align 4, !tbaa !15
  %mul47 = fmul float %33, %35
  %36 = call float @llvm.fmuladd.f32(float %30, float %32, float %mul47)
  store float %36, ptr %temp, align 4, !tbaa !9
  %37 = load float, ptr %xr_s, align 4, !tbaa !9
  %38 = load float, ptr %temp, align 4, !tbaa !9
  %div48 = fdiv float %37, %38
  %39 = load ptr, ptr %beta.addr, align 8, !tbaa !7
  %real49 = getelementptr inbounds %struct.scomplex, ptr %39, i32 0, i32 0
  store float %div48, ptr %real49, align 4, !tbaa !13
  %40 = load float, ptr %xi_s, align 4, !tbaa !9
  %fneg50 = fneg float %40
  %41 = load float, ptr %temp, align 4, !tbaa !9
  %div51 = fdiv float %fneg50, %41
  %42 = load ptr, ptr %beta.addr, align 8, !tbaa !7
  %imag52 = getelementptr inbounds %struct.scomplex, ptr %42, i32 0, i32 1
  store float %div51, ptr %imag52, align 4, !tbaa !15
  %43 = load i32, ptr %conj.addr, align 4, !tbaa !4
  %call = call i32 @bl1_is_conj(i32 noundef %43)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end40
  %44 = load ptr, ptr %beta.addr, align 8, !tbaa !7
  %imag53 = getelementptr inbounds %struct.scomplex, ptr %44, i32 0, i32 1
  %45 = load float, ptr %imag53, align 4, !tbaa !15
  %mul = fmul float %45, -1.000000e+00
  store float %mul, ptr %imag53, align 4, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end40
  call void @llvm.lifetime.end.p0(i64 4, ptr %xi_s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %xr_s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare i32 @bl1_is_conj(i32 noundef) #3

; Function Attrs: nounwind uwtable
define void @bl1_zinvert2s(i32 noundef %conj, ptr noundef %alpha, ptr noundef %beta) #0 {
entry:
  %conj.addr = alloca i32, align 4
  %alpha.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %temp = alloca double, align 8
  %s = alloca double, align 8
  %xr_s = alloca double, align 8
  %xi_s = alloca double, align 8
  store i32 %conj, ptr %conj.addr, align 4, !tbaa !4
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !7
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %xr_s) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %xi_s) #4
  %0 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real = getelementptr inbounds %struct.dcomplex, ptr %0, i32 0, i32 0
  %1 = load double, ptr %real, align 8, !tbaa !16
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real1 = getelementptr inbounds %struct.dcomplex, ptr %2, i32 0, i32 0
  %3 = load double, ptr %real1, align 8, !tbaa !16
  %fneg = fneg double %3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real2 = getelementptr inbounds %struct.dcomplex, ptr %4, i32 0, i32 0
  %5 = load double, ptr %real2, align 8, !tbaa !16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %fneg, %cond.true ], [ %5, %cond.false ]
  %6 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag = getelementptr inbounds %struct.dcomplex, ptr %6, i32 0, i32 1
  %7 = load double, ptr %imag, align 8, !tbaa !18
  %cmp3 = fcmp ole double %7, 0.000000e+00
  br i1 %cmp3, label %cond.true4, label %cond.false7

cond.true4:                                       ; preds = %cond.end
  %8 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag5 = getelementptr inbounds %struct.dcomplex, ptr %8, i32 0, i32 1
  %9 = load double, ptr %imag5, align 8, !tbaa !18
  %fneg6 = fneg double %9
  br label %cond.end9

cond.false7:                                      ; preds = %cond.end
  %10 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag8 = getelementptr inbounds %struct.dcomplex, ptr %10, i32 0, i32 1
  %11 = load double, ptr %imag8, align 8, !tbaa !18
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false7, %cond.true4
  %cond10 = phi double [ %fneg6, %cond.true4 ], [ %11, %cond.false7 ]
  %cmp11 = fcmp ogt double %cond, %cond10
  br i1 %cmp11, label %cond.true12, label %cond.false22

cond.true12:                                      ; preds = %cond.end9
  %12 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real13 = getelementptr inbounds %struct.dcomplex, ptr %12, i32 0, i32 0
  %13 = load double, ptr %real13, align 8, !tbaa !16
  %cmp14 = fcmp ole double %13, 0.000000e+00
  br i1 %cmp14, label %cond.true15, label %cond.false18

cond.true15:                                      ; preds = %cond.true12
  %14 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real16 = getelementptr inbounds %struct.dcomplex, ptr %14, i32 0, i32 0
  %15 = load double, ptr %real16, align 8, !tbaa !16
  %fneg17 = fneg double %15
  br label %cond.end20

cond.false18:                                     ; preds = %cond.true12
  %16 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real19 = getelementptr inbounds %struct.dcomplex, ptr %16, i32 0, i32 0
  %17 = load double, ptr %real19, align 8, !tbaa !16
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false18, %cond.true15
  %cond21 = phi double [ %fneg17, %cond.true15 ], [ %17, %cond.false18 ]
  br label %cond.end32

cond.false22:                                     ; preds = %cond.end9
  %18 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag23 = getelementptr inbounds %struct.dcomplex, ptr %18, i32 0, i32 1
  %19 = load double, ptr %imag23, align 8, !tbaa !18
  %cmp24 = fcmp ole double %19, 0.000000e+00
  br i1 %cmp24, label %cond.true25, label %cond.false28

cond.true25:                                      ; preds = %cond.false22
  %20 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag26 = getelementptr inbounds %struct.dcomplex, ptr %20, i32 0, i32 1
  %21 = load double, ptr %imag26, align 8, !tbaa !18
  %fneg27 = fneg double %21
  br label %cond.end30

cond.false28:                                     ; preds = %cond.false22
  %22 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag29 = getelementptr inbounds %struct.dcomplex, ptr %22, i32 0, i32 1
  %23 = load double, ptr %imag29, align 8, !tbaa !18
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false28, %cond.true25
  %cond31 = phi double [ %fneg27, %cond.true25 ], [ %23, %cond.false28 ]
  br label %cond.end32

cond.end32:                                       ; preds = %cond.end30, %cond.end20
  %cond33 = phi double [ %cond21, %cond.end20 ], [ %cond31, %cond.end30 ]
  store double %cond33, ptr %s, align 8, !tbaa !11
  %24 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real34 = getelementptr inbounds %struct.dcomplex, ptr %24, i32 0, i32 0
  %25 = load double, ptr %real34, align 8, !tbaa !16
  %26 = load double, ptr %s, align 8, !tbaa !11
  %div = fdiv double %25, %26
  store double %div, ptr %xr_s, align 8, !tbaa !11
  %27 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag35 = getelementptr inbounds %struct.dcomplex, ptr %27, i32 0, i32 1
  %28 = load double, ptr %imag35, align 8, !tbaa !18
  %29 = load double, ptr %s, align 8, !tbaa !11
  %div36 = fdiv double %28, %29
  store double %div36, ptr %xi_s, align 8, !tbaa !11
  %30 = load double, ptr %xr_s, align 8, !tbaa !11
  %31 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %real37 = getelementptr inbounds %struct.dcomplex, ptr %31, i32 0, i32 0
  %32 = load double, ptr %real37, align 8, !tbaa !16
  %33 = load double, ptr %xi_s, align 8, !tbaa !11
  %34 = load ptr, ptr %alpha.addr, align 8, !tbaa !7
  %imag38 = getelementptr inbounds %struct.dcomplex, ptr %34, i32 0, i32 1
  %35 = load double, ptr %imag38, align 8, !tbaa !18
  %mul39 = fmul double %33, %35
  %36 = call double @llvm.fmuladd.f64(double %30, double %32, double %mul39)
  store double %36, ptr %temp, align 8, !tbaa !11
  %37 = load double, ptr %xr_s, align 8, !tbaa !11
  %38 = load double, ptr %temp, align 8, !tbaa !11
  %div40 = fdiv double %37, %38
  %39 = load ptr, ptr %beta.addr, align 8, !tbaa !7
  %real41 = getelementptr inbounds %struct.dcomplex, ptr %39, i32 0, i32 0
  store double %div40, ptr %real41, align 8, !tbaa !16
  %40 = load double, ptr %xi_s, align 8, !tbaa !11
  %fneg42 = fneg double %40
  %41 = load double, ptr %temp, align 8, !tbaa !11
  %div43 = fdiv double %fneg42, %41
  %42 = load ptr, ptr %beta.addr, align 8, !tbaa !7
  %imag44 = getelementptr inbounds %struct.dcomplex, ptr %42, i32 0, i32 1
  store double %div43, ptr %imag44, align 8, !tbaa !18
  %43 = load i32, ptr %conj.addr, align 4, !tbaa !4
  %call = call i32 @bl1_is_conj(i32 noundef %43)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end32
  %44 = load ptr, ptr %beta.addr, align 8, !tbaa !7
  %imag45 = getelementptr inbounds %struct.dcomplex, ptr %44, i32 0, i32 1
  %45 = load double, ptr %imag45, align 8, !tbaa !18
  %mul = fmul double %45, -1.000000e+00
  store double %mul, ptr %imag45, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end32
  call void @llvm.lifetime.end.p0(i64 8, ptr %xi_s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %xr_s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"scomplex", !10, i64 0, !10, i64 4}
!15 = !{!14, !10, i64 4}
!16 = !{!17, !12, i64 0}
!17 = !{!"dcomplex", !12, i64 0, !12, i64 8}
!18 = !{!17, !12, i64 8}

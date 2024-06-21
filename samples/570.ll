; ModuleID = 'samples/570.bc'
source_filename = "../scipy/_lib/unuran/unuran/src/distributions/c_meixner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unur_distr = type { %union.anon, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%union.anon = type { %struct.unur_distr_cont }
%struct.unur_distr_cont = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, double, [5 x double], i32, [5 x ptr], [5 x i32], double, double, double, [2 x double], [2 x double], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@distr_name = internal constant [8 x i8] c"meixner\00", align 1
@.str = private unnamed_addr constant [58 x i8] c"../scipy/_lib/unuran/unuran/src/distributions/c_meixner.c\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"too few\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"too many\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"alpha or delta <= 0\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"beta not in (-PI,PI)\00", align 1

; Function Attrs: nounwind uwtable
define hidden ptr @unur_distr_meixner(ptr noundef %params, i32 noundef %n_params) #0 {
entry:
  %retval = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %n_params.addr = alloca i32, align 4
  %distr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  store i32 %n_params, ptr %n_params.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %distr) #5
  %call = call ptr @unur_distr_cont_new()
  store ptr %call, ptr %distr, align 8, !tbaa !4
  %0 = load ptr, ptr %distr, align 8, !tbaa !4
  %id = getelementptr inbounds %struct.unur_distr, ptr %0, i32 0, i32 2
  store i32 9729, ptr %id, align 4, !tbaa !10
  %1 = load ptr, ptr %distr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.unur_distr, ptr %1, i32 0, i32 3
  store ptr @distr_name, ptr %name, align 8, !tbaa !12
  %2 = load ptr, ptr %distr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.unur_distr, ptr %2, i32 0, i32 0
  %pdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 0
  store ptr @_unur_pdf_meixner, ptr %pdf, align 8, !tbaa !13
  %3 = load ptr, ptr %distr, align 8, !tbaa !4
  %data1 = getelementptr inbounds %struct.unur_distr, ptr %3, i32 0, i32 0
  %logpdf = getelementptr inbounds %struct.unur_distr_cont, ptr %data1, i32 0, i32 4
  store ptr @_unur_logpdf_meixner, ptr %logpdf, align 8, !tbaa !13
  %4 = load ptr, ptr %distr, align 8, !tbaa !4
  %set = getelementptr inbounds %struct.unur_distr, ptr %4, i32 0, i32 6
  store i32 327686, ptr %set, align 4, !tbaa !14
  %5 = load ptr, ptr %distr, align 8, !tbaa !4
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %7 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %call2 = call i32 @_unur_set_params_meixner(ptr noundef %5, ptr noundef %6, i32 noundef %7)
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %distr, align 8, !tbaa !4
  call void @free(ptr noundef %8) #5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %distr, align 8, !tbaa !4
  %data3 = getelementptr inbounds %struct.unur_distr, ptr %9, i32 0, i32 0
  %params4 = getelementptr inbounds %struct.unur_distr_cont, ptr %data3, i32 0, i32 9
  %arraydecay = getelementptr inbounds [5 x double], ptr %params4, i64 0, i64 0
  %10 = load ptr, ptr %distr, align 8, !tbaa !4
  %data5 = getelementptr inbounds %struct.unur_distr, ptr %10, i32 0, i32 0
  %n_params6 = getelementptr inbounds %struct.unur_distr_cont, ptr %data5, i32 0, i32 10
  %11 = load i32, ptr %n_params6, align 8, !tbaa !13
  %call7 = call double @_unur_lognormconstant_meixner(ptr noundef %arraydecay, i32 noundef %11)
  %12 = load ptr, ptr %distr, align 8, !tbaa !4
  %data8 = getelementptr inbounds %struct.unur_distr, ptr %12, i32 0, i32 0
  %norm_constant = getelementptr inbounds %struct.unur_distr_cont, ptr %data8, i32 0, i32 8
  store double %call7, ptr %norm_constant, align 8, !tbaa !13
  %13 = load ptr, ptr %distr, align 8, !tbaa !4
  %call9 = call i32 @_unur_upd_center_meixner(ptr noundef %13)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %14 = load ptr, ptr %distr, align 8, !tbaa !4
  call void @free(ptr noundef %14) #5
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %15 = load ptr, ptr %distr, align 8, !tbaa !4
  %data13 = getelementptr inbounds %struct.unur_distr, ptr %15, i32 0, i32 0
  %area = getelementptr inbounds %struct.unur_distr_cont, ptr %data13, i32 0, i32 15
  store double 1.000000e+00, ptr %area, align 8, !tbaa !13
  %16 = load ptr, ptr %distr, align 8, !tbaa !4
  %data14 = getelementptr inbounds %struct.unur_distr, ptr %16, i32 0, i32 0
  %set_params = getelementptr inbounds %struct.unur_distr_cont, ptr %data14, i32 0, i32 25
  store ptr @_unur_set_params_meixner, ptr %set_params, align 8, !tbaa !13
  %17 = load ptr, ptr %distr, align 8, !tbaa !4
  store ptr %17, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %distr) #5
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @unur_distr_cont_new() #2

; Function Attrs: nounwind uwtable
define internal double @_unur_pdf_meixner(double noundef %x, ptr noundef %distr) #0 {
entry:
  %x.addr = alloca double, align 8
  %distr.addr = alloca ptr, align 8
  store double %x, ptr %x.addr, align 8, !tbaa !15
  store ptr %distr, ptr %distr.addr, align 8, !tbaa !4
  %0 = load double, ptr %x.addr, align 8, !tbaa !15
  %1 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %call = call double @_unur_logpdf_meixner(double noundef %0, ptr noundef %1)
  %call1 = call double @exp(double noundef %call) #5
  ret double %call1
}

; Function Attrs: nounwind uwtable
define internal double @_unur_logpdf_meixner(double noundef %x, ptr noundef %distr) #0 {
entry:
  %x.addr = alloca double, align 8
  %distr.addr = alloca ptr, align 8
  %params = alloca ptr, align 8
  %res = alloca double, align 8
  %y = alloca double, align 8
  store double %x, ptr %x.addr, align 8, !tbaa !15
  store ptr %distr, ptr %distr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %params) #5
  %0 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.unur_distr, ptr %0, i32 0, i32 0
  %params1 = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 9
  %arraydecay = getelementptr inbounds [5 x double], ptr %params1, i64 0, i64 0
  store ptr %arraydecay, ptr %params, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #5
  %1 = load double, ptr %x.addr, align 8, !tbaa !15
  %2 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %2, i64 3
  %3 = load double, ptr %arrayidx, align 8, !tbaa !15
  %sub = fsub double %1, %3
  %4 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds double, ptr %4, i64 0
  %5 = load double, ptr %arrayidx2, align 8, !tbaa !15
  %div = fdiv double %sub, %5
  store double %div, ptr %y, align 8, !tbaa !15
  %6 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data3 = getelementptr inbounds %struct.unur_distr, ptr %6, i32 0, i32 0
  %norm_constant = getelementptr inbounds %struct.unur_distr_cont, ptr %data3, i32 0, i32 8
  %7 = load double, ptr %norm_constant, align 8, !tbaa !13
  %8 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx4 = getelementptr inbounds double, ptr %8, i64 1
  %9 = load double, ptr %arrayidx4, align 8, !tbaa !15
  %10 = load double, ptr %y, align 8, !tbaa !15
  %11 = call double @llvm.fmuladd.f64(double %9, double %10, double %7)
  %12 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds double, ptr %12, i64 2
  %13 = load double, ptr %arrayidx5, align 8, !tbaa !15
  %14 = load double, ptr %y, align 8, !tbaa !15
  %call = call double @_unur_Relcgamma(double noundef %13, double noundef %14)
  %15 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %call, double %11)
  store double %15, ptr %res, align 8, !tbaa !15
  %16 = load double, ptr %res, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %params) #5
  ret double %16
}

; Function Attrs: nounwind uwtable
define internal i32 @_unur_set_params_meixner(ptr noundef %distr, ptr noundef %params, i32 noundef %n_params) #0 {
entry:
  %retval = alloca i32, align 4
  %distr.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %n_params.addr = alloca i32, align 4
  store ptr %distr, ptr %distr.addr, align 8, !tbaa !4
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  store i32 %n_params, ptr %n_params.addr, align 4, !tbaa !8
  %0 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 136, ptr noundef @.str.1, i32 noundef 19, ptr noundef @.str.2)
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 19, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %cmp1 = icmp sgt i32 %1, 4
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  br label %do.body3

do.body3:                                         ; preds = %if.then2
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 138, ptr noundef @.str.3, i32 noundef 19, ptr noundef @.str.4)
  br label %do.end4

do.end4:                                          ; preds = %do.body3
  store i32 4, ptr %n_params.addr, align 4, !tbaa !8
  br label %if.end5

if.end5:                                          ; preds = %do.end4, %if.end
  br label %do.body6

do.body6:                                         ; preds = %if.end5
  br label %do.end7

do.end7:                                          ; preds = %do.body6
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %2, i64 0
  %3 = load double, ptr %arrayidx, align 8, !tbaa !15
  %cmp8 = fcmp ole double %3, 0.000000e+00
  br i1 %cmp8, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end7
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds double, ptr %4, i64 2
  %5 = load double, ptr %arrayidx9, align 8, !tbaa !15
  %cmp10 = fcmp ole double %5, 0.000000e+00
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %lor.lhs.false, %do.end7
  br label %do.body12

do.body12:                                        ; preds = %if.then11
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 144, ptr noundef @.str.1, i32 noundef 20, ptr noundef @.str.5)
  br label %do.end13

do.end13:                                         ; preds = %do.body12
  store i32 20, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx15 = getelementptr inbounds double, ptr %6, i64 1
  %7 = load double, ptr %arrayidx15, align 8, !tbaa !15
  %8 = call double @llvm.fabs.f64(double %7)
  %cmp16 = fcmp oge double %8, 0x400921FB54442D18
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  br label %do.body18

do.body18:                                        ; preds = %if.then17
  call void @_unur_error_x(ptr noundef @distr_name, ptr noundef @.str, i32 noundef 149, ptr noundef @.str.1, i32 noundef 20, ptr noundef @.str.6)
  br label %do.end19

do.end19:                                         ; preds = %do.body18
  store i32 20, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end14
  %9 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx21 = getelementptr inbounds double, ptr %9, i64 0
  %10 = load double, ptr %arrayidx21, align 8, !tbaa !15
  %11 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.unur_distr, ptr %11, i32 0, i32 0
  %params22 = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 9
  %arrayidx23 = getelementptr inbounds [5 x double], ptr %params22, i64 0, i64 0
  store double %10, ptr %arrayidx23, align 8, !tbaa !13
  %12 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx24 = getelementptr inbounds double, ptr %12, i64 1
  %13 = load double, ptr %arrayidx24, align 8, !tbaa !15
  %14 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data25 = getelementptr inbounds %struct.unur_distr, ptr %14, i32 0, i32 0
  %params26 = getelementptr inbounds %struct.unur_distr_cont, ptr %data25, i32 0, i32 9
  %arrayidx27 = getelementptr inbounds [5 x double], ptr %params26, i64 0, i64 1
  store double %13, ptr %arrayidx27, align 8, !tbaa !13
  %15 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx28 = getelementptr inbounds double, ptr %15, i64 2
  %16 = load double, ptr %arrayidx28, align 8, !tbaa !15
  %17 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data29 = getelementptr inbounds %struct.unur_distr, ptr %17, i32 0, i32 0
  %params30 = getelementptr inbounds %struct.unur_distr_cont, ptr %data29, i32 0, i32 9
  %arrayidx31 = getelementptr inbounds [5 x double], ptr %params30, i64 0, i64 2
  store double %16, ptr %arrayidx31, align 8, !tbaa !13
  %18 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx32 = getelementptr inbounds double, ptr %18, i64 3
  %19 = load double, ptr %arrayidx32, align 8, !tbaa !15
  %20 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data33 = getelementptr inbounds %struct.unur_distr, ptr %20, i32 0, i32 0
  %params34 = getelementptr inbounds %struct.unur_distr_cont, ptr %data33, i32 0, i32 9
  %arrayidx35 = getelementptr inbounds [5 x double], ptr %params34, i64 0, i64 3
  store double %19, ptr %arrayidx35, align 8, !tbaa !13
  %21 = load i32, ptr %n_params.addr, align 4, !tbaa !8
  %22 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data36 = getelementptr inbounds %struct.unur_distr, ptr %22, i32 0, i32 0
  %n_params37 = getelementptr inbounds %struct.unur_distr_cont, ptr %data36, i32 0, i32 10
  store i32 %21, ptr %n_params37, align 8, !tbaa !13
  %23 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %set = getelementptr inbounds %struct.unur_distr, ptr %23, i32 0, i32 6
  %24 = load i32, ptr %set, align 4, !tbaa !14
  %and = and i32 %24, 262144
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end20
  %25 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data39 = getelementptr inbounds %struct.unur_distr, ptr %25, i32 0, i32 0
  %domain = getelementptr inbounds %struct.unur_distr_cont, ptr %data39, i32 0, i32 16
  %arrayidx40 = getelementptr inbounds [2 x double], ptr %domain, i64 0, i64 0
  store double 0xFFF0000000000000, ptr %arrayidx40, align 8, !tbaa !13
  %26 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data41 = getelementptr inbounds %struct.unur_distr, ptr %26, i32 0, i32 0
  %domain42 = getelementptr inbounds %struct.unur_distr_cont, ptr %data41, i32 0, i32 16
  %arrayidx43 = getelementptr inbounds [2 x double], ptr %domain42, i64 0, i64 1
  store double 0x7FF0000000000000, ptr %arrayidx43, align 8, !tbaa !13
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.end20
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %do.end19, %do.end13, %do.end
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal double @_unur_lognormconstant_meixner(ptr noundef %params, i32 noundef %n_params) #0 {
entry:
  %params.addr = alloca ptr, align 8
  %n_params.addr = alloca i32, align 4
  store ptr %params, ptr %params.addr, align 8, !tbaa !4
  store i32 %n_params, ptr %n_params.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %0, i64 2
  %1 = load double, ptr %arrayidx, align 8, !tbaa !15
  %mul = fmul double 2.000000e+00, %1
  %2 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx1 = getelementptr inbounds double, ptr %2, i64 1
  %3 = load double, ptr %arrayidx1, align 8, !tbaa !15
  %div = fdiv double %3, 2.000000e+00
  %call = call double @cos(double noundef %div) #5
  %mul2 = fmul double 2.000000e+00, %call
  %call3 = call double @log(double noundef %mul2) #5
  %4 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx5 = getelementptr inbounds double, ptr %4, i64 0
  %5 = load double, ptr %arrayidx5, align 8, !tbaa !15
  %mul6 = fmul double 2.000000e+00, %5
  %mul7 = fmul double %mul6, 0x400921FB54442D18
  %call8 = call double @log(double noundef %mul7) #5
  %6 = load ptr, ptr %params.addr, align 8, !tbaa !4
  %arrayidx9 = getelementptr inbounds double, ptr %6, i64 2
  %7 = load double, ptr %arrayidx9, align 8, !tbaa !15
  %mul10 = fmul double 2.000000e+00, %7
  %call11 = call double @_unur_cephes_lgam(double noundef %mul10)
  %add = fadd double %call8, %call11
  %neg = fneg double %add
  %8 = call double @llvm.fmuladd.f64(double %mul, double %call3, double %neg)
  ret double %8
}

; Function Attrs: nounwind uwtable
define internal i32 @_unur_upd_center_meixner(ptr noundef %distr) #0 {
entry:
  %distr.addr = alloca ptr, align 8
  %params = alloca ptr, align 8
  store ptr %distr, ptr %distr.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %params) #5
  %0 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data = getelementptr inbounds %struct.unur_distr, ptr %0, i32 0, i32 0
  %params1 = getelementptr inbounds %struct.unur_distr_cont, ptr %data, i32 0, i32 9
  %arraydecay = getelementptr inbounds [5 x double], ptr %params1, i64 0, i64 0
  store ptr %arraydecay, ptr %params, align 8, !tbaa !4
  %1 = load ptr, ptr %params, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %1, i64 3
  %2 = load double, ptr %arrayidx, align 8, !tbaa !15
  %3 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data2 = getelementptr inbounds %struct.unur_distr, ptr %3, i32 0, i32 0
  %center = getelementptr inbounds %struct.unur_distr_cont, ptr %data2, i32 0, i32 14
  store double %2, ptr %center, align 8, !tbaa !13
  %4 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data3 = getelementptr inbounds %struct.unur_distr, ptr %4, i32 0, i32 0
  %center4 = getelementptr inbounds %struct.unur_distr_cont, ptr %data3, i32 0, i32 14
  %5 = load double, ptr %center4, align 8, !tbaa !13
  %6 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data5 = getelementptr inbounds %struct.unur_distr, ptr %6, i32 0, i32 0
  %domain = getelementptr inbounds %struct.unur_distr_cont, ptr %data5, i32 0, i32 16
  %arrayidx6 = getelementptr inbounds [2 x double], ptr %domain, i64 0, i64 0
  %7 = load double, ptr %arrayidx6, align 8, !tbaa !13
  %cmp = fcmp olt double %5, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data7 = getelementptr inbounds %struct.unur_distr, ptr %8, i32 0, i32 0
  %domain8 = getelementptr inbounds %struct.unur_distr_cont, ptr %data7, i32 0, i32 16
  %arrayidx9 = getelementptr inbounds [2 x double], ptr %domain8, i64 0, i64 0
  %9 = load double, ptr %arrayidx9, align 8, !tbaa !13
  %10 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data10 = getelementptr inbounds %struct.unur_distr, ptr %10, i32 0, i32 0
  %center11 = getelementptr inbounds %struct.unur_distr_cont, ptr %data10, i32 0, i32 14
  store double %9, ptr %center11, align 8, !tbaa !13
  br label %if.end24

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data12 = getelementptr inbounds %struct.unur_distr, ptr %11, i32 0, i32 0
  %center13 = getelementptr inbounds %struct.unur_distr_cont, ptr %data12, i32 0, i32 14
  %12 = load double, ptr %center13, align 8, !tbaa !13
  %13 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data14 = getelementptr inbounds %struct.unur_distr, ptr %13, i32 0, i32 0
  %domain15 = getelementptr inbounds %struct.unur_distr_cont, ptr %data14, i32 0, i32 16
  %arrayidx16 = getelementptr inbounds [2 x double], ptr %domain15, i64 0, i64 1
  %14 = load double, ptr %arrayidx16, align 8, !tbaa !13
  %cmp17 = fcmp ogt double %12, %14
  br i1 %cmp17, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.else
  %15 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data19 = getelementptr inbounds %struct.unur_distr, ptr %15, i32 0, i32 0
  %domain20 = getelementptr inbounds %struct.unur_distr_cont, ptr %data19, i32 0, i32 16
  %arrayidx21 = getelementptr inbounds [2 x double], ptr %domain20, i64 0, i64 1
  %16 = load double, ptr %arrayidx21, align 8, !tbaa !13
  %17 = load ptr, ptr %distr.addr, align 8, !tbaa !4
  %data22 = getelementptr inbounds %struct.unur_distr, ptr %17, i32 0, i32 0
  %center23 = getelementptr inbounds %struct.unur_distr_cont, ptr %data22, i32 0, i32 14
  store double %16, ptr %center23, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %params) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare double @exp(double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare double @_unur_Relcgamma(double noundef, double noundef) #2

declare void @_unur_error_x(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nounwind
declare double @log(double noundef) #3

; Function Attrs: nounwind
declare double @cos(double noundef) #3

declare double @_unur_cephes_lgam(double noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!11, !9, i64 332}
!11 = !{!"unur_distr", !6, i64 0, !9, i64 328, !9, i64 332, !5, i64 336, !5, i64 344, !9, i64 352, !9, i64 356, !5, i64 360, !5, i64 368, !5, i64 376, !5, i64 384}
!12 = !{!11, !5, i64 336}
!13 = !{!6, !6, i64 0}
!14 = !{!11, !9, i64 356}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !6, i64 0}

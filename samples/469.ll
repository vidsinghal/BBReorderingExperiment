; ModuleID = 'samples/469.bc'
source_filename = "../spack-src/test/wasm/simd128/ceil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { [4 x float], [4 x float] }
%struct.anon.1 = type { [4 x double], [4 x double] }
%union.simde_v128_private = type { <16 x i8> }
%struct.__loadu_si128 = type { <2 x i64> }
%struct.__storeu_si128 = type { <2 x i64> }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"1..%zu\0A\00", align 1
@test_suite_tests = internal constant [2 x %struct.anon] [%struct.anon { ptr @test_simde_wasm_f32x4_ceil, ptr @.str.3 }, %struct.anon { ptr @test_simde_wasm_f64x2_ceil, ptr @.str.4 }], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"not ok %zu ceil/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ok %zu ceil/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"wasm_f32x4_ceil\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"wasm_f64x2_ceil\00", align 1
@test_simde_wasm_f32x4_ceil.test_vec = internal constant [8 x %struct.anon.0] [%struct.anon.0 { [4 x float] [float 0x7FF8000000000000, float 0x408E3C6660000000, float 0x7FF8000000000000, float 0xC052C47AE0000000], [4 x float] [float 0x7FF8000000000000, float 9.680000e+02, float 0x7FF8000000000000, float -7.500000e+01] }, %struct.anon.0 { [4 x float] [float 0xC070BA6660000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0xC052C47AE0000000], [4 x float] [float -2.670000e+02, float 0x7FF8000000000000, float 0x7FF8000000000000, float -7.500000e+01] }, %struct.anon.0 { [4 x float] [float 0xC057A8F5C0000000, float 0xC08DD451E0000000, float 0xC06AC0F5C0000000, float 0x4084990A40000000], [4 x float] [float -9.400000e+01, float -9.540000e+02, float -2.140000e+02, float 6.600000e+02] }, %struct.anon.0 { [4 x float] [float 0x4083BCF5C0000000, float 0xC075EFAE20000000, float 0xC0802D8520000000, float 0xC080A199A0000000], [4 x float] [float 6.320000e+02, float -3.500000e+02, float -5.170000e+02, float -5.320000e+02] }, %struct.anon.0 { [4 x float] [float 0xC061E947A0000000, float 0xC07BB451E0000000, float 0x40845D3340000000, float 0x40832147A0000000], [4 x float] [float -1.430000e+02, float -4.430000e+02, float 6.520000e+02, float 6.130000e+02] }, %struct.anon.0 { [4 x float] [float 0xC07261C280000000, float 0xC069D570A0000000, float 0xC061DC2900000000, float 0xC08EB4F5C0000000], [4 x float] [float -2.940000e+02, float -2.060000e+02, float -1.420000e+02, float -9.820000e+02] }, %struct.anon.0 { [4 x float] [float 0x408682A3E0000000, float 0xC033828F60000000, float 0xC0809147A0000000, float 0x408EBAA3E0000000], [4 x float] [float 7.210000e+02, float -1.900000e+01, float -5.300000e+02, float 9.840000e+02] }, %struct.anon.0 { [4 x float] [float 0xC06FECCCC0000000, float 0x408DC3C280000000, float 0xC0881AE140000000, float 0x405B7EB860000000], [4 x float] [float -2.550000e+02, float 9.530000e+02, float -7.710000e+02, float 1.100000e+02] }], align 16
@.str.5 = private unnamed_addr constant [38 x i8] c"../spack-src/test/wasm/simd128/ceil.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"simde_wasm_v128_load(test_vec[i].r)\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] ~= %s[%zu] (%f ~= %f)\0A\00", align 1
@stderr = external global ptr, align 8
@test_simde_wasm_f64x2_ceil.test_vec = internal constant [8 x %struct.anon.1] [%struct.anon.1 { [4 x double] [double 0x7FF8000000000000, double 0x408B8747AE147AE1, double 0.000000e+00, double 0.000000e+00], [4 x double] [double 0x7FF8000000000000, double 8.810000e+02, double 0.000000e+00, double 0.000000e+00] }, %struct.anon.1 { [4 x double] [double 0x7FF8000000000000, double 4.426100e+02, double 0.000000e+00, double 0.000000e+00], [4 x double] [double 0x7FF8000000000000, double 4.430000e+02, double 0.000000e+00, double 0.000000e+00] }, %struct.anon.1 { [4 x double] [double 0x7FF8000000000000, double 4.426100e+02, double 0.000000e+00, double 0.000000e+00], [4 x double] [double 0x7FF8000000000000, double 4.430000e+02, double 0.000000e+00, double 0.000000e+00] }, %struct.anon.1 { [4 x double] [double -5.320900e+02, double -2.434100e+02, double 0.000000e+00, double 0.000000e+00], [4 x double] [double -5.320000e+02, double -2.430000e+02, double 0.000000e+00, double 0.000000e+00] }, %struct.anon.1 { [4 x double] [double 4.585800e+02, double 5.106600e+02, double 0.000000e+00, double 0.000000e+00], [4 x double] [double 4.590000e+02, double 5.110000e+02, double 0.000000e+00, double 0.000000e+00] }, %struct.anon.1 { [4 x double] [double 3.428600e+02, double -2.470000e+00, double 0.000000e+00, double 0.000000e+00], [4 x double] [double 3.430000e+02, double -2.000000e+00, double 0.000000e+00, double 0.000000e+00] }, %struct.anon.1 { [4 x double] [double -4.419700e+02, double -5.685900e+02, double 0.000000e+00, double 0.000000e+00], [4 x double] [double -4.410000e+02, double -5.680000e+02, double 0.000000e+00, double 0.000000e+00] }, %struct.anon.1 { [4 x double] [double -5.100200e+02, double 8.460200e+02, double 0.000000e+00, double 0.000000e+00], [4 x double] [double -5.100000e+02, double 8.470000e+02, double 0.000000e+00, double 0.000000e+00] }], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #11
  store i32 0, ptr %retval1, align 4, !tbaa !5
  %0 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef 2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #11
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [2 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %2
  %func = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0
  %3 = load ptr, ptr %func, align 16, !tbaa !13
  %call2 = call i32 %3()
  store i32 %call2, ptr %res, align 4, !tbaa !5
  %4 = load i32, ptr %res, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval1, align 4, !tbaa !5
  %5 = load ptr, ptr @stdout, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %add = add i64 %6, 1
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [2 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %7
  %name = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !15
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %add, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %10, 1
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [2 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %11
  %name8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1
  %12 = load ptr, ptr %name8, align 8, !tbaa !15
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, i64 noundef %add6, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load i32, ptr %retval1, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #11
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_wasm_f32x4_ceil() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup10

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #11
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_wasm_f32x4_ceil.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_wasm_v128_load(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  %2 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_wasm_f32x4_ceil(<2 x i64> noundef %2)
  store <2 x i64> %call2, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_wasm_f32x4_ceil.test_vec, i64 0, i64 %4
  %r4 = getelementptr inbounds %struct.anon.0, ptr %arrayidx3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [4 x float], ptr %r4, i64 0, i64 0
  %call6 = call <2 x i64> @simde_wasm_v128_load(ptr noundef %arraydecay5)
  %call7 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call8 = call i32 @simde_test_wasm_f32x4_assert_equal_(<2 x i64> noundef %3, <2 x i64> noundef %call6, float noundef %call7, ptr noundef @.str.5, i32 noundef 58, ptr noundef @.str.6, ptr noundef @.str.7)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup10:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest11 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest11, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup10
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup10
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_wasm_f64x2_ceil() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup10

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #11
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_wasm_f64x2_ceil.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x double], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_wasm_v128_load(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  %2 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_wasm_f64x2_ceil(<2 x i64> noundef %2)
  store <2 x i64> %call2, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_wasm_f64x2_ceil.test_vec, i64 0, i64 %4
  %r4 = getelementptr inbounds %struct.anon.1, ptr %arrayidx3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [4 x double], ptr %r4, i64 0, i64 0
  %call6 = call <2 x i64> @simde_wasm_v128_load(ptr noundef %arraydecay5)
  %call7 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call8 = call i32 @simde_test_wasm_f64x2_assert_equal_(<2 x i64> noundef %3, <2 x i64> noundef %call6, double noundef %call7, ptr noundef @.str.5, i32 noundef 109, ptr noundef @.str.6, ptr noundef @.str.7)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup10:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest11 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest11, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup10
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup10
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_wasm_v128_load(ptr noundef %mem) #4 {
entry:
  %mem.addr = alloca ptr, align 8
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %mem.addr, align 8, !tbaa !9
  %call = call <2 x i64> @_mm_loadu_si128(ptr noundef %0)
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_wasm_f32x4_ceil(<2 x i64> noundef %a) #4 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %a_ = alloca %union.simde_v128_private, align 16
  %r_ = alloca %union.simde_v128_private, align 16
  %input_as_i32 = alloca <2 x i64>, align 16
  %i32_min = alloca <2 x i64>, align 16
  %input_is_out_of_range = alloca <2 x i64>, align 16
  %truncated = alloca <4 x float>, align 16
  %trunc_is_ge_input = alloca <4 x float>, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x double> @simde_v128_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde_v128_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %input_as_i32) #11
  %1 = load <4 x float>, ptr %a_, align 16, !tbaa !16
  %call1 = call <2 x i64> @_mm_cvttps_epi32(<4 x float> noundef %1)
  store <2 x i64> %call1, ptr %input_as_i32, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %i32_min) #11
  %call2 = call <2 x i64> @_mm_set1_epi32(i32 noundef -2147483648)
  store <2 x i64> %call2, ptr %i32_min, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %input_is_out_of_range) #11
  %2 = load <2 x i64>, ptr %input_as_i32, align 16, !tbaa !16
  %3 = load <2 x i64>, ptr %i32_min, align 16, !tbaa !16
  %call3 = call <2 x i64> @_mm_cmpeq_epi32(<2 x i64> noundef %2, <2 x i64> noundef %3)
  %4 = load <2 x i64>, ptr %i32_min, align 16, !tbaa !16
  %call4 = call <2 x i64> @_mm_or_si128(<2 x i64> noundef %call3, <2 x i64> noundef %4)
  store <2 x i64> %call4, ptr %input_is_out_of_range, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %truncated) #11
  %5 = load <2 x i64>, ptr %input_is_out_of_range, align 16, !tbaa !16
  %call5 = call <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %5)
  %6 = load <2 x i64>, ptr %input_as_i32, align 16, !tbaa !16
  %call6 = call <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %6)
  %call7 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %call5, <4 x float> noundef %call6)
  %7 = load <2 x i64>, ptr %input_is_out_of_range, align 16, !tbaa !16
  %call8 = call <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %7)
  %8 = load <4 x float>, ptr %a_, align 16, !tbaa !16
  %call9 = call <4 x float> @_mm_and_ps(<4 x float> noundef %call8, <4 x float> noundef %8)
  %call10 = call <2 x i64> @_mm_castps_si128(<4 x float> noundef %call9)
  %call11 = call <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %call10)
  %call12 = call <4 x float> @_mm_or_ps(<4 x float> noundef %call7, <4 x float> noundef %call11)
  store <4 x float> %call12, ptr %truncated, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %trunc_is_ge_input) #11
  %9 = load <4 x float>, ptr %a_, align 16, !tbaa !16
  %10 = load <4 x float>, ptr %truncated, align 16, !tbaa !16
  %call13 = call <4 x float> @_mm_cmple_ps(<4 x float> noundef %9, <4 x float> noundef %10)
  %11 = load <2 x i64>, ptr %i32_min, align 16, !tbaa !16
  %call14 = call <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %11)
  %call15 = call <4 x float> @_mm_or_ps(<4 x float> noundef %call13, <4 x float> noundef %call14)
  store <4 x float> %call15, ptr %trunc_is_ge_input, align 16, !tbaa !16
  %12 = load <4 x float>, ptr %trunc_is_ge_input, align 16, !tbaa !16
  %13 = load <4 x float>, ptr %truncated, align 16, !tbaa !16
  %call16 = call <4 x float> @_mm_set1_ps(float noundef 1.000000e+00)
  %call17 = call <4 x float> @_mm_add_ps(<4 x float> noundef %13, <4 x float> noundef %call16)
  %call18 = call <4 x float> @_mm_andnot_ps(<4 x float> noundef %12, <4 x float> noundef %call17)
  %14 = load <4 x float>, ptr %trunc_is_ge_input, align 16, !tbaa !16
  %15 = load <4 x float>, ptr %truncated, align 16, !tbaa !16
  %call19 = call <4 x float> @_mm_and_ps(<4 x float> noundef %14, <4 x float> noundef %15)
  %call20 = call <4 x float> @_mm_or_ps(<4 x float> noundef %call18, <4 x float> noundef %call19)
  store <4 x float> %call20, ptr %r_, align 16, !tbaa !16
  %coerce.dive21 = getelementptr inbounds %union.simde_v128_private, ptr %r_, i32 0, i32 0
  %16 = load <2 x double>, ptr %coerce.dive21, align 16
  %call22 = call <2 x i64> @simde_v128_from_private(<2 x double> %16)
  call void @llvm.lifetime.end.p0(i64 16, ptr %trunc_is_ge_input) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %truncated) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %input_is_out_of_range) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %i32_min) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %input_as_i32) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  ret <2 x i64> %call22
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_wasm_f32x4_assert_equal_(<2 x i64> noundef %a, <2 x i64> noundef %b, float noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %slop.addr = alloca float, align 4
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x float], align 16
  %b_ = alloca [4 x float], align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store float %slop, ptr %slop.addr, align 4, !tbaa !17
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #11
  %arraydecay = getelementptr inbounds [4 x float], ptr %a_, i64 0, i64 0
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_wasm_v128_store(ptr noundef %arraydecay, <2 x i64> noundef %0)
  %arraydecay1 = getelementptr inbounds [4 x float], ptr %b_, i64 0, i64 0
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_wasm_v128_store(ptr noundef %arraydecay1, <2 x i64> noundef %1)
  %arraydecay2 = getelementptr inbounds [4 x float], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x float], ptr %b_, i64 0, i64 0
  %2 = load float, ptr %slop.addr, align 4, !tbaa !17
  %3 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %4 = load i32, ptr %line.addr, align 4, !tbaa !5
  %5 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %6 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf32_(i64 noundef 4, ptr noundef %arraydecay2, ptr noundef %arraydecay3, float noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal float @simde_test_f32_precision_to_slop(i32 noundef %precision) #0 {
entry:
  %precision.addr = alloca i32, align 4
  store i32 %precision, ptr %precision.addr, align 4, !tbaa !5
  %0 = load i32, ptr %precision.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 2147483647
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %precision.addr, align 4, !tbaa !5
  %conv2 = sitofp i32 %1 to float
  %fneg = fneg float %conv2
  %call = call float @powf(float noundef 1.000000e+01, float noundef %fneg) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 0.000000e+00, %cond.true ], [ %call, %cond.false ]
  ret float %cond
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(ptr noundef %__p) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__loadu_si128, ptr %0, i32 0, i32 0
  %1 = load <2 x i64>, ptr %__v, align 1, !tbaa !16
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x double> @simde_v128_to_private(<2 x i64> noundef %v) #4 {
entry:
  %retval = alloca %union.simde_v128_private, align 16
  %v.addr = alloca <2 x i64>, align 16
  store <2 x i64> %v, ptr %v.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %v.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_v128_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cvttps_epi32(<4 x float> noundef %__a) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !16
  %1 = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %0)
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set1_epi32(i32 noundef %__i) #4 {
entry:
  %__i.addr = alloca i32, align 4
  store i32 %__i, ptr %__i.addr, align 4, !tbaa !5
  %0 = load i32, ptr %__i.addr, align 4, !tbaa !5
  %1 = load i32, ptr %__i.addr, align 4, !tbaa !5
  %2 = load i32, ptr %__i.addr, align 4, !tbaa !5
  %3 = load i32, ptr %__i.addr, align 4, !tbaa !5
  %call = call <2 x i64> @_mm_set_epi32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_or_si128(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #4 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !16
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !16
  %1 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !16
  %or = or <2 x i64> %0, %1
  ret <2 x i64> %or
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_cmpeq_epi32(<2 x i64> noundef %__a, <2 x i64> noundef %__b) #4 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !16
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !16
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %2 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !16
  %3 = bitcast <2 x i64> %2 to <4 x i32>
  %cmp = icmp eq <4 x i32> %1, %3
  %sext = sext <4 x i1> %cmp to <4 x i32>
  %4 = bitcast <4 x i32> %sext to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_or_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !16
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !16
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !16
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %or = or <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %or to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_andnot_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !16
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !16
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %not = xor <4 x i32> %1, <i32 -1, i32 -1, i32 -1, i32 -1>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !16
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %and = and <4 x i32> %not, %3
  %4 = bitcast <4 x i32> %and to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_castsi128_ps(<2 x i64> noundef %__a) #4 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !16
  %1 = bitcast <2 x i64> %0 to <4 x float>
  ret <4 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_cvtepi32_ps(<2 x i64> noundef %__a) #4 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, ptr %__a.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %__a.addr, align 16, !tbaa !16
  %1 = bitcast <2 x i64> %0 to <4 x i32>
  %conv = sitofp <4 x i32> %1 to <4 x float>
  ret <4 x float> %conv
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_castps_si128(<4 x float> noundef %__a) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !16
  %1 = bitcast <4 x float> %0 to <2 x i64>
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_and_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !16
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !16
  %1 = bitcast <4 x float> %0 to <4 x i32>
  %2 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !16
  %3 = bitcast <4 x float> %2 to <4 x i32>
  %and = and <4 x i32> %1, %3
  %4 = bitcast <4 x i32> %and to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_cmple_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !16
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !16
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !16
  %2 = fcmp ole <4 x float> %0, %1
  %3 = sext <4 x i1> %2 to <4 x i32>
  %4 = bitcast <4 x i32> %3 to <4 x float>
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_add_ps(<4 x float> noundef %__a, <4 x float> noundef %__b) #4 {
entry:
  %__a.addr = alloca <4 x float>, align 16
  %__b.addr = alloca <4 x float>, align 16
  store <4 x float> %__a, ptr %__a.addr, align 16, !tbaa !16
  store <4 x float> %__b, ptr %__b.addr, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %__a.addr, align 16, !tbaa !16
  %1 = load <4 x float>, ptr %__b.addr, align 16, !tbaa !16
  %add = fadd <4 x float> %0, %1
  ret <4 x float> %add
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @_mm_set1_ps(float noundef %__w) #4 {
entry:
  %__w.addr = alloca float, align 4
  %.compoundliteral = alloca <4 x float>, align 16
  store float %__w, ptr %__w.addr, align 4, !tbaa !17
  %0 = load float, ptr %__w.addr, align 4, !tbaa !17
  %vecinit = insertelement <4 x float> undef, float %0, i32 0
  %1 = load float, ptr %__w.addr, align 4, !tbaa !17
  %vecinit1 = insertelement <4 x float> %vecinit, float %1, i32 1
  %2 = load float, ptr %__w.addr, align 4, !tbaa !17
  %vecinit2 = insertelement <4 x float> %vecinit1, float %2, i32 2
  %3 = load float, ptr %__w.addr, align 4, !tbaa !17
  %vecinit3 = insertelement <4 x float> %vecinit2, float %3, i32 3
  store <4 x float> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !16
  %4 = load <4 x float>, ptr %.compoundliteral, align 16, !tbaa !16
  ret <4 x float> %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_v128_from_private(<2 x double> %v.coerce) #4 {
entry:
  %v = alloca %union.simde_v128_private, align 16
  %r = alloca <2 x i64>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_v128_private, ptr %v, i32 0, i32 0
  store <2 x double> %v.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #11
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %v, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #11
  ret <2 x i64> %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #6

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @_mm_set_epi32(i32 noundef %__i3, i32 noundef %__i2, i32 noundef %__i1, i32 noundef %__i0) #4 {
entry:
  %__i3.addr = alloca i32, align 4
  %__i2.addr = alloca i32, align 4
  %__i1.addr = alloca i32, align 4
  %__i0.addr = alloca i32, align 4
  %.compoundliteral = alloca <4 x i32>, align 16
  store i32 %__i3, ptr %__i3.addr, align 4, !tbaa !5
  store i32 %__i2, ptr %__i2.addr, align 4, !tbaa !5
  store i32 %__i1, ptr %__i1.addr, align 4, !tbaa !5
  store i32 %__i0, ptr %__i0.addr, align 4, !tbaa !5
  %0 = load i32, ptr %__i0.addr, align 4, !tbaa !5
  %vecinit = insertelement <4 x i32> undef, i32 %0, i32 0
  %1 = load i32, ptr %__i1.addr, align 4, !tbaa !5
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, ptr %__i2.addr, align 4, !tbaa !5
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, ptr %__i3.addr, align 4, !tbaa !5
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 %3, i32 3
  store <4 x i32> %vecinit3, ptr %.compoundliteral, align 16, !tbaa !16
  %4 = load <4 x i32>, ptr %.compoundliteral, align 16, !tbaa !16
  %5 = bitcast <4 x i32> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_wasm_v128_store(ptr noundef %mem, <2 x i64> noundef %a) #4 {
entry:
  %mem.addr = alloca ptr, align 8
  %a.addr = alloca <2 x i64>, align 16
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !9
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  %0 = load ptr, ptr %mem.addr, align 8, !tbaa !9
  %1 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @_mm_storeu_si128(ptr noundef %0, <2 x i64> noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vf32_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, float noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %slop.addr = alloca float, align 4
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store float %slop, ptr %slop.addr, align 4, !tbaa !17
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %3 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds float, ptr %4, i64 %5
  %6 = load float, ptr %arrayidx, align 4, !tbaa !17
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds float, ptr %7, i64 %8
  %9 = load float, ptr %arrayidx1, align 4, !tbaa !17
  %10 = load float, ptr %slop.addr, align 4, !tbaa !17
  %call = call i32 @simde_test_equal_f32(float noundef %6, float noundef %9, float noundef %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %12 = load i32, ptr %line.addr, align 4, !tbaa !5
  %13 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %14 = load i64, ptr %i, align 8, !tbaa !11
  %15 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %16 = load i64, ptr %i, align 8, !tbaa !11
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds float, ptr %17, i64 %18
  %19 = load float, ptr %arrayidx5, align 4, !tbaa !17
  %conv6 = fpext float %19 to double
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %21 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds float, ptr %20, i64 %21
  %22 = load float, ptr %arrayidx7, align 4, !tbaa !17
  %conv8 = fpext float %22 to double
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.8, ptr noundef %11, i32 noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15, i64 noundef %16, double noundef %conv6, double noundef %conv8)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %23, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %24 = load i32, ptr %retval, align 4
  ret i32 %24

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @_mm_storeu_si128(ptr noundef %__p, <2 x i64> noundef %__b) #4 {
entry:
  %__p.addr = alloca ptr, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store ptr %__p, ptr %__p.addr, align 8, !tbaa !9
  store <2 x i64> %__b, ptr %__b.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %__b.addr, align 16, !tbaa !16
  %1 = load ptr, ptr %__p.addr, align 8, !tbaa !9
  %__v = getelementptr inbounds %struct.__storeu_si128, ptr %1, i32 0, i32 0
  store <2 x i64> %0, ptr %__v, align 1, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_equal_f32(float noundef %a, float noundef %b, float noundef %slop) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %slop.addr = alloca float, align 4
  %lo = alloca float, align 4
  %hi = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !17
  store float %b, ptr %b.addr, align 4, !tbaa !17
  store float %slop, ptr %slop.addr, align 4, !tbaa !17
  %0 = load float, ptr %a.addr, align 4, !tbaa !17
  %1 = call i1 @llvm.is.fpclass.f32(float %0, i32 3)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !17
  %3 = call i1 @llvm.is.fpclass.f32(float %2, i32 3)
  %4 = zext i1 %3 to i32
  store i32 %4, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load float, ptr %a.addr, align 4, !tbaa !17
  %6 = call i1 @llvm.is.fpclass.f32(float %5, i32 516)
  br i1 %6, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.else
  %7 = load float, ptr %a.addr, align 4, !tbaa !17
  %8 = load float, ptr %b.addr, align 4, !tbaa !17
  %cmp = fcmp olt float %7, %8
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then1
  %9 = load float, ptr %a.addr, align 4, !tbaa !17
  %10 = load float, ptr %b.addr, align 4, !tbaa !17
  %cmp2 = fcmp ogt float %9, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then1
  %11 = phi i1 [ true, %if.then1 ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %12 = load float, ptr %slop.addr, align 4, !tbaa !17
  %cmp4 = fcmp oeq float %12, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else3
  %call = call i32 @memcmp(ptr noundef %a.addr, ptr noundef %b.addr, i64 noundef 4) #11
  %tobool = icmp ne i32 %call, 0
  %lnot6 = xor i1 %tobool, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  store i32 %lnot.ext7, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #11
  %13 = load float, ptr %a.addr, align 4, !tbaa !17
  %14 = load float, ptr %slop.addr, align 4, !tbaa !17
  %sub = fsub float %13, %14
  store float %sub, ptr %lo, align 4, !tbaa !17
  %15 = load float, ptr %lo, align 4, !tbaa !17
  %16 = load float, ptr %a.addr, align 4, !tbaa !17
  %cmp9 = fcmp oeq float %15, %16
  %lnot10 = xor i1 %cmp9, true
  %lnot12 = xor i1 %lnot10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv = sext i32 %lnot.ext13 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool14 = icmp ne i64 %expval, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else8
  %17 = load float, ptr %a.addr, align 4, !tbaa !17
  %call16 = call float @nextafterf(float noundef %17, float noundef 0xFFF0000000000000) #11
  store float %call16, ptr %lo, align 4, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else8
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #11
  %18 = load float, ptr %a.addr, align 4, !tbaa !17
  %19 = load float, ptr %slop.addr, align 4, !tbaa !17
  %add = fadd float %18, %19
  store float %add, ptr %hi, align 4, !tbaa !17
  %20 = load float, ptr %hi, align 4, !tbaa !17
  %21 = load float, ptr %a.addr, align 4, !tbaa !17
  %cmp17 = fcmp oeq float %20, %21
  %lnot19 = xor i1 %cmp17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  %22 = load float, ptr %a.addr, align 4, !tbaa !17
  %call27 = call float @nextafterf(float noundef %22, float noundef 0x7FF0000000000000) #11
  store float %call27, ptr %hi, align 4, !tbaa !17
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end
  %23 = load float, ptr %b.addr, align 4, !tbaa !17
  %24 = load float, ptr %lo, align 4, !tbaa !17
  %cmp29 = fcmp oge float %23, %24
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end28
  %25 = load float, ptr %b.addr, align 4, !tbaa !17
  %26 = load float, ptr %hi, align 4, !tbaa !17
  %cmp31 = fcmp ole float %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end28
  %27 = phi i1 [ false, %if.end28 ], [ %cmp31, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  store i32 %land.ext, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #11
  br label %return

return:                                           ; preds = %land.end, %if.then5, %lor.end, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nounwind uwtable
define internal void @simde_test_debug_printf_(ptr noundef %format, ...) #0 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #11
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1 = load ptr, ptr %format.addr, align 8, !tbaa !9
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call = call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call3 = call i32 @fflush(ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #7

; Function Attrs: nounwind
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: nounwind
declare float @nextafterf(float noundef, float noundef) #8

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: nounwind
declare float @powf(float noundef, float noundef) #8

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_wasm_f64x2_ceil(<2 x i64> noundef %a) #4 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %a_ = alloca %union.simde_v128_private, align 16
  %r_ = alloca %union.simde_v128_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x double> @simde_v128_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde_v128_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #11
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !19
  %cmp = icmp ult i64 %1, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !19
  %mul = mul i64 %2, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !19
  %3 = load <2 x double>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !19
  %4 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !19
  %vecext = extractelement <2 x double> %3, i64 %4
  %5 = call double @llvm.ceil.f64(double %vecext)
  %call1 = call double @simde_math_quiet(double noundef %5), !llvm.access.group !19
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !19
  %7 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !19
  %vecins = insertelement <2 x double> %7, double %call1, i64 %6
  store <2 x double> %vecins, ptr %r_, align 16, !llvm.access.group !19
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !19
  %add2 = add i64 %8, 1
  store i64 %add2, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !19
  br label %omp.inner.for.cond, !llvm.loop !20

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #11
  %coerce.dive3 = getelementptr inbounds %union.simde_v128_private, ptr %r_, i32 0, i32 0
  %9 = load <2 x double>, ptr %coerce.dive3, align 16
  %call4 = call <2 x i64> @simde_v128_from_private(<2 x double> %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  ret <2 x i64> %call4
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_wasm_f64x2_assert_equal_(<2 x i64> noundef %a, <2 x i64> noundef %b, double noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %slop.addr = alloca double, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x double], align 16
  %b_ = alloca [2 x double], align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store double %slop, ptr %slop.addr, align 8, !tbaa !23
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #11
  %arraydecay = getelementptr inbounds [2 x double], ptr %a_, i64 0, i64 0
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_wasm_v128_store(ptr noundef %arraydecay, <2 x i64> noundef %0)
  %arraydecay1 = getelementptr inbounds [2 x double], ptr %b_, i64 0, i64 0
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_wasm_v128_store(ptr noundef %arraydecay1, <2 x i64> noundef %1)
  %arraydecay2 = getelementptr inbounds [2 x double], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [2 x double], ptr %b_, i64 0, i64 0
  %2 = load double, ptr %slop.addr, align 8, !tbaa !23
  %3 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %4 = load i32, ptr %line.addr, align 4, !tbaa !5
  %5 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %6 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf64_(i64 noundef 2, ptr noundef %arraydecay2, ptr noundef %arraydecay3, double noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #11
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal double @simde_test_f64_precision_to_slop(i32 noundef %precision) #0 {
entry:
  %precision.addr = alloca i32, align 4
  store i32 %precision, ptr %precision.addr, align 4, !tbaa !5
  %0 = load i32, ptr %precision.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 2147483647
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %precision.addr, align 4, !tbaa !5
  %conv2 = sitofp i32 %1 to double
  %fneg = fneg double %conv2
  %call = call double @pow(double noundef 1.000000e+01, double noundef %fneg) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %call, %cond.false ]
  ret double %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @simde_math_quiet(double noundef %x) #9 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %tmp = alloca i64, align 8
  %mask = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store double %x, ptr %x.addr, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11
  %0 = load double, ptr %x.addr, align 8, !tbaa !23
  %1 = call i1 @llvm.is.fpclass.f64(double %0, i32 3)
  br i1 %1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load double, ptr %x.addr, align 8, !tbaa !23
  store double %2, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %x.addr, i64 8, i1 false)
  store i64 2146959360, ptr %mask, align 8, !tbaa !11
  %3 = load i64, ptr %mask, align 8, !tbaa !11
  %shl = shl i64 %3, 32
  store i64 %shl, ptr %mask, align 8, !tbaa !11
  %4 = load i64, ptr %mask, align 8, !tbaa !11
  %5 = load i64, ptr %tmp, align 8, !tbaa !11
  %or = or i64 %5, %4
  store i64 %or, ptr %tmp, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %x.addr, ptr align 8 %tmp, i64 8, i1 false)
  %6 = load double, ptr %x.addr, align 8, !tbaa !23
  store double %6, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11
  %7 = load double, ptr %retval, align 8
  ret double %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #7

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vf64_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, double noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %slop.addr = alloca double, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store double %slop, ptr %slop.addr, align 8, !tbaa !23
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %3 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds double, ptr %4, i64 %5
  %6 = load double, ptr %arrayidx, align 8, !tbaa !23
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds double, ptr %7, i64 %8
  %9 = load double, ptr %arrayidx1, align 8, !tbaa !23
  %10 = load double, ptr %slop.addr, align 8, !tbaa !23
  %call = call i32 @simde_test_equal_f64(double noundef %6, double noundef %9, double noundef %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %12 = load i32, ptr %line.addr, align 4, !tbaa !5
  %13 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %14 = load i64, ptr %i, align 8, !tbaa !11
  %15 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %16 = load i64, ptr %i, align 8, !tbaa !11
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds double, ptr %17, i64 %18
  %19 = load double, ptr %arrayidx5, align 8, !tbaa !23
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %21 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx6 = getelementptr inbounds double, ptr %20, i64 %21
  %22 = load double, ptr %arrayidx6, align 8, !tbaa !23
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.8, ptr noundef %11, i32 noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15, i64 noundef %16, double noundef %19, double noundef %22)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %23, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %24 = load i32, ptr %retval, align 4
  ret i32 %24

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_equal_f64(double noundef %a, double noundef %b, double noundef %slop) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %slop.addr = alloca double, align 8
  %lo = alloca double, align 8
  %hi = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !23
  store double %b, ptr %b.addr, align 8, !tbaa !23
  store double %slop, ptr %slop.addr, align 8, !tbaa !23
  %0 = load double, ptr %a.addr, align 8, !tbaa !23
  %1 = call i1 @llvm.is.fpclass.f64(double %0, i32 3)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, ptr %b.addr, align 8, !tbaa !23
  %3 = call i1 @llvm.is.fpclass.f64(double %2, i32 3)
  %4 = zext i1 %3 to i32
  store i32 %4, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load double, ptr %a.addr, align 8, !tbaa !23
  %6 = call i1 @llvm.is.fpclass.f64(double %5, i32 516)
  br i1 %6, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.else
  %7 = load double, ptr %a.addr, align 8, !tbaa !23
  %8 = load double, ptr %b.addr, align 8, !tbaa !23
  %cmp = fcmp olt double %7, %8
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then1
  %9 = load double, ptr %a.addr, align 8, !tbaa !23
  %10 = load double, ptr %b.addr, align 8, !tbaa !23
  %cmp2 = fcmp ogt double %9, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then1
  %11 = phi i1 [ true, %if.then1 ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %12 = load double, ptr %slop.addr, align 8, !tbaa !23
  %cmp4 = fcmp oeq double %12, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else3
  %call = call i32 @memcmp(ptr noundef %a.addr, ptr noundef %b.addr, i64 noundef 8) #11
  %tobool = icmp ne i32 %call, 0
  %lnot6 = xor i1 %tobool, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  store i32 %lnot.ext7, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else3
  call void @llvm.lifetime.start.p0(i64 8, ptr %lo) #11
  %13 = load double, ptr %a.addr, align 8, !tbaa !23
  %14 = load double, ptr %slop.addr, align 8, !tbaa !23
  %sub = fsub double %13, %14
  store double %sub, ptr %lo, align 8, !tbaa !23
  %15 = load double, ptr %lo, align 8, !tbaa !23
  %16 = load double, ptr %a.addr, align 8, !tbaa !23
  %cmp9 = fcmp oeq double %15, %16
  %lnot10 = xor i1 %cmp9, true
  %lnot12 = xor i1 %lnot10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv = sext i32 %lnot.ext13 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool14 = icmp ne i64 %expval, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else8
  %17 = load double, ptr %a.addr, align 8, !tbaa !23
  %call16 = call double @nextafter(double noundef %17, double noundef 0xFFF0000000000000) #11
  store double %call16, ptr %lo, align 8, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #11
  %18 = load double, ptr %a.addr, align 8, !tbaa !23
  %19 = load double, ptr %slop.addr, align 8, !tbaa !23
  %add = fadd double %18, %19
  store double %add, ptr %hi, align 8, !tbaa !23
  %20 = load double, ptr %hi, align 8, !tbaa !23
  %21 = load double, ptr %a.addr, align 8, !tbaa !23
  %cmp17 = fcmp oeq double %20, %21
  %lnot19 = xor i1 %cmp17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  %22 = load double, ptr %a.addr, align 8, !tbaa !23
  %call27 = call double @nextafter(double noundef %22, double noundef 0x7FF0000000000000) #11
  store double %call27, ptr %hi, align 8, !tbaa !23
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end
  %23 = load double, ptr %b.addr, align 8, !tbaa !23
  %24 = load double, ptr %lo, align 8, !tbaa !23
  %cmp29 = fcmp oge double %23, %24
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end28
  %25 = load double, ptr %b.addr, align 8, !tbaa !23
  %26 = load double, ptr %hi, align 8, !tbaa !23
  %cmp31 = fcmp ole double %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end28
  %27 = phi i1 [ false, %if.end28 ], [ %cmp31, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  store i32 %land.ext, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %lo) #11
  br label %return

return:                                           ; preds = %land.end, %if.then5, %lor.end, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind
declare double @nextafter(double noundef, double noundef) #8

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"", !10, i64 0, !10, i64 8}
!15 = !{!14, !10, i64 8}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !7, i64 0}
!19 = distinct !{}
!20 = distinct !{!20, !21, !22}
!21 = !{!"llvm.loop.parallel_accesses", !19}
!22 = !{!"llvm.loop.vectorize.enable", i1 true}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !7, i64 0}

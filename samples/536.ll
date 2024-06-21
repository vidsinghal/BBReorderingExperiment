; ModuleID = 'samples/536.bc'
source_filename = "../spack-src/test/wasm/simd128/splat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { i8, [16 x i8] }
%struct.anon.1 = type { i16, [8 x i16] }
%struct.anon.2 = type { i32, [4 x i32] }
%struct.anon.3 = type { i64, [2 x i64] }
%struct.anon.4 = type { float, [4 x float] }
%struct.anon.5 = type { double, [2 x double] }
%union.simde_v128_private = type { <16 x i8> }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"1..%zu\0A\00", align 1
@test_suite_tests = internal constant [6 x %struct.anon] [%struct.anon { ptr @test_simde_wasm_i8x16_splat, ptr @.str.3 }, %struct.anon { ptr @test_simde_wasm_i16x8_splat, ptr @.str.4 }, %struct.anon { ptr @test_simde_wasm_i32x4_splat, ptr @.str.5 }, %struct.anon { ptr @test_simde_wasm_i64x2_splat, ptr @.str.6 }, %struct.anon { ptr @test_simde_wasm_f32x4_splat, ptr @.str.7 }, %struct.anon { ptr @test_simde_wasm_f64x2_splat, ptr @.str.8 }], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"not ok %zu splat/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ok %zu splat/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"wasm_i8x16_splat\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"wasm_i16x8_splat\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"wasm_i32x4_splat\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"wasm_i64x2_splat\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"wasm_f32x4_splat\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"wasm_f64x2_splat\00", align 1
@test_simde_wasm_i8x16_splat.test_vec = internal constant [8 x %struct.anon.0] [%struct.anon.0 { i8 110, [16 x i8] c"nnnnnnnnnnnnnnnn" }, %struct.anon.0 { i8 -74, [16 x i8] c"\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6" }, %struct.anon.0 { i8 4, [16 x i8] c"\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04" }, %struct.anon.0 { i8 -90, [16 x i8] c"\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6" }, %struct.anon.0 { i8 17, [16 x i8] c"\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11" }, %struct.anon.0 { i8 -38, [16 x i8] c"\DA\DA\DA\DA\DA\DA\DA\DA\DA\DA\DA\DA\DA\DA\DA\DA" }, %struct.anon.0 { i8 3, [16 x i8] c"\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03" }, %struct.anon.0 { i8 37, [16 x i8] c"%%%%%%%%%%%%%%%%" }], align 16
@.str.9 = private unnamed_addr constant [39 x i8] c"../spack-src/test/wasm/simd128/splat.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"simde_wasm_v128_load(test_vec[i].r)\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%d == %d)\0A\00", align 1
@stderr = external global ptr, align 8
@test_simde_wasm_i16x8_splat.test_vec = internal constant [8 x %struct.anon.1] [%struct.anon.1 { i16 10757, [8 x i16] [i16 10757, i16 10757, i16 10757, i16 10757, i16 10757, i16 10757, i16 10757, i16 10757] }, %struct.anon.1 { i16 3379, [8 x i16] [i16 3379, i16 3379, i16 3379, i16 3379, i16 3379, i16 3379, i16 3379, i16 3379] }, %struct.anon.1 { i16 -2123, [8 x i16] [i16 -2123, i16 -2123, i16 -2123, i16 -2123, i16 -2123, i16 -2123, i16 -2123, i16 -2123] }, %struct.anon.1 { i16 19159, [8 x i16] [i16 19159, i16 19159, i16 19159, i16 19159, i16 19159, i16 19159, i16 19159, i16 19159] }, %struct.anon.1 { i16 -29304, [8 x i16] [i16 -29304, i16 -29304, i16 -29304, i16 -29304, i16 -29304, i16 -29304, i16 -29304, i16 -29304] }, %struct.anon.1 { i16 -2227, [8 x i16] [i16 -2227, i16 -2227, i16 -2227, i16 -2227, i16 -2227, i16 -2227, i16 -2227, i16 -2227] }, %struct.anon.1 { i16 5895, [8 x i16] [i16 5895, i16 5895, i16 5895, i16 5895, i16 5895, i16 5895, i16 5895, i16 5895] }, %struct.anon.1 { i16 -10706, [8 x i16] [i16 -10706, i16 -10706, i16 -10706, i16 -10706, i16 -10706, i16 -10706, i16 -10706, i16 -10706] }], align 16
@test_simde_wasm_i32x4_splat.test_vec = internal constant [8 x %struct.anon.2] [%struct.anon.2 { i32 603881482, [4 x i32] [i32 603881482, i32 603881482, i32 603881482, i32 603881482] }, %struct.anon.2 { i32 -954623974, [4 x i32] [i32 -954623974, i32 -954623974, i32 -954623974, i32 -954623974] }, %struct.anon.2 { i32 1855322919, [4 x i32] [i32 1855322919, i32 1855322919, i32 1855322919, i32 1855322919] }, %struct.anon.2 { i32 -1794642062, [4 x i32] [i32 -1794642062, i32 -1794642062, i32 -1794642062, i32 -1794642062] }, %struct.anon.2 { i32 -26506932, [4 x i32] [i32 -26506932, i32 -26506932, i32 -26506932, i32 -26506932] }, %struct.anon.2 { i32 1198458724, [4 x i32] [i32 1198458724, i32 1198458724, i32 1198458724, i32 1198458724] }, %struct.anon.2 { i32 339735158, [4 x i32] [i32 339735158, i32 339735158, i32 339735158, i32 339735158] }, %struct.anon.2 { i32 -965906634, [4 x i32] [i32 -965906634, i32 -965906634, i32 -965906634, i32 -965906634] }], align 16
@test_simde_wasm_i64x2_splat.test_vec = internal constant [8 x %struct.anon.3] [%struct.anon.3 { i64 -247663184558754775, [2 x i64] [i64 -247663184558754775, i64 -247663184558754775] }, %struct.anon.3 { i64 -9149092932308377280, [2 x i64] [i64 -9149092932308377280, i64 -9149092932308377280] }, %struct.anon.3 { i64 3325648116972821275, [2 x i64] [i64 3325648116972821275, i64 3325648116972821275] }, %struct.anon.3 { i64 1534122929546164350, [2 x i64] [i64 1534122929546164350, i64 1534122929546164350] }, %struct.anon.3 { i64 -1031430905345914519, [2 x i64] [i64 -1031430905345914519, i64 -1031430905345914519] }, %struct.anon.3 { i64 6132967977206274051, [2 x i64] [i64 6132967977206274051, i64 6132967977206274051] }, %struct.anon.3 { i64 7401617413683461537, [2 x i64] [i64 7401617413683461537, i64 7401617413683461537] }, %struct.anon.3 { i64 3138642831338160560, [2 x i64] [i64 3138642831338160560, i64 3138642831338160560] }], align 16
@.str.13 = private unnamed_addr constant [58 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%ld == %ld)\0A\00", align 1
@test_simde_wasm_f32x4_splat.test_vec = internal constant [8 x %struct.anon.4] [%struct.anon.4 { float 0x40821B70A0000000, [4 x float] [float 0x40821B70A0000000, float 0x40821B70A0000000, float 0x40821B70A0000000, float 0x40821B70A0000000] }, %struct.anon.4 { float 0xC08D6D0A40000000, [4 x float] [float 0xC08D6D0A40000000, float 0xC08D6D0A40000000, float 0xC08D6D0A40000000, float 0xC08D6D0A40000000] }, %struct.anon.4 { float 0xC07F2A8F60000000, [4 x float] [float 0xC07F2A8F60000000, float 0xC07F2A8F60000000, float 0xC07F2A8F60000000, float 0xC07F2A8F60000000] }, %struct.anon.4 { float 0x4081CE8F60000000, [4 x float] [float 0x4081CE8F60000000, float 0x4081CE8F60000000, float 0x4081CE8F60000000, float 0x4081CE8F60000000] }, %struct.anon.4 { float 0xC0872A7AE0000000, [4 x float] [float 0xC0872A7AE0000000, float 0xC0872A7AE0000000, float 0xC0872A7AE0000000, float 0xC0872A7AE0000000] }, %struct.anon.4 { float 0x408A8799A0000000, [4 x float] [float 0x408A8799A0000000, float 0x408A8799A0000000, float 0x408A8799A0000000, float 0x408A8799A0000000] }, %struct.anon.4 { float 0xC081E0B860000000, [4 x float] [float 0xC081E0B860000000, float 0xC081E0B860000000, float 0xC081E0B860000000, float 0xC081E0B860000000] }, %struct.anon.4 { float 0xC063B47AE0000000, [4 x float] [float 0xC063B47AE0000000, float 0xC063B47AE0000000, float 0xC063B47AE0000000, float 0xC063B47AE0000000] }], align 16
@.str.14 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] ~= %s[%zu] (%f ~= %f)\0A\00", align 1
@test_simde_wasm_f64x2_splat.test_vec = internal constant [8 x %struct.anon.5] [%struct.anon.5 { double 0xC08B506666666666, [2 x double] [double 0xC08B506666666666, double 0xC08B506666666666] }, %struct.anon.5 { double 6.453200e+02, [2 x double] [double 6.453200e+02, double 6.453200e+02] }, %struct.anon.5 { double -6.340500e+02, [2 x double] [double -6.340500e+02, double -6.340500e+02] }, %struct.anon.5 { double 4.027800e+02, [2 x double] [double 4.027800e+02, double 4.027800e+02] }, %struct.anon.5 { double -4.713100e+02, [2 x double] [double -4.713100e+02, double -4.713100e+02] }, %struct.anon.5 { double 4.152000e+02, [2 x double] [double 4.152000e+02, double 4.152000e+02] }, %struct.anon.5 { double -2.087300e+02, [2 x double] [double -2.087300e+02, double -2.087300e+02] }, %struct.anon.5 { double 5.149000e+02, [2 x double] [double 5.149000e+02, double 5.149000e+02] }], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #10
  store i32 0, ptr %retval1, align 4, !tbaa !5
  %0 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef 6)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 6
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #10
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [6 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %2
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
  %arrayidx4 = getelementptr inbounds [6 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %7
  %name = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !15
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %add, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %10, 1
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [6 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %11
  %name8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1
  %12 = load ptr, ptr %name8, align 8, !tbaa !15
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, i64 noundef %add6, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load i32, ptr %retval1, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #10
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_wasm_i8x16_splat() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup5

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_wasm_i8x16_splat.test_vec, i64 0, i64 %1
  %a = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %a, align 1, !tbaa !16
  %call = call <4 x i32> @simde_wasm_i8x16_splat(i8 noundef signext %2)
  store <4 x i32> %call, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <4 x i32>, ptr %r, align 16, !tbaa !18
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_wasm_i8x16_splat.test_vec, i64 0, i64 %4
  %r2 = getelementptr inbounds %struct.anon.0, ptr %arrayidx1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i8], ptr %r2, i64 0, i64 0
  %call3 = call <4 x i32> @simde_wasm_v128_load(ptr noundef %arraydecay)
  %call4 = call i32 @simde_test_wasm_i8x16_assert_equal_(<4 x i32> noundef %3, <4 x i32> noundef %call3, ptr noundef @.str.9, i32 noundef 63, ptr noundef @.str.10, ptr noundef @.str.11)
  %tobool = icmp ne i32 %call4, 0
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup5:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest6 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest6, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup5
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup5
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_wasm_i16x8_splat() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup5

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_wasm_i16x8_splat.test_vec, i64 0, i64 %1
  %a = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0
  %2 = load i16, ptr %a, align 2, !tbaa !19
  %call = call <4 x i32> @simde_wasm_i16x8_splat(i16 noundef signext %2)
  store <4 x i32> %call, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <4 x i32>, ptr %r, align 16, !tbaa !18
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_wasm_i16x8_splat.test_vec, i64 0, i64 %4
  %r2 = getelementptr inbounds %struct.anon.1, ptr %arrayidx1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i16], ptr %r2, i64 0, i64 0
  %call3 = call <4 x i32> @simde_wasm_v128_load(ptr noundef %arraydecay)
  %call4 = call i32 @simde_test_wasm_i16x8_assert_equal_(<4 x i32> noundef %3, <4 x i32> noundef %call3, ptr noundef @.str.9, i32 noundef 108, ptr noundef @.str.10, ptr noundef @.str.11)
  %tobool = icmp ne i32 %call4, 0
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup5:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest6 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest6, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup5
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup5
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_wasm_i32x4_splat() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup5

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_wasm_i32x4_splat.test_vec, i64 0, i64 %1
  %a = getelementptr inbounds %struct.anon.2, ptr %arrayidx, i32 0, i32 0
  %2 = load i32, ptr %a, align 4, !tbaa !22
  %call = call <4 x i32> @simde_wasm_i32x4_splat(i32 noundef %2)
  store <4 x i32> %call, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <4 x i32>, ptr %r, align 16, !tbaa !18
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_wasm_i32x4_splat.test_vec, i64 0, i64 %4
  %r2 = getelementptr inbounds %struct.anon.2, ptr %arrayidx1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i32], ptr %r2, i64 0, i64 0
  %call3 = call <4 x i32> @simde_wasm_v128_load(ptr noundef %arraydecay)
  %call4 = call i32 @simde_test_wasm_i32x4_assert_equal_(<4 x i32> noundef %3, <4 x i32> noundef %call3, ptr noundef @.str.9, i32 noundef 153, ptr noundef @.str.10, ptr noundef @.str.11)
  %tobool = icmp ne i32 %call4, 0
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup5:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest6 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest6, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup5
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup5
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_wasm_i64x2_splat() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup5

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.3], ptr @test_simde_wasm_i64x2_splat.test_vec, i64 0, i64 %1
  %a = getelementptr inbounds %struct.anon.3, ptr %arrayidx, i32 0, i32 0
  %2 = load i64, ptr %a, align 8, !tbaa !24
  %call = call <4 x i32> @simde_wasm_i64x2_splat(i64 noundef %2)
  store <4 x i32> %call, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <4 x i32>, ptr %r, align 16, !tbaa !18
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds [8 x %struct.anon.3], ptr @test_simde_wasm_i64x2_splat.test_vec, i64 0, i64 %4
  %r2 = getelementptr inbounds %struct.anon.3, ptr %arrayidx1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2 x i64], ptr %r2, i64 0, i64 0
  %call3 = call <4 x i32> @simde_wasm_v128_load(ptr noundef %arraydecay)
  %call4 = call i32 @simde_test_wasm_i64x2_assert_equal_(<4 x i32> noundef %3, <4 x i32> noundef %call3, ptr noundef @.str.9, i32 noundef 198, ptr noundef @.str.10, ptr noundef @.str.11)
  %tobool = icmp ne i32 %call4, 0
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup5:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest6 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest6, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup5
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup5
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_wasm_f32x4_splat() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup6

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.4], ptr @test_simde_wasm_f32x4_splat.test_vec, i64 0, i64 %1
  %a = getelementptr inbounds %struct.anon.4, ptr %arrayidx, i32 0, i32 0
  %2 = load float, ptr %a, align 4, !tbaa !26
  %call = call <4 x i32> @simde_wasm_f32x4_splat(float noundef %2)
  store <4 x i32> %call, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <4 x i32>, ptr %r, align 16, !tbaa !18
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds [8 x %struct.anon.4], ptr @test_simde_wasm_f32x4_splat.test_vec, i64 0, i64 %4
  %r2 = getelementptr inbounds %struct.anon.4, ptr %arrayidx1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x float], ptr %r2, i64 0, i64 0
  %call3 = call <4 x i32> @simde_wasm_v128_load(ptr noundef %arraydecay)
  %call4 = call float @simde_test_f32_precision_to_slop(i32 noundef 2147483647)
  %call5 = call i32 @simde_test_wasm_f32x4_assert_equal_(<4 x i32> noundef %3, <4 x i32> noundef %call3, float noundef %call4, ptr noundef @.str.9, i32 noundef 243, ptr noundef @.str.10, ptr noundef @.str.11)
  %tobool = icmp ne i32 %call5, 0
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup6:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest7 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest7, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup6
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup6
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup6
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_wasm_f64x2_splat() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup6

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.5], ptr @test_simde_wasm_f64x2_splat.test_vec, i64 0, i64 %1
  %a = getelementptr inbounds %struct.anon.5, ptr %arrayidx, i32 0, i32 0
  %2 = load double, ptr %a, align 8, !tbaa !29
  %call = call <4 x i32> @simde_wasm_f64x2_splat(double noundef %2)
  store <4 x i32> %call, ptr %r, align 16, !tbaa !18
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <4 x i32>, ptr %r, align 16, !tbaa !18
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds [8 x %struct.anon.5], ptr @test_simde_wasm_f64x2_splat.test_vec, i64 0, i64 %4
  %r2 = getelementptr inbounds %struct.anon.5, ptr %arrayidx1, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2 x double], ptr %r2, i64 0, i64 0
  %call3 = call <4 x i32> @simde_wasm_v128_load(ptr noundef %arraydecay)
  %call4 = call double @simde_test_f64_precision_to_slop(i32 noundef 2147483647)
  %call5 = call i32 @simde_test_wasm_f64x2_assert_equal_(<4 x i32> noundef %3, <4 x i32> noundef %call3, double noundef %call4, ptr noundef @.str.9, i32 noundef 288, ptr noundef @.str.10, ptr noundef @.str.11)
  %tobool = icmp ne i32 %call5, 0
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup6:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest7 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest7, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup6
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup6
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup6
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_wasm_i8x16_splat(i8 noundef signext %a) #4 {
entry:
  %a.addr = alloca i8, align 1
  %r_ = alloca %union.simde_v128_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i8 %a, ptr %a.addr, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #10
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !32
  %cmp = icmp ult i64 %0, 16
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !32
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %2 = load i8, ptr %a.addr, align 1, !tbaa !18, !llvm.access.group !32
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %4 = load <16 x i8>, ptr %r_, align 16, !llvm.access.group !32
  %vecins = insertelement <16 x i8> %4, i8 %2, i64 %3
  store <16 x i8> %vecins, ptr %r_, align 16, !llvm.access.group !32
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !32
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !32
  br label %omp.inner.for.cond, !llvm.loop !33

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 16, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #10
  %coerce.dive = getelementptr inbounds %union.simde_v128_private, ptr %r_, i32 0, i32 0
  %6 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_v128_from_private(<2 x double> %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #10
  ret <4 x i32> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_wasm_i8x16_assert_equal_(<4 x i32> noundef %a, <4 x i32> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i8], align 16
  %b_ = alloca [16 x i8], align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !18
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #10
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !18
  call void @simde_wasm_v128_store(ptr noundef %arraydecay, <4 x i32> noundef %0)
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !18
  call void @simde_wasm_v128_store(ptr noundef %arraydecay1, <4 x i32> noundef %1)
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi8_(i64 noundef 16, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #10
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_wasm_v128_load(ptr noundef %mem) #4 {
entry:
  %mem.addr = alloca ptr, align 8
  %r = alloca <4 x i32>, align 16
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10
  %0 = load ptr, ptr %mem.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 1 %0, i64 16, i1 false)
  %1 = load <4 x i32>, ptr %r, align 16, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10
  ret <4 x i32> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_v128_from_private(<2 x double> %v.coerce) #4 {
entry:
  %v = alloca %union.simde_v128_private, align 16
  %r = alloca <4 x i32>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_v128_private, ptr %v, i32 0, i32 0
  store <2 x double> %v.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #10
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %v, i64 16, i1 false)
  %0 = load <4 x i32>, ptr %r, align 16, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #10
  ret <4 x i32> %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_wasm_v128_store(ptr noundef %mem, <4 x i32> noundef %a) #4 {
entry:
  %mem.addr = alloca ptr, align 8
  %a.addr = alloca <4 x i32>, align 16
  store ptr %mem, ptr %mem.addr, align 8, !tbaa !9
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !18
  %0 = load ptr, ptr %mem.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 16 %a.addr, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vi8_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
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
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !18
  %conv = sext i8 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx1, align 1, !tbaa !18
  %conv2 = sext i8 %9 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  %lnot = xor i1 %cmp3, true
  %lnot5 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv6 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %11 = load i32, ptr %line.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds i8, ptr %16, i64 %17
  %18 = load i8, ptr %arrayidx7, align 1, !tbaa !18
  %conv8 = sext i8 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i8, ptr %19, i64 %20
  %21 = load i8, ptr %arrayidx9, align 1, !tbaa !18
  %conv10 = sext i8 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.12, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nounwind uwtable
define internal void @simde_test_debug_printf_(ptr noundef %format, ...) #0 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #10
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
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #10
  ret void
}

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_wasm_i16x8_splat(i16 noundef signext %a) #4 {
entry:
  %a.addr = alloca i16, align 2
  %r_ = alloca %union.simde_v128_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i16 %a, ptr %a.addr, align 2, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #10
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !37
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !37
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !37
  %2 = load i16, ptr %a.addr, align 2, !tbaa !36, !llvm.access.group !37
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !37
  %4 = load <8 x i16>, ptr %r_, align 16, !llvm.access.group !37
  %vecins = insertelement <8 x i16> %4, i16 %2, i64 %3
  store <8 x i16> %vecins, ptr %r_, align 16, !llvm.access.group !37
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !37
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !37
  br label %omp.inner.for.cond, !llvm.loop !38

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #10
  %coerce.dive = getelementptr inbounds %union.simde_v128_private, ptr %r_, i32 0, i32 0
  %6 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_v128_from_private(<2 x double> %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #10
  ret <4 x i32> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_wasm_i16x8_assert_equal_(<4 x i32> noundef %a, <4 x i32> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i16], align 16
  %b_ = alloca [8 x i16], align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !18
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #10
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !18
  call void @simde_wasm_v128_store(ptr noundef %arraydecay, <4 x i32> noundef %0)
  %arraydecay1 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !18
  call void @simde_wasm_v128_store(ptr noundef %arraydecay1, <4 x i32> noundef %1)
  %arraydecay2 = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi16_(i64 noundef 8, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #10
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vi16_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
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
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 %5
  %6 = load i16, ptr %arrayidx, align 2, !tbaa !36
  %conv = sext i16 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i16, ptr %7, i64 %8
  %9 = load i16, ptr %arrayidx1, align 2, !tbaa !36
  %conv2 = sext i16 %9 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  %lnot = xor i1 %cmp3, true
  %lnot5 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv6 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %11 = load i32, ptr %line.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds i16, ptr %16, i64 %17
  %18 = load i16, ptr %arrayidx7, align 2, !tbaa !36
  %conv8 = sext i16 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i16, ptr %19, i64 %20
  %21 = load i16, ptr %arrayidx9, align 2, !tbaa !36
  %conv10 = sext i16 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.12, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_wasm_i32x4_splat(i32 noundef %a) #4 {
entry:
  %a.addr = alloca i32, align 4
  %r_ = alloca %union.simde_v128_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i32 %a, ptr %a.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #10
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !40
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !40
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !40
  %2 = load i32, ptr %a.addr, align 4, !tbaa !5, !llvm.access.group !40
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !40
  %4 = load <4 x i32>, ptr %r_, align 16, !llvm.access.group !40
  %vecins = insertelement <4 x i32> %4, i32 %2, i64 %3
  store <4 x i32> %vecins, ptr %r_, align 16, !llvm.access.group !40
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !40
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !40
  br label %omp.inner.for.cond, !llvm.loop !41

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #10
  %coerce.dive = getelementptr inbounds %union.simde_v128_private, ptr %r_, i32 0, i32 0
  %6 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_v128_from_private(<2 x double> %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #10
  ret <4 x i32> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_wasm_i32x4_assert_equal_(<4 x i32> noundef %a, <4 x i32> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i32], align 16
  %b_ = alloca [4 x i32], align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !18
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #10
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !18
  call void @simde_wasm_v128_store(ptr noundef %arraydecay, <4 x i32> noundef %0)
  %arraydecay1 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !18
  call void @simde_wasm_v128_store(ptr noundef %arraydecay1, <4 x i32> noundef %1)
  %arraydecay2 = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi32_(i64 noundef 4, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #10
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vi32_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
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
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %5
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i32, ptr %7, i64 %8
  %9 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %6, %9
  %lnot = xor i1 %cmp2, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %11 = load i32, ptr %line.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds i32, ptr %16, i64 %17
  %18 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds i32, ptr %19, i64 %20
  %21 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.12, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %18, i32 noundef %21)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_wasm_i64x2_splat(i64 noundef %a) #4 {
entry:
  %a.addr = alloca i64, align 8
  %r_ = alloca %union.simde_v128_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #10
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !43
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !43
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !43
  %2 = load i64, ptr %a.addr, align 8, !tbaa !11, !llvm.access.group !43
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !43
  %4 = load <2 x i64>, ptr %r_, align 16, !llvm.access.group !43
  %vecins = insertelement <2 x i64> %4, i64 %2, i64 %3
  store <2 x i64> %vecins, ptr %r_, align 16, !llvm.access.group !43
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !43
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !43
  br label %omp.inner.for.cond, !llvm.loop !44

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #10
  %coerce.dive = getelementptr inbounds %union.simde_v128_private, ptr %r_, i32 0, i32 0
  %6 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_v128_from_private(<2 x double> %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #10
  ret <4 x i32> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_wasm_i64x2_assert_equal_(<4 x i32> noundef %a, <4 x i32> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x i64], align 16
  %b_ = alloca [2 x i64], align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !18
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !18
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #10
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !18
  call void @simde_wasm_v128_store(ptr noundef %arraydecay, <4 x i32> noundef %0)
  %arraydecay1 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !18
  call void @simde_wasm_v128_store(ptr noundef %arraydecay1, <4 x i32> noundef %1)
  %arraydecay2 = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi64_(i64 noundef 2, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #10
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vi64_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
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
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %5
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i64, ptr %7, i64 %8
  %9 = load i64, ptr %arrayidx1, align 8, !tbaa !11
  %cmp2 = icmp ne i64 %6, %9
  %lnot = xor i1 %cmp2, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %11 = load i32, ptr %line.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds i64, ptr %16, i64 %17
  %18 = load i64, ptr %arrayidx4, align 8, !tbaa !11
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds i64, ptr %19, i64 %20
  %21 = load i64, ptr %arrayidx5, align 8, !tbaa !11
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.13, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %18, i64 noundef %21)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_wasm_f32x4_splat(float noundef %a) #4 {
entry:
  %a.addr = alloca float, align 4
  %r_ = alloca %union.simde_v128_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store float %a, ptr %a.addr, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #10
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !47
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !47
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !47
  %2 = load float, ptr %a.addr, align 4, !tbaa !46, !llvm.access.group !47
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !47
  %4 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !47
  %vecins = insertelement <4 x float> %4, float %2, i64 %3
  store <4 x float> %vecins, ptr %r_, align 16, !llvm.access.group !47
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !47
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !47
  br label %omp.inner.for.cond, !llvm.loop !48

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #10
  %coerce.dive = getelementptr inbounds %union.simde_v128_private, ptr %r_, i32 0, i32 0
  %6 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_v128_from_private(<2 x double> %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #10
  ret <4 x i32> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_wasm_f32x4_assert_equal_(<4 x i32> noundef %a, <4 x i32> noundef %b, float noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %slop.addr = alloca float, align 4
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x float], align 16
  %b_ = alloca [4 x float], align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !18
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !18
  store float %slop, ptr %slop.addr, align 4, !tbaa !46
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #10
  %arraydecay = getelementptr inbounds [4 x float], ptr %a_, i64 0, i64 0
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !18
  call void @simde_wasm_v128_store(ptr noundef %arraydecay, <4 x i32> noundef %0)
  %arraydecay1 = getelementptr inbounds [4 x float], ptr %b_, i64 0, i64 0
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !18
  call void @simde_wasm_v128_store(ptr noundef %arraydecay1, <4 x i32> noundef %1)
  %arraydecay2 = getelementptr inbounds [4 x float], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x float], ptr %b_, i64 0, i64 0
  %2 = load float, ptr %slop.addr, align 4, !tbaa !46
  %3 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %4 = load i32, ptr %line.addr, align 4, !tbaa !5
  %5 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %6 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf32_(i64 noundef 4, ptr noundef %arraydecay2, ptr noundef %arraydecay3, float noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #10
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
  %call = call float @powf(float noundef 1.000000e+01, float noundef %fneg) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 0.000000e+00, %cond.true ], [ %call, %cond.false ]
  ret float %cond
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
  store float %slop, ptr %slop.addr, align 4, !tbaa !46
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
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
  %6 = load float, ptr %arrayidx, align 4, !tbaa !46
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds float, ptr %7, i64 %8
  %9 = load float, ptr %arrayidx1, align 4, !tbaa !46
  %10 = load float, ptr %slop.addr, align 4, !tbaa !46
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
  %19 = load float, ptr %arrayidx5, align 4, !tbaa !46
  %conv6 = fpext float %19 to double
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %21 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds float, ptr %20, i64 %21
  %22 = load float, ptr %arrayidx7, align 4, !tbaa !46
  %conv8 = fpext float %22 to double
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.14, ptr noundef %11, i32 noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15, i64 noundef %16, double noundef %conv6, double noundef %conv8)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
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
define internal i32 @simde_test_equal_f32(float noundef %a, float noundef %b, float noundef %slop) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %slop.addr = alloca float, align 4
  %lo = alloca float, align 4
  %hi = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !46
  store float %b, ptr %b.addr, align 4, !tbaa !46
  store float %slop, ptr %slop.addr, align 4, !tbaa !46
  %0 = load float, ptr %a.addr, align 4, !tbaa !46
  %1 = call i1 @llvm.is.fpclass.f32(float %0, i32 3)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !46
  %3 = call i1 @llvm.is.fpclass.f32(float %2, i32 3)
  %4 = zext i1 %3 to i32
  store i32 %4, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load float, ptr %a.addr, align 4, !tbaa !46
  %6 = call i1 @llvm.is.fpclass.f32(float %5, i32 516)
  br i1 %6, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.else
  %7 = load float, ptr %a.addr, align 4, !tbaa !46
  %8 = load float, ptr %b.addr, align 4, !tbaa !46
  %cmp = fcmp olt float %7, %8
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then1
  %9 = load float, ptr %a.addr, align 4, !tbaa !46
  %10 = load float, ptr %b.addr, align 4, !tbaa !46
  %cmp2 = fcmp ogt float %9, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then1
  %11 = phi i1 [ true, %if.then1 ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %12 = load float, ptr %slop.addr, align 4, !tbaa !46
  %cmp4 = fcmp oeq float %12, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else3
  %call = call i32 @memcmp(ptr noundef %a.addr, ptr noundef %b.addr, i64 noundef 4) #10
  %tobool = icmp ne i32 %call, 0
  %lnot6 = xor i1 %tobool, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  store i32 %lnot.ext7, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #10
  %13 = load float, ptr %a.addr, align 4, !tbaa !46
  %14 = load float, ptr %slop.addr, align 4, !tbaa !46
  %sub = fsub float %13, %14
  store float %sub, ptr %lo, align 4, !tbaa !46
  %15 = load float, ptr %lo, align 4, !tbaa !46
  %16 = load float, ptr %a.addr, align 4, !tbaa !46
  %cmp9 = fcmp oeq float %15, %16
  %lnot10 = xor i1 %cmp9, true
  %lnot12 = xor i1 %lnot10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv = sext i32 %lnot.ext13 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool14 = icmp ne i64 %expval, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else8
  %17 = load float, ptr %a.addr, align 4, !tbaa !46
  %call16 = call float @nextafterf(float noundef %17, float noundef 0xFFF0000000000000) #10
  store float %call16, ptr %lo, align 4, !tbaa !46
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else8
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #10
  %18 = load float, ptr %a.addr, align 4, !tbaa !46
  %19 = load float, ptr %slop.addr, align 4, !tbaa !46
  %add = fadd float %18, %19
  store float %add, ptr %hi, align 4, !tbaa !46
  %20 = load float, ptr %hi, align 4, !tbaa !46
  %21 = load float, ptr %a.addr, align 4, !tbaa !46
  %cmp17 = fcmp oeq float %20, %21
  %lnot19 = xor i1 %cmp17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  %22 = load float, ptr %a.addr, align 4, !tbaa !46
  %call27 = call float @nextafterf(float noundef %22, float noundef 0x7FF0000000000000) #10
  store float %call27, ptr %hi, align 4, !tbaa !46
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end
  %23 = load float, ptr %b.addr, align 4, !tbaa !46
  %24 = load float, ptr %lo, align 4, !tbaa !46
  %cmp29 = fcmp oge float %23, %24
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end28
  %25 = load float, ptr %b.addr, align 4, !tbaa !46
  %26 = load float, ptr %hi, align 4, !tbaa !46
  %cmp31 = fcmp ole float %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end28
  %27 = phi i1 [ false, %if.end28 ], [ %cmp31, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  store i32 %land.ext, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #10
  br label %return

return:                                           ; preds = %land.end, %if.then5, %lor.end, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #7

; Function Attrs: nounwind
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #8

; Function Attrs: nounwind
declare float @nextafterf(float noundef, float noundef) #8

; Function Attrs: nounwind
declare float @powf(float noundef, float noundef) #8

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_wasm_f64x2_splat(double noundef %a) #4 {
entry:
  %a.addr = alloca double, align 8
  %r_ = alloca %union.simde_v128_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #10
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !51
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !51
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !51
  %2 = load double, ptr %a.addr, align 8, !tbaa !50, !llvm.access.group !51
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !51
  %4 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !51
  %vecins = insertelement <2 x double> %4, double %2, i64 %3
  store <2 x double> %vecins, ptr %r_, align 16, !llvm.access.group !51
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !51
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !51
  br label %omp.inner.for.cond, !llvm.loop !52

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #10
  %coerce.dive = getelementptr inbounds %union.simde_v128_private, ptr %r_, i32 0, i32 0
  %6 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_v128_from_private(<2 x double> %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #10
  ret <4 x i32> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_wasm_f64x2_assert_equal_(<4 x i32> noundef %a, <4 x i32> noundef %b, double noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %slop.addr = alloca double, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x double], align 16
  %b_ = alloca [2 x double], align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !18
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !18
  store double %slop, ptr %slop.addr, align 8, !tbaa !50
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #10
  %arraydecay = getelementptr inbounds [2 x double], ptr %a_, i64 0, i64 0
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !18
  call void @simde_wasm_v128_store(ptr noundef %arraydecay, <4 x i32> noundef %0)
  %arraydecay1 = getelementptr inbounds [2 x double], ptr %b_, i64 0, i64 0
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !18
  call void @simde_wasm_v128_store(ptr noundef %arraydecay1, <4 x i32> noundef %1)
  %arraydecay2 = getelementptr inbounds [2 x double], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [2 x double], ptr %b_, i64 0, i64 0
  %2 = load double, ptr %slop.addr, align 8, !tbaa !50
  %3 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %4 = load i32, ptr %line.addr, align 4, !tbaa !5
  %5 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %6 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf64_(i64 noundef 2, ptr noundef %arraydecay2, ptr noundef %arraydecay3, double noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #10
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
  %call = call double @pow(double noundef 1.000000e+01, double noundef %fneg) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %call, %cond.false ]
  ret double %cond
}

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
  store double %slop, ptr %slop.addr, align 8, !tbaa !50
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #10
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
  %6 = load double, ptr %arrayidx, align 8, !tbaa !50
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds double, ptr %7, i64 %8
  %9 = load double, ptr %arrayidx1, align 8, !tbaa !50
  %10 = load double, ptr %slop.addr, align 8, !tbaa !50
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
  %19 = load double, ptr %arrayidx5, align 8, !tbaa !50
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %21 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx6 = getelementptr inbounds double, ptr %20, i64 %21
  %22 = load double, ptr %arrayidx6, align 8, !tbaa !50
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.14, ptr noundef %11, i32 noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15, i64 noundef %16, double noundef %19, double noundef %22)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #10
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
  store double %a, ptr %a.addr, align 8, !tbaa !50
  store double %b, ptr %b.addr, align 8, !tbaa !50
  store double %slop, ptr %slop.addr, align 8, !tbaa !50
  %0 = load double, ptr %a.addr, align 8, !tbaa !50
  %1 = call i1 @llvm.is.fpclass.f64(double %0, i32 3)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, ptr %b.addr, align 8, !tbaa !50
  %3 = call i1 @llvm.is.fpclass.f64(double %2, i32 3)
  %4 = zext i1 %3 to i32
  store i32 %4, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load double, ptr %a.addr, align 8, !tbaa !50
  %6 = call i1 @llvm.is.fpclass.f64(double %5, i32 516)
  br i1 %6, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.else
  %7 = load double, ptr %a.addr, align 8, !tbaa !50
  %8 = load double, ptr %b.addr, align 8, !tbaa !50
  %cmp = fcmp olt double %7, %8
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then1
  %9 = load double, ptr %a.addr, align 8, !tbaa !50
  %10 = load double, ptr %b.addr, align 8, !tbaa !50
  %cmp2 = fcmp ogt double %9, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then1
  %11 = phi i1 [ true, %if.then1 ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %12 = load double, ptr %slop.addr, align 8, !tbaa !50
  %cmp4 = fcmp oeq double %12, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else3
  %call = call i32 @memcmp(ptr noundef %a.addr, ptr noundef %b.addr, i64 noundef 8) #10
  %tobool = icmp ne i32 %call, 0
  %lnot6 = xor i1 %tobool, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  store i32 %lnot.ext7, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else3
  call void @llvm.lifetime.start.p0(i64 8, ptr %lo) #10
  %13 = load double, ptr %a.addr, align 8, !tbaa !50
  %14 = load double, ptr %slop.addr, align 8, !tbaa !50
  %sub = fsub double %13, %14
  store double %sub, ptr %lo, align 8, !tbaa !50
  %15 = load double, ptr %lo, align 8, !tbaa !50
  %16 = load double, ptr %a.addr, align 8, !tbaa !50
  %cmp9 = fcmp oeq double %15, %16
  %lnot10 = xor i1 %cmp9, true
  %lnot12 = xor i1 %lnot10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv = sext i32 %lnot.ext13 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool14 = icmp ne i64 %expval, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else8
  %17 = load double, ptr %a.addr, align 8, !tbaa !50
  %call16 = call double @nextafter(double noundef %17, double noundef 0xFFF0000000000000) #10
  store double %call16, ptr %lo, align 8, !tbaa !50
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #10
  %18 = load double, ptr %a.addr, align 8, !tbaa !50
  %19 = load double, ptr %slop.addr, align 8, !tbaa !50
  %add = fadd double %18, %19
  store double %add, ptr %hi, align 8, !tbaa !50
  %20 = load double, ptr %hi, align 8, !tbaa !50
  %21 = load double, ptr %a.addr, align 8, !tbaa !50
  %cmp17 = fcmp oeq double %20, %21
  %lnot19 = xor i1 %cmp17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  %22 = load double, ptr %a.addr, align 8, !tbaa !50
  %call27 = call double @nextafter(double noundef %22, double noundef 0x7FF0000000000000) #10
  store double %call27, ptr %hi, align 8, !tbaa !50
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end
  %23 = load double, ptr %b.addr, align 8, !tbaa !50
  %24 = load double, ptr %lo, align 8, !tbaa !50
  %cmp29 = fcmp oge double %23, %24
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end28
  %25 = load double, ptr %b.addr, align 8, !tbaa !50
  %26 = load double, ptr %hi, align 8, !tbaa !50
  %cmp31 = fcmp ole double %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end28
  %27 = phi i1 [ false, %if.end28 ], [ %cmp31, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  store i32 %land.ext, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %lo) #10
  br label %return

return:                                           ; preds = %land.end, %if.then5, %lor.end, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #7

; Function Attrs: nounwind
declare double @nextafter(double noundef, double noundef) #8

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }

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
!16 = !{!17, !7, i64 0}
!17 = !{!"", !7, i64 0, !7, i64 1}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"", !21, i64 0, !7, i64 2}
!21 = !{!"short", !7, i64 0}
!22 = !{!23, !6, i64 0}
!23 = !{!"", !6, i64 0, !7, i64 4}
!24 = !{!25, !12, i64 0}
!25 = !{!"", !12, i64 0, !7, i64 8}
!26 = !{!27, !28, i64 0}
!27 = !{!"", !28, i64 0, !7, i64 4}
!28 = !{!"float", !7, i64 0}
!29 = !{!30, !31, i64 0}
!30 = !{!"", !31, i64 0, !7, i64 8}
!31 = !{!"double", !7, i64 0}
!32 = distinct !{}
!33 = distinct !{!33, !34, !35}
!34 = !{!"llvm.loop.parallel_accesses", !32}
!35 = !{!"llvm.loop.vectorize.enable", i1 true}
!36 = !{!21, !21, i64 0}
!37 = distinct !{}
!38 = distinct !{!38, !39, !35}
!39 = !{!"llvm.loop.parallel_accesses", !37}
!40 = distinct !{}
!41 = distinct !{!41, !42, !35}
!42 = !{!"llvm.loop.parallel_accesses", !40}
!43 = distinct !{}
!44 = distinct !{!44, !45, !35}
!45 = !{!"llvm.loop.parallel_accesses", !43}
!46 = !{!28, !28, i64 0}
!47 = distinct !{}
!48 = distinct !{!48, !49, !35}
!49 = !{!"llvm.loop.parallel_accesses", !47}
!50 = !{!31, !31, i64 0}
!51 = distinct !{}
!52 = distinct !{!52, !53, !35}
!53 = !{!"llvm.loop.parallel_accesses", !51}

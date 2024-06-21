; ModuleID = 'samples/391.bc'
source_filename = "./src/generator_gemm_noarch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libxsmm_gemm_descriptor = type <{ i32, i32, i32, i32, i32, i32, i32, i8, i8, i64, i64, i8, i32, i32, i32, i8, i8, i8 }>

@.str = private unnamed_addr constant [25 x i8] c"  unsigned int l_m = 0;\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [25 x i8] c"  unsigned int l_n = 0;\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [26 x i8] c"  unsigned int l_k = 0;\0A\0A\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [38 x i8] c"  for ( l_n = 0; l_n < %u; l_n++ ) {\0A\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [66 x i8] c"    for ( l_m = 0; l_m < %u; l_m++ ) { C[(l_n*%u)+l_m] = 0.0; }\0A\0A\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [67 x i8] c"    for ( l_m = 0; l_m < %u; l_m++ ) { C[(l_n*%u)+l_m] = 0.0f; }\0A\0A\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [40 x i8] c"    for ( l_k = 0; l_k < %u; l_k++ ) {\0A\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [20 x i8] c"      #pragma simd\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [42 x i8] c"      for ( l_m = 0; l_m < %u; l_m++ ) {\0A\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [63 x i8] c"        C[(l_n*%u)+l_m] += A[(l_k*%u)+l_m] * B[(l_n*%u)+l_k];\0A\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [9 x i8] c"      }\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [7 x i8] c"    }\0A\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [5 x i8] c"  }\0A\00", align 1, !dbg !59

; Function Attrs: nounwind uwtable
define hidden void @libxsmm_generator_gemm_noarch_kernel(ptr noundef %io_generated_code, ptr noundef %i_xgemm_desc) #0 !dbg !133 {
entry:
  %io_generated_code.addr = alloca ptr, align 8
  %i_xgemm_desc.addr = alloca ptr, align 8
  %l_new_code = alloca [512 x i8], align 16
  %l_max_code_length = alloca i32, align 4
  %l_code_length = alloca i32, align 4
  store ptr %io_generated_code, ptr %io_generated_code.addr, align 8, !tbaa !185
  tail call void @llvm.dbg.declare(metadata ptr %io_generated_code.addr, metadata !176, metadata !DIExpression()), !dbg !189
  store ptr %i_xgemm_desc, ptr %i_xgemm_desc.addr, align 8, !tbaa !185
  tail call void @llvm.dbg.declare(metadata ptr %i_xgemm_desc.addr, metadata !177, metadata !DIExpression()), !dbg !190
  call void @llvm.lifetime.start.p0(i64 512, ptr %l_new_code) #5, !dbg !191
  tail call void @llvm.dbg.declare(metadata ptr %l_new_code, metadata !178, metadata !DIExpression()), !dbg !192
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_max_code_length) #5, !dbg !193
  tail call void @llvm.dbg.declare(metadata ptr %l_max_code_length, metadata !182, metadata !DIExpression()), !dbg !194
  store i32 511, ptr %l_max_code_length, align 4, !dbg !194, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 4, ptr %l_code_length) #5, !dbg !197
  tail call void @llvm.dbg.declare(metadata ptr %l_code_length, metadata !184, metadata !DIExpression()), !dbg !198
  store i32 0, ptr %l_code_length, align 4, !dbg !198, !tbaa !195
  %arraydecay = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !199
  %0 = load i32, ptr %l_max_code_length, align 4, !dbg !199, !tbaa !195
  %conv = sext i32 %0 to i64, !dbg !199
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef %conv, ptr noundef @.str) #5, !dbg !199
  store i32 %call, ptr %l_code_length, align 4, !dbg !200, !tbaa !195
  %1 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !201, !tbaa !185
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !202
  %2 = load i32, ptr %l_code_length, align 4, !dbg !203, !tbaa !195
  call void @libxsmm_append_code_as_string(ptr noundef %1, ptr noundef %arraydecay1, i32 noundef %2), !dbg !204
  %arraydecay2 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !205
  %3 = load i32, ptr %l_max_code_length, align 4, !dbg !205, !tbaa !195
  %conv3 = sext i32 %3 to i64, !dbg !205
  %call4 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay2, i64 noundef %conv3, ptr noundef @.str.1) #5, !dbg !205
  store i32 %call4, ptr %l_code_length, align 4, !dbg !206, !tbaa !195
  %4 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !207, !tbaa !185
  %arraydecay5 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !208
  %5 = load i32, ptr %l_code_length, align 4, !dbg !209, !tbaa !195
  call void @libxsmm_append_code_as_string(ptr noundef %4, ptr noundef %arraydecay5, i32 noundef %5), !dbg !210
  %arraydecay6 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !211
  %6 = load i32, ptr %l_max_code_length, align 4, !dbg !211, !tbaa !195
  %conv7 = sext i32 %6 to i64, !dbg !211
  %call8 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay6, i64 noundef %conv7, ptr noundef @.str.2) #5, !dbg !211
  store i32 %call8, ptr %l_code_length, align 4, !dbg !212, !tbaa !195
  %7 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !213, !tbaa !185
  %arraydecay9 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !214
  %8 = load i32, ptr %l_code_length, align 4, !dbg !215, !tbaa !195
  call void @libxsmm_append_code_as_string(ptr noundef %7, ptr noundef %arraydecay9, i32 noundef %8), !dbg !216
  %arraydecay10 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !217
  %9 = load i32, ptr %l_max_code_length, align 4, !dbg !217, !tbaa !195
  %conv11 = sext i32 %9 to i64, !dbg !217
  %10 = load ptr, ptr %i_xgemm_desc.addr, align 8, !dbg !217, !tbaa !185
  %n = getelementptr inbounds %struct.libxsmm_gemm_descriptor, ptr %10, i32 0, i32 1, !dbg !217
  %11 = load i32, ptr %n, align 1, !dbg !217, !tbaa !218
  %call12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay10, i64 noundef %conv11, ptr noundef @.str.3, i32 noundef %11) #5, !dbg !217
  store i32 %call12, ptr %l_code_length, align 4, !dbg !221, !tbaa !195
  %12 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !222, !tbaa !185
  %arraydecay13 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !223
  %13 = load i32, ptr %l_code_length, align 4, !dbg !224, !tbaa !195
  call void @libxsmm_append_code_as_string(ptr noundef %12, ptr noundef %arraydecay13, i32 noundef %13), !dbg !225
  %14 = load ptr, ptr %i_xgemm_desc.addr, align 8, !dbg !226, !tbaa !185
  %flags = getelementptr inbounds %struct.libxsmm_gemm_descriptor, ptr %14, i32 0, i32 6, !dbg !228
  %15 = load i32, ptr %flags, align 1, !dbg !228, !tbaa !229
  %and = and i32 16, %15, !dbg !230
  %cmp = icmp ne i32 0, %and, !dbg !231
  br i1 %cmp, label %if.then, label %if.end29, !dbg !232

if.then:                                          ; preds = %entry
  %16 = load ptr, ptr %i_xgemm_desc.addr, align 8, !dbg !233, !tbaa !185
  %datatype = getelementptr inbounds %struct.libxsmm_gemm_descriptor, ptr %16, i32 0, i32 8, !dbg !233
  %17 = load i8, ptr %datatype, align 1, !dbg !233, !tbaa !236
  %conv15 = zext i8 %17 to i32, !dbg !233
  %and16 = and i32 %conv15, 15, !dbg !233
  %cmp17 = icmp eq i32 0, %and16, !dbg !237
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !238

if.then19:                                        ; preds = %if.then
  %arraydecay20 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !239
  %18 = load i32, ptr %l_max_code_length, align 4, !dbg !239, !tbaa !195
  %conv21 = sext i32 %18 to i64, !dbg !239
  %19 = load ptr, ptr %i_xgemm_desc.addr, align 8, !dbg !239, !tbaa !185
  %m = getelementptr inbounds %struct.libxsmm_gemm_descriptor, ptr %19, i32 0, i32 0, !dbg !239
  %20 = load i32, ptr %m, align 1, !dbg !239, !tbaa !241
  %21 = load ptr, ptr %i_xgemm_desc.addr, align 8, !dbg !239, !tbaa !185
  %ldc = getelementptr inbounds %struct.libxsmm_gemm_descriptor, ptr %21, i32 0, i32 5, !dbg !239
  %22 = load i32, ptr %ldc, align 1, !dbg !239, !tbaa !242
  %call22 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay20, i64 noundef %conv21, ptr noundef @.str.4, i32 noundef %20, i32 noundef %22) #5, !dbg !239
  store i32 %call22, ptr %l_code_length, align 4, !dbg !243, !tbaa !195
  br label %if.end, !dbg !244

if.else:                                          ; preds = %if.then
  %arraydecay23 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !245
  %23 = load i32, ptr %l_max_code_length, align 4, !dbg !245, !tbaa !195
  %conv24 = sext i32 %23 to i64, !dbg !245
  %24 = load ptr, ptr %i_xgemm_desc.addr, align 8, !dbg !245, !tbaa !185
  %m25 = getelementptr inbounds %struct.libxsmm_gemm_descriptor, ptr %24, i32 0, i32 0, !dbg !245
  %25 = load i32, ptr %m25, align 1, !dbg !245, !tbaa !241
  %26 = load ptr, ptr %i_xgemm_desc.addr, align 8, !dbg !245, !tbaa !185
  %ldc26 = getelementptr inbounds %struct.libxsmm_gemm_descriptor, ptr %26, i32 0, i32 5, !dbg !245
  %27 = load i32, ptr %ldc26, align 1, !dbg !245, !tbaa !242
  %call27 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay23, i64 noundef %conv24, ptr noundef @.str.5, i32 noundef %25, i32 noundef %27) #5, !dbg !245
  store i32 %call27, ptr %l_code_length, align 4, !dbg !247, !tbaa !195
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then19
  %28 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !248, !tbaa !185
  %arraydecay28 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !249
  %29 = load i32, ptr %l_code_length, align 4, !dbg !250, !tbaa !195
  call void @libxsmm_append_code_as_string(ptr noundef %28, ptr noundef %arraydecay28, i32 noundef %29), !dbg !251
  br label %if.end29, !dbg !252

if.end29:                                         ; preds = %if.end, %entry
  %arraydecay30 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !253
  %30 = load i32, ptr %l_max_code_length, align 4, !dbg !253, !tbaa !195
  %conv31 = sext i32 %30 to i64, !dbg !253
  %31 = load ptr, ptr %i_xgemm_desc.addr, align 8, !dbg !253, !tbaa !185
  %k = getelementptr inbounds %struct.libxsmm_gemm_descriptor, ptr %31, i32 0, i32 2, !dbg !253
  %32 = load i32, ptr %k, align 1, !dbg !253, !tbaa !254
  %call32 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay30, i64 noundef %conv31, ptr noundef @.str.6, i32 noundef %32) #5, !dbg !253
  store i32 %call32, ptr %l_code_length, align 4, !dbg !255, !tbaa !195
  %33 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !256, !tbaa !185
  %arraydecay33 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !257
  %34 = load i32, ptr %l_code_length, align 4, !dbg !258, !tbaa !195
  call void @libxsmm_append_code_as_string(ptr noundef %33, ptr noundef %arraydecay33, i32 noundef %34), !dbg !259
  %arraydecay34 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !260
  %35 = load i32, ptr %l_max_code_length, align 4, !dbg !260, !tbaa !195
  %conv35 = sext i32 %35 to i64, !dbg !260
  %call36 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay34, i64 noundef %conv35, ptr noundef @.str.7) #5, !dbg !260
  store i32 %call36, ptr %l_code_length, align 4, !dbg !261, !tbaa !195
  %36 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !262, !tbaa !185
  %arraydecay37 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !263
  %37 = load i32, ptr %l_code_length, align 4, !dbg !264, !tbaa !195
  call void @libxsmm_append_code_as_string(ptr noundef %36, ptr noundef %arraydecay37, i32 noundef %37), !dbg !265
  %arraydecay38 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !266
  %38 = load i32, ptr %l_max_code_length, align 4, !dbg !266, !tbaa !195
  %conv39 = sext i32 %38 to i64, !dbg !266
  %39 = load ptr, ptr %i_xgemm_desc.addr, align 8, !dbg !266, !tbaa !185
  %m40 = getelementptr inbounds %struct.libxsmm_gemm_descriptor, ptr %39, i32 0, i32 0, !dbg !266
  %40 = load i32, ptr %m40, align 1, !dbg !266, !tbaa !241
  %call41 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay38, i64 noundef %conv39, ptr noundef @.str.8, i32 noundef %40) #5, !dbg !266
  store i32 %call41, ptr %l_code_length, align 4, !dbg !267, !tbaa !195
  %41 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !268, !tbaa !185
  %arraydecay42 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !269
  %42 = load i32, ptr %l_code_length, align 4, !dbg !270, !tbaa !195
  call void @libxsmm_append_code_as_string(ptr noundef %41, ptr noundef %arraydecay42, i32 noundef %42), !dbg !271
  %arraydecay43 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !272
  %43 = load i32, ptr %l_max_code_length, align 4, !dbg !272, !tbaa !195
  %conv44 = sext i32 %43 to i64, !dbg !272
  %44 = load ptr, ptr %i_xgemm_desc.addr, align 8, !dbg !272, !tbaa !185
  %ldc45 = getelementptr inbounds %struct.libxsmm_gemm_descriptor, ptr %44, i32 0, i32 5, !dbg !272
  %45 = load i32, ptr %ldc45, align 1, !dbg !272, !tbaa !242
  %46 = load ptr, ptr %i_xgemm_desc.addr, align 8, !dbg !272, !tbaa !185
  %lda = getelementptr inbounds %struct.libxsmm_gemm_descriptor, ptr %46, i32 0, i32 3, !dbg !272
  %47 = load i32, ptr %lda, align 1, !dbg !272, !tbaa !273
  %48 = load ptr, ptr %i_xgemm_desc.addr, align 8, !dbg !272, !tbaa !185
  %ldb = getelementptr inbounds %struct.libxsmm_gemm_descriptor, ptr %48, i32 0, i32 4, !dbg !272
  %49 = load i32, ptr %ldb, align 1, !dbg !272, !tbaa !274
  %call46 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay43, i64 noundef %conv44, ptr noundef @.str.9, i32 noundef %45, i32 noundef %47, i32 noundef %49) #5, !dbg !272
  store i32 %call46, ptr %l_code_length, align 4, !dbg !275, !tbaa !195
  %50 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !276, !tbaa !185
  %arraydecay47 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !277
  %51 = load i32, ptr %l_code_length, align 4, !dbg !278, !tbaa !195
  call void @libxsmm_append_code_as_string(ptr noundef %50, ptr noundef %arraydecay47, i32 noundef %51), !dbg !279
  %arraydecay48 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !280
  %52 = load i32, ptr %l_max_code_length, align 4, !dbg !280, !tbaa !195
  %conv49 = sext i32 %52 to i64, !dbg !280
  %call50 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay48, i64 noundef %conv49, ptr noundef @.str.10) #5, !dbg !280
  store i32 %call50, ptr %l_code_length, align 4, !dbg !281, !tbaa !195
  %53 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !282, !tbaa !185
  %arraydecay51 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !283
  %54 = load i32, ptr %l_code_length, align 4, !dbg !284, !tbaa !195
  call void @libxsmm_append_code_as_string(ptr noundef %53, ptr noundef %arraydecay51, i32 noundef %54), !dbg !285
  %arraydecay52 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !286
  %55 = load i32, ptr %l_max_code_length, align 4, !dbg !286, !tbaa !195
  %conv53 = sext i32 %55 to i64, !dbg !286
  %call54 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay52, i64 noundef %conv53, ptr noundef @.str.11) #5, !dbg !286
  store i32 %call54, ptr %l_code_length, align 4, !dbg !287, !tbaa !195
  %56 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !288, !tbaa !185
  %arraydecay55 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !289
  %57 = load i32, ptr %l_code_length, align 4, !dbg !290, !tbaa !195
  call void @libxsmm_append_code_as_string(ptr noundef %56, ptr noundef %arraydecay55, i32 noundef %57), !dbg !291
  %arraydecay56 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !292
  %58 = load i32, ptr %l_max_code_length, align 4, !dbg !292, !tbaa !195
  %conv57 = sext i32 %58 to i64, !dbg !292
  %call58 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay56, i64 noundef %conv57, ptr noundef @.str.12) #5, !dbg !292
  store i32 %call58, ptr %l_code_length, align 4, !dbg !293, !tbaa !195
  %59 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !294, !tbaa !185
  %arraydecay59 = getelementptr inbounds [512 x i8], ptr %l_new_code, i64 0, i64 0, !dbg !295
  %60 = load i32, ptr %l_code_length, align 4, !dbg !296, !tbaa !195
  call void @libxsmm_append_code_as_string(ptr noundef %59, ptr noundef %arraydecay59, i32 noundef %60), !dbg !297
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_code_length) #5, !dbg !298
  call void @llvm.lifetime.end.p0(i64 4, ptr %l_max_code_length) #5, !dbg !298
  call void @llvm.lifetime.end.p0(i64 512, ptr %l_new_code) #5, !dbg !298
  ret void, !dbg !298
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !299 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

declare !dbg !311 hidden void @libxsmm_append_code_as_string(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!64}
!llvm.module.flags = !{!127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/generator_gemm_noarch.c", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "b3c70063ed41ffb2932868827826acc7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 25)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 26)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 38)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 66)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 67)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 40)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 20)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 42)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 63)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 9)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 7)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 5)
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !65, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !66, retainedTypes: !125, globals: !126, splitDebugInlining: false, nameTableKind: None)
!65 = !DIFile(filename: "src/generator_gemm_noarch.c", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "b3c70063ed41ffb2932868827826acc7")
!66 = !{!67, !117}
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_gemm_flags", file: !68, line: 257, baseType: !69, size: 32, elements: !70)
!68 = !DIFile(filename: "include/libxsmm_typedefs.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "6455bf141a5acf04bdbd5b62071dd37a")
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!71 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_NONE", value: 0)
!72 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_TRANS_A", value: 1)
!73 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_TRANS_B", value: 2)
!74 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_TRANS_AB", value: 3)
!75 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_BETA_0", value: 16)
!76 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_A", value: 64)
!77 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C", value: 128)
!78 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_BATCH_REDUCE_ADDRESS", value: 256)
!79 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_BATCH_REDUCE_OFFSET", value: 512)
!80 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_BATCH_REDUCE_STRIDE", value: 1024)
!81 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT", value: 2176)
!82 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_A_UNSIGNED", value: 4096)
!83 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_B_UNSIGNED", value: 8192)
!84 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_C_UNSIGNED", value: 16384)
!85 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_AB_UNSIGNED", value: 12288)
!86 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_VNNI_A", value: 32768)
!87 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_VNNI_B", value: 65536)
!88 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0", value: 2192)
!89 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BATCH_REDUCE_ADDRESS", value: 2432)
!90 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_BATCH_REDUCE_ADDRESS", value: 2448)
!91 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BATCH_REDUCE_OFFSET", value: 2688)
!92 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_BATCH_REDUCE_OFFSET", value: 2704)
!93 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BATCH_REDUCE_STRIDE", value: 3200)
!94 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_BATCH_REDUCE_STRIDE", value: 3216)
!95 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_A_UNSIGNED", value: 6288)
!96 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BATCH_REDUCE_ADDRESS_A_UNSIGNED", value: 6528)
!97 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_BATCH_REDUCE_ADDRESS_A_UNSIGNED", value: 6544)
!98 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BATCH_REDUCE_OFFSET_A_UNSIGNED", value: 6784)
!99 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_BATCH_REDUCE_OFFSET_A_UNSIGNED", value: 6800)
!100 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BATCH_REDUCE_STRIDE_A_UNSIGNED", value: 7296)
!101 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_BATCH_REDUCE_STRIDE_A_UNSIGNED", value: 7312)
!102 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_B_UNSIGNED", value: 10384)
!103 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BATCH_REDUCE_ADDRESS_B_UNSIGNED", value: 10624)
!104 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_BATCH_REDUCE_ADDRESS_B_UNSIGNED", value: 10640)
!105 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BATCH_REDUCE_OFFSET_B_UNSIGNED", value: 10880)
!106 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_BATCH_REDUCE_OFFSET_B_UNSIGNED", value: 10896)
!107 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BATCH_REDUCE_STRIDE_B_UNSIGNED", value: 11392)
!108 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_BATCH_REDUCE_STRIDE_B_UNSIGNED", value: 11408)
!109 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_AB_UNSIGNED", value: 14480)
!110 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BATCH_REDUCE_ADDRESS_AB_UNSIGNED", value: 14720)
!111 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_BATCH_REDUCE_ADDRESS_AB_UNSIGNED", value: 14736)
!112 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BATCH_REDUCE_OFFSET_AB_UNSIGNED", value: 14976)
!113 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_BATCH_REDUCE_OFFSET_AB_UNSIGNED", value: 14992)
!114 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BATCH_REDUCE_STRIDE_AB_UNSIGNED", value: 15488)
!115 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_ALIGN_C_NTS_HINT_BETA_0_BATCH_REDUCE_STRIDE_AB_UNSIGNED", value: 15504)
!116 = !DIEnumerator(name: "LIBXSMM_GEMM_FLAG_INVALID", value: 131072)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_gemm_precision", file: !68, line: 152, baseType: !69, size: 32, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIEnumerator(name: "LIBXSMM_GEMM_PRECISION_F64", value: 0)
!120 = !DIEnumerator(name: "LIBXSMM_GEMM_PRECISION_F32", value: 1)
!121 = !DIEnumerator(name: "LIBXSMM_GEMM_PRECISION_BF16", value: 2)
!122 = !DIEnumerator(name: "LIBXSMM_GEMM_PRECISION_I32", value: 4)
!123 = !DIEnumerator(name: "LIBXSMM_GEMM_PRECISION_I16", value: 5)
!124 = !DIEnumerator(name: "LIBXSMM_GEMM_PRECISION_I8", value: 6)
!125 = !{!69}
!126 = !{!0, !7, !9, !14, !19, !24, !29, !34, !39, !44, !49, !54, !59}
!127 = !{i32 7, !"Dwarf Version", i32 5}
!128 = !{i32 2, !"Debug Info Version", i32 3}
!129 = !{i32 1, !"wchar_size", i32 4}
!130 = !{i32 8, !"PIC Level", i32 2}
!131 = !{i32 7, !"uwtable", i32 2}
!132 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!133 = distinct !DISubprogram(name: "libxsmm_generator_gemm_noarch_kernel", scope: !2, file: !2, line: 15, type: !134, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !175)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !136, !149}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_generated_code", file: !138, line: 138, baseType: !139)
!138 = !DIFile(filename: "include/libxsmm_generator.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "546d2dd75eaf8cc5937953149b404b74")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_generated_code", file: !138, line: 118, size: 256, elements: !140)
!140 = !{!141, !143, !144, !145, !146, !147, !148}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "generated_code", scope: !139, file: !138, line: 119, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !139, file: !138, line: 120, baseType: !69, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "code_size", scope: !139, file: !138, line: 121, baseType: !69, size: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "code_type", scope: !139, file: !138, line: 122, baseType: !69, size: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !139, file: !138, line: 130, baseType: !69, size: 32, offset: 160)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !139, file: !138, line: 134, baseType: !69, size: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sf_size", scope: !139, file: !138, line: 135, baseType: !69, size: 32, offset: 224)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_gemm_descriptor", file: !68, line: 123, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_gemm_descriptor", file: !153, line: 202, size: 496, elements: !154)
!153 = !DIFile(filename: "./src/libxsmm_main.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "327f1483fde3a8c227e86e12c0467dc8")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !164, !165, !167, !168, !169, !170, !171, !172, !173, !174}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !152, file: !153, line: 204, baseType: !69, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !152, file: !153, line: 204, baseType: !69, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !152, file: !153, line: 204, baseType: !69, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "lda", scope: !152, file: !153, line: 206, baseType: !69, size: 32, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ldb", scope: !152, file: !153, line: 206, baseType: !69, size: 32, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ldc", scope: !152, file: !153, line: 206, baseType: !69, size: 32, offset: 160)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !153, line: 208, baseType: !69, size: 32, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch", scope: !152, file: !153, line: 210, baseType: !163, size: 8, offset: 224)
!163 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !152, file: !153, line: 212, baseType: !163, size: 8, offset: 232)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !152, file: !153, line: 216, baseType: !166, size: 64, offset: 240)
!166 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !152, file: !153, line: 218, baseType: !166, size: 64, offset: 304)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !152, file: !153, line: 220, baseType: !163, size: 8, offset: 368)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "meltw_ldx", scope: !152, file: !153, line: 222, baseType: !69, size: 32, offset: 376)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "meltw_ldy", scope: !152, file: !153, line: 222, baseType: !69, size: 32, offset: 408)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "meltw_ldz", scope: !152, file: !153, line: 222, baseType: !69, size: 32, offset: 440)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "meltw_datatype_aux", scope: !152, file: !153, line: 224, baseType: !163, size: 8, offset: 472)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "meltw_flags", scope: !152, file: !153, line: 226, baseType: !163, size: 8, offset: 480)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "meltw_operation", scope: !152, file: !153, line: 228, baseType: !163, size: 8, offset: 488)
!175 = !{!176, !177, !178, !182, !184}
!176 = !DILocalVariable(name: "io_generated_code", arg: 1, scope: !133, file: !2, line: 15, type: !136)
!177 = !DILocalVariable(name: "i_xgemm_desc", arg: 2, scope: !133, file: !2, line: 16, type: !149)
!178 = !DILocalVariable(name: "l_new_code", scope: !133, file: !2, line: 17, type: !179)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4096, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 512)
!182 = !DILocalVariable(name: "l_max_code_length", scope: !133, file: !2, line: 18, type: !183)
!183 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!184 = !DILocalVariable(name: "l_code_length", scope: !133, file: !2, line: 19, type: !183)
!185 = !{!186, !186, i64 0}
!186 = !{!"any pointer", !187, i64 0}
!187 = !{!"omnipotent char", !188, i64 0}
!188 = !{!"Simple C/C++ TBAA"}
!189 = !DILocation(line: 15, column: 75, scope: !133)
!190 = !DILocation(line: 16, column: 75, scope: !133)
!191 = !DILocation(line: 17, column: 3, scope: !133)
!192 = !DILocation(line: 17, column: 8, scope: !133)
!193 = !DILocation(line: 18, column: 3, scope: !133)
!194 = !DILocation(line: 18, column: 7, scope: !133)
!195 = !{!196, !196, i64 0}
!196 = !{!"int", !187, i64 0}
!197 = !DILocation(line: 19, column: 3, scope: !133)
!198 = !DILocation(line: 19, column: 7, scope: !133)
!199 = !DILocation(line: 21, column: 19, scope: !133)
!200 = !DILocation(line: 21, column: 17, scope: !133)
!201 = !DILocation(line: 22, column: 34, scope: !133)
!202 = !DILocation(line: 22, column: 53, scope: !133)
!203 = !DILocation(line: 22, column: 65, scope: !133)
!204 = !DILocation(line: 22, column: 3, scope: !133)
!205 = !DILocation(line: 23, column: 19, scope: !133)
!206 = !DILocation(line: 23, column: 17, scope: !133)
!207 = !DILocation(line: 24, column: 34, scope: !133)
!208 = !DILocation(line: 24, column: 53, scope: !133)
!209 = !DILocation(line: 24, column: 65, scope: !133)
!210 = !DILocation(line: 24, column: 3, scope: !133)
!211 = !DILocation(line: 25, column: 19, scope: !133)
!212 = !DILocation(line: 25, column: 17, scope: !133)
!213 = !DILocation(line: 26, column: 34, scope: !133)
!214 = !DILocation(line: 26, column: 53, scope: !133)
!215 = !DILocation(line: 26, column: 65, scope: !133)
!216 = !DILocation(line: 26, column: 3, scope: !133)
!217 = !DILocation(line: 28, column: 19, scope: !133)
!218 = !{!219, !196, i64 4}
!219 = !{!"libxsmm_gemm_descriptor", !196, i64 0, !196, i64 4, !196, i64 8, !196, i64 12, !196, i64 16, !196, i64 20, !196, i64 24, !187, i64 28, !187, i64 29, !220, i64 30, !220, i64 38, !187, i64 46, !196, i64 47, !196, i64 51, !196, i64 55, !187, i64 59, !187, i64 60, !187, i64 61}
!220 = !{!"long long", !187, i64 0}
!221 = !DILocation(line: 28, column: 17, scope: !133)
!222 = !DILocation(line: 29, column: 34, scope: !133)
!223 = !DILocation(line: 29, column: 53, scope: !133)
!224 = !DILocation(line: 29, column: 65, scope: !133)
!225 = !DILocation(line: 29, column: 3, scope: !133)
!226 = !DILocation(line: 30, column: 40, scope: !227)
!227 = distinct !DILexicalBlock(scope: !133, file: !2, line: 30, column: 7)
!228 = !DILocation(line: 30, column: 54, scope: !227)
!229 = !{!219, !196, i64 24}
!230 = !DILocation(line: 30, column: 38, scope: !227)
!231 = !DILocation(line: 30, column: 9, scope: !227)
!232 = !DILocation(line: 30, column: 7, scope: !133)
!233 = !DILocation(line: 31, column: 40, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !2, line: 31, column: 10)
!235 = distinct !DILexicalBlock(scope: !227, file: !2, line: 30, column: 62)
!236 = !{!219, !187, i64 29}
!237 = !DILocation(line: 31, column: 37, scope: !234)
!238 = !DILocation(line: 31, column: 10, scope: !235)
!239 = !DILocation(line: 32, column: 23, scope: !240)
!240 = distinct !DILexicalBlock(scope: !234, file: !2, line: 31, column: 89)
!241 = !{!219, !196, i64 0}
!242 = !{!219, !196, i64 20}
!243 = !DILocation(line: 32, column: 21, scope: !240)
!244 = !DILocation(line: 33, column: 5, scope: !240)
!245 = !DILocation(line: 34, column: 23, scope: !246)
!246 = distinct !DILexicalBlock(scope: !234, file: !2, line: 33, column: 12)
!247 = !DILocation(line: 34, column: 21, scope: !246)
!248 = !DILocation(line: 36, column: 36, scope: !235)
!249 = !DILocation(line: 36, column: 55, scope: !235)
!250 = !DILocation(line: 36, column: 67, scope: !235)
!251 = !DILocation(line: 36, column: 5, scope: !235)
!252 = !DILocation(line: 37, column: 3, scope: !235)
!253 = !DILocation(line: 38, column: 19, scope: !133)
!254 = !{!219, !196, i64 8}
!255 = !DILocation(line: 38, column: 17, scope: !133)
!256 = !DILocation(line: 39, column: 34, scope: !133)
!257 = !DILocation(line: 39, column: 53, scope: !133)
!258 = !DILocation(line: 39, column: 65, scope: !133)
!259 = !DILocation(line: 39, column: 3, scope: !133)
!260 = !DILocation(line: 40, column: 19, scope: !133)
!261 = !DILocation(line: 40, column: 17, scope: !133)
!262 = !DILocation(line: 41, column: 34, scope: !133)
!263 = !DILocation(line: 41, column: 53, scope: !133)
!264 = !DILocation(line: 41, column: 65, scope: !133)
!265 = !DILocation(line: 41, column: 3, scope: !133)
!266 = !DILocation(line: 42, column: 19, scope: !133)
!267 = !DILocation(line: 42, column: 17, scope: !133)
!268 = !DILocation(line: 43, column: 34, scope: !133)
!269 = !DILocation(line: 43, column: 53, scope: !133)
!270 = !DILocation(line: 43, column: 65, scope: !133)
!271 = !DILocation(line: 43, column: 3, scope: !133)
!272 = !DILocation(line: 44, column: 19, scope: !133)
!273 = !{!219, !196, i64 12}
!274 = !{!219, !196, i64 16}
!275 = !DILocation(line: 44, column: 17, scope: !133)
!276 = !DILocation(line: 45, column: 34, scope: !133)
!277 = !DILocation(line: 45, column: 53, scope: !133)
!278 = !DILocation(line: 45, column: 65, scope: !133)
!279 = !DILocation(line: 45, column: 3, scope: !133)
!280 = !DILocation(line: 46, column: 19, scope: !133)
!281 = !DILocation(line: 46, column: 17, scope: !133)
!282 = !DILocation(line: 47, column: 34, scope: !133)
!283 = !DILocation(line: 47, column: 53, scope: !133)
!284 = !DILocation(line: 47, column: 65, scope: !133)
!285 = !DILocation(line: 47, column: 3, scope: !133)
!286 = !DILocation(line: 48, column: 19, scope: !133)
!287 = !DILocation(line: 48, column: 17, scope: !133)
!288 = !DILocation(line: 49, column: 34, scope: !133)
!289 = !DILocation(line: 49, column: 53, scope: !133)
!290 = !DILocation(line: 49, column: 65, scope: !133)
!291 = !DILocation(line: 49, column: 3, scope: !133)
!292 = !DILocation(line: 50, column: 19, scope: !133)
!293 = !DILocation(line: 50, column: 17, scope: !133)
!294 = !DILocation(line: 51, column: 34, scope: !133)
!295 = !DILocation(line: 51, column: 53, scope: !133)
!296 = !DILocation(line: 51, column: 65, scope: !133)
!297 = !DILocation(line: 51, column: 3, scope: !133)
!298 = !DILocation(line: 52, column: 1, scope: !133)
!299 = !DISubprogram(name: "snprintf", scope: !300, file: !300, line: 378, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!300 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!301 = !DISubroutineType(types: !302)
!302 = !{!183, !303, !305, !308, null}
!303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !306, line: 70, baseType: !307)
!306 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!307 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!308 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!311 = !DISubprogram(name: "libxsmm_append_code_as_string", scope: !312, file: !312, line: 613, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DIFile(filename: "./src/generator_common.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "a57c85608557ea9830368c91f6ffd0fa")
!313 = !DISubroutineType(types: !314)
!314 = !{null, !136, !309, !315}
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)

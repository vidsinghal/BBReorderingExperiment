; ModuleID = 'samples/933.bc'
source_filename = "./src/generator_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@__func__.libxsmm_generator_pgemm_kernel = private unnamed_addr constant [31 x i8] c"libxsmm_generator_pgemm_kernel\00", align 1, !dbg !0
@libxsmm_ninit = external global i32, align 4
@libxsmm_verbosity = external global i32, align 4
@__func__.libxsmm_generator_getrf_kernel = private unnamed_addr constant [31 x i8] c"libxsmm_generator_getrf_kernel\00", align 1, !dbg !8
@.str = private unnamed_addr constant [4 x i8] c"skx\00", align 1, !dbg !10
@.str.1 = private unnamed_addr constant [4 x i8] c"knm\00", align 1, !dbg !15
@.str.2 = private unnamed_addr constant [4 x i8] c"knl\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [4 x i8] c"hsw\00", align 1, !dbg !19
@.str.4 = private unnamed_addr constant [4 x i8] c"snb\00", align 1, !dbg !21
@__func__.libxsmm_generator_trsm_kernel = private unnamed_addr constant [30 x i8] c"libxsmm_generator_trsm_kernel\00", align 1, !dbg !23
@__func__.libxsmm_generator_trmm_kernel = private unnamed_addr constant [30 x i8] c"libxsmm_generator_trmm_kernel\00", align 1, !dbg !28

; Function Attrs: nounwind uwtable
define void @libxsmm_generator_pgemm_kernel(ptr noundef %io_generated_code, ptr noundef %i_packed_pgemm_desc, i32 noundef %i_arch, ...) #0 !dbg !39 {
entry:
  %io_generated_code.addr = alloca ptr, align 8
  %i_packed_pgemm_desc.addr = alloca ptr, align 8
  %i_arch.addr = alloca i32, align 4
  %cpuid = alloca ptr, align 8
  %iunroll = alloca i32, align 4
  %junroll = alloca i32, align 4
  %loopi = alloca i32, align 4
  %loopj = alloca i32, align 4
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %io_generated_code, ptr %io_generated_code.addr, align 8, !tbaa !88
  tail call void @llvm.dbg.declare(metadata ptr %io_generated_code.addr, metadata !63, metadata !DIExpression()), !dbg !92
  store ptr %i_packed_pgemm_desc, ptr %i_packed_pgemm_desc.addr, align 8, !tbaa !88
  tail call void @llvm.dbg.declare(metadata ptr %i_packed_pgemm_desc.addr, metadata !64, metadata !DIExpression()), !dbg !93
  store i32 %i_arch, ptr %i_arch.addr, align 4, !tbaa !94
  tail call void @llvm.dbg.declare(metadata ptr %i_arch.addr, metadata !65, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpuid) #6, !dbg !97
  tail call void @llvm.dbg.declare(metadata ptr %cpuid, metadata !66, metadata !DIExpression()), !dbg !98
  %0 = load i32, ptr %i_arch.addr, align 4, !dbg !99, !tbaa !94
  %call = call ptr @libxsmm_cpuid_name(i32 noundef %0), !dbg !100
  store ptr %call, ptr %cpuid, align 8, !dbg !98, !tbaa !88
  %1 = load i32, ptr %i_arch.addr, align 4, !dbg !101, !tbaa !94
  %cmp = icmp sle i32 1005, %1, !dbg !102
  br i1 %cmp, label %if.then, label %if.else, !dbg !103

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %iunroll) #6, !dbg !104
  tail call void @llvm.dbg.declare(metadata ptr %iunroll, metadata !69, metadata !DIExpression()), !dbg !105
  call void @llvm.lifetime.start.p0(i64 4, ptr %junroll) #6, !dbg !104
  tail call void @llvm.dbg.declare(metadata ptr %junroll, metadata !72, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.start.p0(i64 4, ptr %loopi) #6, !dbg !104
  tail call void @llvm.dbg.declare(metadata ptr %loopi, metadata !73, metadata !DIExpression()), !dbg !107
  call void @llvm.lifetime.start.p0(i64 4, ptr %loopj) #6, !dbg !104
  tail call void @llvm.dbg.declare(metadata ptr %loopj, metadata !74, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #6, !dbg !109
  tail call void @llvm.dbg.declare(metadata ptr %args, metadata !75, metadata !DIExpression()), !dbg !110
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !111
  call void @llvm.va_start.p0(ptr %arraydecay), !dbg !111
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !112
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 0, !dbg !112
  %gp_offset = load i32, ptr %gp_offset_p, align 16, !dbg !112
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !112
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !112

vaarg.in_reg:                                     ; preds = %if.then
  %2 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 3, !dbg !112
  %reg_save_area = load ptr, ptr %2, align 16, !dbg !112
  %3 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset, !dbg !112
  %4 = add i32 %gp_offset, 8, !dbg !112
  store i32 %4, ptr %gp_offset_p, align 16, !dbg !112
  br label %vaarg.end, !dbg !112

vaarg.in_mem:                                     ; preds = %if.then
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay1, i32 0, i32 2, !dbg !112
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8, !dbg !112
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8, !dbg !112
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8, !dbg !112
  br label %vaarg.end, !dbg !112

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %3, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ], !dbg !112
  %5 = load i32, ptr %vaarg.addr, align 4, !dbg !112
  store i32 %5, ptr %iunroll, align 4, !dbg !113, !tbaa !94
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !114
  %gp_offset_p3 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay2, i32 0, i32 0, !dbg !114
  %gp_offset4 = load i32, ptr %gp_offset_p3, align 16, !dbg !114
  %fits_in_gp5 = icmp ule i32 %gp_offset4, 40, !dbg !114
  br i1 %fits_in_gp5, label %vaarg.in_reg6, label %vaarg.in_mem8, !dbg !114

vaarg.in_reg6:                                    ; preds = %vaarg.end
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay2, i32 0, i32 3, !dbg !114
  %reg_save_area7 = load ptr, ptr %6, align 16, !dbg !114
  %7 = getelementptr i8, ptr %reg_save_area7, i32 %gp_offset4, !dbg !114
  %8 = add i32 %gp_offset4, 8, !dbg !114
  store i32 %8, ptr %gp_offset_p3, align 16, !dbg !114
  br label %vaarg.end12, !dbg !114

vaarg.in_mem8:                                    ; preds = %vaarg.end
  %overflow_arg_area_p9 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay2, i32 0, i32 2, !dbg !114
  %overflow_arg_area10 = load ptr, ptr %overflow_arg_area_p9, align 8, !dbg !114
  %overflow_arg_area.next11 = getelementptr i8, ptr %overflow_arg_area10, i32 8, !dbg !114
  store ptr %overflow_arg_area.next11, ptr %overflow_arg_area_p9, align 8, !dbg !114
  br label %vaarg.end12, !dbg !114

vaarg.end12:                                      ; preds = %vaarg.in_mem8, %vaarg.in_reg6
  %vaarg.addr13 = phi ptr [ %7, %vaarg.in_reg6 ], [ %overflow_arg_area10, %vaarg.in_mem8 ], !dbg !114
  %9 = load i32, ptr %vaarg.addr13, align 4, !dbg !114
  store i32 %9, ptr %junroll, align 4, !dbg !115, !tbaa !94
  %arraydecay14 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !116
  %gp_offset_p15 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay14, i32 0, i32 0, !dbg !116
  %gp_offset16 = load i32, ptr %gp_offset_p15, align 16, !dbg !116
  %fits_in_gp17 = icmp ule i32 %gp_offset16, 40, !dbg !116
  br i1 %fits_in_gp17, label %vaarg.in_reg18, label %vaarg.in_mem20, !dbg !116

vaarg.in_reg18:                                   ; preds = %vaarg.end12
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay14, i32 0, i32 3, !dbg !116
  %reg_save_area19 = load ptr, ptr %10, align 16, !dbg !116
  %11 = getelementptr i8, ptr %reg_save_area19, i32 %gp_offset16, !dbg !116
  %12 = add i32 %gp_offset16, 8, !dbg !116
  store i32 %12, ptr %gp_offset_p15, align 16, !dbg !116
  br label %vaarg.end24, !dbg !116

vaarg.in_mem20:                                   ; preds = %vaarg.end12
  %overflow_arg_area_p21 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay14, i32 0, i32 2, !dbg !116
  %overflow_arg_area22 = load ptr, ptr %overflow_arg_area_p21, align 8, !dbg !116
  %overflow_arg_area.next23 = getelementptr i8, ptr %overflow_arg_area22, i32 8, !dbg !116
  store ptr %overflow_arg_area.next23, ptr %overflow_arg_area_p21, align 8, !dbg !116
  br label %vaarg.end24, !dbg !116

vaarg.end24:                                      ; preds = %vaarg.in_mem20, %vaarg.in_reg18
  %vaarg.addr25 = phi ptr [ %11, %vaarg.in_reg18 ], [ %overflow_arg_area22, %vaarg.in_mem20 ], !dbg !116
  %13 = load i32, ptr %vaarg.addr25, align 4, !dbg !116
  store i32 %13, ptr %loopi, align 4, !dbg !117, !tbaa !94
  %arraydecay26 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !118
  %gp_offset_p27 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay26, i32 0, i32 0, !dbg !118
  %gp_offset28 = load i32, ptr %gp_offset_p27, align 16, !dbg !118
  %fits_in_gp29 = icmp ule i32 %gp_offset28, 40, !dbg !118
  br i1 %fits_in_gp29, label %vaarg.in_reg30, label %vaarg.in_mem32, !dbg !118

vaarg.in_reg30:                                   ; preds = %vaarg.end24
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay26, i32 0, i32 3, !dbg !118
  %reg_save_area31 = load ptr, ptr %14, align 16, !dbg !118
  %15 = getelementptr i8, ptr %reg_save_area31, i32 %gp_offset28, !dbg !118
  %16 = add i32 %gp_offset28, 8, !dbg !118
  store i32 %16, ptr %gp_offset_p27, align 16, !dbg !118
  br label %vaarg.end36, !dbg !118

vaarg.in_mem32:                                   ; preds = %vaarg.end24
  %overflow_arg_area_p33 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay26, i32 0, i32 2, !dbg !118
  %overflow_arg_area34 = load ptr, ptr %overflow_arg_area_p33, align 8, !dbg !118
  %overflow_arg_area.next35 = getelementptr i8, ptr %overflow_arg_area34, i32 8, !dbg !118
  store ptr %overflow_arg_area.next35, ptr %overflow_arg_area_p33, align 8, !dbg !118
  br label %vaarg.end36, !dbg !118

vaarg.end36:                                      ; preds = %vaarg.in_mem32, %vaarg.in_reg30
  %vaarg.addr37 = phi ptr [ %15, %vaarg.in_reg30 ], [ %overflow_arg_area34, %vaarg.in_mem32 ], !dbg !118
  %17 = load i32, ptr %vaarg.addr37, align 4, !dbg !118
  store i32 %17, ptr %loopj, align 4, !dbg !119, !tbaa !94
  %arraydecay38 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !120
  call void @llvm.va_end.p0(ptr %arraydecay38), !dbg !120
  %18 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !121, !tbaa !88
  %19 = load ptr, ptr %i_packed_pgemm_desc.addr, align 8, !dbg !122, !tbaa !88
  %20 = load ptr, ptr %cpuid, align 8, !dbg !123, !tbaa !88
  %21 = load i32, ptr %iunroll, align 4, !dbg !124, !tbaa !94
  %22 = load i32, ptr %junroll, align 4, !dbg !125, !tbaa !94
  %23 = load i32, ptr %loopi, align 4, !dbg !126, !tbaa !94
  %24 = load i32, ptr %loopj, align 4, !dbg !127, !tbaa !94
  call void @libxsmm_generator_packed_gemm_avx_avx512_kernel(ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %23, i32 noundef %24), !dbg !128
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #6, !dbg !129
  call void @llvm.lifetime.end.p0(i64 4, ptr %loopj) #6, !dbg !129
  call void @llvm.lifetime.end.p0(i64 4, ptr %loopi) #6, !dbg !129
  call void @llvm.lifetime.end.p0(i64 4, ptr %junroll) #6, !dbg !129
  call void @llvm.lifetime.end.p0(i64 4, ptr %iunroll) #6, !dbg !129
  br label %if.end, !dbg !130

if.else:                                          ; preds = %entry
  %25 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !131, !tbaa !88
  %26 = load i32, ptr @libxsmm_ninit, align 4, !dbg !131, !tbaa !94
  %cmp39 = icmp ult i32 1, %26, !dbg !131
  br i1 %cmp39, label %cond.true, label %cond.false, !dbg !131

cond.true:                                        ; preds = %if.else
  %27 = load i32, ptr @libxsmm_verbosity, align 4, !dbg !131, !tbaa !94
  br label %cond.end, !dbg !131

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !131

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ 1, %cond.false ], !dbg !131
  call void @libxsmm_handle_error(ptr noundef %25, i32 noundef 90005, ptr noundef @__func__.libxsmm_generator_pgemm_kernel, i32 noundef %cond), !dbg !131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !133

if.end:                                           ; preds = %vaarg.end36
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !134
  br label %cleanup, !dbg !134

cleanup:                                          ; preds = %if.end, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpuid) #6, !dbg !134
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !134

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !135 ptr @libxsmm_cpuid_name(i32 noundef) #2

declare !dbg !139 hidden void @libxsmm_generator_packed_gemm_avx_avx512_kernel(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !143 hidden void @libxsmm_handle_error(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @libxsmm_generator_getrf_kernel(ptr noundef %io_generated_code, ptr noundef %i_packed_getrf_desc, i32 noundef %i_arch) #0 !dbg !148 {
entry:
  %io_generated_code.addr = alloca ptr, align 8
  %i_packed_getrf_desc.addr = alloca ptr, align 8
  %i_arch.addr = alloca i32, align 4
  %cpuid = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %io_generated_code, ptr %io_generated_code.addr, align 8, !tbaa !88
  tail call void @llvm.dbg.declare(metadata ptr %io_generated_code.addr, metadata !156, metadata !DIExpression()), !dbg !160
  store ptr %i_packed_getrf_desc, ptr %i_packed_getrf_desc.addr, align 8, !tbaa !88
  tail call void @llvm.dbg.declare(metadata ptr %i_packed_getrf_desc.addr, metadata !157, metadata !DIExpression()), !dbg !161
  store i32 %i_arch, ptr %i_arch.addr, align 4, !tbaa !94
  tail call void @llvm.dbg.declare(metadata ptr %i_arch.addr, metadata !158, metadata !DIExpression()), !dbg !162
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpuid) #6, !dbg !163
  tail call void @llvm.dbg.declare(metadata ptr %cpuid, metadata !159, metadata !DIExpression()), !dbg !164
  %0 = load i32, ptr %i_arch.addr, align 4, !dbg !165, !tbaa !94
  %call = call ptr @libxsmm_cpuid_name(i32 noundef %0), !dbg !166
  store ptr %call, ptr %cpuid, align 8, !dbg !164, !tbaa !88
  %1 = load i32, ptr %i_arch.addr, align 4, !dbg !167, !tbaa !94
  %cmp = icmp sle i32 1005, %1, !dbg !169
  br i1 %cmp, label %if.then, label %if.else, !dbg !170

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !171, !tbaa !88
  %3 = load ptr, ptr %i_packed_getrf_desc.addr, align 8, !dbg !173, !tbaa !88
  %4 = load ptr, ptr %cpuid, align 8, !dbg !174, !tbaa !88
  call void @libxsmm_generator_packed_getrf_avx_avx512_kernel(ptr noundef %2, ptr noundef %3, ptr noundef %4), !dbg !175
  br label %if.end, !dbg !176

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !177, !tbaa !88
  %6 = load i32, ptr @libxsmm_ninit, align 4, !dbg !177, !tbaa !94
  %cmp1 = icmp ult i32 1, %6, !dbg !177
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !177

cond.true:                                        ; preds = %if.else
  %7 = load i32, ptr @libxsmm_verbosity, align 4, !dbg !177, !tbaa !94
  br label %cond.end, !dbg !177

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !177

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 1, %cond.false ], !dbg !177
  call void @libxsmm_handle_error(ptr noundef %5, i32 noundef 90005, ptr noundef @__func__.libxsmm_generator_getrf_kernel, i32 noundef %cond), !dbg !177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !179

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !180
  br label %cleanup, !dbg !180

cleanup:                                          ; preds = %if.end, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpuid) #6, !dbg !180
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !180

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare !dbg !181 hidden void @libxsmm_generator_packed_getrf_avx_avx512_kernel(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @libxsmm_generator_trsm_kernel(ptr noundef %io_generated_code, ptr noundef %i_packed_trsm_desc, ptr noundef %i_arch) #0 !dbg !185 {
entry:
  %io_generated_code.addr = alloca ptr, align 8
  %i_packed_trsm_desc.addr = alloca ptr, align 8
  %i_arch.addr = alloca ptr, align 8
  store ptr %io_generated_code, ptr %io_generated_code.addr, align 8, !tbaa !88
  tail call void @llvm.dbg.declare(metadata ptr %io_generated_code.addr, metadata !193, metadata !DIExpression()), !dbg !196
  store ptr %i_packed_trsm_desc, ptr %i_packed_trsm_desc.addr, align 8, !tbaa !88
  tail call void @llvm.dbg.declare(metadata ptr %i_packed_trsm_desc.addr, metadata !194, metadata !DIExpression()), !dbg !197
  store ptr %i_arch, ptr %i_arch.addr, align 8, !tbaa !88
  tail call void @llvm.dbg.declare(metadata ptr %i_arch.addr, metadata !195, metadata !DIExpression()), !dbg !198
  %0 = load ptr, ptr %i_arch.addr, align 8, !dbg !199, !tbaa !88
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str) #7, !dbg !201
  %cmp = icmp eq i32 %call, 0, !dbg !202
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !203

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %i_arch.addr, align 8, !dbg !204, !tbaa !88
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.1) #7, !dbg !205
  %cmp2 = icmp eq i32 %call1, 0, !dbg !206
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !207

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %i_arch.addr, align 8, !dbg !208, !tbaa !88
  %call4 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.2) #7, !dbg !209
  %cmp5 = icmp eq i32 %call4, 0, !dbg !210
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !211

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load ptr, ptr %i_arch.addr, align 8, !dbg !212, !tbaa !88
  %call7 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.3) #7, !dbg !213
  %cmp8 = icmp eq i32 %call7, 0, !dbg !214
  br i1 %cmp8, label %if.then, label %lor.lhs.false9, !dbg !215

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %4 = load ptr, ptr %i_arch.addr, align 8, !dbg !216, !tbaa !88
  %call10 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.4) #7, !dbg !217
  %cmp11 = icmp eq i32 %call10, 0, !dbg !218
  br i1 %cmp11, label %if.then, label %if.else, !dbg !219

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %5 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !220, !tbaa !88
  %6 = load ptr, ptr %i_packed_trsm_desc.addr, align 8, !dbg !222, !tbaa !88
  %7 = load ptr, ptr %i_arch.addr, align 8, !dbg !223, !tbaa !88
  call void @libxsmm_generator_packed_trsm_avx_avx512_kernel(ptr noundef %5, ptr noundef %6, ptr noundef %7), !dbg !224
  br label %if.end, !dbg !225

if.else:                                          ; preds = %lor.lhs.false9
  %8 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !226, !tbaa !88
  %9 = load i32, ptr @libxsmm_ninit, align 4, !dbg !226, !tbaa !94
  %cmp12 = icmp ult i32 1, %9, !dbg !226
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !226

cond.true:                                        ; preds = %if.else
  %10 = load i32, ptr @libxsmm_verbosity, align 4, !dbg !226, !tbaa !94
  br label %cond.end, !dbg !226

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !226

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 1, %cond.false ], !dbg !226
  call void @libxsmm_handle_error(ptr noundef %8, i32 noundef 90005, ptr noundef @__func__.libxsmm_generator_trsm_kernel, i32 noundef %cond), !dbg !226
  br label %if.end, !dbg !228

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !229
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !230 i32 @strcmp(ptr noundef, ptr noundef) #3

declare !dbg !234 hidden void @libxsmm_generator_packed_trsm_avx_avx512_kernel(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @libxsmm_generator_trmm_kernel(ptr noundef %io_generated_code, ptr noundef %i_packed_trmm_desc, ptr noundef %i_arch) #0 !dbg !236 {
entry:
  %io_generated_code.addr = alloca ptr, align 8
  %i_packed_trmm_desc.addr = alloca ptr, align 8
  %i_arch.addr = alloca ptr, align 8
  store ptr %io_generated_code, ptr %io_generated_code.addr, align 8, !tbaa !88
  tail call void @llvm.dbg.declare(metadata ptr %io_generated_code.addr, metadata !244, metadata !DIExpression()), !dbg !247
  store ptr %i_packed_trmm_desc, ptr %i_packed_trmm_desc.addr, align 8, !tbaa !88
  tail call void @llvm.dbg.declare(metadata ptr %i_packed_trmm_desc.addr, metadata !245, metadata !DIExpression()), !dbg !248
  store ptr %i_arch, ptr %i_arch.addr, align 8, !tbaa !88
  tail call void @llvm.dbg.declare(metadata ptr %i_arch.addr, metadata !246, metadata !DIExpression()), !dbg !249
  %0 = load ptr, ptr %i_arch.addr, align 8, !dbg !250, !tbaa !88
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str) #7, !dbg !252
  %cmp = icmp eq i32 %call, 0, !dbg !253
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !254

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %i_arch.addr, align 8, !dbg !255, !tbaa !88
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.1) #7, !dbg !256
  %cmp2 = icmp eq i32 %call1, 0, !dbg !257
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !258

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %i_arch.addr, align 8, !dbg !259, !tbaa !88
  %call4 = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.2) #7, !dbg !260
  %cmp5 = icmp eq i32 %call4, 0, !dbg !261
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !262

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %3 = load ptr, ptr %i_arch.addr, align 8, !dbg !263, !tbaa !88
  %call7 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.3) #7, !dbg !264
  %cmp8 = icmp eq i32 %call7, 0, !dbg !265
  br i1 %cmp8, label %if.then, label %lor.lhs.false9, !dbg !266

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %4 = load ptr, ptr %i_arch.addr, align 8, !dbg !267, !tbaa !88
  %call10 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.4) #7, !dbg !268
  %cmp11 = icmp eq i32 %call10, 0, !dbg !269
  br i1 %cmp11, label %if.then, label %if.else, !dbg !270

if.then:                                          ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %5 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !271, !tbaa !88
  %6 = load ptr, ptr %i_packed_trmm_desc.addr, align 8, !dbg !273, !tbaa !88
  %7 = load ptr, ptr %i_arch.addr, align 8, !dbg !274, !tbaa !88
  call void @libxsmm_generator_packed_trmm_avx_avx512_kernel(ptr noundef %5, ptr noundef %6, ptr noundef %7), !dbg !275
  br label %if.end, !dbg !276

if.else:                                          ; preds = %lor.lhs.false9
  %8 = load ptr, ptr %io_generated_code.addr, align 8, !dbg !277, !tbaa !88
  %9 = load i32, ptr @libxsmm_ninit, align 4, !dbg !277, !tbaa !94
  %cmp12 = icmp ult i32 1, %9, !dbg !277
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !277

cond.true:                                        ; preds = %if.else
  %10 = load i32, ptr @libxsmm_verbosity, align 4, !dbg !277, !tbaa !94
  br label %cond.end, !dbg !277

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !277

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 1, %cond.false ], !dbg !277
  call void @libxsmm_handle_error(ptr noundef %8, i32 noundef 90005, ptr noundef @__func__.libxsmm_generator_trmm_kernel, i32 noundef %cond), !dbg !277
  br label %if.end, !dbg !279

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !280
}

declare !dbg !281 hidden void @libxsmm_generator_packed_trmm_avx_avx512_kernel(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!30}
!llvm.module.flags = !{!33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/generator_packed.c", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "0fbd43401f273d3293c53c867a0e9501")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 31)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !3, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !12, isLocal: true, isDefinition: true)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 4)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !12, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !12, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !12, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !12, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 30)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !25, isLocal: true, isDefinition: true)
!30 = distinct !DICompileUnit(language: DW_LANG_C11, file: !31, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !32, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "src/generator_packed.c", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "0fbd43401f273d3293c53c867a0e9501")
!32 = !{!0, !8, !10, !15, !17, !19, !21, !23, !28}
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{i32 8, !"PIC Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!39 = distinct !DISubprogram(name: "libxsmm_generator_pgemm_kernel", scope: !2, file: !2, line: 27, type: !40, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !62)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !56, !61, null}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_generated_code", file: !44, line: 138, baseType: !45)
!44 = !DIFile(filename: "include/libxsmm_generator.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "546d2dd75eaf8cc5937953149b404b74")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_generated_code", file: !44, line: 118, size: 256, elements: !46)
!46 = !{!47, !49, !51, !52, !53, !54, !55}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "generated_code", scope: !45, file: !44, line: 119, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size", scope: !45, file: !44, line: 120, baseType: !50, size: 32, offset: 64)
!50 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "code_size", scope: !45, file: !44, line: 121, baseType: !50, size: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "code_type", scope: !45, file: !44, line: 122, baseType: !50, size: 32, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !45, file: !44, line: 130, baseType: !50, size: 32, offset: 160)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !45, file: !44, line: 134, baseType: !50, size: 32, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "sf_size", scope: !45, file: !44, line: 135, baseType: !50, size: 32, offset: 224)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_pgemm_descriptor", file: !59, line: 137, baseType: !60)
!59 = !DIFile(filename: "include/libxsmm_typedefs.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "6455bf141a5acf04bdbd5b62071dd37a")
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_pgemm_descriptor", file: !59, line: 137, flags: DIFlagFwdDecl)
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !{!63, !64, !65, !66, !69, !72, !73, !74, !75}
!63 = !DILocalVariable(name: "io_generated_code", arg: 1, scope: !39, file: !2, line: 27, type: !42)
!64 = !DILocalVariable(name: "i_packed_pgemm_desc", arg: 2, scope: !39, file: !2, line: 28, type: !56)
!65 = !DILocalVariable(name: "i_arch", arg: 3, scope: !39, file: !2, line: 29, type: !61)
!66 = !DILocalVariable(name: "cpuid", scope: !39, file: !2, line: 30, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!69 = !DILocalVariable(name: "iunroll", scope: !70, file: !2, line: 35, type: !50)
!70 = distinct !DILexicalBlock(scope: !71, file: !2, line: 33, column: 36)
!71 = distinct !DILexicalBlock(scope: !39, file: !2, line: 33, column: 8)
!72 = !DILocalVariable(name: "junroll", scope: !70, file: !2, line: 35, type: !50)
!73 = !DILocalVariable(name: "loopi", scope: !70, file: !2, line: 35, type: !50)
!74 = !DILocalVariable(name: "loopj", scope: !70, file: !2, line: 35, type: !50)
!75 = !DILocalVariable(name: "args", scope: !70, file: !2, line: 36, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !77, line: 42, baseType: !78)
!77 = !DIFile(filename: "/usr/lib/clang/18/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "95ff2da58c2c75d7c246cff7935ff18b")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !31, baseType: !79)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 192, elements: !86)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !81)
!81 = !{!82, !83, !84, !85}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !80, file: !31, line: 36, baseType: !50, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !80, file: !31, line: 36, baseType: !50, size: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !80, file: !31, line: 36, baseType: !48, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !80, file: !31, line: 36, baseType: !48, size: 64, offset: 128)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !{!89, !89, i64 0}
!89 = !{!"any pointer", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !DILocation(line: 27, column: 71, scope: !39)
!93 = !DILocation(line: 28, column: 71, scope: !39)
!94 = !{!95, !95, i64 0}
!95 = !{!"int", !90, i64 0}
!96 = !DILocation(line: 29, column: 71, scope: !39)
!97 = !DILocation(line: 30, column: 3, scope: !39)
!98 = !DILocation(line: 30, column: 21, scope: !39)
!99 = !DILocation(line: 30, column: 49, scope: !39)
!100 = !DILocation(line: 30, column: 29, scope: !39)
!101 = !DILocation(line: 33, column: 27, scope: !71)
!102 = !DILocation(line: 33, column: 24, scope: !71)
!103 = !DILocation(line: 33, column: 8, scope: !39)
!104 = !DILocation(line: 35, column: 5, scope: !70)
!105 = !DILocation(line: 35, column: 18, scope: !70)
!106 = !DILocation(line: 35, column: 27, scope: !70)
!107 = !DILocation(line: 35, column: 36, scope: !70)
!108 = !DILocation(line: 35, column: 43, scope: !70)
!109 = !DILocation(line: 36, column: 5, scope: !70)
!110 = !DILocation(line: 36, column: 13, scope: !70)
!111 = !DILocation(line: 37, column: 5, scope: !70)
!112 = !DILocation(line: 38, column: 15, scope: !70)
!113 = !DILocation(line: 38, column: 13, scope: !70)
!114 = !DILocation(line: 39, column: 15, scope: !70)
!115 = !DILocation(line: 39, column: 13, scope: !70)
!116 = !DILocation(line: 40, column: 13, scope: !70)
!117 = !DILocation(line: 40, column: 11, scope: !70)
!118 = !DILocation(line: 41, column: 13, scope: !70)
!119 = !DILocation(line: 41, column: 11, scope: !70)
!120 = !DILocation(line: 42, column: 5, scope: !70)
!121 = !DILocation(line: 43, column: 54, scope: !70)
!122 = !DILocation(line: 43, column: 73, scope: !70)
!123 = !DILocation(line: 43, column: 94, scope: !70)
!124 = !DILocation(line: 43, column: 101, scope: !70)
!125 = !DILocation(line: 43, column: 110, scope: !70)
!126 = !DILocation(line: 43, column: 119, scope: !70)
!127 = !DILocation(line: 43, column: 126, scope: !70)
!128 = !DILocation(line: 43, column: 5, scope: !70)
!129 = !DILocation(line: 47, column: 3, scope: !71)
!130 = !DILocation(line: 47, column: 3, scope: !70)
!131 = !DILocation(line: 48, column: 5, scope: !132)
!132 = distinct !DILexicalBlock(scope: !71, file: !2, line: 47, column: 10)
!133 = !DILocation(line: 49, column: 5, scope: !132)
!134 = !DILocation(line: 51, column: 1, scope: !39)
!135 = !DISubprogram(name: "libxsmm_cpuid_name", scope: !136, file: !136, line: 56, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DIFile(filename: "include/libxsmm_cpuid.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "29ec199935428b9b05a1e39a2f288cae")
!137 = !DISubroutineType(types: !138)
!138 = !{!68, !61}
!139 = !DISubprogram(name: "libxsmm_generator_packed_gemm_avx_avx512_kernel", scope: !140, file: !140, line: 19, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!140 = !DIFile(filename: "./src/generator_packed_gemm_avx_avx512.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "ed4fa1a21e18504ec69e89cf212b98a9")
!141 = !DISubroutineType(types: !142)
!142 = !{null, !42, !56, !68, !50, !50, !50, !50}
!143 = !DISubprogram(name: "libxsmm_handle_error", scope: !144, file: !144, line: 632, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!144 = !DIFile(filename: "./src/generator_common.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "a57c85608557ea9830368c91f6ffd0fa")
!145 = !DISubroutineType(types: !146)
!146 = !{null, !42, !147, !68, !61}
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!148 = distinct !DISubprogram(name: "libxsmm_generator_getrf_kernel", scope: !2, file: !2, line: 55, type: !149, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !155)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !42, !151, !61}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_getrf_descriptor", file: !59, line: 135, baseType: !154)
!154 = !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_getrf_descriptor", file: !59, line: 135, flags: DIFlagFwdDecl)
!155 = !{!156, !157, !158, !159}
!156 = !DILocalVariable(name: "io_generated_code", arg: 1, scope: !148, file: !2, line: 55, type: !42)
!157 = !DILocalVariable(name: "i_packed_getrf_desc", arg: 2, scope: !148, file: !2, line: 56, type: !151)
!158 = !DILocalVariable(name: "i_arch", arg: 3, scope: !148, file: !2, line: 57, type: !61)
!159 = !DILocalVariable(name: "cpuid", scope: !148, file: !2, line: 58, type: !67)
!160 = !DILocation(line: 55, column: 71, scope: !148)
!161 = !DILocation(line: 56, column: 71, scope: !148)
!162 = !DILocation(line: 57, column: 71, scope: !148)
!163 = !DILocation(line: 58, column: 3, scope: !148)
!164 = !DILocation(line: 58, column: 21, scope: !148)
!165 = !DILocation(line: 58, column: 49, scope: !148)
!166 = !DILocation(line: 58, column: 29, scope: !148)
!167 = !DILocation(line: 61, column: 27, scope: !168)
!168 = distinct !DILexicalBlock(scope: !148, file: !2, line: 61, column: 8)
!169 = !DILocation(line: 61, column: 24, scope: !168)
!170 = !DILocation(line: 61, column: 8, scope: !148)
!171 = !DILocation(line: 62, column: 55, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !2, line: 61, column: 36)
!173 = !DILocation(line: 62, column: 74, scope: !172)
!174 = !DILocation(line: 62, column: 95, scope: !172)
!175 = !DILocation(line: 62, column: 5, scope: !172)
!176 = !DILocation(line: 63, column: 3, scope: !172)
!177 = !DILocation(line: 64, column: 5, scope: !178)
!178 = distinct !DILexicalBlock(scope: !168, file: !2, line: 63, column: 10)
!179 = !DILocation(line: 65, column: 5, scope: !178)
!180 = !DILocation(line: 67, column: 1, scope: !148)
!181 = !DISubprogram(name: "libxsmm_generator_packed_getrf_avx_avx512_kernel", scope: !182, file: !182, line: 18, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DIFile(filename: "./src/generator_packed_getrf_avx_avx512.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "b0ac49009f3314065be4a32934e2516a")
!183 = !DISubroutineType(types: !184)
!184 = !{null, !42, !151, !68}
!185 = distinct !DISubprogram(name: "libxsmm_generator_trsm_kernel", scope: !2, file: !2, line: 72, type: !186, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !192)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !42, !188, !68}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_trsm_descriptor", file: !59, line: 131, baseType: !191)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_trsm_descriptor", file: !59, line: 131, flags: DIFlagFwdDecl)
!192 = !{!193, !194, !195}
!193 = !DILocalVariable(name: "io_generated_code", arg: 1, scope: !185, file: !2, line: 72, type: !42)
!194 = !DILocalVariable(name: "i_packed_trsm_desc", arg: 2, scope: !185, file: !2, line: 73, type: !188)
!195 = !DILocalVariable(name: "i_arch", arg: 3, scope: !185, file: !2, line: 74, type: !68)
!196 = !DILocation(line: 72, column: 69, scope: !185)
!197 = !DILocation(line: 73, column: 69, scope: !185)
!198 = !DILocation(line: 74, column: 69, scope: !185)
!199 = !DILocation(line: 76, column: 16, scope: !200)
!200 = distinct !DILexicalBlock(scope: !185, file: !2, line: 76, column: 8)
!201 = !DILocation(line: 76, column: 9, scope: !200)
!202 = !DILocation(line: 76, column: 31, scope: !200)
!203 = !DILocation(line: 76, column: 37, scope: !200)
!204 = !DILocation(line: 77, column: 16, scope: !200)
!205 = !DILocation(line: 77, column: 9, scope: !200)
!206 = !DILocation(line: 77, column: 31, scope: !200)
!207 = !DILocation(line: 77, column: 37, scope: !200)
!208 = !DILocation(line: 78, column: 16, scope: !200)
!209 = !DILocation(line: 78, column: 9, scope: !200)
!210 = !DILocation(line: 78, column: 31, scope: !200)
!211 = !DILocation(line: 78, column: 37, scope: !200)
!212 = !DILocation(line: 79, column: 16, scope: !200)
!213 = !DILocation(line: 79, column: 9, scope: !200)
!214 = !DILocation(line: 79, column: 31, scope: !200)
!215 = !DILocation(line: 79, column: 37, scope: !200)
!216 = !DILocation(line: 80, column: 16, scope: !200)
!217 = !DILocation(line: 80, column: 9, scope: !200)
!218 = !DILocation(line: 80, column: 31, scope: !200)
!219 = !DILocation(line: 76, column: 8, scope: !185)
!220 = !DILocation(line: 81, column: 54, scope: !221)
!221 = distinct !DILexicalBlock(scope: !200, file: !2, line: 80, column: 42)
!222 = !DILocation(line: 81, column: 73, scope: !221)
!223 = !DILocation(line: 81, column: 93, scope: !221)
!224 = !DILocation(line: 81, column: 5, scope: !221)
!225 = !DILocation(line: 82, column: 3, scope: !221)
!226 = !DILocation(line: 84, column: 5, scope: !227)
!227 = distinct !DILexicalBlock(scope: !200, file: !2, line: 82, column: 10)
!228 = !DILocation(line: 85, column: 5, scope: !227)
!229 = !DILocation(line: 87, column: 1, scope: !185)
!230 = !DISubprogram(name: "strcmp", scope: !231, file: !231, line: 156, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!232 = !DISubroutineType(types: !233)
!233 = !{!61, !68, !68}
!234 = !DISubprogram(name: "libxsmm_generator_packed_trsm_avx_avx512_kernel", scope: !235, file: !235, line: 18, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DIFile(filename: "./src/generator_packed_trsm_avx_avx512.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "e9103740872e65622ac9ea2e80ab6f2b")
!236 = distinct !DISubprogram(name: "libxsmm_generator_trmm_kernel", scope: !2, file: !2, line: 92, type: !237, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !30, retainedNodes: !243)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !42, !239, !68}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_trmm_descriptor", file: !59, line: 133, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_trmm_descriptor", file: !59, line: 133, flags: DIFlagFwdDecl)
!243 = !{!244, !245, !246}
!244 = !DILocalVariable(name: "io_generated_code", arg: 1, scope: !236, file: !2, line: 92, type: !42)
!245 = !DILocalVariable(name: "i_packed_trmm_desc", arg: 2, scope: !236, file: !2, line: 93, type: !239)
!246 = !DILocalVariable(name: "i_arch", arg: 3, scope: !236, file: !2, line: 94, type: !68)
!247 = !DILocation(line: 92, column: 68, scope: !236)
!248 = !DILocation(line: 93, column: 68, scope: !236)
!249 = !DILocation(line: 94, column: 68, scope: !236)
!250 = !DILocation(line: 96, column: 16, scope: !251)
!251 = distinct !DILexicalBlock(scope: !236, file: !2, line: 96, column: 8)
!252 = !DILocation(line: 96, column: 9, scope: !251)
!253 = !DILocation(line: 96, column: 31, scope: !251)
!254 = !DILocation(line: 96, column: 37, scope: !251)
!255 = !DILocation(line: 97, column: 16, scope: !251)
!256 = !DILocation(line: 97, column: 9, scope: !251)
!257 = !DILocation(line: 97, column: 31, scope: !251)
!258 = !DILocation(line: 97, column: 37, scope: !251)
!259 = !DILocation(line: 98, column: 16, scope: !251)
!260 = !DILocation(line: 98, column: 9, scope: !251)
!261 = !DILocation(line: 98, column: 31, scope: !251)
!262 = !DILocation(line: 98, column: 37, scope: !251)
!263 = !DILocation(line: 99, column: 16, scope: !251)
!264 = !DILocation(line: 99, column: 9, scope: !251)
!265 = !DILocation(line: 99, column: 31, scope: !251)
!266 = !DILocation(line: 99, column: 37, scope: !251)
!267 = !DILocation(line: 100, column: 16, scope: !251)
!268 = !DILocation(line: 100, column: 9, scope: !251)
!269 = !DILocation(line: 100, column: 31, scope: !251)
!270 = !DILocation(line: 96, column: 8, scope: !236)
!271 = !DILocation(line: 101, column: 54, scope: !272)
!272 = distinct !DILexicalBlock(scope: !251, file: !2, line: 100, column: 42)
!273 = !DILocation(line: 101, column: 73, scope: !272)
!274 = !DILocation(line: 101, column: 93, scope: !272)
!275 = !DILocation(line: 101, column: 5, scope: !272)
!276 = !DILocation(line: 102, column: 3, scope: !272)
!277 = !DILocation(line: 104, column: 5, scope: !278)
!278 = distinct !DILexicalBlock(scope: !251, file: !2, line: 102, column: 10)
!279 = !DILocation(line: 105, column: 5, scope: !278)
!280 = !DILocation(line: 107, column: 1, scope: !236)
!281 = !DISubprogram(name: "libxsmm_generator_packed_trmm_avx_avx512_kernel", scope: !282, file: !282, line: 18, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DIFile(filename: "./src/generator_packed_trmm_avx_avx512.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "0646995787c3ae26868e0239df6ba7ed")

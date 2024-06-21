; ModuleID = 'samples/303.bc'
source_filename = "./src/libxsmm_dnn_optimizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libxsmm_dnn_optimizer_desc = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32 }
%struct.libxsmm_dnn_optimizer = type { %struct.libxsmm_dnn_optimizer_desc, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, ptr }
%struct.libxsmm_dnn_tensor_datalayout = type { ptr, ptr, i32, i32, i32, i32 }
%struct.libxsmm_dnn_tensor = type { ptr, ptr, i8 }

@libxsmm_ninit = external global i32, align 4

; Function Attrs: nounwind uwtable
define ptr @libxsmm_dnn_create_optimizer(ptr noundef byval(%struct.libxsmm_dnn_optimizer_desc) align 8 %optimizer_desc, ptr noundef %status) #0 !dbg !178 {
entry:
  %retval = alloca ptr, align 8
  %status.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  tail call void @llvm.dbg.declare(metadata ptr %optimizer_desc, metadata !186, metadata !DIExpression()), !dbg !189
  store ptr %status, ptr %status.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !187, metadata !DIExpression()), !dbg !194
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #8, !dbg !195
  tail call void @llvm.dbg.declare(metadata ptr %handle, metadata !188, metadata !DIExpression()), !dbg !196
  store ptr null, ptr %handle, align 8, !dbg !196, !tbaa !190
  %0 = load i32, ptr @libxsmm_ninit, align 4, !dbg !197, !tbaa !199
  %cmp = icmp ugt i32 2, %0, !dbg !197
  br i1 %cmp, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %entry
  call void @libxsmm_init(), !dbg !197
  br label %if.end, !dbg !197

if.end:                                           ; preds = %if.then, %entry
  %datatype = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %optimizer_desc, i32 0, i32 8, !dbg !202
  %1 = load i32, ptr %datatype, align 8, !dbg !202, !tbaa !204
  %cmp1 = icmp eq i32 %1, 1, !dbg !207
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !208

lor.lhs.false:                                    ; preds = %if.end
  %datatype2 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %optimizer_desc, i32 0, i32 8, !dbg !209
  %2 = load i32, ptr %datatype2, align 8, !dbg !209, !tbaa !204
  %cmp3 = icmp eq i32 %2, 2, !dbg !210
  br i1 %cmp3, label %if.then4, label %if.else64, !dbg !211

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %call = call noalias ptr @malloc(i64 noundef 112) #9, !dbg !212
  store ptr %call, ptr %handle, align 8, !dbg !214, !tbaa !190
  %3 = load ptr, ptr %handle, align 8, !dbg !215, !tbaa !190
  %cmp5 = icmp ne ptr null, %3, !dbg !217
  br i1 %cmp5, label %if.then6, label %if.else62, !dbg !218

if.then6:                                         ; preds = %if.then4
  %4 = load ptr, ptr %status.addr, align 8, !dbg !219, !tbaa !190
  store i32 0, ptr %4, align 4, !dbg !221, !tbaa !199
  %5 = load ptr, ptr %handle, align 8, !dbg !222, !tbaa !190
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 112, i1 false), !dbg !223
  %6 = load ptr, ptr %handle, align 8, !dbg !224, !tbaa !190
  %desc = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %6, i32 0, i32 0, !dbg !225
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %desc, ptr align 8 %optimizer_desc, i64 40, i1 false), !dbg !226, !tbaa.struct !227
  %7 = load ptr, ptr %handle, align 8, !dbg !230, !tbaa !190
  %desc7 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %7, i32 0, i32 0, !dbg !232
  %filter_format = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc7, i32 0, i32 9, !dbg !233
  %8 = load i32, ptr %filter_format, align 4, !dbg !233, !tbaa !234
  %and = and i32 %8, 1, !dbg !237
  %cmp8 = icmp ugt i32 %and, 0, !dbg !238
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !239

if.then9:                                         ; preds = %if.then6
  %9 = load ptr, ptr %handle, align 8, !dbg !240, !tbaa !190
  %desc10 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %9, i32 0, i32 0, !dbg !242
  %C = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc10, i32 0, i32 0, !dbg !243
  %10 = load i32, ptr %C, align 8, !dbg !243, !tbaa !244
  %11 = load ptr, ptr %handle, align 8, !dbg !245, !tbaa !190
  %desc11 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %11, i32 0, i32 0, !dbg !246
  %K = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc11, i32 0, i32 1, !dbg !247
  %12 = load i32, ptr %K, align 4, !dbg !247, !tbaa !248
  %13 = load ptr, ptr %handle, align 8, !dbg !249, !tbaa !190
  %bc = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %13, i32 0, i32 5, !dbg !250
  %14 = load ptr, ptr %handle, align 8, !dbg !251, !tbaa !190
  %bk = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %14, i32 0, i32 7, !dbg !252
  %15 = load ptr, ptr %handle, align 8, !dbg !253, !tbaa !190
  %fm_lp_block = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %15, i32 0, i32 9, !dbg !254
  %16 = load ptr, ptr %handle, align 8, !dbg !255, !tbaa !190
  %desc12 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %16, i32 0, i32 0, !dbg !256
  %datatype13 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc12, i32 0, i32 8, !dbg !257
  %17 = load i32, ptr %datatype13, align 8, !dbg !257, !tbaa !258
  %18 = load ptr, ptr %handle, align 8, !dbg !259, !tbaa !190
  %desc14 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %18, i32 0, i32 0, !dbg !260
  %datatype15 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc14, i32 0, i32 8, !dbg !261
  %19 = load i32, ptr %datatype15, align 8, !dbg !261, !tbaa !258
  %call16 = call i32 @libxsmm_dnn_get_feature_map_blocks(i32 noundef %10, i32 noundef %12, ptr noundef %bc, ptr noundef %bk, ptr noundef %fm_lp_block, i32 noundef %17, i32 noundef %19), !dbg !262
  %20 = load ptr, ptr %status.addr, align 8, !dbg !263, !tbaa !190
  store i32 %call16, ptr %20, align 4, !dbg !264, !tbaa !199
  %21 = load ptr, ptr %handle, align 8, !dbg !265, !tbaa !190
  %desc17 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %21, i32 0, i32 0, !dbg !266
  %C18 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc17, i32 0, i32 0, !dbg !267
  %22 = load i32, ptr %C18, align 8, !dbg !267, !tbaa !244
  %23 = load ptr, ptr %handle, align 8, !dbg !268, !tbaa !190
  %bc19 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %23, i32 0, i32 5, !dbg !269
  %24 = load i32, ptr %bc19, align 8, !dbg !269, !tbaa !270
  %div = sdiv i32 %22, %24, !dbg !271
  %25 = load ptr, ptr %handle, align 8, !dbg !272, !tbaa !190
  %Bc = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %25, i32 0, i32 6, !dbg !273
  store i32 %div, ptr %Bc, align 4, !dbg !274, !tbaa !275
  %26 = load ptr, ptr %handle, align 8, !dbg !276, !tbaa !190
  %desc20 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %26, i32 0, i32 0, !dbg !277
  %K21 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc20, i32 0, i32 1, !dbg !278
  %27 = load i32, ptr %K21, align 4, !dbg !278, !tbaa !248
  %28 = load ptr, ptr %handle, align 8, !dbg !279, !tbaa !190
  %bk22 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %28, i32 0, i32 7, !dbg !280
  %29 = load i32, ptr %bk22, align 8, !dbg !280, !tbaa !281
  %div23 = sdiv i32 %27, %29, !dbg !282
  %30 = load ptr, ptr %handle, align 8, !dbg !283, !tbaa !190
  %Bk = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %30, i32 0, i32 8, !dbg !284
  store i32 %div23, ptr %Bk, align 4, !dbg !285, !tbaa !286
  br label %if.end59, !dbg !287

if.else:                                          ; preds = %if.then6
  %31 = load ptr, ptr %handle, align 8, !dbg !288, !tbaa !190
  %desc24 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %31, i32 0, i32 0, !dbg !290
  %filter_format25 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc24, i32 0, i32 9, !dbg !291
  %32 = load i32, ptr %filter_format25, align 4, !dbg !291, !tbaa !234
  %and26 = and i32 %32, 64, !dbg !292
  %cmp27 = icmp ugt i32 %and26, 0, !dbg !293
  br i1 %cmp27, label %if.then28, label %if.else57, !dbg !294

if.then28:                                        ; preds = %if.else
  %datatype29 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %optimizer_desc, i32 0, i32 8, !dbg !295
  %33 = load i32, ptr %datatype29, align 8, !dbg !295, !tbaa !204
  %cmp30 = icmp eq i32 %33, 1, !dbg !298
  br i1 %cmp30, label %if.then31, label %if.else33, !dbg !299

if.then31:                                        ; preds = %if.then28
  %34 = load ptr, ptr %handle, align 8, !dbg !300, !tbaa !190
  %fm_lp_block32 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %34, i32 0, i32 9, !dbg !302
  store i32 1, ptr %fm_lp_block32, align 8, !dbg !303, !tbaa !304
  br label %if.end40, !dbg !305

if.else33:                                        ; preds = %if.then28
  %datatype34 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %optimizer_desc, i32 0, i32 8, !dbg !306
  %35 = load i32, ptr %datatype34, align 8, !dbg !306, !tbaa !204
  %cmp35 = icmp eq i32 %35, 2, !dbg !308
  br i1 %cmp35, label %if.then36, label %if.else38, !dbg !309

if.then36:                                        ; preds = %if.else33
  %36 = load ptr, ptr %handle, align 8, !dbg !310, !tbaa !190
  %fm_lp_block37 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %36, i32 0, i32 9, !dbg !312
  store i32 2, ptr %fm_lp_block37, align 8, !dbg !313, !tbaa !304
  br label %if.end39, !dbg !314

if.else38:                                        ; preds = %if.else33
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.then36
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then31
  %37 = load ptr, ptr %handle, align 8, !dbg !315, !tbaa !190
  %desc41 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %37, i32 0, i32 0, !dbg !316
  %bc42 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc41, i32 0, i32 2, !dbg !317
  %38 = load i32, ptr %bc42, align 8, !dbg !317, !tbaa !318
  %39 = load ptr, ptr %handle, align 8, !dbg !319, !tbaa !190
  %bc43 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %39, i32 0, i32 5, !dbg !320
  store i32 %38, ptr %bc43, align 8, !dbg !321, !tbaa !270
  %40 = load ptr, ptr %handle, align 8, !dbg !322, !tbaa !190
  %desc44 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %40, i32 0, i32 0, !dbg !323
  %bk45 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc44, i32 0, i32 3, !dbg !324
  %41 = load i32, ptr %bk45, align 4, !dbg !324, !tbaa !325
  %42 = load ptr, ptr %handle, align 8, !dbg !326, !tbaa !190
  %bk46 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %42, i32 0, i32 7, !dbg !327
  store i32 %41, ptr %bk46, align 8, !dbg !328, !tbaa !281
  %43 = load ptr, ptr %handle, align 8, !dbg !329, !tbaa !190
  %desc47 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %43, i32 0, i32 0, !dbg !330
  %C48 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc47, i32 0, i32 0, !dbg !331
  %44 = load i32, ptr %C48, align 8, !dbg !331, !tbaa !244
  %45 = load ptr, ptr %handle, align 8, !dbg !332, !tbaa !190
  %bc49 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %45, i32 0, i32 5, !dbg !333
  %46 = load i32, ptr %bc49, align 8, !dbg !333, !tbaa !270
  %div50 = sdiv i32 %44, %46, !dbg !334
  %47 = load ptr, ptr %handle, align 8, !dbg !335, !tbaa !190
  %Bc51 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %47, i32 0, i32 6, !dbg !336
  store i32 %div50, ptr %Bc51, align 4, !dbg !337, !tbaa !275
  %48 = load ptr, ptr %handle, align 8, !dbg !338, !tbaa !190
  %desc52 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %48, i32 0, i32 0, !dbg !339
  %K53 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc52, i32 0, i32 1, !dbg !340
  %49 = load i32, ptr %K53, align 4, !dbg !340, !tbaa !248
  %50 = load ptr, ptr %handle, align 8, !dbg !341, !tbaa !190
  %bk54 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %50, i32 0, i32 7, !dbg !342
  %51 = load i32, ptr %bk54, align 8, !dbg !342, !tbaa !281
  %div55 = sdiv i32 %49, %51, !dbg !343
  %52 = load ptr, ptr %handle, align 8, !dbg !344, !tbaa !190
  %Bk56 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %52, i32 0, i32 8, !dbg !345
  store i32 %div55, ptr %Bk56, align 4, !dbg !346, !tbaa !286
  br label %if.end58, !dbg !347

if.else57:                                        ; preds = %if.else
  %53 = load ptr, ptr %status.addr, align 8, !dbg !348, !tbaa !190
  store i32 100001, ptr %53, align 4, !dbg !350, !tbaa !199
  %54 = load ptr, ptr %handle, align 8, !dbg !351, !tbaa !190
  call void @free(ptr noundef %54) #8, !dbg !352
  store ptr null, ptr %handle, align 8, !dbg !353, !tbaa !190
  %55 = load ptr, ptr %handle, align 8, !dbg !354, !tbaa !190
  store ptr %55, ptr %retval, align 8, !dbg !355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !355

if.end58:                                         ; preds = %if.end40
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then9
  %56 = load ptr, ptr %handle, align 8, !dbg !356, !tbaa !190
  %desc60 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %56, i32 0, i32 0, !dbg !357
  %threads = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc60, i32 0, i32 5, !dbg !358
  %57 = load i32, ptr %threads, align 4, !dbg !358, !tbaa !359
  %call61 = call ptr @libxsmm_barrier_create(i32 noundef %57, i32 noundef 1), !dbg !360
  %58 = load ptr, ptr %handle, align 8, !dbg !361, !tbaa !190
  %barrier = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %58, i32 0, i32 4, !dbg !362
  store ptr %call61, ptr %barrier, align 8, !dbg !363, !tbaa !364
  %59 = load ptr, ptr %handle, align 8, !dbg !365, !tbaa !190
  %scratch_size = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %59, i32 0, i32 10, !dbg !366
  store i64 1, ptr %scratch_size, align 8, !dbg !367, !tbaa !368
  br label %if.end63, !dbg !369

if.else62:                                        ; preds = %if.then4
  %60 = load ptr, ptr %status.addr, align 8, !dbg !370, !tbaa !190
  store i32 100001, ptr %60, align 4, !dbg !372, !tbaa !199
  br label %if.end63

if.end63:                                         ; preds = %if.else62, %if.end59
  br label %if.end65, !dbg !373

if.else64:                                        ; preds = %lor.lhs.false
  %61 = load ptr, ptr %status.addr, align 8, !dbg !374, !tbaa !190
  store i32 100002, ptr %61, align 4, !dbg !376, !tbaa !199
  br label %if.end65

if.end65:                                         ; preds = %if.else64, %if.end63
  %62 = load ptr, ptr %handle, align 8, !dbg !377, !tbaa !190
  store ptr %62, ptr %retval, align 8, !dbg !378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !378

cleanup:                                          ; preds = %if.end65, %if.else57
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #8, !dbg !379
  %63 = load ptr, ptr %retval, align 8, !dbg !379
  ret ptr %63, !dbg !379
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !380 void @libxsmm_init() #2

; Function Attrs: nounwind allocsize(0)
declare !dbg !384 noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !388 hidden i32 @libxsmm_dnn_get_feature_map_blocks(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare !dbg !392 void @free(ptr noundef) #6

declare !dbg !395 ptr @libxsmm_barrier_create(i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_destroy_optimizer(ptr noundef %handle) #0 !dbg !398 {
entry:
  %handle.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !404, metadata !DIExpression()), !dbg !406
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !407
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !405, metadata !DIExpression()), !dbg !408
  store i32 0, ptr %status, align 4, !dbg !408, !tbaa !199
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !409, !tbaa !190
  %cmp = icmp ne ptr null, %0, !dbg !411
  br i1 %cmp, label %if.then, label %if.else, !dbg !412

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !413, !tbaa !190
  %barrier = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %1, i32 0, i32 4, !dbg !416
  %2 = load ptr, ptr %barrier, align 8, !dbg !416, !tbaa !364
  %cmp1 = icmp ne ptr %2, null, !dbg !417
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !418

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %handle.addr, align 8, !dbg !419, !tbaa !190
  %barrier3 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %3, i32 0, i32 4, !dbg !421
  %4 = load ptr, ptr %barrier3, align 8, !dbg !421, !tbaa !364
  call void @libxsmm_barrier_destroy(ptr noundef %4), !dbg !422
  br label %if.end, !dbg !423

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !424, !tbaa !190
  call void @free(ptr noundef %5) #8, !dbg !425
  br label %if.end4, !dbg !426

if.else:                                          ; preds = %entry
  store i32 100004, ptr %status, align 4, !dbg !427, !tbaa !199
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  %6 = load i32, ptr %status, align 4, !dbg !429, !tbaa !199
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !430
  ret i32 %6, !dbg !431
}

declare !dbg !432 void @libxsmm_barrier_destroy(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @libxsmm_dnn_optimizer_create_tensor_datalayout(ptr noundef %handle, i32 noundef %type, ptr noundef %status) #0 !dbg !435 {
entry:
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %status.addr = alloca ptr, align 8
  %layout = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !440, metadata !DIExpression()), !dbg !444
  store i32 %type, ptr %type.addr, align 4, !tbaa !229
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !441, metadata !DIExpression()), !dbg !445
  store ptr %status, ptr %status.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 8, ptr %layout) #8, !dbg !447
  tail call void @llvm.dbg.declare(metadata ptr %layout, metadata !443, metadata !DIExpression()), !dbg !448
  %0 = load ptr, ptr %status.addr, align 8, !dbg !449, !tbaa !190
  store i32 0, ptr %0, align 4, !dbg !450, !tbaa !199
  store ptr null, ptr %layout, align 8, !dbg !451, !tbaa !190
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !452, !tbaa !190
  %cmp = icmp ne ptr %1, null, !dbg !454
  br i1 %cmp, label %if.then, label %if.else100, !dbg !455

if.then:                                          ; preds = %entry
  %call = call noalias ptr @malloc(i64 noundef 32) #9, !dbg !456
  store ptr %call, ptr %layout, align 8, !dbg !458, !tbaa !190
  %2 = load ptr, ptr %layout, align 8, !dbg !459, !tbaa !190
  %cmp1 = icmp ne ptr %2, null, !dbg !461
  br i1 %cmp1, label %if.then2, label %if.else98, !dbg !462

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %layout, align 8, !dbg !463, !tbaa !190
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 32, i1 false), !dbg !465
  %4 = load ptr, ptr %handle.addr, align 8, !dbg !466, !tbaa !190
  %desc = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %4, i32 0, i32 0, !dbg !467
  %filter_format = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc, i32 0, i32 9, !dbg !468
  %5 = load i32, ptr %filter_format, align 4, !dbg !468, !tbaa !234
  %6 = load ptr, ptr %layout, align 8, !dbg !469, !tbaa !190
  %format = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %6, i32 0, i32 3, !dbg !470
  store i32 %5, ptr %format, align 4, !dbg !471, !tbaa !472
  %7 = load i32, ptr %type.addr, align 4, !dbg !474, !tbaa !229
  %cmp3 = icmp eq i32 %7, 10, !dbg !476
  br i1 %cmp3, label %if.then7, label %lor.lhs.false, !dbg !477

lor.lhs.false:                                    ; preds = %if.then2
  %8 = load i32, ptr %type.addr, align 4, !dbg !478, !tbaa !229
  %cmp4 = icmp eq i32 %8, 12, !dbg !479
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !480

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %9 = load i32, ptr %type.addr, align 4, !dbg !481, !tbaa !229
  %cmp6 = icmp eq i32 %9, 13, !dbg !482
  br i1 %cmp6, label %if.then7, label %if.else96, !dbg !483

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.then2
  %10 = load ptr, ptr %handle.addr, align 8, !dbg !484, !tbaa !190
  %desc8 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %10, i32 0, i32 0, !dbg !487
  %filter_format9 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc8, i32 0, i32 9, !dbg !488
  %11 = load i32, ptr %filter_format9, align 4, !dbg !488, !tbaa !234
  %and = and i32 %11, 1, !dbg !489
  %cmp10 = icmp ugt i32 %and, 0, !dbg !490
  br i1 %cmp10, label %if.then16, label %lor.lhs.false11, !dbg !491

lor.lhs.false11:                                  ; preds = %if.then7
  %12 = load ptr, ptr %handle.addr, align 8, !dbg !492, !tbaa !190
  %desc12 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %12, i32 0, i32 0, !dbg !493
  %filter_format13 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc12, i32 0, i32 9, !dbg !494
  %13 = load i32, ptr %filter_format13, align 4, !dbg !494, !tbaa !234
  %and14 = and i32 %13, 64, !dbg !495
  %cmp15 = icmp ugt i32 %and14, 0, !dbg !496
  br i1 %cmp15, label %if.then16, label %if.else94, !dbg !497

if.then16:                                        ; preds = %lor.lhs.false11, %if.then7
  %14 = load ptr, ptr %handle.addr, align 8, !dbg !498, !tbaa !190
  %desc17 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %14, i32 0, i32 0, !dbg !501
  %datatype = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc17, i32 0, i32 8, !dbg !502
  %15 = load i32, ptr %datatype, align 8, !dbg !502, !tbaa !258
  %cmp18 = icmp eq i32 %15, 1, !dbg !503
  br i1 %cmp18, label %if.then19, label %if.else45, !dbg !504

if.then19:                                        ; preds = %if.then16
  %16 = load ptr, ptr %handle.addr, align 8, !dbg !505, !tbaa !190
  %desc20 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %16, i32 0, i32 0, !dbg !507
  %datatype21 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc20, i32 0, i32 8, !dbg !508
  %17 = load i32, ptr %datatype21, align 8, !dbg !508, !tbaa !258
  %18 = load ptr, ptr %layout, align 8, !dbg !509, !tbaa !190
  %datatype22 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %18, i32 0, i32 4, !dbg !510
  store i32 %17, ptr %datatype22, align 8, !dbg !511, !tbaa !512
  %call23 = call noalias ptr @malloc(i64 noundef 16) #9, !dbg !513
  %19 = load ptr, ptr %layout, align 8, !dbg !514, !tbaa !190
  %dim_type = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %19, i32 0, i32 0, !dbg !515
  store ptr %call23, ptr %dim_type, align 8, !dbg !516, !tbaa !517
  %call24 = call noalias ptr @malloc(i64 noundef 16) #9, !dbg !518
  %20 = load ptr, ptr %layout, align 8, !dbg !519, !tbaa !190
  %dim_size = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %20, i32 0, i32 1, !dbg !520
  store ptr %call24, ptr %dim_size, align 8, !dbg !521, !tbaa !522
  %21 = load ptr, ptr %layout, align 8, !dbg !523, !tbaa !190
  %dim_type25 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %21, i32 0, i32 0, !dbg !525
  %22 = load ptr, ptr %dim_type25, align 8, !dbg !525, !tbaa !517
  %cmp26 = icmp ne ptr null, %22, !dbg !526
  br i1 %cmp26, label %land.lhs.true, label %if.else, !dbg !527

land.lhs.true:                                    ; preds = %if.then19
  %23 = load ptr, ptr %layout, align 8, !dbg !528, !tbaa !190
  %dim_size27 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %23, i32 0, i32 1, !dbg !529
  %24 = load ptr, ptr %dim_size27, align 8, !dbg !529, !tbaa !522
  %cmp28 = icmp ne ptr null, %24, !dbg !530
  br i1 %cmp28, label %if.then29, label %if.else, !dbg !531

if.then29:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %layout, align 8, !dbg !532, !tbaa !190
  %num_dims = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %25, i32 0, i32 2, !dbg !534
  store i32 4, ptr %num_dims, align 8, !dbg !535, !tbaa !536
  %26 = load ptr, ptr %layout, align 8, !dbg !537, !tbaa !190
  %dim_type30 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %26, i32 0, i32 0, !dbg !538
  %27 = load ptr, ptr %dim_type30, align 8, !dbg !538, !tbaa !517
  %arrayidx = getelementptr inbounds i32, ptr %27, i64 0, !dbg !537
  store i32 4, ptr %arrayidx, align 4, !dbg !539, !tbaa !229
  %28 = load ptr, ptr %layout, align 8, !dbg !540, !tbaa !190
  %dim_type31 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %28, i32 0, i32 0, !dbg !541
  %29 = load ptr, ptr %dim_type31, align 8, !dbg !541, !tbaa !517
  %arrayidx32 = getelementptr inbounds i32, ptr %29, i64 1, !dbg !540
  store i32 3, ptr %arrayidx32, align 4, !dbg !542, !tbaa !229
  %30 = load ptr, ptr %layout, align 8, !dbg !543, !tbaa !190
  %dim_type33 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %30, i32 0, i32 0, !dbg !544
  %31 = load ptr, ptr %dim_type33, align 8, !dbg !544, !tbaa !517
  %arrayidx34 = getelementptr inbounds i32, ptr %31, i64 2, !dbg !543
  store i32 3, ptr %arrayidx34, align 4, !dbg !545, !tbaa !229
  %32 = load ptr, ptr %layout, align 8, !dbg !546, !tbaa !190
  %dim_type35 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %32, i32 0, i32 0, !dbg !547
  %33 = load ptr, ptr %dim_type35, align 8, !dbg !547, !tbaa !517
  %arrayidx36 = getelementptr inbounds i32, ptr %33, i64 3, !dbg !546
  store i32 4, ptr %arrayidx36, align 4, !dbg !548, !tbaa !229
  %34 = load ptr, ptr %handle.addr, align 8, !dbg !549, !tbaa !190
  %bk = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %34, i32 0, i32 7, !dbg !550
  %35 = load i32, ptr %bk, align 8, !dbg !550, !tbaa !281
  %36 = load ptr, ptr %layout, align 8, !dbg !551, !tbaa !190
  %dim_size37 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %36, i32 0, i32 1, !dbg !552
  %37 = load ptr, ptr %dim_size37, align 8, !dbg !552, !tbaa !522
  %arrayidx38 = getelementptr inbounds i32, ptr %37, i64 0, !dbg !551
  store i32 %35, ptr %arrayidx38, align 4, !dbg !553, !tbaa !199
  %38 = load ptr, ptr %handle.addr, align 8, !dbg !554, !tbaa !190
  %bc = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %38, i32 0, i32 5, !dbg !555
  %39 = load i32, ptr %bc, align 8, !dbg !555, !tbaa !270
  %40 = load ptr, ptr %layout, align 8, !dbg !556, !tbaa !190
  %dim_size39 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %40, i32 0, i32 1, !dbg !557
  %41 = load ptr, ptr %dim_size39, align 8, !dbg !557, !tbaa !522
  %arrayidx40 = getelementptr inbounds i32, ptr %41, i64 1, !dbg !556
  store i32 %39, ptr %arrayidx40, align 4, !dbg !558, !tbaa !199
  %42 = load ptr, ptr %handle.addr, align 8, !dbg !559, !tbaa !190
  %Bc = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %42, i32 0, i32 6, !dbg !560
  %43 = load i32, ptr %Bc, align 4, !dbg !560, !tbaa !275
  %44 = load ptr, ptr %layout, align 8, !dbg !561, !tbaa !190
  %dim_size41 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %44, i32 0, i32 1, !dbg !562
  %45 = load ptr, ptr %dim_size41, align 8, !dbg !562, !tbaa !522
  %arrayidx42 = getelementptr inbounds i32, ptr %45, i64 2, !dbg !561
  store i32 %43, ptr %arrayidx42, align 4, !dbg !563, !tbaa !199
  %46 = load ptr, ptr %handle.addr, align 8, !dbg !564, !tbaa !190
  %Bk = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %46, i32 0, i32 8, !dbg !565
  %47 = load i32, ptr %Bk, align 4, !dbg !565, !tbaa !286
  %48 = load ptr, ptr %layout, align 8, !dbg !566, !tbaa !190
  %dim_size43 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %48, i32 0, i32 1, !dbg !567
  %49 = load ptr, ptr %dim_size43, align 8, !dbg !567, !tbaa !522
  %arrayidx44 = getelementptr inbounds i32, ptr %49, i64 3, !dbg !566
  store i32 %47, ptr %arrayidx44, align 4, !dbg !568, !tbaa !199
  br label %if.end, !dbg !569

if.else:                                          ; preds = %land.lhs.true, %if.then19
  %50 = load ptr, ptr %layout, align 8, !dbg !570, !tbaa !190
  call void @free(ptr noundef %50) #8, !dbg !572
  store ptr null, ptr %layout, align 8, !dbg !573, !tbaa !190
  %51 = load ptr, ptr %status.addr, align 8, !dbg !574, !tbaa !190
  store i32 100028, ptr %51, align 4, !dbg !575, !tbaa !199
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then29
  br label %if.end93, !dbg !576

if.else45:                                        ; preds = %if.then16
  %52 = load ptr, ptr %handle.addr, align 8, !dbg !577, !tbaa !190
  %desc46 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %52, i32 0, i32 0, !dbg !579
  %datatype47 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc46, i32 0, i32 8, !dbg !580
  %53 = load i32, ptr %datatype47, align 8, !dbg !580, !tbaa !258
  %cmp48 = icmp eq i32 %53, 2, !dbg !581
  br i1 %cmp48, label %if.then49, label %if.else91, !dbg !582

if.then49:                                        ; preds = %if.else45
  %54 = load ptr, ptr %handle.addr, align 8, !dbg !583, !tbaa !190
  %desc50 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %54, i32 0, i32 0, !dbg !585
  %datatype51 = getelementptr inbounds %struct.libxsmm_dnn_optimizer_desc, ptr %desc50, i32 0, i32 8, !dbg !586
  %55 = load i32, ptr %datatype51, align 8, !dbg !586, !tbaa !258
  %56 = load ptr, ptr %layout, align 8, !dbg !587, !tbaa !190
  %datatype52 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %56, i32 0, i32 4, !dbg !588
  store i32 %55, ptr %datatype52, align 8, !dbg !589, !tbaa !512
  %call53 = call noalias ptr @malloc(i64 noundef 20) #9, !dbg !590
  %57 = load ptr, ptr %layout, align 8, !dbg !591, !tbaa !190
  %dim_type54 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %57, i32 0, i32 0, !dbg !592
  store ptr %call53, ptr %dim_type54, align 8, !dbg !593, !tbaa !517
  %call55 = call noalias ptr @malloc(i64 noundef 20) #9, !dbg !594
  %58 = load ptr, ptr %layout, align 8, !dbg !595, !tbaa !190
  %dim_size56 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %58, i32 0, i32 1, !dbg !596
  store ptr %call55, ptr %dim_size56, align 8, !dbg !597, !tbaa !522
  %59 = load ptr, ptr %layout, align 8, !dbg !598, !tbaa !190
  %dim_type57 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %59, i32 0, i32 0, !dbg !600
  %60 = load ptr, ptr %dim_type57, align 8, !dbg !600, !tbaa !517
  %cmp58 = icmp ne ptr null, %60, !dbg !601
  br i1 %cmp58, label %land.lhs.true59, label %if.else89, !dbg !602

land.lhs.true59:                                  ; preds = %if.then49
  %61 = load ptr, ptr %layout, align 8, !dbg !603, !tbaa !190
  %dim_size60 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %61, i32 0, i32 1, !dbg !604
  %62 = load ptr, ptr %dim_size60, align 8, !dbg !604, !tbaa !522
  %cmp61 = icmp ne ptr null, %62, !dbg !605
  br i1 %cmp61, label %if.then62, label %if.else89, !dbg !606

if.then62:                                        ; preds = %land.lhs.true59
  %63 = load ptr, ptr %layout, align 8, !dbg !607, !tbaa !190
  %num_dims63 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %63, i32 0, i32 2, !dbg !609
  store i32 5, ptr %num_dims63, align 8, !dbg !610, !tbaa !536
  %64 = load ptr, ptr %layout, align 8, !dbg !611, !tbaa !190
  %dim_type64 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %64, i32 0, i32 0, !dbg !612
  %65 = load ptr, ptr %dim_type64, align 8, !dbg !612, !tbaa !517
  %arrayidx65 = getelementptr inbounds i32, ptr %65, i64 0, !dbg !611
  store i32 3, ptr %arrayidx65, align 4, !dbg !613, !tbaa !229
  %66 = load ptr, ptr %layout, align 8, !dbg !614, !tbaa !190
  %dim_type66 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %66, i32 0, i32 0, !dbg !615
  %67 = load ptr, ptr %dim_type66, align 8, !dbg !615, !tbaa !517
  %arrayidx67 = getelementptr inbounds i32, ptr %67, i64 1, !dbg !614
  store i32 4, ptr %arrayidx67, align 4, !dbg !616, !tbaa !229
  %68 = load ptr, ptr %layout, align 8, !dbg !617, !tbaa !190
  %dim_type68 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %68, i32 0, i32 0, !dbg !618
  %69 = load ptr, ptr %dim_type68, align 8, !dbg !618, !tbaa !517
  %arrayidx69 = getelementptr inbounds i32, ptr %69, i64 2, !dbg !617
  store i32 3, ptr %arrayidx69, align 4, !dbg !619, !tbaa !229
  %70 = load ptr, ptr %layout, align 8, !dbg !620, !tbaa !190
  %dim_type70 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %70, i32 0, i32 0, !dbg !621
  %71 = load ptr, ptr %dim_type70, align 8, !dbg !621, !tbaa !517
  %arrayidx71 = getelementptr inbounds i32, ptr %71, i64 3, !dbg !620
  store i32 3, ptr %arrayidx71, align 4, !dbg !622, !tbaa !229
  %72 = load ptr, ptr %layout, align 8, !dbg !623, !tbaa !190
  %dim_type72 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %72, i32 0, i32 0, !dbg !624
  %73 = load ptr, ptr %dim_type72, align 8, !dbg !624, !tbaa !517
  %arrayidx73 = getelementptr inbounds i32, ptr %73, i64 4, !dbg !623
  store i32 4, ptr %arrayidx73, align 4, !dbg !625, !tbaa !229
  %74 = load ptr, ptr %handle.addr, align 8, !dbg !626, !tbaa !190
  %fm_lp_block = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %74, i32 0, i32 9, !dbg !627
  %75 = load i32, ptr %fm_lp_block, align 8, !dbg !627, !tbaa !304
  %76 = load ptr, ptr %layout, align 8, !dbg !628, !tbaa !190
  %dim_size74 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %76, i32 0, i32 1, !dbg !629
  %77 = load ptr, ptr %dim_size74, align 8, !dbg !629, !tbaa !522
  %arrayidx75 = getelementptr inbounds i32, ptr %77, i64 0, !dbg !628
  store i32 %75, ptr %arrayidx75, align 4, !dbg !630, !tbaa !199
  %78 = load ptr, ptr %handle.addr, align 8, !dbg !631, !tbaa !190
  %bk76 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %78, i32 0, i32 7, !dbg !632
  %79 = load i32, ptr %bk76, align 8, !dbg !632, !tbaa !281
  %80 = load ptr, ptr %layout, align 8, !dbg !633, !tbaa !190
  %dim_size77 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %80, i32 0, i32 1, !dbg !634
  %81 = load ptr, ptr %dim_size77, align 8, !dbg !634, !tbaa !522
  %arrayidx78 = getelementptr inbounds i32, ptr %81, i64 1, !dbg !633
  store i32 %79, ptr %arrayidx78, align 4, !dbg !635, !tbaa !199
  %82 = load ptr, ptr %handle.addr, align 8, !dbg !636, !tbaa !190
  %bc79 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %82, i32 0, i32 5, !dbg !637
  %83 = load i32, ptr %bc79, align 8, !dbg !637, !tbaa !270
  %84 = load ptr, ptr %handle.addr, align 8, !dbg !638, !tbaa !190
  %fm_lp_block80 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %84, i32 0, i32 9, !dbg !639
  %85 = load i32, ptr %fm_lp_block80, align 8, !dbg !639, !tbaa !304
  %div = sdiv i32 %83, %85, !dbg !640
  %86 = load ptr, ptr %layout, align 8, !dbg !641, !tbaa !190
  %dim_size81 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %86, i32 0, i32 1, !dbg !642
  %87 = load ptr, ptr %dim_size81, align 8, !dbg !642, !tbaa !522
  %arrayidx82 = getelementptr inbounds i32, ptr %87, i64 2, !dbg !641
  store i32 %div, ptr %arrayidx82, align 4, !dbg !643, !tbaa !199
  %88 = load ptr, ptr %handle.addr, align 8, !dbg !644, !tbaa !190
  %Bc83 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %88, i32 0, i32 6, !dbg !645
  %89 = load i32, ptr %Bc83, align 4, !dbg !645, !tbaa !275
  %90 = load ptr, ptr %layout, align 8, !dbg !646, !tbaa !190
  %dim_size84 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %90, i32 0, i32 1, !dbg !647
  %91 = load ptr, ptr %dim_size84, align 8, !dbg !647, !tbaa !522
  %arrayidx85 = getelementptr inbounds i32, ptr %91, i64 3, !dbg !646
  store i32 %89, ptr %arrayidx85, align 4, !dbg !648, !tbaa !199
  %92 = load ptr, ptr %handle.addr, align 8, !dbg !649, !tbaa !190
  %Bk86 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %92, i32 0, i32 8, !dbg !650
  %93 = load i32, ptr %Bk86, align 4, !dbg !650, !tbaa !286
  %94 = load ptr, ptr %layout, align 8, !dbg !651, !tbaa !190
  %dim_size87 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %94, i32 0, i32 1, !dbg !652
  %95 = load ptr, ptr %dim_size87, align 8, !dbg !652, !tbaa !522
  %arrayidx88 = getelementptr inbounds i32, ptr %95, i64 4, !dbg !651
  store i32 %93, ptr %arrayidx88, align 4, !dbg !653, !tbaa !199
  br label %if.end90, !dbg !654

if.else89:                                        ; preds = %land.lhs.true59, %if.then49
  %96 = load ptr, ptr %layout, align 8, !dbg !655, !tbaa !190
  call void @free(ptr noundef %96) #8, !dbg !657
  store ptr null, ptr %layout, align 8, !dbg !658, !tbaa !190
  %97 = load ptr, ptr %status.addr, align 8, !dbg !659, !tbaa !190
  store i32 100028, ptr %97, align 4, !dbg !660, !tbaa !199
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.then62
  br label %if.end92, !dbg !661

if.else91:                                        ; preds = %if.else45
  %98 = load ptr, ptr %layout, align 8, !dbg !662, !tbaa !190
  call void @free(ptr noundef %98) #8, !dbg !664
  store ptr null, ptr %layout, align 8, !dbg !665, !tbaa !190
  %99 = load ptr, ptr %status.addr, align 8, !dbg !666, !tbaa !190
  store i32 100002, ptr %99, align 4, !dbg !667, !tbaa !199
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.end90
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end
  br label %if.end95, !dbg !668

if.else94:                                        ; preds = %lor.lhs.false11
  %100 = load ptr, ptr %layout, align 8, !dbg !669, !tbaa !190
  call void @free(ptr noundef %100) #8, !dbg !671
  store ptr null, ptr %layout, align 8, !dbg !672, !tbaa !190
  %101 = load ptr, ptr %status.addr, align 8, !dbg !673, !tbaa !190
  store i32 100016, ptr %101, align 4, !dbg !674, !tbaa !199
  br label %if.end95

if.end95:                                         ; preds = %if.else94, %if.end93
  br label %if.end97, !dbg !675

if.else96:                                        ; preds = %lor.lhs.false5
  %102 = load ptr, ptr %layout, align 8, !dbg !676, !tbaa !190
  call void @free(ptr noundef %102) #8, !dbg !678
  store ptr null, ptr %layout, align 8, !dbg !679, !tbaa !190
  %103 = load ptr, ptr %status.addr, align 8, !dbg !680, !tbaa !190
  store i32 100021, ptr %103, align 4, !dbg !681, !tbaa !199
  br label %if.end97

if.end97:                                         ; preds = %if.else96, %if.end95
  br label %if.end99, !dbg !682

if.else98:                                        ; preds = %if.then
  %104 = load ptr, ptr %status.addr, align 8, !dbg !683, !tbaa !190
  store i32 100017, ptr %104, align 4, !dbg !685, !tbaa !199
  br label %if.end99

if.end99:                                         ; preds = %if.else98, %if.end97
  br label %if.end101, !dbg !686

if.else100:                                       ; preds = %entry
  %105 = load ptr, ptr %status.addr, align 8, !dbg !687, !tbaa !190
  store i32 100004, ptr %105, align 4, !dbg !689, !tbaa !199
  br label %if.end101

if.end101:                                        ; preds = %if.else100, %if.end99
  %106 = load ptr, ptr %layout, align 8, !dbg !690, !tbaa !190
  call void @llvm.lifetime.end.p0(i64 8, ptr %layout) #8, !dbg !691
  ret ptr %106, !dbg !692
}

; Function Attrs: nounwind uwtable
define i64 @libxsmm_dnn_optimizer_get_scratch_size(ptr noundef %handle, ptr noundef %status) #0 !dbg !693 {
entry:
  %handle.addr = alloca ptr, align 8
  %status.addr = alloca ptr, align 8
  %l_scratch_size = alloca i64, align 8
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !697, metadata !DIExpression()), !dbg !700
  store ptr %status, ptr %status.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !698, metadata !DIExpression()), !dbg !701
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_scratch_size) #8, !dbg !702
  tail call void @llvm.dbg.declare(metadata ptr %l_scratch_size, metadata !699, metadata !DIExpression()), !dbg !703
  store i64 0, ptr %l_scratch_size, align 8, !dbg !703, !tbaa !704
  %0 = load ptr, ptr %status.addr, align 8, !dbg !705, !tbaa !190
  store i32 0, ptr %0, align 4, !dbg !706, !tbaa !199
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !707, !tbaa !190
  %cmp = icmp ne ptr null, %1, !dbg !709
  br i1 %cmp, label %if.then, label %if.else, !dbg !710

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !711, !tbaa !190
  %scratch_size = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %2, i32 0, i32 10, !dbg !713
  %3 = load i64, ptr %scratch_size, align 8, !dbg !713, !tbaa !368
  %add = add i64 %3, 64, !dbg !714
  store i64 %add, ptr %l_scratch_size, align 8, !dbg !715, !tbaa !704
  br label %if.end, !dbg !716

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %status.addr, align 8, !dbg !717, !tbaa !190
  store i32 100004, ptr %4, align 4, !dbg !719, !tbaa !199
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, ptr %l_scratch_size, align 8, !dbg !720, !tbaa !704
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_scratch_size) #8, !dbg !721
  ret i64 %5, !dbg !722
}

; Function Attrs: nounwind uwtable
define ptr @libxsmm_dnn_optimizer_get_scratch_ptr(ptr noundef %handle, ptr noundef %status) #0 !dbg !723 {
entry:
  %retval = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %status.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !727, metadata !DIExpression()), !dbg !729
  store ptr %status, ptr %status.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !728, metadata !DIExpression()), !dbg !730
  %0 = load ptr, ptr %status.addr, align 8, !dbg !731, !tbaa !190
  store i32 0, ptr %0, align 4, !dbg !732, !tbaa !199
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !733, !tbaa !190
  %cmp = icmp ne ptr null, %1, !dbg !735
  br i1 %cmp, label %if.then, label %if.else, !dbg !736

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !737, !tbaa !190
  %scratch = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %2, i32 0, i32 11, !dbg !739
  %3 = load ptr, ptr %scratch, align 8, !dbg !739, !tbaa !740
  store ptr %3, ptr %retval, align 8, !dbg !741
  br label %return, !dbg !741

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %status.addr, align 8, !dbg !742, !tbaa !190
  store i32 100004, ptr %4, align 4, !dbg !744, !tbaa !199
  br label %if.end

if.end:                                           ; preds = %if.else
  store ptr null, ptr %retval, align 8, !dbg !745
  br label %return, !dbg !745

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !746
  ret ptr %5, !dbg !746
}

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_optimizer_bind_scratch(ptr noundef %handle, ptr noundef %scratch) #0 !dbg !747 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %scratch.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %address = alloca i64, align 8
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !753, metadata !DIExpression()), !dbg !758
  store ptr %scratch, ptr %scratch.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %scratch.addr, metadata !754, metadata !DIExpression()), !dbg !759
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !760
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !755, metadata !DIExpression()), !dbg !761
  store i32 0, ptr %status, align 4, !dbg !761, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #8, !dbg !762
  tail call void @llvm.dbg.declare(metadata ptr %address, metadata !756, metadata !DIExpression()), !dbg !763
  %0 = load ptr, ptr %scratch.addr, align 8, !dbg !764, !tbaa !190
  %1 = ptrtoint ptr %0 to i64, !dbg !765
  store i64 %1, ptr %address, align 8, !dbg !763, !tbaa !704
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #8, !dbg !766
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !757, metadata !DIExpression()), !dbg !767
  store i64 0, ptr %offset, align 8, !dbg !767, !tbaa !704
  %2 = load ptr, ptr %scratch.addr, align 8, !dbg !768, !tbaa !190
  %cmp = icmp eq ptr %2, null, !dbg !770
  br i1 %cmp, label %if.then, label %if.end, !dbg !771

if.then:                                          ; preds = %entry
  store i32 100020, ptr %status, align 4, !dbg !772, !tbaa !199
  %3 = load i32, ptr %status, align 4, !dbg !774, !tbaa !199
  store i32 %3, ptr %retval, align 4, !dbg !775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !775

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %handle.addr, align 8, !dbg !776, !tbaa !190
  %cmp1 = icmp ne ptr null, %4, !dbg !778
  br i1 %cmp1, label %if.then2, label %if.else9, !dbg !779

if.then2:                                         ; preds = %if.end
  %5 = load i64, ptr %address, align 8, !dbg !780, !tbaa !704
  %rem = urem i64 %5, 64, !dbg !783
  %cmp3 = icmp eq i64 %rem, 0, !dbg !784
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !785

if.then4:                                         ; preds = %if.then2
  %6 = load i64, ptr %address, align 8, !dbg !786, !tbaa !704
  %7 = inttoptr i64 %6 to ptr, !dbg !788
  %8 = load ptr, ptr %handle.addr, align 8, !dbg !789, !tbaa !190
  %scratch5 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %8, i32 0, i32 11, !dbg !790
  store ptr %7, ptr %scratch5, align 8, !dbg !791, !tbaa !740
  br label %if.end8, !dbg !792

if.else:                                          ; preds = %if.then2
  %9 = load i64, ptr %address, align 8, !dbg !793, !tbaa !704
  %rem6 = urem i64 %9, 64, !dbg !795
  %sub = sub i64 64, %rem6, !dbg !796
  store i64 %sub, ptr %offset, align 8, !dbg !797, !tbaa !704
  %10 = load i64, ptr %address, align 8, !dbg !798, !tbaa !704
  %11 = load i64, ptr %offset, align 8, !dbg !799, !tbaa !704
  %add = add i64 %10, %11, !dbg !800
  %12 = inttoptr i64 %add to ptr, !dbg !801
  %13 = load ptr, ptr %handle.addr, align 8, !dbg !802, !tbaa !190
  %scratch7 = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %13, i32 0, i32 11, !dbg !803
  store ptr %12, ptr %scratch7, align 8, !dbg !804, !tbaa !740
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  br label %if.end10, !dbg !805

if.else9:                                         ; preds = %if.end
  store i32 100004, ptr %status, align 4, !dbg !806, !tbaa !199
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.end8
  %14 = load i32, ptr %status, align 4, !dbg !808, !tbaa !199
  store i32 %14, ptr %retval, align 4, !dbg !809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !809

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #8, !dbg !810
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #8, !dbg !810
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !810
  %15 = load i32, ptr %retval, align 4, !dbg !810
  ret i32 %15, !dbg !810
}

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_optimizer_release_scratch(ptr noundef %handle) #0 !dbg !811 {
entry:
  %handle.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !815, metadata !DIExpression()), !dbg !817
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !818
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !816, metadata !DIExpression()), !dbg !819
  store i32 0, ptr %status, align 4, !dbg !819, !tbaa !199
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !820, !tbaa !190
  %cmp = icmp ne ptr null, %0, !dbg !822
  br i1 %cmp, label %if.then, label %if.else, !dbg !823

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !824, !tbaa !190
  %scratch = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %1, i32 0, i32 11, !dbg !826
  store ptr null, ptr %scratch, align 8, !dbg !827, !tbaa !740
  br label %if.end, !dbg !828

if.else:                                          ; preds = %entry
  store i32 100004, ptr %status, align 4, !dbg !829, !tbaa !199
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %status, align 4, !dbg !831, !tbaa !199
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !832
  ret i32 %2, !dbg !833
}

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_optimizer_bind_tensor(ptr noundef %handle, ptr noundef %tensor, i32 noundef %type) #0 !dbg !834 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %tensor.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %handle_layout = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !840, metadata !DIExpression()), !dbg !847
  store ptr %tensor, ptr %tensor.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %tensor.addr, metadata !841, metadata !DIExpression()), !dbg !848
  store i32 %type, ptr %type.addr, align 4, !tbaa !229
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !842, metadata !DIExpression()), !dbg !849
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !850
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !843, metadata !DIExpression()), !dbg !851
  store i32 0, ptr %status, align 4, !dbg !851, !tbaa !199
  %0 = load i32, ptr %type.addr, align 4, !dbg !852, !tbaa !229
  %cmp = icmp ne i32 %0, 10, !dbg !854
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !855

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !856, !tbaa !229
  %cmp1 = icmp ne i32 %1, 12, !dbg !857
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !858

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %type.addr, align 4, !dbg !859, !tbaa !229
  %cmp3 = icmp ne i32 %2, 13, !dbg !860
  br i1 %cmp3, label %if.then, label %if.end, !dbg !861

if.then:                                          ; preds = %land.lhs.true2
  store i32 100021, ptr %status, align 4, !dbg !862, !tbaa !199
  %3 = load i32, ptr %status, align 4, !dbg !864, !tbaa !199
  store i32 %3, ptr %retval, align 4, !dbg !865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !865

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %4 = load ptr, ptr %handle.addr, align 8, !dbg !866, !tbaa !190
  %cmp4 = icmp ne ptr %4, null, !dbg !867
  br i1 %cmp4, label %land.lhs.true5, label %if.else25, !dbg !868

land.lhs.true5:                                   ; preds = %if.end
  %5 = load ptr, ptr %tensor.addr, align 8, !dbg !869, !tbaa !190
  %cmp6 = icmp ne ptr %5, null, !dbg !870
  br i1 %cmp6, label %if.then7, label %if.else25, !dbg !871

if.then7:                                         ; preds = %land.lhs.true5
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle_layout) #8, !dbg !872
  tail call void @llvm.dbg.declare(metadata ptr %handle_layout, metadata !844, metadata !DIExpression()), !dbg !873
  %6 = load ptr, ptr %handle.addr, align 8, !dbg !874, !tbaa !190
  %7 = load i32, ptr %type.addr, align 4, !dbg !875, !tbaa !229
  %call = call ptr @libxsmm_dnn_optimizer_create_tensor_datalayout(ptr noundef %6, i32 noundef %7, ptr noundef %status), !dbg !876
  store ptr %call, ptr %handle_layout, align 8, !dbg !873, !tbaa !190
  %8 = load ptr, ptr %handle_layout, align 8, !dbg !877, !tbaa !190
  %9 = load ptr, ptr %tensor.addr, align 8, !dbg !879, !tbaa !190
  %layout = getelementptr inbounds %struct.libxsmm_dnn_tensor, ptr %9, i32 0, i32 0, !dbg !880
  %10 = load ptr, ptr %layout, align 8, !dbg !880, !tbaa !881
  %call8 = call i32 @libxsmm_dnn_compare_tensor_datalayout(ptr noundef %8, ptr noundef %10, ptr noundef %status), !dbg !883
  %cmp9 = icmp eq i32 %call8, 0, !dbg !884
  br i1 %cmp9, label %if.then10, label %if.else22, !dbg !885

if.then10:                                        ; preds = %if.then7
  %11 = load i32, ptr %type.addr, align 4, !dbg !886, !tbaa !229
  %cmp11 = icmp eq i32 %11, 10, !dbg !889
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !890

if.then12:                                        ; preds = %if.then10
  %12 = load ptr, ptr %tensor.addr, align 8, !dbg !891, !tbaa !190
  %13 = load ptr, ptr %handle.addr, align 8, !dbg !893, !tbaa !190
  %reg_filter = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %13, i32 0, i32 1, !dbg !894
  store ptr %12, ptr %reg_filter, align 8, !dbg !895, !tbaa !896
  br label %if.end21, !dbg !897

if.else:                                          ; preds = %if.then10
  %14 = load i32, ptr %type.addr, align 4, !dbg !898, !tbaa !229
  %cmp13 = icmp eq i32 %14, 12, !dbg !900
  br i1 %cmp13, label %if.then14, label %if.else15, !dbg !901

if.then14:                                        ; preds = %if.else
  %15 = load ptr, ptr %tensor.addr, align 8, !dbg !902, !tbaa !190
  %16 = load ptr, ptr %handle.addr, align 8, !dbg !904, !tbaa !190
  %grad_filter = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %16, i32 0, i32 2, !dbg !905
  store ptr %15, ptr %grad_filter, align 8, !dbg !906, !tbaa !907
  br label %if.end20, !dbg !908

if.else15:                                        ; preds = %if.else
  %17 = load i32, ptr %type.addr, align 4, !dbg !909, !tbaa !229
  %cmp16 = icmp eq i32 %17, 13, !dbg !911
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !912

if.then17:                                        ; preds = %if.else15
  %18 = load ptr, ptr %tensor.addr, align 8, !dbg !913, !tbaa !190
  %19 = load ptr, ptr %handle.addr, align 8, !dbg !915, !tbaa !190
  %master_filter = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %19, i32 0, i32 3, !dbg !916
  store ptr %18, ptr %master_filter, align 8, !dbg !917, !tbaa !918
  br label %if.end19, !dbg !919

if.else18:                                        ; preds = %if.else15
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then14
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then12
  br label %if.end23, !dbg !920

if.else22:                                        ; preds = %if.then7
  store i32 100008, ptr %status, align 4, !dbg !921, !tbaa !199
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.end21
  %20 = load ptr, ptr %handle_layout, align 8, !dbg !923, !tbaa !190
  %call24 = call i32 @libxsmm_dnn_destroy_tensor_datalayout(ptr noundef %20), !dbg !924
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle_layout) #8, !dbg !925
  br label %if.end26, !dbg !926

if.else25:                                        ; preds = %land.lhs.true5, %if.end
  store i32 100009, ptr %status, align 4, !dbg !927, !tbaa !199
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.end23
  %21 = load i32, ptr %status, align 4, !dbg !929, !tbaa !199
  store i32 %21, ptr %retval, align 4, !dbg !930
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !930

cleanup:                                          ; preds = %if.end26, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !931
  %22 = load i32, ptr %retval, align 4, !dbg !931
  ret i32 %22, !dbg !931
}

declare !dbg !932 i32 @libxsmm_dnn_compare_tensor_datalayout(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !937 i32 @libxsmm_dnn_destroy_tensor_datalayout(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @libxsmm_dnn_optimizer_get_tensor(ptr noundef %handle, i32 noundef %type, ptr noundef %status) #0 !dbg !940 {
entry:
  %retval = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %status.addr = alloca ptr, align 8
  %return_tensor = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !944, metadata !DIExpression()), !dbg !948
  store i32 %type, ptr %type.addr, align 4, !tbaa !229
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !945, metadata !DIExpression()), !dbg !949
  store ptr %status, ptr %status.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !946, metadata !DIExpression()), !dbg !950
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_tensor) #8, !dbg !951
  tail call void @llvm.dbg.declare(metadata ptr %return_tensor, metadata !947, metadata !DIExpression()), !dbg !952
  store ptr null, ptr %return_tensor, align 8, !dbg !952, !tbaa !190
  %0 = load ptr, ptr %status.addr, align 8, !dbg !953, !tbaa !190
  store i32 0, ptr %0, align 4, !dbg !954, !tbaa !199
  %1 = load i32, ptr %type.addr, align 4, !dbg !955, !tbaa !229
  %cmp = icmp ne i32 %1, 10, !dbg !957
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !958

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %type.addr, align 4, !dbg !959, !tbaa !229
  %cmp1 = icmp ne i32 %2, 12, !dbg !960
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !961

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %type.addr, align 4, !dbg !962, !tbaa !229
  %cmp3 = icmp ne i32 %3, 13, !dbg !963
  br i1 %cmp3, label %if.then, label %if.end, !dbg !964

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %status.addr, align 8, !dbg !965, !tbaa !190
  store i32 100021, ptr %4, align 4, !dbg !967, !tbaa !199
  %5 = load ptr, ptr %return_tensor, align 8, !dbg !968, !tbaa !190
  store ptr %5, ptr %retval, align 8, !dbg !969
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !969

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %6 = load ptr, ptr %handle.addr, align 8, !dbg !970, !tbaa !190
  %cmp4 = icmp ne ptr %6, null, !dbg !972
  br i1 %cmp4, label %if.then5, label %if.else17, !dbg !973

if.then5:                                         ; preds = %if.end
  %7 = load i32, ptr %type.addr, align 4, !dbg !974, !tbaa !229
  %cmp6 = icmp eq i32 %7, 10, !dbg !977
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !978

if.then7:                                         ; preds = %if.then5
  %8 = load ptr, ptr %handle.addr, align 8, !dbg !979, !tbaa !190
  %reg_filter = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %8, i32 0, i32 1, !dbg !981
  %9 = load ptr, ptr %reg_filter, align 8, !dbg !981, !tbaa !896
  store ptr %9, ptr %return_tensor, align 8, !dbg !982, !tbaa !190
  br label %if.end16, !dbg !983

if.else:                                          ; preds = %if.then5
  %10 = load i32, ptr %type.addr, align 4, !dbg !984, !tbaa !229
  %cmp8 = icmp eq i32 %10, 12, !dbg !986
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !987

if.then9:                                         ; preds = %if.else
  %11 = load ptr, ptr %handle.addr, align 8, !dbg !988, !tbaa !190
  %grad_filter = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %11, i32 0, i32 2, !dbg !990
  %12 = load ptr, ptr %grad_filter, align 8, !dbg !990, !tbaa !907
  store ptr %12, ptr %return_tensor, align 8, !dbg !991, !tbaa !190
  br label %if.end15, !dbg !992

if.else10:                                        ; preds = %if.else
  %13 = load i32, ptr %type.addr, align 4, !dbg !993, !tbaa !229
  %cmp11 = icmp eq i32 %13, 13, !dbg !995
  br i1 %cmp11, label %if.then12, label %if.else13, !dbg !996

if.then12:                                        ; preds = %if.else10
  %14 = load ptr, ptr %handle.addr, align 8, !dbg !997, !tbaa !190
  %master_filter = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %14, i32 0, i32 3, !dbg !999
  %15 = load ptr, ptr %master_filter, align 8, !dbg !999, !tbaa !918
  store ptr %15, ptr %return_tensor, align 8, !dbg !1000, !tbaa !190
  br label %if.end14, !dbg !1001

if.else13:                                        ; preds = %if.else10
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then7
  br label %if.end18, !dbg !1002

if.else17:                                        ; preds = %if.end
  %16 = load ptr, ptr %status.addr, align 8, !dbg !1003, !tbaa !190
  store i32 100004, ptr %16, align 4, !dbg !1005, !tbaa !199
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.end16
  %17 = load ptr, ptr %return_tensor, align 8, !dbg !1006, !tbaa !190
  store ptr %17, ptr %retval, align 8, !dbg !1007
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1007

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_tensor) #8, !dbg !1008
  %18 = load ptr, ptr %retval, align 8, !dbg !1008
  ret ptr %18, !dbg !1008
}

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_optimizer_release_tensor(ptr noundef %handle, i32 noundef %type) #0 !dbg !1009 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1013, metadata !DIExpression()), !dbg !1016
  store i32 %type, ptr %type.addr, align 4, !tbaa !229
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1014, metadata !DIExpression()), !dbg !1017
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !1018
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !1015, metadata !DIExpression()), !dbg !1019
  store i32 0, ptr %status, align 4, !dbg !1019, !tbaa !199
  %0 = load i32, ptr %type.addr, align 4, !dbg !1020, !tbaa !229
  %cmp = icmp ne i32 %0, 10, !dbg !1022
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1023

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !1024, !tbaa !229
  %cmp1 = icmp ne i32 %1, 12, !dbg !1025
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !1026

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %type.addr, align 4, !dbg !1027, !tbaa !229
  %cmp3 = icmp ne i32 %2, 13, !dbg !1028
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1029

if.then:                                          ; preds = %land.lhs.true2
  store i32 100021, ptr %status, align 4, !dbg !1030, !tbaa !199
  %3 = load i32, ptr %status, align 4, !dbg !1032, !tbaa !199
  store i32 %3, ptr %retval, align 4, !dbg !1033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1033

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %4 = load ptr, ptr %handle.addr, align 8, !dbg !1034, !tbaa !190
  %cmp4 = icmp ne ptr %4, null, !dbg !1036
  br i1 %cmp4, label %if.then5, label %if.else17, !dbg !1037

if.then5:                                         ; preds = %if.end
  %5 = load i32, ptr %type.addr, align 4, !dbg !1038, !tbaa !229
  %cmp6 = icmp eq i32 %5, 10, !dbg !1041
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !1042

if.then7:                                         ; preds = %if.then5
  %6 = load ptr, ptr %handle.addr, align 8, !dbg !1043, !tbaa !190
  %reg_filter = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %6, i32 0, i32 1, !dbg !1045
  store ptr null, ptr %reg_filter, align 8, !dbg !1046, !tbaa !896
  br label %if.end16, !dbg !1047

if.else:                                          ; preds = %if.then5
  %7 = load i32, ptr %type.addr, align 4, !dbg !1048, !tbaa !229
  %cmp8 = icmp eq i32 %7, 12, !dbg !1050
  br i1 %cmp8, label %if.then9, label %if.else10, !dbg !1051

if.then9:                                         ; preds = %if.else
  %8 = load ptr, ptr %handle.addr, align 8, !dbg !1052, !tbaa !190
  %grad_filter = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %8, i32 0, i32 2, !dbg !1054
  store ptr null, ptr %grad_filter, align 8, !dbg !1055, !tbaa !907
  br label %if.end15, !dbg !1056

if.else10:                                        ; preds = %if.else
  %9 = load i32, ptr %type.addr, align 4, !dbg !1057, !tbaa !229
  %cmp11 = icmp eq i32 %9, 13, !dbg !1059
  br i1 %cmp11, label %if.then12, label %if.else13, !dbg !1060

if.then12:                                        ; preds = %if.else10
  %10 = load ptr, ptr %handle.addr, align 8, !dbg !1061, !tbaa !190
  %master_filter = getelementptr inbounds %struct.libxsmm_dnn_optimizer, ptr %10, i32 0, i32 3, !dbg !1063
  store ptr null, ptr %master_filter, align 8, !dbg !1064, !tbaa !918
  br label %if.end14, !dbg !1065

if.else13:                                        ; preds = %if.else10
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then7
  br label %if.end18, !dbg !1066

if.else17:                                        ; preds = %if.end
  store i32 100004, ptr %status, align 4, !dbg !1067, !tbaa !199
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.end16
  %11 = load i32, ptr %status, align 4, !dbg !1069, !tbaa !199
  store i32 %11, ptr %retval, align 4, !dbg !1070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1070

cleanup:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !1071
  %12 = load i32, ptr %retval, align 4, !dbg !1071
  ret i32 %12, !dbg !1071
}

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_optimizer_execute_st(ptr noundef %handle, i32 noundef %start_thread, i32 noundef %tid) #0 !dbg !1072 {
entry:
  %handle.addr = alloca ptr, align 8
  %start_thread.addr = alloca i32, align 4
  %tid.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !190
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1076, metadata !DIExpression()), !dbg !1080
  store i32 %start_thread, ptr %start_thread.addr, align 4, !tbaa !199
  tail call void @llvm.dbg.declare(metadata ptr %start_thread.addr, metadata !1077, metadata !DIExpression()), !dbg !1081
  store i32 %tid, ptr %tid.addr, align 4, !tbaa !199
  tail call void @llvm.dbg.declare(metadata ptr %tid.addr, metadata !1078, metadata !DIExpression()), !dbg !1082
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !1083
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !1079, metadata !DIExpression()), !dbg !1084
  store i32 0, ptr %status, align 4, !dbg !1084, !tbaa !199
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !1085, !tbaa !190
  %cmp = icmp ne ptr null, %0, !dbg !1087
  br i1 %cmp, label %if.then, label %if.else, !dbg !1088

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %start_thread.addr, align 4, !dbg !1089, !tbaa !199
  %2 = load i32, ptr %tid.addr, align 4, !dbg !1091, !tbaa !199
  br label %if.end, !dbg !1092

if.else:                                          ; preds = %entry
  store i32 100004, ptr %status, align 4, !dbg !1093, !tbaa !199
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %status, align 4, !dbg !1095, !tbaa !199
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !1096
  ret i32 %3, !dbg !1097
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !102, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/libxsmm_dnn_optimizer.c", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "2518845c77649fa3c41dfd6ea9be1b3c")
!2 = !{!3, !8, !17, !28, !41}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_dnn_optimizer_type", file: !4, line: 20, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "include/libxsmm_dnn_optimizer.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "60de5788310f55bfaae920426797abeb")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7}
!7 = !DIEnumerator(name: "LIBXSMM_DNN_OPTIMIZER_SGD", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_dnn_datatype", file: !9, line: 423, baseType: !5, size: 32, elements: !10)
!9 = !DIFile(filename: "include/libxsmm_typedefs.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "6455bf141a5acf04bdbd5b62071dd37a")
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DIEnumerator(name: "LIBXSMM_DNN_DATATYPE_F64", value: 0)
!12 = !DIEnumerator(name: "LIBXSMM_DNN_DATATYPE_F32", value: 1)
!13 = !DIEnumerator(name: "LIBXSMM_DNN_DATATYPE_BF16", value: 2)
!14 = !DIEnumerator(name: "LIBXSMM_DNN_DATATYPE_I32", value: 4)
!15 = !DIEnumerator(name: "LIBXSMM_DNN_DATATYPE_I16", value: 5)
!16 = !DIEnumerator(name: "LIBXSMM_DNN_DATATYPE_I8", value: 6)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_dnn_tensor_format", file: !9, line: 405, baseType: !5, size: 32, elements: !18)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27}
!19 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_LIBXSMM", value: 1)
!20 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_NHWC", value: 2)
!21 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_NCHW", value: 4)
!22 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_RSCK", value: 8)
!23 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_KCRS", value: 16)
!24 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_CK", value: 32)
!25 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_CKPACKED", value: 64)
!26 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_NCPACKED", value: 128)
!27 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_NC", value: 256)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_dnn_tensor_dimtype", file: !29, line: 20, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "include/libxsmm_dnn_tensor.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "84a3fcc759c2bf8efea9ed56338f1f60")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!31 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_N", value: 0)
!32 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_H", value: 1)
!33 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_W", value: 2)
!34 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_C", value: 3)
!35 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_K", value: 4)
!36 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_R", value: 5)
!37 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_S", value: 6)
!38 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_T", value: 7)
!39 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_G", value: 8)
!40 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_X", value: 9)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_dnn_tensor_type", file: !29, line: 44, baseType: !5, size: 32, elements: !42)
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!43 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_INPUT", value: 0)
!44 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_INPUT_ADD", value: 1)
!45 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_INPUT_TRANS", value: 2)
!46 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_INPUT", value: 3)
!47 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_INPUT_ADD", value: 4)
!48 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_OUTPUT", value: 5)
!49 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_OUTPUT", value: 6)
!50 = !DIEnumerator(name: "LIBXSMM_DNN_INPUT", value: 7)
!51 = !DIEnumerator(name: "LIBXSMM_DNN_OUTPUT", value: 8)
!52 = !DIEnumerator(name: "LIBXSMM_DNN_ACTIVATION", value: 9)
!53 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_FILTER", value: 10)
!54 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_FILTER_TRANS", value: 11)
!55 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_FILTER", value: 12)
!56 = !DIEnumerator(name: "LIBXSMM_DNN_MASTER_FILTER", value: 13)
!57 = !DIEnumerator(name: "LIBXSMM_DNN_FILTER", value: 14)
!58 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_CHANNEL_BIAS", value: 15)
!59 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_CHANNEL_BIAS", value: 16)
!60 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_BIAS", value: 17)
!61 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_CHANNEL_BETA", value: 18)
!62 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_CHANNEL_BETA", value: 19)
!63 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_BETA", value: 20)
!64 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_CHANNEL_GAMMA", value: 21)
!65 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_CHANNEL_GAMMA", value: 22)
!66 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_GAMMA", value: 23)
!67 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_EXPECTVAL", value: 24)
!68 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_RCPSTDDEV", value: 25)
!69 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_VARIANCE", value: 26)
!70 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_SCALAR", value: 27)
!71 = !DIEnumerator(name: "LIBXSMM_DNN_LABEL", value: 28)
!72 = !DIEnumerator(name: "LIBXSMM_DNN_BATCH_STATS", value: 29)
!73 = !DIEnumerator(name: "LIBXSMM_DNN_MAX_STATS_FWD", value: 30)
!74 = !DIEnumerator(name: "LIBXSMM_DNN_MAX_STATS_BWD", value: 31)
!75 = !DIEnumerator(name: "LIBXSMM_DNN_MAX_STATS_UPD", value: 32)
!76 = !DIEnumerator(name: "LIBXSMM_DNN_POOLING_MASK", value: 33)
!77 = !DIEnumerator(name: "LIBXSMM_DNN_RELU_MASK", value: 34)
!78 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR", value: 35)
!79 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_INPUT", value: 36)
!80 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_CS_PREV", value: 37)
!81 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_HIDDEN_STATE_PREV", value: 38)
!82 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_WEIGHT", value: 39)
!83 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_RECUR_WEIGHT", value: 40)
!84 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_WEIGHT_TRANS", value: 41)
!85 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_RECUR_WEIGHT_TRANS", value: 42)
!86 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_BIAS", value: 43)
!87 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_CS", value: 44)
!88 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_HIDDEN_STATE", value: 45)
!89 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_INPUT", value: 46)
!90 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_CS_PREV", value: 47)
!91 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_HIDDEN_STATE_PREV", value: 48)
!92 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_WEIGHT", value: 49)
!93 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_RECUR_WEIGHT", value: 50)
!94 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_BIAS", value: 51)
!95 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_CS", value: 52)
!96 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_HIDDEN_STATE", value: 53)
!97 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_INTERNAL_I", value: 54)
!98 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_INTERNAL_F", value: 55)
!99 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_INTERNAL_O", value: 56)
!100 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_INTERNAL_CI", value: 57)
!101 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_INTERNAL_CO", value: 58)
!102 = !{!103, !168, !133, !138, !141, !170, !148, !128}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_optimizer", file: !4, line: 18, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_dnn_optimizer", file: !106, line: 553, size: 896, elements: !107)
!106 = !DIFile(filename: "./src/libxsmm_main.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "327f1483fde3a8c227e86e12c0467dc8")
!107 = !{!108, !127, !151, !152, !153, !158, !159, !160, !161, !162, !163, !167}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !105, file: !106, line: 554, baseType: !109, size: 320)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_optimizer_desc", file: !4, line: 36, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_dnn_optimizer_desc", file: !4, line: 25, size: 320, elements: !111)
!111 = !{!112, !114, !115, !116, !117, !119, !120, !122, !124, !125}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !110, file: !4, line: 26, baseType: !113, size: 32)
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "K", scope: !110, file: !4, line: 27, baseType: !113, size: 32, offset: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "bc", scope: !110, file: !4, line: 28, baseType: !113, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "bk", scope: !110, file: !4, line: 29, baseType: !113, size: 32, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "learning_rate", scope: !110, file: !4, line: 30, baseType: !118, size: 32, offset: 128)
!118 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !110, file: !4, line: 31, baseType: !113, size: 32, offset: 160)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "opt_type", scope: !110, file: !4, line: 32, baseType: !121, size: 32, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_optimizer_type", file: !4, line: 22, baseType: !3)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "datatype_master", scope: !110, file: !4, line: 33, baseType: !123, size: 32, offset: 224)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_datatype", file: !9, line: 430, baseType: !8)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !110, file: !4, line: 34, baseType: !123, size: 32, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "filter_format", scope: !110, file: !4, line: 35, baseType: !126, size: 32, offset: 288)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_tensor_format", file: !9, line: 420, baseType: !17)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reg_filter", scope: !105, file: !106, line: 555, baseType: !128, size: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_tensor", file: !29, line: 18, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_dnn_tensor", file: !106, line: 352, size: 192, elements: !131)
!131 = !{!132, !147, !149}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "layout", scope: !130, file: !106, line: 353, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_tensor_datalayout", file: !29, line: 172, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_dnn_tensor_datalayout", file: !29, line: 165, size: 256, elements: !136)
!136 = !{!137, !140, !142, !143, !144, !145}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "dim_type", scope: !135, file: !29, line: 166, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_tensor_dimtype", file: !29, line: 41, baseType: !28)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "dim_size", scope: !135, file: !29, line: 167, baseType: !141, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "num_dims", scope: !135, file: !29, line: 168, baseType: !5, size: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !135, file: !29, line: 169, baseType: !126, size: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !135, file: !29, line: 170, baseType: !123, size: 32, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tensor_type", scope: !135, file: !29, line: 171, baseType: !146, size: 32, offset: 224)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_tensor_type", file: !29, line: 161, baseType: !41)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !130, file: !106, line: 354, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "scf", scope: !130, file: !106, line: 355, baseType: !150, size: 8, offset: 128)
!150 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "grad_filter", scope: !105, file: !106, line: 556, baseType: !128, size: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "master_filter", scope: !105, file: !106, line: 557, baseType: !128, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "barrier", scope: !105, file: !106, line: 558, baseType: !154, size: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_barrier", file: !156, line: 766, baseType: !157)
!156 = !DIFile(filename: "include/libxsmm_sync.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "83f98b39b8b6b876fabdfb62c1483c6b")
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_barrier", file: !156, line: 766, flags: DIFlagFwdDecl)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "bc", scope: !105, file: !106, line: 559, baseType: !113, size: 32, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "Bc", scope: !105, file: !106, line: 560, baseType: !113, size: 32, offset: 608)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "bk", scope: !105, file: !106, line: 561, baseType: !113, size: 32, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "Bk", scope: !105, file: !106, line: 562, baseType: !113, size: 32, offset: 672)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "fm_lp_block", scope: !105, file: !106, line: 563, baseType: !113, size: 32, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_size", scope: !105, file: !106, line: 564, baseType: !164, size: 64, offset: 768)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 70, baseType: !166)
!165 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!166 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !105, file: !106, line: 565, baseType: !148, size: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !171, line: 90, baseType: !166)
!171 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!172 = !{i32 7, !"Dwarf Version", i32 5}
!173 = !{i32 2, !"Debug Info Version", i32 3}
!174 = !{i32 1, !"wchar_size", i32 4}
!175 = !{i32 8, !"PIC Level", i32 2}
!176 = !{i32 7, !"uwtable", i32 2}
!177 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!178 = distinct !DISubprogram(name: "libxsmm_dnn_create_optimizer", scope: !179, file: !179, line: 15, type: !180, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !185)
!179 = !DIFile(filename: "./src/libxsmm_dnn_optimizer.c", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "2518845c77649fa3c41dfd6ea9be1b3c")
!180 = !DISubroutineType(types: !181)
!181 = !{!103, !109, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_err_t", file: !184, line: 16, baseType: !5)
!184 = !DIFile(filename: "include/libxsmm_dnn.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "a78420eba4319a1d6474d35f9855f3e6")
!185 = !{!186, !187, !188}
!186 = !DILocalVariable(name: "optimizer_desc", arg: 1, scope: !178, file: !179, line: 15, type: !109)
!187 = !DILocalVariable(name: "status", arg: 2, scope: !178, file: !179, line: 15, type: !182)
!188 = !DILocalVariable(name: "handle", scope: !178, file: !179, line: 16, type: !103)
!189 = !DILocation(line: 15, column: 92, scope: !178)
!190 = !{!191, !191, i64 0}
!191 = !{!"any pointer", !192, i64 0}
!192 = !{!"omnipotent char", !193, i64 0}
!193 = !{!"Simple C/C++ TBAA"}
!194 = !DILocation(line: 15, column: 127, scope: !178)
!195 = !DILocation(line: 16, column: 3, scope: !178)
!196 = !DILocation(line: 16, column: 26, scope: !178)
!197 = !DILocation(line: 19, column: 3, scope: !198)
!198 = distinct !DILexicalBlock(scope: !178, file: !179, line: 19, column: 3)
!199 = !{!200, !200, i64 0}
!200 = !{!"int", !192, i64 0}
!201 = !DILocation(line: 19, column: 3, scope: !178)
!202 = !DILocation(line: 21, column: 24, scope: !203)
!203 = distinct !DILexicalBlock(scope: !178, file: !179, line: 21, column: 8)
!204 = !{!205, !192, i64 32}
!205 = !{!"libxsmm_dnn_optimizer_desc", !200, i64 0, !200, i64 4, !200, i64 8, !200, i64 12, !206, i64 16, !200, i64 20, !192, i64 24, !192, i64 28, !192, i64 32, !192, i64 36}
!206 = !{!"float", !192, i64 0}
!207 = !DILocation(line: 21, column: 33, scope: !203)
!208 = !DILocation(line: 21, column: 62, scope: !203)
!209 = !DILocation(line: 21, column: 81, scope: !203)
!210 = !DILocation(line: 21, column: 90, scope: !203)
!211 = !DILocation(line: 21, column: 8, scope: !178)
!212 = !DILocation(line: 22, column: 38, scope: !213)
!213 = distinct !DILexicalBlock(scope: !203, file: !179, line: 21, column: 122)
!214 = !DILocation(line: 22, column: 12, scope: !213)
!215 = !DILocation(line: 24, column: 14, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !179, line: 24, column: 9)
!217 = !DILocation(line: 24, column: 11, scope: !216)
!218 = !DILocation(line: 24, column: 9, scope: !213)
!219 = !DILocation(line: 25, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !216, file: !179, line: 24, column: 22)
!221 = !DILocation(line: 25, column: 15, scope: !220)
!222 = !DILocation(line: 27, column: 14, scope: !220)
!223 = !DILocation(line: 27, column: 7, scope: !220)
!224 = !DILocation(line: 29, column: 7, scope: !220)
!225 = !DILocation(line: 29, column: 15, scope: !220)
!226 = !DILocation(line: 29, column: 22, scope: !220)
!227 = !{i64 0, i64 4, !199, i64 4, i64 4, !199, i64 8, i64 4, !199, i64 12, i64 4, !199, i64 16, i64 4, !228, i64 20, i64 4, !199, i64 24, i64 4, !229, i64 28, i64 4, !229, i64 32, i64 4, !229, i64 36, i64 4, !229}
!228 = !{!206, !206, i64 0}
!229 = !{!192, !192, i64 0}
!230 = !DILocation(line: 31, column: 13, scope: !231)
!231 = distinct !DILexicalBlock(scope: !220, file: !179, line: 31, column: 12)
!232 = !DILocation(line: 31, column: 21, scope: !231)
!233 = !DILocation(line: 31, column: 26, scope: !231)
!234 = !{!235, !192, i64 36}
!235 = !{!"libxsmm_dnn_optimizer", !205, i64 0, !191, i64 40, !191, i64 48, !191, i64 56, !191, i64 64, !200, i64 72, !200, i64 76, !200, i64 80, !200, i64 84, !200, i64 88, !236, i64 96, !191, i64 104}
!236 = !{!"long", !192, i64 0}
!237 = !DILocation(line: 31, column: 40, scope: !231)
!238 = !DILocation(line: 31, column: 77, scope: !231)
!239 = !DILocation(line: 31, column: 12, scope: !220)
!240 = !DILocation(line: 33, column: 55, scope: !241)
!241 = distinct !DILexicalBlock(scope: !231, file: !179, line: 31, column: 83)
!242 = !DILocation(line: 33, column: 63, scope: !241)
!243 = !DILocation(line: 33, column: 68, scope: !241)
!244 = !{!235, !200, i64 0}
!245 = !DILocation(line: 33, column: 71, scope: !241)
!246 = !DILocation(line: 33, column: 79, scope: !241)
!247 = !DILocation(line: 33, column: 84, scope: !241)
!248 = !{!235, !200, i64 4}
!249 = !DILocation(line: 34, column: 57, scope: !241)
!250 = !DILocation(line: 34, column: 65, scope: !241)
!251 = !DILocation(line: 34, column: 72, scope: !241)
!252 = !DILocation(line: 34, column: 80, scope: !241)
!253 = !DILocation(line: 34, column: 87, scope: !241)
!254 = !DILocation(line: 34, column: 95, scope: !241)
!255 = !DILocation(line: 35, column: 55, scope: !241)
!256 = !DILocation(line: 35, column: 63, scope: !241)
!257 = !DILocation(line: 35, column: 68, scope: !241)
!258 = !{!235, !192, i64 32}
!259 = !DILocation(line: 35, column: 78, scope: !241)
!260 = !DILocation(line: 35, column: 86, scope: !241)
!261 = !DILocation(line: 35, column: 91, scope: !241)
!262 = !DILocation(line: 33, column: 19, scope: !241)
!263 = !DILocation(line: 33, column: 10, scope: !241)
!264 = !DILocation(line: 33, column: 17, scope: !241)
!265 = !DILocation(line: 37, column: 22, scope: !241)
!266 = !DILocation(line: 37, column: 30, scope: !241)
!267 = !DILocation(line: 37, column: 35, scope: !241)
!268 = !DILocation(line: 37, column: 39, scope: !241)
!269 = !DILocation(line: 37, column: 47, scope: !241)
!270 = !{!235, !200, i64 72}
!271 = !DILocation(line: 37, column: 37, scope: !241)
!272 = !DILocation(line: 37, column: 9, scope: !241)
!273 = !DILocation(line: 37, column: 17, scope: !241)
!274 = !DILocation(line: 37, column: 20, scope: !241)
!275 = !{!235, !200, i64 76}
!276 = !DILocation(line: 38, column: 22, scope: !241)
!277 = !DILocation(line: 38, column: 30, scope: !241)
!278 = !DILocation(line: 38, column: 35, scope: !241)
!279 = !DILocation(line: 38, column: 39, scope: !241)
!280 = !DILocation(line: 38, column: 47, scope: !241)
!281 = !{!235, !200, i64 80}
!282 = !DILocation(line: 38, column: 37, scope: !241)
!283 = !DILocation(line: 38, column: 9, scope: !241)
!284 = !DILocation(line: 38, column: 17, scope: !241)
!285 = !DILocation(line: 38, column: 20, scope: !241)
!286 = !{!235, !200, i64 84}
!287 = !DILocation(line: 39, column: 7, scope: !241)
!288 = !DILocation(line: 39, column: 20, scope: !289)
!289 = distinct !DILexicalBlock(scope: !231, file: !179, line: 39, column: 19)
!290 = !DILocation(line: 39, column: 28, scope: !289)
!291 = !DILocation(line: 39, column: 33, scope: !289)
!292 = !DILocation(line: 39, column: 47, scope: !289)
!293 = !DILocation(line: 39, column: 85, scope: !289)
!294 = !DILocation(line: 39, column: 19, scope: !231)
!295 = !DILocation(line: 40, column: 29, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !179, line: 40, column: 14)
!297 = distinct !DILexicalBlock(scope: !289, file: !179, line: 39, column: 91)
!298 = !DILocation(line: 40, column: 38, scope: !296)
!299 = !DILocation(line: 40, column: 14, scope: !297)
!300 = !DILocation(line: 41, column: 11, scope: !301)
!301 = distinct !DILexicalBlock(scope: !296, file: !179, line: 40, column: 68)
!302 = !DILocation(line: 41, column: 19, scope: !301)
!303 = !DILocation(line: 41, column: 31, scope: !301)
!304 = !{!235, !200, i64 88}
!305 = !DILocation(line: 42, column: 9, scope: !301)
!306 = !DILocation(line: 42, column: 36, scope: !307)
!307 = distinct !DILexicalBlock(scope: !296, file: !179, line: 42, column: 21)
!308 = !DILocation(line: 42, column: 45, scope: !307)
!309 = !DILocation(line: 42, column: 21, scope: !296)
!310 = !DILocation(line: 43, column: 11, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !179, line: 42, column: 76)
!312 = !DILocation(line: 43, column: 19, scope: !311)
!313 = !DILocation(line: 43, column: 31, scope: !311)
!314 = !DILocation(line: 44, column: 9, scope: !311)
!315 = !DILocation(line: 46, column: 22, scope: !297)
!316 = !DILocation(line: 46, column: 30, scope: !297)
!317 = !DILocation(line: 46, column: 35, scope: !297)
!318 = !{!235, !200, i64 8}
!319 = !DILocation(line: 46, column: 9, scope: !297)
!320 = !DILocation(line: 46, column: 17, scope: !297)
!321 = !DILocation(line: 46, column: 20, scope: !297)
!322 = !DILocation(line: 47, column: 22, scope: !297)
!323 = !DILocation(line: 47, column: 30, scope: !297)
!324 = !DILocation(line: 47, column: 35, scope: !297)
!325 = !{!235, !200, i64 12}
!326 = !DILocation(line: 47, column: 9, scope: !297)
!327 = !DILocation(line: 47, column: 17, scope: !297)
!328 = !DILocation(line: 47, column: 20, scope: !297)
!329 = !DILocation(line: 48, column: 22, scope: !297)
!330 = !DILocation(line: 48, column: 30, scope: !297)
!331 = !DILocation(line: 48, column: 35, scope: !297)
!332 = !DILocation(line: 48, column: 39, scope: !297)
!333 = !DILocation(line: 48, column: 47, scope: !297)
!334 = !DILocation(line: 48, column: 37, scope: !297)
!335 = !DILocation(line: 48, column: 9, scope: !297)
!336 = !DILocation(line: 48, column: 17, scope: !297)
!337 = !DILocation(line: 48, column: 20, scope: !297)
!338 = !DILocation(line: 49, column: 22, scope: !297)
!339 = !DILocation(line: 49, column: 30, scope: !297)
!340 = !DILocation(line: 49, column: 35, scope: !297)
!341 = !DILocation(line: 49, column: 39, scope: !297)
!342 = !DILocation(line: 49, column: 47, scope: !297)
!343 = !DILocation(line: 49, column: 37, scope: !297)
!344 = !DILocation(line: 49, column: 9, scope: !297)
!345 = !DILocation(line: 49, column: 17, scope: !297)
!346 = !DILocation(line: 49, column: 20, scope: !297)
!347 = !DILocation(line: 50, column: 7, scope: !297)
!348 = !DILocation(line: 51, column: 10, scope: !349)
!349 = distinct !DILexicalBlock(scope: !289, file: !179, line: 50, column: 14)
!350 = !DILocation(line: 51, column: 17, scope: !349)
!351 = !DILocation(line: 52, column: 15, scope: !349)
!352 = !DILocation(line: 52, column: 9, scope: !349)
!353 = !DILocation(line: 53, column: 16, scope: !349)
!354 = !DILocation(line: 54, column: 16, scope: !349)
!355 = !DILocation(line: 54, column: 9, scope: !349)
!356 = !DILocation(line: 57, column: 48, scope: !220)
!357 = !DILocation(line: 57, column: 56, scope: !220)
!358 = !DILocation(line: 57, column: 61, scope: !220)
!359 = !{!235, !200, i64 20}
!360 = !DILocation(line: 57, column: 25, scope: !220)
!361 = !DILocation(line: 57, column: 7, scope: !220)
!362 = !DILocation(line: 57, column: 15, scope: !220)
!363 = !DILocation(line: 57, column: 23, scope: !220)
!364 = !{!235, !191, i64 64}
!365 = !DILocation(line: 59, column: 7, scope: !220)
!366 = !DILocation(line: 59, column: 15, scope: !220)
!367 = !DILocation(line: 59, column: 28, scope: !220)
!368 = !{!235, !236, i64 96}
!369 = !DILocation(line: 60, column: 5, scope: !220)
!370 = !DILocation(line: 61, column: 8, scope: !371)
!371 = distinct !DILexicalBlock(scope: !216, file: !179, line: 60, column: 12)
!372 = !DILocation(line: 61, column: 15, scope: !371)
!373 = !DILocation(line: 63, column: 3, scope: !213)
!374 = !DILocation(line: 64, column: 6, scope: !375)
!375 = distinct !DILexicalBlock(scope: !203, file: !179, line: 63, column: 10)
!376 = !DILocation(line: 64, column: 13, scope: !375)
!377 = !DILocation(line: 67, column: 10, scope: !178)
!378 = !DILocation(line: 67, column: 3, scope: !178)
!379 = !DILocation(line: 68, column: 1, scope: !178)
!380 = !DISubprogram(name: "libxsmm_init", scope: !381, file: !381, line: 65, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = !DIFile(filename: "include/libxsmm.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "7f927a6176835647856a1da880bfa0fd")
!382 = !DISubroutineType(types: !383)
!383 = !{null}
!384 = !DISubprogram(name: "malloc", scope: !385, file: !385, line: 540, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!386 = !DISubroutineType(types: !387)
!387 = !{!148, !164}
!388 = !DISubprogram(name: "libxsmm_dnn_get_feature_map_blocks", scope: !106, file: !106, line: 958, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!389 = !DISubroutineType(types: !390)
!390 = !{!183, !113, !113, !391, !391, !391, !123, !123}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!392 = !DISubprogram(name: "free", scope: !385, file: !385, line: 555, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !148}
!395 = !DISubprogram(name: "libxsmm_barrier_create", scope: !156, file: !156, line: 769, type: !396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!396 = !DISubroutineType(types: !397)
!397 = !{!154, !113, !113}
!398 = distinct !DISubprogram(name: "libxsmm_dnn_destroy_optimizer", scope: !179, file: !179, line: 71, type: !399, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !403)
!399 = !DISubroutineType(types: !400)
!400 = !{!183, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!403 = !{!404, !405}
!404 = !DILocalVariable(name: "handle", arg: 1, scope: !398, file: !179, line: 71, type: !401)
!405 = !DILocalVariable(name: "status", scope: !398, file: !179, line: 72, type: !183)
!406 = !DILocation(line: 71, column: 90, scope: !398)
!407 = !DILocation(line: 72, column: 3, scope: !398)
!408 = !DILocation(line: 72, column: 21, scope: !398)
!409 = !DILocation(line: 74, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !398, file: !179, line: 74, column: 7)
!411 = !DILocation(line: 74, column: 9, scope: !410)
!412 = !DILocation(line: 74, column: 7, scope: !398)
!413 = !DILocation(line: 76, column: 9, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !179, line: 76, column: 9)
!415 = distinct !DILexicalBlock(scope: !410, file: !179, line: 74, column: 20)
!416 = !DILocation(line: 76, column: 17, scope: !414)
!417 = !DILocation(line: 76, column: 25, scope: !414)
!418 = !DILocation(line: 76, column: 9, scope: !415)
!419 = !DILocation(line: 76, column: 82, scope: !420)
!420 = distinct !DILexicalBlock(scope: !414, file: !179, line: 76, column: 32)
!421 = !DILocation(line: 76, column: 90, scope: !420)
!422 = !DILocation(line: 76, column: 34, scope: !420)
!423 = !DILocation(line: 76, column: 100, scope: !420)
!424 = !DILocation(line: 78, column: 54, scope: !415)
!425 = !DILocation(line: 78, column: 5, scope: !415)
!426 = !DILocation(line: 79, column: 3, scope: !415)
!427 = !DILocation(line: 80, column: 12, scope: !428)
!428 = distinct !DILexicalBlock(scope: !410, file: !179, line: 79, column: 10)
!429 = !DILocation(line: 83, column: 10, scope: !398)
!430 = !DILocation(line: 84, column: 1, scope: !398)
!431 = !DILocation(line: 83, column: 3, scope: !398)
!432 = !DISubprogram(name: "libxsmm_barrier_destroy", scope: !156, file: !156, line: 775, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !168}
!435 = distinct !DISubprogram(name: "libxsmm_dnn_optimizer_create_tensor_datalayout", scope: !179, file: !179, line: 87, type: !436, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !439)
!436 = !DISubroutineType(types: !437)
!437 = !{!133, !401, !438, !182}
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!439 = !{!440, !441, !442, !443}
!440 = !DILocalVariable(name: "handle", arg: 1, scope: !435, file: !179, line: 87, type: !401)
!441 = !DILocalVariable(name: "type", arg: 2, scope: !435, file: !179, line: 87, type: !438)
!442 = !DILocalVariable(name: "status", arg: 3, scope: !435, file: !179, line: 87, type: !182)
!443 = !DILocalVariable(name: "layout", scope: !435, file: !179, line: 88, type: !133)
!444 = !DILocation(line: 87, column: 120, scope: !435)
!445 = !DILocation(line: 87, column: 158, scope: !435)
!446 = !DILocation(line: 87, column: 183, scope: !435)
!447 = !DILocation(line: 88, column: 3, scope: !435)
!448 = !DILocation(line: 88, column: 34, scope: !435)
!449 = !DILocation(line: 90, column: 4, scope: !435)
!450 = !DILocation(line: 90, column: 11, scope: !435)
!451 = !DILocation(line: 91, column: 10, scope: !435)
!452 = !DILocation(line: 93, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !435, file: !179, line: 93, column: 7)
!454 = !DILocation(line: 93, column: 14, scope: !453)
!455 = !DILocation(line: 93, column: 7, scope: !435)
!456 = !DILocation(line: 94, column: 47, scope: !457)
!457 = distinct !DILexicalBlock(scope: !453, file: !179, line: 93, column: 20)
!458 = !DILocation(line: 94, column: 12, scope: !457)
!459 = !DILocation(line: 96, column: 9, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !179, line: 96, column: 9)
!461 = !DILocation(line: 96, column: 16, scope: !460)
!462 = !DILocation(line: 96, column: 9, scope: !457)
!463 = !DILocation(line: 97, column: 14, scope: !464)
!464 = distinct !DILexicalBlock(scope: !460, file: !179, line: 96, column: 22)
!465 = !DILocation(line: 97, column: 7, scope: !464)
!466 = !DILocation(line: 98, column: 24, scope: !464)
!467 = !DILocation(line: 98, column: 32, scope: !464)
!468 = !DILocation(line: 98, column: 37, scope: !464)
!469 = !DILocation(line: 98, column: 7, scope: !464)
!470 = !DILocation(line: 98, column: 15, scope: !464)
!471 = !DILocation(line: 98, column: 22, scope: !464)
!472 = !{!473, !192, i64 20}
!473 = !{!"libxsmm_dnn_tensor_datalayout", !191, i64 0, !191, i64 8, !200, i64 16, !192, i64 20, !192, i64 24, !192, i64 28}
!474 = !DILocation(line: 100, column: 13, scope: !475)
!475 = distinct !DILexicalBlock(scope: !464, file: !179, line: 100, column: 12)
!476 = !DILocation(line: 100, column: 18, scope: !475)
!477 = !DILocation(line: 100, column: 49, scope: !475)
!478 = !DILocation(line: 100, column: 53, scope: !475)
!479 = !DILocation(line: 100, column: 58, scope: !475)
!480 = !DILocation(line: 100, column: 90, scope: !475)
!481 = !DILocation(line: 100, column: 94, scope: !475)
!482 = !DILocation(line: 100, column: 99, scope: !475)
!483 = !DILocation(line: 100, column: 12, scope: !464)
!484 = !DILocation(line: 101, column: 16, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !179, line: 101, column: 14)
!486 = distinct !DILexicalBlock(scope: !475, file: !179, line: 100, column: 131)
!487 = !DILocation(line: 101, column: 24, scope: !485)
!488 = !DILocation(line: 101, column: 29, scope: !485)
!489 = !DILocation(line: 101, column: 43, scope: !485)
!490 = !DILocation(line: 101, column: 80, scope: !485)
!491 = !DILocation(line: 101, column: 85, scope: !485)
!492 = !DILocation(line: 101, column: 90, scope: !485)
!493 = !DILocation(line: 101, column: 98, scope: !485)
!494 = !DILocation(line: 101, column: 103, scope: !485)
!495 = !DILocation(line: 101, column: 117, scope: !485)
!496 = !DILocation(line: 101, column: 155, scope: !485)
!497 = !DILocation(line: 101, column: 14, scope: !486)
!498 = !DILocation(line: 102, column: 16, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !179, line: 102, column: 16)
!500 = distinct !DILexicalBlock(scope: !485, file: !179, line: 101, column: 162)
!501 = !DILocation(line: 102, column: 24, scope: !499)
!502 = !DILocation(line: 102, column: 29, scope: !499)
!503 = !DILocation(line: 102, column: 38, scope: !499)
!504 = !DILocation(line: 102, column: 16, scope: !500)
!505 = !DILocation(line: 103, column: 32, scope: !506)
!506 = distinct !DILexicalBlock(scope: !499, file: !179, line: 102, column: 68)
!507 = !DILocation(line: 103, column: 40, scope: !506)
!508 = !DILocation(line: 103, column: 45, scope: !506)
!509 = !DILocation(line: 103, column: 13, scope: !506)
!510 = !DILocation(line: 103, column: 21, scope: !506)
!511 = !DILocation(line: 103, column: 30, scope: !506)
!512 = !{!473, !192, i64 24}
!513 = !DILocation(line: 104, column: 62, scope: !506)
!514 = !DILocation(line: 104, column: 13, scope: !506)
!515 = !DILocation(line: 104, column: 21, scope: !506)
!516 = !DILocation(line: 104, column: 30, scope: !506)
!517 = !{!473, !191, i64 0}
!518 = !DILocation(line: 105, column: 48, scope: !506)
!519 = !DILocation(line: 105, column: 13, scope: !506)
!520 = !DILocation(line: 105, column: 21, scope: !506)
!521 = !DILocation(line: 105, column: 30, scope: !506)
!522 = !{!473, !191, i64 8}
!523 = !DILocation(line: 107, column: 22, scope: !524)
!524 = distinct !DILexicalBlock(scope: !506, file: !179, line: 107, column: 17)
!525 = !DILocation(line: 107, column: 30, scope: !524)
!526 = !DILocation(line: 107, column: 19, scope: !524)
!527 = !DILocation(line: 107, column: 39, scope: !524)
!528 = !DILocation(line: 107, column: 47, scope: !524)
!529 = !DILocation(line: 107, column: 55, scope: !524)
!530 = !DILocation(line: 107, column: 44, scope: !524)
!531 = !DILocation(line: 107, column: 17, scope: !506)
!532 = !DILocation(line: 108, column: 15, scope: !533)
!533 = distinct !DILexicalBlock(scope: !524, file: !179, line: 107, column: 65)
!534 = !DILocation(line: 108, column: 23, scope: !533)
!535 = !DILocation(line: 108, column: 32, scope: !533)
!536 = !{!473, !200, i64 16}
!537 = !DILocation(line: 109, column: 15, scope: !533)
!538 = !DILocation(line: 109, column: 23, scope: !533)
!539 = !DILocation(line: 109, column: 35, scope: !533)
!540 = !DILocation(line: 110, column: 15, scope: !533)
!541 = !DILocation(line: 110, column: 23, scope: !533)
!542 = !DILocation(line: 110, column: 35, scope: !533)
!543 = !DILocation(line: 111, column: 15, scope: !533)
!544 = !DILocation(line: 111, column: 23, scope: !533)
!545 = !DILocation(line: 111, column: 35, scope: !533)
!546 = !DILocation(line: 112, column: 15, scope: !533)
!547 = !DILocation(line: 112, column: 23, scope: !533)
!548 = !DILocation(line: 112, column: 35, scope: !533)
!549 = !DILocation(line: 113, column: 37, scope: !533)
!550 = !DILocation(line: 113, column: 45, scope: !533)
!551 = !DILocation(line: 113, column: 15, scope: !533)
!552 = !DILocation(line: 113, column: 23, scope: !533)
!553 = !DILocation(line: 113, column: 35, scope: !533)
!554 = !DILocation(line: 114, column: 37, scope: !533)
!555 = !DILocation(line: 114, column: 45, scope: !533)
!556 = !DILocation(line: 114, column: 15, scope: !533)
!557 = !DILocation(line: 114, column: 23, scope: !533)
!558 = !DILocation(line: 114, column: 35, scope: !533)
!559 = !DILocation(line: 115, column: 37, scope: !533)
!560 = !DILocation(line: 115, column: 45, scope: !533)
!561 = !DILocation(line: 115, column: 15, scope: !533)
!562 = !DILocation(line: 115, column: 23, scope: !533)
!563 = !DILocation(line: 115, column: 35, scope: !533)
!564 = !DILocation(line: 116, column: 37, scope: !533)
!565 = !DILocation(line: 116, column: 45, scope: !533)
!566 = !DILocation(line: 116, column: 15, scope: !533)
!567 = !DILocation(line: 116, column: 23, scope: !533)
!568 = !DILocation(line: 116, column: 35, scope: !533)
!569 = !DILocation(line: 117, column: 13, scope: !533)
!570 = !DILocation(line: 118, column: 20, scope: !571)
!571 = distinct !DILexicalBlock(scope: !524, file: !179, line: 117, column: 20)
!572 = !DILocation(line: 118, column: 15, scope: !571)
!573 = !DILocation(line: 119, column: 22, scope: !571)
!574 = !DILocation(line: 120, column: 16, scope: !571)
!575 = !DILocation(line: 120, column: 23, scope: !571)
!576 = !DILocation(line: 122, column: 11, scope: !506)
!577 = !DILocation(line: 122, column: 23, scope: !578)
!578 = distinct !DILexicalBlock(scope: !499, file: !179, line: 122, column: 23)
!579 = !DILocation(line: 122, column: 31, scope: !578)
!580 = !DILocation(line: 122, column: 36, scope: !578)
!581 = !DILocation(line: 122, column: 45, scope: !578)
!582 = !DILocation(line: 122, column: 23, scope: !499)
!583 = !DILocation(line: 123, column: 32, scope: !584)
!584 = distinct !DILexicalBlock(scope: !578, file: !179, line: 122, column: 76)
!585 = !DILocation(line: 123, column: 40, scope: !584)
!586 = !DILocation(line: 123, column: 45, scope: !584)
!587 = !DILocation(line: 123, column: 13, scope: !584)
!588 = !DILocation(line: 123, column: 21, scope: !584)
!589 = !DILocation(line: 123, column: 30, scope: !584)
!590 = !DILocation(line: 124, column: 62, scope: !584)
!591 = !DILocation(line: 124, column: 13, scope: !584)
!592 = !DILocation(line: 124, column: 21, scope: !584)
!593 = !DILocation(line: 124, column: 30, scope: !584)
!594 = !DILocation(line: 125, column: 48, scope: !584)
!595 = !DILocation(line: 125, column: 13, scope: !584)
!596 = !DILocation(line: 125, column: 21, scope: !584)
!597 = !DILocation(line: 125, column: 30, scope: !584)
!598 = !DILocation(line: 127, column: 22, scope: !599)
!599 = distinct !DILexicalBlock(scope: !584, file: !179, line: 127, column: 17)
!600 = !DILocation(line: 127, column: 30, scope: !599)
!601 = !DILocation(line: 127, column: 19, scope: !599)
!602 = !DILocation(line: 127, column: 39, scope: !599)
!603 = !DILocation(line: 127, column: 47, scope: !599)
!604 = !DILocation(line: 127, column: 55, scope: !599)
!605 = !DILocation(line: 127, column: 44, scope: !599)
!606 = !DILocation(line: 127, column: 17, scope: !584)
!607 = !DILocation(line: 128, column: 15, scope: !608)
!608 = distinct !DILexicalBlock(scope: !599, file: !179, line: 127, column: 65)
!609 = !DILocation(line: 128, column: 23, scope: !608)
!610 = !DILocation(line: 128, column: 32, scope: !608)
!611 = !DILocation(line: 129, column: 15, scope: !608)
!612 = !DILocation(line: 129, column: 23, scope: !608)
!613 = !DILocation(line: 129, column: 35, scope: !608)
!614 = !DILocation(line: 130, column: 15, scope: !608)
!615 = !DILocation(line: 130, column: 23, scope: !608)
!616 = !DILocation(line: 130, column: 35, scope: !608)
!617 = !DILocation(line: 131, column: 15, scope: !608)
!618 = !DILocation(line: 131, column: 23, scope: !608)
!619 = !DILocation(line: 131, column: 35, scope: !608)
!620 = !DILocation(line: 132, column: 15, scope: !608)
!621 = !DILocation(line: 132, column: 23, scope: !608)
!622 = !DILocation(line: 132, column: 35, scope: !608)
!623 = !DILocation(line: 133, column: 15, scope: !608)
!624 = !DILocation(line: 133, column: 23, scope: !608)
!625 = !DILocation(line: 133, column: 35, scope: !608)
!626 = !DILocation(line: 134, column: 37, scope: !608)
!627 = !DILocation(line: 134, column: 45, scope: !608)
!628 = !DILocation(line: 134, column: 15, scope: !608)
!629 = !DILocation(line: 134, column: 23, scope: !608)
!630 = !DILocation(line: 134, column: 35, scope: !608)
!631 = !DILocation(line: 135, column: 37, scope: !608)
!632 = !DILocation(line: 135, column: 45, scope: !608)
!633 = !DILocation(line: 135, column: 15, scope: !608)
!634 = !DILocation(line: 135, column: 23, scope: !608)
!635 = !DILocation(line: 135, column: 35, scope: !608)
!636 = !DILocation(line: 136, column: 37, scope: !608)
!637 = !DILocation(line: 136, column: 45, scope: !608)
!638 = !DILocation(line: 136, column: 48, scope: !608)
!639 = !DILocation(line: 136, column: 56, scope: !608)
!640 = !DILocation(line: 136, column: 47, scope: !608)
!641 = !DILocation(line: 136, column: 15, scope: !608)
!642 = !DILocation(line: 136, column: 23, scope: !608)
!643 = !DILocation(line: 136, column: 35, scope: !608)
!644 = !DILocation(line: 137, column: 37, scope: !608)
!645 = !DILocation(line: 137, column: 45, scope: !608)
!646 = !DILocation(line: 137, column: 15, scope: !608)
!647 = !DILocation(line: 137, column: 23, scope: !608)
!648 = !DILocation(line: 137, column: 35, scope: !608)
!649 = !DILocation(line: 138, column: 37, scope: !608)
!650 = !DILocation(line: 138, column: 45, scope: !608)
!651 = !DILocation(line: 138, column: 15, scope: !608)
!652 = !DILocation(line: 138, column: 23, scope: !608)
!653 = !DILocation(line: 138, column: 35, scope: !608)
!654 = !DILocation(line: 139, column: 13, scope: !608)
!655 = !DILocation(line: 140, column: 20, scope: !656)
!656 = distinct !DILexicalBlock(scope: !599, file: !179, line: 139, column: 20)
!657 = !DILocation(line: 140, column: 15, scope: !656)
!658 = !DILocation(line: 141, column: 22, scope: !656)
!659 = !DILocation(line: 142, column: 16, scope: !656)
!660 = !DILocation(line: 142, column: 23, scope: !656)
!661 = !DILocation(line: 144, column: 11, scope: !584)
!662 = !DILocation(line: 145, column: 18, scope: !663)
!663 = distinct !DILexicalBlock(scope: !578, file: !179, line: 144, column: 18)
!664 = !DILocation(line: 145, column: 13, scope: !663)
!665 = !DILocation(line: 146, column: 20, scope: !663)
!666 = !DILocation(line: 147, column: 14, scope: !663)
!667 = !DILocation(line: 147, column: 21, scope: !663)
!668 = !DILocation(line: 149, column: 9, scope: !500)
!669 = !DILocation(line: 150, column: 16, scope: !670)
!670 = distinct !DILexicalBlock(scope: !485, file: !179, line: 149, column: 16)
!671 = !DILocation(line: 150, column: 11, scope: !670)
!672 = !DILocation(line: 151, column: 18, scope: !670)
!673 = !DILocation(line: 152, column: 12, scope: !670)
!674 = !DILocation(line: 152, column: 19, scope: !670)
!675 = !DILocation(line: 154, column: 7, scope: !486)
!676 = !DILocation(line: 155, column: 14, scope: !677)
!677 = distinct !DILexicalBlock(scope: !475, file: !179, line: 154, column: 14)
!678 = !DILocation(line: 155, column: 9, scope: !677)
!679 = !DILocation(line: 156, column: 16, scope: !677)
!680 = !DILocation(line: 157, column: 10, scope: !677)
!681 = !DILocation(line: 157, column: 17, scope: !677)
!682 = !DILocation(line: 159, column: 5, scope: !464)
!683 = !DILocation(line: 160, column: 8, scope: !684)
!684 = distinct !DILexicalBlock(scope: !460, file: !179, line: 159, column: 12)
!685 = !DILocation(line: 160, column: 15, scope: !684)
!686 = !DILocation(line: 162, column: 3, scope: !457)
!687 = !DILocation(line: 164, column: 6, scope: !688)
!688 = distinct !DILexicalBlock(scope: !453, file: !179, line: 163, column: 8)
!689 = !DILocation(line: 164, column: 13, scope: !688)
!690 = !DILocation(line: 167, column: 10, scope: !435)
!691 = !DILocation(line: 168, column: 1, scope: !435)
!692 = !DILocation(line: 167, column: 3, scope: !435)
!693 = distinct !DISubprogram(name: "libxsmm_dnn_optimizer_get_scratch_size", scope: !179, file: !179, line: 171, type: !694, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{!164, !401, !182}
!696 = !{!697, !698, !699}
!697 = !DILocalVariable(name: "handle", arg: 1, scope: !693, file: !179, line: 171, type: !401)
!698 = !DILocalVariable(name: "status", arg: 2, scope: !693, file: !179, line: 171, type: !182)
!699 = !DILocalVariable(name: "l_scratch_size", scope: !693, file: !179, line: 172, type: !164)
!700 = !DILocation(line: 171, column: 88, scope: !693)
!701 = !DILocation(line: 171, column: 115, scope: !693)
!702 = !DILocation(line: 172, column: 3, scope: !693)
!703 = !DILocation(line: 172, column: 10, scope: !693)
!704 = !{!236, !236, i64 0}
!705 = !DILocation(line: 173, column: 4, scope: !693)
!706 = !DILocation(line: 173, column: 11, scope: !693)
!707 = !DILocation(line: 175, column: 12, scope: !708)
!708 = distinct !DILexicalBlock(scope: !693, file: !179, line: 175, column: 7)
!709 = !DILocation(line: 175, column: 9, scope: !708)
!710 = !DILocation(line: 175, column: 7, scope: !693)
!711 = !DILocation(line: 176, column: 22, scope: !712)
!712 = distinct !DILexicalBlock(scope: !708, file: !179, line: 175, column: 20)
!713 = !DILocation(line: 176, column: 30, scope: !712)
!714 = !DILocation(line: 176, column: 43, scope: !712)
!715 = !DILocation(line: 176, column: 20, scope: !712)
!716 = !DILocation(line: 177, column: 3, scope: !712)
!717 = !DILocation(line: 178, column: 6, scope: !718)
!718 = distinct !DILexicalBlock(scope: !708, file: !179, line: 177, column: 10)
!719 = !DILocation(line: 178, column: 13, scope: !718)
!720 = !DILocation(line: 181, column: 10, scope: !693)
!721 = !DILocation(line: 182, column: 1, scope: !693)
!722 = !DILocation(line: 181, column: 3, scope: !693)
!723 = distinct !DISubprogram(name: "libxsmm_dnn_optimizer_get_scratch_ptr", scope: !179, file: !179, line: 185, type: !724, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{!148, !401, !182}
!726 = !{!727, !728}
!727 = !DILocalVariable(name: "handle", arg: 1, scope: !723, file: !179, line: 185, type: !401)
!728 = !DILocalVariable(name: "status", arg: 2, scope: !723, file: !179, line: 185, type: !182)
!729 = !DILocation(line: 185, column: 86, scope: !723)
!730 = !DILocation(line: 185, column: 113, scope: !723)
!731 = !DILocation(line: 187, column: 4, scope: !723)
!732 = !DILocation(line: 187, column: 11, scope: !723)
!733 = !DILocation(line: 189, column: 12, scope: !734)
!734 = distinct !DILexicalBlock(scope: !723, file: !179, line: 189, column: 7)
!735 = !DILocation(line: 189, column: 9, scope: !734)
!736 = !DILocation(line: 189, column: 7, scope: !723)
!737 = !DILocation(line: 190, column: 12, scope: !738)
!738 = distinct !DILexicalBlock(scope: !734, file: !179, line: 189, column: 20)
!739 = !DILocation(line: 190, column: 20, scope: !738)
!740 = !{!235, !191, i64 104}
!741 = !DILocation(line: 190, column: 5, scope: !738)
!742 = !DILocation(line: 192, column: 6, scope: !743)
!743 = distinct !DILexicalBlock(scope: !734, file: !179, line: 191, column: 10)
!744 = !DILocation(line: 192, column: 13, scope: !743)
!745 = !DILocation(line: 195, column: 3, scope: !723)
!746 = !DILocation(line: 196, column: 1, scope: !723)
!747 = distinct !DISubprogram(name: "libxsmm_dnn_optimizer_bind_scratch", scope: !179, file: !179, line: 199, type: !748, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !752)
!748 = !DISubroutineType(types: !749)
!749 = !{!183, !103, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!752 = !{!753, !754, !755, !756, !757}
!753 = !DILocalVariable(name: "handle", arg: 1, scope: !747, file: !179, line: 199, type: !103)
!754 = !DILocalVariable(name: "scratch", arg: 2, scope: !747, file: !179, line: 199, type: !750)
!755 = !DILocalVariable(name: "status", scope: !747, file: !179, line: 200, type: !183)
!756 = !DILocalVariable(name: "address", scope: !747, file: !179, line: 201, type: !170)
!757 = !DILocalVariable(name: "offset", scope: !747, file: !179, line: 202, type: !164)
!758 = !DILocation(line: 199, column: 89, scope: !747)
!759 = !DILocation(line: 199, column: 109, scope: !747)
!760 = !DILocation(line: 200, column: 3, scope: !747)
!761 = !DILocation(line: 200, column: 21, scope: !747)
!762 = !DILocation(line: 201, column: 3, scope: !747)
!763 = !DILocation(line: 201, column: 13, scope: !747)
!764 = !DILocation(line: 201, column: 34, scope: !747)
!765 = !DILocation(line: 201, column: 23, scope: !747)
!766 = !DILocation(line: 202, column: 3, scope: !747)
!767 = !DILocation(line: 202, column: 10, scope: !747)
!768 = !DILocation(line: 204, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !747, file: !179, line: 204, column: 7)
!770 = !DILocation(line: 204, column: 15, scope: !769)
!771 = !DILocation(line: 204, column: 7, scope: !747)
!772 = !DILocation(line: 205, column: 12, scope: !773)
!773 = distinct !DILexicalBlock(scope: !769, file: !179, line: 204, column: 21)
!774 = !DILocation(line: 206, column: 12, scope: !773)
!775 = !DILocation(line: 206, column: 5, scope: !773)
!776 = !DILocation(line: 209, column: 12, scope: !777)
!777 = distinct !DILexicalBlock(scope: !747, file: !179, line: 209, column: 7)
!778 = !DILocation(line: 209, column: 9, scope: !777)
!779 = !DILocation(line: 209, column: 7, scope: !747)
!780 = !DILocation(line: 211, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !179, line: 211, column: 9)
!782 = distinct !DILexicalBlock(scope: !777, file: !179, line: 209, column: 20)
!783 = !DILocation(line: 211, column: 17, scope: !781)
!784 = !DILocation(line: 211, column: 22, scope: !781)
!785 = !DILocation(line: 211, column: 9, scope: !782)
!786 = !DILocation(line: 212, column: 32, scope: !787)
!787 = distinct !DILexicalBlock(scope: !781, file: !179, line: 211, column: 28)
!788 = !DILocation(line: 212, column: 25, scope: !787)
!789 = !DILocation(line: 212, column: 7, scope: !787)
!790 = !DILocation(line: 212, column: 15, scope: !787)
!791 = !DILocation(line: 212, column: 23, scope: !787)
!792 = !DILocation(line: 213, column: 5, scope: !787)
!793 = !DILocation(line: 214, column: 22, scope: !794)
!794 = distinct !DILexicalBlock(scope: !781, file: !179, line: 213, column: 12)
!795 = !DILocation(line: 214, column: 30, scope: !794)
!796 = !DILocation(line: 214, column: 20, scope: !794)
!797 = !DILocation(line: 214, column: 14, scope: !794)
!798 = !DILocation(line: 215, column: 33, scope: !794)
!799 = !DILocation(line: 215, column: 41, scope: !794)
!800 = !DILocation(line: 215, column: 40, scope: !794)
!801 = !DILocation(line: 215, column: 25, scope: !794)
!802 = !DILocation(line: 215, column: 7, scope: !794)
!803 = !DILocation(line: 215, column: 15, scope: !794)
!804 = !DILocation(line: 215, column: 23, scope: !794)
!805 = !DILocation(line: 217, column: 3, scope: !782)
!806 = !DILocation(line: 218, column: 12, scope: !807)
!807 = distinct !DILexicalBlock(scope: !777, file: !179, line: 217, column: 10)
!808 = !DILocation(line: 221, column: 10, scope: !747)
!809 = !DILocation(line: 221, column: 3, scope: !747)
!810 = !DILocation(line: 222, column: 1, scope: !747)
!811 = distinct !DISubprogram(name: "libxsmm_dnn_optimizer_release_scratch", scope: !179, file: !179, line: 225, type: !812, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!183, !103}
!814 = !{!815, !816}
!815 = !DILocalVariable(name: "handle", arg: 1, scope: !811, file: !179, line: 225, type: !103)
!816 = !DILocalVariable(name: "status", scope: !811, file: !179, line: 226, type: !183)
!817 = !DILocation(line: 225, column: 92, scope: !811)
!818 = !DILocation(line: 226, column: 3, scope: !811)
!819 = !DILocation(line: 226, column: 21, scope: !811)
!820 = !DILocation(line: 228, column: 12, scope: !821)
!821 = distinct !DILexicalBlock(scope: !811, file: !179, line: 228, column: 7)
!822 = !DILocation(line: 228, column: 9, scope: !821)
!823 = !DILocation(line: 228, column: 7, scope: !811)
!824 = !DILocation(line: 229, column: 5, scope: !825)
!825 = distinct !DILexicalBlock(scope: !821, file: !179, line: 228, column: 20)
!826 = !DILocation(line: 229, column: 13, scope: !825)
!827 = !DILocation(line: 229, column: 21, scope: !825)
!828 = !DILocation(line: 230, column: 3, scope: !825)
!829 = !DILocation(line: 231, column: 12, scope: !830)
!830 = distinct !DILexicalBlock(scope: !821, file: !179, line: 230, column: 10)
!831 = !DILocation(line: 234, column: 10, scope: !811)
!832 = !DILocation(line: 235, column: 1, scope: !811)
!833 = !DILocation(line: 234, column: 3, scope: !811)
!834 = distinct !DISubprogram(name: "libxsmm_dnn_optimizer_bind_tensor", scope: !179, file: !179, line: 238, type: !835, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !839)
!835 = !DISubroutineType(types: !836)
!836 = !{!183, !103, !837, !438}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!839 = !{!840, !841, !842, !843, !844}
!840 = !DILocalVariable(name: "handle", arg: 1, scope: !834, file: !179, line: 238, type: !103)
!841 = !DILocalVariable(name: "tensor", arg: 2, scope: !834, file: !179, line: 238, type: !837)
!842 = !DILocalVariable(name: "type", arg: 3, scope: !834, file: !179, line: 238, type: !438)
!843 = !DILocalVariable(name: "status", scope: !834, file: !179, line: 239, type: !183)
!844 = !DILocalVariable(name: "handle_layout", scope: !845, file: !179, line: 248, type: !133)
!845 = distinct !DILexicalBlock(scope: !846, file: !179, line: 247, column: 35)
!846 = distinct !DILexicalBlock(scope: !834, file: !179, line: 247, column: 7)
!847 = !DILocation(line: 238, column: 88, scope: !834)
!848 = !DILocation(line: 238, column: 122, scope: !834)
!849 = !DILocation(line: 238, column: 160, scope: !834)
!850 = !DILocation(line: 239, column: 3, scope: !834)
!851 = !DILocation(line: 239, column: 21, scope: !834)
!852 = !DILocation(line: 242, column: 9, scope: !853)
!853 = distinct !DILexicalBlock(scope: !834, file: !179, line: 242, column: 8)
!854 = !DILocation(line: 242, column: 14, scope: !853)
!855 = !DILocation(line: 242, column: 45, scope: !853)
!856 = !DILocation(line: 242, column: 49, scope: !853)
!857 = !DILocation(line: 242, column: 54, scope: !853)
!858 = !DILocation(line: 242, column: 86, scope: !853)
!859 = !DILocation(line: 242, column: 90, scope: !853)
!860 = !DILocation(line: 242, column: 95, scope: !853)
!861 = !DILocation(line: 242, column: 8, scope: !834)
!862 = !DILocation(line: 243, column: 12, scope: !863)
!863 = distinct !DILexicalBlock(scope: !853, file: !179, line: 242, column: 127)
!864 = !DILocation(line: 244, column: 12, scope: !863)
!865 = !DILocation(line: 244, column: 5, scope: !863)
!866 = !DILocation(line: 247, column: 7, scope: !846)
!867 = !DILocation(line: 247, column: 14, scope: !846)
!868 = !DILocation(line: 247, column: 19, scope: !846)
!869 = !DILocation(line: 247, column: 22, scope: !846)
!870 = !DILocation(line: 247, column: 29, scope: !846)
!871 = !DILocation(line: 247, column: 7, scope: !834)
!872 = !DILocation(line: 248, column: 5, scope: !845)
!873 = !DILocation(line: 248, column: 36, scope: !845)
!874 = !DILocation(line: 248, column: 99, scope: !845)
!875 = !DILocation(line: 248, column: 107, scope: !845)
!876 = !DILocation(line: 248, column: 52, scope: !845)
!877 = !DILocation(line: 250, column: 48, scope: !878)
!878 = distinct !DILexicalBlock(scope: !845, file: !179, line: 250, column: 10)
!879 = !DILocation(line: 250, column: 63, scope: !878)
!880 = !DILocation(line: 250, column: 71, scope: !878)
!881 = !{!882, !191, i64 0}
!882 = !{!"libxsmm_dnn_tensor", !191, i64 0, !191, i64 8, !192, i64 16}
!883 = !DILocation(line: 250, column: 10, scope: !878)
!884 = !DILocation(line: 250, column: 88, scope: !878)
!885 = !DILocation(line: 250, column: 10, scope: !845)
!886 = !DILocation(line: 251, column: 12, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !179, line: 251, column: 12)
!888 = distinct !DILexicalBlock(scope: !878, file: !179, line: 250, column: 95)
!889 = !DILocation(line: 251, column: 17, scope: !887)
!890 = !DILocation(line: 251, column: 12, scope: !888)
!891 = !DILocation(line: 252, column: 51, scope: !892)
!892 = distinct !DILexicalBlock(scope: !887, file: !179, line: 251, column: 49)
!893 = !DILocation(line: 252, column: 9, scope: !892)
!894 = !DILocation(line: 252, column: 17, scope: !892)
!895 = !DILocation(line: 252, column: 28, scope: !892)
!896 = !{!235, !191, i64 40}
!897 = !DILocation(line: 253, column: 7, scope: !892)
!898 = !DILocation(line: 253, column: 19, scope: !899)
!899 = distinct !DILexicalBlock(scope: !887, file: !179, line: 253, column: 19)
!900 = !DILocation(line: 253, column: 24, scope: !899)
!901 = !DILocation(line: 253, column: 19, scope: !887)
!902 = !DILocation(line: 254, column: 52, scope: !903)
!903 = distinct !DILexicalBlock(scope: !899, file: !179, line: 253, column: 57)
!904 = !DILocation(line: 254, column: 9, scope: !903)
!905 = !DILocation(line: 254, column: 17, scope: !903)
!906 = !DILocation(line: 254, column: 29, scope: !903)
!907 = !{!235, !191, i64 48}
!908 = !DILocation(line: 255, column: 7, scope: !903)
!909 = !DILocation(line: 255, column: 19, scope: !910)
!910 = distinct !DILexicalBlock(scope: !899, file: !179, line: 255, column: 19)
!911 = !DILocation(line: 255, column: 24, scope: !910)
!912 = !DILocation(line: 255, column: 19, scope: !899)
!913 = !DILocation(line: 256, column: 54, scope: !914)
!914 = distinct !DILexicalBlock(scope: !910, file: !179, line: 255, column: 55)
!915 = !DILocation(line: 256, column: 9, scope: !914)
!916 = !DILocation(line: 256, column: 17, scope: !914)
!917 = !DILocation(line: 256, column: 31, scope: !914)
!918 = !{!235, !191, i64 56}
!919 = !DILocation(line: 257, column: 7, scope: !914)
!920 = !DILocation(line: 260, column: 5, scope: !888)
!921 = !DILocation(line: 261, column: 14, scope: !922)
!922 = distinct !DILexicalBlock(scope: !878, file: !179, line: 260, column: 12)
!923 = !DILocation(line: 264, column: 44, scope: !845)
!924 = !DILocation(line: 264, column: 5, scope: !845)
!925 = !DILocation(line: 265, column: 3, scope: !846)
!926 = !DILocation(line: 265, column: 3, scope: !845)
!927 = !DILocation(line: 267, column: 12, scope: !928)
!928 = distinct !DILexicalBlock(scope: !846, file: !179, line: 266, column: 8)
!929 = !DILocation(line: 270, column: 10, scope: !834)
!930 = !DILocation(line: 270, column: 3, scope: !834)
!931 = !DILocation(line: 271, column: 1, scope: !834)
!932 = !DISubprogram(name: "libxsmm_dnn_compare_tensor_datalayout", scope: !29, file: !29, line: 177, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!933 = !DISubroutineType(types: !934)
!934 = !{!5, !935, !935, !182}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!937 = !DISubprogram(name: "libxsmm_dnn_destroy_tensor_datalayout", scope: !29, file: !29, line: 176, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!938 = !DISubroutineType(types: !939)
!939 = !{!183, !133}
!940 = distinct !DISubprogram(name: "libxsmm_dnn_optimizer_get_tensor", scope: !179, file: !179, line: 274, type: !941, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !943)
!941 = !DISubroutineType(types: !942)
!942 = !{!128, !103, !438, !182}
!943 = !{!944, !945, !946, !947}
!944 = !DILocalVariable(name: "handle", arg: 1, scope: !940, file: !179, line: 274, type: !103)
!945 = !DILocalVariable(name: "type", arg: 2, scope: !940, file: !179, line: 274, type: !438)
!946 = !DILocalVariable(name: "status", arg: 3, scope: !940, file: !179, line: 274, type: !182)
!947 = !DILocalVariable(name: "return_tensor", scope: !940, file: !179, line: 275, type: !128)
!948 = !DILocation(line: 274, column: 89, scope: !940)
!949 = !DILocation(line: 274, column: 127, scope: !940)
!950 = !DILocation(line: 274, column: 152, scope: !940)
!951 = !DILocation(line: 275, column: 3, scope: !940)
!952 = !DILocation(line: 275, column: 23, scope: !940)
!953 = !DILocation(line: 277, column: 4, scope: !940)
!954 = !DILocation(line: 277, column: 11, scope: !940)
!955 = !DILocation(line: 280, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !940, file: !179, line: 280, column: 8)
!957 = !DILocation(line: 280, column: 14, scope: !956)
!958 = !DILocation(line: 280, column: 45, scope: !956)
!959 = !DILocation(line: 280, column: 49, scope: !956)
!960 = !DILocation(line: 280, column: 54, scope: !956)
!961 = !DILocation(line: 280, column: 86, scope: !956)
!962 = !DILocation(line: 280, column: 90, scope: !956)
!963 = !DILocation(line: 280, column: 95, scope: !956)
!964 = !DILocation(line: 280, column: 8, scope: !940)
!965 = !DILocation(line: 281, column: 6, scope: !966)
!966 = distinct !DILexicalBlock(scope: !956, file: !179, line: 280, column: 127)
!967 = !DILocation(line: 281, column: 13, scope: !966)
!968 = !DILocation(line: 282, column: 12, scope: !966)
!969 = !DILocation(line: 282, column: 5, scope: !966)
!970 = !DILocation(line: 285, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !940, file: !179, line: 285, column: 7)
!972 = !DILocation(line: 285, column: 14, scope: !971)
!973 = !DILocation(line: 285, column: 7, scope: !940)
!974 = !DILocation(line: 286, column: 10, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !179, line: 286, column: 10)
!976 = distinct !DILexicalBlock(scope: !971, file: !179, line: 285, column: 20)
!977 = !DILocation(line: 286, column: 15, scope: !975)
!978 = !DILocation(line: 286, column: 10, scope: !976)
!979 = !DILocation(line: 287, column: 23, scope: !980)
!980 = distinct !DILexicalBlock(scope: !975, file: !179, line: 286, column: 47)
!981 = !DILocation(line: 287, column: 31, scope: !980)
!982 = !DILocation(line: 287, column: 21, scope: !980)
!983 = !DILocation(line: 288, column: 5, scope: !980)
!984 = !DILocation(line: 288, column: 17, scope: !985)
!985 = distinct !DILexicalBlock(scope: !975, file: !179, line: 288, column: 17)
!986 = !DILocation(line: 288, column: 22, scope: !985)
!987 = !DILocation(line: 288, column: 17, scope: !975)
!988 = !DILocation(line: 289, column: 23, scope: !989)
!989 = distinct !DILexicalBlock(scope: !985, file: !179, line: 288, column: 55)
!990 = !DILocation(line: 289, column: 31, scope: !989)
!991 = !DILocation(line: 289, column: 21, scope: !989)
!992 = !DILocation(line: 290, column: 5, scope: !989)
!993 = !DILocation(line: 290, column: 17, scope: !994)
!994 = distinct !DILexicalBlock(scope: !985, file: !179, line: 290, column: 17)
!995 = !DILocation(line: 290, column: 22, scope: !994)
!996 = !DILocation(line: 290, column: 17, scope: !985)
!997 = !DILocation(line: 291, column: 23, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !179, line: 290, column: 53)
!999 = !DILocation(line: 291, column: 31, scope: !998)
!1000 = !DILocation(line: 291, column: 21, scope: !998)
!1001 = !DILocation(line: 292, column: 5, scope: !998)
!1002 = !DILocation(line: 295, column: 3, scope: !976)
!1003 = !DILocation(line: 296, column: 6, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !971, file: !179, line: 295, column: 10)
!1005 = !DILocation(line: 296, column: 13, scope: !1004)
!1006 = !DILocation(line: 299, column: 10, scope: !940)
!1007 = !DILocation(line: 299, column: 3, scope: !940)
!1008 = !DILocation(line: 300, column: 1, scope: !940)
!1009 = distinct !DISubprogram(name: "libxsmm_dnn_optimizer_release_tensor", scope: !179, file: !179, line: 303, type: !1010, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!183, !103, !438}
!1012 = !{!1013, !1014, !1015}
!1013 = !DILocalVariable(name: "handle", arg: 1, scope: !1009, file: !179, line: 303, type: !103)
!1014 = !DILocalVariable(name: "type", arg: 2, scope: !1009, file: !179, line: 303, type: !438)
!1015 = !DILocalVariable(name: "status", scope: !1009, file: !179, line: 304, type: !183)
!1016 = !DILocation(line: 303, column: 91, scope: !1009)
!1017 = !DILocation(line: 303, column: 129, scope: !1009)
!1018 = !DILocation(line: 304, column: 3, scope: !1009)
!1019 = !DILocation(line: 304, column: 21, scope: !1009)
!1020 = !DILocation(line: 307, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1009, file: !179, line: 307, column: 8)
!1022 = !DILocation(line: 307, column: 14, scope: !1021)
!1023 = !DILocation(line: 307, column: 45, scope: !1021)
!1024 = !DILocation(line: 307, column: 49, scope: !1021)
!1025 = !DILocation(line: 307, column: 54, scope: !1021)
!1026 = !DILocation(line: 307, column: 86, scope: !1021)
!1027 = !DILocation(line: 307, column: 90, scope: !1021)
!1028 = !DILocation(line: 307, column: 95, scope: !1021)
!1029 = !DILocation(line: 307, column: 8, scope: !1009)
!1030 = !DILocation(line: 308, column: 12, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1021, file: !179, line: 307, column: 127)
!1032 = !DILocation(line: 309, column: 12, scope: !1031)
!1033 = !DILocation(line: 309, column: 5, scope: !1031)
!1034 = !DILocation(line: 312, column: 7, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1009, file: !179, line: 312, column: 7)
!1036 = !DILocation(line: 312, column: 14, scope: !1035)
!1037 = !DILocation(line: 312, column: 7, scope: !1009)
!1038 = !DILocation(line: 313, column: 10, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !179, line: 313, column: 10)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !179, line: 312, column: 20)
!1041 = !DILocation(line: 313, column: 15, scope: !1039)
!1042 = !DILocation(line: 313, column: 10, scope: !1040)
!1043 = !DILocation(line: 314, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1039, file: !179, line: 313, column: 47)
!1045 = !DILocation(line: 314, column: 15, scope: !1044)
!1046 = !DILocation(line: 314, column: 26, scope: !1044)
!1047 = !DILocation(line: 315, column: 5, scope: !1044)
!1048 = !DILocation(line: 315, column: 17, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1039, file: !179, line: 315, column: 17)
!1050 = !DILocation(line: 315, column: 22, scope: !1049)
!1051 = !DILocation(line: 315, column: 17, scope: !1039)
!1052 = !DILocation(line: 316, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !179, line: 315, column: 55)
!1054 = !DILocation(line: 316, column: 15, scope: !1053)
!1055 = !DILocation(line: 316, column: 27, scope: !1053)
!1056 = !DILocation(line: 317, column: 5, scope: !1053)
!1057 = !DILocation(line: 317, column: 17, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1049, file: !179, line: 317, column: 17)
!1059 = !DILocation(line: 317, column: 22, scope: !1058)
!1060 = !DILocation(line: 317, column: 17, scope: !1049)
!1061 = !DILocation(line: 318, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !179, line: 317, column: 53)
!1063 = !DILocation(line: 318, column: 15, scope: !1062)
!1064 = !DILocation(line: 318, column: 29, scope: !1062)
!1065 = !DILocation(line: 319, column: 5, scope: !1062)
!1066 = !DILocation(line: 322, column: 3, scope: !1040)
!1067 = !DILocation(line: 323, column: 12, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1035, file: !179, line: 322, column: 10)
!1069 = !DILocation(line: 326, column: 10, scope: !1009)
!1070 = !DILocation(line: 326, column: 3, scope: !1009)
!1071 = !DILocation(line: 327, column: 1, scope: !1009)
!1072 = distinct !DISubprogram(name: "libxsmm_dnn_optimizer_execute_st", scope: !179, file: !179, line: 330, type: !1073, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1075)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!183, !103, !113, !113}
!1075 = !{!1076, !1077, !1078, !1079}
!1076 = !DILocalVariable(name: "handle", arg: 1, scope: !1072, file: !179, line: 330, type: !103)
!1077 = !DILocalVariable(name: "start_thread", arg: 2, scope: !1072, file: !179, line: 330, type: !113)
!1078 = !DILocalVariable(name: "tid", arg: 3, scope: !1072, file: !179, line: 330, type: !113)
!1079 = !DILocalVariable(name: "status", scope: !1072, file: !179, line: 331, type: !183)
!1080 = !DILocation(line: 330, column: 87, scope: !1072)
!1081 = !DILocation(line: 330, column: 111, scope: !1072)
!1082 = !DILocation(line: 330, column: 141, scope: !1072)
!1083 = !DILocation(line: 331, column: 3, scope: !1072)
!1084 = !DILocation(line: 331, column: 21, scope: !1072)
!1085 = !DILocation(line: 333, column: 12, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1072, file: !179, line: 333, column: 7)
!1087 = !DILocation(line: 333, column: 9, scope: !1086)
!1088 = !DILocation(line: 333, column: 7, scope: !1072)
!1089 = !DILocation(line: 334, column: 5, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !179, line: 333, column: 20)
!1091 = !DILocation(line: 335, column: 5, scope: !1090)
!1092 = !DILocation(line: 336, column: 3, scope: !1090)
!1093 = !DILocation(line: 338, column: 12, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1086, file: !179, line: 337, column: 8)
!1095 = !DILocation(line: 341, column: 10, scope: !1072)
!1096 = !DILocation(line: 342, column: 1, scope: !1072)
!1097 = !DILocation(line: 341, column: 3, scope: !1072)

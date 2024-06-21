; ModuleID = 'samples/244.bc'
source_filename = "./src/libxsmm_dnn_fusedbatchnorm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libxsmm_dnn_fusedbatchnorm_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.libxsmm_dnn_fusedbatchnorm = type { %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, ptr }
%struct.libxsmm_dnn_tensor_datalayout = type { ptr, ptr, i32, i32, i32, i32 }
%struct.libxsmm_dnn_tensor = type { ptr, ptr, i8 }

@libxsmm_ninit = external global i32, align 4

; Function Attrs: nounwind uwtable
define ptr @libxsmm_dnn_create_fusedbatchnorm(ptr noundef byval(%struct.libxsmm_dnn_fusedbatchnorm_desc) align 8 %fusedbatchnorm_desc, ptr noundef %status) #0 !dbg !235 {
entry:
  %retval = alloca ptr, align 8
  %status.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %lpb = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  tail call void @llvm.dbg.declare(metadata ptr %fusedbatchnorm_desc, metadata !242, metadata !DIExpression()), !dbg !246
  store ptr %status, ptr %status.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !243, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #8, !dbg !252
  tail call void @llvm.dbg.declare(metadata ptr %handle, metadata !244, metadata !DIExpression()), !dbg !253
  store ptr null, ptr %handle, align 8, !dbg !253, !tbaa !247
  call void @llvm.lifetime.start.p0(i64 4, ptr %lpb) #8, !dbg !254
  tail call void @llvm.dbg.declare(metadata ptr %lpb, metadata !245, metadata !DIExpression()), !dbg !255
  %0 = load i32, ptr @libxsmm_ninit, align 4, !dbg !256, !tbaa !258
  %cmp = icmp ugt i32 2, %0, !dbg !256
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %entry
  call void @libxsmm_init(), !dbg !256
  br label %if.end, !dbg !256

if.end:                                           ; preds = %if.then, %entry
  %partN = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %fusedbatchnorm_desc, i32 0, i32 0, !dbg !261
  %1 = load i32, ptr %partN, align 8, !dbg !261, !tbaa !263
  %fullN = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %fusedbatchnorm_desc, i32 0, i32 1, !dbg !265
  %2 = load i32, ptr %fullN, align 4, !dbg !265, !tbaa !266
  %cmp1 = icmp sgt i32 %1, %2, !dbg !267
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !268

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %status.addr, align 8, !dbg !269, !tbaa !247
  store i32 100001, ptr %3, align 4, !dbg !271, !tbaa !258
  %4 = load ptr, ptr %handle, align 8, !dbg !272, !tbaa !247
  store ptr %4, ptr %retval, align 8, !dbg !273
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !273

if.else:                                          ; preds = %if.end
  %partN3 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %fusedbatchnorm_desc, i32 0, i32 0, !dbg !274
  %5 = load i32, ptr %partN3, align 8, !dbg !274, !tbaa !263
  %fullN4 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %fusedbatchnorm_desc, i32 0, i32 1, !dbg !276
  %6 = load i32, ptr %fullN4, align 4, !dbg !276, !tbaa !266
  %cmp5 = icmp ne i32 %5, %6, !dbg !277
  br i1 %cmp5, label %land.lhs.true, label %if.else12, !dbg !278

land.lhs.true:                                    ; preds = %if.else
  %fuse_ops = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %fusedbatchnorm_desc, i32 0, i32 17, !dbg !279
  %7 = load i32, ptr %fuse_ops, align 4, !dbg !279, !tbaa !280
  %and = and i32 %7, 8, !dbg !281
  %cmp6 = icmp eq i32 %and, 0, !dbg !282
  br i1 %cmp6, label %land.lhs.true7, label %if.else12, !dbg !283

land.lhs.true7:                                   ; preds = %land.lhs.true
  %fuse_ops8 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %fusedbatchnorm_desc, i32 0, i32 17, !dbg !284
  %8 = load i32, ptr %fuse_ops8, align 4, !dbg !284, !tbaa !280
  %and9 = and i32 %8, 2, !dbg !285
  %cmp10 = icmp eq i32 %and9, 0, !dbg !286
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !287

if.then11:                                        ; preds = %land.lhs.true7
  %9 = load ptr, ptr %status.addr, align 8, !dbg !288, !tbaa !247
  store i32 100001, ptr %9, align 4, !dbg !290, !tbaa !258
  %10 = load ptr, ptr %handle, align 8, !dbg !291, !tbaa !247
  store ptr %10, ptr %retval, align 8, !dbg !292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !292

if.else12:                                        ; preds = %land.lhs.true7, %land.lhs.true, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.else12
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  %datatype_in = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %fusedbatchnorm_desc, i32 0, i32 12, !dbg !293
  %11 = load i32, ptr %datatype_in, align 8, !dbg !293, !tbaa !295
  %cmp15 = icmp eq i32 %11, 2, !dbg !296
  br i1 %cmp15, label %land.lhs.true16, label %lor.lhs.false, !dbg !297

land.lhs.true16:                                  ; preds = %if.end14
  %datatype_out = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %fusedbatchnorm_desc, i32 0, i32 13, !dbg !298
  %12 = load i32, ptr %datatype_out, align 4, !dbg !298, !tbaa !299
  %cmp17 = icmp eq i32 %12, 2, !dbg !300
  br i1 %cmp17, label %if.then23, label %lor.lhs.false, !dbg !301

lor.lhs.false:                                    ; preds = %land.lhs.true16, %if.end14
  %datatype_in18 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %fusedbatchnorm_desc, i32 0, i32 12, !dbg !302
  %13 = load i32, ptr %datatype_in18, align 8, !dbg !302, !tbaa !295
  %cmp19 = icmp eq i32 %13, 1, !dbg !303
  br i1 %cmp19, label %land.lhs.true20, label %if.else51, !dbg !304

land.lhs.true20:                                  ; preds = %lor.lhs.false
  %datatype_out21 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %fusedbatchnorm_desc, i32 0, i32 13, !dbg !305
  %14 = load i32, ptr %datatype_out21, align 4, !dbg !305, !tbaa !299
  %cmp22 = icmp eq i32 %14, 1, !dbg !306
  br i1 %cmp22, label %if.then23, label %if.else51, !dbg !307

if.then23:                                        ; preds = %land.lhs.true20, %land.lhs.true16
  %call = call noalias ptr @malloc(i64 noundef 224) #9, !dbg !308
  store ptr %call, ptr %handle, align 8, !dbg !310, !tbaa !247
  %15 = load ptr, ptr %handle, align 8, !dbg !311, !tbaa !247
  %cmp24 = icmp ne ptr null, %15, !dbg !313
  br i1 %cmp24, label %if.then25, label %if.else49, !dbg !314

if.then25:                                        ; preds = %if.then23
  %16 = load ptr, ptr %status.addr, align 8, !dbg !315, !tbaa !247
  store i32 0, ptr %16, align 4, !dbg !317, !tbaa !258
  %17 = load ptr, ptr %handle, align 8, !dbg !318, !tbaa !247
  call void @llvm.memset.p0.i64(ptr align 8 %17, i8 0, i64 224, i1 false), !dbg !319
  %18 = load ptr, ptr %handle, align 8, !dbg !320, !tbaa !247
  %desc = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %18, i32 0, i32 0, !dbg !321
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %desc, ptr align 8 %fusedbatchnorm_desc, i64 72, i1 false), !dbg !322, !tbaa.struct !323
  %19 = load ptr, ptr %handle, align 8, !dbg !325, !tbaa !247
  %desc26 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %19, i32 0, i32 0, !dbg !326
  %C = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc26, i32 0, i32 2, !dbg !327
  %20 = load i32, ptr %C, align 8, !dbg !327, !tbaa !328
  %21 = load ptr, ptr %handle, align 8, !dbg !331, !tbaa !247
  %desc27 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %21, i32 0, i32 0, !dbg !332
  %C28 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc27, i32 0, i32 2, !dbg !333
  %22 = load i32, ptr %C28, align 8, !dbg !333, !tbaa !328
  %23 = load ptr, ptr %handle, align 8, !dbg !334, !tbaa !247
  %ifmblock = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %23, i32 0, i32 16, !dbg !335
  %24 = load ptr, ptr %handle, align 8, !dbg !336, !tbaa !247
  %ofmblock = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %24, i32 0, i32 17, !dbg !337
  %25 = load ptr, ptr %handle, align 8, !dbg !338, !tbaa !247
  %desc29 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %25, i32 0, i32 0, !dbg !339
  %datatype_in30 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc29, i32 0, i32 12, !dbg !340
  %26 = load i32, ptr %datatype_in30, align 8, !dbg !340, !tbaa !341
  %27 = load ptr, ptr %handle, align 8, !dbg !342, !tbaa !247
  %desc31 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %27, i32 0, i32 0, !dbg !343
  %datatype_out32 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc31, i32 0, i32 13, !dbg !344
  %28 = load i32, ptr %datatype_out32, align 4, !dbg !344, !tbaa !345
  %call33 = call i32 @libxsmm_dnn_get_feature_map_blocks(i32 noundef %20, i32 noundef %22, ptr noundef %ifmblock, ptr noundef %ofmblock, ptr noundef %lpb, i32 noundef %26, i32 noundef %28), !dbg !346
  %29 = load ptr, ptr %status.addr, align 8, !dbg !347, !tbaa !247
  store i32 %call33, ptr %29, align 4, !dbg !348, !tbaa !258
  %30 = load ptr, ptr %handle, align 8, !dbg !349, !tbaa !247
  %desc34 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %30, i32 0, i32 0, !dbg !350
  %C35 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc34, i32 0, i32 2, !dbg !351
  %31 = load i32, ptr %C35, align 8, !dbg !351, !tbaa !328
  %32 = load ptr, ptr %handle, align 8, !dbg !352, !tbaa !247
  %ifmblock36 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %32, i32 0, i32 16, !dbg !353
  %33 = load i32, ptr %ifmblock36, align 8, !dbg !353, !tbaa !354
  %div = sdiv i32 %31, %33, !dbg !355
  %34 = load ptr, ptr %handle, align 8, !dbg !356, !tbaa !247
  %blocksifm = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %34, i32 0, i32 18, !dbg !357
  store i32 %div, ptr %blocksifm, align 8, !dbg !358, !tbaa !359
  %35 = load ptr, ptr %handle, align 8, !dbg !360, !tbaa !247
  %desc37 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %35, i32 0, i32 0, !dbg !361
  %C38 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc37, i32 0, i32 2, !dbg !362
  %36 = load i32, ptr %C38, align 8, !dbg !362, !tbaa !328
  %37 = load ptr, ptr %handle, align 8, !dbg !363, !tbaa !247
  %ofmblock39 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %37, i32 0, i32 17, !dbg !364
  %38 = load i32, ptr %ofmblock39, align 4, !dbg !364, !tbaa !365
  %div40 = sdiv i32 %36, %38, !dbg !366
  %39 = load ptr, ptr %handle, align 8, !dbg !367, !tbaa !247
  %blocksofm = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %39, i32 0, i32 19, !dbg !368
  store i32 %div40, ptr %blocksofm, align 4, !dbg !369, !tbaa !370
  %40 = load ptr, ptr %handle, align 8, !dbg !371, !tbaa !247
  %desc41 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %40, i32 0, i32 0, !dbg !372
  %threads = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc41, i32 0, i32 11, !dbg !373
  %41 = load i32, ptr %threads, align 4, !dbg !373, !tbaa !374
  %call42 = call ptr @libxsmm_barrier_create(i32 noundef %41, i32 noundef 1), !dbg !375
  %42 = load ptr, ptr %handle, align 8, !dbg !376, !tbaa !247
  %barrier = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %42, i32 0, i32 15, !dbg !377
  store ptr %call42, ptr %barrier, align 8, !dbg !378, !tbaa !379
  %43 = load ptr, ptr %handle, align 8, !dbg !380, !tbaa !247
  %desc43 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %43, i32 0, i32 0, !dbg !381
  %C44 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc43, i32 0, i32 2, !dbg !382
  %44 = load i32, ptr %C44, align 8, !dbg !382, !tbaa !328
  %conv = sext i32 %44 to i64, !dbg !380
  %mul = mul i64 8, %conv, !dbg !383
  %45 = load ptr, ptr %handle, align 8, !dbg !384, !tbaa !247
  %desc45 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %45, i32 0, i32 0, !dbg !385
  %partN46 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc45, i32 0, i32 0, !dbg !386
  %46 = load i32, ptr %partN46, align 8, !dbg !386, !tbaa !387
  %conv47 = sext i32 %46 to i64, !dbg !384
  %mul48 = mul i64 %mul, %conv47, !dbg !388
  %47 = load ptr, ptr %handle, align 8, !dbg !389, !tbaa !247
  %scratch_size = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %47, i32 0, i32 20, !dbg !390
  store i64 %mul48, ptr %scratch_size, align 8, !dbg !391, !tbaa !392
  br label %if.end50, !dbg !393

if.else49:                                        ; preds = %if.then23
  %48 = load ptr, ptr %status.addr, align 8, !dbg !394, !tbaa !247
  store i32 100001, ptr %48, align 4, !dbg !396, !tbaa !258
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then25
  br label %if.end52, !dbg !397

if.else51:                                        ; preds = %land.lhs.true20, %lor.lhs.false
  %49 = load ptr, ptr %status.addr, align 8, !dbg !398, !tbaa !247
  store i32 100002, ptr %49, align 4, !dbg !400, !tbaa !258
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.end50
  %50 = load ptr, ptr %handle, align 8, !dbg !401, !tbaa !247
  store ptr %50, ptr %retval, align 8, !dbg !402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !402

cleanup:                                          ; preds = %if.end52, %if.then11, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %lpb) #8, !dbg !403
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #8, !dbg !403
  %51 = load ptr, ptr %retval, align 8, !dbg !403
  ret ptr %51, !dbg !403
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !404 void @libxsmm_init() #2

; Function Attrs: nounwind allocsize(0)
declare !dbg !408 noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !412 hidden i32 @libxsmm_dnn_get_feature_map_blocks(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare !dbg !416 ptr @libxsmm_barrier_create(i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_destroy_fusedbatchnorm(ptr noundef %handle) #0 !dbg !419 {
entry:
  %handle.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !425, metadata !DIExpression()), !dbg !427
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !428
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !426, metadata !DIExpression()), !dbg !429
  store i32 0, ptr %status, align 4, !dbg !429, !tbaa !258
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !430, !tbaa !247
  %cmp = icmp ne ptr null, %0, !dbg !432
  br i1 %cmp, label %if.then, label %if.else, !dbg !433

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !434, !tbaa !247
  %barrier = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %1, i32 0, i32 15, !dbg !437
  %2 = load ptr, ptr %barrier, align 8, !dbg !437, !tbaa !379
  %cmp1 = icmp ne ptr %2, null, !dbg !438
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !439

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %handle.addr, align 8, !dbg !440, !tbaa !247
  %barrier3 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %3, i32 0, i32 15, !dbg !442
  %4 = load ptr, ptr %barrier3, align 8, !dbg !442, !tbaa !379
  call void @libxsmm_barrier_destroy(ptr noundef %4), !dbg !443
  br label %if.end, !dbg !444

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !445, !tbaa !247
  call void @free(ptr noundef %5) #8, !dbg !446
  br label %if.end4, !dbg !447

if.else:                                          ; preds = %entry
  store i32 100004, ptr %status, align 4, !dbg !448, !tbaa !258
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  %6 = load i32, ptr %status, align 4, !dbg !450, !tbaa !258
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !451
  ret i32 %6, !dbg !452
}

declare !dbg !453 void @libxsmm_barrier_destroy(ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !456 void @free(ptr noundef) #6

; Function Attrs: nounwind uwtable
define ptr @libxsmm_dnn_fusedbatchnorm_create_tensor_datalayout(ptr noundef %handle, i32 noundef %type, ptr noundef %status) #0 !dbg !459 {
entry:
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %status.addr = alloca ptr, align 8
  %layout = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !464, metadata !DIExpression()), !dbg !468
  store i32 %type, ptr %type.addr, align 4, !tbaa !324
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !465, metadata !DIExpression()), !dbg !469
  store ptr %status, ptr %status.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !466, metadata !DIExpression()), !dbg !470
  call void @llvm.lifetime.start.p0(i64 8, ptr %layout) #8, !dbg !471
  tail call void @llvm.dbg.declare(metadata ptr %layout, metadata !467, metadata !DIExpression()), !dbg !472
  %0 = load ptr, ptr %status.addr, align 8, !dbg !473, !tbaa !247
  store i32 0, ptr %0, align 4, !dbg !474, !tbaa !258
  store ptr null, ptr %layout, align 8, !dbg !475, !tbaa !247
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !476, !tbaa !247
  %cmp = icmp ne ptr %1, null, !dbg !478
  br i1 %cmp, label %if.then, label %if.else574, !dbg !479

if.then:                                          ; preds = %entry
  %call = call noalias ptr @malloc(i64 noundef 32) #9, !dbg !480
  store ptr %call, ptr %layout, align 8, !dbg !482, !tbaa !247
  %2 = load ptr, ptr %layout, align 8, !dbg !483, !tbaa !247
  %cmp1 = icmp ne ptr %2, null, !dbg !485
  br i1 %cmp1, label %if.then2, label %if.else572, !dbg !486

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %layout, align 8, !dbg !487, !tbaa !247
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 32, i1 false), !dbg !489
  %4 = load ptr, ptr %handle.addr, align 8, !dbg !490, !tbaa !247
  %desc = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %4, i32 0, i32 0, !dbg !491
  %buffer_format = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc, i32 0, i32 15, !dbg !492
  %5 = load i32, ptr %buffer_format, align 4, !dbg !492, !tbaa !493
  %6 = load ptr, ptr %layout, align 8, !dbg !494, !tbaa !247
  %format = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %6, i32 0, i32 3, !dbg !495
  store i32 %5, ptr %format, align 4, !dbg !496, !tbaa !497
  %7 = load i32, ptr %type.addr, align 4, !dbg !499, !tbaa !324
  %cmp3 = icmp eq i32 %7, 0, !dbg !501
  br i1 %cmp3, label %if.then17, label %lor.lhs.false, !dbg !502

lor.lhs.false:                                    ; preds = %if.then2
  %8 = load i32, ptr %type.addr, align 4, !dbg !503, !tbaa !324
  %cmp4 = icmp eq i32 %8, 3, !dbg !504
  br i1 %cmp4, label %if.then17, label %lor.lhs.false5, !dbg !505

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %9 = load i32, ptr %type.addr, align 4, !dbg !506, !tbaa !324
  %cmp6 = icmp eq i32 %9, 7, !dbg !507
  br i1 %cmp6, label %if.then17, label %lor.lhs.false7, !dbg !508

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %10 = load i32, ptr %type.addr, align 4, !dbg !509, !tbaa !324
  %cmp8 = icmp eq i32 %10, 5, !dbg !510
  br i1 %cmp8, label %if.then17, label %lor.lhs.false9, !dbg !511

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %11 = load i32, ptr %type.addr, align 4, !dbg !512, !tbaa !324
  %cmp10 = icmp eq i32 %11, 6, !dbg !513
  br i1 %cmp10, label %if.then17, label %lor.lhs.false11, !dbg !514

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %12 = load i32, ptr %type.addr, align 4, !dbg !515, !tbaa !324
  %cmp12 = icmp eq i32 %12, 8, !dbg !516
  br i1 %cmp12, label %if.then17, label %lor.lhs.false13, !dbg !517

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %13 = load i32, ptr %type.addr, align 4, !dbg !518, !tbaa !324
  %cmp14 = icmp eq i32 %13, 1, !dbg !519
  br i1 %cmp14, label %if.then17, label %lor.lhs.false15, !dbg !520

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %14 = load i32, ptr %type.addr, align 4, !dbg !521, !tbaa !324
  %cmp16 = icmp eq i32 %14, 4, !dbg !522
  br i1 %cmp16, label %if.then17, label %if.else349, !dbg !523

if.then17:                                        ; preds = %lor.lhs.false15, %lor.lhs.false13, %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %if.then2
  %15 = load ptr, ptr %handle.addr, align 8, !dbg !524, !tbaa !247
  %desc18 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %15, i32 0, i32 0, !dbg !527
  %buffer_format19 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc18, i32 0, i32 15, !dbg !528
  %16 = load i32, ptr %buffer_format19, align 4, !dbg !528, !tbaa !493
  %and = and i32 %16, 1, !dbg !529
  %cmp20 = icmp ugt i32 %and, 0, !dbg !530
  br i1 %cmp20, label %if.then21, label %if.else224, !dbg !531

if.then21:                                        ; preds = %if.then17
  %17 = load ptr, ptr %handle.addr, align 8, !dbg !532, !tbaa !247
  %desc22 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %17, i32 0, i32 0, !dbg !535
  %datatype_in = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc22, i32 0, i32 12, !dbg !536
  %18 = load i32, ptr %datatype_in, align 8, !dbg !536, !tbaa !341
  %cmp23 = icmp eq i32 %18, 1, !dbg !537
  br i1 %cmp23, label %land.lhs.true, label %if.else108, !dbg !538

land.lhs.true:                                    ; preds = %if.then21
  %19 = load ptr, ptr %handle.addr, align 8, !dbg !539, !tbaa !247
  %desc24 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %19, i32 0, i32 0, !dbg !540
  %datatype_out = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc24, i32 0, i32 13, !dbg !541
  %20 = load i32, ptr %datatype_out, align 4, !dbg !541, !tbaa !345
  %cmp25 = icmp eq i32 %20, 1, !dbg !542
  br i1 %cmp25, label %if.then26, label %if.else108, !dbg !543

if.then26:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %layout, align 8, !dbg !544, !tbaa !247
  %datatype = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %21, i32 0, i32 4, !dbg !546
  store i32 1, ptr %datatype, align 8, !dbg !547, !tbaa !548
  %call27 = call noalias ptr @malloc(i64 noundef 20) #9, !dbg !549
  %22 = load ptr, ptr %layout, align 8, !dbg !550, !tbaa !247
  %dim_type = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %22, i32 0, i32 0, !dbg !551
  store ptr %call27, ptr %dim_type, align 8, !dbg !552, !tbaa !553
  %call28 = call noalias ptr @malloc(i64 noundef 20) #9, !dbg !554
  %23 = load ptr, ptr %layout, align 8, !dbg !555, !tbaa !247
  %dim_size = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %23, i32 0, i32 1, !dbg !556
  store ptr %call28, ptr %dim_size, align 8, !dbg !557, !tbaa !558
  %24 = load ptr, ptr %layout, align 8, !dbg !559, !tbaa !247
  %dim_type29 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %24, i32 0, i32 0, !dbg !561
  %25 = load ptr, ptr %dim_type29, align 8, !dbg !561, !tbaa !553
  %cmp30 = icmp ne ptr null, %25, !dbg !562
  br i1 %cmp30, label %land.lhs.true31, label %if.else106, !dbg !563

land.lhs.true31:                                  ; preds = %if.then26
  %26 = load ptr, ptr %layout, align 8, !dbg !564, !tbaa !247
  %dim_size32 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %26, i32 0, i32 1, !dbg !565
  %27 = load ptr, ptr %dim_size32, align 8, !dbg !565, !tbaa !558
  %cmp33 = icmp ne ptr null, %27, !dbg !566
  br i1 %cmp33, label %if.then34, label %if.else106, !dbg !567

if.then34:                                        ; preds = %land.lhs.true31
  %28 = load ptr, ptr %layout, align 8, !dbg !568, !tbaa !247
  %num_dims = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %28, i32 0, i32 2, !dbg !570
  store i32 5, ptr %num_dims, align 8, !dbg !571, !tbaa !572
  %29 = load ptr, ptr %layout, align 8, !dbg !573, !tbaa !247
  %dim_type35 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %29, i32 0, i32 0, !dbg !574
  %30 = load ptr, ptr %dim_type35, align 8, !dbg !574, !tbaa !553
  %arrayidx = getelementptr inbounds i32, ptr %30, i64 0, !dbg !573
  store i32 3, ptr %arrayidx, align 4, !dbg !575, !tbaa !324
  %31 = load ptr, ptr %layout, align 8, !dbg !576, !tbaa !247
  %dim_type36 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %31, i32 0, i32 0, !dbg !577
  %32 = load ptr, ptr %dim_type36, align 8, !dbg !577, !tbaa !553
  %arrayidx37 = getelementptr inbounds i32, ptr %32, i64 1, !dbg !576
  store i32 2, ptr %arrayidx37, align 4, !dbg !578, !tbaa !324
  %33 = load ptr, ptr %layout, align 8, !dbg !579, !tbaa !247
  %dim_type38 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %33, i32 0, i32 0, !dbg !580
  %34 = load ptr, ptr %dim_type38, align 8, !dbg !580, !tbaa !553
  %arrayidx39 = getelementptr inbounds i32, ptr %34, i64 2, !dbg !579
  store i32 1, ptr %arrayidx39, align 4, !dbg !581, !tbaa !324
  %35 = load ptr, ptr %layout, align 8, !dbg !582, !tbaa !247
  %dim_type40 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %35, i32 0, i32 0, !dbg !583
  %36 = load ptr, ptr %dim_type40, align 8, !dbg !583, !tbaa !553
  %arrayidx41 = getelementptr inbounds i32, ptr %36, i64 3, !dbg !582
  store i32 3, ptr %arrayidx41, align 4, !dbg !584, !tbaa !324
  %37 = load ptr, ptr %layout, align 8, !dbg !585, !tbaa !247
  %dim_type42 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %37, i32 0, i32 0, !dbg !586
  %38 = load ptr, ptr %dim_type42, align 8, !dbg !586, !tbaa !553
  %arrayidx43 = getelementptr inbounds i32, ptr %38, i64 4, !dbg !585
  store i32 0, ptr %arrayidx43, align 4, !dbg !587, !tbaa !324
  %39 = load i32, ptr %type.addr, align 4, !dbg !588, !tbaa !324
  %cmp44 = icmp eq i32 %39, 0, !dbg !590
  br i1 %cmp44, label %if.then53, label %lor.lhs.false45, !dbg !591

lor.lhs.false45:                                  ; preds = %if.then34
  %40 = load i32, ptr %type.addr, align 4, !dbg !592, !tbaa !324
  %cmp46 = icmp eq i32 %40, 3, !dbg !593
  br i1 %cmp46, label %if.then53, label %lor.lhs.false47, !dbg !594

lor.lhs.false47:                                  ; preds = %lor.lhs.false45
  %41 = load i32, ptr %type.addr, align 4, !dbg !595, !tbaa !324
  %cmp48 = icmp eq i32 %41, 7, !dbg !596
  br i1 %cmp48, label %if.then53, label %lor.lhs.false49, !dbg !597

lor.lhs.false49:                                  ; preds = %lor.lhs.false47
  %42 = load i32, ptr %type.addr, align 4, !dbg !598, !tbaa !324
  %cmp50 = icmp eq i32 %42, 1, !dbg !599
  br i1 %cmp50, label %if.then53, label %lor.lhs.false51, !dbg !600

lor.lhs.false51:                                  ; preds = %lor.lhs.false49
  %43 = load i32, ptr %type.addr, align 4, !dbg !601, !tbaa !324
  %cmp52 = icmp eq i32 %43, 4, !dbg !602
  br i1 %cmp52, label %if.then53, label %if.else, !dbg !603

if.then53:                                        ; preds = %lor.lhs.false51, %lor.lhs.false49, %lor.lhs.false47, %lor.lhs.false45, %if.then34
  %44 = load ptr, ptr %handle.addr, align 8, !dbg !604, !tbaa !247
  %ifmblock = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %44, i32 0, i32 16, !dbg !606
  %45 = load i32, ptr %ifmblock, align 8, !dbg !606, !tbaa !354
  %46 = load ptr, ptr %layout, align 8, !dbg !607, !tbaa !247
  %dim_size54 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %46, i32 0, i32 1, !dbg !608
  %47 = load ptr, ptr %dim_size54, align 8, !dbg !608, !tbaa !558
  %arrayidx55 = getelementptr inbounds i32, ptr %47, i64 0, !dbg !607
  store i32 %45, ptr %arrayidx55, align 4, !dbg !609, !tbaa !258
  %48 = load ptr, ptr %handle.addr, align 8, !dbg !610, !tbaa !247
  %desc56 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %48, i32 0, i32 0, !dbg !611
  %W = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc56, i32 0, i32 4, !dbg !612
  %49 = load i32, ptr %W, align 8, !dbg !612, !tbaa !613
  %50 = load ptr, ptr %handle.addr, align 8, !dbg !614, !tbaa !247
  %desc57 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %50, i32 0, i32 0, !dbg !615
  %pad_w_in = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc57, i32 0, i32 8, !dbg !616
  %51 = load i32, ptr %pad_w_in, align 8, !dbg !616, !tbaa !617
  %mul = mul nsw i32 2, %51, !dbg !618
  %add = add nsw i32 %49, %mul, !dbg !619
  %52 = load ptr, ptr %layout, align 8, !dbg !620, !tbaa !247
  %dim_size58 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %52, i32 0, i32 1, !dbg !621
  %53 = load ptr, ptr %dim_size58, align 8, !dbg !621, !tbaa !558
  %arrayidx59 = getelementptr inbounds i32, ptr %53, i64 1, !dbg !620
  store i32 %add, ptr %arrayidx59, align 4, !dbg !622, !tbaa !258
  %54 = load ptr, ptr %handle.addr, align 8, !dbg !623, !tbaa !247
  %desc60 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %54, i32 0, i32 0, !dbg !624
  %H = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc60, i32 0, i32 3, !dbg !625
  %55 = load i32, ptr %H, align 4, !dbg !625, !tbaa !626
  %56 = load ptr, ptr %handle.addr, align 8, !dbg !627, !tbaa !247
  %desc61 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %56, i32 0, i32 0, !dbg !628
  %pad_h_in = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc61, i32 0, i32 7, !dbg !629
  %57 = load i32, ptr %pad_h_in, align 4, !dbg !629, !tbaa !630
  %mul62 = mul nsw i32 2, %57, !dbg !631
  %add63 = add nsw i32 %55, %mul62, !dbg !632
  %58 = load ptr, ptr %layout, align 8, !dbg !633, !tbaa !247
  %dim_size64 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %58, i32 0, i32 1, !dbg !634
  %59 = load ptr, ptr %dim_size64, align 8, !dbg !634, !tbaa !558
  %arrayidx65 = getelementptr inbounds i32, ptr %59, i64 2, !dbg !633
  store i32 %add63, ptr %arrayidx65, align 4, !dbg !635, !tbaa !258
  %60 = load ptr, ptr %handle.addr, align 8, !dbg !636, !tbaa !247
  %blocksifm = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %60, i32 0, i32 18, !dbg !637
  %61 = load i32, ptr %blocksifm, align 8, !dbg !637, !tbaa !359
  %62 = load ptr, ptr %layout, align 8, !dbg !638, !tbaa !247
  %dim_size66 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %62, i32 0, i32 1, !dbg !639
  %63 = load ptr, ptr %dim_size66, align 8, !dbg !639, !tbaa !558
  %arrayidx67 = getelementptr inbounds i32, ptr %63, i64 3, !dbg !638
  store i32 %61, ptr %arrayidx67, align 4, !dbg !640, !tbaa !258
  %64 = load ptr, ptr %handle.addr, align 8, !dbg !641, !tbaa !247
  %desc68 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %64, i32 0, i32 0, !dbg !642
  %partN = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc68, i32 0, i32 0, !dbg !643
  %65 = load i32, ptr %partN, align 8, !dbg !643, !tbaa !387
  %66 = load ptr, ptr %layout, align 8, !dbg !644, !tbaa !247
  %dim_size69 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %66, i32 0, i32 1, !dbg !645
  %67 = load ptr, ptr %dim_size69, align 8, !dbg !645, !tbaa !558
  %arrayidx70 = getelementptr inbounds i32, ptr %67, i64 4, !dbg !644
  store i32 %65, ptr %arrayidx70, align 4, !dbg !646, !tbaa !258
  br label %if.end105, !dbg !647

if.else:                                          ; preds = %lor.lhs.false51
  %68 = load i32, ptr %type.addr, align 4, !dbg !648, !tbaa !324
  %cmp71 = icmp eq i32 %68, 5, !dbg !650
  br i1 %cmp71, label %if.then76, label %lor.lhs.false72, !dbg !651

lor.lhs.false72:                                  ; preds = %if.else
  %69 = load i32, ptr %type.addr, align 4, !dbg !652, !tbaa !324
  %cmp73 = icmp eq i32 %69, 6, !dbg !653
  br i1 %cmp73, label %if.then76, label %lor.lhs.false74, !dbg !654

lor.lhs.false74:                                  ; preds = %lor.lhs.false72
  %70 = load i32, ptr %type.addr, align 4, !dbg !655, !tbaa !324
  %cmp75 = icmp eq i32 %70, 8, !dbg !656
  br i1 %cmp75, label %if.then76, label %if.else102, !dbg !657

if.then76:                                        ; preds = %lor.lhs.false74, %lor.lhs.false72, %if.else
  %71 = load ptr, ptr %handle.addr, align 8, !dbg !658, !tbaa !247
  %ofmblock = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %71, i32 0, i32 17, !dbg !660
  %72 = load i32, ptr %ofmblock, align 4, !dbg !660, !tbaa !365
  %73 = load ptr, ptr %layout, align 8, !dbg !661, !tbaa !247
  %dim_size77 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %73, i32 0, i32 1, !dbg !662
  %74 = load ptr, ptr %dim_size77, align 8, !dbg !662, !tbaa !558
  %arrayidx78 = getelementptr inbounds i32, ptr %74, i64 0, !dbg !661
  store i32 %72, ptr %arrayidx78, align 4, !dbg !663, !tbaa !258
  %75 = load ptr, ptr %handle.addr, align 8, !dbg !664, !tbaa !247
  %desc79 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %75, i32 0, i32 0, !dbg !665
  %W80 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc79, i32 0, i32 4, !dbg !666
  %76 = load i32, ptr %W80, align 8, !dbg !666, !tbaa !613
  %77 = load ptr, ptr %handle.addr, align 8, !dbg !667, !tbaa !247
  %desc81 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %77, i32 0, i32 0, !dbg !668
  %v = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc81, i32 0, i32 6, !dbg !669
  %78 = load i32, ptr %v, align 8, !dbg !669, !tbaa !670
  %div = sdiv i32 %76, %78, !dbg !671
  %79 = load ptr, ptr %handle.addr, align 8, !dbg !672, !tbaa !247
  %desc82 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %79, i32 0, i32 0, !dbg !673
  %pad_w_out = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc82, i32 0, i32 10, !dbg !674
  %80 = load i32, ptr %pad_w_out, align 8, !dbg !674, !tbaa !675
  %mul83 = mul nsw i32 2, %80, !dbg !676
  %add84 = add nsw i32 %div, %mul83, !dbg !677
  %81 = load ptr, ptr %layout, align 8, !dbg !678, !tbaa !247
  %dim_size85 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %81, i32 0, i32 1, !dbg !679
  %82 = load ptr, ptr %dim_size85, align 8, !dbg !679, !tbaa !558
  %arrayidx86 = getelementptr inbounds i32, ptr %82, i64 1, !dbg !678
  store i32 %add84, ptr %arrayidx86, align 4, !dbg !680, !tbaa !258
  %83 = load ptr, ptr %handle.addr, align 8, !dbg !681, !tbaa !247
  %desc87 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %83, i32 0, i32 0, !dbg !682
  %H88 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc87, i32 0, i32 3, !dbg !683
  %84 = load i32, ptr %H88, align 4, !dbg !683, !tbaa !626
  %85 = load ptr, ptr %handle.addr, align 8, !dbg !684, !tbaa !247
  %desc89 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %85, i32 0, i32 0, !dbg !685
  %u = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc89, i32 0, i32 5, !dbg !686
  %86 = load i32, ptr %u, align 4, !dbg !686, !tbaa !687
  %div90 = sdiv i32 %84, %86, !dbg !688
  %87 = load ptr, ptr %handle.addr, align 8, !dbg !689, !tbaa !247
  %desc91 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %87, i32 0, i32 0, !dbg !690
  %pad_h_out = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc91, i32 0, i32 9, !dbg !691
  %88 = load i32, ptr %pad_h_out, align 4, !dbg !691, !tbaa !692
  %mul92 = mul nsw i32 2, %88, !dbg !693
  %add93 = add nsw i32 %div90, %mul92, !dbg !694
  %89 = load ptr, ptr %layout, align 8, !dbg !695, !tbaa !247
  %dim_size94 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %89, i32 0, i32 1, !dbg !696
  %90 = load ptr, ptr %dim_size94, align 8, !dbg !696, !tbaa !558
  %arrayidx95 = getelementptr inbounds i32, ptr %90, i64 2, !dbg !695
  store i32 %add93, ptr %arrayidx95, align 4, !dbg !697, !tbaa !258
  %91 = load ptr, ptr %handle.addr, align 8, !dbg !698, !tbaa !247
  %blocksofm = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %91, i32 0, i32 19, !dbg !699
  %92 = load i32, ptr %blocksofm, align 4, !dbg !699, !tbaa !370
  %93 = load ptr, ptr %layout, align 8, !dbg !700, !tbaa !247
  %dim_size96 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %93, i32 0, i32 1, !dbg !701
  %94 = load ptr, ptr %dim_size96, align 8, !dbg !701, !tbaa !558
  %arrayidx97 = getelementptr inbounds i32, ptr %94, i64 3, !dbg !700
  store i32 %92, ptr %arrayidx97, align 4, !dbg !702, !tbaa !258
  %95 = load ptr, ptr %handle.addr, align 8, !dbg !703, !tbaa !247
  %desc98 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %95, i32 0, i32 0, !dbg !704
  %partN99 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc98, i32 0, i32 0, !dbg !705
  %96 = load i32, ptr %partN99, align 8, !dbg !705, !tbaa !387
  %97 = load ptr, ptr %layout, align 8, !dbg !706, !tbaa !247
  %dim_size100 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %97, i32 0, i32 1, !dbg !707
  %98 = load ptr, ptr %dim_size100, align 8, !dbg !707, !tbaa !558
  %arrayidx101 = getelementptr inbounds i32, ptr %98, i64 4, !dbg !706
  store i32 %96, ptr %arrayidx101, align 4, !dbg !708, !tbaa !258
  br label %if.end, !dbg !709

if.else102:                                       ; preds = %lor.lhs.false74
  %99 = load ptr, ptr %layout, align 8, !dbg !710, !tbaa !247
  %dim_type103 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %99, i32 0, i32 0, !dbg !712
  %100 = load ptr, ptr %dim_type103, align 8, !dbg !712, !tbaa !553
  call void @free(ptr noundef %100) #8, !dbg !713
  %101 = load ptr, ptr %layout, align 8, !dbg !714, !tbaa !247
  %dim_size104 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %101, i32 0, i32 1, !dbg !715
  %102 = load ptr, ptr %dim_size104, align 8, !dbg !715, !tbaa !558
  call void @free(ptr noundef %102) #8, !dbg !716
  %103 = load ptr, ptr %layout, align 8, !dbg !717, !tbaa !247
  call void @free(ptr noundef %103) #8, !dbg !718
  store ptr null, ptr %layout, align 8, !dbg !719, !tbaa !247
  %104 = load ptr, ptr %status.addr, align 8, !dbg !720, !tbaa !247
  store i32 100021, ptr %104, align 4, !dbg !721, !tbaa !258
  br label %if.end

if.end:                                           ; preds = %if.else102, %if.then76
  br label %if.end105

if.end105:                                        ; preds = %if.end, %if.then53
  br label %if.end107, !dbg !722

if.else106:                                       ; preds = %land.lhs.true31, %if.then26
  %105 = load ptr, ptr %layout, align 8, !dbg !723, !tbaa !247
  call void @free(ptr noundef %105) #8, !dbg !725
  store ptr null, ptr %layout, align 8, !dbg !726, !tbaa !247
  %106 = load ptr, ptr %status.addr, align 8, !dbg !727, !tbaa !247
  store i32 100028, ptr %106, align 4, !dbg !728, !tbaa !258
  br label %if.end107

if.end107:                                        ; preds = %if.else106, %if.end105
  br label %if.end223, !dbg !729

if.else108:                                       ; preds = %land.lhs.true, %if.then21
  %107 = load ptr, ptr %handle.addr, align 8, !dbg !730, !tbaa !247
  %desc109 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %107, i32 0, i32 0, !dbg !732
  %datatype_in110 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc109, i32 0, i32 12, !dbg !733
  %108 = load i32, ptr %datatype_in110, align 8, !dbg !733, !tbaa !341
  %cmp111 = icmp eq i32 %108, 2, !dbg !734
  br i1 %cmp111, label %land.lhs.true112, label %if.else221, !dbg !735

land.lhs.true112:                                 ; preds = %if.else108
  %109 = load ptr, ptr %handle.addr, align 8, !dbg !736, !tbaa !247
  %desc113 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %109, i32 0, i32 0, !dbg !737
  %datatype_out114 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc113, i32 0, i32 13, !dbg !738
  %110 = load i32, ptr %datatype_out114, align 4, !dbg !738, !tbaa !345
  %cmp115 = icmp eq i32 %110, 2, !dbg !739
  br i1 %cmp115, label %if.then116, label %if.else221, !dbg !740

if.then116:                                       ; preds = %land.lhs.true112
  %111 = load ptr, ptr %layout, align 8, !dbg !741, !tbaa !247
  %datatype117 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %111, i32 0, i32 4, !dbg !743
  store i32 2, ptr %datatype117, align 8, !dbg !744, !tbaa !548
  %call118 = call noalias ptr @malloc(i64 noundef 20) #9, !dbg !745
  %112 = load ptr, ptr %layout, align 8, !dbg !746, !tbaa !247
  %dim_type119 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %112, i32 0, i32 0, !dbg !747
  store ptr %call118, ptr %dim_type119, align 8, !dbg !748, !tbaa !553
  %call120 = call noalias ptr @malloc(i64 noundef 20) #9, !dbg !749
  %113 = load ptr, ptr %layout, align 8, !dbg !750, !tbaa !247
  %dim_size121 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %113, i32 0, i32 1, !dbg !751
  store ptr %call120, ptr %dim_size121, align 8, !dbg !752, !tbaa !558
  %114 = load ptr, ptr %layout, align 8, !dbg !753, !tbaa !247
  %dim_type122 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %114, i32 0, i32 0, !dbg !755
  %115 = load ptr, ptr %dim_type122, align 8, !dbg !755, !tbaa !553
  %cmp123 = icmp ne ptr null, %115, !dbg !756
  br i1 %cmp123, label %land.lhs.true124, label %if.else219, !dbg !757

land.lhs.true124:                                 ; preds = %if.then116
  %116 = load ptr, ptr %layout, align 8, !dbg !758, !tbaa !247
  %dim_size125 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %116, i32 0, i32 1, !dbg !759
  %117 = load ptr, ptr %dim_size125, align 8, !dbg !759, !tbaa !558
  %cmp126 = icmp ne ptr null, %117, !dbg !760
  br i1 %cmp126, label %if.then127, label %if.else219, !dbg !761

if.then127:                                       ; preds = %land.lhs.true124
  %118 = load ptr, ptr %layout, align 8, !dbg !762, !tbaa !247
  %num_dims128 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %118, i32 0, i32 2, !dbg !764
  store i32 5, ptr %num_dims128, align 8, !dbg !765, !tbaa !572
  %119 = load ptr, ptr %layout, align 8, !dbg !766, !tbaa !247
  %dim_type129 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %119, i32 0, i32 0, !dbg !767
  %120 = load ptr, ptr %dim_type129, align 8, !dbg !767, !tbaa !553
  %arrayidx130 = getelementptr inbounds i32, ptr %120, i64 0, !dbg !766
  store i32 3, ptr %arrayidx130, align 4, !dbg !768, !tbaa !324
  %121 = load ptr, ptr %layout, align 8, !dbg !769, !tbaa !247
  %dim_type131 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %121, i32 0, i32 0, !dbg !770
  %122 = load ptr, ptr %dim_type131, align 8, !dbg !770, !tbaa !553
  %arrayidx132 = getelementptr inbounds i32, ptr %122, i64 1, !dbg !769
  store i32 2, ptr %arrayidx132, align 4, !dbg !771, !tbaa !324
  %123 = load ptr, ptr %layout, align 8, !dbg !772, !tbaa !247
  %dim_type133 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %123, i32 0, i32 0, !dbg !773
  %124 = load ptr, ptr %dim_type133, align 8, !dbg !773, !tbaa !553
  %arrayidx134 = getelementptr inbounds i32, ptr %124, i64 2, !dbg !772
  store i32 1, ptr %arrayidx134, align 4, !dbg !774, !tbaa !324
  %125 = load ptr, ptr %layout, align 8, !dbg !775, !tbaa !247
  %dim_type135 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %125, i32 0, i32 0, !dbg !776
  %126 = load ptr, ptr %dim_type135, align 8, !dbg !776, !tbaa !553
  %arrayidx136 = getelementptr inbounds i32, ptr %126, i64 3, !dbg !775
  store i32 3, ptr %arrayidx136, align 4, !dbg !777, !tbaa !324
  %127 = load ptr, ptr %layout, align 8, !dbg !778, !tbaa !247
  %dim_type137 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %127, i32 0, i32 0, !dbg !779
  %128 = load ptr, ptr %dim_type137, align 8, !dbg !779, !tbaa !553
  %arrayidx138 = getelementptr inbounds i32, ptr %128, i64 4, !dbg !778
  store i32 0, ptr %arrayidx138, align 4, !dbg !780, !tbaa !324
  %129 = load i32, ptr %type.addr, align 4, !dbg !781, !tbaa !324
  %cmp139 = icmp eq i32 %129, 0, !dbg !783
  br i1 %cmp139, label %if.then148, label %lor.lhs.false140, !dbg !784

lor.lhs.false140:                                 ; preds = %if.then127
  %130 = load i32, ptr %type.addr, align 4, !dbg !785, !tbaa !324
  %cmp141 = icmp eq i32 %130, 3, !dbg !786
  br i1 %cmp141, label %if.then148, label %lor.lhs.false142, !dbg !787

lor.lhs.false142:                                 ; preds = %lor.lhs.false140
  %131 = load i32, ptr %type.addr, align 4, !dbg !788, !tbaa !324
  %cmp143 = icmp eq i32 %131, 7, !dbg !789
  br i1 %cmp143, label %if.then148, label %lor.lhs.false144, !dbg !790

lor.lhs.false144:                                 ; preds = %lor.lhs.false142
  %132 = load i32, ptr %type.addr, align 4, !dbg !791, !tbaa !324
  %cmp145 = icmp eq i32 %132, 1, !dbg !792
  br i1 %cmp145, label %if.then148, label %lor.lhs.false146, !dbg !793

lor.lhs.false146:                                 ; preds = %lor.lhs.false144
  %133 = load i32, ptr %type.addr, align 4, !dbg !794, !tbaa !324
  %cmp147 = icmp eq i32 %133, 4, !dbg !795
  br i1 %cmp147, label %if.then148, label %if.else175, !dbg !796

if.then148:                                       ; preds = %lor.lhs.false146, %lor.lhs.false144, %lor.lhs.false142, %lor.lhs.false140, %if.then127
  %134 = load ptr, ptr %handle.addr, align 8, !dbg !797, !tbaa !247
  %ifmblock149 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %134, i32 0, i32 16, !dbg !799
  %135 = load i32, ptr %ifmblock149, align 8, !dbg !799, !tbaa !354
  %136 = load ptr, ptr %layout, align 8, !dbg !800, !tbaa !247
  %dim_size150 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %136, i32 0, i32 1, !dbg !801
  %137 = load ptr, ptr %dim_size150, align 8, !dbg !801, !tbaa !558
  %arrayidx151 = getelementptr inbounds i32, ptr %137, i64 0, !dbg !800
  store i32 %135, ptr %arrayidx151, align 4, !dbg !802, !tbaa !258
  %138 = load ptr, ptr %handle.addr, align 8, !dbg !803, !tbaa !247
  %desc152 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %138, i32 0, i32 0, !dbg !804
  %W153 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc152, i32 0, i32 4, !dbg !805
  %139 = load i32, ptr %W153, align 8, !dbg !805, !tbaa !613
  %140 = load ptr, ptr %handle.addr, align 8, !dbg !806, !tbaa !247
  %desc154 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %140, i32 0, i32 0, !dbg !807
  %pad_w_in155 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc154, i32 0, i32 8, !dbg !808
  %141 = load i32, ptr %pad_w_in155, align 8, !dbg !808, !tbaa !617
  %mul156 = mul nsw i32 2, %141, !dbg !809
  %add157 = add nsw i32 %139, %mul156, !dbg !810
  %142 = load ptr, ptr %layout, align 8, !dbg !811, !tbaa !247
  %dim_size158 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %142, i32 0, i32 1, !dbg !812
  %143 = load ptr, ptr %dim_size158, align 8, !dbg !812, !tbaa !558
  %arrayidx159 = getelementptr inbounds i32, ptr %143, i64 1, !dbg !811
  store i32 %add157, ptr %arrayidx159, align 4, !dbg !813, !tbaa !258
  %144 = load ptr, ptr %handle.addr, align 8, !dbg !814, !tbaa !247
  %desc160 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %144, i32 0, i32 0, !dbg !815
  %H161 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc160, i32 0, i32 3, !dbg !816
  %145 = load i32, ptr %H161, align 4, !dbg !816, !tbaa !626
  %146 = load ptr, ptr %handle.addr, align 8, !dbg !817, !tbaa !247
  %desc162 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %146, i32 0, i32 0, !dbg !818
  %pad_h_in163 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc162, i32 0, i32 7, !dbg !819
  %147 = load i32, ptr %pad_h_in163, align 4, !dbg !819, !tbaa !630
  %mul164 = mul nsw i32 2, %147, !dbg !820
  %add165 = add nsw i32 %145, %mul164, !dbg !821
  %148 = load ptr, ptr %layout, align 8, !dbg !822, !tbaa !247
  %dim_size166 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %148, i32 0, i32 1, !dbg !823
  %149 = load ptr, ptr %dim_size166, align 8, !dbg !823, !tbaa !558
  %arrayidx167 = getelementptr inbounds i32, ptr %149, i64 2, !dbg !822
  store i32 %add165, ptr %arrayidx167, align 4, !dbg !824, !tbaa !258
  %150 = load ptr, ptr %handle.addr, align 8, !dbg !825, !tbaa !247
  %blocksifm168 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %150, i32 0, i32 18, !dbg !826
  %151 = load i32, ptr %blocksifm168, align 8, !dbg !826, !tbaa !359
  %152 = load ptr, ptr %layout, align 8, !dbg !827, !tbaa !247
  %dim_size169 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %152, i32 0, i32 1, !dbg !828
  %153 = load ptr, ptr %dim_size169, align 8, !dbg !828, !tbaa !558
  %arrayidx170 = getelementptr inbounds i32, ptr %153, i64 3, !dbg !827
  store i32 %151, ptr %arrayidx170, align 4, !dbg !829, !tbaa !258
  %154 = load ptr, ptr %handle.addr, align 8, !dbg !830, !tbaa !247
  %desc171 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %154, i32 0, i32 0, !dbg !831
  %partN172 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc171, i32 0, i32 0, !dbg !832
  %155 = load i32, ptr %partN172, align 8, !dbg !832, !tbaa !387
  %156 = load ptr, ptr %layout, align 8, !dbg !833, !tbaa !247
  %dim_size173 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %156, i32 0, i32 1, !dbg !834
  %157 = load ptr, ptr %dim_size173, align 8, !dbg !834, !tbaa !558
  %arrayidx174 = getelementptr inbounds i32, ptr %157, i64 4, !dbg !833
  store i32 %155, ptr %arrayidx174, align 4, !dbg !835, !tbaa !258
  br label %if.end218, !dbg !836

if.else175:                                       ; preds = %lor.lhs.false146
  %158 = load i32, ptr %type.addr, align 4, !dbg !837, !tbaa !324
  %cmp176 = icmp eq i32 %158, 5, !dbg !839
  br i1 %cmp176, label %if.then181, label %lor.lhs.false177, !dbg !840

lor.lhs.false177:                                 ; preds = %if.else175
  %159 = load i32, ptr %type.addr, align 4, !dbg !841, !tbaa !324
  %cmp178 = icmp eq i32 %159, 6, !dbg !842
  br i1 %cmp178, label %if.then181, label %lor.lhs.false179, !dbg !843

lor.lhs.false179:                                 ; preds = %lor.lhs.false177
  %160 = load i32, ptr %type.addr, align 4, !dbg !844, !tbaa !324
  %cmp180 = icmp eq i32 %160, 8, !dbg !845
  br i1 %cmp180, label %if.then181, label %if.else214, !dbg !846

if.then181:                                       ; preds = %lor.lhs.false179, %lor.lhs.false177, %if.else175
  %161 = load ptr, ptr %handle.addr, align 8, !dbg !847, !tbaa !247
  %ofmblock182 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %161, i32 0, i32 17, !dbg !849
  %162 = load i32, ptr %ofmblock182, align 4, !dbg !849, !tbaa !365
  %163 = load ptr, ptr %layout, align 8, !dbg !850, !tbaa !247
  %dim_size183 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %163, i32 0, i32 1, !dbg !851
  %164 = load ptr, ptr %dim_size183, align 8, !dbg !851, !tbaa !558
  %arrayidx184 = getelementptr inbounds i32, ptr %164, i64 0, !dbg !850
  store i32 %162, ptr %arrayidx184, align 4, !dbg !852, !tbaa !258
  %165 = load ptr, ptr %handle.addr, align 8, !dbg !853, !tbaa !247
  %desc185 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %165, i32 0, i32 0, !dbg !854
  %W186 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc185, i32 0, i32 4, !dbg !855
  %166 = load i32, ptr %W186, align 8, !dbg !855, !tbaa !613
  %167 = load ptr, ptr %handle.addr, align 8, !dbg !856, !tbaa !247
  %desc187 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %167, i32 0, i32 0, !dbg !857
  %v188 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc187, i32 0, i32 6, !dbg !858
  %168 = load i32, ptr %v188, align 8, !dbg !858, !tbaa !670
  %div189 = sdiv i32 %166, %168, !dbg !859
  %169 = load ptr, ptr %handle.addr, align 8, !dbg !860, !tbaa !247
  %desc190 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %169, i32 0, i32 0, !dbg !861
  %pad_w_out191 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc190, i32 0, i32 10, !dbg !862
  %170 = load i32, ptr %pad_w_out191, align 8, !dbg !862, !tbaa !675
  %mul192 = mul nsw i32 2, %170, !dbg !863
  %add193 = add nsw i32 %div189, %mul192, !dbg !864
  %171 = load ptr, ptr %layout, align 8, !dbg !865, !tbaa !247
  %dim_size194 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %171, i32 0, i32 1, !dbg !866
  %172 = load ptr, ptr %dim_size194, align 8, !dbg !866, !tbaa !558
  %arrayidx195 = getelementptr inbounds i32, ptr %172, i64 1, !dbg !865
  store i32 %add193, ptr %arrayidx195, align 4, !dbg !867, !tbaa !258
  %173 = load ptr, ptr %handle.addr, align 8, !dbg !868, !tbaa !247
  %desc196 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %173, i32 0, i32 0, !dbg !869
  %H197 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc196, i32 0, i32 3, !dbg !870
  %174 = load i32, ptr %H197, align 4, !dbg !870, !tbaa !626
  %175 = load ptr, ptr %handle.addr, align 8, !dbg !871, !tbaa !247
  %desc198 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %175, i32 0, i32 0, !dbg !872
  %u199 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc198, i32 0, i32 5, !dbg !873
  %176 = load i32, ptr %u199, align 4, !dbg !873, !tbaa !687
  %div200 = sdiv i32 %174, %176, !dbg !874
  %177 = load ptr, ptr %handle.addr, align 8, !dbg !875, !tbaa !247
  %desc201 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %177, i32 0, i32 0, !dbg !876
  %pad_h_out202 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc201, i32 0, i32 9, !dbg !877
  %178 = load i32, ptr %pad_h_out202, align 4, !dbg !877, !tbaa !692
  %mul203 = mul nsw i32 2, %178, !dbg !878
  %add204 = add nsw i32 %div200, %mul203, !dbg !879
  %179 = load ptr, ptr %layout, align 8, !dbg !880, !tbaa !247
  %dim_size205 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %179, i32 0, i32 1, !dbg !881
  %180 = load ptr, ptr %dim_size205, align 8, !dbg !881, !tbaa !558
  %arrayidx206 = getelementptr inbounds i32, ptr %180, i64 2, !dbg !880
  store i32 %add204, ptr %arrayidx206, align 4, !dbg !882, !tbaa !258
  %181 = load ptr, ptr %handle.addr, align 8, !dbg !883, !tbaa !247
  %blocksofm207 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %181, i32 0, i32 19, !dbg !884
  %182 = load i32, ptr %blocksofm207, align 4, !dbg !884, !tbaa !370
  %183 = load ptr, ptr %layout, align 8, !dbg !885, !tbaa !247
  %dim_size208 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %183, i32 0, i32 1, !dbg !886
  %184 = load ptr, ptr %dim_size208, align 8, !dbg !886, !tbaa !558
  %arrayidx209 = getelementptr inbounds i32, ptr %184, i64 3, !dbg !885
  store i32 %182, ptr %arrayidx209, align 4, !dbg !887, !tbaa !258
  %185 = load ptr, ptr %handle.addr, align 8, !dbg !888, !tbaa !247
  %desc210 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %185, i32 0, i32 0, !dbg !889
  %partN211 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc210, i32 0, i32 0, !dbg !890
  %186 = load i32, ptr %partN211, align 8, !dbg !890, !tbaa !387
  %187 = load ptr, ptr %layout, align 8, !dbg !891, !tbaa !247
  %dim_size212 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %187, i32 0, i32 1, !dbg !892
  %188 = load ptr, ptr %dim_size212, align 8, !dbg !892, !tbaa !558
  %arrayidx213 = getelementptr inbounds i32, ptr %188, i64 4, !dbg !891
  store i32 %186, ptr %arrayidx213, align 4, !dbg !893, !tbaa !258
  br label %if.end217, !dbg !894

if.else214:                                       ; preds = %lor.lhs.false179
  %189 = load ptr, ptr %layout, align 8, !dbg !895, !tbaa !247
  %dim_type215 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %189, i32 0, i32 0, !dbg !897
  %190 = load ptr, ptr %dim_type215, align 8, !dbg !897, !tbaa !553
  call void @free(ptr noundef %190) #8, !dbg !898
  %191 = load ptr, ptr %layout, align 8, !dbg !899, !tbaa !247
  %dim_size216 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %191, i32 0, i32 1, !dbg !900
  %192 = load ptr, ptr %dim_size216, align 8, !dbg !900, !tbaa !558
  call void @free(ptr noundef %192) #8, !dbg !901
  %193 = load ptr, ptr %layout, align 8, !dbg !902, !tbaa !247
  call void @free(ptr noundef %193) #8, !dbg !903
  store ptr null, ptr %layout, align 8, !dbg !904, !tbaa !247
  %194 = load ptr, ptr %status.addr, align 8, !dbg !905, !tbaa !247
  store i32 100021, ptr %194, align 4, !dbg !906, !tbaa !258
  br label %if.end217

if.end217:                                        ; preds = %if.else214, %if.then181
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %if.then148
  br label %if.end220, !dbg !907

if.else219:                                       ; preds = %land.lhs.true124, %if.then116
  %195 = load ptr, ptr %layout, align 8, !dbg !908, !tbaa !247
  call void @free(ptr noundef %195) #8, !dbg !910
  store ptr null, ptr %layout, align 8, !dbg !911, !tbaa !247
  %196 = load ptr, ptr %status.addr, align 8, !dbg !912, !tbaa !247
  store i32 100028, ptr %196, align 4, !dbg !913, !tbaa !258
  br label %if.end220

if.end220:                                        ; preds = %if.else219, %if.end218
  br label %if.end222, !dbg !914

if.else221:                                       ; preds = %land.lhs.true112, %if.else108
  %197 = load ptr, ptr %layout, align 8, !dbg !915, !tbaa !247
  call void @free(ptr noundef %197) #8, !dbg !917
  store ptr null, ptr %layout, align 8, !dbg !918, !tbaa !247
  %198 = load ptr, ptr %status.addr, align 8, !dbg !919, !tbaa !247
  store i32 100002, ptr %198, align 4, !dbg !920, !tbaa !258
  br label %if.end222

if.end222:                                        ; preds = %if.else221, %if.end220
  br label %if.end223

if.end223:                                        ; preds = %if.end222, %if.end107
  br label %if.end348, !dbg !921

if.else224:                                       ; preds = %if.then17
  %199 = load ptr, ptr %handle.addr, align 8, !dbg !922, !tbaa !247
  %desc225 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %199, i32 0, i32 0, !dbg !924
  %buffer_format226 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc225, i32 0, i32 15, !dbg !925
  %200 = load i32, ptr %buffer_format226, align 4, !dbg !925, !tbaa !493
  %and227 = and i32 %200, 2, !dbg !926
  %cmp228 = icmp ugt i32 %and227, 0, !dbg !927
  br i1 %cmp228, label %if.then229, label %if.else346, !dbg !928

if.then229:                                       ; preds = %if.else224
  %201 = load ptr, ptr %handle.addr, align 8, !dbg !929, !tbaa !247
  %desc230 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %201, i32 0, i32 0, !dbg !932
  %datatype_in231 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc230, i32 0, i32 12, !dbg !933
  %202 = load i32, ptr %datatype_in231, align 8, !dbg !933, !tbaa !341
  %cmp232 = icmp eq i32 %202, 1, !dbg !934
  br i1 %cmp232, label %land.lhs.true233, label %lor.lhs.false237, !dbg !935

land.lhs.true233:                                 ; preds = %if.then229
  %203 = load ptr, ptr %handle.addr, align 8, !dbg !936, !tbaa !247
  %desc234 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %203, i32 0, i32 0, !dbg !937
  %datatype_out235 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc234, i32 0, i32 13, !dbg !938
  %204 = load i32, ptr %datatype_out235, align 4, !dbg !938, !tbaa !345
  %cmp236 = icmp eq i32 %204, 1, !dbg !939
  br i1 %cmp236, label %if.then245, label %lor.lhs.false237, !dbg !940

lor.lhs.false237:                                 ; preds = %land.lhs.true233, %if.then229
  %205 = load ptr, ptr %handle.addr, align 8, !dbg !941, !tbaa !247
  %desc238 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %205, i32 0, i32 0, !dbg !942
  %datatype_in239 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc238, i32 0, i32 12, !dbg !943
  %206 = load i32, ptr %datatype_in239, align 8, !dbg !943, !tbaa !341
  %cmp240 = icmp eq i32 %206, 2, !dbg !944
  br i1 %cmp240, label %land.lhs.true241, label %if.else344, !dbg !945

land.lhs.true241:                                 ; preds = %lor.lhs.false237
  %207 = load ptr, ptr %handle.addr, align 8, !dbg !946, !tbaa !247
  %desc242 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %207, i32 0, i32 0, !dbg !947
  %datatype_out243 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc242, i32 0, i32 13, !dbg !948
  %208 = load i32, ptr %datatype_out243, align 4, !dbg !948, !tbaa !345
  %cmp244 = icmp eq i32 %208, 2, !dbg !949
  br i1 %cmp244, label %if.then245, label %if.else344, !dbg !950

if.then245:                                       ; preds = %land.lhs.true241, %land.lhs.true233
  %209 = load ptr, ptr %handle.addr, align 8, !dbg !951, !tbaa !247
  %desc246 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %209, i32 0, i32 0, !dbg !953
  %datatype_in247 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc246, i32 0, i32 12, !dbg !954
  %210 = load i32, ptr %datatype_in247, align 8, !dbg !954, !tbaa !341
  %211 = load ptr, ptr %layout, align 8, !dbg !955, !tbaa !247
  %datatype248 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %211, i32 0, i32 4, !dbg !956
  store i32 %210, ptr %datatype248, align 8, !dbg !957, !tbaa !548
  %call249 = call noalias ptr @malloc(i64 noundef 16) #9, !dbg !958
  %212 = load ptr, ptr %layout, align 8, !dbg !959, !tbaa !247
  %dim_type250 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %212, i32 0, i32 0, !dbg !960
  store ptr %call249, ptr %dim_type250, align 8, !dbg !961, !tbaa !553
  %call251 = call noalias ptr @malloc(i64 noundef 16) #9, !dbg !962
  %213 = load ptr, ptr %layout, align 8, !dbg !963, !tbaa !247
  %dim_size252 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %213, i32 0, i32 1, !dbg !964
  store ptr %call251, ptr %dim_size252, align 8, !dbg !965, !tbaa !558
  %214 = load ptr, ptr %layout, align 8, !dbg !966, !tbaa !247
  %dim_type253 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %214, i32 0, i32 0, !dbg !968
  %215 = load ptr, ptr %dim_type253, align 8, !dbg !968, !tbaa !553
  %cmp254 = icmp ne ptr null, %215, !dbg !969
  br i1 %cmp254, label %land.lhs.true255, label %if.end343, !dbg !970

land.lhs.true255:                                 ; preds = %if.then245
  %216 = load ptr, ptr %layout, align 8, !dbg !971, !tbaa !247
  %dim_size256 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %216, i32 0, i32 1, !dbg !972
  %217 = load ptr, ptr %dim_size256, align 8, !dbg !972, !tbaa !558
  %cmp257 = icmp ne ptr null, %217, !dbg !973
  br i1 %cmp257, label %if.then258, label %if.end343, !dbg !974

if.then258:                                       ; preds = %land.lhs.true255
  %218 = load ptr, ptr %layout, align 8, !dbg !975, !tbaa !247
  %num_dims259 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %218, i32 0, i32 2, !dbg !977
  store i32 4, ptr %num_dims259, align 8, !dbg !978, !tbaa !572
  %219 = load ptr, ptr %layout, align 8, !dbg !979, !tbaa !247
  %dim_type260 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %219, i32 0, i32 0, !dbg !980
  %220 = load ptr, ptr %dim_type260, align 8, !dbg !980, !tbaa !553
  %arrayidx261 = getelementptr inbounds i32, ptr %220, i64 0, !dbg !979
  store i32 3, ptr %arrayidx261, align 4, !dbg !981, !tbaa !324
  %221 = load ptr, ptr %layout, align 8, !dbg !982, !tbaa !247
  %dim_type262 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %221, i32 0, i32 0, !dbg !983
  %222 = load ptr, ptr %dim_type262, align 8, !dbg !983, !tbaa !553
  %arrayidx263 = getelementptr inbounds i32, ptr %222, i64 1, !dbg !982
  store i32 2, ptr %arrayidx263, align 4, !dbg !984, !tbaa !324
  %223 = load ptr, ptr %layout, align 8, !dbg !985, !tbaa !247
  %dim_type264 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %223, i32 0, i32 0, !dbg !986
  %224 = load ptr, ptr %dim_type264, align 8, !dbg !986, !tbaa !553
  %arrayidx265 = getelementptr inbounds i32, ptr %224, i64 2, !dbg !985
  store i32 1, ptr %arrayidx265, align 4, !dbg !987, !tbaa !324
  %225 = load ptr, ptr %layout, align 8, !dbg !988, !tbaa !247
  %dim_type266 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %225, i32 0, i32 0, !dbg !989
  %226 = load ptr, ptr %dim_type266, align 8, !dbg !989, !tbaa !553
  %arrayidx267 = getelementptr inbounds i32, ptr %226, i64 3, !dbg !988
  store i32 0, ptr %arrayidx267, align 4, !dbg !990, !tbaa !324
  %227 = load i32, ptr %type.addr, align 4, !dbg !991, !tbaa !324
  %cmp268 = icmp eq i32 %227, 0, !dbg !993
  br i1 %cmp268, label %if.then277, label %lor.lhs.false269, !dbg !994

lor.lhs.false269:                                 ; preds = %if.then258
  %228 = load i32, ptr %type.addr, align 4, !dbg !995, !tbaa !324
  %cmp270 = icmp eq i32 %228, 3, !dbg !996
  br i1 %cmp270, label %if.then277, label %lor.lhs.false271, !dbg !997

lor.lhs.false271:                                 ; preds = %lor.lhs.false269
  %229 = load i32, ptr %type.addr, align 4, !dbg !998, !tbaa !324
  %cmp272 = icmp eq i32 %229, 7, !dbg !999
  br i1 %cmp272, label %if.then277, label %lor.lhs.false273, !dbg !1000

lor.lhs.false273:                                 ; preds = %lor.lhs.false271
  %230 = load i32, ptr %type.addr, align 4, !dbg !1001, !tbaa !324
  %cmp274 = icmp eq i32 %230, 1, !dbg !1002
  br i1 %cmp274, label %if.then277, label %lor.lhs.false275, !dbg !1003

lor.lhs.false275:                                 ; preds = %lor.lhs.false273
  %231 = load i32, ptr %type.addr, align 4, !dbg !1004, !tbaa !324
  %cmp276 = icmp eq i32 %231, 4, !dbg !1005
  br i1 %cmp276, label %if.then277, label %if.else301, !dbg !1006

if.then277:                                       ; preds = %lor.lhs.false275, %lor.lhs.false273, %lor.lhs.false271, %lor.lhs.false269, %if.then258
  %232 = load ptr, ptr %handle.addr, align 8, !dbg !1007, !tbaa !247
  %desc278 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %232, i32 0, i32 0, !dbg !1009
  %C = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc278, i32 0, i32 2, !dbg !1010
  %233 = load i32, ptr %C, align 8, !dbg !1010, !tbaa !328
  %234 = load ptr, ptr %layout, align 8, !dbg !1011, !tbaa !247
  %dim_size279 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %234, i32 0, i32 1, !dbg !1012
  %235 = load ptr, ptr %dim_size279, align 8, !dbg !1012, !tbaa !558
  %arrayidx280 = getelementptr inbounds i32, ptr %235, i64 0, !dbg !1011
  store i32 %233, ptr %arrayidx280, align 4, !dbg !1013, !tbaa !258
  %236 = load ptr, ptr %handle.addr, align 8, !dbg !1014, !tbaa !247
  %desc281 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %236, i32 0, i32 0, !dbg !1015
  %W282 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc281, i32 0, i32 4, !dbg !1016
  %237 = load i32, ptr %W282, align 8, !dbg !1016, !tbaa !613
  %238 = load ptr, ptr %handle.addr, align 8, !dbg !1017, !tbaa !247
  %desc283 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %238, i32 0, i32 0, !dbg !1018
  %pad_w_in284 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc283, i32 0, i32 8, !dbg !1019
  %239 = load i32, ptr %pad_w_in284, align 8, !dbg !1019, !tbaa !617
  %mul285 = mul nsw i32 2, %239, !dbg !1020
  %add286 = add nsw i32 %237, %mul285, !dbg !1021
  %240 = load ptr, ptr %layout, align 8, !dbg !1022, !tbaa !247
  %dim_size287 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %240, i32 0, i32 1, !dbg !1023
  %241 = load ptr, ptr %dim_size287, align 8, !dbg !1023, !tbaa !558
  %arrayidx288 = getelementptr inbounds i32, ptr %241, i64 1, !dbg !1022
  store i32 %add286, ptr %arrayidx288, align 4, !dbg !1024, !tbaa !258
  %242 = load ptr, ptr %handle.addr, align 8, !dbg !1025, !tbaa !247
  %desc289 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %242, i32 0, i32 0, !dbg !1026
  %H290 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc289, i32 0, i32 3, !dbg !1027
  %243 = load i32, ptr %H290, align 4, !dbg !1027, !tbaa !626
  %244 = load ptr, ptr %handle.addr, align 8, !dbg !1028, !tbaa !247
  %desc291 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %244, i32 0, i32 0, !dbg !1029
  %pad_h_in292 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc291, i32 0, i32 7, !dbg !1030
  %245 = load i32, ptr %pad_h_in292, align 4, !dbg !1030, !tbaa !630
  %mul293 = mul nsw i32 2, %245, !dbg !1031
  %add294 = add nsw i32 %243, %mul293, !dbg !1032
  %246 = load ptr, ptr %layout, align 8, !dbg !1033, !tbaa !247
  %dim_size295 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %246, i32 0, i32 1, !dbg !1034
  %247 = load ptr, ptr %dim_size295, align 8, !dbg !1034, !tbaa !558
  %arrayidx296 = getelementptr inbounds i32, ptr %247, i64 2, !dbg !1033
  store i32 %add294, ptr %arrayidx296, align 4, !dbg !1035, !tbaa !258
  %248 = load ptr, ptr %handle.addr, align 8, !dbg !1036, !tbaa !247
  %desc297 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %248, i32 0, i32 0, !dbg !1037
  %partN298 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc297, i32 0, i32 0, !dbg !1038
  %249 = load i32, ptr %partN298, align 8, !dbg !1038, !tbaa !387
  %250 = load ptr, ptr %layout, align 8, !dbg !1039, !tbaa !247
  %dim_size299 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %250, i32 0, i32 1, !dbg !1040
  %251 = load ptr, ptr %dim_size299, align 8, !dbg !1040, !tbaa !558
  %arrayidx300 = getelementptr inbounds i32, ptr %251, i64 3, !dbg !1039
  store i32 %249, ptr %arrayidx300, align 4, !dbg !1041, !tbaa !258
  br label %if.end342, !dbg !1042

if.else301:                                       ; preds = %lor.lhs.false275
  %252 = load i32, ptr %type.addr, align 4, !dbg !1043, !tbaa !324
  %cmp302 = icmp eq i32 %252, 5, !dbg !1045
  br i1 %cmp302, label %if.then307, label %lor.lhs.false303, !dbg !1046

lor.lhs.false303:                                 ; preds = %if.else301
  %253 = load i32, ptr %type.addr, align 4, !dbg !1047, !tbaa !324
  %cmp304 = icmp eq i32 %253, 6, !dbg !1048
  br i1 %cmp304, label %if.then307, label %lor.lhs.false305, !dbg !1049

lor.lhs.false305:                                 ; preds = %lor.lhs.false303
  %254 = load i32, ptr %type.addr, align 4, !dbg !1050, !tbaa !324
  %cmp306 = icmp eq i32 %254, 8, !dbg !1051
  br i1 %cmp306, label %if.then307, label %if.else338, !dbg !1052

if.then307:                                       ; preds = %lor.lhs.false305, %lor.lhs.false303, %if.else301
  %255 = load ptr, ptr %handle.addr, align 8, !dbg !1053, !tbaa !247
  %desc308 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %255, i32 0, i32 0, !dbg !1055
  %C309 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc308, i32 0, i32 2, !dbg !1056
  %256 = load i32, ptr %C309, align 8, !dbg !1056, !tbaa !328
  %257 = load ptr, ptr %layout, align 8, !dbg !1057, !tbaa !247
  %dim_size310 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %257, i32 0, i32 1, !dbg !1058
  %258 = load ptr, ptr %dim_size310, align 8, !dbg !1058, !tbaa !558
  %arrayidx311 = getelementptr inbounds i32, ptr %258, i64 0, !dbg !1057
  store i32 %256, ptr %arrayidx311, align 4, !dbg !1059, !tbaa !258
  %259 = load ptr, ptr %handle.addr, align 8, !dbg !1060, !tbaa !247
  %desc312 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %259, i32 0, i32 0, !dbg !1061
  %W313 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc312, i32 0, i32 4, !dbg !1062
  %260 = load i32, ptr %W313, align 8, !dbg !1062, !tbaa !613
  %261 = load ptr, ptr %handle.addr, align 8, !dbg !1063, !tbaa !247
  %desc314 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %261, i32 0, i32 0, !dbg !1064
  %v315 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc314, i32 0, i32 6, !dbg !1065
  %262 = load i32, ptr %v315, align 8, !dbg !1065, !tbaa !670
  %div316 = sdiv i32 %260, %262, !dbg !1066
  %263 = load ptr, ptr %handle.addr, align 8, !dbg !1067, !tbaa !247
  %desc317 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %263, i32 0, i32 0, !dbg !1068
  %pad_w_out318 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc317, i32 0, i32 10, !dbg !1069
  %264 = load i32, ptr %pad_w_out318, align 8, !dbg !1069, !tbaa !675
  %mul319 = mul nsw i32 2, %264, !dbg !1070
  %add320 = add nsw i32 %div316, %mul319, !dbg !1071
  %265 = load ptr, ptr %layout, align 8, !dbg !1072, !tbaa !247
  %dim_size321 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %265, i32 0, i32 1, !dbg !1073
  %266 = load ptr, ptr %dim_size321, align 8, !dbg !1073, !tbaa !558
  %arrayidx322 = getelementptr inbounds i32, ptr %266, i64 1, !dbg !1072
  store i32 %add320, ptr %arrayidx322, align 4, !dbg !1074, !tbaa !258
  %267 = load ptr, ptr %handle.addr, align 8, !dbg !1075, !tbaa !247
  %desc323 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %267, i32 0, i32 0, !dbg !1076
  %H324 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc323, i32 0, i32 3, !dbg !1077
  %268 = load i32, ptr %H324, align 4, !dbg !1077, !tbaa !626
  %269 = load ptr, ptr %handle.addr, align 8, !dbg !1078, !tbaa !247
  %desc325 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %269, i32 0, i32 0, !dbg !1079
  %u326 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc325, i32 0, i32 5, !dbg !1080
  %270 = load i32, ptr %u326, align 4, !dbg !1080, !tbaa !687
  %div327 = sdiv i32 %268, %270, !dbg !1081
  %271 = load ptr, ptr %handle.addr, align 8, !dbg !1082, !tbaa !247
  %desc328 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %271, i32 0, i32 0, !dbg !1083
  %pad_h_out329 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc328, i32 0, i32 9, !dbg !1084
  %272 = load i32, ptr %pad_h_out329, align 4, !dbg !1084, !tbaa !692
  %mul330 = mul nsw i32 2, %272, !dbg !1085
  %add331 = add nsw i32 %div327, %mul330, !dbg !1086
  %273 = load ptr, ptr %layout, align 8, !dbg !1087, !tbaa !247
  %dim_size332 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %273, i32 0, i32 1, !dbg !1088
  %274 = load ptr, ptr %dim_size332, align 8, !dbg !1088, !tbaa !558
  %arrayidx333 = getelementptr inbounds i32, ptr %274, i64 2, !dbg !1087
  store i32 %add331, ptr %arrayidx333, align 4, !dbg !1089, !tbaa !258
  %275 = load ptr, ptr %handle.addr, align 8, !dbg !1090, !tbaa !247
  %desc334 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %275, i32 0, i32 0, !dbg !1091
  %partN335 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc334, i32 0, i32 0, !dbg !1092
  %276 = load i32, ptr %partN335, align 8, !dbg !1092, !tbaa !387
  %277 = load ptr, ptr %layout, align 8, !dbg !1093, !tbaa !247
  %dim_size336 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %277, i32 0, i32 1, !dbg !1094
  %278 = load ptr, ptr %dim_size336, align 8, !dbg !1094, !tbaa !558
  %arrayidx337 = getelementptr inbounds i32, ptr %278, i64 3, !dbg !1093
  store i32 %276, ptr %arrayidx337, align 4, !dbg !1095, !tbaa !258
  br label %if.end341, !dbg !1096

if.else338:                                       ; preds = %lor.lhs.false305
  %279 = load ptr, ptr %layout, align 8, !dbg !1097, !tbaa !247
  %dim_type339 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %279, i32 0, i32 0, !dbg !1099
  %280 = load ptr, ptr %dim_type339, align 8, !dbg !1099, !tbaa !553
  call void @free(ptr noundef %280) #8, !dbg !1100
  %281 = load ptr, ptr %layout, align 8, !dbg !1101, !tbaa !247
  %dim_size340 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %281, i32 0, i32 1, !dbg !1102
  %282 = load ptr, ptr %dim_size340, align 8, !dbg !1102, !tbaa !558
  call void @free(ptr noundef %282) #8, !dbg !1103
  %283 = load ptr, ptr %layout, align 8, !dbg !1104, !tbaa !247
  call void @free(ptr noundef %283) #8, !dbg !1105
  store ptr null, ptr %layout, align 8, !dbg !1106, !tbaa !247
  %284 = load ptr, ptr %status.addr, align 8, !dbg !1107, !tbaa !247
  store i32 100021, ptr %284, align 4, !dbg !1108, !tbaa !258
  br label %if.end341

if.end341:                                        ; preds = %if.else338, %if.then307
  br label %if.end342

if.end342:                                        ; preds = %if.end341, %if.then277
  br label %if.end343, !dbg !1109

if.end343:                                        ; preds = %if.end342, %land.lhs.true255, %if.then245
  br label %if.end345, !dbg !1110

if.else344:                                       ; preds = %land.lhs.true241, %lor.lhs.false237
  %285 = load ptr, ptr %layout, align 8, !dbg !1111, !tbaa !247
  call void @free(ptr noundef %285) #8, !dbg !1113
  store ptr null, ptr %layout, align 8, !dbg !1114, !tbaa !247
  %286 = load ptr, ptr %status.addr, align 8, !dbg !1115, !tbaa !247
  store i32 100002, ptr %286, align 4, !dbg !1116, !tbaa !258
  br label %if.end345

if.end345:                                        ; preds = %if.else344, %if.end343
  br label %if.end347, !dbg !1117

if.else346:                                       ; preds = %if.else224
  %287 = load ptr, ptr %layout, align 8, !dbg !1118, !tbaa !247
  call void @free(ptr noundef %287) #8, !dbg !1120
  store ptr null, ptr %layout, align 8, !dbg !1121, !tbaa !247
  %288 = load ptr, ptr %status.addr, align 8, !dbg !1122, !tbaa !247
  store i32 100016, ptr %288, align 4, !dbg !1123, !tbaa !258
  br label %if.end347

if.end347:                                        ; preds = %if.else346, %if.end345
  br label %if.end348

if.end348:                                        ; preds = %if.end347, %if.end223
  br label %if.end571, !dbg !1124

if.else349:                                       ; preds = %lor.lhs.false15
  %289 = load i32, ptr %type.addr, align 4, !dbg !1125, !tbaa !324
  %cmp350 = icmp eq i32 %289, 18, !dbg !1127
  br i1 %cmp350, label %if.then367, label %lor.lhs.false351, !dbg !1128

lor.lhs.false351:                                 ; preds = %if.else349
  %290 = load i32, ptr %type.addr, align 4, !dbg !1129, !tbaa !324
  %cmp352 = icmp eq i32 %290, 19, !dbg !1130
  br i1 %cmp352, label %if.then367, label %lor.lhs.false353, !dbg !1131

lor.lhs.false353:                                 ; preds = %lor.lhs.false351
  %291 = load i32, ptr %type.addr, align 4, !dbg !1132, !tbaa !324
  %cmp354 = icmp eq i32 %291, 20, !dbg !1133
  br i1 %cmp354, label %if.then367, label %lor.lhs.false355, !dbg !1134

lor.lhs.false355:                                 ; preds = %lor.lhs.false353
  %292 = load i32, ptr %type.addr, align 4, !dbg !1135, !tbaa !324
  %cmp356 = icmp eq i32 %292, 21, !dbg !1136
  br i1 %cmp356, label %if.then367, label %lor.lhs.false357, !dbg !1137

lor.lhs.false357:                                 ; preds = %lor.lhs.false355
  %293 = load i32, ptr %type.addr, align 4, !dbg !1138, !tbaa !324
  %cmp358 = icmp eq i32 %293, 22, !dbg !1139
  br i1 %cmp358, label %if.then367, label %lor.lhs.false359, !dbg !1140

lor.lhs.false359:                                 ; preds = %lor.lhs.false357
  %294 = load i32, ptr %type.addr, align 4, !dbg !1141, !tbaa !324
  %cmp360 = icmp eq i32 %294, 23, !dbg !1142
  br i1 %cmp360, label %if.then367, label %lor.lhs.false361, !dbg !1143

lor.lhs.false361:                                 ; preds = %lor.lhs.false359
  %295 = load i32, ptr %type.addr, align 4, !dbg !1144, !tbaa !324
  %cmp362 = icmp eq i32 %295, 24, !dbg !1145
  br i1 %cmp362, label %if.then367, label %lor.lhs.false363, !dbg !1146

lor.lhs.false363:                                 ; preds = %lor.lhs.false361
  %296 = load i32, ptr %type.addr, align 4, !dbg !1147, !tbaa !324
  %cmp364 = icmp eq i32 %296, 25, !dbg !1148
  br i1 %cmp364, label %if.then367, label %lor.lhs.false365, !dbg !1149

lor.lhs.false365:                                 ; preds = %lor.lhs.false363
  %297 = load i32, ptr %type.addr, align 4, !dbg !1150, !tbaa !324
  %cmp366 = icmp eq i32 %297, 26, !dbg !1151
  br i1 %cmp366, label %if.then367, label %if.else441, !dbg !1152

if.then367:                                       ; preds = %lor.lhs.false365, %lor.lhs.false363, %lor.lhs.false361, %lor.lhs.false359, %lor.lhs.false357, %lor.lhs.false355, %lor.lhs.false353, %lor.lhs.false351, %if.else349
  %298 = load ptr, ptr %layout, align 8, !dbg !1153, !tbaa !247
  %tensor_type = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %298, i32 0, i32 5, !dbg !1155
  store i32 27, ptr %tensor_type, align 4, !dbg !1156, !tbaa !1157
  %299 = load ptr, ptr %handle.addr, align 8, !dbg !1158, !tbaa !247
  %desc368 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %299, i32 0, i32 0, !dbg !1160
  %buffer_format369 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc368, i32 0, i32 15, !dbg !1161
  %300 = load i32, ptr %buffer_format369, align 4, !dbg !1161, !tbaa !493
  %and370 = and i32 %300, 1, !dbg !1162
  %cmp371 = icmp ugt i32 %and370, 0, !dbg !1163
  br i1 %cmp371, label %if.then372, label %if.else404, !dbg !1164

if.then372:                                       ; preds = %if.then367
  %301 = load ptr, ptr %handle.addr, align 8, !dbg !1165, !tbaa !247
  %desc373 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %301, i32 0, i32 0, !dbg !1168
  %datatype_stats = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc373, i32 0, i32 14, !dbg !1169
  %302 = load i32, ptr %datatype_stats, align 8, !dbg !1169, !tbaa !1170
  %cmp374 = icmp eq i32 %302, 1, !dbg !1171
  br i1 %cmp374, label %if.then375, label %if.else402, !dbg !1172

if.then375:                                       ; preds = %if.then372
  %303 = load ptr, ptr %handle.addr, align 8, !dbg !1173, !tbaa !247
  %desc376 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %303, i32 0, i32 0, !dbg !1175
  %datatype_stats377 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc376, i32 0, i32 14, !dbg !1176
  %304 = load i32, ptr %datatype_stats377, align 8, !dbg !1176, !tbaa !1170
  %305 = load ptr, ptr %layout, align 8, !dbg !1177, !tbaa !247
  %datatype378 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %305, i32 0, i32 4, !dbg !1178
  store i32 %304, ptr %datatype378, align 8, !dbg !1179, !tbaa !548
  %call379 = call noalias ptr @malloc(i64 noundef 8) #9, !dbg !1180
  %306 = load ptr, ptr %layout, align 8, !dbg !1181, !tbaa !247
  %dim_type380 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %306, i32 0, i32 0, !dbg !1182
  store ptr %call379, ptr %dim_type380, align 8, !dbg !1183, !tbaa !553
  %call381 = call noalias ptr @malloc(i64 noundef 8) #9, !dbg !1184
  %307 = load ptr, ptr %layout, align 8, !dbg !1185, !tbaa !247
  %dim_size382 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %307, i32 0, i32 1, !dbg !1186
  store ptr %call381, ptr %dim_size382, align 8, !dbg !1187, !tbaa !558
  %308 = load ptr, ptr %layout, align 8, !dbg !1188, !tbaa !247
  %dim_type383 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %308, i32 0, i32 0, !dbg !1190
  %309 = load ptr, ptr %dim_type383, align 8, !dbg !1190, !tbaa !553
  %cmp384 = icmp ne ptr null, %309, !dbg !1191
  br i1 %cmp384, label %land.lhs.true385, label %if.else400, !dbg !1192

land.lhs.true385:                                 ; preds = %if.then375
  %310 = load ptr, ptr %layout, align 8, !dbg !1193, !tbaa !247
  %dim_size386 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %310, i32 0, i32 1, !dbg !1194
  %311 = load ptr, ptr %dim_size386, align 8, !dbg !1194, !tbaa !558
  %cmp387 = icmp ne ptr null, %311, !dbg !1195
  br i1 %cmp387, label %if.then388, label %if.else400, !dbg !1196

if.then388:                                       ; preds = %land.lhs.true385
  %312 = load ptr, ptr %layout, align 8, !dbg !1197, !tbaa !247
  %num_dims389 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %312, i32 0, i32 2, !dbg !1199
  store i32 2, ptr %num_dims389, align 8, !dbg !1200, !tbaa !572
  %313 = load ptr, ptr %layout, align 8, !dbg !1201, !tbaa !247
  %dim_type390 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %313, i32 0, i32 0, !dbg !1202
  %314 = load ptr, ptr %dim_type390, align 8, !dbg !1202, !tbaa !553
  %arrayidx391 = getelementptr inbounds i32, ptr %314, i64 0, !dbg !1201
  store i32 3, ptr %arrayidx391, align 4, !dbg !1203, !tbaa !324
  %315 = load ptr, ptr %layout, align 8, !dbg !1204, !tbaa !247
  %dim_type392 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %315, i32 0, i32 0, !dbg !1205
  %316 = load ptr, ptr %dim_type392, align 8, !dbg !1205, !tbaa !553
  %arrayidx393 = getelementptr inbounds i32, ptr %316, i64 1, !dbg !1204
  store i32 3, ptr %arrayidx393, align 4, !dbg !1206, !tbaa !324
  %317 = load ptr, ptr %handle.addr, align 8, !dbg !1207, !tbaa !247
  %ifmblock394 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %317, i32 0, i32 16, !dbg !1208
  %318 = load i32, ptr %ifmblock394, align 8, !dbg !1208, !tbaa !354
  %319 = load ptr, ptr %layout, align 8, !dbg !1209, !tbaa !247
  %dim_size395 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %319, i32 0, i32 1, !dbg !1210
  %320 = load ptr, ptr %dim_size395, align 8, !dbg !1210, !tbaa !558
  %arrayidx396 = getelementptr inbounds i32, ptr %320, i64 0, !dbg !1209
  store i32 %318, ptr %arrayidx396, align 4, !dbg !1211, !tbaa !258
  %321 = load ptr, ptr %handle.addr, align 8, !dbg !1212, !tbaa !247
  %blocksifm397 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %321, i32 0, i32 18, !dbg !1213
  %322 = load i32, ptr %blocksifm397, align 8, !dbg !1213, !tbaa !359
  %323 = load ptr, ptr %layout, align 8, !dbg !1214, !tbaa !247
  %dim_size398 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %323, i32 0, i32 1, !dbg !1215
  %324 = load ptr, ptr %dim_size398, align 8, !dbg !1215, !tbaa !558
  %arrayidx399 = getelementptr inbounds i32, ptr %324, i64 1, !dbg !1214
  store i32 %322, ptr %arrayidx399, align 4, !dbg !1216, !tbaa !258
  br label %if.end401, !dbg !1217

if.else400:                                       ; preds = %land.lhs.true385, %if.then375
  %325 = load ptr, ptr %layout, align 8, !dbg !1218, !tbaa !247
  call void @free(ptr noundef %325) #8, !dbg !1220
  store ptr null, ptr %layout, align 8, !dbg !1221, !tbaa !247
  %326 = load ptr, ptr %status.addr, align 8, !dbg !1222, !tbaa !247
  store i32 100028, ptr %326, align 4, !dbg !1223, !tbaa !258
  br label %if.end401

if.end401:                                        ; preds = %if.else400, %if.then388
  br label %if.end403, !dbg !1224

if.else402:                                       ; preds = %if.then372
  %327 = load ptr, ptr %layout, align 8, !dbg !1225, !tbaa !247
  call void @free(ptr noundef %327) #8, !dbg !1227
  store ptr null, ptr %layout, align 8, !dbg !1228, !tbaa !247
  %328 = load ptr, ptr %status.addr, align 8, !dbg !1229, !tbaa !247
  store i32 100002, ptr %328, align 4, !dbg !1230, !tbaa !258
  br label %if.end403

if.end403:                                        ; preds = %if.else402, %if.end401
  br label %if.end440, !dbg !1231

if.else404:                                       ; preds = %if.then367
  %329 = load ptr, ptr %handle.addr, align 8, !dbg !1232, !tbaa !247
  %desc405 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %329, i32 0, i32 0, !dbg !1234
  %buffer_format406 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc405, i32 0, i32 15, !dbg !1235
  %330 = load i32, ptr %buffer_format406, align 4, !dbg !1235, !tbaa !493
  %and407 = and i32 %330, 2, !dbg !1236
  %cmp408 = icmp ugt i32 %and407, 0, !dbg !1237
  br i1 %cmp408, label %if.then409, label %if.else438, !dbg !1238

if.then409:                                       ; preds = %if.else404
  %331 = load ptr, ptr %handle.addr, align 8, !dbg !1239, !tbaa !247
  %desc410 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %331, i32 0, i32 0, !dbg !1242
  %datatype_stats411 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc410, i32 0, i32 14, !dbg !1243
  %332 = load i32, ptr %datatype_stats411, align 8, !dbg !1243, !tbaa !1170
  %cmp412 = icmp eq i32 %332, 1, !dbg !1244
  br i1 %cmp412, label %if.then413, label %if.else436, !dbg !1245

if.then413:                                       ; preds = %if.then409
  %333 = load ptr, ptr %handle.addr, align 8, !dbg !1246, !tbaa !247
  %desc414 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %333, i32 0, i32 0, !dbg !1248
  %datatype_stats415 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc414, i32 0, i32 14, !dbg !1249
  %334 = load i32, ptr %datatype_stats415, align 8, !dbg !1249, !tbaa !1170
  %335 = load ptr, ptr %layout, align 8, !dbg !1250, !tbaa !247
  %datatype416 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %335, i32 0, i32 4, !dbg !1251
  store i32 %334, ptr %datatype416, align 8, !dbg !1252, !tbaa !548
  %call417 = call noalias ptr @malloc(i64 noundef 4) #9, !dbg !1253
  %336 = load ptr, ptr %layout, align 8, !dbg !1254, !tbaa !247
  %dim_type418 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %336, i32 0, i32 0, !dbg !1255
  store ptr %call417, ptr %dim_type418, align 8, !dbg !1256, !tbaa !553
  %call419 = call noalias ptr @malloc(i64 noundef 4) #9, !dbg !1257
  %337 = load ptr, ptr %layout, align 8, !dbg !1258, !tbaa !247
  %dim_size420 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %337, i32 0, i32 1, !dbg !1259
  store ptr %call419, ptr %dim_size420, align 8, !dbg !1260, !tbaa !558
  %338 = load ptr, ptr %layout, align 8, !dbg !1261, !tbaa !247
  %dim_type421 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %338, i32 0, i32 0, !dbg !1263
  %339 = load ptr, ptr %dim_type421, align 8, !dbg !1263, !tbaa !553
  %cmp422 = icmp ne ptr null, %339, !dbg !1264
  br i1 %cmp422, label %land.lhs.true423, label %if.else434, !dbg !1265

land.lhs.true423:                                 ; preds = %if.then413
  %340 = load ptr, ptr %layout, align 8, !dbg !1266, !tbaa !247
  %dim_size424 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %340, i32 0, i32 1, !dbg !1267
  %341 = load ptr, ptr %dim_size424, align 8, !dbg !1267, !tbaa !558
  %cmp425 = icmp ne ptr null, %341, !dbg !1268
  br i1 %cmp425, label %if.then426, label %if.else434, !dbg !1269

if.then426:                                       ; preds = %land.lhs.true423
  %342 = load ptr, ptr %layout, align 8, !dbg !1270, !tbaa !247
  %num_dims427 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %342, i32 0, i32 2, !dbg !1272
  store i32 1, ptr %num_dims427, align 8, !dbg !1273, !tbaa !572
  %343 = load ptr, ptr %layout, align 8, !dbg !1274, !tbaa !247
  %dim_type428 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %343, i32 0, i32 0, !dbg !1275
  %344 = load ptr, ptr %dim_type428, align 8, !dbg !1275, !tbaa !553
  %arrayidx429 = getelementptr inbounds i32, ptr %344, i64 0, !dbg !1274
  store i32 3, ptr %arrayidx429, align 4, !dbg !1276, !tbaa !324
  %345 = load ptr, ptr %handle.addr, align 8, !dbg !1277, !tbaa !247
  %desc430 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %345, i32 0, i32 0, !dbg !1278
  %C431 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc430, i32 0, i32 2, !dbg !1279
  %346 = load i32, ptr %C431, align 8, !dbg !1279, !tbaa !328
  %347 = load ptr, ptr %layout, align 8, !dbg !1280, !tbaa !247
  %dim_size432 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %347, i32 0, i32 1, !dbg !1281
  %348 = load ptr, ptr %dim_size432, align 8, !dbg !1281, !tbaa !558
  %arrayidx433 = getelementptr inbounds i32, ptr %348, i64 0, !dbg !1280
  store i32 %346, ptr %arrayidx433, align 4, !dbg !1282, !tbaa !258
  br label %if.end435, !dbg !1283

if.else434:                                       ; preds = %land.lhs.true423, %if.then413
  %349 = load ptr, ptr %layout, align 8, !dbg !1284, !tbaa !247
  call void @free(ptr noundef %349) #8, !dbg !1286
  store ptr null, ptr %layout, align 8, !dbg !1287, !tbaa !247
  %350 = load ptr, ptr %status.addr, align 8, !dbg !1288, !tbaa !247
  store i32 100028, ptr %350, align 4, !dbg !1289, !tbaa !258
  br label %if.end435

if.end435:                                        ; preds = %if.else434, %if.then426
  br label %if.end437, !dbg !1290

if.else436:                                       ; preds = %if.then409
  %351 = load ptr, ptr %layout, align 8, !dbg !1291, !tbaa !247
  call void @free(ptr noundef %351) #8, !dbg !1293
  store ptr null, ptr %layout, align 8, !dbg !1294, !tbaa !247
  %352 = load ptr, ptr %status.addr, align 8, !dbg !1295, !tbaa !247
  store i32 100002, ptr %352, align 4, !dbg !1296, !tbaa !258
  br label %if.end437

if.end437:                                        ; preds = %if.else436, %if.end435
  br label %if.end439, !dbg !1297

if.else438:                                       ; preds = %if.else404
  %353 = load ptr, ptr %layout, align 8, !dbg !1298, !tbaa !247
  call void @free(ptr noundef %353) #8, !dbg !1300
  store ptr null, ptr %layout, align 8, !dbg !1301, !tbaa !247
  %354 = load ptr, ptr %status.addr, align 8, !dbg !1302, !tbaa !247
  store i32 100016, ptr %354, align 4, !dbg !1303, !tbaa !258
  br label %if.end439

if.end439:                                        ; preds = %if.else438, %if.end437
  br label %if.end440

if.end440:                                        ; preds = %if.end439, %if.end403
  br label %if.end570, !dbg !1304

if.else441:                                       ; preds = %lor.lhs.false365
  %355 = load i32, ptr %type.addr, align 4, !dbg !1305, !tbaa !324
  %cmp442 = icmp eq i32 %355, 34, !dbg !1307
  br i1 %cmp442, label %if.then443, label %if.else568, !dbg !1308

if.then443:                                       ; preds = %if.else441
  %356 = load ptr, ptr %layout, align 8, !dbg !1309, !tbaa !247
  %tensor_type444 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %356, i32 0, i32 5, !dbg !1311
  store i32 34, ptr %tensor_type444, align 4, !dbg !1312, !tbaa !1157
  %357 = load ptr, ptr %handle.addr, align 8, !dbg !1313, !tbaa !247
  %desc445 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %357, i32 0, i32 0, !dbg !1315
  %buffer_format446 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc445, i32 0, i32 15, !dbg !1316
  %358 = load i32, ptr %buffer_format446, align 4, !dbg !1316, !tbaa !493
  %and447 = and i32 %358, 1, !dbg !1317
  %cmp448 = icmp ugt i32 %and447, 0, !dbg !1318
  br i1 %cmp448, label %if.then449, label %if.else506, !dbg !1319

if.then449:                                       ; preds = %if.then443
  %359 = load ptr, ptr %layout, align 8, !dbg !1320, !tbaa !247
  %datatype450 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %359, i32 0, i32 4, !dbg !1322
  store i32 6, ptr %datatype450, align 8, !dbg !1323, !tbaa !548
  %call451 = call noalias ptr @malloc(i64 noundef 20) #9, !dbg !1324
  %360 = load ptr, ptr %layout, align 8, !dbg !1325, !tbaa !247
  %dim_type452 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %360, i32 0, i32 0, !dbg !1326
  store ptr %call451, ptr %dim_type452, align 8, !dbg !1327, !tbaa !553
  %call453 = call noalias ptr @malloc(i64 noundef 20) #9, !dbg !1328
  %361 = load ptr, ptr %layout, align 8, !dbg !1329, !tbaa !247
  %dim_size454 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %361, i32 0, i32 1, !dbg !1330
  store ptr %call453, ptr %dim_size454, align 8, !dbg !1331, !tbaa !558
  %362 = load ptr, ptr %layout, align 8, !dbg !1332, !tbaa !247
  %dim_type455 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %362, i32 0, i32 0, !dbg !1334
  %363 = load ptr, ptr %dim_type455, align 8, !dbg !1334, !tbaa !553
  %cmp456 = icmp ne ptr null, %363, !dbg !1335
  br i1 %cmp456, label %land.lhs.true457, label %if.else504, !dbg !1336

land.lhs.true457:                                 ; preds = %if.then449
  %364 = load ptr, ptr %layout, align 8, !dbg !1337, !tbaa !247
  %dim_size458 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %364, i32 0, i32 1, !dbg !1338
  %365 = load ptr, ptr %dim_size458, align 8, !dbg !1338, !tbaa !558
  %cmp459 = icmp ne ptr null, %365, !dbg !1339
  br i1 %cmp459, label %if.then460, label %if.else504, !dbg !1340

if.then460:                                       ; preds = %land.lhs.true457
  %366 = load ptr, ptr %layout, align 8, !dbg !1341, !tbaa !247
  %num_dims461 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %366, i32 0, i32 2, !dbg !1343
  store i32 5, ptr %num_dims461, align 8, !dbg !1344, !tbaa !572
  %367 = load ptr, ptr %layout, align 8, !dbg !1345, !tbaa !247
  %dim_type462 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %367, i32 0, i32 0, !dbg !1346
  %368 = load ptr, ptr %dim_type462, align 8, !dbg !1346, !tbaa !553
  %arrayidx463 = getelementptr inbounds i32, ptr %368, i64 0, !dbg !1345
  store i32 3, ptr %arrayidx463, align 4, !dbg !1347, !tbaa !324
  %369 = load ptr, ptr %layout, align 8, !dbg !1348, !tbaa !247
  %dim_type464 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %369, i32 0, i32 0, !dbg !1349
  %370 = load ptr, ptr %dim_type464, align 8, !dbg !1349, !tbaa !553
  %arrayidx465 = getelementptr inbounds i32, ptr %370, i64 1, !dbg !1348
  store i32 2, ptr %arrayidx465, align 4, !dbg !1350, !tbaa !324
  %371 = load ptr, ptr %layout, align 8, !dbg !1351, !tbaa !247
  %dim_type466 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %371, i32 0, i32 0, !dbg !1352
  %372 = load ptr, ptr %dim_type466, align 8, !dbg !1352, !tbaa !553
  %arrayidx467 = getelementptr inbounds i32, ptr %372, i64 2, !dbg !1351
  store i32 1, ptr %arrayidx467, align 4, !dbg !1353, !tbaa !324
  %373 = load ptr, ptr %layout, align 8, !dbg !1354, !tbaa !247
  %dim_type468 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %373, i32 0, i32 0, !dbg !1355
  %374 = load ptr, ptr %dim_type468, align 8, !dbg !1355, !tbaa !553
  %arrayidx469 = getelementptr inbounds i32, ptr %374, i64 3, !dbg !1354
  store i32 3, ptr %arrayidx469, align 4, !dbg !1356, !tbaa !324
  %375 = load ptr, ptr %layout, align 8, !dbg !1357, !tbaa !247
  %dim_type470 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %375, i32 0, i32 0, !dbg !1358
  %376 = load ptr, ptr %dim_type470, align 8, !dbg !1358, !tbaa !553
  %arrayidx471 = getelementptr inbounds i32, ptr %376, i64 4, !dbg !1357
  store i32 0, ptr %arrayidx471, align 4, !dbg !1359, !tbaa !324
  %377 = load ptr, ptr %handle.addr, align 8, !dbg !1360, !tbaa !247
  %ofmblock472 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %377, i32 0, i32 17, !dbg !1361
  %378 = load i32, ptr %ofmblock472, align 4, !dbg !1361, !tbaa !365
  %379 = load ptr, ptr %layout, align 8, !dbg !1362, !tbaa !247
  %dim_size473 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %379, i32 0, i32 1, !dbg !1363
  %380 = load ptr, ptr %dim_size473, align 8, !dbg !1363, !tbaa !558
  %arrayidx474 = getelementptr inbounds i32, ptr %380, i64 0, !dbg !1362
  store i32 %378, ptr %arrayidx474, align 4, !dbg !1364, !tbaa !258
  %381 = load ptr, ptr %handle.addr, align 8, !dbg !1365, !tbaa !247
  %desc475 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %381, i32 0, i32 0, !dbg !1366
  %W476 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc475, i32 0, i32 4, !dbg !1367
  %382 = load i32, ptr %W476, align 8, !dbg !1367, !tbaa !613
  %383 = load ptr, ptr %handle.addr, align 8, !dbg !1368, !tbaa !247
  %desc477 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %383, i32 0, i32 0, !dbg !1369
  %v478 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc477, i32 0, i32 6, !dbg !1370
  %384 = load i32, ptr %v478, align 8, !dbg !1370, !tbaa !670
  %div479 = sdiv i32 %382, %384, !dbg !1371
  %385 = load ptr, ptr %handle.addr, align 8, !dbg !1372, !tbaa !247
  %desc480 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %385, i32 0, i32 0, !dbg !1373
  %pad_w_out481 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc480, i32 0, i32 10, !dbg !1374
  %386 = load i32, ptr %pad_w_out481, align 8, !dbg !1374, !tbaa !675
  %mul482 = mul nsw i32 2, %386, !dbg !1375
  %add483 = add nsw i32 %div479, %mul482, !dbg !1376
  %387 = load ptr, ptr %layout, align 8, !dbg !1377, !tbaa !247
  %dim_size484 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %387, i32 0, i32 1, !dbg !1378
  %388 = load ptr, ptr %dim_size484, align 8, !dbg !1378, !tbaa !558
  %arrayidx485 = getelementptr inbounds i32, ptr %388, i64 1, !dbg !1377
  store i32 %add483, ptr %arrayidx485, align 4, !dbg !1379, !tbaa !258
  %389 = load ptr, ptr %handle.addr, align 8, !dbg !1380, !tbaa !247
  %desc486 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %389, i32 0, i32 0, !dbg !1381
  %H487 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc486, i32 0, i32 3, !dbg !1382
  %390 = load i32, ptr %H487, align 4, !dbg !1382, !tbaa !626
  %391 = load ptr, ptr %handle.addr, align 8, !dbg !1383, !tbaa !247
  %desc488 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %391, i32 0, i32 0, !dbg !1384
  %u489 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc488, i32 0, i32 5, !dbg !1385
  %392 = load i32, ptr %u489, align 4, !dbg !1385, !tbaa !687
  %div490 = sdiv i32 %390, %392, !dbg !1386
  %393 = load ptr, ptr %handle.addr, align 8, !dbg !1387, !tbaa !247
  %desc491 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %393, i32 0, i32 0, !dbg !1388
  %pad_h_out492 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc491, i32 0, i32 9, !dbg !1389
  %394 = load i32, ptr %pad_h_out492, align 4, !dbg !1389, !tbaa !692
  %mul493 = mul nsw i32 2, %394, !dbg !1390
  %add494 = add nsw i32 %div490, %mul493, !dbg !1391
  %395 = load ptr, ptr %layout, align 8, !dbg !1392, !tbaa !247
  %dim_size495 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %395, i32 0, i32 1, !dbg !1393
  %396 = load ptr, ptr %dim_size495, align 8, !dbg !1393, !tbaa !558
  %arrayidx496 = getelementptr inbounds i32, ptr %396, i64 2, !dbg !1392
  store i32 %add494, ptr %arrayidx496, align 4, !dbg !1394, !tbaa !258
  %397 = load ptr, ptr %handle.addr, align 8, !dbg !1395, !tbaa !247
  %blocksofm497 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %397, i32 0, i32 19, !dbg !1396
  %398 = load i32, ptr %blocksofm497, align 4, !dbg !1396, !tbaa !370
  %399 = load ptr, ptr %layout, align 8, !dbg !1397, !tbaa !247
  %dim_size498 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %399, i32 0, i32 1, !dbg !1398
  %400 = load ptr, ptr %dim_size498, align 8, !dbg !1398, !tbaa !558
  %arrayidx499 = getelementptr inbounds i32, ptr %400, i64 3, !dbg !1397
  store i32 %398, ptr %arrayidx499, align 4, !dbg !1399, !tbaa !258
  %401 = load ptr, ptr %handle.addr, align 8, !dbg !1400, !tbaa !247
  %desc500 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %401, i32 0, i32 0, !dbg !1401
  %partN501 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc500, i32 0, i32 0, !dbg !1402
  %402 = load i32, ptr %partN501, align 8, !dbg !1402, !tbaa !387
  %403 = load ptr, ptr %layout, align 8, !dbg !1403, !tbaa !247
  %dim_size502 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %403, i32 0, i32 1, !dbg !1404
  %404 = load ptr, ptr %dim_size502, align 8, !dbg !1404, !tbaa !558
  %arrayidx503 = getelementptr inbounds i32, ptr %404, i64 4, !dbg !1403
  store i32 %402, ptr %arrayidx503, align 4, !dbg !1405, !tbaa !258
  br label %if.end505, !dbg !1406

if.else504:                                       ; preds = %land.lhs.true457, %if.then449
  %405 = load ptr, ptr %layout, align 8, !dbg !1407, !tbaa !247
  call void @free(ptr noundef %405) #8, !dbg !1409
  store ptr null, ptr %layout, align 8, !dbg !1410, !tbaa !247
  %406 = load ptr, ptr %status.addr, align 8, !dbg !1411, !tbaa !247
  store i32 100028, ptr %406, align 4, !dbg !1412, !tbaa !258
  br label %if.end505

if.end505:                                        ; preds = %if.else504, %if.then460
  br label %if.end567, !dbg !1413

if.else506:                                       ; preds = %if.then443
  %407 = load ptr, ptr %handle.addr, align 8, !dbg !1414, !tbaa !247
  %desc507 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %407, i32 0, i32 0, !dbg !1416
  %buffer_format508 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc507, i32 0, i32 15, !dbg !1417
  %408 = load i32, ptr %buffer_format508, align 4, !dbg !1417, !tbaa !493
  %and509 = and i32 %408, 2, !dbg !1418
  %cmp510 = icmp ugt i32 %and509, 0, !dbg !1419
  br i1 %cmp510, label %if.then511, label %if.else565, !dbg !1420

if.then511:                                       ; preds = %if.else506
  %409 = load ptr, ptr %layout, align 8, !dbg !1421, !tbaa !247
  %datatype512 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %409, i32 0, i32 4, !dbg !1423
  store i32 6, ptr %datatype512, align 8, !dbg !1424, !tbaa !548
  %call513 = call noalias ptr @malloc(i64 noundef 16) #9, !dbg !1425
  %410 = load ptr, ptr %layout, align 8, !dbg !1426, !tbaa !247
  %dim_type514 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %410, i32 0, i32 0, !dbg !1427
  store ptr %call513, ptr %dim_type514, align 8, !dbg !1428, !tbaa !553
  %call515 = call noalias ptr @malloc(i64 noundef 16) #9, !dbg !1429
  %411 = load ptr, ptr %layout, align 8, !dbg !1430, !tbaa !247
  %dim_size516 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %411, i32 0, i32 1, !dbg !1431
  store ptr %call515, ptr %dim_size516, align 8, !dbg !1432, !tbaa !558
  %412 = load ptr, ptr %layout, align 8, !dbg !1433, !tbaa !247
  %dim_type517 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %412, i32 0, i32 0, !dbg !1435
  %413 = load ptr, ptr %dim_type517, align 8, !dbg !1435, !tbaa !553
  %cmp518 = icmp ne ptr null, %413, !dbg !1436
  br i1 %cmp518, label %land.lhs.true519, label %if.else563, !dbg !1437

land.lhs.true519:                                 ; preds = %if.then511
  %414 = load ptr, ptr %layout, align 8, !dbg !1438, !tbaa !247
  %dim_size520 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %414, i32 0, i32 1, !dbg !1439
  %415 = load ptr, ptr %dim_size520, align 8, !dbg !1439, !tbaa !558
  %cmp521 = icmp ne ptr null, %415, !dbg !1440
  br i1 %cmp521, label %if.then522, label %if.else563, !dbg !1441

if.then522:                                       ; preds = %land.lhs.true519
  %416 = load ptr, ptr %layout, align 8, !dbg !1442, !tbaa !247
  %num_dims523 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %416, i32 0, i32 2, !dbg !1444
  store i32 6, ptr %num_dims523, align 8, !dbg !1445, !tbaa !572
  %417 = load ptr, ptr %layout, align 8, !dbg !1446, !tbaa !247
  %dim_type524 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %417, i32 0, i32 0, !dbg !1447
  %418 = load ptr, ptr %dim_type524, align 8, !dbg !1447, !tbaa !553
  %arrayidx525 = getelementptr inbounds i32, ptr %418, i64 0, !dbg !1446
  store i32 3, ptr %arrayidx525, align 4, !dbg !1448, !tbaa !324
  %419 = load ptr, ptr %layout, align 8, !dbg !1449, !tbaa !247
  %dim_type526 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %419, i32 0, i32 0, !dbg !1450
  %420 = load ptr, ptr %dim_type526, align 8, !dbg !1450, !tbaa !553
  %arrayidx527 = getelementptr inbounds i32, ptr %420, i64 1, !dbg !1449
  store i32 2, ptr %arrayidx527, align 4, !dbg !1451, !tbaa !324
  %421 = load ptr, ptr %layout, align 8, !dbg !1452, !tbaa !247
  %dim_type528 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %421, i32 0, i32 0, !dbg !1453
  %422 = load ptr, ptr %dim_type528, align 8, !dbg !1453, !tbaa !553
  %arrayidx529 = getelementptr inbounds i32, ptr %422, i64 2, !dbg !1452
  store i32 1, ptr %arrayidx529, align 4, !dbg !1454, !tbaa !324
  %423 = load ptr, ptr %layout, align 8, !dbg !1455, !tbaa !247
  %dim_type530 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %423, i32 0, i32 0, !dbg !1456
  %424 = load ptr, ptr %dim_type530, align 8, !dbg !1456, !tbaa !553
  %arrayidx531 = getelementptr inbounds i32, ptr %424, i64 3, !dbg !1455
  store i32 0, ptr %arrayidx531, align 4, !dbg !1457, !tbaa !324
  %425 = load ptr, ptr %handle.addr, align 8, !dbg !1458, !tbaa !247
  %ofmblock532 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %425, i32 0, i32 17, !dbg !1459
  %426 = load i32, ptr %ofmblock532, align 4, !dbg !1459, !tbaa !365
  %427 = load ptr, ptr %handle.addr, align 8, !dbg !1460, !tbaa !247
  %blocksofm533 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %427, i32 0, i32 19, !dbg !1461
  %428 = load i32, ptr %blocksofm533, align 4, !dbg !1461, !tbaa !370
  %mul534 = mul nsw i32 %426, %428, !dbg !1462
  %429 = load ptr, ptr %layout, align 8, !dbg !1463, !tbaa !247
  %dim_size535 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %429, i32 0, i32 1, !dbg !1464
  %430 = load ptr, ptr %dim_size535, align 8, !dbg !1464, !tbaa !558
  %arrayidx536 = getelementptr inbounds i32, ptr %430, i64 0, !dbg !1463
  store i32 %mul534, ptr %arrayidx536, align 4, !dbg !1465, !tbaa !258
  %431 = load ptr, ptr %handle.addr, align 8, !dbg !1466, !tbaa !247
  %desc537 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %431, i32 0, i32 0, !dbg !1467
  %W538 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc537, i32 0, i32 4, !dbg !1468
  %432 = load i32, ptr %W538, align 8, !dbg !1468, !tbaa !613
  %433 = load ptr, ptr %handle.addr, align 8, !dbg !1469, !tbaa !247
  %desc539 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %433, i32 0, i32 0, !dbg !1470
  %v540 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc539, i32 0, i32 6, !dbg !1471
  %434 = load i32, ptr %v540, align 8, !dbg !1471, !tbaa !670
  %div541 = sdiv i32 %432, %434, !dbg !1472
  %435 = load ptr, ptr %handle.addr, align 8, !dbg !1473, !tbaa !247
  %desc542 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %435, i32 0, i32 0, !dbg !1474
  %pad_w_out543 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc542, i32 0, i32 10, !dbg !1475
  %436 = load i32, ptr %pad_w_out543, align 8, !dbg !1475, !tbaa !675
  %mul544 = mul nsw i32 2, %436, !dbg !1476
  %add545 = add nsw i32 %div541, %mul544, !dbg !1477
  %437 = load ptr, ptr %layout, align 8, !dbg !1478, !tbaa !247
  %dim_size546 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %437, i32 0, i32 1, !dbg !1479
  %438 = load ptr, ptr %dim_size546, align 8, !dbg !1479, !tbaa !558
  %arrayidx547 = getelementptr inbounds i32, ptr %438, i64 1, !dbg !1478
  store i32 %add545, ptr %arrayidx547, align 4, !dbg !1480, !tbaa !258
  %439 = load ptr, ptr %handle.addr, align 8, !dbg !1481, !tbaa !247
  %desc548 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %439, i32 0, i32 0, !dbg !1482
  %H549 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc548, i32 0, i32 3, !dbg !1483
  %440 = load i32, ptr %H549, align 4, !dbg !1483, !tbaa !626
  %441 = load ptr, ptr %handle.addr, align 8, !dbg !1484, !tbaa !247
  %desc550 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %441, i32 0, i32 0, !dbg !1485
  %u551 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc550, i32 0, i32 5, !dbg !1486
  %442 = load i32, ptr %u551, align 4, !dbg !1486, !tbaa !687
  %div552 = sdiv i32 %440, %442, !dbg !1487
  %443 = load ptr, ptr %handle.addr, align 8, !dbg !1488, !tbaa !247
  %desc553 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %443, i32 0, i32 0, !dbg !1489
  %pad_h_out554 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc553, i32 0, i32 9, !dbg !1490
  %444 = load i32, ptr %pad_h_out554, align 4, !dbg !1490, !tbaa !692
  %mul555 = mul nsw i32 2, %444, !dbg !1491
  %add556 = add nsw i32 %div552, %mul555, !dbg !1492
  %445 = load ptr, ptr %layout, align 8, !dbg !1493, !tbaa !247
  %dim_size557 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %445, i32 0, i32 1, !dbg !1494
  %446 = load ptr, ptr %dim_size557, align 8, !dbg !1494, !tbaa !558
  %arrayidx558 = getelementptr inbounds i32, ptr %446, i64 2, !dbg !1493
  store i32 %add556, ptr %arrayidx558, align 4, !dbg !1495, !tbaa !258
  %447 = load ptr, ptr %handle.addr, align 8, !dbg !1496, !tbaa !247
  %desc559 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %447, i32 0, i32 0, !dbg !1497
  %partN560 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc559, i32 0, i32 0, !dbg !1498
  %448 = load i32, ptr %partN560, align 8, !dbg !1498, !tbaa !387
  %449 = load ptr, ptr %layout, align 8, !dbg !1499, !tbaa !247
  %dim_size561 = getelementptr inbounds %struct.libxsmm_dnn_tensor_datalayout, ptr %449, i32 0, i32 1, !dbg !1500
  %450 = load ptr, ptr %dim_size561, align 8, !dbg !1500, !tbaa !558
  %arrayidx562 = getelementptr inbounds i32, ptr %450, i64 3, !dbg !1499
  store i32 %448, ptr %arrayidx562, align 4, !dbg !1501, !tbaa !258
  br label %if.end564, !dbg !1502

if.else563:                                       ; preds = %land.lhs.true519, %if.then511
  %451 = load ptr, ptr %layout, align 8, !dbg !1503, !tbaa !247
  call void @free(ptr noundef %451) #8, !dbg !1505
  store ptr null, ptr %layout, align 8, !dbg !1506, !tbaa !247
  %452 = load ptr, ptr %status.addr, align 8, !dbg !1507, !tbaa !247
  store i32 100028, ptr %452, align 4, !dbg !1508, !tbaa !258
  br label %if.end564

if.end564:                                        ; preds = %if.else563, %if.then522
  br label %if.end566, !dbg !1509

if.else565:                                       ; preds = %if.else506
  %453 = load ptr, ptr %layout, align 8, !dbg !1510, !tbaa !247
  call void @free(ptr noundef %453) #8, !dbg !1512
  store ptr null, ptr %layout, align 8, !dbg !1513, !tbaa !247
  %454 = load ptr, ptr %status.addr, align 8, !dbg !1514, !tbaa !247
  store i32 100016, ptr %454, align 4, !dbg !1515, !tbaa !258
  br label %if.end566

if.end566:                                        ; preds = %if.else565, %if.end564
  br label %if.end567

if.end567:                                        ; preds = %if.end566, %if.end505
  br label %if.end569, !dbg !1516

if.else568:                                       ; preds = %if.else441
  %455 = load ptr, ptr %layout, align 8, !dbg !1517, !tbaa !247
  call void @free(ptr noundef %455) #8, !dbg !1519
  store ptr null, ptr %layout, align 8, !dbg !1520, !tbaa !247
  %456 = load ptr, ptr %status.addr, align 8, !dbg !1521, !tbaa !247
  store i32 100021, ptr %456, align 4, !dbg !1522, !tbaa !258
  br label %if.end569

if.end569:                                        ; preds = %if.else568, %if.end567
  br label %if.end570

if.end570:                                        ; preds = %if.end569, %if.end440
  br label %if.end571

if.end571:                                        ; preds = %if.end570, %if.end348
  br label %if.end573, !dbg !1523

if.else572:                                       ; preds = %if.then
  %457 = load ptr, ptr %status.addr, align 8, !dbg !1524, !tbaa !247
  store i32 100017, ptr %457, align 4, !dbg !1526, !tbaa !258
  br label %if.end573

if.end573:                                        ; preds = %if.else572, %if.end571
  br label %if.end575, !dbg !1527

if.else574:                                       ; preds = %entry
  %458 = load ptr, ptr %status.addr, align 8, !dbg !1528, !tbaa !247
  store i32 100004, ptr %458, align 4, !dbg !1530, !tbaa !258
  br label %if.end575

if.end575:                                        ; preds = %if.else574, %if.end573
  %459 = load ptr, ptr %layout, align 8, !dbg !1531, !tbaa !247
  call void @llvm.lifetime.end.p0(i64 8, ptr %layout) #8, !dbg !1532
  ret ptr %459, !dbg !1533
}

; Function Attrs: nounwind uwtable
define i64 @libxsmm_dnn_fusedbatchnorm_get_scratch_size(ptr noundef %handle, ptr noundef %status) #0 !dbg !1534 {
entry:
  %handle.addr = alloca ptr, align 8
  %status.addr = alloca ptr, align 8
  %l_scratch_size = alloca i64, align 8
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1538, metadata !DIExpression()), !dbg !1541
  store ptr %status, ptr %status.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !1539, metadata !DIExpression()), !dbg !1542
  call void @llvm.lifetime.start.p0(i64 8, ptr %l_scratch_size) #8, !dbg !1543
  tail call void @llvm.dbg.declare(metadata ptr %l_scratch_size, metadata !1540, metadata !DIExpression()), !dbg !1544
  store i64 0, ptr %l_scratch_size, align 8, !dbg !1544, !tbaa !1545
  %0 = load ptr, ptr %status.addr, align 8, !dbg !1546, !tbaa !247
  store i32 0, ptr %0, align 4, !dbg !1547, !tbaa !258
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !1548, !tbaa !247
  %cmp = icmp ne ptr null, %1, !dbg !1550
  br i1 %cmp, label %if.then, label %if.else, !dbg !1551

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !1552, !tbaa !247
  %scratch_size = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %2, i32 0, i32 20, !dbg !1554
  %3 = load i64, ptr %scratch_size, align 8, !dbg !1554, !tbaa !392
  %add = add i64 %3, 64, !dbg !1555
  store i64 %add, ptr %l_scratch_size, align 8, !dbg !1556, !tbaa !1545
  br label %if.end, !dbg !1557

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %status.addr, align 8, !dbg !1558, !tbaa !247
  store i32 100004, ptr %4, align 4, !dbg !1560, !tbaa !258
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i64, ptr %l_scratch_size, align 8, !dbg !1561, !tbaa !1545
  call void @llvm.lifetime.end.p0(i64 8, ptr %l_scratch_size) #8, !dbg !1562
  ret i64 %5, !dbg !1563
}

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_fusedbatchnorm_bind_scratch(ptr noundef %handle, ptr noundef %scratch) #0 !dbg !1564 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %scratch.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %address = alloca i64, align 8
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1570, metadata !DIExpression()), !dbg !1575
  store ptr %scratch, ptr %scratch.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %scratch.addr, metadata !1571, metadata !DIExpression()), !dbg !1576
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !1577
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !1572, metadata !DIExpression()), !dbg !1578
  store i32 0, ptr %status, align 4, !dbg !1578, !tbaa !258
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #8, !dbg !1579
  tail call void @llvm.dbg.declare(metadata ptr %address, metadata !1573, metadata !DIExpression()), !dbg !1580
  %0 = load ptr, ptr %scratch.addr, align 8, !dbg !1581, !tbaa !247
  %1 = ptrtoint ptr %0 to i64, !dbg !1582
  store i64 %1, ptr %address, align 8, !dbg !1580, !tbaa !1545
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #8, !dbg !1583
  tail call void @llvm.dbg.declare(metadata ptr %offset, metadata !1574, metadata !DIExpression()), !dbg !1584
  store i64 0, ptr %offset, align 8, !dbg !1584, !tbaa !1545
  %2 = load ptr, ptr %scratch.addr, align 8, !dbg !1585, !tbaa !247
  %cmp = icmp eq ptr %2, null, !dbg !1587
  br i1 %cmp, label %if.then, label %if.end, !dbg !1588

if.then:                                          ; preds = %entry
  store i32 100020, ptr %status, align 4, !dbg !1589, !tbaa !258
  %3 = load i32, ptr %status, align 4, !dbg !1591, !tbaa !258
  store i32 %3, ptr %retval, align 4, !dbg !1592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1592

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %handle.addr, align 8, !dbg !1593, !tbaa !247
  %cmp1 = icmp ne ptr null, %4, !dbg !1595
  br i1 %cmp1, label %if.then2, label %if.else9, !dbg !1596

if.then2:                                         ; preds = %if.end
  %5 = load i64, ptr %address, align 8, !dbg !1597, !tbaa !1545
  %rem = urem i64 %5, 64, !dbg !1600
  %cmp3 = icmp eq i64 %rem, 0, !dbg !1601
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !1602

if.then4:                                         ; preds = %if.then2
  %6 = load i64, ptr %address, align 8, !dbg !1603, !tbaa !1545
  %7 = inttoptr i64 %6 to ptr, !dbg !1605
  %8 = load ptr, ptr %handle.addr, align 8, !dbg !1606, !tbaa !247
  %scratch5 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %8, i32 0, i32 21, !dbg !1607
  store ptr %7, ptr %scratch5, align 8, !dbg !1608, !tbaa !1609
  br label %if.end8, !dbg !1610

if.else:                                          ; preds = %if.then2
  %9 = load i64, ptr %address, align 8, !dbg !1611, !tbaa !1545
  %rem6 = urem i64 %9, 64, !dbg !1613
  %sub = sub i64 64, %rem6, !dbg !1614
  store i64 %sub, ptr %offset, align 8, !dbg !1615, !tbaa !1545
  %10 = load i64, ptr %address, align 8, !dbg !1616, !tbaa !1545
  %11 = load i64, ptr %offset, align 8, !dbg !1617, !tbaa !1545
  %add = add i64 %10, %11, !dbg !1618
  %12 = inttoptr i64 %add to ptr, !dbg !1619
  %13 = load ptr, ptr %handle.addr, align 8, !dbg !1620, !tbaa !247
  %scratch7 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %13, i32 0, i32 21, !dbg !1621
  store ptr %12, ptr %scratch7, align 8, !dbg !1622, !tbaa !1609
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  br label %if.end10, !dbg !1623

if.else9:                                         ; preds = %if.end
  store i32 100004, ptr %status, align 4, !dbg !1624, !tbaa !258
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.end8
  %14 = load i32, ptr %status, align 4, !dbg !1626, !tbaa !258
  store i32 %14, ptr %retval, align 4, !dbg !1627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1627

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #8, !dbg !1628
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #8, !dbg !1628
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !1628
  %15 = load i32, ptr %retval, align 4, !dbg !1628
  ret i32 %15, !dbg !1628
}

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_fusedbatchnorm_release_scratch(ptr noundef %handle) #0 !dbg !1629 {
entry:
  %handle.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1633, metadata !DIExpression()), !dbg !1635
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !1636
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !1634, metadata !DIExpression()), !dbg !1637
  store i32 0, ptr %status, align 4, !dbg !1637, !tbaa !258
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !1638, !tbaa !247
  %cmp = icmp ne ptr null, %0, !dbg !1640
  br i1 %cmp, label %if.then, label %if.else, !dbg !1641

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !1642, !tbaa !247
  %scratch = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %1, i32 0, i32 21, !dbg !1644
  store ptr null, ptr %scratch, align 8, !dbg !1645, !tbaa !1609
  br label %if.end, !dbg !1646

if.else:                                          ; preds = %entry
  store i32 100004, ptr %status, align 4, !dbg !1647, !tbaa !258
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %status, align 4, !dbg !1649, !tbaa !258
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !1650
  ret i32 %2, !dbg !1651
}

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_fusedbatchnorm_bind_tensor(ptr noundef %handle, ptr noundef %tensor, i32 noundef %type) #0 !dbg !1652 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %tensor.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %handle_layout = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1658, metadata !DIExpression()), !dbg !1665
  store ptr %tensor, ptr %tensor.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %tensor.addr, metadata !1659, metadata !DIExpression()), !dbg !1666
  store i32 %type, ptr %type.addr, align 4, !tbaa !324
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1660, metadata !DIExpression()), !dbg !1667
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !1668
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !1661, metadata !DIExpression()), !dbg !1669
  store i32 0, ptr %status, align 4, !dbg !1669, !tbaa !258
  %0 = load i32, ptr %type.addr, align 4, !dbg !1670, !tbaa !324
  %cmp = icmp ne i32 %0, 0, !dbg !1672
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1673

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !1674, !tbaa !324
  %cmp1 = icmp ne i32 %1, 3, !dbg !1675
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !1676

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %type.addr, align 4, !dbg !1677, !tbaa !324
  %cmp3 = icmp ne i32 %2, 5, !dbg !1678
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !1679

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, ptr %type.addr, align 4, !dbg !1680, !tbaa !324
  %cmp5 = icmp ne i32 %3, 6, !dbg !1681
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !1682

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load i32, ptr %type.addr, align 4, !dbg !1683, !tbaa !324
  %cmp7 = icmp ne i32 %4, 1, !dbg !1684
  br i1 %cmp7, label %land.lhs.true8, label %if.end, !dbg !1685

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %5 = load i32, ptr %type.addr, align 4, !dbg !1686, !tbaa !324
  %cmp9 = icmp ne i32 %5, 4, !dbg !1687
  br i1 %cmp9, label %land.lhs.true10, label %if.end, !dbg !1688

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %6 = load i32, ptr %type.addr, align 4, !dbg !1689, !tbaa !324
  %cmp11 = icmp ne i32 %6, 18, !dbg !1690
  br i1 %cmp11, label %land.lhs.true12, label %if.end, !dbg !1691

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %7 = load i32, ptr %type.addr, align 4, !dbg !1692, !tbaa !324
  %cmp13 = icmp ne i32 %7, 19, !dbg !1693
  br i1 %cmp13, label %land.lhs.true14, label %if.end, !dbg !1694

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %8 = load i32, ptr %type.addr, align 4, !dbg !1695, !tbaa !324
  %cmp15 = icmp ne i32 %8, 21, !dbg !1696
  br i1 %cmp15, label %land.lhs.true16, label %if.end, !dbg !1697

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %9 = load i32, ptr %type.addr, align 4, !dbg !1698, !tbaa !324
  %cmp17 = icmp ne i32 %9, 22, !dbg !1699
  br i1 %cmp17, label %land.lhs.true18, label %if.end, !dbg !1700

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %10 = load i32, ptr %type.addr, align 4, !dbg !1701, !tbaa !324
  %cmp19 = icmp ne i32 %10, 24, !dbg !1702
  br i1 %cmp19, label %land.lhs.true20, label %if.end, !dbg !1703

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %11 = load i32, ptr %type.addr, align 4, !dbg !1704, !tbaa !324
  %cmp21 = icmp ne i32 %11, 25, !dbg !1705
  br i1 %cmp21, label %land.lhs.true22, label %if.end, !dbg !1706

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %12 = load i32, ptr %type.addr, align 4, !dbg !1707, !tbaa !324
  %cmp23 = icmp ne i32 %12, 26, !dbg !1708
  br i1 %cmp23, label %land.lhs.true24, label %if.end, !dbg !1709

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %13 = load i32, ptr %type.addr, align 4, !dbg !1710, !tbaa !324
  %cmp25 = icmp ne i32 %13, 34, !dbg !1711
  br i1 %cmp25, label %if.then, label %if.end, !dbg !1712

if.then:                                          ; preds = %land.lhs.true24
  store i32 100021, ptr %status, align 4, !dbg !1713, !tbaa !258
  %14 = load i32, ptr %status, align 4, !dbg !1715, !tbaa !258
  store i32 %14, ptr %retval, align 4, !dbg !1716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1716

if.end:                                           ; preds = %land.lhs.true24, %land.lhs.true22, %land.lhs.true20, %land.lhs.true18, %land.lhs.true16, %land.lhs.true14, %land.lhs.true12, %land.lhs.true10, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %15 = load ptr, ptr %handle.addr, align 8, !dbg !1717, !tbaa !247
  %cmp26 = icmp ne ptr %15, null, !dbg !1718
  br i1 %cmp26, label %land.lhs.true27, label %if.else91, !dbg !1719

land.lhs.true27:                                  ; preds = %if.end
  %16 = load ptr, ptr %tensor.addr, align 8, !dbg !1720, !tbaa !247
  %cmp28 = icmp ne ptr %16, null, !dbg !1721
  br i1 %cmp28, label %if.then29, label %if.else91, !dbg !1722

if.then29:                                        ; preds = %land.lhs.true27
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle_layout) #8, !dbg !1723
  tail call void @llvm.dbg.declare(metadata ptr %handle_layout, metadata !1662, metadata !DIExpression()), !dbg !1724
  %17 = load ptr, ptr %handle.addr, align 8, !dbg !1725, !tbaa !247
  %18 = load i32, ptr %type.addr, align 4, !dbg !1726, !tbaa !324
  %call = call ptr @libxsmm_dnn_fusedbatchnorm_create_tensor_datalayout(ptr noundef %17, i32 noundef %18, ptr noundef %status), !dbg !1727
  store ptr %call, ptr %handle_layout, align 8, !dbg !1724, !tbaa !247
  %19 = load ptr, ptr %handle_layout, align 8, !dbg !1728, !tbaa !247
  %20 = load ptr, ptr %tensor.addr, align 8, !dbg !1730, !tbaa !247
  %layout = getelementptr inbounds %struct.libxsmm_dnn_tensor, ptr %20, i32 0, i32 0, !dbg !1731
  %21 = load ptr, ptr %layout, align 8, !dbg !1731, !tbaa !1732
  %call30 = call i32 @libxsmm_dnn_compare_tensor_datalayout(ptr noundef %19, ptr noundef %21, ptr noundef %status), !dbg !1734
  %cmp31 = icmp eq i32 %call30, 0, !dbg !1735
  br i1 %cmp31, label %if.then32, label %if.else88, !dbg !1736

if.then32:                                        ; preds = %if.then29
  %22 = load i32, ptr %type.addr, align 4, !dbg !1737, !tbaa !324
  %cmp33 = icmp eq i32 %22, 0, !dbg !1740
  br i1 %cmp33, label %if.then34, label %if.else, !dbg !1741

if.then34:                                        ; preds = %if.then32
  %23 = load ptr, ptr %tensor.addr, align 8, !dbg !1742, !tbaa !247
  %24 = load ptr, ptr %handle.addr, align 8, !dbg !1744, !tbaa !247
  %reg_input = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %24, i32 0, i32 1, !dbg !1745
  store ptr %23, ptr %reg_input, align 8, !dbg !1746, !tbaa !1747
  br label %if.end87, !dbg !1748

if.else:                                          ; preds = %if.then32
  %25 = load i32, ptr %type.addr, align 4, !dbg !1749, !tbaa !324
  %cmp35 = icmp eq i32 %25, 3, !dbg !1751
  br i1 %cmp35, label %if.then36, label %if.else37, !dbg !1752

if.then36:                                        ; preds = %if.else
  %26 = load ptr, ptr %tensor.addr, align 8, !dbg !1753, !tbaa !247
  %27 = load ptr, ptr %handle.addr, align 8, !dbg !1755, !tbaa !247
  %grad_input = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %27, i32 0, i32 3, !dbg !1756
  store ptr %26, ptr %grad_input, align 8, !dbg !1757, !tbaa !1758
  br label %if.end86, !dbg !1759

if.else37:                                        ; preds = %if.else
  %28 = load i32, ptr %type.addr, align 4, !dbg !1760, !tbaa !324
  %cmp38 = icmp eq i32 %28, 5, !dbg !1762
  br i1 %cmp38, label %if.then39, label %if.else40, !dbg !1763

if.then39:                                        ; preds = %if.else37
  %29 = load ptr, ptr %tensor.addr, align 8, !dbg !1764, !tbaa !247
  %30 = load ptr, ptr %handle.addr, align 8, !dbg !1766, !tbaa !247
  %reg_output = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %30, i32 0, i32 2, !dbg !1767
  store ptr %29, ptr %reg_output, align 8, !dbg !1768, !tbaa !1769
  br label %if.end85, !dbg !1770

if.else40:                                        ; preds = %if.else37
  %31 = load i32, ptr %type.addr, align 4, !dbg !1771, !tbaa !324
  %cmp41 = icmp eq i32 %31, 6, !dbg !1773
  br i1 %cmp41, label %if.then42, label %if.else43, !dbg !1774

if.then42:                                        ; preds = %if.else40
  %32 = load ptr, ptr %tensor.addr, align 8, !dbg !1775, !tbaa !247
  %33 = load ptr, ptr %handle.addr, align 8, !dbg !1777, !tbaa !247
  %grad_output = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %33, i32 0, i32 4, !dbg !1778
  store ptr %32, ptr %grad_output, align 8, !dbg !1779, !tbaa !1780
  br label %if.end84, !dbg !1781

if.else43:                                        ; preds = %if.else40
  %34 = load i32, ptr %type.addr, align 4, !dbg !1782, !tbaa !324
  %cmp44 = icmp eq i32 %34, 1, !dbg !1784
  br i1 %cmp44, label %if.then45, label %if.else46, !dbg !1785

if.then45:                                        ; preds = %if.else43
  %35 = load ptr, ptr %tensor.addr, align 8, !dbg !1786, !tbaa !247
  %36 = load ptr, ptr %handle.addr, align 8, !dbg !1788, !tbaa !247
  %reg_add = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %36, i32 0, i32 5, !dbg !1789
  store ptr %35, ptr %reg_add, align 8, !dbg !1790, !tbaa !1791
  br label %if.end83, !dbg !1792

if.else46:                                        ; preds = %if.else43
  %37 = load i32, ptr %type.addr, align 4, !dbg !1793, !tbaa !324
  %cmp47 = icmp eq i32 %37, 4, !dbg !1795
  br i1 %cmp47, label %if.then48, label %if.else49, !dbg !1796

if.then48:                                        ; preds = %if.else46
  %38 = load ptr, ptr %tensor.addr, align 8, !dbg !1797, !tbaa !247
  %39 = load ptr, ptr %handle.addr, align 8, !dbg !1799, !tbaa !247
  %grad_add = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %39, i32 0, i32 6, !dbg !1800
  store ptr %38, ptr %grad_add, align 8, !dbg !1801, !tbaa !1802
  br label %if.end82, !dbg !1803

if.else49:                                        ; preds = %if.else46
  %40 = load i32, ptr %type.addr, align 4, !dbg !1804, !tbaa !324
  %cmp50 = icmp eq i32 %40, 18, !dbg !1806
  br i1 %cmp50, label %if.then51, label %if.else52, !dbg !1807

if.then51:                                        ; preds = %if.else49
  %41 = load ptr, ptr %tensor.addr, align 8, !dbg !1808, !tbaa !247
  %42 = load ptr, ptr %handle.addr, align 8, !dbg !1810, !tbaa !247
  %reg_beta = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %42, i32 0, i32 7, !dbg !1811
  store ptr %41, ptr %reg_beta, align 8, !dbg !1812, !tbaa !1813
  br label %if.end81, !dbg !1814

if.else52:                                        ; preds = %if.else49
  %43 = load i32, ptr %type.addr, align 4, !dbg !1815, !tbaa !324
  %cmp53 = icmp eq i32 %43, 19, !dbg !1817
  br i1 %cmp53, label %if.then54, label %if.else55, !dbg !1818

if.then54:                                        ; preds = %if.else52
  %44 = load ptr, ptr %tensor.addr, align 8, !dbg !1819, !tbaa !247
  %45 = load ptr, ptr %handle.addr, align 8, !dbg !1821, !tbaa !247
  %grad_beta = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %45, i32 0, i32 9, !dbg !1822
  store ptr %44, ptr %grad_beta, align 8, !dbg !1823, !tbaa !1824
  br label %if.end80, !dbg !1825

if.else55:                                        ; preds = %if.else52
  %46 = load i32, ptr %type.addr, align 4, !dbg !1826, !tbaa !324
  %cmp56 = icmp eq i32 %46, 21, !dbg !1828
  br i1 %cmp56, label %if.then57, label %if.else58, !dbg !1829

if.then57:                                        ; preds = %if.else55
  %47 = load ptr, ptr %tensor.addr, align 8, !dbg !1830, !tbaa !247
  %48 = load ptr, ptr %handle.addr, align 8, !dbg !1832, !tbaa !247
  %reg_gamma = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %48, i32 0, i32 8, !dbg !1833
  store ptr %47, ptr %reg_gamma, align 8, !dbg !1834, !tbaa !1835
  br label %if.end79, !dbg !1836

if.else58:                                        ; preds = %if.else55
  %49 = load i32, ptr %type.addr, align 4, !dbg !1837, !tbaa !324
  %cmp59 = icmp eq i32 %49, 22, !dbg !1839
  br i1 %cmp59, label %if.then60, label %if.else61, !dbg !1840

if.then60:                                        ; preds = %if.else58
  %50 = load ptr, ptr %tensor.addr, align 8, !dbg !1841, !tbaa !247
  %51 = load ptr, ptr %handle.addr, align 8, !dbg !1843, !tbaa !247
  %grad_gamma = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %51, i32 0, i32 10, !dbg !1844
  store ptr %50, ptr %grad_gamma, align 8, !dbg !1845, !tbaa !1846
  br label %if.end78, !dbg !1847

if.else61:                                        ; preds = %if.else58
  %52 = load i32, ptr %type.addr, align 4, !dbg !1848, !tbaa !324
  %cmp62 = icmp eq i32 %52, 24, !dbg !1850
  br i1 %cmp62, label %if.then63, label %if.else64, !dbg !1851

if.then63:                                        ; preds = %if.else61
  %53 = load ptr, ptr %tensor.addr, align 8, !dbg !1852, !tbaa !247
  %54 = load ptr, ptr %handle.addr, align 8, !dbg !1854, !tbaa !247
  %expvalue = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %54, i32 0, i32 11, !dbg !1855
  store ptr %53, ptr %expvalue, align 8, !dbg !1856, !tbaa !1857
  br label %if.end77, !dbg !1858

if.else64:                                        ; preds = %if.else61
  %55 = load i32, ptr %type.addr, align 4, !dbg !1859, !tbaa !324
  %cmp65 = icmp eq i32 %55, 25, !dbg !1861
  br i1 %cmp65, label %if.then66, label %if.else67, !dbg !1862

if.then66:                                        ; preds = %if.else64
  %56 = load ptr, ptr %tensor.addr, align 8, !dbg !1863, !tbaa !247
  %57 = load ptr, ptr %handle.addr, align 8, !dbg !1865, !tbaa !247
  %rcpstddev = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %57, i32 0, i32 12, !dbg !1866
  store ptr %56, ptr %rcpstddev, align 8, !dbg !1867, !tbaa !1868
  br label %if.end76, !dbg !1869

if.else67:                                        ; preds = %if.else64
  %58 = load i32, ptr %type.addr, align 4, !dbg !1870, !tbaa !324
  %cmp68 = icmp eq i32 %58, 26, !dbg !1872
  br i1 %cmp68, label %if.then69, label %if.else70, !dbg !1873

if.then69:                                        ; preds = %if.else67
  %59 = load ptr, ptr %tensor.addr, align 8, !dbg !1874, !tbaa !247
  %60 = load ptr, ptr %handle.addr, align 8, !dbg !1876, !tbaa !247
  %variance = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %60, i32 0, i32 13, !dbg !1877
  store ptr %59, ptr %variance, align 8, !dbg !1878, !tbaa !1879
  br label %if.end75, !dbg !1880

if.else70:                                        ; preds = %if.else67
  %61 = load i32, ptr %type.addr, align 4, !dbg !1881, !tbaa !324
  %cmp71 = icmp eq i32 %61, 34, !dbg !1883
  br i1 %cmp71, label %if.then72, label %if.else73, !dbg !1884

if.then72:                                        ; preds = %if.else70
  %62 = load ptr, ptr %tensor.addr, align 8, !dbg !1885, !tbaa !247
  %63 = load ptr, ptr %handle.addr, align 8, !dbg !1887, !tbaa !247
  %relumask = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %63, i32 0, i32 14, !dbg !1888
  store ptr %62, ptr %relumask, align 8, !dbg !1889, !tbaa !1890
  br label %if.end74, !dbg !1891

if.else73:                                        ; preds = %if.else70
  br label %if.end74

if.end74:                                         ; preds = %if.else73, %if.then72
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then69
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then66
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then63
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then60
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then57
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then54
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then51
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then48
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then45
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then42
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then39
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then36
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then34
  br label %if.end89, !dbg !1892

if.else88:                                        ; preds = %if.then29
  store i32 100008, ptr %status, align 4, !dbg !1893, !tbaa !258
  br label %if.end89

if.end89:                                         ; preds = %if.else88, %if.end87
  %64 = load ptr, ptr %handle_layout, align 8, !dbg !1895, !tbaa !247
  %call90 = call i32 @libxsmm_dnn_destroy_tensor_datalayout(ptr noundef %64), !dbg !1896
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle_layout) #8, !dbg !1897
  br label %if.end92, !dbg !1898

if.else91:                                        ; preds = %land.lhs.true27, %if.end
  store i32 100009, ptr %status, align 4, !dbg !1899, !tbaa !258
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.end89
  %65 = load i32, ptr %status, align 4, !dbg !1901, !tbaa !258
  store i32 %65, ptr %retval, align 4, !dbg !1902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1902

cleanup:                                          ; preds = %if.end92, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !1903
  %66 = load i32, ptr %retval, align 4, !dbg !1903
  ret i32 %66, !dbg !1903
}

declare !dbg !1904 i32 @libxsmm_dnn_compare_tensor_datalayout(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1909 i32 @libxsmm_dnn_destroy_tensor_datalayout(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @libxsmm_dnn_fusedbatchnorm_get_tensor(ptr noundef %handle, i32 noundef %type, ptr noundef %status) #0 !dbg !1912 {
entry:
  %retval = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %status.addr = alloca ptr, align 8
  %return_tensor = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1916, metadata !DIExpression()), !dbg !1920
  store i32 %type, ptr %type.addr, align 4, !tbaa !324
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1917, metadata !DIExpression()), !dbg !1921
  store ptr %status, ptr %status.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !1918, metadata !DIExpression()), !dbg !1922
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_tensor) #8, !dbg !1923
  tail call void @llvm.dbg.declare(metadata ptr %return_tensor, metadata !1919, metadata !DIExpression()), !dbg !1924
  store ptr null, ptr %return_tensor, align 8, !dbg !1924, !tbaa !247
  %0 = load ptr, ptr %status.addr, align 8, !dbg !1925, !tbaa !247
  store i32 0, ptr %0, align 4, !dbg !1926, !tbaa !258
  %1 = load i32, ptr %type.addr, align 4, !dbg !1927, !tbaa !324
  %cmp = icmp ne i32 %1, 0, !dbg !1929
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1930

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %type.addr, align 4, !dbg !1931, !tbaa !324
  %cmp1 = icmp ne i32 %2, 3, !dbg !1932
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !1933

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %type.addr, align 4, !dbg !1934, !tbaa !324
  %cmp3 = icmp ne i32 %3, 5, !dbg !1935
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !1936

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %4 = load i32, ptr %type.addr, align 4, !dbg !1937, !tbaa !324
  %cmp5 = icmp ne i32 %4, 6, !dbg !1938
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !1939

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %5 = load i32, ptr %type.addr, align 4, !dbg !1940, !tbaa !324
  %cmp7 = icmp ne i32 %5, 1, !dbg !1941
  br i1 %cmp7, label %land.lhs.true8, label %if.end, !dbg !1942

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %6 = load i32, ptr %type.addr, align 4, !dbg !1943, !tbaa !324
  %cmp9 = icmp ne i32 %6, 4, !dbg !1944
  br i1 %cmp9, label %land.lhs.true10, label %if.end, !dbg !1945

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %7 = load i32, ptr %type.addr, align 4, !dbg !1946, !tbaa !324
  %cmp11 = icmp ne i32 %7, 18, !dbg !1947
  br i1 %cmp11, label %land.lhs.true12, label %if.end, !dbg !1948

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %8 = load i32, ptr %type.addr, align 4, !dbg !1949, !tbaa !324
  %cmp13 = icmp ne i32 %8, 19, !dbg !1950
  br i1 %cmp13, label %land.lhs.true14, label %if.end, !dbg !1951

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %9 = load i32, ptr %type.addr, align 4, !dbg !1952, !tbaa !324
  %cmp15 = icmp ne i32 %9, 21, !dbg !1953
  br i1 %cmp15, label %land.lhs.true16, label %if.end, !dbg !1954

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %10 = load i32, ptr %type.addr, align 4, !dbg !1955, !tbaa !324
  %cmp17 = icmp ne i32 %10, 22, !dbg !1956
  br i1 %cmp17, label %land.lhs.true18, label %if.end, !dbg !1957

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %11 = load i32, ptr %type.addr, align 4, !dbg !1958, !tbaa !324
  %cmp19 = icmp ne i32 %11, 24, !dbg !1959
  br i1 %cmp19, label %land.lhs.true20, label %if.end, !dbg !1960

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %12 = load i32, ptr %type.addr, align 4, !dbg !1961, !tbaa !324
  %cmp21 = icmp ne i32 %12, 25, !dbg !1962
  br i1 %cmp21, label %land.lhs.true22, label %if.end, !dbg !1963

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %13 = load i32, ptr %type.addr, align 4, !dbg !1964, !tbaa !324
  %cmp23 = icmp ne i32 %13, 26, !dbg !1965
  br i1 %cmp23, label %land.lhs.true24, label %if.end, !dbg !1966

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %14 = load i32, ptr %type.addr, align 4, !dbg !1967, !tbaa !324
  %cmp25 = icmp ne i32 %14, 34, !dbg !1968
  br i1 %cmp25, label %if.then, label %if.end, !dbg !1969

if.then:                                          ; preds = %land.lhs.true24
  %15 = load ptr, ptr %status.addr, align 8, !dbg !1970, !tbaa !247
  store i32 100021, ptr %15, align 4, !dbg !1972, !tbaa !258
  %16 = load ptr, ptr %return_tensor, align 8, !dbg !1973, !tbaa !247
  store ptr %16, ptr %retval, align 8, !dbg !1974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1974

if.end:                                           ; preds = %land.lhs.true24, %land.lhs.true22, %land.lhs.true20, %land.lhs.true18, %land.lhs.true16, %land.lhs.true14, %land.lhs.true12, %land.lhs.true10, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %17 = load ptr, ptr %handle.addr, align 8, !dbg !1975, !tbaa !247
  %cmp26 = icmp ne ptr %17, null, !dbg !1977
  br i1 %cmp26, label %if.then27, label %if.else83, !dbg !1978

if.then27:                                        ; preds = %if.end
  %18 = load i32, ptr %type.addr, align 4, !dbg !1979, !tbaa !324
  %cmp28 = icmp eq i32 %18, 0, !dbg !1982
  br i1 %cmp28, label %if.then29, label %if.else, !dbg !1983

if.then29:                                        ; preds = %if.then27
  %19 = load ptr, ptr %handle.addr, align 8, !dbg !1984, !tbaa !247
  %reg_input = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %19, i32 0, i32 1, !dbg !1986
  %20 = load ptr, ptr %reg_input, align 8, !dbg !1986, !tbaa !1747
  store ptr %20, ptr %return_tensor, align 8, !dbg !1987, !tbaa !247
  br label %if.end82, !dbg !1988

if.else:                                          ; preds = %if.then27
  %21 = load i32, ptr %type.addr, align 4, !dbg !1989, !tbaa !324
  %cmp30 = icmp eq i32 %21, 3, !dbg !1991
  br i1 %cmp30, label %if.then31, label %if.else32, !dbg !1992

if.then31:                                        ; preds = %if.else
  %22 = load ptr, ptr %handle.addr, align 8, !dbg !1993, !tbaa !247
  %grad_input = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %22, i32 0, i32 3, !dbg !1995
  %23 = load ptr, ptr %grad_input, align 8, !dbg !1995, !tbaa !1758
  store ptr %23, ptr %return_tensor, align 8, !dbg !1996, !tbaa !247
  br label %if.end81, !dbg !1997

if.else32:                                        ; preds = %if.else
  %24 = load i32, ptr %type.addr, align 4, !dbg !1998, !tbaa !324
  %cmp33 = icmp eq i32 %24, 5, !dbg !2000
  br i1 %cmp33, label %if.then34, label %if.else35, !dbg !2001

if.then34:                                        ; preds = %if.else32
  %25 = load ptr, ptr %handle.addr, align 8, !dbg !2002, !tbaa !247
  %reg_output = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %25, i32 0, i32 2, !dbg !2004
  %26 = load ptr, ptr %reg_output, align 8, !dbg !2004, !tbaa !1769
  store ptr %26, ptr %return_tensor, align 8, !dbg !2005, !tbaa !247
  br label %if.end80, !dbg !2006

if.else35:                                        ; preds = %if.else32
  %27 = load i32, ptr %type.addr, align 4, !dbg !2007, !tbaa !324
  %cmp36 = icmp eq i32 %27, 6, !dbg !2009
  br i1 %cmp36, label %if.then37, label %if.else38, !dbg !2010

if.then37:                                        ; preds = %if.else35
  %28 = load ptr, ptr %handle.addr, align 8, !dbg !2011, !tbaa !247
  %grad_output = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %28, i32 0, i32 4, !dbg !2013
  %29 = load ptr, ptr %grad_output, align 8, !dbg !2013, !tbaa !1780
  store ptr %29, ptr %return_tensor, align 8, !dbg !2014, !tbaa !247
  br label %if.end79, !dbg !2015

if.else38:                                        ; preds = %if.else35
  %30 = load i32, ptr %type.addr, align 4, !dbg !2016, !tbaa !324
  %cmp39 = icmp eq i32 %30, 1, !dbg !2018
  br i1 %cmp39, label %if.then40, label %if.else41, !dbg !2019

if.then40:                                        ; preds = %if.else38
  %31 = load ptr, ptr %handle.addr, align 8, !dbg !2020, !tbaa !247
  %reg_add = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %31, i32 0, i32 5, !dbg !2022
  %32 = load ptr, ptr %reg_add, align 8, !dbg !2022, !tbaa !1791
  store ptr %32, ptr %return_tensor, align 8, !dbg !2023, !tbaa !247
  br label %if.end78, !dbg !2024

if.else41:                                        ; preds = %if.else38
  %33 = load i32, ptr %type.addr, align 4, !dbg !2025, !tbaa !324
  %cmp42 = icmp eq i32 %33, 4, !dbg !2027
  br i1 %cmp42, label %if.then43, label %if.else44, !dbg !2028

if.then43:                                        ; preds = %if.else41
  %34 = load ptr, ptr %handle.addr, align 8, !dbg !2029, !tbaa !247
  %grad_add = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %34, i32 0, i32 6, !dbg !2031
  %35 = load ptr, ptr %grad_add, align 8, !dbg !2031, !tbaa !1802
  store ptr %35, ptr %return_tensor, align 8, !dbg !2032, !tbaa !247
  br label %if.end77, !dbg !2033

if.else44:                                        ; preds = %if.else41
  %36 = load i32, ptr %type.addr, align 4, !dbg !2034, !tbaa !324
  %cmp45 = icmp eq i32 %36, 18, !dbg !2036
  br i1 %cmp45, label %if.then46, label %if.else47, !dbg !2037

if.then46:                                        ; preds = %if.else44
  %37 = load ptr, ptr %handle.addr, align 8, !dbg !2038, !tbaa !247
  %reg_beta = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %37, i32 0, i32 7, !dbg !2040
  %38 = load ptr, ptr %reg_beta, align 8, !dbg !2040, !tbaa !1813
  store ptr %38, ptr %return_tensor, align 8, !dbg !2041, !tbaa !247
  br label %if.end76, !dbg !2042

if.else47:                                        ; preds = %if.else44
  %39 = load i32, ptr %type.addr, align 4, !dbg !2043, !tbaa !324
  %cmp48 = icmp eq i32 %39, 19, !dbg !2045
  br i1 %cmp48, label %if.then49, label %if.else50, !dbg !2046

if.then49:                                        ; preds = %if.else47
  %40 = load ptr, ptr %handle.addr, align 8, !dbg !2047, !tbaa !247
  %grad_beta = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %40, i32 0, i32 9, !dbg !2049
  %41 = load ptr, ptr %grad_beta, align 8, !dbg !2049, !tbaa !1824
  store ptr %41, ptr %return_tensor, align 8, !dbg !2050, !tbaa !247
  br label %if.end75, !dbg !2051

if.else50:                                        ; preds = %if.else47
  %42 = load i32, ptr %type.addr, align 4, !dbg !2052, !tbaa !324
  %cmp51 = icmp eq i32 %42, 21, !dbg !2054
  br i1 %cmp51, label %if.then52, label %if.else53, !dbg !2055

if.then52:                                        ; preds = %if.else50
  %43 = load ptr, ptr %handle.addr, align 8, !dbg !2056, !tbaa !247
  %reg_gamma = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %43, i32 0, i32 8, !dbg !2058
  %44 = load ptr, ptr %reg_gamma, align 8, !dbg !2058, !tbaa !1835
  store ptr %44, ptr %return_tensor, align 8, !dbg !2059, !tbaa !247
  br label %if.end74, !dbg !2060

if.else53:                                        ; preds = %if.else50
  %45 = load i32, ptr %type.addr, align 4, !dbg !2061, !tbaa !324
  %cmp54 = icmp eq i32 %45, 22, !dbg !2063
  br i1 %cmp54, label %if.then55, label %if.else56, !dbg !2064

if.then55:                                        ; preds = %if.else53
  %46 = load ptr, ptr %handle.addr, align 8, !dbg !2065, !tbaa !247
  %grad_gamma = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %46, i32 0, i32 10, !dbg !2067
  %47 = load ptr, ptr %grad_gamma, align 8, !dbg !2067, !tbaa !1846
  store ptr %47, ptr %return_tensor, align 8, !dbg !2068, !tbaa !247
  br label %if.end73, !dbg !2069

if.else56:                                        ; preds = %if.else53
  %48 = load i32, ptr %type.addr, align 4, !dbg !2070, !tbaa !324
  %cmp57 = icmp eq i32 %48, 24, !dbg !2072
  br i1 %cmp57, label %if.then58, label %if.else59, !dbg !2073

if.then58:                                        ; preds = %if.else56
  %49 = load ptr, ptr %handle.addr, align 8, !dbg !2074, !tbaa !247
  %expvalue = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %49, i32 0, i32 11, !dbg !2076
  %50 = load ptr, ptr %expvalue, align 8, !dbg !2076, !tbaa !1857
  store ptr %50, ptr %return_tensor, align 8, !dbg !2077, !tbaa !247
  br label %if.end72, !dbg !2078

if.else59:                                        ; preds = %if.else56
  %51 = load i32, ptr %type.addr, align 4, !dbg !2079, !tbaa !324
  %cmp60 = icmp eq i32 %51, 25, !dbg !2081
  br i1 %cmp60, label %if.then61, label %if.else62, !dbg !2082

if.then61:                                        ; preds = %if.else59
  %52 = load ptr, ptr %handle.addr, align 8, !dbg !2083, !tbaa !247
  %rcpstddev = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %52, i32 0, i32 12, !dbg !2085
  %53 = load ptr, ptr %rcpstddev, align 8, !dbg !2085, !tbaa !1868
  store ptr %53, ptr %return_tensor, align 8, !dbg !2086, !tbaa !247
  br label %if.end71, !dbg !2087

if.else62:                                        ; preds = %if.else59
  %54 = load i32, ptr %type.addr, align 4, !dbg !2088, !tbaa !324
  %cmp63 = icmp eq i32 %54, 26, !dbg !2090
  br i1 %cmp63, label %if.then64, label %if.else65, !dbg !2091

if.then64:                                        ; preds = %if.else62
  %55 = load ptr, ptr %handle.addr, align 8, !dbg !2092, !tbaa !247
  %variance = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %55, i32 0, i32 13, !dbg !2094
  %56 = load ptr, ptr %variance, align 8, !dbg !2094, !tbaa !1879
  store ptr %56, ptr %return_tensor, align 8, !dbg !2095, !tbaa !247
  br label %if.end70, !dbg !2096

if.else65:                                        ; preds = %if.else62
  %57 = load i32, ptr %type.addr, align 4, !dbg !2097, !tbaa !324
  %cmp66 = icmp eq i32 %57, 34, !dbg !2099
  br i1 %cmp66, label %if.then67, label %if.else68, !dbg !2100

if.then67:                                        ; preds = %if.else65
  %58 = load ptr, ptr %handle.addr, align 8, !dbg !2101, !tbaa !247
  %relumask = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %58, i32 0, i32 14, !dbg !2103
  %59 = load ptr, ptr %relumask, align 8, !dbg !2103, !tbaa !1890
  store ptr %59, ptr %return_tensor, align 8, !dbg !2104, !tbaa !247
  br label %if.end69, !dbg !2105

if.else68:                                        ; preds = %if.else65
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then67
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then64
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then61
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then58
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then55
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then52
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then49
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then46
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then43
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then40
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then37
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then34
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then31
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then29
  br label %if.end84, !dbg !2106

if.else83:                                        ; preds = %if.end
  %60 = load ptr, ptr %status.addr, align 8, !dbg !2107, !tbaa !247
  store i32 100004, ptr %60, align 4, !dbg !2109, !tbaa !258
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.end82
  %61 = load ptr, ptr %return_tensor, align 8, !dbg !2110, !tbaa !247
  store ptr %61, ptr %retval, align 8, !dbg !2111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2111

cleanup:                                          ; preds = %if.end84, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_tensor) #8, !dbg !2112
  %62 = load ptr, ptr %retval, align 8, !dbg !2112
  ret ptr %62, !dbg !2112
}

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_fusedbatchnorm_release_tensor(ptr noundef %handle, i32 noundef %type) #0 !dbg !2113 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2117, metadata !DIExpression()), !dbg !2120
  store i32 %type, ptr %type.addr, align 4, !tbaa !324
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2118, metadata !DIExpression()), !dbg !2121
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !2122
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !2119, metadata !DIExpression()), !dbg !2123
  store i32 0, ptr %status, align 4, !dbg !2123, !tbaa !258
  %0 = load i32, ptr %type.addr, align 4, !dbg !2124, !tbaa !324
  %cmp = icmp ne i32 %0, 0, !dbg !2126
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2127

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !2128, !tbaa !324
  %cmp1 = icmp ne i32 %1, 3, !dbg !2129
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !2130

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %type.addr, align 4, !dbg !2131, !tbaa !324
  %cmp3 = icmp ne i32 %2, 5, !dbg !2132
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !2133

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i32, ptr %type.addr, align 4, !dbg !2134, !tbaa !324
  %cmp5 = icmp ne i32 %3, 6, !dbg !2135
  br i1 %cmp5, label %land.lhs.true6, label %if.end, !dbg !2136

land.lhs.true6:                                   ; preds = %land.lhs.true4
  %4 = load i32, ptr %type.addr, align 4, !dbg !2137, !tbaa !324
  %cmp7 = icmp ne i32 %4, 1, !dbg !2138
  br i1 %cmp7, label %land.lhs.true8, label %if.end, !dbg !2139

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %5 = load i32, ptr %type.addr, align 4, !dbg !2140, !tbaa !324
  %cmp9 = icmp ne i32 %5, 4, !dbg !2141
  br i1 %cmp9, label %land.lhs.true10, label %if.end, !dbg !2142

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %6 = load i32, ptr %type.addr, align 4, !dbg !2143, !tbaa !324
  %cmp11 = icmp ne i32 %6, 18, !dbg !2144
  br i1 %cmp11, label %land.lhs.true12, label %if.end, !dbg !2145

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %7 = load i32, ptr %type.addr, align 4, !dbg !2146, !tbaa !324
  %cmp13 = icmp ne i32 %7, 19, !dbg !2147
  br i1 %cmp13, label %land.lhs.true14, label %if.end, !dbg !2148

land.lhs.true14:                                  ; preds = %land.lhs.true12
  %8 = load i32, ptr %type.addr, align 4, !dbg !2149, !tbaa !324
  %cmp15 = icmp ne i32 %8, 21, !dbg !2150
  br i1 %cmp15, label %land.lhs.true16, label %if.end, !dbg !2151

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %9 = load i32, ptr %type.addr, align 4, !dbg !2152, !tbaa !324
  %cmp17 = icmp ne i32 %9, 22, !dbg !2153
  br i1 %cmp17, label %land.lhs.true18, label %if.end, !dbg !2154

land.lhs.true18:                                  ; preds = %land.lhs.true16
  %10 = load i32, ptr %type.addr, align 4, !dbg !2155, !tbaa !324
  %cmp19 = icmp ne i32 %10, 24, !dbg !2156
  br i1 %cmp19, label %land.lhs.true20, label %if.end, !dbg !2157

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %11 = load i32, ptr %type.addr, align 4, !dbg !2158, !tbaa !324
  %cmp21 = icmp ne i32 %11, 25, !dbg !2159
  br i1 %cmp21, label %land.lhs.true22, label %if.end, !dbg !2160

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %12 = load i32, ptr %type.addr, align 4, !dbg !2161, !tbaa !324
  %cmp23 = icmp ne i32 %12, 26, !dbg !2162
  br i1 %cmp23, label %land.lhs.true24, label %if.end, !dbg !2163

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %13 = load i32, ptr %type.addr, align 4, !dbg !2164, !tbaa !324
  %cmp25 = icmp ne i32 %13, 34, !dbg !2165
  br i1 %cmp25, label %if.then, label %if.end, !dbg !2166

if.then:                                          ; preds = %land.lhs.true24
  store i32 100021, ptr %status, align 4, !dbg !2167, !tbaa !258
  %14 = load i32, ptr %status, align 4, !dbg !2169, !tbaa !258
  store i32 %14, ptr %retval, align 4, !dbg !2170
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2170

if.end:                                           ; preds = %land.lhs.true24, %land.lhs.true22, %land.lhs.true20, %land.lhs.true18, %land.lhs.true16, %land.lhs.true14, %land.lhs.true12, %land.lhs.true10, %land.lhs.true8, %land.lhs.true6, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %15 = load ptr, ptr %handle.addr, align 8, !dbg !2171, !tbaa !247
  %cmp26 = icmp ne ptr %15, null, !dbg !2173
  br i1 %cmp26, label %if.then27, label %if.else83, !dbg !2174

if.then27:                                        ; preds = %if.end
  %16 = load i32, ptr %type.addr, align 4, !dbg !2175, !tbaa !324
  %cmp28 = icmp eq i32 %16, 0, !dbg !2178
  br i1 %cmp28, label %if.then29, label %if.else, !dbg !2179

if.then29:                                        ; preds = %if.then27
  %17 = load ptr, ptr %handle.addr, align 8, !dbg !2180, !tbaa !247
  %reg_input = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %17, i32 0, i32 1, !dbg !2182
  store ptr null, ptr %reg_input, align 8, !dbg !2183, !tbaa !1747
  br label %if.end82, !dbg !2184

if.else:                                          ; preds = %if.then27
  %18 = load i32, ptr %type.addr, align 4, !dbg !2185, !tbaa !324
  %cmp30 = icmp eq i32 %18, 3, !dbg !2187
  br i1 %cmp30, label %if.then31, label %if.else32, !dbg !2188

if.then31:                                        ; preds = %if.else
  %19 = load ptr, ptr %handle.addr, align 8, !dbg !2189, !tbaa !247
  %grad_input = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %19, i32 0, i32 3, !dbg !2191
  store ptr null, ptr %grad_input, align 8, !dbg !2192, !tbaa !1758
  br label %if.end81, !dbg !2193

if.else32:                                        ; preds = %if.else
  %20 = load i32, ptr %type.addr, align 4, !dbg !2194, !tbaa !324
  %cmp33 = icmp eq i32 %20, 5, !dbg !2196
  br i1 %cmp33, label %if.then34, label %if.else35, !dbg !2197

if.then34:                                        ; preds = %if.else32
  %21 = load ptr, ptr %handle.addr, align 8, !dbg !2198, !tbaa !247
  %reg_output = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %21, i32 0, i32 2, !dbg !2200
  store ptr null, ptr %reg_output, align 8, !dbg !2201, !tbaa !1769
  br label %if.end80, !dbg !2202

if.else35:                                        ; preds = %if.else32
  %22 = load i32, ptr %type.addr, align 4, !dbg !2203, !tbaa !324
  %cmp36 = icmp eq i32 %22, 6, !dbg !2205
  br i1 %cmp36, label %if.then37, label %if.else38, !dbg !2206

if.then37:                                        ; preds = %if.else35
  %23 = load ptr, ptr %handle.addr, align 8, !dbg !2207, !tbaa !247
  %grad_output = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %23, i32 0, i32 4, !dbg !2209
  store ptr null, ptr %grad_output, align 8, !dbg !2210, !tbaa !1780
  br label %if.end79, !dbg !2211

if.else38:                                        ; preds = %if.else35
  %24 = load i32, ptr %type.addr, align 4, !dbg !2212, !tbaa !324
  %cmp39 = icmp eq i32 %24, 1, !dbg !2214
  br i1 %cmp39, label %if.then40, label %if.else41, !dbg !2215

if.then40:                                        ; preds = %if.else38
  %25 = load ptr, ptr %handle.addr, align 8, !dbg !2216, !tbaa !247
  %reg_add = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %25, i32 0, i32 5, !dbg !2218
  store ptr null, ptr %reg_add, align 8, !dbg !2219, !tbaa !1791
  br label %if.end78, !dbg !2220

if.else41:                                        ; preds = %if.else38
  %26 = load i32, ptr %type.addr, align 4, !dbg !2221, !tbaa !324
  %cmp42 = icmp eq i32 %26, 4, !dbg !2223
  br i1 %cmp42, label %if.then43, label %if.else44, !dbg !2224

if.then43:                                        ; preds = %if.else41
  %27 = load ptr, ptr %handle.addr, align 8, !dbg !2225, !tbaa !247
  %grad_add = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %27, i32 0, i32 6, !dbg !2227
  store ptr null, ptr %grad_add, align 8, !dbg !2228, !tbaa !1802
  br label %if.end77, !dbg !2229

if.else44:                                        ; preds = %if.else41
  %28 = load i32, ptr %type.addr, align 4, !dbg !2230, !tbaa !324
  %cmp45 = icmp eq i32 %28, 18, !dbg !2232
  br i1 %cmp45, label %if.then46, label %if.else47, !dbg !2233

if.then46:                                        ; preds = %if.else44
  %29 = load ptr, ptr %handle.addr, align 8, !dbg !2234, !tbaa !247
  %reg_beta = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %29, i32 0, i32 7, !dbg !2236
  store ptr null, ptr %reg_beta, align 8, !dbg !2237, !tbaa !1813
  br label %if.end76, !dbg !2238

if.else47:                                        ; preds = %if.else44
  %30 = load i32, ptr %type.addr, align 4, !dbg !2239, !tbaa !324
  %cmp48 = icmp eq i32 %30, 19, !dbg !2241
  br i1 %cmp48, label %if.then49, label %if.else50, !dbg !2242

if.then49:                                        ; preds = %if.else47
  %31 = load ptr, ptr %handle.addr, align 8, !dbg !2243, !tbaa !247
  %grad_beta = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %31, i32 0, i32 9, !dbg !2245
  store ptr null, ptr %grad_beta, align 8, !dbg !2246, !tbaa !1824
  br label %if.end75, !dbg !2247

if.else50:                                        ; preds = %if.else47
  %32 = load i32, ptr %type.addr, align 4, !dbg !2248, !tbaa !324
  %cmp51 = icmp eq i32 %32, 21, !dbg !2250
  br i1 %cmp51, label %if.then52, label %if.else53, !dbg !2251

if.then52:                                        ; preds = %if.else50
  %33 = load ptr, ptr %handle.addr, align 8, !dbg !2252, !tbaa !247
  %reg_gamma = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %33, i32 0, i32 8, !dbg !2254
  store ptr null, ptr %reg_gamma, align 8, !dbg !2255, !tbaa !1835
  br label %if.end74, !dbg !2256

if.else53:                                        ; preds = %if.else50
  %34 = load i32, ptr %type.addr, align 4, !dbg !2257, !tbaa !324
  %cmp54 = icmp eq i32 %34, 22, !dbg !2259
  br i1 %cmp54, label %if.then55, label %if.else56, !dbg !2260

if.then55:                                        ; preds = %if.else53
  %35 = load ptr, ptr %handle.addr, align 8, !dbg !2261, !tbaa !247
  %grad_gamma = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %35, i32 0, i32 10, !dbg !2263
  store ptr null, ptr %grad_gamma, align 8, !dbg !2264, !tbaa !1846
  br label %if.end73, !dbg !2265

if.else56:                                        ; preds = %if.else53
  %36 = load i32, ptr %type.addr, align 4, !dbg !2266, !tbaa !324
  %cmp57 = icmp eq i32 %36, 24, !dbg !2268
  br i1 %cmp57, label %if.then58, label %if.else59, !dbg !2269

if.then58:                                        ; preds = %if.else56
  %37 = load ptr, ptr %handle.addr, align 8, !dbg !2270, !tbaa !247
  %expvalue = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %37, i32 0, i32 11, !dbg !2272
  store ptr null, ptr %expvalue, align 8, !dbg !2273, !tbaa !1857
  br label %if.end72, !dbg !2274

if.else59:                                        ; preds = %if.else56
  %38 = load i32, ptr %type.addr, align 4, !dbg !2275, !tbaa !324
  %cmp60 = icmp eq i32 %38, 25, !dbg !2277
  br i1 %cmp60, label %if.then61, label %if.else62, !dbg !2278

if.then61:                                        ; preds = %if.else59
  %39 = load ptr, ptr %handle.addr, align 8, !dbg !2279, !tbaa !247
  %rcpstddev = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %39, i32 0, i32 12, !dbg !2281
  store ptr null, ptr %rcpstddev, align 8, !dbg !2282, !tbaa !1868
  br label %if.end71, !dbg !2283

if.else62:                                        ; preds = %if.else59
  %40 = load i32, ptr %type.addr, align 4, !dbg !2284, !tbaa !324
  %cmp63 = icmp eq i32 %40, 26, !dbg !2286
  br i1 %cmp63, label %if.then64, label %if.else65, !dbg !2287

if.then64:                                        ; preds = %if.else62
  %41 = load ptr, ptr %handle.addr, align 8, !dbg !2288, !tbaa !247
  %variance = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %41, i32 0, i32 13, !dbg !2290
  store ptr null, ptr %variance, align 8, !dbg !2291, !tbaa !1879
  br label %if.end70, !dbg !2292

if.else65:                                        ; preds = %if.else62
  %42 = load i32, ptr %type.addr, align 4, !dbg !2293, !tbaa !324
  %cmp66 = icmp eq i32 %42, 34, !dbg !2295
  br i1 %cmp66, label %if.then67, label %if.else68, !dbg !2296

if.then67:                                        ; preds = %if.else65
  %43 = load ptr, ptr %handle.addr, align 8, !dbg !2297, !tbaa !247
  %relumask = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %43, i32 0, i32 14, !dbg !2299
  store ptr null, ptr %relumask, align 8, !dbg !2300, !tbaa !1890
  br label %if.end69, !dbg !2301

if.else68:                                        ; preds = %if.else65
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then67
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then64
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then61
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then58
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then55
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then52
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then49
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then46
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then43
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then40
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then37
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then34
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then31
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then29
  br label %if.end84, !dbg !2302

if.else83:                                        ; preds = %if.end
  store i32 100004, ptr %status, align 4, !dbg !2303, !tbaa !258
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.end82
  %44 = load i32, ptr %status, align 4, !dbg !2305, !tbaa !258
  store i32 %44, ptr %retval, align 4, !dbg !2306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2306

cleanup:                                          ; preds = %if.end84, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !2307
  %45 = load i32, ptr %retval, align 4, !dbg !2307
  ret i32 %45, !dbg !2307
}

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_fusedbatchnorm_execute_st(ptr noundef %handle, i32 noundef %kind, i32 noundef %start_thread, i32 noundef %tid) #0 !dbg !2308 {
entry:
  %handle.addr = alloca ptr, align 8
  %kind.addr = alloca i32, align 4
  %start_thread.addr = alloca i32, align 4
  %tid.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2313, metadata !DIExpression()), !dbg !2318
  store i32 %kind, ptr %kind.addr, align 4, !tbaa !324
  tail call void @llvm.dbg.declare(metadata ptr %kind.addr, metadata !2314, metadata !DIExpression()), !dbg !2319
  store i32 %start_thread, ptr %start_thread.addr, align 4, !tbaa !258
  tail call void @llvm.dbg.declare(metadata ptr %start_thread.addr, metadata !2315, metadata !DIExpression()), !dbg !2320
  store i32 %tid, ptr %tid.addr, align 4, !tbaa !258
  tail call void @llvm.dbg.declare(metadata ptr %tid.addr, metadata !2316, metadata !DIExpression()), !dbg !2321
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !2322
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !2317, metadata !DIExpression()), !dbg !2323
  store i32 0, ptr %status, align 4, !dbg !2323, !tbaa !258
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !2324, !tbaa !247
  %cmp = icmp ne ptr null, %0, !dbg !2326
  br i1 %cmp, label %if.then, label %if.else, !dbg !2327

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %kind.addr, align 4, !dbg !2328, !tbaa !324
  switch i32 %1, label %sw.default9 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !2330

sw.bb:                                            ; preds = %if.then
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !2331, !tbaa !247
  %desc = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %2, i32 0, i32 0, !dbg !2334
  %buffer_format = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc, i32 0, i32 15, !dbg !2335
  %3 = load i32, ptr %buffer_format, align 4, !dbg !2335, !tbaa !493
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb1
  ], !dbg !2336

sw.bb1:                                           ; preds = %sw.bb
  %4 = load ptr, ptr %handle.addr, align 8, !dbg !2337, !tbaa !247
  %5 = load i32, ptr %start_thread.addr, align 4, !dbg !2340, !tbaa !258
  %6 = load i32, ptr %tid.addr, align 4, !dbg !2341, !tbaa !258
  %call = call i32 @libxsmm_dnn_fusedbatchnorm_st_fwd_custom(ptr noundef %4, i32 noundef %5, i32 noundef %6), !dbg !2342
  store i32 %call, ptr %status, align 4, !dbg !2343, !tbaa !258
  br label %sw.epilog, !dbg !2344

sw.default:                                       ; preds = %sw.bb
  store i32 100032, ptr %status, align 4, !dbg !2345, !tbaa !258
  br label %sw.epilog, !dbg !2347

sw.epilog:                                        ; preds = %sw.default, %sw.bb1
  br label %sw.epilog10, !dbg !2348

sw.bb2:                                           ; preds = %if.then
  %7 = load ptr, ptr %handle.addr, align 8, !dbg !2349, !tbaa !247
  %desc3 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %7, i32 0, i32 0, !dbg !2351
  %buffer_format4 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc3, i32 0, i32 15, !dbg !2352
  %8 = load i32, ptr %buffer_format4, align 4, !dbg !2352, !tbaa !493
  switch i32 %8, label %sw.default7 [
    i32 1, label %sw.bb5
  ], !dbg !2353

sw.bb5:                                           ; preds = %sw.bb2
  %9 = load ptr, ptr %handle.addr, align 8, !dbg !2354, !tbaa !247
  %10 = load i32, ptr %start_thread.addr, align 4, !dbg !2357, !tbaa !258
  %11 = load i32, ptr %tid.addr, align 4, !dbg !2358, !tbaa !258
  %call6 = call i32 @libxsmm_dnn_fusedbatchnorm_st_bwd_custom(ptr noundef %9, i32 noundef %10, i32 noundef %11), !dbg !2359
  store i32 %call6, ptr %status, align 4, !dbg !2360, !tbaa !258
  br label %sw.epilog8, !dbg !2361

sw.default7:                                      ; preds = %sw.bb2
  store i32 100032, ptr %status, align 4, !dbg !2362, !tbaa !258
  br label %sw.epilog8, !dbg !2364

sw.epilog8:                                       ; preds = %sw.default7, %sw.bb5
  br label %sw.epilog10, !dbg !2365

sw.default9:                                      ; preds = %if.then
  store i32 100010, ptr %status, align 4, !dbg !2366, !tbaa !258
  br label %sw.epilog10, !dbg !2368

sw.epilog10:                                      ; preds = %sw.default9, %sw.epilog8, %sw.epilog
  br label %if.end, !dbg !2369

if.else:                                          ; preds = %entry
  store i32 100004, ptr %status, align 4, !dbg !2370, !tbaa !258
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog10
  %12 = load i32, ptr %status, align 4, !dbg !2372, !tbaa !258
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !2373
  ret i32 %12, !dbg !2374
}

declare !dbg !2375 hidden i32 @libxsmm_dnn_fusedbatchnorm_st_fwd_custom(ptr noundef, i32 noundef, i32 noundef) #2

declare !dbg !2379 hidden i32 @libxsmm_dnn_fusedbatchnorm_st_bwd_custom(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i32 @libxsmm_dnn_fusedbatchnorm_reduce_stats_st(ptr noundef %handles, i32 noundef %num_handles, i32 noundef %kind, i32 noundef %start_thread, i32 noundef %tid) #0 !dbg !2381 {
entry:
  %handles.addr = alloca ptr, align 8
  %num_handles.addr = alloca i32, align 4
  %kind.addr = alloca i32, align 4
  %start_thread.addr = alloca i32, align 4
  %tid.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store ptr %handles, ptr %handles.addr, align 8, !tbaa !247
  tail call void @llvm.dbg.declare(metadata ptr %handles.addr, metadata !2386, metadata !DIExpression()), !dbg !2392
  store i32 %num_handles, ptr %num_handles.addr, align 4, !tbaa !258
  tail call void @llvm.dbg.declare(metadata ptr %num_handles.addr, metadata !2387, metadata !DIExpression()), !dbg !2393
  store i32 %kind, ptr %kind.addr, align 4, !tbaa !324
  tail call void @llvm.dbg.declare(metadata ptr %kind.addr, metadata !2388, metadata !DIExpression()), !dbg !2394
  store i32 %start_thread, ptr %start_thread.addr, align 4, !tbaa !258
  tail call void @llvm.dbg.declare(metadata ptr %start_thread.addr, metadata !2389, metadata !DIExpression()), !dbg !2395
  store i32 %tid, ptr %tid.addr, align 4, !tbaa !258
  tail call void @llvm.dbg.declare(metadata ptr %tid.addr, metadata !2390, metadata !DIExpression()), !dbg !2396
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #8, !dbg !2397
  tail call void @llvm.dbg.declare(metadata ptr %status, metadata !2391, metadata !DIExpression()), !dbg !2398
  store i32 0, ptr %status, align 4, !dbg !2398, !tbaa !258
  %0 = load ptr, ptr %handles.addr, align 8, !dbg !2399, !tbaa !247
  %cmp = icmp ne ptr null, %0, !dbg !2401
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2402

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %num_handles.addr, align 4, !dbg !2403, !tbaa !258
  %cmp1 = icmp sgt i32 %1, 0, !dbg !2404
  br i1 %cmp1, label %if.then, label %if.else, !dbg !2405

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr %kind.addr, align 4, !dbg !2406, !tbaa !324
  switch i32 %2, label %sw.default11 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ], !dbg !2408

sw.bb:                                            ; preds = %if.then
  %3 = load ptr, ptr %handles.addr, align 8, !dbg !2409, !tbaa !247
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0, !dbg !2409
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2409, !tbaa !247
  %desc = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %4, i32 0, i32 0, !dbg !2412
  %buffer_format = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc, i32 0, i32 15, !dbg !2413
  %5 = load i32, ptr %buffer_format, align 4, !dbg !2413, !tbaa !493
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb2
  ], !dbg !2414

sw.bb2:                                           ; preds = %sw.bb
  %6 = load ptr, ptr %handles.addr, align 8, !dbg !2415, !tbaa !247
  %7 = load i32, ptr %num_handles.addr, align 4, !dbg !2418, !tbaa !258
  %8 = load i32, ptr %start_thread.addr, align 4, !dbg !2419, !tbaa !258
  %9 = load i32, ptr %tid.addr, align 4, !dbg !2420, !tbaa !258
  %call = call i32 @libxsmm_dnn_fusedbatchnorm_reduce_stats_st_fwd_custom(ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9), !dbg !2421
  store i32 %call, ptr %status, align 4, !dbg !2422, !tbaa !258
  br label %sw.epilog, !dbg !2423

sw.default:                                       ; preds = %sw.bb
  store i32 100032, ptr %status, align 4, !dbg !2424, !tbaa !258
  br label %sw.epilog, !dbg !2426

sw.epilog:                                        ; preds = %sw.default, %sw.bb2
  br label %sw.epilog12, !dbg !2427

sw.bb3:                                           ; preds = %if.then
  %10 = load ptr, ptr %handles.addr, align 8, !dbg !2428, !tbaa !247
  %arrayidx4 = getelementptr inbounds ptr, ptr %10, i64 0, !dbg !2428
  %11 = load ptr, ptr %arrayidx4, align 8, !dbg !2428, !tbaa !247
  %desc5 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm, ptr %11, i32 0, i32 0, !dbg !2430
  %buffer_format6 = getelementptr inbounds %struct.libxsmm_dnn_fusedbatchnorm_desc, ptr %desc5, i32 0, i32 15, !dbg !2431
  %12 = load i32, ptr %buffer_format6, align 4, !dbg !2431, !tbaa !493
  switch i32 %12, label %sw.default9 [
    i32 1, label %sw.bb7
  ], !dbg !2432

sw.bb7:                                           ; preds = %sw.bb3
  %13 = load ptr, ptr %handles.addr, align 8, !dbg !2433, !tbaa !247
  %14 = load i32, ptr %num_handles.addr, align 4, !dbg !2436, !tbaa !258
  %15 = load i32, ptr %start_thread.addr, align 4, !dbg !2437, !tbaa !258
  %16 = load i32, ptr %tid.addr, align 4, !dbg !2438, !tbaa !258
  %call8 = call i32 @libxsmm_dnn_fusedbatchnorm_reduce_stats_st_bwd_custom(ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16), !dbg !2439
  store i32 %call8, ptr %status, align 4, !dbg !2440, !tbaa !258
  br label %sw.epilog10, !dbg !2441

sw.default9:                                      ; preds = %sw.bb3
  store i32 100032, ptr %status, align 4, !dbg !2442, !tbaa !258
  br label %sw.epilog10, !dbg !2444

sw.epilog10:                                      ; preds = %sw.default9, %sw.bb7
  br label %sw.epilog12, !dbg !2445

sw.default11:                                     ; preds = %if.then
  store i32 100010, ptr %status, align 4, !dbg !2446, !tbaa !258
  br label %sw.epilog12, !dbg !2448

sw.epilog12:                                      ; preds = %sw.default11, %sw.epilog10, %sw.epilog
  br label %if.end, !dbg !2449

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 100004, ptr %status, align 4, !dbg !2450, !tbaa !258
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog12
  %17 = load i32, ptr %status, align 4, !dbg !2452, !tbaa !258
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #8, !dbg !2453
  ret i32 %17, !dbg !2454
}

declare !dbg !2455 hidden i32 @libxsmm_dnn_fusedbatchnorm_reduce_stats_st_fwd_custom(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare !dbg !2458 hidden i32 @libxsmm_dnn_fusedbatchnorm_reduce_stats_st_bwd_custom(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

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
!llvm.module.flags = !{!229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !140, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "src/libxsmm_dnn_fusedbatchnorm.c", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "d2c111ce6cec6e723303d0a44ea83a12")
!2 = !{!3, !13, !24, !27, !58, !71, !132}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_dnn_datatype", file: !4, line: 423, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "include/libxsmm_typedefs.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "6455bf141a5acf04bdbd5b62071dd37a")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "LIBXSMM_DNN_DATATYPE_F64", value: 0)
!8 = !DIEnumerator(name: "LIBXSMM_DNN_DATATYPE_F32", value: 1)
!9 = !DIEnumerator(name: "LIBXSMM_DNN_DATATYPE_BF16", value: 2)
!10 = !DIEnumerator(name: "LIBXSMM_DNN_DATATYPE_I32", value: 4)
!11 = !DIEnumerator(name: "LIBXSMM_DNN_DATATYPE_I16", value: 5)
!12 = !DIEnumerator(name: "LIBXSMM_DNN_DATATYPE_I8", value: 6)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_dnn_tensor_format", file: !4, line: 405, baseType: !5, size: 32, elements: !14)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23}
!15 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_LIBXSMM", value: 1)
!16 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_NHWC", value: 2)
!17 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_NCHW", value: 4)
!18 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_RSCK", value: 8)
!19 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_KCRS", value: 16)
!20 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_CK", value: 32)
!21 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_CKPACKED", value: 64)
!22 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_NCPACKED", value: 128)
!23 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_FORMAT_NC", value: 256)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_dnn_fusedbatchnorm_fuse_order", file: !4, line: 443, baseType: !5, size: 32, elements: !25)
!25 = !{!26}
!26 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_ORDER_BN_ELTWISE_RELU", value: 0)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_dnn_fusedbatchnorm_fuse_op", file: !4, line: 448, baseType: !5, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!29 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BN", value: 1)
!30 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSCALE", value: 2)
!31 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSTATS", value: 4)
!32 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSTATS_NORED", value: 8)
!33 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_ELTWISE", value: 16)
!34 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_RELU", value: 32)
!35 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_RELU_WITH_MASK", value: 64)
!36 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_ELTWISE_RELU", value: 48)
!37 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_ELTWISE_RELU_WITH_MASK", value: 80)
!38 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BN_ELTWISE", value: 17)
!39 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BN_RELU", value: 33)
!40 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BN_RELU_WITH_MASK", value: 65)
!41 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BN_ELTWISE_RELU", value: 49)
!42 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BN_ELTWISE_RELU_WITH_MASK", value: 81)
!43 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSCALE_ELTWISE", value: 18)
!44 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSCALE_RELU", value: 34)
!45 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSCALE_RELU_WITH_MASK", value: 66)
!46 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSCALE_ELTWISE_RELU", value: 50)
!47 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSCALE_ELTWISE_RELU_WITH_MASK", value: 82)
!48 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSTATS_ELTWISE", value: 20)
!49 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSTATS_RELU", value: 36)
!50 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSTATS_RELU_WITH_MASK", value: 68)
!51 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSTATS_ELTWISE_RELU", value: 52)
!52 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSTATS_ELTWISE_RELU_WITH_MASK", value: 84)
!53 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSTATS_NORED_ELTWISE", value: 24)
!54 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSTATS_NORED_RELU", value: 40)
!55 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSTATS_NORED_RELU_WITH_MASK", value: 72)
!56 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSTATS_NORED_ELTWISE_RELU", value: 56)
!57 = !DIEnumerator(name: "LIBXSMM_DNN_FUSEDBN_OPS_BNSTATS_NORED_ELTWISE_RELU_WITH_MASK", value: 88)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_dnn_tensor_dimtype", file: !59, line: 20, baseType: !5, size: 32, elements: !60)
!59 = !DIFile(filename: "include/libxsmm_dnn_tensor.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "84a3fcc759c2bf8efea9ed56338f1f60")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!61 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_N", value: 0)
!62 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_H", value: 1)
!63 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_W", value: 2)
!64 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_C", value: 3)
!65 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_K", value: 4)
!66 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_R", value: 5)
!67 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_S", value: 6)
!68 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_T", value: 7)
!69 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_G", value: 8)
!70 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR_DIMTYPE_X", value: 9)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_dnn_tensor_type", file: !59, line: 44, baseType: !5, size: 32, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!73 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_INPUT", value: 0)
!74 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_INPUT_ADD", value: 1)
!75 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_INPUT_TRANS", value: 2)
!76 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_INPUT", value: 3)
!77 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_INPUT_ADD", value: 4)
!78 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_OUTPUT", value: 5)
!79 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_OUTPUT", value: 6)
!80 = !DIEnumerator(name: "LIBXSMM_DNN_INPUT", value: 7)
!81 = !DIEnumerator(name: "LIBXSMM_DNN_OUTPUT", value: 8)
!82 = !DIEnumerator(name: "LIBXSMM_DNN_ACTIVATION", value: 9)
!83 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_FILTER", value: 10)
!84 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_FILTER_TRANS", value: 11)
!85 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_FILTER", value: 12)
!86 = !DIEnumerator(name: "LIBXSMM_DNN_MASTER_FILTER", value: 13)
!87 = !DIEnumerator(name: "LIBXSMM_DNN_FILTER", value: 14)
!88 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_CHANNEL_BIAS", value: 15)
!89 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_CHANNEL_BIAS", value: 16)
!90 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_BIAS", value: 17)
!91 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_CHANNEL_BETA", value: 18)
!92 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_CHANNEL_BETA", value: 19)
!93 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_BETA", value: 20)
!94 = !DIEnumerator(name: "LIBXSMM_DNN_REGULAR_CHANNEL_GAMMA", value: 21)
!95 = !DIEnumerator(name: "LIBXSMM_DNN_GRADIENT_CHANNEL_GAMMA", value: 22)
!96 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_GAMMA", value: 23)
!97 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_EXPECTVAL", value: 24)
!98 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_RCPSTDDEV", value: 25)
!99 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_VARIANCE", value: 26)
!100 = !DIEnumerator(name: "LIBXSMM_DNN_CHANNEL_SCALAR", value: 27)
!101 = !DIEnumerator(name: "LIBXSMM_DNN_LABEL", value: 28)
!102 = !DIEnumerator(name: "LIBXSMM_DNN_BATCH_STATS", value: 29)
!103 = !DIEnumerator(name: "LIBXSMM_DNN_MAX_STATS_FWD", value: 30)
!104 = !DIEnumerator(name: "LIBXSMM_DNN_MAX_STATS_BWD", value: 31)
!105 = !DIEnumerator(name: "LIBXSMM_DNN_MAX_STATS_UPD", value: 32)
!106 = !DIEnumerator(name: "LIBXSMM_DNN_POOLING_MASK", value: 33)
!107 = !DIEnumerator(name: "LIBXSMM_DNN_RELU_MASK", value: 34)
!108 = !DIEnumerator(name: "LIBXSMM_DNN_TENSOR", value: 35)
!109 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_INPUT", value: 36)
!110 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_CS_PREV", value: 37)
!111 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_HIDDEN_STATE_PREV", value: 38)
!112 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_WEIGHT", value: 39)
!113 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_RECUR_WEIGHT", value: 40)
!114 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_WEIGHT_TRANS", value: 41)
!115 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_RECUR_WEIGHT_TRANS", value: 42)
!116 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_BIAS", value: 43)
!117 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_CS", value: 44)
!118 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_REGULAR_HIDDEN_STATE", value: 45)
!119 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_INPUT", value: 46)
!120 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_CS_PREV", value: 47)
!121 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_HIDDEN_STATE_PREV", value: 48)
!122 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_WEIGHT", value: 49)
!123 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_RECUR_WEIGHT", value: 50)
!124 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_BIAS", value: 51)
!125 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_CS", value: 52)
!126 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_GRADIENT_HIDDEN_STATE", value: 53)
!127 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_INTERNAL_I", value: 54)
!128 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_INTERNAL_F", value: 55)
!129 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_INTERNAL_O", value: 56)
!130 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_INTERNAL_CI", value: 57)
!131 = !DIEnumerator(name: "LIBXSMM_DNN_RNN_INTERNAL_CO", value: 58)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "libxsmm_dnn_compute_kind", file: !133, line: 71, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "include/libxsmm_dnn.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "a78420eba4319a1d6474d35f9855f3e6")
!134 = !{!135, !136, !137, !138, !139}
!135 = !DIEnumerator(name: "LIBXSMM_DNN_COMPUTE_KIND_FWD", value: 0)
!136 = !DIEnumerator(name: "LIBXSMM_DNN_COMPUTE_KIND_BWD", value: 1)
!137 = !DIEnumerator(name: "LIBXSMM_DNN_COMPUTE_KIND_UPD", value: 2)
!138 = !DIEnumerator(name: "LIBXSMM_DNN_COMPUTE_KIND_BWDUPD", value: 3)
!139 = !DIEnumerator(name: "LIBXSMM_DNN_COMPUTE_KIND_ALL", value: 4)
!140 = !{!141, !225, !180, !185, !188, !227, !195, !175}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_fusedbatchnorm", file: !143, line: 18, baseType: !144)
!143 = !DIFile(filename: "include/libxsmm_dnn_fusedbatchnorm.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "1eccab476e2fe06d92893d9e88a470f4")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_dnn_fusedbatchnorm", file: !145, line: 512, size: 1792, elements: !146)
!145 = !DIFile(filename: "./src/libxsmm_main.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "327f1483fde3a8c227e86e12c0467dc8")
!146 = !{!147, !174, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !216, !217, !218, !219, !220, !224}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !144, file: !145, line: 513, baseType: !148, size: 576)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_fusedbatchnorm_desc", file: !4, line: 500, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_dnn_fusedbatchnorm_desc", file: !4, line: 481, size: 576, elements: !150)
!150 = !{!151, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !166, !167, !168, !170, !172}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "partN", scope: !149, file: !4, line: 482, baseType: !152, size: 32)
!152 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "fullN", scope: !149, file: !4, line: 483, baseType: !152, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !149, file: !4, line: 484, baseType: !152, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "H", scope: !149, file: !4, line: 485, baseType: !152, size: 32, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "W", scope: !149, file: !4, line: 486, baseType: !152, size: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !149, file: !4, line: 487, baseType: !152, size: 32, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !149, file: !4, line: 488, baseType: !152, size: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pad_h_in", scope: !149, file: !4, line: 489, baseType: !152, size: 32, offset: 224)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pad_w_in", scope: !149, file: !4, line: 490, baseType: !152, size: 32, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pad_h_out", scope: !149, file: !4, line: 491, baseType: !152, size: 32, offset: 288)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pad_w_out", scope: !149, file: !4, line: 492, baseType: !152, size: 32, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !149, file: !4, line: 493, baseType: !152, size: 32, offset: 352)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "datatype_in", scope: !149, file: !4, line: 494, baseType: !165, size: 32, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_datatype", file: !4, line: 430, baseType: !3)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "datatype_out", scope: !149, file: !4, line: 495, baseType: !165, size: 32, offset: 416)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "datatype_stats", scope: !149, file: !4, line: 496, baseType: !165, size: 32, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_format", scope: !149, file: !4, line: 497, baseType: !169, size: 32, offset: 480)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_tensor_format", file: !4, line: 420, baseType: !13)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "fuse_order", scope: !149, file: !4, line: 498, baseType: !171, size: 32, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_fusedbatchnorm_fuse_order", file: !4, line: 446, baseType: !24)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "fuse_ops", scope: !149, file: !4, line: 499, baseType: !173, size: 32, offset: 544)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_fusedbatchnorm_fuse_op", file: !4, line: 479, baseType: !27)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reg_input", scope: !144, file: !145, line: 514, baseType: !175, size: 64, offset: 576)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_tensor", file: !59, line: 18, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_dnn_tensor", file: !145, line: 352, size: 192, elements: !178)
!178 = !{!179, !194, !196}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "layout", scope: !177, file: !145, line: 353, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_tensor_datalayout", file: !59, line: 172, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_dnn_tensor_datalayout", file: !59, line: 165, size: 256, elements: !183)
!183 = !{!184, !187, !189, !190, !191, !192}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dim_type", scope: !182, file: !59, line: 166, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_tensor_dimtype", file: !59, line: 41, baseType: !58)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "dim_size", scope: !182, file: !59, line: 167, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "num_dims", scope: !182, file: !59, line: 168, baseType: !5, size: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !182, file: !59, line: 169, baseType: !169, size: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "datatype", scope: !182, file: !59, line: 170, baseType: !165, size: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tensor_type", scope: !182, file: !59, line: 171, baseType: !193, size: 32, offset: 224)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_tensor_type", file: !59, line: 161, baseType: !71)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !177, file: !145, line: 354, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "scf", scope: !177, file: !145, line: 355, baseType: !197, size: 8, offset: 128)
!197 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "reg_output", scope: !144, file: !145, line: 515, baseType: !175, size: 64, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "grad_input", scope: !144, file: !145, line: 516, baseType: !175, size: 64, offset: 704)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "grad_output", scope: !144, file: !145, line: 517, baseType: !175, size: 64, offset: 768)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "reg_add", scope: !144, file: !145, line: 518, baseType: !175, size: 64, offset: 832)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "grad_add", scope: !144, file: !145, line: 519, baseType: !175, size: 64, offset: 896)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "reg_beta", scope: !144, file: !145, line: 520, baseType: !175, size: 64, offset: 960)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "reg_gamma", scope: !144, file: !145, line: 521, baseType: !175, size: 64, offset: 1024)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "grad_beta", scope: !144, file: !145, line: 522, baseType: !175, size: 64, offset: 1088)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "grad_gamma", scope: !144, file: !145, line: 523, baseType: !175, size: 64, offset: 1152)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "expvalue", scope: !144, file: !145, line: 524, baseType: !175, size: 64, offset: 1216)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rcpstddev", scope: !144, file: !145, line: 525, baseType: !175, size: 64, offset: 1280)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "variance", scope: !144, file: !145, line: 526, baseType: !175, size: 64, offset: 1344)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "relumask", scope: !144, file: !145, line: 527, baseType: !175, size: 64, offset: 1408)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "barrier", scope: !144, file: !145, line: 528, baseType: !212, size: 64, offset: 1472)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_barrier", file: !214, line: 766, baseType: !215)
!214 = !DIFile(filename: "include/libxsmm_sync.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "83f98b39b8b6b876fabdfb62c1483c6b")
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "libxsmm_barrier", file: !214, line: 766, flags: DIFlagFwdDecl)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ifmblock", scope: !144, file: !145, line: 529, baseType: !152, size: 32, offset: 1536)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ofmblock", scope: !144, file: !145, line: 530, baseType: !152, size: 32, offset: 1568)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "blocksifm", scope: !144, file: !145, line: 531, baseType: !152, size: 32, offset: 1600)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "blocksofm", scope: !144, file: !145, line: 532, baseType: !152, size: 32, offset: 1632)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_size", scope: !144, file: !145, line: 533, baseType: !221, size: 64, offset: 1664)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !222, line: 70, baseType: !223)
!222 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!223 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !144, file: !145, line: 534, baseType: !195, size: 64, offset: 1728)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !228, line: 90, baseType: !223)
!228 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!229 = !{i32 7, !"Dwarf Version", i32 5}
!230 = !{i32 2, !"Debug Info Version", i32 3}
!231 = !{i32 1, !"wchar_size", i32 4}
!232 = !{i32 8, !"PIC Level", i32 2}
!233 = !{i32 7, !"uwtable", i32 2}
!234 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!235 = distinct !DISubprogram(name: "libxsmm_dnn_create_fusedbatchnorm", scope: !236, file: !236, line: 16, type: !237, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !241)
!236 = !DIFile(filename: "./src/libxsmm_dnn_fusedbatchnorm.c", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "d2c111ce6cec6e723303d0a44ea83a12")
!237 = !DISubroutineType(types: !238)
!238 = !{!141, !148, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_err_t", file: !133, line: 16, baseType: !5)
!241 = !{!242, !243, !244, !245}
!242 = !DILocalVariable(name: "fusedbatchnorm_desc", arg: 1, scope: !235, file: !236, line: 16, type: !148)
!243 = !DILocalVariable(name: "status", arg: 2, scope: !235, file: !236, line: 16, type: !239)
!244 = !DILocalVariable(name: "handle", scope: !235, file: !236, line: 17, type: !141)
!245 = !DILocalVariable(name: "lpb", scope: !235, file: !236, line: 18, type: !152)
!246 = !DILocation(line: 16, column: 107, scope: !235)
!247 = !{!248, !248, i64 0}
!248 = !{!"any pointer", !249, i64 0}
!249 = !{!"omnipotent char", !250, i64 0}
!250 = !{!"Simple C/C++ TBAA"}
!251 = !DILocation(line: 16, column: 147, scope: !235)
!252 = !DILocation(line: 17, column: 3, scope: !235)
!253 = !DILocation(line: 17, column: 31, scope: !235)
!254 = !DILocation(line: 18, column: 3, scope: !235)
!255 = !DILocation(line: 18, column: 7, scope: !235)
!256 = !DILocation(line: 21, column: 3, scope: !257)
!257 = distinct !DILexicalBlock(scope: !235, file: !236, line: 21, column: 3)
!258 = !{!259, !259, i64 0}
!259 = !{!"int", !249, i64 0}
!260 = !DILocation(line: 21, column: 3, scope: !235)
!261 = !DILocation(line: 23, column: 28, scope: !262)
!262 = distinct !DILexicalBlock(scope: !235, file: !236, line: 23, column: 8)
!263 = !{!264, !259, i64 0}
!264 = !{!"libxsmm_dnn_fusedbatchnorm_desc", !259, i64 0, !259, i64 4, !259, i64 8, !259, i64 12, !259, i64 16, !259, i64 20, !259, i64 24, !259, i64 28, !259, i64 32, !259, i64 36, !259, i64 40, !259, i64 44, !249, i64 48, !249, i64 52, !249, i64 56, !249, i64 60, !249, i64 64, !249, i64 68}
!265 = !DILocation(line: 23, column: 56, scope: !262)
!266 = !{!264, !259, i64 4}
!267 = !DILocation(line: 23, column: 34, scope: !262)
!268 = !DILocation(line: 23, column: 8, scope: !235)
!269 = !DILocation(line: 24, column: 6, scope: !270)
!270 = distinct !DILexicalBlock(scope: !262, file: !236, line: 23, column: 64)
!271 = !DILocation(line: 24, column: 13, scope: !270)
!272 = !DILocation(line: 25, column: 12, scope: !270)
!273 = !DILocation(line: 25, column: 5, scope: !270)
!274 = !DILocation(line: 26, column: 36, scope: !275)
!275 = distinct !DILexicalBlock(scope: !262, file: !236, line: 26, column: 15)
!276 = !DILocation(line: 26, column: 65, scope: !275)
!277 = !DILocation(line: 26, column: 42, scope: !275)
!278 = !DILocation(line: 26, column: 72, scope: !275)
!279 = !DILocation(line: 26, column: 97, scope: !275)
!280 = !{!264, !249, i64 68}
!281 = !DILocation(line: 26, column: 106, scope: !275)
!282 = !DILocation(line: 26, column: 147, scope: !275)
!283 = !DILocation(line: 26, column: 154, scope: !275)
!284 = !DILocation(line: 26, column: 179, scope: !275)
!285 = !DILocation(line: 26, column: 188, scope: !275)
!286 = !DILocation(line: 26, column: 223, scope: !275)
!287 = !DILocation(line: 26, column: 15, scope: !262)
!288 = !DILocation(line: 27, column: 6, scope: !289)
!289 = distinct !DILexicalBlock(scope: !275, file: !236, line: 26, column: 232)
!290 = !DILocation(line: 27, column: 13, scope: !289)
!291 = !DILocation(line: 28, column: 12, scope: !289)
!292 = !DILocation(line: 28, column: 5, scope: !289)
!293 = !DILocation(line: 32, column: 30, scope: !294)
!294 = distinct !DILexicalBlock(scope: !235, file: !236, line: 32, column: 8)
!295 = !{!264, !249, i64 48}
!296 = !DILocation(line: 32, column: 42, scope: !294)
!297 = !DILocation(line: 32, column: 72, scope: !294)
!298 = !DILocation(line: 32, column: 96, scope: !294)
!299 = !{!264, !249, i64 52}
!300 = !DILocation(line: 32, column: 109, scope: !294)
!301 = !DILocation(line: 32, column: 140, scope: !294)
!302 = !DILocation(line: 33, column: 30, scope: !294)
!303 = !DILocation(line: 33, column: 42, scope: !294)
!304 = !DILocation(line: 33, column: 71, scope: !294)
!305 = !DILocation(line: 33, column: 95, scope: !294)
!306 = !DILocation(line: 33, column: 108, scope: !294)
!307 = !DILocation(line: 32, column: 8, scope: !235)
!308 = !DILocation(line: 34, column: 43, scope: !309)
!309 = distinct !DILexicalBlock(scope: !294, file: !236, line: 33, column: 143)
!310 = !DILocation(line: 34, column: 12, scope: !309)
!311 = !DILocation(line: 36, column: 14, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !236, line: 36, column: 9)
!313 = !DILocation(line: 36, column: 11, scope: !312)
!314 = !DILocation(line: 36, column: 9, scope: !309)
!315 = !DILocation(line: 37, column: 8, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !236, line: 36, column: 22)
!317 = !DILocation(line: 37, column: 15, scope: !316)
!318 = !DILocation(line: 39, column: 14, scope: !316)
!319 = !DILocation(line: 39, column: 7, scope: !316)
!320 = !DILocation(line: 41, column: 7, scope: !316)
!321 = !DILocation(line: 41, column: 15, scope: !316)
!322 = !DILocation(line: 41, column: 22, scope: !316)
!323 = !{i64 0, i64 4, !258, i64 4, i64 4, !258, i64 8, i64 4, !258, i64 12, i64 4, !258, i64 16, i64 4, !258, i64 20, i64 4, !258, i64 24, i64 4, !258, i64 28, i64 4, !258, i64 32, i64 4, !258, i64 36, i64 4, !258, i64 40, i64 4, !258, i64 44, i64 4, !258, i64 48, i64 4, !324, i64 52, i64 4, !324, i64 56, i64 4, !324, i64 60, i64 4, !324, i64 64, i64 4, !324, i64 68, i64 4, !324}
!324 = !{!249, !249, i64 0}
!325 = !DILocation(line: 43, column: 53, scope: !316)
!326 = !DILocation(line: 43, column: 61, scope: !316)
!327 = !DILocation(line: 43, column: 66, scope: !316)
!328 = !{!329, !259, i64 8}
!329 = !{!"libxsmm_dnn_fusedbatchnorm", !264, i64 0, !248, i64 72, !248, i64 80, !248, i64 88, !248, i64 96, !248, i64 104, !248, i64 112, !248, i64 120, !248, i64 128, !248, i64 136, !248, i64 144, !248, i64 152, !248, i64 160, !248, i64 168, !248, i64 176, !248, i64 184, !259, i64 192, !259, i64 196, !259, i64 200, !259, i64 204, !330, i64 208, !248, i64 216}
!330 = !{!"long", !249, i64 0}
!331 = !DILocation(line: 43, column: 69, scope: !316)
!332 = !DILocation(line: 43, column: 77, scope: !316)
!333 = !DILocation(line: 43, column: 82, scope: !316)
!334 = !DILocation(line: 44, column: 55, scope: !316)
!335 = !DILocation(line: 44, column: 63, scope: !316)
!336 = !DILocation(line: 44, column: 76, scope: !316)
!337 = !DILocation(line: 44, column: 84, scope: !316)
!338 = !DILocation(line: 45, column: 53, scope: !316)
!339 = !DILocation(line: 45, column: 61, scope: !316)
!340 = !DILocation(line: 45, column: 66, scope: !316)
!341 = !{!329, !249, i64 48}
!342 = !DILocation(line: 45, column: 79, scope: !316)
!343 = !DILocation(line: 45, column: 87, scope: !316)
!344 = !DILocation(line: 45, column: 92, scope: !316)
!345 = !{!329, !249, i64 52}
!346 = !DILocation(line: 43, column: 17, scope: !316)
!347 = !DILocation(line: 43, column: 8, scope: !316)
!348 = !DILocation(line: 43, column: 15, scope: !316)
!349 = !DILocation(line: 47, column: 27, scope: !316)
!350 = !DILocation(line: 47, column: 35, scope: !316)
!351 = !DILocation(line: 47, column: 40, scope: !316)
!352 = !DILocation(line: 47, column: 44, scope: !316)
!353 = !DILocation(line: 47, column: 52, scope: !316)
!354 = !{!329, !259, i64 192}
!355 = !DILocation(line: 47, column: 42, scope: !316)
!356 = !DILocation(line: 47, column: 7, scope: !316)
!357 = !DILocation(line: 47, column: 15, scope: !316)
!358 = !DILocation(line: 47, column: 25, scope: !316)
!359 = !{!329, !259, i64 200}
!360 = !DILocation(line: 48, column: 27, scope: !316)
!361 = !DILocation(line: 48, column: 35, scope: !316)
!362 = !DILocation(line: 48, column: 40, scope: !316)
!363 = !DILocation(line: 48, column: 44, scope: !316)
!364 = !DILocation(line: 48, column: 52, scope: !316)
!365 = !{!329, !259, i64 196}
!366 = !DILocation(line: 48, column: 42, scope: !316)
!367 = !DILocation(line: 48, column: 7, scope: !316)
!368 = !DILocation(line: 48, column: 15, scope: !316)
!369 = !DILocation(line: 48, column: 25, scope: !316)
!370 = !{!329, !259, i64 204}
!371 = !DILocation(line: 50, column: 48, scope: !316)
!372 = !DILocation(line: 50, column: 56, scope: !316)
!373 = !DILocation(line: 50, column: 61, scope: !316)
!374 = !{!329, !259, i64 44}
!375 = !DILocation(line: 50, column: 25, scope: !316)
!376 = !DILocation(line: 50, column: 7, scope: !316)
!377 = !DILocation(line: 50, column: 15, scope: !316)
!378 = !DILocation(line: 50, column: 23, scope: !316)
!379 = !{!329, !248, i64 184}
!380 = !DILocation(line: 52, column: 51, scope: !316)
!381 = !DILocation(line: 52, column: 59, scope: !316)
!382 = !DILocation(line: 52, column: 64, scope: !316)
!383 = !DILocation(line: 52, column: 49, scope: !316)
!384 = !DILocation(line: 52, column: 68, scope: !316)
!385 = !DILocation(line: 52, column: 76, scope: !316)
!386 = !DILocation(line: 52, column: 81, scope: !316)
!387 = !{!329, !259, i64 0}
!388 = !DILocation(line: 52, column: 66, scope: !316)
!389 = !DILocation(line: 52, column: 7, scope: !316)
!390 = !DILocation(line: 52, column: 15, scope: !316)
!391 = !DILocation(line: 52, column: 28, scope: !316)
!392 = !{!329, !330, i64 208}
!393 = !DILocation(line: 53, column: 5, scope: !316)
!394 = !DILocation(line: 54, column: 8, scope: !395)
!395 = distinct !DILexicalBlock(scope: !312, file: !236, line: 53, column: 12)
!396 = !DILocation(line: 54, column: 15, scope: !395)
!397 = !DILocation(line: 56, column: 3, scope: !309)
!398 = !DILocation(line: 57, column: 6, scope: !399)
!399 = distinct !DILexicalBlock(scope: !294, file: !236, line: 56, column: 10)
!400 = !DILocation(line: 57, column: 13, scope: !399)
!401 = !DILocation(line: 60, column: 10, scope: !235)
!402 = !DILocation(line: 60, column: 3, scope: !235)
!403 = !DILocation(line: 61, column: 1, scope: !235)
!404 = !DISubprogram(name: "libxsmm_init", scope: !405, file: !405, line: 65, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!405 = !DIFile(filename: "include/libxsmm.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "7f927a6176835647856a1da880bfa0fd")
!406 = !DISubroutineType(types: !407)
!407 = !{null}
!408 = !DISubprogram(name: "malloc", scope: !409, file: !409, line: 540, type: !410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!409 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!410 = !DISubroutineType(types: !411)
!411 = !{!195, !221}
!412 = !DISubprogram(name: "libxsmm_dnn_get_feature_map_blocks", scope: !145, file: !145, line: 958, type: !413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubroutineType(types: !414)
!414 = !{!240, !152, !152, !415, !415, !415, !165, !165}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!416 = !DISubprogram(name: "libxsmm_barrier_create", scope: !214, file: !214, line: 769, type: !417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!417 = !DISubroutineType(types: !418)
!418 = !{!212, !152, !152}
!419 = distinct !DISubprogram(name: "libxsmm_dnn_destroy_fusedbatchnorm", scope: !236, file: !236, line: 64, type: !420, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !424)
!420 = !DISubroutineType(types: !421)
!421 = !{!240, !422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!424 = !{!425, !426}
!425 = !DILocalVariable(name: "handle", arg: 1, scope: !419, file: !236, line: 64, type: !422)
!426 = !DILocalVariable(name: "status", scope: !419, file: !236, line: 65, type: !240)
!427 = !DILocation(line: 64, column: 100, scope: !419)
!428 = !DILocation(line: 65, column: 3, scope: !419)
!429 = !DILocation(line: 65, column: 21, scope: !419)
!430 = !DILocation(line: 67, column: 12, scope: !431)
!431 = distinct !DILexicalBlock(scope: !419, file: !236, line: 67, column: 7)
!432 = !DILocation(line: 67, column: 9, scope: !431)
!433 = !DILocation(line: 67, column: 7, scope: !419)
!434 = !DILocation(line: 69, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !236, line: 69, column: 9)
!436 = distinct !DILexicalBlock(scope: !431, file: !236, line: 67, column: 20)
!437 = !DILocation(line: 69, column: 17, scope: !435)
!438 = !DILocation(line: 69, column: 25, scope: !435)
!439 = !DILocation(line: 69, column: 9, scope: !436)
!440 = !DILocation(line: 69, column: 82, scope: !441)
!441 = distinct !DILexicalBlock(scope: !435, file: !236, line: 69, column: 32)
!442 = !DILocation(line: 69, column: 90, scope: !441)
!443 = !DILocation(line: 69, column: 34, scope: !441)
!444 = !DILocation(line: 69, column: 100, scope: !441)
!445 = !DILocation(line: 71, column: 59, scope: !436)
!446 = !DILocation(line: 71, column: 5, scope: !436)
!447 = !DILocation(line: 72, column: 3, scope: !436)
!448 = !DILocation(line: 73, column: 12, scope: !449)
!449 = distinct !DILexicalBlock(scope: !431, file: !236, line: 72, column: 10)
!450 = !DILocation(line: 76, column: 10, scope: !419)
!451 = !DILocation(line: 77, column: 1, scope: !419)
!452 = !DILocation(line: 76, column: 3, scope: !419)
!453 = !DISubprogram(name: "libxsmm_barrier_destroy", scope: !214, file: !214, line: 775, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !225}
!456 = !DISubprogram(name: "free", scope: !409, file: !409, line: 555, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !195}
!459 = distinct !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_create_tensor_datalayout", scope: !236, file: !236, line: 80, type: !460, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !463)
!460 = !DISubroutineType(types: !461)
!461 = !{!180, !422, !462, !239}
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!463 = !{!464, !465, !466, !467}
!464 = !DILocalVariable(name: "handle", arg: 1, scope: !459, file: !236, line: 80, type: !422)
!465 = !DILocalVariable(name: "type", arg: 2, scope: !459, file: !236, line: 80, type: !462)
!466 = !DILocalVariable(name: "status", arg: 3, scope: !459, file: !236, line: 80, type: !239)
!467 = !DILocalVariable(name: "layout", scope: !459, file: !236, line: 81, type: !180)
!468 = !DILocation(line: 80, column: 130, scope: !459)
!469 = !DILocation(line: 80, column: 168, scope: !459)
!470 = !DILocation(line: 80, column: 193, scope: !459)
!471 = !DILocation(line: 81, column: 3, scope: !459)
!472 = !DILocation(line: 81, column: 34, scope: !459)
!473 = !DILocation(line: 83, column: 4, scope: !459)
!474 = !DILocation(line: 83, column: 11, scope: !459)
!475 = !DILocation(line: 84, column: 10, scope: !459)
!476 = !DILocation(line: 86, column: 7, scope: !477)
!477 = distinct !DILexicalBlock(scope: !459, file: !236, line: 86, column: 7)
!478 = !DILocation(line: 86, column: 14, scope: !477)
!479 = !DILocation(line: 86, column: 7, scope: !459)
!480 = !DILocation(line: 87, column: 47, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !236, line: 86, column: 20)
!482 = !DILocation(line: 87, column: 12, scope: !481)
!483 = !DILocation(line: 89, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !481, file: !236, line: 89, column: 9)
!485 = !DILocation(line: 89, column: 16, scope: !484)
!486 = !DILocation(line: 89, column: 9, scope: !481)
!487 = !DILocation(line: 90, column: 14, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !236, line: 89, column: 22)
!489 = !DILocation(line: 90, column: 7, scope: !488)
!490 = !DILocation(line: 91, column: 24, scope: !488)
!491 = !DILocation(line: 91, column: 32, scope: !488)
!492 = !DILocation(line: 91, column: 37, scope: !488)
!493 = !{!329, !249, i64 60}
!494 = !DILocation(line: 91, column: 7, scope: !488)
!495 = !DILocation(line: 91, column: 15, scope: !488)
!496 = !DILocation(line: 91, column: 22, scope: !488)
!497 = !{!498, !249, i64 20}
!498 = !{!"libxsmm_dnn_tensor_datalayout", !248, i64 0, !248, i64 8, !259, i64 16, !249, i64 20, !249, i64 24, !249, i64 28}
!499 = !DILocation(line: 93, column: 13, scope: !500)
!500 = distinct !DILexicalBlock(scope: !488, file: !236, line: 93, column: 12)
!501 = !DILocation(line: 93, column: 18, scope: !500)
!502 = !DILocation(line: 93, column: 52, scope: !500)
!503 = !DILocation(line: 93, column: 56, scope: !500)
!504 = !DILocation(line: 93, column: 61, scope: !500)
!505 = !DILocation(line: 93, column: 93, scope: !500)
!506 = !DILocation(line: 93, column: 97, scope: !500)
!507 = !DILocation(line: 93, column: 102, scope: !500)
!508 = !DILocation(line: 93, column: 125, scope: !500)
!509 = !DILocation(line: 94, column: 13, scope: !500)
!510 = !DILocation(line: 94, column: 18, scope: !500)
!511 = !DILocation(line: 94, column: 52, scope: !500)
!512 = !DILocation(line: 94, column: 56, scope: !500)
!513 = !DILocation(line: 94, column: 61, scope: !500)
!514 = !DILocation(line: 94, column: 93, scope: !500)
!515 = !DILocation(line: 94, column: 97, scope: !500)
!516 = !DILocation(line: 94, column: 102, scope: !500)
!517 = !DILocation(line: 94, column: 125, scope: !500)
!518 = !DILocation(line: 95, column: 13, scope: !500)
!519 = !DILocation(line: 95, column: 18, scope: !500)
!520 = !DILocation(line: 95, column: 52, scope: !500)
!521 = !DILocation(line: 95, column: 56, scope: !500)
!522 = !DILocation(line: 95, column: 61, scope: !500)
!523 = !DILocation(line: 93, column: 12, scope: !488)
!524 = !DILocation(line: 96, column: 14, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !236, line: 96, column: 13)
!526 = distinct !DILexicalBlock(scope: !500, file: !236, line: 95, column: 131)
!527 = !DILocation(line: 96, column: 22, scope: !525)
!528 = !DILocation(line: 96, column: 27, scope: !525)
!529 = !DILocation(line: 96, column: 41, scope: !525)
!530 = !DILocation(line: 96, column: 78, scope: !525)
!531 = !DILocation(line: 96, column: 13, scope: !526)
!532 = !DILocation(line: 97, column: 18, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !236, line: 97, column: 16)
!534 = distinct !DILexicalBlock(scope: !525, file: !236, line: 96, column: 83)
!535 = !DILocation(line: 97, column: 26, scope: !533)
!536 = !DILocation(line: 97, column: 31, scope: !533)
!537 = !DILocation(line: 97, column: 43, scope: !533)
!538 = !DILocation(line: 97, column: 72, scope: !533)
!539 = !DILocation(line: 97, column: 76, scope: !533)
!540 = !DILocation(line: 97, column: 84, scope: !533)
!541 = !DILocation(line: 97, column: 89, scope: !533)
!542 = !DILocation(line: 97, column: 102, scope: !533)
!543 = !DILocation(line: 97, column: 16, scope: !534)
!544 = !DILocation(line: 98, column: 13, scope: !545)
!545 = distinct !DILexicalBlock(scope: !533, file: !236, line: 97, column: 135)
!546 = !DILocation(line: 98, column: 21, scope: !545)
!547 = !DILocation(line: 98, column: 30, scope: !545)
!548 = !{!498, !249, i64 24}
!549 = !DILocation(line: 99, column: 62, scope: !545)
!550 = !DILocation(line: 99, column: 13, scope: !545)
!551 = !DILocation(line: 99, column: 21, scope: !545)
!552 = !DILocation(line: 99, column: 30, scope: !545)
!553 = !{!498, !248, i64 0}
!554 = !DILocation(line: 100, column: 48, scope: !545)
!555 = !DILocation(line: 100, column: 13, scope: !545)
!556 = !DILocation(line: 100, column: 21, scope: !545)
!557 = !DILocation(line: 100, column: 30, scope: !545)
!558 = !{!498, !248, i64 8}
!559 = !DILocation(line: 102, column: 22, scope: !560)
!560 = distinct !DILexicalBlock(scope: !545, file: !236, line: 102, column: 17)
!561 = !DILocation(line: 102, column: 30, scope: !560)
!562 = !DILocation(line: 102, column: 19, scope: !560)
!563 = !DILocation(line: 102, column: 39, scope: !560)
!564 = !DILocation(line: 102, column: 47, scope: !560)
!565 = !DILocation(line: 102, column: 55, scope: !560)
!566 = !DILocation(line: 102, column: 44, scope: !560)
!567 = !DILocation(line: 102, column: 17, scope: !545)
!568 = !DILocation(line: 103, column: 15, scope: !569)
!569 = distinct !DILexicalBlock(scope: !560, file: !236, line: 102, column: 65)
!570 = !DILocation(line: 103, column: 23, scope: !569)
!571 = !DILocation(line: 103, column: 32, scope: !569)
!572 = !{!498, !259, i64 16}
!573 = !DILocation(line: 104, column: 15, scope: !569)
!574 = !DILocation(line: 104, column: 23, scope: !569)
!575 = !DILocation(line: 104, column: 35, scope: !569)
!576 = !DILocation(line: 105, column: 15, scope: !569)
!577 = !DILocation(line: 105, column: 23, scope: !569)
!578 = !DILocation(line: 105, column: 35, scope: !569)
!579 = !DILocation(line: 106, column: 15, scope: !569)
!580 = !DILocation(line: 106, column: 23, scope: !569)
!581 = !DILocation(line: 106, column: 35, scope: !569)
!582 = !DILocation(line: 107, column: 15, scope: !569)
!583 = !DILocation(line: 107, column: 23, scope: !569)
!584 = !DILocation(line: 107, column: 35, scope: !569)
!585 = !DILocation(line: 108, column: 15, scope: !569)
!586 = !DILocation(line: 108, column: 23, scope: !569)
!587 = !DILocation(line: 108, column: 35, scope: !569)
!588 = !DILocation(line: 109, column: 21, scope: !589)
!589 = distinct !DILexicalBlock(scope: !569, file: !236, line: 109, column: 20)
!590 = !DILocation(line: 109, column: 26, scope: !589)
!591 = !DILocation(line: 109, column: 60, scope: !589)
!592 = !DILocation(line: 109, column: 64, scope: !589)
!593 = !DILocation(line: 109, column: 69, scope: !589)
!594 = !DILocation(line: 109, column: 104, scope: !589)
!595 = !DILocation(line: 109, column: 108, scope: !589)
!596 = !DILocation(line: 109, column: 113, scope: !589)
!597 = !DILocation(line: 109, column: 135, scope: !589)
!598 = !DILocation(line: 110, column: 21, scope: !589)
!599 = !DILocation(line: 110, column: 26, scope: !589)
!600 = !DILocation(line: 110, column: 60, scope: !589)
!601 = !DILocation(line: 110, column: 64, scope: !589)
!602 = !DILocation(line: 110, column: 69, scope: !589)
!603 = !DILocation(line: 109, column: 20, scope: !569)
!604 = !DILocation(line: 111, column: 39, scope: !605)
!605 = distinct !DILexicalBlock(scope: !589, file: !236, line: 110, column: 140)
!606 = !DILocation(line: 111, column: 47, scope: !605)
!607 = !DILocation(line: 111, column: 17, scope: !605)
!608 = !DILocation(line: 111, column: 25, scope: !605)
!609 = !DILocation(line: 111, column: 37, scope: !605)
!610 = !DILocation(line: 112, column: 39, scope: !605)
!611 = !DILocation(line: 112, column: 47, scope: !605)
!612 = !DILocation(line: 112, column: 52, scope: !605)
!613 = !{!329, !259, i64 16}
!614 = !DILocation(line: 112, column: 59, scope: !605)
!615 = !DILocation(line: 112, column: 67, scope: !605)
!616 = !DILocation(line: 112, column: 72, scope: !605)
!617 = !{!329, !259, i64 32}
!618 = !DILocation(line: 112, column: 58, scope: !605)
!619 = !DILocation(line: 112, column: 54, scope: !605)
!620 = !DILocation(line: 112, column: 17, scope: !605)
!621 = !DILocation(line: 112, column: 25, scope: !605)
!622 = !DILocation(line: 112, column: 37, scope: !605)
!623 = !DILocation(line: 113, column: 39, scope: !605)
!624 = !DILocation(line: 113, column: 47, scope: !605)
!625 = !DILocation(line: 113, column: 52, scope: !605)
!626 = !{!329, !259, i64 12}
!627 = !DILocation(line: 113, column: 59, scope: !605)
!628 = !DILocation(line: 113, column: 67, scope: !605)
!629 = !DILocation(line: 113, column: 72, scope: !605)
!630 = !{!329, !259, i64 28}
!631 = !DILocation(line: 113, column: 58, scope: !605)
!632 = !DILocation(line: 113, column: 54, scope: !605)
!633 = !DILocation(line: 113, column: 17, scope: !605)
!634 = !DILocation(line: 113, column: 25, scope: !605)
!635 = !DILocation(line: 113, column: 37, scope: !605)
!636 = !DILocation(line: 114, column: 39, scope: !605)
!637 = !DILocation(line: 114, column: 47, scope: !605)
!638 = !DILocation(line: 114, column: 17, scope: !605)
!639 = !DILocation(line: 114, column: 25, scope: !605)
!640 = !DILocation(line: 114, column: 37, scope: !605)
!641 = !DILocation(line: 115, column: 39, scope: !605)
!642 = !DILocation(line: 115, column: 47, scope: !605)
!643 = !DILocation(line: 115, column: 52, scope: !605)
!644 = !DILocation(line: 115, column: 17, scope: !605)
!645 = !DILocation(line: 115, column: 25, scope: !605)
!646 = !DILocation(line: 115, column: 37, scope: !605)
!647 = !DILocation(line: 116, column: 15, scope: !605)
!648 = !DILocation(line: 116, column: 28, scope: !649)
!649 = distinct !DILexicalBlock(scope: !589, file: !236, line: 116, column: 27)
!650 = !DILocation(line: 116, column: 33, scope: !649)
!651 = !DILocation(line: 116, column: 64, scope: !649)
!652 = !DILocation(line: 116, column: 68, scope: !649)
!653 = !DILocation(line: 116, column: 73, scope: !649)
!654 = !DILocation(line: 116, column: 105, scope: !649)
!655 = !DILocation(line: 116, column: 109, scope: !649)
!656 = !DILocation(line: 116, column: 114, scope: !649)
!657 = !DILocation(line: 116, column: 27, scope: !589)
!658 = !DILocation(line: 117, column: 39, scope: !659)
!659 = distinct !DILexicalBlock(scope: !649, file: !236, line: 116, column: 139)
!660 = !DILocation(line: 117, column: 47, scope: !659)
!661 = !DILocation(line: 117, column: 17, scope: !659)
!662 = !DILocation(line: 117, column: 25, scope: !659)
!663 = !DILocation(line: 117, column: 37, scope: !659)
!664 = !DILocation(line: 118, column: 40, scope: !659)
!665 = !DILocation(line: 118, column: 48, scope: !659)
!666 = !DILocation(line: 118, column: 53, scope: !659)
!667 = !DILocation(line: 118, column: 55, scope: !659)
!668 = !DILocation(line: 118, column: 63, scope: !659)
!669 = !DILocation(line: 118, column: 68, scope: !659)
!670 = !{!329, !259, i64 24}
!671 = !DILocation(line: 118, column: 54, scope: !659)
!672 = !DILocation(line: 118, column: 76, scope: !659)
!673 = !DILocation(line: 118, column: 84, scope: !659)
!674 = !DILocation(line: 118, column: 89, scope: !659)
!675 = !{!329, !259, i64 40}
!676 = !DILocation(line: 118, column: 75, scope: !659)
!677 = !DILocation(line: 118, column: 71, scope: !659)
!678 = !DILocation(line: 118, column: 17, scope: !659)
!679 = !DILocation(line: 118, column: 25, scope: !659)
!680 = !DILocation(line: 118, column: 37, scope: !659)
!681 = !DILocation(line: 119, column: 40, scope: !659)
!682 = !DILocation(line: 119, column: 48, scope: !659)
!683 = !DILocation(line: 119, column: 53, scope: !659)
!684 = !DILocation(line: 119, column: 55, scope: !659)
!685 = !DILocation(line: 119, column: 63, scope: !659)
!686 = !DILocation(line: 119, column: 68, scope: !659)
!687 = !{!329, !259, i64 20}
!688 = !DILocation(line: 119, column: 54, scope: !659)
!689 = !DILocation(line: 119, column: 76, scope: !659)
!690 = !DILocation(line: 119, column: 84, scope: !659)
!691 = !DILocation(line: 119, column: 89, scope: !659)
!692 = !{!329, !259, i64 36}
!693 = !DILocation(line: 119, column: 75, scope: !659)
!694 = !DILocation(line: 119, column: 71, scope: !659)
!695 = !DILocation(line: 119, column: 17, scope: !659)
!696 = !DILocation(line: 119, column: 25, scope: !659)
!697 = !DILocation(line: 119, column: 37, scope: !659)
!698 = !DILocation(line: 120, column: 39, scope: !659)
!699 = !DILocation(line: 120, column: 47, scope: !659)
!700 = !DILocation(line: 120, column: 17, scope: !659)
!701 = !DILocation(line: 120, column: 25, scope: !659)
!702 = !DILocation(line: 120, column: 37, scope: !659)
!703 = !DILocation(line: 121, column: 39, scope: !659)
!704 = !DILocation(line: 121, column: 47, scope: !659)
!705 = !DILocation(line: 121, column: 52, scope: !659)
!706 = !DILocation(line: 121, column: 17, scope: !659)
!707 = !DILocation(line: 121, column: 25, scope: !659)
!708 = !DILocation(line: 121, column: 37, scope: !659)
!709 = !DILocation(line: 122, column: 15, scope: !659)
!710 = !DILocation(line: 123, column: 22, scope: !711)
!711 = distinct !DILexicalBlock(scope: !649, file: !236, line: 122, column: 22)
!712 = !DILocation(line: 123, column: 30, scope: !711)
!713 = !DILocation(line: 123, column: 17, scope: !711)
!714 = !DILocation(line: 124, column: 22, scope: !711)
!715 = !DILocation(line: 124, column: 30, scope: !711)
!716 = !DILocation(line: 124, column: 17, scope: !711)
!717 = !DILocation(line: 125, column: 22, scope: !711)
!718 = !DILocation(line: 125, column: 17, scope: !711)
!719 = !DILocation(line: 126, column: 24, scope: !711)
!720 = !DILocation(line: 127, column: 18, scope: !711)
!721 = !DILocation(line: 127, column: 25, scope: !711)
!722 = !DILocation(line: 129, column: 13, scope: !569)
!723 = !DILocation(line: 130, column: 20, scope: !724)
!724 = distinct !DILexicalBlock(scope: !560, file: !236, line: 129, column: 20)
!725 = !DILocation(line: 130, column: 15, scope: !724)
!726 = !DILocation(line: 131, column: 22, scope: !724)
!727 = !DILocation(line: 132, column: 16, scope: !724)
!728 = !DILocation(line: 132, column: 23, scope: !724)
!729 = !DILocation(line: 134, column: 11, scope: !545)
!730 = !DILocation(line: 134, column: 24, scope: !731)
!731 = distinct !DILexicalBlock(scope: !533, file: !236, line: 134, column: 23)
!732 = !DILocation(line: 134, column: 32, scope: !731)
!733 = !DILocation(line: 134, column: 37, scope: !731)
!734 = !DILocation(line: 134, column: 49, scope: !731)
!735 = !DILocation(line: 134, column: 79, scope: !731)
!736 = !DILocation(line: 134, column: 83, scope: !731)
!737 = !DILocation(line: 134, column: 91, scope: !731)
!738 = !DILocation(line: 134, column: 96, scope: !731)
!739 = !DILocation(line: 134, column: 109, scope: !731)
!740 = !DILocation(line: 134, column: 23, scope: !533)
!741 = !DILocation(line: 135, column: 13, scope: !742)
!742 = distinct !DILexicalBlock(scope: !731, file: !236, line: 134, column: 141)
!743 = !DILocation(line: 135, column: 21, scope: !742)
!744 = !DILocation(line: 135, column: 30, scope: !742)
!745 = !DILocation(line: 136, column: 62, scope: !742)
!746 = !DILocation(line: 136, column: 13, scope: !742)
!747 = !DILocation(line: 136, column: 21, scope: !742)
!748 = !DILocation(line: 136, column: 30, scope: !742)
!749 = !DILocation(line: 137, column: 48, scope: !742)
!750 = !DILocation(line: 137, column: 13, scope: !742)
!751 = !DILocation(line: 137, column: 21, scope: !742)
!752 = !DILocation(line: 137, column: 30, scope: !742)
!753 = !DILocation(line: 138, column: 22, scope: !754)
!754 = distinct !DILexicalBlock(scope: !742, file: !236, line: 138, column: 17)
!755 = !DILocation(line: 138, column: 30, scope: !754)
!756 = !DILocation(line: 138, column: 19, scope: !754)
!757 = !DILocation(line: 138, column: 39, scope: !754)
!758 = !DILocation(line: 138, column: 47, scope: !754)
!759 = !DILocation(line: 138, column: 55, scope: !754)
!760 = !DILocation(line: 138, column: 44, scope: !754)
!761 = !DILocation(line: 138, column: 17, scope: !742)
!762 = !DILocation(line: 139, column: 15, scope: !763)
!763 = distinct !DILexicalBlock(scope: !754, file: !236, line: 138, column: 65)
!764 = !DILocation(line: 139, column: 23, scope: !763)
!765 = !DILocation(line: 139, column: 32, scope: !763)
!766 = !DILocation(line: 140, column: 15, scope: !763)
!767 = !DILocation(line: 140, column: 23, scope: !763)
!768 = !DILocation(line: 140, column: 35, scope: !763)
!769 = !DILocation(line: 141, column: 15, scope: !763)
!770 = !DILocation(line: 141, column: 23, scope: !763)
!771 = !DILocation(line: 141, column: 35, scope: !763)
!772 = !DILocation(line: 142, column: 15, scope: !763)
!773 = !DILocation(line: 142, column: 23, scope: !763)
!774 = !DILocation(line: 142, column: 35, scope: !763)
!775 = !DILocation(line: 143, column: 15, scope: !763)
!776 = !DILocation(line: 143, column: 23, scope: !763)
!777 = !DILocation(line: 143, column: 35, scope: !763)
!778 = !DILocation(line: 144, column: 15, scope: !763)
!779 = !DILocation(line: 144, column: 23, scope: !763)
!780 = !DILocation(line: 144, column: 35, scope: !763)
!781 = !DILocation(line: 145, column: 21, scope: !782)
!782 = distinct !DILexicalBlock(scope: !763, file: !236, line: 145, column: 20)
!783 = !DILocation(line: 145, column: 26, scope: !782)
!784 = !DILocation(line: 145, column: 60, scope: !782)
!785 = !DILocation(line: 145, column: 64, scope: !782)
!786 = !DILocation(line: 145, column: 69, scope: !782)
!787 = !DILocation(line: 145, column: 104, scope: !782)
!788 = !DILocation(line: 145, column: 108, scope: !782)
!789 = !DILocation(line: 145, column: 113, scope: !782)
!790 = !DILocation(line: 145, column: 135, scope: !782)
!791 = !DILocation(line: 146, column: 21, scope: !782)
!792 = !DILocation(line: 146, column: 26, scope: !782)
!793 = !DILocation(line: 146, column: 60, scope: !782)
!794 = !DILocation(line: 146, column: 64, scope: !782)
!795 = !DILocation(line: 146, column: 69, scope: !782)
!796 = !DILocation(line: 145, column: 20, scope: !763)
!797 = !DILocation(line: 147, column: 39, scope: !798)
!798 = distinct !DILexicalBlock(scope: !782, file: !236, line: 146, column: 140)
!799 = !DILocation(line: 147, column: 47, scope: !798)
!800 = !DILocation(line: 147, column: 17, scope: !798)
!801 = !DILocation(line: 147, column: 25, scope: !798)
!802 = !DILocation(line: 147, column: 37, scope: !798)
!803 = !DILocation(line: 148, column: 39, scope: !798)
!804 = !DILocation(line: 148, column: 47, scope: !798)
!805 = !DILocation(line: 148, column: 52, scope: !798)
!806 = !DILocation(line: 148, column: 59, scope: !798)
!807 = !DILocation(line: 148, column: 67, scope: !798)
!808 = !DILocation(line: 148, column: 72, scope: !798)
!809 = !DILocation(line: 148, column: 58, scope: !798)
!810 = !DILocation(line: 148, column: 54, scope: !798)
!811 = !DILocation(line: 148, column: 17, scope: !798)
!812 = !DILocation(line: 148, column: 25, scope: !798)
!813 = !DILocation(line: 148, column: 37, scope: !798)
!814 = !DILocation(line: 149, column: 39, scope: !798)
!815 = !DILocation(line: 149, column: 47, scope: !798)
!816 = !DILocation(line: 149, column: 52, scope: !798)
!817 = !DILocation(line: 149, column: 59, scope: !798)
!818 = !DILocation(line: 149, column: 67, scope: !798)
!819 = !DILocation(line: 149, column: 72, scope: !798)
!820 = !DILocation(line: 149, column: 58, scope: !798)
!821 = !DILocation(line: 149, column: 54, scope: !798)
!822 = !DILocation(line: 149, column: 17, scope: !798)
!823 = !DILocation(line: 149, column: 25, scope: !798)
!824 = !DILocation(line: 149, column: 37, scope: !798)
!825 = !DILocation(line: 150, column: 39, scope: !798)
!826 = !DILocation(line: 150, column: 47, scope: !798)
!827 = !DILocation(line: 150, column: 17, scope: !798)
!828 = !DILocation(line: 150, column: 25, scope: !798)
!829 = !DILocation(line: 150, column: 37, scope: !798)
!830 = !DILocation(line: 151, column: 39, scope: !798)
!831 = !DILocation(line: 151, column: 47, scope: !798)
!832 = !DILocation(line: 151, column: 52, scope: !798)
!833 = !DILocation(line: 151, column: 17, scope: !798)
!834 = !DILocation(line: 151, column: 25, scope: !798)
!835 = !DILocation(line: 151, column: 37, scope: !798)
!836 = !DILocation(line: 152, column: 15, scope: !798)
!837 = !DILocation(line: 152, column: 28, scope: !838)
!838 = distinct !DILexicalBlock(scope: !782, file: !236, line: 152, column: 27)
!839 = !DILocation(line: 152, column: 33, scope: !838)
!840 = !DILocation(line: 152, column: 64, scope: !838)
!841 = !DILocation(line: 152, column: 68, scope: !838)
!842 = !DILocation(line: 152, column: 73, scope: !838)
!843 = !DILocation(line: 152, column: 105, scope: !838)
!844 = !DILocation(line: 152, column: 109, scope: !838)
!845 = !DILocation(line: 152, column: 114, scope: !838)
!846 = !DILocation(line: 152, column: 27, scope: !782)
!847 = !DILocation(line: 153, column: 39, scope: !848)
!848 = distinct !DILexicalBlock(scope: !838, file: !236, line: 152, column: 139)
!849 = !DILocation(line: 153, column: 47, scope: !848)
!850 = !DILocation(line: 153, column: 17, scope: !848)
!851 = !DILocation(line: 153, column: 25, scope: !848)
!852 = !DILocation(line: 153, column: 37, scope: !848)
!853 = !DILocation(line: 154, column: 40, scope: !848)
!854 = !DILocation(line: 154, column: 48, scope: !848)
!855 = !DILocation(line: 154, column: 53, scope: !848)
!856 = !DILocation(line: 154, column: 55, scope: !848)
!857 = !DILocation(line: 154, column: 63, scope: !848)
!858 = !DILocation(line: 154, column: 68, scope: !848)
!859 = !DILocation(line: 154, column: 54, scope: !848)
!860 = !DILocation(line: 154, column: 76, scope: !848)
!861 = !DILocation(line: 154, column: 84, scope: !848)
!862 = !DILocation(line: 154, column: 89, scope: !848)
!863 = !DILocation(line: 154, column: 75, scope: !848)
!864 = !DILocation(line: 154, column: 71, scope: !848)
!865 = !DILocation(line: 154, column: 17, scope: !848)
!866 = !DILocation(line: 154, column: 25, scope: !848)
!867 = !DILocation(line: 154, column: 37, scope: !848)
!868 = !DILocation(line: 155, column: 40, scope: !848)
!869 = !DILocation(line: 155, column: 48, scope: !848)
!870 = !DILocation(line: 155, column: 53, scope: !848)
!871 = !DILocation(line: 155, column: 55, scope: !848)
!872 = !DILocation(line: 155, column: 63, scope: !848)
!873 = !DILocation(line: 155, column: 68, scope: !848)
!874 = !DILocation(line: 155, column: 54, scope: !848)
!875 = !DILocation(line: 155, column: 76, scope: !848)
!876 = !DILocation(line: 155, column: 84, scope: !848)
!877 = !DILocation(line: 155, column: 89, scope: !848)
!878 = !DILocation(line: 155, column: 75, scope: !848)
!879 = !DILocation(line: 155, column: 71, scope: !848)
!880 = !DILocation(line: 155, column: 17, scope: !848)
!881 = !DILocation(line: 155, column: 25, scope: !848)
!882 = !DILocation(line: 155, column: 37, scope: !848)
!883 = !DILocation(line: 156, column: 39, scope: !848)
!884 = !DILocation(line: 156, column: 47, scope: !848)
!885 = !DILocation(line: 156, column: 17, scope: !848)
!886 = !DILocation(line: 156, column: 25, scope: !848)
!887 = !DILocation(line: 156, column: 37, scope: !848)
!888 = !DILocation(line: 157, column: 39, scope: !848)
!889 = !DILocation(line: 157, column: 47, scope: !848)
!890 = !DILocation(line: 157, column: 52, scope: !848)
!891 = !DILocation(line: 157, column: 17, scope: !848)
!892 = !DILocation(line: 157, column: 25, scope: !848)
!893 = !DILocation(line: 157, column: 37, scope: !848)
!894 = !DILocation(line: 158, column: 15, scope: !848)
!895 = !DILocation(line: 159, column: 22, scope: !896)
!896 = distinct !DILexicalBlock(scope: !838, file: !236, line: 158, column: 22)
!897 = !DILocation(line: 159, column: 30, scope: !896)
!898 = !DILocation(line: 159, column: 17, scope: !896)
!899 = !DILocation(line: 160, column: 22, scope: !896)
!900 = !DILocation(line: 160, column: 30, scope: !896)
!901 = !DILocation(line: 160, column: 17, scope: !896)
!902 = !DILocation(line: 161, column: 22, scope: !896)
!903 = !DILocation(line: 161, column: 17, scope: !896)
!904 = !DILocation(line: 162, column: 24, scope: !896)
!905 = !DILocation(line: 163, column: 18, scope: !896)
!906 = !DILocation(line: 163, column: 25, scope: !896)
!907 = !DILocation(line: 165, column: 13, scope: !763)
!908 = !DILocation(line: 166, column: 20, scope: !909)
!909 = distinct !DILexicalBlock(scope: !754, file: !236, line: 165, column: 20)
!910 = !DILocation(line: 166, column: 15, scope: !909)
!911 = !DILocation(line: 167, column: 22, scope: !909)
!912 = !DILocation(line: 168, column: 16, scope: !909)
!913 = !DILocation(line: 168, column: 23, scope: !909)
!914 = !DILocation(line: 170, column: 11, scope: !742)
!915 = !DILocation(line: 171, column: 18, scope: !916)
!916 = distinct !DILexicalBlock(scope: !731, file: !236, line: 170, column: 18)
!917 = !DILocation(line: 171, column: 13, scope: !916)
!918 = !DILocation(line: 172, column: 20, scope: !916)
!919 = !DILocation(line: 173, column: 14, scope: !916)
!920 = !DILocation(line: 173, column: 21, scope: !916)
!921 = !DILocation(line: 175, column: 9, scope: !534)
!922 = !DILocation(line: 175, column: 21, scope: !923)
!923 = distinct !DILexicalBlock(scope: !525, file: !236, line: 175, column: 20)
!924 = !DILocation(line: 175, column: 29, scope: !923)
!925 = !DILocation(line: 175, column: 34, scope: !923)
!926 = !DILocation(line: 175, column: 48, scope: !923)
!927 = !DILocation(line: 175, column: 82, scope: !923)
!928 = !DILocation(line: 175, column: 20, scope: !525)
!929 = !DILocation(line: 176, column: 18, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !236, line: 176, column: 16)
!931 = distinct !DILexicalBlock(scope: !923, file: !236, line: 175, column: 87)
!932 = !DILocation(line: 176, column: 26, scope: !930)
!933 = !DILocation(line: 176, column: 31, scope: !930)
!934 = !DILocation(line: 176, column: 43, scope: !930)
!935 = !DILocation(line: 176, column: 72, scope: !930)
!936 = !DILocation(line: 176, column: 76, scope: !930)
!937 = !DILocation(line: 176, column: 84, scope: !930)
!938 = !DILocation(line: 176, column: 89, scope: !930)
!939 = !DILocation(line: 176, column: 102, scope: !930)
!940 = !DILocation(line: 176, column: 132, scope: !930)
!941 = !DILocation(line: 177, column: 18, scope: !930)
!942 = !DILocation(line: 177, column: 26, scope: !930)
!943 = !DILocation(line: 177, column: 31, scope: !930)
!944 = !DILocation(line: 177, column: 43, scope: !930)
!945 = !DILocation(line: 177, column: 73, scope: !930)
!946 = !DILocation(line: 177, column: 77, scope: !930)
!947 = !DILocation(line: 177, column: 85, scope: !930)
!948 = !DILocation(line: 177, column: 90, scope: !930)
!949 = !DILocation(line: 177, column: 103, scope: !930)
!950 = !DILocation(line: 176, column: 16, scope: !931)
!951 = !DILocation(line: 178, column: 32, scope: !952)
!952 = distinct !DILexicalBlock(scope: !930, file: !236, line: 177, column: 139)
!953 = !DILocation(line: 178, column: 40, scope: !952)
!954 = !DILocation(line: 178, column: 45, scope: !952)
!955 = !DILocation(line: 178, column: 13, scope: !952)
!956 = !DILocation(line: 178, column: 21, scope: !952)
!957 = !DILocation(line: 178, column: 30, scope: !952)
!958 = !DILocation(line: 179, column: 62, scope: !952)
!959 = !DILocation(line: 179, column: 13, scope: !952)
!960 = !DILocation(line: 179, column: 21, scope: !952)
!961 = !DILocation(line: 179, column: 30, scope: !952)
!962 = !DILocation(line: 180, column: 48, scope: !952)
!963 = !DILocation(line: 180, column: 13, scope: !952)
!964 = !DILocation(line: 180, column: 21, scope: !952)
!965 = !DILocation(line: 180, column: 30, scope: !952)
!966 = !DILocation(line: 181, column: 22, scope: !967)
!967 = distinct !DILexicalBlock(scope: !952, file: !236, line: 181, column: 17)
!968 = !DILocation(line: 181, column: 30, scope: !967)
!969 = !DILocation(line: 181, column: 19, scope: !967)
!970 = !DILocation(line: 181, column: 39, scope: !967)
!971 = !DILocation(line: 181, column: 47, scope: !967)
!972 = !DILocation(line: 181, column: 55, scope: !967)
!973 = !DILocation(line: 181, column: 44, scope: !967)
!974 = !DILocation(line: 181, column: 17, scope: !952)
!975 = !DILocation(line: 182, column: 15, scope: !976)
!976 = distinct !DILexicalBlock(scope: !967, file: !236, line: 181, column: 65)
!977 = !DILocation(line: 182, column: 23, scope: !976)
!978 = !DILocation(line: 182, column: 32, scope: !976)
!979 = !DILocation(line: 183, column: 15, scope: !976)
!980 = !DILocation(line: 183, column: 23, scope: !976)
!981 = !DILocation(line: 183, column: 35, scope: !976)
!982 = !DILocation(line: 184, column: 15, scope: !976)
!983 = !DILocation(line: 184, column: 23, scope: !976)
!984 = !DILocation(line: 184, column: 35, scope: !976)
!985 = !DILocation(line: 185, column: 15, scope: !976)
!986 = !DILocation(line: 185, column: 23, scope: !976)
!987 = !DILocation(line: 185, column: 35, scope: !976)
!988 = !DILocation(line: 186, column: 15, scope: !976)
!989 = !DILocation(line: 186, column: 23, scope: !976)
!990 = !DILocation(line: 186, column: 35, scope: !976)
!991 = !DILocation(line: 187, column: 21, scope: !992)
!992 = distinct !DILexicalBlock(scope: !976, file: !236, line: 187, column: 20)
!993 = !DILocation(line: 187, column: 26, scope: !992)
!994 = !DILocation(line: 187, column: 60, scope: !992)
!995 = !DILocation(line: 187, column: 64, scope: !992)
!996 = !DILocation(line: 187, column: 69, scope: !992)
!997 = !DILocation(line: 187, column: 104, scope: !992)
!998 = !DILocation(line: 187, column: 108, scope: !992)
!999 = !DILocation(line: 187, column: 113, scope: !992)
!1000 = !DILocation(line: 187, column: 135, scope: !992)
!1001 = !DILocation(line: 188, column: 21, scope: !992)
!1002 = !DILocation(line: 188, column: 26, scope: !992)
!1003 = !DILocation(line: 188, column: 60, scope: !992)
!1004 = !DILocation(line: 188, column: 64, scope: !992)
!1005 = !DILocation(line: 188, column: 69, scope: !992)
!1006 = !DILocation(line: 187, column: 20, scope: !976)
!1007 = !DILocation(line: 189, column: 39, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !992, file: !236, line: 188, column: 145)
!1009 = !DILocation(line: 189, column: 47, scope: !1008)
!1010 = !DILocation(line: 189, column: 52, scope: !1008)
!1011 = !DILocation(line: 189, column: 17, scope: !1008)
!1012 = !DILocation(line: 189, column: 25, scope: !1008)
!1013 = !DILocation(line: 189, column: 37, scope: !1008)
!1014 = !DILocation(line: 190, column: 39, scope: !1008)
!1015 = !DILocation(line: 190, column: 47, scope: !1008)
!1016 = !DILocation(line: 190, column: 52, scope: !1008)
!1017 = !DILocation(line: 190, column: 59, scope: !1008)
!1018 = !DILocation(line: 190, column: 67, scope: !1008)
!1019 = !DILocation(line: 190, column: 72, scope: !1008)
!1020 = !DILocation(line: 190, column: 58, scope: !1008)
!1021 = !DILocation(line: 190, column: 54, scope: !1008)
!1022 = !DILocation(line: 190, column: 17, scope: !1008)
!1023 = !DILocation(line: 190, column: 25, scope: !1008)
!1024 = !DILocation(line: 190, column: 37, scope: !1008)
!1025 = !DILocation(line: 191, column: 39, scope: !1008)
!1026 = !DILocation(line: 191, column: 47, scope: !1008)
!1027 = !DILocation(line: 191, column: 52, scope: !1008)
!1028 = !DILocation(line: 191, column: 59, scope: !1008)
!1029 = !DILocation(line: 191, column: 67, scope: !1008)
!1030 = !DILocation(line: 191, column: 72, scope: !1008)
!1031 = !DILocation(line: 191, column: 58, scope: !1008)
!1032 = !DILocation(line: 191, column: 54, scope: !1008)
!1033 = !DILocation(line: 191, column: 17, scope: !1008)
!1034 = !DILocation(line: 191, column: 25, scope: !1008)
!1035 = !DILocation(line: 191, column: 37, scope: !1008)
!1036 = !DILocation(line: 192, column: 39, scope: !1008)
!1037 = !DILocation(line: 192, column: 47, scope: !1008)
!1038 = !DILocation(line: 192, column: 52, scope: !1008)
!1039 = !DILocation(line: 192, column: 17, scope: !1008)
!1040 = !DILocation(line: 192, column: 25, scope: !1008)
!1041 = !DILocation(line: 192, column: 37, scope: !1008)
!1042 = !DILocation(line: 193, column: 15, scope: !1008)
!1043 = !DILocation(line: 193, column: 28, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !992, file: !236, line: 193, column: 27)
!1045 = !DILocation(line: 193, column: 33, scope: !1044)
!1046 = !DILocation(line: 193, column: 64, scope: !1044)
!1047 = !DILocation(line: 193, column: 68, scope: !1044)
!1048 = !DILocation(line: 193, column: 73, scope: !1044)
!1049 = !DILocation(line: 193, column: 105, scope: !1044)
!1050 = !DILocation(line: 193, column: 109, scope: !1044)
!1051 = !DILocation(line: 193, column: 114, scope: !1044)
!1052 = !DILocation(line: 193, column: 27, scope: !992)
!1053 = !DILocation(line: 194, column: 39, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1044, file: !236, line: 193, column: 141)
!1055 = !DILocation(line: 194, column: 47, scope: !1054)
!1056 = !DILocation(line: 194, column: 52, scope: !1054)
!1057 = !DILocation(line: 194, column: 17, scope: !1054)
!1058 = !DILocation(line: 194, column: 25, scope: !1054)
!1059 = !DILocation(line: 194, column: 37, scope: !1054)
!1060 = !DILocation(line: 195, column: 40, scope: !1054)
!1061 = !DILocation(line: 195, column: 48, scope: !1054)
!1062 = !DILocation(line: 195, column: 53, scope: !1054)
!1063 = !DILocation(line: 195, column: 55, scope: !1054)
!1064 = !DILocation(line: 195, column: 63, scope: !1054)
!1065 = !DILocation(line: 195, column: 68, scope: !1054)
!1066 = !DILocation(line: 195, column: 54, scope: !1054)
!1067 = !DILocation(line: 195, column: 76, scope: !1054)
!1068 = !DILocation(line: 195, column: 84, scope: !1054)
!1069 = !DILocation(line: 195, column: 89, scope: !1054)
!1070 = !DILocation(line: 195, column: 75, scope: !1054)
!1071 = !DILocation(line: 195, column: 71, scope: !1054)
!1072 = !DILocation(line: 195, column: 17, scope: !1054)
!1073 = !DILocation(line: 195, column: 25, scope: !1054)
!1074 = !DILocation(line: 195, column: 37, scope: !1054)
!1075 = !DILocation(line: 196, column: 40, scope: !1054)
!1076 = !DILocation(line: 196, column: 48, scope: !1054)
!1077 = !DILocation(line: 196, column: 53, scope: !1054)
!1078 = !DILocation(line: 196, column: 55, scope: !1054)
!1079 = !DILocation(line: 196, column: 63, scope: !1054)
!1080 = !DILocation(line: 196, column: 68, scope: !1054)
!1081 = !DILocation(line: 196, column: 54, scope: !1054)
!1082 = !DILocation(line: 196, column: 76, scope: !1054)
!1083 = !DILocation(line: 196, column: 84, scope: !1054)
!1084 = !DILocation(line: 196, column: 89, scope: !1054)
!1085 = !DILocation(line: 196, column: 75, scope: !1054)
!1086 = !DILocation(line: 196, column: 71, scope: !1054)
!1087 = !DILocation(line: 196, column: 17, scope: !1054)
!1088 = !DILocation(line: 196, column: 25, scope: !1054)
!1089 = !DILocation(line: 196, column: 37, scope: !1054)
!1090 = !DILocation(line: 197, column: 39, scope: !1054)
!1091 = !DILocation(line: 197, column: 47, scope: !1054)
!1092 = !DILocation(line: 197, column: 52, scope: !1054)
!1093 = !DILocation(line: 197, column: 17, scope: !1054)
!1094 = !DILocation(line: 197, column: 25, scope: !1054)
!1095 = !DILocation(line: 197, column: 37, scope: !1054)
!1096 = !DILocation(line: 198, column: 15, scope: !1054)
!1097 = !DILocation(line: 199, column: 22, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1044, file: !236, line: 198, column: 22)
!1099 = !DILocation(line: 199, column: 30, scope: !1098)
!1100 = !DILocation(line: 199, column: 17, scope: !1098)
!1101 = !DILocation(line: 200, column: 22, scope: !1098)
!1102 = !DILocation(line: 200, column: 30, scope: !1098)
!1103 = !DILocation(line: 200, column: 17, scope: !1098)
!1104 = !DILocation(line: 201, column: 22, scope: !1098)
!1105 = !DILocation(line: 201, column: 17, scope: !1098)
!1106 = !DILocation(line: 202, column: 24, scope: !1098)
!1107 = !DILocation(line: 203, column: 18, scope: !1098)
!1108 = !DILocation(line: 203, column: 25, scope: !1098)
!1109 = !DILocation(line: 205, column: 13, scope: !976)
!1110 = !DILocation(line: 206, column: 11, scope: !952)
!1111 = !DILocation(line: 207, column: 18, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !930, file: !236, line: 206, column: 18)
!1113 = !DILocation(line: 207, column: 13, scope: !1112)
!1114 = !DILocation(line: 208, column: 20, scope: !1112)
!1115 = !DILocation(line: 209, column: 14, scope: !1112)
!1116 = !DILocation(line: 209, column: 21, scope: !1112)
!1117 = !DILocation(line: 211, column: 9, scope: !931)
!1118 = !DILocation(line: 212, column: 16, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !923, file: !236, line: 211, column: 16)
!1120 = !DILocation(line: 212, column: 11, scope: !1119)
!1121 = !DILocation(line: 213, column: 18, scope: !1119)
!1122 = !DILocation(line: 214, column: 12, scope: !1119)
!1123 = !DILocation(line: 214, column: 19, scope: !1119)
!1124 = !DILocation(line: 216, column: 7, scope: !526)
!1125 = !DILocation(line: 216, column: 20, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !500, file: !236, line: 216, column: 19)
!1127 = !DILocation(line: 216, column: 25, scope: !1126)
!1128 = !DILocation(line: 216, column: 63, scope: !1126)
!1129 = !DILocation(line: 216, column: 67, scope: !1126)
!1130 = !DILocation(line: 216, column: 72, scope: !1126)
!1131 = !DILocation(line: 216, column: 111, scope: !1126)
!1132 = !DILocation(line: 216, column: 115, scope: !1126)
!1133 = !DILocation(line: 216, column: 120, scope: !1126)
!1134 = !DILocation(line: 216, column: 153, scope: !1126)
!1135 = !DILocation(line: 217, column: 20, scope: !1126)
!1136 = !DILocation(line: 217, column: 25, scope: !1126)
!1137 = !DILocation(line: 217, column: 63, scope: !1126)
!1138 = !DILocation(line: 217, column: 67, scope: !1126)
!1139 = !DILocation(line: 217, column: 72, scope: !1126)
!1140 = !DILocation(line: 217, column: 111, scope: !1126)
!1141 = !DILocation(line: 217, column: 115, scope: !1126)
!1142 = !DILocation(line: 217, column: 120, scope: !1126)
!1143 = !DILocation(line: 217, column: 153, scope: !1126)
!1144 = !DILocation(line: 218, column: 20, scope: !1126)
!1145 = !DILocation(line: 218, column: 25, scope: !1126)
!1146 = !DILocation(line: 218, column: 63, scope: !1126)
!1147 = !DILocation(line: 218, column: 67, scope: !1126)
!1148 = !DILocation(line: 218, column: 72, scope: !1126)
!1149 = !DILocation(line: 218, column: 111, scope: !1126)
!1150 = !DILocation(line: 218, column: 115, scope: !1126)
!1151 = !DILocation(line: 218, column: 120, scope: !1126)
!1152 = !DILocation(line: 216, column: 19, scope: !500)
!1153 = !DILocation(line: 219, column: 9, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1126, file: !236, line: 218, column: 158)
!1155 = !DILocation(line: 219, column: 17, scope: !1154)
!1156 = !DILocation(line: 219, column: 29, scope: !1154)
!1157 = !{!498, !249, i64 28}
!1158 = !DILocation(line: 221, column: 14, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1154, file: !236, line: 221, column: 13)
!1160 = !DILocation(line: 221, column: 22, scope: !1159)
!1161 = !DILocation(line: 221, column: 27, scope: !1159)
!1162 = !DILocation(line: 221, column: 41, scope: !1159)
!1163 = !DILocation(line: 221, column: 78, scope: !1159)
!1164 = !DILocation(line: 221, column: 13, scope: !1154)
!1165 = !DILocation(line: 222, column: 16, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !236, line: 222, column: 16)
!1167 = distinct !DILexicalBlock(scope: !1159, file: !236, line: 221, column: 83)
!1168 = !DILocation(line: 222, column: 24, scope: !1166)
!1169 = !DILocation(line: 222, column: 29, scope: !1166)
!1170 = !{!329, !249, i64 56}
!1171 = !DILocation(line: 222, column: 44, scope: !1166)
!1172 = !DILocation(line: 222, column: 16, scope: !1167)
!1173 = !DILocation(line: 223, column: 32, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1166, file: !236, line: 222, column: 74)
!1175 = !DILocation(line: 223, column: 40, scope: !1174)
!1176 = !DILocation(line: 223, column: 45, scope: !1174)
!1177 = !DILocation(line: 223, column: 13, scope: !1174)
!1178 = !DILocation(line: 223, column: 21, scope: !1174)
!1179 = !DILocation(line: 223, column: 30, scope: !1174)
!1180 = !DILocation(line: 224, column: 62, scope: !1174)
!1181 = !DILocation(line: 224, column: 13, scope: !1174)
!1182 = !DILocation(line: 224, column: 21, scope: !1174)
!1183 = !DILocation(line: 224, column: 30, scope: !1174)
!1184 = !DILocation(line: 225, column: 48, scope: !1174)
!1185 = !DILocation(line: 225, column: 13, scope: !1174)
!1186 = !DILocation(line: 225, column: 21, scope: !1174)
!1187 = !DILocation(line: 225, column: 30, scope: !1174)
!1188 = !DILocation(line: 227, column: 22, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1174, file: !236, line: 227, column: 17)
!1190 = !DILocation(line: 227, column: 30, scope: !1189)
!1191 = !DILocation(line: 227, column: 19, scope: !1189)
!1192 = !DILocation(line: 227, column: 39, scope: !1189)
!1193 = !DILocation(line: 227, column: 47, scope: !1189)
!1194 = !DILocation(line: 227, column: 55, scope: !1189)
!1195 = !DILocation(line: 227, column: 44, scope: !1189)
!1196 = !DILocation(line: 227, column: 17, scope: !1174)
!1197 = !DILocation(line: 228, column: 15, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1189, file: !236, line: 227, column: 65)
!1199 = !DILocation(line: 228, column: 23, scope: !1198)
!1200 = !DILocation(line: 228, column: 32, scope: !1198)
!1201 = !DILocation(line: 229, column: 15, scope: !1198)
!1202 = !DILocation(line: 229, column: 23, scope: !1198)
!1203 = !DILocation(line: 229, column: 35, scope: !1198)
!1204 = !DILocation(line: 230, column: 15, scope: !1198)
!1205 = !DILocation(line: 230, column: 23, scope: !1198)
!1206 = !DILocation(line: 230, column: 35, scope: !1198)
!1207 = !DILocation(line: 231, column: 37, scope: !1198)
!1208 = !DILocation(line: 231, column: 45, scope: !1198)
!1209 = !DILocation(line: 231, column: 15, scope: !1198)
!1210 = !DILocation(line: 231, column: 23, scope: !1198)
!1211 = !DILocation(line: 231, column: 35, scope: !1198)
!1212 = !DILocation(line: 232, column: 37, scope: !1198)
!1213 = !DILocation(line: 232, column: 45, scope: !1198)
!1214 = !DILocation(line: 232, column: 15, scope: !1198)
!1215 = !DILocation(line: 232, column: 23, scope: !1198)
!1216 = !DILocation(line: 232, column: 35, scope: !1198)
!1217 = !DILocation(line: 233, column: 13, scope: !1198)
!1218 = !DILocation(line: 234, column: 20, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1189, file: !236, line: 233, column: 20)
!1220 = !DILocation(line: 234, column: 15, scope: !1219)
!1221 = !DILocation(line: 235, column: 22, scope: !1219)
!1222 = !DILocation(line: 236, column: 16, scope: !1219)
!1223 = !DILocation(line: 236, column: 23, scope: !1219)
!1224 = !DILocation(line: 238, column: 11, scope: !1174)
!1225 = !DILocation(line: 239, column: 18, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1166, file: !236, line: 238, column: 18)
!1227 = !DILocation(line: 239, column: 13, scope: !1226)
!1228 = !DILocation(line: 240, column: 20, scope: !1226)
!1229 = !DILocation(line: 241, column: 14, scope: !1226)
!1230 = !DILocation(line: 241, column: 21, scope: !1226)
!1231 = !DILocation(line: 243, column: 9, scope: !1167)
!1232 = !DILocation(line: 243, column: 21, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1159, file: !236, line: 243, column: 20)
!1234 = !DILocation(line: 243, column: 29, scope: !1233)
!1235 = !DILocation(line: 243, column: 34, scope: !1233)
!1236 = !DILocation(line: 243, column: 48, scope: !1233)
!1237 = !DILocation(line: 243, column: 82, scope: !1233)
!1238 = !DILocation(line: 243, column: 20, scope: !1159)
!1239 = !DILocation(line: 244, column: 16, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !236, line: 244, column: 16)
!1241 = distinct !DILexicalBlock(scope: !1233, file: !236, line: 243, column: 87)
!1242 = !DILocation(line: 244, column: 24, scope: !1240)
!1243 = !DILocation(line: 244, column: 29, scope: !1240)
!1244 = !DILocation(line: 244, column: 44, scope: !1240)
!1245 = !DILocation(line: 244, column: 16, scope: !1241)
!1246 = !DILocation(line: 245, column: 32, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !236, line: 244, column: 74)
!1248 = !DILocation(line: 245, column: 40, scope: !1247)
!1249 = !DILocation(line: 245, column: 45, scope: !1247)
!1250 = !DILocation(line: 245, column: 13, scope: !1247)
!1251 = !DILocation(line: 245, column: 21, scope: !1247)
!1252 = !DILocation(line: 245, column: 30, scope: !1247)
!1253 = !DILocation(line: 246, column: 62, scope: !1247)
!1254 = !DILocation(line: 246, column: 13, scope: !1247)
!1255 = !DILocation(line: 246, column: 21, scope: !1247)
!1256 = !DILocation(line: 246, column: 30, scope: !1247)
!1257 = !DILocation(line: 247, column: 48, scope: !1247)
!1258 = !DILocation(line: 247, column: 13, scope: !1247)
!1259 = !DILocation(line: 247, column: 21, scope: !1247)
!1260 = !DILocation(line: 247, column: 30, scope: !1247)
!1261 = !DILocation(line: 249, column: 22, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1247, file: !236, line: 249, column: 17)
!1263 = !DILocation(line: 249, column: 30, scope: !1262)
!1264 = !DILocation(line: 249, column: 19, scope: !1262)
!1265 = !DILocation(line: 249, column: 39, scope: !1262)
!1266 = !DILocation(line: 249, column: 47, scope: !1262)
!1267 = !DILocation(line: 249, column: 55, scope: !1262)
!1268 = !DILocation(line: 249, column: 44, scope: !1262)
!1269 = !DILocation(line: 249, column: 17, scope: !1247)
!1270 = !DILocation(line: 250, column: 15, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1262, file: !236, line: 249, column: 65)
!1272 = !DILocation(line: 250, column: 23, scope: !1271)
!1273 = !DILocation(line: 250, column: 32, scope: !1271)
!1274 = !DILocation(line: 251, column: 15, scope: !1271)
!1275 = !DILocation(line: 251, column: 23, scope: !1271)
!1276 = !DILocation(line: 251, column: 35, scope: !1271)
!1277 = !DILocation(line: 252, column: 37, scope: !1271)
!1278 = !DILocation(line: 252, column: 45, scope: !1271)
!1279 = !DILocation(line: 252, column: 50, scope: !1271)
!1280 = !DILocation(line: 252, column: 15, scope: !1271)
!1281 = !DILocation(line: 252, column: 23, scope: !1271)
!1282 = !DILocation(line: 252, column: 35, scope: !1271)
!1283 = !DILocation(line: 253, column: 13, scope: !1271)
!1284 = !DILocation(line: 254, column: 20, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1262, file: !236, line: 253, column: 20)
!1286 = !DILocation(line: 254, column: 15, scope: !1285)
!1287 = !DILocation(line: 255, column: 22, scope: !1285)
!1288 = !DILocation(line: 256, column: 16, scope: !1285)
!1289 = !DILocation(line: 256, column: 23, scope: !1285)
!1290 = !DILocation(line: 258, column: 11, scope: !1247)
!1291 = !DILocation(line: 259, column: 18, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1240, file: !236, line: 258, column: 18)
!1293 = !DILocation(line: 259, column: 13, scope: !1292)
!1294 = !DILocation(line: 260, column: 20, scope: !1292)
!1295 = !DILocation(line: 261, column: 14, scope: !1292)
!1296 = !DILocation(line: 261, column: 21, scope: !1292)
!1297 = !DILocation(line: 263, column: 9, scope: !1241)
!1298 = !DILocation(line: 264, column: 16, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1233, file: !236, line: 263, column: 16)
!1300 = !DILocation(line: 264, column: 11, scope: !1299)
!1301 = !DILocation(line: 265, column: 18, scope: !1299)
!1302 = !DILocation(line: 266, column: 12, scope: !1299)
!1303 = !DILocation(line: 266, column: 19, scope: !1299)
!1304 = !DILocation(line: 268, column: 7, scope: !1154)
!1305 = !DILocation(line: 268, column: 20, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1126, file: !236, line: 268, column: 19)
!1307 = !DILocation(line: 268, column: 25, scope: !1306)
!1308 = !DILocation(line: 268, column: 19, scope: !1126)
!1309 = !DILocation(line: 269, column: 9, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !236, line: 268, column: 53)
!1311 = !DILocation(line: 269, column: 17, scope: !1310)
!1312 = !DILocation(line: 269, column: 29, scope: !1310)
!1313 = !DILocation(line: 271, column: 14, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !236, line: 271, column: 13)
!1315 = !DILocation(line: 271, column: 22, scope: !1314)
!1316 = !DILocation(line: 271, column: 27, scope: !1314)
!1317 = !DILocation(line: 271, column: 41, scope: !1314)
!1318 = !DILocation(line: 271, column: 78, scope: !1314)
!1319 = !DILocation(line: 271, column: 13, scope: !1310)
!1320 = !DILocation(line: 272, column: 11, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1314, file: !236, line: 271, column: 83)
!1322 = !DILocation(line: 272, column: 19, scope: !1321)
!1323 = !DILocation(line: 272, column: 28, scope: !1321)
!1324 = !DILocation(line: 273, column: 60, scope: !1321)
!1325 = !DILocation(line: 273, column: 11, scope: !1321)
!1326 = !DILocation(line: 273, column: 19, scope: !1321)
!1327 = !DILocation(line: 273, column: 28, scope: !1321)
!1328 = !DILocation(line: 274, column: 46, scope: !1321)
!1329 = !DILocation(line: 274, column: 11, scope: !1321)
!1330 = !DILocation(line: 274, column: 19, scope: !1321)
!1331 = !DILocation(line: 274, column: 28, scope: !1321)
!1332 = !DILocation(line: 276, column: 20, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1321, file: !236, line: 276, column: 15)
!1334 = !DILocation(line: 276, column: 28, scope: !1333)
!1335 = !DILocation(line: 276, column: 17, scope: !1333)
!1336 = !DILocation(line: 276, column: 37, scope: !1333)
!1337 = !DILocation(line: 276, column: 45, scope: !1333)
!1338 = !DILocation(line: 276, column: 53, scope: !1333)
!1339 = !DILocation(line: 276, column: 42, scope: !1333)
!1340 = !DILocation(line: 276, column: 15, scope: !1321)
!1341 = !DILocation(line: 277, column: 13, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1333, file: !236, line: 276, column: 63)
!1343 = !DILocation(line: 277, column: 21, scope: !1342)
!1344 = !DILocation(line: 277, column: 30, scope: !1342)
!1345 = !DILocation(line: 278, column: 13, scope: !1342)
!1346 = !DILocation(line: 278, column: 21, scope: !1342)
!1347 = !DILocation(line: 278, column: 33, scope: !1342)
!1348 = !DILocation(line: 279, column: 13, scope: !1342)
!1349 = !DILocation(line: 279, column: 21, scope: !1342)
!1350 = !DILocation(line: 279, column: 33, scope: !1342)
!1351 = !DILocation(line: 280, column: 13, scope: !1342)
!1352 = !DILocation(line: 280, column: 21, scope: !1342)
!1353 = !DILocation(line: 280, column: 33, scope: !1342)
!1354 = !DILocation(line: 281, column: 13, scope: !1342)
!1355 = !DILocation(line: 281, column: 21, scope: !1342)
!1356 = !DILocation(line: 281, column: 33, scope: !1342)
!1357 = !DILocation(line: 282, column: 13, scope: !1342)
!1358 = !DILocation(line: 282, column: 21, scope: !1342)
!1359 = !DILocation(line: 282, column: 33, scope: !1342)
!1360 = !DILocation(line: 283, column: 35, scope: !1342)
!1361 = !DILocation(line: 283, column: 43, scope: !1342)
!1362 = !DILocation(line: 283, column: 13, scope: !1342)
!1363 = !DILocation(line: 283, column: 21, scope: !1342)
!1364 = !DILocation(line: 283, column: 33, scope: !1342)
!1365 = !DILocation(line: 284, column: 36, scope: !1342)
!1366 = !DILocation(line: 284, column: 44, scope: !1342)
!1367 = !DILocation(line: 284, column: 49, scope: !1342)
!1368 = !DILocation(line: 284, column: 51, scope: !1342)
!1369 = !DILocation(line: 284, column: 59, scope: !1342)
!1370 = !DILocation(line: 284, column: 64, scope: !1342)
!1371 = !DILocation(line: 284, column: 50, scope: !1342)
!1372 = !DILocation(line: 284, column: 72, scope: !1342)
!1373 = !DILocation(line: 284, column: 80, scope: !1342)
!1374 = !DILocation(line: 284, column: 85, scope: !1342)
!1375 = !DILocation(line: 284, column: 71, scope: !1342)
!1376 = !DILocation(line: 284, column: 67, scope: !1342)
!1377 = !DILocation(line: 284, column: 13, scope: !1342)
!1378 = !DILocation(line: 284, column: 21, scope: !1342)
!1379 = !DILocation(line: 284, column: 33, scope: !1342)
!1380 = !DILocation(line: 285, column: 36, scope: !1342)
!1381 = !DILocation(line: 285, column: 44, scope: !1342)
!1382 = !DILocation(line: 285, column: 49, scope: !1342)
!1383 = !DILocation(line: 285, column: 51, scope: !1342)
!1384 = !DILocation(line: 285, column: 59, scope: !1342)
!1385 = !DILocation(line: 285, column: 64, scope: !1342)
!1386 = !DILocation(line: 285, column: 50, scope: !1342)
!1387 = !DILocation(line: 285, column: 72, scope: !1342)
!1388 = !DILocation(line: 285, column: 80, scope: !1342)
!1389 = !DILocation(line: 285, column: 85, scope: !1342)
!1390 = !DILocation(line: 285, column: 71, scope: !1342)
!1391 = !DILocation(line: 285, column: 67, scope: !1342)
!1392 = !DILocation(line: 285, column: 13, scope: !1342)
!1393 = !DILocation(line: 285, column: 21, scope: !1342)
!1394 = !DILocation(line: 285, column: 33, scope: !1342)
!1395 = !DILocation(line: 286, column: 35, scope: !1342)
!1396 = !DILocation(line: 286, column: 43, scope: !1342)
!1397 = !DILocation(line: 286, column: 13, scope: !1342)
!1398 = !DILocation(line: 286, column: 21, scope: !1342)
!1399 = !DILocation(line: 286, column: 33, scope: !1342)
!1400 = !DILocation(line: 287, column: 35, scope: !1342)
!1401 = !DILocation(line: 287, column: 43, scope: !1342)
!1402 = !DILocation(line: 287, column: 48, scope: !1342)
!1403 = !DILocation(line: 287, column: 13, scope: !1342)
!1404 = !DILocation(line: 287, column: 21, scope: !1342)
!1405 = !DILocation(line: 287, column: 33, scope: !1342)
!1406 = !DILocation(line: 288, column: 11, scope: !1342)
!1407 = !DILocation(line: 289, column: 18, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1333, file: !236, line: 288, column: 18)
!1409 = !DILocation(line: 289, column: 13, scope: !1408)
!1410 = !DILocation(line: 290, column: 20, scope: !1408)
!1411 = !DILocation(line: 291, column: 14, scope: !1408)
!1412 = !DILocation(line: 291, column: 21, scope: !1408)
!1413 = !DILocation(line: 293, column: 9, scope: !1321)
!1414 = !DILocation(line: 293, column: 21, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1314, file: !236, line: 293, column: 20)
!1416 = !DILocation(line: 293, column: 29, scope: !1415)
!1417 = !DILocation(line: 293, column: 34, scope: !1415)
!1418 = !DILocation(line: 293, column: 48, scope: !1415)
!1419 = !DILocation(line: 293, column: 82, scope: !1415)
!1420 = !DILocation(line: 293, column: 20, scope: !1314)
!1421 = !DILocation(line: 294, column: 11, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1415, file: !236, line: 293, column: 87)
!1423 = !DILocation(line: 294, column: 19, scope: !1422)
!1424 = !DILocation(line: 294, column: 28, scope: !1422)
!1425 = !DILocation(line: 295, column: 60, scope: !1422)
!1426 = !DILocation(line: 295, column: 11, scope: !1422)
!1427 = !DILocation(line: 295, column: 19, scope: !1422)
!1428 = !DILocation(line: 295, column: 28, scope: !1422)
!1429 = !DILocation(line: 296, column: 46, scope: !1422)
!1430 = !DILocation(line: 296, column: 11, scope: !1422)
!1431 = !DILocation(line: 296, column: 19, scope: !1422)
!1432 = !DILocation(line: 296, column: 28, scope: !1422)
!1433 = !DILocation(line: 298, column: 20, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1422, file: !236, line: 298, column: 15)
!1435 = !DILocation(line: 298, column: 28, scope: !1434)
!1436 = !DILocation(line: 298, column: 17, scope: !1434)
!1437 = !DILocation(line: 298, column: 37, scope: !1434)
!1438 = !DILocation(line: 298, column: 45, scope: !1434)
!1439 = !DILocation(line: 298, column: 53, scope: !1434)
!1440 = !DILocation(line: 298, column: 42, scope: !1434)
!1441 = !DILocation(line: 298, column: 15, scope: !1422)
!1442 = !DILocation(line: 299, column: 13, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1434, file: !236, line: 298, column: 63)
!1444 = !DILocation(line: 299, column: 21, scope: !1443)
!1445 = !DILocation(line: 299, column: 30, scope: !1443)
!1446 = !DILocation(line: 300, column: 13, scope: !1443)
!1447 = !DILocation(line: 300, column: 21, scope: !1443)
!1448 = !DILocation(line: 300, column: 33, scope: !1443)
!1449 = !DILocation(line: 301, column: 13, scope: !1443)
!1450 = !DILocation(line: 301, column: 21, scope: !1443)
!1451 = !DILocation(line: 301, column: 33, scope: !1443)
!1452 = !DILocation(line: 302, column: 13, scope: !1443)
!1453 = !DILocation(line: 302, column: 21, scope: !1443)
!1454 = !DILocation(line: 302, column: 33, scope: !1443)
!1455 = !DILocation(line: 303, column: 13, scope: !1443)
!1456 = !DILocation(line: 303, column: 21, scope: !1443)
!1457 = !DILocation(line: 303, column: 33, scope: !1443)
!1458 = !DILocation(line: 304, column: 35, scope: !1443)
!1459 = !DILocation(line: 304, column: 43, scope: !1443)
!1460 = !DILocation(line: 304, column: 52, scope: !1443)
!1461 = !DILocation(line: 304, column: 60, scope: !1443)
!1462 = !DILocation(line: 304, column: 51, scope: !1443)
!1463 = !DILocation(line: 304, column: 13, scope: !1443)
!1464 = !DILocation(line: 304, column: 21, scope: !1443)
!1465 = !DILocation(line: 304, column: 33, scope: !1443)
!1466 = !DILocation(line: 305, column: 36, scope: !1443)
!1467 = !DILocation(line: 305, column: 44, scope: !1443)
!1468 = !DILocation(line: 305, column: 49, scope: !1443)
!1469 = !DILocation(line: 305, column: 51, scope: !1443)
!1470 = !DILocation(line: 305, column: 59, scope: !1443)
!1471 = !DILocation(line: 305, column: 64, scope: !1443)
!1472 = !DILocation(line: 305, column: 50, scope: !1443)
!1473 = !DILocation(line: 305, column: 72, scope: !1443)
!1474 = !DILocation(line: 305, column: 80, scope: !1443)
!1475 = !DILocation(line: 305, column: 85, scope: !1443)
!1476 = !DILocation(line: 305, column: 71, scope: !1443)
!1477 = !DILocation(line: 305, column: 67, scope: !1443)
!1478 = !DILocation(line: 305, column: 13, scope: !1443)
!1479 = !DILocation(line: 305, column: 21, scope: !1443)
!1480 = !DILocation(line: 305, column: 33, scope: !1443)
!1481 = !DILocation(line: 306, column: 36, scope: !1443)
!1482 = !DILocation(line: 306, column: 44, scope: !1443)
!1483 = !DILocation(line: 306, column: 49, scope: !1443)
!1484 = !DILocation(line: 306, column: 51, scope: !1443)
!1485 = !DILocation(line: 306, column: 59, scope: !1443)
!1486 = !DILocation(line: 306, column: 64, scope: !1443)
!1487 = !DILocation(line: 306, column: 50, scope: !1443)
!1488 = !DILocation(line: 306, column: 72, scope: !1443)
!1489 = !DILocation(line: 306, column: 80, scope: !1443)
!1490 = !DILocation(line: 306, column: 85, scope: !1443)
!1491 = !DILocation(line: 306, column: 71, scope: !1443)
!1492 = !DILocation(line: 306, column: 67, scope: !1443)
!1493 = !DILocation(line: 306, column: 13, scope: !1443)
!1494 = !DILocation(line: 306, column: 21, scope: !1443)
!1495 = !DILocation(line: 306, column: 33, scope: !1443)
!1496 = !DILocation(line: 307, column: 35, scope: !1443)
!1497 = !DILocation(line: 307, column: 43, scope: !1443)
!1498 = !DILocation(line: 307, column: 48, scope: !1443)
!1499 = !DILocation(line: 307, column: 13, scope: !1443)
!1500 = !DILocation(line: 307, column: 21, scope: !1443)
!1501 = !DILocation(line: 307, column: 33, scope: !1443)
!1502 = !DILocation(line: 308, column: 11, scope: !1443)
!1503 = !DILocation(line: 309, column: 18, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1434, file: !236, line: 308, column: 18)
!1505 = !DILocation(line: 309, column: 13, scope: !1504)
!1506 = !DILocation(line: 310, column: 20, scope: !1504)
!1507 = !DILocation(line: 311, column: 14, scope: !1504)
!1508 = !DILocation(line: 311, column: 21, scope: !1504)
!1509 = !DILocation(line: 313, column: 9, scope: !1422)
!1510 = !DILocation(line: 314, column: 16, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1415, file: !236, line: 313, column: 16)
!1512 = !DILocation(line: 314, column: 11, scope: !1511)
!1513 = !DILocation(line: 315, column: 18, scope: !1511)
!1514 = !DILocation(line: 316, column: 12, scope: !1511)
!1515 = !DILocation(line: 316, column: 19, scope: !1511)
!1516 = !DILocation(line: 319, column: 7, scope: !1310)
!1517 = !DILocation(line: 320, column: 14, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1306, file: !236, line: 319, column: 14)
!1519 = !DILocation(line: 320, column: 9, scope: !1518)
!1520 = !DILocation(line: 321, column: 16, scope: !1518)
!1521 = !DILocation(line: 322, column: 10, scope: !1518)
!1522 = !DILocation(line: 322, column: 17, scope: !1518)
!1523 = !DILocation(line: 324, column: 5, scope: !488)
!1524 = !DILocation(line: 325, column: 8, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !484, file: !236, line: 324, column: 12)
!1526 = !DILocation(line: 325, column: 15, scope: !1525)
!1527 = !DILocation(line: 327, column: 3, scope: !481)
!1528 = !DILocation(line: 329, column: 6, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !477, file: !236, line: 328, column: 8)
!1530 = !DILocation(line: 329, column: 13, scope: !1529)
!1531 = !DILocation(line: 332, column: 10, scope: !459)
!1532 = !DILocation(line: 333, column: 1, scope: !459)
!1533 = !DILocation(line: 332, column: 3, scope: !459)
!1534 = distinct !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_get_scratch_size", scope: !236, file: !236, line: 335, type: !1535, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1537)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!221, !422, !239}
!1537 = !{!1538, !1539, !1540}
!1538 = !DILocalVariable(name: "handle", arg: 1, scope: !1534, file: !236, line: 335, type: !422)
!1539 = !DILocalVariable(name: "status", arg: 2, scope: !1534, file: !236, line: 335, type: !239)
!1540 = !DILocalVariable(name: "l_scratch_size", scope: !1534, file: !236, line: 336, type: !221)
!1541 = !DILocation(line: 335, column: 98, scope: !1534)
!1542 = !DILocation(line: 335, column: 125, scope: !1534)
!1543 = !DILocation(line: 336, column: 3, scope: !1534)
!1544 = !DILocation(line: 336, column: 10, scope: !1534)
!1545 = !{!330, !330, i64 0}
!1546 = !DILocation(line: 337, column: 4, scope: !1534)
!1547 = !DILocation(line: 337, column: 11, scope: !1534)
!1548 = !DILocation(line: 339, column: 12, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1534, file: !236, line: 339, column: 7)
!1550 = !DILocation(line: 339, column: 9, scope: !1549)
!1551 = !DILocation(line: 339, column: 7, scope: !1534)
!1552 = !DILocation(line: 340, column: 22, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1549, file: !236, line: 339, column: 20)
!1554 = !DILocation(line: 340, column: 30, scope: !1553)
!1555 = !DILocation(line: 340, column: 43, scope: !1553)
!1556 = !DILocation(line: 340, column: 20, scope: !1553)
!1557 = !DILocation(line: 341, column: 3, scope: !1553)
!1558 = !DILocation(line: 342, column: 6, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1549, file: !236, line: 341, column: 10)
!1560 = !DILocation(line: 342, column: 13, scope: !1559)
!1561 = !DILocation(line: 345, column: 10, scope: !1534)
!1562 = !DILocation(line: 346, column: 1, scope: !1534)
!1563 = !DILocation(line: 345, column: 3, scope: !1534)
!1564 = distinct !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_bind_scratch", scope: !236, file: !236, line: 349, type: !1565, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1569)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!240, !141, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1569 = !{!1570, !1571, !1572, !1573, !1574}
!1570 = !DILocalVariable(name: "handle", arg: 1, scope: !1564, file: !236, line: 349, type: !141)
!1571 = !DILocalVariable(name: "scratch", arg: 2, scope: !1564, file: !236, line: 349, type: !1567)
!1572 = !DILocalVariable(name: "status", scope: !1564, file: !236, line: 350, type: !240)
!1573 = !DILocalVariable(name: "address", scope: !1564, file: !236, line: 351, type: !227)
!1574 = !DILocalVariable(name: "offset", scope: !1564, file: !236, line: 352, type: !221)
!1575 = !DILocation(line: 349, column: 99, scope: !1564)
!1576 = !DILocation(line: 349, column: 119, scope: !1564)
!1577 = !DILocation(line: 350, column: 3, scope: !1564)
!1578 = !DILocation(line: 350, column: 21, scope: !1564)
!1579 = !DILocation(line: 351, column: 3, scope: !1564)
!1580 = !DILocation(line: 351, column: 13, scope: !1564)
!1581 = !DILocation(line: 351, column: 34, scope: !1564)
!1582 = !DILocation(line: 351, column: 23, scope: !1564)
!1583 = !DILocation(line: 352, column: 3, scope: !1564)
!1584 = !DILocation(line: 352, column: 10, scope: !1564)
!1585 = !DILocation(line: 354, column: 7, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1564, file: !236, line: 354, column: 7)
!1587 = !DILocation(line: 354, column: 15, scope: !1586)
!1588 = !DILocation(line: 354, column: 7, scope: !1564)
!1589 = !DILocation(line: 355, column: 12, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !236, line: 354, column: 21)
!1591 = !DILocation(line: 356, column: 12, scope: !1590)
!1592 = !DILocation(line: 356, column: 5, scope: !1590)
!1593 = !DILocation(line: 359, column: 12, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1564, file: !236, line: 359, column: 7)
!1595 = !DILocation(line: 359, column: 9, scope: !1594)
!1596 = !DILocation(line: 359, column: 7, scope: !1564)
!1597 = !DILocation(line: 361, column: 9, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !236, line: 361, column: 9)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !236, line: 359, column: 20)
!1600 = !DILocation(line: 361, column: 17, scope: !1598)
!1601 = !DILocation(line: 361, column: 22, scope: !1598)
!1602 = !DILocation(line: 361, column: 9, scope: !1599)
!1603 = !DILocation(line: 362, column: 32, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1598, file: !236, line: 361, column: 28)
!1605 = !DILocation(line: 362, column: 25, scope: !1604)
!1606 = !DILocation(line: 362, column: 7, scope: !1604)
!1607 = !DILocation(line: 362, column: 15, scope: !1604)
!1608 = !DILocation(line: 362, column: 23, scope: !1604)
!1609 = !{!329, !248, i64 216}
!1610 = !DILocation(line: 363, column: 5, scope: !1604)
!1611 = !DILocation(line: 364, column: 22, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1598, file: !236, line: 363, column: 12)
!1613 = !DILocation(line: 364, column: 30, scope: !1612)
!1614 = !DILocation(line: 364, column: 20, scope: !1612)
!1615 = !DILocation(line: 364, column: 14, scope: !1612)
!1616 = !DILocation(line: 365, column: 33, scope: !1612)
!1617 = !DILocation(line: 365, column: 41, scope: !1612)
!1618 = !DILocation(line: 365, column: 40, scope: !1612)
!1619 = !DILocation(line: 365, column: 25, scope: !1612)
!1620 = !DILocation(line: 365, column: 7, scope: !1612)
!1621 = !DILocation(line: 365, column: 15, scope: !1612)
!1622 = !DILocation(line: 365, column: 23, scope: !1612)
!1623 = !DILocation(line: 367, column: 3, scope: !1599)
!1624 = !DILocation(line: 368, column: 12, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1594, file: !236, line: 367, column: 10)
!1626 = !DILocation(line: 371, column: 10, scope: !1564)
!1627 = !DILocation(line: 371, column: 3, scope: !1564)
!1628 = !DILocation(line: 372, column: 1, scope: !1564)
!1629 = distinct !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_release_scratch", scope: !236, file: !236, line: 375, type: !1630, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1632)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!240, !141}
!1632 = !{!1633, !1634}
!1633 = !DILocalVariable(name: "handle", arg: 1, scope: !1629, file: !236, line: 375, type: !141)
!1634 = !DILocalVariable(name: "status", scope: !1629, file: !236, line: 376, type: !240)
!1635 = !DILocation(line: 375, column: 102, scope: !1629)
!1636 = !DILocation(line: 376, column: 3, scope: !1629)
!1637 = !DILocation(line: 376, column: 21, scope: !1629)
!1638 = !DILocation(line: 378, column: 12, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1629, file: !236, line: 378, column: 7)
!1640 = !DILocation(line: 378, column: 9, scope: !1639)
!1641 = !DILocation(line: 378, column: 7, scope: !1629)
!1642 = !DILocation(line: 379, column: 5, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !236, line: 378, column: 20)
!1644 = !DILocation(line: 379, column: 13, scope: !1643)
!1645 = !DILocation(line: 379, column: 21, scope: !1643)
!1646 = !DILocation(line: 380, column: 3, scope: !1643)
!1647 = !DILocation(line: 381, column: 12, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1639, file: !236, line: 380, column: 10)
!1649 = !DILocation(line: 384, column: 10, scope: !1629)
!1650 = !DILocation(line: 385, column: 1, scope: !1629)
!1651 = !DILocation(line: 384, column: 3, scope: !1629)
!1652 = distinct !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_bind_tensor", scope: !236, file: !236, line: 388, type: !1653, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1657)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!240, !141, !1655, !462}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!1657 = !{!1658, !1659, !1660, !1661, !1662}
!1658 = !DILocalVariable(name: "handle", arg: 1, scope: !1652, file: !236, line: 388, type: !141)
!1659 = !DILocalVariable(name: "tensor", arg: 2, scope: !1652, file: !236, line: 388, type: !1655)
!1660 = !DILocalVariable(name: "type", arg: 3, scope: !1652, file: !236, line: 388, type: !462)
!1661 = !DILocalVariable(name: "status", scope: !1652, file: !236, line: 389, type: !240)
!1662 = !DILocalVariable(name: "handle_layout", scope: !1663, file: !236, line: 404, type: !180)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !236, line: 403, column: 35)
!1664 = distinct !DILexicalBlock(scope: !1652, file: !236, line: 403, column: 7)
!1665 = !DILocation(line: 388, column: 98, scope: !1652)
!1666 = !DILocation(line: 388, column: 132, scope: !1652)
!1667 = !DILocation(line: 388, column: 170, scope: !1652)
!1668 = !DILocation(line: 389, column: 3, scope: !1652)
!1669 = !DILocation(line: 389, column: 21, scope: !1652)
!1670 = !DILocation(line: 392, column: 9, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1652, file: !236, line: 392, column: 8)
!1672 = !DILocation(line: 392, column: 14, scope: !1671)
!1673 = !DILocation(line: 392, column: 52, scope: !1671)
!1674 = !DILocation(line: 392, column: 56, scope: !1671)
!1675 = !DILocation(line: 392, column: 61, scope: !1671)
!1676 = !DILocation(line: 392, column: 100, scope: !1671)
!1677 = !DILocation(line: 393, column: 9, scope: !1671)
!1678 = !DILocation(line: 393, column: 14, scope: !1671)
!1679 = !DILocation(line: 393, column: 52, scope: !1671)
!1680 = !DILocation(line: 393, column: 56, scope: !1671)
!1681 = !DILocation(line: 393, column: 61, scope: !1671)
!1682 = !DILocation(line: 393, column: 100, scope: !1671)
!1683 = !DILocation(line: 394, column: 9, scope: !1671)
!1684 = !DILocation(line: 394, column: 14, scope: !1671)
!1685 = !DILocation(line: 394, column: 52, scope: !1671)
!1686 = !DILocation(line: 394, column: 56, scope: !1671)
!1687 = !DILocation(line: 394, column: 61, scope: !1671)
!1688 = !DILocation(line: 394, column: 100, scope: !1671)
!1689 = !DILocation(line: 395, column: 9, scope: !1671)
!1690 = !DILocation(line: 395, column: 14, scope: !1671)
!1691 = !DILocation(line: 395, column: 52, scope: !1671)
!1692 = !DILocation(line: 395, column: 56, scope: !1671)
!1693 = !DILocation(line: 395, column: 61, scope: !1671)
!1694 = !DILocation(line: 395, column: 100, scope: !1671)
!1695 = !DILocation(line: 396, column: 9, scope: !1671)
!1696 = !DILocation(line: 396, column: 14, scope: !1671)
!1697 = !DILocation(line: 396, column: 52, scope: !1671)
!1698 = !DILocation(line: 396, column: 56, scope: !1671)
!1699 = !DILocation(line: 396, column: 61, scope: !1671)
!1700 = !DILocation(line: 396, column: 100, scope: !1671)
!1701 = !DILocation(line: 397, column: 9, scope: !1671)
!1702 = !DILocation(line: 397, column: 14, scope: !1671)
!1703 = !DILocation(line: 397, column: 52, scope: !1671)
!1704 = !DILocation(line: 397, column: 56, scope: !1671)
!1705 = !DILocation(line: 397, column: 61, scope: !1671)
!1706 = !DILocation(line: 397, column: 100, scope: !1671)
!1707 = !DILocation(line: 398, column: 9, scope: !1671)
!1708 = !DILocation(line: 398, column: 14, scope: !1671)
!1709 = !DILocation(line: 398, column: 52, scope: !1671)
!1710 = !DILocation(line: 398, column: 56, scope: !1671)
!1711 = !DILocation(line: 398, column: 61, scope: !1671)
!1712 = !DILocation(line: 392, column: 8, scope: !1652)
!1713 = !DILocation(line: 399, column: 12, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1671, file: !236, line: 398, column: 106)
!1715 = !DILocation(line: 400, column: 12, scope: !1714)
!1716 = !DILocation(line: 400, column: 5, scope: !1714)
!1717 = !DILocation(line: 403, column: 7, scope: !1664)
!1718 = !DILocation(line: 403, column: 14, scope: !1664)
!1719 = !DILocation(line: 403, column: 19, scope: !1664)
!1720 = !DILocation(line: 403, column: 22, scope: !1664)
!1721 = !DILocation(line: 403, column: 29, scope: !1664)
!1722 = !DILocation(line: 403, column: 7, scope: !1652)
!1723 = !DILocation(line: 404, column: 5, scope: !1663)
!1724 = !DILocation(line: 404, column: 36, scope: !1663)
!1725 = !DILocation(line: 404, column: 104, scope: !1663)
!1726 = !DILocation(line: 404, column: 112, scope: !1663)
!1727 = !DILocation(line: 404, column: 52, scope: !1663)
!1728 = !DILocation(line: 406, column: 48, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1663, file: !236, line: 406, column: 10)
!1730 = !DILocation(line: 406, column: 63, scope: !1729)
!1731 = !DILocation(line: 406, column: 71, scope: !1729)
!1732 = !{!1733, !248, i64 0}
!1733 = !{!"libxsmm_dnn_tensor", !248, i64 0, !248, i64 8, !249, i64 16}
!1734 = !DILocation(line: 406, column: 10, scope: !1729)
!1735 = !DILocation(line: 406, column: 88, scope: !1729)
!1736 = !DILocation(line: 406, column: 10, scope: !1663)
!1737 = !DILocation(line: 407, column: 12, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !236, line: 407, column: 12)
!1739 = distinct !DILexicalBlock(scope: !1729, file: !236, line: 406, column: 95)
!1740 = !DILocation(line: 407, column: 17, scope: !1738)
!1741 = !DILocation(line: 407, column: 12, scope: !1739)
!1742 = !DILocation(line: 408, column: 50, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1738, file: !236, line: 407, column: 48)
!1744 = !DILocation(line: 408, column: 9, scope: !1743)
!1745 = !DILocation(line: 408, column: 17, scope: !1743)
!1746 = !DILocation(line: 408, column: 27, scope: !1743)
!1747 = !{!329, !248, i64 72}
!1748 = !DILocation(line: 409, column: 7, scope: !1743)
!1749 = !DILocation(line: 409, column: 19, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1738, file: !236, line: 409, column: 19)
!1751 = !DILocation(line: 409, column: 24, scope: !1750)
!1752 = !DILocation(line: 409, column: 19, scope: !1738)
!1753 = !DILocation(line: 410, column: 51, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !236, line: 409, column: 56)
!1755 = !DILocation(line: 410, column: 9, scope: !1754)
!1756 = !DILocation(line: 410, column: 17, scope: !1754)
!1757 = !DILocation(line: 410, column: 28, scope: !1754)
!1758 = !{!329, !248, i64 88}
!1759 = !DILocation(line: 411, column: 7, scope: !1754)
!1760 = !DILocation(line: 411, column: 19, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1750, file: !236, line: 411, column: 19)
!1762 = !DILocation(line: 411, column: 24, scope: !1761)
!1763 = !DILocation(line: 411, column: 19, scope: !1750)
!1764 = !DILocation(line: 412, column: 51, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !236, line: 411, column: 56)
!1766 = !DILocation(line: 412, column: 9, scope: !1765)
!1767 = !DILocation(line: 412, column: 17, scope: !1765)
!1768 = !DILocation(line: 412, column: 28, scope: !1765)
!1769 = !{!329, !248, i64 80}
!1770 = !DILocation(line: 413, column: 7, scope: !1765)
!1771 = !DILocation(line: 413, column: 19, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1761, file: !236, line: 413, column: 19)
!1773 = !DILocation(line: 413, column: 24, scope: !1772)
!1774 = !DILocation(line: 413, column: 19, scope: !1761)
!1775 = !DILocation(line: 414, column: 52, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !236, line: 413, column: 57)
!1777 = !DILocation(line: 414, column: 9, scope: !1776)
!1778 = !DILocation(line: 414, column: 17, scope: !1776)
!1779 = !DILocation(line: 414, column: 29, scope: !1776)
!1780 = !{!329, !248, i64 96}
!1781 = !DILocation(line: 415, column: 7, scope: !1776)
!1782 = !DILocation(line: 415, column: 19, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1772, file: !236, line: 415, column: 19)
!1784 = !DILocation(line: 415, column: 24, scope: !1783)
!1785 = !DILocation(line: 415, column: 19, scope: !1772)
!1786 = !DILocation(line: 416, column: 48, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !236, line: 415, column: 59)
!1788 = !DILocation(line: 416, column: 9, scope: !1787)
!1789 = !DILocation(line: 416, column: 17, scope: !1787)
!1790 = !DILocation(line: 416, column: 25, scope: !1787)
!1791 = !{!329, !248, i64 104}
!1792 = !DILocation(line: 417, column: 7, scope: !1787)
!1793 = !DILocation(line: 417, column: 19, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1783, file: !236, line: 417, column: 19)
!1795 = !DILocation(line: 417, column: 24, scope: !1794)
!1796 = !DILocation(line: 417, column: 19, scope: !1783)
!1797 = !DILocation(line: 418, column: 49, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1794, file: !236, line: 417, column: 60)
!1799 = !DILocation(line: 418, column: 9, scope: !1798)
!1800 = !DILocation(line: 418, column: 17, scope: !1798)
!1801 = !DILocation(line: 418, column: 26, scope: !1798)
!1802 = !{!329, !248, i64 112}
!1803 = !DILocation(line: 419, column: 7, scope: !1798)
!1804 = !DILocation(line: 419, column: 19, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1794, file: !236, line: 419, column: 19)
!1806 = !DILocation(line: 419, column: 24, scope: !1805)
!1807 = !DILocation(line: 419, column: 19, scope: !1794)
!1808 = !DILocation(line: 420, column: 49, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !236, line: 419, column: 62)
!1810 = !DILocation(line: 420, column: 9, scope: !1809)
!1811 = !DILocation(line: 420, column: 17, scope: !1809)
!1812 = !DILocation(line: 420, column: 26, scope: !1809)
!1813 = !{!329, !248, i64 120}
!1814 = !DILocation(line: 421, column: 7, scope: !1809)
!1815 = !DILocation(line: 421, column: 19, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1805, file: !236, line: 421, column: 19)
!1817 = !DILocation(line: 421, column: 24, scope: !1816)
!1818 = !DILocation(line: 421, column: 19, scope: !1805)
!1819 = !DILocation(line: 422, column: 50, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !236, line: 421, column: 63)
!1821 = !DILocation(line: 422, column: 9, scope: !1820)
!1822 = !DILocation(line: 422, column: 17, scope: !1820)
!1823 = !DILocation(line: 422, column: 27, scope: !1820)
!1824 = !{!329, !248, i64 136}
!1825 = !DILocation(line: 423, column: 7, scope: !1820)
!1826 = !DILocation(line: 423, column: 19, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1816, file: !236, line: 423, column: 19)
!1828 = !DILocation(line: 423, column: 24, scope: !1827)
!1829 = !DILocation(line: 423, column: 19, scope: !1816)
!1830 = !DILocation(line: 424, column: 50, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !236, line: 423, column: 63)
!1832 = !DILocation(line: 424, column: 9, scope: !1831)
!1833 = !DILocation(line: 424, column: 17, scope: !1831)
!1834 = !DILocation(line: 424, column: 27, scope: !1831)
!1835 = !{!329, !248, i64 128}
!1836 = !DILocation(line: 425, column: 7, scope: !1831)
!1837 = !DILocation(line: 425, column: 19, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1827, file: !236, line: 425, column: 19)
!1839 = !DILocation(line: 425, column: 24, scope: !1838)
!1840 = !DILocation(line: 425, column: 19, scope: !1827)
!1841 = !DILocation(line: 426, column: 51, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1838, file: !236, line: 425, column: 64)
!1843 = !DILocation(line: 426, column: 9, scope: !1842)
!1844 = !DILocation(line: 426, column: 17, scope: !1842)
!1845 = !DILocation(line: 426, column: 28, scope: !1842)
!1846 = !{!329, !248, i64 144}
!1847 = !DILocation(line: 427, column: 7, scope: !1842)
!1848 = !DILocation(line: 427, column: 19, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1838, file: !236, line: 427, column: 19)
!1850 = !DILocation(line: 427, column: 24, scope: !1849)
!1851 = !DILocation(line: 427, column: 19, scope: !1838)
!1852 = !DILocation(line: 428, column: 49, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !236, line: 427, column: 59)
!1854 = !DILocation(line: 428, column: 9, scope: !1853)
!1855 = !DILocation(line: 428, column: 17, scope: !1853)
!1856 = !DILocation(line: 428, column: 26, scope: !1853)
!1857 = !{!329, !248, i64 152}
!1858 = !DILocation(line: 429, column: 7, scope: !1853)
!1859 = !DILocation(line: 429, column: 19, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1849, file: !236, line: 429, column: 19)
!1861 = !DILocation(line: 429, column: 24, scope: !1860)
!1862 = !DILocation(line: 429, column: 19, scope: !1849)
!1863 = !DILocation(line: 430, column: 50, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !236, line: 429, column: 59)
!1865 = !DILocation(line: 430, column: 9, scope: !1864)
!1866 = !DILocation(line: 430, column: 17, scope: !1864)
!1867 = !DILocation(line: 430, column: 27, scope: !1864)
!1868 = !{!329, !248, i64 160}
!1869 = !DILocation(line: 431, column: 7, scope: !1864)
!1870 = !DILocation(line: 431, column: 19, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1860, file: !236, line: 431, column: 19)
!1872 = !DILocation(line: 431, column: 24, scope: !1871)
!1873 = !DILocation(line: 431, column: 19, scope: !1860)
!1874 = !DILocation(line: 432, column: 49, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !236, line: 431, column: 58)
!1876 = !DILocation(line: 432, column: 9, scope: !1875)
!1877 = !DILocation(line: 432, column: 17, scope: !1875)
!1878 = !DILocation(line: 432, column: 26, scope: !1875)
!1879 = !{!329, !248, i64 168}
!1880 = !DILocation(line: 433, column: 7, scope: !1875)
!1881 = !DILocation(line: 433, column: 19, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1871, file: !236, line: 433, column: 19)
!1883 = !DILocation(line: 433, column: 24, scope: !1882)
!1884 = !DILocation(line: 433, column: 19, scope: !1871)
!1885 = !DILocation(line: 434, column: 49, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1882, file: !236, line: 433, column: 51)
!1887 = !DILocation(line: 434, column: 9, scope: !1886)
!1888 = !DILocation(line: 434, column: 17, scope: !1886)
!1889 = !DILocation(line: 434, column: 26, scope: !1886)
!1890 = !{!329, !248, i64 176}
!1891 = !DILocation(line: 435, column: 7, scope: !1886)
!1892 = !DILocation(line: 438, column: 5, scope: !1739)
!1893 = !DILocation(line: 439, column: 14, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1729, file: !236, line: 438, column: 12)
!1895 = !DILocation(line: 442, column: 44, scope: !1663)
!1896 = !DILocation(line: 442, column: 5, scope: !1663)
!1897 = !DILocation(line: 443, column: 3, scope: !1664)
!1898 = !DILocation(line: 443, column: 3, scope: !1663)
!1899 = !DILocation(line: 445, column: 12, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1664, file: !236, line: 444, column: 8)
!1901 = !DILocation(line: 448, column: 10, scope: !1652)
!1902 = !DILocation(line: 448, column: 3, scope: !1652)
!1903 = !DILocation(line: 449, column: 1, scope: !1652)
!1904 = !DISubprogram(name: "libxsmm_dnn_compare_tensor_datalayout", scope: !59, file: !59, line: 177, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!5, !1907, !1907, !239}
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!1909 = !DISubprogram(name: "libxsmm_dnn_destroy_tensor_datalayout", scope: !59, file: !59, line: 176, type: !1910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!240, !180}
!1912 = distinct !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_get_tensor", scope: !236, file: !236, line: 452, type: !1913, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!175, !141, !462, !239}
!1915 = !{!1916, !1917, !1918, !1919}
!1916 = !DILocalVariable(name: "handle", arg: 1, scope: !1912, file: !236, line: 452, type: !141)
!1917 = !DILocalVariable(name: "type", arg: 2, scope: !1912, file: !236, line: 452, type: !462)
!1918 = !DILocalVariable(name: "status", arg: 3, scope: !1912, file: !236, line: 452, type: !239)
!1919 = !DILocalVariable(name: "return_tensor", scope: !1912, file: !236, line: 453, type: !175)
!1920 = !DILocation(line: 452, column: 99, scope: !1912)
!1921 = !DILocation(line: 452, column: 137, scope: !1912)
!1922 = !DILocation(line: 452, column: 162, scope: !1912)
!1923 = !DILocation(line: 453, column: 3, scope: !1912)
!1924 = !DILocation(line: 453, column: 23, scope: !1912)
!1925 = !DILocation(line: 455, column: 4, scope: !1912)
!1926 = !DILocation(line: 455, column: 11, scope: !1912)
!1927 = !DILocation(line: 458, column: 9, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1912, file: !236, line: 458, column: 8)
!1929 = !DILocation(line: 458, column: 14, scope: !1928)
!1930 = !DILocation(line: 458, column: 52, scope: !1928)
!1931 = !DILocation(line: 458, column: 56, scope: !1928)
!1932 = !DILocation(line: 458, column: 61, scope: !1928)
!1933 = !DILocation(line: 458, column: 100, scope: !1928)
!1934 = !DILocation(line: 459, column: 9, scope: !1928)
!1935 = !DILocation(line: 459, column: 14, scope: !1928)
!1936 = !DILocation(line: 459, column: 52, scope: !1928)
!1937 = !DILocation(line: 459, column: 56, scope: !1928)
!1938 = !DILocation(line: 459, column: 61, scope: !1928)
!1939 = !DILocation(line: 459, column: 100, scope: !1928)
!1940 = !DILocation(line: 460, column: 9, scope: !1928)
!1941 = !DILocation(line: 460, column: 14, scope: !1928)
!1942 = !DILocation(line: 460, column: 52, scope: !1928)
!1943 = !DILocation(line: 460, column: 56, scope: !1928)
!1944 = !DILocation(line: 460, column: 61, scope: !1928)
!1945 = !DILocation(line: 460, column: 100, scope: !1928)
!1946 = !DILocation(line: 461, column: 9, scope: !1928)
!1947 = !DILocation(line: 461, column: 14, scope: !1928)
!1948 = !DILocation(line: 461, column: 52, scope: !1928)
!1949 = !DILocation(line: 461, column: 56, scope: !1928)
!1950 = !DILocation(line: 461, column: 61, scope: !1928)
!1951 = !DILocation(line: 461, column: 100, scope: !1928)
!1952 = !DILocation(line: 462, column: 9, scope: !1928)
!1953 = !DILocation(line: 462, column: 14, scope: !1928)
!1954 = !DILocation(line: 462, column: 52, scope: !1928)
!1955 = !DILocation(line: 462, column: 56, scope: !1928)
!1956 = !DILocation(line: 462, column: 61, scope: !1928)
!1957 = !DILocation(line: 462, column: 100, scope: !1928)
!1958 = !DILocation(line: 463, column: 9, scope: !1928)
!1959 = !DILocation(line: 463, column: 14, scope: !1928)
!1960 = !DILocation(line: 463, column: 52, scope: !1928)
!1961 = !DILocation(line: 463, column: 56, scope: !1928)
!1962 = !DILocation(line: 463, column: 61, scope: !1928)
!1963 = !DILocation(line: 463, column: 100, scope: !1928)
!1964 = !DILocation(line: 464, column: 9, scope: !1928)
!1965 = !DILocation(line: 464, column: 14, scope: !1928)
!1966 = !DILocation(line: 464, column: 52, scope: !1928)
!1967 = !DILocation(line: 464, column: 56, scope: !1928)
!1968 = !DILocation(line: 464, column: 61, scope: !1928)
!1969 = !DILocation(line: 458, column: 8, scope: !1912)
!1970 = !DILocation(line: 465, column: 6, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1928, file: !236, line: 464, column: 105)
!1972 = !DILocation(line: 465, column: 13, scope: !1971)
!1973 = !DILocation(line: 466, column: 12, scope: !1971)
!1974 = !DILocation(line: 466, column: 5, scope: !1971)
!1975 = !DILocation(line: 469, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1912, file: !236, line: 469, column: 7)
!1977 = !DILocation(line: 469, column: 14, scope: !1976)
!1978 = !DILocation(line: 469, column: 7, scope: !1912)
!1979 = !DILocation(line: 470, column: 10, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !236, line: 470, column: 10)
!1981 = distinct !DILexicalBlock(scope: !1976, file: !236, line: 469, column: 20)
!1982 = !DILocation(line: 470, column: 15, scope: !1980)
!1983 = !DILocation(line: 470, column: 10, scope: !1981)
!1984 = !DILocation(line: 471, column: 23, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1980, file: !236, line: 470, column: 46)
!1986 = !DILocation(line: 471, column: 31, scope: !1985)
!1987 = !DILocation(line: 471, column: 21, scope: !1985)
!1988 = !DILocation(line: 472, column: 5, scope: !1985)
!1989 = !DILocation(line: 472, column: 17, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1980, file: !236, line: 472, column: 17)
!1991 = !DILocation(line: 472, column: 22, scope: !1990)
!1992 = !DILocation(line: 472, column: 17, scope: !1980)
!1993 = !DILocation(line: 473, column: 23, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !236, line: 472, column: 54)
!1995 = !DILocation(line: 473, column: 31, scope: !1994)
!1996 = !DILocation(line: 473, column: 21, scope: !1994)
!1997 = !DILocation(line: 474, column: 5, scope: !1994)
!1998 = !DILocation(line: 474, column: 17, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1990, file: !236, line: 474, column: 17)
!2000 = !DILocation(line: 474, column: 22, scope: !1999)
!2001 = !DILocation(line: 474, column: 17, scope: !1990)
!2002 = !DILocation(line: 475, column: 23, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1999, file: !236, line: 474, column: 54)
!2004 = !DILocation(line: 475, column: 31, scope: !2003)
!2005 = !DILocation(line: 475, column: 21, scope: !2003)
!2006 = !DILocation(line: 476, column: 5, scope: !2003)
!2007 = !DILocation(line: 476, column: 17, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1999, file: !236, line: 476, column: 17)
!2009 = !DILocation(line: 476, column: 22, scope: !2008)
!2010 = !DILocation(line: 476, column: 17, scope: !1999)
!2011 = !DILocation(line: 477, column: 23, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !236, line: 476, column: 55)
!2013 = !DILocation(line: 477, column: 31, scope: !2012)
!2014 = !DILocation(line: 477, column: 21, scope: !2012)
!2015 = !DILocation(line: 478, column: 5, scope: !2012)
!2016 = !DILocation(line: 478, column: 17, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2008, file: !236, line: 478, column: 17)
!2018 = !DILocation(line: 478, column: 22, scope: !2017)
!2019 = !DILocation(line: 478, column: 17, scope: !2008)
!2020 = !DILocation(line: 479, column: 23, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !236, line: 478, column: 57)
!2022 = !DILocation(line: 479, column: 31, scope: !2021)
!2023 = !DILocation(line: 479, column: 21, scope: !2021)
!2024 = !DILocation(line: 480, column: 5, scope: !2021)
!2025 = !DILocation(line: 480, column: 17, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2017, file: !236, line: 480, column: 17)
!2027 = !DILocation(line: 480, column: 22, scope: !2026)
!2028 = !DILocation(line: 480, column: 17, scope: !2017)
!2029 = !DILocation(line: 481, column: 23, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !236, line: 480, column: 58)
!2031 = !DILocation(line: 481, column: 31, scope: !2030)
!2032 = !DILocation(line: 481, column: 21, scope: !2030)
!2033 = !DILocation(line: 482, column: 5, scope: !2030)
!2034 = !DILocation(line: 482, column: 17, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2026, file: !236, line: 482, column: 17)
!2036 = !DILocation(line: 482, column: 22, scope: !2035)
!2037 = !DILocation(line: 482, column: 17, scope: !2026)
!2038 = !DILocation(line: 483, column: 23, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !236, line: 482, column: 60)
!2040 = !DILocation(line: 483, column: 31, scope: !2039)
!2041 = !DILocation(line: 483, column: 21, scope: !2039)
!2042 = !DILocation(line: 484, column: 5, scope: !2039)
!2043 = !DILocation(line: 484, column: 17, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2035, file: !236, line: 484, column: 17)
!2045 = !DILocation(line: 484, column: 22, scope: !2044)
!2046 = !DILocation(line: 484, column: 17, scope: !2035)
!2047 = !DILocation(line: 485, column: 23, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !236, line: 484, column: 61)
!2049 = !DILocation(line: 485, column: 31, scope: !2048)
!2050 = !DILocation(line: 485, column: 21, scope: !2048)
!2051 = !DILocation(line: 486, column: 5, scope: !2048)
!2052 = !DILocation(line: 486, column: 17, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2044, file: !236, line: 486, column: 17)
!2054 = !DILocation(line: 486, column: 22, scope: !2053)
!2055 = !DILocation(line: 486, column: 17, scope: !2044)
!2056 = !DILocation(line: 487, column: 23, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !236, line: 486, column: 61)
!2058 = !DILocation(line: 487, column: 31, scope: !2057)
!2059 = !DILocation(line: 487, column: 21, scope: !2057)
!2060 = !DILocation(line: 488, column: 5, scope: !2057)
!2061 = !DILocation(line: 488, column: 17, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2053, file: !236, line: 488, column: 17)
!2063 = !DILocation(line: 488, column: 22, scope: !2062)
!2064 = !DILocation(line: 488, column: 17, scope: !2053)
!2065 = !DILocation(line: 489, column: 23, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2062, file: !236, line: 488, column: 62)
!2067 = !DILocation(line: 489, column: 31, scope: !2066)
!2068 = !DILocation(line: 489, column: 21, scope: !2066)
!2069 = !DILocation(line: 490, column: 5, scope: !2066)
!2070 = !DILocation(line: 490, column: 17, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2062, file: !236, line: 490, column: 17)
!2072 = !DILocation(line: 490, column: 22, scope: !2071)
!2073 = !DILocation(line: 490, column: 17, scope: !2062)
!2074 = !DILocation(line: 491, column: 23, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2071, file: !236, line: 490, column: 57)
!2076 = !DILocation(line: 491, column: 31, scope: !2075)
!2077 = !DILocation(line: 491, column: 21, scope: !2075)
!2078 = !DILocation(line: 492, column: 5, scope: !2075)
!2079 = !DILocation(line: 492, column: 17, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2071, file: !236, line: 492, column: 17)
!2081 = !DILocation(line: 492, column: 22, scope: !2080)
!2082 = !DILocation(line: 492, column: 17, scope: !2071)
!2083 = !DILocation(line: 493, column: 23, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !236, line: 492, column: 57)
!2085 = !DILocation(line: 493, column: 31, scope: !2084)
!2086 = !DILocation(line: 493, column: 21, scope: !2084)
!2087 = !DILocation(line: 494, column: 5, scope: !2084)
!2088 = !DILocation(line: 494, column: 17, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2080, file: !236, line: 494, column: 17)
!2090 = !DILocation(line: 494, column: 22, scope: !2089)
!2091 = !DILocation(line: 494, column: 17, scope: !2080)
!2092 = !DILocation(line: 495, column: 23, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !236, line: 494, column: 56)
!2094 = !DILocation(line: 495, column: 31, scope: !2093)
!2095 = !DILocation(line: 495, column: 21, scope: !2093)
!2096 = !DILocation(line: 496, column: 5, scope: !2093)
!2097 = !DILocation(line: 496, column: 17, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2089, file: !236, line: 496, column: 17)
!2099 = !DILocation(line: 496, column: 22, scope: !2098)
!2100 = !DILocation(line: 496, column: 17, scope: !2089)
!2101 = !DILocation(line: 497, column: 23, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !236, line: 496, column: 49)
!2103 = !DILocation(line: 497, column: 31, scope: !2102)
!2104 = !DILocation(line: 497, column: 21, scope: !2102)
!2105 = !DILocation(line: 498, column: 5, scope: !2102)
!2106 = !DILocation(line: 501, column: 3, scope: !1981)
!2107 = !DILocation(line: 502, column: 6, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1976, file: !236, line: 501, column: 10)
!2109 = !DILocation(line: 502, column: 13, scope: !2108)
!2110 = !DILocation(line: 505, column: 10, scope: !1912)
!2111 = !DILocation(line: 505, column: 3, scope: !1912)
!2112 = !DILocation(line: 506, column: 1, scope: !1912)
!2113 = distinct !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_release_tensor", scope: !236, file: !236, line: 509, type: !2114, scopeLine: 509, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!240, !141, !462}
!2116 = !{!2117, !2118, !2119}
!2117 = !DILocalVariable(name: "handle", arg: 1, scope: !2113, file: !236, line: 509, type: !141)
!2118 = !DILocalVariable(name: "type", arg: 2, scope: !2113, file: !236, line: 509, type: !462)
!2119 = !DILocalVariable(name: "status", scope: !2113, file: !236, line: 510, type: !240)
!2120 = !DILocation(line: 509, column: 101, scope: !2113)
!2121 = !DILocation(line: 509, column: 139, scope: !2113)
!2122 = !DILocation(line: 510, column: 3, scope: !2113)
!2123 = !DILocation(line: 510, column: 21, scope: !2113)
!2124 = !DILocation(line: 513, column: 9, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2113, file: !236, line: 513, column: 8)
!2126 = !DILocation(line: 513, column: 14, scope: !2125)
!2127 = !DILocation(line: 513, column: 52, scope: !2125)
!2128 = !DILocation(line: 513, column: 56, scope: !2125)
!2129 = !DILocation(line: 513, column: 61, scope: !2125)
!2130 = !DILocation(line: 513, column: 100, scope: !2125)
!2131 = !DILocation(line: 514, column: 9, scope: !2125)
!2132 = !DILocation(line: 514, column: 14, scope: !2125)
!2133 = !DILocation(line: 514, column: 52, scope: !2125)
!2134 = !DILocation(line: 514, column: 56, scope: !2125)
!2135 = !DILocation(line: 514, column: 61, scope: !2125)
!2136 = !DILocation(line: 514, column: 100, scope: !2125)
!2137 = !DILocation(line: 515, column: 9, scope: !2125)
!2138 = !DILocation(line: 515, column: 14, scope: !2125)
!2139 = !DILocation(line: 515, column: 52, scope: !2125)
!2140 = !DILocation(line: 515, column: 56, scope: !2125)
!2141 = !DILocation(line: 515, column: 61, scope: !2125)
!2142 = !DILocation(line: 515, column: 100, scope: !2125)
!2143 = !DILocation(line: 516, column: 9, scope: !2125)
!2144 = !DILocation(line: 516, column: 14, scope: !2125)
!2145 = !DILocation(line: 516, column: 52, scope: !2125)
!2146 = !DILocation(line: 516, column: 56, scope: !2125)
!2147 = !DILocation(line: 516, column: 61, scope: !2125)
!2148 = !DILocation(line: 516, column: 100, scope: !2125)
!2149 = !DILocation(line: 517, column: 9, scope: !2125)
!2150 = !DILocation(line: 517, column: 14, scope: !2125)
!2151 = !DILocation(line: 517, column: 52, scope: !2125)
!2152 = !DILocation(line: 517, column: 56, scope: !2125)
!2153 = !DILocation(line: 517, column: 61, scope: !2125)
!2154 = !DILocation(line: 517, column: 100, scope: !2125)
!2155 = !DILocation(line: 518, column: 9, scope: !2125)
!2156 = !DILocation(line: 518, column: 14, scope: !2125)
!2157 = !DILocation(line: 518, column: 52, scope: !2125)
!2158 = !DILocation(line: 518, column: 56, scope: !2125)
!2159 = !DILocation(line: 518, column: 61, scope: !2125)
!2160 = !DILocation(line: 518, column: 100, scope: !2125)
!2161 = !DILocation(line: 519, column: 9, scope: !2125)
!2162 = !DILocation(line: 519, column: 14, scope: !2125)
!2163 = !DILocation(line: 519, column: 52, scope: !2125)
!2164 = !DILocation(line: 519, column: 56, scope: !2125)
!2165 = !DILocation(line: 519, column: 61, scope: !2125)
!2166 = !DILocation(line: 513, column: 8, scope: !2113)
!2167 = !DILocation(line: 520, column: 12, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2125, file: !236, line: 519, column: 105)
!2169 = !DILocation(line: 521, column: 12, scope: !2168)
!2170 = !DILocation(line: 521, column: 5, scope: !2168)
!2171 = !DILocation(line: 524, column: 7, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2113, file: !236, line: 524, column: 7)
!2173 = !DILocation(line: 524, column: 14, scope: !2172)
!2174 = !DILocation(line: 524, column: 7, scope: !2113)
!2175 = !DILocation(line: 525, column: 10, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !236, line: 525, column: 10)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !236, line: 524, column: 20)
!2178 = !DILocation(line: 525, column: 15, scope: !2176)
!2179 = !DILocation(line: 525, column: 10, scope: !2177)
!2180 = !DILocation(line: 526, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2176, file: !236, line: 525, column: 46)
!2182 = !DILocation(line: 526, column: 15, scope: !2181)
!2183 = !DILocation(line: 526, column: 25, scope: !2181)
!2184 = !DILocation(line: 527, column: 5, scope: !2181)
!2185 = !DILocation(line: 527, column: 17, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2176, file: !236, line: 527, column: 17)
!2187 = !DILocation(line: 527, column: 22, scope: !2186)
!2188 = !DILocation(line: 527, column: 17, scope: !2176)
!2189 = !DILocation(line: 528, column: 7, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !236, line: 527, column: 54)
!2191 = !DILocation(line: 528, column: 15, scope: !2190)
!2192 = !DILocation(line: 528, column: 26, scope: !2190)
!2193 = !DILocation(line: 529, column: 5, scope: !2190)
!2194 = !DILocation(line: 529, column: 17, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2186, file: !236, line: 529, column: 17)
!2196 = !DILocation(line: 529, column: 22, scope: !2195)
!2197 = !DILocation(line: 529, column: 17, scope: !2186)
!2198 = !DILocation(line: 530, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !236, line: 529, column: 54)
!2200 = !DILocation(line: 530, column: 15, scope: !2199)
!2201 = !DILocation(line: 530, column: 26, scope: !2199)
!2202 = !DILocation(line: 531, column: 5, scope: !2199)
!2203 = !DILocation(line: 531, column: 17, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2195, file: !236, line: 531, column: 17)
!2205 = !DILocation(line: 531, column: 22, scope: !2204)
!2206 = !DILocation(line: 531, column: 17, scope: !2195)
!2207 = !DILocation(line: 532, column: 7, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !236, line: 531, column: 55)
!2209 = !DILocation(line: 532, column: 15, scope: !2208)
!2210 = !DILocation(line: 532, column: 27, scope: !2208)
!2211 = !DILocation(line: 533, column: 5, scope: !2208)
!2212 = !DILocation(line: 533, column: 17, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2204, file: !236, line: 533, column: 17)
!2214 = !DILocation(line: 533, column: 22, scope: !2213)
!2215 = !DILocation(line: 533, column: 17, scope: !2204)
!2216 = !DILocation(line: 534, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !236, line: 533, column: 57)
!2218 = !DILocation(line: 534, column: 15, scope: !2217)
!2219 = !DILocation(line: 534, column: 23, scope: !2217)
!2220 = !DILocation(line: 535, column: 5, scope: !2217)
!2221 = !DILocation(line: 535, column: 17, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2213, file: !236, line: 535, column: 17)
!2223 = !DILocation(line: 535, column: 22, scope: !2222)
!2224 = !DILocation(line: 535, column: 17, scope: !2213)
!2225 = !DILocation(line: 536, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !236, line: 535, column: 58)
!2227 = !DILocation(line: 536, column: 15, scope: !2226)
!2228 = !DILocation(line: 536, column: 24, scope: !2226)
!2229 = !DILocation(line: 537, column: 5, scope: !2226)
!2230 = !DILocation(line: 537, column: 17, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2222, file: !236, line: 537, column: 17)
!2232 = !DILocation(line: 537, column: 22, scope: !2231)
!2233 = !DILocation(line: 537, column: 17, scope: !2222)
!2234 = !DILocation(line: 538, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2231, file: !236, line: 537, column: 60)
!2236 = !DILocation(line: 538, column: 15, scope: !2235)
!2237 = !DILocation(line: 538, column: 24, scope: !2235)
!2238 = !DILocation(line: 539, column: 5, scope: !2235)
!2239 = !DILocation(line: 539, column: 17, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2231, file: !236, line: 539, column: 17)
!2241 = !DILocation(line: 539, column: 22, scope: !2240)
!2242 = !DILocation(line: 539, column: 17, scope: !2231)
!2243 = !DILocation(line: 540, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !236, line: 539, column: 61)
!2245 = !DILocation(line: 540, column: 15, scope: !2244)
!2246 = !DILocation(line: 540, column: 25, scope: !2244)
!2247 = !DILocation(line: 541, column: 5, scope: !2244)
!2248 = !DILocation(line: 541, column: 17, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2240, file: !236, line: 541, column: 17)
!2250 = !DILocation(line: 541, column: 22, scope: !2249)
!2251 = !DILocation(line: 541, column: 17, scope: !2240)
!2252 = !DILocation(line: 542, column: 7, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !236, line: 541, column: 61)
!2254 = !DILocation(line: 542, column: 15, scope: !2253)
!2255 = !DILocation(line: 542, column: 25, scope: !2253)
!2256 = !DILocation(line: 543, column: 5, scope: !2253)
!2257 = !DILocation(line: 543, column: 17, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2249, file: !236, line: 543, column: 17)
!2259 = !DILocation(line: 543, column: 22, scope: !2258)
!2260 = !DILocation(line: 543, column: 17, scope: !2249)
!2261 = !DILocation(line: 544, column: 7, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2258, file: !236, line: 543, column: 62)
!2263 = !DILocation(line: 544, column: 15, scope: !2262)
!2264 = !DILocation(line: 544, column: 26, scope: !2262)
!2265 = !DILocation(line: 545, column: 5, scope: !2262)
!2266 = !DILocation(line: 545, column: 17, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2258, file: !236, line: 545, column: 17)
!2268 = !DILocation(line: 545, column: 22, scope: !2267)
!2269 = !DILocation(line: 545, column: 17, scope: !2258)
!2270 = !DILocation(line: 546, column: 7, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !236, line: 545, column: 57)
!2272 = !DILocation(line: 546, column: 15, scope: !2271)
!2273 = !DILocation(line: 546, column: 24, scope: !2271)
!2274 = !DILocation(line: 547, column: 5, scope: !2271)
!2275 = !DILocation(line: 547, column: 17, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2267, file: !236, line: 547, column: 17)
!2277 = !DILocation(line: 547, column: 22, scope: !2276)
!2278 = !DILocation(line: 547, column: 17, scope: !2267)
!2279 = !DILocation(line: 548, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2276, file: !236, line: 547, column: 57)
!2281 = !DILocation(line: 548, column: 15, scope: !2280)
!2282 = !DILocation(line: 548, column: 25, scope: !2280)
!2283 = !DILocation(line: 549, column: 5, scope: !2280)
!2284 = !DILocation(line: 549, column: 17, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2276, file: !236, line: 549, column: 17)
!2286 = !DILocation(line: 549, column: 22, scope: !2285)
!2287 = !DILocation(line: 549, column: 17, scope: !2276)
!2288 = !DILocation(line: 550, column: 7, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2285, file: !236, line: 549, column: 56)
!2290 = !DILocation(line: 550, column: 15, scope: !2289)
!2291 = !DILocation(line: 550, column: 24, scope: !2289)
!2292 = !DILocation(line: 551, column: 5, scope: !2289)
!2293 = !DILocation(line: 551, column: 17, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2285, file: !236, line: 551, column: 17)
!2295 = !DILocation(line: 551, column: 22, scope: !2294)
!2296 = !DILocation(line: 551, column: 17, scope: !2285)
!2297 = !DILocation(line: 552, column: 7, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2294, file: !236, line: 551, column: 49)
!2299 = !DILocation(line: 552, column: 15, scope: !2298)
!2300 = !DILocation(line: 552, column: 24, scope: !2298)
!2301 = !DILocation(line: 553, column: 5, scope: !2298)
!2302 = !DILocation(line: 556, column: 3, scope: !2177)
!2303 = !DILocation(line: 557, column: 12, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2172, file: !236, line: 556, column: 10)
!2305 = !DILocation(line: 560, column: 10, scope: !2113)
!2306 = !DILocation(line: 560, column: 3, scope: !2113)
!2307 = !DILocation(line: 561, column: 1, scope: !2113)
!2308 = distinct !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_execute_st", scope: !236, file: !236, line: 564, type: !2309, scopeLine: 565, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2312)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!240, !141, !2311, !152, !152}
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "libxsmm_dnn_compute_kind", file: !133, line: 82, baseType: !132)
!2312 = !{!2313, !2314, !2315, !2316, !2317}
!2313 = !DILocalVariable(name: "handle", arg: 1, scope: !2308, file: !236, line: 564, type: !141)
!2314 = !DILocalVariable(name: "kind", arg: 2, scope: !2308, file: !236, line: 564, type: !2311)
!2315 = !DILocalVariable(name: "start_thread", arg: 3, scope: !2308, file: !236, line: 565, type: !152)
!2316 = !DILocalVariable(name: "tid", arg: 4, scope: !2308, file: !236, line: 565, type: !152)
!2317 = !DILocalVariable(name: "status", scope: !2308, file: !236, line: 566, type: !240)
!2318 = !DILocation(line: 564, column: 97, scope: !2308)
!2319 = !DILocation(line: 564, column: 130, scope: !2308)
!2320 = !DILocation(line: 565, column: 19, scope: !2308)
!2321 = !DILocation(line: 565, column: 49, scope: !2308)
!2322 = !DILocation(line: 566, column: 3, scope: !2308)
!2323 = !DILocation(line: 566, column: 21, scope: !2308)
!2324 = !DILocation(line: 568, column: 12, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2308, file: !236, line: 568, column: 7)
!2326 = !DILocation(line: 568, column: 9, scope: !2325)
!2327 = !DILocation(line: 568, column: 7, scope: !2308)
!2328 = !DILocation(line: 569, column: 13, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !236, line: 568, column: 20)
!2330 = !DILocation(line: 569, column: 5, scope: !2329)
!2331 = !DILocation(line: 571, column: 17, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !236, line: 570, column: 42)
!2333 = distinct !DILexicalBlock(scope: !2329, file: !236, line: 569, column: 19)
!2334 = !DILocation(line: 571, column: 25, scope: !2332)
!2335 = !DILocation(line: 571, column: 30, scope: !2332)
!2336 = !DILocation(line: 571, column: 9, scope: !2332)
!2337 = !DILocation(line: 573, column: 64, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !236, line: 572, column: 51)
!2339 = distinct !DILexicalBlock(scope: !2332, file: !236, line: 571, column: 45)
!2340 = !DILocation(line: 573, column: 72, scope: !2338)
!2341 = !DILocation(line: 573, column: 86, scope: !2338)
!2342 = !DILocation(line: 573, column: 22, scope: !2338)
!2343 = !DILocation(line: 573, column: 20, scope: !2338)
!2344 = !DILocation(line: 574, column: 13, scope: !2339)
!2345 = !DILocation(line: 576, column: 20, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2339, file: !236, line: 575, column: 20)
!2347 = !DILocation(line: 578, column: 9, scope: !2339)
!2348 = !DILocation(line: 579, column: 9, scope: !2333)
!2349 = !DILocation(line: 581, column: 17, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2333, file: !236, line: 580, column: 42)
!2351 = !DILocation(line: 581, column: 25, scope: !2350)
!2352 = !DILocation(line: 581, column: 30, scope: !2350)
!2353 = !DILocation(line: 581, column: 9, scope: !2350)
!2354 = !DILocation(line: 583, column: 64, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !236, line: 582, column: 51)
!2356 = distinct !DILexicalBlock(scope: !2350, file: !236, line: 581, column: 45)
!2357 = !DILocation(line: 583, column: 72, scope: !2355)
!2358 = !DILocation(line: 583, column: 86, scope: !2355)
!2359 = !DILocation(line: 583, column: 22, scope: !2355)
!2360 = !DILocation(line: 583, column: 20, scope: !2355)
!2361 = !DILocation(line: 584, column: 13, scope: !2356)
!2362 = !DILocation(line: 586, column: 20, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2356, file: !236, line: 585, column: 20)
!2364 = !DILocation(line: 588, column: 9, scope: !2356)
!2365 = !DILocation(line: 589, column: 9, scope: !2333)
!2366 = !DILocation(line: 591, column: 16, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2333, file: !236, line: 590, column: 16)
!2368 = !DILocation(line: 593, column: 5, scope: !2333)
!2369 = !DILocation(line: 594, column: 3, scope: !2329)
!2370 = !DILocation(line: 596, column: 12, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2325, file: !236, line: 595, column: 8)
!2372 = !DILocation(line: 599, column: 10, scope: !2308)
!2373 = !DILocation(line: 600, column: 1, scope: !2308)
!2374 = !DILocation(line: 599, column: 3, scope: !2308)
!2375 = !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_st_fwd_custom", scope: !2376, file: !2376, line: 16, type: !2377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2376 = !DIFile(filename: "./src/libxsmm_dnn_fusedbatchnorm_forward.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "d528e06b7d67d07a7bd2c0cc1a1aa3a8")
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!240, !141, !152, !152}
!2379 = !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_st_bwd_custom", scope: !2380, file: !2380, line: 16, type: !2377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2380 = !DIFile(filename: "./src/libxsmm_dnn_fusedbatchnorm_backward.h", directory: "/local-ssd/libxsmm-t7eg5i7tythe7won6zb52a67jlb725co-build/aidengro/spack-stage-libxsmm-1.17-t7eg5i7tythe7won6zb52a67jlb725co/spack-src", checksumkind: CSK_MD5, checksum: "7b93478603b46f0d0f4868dee1da7799")
!2381 = distinct !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_reduce_stats_st", scope: !236, file: !236, line: 603, type: !2382, scopeLine: 604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2385)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!240, !2384, !152, !2311, !152, !152}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!2385 = !{!2386, !2387, !2388, !2389, !2390, !2391}
!2386 = !DILocalVariable(name: "handles", arg: 1, scope: !2381, file: !236, line: 603, type: !2384)
!2387 = !DILocalVariable(name: "num_handles", arg: 2, scope: !2381, file: !236, line: 603, type: !152)
!2388 = !DILocalVariable(name: "kind", arg: 3, scope: !2381, file: !236, line: 603, type: !2311)
!2389 = !DILocalVariable(name: "start_thread", arg: 4, scope: !2381, file: !236, line: 604, type: !152)
!2390 = !DILocalVariable(name: "tid", arg: 5, scope: !2381, file: !236, line: 604, type: !152)
!2391 = !DILocalVariable(name: "status", scope: !2381, file: !236, line: 605, type: !240)
!2392 = !DILocation(line: 603, column: 103, scope: !2381)
!2393 = !DILocation(line: 603, column: 116, scope: !2381)
!2394 = !DILocation(line: 603, column: 154, scope: !2381)
!2395 = !DILocation(line: 604, column: 19, scope: !2381)
!2396 = !DILocation(line: 604, column: 49, scope: !2381)
!2397 = !DILocation(line: 605, column: 3, scope: !2381)
!2398 = !DILocation(line: 605, column: 21, scope: !2381)
!2399 = !DILocation(line: 607, column: 12, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2381, file: !236, line: 607, column: 7)
!2401 = !DILocation(line: 607, column: 9, scope: !2400)
!2402 = !DILocation(line: 607, column: 20, scope: !2400)
!2403 = !DILocation(line: 607, column: 23, scope: !2400)
!2404 = !DILocation(line: 607, column: 35, scope: !2400)
!2405 = !DILocation(line: 607, column: 7, scope: !2381)
!2406 = !DILocation(line: 608, column: 13, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2400, file: !236, line: 607, column: 40)
!2408 = !DILocation(line: 608, column: 5, scope: !2407)
!2409 = !DILocation(line: 610, column: 17, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !236, line: 609, column: 42)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !236, line: 608, column: 19)
!2412 = !DILocation(line: 610, column: 29, scope: !2410)
!2413 = !DILocation(line: 610, column: 34, scope: !2410)
!2414 = !DILocation(line: 610, column: 9, scope: !2410)
!2415 = !DILocation(line: 612, column: 77, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !236, line: 611, column: 51)
!2417 = distinct !DILexicalBlock(scope: !2410, file: !236, line: 610, column: 49)
!2418 = !DILocation(line: 612, column: 86, scope: !2416)
!2419 = !DILocation(line: 612, column: 99, scope: !2416)
!2420 = !DILocation(line: 612, column: 113, scope: !2416)
!2421 = !DILocation(line: 612, column: 22, scope: !2416)
!2422 = !DILocation(line: 612, column: 20, scope: !2416)
!2423 = !DILocation(line: 613, column: 13, scope: !2417)
!2424 = !DILocation(line: 615, column: 20, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2417, file: !236, line: 614, column: 20)
!2426 = !DILocation(line: 617, column: 9, scope: !2417)
!2427 = !DILocation(line: 618, column: 9, scope: !2411)
!2428 = !DILocation(line: 620, column: 17, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2411, file: !236, line: 619, column: 42)
!2430 = !DILocation(line: 620, column: 29, scope: !2429)
!2431 = !DILocation(line: 620, column: 34, scope: !2429)
!2432 = !DILocation(line: 620, column: 9, scope: !2429)
!2433 = !DILocation(line: 622, column: 77, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !236, line: 621, column: 51)
!2435 = distinct !DILexicalBlock(scope: !2429, file: !236, line: 620, column: 49)
!2436 = !DILocation(line: 622, column: 86, scope: !2434)
!2437 = !DILocation(line: 622, column: 99, scope: !2434)
!2438 = !DILocation(line: 622, column: 113, scope: !2434)
!2439 = !DILocation(line: 622, column: 22, scope: !2434)
!2440 = !DILocation(line: 622, column: 20, scope: !2434)
!2441 = !DILocation(line: 623, column: 13, scope: !2435)
!2442 = !DILocation(line: 625, column: 20, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2435, file: !236, line: 624, column: 20)
!2444 = !DILocation(line: 627, column: 9, scope: !2435)
!2445 = !DILocation(line: 628, column: 9, scope: !2411)
!2446 = !DILocation(line: 630, column: 16, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2411, file: !236, line: 629, column: 16)
!2448 = !DILocation(line: 632, column: 5, scope: !2411)
!2449 = !DILocation(line: 633, column: 3, scope: !2407)
!2450 = !DILocation(line: 635, column: 12, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2400, file: !236, line: 634, column: 8)
!2452 = !DILocation(line: 638, column: 10, scope: !2381)
!2453 = !DILocation(line: 639, column: 1, scope: !2381)
!2454 = !DILocation(line: 638, column: 3, scope: !2381)
!2455 = !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_reduce_stats_st_fwd_custom", scope: !2376, file: !2376, line: 20, type: !2456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!240, !2384, !152, !152, !152}
!2458 = !DISubprogram(name: "libxsmm_dnn_fusedbatchnorm_reduce_stats_st_bwd_custom", scope: !2380, file: !2380, line: 20, type: !2456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

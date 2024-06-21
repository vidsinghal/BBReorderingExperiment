; ModuleID = 'samples/626.bc'
source_filename = "src/core/spacepeak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtSpacepeakLogger = type { i64, i64, ptr }

@peaklogger = internal global ptr null, align 8, !dbg !0
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !8
@.str.1 = private unnamed_addr constant [12 x i8] c"!peaklogger\00", align 1, !dbg !14
@__func__.gt_spacepeak_init = private unnamed_addr constant [18 x i8] c"gt_spacepeak_init\00", align 1, !dbg !19
@.str.2 = private unnamed_addr constant [21 x i8] c"src/core/spacepeak.c\00", align 1, !dbg !25
@.str.3 = private unnamed_addr constant [11 x i8] c"peaklogger\00", align 1, !dbg !30
@__func__.gt_spacepeak_add = private unnamed_addr constant [17 x i8] c"gt_spacepeak_add\00", align 1, !dbg !35
@.str.4 = private unnamed_addr constant [42 x i8] c"peaklogger && size <= peaklogger->current\00", align 1, !dbg !40
@__func__.gt_spacepeak_free = private unnamed_addr constant [18 x i8] c"gt_spacepeak_free\00", align 1, !dbg !45
@__func__.gt_spacepeak_get_space_peak = private unnamed_addr constant [28 x i8] c"gt_spacepeak_get_space_peak\00", align 1, !dbg !47
@__func__.gt_spacepeak_show_space_peak = private unnamed_addr constant [29 x i8] c"gt_spacepeak_show_space_peak\00", align 1, !dbg !52
@.str.5 = private unnamed_addr constant [42 x i8] c"# combined space peak in megabytes: %.2f\0A\00", align 1, !dbg !57

; Function Attrs: nounwind uwtable
define void @gt_spacepeak_init() #0 !dbg !79 {
entry:
  br label %do.body, !dbg !82

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @peaklogger, align 8, !dbg !83, !tbaa !86
  %tobool = icmp ne ptr %0, null, !dbg !83
  br i1 %tobool, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !91, !tbaa !86
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_spacepeak_init, ptr noundef @.str.2, i32 noundef 35), !dbg !91
  call void @abort() #6, !dbg !91
  unreachable, !dbg !91

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !90

do.end:                                           ; preds = %if.end
  %call1 = call noalias ptr @malloc(i64 noundef 24) #7, !dbg !93
  store ptr %call1, ptr @peaklogger, align 8, !dbg !94, !tbaa !86
  %call2 = call i64 @gt_ma_get_space_current(), !dbg !95
  %2 = load ptr, ptr @peaklogger, align 8, !dbg !96, !tbaa !86
  %current = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %2, i32 0, i32 0, !dbg !97
  store i64 %call2, ptr %current, align 8, !dbg !98, !tbaa !99
  %3 = load ptr, ptr @peaklogger, align 8, !dbg !102, !tbaa !86
  %max = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %3, i32 0, i32 1, !dbg !103
  store i64 0, ptr %max, align 8, !dbg !104, !tbaa !105
  %call3 = call ptr @gt_mutex_new(), !dbg !106
  %4 = load ptr, ptr @peaklogger, align 8, !dbg !107, !tbaa !86
  %mutex = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %4, i32 0, i32 2, !dbg !108
  store ptr %call3, ptr %mutex, align 8, !dbg !109, !tbaa !110
  ret void, !dbg !111
}

declare !dbg !112 i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare !dbg !179 void @abort() #2

; Function Attrs: nounwind allocsize(0)
declare !dbg !181 noalias ptr @malloc(i64 noundef) #3

declare !dbg !184 i64 @gt_ma_get_space_current() #1

declare !dbg !188 ptr @gt_mutex_new() #1

; Function Attrs: nounwind uwtable
define void @gt_spacepeak_add(i64 noundef %size) #0 !dbg !191 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !196
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !195, metadata !DIExpression()), !dbg !197
  br label %do.body, !dbg !198

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @peaklogger, align 8, !dbg !199, !tbaa !86
  %tobool = icmp ne ptr %0, null, !dbg !199
  br i1 %tobool, label %if.end, label %if.then, !dbg !202

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !203, !tbaa !86
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_spacepeak_add, ptr noundef @.str.2, i32 noundef 44), !dbg !203
  call void @abort() #6, !dbg !203
  unreachable, !dbg !203

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !202

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr @peaklogger, align 8, !dbg !205, !tbaa !86
  %mutex = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %2, i32 0, i32 2, !dbg !205
  %3 = load ptr, ptr %mutex, align 8, !dbg !205, !tbaa !110
  call void @gt_mutex_lock_func(ptr noundef %3), !dbg !205
  %4 = load i64, ptr %size.addr, align 8, !dbg !206, !tbaa !196
  %5 = load ptr, ptr @peaklogger, align 8, !dbg !207, !tbaa !86
  %current = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %5, i32 0, i32 0, !dbg !208
  %6 = load i64, ptr %current, align 8, !dbg !209, !tbaa !99
  %add = add i64 %6, %4, !dbg !209
  store i64 %add, ptr %current, align 8, !dbg !209, !tbaa !99
  %7 = load ptr, ptr @peaklogger, align 8, !dbg !210, !tbaa !86
  %current1 = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %7, i32 0, i32 0, !dbg !212
  %8 = load i64, ptr %current1, align 8, !dbg !212, !tbaa !99
  %9 = load ptr, ptr @peaklogger, align 8, !dbg !213, !tbaa !86
  %max = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %9, i32 0, i32 1, !dbg !214
  %10 = load i64, ptr %max, align 8, !dbg !214, !tbaa !105
  %cmp = icmp ugt i64 %8, %10, !dbg !215
  br i1 %cmp, label %if.then2, label %if.end5, !dbg !216

if.then2:                                         ; preds = %do.end
  %11 = load ptr, ptr @peaklogger, align 8, !dbg !217, !tbaa !86
  %current3 = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %11, i32 0, i32 0, !dbg !218
  %12 = load i64, ptr %current3, align 8, !dbg !218, !tbaa !99
  %13 = load ptr, ptr @peaklogger, align 8, !dbg !219, !tbaa !86
  %max4 = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %13, i32 0, i32 1, !dbg !220
  store i64 %12, ptr %max4, align 8, !dbg !221, !tbaa !105
  br label %if.end5, !dbg !219

if.end5:                                          ; preds = %if.then2, %do.end
  %14 = load ptr, ptr @peaklogger, align 8, !dbg !222, !tbaa !86
  %mutex6 = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %14, i32 0, i32 2, !dbg !222
  %15 = load ptr, ptr %mutex6, align 8, !dbg !222, !tbaa !110
  call void @gt_mutex_unlock_func(ptr noundef %15), !dbg !222
  ret void, !dbg !223
}

declare !dbg !224 void @gt_mutex_lock_func(ptr noundef) #1

declare !dbg !227 void @gt_mutex_unlock_func(ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @gt_spacepeak_free(i64 noundef %size) #0 !dbg !228 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !196
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !230, metadata !DIExpression()), !dbg !231
  br label %do.body, !dbg !232

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @peaklogger, align 8, !dbg !233, !tbaa !86
  %tobool = icmp ne ptr %0, null, !dbg !233
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !233

land.lhs.true:                                    ; preds = %do.body
  %1 = load i64, ptr %size.addr, align 8, !dbg !233, !tbaa !196
  %2 = load ptr, ptr @peaklogger, align 8, !dbg !233, !tbaa !86
  %current = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %2, i32 0, i32 0, !dbg !233
  %3 = load i64, ptr %current, align 8, !dbg !233, !tbaa !99
  %cmp = icmp ule i64 %1, %3, !dbg !233
  br i1 %cmp, label %if.end, label %if.then, !dbg !236

if.then:                                          ; preds = %land.lhs.true, %do.body
  %4 = load ptr, ptr @stderr, align 8, !dbg !237, !tbaa !86
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_spacepeak_free, ptr noundef @.str.2, i32 noundef 54), !dbg !237
  call void @abort() #6, !dbg !237
  unreachable, !dbg !237

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !236

do.end:                                           ; preds = %if.end
  %5 = load ptr, ptr @peaklogger, align 8, !dbg !239, !tbaa !86
  %mutex = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %5, i32 0, i32 2, !dbg !239
  %6 = load ptr, ptr %mutex, align 8, !dbg !239, !tbaa !110
  call void @gt_mutex_lock_func(ptr noundef %6), !dbg !239
  %7 = load i64, ptr %size.addr, align 8, !dbg !240, !tbaa !196
  %8 = load ptr, ptr @peaklogger, align 8, !dbg !241, !tbaa !86
  %current1 = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %8, i32 0, i32 0, !dbg !242
  %9 = load i64, ptr %current1, align 8, !dbg !243, !tbaa !99
  %sub = sub i64 %9, %7, !dbg !243
  store i64 %sub, ptr %current1, align 8, !dbg !243, !tbaa !99
  %10 = load ptr, ptr @peaklogger, align 8, !dbg !244, !tbaa !86
  %mutex2 = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %10, i32 0, i32 2, !dbg !244
  %11 = load ptr, ptr %mutex2, align 8, !dbg !244, !tbaa !110
  call void @gt_mutex_unlock_func(ptr noundef %11), !dbg !244
  ret void, !dbg !245
}

; Function Attrs: nounwind uwtable
define i64 @gt_spacepeak_get_space_peak() #0 !dbg !246 {
entry:
  br label %do.body, !dbg !247

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @peaklogger, align 8, !dbg !248, !tbaa !86
  %tobool = icmp ne ptr %0, null, !dbg !248
  br i1 %tobool, label %if.end, label %if.then, !dbg !251

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !252, !tbaa !86
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_spacepeak_get_space_peak, ptr noundef @.str.2, i32 noundef 61), !dbg !252
  call void @abort() #6, !dbg !252
  unreachable, !dbg !252

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !251

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr @peaklogger, align 8, !dbg !254, !tbaa !86
  %max = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %2, i32 0, i32 1, !dbg !255
  %3 = load i64, ptr %max, align 8, !dbg !255, !tbaa !105
  ret i64 %3, !dbg !256
}

; Function Attrs: nounwind uwtable
define void @gt_spacepeak_show_space_peak(ptr noundef %outfp) #0 !dbg !257 {
entry:
  %outfp.addr = alloca ptr, align 8
  store ptr %outfp, ptr %outfp.addr, align 8, !tbaa !86
  tail call void @llvm.dbg.declare(metadata ptr %outfp.addr, metadata !261, metadata !DIExpression()), !dbg !262
  br label %do.body, !dbg !263

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr @peaklogger, align 8, !dbg !264, !tbaa !86
  %tobool = icmp ne ptr %0, null, !dbg !264
  br i1 %tobool, label %if.end, label %if.then, !dbg !267

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !268, !tbaa !86
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_spacepeak_show_space_peak, ptr noundef @.str.2, i32 noundef 67), !dbg !268
  call void @abort() #6, !dbg !268
  unreachable, !dbg !268

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !267

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %outfp.addr, align 8, !dbg !270, !tbaa !86
  %3 = load ptr, ptr @peaklogger, align 8, !dbg !271, !tbaa !86
  %max = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %3, i32 0, i32 1, !dbg !271
  %4 = load i64, ptr %max, align 8, !dbg !271, !tbaa !105
  %conv = uitofp i64 %4 to double, !dbg !271
  %div = fdiv double %conv, 0x4130000000000000, !dbg !271
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.5, double noundef %div), !dbg !272
  ret void, !dbg !273
}

; Function Attrs: nounwind uwtable
define void @gt_spacepeak_clean() #0 !dbg !274 {
entry:
  %0 = load ptr, ptr @peaklogger, align 8, !dbg !275, !tbaa !86
  %tobool = icmp ne ptr %0, null, !dbg !275
  br i1 %tobool, label %if.end, label %if.then, !dbg !277

if.then:                                          ; preds = %entry
  br label %return, !dbg !278

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @peaklogger, align 8, !dbg !279, !tbaa !86
  %mutex = getelementptr inbounds %struct.GtSpacepeakLogger, ptr %1, i32 0, i32 2, !dbg !280
  %2 = load ptr, ptr %mutex, align 8, !dbg !280, !tbaa !110
  call void @gt_mutex_delete(ptr noundef %2), !dbg !281
  %3 = load ptr, ptr @peaklogger, align 8, !dbg !282, !tbaa !86
  call void @free(ptr noundef %3) #8, !dbg !283
  br label %return, !dbg !284

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !284
}

declare !dbg !285 void @gt_mutex_delete(ptr noundef) #1

; Function Attrs: nounwind
declare !dbg !286 void @free(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "peaklogger", scope: !2, file: !3, line: 31, type: !59, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/core/spacepeak.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "a00e017d8a40fea9744f3e0c27f6439d")
!4 = !{!5, !6}
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!8, !14, !19, !25, !30, !35, !40, !45, !47, !52, !57, !0}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2376, elements: !12)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !{!13}
!13 = !DISubrange(count: 297)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 96, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 12)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 144, elements: !23)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!23 = !{!24}
!24 = !DISubrange(count: 18)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 168, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 21)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 88, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 11)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 136, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 17)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 336, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 42)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !21, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 224, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 28)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 232, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 29)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !42, isLocal: true, isDefinition: true)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtSpacepeakLogger", file: !3, line: 29, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 24, size: 192, elements: !62)
!62 = !{!63, !67, !68}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !61, file: !3, line: 26, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !65, line: 83, baseType: !66)
!65 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!66 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !61, file: !3, line: 27, baseType: !64, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !61, file: !3, line: 28, baseType: !69, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtMutex", file: !71, line: 32, baseType: !72)
!71 = !DIFile(filename: "src/core/thread_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "cf3159d72cab6fde515c01dafea360e4")
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtMutex", file: !71, line: 32, flags: DIFlagFwdDecl)
!73 = !{i32 7, !"Dwarf Version", i32 5}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{i32 1, !"wchar_size", i32 4}
!76 = !{i32 8, !"PIC Level", i32 2}
!77 = !{i32 7, !"uwtable", i32 2}
!78 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!79 = distinct !DISubprogram(name: "gt_spacepeak_init", scope: !3, file: !3, line: 33, type: !80, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!80 = !DISubroutineType(types: !81)
!81 = !{null}
!82 = !DILocation(line: 35, column: 3, scope: !79)
!83 = !DILocation(line: 35, column: 3, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 35, column: 3)
!85 = distinct !DILexicalBlock(scope: !79, file: !3, line: 35, column: 3)
!86 = !{!87, !87, i64 0}
!87 = !{!"any pointer", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !DILocation(line: 35, column: 3, scope: !85)
!91 = !DILocation(line: 35, column: 3, scope: !92)
!92 = distinct !DILexicalBlock(scope: !84, file: !3, line: 35, column: 3)
!93 = !DILocation(line: 36, column: 16, scope: !79)
!94 = !DILocation(line: 36, column: 14, scope: !79)
!95 = !DILocation(line: 37, column: 25, scope: !79)
!96 = !DILocation(line: 37, column: 3, scope: !79)
!97 = !DILocation(line: 37, column: 15, scope: !79)
!98 = !DILocation(line: 37, column: 23, scope: !79)
!99 = !{!100, !101, i64 0}
!100 = !{!"", !101, i64 0, !101, i64 8, !87, i64 16}
!101 = !{!"long", !88, i64 0}
!102 = !DILocation(line: 38, column: 3, scope: !79)
!103 = !DILocation(line: 38, column: 15, scope: !79)
!104 = !DILocation(line: 38, column: 19, scope: !79)
!105 = !{!100, !101, i64 8}
!106 = !DILocation(line: 39, column: 23, scope: !79)
!107 = !DILocation(line: 39, column: 3, scope: !79)
!108 = !DILocation(line: 39, column: 15, scope: !79)
!109 = !DILocation(line: 39, column: 21, scope: !79)
!110 = !{!100, !87, i64 16}
!111 = !DILocation(line: 40, column: 1, scope: !79)
!112 = !DISubprogram(name: "fprintf", scope: !113, file: !113, line: 350, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!114 = !DISubroutineType(types: !115)
!115 = !{!116, !117, !177, null}
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !120, line: 7, baseType: !121)
!120 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !122, line: 49, size: 1728, elements: !123)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!123 = !{!124, !125, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !140, !142, !143, !144, !148, !150, !152, !156, !159, !161, !164, !167, !168, !169, !172, !173}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !121, file: !122, line: 51, baseType: !116, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !121, file: !122, line: 54, baseType: !126, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !121, file: !122, line: 55, baseType: !126, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !121, file: !122, line: 56, baseType: !126, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !121, file: !122, line: 57, baseType: !126, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !121, file: !122, line: 58, baseType: !126, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !121, file: !122, line: 59, baseType: !126, size: 64, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !121, file: !122, line: 60, baseType: !126, size: 64, offset: 448)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !121, file: !122, line: 61, baseType: !126, size: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !121, file: !122, line: 64, baseType: !126, size: 64, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !121, file: !122, line: 65, baseType: !126, size: 64, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !121, file: !122, line: 66, baseType: !126, size: 64, offset: 704)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !121, file: !122, line: 68, baseType: !138, size: 64, offset: 768)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !122, line: 36, flags: DIFlagFwdDecl)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !121, file: !122, line: 70, baseType: !141, size: 64, offset: 832)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !121, file: !122, line: 72, baseType: !116, size: 32, offset: 896)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !121, file: !122, line: 73, baseType: !116, size: 32, offset: 928)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !121, file: !122, line: 74, baseType: !145, size: 64, offset: 960)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !146, line: 152, baseType: !147)
!146 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!147 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !121, file: !122, line: 77, baseType: !149, size: 16, offset: 1024)
!149 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !121, file: !122, line: 78, baseType: !151, size: 8, offset: 1040)
!151 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !121, file: !122, line: 79, baseType: !153, size: 8, offset: 1048)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 1)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !121, file: !122, line: 81, baseType: !157, size: 64, offset: 1088)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !122, line: 43, baseType: null)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !121, file: !122, line: 89, baseType: !160, size: 64, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !146, line: 153, baseType: !147)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !121, file: !122, line: 91, baseType: !162, size: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !122, line: 37, flags: DIFlagFwdDecl)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !121, file: !122, line: 92, baseType: !165, size: 64, offset: 1280)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !122, line: 38, flags: DIFlagFwdDecl)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !121, file: !122, line: 93, baseType: !141, size: 64, offset: 1344)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !121, file: !122, line: 94, baseType: !6, size: 64, offset: 1408)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !121, file: !122, line: 95, baseType: !170, size: 64, offset: 1472)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !171, line: 70, baseType: !66)
!171 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !121, file: !122, line: 96, baseType: !116, size: 32, offset: 1536)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !121, file: !122, line: 98, baseType: !174, size: 160, offset: 1568)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 20)
!177 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!179 = !DISubprogram(name: "abort", scope: !180, file: !180, line: 598, type: !80, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!180 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!181 = !DISubprogram(name: "malloc", scope: !180, file: !180, line: 540, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DISubroutineType(types: !183)
!183 = !{!6, !170}
!184 = !DISubprogram(name: "gt_ma_get_space_current", scope: !185, file: !185, line: 38, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!186 = !DISubroutineType(types: !187)
!187 = !{!64}
!188 = !DISubprogram(name: "gt_mutex_new", scope: !71, file: !71, line: 86, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubroutineType(types: !190)
!190 = !{!69}
!191 = distinct !DISubprogram(name: "gt_spacepeak_add", scope: !3, file: !3, line: 42, type: !192, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !64}
!194 = !{!195}
!195 = !DILocalVariable(name: "size", arg: 1, scope: !191, file: !3, line: 42, type: !64)
!196 = !{!101, !101, i64 0}
!197 = !DILocation(line: 42, column: 31, scope: !191)
!198 = !DILocation(line: 44, column: 3, scope: !191)
!199 = !DILocation(line: 44, column: 3, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 44, column: 3)
!201 = distinct !DILexicalBlock(scope: !191, file: !3, line: 44, column: 3)
!202 = !DILocation(line: 44, column: 3, scope: !201)
!203 = !DILocation(line: 44, column: 3, scope: !204)
!204 = distinct !DILexicalBlock(scope: !200, file: !3, line: 44, column: 3)
!205 = !DILocation(line: 45, column: 3, scope: !191)
!206 = !DILocation(line: 46, column: 26, scope: !191)
!207 = !DILocation(line: 46, column: 3, scope: !191)
!208 = !DILocation(line: 46, column: 15, scope: !191)
!209 = !DILocation(line: 46, column: 23, scope: !191)
!210 = !DILocation(line: 47, column: 7, scope: !211)
!211 = distinct !DILexicalBlock(scope: !191, file: !3, line: 47, column: 7)
!212 = !DILocation(line: 47, column: 19, scope: !211)
!213 = !DILocation(line: 47, column: 29, scope: !211)
!214 = !DILocation(line: 47, column: 41, scope: !211)
!215 = !DILocation(line: 47, column: 27, scope: !211)
!216 = !DILocation(line: 47, column: 7, scope: !191)
!217 = !DILocation(line: 48, column: 23, scope: !211)
!218 = !DILocation(line: 48, column: 35, scope: !211)
!219 = !DILocation(line: 48, column: 5, scope: !211)
!220 = !DILocation(line: 48, column: 17, scope: !211)
!221 = !DILocation(line: 48, column: 21, scope: !211)
!222 = !DILocation(line: 49, column: 3, scope: !191)
!223 = !DILocation(line: 50, column: 1, scope: !191)
!224 = !DISubprogram(name: "gt_mutex_lock_func", scope: !71, file: !71, line: 95, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !69}
!227 = !DISubprogram(name: "gt_mutex_unlock_func", scope: !71, file: !71, line: 105, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = distinct !DISubprogram(name: "gt_spacepeak_free", scope: !3, file: !3, line: 52, type: !192, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !229)
!229 = !{!230}
!230 = !DILocalVariable(name: "size", arg: 1, scope: !228, file: !3, line: 52, type: !64)
!231 = !DILocation(line: 52, column: 32, scope: !228)
!232 = !DILocation(line: 54, column: 3, scope: !228)
!233 = !DILocation(line: 54, column: 3, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !3, line: 54, column: 3)
!235 = distinct !DILexicalBlock(scope: !228, file: !3, line: 54, column: 3)
!236 = !DILocation(line: 54, column: 3, scope: !235)
!237 = !DILocation(line: 54, column: 3, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !3, line: 54, column: 3)
!239 = !DILocation(line: 55, column: 3, scope: !228)
!240 = !DILocation(line: 56, column: 26, scope: !228)
!241 = !DILocation(line: 56, column: 3, scope: !228)
!242 = !DILocation(line: 56, column: 15, scope: !228)
!243 = !DILocation(line: 56, column: 23, scope: !228)
!244 = !DILocation(line: 57, column: 3, scope: !228)
!245 = !DILocation(line: 58, column: 1, scope: !228)
!246 = distinct !DISubprogram(name: "gt_spacepeak_get_space_peak", scope: !3, file: !3, line: 59, type: !186, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!247 = !DILocation(line: 61, column: 3, scope: !246)
!248 = !DILocation(line: 61, column: 3, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 61, column: 3)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 61, column: 3)
!251 = !DILocation(line: 61, column: 3, scope: !250)
!252 = !DILocation(line: 61, column: 3, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !3, line: 61, column: 3)
!254 = !DILocation(line: 62, column: 10, scope: !246)
!255 = !DILocation(line: 62, column: 22, scope: !246)
!256 = !DILocation(line: 62, column: 3, scope: !246)
!257 = distinct !DISubprogram(name: "gt_spacepeak_show_space_peak", scope: !3, file: !3, line: 65, type: !258, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !118}
!260 = !{!261}
!261 = !DILocalVariable(name: "outfp", arg: 1, scope: !257, file: !3, line: 65, type: !118)
!262 = !DILocation(line: 65, column: 41, scope: !257)
!263 = !DILocation(line: 67, column: 3, scope: !257)
!264 = !DILocation(line: 67, column: 3, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 67, column: 3)
!266 = distinct !DILexicalBlock(scope: !257, file: !3, line: 67, column: 3)
!267 = !DILocation(line: 67, column: 3, scope: !266)
!268 = !DILocation(line: 67, column: 3, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !3, line: 67, column: 3)
!270 = !DILocation(line: 68, column: 11, scope: !257)
!271 = !DILocation(line: 69, column: 11, scope: !257)
!272 = !DILocation(line: 68, column: 3, scope: !257)
!273 = !DILocation(line: 70, column: 1, scope: !257)
!274 = distinct !DISubprogram(name: "gt_spacepeak_clean", scope: !3, file: !3, line: 72, type: !80, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!275 = !DILocation(line: 74, column: 8, scope: !276)
!276 = distinct !DILexicalBlock(scope: !274, file: !3, line: 74, column: 7)
!277 = !DILocation(line: 74, column: 7, scope: !274)
!278 = !DILocation(line: 74, column: 20, scope: !276)
!279 = !DILocation(line: 75, column: 19, scope: !274)
!280 = !DILocation(line: 75, column: 31, scope: !274)
!281 = !DILocation(line: 75, column: 3, scope: !274)
!282 = !DILocation(line: 76, column: 8, scope: !274)
!283 = !DILocation(line: 76, column: 3, scope: !274)
!284 = !DILocation(line: 77, column: 1, scope: !274)
!285 = !DISubprogram(name: "gt_mutex_delete", scope: !71, file: !71, line: 89, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DISubprogram(name: "free", scope: !180, file: !180, line: 555, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !6}

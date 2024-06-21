; ModuleID = 'samples/288.bc'
source_filename = "nghttp2_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nghttp2_queue = type { ptr, ptr }
%struct.nghttp2_queue_cell = type { ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"front\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"nghttp2_queue.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.nghttp2_queue_pop = private unnamed_addr constant [40 x i8] c"void nghttp2_queue_pop(nghttp2_queue *)\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [13 x i8] c"queue->front\00", align 1, !dbg !18
@__PRETTY_FUNCTION__.nghttp2_queue_front = private unnamed_addr constant [43 x i8] c"void *nghttp2_queue_front(nghttp2_queue *)\00", align 1, !dbg !23
@.str.3 = private unnamed_addr constant [12 x i8] c"queue->back\00", align 1, !dbg !28
@__PRETTY_FUNCTION__.nghttp2_queue_back = private unnamed_addr constant [42 x i8] c"void *nghttp2_queue_back(nghttp2_queue *)\00", align 1, !dbg !33

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_queue_init(ptr noundef %queue) #0 !dbg !102 {
entry:
  %queue.addr = alloca ptr, align 8
  store ptr %queue, ptr %queue.addr, align 8, !tbaa !113
  tail call void @llvm.dbg.declare(metadata ptr %queue.addr, metadata !112, metadata !DIExpression()), !dbg !117
  %0 = load ptr, ptr %queue.addr, align 8, !dbg !118, !tbaa !113
  %back = getelementptr inbounds %struct.nghttp2_queue, ptr %0, i32 0, i32 1, !dbg !119
  store ptr null, ptr %back, align 8, !dbg !120, !tbaa !121
  %1 = load ptr, ptr %queue.addr, align 8, !dbg !123, !tbaa !113
  %front = getelementptr inbounds %struct.nghttp2_queue, ptr %1, i32 0, i32 0, !dbg !124
  store ptr null, ptr %front, align 8, !dbg !125, !tbaa !126
  ret void, !dbg !127
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_queue_free(ptr noundef %queue) #0 !dbg !128 {
entry:
  %queue.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %queue, ptr %queue.addr, align 8, !tbaa !113
  tail call void @llvm.dbg.declare(metadata ptr %queue.addr, metadata !130, metadata !DIExpression()), !dbg !136
  %0 = load ptr, ptr %queue.addr, align 8, !dbg !137, !tbaa !113
  %tobool = icmp ne ptr %0, null, !dbg !137
  br i1 %tobool, label %if.else, label %if.then, !dbg !138

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !139

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !141
  tail call void @llvm.dbg.declare(metadata ptr %p, metadata !131, metadata !DIExpression()), !dbg !142
  %1 = load ptr, ptr %queue.addr, align 8, !dbg !143, !tbaa !113
  %front = getelementptr inbounds %struct.nghttp2_queue, ptr %1, i32 0, i32 0, !dbg !144
  %2 = load ptr, ptr %front, align 8, !dbg !144, !tbaa !126
  store ptr %2, ptr %p, align 8, !dbg !142, !tbaa !113
  br label %while.cond, !dbg !145

while.cond:                                       ; preds = %while.body, %if.else
  %3 = load ptr, ptr %p, align 8, !dbg !146, !tbaa !113
  %tobool1 = icmp ne ptr %3, null, !dbg !145
  br i1 %tobool1, label %while.body, label %while.end, !dbg !145

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #6, !dbg !147
  tail call void @llvm.dbg.declare(metadata ptr %next, metadata !134, metadata !DIExpression()), !dbg !148
  %4 = load ptr, ptr %p, align 8, !dbg !149, !tbaa !113
  %next2 = getelementptr inbounds %struct.nghttp2_queue_cell, ptr %4, i32 0, i32 1, !dbg !150
  %5 = load ptr, ptr %next2, align 8, !dbg !150, !tbaa !151
  store ptr %5, ptr %next, align 8, !dbg !148, !tbaa !113
  %6 = load ptr, ptr %p, align 8, !dbg !153, !tbaa !113
  call void @free(ptr noundef %6) #6, !dbg !154
  %7 = load ptr, ptr %next, align 8, !dbg !155, !tbaa !113
  store ptr %7, ptr %p, align 8, !dbg !156, !tbaa !113
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #6, !dbg !157
  br label %while.cond, !dbg !145, !llvm.loop !158

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !160
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void, !dbg !161
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !162 void @free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_queue_push(ptr noundef %queue, ptr noundef %data) #0 !dbg !166 {
entry:
  %retval = alloca i32, align 4
  %queue.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %new_cell = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %queue, ptr %queue.addr, align 8, !tbaa !113
  tail call void @llvm.dbg.declare(metadata ptr %queue.addr, metadata !170, metadata !DIExpression()), !dbg !173
  store ptr %data, ptr %data.addr, align 8, !tbaa !113
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !171, metadata !DIExpression()), !dbg !174
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_cell) #6, !dbg !175
  tail call void @llvm.dbg.declare(metadata ptr %new_cell, metadata !172, metadata !DIExpression()), !dbg !176
  %call = call noalias ptr @malloc(i64 noundef 16) #7, !dbg !177
  store ptr %call, ptr %new_cell, align 8, !dbg !176, !tbaa !113
  %0 = load ptr, ptr %new_cell, align 8, !dbg !178, !tbaa !113
  %tobool = icmp ne ptr %0, null, !dbg !178
  br i1 %tobool, label %if.end, label %if.then, !dbg !180

if.then:                                          ; preds = %entry
  store i32 -901, ptr %retval, align 4, !dbg !181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !181

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %data.addr, align 8, !dbg !183, !tbaa !113
  %2 = load ptr, ptr %new_cell, align 8, !dbg !184, !tbaa !113
  %data1 = getelementptr inbounds %struct.nghttp2_queue_cell, ptr %2, i32 0, i32 0, !dbg !185
  store ptr %1, ptr %data1, align 8, !dbg !186, !tbaa !187
  %3 = load ptr, ptr %new_cell, align 8, !dbg !188, !tbaa !113
  %next = getelementptr inbounds %struct.nghttp2_queue_cell, ptr %3, i32 0, i32 1, !dbg !189
  store ptr null, ptr %next, align 8, !dbg !190, !tbaa !151
  %4 = load ptr, ptr %queue.addr, align 8, !dbg !191, !tbaa !113
  %back = getelementptr inbounds %struct.nghttp2_queue, ptr %4, i32 0, i32 1, !dbg !193
  %5 = load ptr, ptr %back, align 8, !dbg !193, !tbaa !121
  %tobool2 = icmp ne ptr %5, null, !dbg !191
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !194

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %new_cell, align 8, !dbg !195, !tbaa !113
  %7 = load ptr, ptr %queue.addr, align 8, !dbg !197, !tbaa !113
  %back4 = getelementptr inbounds %struct.nghttp2_queue, ptr %7, i32 0, i32 1, !dbg !198
  %8 = load ptr, ptr %back4, align 8, !dbg !198, !tbaa !121
  %next5 = getelementptr inbounds %struct.nghttp2_queue_cell, ptr %8, i32 0, i32 1, !dbg !199
  store ptr %6, ptr %next5, align 8, !dbg !200, !tbaa !151
  %9 = load ptr, ptr %new_cell, align 8, !dbg !201, !tbaa !113
  %10 = load ptr, ptr %queue.addr, align 8, !dbg !202, !tbaa !113
  %back6 = getelementptr inbounds %struct.nghttp2_queue, ptr %10, i32 0, i32 1, !dbg !203
  store ptr %9, ptr %back6, align 8, !dbg !204, !tbaa !121
  br label %if.end8, !dbg !205

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %new_cell, align 8, !dbg !206, !tbaa !113
  %12 = load ptr, ptr %queue.addr, align 8, !dbg !208, !tbaa !113
  %back7 = getelementptr inbounds %struct.nghttp2_queue, ptr %12, i32 0, i32 1, !dbg !209
  store ptr %11, ptr %back7, align 8, !dbg !210, !tbaa !121
  %13 = load ptr, ptr %queue.addr, align 8, !dbg !211, !tbaa !113
  %front = getelementptr inbounds %struct.nghttp2_queue, ptr %13, i32 0, i32 0, !dbg !212
  store ptr %11, ptr %front, align 8, !dbg !213, !tbaa !126
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  store i32 0, ptr %retval, align 4, !dbg !214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !214

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_cell) #6, !dbg !215
  %14 = load i32, ptr %retval, align 4, !dbg !215
  ret i32 %14, !dbg !215
}

; Function Attrs: nounwind allocsize(0)
declare !dbg !216 noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_queue_pop(ptr noundef %queue) #0 !dbg !222 {
entry:
  %queue.addr = alloca ptr, align 8
  %front = alloca ptr, align 8
  store ptr %queue, ptr %queue.addr, align 8, !tbaa !113
  tail call void @llvm.dbg.declare(metadata ptr %queue.addr, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.lifetime.start.p0(i64 8, ptr %front) #6, !dbg !227
  tail call void @llvm.dbg.declare(metadata ptr %front, metadata !225, metadata !DIExpression()), !dbg !228
  %0 = load ptr, ptr %queue.addr, align 8, !dbg !229, !tbaa !113
  %front1 = getelementptr inbounds %struct.nghttp2_queue, ptr %0, i32 0, i32 0, !dbg !230
  %1 = load ptr, ptr %front1, align 8, !dbg !230, !tbaa !126
  store ptr %1, ptr %front, align 8, !dbg !228, !tbaa !113
  %2 = load ptr, ptr %front, align 8, !dbg !231, !tbaa !113
  %tobool = icmp ne ptr %2, null, !dbg !231
  br i1 %tobool, label %if.then, label %if.else, !dbg !234

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !234

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 67, ptr noundef @__PRETTY_FUNCTION__.nghttp2_queue_pop) #8, !dbg !231
  unreachable, !dbg !231

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %front, align 8, !dbg !235, !tbaa !113
  %next = getelementptr inbounds %struct.nghttp2_queue_cell, ptr %3, i32 0, i32 1, !dbg !236
  %4 = load ptr, ptr %next, align 8, !dbg !236, !tbaa !151
  %5 = load ptr, ptr %queue.addr, align 8, !dbg !237, !tbaa !113
  %front2 = getelementptr inbounds %struct.nghttp2_queue, ptr %5, i32 0, i32 0, !dbg !238
  store ptr %4, ptr %front2, align 8, !dbg !239, !tbaa !126
  %6 = load ptr, ptr %front, align 8, !dbg !240, !tbaa !113
  %7 = load ptr, ptr %queue.addr, align 8, !dbg !242, !tbaa !113
  %back = getelementptr inbounds %struct.nghttp2_queue, ptr %7, i32 0, i32 1, !dbg !243
  %8 = load ptr, ptr %back, align 8, !dbg !243, !tbaa !121
  %cmp = icmp eq ptr %6, %8, !dbg !244
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !245

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %queue.addr, align 8, !dbg !246, !tbaa !113
  %back4 = getelementptr inbounds %struct.nghttp2_queue, ptr %9, i32 0, i32 1, !dbg !248
  store ptr null, ptr %back4, align 8, !dbg !249, !tbaa !121
  br label %if.end5, !dbg !250

if.end5:                                          ; preds = %if.then3, %if.end
  %10 = load ptr, ptr %front, align 8, !dbg !251, !tbaa !113
  call void @free(ptr noundef %10) #6, !dbg !252
  call void @llvm.lifetime.end.p0(i64 8, ptr %front) #6, !dbg !253
  ret void, !dbg !253
}

; Function Attrs: noreturn nounwind
declare !dbg !254 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define hidden ptr @nghttp2_queue_front(ptr noundef %queue) #0 !dbg !260 {
entry:
  %queue.addr = alloca ptr, align 8
  store ptr %queue, ptr %queue.addr, align 8, !tbaa !113
  tail call void @llvm.dbg.declare(metadata ptr %queue.addr, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = load ptr, ptr %queue.addr, align 8, !dbg !266, !tbaa !113
  %front = getelementptr inbounds %struct.nghttp2_queue, ptr %0, i32 0, i32 0, !dbg !266
  %1 = load ptr, ptr %front, align 8, !dbg !266, !tbaa !126
  %tobool = icmp ne ptr %1, null, !dbg !266
  br i1 %tobool, label %if.then, label %if.else, !dbg !269

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !269

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 76, ptr noundef @__PRETTY_FUNCTION__.nghttp2_queue_front) #8, !dbg !266
  unreachable, !dbg !266

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %queue.addr, align 8, !dbg !270, !tbaa !113
  %front1 = getelementptr inbounds %struct.nghttp2_queue, ptr %2, i32 0, i32 0, !dbg !271
  %3 = load ptr, ptr %front1, align 8, !dbg !271, !tbaa !126
  %data = getelementptr inbounds %struct.nghttp2_queue_cell, ptr %3, i32 0, i32 0, !dbg !272
  %4 = load ptr, ptr %data, align 8, !dbg !272, !tbaa !187
  ret ptr %4, !dbg !273
}

; Function Attrs: nounwind uwtable
define hidden ptr @nghttp2_queue_back(ptr noundef %queue) #0 !dbg !274 {
entry:
  %queue.addr = alloca ptr, align 8
  store ptr %queue, ptr %queue.addr, align 8, !tbaa !113
  tail call void @llvm.dbg.declare(metadata ptr %queue.addr, metadata !276, metadata !DIExpression()), !dbg !277
  %0 = load ptr, ptr %queue.addr, align 8, !dbg !278, !tbaa !113
  %back = getelementptr inbounds %struct.nghttp2_queue, ptr %0, i32 0, i32 1, !dbg !278
  %1 = load ptr, ptr %back, align 8, !dbg !278, !tbaa !121
  %tobool = icmp ne ptr %1, null, !dbg !278
  br i1 %tobool, label %if.then, label %if.else, !dbg !281

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !281

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 81, ptr noundef @__PRETTY_FUNCTION__.nghttp2_queue_back) #8, !dbg !278
  unreachable, !dbg !278

if.end:                                           ; preds = %if.then
  %2 = load ptr, ptr %queue.addr, align 8, !dbg !282, !tbaa !113
  %back1 = getelementptr inbounds %struct.nghttp2_queue, ptr %2, i32 0, i32 1, !dbg !283
  %3 = load ptr, ptr %back1, align 8, !dbg !283, !tbaa !121
  %data = getelementptr inbounds %struct.nghttp2_queue_cell, ptr %3, i32 0, i32 0, !dbg !284
  %4 = load ptr, ptr %data, align 8, !dbg !284, !tbaa !187
  ret ptr %4, !dbg !285
}

; Function Attrs: nounwind uwtable
define hidden i32 @nghttp2_queue_empty(ptr noundef %queue) #0 !dbg !286 {
entry:
  %queue.addr = alloca ptr, align 8
  store ptr %queue, ptr %queue.addr, align 8, !tbaa !113
  tail call void @llvm.dbg.declare(metadata ptr %queue.addr, metadata !290, metadata !DIExpression()), !dbg !291
  %0 = load ptr, ptr %queue.addr, align 8, !dbg !292, !tbaa !113
  %front = getelementptr inbounds %struct.nghttp2_queue, ptr %0, i32 0, i32 0, !dbg !293
  %1 = load ptr, ptr %front, align 8, !dbg !293, !tbaa !126
  %cmp = icmp eq ptr %1, null, !dbg !294
  %conv = zext i1 %cmp to i32, !dbg !294
  ret i32 %conv, !dbg !295
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!38}
!llvm.module.flags = !{!96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "nghttp2_queue.c", directory: "/local-ssd/nghttp2-ygk7gapsiutjtu4stb5i6ycvvkuh4eel-build/aidengro/spack-stage-nghttp2-1.57.0-ygk7gapsiutjtu4stb5i6ycvvkuh4eel/spack-src/lib", checksumkind: CSK_MD5, checksum: "fd0d12ff1c4c04c23e1fb50e584c4ac8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 40)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 13)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 344, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 43)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 12)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 336, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 42)
!38 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !85, globals: !95, splitDebugInlining: false, nameTableKind: None)
!39 = !{!40}
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 244, baseType: !42, size: 32, elements: !43)
!41 = !DIFile(filename: "./includes/nghttp2/nghttp2.h", directory: "/local-ssd/nghttp2-ygk7gapsiutjtu4stb5i6ycvvkuh4eel-build/aidengro/spack-stage-nghttp2-1.57.0-ygk7gapsiutjtu4stb5i6ycvvkuh4eel/spack-src/lib", checksumkind: CSK_MD5, checksum: "ff30c19b6a143e1c6ae9a6e152d43b8c")
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!44 = !DIEnumerator(name: "NGHTTP2_ERR_INVALID_ARGUMENT", value: -501)
!45 = !DIEnumerator(name: "NGHTTP2_ERR_BUFFER_ERROR", value: -502)
!46 = !DIEnumerator(name: "NGHTTP2_ERR_UNSUPPORTED_VERSION", value: -503)
!47 = !DIEnumerator(name: "NGHTTP2_ERR_WOULDBLOCK", value: -504)
!48 = !DIEnumerator(name: "NGHTTP2_ERR_PROTO", value: -505)
!49 = !DIEnumerator(name: "NGHTTP2_ERR_INVALID_FRAME", value: -506)
!50 = !DIEnumerator(name: "NGHTTP2_ERR_EOF", value: -507)
!51 = !DIEnumerator(name: "NGHTTP2_ERR_DEFERRED", value: -508)
!52 = !DIEnumerator(name: "NGHTTP2_ERR_STREAM_ID_NOT_AVAILABLE", value: -509)
!53 = !DIEnumerator(name: "NGHTTP2_ERR_STREAM_CLOSED", value: -510)
!54 = !DIEnumerator(name: "NGHTTP2_ERR_STREAM_CLOSING", value: -511)
!55 = !DIEnumerator(name: "NGHTTP2_ERR_STREAM_SHUT_WR", value: -512)
!56 = !DIEnumerator(name: "NGHTTP2_ERR_INVALID_STREAM_ID", value: -513)
!57 = !DIEnumerator(name: "NGHTTP2_ERR_INVALID_STREAM_STATE", value: -514)
!58 = !DIEnumerator(name: "NGHTTP2_ERR_DEFERRED_DATA_EXIST", value: -515)
!59 = !DIEnumerator(name: "NGHTTP2_ERR_START_STREAM_NOT_ALLOWED", value: -516)
!60 = !DIEnumerator(name: "NGHTTP2_ERR_GOAWAY_ALREADY_SENT", value: -517)
!61 = !DIEnumerator(name: "NGHTTP2_ERR_INVALID_HEADER_BLOCK", value: -518)
!62 = !DIEnumerator(name: "NGHTTP2_ERR_INVALID_STATE", value: -519)
!63 = !DIEnumerator(name: "NGHTTP2_ERR_TEMPORAL_CALLBACK_FAILURE", value: -521)
!64 = !DIEnumerator(name: "NGHTTP2_ERR_FRAME_SIZE_ERROR", value: -522)
!65 = !DIEnumerator(name: "NGHTTP2_ERR_HEADER_COMP", value: -523)
!66 = !DIEnumerator(name: "NGHTTP2_ERR_FLOW_CONTROL", value: -524)
!67 = !DIEnumerator(name: "NGHTTP2_ERR_INSUFF_BUFSIZE", value: -525)
!68 = !DIEnumerator(name: "NGHTTP2_ERR_PAUSE", value: -526)
!69 = !DIEnumerator(name: "NGHTTP2_ERR_TOO_MANY_INFLIGHT_SETTINGS", value: -527)
!70 = !DIEnumerator(name: "NGHTTP2_ERR_PUSH_DISABLED", value: -528)
!71 = !DIEnumerator(name: "NGHTTP2_ERR_DATA_EXIST", value: -529)
!72 = !DIEnumerator(name: "NGHTTP2_ERR_SESSION_CLOSING", value: -530)
!73 = !DIEnumerator(name: "NGHTTP2_ERR_HTTP_HEADER", value: -531)
!74 = !DIEnumerator(name: "NGHTTP2_ERR_HTTP_MESSAGING", value: -532)
!75 = !DIEnumerator(name: "NGHTTP2_ERR_REFUSED_STREAM", value: -533)
!76 = !DIEnumerator(name: "NGHTTP2_ERR_INTERNAL", value: -534)
!77 = !DIEnumerator(name: "NGHTTP2_ERR_CANCEL", value: -535)
!78 = !DIEnumerator(name: "NGHTTP2_ERR_SETTINGS_EXPECTED", value: -536)
!79 = !DIEnumerator(name: "NGHTTP2_ERR_TOO_MANY_SETTINGS", value: -537)
!80 = !DIEnumerator(name: "NGHTTP2_ERR_FATAL", value: -900)
!81 = !DIEnumerator(name: "NGHTTP2_ERR_NOMEM", value: -901)
!82 = !DIEnumerator(name: "NGHTTP2_ERR_CALLBACK_FAILURE", value: -902)
!83 = !DIEnumerator(name: "NGHTTP2_ERR_BAD_CLIENT_MAGIC", value: -903)
!84 = !DIEnumerator(name: "NGHTTP2_ERR_FLOODED", value: -904)
!85 = !{!86, !92}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_queue_cell", file: !88, line: 37, baseType: !89)
!88 = !DIFile(filename: "./nghttp2_queue.h", directory: "/local-ssd/nghttp2-ygk7gapsiutjtu4stb5i6ycvvkuh4eel-build/aidengro/spack-stage-nghttp2-1.57.0-ygk7gapsiutjtu4stb5i6ycvvkuh4eel/spack-src/lib", checksumkind: CSK_MD5, checksum: "dd00eca1a8710ff97e4f4a219e0dad91")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nghttp2_queue_cell", file: !88, line: 34, size: 128, elements: !90)
!90 = !{!91, !93}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !89, file: !88, line: 35, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !89, file: !88, line: 36, baseType: !94, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!95 = !{!0, !7, !12, !18, !23, !28, !33}
!96 = !{i32 7, !"Dwarf Version", i32 5}
!97 = !{i32 2, !"Debug Info Version", i32 3}
!98 = !{i32 1, !"wchar_size", i32 4}
!99 = !{i32 8, !"PIC Level", i32 2}
!100 = !{i32 7, !"uwtable", i32 2}
!101 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!102 = distinct !DISubprogram(name: "nghttp2_queue_init", scope: !2, file: !2, line: 30, type: !103, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !111)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "nghttp2_queue", file: !88, line: 41, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 39, size: 128, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "front", scope: !107, file: !88, line: 40, baseType: !86, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !107, file: !88, line: 40, baseType: !86, size: 64, offset: 64)
!111 = !{!112}
!112 = !DILocalVariable(name: "queue", arg: 1, scope: !102, file: !2, line: 30, type: !105)
!113 = !{!114, !114, i64 0}
!114 = !{!"any pointer", !115, i64 0}
!115 = !{!"omnipotent char", !116, i64 0}
!116 = !{!"Simple C/C++ TBAA"}
!117 = !DILocation(line: 30, column: 40, scope: !102)
!118 = !DILocation(line: 31, column: 18, scope: !102)
!119 = !DILocation(line: 31, column: 25, scope: !102)
!120 = !DILocation(line: 31, column: 30, scope: !102)
!121 = !{!122, !114, i64 8}
!122 = !{!"", !114, i64 0, !114, i64 8}
!123 = !DILocation(line: 31, column: 3, scope: !102)
!124 = !DILocation(line: 31, column: 10, scope: !102)
!125 = !DILocation(line: 31, column: 16, scope: !102)
!126 = !{!122, !114, i64 0}
!127 = !DILocation(line: 32, column: 1, scope: !102)
!128 = distinct !DISubprogram(name: "nghttp2_queue_free", scope: !2, file: !2, line: 34, type: !103, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !129)
!129 = !{!130, !131, !134}
!130 = !DILocalVariable(name: "queue", arg: 1, scope: !128, file: !2, line: 34, type: !105)
!131 = !DILocalVariable(name: "p", scope: !132, file: !2, line: 38, type: !86)
!132 = distinct !DILexicalBlock(scope: !133, file: !2, line: 37, column: 10)
!133 = distinct !DILexicalBlock(scope: !128, file: !2, line: 35, column: 7)
!134 = !DILocalVariable(name: "next", scope: !135, file: !2, line: 40, type: !86)
!135 = distinct !DILexicalBlock(scope: !132, file: !2, line: 39, column: 15)
!136 = !DILocation(line: 34, column: 40, scope: !128)
!137 = !DILocation(line: 35, column: 8, scope: !133)
!138 = !DILocation(line: 35, column: 7, scope: !128)
!139 = !DILocation(line: 36, column: 5, scope: !140)
!140 = distinct !DILexicalBlock(scope: !133, file: !2, line: 35, column: 15)
!141 = !DILocation(line: 38, column: 5, scope: !132)
!142 = !DILocation(line: 38, column: 25, scope: !132)
!143 = !DILocation(line: 38, column: 29, scope: !132)
!144 = !DILocation(line: 38, column: 36, scope: !132)
!145 = !DILocation(line: 39, column: 5, scope: !132)
!146 = !DILocation(line: 39, column: 12, scope: !132)
!147 = !DILocation(line: 40, column: 7, scope: !135)
!148 = !DILocation(line: 40, column: 27, scope: !135)
!149 = !DILocation(line: 40, column: 34, scope: !135)
!150 = !DILocation(line: 40, column: 37, scope: !135)
!151 = !{!152, !114, i64 8}
!152 = !{!"nghttp2_queue_cell", !114, i64 0, !114, i64 8}
!153 = !DILocation(line: 41, column: 12, scope: !135)
!154 = !DILocation(line: 41, column: 7, scope: !135)
!155 = !DILocation(line: 42, column: 11, scope: !135)
!156 = !DILocation(line: 42, column: 9, scope: !135)
!157 = !DILocation(line: 43, column: 5, scope: !132)
!158 = distinct !{!158, !145, !157, !159}
!159 = !{!"llvm.loop.mustprogress"}
!160 = !DILocation(line: 44, column: 3, scope: !133)
!161 = !DILocation(line: 45, column: 1, scope: !128)
!162 = !DISubprogram(name: "free", scope: !163, file: !163, line: 555, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!164 = !DISubroutineType(types: !165)
!165 = !{null, !92}
!166 = distinct !DISubprogram(name: "nghttp2_queue_push", scope: !2, file: !2, line: 47, type: !167, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{!42, !105, !92}
!169 = !{!170, !171, !172}
!170 = !DILocalVariable(name: "queue", arg: 1, scope: !166, file: !2, line: 47, type: !105)
!171 = !DILocalVariable(name: "data", arg: 2, scope: !166, file: !2, line: 47, type: !92)
!172 = !DILocalVariable(name: "new_cell", scope: !166, file: !2, line: 48, type: !86)
!173 = !DILocation(line: 47, column: 39, scope: !166)
!174 = !DILocation(line: 47, column: 52, scope: !166)
!175 = !DILocation(line: 48, column: 3, scope: !166)
!176 = !DILocation(line: 48, column: 23, scope: !166)
!177 = !DILocation(line: 49, column: 29, scope: !166)
!178 = !DILocation(line: 50, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !166, file: !2, line: 50, column: 7)
!180 = !DILocation(line: 50, column: 7, scope: !166)
!181 = !DILocation(line: 51, column: 5, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !2, line: 50, column: 18)
!183 = !DILocation(line: 53, column: 20, scope: !166)
!184 = !DILocation(line: 53, column: 3, scope: !166)
!185 = !DILocation(line: 53, column: 13, scope: !166)
!186 = !DILocation(line: 53, column: 18, scope: !166)
!187 = !{!152, !114, i64 0}
!188 = !DILocation(line: 54, column: 3, scope: !166)
!189 = !DILocation(line: 54, column: 13, scope: !166)
!190 = !DILocation(line: 54, column: 18, scope: !166)
!191 = !DILocation(line: 55, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !166, file: !2, line: 55, column: 7)
!193 = !DILocation(line: 55, column: 14, scope: !192)
!194 = !DILocation(line: 55, column: 7, scope: !166)
!195 = !DILocation(line: 56, column: 25, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !2, line: 55, column: 20)
!197 = !DILocation(line: 56, column: 5, scope: !196)
!198 = !DILocation(line: 56, column: 12, scope: !196)
!199 = !DILocation(line: 56, column: 18, scope: !196)
!200 = !DILocation(line: 56, column: 23, scope: !196)
!201 = !DILocation(line: 57, column: 19, scope: !196)
!202 = !DILocation(line: 57, column: 5, scope: !196)
!203 = !DILocation(line: 57, column: 12, scope: !196)
!204 = !DILocation(line: 57, column: 17, scope: !196)
!205 = !DILocation(line: 59, column: 3, scope: !196)
!206 = !DILocation(line: 60, column: 34, scope: !207)
!207 = distinct !DILexicalBlock(scope: !192, file: !2, line: 59, column: 10)
!208 = !DILocation(line: 60, column: 20, scope: !207)
!209 = !DILocation(line: 60, column: 27, scope: !207)
!210 = !DILocation(line: 60, column: 32, scope: !207)
!211 = !DILocation(line: 60, column: 5, scope: !207)
!212 = !DILocation(line: 60, column: 12, scope: !207)
!213 = !DILocation(line: 60, column: 18, scope: !207)
!214 = !DILocation(line: 62, column: 3, scope: !166)
!215 = !DILocation(line: 63, column: 1, scope: !166)
!216 = !DISubprogram(name: "malloc", scope: !163, file: !163, line: 540, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DISubroutineType(types: !218)
!218 = !{!92, !219}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 70, baseType: !221)
!220 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!221 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!222 = distinct !DISubprogram(name: "nghttp2_queue_pop", scope: !2, file: !2, line: 65, type: !103, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !223)
!223 = !{!224, !225}
!224 = !DILocalVariable(name: "queue", arg: 1, scope: !222, file: !2, line: 65, type: !105)
!225 = !DILocalVariable(name: "front", scope: !222, file: !2, line: 66, type: !86)
!226 = !DILocation(line: 65, column: 39, scope: !222)
!227 = !DILocation(line: 66, column: 3, scope: !222)
!228 = !DILocation(line: 66, column: 23, scope: !222)
!229 = !DILocation(line: 66, column: 31, scope: !222)
!230 = !DILocation(line: 66, column: 38, scope: !222)
!231 = !DILocation(line: 67, column: 3, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !2, line: 67, column: 3)
!233 = distinct !DILexicalBlock(scope: !222, file: !2, line: 67, column: 3)
!234 = !DILocation(line: 67, column: 3, scope: !233)
!235 = !DILocation(line: 68, column: 18, scope: !222)
!236 = !DILocation(line: 68, column: 25, scope: !222)
!237 = !DILocation(line: 68, column: 3, scope: !222)
!238 = !DILocation(line: 68, column: 10, scope: !222)
!239 = !DILocation(line: 68, column: 16, scope: !222)
!240 = !DILocation(line: 69, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !222, file: !2, line: 69, column: 7)
!242 = !DILocation(line: 69, column: 16, scope: !241)
!243 = !DILocation(line: 69, column: 23, scope: !241)
!244 = !DILocation(line: 69, column: 13, scope: !241)
!245 = !DILocation(line: 69, column: 7, scope: !222)
!246 = !DILocation(line: 70, column: 5, scope: !247)
!247 = distinct !DILexicalBlock(scope: !241, file: !2, line: 69, column: 29)
!248 = !DILocation(line: 70, column: 12, scope: !247)
!249 = !DILocation(line: 70, column: 17, scope: !247)
!250 = !DILocation(line: 71, column: 3, scope: !247)
!251 = !DILocation(line: 72, column: 8, scope: !222)
!252 = !DILocation(line: 72, column: 3, scope: !222)
!253 = !DILocation(line: 73, column: 1, scope: !222)
!254 = !DISubprogram(name: "__assert_fail", scope: !255, file: !255, line: 69, type: !256, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!255 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!256 = !DISubroutineType(types: !257)
!257 = !{null, !258, !258, !259, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!259 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!260 = distinct !DISubprogram(name: "nghttp2_queue_front", scope: !2, file: !2, line: 75, type: !261, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{!92, !105}
!263 = !{!264}
!264 = !DILocalVariable(name: "queue", arg: 1, scope: !260, file: !2, line: 75, type: !105)
!265 = !DILocation(line: 75, column: 42, scope: !260)
!266 = !DILocation(line: 76, column: 3, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !2, line: 76, column: 3)
!268 = distinct !DILexicalBlock(scope: !260, file: !2, line: 76, column: 3)
!269 = !DILocation(line: 76, column: 3, scope: !268)
!270 = !DILocation(line: 77, column: 10, scope: !260)
!271 = !DILocation(line: 77, column: 17, scope: !260)
!272 = !DILocation(line: 77, column: 24, scope: !260)
!273 = !DILocation(line: 77, column: 3, scope: !260)
!274 = distinct !DISubprogram(name: "nghttp2_queue_back", scope: !2, file: !2, line: 80, type: !261, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !275)
!275 = !{!276}
!276 = !DILocalVariable(name: "queue", arg: 1, scope: !274, file: !2, line: 80, type: !105)
!277 = !DILocation(line: 80, column: 41, scope: !274)
!278 = !DILocation(line: 81, column: 3, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !2, line: 81, column: 3)
!280 = distinct !DILexicalBlock(scope: !274, file: !2, line: 81, column: 3)
!281 = !DILocation(line: 81, column: 3, scope: !280)
!282 = !DILocation(line: 82, column: 10, scope: !274)
!283 = !DILocation(line: 82, column: 17, scope: !274)
!284 = !DILocation(line: 82, column: 23, scope: !274)
!285 = !DILocation(line: 82, column: 3, scope: !274)
!286 = distinct !DISubprogram(name: "nghttp2_queue_empty", scope: !2, file: !2, line: 85, type: !287, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{!42, !105}
!289 = !{!290}
!290 = !DILocalVariable(name: "queue", arg: 1, scope: !286, file: !2, line: 85, type: !105)
!291 = !DILocation(line: 85, column: 40, scope: !286)
!292 = !DILocation(line: 85, column: 56, scope: !286)
!293 = !DILocation(line: 85, column: 63, scope: !286)
!294 = !DILocation(line: 85, column: 69, scope: !286)
!295 = !DILocation(line: 85, column: 49, scope: !286)

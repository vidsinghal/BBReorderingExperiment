; ModuleID = 'samples/192.bc'
source_filename = "callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ENetCallbacks = type { ptr, ptr, ptr }

@callbacks = internal global %struct._ENetCallbacks { ptr @malloc, ptr @free, ptr @abort }, align 8, !dbg !0

; Function Attrs: nounwind uwtable
define i32 @enet_initialize_with_callbacks(i32 noundef %version, ptr noundef %inits) #0 !dbg !32 {
entry:
  %retval = alloca i32, align 4
  %version.addr = alloca i32, align 4
  %inits.addr = alloca ptr, align 8
  store i32 %version, ptr %version.addr, align 4, !tbaa !46
  tail call void @llvm.dbg.declare(metadata ptr %version.addr, metadata !44, metadata !DIExpression()), !dbg !50
  store ptr %inits, ptr %inits.addr, align 8, !tbaa !51
  tail call void @llvm.dbg.declare(metadata ptr %inits.addr, metadata !45, metadata !DIExpression()), !dbg !53
  %0 = load i32, ptr %version.addr, align 4, !dbg !54, !tbaa !46
  %cmp = icmp ult i32 %0, 66304, !dbg !56
  br i1 %cmp, label %if.then, label %if.end, !dbg !57

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !58
  br label %return, !dbg !58

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %inits.addr, align 8, !dbg !59, !tbaa !51
  %malloc = getelementptr inbounds %struct._ENetCallbacks, ptr %1, i32 0, i32 0, !dbg !61
  %2 = load ptr, ptr %malloc, align 8, !dbg !61, !tbaa !62
  %cmp1 = icmp ne ptr %2, null, !dbg !64
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !65

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %inits.addr, align 8, !dbg !66, !tbaa !51
  %free = getelementptr inbounds %struct._ENetCallbacks, ptr %3, i32 0, i32 1, !dbg !67
  %4 = load ptr, ptr %free, align 8, !dbg !67, !tbaa !68
  %cmp2 = icmp ne ptr %4, null, !dbg !69
  br i1 %cmp2, label %if.then3, label %if.end13, !dbg !70

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %inits.addr, align 8, !dbg !71, !tbaa !51
  %malloc4 = getelementptr inbounds %struct._ENetCallbacks, ptr %5, i32 0, i32 0, !dbg !74
  %6 = load ptr, ptr %malloc4, align 8, !dbg !74, !tbaa !62
  %cmp5 = icmp eq ptr %6, null, !dbg !75
  br i1 %cmp5, label %if.then9, label %lor.lhs.false6, !dbg !76

lor.lhs.false6:                                   ; preds = %if.then3
  %7 = load ptr, ptr %inits.addr, align 8, !dbg !77, !tbaa !51
  %free7 = getelementptr inbounds %struct._ENetCallbacks, ptr %7, i32 0, i32 1, !dbg !78
  %8 = load ptr, ptr %free7, align 8, !dbg !78, !tbaa !68
  %cmp8 = icmp eq ptr %8, null, !dbg !79
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !80

if.then9:                                         ; preds = %lor.lhs.false6, %if.then3
  store i32 -1, ptr %retval, align 4, !dbg !81
  br label %return, !dbg !81

if.end10:                                         ; preds = %lor.lhs.false6
  %9 = load ptr, ptr %inits.addr, align 8, !dbg !82, !tbaa !51
  %malloc11 = getelementptr inbounds %struct._ENetCallbacks, ptr %9, i32 0, i32 0, !dbg !83
  %10 = load ptr, ptr %malloc11, align 8, !dbg !83, !tbaa !62
  store ptr %10, ptr @callbacks, align 8, !dbg !84, !tbaa !62
  %11 = load ptr, ptr %inits.addr, align 8, !dbg !85, !tbaa !51
  %free12 = getelementptr inbounds %struct._ENetCallbacks, ptr %11, i32 0, i32 1, !dbg !86
  %12 = load ptr, ptr %free12, align 8, !dbg !86, !tbaa !68
  store ptr %12, ptr getelementptr inbounds (%struct._ENetCallbacks, ptr @callbacks, i32 0, i32 1), align 8, !dbg !87, !tbaa !68
  br label %if.end13, !dbg !88

if.end13:                                         ; preds = %if.end10, %lor.lhs.false
  %13 = load ptr, ptr %inits.addr, align 8, !dbg !89, !tbaa !51
  %no_memory = getelementptr inbounds %struct._ENetCallbacks, ptr %13, i32 0, i32 2, !dbg !91
  %14 = load ptr, ptr %no_memory, align 8, !dbg !91, !tbaa !92
  %cmp14 = icmp ne ptr %14, null, !dbg !93
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !94

if.then15:                                        ; preds = %if.end13
  %15 = load ptr, ptr %inits.addr, align 8, !dbg !95, !tbaa !51
  %no_memory16 = getelementptr inbounds %struct._ENetCallbacks, ptr %15, i32 0, i32 2, !dbg !96
  %16 = load ptr, ptr %no_memory16, align 8, !dbg !96, !tbaa !92
  store ptr %16, ptr getelementptr inbounds (%struct._ENetCallbacks, ptr @callbacks, i32 0, i32 2), align 8, !dbg !97, !tbaa !92
  br label %if.end17, !dbg !98

if.end17:                                         ; preds = %if.then15, %if.end13
  %call = call i32 @enet_initialize(), !dbg !99
  store i32 %call, ptr %retval, align 4, !dbg !100
  br label %return, !dbg !100

return:                                           ; preds = %if.end17, %if.then9, %if.then
  %17 = load i32, ptr %retval, align 4, !dbg !101
  ret i32 %17, !dbg !101
}

declare !dbg !102 i32 @enet_initialize() #1

; Function Attrs: nounwind uwtable
define i32 @enet_linked_version() #0 !dbg !105 {
entry:
  ret i32 66317, !dbg !108
}

; Function Attrs: nounwind uwtable
define ptr @enet_malloc(i64 noundef %size) #0 !dbg !109 {
entry:
  %size.addr = alloca i64, align 8
  %memory = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !113
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !111, metadata !DIExpression()), !dbg !115
  call void @llvm.lifetime.start.p0(i64 8, ptr %memory) #7, !dbg !116
  tail call void @llvm.dbg.declare(metadata ptr %memory, metadata !112, metadata !DIExpression()), !dbg !117
  %0 = load ptr, ptr @callbacks, align 8, !dbg !118, !tbaa !62
  %1 = load i64, ptr %size.addr, align 8, !dbg !119, !tbaa !113
  %call = call ptr %0(i64 noundef %1), !dbg !120
  store ptr %call, ptr %memory, align 8, !dbg !117, !tbaa !51
  %2 = load ptr, ptr %memory, align 8, !dbg !121, !tbaa !51
  %cmp = icmp eq ptr %2, null, !dbg !123
  br i1 %cmp, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr getelementptr inbounds (%struct._ENetCallbacks, ptr @callbacks, i32 0, i32 2), align 8, !dbg !125, !tbaa !92
  call void %3(), !dbg !126
  br label %if.end, !dbg !126

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %memory, align 8, !dbg !127, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr %memory) #7, !dbg !128
  ret ptr %4, !dbg !129
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define void @enet_free(ptr noundef %memory) #0 !dbg !130 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8, !tbaa !51
  tail call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !132, metadata !DIExpression()), !dbg !133
  %0 = load ptr, ptr getelementptr inbounds (%struct._ENetCallbacks, ptr @callbacks, i32 0, i32 1), align 8, !dbg !134, !tbaa !68
  %1 = load ptr, ptr %memory.addr, align 8, !dbg !135, !tbaa !51
  call void %0(ptr noundef %1), !dbg !136
  ret void, !dbg !137
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "callbacks", scope: !2, file: !3, line: 8, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "callbacks.c", directory: "/local-ssd/gtkorvo-enet-lyll2v67afzd6midnlijfucjcozk7c7f-build/aidengro/spack-stage-gtkorvo-enet-1.3.14-lyll2v67afzd6midnlijfucjcozk7c7f/spack-src", checksumkind: CSK_MD5, checksum: "e59cf9d1d1234affbcee0f0d3d814f36")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0}
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENetCallbacks", file: !8, line: 15, baseType: !9)
!8 = !DIFile(filename: "./include/enet/callbacks.h", directory: "/local-ssd/gtkorvo-enet-lyll2v67afzd6midnlijfucjcozk7c7f-build/aidengro/spack-stage-gtkorvo-enet-1.3.14-lyll2v67afzd6midnlijfucjcozk7c7f/spack-src", checksumkind: CSK_MD5, checksum: "66a53739632b8d38a93f117cc941a977")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ENetCallbacks", file: !8, line: 10, size: 192, elements: !10)
!10 = !{!11, !18, !22}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !9, file: !8, line: 12, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{!5, !15}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 70, baseType: !17)
!16 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!17 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !9, file: !8, line: 13, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !5}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "no_memory", scope: !9, file: !8, line: 14, baseType: !23, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{null}
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 8, !"PIC Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 2}
!31 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!32 = distinct !DISubprogram(name: "enet_initialize_with_callbacks", scope: !3, file: !3, line: 11, type: !33, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !36, !41}
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENetVersion", file: !37, line: 35, baseType: !38)
!37 = !DIFile(filename: "./include/enet/enet.h", directory: "/local-ssd/gtkorvo-enet-lyll2v67afzd6midnlijfucjcozk7c7f-build/aidengro/spack-stage-gtkorvo-enet-1.3.14-lyll2v67afzd6midnlijfucjcozk7c7f/spack-src", checksumkind: CSK_MD5, checksum: "a3fb8b1816a63760677e650a889e7665")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "enet_uint32", file: !39, line: 10, baseType: !40)
!39 = !DIFile(filename: "./include/enet/types.h", directory: "/local-ssd/gtkorvo-enet-lyll2v67afzd6midnlijfucjcozk7c7f-build/aidengro/spack-stage-gtkorvo-enet-1.3.14-lyll2v67afzd6midnlijfucjcozk7c7f/spack-src", checksumkind: CSK_MD5, checksum: "282839a96b75ab1620c020bde496ee7e")
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!43 = !{!44, !45}
!44 = !DILocalVariable(name: "version", arg: 1, scope: !32, file: !3, line: 11, type: !36)
!45 = !DILocalVariable(name: "inits", arg: 2, scope: !32, file: !3, line: 11, type: !41)
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 11, column: 45, scope: !32)
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !48, i64 0}
!53 = !DILocation(line: 11, column: 76, scope: !32)
!54 = !DILocation(line: 13, column: 8, scope: !55)
!55 = distinct !DILexicalBlock(scope: !32, file: !3, line: 13, column: 8)
!56 = !DILocation(line: 13, column: 16, scope: !55)
!57 = !DILocation(line: 13, column: 8, scope: !32)
!58 = !DILocation(line: 14, column: 6, scope: !55)
!59 = !DILocation(line: 16, column: 8, scope: !60)
!60 = distinct !DILexicalBlock(scope: !32, file: !3, line: 16, column: 8)
!61 = !DILocation(line: 16, column: 17, scope: !60)
!62 = !{!63, !52, i64 0}
!63 = !{!"_ENetCallbacks", !52, i64 0, !52, i64 8, !52, i64 16}
!64 = !DILocation(line: 16, column: 24, scope: !60)
!65 = !DILocation(line: 16, column: 32, scope: !60)
!66 = !DILocation(line: 16, column: 35, scope: !60)
!67 = !DILocation(line: 16, column: 44, scope: !60)
!68 = !{!63, !52, i64 8}
!69 = !DILocation(line: 16, column: 49, scope: !60)
!70 = !DILocation(line: 16, column: 8, scope: !32)
!71 = !DILocation(line: 18, column: 11, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 18, column: 11)
!73 = distinct !DILexicalBlock(scope: !60, file: !3, line: 17, column: 4)
!74 = !DILocation(line: 18, column: 20, scope: !72)
!75 = !DILocation(line: 18, column: 27, scope: !72)
!76 = !DILocation(line: 18, column: 35, scope: !72)
!77 = !DILocation(line: 18, column: 38, scope: !72)
!78 = !DILocation(line: 18, column: 47, scope: !72)
!79 = !DILocation(line: 18, column: 52, scope: !72)
!80 = !DILocation(line: 18, column: 11, scope: !73)
!81 = !DILocation(line: 19, column: 9, scope: !72)
!82 = !DILocation(line: 21, column: 26, scope: !73)
!83 = !DILocation(line: 21, column: 35, scope: !73)
!84 = !DILocation(line: 21, column: 24, scope: !73)
!85 = !DILocation(line: 22, column: 24, scope: !73)
!86 = !DILocation(line: 22, column: 33, scope: !73)
!87 = !DILocation(line: 22, column: 22, scope: !73)
!88 = !DILocation(line: 23, column: 4, scope: !73)
!89 = !DILocation(line: 25, column: 8, scope: !90)
!90 = distinct !DILexicalBlock(scope: !32, file: !3, line: 25, column: 8)
!91 = !DILocation(line: 25, column: 17, scope: !90)
!92 = !{!63, !52, i64 16}
!93 = !DILocation(line: 25, column: 27, scope: !90)
!94 = !DILocation(line: 25, column: 8, scope: !32)
!95 = !DILocation(line: 26, column: 28, scope: !90)
!96 = !DILocation(line: 26, column: 37, scope: !90)
!97 = !DILocation(line: 26, column: 26, scope: !90)
!98 = !DILocation(line: 26, column: 6, scope: !90)
!99 = !DILocation(line: 28, column: 11, scope: !32)
!100 = !DILocation(line: 28, column: 4, scope: !32)
!101 = !DILocation(line: 29, column: 1, scope: !32)
!102 = !DISubprogram(name: "enet_initialize", scope: !37, file: !37, line: 452, type: !103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DISubroutineType(types: !104)
!104 = !{!35}
!105 = distinct !DISubprogram(name: "enet_linked_version", scope: !3, file: !3, line: 32, type: !106, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!106 = !DISubroutineType(types: !107)
!107 = !{!36}
!108 = !DILocation(line: 34, column: 5, scope: !105)
!109 = distinct !DISubprogram(name: "enet_malloc", scope: !3, file: !3, line: 38, type: !13, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !110)
!110 = !{!111, !112}
!111 = !DILocalVariable(name: "size", arg: 1, scope: !109, file: !3, line: 38, type: !15)
!112 = !DILocalVariable(name: "memory", scope: !109, file: !3, line: 40, type: !5)
!113 = !{!114, !114, i64 0}
!114 = !{!"long", !48, i64 0}
!115 = !DILocation(line: 38, column: 21, scope: !109)
!116 = !DILocation(line: 40, column: 4, scope: !109)
!117 = !DILocation(line: 40, column: 11, scope: !109)
!118 = !DILocation(line: 40, column: 30, scope: !109)
!119 = !DILocation(line: 40, column: 38, scope: !109)
!120 = !DILocation(line: 40, column: 20, scope: !109)
!121 = !DILocation(line: 42, column: 8, scope: !122)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 42, column: 8)
!123 = !DILocation(line: 42, column: 15, scope: !122)
!124 = !DILocation(line: 42, column: 8, scope: !109)
!125 = !DILocation(line: 43, column: 16, scope: !122)
!126 = !DILocation(line: 43, column: 6, scope: !122)
!127 = !DILocation(line: 45, column: 11, scope: !109)
!128 = !DILocation(line: 46, column: 1, scope: !109)
!129 = !DILocation(line: 45, column: 4, scope: !109)
!130 = distinct !DISubprogram(name: "enet_free", scope: !3, file: !3, line: 49, type: !20, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !131)
!131 = !{!132}
!132 = !DILocalVariable(name: "memory", arg: 1, scope: !130, file: !3, line: 49, type: !5)
!133 = !DILocation(line: 49, column: 19, scope: !130)
!134 = !DILocation(line: 51, column: 14, scope: !130)
!135 = !DILocation(line: 51, column: 20, scope: !130)
!136 = !DILocation(line: 51, column: 4, scope: !130)
!137 = !DILocation(line: 52, column: 1, scope: !130)

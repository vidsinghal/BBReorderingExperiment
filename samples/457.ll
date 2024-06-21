; ModuleID = 'samples/457.bc'
source_filename = "src/extended/coin_hmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [21 x i8] c"gt_hmm_is_valid(hmm)\00", align 1, !dbg !7
@__func__.gt_coin_hmm_loaded = private unnamed_addr constant [19 x i8] c"gt_coin_hmm_loaded\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [24 x i8] c"src/extended/coin_hmm.c\00", align 1, !dbg !18
@__func__.gt_coin_hmm_fair = private unnamed_addr constant [17 x i8] c"gt_coin_hmm_fair\00", align 1, !dbg !23
@.str.3 = private unnamed_addr constant [3 x i8] c"Hh\00", align 1, !dbg !28
@.str.4 = private unnamed_addr constant [3 x i8] c"Tt\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [25 x i8] c"gt_alphabet_size(a) == 2\00", align 1, !dbg !35
@__func__.gt_coin_hmm_alphabet = private unnamed_addr constant [21 x i8] c"gt_coin_hmm_alphabet\00", align 1, !dbg !40

; Function Attrs: nounwind uwtable
define ptr @gt_coin_hmm_loaded() #0 !dbg !64 {
entry:
  %hmm = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hmm) #5, !dbg !73
  tail call void @llvm.dbg.declare(metadata ptr %hmm, metadata !72, metadata !DIExpression()), !dbg !74
  %call = call ptr @gt_hmm_new(i32 noundef 2, i32 noundef 2), !dbg !75
  store ptr %call, ptr %hmm, align 8, !dbg !76, !tbaa !77
  %0 = load ptr, ptr %hmm, align 8, !dbg !81, !tbaa !77
  call void @gt_hmm_set_emission_probability(ptr noundef %0, i32 noundef 0, i32 noundef 0, double noundef 5.000000e-01), !dbg !82
  %1 = load ptr, ptr %hmm, align 8, !dbg !83, !tbaa !77
  call void @gt_hmm_set_emission_probability(ptr noundef %1, i32 noundef 0, i32 noundef 1, double noundef 5.000000e-01), !dbg !84
  %2 = load ptr, ptr %hmm, align 8, !dbg !85, !tbaa !77
  call void @gt_hmm_set_emission_probability(ptr noundef %2, i32 noundef 1, i32 noundef 0, double noundef 7.500000e-01), !dbg !86
  %3 = load ptr, ptr %hmm, align 8, !dbg !87, !tbaa !77
  call void @gt_hmm_set_emission_probability(ptr noundef %3, i32 noundef 1, i32 noundef 1, double noundef 2.500000e-01), !dbg !88
  %4 = load ptr, ptr %hmm, align 8, !dbg !89, !tbaa !77
  call void @gt_hmm_set_transition_probability(ptr noundef %4, i32 noundef 0, i32 noundef 1, double noundef 1.000000e-01), !dbg !90
  %5 = load ptr, ptr %hmm, align 8, !dbg !91, !tbaa !77
  call void @gt_hmm_set_transition_probability(ptr noundef %5, i32 noundef 1, i32 noundef 0, double noundef 1.000000e-01), !dbg !92
  %6 = load ptr, ptr %hmm, align 8, !dbg !93, !tbaa !77
  call void @gt_hmm_set_missing_transition_probabilities(ptr noundef %6), !dbg !94
  br label %do.body, !dbg !95

do.body:                                          ; preds = %entry
  %7 = load ptr, ptr %hmm, align 8, !dbg !96, !tbaa !77
  %call1 = call zeroext i1 @gt_hmm_is_valid(ptr noundef %7), !dbg !96
  br i1 %call1, label %if.end, label %if.then, !dbg !99

if.then:                                          ; preds = %do.body
  %8 = load ptr, ptr @stderr, align 8, !dbg !100, !tbaa !77
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_coin_hmm_loaded, ptr noundef @.str.2, i32 noundef 38), !dbg !100
  call void @abort() #6, !dbg !100
  unreachable, !dbg !100

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !99

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !99

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %hmm, align 8, !dbg !102, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 8, ptr %hmm) #5, !dbg !103
  ret ptr %9, !dbg !104
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !105 ptr @gt_hmm_new(i32 noundef, i32 noundef) #2

declare !dbg !108 void @gt_hmm_set_emission_probability(ptr noundef, i32 noundef, i32 noundef, double noundef) #2

declare !dbg !112 void @gt_hmm_set_transition_probability(ptr noundef, i32 noundef, i32 noundef, double noundef) #2

declare !dbg !113 void @gt_hmm_set_missing_transition_probabilities(ptr noundef) #2

declare !dbg !116 zeroext i1 @gt_hmm_is_valid(ptr noundef) #2

declare !dbg !122 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !191 void @abort() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @gt_coin_hmm_fair() #0 !dbg !195 {
entry:
  %hmm = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hmm) #5, !dbg !198
  tail call void @llvm.dbg.declare(metadata ptr %hmm, metadata !197, metadata !DIExpression()), !dbg !199
  %call = call ptr @gt_hmm_new(i32 noundef 2, i32 noundef 2), !dbg !200
  store ptr %call, ptr %hmm, align 8, !dbg !201, !tbaa !77
  %0 = load ptr, ptr %hmm, align 8, !dbg !202, !tbaa !77
  call void @gt_hmm_set_emission_probability(ptr noundef %0, i32 noundef 0, i32 noundef 0, double noundef 5.000000e-01), !dbg !203
  %1 = load ptr, ptr %hmm, align 8, !dbg !204, !tbaa !77
  call void @gt_hmm_set_emission_probability(ptr noundef %1, i32 noundef 0, i32 noundef 1, double noundef 5.000000e-01), !dbg !205
  %2 = load ptr, ptr %hmm, align 8, !dbg !206, !tbaa !77
  call void @gt_hmm_set_emission_probability(ptr noundef %2, i32 noundef 1, i32 noundef 0, double noundef 5.000000e-01), !dbg !207
  %3 = load ptr, ptr %hmm, align 8, !dbg !208, !tbaa !77
  call void @gt_hmm_set_emission_probability(ptr noundef %3, i32 noundef 1, i32 noundef 1, double noundef 5.000000e-01), !dbg !209
  %4 = load ptr, ptr %hmm, align 8, !dbg !210, !tbaa !77
  call void @gt_hmm_set_transition_probability(ptr noundef %4, i32 noundef 0, i32 noundef 1, double noundef 5.000000e-01), !dbg !211
  %5 = load ptr, ptr %hmm, align 8, !dbg !212, !tbaa !77
  call void @gt_hmm_set_transition_probability(ptr noundef %5, i32 noundef 1, i32 noundef 0, double noundef 5.000000e-01), !dbg !213
  %6 = load ptr, ptr %hmm, align 8, !dbg !214, !tbaa !77
  call void @gt_hmm_set_missing_transition_probabilities(ptr noundef %6), !dbg !215
  br label %do.body, !dbg !216

do.body:                                          ; preds = %entry
  %7 = load ptr, ptr %hmm, align 8, !dbg !217, !tbaa !77
  %call1 = call zeroext i1 @gt_hmm_is_valid(ptr noundef %7), !dbg !217
  br i1 %call1, label %if.end, label %if.then, !dbg !220

if.then:                                          ; preds = %do.body
  %8 = load ptr, ptr @stderr, align 8, !dbg !221, !tbaa !77
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_coin_hmm_fair, ptr noundef @.str.2, i32 noundef 60), !dbg !221
  call void @abort() #6, !dbg !221
  unreachable, !dbg !221

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !220

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !220

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %hmm, align 8, !dbg !223, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 8, ptr %hmm) #5, !dbg !224
  ret ptr %9, !dbg !225
}

; Function Attrs: nounwind uwtable
define ptr @gt_coin_hmm_alphabet() #0 !dbg !226 {
entry:
  %a = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #5, !dbg !235
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !234, metadata !DIExpression()), !dbg !236
  %call = call ptr @gt_alphabet_new_empty(), !dbg !237
  store ptr %call, ptr %a, align 8, !dbg !236, !tbaa !77
  %0 = load ptr, ptr %a, align 8, !dbg !238, !tbaa !77
  call void @gt_alphabet_add_mapping(ptr noundef %0, ptr noundef @.str.3), !dbg !239
  %1 = load ptr, ptr %a, align 8, !dbg !240, !tbaa !77
  call void @gt_alphabet_add_mapping(ptr noundef %1, ptr noundef @.str.4), !dbg !241
  br label %do.body, !dbg !242

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %a, align 8, !dbg !243, !tbaa !77
  %call1 = call i32 @gt_alphabet_size(ptr noundef %2), !dbg !243
  %cmp = icmp eq i32 %call1, 2, !dbg !243
  br i1 %cmp, label %if.end, label %if.then, !dbg !246

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !247, !tbaa !77
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.gt_coin_hmm_alphabet, ptr noundef @.str.2, i32 noundef 70), !dbg !247
  call void @abort() #6, !dbg !247
  unreachable, !dbg !247

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !246

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !246

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %a, align 8, !dbg !249, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #5, !dbg !250
  ret ptr %4, !dbg !251
}

declare !dbg !252 ptr @gt_alphabet_new_empty() #2

declare !dbg !253 void @gt_alphabet_add_mapping(ptr noundef, ptr noundef) #2

declare !dbg !256 i32 @gt_alphabet_size(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!43}
!llvm.module.flags = !{!58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/extended/coin_hmm.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "55ebb10b63153a9c0af4ef0b15295315")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 21)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 152, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 19)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 24)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 136, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 17)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 3)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !30, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 25)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 168, elements: !10)
!43 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !44, globals: !57, splitDebugInlining: false, nameTableKind: None)
!44 = !{!45, !52}
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 24, baseType: !47, size: 32, elements: !48)
!46 = !DIFile(filename: "src/extended/coin_hmm.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "ba6070c265eee688b3ac5d19ddc80880")
!47 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!48 = !{!49, !50, !51}
!49 = !DIEnumerator(name: "COIN_FAIR", value: 0)
!50 = !DIEnumerator(name: "COIN_LOADED", value: 1)
!51 = !DIEnumerator(name: "COIN_NUM_OF_STATES", value: 2)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 30, baseType: !47, size: 32, elements: !53)
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "HEAD", value: 0)
!55 = !DIEnumerator(name: "TAIL", value: 1)
!56 = !DIEnumerator(name: "COIN_NUM_OF_SYMBOLS", value: 2)
!57 = !{!0, !7, !12, !18, !23, !28, !33, !35, !40}
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = !{i32 8, !"PIC Level", i32 2}
!62 = !{i32 7, !"uwtable", i32 2}
!63 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!64 = distinct !DISubprogram(name: "gt_coin_hmm_loaded", scope: !2, file: !2, line: 21, type: !65, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtHMM", file: !69, line: 24, baseType: !70)
!69 = !DIFile(filename: "src/extended/hmm.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "2052de6d4a67a4f65754f96a3b52369e")
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtHMM", file: !69, line: 24, flags: DIFlagFwdDecl)
!71 = !{!72}
!72 = !DILocalVariable(name: "hmm", scope: !64, file: !2, line: 23, type: !67)
!73 = !DILocation(line: 23, column: 3, scope: !64)
!74 = !DILocation(line: 23, column: 10, scope: !64)
!75 = !DILocation(line: 26, column: 9, scope: !64)
!76 = !DILocation(line: 26, column: 7, scope: !64)
!77 = !{!78, !78, i64 0}
!78 = !{!"any pointer", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !DILocation(line: 29, column: 35, scope: !64)
!82 = !DILocation(line: 29, column: 3, scope: !64)
!83 = !DILocation(line: 30, column: 35, scope: !64)
!84 = !DILocation(line: 30, column: 3, scope: !64)
!85 = !DILocation(line: 31, column: 35, scope: !64)
!86 = !DILocation(line: 31, column: 3, scope: !64)
!87 = !DILocation(line: 32, column: 35, scope: !64)
!88 = !DILocation(line: 32, column: 3, scope: !64)
!89 = !DILocation(line: 35, column: 37, scope: !64)
!90 = !DILocation(line: 35, column: 3, scope: !64)
!91 = !DILocation(line: 36, column: 37, scope: !64)
!92 = !DILocation(line: 36, column: 3, scope: !64)
!93 = !DILocation(line: 37, column: 47, scope: !64)
!94 = !DILocation(line: 37, column: 3, scope: !64)
!95 = !DILocation(line: 38, column: 3, scope: !64)
!96 = !DILocation(line: 38, column: 3, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 38, column: 3)
!98 = distinct !DILexicalBlock(scope: !64, file: !2, line: 38, column: 3)
!99 = !DILocation(line: 38, column: 3, scope: !98)
!100 = !DILocation(line: 38, column: 3, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !2, line: 38, column: 3)
!102 = !DILocation(line: 40, column: 10, scope: !64)
!103 = !DILocation(line: 41, column: 1, scope: !64)
!104 = !DILocation(line: 40, column: 3, scope: !64)
!105 = !DISubprogram(name: "gt_hmm_new", scope: !69, file: !69, line: 26, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!106 = !DISubroutineType(types: !107)
!107 = !{!67, !47, !47}
!108 = !DISubprogram(name: "gt_hmm_set_emission_probability", scope: !69, file: !69, line: 38, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !67, !47, !47, !111}
!111 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!112 = !DISubprogram(name: "gt_hmm_set_transition_probability", scope: !69, file: !69, line: 31, type: !109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!113 = !DISubprogram(name: "gt_hmm_set_missing_transition_probabilities", scope: !69, file: !69, line: 34, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !67}
!116 = !DISubprogram(name: "gt_hmm_is_valid", scope: !69, file: !69, line: 58, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !120}
!119 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!122 = !DISubprogram(name: "fprintf", scope: !123, file: !123, line: 350, type: !124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !127, !189, null}
!126 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!127 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 7, baseType: !131)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 49, size: 1728, elements: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!133 = !{!134, !135, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !150, !152, !153, !154, !158, !160, !162, !166, !169, !171, !174, !177, !178, !180, !184, !185}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !131, file: !132, line: 51, baseType: !126, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !131, file: !132, line: 54, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !131, file: !132, line: 55, baseType: !136, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !131, file: !132, line: 56, baseType: !136, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !131, file: !132, line: 57, baseType: !136, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !131, file: !132, line: 58, baseType: !136, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !131, file: !132, line: 59, baseType: !136, size: 64, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !131, file: !132, line: 60, baseType: !136, size: 64, offset: 448)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !131, file: !132, line: 61, baseType: !136, size: 64, offset: 512)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !131, file: !132, line: 64, baseType: !136, size: 64, offset: 576)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !131, file: !132, line: 65, baseType: !136, size: 64, offset: 640)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !131, file: !132, line: 66, baseType: !136, size: 64, offset: 704)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !131, file: !132, line: 68, baseType: !148, size: 64, offset: 768)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 36, flags: DIFlagFwdDecl)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !131, file: !132, line: 70, baseType: !151, size: 64, offset: 832)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !131, file: !132, line: 72, baseType: !126, size: 32, offset: 896)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !131, file: !132, line: 73, baseType: !126, size: 32, offset: 928)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !131, file: !132, line: 74, baseType: !155, size: 64, offset: 960)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !156, line: 152, baseType: !157)
!156 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!157 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !131, file: !132, line: 77, baseType: !159, size: 16, offset: 1024)
!159 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !131, file: !132, line: 78, baseType: !161, size: 8, offset: 1040)
!161 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !131, file: !132, line: 79, baseType: !163, size: 8, offset: 1048)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 1)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !131, file: !132, line: 81, baseType: !167, size: 64, offset: 1088)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !132, line: 43, baseType: null)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !131, file: !132, line: 89, baseType: !170, size: 64, offset: 1152)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !156, line: 153, baseType: !157)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !131, file: !132, line: 91, baseType: !172, size: 64, offset: 1216)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !132, line: 37, flags: DIFlagFwdDecl)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !131, file: !132, line: 92, baseType: !175, size: 64, offset: 1280)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !132, line: 38, flags: DIFlagFwdDecl)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !131, file: !132, line: 93, baseType: !151, size: 64, offset: 1344)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !131, file: !132, line: 94, baseType: !179, size: 64, offset: 1408)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !131, file: !132, line: 95, baseType: !181, size: 64, offset: 1472)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !182, line: 70, baseType: !183)
!182 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!183 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !131, file: !132, line: 96, baseType: !126, size: 32, offset: 1536)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !131, file: !132, line: 98, baseType: !186, size: 160, offset: 1568)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 20)
!189 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!191 = !DISubprogram(name: "abort", scope: !192, file: !192, line: 598, type: !193, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!192 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!193 = !DISubroutineType(types: !194)
!194 = !{null}
!195 = distinct !DISubprogram(name: "gt_coin_hmm_fair", scope: !2, file: !2, line: 43, type: !65, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !196)
!196 = !{!197}
!197 = !DILocalVariable(name: "hmm", scope: !195, file: !2, line: 45, type: !67)
!198 = !DILocation(line: 45, column: 3, scope: !195)
!199 = !DILocation(line: 45, column: 10, scope: !195)
!200 = !DILocation(line: 48, column: 9, scope: !195)
!201 = !DILocation(line: 48, column: 7, scope: !195)
!202 = !DILocation(line: 51, column: 35, scope: !195)
!203 = !DILocation(line: 51, column: 3, scope: !195)
!204 = !DILocation(line: 52, column: 35, scope: !195)
!205 = !DILocation(line: 52, column: 3, scope: !195)
!206 = !DILocation(line: 53, column: 35, scope: !195)
!207 = !DILocation(line: 53, column: 3, scope: !195)
!208 = !DILocation(line: 54, column: 35, scope: !195)
!209 = !DILocation(line: 54, column: 3, scope: !195)
!210 = !DILocation(line: 57, column: 37, scope: !195)
!211 = !DILocation(line: 57, column: 3, scope: !195)
!212 = !DILocation(line: 58, column: 37, scope: !195)
!213 = !DILocation(line: 58, column: 3, scope: !195)
!214 = !DILocation(line: 59, column: 47, scope: !195)
!215 = !DILocation(line: 59, column: 3, scope: !195)
!216 = !DILocation(line: 60, column: 3, scope: !195)
!217 = !DILocation(line: 60, column: 3, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !2, line: 60, column: 3)
!219 = distinct !DILexicalBlock(scope: !195, file: !2, line: 60, column: 3)
!220 = !DILocation(line: 60, column: 3, scope: !219)
!221 = !DILocation(line: 60, column: 3, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !2, line: 60, column: 3)
!223 = !DILocation(line: 62, column: 10, scope: !195)
!224 = !DILocation(line: 63, column: 1, scope: !195)
!225 = !DILocation(line: 62, column: 3, scope: !195)
!226 = distinct !DISubprogram(name: "gt_coin_hmm_alphabet", scope: !2, file: !2, line: 65, type: !227, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !43, retainedNodes: !233)
!227 = !DISubroutineType(types: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtAlphabet", file: !231, line: 32, baseType: !232)
!231 = !DIFile(filename: "src/core/alphabet_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0b48240ce57ca6598f5548b5c9cf52e4")
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtAlphabet", file: !231, line: 32, flags: DIFlagFwdDecl)
!233 = !{!234}
!234 = !DILocalVariable(name: "a", scope: !226, file: !2, line: 67, type: !229)
!235 = !DILocation(line: 67, column: 3, scope: !226)
!236 = !DILocation(line: 67, column: 15, scope: !226)
!237 = !DILocation(line: 67, column: 19, scope: !226)
!238 = !DILocation(line: 68, column: 27, scope: !226)
!239 = !DILocation(line: 68, column: 3, scope: !226)
!240 = !DILocation(line: 69, column: 27, scope: !226)
!241 = !DILocation(line: 69, column: 3, scope: !226)
!242 = !DILocation(line: 70, column: 3, scope: !226)
!243 = !DILocation(line: 70, column: 3, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !2, line: 70, column: 3)
!245 = distinct !DILexicalBlock(scope: !226, file: !2, line: 70, column: 3)
!246 = !DILocation(line: 70, column: 3, scope: !245)
!247 = !DILocation(line: 70, column: 3, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !2, line: 70, column: 3)
!249 = !DILocation(line: 71, column: 10, scope: !226)
!250 = !DILocation(line: 72, column: 1, scope: !226)
!251 = !DILocation(line: 71, column: 3, scope: !226)
!252 = !DISubprogram(name: "gt_alphabet_new_empty", scope: !231, file: !231, line: 39, type: !227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DISubprogram(name: "gt_alphabet_add_mapping", scope: !231, file: !231, line: 69, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !229, !190}
!256 = !DISubprogram(name: "gt_alphabet_size", scope: !231, file: !231, line: 79, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{!47, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)

; ModuleID = 'samples/886.bc'
source_filename = "third_party/upb/upb/upb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1, !dbg !0

; Function Attrs: nounwind uwtable
define hidden void @_upb_EncodeRoundTripDouble(double noundef %val, ptr noundef %buf, i64 noundef %size) #0 !dbg !15 {
entry:
  %val.addr = alloca double, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store double %val, ptr %val.addr, align 8, !tbaa !27
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !24, metadata !DIExpression()), !dbg !31
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !32
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !25, metadata !DIExpression()), !dbg !34
  store i64 %size, ptr %size.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !26, metadata !DIExpression()), !dbg !37
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !38, !tbaa !32
  %1 = load i64, ptr %size.addr, align 8, !dbg !39, !tbaa !35
  %2 = load double, ptr %val.addr, align 8, !dbg !40, !tbaa !27
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str, i32 noundef 15, double noundef %2) #3, !dbg !41
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !42, !tbaa !32
  %call1 = call double @strtod(ptr noundef %3, ptr noundef null) #3, !dbg !44
  %4 = load double, ptr %val.addr, align 8, !dbg !45, !tbaa !27
  %cmp = fcmp une double %call1, %4, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !48, !tbaa !32
  %6 = load i64, ptr %size.addr, align 8, !dbg !50, !tbaa !35
  %7 = load double, ptr %val.addr, align 8, !dbg !51, !tbaa !27
  %call2 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %5, i64 noundef %6, ptr noundef @.str, i32 noundef 17, double noundef %7) #3, !dbg !52
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !54, !tbaa !32
  call void @upb_FixLocale(ptr noundef %8), !dbg !55
  ret void, !dbg !56
}

; Function Attrs: nounwind
declare !dbg !57 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare !dbg !66 double @strtod(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @upb_FixLocale(ptr noundef %p) #0 !dbg !72 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !32
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !76, metadata !DIExpression()), !dbg !77
  br label %for.cond, !dbg !78

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %p.addr, align 8, !dbg !79, !tbaa !32
  %1 = load i8, ptr %0, align 1, !dbg !82, !tbaa !83
  %tobool = icmp ne i8 %1, 0, !dbg !84
  br i1 %tobool, label %for.body, label %for.end, !dbg !84

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p.addr, align 8, !dbg !85, !tbaa !32
  %3 = load i8, ptr %2, align 1, !dbg !88, !tbaa !83
  %conv = sext i8 %3 to i32, !dbg !88
  %cmp = icmp eq i32 %conv, 44, !dbg !89
  br i1 %cmp, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %p.addr, align 8, !dbg !91, !tbaa !32
  store i8 46, ptr %4, align 1, !dbg !92, !tbaa !83
  br label %if.end, !dbg !93

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !94

for.inc:                                          ; preds = %if.end
  %5 = load ptr, ptr %p.addr, align 8, !dbg !95, !tbaa !32
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1, !dbg !95
  store ptr %incdec.ptr, ptr %p.addr, align 8, !dbg !95, !tbaa !32
  br label %for.cond, !dbg !96, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  ret void, !dbg !100
}

; Function Attrs: nounwind uwtable
define hidden void @_upb_EncodeRoundTripFloat(float noundef %val, ptr noundef %buf, i64 noundef %size) #0 !dbg !101 {
entry:
  %val.addr = alloca float, align 4
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store float %val, ptr %val.addr, align 4, !tbaa !109
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !106, metadata !DIExpression()), !dbg !111
  store ptr %buf, ptr %buf.addr, align 8, !tbaa !32
  tail call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !107, metadata !DIExpression()), !dbg !112
  store i64 %size, ptr %size.addr, align 8, !tbaa !35
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !108, metadata !DIExpression()), !dbg !113
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !114, !tbaa !32
  %1 = load i64, ptr %size.addr, align 8, !dbg !115, !tbaa !35
  %2 = load float, ptr %val.addr, align 4, !dbg !116, !tbaa !109
  %conv = fpext float %2 to double, !dbg !116
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str, i32 noundef 6, double noundef %conv) #3, !dbg !117
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !118, !tbaa !32
  %call1 = call float @strtof(ptr noundef %3, ptr noundef null) #3, !dbg !120
  %4 = load float, ptr %val.addr, align 4, !dbg !121, !tbaa !109
  %cmp = fcmp une float %call1, %4, !dbg !122
  br i1 %cmp, label %if.then, label %if.end, !dbg !123

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !124, !tbaa !32
  %6 = load i64, ptr %size.addr, align 8, !dbg !126, !tbaa !35
  %7 = load float, ptr %val.addr, align 4, !dbg !127, !tbaa !109
  %conv3 = fpext float %7 to double, !dbg !127
  %call4 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %5, i64 noundef %6, ptr noundef @.str, i32 noundef 9, double noundef %conv3) #3, !dbg !128
  br label %if.end, !dbg !129

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !130, !tbaa !32
  call void @upb_FixLocale(ptr noundef %8), !dbg !131
  ret void, !dbg !132
}

; Function Attrs: nounwind
declare !dbg !133 float @strtof(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "third_party/upb/upb/upb.c", directory: "/local-ssd/py-grpcio-ona3o4hxrwcumc5bj36xxurhwz2hlb4f-build/aidengro/spack-stage-py-grpcio-1.52.0-ona3o4hxrwcumc5bj36xxurhwz2hlb4f/spack-src", checksumkind: CSK_MD5, checksum: "798947874ffdcff8123628d3ee035650")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !8, splitDebugInlining: false, nameTableKind: None)
!8 = !{!0}
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!15 = distinct !DISubprogram(name: "_upb_EncodeRoundTripDouble", scope: !2, file: !2, line: 58, type: !16, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !23)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !19, !20}
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 70, baseType: !22)
!21 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26}
!24 = !DILocalVariable(name: "val", arg: 1, scope: !15, file: !2, line: 58, type: !18)
!25 = !DILocalVariable(name: "buf", arg: 2, scope: !15, file: !2, line: 58, type: !19)
!26 = !DILocalVariable(name: "size", arg: 3, scope: !15, file: !2, line: 58, type: !20)
!27 = !{!28, !28, i64 0}
!28 = !{!"double", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 58, column: 40, scope: !15)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !29, i64 0}
!34 = !DILocation(line: 58, column: 51, scope: !15)
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !29, i64 0}
!37 = !DILocation(line: 58, column: 63, scope: !15)
!38 = !DILocation(line: 60, column: 12, scope: !15)
!39 = !DILocation(line: 60, column: 17, scope: !15)
!40 = !DILocation(line: 60, column: 40, scope: !15)
!41 = !DILocation(line: 60, column: 3, scope: !15)
!42 = !DILocation(line: 61, column: 14, scope: !43)
!43 = distinct !DILexicalBlock(scope: !15, file: !2, line: 61, column: 7)
!44 = !DILocation(line: 61, column: 7, scope: !43)
!45 = !DILocation(line: 61, column: 28, scope: !43)
!46 = !DILocation(line: 61, column: 25, scope: !43)
!47 = !DILocation(line: 61, column: 7, scope: !15)
!48 = !DILocation(line: 62, column: 14, scope: !49)
!49 = distinct !DILexicalBlock(scope: !43, file: !2, line: 61, column: 33)
!50 = !DILocation(line: 62, column: 19, scope: !49)
!51 = !DILocation(line: 62, column: 46, scope: !49)
!52 = !DILocation(line: 62, column: 5, scope: !49)
!53 = !DILocation(line: 64, column: 3, scope: !49)
!54 = !DILocation(line: 65, column: 17, scope: !15)
!55 = !DILocation(line: 65, column: 3, scope: !15)
!56 = !DILocation(line: 66, column: 1, scope: !15)
!57 = !DISubprogram(name: "snprintf", scope: !58, file: !58, line: 378, type: !59, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!58 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !62, !20, !63, null}
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !19)
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!66 = !DISubprogram(name: "strtod", scope: !67, file: !67, line: 118, type: !68, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!67 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!68 = !DISubroutineType(types: !69)
!69 = !{!18, !63, !70}
!70 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!72 = distinct !DISubprogram(name: "upb_FixLocale", scope: !2, file: !2, line: 47, type: !73, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !19}
!75 = !{!76}
!76 = !DILocalVariable(name: "p", arg: 1, scope: !72, file: !2, line: 47, type: !19)
!77 = !DILocation(line: 47, column: 33, scope: !72)
!78 = !DILocation(line: 53, column: 3, scope: !72)
!79 = !DILocation(line: 53, column: 11, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !2, line: 53, column: 3)
!81 = distinct !DILexicalBlock(scope: !72, file: !2, line: 53, column: 3)
!82 = !DILocation(line: 53, column: 10, scope: !80)
!83 = !{!29, !29, i64 0}
!84 = !DILocation(line: 53, column: 3, scope: !81)
!85 = !DILocation(line: 54, column: 10, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 54, column: 9)
!87 = distinct !DILexicalBlock(scope: !80, file: !2, line: 53, column: 19)
!88 = !DILocation(line: 54, column: 9, scope: !86)
!89 = !DILocation(line: 54, column: 12, scope: !86)
!90 = !DILocation(line: 54, column: 9, scope: !87)
!91 = !DILocation(line: 54, column: 21, scope: !86)
!92 = !DILocation(line: 54, column: 23, scope: !86)
!93 = !DILocation(line: 54, column: 20, scope: !86)
!94 = !DILocation(line: 55, column: 3, scope: !87)
!95 = !DILocation(line: 53, column: 15, scope: !80)
!96 = !DILocation(line: 53, column: 3, scope: !80)
!97 = distinct !{!97, !84, !98, !99}
!98 = !DILocation(line: 55, column: 3, scope: !81)
!99 = !{!"llvm.loop.mustprogress"}
!100 = !DILocation(line: 56, column: 1, scope: !72)
!101 = distinct !DISubprogram(name: "_upb_EncodeRoundTripFloat", scope: !2, file: !2, line: 68, type: !102, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !105)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !104, !19, !20}
!104 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!105 = !{!106, !107, !108}
!106 = !DILocalVariable(name: "val", arg: 1, scope: !101, file: !2, line: 68, type: !104)
!107 = !DILocalVariable(name: "buf", arg: 2, scope: !101, file: !2, line: 68, type: !19)
!108 = !DILocalVariable(name: "size", arg: 3, scope: !101, file: !2, line: 68, type: !20)
!109 = !{!110, !110, i64 0}
!110 = !{!"float", !29, i64 0}
!111 = !DILocation(line: 68, column: 38, scope: !101)
!112 = !DILocation(line: 68, column: 49, scope: !101)
!113 = !DILocation(line: 68, column: 61, scope: !101)
!114 = !DILocation(line: 70, column: 12, scope: !101)
!115 = !DILocation(line: 70, column: 17, scope: !101)
!116 = !DILocation(line: 70, column: 40, scope: !101)
!117 = !DILocation(line: 70, column: 3, scope: !101)
!118 = !DILocation(line: 71, column: 14, scope: !119)
!119 = distinct !DILexicalBlock(scope: !101, file: !2, line: 71, column: 7)
!120 = !DILocation(line: 71, column: 7, scope: !119)
!121 = !DILocation(line: 71, column: 28, scope: !119)
!122 = !DILocation(line: 71, column: 25, scope: !119)
!123 = !DILocation(line: 71, column: 7, scope: !101)
!124 = !DILocation(line: 72, column: 14, scope: !125)
!125 = distinct !DILexicalBlock(scope: !119, file: !2, line: 71, column: 33)
!126 = !DILocation(line: 72, column: 19, scope: !125)
!127 = !DILocation(line: 72, column: 46, scope: !125)
!128 = !DILocation(line: 72, column: 5, scope: !125)
!129 = !DILocation(line: 74, column: 3, scope: !125)
!130 = !DILocation(line: 75, column: 17, scope: !101)
!131 = !DILocation(line: 75, column: 3, scope: !101)
!132 = !DILocation(line: 76, column: 1, scope: !101)
!133 = !DISubprogram(name: "strtof", scope: !67, file: !67, line: 124, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubroutineType(types: !135)
!135 = !{!104, !63, !70}

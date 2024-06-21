; ModuleID = 'samples/836.bc'
source_filename = "alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"\0A%s: out of storage\0A\00", align 1, !dbg !0
@argv0 = external global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @my_strdup(ptr noundef %s) #0 !dbg !18 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !24
  tail call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !23, metadata !DIExpression()), !dbg !28
  %0 = load ptr, ptr %s.addr, align 8, !dbg !29, !tbaa !24
  %call = call i64 @strlen(ptr noundef %0) #8, !dbg !30
  %add = add i64 %call, 1, !dbg !31
  %call1 = call ptr @mymalloc(i64 noundef %add), !dbg !32
  %1 = load ptr, ptr %s.addr, align 8, !dbg !33, !tbaa !24
  %call2 = call ptr @strcpy(ptr noundef %call1, ptr noundef %1) #9, !dbg !34
  ret ptr %call2, !dbg !35
}

; Function Attrs: nounwind
declare !dbg !36 ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @mymalloc(i64 noundef %size) #0 !dbg !44 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !51, metadata !DIExpression()), !dbg !54
  %0 = load i64, ptr %size.addr, align 8, !dbg !55, !tbaa !52
  %call = call noalias ptr @malloc(i64 noundef %0) #10, !dbg !56
  %call1 = call ptr @alloctest(ptr noundef %call), !dbg !57
  ret ptr %call1, !dbg !58
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !59 i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal ptr @alloctest(ptr noundef %p) #0 !dbg !62 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !24
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = load ptr, ptr %p.addr, align 8, !dbg !68, !tbaa !24
  %cmp = icmp eq ptr %0, null, !dbg !70
  br i1 %cmp, label %if.then, label %if.end, !dbg !71

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @argv0, align 8, !dbg !72, !tbaa !24
  call void (ptr, ...) @postfatal(ptr noundef @.str, ptr noundef %1), !dbg !74
  br label %if.end, !dbg !75

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !76, !tbaa !24
  ret ptr %2, !dbg !77
}

; Function Attrs: nounwind allocsize(0)
declare !dbg !78 noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @mycalloc(i64 noundef %nelem, i64 noundef %size) #0 !dbg !80 {
entry:
  %nelem.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %nelem, ptr %nelem.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %nelem.addr, metadata !84, metadata !DIExpression()), !dbg !86
  store i64 %size, ptr %size.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !85, metadata !DIExpression()), !dbg !87
  %0 = load i64, ptr %nelem.addr, align 8, !dbg !88, !tbaa !52
  %1 = load i64, ptr %size.addr, align 8, !dbg !89, !tbaa !52
  %call = call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #11, !dbg !90
  %call1 = call ptr @alloctest(ptr noundef %call), !dbg !91
  ret ptr %call1, !dbg !92
}

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !93 noalias ptr @calloc(i64 noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @myrealloc(ptr noundef %p, i64 noundef %size) #0 !dbg !94 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !24
  tail call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !98, metadata !DIExpression()), !dbg !100
  store i64 %size, ptr %size.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !99, metadata !DIExpression()), !dbg !101
  %0 = load ptr, ptr %p.addr, align 8, !dbg !102, !tbaa !24
  %1 = load i64, ptr %size.addr, align 8, !dbg !103, !tbaa !52
  %call = call ptr @realloc(ptr noundef %0, i64 noundef %1) #12, !dbg !104
  %call1 = call ptr @alloctest(ptr noundef %call), !dbg !105
  ret ptr %call1, !dbg !106
}

; Function Attrs: nounwind allocsize(1)
declare !dbg !107 ptr @realloc(ptr noundef, i64 noundef) #5

declare !dbg !108 void @postfatal(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "alloc.c", directory: "/local-ssd/cscope-n3p3cqlmcr3nc7hqkqft7rgtm57rqjit-build/aidengro/spack-stage-cscope-15.9-n3p3cqlmcr3nc7hqkqft7rgtm57rqjit/spack-src/src", checksumkind: CSK_MD5, checksum: "5ca45d40a25201f303e34f71ad4ddb4f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !8, globals: !10, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !{!0}
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!18 = distinct !DISubprogram(name: "my_strdup", scope: !2, file: !2, line: 54, type: !19, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!22 = !{!23}
!23 = !DILocalVariable(name: "s", arg: 1, scope: !18, file: !2, line: 54, type: !21)
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 54, column: 17, scope: !18)
!29 = !DILocation(line: 56, column: 32, scope: !18)
!30 = !DILocation(line: 56, column: 25, scope: !18)
!31 = !DILocation(line: 56, column: 35, scope: !18)
!32 = !DILocation(line: 56, column: 16, scope: !18)
!33 = !DILocation(line: 56, column: 41, scope: !18)
!34 = !DILocation(line: 56, column: 9, scope: !18)
!35 = !DILocation(line: 56, column: 2, scope: !18)
!36 = !DISubprogram(name: "strcpy", scope: !37, file: !37, line: 141, type: !38, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!37 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!38 = !DISubroutineType(types: !39)
!39 = !{!21, !40, !41}
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!41 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!44 = distinct !DISubprogram(name: "mymalloc", scope: !2, file: !2, line: 62, type: !45, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !50)
!45 = !DISubroutineType(types: !46)
!46 = !{!9, !47}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 70, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !{!51}
!51 = !DILocalVariable(name: "size", arg: 1, scope: !44, file: !2, line: 62, type: !47)
!52 = !{!53, !53, i64 0}
!53 = !{!"long", !26, i64 0}
!54 = !DILocation(line: 62, column: 17, scope: !44)
!55 = !DILocation(line: 64, column: 29, scope: !44)
!56 = !DILocation(line: 64, column: 22, scope: !44)
!57 = !DILocation(line: 64, column: 12, scope: !44)
!58 = !DILocation(line: 64, column: 5, scope: !44)
!59 = !DISubprogram(name: "strlen", scope: !37, file: !37, line: 407, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!60 = !DISubroutineType(types: !61)
!61 = !{!49, !42}
!62 = distinct !DISubprogram(name: "alloctest", scope: !2, file: !2, line: 86, type: !63, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{!9, !9}
!65 = !{!66}
!66 = !DILocalVariable(name: "p", arg: 1, scope: !62, file: !2, line: 86, type: !9)
!67 = !DILocation(line: 86, column: 17, scope: !62)
!68 = !DILocation(line: 88, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !62, file: !2, line: 88, column: 9)
!70 = !DILocation(line: 88, column: 11, scope: !69)
!71 = !DILocation(line: 88, column: 9, scope: !62)
!72 = !DILocation(line: 89, column: 38, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !2, line: 88, column: 20)
!74 = !DILocation(line: 89, column: 2, scope: !73)
!75 = !DILocation(line: 91, column: 5, scope: !73)
!76 = !DILocation(line: 92, column: 12, scope: !62)
!77 = !DILocation(line: 92, column: 5, scope: !62)
!78 = !DISubprogram(name: "malloc", scope: !79, file: !79, line: 540, type: !45, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!79 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!80 = distinct !DISubprogram(name: "mycalloc", scope: !2, file: !2, line: 70, type: !81, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!9, !47, !47}
!83 = !{!84, !85}
!84 = !DILocalVariable(name: "nelem", arg: 1, scope: !80, file: !2, line: 70, type: !47)
!85 = !DILocalVariable(name: "size", arg: 2, scope: !80, file: !2, line: 70, type: !47)
!86 = !DILocation(line: 70, column: 17, scope: !80)
!87 = !DILocation(line: 70, column: 31, scope: !80)
!88 = !DILocation(line: 72, column: 29, scope: !80)
!89 = !DILocation(line: 72, column: 36, scope: !80)
!90 = !DILocation(line: 72, column: 22, scope: !80)
!91 = !DILocation(line: 72, column: 12, scope: !80)
!92 = !DILocation(line: 72, column: 5, scope: !80)
!93 = !DISubprogram(name: "calloc", scope: !79, file: !79, line: 543, type: !81, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!94 = distinct !DISubprogram(name: "myrealloc", scope: !2, file: !2, line: 78, type: !95, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{!9, !9, !47}
!97 = !{!98, !99}
!98 = !DILocalVariable(name: "p", arg: 1, scope: !94, file: !2, line: 78, type: !9)
!99 = !DILocalVariable(name: "size", arg: 2, scope: !94, file: !2, line: 78, type: !47)
!100 = !DILocation(line: 78, column: 17, scope: !94)
!101 = !DILocation(line: 78, column: 27, scope: !94)
!102 = !DILocation(line: 80, column: 30, scope: !94)
!103 = !DILocation(line: 80, column: 33, scope: !94)
!104 = !DILocation(line: 80, column: 22, scope: !94)
!105 = !DILocation(line: 80, column: 12, scope: !94)
!106 = !DILocation(line: 80, column: 5, scope: !94)
!107 = !DISubprogram(name: "realloc", scope: !79, file: !79, line: 551, type: !95, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!108 = !DISubprogram(name: "postfatal", scope: !109, file: !109, line: 387, type: !110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DIFile(filename: "./global.h", directory: "/local-ssd/cscope-n3p3cqlmcr3nc7hqkqft7rgtm57rqjit-build/aidengro/spack-stage-cscope-15.9-n3p3cqlmcr3nc7hqkqft7rgtm57rqjit/spack-src/src", checksumkind: CSK_MD5, checksum: "4b51da57d63cc7ebd02ba5216506bb3c")
!110 = !DISubroutineType(types: !111)
!111 = !{null, !42, null}

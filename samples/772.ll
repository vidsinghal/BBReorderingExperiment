; ModuleID = 'samples/772.bc'
source_filename = "src/ltr/ltrharvest_tabout_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"# predictions are reported in the following way\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [90 x i8] c"# s(ret) e(ret) l(ret) s(lLTR) e(lLTR) l(lLTR) s(rLTR) e(rLTR) l(rLTR) sim(LTRs) seq-nr \0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"# where:\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [25 x i8] c"# s = starting position\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [23 x i8] c"# e = ending position\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [14 x i8] c"# l = length\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [29 x i8] c"# ret = LTR-retrotransposon\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [19 x i8] c"# lLTR = left LTR\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [20 x i8] c"# rLTR = right LTR\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [20 x i8] c"# sim = similarity\0A\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [28 x i8] c"# seq-nr = sequence number\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [24 x i8] c"# s(ret) e(ret) l(ret) \00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [24 x i8] c"s(lLTR) e(lLTR) l(lLTR)\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [12 x i8] c" TSD l(TSD)\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [9 x i8] c" m(lLTR)\00", align 1, !dbg !66
@.str.15 = private unnamed_addr constant [25 x i8] c" s(rLTR) e(rLTR) l(rLTR)\00", align 1, !dbg !71
@.str.16 = private unnamed_addr constant [9 x i8] c" m(rLTR)\00", align 1, !dbg !73
@.str.17 = private unnamed_addr constant [11 x i8] c" sim(LTRs)\00", align 1, !dbg !75
@.str.18 = private unnamed_addr constant [8 x i8] c" seq-nr\00", align 1, !dbg !80
@.str.19 = private unnamed_addr constant [11 x i8] c"\0A# where:\0A\00", align 1, !dbg !85
@.str.20 = private unnamed_addr constant [13 x i8] c"# m = motif\0A\00", align 1, !dbg !87
@.str.21 = private unnamed_addr constant [33 x i8] c"# TSD = target site duplication\0A\00", align 1, !dbg !92

; Function Attrs: nounwind uwtable
define ptr @gt_ltrharvest_tabout_stream_new(ptr noundef %in_stream, ptr noundef %v) #0 !dbg !105 {
entry:
  %in_stream.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %in_stream, ptr %in_stream.addr, align 8, !tbaa !139
  tail call void @llvm.dbg.declare(metadata ptr %in_stream.addr, metadata !137, metadata !DIExpression()), !dbg !143
  store ptr %v, ptr %v.addr, align 8, !tbaa !139
  tail call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !138, metadata !DIExpression()), !dbg !144
  %0 = load ptr, ptr %in_stream.addr, align 8, !dbg !145, !tbaa !139
  %1 = load ptr, ptr %v.addr, align 8, !dbg !146, !tbaa !139
  %call = call ptr @gt_visitor_stream_new(ptr noundef %0, ptr noundef %1), !dbg !147
  ret ptr %call, !dbg !148
}

declare !dbg !149 ptr @gt_visitor_stream_new(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define void @gt_ltrharvest_tabout_stream_printshortheader() #0 !dbg !151 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str), !dbg !154
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1), !dbg !155
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !156
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !157
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.4), !dbg !158
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !159
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.6), !dbg !160
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.7), !dbg !161
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.8), !dbg !162
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.9), !dbg !163
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !164
  ret void, !dbg !165
}

declare !dbg !166 i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define void @gt_ltrharvest_tabout_stream_printlongheader(i1 noundef zeroext %withtsd, i1 noundef zeroext %withmotif) #0 !dbg !174 {
entry:
  %withtsd.addr = alloca i8, align 1
  %withmotif.addr = alloca i8, align 1
  %frombool = zext i1 %withtsd to i8
  store i8 %frombool, ptr %withtsd.addr, align 1, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %withtsd.addr, metadata !179, metadata !DIExpression()), !dbg !183
  %frombool1 = zext i1 %withmotif to i8
  store i8 %frombool1, ptr %withmotif.addr, align 1, !tbaa !181
  tail call void @llvm.dbg.declare(metadata ptr %withmotif.addr, metadata !180, metadata !DIExpression()), !dbg !184
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str), !dbg !185
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.11), !dbg !186
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.12), !dbg !187
  %0 = load i8, ptr %withtsd.addr, align 1, !dbg !188, !tbaa !181, !range !190, !noundef !191
  %tobool = trunc i8 %0 to i1, !dbg !188
  br i1 %tobool, label %if.then, label %if.end, !dbg !192

if.then:                                          ; preds = %entry
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.13), !dbg !193
  br label %if.end, !dbg !195

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8, ptr %withmotif.addr, align 1, !dbg !196, !tbaa !181, !range !190, !noundef !191
  %tobool5 = trunc i8 %1 to i1, !dbg !196
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !198

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.14), !dbg !199
  br label %if.end8, !dbg !201

if.end8:                                          ; preds = %if.then6, %if.end
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.15), !dbg !202
  %2 = load i8, ptr %withtsd.addr, align 1, !dbg !203, !tbaa !181, !range !190, !noundef !191
  %tobool10 = trunc i8 %2 to i1, !dbg !203
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !205

if.then11:                                        ; preds = %if.end8
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.13), !dbg !206
  br label %if.end13, !dbg !208

if.end13:                                         ; preds = %if.then11, %if.end8
  %3 = load i8, ptr %withmotif.addr, align 1, !dbg !209, !tbaa !181, !range !190, !noundef !191
  %tobool14 = trunc i8 %3 to i1, !dbg !209
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !211

if.then15:                                        ; preds = %if.end13
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.16), !dbg !212
  br label %if.end17, !dbg !214

if.end17:                                         ; preds = %if.then15, %if.end13
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.17), !dbg !215
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.18), !dbg !216
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.19), !dbg !217
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !218
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.4), !dbg !219
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !220
  %4 = load i8, ptr %withmotif.addr, align 1, !dbg !221, !tbaa !181, !range !190, !noundef !191
  %tobool24 = trunc i8 %4 to i1, !dbg !221
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !223

if.then25:                                        ; preds = %if.end17
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.20), !dbg !224
  br label %if.end27, !dbg !226

if.end27:                                         ; preds = %if.then25, %if.end17
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.6), !dbg !227
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.7), !dbg !228
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.8), !dbg !229
  %5 = load i8, ptr %withtsd.addr, align 1, !dbg !230, !tbaa !181, !range !190, !noundef !191
  %tobool31 = trunc i8 %5 to i1, !dbg !230
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !232

if.then32:                                        ; preds = %if.end27
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.21), !dbg !233
  br label %if.end34, !dbg !235

if.end34:                                         ; preds = %if.then32, %if.end27
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.9), !dbg !236
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.10), !dbg !237
  ret void, !dbg !238
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!97}
!llvm.module.flags = !{!99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/ltr/ltrharvest_tabout_stream.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "e98d0bdaf678a040c83041c2282c47e6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 49)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 720, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 90)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 25)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 23)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 14)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 29)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 19)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 20)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !44, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 28)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 24)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !56, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 12)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 9)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !19, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !68, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 11)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 8)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !77, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 13)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 33)
!97 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !98, splitDebugInlining: false, nameTableKind: None)
!98 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !49, !54, !59, !61, !66, !71, !73, !75, !80, !85, !87, !92}
!99 = !{i32 7, !"Dwarf Version", i32 5}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{i32 1, !"wchar_size", i32 4}
!102 = !{i32 8, !"PIC Level", i32 2}
!103 = !{i32 7, !"uwtable", i32 2}
!104 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!105 = distinct !DISubprogram(name: "gt_ltrharvest_tabout_stream_new", scope: !2, file: !2, line: 22, type: !106, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !136)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !108, !122}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeStream", file: !110, line: 29, baseType: !111)
!110 = !DIFile(filename: "src/extended/node_stream_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "394932ed37b4b1336cc2d8af8d72d6ac")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeStream", file: !110, line: 65, size: 128, elements: !112)
!112 = !{!113, !118}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "c_class", scope: !111, file: !110, line: 66, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeStreamClass", file: !110, line: 25, baseType: !117)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeStreamClass", file: !110, line: 25, flags: DIFlagFwdDecl)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "members", scope: !111, file: !110, line: 67, baseType: !119, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeStreamMembers", file: !110, line: 63, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeStreamMembers", file: !110, line: 63, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitor", file: !124, line: 22, baseType: !125)
!124 = !DIFile(filename: "src/extended/node_visitor_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "500f2847f6803702c23b27c7a511e246")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeVisitor", file: !124, line: 70, size: 128, elements: !126)
!126 = !{!127, !132}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "c_class", scope: !125, file: !124, line: 71, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorClass", file: !124, line: 67, baseType: !131)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeVisitorClass", file: !124, line: 67, flags: DIFlagFwdDecl)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "members", scope: !125, file: !124, line: 72, baseType: !133, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtNodeVisitorMembers", file: !124, line: 68, baseType: !135)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtNodeVisitorMembers", file: !124, line: 68, flags: DIFlagFwdDecl)
!136 = !{!137, !138}
!137 = !DILocalVariable(name: "in_stream", arg: 1, scope: !105, file: !2, line: 22, type: !108)
!138 = !DILocalVariable(name: "v", arg: 2, scope: !105, file: !2, line: 23, type: !122)
!139 = !{!140, !140, i64 0}
!140 = !{!"any pointer", !141, i64 0}
!141 = !{!"omnipotent char", !142, i64 0}
!142 = !{!"Simple C/C++ TBAA"}
!143 = !DILocation(line: 22, column: 61, scope: !105)
!144 = !DILocation(line: 23, column: 62, scope: !105)
!145 = !DILocation(line: 25, column: 32, scope: !105)
!146 = !DILocation(line: 25, column: 43, scope: !105)
!147 = !DILocation(line: 25, column: 10, scope: !105)
!148 = !DILocation(line: 25, column: 3, scope: !105)
!149 = !DISubprogram(name: "gt_visitor_stream_new", scope: !150, file: !150, line: 30, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!150 = !DIFile(filename: "src/extended/visitor_stream_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "13d80982bd91df53c1312f9920970783")
!151 = distinct !DISubprogram(name: "gt_ltrharvest_tabout_stream_printshortheader", scope: !2, file: !2, line: 28, type: !152, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97)
!152 = !DISubroutineType(types: !153)
!153 = !{null}
!154 = !DILocation(line: 30, column: 3, scope: !151)
!155 = !DILocation(line: 31, column: 3, scope: !151)
!156 = !DILocation(line: 33, column: 3, scope: !151)
!157 = !DILocation(line: 34, column: 3, scope: !151)
!158 = !DILocation(line: 35, column: 3, scope: !151)
!159 = !DILocation(line: 36, column: 3, scope: !151)
!160 = !DILocation(line: 37, column: 3, scope: !151)
!161 = !DILocation(line: 38, column: 3, scope: !151)
!162 = !DILocation(line: 39, column: 3, scope: !151)
!163 = !DILocation(line: 40, column: 3, scope: !151)
!164 = !DILocation(line: 41, column: 3, scope: !151)
!165 = !DILocation(line: 42, column: 1, scope: !151)
!166 = !DISubprogram(name: "printf", scope: !167, file: !167, line: 356, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!167 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !171, null}
!170 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!171 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!174 = distinct !DISubprogram(name: "gt_ltrharvest_tabout_stream_printlongheader", scope: !2, file: !2, line: 44, type: !175, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !97, retainedNodes: !178)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !177, !177}
!177 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!178 = !{!179, !180}
!179 = !DILocalVariable(name: "withtsd", arg: 1, scope: !174, file: !2, line: 44, type: !177)
!180 = !DILocalVariable(name: "withmotif", arg: 2, scope: !174, file: !2, line: 44, type: !177)
!181 = !{!182, !182, i64 0}
!182 = !{!"_Bool", !141, i64 0}
!183 = !DILocation(line: 44, column: 55, scope: !174)
!184 = !DILocation(line: 44, column: 69, scope: !174)
!185 = !DILocation(line: 46, column: 3, scope: !174)
!186 = !DILocation(line: 47, column: 3, scope: !174)
!187 = !DILocation(line: 48, column: 3, scope: !174)
!188 = !DILocation(line: 49, column: 7, scope: !189)
!189 = distinct !DILexicalBlock(scope: !174, file: !2, line: 49, column: 7)
!190 = !{i8 0, i8 2}
!191 = !{}
!192 = !DILocation(line: 49, column: 7, scope: !174)
!193 = !DILocation(line: 51, column: 5, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !2, line: 50, column: 3)
!195 = !DILocation(line: 52, column: 3, scope: !194)
!196 = !DILocation(line: 53, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !174, file: !2, line: 53, column: 7)
!198 = !DILocation(line: 53, column: 7, scope: !174)
!199 = !DILocation(line: 55, column: 5, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !2, line: 54, column: 3)
!201 = !DILocation(line: 56, column: 3, scope: !200)
!202 = !DILocation(line: 57, column: 3, scope: !174)
!203 = !DILocation(line: 58, column: 7, scope: !204)
!204 = distinct !DILexicalBlock(scope: !174, file: !2, line: 58, column: 7)
!205 = !DILocation(line: 58, column: 7, scope: !174)
!206 = !DILocation(line: 60, column: 5, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !2, line: 59, column: 3)
!208 = !DILocation(line: 61, column: 3, scope: !207)
!209 = !DILocation(line: 62, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !174, file: !2, line: 62, column: 7)
!211 = !DILocation(line: 62, column: 7, scope: !174)
!212 = !DILocation(line: 64, column: 5, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !2, line: 63, column: 3)
!214 = !DILocation(line: 65, column: 3, scope: !213)
!215 = !DILocation(line: 66, column: 3, scope: !174)
!216 = !DILocation(line: 67, column: 3, scope: !174)
!217 = !DILocation(line: 68, column: 3, scope: !174)
!218 = !DILocation(line: 69, column: 3, scope: !174)
!219 = !DILocation(line: 70, column: 3, scope: !174)
!220 = !DILocation(line: 71, column: 3, scope: !174)
!221 = !DILocation(line: 72, column: 7, scope: !222)
!222 = distinct !DILexicalBlock(scope: !174, file: !2, line: 72, column: 7)
!223 = !DILocation(line: 72, column: 7, scope: !174)
!224 = !DILocation(line: 74, column: 5, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !2, line: 73, column: 3)
!226 = !DILocation(line: 75, column: 3, scope: !225)
!227 = !DILocation(line: 76, column: 3, scope: !174)
!228 = !DILocation(line: 77, column: 3, scope: !174)
!229 = !DILocation(line: 78, column: 3, scope: !174)
!230 = !DILocation(line: 79, column: 7, scope: !231)
!231 = distinct !DILexicalBlock(scope: !174, file: !2, line: 79, column: 7)
!232 = !DILocation(line: 79, column: 7, scope: !174)
!233 = !DILocation(line: 81, column: 5, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !2, line: 80, column: 3)
!235 = !DILocation(line: 82, column: 3, scope: !234)
!236 = !DILocation(line: 83, column: 3, scope: !174)
!237 = !DILocation(line: 84, column: 3, scope: !174)
!238 = !DILocation(line: 85, column: 1, scope: !174)

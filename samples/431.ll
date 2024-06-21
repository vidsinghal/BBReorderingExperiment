; ModuleID = 'samples/431.bc'
source_filename = "log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_logcategory = type { ptr, i32 }
%struct.isc_logmodule = type { ptr, i32 }

@.str = private unnamed_addr constant [7 x i8] c"notify\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"database\00", align 1, !dbg !8
@.str.2 = private unnamed_addr constant [9 x i8] c"security\00", align 1, !dbg !13
@.str.3 = private unnamed_addr constant [13 x i8] c"_placeholder\00", align 1, !dbg !15
@.str.4 = private unnamed_addr constant [7 x i8] c"dnssec\00", align 1, !dbg !20
@.str.5 = private unnamed_addr constant [9 x i8] c"resolver\00", align 1, !dbg !22
@.str.6 = private unnamed_addr constant [8 x i8] c"xfer-in\00", align 1, !dbg !24
@.str.7 = private unnamed_addr constant [9 x i8] c"xfer-out\00", align 1, !dbg !29
@.str.8 = private unnamed_addr constant [9 x i8] c"dispatch\00", align 1, !dbg !31
@.str.9 = private unnamed_addr constant [13 x i8] c"lame-servers\00", align 1, !dbg !33
@.str.10 = private unnamed_addr constant [16 x i8] c"delegation-only\00", align 1, !dbg !35
@.str.11 = private unnamed_addr constant [14 x i8] c"edns-disabled\00", align 1, !dbg !40
@.str.12 = private unnamed_addr constant [4 x i8] c"rpz\00", align 1, !dbg !45
@.str.13 = private unnamed_addr constant [11 x i8] c"rate-limit\00", align 1, !dbg !50
@.str.14 = private unnamed_addr constant [6 x i8] c"cname\00", align 1, !dbg !55
@.str.15 = private unnamed_addr constant [6 x i8] c"spill\00", align 1, !dbg !60
@.str.16 = private unnamed_addr constant [7 x i8] c"dnstap\00", align 1, !dbg !62
@.str.17 = private unnamed_addr constant [9 x i8] c"zoneload\00", align 1, !dbg !64
@.str.18 = private unnamed_addr constant [5 x i8] c"nsid\00", align 1, !dbg !66
@dns_categories = global [20 x %struct.isc_logcategory] [%struct.isc_logcategory { ptr @.str, i32 0 }, %struct.isc_logcategory { ptr @.str.1, i32 0 }, %struct.isc_logcategory { ptr @.str.2, i32 0 }, %struct.isc_logcategory { ptr @.str.3, i32 0 }, %struct.isc_logcategory { ptr @.str.4, i32 0 }, %struct.isc_logcategory { ptr @.str.5, i32 0 }, %struct.isc_logcategory { ptr @.str.6, i32 0 }, %struct.isc_logcategory { ptr @.str.7, i32 0 }, %struct.isc_logcategory { ptr @.str.8, i32 0 }, %struct.isc_logcategory { ptr @.str.9, i32 0 }, %struct.isc_logcategory { ptr @.str.10, i32 0 }, %struct.isc_logcategory { ptr @.str.11, i32 0 }, %struct.isc_logcategory { ptr @.str.12, i32 0 }, %struct.isc_logcategory { ptr @.str.13, i32 0 }, %struct.isc_logcategory { ptr @.str.14, i32 0 }, %struct.isc_logcategory { ptr @.str.15, i32 0 }, %struct.isc_logcategory { ptr @.str.16, i32 0 }, %struct.isc_logcategory { ptr @.str.17, i32 0 }, %struct.isc_logcategory { ptr @.str.18, i32 0 }, %struct.isc_logcategory zeroinitializer], align 16, !dbg !71
@.str.19 = private unnamed_addr constant [7 x i8] c"dns/db\00", align 1, !dbg !86
@.str.20 = private unnamed_addr constant [10 x i8] c"dns/rbtdb\00", align 1, !dbg !88
@.str.21 = private unnamed_addr constant [8 x i8] c"dns/rbt\00", align 1, !dbg !93
@.str.22 = private unnamed_addr constant [10 x i8] c"dns/rdata\00", align 1, !dbg !95
@.str.23 = private unnamed_addr constant [11 x i8] c"dns/master\00", align 1, !dbg !97
@.str.24 = private unnamed_addr constant [12 x i8] c"dns/message\00", align 1, !dbg !99
@.str.25 = private unnamed_addr constant [10 x i8] c"dns/cache\00", align 1, !dbg !104
@.str.26 = private unnamed_addr constant [11 x i8] c"dns/config\00", align 1, !dbg !106
@.str.27 = private unnamed_addr constant [13 x i8] c"dns/resolver\00", align 1, !dbg !108
@.str.28 = private unnamed_addr constant [9 x i8] c"dns/zone\00", align 1, !dbg !110
@.str.29 = private unnamed_addr constant [12 x i8] c"dns/journal\00", align 1, !dbg !112
@.str.30 = private unnamed_addr constant [8 x i8] c"dns/adb\00", align 1, !dbg !114
@.str.31 = private unnamed_addr constant [10 x i8] c"dns/xfrin\00", align 1, !dbg !116
@.str.32 = private unnamed_addr constant [11 x i8] c"dns/xfrout\00", align 1, !dbg !118
@.str.33 = private unnamed_addr constant [8 x i8] c"dns/acl\00", align 1, !dbg !120
@.str.34 = private unnamed_addr constant [14 x i8] c"dns/validator\00", align 1, !dbg !122
@.str.35 = private unnamed_addr constant [13 x i8] c"dns/dispatch\00", align 1, !dbg !124
@.str.36 = private unnamed_addr constant [12 x i8] c"dns/request\00", align 1, !dbg !126
@.str.37 = private unnamed_addr constant [15 x i8] c"dns/masterdump\00", align 1, !dbg !128
@.str.38 = private unnamed_addr constant [9 x i8] c"dns/tsig\00", align 1, !dbg !133
@.str.39 = private unnamed_addr constant [9 x i8] c"dns/tkey\00", align 1, !dbg !135
@.str.40 = private unnamed_addr constant [8 x i8] c"dns/sdb\00", align 1, !dbg !137
@.str.41 = private unnamed_addr constant [9 x i8] c"dns/diff\00", align 1, !dbg !139
@.str.42 = private unnamed_addr constant [10 x i8] c"dns/hints\00", align 1, !dbg !141
@.str.43 = private unnamed_addr constant [12 x i8] c"dns/unused1\00", align 1, !dbg !143
@.str.44 = private unnamed_addr constant [8 x i8] c"dns/dlz\00", align 1, !dbg !145
@.str.45 = private unnamed_addr constant [11 x i8] c"dns/dnssec\00", align 1, !dbg !147
@.str.46 = private unnamed_addr constant [11 x i8] c"dns/crypto\00", align 1, !dbg !149
@.str.47 = private unnamed_addr constant [12 x i8] c"dns/packets\00", align 1, !dbg !151
@.str.48 = private unnamed_addr constant [8 x i8] c"dns/nta\00", align 1, !dbg !153
@.str.49 = private unnamed_addr constant [10 x i8] c"dns/dyndb\00", align 1, !dbg !155
@.str.50 = private unnamed_addr constant [11 x i8] c"dns/dnstap\00", align 1, !dbg !157
@.str.51 = private unnamed_addr constant [8 x i8] c"dns/ssu\00", align 1, !dbg !159
@dns_modules = global [34 x %struct.isc_logmodule] [%struct.isc_logmodule { ptr @.str.19, i32 0 }, %struct.isc_logmodule { ptr @.str.20, i32 0 }, %struct.isc_logmodule { ptr @.str.21, i32 0 }, %struct.isc_logmodule { ptr @.str.22, i32 0 }, %struct.isc_logmodule { ptr @.str.23, i32 0 }, %struct.isc_logmodule { ptr @.str.24, i32 0 }, %struct.isc_logmodule { ptr @.str.25, i32 0 }, %struct.isc_logmodule { ptr @.str.26, i32 0 }, %struct.isc_logmodule { ptr @.str.27, i32 0 }, %struct.isc_logmodule { ptr @.str.28, i32 0 }, %struct.isc_logmodule { ptr @.str.29, i32 0 }, %struct.isc_logmodule { ptr @.str.30, i32 0 }, %struct.isc_logmodule { ptr @.str.31, i32 0 }, %struct.isc_logmodule { ptr @.str.32, i32 0 }, %struct.isc_logmodule { ptr @.str.33, i32 0 }, %struct.isc_logmodule { ptr @.str.34, i32 0 }, %struct.isc_logmodule { ptr @.str.35, i32 0 }, %struct.isc_logmodule { ptr @.str.36, i32 0 }, %struct.isc_logmodule { ptr @.str.37, i32 0 }, %struct.isc_logmodule { ptr @.str.38, i32 0 }, %struct.isc_logmodule { ptr @.str.39, i32 0 }, %struct.isc_logmodule { ptr @.str.40, i32 0 }, %struct.isc_logmodule { ptr @.str.41, i32 0 }, %struct.isc_logmodule { ptr @.str.42, i32 0 }, %struct.isc_logmodule { ptr @.str.43, i32 0 }, %struct.isc_logmodule { ptr @.str.44, i32 0 }, %struct.isc_logmodule { ptr @.str.45, i32 0 }, %struct.isc_logmodule { ptr @.str.46, i32 0 }, %struct.isc_logmodule { ptr @.str.47, i32 0 }, %struct.isc_logmodule { ptr @.str.48, i32 0 }, %struct.isc_logmodule { ptr @.str.49, i32 0 }, %struct.isc_logmodule { ptr @.str.50, i32 0 }, %struct.isc_logmodule { ptr @.str.51, i32 0 }, %struct.isc_logmodule zeroinitializer], align 16, !dbg !161
@dns_lctx = global ptr null, align 8, !dbg !174
@.str.52 = private unnamed_addr constant [6 x i8] c"log.c\00", align 1, !dbg !179
@.str.53 = private unnamed_addr constant [19 x i8] c"lctx != ((void*)0)\00", align 1, !dbg !181

; Function Attrs: nounwind null_pointer_is_valid uwtable
define void @dns_log_init(ptr noundef %lctx) #0 !dbg !200 {
entry:
  %lctx.addr = alloca ptr, align 8
  store ptr %lctx, ptr %lctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %lctx.addr, metadata !204, metadata !DIExpression()), !dbg !205
  %0 = load ptr, ptr %lctx.addr, align 8, !dbg !206
  %cmp = icmp ne ptr %0, null, !dbg !206
  %lnot = xor i1 %cmp, true, !dbg !206
  %lnot1 = xor i1 %lnot, true, !dbg !206
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !206
  %conv = sext i32 %lnot.ext to i64, !dbg !206
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !206
  %tobool = icmp ne i64 %expval, 0, !dbg !206
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !206

lor.rhs:                                          ; preds = %entry
  call void @isc_assertion_failed(ptr noundef @.str.52, i32 noundef 92, i32 noundef 0, ptr noundef @.str.53) #5, !dbg !206
  unreachable, !dbg !206

1:                                                ; No predecessors!
  br label %lor.end, !dbg !206

lor.end:                                          ; preds = %1, %entry
  %2 = phi i1 [ true, %entry ], [ false, %1 ]
  %lor.ext = zext i1 %2 to i32, !dbg !206
  %3 = load ptr, ptr %lctx.addr, align 8, !dbg !207
  call void @isc_log_registercategories(ptr noundef %3, ptr noundef @dns_categories), !dbg !208
  %4 = load ptr, ptr %lctx.addr, align 8, !dbg !209
  call void @isc_log_registermodules(ptr noundef %4, ptr noundef @dns_modules), !dbg !210
  ret void, !dbg !211
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #1

; Function Attrs: noreturn null_pointer_is_valid
declare !dbg !212 void @isc_assertion_failed(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare !dbg !217 void @isc_log_registercategories(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare !dbg !221 void @isc_log_registermodules(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid uwtable
define void @dns_log_setcontext(ptr noundef %lctx) #0 !dbg !225 {
entry:
  %lctx.addr = alloca ptr, align 8
  store ptr %lctx, ptr %lctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %lctx.addr, metadata !227, metadata !DIExpression()), !dbg !228
  %0 = load ptr, ptr %lctx.addr, align 8, !dbg !229
  store ptr %0, ptr @dns_lctx, align 8, !dbg !230
  ret void, !dbg !231
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind null_pointer_is_valid uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!73}
!llvm.module.flags = !{!194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "log.c", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib/dns", checksumkind: CSK_MD5, checksum: "49188dabf4da6d0d0d00e6308da9cd96")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !6)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{!7}
!7 = !DISubrange(count: 7)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 9)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !10, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 13)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !2, line: 29, type: !3, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !10, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 8)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !10, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !10, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !17, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 16)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 14)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 4)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 11)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !57, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !10, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 5)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "dns_categories", scope: !73, file: !2, line: 24, type: !186, isLocal: false, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !83, globals: !85, splitDebugInlining: false, nameTableKind: None)
!74 = !{!75}
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 25, baseType: !77, size: 32, elements: !78)
!76 = !DIFile(filename: "isc/include/isc/assertions.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "d437064b1a440cf5712e89d244b6208d")
!77 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!78 = !{!79, !80, !81, !82}
!79 = !DIEnumerator(name: "isc_assertiontype_require", value: 0)
!80 = !DIEnumerator(name: "isc_assertiontype_ensure", value: 1)
!81 = !DIEnumerator(name: "isc_assertiontype_insist", value: 2)
!82 = !DIEnumerator(name: "isc_assertiontype_invariant", value: 3)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !{!0, !8, !13, !15, !20, !22, !24, !29, !31, !33, !35, !40, !45, !50, !55, !60, !62, !64, !66, !71, !86, !88, !93, !95, !97, !99, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !174, !179, !181}
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 10)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !26, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !90, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !52, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 12)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !90, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !52, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !17, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !10, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !101, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !26, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !90, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !52, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !26, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !42, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !17, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !101, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 15)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !10, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !10, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !26, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !10, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !90, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !101, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !26, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !52, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !52, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !101, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !26, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !90, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !52, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !26, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "dns_modules", scope: !73, file: !2, line: 51, type: !163, isLocal: false, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 4352, elements: !172)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_logmodule_t", file: !165, line: 58, baseType: !166)
!165 = !DIFile(filename: "isc/include/isc/types.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "6a355582c4f962c465b18bab43b68c96")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_logmodule", file: !167, line: 112, size: 128, elements: !168)
!167 = !DIFile(filename: "isc/include/isc/log.h", directory: "/local-ssd/bind9-bfe527roow53kyl4mztedmcoca3rfykn-build/aidengro/spack-stage-bind9-9_14_6-bfe527roow53kyl4mztedmcoca3rfykn/spack-src/lib", checksumkind: CSK_MD5, checksum: "6c5d6bf932d34a38240a36d83b90e60a")
!168 = !{!169, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !167, line: 113, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !166, file: !167, line: 114, baseType: !77, size: 32, offset: 64)
!172 = !{!173}
!173 = !DISubrange(count: 34)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "dns_lctx", scope: !73, file: !2, line: 88, type: !176, isLocal: false, isDefinition: true)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_log_t", file: !165, line: 55, baseType: !178)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "isc_log", file: !165, line: 55, flags: DIFlagFwdDecl)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !57, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 19)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 2560, elements: !192)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_logcategory_t", file: !165, line: 56, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "isc_logcategory", file: !167, line: 104, size: 128, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !167, line: 105, baseType: !170, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !188, file: !167, line: 106, baseType: !77, size: 32, offset: 64)
!192 = !{!193}
!193 = !DISubrange(count: 20)
!194 = !{i32 7, !"Dwarf Version", i32 5}
!195 = !{i32 2, !"Debug Info Version", i32 3}
!196 = !{i32 1, !"wchar_size", i32 4}
!197 = !{i32 8, !"PIC Level", i32 2}
!198 = !{i32 7, !"uwtable", i32 2}
!199 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!200 = distinct !DISubprogram(name: "dns_log_init", scope: !2, file: !2, line: 91, type: !201, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !203)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !176}
!203 = !{!204}
!204 = !DILocalVariable(name: "lctx", arg: 1, scope: !200, file: !2, line: 91, type: !176)
!205 = !DILocation(line: 91, column: 25, scope: !200)
!206 = !DILocation(line: 92, column: 2, scope: !200)
!207 = !DILocation(line: 94, column: 29, scope: !200)
!208 = !DILocation(line: 94, column: 2, scope: !200)
!209 = !DILocation(line: 95, column: 26, scope: !200)
!210 = !DILocation(line: 95, column: 2, scope: !200)
!211 = !DILocation(line: 96, column: 1, scope: !200)
!212 = !DISubprogram(name: "isc_assertion_failed", scope: !76, file: !76, line: 37, type: !213, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !170, !215, !216, !170}
!215 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "isc_assertiontype_t", file: !76, line: 30, baseType: !75)
!217 = !DISubprogram(name: "isc_log_registercategories", scope: !167, file: !167, line: 334, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !176, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!221 = !DISubprogram(name: "isc_log_registermodules", scope: !167, file: !167, line: 372, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !176, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!225 = distinct !DISubprogram(name: "dns_log_setcontext", scope: !2, file: !2, line: 99, type: !201, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !226)
!226 = !{!227}
!227 = !DILocalVariable(name: "lctx", arg: 1, scope: !225, file: !2, line: 99, type: !176)
!228 = !DILocation(line: 99, column: 31, scope: !225)
!229 = !DILocation(line: 100, column: 13, scope: !225)
!230 = !DILocation(line: 100, column: 11, scope: !225)
!231 = !DILocation(line: 101, column: 1, scope: !225)

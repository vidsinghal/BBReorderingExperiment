; ModuleID = 'samples/689.bc'
source_filename = "BLAS_zgemm_d_d_x-f2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @blas_zgemm_d_d_x_(ptr noundef %transa, ptr noundef %transb, ptr noundef %m, ptr noundef %n, ptr noundef %k, ptr noundef %alpha, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %beta, ptr noundef %c, ptr noundef %ldc, ptr noundef %prec) #0 !dbg !28 {
entry:
  %transa.addr = alloca ptr, align 8
  %transb.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %ldc.addr = alloca ptr, align 8
  %prec.addr = alloca ptr, align 8
  store ptr %transa, ptr %transa.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %transa.addr, metadata !40, metadata !DIExpression()), !dbg !58
  store ptr %transb, ptr %transb.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %transb.addr, metadata !41, metadata !DIExpression()), !dbg !59
  store ptr %m, ptr %m.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !42, metadata !DIExpression()), !dbg !60
  store ptr %n, ptr %n.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !43, metadata !DIExpression()), !dbg !61
  store ptr %k, ptr %k.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !44, metadata !DIExpression()), !dbg !62
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !45, metadata !DIExpression()), !dbg !63
  store ptr %a, ptr %a.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !46, metadata !DIExpression()), !dbg !64
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %lda.addr, metadata !47, metadata !DIExpression()), !dbg !65
  store ptr %b, ptr %b.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !48, metadata !DIExpression()), !dbg !66
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %ldb.addr, metadata !49, metadata !DIExpression()), !dbg !67
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !50, metadata !DIExpression()), !dbg !68
  store ptr %c, ptr %c.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !51, metadata !DIExpression()), !dbg !69
  store ptr %ldc, ptr %ldc.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %ldc.addr, metadata !52, metadata !DIExpression()), !dbg !70
  store ptr %prec, ptr %prec.addr, align 8, !tbaa !54
  tail call void @llvm.dbg.declare(metadata ptr %prec.addr, metadata !53, metadata !DIExpression()), !dbg !71
  %0 = load ptr, ptr %transa.addr, align 8, !dbg !72, !tbaa !54
  %1 = load i32, ptr %0, align 4, !dbg !73, !tbaa !74
  %2 = load ptr, ptr %transb.addr, align 8, !dbg !76, !tbaa !54
  %3 = load i32, ptr %2, align 4, !dbg !77, !tbaa !74
  %4 = load ptr, ptr %m.addr, align 8, !dbg !78, !tbaa !54
  %5 = load i32, ptr %4, align 4, !dbg !79, !tbaa !74
  %6 = load ptr, ptr %n.addr, align 8, !dbg !80, !tbaa !54
  %7 = load i32, ptr %6, align 4, !dbg !81, !tbaa !74
  %8 = load ptr, ptr %k.addr, align 8, !dbg !82, !tbaa !54
  %9 = load i32, ptr %8, align 4, !dbg !83, !tbaa !74
  %10 = load ptr, ptr %alpha.addr, align 8, !dbg !84, !tbaa !54
  %11 = load ptr, ptr %a.addr, align 8, !dbg !85, !tbaa !54
  %12 = load ptr, ptr %lda.addr, align 8, !dbg !86, !tbaa !54
  %13 = load i32, ptr %12, align 4, !dbg !87, !tbaa !74
  %14 = load ptr, ptr %b.addr, align 8, !dbg !88, !tbaa !54
  %15 = load ptr, ptr %ldb.addr, align 8, !dbg !89, !tbaa !54
  %16 = load i32, ptr %15, align 4, !dbg !90, !tbaa !74
  %17 = load ptr, ptr %beta.addr, align 8, !dbg !91, !tbaa !54
  %18 = load ptr, ptr %c.addr, align 8, !dbg !92, !tbaa !54
  %19 = load ptr, ptr %ldc.addr, align 8, !dbg !93, !tbaa !54
  %20 = load i32, ptr %19, align 4, !dbg !94, !tbaa !74
  %21 = load ptr, ptr %prec.addr, align 8, !dbg !95, !tbaa !54
  %22 = load i32, ptr %21, align 4, !dbg !96, !tbaa !74
  call void @BLAS_zgemm_d_d_x(i32 noundef 102, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %13, ptr noundef %14, i32 noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %20, i32 noundef %22), !dbg !97
  ret void, !dbg !98
}

declare !dbg !99 void @BLAS_zgemm_d_d_x(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !20, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "BLAS_zgemm_d_d_x-f2c.c", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/gemm", checksumkind: CSK_MD5, checksum: "ef229985f6c23c52dae99afef4b7fac6")
!2 = !{!3, !9, !14}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_order_type", file: !4, line: 6, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../blas_enum.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/gemm", checksumkind: CSK_MD5, checksum: "8e42b1960f9fe688989d7c36c5b24db6")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "blas_rowmajor", value: 101)
!8 = !DIEnumerator(name: "blas_colmajor", value: 102)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_trans_type", file: !4, line: 10, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "blas_no_trans", value: 111)
!12 = !DIEnumerator(name: "blas_trans", value: 112)
!13 = !DIEnumerator(name: "blas_conj_trans", value: 113)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_prec_type", file: !4, line: 63, baseType: !5, size: 32, elements: !15)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "blas_prec_single", value: 211)
!17 = !DIEnumerator(name: "blas_prec_double", value: 212)
!18 = !DIEnumerator(name: "blas_prec_indigenous", value: 213)
!19 = !DIEnumerator(name: "blas_prec_extra", value: 214)
!20 = !{!9, !14}
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!28 = distinct !DISubprogram(name: "blas_zgemm_d_d_x_", scope: !1, file: !1, line: 11, type: !29, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !31, !31, !31, !33, !35, !31, !35, !31, !33, !38, !31, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!40 = !DILocalVariable(name: "transa", arg: 1, scope: !28, file: !1, line: 13, type: !31)
!41 = !DILocalVariable(name: "transb", arg: 2, scope: !28, file: !1, line: 13, type: !31)
!42 = !DILocalVariable(name: "m", arg: 3, scope: !28, file: !1, line: 13, type: !31)
!43 = !DILocalVariable(name: "n", arg: 4, scope: !28, file: !1, line: 13, type: !31)
!44 = !DILocalVariable(name: "k", arg: 5, scope: !28, file: !1, line: 13, type: !31)
!45 = !DILocalVariable(name: "alpha", arg: 6, scope: !28, file: !1, line: 13, type: !33)
!46 = !DILocalVariable(name: "a", arg: 7, scope: !28, file: !1, line: 14, type: !35)
!47 = !DILocalVariable(name: "lda", arg: 8, scope: !28, file: !1, line: 14, type: !31)
!48 = !DILocalVariable(name: "b", arg: 9, scope: !28, file: !1, line: 14, type: !35)
!49 = !DILocalVariable(name: "ldb", arg: 10, scope: !28, file: !1, line: 14, type: !31)
!50 = !DILocalVariable(name: "beta", arg: 11, scope: !28, file: !1, line: 14, type: !33)
!51 = !DILocalVariable(name: "c", arg: 12, scope: !28, file: !1, line: 15, type: !38)
!52 = !DILocalVariable(name: "ldc", arg: 13, scope: !28, file: !1, line: 15, type: !31)
!53 = !DILocalVariable(name: "prec", arg: 14, scope: !28, file: !1, line: 15, type: !31)
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !DILocation(line: 13, column: 9, scope: !28)
!59 = !DILocation(line: 13, column: 22, scope: !28)
!60 = !DILocation(line: 13, column: 35, scope: !28)
!61 = !DILocation(line: 13, column: 43, scope: !28)
!62 = !DILocation(line: 13, column: 51, scope: !28)
!63 = !DILocation(line: 13, column: 66, scope: !28)
!64 = !DILocation(line: 14, column: 18, scope: !28)
!65 = !DILocation(line: 14, column: 26, scope: !28)
!66 = !DILocation(line: 14, column: 45, scope: !28)
!67 = !DILocation(line: 14, column: 53, scope: !28)
!68 = !DILocation(line: 14, column: 70, scope: !28)
!69 = !DILocation(line: 15, column: 10, scope: !28)
!70 = !DILocation(line: 15, column: 18, scope: !28)
!71 = !DILocation(line: 15, column: 28, scope: !28)
!72 = !DILocation(line: 16, column: 59, scope: !28)
!73 = !DILocation(line: 16, column: 58, scope: !28)
!74 = !{!75, !75, i64 0}
!75 = !{!"int", !56, i64 0}
!76 = !DILocation(line: 17, column: 30, scope: !28)
!77 = !DILocation(line: 17, column: 29, scope: !28)
!78 = !DILocation(line: 17, column: 39, scope: !28)
!79 = !DILocation(line: 17, column: 38, scope: !28)
!80 = !DILocation(line: 17, column: 43, scope: !28)
!81 = !DILocation(line: 17, column: 42, scope: !28)
!82 = !DILocation(line: 17, column: 47, scope: !28)
!83 = !DILocation(line: 17, column: 46, scope: !28)
!84 = !DILocation(line: 17, column: 50, scope: !28)
!85 = !DILocation(line: 17, column: 57, scope: !28)
!86 = !DILocation(line: 17, column: 61, scope: !28)
!87 = !DILocation(line: 17, column: 60, scope: !28)
!88 = !DILocation(line: 18, column: 6, scope: !28)
!89 = !DILocation(line: 18, column: 10, scope: !28)
!90 = !DILocation(line: 18, column: 9, scope: !28)
!91 = !DILocation(line: 18, column: 15, scope: !28)
!92 = !DILocation(line: 18, column: 21, scope: !28)
!93 = !DILocation(line: 18, column: 25, scope: !28)
!94 = !DILocation(line: 18, column: 24, scope: !28)
!95 = !DILocation(line: 18, column: 53, scope: !28)
!96 = !DILocation(line: 18, column: 52, scope: !28)
!97 = !DILocation(line: 16, column: 3, scope: !28)
!98 = !DILocation(line: 19, column: 1, scope: !28)
!99 = !DISubprogram(name: "BLAS_zgemm_d_d_x", scope: !1, file: !1, line: 4, type: !100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !3, !9, !9, !32, !32, !32, !33, !35, !32, !35, !32, !33, !38, !32, !14}

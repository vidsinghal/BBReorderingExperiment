; ModuleID = 'samples/979.bc'
source_filename = "BLAS_dgbmv_x-f2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @blas_dgbmv_x_(ptr noundef %trans, ptr noundef %m, ptr noundef %n, ptr noundef %kl, ptr noundef %ku, ptr noundef %alpha, ptr noundef %a, ptr noundef %lda, ptr noundef %x, ptr noundef %incx, ptr noundef %beta, ptr noundef %y, ptr noundef %incy, ptr noundef %prec) #0 !dbg !28 {
entry:
  %trans.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %kl.addr = alloca ptr, align 8
  %ku.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca ptr, align 8
  %prec.addr = alloca ptr, align 8
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %trans.addr, metadata !38, metadata !DIExpression()), !dbg !56
  store ptr %m, ptr %m.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !39, metadata !DIExpression()), !dbg !57
  store ptr %n, ptr %n.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !40, metadata !DIExpression()), !dbg !58
  store ptr %kl, ptr %kl.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %kl.addr, metadata !41, metadata !DIExpression()), !dbg !59
  store ptr %ku, ptr %ku.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %ku.addr, metadata !42, metadata !DIExpression()), !dbg !60
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !43, metadata !DIExpression()), !dbg !61
  store ptr %a, ptr %a.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !44, metadata !DIExpression()), !dbg !62
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %lda.addr, metadata !45, metadata !DIExpression()), !dbg !63
  store ptr %x, ptr %x.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !46, metadata !DIExpression()), !dbg !64
  store ptr %incx, ptr %incx.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !47, metadata !DIExpression()), !dbg !65
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !48, metadata !DIExpression()), !dbg !66
  store ptr %y, ptr %y.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !49, metadata !DIExpression()), !dbg !67
  store ptr %incy, ptr %incy.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !50, metadata !DIExpression()), !dbg !68
  store ptr %prec, ptr %prec.addr, align 8, !tbaa !52
  tail call void @llvm.dbg.declare(metadata ptr %prec.addr, metadata !51, metadata !DIExpression()), !dbg !69
  %0 = load ptr, ptr %trans.addr, align 8, !dbg !70, !tbaa !52
  %1 = load i32, ptr %0, align 4, !dbg !71, !tbaa !72
  %2 = load ptr, ptr %m.addr, align 8, !dbg !74, !tbaa !52
  %3 = load i32, ptr %2, align 4, !dbg !75, !tbaa !72
  %4 = load ptr, ptr %n.addr, align 8, !dbg !76, !tbaa !52
  %5 = load i32, ptr %4, align 4, !dbg !77, !tbaa !72
  %6 = load ptr, ptr %kl.addr, align 8, !dbg !78, !tbaa !52
  %7 = load i32, ptr %6, align 4, !dbg !79, !tbaa !72
  %8 = load ptr, ptr %ku.addr, align 8, !dbg !80, !tbaa !52
  %9 = load i32, ptr %8, align 4, !dbg !81, !tbaa !72
  %10 = load ptr, ptr %alpha.addr, align 8, !dbg !82, !tbaa !52
  %11 = load double, ptr %10, align 8, !dbg !83, !tbaa !84
  %12 = load ptr, ptr %a.addr, align 8, !dbg !86, !tbaa !52
  %13 = load ptr, ptr %lda.addr, align 8, !dbg !87, !tbaa !52
  %14 = load i32, ptr %13, align 4, !dbg !88, !tbaa !72
  %15 = load ptr, ptr %x.addr, align 8, !dbg !89, !tbaa !52
  %16 = load ptr, ptr %incx.addr, align 8, !dbg !90, !tbaa !52
  %17 = load i32, ptr %16, align 4, !dbg !91, !tbaa !72
  %18 = load ptr, ptr %beta.addr, align 8, !dbg !92, !tbaa !52
  %19 = load double, ptr %18, align 8, !dbg !93, !tbaa !84
  %20 = load ptr, ptr %y.addr, align 8, !dbg !94, !tbaa !52
  %21 = load ptr, ptr %incy.addr, align 8, !dbg !95, !tbaa !52
  %22 = load i32, ptr %21, align 4, !dbg !96, !tbaa !72
  %23 = load ptr, ptr %prec.addr, align 8, !dbg !97, !tbaa !52
  %24 = load i32, ptr %23, align 4, !dbg !98, !tbaa !72
  call void @BLAS_dgbmv_x(i32 noundef 102, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, double noundef %11, ptr noundef %12, i32 noundef %14, ptr noundef %15, i32 noundef %17, double noundef %19, ptr noundef %20, i32 noundef %22, i32 noundef %24), !dbg !99
  ret void, !dbg !100
}

declare !dbg !101 void @BLAS_dgbmv_x(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, double noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !20, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "BLAS_dgbmv_x-f2c.c", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/gbmv", checksumkind: CSK_MD5, checksum: "eddaf07bce58f9f669732e86a17d27c7")
!2 = !{!3, !9, !14}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_order_type", file: !4, line: 6, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../blas_enum.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/gbmv", checksumkind: CSK_MD5, checksum: "8e42b1960f9fe688989d7c36c5b24db6")
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
!28 = distinct !DISubprogram(name: "blas_dgbmv_x_", scope: !1, file: !1, line: 10, type: !29, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !31, !31, !31, !33, !35, !31, !35, !31, !33, !33, !31, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!38 = !DILocalVariable(name: "trans", arg: 1, scope: !28, file: !1, line: 12, type: !31)
!39 = !DILocalVariable(name: "m", arg: 2, scope: !28, file: !1, line: 12, type: !31)
!40 = !DILocalVariable(name: "n", arg: 3, scope: !28, file: !1, line: 12, type: !31)
!41 = !DILocalVariable(name: "kl", arg: 4, scope: !28, file: !1, line: 12, type: !31)
!42 = !DILocalVariable(name: "ku", arg: 5, scope: !28, file: !1, line: 12, type: !31)
!43 = !DILocalVariable(name: "alpha", arg: 6, scope: !28, file: !1, line: 12, type: !33)
!44 = !DILocalVariable(name: "a", arg: 7, scope: !28, file: !1, line: 13, type: !35)
!45 = !DILocalVariable(name: "lda", arg: 8, scope: !28, file: !1, line: 13, type: !31)
!46 = !DILocalVariable(name: "x", arg: 9, scope: !28, file: !1, line: 13, type: !35)
!47 = !DILocalVariable(name: "incx", arg: 10, scope: !28, file: !1, line: 13, type: !31)
!48 = !DILocalVariable(name: "beta", arg: 11, scope: !28, file: !1, line: 13, type: !33)
!49 = !DILocalVariable(name: "y", arg: 12, scope: !28, file: !1, line: 14, type: !33)
!50 = !DILocalVariable(name: "incy", arg: 13, scope: !28, file: !1, line: 14, type: !31)
!51 = !DILocalVariable(name: "prec", arg: 14, scope: !28, file: !1, line: 14, type: !31)
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !DILocation(line: 12, column: 9, scope: !28)
!57 = !DILocation(line: 12, column: 21, scope: !28)
!58 = !DILocation(line: 12, column: 29, scope: !28)
!59 = !DILocation(line: 12, column: 37, scope: !28)
!60 = !DILocation(line: 12, column: 46, scope: !28)
!61 = !DILocation(line: 12, column: 58, scope: !28)
!62 = !DILocation(line: 13, column: 18, scope: !28)
!63 = !DILocation(line: 13, column: 26, scope: !28)
!64 = !DILocation(line: 13, column: 45, scope: !28)
!65 = !DILocation(line: 13, column: 53, scope: !28)
!66 = !DILocation(line: 13, column: 67, scope: !28)
!67 = !DILocation(line: 14, column: 12, scope: !28)
!68 = !DILocation(line: 14, column: 20, scope: !28)
!69 = !DILocation(line: 14, column: 31, scope: !28)
!70 = !DILocation(line: 15, column: 55, scope: !28)
!71 = !DILocation(line: 15, column: 54, scope: !28)
!72 = !{!73, !73, i64 0}
!73 = !{!"int", !54, i64 0}
!74 = !DILocation(line: 15, column: 63, scope: !28)
!75 = !DILocation(line: 15, column: 62, scope: !28)
!76 = !DILocation(line: 15, column: 67, scope: !28)
!77 = !DILocation(line: 15, column: 66, scope: !28)
!78 = !DILocation(line: 15, column: 71, scope: !28)
!79 = !DILocation(line: 15, column: 70, scope: !28)
!80 = !DILocation(line: 15, column: 76, scope: !28)
!81 = !DILocation(line: 15, column: 75, scope: !28)
!82 = !DILocation(line: 16, column: 10, scope: !28)
!83 = !DILocation(line: 16, column: 9, scope: !28)
!84 = !{!85, !85, i64 0}
!85 = !{!"double", !54, i64 0}
!86 = !DILocation(line: 16, column: 17, scope: !28)
!87 = !DILocation(line: 16, column: 21, scope: !28)
!88 = !DILocation(line: 16, column: 20, scope: !28)
!89 = !DILocation(line: 16, column: 26, scope: !28)
!90 = !DILocation(line: 16, column: 30, scope: !28)
!91 = !DILocation(line: 16, column: 29, scope: !28)
!92 = !DILocation(line: 16, column: 37, scope: !28)
!93 = !DILocation(line: 16, column: 36, scope: !28)
!94 = !DILocation(line: 16, column: 43, scope: !28)
!95 = !DILocation(line: 16, column: 47, scope: !28)
!96 = !DILocation(line: 16, column: 46, scope: !28)
!97 = !DILocation(line: 17, column: 32, scope: !28)
!98 = !DILocation(line: 17, column: 31, scope: !28)
!99 = !DILocation(line: 15, column: 3, scope: !28)
!100 = !DILocation(line: 18, column: 1, scope: !28)
!101 = !DISubprogram(name: "BLAS_dgbmv_x", scope: !1, file: !1, line: 4, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !3, !9, !32, !32, !32, !32, !34, !35, !32, !35, !32, !34, !33, !32, !14}

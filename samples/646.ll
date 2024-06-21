; ModuleID = 'samples/646.bc'
source_filename = "BLAS_zhpmv_z_d-f2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @blas_zhpmv_z_d_(ptr noundef %uplo, ptr noundef %n, ptr noundef %alpha, ptr noundef %ap, ptr noundef %x, ptr noundef %incx, ptr noundef %beta, ptr noundef %y, ptr noundef %incy) #0 !dbg !21 {
entry:
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca ptr, align 8
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !42
  tail call void @llvm.dbg.declare(metadata ptr %uplo.addr, metadata !33, metadata !DIExpression()), !dbg !46
  store ptr %n, ptr %n.addr, align 8, !tbaa !42
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !34, metadata !DIExpression()), !dbg !47
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !42
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !35, metadata !DIExpression()), !dbg !48
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !42
  tail call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !36, metadata !DIExpression()), !dbg !49
  store ptr %x, ptr %x.addr, align 8, !tbaa !42
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !37, metadata !DIExpression()), !dbg !50
  store ptr %incx, ptr %incx.addr, align 8, !tbaa !42
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !38, metadata !DIExpression()), !dbg !51
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !42
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !39, metadata !DIExpression()), !dbg !52
  store ptr %y, ptr %y.addr, align 8, !tbaa !42
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !40, metadata !DIExpression()), !dbg !53
  store ptr %incy, ptr %incy.addr, align 8, !tbaa !42
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !41, metadata !DIExpression()), !dbg !54
  %0 = load ptr, ptr %uplo.addr, align 8, !dbg !55, !tbaa !42
  %1 = load i32, ptr %0, align 4, !dbg !56, !tbaa !57
  %2 = load ptr, ptr %n.addr, align 8, !dbg !59, !tbaa !42
  %3 = load i32, ptr %2, align 4, !dbg !60, !tbaa !57
  %4 = load ptr, ptr %alpha.addr, align 8, !dbg !61, !tbaa !42
  %5 = load ptr, ptr %ap.addr, align 8, !dbg !62, !tbaa !42
  %6 = load ptr, ptr %x.addr, align 8, !dbg !63, !tbaa !42
  %7 = load ptr, ptr %incx.addr, align 8, !dbg !64, !tbaa !42
  %8 = load i32, ptr %7, align 4, !dbg !65, !tbaa !57
  %9 = load ptr, ptr %beta.addr, align 8, !dbg !66, !tbaa !42
  %10 = load ptr, ptr %y.addr, align 8, !dbg !67, !tbaa !42
  %11 = load ptr, ptr %incy.addr, align 8, !dbg !68, !tbaa !42
  %12 = load i32, ptr %11, align 4, !dbg !69, !tbaa !57
  call void @BLAS_zhpmv_z_d(i32 noundef 102, i32 noundef %1, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %12), !dbg !70
  ret void, !dbg !71
}

declare !dbg !72 void @BLAS_zhpmv_z_d(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "BLAS_zhpmv_z_d-f2c.c", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/hpmv", checksumkind: CSK_MD5, checksum: "096fe4dd09525e9e42c03fe701c88b30")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_order_type", file: !4, line: 6, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../blas_enum.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/hpmv", checksumkind: CSK_MD5, checksum: "8e42b1960f9fe688989d7c36c5b24db6")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "blas_rowmajor", value: 101)
!8 = !DIEnumerator(name: "blas_colmajor", value: 102)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_uplo_type", file: !4, line: 15, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "blas_upper", value: 121)
!12 = !DIEnumerator(name: "blas_lower", value: 122)
!13 = !{!9}
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 8, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!21 = distinct !DISubprogram(name: "blas_zhpmv_z_d_", scope: !1, file: !1, line: 10, type: !22, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !24, !26, !26, !28, !24, !26, !31, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41}
!33 = !DILocalVariable(name: "uplo", arg: 1, scope: !21, file: !1, line: 12, type: !24)
!34 = !DILocalVariable(name: "n", arg: 2, scope: !21, file: !1, line: 12, type: !24)
!35 = !DILocalVariable(name: "alpha", arg: 3, scope: !21, file: !1, line: 12, type: !26)
!36 = !DILocalVariable(name: "ap", arg: 4, scope: !21, file: !1, line: 12, type: !26)
!37 = !DILocalVariable(name: "x", arg: 5, scope: !21, file: !1, line: 12, type: !28)
!38 = !DILocalVariable(name: "incx", arg: 6, scope: !21, file: !1, line: 13, type: !24)
!39 = !DILocalVariable(name: "beta", arg: 7, scope: !21, file: !1, line: 13, type: !26)
!40 = !DILocalVariable(name: "y", arg: 8, scope: !21, file: !1, line: 13, type: !31)
!41 = !DILocalVariable(name: "incy", arg: 9, scope: !21, file: !1, line: 13, type: !24)
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 12, column: 9, scope: !21)
!47 = !DILocation(line: 12, column: 20, scope: !21)
!48 = !DILocation(line: 12, column: 35, scope: !21)
!49 = !DILocation(line: 12, column: 54, scope: !21)
!50 = !DILocation(line: 12, column: 72, scope: !21)
!51 = !DILocation(line: 13, column: 9, scope: !21)
!52 = !DILocation(line: 13, column: 27, scope: !21)
!53 = !DILocation(line: 13, column: 39, scope: !21)
!54 = !DILocation(line: 13, column: 47, scope: !21)
!55 = !DILocation(line: 14, column: 56, scope: !21)
!56 = !DILocation(line: 14, column: 55, scope: !21)
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !44, i64 0}
!59 = !DILocation(line: 14, column: 63, scope: !21)
!60 = !DILocation(line: 14, column: 62, scope: !21)
!61 = !DILocation(line: 14, column: 66, scope: !21)
!62 = !DILocation(line: 14, column: 73, scope: !21)
!63 = !DILocation(line: 14, column: 77, scope: !21)
!64 = !DILocation(line: 15, column: 5, scope: !21)
!65 = !DILocation(line: 15, column: 4, scope: !21)
!66 = !DILocation(line: 15, column: 11, scope: !21)
!67 = !DILocation(line: 15, column: 17, scope: !21)
!68 = !DILocation(line: 15, column: 21, scope: !21)
!69 = !DILocation(line: 15, column: 20, scope: !21)
!70 = !DILocation(line: 14, column: 3, scope: !21)
!71 = !DILocation(line: 16, column: 1, scope: !21)
!72 = !DISubprogram(name: "BLAS_zhpmv_z_d", scope: !1, file: !1, line: 4, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !3, !9, !25, !26, !26, !28, !25, !26, !31, !25}

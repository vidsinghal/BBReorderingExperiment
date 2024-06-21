; ModuleID = 'samples/209.bc'
source_filename = "BLAS_zgemv_z_d-f2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @blas_zgemv_z_d_(ptr noundef %trans, ptr noundef %m, ptr noundef %n, ptr noundef %alpha, ptr noundef %a, ptr noundef %lda, ptr noundef %x, ptr noundef %incx, ptr noundef %beta, ptr noundef %y, ptr noundef %incy) #0 !dbg !22 {
entry:
  %trans.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %alpha.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %incx.addr = alloca ptr, align 8
  %beta.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %incy.addr = alloca ptr, align 8
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %trans.addr, metadata !34, metadata !DIExpression()), !dbg !49
  store ptr %m, ptr %m.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !35, metadata !DIExpression()), !dbg !50
  store ptr %n, ptr %n.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !36, metadata !DIExpression()), !dbg !51
  store ptr %alpha, ptr %alpha.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %alpha.addr, metadata !37, metadata !DIExpression()), !dbg !52
  store ptr %a, ptr %a.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !38, metadata !DIExpression()), !dbg !53
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %lda.addr, metadata !39, metadata !DIExpression()), !dbg !54
  store ptr %x, ptr %x.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !40, metadata !DIExpression()), !dbg !55
  store ptr %incx, ptr %incx.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %incx.addr, metadata !41, metadata !DIExpression()), !dbg !56
  store ptr %beta, ptr %beta.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %beta.addr, metadata !42, metadata !DIExpression()), !dbg !57
  store ptr %y, ptr %y.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !43, metadata !DIExpression()), !dbg !58
  store ptr %incy, ptr %incy.addr, align 8, !tbaa !45
  tail call void @llvm.dbg.declare(metadata ptr %incy.addr, metadata !44, metadata !DIExpression()), !dbg !59
  %0 = load ptr, ptr %trans.addr, align 8, !dbg !60, !tbaa !45
  %1 = load i32, ptr %0, align 4, !dbg !61, !tbaa !62
  %2 = load ptr, ptr %m.addr, align 8, !dbg !64, !tbaa !45
  %3 = load i32, ptr %2, align 4, !dbg !65, !tbaa !62
  %4 = load ptr, ptr %n.addr, align 8, !dbg !66, !tbaa !45
  %5 = load i32, ptr %4, align 4, !dbg !67, !tbaa !62
  %6 = load ptr, ptr %alpha.addr, align 8, !dbg !68, !tbaa !45
  %7 = load ptr, ptr %a.addr, align 8, !dbg !69, !tbaa !45
  %8 = load ptr, ptr %lda.addr, align 8, !dbg !70, !tbaa !45
  %9 = load i32, ptr %8, align 4, !dbg !71, !tbaa !62
  %10 = load ptr, ptr %x.addr, align 8, !dbg !72, !tbaa !45
  %11 = load ptr, ptr %incx.addr, align 8, !dbg !73, !tbaa !45
  %12 = load i32, ptr %11, align 4, !dbg !74, !tbaa !62
  %13 = load ptr, ptr %beta.addr, align 8, !dbg !75, !tbaa !45
  %14 = load ptr, ptr %y.addr, align 8, !dbg !76, !tbaa !45
  %15 = load ptr, ptr %incy.addr, align 8, !dbg !77, !tbaa !45
  %16 = load i32, ptr %15, align 4, !dbg !78, !tbaa !62
  call void @BLAS_zgemv_z_d(i32 noundef 102, i32 noundef %1, i32 noundef %3, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %9, ptr noundef %10, i32 noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %16), !dbg !79
  ret void, !dbg !80
}

declare !dbg !81 void @BLAS_zgemv_z_d(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !14, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "BLAS_zgemv_z_d-f2c.c", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/gemv", checksumkind: CSK_MD5, checksum: "821a084ecf67cb7c2c883f1f484758b0")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_order_type", file: !4, line: 6, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "../blas_enum.h", directory: "/local-ssd/netlib-xblas-dsn42vcrsnsjoiljrb2dywxefiyxprvu-build/aidengro/spack-stage-netlib-xblas-1.0.248-dsn42vcrsnsjoiljrb2dywxefiyxprvu/spack-src/src/gemv", checksumkind: CSK_MD5, checksum: "8e42b1960f9fe688989d7c36c5b24db6")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "blas_rowmajor", value: 101)
!8 = !DIEnumerator(name: "blas_colmajor", value: 102)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blas_trans_type", file: !4, line: 10, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "blas_no_trans", value: 111)
!12 = !DIEnumerator(name: "blas_trans", value: 112)
!13 = !DIEnumerator(name: "blas_conj_trans", value: 113)
!14 = !{!9}
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!22 = distinct !DISubprogram(name: "blas_zgemv_z_d_", scope: !1, file: !1, line: 10, type: !23, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !33)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, !25, !25, !27, !27, !25, !29, !25, !27, !32, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!34 = !DILocalVariable(name: "trans", arg: 1, scope: !22, file: !1, line: 12, type: !25)
!35 = !DILocalVariable(name: "m", arg: 2, scope: !22, file: !1, line: 12, type: !25)
!36 = !DILocalVariable(name: "n", arg: 3, scope: !22, file: !1, line: 12, type: !25)
!37 = !DILocalVariable(name: "alpha", arg: 4, scope: !22, file: !1, line: 12, type: !27)
!38 = !DILocalVariable(name: "a", arg: 5, scope: !22, file: !1, line: 12, type: !27)
!39 = !DILocalVariable(name: "lda", arg: 6, scope: !22, file: !1, line: 12, type: !25)
!40 = !DILocalVariable(name: "x", arg: 7, scope: !22, file: !1, line: 13, type: !29)
!41 = !DILocalVariable(name: "incx", arg: 8, scope: !22, file: !1, line: 13, type: !25)
!42 = !DILocalVariable(name: "beta", arg: 9, scope: !22, file: !1, line: 13, type: !27)
!43 = !DILocalVariable(name: "y", arg: 10, scope: !22, file: !1, line: 13, type: !32)
!44 = !DILocalVariable(name: "incy", arg: 11, scope: !22, file: !1, line: 13, type: !25)
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !DILocation(line: 12, column: 9, scope: !22)
!50 = !DILocation(line: 12, column: 21, scope: !22)
!51 = !DILocation(line: 12, column: 29, scope: !22)
!52 = !DILocation(line: 12, column: 44, scope: !22)
!53 = !DILocation(line: 12, column: 63, scope: !22)
!54 = !DILocation(line: 12, column: 71, scope: !22)
!55 = !DILocation(line: 13, column: 18, scope: !22)
!56 = !DILocation(line: 13, column: 26, scope: !22)
!57 = !DILocation(line: 13, column: 44, scope: !22)
!58 = !DILocation(line: 13, column: 56, scope: !22)
!59 = !DILocation(line: 13, column: 64, scope: !22)
!60 = !DILocation(line: 14, column: 57, scope: !22)
!61 = !DILocation(line: 14, column: 56, scope: !22)
!62 = !{!63, !63, i64 0}
!63 = !{!"int", !47, i64 0}
!64 = !DILocation(line: 14, column: 65, scope: !22)
!65 = !DILocation(line: 14, column: 64, scope: !22)
!66 = !DILocation(line: 14, column: 69, scope: !22)
!67 = !DILocation(line: 14, column: 68, scope: !22)
!68 = !DILocation(line: 14, column: 72, scope: !22)
!69 = !DILocation(line: 15, column: 4, scope: !22)
!70 = !DILocation(line: 15, column: 8, scope: !22)
!71 = !DILocation(line: 15, column: 7, scope: !22)
!72 = !DILocation(line: 15, column: 13, scope: !22)
!73 = !DILocation(line: 15, column: 17, scope: !22)
!74 = !DILocation(line: 15, column: 16, scope: !22)
!75 = !DILocation(line: 15, column: 23, scope: !22)
!76 = !DILocation(line: 15, column: 29, scope: !22)
!77 = !DILocation(line: 15, column: 33, scope: !22)
!78 = !DILocation(line: 15, column: 32, scope: !22)
!79 = !DILocation(line: 14, column: 3, scope: !22)
!80 = !DILocation(line: 16, column: 1, scope: !22)
!81 = !DISubprogram(name: "BLAS_zgemv_z_d", scope: !1, file: !1, line: 4, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !3, !9, !26, !26, !27, !27, !26, !29, !26, !27, !32, !26}

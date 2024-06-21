; ModuleID = 'samples/667.bc'
source_filename = "zip_source_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { ptr, %union.anon, ptr, %struct.zip_error, i64, i32, i32, i8, ptr, i32, i8 }
%union.anon = type { ptr }
%struct.zip_error = type { i32, i32, ptr }

; Function Attrs: nounwind uwtable
define i32 @zip_source_open(ptr noundef %src) #0 !dbg !54 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8, !tbaa !202
  tail call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !201, metadata !DIExpression()), !dbg !206
  %0 = load ptr, ptr %src.addr, align 8, !dbg !207, !tbaa !202
  %source_closed = getelementptr inbounds %struct.zip_source, ptr %0, i32 0, i32 7, !dbg !209
  %1 = load i8, ptr %source_closed, align 8, !dbg !209, !tbaa !210, !range !216, !noundef !217
  %tobool = trunc i8 %1 to i1, !dbg !209
  br i1 %tobool, label %if.then, label %if.end, !dbg !218

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !219
  br label %return, !dbg !219

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %src.addr, align 8, !dbg !221, !tbaa !202
  %write_state = getelementptr inbounds %struct.zip_source, ptr %2, i32 0, i32 6, !dbg !223
  %3 = load i32, ptr %write_state, align 4, !dbg !223, !tbaa !224
  %cmp = icmp eq i32 %3, 3, !dbg !225
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !226

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %src.addr, align 8, !dbg !227, !tbaa !202
  %error = getelementptr inbounds %struct.zip_source, ptr %4, i32 0, i32 3, !dbg !229
  call void @zip_error_set(ptr noundef %error, i32 noundef 23, i32 noundef 0), !dbg !230
  store i32 -1, ptr %retval, align 4, !dbg !231
  br label %return, !dbg !231

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %src.addr, align 8, !dbg !232, !tbaa !202
  %open_count = getelementptr inbounds %struct.zip_source, ptr %5, i32 0, i32 5, !dbg !232
  %6 = load i32, ptr %open_count, align 8, !dbg !232, !tbaa !234
  %cmp3 = icmp ugt i32 %6, 0, !dbg !232
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !235

if.then4:                                         ; preds = %if.end2
  %7 = load ptr, ptr %src.addr, align 8, !dbg !236, !tbaa !202
  %call = call i64 @zip_source_supports(ptr noundef %7), !dbg !239
  %and = and i64 %call, 64, !dbg !240
  %cmp5 = icmp eq i64 %and, 0, !dbg !241
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !242

if.then6:                                         ; preds = %if.then4
  %8 = load ptr, ptr %src.addr, align 8, !dbg !243, !tbaa !202
  %error7 = getelementptr inbounds %struct.zip_source, ptr %8, i32 0, i32 3, !dbg !245
  call void @zip_error_set(ptr noundef %error7, i32 noundef 29, i32 noundef 0), !dbg !246
  store i32 -1, ptr %retval, align 4, !dbg !247
  br label %return, !dbg !247

if.end8:                                          ; preds = %if.then4
  br label %if.end30, !dbg !248

if.else:                                          ; preds = %if.end2
  %9 = load ptr, ptr %src.addr, align 8, !dbg !249, !tbaa !202
  %src9 = getelementptr inbounds %struct.zip_source, ptr %9, i32 0, i32 0, !dbg !249
  %10 = load ptr, ptr %src9, align 8, !dbg !249, !tbaa !252
  %cmp10 = icmp ne ptr %10, null, !dbg !249
  br i1 %cmp10, label %if.then11, label %if.end19, !dbg !253

if.then11:                                        ; preds = %if.else
  %11 = load ptr, ptr %src.addr, align 8, !dbg !254, !tbaa !202
  %src12 = getelementptr inbounds %struct.zip_source, ptr %11, i32 0, i32 0, !dbg !257
  %12 = load ptr, ptr %src12, align 8, !dbg !257, !tbaa !252
  %call13 = call i32 @zip_source_open(ptr noundef %12), !dbg !258
  %cmp14 = icmp slt i32 %call13, 0, !dbg !259
  br i1 %cmp14, label %if.then15, label %if.end18, !dbg !260

if.then15:                                        ; preds = %if.then11
  %13 = load ptr, ptr %src.addr, align 8, !dbg !261, !tbaa !202
  %error16 = getelementptr inbounds %struct.zip_source, ptr %13, i32 0, i32 3, !dbg !263
  %14 = load ptr, ptr %src.addr, align 8, !dbg !264, !tbaa !202
  %src17 = getelementptr inbounds %struct.zip_source, ptr %14, i32 0, i32 0, !dbg !265
  %15 = load ptr, ptr %src17, align 8, !dbg !265, !tbaa !252
  call void @_zip_error_set_from_source(ptr noundef %error16, ptr noundef %15), !dbg !266
  store i32 -1, ptr %retval, align 4, !dbg !267
  br label %return, !dbg !267

if.end18:                                         ; preds = %if.then11
  br label %if.end19, !dbg !268

if.end19:                                         ; preds = %if.end18, %if.else
  %16 = load ptr, ptr %src.addr, align 8, !dbg !269, !tbaa !202
  %call20 = call i64 @_zip_source_call(ptr noundef %16, ptr noundef null, i64 noundef 0, i32 noundef 0), !dbg !271
  %cmp21 = icmp slt i64 %call20, 0, !dbg !272
  br i1 %cmp21, label %if.then22, label %if.end29, !dbg !273

if.then22:                                        ; preds = %if.end19
  %17 = load ptr, ptr %src.addr, align 8, !dbg !274, !tbaa !202
  %src23 = getelementptr inbounds %struct.zip_source, ptr %17, i32 0, i32 0, !dbg !274
  %18 = load ptr, ptr %src23, align 8, !dbg !274, !tbaa !252
  %cmp24 = icmp ne ptr %18, null, !dbg !274
  br i1 %cmp24, label %if.then25, label %if.end28, !dbg !277

if.then25:                                        ; preds = %if.then22
  %19 = load ptr, ptr %src.addr, align 8, !dbg !278, !tbaa !202
  %src26 = getelementptr inbounds %struct.zip_source, ptr %19, i32 0, i32 0, !dbg !280
  %20 = load ptr, ptr %src26, align 8, !dbg !280, !tbaa !252
  %call27 = call i32 @zip_source_close(ptr noundef %20), !dbg !281
  br label %if.end28, !dbg !282

if.end28:                                         ; preds = %if.then25, %if.then22
  store i32 -1, ptr %retval, align 4, !dbg !283
  br label %return, !dbg !283

if.end29:                                         ; preds = %if.end19
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end8
  %21 = load ptr, ptr %src.addr, align 8, !dbg !284, !tbaa !202
  %eof = getelementptr inbounds %struct.zip_source, ptr %21, i32 0, i32 10, !dbg !285
  store i8 0, ptr %eof, align 4, !dbg !286, !tbaa !287
  %22 = load ptr, ptr %src.addr, align 8, !dbg !288, !tbaa !202
  %error31 = getelementptr inbounds %struct.zip_source, ptr %22, i32 0, i32 3, !dbg !289
  call void @_zip_error_clear(ptr noundef %error31), !dbg !290
  %23 = load ptr, ptr %src.addr, align 8, !dbg !291, !tbaa !202
  %open_count32 = getelementptr inbounds %struct.zip_source, ptr %23, i32 0, i32 5, !dbg !292
  %24 = load i32, ptr %open_count32, align 8, !dbg !293, !tbaa !234
  %inc = add i32 %24, 1, !dbg !293
  store i32 %inc, ptr %open_count32, align 8, !dbg !293, !tbaa !234
  store i32 0, ptr %retval, align 4, !dbg !294
  br label %return, !dbg !294

return:                                           ; preds = %if.end30, %if.end28, %if.then15, %if.then6, %if.then1, %if.then
  %25 = load i32, ptr %retval, align 4, !dbg !295
  ret i32 %25, !dbg !295
}

declare !dbg !296 void @zip_error_set(ptr noundef, i32 noundef, i32 noundef) #1

declare !dbg !300 i64 @zip_source_supports(ptr noundef) #1

declare !dbg !303 void @_zip_error_set_from_source(ptr noundef, ptr noundef) #1

declare !dbg !306 i64 @_zip_source_call(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

declare !dbg !309 i32 @zip_source_close(ptr noundef) #1

declare !dbg !310 void @_zip_error_clear(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !39, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "zip_source_open.c", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/lib", checksumkind: CSK_MD5, checksum: "5f441ae1fc42f1dfc79fbde60f925156")
!2 = !{!3, !24, !31}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zip_source_cmd", file: !4, line: 214, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./zip.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/lib", checksumkind: CSK_MD5, checksum: "6758aaa3e0d08949c1a3d4b0a3aed88b")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!7 = !DIEnumerator(name: "ZIP_SOURCE_OPEN", value: 0)
!8 = !DIEnumerator(name: "ZIP_SOURCE_READ", value: 1)
!9 = !DIEnumerator(name: "ZIP_SOURCE_CLOSE", value: 2)
!10 = !DIEnumerator(name: "ZIP_SOURCE_STAT", value: 3)
!11 = !DIEnumerator(name: "ZIP_SOURCE_ERROR", value: 4)
!12 = !DIEnumerator(name: "ZIP_SOURCE_FREE", value: 5)
!13 = !DIEnumerator(name: "ZIP_SOURCE_SEEK", value: 6)
!14 = !DIEnumerator(name: "ZIP_SOURCE_TELL", value: 7)
!15 = !DIEnumerator(name: "ZIP_SOURCE_BEGIN_WRITE", value: 8)
!16 = !DIEnumerator(name: "ZIP_SOURCE_COMMIT_WRITE", value: 9)
!17 = !DIEnumerator(name: "ZIP_SOURCE_ROLLBACK_WRITE", value: 10)
!18 = !DIEnumerator(name: "ZIP_SOURCE_WRITE", value: 11)
!19 = !DIEnumerator(name: "ZIP_SOURCE_SEEK_WRITE", value: 12)
!20 = !DIEnumerator(name: "ZIP_SOURCE_TELL_WRITE", value: 13)
!21 = !DIEnumerator(name: "ZIP_SOURCE_SUPPORTS", value: 14)
!22 = !DIEnumerator(name: "ZIP_SOURCE_REMOVE", value: 15)
!23 = !DIEnumerator(name: "ZIP_SOURCE_GET_COMPRESSION_FLAGS", value: 16)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zip_source_write_state", file: !25, line: 310, baseType: !5, size: 32, elements: !26)
!25 = !DIFile(filename: "./zipint.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/lib", checksumkind: CSK_MD5, checksum: "9cf4a3b80decb4346dbb92f349ffcae6")
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "ZIP_SOURCE_WRITE_CLOSED", value: 0)
!28 = !DIEnumerator(name: "ZIP_SOURCE_WRITE_OPEN", value: 1)
!29 = !DIEnumerator(name: "ZIP_SOURCE_WRITE_FAILED", value: 2)
!30 = !DIEnumerator(name: "ZIP_SOURCE_WRITE_REMOVED", value: 3)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zip_encoding_type", file: !25, line: 188, baseType: !5, size: 32, elements: !32)
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIEnumerator(name: "ZIP_ENCODING_UNKNOWN", value: 0)
!34 = !DIEnumerator(name: "ZIP_ENCODING_ASCII", value: 1)
!35 = !DIEnumerator(name: "ZIP_ENCODING_UTF8_KNOWN", value: 2)
!36 = !DIEnumerator(name: "ZIP_ENCODING_UTF8_GUESSED", value: 3)
!37 = !DIEnumerator(name: "ZIP_ENCODING_CP437", value: 4)
!38 = !DIEnumerator(name: "ZIP_ENCODING_ERROR", value: 5)
!39 = !{!40, !47}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint64_t", file: !41, line: 43, baseType: !42)
!41 = !DIFile(filename: "./zipconf.h", directory: "/local-ssd/libzip-es3wf7bj327ackexr3iovsw37h3bpw5f-build/aidengro/spack-stage-libzip-1.3.2-es3wf7bj327ackexr3iovsw37h3bpw5f/spack-src/lib", checksumkind: CSK_MD5, checksum: "7cb5f99232d7b54e05c9f9d3c2375652")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !43, line: 27, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !45, line: 45, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{i32 8, !"PIC Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 2}
!53 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!54 = distinct !DISubprogram(name: "zip_source_open", scope: !1, file: !1, line: 38, type: !55, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !58}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_t", file: !4, line: 306, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_source", file: !25, line: 318, size: 640, elements: !61)
!61 = !{!62, !63, !82, !83, !92, !93, !94, !96, !98, !198, !199}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !60, file: !25, line: 319, baseType: !58, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !60, file: !25, line: 323, baseType: !64, size: 64, offset: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !25, line: 320, size: 64, elements: !65)
!65 = !{!66, !77}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !64, file: !25, line: 321, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_callback", file: !4, line: 311, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !47, !47, !40, !76}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_int64_t", file: !41, line: 39, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !73, line: 27, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !45, line: 44, baseType: !75)
!75 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_cmd_t", file: !4, line: 233, baseType: !3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !64, file: !25, line: 322, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_layered_callback", file: !25, line: 151, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!71, !58, !47, !47, !40, !3}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !60, file: !25, line: 324, baseType: !47, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !60, file: !25, line: 325, baseType: !84, size: 128, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_error_t", file: !4, line: 304, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_error", file: !4, line: 270, size: 128, elements: !86)
!86 = !{!87, !88, !89}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "zip_err", scope: !85, file: !4, line: 271, baseType: !57, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "sys_err", scope: !85, file: !4, line: 272, baseType: !57, size: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !85, file: !4, line: 273, baseType: !90, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "supports", scope: !60, file: !25, line: 326, baseType: !71, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !60, file: !25, line: 327, baseType: !5, size: 32, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "write_state", scope: !60, file: !25, line: 328, baseType: !95, size: 32, offset: 416)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_source_write_state_t", file: !25, line: 316, baseType: !24)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "source_closed", scope: !60, file: !25, line: 329, baseType: !97, size: 8, offset: 448)
!97 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "source_archive", scope: !60, file: !25, line: 330, baseType: !99, size: 64, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_t", file: !4, line: 303, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip", file: !25, line: 213, size: 1024, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !131, !132, !133, !134, !135, !186, !187, !188, !190, !194}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !101, file: !25, line: 214, baseType: !58, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "open_flags", scope: !101, file: !25, line: 215, baseType: !5, size: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !101, file: !25, line: 216, baseType: !84, size: 128, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !25, line: 218, baseType: !5, size: 32, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ch_flags", scope: !101, file: !25, line: 219, baseType: !5, size: 32, offset: 288)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "default_password", scope: !101, file: !25, line: 221, baseType: !90, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "comment_orig", scope: !101, file: !25, line: 223, baseType: !110, size: 64, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_string_t", file: !25, line: 206, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_string", file: !25, line: 351, size: 256, elements: !113)
!113 = !{!114, !120, !125, !126, !127}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !112, file: !25, line: 352, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint8_t", file: !41, line: 22, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !43, line: 24, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !45, line: 38, baseType: !119)
!119 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !112, file: !25, line: 353, baseType: !121, size: 16, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint16_t", file: !41, line: 29, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !43, line: 25, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !45, line: 40, baseType: !124)
!124 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !112, file: !25, line: 354, baseType: !31, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "converted", scope: !112, file: !25, line: 355, baseType: !115, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "converted_length", scope: !112, file: !25, line: 356, baseType: !128, size: 32, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_uint32_t", file: !41, line: 36, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !43, line: 26, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !45, line: 42, baseType: !5)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "comment_changes", scope: !101, file: !25, line: 224, baseType: !110, size: 64, offset: 448)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "comment_changed", scope: !101, file: !25, line: 225, baseType: !97, size: 8, offset: 512)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nentry", scope: !101, file: !25, line: 227, baseType: !40, size: 64, offset: 576)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nentry_alloc", scope: !101, file: !25, line: 228, baseType: !40, size: 64, offset: 640)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !101, file: !25, line: 229, baseType: !136, size: 64, offset: 704)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_entry_t", file: !25, line: 204, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_entry", file: !25, line: 341, size: 256, elements: !139)
!139 = !{!140, !183, !184, !185}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !138, file: !25, line: 342, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_dirent_t", file: !25, line: 203, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_dirent", file: !25, line: 261, size: 960, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !156, !160, !161, !162, !163, !164, !175, !176, !177, !178, !179, !180, !181, !182}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !143, file: !25, line: 262, baseType: !128, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "local_extra_fields_read", scope: !143, file: !25, line: 263, baseType: !97, size: 8, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !143, file: !25, line: 264, baseType: !97, size: 8, offset: 40)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "crc_valid", scope: !143, file: !25, line: 266, baseType: !97, size: 8, offset: 48)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "version_madeby", scope: !143, file: !25, line: 268, baseType: !121, size: 16, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "version_needed", scope: !143, file: !25, line: 269, baseType: !121, size: 16, offset: 80)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bitflags", scope: !143, file: !25, line: 270, baseType: !121, size: 16, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "comp_method", scope: !143, file: !25, line: 271, baseType: !153, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_int32_t", file: !41, line: 32, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !73, line: 26, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !45, line: 41, baseType: !57)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "last_mod", scope: !143, file: !25, line: 272, baseType: !157, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !158, line: 10, baseType: !159)
!158 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !45, line: 160, baseType: !75)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !143, file: !25, line: 273, baseType: !128, size: 32, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "comp_size", scope: !143, file: !25, line: 274, baseType: !40, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "uncomp_size", scope: !143, file: !25, line: 275, baseType: !40, size: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !143, file: !25, line: 276, baseType: !110, size: 64, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "extra_fields", scope: !143, file: !25, line: 277, baseType: !165, size: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_extra_field_t", file: !25, line: 205, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zip_extra_field", file: !25, line: 302, size: 192, elements: !168)
!168 = !{!169, !170, !172, !173, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !25, line: 303, baseType: !165, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !25, line: 304, baseType: !171, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_flags_t", file: !4, line: 309, baseType: !128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !167, file: !25, line: 305, baseType: !121, size: 16, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !167, file: !25, line: 306, baseType: !121, size: 16, offset: 112)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !167, file: !25, line: 307, baseType: !115, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !143, file: !25, line: 278, baseType: !110, size: 64, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "disk_number", scope: !143, file: !25, line: 279, baseType: !128, size: 32, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "int_attrib", scope: !143, file: !25, line: 280, baseType: !121, size: 16, offset: 672)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ext_attrib", scope: !143, file: !25, line: 281, baseType: !128, size: 32, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !143, file: !25, line: 282, baseType: !40, size: 64, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "compression_level", scope: !143, file: !25, line: 284, baseType: !121, size: 16, offset: 832)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "encryption_method", scope: !143, file: !25, line: 285, baseType: !121, size: 16, offset: 848)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !143, file: !25, line: 286, baseType: !90, size: 64, offset: 896)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !138, file: !25, line: 343, baseType: !141, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !138, file: !25, line: 344, baseType: !58, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !138, file: !25, line: 345, baseType: !97, size: 8, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nopen_source", scope: !101, file: !25, line: 231, baseType: !5, size: 32, offset: 768)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nopen_source_alloc", scope: !101, file: !25, line: 232, baseType: !5, size: 32, offset: 800)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "open_source", scope: !101, file: !25, line: 233, baseType: !189, size: 64, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !101, file: !25, line: 235, baseType: !191, size: 64, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_hash_t", file: !25, line: 208, baseType: !193)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "zip_hash", file: !25, line: 199, flags: DIFlagFwdDecl)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !101, file: !25, line: 237, baseType: !195, size: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "zip_progress_t", file: !25, line: 209, baseType: !197)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "zip_progress", file: !25, line: 200, flags: DIFlagFwdDecl)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !60, file: !25, line: 331, baseType: !5, size: 32, offset: 576)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !60, file: !25, line: 332, baseType: !97, size: 8, offset: 608)
!200 = !{!201}
!201 = !DILocalVariable(name: "src", arg: 1, scope: !54, file: !1, line: 38, type: !58)
!202 = !{!203, !203, i64 0}
!203 = !{!"any pointer", !204, i64 0}
!204 = !{!"omnipotent char", !205, i64 0}
!205 = !{!"Simple C/C++ TBAA"}
!206 = !DILocation(line: 38, column: 31, scope: !54)
!207 = !DILocation(line: 40, column: 9, scope: !208)
!208 = distinct !DILexicalBlock(scope: !54, file: !1, line: 40, column: 9)
!209 = !DILocation(line: 40, column: 14, scope: !208)
!210 = !{!211, !215, i64 56}
!211 = !{!"zip_source", !203, i64 0, !204, i64 8, !203, i64 16, !212, i64 24, !214, i64 40, !213, i64 48, !204, i64 52, !215, i64 56, !203, i64 64, !213, i64 72, !215, i64 76}
!212 = !{!"zip_error", !213, i64 0, !213, i64 4, !203, i64 8}
!213 = !{!"int", !204, i64 0}
!214 = !{!"long", !204, i64 0}
!215 = !{!"_Bool", !204, i64 0}
!216 = !{i8 0, i8 2}
!217 = !{}
!218 = !DILocation(line: 40, column: 9, scope: !54)
!219 = !DILocation(line: 41, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !208, file: !1, line: 40, column: 29)
!221 = !DILocation(line: 43, column: 9, scope: !222)
!222 = distinct !DILexicalBlock(scope: !54, file: !1, line: 43, column: 9)
!223 = !DILocation(line: 43, column: 14, scope: !222)
!224 = !{!211, !204, i64 52}
!225 = !DILocation(line: 43, column: 26, scope: !222)
!226 = !DILocation(line: 43, column: 9, scope: !54)
!227 = !DILocation(line: 44, column: 24, scope: !228)
!228 = distinct !DILexicalBlock(scope: !222, file: !1, line: 43, column: 55)
!229 = !DILocation(line: 44, column: 29, scope: !228)
!230 = !DILocation(line: 44, column: 9, scope: !228)
!231 = !DILocation(line: 45, column: 2, scope: !228)
!232 = !DILocation(line: 48, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !54, file: !1, line: 48, column: 9)
!234 = !{!211, !213, i64 48}
!235 = !DILocation(line: 48, column: 9, scope: !54)
!236 = !DILocation(line: 49, column: 27, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 49, column: 6)
!238 = distinct !DILexicalBlock(scope: !233, file: !1, line: 48, column: 42)
!239 = !DILocation(line: 49, column: 7, scope: !237)
!240 = !DILocation(line: 49, column: 32, scope: !237)
!241 = !DILocation(line: 49, column: 84, scope: !237)
!242 = !DILocation(line: 49, column: 6, scope: !238)
!243 = !DILocation(line: 50, column: 21, scope: !244)
!244 = distinct !DILexicalBlock(scope: !237, file: !1, line: 49, column: 90)
!245 = !DILocation(line: 50, column: 26, scope: !244)
!246 = !DILocation(line: 50, column: 6, scope: !244)
!247 = !DILocation(line: 51, column: 6, scope: !244)
!248 = !DILocation(line: 53, column: 5, scope: !238)
!249 = !DILocation(line: 55, column: 6, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 55, column: 6)
!251 = distinct !DILexicalBlock(scope: !233, file: !1, line: 54, column: 10)
!252 = !{!211, !203, i64 0}
!253 = !DILocation(line: 55, column: 6, scope: !251)
!254 = !DILocation(line: 56, column: 26, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 56, column: 10)
!256 = distinct !DILexicalBlock(scope: !250, file: !1, line: 55, column: 34)
!257 = !DILocation(line: 56, column: 31, scope: !255)
!258 = !DILocation(line: 56, column: 10, scope: !255)
!259 = !DILocation(line: 56, column: 36, scope: !255)
!260 = !DILocation(line: 56, column: 10, scope: !256)
!261 = !DILocation(line: 57, column: 31, scope: !262)
!262 = distinct !DILexicalBlock(scope: !255, file: !1, line: 56, column: 41)
!263 = !DILocation(line: 57, column: 36, scope: !262)
!264 = !DILocation(line: 57, column: 43, scope: !262)
!265 = !DILocation(line: 57, column: 48, scope: !262)
!266 = !DILocation(line: 57, column: 3, scope: !262)
!267 = !DILocation(line: 58, column: 3, scope: !262)
!268 = !DILocation(line: 60, column: 2, scope: !256)
!269 = !DILocation(line: 62, column: 23, scope: !270)
!270 = distinct !DILexicalBlock(scope: !251, file: !1, line: 62, column: 6)
!271 = !DILocation(line: 62, column: 6, scope: !270)
!272 = !DILocation(line: 62, column: 54, scope: !270)
!273 = !DILocation(line: 62, column: 6, scope: !251)
!274 = !DILocation(line: 63, column: 10, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !1, line: 63, column: 10)
!276 = distinct !DILexicalBlock(scope: !270, file: !1, line: 62, column: 59)
!277 = !DILocation(line: 63, column: 10, scope: !276)
!278 = !DILocation(line: 64, column: 20, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !1, line: 63, column: 38)
!280 = !DILocation(line: 64, column: 25, scope: !279)
!281 = !DILocation(line: 64, column: 3, scope: !279)
!282 = !DILocation(line: 65, column: 6, scope: !279)
!283 = !DILocation(line: 66, column: 6, scope: !276)
!284 = !DILocation(line: 70, column: 5, scope: !54)
!285 = !DILocation(line: 70, column: 10, scope: !54)
!286 = !DILocation(line: 70, column: 14, scope: !54)
!287 = !{!211, !215, i64 76}
!288 = !DILocation(line: 71, column: 23, scope: !54)
!289 = !DILocation(line: 71, column: 28, scope: !54)
!290 = !DILocation(line: 71, column: 5, scope: !54)
!291 = !DILocation(line: 72, column: 5, scope: !54)
!292 = !DILocation(line: 72, column: 10, scope: !54)
!293 = !DILocation(line: 72, column: 20, scope: !54)
!294 = !DILocation(line: 74, column: 5, scope: !54)
!295 = !DILocation(line: 75, column: 1, scope: !54)
!296 = !DISubprogram(name: "zip_error_set", scope: !4, file: !4, line: 343, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299, !57, !57}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!300 = !DISubprogram(name: "zip_source_supports", scope: !25, file: !25, line: 159, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubroutineType(types: !302)
!302 = !{!71, !58}
!303 = !DISubprogram(name: "_zip_error_set_from_source", scope: !25, file: !25, line: 468, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !299, !58}
!306 = !DISubprogram(name: "_zip_source_call", scope: !25, file: !25, line: 511, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DISubroutineType(types: !308)
!308 = !{!71, !58, !47, !40, !76}
!309 = !DISubprogram(name: "zip_source_close", scope: !4, file: !4, line: 392, type: !55, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DISubprogram(name: "_zip_error_clear", scope: !25, file: !25, line: 464, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !299}

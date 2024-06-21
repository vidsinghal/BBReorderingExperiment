; ModuleID = 'samples/302.bc'
source_filename = "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngx_cycle_s = type { ptr, ptr, ptr, %struct.ngx_log_s, i64, ptr, ptr, i64, ptr, i64, i64, %struct.ngx_queue_s, i64, %struct.ngx_array_t, %struct.ngx_array_t, %struct.ngx_array_t, %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_list_t, %struct.ngx_list_t, i64, i64, ptr, ptr, ptr, ptr, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, ptr, ptr, i32 }
%struct.ngx_log_s = type { i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ngx_queue_s = type { ptr, ptr }
%struct.ngx_array_t = type { ptr, i64, i64, i64, ptr }
%struct.ngx_rbtree_s = type { ptr, ptr, ptr }
%struct.ngx_rbtree_node_s = type { i64, ptr, ptr, ptr, i8, i8 }
%struct.ngx_list_t = type { ptr, %struct.ngx_list_part_s, i64, i64, ptr }
%struct.ngx_list_part_s = type { ptr, i64, ptr }
%struct.ngx_str_t = type { i64, ptr }

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [14 x i8] c"nginx_version\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [16 x i8] c"ngx_lua_version\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [16 x i8] c"nginx_configure\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [7 x i8] c"stream\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [7 x i8] c"config\00", align 1, !dbg !31
@ngx_cycle = external global ptr, align 8
@.str.8 = private unnamed_addr constant [1908 x i8] c" --prefix=/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/nginx --with-cc-opt=-O2 --add-module=../echo-nginx-module-0.61 --add-module=../xss-nginx-module-0.06 --add-module=../ngx_coolkit-0.2 --add-module=../srcache-nginx-module-0.31 --add-module=../ngx_lua-0.10.15 --add-module=../ngx_lua_upstream-0.07 --add-module=../headers-more-nginx-module-0.33 --add-module=../memc-nginx-module-0.19 --add-module=../redis2-nginx-module-0.15 --add-module=../redis-nginx-module-0.3.7 --add-module=../rds-json-nginx-module-0.15 --add-module=../rds-csv-nginx-module-0.09 --add-module=../ngx_stream_lua-0.0.7 --with-ld-opt=-Wl,-rpath,/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/luajit/lib --without-http_rewrite_module --with-stream --with-stream_ssl_module --with-stream_ssl_preread_module --with-http_ssl_module\00", align 1, !dbg !33

; Function Attrs: nounwind uwtable
define dso_local void @ngx_stream_lua_inject_config_api(ptr noundef %L) #0 !dbg !49 {
entry:
  %L.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !58
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !57, metadata !DIExpression()), !dbg !62
  %0 = load ptr, ptr %L.addr, align 8, !dbg !63, !tbaa !58
  call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 6), !dbg !64
  %1 = load ptr, ptr %L.addr, align 8, !dbg !65, !tbaa !58
  call void @lua_pushboolean(ptr noundef %1, i32 noundef 0), !dbg !66
  %2 = load ptr, ptr %L.addr, align 8, !dbg !67, !tbaa !58
  call void @lua_setfield(ptr noundef %2, i32 noundef -2, ptr noundef @.str), !dbg !68
  %3 = load ptr, ptr %L.addr, align 8, !dbg !69, !tbaa !58
  call void @lua_pushcclosure(ptr noundef %3, ptr noundef @ngx_stream_lua_config_prefix, i32 noundef 0), !dbg !69
  %4 = load ptr, ptr %L.addr, align 8, !dbg !70, !tbaa !58
  call void @lua_setfield(ptr noundef %4, i32 noundef -2, ptr noundef @.str.1), !dbg !71
  %5 = load ptr, ptr %L.addr, align 8, !dbg !72, !tbaa !58
  call void @lua_pushinteger(ptr noundef %5, i64 noundef 1015008), !dbg !73
  %6 = load ptr, ptr %L.addr, align 8, !dbg !74, !tbaa !58
  call void @lua_setfield(ptr noundef %6, i32 noundef -2, ptr noundef @.str.2), !dbg !75
  %7 = load ptr, ptr %L.addr, align 8, !dbg !76, !tbaa !58
  call void @lua_pushinteger(ptr noundef %7, i64 noundef 7), !dbg !77
  %8 = load ptr, ptr %L.addr, align 8, !dbg !78, !tbaa !58
  call void @lua_setfield(ptr noundef %8, i32 noundef -2, ptr noundef @.str.3), !dbg !79
  %9 = load ptr, ptr %L.addr, align 8, !dbg !80, !tbaa !58
  call void @lua_pushcclosure(ptr noundef %9, ptr noundef @ngx_stream_lua_config_configure, i32 noundef 0), !dbg !80
  %10 = load ptr, ptr %L.addr, align 8, !dbg !81, !tbaa !58
  call void @lua_setfield(ptr noundef %10, i32 noundef -2, ptr noundef @.str.4), !dbg !82
  %11 = load ptr, ptr %L.addr, align 8, !dbg !83, !tbaa !58
  call void @lua_pushlstring(ptr noundef %11, ptr noundef @.str.5, i64 noundef 6), !dbg !83
  %12 = load ptr, ptr %L.addr, align 8, !dbg !84, !tbaa !58
  call void @lua_setfield(ptr noundef %12, i32 noundef -2, ptr noundef @.str.6), !dbg !85
  %13 = load ptr, ptr %L.addr, align 8, !dbg !86, !tbaa !58
  call void @lua_setfield(ptr noundef %13, i32 noundef -2, ptr noundef @.str.7), !dbg !87
  ret void, !dbg !88
}

declare !dbg !89 void @lua_createtable(ptr noundef, i32 noundef, i32 noundef) #1

declare !dbg !93 void @lua_pushboolean(ptr noundef, i32 noundef) #1

declare !dbg !96 void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) #1

declare !dbg !101 void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @ngx_stream_lua_config_prefix(ptr noundef %L) #0 !dbg !108 {
entry:
  %L.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !58
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !110, metadata !DIExpression()), !dbg !111
  %0 = load ptr, ptr %L.addr, align 8, !dbg !112, !tbaa !58
  %1 = load ptr, ptr @ngx_cycle, align 8, !dbg !113, !tbaa !58
  %prefix = getelementptr inbounds %struct.ngx_cycle_s, ptr %1, i32 0, i32 29, !dbg !114
  %data = getelementptr inbounds %struct.ngx_str_t, ptr %prefix, i32 0, i32 1, !dbg !115
  %2 = load volatile ptr, ptr %data, align 8, !dbg !115, !tbaa !116
  %3 = load ptr, ptr @ngx_cycle, align 8, !dbg !128, !tbaa !58
  %prefix1 = getelementptr inbounds %struct.ngx_cycle_s, ptr %3, i32 0, i32 29, !dbg !129
  %len = getelementptr inbounds %struct.ngx_str_t, ptr %prefix1, i32 0, i32 0, !dbg !130
  %4 = load volatile i64, ptr %len, align 8, !dbg !130, !tbaa !131
  call void @lua_pushlstring(ptr noundef %0, ptr noundef %2, i64 noundef %4), !dbg !132
  ret i32 1, !dbg !133
}

declare !dbg !134 void @lua_pushinteger(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @ngx_stream_lua_config_configure(ptr noundef %L) #0 !dbg !141 {
entry:
  %L.addr = alloca ptr, align 8
  store ptr %L, ptr %L.addr, align 8, !tbaa !58
  tail call void @llvm.dbg.declare(metadata ptr %L.addr, metadata !143, metadata !DIExpression()), !dbg !144
  %0 = load ptr, ptr %L.addr, align 8, !dbg !145, !tbaa !58
  call void @lua_pushlstring(ptr noundef %0, ptr noundef @.str.8, i64 noundef 1907), !dbg !145
  ret i32 1, !dbg !146
}

declare !dbg !147 void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!38}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../ngx_stream_lua-0.0.7/src/ngx_stream_lua_config.c", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build/nginx-1.15.8", checksumkind: CSK_MD5, checksum: "7dc7c13dbdd71b3e52533099154c0614")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 14)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 16)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !9, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 10)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !9, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 15264, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 1908)
!38 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !39, globals: !41, splitDebugInlining: false, nameTableKind: None)
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!41 = !{!0, !7, !12, !17, !22, !24, !26, !31, !33}
!42 = !{i32 7, !"Dwarf Version", i32 5}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 8, !"PIC Level", i32 2}
!46 = !{i32 7, !"PIE Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 2}
!48 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!49 = distinct !DISubprogram(name: "ngx_stream_lua_inject_config_api", scope: !2, file: !2, line: 30, type: !50, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !56)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !54, line: 51, baseType: !55)
!54 = !DIFile(filename: "luajit-root/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spa/linux-ubuntu22.04-zen2/clang-18.0.0/openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/luajit/include/luajit-2.1/lua.h", directory: "/local-ssd/openresty-gqh4ydyc65xmp7amyu73wgyb2hoaezxd-build/aidengro/spack-stage-openresty-1.15.8.2-gqh4ydyc65xmp7amyu73wgyb2hoaezxd/spack-src/build", checksumkind: CSK_MD5, checksum: "255fa697efe8afbe3c913e4a8fc1e62f")
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !54, line: 51, flags: DIFlagFwdDecl)
!56 = !{!57}
!57 = !DILocalVariable(name: "L", arg: 1, scope: !49, file: !2, line: 30, type: !52)
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !DILocation(line: 30, column: 45, scope: !49)
!63 = !DILocation(line: 34, column: 21, scope: !49)
!64 = !DILocation(line: 34, column: 5, scope: !49)
!65 = !DILocation(line: 39, column: 21, scope: !49)
!66 = !DILocation(line: 39, column: 5, scope: !49)
!67 = !DILocation(line: 41, column: 18, scope: !49)
!68 = !DILocation(line: 41, column: 5, scope: !49)
!69 = !DILocation(line: 43, column: 5, scope: !49)
!70 = !DILocation(line: 44, column: 18, scope: !49)
!71 = !DILocation(line: 44, column: 5, scope: !49)
!72 = !DILocation(line: 46, column: 21, scope: !49)
!73 = !DILocation(line: 46, column: 5, scope: !49)
!74 = !DILocation(line: 47, column: 18, scope: !49)
!75 = !DILocation(line: 47, column: 5, scope: !49)
!76 = !DILocation(line: 49, column: 21, scope: !49)
!77 = !DILocation(line: 49, column: 5, scope: !49)
!78 = !DILocation(line: 50, column: 18, scope: !49)
!79 = !DILocation(line: 50, column: 5, scope: !49)
!80 = !DILocation(line: 52, column: 5, scope: !49)
!81 = !DILocation(line: 53, column: 18, scope: !49)
!82 = !DILocation(line: 53, column: 5, scope: !49)
!83 = !DILocation(line: 55, column: 5, scope: !49)
!84 = !DILocation(line: 56, column: 18, scope: !49)
!85 = !DILocation(line: 56, column: 5, scope: !49)
!86 = !DILocation(line: 58, column: 18, scope: !49)
!87 = !DILocation(line: 58, column: 5, scope: !49)
!88 = !DILocation(line: 59, column: 1, scope: !49)
!89 = !DISubprogram(name: "lua_createtable", scope: !54, file: !54, line: 182, type: !90, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !52, !92, !92}
!92 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!93 = !DISubprogram(name: "lua_pushboolean", scope: !54, file: !54, line: 170, type: !94, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !52, !92}
!96 = !DISubprogram(name: "lua_setfield", scope: !54, file: !54, line: 192, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !52, !92, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!101 = !DISubprogram(name: "lua_pushcclosure", scope: !54, file: !54, line: 169, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !52, !104, !92}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !54, line: 53, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!92, !52}
!108 = distinct !DISubprogram(name: "ngx_stream_lua_config_prefix", scope: !2, file: !2, line: 63, type: !106, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !109)
!109 = !{!110}
!110 = !DILocalVariable(name: "L", arg: 1, scope: !108, file: !2, line: 63, type: !52)
!111 = !DILocation(line: 63, column: 41, scope: !108)
!112 = !DILocation(line: 65, column: 21, scope: !108)
!113 = !DILocation(line: 65, column: 33, scope: !108)
!114 = !DILocation(line: 65, column: 44, scope: !108)
!115 = !DILocation(line: 65, column: 51, scope: !108)
!116 = !{!117, !59, i64 584}
!117 = !{!"ngx_cycle_s", !59, i64 0, !59, i64 8, !59, i64 16, !118, i64 24, !119, i64 104, !59, i64 112, !59, i64 120, !119, i64 128, !59, i64 136, !119, i64 144, !119, i64 152, !120, i64 160, !119, i64 176, !121, i64 184, !121, i64 224, !121, i64 264, !122, i64 304, !123, i64 328, !124, i64 368, !124, i64 424, !119, i64 480, !119, i64 488, !59, i64 496, !59, i64 504, !59, i64 512, !59, i64 520, !126, i64 528, !126, i64 544, !126, i64 560, !126, i64 576, !126, i64 592, !126, i64 608, !59, i64 624, !59, i64 632, !127, i64 640}
!118 = !{!"ngx_log_s", !119, i64 0, !59, i64 8, !119, i64 16, !119, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72}
!119 = !{!"long", !60, i64 0}
!120 = !{!"ngx_queue_s", !59, i64 0, !59, i64 8}
!121 = !{!"", !59, i64 0, !119, i64 8, !119, i64 16, !119, i64 24, !59, i64 32}
!122 = !{!"ngx_rbtree_s", !59, i64 0, !59, i64 8, !59, i64 16}
!123 = !{!"ngx_rbtree_node_s", !119, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !60, i64 32, !60, i64 33}
!124 = !{!"", !59, i64 0, !125, i64 8, !119, i64 32, !119, i64 40, !59, i64 48}
!125 = !{!"ngx_list_part_s", !59, i64 0, !119, i64 8, !59, i64 16}
!126 = !{!"", !119, i64 0, !59, i64 8}
!127 = !{!"int", !60, i64 0}
!128 = !DILocation(line: 66, column: 21, scope: !108)
!129 = !DILocation(line: 66, column: 32, scope: !108)
!130 = !DILocation(line: 66, column: 39, scope: !108)
!131 = !{!117, !119, i64 576}
!132 = !DILocation(line: 65, column: 5, scope: !108)
!133 = !DILocation(line: 67, column: 5, scope: !108)
!134 = !DISubprogram(name: "lua_pushinteger", scope: !54, file: !54, line: 163, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !52, !137}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !54, line: 104, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !139, line: 59, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!140 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!141 = distinct !DISubprogram(name: "ngx_stream_lua_config_configure", scope: !2, file: !2, line: 72, type: !106, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !142)
!142 = !{!143}
!143 = !DILocalVariable(name: "L", arg: 1, scope: !141, file: !2, line: 72, type: !52)
!144 = !DILocation(line: 72, column: 44, scope: !141)
!145 = !DILocation(line: 74, column: 5, scope: !141)
!146 = !DILocation(line: 75, column: 5, scope: !141)
!147 = !DISubprogram(name: "lua_pushlstring", scope: !54, file: !54, line: 164, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !52, !99, !150}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !151, line: 29, baseType: !152)
!151 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!152 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)

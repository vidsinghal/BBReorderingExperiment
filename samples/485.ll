; ModuleID = 'samples/485.bc'
source_filename = "jwk/eql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jcmd = type { ptr, ptr, ptr, ptr }
%struct.jcmd_cfg = type { ptr, %struct.option, ptr, ptr, i64 }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.jcmd_doc_t = type { ptr, ptr }
%struct.jcmd_opt_t = type { ptr }
%struct.json_t = type { i32, i64 }

@jcmd_jcmd_jwk_eql_register.names = internal global [3 x ptr] [ptr @.str, ptr @.str.1, ptr null], align 16, !dbg !0
@.str = private unnamed_addr constant [4 x i8] c"jwk\00", align 1, !dbg !26
@.str.1 = private unnamed_addr constant [4 x i8] c"eql\00", align 1, !dbg !32
@jcmd_jcmd_jwk_eql_register.cmd = internal global %struct.jcmd { ptr null, ptr @jcmd_jcmd_jwk_eql_register.names, ptr @jcmd_jwk_eql, ptr @.str.2 }, align 8, !dbg !39
@.str.2 = private unnamed_addr constant [41 x i8] c"Determines if two or more JWKs are equal\00", align 1, !dbg !34
@cfgs = internal constant [2 x %struct.jcmd_cfg] [%struct.jcmd_cfg { ptr @jcmd_jwk_doc_input, %struct.option { ptr @.str.4, i32 1, ptr null, i32 105 }, ptr null, ptr @jcmd_opt_set_jwks, i64 0 }, %struct.jcmd_cfg zeroinitializer], align 16, !dbg !71
@prefix = internal global ptr @.str.11, align 8, !dbg !145
@stderr = external global ptr, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Must specify at least two JWKs!\0A\00", align 1, !dbg !61
@jcmd_jwk_doc_input = internal constant [4 x %struct.jcmd_doc_t] [%struct.jcmd_doc_t { ptr @.str.5, ptr @.str.6 }, %struct.jcmd_doc_t { ptr @.str.7, ptr @.str.8 }, %struct.jcmd_doc_t { ptr @.str.9, ptr @.str.10 }, %struct.jcmd_doc_t zeroinitializer], align 16, !dbg !137
@.str.4 = private unnamed_addr constant [6 x i8] c"input\00", align 1, !dbg !66
@.str.5 = private unnamed_addr constant [5 x i8] c"JSON\00", align 1, !dbg !111
@.str.6 = private unnamed_addr constant [25 x i8] c"Parse JWK(Set) from JSON\00", align 1, !dbg !117
@.str.7 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1, !dbg !122
@.str.8 = private unnamed_addr constant [24 x i8] c"Read JWK(Set) from FILE\00", align 1, !dbg !124
@.str.9 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !129
@.str.10 = private unnamed_addr constant [29 x i8] c"Read JWK(Set) standard input\00", align 1, !dbg !132
@.str.11 = private unnamed_addr constant [69 x i8] c"jose jwk eql -i JWK -i JWK\0A\0ADetermines if two or more JWKs are equal\00", align 1, !dbg !140
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @jcmd_jcmd_jwk_eql_register, ptr null }]

; Function Attrs: nounwind uwtable
define internal void @jcmd_jcmd_jwk_eql_register() #0 !dbg !2 {
entry:
  call void @jcmd_push(ptr noundef @jcmd_jcmd_jwk_eql_register.cmd), !dbg !157
  ret void, !dbg !157
}

; Function Attrs: nounwind uwtable
define internal i32 @jcmd_jwk_eql(i32 noundef %argc, ptr noundef %argv) #0 !dbg !158 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %opt = alloca %struct.jcmd_opt_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i64, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !183
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !160, metadata !DIExpression()), !dbg !187
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !161, metadata !DIExpression()), !dbg !190
  call void @llvm.lifetime.start.p0(i64 8, ptr %opt) #6, !dbg !191
  tail call void @llvm.dbg.declare(metadata ptr %opt, metadata !162, metadata !DIExpression()), !dbg !192
  call void @llvm.memset.p0.i64(ptr align 8 %opt, i8 0, i64 8, i1 false), !dbg !192
  %0 = load i32, ptr %argc.addr, align 4, !dbg !193, !tbaa !183
  %1 = load ptr, ptr %argv.addr, align 8, !dbg !195, !tbaa !188
  %2 = load ptr, ptr @prefix, align 8, !dbg !196, !tbaa !188
  %call = call zeroext i1 @jcmd_opt_parse(i32 noundef %0, ptr noundef %1, ptr noundef @cfgs, ptr noundef %opt, ptr noundef %2), !dbg !197
  br i1 %call, label %if.end, label %if.then, !dbg !198

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !199
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !199

if.end:                                           ; preds = %entry
  %keys = getelementptr inbounds %struct.jcmd_opt_t, ptr %opt, i32 0, i32 0, !dbg !200
  %3 = load ptr, ptr %keys, align 8, !dbg !200, !tbaa !202
  %call1 = call i64 @json_array_size(ptr noundef %3), !dbg !204
  %cmp = icmp ult i64 %call1, 2, !dbg !205
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !206

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr @stderr, align 8, !dbg !207, !tbaa !188
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.3), !dbg !209
  store i32 1, ptr %retval, align 4, !dbg !210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !210

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !211
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !175, metadata !DIExpression()), !dbg !212
  store i64 1, ptr %i, align 8, !dbg !212, !tbaa !213
  br label %for.cond, !dbg !211

for.cond:                                         ; preds = %for.inc, %if.end4
  %5 = load i64, ptr %i, align 8, !dbg !215, !tbaa !213
  %keys5 = getelementptr inbounds %struct.jcmd_opt_t, ptr %opt, i32 0, i32 0, !dbg !216
  %6 = load ptr, ptr %keys5, align 8, !dbg !216, !tbaa !202
  %call6 = call i64 @json_array_size(ptr noundef %6), !dbg !217
  %cmp7 = icmp ult i64 %5, %call6, !dbg !218
  br i1 %cmp7, label %for.body, label %for.cond.cleanup, !dbg !219

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !219

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #6, !dbg !220
  tail call void @llvm.dbg.declare(metadata ptr %a, metadata !177, metadata !DIExpression()), !dbg !221
  %keys8 = getelementptr inbounds %struct.jcmd_opt_t, ptr %opt, i32 0, i32 0, !dbg !222
  %7 = load ptr, ptr %keys8, align 8, !dbg !222, !tbaa !202
  %8 = load i64, ptr %i, align 8, !dbg !223, !tbaa !213
  %sub = sub i64 %8, 1, !dbg !224
  %call9 = call ptr @json_array_get(ptr noundef %7, i64 noundef %sub), !dbg !225
  store ptr %call9, ptr %a, align 8, !dbg !221, !tbaa !188
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #6, !dbg !226
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !182, metadata !DIExpression()), !dbg !227
  %keys10 = getelementptr inbounds %struct.jcmd_opt_t, ptr %opt, i32 0, i32 0, !dbg !228
  %9 = load ptr, ptr %keys10, align 8, !dbg !228, !tbaa !202
  %10 = load i64, ptr %i, align 8, !dbg !229, !tbaa !213
  %call11 = call ptr @json_array_get(ptr noundef %9, i64 noundef %10), !dbg !230
  store ptr %call11, ptr %b, align 8, !dbg !227, !tbaa !188
  %11 = load ptr, ptr %a, align 8, !dbg !231, !tbaa !188
  %12 = load ptr, ptr %b, align 8, !dbg !233, !tbaa !188
  %call12 = call zeroext i1 @jose_jwk_eql(ptr noundef null, ptr noundef %11, ptr noundef %12), !dbg !234
  br i1 %call12, label %if.end14, label %if.then13, !dbg !235

if.then13:                                        ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !236

if.end14:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !237
  br label %cleanup, !dbg !237

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #6, !dbg !237
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #6, !dbg !237
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !238

for.inc:                                          ; preds = %cleanup.cont
  %13 = load i64, ptr %i, align 8, !dbg !239, !tbaa !213
  %inc = add i64 %13, 1, !dbg !239
  store i64 %inc, ptr %i, align 8, !dbg !239, !tbaa !213
  br label %for.cond, !dbg !240, !llvm.loop !241

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !240
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %cleanup18 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4, !dbg !244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !244

cleanup18:                                        ; preds = %for.end, %cleanup16, %if.then2, %if.then
  call void @jcmd_opt_cleanup(ptr noundef %opt), !dbg !245
  call void @llvm.lifetime.end.p0(i64 8, ptr %opt) #6, !dbg !245
  %14 = load i32, ptr %retval, align 4, !dbg !245
  ret i32 %14, !dbg !245
}

declare !dbg !246 void @jcmd_push(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal void @jcmd_opt_cleanup(ptr noundef %opt) #0 !dbg !250 {
entry:
  %opt.addr = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %opt.addr, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = load ptr, ptr %opt.addr, align 8, !dbg !257, !tbaa !188
  %keys = getelementptr inbounds %struct.jcmd_opt_t, ptr %0, i32 0, i32 0, !dbg !258
  call void @json_decrefp(ptr noundef %keys), !dbg !259
  ret void, !dbg !260
}

declare !dbg !261 zeroext i1 @jcmd_opt_parse(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare !dbg !264 i64 @json_array_size(ptr noundef) #1

declare !dbg !267 i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare !dbg !325 ptr @json_array_get(ptr noundef, i64 noundef) #1

declare !dbg !328 zeroext i1 @jose_jwk_eql(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @json_decrefp(ptr noundef %json) #4 !dbg !336 {
entry:
  %json.addr = alloca ptr, align 8
  store ptr %json, ptr %json.addr, align 8, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %json.addr, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = load ptr, ptr %json.addr, align 8, !dbg !343, !tbaa !188
  %tobool = icmp ne ptr %0, null, !dbg !343
  br i1 %tobool, label %if.then, label %if.end, !dbg !345

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %json.addr, align 8, !dbg !346, !tbaa !188
  %2 = load ptr, ptr %1, align 8, !dbg !348, !tbaa !188
  call void @json_decref(ptr noundef %2), !dbg !349
  %3 = load ptr, ptr %json.addr, align 8, !dbg !350, !tbaa !188
  store ptr null, ptr %3, align 8, !dbg !351, !tbaa !188
  br label %if.end, !dbg !352

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !353
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @json_decref(ptr noundef %json) #4 !dbg !354 {
entry:
  %json.addr = alloca ptr, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store ptr %json, ptr %json.addr, align 8, !tbaa !188
  tail call void @llvm.dbg.declare(metadata ptr %json.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load ptr, ptr %json.addr, align 8, !dbg !360, !tbaa !188
  %tobool = icmp ne ptr %0, null, !dbg !360
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !362

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %json.addr, align 8, !dbg !363, !tbaa !188
  %refcount = getelementptr inbounds %struct.json_t, ptr %1, i32 0, i32 1, !dbg !364
  %2 = load volatile i64, ptr %refcount, align 8, !dbg !364, !tbaa !365
  %cmp = icmp ne i64 %2, -1, !dbg !367
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !368

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %json.addr, align 8, !dbg !369, !tbaa !188
  %refcount2 = getelementptr inbounds %struct.json_t, ptr %3, i32 0, i32 1, !dbg !369
  store i64 1, ptr %.atomictmp, align 8, !dbg !369, !tbaa !213
  %4 = load i64, ptr %.atomictmp, align 8, !dbg !369
  %5 = atomicrmw volatile sub ptr %refcount2, i64 %4 release, align 8, !dbg !369
  %6 = sub i64 %5, %4, !dbg !369
  store i64 %6, ptr %atomic-temp, align 8, !dbg !369
  %7 = load i64, ptr %atomic-temp, align 8, !dbg !369, !tbaa !213
  %cmp3 = icmp eq i64 %7, 0, !dbg !370
  br i1 %cmp3, label %if.then, label %if.end, !dbg !371

if.then:                                          ; preds = %land.lhs.true1
  %8 = load ptr, ptr %json.addr, align 8, !dbg !372, !tbaa !188
  call void @json_delete(ptr noundef %8), !dbg !373
  br label %if.end, !dbg !373

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  ret void, !dbg !374
}

declare !dbg !375 void @json_delete(ptr noundef) #1

declare zeroext i1 @jcmd_opt_set_jwks(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!6}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "names", scope: !2, file: !3, line: 70, type: !147, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "jcmd_jcmd_jwk_eql_register", scope: !3, file: !3, line: 70, type: !4, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6)
!3 = !DIFile(filename: "jwk/eql.c", directory: "/local-ssd/jose-tybnn257nmcmvd2edxslnv5faxmqaxui-build/aidengro/spack-stage-jose-10-tybnn257nmcmvd2edxslnv5faxmqaxui/spack-src/cmd", checksumkind: CSK_MD5, checksum: "9729fc37bed6c38847b4b99e7b698396")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, retainedTypes: !20, globals: !25, splitDebugInlining: false, nameTableKind: None)
!7 = !{!8}
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 50, baseType: !10, size: 32, elements: !11)
!9 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_pa/linux-ubuntu22.04-zen2/clang-18.0.0/jansson-2.14-6ysjm5zf4xkytnr237xl5srxz3lqeclu/include/jansson.h", directory: "/local-ssd/jose-tybnn257nmcmvd2edxslnv5faxmqaxui-build", checksumkind: CSK_MD5, checksum: "b188f36c20fe029b4dd897c2a2c3b8c6")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19}
!12 = !DIEnumerator(name: "JSON_OBJECT", value: 0)
!13 = !DIEnumerator(name: "JSON_ARRAY", value: 1)
!14 = !DIEnumerator(name: "JSON_STRING", value: 2)
!15 = !DIEnumerator(name: "JSON_INTEGER", value: 3)
!16 = !DIEnumerator(name: "JSON_REAL", value: 4)
!17 = !DIEnumerator(name: "JSON_TRUE", value: 5)
!18 = !DIEnumerator(name: "JSON_FALSE", value: 6)
!19 = !DIEnumerator(name: "JSON_NULL", value: 7)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 70, baseType: !24)
!23 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !{!26, !32, !0, !34, !39, !61, !66, !71, !111, !117, !122, !124, !129, !132, !137, !140, !145}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !30)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !{!31}
!31 = !DISubrange(count: 4)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !28, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 328, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 41)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "cmd", scope: !2, file: !3, line: 70, type: !41, isLocal: true, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "jcmd_t", file: !42, line: 73, baseType: !43)
!42 = !DIFile(filename: "jwk/../jose.h", directory: "/local-ssd/jose-tybnn257nmcmvd2edxslnv5faxmqaxui-build/aidengro/spack-stage-jose-10-tybnn257nmcmvd2edxslnv5faxmqaxui/spack-src/cmd", checksumkind: CSK_MD5, checksum: "835a2535b05d3d68acd91c81ff27570c")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jcmd", file: !42, line: 74, size: 256, elements: !44)
!44 = !{!45, !48, !53, !60}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !43, file: !42, line: 75, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !43, file: !42, line: 76, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !43, file: !42, line: 77, baseType: !54, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !57, !58}
!57 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !43, file: !42, line: 78, baseType: !51, size: 64, offset: 192)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 264, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 33)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 48, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 6)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "cfgs", scope: !6, file: !3, line: 30, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1024, elements: !109)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "jcmd_cfg_t", file: !42, line: 42, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jcmd_cfg", file: !42, line: 50, size: 512, elements: !77)
!77 = !{!78, !86, !95, !96, !103}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !76, file: !42, line: 51, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "jcmd_doc_t", file: !42, line: 48, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 45, size: 128, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !82, file: !42, line: 46, baseType: !51, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !82, file: !42, line: 47, baseType: !51, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "opt", scope: !76, file: !42, line: 52, baseType: !87, size: 256, offset: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !88, line: 50, size: 256, elements: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!89 = !{!90, !91, !92, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !88, line: 52, baseType: !51, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !87, file: !88, line: 55, baseType: !57, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !87, file: !88, line: 56, baseType: !93, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !87, file: !88, line: 57, baseType: !57, size: 32, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !76, file: !42, line: 53, baseType: !51, size: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !76, file: !42, line: 54, baseType: !97, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "jcmd_set_t", file: !42, line: 43, baseType: !99)
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !102, !21, !51}
!101 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !76, file: !42, line: 55, baseType: !104, size: 64, offset: 448)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !105, line: 63, baseType: !106)
!105 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !107, line: 152, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!108 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!109 = !{!110}
!110 = !DISubrange(count: 2)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !113, line: 23, type: !114, isLocal: true, isDefinition: true)
!113 = !DIFile(filename: "jwk/jwk.h", directory: "/local-ssd/jose-tybnn257nmcmvd2edxslnv5faxmqaxui-build/aidengro/spack-stage-jose-10-tybnn257nmcmvd2edxslnv5faxmqaxui/spack-src/cmd", checksumkind: CSK_MD5, checksum: "55507e3641c700ccdffb6af55f4c1aff")
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 40, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 5)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !113, line: 23, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 200, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 25)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !113, line: 24, type: !114, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !113, line: 24, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 192, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 24)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !113, line: 25, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 16, elements: !109)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !113, line: 25, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 232, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 29)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "jcmd_jwk_doc_input", scope: !6, file: !113, line: 22, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 512, elements: !30)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 552, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 69)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "prefix", scope: !6, file: !3, line: 27, type: !51, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 3)
!150 = !{i32 7, !"Dwarf Version", i32 5}
!151 = !{i32 2, !"Debug Info Version", i32 3}
!152 = !{i32 1, !"wchar_size", i32 4}
!153 = !{i32 8, !"PIC Level", i32 2}
!154 = !{i32 7, !"PIE Level", i32 2}
!155 = !{i32 7, !"uwtable", i32 2}
!156 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!157 = !DILocation(line: 70, column: 1, scope: !2)
!158 = distinct !DISubprogram(name: "jcmd_jwk_eql", scope: !3, file: !3, line: 47, type: !55, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !159)
!159 = !{!160, !161, !162, !175, !177, !182}
!160 = !DILocalVariable(name: "argc", arg: 1, scope: !158, file: !3, line: 47, type: !57)
!161 = !DILocalVariable(name: "argv", arg: 2, scope: !158, file: !3, line: 47, type: !58)
!162 = !DILocalVariable(name: "opt", scope: !158, file: !3, line: 49, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "jcmd_opt_t", file: !3, line: 25, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 23, size: 64, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !164, file: !3, line: 24, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_t", file: !9, line: 64, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "json_t", file: !9, line: 61, size: 128, elements: !170)
!170 = !{!171, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !169, file: !9, line: 62, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_type", file: !9, line: 59, baseType: !8)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !169, file: !9, line: 63, baseType: !174, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!175 = !DILocalVariable(name: "i", scope: !176, file: !3, line: 59, type: !22)
!176 = distinct !DILexicalBlock(scope: !158, file: !3, line: 59, column: 5)
!177 = !DILocalVariable(name: "a", scope: !178, file: !3, line: 60, type: !180)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 59, column: 60)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 59, column: 5)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!182 = !DILocalVariable(name: "b", scope: !178, file: !3, line: 61, type: !180)
!183 = !{!184, !184, i64 0}
!184 = !{!"int", !185, i64 0}
!185 = !{!"omnipotent char", !186, i64 0}
!186 = !{!"Simple C/C++ TBAA"}
!187 = !DILocation(line: 47, column: 18, scope: !158)
!188 = !{!189, !189, i64 0}
!189 = !{!"any pointer", !185, i64 0}
!190 = !DILocation(line: 47, column: 30, scope: !158)
!191 = !DILocation(line: 49, column: 5, scope: !158)
!192 = !DILocation(line: 49, column: 21, scope: !158)
!193 = !DILocation(line: 51, column: 25, scope: !194)
!194 = distinct !DILexicalBlock(scope: !158, file: !3, line: 51, column: 9)
!195 = !DILocation(line: 51, column: 31, scope: !194)
!196 = !DILocation(line: 51, column: 49, scope: !194)
!197 = !DILocation(line: 51, column: 10, scope: !194)
!198 = !DILocation(line: 51, column: 9, scope: !158)
!199 = !DILocation(line: 52, column: 9, scope: !194)
!200 = !DILocation(line: 54, column: 29, scope: !201)
!201 = distinct !DILexicalBlock(scope: !158, file: !3, line: 54, column: 9)
!202 = !{!203, !189, i64 0}
!203 = !{!"", !189, i64 0}
!204 = !DILocation(line: 54, column: 9, scope: !201)
!205 = !DILocation(line: 54, column: 35, scope: !201)
!206 = !DILocation(line: 54, column: 9, scope: !158)
!207 = !DILocation(line: 55, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !201, file: !3, line: 54, column: 40)
!209 = !DILocation(line: 55, column: 9, scope: !208)
!210 = !DILocation(line: 56, column: 9, scope: !208)
!211 = !DILocation(line: 59, column: 10, scope: !176)
!212 = !DILocation(line: 59, column: 17, scope: !176)
!213 = !{!214, !214, i64 0}
!214 = !{!"long", !185, i64 0}
!215 = !DILocation(line: 59, column: 24, scope: !179)
!216 = !DILocation(line: 59, column: 48, scope: !179)
!217 = !DILocation(line: 59, column: 28, scope: !179)
!218 = !DILocation(line: 59, column: 26, scope: !179)
!219 = !DILocation(line: 59, column: 5, scope: !176)
!220 = !DILocation(line: 60, column: 9, scope: !178)
!221 = !DILocation(line: 60, column: 23, scope: !178)
!222 = !DILocation(line: 60, column: 46, scope: !178)
!223 = !DILocation(line: 60, column: 52, scope: !178)
!224 = !DILocation(line: 60, column: 54, scope: !178)
!225 = !DILocation(line: 60, column: 27, scope: !178)
!226 = !DILocation(line: 61, column: 9, scope: !178)
!227 = !DILocation(line: 61, column: 23, scope: !178)
!228 = !DILocation(line: 61, column: 46, scope: !178)
!229 = !DILocation(line: 61, column: 52, scope: !178)
!230 = !DILocation(line: 61, column: 27, scope: !178)
!231 = !DILocation(line: 63, column: 33, scope: !232)
!232 = distinct !DILexicalBlock(scope: !178, file: !3, line: 63, column: 13)
!233 = !DILocation(line: 63, column: 36, scope: !232)
!234 = !DILocation(line: 63, column: 14, scope: !232)
!235 = !DILocation(line: 63, column: 13, scope: !178)
!236 = !DILocation(line: 64, column: 13, scope: !232)
!237 = !DILocation(line: 65, column: 5, scope: !179)
!238 = !DILocation(line: 65, column: 5, scope: !178)
!239 = !DILocation(line: 59, column: 56, scope: !179)
!240 = !DILocation(line: 59, column: 5, scope: !179)
!241 = distinct !{!241, !219, !242, !243}
!242 = !DILocation(line: 65, column: 5, scope: !176)
!243 = !{!"llvm.loop.mustprogress"}
!244 = !DILocation(line: 67, column: 5, scope: !158)
!245 = !DILocation(line: 68, column: 1, scope: !158)
!246 = !DISubprogram(name: "jcmd_push", scope: !42, file: !42, line: 88, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!250 = distinct !DISubprogram(name: "jcmd_opt_cleanup", scope: !3, file: !3, line: 41, type: !251, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !254)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !253}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!254 = !{!255}
!255 = !DILocalVariable(name: "opt", arg: 1, scope: !250, file: !3, line: 41, type: !253)
!256 = !DILocation(line: 41, column: 30, scope: !250)
!257 = !DILocation(line: 43, column: 19, scope: !250)
!258 = !DILocation(line: 43, column: 24, scope: !250)
!259 = !DILocation(line: 43, column: 5, scope: !250)
!260 = !DILocation(line: 44, column: 1, scope: !250)
!261 = !DISubprogram(name: "jcmd_opt_parse", scope: !42, file: !42, line: 91, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{!101, !57, !58, !102, !21, !51}
!264 = !DISubprogram(name: "json_array_size", scope: !9, file: !9, line: 289, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!265 = !DISubroutineType(types: !266)
!266 = !{!22, !180}
!267 = !DISubprogram(name: "fprintf", scope: !105, file: !105, line: 350, type: !268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DISubroutineType(types: !269)
!269 = !{!57, !270, !324, null}
!270 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !273, line: 7, baseType: !274)
!273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !275, line: 49, size: 1728, elements: !276)
!275 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !292, !294, !295, !296, !297, !299, !301, !305, !308, !310, !313, !316, !317, !318, !319, !320}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !274, file: !275, line: 51, baseType: !57, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !274, file: !275, line: 54, baseType: !59, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !274, file: !275, line: 55, baseType: !59, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !274, file: !275, line: 56, baseType: !59, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !274, file: !275, line: 57, baseType: !59, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !274, file: !275, line: 58, baseType: !59, size: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !274, file: !275, line: 59, baseType: !59, size: 64, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !274, file: !275, line: 60, baseType: !59, size: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !274, file: !275, line: 61, baseType: !59, size: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !274, file: !275, line: 64, baseType: !59, size: 64, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !274, file: !275, line: 65, baseType: !59, size: 64, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !274, file: !275, line: 66, baseType: !59, size: 64, offset: 704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !274, file: !275, line: 68, baseType: !290, size: 64, offset: 768)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !275, line: 36, flags: DIFlagFwdDecl)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !274, file: !275, line: 70, baseType: !293, size: 64, offset: 832)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !274, file: !275, line: 72, baseType: !57, size: 32, offset: 896)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !274, file: !275, line: 73, baseType: !57, size: 32, offset: 928)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !274, file: !275, line: 74, baseType: !106, size: 64, offset: 960)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !274, file: !275, line: 77, baseType: !298, size: 16, offset: 1024)
!298 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !274, file: !275, line: 78, baseType: !300, size: 8, offset: 1040)
!300 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !274, file: !275, line: 79, baseType: !302, size: 8, offset: 1048)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 1)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !274, file: !275, line: 81, baseType: !306, size: 64, offset: 1088)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !275, line: 43, baseType: null)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !274, file: !275, line: 89, baseType: !309, size: 64, offset: 1152)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !107, line: 153, baseType: !108)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !274, file: !275, line: 91, baseType: !311, size: 64, offset: 1216)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !275, line: 37, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !274, file: !275, line: 92, baseType: !314, size: 64, offset: 1280)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !275, line: 38, flags: DIFlagFwdDecl)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !274, file: !275, line: 93, baseType: !293, size: 64, offset: 1344)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !274, file: !275, line: 94, baseType: !21, size: 64, offset: 1408)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !274, file: !275, line: 95, baseType: !22, size: 64, offset: 1472)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !274, file: !275, line: 96, baseType: !57, size: 32, offset: 1536)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !274, file: !275, line: 98, baseType: !321, size: 160, offset: 1568)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 20)
!324 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!325 = !DISubprogram(name: "json_array_get", scope: !9, file: !9, line: 290, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DISubroutineType(types: !327)
!327 = !{!167, !180, !22}
!328 = !DISubprogram(name: "jose_jwk_eql", scope: !329, file: !329, line: 137, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DIFile(filename: "../jose/jwk.h", directory: "/local-ssd/jose-tybnn257nmcmvd2edxslnv5faxmqaxui-build/aidengro/spack-stage-jose-10-tybnn257nmcmvd2edxslnv5faxmqaxui/spack-src/cmd", checksumkind: CSK_MD5, checksum: "35a750bbafd00ee0e360dddb7f48798c")
!330 = !DISubroutineType(types: !331)
!331 = !{!101, !332, !180, !180}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "jose_cfg_t", file: !334, line: 56, baseType: !335)
!334 = !DIFile(filename: "../jose/cfg.h", directory: "/local-ssd/jose-tybnn257nmcmvd2edxslnv5faxmqaxui-build/aidengro/spack-stage-jose-10-tybnn257nmcmvd2edxslnv5faxmqaxui/spack-src/cmd", checksumkind: CSK_MD5, checksum: "e6bf8c05d243157703fe11a9711e737b")
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "jose_cfg", file: !334, line: 56, flags: DIFlagFwdDecl)
!336 = distinct !DISubprogram(name: "json_decrefp", scope: !9, file: !9, line: 137, type: !337, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !340)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!340 = !{!341}
!341 = !DILocalVariable(name: "json", arg: 1, scope: !336, file: !9, line: 137, type: !339)
!342 = !DILocation(line: 137, column: 47, scope: !336)
!343 = !DILocation(line: 138, column: 9, scope: !344)
!344 = distinct !DILexicalBlock(scope: !336, file: !9, line: 138, column: 9)
!345 = !DILocation(line: 138, column: 9, scope: !336)
!346 = !DILocation(line: 139, column: 22, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !9, line: 138, column: 15)
!348 = !DILocation(line: 139, column: 21, scope: !347)
!349 = !DILocation(line: 139, column: 9, scope: !347)
!350 = !DILocation(line: 140, column: 10, scope: !347)
!351 = !DILocation(line: 140, column: 15, scope: !347)
!352 = !DILocation(line: 141, column: 5, scope: !347)
!353 = !DILocation(line: 142, column: 1, scope: !336)
!354 = distinct !DISubprogram(name: "json_decref", scope: !9, file: !9, line: 131, type: !355, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !167}
!357 = !{!358}
!358 = !DILocalVariable(name: "json", arg: 1, scope: !354, file: !9, line: 131, type: !167)
!359 = !DILocation(line: 131, column: 45, scope: !354)
!360 = !DILocation(line: 132, column: 9, scope: !361)
!361 = distinct !DILexicalBlock(scope: !354, file: !9, line: 132, column: 9)
!362 = !DILocation(line: 132, column: 14, scope: !361)
!363 = !DILocation(line: 132, column: 17, scope: !361)
!364 = !DILocation(line: 132, column: 23, scope: !361)
!365 = !{!366, !214, i64 8}
!366 = !{!"json_t", !185, i64 0, !214, i64 8}
!367 = !DILocation(line: 132, column: 32, scope: !361)
!368 = !DILocation(line: 132, column: 46, scope: !361)
!369 = !DILocation(line: 132, column: 49, scope: !361)
!370 = !DILocation(line: 132, column: 76, scope: !361)
!371 = !DILocation(line: 132, column: 9, scope: !354)
!372 = !DILocation(line: 133, column: 21, scope: !361)
!373 = !DILocation(line: 133, column: 9, scope: !361)
!374 = !DILocation(line: 134, column: 1, scope: !354)
!375 = !DISubprogram(name: "json_delete", scope: !9, file: !9, line: 129, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

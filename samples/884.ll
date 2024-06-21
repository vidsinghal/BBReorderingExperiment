; ModuleID = 'samples/884.bc'
source_filename = "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src/src/libmongoc/examples/example-manage-collection-indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._bson_error_t = type { i32, i32, [504 x i8] }

@.str = private unnamed_addr constant [52 x i8] c"mongodb://127.0.0.1/?appname=create-indexes-example\00", align 1, !dbg !0
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Failure at %s:%d\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [210 x i8] c"/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src/src/libmongoc/examples/example-manage-collection-indexes.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [61 x i8] c"Unexpected arguments. Expected usage: %s [CONNECTION_STRING]\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to parse URI: %s\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to create client: %s\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [28 x i8] c"Successfully created index\0A\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [27 x i8] c"Failed to create index: %s\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [18 x i8] c"Listing indexes:\0A\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1, !dbg !53
@.str.13 = private unnamed_addr constant [27 x i8] c"Failed to list indexes: %s\00", align 1, !dbg !58
@.str.14 = private unnamed_addr constant [28 x i8] c"Successfully dropped index\0A\00", align 1, !dbg !60
@.str.15 = private unnamed_addr constant [25 x i8] c"Failed to drop index: %s\00", align 1, !dbg !62

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 !dbg !115 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %client = alloca ptr, align 8
  %uri_string = alloca ptr, align 8
  %uri = alloca ptr, align 8
  %coll = alloca ptr, align 8
  %error = alloca %struct._bson_error_t, align 8
  %ok = alloca i8, align 1
  %keys = alloca ptr, align 8
  %im = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %cursor = alloca ptr, align 8
  %got = alloca ptr, align 8
  %got_str = alloca ptr, align 8
  %keys54 = alloca ptr, align 8
  %index_name = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !194
  tail call void @llvm.dbg.declare(metadata ptr %argc.addr, metadata !122, metadata !DIExpression()), !dbg !198
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !199
  tail call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !123, metadata !DIExpression()), !dbg !201
  call void @llvm.lifetime.start.p0(i64 8, ptr %client) #6, !dbg !202
  tail call void @llvm.dbg.declare(metadata ptr %client, metadata !124, metadata !DIExpression()), !dbg !203
  store ptr null, ptr %client, align 8, !dbg !203, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %uri_string) #6, !dbg !204
  tail call void @llvm.dbg.declare(metadata ptr %uri_string, metadata !130, metadata !DIExpression()), !dbg !205
  store ptr @.str, ptr %uri_string, align 8, !dbg !205, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %uri) #6, !dbg !206
  tail call void @llvm.dbg.declare(metadata ptr %uri, metadata !133, metadata !DIExpression()), !dbg !207
  store ptr null, ptr %uri, align 8, !dbg !207, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %coll) #6, !dbg !208
  tail call void @llvm.dbg.declare(metadata ptr %coll, metadata !138, metadata !DIExpression()), !dbg !209
  store ptr null, ptr %coll, align 8, !dbg !209, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 512, ptr %error) #6, !dbg !210
  tail call void @llvm.dbg.declare(metadata ptr %error, metadata !143, metadata !DIExpression()), !dbg !211
  call void @llvm.lifetime.start.p0(i64 1, ptr %ok) #6, !dbg !212
  tail call void @llvm.dbg.declare(metadata ptr %ok, metadata !158, metadata !DIExpression()), !dbg !213
  store i8 0, ptr %ok, align 1, !dbg !213, !tbaa !214
  call void @mongoc_init(), !dbg !216
  %0 = load i32, ptr %argc.addr, align 4, !dbg !217, !tbaa !194
  %cmp = icmp sgt i32 %0, 2, !dbg !219
  br i1 %cmp, label %if.then, label %if.end, !dbg !220

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !221, !tbaa !199
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 32), !dbg !221
  %2 = load ptr, ptr @stderr, align 8, !dbg !221, !tbaa !199
  %3 = load ptr, ptr %argv.addr, align 8, !dbg !221, !tbaa !199
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0, !dbg !221
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !221, !tbaa !199
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.3, ptr noundef %4), !dbg !221
  %5 = load ptr, ptr @stderr, align 8, !dbg !221, !tbaa !199
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.4), !dbg !221
  br label %fail, !dbg !221

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %argc.addr, align 4, !dbg !225, !tbaa !194
  %cmp3 = icmp sgt i32 %6, 1, !dbg !227
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !228

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %argv.addr, align 8, !dbg !229, !tbaa !199
  %arrayidx5 = getelementptr inbounds ptr, ptr %7, i64 1, !dbg !229
  %8 = load ptr, ptr %arrayidx5, align 8, !dbg !229, !tbaa !199
  store ptr %8, ptr %uri_string, align 8, !dbg !231, !tbaa !199
  br label %if.end6, !dbg !232

if.end6:                                          ; preds = %if.then4, %if.end
  %9 = load ptr, ptr %uri_string, align 8, !dbg !233, !tbaa !199
  %call7 = call ptr @mongoc_uri_new_with_error(ptr noundef %9, ptr noundef %error), !dbg !234
  store ptr %call7, ptr %uri, align 8, !dbg !235, !tbaa !199
  %10 = load ptr, ptr %uri, align 8, !dbg !236, !tbaa !199
  %tobool = icmp ne ptr %10, null, !dbg !236
  br i1 %tobool, label %if.end12, label %if.then8, !dbg !238

if.then8:                                         ; preds = %if.end6
  %11 = load ptr, ptr @stderr, align 8, !dbg !239, !tbaa !199
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 41), !dbg !239
  %12 = load ptr, ptr @stderr, align 8, !dbg !239, !tbaa !199
  %message = getelementptr inbounds %struct._bson_error_t, ptr %error, i32 0, i32 2, !dbg !239
  %arraydecay = getelementptr inbounds [504 x i8], ptr %message, i64 0, i64 0, !dbg !239
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.5, ptr noundef %arraydecay), !dbg !239
  %13 = load ptr, ptr @stderr, align 8, !dbg !239, !tbaa !199
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.4), !dbg !239
  br label %fail, !dbg !239

if.end12:                                         ; preds = %if.end6
  %14 = load ptr, ptr %uri, align 8, !dbg !243, !tbaa !199
  %call13 = call ptr @mongoc_client_new_from_uri_with_error(ptr noundef %14, ptr noundef %error), !dbg !244
  store ptr %call13, ptr %client, align 8, !dbg !245, !tbaa !199
  %15 = load ptr, ptr %client, align 8, !dbg !246, !tbaa !199
  %tobool14 = icmp ne ptr %15, null, !dbg !246
  br i1 %tobool14, label %if.end21, label %if.then15, !dbg !248

if.then15:                                        ; preds = %if.end12
  %16 = load ptr, ptr @stderr, align 8, !dbg !249, !tbaa !199
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 45), !dbg !249
  %17 = load ptr, ptr @stderr, align 8, !dbg !249, !tbaa !199
  %message17 = getelementptr inbounds %struct._bson_error_t, ptr %error, i32 0, i32 2, !dbg !249
  %arraydecay18 = getelementptr inbounds [504 x i8], ptr %message17, i64 0, i64 0, !dbg !249
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.6, ptr noundef %arraydecay18), !dbg !249
  %18 = load ptr, ptr @stderr, align 8, !dbg !249, !tbaa !199
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.4), !dbg !249
  br label %fail, !dbg !249

if.end21:                                         ; preds = %if.end12
  %19 = load ptr, ptr %client, align 8, !dbg !253, !tbaa !199
  %call22 = call ptr @mongoc_client_get_collection(ptr noundef %19, ptr noundef @.str.7, ptr noundef @.str.7), !dbg !254
  store ptr %call22, ptr %coll, align 8, !dbg !255, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %keys) #6, !dbg !256
  tail call void @llvm.dbg.declare(metadata ptr %keys, metadata !160, metadata !DIExpression()), !dbg !257
  %call23 = call ptr @bson_bcon_magic() #7, !dbg !258
  %call24 = call i32 @bcon_ensure_int32(i32 noundef 1), !dbg !258
  %call25 = call ptr (ptr, ...) @bcon_new(ptr noundef null, ptr noundef @.str.8, ptr noundef %call23, i32 noundef 15, i32 noundef %call24, ptr noundef null), !dbg !258
  store ptr %call25, ptr %keys, align 8, !dbg !257, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %im) #6, !dbg !259
  tail call void @llvm.dbg.declare(metadata ptr %im, metadata !175, metadata !DIExpression()), !dbg !260
  %20 = load ptr, ptr %keys, align 8, !dbg !261, !tbaa !199
  %call26 = call ptr @mongoc_index_model_new(ptr noundef %20, ptr noundef null), !dbg !262
  store ptr %call26, ptr %im, align 8, !dbg !260, !tbaa !199
  %21 = load ptr, ptr %coll, align 8, !dbg !263, !tbaa !199
  %call27 = call zeroext i1 @mongoc_collection_create_indexes_with_opts(ptr noundef %21, ptr noundef %im, i64 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %error), !dbg !265
  br i1 %call27, label %if.then28, label %if.else, !dbg !266

if.then28:                                        ; preds = %if.end21
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.9), !dbg !267
  br label %if.end35, !dbg !269

if.else:                                          ; preds = %if.end21
  %22 = load ptr, ptr %keys, align 8, !dbg !270, !tbaa !199
  call void @bson_destroy(ptr noundef %22), !dbg !272
  %23 = load ptr, ptr @stderr, align 8, !dbg !273, !tbaa !199
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 60), !dbg !273
  %24 = load ptr, ptr @stderr, align 8, !dbg !273, !tbaa !199
  %message31 = getelementptr inbounds %struct._bson_error_t, ptr %error, i32 0, i32 2, !dbg !273
  %arraydecay32 = getelementptr inbounds [504 x i8], ptr %message31, i64 0, i64 0, !dbg !273
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.10, ptr noundef %arraydecay32), !dbg !273
  %25 = load ptr, ptr @stderr, align 8, !dbg !273, !tbaa !199
  %call34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.4), !dbg !273
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !273

if.end35:                                         ; preds = %if.then28
  %26 = load ptr, ptr %keys, align 8, !dbg !276, !tbaa !199
  call void @bson_destroy(ptr noundef %26), !dbg !277
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !278
  br label %cleanup, !dbg !278

cleanup:                                          ; preds = %if.else, %if.end35
  call void @llvm.lifetime.end.p0(i64 8, ptr %im) #6, !dbg !278
  call void @llvm.lifetime.end.p0(i64 8, ptr %keys) #6, !dbg !278
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup74 [
    i32 0, label %cleanup.cont
    i32 2, label %fail
  ]

cleanup.cont:                                     ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %cursor) #6, !dbg !279
  tail call void @llvm.dbg.declare(metadata ptr %cursor, metadata !179, metadata !DIExpression()), !dbg !280
  %27 = load ptr, ptr %coll, align 8, !dbg !281, !tbaa !199
  %call37 = call ptr @mongoc_collection_find_indexes_with_opts(ptr noundef %27, ptr noundef null), !dbg !282
  store ptr %call37, ptr %cursor, align 8, !dbg !280, !tbaa !199
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.11), !dbg !283
  call void @llvm.lifetime.start.p0(i64 8, ptr %got) #6, !dbg !284
  tail call void @llvm.dbg.declare(metadata ptr %got, metadata !185, metadata !DIExpression()), !dbg !285
  br label %while.cond, !dbg !286

while.cond:                                       ; preds = %while.body, %cleanup.cont
  %28 = load ptr, ptr %cursor, align 8, !dbg !287, !tbaa !199
  %call39 = call zeroext i1 @mongoc_cursor_next(ptr noundef %28, ptr noundef %got), !dbg !288
  br i1 %call39, label %while.body, label %while.end, !dbg !286

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %got_str) #6, !dbg !289
  tail call void @llvm.dbg.declare(metadata ptr %got_str, metadata !188, metadata !DIExpression()), !dbg !290
  %29 = load ptr, ptr %got, align 8, !dbg !291, !tbaa !199
  %call40 = call ptr @bson_as_canonical_extended_json(ptr noundef %29, ptr noundef null), !dbg !292
  store ptr %call40, ptr %got_str, align 8, !dbg !290, !tbaa !199
  %30 = load ptr, ptr %got_str, align 8, !dbg !293, !tbaa !199
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, ptr noundef %30), !dbg !294
  %31 = load ptr, ptr %got_str, align 8, !dbg !295, !tbaa !199
  call void @bson_free(ptr noundef %31), !dbg !296
  call void @llvm.lifetime.end.p0(i64 8, ptr %got_str) #6, !dbg !297
  br label %while.cond, !dbg !286, !llvm.loop !298

while.end:                                        ; preds = %while.cond
  %32 = load ptr, ptr %cursor, align 8, !dbg !299, !tbaa !199
  %call42 = call zeroext i1 @mongoc_cursor_error(ptr noundef %32, ptr noundef %error), !dbg !301
  br i1 %call42, label %if.then43, label %if.end49, !dbg !302

if.then43:                                        ; preds = %while.end
  %33 = load ptr, ptr %cursor, align 8, !dbg !303, !tbaa !199
  call void @mongoc_cursor_destroy(ptr noundef %33), !dbg !305
  %34 = load ptr, ptr @stderr, align 8, !dbg !306, !tbaa !199
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 79), !dbg !306
  %35 = load ptr, ptr @stderr, align 8, !dbg !306, !tbaa !199
  %message45 = getelementptr inbounds %struct._bson_error_t, ptr %error, i32 0, i32 2, !dbg !306
  %arraydecay46 = getelementptr inbounds [504 x i8], ptr %message45, i64 0, i64 0, !dbg !306
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.13, ptr noundef %arraydecay46), !dbg !306
  %36 = load ptr, ptr @stderr, align 8, !dbg !306, !tbaa !199
  %call48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.4), !dbg !306
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup50, !dbg !306

if.end49:                                         ; preds = %while.end
  %37 = load ptr, ptr %cursor, align 8, !dbg !309, !tbaa !199
  call void @mongoc_cursor_destroy(ptr noundef %37), !dbg !310
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !311
  br label %cleanup50, !dbg !311

cleanup50:                                        ; preds = %if.then43, %if.end49
  call void @llvm.lifetime.end.p0(i64 8, ptr %got) #6, !dbg !311
  call void @llvm.lifetime.end.p0(i64 8, ptr %cursor) #6, !dbg !311
  %cleanup.dest52 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest52, label %cleanup74 [
    i32 0, label %cleanup.cont53
    i32 2, label %fail
  ]

cleanup.cont53:                                   ; preds = %cleanup50
  call void @llvm.lifetime.start.p0(i64 8, ptr %keys54) #6, !dbg !312
  tail call void @llvm.dbg.declare(metadata ptr %keys54, metadata !190, metadata !DIExpression()), !dbg !313
  %call55 = call ptr @bson_bcon_magic() #7, !dbg !314
  %call56 = call i32 @bcon_ensure_int32(i32 noundef 1), !dbg !314
  %call57 = call ptr (ptr, ...) @bcon_new(ptr noundef null, ptr noundef @.str.8, ptr noundef %call55, i32 noundef 15, i32 noundef %call56, ptr noundef null), !dbg !314
  store ptr %call57, ptr %keys54, align 8, !dbg !313, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %index_name) #6, !dbg !315
  tail call void @llvm.dbg.declare(metadata ptr %index_name, metadata !192, metadata !DIExpression()), !dbg !316
  %38 = load ptr, ptr %keys54, align 8, !dbg !317, !tbaa !199
  %call58 = call ptr @mongoc_collection_keys_to_index_string(ptr noundef %38), !dbg !318
  store ptr %call58, ptr %index_name, align 8, !dbg !316, !tbaa !199
  %39 = load ptr, ptr %coll, align 8, !dbg !319, !tbaa !199
  %40 = load ptr, ptr %index_name, align 8, !dbg !321, !tbaa !199
  %call59 = call zeroext i1 @mongoc_collection_drop_index_with_opts(ptr noundef %39, ptr noundef %40, ptr noundef null, ptr noundef %error), !dbg !322
  br i1 %call59, label %if.then60, label %if.else62, !dbg !323

if.then60:                                        ; preds = %cleanup.cont53
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.14), !dbg !324
  br label %if.end68, !dbg !326

if.else62:                                        ; preds = %cleanup.cont53
  %41 = load ptr, ptr %index_name, align 8, !dbg !327, !tbaa !199
  call void @bson_free(ptr noundef %41), !dbg !329
  %42 = load ptr, ptr %keys54, align 8, !dbg !330, !tbaa !199
  call void @bson_destroy(ptr noundef %42), !dbg !331
  %43 = load ptr, ptr @stderr, align 8, !dbg !332, !tbaa !199
  %call63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 95), !dbg !332
  %44 = load ptr, ptr @stderr, align 8, !dbg !332, !tbaa !199
  %message64 = getelementptr inbounds %struct._bson_error_t, ptr %error, i32 0, i32 2, !dbg !332
  %arraydecay65 = getelementptr inbounds [504 x i8], ptr %message64, i64 0, i64 0, !dbg !332
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.15, ptr noundef %arraydecay65), !dbg !332
  %45 = load ptr, ptr @stderr, align 8, !dbg !332, !tbaa !199
  %call67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.4), !dbg !332
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !332

if.end68:                                         ; preds = %if.then60
  %46 = load ptr, ptr %index_name, align 8, !dbg !335, !tbaa !199
  call void @bson_free(ptr noundef %46), !dbg !336
  %47 = load ptr, ptr %keys54, align 8, !dbg !337, !tbaa !199
  call void @bson_destroy(ptr noundef %47), !dbg !338
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !339
  br label %cleanup69, !dbg !339

cleanup69:                                        ; preds = %if.else62, %if.end68
  call void @llvm.lifetime.end.p0(i64 8, ptr %index_name) #6, !dbg !339
  call void @llvm.lifetime.end.p0(i64 8, ptr %keys54) #6, !dbg !339
  %cleanup.dest71 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest71, label %cleanup74 [
    i32 0, label %cleanup.cont72
    i32 2, label %fail
  ]

cleanup.cont72:                                   ; preds = %cleanup69
  store i8 1, ptr %ok, align 1, !dbg !340, !tbaa !214
  br label %fail, !dbg !341

fail:                                             ; preds = %cleanup.cont72, %cleanup69, %cleanup50, %cleanup, %if.then15, %if.then8, %if.then
  tail call void @llvm.dbg.label(metadata !193), !dbg !342
  %48 = load ptr, ptr %coll, align 8, !dbg !343, !tbaa !199
  call void @mongoc_collection_destroy(ptr noundef %48), !dbg !344
  %49 = load ptr, ptr %client, align 8, !dbg !345, !tbaa !199
  call void @mongoc_client_destroy(ptr noundef %49), !dbg !346
  %50 = load ptr, ptr %uri, align 8, !dbg !347, !tbaa !199
  call void @mongoc_uri_destroy(ptr noundef %50), !dbg !348
  call void @mongoc_cleanup(), !dbg !349
  %51 = load i8, ptr %ok, align 1, !dbg !350, !tbaa !214, !range !351, !noundef !352
  %tobool73 = trunc i8 %51 to i1, !dbg !350
  %52 = zext i1 %tobool73 to i64, !dbg !350
  %cond = select i1 %tobool73, i32 0, i32 1, !dbg !350
  store i32 %cond, ptr %retval, align 4, !dbg !353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !353

cleanup74:                                        ; preds = %fail, %cleanup69, %cleanup50, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %ok) #6, !dbg !354
  call void @llvm.lifetime.end.p0(i64 512, ptr %error) #6, !dbg !354
  call void @llvm.lifetime.end.p0(i64 8, ptr %coll) #6, !dbg !354
  call void @llvm.lifetime.end.p0(i64 8, ptr %uri) #6, !dbg !354
  call void @llvm.lifetime.end.p0(i64 8, ptr %uri_string) #6, !dbg !354
  call void @llvm.lifetime.end.p0(i64 8, ptr %client) #6, !dbg !354
  %53 = load i32, ptr %retval, align 4, !dbg !354
  ret i32 %53, !dbg !354
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !355 void @mongoc_init() #2

declare !dbg !359 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare !dbg !423 ptr @mongoc_uri_new_with_error(ptr noundef, ptr noundef) #2

declare !dbg !427 ptr @mongoc_client_new_from_uri_with_error(ptr noundef, ptr noundef) #2

declare !dbg !432 ptr @mongoc_client_get_collection(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !435 ptr @bcon_new(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !438 ptr @bson_bcon_magic() #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @bcon_ensure_int32(i32 noundef %_t) #4 !dbg !441 {
entry:
  %_t.addr = alloca i32, align 4
  store i32 %_t, ptr %_t.addr, align 4, !tbaa !194
  tail call void @llvm.dbg.declare(metadata ptr %_t.addr, metadata !448, metadata !DIExpression()), !dbg !449
  %0 = load i32, ptr %_t.addr, align 4, !dbg !449, !tbaa !194
  ret i32 %0, !dbg !449
}

declare !dbg !450 ptr @mongoc_index_model_new(ptr noundef, ptr noundef) #2

declare !dbg !453 zeroext i1 @mongoc_collection_create_indexes_with_opts(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !458 i32 @printf(ptr noundef, ...) #2

declare !dbg !461 void @bson_destroy(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !465 ptr @mongoc_collection_find_indexes_with_opts(ptr noundef, ptr noundef) #2

declare !dbg !468 zeroext i1 @mongoc_cursor_next(ptr noundef, ptr noundef) #2

declare !dbg !472 ptr @bson_as_canonical_extended_json(ptr noundef, ptr noundef) #2

declare !dbg !476 void @bson_free(ptr noundef) #2

declare !dbg !480 zeroext i1 @mongoc_cursor_error(ptr noundef, ptr noundef) #2

declare !dbg !483 void @mongoc_cursor_destroy(ptr noundef) #2

declare !dbg !486 ptr @mongoc_collection_keys_to_index_string(ptr noundef) #2

declare !dbg !489 zeroext i1 @mongoc_collection_drop_index_with_opts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !492 void @mongoc_collection_destroy(ptr noundef) #2

declare !dbg !495 void @mongoc_client_destroy(ptr noundef) #2

declare !dbg !498 void @mongoc_uri_destroy(ptr noundef) #2

declare !dbg !501 void @mongoc_cleanup() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!67}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/libmongoc/examples/example-manage-collection-indexes.c", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "9065478bde5c6cfa174151577419f10d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 52)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1680, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 210)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 61)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 30, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 2)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 24)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 28)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 5)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !24, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !34, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 27)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !9, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 6)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !48, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !34, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 25)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !69, retainedTypes: !105, globals: !107, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src/src/libmongoc/examples/example-manage-collection-indexes.c", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src/spack-build/src/libmongoc", checksumkind: CSK_MD5, checksum: "9065478bde5c6cfa174151577419f10d")
!69 = !{!70}
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 176, baseType: !72, size: 32, elements: !73)
!71 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/linux-ubuntu22.04-zen2/clang-18.0.0/libbson-1.24.4-3emagvezomjldhykavhwzeddzez6p3tl/include/libbson-1.0/bson/bcon.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build", checksumkind: CSK_MD5, checksum: "af5d3c6890b4fec8709a349289f8f9d3")
!72 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!74 = !DIEnumerator(name: "BCON_TYPE_UTF8", value: 0)
!75 = !DIEnumerator(name: "BCON_TYPE_DOUBLE", value: 1)
!76 = !DIEnumerator(name: "BCON_TYPE_DOCUMENT", value: 2)
!77 = !DIEnumerator(name: "BCON_TYPE_ARRAY", value: 3)
!78 = !DIEnumerator(name: "BCON_TYPE_BIN", value: 4)
!79 = !DIEnumerator(name: "BCON_TYPE_UNDEFINED", value: 5)
!80 = !DIEnumerator(name: "BCON_TYPE_OID", value: 6)
!81 = !DIEnumerator(name: "BCON_TYPE_BOOL", value: 7)
!82 = !DIEnumerator(name: "BCON_TYPE_DATE_TIME", value: 8)
!83 = !DIEnumerator(name: "BCON_TYPE_NULL", value: 9)
!84 = !DIEnumerator(name: "BCON_TYPE_REGEX", value: 10)
!85 = !DIEnumerator(name: "BCON_TYPE_DBPOINTER", value: 11)
!86 = !DIEnumerator(name: "BCON_TYPE_CODE", value: 12)
!87 = !DIEnumerator(name: "BCON_TYPE_SYMBOL", value: 13)
!88 = !DIEnumerator(name: "BCON_TYPE_CODEWSCOPE", value: 14)
!89 = !DIEnumerator(name: "BCON_TYPE_INT32", value: 15)
!90 = !DIEnumerator(name: "BCON_TYPE_TIMESTAMP", value: 16)
!91 = !DIEnumerator(name: "BCON_TYPE_INT64", value: 17)
!92 = !DIEnumerator(name: "BCON_TYPE_DECIMAL128", value: 18)
!93 = !DIEnumerator(name: "BCON_TYPE_MAXKEY", value: 19)
!94 = !DIEnumerator(name: "BCON_TYPE_MINKEY", value: 20)
!95 = !DIEnumerator(name: "BCON_TYPE_BCON", value: 21)
!96 = !DIEnumerator(name: "BCON_TYPE_ARRAY_START", value: 22)
!97 = !DIEnumerator(name: "BCON_TYPE_ARRAY_END", value: 23)
!98 = !DIEnumerator(name: "BCON_TYPE_DOC_START", value: 24)
!99 = !DIEnumerator(name: "BCON_TYPE_DOC_END", value: 25)
!100 = !DIEnumerator(name: "BCON_TYPE_END", value: 26)
!101 = !DIEnumerator(name: "BCON_TYPE_RAW", value: 27)
!102 = !DIEnumerator(name: "BCON_TYPE_SKIP", value: 28)
!103 = !DIEnumerator(name: "BCON_TYPE_ITER", value: 29)
!104 = !DIEnumerator(name: "BCON_TYPE_ERROR", value: 30)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !44, !46, !51, !53, !58, !60, !62}
!108 = !{i32 7, !"Dwarf Version", i32 5}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 4}
!111 = !{i32 8, !"PIC Level", i32 2}
!112 = !{i32 7, !"PIE Level", i32 2}
!113 = !{i32 7, !"uwtable", i32 2}
!114 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!115 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 17, type: !116, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !121)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !118, !119}
!118 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!121 = !{!122, !123, !124, !130, !133, !138, !143, !158, !160, !175, !179, !185, !188, !190, !192, !193}
!122 = !DILocalVariable(name: "argc", arg: 1, scope: !115, file: !2, line: 17, type: !118)
!123 = !DILocalVariable(name: "argv", arg: 2, scope: !115, file: !2, line: 17, type: !119)
!124 = !DILocalVariable(name: "client", scope: !115, file: !2, line: 19, type: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_client_t", file: !127, line: 75, baseType: !128)
!127 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-client.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "3ff398fceb492cf43ecf501aafb6c1ac")
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_client_t", file: !129, line: 25, flags: DIFlagFwdDecl)
!129 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-client-side-encryption.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "57f4e41e176701c3fb870b1cdcd60748")
!130 = !DILocalVariable(name: "uri_string", scope: !115, file: !2, line: 20, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!133 = !DILocalVariable(name: "uri", scope: !115, file: !2, line: 22, type: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_uri_t", file: !136, line: 95, baseType: !137)
!136 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-uri.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "ec8a82d2d8c002b1517fee400464e7cc")
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_uri_t", file: !136, line: 95, flags: DIFlagFwdDecl)
!138 = !DILocalVariable(name: "coll", scope: !115, file: !2, line: 23, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_collection_t", file: !141, line: 38, baseType: !142)
!141 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-collection.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "f6ec830f12a9639826f517033b9687d1")
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_collection_t", file: !129, line: 29, flags: DIFlagFwdDecl)
!143 = !DILocalVariable(name: "error", scope: !115, file: !2, line: 24, type: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_error_t", file: !145, line: 521, baseType: !146, align: 64)
!145 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/linux-ubuntu22.04-zen2/clang-18.0.0/libbson-1.24.4-3emagvezomjldhykavhwzeddzez6p3tl/include/libbson-1.0/bson/bson-types.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build", checksumkind: CSK_MD5, checksum: "fd1703a8823d69f0452e79051a925038")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_bson_error_t", file: !145, line: 517, size: 4096, elements: !147)
!147 = !{!148, !153, !154}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !146, file: !145, line: 518, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !150, line: 26, baseType: !151)
!150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !152, line: 42, baseType: !72)
!152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!153 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !146, file: !145, line: 519, baseType: !149, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !146, file: !145, line: 520, baseType: !155, size: 4032, offset: 64)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4032, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 504)
!158 = !DILocalVariable(name: "ok", scope: !115, file: !2, line: 25, type: !159)
!159 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!160 = !DILocalVariable(name: "keys", scope: !161, file: !2, line: 53, type: !162)
!161 = distinct !DILexicalBlock(scope: !115, file: !2, line: 50, column: 4)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_t", file: !145, line: 138, baseType: !164, align: 1024)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_bson_t", file: !145, line: 134, size: 1024, elements: !165)
!165 = !{!166, !167, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !145, line: 135, baseType: !149, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !164, file: !145, line: 136, baseType: !149, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !164, file: !145, line: 137, baseType: !169, size: 960, offset: 64)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 960, elements: !173)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !150, line: 24, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !152, line: 38, baseType: !172)
!172 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!173 = !{!174}
!174 = !DISubrange(count: 120)
!175 = !DILocalVariable(name: "im", scope: !161, file: !2, line: 54, type: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_index_model_t", file: !141, line: 160, baseType: !178)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_index_model_t", file: !141, line: 160, flags: DIFlagFwdDecl)
!179 = !DILocalVariable(name: "cursor", scope: !180, file: !2, line: 68, type: !181)
!180 = distinct !DILexicalBlock(scope: !115, file: !2, line: 66, column: 4)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_cursor_t", file: !183, line: 30, baseType: !184)
!183 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-cursor.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "ab02e4cb247e4dedbf49e30b4b02e193")
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_cursor_t", file: !129, line: 27, flags: DIFlagFwdDecl)
!185 = !DILocalVariable(name: "got", scope: !180, file: !2, line: 71, type: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!188 = !DILocalVariable(name: "got_str", scope: !189, file: !2, line: 73, type: !120)
!189 = distinct !DILexicalBlock(scope: !180, file: !2, line: 72, column: 49)
!190 = !DILocalVariable(name: "keys", scope: !191, file: !2, line: 87, type: !162)
!191 = distinct !DILexicalBlock(scope: !115, file: !2, line: 85, column: 4)
!192 = !DILocalVariable(name: "index_name", scope: !191, file: !2, line: 88, type: !120)
!193 = !DILabel(scope: !115, name: "fail", file: !2, line: 103)
!194 = !{!195, !195, i64 0}
!195 = !{!"int", !196, i64 0}
!196 = !{!"omnipotent char", !197, i64 0}
!197 = !{!"Simple C/C++ TBAA"}
!198 = !DILocation(line: 17, column: 11, scope: !115)
!199 = !{!200, !200, i64 0}
!200 = !{!"any pointer", !196, i64 0}
!201 = !DILocation(line: 17, column: 23, scope: !115)
!202 = !DILocation(line: 19, column: 4, scope: !115)
!203 = !DILocation(line: 19, column: 21, scope: !115)
!204 = !DILocation(line: 20, column: 4, scope: !115)
!205 = !DILocation(line: 20, column: 16, scope: !115)
!206 = !DILocation(line: 22, column: 4, scope: !115)
!207 = !DILocation(line: 22, column: 18, scope: !115)
!208 = !DILocation(line: 23, column: 4, scope: !115)
!209 = !DILocation(line: 23, column: 25, scope: !115)
!210 = !DILocation(line: 24, column: 4, scope: !115)
!211 = !DILocation(line: 24, column: 17, scope: !115)
!212 = !DILocation(line: 25, column: 4, scope: !115)
!213 = !DILocation(line: 25, column: 9, scope: !115)
!214 = !{!215, !215, i64 0}
!215 = !{!"_Bool", !196, i64 0}
!216 = !DILocation(line: 27, column: 4, scope: !115)
!217 = !DILocation(line: 29, column: 8, scope: !218)
!218 = distinct !DILexicalBlock(scope: !115, file: !2, line: 29, column: 8)
!219 = !DILocation(line: 29, column: 13, scope: !218)
!220 = !DILocation(line: 29, column: 8, scope: !115)
!221 = !DILocation(line: 30, column: 7, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !2, line: 30, column: 7)
!223 = distinct !DILexicalBlock(scope: !224, file: !2, line: 30, column: 7)
!224 = distinct !DILexicalBlock(scope: !218, file: !2, line: 29, column: 18)
!225 = !DILocation(line: 35, column: 8, scope: !226)
!226 = distinct !DILexicalBlock(scope: !115, file: !2, line: 35, column: 8)
!227 = !DILocation(line: 35, column: 13, scope: !226)
!228 = !DILocation(line: 35, column: 8, scope: !115)
!229 = !DILocation(line: 36, column: 20, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !2, line: 35, column: 18)
!231 = !DILocation(line: 36, column: 18, scope: !230)
!232 = !DILocation(line: 37, column: 4, scope: !230)
!233 = !DILocation(line: 39, column: 37, scope: !115)
!234 = !DILocation(line: 39, column: 10, scope: !115)
!235 = !DILocation(line: 39, column: 8, scope: !115)
!236 = !DILocation(line: 40, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !115, file: !2, line: 40, column: 8)
!238 = !DILocation(line: 40, column: 8, scope: !115)
!239 = !DILocation(line: 41, column: 7, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !2, line: 41, column: 7)
!241 = distinct !DILexicalBlock(scope: !242, file: !2, line: 41, column: 7)
!242 = distinct !DILexicalBlock(scope: !237, file: !2, line: 40, column: 14)
!243 = !DILocation(line: 43, column: 52, scope: !115)
!244 = !DILocation(line: 43, column: 13, scope: !115)
!245 = !DILocation(line: 43, column: 11, scope: !115)
!246 = !DILocation(line: 44, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !115, file: !2, line: 44, column: 8)
!248 = !DILocation(line: 44, column: 8, scope: !115)
!249 = !DILocation(line: 45, column: 7, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 45, column: 7)
!251 = distinct !DILexicalBlock(scope: !252, file: !2, line: 45, column: 7)
!252 = distinct !DILexicalBlock(scope: !247, file: !2, line: 44, column: 17)
!253 = !DILocation(line: 48, column: 41, scope: !115)
!254 = !DILocation(line: 48, column: 11, scope: !115)
!255 = !DILocation(line: 48, column: 9, scope: !115)
!256 = !DILocation(line: 53, column: 7, scope: !161)
!257 = !DILocation(line: 53, column: 15, scope: !161)
!258 = !DILocation(line: 53, column: 22, scope: !161)
!259 = !DILocation(line: 54, column: 7, scope: !161)
!260 = !DILocation(line: 54, column: 29, scope: !161)
!261 = !DILocation(line: 54, column: 58, scope: !161)
!262 = !DILocation(line: 54, column: 34, scope: !161)
!263 = !DILocation(line: 56, column: 14, scope: !264)
!264 = distinct !DILexicalBlock(scope: !161, file: !2, line: 55, column: 11)
!265 = !DILocation(line: 55, column: 11, scope: !264)
!266 = !DILocation(line: 55, column: 11, scope: !161)
!267 = !DILocation(line: 57, column: 10, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !2, line: 56, column: 72)
!269 = !DILocation(line: 58, column: 7, scope: !268)
!270 = !DILocation(line: 59, column: 24, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !2, line: 58, column: 14)
!272 = !DILocation(line: 59, column: 10, scope: !271)
!273 = !DILocation(line: 60, column: 10, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !2, line: 60, column: 10)
!275 = distinct !DILexicalBlock(scope: !271, file: !2, line: 60, column: 10)
!276 = !DILocation(line: 62, column: 21, scope: !161)
!277 = !DILocation(line: 62, column: 7, scope: !161)
!278 = !DILocation(line: 64, column: 4, scope: !115)
!279 = !DILocation(line: 68, column: 7, scope: !180)
!280 = !DILocation(line: 68, column: 24, scope: !180)
!281 = !DILocation(line: 69, column: 52, scope: !180)
!282 = !DILocation(line: 69, column: 10, scope: !180)
!283 = !DILocation(line: 70, column: 7, scope: !180)
!284 = !DILocation(line: 71, column: 7, scope: !180)
!285 = !DILocation(line: 71, column: 21, scope: !180)
!286 = !DILocation(line: 72, column: 7, scope: !180)
!287 = !DILocation(line: 72, column: 34, scope: !180)
!288 = !DILocation(line: 72, column: 14, scope: !180)
!289 = !DILocation(line: 73, column: 10, scope: !189)
!290 = !DILocation(line: 73, column: 16, scope: !189)
!291 = !DILocation(line: 73, column: 59, scope: !189)
!292 = !DILocation(line: 73, column: 26, scope: !189)
!293 = !DILocation(line: 74, column: 28, scope: !189)
!294 = !DILocation(line: 74, column: 10, scope: !189)
!295 = !DILocation(line: 75, column: 21, scope: !189)
!296 = !DILocation(line: 75, column: 10, scope: !189)
!297 = !DILocation(line: 76, column: 7, scope: !180)
!298 = distinct !{!298, !286, !297}
!299 = !DILocation(line: 77, column: 32, scope: !300)
!300 = distinct !DILexicalBlock(scope: !180, file: !2, line: 77, column: 11)
!301 = !DILocation(line: 77, column: 11, scope: !300)
!302 = !DILocation(line: 77, column: 11, scope: !180)
!303 = !DILocation(line: 78, column: 33, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !2, line: 77, column: 49)
!305 = !DILocation(line: 78, column: 10, scope: !304)
!306 = !DILocation(line: 79, column: 10, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !2, line: 79, column: 10)
!308 = distinct !DILexicalBlock(scope: !304, file: !2, line: 79, column: 10)
!309 = !DILocation(line: 81, column: 30, scope: !180)
!310 = !DILocation(line: 81, column: 7, scope: !180)
!311 = !DILocation(line: 83, column: 4, scope: !115)
!312 = !DILocation(line: 87, column: 7, scope: !191)
!313 = !DILocation(line: 87, column: 15, scope: !191)
!314 = !DILocation(line: 87, column: 22, scope: !191)
!315 = !DILocation(line: 88, column: 7, scope: !191)
!316 = !DILocation(line: 88, column: 13, scope: !191)
!317 = !DILocation(line: 88, column: 66, scope: !191)
!318 = !DILocation(line: 88, column: 26, scope: !191)
!319 = !DILocation(line: 90, column: 14, scope: !320)
!320 = distinct !DILexicalBlock(scope: !191, file: !2, line: 89, column: 11)
!321 = !DILocation(line: 90, column: 20, scope: !320)
!322 = !DILocation(line: 89, column: 11, scope: !320)
!323 = !DILocation(line: 89, column: 11, scope: !191)
!324 = !DILocation(line: 91, column: 10, scope: !325)
!325 = distinct !DILexicalBlock(scope: !320, file: !2, line: 90, column: 58)
!326 = !DILocation(line: 92, column: 7, scope: !325)
!327 = !DILocation(line: 93, column: 21, scope: !328)
!328 = distinct !DILexicalBlock(scope: !320, file: !2, line: 92, column: 14)
!329 = !DILocation(line: 93, column: 10, scope: !328)
!330 = !DILocation(line: 94, column: 24, scope: !328)
!331 = !DILocation(line: 94, column: 10, scope: !328)
!332 = !DILocation(line: 95, column: 10, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !2, line: 95, column: 10)
!334 = distinct !DILexicalBlock(scope: !328, file: !2, line: 95, column: 10)
!335 = !DILocation(line: 97, column: 18, scope: !191)
!336 = !DILocation(line: 97, column: 7, scope: !191)
!337 = !DILocation(line: 98, column: 21, scope: !191)
!338 = !DILocation(line: 98, column: 7, scope: !191)
!339 = !DILocation(line: 100, column: 4, scope: !115)
!340 = !DILocation(line: 102, column: 7, scope: !115)
!341 = !DILocation(line: 102, column: 4, scope: !115)
!342 = !DILocation(line: 103, column: 1, scope: !115)
!343 = !DILocation(line: 104, column: 31, scope: !115)
!344 = !DILocation(line: 104, column: 4, scope: !115)
!345 = !DILocation(line: 105, column: 27, scope: !115)
!346 = !DILocation(line: 105, column: 4, scope: !115)
!347 = !DILocation(line: 106, column: 24, scope: !115)
!348 = !DILocation(line: 106, column: 4, scope: !115)
!349 = !DILocation(line: 107, column: 4, scope: !115)
!350 = !DILocation(line: 108, column: 11, scope: !115)
!351 = !{i8 0, i8 2}
!352 = !{}
!353 = !DILocation(line: 108, column: 4, scope: !115)
!354 = !DILocation(line: 109, column: 1, scope: !115)
!355 = !DISubprogram(name: "mongoc_init", scope: !356, file: !356, line: 30, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DIFile(filename: "src/libmongoc/src/mongoc/mongoc-init.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build/aidengro/spack-stage-mongo-c-driver-1.24.4-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm/spack-src", checksumkind: CSK_MD5, checksum: "747ea7ab1744daf2a7e42508780575b1")
!357 = !DISubroutineType(types: !358)
!358 = !{null}
!359 = !DISubprogram(name: "fprintf", scope: !360, file: !360, line: 350, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!361 = !DISubroutineType(types: !362)
!362 = !{!118, !363, !422, null}
!363 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !366, line: 7, baseType: !367)
!366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !368, line: 49, size: 1728, elements: !369)
!368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !385, !387, !388, !389, !392, !394, !396, !400, !403, !405, !408, !411, !412, !413, !417, !418}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !367, file: !368, line: 51, baseType: !118, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !367, file: !368, line: 54, baseType: !120, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !367, file: !368, line: 55, baseType: !120, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !367, file: !368, line: 56, baseType: !120, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !367, file: !368, line: 57, baseType: !120, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !367, file: !368, line: 58, baseType: !120, size: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !367, file: !368, line: 59, baseType: !120, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !367, file: !368, line: 60, baseType: !120, size: 64, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !367, file: !368, line: 61, baseType: !120, size: 64, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !367, file: !368, line: 64, baseType: !120, size: 64, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !367, file: !368, line: 65, baseType: !120, size: 64, offset: 640)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !367, file: !368, line: 66, baseType: !120, size: 64, offset: 704)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !367, file: !368, line: 68, baseType: !383, size: 64, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !368, line: 36, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !367, file: !368, line: 70, baseType: !386, size: 64, offset: 832)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !367, file: !368, line: 72, baseType: !118, size: 32, offset: 896)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !367, file: !368, line: 73, baseType: !118, size: 32, offset: 928)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !367, file: !368, line: 74, baseType: !390, size: 64, offset: 960)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !152, line: 152, baseType: !391)
!391 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !367, file: !368, line: 77, baseType: !393, size: 16, offset: 1024)
!393 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !367, file: !368, line: 78, baseType: !395, size: 8, offset: 1040)
!395 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !367, file: !368, line: 79, baseType: !397, size: 8, offset: 1048)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 1)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !367, file: !368, line: 81, baseType: !401, size: 64, offset: 1088)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !368, line: 43, baseType: null)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !367, file: !368, line: 89, baseType: !404, size: 64, offset: 1152)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !152, line: 153, baseType: !391)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !367, file: !368, line: 91, baseType: !406, size: 64, offset: 1216)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !368, line: 37, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !367, file: !368, line: 92, baseType: !409, size: 64, offset: 1280)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !368, line: 38, flags: DIFlagFwdDecl)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !367, file: !368, line: 93, baseType: !386, size: 64, offset: 1344)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !367, file: !368, line: 94, baseType: !106, size: 64, offset: 1408)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !367, file: !368, line: 95, baseType: !414, size: 64, offset: 1472)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !415, line: 70, baseType: !416)
!415 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!416 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !367, file: !368, line: 96, baseType: !118, size: 32, offset: 1536)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !367, file: !368, line: 98, baseType: !419, size: 160, offset: 1568)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 20)
!422 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !131)
!423 = !DISubprogram(name: "mongoc_uri_new_with_error", scope: !136, file: !136, line: 105, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DISubroutineType(types: !425)
!425 = !{!134, !131, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!427 = !DISubprogram(name: "mongoc_client_new_from_uri_with_error", scope: !127, file: !127, line: 111, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!428 = !DISubroutineType(types: !429)
!429 = !{!125, !430, !426}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!432 = !DISubprogram(name: "mongoc_client_get_collection", scope: !127, file: !127, line: 199, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!433 = !DISubroutineType(types: !434)
!434 = !{!139, !125, !131, !131}
!435 = !DISubprogram(name: "bcon_new", scope: !71, file: !71, line: 263, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DISubroutineType(types: !437)
!437 = !{!162, !106, null}
!438 = !DISubprogram(name: "bson_bcon_magic", scope: !71, file: !71, line: 287, type: !439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!439 = !DISubroutineType(types: !440)
!440 = !{!131}
!441 = distinct !DISubprogram(name: "bcon_ensure_int32", scope: !71, file: !71, line: 58, type: !442, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !447)
!442 = !DISubroutineType(types: !443)
!443 = !{!444, !444}
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !445, line: 26, baseType: !446)
!445 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !152, line: 41, baseType: !118)
!447 = !{!448}
!448 = !DILocalVariable(name: "_t", arg: 1, scope: !441, file: !71, line: 58, type: !444)
!449 = !DILocation(line: 58, column: 1, scope: !441)
!450 = !DISubprogram(name: "mongoc_index_model_new", scope: !141, file: !141, line: 163, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubroutineType(types: !452)
!452 = !{!176, !186, !186}
!453 = !DISubprogram(name: "mongoc_collection_create_indexes_with_opts", scope: !141, file: !141, line: 168, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(types: !455)
!455 = !{!159, !139, !456, !414, !186, !162, !426}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!458 = !DISubprogram(name: "printf", scope: !360, file: !360, line: 356, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!459 = !DISubroutineType(types: !460)
!460 = !{!118, !422, null}
!461 = !DISubprogram(name: "bson_destroy", scope: !462, file: !462, line: 371, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!462 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/linux-ubuntu22.04-zen2/clang-18.0.0/libbson-1.24.4-3emagvezomjldhykavhwzeddzez6p3tl/include/libbson-1.0/bson/bson.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build", checksumkind: CSK_MD5, checksum: "42c50b520076412f2233ea573fe55042")
!463 = !DISubroutineType(types: !464)
!464 = !{null, !162}
!465 = !DISubprogram(name: "mongoc_collection_find_indexes_with_opts", scope: !141, file: !141, line: 156, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = !DISubroutineType(types: !467)
!467 = !{!181, !139, !186}
!468 = !DISubprogram(name: "mongoc_cursor_next", scope: !183, file: !183, line: 44, type: !469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!469 = !DISubroutineType(types: !470)
!470 = !{!159, !181, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!472 = !DISubprogram(name: "bson_as_canonical_extended_json", scope: !462, file: !462, line: 540, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!473 = !DISubroutineType(types: !474)
!474 = !{!120, !186, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!476 = !DISubprogram(name: "bson_free", scope: !477, file: !477, line: 61, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!477 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/linux-ubuntu22.04-zen2/clang-18.0.0/libbson-1.24.4-3emagvezomjldhykavhwzeddzez6p3tl/include/libbson-1.0/bson/bson-memory.h", directory: "/local-ssd/mongo-c-driver-tfdtld7x3mjiju5wjzhoudyw5ewfb7hm-build", checksumkind: CSK_MD5, checksum: "bd1060bd64476ebf607005ba6da351c4")
!478 = !DISubroutineType(types: !479)
!479 = !{null, !106}
!480 = !DISubprogram(name: "mongoc_cursor_error", scope: !183, file: !183, line: 46, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!481 = !DISubroutineType(types: !482)
!482 = !{!159, !181, !426}
!483 = !DISubprogram(name: "mongoc_cursor_destroy", scope: !183, file: !183, line: 40, type: !484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !181}
!486 = !DISubprogram(name: "mongoc_collection_keys_to_index_string", scope: !141, file: !141, line: 349, type: !487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!487 = !DISubroutineType(types: !488)
!488 = !{!120, !186}
!489 = !DISubprogram(name: "mongoc_collection_drop_index_with_opts", scope: !141, file: !141, line: 128, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!490 = !DISubroutineType(types: !491)
!491 = !{!159, !139, !131, !186, !426}
!492 = !DISubprogram(name: "mongoc_collection_destroy", scope: !141, file: !141, line: 48, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !139}
!495 = !DISubprogram(name: "mongoc_client_destroy", scope: !127, file: !127, line: 182, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !125}
!498 = !DISubprogram(name: "mongoc_uri_destroy", scope: !136, file: !136, line: 101, type: !499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !134}
!501 = !DISubprogram(name: "mongoc_cleanup", scope: !356, file: !356, line: 32, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

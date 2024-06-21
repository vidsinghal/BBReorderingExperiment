; ModuleID = 'samples/577.bc'
source_filename = "bdev_aio_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spdk_json_object_decoder = type { ptr, i64, ptr, i8 }
%struct.rpc_construct_aio_ctx = type { %struct.rpc_construct_aio, ptr }
%struct.rpc_construct_aio = type { ptr, ptr, i32, i8 }
%struct.rpc_rescan_aio = type { ptr }
%struct.rpc_delete_aio = type { ptr }

@.str = private unnamed_addr constant [16 x i8] c"bdev_aio_create\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"bdev_aio_rescan\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [16 x i8] c"bdev_aio_delete\00", align 1, !dbg !9
@rpc_construct_aio_decoders = internal constant [4 x %struct.spdk_json_object_decoder] [%struct.spdk_json_object_decoder { ptr @.str.6, i64 0, ptr @spdk_json_decode_string, i8 0 }, %struct.spdk_json_object_decoder { ptr @.str.7, i64 8, ptr @spdk_json_decode_string, i8 0 }, %struct.spdk_json_object_decoder { ptr @.str.8, i64 16, ptr @spdk_json_decode_uint32, i8 1 }, %struct.spdk_json_object_decoder { ptr @.str.9, i64 20, ptr @spdk_json_decode_bool, i8 1 }], align 16, !dbg !11
@.str.3 = private unnamed_addr constant [15 x i8] c"bdev_aio_rpc.c\00", align 1, !dbg !43
@__func__.rpc_bdev_aio_create = private unnamed_addr constant [20 x i8] c"rpc_bdev_aio_create\00", align 1, !dbg !48
@.str.4 = private unnamed_addr constant [32 x i8] c"spdk_json_decode_object failed\0A\00", align 1, !dbg !54
@.str.5 = private unnamed_addr constant [31 x i8] c"spdk_json_decode_object failed\00", align 1, !dbg !59
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !64
@.str.7 = private unnamed_addr constant [9 x i8] c"filename\00", align 1, !dbg !69
@.str.8 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1, !dbg !74
@.str.9 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1, !dbg !79
@rpc_rescan_aio_decoders = internal constant [1 x %struct.spdk_json_object_decoder] [%struct.spdk_json_object_decoder { ptr @.str.6, i64 0, ptr @spdk_json_decode_string, i8 0 }], align 16, !dbg !81
@rpc_delete_aio_decoders = internal constant [1 x %struct.spdk_json_object_decoder] [%struct.spdk_json_object_decoder { ptr @.str.6, i64 0, ptr @spdk_json_decode_string, i8 0 }], align 16, !dbg !113
@llvm.global_ctors = appending global [3 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1000, ptr @rpc_register_rpc_bdev_aio_create, ptr null }, { i32, ptr, ptr } { i32 1000, ptr @rpc_register_rpc_bdev_aio_rescan, ptr null }, { i32, ptr, ptr } { i32 1000, ptr @rpc_register_rpc_bdev_aio_delete, ptr null }]

; Function Attrs: nounwind ssp uwtable
define internal void @rpc_register_rpc_bdev_aio_create() #0 !dbg !124 {
entry:
  call void @spdk_rpc_register_method(ptr noundef @.str, ptr noundef @rpc_bdev_aio_create, i32 noundef 2), !dbg !127
  ret void, !dbg !127
}

declare !dbg !128 void @spdk_rpc_register_method(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @rpc_bdev_aio_create(ptr noundef %request, ptr noundef %params) #0 !dbg !139 {
entry:
  %request.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %request, ptr %request.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %request.addr, metadata !141, metadata !DIExpression()), !dbg !157
  store ptr %params, ptr %params.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !142, metadata !DIExpression()), !dbg !158
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !159
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !143, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #7, !dbg !161
  tail call void @llvm.dbg.declare(metadata ptr %rc, metadata !156, metadata !DIExpression()), !dbg !162
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #8, !dbg !163
  store ptr %call, ptr %ctx, align 8, !dbg !164
  %0 = load ptr, ptr %ctx, align 8, !dbg !165
  %tobool = icmp ne ptr %0, null, !dbg !165
  br i1 %tobool, label %if.end, label %if.then, !dbg !167

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %request.addr, align 8, !dbg !168
  %call1 = call ptr @spdk_strerror(i32 noundef 12), !dbg !170
  call void @spdk_jsonrpc_send_error_response(ptr noundef %1, i32 noundef -12, ptr noundef %call1), !dbg !171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !172

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %params.addr, align 8, !dbg !173
  %3 = load ptr, ptr %ctx, align 8, !dbg !175
  %req = getelementptr inbounds %struct.rpc_construct_aio_ctx, ptr %3, i32 0, i32 0, !dbg !176
  %call2 = call i32 @spdk_json_decode_object(ptr noundef %2, ptr noundef @rpc_construct_aio_decoders, i64 noundef 4, ptr noundef %req), !dbg !177
  %tobool3 = icmp ne i32 %call2, 0, !dbg !177
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !178

if.then4:                                         ; preds = %if.end
  call void (i32, ptr, i32, ptr, ptr, ...) @spdk_log(i32 noundef 0, ptr noundef @.str.3, i32 noundef 68, ptr noundef @__func__.rpc_bdev_aio_create, ptr noundef @.str.4), !dbg !179
  %4 = load ptr, ptr %request.addr, align 8, !dbg !181
  call void @spdk_jsonrpc_send_error_response(ptr noundef %4, i32 noundef -32603, ptr noundef @.str.5), !dbg !182
  %5 = load ptr, ptr %ctx, align 8, !dbg !183
  call void @free_rpc_construct_aio(ptr noundef %5), !dbg !184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !185

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %request.addr, align 8, !dbg !186
  %7 = load ptr, ptr %ctx, align 8, !dbg !187
  %request6 = getelementptr inbounds %struct.rpc_construct_aio_ctx, ptr %7, i32 0, i32 1, !dbg !188
  store ptr %6, ptr %request6, align 8, !dbg !189
  %8 = load ptr, ptr %ctx, align 8, !dbg !190
  %req7 = getelementptr inbounds %struct.rpc_construct_aio_ctx, ptr %8, i32 0, i32 0, !dbg !191
  %name = getelementptr inbounds %struct.rpc_construct_aio, ptr %req7, i32 0, i32 0, !dbg !192
  %9 = load ptr, ptr %name, align 8, !dbg !192
  %10 = load ptr, ptr %ctx, align 8, !dbg !193
  %req8 = getelementptr inbounds %struct.rpc_construct_aio_ctx, ptr %10, i32 0, i32 0, !dbg !194
  %filename = getelementptr inbounds %struct.rpc_construct_aio, ptr %req8, i32 0, i32 1, !dbg !195
  %11 = load ptr, ptr %filename, align 8, !dbg !195
  %12 = load ptr, ptr %ctx, align 8, !dbg !196
  %req9 = getelementptr inbounds %struct.rpc_construct_aio_ctx, ptr %12, i32 0, i32 0, !dbg !197
  %block_size = getelementptr inbounds %struct.rpc_construct_aio, ptr %req9, i32 0, i32 2, !dbg !198
  %13 = load i32, ptr %block_size, align 8, !dbg !198
  %14 = load ptr, ptr %ctx, align 8, !dbg !199
  %req10 = getelementptr inbounds %struct.rpc_construct_aio_ctx, ptr %14, i32 0, i32 0, !dbg !200
  %readonly = getelementptr inbounds %struct.rpc_construct_aio, ptr %req10, i32 0, i32 3, !dbg !201
  %15 = load i8, ptr %readonly, align 4, !dbg !201, !range !202, !noundef !203
  %tobool11 = trunc i8 %15 to i1, !dbg !201
  %call12 = call i32 @create_aio_bdev(ptr noundef %9, ptr noundef %11, i32 noundef %13, i1 noundef zeroext %tobool11), !dbg !204
  store i32 %call12, ptr %rc, align 4, !dbg !205
  %16 = load i32, ptr %rc, align 4, !dbg !206
  %tobool13 = icmp ne i32 %16, 0, !dbg !206
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !208

if.then14:                                        ; preds = %if.end5
  %17 = load ptr, ptr %request.addr, align 8, !dbg !209
  %18 = load i32, ptr %rc, align 4, !dbg !211
  %19 = load i32, ptr %rc, align 4, !dbg !212
  %sub = sub nsw i32 0, %19, !dbg !213
  %call15 = call ptr @spdk_strerror(i32 noundef %sub), !dbg !214
  call void @spdk_jsonrpc_send_error_response(ptr noundef %17, i32 noundef %18, ptr noundef %call15), !dbg !215
  %20 = load ptr, ptr %ctx, align 8, !dbg !216
  call void @free_rpc_construct_aio(ptr noundef %20), !dbg !217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !218

if.end16:                                         ; preds = %if.end5
  %21 = load ptr, ptr %ctx, align 8, !dbg !219
  %call17 = call i32 @spdk_bdev_wait_for_examine(ptr noundef @rpc_bdev_aio_create_cb, ptr noundef %21), !dbg !220
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !221
  br label %cleanup, !dbg !221

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #7, !dbg !221
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !221
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !221

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind ssp uwtable
define internal void @rpc_register_rpc_bdev_aio_rescan() #0 !dbg !222 {
entry:
  call void @spdk_rpc_register_method(ptr noundef @.str.1, ptr noundef @rpc_bdev_aio_rescan, i32 noundef 2), !dbg !223
  ret void, !dbg !223
}

; Function Attrs: nounwind ssp uwtable
define internal void @rpc_bdev_aio_rescan(ptr noundef %request, ptr noundef %params) #0 !dbg !224 {
entry:
  %request.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %req = alloca %struct.rpc_rescan_aio, align 8
  %bdeverrno = alloca i32, align 4
  store ptr %request, ptr %request.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %request.addr, metadata !226, metadata !DIExpression()), !dbg !234
  store ptr %params, ptr %params.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !227, metadata !DIExpression()), !dbg !235
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #7, !dbg !236
  tail call void @llvm.dbg.declare(metadata ptr %req, metadata !228, metadata !DIExpression()), !dbg !237
  call void @llvm.memset.p0.i64(ptr align 8 %req, i8 0, i64 8, i1 false), !dbg !237
  call void @llvm.lifetime.start.p0(i64 4, ptr %bdeverrno) #7, !dbg !238
  tail call void @llvm.dbg.declare(metadata ptr %bdeverrno, metadata !232, metadata !DIExpression()), !dbg !239
  %0 = load ptr, ptr %params.addr, align 8, !dbg !240
  %call = call i32 @spdk_json_decode_object(ptr noundef %0, ptr noundef @rpc_rescan_aio_decoders, i64 noundef 1, ptr noundef %req), !dbg !242
  %tobool = icmp ne i32 %call, 0, !dbg !242
  br i1 %tobool, label %if.then, label %if.end, !dbg !243

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %request.addr, align 8, !dbg !244
  call void @spdk_jsonrpc_send_error_response(ptr noundef %1, i32 noundef -32603, ptr noundef @.str.5), !dbg !246
  br label %cleanup, !dbg !247

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.rpc_rescan_aio, ptr %req, i32 0, i32 0, !dbg !248
  %2 = load ptr, ptr %name, align 8, !dbg !248
  %call1 = call i32 @bdev_aio_rescan(ptr noundef %2), !dbg !249
  store i32 %call1, ptr %bdeverrno, align 4, !dbg !250
  %3 = load i32, ptr %bdeverrno, align 4, !dbg !251
  %tobool2 = icmp ne i32 %3, 0, !dbg !251
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !253

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %request.addr, align 8, !dbg !254
  %5 = load i32, ptr %bdeverrno, align 4, !dbg !256
  %6 = load i32, ptr %bdeverrno, align 4, !dbg !257
  %sub = sub nsw i32 0, %6, !dbg !258
  %call4 = call ptr @spdk_strerror(i32 noundef %sub), !dbg !259
  call void @spdk_jsonrpc_send_error_response(ptr noundef %4, i32 noundef %5, ptr noundef %call4), !dbg !260
  br label %cleanup, !dbg !261

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %request.addr, align 8, !dbg !262
  call void @spdk_jsonrpc_send_bool_response(ptr noundef %7, i1 noundef zeroext true), !dbg !263
  br label %cleanup, !dbg !263

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  tail call void @llvm.dbg.label(metadata !233), !dbg !264
  %name6 = getelementptr inbounds %struct.rpc_rescan_aio, ptr %req, i32 0, i32 0, !dbg !265
  %8 = load ptr, ptr %name6, align 8, !dbg !265
  call void @free(ptr noundef %8) #7, !dbg !266
  call void @llvm.lifetime.end.p0(i64 4, ptr %bdeverrno) #7, !dbg !267
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #7, !dbg !267
  ret void, !dbg !267
}

; Function Attrs: nounwind ssp uwtable
define internal void @rpc_register_rpc_bdev_aio_delete() #0 !dbg !268 {
entry:
  call void @spdk_rpc_register_method(ptr noundef @.str.2, ptr noundef @rpc_bdev_aio_delete, i32 noundef 2), !dbg !269
  ret void, !dbg !269
}

; Function Attrs: nounwind ssp uwtable
define internal void @rpc_bdev_aio_delete(ptr noundef %request, ptr noundef %params) #0 !dbg !270 {
entry:
  %request.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %req = alloca %struct.rpc_delete_aio, align 8
  store ptr %request, ptr %request.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %request.addr, metadata !272, metadata !DIExpression()), !dbg !279
  store ptr %params, ptr %params.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !273, metadata !DIExpression()), !dbg !280
  call void @llvm.lifetime.start.p0(i64 8, ptr %req) #7, !dbg !281
  tail call void @llvm.dbg.declare(metadata ptr %req, metadata !274, metadata !DIExpression()), !dbg !282
  call void @llvm.memset.p0.i64(ptr align 8 %req, i8 0, i64 8, i1 false), !dbg !282
  %0 = load ptr, ptr %params.addr, align 8, !dbg !283
  %call = call i32 @spdk_json_decode_object(ptr noundef %0, ptr noundef @rpc_delete_aio_decoders, i64 noundef 1, ptr noundef %req), !dbg !285
  %tobool = icmp ne i32 %call, 0, !dbg !285
  br i1 %tobool, label %if.then, label %if.end, !dbg !286

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %request.addr, align 8, !dbg !287
  call void @spdk_jsonrpc_send_error_response(ptr noundef %1, i32 noundef -32603, ptr noundef @.str.5), !dbg !289
  br label %cleanup, !dbg !290

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.rpc_delete_aio, ptr %req, i32 0, i32 0, !dbg !291
  %2 = load ptr, ptr %name, align 8, !dbg !291
  %3 = load ptr, ptr %request.addr, align 8, !dbg !292
  call void @bdev_aio_delete(ptr noundef %2, ptr noundef @_rpc_bdev_aio_delete_cb, ptr noundef %3), !dbg !293
  br label %cleanup, !dbg !293

cleanup:                                          ; preds = %if.end, %if.then
  tail call void @llvm.dbg.label(metadata !278), !dbg !294
  call void @free_rpc_delete_aio(ptr noundef %req), !dbg !295
  call void @llvm.lifetime.end.p0(i64 8, ptr %req) #7, !dbg !296
  ret void, !dbg !296
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !297 noalias ptr @calloc(i64 noundef, i64 noundef) #3

declare !dbg !303 void @spdk_jsonrpc_send_error_response(ptr noundef, i32 noundef, ptr noundef) #1

declare !dbg !306 ptr @spdk_strerror(i32 noundef) #1

declare !dbg !310 i32 @spdk_json_decode_object(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

declare !dbg !314 void @spdk_log(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind ssp uwtable
define internal void @free_rpc_construct_aio(ptr noundef %ctx) #0 !dbg !318 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !324
  %req = getelementptr inbounds %struct.rpc_construct_aio_ctx, ptr %0, i32 0, i32 0, !dbg !325
  %name = getelementptr inbounds %struct.rpc_construct_aio, ptr %req, i32 0, i32 0, !dbg !326
  %1 = load ptr, ptr %name, align 8, !dbg !326
  call void @free(ptr noundef %1) #7, !dbg !327
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !328
  %req1 = getelementptr inbounds %struct.rpc_construct_aio_ctx, ptr %2, i32 0, i32 0, !dbg !329
  %filename = getelementptr inbounds %struct.rpc_construct_aio, ptr %req1, i32 0, i32 1, !dbg !330
  %3 = load ptr, ptr %filename, align 8, !dbg !330
  call void @free(ptr noundef %3) #7, !dbg !331
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !332
  call void @free(ptr noundef %4) #7, !dbg !333
  ret void, !dbg !334
}

declare !dbg !335 i32 @create_aio_bdev(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

declare !dbg !339 i32 @spdk_bdev_wait_for_examine(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @rpc_bdev_aio_create_cb(ptr noundef %cb_arg) #0 !dbg !347 {
entry:
  %cb_arg.addr = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %request = alloca ptr, align 8
  %w = alloca ptr, align 8
  store ptr %cb_arg, ptr %cb_arg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_arg.addr, metadata !349, metadata !DIExpression()), !dbg !355
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #7, !dbg !356
  tail call void @llvm.dbg.declare(metadata ptr %ctx, metadata !350, metadata !DIExpression()), !dbg !357
  %0 = load ptr, ptr %cb_arg.addr, align 8, !dbg !358
  store ptr %0, ptr %ctx, align 8, !dbg !357
  call void @llvm.lifetime.start.p0(i64 8, ptr %request) #7, !dbg !359
  tail call void @llvm.dbg.declare(metadata ptr %request, metadata !351, metadata !DIExpression()), !dbg !360
  %1 = load ptr, ptr %ctx, align 8, !dbg !361
  %request1 = getelementptr inbounds %struct.rpc_construct_aio_ctx, ptr %1, i32 0, i32 1, !dbg !362
  %2 = load ptr, ptr %request1, align 8, !dbg !362
  store ptr %2, ptr %request, align 8, !dbg !360
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #7, !dbg !363
  tail call void @llvm.dbg.declare(metadata ptr %w, metadata !352, metadata !DIExpression()), !dbg !364
  %3 = load ptr, ptr %request, align 8, !dbg !365
  %call = call ptr @spdk_jsonrpc_begin_result(ptr noundef %3), !dbg !366
  store ptr %call, ptr %w, align 8, !dbg !367
  %4 = load ptr, ptr %w, align 8, !dbg !368
  %5 = load ptr, ptr %ctx, align 8, !dbg !369
  %req = getelementptr inbounds %struct.rpc_construct_aio_ctx, ptr %5, i32 0, i32 0, !dbg !370
  %name = getelementptr inbounds %struct.rpc_construct_aio, ptr %req, i32 0, i32 0, !dbg !371
  %6 = load ptr, ptr %name, align 8, !dbg !371
  %call2 = call i32 @spdk_json_write_string(ptr noundef %4, ptr noundef %6), !dbg !372
  %7 = load ptr, ptr %request, align 8, !dbg !373
  %8 = load ptr, ptr %w, align 8, !dbg !374
  call void @spdk_jsonrpc_end_result(ptr noundef %7, ptr noundef %8), !dbg !375
  %9 = load ptr, ptr %ctx, align 8, !dbg !376
  call void @free_rpc_construct_aio(ptr noundef %9), !dbg !377
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #7, !dbg !378
  call void @llvm.lifetime.end.p0(i64 8, ptr %request) #7, !dbg !378
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #7, !dbg !378
  ret void, !dbg !378
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @spdk_json_decode_string(ptr noundef, ptr noundef) #1

declare i32 @spdk_json_decode_uint32(ptr noundef, ptr noundef) #1

declare i32 @spdk_json_decode_bool(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare !dbg !379 void @free(ptr noundef) #4

declare !dbg !380 ptr @spdk_jsonrpc_begin_result(ptr noundef) #1

declare !dbg !383 i32 @spdk_json_write_string(ptr noundef, ptr noundef) #1

declare !dbg !386 void @spdk_jsonrpc_end_result(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare !dbg !389 i32 @bdev_aio_rescan(ptr noundef) #1

declare !dbg !392 void @spdk_jsonrpc_send_bool_response(ptr noundef, i1 noundef zeroext) #1

declare !dbg !395 void @bdev_aio_delete(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind ssp uwtable
define internal void @_rpc_bdev_aio_delete_cb(ptr noundef %cb_arg, i32 noundef %bdeverrno) #0 !dbg !402 {
entry:
  %cb_arg.addr = alloca ptr, align 8
  %bdeverrno.addr = alloca i32, align 4
  %request = alloca ptr, align 8
  store ptr %cb_arg, ptr %cb_arg.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %cb_arg.addr, metadata !404, metadata !DIExpression()), !dbg !407
  store i32 %bdeverrno, ptr %bdeverrno.addr, align 4
  tail call void @llvm.dbg.declare(metadata ptr %bdeverrno.addr, metadata !405, metadata !DIExpression()), !dbg !408
  call void @llvm.lifetime.start.p0(i64 8, ptr %request) #7, !dbg !409
  tail call void @llvm.dbg.declare(metadata ptr %request, metadata !406, metadata !DIExpression()), !dbg !410
  %0 = load ptr, ptr %cb_arg.addr, align 8, !dbg !411
  store ptr %0, ptr %request, align 8, !dbg !410
  %1 = load i32, ptr %bdeverrno.addr, align 4, !dbg !412
  %cmp = icmp eq i32 %1, 0, !dbg !414
  br i1 %cmp, label %if.then, label %if.else, !dbg !415

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %request, align 8, !dbg !416
  call void @spdk_jsonrpc_send_bool_response(ptr noundef %2, i1 noundef zeroext true), !dbg !418
  br label %if.end, !dbg !419

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %request, align 8, !dbg !420
  %4 = load i32, ptr %bdeverrno.addr, align 4, !dbg !422
  %5 = load i32, ptr %bdeverrno.addr, align 4, !dbg !423
  %sub = sub nsw i32 0, %5, !dbg !424
  %call = call ptr @spdk_strerror(i32 noundef %sub), !dbg !425
  call void @spdk_jsonrpc_send_error_response(ptr noundef %3, i32 noundef %4, ptr noundef %call), !dbg !426
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %request) #7, !dbg !427
  ret void, !dbg !427
}

; Function Attrs: nounwind ssp uwtable
define internal void @free_rpc_delete_aio(ptr noundef %r) #0 !dbg !428 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  tail call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load ptr, ptr %r.addr, align 8, !dbg !435
  %name = getelementptr inbounds %struct.rpc_delete_aio, ptr %0, i32 0, i32 0, !dbg !436
  %1 = load ptr, ptr %name, align 8, !dbg !436
  call void @free(ptr noundef %1) #7, !dbg !437
  ret void, !dbg !438
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #6

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bdev_aio_rpc.c", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/module/bdev/aio", checksumkind: CSK_MD5, checksum: "361011bc3d51c5dda7edd9d774770d4b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !3, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "rpc_construct_aio_decoders", scope: !13, file: !2, line: 32, type: !115, isLocal: true, isDefinition: true)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !40, globals: !42, splitDebugInlining: false, nameTableKind: None)
!14 = !{!15, !30}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_json_val_type", file: !16, line: 20, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "include/spdk/json.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "2503f979e3d49afab298cb349bb94ec6")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!19 = !DIEnumerator(name: "SPDK_JSON_VAL_INVALID", value: 0)
!20 = !DIEnumerator(name: "SPDK_JSON_VAL_NULL", value: 2)
!21 = !DIEnumerator(name: "SPDK_JSON_VAL_TRUE", value: 4)
!22 = !DIEnumerator(name: "SPDK_JSON_VAL_FALSE", value: 8)
!23 = !DIEnumerator(name: "SPDK_JSON_VAL_NUMBER", value: 16)
!24 = !DIEnumerator(name: "SPDK_JSON_VAL_STRING", value: 32)
!25 = !DIEnumerator(name: "SPDK_JSON_VAL_ARRAY_BEGIN", value: 64)
!26 = !DIEnumerator(name: "SPDK_JSON_VAL_ARRAY_END", value: 128)
!27 = !DIEnumerator(name: "SPDK_JSON_VAL_OBJECT_BEGIN", value: 256)
!28 = !DIEnumerator(name: "SPDK_JSON_VAL_OBJECT_END", value: 512)
!29 = !DIEnumerator(name: "SPDK_JSON_VAL_NAME", value: 1024)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "spdk_log_level", file: !31, line: 52, baseType: !32, size: 32, elements: !33)
!31 = !DIFile(filename: "include/spdk/log.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "dc79cb206a5da324f77777fd137cb5d7")
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = !DIEnumerator(name: "SPDK_LOG_DISABLED", value: -1)
!35 = !DIEnumerator(name: "SPDK_LOG_ERROR", value: 0)
!36 = !DIEnumerator(name: "SPDK_LOG_WARN", value: 1)
!37 = !DIEnumerator(name: "SPDK_LOG_NOTICE", value: 2)
!38 = !DIEnumerator(name: "SPDK_LOG_INFO", value: 3)
!39 = !DIEnumerator(name: "SPDK_LOG_DEBUG", value: 4)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !{!0, !7, !9, !43, !48, !54, !59, !64, !69, !74, !79, !11, !81, !113}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 15)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 160, elements: !52)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!52 = !{!53}
!53 = !DISubrange(count: 20)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 32)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 31)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 5)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 9)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 11)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !71, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "rpc_rescan_aio_decoders", scope: !13, file: !2, line: 91, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !111)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_json_object_decoder", file: !16, line: 113, size: 256, elements: !86)
!86 = !{!87, !89, !93, !109}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !16, line: 114, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !85, file: !16, line: 115, baseType: !90, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !91, line: 29, baseType: !92)
!91 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "fe493b50b1dc220fe9bcfb4d648abdef")
!92 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "decode_func", scope: !85, file: !16, line: 116, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_json_decode_fn", file: !16, line: 111, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!32, !98, !41}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_json_val", file: !16, line: 35, size: 128, elements: !101)
!101 = !{!102, !103, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !100, file: !16, line: 48, baseType: !41, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !100, file: !16, line: 61, baseType: !104, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !105, line: 26, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !107, line: 42, baseType: !17)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !16, line: 66, baseType: !15, size: 32, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "optional", scope: !85, file: !16, line: 117, baseType: !110, size: 8, offset: 192)
!110 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!111 = !{!112}
!112 = !DISubrange(count: 1)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "rpc_delete_aio_decoders", scope: !13, file: !2, line: 133, type: !83, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 1024, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 4)
!118 = !{i32 7, !"Dwarf Version", i32 5}
!119 = !{i32 2, !"Debug Info Version", i32 3}
!120 = !{i32 1, !"wchar_size", i32 4}
!121 = !{i32 8, !"PIC Level", i32 2}
!122 = !{i32 7, !"uwtable", i32 2}
!123 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!124 = distinct !DISubprogram(name: "rpc_register_rpc_bdev_aio_create", scope: !2, file: !2, line: 85, type: !125, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!125 = !DISubroutineType(types: !126)
!126 = !{null}
!127 = !DILocation(line: 85, column: 1, scope: !124)
!128 = !DISubprogram(name: "spdk_rpc_register_method", scope: !129, file: !129, line: 66, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DIFile(filename: "include/spdk/rpc.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "996ad9f563b11a2de47affd15df9627e")
!130 = !DISubroutineType(types: !131)
!131 = !{null, !88, !132, !104}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_rpc_method_handler", file: !129, line: 55, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !136, !98}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_jsonrpc_request", file: !138, line: 37, flags: DIFlagFwdDecl)
!138 = !DIFile(filename: "include/spdk/jsonrpc.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "5a54d4a87114baf9099c14c49e743e36")
!139 = distinct !DISubprogram(name: "rpc_bdev_aio_create", scope: !2, file: !2, line: 53, type: !134, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !140)
!140 = !{!141, !142, !143, !156}
!141 = !DILocalVariable(name: "request", arg: 1, scope: !139, file: !2, line: 53, type: !136)
!142 = !DILocalVariable(name: "params", arg: 2, scope: !139, file: !2, line: 54, type: !98)
!143 = !DILocalVariable(name: "ctx", scope: !139, file: !2, line: 56, type: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpc_construct_aio_ctx", file: !2, line: 19, size: 256, elements: !146)
!146 = !{!147, !155}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !145, file: !2, line: 20, baseType: !148, size: 192)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpc_construct_aio", file: !2, line: 12, size: 192, elements: !149)
!149 = !{!150, !152, !153, !154}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !2, line: 13, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !148, file: !2, line: 14, baseType: !151, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !148, file: !2, line: 15, baseType: !104, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !148, file: !2, line: 16, baseType: !110, size: 8, offset: 160)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !145, file: !2, line: 21, baseType: !136, size: 64, offset: 192)
!156 = !DILocalVariable(name: "rc", scope: !139, file: !2, line: 57, type: !32)
!157 = !DILocation(line: 53, column: 50, scope: !139)
!158 = !DILocation(line: 54, column: 35, scope: !139)
!159 = !DILocation(line: 56, column: 2, scope: !139)
!160 = !DILocation(line: 56, column: 32, scope: !139)
!161 = !DILocation(line: 57, column: 2, scope: !139)
!162 = !DILocation(line: 57, column: 6, scope: !139)
!163 = !DILocation(line: 59, column: 8, scope: !139)
!164 = !DILocation(line: 59, column: 6, scope: !139)
!165 = !DILocation(line: 60, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !139, file: !2, line: 60, column: 6)
!167 = !DILocation(line: 60, column: 6, scope: !139)
!168 = !DILocation(line: 61, column: 36, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !2, line: 60, column: 12)
!170 = !DILocation(line: 61, column: 54, scope: !169)
!171 = !DILocation(line: 61, column: 3, scope: !169)
!172 = !DILocation(line: 62, column: 3, scope: !169)
!173 = !DILocation(line: 65, column: 30, scope: !174)
!174 = distinct !DILexicalBlock(scope: !139, file: !2, line: 65, column: 6)
!175 = !DILocation(line: 67, column: 10, scope: !174)
!176 = !DILocation(line: 67, column: 15, scope: !174)
!177 = !DILocation(line: 65, column: 6, scope: !174)
!178 = !DILocation(line: 65, column: 6, scope: !139)
!179 = !DILocation(line: 68, column: 3, scope: !180)
!180 = distinct !DILexicalBlock(scope: !174, file: !2, line: 67, column: 21)
!181 = !DILocation(line: 69, column: 36, scope: !180)
!182 = !DILocation(line: 69, column: 3, scope: !180)
!183 = !DILocation(line: 71, column: 26, scope: !180)
!184 = !DILocation(line: 71, column: 3, scope: !180)
!185 = !DILocation(line: 72, column: 3, scope: !180)
!186 = !DILocation(line: 75, column: 17, scope: !139)
!187 = !DILocation(line: 75, column: 2, scope: !139)
!188 = !DILocation(line: 75, column: 7, scope: !139)
!189 = !DILocation(line: 75, column: 15, scope: !139)
!190 = !DILocation(line: 76, column: 23, scope: !139)
!191 = !DILocation(line: 76, column: 28, scope: !139)
!192 = !DILocation(line: 76, column: 32, scope: !139)
!193 = !DILocation(line: 76, column: 38, scope: !139)
!194 = !DILocation(line: 76, column: 43, scope: !139)
!195 = !DILocation(line: 76, column: 47, scope: !139)
!196 = !DILocation(line: 76, column: 57, scope: !139)
!197 = !DILocation(line: 76, column: 62, scope: !139)
!198 = !DILocation(line: 76, column: 66, scope: !139)
!199 = !DILocation(line: 76, column: 78, scope: !139)
!200 = !DILocation(line: 76, column: 83, scope: !139)
!201 = !DILocation(line: 76, column: 87, scope: !139)
!202 = !{i8 0, i8 2}
!203 = !{}
!204 = !DILocation(line: 76, column: 7, scope: !139)
!205 = !DILocation(line: 76, column: 5, scope: !139)
!206 = !DILocation(line: 77, column: 6, scope: !207)
!207 = distinct !DILexicalBlock(scope: !139, file: !2, line: 77, column: 6)
!208 = !DILocation(line: 77, column: 6, scope: !139)
!209 = !DILocation(line: 78, column: 36, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !2, line: 77, column: 10)
!211 = !DILocation(line: 78, column: 45, scope: !210)
!212 = !DILocation(line: 78, column: 64, scope: !210)
!213 = !DILocation(line: 78, column: 63, scope: !210)
!214 = !DILocation(line: 78, column: 49, scope: !210)
!215 = !DILocation(line: 78, column: 3, scope: !210)
!216 = !DILocation(line: 79, column: 26, scope: !210)
!217 = !DILocation(line: 79, column: 3, scope: !210)
!218 = !DILocation(line: 80, column: 3, scope: !210)
!219 = !DILocation(line: 83, column: 53, scope: !139)
!220 = !DILocation(line: 83, column: 2, scope: !139)
!221 = !DILocation(line: 84, column: 1, scope: !139)
!222 = distinct !DISubprogram(name: "rpc_register_rpc_bdev_aio_rescan", scope: !2, file: !2, line: 121, type: !125, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!223 = !DILocation(line: 121, column: 1, scope: !222)
!224 = distinct !DISubprogram(name: "rpc_bdev_aio_rescan", scope: !2, file: !2, line: 96, type: !134, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !225)
!225 = !{!226, !227, !228, !232, !233}
!226 = !DILocalVariable(name: "request", arg: 1, scope: !224, file: !2, line: 96, type: !136)
!227 = !DILocalVariable(name: "params", arg: 2, scope: !224, file: !2, line: 97, type: !98)
!228 = !DILocalVariable(name: "req", scope: !224, file: !2, line: 99, type: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpc_rescan_aio", file: !2, line: 87, size: 64, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !229, file: !2, line: 88, baseType: !151, size: 64)
!232 = !DILocalVariable(name: "bdeverrno", scope: !224, file: !2, line: 100, type: !32)
!233 = !DILabel(scope: !224, name: "cleanup", file: !2, line: 118)
!234 = !DILocation(line: 96, column: 50, scope: !224)
!235 = !DILocation(line: 97, column: 35, scope: !224)
!236 = !DILocation(line: 99, column: 2, scope: !224)
!237 = !DILocation(line: 99, column: 24, scope: !224)
!238 = !DILocation(line: 100, column: 2, scope: !224)
!239 = !DILocation(line: 100, column: 6, scope: !224)
!240 = !DILocation(line: 102, column: 30, scope: !241)
!241 = distinct !DILexicalBlock(scope: !224, file: !2, line: 102, column: 6)
!242 = !DILocation(line: 102, column: 6, scope: !241)
!243 = !DILocation(line: 102, column: 6, scope: !224)
!244 = !DILocation(line: 105, column: 36, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !2, line: 104, column: 16)
!246 = !DILocation(line: 105, column: 3, scope: !245)
!247 = !DILocation(line: 107, column: 3, scope: !245)
!248 = !DILocation(line: 110, column: 34, scope: !224)
!249 = !DILocation(line: 110, column: 14, scope: !224)
!250 = !DILocation(line: 110, column: 12, scope: !224)
!251 = !DILocation(line: 111, column: 6, scope: !252)
!252 = distinct !DILexicalBlock(scope: !224, file: !2, line: 111, column: 6)
!253 = !DILocation(line: 111, column: 6, scope: !224)
!254 = !DILocation(line: 112, column: 36, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !2, line: 111, column: 17)
!256 = !DILocation(line: 112, column: 45, scope: !255)
!257 = !DILocation(line: 113, column: 23, scope: !255)
!258 = !DILocation(line: 113, column: 22, scope: !255)
!259 = !DILocation(line: 113, column: 8, scope: !255)
!260 = !DILocation(line: 112, column: 3, scope: !255)
!261 = !DILocation(line: 114, column: 3, scope: !255)
!262 = !DILocation(line: 117, column: 34, scope: !224)
!263 = !DILocation(line: 117, column: 2, scope: !224)
!264 = !DILocation(line: 118, column: 1, scope: !224)
!265 = !DILocation(line: 119, column: 11, scope: !224)
!266 = !DILocation(line: 119, column: 2, scope: !224)
!267 = !DILocation(line: 120, column: 1, scope: !224)
!268 = distinct !DISubprogram(name: "rpc_register_rpc_bdev_aio_delete", scope: !2, file: !2, line: 168, type: !125, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!269 = !DILocation(line: 168, column: 1, scope: !268)
!270 = distinct !DISubprogram(name: "rpc_bdev_aio_delete", scope: !2, file: !2, line: 150, type: !134, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !271)
!271 = !{!272, !273, !274, !278}
!272 = !DILocalVariable(name: "request", arg: 1, scope: !270, file: !2, line: 150, type: !136)
!273 = !DILocalVariable(name: "params", arg: 2, scope: !270, file: !2, line: 151, type: !98)
!274 = !DILocalVariable(name: "req", scope: !270, file: !2, line: 153, type: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpc_delete_aio", file: !2, line: 123, size: 64, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !2, line: 124, baseType: !151, size: 64)
!278 = !DILabel(scope: !270, name: "cleanup", file: !2, line: 165)
!279 = !DILocation(line: 150, column: 50, scope: !270)
!280 = !DILocation(line: 151, column: 35, scope: !270)
!281 = !DILocation(line: 153, column: 2, scope: !270)
!282 = !DILocation(line: 153, column: 24, scope: !270)
!283 = !DILocation(line: 155, column: 30, scope: !284)
!284 = distinct !DILexicalBlock(scope: !270, file: !2, line: 155, column: 6)
!285 = !DILocation(line: 155, column: 6, scope: !284)
!286 = !DILocation(line: 155, column: 6, scope: !270)
!287 = !DILocation(line: 158, column: 36, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !2, line: 157, column: 16)
!289 = !DILocation(line: 158, column: 3, scope: !288)
!290 = !DILocation(line: 160, column: 3, scope: !288)
!291 = !DILocation(line: 163, column: 22, scope: !270)
!292 = !DILocation(line: 163, column: 53, scope: !270)
!293 = !DILocation(line: 163, column: 2, scope: !270)
!294 = !DILocation(line: 165, column: 1, scope: !270)
!295 = !DILocation(line: 166, column: 2, scope: !270)
!296 = !DILocation(line: 167, column: 1, scope: !270)
!297 = !DISubprogram(name: "calloc", scope: !298, file: !298, line: 543, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!298 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!299 = !DISubroutineType(types: !300)
!300 = !{!41, !301, !301}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !302, line: 70, baseType: !92)
!302 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!303 = !DISubprogram(name: "spdk_jsonrpc_send_error_response", scope: !138, file: !138, line: 192, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !136, !32, !88}
!306 = !DISubprogram(name: "spdk_strerror", scope: !307, file: !307, line: 131, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DIFile(filename: "include/spdk/string.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "e1a3492a11ba1b14663c319ffba0eb5d")
!308 = !DISubroutineType(types: !309)
!309 = !{!88, !32}
!310 = !DISubprogram(name: "spdk_json_decode_object", scope: !16, file: !16, line: 120, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubroutineType(types: !312)
!312 = !{!32, !98, !313, !90, !41}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!314 = !DISubprogram(name: "spdk_log", scope: !31, file: !31, line: 156, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !30, !88, !317, !88, !88, null}
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!318 = distinct !DISubprogram(name: "free_rpc_construct_aio", scope: !2, file: !2, line: 25, type: !319, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !144}
!321 = !{!322}
!322 = !DILocalVariable(name: "ctx", arg: 1, scope: !318, file: !2, line: 25, type: !144)
!323 = !DILocation(line: 25, column: 54, scope: !318)
!324 = !DILocation(line: 27, column: 7, scope: !318)
!325 = !DILocation(line: 27, column: 12, scope: !318)
!326 = !DILocation(line: 27, column: 16, scope: !318)
!327 = !DILocation(line: 27, column: 2, scope: !318)
!328 = !DILocation(line: 28, column: 7, scope: !318)
!329 = !DILocation(line: 28, column: 12, scope: !318)
!330 = !DILocation(line: 28, column: 16, scope: !318)
!331 = !DILocation(line: 28, column: 2, scope: !318)
!332 = !DILocation(line: 29, column: 7, scope: !318)
!333 = !DILocation(line: 29, column: 2, scope: !318)
!334 = !DILocation(line: 30, column: 1, scope: !318)
!335 = !DISubprogram(name: "create_aio_bdev", scope: !336, file: !336, line: 14, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!336 = !DIFile(filename: "./bdev_aio.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src/module/bdev/aio", checksumkind: CSK_MD5, checksum: "7e7b141198b061c7d731e13bb39fb3e7")
!337 = !DISubroutineType(types: !338)
!338 = !{!32, !88, !88, !104, !110}
!339 = !DISubprogram(name: "spdk_bdev_wait_for_examine", scope: !340, file: !340, line: 250, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DIFile(filename: "include/spdk/bdev.h", directory: "/local-ssd/spdk-ojxrvkx3artgaydwmt3o4m323fkowu7u-build/aidengro/spack-stage-spdk-23.01-ojxrvkx3artgaydwmt3o4m323fkowu7u/spack-src", checksumkind: CSK_MD5, checksum: "ad5de07e01a6cdcb8de0ed834fd6bc82")
!341 = !DISubroutineType(types: !342)
!342 = !{!32, !343, !41}
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "spdk_bdev_wait_for_examine_cb", file: !340, line: 238, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !41}
!347 = distinct !DISubprogram(name: "rpc_bdev_aio_create_cb", scope: !2, file: !2, line: 40, type: !345, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !348)
!348 = !{!349, !350, !351, !352}
!349 = !DILocalVariable(name: "cb_arg", arg: 1, scope: !347, file: !2, line: 40, type: !41)
!350 = !DILocalVariable(name: "ctx", scope: !347, file: !2, line: 42, type: !144)
!351 = !DILocalVariable(name: "request", scope: !347, file: !2, line: 43, type: !136)
!352 = !DILocalVariable(name: "w", scope: !347, file: !2, line: 44, type: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "spdk_json_write_ctx", file: !16, line: 173, flags: DIFlagFwdDecl)
!355 = !DILocation(line: 40, column: 30, scope: !347)
!356 = !DILocation(line: 42, column: 2, scope: !347)
!357 = !DILocation(line: 42, column: 32, scope: !347)
!358 = !DILocation(line: 42, column: 38, scope: !347)
!359 = !DILocation(line: 43, column: 2, scope: !347)
!360 = !DILocation(line: 43, column: 31, scope: !347)
!361 = !DILocation(line: 43, column: 41, scope: !347)
!362 = !DILocation(line: 43, column: 46, scope: !347)
!363 = !DILocation(line: 44, column: 2, scope: !347)
!364 = !DILocation(line: 44, column: 30, scope: !347)
!365 = !DILocation(line: 46, column: 32, scope: !347)
!366 = !DILocation(line: 46, column: 6, scope: !347)
!367 = !DILocation(line: 46, column: 4, scope: !347)
!368 = !DILocation(line: 47, column: 25, scope: !347)
!369 = !DILocation(line: 47, column: 28, scope: !347)
!370 = !DILocation(line: 47, column: 33, scope: !347)
!371 = !DILocation(line: 47, column: 37, scope: !347)
!372 = !DILocation(line: 47, column: 2, scope: !347)
!373 = !DILocation(line: 48, column: 26, scope: !347)
!374 = !DILocation(line: 48, column: 35, scope: !347)
!375 = !DILocation(line: 48, column: 2, scope: !347)
!376 = !DILocation(line: 49, column: 25, scope: !347)
!377 = !DILocation(line: 49, column: 2, scope: !347)
!378 = !DILocation(line: 50, column: 1, scope: !347)
!379 = !DISubprogram(name: "free", scope: !298, file: !298, line: 555, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = !DISubprogram(name: "spdk_jsonrpc_begin_result", scope: !138, file: !138, line: 163, type: !381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = !DISubroutineType(types: !382)
!382 = !{!353, !136}
!383 = !DISubprogram(name: "spdk_json_write_string", scope: !16, file: !16, line: 192, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!384 = !DISubroutineType(types: !385)
!385 = !{!32, !353, !88}
!386 = !DISubprogram(name: "spdk_jsonrpc_end_result", scope: !138, file: !138, line: 171, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !136, !353}
!389 = !DISubprogram(name: "bdev_aio_rescan", scope: !336, file: !336, line: 16, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DISubroutineType(types: !391)
!391 = !{!32, !88}
!392 = !DISubprogram(name: "spdk_jsonrpc_send_bool_response", scope: !138, file: !138, line: 179, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !136, !110}
!395 = !DISubprogram(name: "bdev_aio_delete", scope: !336, file: !336, line: 17, type: !396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !88, !398, !41}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "delete_aio_bdev_complete", file: !336, line: 12, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !41, !32}
!402 = distinct !DISubprogram(name: "_rpc_bdev_aio_delete_cb", scope: !2, file: !2, line: 138, type: !400, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !403)
!403 = !{!404, !405, !406}
!404 = !DILocalVariable(name: "cb_arg", arg: 1, scope: !402, file: !2, line: 138, type: !41)
!405 = !DILocalVariable(name: "bdeverrno", arg: 2, scope: !402, file: !2, line: 138, type: !32)
!406 = !DILocalVariable(name: "request", scope: !402, file: !2, line: 140, type: !136)
!407 = !DILocation(line: 138, column: 31, scope: !402)
!408 = !DILocation(line: 138, column: 43, scope: !402)
!409 = !DILocation(line: 140, column: 2, scope: !402)
!410 = !DILocation(line: 140, column: 31, scope: !402)
!411 = !DILocation(line: 140, column: 41, scope: !402)
!412 = !DILocation(line: 142, column: 6, scope: !413)
!413 = distinct !DILexicalBlock(scope: !402, file: !2, line: 142, column: 6)
!414 = !DILocation(line: 142, column: 16, scope: !413)
!415 = !DILocation(line: 142, column: 6, scope: !402)
!416 = !DILocation(line: 143, column: 35, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !2, line: 142, column: 22)
!418 = !DILocation(line: 143, column: 3, scope: !417)
!419 = !DILocation(line: 144, column: 2, scope: !417)
!420 = !DILocation(line: 145, column: 36, scope: !421)
!421 = distinct !DILexicalBlock(scope: !413, file: !2, line: 144, column: 9)
!422 = !DILocation(line: 145, column: 45, scope: !421)
!423 = !DILocation(line: 145, column: 71, scope: !421)
!424 = !DILocation(line: 145, column: 70, scope: !421)
!425 = !DILocation(line: 145, column: 56, scope: !421)
!426 = !DILocation(line: 145, column: 3, scope: !421)
!427 = !DILocation(line: 147, column: 1, scope: !402)
!428 = distinct !DISubprogram(name: "free_rpc_delete_aio", scope: !2, file: !2, line: 128, type: !429, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !432)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!432 = !{!433}
!433 = !DILocalVariable(name: "r", arg: 1, scope: !428, file: !2, line: 128, type: !431)
!434 = !DILocation(line: 128, column: 44, scope: !428)
!435 = !DILocation(line: 130, column: 7, scope: !428)
!436 = !DILocation(line: 130, column: 10, scope: !428)
!437 = !DILocation(line: 130, column: 2, scope: !428)
!438 = !DILocation(line: 131, column: 1, scope: !428)

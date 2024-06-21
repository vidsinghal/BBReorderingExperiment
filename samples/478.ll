; ModuleID = 'samples/478.bc'
source_filename = "samplerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SRC_PRIVATE_tag = type { double, double, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.SRC_DATA = type { ptr, ptr, i64, i64, i64, i64, i32, double }

@.str = private unnamed_addr constant [54 x i8] c"libsamplerate-0.1.9 (c) 2002-2008 Erik de Castro Lopo\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"No error.\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [15 x i8] c"Malloc failed.\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [27 x i8] c"SRC_STATE pointer is NULL.\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [26 x i8] c"SRC_DATA pointer is NULL.\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [49 x i8] c"SRC_DATA->data_out or SRC_DATA->data_in is NULL.\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [33 x i8] c"Internal error. No private data.\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [38 x i8] c"SRC ratio outside [1/256, 256] range.\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [55 x i8] c"src_process() called without reset after end_of_input.\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [36 x i8] c"Internal error. No process pointer.\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [38 x i8] c"Internal error. SHIFT_BITS too large.\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [41 x i8] c"Internal error. Filter length too large.\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [22 x i8] c"Bad converter number.\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [28 x i8] c"Channel count must be >= 1.\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [55 x i8] c"Internal error. Bad buffer length. Please report this.\00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [82 x i8] c"Internal error. Input data / internal buffer size difference. Please report this.\00", align 1, !dbg !71
@.str.16 = private unnamed_addr constant [61 x i8] c"Internal error. Private pointer is NULL. Please report this.\00", align 1, !dbg !76
@.str.17 = private unnamed_addr constant [38 x i8] c"Input and output data arrays overlap.\00", align 1, !dbg !81
@.str.18 = private unnamed_addr constant [44 x i8] c"Supplied callback function pointer is NULL.\00", align 1, !dbg !83
@.str.19 = private unnamed_addr constant [71 x i8] c"Calling mode differs from initialisation mode (ie process v callback).\00", align 1, !dbg !88
@.str.20 = private unnamed_addr constant [59 x i8] c"Callback function pointer is NULL in src_callback_read ().\00", align 1, !dbg !93
@.str.21 = private unnamed_addr constant [55 x i8] c"This converter only allows constant conversion ratios.\00", align 1, !dbg !98
@.str.22 = private unnamed_addr constant [48 x i8] c"Internal error : Bad length in prepare_data ().\00", align 1, !dbg !100
@.str.23 = private unnamed_addr constant [51 x i8] c"Error : Someone is trampling on my internal state.\00", align 1, !dbg !105
@.str.24 = private unnamed_addr constant [53 x i8] c"Placeholder. No error defined for this error number.\00", align 1, !dbg !110

; Function Attrs: nounwind uwtable
define ptr @src_new(i32 noundef %converter_type, i32 noundef %channels, ptr noundef %error) #0 !dbg !213 {
entry:
  %retval = alloca ptr, align 8
  %converter_type.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %error.addr = alloca ptr, align 8
  %psrc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %converter_type, ptr %converter_type.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %converter_type.addr, metadata !218, metadata !DIExpression()), !dbg !226
  store i32 %channels, ptr %channels.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %channels.addr, metadata !219, metadata !DIExpression()), !dbg !227
  store ptr %error, ptr %error.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !220, metadata !DIExpression()), !dbg !230
  call void @llvm.lifetime.start.p0(i64 8, ptr %psrc) #8, !dbg !231
  tail call void @llvm.dbg.declare(metadata ptr %psrc, metadata !221, metadata !DIExpression()), !dbg !232
  %0 = load ptr, ptr %error.addr, align 8, !dbg !233, !tbaa !228
  %tobool = icmp ne ptr %0, null, !dbg !233
  br i1 %tobool, label %if.then, label %if.end, !dbg !235

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %error.addr, align 8, !dbg !236, !tbaa !228
  store i32 0, ptr %1, align 4, !dbg !237, !tbaa !222
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %channels.addr, align 4, !dbg !239, !tbaa !222
  %cmp = icmp slt i32 %2, 1, !dbg !241
  br i1 %cmp, label %if.then1, label %if.end5, !dbg !242

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %error.addr, align 8, !dbg !243, !tbaa !228
  %tobool2 = icmp ne ptr %3, null, !dbg !243
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !246

if.then3:                                         ; preds = %if.then1
  %4 = load ptr, ptr %error.addr, align 8, !dbg !247, !tbaa !228
  store i32 11, ptr %4, align 4, !dbg !248, !tbaa !222
  br label %if.end4, !dbg !249

if.end4:                                          ; preds = %if.then3, %if.then1
  store ptr null, ptr %retval, align 8, !dbg !250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !250

if.end5:                                          ; preds = %if.end
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 96) #9, !dbg !251
  store ptr %call, ptr %psrc, align 8, !dbg !253, !tbaa !228
  %cmp6 = icmp eq ptr %call, null, !dbg !254
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !255

if.then7:                                         ; preds = %if.end5
  %5 = load ptr, ptr %error.addr, align 8, !dbg !256, !tbaa !228
  %tobool8 = icmp ne ptr %5, null, !dbg !256
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !259

if.then9:                                         ; preds = %if.then7
  %6 = load ptr, ptr %error.addr, align 8, !dbg !260, !tbaa !228
  store i32 1, ptr %6, align 4, !dbg !261, !tbaa !222
  br label %if.end10, !dbg !262

if.end10:                                         ; preds = %if.then9, %if.then7
  store ptr null, ptr %retval, align 8, !dbg !263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !263

if.end11:                                         ; preds = %if.end5
  %7 = load i32, ptr %channels.addr, align 4, !dbg !264, !tbaa !222
  %8 = load ptr, ptr %psrc, align 8, !dbg !265, !tbaa !228
  %channels12 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %8, i32 0, i32 3, !dbg !266
  store i32 %7, ptr %channels12, align 4, !dbg !267, !tbaa !268
  %9 = load ptr, ptr %psrc, align 8, !dbg !272, !tbaa !228
  %mode = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %9, i32 0, i32 4, !dbg !273
  store i32 555, ptr %mode, align 8, !dbg !274, !tbaa !275
  %10 = load ptr, ptr %psrc, align 8, !dbg !276, !tbaa !228
  %11 = load i32, ptr %converter_type.addr, align 4, !dbg !278, !tbaa !222
  %call13 = call i32 @psrc_set_converter(ptr noundef %10, i32 noundef %11), !dbg !279
  %cmp14 = icmp ne i32 %call13, 0, !dbg !280
  br i1 %cmp14, label %if.then15, label %if.end19, !dbg !281

if.then15:                                        ; preds = %if.end11
  %12 = load ptr, ptr %error.addr, align 8, !dbg !282, !tbaa !228
  %tobool16 = icmp ne ptr %12, null, !dbg !282
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !285

if.then17:                                        ; preds = %if.then15
  %13 = load ptr, ptr %error.addr, align 8, !dbg !286, !tbaa !228
  store i32 10, ptr %13, align 4, !dbg !287, !tbaa !222
  br label %if.end18, !dbg !288

if.end18:                                         ; preds = %if.then17, %if.then15
  %14 = load ptr, ptr %psrc, align 8, !dbg !289, !tbaa !228
  call void @free(ptr noundef %14) #8, !dbg !290
  store ptr null, ptr %psrc, align 8, !dbg !291, !tbaa !228
  br label %if.end19, !dbg !292

if.end19:                                         ; preds = %if.end18, %if.end11
  %15 = load ptr, ptr %psrc, align 8, !dbg !293, !tbaa !228
  %call20 = call i32 @src_reset(ptr noundef %15), !dbg !294
  %16 = load ptr, ptr %psrc, align 8, !dbg !295, !tbaa !228
  store ptr %16, ptr %retval, align 8, !dbg !296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !296

cleanup:                                          ; preds = %if.end19, %if.end10, %if.end4
  call void @llvm.lifetime.end.p0(i64 8, ptr %psrc) #8, !dbg !297
  %17 = load ptr, ptr %retval, align 8, !dbg !297
  ret ptr %17, !dbg !297
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind allocsize(0,1)
declare !dbg !298 noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @psrc_set_converter(ptr noundef %psrc, i32 noundef %converter_type) #0 !dbg !305 {
entry:
  %retval = alloca i32, align 4
  %psrc.addr = alloca ptr, align 8
  %converter_type.addr = alloca i32, align 4
  store ptr %psrc, ptr %psrc.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %psrc.addr, metadata !309, metadata !DIExpression()), !dbg !311
  store i32 %converter_type, ptr %converter_type.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %converter_type.addr, metadata !310, metadata !DIExpression()), !dbg !312
  %0 = load ptr, ptr %psrc.addr, align 8, !dbg !313, !tbaa !228
  %1 = load i32, ptr %converter_type.addr, align 4, !dbg !315, !tbaa !222
  %call = call i32 @sinc_set_converter(ptr noundef %0, i32 noundef %1), !dbg !316
  %cmp = icmp eq i32 %call, 0, !dbg !317
  br i1 %cmp, label %if.then, label %if.end, !dbg !318

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !319
  br label %return, !dbg !319

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %psrc.addr, align 8, !dbg !320, !tbaa !228
  %3 = load i32, ptr %converter_type.addr, align 4, !dbg !322, !tbaa !222
  %call1 = call i32 @zoh_set_converter(ptr noundef %2, i32 noundef %3), !dbg !323
  %cmp2 = icmp eq i32 %call1, 0, !dbg !324
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !325

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !326
  br label %return, !dbg !326

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %psrc.addr, align 8, !dbg !327, !tbaa !228
  %5 = load i32, ptr %converter_type.addr, align 4, !dbg !329, !tbaa !222
  %call5 = call i32 @linear_set_converter(ptr noundef %4, i32 noundef %5), !dbg !330
  %cmp6 = icmp eq i32 %call5, 0, !dbg !331
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !332

if.then7:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !333
  br label %return, !dbg !333

if.end8:                                          ; preds = %if.end4
  store i32 10, ptr %retval, align 4, !dbg !334
  br label %return, !dbg !334

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !335
  ret i32 %6, !dbg !335
}

; Function Attrs: nounwind
declare !dbg !336 void @free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define i32 @src_reset(ptr noundef %state) #0 !dbg !339 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %psrc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !343, metadata !DIExpression()), !dbg !345
  call void @llvm.lifetime.start.p0(i64 8, ptr %psrc) #8, !dbg !346
  tail call void @llvm.dbg.declare(metadata ptr %psrc, metadata !344, metadata !DIExpression()), !dbg !347
  %0 = load ptr, ptr %state.addr, align 8, !dbg !348, !tbaa !228
  store ptr %0, ptr %psrc, align 8, !dbg !350, !tbaa !228
  %cmp = icmp eq ptr %0, null, !dbg !351
  br i1 %cmp, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !353

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %psrc, align 8, !dbg !354, !tbaa !228
  %reset = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %1, i32 0, i32 8, !dbg !356
  %2 = load ptr, ptr %reset, align 8, !dbg !356, !tbaa !357
  %cmp1 = icmp ne ptr %2, null, !dbg !358
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !359

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %psrc, align 8, !dbg !360, !tbaa !228
  %reset3 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %3, i32 0, i32 8, !dbg !361
  %4 = load ptr, ptr %reset3, align 8, !dbg !361, !tbaa !357
  %5 = load ptr, ptr %psrc, align 8, !dbg !362, !tbaa !228
  call void %4(ptr noundef %5), !dbg !360
  br label %if.end4, !dbg !360

if.end4:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %psrc, align 8, !dbg !363, !tbaa !228
  %last_position = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %6, i32 0, i32 1, !dbg !364
  store double 0.000000e+00, ptr %last_position, align 8, !dbg !365, !tbaa !366
  %7 = load ptr, ptr %psrc, align 8, !dbg !367, !tbaa !228
  %last_ratio = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %7, i32 0, i32 0, !dbg !368
  store double 0.000000e+00, ptr %last_ratio, align 8, !dbg !369, !tbaa !370
  %8 = load ptr, ptr %psrc, align 8, !dbg !371, !tbaa !228
  %saved_data = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %8, i32 0, i32 12, !dbg !372
  store ptr null, ptr %saved_data, align 8, !dbg !373, !tbaa !374
  %9 = load ptr, ptr %psrc, align 8, !dbg !375, !tbaa !228
  %saved_frames = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %9, i32 0, i32 11, !dbg !376
  store i64 0, ptr %saved_frames, align 8, !dbg !377, !tbaa !378
  %10 = load ptr, ptr %psrc, align 8, !dbg !379, !tbaa !228
  %error = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %10, i32 0, i32 2, !dbg !380
  store i32 0, ptr %error, align 8, !dbg !381, !tbaa !382
  store i32 0, ptr %retval, align 4, !dbg !383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !383

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %psrc) #8, !dbg !384
  %11 = load i32, ptr %retval, align 4, !dbg !384
  ret i32 %11, !dbg !384
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @src_callback_new(ptr noundef %func, i32 noundef %converter_type, i32 noundef %channels, ptr noundef %error, ptr noundef %cb_data) #0 !dbg !385 {
entry:
  %retval = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %converter_type.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %error.addr = alloca ptr, align 8
  %cb_data.addr = alloca ptr, align 8
  %src_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !389, metadata !DIExpression()), !dbg !395
  store i32 %converter_type, ptr %converter_type.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %converter_type.addr, metadata !390, metadata !DIExpression()), !dbg !396
  store i32 %channels, ptr %channels.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %channels.addr, metadata !391, metadata !DIExpression()), !dbg !397
  store ptr %error, ptr %error.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !392, metadata !DIExpression()), !dbg !398
  store ptr %cb_data, ptr %cb_data.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %cb_data.addr, metadata !393, metadata !DIExpression()), !dbg !399
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_state) #8, !dbg !400
  tail call void @llvm.dbg.declare(metadata ptr %src_state, metadata !394, metadata !DIExpression()), !dbg !401
  %0 = load ptr, ptr %func.addr, align 8, !dbg !402, !tbaa !228
  %cmp = icmp eq ptr %0, null, !dbg !404
  br i1 %cmp, label %if.then, label %if.end2, !dbg !405

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %error.addr, align 8, !dbg !406, !tbaa !228
  %tobool = icmp ne ptr %1, null, !dbg !406
  br i1 %tobool, label %if.then1, label %if.end, !dbg !409

if.then1:                                         ; preds = %if.then
  %2 = load ptr, ptr %error.addr, align 8, !dbg !410, !tbaa !228
  store i32 17, ptr %2, align 4, !dbg !411, !tbaa !222
  br label %if.end, !dbg !412

if.end:                                           ; preds = %if.then1, %if.then
  store ptr null, ptr %retval, align 8, !dbg !413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !413

if.end2:                                          ; preds = %entry
  %3 = load ptr, ptr %error.addr, align 8, !dbg !414, !tbaa !228
  %cmp3 = icmp ne ptr %3, null, !dbg !416
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !417

if.then4:                                         ; preds = %if.end2
  %4 = load ptr, ptr %error.addr, align 8, !dbg !418, !tbaa !228
  store i32 0, ptr %4, align 4, !dbg !419, !tbaa !222
  br label %if.end5, !dbg !420

if.end5:                                          ; preds = %if.then4, %if.end2
  %5 = load i32, ptr %converter_type.addr, align 4, !dbg !421, !tbaa !222
  %6 = load i32, ptr %channels.addr, align 4, !dbg !423, !tbaa !222
  %7 = load ptr, ptr %error.addr, align 8, !dbg !424, !tbaa !228
  %call = call ptr @src_new(i32 noundef %5, i32 noundef %6, ptr noundef %7), !dbg !425
  store ptr %call, ptr %src_state, align 8, !dbg !426, !tbaa !228
  %cmp6 = icmp eq ptr %call, null, !dbg !427
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !428

if.then7:                                         ; preds = %if.end5
  store ptr null, ptr %retval, align 8, !dbg !429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !429

if.end8:                                          ; preds = %if.end5
  %8 = load ptr, ptr %src_state, align 8, !dbg !430, !tbaa !228
  %call9 = call i32 @src_reset(ptr noundef %8), !dbg !431
  %9 = load ptr, ptr %src_state, align 8, !dbg !432, !tbaa !228
  %mode = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %9, i32 0, i32 4, !dbg !433
  store i32 556, ptr %mode, align 8, !dbg !434, !tbaa !275
  %10 = load ptr, ptr %func.addr, align 8, !dbg !435, !tbaa !228
  %11 = load ptr, ptr %src_state, align 8, !dbg !436, !tbaa !228
  %callback_func = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %11, i32 0, i32 9, !dbg !437
  store ptr %10, ptr %callback_func, align 8, !dbg !438, !tbaa !439
  %12 = load ptr, ptr %cb_data.addr, align 8, !dbg !440, !tbaa !228
  %13 = load ptr, ptr %src_state, align 8, !dbg !441, !tbaa !228
  %user_callback_data = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %13, i32 0, i32 10, !dbg !442
  store ptr %12, ptr %user_callback_data, align 8, !dbg !443, !tbaa !444
  %14 = load ptr, ptr %src_state, align 8, !dbg !445, !tbaa !228
  store ptr %14, ptr %retval, align 8, !dbg !446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !446

cleanup:                                          ; preds = %if.end8, %if.then7, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_state) #8, !dbg !447
  %15 = load ptr, ptr %retval, align 8, !dbg !447
  ret ptr %15, !dbg !447
}

; Function Attrs: nounwind uwtable
define ptr @src_delete(ptr noundef %state) #0 !dbg !448 {
entry:
  %state.addr = alloca ptr, align 8
  %psrc = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !452, metadata !DIExpression()), !dbg !454
  call void @llvm.lifetime.start.p0(i64 8, ptr %psrc) #8, !dbg !455
  tail call void @llvm.dbg.declare(metadata ptr %psrc, metadata !453, metadata !DIExpression()), !dbg !456
  %0 = load ptr, ptr %state.addr, align 8, !dbg !457, !tbaa !228
  store ptr %0, ptr %psrc, align 8, !dbg !458, !tbaa !228
  %1 = load ptr, ptr %psrc, align 8, !dbg !459, !tbaa !228
  %tobool = icmp ne ptr %1, null, !dbg !459
  br i1 %tobool, label %if.then, label %if.end4, !dbg !461

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %psrc, align 8, !dbg !462, !tbaa !228
  %private_data = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %2, i32 0, i32 5, !dbg !465
  %3 = load ptr, ptr %private_data, align 8, !dbg !465, !tbaa !466
  %tobool1 = icmp ne ptr %3, null, !dbg !462
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !467

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %psrc, align 8, !dbg !468, !tbaa !228
  %private_data3 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %4, i32 0, i32 5, !dbg !469
  %5 = load ptr, ptr %private_data3, align 8, !dbg !469, !tbaa !466
  call void @free(ptr noundef %5) #8, !dbg !470
  br label %if.end, !dbg !470

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load ptr, ptr %psrc, align 8, !dbg !471, !tbaa !228
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 96, i1 false), !dbg !472
  %7 = load ptr, ptr %psrc, align 8, !dbg !473, !tbaa !228
  call void @free(ptr noundef %7) #8, !dbg !474
  br label %if.end4, !dbg !475

if.end4:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %psrc) #8, !dbg !476
  ret ptr null, !dbg !477
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define i32 @src_process(ptr noundef %state, ptr noundef %data) #0 !dbg !478 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %psrc = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !482, metadata !DIExpression()), !dbg !486
  store ptr %data, ptr %data.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !483, metadata !DIExpression()), !dbg !487
  call void @llvm.lifetime.start.p0(i64 8, ptr %psrc) #8, !dbg !488
  tail call void @llvm.dbg.declare(metadata ptr %psrc, metadata !484, metadata !DIExpression()), !dbg !489
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #8, !dbg !490
  tail call void @llvm.dbg.declare(metadata ptr %error, metadata !485, metadata !DIExpression()), !dbg !491
  %0 = load ptr, ptr %state.addr, align 8, !dbg !492, !tbaa !228
  store ptr %0, ptr %psrc, align 8, !dbg !493, !tbaa !228
  %1 = load ptr, ptr %psrc, align 8, !dbg !494, !tbaa !228
  %cmp = icmp eq ptr %1, null, !dbg !496
  br i1 %cmp, label %if.then, label %if.end, !dbg !497

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !498

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %psrc, align 8, !dbg !499, !tbaa !228
  %vari_process = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %2, i32 0, i32 6, !dbg !501
  %3 = load ptr, ptr %vari_process, align 8, !dbg !501, !tbaa !502
  %cmp1 = icmp eq ptr %3, null, !dbg !503
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !504

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %psrc, align 8, !dbg !505, !tbaa !228
  %const_process = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %4, i32 0, i32 7, !dbg !506
  %5 = load ptr, ptr %const_process, align 8, !dbg !506, !tbaa !507
  %cmp2 = icmp eq ptr %5, null, !dbg !508
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !509

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 7, ptr %retval, align 4, !dbg !510
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !510

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %psrc, align 8, !dbg !511, !tbaa !228
  %mode = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %6, i32 0, i32 4, !dbg !513
  %7 = load i32, ptr %mode, align 8, !dbg !513, !tbaa !275
  %cmp5 = icmp ne i32 %7, 555, !dbg !514
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !515

if.then6:                                         ; preds = %if.end4
  store i32 18, ptr %retval, align 4, !dbg !516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !516

if.end7:                                          ; preds = %if.end4
  %8 = load ptr, ptr %data.addr, align 8, !dbg !517, !tbaa !228
  %cmp8 = icmp eq ptr %8, null, !dbg !519
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !520

if.then9:                                         ; preds = %if.end7
  store i32 3, ptr %retval, align 4, !dbg !521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !521

if.end10:                                         ; preds = %if.end7
  %9 = load ptr, ptr %data.addr, align 8, !dbg !522, !tbaa !228
  %data_in = getelementptr inbounds %struct.SRC_DATA, ptr %9, i32 0, i32 0, !dbg !524
  %10 = load ptr, ptr %data_in, align 8, !dbg !524, !tbaa !525
  %cmp11 = icmp eq ptr %10, null, !dbg !527
  br i1 %cmp11, label %if.then14, label %lor.lhs.false12, !dbg !528

lor.lhs.false12:                                  ; preds = %if.end10
  %11 = load ptr, ptr %data.addr, align 8, !dbg !529, !tbaa !228
  %data_out = getelementptr inbounds %struct.SRC_DATA, ptr %11, i32 0, i32 1, !dbg !530
  %12 = load ptr, ptr %data_out, align 8, !dbg !530, !tbaa !531
  %cmp13 = icmp eq ptr %12, null, !dbg !532
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !533

if.then14:                                        ; preds = %lor.lhs.false12, %if.end10
  store i32 4, ptr %retval, align 4, !dbg !534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !534

if.end15:                                         ; preds = %lor.lhs.false12
  %13 = load ptr, ptr %data.addr, align 8, !dbg !535, !tbaa !228
  %src_ratio = getelementptr inbounds %struct.SRC_DATA, ptr %13, i32 0, i32 7, !dbg !537
  %14 = load double, ptr %src_ratio, align 8, !dbg !537, !tbaa !538
  %call = call i32 @is_bad_src_ratio(double noundef %14), !dbg !539
  %tobool = icmp ne i32 %call, 0, !dbg !539
  br i1 %tobool, label %if.then16, label %if.end17, !dbg !540

if.then16:                                        ; preds = %if.end15
  store i32 6, ptr %retval, align 4, !dbg !541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !541

if.end17:                                         ; preds = %if.end15
  %15 = load ptr, ptr %data.addr, align 8, !dbg !542, !tbaa !228
  %input_frames = getelementptr inbounds %struct.SRC_DATA, ptr %15, i32 0, i32 2, !dbg !544
  %16 = load i64, ptr %input_frames, align 8, !dbg !544, !tbaa !545
  %cmp18 = icmp slt i64 %16, 0, !dbg !546
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !547

if.then19:                                        ; preds = %if.end17
  %17 = load ptr, ptr %data.addr, align 8, !dbg !548, !tbaa !228
  %input_frames20 = getelementptr inbounds %struct.SRC_DATA, ptr %17, i32 0, i32 2, !dbg !549
  store i64 0, ptr %input_frames20, align 8, !dbg !550, !tbaa !545
  br label %if.end21, !dbg !548

if.end21:                                         ; preds = %if.then19, %if.end17
  %18 = load ptr, ptr %data.addr, align 8, !dbg !551, !tbaa !228
  %output_frames = getelementptr inbounds %struct.SRC_DATA, ptr %18, i32 0, i32 3, !dbg !553
  %19 = load i64, ptr %output_frames, align 8, !dbg !553, !tbaa !554
  %cmp22 = icmp slt i64 %19, 0, !dbg !555
  br i1 %cmp22, label %if.then23, label %if.end25, !dbg !556

if.then23:                                        ; preds = %if.end21
  %20 = load ptr, ptr %data.addr, align 8, !dbg !557, !tbaa !228
  %output_frames24 = getelementptr inbounds %struct.SRC_DATA, ptr %20, i32 0, i32 3, !dbg !558
  store i64 0, ptr %output_frames24, align 8, !dbg !559, !tbaa !554
  br label %if.end25, !dbg !557

if.end25:                                         ; preds = %if.then23, %if.end21
  %21 = load ptr, ptr %data.addr, align 8, !dbg !560, !tbaa !228
  %data_in26 = getelementptr inbounds %struct.SRC_DATA, ptr %21, i32 0, i32 0, !dbg !562
  %22 = load ptr, ptr %data_in26, align 8, !dbg !562, !tbaa !525
  %23 = load ptr, ptr %data.addr, align 8, !dbg !563, !tbaa !228
  %data_out27 = getelementptr inbounds %struct.SRC_DATA, ptr %23, i32 0, i32 1, !dbg !564
  %24 = load ptr, ptr %data_out27, align 8, !dbg !564, !tbaa !531
  %cmp28 = icmp ult ptr %22, %24, !dbg !565
  br i1 %cmp28, label %if.then29, label %if.else, !dbg !566

if.then29:                                        ; preds = %if.end25
  %25 = load ptr, ptr %data.addr, align 8, !dbg !567, !tbaa !228
  %data_in30 = getelementptr inbounds %struct.SRC_DATA, ptr %25, i32 0, i32 0, !dbg !570
  %26 = load ptr, ptr %data_in30, align 8, !dbg !570, !tbaa !525
  %27 = load ptr, ptr %data.addr, align 8, !dbg !571, !tbaa !228
  %input_frames31 = getelementptr inbounds %struct.SRC_DATA, ptr %27, i32 0, i32 2, !dbg !572
  %28 = load i64, ptr %input_frames31, align 8, !dbg !572, !tbaa !545
  %29 = load ptr, ptr %psrc, align 8, !dbg !573, !tbaa !228
  %channels = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %29, i32 0, i32 3, !dbg !574
  %30 = load i32, ptr %channels, align 4, !dbg !574, !tbaa !268
  %conv = sext i32 %30 to i64, !dbg !573
  %mul = mul nsw i64 %28, %conv, !dbg !575
  %add.ptr = getelementptr inbounds float, ptr %26, i64 %mul, !dbg !576
  %31 = load ptr, ptr %data.addr, align 8, !dbg !577, !tbaa !228
  %data_out32 = getelementptr inbounds %struct.SRC_DATA, ptr %31, i32 0, i32 1, !dbg !578
  %32 = load ptr, ptr %data_out32, align 8, !dbg !578, !tbaa !531
  %cmp33 = icmp ugt ptr %add.ptr, %32, !dbg !579
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !580

if.then35:                                        ; preds = %if.then29
  store i32 16, ptr %retval, align 4, !dbg !581
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !581

if.end36:                                         ; preds = %if.then29
  br label %if.end48, !dbg !583

if.else:                                          ; preds = %if.end25
  %33 = load ptr, ptr %data.addr, align 8, !dbg !584, !tbaa !228
  %data_out37 = getelementptr inbounds %struct.SRC_DATA, ptr %33, i32 0, i32 1, !dbg !586
  %34 = load ptr, ptr %data_out37, align 8, !dbg !586, !tbaa !531
  %35 = load ptr, ptr %data.addr, align 8, !dbg !587, !tbaa !228
  %output_frames38 = getelementptr inbounds %struct.SRC_DATA, ptr %35, i32 0, i32 3, !dbg !588
  %36 = load i64, ptr %output_frames38, align 8, !dbg !588, !tbaa !554
  %37 = load ptr, ptr %psrc, align 8, !dbg !589, !tbaa !228
  %channels39 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %37, i32 0, i32 3, !dbg !590
  %38 = load i32, ptr %channels39, align 4, !dbg !590, !tbaa !268
  %conv40 = sext i32 %38 to i64, !dbg !589
  %mul41 = mul nsw i64 %36, %conv40, !dbg !591
  %add.ptr42 = getelementptr inbounds float, ptr %34, i64 %mul41, !dbg !592
  %39 = load ptr, ptr %data.addr, align 8, !dbg !593, !tbaa !228
  %data_in43 = getelementptr inbounds %struct.SRC_DATA, ptr %39, i32 0, i32 0, !dbg !594
  %40 = load ptr, ptr %data_in43, align 8, !dbg !594, !tbaa !525
  %cmp44 = icmp ugt ptr %add.ptr42, %40, !dbg !595
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !596

if.then46:                                        ; preds = %if.else
  store i32 16, ptr %retval, align 4, !dbg !597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !597

if.end47:                                         ; preds = %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end36
  %41 = load ptr, ptr %data.addr, align 8, !dbg !599, !tbaa !228
  %input_frames_used = getelementptr inbounds %struct.SRC_DATA, ptr %41, i32 0, i32 4, !dbg !600
  store i64 0, ptr %input_frames_used, align 8, !dbg !601, !tbaa !602
  %42 = load ptr, ptr %data.addr, align 8, !dbg !603, !tbaa !228
  %output_frames_gen = getelementptr inbounds %struct.SRC_DATA, ptr %42, i32 0, i32 5, !dbg !604
  store i64 0, ptr %output_frames_gen, align 8, !dbg !605, !tbaa !606
  %43 = load ptr, ptr %psrc, align 8, !dbg !607, !tbaa !228
  %last_ratio = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %43, i32 0, i32 0, !dbg !609
  %44 = load double, ptr %last_ratio, align 8, !dbg !609, !tbaa !370
  %cmp49 = fcmp olt double %44, 3.906250e-03, !dbg !610
  br i1 %cmp49, label %if.then51, label %if.end54, !dbg !611

if.then51:                                        ; preds = %if.end48
  %45 = load ptr, ptr %data.addr, align 8, !dbg !612, !tbaa !228
  %src_ratio52 = getelementptr inbounds %struct.SRC_DATA, ptr %45, i32 0, i32 7, !dbg !613
  %46 = load double, ptr %src_ratio52, align 8, !dbg !613, !tbaa !538
  %47 = load ptr, ptr %psrc, align 8, !dbg !614, !tbaa !228
  %last_ratio53 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %47, i32 0, i32 0, !dbg !615
  store double %46, ptr %last_ratio53, align 8, !dbg !616, !tbaa !370
  br label %if.end54, !dbg !614

if.end54:                                         ; preds = %if.then51, %if.end48
  %48 = load ptr, ptr %psrc, align 8, !dbg !617, !tbaa !228
  %last_ratio55 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %48, i32 0, i32 0, !dbg !619
  %49 = load double, ptr %last_ratio55, align 8, !dbg !619, !tbaa !370
  %50 = load ptr, ptr %data.addr, align 8, !dbg !620, !tbaa !228
  %src_ratio56 = getelementptr inbounds %struct.SRC_DATA, ptr %50, i32 0, i32 7, !dbg !621
  %51 = load double, ptr %src_ratio56, align 8, !dbg !621, !tbaa !538
  %sub = fsub double %49, %51, !dbg !622
  %52 = call double @llvm.fabs.f64(double %sub), !dbg !623
  %cmp57 = fcmp olt double %52, 1.000000e-15, !dbg !624
  br i1 %cmp57, label %if.then59, label %if.else62, !dbg !625

if.then59:                                        ; preds = %if.end54
  %53 = load ptr, ptr %psrc, align 8, !dbg !626, !tbaa !228
  %const_process60 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %53, i32 0, i32 7, !dbg !627
  %54 = load ptr, ptr %const_process60, align 8, !dbg !627, !tbaa !507
  %55 = load ptr, ptr %psrc, align 8, !dbg !628, !tbaa !228
  %56 = load ptr, ptr %data.addr, align 8, !dbg !629, !tbaa !228
  %call61 = call i32 %54(ptr noundef %55, ptr noundef %56), !dbg !626
  store i32 %call61, ptr %error, align 4, !dbg !630, !tbaa !222
  br label %if.end65, !dbg !631

if.else62:                                        ; preds = %if.end54
  %57 = load ptr, ptr %psrc, align 8, !dbg !632, !tbaa !228
  %vari_process63 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %57, i32 0, i32 6, !dbg !633
  %58 = load ptr, ptr %vari_process63, align 8, !dbg !633, !tbaa !502
  %59 = load ptr, ptr %psrc, align 8, !dbg !634, !tbaa !228
  %60 = load ptr, ptr %data.addr, align 8, !dbg !635, !tbaa !228
  %call64 = call i32 %58(ptr noundef %59, ptr noundef %60), !dbg !632
  store i32 %call64, ptr %error, align 4, !dbg !636, !tbaa !222
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.then59
  %61 = load i32, ptr %error, align 4, !dbg !637, !tbaa !222
  store i32 %61, ptr %retval, align 4, !dbg !638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !638

cleanup:                                          ; preds = %if.end65, %if.then46, %if.then35, %if.then16, %if.then14, %if.then9, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #8, !dbg !639
  call void @llvm.lifetime.end.p0(i64 8, ptr %psrc) #8, !dbg !639
  %62 = load i32, ptr %retval, align 4, !dbg !639
  ret i32 %62, !dbg !639
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_bad_src_ratio(double noundef %ratio) #5 !dbg !640 {
entry:
  %ratio.addr = alloca double, align 8
  store double %ratio, ptr %ratio.addr, align 8, !tbaa !645
  tail call void @llvm.dbg.declare(metadata ptr %ratio.addr, metadata !644, metadata !DIExpression()), !dbg !646
  %0 = load double, ptr %ratio.addr, align 8, !dbg !647, !tbaa !645
  %cmp = fcmp olt double %0, 3.906250e-03, !dbg !648
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !649

lor.rhs:                                          ; preds = %entry
  %1 = load double, ptr %ratio.addr, align 8, !dbg !650, !tbaa !645
  %cmp1 = fcmp ogt double %1, 2.560000e+02, !dbg !651
  br label %lor.end, !dbg !649

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32, !dbg !649
  ret i32 %lor.ext, !dbg !652
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nounwind uwtable
define i64 @src_callback_read(ptr noundef %state, double noundef %src_ratio, i64 noundef %frames, ptr noundef %data) #0 !dbg !653 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca ptr, align 8
  %src_ratio.addr = alloca double, align 8
  %frames.addr = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %psrc = alloca ptr, align 8
  %src_data = alloca %struct.SRC_DATA, align 8
  %output_frames_gen = alloca i64, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %dummy = alloca [1 x float], align 4
  %ptr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !657, metadata !DIExpression()), !dbg !673
  store double %src_ratio, ptr %src_ratio.addr, align 8, !tbaa !645
  tail call void @llvm.dbg.declare(metadata ptr %src_ratio.addr, metadata !658, metadata !DIExpression()), !dbg !674
  store i64 %frames, ptr %frames.addr, align 8, !tbaa !675
  tail call void @llvm.dbg.declare(metadata ptr %frames.addr, metadata !659, metadata !DIExpression()), !dbg !676
  store ptr %data, ptr %data.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !660, metadata !DIExpression()), !dbg !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %psrc) #8, !dbg !678
  tail call void @llvm.dbg.declare(metadata ptr %psrc, metadata !661, metadata !DIExpression()), !dbg !679
  call void @llvm.lifetime.start.p0(i64 64, ptr %src_data) #8, !dbg !680
  tail call void @llvm.dbg.declare(metadata ptr %src_data, metadata !662, metadata !DIExpression()), !dbg !681
  call void @llvm.lifetime.start.p0(i64 8, ptr %output_frames_gen) #8, !dbg !682
  tail call void @llvm.dbg.declare(metadata ptr %output_frames_gen, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #8, !dbg !684
  tail call void @llvm.dbg.declare(metadata ptr %error, metadata !664, metadata !DIExpression()), !dbg !685
  store i32 0, ptr %error, align 4, !dbg !685, !tbaa !222
  %0 = load ptr, ptr %state.addr, align 8, !dbg !686, !tbaa !228
  %cmp = icmp eq ptr %0, null, !dbg !688
  br i1 %cmp, label %if.then, label %if.end, !dbg !689

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !690
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !690

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %frames.addr, align 8, !dbg !691, !tbaa !675
  %cmp1 = icmp sle i64 %1, 0, !dbg !693
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !694

if.then2:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !695

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %state.addr, align 8, !dbg !696, !tbaa !228
  store ptr %2, ptr %psrc, align 8, !dbg !697, !tbaa !228
  %3 = load ptr, ptr %psrc, align 8, !dbg !698, !tbaa !228
  %mode = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %3, i32 0, i32 4, !dbg !700
  %4 = load i32, ptr %mode, align 8, !dbg !700, !tbaa !275
  %cmp4 = icmp ne i32 %4, 556, !dbg !701
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !702

if.then5:                                         ; preds = %if.end3
  %5 = load ptr, ptr %psrc, align 8, !dbg !703, !tbaa !228
  %error6 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %5, i32 0, i32 2, !dbg !705
  store i32 18, ptr %error6, align 8, !dbg !706, !tbaa !382
  store i64 0, ptr %retval, align 8, !dbg !707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !707

if.end7:                                          ; preds = %if.end3
  %6 = load ptr, ptr %psrc, align 8, !dbg !708, !tbaa !228
  %callback_func = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %6, i32 0, i32 9, !dbg !710
  %7 = load ptr, ptr %callback_func, align 8, !dbg !710, !tbaa !439
  %cmp8 = icmp eq ptr %7, null, !dbg !711
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !712

if.then9:                                         ; preds = %if.end7
  %8 = load ptr, ptr %psrc, align 8, !dbg !713, !tbaa !228
  %error10 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %8, i32 0, i32 2, !dbg !715
  store i32 19, ptr %error10, align 8, !dbg !716, !tbaa !382
  store i64 0, ptr %retval, align 8, !dbg !717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !717

if.end11:                                         ; preds = %if.end7
  call void @llvm.memset.p0.i64(ptr align 8 %src_data, i8 0, i64 64, i1 false), !dbg !718
  %9 = load double, ptr %src_ratio.addr, align 8, !dbg !719, !tbaa !645
  %call = call i32 @is_bad_src_ratio(double noundef %9), !dbg !721
  %tobool = icmp ne i32 %call, 0, !dbg !721
  br i1 %tobool, label %if.then12, label %if.end14, !dbg !722

if.then12:                                        ; preds = %if.end11
  %10 = load ptr, ptr %psrc, align 8, !dbg !723, !tbaa !228
  %error13 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %10, i32 0, i32 2, !dbg !725
  store i32 6, ptr %error13, align 8, !dbg !726, !tbaa !382
  store i64 0, ptr %retval, align 8, !dbg !727
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !727

if.end14:                                         ; preds = %if.end11
  %11 = load double, ptr %src_ratio.addr, align 8, !dbg !728, !tbaa !645
  %src_ratio15 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 7, !dbg !729
  store double %11, ptr %src_ratio15, align 8, !dbg !730, !tbaa !538
  %12 = load ptr, ptr %data.addr, align 8, !dbg !731, !tbaa !228
  %data_out = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 1, !dbg !732
  store ptr %12, ptr %data_out, align 8, !dbg !733, !tbaa !531
  %13 = load i64, ptr %frames.addr, align 8, !dbg !734, !tbaa !675
  %output_frames = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 3, !dbg !735
  store i64 %13, ptr %output_frames, align 8, !dbg !736, !tbaa !554
  %14 = load ptr, ptr %psrc, align 8, !dbg !737, !tbaa !228
  %saved_data = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %14, i32 0, i32 12, !dbg !738
  %15 = load ptr, ptr %saved_data, align 8, !dbg !738, !tbaa !374
  %data_in = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 0, !dbg !739
  store ptr %15, ptr %data_in, align 8, !dbg !740, !tbaa !525
  %16 = load ptr, ptr %psrc, align 8, !dbg !741, !tbaa !228
  %saved_frames = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %16, i32 0, i32 11, !dbg !742
  %17 = load i64, ptr %saved_frames, align 8, !dbg !742, !tbaa !378
  %input_frames = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 2, !dbg !743
  store i64 %17, ptr %input_frames, align 8, !dbg !744, !tbaa !545
  store i64 0, ptr %output_frames_gen, align 8, !dbg !745, !tbaa !675
  br label %while.cond, !dbg !746

while.cond:                                       ; preds = %cleanup.cont, %if.end14
  %18 = load i64, ptr %output_frames_gen, align 8, !dbg !747, !tbaa !675
  %19 = load i64, ptr %frames.addr, align 8, !dbg !748, !tbaa !675
  %cmp16 = icmp slt i64 %18, %19, !dbg !749
  br i1 %cmp16, label %while.body, label %while.end, !dbg !746

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %dummy) #8, !dbg !750
  tail call void @llvm.dbg.declare(metadata ptr %dummy, metadata !665, metadata !DIExpression()), !dbg !751
  %input_frames17 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 2, !dbg !752
  %20 = load i64, ptr %input_frames17, align 8, !dbg !752, !tbaa !545
  %cmp18 = icmp eq i64 %20, 0, !dbg !753
  br i1 %cmp18, label %if.then19, label %if.end28, !dbg !754

if.then19:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #8, !dbg !755
  tail call void @llvm.dbg.declare(metadata ptr %ptr, metadata !670, metadata !DIExpression()), !dbg !756
  %arraydecay = getelementptr inbounds [1 x float], ptr %dummy, i64 0, i64 0, !dbg !757
  store ptr %arraydecay, ptr %ptr, align 8, !dbg !756, !tbaa !228
  %21 = load ptr, ptr %psrc, align 8, !dbg !758, !tbaa !228
  %callback_func20 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %21, i32 0, i32 9, !dbg !759
  %22 = load ptr, ptr %callback_func20, align 8, !dbg !759, !tbaa !439
  %23 = load ptr, ptr %psrc, align 8, !dbg !760, !tbaa !228
  %user_callback_data = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %23, i32 0, i32 10, !dbg !761
  %24 = load ptr, ptr %user_callback_data, align 8, !dbg !761, !tbaa !444
  %call21 = call i64 %22(ptr noundef %24, ptr noundef %ptr), !dbg !758
  %input_frames22 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 2, !dbg !762
  store i64 %call21, ptr %input_frames22, align 8, !dbg !763, !tbaa !545
  %25 = load ptr, ptr %ptr, align 8, !dbg !764, !tbaa !228
  %data_in23 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 0, !dbg !765
  store ptr %25, ptr %data_in23, align 8, !dbg !766, !tbaa !525
  %input_frames24 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 2, !dbg !767
  %26 = load i64, ptr %input_frames24, align 8, !dbg !767, !tbaa !545
  %cmp25 = icmp eq i64 %26, 0, !dbg !769
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !770

if.then26:                                        ; preds = %if.then19
  %end_of_input = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 6, !dbg !771
  store i32 1, ptr %end_of_input, align 8, !dbg !772, !tbaa !773
  br label %if.end27, !dbg !774

if.end27:                                         ; preds = %if.then26, %if.then19
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #8, !dbg !775
  br label %if.end28, !dbg !776

if.end28:                                         ; preds = %if.end27, %while.body
  %27 = load ptr, ptr %psrc, align 8, !dbg !777, !tbaa !228
  %mode29 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %27, i32 0, i32 4, !dbg !778
  store i32 555, ptr %mode29, align 8, !dbg !779, !tbaa !275
  %28 = load ptr, ptr %state.addr, align 8, !dbg !780, !tbaa !228
  %call30 = call i32 @src_process(ptr noundef %28, ptr noundef %src_data), !dbg !781
  store i32 %call30, ptr %error, align 4, !dbg !782, !tbaa !222
  %29 = load ptr, ptr %psrc, align 8, !dbg !783, !tbaa !228
  %mode31 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %29, i32 0, i32 4, !dbg !784
  store i32 556, ptr %mode31, align 8, !dbg !785, !tbaa !275
  %30 = load i32, ptr %error, align 4, !dbg !786, !tbaa !222
  %cmp32 = icmp ne i32 %30, 0, !dbg !788
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !789

if.then33:                                        ; preds = %if.end28
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !790

if.end34:                                         ; preds = %if.end28
  %input_frames_used = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 4, !dbg !791
  %31 = load i64, ptr %input_frames_used, align 8, !dbg !791, !tbaa !602
  %32 = load ptr, ptr %psrc, align 8, !dbg !792, !tbaa !228
  %channels = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %32, i32 0, i32 3, !dbg !793
  %33 = load i32, ptr %channels, align 4, !dbg !793, !tbaa !268
  %conv = sext i32 %33 to i64, !dbg !792
  %mul = mul nsw i64 %31, %conv, !dbg !794
  %data_in35 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 0, !dbg !795
  %34 = load ptr, ptr %data_in35, align 8, !dbg !796, !tbaa !525
  %add.ptr = getelementptr inbounds float, ptr %34, i64 %mul, !dbg !796
  store ptr %add.ptr, ptr %data_in35, align 8, !dbg !796, !tbaa !525
  %input_frames_used36 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 4, !dbg !797
  %35 = load i64, ptr %input_frames_used36, align 8, !dbg !797, !tbaa !602
  %input_frames37 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 2, !dbg !798
  %36 = load i64, ptr %input_frames37, align 8, !dbg !799, !tbaa !545
  %sub = sub nsw i64 %36, %35, !dbg !799
  store i64 %sub, ptr %input_frames37, align 8, !dbg !799, !tbaa !545
  %output_frames_gen38 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 5, !dbg !800
  %37 = load i64, ptr %output_frames_gen38, align 8, !dbg !800, !tbaa !606
  %38 = load ptr, ptr %psrc, align 8, !dbg !801, !tbaa !228
  %channels39 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %38, i32 0, i32 3, !dbg !802
  %39 = load i32, ptr %channels39, align 4, !dbg !802, !tbaa !268
  %conv40 = sext i32 %39 to i64, !dbg !801
  %mul41 = mul nsw i64 %37, %conv40, !dbg !803
  %data_out42 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 1, !dbg !804
  %40 = load ptr, ptr %data_out42, align 8, !dbg !805, !tbaa !531
  %add.ptr43 = getelementptr inbounds float, ptr %40, i64 %mul41, !dbg !805
  store ptr %add.ptr43, ptr %data_out42, align 8, !dbg !805, !tbaa !531
  %output_frames_gen44 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 5, !dbg !806
  %41 = load i64, ptr %output_frames_gen44, align 8, !dbg !806, !tbaa !606
  %output_frames45 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 3, !dbg !807
  %42 = load i64, ptr %output_frames45, align 8, !dbg !808, !tbaa !554
  %sub46 = sub nsw i64 %42, %41, !dbg !808
  store i64 %sub46, ptr %output_frames45, align 8, !dbg !808, !tbaa !554
  %output_frames_gen47 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 5, !dbg !809
  %43 = load i64, ptr %output_frames_gen47, align 8, !dbg !809, !tbaa !606
  %44 = load i64, ptr %output_frames_gen, align 8, !dbg !810, !tbaa !675
  %add = add nsw i64 %44, %43, !dbg !810
  store i64 %add, ptr %output_frames_gen, align 8, !dbg !810, !tbaa !675
  %end_of_input48 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 6, !dbg !811
  %45 = load i32, ptr %end_of_input48, align 8, !dbg !811, !tbaa !773
  %cmp49 = icmp eq i32 %45, 1, !dbg !813
  br i1 %cmp49, label %land.lhs.true, label %if.end55, !dbg !814

land.lhs.true:                                    ; preds = %if.end34
  %output_frames_gen51 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 5, !dbg !815
  %46 = load i64, ptr %output_frames_gen51, align 8, !dbg !815, !tbaa !606
  %cmp52 = icmp eq i64 %46, 0, !dbg !816
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !817

if.then54:                                        ; preds = %land.lhs.true
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !818

if.end55:                                         ; preds = %land.lhs.true, %if.end34
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !819
  br label %cleanup, !dbg !819

cleanup:                                          ; preds = %if.end55, %if.then54, %if.then33
  call void @llvm.lifetime.end.p0(i64 4, ptr %dummy) #8, !dbg !819
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !746, !llvm.loop !820

while.end:                                        ; preds = %cleanup, %while.cond
  %data_in56 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 0, !dbg !821
  %47 = load ptr, ptr %data_in56, align 8, !dbg !821, !tbaa !525
  %48 = load ptr, ptr %psrc, align 8, !dbg !822, !tbaa !228
  %saved_data57 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %48, i32 0, i32 12, !dbg !823
  store ptr %47, ptr %saved_data57, align 8, !dbg !824, !tbaa !374
  %input_frames58 = getelementptr inbounds %struct.SRC_DATA, ptr %src_data, i32 0, i32 2, !dbg !825
  %49 = load i64, ptr %input_frames58, align 8, !dbg !825, !tbaa !545
  %50 = load ptr, ptr %psrc, align 8, !dbg !826, !tbaa !228
  %saved_frames59 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %50, i32 0, i32 11, !dbg !827
  store i64 %49, ptr %saved_frames59, align 8, !dbg !828, !tbaa !378
  %51 = load i32, ptr %error, align 4, !dbg !829, !tbaa !222
  %cmp60 = icmp ne i32 %51, 0, !dbg !831
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !832

if.then62:                                        ; preds = %while.end
  %52 = load i32, ptr %error, align 4, !dbg !833, !tbaa !222
  %53 = load ptr, ptr %psrc, align 8, !dbg !835, !tbaa !228
  %error63 = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %53, i32 0, i32 2, !dbg !836
  store i32 %52, ptr %error63, align 8, !dbg !837, !tbaa !382
  store i64 0, ptr %retval, align 8, !dbg !838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !838

if.end64:                                         ; preds = %while.end
  %54 = load i64, ptr %output_frames_gen, align 8, !dbg !839, !tbaa !675
  store i64 %54, ptr %retval, align 8, !dbg !840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup65, !dbg !840

cleanup65:                                        ; preds = %if.end64, %if.then62, %if.then12, %if.then9, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #8, !dbg !841
  call void @llvm.lifetime.end.p0(i64 8, ptr %output_frames_gen) #8, !dbg !841
  call void @llvm.lifetime.end.p0(i64 64, ptr %src_data) #8, !dbg !841
  call void @llvm.lifetime.end.p0(i64 8, ptr %psrc) #8, !dbg !841
  %55 = load i64, ptr %retval, align 8, !dbg !841
  ret i64 %55, !dbg !841

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @src_set_ratio(ptr noundef %state, double noundef %new_ratio) #0 !dbg !842 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %new_ratio.addr = alloca double, align 8
  %psrc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !846, metadata !DIExpression()), !dbg !849
  store double %new_ratio, ptr %new_ratio.addr, align 8, !tbaa !645
  tail call void @llvm.dbg.declare(metadata ptr %new_ratio.addr, metadata !847, metadata !DIExpression()), !dbg !850
  call void @llvm.lifetime.start.p0(i64 8, ptr %psrc) #8, !dbg !851
  tail call void @llvm.dbg.declare(metadata ptr %psrc, metadata !848, metadata !DIExpression()), !dbg !852
  %0 = load ptr, ptr %state.addr, align 8, !dbg !853, !tbaa !228
  store ptr %0, ptr %psrc, align 8, !dbg !854, !tbaa !228
  %1 = load ptr, ptr %psrc, align 8, !dbg !855, !tbaa !228
  %cmp = icmp eq ptr %1, null, !dbg !857
  br i1 %cmp, label %if.then, label %if.end, !dbg !858

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !859

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %psrc, align 8, !dbg !860, !tbaa !228
  %vari_process = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %2, i32 0, i32 6, !dbg !862
  %3 = load ptr, ptr %vari_process, align 8, !dbg !862, !tbaa !502
  %cmp1 = icmp eq ptr %3, null, !dbg !863
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !864

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %psrc, align 8, !dbg !865, !tbaa !228
  %const_process = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %4, i32 0, i32 7, !dbg !866
  %5 = load ptr, ptr %const_process, align 8, !dbg !866, !tbaa !507
  %cmp2 = icmp eq ptr %5, null, !dbg !867
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !868

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 7, ptr %retval, align 4, !dbg !869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !869

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load double, ptr %new_ratio.addr, align 8, !dbg !870, !tbaa !645
  %call = call i32 @is_bad_src_ratio(double noundef %6), !dbg !872
  %tobool = icmp ne i32 %call, 0, !dbg !872
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !873

if.then5:                                         ; preds = %if.end4
  store i32 6, ptr %retval, align 4, !dbg !874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !874

if.end6:                                          ; preds = %if.end4
  %7 = load double, ptr %new_ratio.addr, align 8, !dbg !875, !tbaa !645
  %8 = load ptr, ptr %psrc, align 8, !dbg !876, !tbaa !228
  %last_ratio = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %8, i32 0, i32 0, !dbg !877
  store double %7, ptr %last_ratio, align 8, !dbg !878, !tbaa !370
  store i32 0, ptr %retval, align 4, !dbg !879
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !879

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %psrc) #8, !dbg !880
  %9 = load i32, ptr %retval, align 4, !dbg !880
  ret i32 %9, !dbg !880
}

; Function Attrs: nounwind uwtable
define i32 @src_get_channels(ptr noundef %state) #0 !dbg !881 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %psrc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !883, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 8, ptr %psrc) #8, !dbg !886
  tail call void @llvm.dbg.declare(metadata ptr %psrc, metadata !884, metadata !DIExpression()), !dbg !887
  %0 = load ptr, ptr %state.addr, align 8, !dbg !888, !tbaa !228
  store ptr %0, ptr %psrc, align 8, !dbg !889, !tbaa !228
  %1 = load ptr, ptr %psrc, align 8, !dbg !890, !tbaa !228
  %cmp = icmp eq ptr %1, null, !dbg !892
  br i1 %cmp, label %if.then, label %if.end, !dbg !893

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !894

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %psrc, align 8, !dbg !895, !tbaa !228
  %vari_process = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %2, i32 0, i32 6, !dbg !897
  %3 = load ptr, ptr %vari_process, align 8, !dbg !897, !tbaa !502
  %cmp1 = icmp eq ptr %3, null, !dbg !898
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !899

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %psrc, align 8, !dbg !900, !tbaa !228
  %const_process = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %4, i32 0, i32 7, !dbg !901
  %5 = load ptr, ptr %const_process, align 8, !dbg !901, !tbaa !507
  %cmp2 = icmp eq ptr %5, null, !dbg !902
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !903

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 7, ptr %retval, align 4, !dbg !904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !904

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %psrc, align 8, !dbg !905, !tbaa !228
  %channels = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %6, i32 0, i32 3, !dbg !906
  %7 = load i32, ptr %channels, align 4, !dbg !906, !tbaa !268
  store i32 %7, ptr %retval, align 4, !dbg !907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !907

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %psrc) #8, !dbg !908
  %8 = load i32, ptr %retval, align 4, !dbg !908
  ret i32 %8, !dbg !908
}

; Function Attrs: nounwind uwtable
define ptr @src_get_name(i32 noundef %converter_type) #0 !dbg !909 {
entry:
  %retval = alloca ptr, align 8
  %converter_type.addr = alloca i32, align 4
  %desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %converter_type, ptr %converter_type.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %converter_type.addr, metadata !915, metadata !DIExpression()), !dbg !917
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #8, !dbg !918
  tail call void @llvm.dbg.declare(metadata ptr %desc, metadata !916, metadata !DIExpression()), !dbg !919
  %0 = load i32, ptr %converter_type.addr, align 4, !dbg !920, !tbaa !222
  %call = call ptr @sinc_get_name(i32 noundef %0), !dbg !922
  store ptr %call, ptr %desc, align 8, !dbg !923, !tbaa !228
  %cmp = icmp ne ptr %call, null, !dbg !924
  br i1 %cmp, label %if.then, label %if.end, !dbg !925

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %desc, align 8, !dbg !926, !tbaa !228
  store ptr %1, ptr %retval, align 8, !dbg !927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !927

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %converter_type.addr, align 4, !dbg !928, !tbaa !222
  %call1 = call ptr @zoh_get_name(i32 noundef %2), !dbg !930
  store ptr %call1, ptr %desc, align 8, !dbg !931, !tbaa !228
  %cmp2 = icmp ne ptr %call1, null, !dbg !932
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !933

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %desc, align 8, !dbg !934, !tbaa !228
  store ptr %3, ptr %retval, align 8, !dbg !935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !935

if.end4:                                          ; preds = %if.end
  %4 = load i32, ptr %converter_type.addr, align 4, !dbg !936, !tbaa !222
  %call5 = call ptr @linear_get_name(i32 noundef %4), !dbg !938
  store ptr %call5, ptr %desc, align 8, !dbg !939, !tbaa !228
  %cmp6 = icmp ne ptr %call5, null, !dbg !940
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !941

if.then7:                                         ; preds = %if.end4
  %5 = load ptr, ptr %desc, align 8, !dbg !942, !tbaa !228
  store ptr %5, ptr %retval, align 8, !dbg !943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !943

if.end8:                                          ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !944

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #8, !dbg !945
  %6 = load ptr, ptr %retval, align 8, !dbg !945
  ret ptr %6, !dbg !945
}

declare !dbg !946 ptr @sinc_get_name(i32 noundef) #7

declare !dbg !947 ptr @zoh_get_name(i32 noundef) #7

declare !dbg !948 ptr @linear_get_name(i32 noundef) #7

; Function Attrs: nounwind uwtable
define ptr @src_get_description(i32 noundef %converter_type) #0 !dbg !949 {
entry:
  %retval = alloca ptr, align 8
  %converter_type.addr = alloca i32, align 4
  %desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %converter_type, ptr %converter_type.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %converter_type.addr, metadata !951, metadata !DIExpression()), !dbg !953
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #8, !dbg !954
  tail call void @llvm.dbg.declare(metadata ptr %desc, metadata !952, metadata !DIExpression()), !dbg !955
  %0 = load i32, ptr %converter_type.addr, align 4, !dbg !956, !tbaa !222
  %call = call ptr @sinc_get_description(i32 noundef %0), !dbg !958
  store ptr %call, ptr %desc, align 8, !dbg !959, !tbaa !228
  %cmp = icmp ne ptr %call, null, !dbg !960
  br i1 %cmp, label %if.then, label %if.end, !dbg !961

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %desc, align 8, !dbg !962, !tbaa !228
  store ptr %1, ptr %retval, align 8, !dbg !963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !963

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %converter_type.addr, align 4, !dbg !964, !tbaa !222
  %call1 = call ptr @zoh_get_description(i32 noundef %2), !dbg !966
  store ptr %call1, ptr %desc, align 8, !dbg !967, !tbaa !228
  %cmp2 = icmp ne ptr %call1, null, !dbg !968
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !969

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %desc, align 8, !dbg !970, !tbaa !228
  store ptr %3, ptr %retval, align 8, !dbg !971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !971

if.end4:                                          ; preds = %if.end
  %4 = load i32, ptr %converter_type.addr, align 4, !dbg !972, !tbaa !222
  %call5 = call ptr @linear_get_description(i32 noundef %4), !dbg !974
  store ptr %call5, ptr %desc, align 8, !dbg !975, !tbaa !228
  %cmp6 = icmp ne ptr %call5, null, !dbg !976
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !977

if.then7:                                         ; preds = %if.end4
  %5 = load ptr, ptr %desc, align 8, !dbg !978, !tbaa !228
  store ptr %5, ptr %retval, align 8, !dbg !979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !979

if.end8:                                          ; preds = %if.end4
  store ptr null, ptr %retval, align 8, !dbg !980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !980

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #8, !dbg !981
  %6 = load ptr, ptr %retval, align 8, !dbg !981
  ret ptr %6, !dbg !981
}

declare !dbg !982 ptr @sinc_get_description(i32 noundef) #7

declare !dbg !983 ptr @zoh_get_description(i32 noundef) #7

declare !dbg !984 ptr @linear_get_description(i32 noundef) #7

; Function Attrs: nounwind uwtable
define ptr @src_get_version() #0 !dbg !985 {
entry:
  ret ptr @.str, !dbg !988
}

; Function Attrs: nounwind uwtable
define i32 @src_is_valid_ratio(double noundef %ratio) #0 !dbg !989 {
entry:
  %retval = alloca i32, align 4
  %ratio.addr = alloca double, align 8
  store double %ratio, ptr %ratio.addr, align 8, !tbaa !645
  tail call void @llvm.dbg.declare(metadata ptr %ratio.addr, metadata !991, metadata !DIExpression()), !dbg !992
  %0 = load double, ptr %ratio.addr, align 8, !dbg !993, !tbaa !645
  %call = call i32 @is_bad_src_ratio(double noundef %0), !dbg !995
  %tobool = icmp ne i32 %call, 0, !dbg !995
  br i1 %tobool, label %if.then, label %if.end, !dbg !996

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !997
  br label %return, !dbg !997

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !998
  br label %return, !dbg !998

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !999
  ret i32 %1, !dbg !999
}

; Function Attrs: nounwind uwtable
define i32 @src_error(ptr noundef %state) #0 !dbg !1000 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1002, metadata !DIExpression()), !dbg !1003
  %0 = load ptr, ptr %state.addr, align 8, !dbg !1004, !tbaa !228
  %tobool = icmp ne ptr %0, null, !dbg !1004
  br i1 %tobool, label %if.then, label %if.end, !dbg !1006

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8, !dbg !1007, !tbaa !228
  %error = getelementptr inbounds %struct.SRC_PRIVATE_tag, ptr %1, i32 0, i32 2, !dbg !1008
  %2 = load i32, ptr %error, align 8, !dbg !1008, !tbaa !382
  store i32 %2, ptr %retval, align 4, !dbg !1009
  br label %return, !dbg !1009

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1010
  br label %return, !dbg !1010

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !1011
  ret i32 %3, !dbg !1011
}

; Function Attrs: nounwind uwtable
define ptr @src_strerror(i32 noundef %error) #0 !dbg !1012 {
entry:
  %retval = alloca ptr, align 8
  %error.addr = alloca i32, align 4
  store i32 %error, ptr %error.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !1014, metadata !DIExpression()), !dbg !1015
  %0 = load i32, ptr %error.addr, align 4, !dbg !1016, !tbaa !222
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 15, label %sw.bb7
    i32 7, label %sw.bb8
    i32 8, label %sw.bb9
    i32 9, label %sw.bb10
    i32 10, label %sw.bb11
    i32 11, label %sw.bb12
    i32 12, label %sw.bb13
    i32 13, label %sw.bb14
    i32 14, label %sw.bb15
    i32 16, label %sw.bb16
    i32 17, label %sw.bb17
    i32 18, label %sw.bb18
    i32 19, label %sw.bb19
    i32 20, label %sw.bb20
    i32 21, label %sw.bb21
    i32 22, label %sw.bb22
    i32 23, label %sw.bb23
  ], !dbg !1017

sw.bb:                                            ; preds = %entry
  store ptr @.str.1, ptr %retval, align 8, !dbg !1018
  br label %return, !dbg !1018

sw.bb1:                                           ; preds = %entry
  store ptr @.str.2, ptr %retval, align 8, !dbg !1020
  br label %return, !dbg !1020

sw.bb2:                                           ; preds = %entry
  store ptr @.str.3, ptr %retval, align 8, !dbg !1021
  br label %return, !dbg !1021

sw.bb3:                                           ; preds = %entry
  store ptr @.str.4, ptr %retval, align 8, !dbg !1022
  br label %return, !dbg !1022

sw.bb4:                                           ; preds = %entry
  store ptr @.str.5, ptr %retval, align 8, !dbg !1023
  br label %return, !dbg !1023

sw.bb5:                                           ; preds = %entry
  store ptr @.str.6, ptr %retval, align 8, !dbg !1024
  br label %return, !dbg !1024

sw.bb6:                                           ; preds = %entry
  store ptr @.str.7, ptr %retval, align 8, !dbg !1025
  br label %return, !dbg !1025

sw.bb7:                                           ; preds = %entry
  store ptr @.str.8, ptr %retval, align 8, !dbg !1026
  br label %return, !dbg !1026

sw.bb8:                                           ; preds = %entry
  store ptr @.str.9, ptr %retval, align 8, !dbg !1027
  br label %return, !dbg !1027

sw.bb9:                                           ; preds = %entry
  store ptr @.str.10, ptr %retval, align 8, !dbg !1028
  br label %return, !dbg !1028

sw.bb10:                                          ; preds = %entry
  store ptr @.str.11, ptr %retval, align 8, !dbg !1029
  br label %return, !dbg !1029

sw.bb11:                                          ; preds = %entry
  store ptr @.str.12, ptr %retval, align 8, !dbg !1030
  br label %return, !dbg !1030

sw.bb12:                                          ; preds = %entry
  store ptr @.str.13, ptr %retval, align 8, !dbg !1031
  br label %return, !dbg !1031

sw.bb13:                                          ; preds = %entry
  store ptr @.str.14, ptr %retval, align 8, !dbg !1032
  br label %return, !dbg !1032

sw.bb14:                                          ; preds = %entry
  store ptr @.str.15, ptr %retval, align 8, !dbg !1033
  br label %return, !dbg !1033

sw.bb15:                                          ; preds = %entry
  store ptr @.str.16, ptr %retval, align 8, !dbg !1034
  br label %return, !dbg !1034

sw.bb16:                                          ; preds = %entry
  store ptr @.str.17, ptr %retval, align 8, !dbg !1035
  br label %return, !dbg !1035

sw.bb17:                                          ; preds = %entry
  store ptr @.str.18, ptr %retval, align 8, !dbg !1036
  br label %return, !dbg !1036

sw.bb18:                                          ; preds = %entry
  store ptr @.str.19, ptr %retval, align 8, !dbg !1037
  br label %return, !dbg !1037

sw.bb19:                                          ; preds = %entry
  store ptr @.str.20, ptr %retval, align 8, !dbg !1038
  br label %return, !dbg !1038

sw.bb20:                                          ; preds = %entry
  store ptr @.str.21, ptr %retval, align 8, !dbg !1039
  br label %return, !dbg !1039

sw.bb21:                                          ; preds = %entry
  store ptr @.str.22, ptr %retval, align 8, !dbg !1040
  br label %return, !dbg !1040

sw.bb22:                                          ; preds = %entry
  store ptr @.str.23, ptr %retval, align 8, !dbg !1041
  br label %return, !dbg !1041

sw.bb23:                                          ; preds = %entry
  store ptr @.str.24, ptr %retval, align 8, !dbg !1042
  br label %return, !dbg !1042

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1043

sw.epilog:                                        ; preds = %sw.default
  store ptr null, ptr %retval, align 8, !dbg !1044
  br label %return, !dbg !1044

return:                                           ; preds = %sw.epilog, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %retval, align 8, !dbg !1045
  ret ptr %1, !dbg !1045
}

; Function Attrs: nounwind uwtable
define i32 @src_simple(ptr noundef %src_data, i32 noundef %converter, i32 noundef %channels) #0 !dbg !1046 {
entry:
  %retval = alloca i32, align 4
  %src_data.addr = alloca ptr, align 8
  %converter.addr = alloca i32, align 4
  %channels.addr = alloca i32, align 4
  %src_state = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src_data, ptr %src_data.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %src_data.addr, metadata !1050, metadata !DIExpression()), !dbg !1055
  store i32 %converter, ptr %converter.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %converter.addr, metadata !1051, metadata !DIExpression()), !dbg !1056
  store i32 %channels, ptr %channels.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %channels.addr, metadata !1052, metadata !DIExpression()), !dbg !1057
  call void @llvm.lifetime.start.p0(i64 8, ptr %src_state) #8, !dbg !1058
  tail call void @llvm.dbg.declare(metadata ptr %src_state, metadata !1053, metadata !DIExpression()), !dbg !1059
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #8, !dbg !1060
  tail call void @llvm.dbg.declare(metadata ptr %error, metadata !1054, metadata !DIExpression()), !dbg !1061
  %0 = load i32, ptr %converter.addr, align 4, !dbg !1062, !tbaa !222
  %1 = load i32, ptr %channels.addr, align 4, !dbg !1064, !tbaa !222
  %call = call ptr @src_new(i32 noundef %0, i32 noundef %1, ptr noundef %error), !dbg !1065
  store ptr %call, ptr %src_state, align 8, !dbg !1066, !tbaa !228
  %cmp = icmp eq ptr %call, null, !dbg !1067
  br i1 %cmp, label %if.then, label %if.end, !dbg !1068

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !1069, !tbaa !222
  store i32 %2, ptr %retval, align 4, !dbg !1070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1070

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %src_data.addr, align 8, !dbg !1071, !tbaa !228
  %end_of_input = getelementptr inbounds %struct.SRC_DATA, ptr %3, i32 0, i32 6, !dbg !1072
  store i32 1, ptr %end_of_input, align 8, !dbg !1073, !tbaa !773
  %4 = load ptr, ptr %src_state, align 8, !dbg !1074, !tbaa !228
  %5 = load ptr, ptr %src_data.addr, align 8, !dbg !1075, !tbaa !228
  %call1 = call i32 @src_process(ptr noundef %4, ptr noundef %5), !dbg !1076
  store i32 %call1, ptr %error, align 4, !dbg !1077, !tbaa !222
  %6 = load ptr, ptr %src_state, align 8, !dbg !1078, !tbaa !228
  %call2 = call ptr @src_delete(ptr noundef %6), !dbg !1079
  %7 = load i32, ptr %error, align 4, !dbg !1080, !tbaa !222
  store i32 %7, ptr %retval, align 4, !dbg !1081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1081

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #8, !dbg !1082
  call void @llvm.lifetime.end.p0(i64 8, ptr %src_state) #8, !dbg !1082
  %8 = load i32, ptr %retval, align 4, !dbg !1082
  ret i32 %8, !dbg !1082
}

; Function Attrs: nounwind uwtable
define void @src_short_to_float_array(ptr noundef %in, ptr noundef %out, i32 noundef %len) #0 !dbg !1083 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !1089, metadata !DIExpression()), !dbg !1092
  store ptr %out, ptr %out.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1090, metadata !DIExpression()), !dbg !1093
  store i32 %len, ptr %len.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1091, metadata !DIExpression()), !dbg !1094
  br label %while.cond, !dbg !1095

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %len.addr, align 4, !dbg !1096, !tbaa !222
  %tobool = icmp ne i32 %0, 0, !dbg !1095
  br i1 %tobool, label %while.body, label %while.end, !dbg !1095

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %len.addr, align 4, !dbg !1097, !tbaa !222
  %dec = add nsw i32 %1, -1, !dbg !1097
  store i32 %dec, ptr %len.addr, align 4, !dbg !1097, !tbaa !222
  %2 = load ptr, ptr %in.addr, align 8, !dbg !1099, !tbaa !228
  %3 = load i32, ptr %len.addr, align 4, !dbg !1100, !tbaa !222
  %idxprom = sext i32 %3 to i64, !dbg !1099
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom, !dbg !1099
  %4 = load i16, ptr %arrayidx, align 2, !dbg !1099, !tbaa !1101
  %conv = sext i16 %4 to i32, !dbg !1099
  %conv1 = sitofp i32 %conv to double, !dbg !1099
  %div = fdiv double %conv1, 3.276800e+04, !dbg !1103
  %conv2 = fptrunc double %div to float, !dbg !1104
  %5 = load ptr, ptr %out.addr, align 8, !dbg !1105, !tbaa !228
  %6 = load i32, ptr %len.addr, align 4, !dbg !1106, !tbaa !222
  %idxprom3 = sext i32 %6 to i64, !dbg !1105
  %arrayidx4 = getelementptr inbounds float, ptr %5, i64 %idxprom3, !dbg !1105
  store float %conv2, ptr %arrayidx4, align 4, !dbg !1107, !tbaa !1108
  br label %while.cond, !dbg !1095, !llvm.loop !1110

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1112
}

; Function Attrs: nounwind uwtable
define void @src_float_to_short_array(ptr noundef %in, ptr noundef %out, i32 noundef %len) #0 !dbg !1113 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %scaled_value = alloca double, align 8
  store ptr %in, ptr %in.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !1118, metadata !DIExpression()), !dbg !1122
  store ptr %out, ptr %out.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1119, metadata !DIExpression()), !dbg !1123
  store i32 %len, ptr %len.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1120, metadata !DIExpression()), !dbg !1124
  call void @llvm.lifetime.start.p0(i64 8, ptr %scaled_value) #8, !dbg !1125
  tail call void @llvm.dbg.declare(metadata ptr %scaled_value, metadata !1121, metadata !DIExpression()), !dbg !1126
  br label %while.cond, !dbg !1127

while.cond:                                       ; preds = %if.end9, %if.then6, %if.then, %entry
  %0 = load i32, ptr %len.addr, align 4, !dbg !1128, !tbaa !222
  %tobool = icmp ne i32 %0, 0, !dbg !1127
  br i1 %tobool, label %while.body, label %while.end, !dbg !1127

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %len.addr, align 4, !dbg !1129, !tbaa !222
  %dec = add nsw i32 %1, -1, !dbg !1129
  store i32 %dec, ptr %len.addr, align 4, !dbg !1129, !tbaa !222
  %2 = load ptr, ptr %in.addr, align 8, !dbg !1131, !tbaa !228
  %3 = load i32, ptr %len.addr, align 4, !dbg !1132, !tbaa !222
  %idxprom = sext i32 %3 to i64, !dbg !1131
  %arrayidx = getelementptr inbounds float, ptr %2, i64 %idxprom, !dbg !1131
  %4 = load float, ptr %arrayidx, align 4, !dbg !1131, !tbaa !1108
  %conv = fpext float %4 to double, !dbg !1131
  %mul = fmul double %conv, 0x41E0000000000000, !dbg !1133
  store double %mul, ptr %scaled_value, align 8, !dbg !1134, !tbaa !645
  %5 = load double, ptr %scaled_value, align 8, !dbg !1135, !tbaa !645
  %cmp = fcmp oge double %5, 0x41DFFFFFFFC00000, !dbg !1137
  br i1 %cmp, label %if.then, label %if.end, !dbg !1138

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %out.addr, align 8, !dbg !1139, !tbaa !228
  %7 = load i32, ptr %len.addr, align 4, !dbg !1141, !tbaa !222
  %idxprom2 = sext i32 %7 to i64, !dbg !1139
  %arrayidx3 = getelementptr inbounds i16, ptr %6, i64 %idxprom2, !dbg !1139
  store i16 32767, ptr %arrayidx3, align 2, !dbg !1142, !tbaa !1101
  br label %while.cond, !dbg !1143, !llvm.loop !1144

if.end:                                           ; preds = %while.body
  %8 = load double, ptr %scaled_value, align 8, !dbg !1146, !tbaa !645
  %cmp4 = fcmp ole double %8, 0xC1E0000000000000, !dbg !1148
  br i1 %cmp4, label %if.then6, label %if.end9, !dbg !1149

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %out.addr, align 8, !dbg !1150, !tbaa !228
  %10 = load i32, ptr %len.addr, align 4, !dbg !1152, !tbaa !222
  %idxprom7 = sext i32 %10 to i64, !dbg !1150
  %arrayidx8 = getelementptr inbounds i16, ptr %9, i64 %idxprom7, !dbg !1150
  store i16 -32768, ptr %arrayidx8, align 2, !dbg !1153, !tbaa !1101
  br label %while.cond, !dbg !1154, !llvm.loop !1144

if.end9:                                          ; preds = %if.end
  %11 = load double, ptr %scaled_value, align 8, !dbg !1155, !tbaa !645
  %call = call i64 @lrint(double noundef %11) #8, !dbg !1156
  %shr = ashr i64 %call, 16, !dbg !1157
  %conv10 = trunc i64 %shr to i16, !dbg !1158
  %12 = load ptr, ptr %out.addr, align 8, !dbg !1159, !tbaa !228
  %13 = load i32, ptr %len.addr, align 4, !dbg !1160, !tbaa !222
  %idxprom11 = sext i32 %13 to i64, !dbg !1159
  %arrayidx12 = getelementptr inbounds i16, ptr %12, i64 %idxprom11, !dbg !1159
  store i16 %conv10, ptr %arrayidx12, align 2, !dbg !1161, !tbaa !1101
  br label %while.cond, !dbg !1127, !llvm.loop !1144

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %scaled_value) #8, !dbg !1162
  ret void, !dbg !1162
}

; Function Attrs: nounwind
declare !dbg !1163 i64 @lrint(double noundef) #3

; Function Attrs: nounwind uwtable
define void @src_int_to_float_array(ptr noundef %in, ptr noundef %out, i32 noundef %len) #0 !dbg !1167 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !1173, metadata !DIExpression()), !dbg !1176
  store ptr %out, ptr %out.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1174, metadata !DIExpression()), !dbg !1177
  store i32 %len, ptr %len.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1175, metadata !DIExpression()), !dbg !1178
  br label %while.cond, !dbg !1179

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %len.addr, align 4, !dbg !1180, !tbaa !222
  %tobool = icmp ne i32 %0, 0, !dbg !1179
  br i1 %tobool, label %while.body, label %while.end, !dbg !1179

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %len.addr, align 4, !dbg !1181, !tbaa !222
  %dec = add nsw i32 %1, -1, !dbg !1181
  store i32 %dec, ptr %len.addr, align 4, !dbg !1181, !tbaa !222
  %2 = load ptr, ptr %in.addr, align 8, !dbg !1183, !tbaa !228
  %3 = load i32, ptr %len.addr, align 4, !dbg !1184, !tbaa !222
  %idxprom = sext i32 %3 to i64, !dbg !1183
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !1183
  %4 = load i32, ptr %arrayidx, align 4, !dbg !1183, !tbaa !222
  %conv = sitofp i32 %4 to double, !dbg !1183
  %div = fdiv double %conv, 0x41E0000000000000, !dbg !1185
  %conv1 = fptrunc double %div to float, !dbg !1186
  %5 = load ptr, ptr %out.addr, align 8, !dbg !1187, !tbaa !228
  %6 = load i32, ptr %len.addr, align 4, !dbg !1188, !tbaa !222
  %idxprom2 = sext i32 %6 to i64, !dbg !1187
  %arrayidx3 = getelementptr inbounds float, ptr %5, i64 %idxprom2, !dbg !1187
  store float %conv1, ptr %arrayidx3, align 4, !dbg !1189, !tbaa !1108
  br label %while.cond, !dbg !1179, !llvm.loop !1190

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1192
}

; Function Attrs: nounwind uwtable
define void @src_float_to_int_array(ptr noundef %in, ptr noundef %out, i32 noundef %len) #0 !dbg !1193 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %scaled_value = alloca double, align 8
  store ptr %in, ptr %in.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !1197, metadata !DIExpression()), !dbg !1201
  store ptr %out, ptr %out.addr, align 8, !tbaa !228
  tail call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !1198, metadata !DIExpression()), !dbg !1202
  store i32 %len, ptr %len.addr, align 4, !tbaa !222
  tail call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !1199, metadata !DIExpression()), !dbg !1203
  call void @llvm.lifetime.start.p0(i64 8, ptr %scaled_value) #8, !dbg !1204
  tail call void @llvm.dbg.declare(metadata ptr %scaled_value, metadata !1200, metadata !DIExpression()), !dbg !1205
  br label %while.cond, !dbg !1206

while.cond:                                       ; preds = %if.end9, %if.then6, %if.then, %entry
  %0 = load i32, ptr %len.addr, align 4, !dbg !1207, !tbaa !222
  %tobool = icmp ne i32 %0, 0, !dbg !1206
  br i1 %tobool, label %while.body, label %while.end, !dbg !1206

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %len.addr, align 4, !dbg !1208, !tbaa !222
  %dec = add nsw i32 %1, -1, !dbg !1208
  store i32 %dec, ptr %len.addr, align 4, !dbg !1208, !tbaa !222
  %2 = load ptr, ptr %in.addr, align 8, !dbg !1210, !tbaa !228
  %3 = load i32, ptr %len.addr, align 4, !dbg !1211, !tbaa !222
  %idxprom = sext i32 %3 to i64, !dbg !1210
  %arrayidx = getelementptr inbounds float, ptr %2, i64 %idxprom, !dbg !1210
  %4 = load float, ptr %arrayidx, align 4, !dbg !1210, !tbaa !1108
  %conv = fpext float %4 to double, !dbg !1210
  %mul = fmul double %conv, 0x41E0000000000000, !dbg !1212
  store double %mul, ptr %scaled_value, align 8, !dbg !1213, !tbaa !645
  %5 = load double, ptr %scaled_value, align 8, !dbg !1214, !tbaa !645
  %cmp = fcmp oge double %5, 0x41DFFFFFFFC00000, !dbg !1216
  br i1 %cmp, label %if.then, label %if.end, !dbg !1217

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %out.addr, align 8, !dbg !1218, !tbaa !228
  %7 = load i32, ptr %len.addr, align 4, !dbg !1220, !tbaa !222
  %idxprom2 = sext i32 %7 to i64, !dbg !1218
  %arrayidx3 = getelementptr inbounds i32, ptr %6, i64 %idxprom2, !dbg !1218
  store i32 2147483647, ptr %arrayidx3, align 4, !dbg !1221, !tbaa !222
  br label %while.cond, !dbg !1222, !llvm.loop !1223

if.end:                                           ; preds = %while.body
  %8 = load double, ptr %scaled_value, align 8, !dbg !1225, !tbaa !645
  %cmp4 = fcmp ole double %8, 0xC1E0000000000000, !dbg !1227
  br i1 %cmp4, label %if.then6, label %if.end9, !dbg !1228

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %out.addr, align 8, !dbg !1229, !tbaa !228
  %10 = load i32, ptr %len.addr, align 4, !dbg !1231, !tbaa !222
  %idxprom7 = sext i32 %10 to i64, !dbg !1229
  %arrayidx8 = getelementptr inbounds i32, ptr %9, i64 %idxprom7, !dbg !1229
  store i32 -2147483648, ptr %arrayidx8, align 4, !dbg !1232, !tbaa !222
  br label %while.cond, !dbg !1233, !llvm.loop !1223

if.end9:                                          ; preds = %if.end
  %11 = load double, ptr %scaled_value, align 8, !dbg !1234, !tbaa !645
  %call = call i64 @lrint(double noundef %11) #8, !dbg !1235
  %conv10 = trunc i64 %call to i32, !dbg !1235
  %12 = load ptr, ptr %out.addr, align 8, !dbg !1236, !tbaa !228
  %13 = load i32, ptr %len.addr, align 4, !dbg !1237, !tbaa !222
  %idxprom11 = sext i32 %13 to i64, !dbg !1236
  %arrayidx12 = getelementptr inbounds i32, ptr %12, i64 %idxprom11, !dbg !1236
  store i32 %conv10, ptr %arrayidx12, align 4, !dbg !1238, !tbaa !222
  br label %while.cond, !dbg !1206, !llvm.loop !1223

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %scaled_value) #8, !dbg !1239
  ret void, !dbg !1239
}

declare !dbg !1240 i32 @sinc_set_converter(ptr noundef, i32 noundef) #7

declare !dbg !1241 i32 @zoh_set_converter(ptr noundef, i32 noundef) #7

declare !dbg !1242 i32 @linear_set_converter(ptr noundef, i32 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!115}
!llvm.module.flags = !{!207, !208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 349, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "samplerate.c", directory: "/local-ssd/libsamplerate-7ognhrgyu53tdwtmng3bd4pksqnapcxz-build/aidengro/spack-stage-libsamplerate-0.1.9-7ognhrgyu53tdwtmng3bd4pksqnapcxz/spack-src/src", checksumkind: CSK_MD5, checksum: "3e2acb7fa18ac0f43c7d663dcd336dca")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 54)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 379, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 15)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 381, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 27)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 383, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 26)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 385, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 49)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 387, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 33)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 390, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 38)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 55)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 395, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 36)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 397, type: !39, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 41)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 22)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 403, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 28)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !44, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 407, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 656, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 82)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 409, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 61)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !39, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 413, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 44)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 415, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 71)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 417, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 59)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 419, type: !44, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 421, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 48)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 423, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 51)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 426, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 53)
!115 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !116, retainedTypes: !151, globals: !206, splitDebugInlining: false, nameTableKind: None)
!116 = !{!117, !145}
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 62, baseType: !119, size: 32, elements: !120)
!118 = !DIFile(filename: "./common.h", directory: "/local-ssd/libsamplerate-7ognhrgyu53tdwtmng3bd4pksqnapcxz-build/aidengro/spack-stage-libsamplerate-0.1.9-7ognhrgyu53tdwtmng3bd4pksqnapcxz/spack-src/src", checksumkind: CSK_MD5, checksum: "af94f54890c37cba0b080de67ba84329")
!119 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!121 = !DIEnumerator(name: "SRC_ERR_NO_ERROR", value: 0)
!122 = !DIEnumerator(name: "SRC_ERR_MALLOC_FAILED", value: 1)
!123 = !DIEnumerator(name: "SRC_ERR_BAD_STATE", value: 2)
!124 = !DIEnumerator(name: "SRC_ERR_BAD_DATA", value: 3)
!125 = !DIEnumerator(name: "SRC_ERR_BAD_DATA_PTR", value: 4)
!126 = !DIEnumerator(name: "SRC_ERR_NO_PRIVATE", value: 5)
!127 = !DIEnumerator(name: "SRC_ERR_BAD_SRC_RATIO", value: 6)
!128 = !DIEnumerator(name: "SRC_ERR_BAD_PROC_PTR", value: 7)
!129 = !DIEnumerator(name: "SRC_ERR_SHIFT_BITS", value: 8)
!130 = !DIEnumerator(name: "SRC_ERR_FILTER_LEN", value: 9)
!131 = !DIEnumerator(name: "SRC_ERR_BAD_CONVERTER", value: 10)
!132 = !DIEnumerator(name: "SRC_ERR_BAD_CHANNEL_COUNT", value: 11)
!133 = !DIEnumerator(name: "SRC_ERR_SINC_BAD_BUFFER_LEN", value: 12)
!134 = !DIEnumerator(name: "SRC_ERR_SIZE_INCOMPATIBILITY", value: 13)
!135 = !DIEnumerator(name: "SRC_ERR_BAD_PRIV_PTR", value: 14)
!136 = !DIEnumerator(name: "SRC_ERR_BAD_SINC_STATE", value: 15)
!137 = !DIEnumerator(name: "SRC_ERR_DATA_OVERLAP", value: 16)
!138 = !DIEnumerator(name: "SRC_ERR_BAD_CALLBACK", value: 17)
!139 = !DIEnumerator(name: "SRC_ERR_BAD_MODE", value: 18)
!140 = !DIEnumerator(name: "SRC_ERR_NULL_CALLBACK", value: 19)
!141 = !DIEnumerator(name: "SRC_ERR_NO_VARIABLE_RATIO", value: 20)
!142 = !DIEnumerator(name: "SRC_ERR_SINC_PREPARE_DATA_BAD_LEN", value: 21)
!143 = !DIEnumerator(name: "SRC_ERR_BAD_INTERNAL_STATE", value: 22)
!144 = !DIEnumerator(name: "SRC_ERR_MAX_ERROR", value: 23)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 54, baseType: !119, size: 32, elements: !146)
!146 = !{!147, !148, !149, !150}
!147 = !DIEnumerator(name: "SRC_FALSE", value: 0)
!148 = !DIEnumerator(name: "SRC_TRUE", value: 1)
!149 = !DIEnumerator(name: "SRC_MODE_PROCESS", value: 555)
!150 = !DIEnumerator(name: "SRC_MODE_CALLBACK", value: 556)
!151 = !{!152, !153, !157, !181, !205}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRC_STATE", file: !155, line: 23, baseType: !156)
!155 = !DIFile(filename: "./samplerate.h", directory: "/local-ssd/libsamplerate-7ognhrgyu53tdwtmng3bd4pksqnapcxz-build/aidengro/spack-stage-libsamplerate-0.1.9-7ognhrgyu53tdwtmng3bd4pksqnapcxz/spack-src/src", checksumkind: CSK_MD5, checksum: "df663b9c0c4943a64ee8f8faf7c9eb40")
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "SRC_STATE_tag", file: !155, line: 23, flags: DIFlagFwdDecl)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRC_PRIVATE", file: !118, line: 118, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SRC_PRIVATE_tag", file: !118, line: 92, size: 768, elements: !160)
!160 = !{!161, !163, !164, !166, !167, !168, !169, !191, !192, !196, !202, !203, !204}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "last_ratio", scope: !159, file: !118, line: 93, baseType: !162, size: 64)
!162 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "last_position", scope: !159, file: !118, line: 93, baseType: !162, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !159, file: !118, line: 95, baseType: !165, size: 32, offset: 128)
!165 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !159, file: !118, line: 96, baseType: !165, size: 32, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !159, file: !118, line: 99, baseType: !165, size: 32, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !159, file: !118, line: 102, baseType: !152, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "vari_process", scope: !159, file: !118, line: 105, baseType: !170, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!165, !173, !174}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "SRC_DATA", file: !155, line: 36, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !155, line: 26, size: 512, elements: !177)
!177 = !{!178, !182, !184, !186, !187, !188, !189, !190}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "data_in", scope: !176, file: !155, line: 27, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "data_out", scope: !176, file: !155, line: 28, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "input_frames", scope: !176, file: !155, line: 30, baseType: !185, size: 64, offset: 128)
!185 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "output_frames", scope: !176, file: !155, line: 30, baseType: !185, size: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "input_frames_used", scope: !176, file: !155, line: 31, baseType: !185, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "output_frames_gen", scope: !176, file: !155, line: 31, baseType: !185, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "end_of_input", scope: !176, file: !155, line: 33, baseType: !165, size: 32, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "src_ratio", scope: !176, file: !155, line: 35, baseType: !162, size: 64, offset: 448)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "const_process", scope: !159, file: !118, line: 108, baseType: !170, size: 64, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !159, file: !118, line: 111, baseType: !193, size: 64, offset: 448)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !173}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "callback_func", scope: !159, file: !118, line: 114, baseType: !197, size: 64, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "src_callback_t", file: !155, line: 47, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!185, !152, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "user_callback_data", scope: !159, file: !118, line: 115, baseType: !152, size: 64, offset: 576)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "saved_frames", scope: !159, file: !118, line: 116, baseType: !185, size: 64, offset: 640)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "saved_data", scope: !159, file: !118, line: 117, baseType: !179, size: 64, offset: 704)
!205 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!206 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !54, !59, !64, !69, !71, !76, !81, !83, !88, !93, !98, !100, !105, !110}
!207 = !{i32 7, !"Dwarf Version", i32 5}
!208 = !{i32 2, !"Debug Info Version", i32 3}
!209 = !{i32 1, !"wchar_size", i32 4}
!210 = !{i32 8, !"PIC Level", i32 2}
!211 = !{i32 7, !"uwtable", i32 2}
!212 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!213 = distinct !DISubprogram(name: "src_new", scope: !2, file: !2, line: 23, type: !214, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !217)
!214 = !DISubroutineType(types: !215)
!215 = !{!153, !165, !165, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!217 = !{!218, !219, !220, !221}
!218 = !DILocalVariable(name: "converter_type", arg: 1, scope: !213, file: !2, line: 23, type: !165)
!219 = !DILocalVariable(name: "channels", arg: 2, scope: !213, file: !2, line: 23, type: !165)
!220 = !DILocalVariable(name: "error", arg: 3, scope: !213, file: !2, line: 23, type: !216)
!221 = !DILocalVariable(name: "psrc", scope: !213, file: !2, line: 24, type: !157)
!222 = !{!223, !223, i64 0}
!223 = !{!"int", !224, i64 0}
!224 = !{!"omnipotent char", !225, i64 0}
!225 = !{!"Simple C/C++ TBAA"}
!226 = !DILocation(line: 23, column: 14, scope: !213)
!227 = !DILocation(line: 23, column: 34, scope: !213)
!228 = !{!229, !229, i64 0}
!229 = !{!"any pointer", !224, i64 0}
!230 = !DILocation(line: 23, column: 49, scope: !213)
!231 = !DILocation(line: 24, column: 3, scope: !213)
!232 = !DILocation(line: 24, column: 16, scope: !213)
!233 = !DILocation(line: 26, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !213, file: !2, line: 26, column: 6)
!235 = !DILocation(line: 26, column: 6, scope: !213)
!236 = !DILocation(line: 27, column: 4, scope: !234)
!237 = !DILocation(line: 27, column: 10, scope: !234)
!238 = !DILocation(line: 27, column: 3, scope: !234)
!239 = !DILocation(line: 29, column: 6, scope: !240)
!240 = distinct !DILexicalBlock(scope: !213, file: !2, line: 29, column: 6)
!241 = !DILocation(line: 29, column: 15, scope: !240)
!242 = !DILocation(line: 29, column: 6, scope: !213)
!243 = !DILocation(line: 30, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !2, line: 30, column: 8)
!245 = distinct !DILexicalBlock(scope: !240, file: !2, line: 30, column: 2)
!246 = !DILocation(line: 30, column: 8, scope: !245)
!247 = !DILocation(line: 31, column: 5, scope: !244)
!248 = !DILocation(line: 31, column: 11, scope: !244)
!249 = !DILocation(line: 31, column: 4, scope: !244)
!250 = !DILocation(line: 32, column: 3, scope: !245)
!251 = !DILocation(line: 35, column: 14, scope: !252)
!252 = distinct !DILexicalBlock(scope: !213, file: !2, line: 35, column: 6)
!253 = !DILocation(line: 35, column: 12, scope: !252)
!254 = !DILocation(line: 35, column: 42, scope: !252)
!255 = !DILocation(line: 35, column: 6, scope: !213)
!256 = !DILocation(line: 36, column: 8, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !2, line: 36, column: 8)
!258 = distinct !DILexicalBlock(scope: !252, file: !2, line: 36, column: 2)
!259 = !DILocation(line: 36, column: 8, scope: !258)
!260 = !DILocation(line: 37, column: 5, scope: !257)
!261 = !DILocation(line: 37, column: 11, scope: !257)
!262 = !DILocation(line: 37, column: 4, scope: !257)
!263 = !DILocation(line: 38, column: 3, scope: !258)
!264 = !DILocation(line: 41, column: 19, scope: !213)
!265 = !DILocation(line: 41, column: 2, scope: !213)
!266 = !DILocation(line: 41, column: 8, scope: !213)
!267 = !DILocation(line: 41, column: 17, scope: !213)
!268 = !{!269, !223, i64 20}
!269 = !{!"SRC_PRIVATE_tag", !270, i64 0, !270, i64 8, !223, i64 16, !223, i64 20, !223, i64 24, !229, i64 32, !229, i64 40, !229, i64 48, !229, i64 56, !229, i64 64, !229, i64 72, !271, i64 80, !229, i64 88}
!270 = !{!"double", !224, i64 0}
!271 = !{!"long", !224, i64 0}
!272 = !DILocation(line: 42, column: 2, scope: !213)
!273 = !DILocation(line: 42, column: 8, scope: !213)
!274 = !DILocation(line: 42, column: 13, scope: !213)
!275 = !{!269, !223, i64 24}
!276 = !DILocation(line: 44, column: 26, scope: !277)
!277 = distinct !DILexicalBlock(scope: !213, file: !2, line: 44, column: 6)
!278 = !DILocation(line: 44, column: 32, scope: !277)
!279 = !DILocation(line: 44, column: 6, scope: !277)
!280 = !DILocation(line: 44, column: 48, scope: !277)
!281 = !DILocation(line: 44, column: 6, scope: !213)
!282 = !DILocation(line: 45, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !2, line: 45, column: 8)
!284 = distinct !DILexicalBlock(scope: !277, file: !2, line: 45, column: 2)
!285 = !DILocation(line: 45, column: 8, scope: !284)
!286 = !DILocation(line: 46, column: 5, scope: !283)
!287 = !DILocation(line: 46, column: 11, scope: !283)
!288 = !DILocation(line: 46, column: 4, scope: !283)
!289 = !DILocation(line: 47, column: 9, scope: !284)
!290 = !DILocation(line: 47, column: 3, scope: !284)
!291 = !DILocation(line: 48, column: 8, scope: !284)
!292 = !DILocation(line: 49, column: 3, scope: !284)
!293 = !DILocation(line: 51, column: 26, scope: !213)
!294 = !DILocation(line: 51, column: 2, scope: !213)
!295 = !DILocation(line: 53, column: 22, scope: !213)
!296 = !DILocation(line: 53, column: 2, scope: !213)
!297 = !DILocation(line: 54, column: 1, scope: !213)
!298 = !DISubprogram(name: "calloc", scope: !299, file: !299, line: 543, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!300 = !DISubroutineType(types: !301)
!301 = !{!152, !302, !302}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !303, line: 70, baseType: !304)
!303 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!304 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!305 = distinct !DISubprogram(name: "psrc_set_converter", scope: !2, file: !2, line: 527, type: !306, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!165, !157, !165}
!308 = !{!309, !310}
!309 = !DILocalVariable(name: "psrc", arg: 1, scope: !305, file: !2, line: 527, type: !157)
!310 = !DILocalVariable(name: "converter_type", arg: 2, scope: !305, file: !2, line: 527, type: !165)
!311 = !DILocation(line: 527, column: 34, scope: !305)
!312 = !DILocation(line: 527, column: 44, scope: !305)
!313 = !DILocation(line: 529, column: 26, scope: !314)
!314 = distinct !DILexicalBlock(scope: !305, file: !2, line: 529, column: 6)
!315 = !DILocation(line: 529, column: 32, scope: !314)
!316 = !DILocation(line: 529, column: 6, scope: !314)
!317 = !DILocation(line: 529, column: 48, scope: !314)
!318 = !DILocation(line: 529, column: 6, scope: !305)
!319 = !DILocation(line: 530, column: 3, scope: !314)
!320 = !DILocation(line: 532, column: 25, scope: !321)
!321 = distinct !DILexicalBlock(scope: !305, file: !2, line: 532, column: 6)
!322 = !DILocation(line: 532, column: 31, scope: !321)
!323 = !DILocation(line: 532, column: 6, scope: !321)
!324 = !DILocation(line: 532, column: 47, scope: !321)
!325 = !DILocation(line: 532, column: 6, scope: !305)
!326 = !DILocation(line: 533, column: 3, scope: !321)
!327 = !DILocation(line: 535, column: 28, scope: !328)
!328 = distinct !DILexicalBlock(scope: !305, file: !2, line: 535, column: 6)
!329 = !DILocation(line: 535, column: 34, scope: !328)
!330 = !DILocation(line: 535, column: 6, scope: !328)
!331 = !DILocation(line: 535, column: 50, scope: !328)
!332 = !DILocation(line: 535, column: 6, scope: !305)
!333 = !DILocation(line: 536, column: 3, scope: !328)
!334 = !DILocation(line: 538, column: 2, scope: !305)
!335 = !DILocation(line: 539, column: 1, scope: !305)
!336 = !DISubprogram(name: "free", scope: !299, file: !299, line: 555, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !152}
!339 = distinct !DISubprogram(name: "src_reset", scope: !2, file: !2, line: 291, type: !340, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!165, !153}
!342 = !{!343, !344}
!343 = !DILocalVariable(name: "state", arg: 1, scope: !339, file: !2, line: 291, type: !153)
!344 = !DILocalVariable(name: "psrc", scope: !339, file: !2, line: 292, type: !157)
!345 = !DILocation(line: 291, column: 23, scope: !339)
!346 = !DILocation(line: 292, column: 3, scope: !339)
!347 = !DILocation(line: 292, column: 16, scope: !339)
!348 = !DILocation(line: 294, column: 29, scope: !349)
!349 = distinct !DILexicalBlock(scope: !339, file: !2, line: 294, column: 6)
!350 = !DILocation(line: 294, column: 12, scope: !349)
!351 = !DILocation(line: 294, column: 36, scope: !349)
!352 = !DILocation(line: 294, column: 6, scope: !339)
!353 = !DILocation(line: 295, column: 3, scope: !349)
!354 = !DILocation(line: 297, column: 6, scope: !355)
!355 = distinct !DILexicalBlock(scope: !339, file: !2, line: 297, column: 6)
!356 = !DILocation(line: 297, column: 12, scope: !355)
!357 = !{!269, !229, i64 56}
!358 = !DILocation(line: 297, column: 18, scope: !355)
!359 = !DILocation(line: 297, column: 6, scope: !339)
!360 = !DILocation(line: 298, column: 3, scope: !355)
!361 = !DILocation(line: 298, column: 9, scope: !355)
!362 = !DILocation(line: 298, column: 16, scope: !355)
!363 = !DILocation(line: 300, column: 2, scope: !339)
!364 = !DILocation(line: 300, column: 8, scope: !339)
!365 = !DILocation(line: 300, column: 22, scope: !339)
!366 = !{!269, !270, i64 8}
!367 = !DILocation(line: 301, column: 2, scope: !339)
!368 = !DILocation(line: 301, column: 8, scope: !339)
!369 = !DILocation(line: 301, column: 19, scope: !339)
!370 = !{!269, !270, i64 0}
!371 = !DILocation(line: 303, column: 2, scope: !339)
!372 = !DILocation(line: 303, column: 8, scope: !339)
!373 = !DILocation(line: 303, column: 19, scope: !339)
!374 = !{!269, !229, i64 88}
!375 = !DILocation(line: 304, column: 2, scope: !339)
!376 = !DILocation(line: 304, column: 8, scope: !339)
!377 = !DILocation(line: 304, column: 21, scope: !339)
!378 = !{!269, !271, i64 80}
!379 = !DILocation(line: 306, column: 2, scope: !339)
!380 = !DILocation(line: 306, column: 8, scope: !339)
!381 = !DILocation(line: 306, column: 14, scope: !339)
!382 = !{!269, !223, i64 16}
!383 = !DILocation(line: 308, column: 2, scope: !339)
!384 = !DILocation(line: 309, column: 1, scope: !339)
!385 = distinct !DISubprogram(name: "src_callback_new", scope: !2, file: !2, line: 57, type: !386, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{!153, !197, !165, !165, !216, !152}
!388 = !{!389, !390, !391, !392, !393, !394}
!389 = !DILocalVariable(name: "func", arg: 1, scope: !385, file: !2, line: 57, type: !197)
!390 = !DILocalVariable(name: "converter_type", arg: 2, scope: !385, file: !2, line: 57, type: !165)
!391 = !DILocalVariable(name: "channels", arg: 3, scope: !385, file: !2, line: 57, type: !165)
!392 = !DILocalVariable(name: "error", arg: 4, scope: !385, file: !2, line: 57, type: !216)
!393 = !DILocalVariable(name: "cb_data", arg: 5, scope: !385, file: !2, line: 57, type: !152)
!394 = !DILocalVariable(name: "src_state", scope: !385, file: !2, line: 58, type: !153)
!395 = !DILocation(line: 57, column: 34, scope: !385)
!396 = !DILocation(line: 57, column: 44, scope: !385)
!397 = !DILocation(line: 57, column: 64, scope: !385)
!398 = !DILocation(line: 57, column: 79, scope: !385)
!399 = !DILocation(line: 57, column: 92, scope: !385)
!400 = !DILocation(line: 58, column: 3, scope: !385)
!401 = !DILocation(line: 58, column: 14, scope: !385)
!402 = !DILocation(line: 60, column: 6, scope: !403)
!403 = distinct !DILexicalBlock(scope: !385, file: !2, line: 60, column: 6)
!404 = !DILocation(line: 60, column: 11, scope: !403)
!405 = !DILocation(line: 60, column: 6, scope: !385)
!406 = !DILocation(line: 61, column: 8, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !2, line: 61, column: 8)
!408 = distinct !DILexicalBlock(scope: !403, file: !2, line: 61, column: 2)
!409 = !DILocation(line: 61, column: 8, scope: !408)
!410 = !DILocation(line: 62, column: 5, scope: !407)
!411 = !DILocation(line: 62, column: 11, scope: !407)
!412 = !DILocation(line: 62, column: 4, scope: !407)
!413 = !DILocation(line: 63, column: 3, scope: !408)
!414 = !DILocation(line: 66, column: 6, scope: !415)
!415 = distinct !DILexicalBlock(scope: !385, file: !2, line: 66, column: 6)
!416 = !DILocation(line: 66, column: 12, scope: !415)
!417 = !DILocation(line: 66, column: 6, scope: !385)
!418 = !DILocation(line: 67, column: 4, scope: !415)
!419 = !DILocation(line: 67, column: 10, scope: !415)
!420 = !DILocation(line: 67, column: 3, scope: !415)
!421 = !DILocation(line: 69, column: 28, scope: !422)
!422 = distinct !DILexicalBlock(scope: !385, file: !2, line: 69, column: 6)
!423 = !DILocation(line: 69, column: 44, scope: !422)
!424 = !DILocation(line: 69, column: 54, scope: !422)
!425 = !DILocation(line: 69, column: 19, scope: !422)
!426 = !DILocation(line: 69, column: 17, scope: !422)
!427 = !DILocation(line: 69, column: 62, scope: !422)
!428 = !DILocation(line: 69, column: 6, scope: !385)
!429 = !DILocation(line: 70, column: 3, scope: !422)
!430 = !DILocation(line: 72, column: 13, scope: !385)
!431 = !DILocation(line: 72, column: 2, scope: !385)
!432 = !DILocation(line: 74, column: 18, scope: !385)
!433 = !DILocation(line: 74, column: 30, scope: !385)
!434 = !DILocation(line: 74, column: 35, scope: !385)
!435 = !DILocation(line: 75, column: 46, scope: !385)
!436 = !DILocation(line: 75, column: 18, scope: !385)
!437 = !DILocation(line: 75, column: 30, scope: !385)
!438 = !DILocation(line: 75, column: 44, scope: !385)
!439 = !{!269, !229, i64 64}
!440 = !DILocation(line: 76, column: 51, scope: !385)
!441 = !DILocation(line: 76, column: 18, scope: !385)
!442 = !DILocation(line: 76, column: 30, scope: !385)
!443 = !DILocation(line: 76, column: 49, scope: !385)
!444 = !{!269, !229, i64 72}
!445 = !DILocation(line: 78, column: 9, scope: !385)
!446 = !DILocation(line: 78, column: 2, scope: !385)
!447 = !DILocation(line: 79, column: 1, scope: !385)
!448 = distinct !DISubprogram(name: "src_delete", scope: !2, file: !2, line: 82, type: !449, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{!153, !153}
!451 = !{!452, !453}
!452 = !DILocalVariable(name: "state", arg: 1, scope: !448, file: !2, line: 82, type: !153)
!453 = !DILocalVariable(name: "psrc", scope: !448, file: !2, line: 83, type: !157)
!454 = !DILocation(line: 82, column: 24, scope: !448)
!455 = !DILocation(line: 83, column: 3, scope: !448)
!456 = !DILocation(line: 83, column: 16, scope: !448)
!457 = !DILocation(line: 85, column: 24, scope: !448)
!458 = !DILocation(line: 85, column: 7, scope: !448)
!459 = !DILocation(line: 86, column: 6, scope: !460)
!460 = distinct !DILexicalBlock(scope: !448, file: !2, line: 86, column: 6)
!461 = !DILocation(line: 86, column: 6, scope: !448)
!462 = !DILocation(line: 87, column: 8, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !2, line: 87, column: 8)
!464 = distinct !DILexicalBlock(scope: !460, file: !2, line: 87, column: 2)
!465 = !DILocation(line: 87, column: 14, scope: !463)
!466 = !{!269, !229, i64 32}
!467 = !DILocation(line: 87, column: 8, scope: !464)
!468 = !DILocation(line: 88, column: 10, scope: !463)
!469 = !DILocation(line: 88, column: 16, scope: !463)
!470 = !DILocation(line: 88, column: 4, scope: !463)
!471 = !DILocation(line: 89, column: 11, scope: !464)
!472 = !DILocation(line: 89, column: 3, scope: !464)
!473 = !DILocation(line: 90, column: 9, scope: !464)
!474 = !DILocation(line: 90, column: 3, scope: !464)
!475 = !DILocation(line: 91, column: 3, scope: !464)
!476 = !DILocation(line: 94, column: 1, scope: !448)
!477 = !DILocation(line: 93, column: 2, scope: !448)
!478 = distinct !DISubprogram(name: "src_process", scope: !2, file: !2, line: 97, type: !479, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{!165, !153, !174}
!481 = !{!482, !483, !484, !485}
!482 = !DILocalVariable(name: "state", arg: 1, scope: !478, file: !2, line: 97, type: !153)
!483 = !DILocalVariable(name: "data", arg: 2, scope: !478, file: !2, line: 97, type: !174)
!484 = !DILocalVariable(name: "psrc", scope: !478, file: !2, line: 98, type: !157)
!485 = !DILocalVariable(name: "error", scope: !478, file: !2, line: 99, type: !165)
!486 = !DILocation(line: 97, column: 25, scope: !478)
!487 = !DILocation(line: 97, column: 42, scope: !478)
!488 = !DILocation(line: 98, column: 3, scope: !478)
!489 = !DILocation(line: 98, column: 16, scope: !478)
!490 = !DILocation(line: 99, column: 2, scope: !478)
!491 = !DILocation(line: 99, column: 6, scope: !478)
!492 = !DILocation(line: 101, column: 24, scope: !478)
!493 = !DILocation(line: 101, column: 7, scope: !478)
!494 = !DILocation(line: 103, column: 6, scope: !495)
!495 = distinct !DILexicalBlock(scope: !478, file: !2, line: 103, column: 6)
!496 = !DILocation(line: 103, column: 11, scope: !495)
!497 = !DILocation(line: 103, column: 6, scope: !478)
!498 = !DILocation(line: 104, column: 3, scope: !495)
!499 = !DILocation(line: 105, column: 6, scope: !500)
!500 = distinct !DILexicalBlock(scope: !478, file: !2, line: 105, column: 6)
!501 = !DILocation(line: 105, column: 12, scope: !500)
!502 = !{!269, !229, i64 40}
!503 = !DILocation(line: 105, column: 25, scope: !500)
!504 = !DILocation(line: 105, column: 33, scope: !500)
!505 = !DILocation(line: 105, column: 36, scope: !500)
!506 = !DILocation(line: 105, column: 42, scope: !500)
!507 = !{!269, !229, i64 48}
!508 = !DILocation(line: 105, column: 56, scope: !500)
!509 = !DILocation(line: 105, column: 6, scope: !478)
!510 = !DILocation(line: 106, column: 3, scope: !500)
!511 = !DILocation(line: 108, column: 6, scope: !512)
!512 = distinct !DILexicalBlock(scope: !478, file: !2, line: 108, column: 6)
!513 = !DILocation(line: 108, column: 12, scope: !512)
!514 = !DILocation(line: 108, column: 17, scope: !512)
!515 = !DILocation(line: 108, column: 6, scope: !478)
!516 = !DILocation(line: 109, column: 3, scope: !512)
!517 = !DILocation(line: 112, column: 6, scope: !518)
!518 = distinct !DILexicalBlock(scope: !478, file: !2, line: 112, column: 6)
!519 = !DILocation(line: 112, column: 11, scope: !518)
!520 = !DILocation(line: 112, column: 6, scope: !478)
!521 = !DILocation(line: 113, column: 3, scope: !518)
!522 = !DILocation(line: 116, column: 6, scope: !523)
!523 = distinct !DILexicalBlock(scope: !478, file: !2, line: 116, column: 6)
!524 = !DILocation(line: 116, column: 12, scope: !523)
!525 = !{!526, !229, i64 0}
!526 = !{!"", !229, i64 0, !229, i64 8, !271, i64 16, !271, i64 24, !271, i64 32, !271, i64 40, !223, i64 48, !270, i64 56}
!527 = !DILocation(line: 116, column: 20, scope: !523)
!528 = !DILocation(line: 116, column: 28, scope: !523)
!529 = !DILocation(line: 116, column: 31, scope: !523)
!530 = !DILocation(line: 116, column: 37, scope: !523)
!531 = !{!526, !229, i64 8}
!532 = !DILocation(line: 116, column: 46, scope: !523)
!533 = !DILocation(line: 116, column: 6, scope: !478)
!534 = !DILocation(line: 117, column: 3, scope: !523)
!535 = !DILocation(line: 120, column: 24, scope: !536)
!536 = distinct !DILexicalBlock(scope: !478, file: !2, line: 120, column: 6)
!537 = !DILocation(line: 120, column: 30, scope: !536)
!538 = !{!526, !270, i64 56}
!539 = !DILocation(line: 120, column: 6, scope: !536)
!540 = !DILocation(line: 120, column: 6, scope: !478)
!541 = !DILocation(line: 121, column: 3, scope: !536)
!542 = !DILocation(line: 123, column: 6, scope: !543)
!543 = distinct !DILexicalBlock(scope: !478, file: !2, line: 123, column: 6)
!544 = !DILocation(line: 123, column: 12, scope: !543)
!545 = !{!526, !271, i64 16}
!546 = !DILocation(line: 123, column: 25, scope: !543)
!547 = !DILocation(line: 123, column: 6, scope: !478)
!548 = !DILocation(line: 124, column: 3, scope: !543)
!549 = !DILocation(line: 124, column: 9, scope: !543)
!550 = !DILocation(line: 124, column: 22, scope: !543)
!551 = !DILocation(line: 125, column: 6, scope: !552)
!552 = distinct !DILexicalBlock(scope: !478, file: !2, line: 125, column: 6)
!553 = !DILocation(line: 125, column: 12, scope: !552)
!554 = !{!526, !271, i64 24}
!555 = !DILocation(line: 125, column: 26, scope: !552)
!556 = !DILocation(line: 125, column: 6, scope: !478)
!557 = !DILocation(line: 126, column: 3, scope: !552)
!558 = !DILocation(line: 126, column: 9, scope: !552)
!559 = !DILocation(line: 126, column: 23, scope: !552)
!560 = !DILocation(line: 128, column: 6, scope: !561)
!561 = distinct !DILexicalBlock(scope: !478, file: !2, line: 128, column: 6)
!562 = !DILocation(line: 128, column: 12, scope: !561)
!563 = !DILocation(line: 128, column: 22, scope: !561)
!564 = !DILocation(line: 128, column: 28, scope: !561)
!565 = !DILocation(line: 128, column: 20, scope: !561)
!566 = !DILocation(line: 128, column: 6, scope: !478)
!567 = !DILocation(line: 129, column: 8, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !2, line: 129, column: 8)
!569 = distinct !DILexicalBlock(scope: !561, file: !2, line: 129, column: 2)
!570 = !DILocation(line: 129, column: 14, scope: !568)
!571 = !DILocation(line: 129, column: 24, scope: !568)
!572 = !DILocation(line: 129, column: 30, scope: !568)
!573 = !DILocation(line: 129, column: 45, scope: !568)
!574 = !DILocation(line: 129, column: 51, scope: !568)
!575 = !DILocation(line: 129, column: 43, scope: !568)
!576 = !DILocation(line: 129, column: 22, scope: !568)
!577 = !DILocation(line: 129, column: 62, scope: !568)
!578 = !DILocation(line: 129, column: 68, scope: !568)
!579 = !DILocation(line: 129, column: 60, scope: !568)
!580 = !DILocation(line: 129, column: 8, scope: !569)
!581 = !DILocation(line: 132, column: 4, scope: !582)
!582 = distinct !DILexicalBlock(scope: !568, file: !2, line: 130, column: 3)
!583 = !DILocation(line: 134, column: 3, scope: !569)
!584 = !DILocation(line: 135, column: 11, scope: !585)
!585 = distinct !DILexicalBlock(scope: !561, file: !2, line: 135, column: 11)
!586 = !DILocation(line: 135, column: 17, scope: !585)
!587 = !DILocation(line: 135, column: 28, scope: !585)
!588 = !DILocation(line: 135, column: 34, scope: !585)
!589 = !DILocation(line: 135, column: 50, scope: !585)
!590 = !DILocation(line: 135, column: 56, scope: !585)
!591 = !DILocation(line: 135, column: 48, scope: !585)
!592 = !DILocation(line: 135, column: 26, scope: !585)
!593 = !DILocation(line: 135, column: 67, scope: !585)
!594 = !DILocation(line: 135, column: 73, scope: !585)
!595 = !DILocation(line: 135, column: 65, scope: !585)
!596 = !DILocation(line: 135, column: 11, scope: !561)
!597 = !DILocation(line: 140, column: 3, scope: !598)
!598 = distinct !DILexicalBlock(scope: !585, file: !2, line: 136, column: 2)
!599 = !DILocation(line: 144, column: 2, scope: !478)
!600 = !DILocation(line: 144, column: 8, scope: !478)
!601 = !DILocation(line: 144, column: 26, scope: !478)
!602 = !{!526, !271, i64 32}
!603 = !DILocation(line: 145, column: 2, scope: !478)
!604 = !DILocation(line: 145, column: 8, scope: !478)
!605 = !DILocation(line: 145, column: 26, scope: !478)
!606 = !{!526, !271, i64 40}
!607 = !DILocation(line: 148, column: 6, scope: !608)
!608 = distinct !DILexicalBlock(scope: !478, file: !2, line: 148, column: 6)
!609 = !DILocation(line: 148, column: 12, scope: !608)
!610 = !DILocation(line: 148, column: 23, scope: !608)
!611 = !DILocation(line: 148, column: 6, scope: !478)
!612 = !DILocation(line: 149, column: 22, scope: !608)
!613 = !DILocation(line: 149, column: 28, scope: !608)
!614 = !DILocation(line: 149, column: 3, scope: !608)
!615 = !DILocation(line: 149, column: 9, scope: !608)
!616 = !DILocation(line: 149, column: 20, scope: !608)
!617 = !DILocation(line: 152, column: 12, scope: !618)
!618 = distinct !DILexicalBlock(scope: !478, file: !2, line: 152, column: 6)
!619 = !DILocation(line: 152, column: 18, scope: !618)
!620 = !DILocation(line: 152, column: 31, scope: !618)
!621 = !DILocation(line: 152, column: 37, scope: !618)
!622 = !DILocation(line: 152, column: 29, scope: !618)
!623 = !DILocation(line: 152, column: 6, scope: !618)
!624 = !DILocation(line: 152, column: 48, scope: !618)
!625 = !DILocation(line: 152, column: 6, scope: !478)
!626 = !DILocation(line: 153, column: 11, scope: !618)
!627 = !DILocation(line: 153, column: 17, scope: !618)
!628 = !DILocation(line: 153, column: 32, scope: !618)
!629 = !DILocation(line: 153, column: 38, scope: !618)
!630 = !DILocation(line: 153, column: 9, scope: !618)
!631 = !DILocation(line: 153, column: 3, scope: !618)
!632 = !DILocation(line: 155, column: 11, scope: !618)
!633 = !DILocation(line: 155, column: 17, scope: !618)
!634 = !DILocation(line: 155, column: 31, scope: !618)
!635 = !DILocation(line: 155, column: 37, scope: !618)
!636 = !DILocation(line: 155, column: 9, scope: !618)
!637 = !DILocation(line: 157, column: 9, scope: !478)
!638 = !DILocation(line: 157, column: 2, scope: !478)
!639 = !DILocation(line: 158, column: 1, scope: !478)
!640 = distinct !DISubprogram(name: "is_bad_src_ratio", scope: !118, file: !118, line: 154, type: !641, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{!165, !162}
!643 = !{!644}
!644 = !DILocalVariable(name: "ratio", arg: 1, scope: !640, file: !118, line: 154, type: !162)
!645 = !{!270, !270, i64 0}
!646 = !DILocation(line: 154, column: 26, scope: !640)
!647 = !DILocation(line: 155, column: 11, scope: !640)
!648 = !DILocation(line: 155, column: 17, scope: !640)
!649 = !DILocation(line: 155, column: 41, scope: !640)
!650 = !DILocation(line: 155, column: 44, scope: !640)
!651 = !DILocation(line: 155, column: 50, scope: !640)
!652 = !DILocation(line: 155, column: 3, scope: !640)
!653 = distinct !DISubprogram(name: "src_callback_read", scope: !2, file: !2, line: 161, type: !654, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{!185, !153, !162, !185, !183}
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !670}
!657 = !DILocalVariable(name: "state", arg: 1, scope: !653, file: !2, line: 161, type: !153)
!658 = !DILocalVariable(name: "src_ratio", arg: 2, scope: !653, file: !2, line: 161, type: !162)
!659 = !DILocalVariable(name: "frames", arg: 3, scope: !653, file: !2, line: 161, type: !185)
!660 = !DILocalVariable(name: "data", arg: 4, scope: !653, file: !2, line: 161, type: !183)
!661 = !DILocalVariable(name: "psrc", scope: !653, file: !2, line: 162, type: !157)
!662 = !DILocalVariable(name: "src_data", scope: !653, file: !2, line: 163, type: !175)
!663 = !DILocalVariable(name: "output_frames_gen", scope: !653, file: !2, line: 165, type: !185)
!664 = !DILocalVariable(name: "error", scope: !653, file: !2, line: 166, type: !165)
!665 = !DILocalVariable(name: "dummy", scope: !666, file: !2, line: 207, type: !667)
!666 = distinct !DILexicalBlock(scope: !653, file: !2, line: 204, column: 2)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 32, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 1)
!670 = !DILocalVariable(name: "ptr", scope: !671, file: !2, line: 210, type: !183)
!671 = distinct !DILexicalBlock(scope: !672, file: !2, line: 210, column: 3)
!672 = distinct !DILexicalBlock(scope: !666, file: !2, line: 209, column: 7)
!673 = !DILocation(line: 161, column: 31, scope: !653)
!674 = !DILocation(line: 161, column: 45, scope: !653)
!675 = !{!271, !271, i64 0}
!676 = !DILocation(line: 161, column: 61, scope: !653)
!677 = !DILocation(line: 161, column: 76, scope: !653)
!678 = !DILocation(line: 162, column: 3, scope: !653)
!679 = !DILocation(line: 162, column: 16, scope: !653)
!680 = !DILocation(line: 163, column: 2, scope: !653)
!681 = !DILocation(line: 163, column: 11, scope: !653)
!682 = !DILocation(line: 165, column: 2, scope: !653)
!683 = !DILocation(line: 165, column: 7, scope: !653)
!684 = !DILocation(line: 166, column: 2, scope: !653)
!685 = !DILocation(line: 166, column: 7, scope: !653)
!686 = !DILocation(line: 168, column: 6, scope: !687)
!687 = distinct !DILexicalBlock(scope: !653, file: !2, line: 168, column: 6)
!688 = !DILocation(line: 168, column: 12, scope: !687)
!689 = !DILocation(line: 168, column: 6, scope: !653)
!690 = !DILocation(line: 169, column: 3, scope: !687)
!691 = !DILocation(line: 171, column: 6, scope: !692)
!692 = distinct !DILexicalBlock(scope: !653, file: !2, line: 171, column: 6)
!693 = !DILocation(line: 171, column: 13, scope: !692)
!694 = !DILocation(line: 171, column: 6, scope: !653)
!695 = !DILocation(line: 172, column: 3, scope: !692)
!696 = !DILocation(line: 174, column: 24, scope: !653)
!697 = !DILocation(line: 174, column: 7, scope: !653)
!698 = !DILocation(line: 176, column: 6, scope: !699)
!699 = distinct !DILexicalBlock(scope: !653, file: !2, line: 176, column: 6)
!700 = !DILocation(line: 176, column: 12, scope: !699)
!701 = !DILocation(line: 176, column: 17, scope: !699)
!702 = !DILocation(line: 176, column: 6, scope: !653)
!703 = !DILocation(line: 177, column: 4, scope: !704)
!704 = distinct !DILexicalBlock(scope: !699, file: !2, line: 177, column: 2)
!705 = !DILocation(line: 177, column: 10, scope: !704)
!706 = !DILocation(line: 177, column: 16, scope: !704)
!707 = !DILocation(line: 178, column: 3, scope: !704)
!708 = !DILocation(line: 181, column: 6, scope: !709)
!709 = distinct !DILexicalBlock(scope: !653, file: !2, line: 181, column: 6)
!710 = !DILocation(line: 181, column: 12, scope: !709)
!711 = !DILocation(line: 181, column: 26, scope: !709)
!712 = !DILocation(line: 181, column: 6, scope: !653)
!713 = !DILocation(line: 182, column: 4, scope: !714)
!714 = distinct !DILexicalBlock(scope: !709, file: !2, line: 182, column: 2)
!715 = !DILocation(line: 182, column: 10, scope: !714)
!716 = !DILocation(line: 182, column: 16, scope: !714)
!717 = !DILocation(line: 183, column: 3, scope: !714)
!718 = !DILocation(line: 186, column: 2, scope: !653)
!719 = !DILocation(line: 189, column: 24, scope: !720)
!720 = distinct !DILexicalBlock(scope: !653, file: !2, line: 189, column: 6)
!721 = !DILocation(line: 189, column: 6, scope: !720)
!722 = !DILocation(line: 189, column: 6, scope: !653)
!723 = !DILocation(line: 190, column: 4, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !2, line: 190, column: 2)
!725 = !DILocation(line: 190, column: 10, scope: !724)
!726 = !DILocation(line: 190, column: 16, scope: !724)
!727 = !DILocation(line: 191, column: 3, scope: !724)
!728 = !DILocation(line: 195, column: 23, scope: !653)
!729 = !DILocation(line: 195, column: 11, scope: !653)
!730 = !DILocation(line: 195, column: 21, scope: !653)
!731 = !DILocation(line: 196, column: 22, scope: !653)
!732 = !DILocation(line: 196, column: 11, scope: !653)
!733 = !DILocation(line: 196, column: 20, scope: !653)
!734 = !DILocation(line: 197, column: 27, scope: !653)
!735 = !DILocation(line: 197, column: 11, scope: !653)
!736 = !DILocation(line: 197, column: 25, scope: !653)
!737 = !DILocation(line: 199, column: 21, scope: !653)
!738 = !DILocation(line: 199, column: 27, scope: !653)
!739 = !DILocation(line: 199, column: 11, scope: !653)
!740 = !DILocation(line: 199, column: 19, scope: !653)
!741 = !DILocation(line: 200, column: 26, scope: !653)
!742 = !DILocation(line: 200, column: 32, scope: !653)
!743 = !DILocation(line: 200, column: 11, scope: !653)
!744 = !DILocation(line: 200, column: 24, scope: !653)
!745 = !DILocation(line: 202, column: 20, scope: !653)
!746 = !DILocation(line: 203, column: 2, scope: !653)
!747 = !DILocation(line: 203, column: 9, scope: !653)
!748 = !DILocation(line: 203, column: 29, scope: !653)
!749 = !DILocation(line: 203, column: 27, scope: !653)
!750 = !DILocation(line: 207, column: 3, scope: !666)
!751 = !DILocation(line: 207, column: 9, scope: !666)
!752 = !DILocation(line: 209, column: 16, scope: !672)
!753 = !DILocation(line: 209, column: 29, scope: !672)
!754 = !DILocation(line: 209, column: 7, scope: !666)
!755 = !DILocation(line: 210, column: 5, scope: !671)
!756 = !DILocation(line: 210, column: 12, scope: !671)
!757 = !DILocation(line: 210, column: 18, scope: !671)
!758 = !DILocation(line: 212, column: 28, scope: !671)
!759 = !DILocation(line: 212, column: 34, scope: !671)
!760 = !DILocation(line: 212, column: 49, scope: !671)
!761 = !DILocation(line: 212, column: 55, scope: !671)
!762 = !DILocation(line: 212, column: 13, scope: !671)
!763 = !DILocation(line: 212, column: 26, scope: !671)
!764 = !DILocation(line: 213, column: 23, scope: !671)
!765 = !DILocation(line: 213, column: 13, scope: !671)
!766 = !DILocation(line: 213, column: 21, scope: !671)
!767 = !DILocation(line: 215, column: 17, scope: !768)
!768 = distinct !DILexicalBlock(scope: !671, file: !2, line: 215, column: 8)
!769 = !DILocation(line: 215, column: 30, scope: !768)
!770 = !DILocation(line: 215, column: 8, scope: !671)
!771 = !DILocation(line: 216, column: 14, scope: !768)
!772 = !DILocation(line: 216, column: 27, scope: !768)
!773 = !{!526, !223, i64 48}
!774 = !DILocation(line: 216, column: 5, scope: !768)
!775 = !DILocation(line: 217, column: 4, scope: !672)
!776 = !DILocation(line: 217, column: 4, scope: !671)
!777 = !DILocation(line: 224, column: 3, scope: !666)
!778 = !DILocation(line: 224, column: 9, scope: !666)
!779 = !DILocation(line: 224, column: 14, scope: !666)
!780 = !DILocation(line: 225, column: 24, scope: !666)
!781 = !DILocation(line: 225, column: 11, scope: !666)
!782 = !DILocation(line: 225, column: 9, scope: !666)
!783 = !DILocation(line: 226, column: 3, scope: !666)
!784 = !DILocation(line: 226, column: 9, scope: !666)
!785 = !DILocation(line: 226, column: 14, scope: !666)
!786 = !DILocation(line: 228, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !666, file: !2, line: 228, column: 7)
!788 = !DILocation(line: 228, column: 13, scope: !787)
!789 = !DILocation(line: 228, column: 7, scope: !666)
!790 = !DILocation(line: 229, column: 4, scope: !787)
!791 = !DILocation(line: 231, column: 32, scope: !666)
!792 = !DILocation(line: 231, column: 52, scope: !666)
!793 = !DILocation(line: 231, column: 58, scope: !666)
!794 = !DILocation(line: 231, column: 50, scope: !666)
!795 = !DILocation(line: 231, column: 12, scope: !666)
!796 = !DILocation(line: 231, column: 20, scope: !666)
!797 = !DILocation(line: 232, column: 37, scope: !666)
!798 = !DILocation(line: 232, column: 12, scope: !666)
!799 = !DILocation(line: 232, column: 25, scope: !666)
!800 = !DILocation(line: 234, column: 33, scope: !666)
!801 = !DILocation(line: 234, column: 53, scope: !666)
!802 = !DILocation(line: 234, column: 59, scope: !666)
!803 = !DILocation(line: 234, column: 51, scope: !666)
!804 = !DILocation(line: 234, column: 12, scope: !666)
!805 = !DILocation(line: 234, column: 21, scope: !666)
!806 = !DILocation(line: 235, column: 38, scope: !666)
!807 = !DILocation(line: 235, column: 12, scope: !666)
!808 = !DILocation(line: 235, column: 26, scope: !666)
!809 = !DILocation(line: 237, column: 33, scope: !666)
!810 = !DILocation(line: 237, column: 21, scope: !666)
!811 = !DILocation(line: 239, column: 16, scope: !812)
!812 = distinct !DILexicalBlock(scope: !666, file: !2, line: 239, column: 7)
!813 = !DILocation(line: 239, column: 29, scope: !812)
!814 = !DILocation(line: 239, column: 41, scope: !812)
!815 = !DILocation(line: 239, column: 53, scope: !812)
!816 = !DILocation(line: 239, column: 71, scope: !812)
!817 = !DILocation(line: 239, column: 7, scope: !666)
!818 = !DILocation(line: 240, column: 4, scope: !812)
!819 = !DILocation(line: 241, column: 3, scope: !653)
!820 = distinct !{!820, !746, !819}
!821 = !DILocation(line: 243, column: 30, scope: !653)
!822 = !DILocation(line: 243, column: 2, scope: !653)
!823 = !DILocation(line: 243, column: 8, scope: !653)
!824 = !DILocation(line: 243, column: 19, scope: !653)
!825 = !DILocation(line: 244, column: 32, scope: !653)
!826 = !DILocation(line: 244, column: 2, scope: !653)
!827 = !DILocation(line: 244, column: 8, scope: !653)
!828 = !DILocation(line: 244, column: 21, scope: !653)
!829 = !DILocation(line: 246, column: 6, scope: !830)
!830 = distinct !DILexicalBlock(scope: !653, file: !2, line: 246, column: 6)
!831 = !DILocation(line: 246, column: 12, scope: !830)
!832 = !DILocation(line: 246, column: 6, scope: !653)
!833 = !DILocation(line: 247, column: 18, scope: !834)
!834 = distinct !DILexicalBlock(scope: !830, file: !2, line: 247, column: 2)
!835 = !DILocation(line: 247, column: 4, scope: !834)
!836 = !DILocation(line: 247, column: 10, scope: !834)
!837 = !DILocation(line: 247, column: 16, scope: !834)
!838 = !DILocation(line: 248, column: 4, scope: !834)
!839 = !DILocation(line: 251, column: 9, scope: !653)
!840 = !DILocation(line: 251, column: 2, scope: !653)
!841 = !DILocation(line: 252, column: 1, scope: !653)
!842 = distinct !DISubprogram(name: "src_set_ratio", scope: !2, file: !2, line: 258, type: !843, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !845)
!843 = !DISubroutineType(types: !844)
!844 = !{!165, !153, !162}
!845 = !{!846, !847, !848}
!846 = !DILocalVariable(name: "state", arg: 1, scope: !842, file: !2, line: 258, type: !153)
!847 = !DILocalVariable(name: "new_ratio", arg: 2, scope: !842, file: !2, line: 258, type: !162)
!848 = !DILocalVariable(name: "psrc", scope: !842, file: !2, line: 259, type: !157)
!849 = !DILocation(line: 258, column: 27, scope: !842)
!850 = !DILocation(line: 258, column: 41, scope: !842)
!851 = !DILocation(line: 259, column: 3, scope: !842)
!852 = !DILocation(line: 259, column: 16, scope: !842)
!853 = !DILocation(line: 261, column: 24, scope: !842)
!854 = !DILocation(line: 261, column: 7, scope: !842)
!855 = !DILocation(line: 263, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !842, file: !2, line: 263, column: 6)
!857 = !DILocation(line: 263, column: 11, scope: !856)
!858 = !DILocation(line: 263, column: 6, scope: !842)
!859 = !DILocation(line: 264, column: 3, scope: !856)
!860 = !DILocation(line: 265, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !842, file: !2, line: 265, column: 6)
!862 = !DILocation(line: 265, column: 12, scope: !861)
!863 = !DILocation(line: 265, column: 25, scope: !861)
!864 = !DILocation(line: 265, column: 33, scope: !861)
!865 = !DILocation(line: 265, column: 36, scope: !861)
!866 = !DILocation(line: 265, column: 42, scope: !861)
!867 = !DILocation(line: 265, column: 56, scope: !861)
!868 = !DILocation(line: 265, column: 6, scope: !842)
!869 = !DILocation(line: 266, column: 3, scope: !861)
!870 = !DILocation(line: 268, column: 24, scope: !871)
!871 = distinct !DILexicalBlock(scope: !842, file: !2, line: 268, column: 6)
!872 = !DILocation(line: 268, column: 6, scope: !871)
!873 = !DILocation(line: 268, column: 6, scope: !842)
!874 = !DILocation(line: 269, column: 3, scope: !871)
!875 = !DILocation(line: 271, column: 21, scope: !842)
!876 = !DILocation(line: 271, column: 2, scope: !842)
!877 = !DILocation(line: 271, column: 8, scope: !842)
!878 = !DILocation(line: 271, column: 19, scope: !842)
!879 = !DILocation(line: 273, column: 2, scope: !842)
!880 = !DILocation(line: 274, column: 1, scope: !842)
!881 = distinct !DISubprogram(name: "src_get_channels", scope: !2, file: !2, line: 277, type: !340, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !882)
!882 = !{!883, !884}
!883 = !DILocalVariable(name: "state", arg: 1, scope: !881, file: !2, line: 277, type: !153)
!884 = !DILocalVariable(name: "psrc", scope: !881, file: !2, line: 278, type: !157)
!885 = !DILocation(line: 277, column: 30, scope: !881)
!886 = !DILocation(line: 278, column: 3, scope: !881)
!887 = !DILocation(line: 278, column: 16, scope: !881)
!888 = !DILocation(line: 280, column: 24, scope: !881)
!889 = !DILocation(line: 280, column: 7, scope: !881)
!890 = !DILocation(line: 282, column: 6, scope: !891)
!891 = distinct !DILexicalBlock(scope: !881, file: !2, line: 282, column: 6)
!892 = !DILocation(line: 282, column: 11, scope: !891)
!893 = !DILocation(line: 282, column: 6, scope: !881)
!894 = !DILocation(line: 283, column: 3, scope: !891)
!895 = !DILocation(line: 284, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !881, file: !2, line: 284, column: 6)
!897 = !DILocation(line: 284, column: 12, scope: !896)
!898 = !DILocation(line: 284, column: 25, scope: !896)
!899 = !DILocation(line: 284, column: 33, scope: !896)
!900 = !DILocation(line: 284, column: 36, scope: !896)
!901 = !DILocation(line: 284, column: 42, scope: !896)
!902 = !DILocation(line: 284, column: 56, scope: !896)
!903 = !DILocation(line: 284, column: 6, scope: !881)
!904 = !DILocation(line: 285, column: 3, scope: !896)
!905 = !DILocation(line: 287, column: 9, scope: !881)
!906 = !DILocation(line: 287, column: 15, scope: !881)
!907 = !DILocation(line: 287, column: 2, scope: !881)
!908 = !DILocation(line: 288, column: 1, scope: !881)
!909 = distinct !DISubprogram(name: "src_get_name", scope: !2, file: !2, line: 316, type: !910, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !914)
!910 = !DISubroutineType(types: !911)
!911 = !{!912, !165}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!914 = !{!915, !916}
!915 = !DILocalVariable(name: "converter_type", arg: 1, scope: !909, file: !2, line: 316, type: !165)
!916 = !DILocalVariable(name: "desc", scope: !909, file: !2, line: 317, type: !912)
!917 = !DILocation(line: 316, column: 19, scope: !909)
!918 = !DILocation(line: 317, column: 3, scope: !909)
!919 = !DILocation(line: 317, column: 15, scope: !909)
!920 = !DILocation(line: 319, column: 29, scope: !921)
!921 = distinct !DILexicalBlock(scope: !909, file: !2, line: 319, column: 6)
!922 = !DILocation(line: 319, column: 14, scope: !921)
!923 = !DILocation(line: 319, column: 12, scope: !921)
!924 = !DILocation(line: 319, column: 46, scope: !921)
!925 = !DILocation(line: 319, column: 6, scope: !909)
!926 = !DILocation(line: 320, column: 10, scope: !921)
!927 = !DILocation(line: 320, column: 3, scope: !921)
!928 = !DILocation(line: 322, column: 28, scope: !929)
!929 = distinct !DILexicalBlock(scope: !909, file: !2, line: 322, column: 6)
!930 = !DILocation(line: 322, column: 14, scope: !929)
!931 = !DILocation(line: 322, column: 12, scope: !929)
!932 = !DILocation(line: 322, column: 45, scope: !929)
!933 = !DILocation(line: 322, column: 6, scope: !909)
!934 = !DILocation(line: 323, column: 10, scope: !929)
!935 = !DILocation(line: 323, column: 3, scope: !929)
!936 = !DILocation(line: 325, column: 31, scope: !937)
!937 = distinct !DILexicalBlock(scope: !909, file: !2, line: 325, column: 6)
!938 = !DILocation(line: 325, column: 14, scope: !937)
!939 = !DILocation(line: 325, column: 12, scope: !937)
!940 = !DILocation(line: 325, column: 48, scope: !937)
!941 = !DILocation(line: 325, column: 6, scope: !909)
!942 = !DILocation(line: 326, column: 10, scope: !937)
!943 = !DILocation(line: 326, column: 3, scope: !937)
!944 = !DILocation(line: 328, column: 2, scope: !909)
!945 = !DILocation(line: 329, column: 1, scope: !909)
!946 = !DISubprogram(name: "sinc_get_name", scope: !118, file: !118, line: 121, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!947 = !DISubprogram(name: "zoh_get_name", scope: !118, file: !118, line: 133, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!948 = !DISubprogram(name: "linear_get_name", scope: !118, file: !118, line: 127, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!949 = distinct !DISubprogram(name: "src_get_description", scope: !2, file: !2, line: 332, type: !910, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !950)
!950 = !{!951, !952}
!951 = !DILocalVariable(name: "converter_type", arg: 1, scope: !949, file: !2, line: 332, type: !165)
!952 = !DILocalVariable(name: "desc", scope: !949, file: !2, line: 333, type: !912)
!953 = !DILocation(line: 332, column: 26, scope: !949)
!954 = !DILocation(line: 333, column: 3, scope: !949)
!955 = !DILocation(line: 333, column: 15, scope: !949)
!956 = !DILocation(line: 335, column: 36, scope: !957)
!957 = distinct !DILexicalBlock(scope: !949, file: !2, line: 335, column: 6)
!958 = !DILocation(line: 335, column: 14, scope: !957)
!959 = !DILocation(line: 335, column: 12, scope: !957)
!960 = !DILocation(line: 335, column: 53, scope: !957)
!961 = !DILocation(line: 335, column: 6, scope: !949)
!962 = !DILocation(line: 336, column: 10, scope: !957)
!963 = !DILocation(line: 336, column: 3, scope: !957)
!964 = !DILocation(line: 338, column: 35, scope: !965)
!965 = distinct !DILexicalBlock(scope: !949, file: !2, line: 338, column: 6)
!966 = !DILocation(line: 338, column: 14, scope: !965)
!967 = !DILocation(line: 338, column: 12, scope: !965)
!968 = !DILocation(line: 338, column: 52, scope: !965)
!969 = !DILocation(line: 338, column: 6, scope: !949)
!970 = !DILocation(line: 339, column: 10, scope: !965)
!971 = !DILocation(line: 339, column: 3, scope: !965)
!972 = !DILocation(line: 341, column: 38, scope: !973)
!973 = distinct !DILexicalBlock(scope: !949, file: !2, line: 341, column: 6)
!974 = !DILocation(line: 341, column: 14, scope: !973)
!975 = !DILocation(line: 341, column: 12, scope: !973)
!976 = !DILocation(line: 341, column: 55, scope: !973)
!977 = !DILocation(line: 341, column: 6, scope: !949)
!978 = !DILocation(line: 342, column: 10, scope: !973)
!979 = !DILocation(line: 342, column: 3, scope: !973)
!980 = !DILocation(line: 344, column: 2, scope: !949)
!981 = !DILocation(line: 345, column: 1, scope: !949)
!982 = !DISubprogram(name: "sinc_get_description", scope: !118, file: !118, line: 122, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = !DISubprogram(name: "zoh_get_description", scope: !118, file: !118, line: 134, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DISubprogram(name: "linear_get_description", scope: !118, file: !118, line: 128, type: !910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!985 = distinct !DISubprogram(name: "src_get_version", scope: !2, file: !2, line: 348, type: !986, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115)
!986 = !DISubroutineType(types: !987)
!987 = !{!912}
!988 = !DILocation(line: 349, column: 3, scope: !985)
!989 = distinct !DISubprogram(name: "src_is_valid_ratio", scope: !2, file: !2, line: 353, type: !641, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !990)
!990 = !{!991}
!991 = !DILocalVariable(name: "ratio", arg: 1, scope: !989, file: !2, line: 353, type: !162)
!992 = !DILocation(line: 353, column: 28, scope: !989)
!993 = !DILocation(line: 355, column: 24, scope: !994)
!994 = distinct !DILexicalBlock(scope: !989, file: !2, line: 355, column: 6)
!995 = !DILocation(line: 355, column: 6, scope: !994)
!996 = !DILocation(line: 355, column: 6, scope: !989)
!997 = !DILocation(line: 356, column: 3, scope: !994)
!998 = !DILocation(line: 358, column: 2, scope: !989)
!999 = !DILocation(line: 359, column: 1, scope: !989)
!1000 = distinct !DISubprogram(name: "src_error", scope: !2, file: !2, line: 366, type: !340, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !1001)
!1001 = !{!1002}
!1002 = !DILocalVariable(name: "state", arg: 1, scope: !1000, file: !2, line: 366, type: !153)
!1003 = !DILocation(line: 366, column: 23, scope: !1000)
!1004 = !DILocation(line: 367, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 367, column: 7)
!1006 = !DILocation(line: 367, column: 7, scope: !1000)
!1007 = !DILocation(line: 368, column: 26, scope: !1005)
!1008 = !DILocation(line: 368, column: 34, scope: !1005)
!1009 = !DILocation(line: 368, column: 3, scope: !1005)
!1010 = !DILocation(line: 369, column: 2, scope: !1000)
!1011 = !DILocation(line: 370, column: 1, scope: !1000)
!1012 = distinct !DISubprogram(name: "src_strerror", scope: !2, file: !2, line: 373, type: !910, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !1013)
!1013 = !{!1014}
!1014 = !DILocalVariable(name: "error", arg: 1, scope: !1012, file: !2, line: 373, type: !165)
!1015 = !DILocation(line: 373, column: 19, scope: !1012)
!1016 = !DILocation(line: 375, column: 10, scope: !1012)
!1017 = !DILocation(line: 375, column: 2, scope: !1012)
!1018 = !DILocation(line: 377, column: 5, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 376, column: 2)
!1020 = !DILocation(line: 379, column: 5, scope: !1019)
!1021 = !DILocation(line: 381, column: 5, scope: !1019)
!1022 = !DILocation(line: 383, column: 5, scope: !1019)
!1023 = !DILocation(line: 385, column: 5, scope: !1019)
!1024 = !DILocation(line: 387, column: 5, scope: !1019)
!1025 = !DILocation(line: 390, column: 5, scope: !1019)
!1026 = !DILocation(line: 393, column: 5, scope: !1019)
!1027 = !DILocation(line: 395, column: 5, scope: !1019)
!1028 = !DILocation(line: 397, column: 5, scope: !1019)
!1029 = !DILocation(line: 399, column: 5, scope: !1019)
!1030 = !DILocation(line: 401, column: 5, scope: !1019)
!1031 = !DILocation(line: 403, column: 5, scope: !1019)
!1032 = !DILocation(line: 405, column: 5, scope: !1019)
!1033 = !DILocation(line: 407, column: 5, scope: !1019)
!1034 = !DILocation(line: 409, column: 5, scope: !1019)
!1035 = !DILocation(line: 411, column: 5, scope: !1019)
!1036 = !DILocation(line: 413, column: 5, scope: !1019)
!1037 = !DILocation(line: 415, column: 5, scope: !1019)
!1038 = !DILocation(line: 417, column: 5, scope: !1019)
!1039 = !DILocation(line: 419, column: 5, scope: !1019)
!1040 = !DILocation(line: 421, column: 5, scope: !1019)
!1041 = !DILocation(line: 423, column: 5, scope: !1019)
!1042 = !DILocation(line: 426, column: 5, scope: !1019)
!1043 = !DILocation(line: 428, column: 19, scope: !1019)
!1044 = !DILocation(line: 431, column: 2, scope: !1012)
!1045 = !DILocation(line: 432, column: 1, scope: !1012)
!1046 = distinct !DISubprogram(name: "src_simple", scope: !2, file: !2, line: 440, type: !1047, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!165, !174, !165, !165}
!1049 = !{!1050, !1051, !1052, !1053, !1054}
!1050 = !DILocalVariable(name: "src_data", arg: 1, scope: !1046, file: !2, line: 440, type: !174)
!1051 = !DILocalVariable(name: "converter", arg: 2, scope: !1046, file: !2, line: 440, type: !165)
!1052 = !DILocalVariable(name: "channels", arg: 3, scope: !1046, file: !2, line: 440, type: !165)
!1053 = !DILocalVariable(name: "src_state", scope: !1046, file: !2, line: 441, type: !153)
!1054 = !DILocalVariable(name: "error", scope: !1046, file: !2, line: 442, type: !165)
!1055 = !DILocation(line: 440, column: 23, scope: !1046)
!1056 = !DILocation(line: 440, column: 37, scope: !1046)
!1057 = !DILocation(line: 440, column: 52, scope: !1046)
!1058 = !DILocation(line: 441, column: 3, scope: !1046)
!1059 = !DILocation(line: 441, column: 14, scope: !1046)
!1060 = !DILocation(line: 442, column: 2, scope: !1046)
!1061 = !DILocation(line: 442, column: 8, scope: !1046)
!1062 = !DILocation(line: 444, column: 28, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 444, column: 6)
!1064 = !DILocation(line: 444, column: 39, scope: !1063)
!1065 = !DILocation(line: 444, column: 19, scope: !1063)
!1066 = !DILocation(line: 444, column: 17, scope: !1063)
!1067 = !DILocation(line: 444, column: 58, scope: !1063)
!1068 = !DILocation(line: 444, column: 6, scope: !1046)
!1069 = !DILocation(line: 445, column: 10, scope: !1063)
!1070 = !DILocation(line: 445, column: 3, scope: !1063)
!1071 = !DILocation(line: 447, column: 2, scope: !1046)
!1072 = !DILocation(line: 447, column: 12, scope: !1046)
!1073 = !DILocation(line: 447, column: 25, scope: !1046)
!1074 = !DILocation(line: 449, column: 23, scope: !1046)
!1075 = !DILocation(line: 449, column: 34, scope: !1046)
!1076 = !DILocation(line: 449, column: 10, scope: !1046)
!1077 = !DILocation(line: 449, column: 8, scope: !1046)
!1078 = !DILocation(line: 451, column: 14, scope: !1046)
!1079 = !DILocation(line: 451, column: 2, scope: !1046)
!1080 = !DILocation(line: 453, column: 9, scope: !1046)
!1081 = !DILocation(line: 453, column: 2, scope: !1046)
!1082 = !DILocation(line: 454, column: 1, scope: !1046)
!1083 = distinct !DISubprogram(name: "src_short_to_float_array", scope: !2, file: !2, line: 457, type: !1084, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !1088)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !1086, !183, !165}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!1088 = !{!1089, !1090, !1091}
!1089 = !DILocalVariable(name: "in", arg: 1, scope: !1083, file: !2, line: 457, type: !1086)
!1090 = !DILocalVariable(name: "out", arg: 2, scope: !1083, file: !2, line: 457, type: !183)
!1091 = !DILocalVariable(name: "len", arg: 3, scope: !1083, file: !2, line: 457, type: !165)
!1092 = !DILocation(line: 457, column: 40, scope: !1083)
!1093 = !DILocation(line: 457, column: 51, scope: !1083)
!1094 = !DILocation(line: 457, column: 60, scope: !1083)
!1095 = !DILocation(line: 459, column: 2, scope: !1083)
!1096 = !DILocation(line: 459, column: 9, scope: !1083)
!1097 = !DILocation(line: 460, column: 8, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 460, column: 2)
!1099 = !DILocation(line: 461, column: 24, scope: !1098)
!1100 = !DILocation(line: 461, column: 28, scope: !1098)
!1101 = !{!1102, !1102, i64 0}
!1102 = !{!"short", !224, i64 0}
!1103 = !DILocation(line: 461, column: 33, scope: !1098)
!1104 = !DILocation(line: 461, column: 15, scope: !1098)
!1105 = !DILocation(line: 461, column: 3, scope: !1098)
!1106 = !DILocation(line: 461, column: 8, scope: !1098)
!1107 = !DILocation(line: 461, column: 13, scope: !1098)
!1108 = !{!1109, !1109, i64 0}
!1109 = !{!"float", !224, i64 0}
!1110 = distinct !{!1110, !1095, !1111}
!1111 = !DILocation(line: 462, column: 3, scope: !1083)
!1112 = !DILocation(line: 464, column: 2, scope: !1083)
!1113 = distinct !DISubprogram(name: "src_float_to_short_array", scope: !2, file: !2, line: 468, type: !1114, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !1117)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !179, !1116, !165}
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1117 = !{!1118, !1119, !1120, !1121}
!1118 = !DILocalVariable(name: "in", arg: 1, scope: !1113, file: !2, line: 468, type: !179)
!1119 = !DILocalVariable(name: "out", arg: 2, scope: !1113, file: !2, line: 468, type: !1116)
!1120 = !DILocalVariable(name: "len", arg: 3, scope: !1113, file: !2, line: 468, type: !165)
!1121 = !DILocalVariable(name: "scaled_value", scope: !1113, file: !2, line: 469, type: !162)
!1122 = !DILocation(line: 468, column: 40, scope: !1113)
!1123 = !DILocation(line: 468, column: 51, scope: !1113)
!1124 = !DILocation(line: 468, column: 60, scope: !1113)
!1125 = !DILocation(line: 469, column: 3, scope: !1113)
!1126 = !DILocation(line: 469, column: 10, scope: !1113)
!1127 = !DILocation(line: 471, column: 2, scope: !1113)
!1128 = !DILocation(line: 471, column: 9, scope: !1113)
!1129 = !DILocation(line: 472, column: 8, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 472, column: 2)
!1131 = !DILocation(line: 474, column: 18, scope: !1130)
!1132 = !DILocation(line: 474, column: 22, scope: !1130)
!1133 = !DILocation(line: 474, column: 27, scope: !1130)
!1134 = !DILocation(line: 474, column: 16, scope: !1130)
!1135 = !DILocation(line: 475, column: 34, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 475, column: 7)
!1137 = !DILocation(line: 475, column: 47, scope: !1136)
!1138 = !DILocation(line: 475, column: 7, scope: !1130)
!1139 = !DILocation(line: 476, column: 5, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 476, column: 3)
!1141 = !DILocation(line: 476, column: 10, scope: !1140)
!1142 = !DILocation(line: 476, column: 15, scope: !1140)
!1143 = !DILocation(line: 477, column: 4, scope: !1140)
!1144 = distinct !{!1144, !1127, !1145}
!1145 = !DILocation(line: 485, column: 3, scope: !1113)
!1146 = !DILocation(line: 479, column: 34, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 479, column: 7)
!1148 = !DILocation(line: 479, column: 47, scope: !1147)
!1149 = !DILocation(line: 479, column: 7, scope: !1130)
!1150 = !DILocation(line: 480, column: 5, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 480, column: 3)
!1152 = !DILocation(line: 480, column: 10, scope: !1151)
!1153 = !DILocation(line: 480, column: 15, scope: !1151)
!1154 = !DILocation(line: 481, column: 4, scope: !1151)
!1155 = !DILocation(line: 484, column: 31, scope: !1130)
!1156 = !DILocation(line: 484, column: 24, scope: !1130)
!1157 = !DILocation(line: 484, column: 45, scope: !1130)
!1158 = !DILocation(line: 484, column: 15, scope: !1130)
!1159 = !DILocation(line: 484, column: 3, scope: !1130)
!1160 = !DILocation(line: 484, column: 8, scope: !1130)
!1161 = !DILocation(line: 484, column: 13, scope: !1130)
!1162 = !DILocation(line: 487, column: 1, scope: !1113)
!1163 = !DISubprogram(name: "lrint", scope: !1164, file: !1164, line: 317, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1164 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!185, !162}
!1167 = distinct !DISubprogram(name: "src_int_to_float_array", scope: !2, file: !2, line: 490, type: !1168, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !1172)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !1170, !183, !165}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!1172 = !{!1173, !1174, !1175}
!1173 = !DILocalVariable(name: "in", arg: 1, scope: !1167, file: !2, line: 490, type: !1170)
!1174 = !DILocalVariable(name: "out", arg: 2, scope: !1167, file: !2, line: 490, type: !183)
!1175 = !DILocalVariable(name: "len", arg: 3, scope: !1167, file: !2, line: 490, type: !165)
!1176 = !DILocation(line: 490, column: 36, scope: !1167)
!1177 = !DILocation(line: 490, column: 47, scope: !1167)
!1178 = !DILocation(line: 490, column: 56, scope: !1167)
!1179 = !DILocation(line: 492, column: 2, scope: !1167)
!1180 = !DILocation(line: 492, column: 9, scope: !1167)
!1181 = !DILocation(line: 493, column: 8, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 493, column: 2)
!1183 = !DILocation(line: 494, column: 24, scope: !1182)
!1184 = !DILocation(line: 494, column: 28, scope: !1182)
!1185 = !DILocation(line: 494, column: 33, scope: !1182)
!1186 = !DILocation(line: 494, column: 15, scope: !1182)
!1187 = !DILocation(line: 494, column: 3, scope: !1182)
!1188 = !DILocation(line: 494, column: 8, scope: !1182)
!1189 = !DILocation(line: 494, column: 13, scope: !1182)
!1190 = distinct !{!1190, !1179, !1191}
!1191 = !DILocation(line: 495, column: 3, scope: !1167)
!1192 = !DILocation(line: 497, column: 2, scope: !1167)
!1193 = distinct !DISubprogram(name: "src_float_to_int_array", scope: !2, file: !2, line: 501, type: !1194, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !115, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !179, !216, !165}
!1196 = !{!1197, !1198, !1199, !1200}
!1197 = !DILocalVariable(name: "in", arg: 1, scope: !1193, file: !2, line: 501, type: !179)
!1198 = !DILocalVariable(name: "out", arg: 2, scope: !1193, file: !2, line: 501, type: !216)
!1199 = !DILocalVariable(name: "len", arg: 3, scope: !1193, file: !2, line: 501, type: !165)
!1200 = !DILocalVariable(name: "scaled_value", scope: !1193, file: !2, line: 502, type: !162)
!1201 = !DILocation(line: 501, column: 38, scope: !1193)
!1202 = !DILocation(line: 501, column: 47, scope: !1193)
!1203 = !DILocation(line: 501, column: 56, scope: !1193)
!1204 = !DILocation(line: 502, column: 3, scope: !1193)
!1205 = !DILocation(line: 502, column: 10, scope: !1193)
!1206 = !DILocation(line: 504, column: 2, scope: !1193)
!1207 = !DILocation(line: 504, column: 9, scope: !1193)
!1208 = !DILocation(line: 505, column: 8, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 505, column: 2)
!1210 = !DILocation(line: 507, column: 18, scope: !1209)
!1211 = !DILocation(line: 507, column: 22, scope: !1209)
!1212 = !DILocation(line: 507, column: 27, scope: !1209)
!1213 = !DILocation(line: 507, column: 16, scope: !1209)
!1214 = !DILocation(line: 508, column: 34, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 508, column: 7)
!1216 = !DILocation(line: 508, column: 47, scope: !1215)
!1217 = !DILocation(line: 508, column: 7, scope: !1209)
!1218 = !DILocation(line: 509, column: 5, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !2, line: 509, column: 3)
!1220 = !DILocation(line: 509, column: 10, scope: !1219)
!1221 = !DILocation(line: 509, column: 15, scope: !1219)
!1222 = !DILocation(line: 510, column: 4, scope: !1219)
!1223 = distinct !{!1223, !1206, !1224}
!1224 = !DILocation(line: 518, column: 3, scope: !1193)
!1225 = !DILocation(line: 512, column: 34, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 512, column: 7)
!1227 = !DILocation(line: 512, column: 47, scope: !1226)
!1228 = !DILocation(line: 512, column: 7, scope: !1209)
!1229 = !DILocation(line: 513, column: 5, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !2, line: 513, column: 3)
!1231 = !DILocation(line: 513, column: 10, scope: !1230)
!1232 = !DILocation(line: 513, column: 15, scope: !1230)
!1233 = !DILocation(line: 514, column: 4, scope: !1230)
!1234 = !DILocation(line: 517, column: 22, scope: !1209)
!1235 = !DILocation(line: 517, column: 15, scope: !1209)
!1236 = !DILocation(line: 517, column: 3, scope: !1209)
!1237 = !DILocation(line: 517, column: 8, scope: !1209)
!1238 = !DILocation(line: 517, column: 13, scope: !1209)
!1239 = !DILocation(line: 520, column: 1, scope: !1193)
!1240 = !DISubprogram(name: "sinc_set_converter", scope: !118, file: !118, line: 124, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1241 = !DISubprogram(name: "zoh_set_converter", scope: !118, file: !118, line: 136, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1242 = !DISubprogram(name: "linear_set_converter", scope: !118, file: !118, line: 130, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

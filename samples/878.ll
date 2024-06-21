; ModuleID = 'samples/878.bc'
source_filename = "src/extended/maxcoordvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtMaxcoordvalue = type { i64, %struct.GtUwordPair, %struct.GtUwordPair }
%struct.GtUwordPair = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"src/extended/maxcoordvalue.c\00", align 1, !dbg !0
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [12 x i8] c"max != NULL\00", align 1, !dbg !12
@__func__.gt_maxcoordvalue_get_value = private unnamed_addr constant [27 x i8] c"gt_maxcoordvalue_get_value\00", align 1, !dbg !17
@__func__.gt_maxcoordvalue_set_start = private unnamed_addr constant [27 x i8] c"gt_maxcoordvalue_set_start\00", align 1, !dbg !23
@__func__.gt_maxcoordvalue_get_start = private unnamed_addr constant [27 x i8] c"gt_maxcoordvalue_get_start\00", align 1, !dbg !25
@__func__.gt_maxcoordvalue_set_end_with_pair = private unnamed_addr constant [35 x i8] c"gt_maxcoordvalue_set_end_with_pair\00", align 1, !dbg !27
@__func__.gt_maxcoordvalue_get_end = private unnamed_addr constant [25 x i8] c"gt_maxcoordvalue_get_end\00", align 1, !dbg !32
@__func__.gt_maxcoordvalue_coord_update = private unnamed_addr constant [30 x i8] c"gt_maxcoordvalue_coord_update\00", align 1, !dbg !37
@__func__.gt_maxcoordvalue_coord_update_without_start = private unnamed_addr constant [44 x i8] c"gt_maxcoordvalue_coord_update_without_start\00", align 1, !dbg !42
@__func__.gt_maxcoordvalue_get_row_length = private unnamed_addr constant [32 x i8] c"gt_maxcoordvalue_get_row_length\00", align 1, !dbg !47
@.str.3 = private unnamed_addr constant [13 x i8] c"end >= start\00", align 1, !dbg !52
@__func__.gt_maxcoordvalue_get_col_length = private unnamed_addr constant [32 x i8] c"gt_maxcoordvalue_get_col_length\00", align 1, !dbg !57
@__func__.gt_maxcoordvalue_reset = private unnamed_addr constant [23 x i8] c"gt_maxcoordvalue_reset\00", align 1, !dbg !59
@__func__.gt_maxcoordvalue_set_value = private unnamed_addr constant [27 x i8] c"gt_maxcoordvalue_set_value\00", align 1, !dbg !64
@__func__.gt_maxcoordvalue_set_start_with_pair = private unnamed_addr constant [37 x i8] c"gt_maxcoordvalue_set_start_with_pair\00", align 1, !dbg !66
@__func__.gt_maxcoordvalue_set_end = private unnamed_addr constant [25 x i8] c"gt_maxcoordvalue_set_end\00", align 1, !dbg !71

; Function Attrs: nounwind uwtable
define ptr @gt_maxcoordvalue_new() #0 !dbg !86 {
entry:
  %max = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #6, !dbg !108
  tail call void @llvm.dbg.declare(metadata ptr %max, metadata !107, metadata !DIExpression()), !dbg !109
  %call = call ptr @gt_calloc_mem(i64 noundef 1, i64 noundef 40, ptr noundef @.str, i32 noundef 32), !dbg !110
  store ptr %call, ptr %max, align 8, !dbg !111, !tbaa !112
  %0 = load ptr, ptr %max, align 8, !dbg !116, !tbaa !112
  %value = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %0, i32 0, i32 0, !dbg !117
  store i64 0, ptr %value, align 8, !dbg !118, !tbaa !119
  %1 = load ptr, ptr %max, align 8, !dbg !123, !tbaa !112
  %start = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %1, i32 0, i32 1, !dbg !124
  %a = getelementptr inbounds %struct.GtUwordPair, ptr %start, i32 0, i32 0, !dbg !125
  store i64 0, ptr %a, align 8, !dbg !126, !tbaa !127
  %2 = load ptr, ptr %max, align 8, !dbg !128, !tbaa !112
  %start1 = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %2, i32 0, i32 1, !dbg !129
  %b = getelementptr inbounds %struct.GtUwordPair, ptr %start1, i32 0, i32 1, !dbg !130
  store i64 0, ptr %b, align 8, !dbg !131, !tbaa !132
  %3 = load ptr, ptr %max, align 8, !dbg !133, !tbaa !112
  %end = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %3, i32 0, i32 2, !dbg !134
  %a2 = getelementptr inbounds %struct.GtUwordPair, ptr %end, i32 0, i32 0, !dbg !135
  store i64 0, ptr %a2, align 8, !dbg !136, !tbaa !137
  %4 = load ptr, ptr %max, align 8, !dbg !138, !tbaa !112
  %end3 = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %4, i32 0, i32 2, !dbg !139
  %b4 = getelementptr inbounds %struct.GtUwordPair, ptr %end3, i32 0, i32 1, !dbg !140
  store i64 0, ptr %b4, align 8, !dbg !141, !tbaa !142
  %5 = load ptr, ptr %max, align 8, !dbg !143, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #6, !dbg !144
  ret ptr %5, !dbg !145
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !146 ptr @gt_calloc_mem(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @gt_maxcoordvalue_delete(ptr noundef %max) #0 !dbg !152 {
entry:
  %max.addr = alloca ptr, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !156, metadata !DIExpression()), !dbg !157
  %0 = load ptr, ptr %max.addr, align 8, !dbg !158, !tbaa !112
  %cmp = icmp ne ptr %0, null, !dbg !160
  br i1 %cmp, label %if.then, label %if.end, !dbg !161

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %max.addr, align 8, !dbg !162, !tbaa !112
  call void @gt_free_mem(ptr noundef %1, ptr noundef @.str, i32 noundef 46), !dbg !162
  br label %if.end, !dbg !162

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !163
}

declare !dbg !164 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define i64 @gt_maxcoordvalue_get_value(ptr noundef %max) #0 !dbg !167 {
entry:
  %max.addr = alloca ptr, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !173, metadata !DIExpression()), !dbg !174
  br label %do.body, !dbg !175

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %max.addr, align 8, !dbg !176, !tbaa !112
  %cmp = icmp ne ptr %0, null, !dbg !176
  br i1 %cmp, label %if.end, label %if.then, !dbg !179

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !180, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_get_value, ptr noundef @.str, i32 noundef 57), !dbg !180
  call void @abort() #7, !dbg !180
  unreachable, !dbg !180

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !179

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %max.addr, align 8, !dbg !182, !tbaa !112
  %value = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %2, i32 0, i32 0, !dbg !183
  %3 = load i64, ptr %value, align 8, !dbg !183, !tbaa !119
  ret i64 %3, !dbg !184
}

declare !dbg !185 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !247 void @abort() #3

; Function Attrs: nounwind uwtable
define void @gt_maxcoordvalue_set_start(ptr noundef %max, i64 noundef %a, i64 noundef %b) #0 !dbg !251 {
entry:
  %max.addr = alloca ptr, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !255, metadata !DIExpression()), !dbg !258
  store i64 %a, ptr %a.addr, align 8, !tbaa !259
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !256, metadata !DIExpression()), !dbg !260
  store i64 %b, ptr %b.addr, align 8, !tbaa !259
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !257, metadata !DIExpression()), !dbg !261
  br label %do.body, !dbg !262

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %max.addr, align 8, !dbg !263, !tbaa !112
  %cmp = icmp ne ptr %0, null, !dbg !263
  br i1 %cmp, label %if.end, label %if.then, !dbg !266

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !267, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_set_start, ptr noundef @.str, i32 noundef 64), !dbg !267
  call void @abort() #7, !dbg !267
  unreachable, !dbg !267

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !266

do.end:                                           ; preds = %if.end
  %2 = load i64, ptr %a.addr, align 8, !dbg !269, !tbaa !259
  %3 = load ptr, ptr %max.addr, align 8, !dbg !270, !tbaa !112
  %start = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %3, i32 0, i32 1, !dbg !271
  %a1 = getelementptr inbounds %struct.GtUwordPair, ptr %start, i32 0, i32 0, !dbg !272
  store i64 %2, ptr %a1, align 8, !dbg !273, !tbaa !127
  %4 = load i64, ptr %b.addr, align 8, !dbg !274, !tbaa !259
  %5 = load ptr, ptr %max.addr, align 8, !dbg !275, !tbaa !112
  %start2 = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %5, i32 0, i32 1, !dbg !276
  %b3 = getelementptr inbounds %struct.GtUwordPair, ptr %start2, i32 0, i32 1, !dbg !277
  store i64 %4, ptr %b3, align 8, !dbg !278, !tbaa !132
  ret void, !dbg !279
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @gt_maxcoordvalue_get_start(ptr noundef %max) #0 !dbg !280 {
entry:
  %retval = alloca %struct.GtUwordPair, align 8
  %max.addr = alloca ptr, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !284, metadata !DIExpression()), !dbg !285
  br label %do.body, !dbg !286

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %max.addr, align 8, !dbg !287, !tbaa !112
  %cmp = icmp ne ptr %0, null, !dbg !287
  br i1 %cmp, label %if.end, label %if.then, !dbg !290

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !291, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_get_start, ptr noundef @.str, i32 noundef 78), !dbg !291
  call void @abort() #7, !dbg !291
  unreachable, !dbg !291

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !290

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %max.addr, align 8, !dbg !293, !tbaa !112
  %start = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %2, i32 0, i32 1, !dbg !294
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %start, i64 16, i1 false), !dbg !294, !tbaa.struct !295
  %3 = load { i64, i64 }, ptr %retval, align 8, !dbg !296
  ret { i64, i64 } %3, !dbg !296
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define void @gt_maxcoordvalue_set_end_with_pair(ptr noundef %max, i64 %end.coerce0, i64 %end.coerce1) #0 !dbg !297 {
entry:
  %end = alloca %struct.GtUwordPair, align 8
  %max.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %end, i32 0, i32 0
  store i64 %end.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %end, i32 0, i32 1
  store i64 %end.coerce1, ptr %1, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !302, metadata !DIExpression()), !dbg !304
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !303, metadata !DIExpression()), !dbg !305
  br label %do.body, !dbg !306

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %max.addr, align 8, !dbg !307, !tbaa !112
  %cmp = icmp ne ptr %2, null, !dbg !307
  br i1 %cmp, label %if.end, label %if.then, !dbg !310

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !311, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_set_end_with_pair, ptr noundef @.str, i32 noundef 85), !dbg !311
  call void @abort() #7, !dbg !311
  unreachable, !dbg !311

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !310

do.end:                                           ; preds = %if.end
  %4 = load ptr, ptr %max.addr, align 8, !dbg !313, !tbaa !112
  %end1 = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %4, i32 0, i32 2, !dbg !314
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %end1, ptr align 8 %end, i64 16, i1 false), !dbg !315, !tbaa.struct !295
  ret void, !dbg !316
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @gt_maxcoordvalue_get_end(ptr noundef %max) #0 !dbg !317 {
entry:
  %retval = alloca %struct.GtUwordPair, align 8
  %max.addr = alloca ptr, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !319, metadata !DIExpression()), !dbg !320
  br label %do.body, !dbg !321

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %max.addr, align 8, !dbg !322, !tbaa !112
  %cmp = icmp ne ptr %0, null, !dbg !322
  br i1 %cmp, label %if.end, label %if.then, !dbg !325

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !326, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_get_end, ptr noundef @.str, i32 noundef 99), !dbg !326
  call void @abort() #7, !dbg !326
  unreachable, !dbg !326

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !325

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %max.addr, align 8, !dbg !328, !tbaa !112
  %end = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %2, i32 0, i32 2, !dbg !329
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %end, i64 16, i1 false), !dbg !329, !tbaa.struct !295
  %3 = load { i64, i64 }, ptr %retval, align 8, !dbg !330
  ret { i64, i64 } %3, !dbg !330
}

; Function Attrs: nounwind uwtable
define void @gt_maxcoordvalue_coord_update(ptr noundef %max, i64 noundef %value, i64 %start.coerce0, i64 %start.coerce1, i64 noundef %enda, i64 noundef %endb) #0 !dbg !331 {
entry:
  %start = alloca %struct.GtUwordPair, align 8
  %max.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %enda.addr = alloca i64, align 8
  %endb.addr = alloca i64, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %start, i32 0, i32 0
  store i64 %start.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %start, i32 0, i32 1
  store i64 %start.coerce1, ptr %1, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !335, metadata !DIExpression()), !dbg !340
  store i64 %value, ptr %value.addr, align 8, !tbaa !259
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !336, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !337, metadata !DIExpression()), !dbg !342
  store i64 %enda, ptr %enda.addr, align 8, !tbaa !259
  tail call void @llvm.dbg.declare(metadata ptr %enda.addr, metadata !338, metadata !DIExpression()), !dbg !343
  store i64 %endb, ptr %endb.addr, align 8, !tbaa !259
  tail call void @llvm.dbg.declare(metadata ptr %endb.addr, metadata !339, metadata !DIExpression()), !dbg !344
  br label %do.body, !dbg !345

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %max.addr, align 8, !dbg !346, !tbaa !112
  %cmp = icmp ne ptr %2, null, !dbg !346
  br i1 %cmp, label %if.end, label %if.then, !dbg !349

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !350, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_coord_update, ptr noundef @.str, i32 noundef 109), !dbg !350
  call void @abort() #7, !dbg !350
  unreachable, !dbg !350

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !349

do.end:                                           ; preds = %if.end
  %4 = load ptr, ptr %max.addr, align 8, !dbg !352, !tbaa !112
  %5 = load i64, ptr %value.addr, align 8, !dbg !353, !tbaa !259
  call void @gt_maxcoordvalue_set_value(ptr noundef %4, i64 noundef %5), !dbg !354
  %6 = load ptr, ptr %max.addr, align 8, !dbg !355, !tbaa !112
  %7 = getelementptr inbounds { i64, i64 }, ptr %start, i32 0, i32 0, !dbg !356
  %8 = load i64, ptr %7, align 8, !dbg !356
  %9 = getelementptr inbounds { i64, i64 }, ptr %start, i32 0, i32 1, !dbg !356
  %10 = load i64, ptr %9, align 8, !dbg !356
  call void @gt_maxcoordvalue_set_start_with_pair(ptr noundef %6, i64 %8, i64 %10), !dbg !356
  %11 = load ptr, ptr %max.addr, align 8, !dbg !357, !tbaa !112
  %12 = load i64, ptr %enda.addr, align 8, !dbg !358, !tbaa !259
  %13 = load i64, ptr %endb.addr, align 8, !dbg !359, !tbaa !259
  call void @gt_maxcoordvalue_set_end(ptr noundef %11, i64 noundef %12, i64 noundef %13), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: nounwind uwtable
define internal void @gt_maxcoordvalue_set_value(ptr noundef %max, i64 noundef %value) #0 !dbg !362 {
entry:
  %max.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !367, metadata !DIExpression()), !dbg !369
  store i64 %value, ptr %value.addr, align 8, !tbaa !259
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !368, metadata !DIExpression()), !dbg !370
  br label %do.body, !dbg !371

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %max.addr, align 8, !dbg !372, !tbaa !112
  %cmp = icmp ne ptr %0, null, !dbg !372
  br i1 %cmp, label %if.end, label %if.then, !dbg !375

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !376, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_set_value, ptr noundef @.str, i32 noundef 51), !dbg !376
  call void @abort() #7, !dbg !376
  unreachable, !dbg !376

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !375

do.end:                                           ; preds = %if.end
  %2 = load i64, ptr %value.addr, align 8, !dbg !378, !tbaa !259
  %3 = load ptr, ptr %max.addr, align 8, !dbg !379, !tbaa !112
  %value1 = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %3, i32 0, i32 0, !dbg !380
  store i64 %2, ptr %value1, align 8, !dbg !381, !tbaa !119
  ret void, !dbg !382
}

; Function Attrs: nounwind uwtable
define internal void @gt_maxcoordvalue_set_start_with_pair(ptr noundef %max, i64 %start.coerce0, i64 %start.coerce1) #0 !dbg !383 {
entry:
  %start = alloca %struct.GtUwordPair, align 8
  %max.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %start, i32 0, i32 0
  store i64 %start.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %start, i32 0, i32 1
  store i64 %start.coerce1, ptr %1, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !385, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !386, metadata !DIExpression()), !dbg !388
  br label %do.body, !dbg !389

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %max.addr, align 8, !dbg !390, !tbaa !112
  %cmp = icmp ne ptr %2, null, !dbg !390
  br i1 %cmp, label %if.end, label %if.then, !dbg !393

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !394, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_set_start_with_pair, ptr noundef @.str, i32 noundef 72), !dbg !394
  call void @abort() #7, !dbg !394
  unreachable, !dbg !394

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !393

do.end:                                           ; preds = %if.end
  %4 = load ptr, ptr %max.addr, align 8, !dbg !396, !tbaa !112
  %start1 = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %4, i32 0, i32 1, !dbg !397
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %start1, ptr align 8 %start, i64 16, i1 false), !dbg !398, !tbaa.struct !295
  ret void, !dbg !399
}

; Function Attrs: nounwind uwtable
define internal void @gt_maxcoordvalue_set_end(ptr noundef %max, i64 noundef %a, i64 noundef %b) #0 !dbg !400 {
entry:
  %max.addr = alloca ptr, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !402, metadata !DIExpression()), !dbg !405
  store i64 %a, ptr %a.addr, align 8, !tbaa !259
  tail call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !403, metadata !DIExpression()), !dbg !406
  store i64 %b, ptr %b.addr, align 8, !tbaa !259
  tail call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !404, metadata !DIExpression()), !dbg !407
  br label %do.body, !dbg !408

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %max.addr, align 8, !dbg !409, !tbaa !112
  %cmp = icmp ne ptr %0, null, !dbg !409
  br i1 %cmp, label %if.end, label %if.then, !dbg !412

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !413, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_set_end, ptr noundef @.str, i32 noundef 92), !dbg !413
  call void @abort() #7, !dbg !413
  unreachable, !dbg !413

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !412

do.end:                                           ; preds = %if.end
  %2 = load i64, ptr %a.addr, align 8, !dbg !415, !tbaa !259
  %3 = load ptr, ptr %max.addr, align 8, !dbg !416, !tbaa !112
  %end = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %3, i32 0, i32 2, !dbg !417
  %a1 = getelementptr inbounds %struct.GtUwordPair, ptr %end, i32 0, i32 0, !dbg !418
  store i64 %2, ptr %a1, align 8, !dbg !419, !tbaa !137
  %4 = load i64, ptr %b.addr, align 8, !dbg !420, !tbaa !259
  %5 = load ptr, ptr %max.addr, align 8, !dbg !421, !tbaa !112
  %end2 = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %5, i32 0, i32 2, !dbg !422
  %b3 = getelementptr inbounds %struct.GtUwordPair, ptr %end2, i32 0, i32 1, !dbg !423
  store i64 %4, ptr %b3, align 8, !dbg !424, !tbaa !142
  ret void, !dbg !425
}

; Function Attrs: nounwind uwtable
define void @gt_maxcoordvalue_coord_update_without_start(ptr noundef %max, i64 noundef %value, i64 noundef %enda, i64 noundef %endb) #0 !dbg !426 {
entry:
  %max.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %enda.addr = alloca i64, align 8
  %endb.addr = alloca i64, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !430, metadata !DIExpression()), !dbg !434
  store i64 %value, ptr %value.addr, align 8, !tbaa !259
  tail call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !431, metadata !DIExpression()), !dbg !435
  store i64 %enda, ptr %enda.addr, align 8, !tbaa !259
  tail call void @llvm.dbg.declare(metadata ptr %enda.addr, metadata !432, metadata !DIExpression()), !dbg !436
  store i64 %endb, ptr %endb.addr, align 8, !tbaa !259
  tail call void @llvm.dbg.declare(metadata ptr %endb.addr, metadata !433, metadata !DIExpression()), !dbg !437
  br label %do.body, !dbg !438

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %max.addr, align 8, !dbg !439, !tbaa !112
  %cmp = icmp ne ptr %0, null, !dbg !439
  br i1 %cmp, label %if.end, label %if.then, !dbg !442

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !443, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_coord_update_without_start, ptr noundef @.str, i32 noundef 122), !dbg !443
  call void @abort() #7, !dbg !443
  unreachable, !dbg !443

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !442

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %max.addr, align 8, !dbg !445, !tbaa !112
  %3 = load i64, ptr %value.addr, align 8, !dbg !446, !tbaa !259
  call void @gt_maxcoordvalue_set_value(ptr noundef %2, i64 noundef %3), !dbg !447
  %4 = load ptr, ptr %max.addr, align 8, !dbg !448, !tbaa !112
  %5 = load i64, ptr %enda.addr, align 8, !dbg !449, !tbaa !259
  %6 = load i64, ptr %endb.addr, align 8, !dbg !450, !tbaa !259
  call void @gt_maxcoordvalue_set_end(ptr noundef %4, i64 noundef %5, i64 noundef %6), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: nounwind uwtable
define i64 @gt_maxcoordvalue_get_row_length(ptr noundef %max) #0 !dbg !453 {
entry:
  %max.addr = alloca ptr, align 8
  %end = alloca i64, align 8
  %coerce = alloca %struct.GtUwordPair, align 8
  %start = alloca i64, align 8
  %coerce3 = alloca %struct.GtUwordPair, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !457, metadata !DIExpression()), !dbg !460
  br label %do.body, !dbg !461

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %max.addr, align 8, !dbg !462, !tbaa !112
  %cmp = icmp ne ptr %0, null, !dbg !462
  br i1 %cmp, label %if.end, label %if.then, !dbg !465

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !466, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_get_row_length, ptr noundef @.str, i32 noundef 130), !dbg !466
  call void @abort() #7, !dbg !466
  unreachable, !dbg !466

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !465

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #6, !dbg !468
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !458, metadata !DIExpression()), !dbg !469
  %2 = load ptr, ptr %max.addr, align 8, !dbg !470, !tbaa !112
  %call1 = call { i64, i64 } @gt_maxcoordvalue_get_end(ptr noundef %2), !dbg !471
  %3 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 0, !dbg !471
  %4 = extractvalue { i64, i64 } %call1, 0, !dbg !471
  store i64 %4, ptr %3, align 8, !dbg !471
  %5 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 1, !dbg !471
  %6 = extractvalue { i64, i64 } %call1, 1, !dbg !471
  store i64 %6, ptr %5, align 8, !dbg !471
  %a = getelementptr inbounds %struct.GtUwordPair, ptr %coerce, i32 0, i32 0, !dbg !472
  %7 = load i64, ptr %a, align 8, !dbg !472, !tbaa !473
  store i64 %7, ptr %end, align 8, !dbg !469, !tbaa !259
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #6, !dbg !474
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !459, metadata !DIExpression()), !dbg !475
  %8 = load ptr, ptr %max.addr, align 8, !dbg !476, !tbaa !112
  %call2 = call { i64, i64 } @gt_maxcoordvalue_get_start(ptr noundef %8), !dbg !477
  %9 = getelementptr inbounds { i64, i64 }, ptr %coerce3, i32 0, i32 0, !dbg !477
  %10 = extractvalue { i64, i64 } %call2, 0, !dbg !477
  store i64 %10, ptr %9, align 8, !dbg !477
  %11 = getelementptr inbounds { i64, i64 }, ptr %coerce3, i32 0, i32 1, !dbg !477
  %12 = extractvalue { i64, i64 } %call2, 1, !dbg !477
  store i64 %12, ptr %11, align 8, !dbg !477
  %a4 = getelementptr inbounds %struct.GtUwordPair, ptr %coerce3, i32 0, i32 0, !dbg !478
  %13 = load i64, ptr %a4, align 8, !dbg !478, !tbaa !473
  store i64 %13, ptr %start, align 8, !dbg !475, !tbaa !259
  br label %do.body5, !dbg !479

do.body5:                                         ; preds = %do.end
  %14 = load i64, ptr %end, align 8, !dbg !480, !tbaa !259
  %15 = load i64, ptr %start, align 8, !dbg !480, !tbaa !259
  %cmp6 = icmp uge i64 %14, %15, !dbg !480
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !483

if.then7:                                         ; preds = %do.body5
  %16 = load ptr, ptr @stderr, align 8, !dbg !484, !tbaa !112
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.1, ptr noundef @.str.3, ptr noundef @__func__.gt_maxcoordvalue_get_row_length, ptr noundef @.str, i32 noundef 135), !dbg !484
  call void @abort() #7, !dbg !484
  unreachable, !dbg !484

if.end9:                                          ; preds = %do.body5
  br label %do.cond, !dbg !483

do.cond:                                          ; preds = %if.end9
  br label %do.end10, !dbg !483

do.end10:                                         ; preds = %do.cond
  %17 = load i64, ptr %end, align 8, !dbg !486, !tbaa !259
  %18 = load i64, ptr %start, align 8, !dbg !487, !tbaa !259
  %sub = sub i64 %17, %18, !dbg !488
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #6, !dbg !489
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #6, !dbg !489
  ret i64 %sub, !dbg !490
}

; Function Attrs: nounwind uwtable
define i64 @gt_maxcoordvalue_get_col_length(ptr noundef %max) #0 !dbg !491 {
entry:
  %max.addr = alloca ptr, align 8
  %end = alloca i64, align 8
  %coerce = alloca %struct.GtUwordPair, align 8
  %start = alloca i64, align 8
  %coerce3 = alloca %struct.GtUwordPair, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !493, metadata !DIExpression()), !dbg !496
  br label %do.body, !dbg !497

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %max.addr, align 8, !dbg !498, !tbaa !112
  %cmp = icmp ne ptr %0, null, !dbg !498
  br i1 %cmp, label %if.end, label %if.then, !dbg !501

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !502, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_get_col_length, ptr noundef @.str, i32 noundef 141), !dbg !502
  call void @abort() #7, !dbg !502
  unreachable, !dbg !502

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !501

do.end:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #6, !dbg !504
  tail call void @llvm.dbg.declare(metadata ptr %end, metadata !494, metadata !DIExpression()), !dbg !505
  %2 = load ptr, ptr %max.addr, align 8, !dbg !506, !tbaa !112
  %call1 = call { i64, i64 } @gt_maxcoordvalue_get_end(ptr noundef %2), !dbg !507
  %3 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 0, !dbg !507
  %4 = extractvalue { i64, i64 } %call1, 0, !dbg !507
  store i64 %4, ptr %3, align 8, !dbg !507
  %5 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 1, !dbg !507
  %6 = extractvalue { i64, i64 } %call1, 1, !dbg !507
  store i64 %6, ptr %5, align 8, !dbg !507
  %b = getelementptr inbounds %struct.GtUwordPair, ptr %coerce, i32 0, i32 1, !dbg !508
  %7 = load i64, ptr %b, align 8, !dbg !508, !tbaa !509
  store i64 %7, ptr %end, align 8, !dbg !505, !tbaa !259
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #6, !dbg !510
  tail call void @llvm.dbg.declare(metadata ptr %start, metadata !495, metadata !DIExpression()), !dbg !511
  %8 = load ptr, ptr %max.addr, align 8, !dbg !512, !tbaa !112
  %call2 = call { i64, i64 } @gt_maxcoordvalue_get_start(ptr noundef %8), !dbg !513
  %9 = getelementptr inbounds { i64, i64 }, ptr %coerce3, i32 0, i32 0, !dbg !513
  %10 = extractvalue { i64, i64 } %call2, 0, !dbg !513
  store i64 %10, ptr %9, align 8, !dbg !513
  %11 = getelementptr inbounds { i64, i64 }, ptr %coerce3, i32 0, i32 1, !dbg !513
  %12 = extractvalue { i64, i64 } %call2, 1, !dbg !513
  store i64 %12, ptr %11, align 8, !dbg !513
  %b4 = getelementptr inbounds %struct.GtUwordPair, ptr %coerce3, i32 0, i32 1, !dbg !514
  %13 = load i64, ptr %b4, align 8, !dbg !514, !tbaa !509
  store i64 %13, ptr %start, align 8, !dbg !511, !tbaa !259
  br label %do.body5, !dbg !515

do.body5:                                         ; preds = %do.end
  %14 = load i64, ptr %end, align 8, !dbg !516, !tbaa !259
  %15 = load i64, ptr %start, align 8, !dbg !516, !tbaa !259
  %cmp6 = icmp uge i64 %14, %15, !dbg !516
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !519

if.then7:                                         ; preds = %do.body5
  %16 = load ptr, ptr @stderr, align 8, !dbg !520, !tbaa !112
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.1, ptr noundef @.str.3, ptr noundef @__func__.gt_maxcoordvalue_get_col_length, ptr noundef @.str, i32 noundef 146), !dbg !520
  call void @abort() #7, !dbg !520
  unreachable, !dbg !520

if.end9:                                          ; preds = %do.body5
  br label %do.cond, !dbg !519

do.cond:                                          ; preds = %if.end9
  br label %do.end10, !dbg !519

do.end10:                                         ; preds = %do.cond
  %17 = load i64, ptr %end, align 8, !dbg !522, !tbaa !259
  %18 = load i64, ptr %start, align 8, !dbg !523, !tbaa !259
  %sub = sub i64 %17, %18, !dbg !524
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #6, !dbg !525
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #6, !dbg !525
  ret i64 %sub, !dbg !526
}

; Function Attrs: nounwind uwtable
define zeroext i1 @gt_maxcoordvalue_get_length_safe(ptr noundef %max) #0 !dbg !527 {
entry:
  %retval = alloca i1, align 1
  %max.addr = alloca ptr, align 8
  %coerce = alloca %struct.GtUwordPair, align 8
  %coerce2 = alloca %struct.GtUwordPair, align 8
  %coerce5 = alloca %struct.GtUwordPair, align 8
  %coerce7 = alloca %struct.GtUwordPair, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !532, metadata !DIExpression()), !dbg !533
  %0 = load ptr, ptr %max.addr, align 8, !dbg !534, !tbaa !112
  %call = call { i64, i64 } @gt_maxcoordvalue_get_end(ptr noundef %0), !dbg !536
  %1 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 0, !dbg !536
  %2 = extractvalue { i64, i64 } %call, 0, !dbg !536
  store i64 %2, ptr %1, align 8, !dbg !536
  %3 = getelementptr inbounds { i64, i64 }, ptr %coerce, i32 0, i32 1, !dbg !536
  %4 = extractvalue { i64, i64 } %call, 1, !dbg !536
  store i64 %4, ptr %3, align 8, !dbg !536
  %a = getelementptr inbounds %struct.GtUwordPair, ptr %coerce, i32 0, i32 0, !dbg !537
  %5 = load i64, ptr %a, align 8, !dbg !537, !tbaa !473
  %6 = load ptr, ptr %max.addr, align 8, !dbg !538, !tbaa !112
  %call1 = call { i64, i64 } @gt_maxcoordvalue_get_start(ptr noundef %6), !dbg !539
  %7 = getelementptr inbounds { i64, i64 }, ptr %coerce2, i32 0, i32 0, !dbg !539
  %8 = extractvalue { i64, i64 } %call1, 0, !dbg !539
  store i64 %8, ptr %7, align 8, !dbg !539
  %9 = getelementptr inbounds { i64, i64 }, ptr %coerce2, i32 0, i32 1, !dbg !539
  %10 = extractvalue { i64, i64 } %call1, 1, !dbg !539
  store i64 %10, ptr %9, align 8, !dbg !539
  %a3 = getelementptr inbounds %struct.GtUwordPair, ptr %coerce2, i32 0, i32 0, !dbg !540
  %11 = load i64, ptr %a3, align 8, !dbg !540, !tbaa !473
  %cmp = icmp eq i64 %5, %11, !dbg !541
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !542

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %max.addr, align 8, !dbg !543, !tbaa !112
  %call4 = call { i64, i64 } @gt_maxcoordvalue_get_end(ptr noundef %12), !dbg !544
  %13 = getelementptr inbounds { i64, i64 }, ptr %coerce5, i32 0, i32 0, !dbg !544
  %14 = extractvalue { i64, i64 } %call4, 0, !dbg !544
  store i64 %14, ptr %13, align 8, !dbg !544
  %15 = getelementptr inbounds { i64, i64 }, ptr %coerce5, i32 0, i32 1, !dbg !544
  %16 = extractvalue { i64, i64 } %call4, 1, !dbg !544
  store i64 %16, ptr %15, align 8, !dbg !544
  %b = getelementptr inbounds %struct.GtUwordPair, ptr %coerce5, i32 0, i32 1, !dbg !545
  %17 = load i64, ptr %b, align 8, !dbg !545, !tbaa !509
  %18 = load ptr, ptr %max.addr, align 8, !dbg !546, !tbaa !112
  %call6 = call { i64, i64 } @gt_maxcoordvalue_get_start(ptr noundef %18), !dbg !547
  %19 = getelementptr inbounds { i64, i64 }, ptr %coerce7, i32 0, i32 0, !dbg !547
  %20 = extractvalue { i64, i64 } %call6, 0, !dbg !547
  store i64 %20, ptr %19, align 8, !dbg !547
  %21 = getelementptr inbounds { i64, i64 }, ptr %coerce7, i32 0, i32 1, !dbg !547
  %22 = extractvalue { i64, i64 } %call6, 1, !dbg !547
  store i64 %22, ptr %21, align 8, !dbg !547
  %b8 = getelementptr inbounds %struct.GtUwordPair, ptr %coerce7, i32 0, i32 1, !dbg !548
  %23 = load i64, ptr %b8, align 8, !dbg !548, !tbaa !509
  %cmp9 = icmp eq i64 %17, %23, !dbg !549
  br i1 %cmp9, label %if.then, label %if.end, !dbg !550

if.then:                                          ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !551
  br label %return, !dbg !551

if.end:                                           ; preds = %land.lhs.true, %entry
  store i1 true, ptr %retval, align 1, !dbg !552
  br label %return, !dbg !552

return:                                           ; preds = %if.end, %if.then
  %24 = load i1, ptr %retval, align 1, !dbg !553
  ret i1 %24, !dbg !553
}

; Function Attrs: nounwind uwtable
define void @gt_maxcoordvalue_reset(ptr noundef %max) #0 !dbg !554 {
entry:
  %max.addr = alloca ptr, align 8
  store ptr %max, ptr %max.addr, align 8, !tbaa !112
  tail call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !556, metadata !DIExpression()), !dbg !557
  br label %do.body, !dbg !558

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %max.addr, align 8, !dbg !559, !tbaa !112
  %cmp = icmp ne ptr %0, null, !dbg !559
  br i1 %cmp, label %if.end, label %if.then, !dbg !562

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !563, !tbaa !112
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef @__func__.gt_maxcoordvalue_reset, ptr noundef @.str, i32 noundef 160), !dbg !563
  call void @abort() #7, !dbg !563
  unreachable, !dbg !563

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !562

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %max.addr, align 8, !dbg !565, !tbaa !112
  %value = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %2, i32 0, i32 0, !dbg !566
  store i64 0, ptr %value, align 8, !dbg !567, !tbaa !119
  %3 = load ptr, ptr %max.addr, align 8, !dbg !568, !tbaa !112
  %start = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %3, i32 0, i32 1, !dbg !569
  %a = getelementptr inbounds %struct.GtUwordPair, ptr %start, i32 0, i32 0, !dbg !570
  store i64 0, ptr %a, align 8, !dbg !571, !tbaa !127
  %4 = load ptr, ptr %max.addr, align 8, !dbg !572, !tbaa !112
  %start1 = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %4, i32 0, i32 1, !dbg !573
  %b = getelementptr inbounds %struct.GtUwordPair, ptr %start1, i32 0, i32 1, !dbg !574
  store i64 0, ptr %b, align 8, !dbg !575, !tbaa !132
  %5 = load ptr, ptr %max.addr, align 8, !dbg !576, !tbaa !112
  %end = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %5, i32 0, i32 2, !dbg !577
  %a2 = getelementptr inbounds %struct.GtUwordPair, ptr %end, i32 0, i32 0, !dbg !578
  store i64 0, ptr %a2, align 8, !dbg !579, !tbaa !137
  %6 = load ptr, ptr %max.addr, align 8, !dbg !580, !tbaa !112
  %end3 = getelementptr inbounds %struct.GtMaxcoordvalue, ptr %6, i32 0, i32 2, !dbg !581
  %b4 = getelementptr inbounds %struct.GtUwordPair, ptr %end3, i32 0, i32 1, !dbg !582
  store i64 0, ptr %b4, align 8, !dbg !583, !tbaa !142
  ret void, !dbg !584
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!73}
!llvm.module.flags = !{!80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/extended/maxcoordvalue.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f8a2ffff8cc90e045cdfa99875512cbc")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 297)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 12)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 216, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!21 = !{!22}
!22 = !DISubrange(count: 27)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !19, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !19, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 280, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 35)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 200, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 25)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 240, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 30)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 352, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 44)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 32)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 13)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !49, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 184, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 23)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !19, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 296, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 37)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !34, isLocal: true, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, globals: !79, splitDebugInlining: false, nameTableKind: None)
!74 = !{!75, !78}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 70, baseType: !77)
!76 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!77 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !{!0, !7, !12, !17, !23, !25, !27, !32, !37, !42, !47, !52, !57, !59, !64, !66, !71}
!80 = !{i32 7, !"Dwarf Version", i32 5}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{i32 1, !"wchar_size", i32 4}
!83 = !{i32 8, !"PIC Level", i32 2}
!84 = !{i32 7, !"uwtable", i32 2}
!85 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!86 = distinct !DISubprogram(name: "gt_maxcoordvalue_new", scope: !2, file: !2, line: 29, type: !87, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !106)
!87 = !DISubroutineType(types: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtMaxcoordvalue", file: !91, line: 25, baseType: !92)
!91 = !DIFile(filename: "src/extended/maxcoordvalue.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "b2368baf0f08c20235cb2bb50641b29c")
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtMaxcoordvalue", file: !2, line: 23, size: 320, elements: !93)
!93 = !{!94, !98, !105}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !92, file: !2, line: 24, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtWord", file: !96, line: 94, baseType: !97)
!96 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!97 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !92, file: !2, line: 25, baseType: !99, size: 128, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUwordPair", file: !96, line: 118, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 115, size: 128, elements: !101)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !100, file: !96, line: 117, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !96, line: 83, baseType: !77)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !100, file: !96, line: 117, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !92, file: !2, line: 26, baseType: !99, size: 128, offset: 192)
!106 = !{!107}
!107 = !DILocalVariable(name: "max", scope: !86, file: !2, line: 31, type: !89)
!108 = !DILocation(line: 31, column: 3, scope: !86)
!109 = !DILocation(line: 31, column: 20, scope: !86)
!110 = !DILocation(line: 32, column: 9, scope: !86)
!111 = !DILocation(line: 32, column: 7, scope: !86)
!112 = !{!113, !113, i64 0}
!113 = !{!"any pointer", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !DILocation(line: 33, column: 3, scope: !86)
!117 = !DILocation(line: 33, column: 8, scope: !86)
!118 = !DILocation(line: 33, column: 14, scope: !86)
!119 = !{!120, !121, i64 0}
!120 = !{!"GtMaxcoordvalue", !121, i64 0, !122, i64 8, !122, i64 24}
!121 = !{!"long", !114, i64 0}
!122 = !{!"", !121, i64 0, !121, i64 8}
!123 = !DILocation(line: 35, column: 3, scope: !86)
!124 = !DILocation(line: 35, column: 8, scope: !86)
!125 = !DILocation(line: 35, column: 14, scope: !86)
!126 = !DILocation(line: 35, column: 15, scope: !86)
!127 = !{!120, !121, i64 8}
!128 = !DILocation(line: 36, column: 3, scope: !86)
!129 = !DILocation(line: 36, column: 8, scope: !86)
!130 = !DILocation(line: 36, column: 14, scope: !86)
!131 = !DILocation(line: 36, column: 15, scope: !86)
!132 = !{!120, !121, i64 16}
!133 = !DILocation(line: 38, column: 3, scope: !86)
!134 = !DILocation(line: 38, column: 8, scope: !86)
!135 = !DILocation(line: 38, column: 12, scope: !86)
!136 = !DILocation(line: 38, column: 13, scope: !86)
!137 = !{!120, !121, i64 24}
!138 = !DILocation(line: 39, column: 3, scope: !86)
!139 = !DILocation(line: 39, column: 8, scope: !86)
!140 = !DILocation(line: 39, column: 12, scope: !86)
!141 = !DILocation(line: 39, column: 13, scope: !86)
!142 = !{!120, !121, i64 32}
!143 = !DILocation(line: 40, column: 10, scope: !86)
!144 = !DILocation(line: 41, column: 1, scope: !86)
!145 = !DILocation(line: 40, column: 3, scope: !86)
!146 = !DISubprogram(name: "gt_calloc_mem", scope: !147, file: !147, line: 62, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!147 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!148 = !DISubroutineType(types: !149)
!149 = !{!78, !75, !75, !150, !151}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!151 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!152 = distinct !DISubprogram(name: "gt_maxcoordvalue_delete", scope: !2, file: !2, line: 43, type: !153, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !155)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !89}
!155 = !{!156}
!156 = !DILocalVariable(name: "max", arg: 1, scope: !152, file: !2, line: 43, type: !89)
!157 = !DILocation(line: 43, column: 47, scope: !152)
!158 = !DILocation(line: 45, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !152, file: !2, line: 45, column: 7)
!160 = !DILocation(line: 45, column: 11, scope: !159)
!161 = !DILocation(line: 45, column: 7, scope: !152)
!162 = !DILocation(line: 46, column: 5, scope: !159)
!163 = !DILocation(line: 47, column: 1, scope: !152)
!164 = !DISubprogram(name: "gt_free_mem", scope: !147, file: !147, line: 75, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !78, !150, !151}
!167 = distinct !DISubprogram(name: "gt_maxcoordvalue_get_value", scope: !2, file: !2, line: 55, type: !168, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !172)
!168 = !DISubroutineType(types: !169)
!169 = !{!95, !170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!172 = !{!173}
!173 = !DILocalVariable(name: "max", arg: 1, scope: !167, file: !2, line: 55, type: !170)
!174 = !DILocation(line: 55, column: 58, scope: !167)
!175 = !DILocation(line: 57, column: 3, scope: !167)
!176 = !DILocation(line: 57, column: 3, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !2, line: 57, column: 3)
!178 = distinct !DILexicalBlock(scope: !167, file: !2, line: 57, column: 3)
!179 = !DILocation(line: 57, column: 3, scope: !178)
!180 = !DILocation(line: 57, column: 3, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !2, line: 57, column: 3)
!182 = !DILocation(line: 58, column: 10, scope: !167)
!183 = !DILocation(line: 58, column: 15, scope: !167)
!184 = !DILocation(line: 58, column: 3, scope: !167)
!185 = !DISubprogram(name: "fprintf", scope: !186, file: !186, line: 350, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!187 = !DISubroutineType(types: !188)
!188 = !{!151, !189, !246, null}
!189 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !192, line: 7, baseType: !193)
!192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !194, line: 49, size: 1728, elements: !195)
!194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!195 = !{!196, !197, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !212, !214, !215, !216, !219, !221, !223, !227, !230, !232, !235, !238, !239, !240, !241, !242}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !193, file: !194, line: 51, baseType: !151, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !193, file: !194, line: 54, baseType: !198, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !193, file: !194, line: 55, baseType: !198, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !193, file: !194, line: 56, baseType: !198, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !193, file: !194, line: 57, baseType: !198, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !193, file: !194, line: 58, baseType: !198, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !193, file: !194, line: 59, baseType: !198, size: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !193, file: !194, line: 60, baseType: !198, size: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !193, file: !194, line: 61, baseType: !198, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !193, file: !194, line: 64, baseType: !198, size: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !193, file: !194, line: 65, baseType: !198, size: 64, offset: 640)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !193, file: !194, line: 66, baseType: !198, size: 64, offset: 704)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !193, file: !194, line: 68, baseType: !210, size: 64, offset: 768)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !194, line: 36, flags: DIFlagFwdDecl)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !193, file: !194, line: 70, baseType: !213, size: 64, offset: 832)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !193, file: !194, line: 72, baseType: !151, size: 32, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !193, file: !194, line: 73, baseType: !151, size: 32, offset: 928)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !193, file: !194, line: 74, baseType: !217, size: 64, offset: 960)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !218, line: 152, baseType: !97)
!218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !193, file: !194, line: 77, baseType: !220, size: 16, offset: 1024)
!220 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !193, file: !194, line: 78, baseType: !222, size: 8, offset: 1040)
!222 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !193, file: !194, line: 79, baseType: !224, size: 8, offset: 1048)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 1)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !193, file: !194, line: 81, baseType: !228, size: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !194, line: 43, baseType: null)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !193, file: !194, line: 89, baseType: !231, size: 64, offset: 1152)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !218, line: 153, baseType: !97)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !193, file: !194, line: 91, baseType: !233, size: 64, offset: 1216)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !194, line: 37, flags: DIFlagFwdDecl)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !193, file: !194, line: 92, baseType: !236, size: 64, offset: 1280)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !194, line: 38, flags: DIFlagFwdDecl)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !193, file: !194, line: 93, baseType: !213, size: 64, offset: 1344)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !193, file: !194, line: 94, baseType: !78, size: 64, offset: 1408)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !193, file: !194, line: 95, baseType: !75, size: 64, offset: 1472)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !193, file: !194, line: 96, baseType: !151, size: 32, offset: 1536)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !193, file: !194, line: 98, baseType: !243, size: 160, offset: 1568)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 20)
!246 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)
!247 = !DISubprogram(name: "abort", scope: !248, file: !248, line: 598, type: !249, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!248 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!249 = !DISubroutineType(types: !250)
!250 = !{null}
!251 = distinct !DISubprogram(name: "gt_maxcoordvalue_set_start", scope: !2, file: !2, line: 61, type: !252, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !89, !103, !103}
!254 = !{!255, !256, !257}
!255 = !DILocalVariable(name: "max", arg: 1, scope: !251, file: !2, line: 61, type: !89)
!256 = !DILocalVariable(name: "a", arg: 2, scope: !251, file: !2, line: 62, type: !103)
!257 = !DILocalVariable(name: "b", arg: 3, scope: !251, file: !2, line: 62, type: !103)
!258 = !DILocation(line: 61, column: 50, scope: !251)
!259 = !{!121, !121, i64 0}
!260 = !DILocation(line: 62, column: 41, scope: !251)
!261 = !DILocation(line: 62, column: 52, scope: !251)
!262 = !DILocation(line: 64, column: 3, scope: !251)
!263 = !DILocation(line: 64, column: 3, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !2, line: 64, column: 3)
!265 = distinct !DILexicalBlock(scope: !251, file: !2, line: 64, column: 3)
!266 = !DILocation(line: 64, column: 3, scope: !265)
!267 = !DILocation(line: 64, column: 3, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !2, line: 64, column: 3)
!269 = !DILocation(line: 65, column: 18, scope: !251)
!270 = !DILocation(line: 65, column: 3, scope: !251)
!271 = !DILocation(line: 65, column: 8, scope: !251)
!272 = !DILocation(line: 65, column: 14, scope: !251)
!273 = !DILocation(line: 65, column: 16, scope: !251)
!274 = !DILocation(line: 66, column: 18, scope: !251)
!275 = !DILocation(line: 66, column: 3, scope: !251)
!276 = !DILocation(line: 66, column: 8, scope: !251)
!277 = !DILocation(line: 66, column: 14, scope: !251)
!278 = !DILocation(line: 66, column: 16, scope: !251)
!279 = !DILocation(line: 67, column: 1, scope: !251)
!280 = distinct !DISubprogram(name: "gt_maxcoordvalue_get_start", scope: !2, file: !2, line: 76, type: !281, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{!99, !170}
!283 = !{!284}
!284 = !DILocalVariable(name: "max", arg: 1, scope: !280, file: !2, line: 76, type: !170)
!285 = !DILocation(line: 76, column: 63, scope: !280)
!286 = !DILocation(line: 78, column: 3, scope: !280)
!287 = !DILocation(line: 78, column: 3, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !2, line: 78, column: 3)
!289 = distinct !DILexicalBlock(scope: !280, file: !2, line: 78, column: 3)
!290 = !DILocation(line: 78, column: 3, scope: !289)
!291 = !DILocation(line: 78, column: 3, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !2, line: 78, column: 3)
!293 = !DILocation(line: 79, column: 10, scope: !280)
!294 = !DILocation(line: 79, column: 15, scope: !280)
!295 = !{i64 0, i64 8, !259, i64 8, i64 8, !259}
!296 = !DILocation(line: 79, column: 3, scope: !280)
!297 = distinct !DISubprogram(name: "gt_maxcoordvalue_set_end_with_pair", scope: !2, file: !2, line: 82, type: !298, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !301)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !89, !300}
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!301 = !{!302, !303}
!302 = !DILocalVariable(name: "max", arg: 1, scope: !297, file: !2, line: 82, type: !89)
!303 = !DILocalVariable(name: "end", arg: 2, scope: !297, file: !2, line: 83, type: !300)
!304 = !DILocation(line: 82, column: 58, scope: !297)
!305 = !DILocation(line: 83, column: 59, scope: !297)
!306 = !DILocation(line: 85, column: 3, scope: !297)
!307 = !DILocation(line: 85, column: 3, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !2, line: 85, column: 3)
!309 = distinct !DILexicalBlock(scope: !297, file: !2, line: 85, column: 3)
!310 = !DILocation(line: 85, column: 3, scope: !309)
!311 = !DILocation(line: 85, column: 3, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !2, line: 85, column: 3)
!313 = !DILocation(line: 86, column: 3, scope: !297)
!314 = !DILocation(line: 86, column: 8, scope: !297)
!315 = !DILocation(line: 86, column: 14, scope: !297)
!316 = !DILocation(line: 87, column: 1, scope: !297)
!317 = distinct !DISubprogram(name: "gt_maxcoordvalue_get_end", scope: !2, file: !2, line: 97, type: !281, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !318)
!318 = !{!319}
!319 = !DILocalVariable(name: "max", arg: 1, scope: !317, file: !2, line: 97, type: !170)
!320 = !DILocation(line: 97, column: 61, scope: !317)
!321 = !DILocation(line: 99, column: 3, scope: !317)
!322 = !DILocation(line: 99, column: 3, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !2, line: 99, column: 3)
!324 = distinct !DILexicalBlock(scope: !317, file: !2, line: 99, column: 3)
!325 = !DILocation(line: 99, column: 3, scope: !324)
!326 = !DILocation(line: 99, column: 3, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !2, line: 99, column: 3)
!328 = !DILocation(line: 100, column: 10, scope: !317)
!329 = !DILocation(line: 100, column: 15, scope: !317)
!330 = !DILocation(line: 100, column: 3, scope: !317)
!331 = distinct !DISubprogram(name: "gt_maxcoordvalue_coord_update", scope: !2, file: !2, line: 104, type: !332, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !89, !95, !99, !103, !103}
!334 = !{!335, !336, !337, !338, !339}
!335 = !DILocalVariable(name: "max", arg: 1, scope: !331, file: !2, line: 104, type: !89)
!336 = !DILocalVariable(name: "value", arg: 2, scope: !331, file: !2, line: 105, type: !95)
!337 = !DILocalVariable(name: "start", arg: 3, scope: !331, file: !2, line: 106, type: !99)
!338 = !DILocalVariable(name: "enda", arg: 4, scope: !331, file: !2, line: 107, type: !103)
!339 = !DILocalVariable(name: "endb", arg: 5, scope: !331, file: !2, line: 107, type: !103)
!340 = !DILocation(line: 104, column: 53, scope: !331)
!341 = !DILocation(line: 105, column: 43, scope: !331)
!342 = !DILocation(line: 106, column: 48, scope: !331)
!343 = !DILocation(line: 107, column: 44, scope: !331)
!344 = !DILocation(line: 107, column: 58, scope: !331)
!345 = !DILocation(line: 109, column: 3, scope: !331)
!346 = !DILocation(line: 109, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 109, column: 3)
!348 = distinct !DILexicalBlock(scope: !331, file: !2, line: 109, column: 3)
!349 = !DILocation(line: 109, column: 3, scope: !348)
!350 = !DILocation(line: 109, column: 3, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !2, line: 109, column: 3)
!352 = !DILocation(line: 111, column: 30, scope: !331)
!353 = !DILocation(line: 111, column: 35, scope: !331)
!354 = !DILocation(line: 111, column: 3, scope: !331)
!355 = !DILocation(line: 112, column: 40, scope: !331)
!356 = !DILocation(line: 112, column: 3, scope: !331)
!357 = !DILocation(line: 113, column: 28, scope: !331)
!358 = !DILocation(line: 113, column: 33, scope: !331)
!359 = !DILocation(line: 113, column: 39, scope: !331)
!360 = !DILocation(line: 113, column: 3, scope: !331)
!361 = !DILocation(line: 114, column: 1, scope: !331)
!362 = distinct !DISubprogram(name: "gt_maxcoordvalue_set_value", scope: !2, file: !2, line: 49, type: !363, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !366)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !89, !365}
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!366 = !{!367, !368}
!367 = !DILocalVariable(name: "max", arg: 1, scope: !362, file: !2, line: 49, type: !89)
!368 = !DILocalVariable(name: "value", arg: 2, scope: !362, file: !2, line: 49, type: !365)
!369 = !DILocation(line: 49, column: 57, scope: !362)
!370 = !DILocation(line: 49, column: 75, scope: !362)
!371 = !DILocation(line: 51, column: 3, scope: !362)
!372 = !DILocation(line: 51, column: 3, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !2, line: 51, column: 3)
!374 = distinct !DILexicalBlock(scope: !362, file: !2, line: 51, column: 3)
!375 = !DILocation(line: 51, column: 3, scope: !374)
!376 = !DILocation(line: 51, column: 3, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !2, line: 51, column: 3)
!378 = !DILocation(line: 52, column: 14, scope: !362)
!379 = !DILocation(line: 52, column: 3, scope: !362)
!380 = !DILocation(line: 52, column: 8, scope: !362)
!381 = !DILocation(line: 52, column: 13, scope: !362)
!382 = !DILocation(line: 53, column: 1, scope: !362)
!383 = distinct !DISubprogram(name: "gt_maxcoordvalue_set_start_with_pair", scope: !2, file: !2, line: 69, type: !298, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !384)
!384 = !{!385, !386}
!385 = !DILocalVariable(name: "max", arg: 1, scope: !383, file: !2, line: 69, type: !89)
!386 = !DILocalVariable(name: "start", arg: 2, scope: !383, file: !2, line: 70, type: !300)
!387 = !DILocation(line: 69, column: 67, scope: !383)
!388 = !DILocation(line: 70, column: 68, scope: !383)
!389 = !DILocation(line: 72, column: 3, scope: !383)
!390 = !DILocation(line: 72, column: 3, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !2, line: 72, column: 3)
!392 = distinct !DILexicalBlock(scope: !383, file: !2, line: 72, column: 3)
!393 = !DILocation(line: 72, column: 3, scope: !392)
!394 = !DILocation(line: 72, column: 3, scope: !395)
!395 = distinct !DILexicalBlock(scope: !391, file: !2, line: 72, column: 3)
!396 = !DILocation(line: 73, column: 3, scope: !383)
!397 = !DILocation(line: 73, column: 8, scope: !383)
!398 = !DILocation(line: 73, column: 14, scope: !383)
!399 = !DILocation(line: 74, column: 1, scope: !383)
!400 = distinct !DISubprogram(name: "gt_maxcoordvalue_set_end", scope: !2, file: !2, line: 89, type: !252, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !401)
!401 = !{!402, !403, !404}
!402 = !DILocalVariable(name: "max", arg: 1, scope: !400, file: !2, line: 89, type: !89)
!403 = !DILocalVariable(name: "a", arg: 2, scope: !400, file: !2, line: 90, type: !103)
!404 = !DILocalVariable(name: "b", arg: 3, scope: !400, file: !2, line: 90, type: !103)
!405 = !DILocation(line: 89, column: 55, scope: !400)
!406 = !DILocation(line: 90, column: 46, scope: !400)
!407 = !DILocation(line: 90, column: 57, scope: !400)
!408 = !DILocation(line: 92, column: 3, scope: !400)
!409 = !DILocation(line: 92, column: 3, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !2, line: 92, column: 3)
!411 = distinct !DILexicalBlock(scope: !400, file: !2, line: 92, column: 3)
!412 = !DILocation(line: 92, column: 3, scope: !411)
!413 = !DILocation(line: 92, column: 3, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !2, line: 92, column: 3)
!415 = !DILocation(line: 93, column: 16, scope: !400)
!416 = !DILocation(line: 93, column: 3, scope: !400)
!417 = !DILocation(line: 93, column: 8, scope: !400)
!418 = !DILocation(line: 93, column: 12, scope: !400)
!419 = !DILocation(line: 93, column: 14, scope: !400)
!420 = !DILocation(line: 94, column: 16, scope: !400)
!421 = !DILocation(line: 94, column: 3, scope: !400)
!422 = !DILocation(line: 94, column: 8, scope: !400)
!423 = !DILocation(line: 94, column: 12, scope: !400)
!424 = !DILocation(line: 94, column: 14, scope: !400)
!425 = !DILocation(line: 95, column: 1, scope: !400)
!426 = distinct !DISubprogram(name: "gt_maxcoordvalue_coord_update_without_start", scope: !2, file: !2, line: 117, type: !427, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !89, !95, !103, !103}
!429 = !{!430, !431, !432, !433}
!430 = !DILocalVariable(name: "max", arg: 1, scope: !426, file: !2, line: 117, type: !89)
!431 = !DILocalVariable(name: "value", arg: 2, scope: !426, file: !2, line: 118, type: !95)
!432 = !DILocalVariable(name: "enda", arg: 3, scope: !426, file: !2, line: 119, type: !103)
!433 = !DILocalVariable(name: "endb", arg: 4, scope: !426, file: !2, line: 120, type: !103)
!434 = !DILocation(line: 117, column: 68, scope: !426)
!435 = !DILocation(line: 118, column: 58, scope: !426)
!436 = !DILocation(line: 119, column: 59, scope: !426)
!437 = !DILocation(line: 120, column: 59, scope: !426)
!438 = !DILocation(line: 122, column: 3, scope: !426)
!439 = !DILocation(line: 122, column: 3, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !2, line: 122, column: 3)
!441 = distinct !DILexicalBlock(scope: !426, file: !2, line: 122, column: 3)
!442 = !DILocation(line: 122, column: 3, scope: !441)
!443 = !DILocation(line: 122, column: 3, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !2, line: 122, column: 3)
!445 = !DILocation(line: 124, column: 30, scope: !426)
!446 = !DILocation(line: 124, column: 35, scope: !426)
!447 = !DILocation(line: 124, column: 3, scope: !426)
!448 = !DILocation(line: 125, column: 28, scope: !426)
!449 = !DILocation(line: 125, column: 33, scope: !426)
!450 = !DILocation(line: 125, column: 39, scope: !426)
!451 = !DILocation(line: 125, column: 3, scope: !426)
!452 = !DILocation(line: 126, column: 1, scope: !426)
!453 = distinct !DISubprogram(name: "gt_maxcoordvalue_get_row_length", scope: !2, file: !2, line: 128, type: !454, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!103, !170}
!456 = !{!457, !458, !459}
!457 = !DILocalVariable(name: "max", arg: 1, scope: !453, file: !2, line: 128, type: !170)
!458 = !DILocalVariable(name: "end", scope: !453, file: !2, line: 132, type: !103)
!459 = !DILocalVariable(name: "start", scope: !453, file: !2, line: 133, type: !103)
!460 = !DILocation(line: 128, column: 64, scope: !453)
!461 = !DILocation(line: 130, column: 3, scope: !453)
!462 = !DILocation(line: 130, column: 3, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !2, line: 130, column: 3)
!464 = distinct !DILexicalBlock(scope: !453, file: !2, line: 130, column: 3)
!465 = !DILocation(line: 130, column: 3, scope: !464)
!466 = !DILocation(line: 130, column: 3, scope: !467)
!467 = distinct !DILexicalBlock(scope: !463, file: !2, line: 130, column: 3)
!468 = !DILocation(line: 132, column: 3, scope: !453)
!469 = !DILocation(line: 132, column: 11, scope: !453)
!470 = !DILocation(line: 132, column: 43, scope: !453)
!471 = !DILocation(line: 132, column: 18, scope: !453)
!472 = !DILocation(line: 132, column: 49, scope: !453)
!473 = !{!122, !121, i64 0}
!474 = !DILocation(line: 133, column: 3, scope: !453)
!475 = !DILocation(line: 133, column: 11, scope: !453)
!476 = !DILocation(line: 133, column: 47, scope: !453)
!477 = !DILocation(line: 133, column: 20, scope: !453)
!478 = !DILocation(line: 133, column: 53, scope: !453)
!479 = !DILocation(line: 135, column: 3, scope: !453)
!480 = !DILocation(line: 135, column: 3, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !2, line: 135, column: 3)
!482 = distinct !DILexicalBlock(scope: !453, file: !2, line: 135, column: 3)
!483 = !DILocation(line: 135, column: 3, scope: !482)
!484 = !DILocation(line: 135, column: 3, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !2, line: 135, column: 3)
!486 = !DILocation(line: 136, column: 10, scope: !453)
!487 = !DILocation(line: 136, column: 14, scope: !453)
!488 = !DILocation(line: 136, column: 13, scope: !453)
!489 = !DILocation(line: 137, column: 1, scope: !453)
!490 = !DILocation(line: 136, column: 3, scope: !453)
!491 = distinct !DISubprogram(name: "gt_maxcoordvalue_get_col_length", scope: !2, file: !2, line: 139, type: !454, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !492)
!492 = !{!493, !494, !495}
!493 = !DILocalVariable(name: "max", arg: 1, scope: !491, file: !2, line: 139, type: !170)
!494 = !DILocalVariable(name: "end", scope: !491, file: !2, line: 143, type: !103)
!495 = !DILocalVariable(name: "start", scope: !491, file: !2, line: 144, type: !103)
!496 = !DILocation(line: 139, column: 64, scope: !491)
!497 = !DILocation(line: 141, column: 3, scope: !491)
!498 = !DILocation(line: 141, column: 3, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !2, line: 141, column: 3)
!500 = distinct !DILexicalBlock(scope: !491, file: !2, line: 141, column: 3)
!501 = !DILocation(line: 141, column: 3, scope: !500)
!502 = !DILocation(line: 141, column: 3, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !2, line: 141, column: 3)
!504 = !DILocation(line: 143, column: 3, scope: !491)
!505 = !DILocation(line: 143, column: 11, scope: !491)
!506 = !DILocation(line: 143, column: 43, scope: !491)
!507 = !DILocation(line: 143, column: 18, scope: !491)
!508 = !DILocation(line: 143, column: 49, scope: !491)
!509 = !{!122, !121, i64 8}
!510 = !DILocation(line: 144, column: 3, scope: !491)
!511 = !DILocation(line: 144, column: 11, scope: !491)
!512 = !DILocation(line: 144, column: 47, scope: !491)
!513 = !DILocation(line: 144, column: 20, scope: !491)
!514 = !DILocation(line: 144, column: 53, scope: !491)
!515 = !DILocation(line: 146, column: 3, scope: !491)
!516 = !DILocation(line: 146, column: 3, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !2, line: 146, column: 3)
!518 = distinct !DILexicalBlock(scope: !491, file: !2, line: 146, column: 3)
!519 = !DILocation(line: 146, column: 3, scope: !518)
!520 = !DILocation(line: 146, column: 3, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !2, line: 146, column: 3)
!522 = !DILocation(line: 147, column: 10, scope: !491)
!523 = !DILocation(line: 147, column: 14, scope: !491)
!524 = !DILocation(line: 147, column: 13, scope: !491)
!525 = !DILocation(line: 148, column: 1, scope: !491)
!526 = !DILocation(line: 147, column: 3, scope: !491)
!527 = distinct !DISubprogram(name: "gt_maxcoordvalue_get_length_safe", scope: !2, file: !2, line: 150, type: !528, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !531)
!528 = !DISubroutineType(types: !529)
!529 = !{!530, !170}
!530 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!531 = !{!532}
!532 = !DILocalVariable(name: "max", arg: 1, scope: !527, file: !2, line: 150, type: !170)
!533 = !DILocation(line: 150, column: 62, scope: !527)
!534 = !DILocation(line: 152, column: 32, scope: !535)
!535 = distinct !DILexicalBlock(scope: !527, file: !2, line: 152, column: 7)
!536 = !DILocation(line: 152, column: 7, scope: !535)
!537 = !DILocation(line: 152, column: 37, scope: !535)
!538 = !DILocation(line: 152, column: 69, scope: !535)
!539 = !DILocation(line: 152, column: 42, scope: !535)
!540 = !DILocation(line: 152, column: 74, scope: !535)
!541 = !DILocation(line: 152, column: 39, scope: !535)
!542 = !DILocation(line: 152, column: 76, scope: !535)
!543 = !DILocation(line: 153, column: 32, scope: !535)
!544 = !DILocation(line: 153, column: 7, scope: !535)
!545 = !DILocation(line: 153, column: 37, scope: !535)
!546 = !DILocation(line: 153, column: 69, scope: !535)
!547 = !DILocation(line: 153, column: 42, scope: !535)
!548 = !DILocation(line: 153, column: 74, scope: !535)
!549 = !DILocation(line: 153, column: 39, scope: !535)
!550 = !DILocation(line: 152, column: 7, scope: !527)
!551 = !DILocation(line: 154, column: 5, scope: !535)
!552 = !DILocation(line: 155, column: 3, scope: !527)
!553 = !DILocation(line: 156, column: 1, scope: !527)
!554 = distinct !DISubprogram(name: "gt_maxcoordvalue_reset", scope: !2, file: !2, line: 158, type: !153, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !73, retainedNodes: !555)
!555 = !{!556}
!556 = !DILocalVariable(name: "max", arg: 1, scope: !554, file: !2, line: 158, type: !89)
!557 = !DILocation(line: 158, column: 46, scope: !554)
!558 = !DILocation(line: 160, column: 3, scope: !554)
!559 = !DILocation(line: 160, column: 3, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !2, line: 160, column: 3)
!561 = distinct !DILexicalBlock(scope: !554, file: !2, line: 160, column: 3)
!562 = !DILocation(line: 160, column: 3, scope: !561)
!563 = !DILocation(line: 160, column: 3, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !2, line: 160, column: 3)
!565 = !DILocation(line: 162, column: 3, scope: !554)
!566 = !DILocation(line: 162, column: 8, scope: !554)
!567 = !DILocation(line: 162, column: 14, scope: !554)
!568 = !DILocation(line: 163, column: 3, scope: !554)
!569 = !DILocation(line: 163, column: 8, scope: !554)
!570 = !DILocation(line: 163, column: 14, scope: !554)
!571 = !DILocation(line: 163, column: 15, scope: !554)
!572 = !DILocation(line: 164, column: 3, scope: !554)
!573 = !DILocation(line: 164, column: 8, scope: !554)
!574 = !DILocation(line: 164, column: 14, scope: !554)
!575 = !DILocation(line: 164, column: 15, scope: !554)
!576 = !DILocation(line: 165, column: 3, scope: !554)
!577 = !DILocation(line: 165, column: 8, scope: !554)
!578 = !DILocation(line: 165, column: 12, scope: !554)
!579 = !DILocation(line: 165, column: 13, scope: !554)
!580 = !DILocation(line: 166, column: 3, scope: !554)
!581 = !DILocation(line: 166, column: 8, scope: !554)
!582 = !DILocation(line: 166, column: 12, scope: !554)
!583 = !DILocation(line: 166, column: 13, scope: !554)
!584 = !DILocation(line: 167, column: 1, scope: !554)

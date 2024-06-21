; ModuleID = 'samples/454.bc'
source_filename = "src/annotationsketch/element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtRange = type { i64, i64 }
%struct.GtElement = type { ptr, i64, i32, ptr, %struct.GtRange, %struct.GtDrawingRange, i8 }
%struct.GtDrawingRange = type { double, double, i32 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"node\00", align 1, !dbg !7
@__func__.gt_element_new = private unnamed_addr constant [15 x i8] c"gt_element_new\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [31 x i8] c"src/annotationsketch/element.c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [5 x i8] c"elem\00", align 1, !dbg !23
@__func__.gt_element_ref = private unnamed_addr constant [15 x i8] c"gt_element_ref\00", align 1, !dbg !25
@.str.4 = private unnamed_addr constant [8 x i8] c"element\00", align 1, !dbg !27
@__func__.gt_element_get_range = private unnamed_addr constant [21 x i8] c"gt_element_get_range\00", align 1, !dbg !32
@__func__.gt_element_set_range = private unnamed_addr constant [21 x i8] c"gt_element_set_range\00", align 1, !dbg !37
@__func__.gt_element_get_type = private unnamed_addr constant [20 x i8] c"gt_element_get_type\00", align 1, !dbg !39
@__func__.gt_element_set_type = private unnamed_addr constant [20 x i8] c"gt_element_set_type\00", align 1, !dbg !44
@__func__.gt_element_get_strand = private unnamed_addr constant [22 x i8] c"gt_element_get_strand\00", align 1, !dbg !46
@__func__.gt_element_is_marked = private unnamed_addr constant [21 x i8] c"gt_element_is_marked\00", align 1, !dbg !51
@.str.5 = private unnamed_addr constant [15 x i8] c"elem && canvas\00", align 1, !dbg !53
@__func__.gt_element_sketch = private unnamed_addr constant [18 x i8] c"gt_element_sketch\00", align 1, !dbg !56
@__func__.gt_element_get_node_ref = private unnamed_addr constant [24 x i8] c"gt_element_get_node_ref\00", align 1, !dbg !61
@.str.6 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !66
@__func__.gt_element_unit_test = private unnamed_addr constant [21 x i8] c"gt_element_unit_test\00", align 1, !dbg !71
@.str.7 = private unnamed_addr constant [6 x i8] c"seqid\00", align 1, !dbg !73
@.str.8 = private unnamed_addr constant [5 x i8] c"exon\00", align 1, !dbg !78
@.str.9 = private unnamed_addr constant [145 x i8] c"gt_ensure(%s) failed: function %s, file %s, line %d.\0AThis is probably a bug, please report at https://github.com/genometools/genometools/issues.\00", align 1, !dbg !80
@.str.10 = private unnamed_addr constant [38 x i8] c"(0 == gt_range_compare(&r1, &r_temp))\00", align 1, !dbg !85
@.str.11 = private unnamed_addr constant [38 x i8] c"(1 == gt_range_compare(&r2, &r_temp))\00", align 1, !dbg !90
@.str.12 = private unnamed_addr constant [44 x i8] c"!strcmp(gt_ft_exon, gt_element_get_type(e))\00", align 1, !dbg !92
@.str.13 = private unnamed_addr constant [7 x i8] c"intron\00", align 1, !dbg !97
@.str.14 = private unnamed_addr constant [45 x i8] c"strcmp(gt_ft_intron, gt_element_get_type(e))\00", align 1, !dbg !102
@.str.15 = private unnamed_addr constant [46 x i8] c"!strcmp(gt_ft_intron, gt_element_get_type(e))\00", align 1, !dbg !107
@.str.16 = private unnamed_addr constant [26 x i8] c"elements_are_equal(e, e2)\00", align 1, !dbg !112
@.str.17 = private unnamed_addr constant [27 x i8] c"!elements_are_equal(e, e3)\00", align 1, !dbg !117
@.str.18 = private unnamed_addr constant [28 x i8] c"!elements_are_equal(e2, e3)\00", align 1, !dbg !122
@.str.19 = private unnamed_addr constant [9 x i8] c"e1 && e2\00", align 1, !dbg !127
@__func__.elements_are_equal = private unnamed_addr constant [19 x i8] c"elements_are_equal\00", align 1, !dbg !132

; Function Attrs: nounwind uwtable
define ptr @gt_element_new(ptr noundef %node) #0 !dbg !164 {
entry:
  %node.addr = alloca ptr, align 8
  %element = alloca ptr, align 8
  %agg.tmp = alloca %struct.GtRange, align 8
  store ptr %node, ptr %node.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !201, metadata !DIExpression()), !dbg !207
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #7, !dbg !208
  tail call void @llvm.dbg.declare(metadata ptr %element, metadata !202, metadata !DIExpression()), !dbg !209
  br label %do.body, !dbg !210

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %node.addr, align 8, !dbg !211, !tbaa !203
  %tobool = icmp ne ptr %0, null, !dbg !211
  br i1 %tobool, label %if.end, label %if.then, !dbg !214

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !215, !tbaa !203
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_element_new, ptr noundef @.str.2, i32 noundef 41), !dbg !215
  call void @abort() #8, !dbg !215
  unreachable, !dbg !215

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !214

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !214

do.end:                                           ; preds = %do.cond
  %call1 = call ptr @gt_element_new_empty(), !dbg !217
  store ptr %call1, ptr %element, align 8, !dbg !218, !tbaa !203
  %2 = load ptr, ptr %element, align 8, !dbg !219, !tbaa !203
  %3 = load ptr, ptr %node.addr, align 8, !dbg !220, !tbaa !203
  %call2 = call ptr @gt_feature_node_get_type(ptr noundef %3), !dbg !221
  call void @gt_element_set_type(ptr noundef %2, ptr noundef %call2), !dbg !222
  %4 = load ptr, ptr %element, align 8, !dbg !223, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 16, ptr %agg.tmp) #7, !dbg !224
  %5 = load ptr, ptr %node.addr, align 8, !dbg !225, !tbaa !203
  %call3 = call { i64, i64 } @gt_genome_node_get_range(ptr noundef %5), !dbg !226
  %6 = getelementptr inbounds { i64, i64 }, ptr %agg.tmp, i32 0, i32 0, !dbg !226
  %7 = extractvalue { i64, i64 } %call3, 0, !dbg !226
  store i64 %7, ptr %6, align 8, !dbg !226
  %8 = getelementptr inbounds { i64, i64 }, ptr %agg.tmp, i32 0, i32 1, !dbg !226
  %9 = extractvalue { i64, i64 } %call3, 1, !dbg !226
  store i64 %9, ptr %8, align 8, !dbg !226
  %10 = getelementptr inbounds { i64, i64 }, ptr %agg.tmp, i32 0, i32 0, !dbg !224
  %11 = load i64, ptr %10, align 8, !dbg !224
  %12 = getelementptr inbounds { i64, i64 }, ptr %agg.tmp, i32 0, i32 1, !dbg !224
  %13 = load i64, ptr %12, align 8, !dbg !224
  call void @gt_element_set_range(ptr noundef %4, i64 %11, i64 %13), !dbg !224
  call void @llvm.lifetime.end.p0(i64 16, ptr %agg.tmp) #7, !dbg !224
  %14 = load ptr, ptr %node.addr, align 8, !dbg !227, !tbaa !203
  %call4 = call i32 @gt_feature_node_get_strand(ptr noundef %14), !dbg !228
  %15 = load ptr, ptr %element, align 8, !dbg !229, !tbaa !203
  %strand = getelementptr inbounds %struct.GtElement, ptr %15, i32 0, i32 2, !dbg !230
  store i32 %call4, ptr %strand, align 8, !dbg !231, !tbaa !232
  %16 = load ptr, ptr %node.addr, align 8, !dbg !240, !tbaa !203
  %call5 = call zeroext i1 @gt_feature_node_is_marked(ptr noundef %16), !dbg !241
  %17 = load ptr, ptr %element, align 8, !dbg !242, !tbaa !203
  %mark = getelementptr inbounds %struct.GtElement, ptr %17, i32 0, i32 6, !dbg !243
  %frombool = zext i1 %call5 to i8, !dbg !244
  store i8 %frombool, ptr %mark, align 8, !dbg !244, !tbaa !245
  %18 = load ptr, ptr %node.addr, align 8, !dbg !246, !tbaa !203
  %call6 = call ptr @gt_genome_node_ref(ptr noundef %18), !dbg !247
  %19 = load ptr, ptr %element, align 8, !dbg !248, !tbaa !203
  %gn = getelementptr inbounds %struct.GtElement, ptr %19, i32 0, i32 3, !dbg !249
  store ptr %call6, ptr %gn, align 8, !dbg !250, !tbaa !251
  %20 = load ptr, ptr %element, align 8, !dbg !252, !tbaa !203
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #7, !dbg !253
  ret ptr %20, !dbg !254
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !255 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !319 void @abort() #3

; Function Attrs: nounwind uwtable
define ptr @gt_element_new_empty() #0 !dbg !323 {
entry:
  %call = call ptr @gt_calloc_mem(i64 noundef 1, i64 noundef 80, ptr noundef @.str.2, i32 noundef 60), !dbg !326
  ret ptr %call, !dbg !327
}

; Function Attrs: nounwind uwtable
define void @gt_element_set_type(ptr noundef %element, ptr noundef %type) #0 !dbg !328 {
entry:
  %element.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  store ptr %element, ptr %element.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !332, metadata !DIExpression()), !dbg !334
  store ptr %type, ptr %type.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !333, metadata !DIExpression()), !dbg !335
  br label %do.body, !dbg !336

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %element.addr, align 8, !dbg !337, !tbaa !203
  %tobool = icmp ne ptr %0, null, !dbg !337
  br i1 %tobool, label %if.end, label %if.then, !dbg !340

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !341, !tbaa !203
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_element_set_type, ptr noundef @.str.2, i32 noundef 83), !dbg !341
  call void @abort() #8, !dbg !341
  unreachable, !dbg !341

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !340

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %type.addr, align 8, !dbg !343, !tbaa !203
  %3 = load ptr, ptr %element.addr, align 8, !dbg !344, !tbaa !203
  %type1 = getelementptr inbounds %struct.GtElement, ptr %3, i32 0, i32 0, !dbg !345
  store ptr %2, ptr %type1, align 8, !dbg !346, !tbaa !347
  ret void, !dbg !348
}

declare !dbg !349 ptr @gt_feature_node_get_type(ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @gt_element_set_range(ptr noundef %element, i64 %r.coerce0, i64 %r.coerce1) #0 !dbg !354 {
entry:
  %r = alloca %struct.GtRange, align 8
  %element.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %r, i32 0, i32 0
  store i64 %r.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %r, i32 0, i32 1
  store i64 %r.coerce1, ptr %1, align 8
  store ptr %element, ptr %element.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !358, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !359, metadata !DIExpression()), !dbg !361
  br label %do.body, !dbg !362

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %element.addr, align 8, !dbg !363, !tbaa !203
  %tobool = icmp ne ptr %2, null, !dbg !363
  br i1 %tobool, label %if.end, label %if.then, !dbg !366

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !367, !tbaa !203
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_element_set_range, ptr noundef @.str.2, i32 noundef 71), !dbg !367
  call void @abort() #8, !dbg !367
  unreachable, !dbg !367

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !366

do.end:                                           ; preds = %if.end
  %4 = load ptr, ptr %element.addr, align 8, !dbg !369, !tbaa !203
  %range = getelementptr inbounds %struct.GtElement, ptr %4, i32 0, i32 4, !dbg !370
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %range, ptr align 8 %r, i64 16, i1 false), !dbg !371, !tbaa.struct !372
  ret void, !dbg !374
}

declare !dbg !375 { i64, i64 } @gt_genome_node_get_range(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !378 i32 @gt_feature_node_get_strand(ptr noundef) #2

declare !dbg !381 zeroext i1 @gt_feature_node_is_marked(ptr noundef) #2

declare !dbg !384 ptr @gt_genome_node_ref(ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @gt_element_ref(ptr noundef %elem) #0 !dbg !387 {
entry:
  %elem.addr = alloca ptr, align 8
  store ptr %elem, ptr %elem.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !391, metadata !DIExpression()), !dbg !392
  br label %do.body, !dbg !393

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %elem.addr, align 8, !dbg !394, !tbaa !203
  %tobool = icmp ne ptr %0, null, !dbg !394
  br i1 %tobool, label %if.end, label %if.then, !dbg !397

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !398, !tbaa !203
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_element_ref, ptr noundef @.str.2, i32 noundef 53), !dbg !398
  call void @abort() #8, !dbg !398
  unreachable, !dbg !398

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !397

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %elem.addr, align 8, !dbg !400, !tbaa !203
  %refcount = getelementptr inbounds %struct.GtElement, ptr %2, i32 0, i32 1, !dbg !401
  %3 = load i64, ptr %refcount, align 8, !dbg !402, !tbaa !403
  %inc = add i64 %3, 1, !dbg !402
  store i64 %inc, ptr %refcount, align 8, !dbg !402, !tbaa !403
  %4 = load ptr, ptr %elem.addr, align 8, !dbg !404, !tbaa !203
  ret ptr %4, !dbg !405
}

declare !dbg !406 ptr @gt_calloc_mem(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define { i64, i64 } @gt_element_get_range(ptr noundef %element) #0 !dbg !410 {
entry:
  %retval = alloca %struct.GtRange, align 8
  %element.addr = alloca ptr, align 8
  store ptr %element, ptr %element.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !416, metadata !DIExpression()), !dbg !417
  br label %do.body, !dbg !418

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %element.addr, align 8, !dbg !419, !tbaa !203
  %tobool = icmp ne ptr %0, null, !dbg !419
  br i1 %tobool, label %if.end, label %if.then, !dbg !422

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !423, !tbaa !203
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_element_get_range, ptr noundef @.str.2, i32 noundef 65), !dbg !423
  call void @abort() #8, !dbg !423
  unreachable, !dbg !423

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !422

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %element.addr, align 8, !dbg !425, !tbaa !203
  %range = getelementptr inbounds %struct.GtElement, ptr %2, i32 0, i32 4, !dbg !426
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %range, i64 16, i1 false), !dbg !426, !tbaa.struct !372
  %3 = load { i64, i64 }, ptr %retval, align 8, !dbg !427
  ret { i64, i64 } %3, !dbg !427
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define ptr @gt_element_get_type(ptr noundef %element) #0 !dbg !428 {
entry:
  %element.addr = alloca ptr, align 8
  store ptr %element, ptr %element.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !432, metadata !DIExpression()), !dbg !433
  br label %do.body, !dbg !434

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %element.addr, align 8, !dbg !435, !tbaa !203
  %tobool = icmp ne ptr %0, null, !dbg !435
  br i1 %tobool, label %if.end, label %if.then, !dbg !438

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !439, !tbaa !203
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_element_get_type, ptr noundef @.str.2, i32 noundef 77), !dbg !439
  call void @abort() #8, !dbg !439
  unreachable, !dbg !439

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !438

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %element.addr, align 8, !dbg !441, !tbaa !203
  %type = getelementptr inbounds %struct.GtElement, ptr %2, i32 0, i32 0, !dbg !442
  %3 = load ptr, ptr %type, align 8, !dbg !442, !tbaa !347
  ret ptr %3, !dbg !443
}

; Function Attrs: nounwind uwtable
define i32 @gt_element_get_strand(ptr noundef %element) #0 !dbg !444 {
entry:
  %element.addr = alloca ptr, align 8
  store ptr %element, ptr %element.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !448, metadata !DIExpression()), !dbg !449
  br label %do.body, !dbg !450

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %element.addr, align 8, !dbg !451, !tbaa !203
  %tobool = icmp ne ptr %0, null, !dbg !451
  br i1 %tobool, label %if.end, label %if.then, !dbg !454

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !455, !tbaa !203
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_element_get_strand, ptr noundef @.str.2, i32 noundef 89), !dbg !455
  call void @abort() #8, !dbg !455
  unreachable, !dbg !455

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !454

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %element.addr, align 8, !dbg !457, !tbaa !203
  %strand = getelementptr inbounds %struct.GtElement, ptr %2, i32 0, i32 2, !dbg !458
  %3 = load i32, ptr %strand, align 8, !dbg !458, !tbaa !232
  ret i32 %3, !dbg !459
}

; Function Attrs: nounwind uwtable
define zeroext i1 @gt_element_is_marked(ptr noundef %element) #0 !dbg !460 {
entry:
  %element.addr = alloca ptr, align 8
  store ptr %element, ptr %element.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !464, metadata !DIExpression()), !dbg !465
  br label %do.body, !dbg !466

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %element.addr, align 8, !dbg !467, !tbaa !203
  %tobool = icmp ne ptr %0, null, !dbg !467
  br i1 %tobool, label %if.end, label %if.then, !dbg !470

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !471, !tbaa !203
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @__func__.gt_element_is_marked, ptr noundef @.str.2, i32 noundef 94), !dbg !471
  call void @abort() #8, !dbg !471
  unreachable, !dbg !471

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !470

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %element.addr, align 8, !dbg !473, !tbaa !203
  %mark = getelementptr inbounds %struct.GtElement, ptr %2, i32 0, i32 6, !dbg !474
  %3 = load i8, ptr %mark, align 8, !dbg !474, !tbaa !245, !range !475, !noundef !476
  %tobool1 = trunc i8 %3 to i1, !dbg !474
  ret i1 %tobool1, !dbg !477
}

; Function Attrs: nounwind uwtable
define i32 @gt_element_sketch(ptr noundef %elem, ptr noundef %canvas, ptr noundef %err) #0 !dbg !478 {
entry:
  %elem.addr = alloca ptr, align 8
  %canvas.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store ptr %elem, ptr %elem.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !490, metadata !DIExpression()), !dbg !494
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !491, metadata !DIExpression()), !dbg !495
  store ptr %err, ptr %err.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !492, metadata !DIExpression()), !dbg !496
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #7, !dbg !497
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !493, metadata !DIExpression()), !dbg !498
  store i32 0, ptr %had_err, align 4, !dbg !498, !tbaa !499
  br label %do.body, !dbg !500

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %elem.addr, align 8, !dbg !501, !tbaa !203
  %tobool = icmp ne ptr %0, null, !dbg !501
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !501

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %canvas.addr, align 8, !dbg !501, !tbaa !203
  %tobool1 = icmp ne ptr %1, null, !dbg !501
  br i1 %tobool1, label %if.end, label %if.then, !dbg !504

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !505, !tbaa !203
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.gt_element_sketch, ptr noundef @.str.2, i32 noundef 109), !dbg !505
  call void @abort() #8, !dbg !505
  unreachable, !dbg !505

if.end:                                           ; preds = %land.lhs.true
  br label %do.cond, !dbg !504

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !504

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %canvas.addr, align 8, !dbg !507, !tbaa !203
  %4 = load ptr, ptr %elem.addr, align 8, !dbg !508, !tbaa !203
  %5 = load ptr, ptr %err.addr, align 8, !dbg !509, !tbaa !203
  %call2 = call i32 @gt_canvas_visit_element(ptr noundef %3, ptr noundef %4, ptr noundef %5), !dbg !510
  store i32 %call2, ptr %had_err, align 4, !dbg !511, !tbaa !499
  %6 = load i32, ptr %had_err, align 4, !dbg !512, !tbaa !499
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #7, !dbg !513
  ret i32 %6, !dbg !514
}

declare !dbg !515 i32 @gt_canvas_visit_element(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @gt_element_get_node_ref(ptr noundef %elem) #0 !dbg !519 {
entry:
  %elem.addr = alloca ptr, align 8
  store ptr %elem, ptr %elem.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !523, metadata !DIExpression()), !dbg !524
  br label %do.body, !dbg !525

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %elem.addr, align 8, !dbg !526, !tbaa !203
  %tobool = icmp ne ptr %0, null, !dbg !526
  br i1 %tobool, label %if.end, label %if.then, !dbg !529

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !530, !tbaa !203
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_element_get_node_ref, ptr noundef @.str.2, i32 noundef 116), !dbg !530
  call void @abort() #8, !dbg !530
  unreachable, !dbg !530

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !529

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %elem.addr, align 8, !dbg !532, !tbaa !203
  %gn = getelementptr inbounds %struct.GtElement, ptr %2, i32 0, i32 3, !dbg !533
  %3 = load ptr, ptr %gn, align 8, !dbg !533, !tbaa !251
  ret ptr %3, !dbg !534
}

; Function Attrs: nounwind uwtable
define i32 @gt_element_unit_test(ptr noundef %err) #0 !dbg !535 {
entry:
  %err.addr = alloca ptr, align 8
  %r1 = alloca %struct.GtRange, align 8
  %r2 = alloca %struct.GtRange, align 8
  %r_temp = alloca %struct.GtRange, align 8
  %gn = alloca ptr, align 8
  %gn2 = alloca ptr, align 8
  %e = alloca ptr, align 8
  %e2 = alloca ptr, align 8
  %e3 = alloca ptr, align 8
  %seqid = alloca ptr, align 8
  %had_err = alloca i32, align 4
  %tmp = alloca %struct.GtRange, align 8
  store ptr %err, ptr %err.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !539, metadata !DIExpression()), !dbg !554
  call void @llvm.lifetime.start.p0(i64 16, ptr %r1) #7, !dbg !555
  tail call void @llvm.dbg.declare(metadata ptr %r1, metadata !540, metadata !DIExpression()), !dbg !556
  call void @llvm.lifetime.start.p0(i64 16, ptr %r2) #7, !dbg !555
  tail call void @llvm.dbg.declare(metadata ptr %r2, metadata !541, metadata !DIExpression()), !dbg !557
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_temp) #7, !dbg !555
  tail call void @llvm.dbg.declare(metadata ptr %r_temp, metadata !542, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %gn) #7, !dbg !559
  tail call void @llvm.dbg.declare(metadata ptr %gn, metadata !543, metadata !DIExpression()), !dbg !560
  call void @llvm.lifetime.start.p0(i64 8, ptr %gn2) #7, !dbg !559
  tail call void @llvm.dbg.declare(metadata ptr %gn2, metadata !544, metadata !DIExpression()), !dbg !561
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #7, !dbg !562
  tail call void @llvm.dbg.declare(metadata ptr %e, metadata !545, metadata !DIExpression()), !dbg !563
  call void @llvm.lifetime.start.p0(i64 8, ptr %e2) #7, !dbg !562
  tail call void @llvm.dbg.declare(metadata ptr %e2, metadata !546, metadata !DIExpression()), !dbg !564
  call void @llvm.lifetime.start.p0(i64 8, ptr %e3) #7, !dbg !562
  tail call void @llvm.dbg.declare(metadata ptr %e3, metadata !547, metadata !DIExpression()), !dbg !565
  call void @llvm.lifetime.start.p0(i64 8, ptr %seqid) #7, !dbg !566
  tail call void @llvm.dbg.declare(metadata ptr %seqid, metadata !548, metadata !DIExpression()), !dbg !567
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #7, !dbg !568
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !553, metadata !DIExpression()), !dbg !569
  store i32 0, ptr %had_err, align 4, !dbg !569, !tbaa !499
  br label %do.body, !dbg !570

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !571, !tbaa !203
  %tobool = icmp ne ptr %0, null, !dbg !571
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !571

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !571, !tbaa !203
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !571
  br i1 %call, label %if.then, label %if.end, !dbg !574

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !575, !tbaa !203
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @__func__.gt_element_unit_test, ptr noundef @.str.2, i32 noundef 127), !dbg !575
  call void @abort() #8, !dbg !575
  unreachable, !dbg !575

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !574

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !574

do.end:                                           ; preds = %do.cond
  %start = getelementptr inbounds %struct.GtRange, ptr %r1, i32 0, i32 0, !dbg !577
  store i64 10, ptr %start, align 8, !dbg !578, !tbaa !579
  %end = getelementptr inbounds %struct.GtRange, ptr %r1, i32 0, i32 1, !dbg !580
  store i64 50, ptr %end, align 8, !dbg !581, !tbaa !582
  %start2 = getelementptr inbounds %struct.GtRange, ptr %r2, i32 0, i32 0, !dbg !583
  store i64 20, ptr %start2, align 8, !dbg !584, !tbaa !579
  %end3 = getelementptr inbounds %struct.GtRange, ptr %r2, i32 0, i32 1, !dbg !585
  store i64 50, ptr %end3, align 8, !dbg !586, !tbaa !582
  %call4 = call ptr @gt_str_new_cstr(ptr noundef @.str.7), !dbg !587
  store ptr %call4, ptr %seqid, align 8, !dbg !588, !tbaa !203
  %3 = load ptr, ptr %seqid, align 8, !dbg !589, !tbaa !203
  %start5 = getelementptr inbounds %struct.GtRange, ptr %r1, i32 0, i32 0, !dbg !590
  %4 = load i64, ptr %start5, align 8, !dbg !590, !tbaa !579
  %end6 = getelementptr inbounds %struct.GtRange, ptr %r1, i32 0, i32 1, !dbg !591
  %5 = load i64, ptr %end6, align 8, !dbg !591, !tbaa !582
  %call7 = call ptr @gt_feature_node_new(ptr noundef %3, ptr noundef @.str.8, i64 noundef %4, i64 noundef %5, i32 noundef 2), !dbg !592
  store ptr %call7, ptr %gn, align 8, !dbg !593, !tbaa !203
  %6 = load ptr, ptr %seqid, align 8, !dbg !594, !tbaa !203
  %start8 = getelementptr inbounds %struct.GtRange, ptr %r2, i32 0, i32 0, !dbg !595
  %7 = load i64, ptr %start8, align 8, !dbg !595, !tbaa !579
  %end9 = getelementptr inbounds %struct.GtRange, ptr %r2, i32 0, i32 1, !dbg !596
  %8 = load i64, ptr %end9, align 8, !dbg !596, !tbaa !582
  %call10 = call ptr @gt_feature_node_new(ptr noundef %6, ptr noundef @.str.8, i64 noundef %7, i64 noundef %8, i32 noundef 2), !dbg !597
  store ptr %call10, ptr %gn2, align 8, !dbg !598, !tbaa !203
  %9 = load ptr, ptr %gn, align 8, !dbg !599, !tbaa !203
  %call11 = call ptr @gt_element_new(ptr noundef %9), !dbg !600
  store ptr %call11, ptr %e, align 8, !dbg !601, !tbaa !203
  %10 = load ptr, ptr %gn, align 8, !dbg !602, !tbaa !203
  %call12 = call ptr @gt_element_new(ptr noundef %10), !dbg !603
  store ptr %call12, ptr %e2, align 8, !dbg !604, !tbaa !203
  %11 = load ptr, ptr %gn2, align 8, !dbg !605, !tbaa !203
  %call13 = call ptr @gt_element_new(ptr noundef %11), !dbg !606
  store ptr %call13, ptr %e3, align 8, !dbg !607, !tbaa !203
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #7, !dbg !608
  %12 = load ptr, ptr %e, align 8, !dbg !609, !tbaa !203
  %call14 = call { i64, i64 } @gt_element_get_range(ptr noundef %12), !dbg !608
  %13 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !608
  %14 = extractvalue { i64, i64 } %call14, 0, !dbg !608
  store i64 %14, ptr %13, align 8, !dbg !608
  %15 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !608
  %16 = extractvalue { i64, i64 } %call14, 1, !dbg !608
  store i64 %16, ptr %15, align 8, !dbg !608
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_temp, ptr align 8 %tmp, i64 16, i1 false), !dbg !608, !tbaa.struct !372
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #7, !dbg !608
  br label %do.body15, !dbg !610

do.body15:                                        ; preds = %do.end
  %17 = load i32, ptr %had_err, align 4, !dbg !611, !tbaa !499
  %tobool16 = icmp ne i32 %17, 0, !dbg !611
  br i1 %tobool16, label %if.end21, label %if.then17, !dbg !614

if.then17:                                        ; preds = %do.body15
  %call18 = call i32 @gt_range_compare(ptr noundef %r1, ptr noundef %r_temp), !dbg !615
  %cmp = icmp eq i32 0, %call18, !dbg !615
  br i1 %cmp, label %if.end20, label %if.then19, !dbg !618

if.then19:                                        ; preds = %if.then17
  %18 = load ptr, ptr %err.addr, align 8, !dbg !619, !tbaa !203
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %18, ptr noundef @.str.9, ptr noundef @.str.10, ptr noundef @__func__.gt_element_unit_test, ptr noundef @.str.2, i32 noundef 146), !dbg !619
  store i32 -1, ptr %had_err, align 4, !dbg !619, !tbaa !499
  br label %if.end20, !dbg !619

if.end20:                                         ; preds = %if.then19, %if.then17
  br label %if.end21, !dbg !618

if.end21:                                         ; preds = %if.end20, %do.body15
  br label %do.cond22, !dbg !614

do.cond22:                                        ; preds = %if.end21
  br label %do.end23, !dbg !614

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !621

do.body24:                                        ; preds = %do.end23
  %19 = load i32, ptr %had_err, align 4, !dbg !622, !tbaa !499
  %tobool25 = icmp ne i32 %19, 0, !dbg !622
  br i1 %tobool25, label %if.end31, label %if.then26, !dbg !625

if.then26:                                        ; preds = %do.body24
  %call27 = call i32 @gt_range_compare(ptr noundef %r2, ptr noundef %r_temp), !dbg !626
  %cmp28 = icmp eq i32 1, %call27, !dbg !626
  br i1 %cmp28, label %if.end30, label %if.then29, !dbg !629

if.then29:                                        ; preds = %if.then26
  %20 = load ptr, ptr %err.addr, align 8, !dbg !630, !tbaa !203
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %20, ptr noundef @.str.9, ptr noundef @.str.11, ptr noundef @__func__.gt_element_unit_test, ptr noundef @.str.2, i32 noundef 147), !dbg !630
  store i32 -1, ptr %had_err, align 4, !dbg !630, !tbaa !499
  br label %if.end30, !dbg !630

if.end30:                                         ; preds = %if.then29, %if.then26
  br label %if.end31, !dbg !629

if.end31:                                         ; preds = %if.end30, %do.body24
  br label %do.cond32, !dbg !625

do.cond32:                                        ; preds = %if.end31
  br label %do.end33, !dbg !625

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !632

do.body34:                                        ; preds = %do.end33
  %21 = load i32, ptr %had_err, align 4, !dbg !633, !tbaa !499
  %tobool35 = icmp ne i32 %21, 0, !dbg !633
  br i1 %tobool35, label %if.end42, label %if.then36, !dbg !636

if.then36:                                        ; preds = %do.body34
  %22 = load ptr, ptr %e, align 8, !dbg !637, !tbaa !203
  %call37 = call ptr @gt_element_get_type(ptr noundef %22), !dbg !637
  %call38 = call i32 @strcmp(ptr noundef @.str.8, ptr noundef %call37) #9, !dbg !637
  %tobool39 = icmp ne i32 %call38, 0, !dbg !637
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !640

if.then40:                                        ; preds = %if.then36
  %23 = load ptr, ptr %err.addr, align 8, !dbg !641, !tbaa !203
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %23, ptr noundef @.str.9, ptr noundef @.str.12, ptr noundef @__func__.gt_element_unit_test, ptr noundef @.str.2, i32 noundef 150), !dbg !641
  store i32 -1, ptr %had_err, align 4, !dbg !641, !tbaa !499
  br label %if.end41, !dbg !641

if.end41:                                         ; preds = %if.then40, %if.then36
  br label %if.end42, !dbg !640

if.end42:                                         ; preds = %if.end41, %do.body34
  br label %do.cond43, !dbg !636

do.cond43:                                        ; preds = %if.end42
  br label %do.end44, !dbg !636

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !643

do.body45:                                        ; preds = %do.end44
  %24 = load i32, ptr %had_err, align 4, !dbg !644, !tbaa !499
  %tobool46 = icmp ne i32 %24, 0, !dbg !644
  br i1 %tobool46, label %if.end53, label %if.then47, !dbg !647

if.then47:                                        ; preds = %do.body45
  %25 = load ptr, ptr %e, align 8, !dbg !648, !tbaa !203
  %call48 = call ptr @gt_element_get_type(ptr noundef %25), !dbg !648
  %call49 = call i32 @strcmp(ptr noundef @.str.13, ptr noundef %call48) #9, !dbg !648
  %tobool50 = icmp ne i32 %call49, 0, !dbg !648
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !651

if.then51:                                        ; preds = %if.then47
  %26 = load ptr, ptr %err.addr, align 8, !dbg !652, !tbaa !203
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %26, ptr noundef @.str.9, ptr noundef @.str.14, ptr noundef @__func__.gt_element_unit_test, ptr noundef @.str.2, i32 noundef 151), !dbg !652
  store i32 -1, ptr %had_err, align 4, !dbg !652, !tbaa !499
  br label %if.end52, !dbg !652

if.end52:                                         ; preds = %if.then51, %if.then47
  br label %if.end53, !dbg !651

if.end53:                                         ; preds = %if.end52, %do.body45
  br label %do.cond54, !dbg !647

do.cond54:                                        ; preds = %if.end53
  br label %do.end55, !dbg !647

do.end55:                                         ; preds = %do.cond54
  %27 = load ptr, ptr %e, align 8, !dbg !654, !tbaa !203
  call void @gt_element_set_type(ptr noundef %27, ptr noundef @.str.13), !dbg !655
  br label %do.body56, !dbg !656

do.body56:                                        ; preds = %do.end55
  %28 = load i32, ptr %had_err, align 4, !dbg !657, !tbaa !499
  %tobool57 = icmp ne i32 %28, 0, !dbg !657
  br i1 %tobool57, label %if.end64, label %if.then58, !dbg !660

if.then58:                                        ; preds = %do.body56
  %29 = load ptr, ptr %e, align 8, !dbg !661, !tbaa !203
  %call59 = call ptr @gt_element_get_type(ptr noundef %29), !dbg !661
  %call60 = call i32 @strcmp(ptr noundef @.str.13, ptr noundef %call59) #9, !dbg !661
  %tobool61 = icmp ne i32 %call60, 0, !dbg !661
  br i1 %tobool61, label %if.then62, label %if.end63, !dbg !664

if.then62:                                        ; preds = %if.then58
  %30 = load ptr, ptr %err.addr, align 8, !dbg !665, !tbaa !203
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %30, ptr noundef @.str.9, ptr noundef @.str.15, ptr noundef @__func__.gt_element_unit_test, ptr noundef @.str.2, i32 noundef 153), !dbg !665
  store i32 -1, ptr %had_err, align 4, !dbg !665, !tbaa !499
  br label %if.end63, !dbg !665

if.end63:                                         ; preds = %if.then62, %if.then58
  br label %if.end64, !dbg !664

if.end64:                                         ; preds = %if.end63, %do.body56
  br label %do.cond65, !dbg !660

do.cond65:                                        ; preds = %if.end64
  br label %do.end66, !dbg !660

do.end66:                                         ; preds = %do.cond65
  %31 = load ptr, ptr %e2, align 8, !dbg !667, !tbaa !203
  call void @gt_element_set_type(ptr noundef %31, ptr noundef @.str.13), !dbg !668
  br label %do.body67, !dbg !669

do.body67:                                        ; preds = %do.end66
  %32 = load i32, ptr %had_err, align 4, !dbg !670, !tbaa !499
  %tobool68 = icmp ne i32 %32, 0, !dbg !670
  br i1 %tobool68, label %if.end73, label %if.then69, !dbg !673

if.then69:                                        ; preds = %do.body67
  %33 = load ptr, ptr %e, align 8, !dbg !674, !tbaa !203
  %34 = load ptr, ptr %e2, align 8, !dbg !674, !tbaa !203
  %call70 = call zeroext i1 @elements_are_equal(ptr noundef %33, ptr noundef %34), !dbg !674
  br i1 %call70, label %if.end72, label %if.then71, !dbg !677

if.then71:                                        ; preds = %if.then69
  %35 = load ptr, ptr %err.addr, align 8, !dbg !678, !tbaa !203
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %35, ptr noundef @.str.9, ptr noundef @.str.16, ptr noundef @__func__.gt_element_unit_test, ptr noundef @.str.2, i32 noundef 157), !dbg !678
  store i32 -1, ptr %had_err, align 4, !dbg !678, !tbaa !499
  br label %if.end72, !dbg !678

if.end72:                                         ; preds = %if.then71, %if.then69
  br label %if.end73, !dbg !677

if.end73:                                         ; preds = %if.end72, %do.body67
  br label %do.cond74, !dbg !673

do.cond74:                                        ; preds = %if.end73
  br label %do.end75, !dbg !673

do.end75:                                         ; preds = %do.cond74
  br label %do.body76, !dbg !680

do.body76:                                        ; preds = %do.end75
  %36 = load i32, ptr %had_err, align 4, !dbg !681, !tbaa !499
  %tobool77 = icmp ne i32 %36, 0, !dbg !681
  br i1 %tobool77, label %if.end82, label %if.then78, !dbg !684

if.then78:                                        ; preds = %do.body76
  %37 = load ptr, ptr %e, align 8, !dbg !685, !tbaa !203
  %38 = load ptr, ptr %e3, align 8, !dbg !685, !tbaa !203
  %call79 = call zeroext i1 @elements_are_equal(ptr noundef %37, ptr noundef %38), !dbg !685
  br i1 %call79, label %if.then80, label %if.end81, !dbg !688

if.then80:                                        ; preds = %if.then78
  %39 = load ptr, ptr %err.addr, align 8, !dbg !689, !tbaa !203
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %39, ptr noundef @.str.9, ptr noundef @.str.17, ptr noundef @__func__.gt_element_unit_test, ptr noundef @.str.2, i32 noundef 158), !dbg !689
  store i32 -1, ptr %had_err, align 4, !dbg !689, !tbaa !499
  br label %if.end81, !dbg !689

if.end81:                                         ; preds = %if.then80, %if.then78
  br label %if.end82, !dbg !688

if.end82:                                         ; preds = %if.end81, %do.body76
  br label %do.cond83, !dbg !684

do.cond83:                                        ; preds = %if.end82
  br label %do.end84, !dbg !684

do.end84:                                         ; preds = %do.cond83
  br label %do.body85, !dbg !691

do.body85:                                        ; preds = %do.end84
  %40 = load i32, ptr %had_err, align 4, !dbg !692, !tbaa !499
  %tobool86 = icmp ne i32 %40, 0, !dbg !692
  br i1 %tobool86, label %if.end91, label %if.then87, !dbg !695

if.then87:                                        ; preds = %do.body85
  %41 = load ptr, ptr %e2, align 8, !dbg !696, !tbaa !203
  %42 = load ptr, ptr %e3, align 8, !dbg !696, !tbaa !203
  %call88 = call zeroext i1 @elements_are_equal(ptr noundef %41, ptr noundef %42), !dbg !696
  br i1 %call88, label %if.then89, label %if.end90, !dbg !699

if.then89:                                        ; preds = %if.then87
  %43 = load ptr, ptr %err.addr, align 8, !dbg !700, !tbaa !203
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %43, ptr noundef @.str.9, ptr noundef @.str.18, ptr noundef @__func__.gt_element_unit_test, ptr noundef @.str.2, i32 noundef 159), !dbg !700
  store i32 -1, ptr %had_err, align 4, !dbg !700, !tbaa !499
  br label %if.end90, !dbg !700

if.end90:                                         ; preds = %if.then89, %if.then87
  br label %if.end91, !dbg !699

if.end91:                                         ; preds = %if.end90, %do.body85
  br label %do.cond92, !dbg !695

do.cond92:                                        ; preds = %if.end91
  br label %do.end93, !dbg !695

do.end93:                                         ; preds = %do.cond92
  %44 = load ptr, ptr %e, align 8, !dbg !702, !tbaa !203
  call void @gt_element_delete(ptr noundef %44), !dbg !703
  %45 = load ptr, ptr %e2, align 8, !dbg !704, !tbaa !203
  call void @gt_element_delete(ptr noundef %45), !dbg !705
  %46 = load ptr, ptr %e3, align 8, !dbg !706, !tbaa !203
  call void @gt_element_delete(ptr noundef %46), !dbg !707
  %47 = load ptr, ptr %gn, align 8, !dbg !708, !tbaa !203
  call void @gt_genome_node_delete(ptr noundef %47), !dbg !709
  %48 = load ptr, ptr %gn2, align 8, !dbg !710, !tbaa !203
  call void @gt_genome_node_delete(ptr noundef %48), !dbg !711
  %49 = load ptr, ptr %seqid, align 8, !dbg !712, !tbaa !203
  call void @gt_str_delete(ptr noundef %49), !dbg !713
  %50 = load i32, ptr %had_err, align 4, !dbg !714, !tbaa !499
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #7, !dbg !715
  call void @llvm.lifetime.end.p0(i64 8, ptr %seqid) #7, !dbg !715
  call void @llvm.lifetime.end.p0(i64 8, ptr %e3) #7, !dbg !715
  call void @llvm.lifetime.end.p0(i64 8, ptr %e2) #7, !dbg !715
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #7, !dbg !715
  call void @llvm.lifetime.end.p0(i64 8, ptr %gn2) #7, !dbg !715
  call void @llvm.lifetime.end.p0(i64 8, ptr %gn) #7, !dbg !715
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_temp) #7, !dbg !715
  call void @llvm.lifetime.end.p0(i64 16, ptr %r2) #7, !dbg !715
  call void @llvm.lifetime.end.p0(i64 16, ptr %r1) #7, !dbg !715
  ret i32 %50, !dbg !716
}

declare !dbg !717 zeroext i1 @gt_error_is_set(ptr noundef) #2

declare !dbg !722 ptr @gt_str_new_cstr(ptr noundef) #2

declare !dbg !725 ptr @gt_feature_node_new(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

declare !dbg !728 i32 @gt_range_compare(ptr noundef, ptr noundef) #2

declare !dbg !733 void @gt_error_set(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !736 i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal zeroext i1 @elements_are_equal(ptr noundef %e1, ptr noundef %e2) #0 !dbg !740 {
entry:
  %retval = alloca i1, align 1
  %e1.addr = alloca ptr, align 8
  %e2.addr = alloca ptr, align 8
  store ptr %e1, ptr %e1.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %e1.addr, metadata !744, metadata !DIExpression()), !dbg !746
  store ptr %e2, ptr %e2.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %e2.addr, metadata !745, metadata !DIExpression()), !dbg !747
  br label %do.body, !dbg !748

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %e1.addr, align 8, !dbg !749, !tbaa !203
  %tobool = icmp ne ptr %0, null, !dbg !749
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !749

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %e2.addr, align 8, !dbg !749, !tbaa !203
  %tobool1 = icmp ne ptr %1, null, !dbg !749
  br i1 %tobool1, label %if.end, label %if.then, !dbg !752

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !753, !tbaa !203
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.19, ptr noundef @__func__.elements_are_equal, ptr noundef @.str.2, i32 noundef 100), !dbg !753
  call void @abort() #8, !dbg !753
  unreachable, !dbg !753

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !752

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %e1.addr, align 8, !dbg !755, !tbaa !203
  %type = getelementptr inbounds %struct.GtElement, ptr %3, i32 0, i32 0, !dbg !757
  %4 = load ptr, ptr %type, align 8, !dbg !757, !tbaa !347
  %5 = load ptr, ptr %e2.addr, align 8, !dbg !758, !tbaa !203
  %type2 = getelementptr inbounds %struct.GtElement, ptr %5, i32 0, i32 0, !dbg !759
  %6 = load ptr, ptr %type2, align 8, !dbg !759, !tbaa !347
  %cmp = icmp eq ptr %4, %6, !dbg !760
  br i1 %cmp, label %land.lhs.true3, label %if.end8, !dbg !761

land.lhs.true3:                                   ; preds = %do.end
  %7 = load ptr, ptr %e1.addr, align 8, !dbg !762, !tbaa !203
  %range = getelementptr inbounds %struct.GtElement, ptr %7, i32 0, i32 4, !dbg !763
  %8 = load ptr, ptr %e2.addr, align 8, !dbg !764, !tbaa !203
  %range4 = getelementptr inbounds %struct.GtElement, ptr %8, i32 0, i32 4, !dbg !765
  %call5 = call i32 @gt_range_compare(ptr noundef %range, ptr noundef %range4), !dbg !766
  %tobool6 = icmp ne i32 %call5, 0, !dbg !766
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !767

if.then7:                                         ; preds = %land.lhs.true3
  store i1 true, ptr %retval, align 1, !dbg !768
  br label %return, !dbg !768

if.end8:                                          ; preds = %land.lhs.true3, %do.end
  store i1 false, ptr %retval, align 1, !dbg !769
  br label %return, !dbg !769

return:                                           ; preds = %if.end8, %if.then7
  %9 = load i1, ptr %retval, align 1, !dbg !770
  ret i1 %9, !dbg !770
}

; Function Attrs: nounwind uwtable
define void @gt_element_delete(ptr noundef %element) #0 !dbg !771 {
entry:
  %element.addr = alloca ptr, align 8
  store ptr %element, ptr %element.addr, align 8, !tbaa !203
  tail call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !775, metadata !DIExpression()), !dbg !776
  %0 = load ptr, ptr %element.addr, align 8, !dbg !777, !tbaa !203
  %tobool = icmp ne ptr %0, null, !dbg !777
  br i1 %tobool, label %if.end, label %if.then, !dbg !779

if.then:                                          ; preds = %entry
  br label %return, !dbg !780

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %element.addr, align 8, !dbg !781, !tbaa !203
  %refcount = getelementptr inbounds %struct.GtElement, ptr %1, i32 0, i32 1, !dbg !783
  %2 = load i64, ptr %refcount, align 8, !dbg !783, !tbaa !403
  %tobool1 = icmp ne i64 %2, 0, !dbg !781
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !784

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %element.addr, align 8, !dbg !785, !tbaa !203
  %refcount3 = getelementptr inbounds %struct.GtElement, ptr %3, i32 0, i32 1, !dbg !787
  %4 = load i64, ptr %refcount3, align 8, !dbg !788, !tbaa !403
  %dec = add i64 %4, -1, !dbg !788
  store i64 %dec, ptr %refcount3, align 8, !dbg !788, !tbaa !403
  br label %return, !dbg !789

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %element.addr, align 8, !dbg !790, !tbaa !203
  %gn = getelementptr inbounds %struct.GtElement, ptr %5, i32 0, i32 3, !dbg !791
  %6 = load ptr, ptr %gn, align 8, !dbg !791, !tbaa !251
  call void @gt_genome_node_delete(ptr noundef %6), !dbg !792
  %7 = load ptr, ptr %element.addr, align 8, !dbg !793, !tbaa !203
  call void @gt_free_mem(ptr noundef %7, ptr noundef @.str.2, i32 noundef 180), !dbg !793
  br label %return, !dbg !794

return:                                           ; preds = %if.end4, %if.then2, %if.then
  ret void, !dbg !794
}

declare !dbg !795 void @gt_genome_node_delete(ptr noundef) #2

declare !dbg !798 void @gt_str_delete(ptr noundef) #2

declare !dbg !801 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!137}
!llvm.module.flags = !{!158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/annotationsketch/element.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "321406413019eb0fff1a33f4515d19ae")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 5)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 120, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 15)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 31)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !9, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !14, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 8)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 168, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 21)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !34, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 20)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !41, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 176, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 22)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !34, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !16)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 144, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 18)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 24)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 30)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !34, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 6)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !9, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1160, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 145)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 38)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !87, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 44)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 7)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 45)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 46)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 26)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 27)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 28)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 9)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 152, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 19)
!137 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !138, retainedTypes: !148, globals: !157, splitDebugInlining: false, nameTableKind: None)
!138 = !{!139}
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "GtStrand", file: !140, line: 21, baseType: !141, size: 32, elements: !142)
!140 = !DIFile(filename: "src/core/strand_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "5c7a103ad5a6a6a01ca9604fb681ddb9")
!141 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!142 = !{!143, !144, !145, !146, !147}
!143 = !DIEnumerator(name: "GT_STRAND_FORWARD", value: 0)
!144 = !DIEnumerator(name: "GT_STRAND_REVERSE", value: 1)
!145 = !DIEnumerator(name: "GT_STRAND_BOTH", value: 2)
!146 = !DIEnumerator(name: "GT_STRAND_UNKNOWN", value: 3)
!147 = !DIEnumerator(name: "GT_NUM_OF_STRAND_TYPES", value: 4)
!148 = !{!149, !153}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtGenomeNode", file: !151, line: 31, baseType: !152)
!151 = !DIFile(filename: "src/extended/genome_node_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0daef5af22904690d9e19c33d22b6470")
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtGenomeNode", file: !151, line: 31, flags: DIFlagFwdDecl)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtFeatureNode", file: !155, line: 61, baseType: !156)
!155 = !DIFile(filename: "src/extended/feature_node_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "8d9f1b07cc008e77bf422e0e72b408f4")
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtFeatureNode", file: !155, line: 61, flags: DIFlagFwdDecl)
!157 = !{!0, !7, !12, !18, !23, !25, !27, !32, !37, !39, !44, !46, !51, !53, !56, !61, !66, !71, !73, !78, !80, !85, !90, !92, !97, !102, !107, !112, !117, !122, !127, !132}
!158 = !{i32 7, !"Dwarf Version", i32 5}
!159 = !{i32 2, !"Debug Info Version", i32 3}
!160 = !{i32 1, !"wchar_size", i32 4}
!161 = !{i32 8, !"PIC Level", i32 2}
!162 = !{i32 7, !"uwtable", i32 2}
!163 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!164 = distinct !DISubprogram(name: "gt_element_new", scope: !2, file: !2, line: 38, type: !165, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !200)
!165 = !DISubroutineType(types: !166)
!166 = !{!167, !153}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtElement", file: !169, line: 23, baseType: !170)
!169 = !DIFile(filename: "src/annotationsketch/element.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f83ec593b7b83c3824db8252981b4151")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtElement", file: !2, line: 28, size: 640, elements: !171)
!171 = !{!172, !174, !178, !180, !181, !188, !198}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !2, line: 29, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !170, file: !2, line: 30, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !176, line: 83, baseType: !177)
!176 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!177 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "strand", scope: !170, file: !2, line: 31, baseType: !179, size: 32, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStrand", file: !140, line: 32, baseType: !139)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "gn", scope: !170, file: !2, line: 32, baseType: !153, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !170, file: !2, line: 33, baseType: !182, size: 128, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtRange", file: !183, line: 29, baseType: !184)
!183 = !DIFile(filename: "src/core/range_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "05971597f0a8f239b91be35d4168fb4b")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtRange", file: !183, line: 31, size: 128, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !184, file: !183, line: 32, baseType: !175, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !184, file: !183, line: 33, baseType: !175, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "drange", scope: !170, file: !2, line: 34, baseType: !189, size: 192, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtDrawingRange", file: !190, line: 27, baseType: !191)
!190 = !DIFile(filename: "src/annotationsketch/drawing_range.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "09398660841c2c38c0320b42a401eca7")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 23, size: 192, elements: !192)
!192 = !{!193, !195, !196}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !191, file: !190, line: 25, baseType: !194, size: 64)
!194 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !191, file: !190, line: 25, baseType: !194, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "clip", scope: !191, file: !190, line: 26, baseType: !197, size: 32, offset: 128)
!197 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !170, file: !2, line: 35, baseType: !199, size: 8, offset: 576)
!199 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!200 = !{!201, !202}
!201 = !DILocalVariable(name: "node", arg: 1, scope: !164, file: !2, line: 38, type: !153)
!202 = !DILocalVariable(name: "element", scope: !164, file: !2, line: 40, type: !167)
!203 = !{!204, !204, i64 0}
!204 = !{!"any pointer", !205, i64 0}
!205 = !{!"omnipotent char", !206, i64 0}
!206 = !{!"Simple C/C++ TBAA"}
!207 = !DILocation(line: 38, column: 42, scope: !164)
!208 = !DILocation(line: 40, column: 3, scope: !164)
!209 = !DILocation(line: 40, column: 14, scope: !164)
!210 = !DILocation(line: 41, column: 3, scope: !164)
!211 = !DILocation(line: 41, column: 3, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !2, line: 41, column: 3)
!213 = distinct !DILexicalBlock(scope: !164, file: !2, line: 41, column: 3)
!214 = !DILocation(line: 41, column: 3, scope: !213)
!215 = !DILocation(line: 41, column: 3, scope: !216)
!216 = distinct !DILexicalBlock(scope: !212, file: !2, line: 41, column: 3)
!217 = !DILocation(line: 42, column: 13, scope: !164)
!218 = !DILocation(line: 42, column: 11, scope: !164)
!219 = !DILocation(line: 43, column: 23, scope: !164)
!220 = !DILocation(line: 43, column: 57, scope: !164)
!221 = !DILocation(line: 43, column: 32, scope: !164)
!222 = !DILocation(line: 43, column: 3, scope: !164)
!223 = !DILocation(line: 44, column: 24, scope: !164)
!224 = !DILocation(line: 44, column: 3, scope: !164)
!225 = !DILocation(line: 44, column: 74, scope: !164)
!226 = !DILocation(line: 44, column: 33, scope: !164)
!227 = !DILocation(line: 45, column: 48, scope: !164)
!228 = !DILocation(line: 45, column: 21, scope: !164)
!229 = !DILocation(line: 45, column: 3, scope: !164)
!230 = !DILocation(line: 45, column: 12, scope: !164)
!231 = !DILocation(line: 45, column: 19, scope: !164)
!232 = !{!233, !205, i64 16}
!233 = !{!"GtElement", !204, i64 0, !234, i64 8, !205, i64 16, !204, i64 24, !235, i64 32, !236, i64 48, !239, i64 72}
!234 = !{!"long", !205, i64 0}
!235 = !{!"GtRange", !234, i64 0, !234, i64 8}
!236 = !{!"", !237, i64 0, !237, i64 8, !238, i64 16}
!237 = !{!"double", !205, i64 0}
!238 = !{!"int", !205, i64 0}
!239 = !{!"_Bool", !205, i64 0}
!240 = !DILocation(line: 46, column: 45, scope: !164)
!241 = !DILocation(line: 46, column: 19, scope: !164)
!242 = !DILocation(line: 46, column: 3, scope: !164)
!243 = !DILocation(line: 46, column: 12, scope: !164)
!244 = !DILocation(line: 46, column: 17, scope: !164)
!245 = !{!233, !239, i64 72}
!246 = !DILocation(line: 47, column: 69, scope: !164)
!247 = !DILocation(line: 47, column: 34, scope: !164)
!248 = !DILocation(line: 47, column: 3, scope: !164)
!249 = !DILocation(line: 47, column: 12, scope: !164)
!250 = !DILocation(line: 47, column: 15, scope: !164)
!251 = !{!233, !204, i64 24}
!252 = !DILocation(line: 48, column: 10, scope: !164)
!253 = !DILocation(line: 49, column: 1, scope: !164)
!254 = !DILocation(line: 48, column: 3, scope: !164)
!255 = !DISubprogram(name: "fprintf", scope: !256, file: !256, line: 350, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!257 = !DISubroutineType(types: !258)
!258 = !{!197, !259, !318, null}
!259 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !263)
!262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !265)
!264 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!265 = !{!266, !267, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !282, !284, !285, !286, !290, !292, !294, !298, !301, !303, !306, !309, !310, !312, !315, !316}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !263, file: !264, line: 51, baseType: !197, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !263, file: !264, line: 54, baseType: !268, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !263, file: !264, line: 55, baseType: !268, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !263, file: !264, line: 56, baseType: !268, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !263, file: !264, line: 57, baseType: !268, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !263, file: !264, line: 58, baseType: !268, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !263, file: !264, line: 59, baseType: !268, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !263, file: !264, line: 60, baseType: !268, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !263, file: !264, line: 61, baseType: !268, size: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !263, file: !264, line: 64, baseType: !268, size: 64, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !263, file: !264, line: 65, baseType: !268, size: 64, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !263, file: !264, line: 66, baseType: !268, size: 64, offset: 704)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !263, file: !264, line: 68, baseType: !280, size: 64, offset: 768)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !264, line: 36, flags: DIFlagFwdDecl)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !263, file: !264, line: 70, baseType: !283, size: 64, offset: 832)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !263, file: !264, line: 72, baseType: !197, size: 32, offset: 896)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !263, file: !264, line: 73, baseType: !197, size: 32, offset: 928)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !263, file: !264, line: 74, baseType: !287, size: 64, offset: 960)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !288, line: 152, baseType: !289)
!288 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!289 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !263, file: !264, line: 77, baseType: !291, size: 16, offset: 1024)
!291 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !263, file: !264, line: 78, baseType: !293, size: 8, offset: 1040)
!293 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !263, file: !264, line: 79, baseType: !295, size: 8, offset: 1048)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 1)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !263, file: !264, line: 81, baseType: !299, size: 64, offset: 1088)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !264, line: 43, baseType: null)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !263, file: !264, line: 89, baseType: !302, size: 64, offset: 1152)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !288, line: 153, baseType: !289)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !263, file: !264, line: 91, baseType: !304, size: 64, offset: 1216)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !264, line: 37, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !263, file: !264, line: 92, baseType: !307, size: 64, offset: 1280)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !264, line: 38, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !263, file: !264, line: 93, baseType: !283, size: 64, offset: 1344)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !263, file: !264, line: 94, baseType: !311, size: 64, offset: 1408)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !263, file: !264, line: 95, baseType: !313, size: 64, offset: 1472)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !314, line: 70, baseType: !177)
!314 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !263, file: !264, line: 96, baseType: !197, size: 32, offset: 1536)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !263, file: !264, line: 98, baseType: !317, size: 160, offset: 1568)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !42)
!318 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !173)
!319 = !DISubprogram(name: "abort", scope: !320, file: !320, line: 598, type: !321, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!320 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!321 = !DISubroutineType(types: !322)
!322 = !{null}
!323 = distinct !DISubprogram(name: "gt_element_new_empty", scope: !2, file: !2, line: 58, type: !324, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137)
!324 = !DISubroutineType(types: !325)
!325 = !{!167}
!326 = !DILocation(line: 60, column: 10, scope: !323)
!327 = !DILocation(line: 60, column: 3, scope: !323)
!328 = distinct !DISubprogram(name: "gt_element_set_type", scope: !2, file: !2, line: 81, type: !329, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !167, !173}
!331 = !{!332, !333}
!332 = !DILocalVariable(name: "element", arg: 1, scope: !328, file: !2, line: 81, type: !167)
!333 = !DILocalVariable(name: "type", arg: 2, scope: !328, file: !2, line: 81, type: !173)
!334 = !DILocation(line: 81, column: 37, scope: !328)
!335 = !DILocation(line: 81, column: 58, scope: !328)
!336 = !DILocation(line: 83, column: 3, scope: !328)
!337 = !DILocation(line: 83, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !2, line: 83, column: 3)
!339 = distinct !DILexicalBlock(scope: !328, file: !2, line: 83, column: 3)
!340 = !DILocation(line: 83, column: 3, scope: !339)
!341 = !DILocation(line: 83, column: 3, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !2, line: 83, column: 3)
!343 = !DILocation(line: 84, column: 19, scope: !328)
!344 = !DILocation(line: 84, column: 3, scope: !328)
!345 = !DILocation(line: 84, column: 12, scope: !328)
!346 = !DILocation(line: 84, column: 17, scope: !328)
!347 = !{!233, !204, i64 0}
!348 = !DILocation(line: 85, column: 1, scope: !328)
!349 = !DISubprogram(name: "gt_feature_node_get_type", scope: !155, file: !155, line: 112, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DISubroutineType(types: !351)
!351 = !{!173, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!354 = distinct !DISubprogram(name: "gt_element_set_range", scope: !2, file: !2, line: 69, type: !355, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !167, !182}
!357 = !{!358, !359}
!358 = !DILocalVariable(name: "element", arg: 1, scope: !354, file: !2, line: 69, type: !167)
!359 = !DILocalVariable(name: "r", arg: 2, scope: !354, file: !2, line: 69, type: !182)
!360 = !DILocation(line: 69, column: 38, scope: !354)
!361 = !DILocation(line: 69, column: 55, scope: !354)
!362 = !DILocation(line: 71, column: 3, scope: !354)
!363 = !DILocation(line: 71, column: 3, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 71, column: 3)
!365 = distinct !DILexicalBlock(scope: !354, file: !2, line: 71, column: 3)
!366 = !DILocation(line: 71, column: 3, scope: !365)
!367 = !DILocation(line: 71, column: 3, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !2, line: 71, column: 3)
!369 = !DILocation(line: 72, column: 3, scope: !354)
!370 = !DILocation(line: 72, column: 12, scope: !354)
!371 = !DILocation(line: 72, column: 20, scope: !354)
!372 = !{i64 0, i64 8, !373, i64 8, i64 8, !373}
!373 = !{!234, !234, i64 0}
!374 = !DILocation(line: 73, column: 1, scope: !354)
!375 = !DISubprogram(name: "gt_genome_node_get_range", scope: !151, file: !151, line: 45, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DISubroutineType(types: !377)
!377 = !{!182, !149}
!378 = !DISubprogram(name: "gt_feature_node_get_strand", scope: !155, file: !155, line: 150, type: !379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DISubroutineType(types: !380)
!380 = !{!179, !352}
!381 = !DISubprogram(name: "gt_feature_node_is_marked", scope: !155, file: !155, line: 253, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubroutineType(types: !383)
!383 = !{!199, !352}
!384 = !DISubprogram(name: "gt_genome_node_ref", scope: !151, file: !151, line: 37, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubroutineType(types: !386)
!386 = !{!149, !149}
!387 = distinct !DISubprogram(name: "gt_element_ref", scope: !2, file: !2, line: 51, type: !388, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{!167, !167}
!390 = !{!391}
!391 = !DILocalVariable(name: "elem", arg: 1, scope: !387, file: !2, line: 51, type: !167)
!392 = !DILocation(line: 51, column: 38, scope: !387)
!393 = !DILocation(line: 53, column: 3, scope: !387)
!394 = !DILocation(line: 53, column: 3, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !2, line: 53, column: 3)
!396 = distinct !DILexicalBlock(scope: !387, file: !2, line: 53, column: 3)
!397 = !DILocation(line: 53, column: 3, scope: !396)
!398 = !DILocation(line: 53, column: 3, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !2, line: 53, column: 3)
!400 = !DILocation(line: 54, column: 3, scope: !387)
!401 = !DILocation(line: 54, column: 9, scope: !387)
!402 = !DILocation(line: 54, column: 17, scope: !387)
!403 = !{!233, !234, i64 8}
!404 = !DILocation(line: 55, column: 10, scope: !387)
!405 = !DILocation(line: 55, column: 3, scope: !387)
!406 = !DISubprogram(name: "gt_calloc_mem", scope: !407, file: !407, line: 62, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!407 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!408 = !DISubroutineType(types: !409)
!409 = !{!311, !313, !313, !173, !197}
!410 = distinct !DISubprogram(name: "gt_element_get_range", scope: !2, file: !2, line: 63, type: !411, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !415)
!411 = !DISubroutineType(types: !412)
!412 = !{!182, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!415 = !{!416}
!416 = !DILocalVariable(name: "element", arg: 1, scope: !410, file: !2, line: 63, type: !413)
!417 = !DILocation(line: 63, column: 47, scope: !410)
!418 = !DILocation(line: 65, column: 3, scope: !410)
!419 = !DILocation(line: 65, column: 3, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !2, line: 65, column: 3)
!421 = distinct !DILexicalBlock(scope: !410, file: !2, line: 65, column: 3)
!422 = !DILocation(line: 65, column: 3, scope: !421)
!423 = !DILocation(line: 65, column: 3, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !2, line: 65, column: 3)
!425 = !DILocation(line: 66, column: 10, scope: !410)
!426 = !DILocation(line: 66, column: 19, scope: !410)
!427 = !DILocation(line: 66, column: 3, scope: !410)
!428 = distinct !DISubprogram(name: "gt_element_get_type", scope: !2, file: !2, line: 75, type: !429, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!173, !413}
!431 = !{!432}
!432 = !DILocalVariable(name: "element", arg: 1, scope: !428, file: !2, line: 75, type: !413)
!433 = !DILocation(line: 75, column: 50, scope: !428)
!434 = !DILocation(line: 77, column: 3, scope: !428)
!435 = !DILocation(line: 77, column: 3, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !2, line: 77, column: 3)
!437 = distinct !DILexicalBlock(scope: !428, file: !2, line: 77, column: 3)
!438 = !DILocation(line: 77, column: 3, scope: !437)
!439 = !DILocation(line: 77, column: 3, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !2, line: 77, column: 3)
!441 = !DILocation(line: 78, column: 10, scope: !428)
!442 = !DILocation(line: 78, column: 19, scope: !428)
!443 = !DILocation(line: 78, column: 3, scope: !428)
!444 = distinct !DISubprogram(name: "gt_element_get_strand", scope: !2, file: !2, line: 87, type: !445, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{!179, !413}
!447 = !{!448}
!448 = !DILocalVariable(name: "element", arg: 1, scope: !444, file: !2, line: 87, type: !413)
!449 = !DILocation(line: 87, column: 49, scope: !444)
!450 = !DILocation(line: 89, column: 3, scope: !444)
!451 = !DILocation(line: 89, column: 3, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !2, line: 89, column: 3)
!453 = distinct !DILexicalBlock(scope: !444, file: !2, line: 89, column: 3)
!454 = !DILocation(line: 89, column: 3, scope: !453)
!455 = !DILocation(line: 89, column: 3, scope: !456)
!456 = distinct !DILexicalBlock(scope: !452, file: !2, line: 89, column: 3)
!457 = !DILocation(line: 90, column: 10, scope: !444)
!458 = !DILocation(line: 90, column: 19, scope: !444)
!459 = !DILocation(line: 90, column: 3, scope: !444)
!460 = distinct !DISubprogram(name: "gt_element_is_marked", scope: !2, file: !2, line: 92, type: !461, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!199, !413}
!463 = !{!464}
!464 = !DILocalVariable(name: "element", arg: 1, scope: !460, file: !2, line: 92, type: !413)
!465 = !DILocation(line: 92, column: 44, scope: !460)
!466 = !DILocation(line: 94, column: 3, scope: !460)
!467 = !DILocation(line: 94, column: 3, scope: !468)
!468 = distinct !DILexicalBlock(scope: !469, file: !2, line: 94, column: 3)
!469 = distinct !DILexicalBlock(scope: !460, file: !2, line: 94, column: 3)
!470 = !DILocation(line: 94, column: 3, scope: !469)
!471 = !DILocation(line: 94, column: 3, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !2, line: 94, column: 3)
!473 = !DILocation(line: 95, column: 10, scope: !460)
!474 = !DILocation(line: 95, column: 19, scope: !460)
!475 = !{i8 0, i8 2}
!476 = !{}
!477 = !DILocation(line: 95, column: 3, scope: !460)
!478 = distinct !DISubprogram(name: "gt_element_sketch", scope: !2, file: !2, line: 106, type: !479, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !489)
!479 = !DISubroutineType(types: !480)
!480 = !{!197, !167, !481, !485}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCanvas", file: !483, line: 26, baseType: !484)
!483 = !DIFile(filename: "src/annotationsketch/canvas_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f126b39be3fd664e2d47ff26173ec50f")
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtCanvas", file: !483, line: 26, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !487, line: 44, baseType: !488)
!487 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !487, line: 44, flags: DIFlagFwdDecl)
!489 = !{!490, !491, !492, !493}
!490 = !DILocalVariable(name: "elem", arg: 1, scope: !478, file: !2, line: 106, type: !167)
!491 = !DILocalVariable(name: "canvas", arg: 2, scope: !478, file: !2, line: 106, type: !481)
!492 = !DILocalVariable(name: "err", arg: 3, scope: !478, file: !2, line: 106, type: !485)
!493 = !DILocalVariable(name: "had_err", scope: !478, file: !2, line: 108, type: !197)
!494 = !DILocation(line: 106, column: 34, scope: !478)
!495 = !DILocation(line: 106, column: 50, scope: !478)
!496 = !DILocation(line: 106, column: 67, scope: !478)
!497 = !DILocation(line: 108, column: 3, scope: !478)
!498 = !DILocation(line: 108, column: 7, scope: !478)
!499 = !{!238, !238, i64 0}
!500 = !DILocation(line: 109, column: 3, scope: !478)
!501 = !DILocation(line: 109, column: 3, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !2, line: 109, column: 3)
!503 = distinct !DILexicalBlock(scope: !478, file: !2, line: 109, column: 3)
!504 = !DILocation(line: 109, column: 3, scope: !503)
!505 = !DILocation(line: 109, column: 3, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !2, line: 109, column: 3)
!507 = !DILocation(line: 110, column: 37, scope: !478)
!508 = !DILocation(line: 110, column: 45, scope: !478)
!509 = !DILocation(line: 110, column: 51, scope: !478)
!510 = !DILocation(line: 110, column: 13, scope: !478)
!511 = !DILocation(line: 110, column: 11, scope: !478)
!512 = !DILocation(line: 111, column: 10, scope: !478)
!513 = !DILocation(line: 112, column: 1, scope: !478)
!514 = !DILocation(line: 111, column: 3, scope: !478)
!515 = !DISubprogram(name: "gt_canvas_visit_element", scope: !516, file: !516, line: 61, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!516 = !DIFile(filename: "src/annotationsketch/canvas.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0deb9c7fb96a771c207e05f982461a9a")
!517 = !DISubroutineType(types: !518)
!518 = !{!197, !481, !167, !485}
!519 = distinct !DISubprogram(name: "gt_element_get_node_ref", scope: !2, file: !2, line: 114, type: !520, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{!153, !413}
!522 = !{!523}
!523 = !DILocalVariable(name: "elem", arg: 1, scope: !519, file: !2, line: 114, type: !413)
!524 = !DILocation(line: 114, column: 57, scope: !519)
!525 = !DILocation(line: 116, column: 3, scope: !519)
!526 = !DILocation(line: 116, column: 3, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !2, line: 116, column: 3)
!528 = distinct !DILexicalBlock(scope: !519, file: !2, line: 116, column: 3)
!529 = !DILocation(line: 116, column: 3, scope: !528)
!530 = !DILocation(line: 116, column: 3, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !2, line: 116, column: 3)
!532 = !DILocation(line: 117, column: 10, scope: !519)
!533 = !DILocation(line: 117, column: 16, scope: !519)
!534 = !DILocation(line: 117, column: 3, scope: !519)
!535 = distinct !DISubprogram(name: "gt_element_unit_test", scope: !2, file: !2, line: 120, type: !536, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !538)
!536 = !DISubroutineType(types: !537)
!537 = !{!197, !485}
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !553}
!539 = !DILocalVariable(name: "err", arg: 1, scope: !535, file: !2, line: 120, type: !485)
!540 = !DILocalVariable(name: "r1", scope: !535, file: !2, line: 122, type: !182)
!541 = !DILocalVariable(name: "r2", scope: !535, file: !2, line: 122, type: !182)
!542 = !DILocalVariable(name: "r_temp", scope: !535, file: !2, line: 122, type: !182)
!543 = !DILocalVariable(name: "gn", scope: !535, file: !2, line: 123, type: !149)
!544 = !DILocalVariable(name: "gn2", scope: !535, file: !2, line: 123, type: !149)
!545 = !DILocalVariable(name: "e", scope: !535, file: !2, line: 124, type: !167)
!546 = !DILocalVariable(name: "e2", scope: !535, file: !2, line: 124, type: !167)
!547 = !DILocalVariable(name: "e3", scope: !535, file: !2, line: 124, type: !167)
!548 = !DILocalVariable(name: "seqid", scope: !535, file: !2, line: 125, type: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !551, line: 27, baseType: !552)
!551 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !551, line: 27, flags: DIFlagFwdDecl)
!553 = !DILocalVariable(name: "had_err", scope: !535, file: !2, line: 126, type: !197)
!554 = !DILocation(line: 120, column: 35, scope: !535)
!555 = !DILocation(line: 122, column: 3, scope: !535)
!556 = !DILocation(line: 122, column: 11, scope: !535)
!557 = !DILocation(line: 122, column: 15, scope: !535)
!558 = !DILocation(line: 122, column: 19, scope: !535)
!559 = !DILocation(line: 123, column: 3, scope: !535)
!560 = !DILocation(line: 123, column: 17, scope: !535)
!561 = !DILocation(line: 123, column: 22, scope: !535)
!562 = !DILocation(line: 124, column: 3, scope: !535)
!563 = !DILocation(line: 124, column: 14, scope: !535)
!564 = !DILocation(line: 124, column: 18, scope: !535)
!565 = !DILocation(line: 124, column: 23, scope: !535)
!566 = !DILocation(line: 125, column: 3, scope: !535)
!567 = !DILocation(line: 125, column: 10, scope: !535)
!568 = !DILocation(line: 126, column: 3, scope: !535)
!569 = !DILocation(line: 126, column: 7, scope: !535)
!570 = !DILocation(line: 127, column: 3, scope: !535)
!571 = !DILocation(line: 127, column: 3, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 127, column: 3)
!573 = distinct !DILexicalBlock(scope: !535, file: !2, line: 127, column: 3)
!574 = !DILocation(line: 127, column: 3, scope: !573)
!575 = !DILocation(line: 127, column: 3, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !2, line: 127, column: 3)
!577 = !DILocation(line: 129, column: 6, scope: !535)
!578 = !DILocation(line: 129, column: 12, scope: !535)
!579 = !{!235, !234, i64 0}
!580 = !DILocation(line: 130, column: 6, scope: !535)
!581 = !DILocation(line: 130, column: 10, scope: !535)
!582 = !{!235, !234, i64 8}
!583 = !DILocation(line: 132, column: 6, scope: !535)
!584 = !DILocation(line: 132, column: 12, scope: !535)
!585 = !DILocation(line: 133, column: 6, scope: !535)
!586 = !DILocation(line: 133, column: 10, scope: !535)
!587 = !DILocation(line: 135, column: 11, scope: !535)
!588 = !DILocation(line: 135, column: 9, scope: !535)
!589 = !DILocation(line: 136, column: 28, scope: !535)
!590 = !DILocation(line: 136, column: 50, scope: !535)
!591 = !DILocation(line: 136, column: 60, scope: !535)
!592 = !DILocation(line: 136, column: 8, scope: !535)
!593 = !DILocation(line: 136, column: 6, scope: !535)
!594 = !DILocation(line: 137, column: 29, scope: !535)
!595 = !DILocation(line: 137, column: 51, scope: !535)
!596 = !DILocation(line: 137, column: 61, scope: !535)
!597 = !DILocation(line: 137, column: 9, scope: !535)
!598 = !DILocation(line: 137, column: 7, scope: !535)
!599 = !DILocation(line: 140, column: 39, scope: !535)
!600 = !DILocation(line: 140, column: 7, scope: !535)
!601 = !DILocation(line: 140, column: 5, scope: !535)
!602 = !DILocation(line: 141, column: 39, scope: !535)
!603 = !DILocation(line: 141, column: 8, scope: !535)
!604 = !DILocation(line: 141, column: 6, scope: !535)
!605 = !DILocation(line: 142, column: 39, scope: !535)
!606 = !DILocation(line: 142, column: 8, scope: !535)
!607 = !DILocation(line: 142, column: 6, scope: !535)
!608 = !DILocation(line: 145, column: 12, scope: !535)
!609 = !DILocation(line: 145, column: 33, scope: !535)
!610 = !DILocation(line: 146, column: 3, scope: !535)
!611 = !DILocation(line: 146, column: 3, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !2, line: 146, column: 3)
!613 = distinct !DILexicalBlock(scope: !535, file: !2, line: 146, column: 3)
!614 = !DILocation(line: 146, column: 3, scope: !613)
!615 = !DILocation(line: 146, column: 3, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !2, line: 146, column: 3)
!617 = distinct !DILexicalBlock(scope: !612, file: !2, line: 146, column: 3)
!618 = !DILocation(line: 146, column: 3, scope: !617)
!619 = !DILocation(line: 146, column: 3, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !2, line: 146, column: 3)
!621 = !DILocation(line: 147, column: 3, scope: !535)
!622 = !DILocation(line: 147, column: 3, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !2, line: 147, column: 3)
!624 = distinct !DILexicalBlock(scope: !535, file: !2, line: 147, column: 3)
!625 = !DILocation(line: 147, column: 3, scope: !624)
!626 = !DILocation(line: 147, column: 3, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !2, line: 147, column: 3)
!628 = distinct !DILexicalBlock(scope: !623, file: !2, line: 147, column: 3)
!629 = !DILocation(line: 147, column: 3, scope: !628)
!630 = !DILocation(line: 147, column: 3, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !2, line: 147, column: 3)
!632 = !DILocation(line: 150, column: 3, scope: !535)
!633 = !DILocation(line: 150, column: 3, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !2, line: 150, column: 3)
!635 = distinct !DILexicalBlock(scope: !535, file: !2, line: 150, column: 3)
!636 = !DILocation(line: 150, column: 3, scope: !635)
!637 = !DILocation(line: 150, column: 3, scope: !638)
!638 = distinct !DILexicalBlock(scope: !639, file: !2, line: 150, column: 3)
!639 = distinct !DILexicalBlock(scope: !634, file: !2, line: 150, column: 3)
!640 = !DILocation(line: 150, column: 3, scope: !639)
!641 = !DILocation(line: 150, column: 3, scope: !642)
!642 = distinct !DILexicalBlock(scope: !638, file: !2, line: 150, column: 3)
!643 = !DILocation(line: 151, column: 3, scope: !535)
!644 = !DILocation(line: 151, column: 3, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !2, line: 151, column: 3)
!646 = distinct !DILexicalBlock(scope: !535, file: !2, line: 151, column: 3)
!647 = !DILocation(line: 151, column: 3, scope: !646)
!648 = !DILocation(line: 151, column: 3, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !2, line: 151, column: 3)
!650 = distinct !DILexicalBlock(scope: !645, file: !2, line: 151, column: 3)
!651 = !DILocation(line: 151, column: 3, scope: !650)
!652 = !DILocation(line: 151, column: 3, scope: !653)
!653 = distinct !DILexicalBlock(scope: !649, file: !2, line: 151, column: 3)
!654 = !DILocation(line: 152, column: 23, scope: !535)
!655 = !DILocation(line: 152, column: 3, scope: !535)
!656 = !DILocation(line: 153, column: 3, scope: !535)
!657 = !DILocation(line: 153, column: 3, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !2, line: 153, column: 3)
!659 = distinct !DILexicalBlock(scope: !535, file: !2, line: 153, column: 3)
!660 = !DILocation(line: 153, column: 3, scope: !659)
!661 = !DILocation(line: 153, column: 3, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !2, line: 153, column: 3)
!663 = distinct !DILexicalBlock(scope: !658, file: !2, line: 153, column: 3)
!664 = !DILocation(line: 153, column: 3, scope: !663)
!665 = !DILocation(line: 153, column: 3, scope: !666)
!666 = distinct !DILexicalBlock(scope: !662, file: !2, line: 153, column: 3)
!667 = !DILocation(line: 154, column: 23, scope: !535)
!668 = !DILocation(line: 154, column: 3, scope: !535)
!669 = !DILocation(line: 157, column: 3, scope: !535)
!670 = !DILocation(line: 157, column: 3, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !2, line: 157, column: 3)
!672 = distinct !DILexicalBlock(scope: !535, file: !2, line: 157, column: 3)
!673 = !DILocation(line: 157, column: 3, scope: !672)
!674 = !DILocation(line: 157, column: 3, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !2, line: 157, column: 3)
!676 = distinct !DILexicalBlock(scope: !671, file: !2, line: 157, column: 3)
!677 = !DILocation(line: 157, column: 3, scope: !676)
!678 = !DILocation(line: 157, column: 3, scope: !679)
!679 = distinct !DILexicalBlock(scope: !675, file: !2, line: 157, column: 3)
!680 = !DILocation(line: 158, column: 3, scope: !535)
!681 = !DILocation(line: 158, column: 3, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !2, line: 158, column: 3)
!683 = distinct !DILexicalBlock(scope: !535, file: !2, line: 158, column: 3)
!684 = !DILocation(line: 158, column: 3, scope: !683)
!685 = !DILocation(line: 158, column: 3, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !2, line: 158, column: 3)
!687 = distinct !DILexicalBlock(scope: !682, file: !2, line: 158, column: 3)
!688 = !DILocation(line: 158, column: 3, scope: !687)
!689 = !DILocation(line: 158, column: 3, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !2, line: 158, column: 3)
!691 = !DILocation(line: 159, column: 3, scope: !535)
!692 = !DILocation(line: 159, column: 3, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !2, line: 159, column: 3)
!694 = distinct !DILexicalBlock(scope: !535, file: !2, line: 159, column: 3)
!695 = !DILocation(line: 159, column: 3, scope: !694)
!696 = !DILocation(line: 159, column: 3, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 159, column: 3)
!698 = distinct !DILexicalBlock(scope: !693, file: !2, line: 159, column: 3)
!699 = !DILocation(line: 159, column: 3, scope: !698)
!700 = !DILocation(line: 159, column: 3, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !2, line: 159, column: 3)
!702 = !DILocation(line: 161, column: 21, scope: !535)
!703 = !DILocation(line: 161, column: 3, scope: !535)
!704 = !DILocation(line: 162, column: 21, scope: !535)
!705 = !DILocation(line: 162, column: 3, scope: !535)
!706 = !DILocation(line: 163, column: 21, scope: !535)
!707 = !DILocation(line: 163, column: 3, scope: !535)
!708 = !DILocation(line: 164, column: 25, scope: !535)
!709 = !DILocation(line: 164, column: 3, scope: !535)
!710 = !DILocation(line: 165, column: 25, scope: !535)
!711 = !DILocation(line: 165, column: 3, scope: !535)
!712 = !DILocation(line: 166, column: 17, scope: !535)
!713 = !DILocation(line: 166, column: 3, scope: !535)
!714 = !DILocation(line: 168, column: 10, scope: !535)
!715 = !DILocation(line: 170, column: 1, scope: !535)
!716 = !DILocation(line: 168, column: 3, scope: !535)
!717 = !DISubprogram(name: "gt_error_is_set", scope: !487, file: !487, line: 64, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!718 = !DISubroutineType(types: !719)
!719 = !{!199, !720}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!722 = !DISubprogram(name: "gt_str_new_cstr", scope: !551, file: !551, line: 32, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!723 = !DISubroutineType(types: !724)
!724 = !{!549, !173}
!725 = !DISubprogram(name: "gt_feature_node_new", scope: !155, file: !155, line: 71, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!726 = !DISubroutineType(types: !727)
!727 = !{!149, !549, !173, !175, !175, !179}
!728 = !DISubprogram(name: "gt_range_compare", scope: !183, file: !183, line: 39, type: !729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!729 = !DISubroutineType(types: !730)
!730 = !{!197, !731, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!733 = !DISubprogram(name: "gt_error_set", scope: !487, file: !487, line: 56, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !485, !173, null}
!736 = !DISubprogram(name: "strcmp", scope: !737, file: !737, line: 156, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!737 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!738 = !DISubroutineType(types: !739)
!739 = !{!197, !173, !173}
!740 = distinct !DISubprogram(name: "elements_are_equal", scope: !2, file: !2, line: 98, type: !741, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!199, !413, !413}
!743 = !{!744, !745}
!744 = !DILocalVariable(name: "e1", arg: 1, scope: !740, file: !2, line: 98, type: !413)
!745 = !DILocalVariable(name: "e2", arg: 2, scope: !740, file: !2, line: 98, type: !413)
!746 = !DILocation(line: 98, column: 49, scope: !740)
!747 = !DILocation(line: 98, column: 70, scope: !740)
!748 = !DILocation(line: 100, column: 3, scope: !740)
!749 = !DILocation(line: 100, column: 3, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !2, line: 100, column: 3)
!751 = distinct !DILexicalBlock(scope: !740, file: !2, line: 100, column: 3)
!752 = !DILocation(line: 100, column: 3, scope: !751)
!753 = !DILocation(line: 100, column: 3, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !2, line: 100, column: 3)
!755 = !DILocation(line: 101, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !740, file: !2, line: 101, column: 7)
!757 = !DILocation(line: 101, column: 11, scope: !756)
!758 = !DILocation(line: 101, column: 19, scope: !756)
!759 = !DILocation(line: 101, column: 23, scope: !756)
!760 = !DILocation(line: 101, column: 16, scope: !756)
!761 = !DILocation(line: 101, column: 28, scope: !756)
!762 = !DILocation(line: 101, column: 50, scope: !756)
!763 = !DILocation(line: 101, column: 54, scope: !756)
!764 = !DILocation(line: 101, column: 62, scope: !756)
!765 = !DILocation(line: 101, column: 66, scope: !756)
!766 = !DILocation(line: 101, column: 32, scope: !756)
!767 = !DILocation(line: 101, column: 7, scope: !740)
!768 = !DILocation(line: 102, column: 5, scope: !756)
!769 = !DILocation(line: 103, column: 3, scope: !740)
!770 = !DILocation(line: 104, column: 1, scope: !740)
!771 = distinct !DISubprogram(name: "gt_element_delete", scope: !2, file: !2, line: 172, type: !772, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !137, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !167}
!774 = !{!775}
!775 = !DILocalVariable(name: "element", arg: 1, scope: !771, file: !2, line: 172, type: !167)
!776 = !DILocation(line: 172, column: 35, scope: !771)
!777 = !DILocation(line: 174, column: 8, scope: !778)
!778 = distinct !DILexicalBlock(scope: !771, file: !2, line: 174, column: 7)
!779 = !DILocation(line: 174, column: 7, scope: !771)
!780 = !DILocation(line: 174, column: 17, scope: !778)
!781 = !DILocation(line: 175, column: 7, scope: !782)
!782 = distinct !DILexicalBlock(scope: !771, file: !2, line: 175, column: 7)
!783 = !DILocation(line: 175, column: 16, scope: !782)
!784 = !DILocation(line: 175, column: 7, scope: !771)
!785 = !DILocation(line: 176, column: 5, scope: !786)
!786 = distinct !DILexicalBlock(scope: !782, file: !2, line: 175, column: 26)
!787 = !DILocation(line: 176, column: 14, scope: !786)
!788 = !DILocation(line: 176, column: 22, scope: !786)
!789 = !DILocation(line: 177, column: 5, scope: !786)
!790 = !DILocation(line: 179, column: 41, scope: !771)
!791 = !DILocation(line: 179, column: 50, scope: !771)
!792 = !DILocation(line: 179, column: 3, scope: !771)
!793 = !DILocation(line: 180, column: 3, scope: !771)
!794 = !DILocation(line: 181, column: 1, scope: !771)
!795 = !DISubprogram(name: "gt_genome_node_delete", scope: !151, file: !151, line: 108, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !149}
!798 = !DISubprogram(name: "gt_str_delete", scope: !551, file: !551, line: 90, type: !799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !549}
!801 = !DISubprogram(name: "gt_free_mem", scope: !407, file: !407, line: 75, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !311, !173, !197}

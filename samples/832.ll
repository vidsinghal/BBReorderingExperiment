; ModuleID = 'samples/832.bc'
source_filename = "src/annotationsketch/canvas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtCanvasClass = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.GtRange = type { i64, i64 }
%struct.GtCanvas = type { ptr, ptr }
%struct.GtCanvasMembers = type { %struct.GtRange, double, double, double, i64, i64, ptr, ptr, i8, ptr, ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"txt\00", align 1, !dbg !7
@__func__.gt_format_ruler_label = private unnamed_addr constant [22 x i8] c"gt_format_ruler_label\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [30 x i8] c"src/annotationsketch/canvas.c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [4 x i8] c"-%.\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [3 x i8] c"%.\00", align 1, !dbg !25
@.str.5 = private unnamed_addr constant [5 x i8] c"fG%s\00", align 1, !dbg !30
@.str.6 = private unnamed_addr constant [5 x i8] c"fM%s\00", align 1, !dbg !35
@.str.7 = private unnamed_addr constant [5 x i8] c"fk%s\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [9 x i8] c" %s%lu%s\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !49
@.str.11 = private unnamed_addr constant [7 x i8] c"canvas\00", align 1, !dbg !54
@__func__.gt_canvas_draw_ruler = private unnamed_addr constant [21 x i8] c"gt_canvas_draw_ruler\00", align 1, !dbg !59
@.str.12 = private unnamed_addr constant [15 x i8] c"cc && cc->size\00", align 1, !dbg !64
@__func__.gt_canvas_create = private unnamed_addr constant [17 x i8] c"gt_canvas_create\00", align 1, !dbg !69
@.str.13 = private unnamed_addr constant [16 x i8] c"canvas->c_class\00", align 1, !dbg !74
@__func__.gt_canvas_delete = private unnamed_addr constant [17 x i8] c"gt_canvas_delete\00", align 1, !dbg !79
@.str.14 = private unnamed_addr constant [28 x i8] c"cc && c && c->c_class == cc\00", align 1, !dbg !81
@__func__.gt_canvas_cast = private unnamed_addr constant [15 x i8] c"gt_canvas_cast\00", align 1, !dbg !86
@.str.15 = private unnamed_addr constant [8 x i8] c"cc && c\00", align 1, !dbg !89
@__func__.gt_canvas_try_cast = private unnamed_addr constant [19 x i8] c"gt_canvas_try_cast\00", align 1, !dbg !94
@__func__.gt_canvas_get_height = private unnamed_addr constant [21 x i8] c"gt_canvas_get_height\00", align 1, !dbg !99
@.str.16 = private unnamed_addr constant [17 x i8] c"canvas && layout\00", align 1, !dbg !101
@__func__.gt_canvas_visit_layout_pre = private unnamed_addr constant [27 x i8] c"gt_canvas_visit_layout_pre\00", align 1, !dbg !104
@__func__.gt_canvas_visit_layout_post = private unnamed_addr constant [28 x i8] c"gt_canvas_visit_layout_post\00", align 1, !dbg !109
@.str.17 = private unnamed_addr constant [16 x i8] c"canvas && track\00", align 1, !dbg !112
@__func__.gt_canvas_visit_track_pre = private unnamed_addr constant [26 x i8] c"gt_canvas_visit_track_pre\00", align 1, !dbg !114
@__func__.gt_canvas_visit_track_post = private unnamed_addr constant [27 x i8] c"gt_canvas_visit_track_post\00", align 1, !dbg !119
@.str.18 = private unnamed_addr constant [15 x i8] c"canvas && line\00", align 1, !dbg !121
@__func__.gt_canvas_visit_line_pre = private unnamed_addr constant [25 x i8] c"gt_canvas_visit_line_pre\00", align 1, !dbg !123
@__func__.gt_canvas_visit_line_post = private unnamed_addr constant [26 x i8] c"gt_canvas_visit_line_post\00", align 1, !dbg !128
@.str.19 = private unnamed_addr constant [16 x i8] c"canvas && block\00", align 1, !dbg !130
@__func__.gt_canvas_visit_block = private unnamed_addr constant [22 x i8] c"gt_canvas_visit_block\00", align 1, !dbg !132
@.str.20 = private unnamed_addr constant [18 x i8] c"canvas && element\00", align 1, !dbg !134
@__func__.gt_canvas_visit_element = private unnamed_addr constant [24 x i8] c"gt_canvas_visit_element\00", align 1, !dbg !139
@.str.21 = private unnamed_addr constant [13 x i8] c"canvas && ct\00", align 1, !dbg !144
@__func__.gt_canvas_visit_custom_track = private unnamed_addr constant [29 x i8] c"gt_canvas_visit_custom_track\00", align 1, !dbg !149
@__func__.gt_canvas_get_style = private unnamed_addr constant [20 x i8] c"gt_canvas_get_style\00", align 1, !dbg !154

; Function Attrs: nounwind uwtable
define ptr @gt_canvas_class_new(i64 noundef %size, ptr noundef %la_visit_pre, ptr noundef %la_visit_post, ptr noundef %t_visit_pre, ptr noundef %t_visit_post, ptr noundef %l_visit_pre, ptr noundef %l_visit_post, ptr noundef %b_visit, ptr noundef %e_visit, ptr noundef %ct_visit, ptr noundef %draw_ruler_func, ptr noundef %free) #0 !dbg !174 {
entry:
  %size.addr = alloca i64, align 8
  %la_visit_pre.addr = alloca ptr, align 8
  %la_visit_post.addr = alloca ptr, align 8
  %t_visit_pre.addr = alloca ptr, align 8
  %t_visit_post.addr = alloca ptr, align 8
  %l_visit_pre.addr = alloca ptr, align 8
  %l_visit_post.addr = alloca ptr, align 8
  %b_visit.addr = alloca ptr, align 8
  %e_visit.addr = alloca ptr, align 8
  %ct_visit.addr = alloca ptr, align 8
  %draw_ruler_func.addr = alloca ptr, align 8
  %free.addr = alloca ptr, align 8
  %c_class = alloca ptr, align 8
  store i64 %size, ptr %size.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !306, metadata !DIExpression()), !dbg !324
  store ptr %la_visit_pre, ptr %la_visit_pre.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %la_visit_pre.addr, metadata !307, metadata !DIExpression()), !dbg !327
  store ptr %la_visit_post, ptr %la_visit_post.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %la_visit_post.addr, metadata !308, metadata !DIExpression()), !dbg !328
  store ptr %t_visit_pre, ptr %t_visit_pre.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %t_visit_pre.addr, metadata !309, metadata !DIExpression()), !dbg !329
  store ptr %t_visit_post, ptr %t_visit_post.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %t_visit_post.addr, metadata !310, metadata !DIExpression()), !dbg !330
  store ptr %l_visit_pre, ptr %l_visit_pre.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %l_visit_pre.addr, metadata !311, metadata !DIExpression()), !dbg !331
  store ptr %l_visit_post, ptr %l_visit_post.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %l_visit_post.addr, metadata !312, metadata !DIExpression()), !dbg !332
  store ptr %b_visit, ptr %b_visit.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %b_visit.addr, metadata !313, metadata !DIExpression()), !dbg !333
  store ptr %e_visit, ptr %e_visit.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %e_visit.addr, metadata !314, metadata !DIExpression()), !dbg !334
  store ptr %ct_visit, ptr %ct_visit.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %ct_visit.addr, metadata !315, metadata !DIExpression()), !dbg !335
  store ptr %draw_ruler_func, ptr %draw_ruler_func.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %draw_ruler_func.addr, metadata !316, metadata !DIExpression()), !dbg !336
  store ptr %free, ptr %free.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %free.addr, metadata !317, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 8, ptr %c_class) #6, !dbg !338
  tail call void @llvm.dbg.declare(metadata ptr %c_class, metadata !318, metadata !DIExpression()), !dbg !339
  %call = call ptr @gt_class_alloc(i64 noundef 96), !dbg !340
  store ptr %call, ptr %c_class, align 8, !dbg !339, !tbaa !325
  %0 = load i64, ptr %size.addr, align 8, !dbg !341, !tbaa !320
  %1 = load ptr, ptr %c_class, align 8, !dbg !342, !tbaa !325
  %size1 = getelementptr inbounds %struct.GtCanvasClass, ptr %1, i32 0, i32 0, !dbg !343
  store i64 %0, ptr %size1, align 8, !dbg !344, !tbaa !345
  %2 = load ptr, ptr %la_visit_pre.addr, align 8, !dbg !347, !tbaa !325
  %3 = load ptr, ptr %c_class, align 8, !dbg !348, !tbaa !325
  %visit_layout_pre = getelementptr inbounds %struct.GtCanvasClass, ptr %3, i32 0, i32 1, !dbg !349
  store ptr %2, ptr %visit_layout_pre, align 8, !dbg !350, !tbaa !351
  %4 = load ptr, ptr %la_visit_post.addr, align 8, !dbg !352, !tbaa !325
  %5 = load ptr, ptr %c_class, align 8, !dbg !353, !tbaa !325
  %visit_layout_post = getelementptr inbounds %struct.GtCanvasClass, ptr %5, i32 0, i32 2, !dbg !354
  store ptr %4, ptr %visit_layout_post, align 8, !dbg !355, !tbaa !356
  %6 = load ptr, ptr %t_visit_pre.addr, align 8, !dbg !357, !tbaa !325
  %7 = load ptr, ptr %c_class, align 8, !dbg !358, !tbaa !325
  %visit_track_pre = getelementptr inbounds %struct.GtCanvasClass, ptr %7, i32 0, i32 3, !dbg !359
  store ptr %6, ptr %visit_track_pre, align 8, !dbg !360, !tbaa !361
  %8 = load ptr, ptr %t_visit_post.addr, align 8, !dbg !362, !tbaa !325
  %9 = load ptr, ptr %c_class, align 8, !dbg !363, !tbaa !325
  %visit_track_post = getelementptr inbounds %struct.GtCanvasClass, ptr %9, i32 0, i32 4, !dbg !364
  store ptr %8, ptr %visit_track_post, align 8, !dbg !365, !tbaa !366
  %10 = load ptr, ptr %l_visit_pre.addr, align 8, !dbg !367, !tbaa !325
  %11 = load ptr, ptr %c_class, align 8, !dbg !368, !tbaa !325
  %visit_line_pre = getelementptr inbounds %struct.GtCanvasClass, ptr %11, i32 0, i32 5, !dbg !369
  store ptr %10, ptr %visit_line_pre, align 8, !dbg !370, !tbaa !371
  %12 = load ptr, ptr %l_visit_post.addr, align 8, !dbg !372, !tbaa !325
  %13 = load ptr, ptr %c_class, align 8, !dbg !373, !tbaa !325
  %visit_line_post = getelementptr inbounds %struct.GtCanvasClass, ptr %13, i32 0, i32 6, !dbg !374
  store ptr %12, ptr %visit_line_post, align 8, !dbg !375, !tbaa !376
  %14 = load ptr, ptr %b_visit.addr, align 8, !dbg !377, !tbaa !325
  %15 = load ptr, ptr %c_class, align 8, !dbg !378, !tbaa !325
  %visit_block = getelementptr inbounds %struct.GtCanvasClass, ptr %15, i32 0, i32 7, !dbg !379
  store ptr %14, ptr %visit_block, align 8, !dbg !380, !tbaa !381
  %16 = load ptr, ptr %e_visit.addr, align 8, !dbg !382, !tbaa !325
  %17 = load ptr, ptr %c_class, align 8, !dbg !383, !tbaa !325
  %visit_element = getelementptr inbounds %struct.GtCanvasClass, ptr %17, i32 0, i32 8, !dbg !384
  store ptr %16, ptr %visit_element, align 8, !dbg !385, !tbaa !386
  %18 = load ptr, ptr %ct_visit.addr, align 8, !dbg !387, !tbaa !325
  %19 = load ptr, ptr %c_class, align 8, !dbg !388, !tbaa !325
  %visit_ct = getelementptr inbounds %struct.GtCanvasClass, ptr %19, i32 0, i32 9, !dbg !389
  store ptr %18, ptr %visit_ct, align 8, !dbg !390, !tbaa !391
  %20 = load ptr, ptr %draw_ruler_func.addr, align 8, !dbg !392, !tbaa !325
  %21 = load ptr, ptr %c_class, align 8, !dbg !393, !tbaa !325
  %draw_ruler_func2 = getelementptr inbounds %struct.GtCanvasClass, ptr %21, i32 0, i32 10, !dbg !394
  store ptr %20, ptr %draw_ruler_func2, align 8, !dbg !395, !tbaa !396
  %22 = load ptr, ptr %free.addr, align 8, !dbg !397, !tbaa !325
  %23 = load ptr, ptr %c_class, align 8, !dbg !398, !tbaa !325
  %free3 = getelementptr inbounds %struct.GtCanvasClass, ptr %23, i32 0, i32 11, !dbg !399
  store ptr %22, ptr %free3, align 8, !dbg !400, !tbaa !401
  %24 = load ptr, ptr %c_class, align 8, !dbg !402, !tbaa !325
  call void @llvm.lifetime.end.p0(i64 8, ptr %c_class) #6, !dbg !403
  ret ptr %24, !dbg !404
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !405 ptr @gt_class_alloc(i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @gt_format_ruler_label(ptr noundef %txt, i64 noundef %pos, ptr noundef %unitstr, i64 noundef %buflen) #0 !dbg !409 {
entry:
  %txt.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %unitstr.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %fpos = alloca double, align 8
  %logval = alloca i32, align 4
  %formatstring = alloca ptr, align 8
  %upos = alloca i64, align 8
  %negative = alloca i8, align 1
  store ptr %txt, ptr %txt.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %txt.addr, metadata !417, metadata !DIExpression()), !dbg !430
  store i64 %pos, ptr %pos.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !418, metadata !DIExpression()), !dbg !431
  store ptr %unitstr, ptr %unitstr.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %unitstr.addr, metadata !419, metadata !DIExpression()), !dbg !432
  store i64 %buflen, ptr %buflen.addr, align 8, !tbaa !320
  tail call void @llvm.dbg.declare(metadata ptr %buflen.addr, metadata !420, metadata !DIExpression()), !dbg !433
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpos) #6, !dbg !434
  tail call void @llvm.dbg.declare(metadata ptr %fpos, metadata !421, metadata !DIExpression()), !dbg !435
  call void @llvm.lifetime.start.p0(i64 4, ptr %logval) #6, !dbg !436
  tail call void @llvm.dbg.declare(metadata ptr %logval, metadata !422, metadata !DIExpression()), !dbg !437
  call void @llvm.lifetime.start.p0(i64 8, ptr %formatstring) #6, !dbg !438
  tail call void @llvm.dbg.declare(metadata ptr %formatstring, metadata !423, metadata !DIExpression()), !dbg !439
  call void @llvm.lifetime.start.p0(i64 8, ptr %upos) #6, !dbg !440
  tail call void @llvm.dbg.declare(metadata ptr %upos, metadata !428, metadata !DIExpression()), !dbg !441
  br label %do.body, !dbg !442

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %txt.addr, align 8, !dbg !443, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !443
  br i1 %tobool, label %if.end, label %if.then, !dbg !446

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !447, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_format_ruler_label, ptr noundef @.str.2, i32 noundef 89), !dbg !447
  call void @abort() #7, !dbg !447
  unreachable, !dbg !447

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !446

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !446

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %negative) #6, !dbg !449
  tail call void @llvm.dbg.declare(metadata ptr %negative, metadata !429, metadata !DIExpression()), !dbg !450
  store i8 0, ptr %negative, align 1, !dbg !450, !tbaa !451
  %2 = load i64, ptr %pos.addr, align 8, !dbg !453, !tbaa !320
  %cmp = icmp slt i64 %2, 0, !dbg !455
  br i1 %cmp, label %if.then1, label %if.else, !dbg !456

if.then1:                                         ; preds = %do.end
  %3 = load i64, ptr %pos.addr, align 8, !dbg !457, !tbaa !320
  %sub = sub nsw i64 0, %3, !dbg !459
  store i64 %sub, ptr %upos, align 8, !dbg !460, !tbaa !320
  store i8 1, ptr %negative, align 1, !dbg !461, !tbaa !451
  %call2 = call ptr @gt_str_new_cstr(ptr noundef @.str.3), !dbg !462
  store ptr %call2, ptr %formatstring, align 8, !dbg !463, !tbaa !325
  br label %if.end4, !dbg !464

if.else:                                          ; preds = %do.end
  %4 = load i64, ptr %pos.addr, align 8, !dbg !465, !tbaa !320
  store i64 %4, ptr %upos, align 8, !dbg !467, !tbaa !320
  %call3 = call ptr @gt_str_new_cstr(ptr noundef @.str.4), !dbg !468
  store ptr %call3, ptr %formatstring, align 8, !dbg !469, !tbaa !325
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %5 = load i64, ptr %upos, align 8, !dbg !470, !tbaa !320
  %conv = uitofp i64 %5 to double, !dbg !470
  %call5 = call double @log10(double noundef %conv) #6, !dbg !471
  %6 = call double @llvm.floor.f64(double %call5), !dbg !472
  %conv6 = fptosi double %6 to i32, !dbg !473
  store i32 %conv6, ptr %logval, align 4, !dbg !474, !tbaa !475
  %7 = load i64, ptr %upos, align 8, !dbg !477, !tbaa !320
  %cmp7 = icmp uge i64 %7, 1000000000, !dbg !479
  br i1 %cmp7, label %if.then9, label %if.else17, !dbg !480

if.then9:                                         ; preds = %if.end4
  %8 = load i64, ptr %upos, align 8, !dbg !481, !tbaa !320
  %conv10 = uitofp i64 %8 to double, !dbg !483
  %div = fdiv double %conv10, 1.000000e+09, !dbg !484
  store double %div, ptr %fpos, align 8, !dbg !485, !tbaa !486
  br label %while.cond, !dbg !488

while.cond:                                       ; preds = %while.body, %if.then9
  %9 = load i64, ptr %upos, align 8, !dbg !489, !tbaa !320
  %rem = urem i64 %9, 10, !dbg !490
  %cmp11 = icmp eq i64 %rem, 0, !dbg !491
  br i1 %cmp11, label %while.body, label %while.end, !dbg !488

while.body:                                       ; preds = %while.cond
  %10 = load i64, ptr %upos, align 8, !dbg !492, !tbaa !320
  %div13 = udiv i64 %10, 10, !dbg !492
  store i64 %div13, ptr %upos, align 8, !dbg !492, !tbaa !320
  %11 = load i32, ptr %logval, align 4, !dbg !494, !tbaa !475
  %dec = add nsw i32 %11, -1, !dbg !494
  store i32 %dec, ptr %logval, align 4, !dbg !494, !tbaa !475
  br label %while.cond, !dbg !488, !llvm.loop !495

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %formatstring, align 8, !dbg !498, !tbaa !325
  %13 = load i32, ptr %logval, align 4, !dbg !499, !tbaa !475
  %conv14 = sext i32 %13 to i64, !dbg !500
  call void @gt_str_append_uword(ptr noundef %12, i64 noundef %conv14), !dbg !501
  %14 = load ptr, ptr %formatstring, align 8, !dbg !502, !tbaa !325
  call void @gt_str_append_cstr(ptr noundef %14, ptr noundef @.str.5), !dbg !503
  %15 = load ptr, ptr %txt.addr, align 8, !dbg !504, !tbaa !325
  %16 = load i64, ptr %buflen.addr, align 8, !dbg !505, !tbaa !320
  %17 = load ptr, ptr %formatstring, align 8, !dbg !506, !tbaa !325
  %call15 = call ptr @gt_str_get(ptr noundef %17), !dbg !507
  %18 = load double, ptr %fpos, align 8, !dbg !508, !tbaa !486
  %19 = load ptr, ptr %unitstr.addr, align 8, !dbg !509, !tbaa !325
  %call16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef %16, ptr noundef %call15, double noundef %18, ptr noundef %19) #6, !dbg !510
  br label %if.end57, !dbg !511

if.else17:                                        ; preds = %if.end4
  %20 = load i64, ptr %upos, align 8, !dbg !512, !tbaa !320
  %cmp18 = icmp uge i64 %20, 1000000, !dbg !514
  br i1 %cmp18, label %if.then20, label %if.else34, !dbg !515

if.then20:                                        ; preds = %if.else17
  %21 = load i64, ptr %upos, align 8, !dbg !516, !tbaa !320
  %conv21 = uitofp i64 %21 to double, !dbg !518
  %div22 = fdiv double %conv21, 1.000000e+06, !dbg !519
  store double %div22, ptr %fpos, align 8, !dbg !520, !tbaa !486
  br label %while.cond23, !dbg !521

while.cond23:                                     ; preds = %while.body27, %if.then20
  %22 = load i64, ptr %upos, align 8, !dbg !522, !tbaa !320
  %rem24 = urem i64 %22, 10, !dbg !523
  %cmp25 = icmp eq i64 %rem24, 0, !dbg !524
  br i1 %cmp25, label %while.body27, label %while.end30, !dbg !521

while.body27:                                     ; preds = %while.cond23
  %23 = load i64, ptr %upos, align 8, !dbg !525, !tbaa !320
  %div28 = udiv i64 %23, 10, !dbg !525
  store i64 %div28, ptr %upos, align 8, !dbg !525, !tbaa !320
  %24 = load i32, ptr %logval, align 4, !dbg !527, !tbaa !475
  %dec29 = add nsw i32 %24, -1, !dbg !527
  store i32 %dec29, ptr %logval, align 4, !dbg !527, !tbaa !475
  br label %while.cond23, !dbg !521, !llvm.loop !528

while.end30:                                      ; preds = %while.cond23
  %25 = load ptr, ptr %formatstring, align 8, !dbg !530, !tbaa !325
  %26 = load i32, ptr %logval, align 4, !dbg !531, !tbaa !475
  %conv31 = sext i32 %26 to i64, !dbg !532
  call void @gt_str_append_uword(ptr noundef %25, i64 noundef %conv31), !dbg !533
  %27 = load ptr, ptr %formatstring, align 8, !dbg !534, !tbaa !325
  call void @gt_str_append_cstr(ptr noundef %27, ptr noundef @.str.6), !dbg !535
  %28 = load ptr, ptr %txt.addr, align 8, !dbg !536, !tbaa !325
  %29 = load i64, ptr %buflen.addr, align 8, !dbg !537, !tbaa !320
  %30 = load ptr, ptr %formatstring, align 8, !dbg !538, !tbaa !325
  %call32 = call ptr @gt_str_get(ptr noundef %30), !dbg !539
  %31 = load double, ptr %fpos, align 8, !dbg !540, !tbaa !486
  %32 = load ptr, ptr %unitstr.addr, align 8, !dbg !541, !tbaa !325
  %call33 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %28, i64 noundef %29, ptr noundef %call32, double noundef %31, ptr noundef %32) #6, !dbg !542
  br label %if.end56, !dbg !543

if.else34:                                        ; preds = %if.else17
  %33 = load i64, ptr %upos, align 8, !dbg !544, !tbaa !320
  %cmp35 = icmp uge i64 %33, 1000, !dbg !546
  br i1 %cmp35, label %if.then37, label %if.else51, !dbg !547

if.then37:                                        ; preds = %if.else34
  %34 = load i64, ptr %upos, align 8, !dbg !548, !tbaa !320
  %conv38 = uitofp i64 %34 to double, !dbg !550
  %div39 = fdiv double %conv38, 1.000000e+03, !dbg !551
  store double %div39, ptr %fpos, align 8, !dbg !552, !tbaa !486
  br label %while.cond40, !dbg !553

while.cond40:                                     ; preds = %while.body44, %if.then37
  %35 = load i64, ptr %upos, align 8, !dbg !554, !tbaa !320
  %rem41 = urem i64 %35, 10, !dbg !555
  %cmp42 = icmp eq i64 %rem41, 0, !dbg !556
  br i1 %cmp42, label %while.body44, label %while.end47, !dbg !553

while.body44:                                     ; preds = %while.cond40
  %36 = load i64, ptr %upos, align 8, !dbg !557, !tbaa !320
  %div45 = udiv i64 %36, 10, !dbg !557
  store i64 %div45, ptr %upos, align 8, !dbg !557, !tbaa !320
  %37 = load i32, ptr %logval, align 4, !dbg !559, !tbaa !475
  %dec46 = add nsw i32 %37, -1, !dbg !559
  store i32 %dec46, ptr %logval, align 4, !dbg !559, !tbaa !475
  br label %while.cond40, !dbg !553, !llvm.loop !560

while.end47:                                      ; preds = %while.cond40
  %38 = load ptr, ptr %formatstring, align 8, !dbg !562, !tbaa !325
  %39 = load i32, ptr %logval, align 4, !dbg !563, !tbaa !475
  %conv48 = sext i32 %39 to i64, !dbg !564
  call void @gt_str_append_uword(ptr noundef %38, i64 noundef %conv48), !dbg !565
  %40 = load ptr, ptr %formatstring, align 8, !dbg !566, !tbaa !325
  call void @gt_str_append_cstr(ptr noundef %40, ptr noundef @.str.7), !dbg !567
  %41 = load ptr, ptr %txt.addr, align 8, !dbg !568, !tbaa !325
  %42 = load i64, ptr %buflen.addr, align 8, !dbg !569, !tbaa !320
  %43 = load ptr, ptr %formatstring, align 8, !dbg !570, !tbaa !325
  %call49 = call ptr @gt_str_get(ptr noundef %43), !dbg !571
  %44 = load double, ptr %fpos, align 8, !dbg !572, !tbaa !486
  %45 = load ptr, ptr %unitstr.addr, align 8, !dbg !573, !tbaa !325
  %call50 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %41, i64 noundef %42, ptr noundef %call49, double noundef %44, ptr noundef %45) #6, !dbg !574
  br label %if.end55, !dbg !575

if.else51:                                        ; preds = %if.else34
  %46 = load ptr, ptr %txt.addr, align 8, !dbg !576, !tbaa !325
  %47 = load i64, ptr %buflen.addr, align 8, !dbg !578, !tbaa !320
  %48 = load i8, ptr %negative, align 1, !dbg !579, !tbaa !451, !range !580, !noundef !581
  %tobool52 = trunc i8 %48 to i1, !dbg !579
  %49 = zext i1 %tobool52 to i64, !dbg !579
  %cond = select i1 %tobool52, ptr @.str.9, ptr @.str.10, !dbg !579
  %50 = load i64, ptr %upos, align 8, !dbg !582, !tbaa !320
  %51 = load ptr, ptr %unitstr.addr, align 8, !dbg !583, !tbaa !325
  %call54 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %46, i64 noundef %47, ptr noundef @.str.8, ptr noundef %cond, i64 noundef %50, ptr noundef %51) #6, !dbg !584
  br label %if.end55

if.end55:                                         ; preds = %if.else51, %while.end47
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %while.end30
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %while.end
  %52 = load ptr, ptr %formatstring, align 8, !dbg !585, !tbaa !325
  call void @gt_str_delete(ptr noundef %52), !dbg !586
  call void @llvm.lifetime.end.p0(i64 1, ptr %negative) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %upos) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %formatstring) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 4, ptr %logval) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpos) #6, !dbg !587
  ret void, !dbg !587
}

declare !dbg !588 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !644 void @abort() #3

declare !dbg !648 ptr @gt_str_new_cstr(ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !651 double @log10(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

declare !dbg !655 void @gt_str_append_uword(ptr noundef, i64 noundef) #2

declare !dbg !658 void @gt_str_append_cstr(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare !dbg !661 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

declare !dbg !665 ptr @gt_str_get(ptr noundef) #2

declare !dbg !670 void @gt_str_delete(ptr noundef) #2

; Function Attrs: nounwind uwtable
define i32 @gt_canvas_draw_ruler(ptr noundef %canvas, i64 %rng.coerce0, i64 %rng.coerce1, ptr noundef %err) #0 !dbg !673 {
entry:
  %rng = alloca %struct.GtRange, align 8
  %canvas.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %rng, i32 0, i32 0
  store i64 %rng.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %rng, i32 0, i32 1
  store i64 %rng.coerce1, ptr %1, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !675, metadata !DIExpression()), !dbg !678
  tail call void @llvm.dbg.declare(metadata ptr %rng, metadata !676, metadata !DIExpression()), !dbg !679
  store ptr %err, ptr %err.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !677, metadata !DIExpression()), !dbg !680
  br label %do.body, !dbg !681

do.body:                                          ; preds = %entry
  %2 = load ptr, ptr %canvas.addr, align 8, !dbg !682, !tbaa !325
  %tobool = icmp ne ptr %2, null, !dbg !682
  br i1 %tobool, label %if.end, label %if.then, !dbg !685

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !686, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.11, ptr noundef @__func__.gt_canvas_draw_ruler, ptr noundef @.str.2, i32 noundef 157), !dbg !686
  call void @abort() #7, !dbg !686
  unreachable, !dbg !686

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !685

do.end:                                           ; preds = %if.end
  %4 = load ptr, ptr %canvas.addr, align 8, !dbg !688, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %4, i32 0, i32 0, !dbg !689
  %5 = load ptr, ptr %c_class, align 8, !dbg !689, !tbaa !690
  %draw_ruler_func = getelementptr inbounds %struct.GtCanvasClass, ptr %5, i32 0, i32 10, !dbg !692
  %6 = load ptr, ptr %draw_ruler_func, align 8, !dbg !692, !tbaa !396
  %7 = load ptr, ptr %canvas.addr, align 8, !dbg !693, !tbaa !325
  %8 = load ptr, ptr %err.addr, align 8, !dbg !694, !tbaa !325
  %9 = getelementptr inbounds { i64, i64 }, ptr %rng, i32 0, i32 0, !dbg !688
  %10 = load i64, ptr %9, align 8, !dbg !688
  %11 = getelementptr inbounds { i64, i64 }, ptr %rng, i32 0, i32 1, !dbg !688
  %12 = load i64, ptr %11, align 8, !dbg !688
  %call1 = call i32 %6(ptr noundef %7, i64 %10, i64 %12, ptr noundef %8), !dbg !688
  ret i32 %call1, !dbg !695
}

; Function Attrs: nounwind uwtable
define ptr @gt_canvas_create(ptr noundef %cc) #0 !dbg !696 {
entry:
  %cc.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  store ptr %cc, ptr %cc.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %cc.addr, metadata !700, metadata !DIExpression()), !dbg !702
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #6, !dbg !703
  tail call void @llvm.dbg.declare(metadata ptr %c, metadata !701, metadata !DIExpression()), !dbg !704
  br label %do.body, !dbg !705

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %cc.addr, align 8, !dbg !706, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !706
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !706

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %cc.addr, align 8, !dbg !706, !tbaa !325
  %size = getelementptr inbounds %struct.GtCanvasClass, ptr %1, i32 0, i32 0, !dbg !706
  %2 = load i64, ptr %size, align 8, !dbg !706, !tbaa !345
  %tobool1 = icmp ne i64 %2, 0, !dbg !706
  br i1 %tobool1, label %if.end, label %if.then, !dbg !709

if.then:                                          ; preds = %land.lhs.true, %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !710, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.12, ptr noundef @__func__.gt_canvas_create, ptr noundef @.str.2, i32 noundef 164), !dbg !710
  call void @abort() #7, !dbg !710
  unreachable, !dbg !710

if.end:                                           ; preds = %land.lhs.true
  br label %do.cond, !dbg !709

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !709

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %cc.addr, align 8, !dbg !712, !tbaa !325
  %size2 = getelementptr inbounds %struct.GtCanvasClass, ptr %4, i32 0, i32 0, !dbg !712
  %5 = load i64, ptr %size2, align 8, !dbg !712, !tbaa !345
  %call3 = call ptr @gt_calloc_mem(i64 noundef 1, i64 noundef %5, ptr noundef @.str.2, i32 noundef 165), !dbg !712
  store ptr %call3, ptr %c, align 8, !dbg !713, !tbaa !325
  %6 = load ptr, ptr %cc.addr, align 8, !dbg !714, !tbaa !325
  %7 = load ptr, ptr %c, align 8, !dbg !715, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %7, i32 0, i32 0, !dbg !716
  store ptr %6, ptr %c_class, align 8, !dbg !717, !tbaa !690
  %call4 = call ptr @gt_calloc_mem(i64 noundef 1, i64 noundef 104, ptr noundef @.str.2, i32 noundef 167), !dbg !718
  %8 = load ptr, ptr %c, align 8, !dbg !719, !tbaa !325
  %pvt = getelementptr inbounds %struct.GtCanvas, ptr %8, i32 0, i32 1, !dbg !720
  store ptr %call4, ptr %pvt, align 8, !dbg !721, !tbaa !722
  %9 = load ptr, ptr %c, align 8, !dbg !723, !tbaa !325
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #6, !dbg !724
  ret ptr %9, !dbg !725
}

declare !dbg !726 ptr @gt_calloc_mem(i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @gt_canvas_delete(ptr noundef %canvas) #0 !dbg !730 {
entry:
  %canvas.addr = alloca ptr, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !732, metadata !DIExpression()), !dbg !733
  %0 = load ptr, ptr %canvas.addr, align 8, !dbg !734, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !734
  br i1 %tobool, label %if.end, label %if.then, !dbg !736

if.then:                                          ; preds = %entry
  br label %return, !dbg !737

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !738

do.body:                                          ; preds = %if.end
  %1 = load ptr, ptr %canvas.addr, align 8, !dbg !739, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %1, i32 0, i32 0, !dbg !739
  %2 = load ptr, ptr %c_class, align 8, !dbg !739, !tbaa !690
  %tobool1 = icmp ne ptr %2, null, !dbg !739
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !742

if.then2:                                         ; preds = %do.body
  %3 = load ptr, ptr @stderr, align 8, !dbg !743, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.13, ptr noundef @__func__.gt_canvas_delete, ptr noundef @.str.2, i32 noundef 174), !dbg !743
  call void @abort() #7, !dbg !743
  unreachable, !dbg !743

if.end3:                                          ; preds = %do.body
  br label %do.end, !dbg !742

do.end:                                           ; preds = %if.end3
  %4 = load ptr, ptr %canvas.addr, align 8, !dbg !745, !tbaa !325
  %c_class4 = getelementptr inbounds %struct.GtCanvas, ptr %4, i32 0, i32 0, !dbg !747
  %5 = load ptr, ptr %c_class4, align 8, !dbg !747, !tbaa !690
  %free = getelementptr inbounds %struct.GtCanvasClass, ptr %5, i32 0, i32 11, !dbg !748
  %6 = load ptr, ptr %free, align 8, !dbg !748, !tbaa !401
  %tobool5 = icmp ne ptr %6, null, !dbg !745
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !749

if.then6:                                         ; preds = %do.end
  %7 = load ptr, ptr %canvas.addr, align 8, !dbg !750, !tbaa !325
  %c_class7 = getelementptr inbounds %struct.GtCanvas, ptr %7, i32 0, i32 0, !dbg !751
  %8 = load ptr, ptr %c_class7, align 8, !dbg !751, !tbaa !690
  %free8 = getelementptr inbounds %struct.GtCanvasClass, ptr %8, i32 0, i32 11, !dbg !752
  %9 = load ptr, ptr %free8, align 8, !dbg !752, !tbaa !401
  %10 = load ptr, ptr %canvas.addr, align 8, !dbg !753, !tbaa !325
  call void %9(ptr noundef %10), !dbg !750
  br label %if.end9, !dbg !750

if.end9:                                          ; preds = %if.then6, %do.end
  %11 = load ptr, ptr %canvas.addr, align 8, !dbg !754, !tbaa !325
  %pvt = getelementptr inbounds %struct.GtCanvas, ptr %11, i32 0, i32 1, !dbg !756
  %12 = load ptr, ptr %pvt, align 8, !dbg !756, !tbaa !722
  %g = getelementptr inbounds %struct.GtCanvasMembers, ptr %12, i32 0, i32 10, !dbg !757
  %13 = load ptr, ptr %g, align 8, !dbg !757, !tbaa !758
  %tobool10 = icmp ne ptr %13, null, !dbg !754
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !761

if.then11:                                        ; preds = %if.end9
  %14 = load ptr, ptr %canvas.addr, align 8, !dbg !762, !tbaa !325
  %pvt12 = getelementptr inbounds %struct.GtCanvas, ptr %14, i32 0, i32 1, !dbg !763
  %15 = load ptr, ptr %pvt12, align 8, !dbg !763, !tbaa !722
  %g13 = getelementptr inbounds %struct.GtCanvasMembers, ptr %15, i32 0, i32 10, !dbg !764
  %16 = load ptr, ptr %g13, align 8, !dbg !764, !tbaa !758
  call void @gt_graphics_delete(ptr noundef %16), !dbg !765
  br label %if.end14, !dbg !765

if.end14:                                         ; preds = %if.then11, %if.end9
  %17 = load ptr, ptr %canvas.addr, align 8, !dbg !766, !tbaa !325
  %pvt15 = getelementptr inbounds %struct.GtCanvas, ptr %17, i32 0, i32 1, !dbg !768
  %18 = load ptr, ptr %pvt15, align 8, !dbg !768, !tbaa !722
  %bt = getelementptr inbounds %struct.GtCanvasMembers, ptr %18, i32 0, i32 9, !dbg !769
  %19 = load ptr, ptr %bt, align 8, !dbg !769, !tbaa !770
  %tobool16 = icmp ne ptr %19, null, !dbg !766
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !771

if.then17:                                        ; preds = %if.end14
  %20 = load ptr, ptr %canvas.addr, align 8, !dbg !772, !tbaa !325
  %pvt18 = getelementptr inbounds %struct.GtCanvas, ptr %20, i32 0, i32 1, !dbg !773
  %21 = load ptr, ptr %pvt18, align 8, !dbg !773, !tbaa !722
  %bt19 = getelementptr inbounds %struct.GtCanvasMembers, ptr %21, i32 0, i32 9, !dbg !774
  %22 = load ptr, ptr %bt19, align 8, !dbg !774, !tbaa !770
  call void @gt_bittab_delete(ptr noundef %22), !dbg !775
  br label %if.end20, !dbg !775

if.end20:                                         ; preds = %if.then17, %if.end14
  %23 = load ptr, ptr %canvas.addr, align 8, !dbg !776, !tbaa !325
  %pvt21 = getelementptr inbounds %struct.GtCanvas, ptr %23, i32 0, i32 1, !dbg !776
  %24 = load ptr, ptr %pvt21, align 8, !dbg !776, !tbaa !722
  call void @gt_free_mem(ptr noundef %24, ptr noundef @.str.2, i32 noundef 181), !dbg !776
  %25 = load ptr, ptr %canvas.addr, align 8, !dbg !777, !tbaa !325
  call void @gt_free_mem(ptr noundef %25, ptr noundef @.str.2, i32 noundef 182), !dbg !777
  br label %return, !dbg !778

return:                                           ; preds = %if.end20, %if.then
  ret void, !dbg !778
}

declare !dbg !779 void @gt_graphics_delete(ptr noundef) #2

declare !dbg !782 void @gt_bittab_delete(ptr noundef) #2

declare !dbg !785 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define ptr @gt_canvas_cast(ptr noundef %cc, ptr noundef %c) #0 !dbg !788 {
entry:
  %cc.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  store ptr %cc, ptr %cc.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %cc.addr, metadata !792, metadata !DIExpression()), !dbg !794
  store ptr %c, ptr %c.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !793, metadata !DIExpression()), !dbg !795
  br label %do.body, !dbg !796

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %cc.addr, align 8, !dbg !797, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !797
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !797

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %c.addr, align 8, !dbg !797, !tbaa !325
  %tobool1 = icmp ne ptr %1, null, !dbg !797
  br i1 %tobool1, label %land.lhs.true2, label %if.then, !dbg !797

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %c.addr, align 8, !dbg !797, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %2, i32 0, i32 0, !dbg !797
  %3 = load ptr, ptr %c_class, align 8, !dbg !797, !tbaa !690
  %4 = load ptr, ptr %cc.addr, align 8, !dbg !797, !tbaa !325
  %cmp = icmp eq ptr %3, %4, !dbg !797
  br i1 %cmp, label %if.end, label %if.then, !dbg !800

if.then:                                          ; preds = %land.lhs.true2, %land.lhs.true, %do.body
  %5 = load ptr, ptr @stderr, align 8, !dbg !801, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.14, ptr noundef @__func__.gt_canvas_cast, ptr noundef @.str.2, i32 noundef 187), !dbg !801
  call void @abort() #7, !dbg !801
  unreachable, !dbg !801

if.end:                                           ; preds = %land.lhs.true2
  br label %do.end, !dbg !800

do.end:                                           ; preds = %if.end
  %6 = load ptr, ptr %c.addr, align 8, !dbg !803, !tbaa !325
  ret ptr %6, !dbg !804
}

; Function Attrs: nounwind uwtable
define ptr @gt_canvas_try_cast(ptr noundef %cc, ptr noundef %c) #0 !dbg !805 {
entry:
  %retval = alloca ptr, align 8
  %cc.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  store ptr %cc, ptr %cc.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %cc.addr, metadata !807, metadata !DIExpression()), !dbg !809
  store ptr %c, ptr %c.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !808, metadata !DIExpression()), !dbg !810
  br label %do.body, !dbg !811

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %cc.addr, align 8, !dbg !812, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !812
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !812

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %c.addr, align 8, !dbg !812, !tbaa !325
  %tobool1 = icmp ne ptr %1, null, !dbg !812
  br i1 %tobool1, label %if.end, label %if.then, !dbg !815

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !816, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.15, ptr noundef @__func__.gt_canvas_try_cast, ptr noundef @.str.2, i32 noundef 193), !dbg !816
  call void @abort() #7, !dbg !816
  unreachable, !dbg !816

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !815

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %c.addr, align 8, !dbg !818, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %3, i32 0, i32 0, !dbg !820
  %4 = load ptr, ptr %c_class, align 8, !dbg !820, !tbaa !690
  %5 = load ptr, ptr %cc.addr, align 8, !dbg !821, !tbaa !325
  %cmp = icmp eq ptr %4, %5, !dbg !822
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !823

if.then2:                                         ; preds = %do.end
  %6 = load ptr, ptr %c.addr, align 8, !dbg !824, !tbaa !325
  store ptr %6, ptr %retval, align 8, !dbg !825
  br label %return, !dbg !825

if.end3:                                          ; preds = %do.end
  store ptr null, ptr %retval, align 8, !dbg !826
  br label %return, !dbg !826

return:                                           ; preds = %if.end3, %if.then2
  %7 = load ptr, ptr %retval, align 8, !dbg !827
  ret ptr %7, !dbg !827
}

; Function Attrs: nounwind uwtable
define i64 @gt_canvas_get_height(ptr noundef %canvas) #0 !dbg !828 {
entry:
  %canvas.addr = alloca ptr, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !832, metadata !DIExpression()), !dbg !833
  br label %do.body, !dbg !834

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %canvas.addr, align 8, !dbg !835, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !835
  br i1 %tobool, label %if.end, label %if.then, !dbg !838

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !839, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.11, ptr noundef @__func__.gt_canvas_get_height, ptr noundef @.str.2, i32 noundef 201), !dbg !839
  call void @abort() #7, !dbg !839
  unreachable, !dbg !839

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !838

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %canvas.addr, align 8, !dbg !841, !tbaa !325
  %pvt = getelementptr inbounds %struct.GtCanvas, ptr %2, i32 0, i32 1, !dbg !842
  %3 = load ptr, ptr %pvt, align 8, !dbg !842, !tbaa !722
  %height = getelementptr inbounds %struct.GtCanvasMembers, ptr %3, i32 0, i32 5, !dbg !843
  %4 = load i64, ptr %height, align 8, !dbg !843, !tbaa !844
  ret i64 %4, !dbg !845
}

; Function Attrs: nounwind uwtable
define i32 @gt_canvas_visit_layout_pre(ptr noundef %canvas, ptr noundef %layout, ptr noundef %err) #0 !dbg !846 {
entry:
  %retval = alloca i32, align 4
  %canvas.addr = alloca ptr, align 8
  %layout.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !848, metadata !DIExpression()), !dbg !851
  store ptr %layout, ptr %layout.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %layout.addr, metadata !849, metadata !DIExpression()), !dbg !852
  store ptr %err, ptr %err.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !850, metadata !DIExpression()), !dbg !853
  br label %do.body, !dbg !854

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %canvas.addr, align 8, !dbg !855, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !855
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !855

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %layout.addr, align 8, !dbg !855, !tbaa !325
  %tobool1 = icmp ne ptr %1, null, !dbg !855
  br i1 %tobool1, label %if.end, label %if.then, !dbg !858

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !859, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @__func__.gt_canvas_visit_layout_pre, ptr noundef @.str.2, i32 noundef 207), !dbg !859
  call void @abort() #7, !dbg !859
  unreachable, !dbg !859

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !858

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %canvas.addr, align 8, !dbg !861, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %3, i32 0, i32 0, !dbg !863
  %4 = load ptr, ptr %c_class, align 8, !dbg !863, !tbaa !690
  %visit_layout_pre = getelementptr inbounds %struct.GtCanvasClass, ptr %4, i32 0, i32 1, !dbg !864
  %5 = load ptr, ptr %visit_layout_pre, align 8, !dbg !864, !tbaa !351
  %tobool2 = icmp ne ptr %5, null, !dbg !861
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !865

if.then3:                                         ; preds = %do.end
  %6 = load ptr, ptr %canvas.addr, align 8, !dbg !866, !tbaa !325
  %c_class4 = getelementptr inbounds %struct.GtCanvas, ptr %6, i32 0, i32 0, !dbg !867
  %7 = load ptr, ptr %c_class4, align 8, !dbg !867, !tbaa !690
  %visit_layout_pre5 = getelementptr inbounds %struct.GtCanvasClass, ptr %7, i32 0, i32 1, !dbg !868
  %8 = load ptr, ptr %visit_layout_pre5, align 8, !dbg !868, !tbaa !351
  %9 = load ptr, ptr %canvas.addr, align 8, !dbg !869, !tbaa !325
  %10 = load ptr, ptr %layout.addr, align 8, !dbg !870, !tbaa !325
  %11 = load ptr, ptr %err.addr, align 8, !dbg !871, !tbaa !325
  %call6 = call i32 %8(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !866
  store i32 %call6, ptr %retval, align 4, !dbg !872
  br label %return, !dbg !872

if.else:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !873
  br label %return, !dbg !873

return:                                           ; preds = %if.else, %if.then3
  %12 = load i32, ptr %retval, align 4, !dbg !874
  ret i32 %12, !dbg !874
}

; Function Attrs: nounwind uwtable
define i32 @gt_canvas_visit_layout_post(ptr noundef %canvas, ptr noundef %layout, ptr noundef %err) #0 !dbg !875 {
entry:
  %retval = alloca i32, align 4
  %canvas.addr = alloca ptr, align 8
  %layout.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !877, metadata !DIExpression()), !dbg !880
  store ptr %layout, ptr %layout.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %layout.addr, metadata !878, metadata !DIExpression()), !dbg !881
  store ptr %err, ptr %err.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !879, metadata !DIExpression()), !dbg !882
  br label %do.body, !dbg !883

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %canvas.addr, align 8, !dbg !884, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !884
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !884

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %layout.addr, align 8, !dbg !884, !tbaa !325
  %tobool1 = icmp ne ptr %1, null, !dbg !884
  br i1 %tobool1, label %if.end, label %if.then, !dbg !887

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !888, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.16, ptr noundef @__func__.gt_canvas_visit_layout_post, ptr noundef @.str.2, i32 noundef 217), !dbg !888
  call void @abort() #7, !dbg !888
  unreachable, !dbg !888

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !887

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %canvas.addr, align 8, !dbg !890, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %3, i32 0, i32 0, !dbg !892
  %4 = load ptr, ptr %c_class, align 8, !dbg !892, !tbaa !690
  %visit_layout_post = getelementptr inbounds %struct.GtCanvasClass, ptr %4, i32 0, i32 2, !dbg !893
  %5 = load ptr, ptr %visit_layout_post, align 8, !dbg !893, !tbaa !356
  %tobool2 = icmp ne ptr %5, null, !dbg !890
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !894

if.then3:                                         ; preds = %do.end
  %6 = load ptr, ptr %canvas.addr, align 8, !dbg !895, !tbaa !325
  %c_class4 = getelementptr inbounds %struct.GtCanvas, ptr %6, i32 0, i32 0, !dbg !896
  %7 = load ptr, ptr %c_class4, align 8, !dbg !896, !tbaa !690
  %visit_layout_post5 = getelementptr inbounds %struct.GtCanvasClass, ptr %7, i32 0, i32 2, !dbg !897
  %8 = load ptr, ptr %visit_layout_post5, align 8, !dbg !897, !tbaa !356
  %9 = load ptr, ptr %canvas.addr, align 8, !dbg !898, !tbaa !325
  %10 = load ptr, ptr %layout.addr, align 8, !dbg !899, !tbaa !325
  %11 = load ptr, ptr %err.addr, align 8, !dbg !900, !tbaa !325
  %call6 = call i32 %8(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !895
  store i32 %call6, ptr %retval, align 4, !dbg !901
  br label %return, !dbg !901

if.else:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !902
  br label %return, !dbg !902

return:                                           ; preds = %if.else, %if.then3
  %12 = load i32, ptr %retval, align 4, !dbg !903
  ret i32 %12, !dbg !903
}

; Function Attrs: nounwind uwtable
define i32 @gt_canvas_visit_track_pre(ptr noundef %canvas, ptr noundef %track, ptr noundef %err) #0 !dbg !904 {
entry:
  %retval = alloca i32, align 4
  %canvas.addr = alloca ptr, align 8
  %track.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !906, metadata !DIExpression()), !dbg !909
  store ptr %track, ptr %track.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %track.addr, metadata !907, metadata !DIExpression()), !dbg !910
  store ptr %err, ptr %err.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !908, metadata !DIExpression()), !dbg !911
  br label %do.body, !dbg !912

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %canvas.addr, align 8, !dbg !913, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !913
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !913

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %track.addr, align 8, !dbg !913, !tbaa !325
  %tobool1 = icmp ne ptr %1, null, !dbg !913
  br i1 %tobool1, label %if.end, label %if.then, !dbg !916

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !917, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.17, ptr noundef @__func__.gt_canvas_visit_track_pre, ptr noundef @.str.2, i32 noundef 226), !dbg !917
  call void @abort() #7, !dbg !917
  unreachable, !dbg !917

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !916

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %track.addr, align 8, !dbg !919, !tbaa !325
  %4 = load ptr, ptr %canvas.addr, align 8, !dbg !920, !tbaa !325
  %pvt = getelementptr inbounds %struct.GtCanvas, ptr %4, i32 0, i32 1, !dbg !921
  %5 = load ptr, ptr %pvt, align 8, !dbg !921, !tbaa !722
  %current_track = getelementptr inbounds %struct.GtCanvasMembers, ptr %5, i32 0, i32 7, !dbg !922
  store ptr %3, ptr %current_track, align 8, !dbg !923, !tbaa !924
  %6 = load ptr, ptr %canvas.addr, align 8, !dbg !925, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %6, i32 0, i32 0, !dbg !927
  %7 = load ptr, ptr %c_class, align 8, !dbg !927, !tbaa !690
  %visit_track_pre = getelementptr inbounds %struct.GtCanvasClass, ptr %7, i32 0, i32 3, !dbg !928
  %8 = load ptr, ptr %visit_track_pre, align 8, !dbg !928, !tbaa !361
  %tobool2 = icmp ne ptr %8, null, !dbg !925
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !929

if.then3:                                         ; preds = %do.end
  %9 = load ptr, ptr %canvas.addr, align 8, !dbg !930, !tbaa !325
  %c_class4 = getelementptr inbounds %struct.GtCanvas, ptr %9, i32 0, i32 0, !dbg !931
  %10 = load ptr, ptr %c_class4, align 8, !dbg !931, !tbaa !690
  %visit_track_pre5 = getelementptr inbounds %struct.GtCanvasClass, ptr %10, i32 0, i32 3, !dbg !932
  %11 = load ptr, ptr %visit_track_pre5, align 8, !dbg !932, !tbaa !361
  %12 = load ptr, ptr %canvas.addr, align 8, !dbg !933, !tbaa !325
  %13 = load ptr, ptr %track.addr, align 8, !dbg !934, !tbaa !325
  %14 = load ptr, ptr %err.addr, align 8, !dbg !935, !tbaa !325
  %call6 = call i32 %11(ptr noundef %12, ptr noundef %13, ptr noundef %14), !dbg !930
  store i32 %call6, ptr %retval, align 4, !dbg !936
  br label %return, !dbg !936

if.else:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !937
  br label %return, !dbg !937

return:                                           ; preds = %if.else, %if.then3
  %15 = load i32, ptr %retval, align 4, !dbg !938
  ret i32 %15, !dbg !938
}

; Function Attrs: nounwind uwtable
define i32 @gt_canvas_visit_track_post(ptr noundef %canvas, ptr noundef %track, ptr noundef %err) #0 !dbg !939 {
entry:
  %retval = alloca i32, align 4
  %canvas.addr = alloca ptr, align 8
  %track.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !941, metadata !DIExpression()), !dbg !944
  store ptr %track, ptr %track.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %track.addr, metadata !942, metadata !DIExpression()), !dbg !945
  store ptr %err, ptr %err.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !943, metadata !DIExpression()), !dbg !946
  br label %do.body, !dbg !947

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %canvas.addr, align 8, !dbg !948, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !948
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !948

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %track.addr, align 8, !dbg !948, !tbaa !325
  %tobool1 = icmp ne ptr %1, null, !dbg !948
  br i1 %tobool1, label %if.end, label %if.then, !dbg !951

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !952, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.17, ptr noundef @__func__.gt_canvas_visit_track_post, ptr noundef @.str.2, i32 noundef 236), !dbg !952
  call void @abort() #7, !dbg !952
  unreachable, !dbg !952

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !951

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %canvas.addr, align 8, !dbg !954, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %3, i32 0, i32 0, !dbg !956
  %4 = load ptr, ptr %c_class, align 8, !dbg !956, !tbaa !690
  %visit_track_post = getelementptr inbounds %struct.GtCanvasClass, ptr %4, i32 0, i32 4, !dbg !957
  %5 = load ptr, ptr %visit_track_post, align 8, !dbg !957, !tbaa !366
  %tobool2 = icmp ne ptr %5, null, !dbg !954
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !958

if.then3:                                         ; preds = %do.end
  %6 = load ptr, ptr %canvas.addr, align 8, !dbg !959, !tbaa !325
  %c_class4 = getelementptr inbounds %struct.GtCanvas, ptr %6, i32 0, i32 0, !dbg !960
  %7 = load ptr, ptr %c_class4, align 8, !dbg !960, !tbaa !690
  %visit_track_post5 = getelementptr inbounds %struct.GtCanvasClass, ptr %7, i32 0, i32 4, !dbg !961
  %8 = load ptr, ptr %visit_track_post5, align 8, !dbg !961, !tbaa !366
  %9 = load ptr, ptr %canvas.addr, align 8, !dbg !962, !tbaa !325
  %10 = load ptr, ptr %track.addr, align 8, !dbg !963, !tbaa !325
  %11 = load ptr, ptr %err.addr, align 8, !dbg !964, !tbaa !325
  %call6 = call i32 %8(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !959
  store i32 %call6, ptr %retval, align 4, !dbg !965
  br label %return, !dbg !965

if.else:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !966
  br label %return, !dbg !966

return:                                           ; preds = %if.else, %if.then3
  %12 = load i32, ptr %retval, align 4, !dbg !967
  ret i32 %12, !dbg !967
}

; Function Attrs: nounwind uwtable
define i32 @gt_canvas_visit_line_pre(ptr noundef %canvas, ptr noundef %line, ptr noundef %err) #0 !dbg !968 {
entry:
  %retval = alloca i32, align 4
  %canvas.addr = alloca ptr, align 8
  %line.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !970, metadata !DIExpression()), !dbg !973
  store ptr %line, ptr %line.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !971, metadata !DIExpression()), !dbg !974
  store ptr %err, ptr %err.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !972, metadata !DIExpression()), !dbg !975
  br label %do.body, !dbg !976

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %canvas.addr, align 8, !dbg !977, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !977
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !977

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %line.addr, align 8, !dbg !977, !tbaa !325
  %tobool1 = icmp ne ptr %1, null, !dbg !977
  br i1 %tobool1, label %if.end, label %if.then, !dbg !980

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !981, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.18, ptr noundef @__func__.gt_canvas_visit_line_pre, ptr noundef @.str.2, i32 noundef 245), !dbg !981
  call void @abort() #7, !dbg !981
  unreachable, !dbg !981

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !980

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %canvas.addr, align 8, !dbg !983, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %3, i32 0, i32 0, !dbg !985
  %4 = load ptr, ptr %c_class, align 8, !dbg !985, !tbaa !690
  %visit_line_pre = getelementptr inbounds %struct.GtCanvasClass, ptr %4, i32 0, i32 5, !dbg !986
  %5 = load ptr, ptr %visit_line_pre, align 8, !dbg !986, !tbaa !371
  %tobool2 = icmp ne ptr %5, null, !dbg !983
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !987

if.then3:                                         ; preds = %do.end
  %6 = load ptr, ptr %canvas.addr, align 8, !dbg !988, !tbaa !325
  %c_class4 = getelementptr inbounds %struct.GtCanvas, ptr %6, i32 0, i32 0, !dbg !989
  %7 = load ptr, ptr %c_class4, align 8, !dbg !989, !tbaa !690
  %visit_line_pre5 = getelementptr inbounds %struct.GtCanvasClass, ptr %7, i32 0, i32 5, !dbg !990
  %8 = load ptr, ptr %visit_line_pre5, align 8, !dbg !990, !tbaa !371
  %9 = load ptr, ptr %canvas.addr, align 8, !dbg !991, !tbaa !325
  %10 = load ptr, ptr %line.addr, align 8, !dbg !992, !tbaa !325
  %11 = load ptr, ptr %err.addr, align 8, !dbg !993, !tbaa !325
  %call6 = call i32 %8(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !988
  store i32 %call6, ptr %retval, align 4, !dbg !994
  br label %return, !dbg !994

if.else:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !995
  br label %return, !dbg !995

return:                                           ; preds = %if.else, %if.then3
  %12 = load i32, ptr %retval, align 4, !dbg !996
  ret i32 %12, !dbg !996
}

; Function Attrs: nounwind uwtable
define i32 @gt_canvas_visit_line_post(ptr noundef %canvas, ptr noundef %line, ptr noundef %err) #0 !dbg !997 {
entry:
  %retval = alloca i32, align 4
  %canvas.addr = alloca ptr, align 8
  %line.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !999, metadata !DIExpression()), !dbg !1002
  store ptr %line, ptr %line.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !1000, metadata !DIExpression()), !dbg !1003
  store ptr %err, ptr %err.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1001, metadata !DIExpression()), !dbg !1004
  br label %do.body, !dbg !1005

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %canvas.addr, align 8, !dbg !1006, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !1006
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !1006

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %line.addr, align 8, !dbg !1006, !tbaa !325
  %tobool1 = icmp ne ptr %1, null, !dbg !1006
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1009

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !1010, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.18, ptr noundef @__func__.gt_canvas_visit_line_post, ptr noundef @.str.2, i32 noundef 254), !dbg !1010
  call void @abort() #7, !dbg !1010
  unreachable, !dbg !1010

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !1009

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %canvas.addr, align 8, !dbg !1012, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %3, i32 0, i32 0, !dbg !1014
  %4 = load ptr, ptr %c_class, align 8, !dbg !1014, !tbaa !690
  %visit_line_post = getelementptr inbounds %struct.GtCanvasClass, ptr %4, i32 0, i32 6, !dbg !1015
  %5 = load ptr, ptr %visit_line_post, align 8, !dbg !1015, !tbaa !376
  %tobool2 = icmp ne ptr %5, null, !dbg !1012
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !1016

if.then3:                                         ; preds = %do.end
  %6 = load ptr, ptr %canvas.addr, align 8, !dbg !1017, !tbaa !325
  %c_class4 = getelementptr inbounds %struct.GtCanvas, ptr %6, i32 0, i32 0, !dbg !1018
  %7 = load ptr, ptr %c_class4, align 8, !dbg !1018, !tbaa !690
  %visit_line_post5 = getelementptr inbounds %struct.GtCanvasClass, ptr %7, i32 0, i32 6, !dbg !1019
  %8 = load ptr, ptr %visit_line_post5, align 8, !dbg !1019, !tbaa !376
  %9 = load ptr, ptr %canvas.addr, align 8, !dbg !1020, !tbaa !325
  %10 = load ptr, ptr %line.addr, align 8, !dbg !1021, !tbaa !325
  %11 = load ptr, ptr %err.addr, align 8, !dbg !1022, !tbaa !325
  %call6 = call i32 %8(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !1017
  store i32 %call6, ptr %retval, align 4, !dbg !1023
  br label %return, !dbg !1023

if.else:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !1024
  br label %return, !dbg !1024

return:                                           ; preds = %if.else, %if.then3
  %12 = load i32, ptr %retval, align 4, !dbg !1025
  ret i32 %12, !dbg !1025
}

; Function Attrs: nounwind uwtable
define i32 @gt_canvas_visit_block(ptr noundef %canvas, ptr noundef %block, ptr noundef %err) #0 !dbg !1026 {
entry:
  %retval = alloca i32, align 4
  %canvas.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !1028, metadata !DIExpression()), !dbg !1031
  store ptr %block, ptr %block.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !1029, metadata !DIExpression()), !dbg !1032
  store ptr %err, ptr %err.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1030, metadata !DIExpression()), !dbg !1033
  br label %do.body, !dbg !1034

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %canvas.addr, align 8, !dbg !1035, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !1035
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !1035

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %block.addr, align 8, !dbg !1035, !tbaa !325
  %tobool1 = icmp ne ptr %1, null, !dbg !1035
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1038

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !1039, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.19, ptr noundef @__func__.gt_canvas_visit_block, ptr noundef @.str.2, i32 noundef 263), !dbg !1039
  call void @abort() #7, !dbg !1039
  unreachable, !dbg !1039

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !1038

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %canvas.addr, align 8, !dbg !1041, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %3, i32 0, i32 0, !dbg !1043
  %4 = load ptr, ptr %c_class, align 8, !dbg !1043, !tbaa !690
  %visit_block = getelementptr inbounds %struct.GtCanvasClass, ptr %4, i32 0, i32 7, !dbg !1044
  %5 = load ptr, ptr %visit_block, align 8, !dbg !1044, !tbaa !381
  %tobool2 = icmp ne ptr %5, null, !dbg !1041
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !1045

if.then3:                                         ; preds = %do.end
  %6 = load ptr, ptr %canvas.addr, align 8, !dbg !1046, !tbaa !325
  %c_class4 = getelementptr inbounds %struct.GtCanvas, ptr %6, i32 0, i32 0, !dbg !1047
  %7 = load ptr, ptr %c_class4, align 8, !dbg !1047, !tbaa !690
  %visit_block5 = getelementptr inbounds %struct.GtCanvasClass, ptr %7, i32 0, i32 7, !dbg !1048
  %8 = load ptr, ptr %visit_block5, align 8, !dbg !1048, !tbaa !381
  %9 = load ptr, ptr %canvas.addr, align 8, !dbg !1049, !tbaa !325
  %10 = load ptr, ptr %block.addr, align 8, !dbg !1050, !tbaa !325
  %11 = load ptr, ptr %err.addr, align 8, !dbg !1051, !tbaa !325
  %call6 = call i32 %8(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !1046
  store i32 %call6, ptr %retval, align 4, !dbg !1052
  br label %return, !dbg !1052

if.else:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !1053
  br label %return, !dbg !1053

return:                                           ; preds = %if.else, %if.then3
  %12 = load i32, ptr %retval, align 4, !dbg !1054
  ret i32 %12, !dbg !1054
}

; Function Attrs: nounwind uwtable
define i32 @gt_canvas_visit_element(ptr noundef %canvas, ptr noundef %element, ptr noundef %err) #0 !dbg !1055 {
entry:
  %retval = alloca i32, align 4
  %canvas.addr = alloca ptr, align 8
  %element.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !1057, metadata !DIExpression()), !dbg !1060
  store ptr %element, ptr %element.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %element.addr, metadata !1058, metadata !DIExpression()), !dbg !1061
  store ptr %err, ptr %err.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1059, metadata !DIExpression()), !dbg !1062
  br label %do.body, !dbg !1063

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %canvas.addr, align 8, !dbg !1064, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !1064
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !1064

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %element.addr, align 8, !dbg !1064, !tbaa !325
  %tobool1 = icmp ne ptr %1, null, !dbg !1064
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1067

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !1068, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.20, ptr noundef @__func__.gt_canvas_visit_element, ptr noundef @.str.2, i32 noundef 272), !dbg !1068
  call void @abort() #7, !dbg !1068
  unreachable, !dbg !1068

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !1067

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %canvas.addr, align 8, !dbg !1070, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %3, i32 0, i32 0, !dbg !1072
  %4 = load ptr, ptr %c_class, align 8, !dbg !1072, !tbaa !690
  %visit_element = getelementptr inbounds %struct.GtCanvasClass, ptr %4, i32 0, i32 8, !dbg !1073
  %5 = load ptr, ptr %visit_element, align 8, !dbg !1073, !tbaa !386
  %tobool2 = icmp ne ptr %5, null, !dbg !1070
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !1074

if.then3:                                         ; preds = %do.end
  %6 = load ptr, ptr %canvas.addr, align 8, !dbg !1075, !tbaa !325
  %c_class4 = getelementptr inbounds %struct.GtCanvas, ptr %6, i32 0, i32 0, !dbg !1076
  %7 = load ptr, ptr %c_class4, align 8, !dbg !1076, !tbaa !690
  %visit_element5 = getelementptr inbounds %struct.GtCanvasClass, ptr %7, i32 0, i32 8, !dbg !1077
  %8 = load ptr, ptr %visit_element5, align 8, !dbg !1077, !tbaa !386
  %9 = load ptr, ptr %canvas.addr, align 8, !dbg !1078, !tbaa !325
  %10 = load ptr, ptr %element.addr, align 8, !dbg !1079, !tbaa !325
  %11 = load ptr, ptr %err.addr, align 8, !dbg !1080, !tbaa !325
  %call6 = call i32 %8(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !1075
  store i32 %call6, ptr %retval, align 4, !dbg !1081
  br label %return, !dbg !1081

if.else:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !1082
  br label %return, !dbg !1082

return:                                           ; preds = %if.else, %if.then3
  %12 = load i32, ptr %retval, align 4, !dbg !1083
  ret i32 %12, !dbg !1083
}

; Function Attrs: nounwind uwtable
define i32 @gt_canvas_visit_custom_track(ptr noundef %canvas, ptr noundef %ct, ptr noundef %err) #0 !dbg !1084 {
entry:
  %retval = alloca i32, align 4
  %canvas.addr = alloca ptr, align 8
  %ct.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !1086, metadata !DIExpression()), !dbg !1089
  store ptr %ct, ptr %ct.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !1087, metadata !DIExpression()), !dbg !1090
  store ptr %err, ptr %err.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1088, metadata !DIExpression()), !dbg !1091
  br label %do.body, !dbg !1092

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %canvas.addr, align 8, !dbg !1093, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !1093
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !1093

land.lhs.true:                                    ; preds = %do.body
  %1 = load ptr, ptr %ct.addr, align 8, !dbg !1093, !tbaa !325
  %tobool1 = icmp ne ptr %1, null, !dbg !1093
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1096

if.then:                                          ; preds = %land.lhs.true, %do.body
  %2 = load ptr, ptr @stderr, align 8, !dbg !1097, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.21, ptr noundef @__func__.gt_canvas_visit_custom_track, ptr noundef @.str.2, i32 noundef 282), !dbg !1097
  call void @abort() #7, !dbg !1097
  unreachable, !dbg !1097

if.end:                                           ; preds = %land.lhs.true
  br label %do.end, !dbg !1096

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %canvas.addr, align 8, !dbg !1099, !tbaa !325
  %c_class = getelementptr inbounds %struct.GtCanvas, ptr %3, i32 0, i32 0, !dbg !1101
  %4 = load ptr, ptr %c_class, align 8, !dbg !1101, !tbaa !690
  %visit_ct = getelementptr inbounds %struct.GtCanvasClass, ptr %4, i32 0, i32 9, !dbg !1102
  %5 = load ptr, ptr %visit_ct, align 8, !dbg !1102, !tbaa !391
  %tobool2 = icmp ne ptr %5, null, !dbg !1099
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !1103

if.then3:                                         ; preds = %do.end
  %6 = load ptr, ptr %canvas.addr, align 8, !dbg !1104, !tbaa !325
  %c_class4 = getelementptr inbounds %struct.GtCanvas, ptr %6, i32 0, i32 0, !dbg !1105
  %7 = load ptr, ptr %c_class4, align 8, !dbg !1105, !tbaa !690
  %visit_ct5 = getelementptr inbounds %struct.GtCanvasClass, ptr %7, i32 0, i32 9, !dbg !1106
  %8 = load ptr, ptr %visit_ct5, align 8, !dbg !1106, !tbaa !391
  %9 = load ptr, ptr %canvas.addr, align 8, !dbg !1107, !tbaa !325
  %10 = load ptr, ptr %ct.addr, align 8, !dbg !1108, !tbaa !325
  %11 = load ptr, ptr %err.addr, align 8, !dbg !1109, !tbaa !325
  %call6 = call i32 %8(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !1104
  store i32 %call6, ptr %retval, align 4, !dbg !1110
  br label %return, !dbg !1110

if.else:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !1111
  br label %return, !dbg !1111

return:                                           ; preds = %if.else, %if.then3
  %12 = load i32, ptr %retval, align 4, !dbg !1112
  ret i32 %12, !dbg !1112
}

; Function Attrs: nounwind uwtable
define ptr @gt_canvas_get_style(ptr noundef %canvas) #0 !dbg !1113 {
entry:
  %canvas.addr = alloca ptr, align 8
  store ptr %canvas, ptr %canvas.addr, align 8, !tbaa !325
  tail call void @llvm.dbg.declare(metadata ptr %canvas.addr, metadata !1117, metadata !DIExpression()), !dbg !1118
  br label %do.body, !dbg !1119

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %canvas.addr, align 8, !dbg !1120, !tbaa !325
  %tobool = icmp ne ptr %0, null, !dbg !1120
  br i1 %tobool, label %if.end, label %if.then, !dbg !1123

if.then:                                          ; preds = %do.body
  %1 = load ptr, ptr @stderr, align 8, !dbg !1124, !tbaa !325
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef @.str.11, ptr noundef @__func__.gt_canvas_get_style, ptr noundef @.str.2, i32 noundef 291), !dbg !1124
  call void @abort() #7, !dbg !1124
  unreachable, !dbg !1124

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !1123

do.end:                                           ; preds = %if.end
  %2 = load ptr, ptr %canvas.addr, align 8, !dbg !1126, !tbaa !325
  %pvt = getelementptr inbounds %struct.GtCanvas, ptr %2, i32 0, i32 1, !dbg !1127
  %3 = load ptr, ptr %pvt, align 8, !dbg !1127, !tbaa !722
  %sty = getelementptr inbounds %struct.GtCanvasMembers, ptr %3, i32 0, i32 6, !dbg !1128
  %4 = load ptr, ptr %sty, align 8, !dbg !1128, !tbaa !1129
  ret ptr %4, !dbg !1130
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!159}
!llvm.module.flags = !{!168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/annotationsketch/canvas.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "128c792e1e12d04bd7d7d7dd7c6eac0a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 176, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 22)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 30)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !9, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 3)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 5)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !32, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !32, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 9)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 2)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 7)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 168, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 21)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 15)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 136, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 17)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 16)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !71, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 187, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 28)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 187, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 120, elements: !67)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 8)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 152, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 19)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !61, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !72)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 216, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 27)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 224, elements: !84)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !76, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 226, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 208, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 26)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !106, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !66, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 200, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 25)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !116, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !76, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 263, type: !14, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 18)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 272, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 24)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 13)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 232, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 29)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 20)
!159 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !160, globals: !167, splitDebugInlining: false, nameTableKind: None)
!160 = !{!161, !164, !165, !166}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtUword", file: !162, line: 83, baseType: !163)
!162 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!163 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!165 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!167 = !{!0, !7, !12, !18, !23, !25, !30, !35, !37, !39, !44, !49, !54, !59, !64, !69, !74, !79, !81, !86, !89, !94, !99, !101, !104, !109, !112, !114, !119, !121, !123, !128, !130, !132, !134, !139, !144, !149, !154}
!168 = !{i32 7, !"Dwarf Version", i32 5}
!169 = !{i32 2, !"Debug Info Version", i32 3}
!170 = !{i32 1, !"wchar_size", i32 4}
!171 = !{i32 8, !"PIC Level", i32 2}
!172 = !{i32 7, !"uwtable", i32 2}
!173 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!174 = distinct !DISubprogram(name: "gt_canvas_class_new", scope: !2, file: !2, line: 52, type: !175, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !305)
!175 = !DISubroutineType(types: !176)
!176 = !{!177, !184, !187, !187, !253, !253, !259, !259, !269, !278, !287, !296, !301}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCanvasClass", file: !180, line: 34, baseType: !181)
!180 = !DIFile(filename: "src/annotationsketch/canvas.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0deb9c7fb96a771c207e05f982461a9a")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtCanvasClass", file: !2, line: 37, size: 768, elements: !182)
!182 = !{!183, !186, !251, !252, !257, !258, !267, !268, !277, !286, !295, !300}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !181, file: !2, line: 38, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !185, line: 70, baseType: !163)
!185 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!186 = !DIDerivedType(tag: DW_TAG_member, name: "visit_layout_pre", scope: !181, file: !2, line: 39, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCanvasVisitLayoutFunc", file: !188, line: 29, baseType: !189)
!188 = !DIFile(filename: "src/annotationsketch/canvas_rep.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1273562b3b724a5667271ade0a3a1481")
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!164, !192, !243, !247}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCanvas", file: !194, line: 26, baseType: !195)
!194 = !DIFile(filename: "src/annotationsketch/canvas_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f126b39be3fd664e2d47ff26173ec50f")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtCanvas", file: !188, line: 41, size: 128, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "c_class", scope: !195, file: !188, line: 42, baseType: !177, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pvt", scope: !195, file: !188, line: 43, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCanvasMembers", file: !188, line: 39, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtCanvasMembers", file: !202, line: 28, size: 832, elements: !203)
!202 = !DIFile(filename: "src/annotationsketch/canvas_members.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "83e23799ae8d740922e4ccc9382d212f")
!203 = !{!204, !211, !212, !213, !214, !215, !216, !221, !226, !228, !233, !238}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "viewrange", scope: !201, file: !202, line: 29, baseType: !205, size: 128)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtRange", file: !206, line: 29, baseType: !207)
!206 = !DIFile(filename: "src/core/range_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "05971597f0a8f239b91be35d4168fb4b")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtRange", file: !206, line: 31, size: 128, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !207, file: !206, line: 32, baseType: !161, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !207, file: !206, line: 33, baseType: !161, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "factor", scope: !201, file: !202, line: 30, baseType: !165, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !201, file: !202, line: 30, baseType: !165, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !201, file: !202, line: 30, baseType: !165, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !201, file: !202, line: 31, baseType: !161, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !201, file: !202, line: 31, baseType: !161, size: 64, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sty", scope: !201, file: !202, line: 32, baseType: !217, size: 64, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStyle", file: !219, line: 39, baseType: !220)
!219 = !DIFile(filename: "src/annotationsketch/style_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "8b0af1f75506a70a0a185d1ffc610b45")
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStyle", file: !219, line: 39, flags: DIFlagFwdDecl)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "current_track", scope: !201, file: !202, line: 33, baseType: !222, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtTrack", file: !224, line: 23, baseType: !225)
!224 = !DIFile(filename: "src/annotationsketch/track.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "40cbea53bff2671b41c696caee771a66")
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtTrack", file: !224, line: 23, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "show_track_captions", scope: !201, file: !202, line: 34, baseType: !227, size: 8, offset: 576)
!227 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "bt", scope: !201, file: !202, line: 35, baseType: !229, size: 64, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBittab", file: !231, line: 26, baseType: !232)
!231 = !DIFile(filename: "src/core/bittab_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f860891bf3c2458e3eaa7c6ba3953bc8")
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtBittab", file: !231, line: 26, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !201, file: !202, line: 36, baseType: !234, size: 64, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtGraphics", file: !236, line: 58, baseType: !237)
!236 = !DIFile(filename: "src/annotationsketch/graphics_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "422302beb591e321e2ca909075478c12")
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtGraphics", file: !236, line: 58, flags: DIFlagFwdDecl)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "ii", scope: !201, file: !202, line: 37, baseType: !239, size: 64, offset: 768)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtImageInfo", file: !241, line: 31, baseType: !242)
!241 = !DIFile(filename: "src/annotationsketch/image_info_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "2bddc85a737fdf5ad989a78ce50c289f")
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtImageInfo", file: !241, line: 31, flags: DIFlagFwdDecl)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtLayout", file: !245, line: 35, baseType: !246)
!245 = !DIFile(filename: "src/annotationsketch/layout_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "6f1bf948ce76bc4787b620855d2b9fe2")
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtLayout", file: !245, line: 35, flags: DIFlagFwdDecl)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !249, line: 44, baseType: !250)
!249 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !249, line: 44, flags: DIFlagFwdDecl)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "visit_layout_post", scope: !181, file: !2, line: 40, baseType: !187, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "visit_track_pre", scope: !181, file: !2, line: 41, baseType: !253, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCanvasVisitTrackFunc", file: !188, line: 30, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!164, !192, !222, !247}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "visit_track_post", scope: !181, file: !2, line: 42, baseType: !253, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "visit_line_pre", scope: !181, file: !2, line: 43, baseType: !259, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCanvasVisitLineFunc", file: !188, line: 31, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!164, !192, !263, !247}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtLine", file: !265, line: 23, baseType: !266)
!265 = !DIFile(filename: "src/annotationsketch/line.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "a4f64f8aedce35079626c281bfd0d238")
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtLine", file: !265, line: 23, flags: DIFlagFwdDecl)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "visit_line_post", scope: !181, file: !2, line: 44, baseType: !259, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "visit_block", scope: !181, file: !2, line: 45, baseType: !269, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCanvasVisitBlockFunc", file: !188, line: 32, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!164, !192, !273, !247}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtBlock", file: !275, line: 31, baseType: !276)
!275 = !DIFile(filename: "src/annotationsketch/block_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "d34a182def1510c151654d34d8d80f2e")
!276 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtBlock", file: !275, line: 31, flags: DIFlagFwdDecl)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "visit_element", scope: !181, file: !2, line: 46, baseType: !278, size: 64, offset: 512)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCanvasVisitElementFunc", file: !188, line: 33, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!164, !192, !282, !247}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtElement", file: !284, line: 23, baseType: !285)
!284 = !DIFile(filename: "src/annotationsketch/element.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "f83ec593b7b83c3824db8252981b4151")
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtElement", file: !284, line: 23, flags: DIFlagFwdDecl)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "visit_ct", scope: !181, file: !2, line: 47, baseType: !287, size: 64, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCanvasVisitCustomTrackFunc", file: !188, line: 34, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!164, !192, !291, !247}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCustomTrack", file: !293, line: 25, baseType: !294)
!293 = !DIFile(filename: "src/annotationsketch/custom_track_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "147295325f6bf2a4e660d91645982b91")
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtCustomTrack", file: !293, line: 25, flags: DIFlagFwdDecl)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "draw_ruler_func", scope: !181, file: !2, line: 48, baseType: !296, size: 64, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCanvasDrawRulerFunc", file: !188, line: 36, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!164, !192, !205, !247}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !181, file: !2, line: 49, baseType: !301, size: 64, offset: 704)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtCanvasFreeFunc", file: !188, line: 37, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !192}
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!306 = !DILocalVariable(name: "size", arg: 1, scope: !174, file: !2, line: 52, type: !184)
!307 = !DILocalVariable(name: "la_visit_pre", arg: 2, scope: !174, file: !2, line: 53, type: !187)
!308 = !DILocalVariable(name: "la_visit_post", arg: 3, scope: !174, file: !2, line: 54, type: !187)
!309 = !DILocalVariable(name: "t_visit_pre", arg: 4, scope: !174, file: !2, line: 55, type: !253)
!310 = !DILocalVariable(name: "t_visit_post", arg: 5, scope: !174, file: !2, line: 56, type: !253)
!311 = !DILocalVariable(name: "l_visit_pre", arg: 6, scope: !174, file: !2, line: 57, type: !259)
!312 = !DILocalVariable(name: "l_visit_post", arg: 7, scope: !174, file: !2, line: 58, type: !259)
!313 = !DILocalVariable(name: "b_visit", arg: 8, scope: !174, file: !2, line: 59, type: !269)
!314 = !DILocalVariable(name: "e_visit", arg: 9, scope: !174, file: !2, line: 60, type: !278)
!315 = !DILocalVariable(name: "ct_visit", arg: 10, scope: !174, file: !2, line: 61, type: !287)
!316 = !DILocalVariable(name: "draw_ruler_func", arg: 11, scope: !174, file: !2, line: 62, type: !296)
!317 = !DILocalVariable(name: "free", arg: 12, scope: !174, file: !2, line: 63, type: !301)
!318 = !DILocalVariable(name: "c_class", scope: !174, file: !2, line: 65, type: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!320 = !{!321, !321, i64 0}
!321 = !{!"long", !322, i64 0}
!322 = !{!"omnipotent char", !323, i64 0}
!323 = !{!"Simple C/C++ TBAA"}
!324 = !DILocation(line: 52, column: 49, scope: !174)
!325 = !{!326, !326, i64 0}
!326 = !{!"any pointer", !322, i64 0}
!327 = !DILocation(line: 53, column: 66, scope: !174)
!328 = !DILocation(line: 54, column: 66, scope: !174)
!329 = !DILocation(line: 55, column: 65, scope: !174)
!330 = !DILocation(line: 56, column: 65, scope: !174)
!331 = !DILocation(line: 57, column: 64, scope: !174)
!332 = !DILocation(line: 58, column: 64, scope: !174)
!333 = !DILocation(line: 59, column: 65, scope: !174)
!334 = !DILocation(line: 60, column: 67, scope: !174)
!335 = !DILocation(line: 61, column: 71, scope: !174)
!336 = !DILocation(line: 62, column: 64, scope: !174)
!337 = !DILocation(line: 63, column: 59, scope: !174)
!338 = !DILocation(line: 65, column: 3, scope: !174)
!339 = !DILocation(line: 65, column: 18, scope: !174)
!340 = !DILocation(line: 65, column: 28, scope: !174)
!341 = !DILocation(line: 66, column: 19, scope: !174)
!342 = !DILocation(line: 66, column: 3, scope: !174)
!343 = !DILocation(line: 66, column: 12, scope: !174)
!344 = !DILocation(line: 66, column: 17, scope: !174)
!345 = !{!346, !321, i64 0}
!346 = !{!"GtCanvasClass", !321, i64 0, !326, i64 8, !326, i64 16, !326, i64 24, !326, i64 32, !326, i64 40, !326, i64 48, !326, i64 56, !326, i64 64, !326, i64 72, !326, i64 80, !326, i64 88}
!347 = !DILocation(line: 67, column: 33, scope: !174)
!348 = !DILocation(line: 67, column: 3, scope: !174)
!349 = !DILocation(line: 67, column: 12, scope: !174)
!350 = !DILocation(line: 67, column: 31, scope: !174)
!351 = !{!346, !326, i64 8}
!352 = !DILocation(line: 68, column: 33, scope: !174)
!353 = !DILocation(line: 68, column: 3, scope: !174)
!354 = !DILocation(line: 68, column: 12, scope: !174)
!355 = !DILocation(line: 68, column: 31, scope: !174)
!356 = !{!346, !326, i64 16}
!357 = !DILocation(line: 69, column: 33, scope: !174)
!358 = !DILocation(line: 69, column: 3, scope: !174)
!359 = !DILocation(line: 69, column: 12, scope: !174)
!360 = !DILocation(line: 69, column: 31, scope: !174)
!361 = !{!346, !326, i64 24}
!362 = !DILocation(line: 70, column: 33, scope: !174)
!363 = !DILocation(line: 70, column: 3, scope: !174)
!364 = !DILocation(line: 70, column: 12, scope: !174)
!365 = !DILocation(line: 70, column: 31, scope: !174)
!366 = !{!346, !326, i64 32}
!367 = !DILocation(line: 71, column: 33, scope: !174)
!368 = !DILocation(line: 71, column: 3, scope: !174)
!369 = !DILocation(line: 71, column: 12, scope: !174)
!370 = !DILocation(line: 71, column: 31, scope: !174)
!371 = !{!346, !326, i64 40}
!372 = !DILocation(line: 72, column: 33, scope: !174)
!373 = !DILocation(line: 72, column: 3, scope: !174)
!374 = !DILocation(line: 72, column: 12, scope: !174)
!375 = !DILocation(line: 72, column: 31, scope: !174)
!376 = !{!346, !326, i64 48}
!377 = !DILocation(line: 73, column: 33, scope: !174)
!378 = !DILocation(line: 73, column: 3, scope: !174)
!379 = !DILocation(line: 73, column: 12, scope: !174)
!380 = !DILocation(line: 73, column: 31, scope: !174)
!381 = !{!346, !326, i64 56}
!382 = !DILocation(line: 74, column: 33, scope: !174)
!383 = !DILocation(line: 74, column: 3, scope: !174)
!384 = !DILocation(line: 74, column: 12, scope: !174)
!385 = !DILocation(line: 74, column: 31, scope: !174)
!386 = !{!346, !326, i64 64}
!387 = !DILocation(line: 75, column: 33, scope: !174)
!388 = !DILocation(line: 75, column: 3, scope: !174)
!389 = !DILocation(line: 75, column: 12, scope: !174)
!390 = !DILocation(line: 75, column: 31, scope: !174)
!391 = !{!346, !326, i64 72}
!392 = !DILocation(line: 76, column: 33, scope: !174)
!393 = !DILocation(line: 76, column: 3, scope: !174)
!394 = !DILocation(line: 76, column: 12, scope: !174)
!395 = !DILocation(line: 76, column: 31, scope: !174)
!396 = !{!346, !326, i64 80}
!397 = !DILocation(line: 77, column: 19, scope: !174)
!398 = !DILocation(line: 77, column: 3, scope: !174)
!399 = !DILocation(line: 77, column: 12, scope: !174)
!400 = !DILocation(line: 77, column: 17, scope: !174)
!401 = !{!346, !326, i64 88}
!402 = !DILocation(line: 78, column: 10, scope: !174)
!403 = !DILocation(line: 79, column: 1, scope: !174)
!404 = !DILocation(line: 78, column: 3, scope: !174)
!405 = !DISubprogram(name: "gt_class_alloc", scope: !406, file: !406, line: 26, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DIFile(filename: "src/core/class_alloc_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c166e2d22de09702d84db7e9b43a0bbe")
!407 = !DISubroutineType(types: !408)
!408 = !{!166, !184}
!409 = distinct !DISubprogram(name: "gt_format_ruler_label", scope: !2, file: !2, line: 82, type: !410, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !416)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !412, !413, !415, !184}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtWord", file: !162, line: 94, baseType: !414)
!414 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !428, !429}
!417 = !DILocalVariable(name: "txt", arg: 1, scope: !409, file: !2, line: 82, type: !412)
!418 = !DILocalVariable(name: "pos", arg: 2, scope: !409, file: !2, line: 82, type: !413)
!419 = !DILocalVariable(name: "unitstr", arg: 3, scope: !409, file: !2, line: 83, type: !415)
!420 = !DILocalVariable(name: "buflen", arg: 4, scope: !409, file: !2, line: 83, type: !184)
!421 = !DILocalVariable(name: "fpos", scope: !409, file: !2, line: 85, type: !165)
!422 = !DILocalVariable(name: "logval", scope: !409, file: !2, line: 86, type: !164)
!423 = !DILocalVariable(name: "formatstring", scope: !409, file: !2, line: 87, type: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !426, line: 27, baseType: !427)
!426 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !426, line: 27, flags: DIFlagFwdDecl)
!428 = !DILocalVariable(name: "upos", scope: !409, file: !2, line: 88, type: !161)
!429 = !DILocalVariable(name: "negative", scope: !409, file: !2, line: 90, type: !227)
!430 = !DILocation(line: 82, column: 34, scope: !409)
!431 = !DILocation(line: 82, column: 46, scope: !409)
!432 = !DILocation(line: 83, column: 40, scope: !409)
!433 = !DILocation(line: 83, column: 56, scope: !409)
!434 = !DILocation(line: 85, column: 3, scope: !409)
!435 = !DILocation(line: 85, column: 10, scope: !409)
!436 = !DILocation(line: 86, column: 3, scope: !409)
!437 = !DILocation(line: 86, column: 7, scope: !409)
!438 = !DILocation(line: 87, column: 3, scope: !409)
!439 = !DILocation(line: 87, column: 10, scope: !409)
!440 = !DILocation(line: 88, column: 3, scope: !409)
!441 = !DILocation(line: 88, column: 11, scope: !409)
!442 = !DILocation(line: 89, column: 3, scope: !409)
!443 = !DILocation(line: 89, column: 3, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !2, line: 89, column: 3)
!445 = distinct !DILexicalBlock(scope: !409, file: !2, line: 89, column: 3)
!446 = !DILocation(line: 89, column: 3, scope: !445)
!447 = !DILocation(line: 89, column: 3, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !2, line: 89, column: 3)
!449 = !DILocation(line: 90, column: 3, scope: !409)
!450 = !DILocation(line: 90, column: 8, scope: !409)
!451 = !{!452, !452, i64 0}
!452 = !{!"_Bool", !322, i64 0}
!453 = !DILocation(line: 92, column: 7, scope: !454)
!454 = distinct !DILexicalBlock(scope: !409, file: !2, line: 92, column: 7)
!455 = !DILocation(line: 92, column: 11, scope: !454)
!456 = !DILocation(line: 92, column: 7, scope: !409)
!457 = !DILocation(line: 94, column: 22, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !2, line: 93, column: 3)
!459 = !DILocation(line: 94, column: 21, scope: !458)
!460 = !DILocation(line: 94, column: 10, scope: !458)
!461 = !DILocation(line: 95, column: 14, scope: !458)
!462 = !DILocation(line: 96, column: 20, scope: !458)
!463 = !DILocation(line: 96, column: 18, scope: !458)
!464 = !DILocation(line: 97, column: 3, scope: !458)
!465 = !DILocation(line: 100, column: 21, scope: !466)
!466 = distinct !DILexicalBlock(scope: !454, file: !2, line: 99, column: 3)
!467 = !DILocation(line: 100, column: 10, scope: !466)
!468 = !DILocation(line: 101, column: 20, scope: !466)
!469 = !DILocation(line: 101, column: 18, scope: !466)
!470 = !DILocation(line: 103, column: 30, scope: !409)
!471 = !DILocation(line: 103, column: 24, scope: !409)
!472 = !DILocation(line: 103, column: 18, scope: !409)
!473 = !DILocation(line: 103, column: 12, scope: !409)
!474 = !DILocation(line: 103, column: 10, scope: !409)
!475 = !{!476, !476, i64 0}
!476 = !{!"int", !322, i64 0}
!477 = !DILocation(line: 104, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !409, file: !2, line: 104, column: 7)
!479 = !DILocation(line: 104, column: 12, scope: !478)
!480 = !DILocation(line: 104, column: 7, scope: !409)
!481 = !DILocation(line: 106, column: 21, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !2, line: 105, column: 3)
!483 = !DILocation(line: 106, column: 12, scope: !482)
!484 = !DILocation(line: 106, column: 26, scope: !482)
!485 = !DILocation(line: 106, column: 10, scope: !482)
!486 = !{!487, !487, i64 0}
!487 = !{!"double", !322, i64 0}
!488 = !DILocation(line: 107, column: 5, scope: !482)
!489 = !DILocation(line: 107, column: 12, scope: !482)
!490 = !DILocation(line: 107, column: 17, scope: !482)
!491 = !DILocation(line: 107, column: 22, scope: !482)
!492 = !DILocation(line: 109, column: 12, scope: !493)
!493 = distinct !DILexicalBlock(scope: !482, file: !2, line: 108, column: 5)
!494 = !DILocation(line: 110, column: 13, scope: !493)
!495 = distinct !{!495, !488, !496, !497}
!496 = !DILocation(line: 111, column: 5, scope: !482)
!497 = !{!"llvm.loop.mustprogress"}
!498 = !DILocation(line: 113, column: 25, scope: !482)
!499 = !DILocation(line: 113, column: 49, scope: !482)
!500 = !DILocation(line: 113, column: 39, scope: !482)
!501 = !DILocation(line: 113, column: 5, scope: !482)
!502 = !DILocation(line: 114, column: 24, scope: !482)
!503 = !DILocation(line: 114, column: 5, scope: !482)
!504 = !DILocation(line: 115, column: 21, scope: !482)
!505 = !DILocation(line: 115, column: 26, scope: !482)
!506 = !DILocation(line: 115, column: 45, scope: !482)
!507 = !DILocation(line: 115, column: 34, scope: !482)
!508 = !DILocation(line: 115, column: 60, scope: !482)
!509 = !DILocation(line: 115, column: 66, scope: !482)
!510 = !DILocation(line: 115, column: 12, scope: !482)
!511 = !DILocation(line: 117, column: 3, scope: !482)
!512 = !DILocation(line: 118, column: 12, scope: !513)
!513 = distinct !DILexicalBlock(scope: !478, file: !2, line: 118, column: 12)
!514 = !DILocation(line: 118, column: 17, scope: !513)
!515 = !DILocation(line: 118, column: 12, scope: !478)
!516 = !DILocation(line: 120, column: 21, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !2, line: 119, column: 3)
!518 = !DILocation(line: 120, column: 12, scope: !517)
!519 = !DILocation(line: 120, column: 26, scope: !517)
!520 = !DILocation(line: 120, column: 10, scope: !517)
!521 = !DILocation(line: 121, column: 5, scope: !517)
!522 = !DILocation(line: 121, column: 12, scope: !517)
!523 = !DILocation(line: 121, column: 17, scope: !517)
!524 = !DILocation(line: 121, column: 22, scope: !517)
!525 = !DILocation(line: 123, column: 12, scope: !526)
!526 = distinct !DILexicalBlock(scope: !517, file: !2, line: 122, column: 5)
!527 = !DILocation(line: 124, column: 13, scope: !526)
!528 = distinct !{!528, !521, !529, !497}
!529 = !DILocation(line: 125, column: 5, scope: !517)
!530 = !DILocation(line: 127, column: 25, scope: !517)
!531 = !DILocation(line: 127, column: 49, scope: !517)
!532 = !DILocation(line: 127, column: 39, scope: !517)
!533 = !DILocation(line: 127, column: 5, scope: !517)
!534 = !DILocation(line: 128, column: 24, scope: !517)
!535 = !DILocation(line: 128, column: 5, scope: !517)
!536 = !DILocation(line: 129, column: 21, scope: !517)
!537 = !DILocation(line: 129, column: 26, scope: !517)
!538 = !DILocation(line: 129, column: 45, scope: !517)
!539 = !DILocation(line: 129, column: 34, scope: !517)
!540 = !DILocation(line: 129, column: 60, scope: !517)
!541 = !DILocation(line: 129, column: 66, scope: !517)
!542 = !DILocation(line: 129, column: 12, scope: !517)
!543 = !DILocation(line: 131, column: 3, scope: !517)
!544 = !DILocation(line: 132, column: 12, scope: !545)
!545 = distinct !DILexicalBlock(scope: !513, file: !2, line: 132, column: 12)
!546 = !DILocation(line: 132, column: 17, scope: !545)
!547 = !DILocation(line: 132, column: 12, scope: !513)
!548 = !DILocation(line: 134, column: 21, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !2, line: 133, column: 3)
!550 = !DILocation(line: 134, column: 12, scope: !549)
!551 = !DILocation(line: 134, column: 26, scope: !549)
!552 = !DILocation(line: 134, column: 10, scope: !549)
!553 = !DILocation(line: 135, column: 5, scope: !549)
!554 = !DILocation(line: 135, column: 12, scope: !549)
!555 = !DILocation(line: 135, column: 17, scope: !549)
!556 = !DILocation(line: 135, column: 22, scope: !549)
!557 = !DILocation(line: 137, column: 12, scope: !558)
!558 = distinct !DILexicalBlock(scope: !549, file: !2, line: 136, column: 5)
!559 = !DILocation(line: 138, column: 13, scope: !558)
!560 = distinct !{!560, !553, !561, !497}
!561 = !DILocation(line: 139, column: 5, scope: !549)
!562 = !DILocation(line: 141, column: 25, scope: !549)
!563 = !DILocation(line: 141, column: 49, scope: !549)
!564 = !DILocation(line: 141, column: 39, scope: !549)
!565 = !DILocation(line: 141, column: 5, scope: !549)
!566 = !DILocation(line: 142, column: 24, scope: !549)
!567 = !DILocation(line: 142, column: 5, scope: !549)
!568 = !DILocation(line: 143, column: 21, scope: !549)
!569 = !DILocation(line: 143, column: 26, scope: !549)
!570 = !DILocation(line: 143, column: 45, scope: !549)
!571 = !DILocation(line: 143, column: 34, scope: !549)
!572 = !DILocation(line: 143, column: 60, scope: !549)
!573 = !DILocation(line: 143, column: 66, scope: !549)
!574 = !DILocation(line: 143, column: 12, scope: !549)
!575 = !DILocation(line: 145, column: 3, scope: !549)
!576 = !DILocation(line: 147, column: 21, scope: !577)
!577 = distinct !DILexicalBlock(scope: !545, file: !2, line: 145, column: 10)
!578 = !DILocation(line: 147, column: 26, scope: !577)
!579 = !DILocation(line: 147, column: 50, scope: !577)
!580 = !{i8 0, i8 2}
!581 = !{}
!582 = !DILocation(line: 147, column: 71, scope: !577)
!583 = !DILocation(line: 148, column: 9, scope: !577)
!584 = !DILocation(line: 147, column: 12, scope: !577)
!585 = !DILocation(line: 152, column: 17, scope: !409)
!586 = !DILocation(line: 152, column: 3, scope: !409)
!587 = !DILocation(line: 153, column: 1, scope: !409)
!588 = !DISubprogram(name: "fprintf", scope: !589, file: !589, line: 350, type: !590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!589 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!590 = !DISubroutineType(types: !591)
!591 = !{!164, !592, !643, null}
!592 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !595, line: 7, baseType: !596)
!595 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !597, line: 49, size: 1728, elements: !598)
!597 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !614, !616, !617, !618, !621, !623, !625, !626, !629, !631, !634, !637, !638, !639, !640, !641}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !596, file: !597, line: 51, baseType: !164, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !596, file: !597, line: 54, baseType: !412, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !596, file: !597, line: 55, baseType: !412, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !596, file: !597, line: 56, baseType: !412, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !596, file: !597, line: 57, baseType: !412, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !596, file: !597, line: 58, baseType: !412, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !596, file: !597, line: 59, baseType: !412, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !596, file: !597, line: 60, baseType: !412, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !596, file: !597, line: 61, baseType: !412, size: 64, offset: 512)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !596, file: !597, line: 64, baseType: !412, size: 64, offset: 576)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !596, file: !597, line: 65, baseType: !412, size: 64, offset: 640)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !596, file: !597, line: 66, baseType: !412, size: 64, offset: 704)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !596, file: !597, line: 68, baseType: !612, size: 64, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !597, line: 36, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !596, file: !597, line: 70, baseType: !615, size: 64, offset: 832)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !596, file: !597, line: 72, baseType: !164, size: 32, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !596, file: !597, line: 73, baseType: !164, size: 32, offset: 928)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !596, file: !597, line: 74, baseType: !619, size: 64, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !620, line: 152, baseType: !414)
!620 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !596, file: !597, line: 77, baseType: !622, size: 16, offset: 1024)
!622 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !596, file: !597, line: 78, baseType: !624, size: 8, offset: 1040)
!624 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !596, file: !597, line: 79, baseType: !51, size: 8, offset: 1048)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !596, file: !597, line: 81, baseType: !627, size: 64, offset: 1088)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !597, line: 43, baseType: null)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !596, file: !597, line: 89, baseType: !630, size: 64, offset: 1152)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !620, line: 153, baseType: !414)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !596, file: !597, line: 91, baseType: !632, size: 64, offset: 1216)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !597, line: 37, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !596, file: !597, line: 92, baseType: !635, size: 64, offset: 1280)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !597, line: 38, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !596, file: !597, line: 93, baseType: !615, size: 64, offset: 1344)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !596, file: !597, line: 94, baseType: !166, size: 64, offset: 1408)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !596, file: !597, line: 95, baseType: !184, size: 64, offset: 1472)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !596, file: !597, line: 96, baseType: !164, size: 32, offset: 1536)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !596, file: !597, line: 98, baseType: !642, size: 160, offset: 1568)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !157)
!643 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !415)
!644 = !DISubprogram(name: "abort", scope: !645, file: !645, line: 598, type: !646, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!645 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!646 = !DISubroutineType(types: !647)
!647 = !{null}
!648 = !DISubprogram(name: "gt_str_new_cstr", scope: !426, file: !426, line: 32, type: !649, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!649 = !DISubroutineType(types: !650)
!650 = !{!424, !415}
!651 = !DISubprogram(name: "log10", scope: !652, file: !652, line: 107, type: !653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!652 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "8c6e2d0d2bda65bc5ba1ca02b65383b7")
!653 = !DISubroutineType(types: !654)
!654 = !{!165, !165}
!655 = !DISubprogram(name: "gt_str_append_uword", scope: !426, file: !426, line: 61, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !424, !161}
!658 = !DISubprogram(name: "gt_str_append_cstr", scope: !426, file: !426, line: 46, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !424, !415}
!661 = !DISubprogram(name: "snprintf", scope: !589, file: !589, line: 378, type: !662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!662 = !DISubroutineType(types: !663)
!663 = !{!164, !664, !184, !643, null}
!664 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !412)
!665 = !DISubprogram(name: "gt_str_get", scope: !426, file: !426, line: 40, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!666 = !DISubroutineType(types: !667)
!667 = !{!412, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!670 = !DISubprogram(name: "gt_str_delete", scope: !426, file: !426, line: 90, type: !671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !424}
!673 = distinct !DISubprogram(name: "gt_canvas_draw_ruler", scope: !2, file: !2, line: 155, type: !298, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !674)
!674 = !{!675, !676, !677}
!675 = !DILocalVariable(name: "canvas", arg: 1, scope: !673, file: !2, line: 155, type: !192)
!676 = !DILocalVariable(name: "rng", arg: 2, scope: !673, file: !2, line: 155, type: !205)
!677 = !DILocalVariable(name: "err", arg: 3, scope: !673, file: !2, line: 155, type: !247)
!678 = !DILocation(line: 155, column: 36, scope: !673)
!679 = !DILocation(line: 155, column: 52, scope: !673)
!680 = !DILocation(line: 155, column: 66, scope: !673)
!681 = !DILocation(line: 157, column: 3, scope: !673)
!682 = !DILocation(line: 157, column: 3, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !2, line: 157, column: 3)
!684 = distinct !DILexicalBlock(scope: !673, file: !2, line: 157, column: 3)
!685 = !DILocation(line: 157, column: 3, scope: !684)
!686 = !DILocation(line: 157, column: 3, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !2, line: 157, column: 3)
!688 = !DILocation(line: 158, column: 10, scope: !673)
!689 = !DILocation(line: 158, column: 18, scope: !673)
!690 = !{!691, !326, i64 0}
!691 = !{!"GtCanvas", !326, i64 0, !326, i64 8}
!692 = !DILocation(line: 158, column: 27, scope: !673)
!693 = !DILocation(line: 158, column: 43, scope: !673)
!694 = !DILocation(line: 158, column: 56, scope: !673)
!695 = !DILocation(line: 158, column: 3, scope: !673)
!696 = distinct !DISubprogram(name: "gt_canvas_create", scope: !2, file: !2, line: 161, type: !697, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{!192, !177}
!699 = !{!700, !701}
!700 = !DILocalVariable(name: "cc", arg: 1, scope: !696, file: !2, line: 161, type: !177)
!701 = !DILocalVariable(name: "c", scope: !696, file: !2, line: 163, type: !192)
!702 = !DILocation(line: 161, column: 49, scope: !696)
!703 = !DILocation(line: 163, column: 3, scope: !696)
!704 = !DILocation(line: 163, column: 13, scope: !696)
!705 = !DILocation(line: 164, column: 3, scope: !696)
!706 = !DILocation(line: 164, column: 3, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !2, line: 164, column: 3)
!708 = distinct !DILexicalBlock(scope: !696, file: !2, line: 164, column: 3)
!709 = !DILocation(line: 164, column: 3, scope: !708)
!710 = !DILocation(line: 164, column: 3, scope: !711)
!711 = distinct !DILexicalBlock(scope: !707, file: !2, line: 164, column: 3)
!712 = !DILocation(line: 165, column: 7, scope: !696)
!713 = !DILocation(line: 165, column: 5, scope: !696)
!714 = !DILocation(line: 166, column: 16, scope: !696)
!715 = !DILocation(line: 166, column: 3, scope: !696)
!716 = !DILocation(line: 166, column: 6, scope: !696)
!717 = !DILocation(line: 166, column: 14, scope: !696)
!718 = !DILocation(line: 167, column: 12, scope: !696)
!719 = !DILocation(line: 167, column: 3, scope: !696)
!720 = !DILocation(line: 167, column: 6, scope: !696)
!721 = !DILocation(line: 167, column: 10, scope: !696)
!722 = !{!691, !326, i64 8}
!723 = !DILocation(line: 168, column: 10, scope: !696)
!724 = !DILocation(line: 169, column: 1, scope: !696)
!725 = !DILocation(line: 168, column: 3, scope: !696)
!726 = !DISubprogram(name: "gt_calloc_mem", scope: !727, file: !727, line: 62, type: !728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!727 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!728 = !DISubroutineType(types: !729)
!729 = !{!166, !184, !184, !415, !164}
!730 = distinct !DISubprogram(name: "gt_canvas_delete", scope: !2, file: !2, line: 171, type: !303, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !731)
!731 = !{!732}
!732 = !DILocalVariable(name: "canvas", arg: 1, scope: !730, file: !2, line: 171, type: !192)
!733 = !DILocation(line: 171, column: 33, scope: !730)
!734 = !DILocation(line: 173, column: 8, scope: !735)
!735 = distinct !DILexicalBlock(scope: !730, file: !2, line: 173, column: 7)
!736 = !DILocation(line: 173, column: 7, scope: !730)
!737 = !DILocation(line: 173, column: 16, scope: !735)
!738 = !DILocation(line: 174, column: 3, scope: !730)
!739 = !DILocation(line: 174, column: 3, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !2, line: 174, column: 3)
!741 = distinct !DILexicalBlock(scope: !730, file: !2, line: 174, column: 3)
!742 = !DILocation(line: 174, column: 3, scope: !741)
!743 = !DILocation(line: 174, column: 3, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !2, line: 174, column: 3)
!745 = !DILocation(line: 175, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !730, file: !2, line: 175, column: 7)
!747 = !DILocation(line: 175, column: 15, scope: !746)
!748 = !DILocation(line: 175, column: 24, scope: !746)
!749 = !DILocation(line: 175, column: 7, scope: !730)
!750 = !DILocation(line: 176, column: 5, scope: !746)
!751 = !DILocation(line: 176, column: 13, scope: !746)
!752 = !DILocation(line: 176, column: 22, scope: !746)
!753 = !DILocation(line: 176, column: 27, scope: !746)
!754 = !DILocation(line: 177, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !730, file: !2, line: 177, column: 7)
!756 = !DILocation(line: 177, column: 15, scope: !755)
!757 = !DILocation(line: 177, column: 20, scope: !755)
!758 = !{!759, !326, i64 88}
!759 = !{!"GtCanvasMembers", !760, i64 0, !487, i64 16, !487, i64 24, !487, i64 32, !321, i64 40, !321, i64 48, !326, i64 56, !326, i64 64, !452, i64 72, !326, i64 80, !326, i64 88, !326, i64 96}
!760 = !{!"GtRange", !321, i64 0, !321, i64 8}
!761 = !DILocation(line: 177, column: 7, scope: !730)
!762 = !DILocation(line: 178, column: 24, scope: !755)
!763 = !DILocation(line: 178, column: 32, scope: !755)
!764 = !DILocation(line: 178, column: 37, scope: !755)
!765 = !DILocation(line: 178, column: 5, scope: !755)
!766 = !DILocation(line: 179, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !730, file: !2, line: 179, column: 7)
!768 = !DILocation(line: 179, column: 15, scope: !767)
!769 = !DILocation(line: 179, column: 20, scope: !767)
!770 = !{!759, !326, i64 80}
!771 = !DILocation(line: 179, column: 7, scope: !730)
!772 = !DILocation(line: 180, column: 22, scope: !767)
!773 = !DILocation(line: 180, column: 30, scope: !767)
!774 = !DILocation(line: 180, column: 35, scope: !767)
!775 = !DILocation(line: 180, column: 5, scope: !767)
!776 = !DILocation(line: 181, column: 3, scope: !730)
!777 = !DILocation(line: 182, column: 3, scope: !730)
!778 = !DILocation(line: 183, column: 1, scope: !730)
!779 = !DISubprogram(name: "gt_graphics_delete", scope: !236, file: !236, line: 189, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !234}
!782 = !DISubprogram(name: "gt_bittab_delete", scope: !231, file: !231, line: 100, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !229}
!785 = !DISubprogram(name: "gt_free_mem", scope: !727, file: !727, line: 75, type: !786, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !166, !415, !164}
!788 = distinct !DISubprogram(name: "gt_canvas_cast", scope: !2, file: !2, line: 185, type: !789, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{!166, !177, !192}
!791 = !{!792, !793}
!792 = !DILocalVariable(name: "cc", arg: 1, scope: !788, file: !2, line: 185, type: !177)
!793 = !DILocalVariable(name: "c", arg: 2, scope: !788, file: !2, line: 185, type: !192)
!794 = !DILocation(line: 185, column: 53, scope: !788)
!795 = !DILocation(line: 185, column: 67, scope: !788)
!796 = !DILocation(line: 187, column: 3, scope: !788)
!797 = !DILocation(line: 187, column: 3, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !2, line: 187, column: 3)
!799 = distinct !DILexicalBlock(scope: !788, file: !2, line: 187, column: 3)
!800 = !DILocation(line: 187, column: 3, scope: !799)
!801 = !DILocation(line: 187, column: 3, scope: !802)
!802 = distinct !DILexicalBlock(scope: !798, file: !2, line: 187, column: 3)
!803 = !DILocation(line: 188, column: 10, scope: !788)
!804 = !DILocation(line: 188, column: 3, scope: !788)
!805 = distinct !DISubprogram(name: "gt_canvas_try_cast", scope: !2, file: !2, line: 191, type: !789, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !806)
!806 = !{!807, !808}
!807 = !DILocalVariable(name: "cc", arg: 1, scope: !805, file: !2, line: 191, type: !177)
!808 = !DILocalVariable(name: "c", arg: 2, scope: !805, file: !2, line: 191, type: !192)
!809 = !DILocation(line: 191, column: 57, scope: !805)
!810 = !DILocation(line: 191, column: 71, scope: !805)
!811 = !DILocation(line: 193, column: 3, scope: !805)
!812 = !DILocation(line: 193, column: 3, scope: !813)
!813 = distinct !DILexicalBlock(scope: !814, file: !2, line: 193, column: 3)
!814 = distinct !DILexicalBlock(scope: !805, file: !2, line: 193, column: 3)
!815 = !DILocation(line: 193, column: 3, scope: !814)
!816 = !DILocation(line: 193, column: 3, scope: !817)
!817 = distinct !DILexicalBlock(scope: !813, file: !2, line: 193, column: 3)
!818 = !DILocation(line: 194, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !805, file: !2, line: 194, column: 7)
!820 = !DILocation(line: 194, column: 10, scope: !819)
!821 = !DILocation(line: 194, column: 21, scope: !819)
!822 = !DILocation(line: 194, column: 18, scope: !819)
!823 = !DILocation(line: 194, column: 7, scope: !805)
!824 = !DILocation(line: 195, column: 12, scope: !819)
!825 = !DILocation(line: 195, column: 5, scope: !819)
!826 = !DILocation(line: 196, column: 3, scope: !805)
!827 = !DILocation(line: 197, column: 1, scope: !805)
!828 = distinct !DISubprogram(name: "gt_canvas_get_height", scope: !2, file: !2, line: 199, type: !829, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !831)
!829 = !DISubroutineType(types: !830)
!830 = !{!161, !192}
!831 = !{!832}
!832 = !DILocalVariable(name: "canvas", arg: 1, scope: !828, file: !2, line: 199, type: !192)
!833 = !DILocation(line: 199, column: 40, scope: !828)
!834 = !DILocation(line: 201, column: 3, scope: !828)
!835 = !DILocation(line: 201, column: 3, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !2, line: 201, column: 3)
!837 = distinct !DILexicalBlock(scope: !828, file: !2, line: 201, column: 3)
!838 = !DILocation(line: 201, column: 3, scope: !837)
!839 = !DILocation(line: 201, column: 3, scope: !840)
!840 = distinct !DILexicalBlock(scope: !836, file: !2, line: 201, column: 3)
!841 = !DILocation(line: 202, column: 10, scope: !828)
!842 = !DILocation(line: 202, column: 18, scope: !828)
!843 = !DILocation(line: 202, column: 23, scope: !828)
!844 = !{!759, !321, i64 48}
!845 = !DILocation(line: 202, column: 3, scope: !828)
!846 = distinct !DISubprogram(name: "gt_canvas_visit_layout_pre", scope: !2, file: !2, line: 205, type: !190, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !847)
!847 = !{!848, !849, !850}
!848 = !DILocalVariable(name: "canvas", arg: 1, scope: !846, file: !2, line: 205, type: !192)
!849 = !DILocalVariable(name: "layout", arg: 2, scope: !846, file: !2, line: 205, type: !243)
!850 = !DILocalVariable(name: "err", arg: 3, scope: !846, file: !2, line: 205, type: !247)
!851 = !DILocation(line: 205, column: 42, scope: !846)
!852 = !DILocation(line: 205, column: 60, scope: !846)
!853 = !DILocation(line: 205, column: 77, scope: !846)
!854 = !DILocation(line: 207, column: 3, scope: !846)
!855 = !DILocation(line: 207, column: 3, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !2, line: 207, column: 3)
!857 = distinct !DILexicalBlock(scope: !846, file: !2, line: 207, column: 3)
!858 = !DILocation(line: 207, column: 3, scope: !857)
!859 = !DILocation(line: 207, column: 3, scope: !860)
!860 = distinct !DILexicalBlock(scope: !856, file: !2, line: 207, column: 3)
!861 = !DILocation(line: 208, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !846, file: !2, line: 208, column: 7)
!863 = !DILocation(line: 208, column: 15, scope: !862)
!864 = !DILocation(line: 208, column: 24, scope: !862)
!865 = !DILocation(line: 208, column: 7, scope: !846)
!866 = !DILocation(line: 209, column: 12, scope: !862)
!867 = !DILocation(line: 209, column: 20, scope: !862)
!868 = !DILocation(line: 209, column: 29, scope: !862)
!869 = !DILocation(line: 209, column: 46, scope: !862)
!870 = !DILocation(line: 209, column: 54, scope: !862)
!871 = !DILocation(line: 209, column: 62, scope: !862)
!872 = !DILocation(line: 209, column: 5, scope: !862)
!873 = !DILocation(line: 211, column: 5, scope: !862)
!874 = !DILocation(line: 212, column: 1, scope: !846)
!875 = distinct !DISubprogram(name: "gt_canvas_visit_layout_post", scope: !2, file: !2, line: 214, type: !190, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !876)
!876 = !{!877, !878, !879}
!877 = !DILocalVariable(name: "canvas", arg: 1, scope: !875, file: !2, line: 214, type: !192)
!878 = !DILocalVariable(name: "layout", arg: 2, scope: !875, file: !2, line: 214, type: !243)
!879 = !DILocalVariable(name: "err", arg: 3, scope: !875, file: !2, line: 215, type: !247)
!880 = !DILocation(line: 214, column: 43, scope: !875)
!881 = !DILocation(line: 214, column: 61, scope: !875)
!882 = !DILocation(line: 215, column: 42, scope: !875)
!883 = !DILocation(line: 217, column: 3, scope: !875)
!884 = !DILocation(line: 217, column: 3, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !2, line: 217, column: 3)
!886 = distinct !DILexicalBlock(scope: !875, file: !2, line: 217, column: 3)
!887 = !DILocation(line: 217, column: 3, scope: !886)
!888 = !DILocation(line: 217, column: 3, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !2, line: 217, column: 3)
!890 = !DILocation(line: 218, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !875, file: !2, line: 218, column: 7)
!892 = !DILocation(line: 218, column: 15, scope: !891)
!893 = !DILocation(line: 218, column: 24, scope: !891)
!894 = !DILocation(line: 218, column: 7, scope: !875)
!895 = !DILocation(line: 219, column: 12, scope: !891)
!896 = !DILocation(line: 219, column: 20, scope: !891)
!897 = !DILocation(line: 219, column: 29, scope: !891)
!898 = !DILocation(line: 219, column: 47, scope: !891)
!899 = !DILocation(line: 219, column: 55, scope: !891)
!900 = !DILocation(line: 219, column: 63, scope: !891)
!901 = !DILocation(line: 219, column: 5, scope: !891)
!902 = !DILocation(line: 221, column: 5, scope: !891)
!903 = !DILocation(line: 222, column: 1, scope: !875)
!904 = distinct !DISubprogram(name: "gt_canvas_visit_track_pre", scope: !2, file: !2, line: 224, type: !255, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !905)
!905 = !{!906, !907, !908}
!906 = !DILocalVariable(name: "canvas", arg: 1, scope: !904, file: !2, line: 224, type: !192)
!907 = !DILocalVariable(name: "track", arg: 2, scope: !904, file: !2, line: 224, type: !222)
!908 = !DILocalVariable(name: "err", arg: 3, scope: !904, file: !2, line: 224, type: !247)
!909 = !DILocation(line: 224, column: 41, scope: !904)
!910 = !DILocation(line: 224, column: 58, scope: !904)
!911 = !DILocation(line: 224, column: 74, scope: !904)
!912 = !DILocation(line: 226, column: 3, scope: !904)
!913 = !DILocation(line: 226, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !2, line: 226, column: 3)
!915 = distinct !DILexicalBlock(scope: !904, file: !2, line: 226, column: 3)
!916 = !DILocation(line: 226, column: 3, scope: !915)
!917 = !DILocation(line: 226, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !914, file: !2, line: 226, column: 3)
!919 = !DILocation(line: 227, column: 32, scope: !904)
!920 = !DILocation(line: 227, column: 3, scope: !904)
!921 = !DILocation(line: 227, column: 11, scope: !904)
!922 = !DILocation(line: 227, column: 16, scope: !904)
!923 = !DILocation(line: 227, column: 30, scope: !904)
!924 = !{!759, !326, i64 64}
!925 = !DILocation(line: 228, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !904, file: !2, line: 228, column: 7)
!927 = !DILocation(line: 228, column: 15, scope: !926)
!928 = !DILocation(line: 228, column: 24, scope: !926)
!929 = !DILocation(line: 228, column: 7, scope: !904)
!930 = !DILocation(line: 229, column: 12, scope: !926)
!931 = !DILocation(line: 229, column: 20, scope: !926)
!932 = !DILocation(line: 229, column: 29, scope: !926)
!933 = !DILocation(line: 229, column: 45, scope: !926)
!934 = !DILocation(line: 229, column: 53, scope: !926)
!935 = !DILocation(line: 229, column: 60, scope: !926)
!936 = !DILocation(line: 229, column: 5, scope: !926)
!937 = !DILocation(line: 231, column: 5, scope: !926)
!938 = !DILocation(line: 232, column: 1, scope: !904)
!939 = distinct !DISubprogram(name: "gt_canvas_visit_track_post", scope: !2, file: !2, line: 234, type: !255, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !940)
!940 = !{!941, !942, !943}
!941 = !DILocalVariable(name: "canvas", arg: 1, scope: !939, file: !2, line: 234, type: !192)
!942 = !DILocalVariable(name: "track", arg: 2, scope: !939, file: !2, line: 234, type: !222)
!943 = !DILocalVariable(name: "err", arg: 3, scope: !939, file: !2, line: 234, type: !247)
!944 = !DILocation(line: 234, column: 42, scope: !939)
!945 = !DILocation(line: 234, column: 59, scope: !939)
!946 = !DILocation(line: 234, column: 75, scope: !939)
!947 = !DILocation(line: 236, column: 3, scope: !939)
!948 = !DILocation(line: 236, column: 3, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !2, line: 236, column: 3)
!950 = distinct !DILexicalBlock(scope: !939, file: !2, line: 236, column: 3)
!951 = !DILocation(line: 236, column: 3, scope: !950)
!952 = !DILocation(line: 236, column: 3, scope: !953)
!953 = distinct !DILexicalBlock(scope: !949, file: !2, line: 236, column: 3)
!954 = !DILocation(line: 237, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !939, file: !2, line: 237, column: 7)
!956 = !DILocation(line: 237, column: 15, scope: !955)
!957 = !DILocation(line: 237, column: 24, scope: !955)
!958 = !DILocation(line: 237, column: 7, scope: !939)
!959 = !DILocation(line: 238, column: 12, scope: !955)
!960 = !DILocation(line: 238, column: 20, scope: !955)
!961 = !DILocation(line: 238, column: 29, scope: !955)
!962 = !DILocation(line: 238, column: 46, scope: !955)
!963 = !DILocation(line: 238, column: 54, scope: !955)
!964 = !DILocation(line: 238, column: 61, scope: !955)
!965 = !DILocation(line: 238, column: 5, scope: !955)
!966 = !DILocation(line: 240, column: 5, scope: !955)
!967 = !DILocation(line: 241, column: 1, scope: !939)
!968 = distinct !DISubprogram(name: "gt_canvas_visit_line_pre", scope: !2, file: !2, line: 243, type: !261, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !969)
!969 = !{!970, !971, !972}
!970 = !DILocalVariable(name: "canvas", arg: 1, scope: !968, file: !2, line: 243, type: !192)
!971 = !DILocalVariable(name: "line", arg: 2, scope: !968, file: !2, line: 243, type: !263)
!972 = !DILocalVariable(name: "err", arg: 3, scope: !968, file: !2, line: 243, type: !247)
!973 = !DILocation(line: 243, column: 40, scope: !968)
!974 = !DILocation(line: 243, column: 56, scope: !968)
!975 = !DILocation(line: 243, column: 71, scope: !968)
!976 = !DILocation(line: 245, column: 3, scope: !968)
!977 = !DILocation(line: 245, column: 3, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !2, line: 245, column: 3)
!979 = distinct !DILexicalBlock(scope: !968, file: !2, line: 245, column: 3)
!980 = !DILocation(line: 245, column: 3, scope: !979)
!981 = !DILocation(line: 245, column: 3, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !2, line: 245, column: 3)
!983 = !DILocation(line: 246, column: 7, scope: !984)
!984 = distinct !DILexicalBlock(scope: !968, file: !2, line: 246, column: 7)
!985 = !DILocation(line: 246, column: 15, scope: !984)
!986 = !DILocation(line: 246, column: 24, scope: !984)
!987 = !DILocation(line: 246, column: 7, scope: !968)
!988 = !DILocation(line: 247, column: 12, scope: !984)
!989 = !DILocation(line: 247, column: 20, scope: !984)
!990 = !DILocation(line: 247, column: 29, scope: !984)
!991 = !DILocation(line: 247, column: 44, scope: !984)
!992 = !DILocation(line: 247, column: 52, scope: !984)
!993 = !DILocation(line: 247, column: 58, scope: !984)
!994 = !DILocation(line: 247, column: 5, scope: !984)
!995 = !DILocation(line: 249, column: 5, scope: !984)
!996 = !DILocation(line: 250, column: 1, scope: !968)
!997 = distinct !DISubprogram(name: "gt_canvas_visit_line_post", scope: !2, file: !2, line: 252, type: !261, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !998)
!998 = !{!999, !1000, !1001}
!999 = !DILocalVariable(name: "canvas", arg: 1, scope: !997, file: !2, line: 252, type: !192)
!1000 = !DILocalVariable(name: "line", arg: 2, scope: !997, file: !2, line: 252, type: !263)
!1001 = !DILocalVariable(name: "err", arg: 3, scope: !997, file: !2, line: 252, type: !247)
!1002 = !DILocation(line: 252, column: 41, scope: !997)
!1003 = !DILocation(line: 252, column: 57, scope: !997)
!1004 = !DILocation(line: 252, column: 72, scope: !997)
!1005 = !DILocation(line: 254, column: 3, scope: !997)
!1006 = !DILocation(line: 254, column: 3, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 254, column: 3)
!1008 = distinct !DILexicalBlock(scope: !997, file: !2, line: 254, column: 3)
!1009 = !DILocation(line: 254, column: 3, scope: !1008)
!1010 = !DILocation(line: 254, column: 3, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 254, column: 3)
!1012 = !DILocation(line: 255, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !997, file: !2, line: 255, column: 7)
!1014 = !DILocation(line: 255, column: 15, scope: !1013)
!1015 = !DILocation(line: 255, column: 24, scope: !1013)
!1016 = !DILocation(line: 255, column: 7, scope: !997)
!1017 = !DILocation(line: 256, column: 12, scope: !1013)
!1018 = !DILocation(line: 256, column: 20, scope: !1013)
!1019 = !DILocation(line: 256, column: 29, scope: !1013)
!1020 = !DILocation(line: 256, column: 45, scope: !1013)
!1021 = !DILocation(line: 256, column: 53, scope: !1013)
!1022 = !DILocation(line: 256, column: 59, scope: !1013)
!1023 = !DILocation(line: 256, column: 5, scope: !1013)
!1024 = !DILocation(line: 258, column: 5, scope: !1013)
!1025 = !DILocation(line: 259, column: 1, scope: !997)
!1026 = distinct !DISubprogram(name: "gt_canvas_visit_block", scope: !2, file: !2, line: 261, type: !271, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1027)
!1027 = !{!1028, !1029, !1030}
!1028 = !DILocalVariable(name: "canvas", arg: 1, scope: !1026, file: !2, line: 261, type: !192)
!1029 = !DILocalVariable(name: "block", arg: 2, scope: !1026, file: !2, line: 261, type: !273)
!1030 = !DILocalVariable(name: "err", arg: 3, scope: !1026, file: !2, line: 261, type: !247)
!1031 = !DILocation(line: 261, column: 37, scope: !1026)
!1032 = !DILocation(line: 261, column: 54, scope: !1026)
!1033 = !DILocation(line: 261, column: 70, scope: !1026)
!1034 = !DILocation(line: 263, column: 3, scope: !1026)
!1035 = !DILocation(line: 263, column: 3, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 263, column: 3)
!1037 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 263, column: 3)
!1038 = !DILocation(line: 263, column: 3, scope: !1037)
!1039 = !DILocation(line: 263, column: 3, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 263, column: 3)
!1041 = !DILocation(line: 264, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 264, column: 7)
!1043 = !DILocation(line: 264, column: 15, scope: !1042)
!1044 = !DILocation(line: 264, column: 24, scope: !1042)
!1045 = !DILocation(line: 264, column: 7, scope: !1026)
!1046 = !DILocation(line: 265, column: 12, scope: !1042)
!1047 = !DILocation(line: 265, column: 20, scope: !1042)
!1048 = !DILocation(line: 265, column: 29, scope: !1042)
!1049 = !DILocation(line: 265, column: 41, scope: !1042)
!1050 = !DILocation(line: 265, column: 49, scope: !1042)
!1051 = !DILocation(line: 265, column: 56, scope: !1042)
!1052 = !DILocation(line: 265, column: 5, scope: !1042)
!1053 = !DILocation(line: 267, column: 5, scope: !1042)
!1054 = !DILocation(line: 268, column: 1, scope: !1026)
!1055 = distinct !DISubprogram(name: "gt_canvas_visit_element", scope: !2, file: !2, line: 270, type: !280, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1056)
!1056 = !{!1057, !1058, !1059}
!1057 = !DILocalVariable(name: "canvas", arg: 1, scope: !1055, file: !2, line: 270, type: !192)
!1058 = !DILocalVariable(name: "element", arg: 2, scope: !1055, file: !2, line: 270, type: !282)
!1059 = !DILocalVariable(name: "err", arg: 3, scope: !1055, file: !2, line: 270, type: !247)
!1060 = !DILocation(line: 270, column: 39, scope: !1055)
!1061 = !DILocation(line: 270, column: 58, scope: !1055)
!1062 = !DILocation(line: 270, column: 76, scope: !1055)
!1063 = !DILocation(line: 272, column: 3, scope: !1055)
!1064 = !DILocation(line: 272, column: 3, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 272, column: 3)
!1066 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 272, column: 3)
!1067 = !DILocation(line: 272, column: 3, scope: !1066)
!1068 = !DILocation(line: 272, column: 3, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 272, column: 3)
!1070 = !DILocation(line: 273, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 273, column: 7)
!1072 = !DILocation(line: 273, column: 15, scope: !1071)
!1073 = !DILocation(line: 273, column: 24, scope: !1071)
!1074 = !DILocation(line: 273, column: 7, scope: !1055)
!1075 = !DILocation(line: 274, column: 12, scope: !1071)
!1076 = !DILocation(line: 274, column: 20, scope: !1071)
!1077 = !DILocation(line: 274, column: 29, scope: !1071)
!1078 = !DILocation(line: 274, column: 43, scope: !1071)
!1079 = !DILocation(line: 274, column: 51, scope: !1071)
!1080 = !DILocation(line: 274, column: 60, scope: !1071)
!1081 = !DILocation(line: 274, column: 5, scope: !1071)
!1082 = !DILocation(line: 276, column: 5, scope: !1071)
!1083 = !DILocation(line: 277, column: 1, scope: !1055)
!1084 = distinct !DISubprogram(name: "gt_canvas_visit_custom_track", scope: !2, file: !2, line: 279, type: !289, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1085)
!1085 = !{!1086, !1087, !1088}
!1086 = !DILocalVariable(name: "canvas", arg: 1, scope: !1084, file: !2, line: 279, type: !192)
!1087 = !DILocalVariable(name: "ct", arg: 2, scope: !1084, file: !2, line: 279, type: !291)
!1088 = !DILocalVariable(name: "err", arg: 3, scope: !1084, file: !2, line: 280, type: !247)
!1089 = !DILocation(line: 279, column: 44, scope: !1084)
!1090 = !DILocation(line: 279, column: 67, scope: !1084)
!1091 = !DILocation(line: 280, column: 43, scope: !1084)
!1092 = !DILocation(line: 282, column: 3, scope: !1084)
!1093 = !DILocation(line: 282, column: 3, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 282, column: 3)
!1095 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 282, column: 3)
!1096 = !DILocation(line: 282, column: 3, scope: !1095)
!1097 = !DILocation(line: 282, column: 3, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 282, column: 3)
!1099 = !DILocation(line: 283, column: 7, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 283, column: 7)
!1101 = !DILocation(line: 283, column: 15, scope: !1100)
!1102 = !DILocation(line: 283, column: 24, scope: !1100)
!1103 = !DILocation(line: 283, column: 7, scope: !1084)
!1104 = !DILocation(line: 284, column: 12, scope: !1100)
!1105 = !DILocation(line: 284, column: 20, scope: !1100)
!1106 = !DILocation(line: 284, column: 29, scope: !1100)
!1107 = !DILocation(line: 284, column: 38, scope: !1100)
!1108 = !DILocation(line: 284, column: 46, scope: !1100)
!1109 = !DILocation(line: 284, column: 50, scope: !1100)
!1110 = !DILocation(line: 284, column: 5, scope: !1100)
!1111 = !DILocation(line: 286, column: 5, scope: !1100)
!1112 = !DILocation(line: 287, column: 1, scope: !1084)
!1113 = distinct !DISubprogram(name: "gt_canvas_get_style", scope: !2, file: !2, line: 289, type: !1114, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !159, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!217, !192}
!1116 = !{!1117}
!1117 = !DILocalVariable(name: "canvas", arg: 1, scope: !1113, file: !2, line: 289, type: !192)
!1118 = !DILocation(line: 289, column: 40, scope: !1113)
!1119 = !DILocation(line: 291, column: 3, scope: !1113)
!1120 = !DILocation(line: 291, column: 3, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 291, column: 3)
!1122 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 291, column: 3)
!1123 = !DILocation(line: 291, column: 3, scope: !1122)
!1124 = !DILocation(line: 291, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 291, column: 3)
!1126 = !DILocation(line: 292, column: 10, scope: !1113)
!1127 = !DILocation(line: 292, column: 18, scope: !1113)
!1128 = !DILocation(line: 292, column: 23, scope: !1113)
!1129 = !{!759, !326, i64 56}
!1130 = !DILocation(line: 292, column: 3, scope: !1113)

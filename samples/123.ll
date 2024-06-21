; ModuleID = 'samples/123.bc'
source_filename = "/local-ssd/quo-vadis-ngd6cwnjru4wgycspwlythoi77wb76u5-build/aidengro/spack-stage-quo-vadis-master-ngd6cwnjru4wgycspwlythoi77wb76u5/spack-build-ngd6cwn/hwloc/src/libhwloc/utils/lstopo/lstopo-svg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.draw_methods = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lstopo_output = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i64, i64, i32, [3 x [128 x i8]], i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, float, [20 x i32], i32, [20 x i32], i32, [20 x i32], i32, [20 x i32], i32, i32, i32, i32, [20 x i32], [20 x i32], [20 x i32], ptr, ptr, i32, i32, i32 }
%struct.quo_vadis_internal_hwloc_obj = type { i32, ptr, i32, ptr, i64, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64 }
%struct.lstopo_color = type { i32, i32, i32, i32, %union.lstopo_color_private_u, ptr }
%union.lstopo_color_private_u = type { %struct.lstopo_color_private_ascii_s }
%struct.lstopo_color_private_ascii_s = type { i32 }
%struct.lstopo_obj_userdata = type { %struct.hwloc_utils_userdata, i32, i32, %struct.lstopo_style, i32, i32, i32, i32, %struct.lstopo_children_position, %struct.lstopo_children_position, i32, i32, i32, [4 x %struct.lstopo_text_line], i32, i32 }
%struct.hwloc_utils_userdata = type { ptr, i64, ptr, ptr }
%struct.lstopo_style = type { ptr, ptr, ptr }
%struct.lstopo_children_position = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.lstopo_text_line = type { [128 x i8], i32, i32 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to open %s for writing (%s)\0A\00", align 1, !dbg !0
@native_svg_draw_methods = internal global %struct.draw_methods { ptr null, ptr null, ptr @native_svg_box, ptr @native_svg_line, ptr @native_svg_text, ptr @native_svg_textsize }, align 8, !dbg !7
@.str.1 = private unnamed_addr constant [40 x i8] c"<?xml version='1.0' encoding='UTF-8'?>\0A\00", align 1, !dbg !79
@.str.2 = private unnamed_addr constant [150 x i8] c"<svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='%upx' height='%upx' viewBox='0 0 %upx %upx' version='1.1'>\0A\00", align 1, !dbg !84
@.str.3 = private unnamed_addr constant [8 x i8] c"</svg>\0A\00", align 1, !dbg !89
@stdout = external global ptr, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"_%u\00", align 1, !dbg !94
@.str.5 = private unnamed_addr constant [19 x i8] c" id='%s_%u_rect%s'\00", align 1, !dbg !99
@.str.6 = private unnamed_addr constant [12 x i8] c" class='%s'\00", align 1, !dbg !104
@.str.7 = private unnamed_addr constant [18 x i8] c" id='anon_rect%s'\00", align 1, !dbg !109
@.str.8 = private unnamed_addr constant [23 x i8] c" stroke-dasharray=\22%u\22\00", align 1, !dbg !114
@.str.9 = private unnamed_addr constant [112 x i8] c"\09<rect%s%s x='%u' y='%u' width='%u' height='%u' fill='rgb(%d,%d,%d)' stroke='rgb(0,0,0)' stroke-width='%u'%s/>\0A\00", align 1, !dbg !119
@.str.10 = private unnamed_addr constant [19 x i8] c" id='%s_%u_line%s'\00", align 1, !dbg !124
@.str.11 = private unnamed_addr constant [18 x i8] c" id='anon_line%s'\00", align 1, !dbg !126
@.str.12 = private unnamed_addr constant [87 x i8] c"\09<line%s%s x1='%u' y1='%u' x2='%u' y2='%u' stroke='rgb(%d,%d,%d)' stroke-width='%u'/>\0A\00", align 1, !dbg !128
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !133
@.str.14 = private unnamed_addr constant [19 x i8] c" id='%s_%u_text%s'\00", align 1, !dbg !138
@.str.15 = private unnamed_addr constant [18 x i8] c" id='anon_text%s'\00", align 1, !dbg !140
@.str.16 = private unnamed_addr constant [20 x i8] c" font-weight='bold'\00", align 1, !dbg !142
@.str.17 = private unnamed_addr constant [100 x i8] c"\09<text%s%s font-family='Monospace'%s x='%u' y='%u' fill='rgb(%d,%d,%d)' font-size='%dpx'>%s</text>\0A\00", align 1, !dbg !147

; Function Attrs: nounwind uwtable
define hidden i32 @output_nativesvg(ptr noundef %loutput, ptr noundef %filename) #0 !dbg !469 {
entry:
  %retval = alloca i32, align 4
  %loutput.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %output = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %loutput, ptr %loutput.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %loutput.addr, metadata !473, metadata !DIExpression()), !dbg !480
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %filename.addr, metadata !474, metadata !DIExpression()), !dbg !481
  call void @llvm.lifetime.start.p0(i64 8, ptr %output) #7, !dbg !482
  tail call void @llvm.dbg.declare(metadata ptr %output, metadata !475, metadata !DIExpression()), !dbg !483
  %0 = load ptr, ptr %filename.addr, align 8, !dbg !484, !tbaa !476
  %1 = load ptr, ptr %loutput.addr, align 8, !dbg !485, !tbaa !476
  %overwrite = getelementptr inbounds %struct.lstopo_output, ptr %1, i32 0, i32 5, !dbg !486
  %2 = load i32, ptr %overwrite, align 8, !dbg !486, !tbaa !487
  %call = call noalias ptr @open_output(ptr noundef %0, i32 noundef %2), !dbg !492
  store ptr %call, ptr %output, align 8, !dbg !483, !tbaa !476
  %3 = load ptr, ptr %output, align 8, !dbg !493, !tbaa !476
  %tobool = icmp ne ptr %3, null, !dbg !493
  br i1 %tobool, label %if.end, label %if.then, !dbg !495

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @stderr, align 8, !dbg !496, !tbaa !476
  %5 = load ptr, ptr %filename.addr, align 8, !dbg !498, !tbaa !476
  %call1 = call ptr @__errno_location() #8, !dbg !499
  %6 = load i32, ptr %call1, align 4, !dbg !499, !tbaa !500
  %call2 = call ptr @strerror(i32 noundef %6) #7, !dbg !501
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str, ptr noundef %5, ptr noundef %call2), !dbg !502
  store i32 -1, ptr %retval, align 4, !dbg !503
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !503

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %output, align 8, !dbg !504, !tbaa !476
  %8 = load ptr, ptr %loutput.addr, align 8, !dbg !505, !tbaa !476
  %file = getelementptr inbounds %struct.lstopo_output, ptr %8, i32 0, i32 4, !dbg !506
  store ptr %7, ptr %file, align 8, !dbg !507, !tbaa !508
  %9 = load ptr, ptr %loutput.addr, align 8, !dbg !509, !tbaa !476
  %methods = getelementptr inbounds %struct.lstopo_output, ptr %9, i32 0, i32 57, !dbg !510
  store ptr @native_svg_draw_methods, ptr %methods, align 8, !dbg !511, !tbaa !512
  %10 = load ptr, ptr %loutput.addr, align 8, !dbg !513, !tbaa !476
  %drawing = getelementptr inbounds %struct.lstopo_output, ptr %10, i32 0, i32 58, !dbg !514
  store i32 0, ptr %drawing, align 8, !dbg !515, !tbaa !516
  %11 = load ptr, ptr %loutput.addr, align 8, !dbg !517, !tbaa !476
  call void @output_draw(ptr noundef %11), !dbg !518
  %12 = load ptr, ptr %loutput.addr, align 8, !dbg !519, !tbaa !476
  %drawing4 = getelementptr inbounds %struct.lstopo_output, ptr %12, i32 0, i32 58, !dbg !520
  store i32 1, ptr %drawing4, align 8, !dbg !521, !tbaa !516
  %13 = load ptr, ptr %output, align 8, !dbg !522, !tbaa !476
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.1), !dbg !523
  %14 = load ptr, ptr %output, align 8, !dbg !524, !tbaa !476
  %15 = load ptr, ptr %loutput.addr, align 8, !dbg !525, !tbaa !476
  %width = getelementptr inbounds %struct.lstopo_output, ptr %15, i32 0, i32 59, !dbg !526
  %16 = load i32, ptr %width, align 4, !dbg !526, !tbaa !527
  %17 = load ptr, ptr %loutput.addr, align 8, !dbg !528, !tbaa !476
  %height = getelementptr inbounds %struct.lstopo_output, ptr %17, i32 0, i32 60, !dbg !529
  %18 = load i32, ptr %height, align 8, !dbg !529, !tbaa !530
  %19 = load ptr, ptr %loutput.addr, align 8, !dbg !531, !tbaa !476
  %width6 = getelementptr inbounds %struct.lstopo_output, ptr %19, i32 0, i32 59, !dbg !532
  %20 = load i32, ptr %width6, align 4, !dbg !532, !tbaa !527
  %21 = load ptr, ptr %loutput.addr, align 8, !dbg !533, !tbaa !476
  %height7 = getelementptr inbounds %struct.lstopo_output, ptr %21, i32 0, i32 60, !dbg !534
  %22 = load i32, ptr %height7, align 8, !dbg !534, !tbaa !530
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.2, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22), !dbg !535
  %23 = load ptr, ptr %loutput.addr, align 8, !dbg !536, !tbaa !476
  call void @declare_colors(ptr noundef %23), !dbg !537
  %24 = load ptr, ptr %loutput.addr, align 8, !dbg !538, !tbaa !476
  call void @lstopo_prepare_custom_styles(ptr noundef %24), !dbg !539
  %25 = load ptr, ptr %loutput.addr, align 8, !dbg !540, !tbaa !476
  call void @output_draw(ptr noundef %25), !dbg !541
  %26 = load ptr, ptr %output, align 8, !dbg !542, !tbaa !476
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.3), !dbg !543
  %27 = load ptr, ptr %output, align 8, !dbg !544, !tbaa !476
  %28 = load ptr, ptr @stdout, align 8, !dbg !546, !tbaa !476
  %cmp = icmp ne ptr %27, %28, !dbg !547
  br i1 %cmp, label %if.then10, label %if.end12, !dbg !548

if.then10:                                        ; preds = %if.end
  %29 = load ptr, ptr %output, align 8, !dbg !549, !tbaa !476
  %call11 = call i32 @fclose(ptr noundef %29), !dbg !550
  br label %if.end12, !dbg !550

if.end12:                                         ; preds = %if.then10, %if.end
  %30 = load ptr, ptr %loutput.addr, align 8, !dbg !551, !tbaa !476
  call void @destroy_colors(ptr noundef %30), !dbg !552
  store i32 0, ptr %retval, align 4, !dbg !553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !553

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %output) #7, !dbg !554
  %31 = load i32, ptr %retval, align 4, !dbg !554
  ret i32 %31, !dbg !554
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !555 noalias ptr @open_output(ptr noundef, i32 noundef) #2

declare !dbg !558 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare !dbg !564 ptr @strerror(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare !dbg !568 ptr @__errno_location() #4

declare !dbg !573 void @output_draw(ptr noundef) #2

declare !dbg !576 void @declare_colors(ptr noundef) #2

declare !dbg !577 void @lstopo_prepare_custom_styles(ptr noundef) #2

declare !dbg !578 i32 @fclose(ptr noundef) #2

declare !dbg !581 void @destroy_colors(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @native_svg_box(ptr noundef %loutput, ptr noundef %lcolor, i32 noundef %depth, i32 noundef %x, i32 noundef %width, i32 noundef %y, i32 noundef %height, ptr noundef %obj, i32 noundef %box_id) #0 !dbg !582 {
entry:
  %loutput.addr = alloca ptr, align 8
  %lcolor.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %box_id.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  %ou = alloca ptr, align 8
  %thickness = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %id = alloca [128 x i8], align 16
  %class = alloca [128 x i8], align 16
  %complement = alloca [12 x i8], align 1
  %dash = alloca [32 x i8], align 16
  %type = alloca [64 x i8], align 16
  store ptr %loutput, ptr %loutput.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %loutput.addr, metadata !584, metadata !DIExpression()), !dbg !661
  store ptr %lcolor, ptr %lcolor.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %lcolor.addr, metadata !585, metadata !DIExpression()), !dbg !662
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !586, metadata !DIExpression()), !dbg !663
  store i32 %x, ptr %x.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !587, metadata !DIExpression()), !dbg !664
  store i32 %width, ptr %width.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !588, metadata !DIExpression()), !dbg !665
  store i32 %y, ptr %y.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !589, metadata !DIExpression()), !dbg !666
  store i32 %height, ptr %height.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %height.addr, metadata !590, metadata !DIExpression()), !dbg !667
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !591, metadata !DIExpression()), !dbg !668
  store i32 %box_id, ptr %box_id.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %box_id.addr, metadata !592, metadata !DIExpression()), !dbg !669
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #7, !dbg !670
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !593, metadata !DIExpression()), !dbg !671
  %0 = load ptr, ptr %loutput.addr, align 8, !dbg !672, !tbaa !476
  %file1 = getelementptr inbounds %struct.lstopo_output, ptr %0, i32 0, i32 4, !dbg !673
  %1 = load ptr, ptr %file1, align 8, !dbg !673, !tbaa !508
  store ptr %1, ptr %file, align 8, !dbg !671, !tbaa !476
  call void @llvm.lifetime.start.p0(i64 8, ptr %ou) #7, !dbg !674
  tail call void @llvm.dbg.declare(metadata ptr %ou, metadata !594, metadata !DIExpression()), !dbg !675
  %2 = load ptr, ptr %obj.addr, align 8, !dbg !676, !tbaa !476
  %tobool = icmp ne ptr %2, null, !dbg !676
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !676

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %obj.addr, align 8, !dbg !677, !tbaa !476
  %userdata = getelementptr inbounds %struct.quo_vadis_internal_hwloc_obj, ptr %3, i32 0, i32 31, !dbg !678
  %4 = load ptr, ptr %userdata, align 8, !dbg !678, !tbaa !679
  br label %cond.end, !dbg !676

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !676

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !676
  store ptr %cond, ptr %ou, align 8, !dbg !675, !tbaa !476
  call void @llvm.lifetime.start.p0(i64 4, ptr %thickness) #7, !dbg !681
  tail call void @llvm.dbg.declare(metadata ptr %thickness, metadata !644, metadata !DIExpression()), !dbg !682
  %5 = load ptr, ptr %loutput.addr, align 8, !dbg !683, !tbaa !476
  %thickness2 = getelementptr inbounds %struct.lstopo_output, ptr %5, i32 0, i32 40, !dbg !684
  %6 = load i32, ptr %thickness2, align 8, !dbg !684, !tbaa !685
  store i32 %6, ptr %thickness, align 4, !dbg !682, !tbaa !500
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #7, !dbg !686
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !645, metadata !DIExpression()), !dbg !687
  %7 = load ptr, ptr %lcolor.addr, align 8, !dbg !688, !tbaa !476
  %r3 = getelementptr inbounds %struct.lstopo_color, ptr %7, i32 0, i32 0, !dbg !689
  %8 = load i32, ptr %r3, align 8, !dbg !689, !tbaa !690
  store i32 %8, ptr %r, align 4, !dbg !687, !tbaa !500
  call void @llvm.lifetime.start.p0(i64 4, ptr %g) #7, !dbg !686
  tail call void @llvm.dbg.declare(metadata ptr %g, metadata !646, metadata !DIExpression()), !dbg !692
  %9 = load ptr, ptr %lcolor.addr, align 8, !dbg !693, !tbaa !476
  %g4 = getelementptr inbounds %struct.lstopo_color, ptr %9, i32 0, i32 1, !dbg !694
  %10 = load i32, ptr %g4, align 4, !dbg !694, !tbaa !695
  store i32 %10, ptr %g, align 4, !dbg !692, !tbaa !500
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #7, !dbg !686
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !647, metadata !DIExpression()), !dbg !696
  %11 = load ptr, ptr %lcolor.addr, align 8, !dbg !697, !tbaa !476
  %b5 = getelementptr inbounds %struct.lstopo_color, ptr %11, i32 0, i32 2, !dbg !698
  %12 = load i32, ptr %b5, align 8, !dbg !698, !tbaa !699
  store i32 %12, ptr %b, align 4, !dbg !696, !tbaa !500
  call void @llvm.lifetime.start.p0(i64 128, ptr %id) #7, !dbg !700
  tail call void @llvm.dbg.declare(metadata ptr %id, metadata !648, metadata !DIExpression()), !dbg !701
  call void @llvm.memset.p0.i64(ptr align 16 %id, i8 0, i64 128, i1 false), !dbg !701
  call void @llvm.lifetime.start.p0(i64 128, ptr %class) #7, !dbg !702
  tail call void @llvm.dbg.declare(metadata ptr %class, metadata !649, metadata !DIExpression()), !dbg !703
  call void @llvm.memset.p0.i64(ptr align 16 %class, i8 0, i64 128, i1 false), !dbg !703
  call void @llvm.lifetime.start.p0(i64 12, ptr %complement) #7, !dbg !704
  tail call void @llvm.dbg.declare(metadata ptr %complement, metadata !650, metadata !DIExpression()), !dbg !705
  call void @llvm.memset.p0.i64(ptr align 1 %complement, i8 0, i64 12, i1 false), !dbg !705
  call void @llvm.lifetime.start.p0(i64 32, ptr %dash) #7, !dbg !706
  tail call void @llvm.dbg.declare(metadata ptr %dash, metadata !651, metadata !DIExpression()), !dbg !707
  call void @llvm.memset.p0.i64(ptr align 16 %dash, i8 0, i64 32, i1 false), !dbg !707
  %13 = load i32, ptr %box_id.addr, align 4, !dbg !708, !tbaa !500
  %tobool6 = icmp ne i32 %13, 0, !dbg !708
  br i1 %tobool6, label %if.then, label %if.end, !dbg !710

if.then:                                          ; preds = %cond.end
  %arraydecay = getelementptr inbounds [12 x i8], ptr %complement, i64 0, i64 0, !dbg !711
  %14 = load i32, ptr %box_id.addr, align 4, !dbg !712, !tbaa !500
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 12, ptr noundef @.str.4, i32 noundef %14) #7, !dbg !713
  br label %if.end, !dbg !713

if.end:                                           ; preds = %if.then, %cond.end
  %15 = load ptr, ptr %obj.addr, align 8, !dbg !714, !tbaa !476
  %tobool7 = icmp ne ptr %15, null, !dbg !714
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !715

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr %type) #7, !dbg !716
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !655, metadata !DIExpression()), !dbg !717
  %arraydecay9 = getelementptr inbounds [64 x i8], ptr %type, i64 0, i64 0, !dbg !718
  %16 = load ptr, ptr %obj.addr, align 8, !dbg !719, !tbaa !476
  %call10 = call i32 @quo_vadis_internal_hwloc_obj_type_snprintf(ptr noundef %arraydecay9, i64 noundef 64, ptr noundef %16, i32 noundef 0), !dbg !720
  %arraydecay11 = getelementptr inbounds [128 x i8], ptr %id, i64 0, i64 0, !dbg !721
  %arraydecay12 = getelementptr inbounds [64 x i8], ptr %type, i64 0, i64 0, !dbg !722
  %17 = load ptr, ptr %obj.addr, align 8, !dbg !723, !tbaa !476
  %logical_index = getelementptr inbounds %struct.quo_vadis_internal_hwloc_obj, ptr %17, i32 0, i32 7, !dbg !724
  %18 = load i32, ptr %logical_index, align 4, !dbg !724, !tbaa !725
  %arraydecay13 = getelementptr inbounds [12 x i8], ptr %complement, i64 0, i64 0, !dbg !726
  %call14 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay11, i64 noundef 128, ptr noundef @.str.5, ptr noundef %arraydecay12, i32 noundef %18, ptr noundef %arraydecay13) #7, !dbg !727
  %arraydecay15 = getelementptr inbounds [128 x i8], ptr %class, i64 0, i64 0, !dbg !728
  %arraydecay16 = getelementptr inbounds [64 x i8], ptr %type, i64 0, i64 0, !dbg !729
  %call17 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay15, i64 noundef 128, ptr noundef @.str.6, ptr noundef %arraydecay16) #7, !dbg !730
  call void @llvm.lifetime.end.p0(i64 64, ptr %type) #7, !dbg !731
  br label %if.end21, !dbg !732

if.else:                                          ; preds = %if.end
  %arraydecay18 = getelementptr inbounds [128 x i8], ptr %id, i64 0, i64 0, !dbg !733
  %arraydecay19 = getelementptr inbounds [12 x i8], ptr %complement, i64 0, i64 0, !dbg !735
  %call20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay18, i64 noundef 128, ptr noundef @.str.7, ptr noundef %arraydecay19) #7, !dbg !736
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then8
  %19 = load ptr, ptr %loutput.addr, align 8, !dbg !737, !tbaa !476
  %show_cpukinds = getelementptr inbounds %struct.lstopo_output, ptr %19, i32 0, i32 51, !dbg !739
  %20 = load i32, ptr %show_cpukinds, align 4, !dbg !739, !tbaa !740
  %tobool22 = icmp ne i32 %20, 0, !dbg !737
  br i1 %tobool22, label %land.lhs.true, label %if.end31, !dbg !741

land.lhs.true:                                    ; preds = %if.end21
  %21 = load ptr, ptr %ou, align 8, !dbg !742, !tbaa !476
  %tobool23 = icmp ne ptr %21, null, !dbg !742
  br i1 %tobool23, label %land.lhs.true24, label %if.end31, !dbg !743

land.lhs.true24:                                  ; preds = %land.lhs.true
  %22 = load ptr, ptr %ou, align 8, !dbg !744, !tbaa !476
  %cpukind_style = getelementptr inbounds %struct.lstopo_obj_userdata, ptr %22, i32 0, i32 5, !dbg !745
  %23 = load i32, ptr %cpukind_style, align 4, !dbg !745, !tbaa !746
  %tobool25 = icmp ne i32 %23, 0, !dbg !744
  br i1 %tobool25, label %if.then26, label %if.end31, !dbg !751

if.then26:                                        ; preds = %land.lhs.true24
  %arraydecay27 = getelementptr inbounds [32 x i8], ptr %dash, i64 0, i64 0, !dbg !752
  %24 = load ptr, ptr %ou, align 8, !dbg !754, !tbaa !476
  %cpukind_style28 = getelementptr inbounds %struct.lstopo_obj_userdata, ptr %24, i32 0, i32 5, !dbg !755
  %25 = load i32, ptr %cpukind_style28, align 4, !dbg !755, !tbaa !746
  %shl = shl i32 1, %25, !dbg !756
  %call29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay27, i64 noundef 32, ptr noundef @.str.8, i32 noundef %shl) #7, !dbg !757
  %26 = load ptr, ptr %ou, align 8, !dbg !758, !tbaa !476
  %cpukind_style30 = getelementptr inbounds %struct.lstopo_obj_userdata, ptr %26, i32 0, i32 5, !dbg !759
  %27 = load i32, ptr %cpukind_style30, align 4, !dbg !759, !tbaa !746
  %28 = load i32, ptr %thickness, align 4, !dbg !760, !tbaa !500
  %mul = mul i32 %28, %27, !dbg !760
  store i32 %mul, ptr %thickness, align 4, !dbg !760, !tbaa !500
  br label %if.end31, !dbg !761

if.end31:                                         ; preds = %if.then26, %land.lhs.true24, %land.lhs.true, %if.end21
  %29 = load ptr, ptr %file, align 8, !dbg !762, !tbaa !476
  %arraydecay32 = getelementptr inbounds [128 x i8], ptr %id, i64 0, i64 0, !dbg !763
  %arraydecay33 = getelementptr inbounds [128 x i8], ptr %class, i64 0, i64 0, !dbg !764
  %30 = load i32, ptr %x.addr, align 4, !dbg !765, !tbaa !500
  %31 = load i32, ptr %y.addr, align 4, !dbg !766, !tbaa !500
  %32 = load i32, ptr %width.addr, align 4, !dbg !767, !tbaa !500
  %33 = load i32, ptr %height.addr, align 4, !dbg !768, !tbaa !500
  %34 = load i32, ptr %r, align 4, !dbg !769, !tbaa !500
  %35 = load i32, ptr %g, align 4, !dbg !770, !tbaa !500
  %36 = load i32, ptr %b, align 4, !dbg !771, !tbaa !500
  %37 = load i32, ptr %thickness, align 4, !dbg !772, !tbaa !500
  %arraydecay34 = getelementptr inbounds [32 x i8], ptr %dash, i64 0, i64 0, !dbg !773
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.9, ptr noundef %arraydecay32, ptr noundef %arraydecay33, i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37, ptr noundef %arraydecay34), !dbg !774
  call void @llvm.lifetime.end.p0(i64 32, ptr %dash) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 12, ptr %complement) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 128, ptr %class) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 128, ptr %id) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 4, ptr %g) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 4, ptr %thickness) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 8, ptr %ou) #7, !dbg !775
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #7, !dbg !775
  ret void, !dbg !775
}

; Function Attrs: nounwind uwtable
define internal void @native_svg_line(ptr noundef %loutput, ptr noundef %lcolor, i32 noundef %depth, i32 noundef %x1, i32 noundef %y1, i32 noundef %x2, i32 noundef %y2, ptr noundef %obj, i32 noundef %line_id) #0 !dbg !776 {
entry:
  %loutput.addr = alloca ptr, align 8
  %lcolor.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %obj.addr = alloca ptr, align 8
  %line_id.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %id = alloca [128 x i8], align 16
  %class = alloca [128 x i8], align 16
  %complement = alloca [12 x i8], align 1
  %type = alloca [64 x i8], align 16
  store ptr %loutput, ptr %loutput.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %loutput.addr, metadata !778, metadata !DIExpression()), !dbg !797
  store ptr %lcolor, ptr %lcolor.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %lcolor.addr, metadata !779, metadata !DIExpression()), !dbg !798
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !780, metadata !DIExpression()), !dbg !799
  store i32 %x1, ptr %x1.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %x1.addr, metadata !781, metadata !DIExpression()), !dbg !800
  store i32 %y1, ptr %y1.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %y1.addr, metadata !782, metadata !DIExpression()), !dbg !801
  store i32 %x2, ptr %x2.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %x2.addr, metadata !783, metadata !DIExpression()), !dbg !802
  store i32 %y2, ptr %y2.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %y2.addr, metadata !784, metadata !DIExpression()), !dbg !803
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !785, metadata !DIExpression()), !dbg !804
  store i32 %line_id, ptr %line_id.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %line_id.addr, metadata !786, metadata !DIExpression()), !dbg !805
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #7, !dbg !806
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !787, metadata !DIExpression()), !dbg !807
  %0 = load ptr, ptr %loutput.addr, align 8, !dbg !808, !tbaa !476
  %file1 = getelementptr inbounds %struct.lstopo_output, ptr %0, i32 0, i32 4, !dbg !809
  %1 = load ptr, ptr %file1, align 8, !dbg !809, !tbaa !508
  store ptr %1, ptr %file, align 8, !dbg !807, !tbaa !476
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #7, !dbg !810
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !788, metadata !DIExpression()), !dbg !811
  %2 = load ptr, ptr %lcolor.addr, align 8, !dbg !812, !tbaa !476
  %r2 = getelementptr inbounds %struct.lstopo_color, ptr %2, i32 0, i32 0, !dbg !813
  %3 = load i32, ptr %r2, align 8, !dbg !813, !tbaa !690
  store i32 %3, ptr %r, align 4, !dbg !811, !tbaa !500
  call void @llvm.lifetime.start.p0(i64 4, ptr %g) #7, !dbg !810
  tail call void @llvm.dbg.declare(metadata ptr %g, metadata !789, metadata !DIExpression()), !dbg !814
  %4 = load ptr, ptr %lcolor.addr, align 8, !dbg !815, !tbaa !476
  %g3 = getelementptr inbounds %struct.lstopo_color, ptr %4, i32 0, i32 1, !dbg !816
  %5 = load i32, ptr %g3, align 4, !dbg !816, !tbaa !695
  store i32 %5, ptr %g, align 4, !dbg !814, !tbaa !500
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #7, !dbg !810
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !790, metadata !DIExpression()), !dbg !817
  %6 = load ptr, ptr %lcolor.addr, align 8, !dbg !818, !tbaa !476
  %b4 = getelementptr inbounds %struct.lstopo_color, ptr %6, i32 0, i32 2, !dbg !819
  %7 = load i32, ptr %b4, align 8, !dbg !819, !tbaa !699
  store i32 %7, ptr %b, align 4, !dbg !817, !tbaa !500
  call void @llvm.lifetime.start.p0(i64 128, ptr %id) #7, !dbg !820
  tail call void @llvm.dbg.declare(metadata ptr %id, metadata !791, metadata !DIExpression()), !dbg !821
  call void @llvm.memset.p0.i64(ptr align 16 %id, i8 0, i64 128, i1 false), !dbg !821
  call void @llvm.lifetime.start.p0(i64 128, ptr %class) #7, !dbg !822
  tail call void @llvm.dbg.declare(metadata ptr %class, metadata !792, metadata !DIExpression()), !dbg !823
  call void @llvm.memset.p0.i64(ptr align 16 %class, i8 0, i64 128, i1 false), !dbg !823
  call void @llvm.lifetime.start.p0(i64 12, ptr %complement) #7, !dbg !824
  tail call void @llvm.dbg.declare(metadata ptr %complement, metadata !793, metadata !DIExpression()), !dbg !825
  call void @llvm.memset.p0.i64(ptr align 1 %complement, i8 0, i64 12, i1 false), !dbg !825
  %8 = load i32, ptr %line_id.addr, align 4, !dbg !826, !tbaa !500
  %tobool = icmp ne i32 %8, 0, !dbg !826
  br i1 %tobool, label %if.then, label %if.end, !dbg !828

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [12 x i8], ptr %complement, i64 0, i64 0, !dbg !829
  %9 = load i32, ptr %line_id.addr, align 4, !dbg !830, !tbaa !500
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 12, ptr noundef @.str.4, i32 noundef %9) #7, !dbg !831
  br label %if.end, !dbg !831

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %obj.addr, align 8, !dbg !832, !tbaa !476
  %tobool5 = icmp ne ptr %10, null, !dbg !832
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !833

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr %type) #7, !dbg !834
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !794, metadata !DIExpression()), !dbg !835
  %arraydecay7 = getelementptr inbounds [64 x i8], ptr %type, i64 0, i64 0, !dbg !836
  %11 = load ptr, ptr %obj.addr, align 8, !dbg !837, !tbaa !476
  %call8 = call i32 @quo_vadis_internal_hwloc_obj_type_snprintf(ptr noundef %arraydecay7, i64 noundef 64, ptr noundef %11, i32 noundef 0), !dbg !838
  %arraydecay9 = getelementptr inbounds [128 x i8], ptr %id, i64 0, i64 0, !dbg !839
  %arraydecay10 = getelementptr inbounds [64 x i8], ptr %type, i64 0, i64 0, !dbg !840
  %12 = load ptr, ptr %obj.addr, align 8, !dbg !841, !tbaa !476
  %logical_index = getelementptr inbounds %struct.quo_vadis_internal_hwloc_obj, ptr %12, i32 0, i32 7, !dbg !842
  %13 = load i32, ptr %logical_index, align 4, !dbg !842, !tbaa !725
  %arraydecay11 = getelementptr inbounds [12 x i8], ptr %complement, i64 0, i64 0, !dbg !843
  %call12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay9, i64 noundef 128, ptr noundef @.str.10, ptr noundef %arraydecay10, i32 noundef %13, ptr noundef %arraydecay11) #7, !dbg !844
  %arraydecay13 = getelementptr inbounds [128 x i8], ptr %class, i64 0, i64 0, !dbg !845
  %arraydecay14 = getelementptr inbounds [64 x i8], ptr %type, i64 0, i64 0, !dbg !846
  %call15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay13, i64 noundef 128, ptr noundef @.str.6, ptr noundef %arraydecay14) #7, !dbg !847
  call void @llvm.lifetime.end.p0(i64 64, ptr %type) #7, !dbg !848
  br label %if.end19, !dbg !849

if.else:                                          ; preds = %if.end
  %arraydecay16 = getelementptr inbounds [128 x i8], ptr %id, i64 0, i64 0, !dbg !850
  %arraydecay17 = getelementptr inbounds [12 x i8], ptr %complement, i64 0, i64 0, !dbg !852
  %call18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay16, i64 noundef 128, ptr noundef @.str.11, ptr noundef %arraydecay17) #7, !dbg !853
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then6
  %14 = load ptr, ptr %file, align 8, !dbg !854, !tbaa !476
  %arraydecay20 = getelementptr inbounds [128 x i8], ptr %id, i64 0, i64 0, !dbg !855
  %arraydecay21 = getelementptr inbounds [128 x i8], ptr %class, i64 0, i64 0, !dbg !856
  %15 = load i32, ptr %x1.addr, align 4, !dbg !857, !tbaa !500
  %16 = load i32, ptr %y1.addr, align 4, !dbg !858, !tbaa !500
  %17 = load i32, ptr %x2.addr, align 4, !dbg !859, !tbaa !500
  %18 = load i32, ptr %y2.addr, align 4, !dbg !860, !tbaa !500
  %19 = load i32, ptr %r, align 4, !dbg !861, !tbaa !500
  %20 = load i32, ptr %g, align 4, !dbg !862, !tbaa !500
  %21 = load i32, ptr %b, align 4, !dbg !863, !tbaa !500
  %22 = load ptr, ptr %loutput.addr, align 8, !dbg !864, !tbaa !476
  %thickness = getelementptr inbounds %struct.lstopo_output, ptr %22, i32 0, i32 40, !dbg !865
  %23 = load i32, ptr %thickness, align 8, !dbg !865, !tbaa !685
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.12, ptr noundef %arraydecay20, ptr noundef %arraydecay21, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %23), !dbg !866
  call void @llvm.lifetime.end.p0(i64 12, ptr %complement) #7, !dbg !867
  call void @llvm.lifetime.end.p0(i64 128, ptr %class) #7, !dbg !867
  call void @llvm.lifetime.end.p0(i64 128, ptr %id) #7, !dbg !867
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #7, !dbg !867
  call void @llvm.lifetime.end.p0(i64 4, ptr %g) #7, !dbg !867
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #7, !dbg !867
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #7, !dbg !867
  ret void, !dbg !867
}

; Function Attrs: nounwind uwtable
define internal void @native_svg_text(ptr noundef %loutput, ptr noundef %lcolor, i32 noundef %size, i32 noundef %depth, i32 noundef %x, i32 noundef %y, ptr noundef %text, ptr noundef %obj, i32 noundef %text_id) #0 !dbg !868 {
entry:
  %loutput.addr = alloca ptr, align 8
  %lcolor.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %text.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %text_id.addr = alloca i32, align 4
  %file = alloca ptr, align 8
  %ou = alloca ptr, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %id = alloca [128 x i8], align 16
  %class = alloca [128 x i8], align 16
  %complement = alloca [12 x i8], align 1
  %fontweight = alloca ptr, align 8
  %type = alloca [64 x i8], align 16
  store ptr %loutput, ptr %loutput.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %loutput.addr, metadata !870, metadata !DIExpression()), !dbg !891
  store ptr %lcolor, ptr %lcolor.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %lcolor.addr, metadata !871, metadata !DIExpression()), !dbg !892
  store i32 %size, ptr %size.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !872, metadata !DIExpression()), !dbg !893
  store i32 %depth, ptr %depth.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !873, metadata !DIExpression()), !dbg !894
  store i32 %x, ptr %x.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !874, metadata !DIExpression()), !dbg !895
  store i32 %y, ptr %y.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !875, metadata !DIExpression()), !dbg !896
  store ptr %text, ptr %text.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %text.addr, metadata !876, metadata !DIExpression()), !dbg !897
  store ptr %obj, ptr %obj.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !877, metadata !DIExpression()), !dbg !898
  store i32 %text_id, ptr %text_id.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %text_id.addr, metadata !878, metadata !DIExpression()), !dbg !899
  call void @llvm.lifetime.start.p0(i64 8, ptr %file) #7, !dbg !900
  tail call void @llvm.dbg.declare(metadata ptr %file, metadata !879, metadata !DIExpression()), !dbg !901
  %0 = load ptr, ptr %loutput.addr, align 8, !dbg !902, !tbaa !476
  %file1 = getelementptr inbounds %struct.lstopo_output, ptr %0, i32 0, i32 4, !dbg !903
  %1 = load ptr, ptr %file1, align 8, !dbg !903, !tbaa !508
  store ptr %1, ptr %file, align 8, !dbg !901, !tbaa !476
  call void @llvm.lifetime.start.p0(i64 8, ptr %ou) #7, !dbg !904
  tail call void @llvm.dbg.declare(metadata ptr %ou, metadata !880, metadata !DIExpression()), !dbg !905
  %2 = load ptr, ptr %obj.addr, align 8, !dbg !906, !tbaa !476
  %tobool = icmp ne ptr %2, null, !dbg !906
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !906

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %obj.addr, align 8, !dbg !907, !tbaa !476
  %userdata = getelementptr inbounds %struct.quo_vadis_internal_hwloc_obj, ptr %3, i32 0, i32 31, !dbg !908
  %4 = load ptr, ptr %userdata, align 8, !dbg !908, !tbaa !679
  br label %cond.end, !dbg !906

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !906

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ null, %cond.false ], !dbg !906
  store ptr %cond, ptr %ou, align 8, !dbg !905, !tbaa !476
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #7, !dbg !909
  tail call void @llvm.dbg.declare(metadata ptr %r, metadata !881, metadata !DIExpression()), !dbg !910
  %5 = load ptr, ptr %lcolor.addr, align 8, !dbg !911, !tbaa !476
  %r2 = getelementptr inbounds %struct.lstopo_color, ptr %5, i32 0, i32 0, !dbg !912
  %6 = load i32, ptr %r2, align 8, !dbg !912, !tbaa !690
  store i32 %6, ptr %r, align 4, !dbg !910, !tbaa !500
  call void @llvm.lifetime.start.p0(i64 4, ptr %g) #7, !dbg !909
  tail call void @llvm.dbg.declare(metadata ptr %g, metadata !882, metadata !DIExpression()), !dbg !913
  %7 = load ptr, ptr %lcolor.addr, align 8, !dbg !914, !tbaa !476
  %g3 = getelementptr inbounds %struct.lstopo_color, ptr %7, i32 0, i32 1, !dbg !915
  %8 = load i32, ptr %g3, align 4, !dbg !915, !tbaa !695
  store i32 %8, ptr %g, align 4, !dbg !913, !tbaa !500
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #7, !dbg !909
  tail call void @llvm.dbg.declare(metadata ptr %b, metadata !883, metadata !DIExpression()), !dbg !916
  %9 = load ptr, ptr %lcolor.addr, align 8, !dbg !917, !tbaa !476
  %b4 = getelementptr inbounds %struct.lstopo_color, ptr %9, i32 0, i32 2, !dbg !918
  %10 = load i32, ptr %b4, align 8, !dbg !918, !tbaa !699
  store i32 %10, ptr %b, align 4, !dbg !916, !tbaa !500
  call void @llvm.lifetime.start.p0(i64 128, ptr %id) #7, !dbg !919
  tail call void @llvm.dbg.declare(metadata ptr %id, metadata !884, metadata !DIExpression()), !dbg !920
  call void @llvm.memset.p0.i64(ptr align 16 %id, i8 0, i64 128, i1 false), !dbg !920
  call void @llvm.lifetime.start.p0(i64 128, ptr %class) #7, !dbg !921
  tail call void @llvm.dbg.declare(metadata ptr %class, metadata !885, metadata !DIExpression()), !dbg !922
  call void @llvm.memset.p0.i64(ptr align 16 %class, i8 0, i64 128, i1 false), !dbg !922
  call void @llvm.lifetime.start.p0(i64 12, ptr %complement) #7, !dbg !923
  tail call void @llvm.dbg.declare(metadata ptr %complement, metadata !886, metadata !DIExpression()), !dbg !924
  call void @llvm.memset.p0.i64(ptr align 1 %complement, i8 0, i64 12, i1 false), !dbg !924
  call void @llvm.lifetime.start.p0(i64 8, ptr %fontweight) #7, !dbg !925
  tail call void @llvm.dbg.declare(metadata ptr %fontweight, metadata !887, metadata !DIExpression()), !dbg !926
  store ptr @.str.13, ptr %fontweight, align 8, !dbg !926, !tbaa !476
  %11 = load i32, ptr %text_id.addr, align 4, !dbg !927, !tbaa !500
  %tobool5 = icmp ne i32 %11, 0, !dbg !927
  br i1 %tobool5, label %if.then, label %if.end, !dbg !929

if.then:                                          ; preds = %cond.end
  %arraydecay = getelementptr inbounds [12 x i8], ptr %complement, i64 0, i64 0, !dbg !930
  %12 = load i32, ptr %text_id.addr, align 4, !dbg !931, !tbaa !500
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 12, ptr noundef @.str.4, i32 noundef %12) #7, !dbg !932
  br label %if.end, !dbg !932

if.end:                                           ; preds = %if.then, %cond.end
  %13 = load ptr, ptr %obj.addr, align 8, !dbg !933, !tbaa !476
  %tobool6 = icmp ne ptr %13, null, !dbg !933
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !934

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr %type) #7, !dbg !935
  tail call void @llvm.dbg.declare(metadata ptr %type, metadata !888, metadata !DIExpression()), !dbg !936
  %arraydecay8 = getelementptr inbounds [64 x i8], ptr %type, i64 0, i64 0, !dbg !937
  %14 = load ptr, ptr %obj.addr, align 8, !dbg !938, !tbaa !476
  %call9 = call i32 @quo_vadis_internal_hwloc_obj_type_snprintf(ptr noundef %arraydecay8, i64 noundef 64, ptr noundef %14, i32 noundef 0), !dbg !939
  %arraydecay10 = getelementptr inbounds [128 x i8], ptr %id, i64 0, i64 0, !dbg !940
  %arraydecay11 = getelementptr inbounds [64 x i8], ptr %type, i64 0, i64 0, !dbg !941
  %15 = load ptr, ptr %obj.addr, align 8, !dbg !942, !tbaa !476
  %logical_index = getelementptr inbounds %struct.quo_vadis_internal_hwloc_obj, ptr %15, i32 0, i32 7, !dbg !943
  %16 = load i32, ptr %logical_index, align 4, !dbg !943, !tbaa !725
  %arraydecay12 = getelementptr inbounds [12 x i8], ptr %complement, i64 0, i64 0, !dbg !944
  %call13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay10, i64 noundef 128, ptr noundef @.str.14, ptr noundef %arraydecay11, i32 noundef %16, ptr noundef %arraydecay12) #7, !dbg !945
  %arraydecay14 = getelementptr inbounds [128 x i8], ptr %class, i64 0, i64 0, !dbg !946
  %arraydecay15 = getelementptr inbounds [64 x i8], ptr %type, i64 0, i64 0, !dbg !947
  %call16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay14, i64 noundef 128, ptr noundef @.str.6, ptr noundef %arraydecay15) #7, !dbg !948
  call void @llvm.lifetime.end.p0(i64 64, ptr %type) #7, !dbg !949
  br label %if.end20, !dbg !950

if.else:                                          ; preds = %if.end
  %arraydecay17 = getelementptr inbounds [128 x i8], ptr %id, i64 0, i64 0, !dbg !951
  %arraydecay18 = getelementptr inbounds [12 x i8], ptr %complement, i64 0, i64 0, !dbg !953
  %call19 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay17, i64 noundef 128, ptr noundef @.str.15, ptr noundef %arraydecay18) #7, !dbg !954
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then7
  %17 = load ptr, ptr %loutput.addr, align 8, !dbg !955, !tbaa !476
  %show_cpukinds = getelementptr inbounds %struct.lstopo_output, ptr %17, i32 0, i32 51, !dbg !957
  %18 = load i32, ptr %show_cpukinds, align 4, !dbg !957, !tbaa !740
  %tobool21 = icmp ne i32 %18, 0, !dbg !955
  br i1 %tobool21, label %land.lhs.true, label %if.end26, !dbg !958

land.lhs.true:                                    ; preds = %if.end20
  %19 = load ptr, ptr %ou, align 8, !dbg !959, !tbaa !476
  %tobool22 = icmp ne ptr %19, null, !dbg !959
  br i1 %tobool22, label %land.lhs.true23, label %if.end26, !dbg !960

land.lhs.true23:                                  ; preds = %land.lhs.true
  %20 = load ptr, ptr %ou, align 8, !dbg !961, !tbaa !476
  %cpukind_style = getelementptr inbounds %struct.lstopo_obj_userdata, ptr %20, i32 0, i32 5, !dbg !962
  %21 = load i32, ptr %cpukind_style, align 4, !dbg !962, !tbaa !746
  %rem = urem i32 %21, 2, !dbg !963
  %tobool24 = icmp ne i32 %rem, 0, !dbg !963
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !964

if.then25:                                        ; preds = %land.lhs.true23
  store ptr @.str.16, ptr %fontweight, align 8, !dbg !965, !tbaa !476
  br label %if.end26, !dbg !966

if.end26:                                         ; preds = %if.then25, %land.lhs.true23, %land.lhs.true, %if.end20
  %22 = load ptr, ptr %file, align 8, !dbg !967, !tbaa !476
  %arraydecay27 = getelementptr inbounds [128 x i8], ptr %id, i64 0, i64 0, !dbg !968
  %arraydecay28 = getelementptr inbounds [128 x i8], ptr %class, i64 0, i64 0, !dbg !969
  %23 = load ptr, ptr %fontweight, align 8, !dbg !970, !tbaa !476
  %24 = load i32, ptr %x.addr, align 4, !dbg !971, !tbaa !500
  %25 = load i32, ptr %y.addr, align 4, !dbg !972, !tbaa !500
  %26 = load i32, ptr %size.addr, align 4, !dbg !973, !tbaa !500
  %add = add i32 %25, %26, !dbg !974
  %27 = load i32, ptr %r, align 4, !dbg !975, !tbaa !500
  %28 = load i32, ptr %g, align 4, !dbg !976, !tbaa !500
  %29 = load i32, ptr %b, align 4, !dbg !977, !tbaa !500
  %30 = load i32, ptr %size.addr, align 4, !dbg !978, !tbaa !500
  %31 = load ptr, ptr %text.addr, align 8, !dbg !979, !tbaa !476
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.17, ptr noundef %arraydecay27, ptr noundef %arraydecay28, ptr noundef %23, i32 noundef %24, i32 noundef %add, i32 noundef %27, i32 noundef %28, i32 noundef %29, i32 noundef %30, ptr noundef %31), !dbg !980
  call void @llvm.lifetime.end.p0(i64 8, ptr %fontweight) #7, !dbg !981
  call void @llvm.lifetime.end.p0(i64 12, ptr %complement) #7, !dbg !981
  call void @llvm.lifetime.end.p0(i64 128, ptr %class) #7, !dbg !981
  call void @llvm.lifetime.end.p0(i64 128, ptr %id) #7, !dbg !981
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #7, !dbg !981
  call void @llvm.lifetime.end.p0(i64 4, ptr %g) #7, !dbg !981
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #7, !dbg !981
  call void @llvm.lifetime.end.p0(i64 8, ptr %ou) #7, !dbg !981
  call void @llvm.lifetime.end.p0(i64 8, ptr %file) #7, !dbg !981
  ret void, !dbg !981
}

; Function Attrs: nounwind uwtable
define internal void @native_svg_textsize(ptr noundef %loutput, ptr noundef %text, i32 noundef %textlength, i32 noundef %fontsize, ptr noundef %width) #0 !dbg !982 {
entry:
  %loutput.addr = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  %textlength.addr = alloca i32, align 4
  %fontsize.addr = alloca i32, align 4
  %width.addr = alloca ptr, align 8
  store ptr %loutput, ptr %loutput.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %loutput.addr, metadata !984, metadata !DIExpression()), !dbg !989
  store ptr %text, ptr %text.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %text.addr, metadata !985, metadata !DIExpression()), !dbg !990
  store i32 %textlength, ptr %textlength.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %textlength.addr, metadata !986, metadata !DIExpression()), !dbg !991
  store i32 %fontsize, ptr %fontsize.addr, align 4, !tbaa !500
  tail call void @llvm.dbg.declare(metadata ptr %fontsize.addr, metadata !987, metadata !DIExpression()), !dbg !992
  store ptr %width, ptr %width.addr, align 8, !tbaa !476
  tail call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !988, metadata !DIExpression()), !dbg !993
  %0 = load i32, ptr %fontsize.addr, align 4, !dbg !994, !tbaa !500
  %mul = mul i32 %0, 11, !dbg !994
  %div = udiv i32 %mul, 9, !dbg !994
  store i32 %div, ptr %fontsize.addr, align 4, !dbg !995, !tbaa !500
  %1 = load i32, ptr %textlength.addr, align 4, !dbg !996, !tbaa !500
  %2 = load i32, ptr %fontsize.addr, align 4, !dbg !996, !tbaa !500
  %mul1 = mul i32 %1, %2, !dbg !996
  %div2 = udiv i32 %mul1, 2, !dbg !996
  %3 = load ptr, ptr %width.addr, align 8, !dbg !997, !tbaa !476
  store i32 %div2, ptr %3, align 4, !dbg !998, !tbaa !500
  ret void, !dbg !999
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare !dbg !1000 i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare !dbg !1004 i32 @quo_vadis_internal_hwloc_obj_type_snprintf(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!462, !463, !464, !465, !466, !467}
!llvm.ident = !{!468}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "libhwloc/utils/lstopo/lstopo-svg.c", directory: "/local-ssd/quo-vadis-ngd6cwnjru4wgycspwlythoi77wb76u5-build/aidengro/spack-stage-quo-vadis-master-ngd6cwnjru4wgycspwlythoi77wb76u5/spack-build-ngd6cwn/hwloc/src", checksumkind: CSK_MD5, checksum: "5bc1693866068b3b59ec0bca5e0b89fa")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 36)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "native_svg_draw_methods", scope: !9, file: !2, line: 117, type: !152, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !10, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !76, globals: !78, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/local-ssd/quo-vadis-ngd6cwnjru4wgycspwlythoi77wb76u5-build/aidengro/spack-stage-quo-vadis-master-ngd6cwnjru4wgycspwlythoi77wb76u5/spack-build-ngd6cwn/hwloc/src/libhwloc/utils/lstopo/lstopo-svg.c", directory: "/local-ssd/quo-vadis-ngd6cwnjru4wgycspwlythoi77wb76u5-build/aidengro/spack-stage-quo-vadis-master-ngd6cwnjru4wgycspwlythoi77wb76u5/spack-build-ngd6cwn/hwloc/src/libhwloc-build/utils/lstopo", checksumkind: CSK_MD5, checksum: "5bc1693866068b3b59ec0bca5e0b89fa")
!11 = !{!12, !20, !25, !49, !55, !60, !64, !72}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lstopo_index_type_e", file: !13, line: 29, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "libhwloc/utils/lstopo/lstopo.h", directory: "/local-ssd/quo-vadis-ngd6cwnjru4wgycspwlythoi77wb76u5-build/aidengro/spack-stage-quo-vadis-master-ngd6cwnjru4wgycspwlythoi77wb76u5/spack-build-ngd6cwn/hwloc/src", checksumkind: CSK_MD5, checksum: "4722245df733073bb0e653d6bfaf7423")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "LSTOPO_INDEX_TYPE_DEFAULT", value: 0)
!17 = !DIEnumerator(name: "LSTOPO_INDEX_TYPE_PHYSICAL", value: 1)
!18 = !DIEnumerator(name: "LSTOPO_INDEX_TYPE_LOGICAL", value: 2)
!19 = !DIEnumerator(name: "LSTOPO_INDEX_TYPE_NONE", value: 3)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lstopo_show_legend_e", file: !13, line: 36, baseType: !14, size: 32, elements: !21)
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "LSTOPO_SHOW_LEGEND_ALL", value: 0)
!23 = !DIEnumerator(name: "LSTOPO_SHOW_LEGEND_NONE", value: 1)
!24 = !DIEnumerator(name: "LSTOPO_SHOW_LEGEND_NO_DEFAULT", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 176, baseType: !14, size: 32, elements: !27)
!26 = !DIFile(filename: "libhwloc/include/hwloc.h", directory: "/local-ssd/quo-vadis-ngd6cwnjru4wgycspwlythoi77wb76u5-build/aidengro/spack-stage-quo-vadis-master-ngd6cwnjru4wgycspwlythoi77wb76u5/spack-build-ngd6cwn/hwloc/src", checksumkind: CSK_MD5, checksum: "2c15872ccf1b063c86d3aa3df289621e")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!28 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_MACHINE", value: 0)
!29 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_PACKAGE", value: 1)
!30 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_CORE", value: 2)
!31 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_PU", value: 3)
!32 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_L1CACHE", value: 4)
!33 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_L2CACHE", value: 5)
!34 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_L3CACHE", value: 6)
!35 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_L4CACHE", value: 7)
!36 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_L5CACHE", value: 8)
!37 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_L1ICACHE", value: 9)
!38 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_L2ICACHE", value: 10)
!39 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_L3ICACHE", value: 11)
!40 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_GROUP", value: 12)
!41 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_NUMANODE", value: 13)
!42 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_BRIDGE", value: 14)
!43 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_PCI_DEVICE", value: 15)
!44 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_OS_DEVICE", value: 16)
!45 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_MISC", value: 17)
!46 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_MEMCACHE", value: 18)
!47 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_DIE", value: 19)
!48 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_TYPE_MAX", value: 20)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lstopo_orient_e", file: !13, line: 22, baseType: !14, size: 32, elements: !50)
!50 = !{!51, !52, !53, !54}
!51 = !DIEnumerator(name: "LSTOPO_ORIENT_NONE", value: 0)
!52 = !DIEnumerator(name: "LSTOPO_ORIENT_HORIZ", value: 1)
!53 = !DIEnumerator(name: "LSTOPO_ORIENT_VERT", value: 2)
!54 = !DIEnumerator(name: "LSTOPO_ORIENT_RECT", value: 3)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quo_vadis_internal_hwloc_obj_cache_type_e", file: !26, line: 326, baseType: !14, size: 32, elements: !56)
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_CACHE_UNIFIED", value: 0)
!58 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_CACHE_DATA", value: 1)
!59 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_CACHE_INSTRUCTION", value: 2)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quo_vadis_internal_hwloc_obj_bridge_type_e", file: !26, line: 333, baseType: !14, size: 32, elements: !61)
!61 = !{!62, !63}
!62 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_BRIDGE_HOST", value: 0)
!63 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_BRIDGE_PCI", value: 1)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quo_vadis_internal_hwloc_obj_osdev_type_e", file: !26, line: 339, baseType: !14, size: 32, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71}
!66 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_OSDEV_BLOCK", value: 0)
!67 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_OSDEV_GPU", value: 1)
!68 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_OSDEV_NETWORK", value: 2)
!69 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_OSDEV_OPENFABRICS", value: 3)
!70 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_OSDEV_DMA", value: 4)
!71 = !DIEnumerator(name: "QUO_VADIS_INTERNAL_hwloc_OBJ_OSDEV_COPROC", value: 5)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lstopo_drawing_e", file: !13, line: 17, baseType: !14, size: 32, elements: !73)
!73 = !{!74, !75}
!74 = !DIEnumerator(name: "LSTOPO_DRAWING_PREPARE", value: 0)
!75 = !DIEnumerator(name: "LSTOPO_DRAWING_DRAW", value: 1)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!78 = !{!0, !79, !84, !89, !7, !94, !99, !104, !109, !114, !119, !124, !126, !128, !133, !138, !140, !142, !147}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 40)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1200, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 150)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 8)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 19)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 12)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 18)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 23)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 896, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 112)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !101, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !111, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 696, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 87)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 1)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !101, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !111, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 20)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 800, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 100)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "draw_methods", file: !13, line: 227, size: 384, elements: !153)
!153 = !{!154, !323, !327, !450, !451, !457}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "declare_color", scope: !152, file: !13, line: 228, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!158, !159, !304}
!158 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lstopo_output", file: !13, line: 47, size: 11712, elements: !161)
!161 = !{!162, !166, !167, !168, !169, !224, !225, !226, !227, !228, !229, !230, !231, !235, !240, !241, !242, !243, !244, !245, !249, !250, !255, !256, !257, !259, !260, !261, !262, !263, !264, !265, !267, !268, !269, !270, !274, !275, !276, !277, !278, !279, !281, !283, !284, !286, !287, !288, !289, !290, !291, !292, !293, !294, !296, !297, !298, !299, !301, !302, !303}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "topology", scope: !160, file: !13, line: 48, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_vadis_internal_hwloc_topology_t", file: !26, line: 691, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DICompositeType(tag: DW_TAG_structure_type, name: "quo_vadis_internal_hwloc_topology", file: !26, line: 686, flags: DIFlagFwdDecl)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !160, file: !13, line: 49, baseType: !14, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "needs_topology_refresh", scope: !160, file: !13, line: 52, baseType: !158, size: 32, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "refreshing", scope: !160, file: !13, line: 54, baseType: !158, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !160, file: !13, line: 57, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !172, line: 7, baseType: !173)
!172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !174, line: 49, size: 1728, elements: !175)
!174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!175 = !{!176, !177, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !192, !194, !195, !196, !200, !202, !204, !205, !208, !210, !213, !216, !217, !218, !222, !223}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !173, file: !174, line: 51, baseType: !158, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !173, file: !174, line: 54, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !173, file: !174, line: 55, baseType: !178, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !173, file: !174, line: 56, baseType: !178, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !173, file: !174, line: 57, baseType: !178, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !173, file: !174, line: 58, baseType: !178, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !173, file: !174, line: 59, baseType: !178, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !173, file: !174, line: 60, baseType: !178, size: 64, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !173, file: !174, line: 61, baseType: !178, size: 64, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !173, file: !174, line: 64, baseType: !178, size: 64, offset: 576)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !173, file: !174, line: 65, baseType: !178, size: 64, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !173, file: !174, line: 66, baseType: !178, size: 64, offset: 704)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !173, file: !174, line: 68, baseType: !190, size: 64, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !174, line: 36, flags: DIFlagFwdDecl)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !173, file: !174, line: 70, baseType: !193, size: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !173, file: !174, line: 72, baseType: !158, size: 32, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !173, file: !174, line: 73, baseType: !158, size: 32, offset: 928)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !173, file: !174, line: 74, baseType: !197, size: 64, offset: 960)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !198, line: 152, baseType: !199)
!198 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!199 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !173, file: !174, line: 77, baseType: !201, size: 16, offset: 1024)
!201 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !173, file: !174, line: 78, baseType: !203, size: 8, offset: 1040)
!203 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !173, file: !174, line: 79, baseType: !135, size: 8, offset: 1048)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !173, file: !174, line: 81, baseType: !206, size: 64, offset: 1088)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !174, line: 43, baseType: null)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !173, file: !174, line: 89, baseType: !209, size: 64, offset: 1152)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !198, line: 153, baseType: !199)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !173, file: !174, line: 91, baseType: !211, size: 64, offset: 1216)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !174, line: 37, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !173, file: !174, line: 92, baseType: !214, size: 64, offset: 1280)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !174, line: 38, flags: DIFlagFwdDecl)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !173, file: !174, line: 93, baseType: !193, size: 64, offset: 1344)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !173, file: !174, line: 94, baseType: !77, size: 64, offset: 1408)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !173, file: !174, line: 95, baseType: !219, size: 64, offset: 1472)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 70, baseType: !221)
!220 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!221 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !173, file: !174, line: 96, baseType: !158, size: 32, offset: 1536)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !173, file: !174, line: 98, baseType: !144, size: 160, offset: 1568)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "overwrite", scope: !160, file: !13, line: 58, baseType: !158, size: 32, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "index_type", scope: !160, file: !13, line: 61, baseType: !12, size: 32, offset: 288)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "verbose_mode", scope: !160, file: !13, line: 62, baseType: !158, size: 32, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_pus", scope: !160, file: !13, line: 63, baseType: !158, size: 32, offset: 352)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_numanodes", scope: !160, file: !13, line: 64, baseType: !158, size: 32, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "pci_collapse_enabled", scope: !160, file: !13, line: 65, baseType: !158, size: 32, offset: 416)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pid_number", scope: !160, file: !13, line: 66, baseType: !158, size: 32, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !160, file: !13, line: 67, baseType: !232, size: 32, offset: 480)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !233, line: 38, baseType: !234)
!233 = !DIFile(filename: "/usr/include/sched.h", directory: "", checksumkind: CSK_MD5, checksum: "52ea601aba54a9937a50019367077a72")
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !198, line: 154, baseType: !158)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "cpubind_set", scope: !160, file: !13, line: 68, baseType: !236, size: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_vadis_internal_hwloc_bitmap_t", file: !237, line: 68, baseType: !238)
!237 = !DIFile(filename: "libhwloc/include/hwloc/bitmap.h", directory: "/local-ssd/quo-vadis-ngd6cwnjru4wgycspwlythoi77wb76u5-build/aidengro/spack-stage-quo-vadis-master-ngd6cwnjru4wgycspwlythoi77wb76u5/spack-build-ngd6cwn/hwloc/src", checksumkind: CSK_MD5, checksum: "55cb5e1523cb3128acaffd24ad6debbe")
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "quo_vadis_internal_hwloc_bitmap_s", file: !237, line: 68, flags: DIFlagFwdDecl)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "membind_set", scope: !160, file: !13, line: 68, baseType: !236, size: 64, offset: 576)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "need_pci_domain", scope: !160, file: !13, line: 71, baseType: !158, size: 32, offset: 640)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpukind_styles", scope: !160, file: !13, line: 72, baseType: !14, size: 32, offset: 672)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "export_synthetic_flags", scope: !160, file: !13, line: 75, baseType: !221, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "export_xml_flags", scope: !160, file: !13, line: 76, baseType: !221, size: 64, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "shmem_output_addr", scope: !160, file: !13, line: 77, baseType: !246, size: 64, offset: 832)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !247, line: 27, baseType: !248)
!247 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !198, line: 45, baseType: !221)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "show_legend", scope: !160, file: !13, line: 80, baseType: !20, size: 32, offset: 896)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "legend_default_lines", scope: !160, file: !13, line: 82, baseType: !251, size: 3072, offset: 928)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 3072, elements: !252)
!252 = !{!253, !254}
!253 = !DISubrange(count: 3)
!254 = !DISubrange(count: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "legend_default_lines_nr", scope: !160, file: !13, line: 83, baseType: !14, size: 32, offset: 4000)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "legend_info_lines_nr", scope: !160, file: !13, line: 84, baseType: !14, size: 32, offset: 4032)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "legend_append", scope: !160, file: !13, line: 85, baseType: !258, size: 64, offset: 4096)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "legend_append_nr", scope: !160, file: !13, line: 86, baseType: !14, size: 32, offset: 4160)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "legend_maxtextwidth", scope: !160, file: !13, line: 87, baseType: !14, size: 32, offset: 4192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "show_distances_only", scope: !160, file: !13, line: 90, baseType: !158, size: 32, offset: 4224)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "show_memattrs_only", scope: !160, file: !13, line: 91, baseType: !158, size: 32, offset: 4256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "show_cpukinds_only", scope: !160, file: !13, line: 92, baseType: !158, size: 32, offset: 4288)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "show_windows_processor_groups_only", scope: !160, file: !13, line: 93, baseType: !158, size: 32, offset: 4320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "show_only", scope: !160, file: !13, line: 94, baseType: !266, size: 32, offset: 4352)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_vadis_internal_hwloc_obj_type_t", file: !26, line: 323, baseType: !25)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "show_cpuset", scope: !160, file: !13, line: 95, baseType: !158, size: 32, offset: 4384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "show_taskset", scope: !160, file: !13, line: 96, baseType: !158, size: 32, offset: 4416)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "transform_distances", scope: !160, file: !13, line: 97, baseType: !158, size: 32, offset: 4448)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "title", scope: !160, file: !13, line: 100, baseType: !271, size: 2048, offset: 4480)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "plain_children_order", scope: !160, file: !13, line: 101, baseType: !14, size: 32, offset: 6528)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "gridsize", scope: !160, file: !13, line: 102, baseType: !14, size: 32, offset: 6560)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "fontsize", scope: !160, file: !13, line: 102, baseType: !14, size: 32, offset: 6592)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "linespacing", scope: !160, file: !13, line: 102, baseType: !14, size: 32, offset: 6624)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "thickness", scope: !160, file: !13, line: 102, baseType: !14, size: 32, offset: 6656)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "text_xscale", scope: !160, file: !13, line: 103, baseType: !280, size: 32, offset: 6688)
!280 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "force_orient", scope: !160, file: !13, line: 104, baseType: !282, size: 640, offset: 6720)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 640, elements: !145)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "no_half_lines", scope: !160, file: !13, line: 105, baseType: !14, size: 32, offset: 7360)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "show_indexes", scope: !160, file: !13, line: 106, baseType: !285, size: 640, offset: 7392)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 640, elements: !145)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "show_text_enabled", scope: !160, file: !13, line: 107, baseType: !158, size: 32, offset: 8032)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "show_text", scope: !160, file: !13, line: 108, baseType: !285, size: 640, offset: 8064)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "show_attrs_enabled", scope: !160, file: !13, line: 109, baseType: !158, size: 32, offset: 8704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "show_attrs", scope: !160, file: !13, line: 110, baseType: !285, size: 640, offset: 8736)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "show_binding", scope: !160, file: !13, line: 111, baseType: !158, size: 32, offset: 9376)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "show_disallowed", scope: !160, file: !13, line: 112, baseType: !158, size: 32, offset: 9408)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "show_cpukinds", scope: !160, file: !13, line: 113, baseType: !158, size: 32, offset: 9440)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "factorize_enabled", scope: !160, file: !13, line: 114, baseType: !158, size: 32, offset: 9472)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "factorize_min", scope: !160, file: !13, line: 115, baseType: !295, size: 640, offset: 9504)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 640, elements: !145)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "factorize_first", scope: !160, file: !13, line: 118, baseType: !295, size: 640, offset: 10144)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "factorize_last", scope: !160, file: !13, line: 119, baseType: !295, size: 640, offset: 10784)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "backend_data", scope: !160, file: !13, line: 122, baseType: !77, size: 64, offset: 11456)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !160, file: !13, line: 123, baseType: !300, size: 64, offset: 11520)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "drawing", scope: !160, file: !13, line: 124, baseType: !72, size: 32, offset: 11584)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !160, file: !13, line: 125, baseType: !14, size: 32, offset: 11616)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !160, file: !13, line: 125, baseType: !14, size: 32, offset: 11648)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lstopo_color", file: !13, line: 128, size: 256, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !322}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !305, file: !13, line: 130, baseType: !158, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !305, file: !13, line: 130, baseType: !158, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !305, file: !13, line: 130, baseType: !158, size: 32, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !305, file: !13, line: 131, baseType: !158, size: 32, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !305, file: !13, line: 148, baseType: !312, size: 32, offset: 128)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "lstopo_color_private_u", file: !13, line: 135, size: 32, elements: !313)
!313 = !{!314, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !312, file: !13, line: 138, baseType: !315, size: 32)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lstopo_color_private_ascii_s", file: !13, line: 136, size: 32, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !315, file: !13, line: 137, baseType: !158, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "fig", scope: !312, file: !13, line: 141, baseType: !319, size: 32)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lstopo_color_private_fig_s", file: !13, line: 139, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !319, file: !13, line: 140, baseType: !158, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !13, line: 150, baseType: !304, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_color", scope: !152, file: !13, line: 229, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !159, !304}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "box", scope: !152, file: !13, line: 231, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !159, !331, !14, !14, !14, !14, !14, !333, !14}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_vadis_internal_hwloc_obj_t", file: !26, line: 595, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_vadis_internal_hwloc_obj", file: !26, line: 395, size: 1984, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !344, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !437, !438, !440, !441, !447, !448, !449}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !335, file: !26, line: 397, baseType: !266, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !335, file: !26, line: 398, baseType: !178, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "os_index", scope: !335, file: !26, line: 400, baseType: !14, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !26, line: 407, baseType: !178, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "total_memory", scope: !335, file: !26, line: 412, baseType: !342, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "hwloc_uint64_t", file: !343, line: 217, baseType: !246)
!343 = !DIFile(filename: "include/hwloc/autogen/config.h", directory: "/local-ssd/quo-vadis-ngd6cwnjru4wgycspwlythoi77wb76u5-build/aidengro/spack-stage-quo-vadis-master-ngd6cwnjru4wgycspwlythoi77wb76u5/spack-build-ngd6cwn/hwloc/src/libhwloc-build", checksumkind: CSK_MD5, checksum: "f8cc096ea8bdbe5a6802fabd84472707")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !335, file: !26, line: 414, baseType: !345, size: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "quo_vadis_internal_hwloc_obj_attr_u", file: !26, line: 598, size: 320, elements: !347)
!347 = !{!348, !359, !368, !376, !390, !410}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "numanode", scope: !346, file: !26, line: 612, baseType: !349, size: 192)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_vadis_internal_hwloc_numanode_attr_s", file: !26, line: 600, size: 192, elements: !350)
!350 = !{!351, !352, !353}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "local_memory", scope: !349, file: !26, line: 601, baseType: !342, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "page_types_len", scope: !349, file: !26, line: 602, baseType: !14, size: 32, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "page_types", scope: !349, file: !26, line: 611, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_vadis_internal_hwloc_memory_page_type_s", file: !26, line: 608, size: 128, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !355, file: !26, line: 609, baseType: !342, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !355, file: !26, line: 610, baseType: !342, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !346, file: !26, line: 622, baseType: !360, size: 192)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_vadis_internal_hwloc_cache_attr_s", file: !26, line: 615, size: 192, elements: !361)
!361 = !{!362, !363, !364, !365, !366}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !360, file: !26, line: 616, baseType: !342, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !360, file: !26, line: 617, baseType: !14, size: 32, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "linesize", scope: !360, file: !26, line: 618, baseType: !14, size: 32, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "associativity", scope: !360, file: !26, line: 619, baseType: !158, size: 32, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !360, file: !26, line: 621, baseType: !367, size: 32, offset: 160)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_vadis_internal_hwloc_obj_cache_type_t", file: !26, line: 330, baseType: !55)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !346, file: !26, line: 630, baseType: !369, size: 128)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_vadis_internal_hwloc_group_attr_s", file: !26, line: 624, size: 128, elements: !370)
!370 = !{!371, !372, !373, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !369, file: !26, line: 625, baseType: !14, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !369, file: !26, line: 627, baseType: !14, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "subkind", scope: !369, file: !26, line: 628, baseType: !14, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dont_merge", scope: !369, file: !26, line: 629, baseType: !375, size: 8, offset: 96)
!375 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pcidev", scope: !346, file: !26, line: 643, baseType: !377, size: 192)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_vadis_internal_hwloc_pcidev_attr_s", file: !26, line: 632, size: 192, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !377, file: !26, line: 634, baseType: !201, size: 16)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !377, file: !26, line: 638, baseType: !375, size: 8, offset: 16)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !377, file: !26, line: 638, baseType: !375, size: 8, offset: 24)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !377, file: !26, line: 638, baseType: !375, size: 8, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !377, file: !26, line: 639, baseType: !201, size: 16, offset: 48)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !377, file: !26, line: 640, baseType: !201, size: 16, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !377, file: !26, line: 640, baseType: !201, size: 16, offset: 80)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor_id", scope: !377, file: !26, line: 640, baseType: !201, size: 16, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice_id", scope: !377, file: !26, line: 640, baseType: !201, size: 16, offset: 112)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !377, file: !26, line: 641, baseType: !375, size: 8, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "linkspeed", scope: !377, file: !26, line: 642, baseType: !280, size: 32, offset: 160)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !346, file: !26, line: 662, baseType: !391, size: 320)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_vadis_internal_hwloc_bridge_attr_s", file: !26, line: 645, size: 320, elements: !392)
!392 = !{!393, !397, !399, !408, !409}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "upstream", scope: !391, file: !26, line: 648, baseType: !394, size: 192)
!394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !26, line: 646, size: 192, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !394, file: !26, line: 647, baseType: !377, size: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "upstream_type", scope: !391, file: !26, line: 649, baseType: !398, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_vadis_internal_hwloc_obj_bridge_type_t", file: !26, line: 336, baseType: !60)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "downstream", scope: !391, file: !26, line: 659, baseType: !400, size: 32, offset: 224)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !26, line: 650, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !400, file: !26, line: 658, baseType: !403, size: 32)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !26, line: 651, size: 32, elements: !404)
!404 = !{!405, !406, !407}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !403, file: !26, line: 653, baseType: !201, size: 16)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "secondary_bus", scope: !403, file: !26, line: 657, baseType: !375, size: 8, offset: 16)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate_bus", scope: !403, file: !26, line: 657, baseType: !375, size: 8, offset: 24)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "downstream_type", scope: !391, file: !26, line: 660, baseType: !398, size: 32, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !391, file: !26, line: 661, baseType: !14, size: 32, offset: 288)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "osdev", scope: !346, file: !26, line: 666, baseType: !411, size: 32)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_vadis_internal_hwloc_osdev_attr_s", file: !26, line: 664, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !411, file: !26, line: 665, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_vadis_internal_hwloc_obj_osdev_type_t", file: !26, line: 355, baseType: !64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !335, file: !26, line: 418, baseType: !158, size: 32, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "logical_index", scope: !335, file: !26, line: 433, baseType: !14, size: 32, offset: 416)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next_cousin", scope: !335, file: !26, line: 441, baseType: !334, size: 64, offset: 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cousin", scope: !335, file: !26, line: 442, baseType: !334, size: 64, offset: 512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !335, file: !26, line: 445, baseType: !334, size: 64, offset: 576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_rank", scope: !335, file: !26, line: 446, baseType: !14, size: 32, offset: 640)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next_sibling", scope: !335, file: !26, line: 447, baseType: !334, size: 64, offset: 704)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sibling", scope: !335, file: !26, line: 448, baseType: !334, size: 64, offset: 768)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !335, file: !26, line: 451, baseType: !14, size: 32, offset: 832)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !335, file: !26, line: 455, baseType: !425, size: 64, offset: 896)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "first_child", scope: !335, file: !26, line: 456, baseType: !334, size: 64, offset: 960)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "last_child", scope: !335, file: !26, line: 457, baseType: !334, size: 64, offset: 1024)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "symmetric_subtree", scope: !335, file: !26, line: 460, baseType: !158, size: 32, offset: 1088)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "memory_arity", scope: !335, file: !26, line: 471, baseType: !14, size: 32, offset: 1120)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "memory_first_child", scope: !335, file: !26, line: 474, baseType: !334, size: 64, offset: 1152)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "io_arity", scope: !335, file: !26, line: 489, baseType: !14, size: 32, offset: 1216)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "io_first_child", scope: !335, file: !26, line: 492, baseType: !334, size: 64, offset: 1280)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "misc_arity", scope: !335, file: !26, line: 501, baseType: !14, size: 32, offset: 1344)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "misc_first_child", scope: !335, file: !26, line: 504, baseType: !334, size: 64, offset: 1408)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset", scope: !335, file: !26, line: 511, baseType: !436, size: 64, offset: 1472)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_vadis_internal_hwloc_cpuset_t", file: !26, line: 140, baseType: !236)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "complete_cpuset", scope: !335, file: !26, line: 526, baseType: !436, size: 64, offset: 1536)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "nodeset", scope: !335, file: !26, line: 539, baseType: !439, size: 64, offset: 1600)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "quo_vadis_internal_hwloc_nodeset_t", file: !26, line: 157, baseType: !236)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "complete_nodeset", scope: !335, file: !26, line: 561, baseType: !439, size: 64, offset: 1664)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "infos", scope: !335, file: !26, line: 577, baseType: !442, size: 64, offset: 1728)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quo_vadis_internal_hwloc_info_s", file: !26, line: 673, size: 128, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !443, file: !26, line: 674, baseType: !178, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !443, file: !26, line: 675, baseType: !178, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "infos_count", scope: !335, file: !26, line: 578, baseType: !14, size: 32, offset: 1792)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "userdata", scope: !335, file: !26, line: 581, baseType: !77, size: 64, offset: 1856)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "gp_index", scope: !335, file: !26, line: 586, baseType: !342, size: 64, offset: 1920)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !152, file: !13, line: 232, baseType: !328, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !152, file: !13, line: 233, baseType: !452, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !159, !331, !158, !14, !14, !14, !455, !333, !14}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "textsize", scope: !152, file: !13, line: 235, baseType: !458, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !159, !455, !14, !14, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!462 = !{i32 7, !"Dwarf Version", i32 5}
!463 = !{i32 2, !"Debug Info Version", i32 3}
!464 = !{i32 1, !"wchar_size", i32 4}
!465 = !{i32 8, !"PIC Level", i32 2}
!466 = !{i32 7, !"PIE Level", i32 2}
!467 = !{i32 7, !"uwtable", i32 2}
!468 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!469 = distinct !DISubprogram(name: "output_nativesvg", scope: !2, file: !2, line: 126, type: !470, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!158, !159, !455}
!472 = !{!473, !474, !475}
!473 = !DILocalVariable(name: "loutput", arg: 1, scope: !469, file: !2, line: 126, type: !159)
!474 = !DILocalVariable(name: "filename", arg: 2, scope: !469, file: !2, line: 126, type: !455)
!475 = !DILocalVariable(name: "output", scope: !469, file: !2, line: 128, type: !170)
!476 = !{!477, !477, i64 0}
!477 = !{!"any pointer", !478, i64 0}
!478 = !{!"omnipotent char", !479, i64 0}
!479 = !{!"Simple C/C++ TBAA"}
!480 = !DILocation(line: 126, column: 45, scope: !469)
!481 = !DILocation(line: 126, column: 66, scope: !469)
!482 = !DILocation(line: 128, column: 3, scope: !469)
!483 = !DILocation(line: 128, column: 9, scope: !469)
!484 = !DILocation(line: 128, column: 30, scope: !469)
!485 = !DILocation(line: 128, column: 40, scope: !469)
!486 = !DILocation(line: 128, column: 49, scope: !469)
!487 = !{!488, !489, i64 32}
!488 = !{!"lstopo_output", !477, i64 0, !489, i64 8, !489, i64 12, !489, i64 16, !477, i64 24, !489, i64 32, !478, i64 36, !489, i64 40, !489, i64 44, !489, i64 48, !489, i64 52, !489, i64 56, !489, i64 60, !477, i64 64, !477, i64 72, !489, i64 80, !489, i64 84, !490, i64 88, !490, i64 96, !490, i64 104, !478, i64 112, !478, i64 116, !489, i64 500, !489, i64 504, !477, i64 512, !489, i64 520, !489, i64 524, !489, i64 528, !489, i64 532, !489, i64 536, !489, i64 540, !478, i64 544, !489, i64 548, !489, i64 552, !489, i64 556, !478, i64 560, !489, i64 816, !489, i64 820, !489, i64 824, !489, i64 828, !489, i64 832, !491, i64 836, !478, i64 840, !489, i64 920, !478, i64 924, !489, i64 1004, !478, i64 1008, !489, i64 1088, !478, i64 1092, !489, i64 1172, !489, i64 1176, !489, i64 1180, !489, i64 1184, !478, i64 1188, !478, i64 1268, !478, i64 1348, !477, i64 1432, !477, i64 1440, !478, i64 1448, !489, i64 1452, !489, i64 1456}
!489 = !{!"int", !478, i64 0}
!490 = !{!"long", !478, i64 0}
!491 = !{!"float", !478, i64 0}
!492 = !DILocation(line: 128, column: 18, scope: !469)
!493 = !DILocation(line: 129, column: 8, scope: !494)
!494 = distinct !DILexicalBlock(scope: !469, file: !2, line: 129, column: 7)
!495 = !DILocation(line: 129, column: 7, scope: !469)
!496 = !DILocation(line: 130, column: 13, scope: !497)
!497 = distinct !DILexicalBlock(scope: !494, file: !2, line: 129, column: 16)
!498 = !DILocation(line: 130, column: 61, scope: !497)
!499 = !DILocation(line: 130, column: 80, scope: !497)
!500 = !{!489, !489, i64 0}
!501 = !DILocation(line: 130, column: 71, scope: !497)
!502 = !DILocation(line: 130, column: 5, scope: !497)
!503 = !DILocation(line: 131, column: 5, scope: !497)
!504 = !DILocation(line: 134, column: 19, scope: !469)
!505 = !DILocation(line: 134, column: 3, scope: !469)
!506 = !DILocation(line: 134, column: 12, scope: !469)
!507 = !DILocation(line: 134, column: 17, scope: !469)
!508 = !{!488, !477, i64 24}
!509 = !DILocation(line: 135, column: 3, scope: !469)
!510 = !DILocation(line: 135, column: 12, scope: !469)
!511 = !DILocation(line: 135, column: 20, scope: !469)
!512 = !{!488, !477, i64 1440}
!513 = !DILocation(line: 138, column: 3, scope: !469)
!514 = !DILocation(line: 138, column: 12, scope: !469)
!515 = !DILocation(line: 138, column: 20, scope: !469)
!516 = !{!488, !478, i64 1448}
!517 = !DILocation(line: 139, column: 15, scope: !469)
!518 = !DILocation(line: 139, column: 3, scope: !469)
!519 = !DILocation(line: 140, column: 3, scope: !469)
!520 = !DILocation(line: 140, column: 12, scope: !469)
!521 = !DILocation(line: 140, column: 20, scope: !469)
!522 = !DILocation(line: 142, column: 11, scope: !469)
!523 = !DILocation(line: 142, column: 3, scope: !469)
!524 = !DILocation(line: 143, column: 11, scope: !469)
!525 = !DILocation(line: 144, column: 4, scope: !469)
!526 = !DILocation(line: 144, column: 13, scope: !469)
!527 = !{!488, !489, i64 1452}
!528 = !DILocation(line: 144, column: 20, scope: !469)
!529 = !DILocation(line: 144, column: 29, scope: !469)
!530 = !{!488, !489, i64 1456}
!531 = !DILocation(line: 144, column: 37, scope: !469)
!532 = !DILocation(line: 144, column: 46, scope: !469)
!533 = !DILocation(line: 144, column: 53, scope: !469)
!534 = !DILocation(line: 144, column: 62, scope: !469)
!535 = !DILocation(line: 143, column: 3, scope: !469)
!536 = !DILocation(line: 147, column: 18, scope: !469)
!537 = !DILocation(line: 147, column: 3, scope: !469)
!538 = !DILocation(line: 148, column: 32, scope: !469)
!539 = !DILocation(line: 148, column: 3, scope: !469)
!540 = !DILocation(line: 150, column: 15, scope: !469)
!541 = !DILocation(line: 150, column: 3, scope: !469)
!542 = !DILocation(line: 151, column: 11, scope: !469)
!543 = !DILocation(line: 151, column: 3, scope: !469)
!544 = !DILocation(line: 153, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !469, file: !2, line: 153, column: 7)
!546 = !DILocation(line: 153, column: 17, scope: !545)
!547 = !DILocation(line: 153, column: 14, scope: !545)
!548 = !DILocation(line: 153, column: 7, scope: !469)
!549 = !DILocation(line: 154, column: 12, scope: !545)
!550 = !DILocation(line: 154, column: 5, scope: !545)
!551 = !DILocation(line: 156, column: 18, scope: !469)
!552 = !DILocation(line: 156, column: 3, scope: !469)
!553 = !DILocation(line: 157, column: 3, scope: !469)
!554 = !DILocation(line: 158, column: 1, scope: !469)
!555 = !DISubprogram(name: "open_output", scope: !13, file: !13, line: 42, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DISubroutineType(types: !557)
!557 = !{!170, !455, !158}
!558 = !DISubprogram(name: "fprintf", scope: !559, file: !559, line: 350, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!559 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!560 = !DISubroutineType(types: !561)
!561 = !{!158, !562, !563, null}
!562 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !170)
!563 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !455)
!564 = !DISubprogram(name: "strerror", scope: !565, file: !565, line: 419, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!566 = !DISubroutineType(types: !567)
!567 = !{!178, !158}
!568 = !DISubprogram(name: "__errno_location", scope: !569, file: !569, line: 37, type: !570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!570 = !DISubroutineType(types: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!573 = !DISubprogram(name: "output_draw", scope: !13, file: !13, line: 238, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !159}
!576 = !DISubprogram(name: "declare_colors", scope: !13, file: !13, line: 241, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!577 = !DISubprogram(name: "lstopo_prepare_custom_styles", scope: !13, file: !13, line: 240, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DISubprogram(name: "fclose", scope: !559, file: !559, line: 178, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!579 = !DISubroutineType(types: !580)
!580 = !{!158, !170}
!581 = !DISubprogram(name: "destroy_colors", scope: !13, file: !13, line: 242, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!582 = distinct !DISubprogram(name: "native_svg_box", scope: !2, file: !2, line: 20, type: !329, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !644, !645, !646, !647, !648, !649, !650, !651, !655}
!584 = !DILocalVariable(name: "loutput", arg: 1, scope: !582, file: !2, line: 20, type: !159)
!585 = !DILocalVariable(name: "lcolor", arg: 2, scope: !582, file: !2, line: 20, type: !331)
!586 = !DILocalVariable(name: "depth", arg: 3, scope: !582, file: !2, line: 20, type: !14)
!587 = !DILocalVariable(name: "x", arg: 4, scope: !582, file: !2, line: 20, type: !14)
!588 = !DILocalVariable(name: "width", arg: 5, scope: !582, file: !2, line: 20, type: !14)
!589 = !DILocalVariable(name: "y", arg: 6, scope: !582, file: !2, line: 20, type: !14)
!590 = !DILocalVariable(name: "height", arg: 7, scope: !582, file: !2, line: 20, type: !14)
!591 = !DILocalVariable(name: "obj", arg: 8, scope: !582, file: !2, line: 20, type: !333)
!592 = !DILocalVariable(name: "box_id", arg: 9, scope: !582, file: !2, line: 20, type: !14)
!593 = !DILocalVariable(name: "file", scope: !582, file: !2, line: 22, type: !170)
!594 = !DILocalVariable(name: "ou", scope: !582, file: !2, line: 23, type: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lstopo_obj_userdata", file: !13, line: 166, size: 5696, elements: !597)
!597 = !{!598, !607, !608, !609, !615, !616, !617, !618, !619, !629, !630, !631, !632, !633, !642, !643}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !596, file: !13, line: 168, baseType: !599, size: 256)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwloc_utils_userdata", file: !600, line: 474, size: 256, elements: !601)
!600 = !DIFile(filename: "libhwloc/utils/hwloc/misc.h", directory: "/local-ssd/quo-vadis-ngd6cwnjru4wgycspwlythoi77wb76u5-build/aidengro/spack-stage-quo-vadis-master-ngd6cwnjru4wgycspwlythoi77wb76u5/spack-build-ngd6cwn/hwloc/src", checksumkind: CSK_MD5, checksum: "bc5a109a7c7905229969db564920d724")
!601 = !{!602, !603, !604, !605}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !599, file: !600, line: 475, baseType: !178, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !599, file: !600, line: 476, baseType: !219, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !599, file: !600, line: 477, baseType: !178, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !599, file: !600, line: 478, baseType: !606, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "pci_collapsed", scope: !596, file: !13, line: 171, baseType: !158, size: 32, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "factorized", scope: !596, file: !13, line: 172, baseType: !158, size: 32, offset: 288)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !596, file: !13, line: 175, baseType: !610, size: 192, offset: 320)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lstopo_style", file: !13, line: 153, size: 192, elements: !611)
!611 = !{!612, !613, !614}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !610, file: !13, line: 155, baseType: !304, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !610, file: !13, line: 156, baseType: !304, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "t2", scope: !610, file: !13, line: 157, baseType: !304, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "style_set", scope: !596, file: !13, line: 179, baseType: !14, size: 32, offset: 512)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cpukind_style", scope: !596, file: !13, line: 182, baseType: !14, size: 32, offset: 544)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !596, file: !13, line: 185, baseType: !14, size: 32, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !596, file: !13, line: 186, baseType: !14, size: 32, offset: 608)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !596, file: !13, line: 198, baseType: !620, size: 256, offset: 640)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lstopo_children_position", file: !13, line: 190, size: 256, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "kinds", scope: !620, file: !13, line: 191, baseType: !14, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !620, file: !13, line: 192, baseType: !14, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !620, file: !13, line: 193, baseType: !14, size: 32, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "xrel", scope: !620, file: !13, line: 194, baseType: !14, size: 32, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "yrel", scope: !620, file: !13, line: 195, baseType: !14, size: 32, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "box", scope: !620, file: !13, line: 196, baseType: !14, size: 32, offset: 160)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "boxcolor", scope: !620, file: !13, line: 197, baseType: !304, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "above_children", scope: !596, file: !13, line: 200, baseType: !620, size: 256, offset: 896)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "xrel", scope: !596, file: !13, line: 203, baseType: !14, size: 32, offset: 1152)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "yrel", scope: !596, file: !13, line: 204, baseType: !14, size: 32, offset: 1184)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "orient", scope: !596, file: !13, line: 207, baseType: !49, size: 32, offset: 1216)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !596, file: !13, line: 215, baseType: !634, size: 4352, offset: 1248)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 4352, elements: !97)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lstopo_text_line", file: !13, line: 211, size: 1088, elements: !636)
!636 = !{!637, !640, !641}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !635, file: !13, line: 212, baseType: !638, size: 1024)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !639)
!639 = !{!254}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !635, file: !13, line: 213, baseType: !14, size: 32, offset: 1024)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !635, file: !13, line: 214, baseType: !14, size: 32, offset: 1056)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ntext", scope: !596, file: !13, line: 216, baseType: !14, size: 32, offset: 5600)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "textwidth", scope: !596, file: !13, line: 217, baseType: !14, size: 32, offset: 5632)
!644 = !DILocalVariable(name: "thickness", scope: !582, file: !2, line: 24, type: !14)
!645 = !DILocalVariable(name: "r", scope: !582, file: !2, line: 25, type: !158)
!646 = !DILocalVariable(name: "g", scope: !582, file: !2, line: 25, type: !158)
!647 = !DILocalVariable(name: "b", scope: !582, file: !2, line: 25, type: !158)
!648 = !DILocalVariable(name: "id", scope: !582, file: !2, line: 26, type: !638)
!649 = !DILocalVariable(name: "class", scope: !582, file: !2, line: 27, type: !638)
!650 = !DILocalVariable(name: "complement", scope: !582, file: !2, line: 28, type: !106)
!651 = !DILocalVariable(name: "dash", scope: !582, file: !2, line: 29, type: !652)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 32)
!655 = !DILocalVariable(name: "type", scope: !656, file: !2, line: 35, type: !658)
!656 = distinct !DILexicalBlock(scope: !657, file: !2, line: 34, column: 12)
!657 = distinct !DILexicalBlock(scope: !582, file: !2, line: 34, column: 7)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 64)
!661 = !DILocation(line: 20, column: 38, scope: !582)
!662 = !DILocation(line: 20, column: 74, scope: !582)
!663 = !DILocation(line: 20, column: 91, scope: !582)
!664 = !DILocation(line: 20, column: 132, scope: !582)
!665 = !DILocation(line: 20, column: 144, scope: !582)
!666 = !DILocation(line: 20, column: 160, scope: !582)
!667 = !DILocation(line: 20, column: 172, scope: !582)
!668 = !DILocation(line: 20, column: 192, scope: !582)
!669 = !DILocation(line: 20, column: 206, scope: !582)
!670 = !DILocation(line: 22, column: 3, scope: !582)
!671 = !DILocation(line: 22, column: 9, scope: !582)
!672 = !DILocation(line: 22, column: 16, scope: !582)
!673 = !DILocation(line: 22, column: 25, scope: !582)
!674 = !DILocation(line: 23, column: 3, scope: !582)
!675 = !DILocation(line: 23, column: 31, scope: !582)
!676 = !DILocation(line: 23, column: 36, scope: !582)
!677 = !DILocation(line: 23, column: 42, scope: !582)
!678 = !DILocation(line: 23, column: 47, scope: !582)
!679 = !{!680, !477, i64 232}
!680 = !{!"quo_vadis_internal_hwloc_obj", !478, i64 0, !477, i64 8, !489, i64 16, !477, i64 24, !490, i64 32, !477, i64 40, !489, i64 48, !489, i64 52, !477, i64 56, !477, i64 64, !477, i64 72, !489, i64 80, !477, i64 88, !477, i64 96, !489, i64 104, !477, i64 112, !477, i64 120, !477, i64 128, !489, i64 136, !489, i64 140, !477, i64 144, !489, i64 152, !477, i64 160, !489, i64 168, !477, i64 176, !477, i64 184, !477, i64 192, !477, i64 200, !477, i64 208, !477, i64 216, !489, i64 224, !477, i64 232, !490, i64 240}
!681 = !DILocation(line: 24, column: 3, scope: !582)
!682 = !DILocation(line: 24, column: 12, scope: !582)
!683 = !DILocation(line: 24, column: 24, scope: !582)
!684 = !DILocation(line: 24, column: 33, scope: !582)
!685 = !{!488, !489, i64 832}
!686 = !DILocation(line: 25, column: 3, scope: !582)
!687 = !DILocation(line: 25, column: 7, scope: !582)
!688 = !DILocation(line: 25, column: 11, scope: !582)
!689 = !DILocation(line: 25, column: 19, scope: !582)
!690 = !{!691, !489, i64 0}
!691 = !{!"lstopo_color", !489, i64 0, !489, i64 4, !489, i64 8, !489, i64 12, !478, i64 16, !477, i64 24}
!692 = !DILocation(line: 25, column: 22, scope: !582)
!693 = !DILocation(line: 25, column: 26, scope: !582)
!694 = !DILocation(line: 25, column: 34, scope: !582)
!695 = !{!691, !489, i64 4}
!696 = !DILocation(line: 25, column: 37, scope: !582)
!697 = !DILocation(line: 25, column: 41, scope: !582)
!698 = !DILocation(line: 25, column: 49, scope: !582)
!699 = !{!691, !489, i64 8}
!700 = !DILocation(line: 26, column: 3, scope: !582)
!701 = !DILocation(line: 26, column: 8, scope: !582)
!702 = !DILocation(line: 27, column: 3, scope: !582)
!703 = !DILocation(line: 27, column: 8, scope: !582)
!704 = !DILocation(line: 28, column: 3, scope: !582)
!705 = !DILocation(line: 28, column: 8, scope: !582)
!706 = !DILocation(line: 29, column: 3, scope: !582)
!707 = !DILocation(line: 29, column: 8, scope: !582)
!708 = !DILocation(line: 31, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !582, file: !2, line: 31, column: 7)
!710 = !DILocation(line: 31, column: 7, scope: !582)
!711 = !DILocation(line: 32, column: 14, scope: !709)
!712 = !DILocation(line: 32, column: 52, scope: !709)
!713 = !DILocation(line: 32, column: 5, scope: !709)
!714 = !DILocation(line: 34, column: 7, scope: !657)
!715 = !DILocation(line: 34, column: 7, scope: !582)
!716 = !DILocation(line: 35, column: 5, scope: !656)
!717 = !DILocation(line: 35, column: 10, scope: !656)
!718 = !DILocation(line: 36, column: 29, scope: !656)
!719 = !DILocation(line: 36, column: 49, scope: !656)
!720 = !DILocation(line: 36, column: 5, scope: !656)
!721 = !DILocation(line: 37, column: 14, scope: !656)
!722 = !DILocation(line: 37, column: 51, scope: !656)
!723 = !DILocation(line: 37, column: 57, scope: !656)
!724 = !DILocation(line: 37, column: 62, scope: !656)
!725 = !{!680, !489, i64 52}
!726 = !DILocation(line: 37, column: 77, scope: !656)
!727 = !DILocation(line: 37, column: 5, scope: !656)
!728 = !DILocation(line: 38, column: 14, scope: !656)
!729 = !DILocation(line: 38, column: 50, scope: !656)
!730 = !DILocation(line: 38, column: 5, scope: !656)
!731 = !DILocation(line: 39, column: 3, scope: !657)
!732 = !DILocation(line: 39, column: 3, scope: !656)
!733 = !DILocation(line: 40, column: 14, scope: !734)
!734 = distinct !DILexicalBlock(scope: !657, file: !2, line: 39, column: 10)
!735 = !DILocation(line: 40, column: 50, scope: !734)
!736 = !DILocation(line: 40, column: 5, scope: !734)
!737 = !DILocation(line: 43, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !582, file: !2, line: 43, column: 7)
!739 = !DILocation(line: 43, column: 16, scope: !738)
!740 = !{!488, !489, i64 1180}
!741 = !DILocation(line: 43, column: 30, scope: !738)
!742 = !DILocation(line: 43, column: 33, scope: !738)
!743 = !DILocation(line: 43, column: 36, scope: !738)
!744 = !DILocation(line: 43, column: 39, scope: !738)
!745 = !DILocation(line: 43, column: 43, scope: !738)
!746 = !{!747, !489, i64 68}
!747 = !{!"lstopo_obj_userdata", !748, i64 0, !489, i64 32, !489, i64 36, !749, i64 40, !489, i64 64, !489, i64 68, !489, i64 72, !489, i64 76, !750, i64 80, !750, i64 112, !489, i64 144, !489, i64 148, !478, i64 152, !478, i64 156, !489, i64 700, !489, i64 704}
!748 = !{!"hwloc_utils_userdata", !477, i64 0, !490, i64 8, !477, i64 16, !477, i64 24}
!749 = !{!"lstopo_style", !477, i64 0, !477, i64 8, !477, i64 16}
!750 = !{!"lstopo_children_position", !489, i64 0, !489, i64 4, !489, i64 8, !489, i64 12, !489, i64 16, !489, i64 20, !477, i64 24}
!751 = !DILocation(line: 43, column: 7, scope: !582)
!752 = !DILocation(line: 44, column: 14, scope: !753)
!753 = distinct !DILexicalBlock(scope: !738, file: !2, line: 43, column: 58)
!754 = !DILocation(line: 44, column: 68, scope: !753)
!755 = !DILocation(line: 44, column: 72, scope: !753)
!756 = !DILocation(line: 44, column: 65, scope: !753)
!757 = !DILocation(line: 44, column: 5, scope: !753)
!758 = !DILocation(line: 45, column: 18, scope: !753)
!759 = !DILocation(line: 45, column: 22, scope: !753)
!760 = !DILocation(line: 45, column: 15, scope: !753)
!761 = !DILocation(line: 46, column: 3, scope: !753)
!762 = !DILocation(line: 48, column: 11, scope: !582)
!763 = !DILocation(line: 49, column: 4, scope: !582)
!764 = !DILocation(line: 49, column: 8, scope: !582)
!765 = !DILocation(line: 49, column: 15, scope: !582)
!766 = !DILocation(line: 49, column: 18, scope: !582)
!767 = !DILocation(line: 49, column: 21, scope: !582)
!768 = !DILocation(line: 49, column: 28, scope: !582)
!769 = !DILocation(line: 49, column: 36, scope: !582)
!770 = !DILocation(line: 49, column: 39, scope: !582)
!771 = !DILocation(line: 49, column: 42, scope: !582)
!772 = !DILocation(line: 49, column: 45, scope: !582)
!773 = !DILocation(line: 49, column: 56, scope: !582)
!774 = !DILocation(line: 48, column: 3, scope: !582)
!775 = !DILocation(line: 50, column: 1, scope: !582)
!776 = distinct !DISubprogram(name: "native_svg_line", scope: !2, file: !2, line: 54, type: !329, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794}
!778 = !DILocalVariable(name: "loutput", arg: 1, scope: !776, file: !2, line: 54, type: !159)
!779 = !DILocalVariable(name: "lcolor", arg: 2, scope: !776, file: !2, line: 54, type: !331)
!780 = !DILocalVariable(name: "depth", arg: 3, scope: !776, file: !2, line: 54, type: !14)
!781 = !DILocalVariable(name: "x1", arg: 4, scope: !776, file: !2, line: 54, type: !14)
!782 = !DILocalVariable(name: "y1", arg: 5, scope: !776, file: !2, line: 54, type: !14)
!783 = !DILocalVariable(name: "x2", arg: 6, scope: !776, file: !2, line: 54, type: !14)
!784 = !DILocalVariable(name: "y2", arg: 7, scope: !776, file: !2, line: 54, type: !14)
!785 = !DILocalVariable(name: "obj", arg: 8, scope: !776, file: !2, line: 54, type: !333)
!786 = !DILocalVariable(name: "line_id", arg: 9, scope: !776, file: !2, line: 54, type: !14)
!787 = !DILocalVariable(name: "file", scope: !776, file: !2, line: 56, type: !170)
!788 = !DILocalVariable(name: "r", scope: !776, file: !2, line: 57, type: !158)
!789 = !DILocalVariable(name: "g", scope: !776, file: !2, line: 57, type: !158)
!790 = !DILocalVariable(name: "b", scope: !776, file: !2, line: 57, type: !158)
!791 = !DILocalVariable(name: "id", scope: !776, file: !2, line: 58, type: !638)
!792 = !DILocalVariable(name: "class", scope: !776, file: !2, line: 59, type: !638)
!793 = !DILocalVariable(name: "complement", scope: !776, file: !2, line: 60, type: !106)
!794 = !DILocalVariable(name: "type", scope: !795, file: !2, line: 65, type: !658)
!795 = distinct !DILexicalBlock(scope: !796, file: !2, line: 64, column: 12)
!796 = distinct !DILexicalBlock(scope: !776, file: !2, line: 64, column: 7)
!797 = !DILocation(line: 54, column: 39, scope: !776)
!798 = !DILocation(line: 54, column: 75, scope: !776)
!799 = !DILocation(line: 54, column: 92, scope: !776)
!800 = !DILocation(line: 54, column: 133, scope: !776)
!801 = !DILocation(line: 54, column: 146, scope: !776)
!802 = !DILocation(line: 54, column: 159, scope: !776)
!803 = !DILocation(line: 54, column: 172, scope: !776)
!804 = !DILocation(line: 54, column: 188, scope: !776)
!805 = !DILocation(line: 54, column: 202, scope: !776)
!806 = !DILocation(line: 56, column: 3, scope: !776)
!807 = !DILocation(line: 56, column: 9, scope: !776)
!808 = !DILocation(line: 56, column: 16, scope: !776)
!809 = !DILocation(line: 56, column: 25, scope: !776)
!810 = !DILocation(line: 57, column: 3, scope: !776)
!811 = !DILocation(line: 57, column: 7, scope: !776)
!812 = !DILocation(line: 57, column: 11, scope: !776)
!813 = !DILocation(line: 57, column: 19, scope: !776)
!814 = !DILocation(line: 57, column: 22, scope: !776)
!815 = !DILocation(line: 57, column: 26, scope: !776)
!816 = !DILocation(line: 57, column: 34, scope: !776)
!817 = !DILocation(line: 57, column: 37, scope: !776)
!818 = !DILocation(line: 57, column: 41, scope: !776)
!819 = !DILocation(line: 57, column: 49, scope: !776)
!820 = !DILocation(line: 58, column: 3, scope: !776)
!821 = !DILocation(line: 58, column: 8, scope: !776)
!822 = !DILocation(line: 59, column: 3, scope: !776)
!823 = !DILocation(line: 59, column: 8, scope: !776)
!824 = !DILocation(line: 60, column: 3, scope: !776)
!825 = !DILocation(line: 60, column: 8, scope: !776)
!826 = !DILocation(line: 61, column: 7, scope: !827)
!827 = distinct !DILexicalBlock(scope: !776, file: !2, line: 61, column: 7)
!828 = !DILocation(line: 61, column: 7, scope: !776)
!829 = !DILocation(line: 62, column: 14, scope: !827)
!830 = !DILocation(line: 62, column: 52, scope: !827)
!831 = !DILocation(line: 62, column: 5, scope: !827)
!832 = !DILocation(line: 64, column: 7, scope: !796)
!833 = !DILocation(line: 64, column: 7, scope: !776)
!834 = !DILocation(line: 65, column: 5, scope: !795)
!835 = !DILocation(line: 65, column: 10, scope: !795)
!836 = !DILocation(line: 66, column: 29, scope: !795)
!837 = !DILocation(line: 66, column: 49, scope: !795)
!838 = !DILocation(line: 66, column: 5, scope: !795)
!839 = !DILocation(line: 67, column: 14, scope: !795)
!840 = !DILocation(line: 67, column: 51, scope: !795)
!841 = !DILocation(line: 67, column: 57, scope: !795)
!842 = !DILocation(line: 67, column: 62, scope: !795)
!843 = !DILocation(line: 67, column: 77, scope: !795)
!844 = !DILocation(line: 67, column: 5, scope: !795)
!845 = !DILocation(line: 68, column: 14, scope: !795)
!846 = !DILocation(line: 68, column: 50, scope: !795)
!847 = !DILocation(line: 68, column: 5, scope: !795)
!848 = !DILocation(line: 69, column: 3, scope: !796)
!849 = !DILocation(line: 69, column: 3, scope: !795)
!850 = !DILocation(line: 70, column: 14, scope: !851)
!851 = distinct !DILexicalBlock(scope: !796, file: !2, line: 69, column: 10)
!852 = !DILocation(line: 70, column: 50, scope: !851)
!853 = !DILocation(line: 70, column: 5, scope: !851)
!854 = !DILocation(line: 73, column: 11, scope: !776)
!855 = !DILocation(line: 74, column: 4, scope: !776)
!856 = !DILocation(line: 74, column: 8, scope: !776)
!857 = !DILocation(line: 74, column: 15, scope: !776)
!858 = !DILocation(line: 74, column: 19, scope: !776)
!859 = !DILocation(line: 74, column: 23, scope: !776)
!860 = !DILocation(line: 74, column: 27, scope: !776)
!861 = !DILocation(line: 74, column: 31, scope: !776)
!862 = !DILocation(line: 74, column: 34, scope: !776)
!863 = !DILocation(line: 74, column: 37, scope: !776)
!864 = !DILocation(line: 74, column: 40, scope: !776)
!865 = !DILocation(line: 74, column: 49, scope: !776)
!866 = !DILocation(line: 73, column: 3, scope: !776)
!867 = !DILocation(line: 75, column: 1, scope: !776)
!868 = distinct !DISubprogram(name: "native_svg_text", scope: !2, file: !2, line: 86, type: !453, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !869)
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888}
!870 = !DILocalVariable(name: "loutput", arg: 1, scope: !868, file: !2, line: 86, type: !159)
!871 = !DILocalVariable(name: "lcolor", arg: 2, scope: !868, file: !2, line: 86, type: !331)
!872 = !DILocalVariable(name: "size", arg: 3, scope: !868, file: !2, line: 86, type: !158)
!873 = !DILocalVariable(name: "depth", arg: 4, scope: !868, file: !2, line: 86, type: !14)
!874 = !DILocalVariable(name: "x", arg: 5, scope: !868, file: !2, line: 86, type: !14)
!875 = !DILocalVariable(name: "y", arg: 6, scope: !868, file: !2, line: 86, type: !14)
!876 = !DILocalVariable(name: "text", arg: 7, scope: !868, file: !2, line: 86, type: !455)
!877 = !DILocalVariable(name: "obj", arg: 8, scope: !868, file: !2, line: 86, type: !333)
!878 = !DILocalVariable(name: "text_id", arg: 9, scope: !868, file: !2, line: 86, type: !14)
!879 = !DILocalVariable(name: "file", scope: !868, file: !2, line: 88, type: !170)
!880 = !DILocalVariable(name: "ou", scope: !868, file: !2, line: 89, type: !595)
!881 = !DILocalVariable(name: "r", scope: !868, file: !2, line: 90, type: !158)
!882 = !DILocalVariable(name: "g", scope: !868, file: !2, line: 90, type: !158)
!883 = !DILocalVariable(name: "b", scope: !868, file: !2, line: 90, type: !158)
!884 = !DILocalVariable(name: "id", scope: !868, file: !2, line: 91, type: !638)
!885 = !DILocalVariable(name: "class", scope: !868, file: !2, line: 92, type: !638)
!886 = !DILocalVariable(name: "complement", scope: !868, file: !2, line: 93, type: !106)
!887 = !DILocalVariable(name: "fontweight", scope: !868, file: !2, line: 94, type: !455)
!888 = !DILocalVariable(name: "type", scope: !889, file: !2, line: 100, type: !658)
!889 = distinct !DILexicalBlock(scope: !890, file: !2, line: 99, column: 12)
!890 = distinct !DILexicalBlock(scope: !868, file: !2, line: 99, column: 7)
!891 = !DILocation(line: 86, column: 39, scope: !868)
!892 = !DILocation(line: 86, column: 75, scope: !868)
!893 = !DILocation(line: 86, column: 87, scope: !868)
!894 = !DILocation(line: 86, column: 102, scope: !868)
!895 = !DILocation(line: 86, column: 143, scope: !868)
!896 = !DILocation(line: 86, column: 155, scope: !868)
!897 = !DILocation(line: 86, column: 170, scope: !868)
!898 = !DILocation(line: 86, column: 188, scope: !868)
!899 = !DILocation(line: 86, column: 202, scope: !868)
!900 = !DILocation(line: 88, column: 3, scope: !868)
!901 = !DILocation(line: 88, column: 9, scope: !868)
!902 = !DILocation(line: 88, column: 16, scope: !868)
!903 = !DILocation(line: 88, column: 25, scope: !868)
!904 = !DILocation(line: 89, column: 3, scope: !868)
!905 = !DILocation(line: 89, column: 31, scope: !868)
!906 = !DILocation(line: 89, column: 36, scope: !868)
!907 = !DILocation(line: 89, column: 42, scope: !868)
!908 = !DILocation(line: 89, column: 47, scope: !868)
!909 = !DILocation(line: 90, column: 3, scope: !868)
!910 = !DILocation(line: 90, column: 7, scope: !868)
!911 = !DILocation(line: 90, column: 11, scope: !868)
!912 = !DILocation(line: 90, column: 19, scope: !868)
!913 = !DILocation(line: 90, column: 22, scope: !868)
!914 = !DILocation(line: 90, column: 26, scope: !868)
!915 = !DILocation(line: 90, column: 34, scope: !868)
!916 = !DILocation(line: 90, column: 37, scope: !868)
!917 = !DILocation(line: 90, column: 41, scope: !868)
!918 = !DILocation(line: 90, column: 49, scope: !868)
!919 = !DILocation(line: 91, column: 3, scope: !868)
!920 = !DILocation(line: 91, column: 8, scope: !868)
!921 = !DILocation(line: 92, column: 3, scope: !868)
!922 = !DILocation(line: 92, column: 8, scope: !868)
!923 = !DILocation(line: 93, column: 3, scope: !868)
!924 = !DILocation(line: 93, column: 8, scope: !868)
!925 = !DILocation(line: 94, column: 3, scope: !868)
!926 = !DILocation(line: 94, column: 15, scope: !868)
!927 = !DILocation(line: 96, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !868, file: !2, line: 96, column: 7)
!929 = !DILocation(line: 96, column: 7, scope: !868)
!930 = !DILocation(line: 97, column: 14, scope: !928)
!931 = !DILocation(line: 97, column: 52, scope: !928)
!932 = !DILocation(line: 97, column: 5, scope: !928)
!933 = !DILocation(line: 99, column: 7, scope: !890)
!934 = !DILocation(line: 99, column: 7, scope: !868)
!935 = !DILocation(line: 100, column: 5, scope: !889)
!936 = !DILocation(line: 100, column: 10, scope: !889)
!937 = !DILocation(line: 101, column: 29, scope: !889)
!938 = !DILocation(line: 101, column: 49, scope: !889)
!939 = !DILocation(line: 101, column: 5, scope: !889)
!940 = !DILocation(line: 102, column: 14, scope: !889)
!941 = !DILocation(line: 102, column: 51, scope: !889)
!942 = !DILocation(line: 102, column: 57, scope: !889)
!943 = !DILocation(line: 102, column: 62, scope: !889)
!944 = !DILocation(line: 102, column: 77, scope: !889)
!945 = !DILocation(line: 102, column: 5, scope: !889)
!946 = !DILocation(line: 103, column: 14, scope: !889)
!947 = !DILocation(line: 103, column: 50, scope: !889)
!948 = !DILocation(line: 103, column: 5, scope: !889)
!949 = !DILocation(line: 104, column: 3, scope: !890)
!950 = !DILocation(line: 104, column: 3, scope: !889)
!951 = !DILocation(line: 105, column: 14, scope: !952)
!952 = distinct !DILexicalBlock(scope: !890, file: !2, line: 104, column: 10)
!953 = !DILocation(line: 105, column: 50, scope: !952)
!954 = !DILocation(line: 105, column: 5, scope: !952)
!955 = !DILocation(line: 108, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !868, file: !2, line: 108, column: 7)
!957 = !DILocation(line: 108, column: 16, scope: !956)
!958 = !DILocation(line: 108, column: 30, scope: !956)
!959 = !DILocation(line: 108, column: 33, scope: !956)
!960 = !DILocation(line: 108, column: 36, scope: !956)
!961 = !DILocation(line: 108, column: 40, scope: !956)
!962 = !DILocation(line: 108, column: 44, scope: !956)
!963 = !DILocation(line: 108, column: 58, scope: !956)
!964 = !DILocation(line: 108, column: 7, scope: !868)
!965 = !DILocation(line: 109, column: 16, scope: !956)
!966 = !DILocation(line: 109, column: 5, scope: !956)
!967 = !DILocation(line: 111, column: 11, scope: !868)
!968 = !DILocation(line: 112, column: 4, scope: !868)
!969 = !DILocation(line: 112, column: 8, scope: !868)
!970 = !DILocation(line: 113, column: 11, scope: !868)
!971 = !DILocation(line: 114, column: 11, scope: !868)
!972 = !DILocation(line: 114, column: 14, scope: !868)
!973 = !DILocation(line: 114, column: 16, scope: !868)
!974 = !DILocation(line: 114, column: 15, scope: !868)
!975 = !DILocation(line: 114, column: 22, scope: !868)
!976 = !DILocation(line: 114, column: 25, scope: !868)
!977 = !DILocation(line: 114, column: 28, scope: !868)
!978 = !DILocation(line: 114, column: 31, scope: !868)
!979 = !DILocation(line: 114, column: 37, scope: !868)
!980 = !DILocation(line: 111, column: 3, scope: !868)
!981 = !DILocation(line: 115, column: 1, scope: !868)
!982 = distinct !DISubprogram(name: "native_svg_textsize", scope: !2, file: !2, line: 78, type: !459, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !983)
!983 = !{!984, !985, !986, !987, !988}
!984 = !DILocalVariable(name: "loutput", arg: 1, scope: !982, file: !2, line: 78, type: !159)
!985 = !DILocalVariable(name: "text", arg: 2, scope: !982, file: !2, line: 78, type: !455)
!986 = !DILocalVariable(name: "textlength", arg: 3, scope: !982, file: !2, line: 78, type: !14)
!987 = !DILocalVariable(name: "fontsize", arg: 4, scope: !982, file: !2, line: 78, type: !14)
!988 = !DILocalVariable(name: "width", arg: 5, scope: !982, file: !2, line: 78, type: !461)
!989 = !DILocation(line: 78, column: 43, scope: !982)
!990 = !DILocation(line: 78, column: 89, scope: !982)
!991 = !DILocation(line: 78, column: 129, scope: !982)
!992 = !DILocation(line: 78, column: 150, scope: !982)
!993 = !DILocation(line: 78, column: 170, scope: !982)
!994 = !DILocation(line: 80, column: 14, scope: !982)
!995 = !DILocation(line: 80, column: 12, scope: !982)
!996 = !DILocation(line: 81, column: 12, scope: !982)
!997 = !DILocation(line: 81, column: 4, scope: !982)
!998 = !DILocation(line: 81, column: 10, scope: !982)
!999 = !DILocation(line: 82, column: 1, scope: !982)
!1000 = !DISubprogram(name: "snprintf", scope: !559, file: !559, line: 378, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!158, !1003, !219, !563, null}
!1003 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !178)
!1004 = !DISubprogram(name: "quo_vadis_internal_hwloc_obj_type_snprintf", scope: !26, file: !26, line: 976, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!158, !1003, !219, !333, !158}

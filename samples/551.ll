; ModuleID = 'samples/551.bc'
source_filename = "/local-ssd/openexr-6h22loevxt5j34mxedq3mbm243hmhirl-build/aidengro/spack-stage-openexr-3.2.0-6h22loevxt5j34mxedq3mbm243hmhirl/spack-src/src/lib/OpenEXRCore/debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._internal_exr_context = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.exr_attr_string_t, %struct.exr_attr_string_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, float, ptr, ptr, ptr, i64, ptr, ptr, i64, i32, i32, i32, i32, %struct._internal_exr_part, ptr, ptr, %struct.exr_attribute_list, %union.pthread_mutex_t, i8, i8, [6 x i8] }
%struct.exr_attr_string_t = type { i32, i32, ptr }
%struct._internal_exr_part = type { i32, i32, %struct.exr_attribute_list, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.exr_attr_box2i_t, %struct.exr_attr_box2i_t, i32, i32, i32, float, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i16, i32, i64, i64 }
%struct.exr_attr_box2i_t = type { %struct.exr_attr_v2i_t, %struct.exr_attr_v2i_t }
%struct.exr_attr_v2i_t = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct.exr_attribute_list = type { i32, i32, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.exr_attribute_t = type { ptr, ptr, i8, i8, [2 x i8], i32, %union.anon.0 }
%union.anon.0 = type { double }
%struct.exr_attr_box2f_t = type { %struct.exr_attr_v2f_t, %struct.exr_attr_v2f_t }
%struct.exr_attr_v2f_t = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { float, float }
%struct.exr_attr_chlist_t = type { i32, i32, ptr }
%struct.exr_attr_chlist_entry_t = type { %struct.exr_attr_string_t, i32, i8, [3 x i8], i32, i32 }
%struct.exr_attr_chromaticities_t = type { float, float, float, float, float, float, float, float }
%struct.exr_attr_float_vector_t = type { i32, i32, ptr }
%struct.exr_attr_keycode_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.exr_attr_m33f_t = type { [9 x float] }
%struct.exr_attr_m33d_t = type { [9 x double] }
%struct.exr_attr_m44f_t = type { [16 x float] }
%struct.exr_attr_m44d_t = type { [16 x double] }
%struct.exr_attr_preview_t = type { i32, i32, i64, ptr }
%struct.exr_attr_rational_t = type { i32, i32 }
%struct.exr_attr_string_vector_t = type { i32, i32, ptr }
%struct.exr_attr_tiledesc_t = type <{ i32, i32, i8 }>
%struct.exr_attr_timecode_t = type { i32, i32 }
%struct.exr_attr_v2d_t = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { double, double }
%struct.exr_attr_v3i_t = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32 }
%struct.exr_attr_v3f_t = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { float, float, float }
%struct.exr_attr_v3d_t = type { %union.anon.9 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { double, double, double }
%struct.exr_attr_opaquedata_t = type { i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [33 x i8] c"File '%s': ver %d flags%s%s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" singletile\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" longnames\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" shortnames\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" deep\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" multipart\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" parts: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"File '%s':\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" part %d: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"<single>\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"  tiled image has levels: x %d y %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"    x tile count:\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c" %d (sz %d)\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"\0A    y tile count:\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"[ %d, %d - %d %d ] %d x %d\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"[ %g, %g - %g %g ]\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"%d channels\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"   '%s': %s samp %d %d\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"uint\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"<UNKNOWN>\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"r[%g, %g] g[%g, %g] b[%g, %g] w[%g, %g]\00", align 1
@print_attr.compressionnames = internal global [10 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"rle\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"zips\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"zip\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"piz\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"pxr24\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"b44\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"b44a\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"dwaa\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"dwab\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c" (0x%02X)\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"latlong\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"cube\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"[%d entries]:\0A   \00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.48 = private unnamed_addr constant [61 x i8] c"mfgc %d film %d prefix %d count %d perf_off %d ppf %d ppc %d\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"%d (%s)\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"increasing\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"decreasing\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"[ [%g %g %g] [%g %g %g] [%g %g %g] ]\00", align 1
@.str.54 = private unnamed_addr constant [60 x i8] c"[ [%g %g %g %g] [%g %g %g %g] [%g %g %g %g] [%g %g %g %g] ]\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"%u x %u\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"%d / %u\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c" (%g)\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"[%d entries]:\0A\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"    '%s'\00", align 1
@print_attr.lvlModes = internal global [3 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63], align 16
@.str.61 = private unnamed_addr constant [13 x i8] c"single image\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"mipmap\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"ripmap\00", align 1
@.str.64 = private unnamed_addr constant [41 x i8] c"size %u x %u level %u (%s) round %u (%s)\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"time %u user %u\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"[ %d, %d ]\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"[ %g, %g ]\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"[ %d, %d, %d ]\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"[ %g, %g, %g ]\00", align 1
@.str.72 = private unnamed_addr constant [37 x i8] c"(size %d unp size %d hdlrs %p %p %p)\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"<ERROR Unknown type '%s'>\00", align 1

; Function Attrs: nounwind uwtable
define i32 @exr_print_context_info(ptr noundef %ctxt, i32 noundef %verbose) #0 {
entry:
  %retval = alloca i32, align 4
  %ctxt.addr = alloca ptr, align 8
  %verbose.addr = alloca i32, align 4
  %pctxt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %partidx = alloca i32, align 4
  %curpart = alloca ptr, align 8
  %a = alloca i32, align 4
  %l = alloca i32, align 4
  %l95 = alloca i32, align 4
  store ptr %ctxt, ptr %ctxt.addr, align 8, !tbaa !4
  store i32 %verbose, ptr %verbose.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pctxt) #5
  %0 = load ptr, ptr %ctxt.addr, align 8, !tbaa !4
  store ptr %0, ptr %pctxt, align 8, !tbaa !4
  %1 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %mode = getelementptr inbounds %struct._internal_exr_context, ptr %2, i32 0, i32 0
  %3 = load i8, ptr %mode, align 8, !tbaa !10
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %pctxt, align 8, !tbaa !4
  call void @internal_exr_lock(ptr noundef %4)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %6 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %filename = getelementptr inbounds %struct._internal_exr_context, ptr %6, i32 0, i32 8
  %str = getelementptr inbounds %struct.exr_attr_string_t, ptr %filename, i32 0, i32 2
  %7 = load ptr, ptr %str, align 8, !tbaa !20
  %8 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %version = getelementptr inbounds %struct._internal_exr_context, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %version, align 1, !tbaa !21
  %conv6 = zext i8 %9 to i32
  %10 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %is_singlepart_tiled = getelementptr inbounds %struct._internal_exr_context, ptr %10, i32 0, i32 3
  %11 = load i8, ptr %is_singlepart_tiled, align 1, !tbaa !22
  %conv7 = zext i8 %11 to i32
  %tobool8 = icmp ne i32 %conv7, 0
  %12 = zext i1 %tobool8 to i64
  %cond = select i1 %tobool8, ptr @.str.1, ptr @.str.2
  %13 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %max_name_length = getelementptr inbounds %struct._internal_exr_context, ptr %13, i32 0, i32 2
  %14 = load i8, ptr %max_name_length, align 2, !tbaa !23
  %conv9 = zext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv9, 255
  %15 = zext i1 %cmp10 to i64
  %cond12 = select i1 %cmp10, ptr @.str.3, ptr @.str.4
  %16 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %has_nonimage_data = getelementptr inbounds %struct._internal_exr_context, ptr %16, i32 0, i32 4
  %17 = load i8, ptr %has_nonimage_data, align 4, !tbaa !24
  %conv13 = zext i8 %17 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  %18 = zext i1 %tobool14 to i64
  %cond15 = select i1 %tobool14, ptr @.str.5, ptr @.str.2
  %19 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %is_multipart = getelementptr inbounds %struct._internal_exr_context, ptr %19, i32 0, i32 5
  %20 = load i8, ptr %is_multipart, align 1, !tbaa !25
  %conv16 = zext i8 %20 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  %21 = zext i1 %tobool17 to i64
  %cond18 = select i1 %tobool17, ptr @.str.6, ptr @.str.2
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %7, i32 noundef %conv6, ptr noundef %cond, ptr noundef %cond12, ptr noundef %cond15, ptr noundef %cond18)
  %22 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %num_parts = getelementptr inbounds %struct._internal_exr_context, ptr %22, i32 0, i32 34
  %23 = load i32, ptr %num_parts, align 4, !tbaa !26
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %23)
  br label %if.end23

if.else:                                          ; preds = %if.end3
  %24 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %filename20 = getelementptr inbounds %struct._internal_exr_context, ptr %24, i32 0, i32 8
  %str21 = getelementptr inbounds %struct.exr_attr_string_t, ptr %filename20, i32 0, i32 2
  %25 = load ptr, ptr %str21, align 8, !tbaa !20
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %25)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then5
  call void @llvm.lifetime.start.p0(i64 4, ptr %partidx) #5
  store i32 0, ptr %partidx, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc112, %if.end23
  %26 = load i32, ptr %partidx, align 4, !tbaa !8
  %27 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %num_parts24 = getelementptr inbounds %struct._internal_exr_context, ptr %27, i32 0, i32 34
  %28 = load i32, ptr %num_parts24, align 4, !tbaa !26
  %cmp25 = icmp slt i32 %26, %28
  br i1 %cmp25, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %partidx) #5
  br label %for.end114

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %curpart) #5
  %29 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %parts = getelementptr inbounds %struct._internal_exr_context, ptr %29, i32 0, i32 37
  %30 = load ptr, ptr %parts, align 8, !tbaa !27
  %31 = load i32, ptr %partidx, align 4, !tbaa !8
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %30, i64 %idxprom
  %32 = load ptr, ptr %arrayidx, align 8, !tbaa !4
  store ptr %32, ptr %curpart, align 8, !tbaa !4
  %33 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %tobool27 = icmp ne i32 %33, 0
  br i1 %tobool27, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %34 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %is_multipart28 = getelementptr inbounds %struct._internal_exr_context, ptr %34, i32 0, i32 5
  %35 = load i8, ptr %is_multipart28, align 1, !tbaa !25
  %conv29 = zext i8 %35 to i32
  %tobool30 = icmp ne i32 %conv29, 0
  br i1 %tobool30, label %if.then33, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %36 = load ptr, ptr %curpart, align 8, !tbaa !4
  %name = getelementptr inbounds %struct._internal_exr_part, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %name, align 8, !tbaa !28
  %tobool32 = icmp ne ptr %37, null
  br i1 %tobool32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %lor.lhs.false31, %lor.lhs.false, %for.body
  %38 = load i32, ptr %partidx, align 4, !tbaa !8
  %add = add nsw i32 %38, 1
  %39 = load ptr, ptr %curpart, align 8, !tbaa !4
  %name34 = getelementptr inbounds %struct._internal_exr_part, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %name34, align 8, !tbaa !28
  %tobool35 = icmp ne ptr %40, null
  br i1 %tobool35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then33
  %41 = load ptr, ptr %curpart, align 8, !tbaa !4
  %name36 = getelementptr inbounds %struct._internal_exr_part, ptr %41, i32 0, i32 12
  %42 = load ptr, ptr %name36, align 8, !tbaa !28
  %43 = getelementptr inbounds %struct.exr_attribute_t, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !29
  %str37 = getelementptr inbounds %struct.exr_attr_string_t, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %str37, align 8, !tbaa !30
  br label %cond.end

cond.false:                                       ; preds = %if.then33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond38 = phi ptr [ %45, %cond.true ], [ @.str.10, %cond.false ]
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %add, ptr noundef %cond38)
  br label %if.end40

if.end40:                                         ; preds = %cond.end, %lor.lhs.false31
  %46 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %tobool41 = icmp ne i32 %46, 0
  br i1 %tobool41, label %if.then42, label %if.else58

if.then42:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #5
  store i32 0, ptr %a, align 4, !tbaa !8
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc, %if.then42
  %47 = load i32, ptr %a, align 4, !tbaa !8
  %48 = load ptr, ptr %curpart, align 8, !tbaa !4
  %attributes = getelementptr inbounds %struct._internal_exr_part, ptr %48, i32 0, i32 2
  %num_attributes = getelementptr inbounds %struct.exr_attribute_list, ptr %attributes, i32 0, i32 0
  %49 = load i32, ptr %num_attributes, align 8, !tbaa !31
  %cmp44 = icmp slt i32 %47, %49
  br i1 %cmp44, label %for.body47, label %for.cond.cleanup46

for.cond.cleanup46:                               ; preds = %for.cond43
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #5
  br label %for.end

for.body47:                                       ; preds = %for.cond43
  %50 = load i32, ptr %a, align 4, !tbaa !8
  %cmp48 = icmp sgt i32 %50, 0
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %for.body47
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %for.body47
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  %51 = load ptr, ptr %curpart, align 8, !tbaa !4
  %attributes54 = getelementptr inbounds %struct._internal_exr_part, ptr %51, i32 0, i32 2
  %entries = getelementptr inbounds %struct.exr_attribute_list, ptr %attributes54, i32 0, i32 2
  %52 = load ptr, ptr %entries, align 8, !tbaa !32
  %53 = load i32, ptr %a, align 4, !tbaa !8
  %idxprom55 = sext i32 %53 to i64
  %arrayidx56 = getelementptr inbounds ptr, ptr %52, i64 %idxprom55
  %54 = load ptr, ptr %arrayidx56, align 8, !tbaa !4
  %55 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  call void @print_attr(ptr noundef %54, i32 noundef %55)
  br label %for.inc

for.inc:                                          ; preds = %if.end52
  %56 = load i32, ptr %a, align 4, !tbaa !8
  %inc = add nsw i32 %56, 1
  store i32 %inc, ptr %a, align 4, !tbaa !8
  br label %for.cond43, !llvm.loop !33

for.end:                                          ; preds = %for.cond.cleanup46
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end74

if.else58:                                        ; preds = %if.end40
  %57 = load ptr, ptr %curpart, align 8, !tbaa !4
  %type = getelementptr inbounds %struct._internal_exr_part, ptr %57, i32 0, i32 13
  %58 = load ptr, ptr %type, align 8, !tbaa !35
  %tobool59 = icmp ne ptr %58, null
  br i1 %tobool59, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.else58
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  %59 = load ptr, ptr %curpart, align 8, !tbaa !4
  %type62 = getelementptr inbounds %struct._internal_exr_part, ptr %59, i32 0, i32 13
  %60 = load ptr, ptr %type62, align 8, !tbaa !35
  %61 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  call void @print_attr(ptr noundef %60, i32 noundef %61)
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.else58
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  %62 = load ptr, ptr %curpart, align 8, !tbaa !4
  %compression = getelementptr inbounds %struct._internal_exr_part, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %compression, align 8, !tbaa !36
  %64 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  call void @print_attr(ptr noundef %63, i32 noundef %64)
  %65 = load ptr, ptr %curpart, align 8, !tbaa !4
  %tiles = getelementptr inbounds %struct._internal_exr_part, ptr %65, i32 0, i32 11
  %66 = load ptr, ptr %tiles, align 8, !tbaa !37
  %tobool65 = icmp ne ptr %66, null
  br i1 %tobool65, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end63
  %call67 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %67 = load ptr, ptr %curpart, align 8, !tbaa !4
  %tiles68 = getelementptr inbounds %struct._internal_exr_part, ptr %67, i32 0, i32 11
  %68 = load ptr, ptr %tiles68, align 8, !tbaa !37
  %69 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  call void @print_attr(ptr noundef %68, i32 noundef %69)
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end63
  %call70 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %70 = load ptr, ptr %curpart, align 8, !tbaa !4
  %displayWindow = getelementptr inbounds %struct._internal_exr_part, ptr %70, i32 0, i32 6
  %71 = load ptr, ptr %displayWindow, align 8, !tbaa !38
  %72 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  call void @print_attr(ptr noundef %71, i32 noundef %72)
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %73 = load ptr, ptr %curpart, align 8, !tbaa !4
  %dataWindow = getelementptr inbounds %struct._internal_exr_part, ptr %73, i32 0, i32 5
  %74 = load ptr, ptr %dataWindow, align 8, !tbaa !39
  %75 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  call void @print_attr(ptr noundef %74, i32 noundef %75)
  %call72 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %76 = load ptr, ptr %curpart, align 8, !tbaa !4
  %channels = getelementptr inbounds %struct._internal_exr_part, ptr %76, i32 0, i32 3
  %77 = load ptr, ptr %channels, align 8, !tbaa !40
  %78 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  call void @print_attr(ptr noundef %77, i32 noundef %78)
  %call73 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end74

if.end74:                                         ; preds = %if.end69, %for.end
  %79 = load ptr, ptr %curpart, align 8, !tbaa !4
  %tiles75 = getelementptr inbounds %struct._internal_exr_part, ptr %79, i32 0, i32 11
  %80 = load ptr, ptr %tiles75, align 8, !tbaa !37
  %tobool76 = icmp ne ptr %80, null
  br i1 %tobool76, label %if.then77, label %if.end111

if.then77:                                        ; preds = %if.end74
  %81 = load ptr, ptr %curpart, align 8, !tbaa !4
  %num_tile_levels_x = getelementptr inbounds %struct._internal_exr_part, ptr %81, i32 0, i32 23
  %82 = load i32, ptr %num_tile_levels_x, align 8, !tbaa !41
  %83 = load ptr, ptr %curpart, align 8, !tbaa !4
  %num_tile_levels_y = getelementptr inbounds %struct._internal_exr_part, ptr %83, i32 0, i32 24
  %84 = load i32, ptr %num_tile_levels_y, align 4, !tbaa !42
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, i32 noundef %82, i32 noundef %84)
  %call79 = call i32 (ptr, ...) @printf(ptr noundef @.str.15)
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  store i32 0, ptr %l, align 4, !tbaa !8
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc91, %if.then77
  %85 = load i32, ptr %l, align 4, !tbaa !8
  %86 = load ptr, ptr %curpart, align 8, !tbaa !4
  %num_tile_levels_x81 = getelementptr inbounds %struct._internal_exr_part, ptr %86, i32 0, i32 23
  %87 = load i32, ptr %num_tile_levels_x81, align 8, !tbaa !41
  %cmp82 = icmp slt i32 %85, %87
  br i1 %cmp82, label %for.body85, label %for.cond.cleanup84

for.cond.cleanup84:                               ; preds = %for.cond80
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  br label %for.end93

for.body85:                                       ; preds = %for.cond80
  %88 = load ptr, ptr %curpart, align 8, !tbaa !4
  %tile_level_tile_count_x = getelementptr inbounds %struct._internal_exr_part, ptr %88, i32 0, i32 25
  %89 = load ptr, ptr %tile_level_tile_count_x, align 8, !tbaa !43
  %90 = load i32, ptr %l, align 4, !tbaa !8
  %idxprom86 = sext i32 %90 to i64
  %arrayidx87 = getelementptr inbounds i32, ptr %89, i64 %idxprom86
  %91 = load i32, ptr %arrayidx87, align 4, !tbaa !8
  %92 = load ptr, ptr %curpart, align 8, !tbaa !4
  %tile_level_tile_size_x = getelementptr inbounds %struct._internal_exr_part, ptr %92, i32 0, i32 27
  %93 = load ptr, ptr %tile_level_tile_size_x, align 8, !tbaa !44
  %94 = load i32, ptr %l, align 4, !tbaa !8
  %idxprom88 = sext i32 %94 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %93, i64 %idxprom88
  %95 = load i32, ptr %arrayidx89, align 4, !tbaa !8
  %call90 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %91, i32 noundef %95)
  br label %for.inc91

for.inc91:                                        ; preds = %for.body85
  %96 = load i32, ptr %l, align 4, !tbaa !8
  %inc92 = add nsw i32 %96, 1
  store i32 %inc92, ptr %l, align 4, !tbaa !8
  br label %for.cond80, !llvm.loop !45

for.end93:                                        ; preds = %for.cond.cleanup84
  %call94 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  call void @llvm.lifetime.start.p0(i64 4, ptr %l95) #5
  store i32 0, ptr %l95, align 4, !tbaa !8
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc107, %for.end93
  %97 = load i32, ptr %l95, align 4, !tbaa !8
  %98 = load ptr, ptr %curpart, align 8, !tbaa !4
  %num_tile_levels_y97 = getelementptr inbounds %struct._internal_exr_part, ptr %98, i32 0, i32 24
  %99 = load i32, ptr %num_tile_levels_y97, align 4, !tbaa !42
  %cmp98 = icmp slt i32 %97, %99
  br i1 %cmp98, label %for.body101, label %for.cond.cleanup100

for.cond.cleanup100:                              ; preds = %for.cond96
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l95) #5
  br label %for.end109

for.body101:                                      ; preds = %for.cond96
  %100 = load ptr, ptr %curpart, align 8, !tbaa !4
  %tile_level_tile_count_y = getelementptr inbounds %struct._internal_exr_part, ptr %100, i32 0, i32 26
  %101 = load ptr, ptr %tile_level_tile_count_y, align 8, !tbaa !46
  %102 = load i32, ptr %l95, align 4, !tbaa !8
  %idxprom102 = sext i32 %102 to i64
  %arrayidx103 = getelementptr inbounds i32, ptr %101, i64 %idxprom102
  %103 = load i32, ptr %arrayidx103, align 4, !tbaa !8
  %104 = load ptr, ptr %curpart, align 8, !tbaa !4
  %tile_level_tile_size_y = getelementptr inbounds %struct._internal_exr_part, ptr %104, i32 0, i32 28
  %105 = load ptr, ptr %tile_level_tile_size_y, align 8, !tbaa !47
  %106 = load i32, ptr %l95, align 4, !tbaa !8
  %idxprom104 = sext i32 %106 to i64
  %arrayidx105 = getelementptr inbounds i32, ptr %105, i64 %idxprom104
  %107 = load i32, ptr %arrayidx105, align 4, !tbaa !8
  %call106 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i32 noundef %103, i32 noundef %107)
  br label %for.inc107

for.inc107:                                       ; preds = %for.body101
  %108 = load i32, ptr %l95, align 4, !tbaa !8
  %inc108 = add nsw i32 %108, 1
  store i32 %inc108, ptr %l95, align 4, !tbaa !8
  br label %for.cond96, !llvm.loop !48

for.end109:                                       ; preds = %for.cond.cleanup100
  %call110 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end111

if.end111:                                        ; preds = %for.end109, %if.end74
  call void @llvm.lifetime.end.p0(i64 8, ptr %curpart) #5
  br label %for.inc112

for.inc112:                                       ; preds = %if.end111
  %109 = load i32, ptr %partidx, align 4, !tbaa !8
  %inc113 = add nsw i32 %109, 1
  store i32 %inc113, ptr %partidx, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !49

for.end114:                                       ; preds = %for.cond.cleanup
  %110 = load ptr, ptr %pctxt, align 8, !tbaa !4
  %mode115 = getelementptr inbounds %struct._internal_exr_context, ptr %110, i32 0, i32 0
  %111 = load i8, ptr %mode115, align 8, !tbaa !10
  %conv116 = zext i8 %111 to i32
  %cmp117 = icmp eq i32 %conv116, 1
  br i1 %cmp117, label %cond.true119, label %cond.false120

cond.true119:                                     ; preds = %for.end114
  %112 = load ptr, ptr %pctxt, align 8, !tbaa !4
  call void @internal_exr_unlock(ptr noundef %112)
  br label %cond.end121

cond.false120:                                    ; preds = %for.end114
  br label %cond.end121

cond.end121:                                      ; preds = %cond.false120, %cond.true119
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end121, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pctxt) #5
  %113 = load i32, ptr %retval, align 4
  ret i32 %113
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @internal_exr_lock(ptr noundef %c) #2 {
entry:
  %c.addr = alloca ptr, align 8
  %nonc = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nonc) #5
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = ptrtoint ptr %0 to i64
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %nonc, align 8, !tbaa !4
  %3 = load ptr, ptr %nonc, align 8, !tbaa !4
  %mutex = getelementptr inbounds %struct._internal_exr_context, ptr %3, i32 0, i32 39
  %call = call i32 @pthread_mutex_lock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nonc) #5
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal void @print_attr(ptr noundef %a, i32 noundef %verbose) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %verbose.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %i306 = alloca i32, align 4
  %lvlMode = alloca i8, align 1
  %rndMode = alloca i8, align 1
  %faddr_unpack = alloca i64, align 8
  %faddr_pack = alloca i64, align 8
  %faddr_destroy = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store i32 %verbose, ptr %verbose.addr, align 4, !tbaa !8
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.exr_attribute_t, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %name, align 8, !tbaa !50
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.18, ptr noundef %2)
  %3 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %type_name = getelementptr inbounds %struct.exr_attribute_t, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %type_name, align 8, !tbaa !52
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, ptr noundef %5)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %type = getelementptr inbounds %struct.exr_attribute_t, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %type, align 4, !tbaa !53
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
    i32 3, label %sw.bb33
    i32 4, label %sw.bb72
    i32 5, label %sw.bb82
    i32 6, label %sw.bb98
    i32 7, label %sw.bb100
    i32 8, label %sw.bb106
    i32 9, label %sw.bb109
    i32 10, label %sw.bb124
    i32 11, label %sw.bb126
    i32 12, label %sw.bb128
    i32 13, label %sw.bb149
    i32 14, label %sw.bb177
    i32 15, label %sw.bb197
    i32 16, label %sw.bb247
    i32 17, label %sw.bb281
    i32 18, label %sw.bb283
    i32 19, label %sw.bb295
    i32 20, label %sw.bb304
    i32 21, label %sw.bb325
    i32 22, label %sw.bb348
    i32 23, label %sw.bb350
    i32 24, label %sw.bb354
    i32 25, label %sw.bb360
    i32 26, label %sw.bb364
    i32 27, label %sw.bb368
    i32 28, label %sw.bb376
    i32 29, label %sw.bb381
    i32 0, label %sw.bb383
    i32 30, label %sw.bb383
  ]

sw.bb:                                            ; preds = %if.end4
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %9 = getelementptr inbounds %struct.exr_attribute_t, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %min = getelementptr inbounds %struct.exr_attr_box2i_t, ptr %10, i32 0, i32 0
  %11 = getelementptr inbounds %struct.exr_attr_v2i_t, ptr %min, i32 0, i32 0
  %x = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %x, align 1, !tbaa !29
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %14 = getelementptr inbounds %struct.exr_attribute_t, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !29
  %min5 = getelementptr inbounds %struct.exr_attr_box2i_t, ptr %15, i32 0, i32 0
  %16 = getelementptr inbounds %struct.exr_attr_v2i_t, ptr %min5, i32 0, i32 0
  %y = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %y, align 1, !tbaa !29
  %18 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %19 = getelementptr inbounds %struct.exr_attribute_t, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %max = getelementptr inbounds %struct.exr_attr_box2i_t, ptr %20, i32 0, i32 1
  %21 = getelementptr inbounds %struct.exr_attr_v2i_t, ptr %max, i32 0, i32 0
  %x6 = getelementptr inbounds %struct.anon, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %x6, align 1, !tbaa !29
  %23 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %24 = getelementptr inbounds %struct.exr_attribute_t, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %max7 = getelementptr inbounds %struct.exr_attr_box2i_t, ptr %25, i32 0, i32 1
  %26 = getelementptr inbounds %struct.exr_attr_v2i_t, ptr %max7, i32 0, i32 0
  %y8 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %y8, align 1, !tbaa !29
  %28 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %29 = getelementptr inbounds %struct.exr_attribute_t, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !29
  %max9 = getelementptr inbounds %struct.exr_attr_box2i_t, ptr %30, i32 0, i32 1
  %31 = getelementptr inbounds %struct.exr_attr_v2i_t, ptr %max9, i32 0, i32 0
  %x10 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %x10, align 1, !tbaa !29
  %33 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %34 = getelementptr inbounds %struct.exr_attribute_t, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !29
  %min11 = getelementptr inbounds %struct.exr_attr_box2i_t, ptr %35, i32 0, i32 0
  %36 = getelementptr inbounds %struct.exr_attr_v2i_t, ptr %min11, i32 0, i32 0
  %x12 = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %x12, align 1, !tbaa !29
  %sub = sub nsw i32 %32, %37
  %add = add nsw i32 %sub, 1
  %38 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %39 = getelementptr inbounds %struct.exr_attribute_t, ptr %38, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !29
  %max13 = getelementptr inbounds %struct.exr_attr_box2i_t, ptr %40, i32 0, i32 1
  %41 = getelementptr inbounds %struct.exr_attr_v2i_t, ptr %max13, i32 0, i32 0
  %y14 = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %y14, align 1, !tbaa !29
  %43 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %44 = getelementptr inbounds %struct.exr_attribute_t, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !29
  %min15 = getelementptr inbounds %struct.exr_attr_box2i_t, ptr %45, i32 0, i32 0
  %46 = getelementptr inbounds %struct.exr_attr_v2i_t, ptr %min15, i32 0, i32 0
  %y16 = getelementptr inbounds %struct.anon, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %y16, align 1, !tbaa !29
  %sub17 = sub nsw i32 %42, %47
  %add18 = add nsw i32 %sub17, 1
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, i32 noundef %12, i32 noundef %17, i32 noundef %22, i32 noundef %27, i32 noundef %add, i32 noundef %add18)
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end4
  %48 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %49 = getelementptr inbounds %struct.exr_attribute_t, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !29
  %min21 = getelementptr inbounds %struct.exr_attr_box2f_t, ptr %50, i32 0, i32 0
  %51 = getelementptr inbounds %struct.exr_attr_v2f_t, ptr %min21, i32 0, i32 0
  %x22 = getelementptr inbounds %struct.anon.2, ptr %51, i32 0, i32 0
  %52 = load float, ptr %x22, align 1, !tbaa !29
  %conv = fpext float %52 to double
  %53 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %54 = getelementptr inbounds %struct.exr_attribute_t, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !29
  %min23 = getelementptr inbounds %struct.exr_attr_box2f_t, ptr %55, i32 0, i32 0
  %56 = getelementptr inbounds %struct.exr_attr_v2f_t, ptr %min23, i32 0, i32 0
  %y24 = getelementptr inbounds %struct.anon.2, ptr %56, i32 0, i32 1
  %57 = load float, ptr %y24, align 1, !tbaa !29
  %conv25 = fpext float %57 to double
  %58 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %59 = getelementptr inbounds %struct.exr_attribute_t, ptr %58, i32 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !29
  %max26 = getelementptr inbounds %struct.exr_attr_box2f_t, ptr %60, i32 0, i32 1
  %61 = getelementptr inbounds %struct.exr_attr_v2f_t, ptr %max26, i32 0, i32 0
  %x27 = getelementptr inbounds %struct.anon.2, ptr %61, i32 0, i32 0
  %62 = load float, ptr %x27, align 1, !tbaa !29
  %conv28 = fpext float %62 to double
  %63 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %64 = getelementptr inbounds %struct.exr_attribute_t, ptr %63, i32 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !29
  %max29 = getelementptr inbounds %struct.exr_attr_box2f_t, ptr %65, i32 0, i32 1
  %66 = getelementptr inbounds %struct.exr_attr_v2f_t, ptr %max29, i32 0, i32 0
  %y30 = getelementptr inbounds %struct.anon.2, ptr %66, i32 0, i32 1
  %67 = load float, ptr %y30, align 1, !tbaa !29
  %conv31 = fpext float %67 to double
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, double noundef %conv, double noundef %conv25, double noundef %conv28, double noundef %conv31)
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end4
  %68 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %69 = getelementptr inbounds %struct.exr_attribute_t, ptr %68, i32 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !29
  %num_channels = getelementptr inbounds %struct.exr_attr_chlist_t, ptr %70, i32 0, i32 0
  %71 = load i32, ptr %num_channels, align 8, !tbaa !54
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, i32 noundef %71)
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #5
  store i32 0, ptr %c, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb33
  %72 = load i32, ptr %c, align 4, !tbaa !8
  %73 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %74 = getelementptr inbounds %struct.exr_attribute_t, ptr %73, i32 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !29
  %num_channels35 = getelementptr inbounds %struct.exr_attr_chlist_t, ptr %75, i32 0, i32 0
  %76 = load i32, ptr %num_channels35, align 8, !tbaa !54
  %cmp = icmp slt i32 %72, %76
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #5
  br label %for.end

for.body:                                         ; preds = %for.cond
  %77 = load i32, ptr %c, align 4, !tbaa !8
  %cmp37 = icmp sgt i32 %77, 0
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %for.body
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %for.body
  %78 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %79 = getelementptr inbounds %struct.exr_attribute_t, ptr %78, i32 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !29
  %entries = getelementptr inbounds %struct.exr_attr_chlist_t, ptr %80, i32 0, i32 2
  %81 = load ptr, ptr %entries, align 8, !tbaa !30
  %82 = load i32, ptr %c, align 4, !tbaa !8
  %idxprom = sext i32 %82 to i64
  %arrayidx = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %81, i64 %idxprom
  %name42 = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %arrayidx, i32 0, i32 0
  %str = getelementptr inbounds %struct.exr_attr_string_t, ptr %name42, i32 0, i32 2
  %83 = load ptr, ptr %str, align 8, !tbaa !55
  %84 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %85 = getelementptr inbounds %struct.exr_attribute_t, ptr %84, i32 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !29
  %entries43 = getelementptr inbounds %struct.exr_attr_chlist_t, ptr %86, i32 0, i32 2
  %87 = load ptr, ptr %entries43, align 8, !tbaa !30
  %88 = load i32, ptr %c, align 4, !tbaa !8
  %idxprom44 = sext i32 %88 to i64
  %arrayidx45 = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %87, i64 %idxprom44
  %pixel_type = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %arrayidx45, i32 0, i32 1
  %89 = load i32, ptr %pixel_type, align 8, !tbaa !57
  %cmp46 = icmp eq i32 %89, 0
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end41
  br label %cond.end63

cond.false:                                       ; preds = %if.end41
  %90 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %91 = getelementptr inbounds %struct.exr_attribute_t, ptr %90, i32 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !29
  %entries48 = getelementptr inbounds %struct.exr_attr_chlist_t, ptr %92, i32 0, i32 2
  %93 = load ptr, ptr %entries48, align 8, !tbaa !30
  %94 = load i32, ptr %c, align 4, !tbaa !8
  %idxprom49 = sext i32 %94 to i64
  %arrayidx50 = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %93, i64 %idxprom49
  %pixel_type51 = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %arrayidx50, i32 0, i32 1
  %95 = load i32, ptr %pixel_type51, align 8, !tbaa !57
  %cmp52 = icmp eq i32 %95, 1
  br i1 %cmp52, label %cond.true54, label %cond.false55

cond.true54:                                      ; preds = %cond.false
  br label %cond.end

cond.false55:                                     ; preds = %cond.false
  %96 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %97 = getelementptr inbounds %struct.exr_attribute_t, ptr %96, i32 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !29
  %entries56 = getelementptr inbounds %struct.exr_attr_chlist_t, ptr %98, i32 0, i32 2
  %99 = load ptr, ptr %entries56, align 8, !tbaa !30
  %100 = load i32, ptr %c, align 4, !tbaa !8
  %idxprom57 = sext i32 %100 to i64
  %arrayidx58 = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %99, i64 %idxprom57
  %pixel_type59 = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %arrayidx58, i32 0, i32 1
  %101 = load i32, ptr %pixel_type59, align 8, !tbaa !57
  %cmp60 = icmp eq i32 %101, 2
  %102 = zext i1 %cmp60 to i64
  %cond = select i1 %cmp60, ptr @.str.26, ptr @.str.27
  br label %cond.end

cond.end:                                         ; preds = %cond.false55, %cond.true54
  %cond62 = phi ptr [ @.str.25, %cond.true54 ], [ %cond, %cond.false55 ]
  br label %cond.end63

cond.end63:                                       ; preds = %cond.end, %cond.true
  %cond64 = phi ptr [ @.str.24, %cond.true ], [ %cond62, %cond.end ]
  %103 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %104 = getelementptr inbounds %struct.exr_attribute_t, ptr %103, i32 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !29
  %entries65 = getelementptr inbounds %struct.exr_attr_chlist_t, ptr %105, i32 0, i32 2
  %106 = load ptr, ptr %entries65, align 8, !tbaa !30
  %107 = load i32, ptr %c, align 4, !tbaa !8
  %idxprom66 = sext i32 %107 to i64
  %arrayidx67 = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %106, i64 %idxprom66
  %x_sampling = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %arrayidx67, i32 0, i32 4
  %108 = load i32, ptr %x_sampling, align 8, !tbaa !58
  %109 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %110 = getelementptr inbounds %struct.exr_attribute_t, ptr %109, i32 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !29
  %entries68 = getelementptr inbounds %struct.exr_attr_chlist_t, ptr %111, i32 0, i32 2
  %112 = load ptr, ptr %entries68, align 8, !tbaa !30
  %113 = load i32, ptr %c, align 4, !tbaa !8
  %idxprom69 = sext i32 %113 to i64
  %arrayidx70 = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %112, i64 %idxprom69
  %y_sampling = getelementptr inbounds %struct.exr_attr_chlist_entry_t, ptr %arrayidx70, i32 0, i32 5
  %114 = load i32, ptr %y_sampling, align 4, !tbaa !59
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, ptr noundef %83, ptr noundef %cond64, i32 noundef %108, i32 noundef %114)
  br label %for.inc

for.inc:                                          ; preds = %cond.end63
  %115 = load i32, ptr %c, align 4, !tbaa !8
  %inc = add nsw i32 %115, 1
  store i32 %inc, ptr %c, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond.cleanup
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end4
  %116 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %117 = getelementptr inbounds %struct.exr_attribute_t, ptr %116, i32 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !29
  %red_x = getelementptr inbounds %struct.exr_attr_chromaticities_t, ptr %118, i32 0, i32 0
  %119 = load float, ptr %red_x, align 1, !tbaa !61
  %conv73 = fpext float %119 to double
  %120 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %121 = getelementptr inbounds %struct.exr_attribute_t, ptr %120, i32 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !29
  %red_y = getelementptr inbounds %struct.exr_attr_chromaticities_t, ptr %122, i32 0, i32 1
  %123 = load float, ptr %red_y, align 1, !tbaa !63
  %conv74 = fpext float %123 to double
  %124 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %125 = getelementptr inbounds %struct.exr_attribute_t, ptr %124, i32 0, i32 6
  %126 = load ptr, ptr %125, align 8, !tbaa !29
  %green_x = getelementptr inbounds %struct.exr_attr_chromaticities_t, ptr %126, i32 0, i32 2
  %127 = load float, ptr %green_x, align 1, !tbaa !64
  %conv75 = fpext float %127 to double
  %128 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %129 = getelementptr inbounds %struct.exr_attribute_t, ptr %128, i32 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !29
  %green_y = getelementptr inbounds %struct.exr_attr_chromaticities_t, ptr %130, i32 0, i32 3
  %131 = load float, ptr %green_y, align 1, !tbaa !65
  %conv76 = fpext float %131 to double
  %132 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %133 = getelementptr inbounds %struct.exr_attribute_t, ptr %132, i32 0, i32 6
  %134 = load ptr, ptr %133, align 8, !tbaa !29
  %blue_x = getelementptr inbounds %struct.exr_attr_chromaticities_t, ptr %134, i32 0, i32 4
  %135 = load float, ptr %blue_x, align 1, !tbaa !66
  %conv77 = fpext float %135 to double
  %136 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %137 = getelementptr inbounds %struct.exr_attribute_t, ptr %136, i32 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !29
  %blue_y = getelementptr inbounds %struct.exr_attr_chromaticities_t, ptr %138, i32 0, i32 5
  %139 = load float, ptr %blue_y, align 1, !tbaa !67
  %conv78 = fpext float %139 to double
  %140 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %141 = getelementptr inbounds %struct.exr_attribute_t, ptr %140, i32 0, i32 6
  %142 = load ptr, ptr %141, align 8, !tbaa !29
  %white_x = getelementptr inbounds %struct.exr_attr_chromaticities_t, ptr %142, i32 0, i32 6
  %143 = load float, ptr %white_x, align 1, !tbaa !68
  %conv79 = fpext float %143 to double
  %144 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %145 = getelementptr inbounds %struct.exr_attribute_t, ptr %144, i32 0, i32 6
  %146 = load ptr, ptr %145, align 8, !tbaa !29
  %white_y = getelementptr inbounds %struct.exr_attr_chromaticities_t, ptr %146, i32 0, i32 7
  %147 = load float, ptr %white_y, align 1, !tbaa !69
  %conv80 = fpext float %147 to double
  %call81 = call i32 (ptr, ...) @printf(ptr noundef @.str.28, double noundef %conv73, double noundef %conv74, double noundef %conv75, double noundef %conv76, double noundef %conv77, double noundef %conv78, double noundef %conv79, double noundef %conv80)
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end4
  %148 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %149 = getelementptr inbounds %struct.exr_attribute_t, ptr %148, i32 0, i32 6
  %150 = load i8, ptr %149, align 8, !tbaa !29
  %conv83 = zext i8 %150 to i32
  %cmp84 = icmp slt i32 %conv83, 10
  br i1 %cmp84, label %cond.true86, label %cond.false89

cond.true86:                                      ; preds = %sw.bb82
  %151 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %152 = getelementptr inbounds %struct.exr_attribute_t, ptr %151, i32 0, i32 6
  %153 = load i8, ptr %152, align 8, !tbaa !29
  %idxprom87 = zext i8 %153 to i64
  %arrayidx88 = getelementptr inbounds [10 x ptr], ptr @print_attr.compressionnames, i64 0, i64 %idxprom87
  %154 = load ptr, ptr %arrayidx88, align 8, !tbaa !4
  br label %cond.end90

cond.false89:                                     ; preds = %sw.bb82
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false89, %cond.true86
  %cond91 = phi ptr [ %154, %cond.true86 ], [ @.str.27, %cond.false89 ]
  %call92 = call i32 (ptr, ...) @printf(ptr noundef @.str.39, ptr noundef %cond91)
  %155 = load i32, ptr %verbose.addr, align 4, !tbaa !8
  %tobool93 = icmp ne i32 %155, 0
  br i1 %tobool93, label %if.then94, label %if.end97

if.then94:                                        ; preds = %cond.end90
  %156 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %157 = getelementptr inbounds %struct.exr_attribute_t, ptr %156, i32 0, i32 6
  %158 = load i8, ptr %157, align 8, !tbaa !29
  %conv95 = zext i8 %158 to i32
  %call96 = call i32 (ptr, ...) @printf(ptr noundef @.str.40, i32 noundef %conv95)
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %cond.end90
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end4
  %159 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %160 = getelementptr inbounds %struct.exr_attribute_t, ptr %159, i32 0, i32 6
  %161 = load double, ptr %160, align 8, !tbaa !29
  %call99 = call i32 (ptr, ...) @printf(ptr noundef @.str.41, double noundef %161)
  br label %sw.epilog

sw.bb100:                                         ; preds = %if.end4
  %162 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %163 = getelementptr inbounds %struct.exr_attribute_t, ptr %162, i32 0, i32 6
  %164 = load i8, ptr %163, align 8, !tbaa !29
  %conv101 = zext i8 %164 to i32
  %cmp102 = icmp eq i32 %conv101, 0
  %165 = zext i1 %cmp102 to i64
  %cond104 = select i1 %cmp102, ptr @.str.43, ptr @.str.44
  %call105 = call i32 (ptr, ...) @printf(ptr noundef @.str.42, ptr noundef %cond104)
  br label %sw.epilog

sw.bb106:                                         ; preds = %if.end4
  %166 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %167 = getelementptr inbounds %struct.exr_attribute_t, ptr %166, i32 0, i32 6
  %168 = load float, ptr %167, align 8, !tbaa !29
  %conv107 = fpext float %168 to double
  %call108 = call i32 (ptr, ...) @printf(ptr noundef @.str.41, double noundef %conv107)
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end4
  %169 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %170 = getelementptr inbounds %struct.exr_attribute_t, ptr %169, i32 0, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !29
  %length = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %171, i32 0, i32 0
  %172 = load i32, ptr %length, align 8, !tbaa !54
  %call110 = call i32 (ptr, ...) @printf(ptr noundef @.str.45, i32 noundef %172)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc121, %sw.bb109
  %173 = load i32, ptr %i, align 4, !tbaa !8
  %174 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %175 = getelementptr inbounds %struct.exr_attribute_t, ptr %174, i32 0, i32 6
  %176 = load ptr, ptr %175, align 8, !tbaa !29
  %length112 = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %176, i32 0, i32 0
  %177 = load i32, ptr %length112, align 8, !tbaa !54
  %cmp113 = icmp slt i32 %173, %177
  br i1 %cmp113, label %for.body116, label %for.cond.cleanup115

for.cond.cleanup115:                              ; preds = %for.cond111
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  br label %for.end123

for.body116:                                      ; preds = %for.cond111
  %178 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %179 = getelementptr inbounds %struct.exr_attribute_t, ptr %178, i32 0, i32 6
  %180 = load ptr, ptr %179, align 8, !tbaa !29
  %arr = getelementptr inbounds %struct.exr_attr_float_vector_t, ptr %180, i32 0, i32 2
  %181 = load ptr, ptr %arr, align 8, !tbaa !30
  %182 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom117 = sext i32 %182 to i64
  %arrayidx118 = getelementptr inbounds float, ptr %181, i64 %idxprom117
  %183 = load float, ptr %arrayidx118, align 4, !tbaa !70
  %conv119 = fpext float %183 to double
  %call120 = call i32 (ptr, ...) @printf(ptr noundef @.str.46, double noundef %conv119)
  br label %for.inc121

for.inc121:                                       ; preds = %for.body116
  %184 = load i32, ptr %i, align 4, !tbaa !8
  %inc122 = add nsw i32 %184, 1
  store i32 %inc122, ptr %i, align 4, !tbaa !8
  br label %for.cond111, !llvm.loop !71

for.end123:                                       ; preds = %for.cond.cleanup115
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end4
  %185 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %186 = getelementptr inbounds %struct.exr_attribute_t, ptr %185, i32 0, i32 6
  %187 = load i32, ptr %186, align 8, !tbaa !29
  %call125 = call i32 (ptr, ...) @printf(ptr noundef @.str.47, i32 noundef %187)
  br label %sw.epilog

sw.bb126:                                         ; preds = %if.end4
  %188 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %189 = getelementptr inbounds %struct.exr_attribute_t, ptr %188, i32 0, i32 6
  %190 = load ptr, ptr %189, align 8, !tbaa !29
  %film_mfc_code = getelementptr inbounds %struct.exr_attr_keycode_t, ptr %190, i32 0, i32 0
  %191 = load i32, ptr %film_mfc_code, align 1, !tbaa !72
  %192 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %193 = getelementptr inbounds %struct.exr_attribute_t, ptr %192, i32 0, i32 6
  %194 = load ptr, ptr %193, align 8, !tbaa !29
  %film_type = getelementptr inbounds %struct.exr_attr_keycode_t, ptr %194, i32 0, i32 1
  %195 = load i32, ptr %film_type, align 1, !tbaa !74
  %196 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %197 = getelementptr inbounds %struct.exr_attribute_t, ptr %196, i32 0, i32 6
  %198 = load ptr, ptr %197, align 8, !tbaa !29
  %prefix = getelementptr inbounds %struct.exr_attr_keycode_t, ptr %198, i32 0, i32 2
  %199 = load i32, ptr %prefix, align 1, !tbaa !75
  %200 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %201 = getelementptr inbounds %struct.exr_attribute_t, ptr %200, i32 0, i32 6
  %202 = load ptr, ptr %201, align 8, !tbaa !29
  %count = getelementptr inbounds %struct.exr_attr_keycode_t, ptr %202, i32 0, i32 3
  %203 = load i32, ptr %count, align 1, !tbaa !76
  %204 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %205 = getelementptr inbounds %struct.exr_attribute_t, ptr %204, i32 0, i32 6
  %206 = load ptr, ptr %205, align 8, !tbaa !29
  %perf_offset = getelementptr inbounds %struct.exr_attr_keycode_t, ptr %206, i32 0, i32 4
  %207 = load i32, ptr %perf_offset, align 1, !tbaa !77
  %208 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %209 = getelementptr inbounds %struct.exr_attribute_t, ptr %208, i32 0, i32 6
  %210 = load ptr, ptr %209, align 8, !tbaa !29
  %perfs_per_frame = getelementptr inbounds %struct.exr_attr_keycode_t, ptr %210, i32 0, i32 5
  %211 = load i32, ptr %perfs_per_frame, align 1, !tbaa !78
  %212 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %213 = getelementptr inbounds %struct.exr_attribute_t, ptr %212, i32 0, i32 6
  %214 = load ptr, ptr %213, align 8, !tbaa !29
  %perfs_per_count = getelementptr inbounds %struct.exr_attr_keycode_t, ptr %214, i32 0, i32 6
  %215 = load i32, ptr %perfs_per_count, align 1, !tbaa !79
  %call127 = call i32 (ptr, ...) @printf(ptr noundef @.str.48, i32 noundef %191, i32 noundef %195, i32 noundef %199, i32 noundef %203, i32 noundef %207, i32 noundef %211, i32 noundef %215)
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.end4
  %216 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %217 = getelementptr inbounds %struct.exr_attribute_t, ptr %216, i32 0, i32 6
  %218 = load i8, ptr %217, align 8, !tbaa !29
  %conv129 = zext i8 %218 to i32
  %219 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %220 = getelementptr inbounds %struct.exr_attribute_t, ptr %219, i32 0, i32 6
  %221 = load i8, ptr %220, align 8, !tbaa !29
  %conv130 = zext i8 %221 to i32
  %cmp131 = icmp eq i32 %conv130, 0
  br i1 %cmp131, label %cond.true133, label %cond.false134

cond.true133:                                     ; preds = %sw.bb128
  br label %cond.end146

cond.false134:                                    ; preds = %sw.bb128
  %222 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %223 = getelementptr inbounds %struct.exr_attribute_t, ptr %222, i32 0, i32 6
  %224 = load i8, ptr %223, align 8, !tbaa !29
  %conv135 = zext i8 %224 to i32
  %cmp136 = icmp eq i32 %conv135, 1
  br i1 %cmp136, label %cond.true138, label %cond.false139

cond.true138:                                     ; preds = %cond.false134
  br label %cond.end144

cond.false139:                                    ; preds = %cond.false134
  %225 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %226 = getelementptr inbounds %struct.exr_attribute_t, ptr %225, i32 0, i32 6
  %227 = load i8, ptr %226, align 8, !tbaa !29
  %conv140 = zext i8 %227 to i32
  %cmp141 = icmp eq i32 %conv140, 2
  %228 = zext i1 %cmp141 to i64
  %cond143 = select i1 %cmp141, ptr @.str.52, ptr @.str.27
  br label %cond.end144

cond.end144:                                      ; preds = %cond.false139, %cond.true138
  %cond145 = phi ptr [ @.str.51, %cond.true138 ], [ %cond143, %cond.false139 ]
  br label %cond.end146

cond.end146:                                      ; preds = %cond.end144, %cond.true133
  %cond147 = phi ptr [ @.str.50, %cond.true133 ], [ %cond145, %cond.end144 ]
  %call148 = call i32 (ptr, ...) @printf(ptr noundef @.str.49, i32 noundef %conv129, ptr noundef %cond147)
  br label %sw.epilog

sw.bb149:                                         ; preds = %if.end4
  %229 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %230 = getelementptr inbounds %struct.exr_attribute_t, ptr %229, i32 0, i32 6
  %231 = load ptr, ptr %230, align 8, !tbaa !29
  %m = getelementptr inbounds %struct.exr_attr_m33f_t, ptr %231, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [9 x float], ptr %m, i64 0, i64 0
  %232 = load float, ptr %arrayidx150, align 1, !tbaa !70
  %conv151 = fpext float %232 to double
  %233 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %234 = getelementptr inbounds %struct.exr_attribute_t, ptr %233, i32 0, i32 6
  %235 = load ptr, ptr %234, align 8, !tbaa !29
  %m152 = getelementptr inbounds %struct.exr_attr_m33f_t, ptr %235, i32 0, i32 0
  %arrayidx153 = getelementptr inbounds [9 x float], ptr %m152, i64 0, i64 1
  %236 = load float, ptr %arrayidx153, align 1, !tbaa !70
  %conv154 = fpext float %236 to double
  %237 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %238 = getelementptr inbounds %struct.exr_attribute_t, ptr %237, i32 0, i32 6
  %239 = load ptr, ptr %238, align 8, !tbaa !29
  %m155 = getelementptr inbounds %struct.exr_attr_m33f_t, ptr %239, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [9 x float], ptr %m155, i64 0, i64 2
  %240 = load float, ptr %arrayidx156, align 1, !tbaa !70
  %conv157 = fpext float %240 to double
  %241 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %242 = getelementptr inbounds %struct.exr_attribute_t, ptr %241, i32 0, i32 6
  %243 = load ptr, ptr %242, align 8, !tbaa !29
  %m158 = getelementptr inbounds %struct.exr_attr_m33f_t, ptr %243, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [9 x float], ptr %m158, i64 0, i64 3
  %244 = load float, ptr %arrayidx159, align 1, !tbaa !70
  %conv160 = fpext float %244 to double
  %245 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %246 = getelementptr inbounds %struct.exr_attribute_t, ptr %245, i32 0, i32 6
  %247 = load ptr, ptr %246, align 8, !tbaa !29
  %m161 = getelementptr inbounds %struct.exr_attr_m33f_t, ptr %247, i32 0, i32 0
  %arrayidx162 = getelementptr inbounds [9 x float], ptr %m161, i64 0, i64 4
  %248 = load float, ptr %arrayidx162, align 1, !tbaa !70
  %conv163 = fpext float %248 to double
  %249 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %250 = getelementptr inbounds %struct.exr_attribute_t, ptr %249, i32 0, i32 6
  %251 = load ptr, ptr %250, align 8, !tbaa !29
  %m164 = getelementptr inbounds %struct.exr_attr_m33f_t, ptr %251, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [9 x float], ptr %m164, i64 0, i64 5
  %252 = load float, ptr %arrayidx165, align 1, !tbaa !70
  %conv166 = fpext float %252 to double
  %253 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %254 = getelementptr inbounds %struct.exr_attribute_t, ptr %253, i32 0, i32 6
  %255 = load ptr, ptr %254, align 8, !tbaa !29
  %m167 = getelementptr inbounds %struct.exr_attr_m33f_t, ptr %255, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [9 x float], ptr %m167, i64 0, i64 6
  %256 = load float, ptr %arrayidx168, align 1, !tbaa !70
  %conv169 = fpext float %256 to double
  %257 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %258 = getelementptr inbounds %struct.exr_attribute_t, ptr %257, i32 0, i32 6
  %259 = load ptr, ptr %258, align 8, !tbaa !29
  %m170 = getelementptr inbounds %struct.exr_attr_m33f_t, ptr %259, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [9 x float], ptr %m170, i64 0, i64 7
  %260 = load float, ptr %arrayidx171, align 1, !tbaa !70
  %conv172 = fpext float %260 to double
  %261 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %262 = getelementptr inbounds %struct.exr_attribute_t, ptr %261, i32 0, i32 6
  %263 = load ptr, ptr %262, align 8, !tbaa !29
  %m173 = getelementptr inbounds %struct.exr_attr_m33f_t, ptr %263, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [9 x float], ptr %m173, i64 0, i64 8
  %264 = load float, ptr %arrayidx174, align 1, !tbaa !70
  %conv175 = fpext float %264 to double
  %call176 = call i32 (ptr, ...) @printf(ptr noundef @.str.53, double noundef %conv151, double noundef %conv154, double noundef %conv157, double noundef %conv160, double noundef %conv163, double noundef %conv166, double noundef %conv169, double noundef %conv172, double noundef %conv175)
  br label %sw.epilog

sw.bb177:                                         ; preds = %if.end4
  %265 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %266 = getelementptr inbounds %struct.exr_attribute_t, ptr %265, i32 0, i32 6
  %267 = load ptr, ptr %266, align 8, !tbaa !29
  %m178 = getelementptr inbounds %struct.exr_attr_m33d_t, ptr %267, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [9 x double], ptr %m178, i64 0, i64 0
  %268 = load double, ptr %arrayidx179, align 1, !tbaa !80
  %269 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %270 = getelementptr inbounds %struct.exr_attribute_t, ptr %269, i32 0, i32 6
  %271 = load ptr, ptr %270, align 8, !tbaa !29
  %m180 = getelementptr inbounds %struct.exr_attr_m33d_t, ptr %271, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [9 x double], ptr %m180, i64 0, i64 1
  %272 = load double, ptr %arrayidx181, align 1, !tbaa !80
  %273 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %274 = getelementptr inbounds %struct.exr_attribute_t, ptr %273, i32 0, i32 6
  %275 = load ptr, ptr %274, align 8, !tbaa !29
  %m182 = getelementptr inbounds %struct.exr_attr_m33d_t, ptr %275, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [9 x double], ptr %m182, i64 0, i64 2
  %276 = load double, ptr %arrayidx183, align 1, !tbaa !80
  %277 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %278 = getelementptr inbounds %struct.exr_attribute_t, ptr %277, i32 0, i32 6
  %279 = load ptr, ptr %278, align 8, !tbaa !29
  %m184 = getelementptr inbounds %struct.exr_attr_m33d_t, ptr %279, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [9 x double], ptr %m184, i64 0, i64 3
  %280 = load double, ptr %arrayidx185, align 1, !tbaa !80
  %281 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %282 = getelementptr inbounds %struct.exr_attribute_t, ptr %281, i32 0, i32 6
  %283 = load ptr, ptr %282, align 8, !tbaa !29
  %m186 = getelementptr inbounds %struct.exr_attr_m33d_t, ptr %283, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [9 x double], ptr %m186, i64 0, i64 4
  %284 = load double, ptr %arrayidx187, align 1, !tbaa !80
  %285 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %286 = getelementptr inbounds %struct.exr_attribute_t, ptr %285, i32 0, i32 6
  %287 = load ptr, ptr %286, align 8, !tbaa !29
  %m188 = getelementptr inbounds %struct.exr_attr_m33d_t, ptr %287, i32 0, i32 0
  %arrayidx189 = getelementptr inbounds [9 x double], ptr %m188, i64 0, i64 5
  %288 = load double, ptr %arrayidx189, align 1, !tbaa !80
  %289 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %290 = getelementptr inbounds %struct.exr_attribute_t, ptr %289, i32 0, i32 6
  %291 = load ptr, ptr %290, align 8, !tbaa !29
  %m190 = getelementptr inbounds %struct.exr_attr_m33d_t, ptr %291, i32 0, i32 0
  %arrayidx191 = getelementptr inbounds [9 x double], ptr %m190, i64 0, i64 6
  %292 = load double, ptr %arrayidx191, align 1, !tbaa !80
  %293 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %294 = getelementptr inbounds %struct.exr_attribute_t, ptr %293, i32 0, i32 6
  %295 = load ptr, ptr %294, align 8, !tbaa !29
  %m192 = getelementptr inbounds %struct.exr_attr_m33d_t, ptr %295, i32 0, i32 0
  %arrayidx193 = getelementptr inbounds [9 x double], ptr %m192, i64 0, i64 7
  %296 = load double, ptr %arrayidx193, align 1, !tbaa !80
  %297 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %298 = getelementptr inbounds %struct.exr_attribute_t, ptr %297, i32 0, i32 6
  %299 = load ptr, ptr %298, align 8, !tbaa !29
  %m194 = getelementptr inbounds %struct.exr_attr_m33d_t, ptr %299, i32 0, i32 0
  %arrayidx195 = getelementptr inbounds [9 x double], ptr %m194, i64 0, i64 8
  %300 = load double, ptr %arrayidx195, align 1, !tbaa !80
  %call196 = call i32 (ptr, ...) @printf(ptr noundef @.str.53, double noundef %268, double noundef %272, double noundef %276, double noundef %280, double noundef %284, double noundef %288, double noundef %292, double noundef %296, double noundef %300)
  br label %sw.epilog

sw.bb197:                                         ; preds = %if.end4
  %301 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %302 = getelementptr inbounds %struct.exr_attribute_t, ptr %301, i32 0, i32 6
  %303 = load ptr, ptr %302, align 8, !tbaa !29
  %m198 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %303, i32 0, i32 0
  %arrayidx199 = getelementptr inbounds [16 x float], ptr %m198, i64 0, i64 0
  %304 = load float, ptr %arrayidx199, align 1, !tbaa !70
  %conv200 = fpext float %304 to double
  %305 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %306 = getelementptr inbounds %struct.exr_attribute_t, ptr %305, i32 0, i32 6
  %307 = load ptr, ptr %306, align 8, !tbaa !29
  %m201 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %307, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [16 x float], ptr %m201, i64 0, i64 1
  %308 = load float, ptr %arrayidx202, align 1, !tbaa !70
  %conv203 = fpext float %308 to double
  %309 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %310 = getelementptr inbounds %struct.exr_attribute_t, ptr %309, i32 0, i32 6
  %311 = load ptr, ptr %310, align 8, !tbaa !29
  %m204 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %311, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [16 x float], ptr %m204, i64 0, i64 2
  %312 = load float, ptr %arrayidx205, align 1, !tbaa !70
  %conv206 = fpext float %312 to double
  %313 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %314 = getelementptr inbounds %struct.exr_attribute_t, ptr %313, i32 0, i32 6
  %315 = load ptr, ptr %314, align 8, !tbaa !29
  %m207 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %315, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [16 x float], ptr %m207, i64 0, i64 3
  %316 = load float, ptr %arrayidx208, align 1, !tbaa !70
  %conv209 = fpext float %316 to double
  %317 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %318 = getelementptr inbounds %struct.exr_attribute_t, ptr %317, i32 0, i32 6
  %319 = load ptr, ptr %318, align 8, !tbaa !29
  %m210 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %319, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [16 x float], ptr %m210, i64 0, i64 4
  %320 = load float, ptr %arrayidx211, align 1, !tbaa !70
  %conv212 = fpext float %320 to double
  %321 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %322 = getelementptr inbounds %struct.exr_attribute_t, ptr %321, i32 0, i32 6
  %323 = load ptr, ptr %322, align 8, !tbaa !29
  %m213 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %323, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [16 x float], ptr %m213, i64 0, i64 5
  %324 = load float, ptr %arrayidx214, align 1, !tbaa !70
  %conv215 = fpext float %324 to double
  %325 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %326 = getelementptr inbounds %struct.exr_attribute_t, ptr %325, i32 0, i32 6
  %327 = load ptr, ptr %326, align 8, !tbaa !29
  %m216 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %327, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [16 x float], ptr %m216, i64 0, i64 6
  %328 = load float, ptr %arrayidx217, align 1, !tbaa !70
  %conv218 = fpext float %328 to double
  %329 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %330 = getelementptr inbounds %struct.exr_attribute_t, ptr %329, i32 0, i32 6
  %331 = load ptr, ptr %330, align 8, !tbaa !29
  %m219 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %331, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [16 x float], ptr %m219, i64 0, i64 7
  %332 = load float, ptr %arrayidx220, align 1, !tbaa !70
  %conv221 = fpext float %332 to double
  %333 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %334 = getelementptr inbounds %struct.exr_attribute_t, ptr %333, i32 0, i32 6
  %335 = load ptr, ptr %334, align 8, !tbaa !29
  %m222 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %335, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [16 x float], ptr %m222, i64 0, i64 8
  %336 = load float, ptr %arrayidx223, align 1, !tbaa !70
  %conv224 = fpext float %336 to double
  %337 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %338 = getelementptr inbounds %struct.exr_attribute_t, ptr %337, i32 0, i32 6
  %339 = load ptr, ptr %338, align 8, !tbaa !29
  %m225 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %339, i32 0, i32 0
  %arrayidx226 = getelementptr inbounds [16 x float], ptr %m225, i64 0, i64 9
  %340 = load float, ptr %arrayidx226, align 1, !tbaa !70
  %conv227 = fpext float %340 to double
  %341 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %342 = getelementptr inbounds %struct.exr_attribute_t, ptr %341, i32 0, i32 6
  %343 = load ptr, ptr %342, align 8, !tbaa !29
  %m228 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %343, i32 0, i32 0
  %arrayidx229 = getelementptr inbounds [16 x float], ptr %m228, i64 0, i64 10
  %344 = load float, ptr %arrayidx229, align 1, !tbaa !70
  %conv230 = fpext float %344 to double
  %345 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %346 = getelementptr inbounds %struct.exr_attribute_t, ptr %345, i32 0, i32 6
  %347 = load ptr, ptr %346, align 8, !tbaa !29
  %m231 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %347, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [16 x float], ptr %m231, i64 0, i64 11
  %348 = load float, ptr %arrayidx232, align 1, !tbaa !70
  %conv233 = fpext float %348 to double
  %349 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %350 = getelementptr inbounds %struct.exr_attribute_t, ptr %349, i32 0, i32 6
  %351 = load ptr, ptr %350, align 8, !tbaa !29
  %m234 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %351, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [16 x float], ptr %m234, i64 0, i64 12
  %352 = load float, ptr %arrayidx235, align 1, !tbaa !70
  %conv236 = fpext float %352 to double
  %353 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %354 = getelementptr inbounds %struct.exr_attribute_t, ptr %353, i32 0, i32 6
  %355 = load ptr, ptr %354, align 8, !tbaa !29
  %m237 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %355, i32 0, i32 0
  %arrayidx238 = getelementptr inbounds [16 x float], ptr %m237, i64 0, i64 13
  %356 = load float, ptr %arrayidx238, align 1, !tbaa !70
  %conv239 = fpext float %356 to double
  %357 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %358 = getelementptr inbounds %struct.exr_attribute_t, ptr %357, i32 0, i32 6
  %359 = load ptr, ptr %358, align 8, !tbaa !29
  %m240 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %359, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [16 x float], ptr %m240, i64 0, i64 14
  %360 = load float, ptr %arrayidx241, align 1, !tbaa !70
  %conv242 = fpext float %360 to double
  %361 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %362 = getelementptr inbounds %struct.exr_attribute_t, ptr %361, i32 0, i32 6
  %363 = load ptr, ptr %362, align 8, !tbaa !29
  %m243 = getelementptr inbounds %struct.exr_attr_m44f_t, ptr %363, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [16 x float], ptr %m243, i64 0, i64 15
  %364 = load float, ptr %arrayidx244, align 1, !tbaa !70
  %conv245 = fpext float %364 to double
  %call246 = call i32 (ptr, ...) @printf(ptr noundef @.str.54, double noundef %conv200, double noundef %conv203, double noundef %conv206, double noundef %conv209, double noundef %conv212, double noundef %conv215, double noundef %conv218, double noundef %conv221, double noundef %conv224, double noundef %conv227, double noundef %conv230, double noundef %conv233, double noundef %conv236, double noundef %conv239, double noundef %conv242, double noundef %conv245)
  br label %sw.epilog

sw.bb247:                                         ; preds = %if.end4
  %365 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %366 = getelementptr inbounds %struct.exr_attribute_t, ptr %365, i32 0, i32 6
  %367 = load ptr, ptr %366, align 8, !tbaa !29
  %m248 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %367, i32 0, i32 0
  %arrayidx249 = getelementptr inbounds [16 x double], ptr %m248, i64 0, i64 0
  %368 = load double, ptr %arrayidx249, align 1, !tbaa !80
  %369 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %370 = getelementptr inbounds %struct.exr_attribute_t, ptr %369, i32 0, i32 6
  %371 = load ptr, ptr %370, align 8, !tbaa !29
  %m250 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %371, i32 0, i32 0
  %arrayidx251 = getelementptr inbounds [16 x double], ptr %m250, i64 0, i64 1
  %372 = load double, ptr %arrayidx251, align 1, !tbaa !80
  %373 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %374 = getelementptr inbounds %struct.exr_attribute_t, ptr %373, i32 0, i32 6
  %375 = load ptr, ptr %374, align 8, !tbaa !29
  %m252 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %375, i32 0, i32 0
  %arrayidx253 = getelementptr inbounds [16 x double], ptr %m252, i64 0, i64 2
  %376 = load double, ptr %arrayidx253, align 1, !tbaa !80
  %377 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %378 = getelementptr inbounds %struct.exr_attribute_t, ptr %377, i32 0, i32 6
  %379 = load ptr, ptr %378, align 8, !tbaa !29
  %m254 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %379, i32 0, i32 0
  %arrayidx255 = getelementptr inbounds [16 x double], ptr %m254, i64 0, i64 3
  %380 = load double, ptr %arrayidx255, align 1, !tbaa !80
  %381 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %382 = getelementptr inbounds %struct.exr_attribute_t, ptr %381, i32 0, i32 6
  %383 = load ptr, ptr %382, align 8, !tbaa !29
  %m256 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %383, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [16 x double], ptr %m256, i64 0, i64 4
  %384 = load double, ptr %arrayidx257, align 1, !tbaa !80
  %385 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %386 = getelementptr inbounds %struct.exr_attribute_t, ptr %385, i32 0, i32 6
  %387 = load ptr, ptr %386, align 8, !tbaa !29
  %m258 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %387, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [16 x double], ptr %m258, i64 0, i64 5
  %388 = load double, ptr %arrayidx259, align 1, !tbaa !80
  %389 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %390 = getelementptr inbounds %struct.exr_attribute_t, ptr %389, i32 0, i32 6
  %391 = load ptr, ptr %390, align 8, !tbaa !29
  %m260 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %391, i32 0, i32 0
  %arrayidx261 = getelementptr inbounds [16 x double], ptr %m260, i64 0, i64 6
  %392 = load double, ptr %arrayidx261, align 1, !tbaa !80
  %393 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %394 = getelementptr inbounds %struct.exr_attribute_t, ptr %393, i32 0, i32 6
  %395 = load ptr, ptr %394, align 8, !tbaa !29
  %m262 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %395, i32 0, i32 0
  %arrayidx263 = getelementptr inbounds [16 x double], ptr %m262, i64 0, i64 7
  %396 = load double, ptr %arrayidx263, align 1, !tbaa !80
  %397 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %398 = getelementptr inbounds %struct.exr_attribute_t, ptr %397, i32 0, i32 6
  %399 = load ptr, ptr %398, align 8, !tbaa !29
  %m264 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %399, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [16 x double], ptr %m264, i64 0, i64 8
  %400 = load double, ptr %arrayidx265, align 1, !tbaa !80
  %401 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %402 = getelementptr inbounds %struct.exr_attribute_t, ptr %401, i32 0, i32 6
  %403 = load ptr, ptr %402, align 8, !tbaa !29
  %m266 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %403, i32 0, i32 0
  %arrayidx267 = getelementptr inbounds [16 x double], ptr %m266, i64 0, i64 9
  %404 = load double, ptr %arrayidx267, align 1, !tbaa !80
  %405 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %406 = getelementptr inbounds %struct.exr_attribute_t, ptr %405, i32 0, i32 6
  %407 = load ptr, ptr %406, align 8, !tbaa !29
  %m268 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %407, i32 0, i32 0
  %arrayidx269 = getelementptr inbounds [16 x double], ptr %m268, i64 0, i64 10
  %408 = load double, ptr %arrayidx269, align 1, !tbaa !80
  %409 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %410 = getelementptr inbounds %struct.exr_attribute_t, ptr %409, i32 0, i32 6
  %411 = load ptr, ptr %410, align 8, !tbaa !29
  %m270 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %411, i32 0, i32 0
  %arrayidx271 = getelementptr inbounds [16 x double], ptr %m270, i64 0, i64 11
  %412 = load double, ptr %arrayidx271, align 1, !tbaa !80
  %413 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %414 = getelementptr inbounds %struct.exr_attribute_t, ptr %413, i32 0, i32 6
  %415 = load ptr, ptr %414, align 8, !tbaa !29
  %m272 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %415, i32 0, i32 0
  %arrayidx273 = getelementptr inbounds [16 x double], ptr %m272, i64 0, i64 12
  %416 = load double, ptr %arrayidx273, align 1, !tbaa !80
  %417 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %418 = getelementptr inbounds %struct.exr_attribute_t, ptr %417, i32 0, i32 6
  %419 = load ptr, ptr %418, align 8, !tbaa !29
  %m274 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %419, i32 0, i32 0
  %arrayidx275 = getelementptr inbounds [16 x double], ptr %m274, i64 0, i64 13
  %420 = load double, ptr %arrayidx275, align 1, !tbaa !80
  %421 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %422 = getelementptr inbounds %struct.exr_attribute_t, ptr %421, i32 0, i32 6
  %423 = load ptr, ptr %422, align 8, !tbaa !29
  %m276 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %423, i32 0, i32 0
  %arrayidx277 = getelementptr inbounds [16 x double], ptr %m276, i64 0, i64 14
  %424 = load double, ptr %arrayidx277, align 1, !tbaa !80
  %425 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %426 = getelementptr inbounds %struct.exr_attribute_t, ptr %425, i32 0, i32 6
  %427 = load ptr, ptr %426, align 8, !tbaa !29
  %m278 = getelementptr inbounds %struct.exr_attr_m44d_t, ptr %427, i32 0, i32 0
  %arrayidx279 = getelementptr inbounds [16 x double], ptr %m278, i64 0, i64 15
  %428 = load double, ptr %arrayidx279, align 1, !tbaa !80
  %call280 = call i32 (ptr, ...) @printf(ptr noundef @.str.54, double noundef %368, double noundef %372, double noundef %376, double noundef %380, double noundef %384, double noundef %388, double noundef %392, double noundef %396, double noundef %400, double noundef %404, double noundef %408, double noundef %412, double noundef %416, double noundef %420, double noundef %424, double noundef %428)
  br label %sw.epilog

sw.bb281:                                         ; preds = %if.end4
  %429 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %430 = getelementptr inbounds %struct.exr_attribute_t, ptr %429, i32 0, i32 6
  %431 = load ptr, ptr %430, align 8, !tbaa !29
  %width = getelementptr inbounds %struct.exr_attr_preview_t, ptr %431, i32 0, i32 0
  %432 = load i32, ptr %width, align 8, !tbaa !82
  %433 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %434 = getelementptr inbounds %struct.exr_attribute_t, ptr %433, i32 0, i32 6
  %435 = load ptr, ptr %434, align 8, !tbaa !29
  %height = getelementptr inbounds %struct.exr_attr_preview_t, ptr %435, i32 0, i32 1
  %436 = load i32, ptr %height, align 4, !tbaa !84
  %call282 = call i32 (ptr, ...) @printf(ptr noundef @.str.55, i32 noundef %432, i32 noundef %436)
  br label %sw.epilog

sw.bb283:                                         ; preds = %if.end4
  %437 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %438 = getelementptr inbounds %struct.exr_attribute_t, ptr %437, i32 0, i32 6
  %439 = load ptr, ptr %438, align 8, !tbaa !29
  %num = getelementptr inbounds %struct.exr_attr_rational_t, ptr %439, i32 0, i32 0
  %440 = load i32, ptr %num, align 1, !tbaa !85
  %441 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %442 = getelementptr inbounds %struct.exr_attribute_t, ptr %441, i32 0, i32 6
  %443 = load ptr, ptr %442, align 8, !tbaa !29
  %denom = getelementptr inbounds %struct.exr_attr_rational_t, ptr %443, i32 0, i32 1
  %444 = load i32, ptr %denom, align 1, !tbaa !87
  %call284 = call i32 (ptr, ...) @printf(ptr noundef @.str.56, i32 noundef %440, i32 noundef %444)
  %445 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %446 = getelementptr inbounds %struct.exr_attribute_t, ptr %445, i32 0, i32 6
  %447 = load ptr, ptr %446, align 8, !tbaa !29
  %denom285 = getelementptr inbounds %struct.exr_attr_rational_t, ptr %447, i32 0, i32 1
  %448 = load i32, ptr %denom285, align 1, !tbaa !87
  %cmp286 = icmp ne i32 %448, 0
  br i1 %cmp286, label %if.then288, label %if.end294

if.then288:                                       ; preds = %sw.bb283
  %449 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %450 = getelementptr inbounds %struct.exr_attribute_t, ptr %449, i32 0, i32 6
  %451 = load ptr, ptr %450, align 8, !tbaa !29
  %num289 = getelementptr inbounds %struct.exr_attr_rational_t, ptr %451, i32 0, i32 0
  %452 = load i32, ptr %num289, align 1, !tbaa !85
  %conv290 = sitofp i32 %452 to double
  %453 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %454 = getelementptr inbounds %struct.exr_attribute_t, ptr %453, i32 0, i32 6
  %455 = load ptr, ptr %454, align 8, !tbaa !29
  %denom291 = getelementptr inbounds %struct.exr_attr_rational_t, ptr %455, i32 0, i32 1
  %456 = load i32, ptr %denom291, align 1, !tbaa !87
  %conv292 = uitofp i32 %456 to double
  %div = fdiv double %conv290, %conv292
  %call293 = call i32 (ptr, ...) @printf(ptr noundef @.str.57, double noundef %div)
  br label %if.end294

if.end294:                                        ; preds = %if.then288, %sw.bb283
  br label %sw.epilog

sw.bb295:                                         ; preds = %if.end4
  %457 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %458 = getelementptr inbounds %struct.exr_attribute_t, ptr %457, i32 0, i32 6
  %459 = load ptr, ptr %458, align 8, !tbaa !29
  %str296 = getelementptr inbounds %struct.exr_attr_string_t, ptr %459, i32 0, i32 2
  %460 = load ptr, ptr %str296, align 8, !tbaa !30
  %tobool297 = icmp ne ptr %460, null
  br i1 %tobool297, label %cond.true298, label %cond.false300

cond.true298:                                     ; preds = %sw.bb295
  %461 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %462 = getelementptr inbounds %struct.exr_attribute_t, ptr %461, i32 0, i32 6
  %463 = load ptr, ptr %462, align 8, !tbaa !29
  %str299 = getelementptr inbounds %struct.exr_attr_string_t, ptr %463, i32 0, i32 2
  %464 = load ptr, ptr %str299, align 8, !tbaa !30
  br label %cond.end301

cond.false300:                                    ; preds = %sw.bb295
  br label %cond.end301

cond.end301:                                      ; preds = %cond.false300, %cond.true298
  %cond302 = phi ptr [ %464, %cond.true298 ], [ @.str.58, %cond.false300 ]
  %call303 = call i32 (ptr, ...) @printf(ptr noundef @.str.39, ptr noundef %cond302)
  br label %sw.epilog

sw.bb304:                                         ; preds = %if.end4
  %465 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %466 = getelementptr inbounds %struct.exr_attribute_t, ptr %465, i32 0, i32 6
  %467 = load ptr, ptr %466, align 8, !tbaa !29
  %n_strings = getelementptr inbounds %struct.exr_attr_string_vector_t, ptr %467, i32 0, i32 0
  %468 = load i32, ptr %n_strings, align 8, !tbaa !54
  %call305 = call i32 (ptr, ...) @printf(ptr noundef @.str.59, i32 noundef %468)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i306) #5
  store i32 0, ptr %i306, align 4, !tbaa !8
  br label %for.cond307

for.cond307:                                      ; preds = %for.inc322, %sw.bb304
  %469 = load i32, ptr %i306, align 4, !tbaa !8
  %470 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %471 = getelementptr inbounds %struct.exr_attribute_t, ptr %470, i32 0, i32 6
  %472 = load ptr, ptr %471, align 8, !tbaa !29
  %n_strings308 = getelementptr inbounds %struct.exr_attr_string_vector_t, ptr %472, i32 0, i32 0
  %473 = load i32, ptr %n_strings308, align 8, !tbaa !54
  %cmp309 = icmp slt i32 %469, %473
  br i1 %cmp309, label %for.body312, label %for.cond.cleanup311

for.cond.cleanup311:                              ; preds = %for.cond307
  call void @llvm.lifetime.end.p0(i64 4, ptr %i306) #5
  br label %for.end324

for.body312:                                      ; preds = %for.cond307
  %474 = load i32, ptr %i306, align 4, !tbaa !8
  %cmp313 = icmp sgt i32 %474, 0
  br i1 %cmp313, label %if.then315, label %if.end317

if.then315:                                       ; preds = %for.body312
  %call316 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end317

if.end317:                                        ; preds = %if.then315, %for.body312
  %475 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %476 = getelementptr inbounds %struct.exr_attribute_t, ptr %475, i32 0, i32 6
  %477 = load ptr, ptr %476, align 8, !tbaa !29
  %strings = getelementptr inbounds %struct.exr_attr_string_vector_t, ptr %477, i32 0, i32 2
  %478 = load ptr, ptr %strings, align 8, !tbaa !30
  %479 = load i32, ptr %i306, align 4, !tbaa !8
  %idxprom318 = sext i32 %479 to i64
  %arrayidx319 = getelementptr inbounds %struct.exr_attr_string_t, ptr %478, i64 %idxprom318
  %str320 = getelementptr inbounds %struct.exr_attr_string_t, ptr %arrayidx319, i32 0, i32 2
  %480 = load ptr, ptr %str320, align 8, !tbaa !30
  %call321 = call i32 (ptr, ...) @printf(ptr noundef @.str.60, ptr noundef %480)
  br label %for.inc322

for.inc322:                                       ; preds = %if.end317
  %481 = load i32, ptr %i306, align 4, !tbaa !8
  %inc323 = add nsw i32 %481, 1
  store i32 %inc323, ptr %i306, align 4, !tbaa !8
  br label %for.cond307, !llvm.loop !88

for.end324:                                       ; preds = %for.cond.cleanup311
  br label %sw.epilog

sw.bb325:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 1, ptr %lvlMode) #5
  %482 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %483 = getelementptr inbounds %struct.exr_attribute_t, ptr %482, i32 0, i32 6
  %484 = load ptr, ptr %483, align 8, !tbaa !29
  %level_and_round = getelementptr inbounds %struct.exr_attr_tiledesc_t, ptr %484, i32 0, i32 2
  %485 = load i8, ptr %level_and_round, align 1, !tbaa !89
  %conv326 = zext i8 %485 to i32
  %and = and i32 %conv326, 15
  %conv327 = trunc i32 %and to i8
  store i8 %conv327, ptr %lvlMode, align 1, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 1, ptr %rndMode) #5
  %486 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %487 = getelementptr inbounds %struct.exr_attribute_t, ptr %486, i32 0, i32 6
  %488 = load ptr, ptr %487, align 8, !tbaa !29
  %level_and_round328 = getelementptr inbounds %struct.exr_attr_tiledesc_t, ptr %488, i32 0, i32 2
  %489 = load i8, ptr %level_and_round328, align 1, !tbaa !89
  %conv329 = zext i8 %489 to i32
  %shr = ashr i32 %conv329, 4
  %and330 = and i32 %shr, 15
  %conv331 = trunc i32 %and330 to i8
  store i8 %conv331, ptr %rndMode, align 1, !tbaa !29
  %490 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %491 = getelementptr inbounds %struct.exr_attribute_t, ptr %490, i32 0, i32 6
  %492 = load ptr, ptr %491, align 8, !tbaa !29
  %x_size = getelementptr inbounds %struct.exr_attr_tiledesc_t, ptr %492, i32 0, i32 0
  %493 = load i32, ptr %x_size, align 1, !tbaa !91
  %494 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %495 = getelementptr inbounds %struct.exr_attribute_t, ptr %494, i32 0, i32 6
  %496 = load ptr, ptr %495, align 8, !tbaa !29
  %y_size = getelementptr inbounds %struct.exr_attr_tiledesc_t, ptr %496, i32 0, i32 1
  %497 = load i32, ptr %y_size, align 1, !tbaa !92
  %498 = load i8, ptr %lvlMode, align 1, !tbaa !29
  %conv332 = zext i8 %498 to i32
  %499 = load i8, ptr %lvlMode, align 1, !tbaa !29
  %conv333 = zext i8 %499 to i32
  %cmp334 = icmp slt i32 %conv333, 3
  br i1 %cmp334, label %cond.true336, label %cond.false339

cond.true336:                                     ; preds = %sw.bb325
  %500 = load i8, ptr %lvlMode, align 1, !tbaa !29
  %idxprom337 = zext i8 %500 to i64
  %arrayidx338 = getelementptr inbounds [3 x ptr], ptr @print_attr.lvlModes, i64 0, i64 %idxprom337
  %501 = load ptr, ptr %arrayidx338, align 8, !tbaa !4
  br label %cond.end340

cond.false339:                                    ; preds = %sw.bb325
  br label %cond.end340

cond.end340:                                      ; preds = %cond.false339, %cond.true336
  %cond341 = phi ptr [ %501, %cond.true336 ], [ @.str.27, %cond.false339 ]
  %502 = load i8, ptr %rndMode, align 1, !tbaa !29
  %conv342 = zext i8 %502 to i32
  %503 = load i8, ptr %rndMode, align 1, !tbaa !29
  %conv343 = zext i8 %503 to i32
  %cmp344 = icmp eq i32 %conv343, 0
  %504 = zext i1 %cmp344 to i64
  %cond346 = select i1 %cmp344, ptr @.str.65, ptr @.str.66
  %call347 = call i32 (ptr, ...) @printf(ptr noundef @.str.64, i32 noundef %493, i32 noundef %497, i32 noundef %conv332, ptr noundef %cond341, i32 noundef %conv342, ptr noundef %cond346)
  call void @llvm.lifetime.end.p0(i64 1, ptr %rndMode) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr %lvlMode) #5
  br label %sw.epilog

sw.bb348:                                         ; preds = %if.end4
  %505 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %506 = getelementptr inbounds %struct.exr_attribute_t, ptr %505, i32 0, i32 6
  %507 = load ptr, ptr %506, align 8, !tbaa !29
  %time_and_flags = getelementptr inbounds %struct.exr_attr_timecode_t, ptr %507, i32 0, i32 0
  %508 = load i32, ptr %time_and_flags, align 1, !tbaa !85
  %509 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %510 = getelementptr inbounds %struct.exr_attribute_t, ptr %509, i32 0, i32 6
  %511 = load ptr, ptr %510, align 8, !tbaa !29
  %user_data = getelementptr inbounds %struct.exr_attr_timecode_t, ptr %511, i32 0, i32 1
  %512 = load i32, ptr %user_data, align 1, !tbaa !87
  %call349 = call i32 (ptr, ...) @printf(ptr noundef @.str.67, i32 noundef %508, i32 noundef %512)
  br label %sw.epilog

sw.bb350:                                         ; preds = %if.end4
  %513 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %514 = getelementptr inbounds %struct.exr_attribute_t, ptr %513, i32 0, i32 6
  %515 = load ptr, ptr %514, align 8, !tbaa !29
  %516 = getelementptr inbounds %struct.exr_attr_v2i_t, ptr %515, i32 0, i32 0
  %x351 = getelementptr inbounds %struct.anon, ptr %516, i32 0, i32 0
  %517 = load i32, ptr %x351, align 1, !tbaa !29
  %518 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %519 = getelementptr inbounds %struct.exr_attribute_t, ptr %518, i32 0, i32 6
  %520 = load ptr, ptr %519, align 8, !tbaa !29
  %521 = getelementptr inbounds %struct.exr_attr_v2i_t, ptr %520, i32 0, i32 0
  %y352 = getelementptr inbounds %struct.anon, ptr %521, i32 0, i32 1
  %522 = load i32, ptr %y352, align 1, !tbaa !29
  %call353 = call i32 (ptr, ...) @printf(ptr noundef @.str.68, i32 noundef %517, i32 noundef %522)
  br label %sw.epilog

sw.bb354:                                         ; preds = %if.end4
  %523 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %524 = getelementptr inbounds %struct.exr_attribute_t, ptr %523, i32 0, i32 6
  %525 = load ptr, ptr %524, align 8, !tbaa !29
  %526 = getelementptr inbounds %struct.exr_attr_v2f_t, ptr %525, i32 0, i32 0
  %x355 = getelementptr inbounds %struct.anon.2, ptr %526, i32 0, i32 0
  %527 = load float, ptr %x355, align 1, !tbaa !29
  %conv356 = fpext float %527 to double
  %528 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %529 = getelementptr inbounds %struct.exr_attribute_t, ptr %528, i32 0, i32 6
  %530 = load ptr, ptr %529, align 8, !tbaa !29
  %531 = getelementptr inbounds %struct.exr_attr_v2f_t, ptr %530, i32 0, i32 0
  %y357 = getelementptr inbounds %struct.anon.2, ptr %531, i32 0, i32 1
  %532 = load float, ptr %y357, align 1, !tbaa !29
  %conv358 = fpext float %532 to double
  %call359 = call i32 (ptr, ...) @printf(ptr noundef @.str.69, double noundef %conv356, double noundef %conv358)
  br label %sw.epilog

sw.bb360:                                         ; preds = %if.end4
  %533 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %534 = getelementptr inbounds %struct.exr_attribute_t, ptr %533, i32 0, i32 6
  %535 = load ptr, ptr %534, align 8, !tbaa !29
  %536 = getelementptr inbounds %struct.exr_attr_v2d_t, ptr %535, i32 0, i32 0
  %x361 = getelementptr inbounds %struct.anon.4, ptr %536, i32 0, i32 0
  %537 = load double, ptr %x361, align 1, !tbaa !29
  %538 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %539 = getelementptr inbounds %struct.exr_attribute_t, ptr %538, i32 0, i32 6
  %540 = load ptr, ptr %539, align 8, !tbaa !29
  %541 = getelementptr inbounds %struct.exr_attr_v2d_t, ptr %540, i32 0, i32 0
  %y362 = getelementptr inbounds %struct.anon.4, ptr %541, i32 0, i32 1
  %542 = load double, ptr %y362, align 1, !tbaa !29
  %call363 = call i32 (ptr, ...) @printf(ptr noundef @.str.69, double noundef %537, double noundef %542)
  br label %sw.epilog

sw.bb364:                                         ; preds = %if.end4
  %543 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %544 = getelementptr inbounds %struct.exr_attribute_t, ptr %543, i32 0, i32 6
  %545 = load ptr, ptr %544, align 8, !tbaa !29
  %546 = getelementptr inbounds %struct.exr_attr_v3i_t, ptr %545, i32 0, i32 0
  %x365 = getelementptr inbounds %struct.anon.6, ptr %546, i32 0, i32 0
  %547 = load i32, ptr %x365, align 1, !tbaa !29
  %548 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %549 = getelementptr inbounds %struct.exr_attribute_t, ptr %548, i32 0, i32 6
  %550 = load ptr, ptr %549, align 8, !tbaa !29
  %551 = getelementptr inbounds %struct.exr_attr_v3i_t, ptr %550, i32 0, i32 0
  %y366 = getelementptr inbounds %struct.anon.6, ptr %551, i32 0, i32 1
  %552 = load i32, ptr %y366, align 1, !tbaa !29
  %553 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %554 = getelementptr inbounds %struct.exr_attribute_t, ptr %553, i32 0, i32 6
  %555 = load ptr, ptr %554, align 8, !tbaa !29
  %556 = getelementptr inbounds %struct.exr_attr_v3i_t, ptr %555, i32 0, i32 0
  %z = getelementptr inbounds %struct.anon.6, ptr %556, i32 0, i32 2
  %557 = load i32, ptr %z, align 1, !tbaa !29
  %call367 = call i32 (ptr, ...) @printf(ptr noundef @.str.70, i32 noundef %547, i32 noundef %552, i32 noundef %557)
  br label %sw.epilog

sw.bb368:                                         ; preds = %if.end4
  %558 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %559 = getelementptr inbounds %struct.exr_attribute_t, ptr %558, i32 0, i32 6
  %560 = load ptr, ptr %559, align 8, !tbaa !29
  %561 = getelementptr inbounds %struct.exr_attr_v3f_t, ptr %560, i32 0, i32 0
  %x369 = getelementptr inbounds %struct.anon.8, ptr %561, i32 0, i32 0
  %562 = load float, ptr %x369, align 1, !tbaa !29
  %conv370 = fpext float %562 to double
  %563 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %564 = getelementptr inbounds %struct.exr_attribute_t, ptr %563, i32 0, i32 6
  %565 = load ptr, ptr %564, align 8, !tbaa !29
  %566 = getelementptr inbounds %struct.exr_attr_v3f_t, ptr %565, i32 0, i32 0
  %y371 = getelementptr inbounds %struct.anon.8, ptr %566, i32 0, i32 1
  %567 = load float, ptr %y371, align 1, !tbaa !29
  %conv372 = fpext float %567 to double
  %568 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %569 = getelementptr inbounds %struct.exr_attribute_t, ptr %568, i32 0, i32 6
  %570 = load ptr, ptr %569, align 8, !tbaa !29
  %571 = getelementptr inbounds %struct.exr_attr_v3f_t, ptr %570, i32 0, i32 0
  %z373 = getelementptr inbounds %struct.anon.8, ptr %571, i32 0, i32 2
  %572 = load float, ptr %z373, align 1, !tbaa !29
  %conv374 = fpext float %572 to double
  %call375 = call i32 (ptr, ...) @printf(ptr noundef @.str.71, double noundef %conv370, double noundef %conv372, double noundef %conv374)
  br label %sw.epilog

sw.bb376:                                         ; preds = %if.end4
  %573 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %574 = getelementptr inbounds %struct.exr_attribute_t, ptr %573, i32 0, i32 6
  %575 = load ptr, ptr %574, align 8, !tbaa !29
  %576 = getelementptr inbounds %struct.exr_attr_v3d_t, ptr %575, i32 0, i32 0
  %x377 = getelementptr inbounds %struct.anon.10, ptr %576, i32 0, i32 0
  %577 = load double, ptr %x377, align 1, !tbaa !29
  %578 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %579 = getelementptr inbounds %struct.exr_attribute_t, ptr %578, i32 0, i32 6
  %580 = load ptr, ptr %579, align 8, !tbaa !29
  %581 = getelementptr inbounds %struct.exr_attr_v3d_t, ptr %580, i32 0, i32 0
  %y378 = getelementptr inbounds %struct.anon.10, ptr %581, i32 0, i32 1
  %582 = load double, ptr %y378, align 1, !tbaa !29
  %583 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %584 = getelementptr inbounds %struct.exr_attribute_t, ptr %583, i32 0, i32 6
  %585 = load ptr, ptr %584, align 8, !tbaa !29
  %586 = getelementptr inbounds %struct.exr_attr_v3d_t, ptr %585, i32 0, i32 0
  %z379 = getelementptr inbounds %struct.anon.10, ptr %586, i32 0, i32 2
  %587 = load double, ptr %z379, align 1, !tbaa !29
  %call380 = call i32 (ptr, ...) @printf(ptr noundef @.str.71, double noundef %577, double noundef %582, double noundef %587)
  br label %sw.epilog

sw.bb381:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %faddr_unpack) #5
  %588 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %589 = getelementptr inbounds %struct.exr_attribute_t, ptr %588, i32 0, i32 6
  %590 = load ptr, ptr %589, align 8, !tbaa !29
  %unpack_func_ptr = getelementptr inbounds %struct.exr_attr_opaquedata_t, ptr %590, i32 0, i32 6
  %591 = load ptr, ptr %unpack_func_ptr, align 8, !tbaa !93
  %592 = ptrtoint ptr %591 to i64
  store i64 %592, ptr %faddr_unpack, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr %faddr_pack) #5
  %593 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %594 = getelementptr inbounds %struct.exr_attribute_t, ptr %593, i32 0, i32 6
  %595 = load ptr, ptr %594, align 8, !tbaa !29
  %pack_func_ptr = getelementptr inbounds %struct.exr_attr_opaquedata_t, ptr %595, i32 0, i32 7
  %596 = load ptr, ptr %pack_func_ptr, align 8, !tbaa !96
  %597 = ptrtoint ptr %596 to i64
  store i64 %597, ptr %faddr_pack, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 8, ptr %faddr_destroy) #5
  %598 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %599 = getelementptr inbounds %struct.exr_attribute_t, ptr %598, i32 0, i32 6
  %600 = load ptr, ptr %599, align 8, !tbaa !29
  %destroy_unpacked_func_ptr = getelementptr inbounds %struct.exr_attr_opaquedata_t, ptr %600, i32 0, i32 8
  %601 = load ptr, ptr %destroy_unpacked_func_ptr, align 8, !tbaa !97
  %602 = ptrtoint ptr %601 to i64
  store i64 %602, ptr %faddr_destroy, align 8, !tbaa !95
  %603 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %604 = getelementptr inbounds %struct.exr_attribute_t, ptr %603, i32 0, i32 6
  %605 = load ptr, ptr %604, align 8, !tbaa !29
  %size = getelementptr inbounds %struct.exr_attr_opaquedata_t, ptr %605, i32 0, i32 0
  %606 = load i32, ptr %size, align 8, !tbaa !98
  %607 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %608 = getelementptr inbounds %struct.exr_attribute_t, ptr %607, i32 0, i32 6
  %609 = load ptr, ptr %608, align 8, !tbaa !29
  %unpacked_size = getelementptr inbounds %struct.exr_attr_opaquedata_t, ptr %609, i32 0, i32 1
  %610 = load i32, ptr %unpacked_size, align 4, !tbaa !99
  %611 = load i64, ptr %faddr_unpack, align 8, !tbaa !95
  %612 = inttoptr i64 %611 to ptr
  %613 = load i64, ptr %faddr_pack, align 8, !tbaa !95
  %614 = inttoptr i64 %613 to ptr
  %615 = load i64, ptr %faddr_destroy, align 8, !tbaa !95
  %616 = inttoptr i64 %615 to ptr
  %call382 = call i32 (ptr, ...) @printf(ptr noundef @.str.72, i32 noundef %606, i32 noundef %610, ptr noundef %612, ptr noundef %614, ptr noundef %616)
  call void @llvm.lifetime.end.p0(i64 8, ptr %faddr_destroy) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %faddr_pack) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %faddr_unpack) #5
  br label %sw.epilog

sw.bb383:                                         ; preds = %if.end4, %if.end4
  br label %sw.default

sw.default:                                       ; preds = %if.end4, %sw.bb383
  %617 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %type_name384 = getelementptr inbounds %struct.exr_attribute_t, ptr %617, i32 0, i32 1
  %618 = load ptr, ptr %type_name384, align 8, !tbaa !52
  %call385 = call i32 (ptr, ...) @printf(ptr noundef @.str.73, ptr noundef %618)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb381, %sw.bb376, %sw.bb368, %sw.bb364, %sw.bb360, %sw.bb354, %sw.bb350, %sw.bb348, %cond.end340, %for.end324, %cond.end301, %if.end294, %sw.bb281, %sw.bb247, %sw.bb197, %sw.bb177, %sw.bb149, %cond.end146, %sw.bb126, %sw.bb124, %for.end123, %sw.bb106, %sw.bb100, %sw.bb98, %if.end97, %sw.bb72, %for.end, %sw.bb20, %sw.bb
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @internal_exr_unlock(ptr noundef %c) #2 {
entry:
  %c.addr = alloca ptr, align 8
  %nonc = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nonc) #5
  %0 = load ptr, ptr %c.addr, align 8, !tbaa !4
  %1 = ptrtoint ptr %0 to i64
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %nonc, align 8, !tbaa !4
  %3 = load ptr, ptr %nonc, align 8, !tbaa !4
  %mutex = getelementptr inbounds %struct._internal_exr_context, ptr %3, i32 0, i32 39
  %call = call i32 @pthread_mutex_unlock(ptr noundef %mutex) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %nonc) #5
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !6, i64 0}
!11 = !{!"_internal_exr_context", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !12, i64 8, !12, i64 24, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !13, i64 124, !5, i64 128, !5, i64 136, !5, i64 144, !14, i64 152, !5, i64 160, !5, i64 168, !14, i64 176, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !15, i64 200, !5, i64 464, !5, i64 472, !16, i64 480, !6, i64 504, !6, i64 544, !6, i64 545, !6, i64 546}
!12 = !{!"", !9, i64 0, !9, i64 4, !5, i64 8}
!13 = !{!"float", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"_internal_exr_part", !9, i64 0, !6, i64 4, !16, i64 8, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !17, i64 144, !17, i64 160, !6, i64 176, !6, i64 180, !9, i64 184, !13, i64 188, !9, i64 192, !9, i64 196, !5, i64 200, !5, i64 208, !5, i64 216, !5, i64 224, !14, i64 232, !19, i64 240, !19, i64 242, !9, i64 244, !14, i64 248, !6, i64 256}
!16 = !{!"exr_attribute_list", !9, i64 0, !9, i64 4, !5, i64 8, !5, i64 16}
!17 = !{!"", !18, i64 0, !18, i64 8}
!18 = !{!"", !6, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = !{!11, !5, i64 16}
!21 = !{!11, !6, i64 1}
!22 = !{!11, !6, i64 3}
!23 = !{!11, !6, i64 2}
!24 = !{!11, !6, i64 4}
!25 = !{!11, !6, i64 5}
!26 = !{!11, !9, i64 196}
!27 = !{!11, !5, i64 472}
!28 = !{!15, !5, i64 104}
!29 = !{!6, !6, i64 0}
!30 = !{!12, !5, i64 8}
!31 = !{!15, !9, i64 8}
!32 = !{!15, !5, i64 16}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!15, !5, i64 112}
!36 = !{!15, !5, i64 40}
!37 = !{!15, !5, i64 96}
!38 = !{!15, !5, i64 56}
!39 = !{!15, !5, i64 48}
!40 = !{!15, !5, i64 32}
!41 = !{!15, !9, i64 192}
!42 = !{!15, !9, i64 196}
!43 = !{!15, !5, i64 200}
!44 = !{!15, !5, i64 216}
!45 = distinct !{!45, !34}
!46 = !{!15, !5, i64 208}
!47 = !{!15, !5, i64 224}
!48 = distinct !{!48, !34}
!49 = distinct !{!49, !34}
!50 = !{!51, !5, i64 0}
!51 = !{!"", !5, i64 0, !5, i64 8, !6, i64 16, !6, i64 17, !6, i64 18, !6, i64 20, !6, i64 24}
!52 = !{!51, !5, i64 8}
!53 = !{!51, !6, i64 20}
!54 = !{!12, !9, i64 0}
!55 = !{!56, !5, i64 8}
!56 = !{!"", !12, i64 0, !6, i64 16, !6, i64 20, !6, i64 21, !9, i64 24, !9, i64 28}
!57 = !{!56, !6, i64 16}
!58 = !{!56, !9, i64 24}
!59 = !{!56, !9, i64 28}
!60 = distinct !{!60, !34}
!61 = !{!62, !13, i64 0}
!62 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28}
!63 = !{!62, !13, i64 4}
!64 = !{!62, !13, i64 8}
!65 = !{!62, !13, i64 12}
!66 = !{!62, !13, i64 16}
!67 = !{!62, !13, i64 20}
!68 = !{!62, !13, i64 24}
!69 = !{!62, !13, i64 28}
!70 = !{!13, !13, i64 0}
!71 = distinct !{!71, !34}
!72 = !{!73, !9, i64 0}
!73 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!74 = !{!73, !9, i64 4}
!75 = !{!73, !9, i64 8}
!76 = !{!73, !9, i64 12}
!77 = !{!73, !9, i64 16}
!78 = !{!73, !9, i64 20}
!79 = !{!73, !9, i64 24}
!80 = !{!81, !81, i64 0}
!81 = !{!"double", !6, i64 0}
!82 = !{!83, !9, i64 0}
!83 = !{!"", !9, i64 0, !9, i64 4, !14, i64 8, !5, i64 16}
!84 = !{!83, !9, i64 4}
!85 = !{!86, !9, i64 0}
!86 = !{!"", !9, i64 0, !9, i64 4}
!87 = !{!86, !9, i64 4}
!88 = distinct !{!88, !34}
!89 = !{!90, !6, i64 8}
!90 = !{!"", !9, i64 0, !9, i64 4, !6, i64 8}
!91 = !{!90, !9, i64 0}
!92 = !{!90, !9, i64 4}
!93 = !{!94, !5, i64 32}
!94 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !6, i64 12, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!95 = !{!14, !14, i64 0}
!96 = !{!94, !5, i64 40}
!97 = !{!94, !5, i64 48}
!98 = !{!94, !9, i64 0}
!99 = !{!94, !9, i64 4}

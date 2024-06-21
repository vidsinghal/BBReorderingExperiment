; ModuleID = 'samples/987.bc'
source_filename = "src/extended/mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GtMapping = type { ptr, ptr, i32, ptr, i8 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [297 x i8] c"Assertion failed: (%s), function %s, file %s, line %d.\0AThis is a bug, please report it at\0Ahttps://github.com/genometools/genometools/issues\0APlease make sure you are running the latest release which can be found at\0Ahttp://genometools.org/pub/\0AYou can check your version number with `gt -version`.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"!err || !gt_error_is_set(err)\00", align 1, !dbg !7
@__func__.gt_mapping_new = private unnamed_addr constant [15 x i8] c"gt_mapping_new\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [23 x i8] c"src/extended/mapping.c\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [28 x i8] c"mapping_file && global_name\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [44 x i8] c"out of memory (cannot create new Lua state)\00", align 1, !dbg !28
@.str.5 = private unnamed_addr constant [18 x i8] c"!lua_gettop(m->L)\00", align 1, !dbg !33
@.str.6 = private unnamed_addr constant [20 x i8] c"cannot run file: %s\00", align 1, !dbg !38
@.str.7 = private unnamed_addr constant [28 x i8] c"'%s' is not defined in \22%s\22\00", align 1, !dbg !43
@.str.8 = private unnamed_addr constant [60 x i8] c"'%s' must be either a table or a function (defined in \22%s\22)\00", align 1, !dbg !45
@__func__.gt_mapping_map_string = private unnamed_addr constant [22 x i8] c"gt_mapping_map_string\00", align 1, !dbg !50
@__func__.gt_mapping_map_integer = private unnamed_addr constant [23 x i8] c"gt_mapping_map_integer\00", align 1, !dbg !55
@__func__.map_generic = private unnamed_addr constant [12 x i8] c"map_generic\00", align 1, !dbg !58
@.str.9 = private unnamed_addr constant [11 x i8] c"m && input\00", align 1, !dbg !63
@.str.10 = private unnamed_addr constant [104 x i8] c"(m->type == GT_MAPPINGTYPE_STRING && stroutput) || (m->type == GT_MAPPINGTYPE_INTEGER && integeroutput)\00", align 1, !dbg !68
@__func__.map_table = private unnamed_addr constant [10 x i8] c"map_table\00", align 1, !dbg !73
@.str.11 = private unnamed_addr constant [32 x i8] c"%s[%s] is nil (defined in \22%s\22)\00", align 1, !dbg !78
@.str.12 = private unnamed_addr constant [41 x i8] c"%s[%s] is not a string (defined in \22%s\22)\00", align 1, !dbg !83
@.str.13 = private unnamed_addr constant [43 x i8] c"%s[%s] is not an integer (defined in \22%s\22)\00", align 1, !dbg !88
@__func__.map_function = private unnamed_addr constant [13 x i8] c"map_function\00", align 1, !dbg !93
@.str.14 = private unnamed_addr constant [26 x i8] c"running function '%s': %s\00", align 1, !dbg !98
@.str.15 = private unnamed_addr constant [53 x i8] c"function '%s' must return a string (defined in \22%s\22)\00", align 1, !dbg !103
@.str.16 = private unnamed_addr constant [56 x i8] c"function '%s' must return an integer) (defined in \22%s\22)\00", align 1, !dbg !108

; Function Attrs: nounwind uwtable
define ptr @gt_mapping_new(ptr noundef %mapping_file, ptr noundef %global_name, i32 noundef %type, ptr noundef %err) #0 !dbg !128 {
entry:
  %retval = alloca ptr, align 8
  %mapping_file.addr = alloca ptr, align 8
  %global_name.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %had_err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mapping_file, ptr %mapping_file.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %mapping_file.addr, metadata !157, metadata !DIExpression()), !dbg !168
  store ptr %global_name, ptr %global_name.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %global_name.addr, metadata !158, metadata !DIExpression()), !dbg !169
  store i32 %type, ptr %type.addr, align 4, !tbaa !170
  tail call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !159, metadata !DIExpression()), !dbg !171
  store ptr %err, ptr %err.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !160, metadata !DIExpression()), !dbg !172
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #5, !dbg !173
  tail call void @llvm.dbg.declare(metadata ptr %m, metadata !161, metadata !DIExpression()), !dbg !174
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #5, !dbg !175
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !162, metadata !DIExpression()), !dbg !176
  store i32 0, ptr %had_err, align 4, !dbg !176, !tbaa !177
  br label %do.body, !dbg !179

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !180, !tbaa !164
  %tobool = icmp ne ptr %0, null, !dbg !180
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !180

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !180, !tbaa !164
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !180
  br i1 %call, label %if.then, label %if.end, !dbg !183

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !184, !tbaa !164
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_mapping_new, ptr noundef @.str.2, i32 noundef 39), !dbg !184
  call void @abort() #6, !dbg !184
  unreachable, !dbg !184

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !183

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !183

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !186

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %mapping_file.addr, align 8, !dbg !187, !tbaa !164
  %tobool3 = icmp ne ptr %3, null, !dbg !187
  br i1 %tobool3, label %land.lhs.true, label %if.then5, !dbg !187

land.lhs.true:                                    ; preds = %do.body2
  %4 = load ptr, ptr %global_name.addr, align 8, !dbg !187, !tbaa !164
  %tobool4 = icmp ne ptr %4, null, !dbg !187
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !190

if.then5:                                         ; preds = %land.lhs.true, %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !191, !tbaa !164
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @__func__.gt_mapping_new, ptr noundef @.str.2, i32 noundef 40), !dbg !191
  call void @abort() #6, !dbg !191
  unreachable, !dbg !191

if.end7:                                          ; preds = %land.lhs.true
  br label %do.cond8, !dbg !190

do.cond8:                                         ; preds = %if.end7
  br label %do.end9, !dbg !190

do.end9:                                          ; preds = %do.cond8
  %call10 = call ptr @gt_malloc_mem(i64 noundef 40, ptr noundef @.str.2, i32 noundef 42), !dbg !193
  store ptr %call10, ptr %m, align 8, !dbg !194, !tbaa !164
  %6 = load ptr, ptr %mapping_file.addr, align 8, !dbg !195, !tbaa !164
  %call11 = call ptr @gt_str_ref(ptr noundef %6), !dbg !196
  %7 = load ptr, ptr %m, align 8, !dbg !197, !tbaa !164
  %mapping_file12 = getelementptr inbounds %struct.GtMapping, ptr %7, i32 0, i32 0, !dbg !198
  store ptr %call11, ptr %mapping_file12, align 8, !dbg !199, !tbaa !200
  %8 = load ptr, ptr %global_name.addr, align 8, !dbg !203, !tbaa !164
  %call13 = call ptr @gt_cstr_dup(ptr noundef %8), !dbg !204
  %9 = load ptr, ptr %m, align 8, !dbg !205, !tbaa !164
  %global = getelementptr inbounds %struct.GtMapping, ptr %9, i32 0, i32 1, !dbg !206
  store ptr %call13, ptr %global, align 8, !dbg !207, !tbaa !208
  %10 = load i32, ptr %type.addr, align 4, !dbg !209, !tbaa !170
  %11 = load ptr, ptr %m, align 8, !dbg !210, !tbaa !164
  %type14 = getelementptr inbounds %struct.GtMapping, ptr %11, i32 0, i32 2, !dbg !211
  store i32 %10, ptr %type14, align 8, !dbg !212, !tbaa !213
  %call15 = call ptr @luaL_newstate(), !dbg !214
  %12 = load ptr, ptr %m, align 8, !dbg !215, !tbaa !164
  %L = getelementptr inbounds %struct.GtMapping, ptr %12, i32 0, i32 3, !dbg !216
  store ptr %call15, ptr %L, align 8, !dbg !217, !tbaa !218
  %13 = load ptr, ptr %m, align 8, !dbg !219, !tbaa !164
  %L16 = getelementptr inbounds %struct.GtMapping, ptr %13, i32 0, i32 3, !dbg !221
  %14 = load ptr, ptr %L16, align 8, !dbg !221, !tbaa !218
  %tobool17 = icmp ne ptr %14, null, !dbg !219
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !222

if.then18:                                        ; preds = %do.end9
  %15 = load ptr, ptr %err.addr, align 8, !dbg !223, !tbaa !164
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %15, ptr noundef @.str.4), !dbg !225
  store i32 -1, ptr %had_err, align 4, !dbg !226, !tbaa !177
  br label %if.end19, !dbg !227

if.end19:                                         ; preds = %if.then18, %do.end9
  %16 = load i32, ptr %had_err, align 4, !dbg !228, !tbaa !177
  %tobool20 = icmp ne i32 %16, 0, !dbg !228
  br i1 %tobool20, label %if.end32, label %if.then21, !dbg !230

if.then21:                                        ; preds = %if.end19
  %17 = load ptr, ptr %m, align 8, !dbg !231, !tbaa !164
  %L22 = getelementptr inbounds %struct.GtMapping, ptr %17, i32 0, i32 3, !dbg !233
  %18 = load ptr, ptr %L22, align 8, !dbg !233, !tbaa !218
  call void @luaL_openlibs(ptr noundef %18), !dbg !234
  br label %do.body23, !dbg !235

do.body23:                                        ; preds = %if.then21
  %19 = load ptr, ptr %m, align 8, !dbg !236, !tbaa !164
  %L24 = getelementptr inbounds %struct.GtMapping, ptr %19, i32 0, i32 3, !dbg !236
  %20 = load ptr, ptr %L24, align 8, !dbg !236, !tbaa !218
  %call25 = call i32 @lua_gettop(ptr noundef %20), !dbg !236
  %tobool26 = icmp ne i32 %call25, 0, !dbg !236
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !239

if.then27:                                        ; preds = %do.body23
  %21 = load ptr, ptr @stderr, align 8, !dbg !240, !tbaa !164
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.gt_mapping_new, ptr noundef @.str.2, i32 noundef 55), !dbg !240
  call void @abort() #6, !dbg !240
  unreachable, !dbg !240

if.end29:                                         ; preds = %do.body23
  br label %do.cond30, !dbg !239

do.cond30:                                        ; preds = %if.end29
  br label %do.end31, !dbg !239

do.end31:                                         ; preds = %do.cond30
  br label %if.end32, !dbg !242

if.end32:                                         ; preds = %do.end31, %if.end19
  %22 = load i32, ptr %had_err, align 4, !dbg !243, !tbaa !177
  %tobool33 = icmp ne i32 %22, 0, !dbg !243
  br i1 %tobool33, label %if.end48, label %if.then34, !dbg !245

if.then34:                                        ; preds = %if.end32
  %23 = load ptr, ptr %m, align 8, !dbg !246, !tbaa !164
  %L35 = getelementptr inbounds %struct.GtMapping, ptr %23, i32 0, i32 3, !dbg !249
  %24 = load ptr, ptr %L35, align 8, !dbg !249, !tbaa !218
  %25 = load ptr, ptr %mapping_file.addr, align 8, !dbg !250, !tbaa !164
  %call36 = call ptr @gt_str_get(ptr noundef %25), !dbg !251
  %call37 = call i32 @luaL_loadfile(ptr noundef %24, ptr noundef %call36), !dbg !252
  %tobool38 = icmp ne i32 %call37, 0, !dbg !252
  br i1 %tobool38, label %if.then43, label %lor.lhs.false39, !dbg !253

lor.lhs.false39:                                  ; preds = %if.then34
  %26 = load ptr, ptr %m, align 8, !dbg !254, !tbaa !164
  %L40 = getelementptr inbounds %struct.GtMapping, ptr %26, i32 0, i32 3, !dbg !255
  %27 = load ptr, ptr %L40, align 8, !dbg !255, !tbaa !218
  %call41 = call i32 @lua_pcall(ptr noundef %27, i32 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !256
  %tobool42 = icmp ne i32 %call41, 0, !dbg !256
  br i1 %tobool42, label %if.then43, label %if.end47, !dbg !257

if.then43:                                        ; preds = %lor.lhs.false39, %if.then34
  %28 = load ptr, ptr %err.addr, align 8, !dbg !258, !tbaa !164
  %29 = load ptr, ptr %m, align 8, !dbg !260, !tbaa !164
  %L44 = getelementptr inbounds %struct.GtMapping, ptr %29, i32 0, i32 3, !dbg !260
  %30 = load ptr, ptr %L44, align 8, !dbg !260, !tbaa !218
  %call45 = call ptr @lua_tolstring(ptr noundef %30, i32 noundef -1, ptr noundef null), !dbg !260
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %28, ptr noundef @.str.6, ptr noundef %call45), !dbg !261
  store i32 -1, ptr %had_err, align 4, !dbg !262, !tbaa !177
  %31 = load ptr, ptr %m, align 8, !dbg !263, !tbaa !164
  %L46 = getelementptr inbounds %struct.GtMapping, ptr %31, i32 0, i32 3, !dbg !263
  %32 = load ptr, ptr %L46, align 8, !dbg !263, !tbaa !218
  call void @lua_settop(ptr noundef %32, i32 noundef -2), !dbg !263
  br label %if.end47, !dbg !264

if.end47:                                         ; preds = %if.then43, %lor.lhs.false39
  br label %if.end48, !dbg !265

if.end48:                                         ; preds = %if.end47, %if.end32
  %33 = load i32, ptr %had_err, align 4, !dbg !266, !tbaa !177
  %tobool49 = icmp ne i32 %33, 0, !dbg !266
  br i1 %tobool49, label %if.end58, label %if.then50, !dbg !268

if.then50:                                        ; preds = %if.end48
  %34 = load ptr, ptr %m, align 8, !dbg !269, !tbaa !164
  %L51 = getelementptr inbounds %struct.GtMapping, ptr %34, i32 0, i32 3, !dbg !269
  %35 = load ptr, ptr %L51, align 8, !dbg !269, !tbaa !218
  %36 = load ptr, ptr %global_name.addr, align 8, !dbg !269, !tbaa !164
  call void @lua_getfield(ptr noundef %35, i32 noundef -10002, ptr noundef %36), !dbg !269
  %37 = load ptr, ptr %m, align 8, !dbg !271, !tbaa !164
  %L52 = getelementptr inbounds %struct.GtMapping, ptr %37, i32 0, i32 3, !dbg !271
  %38 = load ptr, ptr %L52, align 8, !dbg !271, !tbaa !218
  %call53 = call i32 @lua_type(ptr noundef %38, i32 noundef -1), !dbg !271
  %cmp = icmp eq i32 %call53, 0, !dbg !271
  br i1 %cmp, label %if.then54, label %if.end57, !dbg !273

if.then54:                                        ; preds = %if.then50
  %39 = load ptr, ptr %err.addr, align 8, !dbg !274, !tbaa !164
  %40 = load ptr, ptr %global_name.addr, align 8, !dbg !276, !tbaa !164
  %41 = load ptr, ptr %mapping_file.addr, align 8, !dbg !277, !tbaa !164
  %call55 = call ptr @gt_str_get(ptr noundef %41), !dbg !278
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %39, ptr noundef @.str.7, ptr noundef %40, ptr noundef %call55), !dbg !279
  store i32 -1, ptr %had_err, align 4, !dbg !280, !tbaa !177
  %42 = load ptr, ptr %m, align 8, !dbg !281, !tbaa !164
  %L56 = getelementptr inbounds %struct.GtMapping, ptr %42, i32 0, i32 3, !dbg !281
  %43 = load ptr, ptr %L56, align 8, !dbg !281, !tbaa !218
  call void @lua_settop(ptr noundef %43, i32 noundef -2), !dbg !281
  br label %if.end57, !dbg !282

if.end57:                                         ; preds = %if.then54, %if.then50
  br label %if.end58, !dbg !283

if.end58:                                         ; preds = %if.end57, %if.end48
  %44 = load i32, ptr %had_err, align 4, !dbg !284, !tbaa !177
  %tobool59 = icmp ne i32 %44, 0, !dbg !284
  br i1 %tobool59, label %if.end72, label %if.then60, !dbg !286

if.then60:                                        ; preds = %if.end58
  %45 = load ptr, ptr %m, align 8, !dbg !287, !tbaa !164
  %L61 = getelementptr inbounds %struct.GtMapping, ptr %45, i32 0, i32 3, !dbg !287
  %46 = load ptr, ptr %L61, align 8, !dbg !287, !tbaa !218
  %call62 = call i32 @lua_type(ptr noundef %46, i32 noundef -1), !dbg !287
  %cmp63 = icmp eq i32 %call62, 5, !dbg !287
  br i1 %cmp63, label %if.end71, label %lor.lhs.false64, !dbg !290

lor.lhs.false64:                                  ; preds = %if.then60
  %47 = load ptr, ptr %m, align 8, !dbg !291, !tbaa !164
  %L65 = getelementptr inbounds %struct.GtMapping, ptr %47, i32 0, i32 3, !dbg !291
  %48 = load ptr, ptr %L65, align 8, !dbg !291, !tbaa !218
  %call66 = call i32 @lua_type(ptr noundef %48, i32 noundef -1), !dbg !291
  %cmp67 = icmp eq i32 %call66, 6, !dbg !291
  br i1 %cmp67, label %if.end71, label %if.then68, !dbg !292

if.then68:                                        ; preds = %lor.lhs.false64
  %49 = load ptr, ptr %err.addr, align 8, !dbg !293, !tbaa !164
  %50 = load ptr, ptr %global_name.addr, align 8, !dbg !295, !tbaa !164
  %51 = load ptr, ptr %mapping_file.addr, align 8, !dbg !296, !tbaa !164
  %call69 = call ptr @gt_str_get(ptr noundef %51), !dbg !297
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %49, ptr noundef @.str.8, ptr noundef %50, ptr noundef %call69), !dbg !298
  store i32 -1, ptr %had_err, align 4, !dbg !299, !tbaa !177
  %52 = load ptr, ptr %m, align 8, !dbg !300, !tbaa !164
  %L70 = getelementptr inbounds %struct.GtMapping, ptr %52, i32 0, i32 3, !dbg !300
  %53 = load ptr, ptr %L70, align 8, !dbg !300, !tbaa !218
  call void @lua_settop(ptr noundef %53, i32 noundef -2), !dbg !300
  br label %if.end71, !dbg !301

if.end71:                                         ; preds = %if.then68, %lor.lhs.false64, %if.then60
  br label %if.end72, !dbg !302

if.end72:                                         ; preds = %if.end71, %if.end58
  %54 = load i32, ptr %had_err, align 4, !dbg !303, !tbaa !177
  %tobool73 = icmp ne i32 %54, 0, !dbg !303
  br i1 %tobool73, label %if.end82, label %if.then74, !dbg !305

if.then74:                                        ; preds = %if.end72
  %55 = load ptr, ptr %m, align 8, !dbg !306, !tbaa !164
  %L75 = getelementptr inbounds %struct.GtMapping, ptr %55, i32 0, i32 3, !dbg !306
  %56 = load ptr, ptr %L75, align 8, !dbg !306, !tbaa !218
  %call76 = call i32 @lua_type(ptr noundef %56, i32 noundef -1), !dbg !306
  %cmp77 = icmp eq i32 %call76, 5, !dbg !306
  br i1 %cmp77, label %if.then78, label %if.else, !dbg !309

if.then78:                                        ; preds = %if.then74
  %57 = load ptr, ptr %m, align 8, !dbg !310, !tbaa !164
  %is_table = getelementptr inbounds %struct.GtMapping, ptr %57, i32 0, i32 4, !dbg !311
  store i8 1, ptr %is_table, align 8, !dbg !312, !tbaa !313
  br label %if.end80, !dbg !310

if.else:                                          ; preds = %if.then74
  %58 = load ptr, ptr %m, align 8, !dbg !314, !tbaa !164
  %is_table79 = getelementptr inbounds %struct.GtMapping, ptr %58, i32 0, i32 4, !dbg !315
  store i8 0, ptr %is_table79, align 8, !dbg !316, !tbaa !313
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.then78
  %59 = load ptr, ptr %m, align 8, !dbg !317, !tbaa !164
  %L81 = getelementptr inbounds %struct.GtMapping, ptr %59, i32 0, i32 3, !dbg !317
  %60 = load ptr, ptr %L81, align 8, !dbg !317, !tbaa !218
  call void @lua_settop(ptr noundef %60, i32 noundef -2), !dbg !317
  br label %if.end82, !dbg !318

if.end82:                                         ; preds = %if.end80, %if.end72
  br label %do.body83, !dbg !319

do.body83:                                        ; preds = %if.end82
  %61 = load ptr, ptr %m, align 8, !dbg !320, !tbaa !164
  %L84 = getelementptr inbounds %struct.GtMapping, ptr %61, i32 0, i32 3, !dbg !320
  %62 = load ptr, ptr %L84, align 8, !dbg !320, !tbaa !218
  %call85 = call i32 @lua_gettop(ptr noundef %62), !dbg !320
  %tobool86 = icmp ne i32 %call85, 0, !dbg !320
  br i1 %tobool86, label %if.then87, label %if.end89, !dbg !323

if.then87:                                        ; preds = %do.body83
  %63 = load ptr, ptr @stderr, align 8, !dbg !324, !tbaa !164
  %call88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.gt_mapping_new, ptr noundef @.str.2, i32 noundef 94), !dbg !324
  call void @abort() #6, !dbg !324
  unreachable, !dbg !324

if.end89:                                         ; preds = %do.body83
  br label %do.cond90, !dbg !323

do.cond90:                                        ; preds = %if.end89
  br label %do.end91, !dbg !323

do.end91:                                         ; preds = %do.cond90
  %64 = load i32, ptr %had_err, align 4, !dbg !326, !tbaa !177
  %tobool92 = icmp ne i32 %64, 0, !dbg !326
  br i1 %tobool92, label %if.then93, label %if.end94, !dbg !328

if.then93:                                        ; preds = %do.end91
  %65 = load ptr, ptr %m, align 8, !dbg !329, !tbaa !164
  call void @gt_mapping_delete(ptr noundef %65), !dbg !331
  store ptr null, ptr %retval, align 8, !dbg !332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !332

if.end94:                                         ; preds = %do.end91
  %66 = load ptr, ptr %m, align 8, !dbg !333, !tbaa !164
  store ptr %66, ptr %retval, align 8, !dbg !334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !334

cleanup:                                          ; preds = %if.end94, %if.then93
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #5, !dbg !335
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #5, !dbg !335
  %67 = load ptr, ptr %retval, align 8, !dbg !335
  ret ptr %67, !dbg !335
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !336 zeroext i1 @gt_error_is_set(ptr noundef) #2

declare !dbg !341 i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn nounwind
declare !dbg !404 void @abort() #3

declare !dbg !408 ptr @gt_malloc_mem(i64 noundef, ptr noundef, i32 noundef) #2

declare !dbg !412 ptr @gt_str_ref(ptr noundef) #2

declare !dbg !415 ptr @gt_cstr_dup(ptr noundef) #2

declare !dbg !419 ptr @luaL_newstate() #2

declare !dbg !423 void @gt_error_set(ptr noundef, ptr noundef, ...) #2

declare !dbg !426 void @luaL_openlibs(ptr noundef) #2

declare !dbg !430 i32 @lua_gettop(ptr noundef) #2

declare !dbg !433 i32 @luaL_loadfile(ptr noundef, ptr noundef) #2

declare !dbg !436 ptr @gt_str_get(ptr noundef) #2

declare !dbg !441 i32 @lua_pcall(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare !dbg !444 ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !448 void @lua_settop(ptr noundef, i32 noundef) #2

declare !dbg !451 void @lua_getfield(ptr noundef, i32 noundef, ptr noundef) #2

declare !dbg !454 i32 @lua_type(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @gt_mapping_delete(ptr noundef %m) #0 !dbg !457 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load ptr, ptr %m.addr, align 8, !dbg !463, !tbaa !164
  %tobool = icmp ne ptr %0, null, !dbg !463
  br i1 %tobool, label %if.end, label %if.then, !dbg !465

if.then:                                          ; preds = %entry
  br label %return, !dbg !466

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %m.addr, align 8, !dbg !467, !tbaa !164
  %mapping_file = getelementptr inbounds %struct.GtMapping, ptr %1, i32 0, i32 0, !dbg !468
  %2 = load ptr, ptr %mapping_file, align 8, !dbg !468, !tbaa !200
  call void @gt_str_delete(ptr noundef %2), !dbg !469
  %3 = load ptr, ptr %m.addr, align 8, !dbg !470, !tbaa !164
  %global = getelementptr inbounds %struct.GtMapping, ptr %3, i32 0, i32 1, !dbg !470
  %4 = load ptr, ptr %global, align 8, !dbg !470, !tbaa !208
  call void @gt_free_mem(ptr noundef %4, ptr noundef @.str.2, i32 noundef 226), !dbg !470
  %5 = load ptr, ptr %m.addr, align 8, !dbg !471, !tbaa !164
  %L = getelementptr inbounds %struct.GtMapping, ptr %5, i32 0, i32 3, !dbg !473
  %6 = load ptr, ptr %L, align 8, !dbg !473, !tbaa !218
  %tobool1 = icmp ne ptr %6, null, !dbg !471
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !474

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %m.addr, align 8, !dbg !475, !tbaa !164
  %L3 = getelementptr inbounds %struct.GtMapping, ptr %7, i32 0, i32 3, !dbg !476
  %8 = load ptr, ptr %L3, align 8, !dbg !476, !tbaa !218
  call void @lua_close(ptr noundef %8), !dbg !477
  br label %if.end4, !dbg !477

if.end4:                                          ; preds = %if.then2, %if.end
  %9 = load ptr, ptr %m.addr, align 8, !dbg !478, !tbaa !164
  call void @gt_free_mem(ptr noundef %9, ptr noundef @.str.2, i32 noundef 228), !dbg !478
  br label %return, !dbg !479

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !479
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define ptr @gt_mapping_map_string(ptr noundef %m, ptr noundef %input, ptr noundef %err) #0 !dbg !480 {
entry:
  %m.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %output = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !484, metadata !DIExpression()), !dbg !488
  store ptr %input, ptr %input.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !485, metadata !DIExpression()), !dbg !489
  store ptr %err, ptr %err.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !486, metadata !DIExpression()), !dbg !490
  call void @llvm.lifetime.start.p0(i64 8, ptr %output) #5, !dbg !491
  tail call void @llvm.dbg.declare(metadata ptr %output, metadata !487, metadata !DIExpression()), !dbg !492
  store ptr null, ptr %output, align 8, !dbg !492, !tbaa !164
  br label %do.body, !dbg !493

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !494, !tbaa !164
  %tobool = icmp ne ptr %0, null, !dbg !494
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !494

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !494, !tbaa !164
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !494
  br i1 %call, label %if.then, label %if.end, !dbg !497

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !498, !tbaa !164
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_mapping_map_string, ptr noundef @.str.2, i32 noundef 210), !dbg !498
  call void @abort() #6, !dbg !498
  unreachable, !dbg !498

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !497

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !497

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %m.addr, align 8, !dbg !500, !tbaa !164
  %4 = load ptr, ptr %input.addr, align 8, !dbg !501, !tbaa !164
  %5 = load ptr, ptr %err.addr, align 8, !dbg !502, !tbaa !164
  %call2 = call i32 @map_generic(ptr noundef %3, ptr noundef %output, ptr noundef null, ptr noundef %4, ptr noundef %5), !dbg !503
  %6 = load ptr, ptr %output, align 8, !dbg !504, !tbaa !164
  call void @llvm.lifetime.end.p0(i64 8, ptr %output) #5, !dbg !505
  ret ptr %6, !dbg !506
}

; Function Attrs: nounwind uwtable
define internal i32 @map_generic(ptr noundef %m, ptr noundef %stroutput, ptr noundef %integeroutput, ptr noundef %input, ptr noundef %err) #0 !dbg !507 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %stroutput.addr = alloca ptr, align 8
  %integeroutput.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !515, metadata !DIExpression()), !dbg !520
  store ptr %stroutput, ptr %stroutput.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %stroutput.addr, metadata !516, metadata !DIExpression()), !dbg !521
  store ptr %integeroutput, ptr %integeroutput.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %integeroutput.addr, metadata !517, metadata !DIExpression()), !dbg !522
  store ptr %input, ptr %input.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !518, metadata !DIExpression()), !dbg !523
  store ptr %err, ptr %err.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !519, metadata !DIExpression()), !dbg !524
  br label %do.body, !dbg !525

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !526, !tbaa !164
  %tobool = icmp ne ptr %0, null, !dbg !526
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !526

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !526, !tbaa !164
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !526
  br i1 %call, label %if.then, label %if.end, !dbg !529

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !530, !tbaa !164
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.map_generic, ptr noundef @.str.2, i32 noundef 198), !dbg !530
  call void @abort() #6, !dbg !530
  unreachable, !dbg !530

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end, !dbg !529

do.end:                                           ; preds = %if.end
  br label %do.body2, !dbg !532

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %m.addr, align 8, !dbg !533, !tbaa !164
  %tobool3 = icmp ne ptr %3, null, !dbg !533
  br i1 %tobool3, label %land.lhs.true, label %if.then5, !dbg !533

land.lhs.true:                                    ; preds = %do.body2
  %4 = load ptr, ptr %input.addr, align 8, !dbg !533, !tbaa !164
  %tobool4 = icmp ne ptr %4, null, !dbg !533
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !536

if.then5:                                         ; preds = %land.lhs.true, %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !537, !tbaa !164
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.map_generic, ptr noundef @.str.2, i32 noundef 199), !dbg !537
  call void @abort() #6, !dbg !537
  unreachable, !dbg !537

if.end7:                                          ; preds = %land.lhs.true
  br label %do.end8, !dbg !536

do.end8:                                          ; preds = %if.end7
  br label %do.body9, !dbg !539

do.body9:                                         ; preds = %do.end8
  %6 = load ptr, ptr %m.addr, align 8, !dbg !540, !tbaa !164
  %type = getelementptr inbounds %struct.GtMapping, ptr %6, i32 0, i32 2, !dbg !540
  %7 = load i32, ptr %type, align 8, !dbg !540, !tbaa !213
  %cmp = icmp eq i32 %7, 0, !dbg !540
  br i1 %cmp, label %land.lhs.true10, label %lor.lhs.false12, !dbg !540

land.lhs.true10:                                  ; preds = %do.body9
  %8 = load ptr, ptr %stroutput.addr, align 8, !dbg !540, !tbaa !164
  %tobool11 = icmp ne ptr %8, null, !dbg !540
  br i1 %tobool11, label %if.end19, label %lor.lhs.false12, !dbg !540

lor.lhs.false12:                                  ; preds = %land.lhs.true10, %do.body9
  %9 = load ptr, ptr %m.addr, align 8, !dbg !540, !tbaa !164
  %type13 = getelementptr inbounds %struct.GtMapping, ptr %9, i32 0, i32 2, !dbg !540
  %10 = load i32, ptr %type13, align 8, !dbg !540, !tbaa !213
  %cmp14 = icmp eq i32 %10, 1, !dbg !540
  br i1 %cmp14, label %land.lhs.true15, label %if.then17, !dbg !540

land.lhs.true15:                                  ; preds = %lor.lhs.false12
  %11 = load ptr, ptr %integeroutput.addr, align 8, !dbg !540, !tbaa !164
  %tobool16 = icmp ne ptr %11, null, !dbg !540
  br i1 %tobool16, label %if.end19, label %if.then17, !dbg !543

if.then17:                                        ; preds = %land.lhs.true15, %lor.lhs.false12
  %12 = load ptr, ptr @stderr, align 8, !dbg !544, !tbaa !164
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @__func__.map_generic, ptr noundef @.str.2, i32 noundef 201), !dbg !544
  call void @abort() #6, !dbg !544
  unreachable, !dbg !544

if.end19:                                         ; preds = %land.lhs.true15, %land.lhs.true10
  br label %do.end20, !dbg !543

do.end20:                                         ; preds = %if.end19
  %13 = load ptr, ptr %m.addr, align 8, !dbg !546, !tbaa !164
  %is_table = getelementptr inbounds %struct.GtMapping, ptr %13, i32 0, i32 4, !dbg !548
  %14 = load i8, ptr %is_table, align 8, !dbg !548, !tbaa !313, !range !549, !noundef !550
  %tobool21 = trunc i8 %14 to i1, !dbg !548
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !551

if.then22:                                        ; preds = %do.end20
  %15 = load ptr, ptr %m.addr, align 8, !dbg !552, !tbaa !164
  %16 = load ptr, ptr %stroutput.addr, align 8, !dbg !553, !tbaa !164
  %17 = load ptr, ptr %integeroutput.addr, align 8, !dbg !554, !tbaa !164
  %18 = load ptr, ptr %input.addr, align 8, !dbg !555, !tbaa !164
  %19 = load ptr, ptr %err.addr, align 8, !dbg !556, !tbaa !164
  %call23 = call i32 @map_table(ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19), !dbg !557
  store i32 %call23, ptr %retval, align 4, !dbg !558
  br label %return, !dbg !558

if.end24:                                         ; preds = %do.end20
  %20 = load ptr, ptr %m.addr, align 8, !dbg !559, !tbaa !164
  %21 = load ptr, ptr %stroutput.addr, align 8, !dbg !560, !tbaa !164
  %22 = load ptr, ptr %integeroutput.addr, align 8, !dbg !561, !tbaa !164
  %23 = load ptr, ptr %input.addr, align 8, !dbg !562, !tbaa !164
  %24 = load ptr, ptr %err.addr, align 8, !dbg !563, !tbaa !164
  %call25 = call i32 @map_function(ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24), !dbg !564
  store i32 %call25, ptr %retval, align 4, !dbg !565
  br label %return, !dbg !565

return:                                           ; preds = %if.end24, %if.then22
  %25 = load i32, ptr %retval, align 4, !dbg !566
  ret i32 %25, !dbg !566
}

; Function Attrs: nounwind uwtable
define i32 @gt_mapping_map_integer(ptr noundef %m, ptr noundef %output, ptr noundef %input, ptr noundef %err) #0 !dbg !567 {
entry:
  %m.addr = alloca ptr, align 8
  %output.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !571, metadata !DIExpression()), !dbg !575
  store ptr %output, ptr %output.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %output.addr, metadata !572, metadata !DIExpression()), !dbg !576
  store ptr %input, ptr %input.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !573, metadata !DIExpression()), !dbg !577
  store ptr %err, ptr %err.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !574, metadata !DIExpression()), !dbg !578
  br label %do.body, !dbg !579

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !580, !tbaa !164
  %tobool = icmp ne ptr %0, null, !dbg !580
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !580

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !580, !tbaa !164
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !580
  br i1 %call, label %if.then, label %if.end, !dbg !583

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !584, !tbaa !164
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.gt_mapping_map_integer, ptr noundef @.str.2, i32 noundef 218), !dbg !584
  call void @abort() #6, !dbg !584
  unreachable, !dbg !584

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.end, !dbg !583

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %m.addr, align 8, !dbg !586, !tbaa !164
  %4 = load ptr, ptr %output.addr, align 8, !dbg !587, !tbaa !164
  %5 = load ptr, ptr %input.addr, align 8, !dbg !588, !tbaa !164
  %6 = load ptr, ptr %err.addr, align 8, !dbg !589, !tbaa !164
  %call2 = call i32 @map_generic(ptr noundef %3, ptr noundef null, ptr noundef %4, ptr noundef %5, ptr noundef %6), !dbg !590
  ret i32 %call2, !dbg !591
}

declare !dbg !592 void @gt_str_delete(ptr noundef) #2

declare !dbg !595 void @gt_free_mem(ptr noundef, ptr noundef, i32 noundef) #2

declare !dbg !598 void @lua_close(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @map_table(ptr noundef %m, ptr noundef %stroutput, ptr noundef %integeroutput, ptr noundef %input, ptr noundef %err) #0 !dbg !599 {
entry:
  %m.addr = alloca ptr, align 8
  %stroutput.addr = alloca ptr, align 8
  %integeroutput.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !601, metadata !DIExpression()), !dbg !607
  store ptr %stroutput, ptr %stroutput.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %stroutput.addr, metadata !602, metadata !DIExpression()), !dbg !608
  store ptr %integeroutput, ptr %integeroutput.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %integeroutput.addr, metadata !603, metadata !DIExpression()), !dbg !609
  store ptr %input, ptr %input.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !604, metadata !DIExpression()), !dbg !610
  store ptr %err, ptr %err.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !605, metadata !DIExpression()), !dbg !611
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #5, !dbg !612
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !606, metadata !DIExpression()), !dbg !613
  store i32 0, ptr %had_err, align 4, !dbg !613, !tbaa !177
  br label %do.body, !dbg !614

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !615, !tbaa !164
  %tobool = icmp ne ptr %0, null, !dbg !615
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !615

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !615, !tbaa !164
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !615
  br i1 %call, label %if.then, label %if.end, !dbg !618

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !619, !tbaa !164
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.map_table, ptr noundef @.str.2, i32 noundef 106), !dbg !619
  call void @abort() #6, !dbg !619
  unreachable, !dbg !619

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !618

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !618

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !621

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %m.addr, align 8, !dbg !622, !tbaa !164
  %tobool3 = icmp ne ptr %3, null, !dbg !622
  br i1 %tobool3, label %land.lhs.true, label %if.then5, !dbg !622

land.lhs.true:                                    ; preds = %do.body2
  %4 = load ptr, ptr %input.addr, align 8, !dbg !622, !tbaa !164
  %tobool4 = icmp ne ptr %4, null, !dbg !622
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !625

if.then5:                                         ; preds = %land.lhs.true, %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !626, !tbaa !164
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.map_table, ptr noundef @.str.2, i32 noundef 107), !dbg !626
  call void @abort() #6, !dbg !626
  unreachable, !dbg !626

if.end7:                                          ; preds = %land.lhs.true
  br label %do.cond8, !dbg !625

do.cond8:                                         ; preds = %if.end7
  br label %do.end9, !dbg !625

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !628

do.body10:                                        ; preds = %do.end9
  %6 = load ptr, ptr %m.addr, align 8, !dbg !629, !tbaa !164
  %type = getelementptr inbounds %struct.GtMapping, ptr %6, i32 0, i32 2, !dbg !629
  %7 = load i32, ptr %type, align 8, !dbg !629, !tbaa !213
  %cmp = icmp eq i32 %7, 0, !dbg !629
  br i1 %cmp, label %land.lhs.true11, label %lor.lhs.false13, !dbg !629

land.lhs.true11:                                  ; preds = %do.body10
  %8 = load ptr, ptr %stroutput.addr, align 8, !dbg !629, !tbaa !164
  %tobool12 = icmp ne ptr %8, null, !dbg !629
  br i1 %tobool12, label %if.end20, label %lor.lhs.false13, !dbg !629

lor.lhs.false13:                                  ; preds = %land.lhs.true11, %do.body10
  %9 = load ptr, ptr %m.addr, align 8, !dbg !629, !tbaa !164
  %type14 = getelementptr inbounds %struct.GtMapping, ptr %9, i32 0, i32 2, !dbg !629
  %10 = load i32, ptr %type14, align 8, !dbg !629, !tbaa !213
  %cmp15 = icmp eq i32 %10, 1, !dbg !629
  br i1 %cmp15, label %land.lhs.true16, label %if.then18, !dbg !629

land.lhs.true16:                                  ; preds = %lor.lhs.false13
  %11 = load ptr, ptr %integeroutput.addr, align 8, !dbg !629, !tbaa !164
  %tobool17 = icmp ne ptr %11, null, !dbg !629
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !632

if.then18:                                        ; preds = %land.lhs.true16, %lor.lhs.false13
  %12 = load ptr, ptr @stderr, align 8, !dbg !633, !tbaa !164
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @__func__.map_table, ptr noundef @.str.2, i32 noundef 109), !dbg !633
  call void @abort() #6, !dbg !633
  unreachable, !dbg !633

if.end20:                                         ; preds = %land.lhs.true16, %land.lhs.true11
  br label %do.cond21, !dbg !632

do.cond21:                                        ; preds = %if.end20
  br label %do.end22, !dbg !632

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !635

do.body23:                                        ; preds = %do.end22
  %13 = load ptr, ptr %m.addr, align 8, !dbg !636, !tbaa !164
  %L = getelementptr inbounds %struct.GtMapping, ptr %13, i32 0, i32 3, !dbg !636
  %14 = load ptr, ptr %L, align 8, !dbg !636, !tbaa !218
  %call24 = call i32 @lua_gettop(ptr noundef %14), !dbg !636
  %tobool25 = icmp ne i32 %call24, 0, !dbg !636
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !639

if.then26:                                        ; preds = %do.body23
  %15 = load ptr, ptr @stderr, align 8, !dbg !640, !tbaa !164
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.map_table, ptr noundef @.str.2, i32 noundef 110), !dbg !640
  call void @abort() #6, !dbg !640
  unreachable, !dbg !640

if.end28:                                         ; preds = %do.body23
  br label %do.cond29, !dbg !639

do.cond29:                                        ; preds = %if.end28
  br label %do.end30, !dbg !639

do.end30:                                         ; preds = %do.cond29
  %16 = load ptr, ptr %m.addr, align 8, !dbg !642, !tbaa !164
  %L31 = getelementptr inbounds %struct.GtMapping, ptr %16, i32 0, i32 3, !dbg !642
  %17 = load ptr, ptr %L31, align 8, !dbg !642, !tbaa !218
  %18 = load ptr, ptr %m.addr, align 8, !dbg !642, !tbaa !164
  %global = getelementptr inbounds %struct.GtMapping, ptr %18, i32 0, i32 1, !dbg !642
  %19 = load ptr, ptr %global, align 8, !dbg !642, !tbaa !208
  call void @lua_getfield(ptr noundef %17, i32 noundef -10002, ptr noundef %19), !dbg !642
  %20 = load ptr, ptr %m.addr, align 8, !dbg !643, !tbaa !164
  %L32 = getelementptr inbounds %struct.GtMapping, ptr %20, i32 0, i32 3, !dbg !644
  %21 = load ptr, ptr %L32, align 8, !dbg !644, !tbaa !218
  %22 = load ptr, ptr %input.addr, align 8, !dbg !645, !tbaa !164
  call void @lua_pushstring(ptr noundef %21, ptr noundef %22), !dbg !646
  %23 = load ptr, ptr %m.addr, align 8, !dbg !647, !tbaa !164
  %L33 = getelementptr inbounds %struct.GtMapping, ptr %23, i32 0, i32 3, !dbg !648
  %24 = load ptr, ptr %L33, align 8, !dbg !648, !tbaa !218
  call void @lua_gettable(ptr noundef %24, i32 noundef -2), !dbg !649
  %25 = load ptr, ptr %m.addr, align 8, !dbg !650, !tbaa !164
  %L34 = getelementptr inbounds %struct.GtMapping, ptr %25, i32 0, i32 3, !dbg !650
  %26 = load ptr, ptr %L34, align 8, !dbg !650, !tbaa !218
  %call35 = call i32 @lua_type(ptr noundef %26, i32 noundef -1), !dbg !650
  %cmp36 = icmp eq i32 %call35, 0, !dbg !650
  br i1 %cmp36, label %if.then37, label %if.end40, !dbg !652

if.then37:                                        ; preds = %do.end30
  %27 = load ptr, ptr %err.addr, align 8, !dbg !653, !tbaa !164
  %28 = load ptr, ptr %m.addr, align 8, !dbg !655, !tbaa !164
  %global38 = getelementptr inbounds %struct.GtMapping, ptr %28, i32 0, i32 1, !dbg !656
  %29 = load ptr, ptr %global38, align 8, !dbg !656, !tbaa !208
  %30 = load ptr, ptr %input.addr, align 8, !dbg !657, !tbaa !164
  %31 = load ptr, ptr %m.addr, align 8, !dbg !658, !tbaa !164
  %mapping_file = getelementptr inbounds %struct.GtMapping, ptr %31, i32 0, i32 0, !dbg !659
  %32 = load ptr, ptr %mapping_file, align 8, !dbg !659, !tbaa !200
  %call39 = call ptr @gt_str_get(ptr noundef %32), !dbg !660
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %27, ptr noundef @.str.11, ptr noundef %29, ptr noundef %30, ptr noundef %call39), !dbg !661
  store i32 -1, ptr %had_err, align 4, !dbg !662, !tbaa !177
  br label %if.end40, !dbg !663

if.end40:                                         ; preds = %if.then37, %do.end30
  %33 = load i32, ptr %had_err, align 4, !dbg !664, !tbaa !177
  %tobool41 = icmp ne i32 %33, 0, !dbg !664
  br i1 %tobool41, label %if.end72, label %if.then42, !dbg !666

if.then42:                                        ; preds = %if.end40
  %34 = load ptr, ptr %m.addr, align 8, !dbg !667, !tbaa !164
  %type43 = getelementptr inbounds %struct.GtMapping, ptr %34, i32 0, i32 2, !dbg !669
  %35 = load i32, ptr %type43, align 8, !dbg !669, !tbaa !213
  switch i32 %35, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb58
  ], !dbg !670

sw.bb:                                            ; preds = %if.then42
  %36 = load ptr, ptr %m.addr, align 8, !dbg !671, !tbaa !164
  %L44 = getelementptr inbounds %struct.GtMapping, ptr %36, i32 0, i32 3, !dbg !674
  %37 = load ptr, ptr %L44, align 8, !dbg !674, !tbaa !218
  %call45 = call i32 @lua_isstring(ptr noundef %37, i32 noundef -1), !dbg !675
  %tobool46 = icmp ne i32 %call45, 0, !dbg !675
  br i1 %tobool46, label %if.end51, label %if.then47, !dbg !676

if.then47:                                        ; preds = %sw.bb
  %38 = load ptr, ptr %err.addr, align 8, !dbg !677, !tbaa !164
  %39 = load ptr, ptr %m.addr, align 8, !dbg !679, !tbaa !164
  %global48 = getelementptr inbounds %struct.GtMapping, ptr %39, i32 0, i32 1, !dbg !680
  %40 = load ptr, ptr %global48, align 8, !dbg !680, !tbaa !208
  %41 = load ptr, ptr %input.addr, align 8, !dbg !681, !tbaa !164
  %42 = load ptr, ptr %m.addr, align 8, !dbg !682, !tbaa !164
  %mapping_file49 = getelementptr inbounds %struct.GtMapping, ptr %42, i32 0, i32 0, !dbg !683
  %43 = load ptr, ptr %mapping_file49, align 8, !dbg !683, !tbaa !200
  %call50 = call ptr @gt_str_get(ptr noundef %43), !dbg !684
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %38, ptr noundef @.str.12, ptr noundef %40, ptr noundef %41, ptr noundef %call50), !dbg !685
  store i32 -1, ptr %had_err, align 4, !dbg !686, !tbaa !177
  br label %if.end51, !dbg !687

if.end51:                                         ; preds = %if.then47, %sw.bb
  %44 = load i32, ptr %had_err, align 4, !dbg !688, !tbaa !177
  %tobool52 = icmp ne i32 %44, 0, !dbg !688
  br i1 %tobool52, label %if.end57, label %if.then53, !dbg !690

if.then53:                                        ; preds = %if.end51
  %45 = load ptr, ptr %m.addr, align 8, !dbg !691, !tbaa !164
  %L54 = getelementptr inbounds %struct.GtMapping, ptr %45, i32 0, i32 3, !dbg !691
  %46 = load ptr, ptr %L54, align 8, !dbg !691, !tbaa !218
  %call55 = call ptr @lua_tolstring(ptr noundef %46, i32 noundef -1, ptr noundef null), !dbg !691
  %call56 = call ptr @gt_str_new_cstr(ptr noundef %call55), !dbg !692
  %47 = load ptr, ptr %stroutput.addr, align 8, !dbg !693, !tbaa !164
  store ptr %call56, ptr %47, align 8, !dbg !694, !tbaa !164
  br label %if.end57, !dbg !695

if.end57:                                         ; preds = %if.then53, %if.end51
  br label %sw.epilog, !dbg !696

sw.bb58:                                          ; preds = %if.then42
  %48 = load ptr, ptr %m.addr, align 8, !dbg !697, !tbaa !164
  %L59 = getelementptr inbounds %struct.GtMapping, ptr %48, i32 0, i32 3, !dbg !699
  %49 = load ptr, ptr %L59, align 8, !dbg !699, !tbaa !218
  %call60 = call i32 @lua_isnumber(ptr noundef %49, i32 noundef -1), !dbg !700
  %tobool61 = icmp ne i32 %call60, 0, !dbg !700
  br i1 %tobool61, label %if.end66, label %if.then62, !dbg !701

if.then62:                                        ; preds = %sw.bb58
  %50 = load ptr, ptr %err.addr, align 8, !dbg !702, !tbaa !164
  %51 = load ptr, ptr %m.addr, align 8, !dbg !704, !tbaa !164
  %global63 = getelementptr inbounds %struct.GtMapping, ptr %51, i32 0, i32 1, !dbg !705
  %52 = load ptr, ptr %global63, align 8, !dbg !705, !tbaa !208
  %53 = load ptr, ptr %input.addr, align 8, !dbg !706, !tbaa !164
  %54 = load ptr, ptr %m.addr, align 8, !dbg !707, !tbaa !164
  %mapping_file64 = getelementptr inbounds %struct.GtMapping, ptr %54, i32 0, i32 0, !dbg !708
  %55 = load ptr, ptr %mapping_file64, align 8, !dbg !708, !tbaa !200
  %call65 = call ptr @gt_str_get(ptr noundef %55), !dbg !709
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %50, ptr noundef @.str.13, ptr noundef %52, ptr noundef %53, ptr noundef %call65), !dbg !710
  store i32 -1, ptr %had_err, align 4, !dbg !711, !tbaa !177
  br label %if.end66, !dbg !712

if.end66:                                         ; preds = %if.then62, %sw.bb58
  %56 = load i32, ptr %had_err, align 4, !dbg !713, !tbaa !177
  %tobool67 = icmp ne i32 %56, 0, !dbg !713
  br i1 %tobool67, label %if.end71, label %if.then68, !dbg !715

if.then68:                                        ; preds = %if.end66
  %57 = load ptr, ptr %m.addr, align 8, !dbg !716, !tbaa !164
  %L69 = getelementptr inbounds %struct.GtMapping, ptr %57, i32 0, i32 3, !dbg !717
  %58 = load ptr, ptr %L69, align 8, !dbg !717, !tbaa !218
  %call70 = call i64 @lua_tointeger(ptr noundef %58, i32 noundef -1), !dbg !718
  %59 = load ptr, ptr %integeroutput.addr, align 8, !dbg !719, !tbaa !164
  store i64 %call70, ptr %59, align 8, !dbg !720, !tbaa !721
  br label %if.end71, !dbg !723

if.end71:                                         ; preds = %if.then68, %if.end66
  br label %sw.epilog, !dbg !724

sw.epilog:                                        ; preds = %if.then42, %if.end71, %if.end57
  br label %if.end72, !dbg !725

if.end72:                                         ; preds = %sw.epilog, %if.end40
  %60 = load ptr, ptr %m.addr, align 8, !dbg !726, !tbaa !164
  %L73 = getelementptr inbounds %struct.GtMapping, ptr %60, i32 0, i32 3, !dbg !726
  %61 = load ptr, ptr %L73, align 8, !dbg !726, !tbaa !218
  call void @lua_settop(ptr noundef %61, i32 noundef -2), !dbg !726
  %62 = load ptr, ptr %m.addr, align 8, !dbg !727, !tbaa !164
  %L74 = getelementptr inbounds %struct.GtMapping, ptr %62, i32 0, i32 3, !dbg !727
  %63 = load ptr, ptr %L74, align 8, !dbg !727, !tbaa !218
  call void @lua_settop(ptr noundef %63, i32 noundef -2), !dbg !727
  br label %do.body75, !dbg !728

do.body75:                                        ; preds = %if.end72
  %64 = load ptr, ptr %m.addr, align 8, !dbg !729, !tbaa !164
  %L76 = getelementptr inbounds %struct.GtMapping, ptr %64, i32 0, i32 3, !dbg !729
  %65 = load ptr, ptr %L76, align 8, !dbg !729, !tbaa !218
  %call77 = call i32 @lua_gettop(ptr noundef %65), !dbg !729
  %tobool78 = icmp ne i32 %call77, 0, !dbg !729
  br i1 %tobool78, label %if.then79, label %if.end81, !dbg !732

if.then79:                                        ; preds = %do.body75
  %66 = load ptr, ptr @stderr, align 8, !dbg !733, !tbaa !164
  %call80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.map_table, ptr noundef @.str.2, i32 noundef 146), !dbg !733
  call void @abort() #6, !dbg !733
  unreachable, !dbg !733

if.end81:                                         ; preds = %do.body75
  br label %do.cond82, !dbg !732

do.cond82:                                        ; preds = %if.end81
  br label %do.end83, !dbg !732

do.end83:                                         ; preds = %do.cond82
  %67 = load i32, ptr %had_err, align 4, !dbg !735, !tbaa !177
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #5, !dbg !736
  ret i32 %67, !dbg !737
}

; Function Attrs: nounwind uwtable
define internal i32 @map_function(ptr noundef %m, ptr noundef %stroutput, ptr noundef %integeroutput, ptr noundef %input, ptr noundef %err) #0 !dbg !738 {
entry:
  %m.addr = alloca ptr, align 8
  %stroutput.addr = alloca ptr, align 8
  %integeroutput.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %had_err = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !740, metadata !DIExpression()), !dbg !746
  store ptr %stroutput, ptr %stroutput.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %stroutput.addr, metadata !741, metadata !DIExpression()), !dbg !747
  store ptr %integeroutput, ptr %integeroutput.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %integeroutput.addr, metadata !742, metadata !DIExpression()), !dbg !748
  store ptr %input, ptr %input.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %input.addr, metadata !743, metadata !DIExpression()), !dbg !749
  store ptr %err, ptr %err.addr, align 8, !tbaa !164
  tail call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !744, metadata !DIExpression()), !dbg !750
  call void @llvm.lifetime.start.p0(i64 4, ptr %had_err) #5, !dbg !751
  tail call void @llvm.dbg.declare(metadata ptr %had_err, metadata !745, metadata !DIExpression()), !dbg !752
  store i32 0, ptr %had_err, align 4, !dbg !752, !tbaa !177
  br label %do.body, !dbg !753

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %err.addr, align 8, !dbg !754, !tbaa !164
  %tobool = icmp ne ptr %0, null, !dbg !754
  br i1 %tobool, label %lor.lhs.false, label %if.end, !dbg !754

lor.lhs.false:                                    ; preds = %do.body
  %1 = load ptr, ptr %err.addr, align 8, !dbg !754, !tbaa !164
  %call = call zeroext i1 @gt_error_is_set(ptr noundef %1), !dbg !754
  br i1 %call, label %if.then, label %if.end, !dbg !757

if.then:                                          ; preds = %lor.lhs.false
  %2 = load ptr, ptr @stderr, align 8, !dbg !758, !tbaa !164
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.map_function, ptr noundef @.str.2, i32 noundef 154), !dbg !758
  call void @abort() #6, !dbg !758
  unreachable, !dbg !758

if.end:                                           ; preds = %lor.lhs.false, %do.body
  br label %do.cond, !dbg !757

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !757

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !760

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %m.addr, align 8, !dbg !761, !tbaa !164
  %tobool3 = icmp ne ptr %3, null, !dbg !761
  br i1 %tobool3, label %land.lhs.true, label %if.then5, !dbg !761

land.lhs.true:                                    ; preds = %do.body2
  %4 = load ptr, ptr %input.addr, align 8, !dbg !761, !tbaa !164
  %tobool4 = icmp ne ptr %4, null, !dbg !761
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !764

if.then5:                                         ; preds = %land.lhs.true, %do.body2
  %5 = load ptr, ptr @stderr, align 8, !dbg !765, !tbaa !164
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @__func__.map_function, ptr noundef @.str.2, i32 noundef 155), !dbg !765
  call void @abort() #6, !dbg !765
  unreachable, !dbg !765

if.end7:                                          ; preds = %land.lhs.true
  br label %do.cond8, !dbg !764

do.cond8:                                         ; preds = %if.end7
  br label %do.end9, !dbg !764

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !767

do.body10:                                        ; preds = %do.end9
  %6 = load ptr, ptr %m.addr, align 8, !dbg !768, !tbaa !164
  %type = getelementptr inbounds %struct.GtMapping, ptr %6, i32 0, i32 2, !dbg !768
  %7 = load i32, ptr %type, align 8, !dbg !768, !tbaa !213
  %cmp = icmp eq i32 %7, 0, !dbg !768
  br i1 %cmp, label %land.lhs.true11, label %lor.lhs.false13, !dbg !768

land.lhs.true11:                                  ; preds = %do.body10
  %8 = load ptr, ptr %stroutput.addr, align 8, !dbg !768, !tbaa !164
  %tobool12 = icmp ne ptr %8, null, !dbg !768
  br i1 %tobool12, label %if.end20, label %lor.lhs.false13, !dbg !768

lor.lhs.false13:                                  ; preds = %land.lhs.true11, %do.body10
  %9 = load ptr, ptr %m.addr, align 8, !dbg !768, !tbaa !164
  %type14 = getelementptr inbounds %struct.GtMapping, ptr %9, i32 0, i32 2, !dbg !768
  %10 = load i32, ptr %type14, align 8, !dbg !768, !tbaa !213
  %cmp15 = icmp eq i32 %10, 1, !dbg !768
  br i1 %cmp15, label %land.lhs.true16, label %if.then18, !dbg !768

land.lhs.true16:                                  ; preds = %lor.lhs.false13
  %11 = load ptr, ptr %integeroutput.addr, align 8, !dbg !768, !tbaa !164
  %tobool17 = icmp ne ptr %11, null, !dbg !768
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !771

if.then18:                                        ; preds = %land.lhs.true16, %lor.lhs.false13
  %12 = load ptr, ptr @stderr, align 8, !dbg !772, !tbaa !164
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @__func__.map_function, ptr noundef @.str.2, i32 noundef 157), !dbg !772
  call void @abort() #6, !dbg !772
  unreachable, !dbg !772

if.end20:                                         ; preds = %land.lhs.true16, %land.lhs.true11
  br label %do.cond21, !dbg !771

do.cond21:                                        ; preds = %if.end20
  br label %do.end22, !dbg !771

do.end22:                                         ; preds = %do.cond21
  br label %do.body23, !dbg !774

do.body23:                                        ; preds = %do.end22
  %13 = load ptr, ptr %m.addr, align 8, !dbg !775, !tbaa !164
  %L = getelementptr inbounds %struct.GtMapping, ptr %13, i32 0, i32 3, !dbg !775
  %14 = load ptr, ptr %L, align 8, !dbg !775, !tbaa !218
  %call24 = call i32 @lua_gettop(ptr noundef %14), !dbg !775
  %tobool25 = icmp ne i32 %call24, 0, !dbg !775
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !778

if.then26:                                        ; preds = %do.body23
  %15 = load ptr, ptr @stderr, align 8, !dbg !779, !tbaa !164
  %call27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.map_function, ptr noundef @.str.2, i32 noundef 158), !dbg !779
  call void @abort() #6, !dbg !779
  unreachable, !dbg !779

if.end28:                                         ; preds = %do.body23
  br label %do.cond29, !dbg !778

do.cond29:                                        ; preds = %if.end28
  br label %do.end30, !dbg !778

do.end30:                                         ; preds = %do.cond29
  %16 = load ptr, ptr %m.addr, align 8, !dbg !781, !tbaa !164
  %L31 = getelementptr inbounds %struct.GtMapping, ptr %16, i32 0, i32 3, !dbg !781
  %17 = load ptr, ptr %L31, align 8, !dbg !781, !tbaa !218
  %18 = load ptr, ptr %m.addr, align 8, !dbg !781, !tbaa !164
  %global = getelementptr inbounds %struct.GtMapping, ptr %18, i32 0, i32 1, !dbg !781
  %19 = load ptr, ptr %global, align 8, !dbg !781, !tbaa !208
  call void @lua_getfield(ptr noundef %17, i32 noundef -10002, ptr noundef %19), !dbg !781
  %20 = load ptr, ptr %m.addr, align 8, !dbg !782, !tbaa !164
  %L32 = getelementptr inbounds %struct.GtMapping, ptr %20, i32 0, i32 3, !dbg !783
  %21 = load ptr, ptr %L32, align 8, !dbg !783, !tbaa !218
  %22 = load ptr, ptr %input.addr, align 8, !dbg !784, !tbaa !164
  call void @lua_pushstring(ptr noundef %21, ptr noundef %22), !dbg !785
  %23 = load ptr, ptr %m.addr, align 8, !dbg !786, !tbaa !164
  %L33 = getelementptr inbounds %struct.GtMapping, ptr %23, i32 0, i32 3, !dbg !788
  %24 = load ptr, ptr %L33, align 8, !dbg !788, !tbaa !218
  %call34 = call i32 @lua_pcall(ptr noundef %24, i32 noundef 1, i32 noundef 1, i32 noundef 0), !dbg !789
  %tobool35 = icmp ne i32 %call34, 0, !dbg !789
  br i1 %tobool35, label %if.then36, label %if.end40, !dbg !790

if.then36:                                        ; preds = %do.end30
  %25 = load ptr, ptr %err.addr, align 8, !dbg !791, !tbaa !164
  %26 = load ptr, ptr %m.addr, align 8, !dbg !793, !tbaa !164
  %global37 = getelementptr inbounds %struct.GtMapping, ptr %26, i32 0, i32 1, !dbg !794
  %27 = load ptr, ptr %global37, align 8, !dbg !794, !tbaa !208
  %28 = load ptr, ptr %m.addr, align 8, !dbg !795, !tbaa !164
  %L38 = getelementptr inbounds %struct.GtMapping, ptr %28, i32 0, i32 3, !dbg !795
  %29 = load ptr, ptr %L38, align 8, !dbg !795, !tbaa !218
  %call39 = call ptr @lua_tolstring(ptr noundef %29, i32 noundef -1, ptr noundef null), !dbg !795
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %25, ptr noundef @.str.14, ptr noundef %27, ptr noundef %call39), !dbg !796
  store i32 -1, ptr %had_err, align 4, !dbg !797, !tbaa !177
  br label %if.end40, !dbg !798

if.end40:                                         ; preds = %if.then36, %do.end30
  %30 = load i32, ptr %had_err, align 4, !dbg !799, !tbaa !177
  %tobool41 = icmp ne i32 %30, 0, !dbg !799
  br i1 %tobool41, label %if.end71, label %if.then42, !dbg !801

if.then42:                                        ; preds = %if.end40
  %31 = load ptr, ptr %m.addr, align 8, !dbg !802, !tbaa !164
  %type43 = getelementptr inbounds %struct.GtMapping, ptr %31, i32 0, i32 2, !dbg !804
  %32 = load i32, ptr %type43, align 8, !dbg !804, !tbaa !213
  switch i32 %32, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb57
  ], !dbg !805

sw.bb:                                            ; preds = %if.then42
  %33 = load ptr, ptr %m.addr, align 8, !dbg !806, !tbaa !164
  %L44 = getelementptr inbounds %struct.GtMapping, ptr %33, i32 0, i32 3, !dbg !809
  %34 = load ptr, ptr %L44, align 8, !dbg !809, !tbaa !218
  %call45 = call i32 @lua_isstring(ptr noundef %34, i32 noundef -1), !dbg !810
  %tobool46 = icmp ne i32 %call45, 0, !dbg !810
  br i1 %tobool46, label %if.end50, label %if.then47, !dbg !811

if.then47:                                        ; preds = %sw.bb
  %35 = load ptr, ptr %err.addr, align 8, !dbg !812, !tbaa !164
  %36 = load ptr, ptr %m.addr, align 8, !dbg !814, !tbaa !164
  %global48 = getelementptr inbounds %struct.GtMapping, ptr %36, i32 0, i32 1, !dbg !815
  %37 = load ptr, ptr %global48, align 8, !dbg !815, !tbaa !208
  %38 = load ptr, ptr %m.addr, align 8, !dbg !816, !tbaa !164
  %mapping_file = getelementptr inbounds %struct.GtMapping, ptr %38, i32 0, i32 0, !dbg !817
  %39 = load ptr, ptr %mapping_file, align 8, !dbg !817, !tbaa !200
  %call49 = call ptr @gt_str_get(ptr noundef %39), !dbg !818
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %35, ptr noundef @.str.15, ptr noundef %37, ptr noundef %call49), !dbg !819
  store i32 -1, ptr %had_err, align 4, !dbg !820, !tbaa !177
  br label %if.end50, !dbg !821

if.end50:                                         ; preds = %if.then47, %sw.bb
  %40 = load i32, ptr %had_err, align 4, !dbg !822, !tbaa !177
  %tobool51 = icmp ne i32 %40, 0, !dbg !822
  br i1 %tobool51, label %if.end56, label %if.then52, !dbg !824

if.then52:                                        ; preds = %if.end50
  %41 = load ptr, ptr %m.addr, align 8, !dbg !825, !tbaa !164
  %L53 = getelementptr inbounds %struct.GtMapping, ptr %41, i32 0, i32 3, !dbg !825
  %42 = load ptr, ptr %L53, align 8, !dbg !825, !tbaa !218
  %call54 = call ptr @lua_tolstring(ptr noundef %42, i32 noundef -1, ptr noundef null), !dbg !825
  %call55 = call ptr @gt_str_new_cstr(ptr noundef %call54), !dbg !826
  %43 = load ptr, ptr %stroutput.addr, align 8, !dbg !827, !tbaa !164
  store ptr %call55, ptr %43, align 8, !dbg !828, !tbaa !164
  br label %if.end56, !dbg !829

if.end56:                                         ; preds = %if.then52, %if.end50
  br label %sw.epilog, !dbg !830

sw.bb57:                                          ; preds = %if.then42
  %44 = load ptr, ptr %m.addr, align 8, !dbg !831, !tbaa !164
  %L58 = getelementptr inbounds %struct.GtMapping, ptr %44, i32 0, i32 3, !dbg !833
  %45 = load ptr, ptr %L58, align 8, !dbg !833, !tbaa !218
  %call59 = call i32 @lua_isnumber(ptr noundef %45, i32 noundef -1), !dbg !834
  %tobool60 = icmp ne i32 %call59, 0, !dbg !834
  br i1 %tobool60, label %if.end65, label %if.then61, !dbg !835

if.then61:                                        ; preds = %sw.bb57
  %46 = load ptr, ptr %err.addr, align 8, !dbg !836, !tbaa !164
  %47 = load ptr, ptr %m.addr, align 8, !dbg !838, !tbaa !164
  %global62 = getelementptr inbounds %struct.GtMapping, ptr %47, i32 0, i32 1, !dbg !839
  %48 = load ptr, ptr %global62, align 8, !dbg !839, !tbaa !208
  %49 = load ptr, ptr %m.addr, align 8, !dbg !840, !tbaa !164
  %mapping_file63 = getelementptr inbounds %struct.GtMapping, ptr %49, i32 0, i32 0, !dbg !841
  %50 = load ptr, ptr %mapping_file63, align 8, !dbg !841, !tbaa !200
  %call64 = call ptr @gt_str_get(ptr noundef %50), !dbg !842
  call void (ptr, ptr, ...) @gt_error_set(ptr noundef %46, ptr noundef @.str.16, ptr noundef %48, ptr noundef %call64), !dbg !843
  store i32 -1, ptr %had_err, align 4, !dbg !844, !tbaa !177
  br label %if.end65, !dbg !845

if.end65:                                         ; preds = %if.then61, %sw.bb57
  %51 = load i32, ptr %had_err, align 4, !dbg !846, !tbaa !177
  %tobool66 = icmp ne i32 %51, 0, !dbg !846
  br i1 %tobool66, label %if.end70, label %if.then67, !dbg !848

if.then67:                                        ; preds = %if.end65
  %52 = load ptr, ptr %m.addr, align 8, !dbg !849, !tbaa !164
  %L68 = getelementptr inbounds %struct.GtMapping, ptr %52, i32 0, i32 3, !dbg !850
  %53 = load ptr, ptr %L68, align 8, !dbg !850, !tbaa !218
  %call69 = call i64 @lua_tointeger(ptr noundef %53, i32 noundef -1), !dbg !851
  %54 = load ptr, ptr %integeroutput.addr, align 8, !dbg !852, !tbaa !164
  store i64 %call69, ptr %54, align 8, !dbg !853, !tbaa !721
  br label %if.end70, !dbg !854

if.end70:                                         ; preds = %if.then67, %if.end65
  br label %sw.epilog, !dbg !855

sw.epilog:                                        ; preds = %if.then42, %if.end70, %if.end56
  br label %if.end71, !dbg !856

if.end71:                                         ; preds = %sw.epilog, %if.end40
  %55 = load ptr, ptr %m.addr, align 8, !dbg !857, !tbaa !164
  %L72 = getelementptr inbounds %struct.GtMapping, ptr %55, i32 0, i32 3, !dbg !857
  %56 = load ptr, ptr %L72, align 8, !dbg !857, !tbaa !218
  call void @lua_settop(ptr noundef %56, i32 noundef -2), !dbg !857
  br label %do.body73, !dbg !858

do.body73:                                        ; preds = %if.end71
  %57 = load ptr, ptr %m.addr, align 8, !dbg !859, !tbaa !164
  %L74 = getelementptr inbounds %struct.GtMapping, ptr %57, i32 0, i32 3, !dbg !859
  %58 = load ptr, ptr %L74, align 8, !dbg !859, !tbaa !218
  %call75 = call i32 @lua_gettop(ptr noundef %58), !dbg !859
  %tobool76 = icmp ne i32 %call75, 0, !dbg !859
  br i1 %tobool76, label %if.then77, label %if.end79, !dbg !862

if.then77:                                        ; preds = %do.body73
  %59 = load ptr, ptr @stderr, align 8, !dbg !863, !tbaa !164
  %call78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @__func__.map_function, ptr noundef @.str.2, i32 noundef 191), !dbg !863
  call void @abort() #6, !dbg !863
  unreachable, !dbg !863

if.end79:                                         ; preds = %do.body73
  br label %do.cond80, !dbg !862

do.cond80:                                        ; preds = %if.end79
  br label %do.end81, !dbg !862

do.end81:                                         ; preds = %do.cond80
  %60 = load i32, ptr %had_err, align 4, !dbg !865, !tbaa !177
  call void @llvm.lifetime.end.p0(i64 4, ptr %had_err) #5, !dbg !866
  ret i32 %60, !dbg !867
}

declare !dbg !868 void @lua_pushstring(ptr noundef, ptr noundef) #2

declare !dbg !871 void @lua_gettable(ptr noundef, i32 noundef) #2

declare !dbg !872 i32 @lua_isstring(ptr noundef, i32 noundef) #2

declare !dbg !873 ptr @gt_str_new_cstr(ptr noundef) #2

declare !dbg !876 i32 @lua_isnumber(ptr noundef, i32 noundef) #2

declare !dbg !877 i64 @lua_tointeger(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!113}
!llvm.module.flags = !{!122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/extended/mapping.c", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "1568a5d89cc11743e558ac7ef6326555")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2376, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 297)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 120, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 15)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 23)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 28)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 44)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 18)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 20)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !25, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 60)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 176, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 22)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 184, elements: !21)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 96, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 12)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 11)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 832, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 104)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 80, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 10)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 32)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 41)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 43)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 104, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 13)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 26)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 53)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 56)
!113 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !114, globals: !121, splitDebugInlining: false, nameTableKind: None)
!114 = !{!115}
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !116, line: 23, baseType: !117, size: 32, elements: !118)
!116 = !DIFile(filename: "src/extended/mapping.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "b5889530e052018888749c4342a65650")
!117 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!118 = !{!119, !120}
!119 = !DIEnumerator(name: "GT_MAPPINGTYPE_STRING", value: 0)
!120 = !DIEnumerator(name: "GT_MAPPINGTYPE_INTEGER", value: 1)
!121 = !{!0, !7, !12, !18, !23, !28, !33, !38, !43, !45, !50, !55, !58, !63, !68, !73, !78, !83, !88, !93, !98, !103, !108}
!122 = !{i32 7, !"Dwarf Version", i32 5}
!123 = !{i32 2, !"Debug Info Version", i32 3}
!124 = !{i32 1, !"wchar_size", i32 4}
!125 = !{i32 8, !"PIC Level", i32 2}
!126 = !{i32 7, !"uwtable", i32 2}
!127 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!128 = distinct !DISubprogram(name: "gt_mapping_new", scope: !2, file: !2, line: 34, type: !129, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !113, retainedNodes: !156)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !136, !151, !143, !152}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtMapping", file: !116, line: 29, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GtMapping", file: !2, line: 26, size: 320, elements: !134)
!134 = !{!135, !140, !142, !144, !149}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mapping_file", scope: !133, file: !2, line: 27, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtStr", file: !138, line: 27, baseType: !139)
!138 = !DIFile(filename: "src/core/str_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "654ceffd2f9ff17a42a8522fe21401e1")
!139 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtStr", file: !138, line: 27, flags: DIFlagFwdDecl)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !133, file: !2, line: 28, baseType: !141, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !2, line: 29, baseType: !143, size: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtMappingType", file: !116, line: 26, baseType: !115)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !133, file: !2, line: 30, baseType: !145, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !147, line: 51, baseType: !148)
!147 = !DIFile(filename: "src/external/lua-5.1.5/src/lua.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "2408a5fa419905bcba8aacae60bcacdf")
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !147, line: 51, flags: DIFlagFwdDecl)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "is_table", scope: !133, file: !2, line: 31, baseType: !150, size: 8, offset: 256)
!150 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtError", file: !154, line: 44, baseType: !155)
!154 = !DIFile(filename: "src/core/error_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "0ad6f2e2c3b3d359d3ae1d5a6962bc56")
!155 = !DICompositeType(tag: DW_TAG_structure_type, name: "GtError", file: !154, line: 44, flags: DIFlagFwdDecl)
!156 = !{!157, !158, !159, !160, !161, !162}
!157 = !DILocalVariable(name: "mapping_file", arg: 1, scope: !128, file: !2, line: 34, type: !136)
!158 = !DILocalVariable(name: "global_name", arg: 2, scope: !128, file: !2, line: 34, type: !151)
!159 = !DILocalVariable(name: "type", arg: 3, scope: !128, file: !2, line: 35, type: !143)
!160 = !DILocalVariable(name: "err", arg: 4, scope: !128, file: !2, line: 35, type: !152)
!161 = !DILocalVariable(name: "m", scope: !128, file: !2, line: 37, type: !131)
!162 = !DILocalVariable(name: "had_err", scope: !128, file: !2, line: 38, type: !163)
!163 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!164 = !{!165, !165, i64 0}
!165 = !{!"any pointer", !166, i64 0}
!166 = !{!"omnipotent char", !167, i64 0}
!167 = !{!"Simple C/C++ TBAA"}
!168 = !DILocation(line: 34, column: 34, scope: !128)
!169 = !DILocation(line: 34, column: 60, scope: !128)
!170 = !{!166, !166, i64 0}
!171 = !DILocation(line: 35, column: 41, scope: !128)
!172 = !DILocation(line: 35, column: 56, scope: !128)
!173 = !DILocation(line: 37, column: 3, scope: !128)
!174 = !DILocation(line: 37, column: 14, scope: !128)
!175 = !DILocation(line: 38, column: 3, scope: !128)
!176 = !DILocation(line: 38, column: 7, scope: !128)
!177 = !{!178, !178, i64 0}
!178 = !{!"int", !166, i64 0}
!179 = !DILocation(line: 39, column: 3, scope: !128)
!180 = !DILocation(line: 39, column: 3, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !2, line: 39, column: 3)
!182 = distinct !DILexicalBlock(scope: !128, file: !2, line: 39, column: 3)
!183 = !DILocation(line: 39, column: 3, scope: !182)
!184 = !DILocation(line: 39, column: 3, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !2, line: 39, column: 3)
!186 = !DILocation(line: 40, column: 3, scope: !128)
!187 = !DILocation(line: 40, column: 3, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !2, line: 40, column: 3)
!189 = distinct !DILexicalBlock(scope: !128, file: !2, line: 40, column: 3)
!190 = !DILocation(line: 40, column: 3, scope: !189)
!191 = !DILocation(line: 40, column: 3, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !2, line: 40, column: 3)
!193 = !DILocation(line: 42, column: 7, scope: !128)
!194 = !DILocation(line: 42, column: 5, scope: !128)
!195 = !DILocation(line: 43, column: 32, scope: !128)
!196 = !DILocation(line: 43, column: 21, scope: !128)
!197 = !DILocation(line: 43, column: 3, scope: !128)
!198 = !DILocation(line: 43, column: 6, scope: !128)
!199 = !DILocation(line: 43, column: 19, scope: !128)
!200 = !{!201, !165, i64 0}
!201 = !{!"GtMapping", !165, i64 0, !165, i64 8, !166, i64 16, !165, i64 24, !202, i64 32}
!202 = !{!"_Bool", !166, i64 0}
!203 = !DILocation(line: 44, column: 27, scope: !128)
!204 = !DILocation(line: 44, column: 15, scope: !128)
!205 = !DILocation(line: 44, column: 3, scope: !128)
!206 = !DILocation(line: 44, column: 6, scope: !128)
!207 = !DILocation(line: 44, column: 13, scope: !128)
!208 = !{!201, !165, i64 8}
!209 = !DILocation(line: 45, column: 13, scope: !128)
!210 = !DILocation(line: 45, column: 3, scope: !128)
!211 = !DILocation(line: 45, column: 6, scope: !128)
!212 = !DILocation(line: 45, column: 11, scope: !128)
!213 = !{!201, !166, i64 16}
!214 = !DILocation(line: 47, column: 10, scope: !128)
!215 = !DILocation(line: 47, column: 3, scope: !128)
!216 = !DILocation(line: 47, column: 6, scope: !128)
!217 = !DILocation(line: 47, column: 8, scope: !128)
!218 = !{!201, !165, i64 24}
!219 = !DILocation(line: 48, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !128, file: !2, line: 48, column: 7)
!221 = !DILocation(line: 48, column: 11, scope: !220)
!222 = !DILocation(line: 48, column: 7, scope: !128)
!223 = !DILocation(line: 49, column: 18, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !2, line: 48, column: 14)
!225 = !DILocation(line: 49, column: 5, scope: !224)
!226 = !DILocation(line: 50, column: 13, scope: !224)
!227 = !DILocation(line: 51, column: 3, scope: !224)
!228 = !DILocation(line: 53, column: 8, scope: !229)
!229 = distinct !DILexicalBlock(scope: !128, file: !2, line: 53, column: 7)
!230 = !DILocation(line: 53, column: 7, scope: !128)
!231 = !DILocation(line: 54, column: 19, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !2, line: 53, column: 17)
!233 = !DILocation(line: 54, column: 22, scope: !232)
!234 = !DILocation(line: 54, column: 5, scope: !232)
!235 = !DILocation(line: 55, column: 5, scope: !232)
!236 = !DILocation(line: 55, column: 5, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !2, line: 55, column: 5)
!238 = distinct !DILexicalBlock(scope: !232, file: !2, line: 55, column: 5)
!239 = !DILocation(line: 55, column: 5, scope: !238)
!240 = !DILocation(line: 55, column: 5, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !2, line: 55, column: 5)
!242 = !DILocation(line: 56, column: 3, scope: !232)
!243 = !DILocation(line: 58, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !128, file: !2, line: 58, column: 7)
!245 = !DILocation(line: 58, column: 7, scope: !128)
!246 = !DILocation(line: 59, column: 23, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !2, line: 59, column: 9)
!248 = distinct !DILexicalBlock(scope: !244, file: !2, line: 58, column: 17)
!249 = !DILocation(line: 59, column: 26, scope: !247)
!250 = !DILocation(line: 59, column: 40, scope: !247)
!251 = !DILocation(line: 59, column: 29, scope: !247)
!252 = !DILocation(line: 59, column: 9, scope: !247)
!253 = !DILocation(line: 59, column: 55, scope: !247)
!254 = !DILocation(line: 60, column: 19, scope: !247)
!255 = !DILocation(line: 60, column: 22, scope: !247)
!256 = !DILocation(line: 60, column: 9, scope: !247)
!257 = !DILocation(line: 59, column: 9, scope: !248)
!258 = !DILocation(line: 61, column: 20, scope: !259)
!259 = distinct !DILexicalBlock(scope: !247, file: !2, line: 60, column: 35)
!260 = !DILocation(line: 61, column: 48, scope: !259)
!261 = !DILocation(line: 61, column: 7, scope: !259)
!262 = !DILocation(line: 62, column: 15, scope: !259)
!263 = !DILocation(line: 63, column: 7, scope: !259)
!264 = !DILocation(line: 64, column: 5, scope: !259)
!265 = !DILocation(line: 65, column: 3, scope: !248)
!266 = !DILocation(line: 67, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !128, file: !2, line: 67, column: 7)
!268 = !DILocation(line: 67, column: 7, scope: !128)
!269 = !DILocation(line: 68, column: 5, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !2, line: 67, column: 17)
!271 = !DILocation(line: 69, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !270, file: !2, line: 69, column: 9)
!273 = !DILocation(line: 69, column: 9, scope: !270)
!274 = !DILocation(line: 70, column: 20, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !2, line: 69, column: 30)
!276 = !DILocation(line: 70, column: 58, scope: !275)
!277 = !DILocation(line: 71, column: 28, scope: !275)
!278 = !DILocation(line: 71, column: 17, scope: !275)
!279 = !DILocation(line: 70, column: 7, scope: !275)
!280 = !DILocation(line: 72, column: 15, scope: !275)
!281 = !DILocation(line: 73, column: 7, scope: !275)
!282 = !DILocation(line: 74, column: 5, scope: !275)
!283 = !DILocation(line: 75, column: 3, scope: !270)
!284 = !DILocation(line: 77, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !128, file: !2, line: 77, column: 7)
!286 = !DILocation(line: 77, column: 7, scope: !128)
!287 = !DILocation(line: 78, column: 11, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !2, line: 78, column: 9)
!289 = distinct !DILexicalBlock(scope: !285, file: !2, line: 77, column: 17)
!290 = !DILocation(line: 78, column: 33, scope: !288)
!291 = !DILocation(line: 78, column: 36, scope: !288)
!292 = !DILocation(line: 78, column: 9, scope: !289)
!293 = !DILocation(line: 79, column: 20, scope: !294)
!294 = distinct !DILexicalBlock(scope: !288, file: !2, line: 78, column: 63)
!295 = !DILocation(line: 80, column: 36, scope: !294)
!296 = !DILocation(line: 80, column: 60, scope: !294)
!297 = !DILocation(line: 80, column: 49, scope: !294)
!298 = !DILocation(line: 79, column: 7, scope: !294)
!299 = !DILocation(line: 81, column: 15, scope: !294)
!300 = !DILocation(line: 82, column: 7, scope: !294)
!301 = !DILocation(line: 83, column: 5, scope: !294)
!302 = !DILocation(line: 84, column: 3, scope: !289)
!303 = !DILocation(line: 86, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !128, file: !2, line: 86, column: 7)
!305 = !DILocation(line: 86, column: 7, scope: !128)
!306 = !DILocation(line: 87, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !2, line: 87, column: 9)
!308 = distinct !DILexicalBlock(scope: !304, file: !2, line: 86, column: 17)
!309 = !DILocation(line: 87, column: 9, scope: !308)
!310 = !DILocation(line: 88, column: 7, scope: !307)
!311 = !DILocation(line: 88, column: 10, scope: !307)
!312 = !DILocation(line: 88, column: 19, scope: !307)
!313 = !{!201, !202, i64 32}
!314 = !DILocation(line: 90, column: 7, scope: !307)
!315 = !DILocation(line: 90, column: 10, scope: !307)
!316 = !DILocation(line: 90, column: 19, scope: !307)
!317 = !DILocation(line: 91, column: 5, scope: !308)
!318 = !DILocation(line: 92, column: 3, scope: !308)
!319 = !DILocation(line: 94, column: 3, scope: !128)
!320 = !DILocation(line: 94, column: 3, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !2, line: 94, column: 3)
!322 = distinct !DILexicalBlock(scope: !128, file: !2, line: 94, column: 3)
!323 = !DILocation(line: 94, column: 3, scope: !322)
!324 = !DILocation(line: 94, column: 3, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !2, line: 94, column: 3)
!326 = !DILocation(line: 95, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !128, file: !2, line: 95, column: 7)
!328 = !DILocation(line: 95, column: 7, scope: !128)
!329 = !DILocation(line: 96, column: 23, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !2, line: 95, column: 16)
!331 = !DILocation(line: 96, column: 5, scope: !330)
!332 = !DILocation(line: 97, column: 5, scope: !330)
!333 = !DILocation(line: 99, column: 10, scope: !128)
!334 = !DILocation(line: 99, column: 3, scope: !128)
!335 = !DILocation(line: 100, column: 1, scope: !128)
!336 = !DISubprogram(name: "gt_error_is_set", scope: !154, file: !154, line: 64, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubroutineType(types: !338)
!338 = !{!150, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!341 = !DISubprogram(name: "fprintf", scope: !342, file: !342, line: 350, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!343 = !DISubroutineType(types: !344)
!344 = !{!163, !345, !403, null}
!345 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !348, line: 7, baseType: !349)
!348 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !350, line: 49, size: 1728, elements: !351)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !367, !369, !370, !371, !375, !377, !379, !383, !386, !388, !391, !394, !395, !397, !401, !402}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !349, file: !350, line: 51, baseType: !163, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !349, file: !350, line: 54, baseType: !141, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !349, file: !350, line: 55, baseType: !141, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !349, file: !350, line: 56, baseType: !141, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !349, file: !350, line: 57, baseType: !141, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !349, file: !350, line: 58, baseType: !141, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !349, file: !350, line: 59, baseType: !141, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !349, file: !350, line: 60, baseType: !141, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !349, file: !350, line: 61, baseType: !141, size: 64, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !349, file: !350, line: 64, baseType: !141, size: 64, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !349, file: !350, line: 65, baseType: !141, size: 64, offset: 640)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !349, file: !350, line: 66, baseType: !141, size: 64, offset: 704)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !349, file: !350, line: 68, baseType: !365, size: 64, offset: 768)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !350, line: 36, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !349, file: !350, line: 70, baseType: !368, size: 64, offset: 832)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !349, file: !350, line: 72, baseType: !163, size: 32, offset: 896)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !349, file: !350, line: 73, baseType: !163, size: 32, offset: 928)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !349, file: !350, line: 74, baseType: !372, size: 64, offset: 960)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !373, line: 152, baseType: !374)
!373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!374 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !349, file: !350, line: 77, baseType: !376, size: 16, offset: 1024)
!376 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !349, file: !350, line: 78, baseType: !378, size: 8, offset: 1040)
!378 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !349, file: !350, line: 79, baseType: !380, size: 8, offset: 1048)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 1)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !349, file: !350, line: 81, baseType: !384, size: 64, offset: 1088)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !350, line: 43, baseType: null)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !349, file: !350, line: 89, baseType: !387, size: 64, offset: 1152)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !373, line: 153, baseType: !374)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !349, file: !350, line: 91, baseType: !389, size: 64, offset: 1216)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !350, line: 37, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !349, file: !350, line: 92, baseType: !392, size: 64, offset: 1280)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !350, line: 38, flags: DIFlagFwdDecl)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !349, file: !350, line: 93, baseType: !368, size: 64, offset: 1344)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !349, file: !350, line: 94, baseType: !396, size: 64, offset: 1408)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !349, file: !350, line: 95, baseType: !398, size: 64, offset: 1472)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !399, line: 70, baseType: !400)
!399 = !DIFile(filename: "/usr/lib/clang/18/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "592de6c0120e294e25519119517dd24e")
!400 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !349, file: !350, line: 96, baseType: !163, size: 32, offset: 1536)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !349, file: !350, line: 98, baseType: !40, size: 160, offset: 1568)
!403 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!404 = !DISubprogram(name: "abort", scope: !405, file: !405, line: 598, type: !406, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!405 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!406 = !DISubroutineType(types: !407)
!407 = !{null}
!408 = !DISubprogram(name: "gt_malloc_mem", scope: !409, file: !409, line: 56, type: !410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!409 = !DIFile(filename: "src/core/ma_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "7471aa5449adf19e6d72bdf5eac6e908")
!410 = !DISubroutineType(types: !411)
!411 = !{!396, !398, !151, !163}
!412 = !DISubprogram(name: "gt_str_ref", scope: !138, file: !138, line: 37, type: !413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DISubroutineType(types: !414)
!414 = !{!136, !136}
!415 = !DISubprogram(name: "gt_cstr_dup", scope: !416, file: !416, line: 29, type: !417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DIFile(filename: "src/core/cstr_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "fd09ef1c089bfd450bf6a9b92876658b")
!417 = !DISubroutineType(types: !418)
!418 = !{!141, !151}
!419 = !DISubprogram(name: "luaL_newstate", scope: !420, file: !420, line: 82, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = !DIFile(filename: "src/external/lua-5.1.5/src/lauxlib.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "9ee455010892bdf666d56ba254ef06e5")
!421 = !DISubroutineType(types: !422)
!422 = !{!145}
!423 = !DISubprogram(name: "gt_error_set", scope: !154, file: !154, line: 56, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !152, !151, null}
!426 = !DISubprogram(name: "luaL_openlibs", scope: !427, file: !427, line: 44, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = !DIFile(filename: "src/external/lua-5.1.5/src/lualib.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "03b9f9c3f7a82bee2f7eab03315eae7d")
!428 = !DISubroutineType(types: !429)
!429 = !{null, !145}
!430 = !DISubprogram(name: "lua_gettop", scope: !147, file: !147, line: 121, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!431 = !DISubroutineType(types: !432)
!432 = !{!163, !145}
!433 = !DISubprogram(name: "luaL_loadfile", scope: !420, file: !420, line: 77, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DISubroutineType(types: !435)
!435 = !{!163, !145, !151}
!436 = !DISubprogram(name: "gt_str_get", scope: !138, file: !138, line: 40, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!437 = !DISubroutineType(types: !438)
!438 = !{!141, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!441 = !DISubprogram(name: "lua_pcall", scope: !147, file: !147, line: 203, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubroutineType(types: !443)
!443 = !{!163, !145, !163, !163, !163}
!444 = !DISubprogram(name: "lua_tolstring", scope: !147, file: !147, line: 150, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{!151, !145, !163, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!448 = !DISubprogram(name: "lua_settop", scope: !147, file: !147, line: 122, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !145, !163}
!451 = !DISubprogram(name: "lua_getfield", scope: !147, file: !147, line: 179, type: !452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !145, !163, !151}
!454 = !DISubprogram(name: "lua_type", scope: !147, file: !147, line: 140, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{!163, !145, !163}
!457 = distinct !DISubprogram(name: "gt_mapping_delete", scope: !2, file: !2, line: 222, type: !458, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !113, retainedNodes: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !131}
!460 = !{!461}
!461 = !DILocalVariable(name: "m", arg: 1, scope: !457, file: !2, line: 222, type: !131)
!462 = !DILocation(line: 222, column: 35, scope: !457)
!463 = !DILocation(line: 224, column: 8, scope: !464)
!464 = distinct !DILexicalBlock(scope: !457, file: !2, line: 224, column: 7)
!465 = !DILocation(line: 224, column: 7, scope: !457)
!466 = !DILocation(line: 224, column: 11, scope: !464)
!467 = !DILocation(line: 225, column: 17, scope: !457)
!468 = !DILocation(line: 225, column: 20, scope: !457)
!469 = !DILocation(line: 225, column: 3, scope: !457)
!470 = !DILocation(line: 226, column: 3, scope: !457)
!471 = !DILocation(line: 227, column: 7, scope: !472)
!472 = distinct !DILexicalBlock(scope: !457, file: !2, line: 227, column: 7)
!473 = !DILocation(line: 227, column: 10, scope: !472)
!474 = !DILocation(line: 227, column: 7, scope: !457)
!475 = !DILocation(line: 227, column: 23, scope: !472)
!476 = !DILocation(line: 227, column: 26, scope: !472)
!477 = !DILocation(line: 227, column: 13, scope: !472)
!478 = !DILocation(line: 228, column: 3, scope: !457)
!479 = !DILocation(line: 229, column: 1, scope: !457)
!480 = distinct !DISubprogram(name: "gt_mapping_map_string", scope: !2, file: !2, line: 207, type: !481, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !113, retainedNodes: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!136, !131, !151, !152}
!483 = !{!484, !485, !486, !487}
!484 = !DILocalVariable(name: "m", arg: 1, scope: !480, file: !2, line: 207, type: !131)
!485 = !DILocalVariable(name: "input", arg: 2, scope: !480, file: !2, line: 207, type: !151)
!486 = !DILocalVariable(name: "err", arg: 3, scope: !480, file: !2, line: 207, type: !152)
!487 = !DILocalVariable(name: "output", scope: !480, file: !2, line: 209, type: !136)
!488 = !DILocation(line: 207, column: 41, scope: !480)
!489 = !DILocation(line: 207, column: 56, scope: !480)
!490 = !DILocation(line: 207, column: 72, scope: !480)
!491 = !DILocation(line: 209, column: 3, scope: !480)
!492 = !DILocation(line: 209, column: 10, scope: !480)
!493 = !DILocation(line: 210, column: 3, scope: !480)
!494 = !DILocation(line: 210, column: 3, scope: !495)
!495 = distinct !DILexicalBlock(scope: !496, file: !2, line: 210, column: 3)
!496 = distinct !DILexicalBlock(scope: !480, file: !2, line: 210, column: 3)
!497 = !DILocation(line: 210, column: 3, scope: !496)
!498 = !DILocation(line: 210, column: 3, scope: !499)
!499 = distinct !DILexicalBlock(scope: !495, file: !2, line: 210, column: 3)
!500 = !DILocation(line: 211, column: 15, scope: !480)
!501 = !DILocation(line: 211, column: 33, scope: !480)
!502 = !DILocation(line: 211, column: 40, scope: !480)
!503 = !DILocation(line: 211, column: 3, scope: !480)
!504 = !DILocation(line: 212, column: 10, scope: !480)
!505 = !DILocation(line: 213, column: 1, scope: !480)
!506 = !DILocation(line: 212, column: 3, scope: !480)
!507 = distinct !DISubprogram(name: "map_generic", scope: !2, file: !2, line: 195, type: !508, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !113, retainedNodes: !514)
!508 = !DISubroutineType(types: !509)
!509 = !{!163, !131, !510, !511, !151, !152}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "GtWord", file: !513, line: 94, baseType: !374)
!513 = !DIFile(filename: "src/core/types_api.h", directory: "/local-ssd/genometools-ynxcpryk4pr3tj74ztzu43niu5ovck4y-build/aidengro/spack-stage-genometools-1.6.2-ynxcpryk4pr3tj74ztzu43niu5ovck4y/spack-src", checksumkind: CSK_MD5, checksum: "c1165644814b09ecabcfbfd3bda28077")
!514 = !{!515, !516, !517, !518, !519}
!515 = !DILocalVariable(name: "m", arg: 1, scope: !507, file: !2, line: 195, type: !131)
!516 = !DILocalVariable(name: "stroutput", arg: 2, scope: !507, file: !2, line: 195, type: !510)
!517 = !DILocalVariable(name: "integeroutput", arg: 3, scope: !507, file: !2, line: 195, type: !511)
!518 = !DILocalVariable(name: "input", arg: 4, scope: !507, file: !2, line: 196, type: !151)
!519 = !DILocalVariable(name: "err", arg: 5, scope: !507, file: !2, line: 196, type: !152)
!520 = !DILocation(line: 195, column: 35, scope: !507)
!521 = !DILocation(line: 195, column: 46, scope: !507)
!522 = !DILocation(line: 195, column: 65, scope: !507)
!523 = !DILocation(line: 196, column: 36, scope: !507)
!524 = !DILocation(line: 196, column: 52, scope: !507)
!525 = !DILocation(line: 198, column: 3, scope: !507)
!526 = !DILocation(line: 198, column: 3, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !2, line: 198, column: 3)
!528 = distinct !DILexicalBlock(scope: !507, file: !2, line: 198, column: 3)
!529 = !DILocation(line: 198, column: 3, scope: !528)
!530 = !DILocation(line: 198, column: 3, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !2, line: 198, column: 3)
!532 = !DILocation(line: 199, column: 3, scope: !507)
!533 = !DILocation(line: 199, column: 3, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !2, line: 199, column: 3)
!535 = distinct !DILexicalBlock(scope: !507, file: !2, line: 199, column: 3)
!536 = !DILocation(line: 199, column: 3, scope: !535)
!537 = !DILocation(line: 199, column: 3, scope: !538)
!538 = distinct !DILexicalBlock(scope: !534, file: !2, line: 199, column: 3)
!539 = !DILocation(line: 200, column: 3, scope: !507)
!540 = !DILocation(line: 200, column: 3, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !2, line: 200, column: 3)
!542 = distinct !DILexicalBlock(scope: !507, file: !2, line: 200, column: 3)
!543 = !DILocation(line: 200, column: 3, scope: !542)
!544 = !DILocation(line: 200, column: 3, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !2, line: 200, column: 3)
!546 = !DILocation(line: 202, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !507, file: !2, line: 202, column: 7)
!548 = !DILocation(line: 202, column: 10, scope: !547)
!549 = !{i8 0, i8 2}
!550 = !{}
!551 = !DILocation(line: 202, column: 7, scope: !507)
!552 = !DILocation(line: 203, column: 22, scope: !547)
!553 = !DILocation(line: 203, column: 25, scope: !547)
!554 = !DILocation(line: 203, column: 36, scope: !547)
!555 = !DILocation(line: 203, column: 51, scope: !547)
!556 = !DILocation(line: 203, column: 58, scope: !547)
!557 = !DILocation(line: 203, column: 12, scope: !547)
!558 = !DILocation(line: 203, column: 5, scope: !547)
!559 = !DILocation(line: 204, column: 23, scope: !507)
!560 = !DILocation(line: 204, column: 26, scope: !507)
!561 = !DILocation(line: 204, column: 37, scope: !507)
!562 = !DILocation(line: 204, column: 52, scope: !507)
!563 = !DILocation(line: 204, column: 59, scope: !507)
!564 = !DILocation(line: 204, column: 10, scope: !507)
!565 = !DILocation(line: 204, column: 3, scope: !507)
!566 = !DILocation(line: 205, column: 1, scope: !507)
!567 = distinct !DISubprogram(name: "gt_mapping_map_integer", scope: !2, file: !2, line: 215, type: !568, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !113, retainedNodes: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{!163, !131, !511, !151, !152}
!570 = !{!571, !572, !573, !574}
!571 = !DILocalVariable(name: "m", arg: 1, scope: !567, file: !2, line: 215, type: !131)
!572 = !DILocalVariable(name: "output", arg: 2, scope: !567, file: !2, line: 215, type: !511)
!573 = !DILocalVariable(name: "input", arg: 3, scope: !567, file: !2, line: 215, type: !151)
!574 = !DILocalVariable(name: "err", arg: 4, scope: !567, file: !2, line: 216, type: !152)
!575 = !DILocation(line: 215, column: 39, scope: !567)
!576 = !DILocation(line: 215, column: 50, scope: !567)
!577 = !DILocation(line: 215, column: 70, scope: !567)
!578 = !DILocation(line: 216, column: 37, scope: !567)
!579 = !DILocation(line: 218, column: 3, scope: !567)
!580 = !DILocation(line: 218, column: 3, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !2, line: 218, column: 3)
!582 = distinct !DILexicalBlock(scope: !567, file: !2, line: 218, column: 3)
!583 = !DILocation(line: 218, column: 3, scope: !582)
!584 = !DILocation(line: 218, column: 3, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !2, line: 218, column: 3)
!586 = !DILocation(line: 219, column: 22, scope: !567)
!587 = !DILocation(line: 219, column: 31, scope: !567)
!588 = !DILocation(line: 219, column: 39, scope: !567)
!589 = !DILocation(line: 219, column: 46, scope: !567)
!590 = !DILocation(line: 219, column: 10, scope: !567)
!591 = !DILocation(line: 219, column: 3, scope: !567)
!592 = !DISubprogram(name: "gt_str_delete", scope: !138, file: !138, line: 90, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !136}
!595 = !DISubprogram(name: "gt_free_mem", scope: !409, file: !409, line: 75, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !396, !151, !163}
!598 = !DISubprogram(name: "lua_close", scope: !147, file: !147, line: 112, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!599 = distinct !DISubprogram(name: "map_table", scope: !2, file: !2, line: 102, type: !508, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !113, retainedNodes: !600)
!600 = !{!601, !602, !603, !604, !605, !606}
!601 = !DILocalVariable(name: "m", arg: 1, scope: !599, file: !2, line: 102, type: !131)
!602 = !DILocalVariable(name: "stroutput", arg: 2, scope: !599, file: !2, line: 102, type: !510)
!603 = !DILocalVariable(name: "integeroutput", arg: 3, scope: !599, file: !2, line: 102, type: !511)
!604 = !DILocalVariable(name: "input", arg: 4, scope: !599, file: !2, line: 103, type: !151)
!605 = !DILocalVariable(name: "err", arg: 5, scope: !599, file: !2, line: 103, type: !152)
!606 = !DILocalVariable(name: "had_err", scope: !599, file: !2, line: 105, type: !163)
!607 = !DILocation(line: 102, column: 33, scope: !599)
!608 = !DILocation(line: 102, column: 44, scope: !599)
!609 = !DILocation(line: 102, column: 63, scope: !599)
!610 = !DILocation(line: 103, column: 34, scope: !599)
!611 = !DILocation(line: 103, column: 50, scope: !599)
!612 = !DILocation(line: 105, column: 3, scope: !599)
!613 = !DILocation(line: 105, column: 7, scope: !599)
!614 = !DILocation(line: 106, column: 3, scope: !599)
!615 = !DILocation(line: 106, column: 3, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !2, line: 106, column: 3)
!617 = distinct !DILexicalBlock(scope: !599, file: !2, line: 106, column: 3)
!618 = !DILocation(line: 106, column: 3, scope: !617)
!619 = !DILocation(line: 106, column: 3, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !2, line: 106, column: 3)
!621 = !DILocation(line: 107, column: 3, scope: !599)
!622 = !DILocation(line: 107, column: 3, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !2, line: 107, column: 3)
!624 = distinct !DILexicalBlock(scope: !599, file: !2, line: 107, column: 3)
!625 = !DILocation(line: 107, column: 3, scope: !624)
!626 = !DILocation(line: 107, column: 3, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !2, line: 107, column: 3)
!628 = !DILocation(line: 108, column: 3, scope: !599)
!629 = !DILocation(line: 108, column: 3, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !2, line: 108, column: 3)
!631 = distinct !DILexicalBlock(scope: !599, file: !2, line: 108, column: 3)
!632 = !DILocation(line: 108, column: 3, scope: !631)
!633 = !DILocation(line: 108, column: 3, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !2, line: 108, column: 3)
!635 = !DILocation(line: 110, column: 3, scope: !599)
!636 = !DILocation(line: 110, column: 3, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !2, line: 110, column: 3)
!638 = distinct !DILexicalBlock(scope: !599, file: !2, line: 110, column: 3)
!639 = !DILocation(line: 110, column: 3, scope: !638)
!640 = !DILocation(line: 110, column: 3, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !2, line: 110, column: 3)
!642 = !DILocation(line: 111, column: 3, scope: !599)
!643 = !DILocation(line: 112, column: 18, scope: !599)
!644 = !DILocation(line: 112, column: 21, scope: !599)
!645 = !DILocation(line: 112, column: 24, scope: !599)
!646 = !DILocation(line: 112, column: 3, scope: !599)
!647 = !DILocation(line: 113, column: 16, scope: !599)
!648 = !DILocation(line: 113, column: 19, scope: !599)
!649 = !DILocation(line: 113, column: 3, scope: !599)
!650 = !DILocation(line: 115, column: 7, scope: !651)
!651 = distinct !DILexicalBlock(scope: !599, file: !2, line: 115, column: 7)
!652 = !DILocation(line: 115, column: 7, scope: !599)
!653 = !DILocation(line: 116, column: 18, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !2, line: 115, column: 28)
!655 = !DILocation(line: 116, column: 60, scope: !654)
!656 = !DILocation(line: 116, column: 63, scope: !654)
!657 = !DILocation(line: 116, column: 71, scope: !654)
!658 = !DILocation(line: 117, column: 29, scope: !654)
!659 = !DILocation(line: 117, column: 32, scope: !654)
!660 = !DILocation(line: 117, column: 18, scope: !654)
!661 = !DILocation(line: 116, column: 5, scope: !654)
!662 = !DILocation(line: 118, column: 13, scope: !654)
!663 = !DILocation(line: 119, column: 3, scope: !654)
!664 = !DILocation(line: 120, column: 8, scope: !665)
!665 = distinct !DILexicalBlock(scope: !599, file: !2, line: 120, column: 7)
!666 = !DILocation(line: 120, column: 7, scope: !599)
!667 = !DILocation(line: 121, column: 13, scope: !668)
!668 = distinct !DILexicalBlock(scope: !665, file: !2, line: 120, column: 17)
!669 = !DILocation(line: 121, column: 16, scope: !668)
!670 = !DILocation(line: 121, column: 5, scope: !668)
!671 = !DILocation(line: 124, column: 28, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !2, line: 124, column: 13)
!673 = distinct !DILexicalBlock(scope: !668, file: !2, line: 121, column: 22)
!674 = !DILocation(line: 124, column: 31, scope: !672)
!675 = !DILocation(line: 124, column: 15, scope: !672)
!676 = !DILocation(line: 124, column: 13, scope: !673)
!677 = !DILocation(line: 125, column: 24, scope: !678)
!678 = distinct !DILexicalBlock(scope: !672, file: !2, line: 124, column: 40)
!679 = !DILocation(line: 126, column: 25, scope: !678)
!680 = !DILocation(line: 126, column: 28, scope: !678)
!681 = !DILocation(line: 126, column: 36, scope: !678)
!682 = !DILocation(line: 126, column: 54, scope: !678)
!683 = !DILocation(line: 126, column: 57, scope: !678)
!684 = !DILocation(line: 126, column: 43, scope: !678)
!685 = !DILocation(line: 125, column: 11, scope: !678)
!686 = !DILocation(line: 127, column: 19, scope: !678)
!687 = !DILocation(line: 128, column: 9, scope: !678)
!688 = !DILocation(line: 129, column: 14, scope: !689)
!689 = distinct !DILexicalBlock(scope: !673, file: !2, line: 129, column: 13)
!690 = !DILocation(line: 129, column: 13, scope: !673)
!691 = !DILocation(line: 130, column: 40, scope: !689)
!692 = !DILocation(line: 130, column: 24, scope: !689)
!693 = !DILocation(line: 130, column: 12, scope: !689)
!694 = !DILocation(line: 130, column: 22, scope: !689)
!695 = !DILocation(line: 130, column: 11, scope: !689)
!696 = !DILocation(line: 131, column: 9, scope: !673)
!697 = !DILocation(line: 134, column: 28, scope: !698)
!698 = distinct !DILexicalBlock(scope: !673, file: !2, line: 134, column: 13)
!699 = !DILocation(line: 134, column: 31, scope: !698)
!700 = !DILocation(line: 134, column: 15, scope: !698)
!701 = !DILocation(line: 134, column: 13, scope: !673)
!702 = !DILocation(line: 135, column: 24, scope: !703)
!703 = distinct !DILexicalBlock(scope: !698, file: !2, line: 134, column: 40)
!704 = !DILocation(line: 136, column: 24, scope: !703)
!705 = !DILocation(line: 136, column: 27, scope: !703)
!706 = !DILocation(line: 136, column: 35, scope: !703)
!707 = !DILocation(line: 136, column: 53, scope: !703)
!708 = !DILocation(line: 136, column: 56, scope: !703)
!709 = !DILocation(line: 136, column: 42, scope: !703)
!710 = !DILocation(line: 135, column: 11, scope: !703)
!711 = !DILocation(line: 137, column: 19, scope: !703)
!712 = !DILocation(line: 138, column: 9, scope: !703)
!713 = !DILocation(line: 139, column: 14, scope: !714)
!714 = distinct !DILexicalBlock(scope: !673, file: !2, line: 139, column: 13)
!715 = !DILocation(line: 139, column: 13, scope: !673)
!716 = !DILocation(line: 140, column: 42, scope: !714)
!717 = !DILocation(line: 140, column: 45, scope: !714)
!718 = !DILocation(line: 140, column: 28, scope: !714)
!719 = !DILocation(line: 140, column: 12, scope: !714)
!720 = !DILocation(line: 140, column: 26, scope: !714)
!721 = !{!722, !722, i64 0}
!722 = !{!"long", !166, i64 0}
!723 = !DILocation(line: 140, column: 11, scope: !714)
!724 = !DILocation(line: 141, column: 9, scope: !673)
!725 = !DILocation(line: 143, column: 3, scope: !668)
!726 = !DILocation(line: 144, column: 3, scope: !599)
!727 = !DILocation(line: 145, column: 3, scope: !599)
!728 = !DILocation(line: 146, column: 3, scope: !599)
!729 = !DILocation(line: 146, column: 3, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !2, line: 146, column: 3)
!731 = distinct !DILexicalBlock(scope: !599, file: !2, line: 146, column: 3)
!732 = !DILocation(line: 146, column: 3, scope: !731)
!733 = !DILocation(line: 146, column: 3, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !2, line: 146, column: 3)
!735 = !DILocation(line: 147, column: 10, scope: !599)
!736 = !DILocation(line: 148, column: 1, scope: !599)
!737 = !DILocation(line: 147, column: 3, scope: !599)
!738 = distinct !DISubprogram(name: "map_function", scope: !2, file: !2, line: 150, type: !508, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !113, retainedNodes: !739)
!739 = !{!740, !741, !742, !743, !744, !745}
!740 = !DILocalVariable(name: "m", arg: 1, scope: !738, file: !2, line: 150, type: !131)
!741 = !DILocalVariable(name: "stroutput", arg: 2, scope: !738, file: !2, line: 150, type: !510)
!742 = !DILocalVariable(name: "integeroutput", arg: 3, scope: !738, file: !2, line: 150, type: !511)
!743 = !DILocalVariable(name: "input", arg: 4, scope: !738, file: !2, line: 151, type: !151)
!744 = !DILocalVariable(name: "err", arg: 5, scope: !738, file: !2, line: 151, type: !152)
!745 = !DILocalVariable(name: "had_err", scope: !738, file: !2, line: 153, type: !163)
!746 = !DILocation(line: 150, column: 36, scope: !738)
!747 = !DILocation(line: 150, column: 47, scope: !738)
!748 = !DILocation(line: 150, column: 66, scope: !738)
!749 = !DILocation(line: 151, column: 37, scope: !738)
!750 = !DILocation(line: 151, column: 53, scope: !738)
!751 = !DILocation(line: 153, column: 3, scope: !738)
!752 = !DILocation(line: 153, column: 7, scope: !738)
!753 = !DILocation(line: 154, column: 3, scope: !738)
!754 = !DILocation(line: 154, column: 3, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !2, line: 154, column: 3)
!756 = distinct !DILexicalBlock(scope: !738, file: !2, line: 154, column: 3)
!757 = !DILocation(line: 154, column: 3, scope: !756)
!758 = !DILocation(line: 154, column: 3, scope: !759)
!759 = distinct !DILexicalBlock(scope: !755, file: !2, line: 154, column: 3)
!760 = !DILocation(line: 155, column: 3, scope: !738)
!761 = !DILocation(line: 155, column: 3, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !2, line: 155, column: 3)
!763 = distinct !DILexicalBlock(scope: !738, file: !2, line: 155, column: 3)
!764 = !DILocation(line: 155, column: 3, scope: !763)
!765 = !DILocation(line: 155, column: 3, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !2, line: 155, column: 3)
!767 = !DILocation(line: 156, column: 3, scope: !738)
!768 = !DILocation(line: 156, column: 3, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !2, line: 156, column: 3)
!770 = distinct !DILexicalBlock(scope: !738, file: !2, line: 156, column: 3)
!771 = !DILocation(line: 156, column: 3, scope: !770)
!772 = !DILocation(line: 156, column: 3, scope: !773)
!773 = distinct !DILexicalBlock(scope: !769, file: !2, line: 156, column: 3)
!774 = !DILocation(line: 158, column: 3, scope: !738)
!775 = !DILocation(line: 158, column: 3, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !2, line: 158, column: 3)
!777 = distinct !DILexicalBlock(scope: !738, file: !2, line: 158, column: 3)
!778 = !DILocation(line: 158, column: 3, scope: !777)
!779 = !DILocation(line: 158, column: 3, scope: !780)
!780 = distinct !DILexicalBlock(scope: !776, file: !2, line: 158, column: 3)
!781 = !DILocation(line: 159, column: 3, scope: !738)
!782 = !DILocation(line: 160, column: 18, scope: !738)
!783 = !DILocation(line: 160, column: 21, scope: !738)
!784 = !DILocation(line: 160, column: 24, scope: !738)
!785 = !DILocation(line: 160, column: 3, scope: !738)
!786 = !DILocation(line: 162, column: 17, scope: !787)
!787 = distinct !DILexicalBlock(scope: !738, file: !2, line: 162, column: 7)
!788 = !DILocation(line: 162, column: 20, scope: !787)
!789 = !DILocation(line: 162, column: 7, scope: !787)
!790 = !DILocation(line: 162, column: 7, scope: !738)
!791 = !DILocation(line: 163, column: 18, scope: !792)
!792 = distinct !DILexicalBlock(scope: !787, file: !2, line: 162, column: 33)
!793 = !DILocation(line: 163, column: 52, scope: !792)
!794 = !DILocation(line: 163, column: 55, scope: !792)
!795 = !DILocation(line: 164, column: 15, scope: !792)
!796 = !DILocation(line: 163, column: 5, scope: !792)
!797 = !DILocation(line: 165, column: 13, scope: !792)
!798 = !DILocation(line: 166, column: 3, scope: !792)
!799 = !DILocation(line: 168, column: 8, scope: !800)
!800 = distinct !DILexicalBlock(scope: !738, file: !2, line: 168, column: 7)
!801 = !DILocation(line: 168, column: 7, scope: !738)
!802 = !DILocation(line: 169, column: 13, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !2, line: 168, column: 17)
!804 = !DILocation(line: 169, column: 16, scope: !803)
!805 = !DILocation(line: 169, column: 5, scope: !803)
!806 = !DILocation(line: 171, column: 27, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !2, line: 171, column: 13)
!808 = distinct !DILexicalBlock(scope: !803, file: !2, line: 169, column: 22)
!809 = !DILocation(line: 171, column: 30, scope: !807)
!810 = !DILocation(line: 171, column: 14, scope: !807)
!811 = !DILocation(line: 171, column: 13, scope: !808)
!812 = !DILocation(line: 172, column: 24, scope: !813)
!813 = distinct !DILexicalBlock(scope: !807, file: !2, line: 171, column: 38)
!814 = !DILocation(line: 173, column: 37, scope: !813)
!815 = !DILocation(line: 173, column: 40, scope: !813)
!816 = !DILocation(line: 173, column: 59, scope: !813)
!817 = !DILocation(line: 173, column: 62, scope: !813)
!818 = !DILocation(line: 173, column: 48, scope: !813)
!819 = !DILocation(line: 172, column: 11, scope: !813)
!820 = !DILocation(line: 174, column: 19, scope: !813)
!821 = !DILocation(line: 175, column: 9, scope: !813)
!822 = !DILocation(line: 176, column: 14, scope: !823)
!823 = distinct !DILexicalBlock(scope: !808, file: !2, line: 176, column: 13)
!824 = !DILocation(line: 176, column: 13, scope: !808)
!825 = !DILocation(line: 177, column: 40, scope: !823)
!826 = !DILocation(line: 177, column: 24, scope: !823)
!827 = !DILocation(line: 177, column: 12, scope: !823)
!828 = !DILocation(line: 177, column: 22, scope: !823)
!829 = !DILocation(line: 177, column: 11, scope: !823)
!830 = !DILocation(line: 178, column: 10, scope: !808)
!831 = !DILocation(line: 180, column: 27, scope: !832)
!832 = distinct !DILexicalBlock(scope: !808, file: !2, line: 180, column: 13)
!833 = !DILocation(line: 180, column: 30, scope: !832)
!834 = !DILocation(line: 180, column: 14, scope: !832)
!835 = !DILocation(line: 180, column: 13, scope: !808)
!836 = !DILocation(line: 181, column: 24, scope: !837)
!837 = distinct !DILexicalBlock(scope: !832, file: !2, line: 180, column: 38)
!838 = !DILocation(line: 182, column: 35, scope: !837)
!839 = !DILocation(line: 182, column: 38, scope: !837)
!840 = !DILocation(line: 182, column: 57, scope: !837)
!841 = !DILocation(line: 182, column: 60, scope: !837)
!842 = !DILocation(line: 182, column: 46, scope: !837)
!843 = !DILocation(line: 181, column: 11, scope: !837)
!844 = !DILocation(line: 183, column: 19, scope: !837)
!845 = !DILocation(line: 184, column: 9, scope: !837)
!846 = !DILocation(line: 185, column: 14, scope: !847)
!847 = distinct !DILexicalBlock(scope: !808, file: !2, line: 185, column: 13)
!848 = !DILocation(line: 185, column: 13, scope: !808)
!849 = !DILocation(line: 186, column: 42, scope: !847)
!850 = !DILocation(line: 186, column: 45, scope: !847)
!851 = !DILocation(line: 186, column: 28, scope: !847)
!852 = !DILocation(line: 186, column: 12, scope: !847)
!853 = !DILocation(line: 186, column: 26, scope: !847)
!854 = !DILocation(line: 186, column: 11, scope: !847)
!855 = !DILocation(line: 187, column: 9, scope: !808)
!856 = !DILocation(line: 189, column: 3, scope: !803)
!857 = !DILocation(line: 190, column: 3, scope: !738)
!858 = !DILocation(line: 191, column: 3, scope: !738)
!859 = !DILocation(line: 191, column: 3, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !2, line: 191, column: 3)
!861 = distinct !DILexicalBlock(scope: !738, file: !2, line: 191, column: 3)
!862 = !DILocation(line: 191, column: 3, scope: !861)
!863 = !DILocation(line: 191, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !2, line: 191, column: 3)
!865 = !DILocation(line: 192, column: 10, scope: !738)
!866 = !DILocation(line: 193, column: 1, scope: !738)
!867 = !DILocation(line: 192, column: 3, scope: !738)
!868 = !DISubprogram(name: "lua_pushstring", scope: !147, file: !147, line: 165, type: !869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !145, !151}
!871 = !DISubprogram(name: "lua_gettable", scope: !147, file: !147, line: 178, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DISubprogram(name: "lua_isstring", scope: !147, file: !147, line: 137, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!873 = !DISubprogram(name: "gt_str_new_cstr", scope: !138, file: !138, line: 32, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!874 = !DISubroutineType(types: !875)
!875 = !{!136, !151}
!876 = !DISubprogram(name: "lua_isnumber", scope: !147, file: !147, line: 136, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!877 = !DISubprogram(name: "lua_tointeger", scope: !147, file: !147, line: 148, type: !878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!878 = !DISubroutineType(types: !879)
!879 = !{!880, !145, !163}
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Integer", file: !147, line: 104, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !399, line: 59, baseType: !374)
